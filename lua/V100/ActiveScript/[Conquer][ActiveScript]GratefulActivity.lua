------------------------------------------------------------------------------------
--Name：            171018[英文征服][活动脚本]11月感恩月赌博分场活动
--Creator:      丁雨浩
--Created:     2017/10/18
------------------------------------------------------------------------------------
--任务需求：

------------------------------------------------------------------------------------
--命名前缀：
--GratefulActivity_

--log 12000913

--动态码
--51812 data1 记录赤炼石骰子单服开出+4赤练石的数量
--      data2 记录赤炼石骰子单服开出+5赤练石的数量
--      data3 记录赤炼石骰子单服开出+6赤练石的数量

--51813 data1 记录装备养成轮盘单服开出金刚尖钻的数量
--      data2 记录装备养成轮盘单服开出七星宝钻的数量
--      data3 记录装备养成轮盘单服开出龙珠卷的数量
----------------------------------表配置部分--------------------------------------------
--相关数据
local tGratefulActivity_Data = {}
	--时间
	tGratefulActivity_Data["BeforeTime"] = tActivityTime["GratefulActivity"]["BeforeTime"]
	tGratefulActivity_Data["ActivityTime"] = tActivityTime["GratefulActivity"]["ActivityTime"]
	tGratefulActivity_Data["ExchangeTime"] = tActivityTime["GratefulActivity"]["ExchangeTime"]
	
	--兑换筹码数量
	tGratefulActivity_Data["ExchangeMoney"] = 2000000
	tGratefulActivity_Data["ExchangeMono"] = 10
	
	--增加外套时间
	tGratefulActivity_Data["AddTime"] = 10080
	
	--光效
	tGratefulActivity_Data["SzObj"] = "self"
	tGratefulActivity_Data["Effect"] = {}
	tGratefulActivity_Data["Effect"][1] = "touzi_1"
	tGratefulActivity_Data["Effect"][2] = "touzi_2"
	tGratefulActivity_Data["Effect"][3] = "touzi_3"
	tGratefulActivity_Data["Effect"][4] = "touzi_4"
	tGratefulActivity_Data["Effect"][5] = "touzi_5"
	tGratefulActivity_Data["Effect"][6] = "touzi_6"
	tGratefulActivity_Data["Effect"][7] = "angelwing"
	tGratefulActivity_Data["Effect"][8] = "zf2-e128"
	
	--等级限制
	tGratefulActivity_Data["Level"] = 80
	tGratefulActivity_Data["Metempsychosis"] = 0
	
	tGratefulActivity_Data[3306070] = 3306070
	tGratefulActivity_Data["DelLog"] = "0,0,%d,1,12000913,2,0,0"
	
	tGratefulActivity_Data["Money"] = -2000000
	
	--新增emoney_log
	tGratefulActivity_Data["EmoneyLog"] = {}
	tGratefulActivity_Data["EmoneyLog"][3306070] = "350	20945	0	0	1	"
	tGratefulActivity_Data["EmoneyLog"][3306074] = "350	20949	0	0	1	"
	tGratefulActivity_Data["EmoneyLog"][3306075] = "350	20950	0	0	1	"
	
