-----------------------------------------------------------------------------------
--Name:		[英文征服][活动脚本]7月暑期签到活动制作
--Purpose:	签到活动制作[礼包]
--Creator: 	陈彦宏
--Created:	2017/06/13
-----------------------------------------------------------------------------------
-- 命名前缀
-- SummerSignActivity_
---------------------------------------参数配置----------------------------------------
local tSummerSignActivity_Constant = {}
	-- 活动时间
	tSummerSignActivity_Constant["BeforeActivityTime"] = "2017-01-01 00:00 2017-07-12 23:59"
	tSummerSignActivity_Constant["ActivityTime"] = "2017-07-13 00:00 2017-07-19 23:59"
	tSummerSignActivity_Constant["ClearTime"] = "00:00 00:03"
	
	tSummerSignActivity_Constant["Level"] = 80
	tSummerSignActivity_Constant["Metempsychosis"] = 0
	-- 掩码表
	tSummerSignActivity_Constant["Stc"] = {}
	tSummerSignActivity_Constant["Stc"]["EventType"] = 162
	tSummerSignActivity_Constant["Stc"]["DataType"] = {}
	tSummerSignActivity_Constant["Stc"]["End"] = {}
	-- 补取次数
	tSummerSignActivity_Constant["Stc"]["DataType"][1] = 0
	tSummerSignActivity_Constant["Stc"]["End"][1] = 3
	-- 记录今日是否开启免费礼包
	tSummerSignActivity_Constant["Stc"]["DataType"][2] = 1
	tSummerSignActivity_Constant["Stc"]["End"][2] = 1
	-- 二次确认屏蔽控制[0,2,4,6]
	tSummerSignActivity_Constant["Stc"]["DataType"][3] = 2
	tSummerSignActivity_Constant["Stc"]["End"][3] = {0,2,4,6}
	-- 免费礼包类型记录
	tSummerSignActivity_Constant["Stc"]["DataType"][4] = 3
	tSummerSignActivity_Constant["Stc"]["End"][3] = {1,2,3}
	
	-- 对应掩码判断屏蔽
	tSummerSignActivity_Constant["Control"] = {}
	tSummerSignActivity_Constant["Control"][3303655] = 2
	tSummerSignActivity_Constant["Control"][3303656] = 4
	
	-- 根据转世判断获得免费礼包[并记录进掩码中]
	tSummerSignActivity_Constant["FreeGet"] = {}
	tSummerSignActivity_Constant["FreeGet"][1] = 3303652
	tSummerSignActivity_Constant["FreeGet"][2] = 3303653
	tSummerSignActivity_Constant["FreeGet"][3] = 3303654
	-- 付费部分借用4/5
	tSummerSignActivity_Constant["FreeGet"][4] = 3303655
	tSummerSignActivity_Constant["FreeGet"][5] = 3303656
	
	-- 礼包打开光效
	tSummerSignActivity_Constant["Effect"] = "zf2-e280"
	
	-- 全局变量控制产出
	tSummerSignActivity_Constant["GlobalId"] = 80181
	tSummerSignActivity_Constant["GlobalId1"] = 80183
	
	-- 活动log记录
	tSummerSignActivity_Constant["PastDelLog"] = "0,0,%d,1,12000757,0,0,0"
	tSummerSignActivity_Constant["EmonyLog"] = {}
	tSummerSignActivity_Constant["EmonyLog"][3303652] = "350	20579	0	0	1	"
	tSummerSignActivity_Constant["EmonyLog"][3303653] = "350	20580	0	0	1	"
	tSummerSignActivity_Constant["EmonyLog"][3303654] = "350	20581	0	0	1	"
	tSummerSignActivity_Constant["EmonyLog"][3303655] = "350	20584	0	0	1	"
	tSummerSignActivity_Constant["EmonyLog"][3303656] = "350	20585	0	0	1	"
	
	-- 付费礼包扣天石数
	tSummerSignActivity_Constant["EmonyCost"] = {}
	tSummerSignActivity_Constant["EmonyCost"][3303655] = 199
	tSummerSignActivity_Constant["EmonyCost"][3303656] = 499
	
	
	tSummerSignActivity_Award = {}
	-- 免费礼包
	-- 3303652[free0 固定 随机]
	-- [+1赤炼石赠 经验球赠*2]
	tSummerSignActivity_Award[3303652] = {}
	tSummerSignActivity_Award[3303652]["LogId"] = 12000757
	tSummerSignActivity_Award[3303652]["RewardItem"] = {}
	tSummerSignActivity_Award[3303652]["RewardItem"][1] = {}
	tSummerSignActivity_Award[3303652]["RewardItem"][1]["Id"] = 3001283
	tSummerSignActivity_Award[3303652]["RewardItem"][1]["Attr"] = "0 2 3"
	tSummerSignActivity_Award[3303652]["RewardItem"][2] = {}
	tSummerSignActivity_Award[3303652]["RewardItem"][2]["Id"] = 730001
	tSummerSignActivity_Award[3303652]["RewardItem"][2]["Attr"] = "0 1 3"
	-- random
	tSummerSignActivity_Award[3303652]["ItemNum"] = 1
	tSummerSignActivity_Award[3303652][1] = {}
	tSummerSignActivity_Award[3303652][1]["ItemChanceSum"] = 10000
	-- 经验球赠*3
	tSummerSignActivity_Award[3303652][1][1] = {}
	tSummerSignActivity_Award[3303652][1][1]["RandomItemChanceType"] = 2
	tSummerSignActivity_Award[3303652][1][1]["ItemChance"] = 2000
	tSummerSignActivity_Award[3303652][1][1]["LogId"] = 12000757
	tSummerSignActivity_Award[3303652][1][1]["RewardItem"] = {}
	tSummerSignActivity_Award[3303652][1][1]["RewardItem"][1] = {}
	tSummerSignActivity_Award[3303652][1][1]["RewardItem"][1]["Id"] = 3001283
	tSummerSignActivity_Award[3303652][1][1]["RewardItem"][1]["Attr"] = "0 3 3"
	-- 流星卷赠*1
	tSummerSignActivity_Award[3303652][1][2] = {}
	tSummerSignActivity_Award[3303652][1][2]["RandomItemChanceType"] = 2
	tSummerSignActivity_Award[3303652][1][2]["ItemChance"] = 2000
	tSummerSignActivity_Award[3303652][1][2]["LogId"] = 12000757
	tSummerSignActivity_Award[3303652][1][2]["RewardItem"] = {}
	tSummerSignActivity_Award[3303652][1][2]["RewardItem"][1] = {}
	tSummerSignActivity_Award[3303652][1][2]["RewardItem"][1]["Id"] = 720027
	tSummerSignActivity_Award[3303652][1][2]["RewardItem"][1]["Attr"] = "0 1 3"
	-- 100修行值
	tSummerSignActivity_Award[3303652][1][3] = {}
	tSummerSignActivity_Award[3303652][1][3]["RandomItemChanceType"] = 2
	tSummerSignActivity_Award[3303652][1][3]["ItemChance"] = 2000
	tSummerSignActivity_Award[3303652][1][3]["LogId"] = 12000757
	tSummerSignActivity_Award[3303652][1][3]["RewardCultivation"] = {}
	tSummerSignActivity_Award[3303652][1][3]["RewardCultivation"]["Value"] = 100
	-- 三倍经验药水赠*3[属性11不写赠]
	tSummerSignActivity_Award[3303652][1][4] = {}
	tSummerSignActivity_Award[3303652][1][4]["RandomItemChanceType"] = 2
	tSummerSignActivity_Award[3303652][1][4]["ItemChance"] = 1500
	tSummerSignActivity_Award[3303652][1][4]["LogId"] = 12000757
	tSummerSignActivity_Award[3303652][1][4]["RewardItem"] = {}
	tSummerSignActivity_Award[3303652][1][4]["RewardItem"][1] = {}
	tSummerSignActivity_Award[3303652][1][4]["RewardItem"][1]["Id"] = 728776
	tSummerSignActivity_Award[3303652][1][4]["RewardItem"][1]["Attr"] = "0 3"
	-- +1赤炼石赠*1
	tSummerSignActivity_Award[3303652][1][5] = {}
	tSummerSignActivity_Award[3303652][1][5]["RandomItemChanceType"] = 2
	tSummerSignActivity_Award[3303652][1][5]["ItemChance"] = 1000
	tSummerSignActivity_Award[3303652][1][5]["LogId"] = 12000757
	tSummerSignActivity_Award[3303652][1][5]["RewardItem"] = {}
	tSummerSignActivity_Award[3303652][1][5]["RewardItem"][1] = {}
	tSummerSignActivity_Award[3303652][1][5]["RewardItem"][1]["Id"] = 730001
	tSummerSignActivity_Award[3303652][1][5]["RewardItem"][1]["Attr"] = "0 1 3"
	tSummerSignActivity_Award[3303652][1][5]["GlobalId"] = tSummerSignActivity_Constant["GlobalId"]
	tSummerSignActivity_Award[3303652][1][5]["Pos"] = 1
	tSummerSignActivity_Award[3303652][1][5]["MaxData"] = 1000
	tSummerSignActivity_Award[3303652][1][5]["FullIndex"] = 3
	-- 龙珠赠*1
	tSummerSignActivity_Award[3303652][1][6] = {}
	tSummerSignActivity_Award[3303652][1][6]["RandomItemChanceType"] = 2
	tSummerSignActivity_Award[3303652][1][6]["ItemChance"] = 500
	tSummerSignActivity_Award[3303652][1][6]["LogId"] = 12000757
	tSummerSignActivity_Award[3303652][1][6]["RewardItem"] = {}
	tSummerSignActivity_Award[3303652][1][6]["RewardItem"][1] = {}
	tSummerSignActivity_Award[3303652][1][6]["RewardItem"][1]["Id"] = 1088000
	tSummerSignActivity_Award[3303652][1][6]["RewardItem"][1]["Attr"] = "0 1 3"
	tSummerSignActivity_Award[3303652][1][6]["GlobalId"] = tSummerSignActivity_Constant["GlobalId1"]
	tSummerSignActivity_Award[3303652][1][6]["Pos"] = 1
	tSummerSignActivity_Award[3303652][1][6]["MaxData"] = 50
	tSummerSignActivity_Award[3303652][1][6]["FullIndex"] = 3
	-- 经验保护丹赠*1[属性0]
	tSummerSignActivity_Award[3303652][1][7] = {}
	tSummerSignActivity_Award[3303652][1][7]["RandomItemChanceType"] = 2
	tSummerSignActivity_Award[3303652][1][7]["ItemChance"] = 800
	tSummerSignActivity_Award[3303652][1][7]["LogId"] = 12000757
	tSummerSignActivity_Award[3303652][1][7]["RewardItem"] = {}
	tSummerSignActivity_Award[3303652][1][7]["RewardItem"][1] = {}
	tSummerSignActivity_Award[3303652][1][7]["RewardItem"][1]["Id"] = 3002559
	tSummerSignActivity_Award[3303652][1][7]["RewardItem"][1]["Attr"] = "0 1 3"
	-- 免试金牌赠*1
	tSummerSignActivity_Award[3303652][1][8] = {}
	tSummerSignActivity_Award[3303652][1][8]["RandomItemChanceType"] = 2
	tSummerSignActivity_Award[3303652][1][8]["ItemChance"] = 200
	tSummerSignActivity_Award[3303652][1][8]["LogId"] = 12000757
	tSummerSignActivity_Award[3303652][1][8]["RewardItem"] = {}
	tSummerSignActivity_Award[3303652][1][8]["RewardItem"][1] = {}
	tSummerSignActivity_Award[3303652][1][8]["RewardItem"][1]["Id"] = 723701
	tSummerSignActivity_Award[3303652][1][8]["RewardItem"][1]["Attr"] = "0 1 3"
	tSummerSignActivity_Award[3303652][1][8]["GlobalId"] = tSummerSignActivity_Constant["GlobalId"]
	tSummerSignActivity_Award[3303652][1][8]["Pos"] = 2
	tSummerSignActivity_Award[3303652][1][8]["MaxData"] = 3
	tSummerSignActivity_Award[3303652][1][8]["FullIndex"] = 3

	-- 3303653[free1 固定 随机]
	-- [经验球赠*2 300修行值 暑期拼图碎片-CONQUER*1][碎片由于还没更新出去,测试时需要注释]
	tSummerSignActivity_Award[3303653] = {}
	tSummerSignActivity_Award[3303653]["LogId"] = 12000757
	tSummerSignActivity_Award[3303653]["RewardItem"] = {}
	tSummerSignActivity_Award[3303653]["RewardItem"][1] = {}
	tSummerSignActivity_Award[3303653]["RewardItem"][1]["Id"] = 3001283
	tSummerSignActivity_Award[3303653]["RewardItem"][1]["Attr"] = "0 2 3"
	tSummerSignActivity_Award[3303653]["RewardItem"][2] = {}
	tSummerSignActivity_Award[3303653]["RewardItem"][2]["Id"] = 3303628
	tSummerSignActivity_Award[3303653]["RewardItem"][2]["Attr"] = "0 1"
	tSummerSignActivity_Award[3303653]["RewardCultivation"] = {}
	tSummerSignActivity_Award[3303653]["RewardCultivation"]["Value"] = 300
	-- random
	tSummerSignActivity_Award[3303653]["ItemNum"] = 1
	tSummerSignActivity_Award[3303653][1] = {}
	tSummerSignActivity_Award[3303653][1]["ItemChanceSum"] = 10000
	-- 流星卷赠*1
	tSummerSignActivity_Award[3303653][1][1] = {}
	tSummerSignActivity_Award[3303653][1][1]["RandomItemChanceType"] = 2
	tSummerSignActivity_Award[3303653][1][1]["ItemChance"] = 2400
	tSummerSignActivity_Award[3303653][1][1]["LogId"] = 12000757
	tSummerSignActivity_Award[3303653][1][1]["RewardItem"] = {}
	tSummerSignActivity_Award[3303653][1][1]["RewardItem"][1] = {}
	tSummerSignActivity_Award[3303653][1][1]["RewardItem"][1]["Id"] = 720027
	tSummerSignActivity_Award[3303653][1][1]["RewardItem"][1]["Attr"] = "0 1 3"
	-- P5神魂赠可选*1[属性11]
	tSummerSignActivity_Award[3303653][1][2] = {}
	tSummerSignActivity_Award[3303653][1][2]["RandomItemChanceType"] = 2
	tSummerSignActivity_Award[3303653][1][2]["ItemChance"] = 2400
	tSummerSignActivity_Award[3303653][1][2]["LogId"] = 12000757
	tSummerSignActivity_Award[3303653][1][2]["RewardItem"] = {}
	tSummerSignActivity_Award[3303653][1][2]["RewardItem"][1] = {}
	tSummerSignActivity_Award[3303653][1][2]["RewardItem"][1]["Id"] = 3005892
	tSummerSignActivity_Award[3303653][1][2]["RewardItem"][1]["Attr"] = "0 1"
	-- 微光星陨石*3[不可交易无需赠]
	tSummerSignActivity_Award[3303653][1][3] = {}
	tSummerSignActivity_Award[3303653][1][3]["RandomItemChanceType"] = 2
	tSummerSignActivity_Award[3303653][1][3]["ItemChance"] = 1200
	tSummerSignActivity_Award[3303653][1][3]["LogId"] = 12000757
	tSummerSignActivity_Award[3303653][1][3]["RewardItem"] = {}
	tSummerSignActivity_Award[3303653][1][3]["RewardItem"][1] = {}
	tSummerSignActivity_Award[3303653][1][3]["RewardItem"][1]["Id"] = 3009000
	tSummerSignActivity_Award[3303653][1][3]["RewardItem"][1]["Attr"] = "0 3 0 2880 1"
	-- 20点赠品天石
	tSummerSignActivity_Award[3303653][1][4] = {}
	tSummerSignActivity_Award[3303653][1][4]["RandomItemChanceType"] = 2
	tSummerSignActivity_Award[3303653][1][4]["ItemChance"] = 1000
	tSummerSignActivity_Award[3303653][1][4]["LogId"] = 12000757
	tSummerSignActivity_Award[3303653][1][4]["RewardEMoneyMono"] = {}
	tSummerSignActivity_Award[3303653][1][4]["RewardEMoneyMono"]["Value"] = 20
	tSummerSignActivity_Award[3303653][1][4]["EmoneyLog"] = "350	20582	0	0	20	"
	-- 赤炼石+2赠*1
	tSummerSignActivity_Award[3303653][1][5] = {}
	tSummerSignActivity_Award[3303653][1][5]["RandomItemChanceType"] = 2
	tSummerSignActivity_Award[3303653][1][5]["ItemChance"] = 1000
	tSummerSignActivity_Award[3303653][1][5]["LogId"] = 12000757
	tSummerSignActivity_Award[3303653][1][5]["RewardItem"] = {}
	tSummerSignActivity_Award[3303653][1][5]["RewardItem"][1] = {}
	tSummerSignActivity_Award[3303653][1][5]["RewardItem"][1]["Id"] = 730002
	tSummerSignActivity_Award[3303653][1][5]["RewardItem"][1]["Attr"] = "0 1 3"
	-- 龙珠赠*1
	tSummerSignActivity_Award[3303653][1][6] = {}
	tSummerSignActivity_Award[3303653][1][6]["RandomItemChanceType"] = 2
	tSummerSignActivity_Award[3303653][1][6]["ItemChance"] = 800
	tSummerSignActivity_Award[3303653][1][6]["LogId"] = 12000757
	tSummerSignActivity_Award[3303653][1][6]["RewardItem"] = {}
	tSummerSignActivity_Award[3303653][1][6]["RewardItem"][1] = {}
	tSummerSignActivity_Award[3303653][1][6]["RewardItem"][1]["Id"] = 1088000
	tSummerSignActivity_Award[3303653][1][6]["RewardItem"][1]["Attr"] = "0 1 3"
	tSummerSignActivity_Award[3303653][1][6]["GlobalId"] = tSummerSignActivity_Constant["GlobalId1"]
	tSummerSignActivity_Award[3303653][1][6]["Pos"] = 2
	tSummerSignActivity_Award[3303653][1][6]["MaxData"] = 50
	tSummerSignActivity_Award[3303653][1][6]["FullIndex"] = 1
	
	-- 免试金牌赠*1
	tSummerSignActivity_Award[3303653][1][7] = {}
	tSummerSignActivity_Award[3303653][1][7]["RandomItemChanceType"] = 2
	tSummerSignActivity_Award[3303653][1][7]["ItemChance"] = 200
	tSummerSignActivity_Award[3303653][1][7]["LogId"] = 12000757
	tSummerSignActivity_Award[3303653][1][7]["RewardItem"] = {}
	tSummerSignActivity_Award[3303653][1][7]["RewardItem"][1] = {}
	tSummerSignActivity_Award[3303653][1][7]["RewardItem"][1]["Id"] = 723701
	tSummerSignActivity_Award[3303653][1][7]["RewardItem"][1]["Attr"] = "0 1 3"
	tSummerSignActivity_Award[3303653][1][7]["GlobalId"] = tSummerSignActivity_Constant["GlobalId"]
	tSummerSignActivity_Award[3303653][1][7]["Pos"] = 3
	tSummerSignActivity_Award[3303653][1][7]["MaxData"] = 10
	tSummerSignActivity_Award[3303653][1][7]["FullIndex"] = 1
	-- 回气丹赠*1 
	tSummerSignActivity_Award[3303653][1][8] = {}
	tSummerSignActivity_Award[3303653][1][8]["RandomItemChanceType"] = 2
	tSummerSignActivity_Award[3303653][1][8]["ItemChance"] = 1000
	tSummerSignActivity_Award[3303653][1][8]["LogId"] = 12000757
	tSummerSignActivity_Award[3303653][1][8]["RewardItem"] = {}
	tSummerSignActivity_Award[3303653][1][8]["RewardItem"][1] = {}
	tSummerSignActivity_Award[3303653][1][8]["RewardItem"][1]["Id"] = 729242
	tSummerSignActivity_Award[3303653][1][8]["RewardItem"][1]["Attr"] = "0 1 3"
	
	-- 3303654[free2 固定 随机]
	-- [500点气力值 暑期拼图碎片CONQUER*1 明亮星陨石*1][碎片由于还没更新出去,测试时需要注释]
	tSummerSignActivity_Award[3303654] = {}
	tSummerSignActivity_Award[3303654]["LogId"] = 12000757
	tSummerSignActivity_Award[3303654]["RewardItem"] = {}
	tSummerSignActivity_Award[3303654]["RewardItem"][1] = {}
	tSummerSignActivity_Award[3303654]["RewardItem"][1]["Id"] = 3009001
	tSummerSignActivity_Award[3303654]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tSummerSignActivity_Award[3303654]["RewardItem"][2] = {}
	tSummerSignActivity_Award[3303654]["RewardItem"][2]["Id"] = 3303628
	tSummerSignActivity_Award[3303654]["RewardItem"][2]["Attr"] = "0 1"
	tSummerSignActivity_Award[3303654]["RewardStrengthValue"] = {}
	tSummerSignActivity_Award[3303654]["RewardStrengthValue"]["Value"] = 500
	-- random
	tSummerSignActivity_Award[3303654]["ItemNum"] = 1
	tSummerSignActivity_Award[3303654][1] = {}
	tSummerSignActivity_Award[3303654][1]["ItemChanceSum"] = 10000
	-- 回气丹赠*2
	tSummerSignActivity_Award[3303654][1][1] = {}
	tSummerSignActivity_Award[3303654][1][1]["RandomItemChanceType"] = 2
	tSummerSignActivity_Award[3303654][1][1]["ItemChance"] = 2500
	tSummerSignActivity_Award[3303654][1][1]["LogId"] = 12000757
	tSummerSignActivity_Award[3303654][1][1]["RewardItem"] = {}
	tSummerSignActivity_Award[3303654][1][1]["RewardItem"][1] = {}
	tSummerSignActivity_Award[3303654][1][1]["RewardItem"][1]["Id"] = 729242
	tSummerSignActivity_Award[3303654][1][1]["RewardItem"][1]["Attr"] = "0 2 3"
	-- 强炼丹赠*4 
	tSummerSignActivity_Award[3303654][1][2] = {}
	tSummerSignActivity_Award[3303654][1][2]["RandomItemChanceType"] = 2
	tSummerSignActivity_Award[3303654][1][2]["ItemChance"] = 1000
	tSummerSignActivity_Award[3303654][1][2]["LogId"] = 12000757
	tSummerSignActivity_Award[3303654][1][2]["RewardItem"] = {}
	tSummerSignActivity_Award[3303654][1][2]["RewardItem"][1] = {}
	tSummerSignActivity_Award[3303654][1][2]["RewardItem"][1]["Id"] = 3003124
	tSummerSignActivity_Award[3303654][1][2]["RewardItem"][1]["Attr"] = "0 4 3"
	-- 大爆丹*4赠
	tSummerSignActivity_Award[3303654][1][3] = {}
	tSummerSignActivity_Award[3303654][1][3]["RandomItemChanceType"] = 2
	tSummerSignActivity_Award[3303654][1][3]["ItemChance"] = 1000
	tSummerSignActivity_Award[3303654][1][3]["LogId"] = 12000757
	tSummerSignActivity_Award[3303654][1][3]["RewardItem"] = {}
	tSummerSignActivity_Award[3303654][1][3]["RewardItem"][1] = {}
	tSummerSignActivity_Award[3303654][1][3]["RewardItem"][1]["Id"] = 3003126
	tSummerSignActivity_Award[3303654][1][3]["RewardItem"][1]["Attr"] = "0 4 3"
	-- P6神魂可选赠[属性9不写赠]
	tSummerSignActivity_Award[3303654][1][4] = {}
	tSummerSignActivity_Award[3303654][1][4]["RandomItemChanceType"] = 2
	tSummerSignActivity_Award[3303654][1][4]["ItemChance"] = 1000
	tSummerSignActivity_Award[3303654][1][4]["LogId"] = 12000757
	tSummerSignActivity_Award[3303654][1][4]["RewardItem"] = {}
	tSummerSignActivity_Award[3303654][1][4]["RewardItem"][1] = {}
	tSummerSignActivity_Award[3303654][1][4]["RewardItem"][1]["Id"] = 3005893
	tSummerSignActivity_Award[3303654][1][4]["RewardItem"][1]["Attr"] = "0 1"
	-- 明亮星陨石*1
	tSummerSignActivity_Award[3303654][1][5] = {}
	tSummerSignActivity_Award[3303654][1][5]["RandomItemChanceType"] = 2
	tSummerSignActivity_Award[3303654][1][5]["ItemChance"] = 2400
	tSummerSignActivity_Award[3303654][1][5]["LogId"] = 12000757
	tSummerSignActivity_Award[3303654][1][5]["RewardItem"] = {}
	tSummerSignActivity_Award[3303654][1][5]["RewardItem"][1] = {}
	tSummerSignActivity_Award[3303654][1][5]["RewardItem"][1]["Id"] = 3009001
	tSummerSignActivity_Award[3303654][1][5]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	-- 50点赠品天石
	tSummerSignActivity_Award[3303654][1][6] = {}
	tSummerSignActivity_Award[3303654][1][6]["RandomItemChanceType"] = 2
	tSummerSignActivity_Award[3303654][1][6]["ItemChance"] = 500
	tSummerSignActivity_Award[3303654][1][6]["LogId"] = 12000757
	tSummerSignActivity_Award[3303654][1][6]["RewardEMoneyMono"] = {}
	tSummerSignActivity_Award[3303654][1][6]["RewardEMoneyMono"]["Value"] = 50
	tSummerSignActivity_Award[3303654][1][6]["EmoneyLog"] = "350	20583	0	0	50	"
	
	-- 龙珠非增*1
	tSummerSignActivity_Award[3303654][1][7] = {}
	tSummerSignActivity_Award[3303654][1][7]["RandomItemChanceType"] = 2
	tSummerSignActivity_Award[3303654][1][7]["ItemChance"] = 100
	tSummerSignActivity_Award[3303654][1][7]["LogId"] = 12000757
	tSummerSignActivity_Award[3303654][1][7]["RewardItem"] = {}
	tSummerSignActivity_Award[3303654][1][7]["RewardItem"][1] = {}
	tSummerSignActivity_Award[3303654][1][7]["RewardItem"][1]["Id"] = 1088000
	tSummerSignActivity_Award[3303654][1][7]["RewardItem"][1]["Attr"] = "0 1"
	tSummerSignActivity_Award[3303654][1][7]["GlobalId"] = tSummerSignActivity_Constant["GlobalId"]
	tSummerSignActivity_Award[3303654][1][7]["Pos"] = 4
	tSummerSignActivity_Award[3303654][1][7]["MaxData"] = 50
	tSummerSignActivity_Award[3303654][1][7]["FullIndex"] = 3
	-- 清心符赠*3
	tSummerSignActivity_Award[3303654][1][8] = {}
	tSummerSignActivity_Award[3303654][1][8]["RandomItemChanceType"] = 2
	tSummerSignActivity_Award[3303654][1][8]["ItemChance"] = 1500
	tSummerSignActivity_Award[3303654][1][8]["LogId"] = 12000757
	tSummerSignActivity_Award[3303654][1][8]["RewardItem"] = {}
	tSummerSignActivity_Award[3303654][1][8]["RewardItem"][1] = {}
	tSummerSignActivity_Award[3303654][1][8]["RewardItem"][1]["Id"] = 720128
	tSummerSignActivity_Award[3303654][1][8]["RewardItem"][1]["Attr"] = "0 3 3"
	tSummerSignActivity_Award[3303654][1][8]["GlobalId"] = tSummerSignActivity_Constant["GlobalId"]
	tSummerSignActivity_Award[3303654][1][8]["Pos"] = 5
	tSummerSignActivity_Award[3303654][1][8]["MaxData"] = 10
	tSummerSignActivity_Award[3303654][1][8]["FullIndex"] = 3
	
	-- 3303655[pay199 随机]
	tSummerSignActivity_Award[3303655] = {}
	tSummerSignActivity_Award[3303655]["ItemNum"] = 1
	tSummerSignActivity_Award[3303655][1] = {}
	tSummerSignActivity_Award[3303655][1]["ItemChanceSum"] = 10000
	-- 龙珠非增*3
	tSummerSignActivity_Award[3303655][1][1] = {}
	tSummerSignActivity_Award[3303655][1][1]["RandomItemChanceType"] = 2
	tSummerSignActivity_Award[3303655][1][1]["ItemChance"] = 2400
	tSummerSignActivity_Award[3303655][1][1]["LogId"] = 12000757
	tSummerSignActivity_Award[3303655][1][1]["RewardItem"] = {}
	tSummerSignActivity_Award[3303655][1][1]["RewardItem"][1] = {}
	tSummerSignActivity_Award[3303655][1][1]["RewardItem"][1]["Id"] = 1088000
	tSummerSignActivity_Award[3303655][1][1]["RewardItem"][1]["Attr"] = "0 3"
	-- 明亮星陨石*4
	tSummerSignActivity_Award[3303655][1][2] = {}
	tSummerSignActivity_Award[3303655][1][2]["RandomItemChanceType"] = 2
	tSummerSignActivity_Award[3303655][1][2]["ItemChance"] = 2400
	tSummerSignActivity_Award[3303655][1][2]["LogId"] = 12000757
	tSummerSignActivity_Award[3303655][1][2]["RewardItem"] = {}
	tSummerSignActivity_Award[3303655][1][2]["RewardItem"][1] = {}
	tSummerSignActivity_Award[3303655][1][2]["RewardItem"][1]["Id"] = 3009001
	tSummerSignActivity_Award[3303655][1][2]["RewardItem"][1]["Attr"] = "0 4 0 2880 1"
	-- 拼图碎片SUMMER*1【暂时用流星卷测试】
	tSummerSignActivity_Award[3303655][1][3] = {}
	tSummerSignActivity_Award[3303655][1][3]["RandomItemChanceType"] = 2
	tSummerSignActivity_Award[3303655][1][3]["ItemChance"] = 2000
	tSummerSignActivity_Award[3303655][1][3]["LogId"] = 12000757
	tSummerSignActivity_Award[3303655][1][3]["RewardItem"] = {}
	tSummerSignActivity_Award[3303655][1][3]["RewardItem"][1] = {}
	tSummerSignActivity_Award[3303655][1][3]["RewardItem"][1]["Id"] = 3303629
	-- tSummerSignActivity_Award[3303655][1][3]["RewardItem"][1]["Id"] = 720027
	tSummerSignActivity_Award[3303655][1][3]["RewardItem"][1]["Attr"] = "0 1"
	-- 回气丹*5
	tSummerSignActivity_Award[3303655][1][4] = {}
	tSummerSignActivity_Award[3303655][1][4]["RandomItemChanceType"] = 2
	tSummerSignActivity_Award[3303655][1][4]["ItemChance"] = 2100
	tSummerSignActivity_Award[3303655][1][4]["LogId"] = 12000757
	tSummerSignActivity_Award[3303655][1][4]["RewardItem"] = {}
	tSummerSignActivity_Award[3303655][1][4]["RewardItem"][1] = {}
	tSummerSignActivity_Award[3303655][1][4]["RewardItem"][1]["Id"] = 729242
	tSummerSignActivity_Award[3303655][1][4]["RewardItem"][1]["Attr"] = "0 5"
	-- 小抽奖卷*20
	tSummerSignActivity_Award[3303655][1][5] = {}
	tSummerSignActivity_Award[3303655][1][5]["RandomItemChanceType"] = 2
	tSummerSignActivity_Award[3303655][1][5]["ItemChance"] = 1100
	tSummerSignActivity_Award[3303655][1][5]["LogId"] = 12000757
	tSummerSignActivity_Award[3303655][1][5]["RewardItem"] = {}
	tSummerSignActivity_Award[3303655][1][5]["RewardItem"][1] = {}
	tSummerSignActivity_Award[3303655][1][5]["RewardItem"][1]["Id"] = 711504
	tSummerSignActivity_Award[3303655][1][5]["RewardItem"][1]["Attr"] = "0 20"
	
	-- 3303656[pay499 随机]
	tSummerSignActivity_Award[3303656] = {}
	tSummerSignActivity_Award[3303656]["ItemNum"] = 1
	tSummerSignActivity_Award[3303656][1] = {}
	tSummerSignActivity_Award[3303656][1]["ItemChanceSum"] = 10000
	-- 拼图碎片Carnival*1【暂时用流星卷测试】
	tSummerSignActivity_Award[3303656][1][1] = {}
	tSummerSignActivity_Award[3303656][1][1]["RandomItemChanceType"] = 2
	tSummerSignActivity_Award[3303656][1][1]["ItemChance"] = 2500
	tSummerSignActivity_Award[3303656][1][1]["LogId"] = 12000757
	tSummerSignActivity_Award[3303656][1][1]["RewardItem"] = {}
	tSummerSignActivity_Award[3303656][1][1]["RewardItem"][1] = {}
	tSummerSignActivity_Award[3303656][1][1]["RewardItem"][1]["Id"] = 3303631
	-- tSummerSignActivity_Award[3303656][1][1]["RewardItem"][1]["Id"] = 720027
	tSummerSignActivity_Award[3303656][1][1]["RewardItem"][1]["Attr"] = "0 1"
	-- 小抽奖卷*40
	tSummerSignActivity_Award[3303656][1][2] = {}
	tSummerSignActivity_Award[3303656][1][2]["RandomItemChanceType"] = 2
	tSummerSignActivity_Award[3303656][1][2]["ItemChance"] = 1200
	tSummerSignActivity_Award[3303656][1][2]["LogId"] = 12000757
	tSummerSignActivity_Award[3303656][1][2]["RewardItem"] = {}
	tSummerSignActivity_Award[3303656][1][2]["RewardItem"][1] = {}
	tSummerSignActivity_Award[3303656][1][2]["RewardItem"][1]["Id"] = 711504
	tSummerSignActivity_Award[3303656][1][2]["RewardItem"][1]["Attr"] = "0 40"
	-- 回气丹*10
	tSummerSignActivity_Award[3303656][1][3] = {}
	tSummerSignActivity_Award[3303656][1][3]["RandomItemChanceType"] = 2
	tSummerSignActivity_Award[3303656][1][3]["ItemChance"] = 2000
	tSummerSignActivity_Award[3303656][1][3]["LogId"] = 12000757
	tSummerSignActivity_Award[3303656][1][3]["RewardItem"] = {}
	tSummerSignActivity_Award[3303656][1][3]["RewardItem"][1] = {}
	tSummerSignActivity_Award[3303656][1][3]["RewardItem"][1]["Id"] = 729242
	tSummerSignActivity_Award[3303656][1][3]["RewardItem"][1]["Attr"] = "0 10"
	-- +4赤炼石*2
	tSummerSignActivity_Award[3303656][1][4] = {}
	tSummerSignActivity_Award[3303656][1][4]["RandomItemChanceType"] = 2
	tSummerSignActivity_Award[3303656][1][4]["ItemChance"] = 1500
	tSummerSignActivity_Award[3303656][1][4]["LogId"] = 12000757
	tSummerSignActivity_Award[3303656][1][4]["RewardItem"] = {}
	tSummerSignActivity_Award[3303656][1][4]["RewardItem"][1] = {}
	tSummerSignActivity_Award[3303656][1][4]["RewardItem"][1]["Id"] = 730004
	tSummerSignActivity_Award[3303656][1][4]["RewardItem"][1]["Attr"] = "0 2"
	-- 小固化石*2
	tSummerSignActivity_Award[3303656][1][5] = {}
	tSummerSignActivity_Award[3303656][1][5]["RandomItemChanceType"] = 2
	tSummerSignActivity_Award[3303656][1][5]["ItemChance"] = 700
	tSummerSignActivity_Award[3303656][1][5]["LogId"] = 12000757
	tSummerSignActivity_Award[3303656][1][5]["RewardItem"] = {}
	tSummerSignActivity_Award[3303656][1][5]["RewardItem"][1] = {}
	tSummerSignActivity_Award[3303656][1][5]["RewardItem"][1]["Id"] = 723694
	tSummerSignActivity_Award[3303656][1][5]["RewardItem"][1]["Attr"] = "0 2"
	-- 晶莹星陨石*2
	tSummerSignActivity_Award[3303656][1][6] = {}
	tSummerSignActivity_Award[3303656][1][6]["RandomItemChanceType"] = 2
	tSummerSignActivity_Award[3303656][1][6]["ItemChance"] = 2100
	tSummerSignActivity_Award[3303656][1][6]["LogId"] = 12000757
	tSummerSignActivity_Award[3303656][1][6]["RewardItem"] = {}
	tSummerSignActivity_Award[3303656][1][6]["RewardItem"][1] = {}
	tSummerSignActivity_Award[3303656][1][6]["RewardItem"][1]["Id"] = 3009002
	tSummerSignActivity_Award[3303656][1][6]["RewardItem"][1]["Attr"] = "0 2 0 2880 1"

	-- npc处领取免费礼包
	tSummerSignActivity_Award["Space"] = 1
	
	tSummerSignActivity_Award[1] = {}
	tSummerSignActivity_Award[1]["LogId"] = 12000757
	tSummerSignActivity_Award[1]["RewardItem"] = {}
	tSummerSignActivity_Award[1]["RewardItem"][1] = {}
	tSummerSignActivity_Award[1]["RewardItem"][1]["Id"] = 3303652
	tSummerSignActivity_Award[1]["RewardItem"][1]["Attr"] = "0 1"
	tSummerSignActivity_Award[1]["Talk"] = tSummerSignActivity_Text["GetBag"][3303652]
	
	tSummerSignActivity_Award[2] = {}
	tSummerSignActivity_Award[2]["LogId"] = 12000757
	tSummerSignActivity_Award[2]["RewardItem"] = {}
	tSummerSignActivity_Award[2]["RewardItem"][1] = {}
	tSummerSignActivity_Award[2]["RewardItem"][1]["Id"] = 3303653
	tSummerSignActivity_Award[2]["RewardItem"][1]["Attr"] = "0 1"
	tSummerSignActivity_Award[2]["Talk"] = tSummerSignActivity_Text["GetBag"][3303653]
	
	tSummerSignActivity_Award[3] = {}
	tSummerSignActivity_Award[3]["LogId"] = 12000757
	tSummerSignActivity_Award[3]["RewardItem"] = {}
	tSummerSignActivity_Award[3]["RewardItem"][1] = {}
	tSummerSignActivity_Award[3]["RewardItem"][1]["Id"] = 3303654
	tSummerSignActivity_Award[3]["RewardItem"][1]["Attr"] = "0 1"
	tSummerSignActivity_Award[3]["Talk"] = tSummerSignActivity_Text["GetBag"][3303654]
	
	tSummerSignActivity_Award[4] = {}
	tSummerSignActivity_Award[4]["LogId"] = 12000757
	tSummerSignActivity_Award[4]["RewardItem"] = {}
	tSummerSignActivity_Award[4]["RewardItem"][1] = {}
	tSummerSignActivity_Award[4]["RewardItem"][1]["Id"] = 3303655
	tSummerSignActivity_Award[4]["RewardItem"][1]["Attr"] = "0 1"
	tSummerSignActivity_Award[4]["Talk"] = tSummerSignActivity_Text["GetBag"][3303655]
	
	tSummerSignActivity_Award[5] = {}
	tSummerSignActivity_Award[5]["LogId"] = 12000757
	tSummerSignActivity_Award[5]["RewardItem"] = {}
	tSummerSignActivity_Award[5]["RewardItem"][1] = {}
	tSummerSignActivity_Award[5]["RewardItem"][1]["Id"] = 3303656
	tSummerSignActivity_Award[5]["RewardItem"][1]["Attr"] = "0 1"
	tSummerSignActivity_Award[5]["Talk"] = tSummerSignActivity_Text["GetBag"][3303656]
	
