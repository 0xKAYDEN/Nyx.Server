------------------------------------------------------------------------------------
--Name：            190102[简体征服][活动脚本]雷神预热活动制作
--Creator:      蔡颖静
--Created:     2019/01/02
------------------------------------------------------------------------------------
--任务需求：

------------------------------------------------------------------------------------
--logid：12001255
--lua.ini:41094
--掩码
--stc(188,51) 背包信掩码
--stc(188,52) 正气令掩码
--stc(188,53) 是否举起雷神之锤
--stc(188,54) 击杀妖匪每日可获20个不可交易的雷霆神魄
--stc(188,55) 开显著功勋礼包
--stc(188,56) 开每日签到礼包
--stc(188,57) 上交雷霆神魄数
--stc(188,58) 阶段性奖励
--stc(188,59) 击杀妖匪每日可获10个不可交易的雷霆源晶
--stc(189,82)领奖阶段
--stc(189,84)领取排行榜奖励

--排行榜global:{53184,53185,53186,53187}
--53198 全服播报一次控制

-- 全局表记录
-- global	53085	data0=0代表美服	data0=1代表欧服
----------------------------------表配置部分--------------------------------------------

local tThorWarmUp_Data={}

--等级需求
	tThorWarmUp_Data["Level"]=80
	tThorWarmUp_Data["Metempsychosis"]=0
	
--排行榜
	tThorWarmUp_Data["Index"]=23643
--全服播报一次控制
	tThorWarmUp_Data["GlobalId"]=53198
	
	--区分欧美服global
	tThorWarmUp_Data["EUServer"] = 53085

--掩码
	tThorWarmUp_Data["Stc"]={}
	--stc(188,57) 上交雷霆神魄数
	tThorWarmUp_Data["Stc"][1]={}
	tThorWarmUp_Data["Stc"][1]["EventType"]=188
	tThorWarmUp_Data["Stc"][1]["DataType"]=57
	
	--stc(188,53) 是否举起雷神之锤
	tThorWarmUp_Data["Stc"][2]={}
	tThorWarmUp_Data["Stc"][2]["EventType"]=188
	tThorWarmUp_Data["Stc"][2]["DataType"]=53
	tThorWarmUp_Data["Stc"][2]["Completed"]=1
	
	--stc(188,54) 击杀妖匪每日可获20个不可交易的雷霆神魄
	tThorWarmUp_Data["Stc"][3]={}
	tThorWarmUp_Data["Stc"][3]["EventType"]=188
	tThorWarmUp_Data["Stc"][3]["DataType"]=54
	tThorWarmUp_Data["Stc"][3]["Completed"]=20
	--stc(188,55) 开显著功勋礼包
	tThorWarmUp_Data["Stc"][4]={}
	tThorWarmUp_Data["Stc"][4]["EventType"]=188
	tThorWarmUp_Data["Stc"][4]["DataType"]=55
	tThorWarmUp_Data["Stc"][4]["Completed"]=1
	--stc(188,56) 开每日签到礼包
	tThorWarmUp_Data["Stc"][5]={}
	tThorWarmUp_Data["Stc"][5]["EventType"]=188
	tThorWarmUp_Data["Stc"][5]["DataType"]=56
	tThorWarmUp_Data["Stc"][5]["Completed"]=1
	
	--stc(188,58) 阶段性奖励
	tThorWarmUp_Data["Stc"][6]={}
	tThorWarmUp_Data["Stc"][6]["EventType"]=188
	tThorWarmUp_Data["Stc"][6]["DataType"]=58
	
--stc(188,59) 击杀妖匪每日可获10个不可交易的雷霆源晶
	tThorWarmUp_Data["Stc"][7]={}
	tThorWarmUp_Data["Stc"][7]["EventType"]=188
	tThorWarmUp_Data["Stc"][7]["DataType"]=59
	tThorWarmUp_Data["Stc"][7]["Completed"]=10
	
--stc(189,82)领奖阶段
	tThorWarmUp_Data["Stc"][8]={}
	tThorWarmUp_Data["Stc"][8]["EventType"]=189
	tThorWarmUp_Data["Stc"][8]["DataType"]=82
	
--stc(189,84)领取排行榜奖励
	tThorWarmUp_Data["Stc"][9]={}
	tThorWarmUp_Data["Stc"][9]["EventType"]=189
	tThorWarmUp_Data["Stc"][9]["DataType"]=84


	--雷神天石（赠）礼包 复用3303340逻辑
	tThorWarmUp_Data[3319136] = {} 
	tThorWarmUp_Data[3319136]["Reward"] = {}
	tThorWarmUp_Data[3319136]["Reward"][1] = {}
	tThorWarmUp_Data[3319136]["Reward"][1]["ItemChanceSum"] = 10000

	--5%获得1到10的赠点
	tThorWarmUp_Data[3319136]["Reward"][1][1] = {}
	tThorWarmUp_Data[3319136]["Reward"][1][1]["RandomItemChanceType"] = 2
	tThorWarmUp_Data[3319136]["Reward"][1][1]["ItemChance"] = 500
	tThorWarmUp_Data[3319136]["Reward"][1][1]["Item_1"] = 1
	tThorWarmUp_Data[3319136]["Reward"][1][1]["Start"] = 1
	tThorWarmUp_Data[3319136]["Reward"][1][1]["End"] = 10
	--25%获得11到20的赠点
	tThorWarmUp_Data[3319136]["Reward"][1][2] = {}
	tThorWarmUp_Data[3319136]["Reward"][1][2]["RandomItemChanceType"] = 2
	tThorWarmUp_Data[3319136]["Reward"][1][2]["ItemChance"] = 2500
	tThorWarmUp_Data[3319136]["Reward"][1][2]["Item_1"] = 2
	tThorWarmUp_Data[3319136]["Reward"][1][2]["Start"] = 11
	tThorWarmUp_Data[3319136]["Reward"][1][2]["End"] = 20
	--35%获得21到30的赠点
	tThorWarmUp_Data[3319136]["Reward"][1][3] = {}
	tThorWarmUp_Data[3319136]["Reward"][1][3]["RandomItemChanceType"] = 2
	tThorWarmUp_Data[3319136]["Reward"][1][3]["ItemChance"] = 3500
	tThorWarmUp_Data[3319136]["Reward"][1][3]["Item_1"] = 3
	tThorWarmUp_Data[3319136]["Reward"][1][3]["Start"] = 21
	tThorWarmUp_Data[3319136]["Reward"][1][3]["End"] = 30
	--18%获得31到40的赠点
	tThorWarmUp_Data[3319136]["Reward"][1][4] = {}
	tThorWarmUp_Data[3319136]["Reward"][1][4]["RandomItemChanceType"] = 2
	tThorWarmUp_Data[3319136]["Reward"][1][4]["ItemChance"] = 1800
	tThorWarmUp_Data[3319136]["Reward"][1][4]["Item_1"] = 4
	tThorWarmUp_Data[3319136]["Reward"][1][4]["Start"] = 31
	tThorWarmUp_Data[3319136]["Reward"][1][4]["End"] = 40
	--12%获得41到50的赠点
	tThorWarmUp_Data[3319136]["Reward"][1][5] = {}
	tThorWarmUp_Data[3319136]["Reward"][1][5]["RandomItemChanceType"] = 2
	tThorWarmUp_Data[3319136]["Reward"][1][5]["ItemChance"] = 1200
	tThorWarmUp_Data[3319136]["Reward"][1][5]["Item_1"] = 5
	tThorWarmUp_Data[3319136]["Reward"][1][5]["Start"] = 41
	tThorWarmUp_Data[3319136]["Reward"][1][5]["End"] = 50
	--4%获得51到60的赠点
	tThorWarmUp_Data[3319136]["Reward"][1][6] = {}
	tThorWarmUp_Data[3319136]["Reward"][1][6]["RandomItemChanceType"] = 2
	tThorWarmUp_Data[3319136]["Reward"][1][6]["ItemChance"] = 400
	tThorWarmUp_Data[3319136]["Reward"][1][6]["Item_1"] = 6
	tThorWarmUp_Data[3319136]["Reward"][1][6]["Start"] = 51
	tThorWarmUp_Data[3319136]["Reward"][1][6]["End"] = 60
	--1%获得61到88的赠点
	tThorWarmUp_Data[3319136]["Reward"][1][7] = {}
	tThorWarmUp_Data[3319136]["Reward"][1][7]["RandomItemChanceType"] = 2
	tThorWarmUp_Data[3319136]["Reward"][1][7]["ItemChance"] = 100
	tThorWarmUp_Data[3319136]["Reward"][1][7]["Item_1"] = 7
	tThorWarmUp_Data[3319136]["Reward"][1][7]["Start"] = 61
	tThorWarmUp_Data[3319136]["Reward"][1][7]["End"] = 88
	
--获得赠点
	tThorWarmUp_Data["MonoEMoney"] = {}
	tThorWarmUp_Data["MonoEMoney"]["RewardEMoneyMono"] = {}
	tThorWarmUp_Data["MonoEMoney"]["RewardEMoneyMono"]["Value"] = 1
	
	tThorWarmUp_Data["MostMonoEMoneyGift"] = 88