local tGratefulActivity_Reward = {}
	--修行之骰子
	tGratefulActivity_Reward[3306070] = {}
	tGratefulActivity_Reward[3306070][1] = {}
	tGratefulActivity_Reward[3306070][1]["ItemChanceSum"] = 10000
	
	-- 100点修行值  10%
	tGratefulActivity_Reward[3306070][1][1] = {}
	tGratefulActivity_Reward[3306070][1][1]["RandomItemChanceType"] = 2
	tGratefulActivity_Reward[3306070][1][1]["ItemChance"] = 1000
	tGratefulActivity_Reward[3306070][1][1]["RewardEffect"] = {}
	tGratefulActivity_Reward[3306070][1][1]["RewardEffect"]["SzObj"] = tGratefulActivity_Data["SzObj"]
	tGratefulActivity_Reward[3306070][1][1]["RewardEffect"]["Effect"] = tGratefulActivity_Data["Effect"][1]
	tGratefulActivity_Reward[3306070][1][1]["RewardCultivation"] = {}
	tGratefulActivity_Reward[3306070][1][1]["RewardCultivation"]["Value"] = 100
	tGratefulActivity_Reward[3306070][1][1]["Talk"] = tGratefulActivity_Text[3306070][1]
	tGratefulActivity_Reward[3306070][1][1]["LogId"] = 12000913
	tGratefulActivity_Reward[3306070][1][1]["LogStep"] = "2"
	tGratefulActivity_Reward[3306070][1][1]["Flag"] = 1
	
	-- 200点修行值   20%
	tGratefulActivity_Reward[3306070][1][2] = {}
	tGratefulActivity_Reward[3306070][1][2]["RandomItemChanceType"] = 2
	tGratefulActivity_Reward[3306070][1][2]["ItemChance"] = 2000
	tGratefulActivity_Reward[3306070][1][2]["RewardEffect"] = {}
	tGratefulActivity_Reward[3306070][1][2]["RewardEffect"]["SzObj"] = tGratefulActivity_Data["SzObj"]
	tGratefulActivity_Reward[3306070][1][2]["RewardEffect"]["Effect"] = tGratefulActivity_Data["Effect"][2]
	tGratefulActivity_Reward[3306070][1][2]["RewardCultivation"] = {}
	tGratefulActivity_Reward[3306070][1][2]["RewardCultivation"]["Value"] = 200
	tGratefulActivity_Reward[3306070][1][2]["Talk"] = tGratefulActivity_Text[3306070][2]
	tGratefulActivity_Reward[3306070][1][2]["LogId"] = 12000913
	tGratefulActivity_Reward[3306070][1][2]["LogStep"] = "2"
	tGratefulActivity_Reward[3306070][1][2]["Flag"] = 2
	
	-- 300点修行值   40%
	tGratefulActivity_Reward[3306070][1][3] = {}
	tGratefulActivity_Reward[3306070][1][3]["RandomItemChanceType"] = 2
	tGratefulActivity_Reward[3306070][1][3]["ItemChance"] = 4000
	tGratefulActivity_Reward[3306070][1][3]["RewardEffect"] = {}
	tGratefulActivity_Reward[3306070][1][3]["RewardEffect"]["SzObj"] = tGratefulActivity_Data["SzObj"]
	tGratefulActivity_Reward[3306070][1][3]["RewardEffect"]["Effect"] = tGratefulActivity_Data["Effect"][3]
	tGratefulActivity_Reward[3306070][1][3]["RewardCultivation"] = {}
	tGratefulActivity_Reward[3306070][1][3]["RewardCultivation"]["Value"] = 300
	tGratefulActivity_Reward[3306070][1][3]["Talk"] = tGratefulActivity_Text[3306070][3]
	tGratefulActivity_Reward[3306070][1][3]["LogId"] = 12000913
	tGratefulActivity_Reward[3306070][1][3]["LogStep"] = "2"
	tGratefulActivity_Reward[3306070][1][3]["Flag"] = 3
	
	-- 400点修行值  15%
	tGratefulActivity_Reward[3306070][1][4] = {}
	tGratefulActivity_Reward[3306070][1][4]["RandomItemChanceType"] = 2
	tGratefulActivity_Reward[3306070][1][4]["ItemChance"] = 1500
	tGratefulActivity_Reward[3306070][1][4]["RewardEffect"] = {}
	tGratefulActivity_Reward[3306070][1][4]["RewardEffect"]["SzObj"] = tGratefulActivity_Data["SzObj"]
	tGratefulActivity_Reward[3306070][1][4]["RewardEffect"]["Effect"] = tGratefulActivity_Data["Effect"][4]
	tGratefulActivity_Reward[3306070][1][4]["RewardCultivation"] = {}
	tGratefulActivity_Reward[3306070][1][4]["RewardCultivation"]["Value"] = 400
	tGratefulActivity_Reward[3306070][1][4]["Talk"] = tGratefulActivity_Text[3306070][4]
	tGratefulActivity_Reward[3306070][1][4]["LogId"] = 12000913
	tGratefulActivity_Reward[3306070][1][4]["LogStep"] = "2"
	tGratefulActivity_Reward[3306070][1][4]["Flag"] = 4
	
	-- 500点修行值   10%
	tGratefulActivity_Reward[3306070][1][5] = {}
	tGratefulActivity_Reward[3306070][1][5]["RandomItemChanceType"] = 2
	tGratefulActivity_Reward[3306070][1][5]["ItemChance"] = 1000
	tGratefulActivity_Reward[3306070][1][5]["RewardEffect"] = {}
	tGratefulActivity_Reward[3306070][1][5]["RewardEffect"]["SzObj"] = tGratefulActivity_Data["SzObj"]
	tGratefulActivity_Reward[3306070][1][5]["RewardEffect"]["Effect"] = tGratefulActivity_Data["Effect"][5]
	tGratefulActivity_Reward[3306070][1][5]["RewardCultivation"] = {}
	tGratefulActivity_Reward[3306070][1][5]["RewardCultivation"]["Value"] = 500
	tGratefulActivity_Reward[3306070][1][5]["Talk"] = tGratefulActivity_Text[3306070][5]
	tGratefulActivity_Reward[3306070][1][5]["LogId"] = 12000913
	tGratefulActivity_Reward[3306070][1][5]["LogStep"] = "2"
	tGratefulActivity_Reward[3306070][1][5]["Flag"] = 5
	
	-- 600点修行值   5%
	tGratefulActivity_Reward[3306070][1][6] = {}
	tGratefulActivity_Reward[3306070][1][6]["RandomItemChanceType"] = 2
	tGratefulActivity_Reward[3306070][1][6]["ItemChance"] = 500
	tGratefulActivity_Reward[3306070][1][6]["RewardEffect"] = {}
	tGratefulActivity_Reward[3306070][1][6]["RewardEffect"]["SzObj"] = tGratefulActivity_Data["SzObj"]
	tGratefulActivity_Reward[3306070][1][6]["RewardEffect"]["Effect"] = tGratefulActivity_Data["Effect"][6]
	tGratefulActivity_Reward[3306070][1][6]["RewardCultivation"] = {}
	tGratefulActivity_Reward[3306070][1][6]["RewardCultivation"]["Value"] = 600
	tGratefulActivity_Reward[3306070][1][6]["Talk"] = tGratefulActivity_Text[3306070][6]
	tGratefulActivity_Reward[3306070][1][6]["LogId"] = 12000913
	tGratefulActivity_Reward[3306070][1][6]["LogStep"] = "2"
	tGratefulActivity_Reward[3306070][1][6]["Flag"] = 6
	
	--赤练石骰子
	tGratefulActivity_Reward[3306074] = {}
	tGratefulActivity_Reward[3306074][1] = {}
	tGratefulActivity_Reward[3306074][1]["ItemChanceSum"] = 10000
	
	-- +1赤练石   10%
	tGratefulActivity_Reward[3306074][1][1] = {}
	tGratefulActivity_Reward[3306074][1][1]["RandomItemChanceType"] = 2
	tGratefulActivity_Reward[3306074][1][1]["ItemChance"] = 1000
	tGratefulActivity_Reward[3306074][1][1]["RewardEffect"] = {}
	tGratefulActivity_Reward[3306074][1][1]["RewardEffect"]["SzObj"] = tGratefulActivity_Data["SzObj"]
	tGratefulActivity_Reward[3306074][1][1]["RewardEffect"]["Effect"] = tGratefulActivity_Data["Effect"][1]
	tGratefulActivity_Reward[3306074][1][1]["RewardItem"] = {}
	tGratefulActivity_Reward[3306074][1][1]["RewardItem"][1] = {}
	tGratefulActivity_Reward[3306074][1][1]["RewardItem"][1]["Id"] = 730001
	tGratefulActivity_Reward[3306074][1][1]["RewardItem"][1]["Attr"] = "0 1"
	tGratefulActivity_Reward[3306074][1][1]["Talk"] = tGratefulActivity_Text[3306074][1]
	tGratefulActivity_Reward[3306074][1][1]["LogId"] = 12000913
	tGratefulActivity_Reward[3306074][1][1]["LogStep"] = "2"
	tGratefulActivity_Reward[3306074][1][1]["Flag"] = 1
	
	-- +2赤练石   20%
	tGratefulActivity_Reward[3306074][1][2] = {}
	tGratefulActivity_Reward[3306074][1][2]["RandomItemChanceType"] = 2
	tGratefulActivity_Reward[3306074][1][2]["ItemChance"] = 2000
	tGratefulActivity_Reward[3306074][1][2]["RewardEffect"] = {}
	tGratefulActivity_Reward[3306074][1][2]["RewardEffect"]["SzObj"] = tGratefulActivity_Data["SzObj"]
	tGratefulActivity_Reward[3306074][1][2]["RewardEffect"]["Effect"] = tGratefulActivity_Data["Effect"][2]
	tGratefulActivity_Reward[3306074][1][2]["RewardItem"] = {}
	tGratefulActivity_Reward[3306074][1][2]["RewardItem"][1] = {}
	tGratefulActivity_Reward[3306074][1][2]["RewardItem"][1]["Id"] = 730002
	tGratefulActivity_Reward[3306074][1][2]["RewardItem"][1]["Attr"] = "0 1"
	tGratefulActivity_Reward[3306074][1][2]["Talk"] = tGratefulActivity_Text[3306074][2]
	tGratefulActivity_Reward[3306074][1][2]["LogId"] = 12000913
	tGratefulActivity_Reward[3306074][1][2]["LogStep"] = "2"
	tGratefulActivity_Reward[3306074][1][2]["Flag"] = 2
	
	-- +3赤练石    40%
	tGratefulActivity_Reward[3306074][1][3] = {}
	tGratefulActivity_Reward[3306074][1][3]["RandomItemChanceType"] = 2
	tGratefulActivity_Reward[3306074][1][3]["ItemChance"] = 4000
	tGratefulActivity_Reward[3306074][1][3]["RewardEffect"] = {}
	tGratefulActivity_Reward[3306074][1][3]["RewardEffect"]["SzObj"] = tGratefulActivity_Data["SzObj"]
	tGratefulActivity_Reward[3306074][1][3]["RewardEffect"]["Effect"] = tGratefulActivity_Data["Effect"][3]
	tGratefulActivity_Reward[3306074][1][3]["RewardItem"] = {}
	tGratefulActivity_Reward[3306074][1][3]["RewardItem"][1] = {}
	tGratefulActivity_Reward[3306074][1][3]["RewardItem"][1]["Id"] = 730003
	tGratefulActivity_Reward[3306074][1][3]["RewardItem"][1]["Attr"] = "0 1"
	tGratefulActivity_Reward[3306074][1][3]["Talk"] = tGratefulActivity_Text[3306074][3]
	tGratefulActivity_Reward[3306074][1][3]["LogId"] = 12000913
	tGratefulActivity_Reward[3306074][1][3]["LogStep"] = "2"
	tGratefulActivity_Reward[3306074][1][3]["Flag"] = 3
	
	-- +4赤练石    15%
	tGratefulActivity_Reward[3306074][1][4] = {}
	tGratefulActivity_Reward[3306074][1][4]["RandomItemChanceType"] = 2
	tGratefulActivity_Reward[3306074][1][4]["ItemChance"] = 1500
	tGratefulActivity_Reward[3306074][1][4]["RewardEffect"] = {}
	tGratefulActivity_Reward[3306074][1][4]["RewardEffect"]["SzObj"] = tGratefulActivity_Data["SzObj"]
	tGratefulActivity_Reward[3306074][1][4]["RewardEffect"]["Effect"] = tGratefulActivity_Data["Effect"][4]
	tGratefulActivity_Reward[3306074][1][4]["RewardItem"] = {}
	tGratefulActivity_Reward[3306074][1][4]["RewardItem"][1] = {}
	tGratefulActivity_Reward[3306074][1][4]["RewardItem"][1]["Id"] = 730004
	tGratefulActivity_Reward[3306074][1][4]["RewardItem"][1]["Attr"] = "0 1"
	tGratefulActivity_Reward[3306074][1][4]["Talk"] = tGratefulActivity_Text[3306074][4]
	tGratefulActivity_Reward[3306074][1][4]["GlobalId"] = 51812
	tGratefulActivity_Reward[3306074][1][4]["Pos"] = 1 
	tGratefulActivity_Reward[3306074][1][4]["MaxData"] = 100
	tGratefulActivity_Reward[3306074][1][4]["FullIndex"] = 2
	tGratefulActivity_Reward[3306074][1][4]["LogId"] = 12000913
	tGratefulActivity_Reward[3306074][1][4]["LogStep"] = "2"
	tGratefulActivity_Reward[3306074][1][4]["Flag"] = 4
	
	-- +5赤练石    10%
	tGratefulActivity_Reward[3306074][1][5] = {}
	tGratefulActivity_Reward[3306074][1][5]["RandomItemChanceType"] = 2
	tGratefulActivity_Reward[3306074][1][5]["ItemChance"] = 1000
	tGratefulActivity_Reward[3306074][1][5]["RewardEffect"] = {}
	tGratefulActivity_Reward[3306074][1][5]["RewardEffect"]["SzObj"] = tGratefulActivity_Data["SzObj"]
	tGratefulActivity_Reward[3306074][1][5]["RewardEffect"]["Effect"] = tGratefulActivity_Data["Effect"][5]
	tGratefulActivity_Reward[3306074][1][5]["RewardItem"] = {}
	tGratefulActivity_Reward[3306074][1][5]["RewardItem"][1] = {}
	tGratefulActivity_Reward[3306074][1][5]["RewardItem"][1]["Id"] = 730005
	tGratefulActivity_Reward[3306074][1][5]["RewardItem"][1]["Attr"] = "0 1"
	tGratefulActivity_Reward[3306074][1][5]["Talk"] = tGratefulActivity_Text[3306074][5]
	tGratefulActivity_Reward[3306074][1][5]["GlobalId"] = 51812
	tGratefulActivity_Reward[3306074][1][5]["Pos"] = 2 
	tGratefulActivity_Reward[3306074][1][5]["MaxData"] = 50
	tGratefulActivity_Reward[3306074][1][5]["FullIndex"] = 1
	tGratefulActivity_Reward[3306074][1][5]["LogId"] = 12000913
	tGratefulActivity_Reward[3306074][1][5]["LogStep"] = "2"
	tGratefulActivity_Reward[3306074][1][5]["Flag"] = 5
	
	-- +6赤练石   5%
	tGratefulActivity_Reward[3306074][1][6] = {}
	tGratefulActivity_Reward[3306074][1][6]["RandomItemChanceType"] = 2
	tGratefulActivity_Reward[3306074][1][6]["ItemChance"] = 500
	tGratefulActivity_Reward[3306074][1][6]["RewardEffect"] = {}
	tGratefulActivity_Reward[3306074][1][6]["RewardEffect"]["SzObj"] = tGratefulActivity_Data["SzObj"]
	tGratefulActivity_Reward[3306074][1][6]["RewardEffect"]["Effect"] = tGratefulActivity_Data["Effect"][6]
	tGratefulActivity_Reward[3306074][1][6]["RewardItem"] = {}
	tGratefulActivity_Reward[3306074][1][6]["RewardItem"][1] = {}
	tGratefulActivity_Reward[3306074][1][6]["RewardItem"][1]["Id"] = 730006
	tGratefulActivity_Reward[3306074][1][6]["RewardItem"][1]["Attr"] = "0 1"
	tGratefulActivity_Reward[3306074][1][6]["Talk"] = tGratefulActivity_Text[3306074][6]
	tGratefulActivity_Reward[3306074][1][6]["GlobalId"] = 51812
	tGratefulActivity_Reward[3306074][1][6]["Pos"] = 3 
	tGratefulActivity_Reward[3306074][1][6]["MaxData"] = 3
	tGratefulActivity_Reward[3306074][1][6]["FullIndex"] = 1
	tGratefulActivity_Reward[3306074][1][6]["LogId"] = 12000913
	tGratefulActivity_Reward[3306074][1][6]["LogStep"] = "2"
	tGratefulActivity_Reward[3306074][1][6]["Flag"] = 6
	
	--星陨石骰子
	tGratefulActivity_Reward[3306075] = {}
	tGratefulActivity_Reward[3306075][1] = {}
	tGratefulActivity_Reward[3306075][1]["ItemChanceSum"] = 10000
	
	-- 明亮星陨石*1   10%
	tGratefulActivity_Reward[3306075][1][1] = {}
	tGratefulActivity_Reward[3306075][1][1]["RandomItemChanceType"] = 2
	tGratefulActivity_Reward[3306075][1][1]["ItemChance"] = 1000
	tGratefulActivity_Reward[3306075][1][1]["RewardEffect"] = {}
	tGratefulActivity_Reward[3306075][1][1]["RewardEffect"]["SzObj"] = tGratefulActivity_Data["SzObj"]
	tGratefulActivity_Reward[3306075][1][1]["RewardEffect"]["Effect"] = tGratefulActivity_Data["Effect"][1]
	tGratefulActivity_Reward[3306075][1][1]["RewardItem"] = {}
	tGratefulActivity_Reward[3306075][1][1]["RewardItem"][1] = {}
	tGratefulActivity_Reward[3306075][1][1]["RewardItem"][1]["Id"] = 3009001
	tGratefulActivity_Reward[3306075][1][1]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tGratefulActivity_Reward[3306075][1][1]["Talk"] = tGratefulActivity_Text[3306075][1]
	tGratefulActivity_Reward[3306075][1][1]["LogId"] = 12000913
	tGratefulActivity_Reward[3306075][1][1]["LogStep"] = "2"
	tGratefulActivity_Reward[3306075][1][1]["Flag"] = 1
	
	-- 明亮星陨石*3   20%
	tGratefulActivity_Reward[3306075][1][2] = {}
	tGratefulActivity_Reward[3306075][1][2]["RandomItemChanceType"] = 2
	tGratefulActivity_Reward[3306075][1][2]["ItemChance"] = 2000
	tGratefulActivity_Reward[3306075][1][2]["RewardEffect"] = {}
	tGratefulActivity_Reward[3306075][1][2]["RewardEffect"]["SzObj"] = tGratefulActivity_Data["SzObj"]
	tGratefulActivity_Reward[3306075][1][2]["RewardEffect"]["Effect"] = tGratefulActivity_Data["Effect"][2]
	tGratefulActivity_Reward[3306075][1][2]["RewardItem"] = {}
	tGratefulActivity_Reward[3306075][1][2]["RewardItem"][1] = {}
	tGratefulActivity_Reward[3306075][1][2]["RewardItem"][1]["Id"] = 3009001
	tGratefulActivity_Reward[3306075][1][2]["RewardItem"][1]["Attr"] = "0 3 0 2880 1"
	tGratefulActivity_Reward[3306075][1][2]["Talk"] = tGratefulActivity_Text[3306075][2]
	tGratefulActivity_Reward[3306075][1][2]["LogId"] = 12000913
	tGratefulActivity_Reward[3306075][1][2]["LogStep"] = "2"
	tGratefulActivity_Reward[3306075][1][2]["Flag"] = 2
	
	-- 明亮星陨石*5   40%
	tGratefulActivity_Reward[3306075][1][3] = {}
	tGratefulActivity_Reward[3306075][1][3]["RandomItemChanceType"] = 2
	tGratefulActivity_Reward[3306075][1][3]["ItemChance"] = 4000
	tGratefulActivity_Reward[3306075][1][3]["RewardEffect"] = {}
	tGratefulActivity_Reward[3306075][1][3]["RewardEffect"]["SzObj"] = tGratefulActivity_Data["SzObj"]
	tGratefulActivity_Reward[3306075][1][3]["RewardEffect"]["Effect"] = tGratefulActivity_Data["Effect"][3]
	tGratefulActivity_Reward[3306075][1][3]["RewardItem"] = {}
	tGratefulActivity_Reward[3306075][1][3]["RewardItem"][1] = {}
	tGratefulActivity_Reward[3306075][1][3]["RewardItem"][1]["Id"] = 3009001
	tGratefulActivity_Reward[3306075][1][3]["RewardItem"][1]["Attr"] = "0 5 0 2880 1"
	tGratefulActivity_Reward[3306075][1][3]["Talk"] = tGratefulActivity_Text[3306075][3]
	tGratefulActivity_Reward[3306075][1][3]["LogId"] = 12000913
	tGratefulActivity_Reward[3306075][1][3]["LogStep"] = "2"
	tGratefulActivity_Reward[3306075][1][3]["Flag"] = 3
	
	-- 晶莹星陨石*1  15%
	tGratefulActivity_Reward[3306075][1][4] = {}
	tGratefulActivity_Reward[3306075][1][4]["RandomItemChanceType"] = 2
	tGratefulActivity_Reward[3306075][1][4]["ItemChance"] = 1500
	tGratefulActivity_Reward[3306075][1][4]["RewardEffect"] = {}
	tGratefulActivity_Reward[3306075][1][4]["RewardEffect"]["SzObj"] = tGratefulActivity_Data["SzObj"]
	tGratefulActivity_Reward[3306075][1][4]["RewardEffect"]["Effect"] = tGratefulActivity_Data["Effect"][4]
	tGratefulActivity_Reward[3306075][1][4]["RewardItem"] = {}
	tGratefulActivity_Reward[3306075][1][4]["RewardItem"][1] = {}
	tGratefulActivity_Reward[3306075][1][4]["RewardItem"][1]["Id"] = 3009002
	tGratefulActivity_Reward[3306075][1][4]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tGratefulActivity_Reward[3306075][1][4]["Talk"] = tGratefulActivity_Text[3306075][4]
	tGratefulActivity_Reward[3306075][1][4]["LogId"] = 12000913
	tGratefulActivity_Reward[3306075][1][4]["LogStep"] = "2"
	tGratefulActivity_Reward[3306075][1][4]["Flag"] = 4
	
	-- 晶莹星陨石*3   10%
	tGratefulActivity_Reward[3306075][1][5] = {}
	tGratefulActivity_Reward[3306075][1][5]["RandomItemChanceType"] = 2
	tGratefulActivity_Reward[3306075][1][5]["ItemChance"] = 1000
	tGratefulActivity_Reward[3306075][1][5]["RewardEffect"] = {}
	tGratefulActivity_Reward[3306075][1][5]["RewardEffect"]["SzObj"] = tGratefulActivity_Data["SzObj"]
	tGratefulActivity_Reward[3306075][1][5]["RewardEffect"]["Effect"] = tGratefulActivity_Data["Effect"][5]
	tGratefulActivity_Reward[3306075][1][5]["RewardItem"] = {}
	tGratefulActivity_Reward[3306075][1][5]["RewardItem"][1] = {}
	tGratefulActivity_Reward[3306075][1][5]["RewardItem"][1]["Id"] = 3009002
	tGratefulActivity_Reward[3306075][1][5]["RewardItem"][1]["Attr"] = "0 3 0 2880 1"
	tGratefulActivity_Reward[3306075][1][5]["Talk"] = tGratefulActivity_Text[3306075][5]
	tGratefulActivity_Reward[3306075][1][5]["LogId"] = 12000913
	tGratefulActivity_Reward[3306075][1][5]["LogStep"] = "2"
	tGratefulActivity_Reward[3306075][1][5]["Flag"] = 5
	
	-- 璀璨星云石*1   5%
	tGratefulActivity_Reward[3306075][1][6] = {}
	tGratefulActivity_Reward[3306075][1][6]["RandomItemChanceType"] = 2
	tGratefulActivity_Reward[3306075][1][6]["ItemChance"] = 500
	tGratefulActivity_Reward[3306075][1][6]["RewardEffect"] = {}
	tGratefulActivity_Reward[3306075][1][6]["RewardEffect"]["SzObj"] = tGratefulActivity_Data["SzObj"]
	tGratefulActivity_Reward[3306075][1][6]["RewardEffect"]["Effect"] = tGratefulActivity_Data["Effect"][6]
	tGratefulActivity_Reward[3306075][1][6]["RewardItem"] = {}
	tGratefulActivity_Reward[3306075][1][6]["RewardItem"][1] = {}
	tGratefulActivity_Reward[3306075][1][6]["RewardItem"][1]["Id"] = 3009003
	tGratefulActivity_Reward[3306075][1][6]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tGratefulActivity_Reward[3306075][1][6]["Talk"] = tGratefulActivity_Text[3306075][6]
	tGratefulActivity_Reward[3306075][1][6]["LogId"] = 12000913
	tGratefulActivity_Reward[3306075][1][6]["LogStep"] = "2"
	tGratefulActivity_Reward[3306075][1][6]["Flag"] = 6
	
	
	--超级经验丹
	tGratefulActivity_Reward[3306083] = {}
	tGratefulActivity_Reward[3306083]["RewardEffect"] = {}
	tGratefulActivity_Reward[3306083]["RewardEffect"]["SzObj"] = tGratefulActivity_Data["SzObj"]
	tGratefulActivity_Reward[3306083]["RewardEffect"]["Effect"] = tGratefulActivity_Data["Effect"][7]
	tGratefulActivity_Reward[3306083]["DeleteItem"] = {}
	tGratefulActivity_Reward[3306083]["DeleteItem"][1] = {}
	tGratefulActivity_Reward[3306083]["DeleteItem"][1]["Id"] = 3306083
	tGratefulActivity_Reward[3306083]["RewardItem"] = {}
	tGratefulActivity_Reward[3306083]["RewardItem"][1] = {}
	tGratefulActivity_Reward[3306083]["RewardItem"][1]["Id"] = 722057
	tGratefulActivity_Reward[3306083]["RewardItem"][1]["Attr"] = "0 1 3"
	tGratefulActivity_Reward[3306083]["LogId"] = 12000913
	
	--大爆丹
	tGratefulActivity_Reward[3306084] = {}
	tGratefulActivity_Reward[3306084]["RewardEffect"] = {}
	tGratefulActivity_Reward[3306084]["RewardEffect"]["SzObj"] = tGratefulActivity_Data["SzObj"]
	tGratefulActivity_Reward[3306084]["RewardEffect"]["Effect"] = tGratefulActivity_Data["Effect"][7]
	tGratefulActivity_Reward[3306084]["DeleteItem"] = {}
	tGratefulActivity_Reward[3306084]["DeleteItem"][1] = {}
	tGratefulActivity_Reward[3306084]["DeleteItem"][1]["Id"] = 3306084
	tGratefulActivity_Reward[3306084]["RewardItem"] = {}
	tGratefulActivity_Reward[3306084]["RewardItem"][1] = {}
	tGratefulActivity_Reward[3306084]["RewardItem"][1]["Id"] = 3003126
	tGratefulActivity_Reward[3306084]["RewardItem"][1]["Attr"] = "0 10"
	tGratefulActivity_Reward[3306084]["LogId"] = 12000913
	
	--练气保护道具
	tGratefulActivity_Reward[3306087] = {}
	tGratefulActivity_Reward[3306087]["RewardEffect"] = {}
	tGratefulActivity_Reward[3306087]["RewardEffect"]["SzObj"] = tGratefulActivity_Data["SzObj"]
	tGratefulActivity_Reward[3306087]["RewardEffect"]["Effect"] = tGratefulActivity_Data["Effect"][7]
	tGratefulActivity_Reward[3306087]["DeleteItem"] = {}
	tGratefulActivity_Reward[3306087]["DeleteItem"][1] = {}
	tGratefulActivity_Reward[3306087]["DeleteItem"][1]["Id"] = 3306087
	tGratefulActivity_Reward[3306087]["RewardItem"] = {}
	tGratefulActivity_Reward[3306087]["RewardItem"][1] = {}
	tGratefulActivity_Reward[3306087]["RewardItem"][1]["Id"] = 3005360
	tGratefulActivity_Reward[3306087]["RewardItem"][1]["Attr"] = "0 1"
	tGratefulActivity_Reward[3306087]["LogId"] = 12000913
	
	--特转药水
	tGratefulActivity_Reward[3306088] = {}
	tGratefulActivity_Reward[3306088]["RewardEffect"] = {}
	tGratefulActivity_Reward[3306088]["RewardEffect"]["SzObj"] = tGratefulActivity_Data["SzObj"]
	tGratefulActivity_Reward[3306088]["RewardEffect"]["Effect"] = tGratefulActivity_Data["Effect"][7]
	tGratefulActivity_Reward[3306088]["DeleteItem"] = {}
	tGratefulActivity_Reward[3306088]["DeleteItem"][1] = {}
	tGratefulActivity_Reward[3306088]["DeleteItem"][1]["Id"] = 3306088
	tGratefulActivity_Reward[3306088]["RewardItem"] = {}
	tGratefulActivity_Reward[3306088]["RewardItem"][1] = {}
	tGratefulActivity_Reward[3306088]["RewardItem"][1]["Id"] = 711083
	tGratefulActivity_Reward[3306088]["RewardItem"][1]["Attr"] = "0 10"
	tGratefulActivity_Reward[3306088]["LogId"] = 12000913
	
	--真气礼包
	tGratefulActivity_Reward[3306090] = {}
	tGratefulActivity_Reward[3306090]["RewardEffect"] = {}
	tGratefulActivity_Reward[3306090]["RewardEffect"]["SzObj"] = tGratefulActivity_Data["SzObj"]
	tGratefulActivity_Reward[3306090]["RewardEffect"]["Effect"] = tGratefulActivity_Data["Effect"][7]
	tGratefulActivity_Reward[3306090]["DeleteItem"] = {}
	tGratefulActivity_Reward[3306090]["DeleteItem"][1] = {}
	tGratefulActivity_Reward[3306090]["DeleteItem"][1]["Id"] = 3306090
	tGratefulActivity_Reward[3306090]["RewardItem"] = {}
	tGratefulActivity_Reward[3306090]["RewardItem"][1] = {}
	tGratefulActivity_Reward[3306090]["RewardItem"][1]["Id"] = 3006542
	tGratefulActivity_Reward[3306090]["RewardItem"][1]["Attr"] = "0 50"
	tGratefulActivity_Reward[3306090]["LogId"] = 12000913
	
	--SunlightSwimsuit
	tGratefulActivity_Reward[3306091] = {}
	tGratefulActivity_Reward[3306091]["RewardEffect"] = {}
	tGratefulActivity_Reward[3306091]["RewardEffect"]["SzObj"] = tGratefulActivity_Data["SzObj"]
	tGratefulActivity_Reward[3306091]["RewardEffect"]["Effect"] = tGratefulActivity_Data["Effect"][7]
	tGratefulActivity_Reward[3306091]["DeleteItem"] = {}
	tGratefulActivity_Reward[3306091]["DeleteItem"][1] = {}
	tGratefulActivity_Reward[3306091]["DeleteItem"][1]["Id"] = 3306091
	tGratefulActivity_Reward[3306091]["RewardItem"] = {}
	tGratefulActivity_Reward[3306091]["RewardItem"][1] = {}
	tGratefulActivity_Reward[3306091]["RewardItem"][1]["Id"] = 189665
	tGratefulActivity_Reward[3306091]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1"
	tGratefulActivity_Reward[3306091]["LogId"] = 12000913
	
	--GoldenDream
	tGratefulActivity_Reward[3306092] = {}
	tGratefulActivity_Reward[3306092]["RewardEffect"] = {}
	tGratefulActivity_Reward[3306092]["RewardEffect"]["SzObj"] = tGratefulActivity_Data["SzObj"]
	tGratefulActivity_Reward[3306092]["RewardEffect"]["Effect"] = tGratefulActivity_Data["Effect"][7]
	tGratefulActivity_Reward[3306092]["DeleteItem"] = {}
	tGratefulActivity_Reward[3306092]["DeleteItem"][1] = {}
	tGratefulActivity_Reward[3306092]["DeleteItem"][1]["Id"] = 3306092
	tGratefulActivity_Reward[3306092]["RewardItem"] = {}
	tGratefulActivity_Reward[3306092]["RewardItem"][1] = {}
	tGratefulActivity_Reward[3306092]["RewardItem"][1]["Id"] = 188655
	tGratefulActivity_Reward[3306092]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1"
	tGratefulActivity_Reward[3306092]["LogId"] = 12000913
	
	--EndlessDance
	tGratefulActivity_Reward[3306093] = {}
	tGratefulActivity_Reward[3306093]["RewardEffect"] = {}
	tGratefulActivity_Reward[3306093]["RewardEffect"]["SzObj"] = tGratefulActivity_Data["SzObj"]
	tGratefulActivity_Reward[3306093]["RewardEffect"]["Effect"] = tGratefulActivity_Data["Effect"][7]
	tGratefulActivity_Reward[3306093]["DeleteItem"] = {}
	tGratefulActivity_Reward[3306093]["DeleteItem"][1] = {}
	tGratefulActivity_Reward[3306093]["DeleteItem"][1]["Id"] = 3306093
	tGratefulActivity_Reward[3306093]["RewardItem"] = {}
	tGratefulActivity_Reward[3306093]["RewardItem"][1] = {}
	tGratefulActivity_Reward[3306093]["RewardItem"][1]["Id"] = 189245
	tGratefulActivity_Reward[3306093]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1"
	tGratefulActivity_Reward[3306093]["LogId"] = 12000913
	
	--TwinBliss
	tGratefulActivity_Reward[3306094] = {}
	tGratefulActivity_Reward[3306094]["RewardEffect"] = {}
	tGratefulActivity_Reward[3306094]["RewardEffect"]["SzObj"] = tGratefulActivity_Data["SzObj"]
	tGratefulActivity_Reward[3306094]["RewardEffect"]["Effect"] = tGratefulActivity_Data["Effect"][7]
	tGratefulActivity_Reward[3306094]["DeleteItem"] = {}
	tGratefulActivity_Reward[3306094]["DeleteItem"][1] = {}
	tGratefulActivity_Reward[3306094]["DeleteItem"][1]["Id"] = 3306094
	tGratefulActivity_Reward[3306094]["RewardItem"] = {}
	tGratefulActivity_Reward[3306094]["RewardItem"][1] = {}
	tGratefulActivity_Reward[3306094]["RewardItem"][1]["Id"] = 192575
	tGratefulActivity_Reward[3306094]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1"
	tGratefulActivity_Reward[3306094]["LogId"] = 12000913
	
	--AzureLotus
	tGratefulActivity_Reward[3306095] = {}
	tGratefulActivity_Reward[3306095]["RewardEffect"] = {}
	tGratefulActivity_Reward[3306095]["RewardEffect"]["SzObj"] = tGratefulActivity_Data["SzObj"]
	tGratefulActivity_Reward[3306095]["RewardEffect"]["Effect"] = tGratefulActivity_Data["Effect"][7]
	tGratefulActivity_Reward[3306095]["DeleteItem"] = {}
	tGratefulActivity_Reward[3306095]["DeleteItem"][1] = {}
	tGratefulActivity_Reward[3306095]["DeleteItem"][1]["Id"] = 3306095
	tGratefulActivity_Reward[3306095]["RewardItem"] = {}
	tGratefulActivity_Reward[3306095]["RewardItem"][1] = {}
	tGratefulActivity_Reward[3306095]["RewardItem"][1]["Id"] = 200570
	tGratefulActivity_Reward[3306095]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1"
	tGratefulActivity_Reward[3306095]["LogId"] = 12000913
	
	--CuteMonkey
	tGratefulActivity_Reward[3306096] = {}
	tGratefulActivity_Reward[3306096]["RewardEffect"] = {}
	tGratefulActivity_Reward[3306096]["RewardEffect"]["SzObj"] = tGratefulActivity_Data["SzObj"]
	tGratefulActivity_Reward[3306096]["RewardEffect"]["Effect"] = tGratefulActivity_Data["Effect"][7]
	tGratefulActivity_Reward[3306096]["DeleteItem"] = {}
	tGratefulActivity_Reward[3306096]["DeleteItem"][1] = {}
	tGratefulActivity_Reward[3306096]["DeleteItem"][1]["Id"] = 3306096
	tGratefulActivity_Reward[3306096]["RewardItem"] = {}
	tGratefulActivity_Reward[3306096]["RewardItem"][1] = {}
	tGratefulActivity_Reward[3306096]["RewardItem"][1]["Id"] = 200553
	tGratefulActivity_Reward[3306096]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1"
	tGratefulActivity_Reward[3306096]["LogId"] = 12000913
	
	--StarRoosterDream
	tGratefulActivity_Reward[3306097] = {}
	tGratefulActivity_Reward[3306097]["RewardEffect"] = {}
	tGratefulActivity_Reward[3306097]["RewardEffect"]["SzObj"] = tGratefulActivity_Data["SzObj"]
	tGratefulActivity_Reward[3306097]["RewardEffect"]["Effect"] = tGratefulActivity_Data["Effect"][7]
	tGratefulActivity_Reward[3306097]["DeleteItem"] = {}
	tGratefulActivity_Reward[3306097]["DeleteItem"][1] = {}
	tGratefulActivity_Reward[3306097]["DeleteItem"][1]["Id"] = 3306097
	tGratefulActivity_Reward[3306097]["RewardItem"] = {}
	tGratefulActivity_Reward[3306097]["RewardItem"][1] = {}
	tGratefulActivity_Reward[3306097]["RewardItem"][1]["Id"] = 200584
	tGratefulActivity_Reward[3306097]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1"
	tGratefulActivity_Reward[3306097]["LogId"] = 12000913
	
	--SaintDragon
	tGratefulActivity_Reward[3306098] = {}
	tGratefulActivity_Reward[3306098]["RewardEffect"] = {}
	tGratefulActivity_Reward[3306098]["RewardEffect"]["SzObj"] = tGratefulActivity_Data["SzObj"]
	tGratefulActivity_Reward[3306098]["RewardEffect"]["Effect"] = tGratefulActivity_Data["Effect"][7]
	tGratefulActivity_Reward[3306098]["DeleteItem"] = {}
	tGratefulActivity_Reward[3306098]["DeleteItem"][1] = {}
	tGratefulActivity_Reward[3306098]["DeleteItem"][1]["Id"] = 3306098
	tGratefulActivity_Reward[3306098]["RewardItem"] = {}
	tGratefulActivity_Reward[3306098]["RewardItem"][1] = {}
	tGratefulActivity_Reward[3306098]["RewardItem"][1]["Id"] = 200421
	tGratefulActivity_Reward[3306098]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1"
	tGratefulActivity_Reward[3306098]["LogId"] = 12000913
	
	--DaybreakRooster（legend）
	tGratefulActivity_Reward[3306099] = {}
	tGratefulActivity_Reward[3306099]["RewardEffect"] = {}
	tGratefulActivity_Reward[3306099]["RewardEffect"]["SzObj"] = tGratefulActivity_Data["SzObj"]
	tGratefulActivity_Reward[3306099]["RewardEffect"]["Effect"] = tGratefulActivity_Data["Effect"][7]
	tGratefulActivity_Reward[3306099]["DeleteItem"] = {}
	tGratefulActivity_Reward[3306099]["DeleteItem"][1] = {}
	tGratefulActivity_Reward[3306099]["DeleteItem"][1]["Id"] = 3306099
	tGratefulActivity_Reward[3306099]["RewardItem"] = {}
	tGratefulActivity_Reward[3306099]["RewardItem"][1] = {}
	tGratefulActivity_Reward[3306099]["RewardItem"][1]["Id"] = 193775
	tGratefulActivity_Reward[3306099]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1"
	tGratefulActivity_Reward[3306099]["LogId"] = 12000913
	
	--LionofFury（legend）
	tGratefulActivity_Reward[3306100] = {}
	tGratefulActivity_Reward[3306100]["RewardEffect"] = {}
	tGratefulActivity_Reward[3306100]["RewardEffect"]["SzObj"] = tGratefulActivity_Data["SzObj"]
	tGratefulActivity_Reward[3306100]["RewardEffect"]["Effect"] = tGratefulActivity_Data["Effect"][7]
	tGratefulActivity_Reward[3306100]["DeleteItem"] = {}
	tGratefulActivity_Reward[3306100]["DeleteItem"][1] = {}
	tGratefulActivity_Reward[3306100]["DeleteItem"][1]["Id"] = 3306100
	tGratefulActivity_Reward[3306100]["RewardItem"] = {}
	tGratefulActivity_Reward[3306100]["RewardItem"][1] = {}
	tGratefulActivity_Reward[3306100]["RewardItem"][1]["Id"] = 193785
	tGratefulActivity_Reward[3306100]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1"
	tGratefulActivity_Reward[3306100]["LogId"] = 12000913
	
	--ValiantHero（legend）
	tGratefulActivity_Reward[3306101] = {}
	tGratefulActivity_Reward[3306101]["RewardEffect"] = {}
	tGratefulActivity_Reward[3306101]["RewardEffect"]["SzObj"] = tGratefulActivity_Data["SzObj"]
	tGratefulActivity_Reward[3306101]["RewardEffect"]["Effect"] = tGratefulActivity_Data["Effect"][7]
	tGratefulActivity_Reward[3306101]["DeleteItem"] = {}
	tGratefulActivity_Reward[3306101]["DeleteItem"][1] = {}
	tGratefulActivity_Reward[3306101]["DeleteItem"][1]["Id"] = 3306101
	tGratefulActivity_Reward[3306101]["RewardItem"] = {}
	tGratefulActivity_Reward[3306101]["RewardItem"][1] = {}
	tGratefulActivity_Reward[3306101]["RewardItem"][1]["Id"] = 193795
	tGratefulActivity_Reward[3306101]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1"
	tGratefulActivity_Reward[3306101]["LogId"] = 12000913
	
	--BlueResrugence（legend）
	tGratefulActivity_Reward[3306102] = {}
	tGratefulActivity_Reward[3306102]["RewardEffect"] = {}
	tGratefulActivity_Reward[3306102]["RewardEffect"]["SzObj"] = tGratefulActivity_Data["SzObj"]
	tGratefulActivity_Reward[3306102]["RewardEffect"]["Effect"] = tGratefulActivity_Data["Effect"][7]
	tGratefulActivity_Reward[3306102]["DeleteItem"] = {}
	tGratefulActivity_Reward[3306102]["DeleteItem"][1] = {}
	tGratefulActivity_Reward[3306102]["DeleteItem"][1]["Id"] = 3306102
	tGratefulActivity_Reward[3306102]["RewardItem"] = {}
	tGratefulActivity_Reward[3306102]["RewardItem"][1] = {}
	tGratefulActivity_Reward[3306102]["RewardItem"][1]["Id"] = 193805
	tGratefulActivity_Reward[3306102]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1"
	tGratefulActivity_Reward[3306102]["LogId"] = 12000913
	
	--GermanyJersey（legend）
	tGratefulActivity_Reward[3306103] = {}
	tGratefulActivity_Reward[3306103]["RewardEffect"] = {}
	tGratefulActivity_Reward[3306103]["RewardEffect"]["SzObj"] = tGratefulActivity_Data["SzObj"]
	tGratefulActivity_Reward[3306103]["RewardEffect"]["Effect"] = tGratefulActivity_Data["Effect"][7]
	tGratefulActivity_Reward[3306103]["DeleteItem"] = {}
	tGratefulActivity_Reward[3306103]["DeleteItem"][1] = {}
	tGratefulActivity_Reward[3306103]["DeleteItem"][1]["Id"] = 3306103
	tGratefulActivity_Reward[3306103]["RewardItem"] = {}
	tGratefulActivity_Reward[3306103]["RewardItem"][1] = {}
	tGratefulActivity_Reward[3306103]["RewardItem"][1]["Id"] = 193815
	tGratefulActivity_Reward[3306103]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1"
	tGratefulActivity_Reward[3306103]["LogId"] = 12000913
	
	--SpainJersey（legend）
	tGratefulActivity_Reward[3306104] = {}
	tGratefulActivity_Reward[3306104]["RewardEffect"] = {}
	tGratefulActivity_Reward[3306104]["RewardEffect"]["SzObj"] = tGratefulActivity_Data["SzObj"]
	tGratefulActivity_Reward[3306104]["RewardEffect"]["Effect"] = tGratefulActivity_Data["Effect"][7]
	tGratefulActivity_Reward[3306104]["DeleteItem"] = {}
	tGratefulActivity_Reward[3306104]["DeleteItem"][1] = {}
	tGratefulActivity_Reward[3306104]["DeleteItem"][1]["Id"] = 3306104
	tGratefulActivity_Reward[3306104]["RewardItem"] = {}
	tGratefulActivity_Reward[3306104]["RewardItem"][1] = {}
	tGratefulActivity_Reward[3306104]["RewardItem"][1]["Id"] = 193825
	tGratefulActivity_Reward[3306104]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1"
	tGratefulActivity_Reward[3306104]["LogId"] = 12000913
	
	--EpicofACRockets(Signed)
	tGratefulActivity_Reward[3306105] = {}
	tGratefulActivity_Reward[3306105]["RewardEffect"] = {}
	tGratefulActivity_Reward[3306105]["RewardEffect"]["SzObj"] = tGratefulActivity_Data["SzObj"]
	tGratefulActivity_Reward[3306105]["RewardEffect"]["Effect"] = tGratefulActivity_Data["Effect"][7]
	tGratefulActivity_Reward[3306105]["DeleteItem"] = {}
	tGratefulActivity_Reward[3306105]["DeleteItem"][1] = {}
	tGratefulActivity_Reward[3306105]["DeleteItem"][1]["Id"] = 3306105
	tGratefulActivity_Reward[3306105]["RewardItem"] = {}
	tGratefulActivity_Reward[3306105]["RewardItem"][1] = {}
	tGratefulActivity_Reward[3306105]["RewardItem"][1]["Id"] = 194695
	tGratefulActivity_Reward[3306105]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1"
	tGratefulActivity_Reward[3306105]["LogId"] = 12000913
	
	--DynastyofTCLakers(Signed)
	tGratefulActivity_Reward[3306106] = {}
	tGratefulActivity_Reward[3306106]["RewardEffect"] = {}
	tGratefulActivity_Reward[3306106]["RewardEffect"]["SzObj"] = tGratefulActivity_Data["SzObj"]
	tGratefulActivity_Reward[3306106]["RewardEffect"]["Effect"] = tGratefulActivity_Data["Effect"][7]
	tGratefulActivity_Reward[3306106]["DeleteItem"] = {}
	tGratefulActivity_Reward[3306106]["DeleteItem"][1] = {}
	tGratefulActivity_Reward[3306106]["DeleteItem"][1]["Id"] = 3306106
	tGratefulActivity_Reward[3306106]["RewardItem"] = {}
	tGratefulActivity_Reward[3306106]["RewardItem"][1] = {}
	tGratefulActivity_Reward[3306106]["RewardItem"][1]["Id"] = 194705
	tGratefulActivity_Reward[3306106]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1"
	tGratefulActivity_Reward[3306106]["LogId"] = 12000913
	
	--装备养成轮盘礼包
	tGratefulActivity_Reward[3306107] = {}
	tGratefulActivity_Reward[3306107][1] = {}
	tGratefulActivity_Reward[3306107][1]["ItemChanceSum"] = 10000
	
	-- 轮盘获得金刚尖钻 5%
	tGratefulActivity_Reward[3306107][1][1] = {}
	tGratefulActivity_Reward[3306107][1][1]["RandomItemChanceType"] = 2
	tGratefulActivity_Reward[3306107][1][1]["ItemChance"] = 500
	-- tGratefulActivity_Reward[3306107][1][1]["RewardEffect"] = {}
	-- tGratefulActivity_Reward[3306107][1][1]["RewardEffect"]["SzObj"] = tGratefulActivity_Data["SzObj"]
	-- tGratefulActivity_Reward[3306107][1][1]["RewardEffect"]["Effect"] = tGratefulActivity_Data["Effect"][1]
	tGratefulActivity_Reward[3306107][1][1]["RewardItem"] = {}
	tGratefulActivity_Reward[3306107][1][1]["RewardItem"][1] = {}
	tGratefulActivity_Reward[3306107][1][1]["RewardItem"][1]["Id"] = 3306108
	tGratefulActivity_Reward[3306107][1][1]["RewardItem"][1]["Attr"] = "0 1"
	tGratefulActivity_Reward[3306107][1][1]["GlobalId"] = 51813
	tGratefulActivity_Reward[3306107][1][1]["Pos"] = 1
	tGratefulActivity_Reward[3306107][1][1]["MaxData"] = 100
	tGratefulActivity_Reward[3306107][1][1]["FullIndex"] = 4
	--tGratefulActivity_Reward[3306107][1][1]["Talk"] = 
	tGratefulActivity_Reward[3306107][1][1]["LogId"] = 12000913
	tGratefulActivity_Reward[3306107][1][1]["LogStep"] = "2"
	
	-- 获得七星宝钻轮盘   2%
	tGratefulActivity_Reward[3306107][1][2] = {}
	tGratefulActivity_Reward[3306107][1][2]["RandomItemChanceType"] = 2
	tGratefulActivity_Reward[3306107][1][2]["ItemChance"] = 200
	-- tGratefulActivity_Reward[3306107][1][2]["RewardEffect"] = {}
	-- tGratefulActivity_Reward[3306107][1][2]["RewardEffect"]["SzObj"] = tGratefulActivity_Data["SzObj"]
	-- tGratefulActivity_Reward[3306107][1][2]["RewardEffect"]["Effect"] = tGratefulActivity_Data["Effect"][2]
	tGratefulActivity_Reward[3306107][1][2]["RewardItem"] = {}
	tGratefulActivity_Reward[3306107][1][2]["RewardItem"][1] = {}
	tGratefulActivity_Reward[3306107][1][2]["RewardItem"][1]["Id"] = 3306109
	tGratefulActivity_Reward[3306107][1][2]["RewardItem"][1]["Attr"] = "0 1"
	tGratefulActivity_Reward[3306107][1][2]["GlobalId"] = 51813
	tGratefulActivity_Reward[3306107][1][2]["Pos"] = 2
	tGratefulActivity_Reward[3306107][1][2]["MaxData"] = 100
	tGratefulActivity_Reward[3306107][1][2]["FullIndex"] = 4
	--tGratefulActivity_Reward[3306107][1][2]["Talk"] = 
	tGratefulActivity_Reward[3306107][1][2]["LogId"] = 12000913
	tGratefulActivity_Reward[3306107][1][2]["LogStep"] = "2"
	
	-- 获得龙珠卷轮盘    10%
	tGratefulActivity_Reward[3306107][1][3] = {}
	tGratefulActivity_Reward[3306107][1][3]["RandomItemChanceType"] = 2
	tGratefulActivity_Reward[3306107][1][3]["ItemChance"] = 1000
	-- tGratefulActivity_Reward[3306107][1][3]["RewardEffect"] = {}
	-- tGratefulActivity_Reward[3306107][1][3]["RewardEffect"]["SzObj"] = tGratefulActivity_Data["SzObj"]
	-- tGratefulActivity_Reward[3306107][1][3]["RewardEffect"]["Effect"] = tGratefulActivity_Data["Effect"][3]
	tGratefulActivity_Reward[3306107][1][3]["RewardItem"] = {}
	tGratefulActivity_Reward[3306107][1][3]["RewardItem"][1] = {}
	tGratefulActivity_Reward[3306107][1][3]["RewardItem"][1]["Id"] = 3306131
	tGratefulActivity_Reward[3306107][1][3]["RewardItem"][1]["Attr"] = "0 1"
	tGratefulActivity_Reward[3306107][1][3]["GlobalId"] = 51813
	tGratefulActivity_Reward[3306107][1][3]["Pos"] = 3
	tGratefulActivity_Reward[3306107][1][3]["MaxData"] = 100
	tGratefulActivity_Reward[3306107][1][3]["FullIndex"] = 4
	--tGratefulActivity_Reward[3306107][1][3]["Talk"] = 
	tGratefulActivity_Reward[3306107][1][3]["LogId"] = 12000913
	tGratefulActivity_Reward[3306107][1][3]["LogStep"] = "2"
	
	-- 不获得数量限制物品   
	tGratefulActivity_Reward[3306107][1][4] = {}
	tGratefulActivity_Reward[3306107][1][4]["RandomItemChanceType"] = 2
	tGratefulActivity_Reward[3306107][1][4]["ItemChance"] = 8300
	-- tGratefulActivity_Reward[3306107][1][4]["RewardEffect"] = {}
	-- tGratefulActivity_Reward[3306107][1][4]["RewardEffect"]["SzObj"] = tGratefulActivity_Data["SzObj"]
	-- tGratefulActivity_Reward[3306107][1][4]["RewardEffect"]["Effect"] = tGratefulActivity_Data["Effect"][4]
	tGratefulActivity_Reward[3306107][1][4]["RewardItem"] = {}
	tGratefulActivity_Reward[3306107][1][4]["RewardItem"][1] = {}
	tGratefulActivity_Reward[3306107][1][4]["RewardItem"][1]["Id"] = 3306076
	tGratefulActivity_Reward[3306107][1][4]["RewardItem"][1]["Attr"] = "0 1"
	--tGratefulActivity_Reward[3306107][1][4]["Talk"] = 
	tGratefulActivity_Reward[3306107][1][4]["LogId"] = 12000913
	tGratefulActivity_Reward[3306107][1][4]["LogStep"] = "2"
	
	--3000气力值礼包
	tGratefulActivity_Reward[3306086] = {}
	tGratefulActivity_Reward[3306086]["RewardEffect"] = {}
	tGratefulActivity_Reward[3306086]["RewardEffect"]["SzObj"] = tGratefulActivity_Data["SzObj"]
	tGratefulActivity_Reward[3306086]["RewardEffect"]["Effect"] = tGratefulActivity_Data["Effect"][7]
	tGratefulActivity_Reward[3306086]["DeleteItem"] = {}
	tGratefulActivity_Reward[3306086]["DeleteItem"][1] = {}
	tGratefulActivity_Reward[3306086]["DeleteItem"][1]["Id"] = 3306086
	tGratefulActivity_Reward[3306086]["RewardStrengthValue"] = {}
	tGratefulActivity_Reward[3306086]["RewardStrengthValue"]["Value"] = 3000
	tGratefulActivity_Reward[3306086]["LogId"] = 12000913
	
	--筹码大礼包
	tGratefulActivity_Reward[3306133] = {}
	tGratefulActivity_Reward[3306133]["RewardEffect"] = {}
	tGratefulActivity_Reward[3306133]["RewardEffect"]["SzObj"] = tGratefulActivity_Data["SzObj"]
	tGratefulActivity_Reward[3306133]["RewardEffect"]["Effect"] = tGratefulActivity_Data["Effect"][7]
	tGratefulActivity_Reward[3306133]["DeleteItem"] = {}
	tGratefulActivity_Reward[3306133]["DeleteItem"][1] = {}
	tGratefulActivity_Reward[3306133]["DeleteItem"][1]["Id"] = 3306133
	tGratefulActivity_Reward[3306133]["RewardItem"] = {}
	tGratefulActivity_Reward[3306133]["RewardItem"][1] = {}
	tGratefulActivity_Reward[3306133]["RewardItem"][1]["Id"] = 3303926
	tGratefulActivity_Reward[3306133]["RewardItem"][1]["Attr"] = "0 10"
	tGratefulActivity_Reward[3306133]["LogId"] = 12000913
	tGratefulActivity_Reward[3306133]["EmoneyLog"] = "350	20944	0	0	1	"
	
	--筹码兑换成天石
	tGratefulActivity_Reward[3303926] = {}
	tGratefulActivity_Reward[3303926]["DeleteItem"] = {}
	tGratefulActivity_Reward[3303926]["DeleteItem"][1] = {}
	tGratefulActivity_Reward[3303926]["DeleteItem"][1]["Id"] = 3303926
	tGratefulActivity_Reward[3303926]["RewardEffect"] = {}
	tGratefulActivity_Reward[3303926]["RewardEffect"]["SzObj"] = tGratefulActivity_Data["SzObj"]
	tGratefulActivity_Reward[3303926]["RewardEffect"]["Effect"] = tGratefulActivity_Data["Effect"][8]
	tGratefulActivity_Reward[3303926]["RewardEMoney"] = {}
	tGratefulActivity_Reward[3303926]["LogId"] = 12000913
	
	
	tGratefulActivity_Reward["Money"] = {}
	tGratefulActivity_Reward["Money"]["RewardItem"] = {}
	tGratefulActivity_Reward["Money"]["RewardItem"][1] = {}
	tGratefulActivity_Reward["Money"]["RewardItem"][1]["Id"] = 3306133
	tGratefulActivity_Reward["Money"]["RewardItem"][1]["Attr"] = "0 1"
	tGratefulActivity_Reward["Money"]["Log"] = "0,0,1,2000000,12000913,2,3306133,1"
	
	tGratefulActivity_Reward[3306085] = {}
	tGratefulActivity_Reward[3306085]["RewardEffect"] = {}
	tGratefulActivity_Reward[3306085]["RewardEffect"]["SzObj"] = tGratefulActivity_Data["SzObj"]
	tGratefulActivity_Reward[3306085]["RewardEffect"]["Effect"] = tGratefulActivity_Data["Effect"][7]
	tGratefulActivity_Reward[3306085]["DeleteItem"] = {}
	tGratefulActivity_Reward[3306085]["DeleteItem"][1] = {}
	tGratefulActivity_Reward[3306085]["DeleteItem"][1]["Id"] = 3306085
	tGratefulActivity_Reward[3306085]["RewardItem"] = {}
	tGratefulActivity_Reward[3306085]["RewardItem"][1] = {}
	tGratefulActivity_Reward[3306085]["RewardItem"][1]["Id"] = 3003126
	tGratefulActivity_Reward[3306085]["RewardItem"][1]["Attr"] = "0 10"
	tGratefulActivity_Reward[3306085]["LogId"] = 12000913