--------------------------------------------------------------测试模块-------------------------------------------------------------
-- tProbabil_Test[3303652] = {}
-- tProbabil_Test[3303652]["Table"] = tSummerSignActivity_Award[3303652]
-- tProbabil_Test[3303652]["Index"] = {1}
-- tProbabil_Test[3303652]["Times"] = 10000
-- tProbabil_Test[3303652]["LogName"] = "3303652概率测试log"

-- tProbabil_Test[3303653] = {}
-- tProbabil_Test[3303653]["Table"] = tSummerSignActivity_Award[3303653]
-- tProbabil_Test[3303653]["Index"] = {1}
-- tProbabil_Test[3303653]["Times"] = 10000
-- tProbabil_Test[3303653]["LogName"] = "3303653概率测试log"

-- tProbabil_Test[3303654] = {}
-- tProbabil_Test[3303654]["Table"] = tSummerSignActivity_Award[3303654]
-- tProbabil_Test[3303654]["Index"] = {1}
-- tProbabil_Test[3303654]["Times"] = 10000
-- tProbabil_Test[3303654]["LogName"] = "3303654概率测试log"

-- tProbabil_Test[3303655] = {}
-- tProbabil_Test[3303655]["Table"] = tSummerSignActivity_Award[3303655]
-- tProbabil_Test[3303655]["Index"] = {1}
-- tProbabil_Test[3303655]["Times"] = 10000
-- tProbabil_Test[3303655]["LogName"] = "3303655概率测试log"