--雷霆万钧礼包
	tThorWarmUp_Data[3319139] = {} 
	tThorWarmUp_Data[3319139]["ItemChanceSum"] = 10000
	-- 100%给
	tThorWarmUp_Data[3319139][1] = {}
	tThorWarmUp_Data[3319139][1]["RandomItemChanceType"] = 1
	tThorWarmUp_Data[3319139][1]["RewardStrengthValue"] = {}
	tThorWarmUp_Data[3319139][1]["RewardStrengthValue"]["Value"] = 100
	tThorWarmUp_Data[3319139][1]["Broadcast"] = 0
	tThorWarmUp_Data[3319139][1]["LogId"] = 12001255
	-- 概率给
	-- 明亮星陨石	3009001	1		激活2天	25.00%
	tThorWarmUp_Data[3319139][2] = {}
	tThorWarmUp_Data[3319139][2]["RandomItemChanceType"] = 2
	tThorWarmUp_Data[3319139][2]["ItemChance"] = 2500
	tThorWarmUp_Data[3319139][2]["RewardItem"] = {}
	tThorWarmUp_Data[3319139][2]["RewardItem"][1] = {}
	tThorWarmUp_Data[3319139][2]["RewardItem"][1]["Id"] = 3009001
	tThorWarmUp_Data[3319139][2]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tThorWarmUp_Data[3319139][2]["Broadcast"] = 0
	tThorWarmUp_Data[3319139][2]["LogId"] = 12001255
	-- 气力值	直接给	100			30.00%
	tThorWarmUp_Data[3319139][3] = {}
	tThorWarmUp_Data[3319139][3]["RandomItemChanceType"] = 2
	tThorWarmUp_Data[3319139][3]["ItemChance"] = 3000
	tThorWarmUp_Data[3319139][3]["RewardStrengthValue"] = {}
	tThorWarmUp_Data[3319139][3]["RewardStrengthValue"]["Value"] = 100
	tThorWarmUp_Data[3319139][3]["Broadcast"] = 0
	tThorWarmUp_Data[3319139][3]["LogId"] = 12001255
	-- 气力值	直接给	1000			1.00%
	tThorWarmUp_Data[3319139][4] = {}
	tThorWarmUp_Data[3319139][4]["RandomItemChanceType"] = 2
	tThorWarmUp_Data[3319139][4]["ItemChance"] = 100
	tThorWarmUp_Data[3319139][4]["RewardStrengthValue"] = {}
	tThorWarmUp_Data[3319139][4]["RewardStrengthValue"]["Value"] = 1000
	tThorWarmUp_Data[3319139][4]["Broadcast"] = 1
	tThorWarmUp_Data[3319139][4]["LogId"] = 12001255
	-- 赤炼石+2	730002	1	赠	激活7天	30.00%
	tThorWarmUp_Data[3319139][5] = {}
	tThorWarmUp_Data[3319139][5]["RandomItemChanceType"] = 2
	tThorWarmUp_Data[3319139][5]["ItemChance"] = 3000
	tThorWarmUp_Data[3319139][5]["RewardItem"] = {}
	tThorWarmUp_Data[3319139][5]["RewardItem"][1] = {}
	tThorWarmUp_Data[3319139][5]["RewardItem"][1]["Id"] = 730002
	tThorWarmUp_Data[3319139][5]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
	tThorWarmUp_Data[3319139][5]["Broadcast"] = 0
	tThorWarmUp_Data[3319139][5]["LogId"] = 12001255
	-- 赤炼石+3	730003	1	赠	激活7天
	tThorWarmUp_Data[3319139][6] = {}
	tThorWarmUp_Data[3319139][6]["RandomItemChanceType"] = 2
	tThorWarmUp_Data[3319139][6]["ItemChance"] = 1400
	tThorWarmUp_Data[3319139][6]["RewardItem"] = {}
	tThorWarmUp_Data[3319139][6]["RewardItem"][1] = {}
	tThorWarmUp_Data[3319139][6]["RewardItem"][1]["Id"] = 730003
	tThorWarmUp_Data[3319139][6]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
	tThorWarmUp_Data[3319139][6]["Broadcast"] = 0
	tThorWarmUp_Data[3319139][6]["LogId"] = 12001255
	
	--3319137,'30天战鼓熊猫坐骑外套包'
	tThorWarmUp_Data[3319137] = {}
	tThorWarmUp_Data[3319137]["DeleteItem"] = {}
	tThorWarmUp_Data[3319137]["DeleteItem"][1]={}
	tThorWarmUp_Data[3319137]["DeleteItem"][1]["Id"]=3319137
	tThorWarmUp_Data[3319137]["RewardItem"] = {}
	tThorWarmUp_Data[3319137]["RewardItem"][1] = {}
	tThorWarmUp_Data[3319137]["RewardItem"][1]["Id"] = 200476
	tThorWarmUp_Data[3319137]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	tThorWarmUp_Data[3319137]["LogId"] = 12001255
	
	--3319138,'7天大鱼海棠坐骑外套包'
	tThorWarmUp_Data[3319138] = {}
	tThorWarmUp_Data[3319138]["DeleteItem"] = {}
	tThorWarmUp_Data[3319138]["DeleteItem"][1]={}
	tThorWarmUp_Data[3319138]["DeleteItem"][1]["Id"]=3319138
	tThorWarmUp_Data[3319138]["RewardItem"] = {}
	tThorWarmUp_Data[3319138]["RewardItem"][1] = {}
	tThorWarmUp_Data[3319138]["RewardItem"][1]["Id"] = 200625
	tThorWarmUp_Data[3319138]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1"
	tThorWarmUp_Data[3319138]["LogId"] = 12001255
	
	--服务器判断
	tThorWarmUp_Data["Server"]={}
	tThorWarmUp_Data["Server"]["Normal"]=1
	tThorWarmUp_Data["Server"]["Special"]=2
	
	--3319140,'雷震天下礼盒(+6)'
	tThorWarmUp_Data[3319140] = {}
		--普通服 给赠奖励
	tThorWarmUp_Data[3319140][1] = {}
	tThorWarmUp_Data[3319140][1]["DeleteItem"] = {}
	tThorWarmUp_Data[3319140][1]["DeleteItem"][1]={}
	tThorWarmUp_Data[3319140][1]["DeleteItem"][1]["Id"]=3319140
	tThorWarmUp_Data[3319140][1]["RewardItem"] = {}
	tThorWarmUp_Data[3319140][1]["RewardItem"][1] = {}
	tThorWarmUp_Data[3319140][1]["RewardItem"][1]["Id"] = 827012
	tThorWarmUp_Data[3319140][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tThorWarmUp_Data[3319140][1]["RewardItem"][2] = {}
	tThorWarmUp_Data[3319140][1]["RewardItem"][2]["Id"] = 3004282
	tThorWarmUp_Data[3319140][1]["RewardItem"][2]["Attr"] = "0 1 3"
	tThorWarmUp_Data[3319140][1]["RewardItem"][3] = {}
	tThorWarmUp_Data[3319140][1]["RewardItem"][3]["Id"] = 201009
	tThorWarmUp_Data[3319140][1]["RewardItem"][3]["Attr"] ="0 1 0 0 0 0 0 0 0 0 5"
	tThorWarmUp_Data[3319140][1]["RewardItem"][4] = {}
	tThorWarmUp_Data[3319140][1]["RewardItem"][4]["Id"] = 3319145
	tThorWarmUp_Data[3319140][1]["RewardItem"][4]["Attr"] ="0 1"
	tThorWarmUp_Data[3319140][1]["LogId"] = 12001255
	
		--激情服 给非赠奖励
	tThorWarmUp_Data[3319140][2] = {}
	tThorWarmUp_Data[3319140][2]["DeleteItem"] = {}
	tThorWarmUp_Data[3319140][2]["DeleteItem"][1]={}
	tThorWarmUp_Data[3319140][2]["DeleteItem"][1]["Id"]=3319140
	tThorWarmUp_Data[3319140][2]["RewardItem"] = {}
	tThorWarmUp_Data[3319140][2]["RewardItem"][1] = {}
	tThorWarmUp_Data[3319140][2]["RewardItem"][1]["Id"] = 827012
	tThorWarmUp_Data[3319140][2]["RewardItem"][1]["Attr"] = "0 1"
	tThorWarmUp_Data[3319140][2]["RewardItem"][2] = {}
	tThorWarmUp_Data[3319140][2]["RewardItem"][2]["Id"] = 3004282
	tThorWarmUp_Data[3319140][2]["RewardItem"][2]["Attr"] = "0 1"
	tThorWarmUp_Data[3319140][2]["RewardItem"][3] = {}
	tThorWarmUp_Data[3319140][2]["RewardItem"][3]["Id"] = 201009
	tThorWarmUp_Data[3319140][2]["RewardItem"][3]["Attr"] ="0 1 0 0 0 0 0 0 0 0 5"
	tThorWarmUp_Data[3319140][2]["RewardItem"][4] = {}
	tThorWarmUp_Data[3319140][2]["RewardItem"][4]["Id"] = 3319145
	tThorWarmUp_Data[3319140][2]["RewardItem"][4]["Attr"] ="0 1"
	tThorWarmUp_Data[3319140][2]["LogId"] = 12001255
	
	--3319141,'雷震天下礼盒(+5)'
	tThorWarmUp_Data[3319141] = {}
	--普通服 给赠奖励
	tThorWarmUp_Data[3319141][1] = {}
	tThorWarmUp_Data[3319141][1]["DeleteItem"] = {}
	tThorWarmUp_Data[3319141][1]["DeleteItem"][1]={}
	tThorWarmUp_Data[3319141][1]["DeleteItem"][1]["Id"]=3319141
	tThorWarmUp_Data[3319141][1]["RewardItem"] = {}
	tThorWarmUp_Data[3319141][1]["RewardItem"][1] = {}
	tThorWarmUp_Data[3319141][1]["RewardItem"][1]["Id"] = 827008
	tThorWarmUp_Data[3319141][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tThorWarmUp_Data[3319141][1]["RewardItem"][2] = {}
	tThorWarmUp_Data[3319141][1]["RewardItem"][2]["Id"] = 721409
	tThorWarmUp_Data[3319141][1]["RewardItem"][2]["Attr"] = "0 1 3"
	tThorWarmUp_Data[3319141][1]["RewardItem"][3] = {}
	tThorWarmUp_Data[3319141][1]["RewardItem"][3]["Id"] = 201009
	tThorWarmUp_Data[3319141][1]["RewardItem"][3]["Attr"] ="0 1 0 0 0 0 0 0 0 0 5"
	tThorWarmUp_Data[3319141][1]["RewardItem"][4] = {}
	tThorWarmUp_Data[3319141][1]["RewardItem"][4]["Id"] = 3319146
	tThorWarmUp_Data[3319141][1]["RewardItem"][4]["Attr"] ="0 1"
	tThorWarmUp_Data[3319141][1]["LogId"] = 12001255
	
	--激情服 给非赠奖励
	tThorWarmUp_Data[3319141][2] = {}
	tThorWarmUp_Data[3319141][2]["DeleteItem"] = {}
	tThorWarmUp_Data[3319141][2]["DeleteItem"][1]={}
	tThorWarmUp_Data[3319141][2]["DeleteItem"][1]["Id"]=3319141
	tThorWarmUp_Data[3319141][2]["RewardItem"] = {}
	tThorWarmUp_Data[3319141][2]["RewardItem"][1] = {}
	tThorWarmUp_Data[3319141][2]["RewardItem"][1]["Id"] = 827008
	tThorWarmUp_Data[3319141][2]["RewardItem"][1]["Attr"] = "0 1"
	tThorWarmUp_Data[3319141][2]["RewardItem"][2] = {}
	tThorWarmUp_Data[3319141][2]["RewardItem"][2]["Id"] = 721409
	tThorWarmUp_Data[3319141][2]["RewardItem"][2]["Attr"] = "0 1"
	tThorWarmUp_Data[3319141][2]["RewardItem"][3] = {}
	tThorWarmUp_Data[3319141][2]["RewardItem"][3]["Id"] = 201009
	tThorWarmUp_Data[3319141][2]["RewardItem"][3]["Attr"] ="0 1 0 0 0 0 0 0 0 0 5"
	tThorWarmUp_Data[3319141][2]["RewardItem"][4] = {}
	tThorWarmUp_Data[3319141][2]["RewardItem"][4]["Id"] = 3319146
	tThorWarmUp_Data[3319141][2]["RewardItem"][4]["Attr"] ="0 1"
	tThorWarmUp_Data[3319141][2]["LogId"] = 12001255
	--3319142,'雷震天下礼盒(+4)
	tThorWarmUp_Data[3319142] = {}
	--普通服 给赠奖励
	tThorWarmUp_Data[3319142][1] = {}
	tThorWarmUp_Data[3319142][1]["DeleteItem"] = {}
	tThorWarmUp_Data[3319142][1]["DeleteItem"][1]={}
	tThorWarmUp_Data[3319142][1]["DeleteItem"][1]["Id"]=3319142
	tThorWarmUp_Data[3319142][1]["RewardItem"] = {}
	tThorWarmUp_Data[3319142][1]["RewardItem"][1] = {}
	tThorWarmUp_Data[3319142][1]["RewardItem"][1]["Id"] = 827008
	tThorWarmUp_Data[3319142][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tThorWarmUp_Data[3319142][1]["RewardItem"][2] = {}
	tThorWarmUp_Data[3319142][1]["RewardItem"][2]["Id"] = 721409
	tThorWarmUp_Data[3319142][1]["RewardItem"][2]["Attr"] = "0 1 3"
	tThorWarmUp_Data[3319142][1]["RewardItem"][3] = {}
	tThorWarmUp_Data[3319142][1]["RewardItem"][3]["Id"] = 201009
	tThorWarmUp_Data[3319142][1]["RewardItem"][3]["Attr"] ="0 1 0 0 0 0 0 0 0 0 5"
	tThorWarmUp_Data[3319142][1]["RewardItem"][4] = {}
	tThorWarmUp_Data[3319142][1]["RewardItem"][4]["Id"] = 3319147
	tThorWarmUp_Data[3319142][1]["RewardItem"][4]["Attr"] ="0 1"
	tThorWarmUp_Data[3319142][1]["LogId"] = 12001255
	
	--激情服 给非赠奖励
	tThorWarmUp_Data[3319142][2] = {}
	tThorWarmUp_Data[3319142][2]["DeleteItem"] = {}
	tThorWarmUp_Data[3319142][2]["DeleteItem"][1]={}
	tThorWarmUp_Data[3319142][2]["DeleteItem"][1]["Id"]=3319142
	tThorWarmUp_Data[3319142][2]["RewardItem"] = {}
	tThorWarmUp_Data[3319142][2]["RewardItem"][1] = {}
	tThorWarmUp_Data[3319142][2]["RewardItem"][1]["Id"] = 827008
	tThorWarmUp_Data[3319142][2]["RewardItem"][1]["Attr"] = "0 1"
	tThorWarmUp_Data[3319142][2]["RewardItem"][2] = {}
	tThorWarmUp_Data[3319142][2]["RewardItem"][2]["Id"] = 721409
	tThorWarmUp_Data[3319142][2]["RewardItem"][2]["Attr"] = "0 1"
	tThorWarmUp_Data[3319142][2]["RewardItem"][3] = {}
	tThorWarmUp_Data[3319142][2]["RewardItem"][3]["Id"] = 201009
	tThorWarmUp_Data[3319142][2]["RewardItem"][3]["Attr"] ="0 1 0 0 0 0 0 0 0 0 5"
	tThorWarmUp_Data[3319142][2]["RewardItem"][4] = {}
	tThorWarmUp_Data[3319142][2]["RewardItem"][4]["Id"] = 3319147
	tThorWarmUp_Data[3319142][2]["RewardItem"][4]["Attr"] ="0 1"
	tThorWarmUp_Data[3319142][2]["LogId"] = 12001255
	--3319143,'雷震天下礼盒(+3)'
	tThorWarmUp_Data[3319143] = {}
	--普通服，给赠奖励
	tThorWarmUp_Data[3319143][1] = {}
	tThorWarmUp_Data[3319143][1]["DeleteItem"] = {}
	tThorWarmUp_Data[3319143][1]["DeleteItem"][1]={}
	tThorWarmUp_Data[3319143][1]["DeleteItem"][1]["Id"]=3319143
	tThorWarmUp_Data[3319143][1]["RewardItem"] = {}
	tThorWarmUp_Data[3319143][1]["RewardItem"][1] = {}
	tThorWarmUp_Data[3319143][1]["RewardItem"][1]["Id"] = 827008
	tThorWarmUp_Data[3319143][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tThorWarmUp_Data[3319143][1]["RewardItem"][2] = {}
	tThorWarmUp_Data[3319143][1]["RewardItem"][2]["Id"] = 721409
	tThorWarmUp_Data[3319143][1]["RewardItem"][2]["Attr"] = "0 1 3"
	tThorWarmUp_Data[3319143][1]["RewardItem"][3] = {}
	tThorWarmUp_Data[3319143][1]["RewardItem"][3]["Id"] = 201009
	tThorWarmUp_Data[3319143][1]["RewardItem"][3]["Attr"] ="0 1 0 0 0 0 0 0 0 0 5"
	tThorWarmUp_Data[3319143][1]["RewardItem"][4] = {}
	tThorWarmUp_Data[3319143][1]["RewardItem"][4]["Id"] = 3319148
	tThorWarmUp_Data[3319143][1]["RewardItem"][4]["Attr"] ="0 1"
	tThorWarmUp_Data[3319143][1]["LogId"] = 12001255
	
	--激情服，给非赠奖励
	tThorWarmUp_Data[3319143][2] = {}
	tThorWarmUp_Data[3319143][2]["DeleteItem"] = {}
	tThorWarmUp_Data[3319143][2]["DeleteItem"][1]={}
	tThorWarmUp_Data[3319143][2]["DeleteItem"][1]["Id"]=3319143
	tThorWarmUp_Data[3319143][2]["RewardItem"] = {}
	tThorWarmUp_Data[3319143][2]["RewardItem"][1] = {}
	tThorWarmUp_Data[3319143][2]["RewardItem"][1]["Id"] = 827008
	tThorWarmUp_Data[3319143][2]["RewardItem"][1]["Attr"] = "0 1"
	tThorWarmUp_Data[3319143][2]["RewardItem"][2] = {}
	tThorWarmUp_Data[3319143][2]["RewardItem"][2]["Id"] = 721409
	tThorWarmUp_Data[3319143][2]["RewardItem"][2]["Attr"] = "0 1"
	tThorWarmUp_Data[3319143][2]["RewardItem"][3] = {}
	tThorWarmUp_Data[3319143][2]["RewardItem"][3]["Id"] = 201009
	tThorWarmUp_Data[3319143][2]["RewardItem"][3]["Attr"] ="0 1 0 0 0 0 0 0 0 0 5"
	tThorWarmUp_Data[3319143][2]["RewardItem"][4] = {}
	tThorWarmUp_Data[3319143][2]["RewardItem"][4]["Id"] = 3319148
	tThorWarmUp_Data[3319143][2]["RewardItem"][4]["Attr"] ="0 1"
	tThorWarmUp_Data[3319143][2]["LogId"] = 12001255
	--3319144,'雷震天下礼盒(+2)
	
	--普通服，给赠奖励
	tThorWarmUp_Data[3319144] = {}
	tThorWarmUp_Data[3319144][1] = {}
	tThorWarmUp_Data[3319144][1]["DeleteItem"] = {}
	tThorWarmUp_Data[3319144][1]["DeleteItem"][1]={}
	tThorWarmUp_Data[3319144][1]["DeleteItem"][1]["Id"]=3319144
	tThorWarmUp_Data[3319144][1]["RewardItem"] = {}
	tThorWarmUp_Data[3319144][1]["RewardItem"][1] = {}
	tThorWarmUp_Data[3319144][1]["RewardItem"][1]["Id"] = 827008
	tThorWarmUp_Data[3319144][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tThorWarmUp_Data[3319144][1]["RewardItem"][2] = {}
	tThorWarmUp_Data[3319144][1]["RewardItem"][2]["Id"] = 721409
	tThorWarmUp_Data[3319144][1]["RewardItem"][2]["Attr"] = "0 1 3"
	tThorWarmUp_Data[3319144][1]["RewardItem"][3] = {}
	tThorWarmUp_Data[3319144][1]["RewardItem"][3]["Id"] = 201009
	tThorWarmUp_Data[3319144][1]["RewardItem"][3]["Attr"] ="0 1 0 0 0 0 0 0 0 0 5"
	tThorWarmUp_Data[3319144][1]["RewardItem"][4] = {}
	tThorWarmUp_Data[3319144][1]["RewardItem"][4]["Id"] = 3319149
	tThorWarmUp_Data[3319144][1]["RewardItem"][4]["Attr"] ="0 1"
	tThorWarmUp_Data[3319144][1]["LogId"] = 12001255
	
	--激情服，给非赠奖励
	tThorWarmUp_Data[3319144][2] = {}
	tThorWarmUp_Data[3319144][2]["DeleteItem"] = {}
	tThorWarmUp_Data[3319144][2]["DeleteItem"][1]={}
	tThorWarmUp_Data[3319144][2]["DeleteItem"][1]["Id"]=3319144
	tThorWarmUp_Data[3319144][2]["RewardItem"] = {}
	tThorWarmUp_Data[3319144][2]["RewardItem"][1] = {}
	tThorWarmUp_Data[3319144][2]["RewardItem"][1]["Id"] = 827008
	tThorWarmUp_Data[3319144][2]["RewardItem"][1]["Attr"] = "0 1"
	tThorWarmUp_Data[3319144][2]["RewardItem"][2] = {}
	tThorWarmUp_Data[3319144][2]["RewardItem"][2]["Id"] = 721409
	tThorWarmUp_Data[3319144][2]["RewardItem"][2]["Attr"] = "0 1"
	tThorWarmUp_Data[3319144][2]["RewardItem"][3] = {}
	tThorWarmUp_Data[3319144][2]["RewardItem"][3]["Id"] = 201009
	tThorWarmUp_Data[3319144][2]["RewardItem"][3]["Attr"] ="0 1 0 0 0 0 0 0 0 0 5"
	tThorWarmUp_Data[3319144][2]["RewardItem"][4] = {}
	tThorWarmUp_Data[3319144][2]["RewardItem"][4]["Id"] = 3319149
	tThorWarmUp_Data[3319144][2]["RewardItem"][4]["Attr"] ="0 1"
	tThorWarmUp_Data[3319144][2]["LogId"] = 12001255
	
--9000气力值包
	tThorWarmUp_Data[3319150] = {}
	tThorWarmUp_Data[3319150]["DeleteItem"] = {}
	tThorWarmUp_Data[3319150]["DeleteItem"][1]={}
	tThorWarmUp_Data[3319150]["DeleteItem"][1]["Id"]=3319150
	tThorWarmUp_Data[3319150]["RewardStrengthValue"] = {}
	tThorWarmUp_Data[3319150]["RewardStrengthValue"]["Value"] = 9000
	tThorWarmUp_Data[3319150]["LogId"] = 12001255
--7000气力值包
	tThorWarmUp_Data[3319151] = {}
	tThorWarmUp_Data[3319151]["DeleteItem"] = {}
	tThorWarmUp_Data[3319151]["DeleteItem"][1]={}
	tThorWarmUp_Data[3319151]["DeleteItem"][1]["Id"]=3319151
	tThorWarmUp_Data[3319151]["RewardStrengthValue"] = {}
	tThorWarmUp_Data[3319151]["RewardStrengthValue"]["Value"] = 7000
	tThorWarmUp_Data[3319151]["LogId"] = 12001255
--6000气力值包
	tThorWarmUp_Data[3319152] = {}
	tThorWarmUp_Data[3319152]["DeleteItem"] = {}
	tThorWarmUp_Data[3319152]["DeleteItem"][1]={}
	tThorWarmUp_Data[3319152]["DeleteItem"][1]["Id"]=3319152
	tThorWarmUp_Data[3319152]["RewardStrengthValue"] = {}
	tThorWarmUp_Data[3319152]["RewardStrengthValue"]["Value"] = 6000
	tThorWarmUp_Data[3319152]["LogId"] = 12001255
	
--活动后上交雷霆神魄/雷霆源晶/雷霆圣令
	--雷霆神魄	每个2气力
	tThorWarmUp_Data[3319134] = {}
	tThorWarmUp_Data[3319134]["DeleteItem"] = {}
	tThorWarmUp_Data[3319134]["DeleteItem"][1]={}
	tThorWarmUp_Data[3319134]["DeleteItem"][1]["Id"]=3319134
	tThorWarmUp_Data[3319134]["DeleteItem"][1] ["ItemNum"]=0
	tThorWarmUp_Data[3319134]["RewardStrengthValue"] = {}
	tThorWarmUp_Data[3319134]["RewardStrengthValue"]["Value"] = 2
	tThorWarmUp_Data[3319134]["LogId"] = 12001255
	--雷霆神魄(赠)	每个2气力
	tThorWarmUp_Data[3319300] = {}
	tThorWarmUp_Data[3319300]["DeleteItem"] = {}
	tThorWarmUp_Data[3319300]["DeleteItem"][1]={}
	tThorWarmUp_Data[3319300]["DeleteItem"][1]["Id"]=3319300
	tThorWarmUp_Data[3319300]["DeleteItem"][1] ["ItemNum"]=0
	tThorWarmUp_Data[3319300]["RewardStrengthValue"] = {}
	tThorWarmUp_Data[3319300]["RewardStrengthValue"]["Value"] = 2
	tThorWarmUp_Data[3319300]["LogId"] = 12001255
	--雷霆源晶	每个2气力
	tThorWarmUp_Data[3319135] = {}
	tThorWarmUp_Data[3319135]["DeleteItem"] = {}
	tThorWarmUp_Data[3319135]["DeleteItem"][1]={}
	tThorWarmUp_Data[3319135]["DeleteItem"][1]["Id"]=3319135
	tThorWarmUp_Data[3319135]["DeleteItem"][1] ["ItemNum"]=0
	tThorWarmUp_Data[3319135]["RewardStrengthValue"] = {}
	tThorWarmUp_Data[3319135]["RewardStrengthValue"]["Value"] = 2
	tThorWarmUp_Data[3319135]["LogId"] = 12001255
	--真正的雷神之锤	每个100气力
	-- tThorWarmUp_Data[3319133] = {}
	-- tThorWarmUp_Data[3319133]["DeleteItem"] = {}
	-- tThorWarmUp_Data[3319133]["DeleteItem"][1]={}
	-- tThorWarmUp_Data[3319133]["DeleteItem"][1]["Id"]=3319133
	-- tThorWarmUp_Data[3319133]["DeleteItem"][1] ["ItemNum"]=0
	-- tThorWarmUp_Data[3319133]["RewardStrengthValue"] = {}
	-- tThorWarmUp_Data[3319133]["RewardStrengthValue"]["Value"] = 100
	-- tThorWarmUp_Data[3319133]["LogId"] = 12001255

--礼包log
	tThorWarmUp_Data["Log"]={}
	--打开雷霆万钧礼包
	tThorWarmUp_Data["Log"][3319139] = "0,0,3319139,%d,12001255,1,0,0"
	--上交雷霆神魄
	tThorWarmUp_Data["Log"]["HandIn"]={}
	tThorWarmUp_Data["Log"]["HandIn"][3319134]="0,0,3319134,%d,12001255,1,0,0"
	tThorWarmUp_Data["Log"]["HandIn"][3319300]="0,0,3319300,%d,12001255,1,0,0"
	--使用赠点包删除
	tThorWarmUp_Data["Log"][3319136] = "0,0,3319136,1,12001255,3,3,%d"
	
	--过期删除log
	tThorWarmUp_Data["Log"]["Overtime"]={}
	tThorWarmUp_Data["Log"]["Overtime"][3319136]="0,0,3319136,%d,12001255,1,0,0"
	tThorWarmUp_Data["Log"]["Overtime"][3319137]="0,0,3319137,%d,12001255,1,0,0"
	tThorWarmUp_Data["Log"]["Overtime"][3319138]="0,0,3319138,%d,12001255,1,0,0"
	tThorWarmUp_Data["Log"]["Overtime"][3319139]="0,0,3319139,%d,12001255,1,0,0"
	tThorWarmUp_Data["Log"]["Overtime"][3319140]="0,0,3319140,%d,12001255,1,0,0"
	tThorWarmUp_Data["Log"]["Overtime"][3319141]="0,0,3319141,%d,12001255,1,0,0"
	tThorWarmUp_Data["Log"]["Overtime"][3319142]="0,0,3319142,%d,12001255,1,0,0"
	tThorWarmUp_Data["Log"]["Overtime"][3319143]="0,0,3319143,%d,12001255,1,0,0"
	tThorWarmUp_Data["Log"]["Overtime"][3319144]="0,0,3319144,%d,12001255,1,0,0"
	
	tThorWarmUp_Data["Log"]["Overtime"][3319133]="0,0,3319133,%d,12001255,1,0,0"
	tThorWarmUp_Data["Log"]["Overtime"][3319134]="0,0,3319134,%d,12001255,1,0,0"
	tThorWarmUp_Data["Log"]["Overtime"][3319135]="0,0,3319135,%d,12001255,1,0,0"
	tThorWarmUp_Data["Log"]["Overtime"][3319300]="0,0,3319300,%d,12001255,1,0,0"
	
	
	
--是否过期删除 是1,否0
	tThorWarmUp_Data["OvertimeJudge"]={}
	tThorWarmUp_Data["OvertimeJudge"][3319136]=1
	tThorWarmUp_Data["OvertimeJudge"][3319137]=1
	tThorWarmUp_Data["OvertimeJudge"][3319138]=1
	tThorWarmUp_Data["OvertimeJudge"][3319139]=1
	--排行榜奖励，过期不删除
	tThorWarmUp_Data["OvertimeJudge"][3319140]=0
	tThorWarmUp_Data["OvertimeJudge"][3319141]=0
	tThorWarmUp_Data["OvertimeJudge"][3319142]=0
	tThorWarmUp_Data["OvertimeJudge"][3319143]=0
	tThorWarmUp_Data["OvertimeJudge"][3319144]=0
	tThorWarmUp_Data["OvertimeJudge"][3319150]=0
	tThorWarmUp_Data["OvertimeJudge"][3319151]=0
	tThorWarmUp_Data["OvertimeJudge"][3319152]=0

	
	--打开赠点包 emoneylog
	tThorWarmUp_Data["EmoneyLog"]={}
	tThorWarmUp_Data["EmoneyLog"][3319136]="10000	0127	0	0	%d	"
	--举锤log
	tThorWarmUp_Data["EmoneyLog"]["PickUp"]="350	22016	0	0	1	"
	--上交log
	tThorWarmUp_Data["EmoneyLog"]["HandIn"]="350	22017	0	0	1	"
	
	--物品id
	tThorWarmUp_Data["ItemID"]={}
	tThorWarmUp_Data["ItemID"][3319134]=3319134
	tThorWarmUp_Data["ItemID"][3319135]=3319135
	tThorWarmUp_Data["ItemID"][3319133]=3319133
	tThorWarmUp_Data["ItemID"][3319300]=3319300
	
	--兑换商店npcid
	tThorWarmUp_Data["NpcId"]=23644
	--使用道具寻路
	tThorWarmUp_Data["FindPathNpcId"]={}
	--使用雷霆锤 寻路到希芙女神
	tThorWarmUp_Data["FindPathNpcId"][3319134]=23643
	--使用雷霆锤(赠) 寻路到希芙女神
	tThorWarmUp_Data["FindPathNpcId"][3319300]=23643
	--使用雷霆圣令 寻路到邪神洛基
	tThorWarmUp_Data["FindPathNpcId"][3319135]=23644
	
	-- 读条
	tThorWarmUp_Data["Loading"]={}
	tThorWarmUp_Data["Loading"]["Secs"] = 1
	tThorWarmUp_Data["Loading"]["ActionId"] = 101
	
--举锤成功 获得幻影雷霆锤（赠）
	tThorWarmUp_Data["Reward"]={}
	tThorWarmUp_Data["Reward"]["LogId"] = 12001255
	tThorWarmUp_Data["Reward"]["RewardItem"] = {}
	tThorWarmUp_Data["Reward"]["RewardItem"][1]={}
	tThorWarmUp_Data["Reward"]["RewardItem"][1]["Id"]= 3319300
	tThorWarmUp_Data["Reward"]["RewardItem"][1]["Attr"]= "0 1"
	
	--签到/国战功勋礼包给赠品雷霆神魄
	tThorWarmUp_Data["ExtraReward"]={}
	tThorWarmUp_Data["ExtraReward"]["RewardItem"] = {}
	tThorWarmUp_Data["ExtraReward"]["RewardItem"][1] = {}
	tThorWarmUp_Data["ExtraReward"]["RewardItem"][1]["Id"] = 3319300
	tThorWarmUp_Data["ExtraReward"]["RewardItem"][1]["Attr"] = "0 1"
	tThorWarmUp_Data["ExtraReward"]["LogId"] = 12001255
	
--打怪掉落
	tThorWarmUp_Data["MonsterDrop"]={}
	tThorWarmUp_Data["MonsterDrop"][1]={}
	tThorWarmUp_Data["MonsterDrop"][1]["ItemChanceSum"]=10000
	
	--5%掉落赠品雷霆神魄
	tThorWarmUp_Data["MonsterDrop"][1][1] = {}
	tThorWarmUp_Data["MonsterDrop"][1][1]["RandomItemChanceType"] = 2
	tThorWarmUp_Data["MonsterDrop"][1][1]["ItemChance"] = 500
	tThorWarmUp_Data["MonsterDrop"][1][1]["RewardItem"] = {}
	tThorWarmUp_Data["MonsterDrop"][1][1]["RewardItem"][1] = {}
	tThorWarmUp_Data["MonsterDrop"][1][1]["RewardItem"][1]["Id"] = 3319300
	tThorWarmUp_Data["MonsterDrop"][1][1]["RewardItem"][1]["Attr"] = "0 1"
	tThorWarmUp_Data["MonsterDrop"][1][1]["LogId"]=12001255
	tThorWarmUp_Data["MonsterDrop"][1][1]["Sign"] = 1
	--不掉落
	tThorWarmUp_Data["MonsterDrop"][1][2] = {} 
	tThorWarmUp_Data["MonsterDrop"][1][2]["RandomItemChanceType"] = 2
	tThorWarmUp_Data["MonsterDrop"][1][2]["ItemChance"] = 9500
	-- tThorWarmUp_Data["MonsterDrop"][1][2]["LogId"] = 12001255
	tThorWarmUp_Data["MonsterDrop"][1][2]["Sign"] = 2
	
	--0.1%掉落可交易雷霆神魄
	tThorWarmUp_Data["MonsterDrop"][2]={}
	tThorWarmUp_Data["MonsterDrop"][2]["ItemChanceSum"]=10000
	
	tThorWarmUp_Data["MonsterDrop"][2][1] = {}
	tThorWarmUp_Data["MonsterDrop"][2][1]["RandomItemChanceType"] = 2
	tThorWarmUp_Data["MonsterDrop"][2][1]["ItemChance"] = 10
	tThorWarmUp_Data["MonsterDrop"][2][1]["RewardItem"] = {}
	tThorWarmUp_Data["MonsterDrop"][2][1]["RewardItem"][1] = {}
	tThorWarmUp_Data["MonsterDrop"][2][1]["RewardItem"][1]["Id"] = 3319134
	tThorWarmUp_Data["MonsterDrop"][2][1]["RewardItem"][1]["Attr"] = "0 1"
	tThorWarmUp_Data["MonsterDrop"][2][1]["LogId"]=12001255
	--不掉落
	tThorWarmUp_Data["MonsterDrop"][2][2] = {} 
	tThorWarmUp_Data["MonsterDrop"][2][2]["RandomItemChanceType"] = 2
	tThorWarmUp_Data["MonsterDrop"][2][2]["ItemChance"] = 9990
	-- tThorWarmUp_Data["MonsterDrop"][2][2]["LogId"] = 12001255
	
	--5%掉落赠品雷霆源晶,限量10个
	tThorWarmUp_Data["MonsterDrop"][3]={}
	tThorWarmUp_Data["MonsterDrop"][3]["ItemChanceSum"]=10000
	
	tThorWarmUp_Data["MonsterDrop"][3][1] = {}
	tThorWarmUp_Data["MonsterDrop"][3][1]["RandomItemChanceType"] = 2
	tThorWarmUp_Data["MonsterDrop"][3][1]["ItemChance"] = 500
	tThorWarmUp_Data["MonsterDrop"][3][1]["RewardItem"] = {}
	tThorWarmUp_Data["MonsterDrop"][3][1]["RewardItem"][1] = {}
	tThorWarmUp_Data["MonsterDrop"][3][1]["RewardItem"][1]["Id"] = 3319135
	tThorWarmUp_Data["MonsterDrop"][3][1]["RewardItem"][1]["Attr"] = "0 1"
	tThorWarmUp_Data["MonsterDrop"][3][1]["LogId"]=12001255
	tThorWarmUp_Data["MonsterDrop"][3][1]["Sign"] = 1
	--不掉落
	tThorWarmUp_Data["MonsterDrop"][3][2] = {} 
	tThorWarmUp_Data["MonsterDrop"][3][2]["RandomItemChanceType"] = 2
	tThorWarmUp_Data["MonsterDrop"][3][2]["ItemChance"] = 9500
	-- tThorWarmUp_Data["MonsterDrop"][3][2]["LogId"] = 12001255
	tThorWarmUp_Data["MonsterDrop"][3][2]["Sign"] = 2
	
	--阶段性奖励数目
	tThorWarmUp_Data["RewardStep"]={}
	tThorWarmUp_Data["RewardStep"][1] = 100
	tThorWarmUp_Data["RewardStep"][2] = 200
	tThorWarmUp_Data["RewardStep"][3] = 300
	tThorWarmUp_Data["RewardStep"][4] = 500
	tThorWarmUp_Data["RewardStep"][5] = 600
	tThorWarmUp_Data["RewardStep"][6] = 800
	tThorWarmUp_Data["RewardStep"][7] = 1000
	
	--阶段性奖励个数
	tThorWarmUp_Data["RewardNum"]={}
	tThorWarmUp_Data["RewardNum"][1] = 1
	tThorWarmUp_Data["RewardNum"][2] = 2
	tThorWarmUp_Data["RewardNum"][3] = 3
	tThorWarmUp_Data["RewardNum"][4] = 5
	tThorWarmUp_Data["RewardNum"][5] = 6
	tThorWarmUp_Data["RewardNum"][6] = 8
	tThorWarmUp_Data["RewardNum"][7] = 10
	
	
	--阶段性奖励背包空间
	tThorWarmUp_Data["StepRewardNeedSpace"]=1
	--阶段性奖励
	tThorWarmUp_Data["GetStepReward"]={}
	--第一阶段
	tThorWarmUp_Data["GetStepReward"][1]={}
	tThorWarmUp_Data["GetStepReward"][1]["LogId"] = 12001255
	tThorWarmUp_Data["GetStepReward"][1]["RewardNoNeedTip"] = 1
	tThorWarmUp_Data["GetStepReward"][1]["RewardItem"] = {}
	tThorWarmUp_Data["GetStepReward"][1]["RewardItem"][1]={}
	tThorWarmUp_Data["GetStepReward"][1]["RewardItem"][1]["Id"]= 3319139
	tThorWarmUp_Data["GetStepReward"][1]["RewardItem"][1]["Attr"]= "0 1"
	
	--第二阶段
	tThorWarmUp_Data["GetStepReward"][2]={}
	tThorWarmUp_Data["GetStepReward"][2]["LogId"] = 12001255
	tThorWarmUp_Data["GetStepReward"][2]["RewardNoNeedTip"] = 1
	tThorWarmUp_Data["GetStepReward"][2]["RewardItem"] = {}
	tThorWarmUp_Data["GetStepReward"][2]["RewardItem"][1]={}
	tThorWarmUp_Data["GetStepReward"][2]["RewardItem"][1]["Id"]= 3319139
	tThorWarmUp_Data["GetStepReward"][2]["RewardItem"][1]["Attr"]= "0 2"
	
	--第三阶段
	tThorWarmUp_Data["GetStepReward"][3]={}
	tThorWarmUp_Data["GetStepReward"][3]["LogId"] = 12001255
	tThorWarmUp_Data["GetStepReward"][3]["RewardNoNeedTip"] = 1
	tThorWarmUp_Data["GetStepReward"][3]["RewardItem"] = {}
	tThorWarmUp_Data["GetStepReward"][3]["RewardItem"][1]={}
	tThorWarmUp_Data["GetStepReward"][3]["RewardItem"][1]["Id"]= 3319139
	tThorWarmUp_Data["GetStepReward"][3]["RewardItem"][1]["Attr"]= "0 3"
	
	--第四阶段
	tThorWarmUp_Data["GetStepReward"][4]={}
	tThorWarmUp_Data["GetStepReward"][4]["LogId"] = 12001255
	tThorWarmUp_Data["GetStepReward"][4]["RewardNoNeedTip"] = 1
	tThorWarmUp_Data["GetStepReward"][4]["RewardItem"] = {}
	tThorWarmUp_Data["GetStepReward"][4]["RewardItem"][1]={}
	tThorWarmUp_Data["GetStepReward"][4]["RewardItem"][1]["Id"]= 3319139
	tThorWarmUp_Data["GetStepReward"][4]["RewardItem"][1]["Attr"]= "0 5"
	
	--第五阶段
	tThorWarmUp_Data["GetStepReward"][5]={}
	tThorWarmUp_Data["GetStepReward"][5]["LogId"] = 12001255
	tThorWarmUp_Data["GetStepReward"][5]["RewardNoNeedTip"] = 1
	tThorWarmUp_Data["GetStepReward"][5]["RewardItem"] = {}
	tThorWarmUp_Data["GetStepReward"][5]["RewardItem"][1]={}
	tThorWarmUp_Data["GetStepReward"][5]["RewardItem"][1]["Id"]= 3319139
	tThorWarmUp_Data["GetStepReward"][5]["RewardItem"][1]["Attr"]= "0 6"
	
	--第六阶段
	tThorWarmUp_Data["GetStepReward"][6]={}
	tThorWarmUp_Data["GetStepReward"][6]["LogId"] = 12001255
	tThorWarmUp_Data["GetStepReward"][6]["RewardNoNeedTip"] = 1
	tThorWarmUp_Data["GetStepReward"][6]["RewardItem"] = {}
	tThorWarmUp_Data["GetStepReward"][6]["RewardItem"][1]={}
	tThorWarmUp_Data["GetStepReward"][6]["RewardItem"][1]["Id"]= 3319139
	tThorWarmUp_Data["GetStepReward"][6]["RewardItem"][1]["Attr"]= "0 8"
	
	--第七阶段
	tThorWarmUp_Data["GetStepReward"][7]={}
	tThorWarmUp_Data["GetStepReward"][7]["LogId"] = 12001255
	tThorWarmUp_Data["GetStepReward"][7]["RewardNoNeedTip"] = 1
	tThorWarmUp_Data["GetStepReward"][7]["RewardItem"] = {}
	tThorWarmUp_Data["GetStepReward"][7]["RewardItem"][1]={}
	tThorWarmUp_Data["GetStepReward"][7]["RewardItem"][1]["Id"]= 3319139
	tThorWarmUp_Data["GetStepReward"][7]["RewardItem"][1]["Attr"]= "0 10"
	
	--排行榜奖励
	tThorWarmUp_Data["RankReward"]={}
	--第一名
	tThorWarmUp_Data["RankReward"][1]={}
	tThorWarmUp_Data["RankReward"][1]["LogId"] = 12001255
	tThorWarmUp_Data["RankReward"][1]["RewardItem"] = {}
	tThorWarmUp_Data["RankReward"][1]["RewardItem"][1]={}
	tThorWarmUp_Data["RankReward"][1]["RewardItem"][1]["Id"]= 3008201
	tThorWarmUp_Data["RankReward"][1]["RewardItem"][1]["Attr"]= "0 1"
	tThorWarmUp_Data["RankReward"][1]["RewardItem"][2]={}
	tThorWarmUp_Data["RankReward"][1]["RewardItem"][2]["Id"]= 3319140
	tThorWarmUp_Data["RankReward"][1]["RewardItem"][2]["Attr"]= "0 1"
	
	--第二名
	tThorWarmUp_Data["RankReward"][2]={}
	tThorWarmUp_Data["RankReward"][2]["LogId"] = 12001255
	tThorWarmUp_Data["RankReward"][2]["RewardItem"] = {}
	tThorWarmUp_Data["RankReward"][2]["RewardItem"][1]={}
	tThorWarmUp_Data["RankReward"][2]["RewardItem"][1]["Id"]= 3319150
	tThorWarmUp_Data["RankReward"][2]["RewardItem"][1]["Attr"]= "0 1"
	tThorWarmUp_Data["RankReward"][2]["RewardItem"][2]={}
	tThorWarmUp_Data["RankReward"][2]["RewardItem"][2]["Id"]= 3319141
	tThorWarmUp_Data["RankReward"][2]["RewardItem"][2]["Attr"]= "0 1"
	
	--第三名
	tThorWarmUp_Data["RankReward"][3]={}
	tThorWarmUp_Data["RankReward"][3]["LogId"] = 12001255
	tThorWarmUp_Data["RankReward"][3]["RewardItem"] = {}
	tThorWarmUp_Data["RankReward"][3]["RewardItem"][1]={}
	tThorWarmUp_Data["RankReward"][3]["RewardItem"][1]["Id"]= 3305452
	tThorWarmUp_Data["RankReward"][3]["RewardItem"][1]["Attr"]= "0 1"
	tThorWarmUp_Data["RankReward"][3]["RewardItem"][2]={}
	tThorWarmUp_Data["RankReward"][3]["RewardItem"][2]["Id"]= 3319142
	tThorWarmUp_Data["RankReward"][3]["RewardItem"][2]["Attr"]= "0 1"
	
	--第四名
	tThorWarmUp_Data["RankReward"][4]={}
	tThorWarmUp_Data["RankReward"][4]["LogId"] = 12001255
	tThorWarmUp_Data["RankReward"][4]["RewardItem"] = {}
	tThorWarmUp_Data["RankReward"][4]["RewardItem"][1]={}
	tThorWarmUp_Data["RankReward"][4]["RewardItem"][1]["Id"]= 3319151
	tThorWarmUp_Data["RankReward"][4]["RewardItem"][1]["Attr"]= "0 1"
	tThorWarmUp_Data["RankReward"][4]["RewardItem"][2]={}
	tThorWarmUp_Data["RankReward"][4]["RewardItem"][2]["Id"]= 3319143
	tThorWarmUp_Data["RankReward"][4]["RewardItem"][2]["Attr"]= "0 1"
	
	--第五名
	tThorWarmUp_Data["RankReward"][5]={}
	tThorWarmUp_Data["RankReward"][5]["LogId"] = 12001255
	tThorWarmUp_Data["RankReward"][5]["RewardItem"] = {}
	tThorWarmUp_Data["RankReward"][5]["RewardItem"][1]={}
	tThorWarmUp_Data["RankReward"][5]["RewardItem"][1]["Id"]= 3319152
	tThorWarmUp_Data["RankReward"][5]["RewardItem"][1]["Attr"]= "0 1"
	tThorWarmUp_Data["RankReward"][5]["RewardItem"][2]={}
	tThorWarmUp_Data["RankReward"][5]["RewardItem"][2]["Id"]= 3319144
	tThorWarmUp_Data["RankReward"][5]["RewardItem"][2]["Attr"]= "0 1"
	
	--第六-十名
	tThorWarmUp_Data["RankReward"][6]={}
	tThorWarmUp_Data["RankReward"][6]["LogId"] = 12001255
	tThorWarmUp_Data["RankReward"][6]["RewardItem"] = {}
	tThorWarmUp_Data["RankReward"][6]["RewardItem"][1]={}
	tThorWarmUp_Data["RankReward"][6]["RewardItem"][1]["Id"]= 3008200
	tThorWarmUp_Data["RankReward"][6]["RewardItem"][1]["Attr"]= "0 1"
	
	--第七名
	tThorWarmUp_Data["RankReward"][7]={}
	tThorWarmUp_Data["RankReward"][7]["LogId"] = 12001255
	tThorWarmUp_Data["RankReward"][7]["RewardItem"] = {}
	tThorWarmUp_Data["RankReward"][7]["RewardItem"][1]={}
	tThorWarmUp_Data["RankReward"][7]["RewardItem"][1]["Id"]= 3008200
	tThorWarmUp_Data["RankReward"][7]["RewardItem"][1]["Attr"]= "0 1"
	
	--第八名
	tThorWarmUp_Data["RankReward"][8]={}
	tThorWarmUp_Data["RankReward"][8]["LogId"] = 12001255
	tThorWarmUp_Data["RankReward"][8]["RewardItem"] = {}
	tThorWarmUp_Data["RankReward"][8]["RewardItem"][1]={}
	tThorWarmUp_Data["RankReward"][8]["RewardItem"][1]["Id"]= 3008200
	tThorWarmUp_Data["RankReward"][8]["RewardItem"][1]["Attr"]= "0 1"
	
	--第九名
	tThorWarmUp_Data["RankReward"][9]={}
	tThorWarmUp_Data["RankReward"][9]["LogId"] = 12001255
	tThorWarmUp_Data["RankReward"][9]["RewardItem"] = {}
	tThorWarmUp_Data["RankReward"][9]["RewardItem"][1]={}
	tThorWarmUp_Data["RankReward"][9]["RewardItem"][1]["Id"]= 3008200
	tThorWarmUp_Data["RankReward"][9]["RewardItem"][1]["Attr"]= "0 1"
	
	--第十名
	tThorWarmUp_Data["RankReward"][10]={}
	tThorWarmUp_Data["RankReward"][10]["LogId"] = 12001255
	tThorWarmUp_Data["RankReward"][10]["RewardItem"] = {}
	tThorWarmUp_Data["RankReward"][10]["RewardItem"][1]={}
	tThorWarmUp_Data["RankReward"][10]["RewardItem"][1]["Id"]= 3008200
	tThorWarmUp_Data["RankReward"][10]["RewardItem"][1]["Attr"]= "0 1"


--举锤光效
	tThorWarmUp_Data["PickUpEffect"]={}
	tThorWarmUp_Data["PickUpEffect"]["NpcId"]=23645
	tThorWarmUp_Data["PickUpEffect"]["NpcEffect"]="Attack35r"
	tThorWarmUp_Data["PickUpEffect"]["UserEffect"]="task072"
	
	
	--雷神武器专属礼包
	tThorWarmUp_Data["WeaponPack"]={}
	--+5雷神专属武器礼包
	tThorWarmUp_Data["WeaponPack"][3319145]={}
	tThorWarmUp_Data["WeaponPack"][3319145]["LogId"] = 12001255
	tThorWarmUp_Data["WeaponPack"][3319145]["DeleteItem"] = {}
	tThorWarmUp_Data["WeaponPack"][3319145]["DeleteItem"][1]={}
	tThorWarmUp_Data["WeaponPack"][3319145]["DeleteItem"][1]["Id"]=3319145
	tThorWarmUp_Data["WeaponPack"][3319145]["RewardItem"] = {}
	tThorWarmUp_Data["WeaponPack"][3319145]["RewardItem"][1] = {}
	tThorWarmUp_Data["WeaponPack"][3319145]["RewardItem"][1]["Id"] = 681198
	tThorWarmUp_Data["WeaponPack"][3319145]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 5"
	
	--+4雷神专属武器礼包
	tThorWarmUp_Data["WeaponPack"][3319146]={}
	tThorWarmUp_Data["WeaponPack"][3319146]["LogId"] = 12001255
	tThorWarmUp_Data["WeaponPack"][3319146]["DeleteItem"] = {}
	tThorWarmUp_Data["WeaponPack"][3319146]["DeleteItem"][1]={}
	tThorWarmUp_Data["WeaponPack"][3319146]["DeleteItem"][1]["Id"]=3319146
	tThorWarmUp_Data["WeaponPack"][3319146]["RewardItem"] = {}
	tThorWarmUp_Data["WeaponPack"][3319146]["RewardItem"][1] = {}
	tThorWarmUp_Data["WeaponPack"][3319146]["RewardItem"][1]["Id"] = 681198
	tThorWarmUp_Data["WeaponPack"][3319146]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 4"
	
	--+3雷神专属武器礼包
	tThorWarmUp_Data["WeaponPack"][3319147]={}
	tThorWarmUp_Data["WeaponPack"][3319147]["LogId"] = 12001255
	tThorWarmUp_Data["WeaponPack"][3319147]["DeleteItem"] = {}
	tThorWarmUp_Data["WeaponPack"][3319147]["DeleteItem"][1]={}
	tThorWarmUp_Data["WeaponPack"][3319147]["DeleteItem"][1]["Id"]=3319147
	tThorWarmUp_Data["WeaponPack"][3319147]["RewardItem"] = {}
	tThorWarmUp_Data["WeaponPack"][3319147]["RewardItem"][1] = {}
	tThorWarmUp_Data["WeaponPack"][3319147]["RewardItem"][1]["Id"] = 681198
	tThorWarmUp_Data["WeaponPack"][3319147]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 3"

	--+2雷神专属武器礼包
	tThorWarmUp_Data["WeaponPack"][3319148]={}
	tThorWarmUp_Data["WeaponPack"][3319148]["LogId"] = 12001255
	tThorWarmUp_Data["WeaponPack"][3319148]["DeleteItem"] = {}
	tThorWarmUp_Data["WeaponPack"][3319148]["DeleteItem"][1]={}
	tThorWarmUp_Data["WeaponPack"][3319148]["DeleteItem"][1]["Id"]=3319148
	tThorWarmUp_Data["WeaponPack"][3319148]["RewardItem"] = {}
	tThorWarmUp_Data["WeaponPack"][3319148]["RewardItem"][1] = {}
	tThorWarmUp_Data["WeaponPack"][3319148]["RewardItem"][1]["Id"] = 681198
	tThorWarmUp_Data["WeaponPack"][3319148]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 2"
	
	--+1雷神专属武器礼包
	tThorWarmUp_Data["WeaponPack"][3319149]={}
	tThorWarmUp_Data["WeaponPack"][3319149]["LogId"] = 12001255
	tThorWarmUp_Data["WeaponPack"][3319149]["DeleteItem"] = {}
	tThorWarmUp_Data["WeaponPack"][3319149]["DeleteItem"][1]={}
	tThorWarmUp_Data["WeaponPack"][3319149]["DeleteItem"][1]["Id"]=3319149
	tThorWarmUp_Data["WeaponPack"][3319149]["RewardItem"] = {}
	tThorWarmUp_Data["WeaponPack"][3319149]["RewardItem"][1] = {}
	tThorWarmUp_Data["WeaponPack"][3319149]["RewardItem"][1]["Id"] = 681198
	tThorWarmUp_Data["WeaponPack"][3319149]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 1"

---------------------------------排行榜---------------------------------------------
-- 排行榜表
-- 雷霆上交排行榜
-- tRankingFunc_Info[23643] = {}
-- tRankingFunc_Info[23643]["ActiveTime"] = tActivityTime["ThorWarmUp"]["MainNPCTime"]
-- tRankingFunc_Info[23643]["DayTime"] = {}
-- tRankingFunc_Info[23643]["DayTime"][1] = "00:00 23:59"
-- tRankingFunc_Info[23643]["Reset"] = 1
-- tRankingFunc_Info[23643]["Global"] = {53184,53185,53186,53187}
-- tRankingFunc_Info[23643]["RankNum"] = 10

-- tRankingFunc_Info[23643]["Msg"] = {}
-- tRankingFunc_Info[23643]["Msg"]["ActiveTime"] = "2-1"
-- tRankingFunc_Info[23643]["Msg"]["NoRank"] = "2-2"
-- tRankingFunc_Info[23643]["Msg"]["HaveReward"] = "2-3"

-- npc处领取奖励
-- tRankingFunc_Info[23643]["Receive"] = {}
-- tRankingFunc_Info[23643]["Receive"]["ActiveTime"] = tActivityTime["ThorWarmUp"]["MainNPCTime"]
-- tRankingFunc_Info[23643]["Receive"]["Reward"] = {}
-- tRankingFunc_Info[23643]["Receive"]["Reward"][1]= tThorWarmUp_Data["RankReward"][1]
-- tRankingFunc_Info[23643]["Receive"]["Reward"][1]["RewardRank"] = 1
-- tRankingFunc_Info[23643]["Receive"]["Reward"][2] = tThorWarmUp_Data["RankReward"][2]
-- tRankingFunc_Info[23643]["Receive"]["Reward"][2]["RewardRank"] = 2
-- tRankingFunc_Info[23643]["Receive"]["Reward"][3] = tThorWarmUp_Data["RankReward"][3]
-- tRankingFunc_Info[23643]["Receive"]["Reward"][3]["RewardRank"] = 3
-- tRankingFunc_Info[23643]["Receive"]["Reward"][4] = tThorWarmUp_Data["RankReward"][4]
-- tRankingFunc_Info[23643]["Receive"]["Reward"][4]["RewardRank"] = 4
-- tRankingFunc_Info[23643]["Receive"]["Reward"][5] = tThorWarmUp_Data["RankReward"][5]
-- tRankingFunc_Info[23643]["Receive"]["Reward"][5]["RewardRank"] = 5
-- tRankingFunc_Info[23643]["Receive"]["Reward"][6] = tThorWarmUp_Data["RankReward"][6]
-- tRankingFunc_Info[23643]["Receive"]["Reward"][6]["RewardRank"] = 6
-- tRankingFunc_Info[23643]["Receive"]["Reward"][7] = tThorWarmUp_Data["RankReward"][7]
-- tRankingFunc_Info[23643]["Receive"]["Reward"][7]["RewardRank"] = 7
-- tRankingFunc_Info[23643]["Receive"]["Reward"][8] = tThorWarmUp_Data["RankReward"][8]
-- tRankingFunc_Info[23643]["Receive"]["Reward"][8]["RewardRank"] = 8
-- tRankingFunc_Info[23643]["Receive"]["Reward"][9] = tThorWarmUp_Data["RankReward"][9]
-- tRankingFunc_Info[23643]["Receive"]["Reward"][9]["RewardRank"] = 9
-- tRankingFunc_Info[23643]["Receive"]["Reward"][10] = tThorWarmUp_Data["RankReward"][10]
-- tRankingFunc_Info[23643]["Receive"]["Reward"][10]["RewardRank"] = 10
----------------------------------逻辑部分---------------------------------------------

--等级判断
function ThorWarmUp_JudgeLevel() 
	local nLevel = tThorWarmUp_Data["Level"]
	local nMete = tThorWarmUp_Data["Metempsychosis"]
	if User_JudgeLevelAndMetempsychosis(nLevel,nMete) then
		return true
	else
		return false
	end
end 

--过期判断
function ThorWarmUp_IsOvertime(nItemId) 
	if CommonFunc_GetAfterActivityTime(tActivityTime["ThorWarmUp"]["MainNPCTime"]) then
		local nNum = Get_CountItemType(nItemId,0)
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			local sLog =string.format(tThorWarmUp_Data["Log"]["Overtime"][nItemId],nNum)
			Sys_SaveActionFestivalLog(sLog)
			User_TalkChannel2005(tThorWarmUp_Text["SystemTips"]["Overtime"])
		end
		return true
	else
		return false
	end 
end 

--兑换商店对白
function ThorWarmUp_OpenExchangeShop()
--活动时间判断
	if not Sys_ChkFullTime(tActivityTime["ThorWarmUp"]["ActivityTime"]) then
		return 
	end
--等级判断
	if not ThorWarmUp_JudgeLevel() then 
		return Sys_MsgBox(tThorWarmUp_Text["SystemTips"]["Level"])
	else
		tNpcGossip[23644]["OptionFunc1"] = "ThorWarmUp_OpenExchangeShop1"
		tNpcGossip[23644]["Text1-1"] = {111,112,113,114,115}
		tNpcGossip[23644]["tOption1-1"] = {1}
	end
	LinkNpcGossipFunc_New(23644,"1-1")
end 

--打开兑换商店
function ThorWarmUp_OpenExchangeShop1()
--活动时间判断
	if not Sys_ChkFullTime(tActivityTime["ThorWarmUp"]["ActivityTime"]) then
		return 
	end
--等级判断
	if not ThorWarmUp_JudgeLevel() then 
		return Sys_MsgBox(tThorWarmUp_Text["SystemTips"]["Level"])
	end
	User_OpenExchangeShop(tThorWarmUp_Data["NpcId"])
end 


--赠点包使用函数
function ThorWarmUp_UseMonoEMoneyBag(nItemId)
	--检测物品
	if not Item_ChkItem(nItemId) then
		return
	end
	--过期删除
	if tThorWarmUp_Data["OvertimeJudge"][nItemId]==1 then 
		if ThorWarmUp_IsOvertime(nItemId) then
			return 
		end
	end
	--赠点上限判断
	if Get_UserMonoEMoney() + tThorWarmUp_Data["MostMonoEMoneyGift"] > G_User_MaxEmoneyMono then
		Sys_MsgBox(tThorWarmUp_Text["SystemTips"]["MostMonoEMoneyGift"])
		return
	end
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		local flat,tNum = Probabil_RandomAward(tThorWarmUp_Data[nItemId]["Reward"],1)
		local nStart = tNum[1]["tAward"][1]["Start"]
		local nEnd = tNum[1]["tAward"][1]["End"]
		local nCp = math.random(nStart,nEnd)
		local sLog = string.format(tThorWarmUp_Data["Log"][nItemId],nCp)
		local sEmoneyLog = string.format(tThorWarmUp_Data["EmoneyLog"][nItemId],nCp)
		tThorWarmUp_Data["MonoEMoney"]["RewardEMoneyMono"]["Value"] = nCp
		RewardTemplate_Reward(tThorWarmUp_Data["MonoEMoney"])
		Sys_SaveActionFestivalLog(sLog)
		Sys_SaveEmoneyBuy(sEmoneyLog)
	end
end

--雷霆万钧礼包使用
function ThorWarmUp_UseRandomBag(nItemId)
	--检测物品
	if not Item_ChkItem(nItemId) then
		return
	end
	--过期删除
	if tThorWarmUp_Data["OvertimeJudge"][nItemId]==1 then 
		if ThorWarmUp_IsOvertime(nItemId) then
			return 
		end
	end
	--背包空间判断
	local nSpace = RewardTemplate_GetRandomSpace(tThorWarmUp_Data,nItemId)
	if not User_CheckLeftSpace(nSpace) then
		local sText=string.format(tThorWarmUp_Text["SystemTips"]["NoSpace"],nSpace)
		User_TalkChannel2005(sText)
		return 
	end
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		--记删除礼包log
		local sLog = string.format(tThorWarmUp_Data["Log"][nItemId],1)
		Sys_SaveActionFestivalLog(sLog)
		local tAward = RewardTemplate_NewRandom(tThorWarmUp_Data, nItemId)
		local nBroadcast = tAward[1]["tAward"][1]["Broadcast"]
		if nBroadcast==1 then 
			--全服公告
			local nUserId = Get_UserId()
			local sUserName = Get_UserName(nUserId)
			Sys_TalkBroadcast(string.format(tThorWarmUp_Text["SystemTips"]["BroadcastGetReward"],sUserName))
		end
	end
end

--普通礼包打开
function ThorWarmUp_OpenNormalPack(nItemId)
	--检测物品
	if not Item_ChkItem(nItemId) then
		return
	end
	--过期删除
	if tThorWarmUp_Data["OvertimeJudge"][nItemId]==1 then 
		if ThorWarmUp_IsOvertime(nItemId) then
			return 
		end
	end
	--背包空间判断
	local nGetRewardSpace = RewardTemplate_GetRewardSpace(tThorWarmUp_Data[nItemId])
	local nDelRewardSpace = RewardTemplate_GetDelSpace(tThorWarmUp_Data[nItemId])
	local nNeedSpace = nGetRewardSpace - nDelRewardSpace
	if not User_CheckLeftSpace(nNeedSpace) then
		local sText=string.format(tThorWarmUp_Text["SystemTips"]["NoSpace"],nNeedSpace)
		User_TalkChannel2005(sText)
		return
	end
	--打开礼包
	if RewardTemplate_UseItem(tThorWarmUp_Data[nItemId]) then 
		return
	end
end 

--排名礼包打开,过期不删除
function ThorWarmUp_OpenRankPack(nItemId)
	--检测物品
	if not Item_ChkItem(nItemId) then
		return
	end
		-- 判断激情服
	local nServerType = tThorWarmUp_Data["Server"]["Normal"]
	-- if SpecialServer_ChkNoGiftServer() then
		-- nServerType = tThorWarmUp_Data["Server"]["Special"]
	-- end
	
	--背包空间判断
	local nGetRewardSpace = RewardTemplate_GetRewardSpace(tThorWarmUp_Data[nItemId][nServerType])
	local nDelRewardSpace = RewardTemplate_GetDelSpace(tThorWarmUp_Data[nItemId][nServerType])
	local nNeedSpace = nGetRewardSpace - nDelRewardSpace
	if not User_CheckLeftSpace(nNeedSpace) then
		local sText=string.format(tThorWarmUp_Text["SystemTips"]["NoSpace"],nNeedSpace)
		User_TalkChannel2005(sText)
		return
	end
	--打开礼包
	if RewardTemplate_UseItem(tThorWarmUp_Data[nItemId][nServerType]) then 
		return
	end
end 


--上交雷霆神魄 nItemId1 不可交易雷霆锤 nItemId2 可交易雷霆锤 nIndex 1：上交一个 2：全部上交
function ThorWarmUp_HandIn(nNpcId,nItemId1,nItemId2)
--活动时间判断
	if not Sys_ChkFullTime(tActivityTime["ThorWarmUp"]["ActivityTime"]) then
		return
	end
--等级判断
	if not ThorWarmUp_JudgeLevel() then 
		return
	end
	--背包无雷霆神魄
	if not Item_ChkItem(nItemId1) then
		if not Item_ChkItem(nItemId2) then
			return LinkNpcGossipFunc_New(nNpcId,"1-4")
		end 
	end
	local nNum1 = Get_CountItemType(nItemId1,0)
	local nNum2 = Get_CountItemType(nItemId2,0)
	local nHandInNum=100
	
--优先上交不可交易
	--不可交易大于100个
	if Item_ChkMulItem(nItemId1,nItemId1,nHandInNum) and Item_DelMulItem(nItemId1,nItemId1,nHandInNum) then
		--增加上交数后写入排行榜
		ThorWarmUp_SetInfoToRank(nHandInNum)
		--删除物品log
		ThorWarmUp_SaveHandInLog(nHandInNum,nItemId1)
		--给提示
		ThorWarmUp_HandInTips(nNpcId,"1-3",nHandInNum)
		return true
	else
		--有不可交易，不足100个
		if nNum1>0 then 
			nHandInNum=nNum1
			if Item_ChkMulItem(nItemId1,nItemId1,nHandInNum) and Item_DelMulItem(nItemId1,nItemId1,nHandInNum) then
				--增加上交数后写入排行榜
				ThorWarmUp_SetInfoToRank(nHandInNum)
				--删除物品log
				ThorWarmUp_SaveHandInLog(nHandInNum,nItemId1)
				
				--给提示
				ThorWarmUp_HandInTips(nNpcId,"1-3",nHandInNum)
				return true
				
			end
		else--背包无不可交易
			--上交可交易
			if Item_ChkMulItem(nItemId2,nItemId2,nHandInNum) and Item_DelMulItem(nItemId2,nItemId2,nHandInNum) then
				
				--增加上交数后写入排行榜
				ThorWarmUp_SetInfoToRank(nHandInNum)
				--删除物品log
				ThorWarmUp_SaveHandInLog(nHandInNum,nItemId2)
				
				--给提示
				ThorWarmUp_HandInTips(nNpcId,"1-3",nHandInNum)
				return true
			else--不足100个
				if nNum2>0 then 
					nHandInNum=nNum2
					if Item_ChkMulItem(nItemId2,nItemId2,nHandInNum) and Item_DelMulItem(nItemId2,nItemId2,nHandInNum) then
						--增加上交数后写入排行榜
						ThorWarmUp_SetInfoToRank(nHandInNum)
						--删除物品log
						ThorWarmUp_SaveHandInLog(nHandInNum,nItemId2)
						
						--给提示
						ThorWarmUp_HandInTips(nNpcId,"1-3",nHandInNum)
						return true
					end
				end
			end
		end
	end
	--删除失败
	LinkNpcGossipFunc_New(nNpcId,"1-4")
end

function ThorWarmUp_HandInTips(nNpcId,sIndex,nHandInNum)
	local nEventType=tThorWarmUp_Data["Stc"][1]["EventType"]
	local nDataType=tThorWarmUp_Data["Stc"][1]["DataType"]
	local sText=string.format(tThorWarmUp_Text["SystemTips"]["HandIn"],nHandInNum)
	User_TalkChannel2005(sText)
	local nData = Get_UserStatisticValue(nEventType,nDataType)
	tNpcGossip[23643]["Text1312"]=string.format(tThorWarmUp_Text[23643]["Text1312"],nData)
	local sFunc="LinkNpcGossipFunc_New</N>" .. nNpcId .. "</S>" .. sIndex
	local sMsg=string.format(tThorWarmUp_Text["SystemTips"]["PickUpMsg"],nHandInNum)
	Sys_MsgBox(sMsg,sFunc,nil)
	
end 

--上交雷霆神魄
-- function ThorWarmUp_HandIn(nNpcId,nItemId)
--活动时间判断
	-- if not Sys_ChkFullTime(tActivityTime["ThorWarmUp"]["ActivityTime"]) then
		-- return
	-- end
--等级判断
	-- if not ThorWarmUp_JudgeLevel() then 
		-- return
	-- end
	--背包无雷霆神魄
	-- if not Item_ChkItem(nItemId) then
	--根据属性给提示
		-- tNpcGossip[23643]["Text141"]=string.format(tThorWarmUp_Text[23643]["Text141"],tThorWarmUp_Text["ItemName"][nItemId])
		-- return LinkNpcGossipFunc_New(nNpcId,"1-4")
	-- end
	-- local nNum = Get_CountItemType(nItemId,0)
	--上交
	-- if Item_ChkMulItem(nItemId,nItemId,nNum) and Item_DelMulItem(nItemId,nItemId,nNum) then
		--增加上交数后写入排行榜
		-- ThorWarmUp_SetInfoToRank(nNum)
		--删除物品log,给提示
		-- local sLog =string.format(tThorWarmUp_Data["Log"]["HandIn"][nItemId],nNum)
		-- Sys_SaveActionFestivalLog(sLog)
		-- local sText=string.format(tThorWarmUp_Text["SystemTips"]["HandIn"],nNum,tThorWarmUp_Text["ItemName"][nItemId])
		-- User_TalkChannel2005(sText)
		-- local sMsgText=string.format(tThorWarmUp_Text["SystemTips"]["PickUpMsg"],nNum)
		-- local sFunc="LinkNpcGossipFunc_New</N>23643</S>1-2"
		-- Sys_MsgBox(sMsgText,sFunc,nil)
		-- return
	-- end 
-- end



function ThorWarmUp_SaveHandInLog(nHandInNum,nItemId)
--删除物品log,给提示
	local sLog =string.format(tThorWarmUp_Data["Log"]["HandIn"][nItemId],nHandInNum)
	local sEmoneyLog = tThorWarmUp_Data["EmoneyLog"]["HandIn"]
	Sys_SaveActionFestivalLog(sLog)
	Sys_SaveEmoneyBuy(sEmoneyLog)
end 

--活动后上交获得气力值
function ThorWarmUp_HandInOverdue(nItemId)
	if CommonFunc_GetAfterActivityTime(tActivityTime["ThorWarmUp"]["ActivityTime"]) then 
	--等级判断
		if not ThorWarmUp_JudgeLevel() then 
			return
		end
		if not Item_ChkItem(nItemId) then
			return 
		end
		local nNum = Get_CountItemType(nItemId,0)
		local sItemName=Get_ItemtypeName(nItemId)
		local tReward = CommonFunc_Copy(tThorWarmUp_Data[nItemId])
		tReward["DeleteItem"][1] ["ItemNum"]=nNum
		tReward["RewardStrengthValue"]["Value"]=nNum*tReward["RewardStrengthValue"]["Value"]
		if RewardTemplate_UseItem(tReward) then 
			local sText=string.format(tThorWarmUp_Text["SystemTips"]["HandInOverdue"],nNum,sItemName,tReward["RewardStrengthValue"]["Value"])
			User_TalkChannel2005(sText)
		end 
	end 
end

--读条中
function ThorWarmUp_Loading()
--活动时间判断
	if not Sys_ChkFullTime(tActivityTime["ThorWarmUp"]["ActivityTime"]) then
		return
	end
--等级判断
	if not ThorWarmUp_JudgeLevel() then 
		return
	end
	--是否已经举锤
	local nEventType=tThorWarmUp_Data["Stc"][2]["EventType"]
	local nDataType=tThorWarmUp_Data["Stc"][2]["DataType"]
	local nComplete = tThorWarmUp_Data["Stc"][2]["Completed"]
	if Task_ChkStcValue(nEventType,nDataType,">=",nComplete) then
		return
	else
		--读条中
		local nUserId = Get_UserId()
		local nSecs = tThorWarmUp_Data["Loading"]["Secs"] 
		local sContent = tThorWarmUp_Text["SystemTips"]["LoadingContent"]
		local nActionId = tThorWarmUp_Data["Loading"]["ActionId"]
		local sFunc = "ThorWarmUp_PickUp</N>"..nUserId
		User_SetExplore(nSecs,sContent,nActionId,sFunc,nil,nUserId)
	end 
end 
	
--举起雷神之锤
function ThorWarmUp_PickUp(nUserId)
--活动时间判断
	if not Sys_ChkFullTime(tActivityTime["ThorWarmUp"]["ActivityTime"]) then
		return
	end
--等级判断
	local nLevel = tThorWarmUp_Data["Level"]
	local nMete = tThorWarmUp_Data["Metempsychosis"]
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMete,nUserId) then
		return 
	end 
	local sUserName = Get_UserName(nUserId)
	--是否已经举锤
	local nEventType=tThorWarmUp_Data["Stc"][2]["EventType"]
	local nDataType=tThorWarmUp_Data["Stc"][2]["DataType"]
	local nComplete = tThorWarmUp_Data["Stc"][2]["Completed"]
	if Task_ChkStcValue(nEventType,nDataType,">=",nComplete,nUserId) then
		return
	else
		--背包空间判断
		local nGetRewardSpace = RewardTemplate_GetRewardSpace(tThorWarmUp_Data["Reward"],nUserId)
		local nDelRewardSpace = RewardTemplate_GetDelSpace(tThorWarmUp_Data["Reward"],nUserId)
		local nNeedSpace = nGetRewardSpace - nDelRewardSpace
		if not User_CheckLeftSpace(nNeedSpace,nUserId) then
			local sText=string.format(tThorWarmUp_Text["SystemTips"]["NoSpace"],nNeedSpace)
			User_TalkChannel2005(sText,nUserId)
			return
		end
		--加掩码
		Task_AddStatistic(nEventType,nDataType,1,1,nUserId)
		Task_SetStcTimestamp(nEventType,nDataType,0,nUserId)
			--全服公告
		Sys_TalkBroadcast(string.format(tThorWarmUp_Text["SystemTips"]["BroadcastPick"],sUserName))
		--打log
		Sys_SaveEmoneyBuy(tThorWarmUp_Data["EmoneyLog"]["PickUp"],nUserId)
		
		--给奖励
		if RewardTemplate_UseItem(tThorWarmUp_Data["Reward"],nUserId) then 
			--提示
			User_TalkChannel2005(tThorWarmUp_Text["SystemTips"]["PickUp"],nUserId)
		end 
		--105弹框
		Sys_MsgBox(tThorWarmUp_Text["SystemTips"]["PickUp"],nil,nil,nUserId)
		--播放光效
		local nNpcId=tThorWarmUp_Data["PickUpEffect"]["NpcId"]
		local nMapId = Get_NpcMapID(nNpcId)
		local nPosX = Get_NpcPositionX(nNpcId)
		local nPosY = Get_NpcPositionY(nNpcId)
		--玩家
		local nUserMapId = Get_UserMapId(nUserId)
		local nUserPosX = Get_UserPositionX(nUserId)
		local nUserPosY = Get_UserPositionY(nUserId)
		--npc光效
		Map_Effect(nMapId,  nPosX , nPosY,tThorWarmUp_Data["PickUpEffect"]["NpcEffect"])
		--玩家光效
		-- Map_Effect(nUserMapId,  nUserPosX , nUserPosY,tThorWarmUp_Data["PickUpEffect"]["UserEffect"])
	end 
end 

--额外奖励
function ThorWarmUp_GetExtraReward(nIndex)
--活动时间判断
	if not Sys_ChkFullTime(tActivityTime["ThorWarmUp"]["ActivityTime"]) then
		return
	end
--等级判断
	if not ThorWarmUp_JudgeLevel() then 
		return
	end
	--每日是否获得
	local nEventType=tThorWarmUp_Data["Stc"][nIndex]["EventType"]
	local nDataType=tThorWarmUp_Data["Stc"][nIndex]["DataType"]
	local nComplete = tThorWarmUp_Data["Stc"][nIndex]["Completed"]
	--隔天清掩码
	Task_StcReset(nEventType,nDataType)
	if Task_ChkStcValue(nEventType,nDataType,">=",nComplete) then
		return
	else
		--背包空间判断
		local nGetRewardSpace = RewardTemplate_GetRewardSpace(tThorWarmUp_Data["ExtraReward"])
		local nDelRewardSpace = RewardTemplate_GetDelSpace(tThorWarmUp_Data["ExtraReward"])
		local nNeedSpace = nGetRewardSpace - nDelRewardSpace
		if not User_CheckLeftSpace(nNeedSpace) then
			local sText=string.format(tThorWarmUp_Text["SystemTips"]["NoSpace"],nNeedSpace)
			User_TalkChannel2005(sText)
			return
		end
		--加掩码
		Task_AddStatistic(nEventType,nDataType,1,1)
		Task_SetStcTimestamp(nEventType,nDataType,0)
		--给奖励
		if RewardTemplate_UseItem(tThorWarmUp_Data["ExtraReward"]) then 
			return
		end 
	end 
end

--打怪掉落赠品雷霆神魄，每天打怪5%的概率出，每人每日最多20个
function ThorWarmUp_KillMonsterDropLimit()
--活动时间判断
	if not Sys_ChkFullTime(tActivityTime["ThorWarmUp"]["ActivityTime"]) then
		return
	end
--等级判断
	if not ThorWarmUp_JudgeLevel() then 
		return
	end
	local nEventType=tThorWarmUp_Data["Stc"][3]["EventType"]
	local nDataType=tThorWarmUp_Data["Stc"][3]["DataType"]
	local nComplete = tThorWarmUp_Data["Stc"][3]["Completed"]
	--隔天清掩码
	Task_StcReset(nEventType,nDataType)
	if Task_ChkStcValue(nEventType, nDataType, ">=",nComplete) then
		if Task_ChkStcValue(nEventType, nDataType, "==", nComplete) then
			Task_AddStatistic(nEventType, nDataType, 1, 1)
			Task_SetStcTimestamp(nEventType, nDataType,0)
			--105弹框提示
			Sys_MsgBox(tThorWarmUp_Text["SystemTips"]["MonsterDrop1"])
		end
		return
	end
	-- 概率掉落
	if not RewardTemplate_ChkRandomSpace(tThorWarmUp_Data["MonsterDrop"], 1) then
		return 
	end
	local tReward = RewardTemplate_NewRandom(tThorWarmUp_Data["MonsterDrop"], 1)
	local nSign = tReward[1]["tAward"][1]["Sign"]
	if nSign == 1  then
		Task_AddStatistic(nEventType, nDataType, 1, 1)
		Task_SetStcTimestamp(nEventType, nDataType,0)
	end
end 

--打怪掉落可交易雷霆神魄，每天打怪0.1%的概率出，不限量
function ThorWarmUp_KillMonsterDropUnlimit()
--活动时间判断
	if not Sys_ChkFullTime(tActivityTime["ThorWarmUp"]["ActivityTime"]) then
		return
	end
--等级判断
	if not ThorWarmUp_JudgeLevel() then 
		return
	end
	-- 概率掉落
	if not RewardTemplate_ChkRandomSpace(tThorWarmUp_Data["MonsterDrop"], 2) then
		return 
	end
	--给奖励
	RewardTemplate_NewRandom(tThorWarmUp_Data["MonsterDrop"], 2)
end

--打怪掉落赠品雷霆源晶，每天打怪5%的概率出，每日最多可获10个不可交易的雷霆源晶
function ThorWarmUp_KillMonsterDropLimit1()
--活动时间判断
	if not Sys_ChkFullTime(tActivityTime["ThorWarmUp"]["ActivityTime"]) then
		return
	end
--等级判断
	if not ThorWarmUp_JudgeLevel() then 
		return
	end
	local nEventType=tThorWarmUp_Data["Stc"][7]["EventType"]
	local nDataType=tThorWarmUp_Data["Stc"][7]["DataType"]
	local nComplete = tThorWarmUp_Data["Stc"][7]["Completed"]
	--隔天清掩码
	Task_StcReset(nEventType,nDataType)
	if Task_ChkStcValue(nEventType, nDataType, ">=",nComplete) then
		if Task_ChkStcValue(nEventType, nDataType, "==", nComplete) then
			Task_AddStatistic(nEventType, nDataType, 1, 1)
			Task_SetStcTimestamp(nEventType, nDataType,0)
			--105弹框提示
			Sys_MsgBox(tThorWarmUp_Text["SystemTips"]["MonsterDrop2"])
		end
		return
	end
	-- 概率掉落
	if not RewardTemplate_ChkRandomSpace(tThorWarmUp_Data["MonsterDrop"], 3) then
		return 
	end
	local tReward = RewardTemplate_NewRandom(tThorWarmUp_Data["MonsterDrop"], 3)
	local nSign = tReward[1]["tAward"][1]["Sign"]
	if nSign == 1  then
		Task_AddStatistic(nEventType, nDataType, 1, 1)
		Task_SetStcTimestamp(nEventType, nDataType,0)
	end
end 

--增加上交数后写入排行榜
function ThorWarmUp_SetInfoToRank(nNowHandIn)
		-- 活动时间判断
	if not Sys_ChkFullTime(tActivityTime["ThorWarmUp"]["ActivityTime"]) then
		return
	end
	local nEventType=tThorWarmUp_Data["Stc"][1]["EventType"]
	local nDataType=tThorWarmUp_Data["Stc"][1]["DataType"]
	
	Task_AddStatistic(nEventType, nDataType, nNowHandIn, 1)
	Task_SetStcTimestamp(nEventType, nDataType, 0)
	
	local nUserTotalNum = Get_UserStatisticValue(nEventType, nDataType)
	local nRankIndex = tThorWarmUp_Data["Index"]

	RankingFunc_SetInfo(nRankIndex, nUserTotalNum)
	--阶段变化
	ThorWarmUp_StepReward()
end 

--阶段变化
function ThorWarmUp_StepReward()
	local nEventType=tThorWarmUp_Data["Stc"][1]["EventType"]
	local nDataType=tThorWarmUp_Data["Stc"][1]["DataType"]
	local nStepEventType=tThorWarmUp_Data["Stc"][6]["EventType"]
	local nStepDataType=tThorWarmUp_Data["Stc"][6]["DataType"]
	--上交总数
	local nUserTotalNum = Get_UserStatisticValue(nEventType, nDataType)
	--当前阶段
	local nStep = Get_UserStatisticValue(nStepEventType, nStepDataType)
		-- 活动时间判断
	if not Sys_ChkFullTime(tActivityTime["ThorWarmUp"]["ActivityTime"]) then
		return
	end
	for i=nStep, 7 do
		if tThorWarmUp_Data["RewardStep"][i+1]~=nil then 
			if nUserTotalNum>=tThorWarmUp_Data["RewardStep"][i+1] then 
				--阶段+1
				Task_AddStatistic(nStepEventType, nStepDataType, 1, 1)
				Task_SetStcTimestamp(nStepEventType, nStepDataType, 0)
			end 
		end 
	end 
end

--领取阶段性奖励
function ThorWarmUp_GetStepReward()
	-- 活动时间判断
	if not Sys_ChkFullTime(tActivityTime["ThorWarmUp"]["ActivityTime"]) then
		return
	end
	
	--背包空间判断
	local nNeedSpace=tThorWarmUp_Data["StepRewardNeedSpace"]
	if not User_CheckLeftSpace(nNeedSpace) then
		local sText=string.format(tThorWarmUp_Text["SystemTips"]["NoSpace"],nNeedSpace)
		User_TalkChannel2005(sText)
		return
	end
	--当前阶段
	local nStepEventType=tThorWarmUp_Data["Stc"][6]["EventType"]
	local nStepDataType=tThorWarmUp_Data["Stc"][6]["DataType"]
	local nStep = Get_UserStatisticValue(nStepEventType, nStepDataType)
	
	--领奖阶段
	local nStepRewardEventType=tThorWarmUp_Data["Stc"][8]["EventType"]
	local nStepRewardDataType=tThorWarmUp_Data["Stc"][8]["DataType"]
	local nStepReward = Get_UserStatisticValue(nStepRewardEventType, nStepRewardDataType)
	
	local nNum=0
	--每个阶段都领取完
	if nStepReward>=nStep then 
		return Sys_MsgBox(tThorWarmUp_Text["SystemTips"]["GetStepRewardAlready"])
	end
	
	for i=nStepReward+1,nStep do 
		--数目增加
		nNum = nNum+tThorWarmUp_Data["RewardNum"][i]
		--阶段+1
		Task_AddStatistic(nStepRewardEventType, nStepRewardDataType, 1, 1)
		Task_SetStcTimestamp(nStepRewardEventType, nStepRewardDataType, 0)
		
		
		--给奖
		if RewardTemplate_UseItem(tThorWarmUp_Data["GetStepReward"][i]) then
		end 
	end
	
	Sys_MsgBox(string.format(tThorWarmUp_Text["SystemTips"]["GetStepReward"],nNum))
	User_TalkChannel2005(string.format(tThorWarmUp_Text["SystemTips"]["GetStepReward"],nNum))
end 


--排行榜排名全服公告
function ThorWarmUp_RankBroadcast()
	if Sys_ChkFullTime(tActivityTime["ThorWarmUp"]["Broadcast"]) then 
		local nGlobalId=tThorWarmUp_Data["GlobalId"]
		if Get_SysDynaGlobalData0(nGlobalId) ~= 0 then 
			return
		end 
		local tRankData = RankingFunc_GetNowData(tThorWarmUp_Data["Index"])
		for k,v in pairs(tRankData) do 
			local nUserId = tonumber(v["UserId"])
			local sUserName = v["UserName"]
			local sContent=string.format(tThorWarmUp_Text["SystemTips"]["BroadcastRank"][k],sUserName,k)
			--全服公告
			Sys_TalkBroadcast(sContent)
		end 
		Sys_SetSynaGlobalData0(nGlobalId,1)
	end
end 


--使用任务道具寻路
function ThorWarmUp_FindPath(nItemId)
	--检测物品
	if not Item_ChkItem(nItemId) then
		return
	end
	--过期删除
	if ThorWarmUp_IsOvertime(nItemId) then
		return 
	end
	NpcPosition_PathFind(tThorWarmUp_Data["FindPathNpcId"][nItemId])
end

--领取排行榜奖励
function ThorWarmUp_GetRankReward(nNpcId)

	local nUserId = Get_UserId()
	local nRewardEvent = tThorWarmUp_Data["Stc"][9]["EventType"]
	local nRewardData = tThorWarmUp_Data["Stc"][9]["DataType"]
	if (Get_UserStatisticValue(nRewardEvent, nRewardData, nUserId) == 1) then
		LinkNpcGossipFunc_New(nNpcId, "2-3")
		return
	end
	if Sys_ChkFullTime(tActivityTime["ThorWarmUp"]["MainNPCTime"]) then
		RankingFunc_RewardRank(nNpcId, nNpcId, nUserId)
		
		local tRankData = RankingFunc_GetNowData(tThorWarmUp_Data["Index"])
		local nRank =RankingFunc_GetUserInRank(tThorWarmUp_Data["Index"],nUserId)
		if nRank==0 then 
			return LinkNpcGossipFunc_New(nNpcId, "2-2")
		end 
		local bReward = tRankData[nRank]["Reward"]
		if bReward then 
			Task_SetStatistic(nRewardEvent, nRewardData, 1, 1, nUserId)
		end 
	else
		LinkNpcGossipFunc_New(nNpcId, "2-1")
	end 
end


--武器礼包打开
function ThorWarmUp_OpenWeaponPack(nItemId)
	--检测物品
	if not Item_ChkItem(nItemId) then
		return
	end
	local nGlobalId = tThorWarmUp_Data["EUServer"]
	local nServer = Get_SysDynaGlobalData(nGlobalId,0)
	
	-- global 53085 data0=0代表美服 data0=1代表欧服
	if nServer == 1 then
		if not Sys_ChkFullTime(tActivityTime["ThorWarmUp"]["EWeaponPackTime"]) then
			return Sys_MsgBox(tThorWarmUp_Text["SystemTips"]["NotWeaponTime"][nServer])
		end 
	else
		if not Sys_ChkFullTime(tActivityTime["ThorWarmUp"]["UWeaponPackTime"]) then
			return Sys_MsgBox(tThorWarmUp_Text["SystemTips"]["NotWeaponTime"][nServer])
		end 
	end 
	--背包空间判断
	local nGetRewardSpace = RewardTemplate_GetRewardSpace(tThorWarmUp_Data["WeaponPack"][nItemId])
	local nDelRewardSpace = RewardTemplate_GetDelSpace(tThorWarmUp_Data["WeaponPack"][nItemId])
	local nNeedSpace = nGetRewardSpace - nDelRewardSpace
	if not User_CheckLeftSpace(nNeedSpace) then
		local sText=string.format(tThorWarmUp_Text["SystemTips"]["NoSpace"],nNeedSpace)
		User_TalkChannel2005(sText)
		return
	end
	--打开礼包
	if RewardTemplate_UseItem(tThorWarmUp_Data["WeaponPack"][nItemId]) then 
		return
	end
end
----------------------------------NPC部分---------------------------------------------
-- 头像
tNpcFace[6427] = 122
tNpcGossip[23643] = tNpcGossip[23643] or DefaultNpc:new{}
tNpcGossip[23643]["OptionHidden"] = 1
tNpcGossip[23643]["DialogueText"] = tThorWarmUp_Text[23643]

-- 活动前
tNpcGossip[23643]["Text1-1"] = {111,112,113,114,115,116,117}
tNpcGossip[23643]["tOption1-1"] = {1}
tNpcGossip[23643]["ChkFunc1-1"] = function()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["ThorWarmUp"]["ActivityTime"])
end

-- 活动中
tNpcGossip[23643]["Text1-2"] = {121,122,123,124,125,126,127,128,129,1210,1211,1212,1213}
tNpcGossip[23643]["tOption1-2"] = {2,4,3}
tNpcGossip[23643]["ChkFunc1-2"] = function()
	if Sys_ChkFullTime(tActivityTime["ThorWarmUp"]["ActivityTime"]) then
		if ThorWarmUp_JudgeLevel() then 
			tNpcGossip[23643]["Text1212"]=""
		else
			tNpcGossip[23643]["Text1212"]=tThorWarmUp_Text[23643]["Text1212"]
		end 
		return true
	else
		return false
	end 
end
tNpcGossip[23643]["OptionChkFunc2"]= function ()
	if not ThorWarmUp_JudgeLevel() then 
		return true
	else 
		return false
	end
end

tNpcGossip[23643]["OptionChkFunc3"]= function ()
	if ThorWarmUp_JudgeLevel() then 
		return true
	else
		return false
	end 
end 
tNpcGossip[23643]["OptionChkFunc4"]= function ()
	if ThorWarmUp_JudgeLevel() then 
		return true
	else
		return false
	end 
end 

tNpcGossip[23643]["OptionPoint3"]= "1-3"
tNpcGossip[23643]["OptionPoint4"]= "1-5"


--神魄兑换好礼
tNpcGossip[23643]["Text1-3"] = {131,132,133,134,135,136,137,138,139,1310,1311,1312}
tNpcGossip[23643]["tOption1-3"] = {5,15}
tNpcGossip[23643]["ChkFunc1-3"] = function()
	if Sys_ChkFullTime(tActivityTime["ThorWarmUp"]["ActivityTime"]) then
		if ThorWarmUp_JudgeLevel() then 
			local nEventType=tThorWarmUp_Data["Stc"][1]["EventType"]
			local nDataType=tThorWarmUp_Data["Stc"][1]["DataType"]
			local nData = Get_UserStatisticValue(nEventType,nDataType)
			
			--领奖阶段
			local nStepRewardEventType=tThorWarmUp_Data["Stc"][8]["EventType"]
			local nStepRewardDataType=tThorWarmUp_Data["Stc"][8]["DataType"]
			local nStepReward = Get_UserStatisticValue(nStepRewardEventType, nStepRewardDataType)
			local sNoGot=tThorWarmUp_Text["StepReward"]["NotGot"]
			local sGot=tThorWarmUp_Text["StepReward"]["Got"]
			for i=1,7 do  
				if nStepReward>=i then 
					tNpcGossip[23643]["Text13" .. 3 + i]=string.format(tThorWarmUp_Text[23643]["Text13" .. 3 + i],sGot)
				else
					tNpcGossip[23643]["Text13" .. 3 + i]=string.format(tThorWarmUp_Text[23643]["Text13" .. 3 + i],sNoGot)
				end 
			end 
			tNpcGossip[23643]["Text1312"]=string.format(tThorWarmUp_Text[23643]["Text1312"],nData)
		end 
		
		--上交选项显示
		local nHandInNum=100
		local nItemId1=tThorWarmUp_Data["ItemID"][3319300]
		local nItemId2=tThorWarmUp_Data["ItemID"][3319134]
		local nNum1 = Get_CountItemType(nItemId1,0)
		local nNum2 = Get_CountItemType(nItemId2,0)
		if Item_ChkMulItem(nItemId1,nItemId1,nHandInNum) then 
			tNpcGossip[23643]["Option5"]=string.format(tThorWarmUp_Text[23643]["Option5"],nHandInNum)
		else
			if nNum1>0 then 
				tNpcGossip[23643]["Option5"]=string.format(tThorWarmUp_Text[23643]["Option5"],nNum1)
			else
				if Item_ChkMulItem(nItemId2,nItemId2,nHandInNum) then 
					tNpcGossip[23643]["Option5"]=string.format(tThorWarmUp_Text[23643]["Option5"],nHandInNum)
				else 
					if nNum2<=0 then
						tNpcGossip[23643]["Option5"]=string.format(tThorWarmUp_Text[23643]["Option5"],nHandInNum)
					else
						tNpcGossip[23643]["Option5"]=string.format(tThorWarmUp_Text[23643]["Option5"],nNum2)
					end 
				end
			end
		end 
		return true
	else
		return false
	end 
end 
tNpcGossip[23643]["OptionFunc5"]="ThorWarmUp_HandIn</N>23643</N>3319300</N>3319134"
tNpcGossip[23643]["OptionChkFunc15"]= function ()
	if ThorWarmUp_JudgeLevel() then 
			--当前阶段
		local nStepEventType=tThorWarmUp_Data["Stc"][6]["EventType"]
		local nStepDataType=tThorWarmUp_Data["Stc"][6]["DataType"]
		local nStep = Get_UserStatisticValue(nStepEventType, nStepDataType)
		
			--领奖阶段
		local nStepRewardEventType=tThorWarmUp_Data["Stc"][8]["EventType"]
		local nStepRewardDataType=tThorWarmUp_Data["Stc"][8]["DataType"]
		local nStepReward = Get_UserStatisticValue(nStepRewardEventType, nStepRewardDataType)
		
		if nStepReward<nStep then 
			return true
		else
			return false
		end 
	else
		return false
	end 
end 
tNpcGossip[23643]["OptionFunc15"]= "ThorWarmUp_GetStepReward"

--背包无雷霆神魄
tNpcGossip[23643]["Text1-4"] = {141,142,143,144,145,146,147,148}
tNpcGossip[23643]["tOption1-4"] = {6}
tNpcGossip[23643]["ChkFunc1-4"] = function()
	return Sys_ChkFullTime(tActivityTime["ThorWarmUp"]["ActivityTime"])
end 

--雷神传人榜
tNpcGossip[23643]["Text1-5"] = {151,152,153,154,155,156,157,158,159,160,161,162,163,164,165}
tNpcGossip[23643]["tOption1-5"] = {7}
tNpcGossip[23643]["ChkFunc1-5"] = function()
	if Sys_ChkFullTime(tActivityTime["ThorWarmUp"]["ActivityTime"]) then
		local nIndex =153
		local tRankData = RankingFunc_GetNowData(tThorWarmUp_Data["Index"])
		local sName = ""
		local sScore = ""
		for i = 1, 10 do
			if tRankData[i] ~= nil and tonumber(tRankData[i]["UserId"]) > 0 and tRankData[i]["Score"] > 0 then
				sScore = tostring(tRankData[i]["Score"])
				sName = tRankData[i]["UserName"]
			else
				sScore = tThorWarmUp_Text["Dialog"]["Score"]
				sName = tThorWarmUp_Text["Dialog"]["Name"]
			end
			tNpcGossip[23643]["Text" .. nIndex + i] = Sys_CenterAline(tostring(tThorWarmUp_Text[23643]["Text" .. nIndex + i]), 8,tostring(sScore), 23, tostring(sName), 42) .. "\n"
		end 
		local nEventType=tThorWarmUp_Data["Stc"][1]["EventType"]
		local nDataType=tThorWarmUp_Data["Stc"][1]["DataType"]
		local nData = Get_UserStatisticValue(nEventType,nDataType)
		tNpcGossip[23643]["Text165"]=string.format(tThorWarmUp_Text[23643]["Text165"],nData)
		return true
	else
		return false
	end 
end 
tNpcGossip[23643]["OptionPoint7"]= "1-8"


--活动后 
tNpcGossip[23643]["Text1-6"] = {171,172,173,174,175,176}
tNpcGossip[23643]["tOption1-6"] = {9,20,10,12}
tNpcGossip[23643]["ChkFunc1-6"] = function()
	if CommonFunc_GetAfterActivityTime(tActivityTime["ThorWarmUp"]["ActivityTime"]) then
		return true
	else
		return false
	end
end
tNpcGossip[23643]["OptionChkFunc9"]= function ()
	if not Item_ChkItem(tThorWarmUp_Data["ItemID"][3319134]) then 
		return false
	else
		return  true
	end 
end 
tNpcGossip[23643]["OptionFunc9"]="ThorWarmUp_HandInOverdue</N>3319134"

tNpcGossip[23643]["OptionChkFunc20"]= function ()
	if not Item_ChkItem(tThorWarmUp_Data["ItemID"][3319300]) then 
		return false
	else
		return true
	end 
end 
tNpcGossip[23643]["OptionFunc20"]="ThorWarmUp_HandInOverdue</N>3319300"

tNpcGossip[23643]["OptionChkFunc10"]= function ()
	if not Item_ChkItem(tThorWarmUp_Data["ItemID"][3319135]) then 
		return false
	else
		return  true
	end 
end 
tNpcGossip[23643]["OptionFunc10"]="ThorWarmUp_HandInOverdue</N>3319135"

tNpcGossip[23643]["OptionChkFunc11"]= function ()
	if not Item_ChkItem(tThorWarmUp_Data["ItemID"][3319133]) then 
		return false
	else
		return  true
	end 
end 
tNpcGossip[23643]["OptionFunc11"]="ThorWarmUp_HandInOverdue</N>3319133"

tNpcGossip[23643]["OptionPoint16"]= "1-9"


--榜单奖励一览
tNpcGossip[23643]["Text1-8"] = {181,182,183,184,185,186,187,188,189,1810,1811,1812,1813,1814,1815}
tNpcGossip[23643]["tOption1-8"] = {8}
tNpcGossip[23643]["ChkFunc1-8"] = function()
	if Sys_ChkFullTime(tActivityTime["ThorWarmUp"]["ActivityTime"]) then
		if ThorWarmUp_JudgeLevel() then 
			local nEventType=tThorWarmUp_Data["Stc"][1]["EventType"]
			local nDataType=tThorWarmUp_Data["Stc"][1]["DataType"]
			local nData = Get_UserStatisticValue(nEventType,nDataType)
			tNpcGossip[23643]["Text1815"]=string.format(tThorWarmUp_Text[23643]["Text1815"],nData)
		end 
		return true
	else
		return false
	end 
end 


--1-9
--雷神传人榜
tNpcGossip[23643]["Text1-9"] = {191,192,193,194,195,196,197,198,199,200,201,202,203,204,205}
tNpcGossip[23643]["tOption1-9"] = {18,19}
tNpcGossip[23643]["ChkFunc1-9"] = function()
	if Sys_ChkFullTime(tActivityTime["ThorWarmUp"]["MainNPCTime"]) then
		local nIndex =193
		local tRankData = RankingFunc_GetNowData(tThorWarmUp_Data["Index"])
		local sName = ""
		local sScore = ""
		for i = 1, 10 do
			if tRankData[i] ~= nil and tonumber(tRankData[i]["UserId"]) > 0 and tRankData[i]["Score"] > 0 then
				sScore = tostring(tRankData[i]["Score"])
				sName = tRankData[i]["UserName"]
			else
				sScore = tThorWarmUp_Text["Dialog"]["Score"]
				sName = tThorWarmUp_Text["Dialog"]["Name"]
			end
			tNpcGossip[23643]["Text" .. nIndex + i] = Sys_CenterAline(tostring(tThorWarmUp_Text[23643]["Text" .. nIndex + i]), 8,tostring(sScore), 23, tostring(sName), 42) .. "\n"
		end 
		local nUserId=Get_UserId()
		local nRank=RankingFunc_GetUserInRank(tThorWarmUp_Data["Index"],nUserId)
		if nRank==0 then 
			tNpcGossip[23643]["Text205"]=tThorWarmUp_Text[23643]["Text206"]
		else
			tNpcGossip[23643]["Text205"]=string.format(tThorWarmUp_Text[23643]["Text205"],nRank)
		end 
		return true
	else
		return false
	end 
end 
tNpcGossip[23643]["OptionChkFunc18"]= function ()
	--判断玩家是否上榜
	local tRankData = RankingFunc_GetNowData(tThorWarmUp_Data["Index"])
	local nUserId=Get_UserId()
	local nIsShow=0
	if tRankData ~=nil then
		for k,v in pairs(tRankData) do 
			local nRankUserId = tonumber(v["UserId"])
			if nUserId==nRankUserId then 
				local nRewardEvent = tThorWarmUp_Data["Stc"][9]["EventType"]
				local nRewardData = tThorWarmUp_Data["Stc"][9]["DataType"]
				if (Get_UserStatisticValue(nRewardEvent, nRewardData, nUserId) < 1) then
					nIsShow=1
				end
			end 
		end 
	end
	--上榜，且未领过奖,,显示领取排行榜奖励选项
	if nIsShow==1 then 
		return true
	else
		return false
	end 
end 
tNpcGossip[23643]["OptionFunc18"]="ThorWarmUp_GetRankReward</N>23643"


--2-1 不在领奖时间
tNpcGossip[23643]["Text2-1"] = {211}
tNpcGossip[23643]["tOption2-1"] = {211}
-- tNpcGossip[23643]["OptionPoint211"] = "1-1"
--2-2 不在排行榜内
tNpcGossip[23643]["Text2-2"] = {221}
tNpcGossip[23643]["tOption2-2"] = {221}
-- tNpcGossip[23643]["OptionPoint221"] = "1-1"
--2-3 已领奖
tNpcGossip[23643]["Text2-3"] = {231}
tNpcGossip[23643]["tOption2-3"] = {231}
-- tNpcGossip[23643]["OptionPoint231"] = "1-1"

--雷神之锤
-- 头像
tNpcFace[2281] = 2076
tNpcGossip[23645] = tNpcGossip[23645] or DefaultNpc:new{}
tNpcGossip[23645]["OptionHidden"] = 1
tNpcGossip[23645]["DialogueText"] = tThorWarmUp_Text[23645]
-- 活动中
tNpcGossip[23645]["Text1-1"] = {111}
tNpcGossip[23645]["tOption1-1"] = {1,2}
tNpcGossip[23645]["ChkFunc1-1"] = function()
	if Sys_ChkFullTime(tActivityTime["ThorWarmUp"]["ActivityTime"]) then
		if ThorWarmUp_JudgeLevel() then 
			local nEventType=tThorWarmUp_Data["Stc"][2]["EventType"]
			local nDataType=tThorWarmUp_Data["Stc"][2]["DataType"]
			local nComplete = tThorWarmUp_Data["Stc"][2]["Completed"]
			if Task_ChkStcValue(nEventType,nDataType,">=",nComplete) then
				--已举锤
				tNpcGossip[23645]["Text111"]=tThorWarmUp_Text[23645]["Text113"] 
			else
				--等级到达未举锤
				tNpcGossip[23645]["Text111"]=tThorWarmUp_Text[23645]["Text112"] 
			end 
		else
			--等级不足
			tNpcGossip[23645]["Text111"]=tThorWarmUp_Text[23645]["Text111"] 
		end 
		return true
	else
		return false
	end 
end
	
tNpcGossip[23645]["OptionChkFunc1"]= function ()
	if not ThorWarmUp_JudgeLevel() then 
		return true
	else 
		return false
	end
end
tNpcGossip[23645]["OptionChkFunc2"]= function ()
	if ThorWarmUp_JudgeLevel() then 
		local nEventType=tThorWarmUp_Data["Stc"][2]["EventType"]
		local nDataType=tThorWarmUp_Data["Stc"][2]["DataType"]
		local nComplete = tThorWarmUp_Data["Stc"][2]["Completed"]
		if Task_ChkStcValue(nEventType,nDataType,">=",nComplete) then
			tNpcGossip[23645]["Option2"]=tThorWarmUp_Text[23645]["Option3"]
		else
			tNpcGossip[23645]["Option2"]=tThorWarmUp_Text[23645]["Option2"]
		end 
		return true
	else
		return false
	end 
end 
tNpcGossip[23645]["OptionFunc2"]="ThorWarmUp_Loading"

--邪神洛基
-- 头像
tNpcFace[6428] =245
tNpcGossip[23644] = tNpcGossip[23644] or DefaultNpc:new{}
tNpcGossip[23644]["OptionHidden"] = 1
tNpcGossip[23644]["DialogueText"] = tThorWarmUp_Text[23644]
-- 活动中
tNpcGossip[23644]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[23644]["tOption1-1"] = {1}
tNpcGossip[23644]["ChkFunc1-1"] = function()
	if Sys_ChkFullTime(tActivityTime["ThorWarmUp"]["ActivityTime"]) then
		return true
	else
		return false
	end 
end 

---------------------------------物品部分---------------------------------------------
--雷神天石（赠）礼包
tItem[3319136] = tItem[3319136] or {}
tItem[3319136]["Function"] = function(nItemId,sItemName)
	ThorWarmUp_UseMonoEMoneyBag(nItemId)
end

--雷霆万钧礼包
tItem[3319139] = tItem[3319139] or {}
tItem[3319139]["Function"] = function(nItemId,sItemName)
	ThorWarmUp_UseRandomBag(nItemId)
end

--气力值包
tItem[3319150] = tItem[3319150] or {}
tItem[3319150]["Function"] = function(nItemId,sItemName)
	ThorWarmUp_OpenNormalPack(nItemId)
end
tItem[3319151] = tItem[3319150]
tItem[3319152] = tItem[3319150]
--外套包
tItem[3319137] = tItem[3319150]
tItem[3319138] = tItem[3319150]
--雷震天下礼盒
tItem[3319140] = tItem[3319140] or {}
tItem[3319140]["Function"] = function(nItemId,sItemName)
	ThorWarmUp_OpenRankPack(nItemId)
end
tItem[3319141] = tItem[3319140]
tItem[3319142] = tItem[3319140]
tItem[3319143] = tItem[3319140]
tItem[3319144] = tItem[3319140]

--任务道具寻路
tItem[3319134] = tItem[3319134] or {}
tItem[3319134]["Function"] = function(nItemId,sItemName)
	ThorWarmUp_FindPath(nItemId)
end
tItem[3319135] = tItem[3319134]
tItem[3319300] = tItem[3319134]


--武器礼包使用
tItem[3319145] = tItem[3319145] or {}
tItem[3319145]["Function"] = function(nItemId,sItemName)
	ThorWarmUp_OpenWeaponPack(nItemId)
end
tItem[3319146] = tItem[3319145] 
tItem[3319147] = tItem[3319145] 
tItem[3319148] = tItem[3319145] 
tItem[3319149] = tItem[3319145] 
---------------------------------怪物部分---------------------------------------------
-- local tThorWarmUp_KillMonster = {}
-- --5%掉落赠品雷霆神魄，限量20个
-- tThorWarmUp_KillMonster[1] = {}
-- tThorWarmUp_KillMonster[1]["ActivityTime"] =tActivityTime["ThorWarmUp"]["ActivityTime"]
-- tThorWarmUp_KillMonster[1]["Function"] = ThorWarmUp_KillMonsterDropLimit
-- tThorWarmUp_KillMonster[1]["Area"] = {}
-- table.insert(tMonsterDrop_AreaLoad,tThorWarmUp_KillMonster[1])
-- --0.1%掉落可交易雷霆神魄，不限量
-- tThorWarmUp_KillMonster[2] = {}
-- tThorWarmUp_KillMonster[2]["ActivityTime"] = tActivityTime["ThorWarmUp"]["ActivityTime"]
-- tThorWarmUp_KillMonster[2]["Function"] = ThorWarmUp_KillMonsterDropUnlimit
-- tThorWarmUp_KillMonster[2]["Area"] = {}
-- table.insert(tMonsterDrop_AreaLoad,tThorWarmUp_KillMonster[2])
-- --5%掉落赠品雷霆源晶,限量10个
-- tThorWarmUp_KillMonster[3] = {}
-- tThorWarmUp_KillMonster[3]["ActivityTime"] = tActivityTime["ThorWarmUp"]["ActivityTime"]
-- tThorWarmUp_KillMonster[3]["Function"] = ThorWarmUp_KillMonsterDropLimit1
-- tThorWarmUp_KillMonster[3]["Area"] = {}
-- table.insert(tMonsterDrop_AreaLoad,tThorWarmUp_KillMonster[3])

-- 激情服片区和地宫小怪
-- tThorWarmUp_KillMonster[4] = {}
-- tThorWarmUp_KillMonster[4]["Function"] = ThorWarmUp_KillMonsterDropLimit
-- tThorWarmUp_KillMonster[4]["MonsterId"]={4833,4834,4835,4836,4838,4839,4840,4841,4868,4842,4843,4844,4845,4869,4870,4846,4847,4848,4849,4871,
-- 4850,4851,4852,4853,4854,4872,4874,4855,4856,4857,4858,4873,4875,4876,4877,4878,4879,4859,4860,4862,4863,4865,4867}
-- table.insert(tMonsterDrop_AreaLoad_NoGift,tThorWarmUp_KillMonster[4])
-- tThorWarmUp_KillMonster[5] = {}
-- tThorWarmUp_KillMonster[5]["Function"] = ThorWarmUp_KillMonsterDropUnlimit
-- tThorWarmUp_KillMonster[5]["MonsterId"]={4833,4834,4835,4836,4838,4839,4840,4841,4868,4842,4843,4844,4845,4869,4870,4846,4847,4848,4849,4871,
-- 4850,4851,4852,4853,4854,4872,4874,4855,4856,4857,4858,4873,4875,4876,4877,4878,4879,4859,4860,4862,4863,4865,4867}
-- table.insert(tMonsterDrop_AreaLoad_NoGift,tThorWarmUp_KillMonster[5])
-- tThorWarmUp_KillMonster[6] = {}
-- tThorWarmUp_KillMonster[6]["Function"] = ThorWarmUp_KillMonsterDropLimit1
-- tThorWarmUp_KillMonster[6]["MonsterId"]={4833,4834,4835,4836,4838,4839,4840,4841,4868,4842,4843,4844,4845,4869,4870,4846,4847,4848,4849,4871,
-- 4850,4851,4852,4853,4854,4872,4874,4855,4856,4857,4858,4873,4875,4876,4877,4878,4879,4859,4860,4862,4863,4865,4867}
-- table.insert(tMonsterDrop_AreaLoad_NoGift,tThorWarmUp_KillMonster[6])
	

---------------------------------排行榜---------------------------------------------
-- 排行榜表
-- 雷霆上交排行榜
tRankingFunc_Info[23643] = {}
tRankingFunc_Info[23643]["ActiveTime"] = tActivityTime["ThorWarmUp"]["ActivityTime"]
tRankingFunc_Info[23643]["DayTime"] = {}
tRankingFunc_Info[23643]["DayTime"][1] = "00:00 23:59"
tRankingFunc_Info[23643]["Reset"] = 1
tRankingFunc_Info[23643]["Global"] = {53184,53185,53186,53187}
tRankingFunc_Info[23643]["RankNum"] = 10


-- 邮件发奖
tRankingFunc_Info[23643]["Mail"] = {}
tRankingFunc_Info[23643]["Mail"]["ActiveTime"] = tActivityTime["ThorWarmUp"]["MailTime"]
tRankingFunc_Info[23643]["Mail"]["RewardTime"] = {}
tRankingFunc_Info[23643]["Mail"]["RewardTime"][1] = "00:00 00:03"
tRankingFunc_Info[23643]["Mail"]["HaveFunc"] = ThorWarmUp_RankBroadcast
tRankingFunc_Info[23643]["Mail"]["Reward"] = {}
tRankingFunc_Info[23643]["Mail"]["Reward"][1] = {}
tRankingFunc_Info[23643]["Mail"]["Reward"][1]["RewardRank"] = 1
tRankingFunc_Info[23643]["Mail"]["Reward"][1]["ActionId"] = 570864
tRankingFunc_Info[23643]["Mail"]["Reward"][1]["ExistDay"] = 7
tRankingFunc_Info[23643]["Mail"]["Reward"][1]["Title"] = tThorWarmUp_Text["SendMail"]["Title"]
tRankingFunc_Info[23643]["Mail"]["Reward"][1]["Sender"] = tThorWarmUp_Text["SendMail"]["Sender"]
tRankingFunc_Info[23643]["Mail"]["Reward"][1]["Content"] = tThorWarmUp_Text["SendMail"]["Content"][1]
tRankingFunc_Info[23643]["Mail"]["Reward"][2] = {}
tRankingFunc_Info[23643]["Mail"]["Reward"][2]["RewardRank"] = 2
tRankingFunc_Info[23643]["Mail"]["Reward"][2]["ActionId"] = 570865
tRankingFunc_Info[23643]["Mail"]["Reward"][2]["ExistDay"] = 7
tRankingFunc_Info[23643]["Mail"]["Reward"][2]["Title"] = tThorWarmUp_Text["SendMail"]["Title"]
tRankingFunc_Info[23643]["Mail"]["Reward"][2]["Sender"] = tThorWarmUp_Text["SendMail"]["Sender"]
tRankingFunc_Info[23643]["Mail"]["Reward"][2]["Content"] = tThorWarmUp_Text["SendMail"]["Content"][2]
tRankingFunc_Info[23643]["Mail"]["Reward"][3] = {}
tRankingFunc_Info[23643]["Mail"]["Reward"][3]["RewardRank"] = 3
tRankingFunc_Info[23643]["Mail"]["Reward"][3]["ActionId"] = 570866
tRankingFunc_Info[23643]["Mail"]["Reward"][3]["ExistDay"] = 7
tRankingFunc_Info[23643]["Mail"]["Reward"][3]["Title"] = tThorWarmUp_Text["SendMail"]["Title"]
tRankingFunc_Info[23643]["Mail"]["Reward"][3]["Sender"] = tThorWarmUp_Text["SendMail"]["Sender"]
tRankingFunc_Info[23643]["Mail"]["Reward"][3]["Content"] = tThorWarmUp_Text["SendMail"]["Content"][3]
tRankingFunc_Info[23643]["Mail"]["Reward"][4] = {}
tRankingFunc_Info[23643]["Mail"]["Reward"][4]["RewardRank"] = 4
tRankingFunc_Info[23643]["Mail"]["Reward"][4]["ActionId"] = 570867
tRankingFunc_Info[23643]["Mail"]["Reward"][4]["ExistDay"] = 7
tRankingFunc_Info[23643]["Mail"]["Reward"][4]["Title"] = tThorWarmUp_Text["SendMail"]["Title"]
tRankingFunc_Info[23643]["Mail"]["Reward"][4]["Sender"] = tThorWarmUp_Text["SendMail"]["Sender"]
tRankingFunc_Info[23643]["Mail"]["Reward"][4]["Content"] = tThorWarmUp_Text["SendMail"]["Content"][4]
tRankingFunc_Info[23643]["Mail"]["Reward"][5] = {}
tRankingFunc_Info[23643]["Mail"]["Reward"][5]["RewardRank"] = 5
tRankingFunc_Info[23643]["Mail"]["Reward"][5]["ActionId"] = 570868
tRankingFunc_Info[23643]["Mail"]["Reward"][5]["ExistDay"] = 7
tRankingFunc_Info[23643]["Mail"]["Reward"][5]["Title"] = tThorWarmUp_Text["SendMail"]["Title"]
tRankingFunc_Info[23643]["Mail"]["Reward"][5]["Sender"] =  tThorWarmUp_Text["SendMail"]["Sender"]
tRankingFunc_Info[23643]["Mail"]["Reward"][5]["Content"] = tThorWarmUp_Text["SendMail"]["Content"][5]
tRankingFunc_Info[23643]["Mail"]["Reward"][6] = {}
tRankingFunc_Info[23643]["Mail"]["Reward"][6]["RewardRank"] = 6
tRankingFunc_Info[23643]["Mail"]["Reward"][6]["ActionId"] = 570869
tRankingFunc_Info[23643]["Mail"]["Reward"][6]["ExistDay"] = 7
tRankingFunc_Info[23643]["Mail"]["Reward"][6]["Title"] = tThorWarmUp_Text["SendMail"]["Title"]
tRankingFunc_Info[23643]["Mail"]["Reward"][6]["Sender"] =  tThorWarmUp_Text["SendMail"]["Sender"]
tRankingFunc_Info[23643]["Mail"]["Reward"][6]["Content"] = tThorWarmUp_Text["SendMail"]["Content"][6]
tRankingFunc_Info[23643]["Mail"]["Reward"][7] = {}
tRankingFunc_Info[23643]["Mail"]["Reward"][7]["RewardRank"] = 7
tRankingFunc_Info[23643]["Mail"]["Reward"][7]["ActionId"] = 570870
tRankingFunc_Info[23643]["Mail"]["Reward"][7]["ExistDay"] = 7
tRankingFunc_Info[23643]["Mail"]["Reward"][7]["Title"] = tThorWarmUp_Text["SendMail"]["Title"]
tRankingFunc_Info[23643]["Mail"]["Reward"][7]["Sender"] =  tThorWarmUp_Text["SendMail"]["Sender"]
tRankingFunc_Info[23643]["Mail"]["Reward"][7]["Content"] = tThorWarmUp_Text["SendMail"]["Content"][7]
tRankingFunc_Info[23643]["Mail"]["Reward"][8] = {}
tRankingFunc_Info[23643]["Mail"]["Reward"][8]["RewardRank"] = 8
tRankingFunc_Info[23643]["Mail"]["Reward"][8]["ActionId"] = 570871
tRankingFunc_Info[23643]["Mail"]["Reward"][8]["ExistDay"] = 7
tRankingFunc_Info[23643]["Mail"]["Reward"][8]["Title"] = tThorWarmUp_Text["SendMail"]["Title"]
tRankingFunc_Info[23643]["Mail"]["Reward"][8]["Sender"] = tThorWarmUp_Text["SendMail"]["Sender"]
tRankingFunc_Info[23643]["Mail"]["Reward"][8]["Content"] = tThorWarmUp_Text["SendMail"]["Content"][8]
tRankingFunc_Info[23643]["Mail"]["Reward"][9] = {}
tRankingFunc_Info[23643]["Mail"]["Reward"][9]["RewardRank"] = 9
tRankingFunc_Info[23643]["Mail"]["Reward"][9]["ActionId"] = 570872
tRankingFunc_Info[23643]["Mail"]["Reward"][9]["ExistDay"] = 7
tRankingFunc_Info[23643]["Mail"]["Reward"][9]["Title"] = tThorWarmUp_Text["SendMail"]["Title"]
tRankingFunc_Info[23643]["Mail"]["Reward"][9]["Sender"] =  tThorWarmUp_Text["SendMail"]["Sender"]
tRankingFunc_Info[23643]["Mail"]["Reward"][9]["Content"] = tThorWarmUp_Text["SendMail"]["Content"][9]
tRankingFunc_Info[23643]["Mail"]["Reward"][10] = {}
tRankingFunc_Info[23643]["Mail"]["Reward"][10]["RewardRank"] = 10
tRankingFunc_Info[23643]["Mail"]["Reward"][10]["ActionId"] = 570873
tRankingFunc_Info[23643]["Mail"]["Reward"][10]["ExistDay"] = 7
tRankingFunc_Info[23643]["Mail"]["Reward"][10]["Title"] = tThorWarmUp_Text["SendMail"]["Title"]
tRankingFunc_Info[23643]["Mail"]["Reward"][10]["Sender"] =  tThorWarmUp_Text["SendMail"]["Sender"]
tRankingFunc_Info[23643]["Mail"]["Reward"][10]["Content"] = tThorWarmUp_Text["SendMail"]["Content"][10]

	
---------------------------------时间自检---------------------------------
	local tThorWarmUp_Time={}
	
	tThorWarmUp_Time["Type"] = 2
	tThorWarmUp_Time["TimeType"] = 4
	tThorWarmUp_Time["Multiple"] = {}
	tThorWarmUp_Time["Multiple"][1]  = "00:00 00:00"
	tThorWarmUp_Time["Func"] = ThorWarmUp_RankBroadcast
 table.insert(tSystemTime_InitialData,tThorWarmUp_Time)