----------------------------------逻辑部分---------------------------------------------

--打开天石商店
function GratefulActivity_OpenInterface(nNpcId)
	--时间判断
	if not Sys_ChkFullTime(tGratefulActivity_Data["ActivityTime"]) then
		return LinkNpcGossipFunc_New(nNpcId,"1-4")
	end
	User_OpenDialog()
end

function GratefulActivity_OpenTable(nNpcId,nType)
	local nUserId = Get_UserId()
	User_OpenDialog(nType,nNpcId,nUserId)
end

--金币购买
function GratefulActivity_MonenyBuyChip(nNpcId)
	--等级时间判断
	if (not User_JudgeLevelAndMetempsychosis(tGratefulActivity_Data["Level"],tGratefulActivity_Data["Metempsychosis"])) and Sys_ChkFullTime(tGratefulActivity_Data["ActivityTime"]) then
		return LinkNpcGossipFunc_New(nNpcId,"1-4")
	end
	
	--判断金币
	if not  User_CanPutMoney2Bag(tGratefulActivity_Data["Money"]) then
		return LinkNpcGossipFunc_New(nNpcId,"1-6")
	end
	--判断空间
	local nSpace = RewardTemplate_GetRewardSpace(tGratefulActivity_Reward["Money"])
	if not User_CheckLeftSpace(nSpace) then
		return User_TalkChannel2005(string.format(tGratefulActivity_Text["MsgBox"]["FullX"],nSpace))
	end
	--扣金币 给道具。
	if User_AddMoney(tGratefulActivity_Data["Money"]) then
		RewardTemplate_UseItem(tGratefulActivity_Reward["Money"])
		User_EffectAdd(tGratefulActivity_Data["SzObj"],tGratefulActivity_Data["Effect"][8])
	end
	