-- tProbabil_Test[3303656] = {}
-- tProbabil_Test[3303656]["Table"] = tSummerSignActivity_Award[3303656]
-- tProbabil_Test[3303656]["Index"] = {1}
-- tProbabil_Test[3303656]["Times"] = 10000
-- tProbabil_Test[3303656]["LogName"] = "3303656概率测试log"
--测试命令
--/callluafunc </F>Probabil_Main</N>3303652
	
---------------------------------------逻辑部分------------------------------------
-- 打开免费礼包
function SummerSignActivity_OpenFreeBag(nItemId)
	-- 时间判断[非活动时间删除对应物品]
	if not Sys_ChkFullTime(tSummerSignActivity_Constant["ActivityTime"]) then
		-- 删除物品
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			-- 打log
			local sText = string.format(tSummerSignActivity_Constant["PastDelLog"],nItemId)
			Sys_SaveActionFestivalLog(sText)
			User_TalkChannel2005(tSummerSignActivity_Text["OverTimeDelete"])
		end
		return
	end
	
	--等级判断
	local nLevel= tSummerSignActivity_Constant["Level"]
	local nMetempsychosis = tSummerSignActivity_Constant["Metempsychosis"]
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMetempsychosis) then
		Sys_MsgBox(tSummerSignActivity_Text["NoLevel"])
		return
	end
	-- 掩码初始化[仅清空掩码2]
	local nEvent = tSummerSignActivity_Constant["Stc"]["EventType"]
	local nData = tSummerSignActivity_Constant["Stc"]["DataType"][2]
	-- 隔天
	if Task_StcInterval(nEvent,nData,1,4) then
		Task_SetStatistic(nEvent,nData,0,1)
		Task_SetStcTimestamp(nEvent,nData,0)
	end
	
	-- 掩码判断
	if Task_ChkStcValue(nEvent,nData,"==",1) then
		User_TalkChannel2005(tSummerSignActivity_Text["No24Hours"])
		Sys_MsgBox(tSummerSignActivity_Text["No24Hours"])
		return
	end
	
	-- 背包空间判断模板[随机 - 一般]
	local nSpace = RewardTemplate_GetRewardSpace(tSummerSignActivity_Award[nItemId]) + RewardTemplate_GetRandomSpace(tSummerSignActivity_Award[nItemId],1)

	if not User_CheckLeftSpace(nSpace) then
		User_TalkChannel2005(string.format(tSummerSignActivity_Text["FullSpace"],nSpace))
		Sys_MsgBox(string.format(tSummerSignActivity_Text["FullSpace"],nSpace))
		return
	end
	
	-- 打掩码,奖励模板
	Task_SetStatistic(nEvent,nData,1,1)
	RewardTemplate_UseItemAndMsg(tSummerSignActivity_Award[nItemId])
	RewardTemplate_NewRandom(tSummerSignActivity_Award[nItemId],1)
	
	-- 打对应E_money_log
	Sys_SaveEmoneyBuy(tSummerSignActivity_Constant["EmonyLog"][nItemId])
	
	-- 出光效
	User_EffectAdd("self",tSummerSignActivity_Constant["Effect"])

