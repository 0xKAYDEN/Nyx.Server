------------------------------------------------------------------------------------
--Name：            180816[英文征服][活动脚本]9月月卡包（09.04-09.20）
--Creator:      王贤
--Created:     2018/08/16
------------------------------------------------------------------------------------
--任务需求：
-- 更新时间：
-- 09.04（周二）例行维护时 除LasVegas以外的其他服务器

-- 活动时间：
-- 09.04-09.20

-- 活动说明：
-- 详见附件
------------------------------------------------------------------------------------
-- stc(182, 11)  1、神品精炼周卡包使用次数     0~7
-- stc(182, 12)  2、神纹精粹周卡包使用次数     0~7
-- stc(182, 13)  3、自创炼气周卡包使用次数     0~7
-- stc(182, 14)  4、+4赤炼石（赠）月卡包       1表示月卡礼盒已购买  (2~31)-1表示使用次数
-- stc(182, 15)  5、+5赤炼石（赠）月卡包       1表示月卡礼盒已购买  (2~31)-1表示使用次数
-- stc(182, 16)  6、+6赤炼石（赠）月卡包       1表示月卡礼盒已购买  (2~31)-1表示使用次数
-- stc(182, 17)  7、1万修为值月卡包            1表示月卡礼盒已购买  (2~31)-1表示使用次数
-- stc(182, 18)  8、+4骏马（赠）月卡包         1表示月卡礼盒已购买  (2~31)-1表示使用次数
-- stc(182, 19)  9、优质玄元宝石（赠）月卡包   1表示月卡礼盒已购买  (2~31)-1表示使用次数
------------------------------------------------------------------------------------
-- 前缀
-- SeptemberParce_

-- LogId： 12001140

--任务需求：
-- 请安排英文征服4月周月卡包活动制作，形式复用2018年9月的周月卡包活动，卡包内容有调整，具体内容见附件。
-- 活动时间：4.23-4.30
-- 更新时间：4月23日
-- 更新范围：全区全服
-- 如有问题，请及时沟通，谢谢！

------------------------------------------------------------------------------------
-- stc(192, 11)  1、神炼神纹周卡包             1表示周卡礼盒已购买  (2~8)-1表示使用次数
-- stc(192, 12)  2、自创炼气周卡包             1表示周卡礼盒已购买  (2~8)-1表示使用次数
-- stc(192, 13)  3、+4赤炼石（赠）月卡包       1表示月卡礼盒已购买  (2~31)-1表示使用次数
-- stc(192, 14)  4、+5赤炼石（赠）月卡包       1表示月卡礼盒已购买  (2~31)-1表示使用次数
-- stc(192, 15)  5、+6赤炼石（赠）月卡包       1表示月卡礼盒已购买  (2~31)-1表示使用次数
-- stc(192, 16)  6、1万修为值月卡包            1表示月卡礼盒已购买  (2~31)-1表示使用次数
-- stc(192, 17)  7、+6骏马（赠）月卡包         1表示月卡礼盒已购买  (2~31)-1表示使用次数
-- stc(192, 18)  8、神纹源晶石（赠）月卡包     1表示月卡礼盒已购买  (2~31)-1表示使用次数
------------------------------------------------------------------------------------
-- 前缀
-- SeptemberParce_

-- LogId： 12001140

----------------------------------表配置部分--------------------------------------------
local tSeptemberParce_Data = {}
-- 活动时间
tSeptemberParce_Data["ActivityTime"] = tActivityTime["SeptemberParce"]["AtivityTime"]
-- 月卡包ID
tSeptemberParce_Data["MathPackageId"] = 3310574
-- 花费天石
tSeptemberParce_Data["NeedEMoney"] = {}
-- 神品精炼周卡包  每次花费天石
tSeptemberParce_Data["NeedEMoney"][3310571] = {}
tSeptemberParce_Data["NeedEMoney"][3310571][1] = 550
tSeptemberParce_Data["NeedEMoney"][3310571][2] = 500
tSeptemberParce_Data["NeedEMoney"][3310571][3] = 450
tSeptemberParce_Data["NeedEMoney"][3310571][4] = 400
tSeptemberParce_Data["NeedEMoney"][3310571][5] = 350
tSeptemberParce_Data["NeedEMoney"][3310571][6] = 300
tSeptemberParce_Data["NeedEMoney"][3310571][7] = 250
-- 神纹精粹周卡包  每次花费天石
tSeptemberParce_Data["NeedEMoney"][3310572] = {}
tSeptemberParce_Data["NeedEMoney"][3310572][1] = 550
tSeptemberParce_Data["NeedEMoney"][3310572][2] = 500
tSeptemberParce_Data["NeedEMoney"][3310572][3] = 450
tSeptemberParce_Data["NeedEMoney"][3310572][4] = 400
tSeptemberParce_Data["NeedEMoney"][3310572][5] = 350
tSeptemberParce_Data["NeedEMoney"][3310572][6] = 300
tSeptemberParce_Data["NeedEMoney"][3310572][7] = 250
-- 自创炼气周卡包  每次花费天石
tSeptemberParce_Data["NeedEMoney"][3310573] = {}
tSeptemberParce_Data["NeedEMoney"][3310573][1] = 390
tSeptemberParce_Data["NeedEMoney"][3310573][2] = 350
tSeptemberParce_Data["NeedEMoney"][3310573][3] = 310
tSeptemberParce_Data["NeedEMoney"][3310573][4] = 280
tSeptemberParce_Data["NeedEMoney"][3310573][5] = 240
tSeptemberParce_Data["NeedEMoney"][3310573][6] = 200
tSeptemberParce_Data["NeedEMoney"][3310573][7] = 160
-- 初秋特惠月卡礼盒  购买花费天石
tSeptemberParce_Data["NeedEMoney"]["YueKa"] = {}
tSeptemberParce_Data["NeedEMoney"]["YueKa"][3310575] = 1799
tSeptemberParce_Data["NeedEMoney"]["YueKa"][3310576] = 5399
tSeptemberParce_Data["NeedEMoney"]["YueKa"][3310577] = 15999
tSeptemberParce_Data["NeedEMoney"]["YueKa"][3310578] = 8999
tSeptemberParce_Data["NeedEMoney"]["YueKa"][3310579] = 1599
tSeptemberParce_Data["NeedEMoney"]["YueKa"][3310580] = 5999
-- 付费购买的月卡礼包ID
tSeptemberParce_Data["MonthId"] = {}
tSeptemberParce_Data["MonthId"][4] = 3310575
tSeptemberParce_Data["MonthId"][5] = 3310576
tSeptemberParce_Data["MonthId"][6] = 3310577
tSeptemberParce_Data["MonthId"][7] = 3310578
tSeptemberParce_Data["MonthId"][8] = 3310579
tSeptemberParce_Data["MonthId"][9] = 3310580

-- log
tSeptemberParce_Data["Log"] = {}
-- 删除log
tSeptemberParce_Data["Log"]["OutTimeLog"] = "0,0,%d,%d,12001140,2,0,0"

-- 2019.03.19复用新增
-- 神炼神纹周卡包  每次花费天石
tSeptemberParce_Data["NeedEMoney"][3312132] = {}
tSeptemberParce_Data["NeedEMoney"][3312132][1] = 500
tSeptemberParce_Data["NeedEMoney"][3312132][2] = 500
tSeptemberParce_Data["NeedEMoney"][3312132][3] = 450
tSeptemberParce_Data["NeedEMoney"][3312132][4] = 400
tSeptemberParce_Data["NeedEMoney"][3312132][5] = 350
tSeptemberParce_Data["NeedEMoney"][3312132][6] = 300
tSeptemberParce_Data["NeedEMoney"][3312132][7] = 250

-- 自创炼气周卡包  每次花费天石
tSeptemberParce_Data["NeedEMoney"][3312133] = {}
tSeptemberParce_Data["NeedEMoney"][3312133][1] = 350
tSeptemberParce_Data["NeedEMoney"][3312133][2] = 310
tSeptemberParce_Data["NeedEMoney"][3312133][3] = 280
tSeptemberParce_Data["NeedEMoney"][3312133][4] = 240
tSeptemberParce_Data["NeedEMoney"][3312133][5] = 200
tSeptemberParce_Data["NeedEMoney"][3312133][6] = 180
tSeptemberParce_Data["NeedEMoney"][3312133][7] = 160
-- 向npc购买卡包  购买花费天石
tSeptemberParce_Data["NeedEMoney"]["BuyCardBag"] = {}
tSeptemberParce_Data["NeedEMoney"]["BuyCardBag"][3312132] = 1
tSeptemberParce_Data["NeedEMoney"]["BuyCardBag"][3312133] = 1
tSeptemberParce_Data["NeedEMoney"]["BuyCardBag"][3312134] = 1799
tSeptemberParce_Data["NeedEMoney"]["BuyCardBag"][3312135] = 5399
tSeptemberParce_Data["NeedEMoney"]["BuyCardBag"][3312136] = 15999
tSeptemberParce_Data["NeedEMoney"]["BuyCardBag"][3312137] = 8999
tSeptemberParce_Data["NeedEMoney"]["BuyCardBag"][3312138] = 15999
tSeptemberParce_Data["NeedEMoney"]["BuyCardBag"][3312139] = 3699
-- 付费购买的卡包ID
tSeptemberParce_Data["CardBagId"] = {}
tSeptemberParce_Data["CardBagId"][1] = 3312132
tSeptemberParce_Data["CardBagId"][2] = 3312133
tSeptemberParce_Data["CardBagId"][3] = 3312134
tSeptemberParce_Data["CardBagId"][4] = 3312135
tSeptemberParce_Data["CardBagId"][5] = 3312136
tSeptemberParce_Data["CardBagId"][6] = 3312137
tSeptemberParce_Data["CardBagId"][7] = 3312138
tSeptemberParce_Data["CardBagId"][8] = 3312139

-- 玩家等级要求
tSeptemberParce_Data["Level"] = 80
tSeptemberParce_Data["Metempsychosis"] = 0

-- eomneylog
local tSeptemberParce_EmoneyLog = {}
-- 神品精炼周卡包
tSeptemberParce_EmoneyLog[3310571] = {}
tSeptemberParce_EmoneyLog[3310571][1] = "350	21682	550	550	1	"
tSeptemberParce_EmoneyLog[3310571][2] = "350	21683	500	500	1	"
tSeptemberParce_EmoneyLog[3310571][3] = "350	21684	450	450	1	"
tSeptemberParce_EmoneyLog[3310571][4] = "350	21685	400	400	1	"
tSeptemberParce_EmoneyLog[3310571][5] = "350	21686	350	350	1	"
tSeptemberParce_EmoneyLog[3310571][6] = "350	21687	300	300	1	"
tSeptemberParce_EmoneyLog[3310571][7] = "350	21688	250	250	1	"
-- 神纹精粹周卡包
tSeptemberParce_EmoneyLog[3310572] = {}
tSeptemberParce_EmoneyLog[3310572][1] = "350	21689	550	550	1	"
tSeptemberParce_EmoneyLog[3310572][2] = "350	21690	500	500	1	"
tSeptemberParce_EmoneyLog[3310572][3] = "350	21691	450	450	1	"
tSeptemberParce_EmoneyLog[3310572][4] = "350	21692	400	400	1	"
tSeptemberParce_EmoneyLog[3310572][5] = "350	21693	350	350	1	"
tSeptemberParce_EmoneyLog[3310572][6] = "350	21694	300	300	1	"
tSeptemberParce_EmoneyLog[3310572][7] = "350	21695	250	250	1	"
-- 自创炼气周卡包
tSeptemberParce_EmoneyLog[3310573] = {}
tSeptemberParce_EmoneyLog[3310573][1] = "350	21696	390	390	1	"
tSeptemberParce_EmoneyLog[3310573][2] = "350	21697	350	350	1	"
tSeptemberParce_EmoneyLog[3310573][3] = "350	21698	310	310	1	"
tSeptemberParce_EmoneyLog[3310573][4] = "350	21699	280	280	1	"
tSeptemberParce_EmoneyLog[3310573][5] = "350	21700	240	240	1	"
tSeptemberParce_EmoneyLog[3310573][6] = "350	21701	200	200	1	"
tSeptemberParce_EmoneyLog[3310573][7] = "350	21702	160	160	1	"

-- 2019.03.19复用新增
-- 神炼神纹周卡包
tSeptemberParce_EmoneyLog[3312132] = {}
tSeptemberParce_EmoneyLog[3312132][1] = "350	22057	500	500	1	"
tSeptemberParce_EmoneyLog[3312132][2] = "350	22058	500	500	1	"
tSeptemberParce_EmoneyLog[3312132][3] = "350	22059	450	450	1	"
tSeptemberParce_EmoneyLog[3312132][4] = "350	22060	400	400	1	"
tSeptemberParce_EmoneyLog[3312132][5] = "350	22061	350	350	1	"
tSeptemberParce_EmoneyLog[3312132][6] = "350	22062	300	300	1	"
tSeptemberParce_EmoneyLog[3312132][7] = "350	22063	250	250	1	"

-- 自创炼气周卡包
tSeptemberParce_EmoneyLog[3312133] = {}
tSeptemberParce_EmoneyLog[3312133][1] = "350	22064	350	350	1	"
tSeptemberParce_EmoneyLog[3312133][2] = "350	22065	310	310	1	"
tSeptemberParce_EmoneyLog[3312133][3] = "350	22066	280	280	1	"
tSeptemberParce_EmoneyLog[3312133][4] = "350	22067	240	240	1	"
tSeptemberParce_EmoneyLog[3312133][5] = "350	22068	200	200	1	"
tSeptemberParce_EmoneyLog[3312133][6] = "350	22069	180	180	1	"
tSeptemberParce_EmoneyLog[3312133][7] = "350	22070	160	160	1	"


-- 掩码记录
local tSeptemberParce_Stc = {}
-- 物品对应的掩码
tSeptemberParce_Stc[3310571] = 1 
tSeptemberParce_Stc[3310572] = 2 
tSeptemberParce_Stc[3310573] = 3 
tSeptemberParce_Stc[3310575] = 4 
tSeptemberParce_Stc[3310576] = 5 
tSeptemberParce_Stc[3310577] = 6 
tSeptemberParce_Stc[3310578] = 7 
tSeptemberParce_Stc[3310579] = 8 
tSeptemberParce_Stc[3310580] = 9 

tSeptemberParce_Stc["Event"] = {}
tSeptemberParce_Stc["Data"] = {}
-- stc(182, 11)  1、神品精炼周卡包使用次数     0~7
tSeptemberParce_Stc["Event"][1] = 182
tSeptemberParce_Stc["Data"][1] = 11
-- stc(182, 12)  2、神纹精粹周卡包使用次数     0~7
tSeptemberParce_Stc["Event"][2] = 182
tSeptemberParce_Stc["Data"][2] = 12
-- stc(182, 13)  3、自创炼气周卡包使用次数     0~7
tSeptemberParce_Stc["Event"][3] = 182
tSeptemberParce_Stc["Data"][3] = 13
-- stc(182, 14)  4、+4赤炼石（赠）月卡包       1表示月卡礼盒已购买  (2~31)-1表示使用次数
tSeptemberParce_Stc["Event"][4] = 182
tSeptemberParce_Stc["Data"][4] = 14
-- stc(182, 15)  5、+5赤炼石（赠）月卡包       1表示月卡礼盒已购买  (2~31)-1表示使用次数
tSeptemberParce_Stc["Event"][5] = 182
tSeptemberParce_Stc["Data"][5] = 15
-- stc(182, 16)  6、+6赤炼石（赠）月卡包       1表示月卡礼盒已购买  (2~31)-1表示使用次数
tSeptemberParce_Stc["Event"][6] = 182
tSeptemberParce_Stc["Data"][6] = 16
-- stc(182, 17)  7、1万修为值月卡包            1表示月卡礼盒已购买  (2~31)-1表示使用次数
tSeptemberParce_Stc["Event"][7] = 182
tSeptemberParce_Stc["Data"][7] = 17
-- stc(182, 18)  8、+4骏马（赠）月卡包         1表示月卡礼盒已购买  (2~31)-1表示使用次数
tSeptemberParce_Stc["Event"][8] = 182
tSeptemberParce_Stc["Data"][8] = 18
-- stc(182, 19)  9、优质玄元宝石（赠）月卡包   1表示月卡礼盒已购买  (2~31)-1表示使用次数
tSeptemberParce_Stc["Event"][9] = 182
tSeptemberParce_Stc["Data"][9] = 19

-- 2019.03.19复用新增
-- 物品对应的掩码
tSeptemberParce_Stc[3312132] = 1 
tSeptemberParce_Stc[3312133] = 2 
tSeptemberParce_Stc[3312134] = 3 
tSeptemberParce_Stc[3312135] = 4 
tSeptemberParce_Stc[3312136] = 5 
tSeptemberParce_Stc[3312137] = 6 
tSeptemberParce_Stc[3312138] = 7 
tSeptemberParce_Stc[3312139] = 8 

tSeptemberParce_Stc["EventType"] = {}
tSeptemberParce_Stc["DataType"] = {}
-- stc(192, 11)  1、神炼神纹周卡包             1表示周卡礼盒已购买  (2~8)-1表示使用次数
tSeptemberParce_Stc["EventType"][1] = 192
tSeptemberParce_Stc["DataType"][1] = 11
-- stc(192, 12)  2、自创炼气周卡包             1表示周卡礼盒已购买  (2~8)-1表示使用次数
tSeptemberParce_Stc["EventType"][2] = 192
tSeptemberParce_Stc["DataType"][2] = 12
-- stc(192, 13)  4、+4赤炼石（赠）月卡包       1表示月卡礼盒已购买  (2~31)-1表示使用次数
tSeptemberParce_Stc["EventType"][3] = 192
tSeptemberParce_Stc["DataType"][3] = 13
-- stc(192, 14)  5、+5赤炼石（赠）月卡包       1表示月卡礼盒已购买  (2~31)-1表示使用次数
tSeptemberParce_Stc["EventType"][4] = 192
tSeptemberParce_Stc["DataType"][4] = 14
-- stc(192, 15)  6、+6赤炼石（赠）月卡包       1表示月卡礼盒已购买  (2~31)-1表示使用次数
tSeptemberParce_Stc["EventType"][5] = 192
tSeptemberParce_Stc["DataType"][5] = 15
-- stc(192, 16)  7、1万修为值月卡包            1表示月卡礼盒已购买  (2~31)-1表示使用次数
tSeptemberParce_Stc["EventType"][6] = 192
tSeptemberParce_Stc["DataType"][6] = 16
-- stc(192, 17)  8、+6骏马（赠）月卡包         1表示月卡礼盒已购买  (2~31)-1表示使用次数
tSeptemberParce_Stc["EventType"][7] = 192
tSeptemberParce_Stc["DataType"][7] = 17
-- stc(192, 18)  8、神纹源晶石（赠）月卡包     1表示月卡礼盒已购买  (2~31)-1表示使用次数
tSeptemberParce_Stc["EventType"][8] = 192
tSeptemberParce_Stc["DataType"][8] = 18