end

--活动后兑换天石
function GratefulActivity_ExchangeChi(nItemId)
	--判断物品存在
	if not Item_ChkItem(nItemId) then
		return 
	end
	
	local nSum = Get_CountItemType(nItemId,0)
	
	--判断是否在兑换时间
	if not Sys_ChkFullTime(tActivityTime["GratefulActivity"]["ExchangeTime"]) then
		if	Item_DelAllItemByType(nItemId) then
			return User_TalkChannel2005(tGratefulActivity_Text["MsgBox"]["Timeout"])
		end
	end
	
	--判断天石数量
	local nUserEMoney = Get_UserEMoney() + nSum
	if G_User_MaxEmoney <  nUserEMoney then
		return User_TalkChannel2005(tGratefulActivity_Text["MsgBox"]["MaxEmoney"])
	end
	
	tGratefulActivity_Reward[nItemId]["DeleteItem"][1]["ItemNum"] = nSum
	tGratefulActivity_Reward[nItemId]["RewardEMoney"]["Value"] = nSum
	tGratefulActivity_Reward[nItemId]["RewardEMoney"]["EmoneyLog"] = "350	20965	" .. -nSum .. "	" .. -nSum .. "	1	"
	RewardTemplate_UseItem(tGratefulActivity_Reward[nItemId])