end

-- 付费礼包逻辑控制
function SummerSignActivity_OpenPayBag(nItemId)
	-- 时间判断[非活动时间删除对应物品]
	if not Sys_ChkFullTime(tSummerSignActivity_Constant["ActivityTime"]) then
		-- 删除物品
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			-- 打log
			local sText = string.format(tSummerSignActivity_Constant["PastDelLog"],nItemId)
			Sys_SaveActionFestivalLog(sText)
			User_TalkChannel2005(tSummerSignActivity_Text["OverTimeDelete"])
		end
		return
	end

-- 判断是否屏蔽二次判断
	local nEvent = tSummerSignActivity_Constant["Stc"]["EventType"]
	local nData = tSummerSignActivity_Constant["Stc"]["DataType"][3]
	-- 隔天
	if Task_StcInterval(nEvent,nData,1,4) then
		Task_SetStatistic(nEvent,nData,0,1)
		Task_SetStcTimestamp(nEvent,nData,0)
	end
	
	-- 掩码判断
	local nNum = Get_UserStatisticValue(nEvent,nData)
	if Sys_ParseNumbersContain(tSummerSignActivity_Constant["Control"][nItemId],nNum) then
		-- 已经屏蔽
		SummerSignActivity_OpenCostBag(nItemId)
		return
	end

	-- 未屏蔽[对白导向2-1]
	LinkItemGossipFunc_New(nItemId,"2-1")
	return