local tSeptemberParce_Reward = {}
-- 周卡大包
tSeptemberParce_Reward[3310570] = {}
tSeptemberParce_Reward[3310570]["DeleteItem"] = {}
tSeptemberParce_Reward[3310570]["DeleteItem"][1] = {}
tSeptemberParce_Reward[3310570]["DeleteItem"][1]["Id"] = 3310570
tSeptemberParce_Reward[3310570]["RewardItem"] = {}
-- 神品精炼周卡包
tSeptemberParce_Reward[3310570]["RewardItem"][1] = {}
tSeptemberParce_Reward[3310570]["RewardItem"][1]["Id"] = 3310571
tSeptemberParce_Reward[3310570]["RewardItem"][1]["Attr"] = "0 1"
-- 神纹精粹周卡包
tSeptemberParce_Reward[3310570]["RewardItem"][2] = {}
tSeptemberParce_Reward[3310570]["RewardItem"][2]["Id"] = 3310572
tSeptemberParce_Reward[3310570]["RewardItem"][2]["Attr"] = "0 1"
-- 自创炼气周卡包
tSeptemberParce_Reward[3310570]["RewardItem"][3] = {}
tSeptemberParce_Reward[3310570]["RewardItem"][3]["Id"] = 3310573
tSeptemberParce_Reward[3310570]["RewardItem"][3]["Attr"] = "0 1"
tSeptemberParce_Reward[3310570]["LogId"] = 12001140
tSeptemberParce_Reward[3310570]["LogStep"] = "1[1]"
tSeptemberParce_Reward[3310570]["RewardEffect"] = {}
tSeptemberParce_Reward[3310570]["RewardEffect"]["Effect"] = "zf2-e128"

-- 神品精炼周卡包
tSeptemberParce_Reward[3310571] = {}
-- 明亮星陨石*5
-- 金钢尖钻（赠）*1
-- 神品淬炼礼包*1
tSeptemberParce_Reward[3310571][1] = {}
tSeptemberParce_Reward[3310571][1]["RewardItem"] = {}
tSeptemberParce_Reward[3310571][1]["RewardItem"][1] = {}
tSeptemberParce_Reward[3310571][1]["RewardItem"][1]["Id"] = 3009001
tSeptemberParce_Reward[3310571][1]["RewardItem"][1]["Attr"] = "0 5 0 2880 1"
tSeptemberParce_Reward[3310571][1]["RewardItem"][2] = {}
tSeptemberParce_Reward[3310571][1]["RewardItem"][2]["Id"] = 1200005
tSeptemberParce_Reward[3310571][1]["RewardItem"][2]["Attr"] = "0 1 3"
tSeptemberParce_Reward[3310571][1]["RewardItem"][3] = {}
tSeptemberParce_Reward[3310571][1]["RewardItem"][3]["Id"] = 3004249
tSeptemberParce_Reward[3310571][1]["RewardItem"][3]["Attr"] = "0 1"
tSeptemberParce_Reward[3310571][1]["LogId"] = 12001140
tSeptemberParce_Reward[3310571][1]["LogStep"] = "2[%d]"
tSeptemberParce_Reward[3310571][1]["RewardEffect"] = {}
tSeptemberParce_Reward[3310571][1]["RewardEffect"]["Effect"] = "zf2-e128"
-- 明亮星陨石*5
-- 金钢尖钻（赠）*1
-- 神品淬炼礼包*1
-- 赤炼石+6（赠）*1
tSeptemberParce_Reward[3310571][7] = {}
tSeptemberParce_Reward[3310571][7]["DeleteItem"] = {}
tSeptemberParce_Reward[3310571][7]["DeleteItem"][1] = {}
tSeptemberParce_Reward[3310571][7]["DeleteItem"][1]["Id"] = 3310571
tSeptemberParce_Reward[3310571][7]["RewardItem"] = {}
tSeptemberParce_Reward[3310571][7]["RewardItem"][1] = {}
tSeptemberParce_Reward[3310571][7]["RewardItem"][1]["Id"] = 3009001
tSeptemberParce_Reward[3310571][7]["RewardItem"][1]["Attr"] = "0 5 0 2880 1"
tSeptemberParce_Reward[3310571][7]["RewardItem"][2] = {}
tSeptemberParce_Reward[3310571][7]["RewardItem"][2]["Id"] = 1200005
tSeptemberParce_Reward[3310571][7]["RewardItem"][2]["Attr"] = "0 1 3"
tSeptemberParce_Reward[3310571][7]["RewardItem"][3] = {}
tSeptemberParce_Reward[3310571][7]["RewardItem"][3]["Id"] = 3004249
tSeptemberParce_Reward[3310571][7]["RewardItem"][3]["Attr"] = "0 1"
tSeptemberParce_Reward[3310571][7]["RewardItem"][4] = {}
tSeptemberParce_Reward[3310571][7]["RewardItem"][4]["Id"] = 730006
tSeptemberParce_Reward[3310571][7]["RewardItem"][4]["Attr"] = "0 1 3"
tSeptemberParce_Reward[3310571][7]["LogId"] = 12001140
tSeptemberParce_Reward[3310571][7]["LogStep"] = "2[7]"
tSeptemberParce_Reward[3310571][7]["RewardEffect"] = {}
tSeptemberParce_Reward[3310571][7]["RewardEffect"]["Effect"] = "zf2-e128"

-- 神纹精粹周卡包
tSeptemberParce_Reward[3310572] = {}
-- 万能神纹精粹*50
-- 小固化石（赠）*4
-- 神品淬炼礼包*1
tSeptemberParce_Reward[3310572][1] = {}
tSeptemberParce_Reward[3310572][1]["RewardItem"] = {}
tSeptemberParce_Reward[3310572][1]["RewardItem"][1] = {}
tSeptemberParce_Reward[3310572][1]["RewardItem"][1]["Id"] = 4060001
tSeptemberParce_Reward[3310572][1]["RewardItem"][1]["Attr"] = "0 50"
tSeptemberParce_Reward[3310572][1]["RewardItem"][2] = {}
tSeptemberParce_Reward[3310572][1]["RewardItem"][2]["Id"] = 723694
tSeptemberParce_Reward[3310572][1]["RewardItem"][2]["Attr"] = "0 4 3"
tSeptemberParce_Reward[3310572][1]["RewardItem"][3] = {}
tSeptemberParce_Reward[3310572][1]["RewardItem"][3]["Id"] = 3004249
tSeptemberParce_Reward[3310572][1]["RewardItem"][3]["Attr"] = "0 1"
tSeptemberParce_Reward[3310572][1]["LogId"] = 12001140
tSeptemberParce_Reward[3310572][1]["LogStep"] = "3[%d]"
tSeptemberParce_Reward[3310572][1]["RewardEffect"] = {}
tSeptemberParce_Reward[3310572][1]["RewardEffect"]["Effect"] = "zf2-e128"
-- 万能神纹精粹*50
-- 小固化石（赠）*4
-- 神品淬炼礼包*1
-- 赤炼石+6（赠）*1
tSeptemberParce_Reward[3310572][7] = {}
tSeptemberParce_Reward[3310572][7]["DeleteItem"] = {}
tSeptemberParce_Reward[3310572][7]["DeleteItem"][1] = {}
tSeptemberParce_Reward[3310572][7]["DeleteItem"][1]["Id"] = 3310572
tSeptemberParce_Reward[3310572][7]["RewardItem"] = {}
tSeptemberParce_Reward[3310572][7]["RewardItem"][1] = {}
tSeptemberParce_Reward[3310572][7]["RewardItem"][1]["Id"] = 4060001
tSeptemberParce_Reward[3310572][7]["RewardItem"][1]["Attr"] = "0 50"
tSeptemberParce_Reward[3310572][7]["RewardItem"][2] = {}
tSeptemberParce_Reward[3310572][7]["RewardItem"][2]["Id"] = 723694
tSeptemberParce_Reward[3310572][7]["RewardItem"][2]["Attr"] = "0 4 3"
tSeptemberParce_Reward[3310572][7]["RewardItem"][3] = {}
tSeptemberParce_Reward[3310572][7]["RewardItem"][3]["Id"] = 3004249
tSeptemberParce_Reward[3310572][7]["RewardItem"][3]["Attr"] = "0 1"
tSeptemberParce_Reward[3310572][7]["RewardItem"][4] = {}
tSeptemberParce_Reward[3310572][7]["RewardItem"][4]["Id"] = 730006
tSeptemberParce_Reward[3310572][7]["RewardItem"][4]["Attr"] = "0 1 3"
tSeptemberParce_Reward[3310572][7]["LogId"] = 12001140
tSeptemberParce_Reward[3310572][7]["LogStep"] = "3[7]"
tSeptemberParce_Reward[3310572][7]["RewardEffect"] = {}
tSeptemberParce_Reward[3310572][7]["RewardEffect"]["Effect"] = "zf2-e128"

-- 自创炼气周卡包
tSeptemberParce_Reward[3310573] = {}
-- 2000气力值
-- 免费强炼丹（赠）*50
-- 大爆丹*10
tSeptemberParce_Reward[3310573][1] = {}
tSeptemberParce_Reward[3310573][1]["RewardStrengthValue"] = {}
tSeptemberParce_Reward[3310573][1]["RewardStrengthValue"]["Value"] = 2000
tSeptemberParce_Reward[3310573][1]["RewardItem"] = {}
tSeptemberParce_Reward[3310573][1]["RewardItem"][1] = {}
tSeptemberParce_Reward[3310573][1]["RewardItem"][1]["Id"] = 3003124
tSeptemberParce_Reward[3310573][1]["RewardItem"][1]["Attr"] = "0 50 3"
tSeptemberParce_Reward[3310573][1]["RewardItem"][2] = {}
tSeptemberParce_Reward[3310573][1]["RewardItem"][2]["Id"] = 3003126
tSeptemberParce_Reward[3310573][1]["RewardItem"][2]["Attr"] = "0 10 3"
tSeptemberParce_Reward[3310573][1]["LogId"] = 12001140
tSeptemberParce_Reward[3310573][1]["LogStep"] = "4[%d]"
tSeptemberParce_Reward[3310573][1]["RewardEffect"] = {}
tSeptemberParce_Reward[3310573][1]["RewardEffect"]["Effect"] = "zf2-e128"
-- 2000气力值
-- 免费强炼丹（赠）*50
-- 大爆丹*10
-- FrozenChiPillPack（炼气保护道具）*2
tSeptemberParce_Reward[3310573][7] = {}
tSeptemberParce_Reward[3310573][7]["DeleteItem"] = {}
tSeptemberParce_Reward[3310573][7]["DeleteItem"][1] = {}
tSeptemberParce_Reward[3310573][7]["DeleteItem"][1]["Id"] = 3310573
tSeptemberParce_Reward[3310573][7]["RewardStrengthValue"] = {}
tSeptemberParce_Reward[3310573][7]["RewardStrengthValue"]["Value"] = 2000
tSeptemberParce_Reward[3310573][7]["RewardItem"] = {}
tSeptemberParce_Reward[3310573][7]["RewardItem"][1] = {}
tSeptemberParce_Reward[3310573][7]["RewardItem"][1]["Id"] = 3003124
tSeptemberParce_Reward[3310573][7]["RewardItem"][1]["Attr"] = "0 50 3"
tSeptemberParce_Reward[3310573][7]["RewardItem"][2] = {}
tSeptemberParce_Reward[3310573][7]["RewardItem"][2]["Id"] = 3003126
tSeptemberParce_Reward[3310573][7]["RewardItem"][2]["Attr"] = "0 10 3"
tSeptemberParce_Reward[3310573][7]["RewardItem"][3] = {}
tSeptemberParce_Reward[3310573][7]["RewardItem"][3]["Id"] = 3005360
tSeptemberParce_Reward[3310573][7]["RewardItem"][3]["Attr"] = "0 2"
tSeptemberParce_Reward[3310573][7]["LogId"] = 12001140
tSeptemberParce_Reward[3310573][7]["LogStep"] = "4[7]"
tSeptemberParce_Reward[3310573][7]["RewardEffect"] = {}
tSeptemberParce_Reward[3310573][7]["RewardEffect"]["Effect"] = "zf2-e128"


-- 初秋特惠月卡礼盒
tSeptemberParce_Reward[3310574] = {}
-- +4赤炼石（赠）月卡包
tSeptemberParce_Reward[3310574][3310575] = {}
tSeptemberParce_Reward[3310574][3310575]["RewardItem"] = {}
tSeptemberParce_Reward[3310574][3310575]["RewardItem"][1] = {}
tSeptemberParce_Reward[3310574][3310575]["RewardItem"][1]["Id"] = 3310575
tSeptemberParce_Reward[3310574][3310575]["RewardItem"][1]["Attr"] = "0 1"
tSeptemberParce_Reward[3310574][3310575]["EmoneyLog"] = "350	21703	1799	1799	1	"
tSeptemberParce_Reward[3310574][3310575]["LogId"] = 12001140
tSeptemberParce_Reward[3310574][3310575]["LogStep"] = "5[1]"
tSeptemberParce_Reward[3310574][3310575]["RewardEffect"] = {}
tSeptemberParce_Reward[3310574][3310575]["RewardEffect"]["Effect"] = "zf2-e128"
-- +5赤炼石（赠）月卡包
tSeptemberParce_Reward[3310574][3310576] = {}
tSeptemberParce_Reward[3310574][3310576]["RewardItem"] = {}
tSeptemberParce_Reward[3310574][3310576]["RewardItem"][1] = {}
tSeptemberParce_Reward[3310574][3310576]["RewardItem"][1]["Id"] = 3310576
tSeptemberParce_Reward[3310574][3310576]["RewardItem"][1]["Attr"] = "0 1"
tSeptemberParce_Reward[3310574][3310576]["EmoneyLog"] = "350	21704	5399	5399	1	"
tSeptemberParce_Reward[3310574][3310576]["LogId"] = 12001140
tSeptemberParce_Reward[3310574][3310576]["LogStep"] = "5[2]"
tSeptemberParce_Reward[3310574][3310576]["RewardEffect"] = {}
tSeptemberParce_Reward[3310574][3310576]["RewardEffect"]["Effect"] = "zf2-e128"
-- +6赤炼石（赠）月卡包
tSeptemberParce_Reward[3310574][3310577] = {}
tSeptemberParce_Reward[3310574][3310577]["RewardItem"] = {}
tSeptemberParce_Reward[3310574][3310577]["RewardItem"][1] = {}
tSeptemberParce_Reward[3310574][3310577]["RewardItem"][1]["Id"] = 3310577
tSeptemberParce_Reward[3310574][3310577]["RewardItem"][1]["Attr"] = "0 1"
tSeptemberParce_Reward[3310574][3310577]["EmoneyLog"] = "350	21705	15999	15999	1	"
tSeptemberParce_Reward[3310574][3310577]["LogId"] = 12001140
tSeptemberParce_Reward[3310574][3310577]["LogStep"] = "5[3]"
tSeptemberParce_Reward[3310574][3310577]["RewardEffect"] = {}
tSeptemberParce_Reward[3310574][3310577]["RewardEffect"]["Effect"] = "zf2-e128"
-- 1万修为值月卡包
tSeptemberParce_Reward[3310574][3310578] = {}
tSeptemberParce_Reward[3310574][3310578]["RewardItem"] = {}
tSeptemberParce_Reward[3310574][3310578]["RewardItem"][1] = {}
tSeptemberParce_Reward[3310574][3310578]["RewardItem"][1]["Id"] = 3310578
tSeptemberParce_Reward[3310574][3310578]["RewardItem"][1]["Attr"] = "0 1"
tSeptemberParce_Reward[3310574][3310578]["EmoneyLog"] = "350	21706	8999	8999	1	"
tSeptemberParce_Reward[3310574][3310578]["LogId"] = 12001140
tSeptemberParce_Reward[3310574][3310578]["LogStep"] = "5[4]"
tSeptemberParce_Reward[3310574][3310578]["RewardEffect"] = {}
tSeptemberParce_Reward[3310574][3310578]["RewardEffect"]["Effect"] = "zf2-e128"
-- +4骏马（赠）月卡包
tSeptemberParce_Reward[3310574][3310579] = {}
tSeptemberParce_Reward[3310574][3310579]["RewardItem"] = {}
tSeptemberParce_Reward[3310574][3310579]["RewardItem"][1] = {}
tSeptemberParce_Reward[3310574][3310579]["RewardItem"][1]["Id"] = 3310579
tSeptemberParce_Reward[3310574][3310579]["RewardItem"][1]["Attr"] = "0 1"
tSeptemberParce_Reward[3310574][3310579]["EmoneyLog"] = "350	21707	1599	1599	1	"
tSeptemberParce_Reward[3310574][3310579]["LogId"] = 12001140
tSeptemberParce_Reward[3310574][3310579]["LogStep"] = "5[5]"
tSeptemberParce_Reward[3310574][3310579]["RewardEffect"] = {}
tSeptemberParce_Reward[3310574][3310579]["RewardEffect"]["Effect"] = "zf2-e128"
-- 优质玄元宝石（赠）月卡包
tSeptemberParce_Reward[3310574][3310580] = {}
tSeptemberParce_Reward[3310574][3310580]["RewardItem"] = {}
tSeptemberParce_Reward[3310574][3310580]["RewardItem"][1] = {}
tSeptemberParce_Reward[3310574][3310580]["RewardItem"][1]["Id"] = 3310580
tSeptemberParce_Reward[3310574][3310580]["RewardItem"][1]["Attr"] = "0 1"
tSeptemberParce_Reward[3310574][3310580]["EmoneyLog"] = "350	21708	5999	5999	1	"
tSeptemberParce_Reward[3310574][3310580]["LogId"] = 12001140
tSeptemberParce_Reward[3310574][3310580]["LogStep"] = "5[6]"
tSeptemberParce_Reward[3310574][3310580]["RewardEffect"] = {}
tSeptemberParce_Reward[3310574][3310580]["RewardEffect"]["Effect"] = "zf2-e128"

-- +4赤炼石（赠）月卡包
tSeptemberParce_Reward[3310575] = {}
tSeptemberParce_Reward[3310575]["RewardItem"] = {}
tSeptemberParce_Reward[3310575]["RewardItem"][1] = {}
tSeptemberParce_Reward[3310575]["RewardItem"][1]["Id"] = 730004
tSeptemberParce_Reward[3310575]["RewardItem"][1]["Attr"] = "0 1 3"
tSeptemberParce_Reward[3310575]["LogId"] = 12001140
tSeptemberParce_Reward[3310575]["LogStep"] = "6[1]"
tSeptemberParce_Reward[3310575]["RewardEffect"] = {}
tSeptemberParce_Reward[3310575]["RewardEffect"]["Effect"] = "zf2-e128"

-- +5赤炼石（赠）月卡包
tSeptemberParce_Reward[3310576] = {}
tSeptemberParce_Reward[3310576]["RewardItem"] = {}
tSeptemberParce_Reward[3310576]["RewardItem"][1] = {}
tSeptemberParce_Reward[3310576]["RewardItem"][1]["Id"] = 730005
tSeptemberParce_Reward[3310576]["RewardItem"][1]["Attr"] = "0 1 3"
tSeptemberParce_Reward[3310576]["LogId"] = 12001140
tSeptemberParce_Reward[3310576]["LogStep"] = "6[2]"
tSeptemberParce_Reward[3310576]["RewardEffect"] = {}
tSeptemberParce_Reward[3310576]["RewardEffect"]["Effect"] = "zf2-e128"

-- +6赤炼石（赠）月卡包
tSeptemberParce_Reward[3310577] = {}
tSeptemberParce_Reward[3310577]["RewardItem"] = {}
tSeptemberParce_Reward[3310577]["RewardItem"][1] = {}
tSeptemberParce_Reward[3310577]["RewardItem"][1]["Id"] = 730006
tSeptemberParce_Reward[3310577]["RewardItem"][1]["Attr"] = "0 1 3"
tSeptemberParce_Reward[3310577]["LogId"] = 12001140
tSeptemberParce_Reward[3310577]["LogStep"] = "6[3]"
tSeptemberParce_Reward[3310577]["RewardEffect"] = {}
tSeptemberParce_Reward[3310577]["RewardEffect"]["Effect"] = "zf2-e128"