end

--打开兑换商店
function GratefulActivity_OpenStore(nNpcId)
	if not Sys_ChkFullTime(tGratefulActivity_Data["ActivityTime"]) then
		return
	end
	User_OpenExchangeShop(nNpcId)
end


--普通物品的开启
function GratefulActivity_OpenCastGift(nItemId)
	--检测存在
	if not Item_ChkItem (nItemId) then
		return
	end 
	--空间判断
	local nSpace = RewardTemplate_GetRewardSpace(tGratefulActivity_Reward[nItemId])
	if not User_CheckLeftSpace(nSpace) then
		return User_TalkChannel2005(string.format(tGratefulActivity_Text["MsgBox"]["FullX"],nSpace))
	end
	--
	RewardTemplate_UseItemAndMsg(tGratefulActivity_Reward[nItemId])
end

--开启骰子
function GratefulActivity_OpenDice(nItemId)
	--检测存在
	if not Item_ChkItem (nItemId) then
		return
	end
	
	--过期删除
	if not Sys_ChkFullTime(tGratefulActivity_Data["ActivityTime"]) then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			User_TalkChannel2005(tGratefulActivity_Text["MsgBox"]["OutTime"]) --删除物品
			local sLog = string.format(tGratefulActivity_Data["DelLog"],nItemId)
			Sys_SaveActionFestivalLog(sLog)
		end
	end
	
	--空间判断
	local nSpace = RewardTemplate_GetRandomSpace(tGratefulActivity_Reward[nItemId],1) 
	if not User_CheckLeftSpace(nSpace) then
		return User_TalkChannel2005(string.format(tGratefulActivity_Text["MsgBox"]["FullX"],nSpace)) -- 提示背包空间不足
	end
	
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		
		local tReward = RewardTemplate_NewRandomNoTip(tGratefulActivity_Reward[nItemId],1)
		local nFlag = tReward[1]["tAward"][1]["Flag"]
		--新增emoney_log
		Sys_SaveEmoneyBuy(tGratefulActivity_Data["EmoneyLog"][nItemId])
		local sUserName = Get_UserName()
		local sItemName = Get_ItemtypeName(nItemId)
		
		if nFlag == 6 then
			local sAllText = string.format(tGratefulActivity_Text["MsgBox"]["Supries"],sUserName,sItemName,tGratefulActivity_Text[nItemId]["Flag"][nFlag])
			Sys_SystemBroadcast(sAllText)
		end
	end