end

-- 确认打开并屏蔽二次选项
function SummerSignActivity_OpenAndClose(nItemId)
-- 判断是否屏蔽二次判断
	local nEvent = tSummerSignActivity_Constant["Stc"]["EventType"]
	local nData = tSummerSignActivity_Constant["Stc"]["DataType"][3]
	-- 掩码判断
	local nNum = Get_UserStatisticValue(nEvent,nData)
	nNum = nNum + tSummerSignActivity_Constant["Control"][nItemId]
	Task_SetStatistic(nEvent,nData,nNum,1)

	-- 打开礼包
	SummerSignActivity_OpenCostBag(nItemId)

end

-- 确认打开对应付费礼包
function SummerSignActivity_OpenCostBag(nItemId)
	-- 时间判断[非活动时间删除对应物品]
	if not Sys_ChkFullTime(tSummerSignActivity_Constant["ActivityTime"]) then
		-- 删除物品
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			-- 打log
			local sText = string.format(tSummerSignActivity_Constant["PastDelLog"],nItemId)
			Sys_SaveActionFestivalLog(sText)
			User_TalkChannel2005(tSummerSignActivity_Text["OverTimeDelete"])
		end
		return
	end

	-- 背包空间判断模板
	local nSpace = RewardTemplate_GetRandomSpace(tSummerSignActivity_Award[nItemId],1)
	if not User_CheckLeftSpace(nSpace) then
		User_TalkChannel2005(string.format(tSummerSignActivity_Text["FullSpace"],nSpace))
		Sys_MsgBox(string.format(tSummerSignActivity_Text["FullSpace"],nSpace))
		return
	end

	-- 天石判断
	local nEmoney = tSummerSignActivity_Constant["EmonyCost"][nItemId]
	if Get_UserEMoney() < nEmoney then
		Sys_MsgBox(tSummerSignActivity_Text["NoEmoney"][nItemId])
		User_TalkChannel2005(tSummerSignActivity_Text["NoEmoney"][nItemId])
		return
	end
	

	if Item_ChkItem(nItemId) then
		if User_AddEMoney(-nEmoney) then
			RewardTemplate_NewRandom(tSummerSignActivity_Award[nItemId],1)
		end
	end
	
	-- 打对应E_money_log
	Sys_SaveEmoneyBuy(tSummerSignActivity_Constant["EmonyLog"][nItemId])
	
	-- 出光效
	User_EffectAdd("self",tSummerSignActivity_Constant["Effect"])