-- 1万修为值月卡包
tSeptemberParce_Reward[3310578] = {}
tSeptemberParce_Reward[3310578]["RewardRepairValue"] = {}
tSeptemberParce_Reward[3310578]["RewardRepairValue"]["Value"] = 10000
tSeptemberParce_Reward[3310578]["LogId"] = 12001140
tSeptemberParce_Reward[3310578]["LogStep"] = "6[4]"
tSeptemberParce_Reward[3310578]["RewardEffect"] = {}
tSeptemberParce_Reward[3310578]["RewardEffect"]["Effect"] = "zf2-e128"

-- +4骏马（赠）月卡包
tSeptemberParce_Reward[3310579] = {}
tSeptemberParce_Reward[3310579]["RewardItem"] = {}
tSeptemberParce_Reward[3310579]["RewardItem"][1] = {}
tSeptemberParce_Reward[3310579]["RewardItem"][1]["Id"] = 300000
tSeptemberParce_Reward[3310579]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 16750080 255 150 0 4"
tSeptemberParce_Reward[3310579]["LogId"] = 12001140
tSeptemberParce_Reward[3310579]["LogStep"] = "6[5]"
tSeptemberParce_Reward[3310579]["RewardEffect"] = {}
tSeptemberParce_Reward[3310579]["RewardEffect"]["Effect"] = "zf2-e128"

-- 优质玄元宝石（赠）月卡包
tSeptemberParce_Reward[3310580] = {}
tSeptemberParce_Reward[3310580]["RewardItem"] = {}
tSeptemberParce_Reward[3310580]["RewardItem"][1] = {}
tSeptemberParce_Reward[3310580]["RewardItem"][1]["Id"] = 700073
tSeptemberParce_Reward[3310580]["RewardItem"][1]["Attr"] = "0 1 3"
tSeptemberParce_Reward[3310580]["LogId"] = 12001140
tSeptemberParce_Reward[3310580]["LogStep"] = "6[6]"
tSeptemberParce_Reward[3310580]["RewardEffect"] = {}
tSeptemberParce_Reward[3310580]["RewardEffect"]["Effect"] = "zf2-e128"

-- 上线补领月卡包
tSeptemberParce_Reward["LoginReward"] = {}
-- +4赤炼石（赠）月卡包
tSeptemberParce_Reward["LoginReward"][4] = {}
tSeptemberParce_Reward["LoginReward"][4]["RewardItem"] = {}
tSeptemberParce_Reward["LoginReward"][4]["RewardItem"][1] = {}
tSeptemberParce_Reward["LoginReward"][4]["RewardItem"][1]["Id"] = 3310575
tSeptemberParce_Reward["LoginReward"][4]["RewardItem"][1]["Attr"] = "0 1"
tSeptemberParce_Reward["LoginReward"][4]["LogId"] = 12001140
tSeptemberParce_Reward["LoginReward"][4]["LogStep"] = "7[1]"
-- +5赤炼石（赠）月卡包
tSeptemberParce_Reward["LoginReward"][5] = {}
tSeptemberParce_Reward["LoginReward"][5]["RewardItem"] = {}
tSeptemberParce_Reward["LoginReward"][5]["RewardItem"][1] = {}
tSeptemberParce_Reward["LoginReward"][5]["RewardItem"][1]["Id"] = 3310576
tSeptemberParce_Reward["LoginReward"][5]["RewardItem"][1]["Attr"] = "0 1"
tSeptemberParce_Reward["LoginReward"][5]["LogId"] = 12001140
tSeptemberParce_Reward["LoginReward"][5]["LogStep"] = "7[2]"
-- +6赤炼石（赠）月卡包
tSeptemberParce_Reward["LoginReward"][6] = {}
tSeptemberParce_Reward["LoginReward"][6]["RewardItem"] = {}
tSeptemberParce_Reward["LoginReward"][6]["RewardItem"][1] = {}
tSeptemberParce_Reward["LoginReward"][6]["RewardItem"][1]["Id"] = 3310577
tSeptemberParce_Reward["LoginReward"][6]["RewardItem"][1]["Attr"] = "0 1"
tSeptemberParce_Reward["LoginReward"][6]["LogId"] = 12001140
tSeptemberParce_Reward["LoginReward"][6]["LogStep"] = "7[3]"
-- 1万修为值月卡包
tSeptemberParce_Reward["LoginReward"][7] = {}
tSeptemberParce_Reward["LoginReward"][7]["RewardItem"] = {}
tSeptemberParce_Reward["LoginReward"][7]["RewardItem"][1] = {}
tSeptemberParce_Reward["LoginReward"][7]["RewardItem"][1]["Id"] = 3310578
tSeptemberParce_Reward["LoginReward"][7]["RewardItem"][1]["Attr"] = "0 1"
tSeptemberParce_Reward["LoginReward"][7]["LogId"] = 12001140
tSeptemberParce_Reward["LoginReward"][7]["LogStep"] = "7[4]"
-- +4骏马（赠）月卡包
tSeptemberParce_Reward["LoginReward"][8] = {}
tSeptemberParce_Reward["LoginReward"][8]["RewardItem"] = {}
tSeptemberParce_Reward["LoginReward"][8]["RewardItem"][1] = {}
tSeptemberParce_Reward["LoginReward"][8]["RewardItem"][1]["Id"] = 3310579
tSeptemberParce_Reward["LoginReward"][8]["RewardItem"][1]["Attr"] = "0 1"
tSeptemberParce_Reward["LoginReward"][8]["LogId"] = 12001140
tSeptemberParce_Reward["LoginReward"][8]["LogStep"] = "7[5]"
-- 优质玄元宝石（赠）月卡包
tSeptemberParce_Reward["LoginReward"][9] = {}
tSeptemberParce_Reward["LoginReward"][9]["RewardItem"] = {}
tSeptemberParce_Reward["LoginReward"][9]["RewardItem"][1] = {}
tSeptemberParce_Reward["LoginReward"][9]["RewardItem"][1]["Id"] = 3310580
tSeptemberParce_Reward["LoginReward"][9]["RewardItem"][1]["Attr"] = "0 1"
tSeptemberParce_Reward["LoginReward"][9]["LogId"] = 12001140
tSeptemberParce_Reward["LoginReward"][9]["LogStep"] = "7[6]"