end


----------------------------------NPC部分---------------------------------------------
tNpcFace[5789] = 50
tNpcGossip[21168]= tNpcGossip[21168] or DefaultNpc:new{}
tNpcGossip[21168]["OptionHidden"] = 1
tNpcGossip[21168]["DialogueText"] = tGratefulActivity_Text[21168]

--活动前
tNpcGossip[21168]["Text1-1"] = {101,102,103,104,105,106}
tNpcGossip[21168]["tOption1-1"] = {101}
tNpcGossip[21168]["ChkFunc1-1"] = function()
	return Sys_ChkFullTime(tGratefulActivity_Data["BeforeTime"])
end

--活动中,等级判断
tNpcGossip[21168]["Text1-2"] = {201,202,203,204,205,206,207}
tNpcGossip[21168]["tOption1-2"] = {201}
tNpcGossip[21168]["ChkFunc1-2"] = function()
	return (not User_JudgeLevelAndMetempsychosis(tGratefulActivity_Data["Level"],tGratefulActivity_Data["Metempsychosis"])) and Sys_ChkFullTime(tGratefulActivity_Data["ActivityTime"])
end

tNpcGossip[21168]["Text1-3"] = {301,302,303,304,305,306}
tNpcGossip[21168]["tOption1-3"] = {301,302,303,304}
tNpcGossip[21168]["OptionFunc301"] = "GratefulActivity_OpenTable</N>21168</N>262"
tNpcGossip[21168]["OptionFunc302"] = "GratefulActivity_OpenInterface</N>21168"
tNpcGossip[21168]["OptionPoint303"] = "1-5"
tNpcGossip[21168]["OptionPoint304"] = "1-7"
tNpcGossip[21168]["ChkFunc1-3"] = function()
	return User_JudgeLevelAndMetempsychosis(tGratefulActivity_Data["Level"],tGratefulActivity_Data["Metempsychosis"]) and Sys_ChkFullTime(tGratefulActivity_Data["ActivityTime"])