end

-- npc处领取免费礼包
function SummerSignActivity_TaskFreeBag()
	-- 时间判断[非活动时间弹出]
	if not Sys_ChkFullTime(tSummerSignActivity_Constant["ActivityTime"]) then
		return
	end

	--判断最低等级
	local nLevel= tSummerSignActivity_Constant["Level"]
	local nMetempsychosis = tSummerSignActivity_Constant["Metempsychosis"]
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMetempsychosis) then
		Sys_MsgBox(tSummerSignActivity_Text["NoLevelReceive"])
		return
	end
	-- 背包空间判断
	if not User_CheckLeftSpace(tSummerSignActivity_Award["Space"]) then
		Sys_MsgBox(tSummerSignActivity_Text["FreeNoSpace"])
		return
	end

	-- 掩码获取[判断]
	local nEvent = tSummerSignActivity_Constant["Stc"]["EventType"]
	-- 次数
	local nData1 = tSummerSignActivity_Constant["Stc"]["DataType"][1]
	-- 类型
	local nData2 = tSummerSignActivity_Constant["Stc"]["DataType"][4]
	local nNum1 = Get_UserStatisticValue(nEvent,nData1)

	-- 初始化判断
	if not Task_ChkStcValue(nEvent,nData2,">=",1) then
		local nUserId = Get_UserId()
		local nMete = Get_UserMetempsychosis(nUserId)
		if nMete > 2 then 
			nMete = 2
		end
		nMete = nMete + 1
		Task_SetStatistic(nEvent,nData2,nMete,1)
	end

	local nNum2 = Get_UserStatisticValue(nEvent,nData2)
	-- 检查背包中是否有对应物品
	if Item_ChkItem(tSummerSignActivity_Constant["FreeGet"][nNum2]) then
		Sys_MsgBox(tSummerSignActivity_Text["BagInhand"])
		return
	end

	-- 检查领取次数
	if nNum1 >= tSummerSignActivity_Constant["Stc"]["End"][1] then
		Sys_MsgBox(tSummerSignActivity_Text["GetLimit"])
		return
	end

	-- 记录掩码，给礼包
	nNum1 = nNum1 + 1
	Task_SetStatistic(nEvent,nData1,nNum1,1)
	RewardTemplate_UseItemAndMsg(tSummerSignActivity_Award[nNum2])
	-- 出光效
	User_EffectAdd("self",tSummerSignActivity_Constant["Effect"])