-- 2019.03.19复用新增
-- ===神炼神纹周卡包
-- ===索引: 3312132,1,1
-- ===备注:每天花费天石开1次，一共7次，第1-6次
tSeptemberParce_Reward[3312132] = {}
tSeptemberParce_Reward[3312132][1] = {}
tSeptemberParce_Reward[3312132][1][1] = {}
tSeptemberParce_Reward[3312132][1][1]["LogId"] = 12001140
tSeptemberParce_Reward[3312132][1][1]["RewardItem"] = {}
tSeptemberParce_Reward[3312132][1][1]["RewardItem"][1] = {}
tSeptemberParce_Reward[3312132][1][1]["RewardItem"][1]["Id"] = 3009001 -- 【库】BrightStarStone[属性:9]【表格】明亮星陨石
tSeptemberParce_Reward[3312132][1][1]["RewardItem"][1]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的BrightStarStone*5
tSeptemberParce_Reward[3312132][1][1]["RewardItem"][2] = {}
tSeptemberParce_Reward[3312132][1][1]["RewardItem"][2]["Id"] = 1200005 -- 【库】ToughDrill[属性:0]【表格】金钢尖钻
tSeptemberParce_Reward[3312132][1][1]["RewardItem"][2]["Attr"] = "0 1 3" -- ToughDrill(赠)*1
tSeptemberParce_Reward[3312132][1][1]["RewardItem"][3] = {}
tSeptemberParce_Reward[3312132][1][1]["RewardItem"][3]["Id"] = 3004249 -- 【库】SacredRefineryPack[属性:9]【表格】神品淬炼礼包
tSeptemberParce_Reward[3312132][1][1]["RewardItem"][3]["Attr"] = "0 1" -- SacredRefineryPack*1
tSeptemberParce_Reward[3312132][1][1]["RewardEffect"] = {}
tSeptemberParce_Reward[3312132][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSeptemberParce_Reward[3312132][1][1]["RewardEffect"]["Effect"] = "angelwing"


-- ===神炼神纹周卡包
-- ===索引: 3312132,1,2
-- ===备注:每天花费天石开1次，一共7次，第1-6次
tSeptemberParce_Reward[3312132][1][2] = {}
tSeptemberParce_Reward[3312132][1][2]["LogId"] = 12001140
tSeptemberParce_Reward[3312132][1][2]["RewardItem"] = {}
tSeptemberParce_Reward[3312132][1][2]["RewardItem"][1] = {}
tSeptemberParce_Reward[3312132][1][2]["RewardItem"][1]["Id"] = 4060001 -- 【库】UniversalRuneEssence[属性:9]【表格】万能神纹精粹
tSeptemberParce_Reward[3312132][1][2]["RewardItem"][1]["Attr"] = "0 50 3" -- UniversalRuneEssence*50
tSeptemberParce_Reward[3312132][1][2]["RewardItem"][2] = {}
tSeptemberParce_Reward[3312132][1][2]["RewardItem"][2]["Id"] = 723694 -- 【库】PermanentStone[属性:0]【表格】小固化石
tSeptemberParce_Reward[3312132][1][2]["RewardItem"][2]["Attr"] = "0 4 3" -- PermanentStone(赠)*4
tSeptemberParce_Reward[3312132][1][2]["RewardItem"][3] = {}
tSeptemberParce_Reward[3312132][1][2]["RewardItem"][3]["Id"] = 3004249 -- 【库】SacredRefineryPack[属性:9]【表格】神品淬炼礼包
tSeptemberParce_Reward[3312132][1][2]["RewardItem"][3]["Attr"] = "0 1" -- SacredRefineryPack*1
tSeptemberParce_Reward[3312132][1][2]["RewardEffect"] = {}
tSeptemberParce_Reward[3312132][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSeptemberParce_Reward[3312132][1][2]["RewardEffect"]["Effect"] = "angelwing"


-- ===神炼神纹周卡包
-- ===索引: 3312132,8,1
-- ===备注:每天花费天石开1次，一共7次，第7次有额外奖励
tSeptemberParce_Reward[3312132][8] = {}
tSeptemberParce_Reward[3312132][8][1] = {}
tSeptemberParce_Reward[3312132][8][1]["LogId"] = 12001140
tSeptemberParce_Reward[3312132][8][1]["RewardItem"] = {}
tSeptemberParce_Reward[3312132][8][1]["RewardItem"][1] = {}
tSeptemberParce_Reward[3312132][8][1]["RewardItem"][1]["Id"] = 3009001 -- 【库】BrightStarStone[属性:9]【表格】明亮星陨石
tSeptemberParce_Reward[3312132][8][1]["RewardItem"][1]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的BrightStarStone*5
tSeptemberParce_Reward[3312132][8][1]["RewardItem"][2] = {}
tSeptemberParce_Reward[3312132][8][1]["RewardItem"][2]["Id"] = 1200005 -- 【库】ToughDrill[属性:0]【表格】金钢尖钻
tSeptemberParce_Reward[3312132][8][1]["RewardItem"][2]["Attr"] = "0 1 3" -- ToughDrill(赠)*1
tSeptemberParce_Reward[3312132][8][1]["RewardItem"][3] = {}
tSeptemberParce_Reward[3312132][8][1]["RewardItem"][3]["Id"] = 3004249 -- 【库】SacredRefineryPack[属性:9]【表格】神品淬炼礼包
tSeptemberParce_Reward[3312132][8][1]["RewardItem"][3]["Attr"] = "0 1" -- SacredRefineryPack*1
tSeptemberParce_Reward[3312132][8][1]["RewardItem"][4] = {}
tSeptemberParce_Reward[3312132][8][1]["RewardItem"][4]["Id"] = 730006 -- 【库】+6Stone[属性:0]【表格】赤炼石+6（赠）
tSeptemberParce_Reward[3312132][8][1]["RewardItem"][4]["Attr"] = "0 1 3" -- +6Stone(赠)*1
tSeptemberParce_Reward[3312132][8][1]["RewardEffect"] = {}
tSeptemberParce_Reward[3312132][8][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSeptemberParce_Reward[3312132][8][1]["RewardEffect"]["Effect"] = "angelwing"


-- ===神炼神纹周卡包
-- ===索引: 3312132,8,2
-- ===备注:每天花费天石开1次，一共7次，第7次有额外奖励
tSeptemberParce_Reward[3312132][8][2] = {}
tSeptemberParce_Reward[3312132][8][2]["LogId"] = 12001140
tSeptemberParce_Reward[3312132][8][2]["RewardItem"] = {}
tSeptemberParce_Reward[3312132][8][2]["RewardItem"][1] = {}
tSeptemberParce_Reward[3312132][8][2]["RewardItem"][1]["Id"] = 4060001 -- 【库】UniversalRuneEssence[属性:9]【表格】万能神纹精粹
tSeptemberParce_Reward[3312132][8][2]["RewardItem"][1]["Attr"] = "0 50 3" -- UniversalRuneEssence*50
tSeptemberParce_Reward[3312132][8][2]["RewardItem"][2] = {}
tSeptemberParce_Reward[3312132][8][2]["RewardItem"][2]["Id"] = 723694 -- 【库】PermanentStone[属性:0]【表格】小固化石
tSeptemberParce_Reward[3312132][8][2]["RewardItem"][2]["Attr"] = "0 4 3" -- PermanentStone(赠)*4
tSeptemberParce_Reward[3312132][8][2]["RewardItem"][3] = {}
tSeptemberParce_Reward[3312132][8][2]["RewardItem"][3]["Id"] = 3004249 -- 【库】SacredRefineryPack[属性:9]【表格】神品淬炼礼包
tSeptemberParce_Reward[3312132][8][2]["RewardItem"][3]["Attr"] = "0 1" -- SacredRefineryPack*1
tSeptemberParce_Reward[3312132][8][2]["RewardItem"][4] = {}
tSeptemberParce_Reward[3312132][8][2]["RewardItem"][4]["Id"] = 730006 -- 【库】+6Stone[属性:0]【表格】赤炼石+6（赠）
tSeptemberParce_Reward[3312132][8][2]["RewardItem"][4]["Attr"] = "0 1 3" -- +6Stone(赠)*1
tSeptemberParce_Reward[3312132][8][2]["RewardEffect"] = {}
tSeptemberParce_Reward[3312132][8][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSeptemberParce_Reward[3312132][8][2]["RewardEffect"]["Effect"] = "angelwing"


-- ===自创炼气熔炼周卡包
-- ===索引: 3312133,1
-- ===备注:每天花费天石开1次，一共7次，第1-6次
tSeptemberParce_Reward[3312133] = {}
tSeptemberParce_Reward[3312133][1] = {}
tSeptemberParce_Reward[3312133][1][1] = {}
tSeptemberParce_Reward[3312133][1][1]["LogId"] = 12001140
tSeptemberParce_Reward[3312133][1][1]["RewardStrengthValue"] = {}
tSeptemberParce_Reward[3312133][1][1]["RewardStrengthValue"]["Value"] = 2000 -- 气力值
tSeptemberParce_Reward[3312133][1][1]["RewardItem"] = {}
tSeptemberParce_Reward[3312133][1][1]["RewardItem"][1] = {}
tSeptemberParce_Reward[3312133][1][1]["RewardItem"][1]["Id"] = 3003124 -- 【库】FavoredTrainingPill[属性:0]【表格】免费强炼丹（赠）*50
tSeptemberParce_Reward[3312133][1][1]["RewardItem"][1]["Attr"] = "0 50 3" -- FavoredTrainingPill(赠)*50
tSeptemberParce_Reward[3312133][1][1]["RewardItem"][2] = {}
tSeptemberParce_Reward[3312133][1][1]["RewardItem"][2]["Id"] = 3311759 -- 【库】RuneCrystal[属性:8]【表格】赠神纹源晶*2
tSeptemberParce_Reward[3312133][1][1]["RewardItem"][2]["Attr"] = "0 2 3" -- RuneCrystal(赠)*2
tSeptemberParce_Reward[3312133][1][1]["RewardEffect"] = {}
tSeptemberParce_Reward[3312133][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSeptemberParce_Reward[3312133][1][1]["RewardEffect"]["Effect"] = "angelwing"


-- ===自创炼气熔炼周卡包
-- ===索引: 3312133,8
-- ===备注:每天花费天石开1次，一共7次，第7次有额外奖励
tSeptemberParce_Reward[3312133][8] = {}
tSeptemberParce_Reward[3312133][8][1] = {}
tSeptemberParce_Reward[3312133][8][1]["LogId"] = 12001140
tSeptemberParce_Reward[3312133][8][1]["RewardStrengthValue"] = {}
tSeptemberParce_Reward[3312133][8][1]["RewardStrengthValue"]["Value"] = 2000 -- 气力值
tSeptemberParce_Reward[3312133][8][1]["RewardItem"] = {}
tSeptemberParce_Reward[3312133][8][1]["RewardItem"][1] = {}
tSeptemberParce_Reward[3312133][8][1]["RewardItem"][1]["Id"] = 3003124 -- 【库】FavoredTrainingPill[属性:0]【表格】免费强炼丹（赠）*50
tSeptemberParce_Reward[3312133][8][1]["RewardItem"][1]["Attr"] = "0 50 3" -- FavoredTrainingPill(赠)*50
tSeptemberParce_Reward[3312133][8][1]["RewardItem"][2] = {}
tSeptemberParce_Reward[3312133][8][1]["RewardItem"][2]["Id"] = 3311759 -- 【库】RuneCrystal[属性:8]【表格】赠神纹源晶*2
tSeptemberParce_Reward[3312133][8][1]["RewardItem"][2]["Attr"] = "0 2 3" -- RuneCrystal(赠)*2
tSeptemberParce_Reward[3312133][8][1]["RewardItem"][3] = {}
tSeptemberParce_Reward[3312133][8][1]["RewardItem"][3]["Id"] = 3311821 -- 【库】DivineRuneStone[属性:9]【表格】赠优质神纹源晶*2
tSeptemberParce_Reward[3312133][8][1]["RewardItem"][3]["Attr"] = "0 2 3" -- DivineRuneStone*2
tSeptemberParce_Reward[3312133][8][1]["RewardEffect"] = {}
tSeptemberParce_Reward[3312133][8][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSeptemberParce_Reward[3312133][8][1]["RewardEffect"]["Effect"] = "angelwing"


-- ===赤炼石月卡A包
-- ===索引: 3312134
tSeptemberParce_Reward[3312134] = {}
tSeptemberParce_Reward[3312134]["ItemChanceSum"] = 10000
tSeptemberParce_Reward[3312134]["LogId"] = 12001140
tSeptemberParce_Reward[3312134]["EmoneyLog"] = "350	22071	0	0	%d	"
-- 赤炼石+4（赠）*1 - 80.00%
tSeptemberParce_Reward[3312134][1] = {}
tSeptemberParce_Reward[3312134][1]["RandomItemChanceType"] = 2
tSeptemberParce_Reward[3312134][1]["ItemChance"] = 8000
tSeptemberParce_Reward[3312134][1]["RewardItem"] = {}
tSeptemberParce_Reward[3312134][1]["RewardItem"][1] = {}
tSeptemberParce_Reward[3312134][1]["RewardItem"][1]["Id"] = 730004 -- 【库】+4Stone[属性:0]【表格】赤炼石+4（赠）*1
tSeptemberParce_Reward[3312134][1]["RewardItem"][1]["Attr"] = "0 1 3" -- +4Stone(赠)*1
tSeptemberParce_Reward[3312134][1]["RewardEffect"] = {}
tSeptemberParce_Reward[3312134][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSeptemberParce_Reward[3312134][1]["RewardEffect"]["Effect"] = "angelwing"
-- 赤炼石+4（赠）*2 - 20.00%
tSeptemberParce_Reward[3312134][2] = {}
tSeptemberParce_Reward[3312134][2]["RandomItemChanceType"] = 2
tSeptemberParce_Reward[3312134][2]["ItemChance"] = 2000
tSeptemberParce_Reward[3312134][2]["RewardItem"] = {}
tSeptemberParce_Reward[3312134][2]["RewardItem"][1] = {}
tSeptemberParce_Reward[3312134][2]["RewardItem"][1]["Id"] = 730004 -- 【库】+4Stone[属性:0]【表格】赤炼石+4（赠）*2
tSeptemberParce_Reward[3312134][2]["RewardItem"][1]["Attr"] = "0 2 3" -- +4Stone(赠)*2
tSeptemberParce_Reward[3312134][2]["RewardEffect"] = {}
tSeptemberParce_Reward[3312134][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSeptemberParce_Reward[3312134][2]["RewardEffect"]["Effect"] = "angelwing"


-- ===赤炼石月卡B包
-- ===索引:3312135
tSeptemberParce_Reward[3312135] = {}
tSeptemberParce_Reward[3312135]["ItemChanceSum"] = 10000
tSeptemberParce_Reward[3312135]["LogId"] = 12001140
tSeptemberParce_Reward[3312135]["EmoneyLog"] = "350	22072	0	0	%d	"
-- 赤炼石+5（赠）*1 - 90.00%
tSeptemberParce_Reward[3312135][1] = {}
tSeptemberParce_Reward[3312135][1]["RandomItemChanceType"] = 2
tSeptemberParce_Reward[3312135][1]["ItemChance"] = 9000
tSeptemberParce_Reward[3312135][1]["RewardItem"] = {}
tSeptemberParce_Reward[3312135][1]["RewardItem"][1] = {}
tSeptemberParce_Reward[3312135][1]["RewardItem"][1]["Id"] = 730005 -- 【库】+5Stone[属性:0]【表格】赤炼石+5（赠）*1
tSeptemberParce_Reward[3312135][1]["RewardItem"][1]["Attr"] = "0 1 3" -- +5Stone(赠)*1
tSeptemberParce_Reward[3312135][1]["RewardEffect"] = {}
tSeptemberParce_Reward[3312135][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSeptemberParce_Reward[3312135][1]["RewardEffect"]["Effect"] = "angelwing"
-- 赤炼石+5（赠）*2 - 10.00%
tSeptemberParce_Reward[3312135][2] = {}
tSeptemberParce_Reward[3312135][2]["RandomItemChanceType"] = 2
tSeptemberParce_Reward[3312135][2]["ItemChance"] = 1000
tSeptemberParce_Reward[3312135][2]["RewardItem"] = {}
tSeptemberParce_Reward[3312135][2]["RewardItem"][1] = {}
tSeptemberParce_Reward[3312135][2]["RewardItem"][1]["Id"] = 730005 -- 【库】+5Stone[属性:0]【表格】赤炼石+5（赠）*2
tSeptemberParce_Reward[3312135][2]["RewardItem"][1]["Attr"] = "0 2 3" -- +5Stone(赠)*2
tSeptemberParce_Reward[3312135][2]["RewardEffect"] = {}
tSeptemberParce_Reward[3312135][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSeptemberParce_Reward[3312135][2]["RewardEffect"]["Effect"] = "angelwing"


-- ===赤炼石月卡C包
-- ===索引: 3312136
tSeptemberParce_Reward[3312136] = {}
tSeptemberParce_Reward[3312136]["ItemChanceSum"] = 10000
tSeptemberParce_Reward[3312136]["LogId"] = 12001140
tSeptemberParce_Reward[3312136]["EmoneyLog"] = "350	22073	0	0	%d	"
-- 赤炼石+6（赠）*1 - 98.00%
tSeptemberParce_Reward[3312136][1] = {}
tSeptemberParce_Reward[3312136][1]["RandomItemChanceType"] = 2
tSeptemberParce_Reward[3312136][1]["ItemChance"] = 9800
tSeptemberParce_Reward[3312136][1]["RewardItem"] = {}
tSeptemberParce_Reward[3312136][1]["RewardItem"][1] = {}
tSeptemberParce_Reward[3312136][1]["RewardItem"][1]["Id"] = 730006 -- 【库】+6Stone[属性:0]【表格】赤炼石+6（赠）*1
tSeptemberParce_Reward[3312136][1]["RewardItem"][1]["Attr"] = "0 1 3" -- +6Stone(赠)*1
tSeptemberParce_Reward[3312136][1]["RewardEffect"] = {}
tSeptemberParce_Reward[3312136][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSeptemberParce_Reward[3312136][1]["RewardEffect"]["Effect"] = "angelwing"
-- 赤炼石+6（赠）*2 - 2.00%
tSeptemberParce_Reward[3312136][2] = {}
tSeptemberParce_Reward[3312136][2]["RandomItemChanceType"] = 2
tSeptemberParce_Reward[3312136][2]["ItemChance"] = 200
tSeptemberParce_Reward[3312136][2]["RewardItem"] = {}
tSeptemberParce_Reward[3312136][2]["RewardItem"][1] = {}
tSeptemberParce_Reward[3312136][2]["RewardItem"][1]["Id"] = 730006 -- 【库】+6Stone[属性:0]【表格】赤炼石+6（赠）*2
tSeptemberParce_Reward[3312136][2]["RewardItem"][1]["Attr"] = "0 2 3" -- +6Stone(赠)*2
tSeptemberParce_Reward[3312136][2]["RewardEffect"] = {}
tSeptemberParce_Reward[3312136][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSeptemberParce_Reward[3312136][2]["RewardEffect"]["Effect"] = "angelwing"


-- ===内功修为值月卡包
-- ===索引:3312137
tSeptemberParce_Reward[3312137] = {}
tSeptemberParce_Reward[3312137]["ItemChanceSum"] = 10000
tSeptemberParce_Reward[3312137]["LogId"] = 12001140
tSeptemberParce_Reward[3312137]["EmoneyLog"] = "350	22074	0	0	%d	"
-- 修为值1W - 95.00%
tSeptemberParce_Reward[3312137][1] = {}
tSeptemberParce_Reward[3312137][1]["RandomItemChanceType"] = 2
tSeptemberParce_Reward[3312137][1]["ItemChance"] = 9500
tSeptemberParce_Reward[3312137][1]["RewardRepairValue"] = {}
tSeptemberParce_Reward[3312137][1]["RewardRepairValue"]["Value"] = 10000 -- 修为值
tSeptemberParce_Reward[3312137][1]["RewardEffect"] = {}
tSeptemberParce_Reward[3312137][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSeptemberParce_Reward[3312137][1]["RewardEffect"]["Effect"] = "angelwing"
-- 修为值2w - 5.00%
tSeptemberParce_Reward[3312137][2] = {}
tSeptemberParce_Reward[3312137][2]["RandomItemChanceType"] = 2
tSeptemberParce_Reward[3312137][2]["ItemChance"] = 500
tSeptemberParce_Reward[3312137][2]["RewardRepairValue"] = {}
tSeptemberParce_Reward[3312137][2]["RewardRepairValue"]["Value"] = 20000 -- 修为值
tSeptemberParce_Reward[3312137][2]["RewardEffect"] = {}
tSeptemberParce_Reward[3312137][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSeptemberParce_Reward[3312137][2]["RewardEffect"]["Effect"] = "angelwing"


-- ===马匹追加月卡包
-- ===索引: 3312138
tSeptemberParce_Reward[3312138] = {}
tSeptemberParce_Reward[3312138]["ItemChanceSum"] = 10000
tSeptemberParce_Reward[3312138]["LogId"] = 12001140
tSeptemberParce_Reward[3312138]["EmoneyLog"] = "350	22075	0	0	%d	"
-- 马匹+6（赠）*1 - 75.00%
tSeptemberParce_Reward[3312138][1] = {}
tSeptemberParce_Reward[3312138][1]["RandomItemChanceType"] = 2
tSeptemberParce_Reward[3312138][1]["ItemChance"] = 7500
tSeptemberParce_Reward[3312138][1]["RewardItem"] = {}
tSeptemberParce_Reward[3312138][1]["RewardItem"][1] = {}
tSeptemberParce_Reward[3312138][1]["RewardItem"][1]["Id"] = 3308868 -- 【库】+6SteedPack(B)[属性:9]【表格】马匹+6（赠）*1
tSeptemberParce_Reward[3312138][1]["RewardItem"][1]["Attr"] = "0 1" -- +6SteedPack(B)*1
tSeptemberParce_Reward[3312138][1]["RewardEffect"] = {}
tSeptemberParce_Reward[3312138][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSeptemberParce_Reward[3312138][1]["RewardEffect"]["Effect"] = "angelwing"
-- 马匹+6（赠）*2 - 25.00%
tSeptemberParce_Reward[3312138][2] = {}
tSeptemberParce_Reward[3312138][2]["RandomItemChanceType"] = 2
tSeptemberParce_Reward[3312138][2]["ItemChance"] = 2500
tSeptemberParce_Reward[3312138][2]["RewardItem"] = {}
tSeptemberParce_Reward[3312138][2]["RewardItem"][1] = {}
tSeptemberParce_Reward[3312138][2]["RewardItem"][1]["Id"] = 3308868 -- 【库】+6SteedPack(B)[属性:9]【表格】马匹+6（赠）*2
tSeptemberParce_Reward[3312138][2]["RewardItem"][1]["Attr"] = "0 2" -- +6SteedPack(B)*2
tSeptemberParce_Reward[3312138][2]["RewardEffect"] = {}
tSeptemberParce_Reward[3312138][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSeptemberParce_Reward[3312138][2]["RewardEffect"]["Effect"] = "angelwing"


-- ===神纹源晶月卡包
-- ===索引:3312139
tSeptemberParce_Reward[3312139] = {}
tSeptemberParce_Reward[3312139]["ItemChanceSum"] = 10000
tSeptemberParce_Reward[3312139]["LogId"] = 12001140
tSeptemberParce_Reward[3312139]["EmoneyLog"] = "350	22076	0	0	%d	"
-- 良品神纹源晶（赠）*1 - 90.00%
tSeptemberParce_Reward[3312139][1] = {}
tSeptemberParce_Reward[3312139][1]["RandomItemChanceType"] = 2
tSeptemberParce_Reward[3312139][1]["ItemChance"] = 9000
tSeptemberParce_Reward[3312139][1]["RewardItem"] = {}
tSeptemberParce_Reward[3312139][1]["RewardItem"][1] = {}
tSeptemberParce_Reward[3312139][1]["RewardItem"][1]["Id"] = 3311820 -- 【库】MysticRuneStone[属性:9]【表格】良品神纹源晶（赠）*1
tSeptemberParce_Reward[3312139][1]["RewardItem"][1]["Attr"] = "0 1 3" -- MysticRuneStone*1
tSeptemberParce_Reward[3312139][1]["RewardEffect"] = {}
tSeptemberParce_Reward[3312139][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSeptemberParce_Reward[3312139][1]["RewardEffect"]["Effect"] = "angelwing"
-- 良品神纹源晶（赠）*2 - 10.00%
tSeptemberParce_Reward[3312139][2] = {}
tSeptemberParce_Reward[3312139][2]["RandomItemChanceType"] = 2
tSeptemberParce_Reward[3312139][2]["ItemChance"] = 1000
tSeptemberParce_Reward[3312139][2]["RewardItem"] = {}
tSeptemberParce_Reward[3312139][2]["RewardItem"][1] = {}
tSeptemberParce_Reward[3312139][2]["RewardItem"][1]["Id"] = 3311820 -- 【库】MysticRuneStone[属性:9]【表格】良品神纹源晶（赠）*2
tSeptemberParce_Reward[3312139][2]["RewardItem"][1]["Attr"] = "0 2 3" -- MysticRuneStone*2
tSeptemberParce_Reward[3312139][2]["RewardEffect"] = {}
tSeptemberParce_Reward[3312139][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSeptemberParce_Reward[3312139][2]["RewardEffect"]["Effect"] = "angelwing"

tSeptemberParce_Reward[23831] = {}
-- ===向npc购买卡包
-- ===索引:23831,3312132
tSeptemberParce_Reward[23831][3312132] = {}
tSeptemberParce_Reward[23831][3312132]["LogId"] = 12001140
tSeptemberParce_Reward[23831][3312132]["EmoneyLog"] = "350	22077	1	1	1	"
tSeptemberParce_Reward[23831][3312132]["RewardItem"] = {}
tSeptemberParce_Reward[23831][3312132]["RewardItem"][1] = {}
tSeptemberParce_Reward[23831][3312132]["RewardItem"][1]["Id"] = 3312132 -- 【库】 3312132 【enzf库里没有该物品】[属性:]【表格】神炼神纹周卡包
tSeptemberParce_Reward[23831][3312132]["RewardItem"][1]["Attr"] = "0 1" --  3312132 【enzf库里没有该物品】*1
tSeptemberParce_Reward[23831][3312132]["RewardEffect"] = {}
tSeptemberParce_Reward[23831][3312132]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSeptemberParce_Reward[23831][3312132]["RewardEffect"]["Effect"] = "angelwing"


-- ===向npc购买卡包
-- ===索引:23831,3312133
tSeptemberParce_Reward[23831][3312133] = {}
tSeptemberParce_Reward[23831][3312133]["LogId"] = 12001140
tSeptemberParce_Reward[23831][3312133]["EmoneyLog"] = "350	22078	1	1	1	"
tSeptemberParce_Reward[23831][3312133]["RewardItem"] = {}
tSeptemberParce_Reward[23831][3312133]["RewardItem"][1] = {}
tSeptemberParce_Reward[23831][3312133]["RewardItem"][1]["Id"] = 3312133 -- 【库】 3312133 【enzf库里没有该物品】[属性:]【表格】自创炼气周卡包
tSeptemberParce_Reward[23831][3312133]["RewardItem"][1]["Attr"] = "0 1" --  3312133 【enzf库里没有该物品】*1
tSeptemberParce_Reward[23831][3312133]["RewardEffect"] = {}
tSeptemberParce_Reward[23831][3312133]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSeptemberParce_Reward[23831][3312133]["RewardEffect"]["Effect"] = "angelwing"


-- ===向npc购买卡包
-- ===索引:23831,3312134
tSeptemberParce_Reward[23831][3312134] = {}
tSeptemberParce_Reward[23831][3312134]["LogId"] = 12001140
tSeptemberParce_Reward[23831][3312134]["EmoneyLog"] = "350	22079	1799	1799	1	"
tSeptemberParce_Reward[23831][3312134]["RewardItem"] = {}
tSeptemberParce_Reward[23831][3312134]["RewardItem"][1] = {}
tSeptemberParce_Reward[23831][3312134]["RewardItem"][1]["Id"] = 3312134 -- 【库】 3312134 【enzf库里没有该物品】[属性:]【表格】+4赤炼石（赠）月卡包
tSeptemberParce_Reward[23831][3312134]["RewardItem"][1]["Attr"] = "0 1" --  3312134 【enzf库里没有该物品】*1
tSeptemberParce_Reward[23831][3312134]["RewardEffect"] = {}
tSeptemberParce_Reward[23831][3312134]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSeptemberParce_Reward[23831][3312134]["RewardEffect"]["Effect"] = "angelwing"


-- ===向npc购买卡包
-- ===索引:23831,3312135
tSeptemberParce_Reward[23831][3312135] = {}
tSeptemberParce_Reward[23831][3312135]["LogId"] = 12001140
tSeptemberParce_Reward[23831][3312135]["EmoneyLog"] = "350	22080	5399	5399	1	"
tSeptemberParce_Reward[23831][3312135]["RewardItem"] = {}
tSeptemberParce_Reward[23831][3312135]["RewardItem"][1] = {}
tSeptemberParce_Reward[23831][3312135]["RewardItem"][1]["Id"] = 3312135 -- 【库】 3312135 【enzf库里没有该物品】[属性:]【表格】+5赤炼石（赠）月卡包
tSeptemberParce_Reward[23831][3312135]["RewardItem"][1]["Attr"] = "0 1" --  3312135 【enzf库里没有该物品】*1
tSeptemberParce_Reward[23831][3312135]["RewardEffect"] = {}
tSeptemberParce_Reward[23831][3312135]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSeptemberParce_Reward[23831][3312135]["RewardEffect"]["Effect"] = "angelwing"


-- ===向npc购买卡包
-- ===索引:23831,3312136
tSeptemberParce_Reward[23831][3312136] = {}
tSeptemberParce_Reward[23831][3312136]["LogId"] = 12001140
tSeptemberParce_Reward[23831][3312136]["EmoneyLog"] = "350	22081	15999	15999	1	"
tSeptemberParce_Reward[23831][3312136]["RewardItem"] = {}
tSeptemberParce_Reward[23831][3312136]["RewardItem"][1] = {}
tSeptemberParce_Reward[23831][3312136]["RewardItem"][1]["Id"] = 3312136 -- 【库】 3312136 【enzf库里没有该物品】[属性:]【表格】+6赤炼石（赠）月卡包
tSeptemberParce_Reward[23831][3312136]["RewardItem"][1]["Attr"] = "0 1" --  3312136 【enzf库里没有该物品】*1
tSeptemberParce_Reward[23831][3312136]["RewardEffect"] = {}
tSeptemberParce_Reward[23831][3312136]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSeptemberParce_Reward[23831][3312136]["RewardEffect"]["Effect"] = "angelwing"


-- ===向npc购买卡包
-- ===索引:23831,3312137
tSeptemberParce_Reward[23831][3312137] = {}
tSeptemberParce_Reward[23831][3312137]["LogId"] = 12001140
tSeptemberParce_Reward[23831][3312137]["EmoneyLog"] = "350	22082	8999	8999	1	"
tSeptemberParce_Reward[23831][3312137]["RewardItem"] = {}
tSeptemberParce_Reward[23831][3312137]["RewardItem"][1] = {}
tSeptemberParce_Reward[23831][3312137]["RewardItem"][1]["Id"] = 3312137 -- 【库】 3312137 【enzf库里没有该物品】[属性:]【表格】1万修为值月卡包
tSeptemberParce_Reward[23831][3312137]["RewardItem"][1]["Attr"] = "0 1" --  3312137 【enzf库里没有该物品】*1
tSeptemberParce_Reward[23831][3312137]["RewardEffect"] = {}
tSeptemberParce_Reward[23831][3312137]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSeptemberParce_Reward[23831][3312137]["RewardEffect"]["Effect"] = "angelwing"


-- ===向npc购买卡包
-- ===索引:23831,3312138
tSeptemberParce_Reward[23831][3312138] = {}
tSeptemberParce_Reward[23831][3312138]["LogId"] = 12001140
tSeptemberParce_Reward[23831][3312138]["EmoneyLog"] = "350	22083	15999	15999	1	"
tSeptemberParce_Reward[23831][3312138]["RewardItem"] = {}
tSeptemberParce_Reward[23831][3312138]["RewardItem"][1] = {}
tSeptemberParce_Reward[23831][3312138]["RewardItem"][1]["Id"] = 3312138 -- 【库】 3312138 【enzf库里没有该物品】[属性:]【表格】+6骏马（赠）月卡包
tSeptemberParce_Reward[23831][3312138]["RewardItem"][1]["Attr"] = "0 1" --  3312138 【enzf库里没有该物品】*1
tSeptemberParce_Reward[23831][3312138]["RewardEffect"] = {}
tSeptemberParce_Reward[23831][3312138]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSeptemberParce_Reward[23831][3312138]["RewardEffect"]["Effect"] = "angelwing"


-- ===向npc购买卡包
-- ===索引:23831,3312139
tSeptemberParce_Reward[23831][3312139] = {}
tSeptemberParce_Reward[23831][3312139]["LogId"] = 12001140
tSeptemberParce_Reward[23831][3312139]["EmoneyLog"] = "350	22084	3699	3699	1	"
tSeptemberParce_Reward[23831][3312139]["RewardItem"] = {}
tSeptemberParce_Reward[23831][3312139]["RewardItem"][1] = {}
tSeptemberParce_Reward[23831][3312139]["RewardItem"][1]["Id"] = 3312139 -- 【库】 3312139 【enzf库里没有该物品】[属性:]【表格】神纹源晶（赠）月卡包
tSeptemberParce_Reward[23831][3312139]["RewardItem"][1]["Attr"] = "0 1" --  3312139 【enzf库里没有该物品】*1
tSeptemberParce_Reward[23831][3312139]["RewardEffect"] = {}
tSeptemberParce_Reward[23831][3312139]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSeptemberParce_Reward[23831][3312139]["RewardEffect"]["Effect"] = "angelwing"

----------------------------------逻辑部分---------------------------------------------
-- 月卡礼包使用
function SeptemberParce_MathPackUse(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
	
	if nItemId >= 3312134 and nItemId <= 3312139 then
		if not Sys_ChkFullTime(tActivityTime["SeptemberParce"]["TimeOut"]) then
			if Item_DelAllItemByType(nItemId) then
				User_TalkChannel2005(tSeptemberParce_Text["SysTalk"]["OutTime"])
				return
			end
			return
		end
	end
	
	-- 判断使用次数
	local nIndex = tSeptemberParce_Stc[nItemId]
	local nEvent = tSeptemberParce_Stc["Event"][nIndex]
	local nData = tSeptemberParce_Stc["Data"][nIndex]
	local nBuyTimes = Get_UserStatisticValue(nEvent, nData)
	
	if nItemId >= 3312134 and nItemId <= 3312139 then
		nEvent = tSeptemberParce_Stc["EventType"][nIndex]
		nData = tSeptemberParce_Stc["DataType"][nIndex]
		nBuyTimes = Get_UserStatisticValue(nEvent, nData)
	end
	
	-- 使用超过30次删除
	if nBuyTimes > 30 then
		local nItemNum = Get_CountItemType(nItemId, 0)
		if Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tSeptemberParce_Text["SysTalk"]["OverRewardMonth"])
			Sys_SaveActionRewardLog(string.format(tSeptemberParce_Data["Log"]["OutTimeLog"], nItemId, nItemNum))
		end
		return
	end
	-- 判断时间是否超过1天
	if Task_ChkStcValue(nEvent, nData, ">", 1) then
		if not Task_StcInterval(nEvent, nData, 1, 4) then
			User_TalkChannel2005(tSeptemberParce_Text["SysTalk"]["DayReward"])
			return
		end
	end
	
	if nItemId >= 3312134 and nItemId <= 3312139 then
		-- 判断背包空间
		if not RewardTemplate_ChkRandomSpace(tSeptemberParce_Reward, nItemId) then
			User_TalkChannel2005(tSeptemberParce_Text["SysTalk"]["NoSpace"])
			return
		end
	else
		-- 判断背包空间
		if not RewardTemplate_CheckSpace(tSeptemberParce_Reward[nItemId]) then
			User_TalkChannel2005(tSeptemberParce_Text["SysTalk"]["NoSpace"])
			return
		end
	end
	
	Task_AddStatistic(nEvent, nData, 1, 1)
	Task_SetStcTimestamp(nEvent, nData, 0)
	if nItemId >= 3312134 and nItemId <= 3312139 then
		local tReward = CommonFunc_Copy(tSeptemberParce_Reward)
		tReward[nItemId]["EmoneyLog"] = string.format(tReward[nItemId]["EmoneyLog"],nBuyTimes)
		RewardTemplate_NewRandom(tReward, nItemId)
		Sys_SaveEmoneyBuy(tReward[nItemId]["EmoneyLog"])
	else
		RewardTemplate_UseItemAndMsg(tSeptemberParce_Reward[nItemId])
	end
	-- 使用后是否超过30次
	local nBuyTimesAfter = Get_UserStatisticValue(nEvent, nData)
	if nBuyTimesAfter > 30 then
		local nItemNum = Get_CountItemType(nItemId, 0)
		if Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tSeptemberParce_Text["SysTalk"]["OverDel"])
			Sys_SaveActionRewardLog(string.format(tSeptemberParce_Data["Log"]["OutTimeLog"], nItemId, nItemNum))
		end
		return
	end
end

-- 初秋特惠周卡礼盒使用
function SeptemberParce_WeekPackUse(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
	-- 判断时间
	if not Sys_ChkFullTime(tSeptemberParce_Data["ActivityTime"]) then
		local nItemNum = Get_CountItemType(nItemId, 0)
		if Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tSeptemberParce_Text["SysTalk"]["OutTime"])
			Sys_SaveActionRewardLog(string.format(tSeptemberParce_Data["Log"]["OutTimeLog"], nItemId, nItemNum))
		end
		return
	end
	-- 判断背包空间
	if not RewardTemplate_CheckSpace(tSeptemberParce_Reward[3310570]) then
		return
	end
	RewardTemplate_UseItemAndMsg(tSeptemberParce_Reward[3310570])
end

-- 周卡礼包活动时间确认
function SeptemberParce_PackageTimeChk(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
	-- 判断时间
	local nItemNum = Get_CountItemType(nItemId, 0)
	if not Sys_ChkFullTime(tActivityTime["SeptemberParce"]["TimeOut"]) then
		if Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tSeptemberParce_Text["SysTalk"]["OutTime"])
			Sys_SaveActionRewardLog(string.format(tSeptemberParce_Data["Log"]["OutTimeLog"], nItemId, nItemNum))
		end
		return
	end
	-- 判断使用次数
	local nIndex = tSeptemberParce_Stc[nItemId]
	local nTimesEvent = tSeptemberParce_Stc["Event"][nIndex]
	local nTimesData = tSeptemberParce_Stc["Data"][nIndex]
	local nBuyTimes = Get_UserStatisticValue(nTimesEvent, nTimesData) + 1
	
	if nItemId == 3312132 or nItemId == 3312133 then
		nTimesEvent = tSeptemberParce_Stc["EventType"][nIndex]
		nTimesData = tSeptemberParce_Stc["DataType"][nIndex]
		nBuyTimes = Get_UserStatisticValue(nTimesEvent, nTimesData)
	end
	
	if nBuyTimes > 7 then
		if Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tSeptemberParce_Text["SysTalk"]["OverReward"])
			Sys_SaveActionRewardLog(string.format(tSeptemberParce_Data["Log"]["OutTimeLog"], nItemId, nItemNum))
		end
		return
	elseif nBuyTimes == 7 then
		LinkItemGossipFunc_New(nItemId, "1-2")
	else
		LinkItemGossipFunc_New(nItemId, "1-1")
	end
end

-- 周卡礼包使用二次判断
function SeptemberParce_PackageTwiceChk(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
	local nItemNum = Get_CountItemType(nItemId, 0)
	-- 判断时间
	if not Sys_ChkFullTime(tSeptemberParce_Data["ActivityTime"]) then
		if Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tSeptemberParce_Text["SysTalk"]["OutTime"])
			Sys_SaveActionRewardLog(string.format(tSeptemberParce_Data["Log"]["OutTimeLog"], nItemId, nItemNum))
		end
		return
	end
	-- 判断使用次数
	local nIndex = tSeptemberParce_Stc[nItemId]
	local nTimesEvent = tSeptemberParce_Stc["Event"][nIndex]
	local nTimesData = tSeptemberParce_Stc["Data"][nIndex]
	local nBuyTimes = Get_UserStatisticValue(nTimesEvent, nTimesData) + 1
	if nBuyTimes < 7 then
		-- 购买金额赋值
		local nNeedEMoney = tSeptemberParce_Data["NeedEMoney"][nItemId][nBuyTimes]
		tItem[nItemId]["Text211"] = string.format(tSeptemberParce_Text[nItemId]["Text211"], nNeedEMoney)
		LinkItemGossipFunc_New(nItemId, "2-1")
		return
	elseif nBuyTimes == 7 then
		-- 购买金额赋值
		-- local nNeedEMoney = tSeptemberParce_Data["NeedEMoney"][nItemId][nBuyTimes]
		-- tItem[nItemId]["Text221"] = string.format(tSeptemberParce_Text[nItemId]["Text221"], nNeedEMoney)
		LinkItemGossipFunc_New(nItemId, "2-2")
		return
	else
		if Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tSeptemberParce_Text["SysTalk"]["OverReward"])
			Sys_SaveActionRewardLog(string.format(tSeptemberParce_Data["Log"]["OutTimeLog"], nItemId, nItemNum))
		end
		return
	end
end

-- 周卡礼包花费天石开启
function SeptemberParce_PackageBuyItem(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
	local nItemNum = Get_CountItemType(nItemId, 0)
	-- 判断时间
	if not Sys_ChkFullTime(tSeptemberParce_Data["ActivityTime"]) then
		if Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tSeptemberParce_Text["SysTalk"]["OutTime"])
			Sys_SaveActionRewardLog(string.format(tSeptemberParce_Data["Log"]["OutTimeLog"], nItemId, nItemNum))
		end
		return
	end
	-- 判断使用次数
	local nIndex = tSeptemberParce_Stc[nItemId]
	local nTimesEvent = tSeptemberParce_Stc["Event"][nIndex]
	local nTimesData = tSeptemberParce_Stc["Data"][nIndex]
	-- 判断时间是否超过1天
	if not Task_StcInterval(nTimesEvent, nTimesData, 1, 4) then
		User_TalkChannel2005(tSeptemberParce_Text["SysTalk"]["DayReward"])
		return
	end
	local nBuyTimes = Get_UserStatisticValue(nTimesEvent, nTimesData) + 1
	-- 购买金额
	if nBuyTimes <= 7 then
		-- 购买金额赋值
		local nNeedEMoney = tSeptemberParce_Data["NeedEMoney"][nItemId][nBuyTimes]
		-- 判断天石
		local nUserEmoney = Get_UserEMoney()
		if nUserEmoney < nNeedEMoney then
			User_TalkChannel2005(tSeptemberParce_Text["SysTalk"]["NotEnoughEmoney"])
			return
		end
		
		-- 判断奖励表
		local tReward
		if nBuyTimes < 7 then
			tReward = CommonFunc_Copy(tSeptemberParce_Reward[nItemId][1])
			-- tReward["EmoneyLog"] = string.format(tSeptemberParce_Reward[nItemId][1]["EmoneyLog"], nNeedEMoney, nNeedEMoney)
			tReward["EmoneyLog"] = tSeptemberParce_EmoneyLog[nItemId][nBuyTimes]
			tReward["LogStep"] = string.format(tSeptemberParce_Reward[nItemId][1]["LogStep"], nBuyTimes)
		elseif nBuyTimes == 7 then
			tReward = CommonFunc_Copy(tSeptemberParce_Reward[nItemId][7])
		end
		-- 判断背包空间
		if not RewardTemplate_CheckSpace(tReward) then
			return
		end
		-- 扣除天石
		if User_AddEMoney(-nNeedEMoney) then
			Task_AddStatistic(nTimesEvent, nTimesData, 1, 1)
			Task_SetStcTimestamp(nTimesEvent, nTimesData, 0)
			RewardTemplate_UseItemAndMsg(tReward)
		end
		return
	else
		-- 超过开启次数
		if Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tSeptemberParce_Text["SysTalk"]["OverReward"])
			Sys_SaveActionRewardLog(string.format(tSeptemberParce_Data["Log"]["OutTimeLog"], nItemId, nItemNum))
		end
		return
	end
end

-- 月卡礼包活动时间确认
function SeptemberParce_MonthPackageTimeChk(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
	-- 判断时间
	local nItemNum = Get_CountItemType(nItemId, 0)
	if not Sys_ChkFullTime(tSeptemberParce_Data["ActivityTime"]) then
		if Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tSeptemberParce_Text["SysTalk"]["OutTime"])
			Sys_SaveActionRewardLog(string.format(tSeptemberParce_Data["Log"]["OutTimeLog"], nItemId, nItemNum))
		end
		return
	end
	-- 判断玩家购买的礼包数量
	local nBuyNum = 0
	for i = 4, 9 do
		local nEvent = tSeptemberParce_Stc["Event"][i]
		local nData = tSeptemberParce_Stc["Data"][i]
		if Task_ChkStcValue(nEvent, nData, ">", 0) then
			nBuyNum = nBuyNum + 1
		end
	end
	-- 已购买完删除礼包
	if nBuyNum >= 6 then
		if Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tSeptemberParce_Text["SysTalk"]["BuyAll"])
			Sys_SaveActionRewardLog(string.format(tSeptemberParce_Data["Log"]["OutTimeLog"], nItemId, nItemNum))
		end
		return
	end
	
	LinkItemGossipFunc_New(nItemId, "1-1")
end

-- 月卡礼包二次确认
function SeptemberParce_MonthPackageChkTwice(nItemId)
	local nMonthItemId = tSeptemberParce_Data["MathPackageId"]
	if not Item_ChkItem(nMonthItemId) then
		return
	end
	-- 判断时间
	local nItemNum = Get_CountItemType(nMonthItemId, 0)
	if not Sys_ChkFullTime(tSeptemberParce_Data["ActivityTime"]) then
		if Item_DelAllItemByType(nMonthItemId) then
			User_TalkChannel2005(tSeptemberParce_Text["SysTalk"]["OutTime"])
			Sys_SaveActionRewardLog(string.format(tSeptemberParce_Data["Log"]["OutTimeLog"], nMonthItemId, nItemNum))
		end
		return
	end
	local nIndex = tSeptemberParce_Stc[nItemId]
	local nEvent = tSeptemberParce_Stc["Event"][nIndex]
	local nData = tSeptemberParce_Stc["Data"][nIndex]
	if Task_ChkStcValue(nEvent, nData, ">", 0) then
		local sStr = string.format(tSeptemberParce_Text["SysTalk"]["BuyYet"], tSeptemberParce_Text[nMonthItemId][nItemId])
		User_TalkChannel2005(sStr)
		return
	end
	
	local nNeedEMoney = tSeptemberParce_Data["NeedEMoney"]["YueKa"][nItemId]
	local sRewardItem = tSeptemberParce_Text[3310574][nItemId]
	tItem[nMonthItemId]["Text211"] = string.format(tSeptemberParce_Text[nMonthItemId]["Text211"], nNeedEMoney, sRewardItem)
	tItem[nMonthItemId]["Option211"] = string.format(tSeptemberParce_Text[nMonthItemId]["Option211"], nNeedEMoney)
	tItem[nMonthItemId]["OptionFunc211"] = "SeptemberParce_MonthPackageBuyItem</N>" .. nItemId
	LinkItemGossipFunc_New(nMonthItemId, "2-1")
end

-- 月卡礼包购买
function SeptemberParce_MonthPackageBuyItem(nItemId)
	local nMonthItemId = tSeptemberParce_Data["MathPackageId"]
	if not Item_ChkItem(nMonthItemId) then
		return
	end
	-- 判断时间
	local nItemNum = Get_CountItemType(nMonthItemId, 0)
	if not Sys_ChkFullTime(tSeptemberParce_Data["ActivityTime"]) then
		if Item_DelAllItemByType(nMonthItemId) then
			User_TalkChannel2005(tSeptemberParce_Text["SysTalk"]["OutTime"])
			Sys_SaveActionRewardLog(string.format(tSeptemberParce_Data["Log"]["OutTimeLog"], nMonthItemId, nItemNum))
		end
		return
	end
	-- 判断是否购买过
	local nIndex = tSeptemberParce_Stc[nItemId]
	local nEvent = tSeptemberParce_Stc["Event"][nIndex]
	local nData = tSeptemberParce_Stc["Data"][nIndex]
	if Task_ChkStcValue(nEvent, nData, ">", 0) then
		local sStr = string.format(tSeptemberParce_Text["SysTalk"]["BuyYet"], tSeptemberParce_Text[nMonthItemId][nItemId])
		User_TalkChannel2005(sStr)
		return
	end
	-- 判断背包空间
	if not RewardTemplate_CheckSpace(tSeptemberParce_Reward[nMonthItemId][nItemId]) then
		return
	end
	-- 价格
	local nNeedEMoney = tSeptemberParce_Data["NeedEMoney"]["YueKa"][nItemId]
	-- 判断天石
	local nUserEmoney = Get_UserEMoney()
	if nUserEmoney < nNeedEMoney then
		local sStr = string.format(tSeptemberParce_Text["SysTalk"]["NotEmoneyBuyMonth"], tSeptemberParce_Text[nMonthItemId][nItemId])
		User_TalkChannel2005(sStr)
		return
	end
	-- 扣除天石
	if User_AddEMoney(-nNeedEMoney) then
		Task_AddStatistic(nEvent, nData, 1, 1)
		-- Task_SetStcTimestamp(nEvent, nData, 0)
		RewardTemplate_UseItemAndMsg(tSeptemberParce_Reward[nMonthItemId][nItemId])
	end
	
	-- 判断玩家购买的礼包数量
	local nBuyNum = 0
	for i = 4, 9 do
		local nEvent = tSeptemberParce_Stc["Event"][i]
		local nData = tSeptemberParce_Stc["Data"][i]
		if Task_ChkStcValue(nEvent, nData, ">", 0) then
			nBuyNum = nBuyNum + 1
		end
	end
	-- 已购买完删除礼包
	if nBuyNum >= 6 then
		if Item_DelAllItemByType(nMonthItemId) then
			User_TalkChannel2005(tSeptemberParce_Text["SysTalk"]["BuyAll"])
			Sys_SaveActionRewardLog(string.format(tSeptemberParce_Data["Log"]["OutTimeLog"], nMonthItemId, nItemNum))
		end
		return
	end
end

-- 上线自检
function SeptemberParce_UserLogin()
	if not Sys_ChkFullTime(tSeptemberParce_Data["ActivityTime"]) then
		return
	end

	-- 玩家丢失月卡包补领
	for i = 4, 9 do
		local nEvent = tSeptemberParce_Stc["Event"][i]
		local nData = tSeptemberParce_Stc["Data"][i]
		-- 判断背包空间
		if not User_CheckLeftSpace(1) then
			break
		end
		-- 判断玩家是否购买过该礼包
		if Task_ChkStcValue(nEvent, nData, ">", 0) then
			-- 判断玩家是否拥有该礼包
			local nNum1 = Get_CountItemType(tSeptemberParce_Data["MonthId"][i], 0)
			local nNum2 = Get_CountItemType(tSeptemberParce_Data["MonthId"][i], 10)
			local nNum3 = Get_CountItemType(tSeptemberParce_Data["MonthId"][i], 40)
			local nNumSum = nNum1 + nNum2 + nNum3
			if nNumSum <= 0 then
				RewardTemplate_UseItemAndMsg(tSeptemberParce_Reward["LoginReward"][i])
			end
		end
	end
end

--2019.03.19复用新增
function SeptemberParce_BuyCardBagFromNpc(nNpcId, nItemId)
	local nIndex = tSeptemberParce_Stc[nItemId]
	local nEvent = tSeptemberParce_Stc["EventType"][nIndex]
	local nData = tSeptemberParce_Stc["DataType"][nIndex]
	
	-- 活动时间外无法购买
	if not Sys_ChkFullTime(tSeptemberParce_Data["ActivityTime"]) then
		return
	end
	
	-- 判断是否购买过
	if Task_ChkStcValue(nEvent, nData, ">=", 1) then
		local sStr = string.format(tSeptemberParce_Text["SysTalk"]["BuyYet"], tSeptemberParce_Text[nNpcId][nItemId])
		Sys_MsgBox(sStr)
		return
	end
	
	local nNeedEMoney = tSeptemberParce_Data["NeedEMoney"]["BuyCardBag"][nItemId]
	local sRewardItem = tSeptemberParce_Text[nNpcId][nItemId]
	
	Sys_DialogFace(nNpcId)
	Sys_DialogText(tSeptemberParce_Text[nNpcId]["Text211"])
	Sys_DialogText(string.format(tSeptemberParce_Text[nNpcId]["Text212"], nNeedEMoney, sRewardItem))
	Sys_DialogOption(string.format(tSeptemberParce_Text[nNpcId]["Option211"], nNeedEMoney), "</F>SeptemberParce_BuyCardBag</N>" .. nNpcId .. "</N>" .. nItemId)
	Sys_DialogOption(tSeptemberParce_Text[nNpcId]["Option212"])
	Sys_DialogEnd()
end

function SeptemberParce_BuyCardBag(nNpcId, nItemId)
	local nIndex = tSeptemberParce_Stc[nItemId]
	local nEvent = tSeptemberParce_Stc["EventType"][nIndex]
	local nData = tSeptemberParce_Stc["DataType"][nIndex]
	
	-- 活动时间外无法购买
	if not Sys_ChkFullTime(tSeptemberParce_Data["ActivityTime"]) then
		return
	end
	
	-- 判断是否购买过
	if Task_ChkStcValue(nEvent, nData, ">=", 1) then
		local sStr = string.format(tSeptemberParce_Text["SysTalk"]["BuyYet"], tSeptemberParce_Text[nNpcId][nItemId])
		Sys_MsgBox(sStr)
		return
	end
	-- 判断背包空间
	if not RewardTemplate_CheckSpace(tSeptemberParce_Reward[nNpcId][nItemId]) then
		return
	end
	
	local nNeedEMoney = tSeptemberParce_Data["NeedEMoney"]["BuyCardBag"][nItemId]
	local sRewardItem = tSeptemberParce_Text[nNpcId][nItemId]
	-- 判断天石
	if nNeedEMoney > Get_UserEMoney() then
		local sStr = string.format(tSeptemberParce_Text["SysTalk"]["NotEmoneyBuyMonth"], sRewardItem)
		Sys_MsgBox(sStr)
		return
	end
	
	-- 扣除天石
	if User_AddEMoney(-nNeedEMoney) then
		Task_AddStatistic(nEvent, nData, 1, 1)
		RewardTemplate_UseItemAndMsg(tSeptemberParce_Reward[nNpcId][nItemId])
	end
end

function SeptemberParce_Judge(nItemId)
	local nIndex = tSeptemberParce_Stc[nItemId]
	local nEvent = tSeptemberParce_Stc["EventType"][nIndex]
	local nData = tSeptemberParce_Stc["DataType"][nIndex]
	local nTimes = Get_UserStatisticValue(nEvent, nData) 
	
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["SeptemberParce"]["TimeOut"]) then
		if Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tSeptemberParce_Text["SysTalk"]["OutTime"])
			return false
		end
		return false
	end
	
	-- 判断物品是否存在
	if not Item_ChkItem(nItemId) then
		return false
	end
	
	-- 打开过7次就删除
	if Task_ChkStcValue(nEvent, nData, ">=", 8) then
		if Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tSeptemberParce_Text["TimesEnongh"])
		end
		return false
	end
	
	-- 判断今天是否打开过
	if Task_ChkStcValue(nEvent, nData, ">=", 2) then
		if not Task_StcInterval(nEvent, nData, 1, 4) then -- 没超过1天
			User_TalkChannel2005(tSeptemberParce_Text[nItemId]["Option212"])
			return false
		end
	end
	
	return true
end

function SeptemberParce_NeedMoneyToOpen(nItemId, nNum)
	if not SeptemberParce_Judge(nItemId) then
		return
	end
	
	local nIndex = tSeptemberParce_Stc[nItemId]
	local nEvent = tSeptemberParce_Stc["EventType"][nIndex]
	local nData = tSeptemberParce_Stc["DataType"][nIndex]
	local nTimes = Get_UserStatisticValue(nEvent, nData) 
	local nFlag = 1
	
	if Task_ChkStcValue(nEvent, nData, ">=", 7) then
		nFlag = 8
	end
	
	local nNeedEMoney = tSeptemberParce_Data["NeedEMoney"][nItemId][nTimes] -- 需要花费的天石数
	
	local sOption = string.format(tSeptemberParce_Text[nItemId]["Option" .. nNum.. "11"], nNeedEMoney)
	Sys_DialogItemFace(nItemId)
	Sys_DialogText(tSeptemberParce_Text[nItemId]["Text" .. nNum.. "11"])
	Sys_DialogText(tSeptemberParce_Text[nItemId]["Text" .. nNum.. "12"])
	Sys_DialogText(tSeptemberParce_Text[nItemId]["Text" .. nNum.. "13"])
	Sys_DialogText(tSeptemberParce_Text[nItemId]["Text" .. nNum.. "14"])
	Sys_DialogOption(sOption, "</F>SeptemberParce_TurnToCofirm</N>" .. nItemId .. "</N>" .. nFlag .. "</N>" .. (nNum-1))
	Sys_DialogEnd()
end

function SeptemberParce_TurnToCofirm(nItemId, nFlag, nNum)
	if not SeptemberParce_Judge(nItemId) then
		return
	end
	
	local nIndex = tSeptemberParce_Stc[nItemId]
	local nEvent = tSeptemberParce_Stc["EventType"][nIndex]
	local nData = tSeptemberParce_Stc["DataType"][nIndex]
	local nTimes = Get_UserStatisticValue(nEvent, nData) -- 购买次数
	
	-- 判断背包空间
	if not RewardTemplate_CheckSpace(tSeptemberParce_Reward[nItemId][nFlag][nNum]) then
		return
	end
	
	local nNeedEMoney = tSeptemberParce_Data["NeedEMoney"][nItemId][nTimes]
	
	-- 判断天石
	if nNeedEMoney > Get_UserEMoney() then
		User_TalkChannel2005(tSeptemberParce_Text["SysTalk"]["NotEnoughEmoney"])
		return
	end
	if nTimes >= 8 then
		LinkItemGossipFunc_New(nItemId, "4-2")
	end
	local sOption = string.format(tSeptemberParce_Text[nItemId]["Option411"], nNeedEMoney)
	Sys_DialogItemFace(nItemId)
	Sys_DialogText(string.format(tSeptemberParce_Text[nItemId]["Text411"], nNeedEMoney))
	Sys_DialogOption(sOption, "</F>SeptemberParce_OpenWeekBag</N>" .. nItemId .. "</N>" .. nFlag .. "</N>" .. nNum)
	Sys_DialogEnd()
end
-- 弹出二次确认对白
function SeptemberParce_OpenWeekBag(nItemId, nFlag, nNum)
	if not SeptemberParce_Judge(nItemId) then
		return
	end
	local nIndex = tSeptemberParce_Stc[nItemId]
	local nEvent = tSeptemberParce_Stc["EventType"][nIndex]
	local nData = tSeptemberParce_Stc["DataType"][nIndex]
	local nTimes = Get_UserStatisticValue(nEvent, nData) -- 购买次数
	
	-- 判断背包空间
	if not RewardTemplate_CheckSpace(tSeptemberParce_Reward[nItemId][nFlag][nNum]) then
		return
	end

	local nNeedEMoney = tSeptemberParce_Data["NeedEMoney"][nItemId][nTimes]
	-- 判断天石
	if nNeedEMoney > Get_UserEMoney() then
		User_TalkChannel2005(tSeptemberParce_Text["SysTalk"]["NotEnoughEmoney"])
		return
	end
	
	-- 扣除天石
	if User_AddEMoney(-nNeedEMoney) then
		if RewardTemplate_UseItemAndMsg(tSeptemberParce_Reward[nItemId][nFlag][nNum]) then
			Task_AddStatistic(nEvent, nData, 1, 1) -- 打掩码
			Task_SetStcTimestamp(nEvent, nData, 0)
			Sys_SaveEmoneyBuy(tSeptemberParce_EmoneyLog[nItemId][nTimes])
		end
	end
end

---------------------------------物品部分---------------------------------------------
-- 初秋特惠周卡礼盒使用
tItem[3310570] = tItem[3310570] or {}
tItem[3310570]["Function"] = function(nItemId,sItemName)
	SeptemberParce_WeekPackUse(nItemId)
end

-- +4赤炼石（赠）月卡包
tItem[3310575] = tItem[3310575] or {}
tItem[3310575]["Function"] = function(nItemId,sItemName)
	SeptemberParce_MathPackUse(nItemId)
end
-- +5赤炼石（赠）月卡包
tItem[3310576] = tItem[3310575]
-- +6赤炼石（赠）月卡包
tItem[3310577] = tItem[3310575]
-- 1万修为值月卡包
tItem[3310578] = tItem[3310575]
-- +4骏马（赠）月卡包
tItem[3310579] = tItem[3310575]
-- 优质玄元宝石（赠）月卡包
tItem[3310580] = tItem[3310575]



-- 神品精炼周卡包
tItemFace[3310571] = 1748
tItem[3310571] = tItem[3310571] or {}
tItem[3310571]["Function"] = function(nItemId,sItemName)
	SeptemberParce_PackageTimeChk(nItemId)
end
-- 前六次开启
tItem[3310571]["Text1-1"] = {111, 112, 113, 114, 115, 116, 117}
tItem[3310571]["Text111"] = tSeptemberParce_Text[3310571]["Text111"]
tItem[3310571]["Text112"] = tSeptemberParce_Text[3310571]["Text112"]
tItem[3310571]["Text113"] = tSeptemberParce_Text[3310571]["Text113"]
tItem[3310571]["Text114"] = tSeptemberParce_Text[3310571]["Text114"]
tItem[3310571]["Text115"] = tSeptemberParce_Text[3310571]["Text115"]
tItem[3310571]["Text116"] = tSeptemberParce_Text[3310571]["Text116"]
tItem[3310571]["Text117"] = tSeptemberParce_Text[3310571]["Text117"]
tItem[3310571]["ChkFunc1-1"] = function()
	local nIndex = tSeptemberParce_Stc[3310571]
	local nTimesEvent = tSeptemberParce_Stc["Event"][nIndex]
	local nTimesData = tSeptemberParce_Stc["Data"][nIndex]
	local nBuyTimes = Get_UserStatisticValue(nTimesEvent, nTimesData) + 1
	if nBuyTimes < 7 then
		-- 购买次数赋值
		tItem[3310571]["Text113"] = string.format(tSeptemberParce_Text[3310571]["Text113"], nBuyTimes)
		-- 购买金额赋值
		local nNeedEMoney = tSeptemberParce_Data["NeedEMoney"][3310571][nBuyTimes]
		tItem[3310571]["Text114"] = string.format(tSeptemberParce_Text[3310571]["Text114"], nNeedEMoney)
		-- 下次购买金额赋值
		local nNextNeedEMoney = tSeptemberParce_Data["NeedEMoney"][3310571][nBuyTimes + 1]
		tItem[3310571]["Text117"] = string.format(tSeptemberParce_Text[3310571]["Text117"], nNextNeedEMoney)
		return true
	end
	return false
end
tItem[3310571]["tOption1-1"] = {111, 112}
tItem[3310571]["Option111"] = tSeptemberParce_Text[3310571]["Option111"]
tItem[3310571]["OptionFunc111"] = "SeptemberParce_PackageTwiceChk</N>3310571"
tItem[3310571]["OptionChkFunc111"] = function ()
	local nIndex = tSeptemberParce_Stc[3310571]
	local nTimesEvent = tSeptemberParce_Stc["Event"][nIndex]
	local nTimesData = tSeptemberParce_Stc["Data"][nIndex]
	local nBuyTimes = Get_UserStatisticValue(nTimesEvent, nTimesData) + 1
	local nNeedEMoney = tSeptemberParce_Data["NeedEMoney"][3310571][nBuyTimes]
	tItem[3310571]["Option111"] = string.format(tSeptemberParce_Text[3310571]["Option111"], nNeedEMoney)
	if Task_StcInterval(nTimesEvent, nTimesData, 1, 4) then
		return true
	end
	return false
end
tItem[3310571]["Option112"] = tSeptemberParce_Text[3310571]["Option112"]
tItem[3310571]["OptionChkFunc112"] = function ()
	local nIndex = tSeptemberParce_Stc[3310571]
	local nTimesEvent = tSeptemberParce_Stc["Event"][nIndex]
	local nTimesData = tSeptemberParce_Stc["Data"][nIndex]
	if Task_StcInterval(nTimesEvent, nTimesData, 1, 4) then
		return false
	end
	return true
end
-- 第七次开启
tItem[3310571]["Text1-2"] = {121, 122, 123, 124, 125, 126, 127}
tItem[3310571]["Text121"] = tSeptemberParce_Text[3310571]["Text121"]
tItem[3310571]["Text122"] = tSeptemberParce_Text[3310571]["Text122"]
tItem[3310571]["Text123"] = tSeptemberParce_Text[3310571]["Text123"]
tItem[3310571]["Text124"] = tSeptemberParce_Text[3310571]["Text124"]
tItem[3310571]["Text125"] = tSeptemberParce_Text[3310571]["Text125"]
tItem[3310571]["Text126"] = tSeptemberParce_Text[3310571]["Text126"]
tItem[3310571]["Text127"] = tSeptemberParce_Text[3310571]["Text127"]
tItem[3310571]["ChkFunc1-2"] = function()
	local nIndex = tSeptemberParce_Stc[3310571]
	local nTimesEvent = tSeptemberParce_Stc["Event"][nIndex]
	local nTimesData = tSeptemberParce_Stc["Data"][nIndex]
	local nBuyTimes = Get_UserStatisticValue(nTimesEvent, nTimesData) + 1
	if nBuyTimes < 7 then
		return false
	end
	return true
end
tItem[3310571]["tOption1-2"] = {121, 122}
tItem[3310571]["Option121"] = tSeptemberParce_Text[3310571]["Option121"]
tItem[3310571]["OptionFunc121"] = "SeptemberParce_PackageTwiceChk</N>3310571"
tItem[3310571]["OptionChkFunc121"] = function ()
	local nIndex = tSeptemberParce_Stc[3310571]
	local nTimesEvent = tSeptemberParce_Stc["Event"][nIndex]
	local nTimesData = tSeptemberParce_Stc["Data"][nIndex]
	if Task_StcInterval(nTimesEvent, nTimesData, 1, 4) then
		return true
	end
	return false
end
tItem[3310571]["Option122"] = tSeptemberParce_Text[3310571]["Option122"]
tItem[3310571]["OptionChkFunc122"] = function ()
	local nIndex = tSeptemberParce_Stc[3310571]
	local nTimesEvent = tSeptemberParce_Stc["Event"][nIndex]
	local nTimesData = tSeptemberParce_Stc["Data"][nIndex]
	if Task_StcInterval(nTimesEvent, nTimesData, 1, 4) then
		return false
	end
	return true
end
-- 前六次开启【成功，二次确认】
tItem[3310571]["Text2-1"] = {211}
tItem[3310571]["Text211"] = tSeptemberParce_Text[3310571]["Text211"]
tItem[3310571]["ChkFunc2-1"] = function()
	local nIndex = tSeptemberParce_Stc[3310571]
	local nTimesEvent = tSeptemberParce_Stc["Event"][nIndex]
	local nTimesData = tSeptemberParce_Stc["Data"][nIndex]
	local nBuyTimes = Get_UserStatisticValue(nTimesEvent, nTimesData) + 1
	local nNeedEMoney = tSeptemberParce_Data["NeedEMoney"][3310571][nBuyTimes]
	tItem[3310571]["Option211"] = string.format(tSeptemberParce_Text[3310571]["Option211"], nNeedEMoney)
	return true
end
tItem[3310571]["tOption2-1"] = {211, 212}
tItem[3310571]["Option211"] = tSeptemberParce_Text[3310571]["Option211"]
tItem[3310571]["OptionFunc211"] = "SeptemberParce_PackageBuyItem</N>3310571"
tItem[3310571]["OptionChkFunc211"] = function ()
	local nIndex = tSeptemberParce_Stc[3310571]
	local nTimesEvent = tSeptemberParce_Stc["Event"][nIndex]
	local nTimesData = tSeptemberParce_Stc["Data"][nIndex]
	local nBuyTimes = Get_UserStatisticValue(nTimesEvent, nTimesData) + 1
	local nNeedEMoney = tSeptemberParce_Data["NeedEMoney"][3310571][nBuyTimes]
	tItem[3310571]["Option211"] = string.format(tSeptemberParce_Text[3310571]["Option211"], nNeedEMoney)
	return true
end
tItem[3310571]["Option212"] = tSeptemberParce_Text[3310571]["Option212"]
-- 第七次开启【成功，二次确认】
tItem[3310571]["Text2-2"] = {221}
tItem[3310571]["Text221"] = tSeptemberParce_Text[3310571]["Text221"]
tItem[3310571]["tOption2-2"] = {221, 222}
tItem[3310571]["Option221"] = tSeptemberParce_Text[3310571]["Option221"]
tItem[3310571]["OptionFunc221"] = "SeptemberParce_PackageBuyItem</N>3310571"
tItem[3310571]["Option222"] = tSeptemberParce_Text[3310571]["Option222"]

-- 神纹精粹周卡包
tItemFace[3310572] = 1293
tItem[3310572] = tItem[3310572] or {}
tItem[3310572]["Function"] = function(nItemId,sItemName)
	SeptemberParce_PackageTimeChk(nItemId)
end
-- 前六次开启
tItem[3310572]["Text1-1"] = {111, 112, 113, 114, 115, 116, 117}
tItem[3310572]["Text111"] = tSeptemberParce_Text[3310572]["Text111"]
tItem[3310572]["Text112"] = tSeptemberParce_Text[3310572]["Text112"]
tItem[3310572]["Text113"] = tSeptemberParce_Text[3310572]["Text113"]
tItem[3310572]["Text114"] = tSeptemberParce_Text[3310572]["Text114"]
tItem[3310572]["Text115"] = tSeptemberParce_Text[3310572]["Text115"]
tItem[3310572]["Text116"] = tSeptemberParce_Text[3310572]["Text116"]
tItem[3310572]["Text117"] = tSeptemberParce_Text[3310572]["Text117"]
tItem[3310572]["ChkFunc1-1"] = function()
	local nIndex = tSeptemberParce_Stc[3310572]
	local nTimesEvent = tSeptemberParce_Stc["Event"][nIndex]
	local nTimesData = tSeptemberParce_Stc["Data"][nIndex]
	local nBuyTimes = Get_UserStatisticValue(nTimesEvent, nTimesData) + 1
	if nBuyTimes < 7 then
		-- 购买次数赋值
		tItem[3310572]["Text113"] = string.format(tSeptemberParce_Text[3310572]["Text113"], nBuyTimes)
		-- 购买金额赋值
		local nNeedEMoney = tSeptemberParce_Data["NeedEMoney"][3310572][nBuyTimes]
		tItem[3310572]["Text114"] = string.format(tSeptemberParce_Text[3310572]["Text114"], nNeedEMoney)
		-- 下次购买金额赋值
		local nNextNeedEMoney = tSeptemberParce_Data["NeedEMoney"][3310572][nBuyTimes + 1]
		tItem[3310572]["Text117"] = string.format(tSeptemberParce_Text[3310572]["Text117"], nNextNeedEMoney)
		return true
	end
	return false
end
tItem[3310572]["tOption1-1"] = {111, 112}
tItem[3310572]["Option111"] = tSeptemberParce_Text[3310572]["Option111"]
tItem[3310572]["OptionFunc111"] = "SeptemberParce_PackageTwiceChk</N>3310572"
tItem[3310572]["OptionChkFunc111"] = function ()
	local nIndex = tSeptemberParce_Stc[3310572]
	local nTimesEvent = tSeptemberParce_Stc["Event"][nIndex]
	local nTimesData = tSeptemberParce_Stc["Data"][nIndex]
	local nBuyTimes = Get_UserStatisticValue(nTimesEvent, nTimesData) + 1
	local nNeedEMoney = tSeptemberParce_Data["NeedEMoney"][3310572][nBuyTimes]
	tItem[3310572]["Option111"] = string.format(tSeptemberParce_Text[3310572]["Option111"], nNeedEMoney)
	if Task_StcInterval(nTimesEvent, nTimesData, 1, 4) then
		return true
	end
	return false
end
tItem[3310572]["Option112"] = tSeptemberParce_Text[3310572]["Option112"]
tItem[3310572]["OptionChkFunc112"] = function ()
	local nIndex = tSeptemberParce_Stc[3310572]
	local nTimesEvent = tSeptemberParce_Stc["Event"][nIndex]
	local nTimesData = tSeptemberParce_Stc["Data"][nIndex]
	if Task_StcInterval(nTimesEvent, nTimesData, 1, 4) then
		return false
	end
	return true
end
-- 第七次开启
tItem[3310572]["Text1-2"] = {121, 122, 123, 124, 125, 126, 127}
tItem[3310572]["Text121"] = tSeptemberParce_Text[3310572]["Text121"]
tItem[3310572]["Text122"] = tSeptemberParce_Text[3310572]["Text122"]
tItem[3310572]["Text123"] = tSeptemberParce_Text[3310572]["Text123"]
tItem[3310572]["Text124"] = tSeptemberParce_Text[3310572]["Text124"]
tItem[3310572]["Text125"] = tSeptemberParce_Text[3310572]["Text125"]
tItem[3310572]["Text126"] = tSeptemberParce_Text[3310572]["Text126"]
tItem[3310572]["Text127"] = tSeptemberParce_Text[3310572]["Text127"]
tItem[3310572]["ChkFunc1-2"] = function()
	local nIndex = tSeptemberParce_Stc[3310572]
	local nTimesEvent = tSeptemberParce_Stc["Event"][nIndex]
	local nTimesData = tSeptemberParce_Stc["Data"][nIndex]
	local nBuyTimes = Get_UserStatisticValue(nTimesEvent, nTimesData) + 1
	if nBuyTimes < 7 then
		return false
	end
	return true
end
tItem[3310572]["tOption1-2"] = {121, 122}
tItem[3310572]["Option121"] = tSeptemberParce_Text[3310572]["Option121"]
tItem[3310572]["OptionFunc121"] = "SeptemberParce_PackageTwiceChk</N>3310572"
tItem[3310572]["OptionChkFunc121"] = function ()
	local nIndex = tSeptemberParce_Stc[3310572]
	local nTimesEvent = tSeptemberParce_Stc["Event"][nIndex]
	local nTimesData = tSeptemberParce_Stc["Data"][nIndex]
	if Task_StcInterval(nTimesEvent, nTimesData, 1, 4) then
		return true
	end
	return false
end
tItem[3310572]["Option122"] = tSeptemberParce_Text[3310572]["Option122"]
tItem[3310572]["OptionChkFunc122"] = function ()
	local nIndex = tSeptemberParce_Stc[3310572]
	local nTimesEvent = tSeptemberParce_Stc["Event"][nIndex]
	local nTimesData = tSeptemberParce_Stc["Data"][nIndex]
	if Task_StcInterval(nTimesEvent, nTimesData, 1, 4) then
		return false
	end
	return true
end
-- 前六次开启【成功，二次确认】
tItem[3310572]["Text2-1"] = {211}
tItem[3310572]["Text211"] = tSeptemberParce_Text[3310572]["Text211"]
tItem[3310572]["ChkFunc2-1"] = function()
	local nIndex = tSeptemberParce_Stc[3310572]
	local nTimesEvent = tSeptemberParce_Stc["Event"][nIndex]
	local nTimesData = tSeptemberParce_Stc["Data"][nIndex]
	local nBuyTimes = Get_UserStatisticValue(nTimesEvent, nTimesData) + 1
	local nNeedEMoney = tSeptemberParce_Data["NeedEMoney"][3310572][nBuyTimes]
	tItem[3310572]["Option211"] = string.format(tSeptemberParce_Text[3310572]["Option211"], nNeedEMoney)
	return true
end
tItem[3310572]["tOption2-1"] = {211, 212}
tItem[3310572]["Option211"] = tSeptemberParce_Text[3310572]["Option211"]
tItem[3310572]["OptionFunc211"] = "SeptemberParce_PackageBuyItem</N>3310572"
tItem[3310572]["OptionChkFunc211"] = function ()
	local nIndex = tSeptemberParce_Stc[3310572]
	local nTimesEvent = tSeptemberParce_Stc["Event"][nIndex]
	local nTimesData = tSeptemberParce_Stc["Data"][nIndex]
	local nBuyTimes = Get_UserStatisticValue(nTimesEvent, nTimesData) + 1
	local nNeedEMoney = tSeptemberParce_Data["NeedEMoney"][3310572][nBuyTimes]
	tItem[3310572]["Option211"] = string.format(tSeptemberParce_Text[3310572]["Option211"], nNeedEMoney)
	return true
end
tItem[3310572]["Option212"] = tSeptemberParce_Text[3310572]["Option212"]
-- 第七次开启【成功，二次确认】
tItem[3310572]["Text2-2"] = {221}
tItem[3310572]["Text221"] = tSeptemberParce_Text[3310572]["Text221"]
tItem[3310572]["tOption2-2"] = {221, 222}
tItem[3310572]["Option221"] = tSeptemberParce_Text[3310572]["Option221"]
tItem[3310572]["OptionFunc221"] = "SeptemberParce_PackageBuyItem</N>3310572"
tItem[3310572]["Option222"] = tSeptemberParce_Text[3310572]["Option222"]

-- 神纹精粹周卡包
tItemFace[3310573] = 1292
tItem[3310573] = tItem[3310573] or {}
tItem[3310573]["Function"] = function(nItemId,sItemName)
	SeptemberParce_PackageTimeChk(nItemId)
end
-- 前六次开启
tItem[3310573]["Text1-1"] = {111, 112, 113, 114, 115, 116, 117}
tItem[3310573]["Text111"] = tSeptemberParce_Text[3310573]["Text111"]
tItem[3310573]["Text112"] = tSeptemberParce_Text[3310573]["Text112"]
tItem[3310573]["Text113"] = tSeptemberParce_Text[3310573]["Text113"]
tItem[3310573]["Text114"] = tSeptemberParce_Text[3310573]["Text114"]
tItem[3310573]["Text115"] = tSeptemberParce_Text[3310573]["Text115"]
tItem[3310573]["Text116"] = tSeptemberParce_Text[3310573]["Text116"]
tItem[3310573]["Text117"] = tSeptemberParce_Text[3310573]["Text117"]
tItem[3310573]["ChkFunc1-1"] = function()
	local nIndex = tSeptemberParce_Stc[3310573]
	local nTimesEvent = tSeptemberParce_Stc["Event"][nIndex]
	local nTimesData = tSeptemberParce_Stc["Data"][nIndex]
	local nBuyTimes = Get_UserStatisticValue(nTimesEvent, nTimesData) + 1
	if nBuyTimes < 7 then
		-- 购买次数赋值
		tItem[3310573]["Text113"] = string.format(tSeptemberParce_Text[3310573]["Text113"], nBuyTimes)
		-- 购买金额赋值
		local nNeedEMoney = tSeptemberParce_Data["NeedEMoney"][3310573][nBuyTimes]
		tItem[3310573]["Text114"] = string.format(tSeptemberParce_Text[3310573]["Text114"], nNeedEMoney)
		-- 下次购买金额赋值
		local nNextNeedEMoney = tSeptemberParce_Data["NeedEMoney"][3310573][nBuyTimes + 1]
		tItem[3310573]["Text117"] = string.format(tSeptemberParce_Text[3310573]["Text117"], nNextNeedEMoney)
		return true
	end
	return false
end
tItem[3310573]["tOption1-1"] = {111, 112}
tItem[3310573]["Option111"] = tSeptemberParce_Text[3310573]["Option111"]
tItem[3310573]["OptionFunc111"] = "SeptemberParce_PackageTwiceChk</N>3310573"
tItem[3310573]["OptionChkFunc111"] = function ()
	local nIndex = tSeptemberParce_Stc[3310573]
	local nTimesEvent = tSeptemberParce_Stc["Event"][nIndex]
	local nTimesData = tSeptemberParce_Stc["Data"][nIndex]
	local nBuyTimes = Get_UserStatisticValue(nTimesEvent, nTimesData) + 1
	local nNeedEMoney = tSeptemberParce_Data["NeedEMoney"][3310573][nBuyTimes]
	tItem[3310573]["Option111"] = string.format(tSeptemberParce_Text[3310573]["Option111"], nNeedEMoney)
	if Task_StcInterval(nTimesEvent, nTimesData, 1, 4) then
		return true
	end
	return false
end
tItem[3310573]["Option112"] = tSeptemberParce_Text[3310573]["Option112"]
tItem[3310573]["OptionChkFunc112"] = function ()
	local nIndex = tSeptemberParce_Stc[3310573]
	local nTimesEvent = tSeptemberParce_Stc["Event"][nIndex]
	local nTimesData = tSeptemberParce_Stc["Data"][nIndex]
	if Task_StcInterval(nTimesEvent, nTimesData, 1, 4) then
		return false
	end
	return true
end
-- 第七次开启
tItem[3310573]["Text1-2"] = {121, 122, 123, 124, 125, 126, 127}
tItem[3310573]["Text121"] = tSeptemberParce_Text[3310573]["Text121"]
tItem[3310573]["Text122"] = tSeptemberParce_Text[3310573]["Text122"]
tItem[3310573]["Text123"] = tSeptemberParce_Text[3310573]["Text123"]
tItem[3310573]["Text124"] = tSeptemberParce_Text[3310573]["Text124"]
tItem[3310573]["Text125"] = tSeptemberParce_Text[3310573]["Text125"]
tItem[3310573]["Text126"] = tSeptemberParce_Text[3310573]["Text126"]
tItem[3310573]["Text127"] = tSeptemberParce_Text[3310573]["Text127"]
tItem[3310573]["ChkFunc1-2"] = function()
	local nIndex = tSeptemberParce_Stc[3310573]
	local nTimesEvent = tSeptemberParce_Stc["Event"][nIndex]
	local nTimesData = tSeptemberParce_Stc["Data"][nIndex]
	local nBuyTimes = Get_UserStatisticValue(nTimesEvent, nTimesData) + 1
	if nBuyTimes < 7 then
		return false
	end
	return true
end
tItem[3310573]["tOption1-2"] = {121, 122}
tItem[3310573]["Option121"] = tSeptemberParce_Text[3310573]["Option121"]
tItem[3310573]["OptionFunc121"] = "SeptemberParce_PackageTwiceChk</N>3310573"
tItem[3310573]["OptionChkFunc121"] = function ()
	local nIndex = tSeptemberParce_Stc[3310573]
	local nTimesEvent = tSeptemberParce_Stc["Event"][nIndex]
	local nTimesData = tSeptemberParce_Stc["Data"][nIndex]
	if Task_StcInterval(nTimesEvent, nTimesData, 1, 4) then
		return true
	end
	return false
end
tItem[3310573]["Option122"] = tSeptemberParce_Text[3310573]["Option122"]
tItem[3310573]["OptionChkFunc122"] = function ()
	local nIndex = tSeptemberParce_Stc[3310573]
	local nTimesEvent = tSeptemberParce_Stc["Event"][nIndex]
	local nTimesData = tSeptemberParce_Stc["Data"][nIndex]
	if Task_StcInterval(nTimesEvent, nTimesData, 1, 4) then
		return false
	end
	return true
end
-- 前六次开启【成功，二次确认】
tItem[3310573]["Text2-1"] = {211}
tItem[3310573]["Text211"] = tSeptemberParce_Text[3310573]["Text211"]
tItem[3310573]["ChkFunc2-1"] = function()
	local nIndex = tSeptemberParce_Stc[3310573]
	local nTimesEvent = tSeptemberParce_Stc["Event"][nIndex]
	local nTimesData = tSeptemberParce_Stc["Data"][nIndex]
	local nBuyTimes = Get_UserStatisticValue(nTimesEvent, nTimesData) + 1
	local nNeedEMoney = tSeptemberParce_Data["NeedEMoney"][3310573][nBuyTimes]
	tItem[3310573]["Option211"] = string.format(tSeptemberParce_Text[3310573]["Option211"], nNeedEMoney)
	return true
end
tItem[3310573]["tOption2-1"] = {211, 212}
tItem[3310573]["Option211"] = tSeptemberParce_Text[3310573]["Option211"]
tItem[3310573]["OptionFunc211"] = "SeptemberParce_PackageBuyItem</N>3310573"
tItem[3310573]["OptionChkFunc211"] = function ()
	local nIndex = tSeptemberParce_Stc[3310573]
	local nTimesEvent = tSeptemberParce_Stc["Event"][nIndex]
	local nTimesData = tSeptemberParce_Stc["Data"][nIndex]
	local nBuyTimes = Get_UserStatisticValue(nTimesEvent, nTimesData) + 1
	local nNeedEMoney = tSeptemberParce_Data["NeedEMoney"][3310573][nBuyTimes]
	tItem[3310573]["Option211"] = string.format(tSeptemberParce_Text[3310573]["Option211"], nNeedEMoney)
	return true
end
tItem[3310573]["Option212"] = tSeptemberParce_Text[3310573]["Option212"]
-- 第七次开启【成功，二次确认】
tItem[3310573]["Text2-2"] = {221}
tItem[3310573]["Text221"] = tSeptemberParce_Text[3310573]["Text221"]
tItem[3310573]["tOption2-2"] = {221, 222}
tItem[3310573]["Option221"] = tSeptemberParce_Text[3310573]["Option221"]
tItem[3310573]["OptionFunc221"] = "SeptemberParce_PackageBuyItem</N>3310573"
tItem[3310573]["Option222"] = tSeptemberParce_Text[3310573]["Option222"]

-- 初秋特惠月卡礼盒
tItemFace[3310574] = 1039
tItem[3310574] = tItem[3310574] or {}
tItem[3310574]["Function"] = function(nItemId,sItemName)
	SeptemberParce_MonthPackageTimeChk(nItemId)
end
-- 前六次开启
tItem[3310574]["Text1-1"] = {111, 112, 113, 114, 115, 116, 117, 118, 119, 1110, 1111}
tItem[3310574]["Text111"]  = tSeptemberParce_Text[3310574]["Text111"]
tItem[3310574]["Text112"]  = tSeptemberParce_Text[3310574]["Text112"]
tItem[3310574]["Text113"]  = tSeptemberParce_Text[3310574]["Text113"]
tItem[3310574]["Text114"]  = tSeptemberParce_Text[3310574]["Text114"]
tItem[3310574]["Text115"]  = tSeptemberParce_Text[3310574]["Text115"]
tItem[3310574]["Text116"]  = tSeptemberParce_Text[3310574]["Text116"]
tItem[3310574]["Text117"]  = tSeptemberParce_Text[3310574]["Text117"]
tItem[3310574]["Text118"]  = tSeptemberParce_Text[3310574]["Text118"]
tItem[3310574]["Text119"]  = tSeptemberParce_Text[3310574]["Text119"]
tItem[3310574]["Text1110"] = tSeptemberParce_Text[3310574]["Text1110"]
tItem[3310574]["Text1111"] = tSeptemberParce_Text[3310574]["Text1111"]
tItem[3310574]["tOption1-1"] = {111, 112, 113, 114, 115, 116, 117}
-- +4赤炼石（赠）月卡包
tItem[3310574]["Option111"] = tSeptemberParce_Text[3310574]["Option111"]
tItem[3310574]["OptionFunc111"] = "SeptemberParce_MonthPackageChkTwice</N>3310575"
tItem[3310574]["OptionChkFunc111"] = function ()
	local nTimesEvent = tSeptemberParce_Stc["Event"][4]
	local nTimesData = tSeptemberParce_Stc["Data"][4]
	if Task_ChkStcValue(nTimesEvent, nTimesData, ">", 0) then
		return false
	end
	return true
end
-- +5赤炼石（赠）月卡包
tItem[3310574]["Option112"] = tSeptemberParce_Text[3310574]["Option112"]
tItem[3310574]["OptionFunc112"] = "SeptemberParce_MonthPackageChkTwice</N>3310576"
tItem[3310574]["OptionChkFunc112"] = function ()
	local nTimesEvent = tSeptemberParce_Stc["Event"][5]
	local nTimesData = tSeptemberParce_Stc["Data"][5]
	if Task_ChkStcValue(nTimesEvent, nTimesData, ">", 0) then
		return false
	end
	return true
end
-- +6赤炼石（赠）月卡包
tItem[3310574]["Option113"] = tSeptemberParce_Text[3310574]["Option113"]
tItem[3310574]["OptionFunc113"] = "SeptemberParce_MonthPackageChkTwice</N>3310577"
tItem[3310574]["OptionChkFunc113"] = function ()
	local nTimesEvent = tSeptemberParce_Stc["Event"][6]
	local nTimesData = tSeptemberParce_Stc["Data"][6]
	if Task_ChkStcValue(nTimesEvent, nTimesData, ">", 0) then
		return false
	end
	return true
end
-- 1万修为值月卡包
tItem[3310574]["Option114"] = tSeptemberParce_Text[3310574]["Option114"]
tItem[3310574]["OptionFunc114"] = "SeptemberParce_MonthPackageChkTwice</N>3310578"
tItem[3310574]["OptionChkFunc114"] = function ()
	local nTimesEvent = tSeptemberParce_Stc["Event"][7]
	local nTimesData = tSeptemberParce_Stc["Data"][7]
	if Task_ChkStcValue(nTimesEvent, nTimesData, ">", 0) then
		return false
	end
	return true
end
-- +4骏马（赠）月卡包
tItem[3310574]["Option115"] = tSeptemberParce_Text[3310574]["Option115"]
tItem[3310574]["OptionFunc115"] = "SeptemberParce_MonthPackageChkTwice</N>3310579"
tItem[3310574]["OptionChkFunc115"] = function ()
	local nTimesEvent = tSeptemberParce_Stc["Event"][8]
	local nTimesData = tSeptemberParce_Stc["Data"][8]
	if Task_ChkStcValue(nTimesEvent, nTimesData, ">", 0) then
		return false
	end
	return true
end
-- 优质玄元宝石（赠）月卡包
tItem[3310574]["Option116"] = tSeptemberParce_Text[3310574]["Option116"]
tItem[3310574]["OptionFunc116"] = "SeptemberParce_MonthPackageChkTwice</N>3310580"
tItem[3310574]["OptionChkFunc116"] = function ()
	local nTimesEvent = tSeptemberParce_Stc["Event"][9]
	local nTimesData = tSeptemberParce_Stc["Data"][9]
	if Task_ChkStcValue(nTimesEvent, nTimesData, ">", 0) then
		return false
	end
	return true
end
tItem[3310574]["Option117"] = tSeptemberParce_Text[3310574]["Option117"]
-- 【成功，二次确认】
tItem[3310574]["Text2-1"] = {211}
tItem[3310574]["Text211"] = tSeptemberParce_Text[3310574]["Text211"]
tItem[3310574]["tOption2-1"] = {211, 212}
tItem[3310574]["Option211"] = tSeptemberParce_Text[3310574]["Option211"]
tItem[3310574]["Option212"] = tSeptemberParce_Text[3310574]["Option212"]


-- 2019.03.19复用新增

-- npc部分
tNpcFace[6289] = 237
tNpcGossip[23831] = tNpcGossip[23831] or DefaultNpc:new{}
tNpcGossip[23831]["OptionHidden"] = 1
tNpcGossip[23831]["DialogueText"] = tSeptemberParce_Text[23831]
-- 活动时间前
tNpcGossip[23831]["Text1-1"] = {111,112,113,114}
tNpcGossip[23831]["ChkFunc1-1"] = function()
	return CommonFunc_GetBeforeActivityTime(tSeptemberParce_Data["ActivityTime"])
end
tNpcGossip[23831]["tOption1-1"] = {111}

-- 活动时间后
tNpcGossip[23831]["Text1-2"] = {121,122}
tNpcGossip[23831]["ChkFunc1-2"] = function()
	return CommonFunc_GetAfterActivityTime(tSeptemberParce_Data["ActivityTime"])
end
tNpcGossip[23831]["tOption1-2"] = {121}

-- 活动时间内等级不足
tNpcGossip[23831]["Text1-3"] = {131,132,133,134}
tNpcGossip[23831]["ChkFunc1-3"] = function()
	return not User_JudgeLevelAndMetempsychosis(tSeptemberParce_Data["Level"],tSeptemberParce_Data["Metempsychosis"])
end
tNpcGossip[23831]["tOption1-3"] = {131}

-- 活动时间内等级达到
tNpcGossip[23831]["Text1-4"] = {141,142,143,144,145,146,147,148,149,1410,1411}
tNpcGossip[23831]["ChkFunc1-4"] = function()
	if not Sys_ChkFullTime(tSeptemberParce_Data["ActivityTime"]) then
		return false
	end
	
	if not User_JudgeLevelAndMetempsychosis(tSeptemberParce_Data["Level"],tSeptemberParce_Data["Metempsychosis"]) then
		return false
	end
	
	return true
end
tNpcGossip[23831]["tOption1-4"] = {141,142,143,144,145,146,147,148,150}
-- 购买 神炼神纹周卡包（1天石）
tNpcGossip[23831]["OptionFunc141"] = "SeptemberParce_BuyCardBagFromNpc</N>23831</N>3312132"
tNpcGossip[23831]["OptionChkFunc141"] = function()
	local nEvent = tSeptemberParce_Stc["EventType"][1]
	local nData = tSeptemberParce_Stc["DataType"][1]
	
	if Task_ChkStcValue(nEvent, nData, ">=", 1) then
		return false
	end
	
	return true
end
-- 购买 自创炼气熔炼周卡包（1天石）
tNpcGossip[23831]["OptionFunc142"] = "SeptemberParce_BuyCardBagFromNpc</N>23831</N>3312133"
tNpcGossip[23831]["OptionChkFunc142"] = function()
	local nEvent = tSeptemberParce_Stc["EventType"][2]
	local nData = tSeptemberParce_Stc["DataType"][2]
	
	if Task_ChkStcValue(nEvent, nData, ">=", 1) then
		return false
	end
	
	return true
end
-- 购买 +4赤炼石（赠）月卡包（1799天石）
tNpcGossip[23831]["OptionFunc143"] = "SeptemberParce_BuyCardBagFromNpc</N>23831</N>3312134"
tNpcGossip[23831]["OptionChkFunc143"] = function()
	local nEvent = tSeptemberParce_Stc["EventType"][3]
	local nData = tSeptemberParce_Stc["DataType"][3]
	
	if Task_ChkStcValue(nEvent, nData, ">=", 1) then
		return false
	end
	
	return true
end
-- 购买 +5赤炼石（赠）月卡包（5399天石）
tNpcGossip[23831]["OptionFunc144"] = "SeptemberParce_BuyCardBagFromNpc</N>23831</N>3312135"
tNpcGossip[23831]["OptionChkFunc144"] = function()
	local nEvent = tSeptemberParce_Stc["EventType"][4]
	local nData = tSeptemberParce_Stc["DataType"][4]
	
	if Task_ChkStcValue(nEvent, nData, ">=", 1) then
		return false
	end
	
	return true
end
-- 购买 +6赤炼石（赠）月卡包（15999天石）
tNpcGossip[23831]["OptionFunc145"] = "SeptemberParce_BuyCardBagFromNpc</N>23831</N>3312136"
tNpcGossip[23831]["OptionChkFunc145"] = function()
	local nEvent = tSeptemberParce_Stc["EventType"][5]
	local nData = tSeptemberParce_Stc["DataType"][5]
	
	if Task_ChkStcValue(nEvent, nData, ">=", 1) then
		return false
	end
	
	return true
end
-- 购买 1万修为值月卡包（8999天石）
tNpcGossip[23831]["OptionFunc146"] = "SeptemberParce_BuyCardBagFromNpc</N>23831</N>3312137"
tNpcGossip[23831]["OptionChkFunc146"] = function()
	local nEvent = tSeptemberParce_Stc["EventType"][6]
	local nData = tSeptemberParce_Stc["DataType"][6]
	
	if Task_ChkStcValue(nEvent, nData, ">=", 1) then
		return false
	end
	
	return true
end
-- 购买 +6骏马（赠）月卡包（15999天石）
tNpcGossip[23831]["OptionFunc147"] = "SeptemberParce_BuyCardBagFromNpc</N>23831</N>3312138"
tNpcGossip[23831]["OptionChkFunc147"] = function()
	local nEvent = tSeptemberParce_Stc["EventType"][7]
	local nData = tSeptemberParce_Stc["DataType"][7]
	
	if Task_ChkStcValue(nEvent, nData, ">=", 1) then
		return false
	end
	
	return true
end
-- 购买 神纹源晶（赠）月卡包（3699天石）
tNpcGossip[23831]["OptionFunc148"] = "SeptemberParce_BuyCardBagFromNpc</N>23831</N>3312139"
tNpcGossip[23831]["OptionChkFunc148"] = function()
	local nEvent = tSeptemberParce_Stc["EventType"][8]
	local nData = tSeptemberParce_Stc["DataType"][8]
	
	if Task_ChkStcValue(nEvent, nData, ">=", 1) then
		return false
	end
	
	return true
end
-- 阁下已购买所有礼包
tNpcGossip[23831]["OptionChkFunc150"] = function()
	local tEvent = {}
	local tData = {}
	for i = 1, 8 do
		tEvent[i] = tSeptemberParce_Stc["EventType"][i]
		tData[i] = tSeptemberParce_Stc["DataType"][i]
		if Task_ChkStcValue(tEvent[i], tData[i], ">=", 1) then
			return true
		end
		return false
	end
	return false
end

-- 物品部分
tItemFace[3312140] = 1592
tItemFace[3312132] = 1748
tItem[3312132] = tItem[3312132] or {}
tItem[3312132]["OptionHidden"] = 1
tItem[3312132]["DialogueText"] = tSeptemberParce_Text[3312132]
tItem[3312132]["Function"] = function(nItemId,sItemName)
	SeptemberParce_PackageTimeChk(nItemId)
end
-- 前六次开启
tItem[3312132]["Text1-1"] = {111, 112, 113, 114, 115, 116, 117, 118}
tItem[3312132]["ChkFunc1-1"] = function()
	local nIndex = tSeptemberParce_Stc[3312132]
	local nEventType = tSeptemberParce_Stc["EventType"][nIndex]
	local nDataType = tSeptemberParce_Stc["DataType"][nIndex]
	local nData = Get_UserStatisticValue(nEventType, nDataType)
	
	-- 第6次购买的data值为7
	if Task_ChkStcValue(nEventType, nDataType, "<", 7) then
		-- 购买次数赋值
		tItem[3312132]["Text113"] = string.format(tSeptemberParce_Text[3312132]["Text113"], nData)
		-- 购买金额赋值
		local nNeedEMoney = tSeptemberParce_Data["NeedEMoney"][3312132][nData]
		tItem[3312132]["Text114"] = string.format(tSeptemberParce_Text[3312132]["Text114"], nNeedEMoney)
		-- 下次购买金额赋值
		local nNextNeedEMoney = tSeptemberParce_Data["NeedEMoney"][3312132][nData + 1]
		tItem[3312132]["Text116"] = string.format(tSeptemberParce_Text[3312132]["Text116"], nNextNeedEMoney)
		return true
	end
	return false
end
-- 选择神品精炼
tItem[3312132]["tOption1-1"] = {111, 112, 113}
tItem[3312132]["OptionFunc111"] = "SeptemberParce_NeedMoneyToOpen</N>3312132</N>2"
tItem[3312132]["OptionChkFunc111"] = function ()
	local nIndex = tSeptemberParce_Stc[3312132]
	local nEventType = tSeptemberParce_Stc["EventType"][nIndex]
	local nDataType = tSeptemberParce_Stc["DataType"][nIndex]
	
	-- 判断是否超过1天
	if Task_ChkStcValue(nEventType, nDataType, ">=", 2) then
		if Task_StcInterval(nEventType, nDataType, 1, 4) then -- 超过1天
			return true
		end
		return false
	end
	return true
end
-- 选择神纹精粹
tItem[3312132]["OptionFunc112"] = "SeptemberParce_NeedMoneyToOpen</N>3312132</N>3"
tItem[3312132]["OptionChkFunc112"] = function ()
	local nIndex = tSeptemberParce_Stc[3312132]
	local nEventType = tSeptemberParce_Stc["EventType"][nIndex]
	local nDataType = tSeptemberParce_Stc["DataType"][nIndex]
	
	-- 判断是否超过1天
	if Task_ChkStcValue(nEventType, nDataType, ">=", 2) then
		if Task_StcInterval(nEventType, nDataType, 1, 4) then -- 超过1天
			return true
		end
		return false
	end
	
	return true
end
-- 你已经购买过
tItem[3312132]["OptionChkFunc113"] = function ()
	local nIndex = tSeptemberParce_Stc[3312132]
	local nEventType = tSeptemberParce_Stc["EventType"][nIndex]
	local nDataType = tSeptemberParce_Stc["DataType"][nIndex]
	
	-- 判断是否超过1天
	if Task_ChkStcValue(nEventType, nDataType, ">=", 2) then
		if Task_StcInterval(nEventType, nDataType, 1, 4) then -- 超过1天
			return false
		end
		return true
	end
	
	return false
end
-- 第七次开启
tItem[3312132]["Text1-2"] = {121, 122, 123, 124, 125, 126, 127, 128}
tItem[3312132]["ChkFunc1-2"] = function()
	local nIndex = tSeptemberParce_Stc[3312132]
	local nEventType = tSeptemberParce_Stc["EventType"][nIndex]
	local nDataType = tSeptemberParce_Stc["DataType"][nIndex]
	local nData = Get_UserStatisticValue(nEventType, nDataType)
	if nData >= 7 then
		return true
	end
	return false
end
-- 选择神品精炼
tItem[3312132]["tOption1-2"] = {121, 122, 123}
tItem[3312132]["OptionFunc121"] = "SeptemberParce_NeedMoneyToOpen</N>3312132</N>2"
tItem[3312132]["OptionChkFunc121"] = function ()
	local nIndex = tSeptemberParce_Stc[3312132]
	local nEventType = tSeptemberParce_Stc["EventType"][nIndex]
	local nDataType = tSeptemberParce_Stc["DataType"][nIndex]
	
	-- 判断是否超过1天
	if Task_ChkStcValue(nEventType, nDataType, ">=", 2) then
		if  Task_StcInterval(nEventType, nDataType, 1, 4) then -- 超过1天
			return true
		end
		return false
	end
	return true
end
-- 选择神纹精粹
tItem[3312132]["OptionFunc122"] = "SeptemberParce_NeedMoneyToOpen</N>3312132</N>3"
tItem[3312132]["OptionChkFunc122"] = function ()
	local nIndex = tSeptemberParce_Stc[3312132]
	local nEventType = tSeptemberParce_Stc["EventType"][nIndex]
	local nDataType = tSeptemberParce_Stc["DataType"][nIndex]
	
	-- 判断是否超过1天
	if Task_ChkStcValue(nEventType, nDataType, ">=", 2) then
		if Task_StcInterval(nEventType, nDataType, 1, 4) then  -- 超过1天
			return true
		end
		return  false
	end
	return true
end
-- 你已经购买过
tItem[3312132]["OptionChkFunc123"] = function ()
	local nIndex = tSeptemberParce_Stc[3312132]
	local nEventType = tSeptemberParce_Stc["EventType"][nIndex]
	local nDataType = tSeptemberParce_Stc["DataType"][nIndex]
	
	-- 判断是否超过1天
	if Task_ChkStcValue(nEventType, nDataType, ">=", 2) then
		if Task_StcInterval(nEventType, nDataType, 1, 4) then -- 超过1天
			return false
		end
		return true
	end
	
	return false
end
-- 第七次开启【成功，二次确认】
tItem[3312132]["Text4-2"] = {421}
tItem[3312132]["tOption4-2"] = {421, 422}
tItem[3312132]["OptionFunc123"] = "SeptemberParce_OpenWeekBag</N>3312132</N>1</N>1"


-- 自创炼气周卡包
tItemFace[3312133] = 1293
tItem[3312133] = tItem[3312133] or {}
tItem[3312133]["OptionHidden"] = 1
tItem[3312133]["DialogueText"] = tSeptemberParce_Text[3312133]
tItem[3312133]["Function"] = function(nItemId,sItemName)
	SeptemberParce_PackageTimeChk(nItemId)
end
-- 前六次开启
tItem[3312133]["Text1-1"] = {111, 112, 113, 114, 115, 116, 117}
tItem[3312133]["ChkFunc1-1"] = function()
	local nIndex = tSeptemberParce_Stc[3312133]
	local nEventType = tSeptemberParce_Stc["EventType"][nIndex]
	local nDataType = tSeptemberParce_Stc["DataType"][nIndex]
	local nData = Get_UserStatisticValue(nEventType, nDataType)
	
	-- 第6次购买的data值为7
	if Task_ChkStcValue(nEventType, nDataType, "<", 7) then
		-- 购买次数赋值
		tItem[3312133]["Text113"] = string.format(tSeptemberParce_Text[3312133]["Text113"], nData)
		-- 购买金额赋值
		local nNeedEMoney = tSeptemberParce_Data["NeedEMoney"][3312133][nData]
		tItem[3312133]["Text114"] = string.format(tSeptemberParce_Text[3312133]["Text114"], nNeedEMoney)
		-- 下次购买金额赋值
		local nNextNeedEMoney = tSeptemberParce_Data["NeedEMoney"][3312133][nData + 1]
		tItem[3312133]["Text117"] = string.format(tSeptemberParce_Text[3312133]["Text117"], nNextNeedEMoney)
		return true
	end
	return false
end
tItem[3312133]["tOption1-1"] = {111, 112}
tItem[3312133]["OptionFunc111"] = "SeptemberParce_TurnToCofirm</N>3312133</N>1</N>1"
tItem[3312133]["OptionChkFunc111"] = function ()
	local nIndex = tSeptemberParce_Stc[3312133]
	local nEventType = tSeptemberParce_Stc["EventType"][nIndex]
	local nDataType = tSeptemberParce_Stc["DataType"][nIndex]
	local nData = Get_UserStatisticValue(nEventType, nDataType)
	
	-- 判断是否超过1天
	if Task_ChkStcValue(nEventType, nDataType, ">=", 2) then
		if Task_StcInterval(nEventType, nDataType, 1, 4) then -- 超过1天
			local nNeedEMoney = tSeptemberParce_Data["NeedEMoney"][3312133][nData]
			tItem[3312133]["Option111"] = string.format(tSeptemberParce_Text[3312133]["Option111"], nNeedEMoney)
			return true
		end
		return false
	end
	
	local nNeedEMoney = tSeptemberParce_Data["NeedEMoney"][3312133][nData]
	tItem[3312133]["Option111"] = string.format(tSeptemberParce_Text[3312133]["Option111"], nNeedEMoney)
	
	return true
end
-- 你已经购买过
tItem[3312133]["OptionChkFunc112"] = function ()
	local nIndex = tSeptemberParce_Stc[3312133]
	local nEventType = tSeptemberParce_Stc["EventType"][nIndex]
	local nDataType = tSeptemberParce_Stc["DataType"][nIndex]
	
	-- 判断是否超过1天
	if Task_ChkStcValue(nEventType, nDataType, ">=", 2) then
		if Task_StcInterval(nEventType, nDataType, 1, 4) then -- 超过1天
			return false
		end
		return true
	end
	
	return false
end
-- 第七次开启
tItem[3312133]["Text1-2"] = {121, 122, 123, 124, 125, 126, 127, 128}
tItem[3312133]["ChkFunc1-2"] = function()
	local nIndex = tSeptemberParce_Stc[3312133]
	local nEventType = tSeptemberParce_Stc["EventType"][nIndex]
	local nDataType = tSeptemberParce_Stc["DataType"][nIndex]
	local nData = Get_UserStatisticValue(nEventType, nDataType)
	if nData >= 7 then
		return true
	end
	return false
end
tItem[3312133]["tOption1-2"] = {121, 122}
tItem[3312133]["OptionFunc121"] = "SeptemberParce_TurnToCofirm</N>3312133</N>8</N>1"
tItem[3312133]["OptionChkFunc121"] = function ()
	local nIndex = tSeptemberParce_Stc[3312133]
	local nEventType = tSeptemberParce_Stc["EventType"][nIndex]
	local nDataType = tSeptemberParce_Stc["DataType"][nIndex]
	
	-- 判断是否超过1天
	if Task_ChkStcValue(nEventType, nDataType, ">=", 2) then
		if  Task_StcInterval(nEventType, nDataType, 1, 4) then -- 超过1天
			return true
		end
		return false
	end
	return true
end
-- 你已经购买过
tItem[3312133]["OptionChkFunc122"] = function ()
	local nIndex = tSeptemberParce_Stc[3312133]
	local nEventType = tSeptemberParce_Stc["EventType"][nIndex]
	local nDataType = tSeptemberParce_Stc["DataType"][nIndex]
	
	-- 判断是否超过1天
	if Task_ChkStcValue(nEventType, nDataType, ">=", 2) then
		if Task_StcInterval(nEventType, nDataType, 1, 4) then -- 超过1天
			return false
		end
		return true
	end
	
	return false
end
-- 第七次开启【二次确认】
tItem[3312133]["Text4-2"] = {421}
tItem[3312133]["tOption4-2"] = {421, 422}
tItem[3312133]["OptionFunc123"] = "SeptemberParce_OpenWeekBag</N>3312133</N>8</N>1"

-- +4赤炼石（赠）月卡包
tItem[3312134] = tItem[3312134] or {}
tItem[3312134]["Function"] = function(nItemId,sItemName)
	SeptemberParce_MathPackUse(nItemId)
end
-- +5赤炼石（赠）月卡包
tItem[3312135] = tItem[3312134]
-- +6赤炼石（赠）月卡包
tItem[3312136] = tItem[3312134]
-- 1万修为值月卡包
tItem[3312137] = tItem[3312134]
-- +6骏马（赠）月卡包
tItem[3312138] = tItem[3312134]
-- 神纹源晶（赠）月卡包
tItem[3312139] = tItem[3312134]

-------------上线触发------------
-- tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
-- table.insert(tSystem_PlayLogin_Func, SeptemberParce_UserLogin)