end

--活动后

tNpcGossip[21168]["Text1-4"] = {501}
tNpcGossip[21168]["tOption1-4"] = {501}


tNpcGossip[21168]["Text1-5"] = {701}
tNpcGossip[21168]["tOption1-5"] = {701,702}
tNpcGossip[21168]["OptionFunc701"] = "GratefulActivity_MonenyBuyChip</N>21168"

tNpcGossip[21168]["Text1-6"] = {801}
tNpcGossip[21168]["tOption1-6"] = {801}

tNpcGossip[21168]["Text1-7"] = {901,902,903,904,905,906,907,908,909,910,911,912}
tNpcGossip[21168]["tOption1-7"] = {901}
---------------------------------物品部分---------------------------------------------
--极运筹码的使用
tItem[3303926] = tItem[3303926] or {}
tItem[3303926]["Function"] = function(nItemId,sItemName)
	if Sys_ChkFullTime(tGratefulActivity_Data["ActivityTime"]) then
		GratefulActivity_OpenTable(21168,262)
	else
		GratefulActivity_ExchangeChi(nItemId)
	end
end

tItemFace[3306132] = 869
--骰子使用
tItem[3306070] = tItem[3306070] or {}
tItem[3306070]["Function"] = function(nItemId,sItemName)
	GratefulActivity_OpenDice(nItemId)