end

-- 领取付费礼包
function SummerSignActivity_TaskCpBag(nItemId)
	-- 时间判断[非活动时间弹出]
	if not Sys_ChkFullTime(tSummerSignActivity_Constant["ActivityTime"]) then
		return
	end

	-- 背包空间判断
	if not User_CheckLeftSpace(tSummerSignActivity_Award["Space"]) then
		Sys_MsgBox(tSummerSignActivity_Text["FreeNoSpace"])
		return
	end

	-- 检查背包中是否有对应物品
	if Item_ChkItem(tSummerSignActivity_Constant["FreeGet"][nItemId]) then
		Sys_MsgBox(tSummerSignActivity_Text["PayBagInhand"])
		return
	end

	RewardTemplate_UseItemAndMsg(tSummerSignActivity_Award[nItemId])
	-- 出光效
	User_EffectAdd("self",tSummerSignActivity_Constant["Effect"])


end

--系统自检函数
function SummerSignActivity_ClearGlobal()
	local nGlobalId = tSummerSignActivity_Constant["GlobalId"]
	local nGlobalId1 = tSummerSignActivity_Constant["GlobalId1"]
	local sDataStr5 = Get_SysDynaGlobalDataStr5(nGlobalId)
	if Sys_ChkFullTime(tSummerSignActivity_Constant["ActivityTime"]) then
		if Sys_ChkDayTime(tSummerSignActivity_Constant["ClearTime"]) then
			if not (sDataStr5 == "1") then
				Sys_SetSynaGlobalDataStr5(nGlobalId,"1")
				Sys_ResetAllSynaGlobalData(nGlobalId)
				Sys_ResetAllSynaGlobalData(nGlobalId1)
			end
		else
			if sDataStr5 == "1" then
				Sys_SetSynaGlobalDataStr5(nGlobalId,"0")
			end
		end
	end