end
tItem[3306074] = tItem[3306070]
tItem[3306075] = tItem[3306070]
tItem[3306107] = tItem[3306070]


--外套礼包使用
tItem[3306091] = tItem[3306091] or {}
tItem[3306091]["Function"] = function(nItemId,sItemName)
	GratefulActivity_OpenCastGift(nItemId)
end

tItem[3306092] = tItem[3306091]
tItem[3306093] = tItem[3306091]
tItem[3306094] = tItem[3306091]
tItem[3306095] = tItem[3306091]
tItem[3306096] = tItem[3306091]
tItem[3306097] = tItem[3306091]
tItem[3306098] = tItem[3306091]
tItem[3306099] = tItem[3306091]
tItem[3306100] = tItem[3306091]
tItem[3306101] = tItem[3306091]
tItem[3306102] = tItem[3306091]
tItem[3306103] = tItem[3306091]
tItem[3306104] = tItem[3306091]
tItem[3306105] = tItem[3306091]
tItem[3306106] = tItem[3306091]

tItem[3306083] = tItem[3306091]
tItem[3306085] = tItem[3306091]
tItem[3306087] = tItem[3306091]
tItem[3306088] = tItem[3306091]
tItem[3306090] = tItem[3306091]
tItem[3306086] = tItem[3306091]
tItem[3306133] = tItem[3306091]