end



---------------------------------------npc部分-------------------------------------
-- 福利宝贝猪
tNpcFace[4885] = 191
tNpcGossip[21871]= tNpcGossip[21871] or DefaultNpc:new{}
tNpcGossip[21871]["OptionHidden"] = 1

--活动前对话
tNpcGossip[21871]["Text1-1"] = {111,112,113,114}
tNpcGossip[21871]["Text111"] = tSummerSignActivity_Text[21871]["Text111"]
tNpcGossip[21871]["Text112"] = tSummerSignActivity_Text[21871]["Text112"]
tNpcGossip[21871]["Text113"] = tSummerSignActivity_Text[21871]["Text113"]
tNpcGossip[21871]["Text114"] = tSummerSignActivity_Text[21871]["Text114"]
tNpcGossip[21871]["tOption1-1"] = {1}
tNpcGossip[21871]["Option1"] = tSummerSignActivity_Text[21871]["Option1"]
tNpcGossip[21871]["ChkFunc1-1"] = function()
	return Sys_ChkFullTime(tSummerSignActivity_Constant["BeforeActivityTime"])
end

-- 活动中对白
tNpcGossip[21871]["Text1-2"] = {121,122,123,124}
tNpcGossip[21871]["Text121"] = tSummerSignActivity_Text[21871]["Text121"]
tNpcGossip[21871]["Text122"] = tSummerSignActivity_Text[21871]["Text122"]
tNpcGossip[21871]["Text123"] = tSummerSignActivity_Text[21871]["Text123"]
tNpcGossip[21871]["Text124"] = tSummerSignActivity_Text[21871]["Text124"]
tNpcGossip[21871]["tOption1-2"] = {2,3,4}
tNpcGossip[21871]["Option2"] = tSummerSignActivity_Text[21871]["Option2"]
tNpcGossip[21871]["Option3"] = tSummerSignActivity_Text[21871]["Option3"]
tNpcGossip[21871]["Option4"] = tSummerSignActivity_Text[21871]["Option4"]
tNpcGossip[21871]["OptionFunc2"] = "SummerSignActivity_TaskFreeBag"
tNpcGossip[21871]["OptionPoint3"] = "2-1"
tNpcGossip[21871]["ChkFunc1-2"] = function()
	return Sys_ChkFullTime(tSummerSignActivity_Constant["ActivityTime"])
end

-- 活动后对白
tNpcGossip[21871]["Text1-3"] = {131}
tNpcGossip[21871]["Text131"] = tSummerSignActivity_Text[21871]["Text131"]
tNpcGossip[21871]["tOption1-3"] = {5}
tNpcGossip[21871]["Option5"] = tSummerSignActivity_Text[21871]["Option5"]

-- 第二层(领付费礼包)
tNpcGossip[21871]["Text2-1"] = {211,212}
tNpcGossip[21871]["Text211"] = tSummerSignActivity_Text[21871]["Text211"]
tNpcGossip[21871]["Text212"] = tSummerSignActivity_Text[21871]["Text212"]
tNpcGossip[21871]["tOption2-1"] = {6,7,8}
tNpcGossip[21871]["Option6"] = tSummerSignActivity_Text[21871]["Option6"]
tNpcGossip[21871]["Option7"] = tSummerSignActivity_Text[21871]["Option7"]
tNpcGossip[21871]["Option8"] = tSummerSignActivity_Text[21871]["Option8"]
tNpcGossip[21871]["OptionFunc6"] = "SummerSignActivity_TaskCpBag</N>4"
tNpcGossip[21871]["OptionFunc7"] = "SummerSignActivity_TaskCpBag</N>5"







---------------------------------------物品部分-------------------------------------
-- 免费礼包
for i = 3303652,3303654 do
	tItem[i] = tItem[i] or {}
	tItem[i]["Function"] = function(nItemId,sItemName)
		SummerSignActivity_OpenFreeBag(nItemId)
	end
end

-- 付费礼包
for i = 3303655,3303656 do
	tItem[i] = tItem[i] or {}
	tItem[i]["DialogueText"] = tSummerSignActivity_Text[i]
	tItem[i]["Text1-1"] ={111}
	tItem[i]["tOption1-1"] = {1,2}
	tItem[i]["OptionFunc1"] ="SummerSignActivity_OpenPayBag</N>"..i
	-- 二次确认
	tItem[i]["Text2-1"] ={211}
	tItem[i]["tOption2-1"] = {3,4,2}
	tItem[i]["OptionFunc3"] ="SummerSignActivity_OpenCostBag</N>"..i
	tItem[i]["OptionFunc4"] ="SummerSignActivity_OpenAndClose</N>"..i
	
end

----------------------------------系统自检---------------------------------------------
-- 时间自检触发
--tOntimerMin_HM	小时/分钟（每天的00点00分到00点07分执行）
--'00:00-00:07'
	-- tOntimerMin_HM[0000] = tOntimerMin_HM[0000] or {}
	-- table.insert(tOntimerMin_HM[0000],SummerSignActivity_ClearGlobal)
	-- tOntimerMin_HM[0001] = tOntimerMin_HM[0001] or {}
	-- table.insert(tOntimerMin_HM[0001],SummerSignActivity_ClearGlobal)
	-- tOntimerMin_HM[0002] = tOntimerMin_HM[0002] or {}
	-- table.insert(tOntimerMin_HM[0002],SummerSignActivity_ClearGlobal)
	-- tOntimerMin_HM[0003] = tOntimerMin_HM[0003] or {}
	-- table.insert(tOntimerMin_HM[0003],SummerSignActivity_ClearGlobal)
	-- tOntimerMin_HM[0004] = tOntimerMin_HM[0004] or {}
	-- table.insert(tOntimerMin_HM[0004],SummerSignActivity_ClearGlobal)
	-- tOntimerMin_HM[0005] = tOntimerMin_HM[0005] or {}
	-- table.insert(tOntimerMin_HM[0005],SummerSignActivity_ClearGlobal)
	-- tOntimerMin_HM[0006] = tOntimerMin_HM[0006] or {}
	-- table.insert(tOntimerMin_HM[0006],SummerSignActivity_ClearGlobal)
	-- tOntimerMin_HM[0007] = tOntimerMin_HM[0007] or {}
	-- table.insert(tOntimerMin_HM[0007],SummerSignActivity_ClearGlobal)