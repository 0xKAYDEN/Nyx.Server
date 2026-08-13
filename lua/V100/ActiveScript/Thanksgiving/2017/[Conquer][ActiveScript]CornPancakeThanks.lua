------------------------------------------------------------------------------------
--Name:			[英文征服][活动脚本]玉米煎饼怀恩情
--Creator:		翁清海
--Created:		2017/09/27
------------------------------------------------------------------------------------

--命名前缀
--CornPancakeThanks_

--logid:12000890

--stc掩码说明
--stc 16765 打怪掉落香甜玉米数统计

local tCornPancakeThanks_Cont = {}
	--等级
	tCornPancakeThanks_Cont["Level"] = 80
	tCornPancakeThanks_Cont["Metempsychosis"] = 0
	--概率基数
	tCornPancakeThanks_Cont["Random"] = 10000
	--使用香甜玉米获得感恩礼盒概率
	tCornPancakeThanks_Cont["GetBox"] = 300
	--片区怪物掉落概率
	tCornPancakeThanks_Cont["Drop"] = 1000
	--读条秒数
	tCornPancakeThanks_Cont["Sec"] = 2
	--读条动作
	tCornPancakeThanks_Cont["Action"] = 100

local tCornPancakeThanks_Time = {}
	tCornPancakeThanks_Time["Activity"] = tActivityTime["CornPancakeThanks"]["Activity"]
	tCornPancakeThanks_Time["ItemUse"] = tActivityTime["CornPancakeThanks"]["ItemUse"]

local tCornPancakeThanks_Log = {}
	tCornPancakeThanks_Log["GetCornCake"] = "0,0,3305547,%d,12000890,1[2],3305548,%d"
	tCornPancakeThanks_Log["GetCornBox"] = "0,0,3305547,%d,12000890,1[3],3305548[3305549],%d[%d]"
	
local tCornPancakeThanks_Stc = {}
	--片区怪物掉落香甜玉米限制
	tCornPancakeThanks_Stc["Kill"] = {}
	tCornPancakeThanks_Stc["Kill"]["Event"] = 167
	tCornPancakeThanks_Stc["Kill"]["Type"] = 65
	tCornPancakeThanks_Stc["Kill"]["Save"] = 1
	tCornPancakeThanks_Stc["Kill"]["Delay"] = 1
	tCornPancakeThanks_Stc["Kill"]["TimeType"] = 4
	tCornPancakeThanks_Stc["Kill"]["LimitData"] = 100
	
--奖励配置
local tCornPancakeThanks_Reward = {}
	--怪物掉落香甜玉米
	tCornPancakeThanks_Reward["Kill"] = {}
	tCornPancakeThanks_Reward["Kill"]["RewardItem"] = {}
	tCornPancakeThanks_Reward["Kill"]["RewardItem"][1] = {}
	tCornPancakeThanks_Reward["Kill"]["RewardItem"][1]["Id"] = 3305547
	tCornPancakeThanks_Reward["Kill"]["RewardItem"][1]["Attr"] = "0 1"
	tCornPancakeThanks_Reward["Kill"]["RewardEffect"] = {}
	tCornPancakeThanks_Reward["Kill"]["RewardEffect"]["SzObj"] = "self"
	tCornPancakeThanks_Reward["Kill"]["RewardEffect"]["Effect"] = "eidolon"
	tCornPancakeThanks_Reward["Kill"]["Log"] = "0,0,0,0,12000890,1[1],3305547,1"
	--显著功勋礼包打开获得
	tCornPancakeThanks_Reward["Plus"] = {}
	tCornPancakeThanks_Reward["Plus"]["RewardItem"] = {}
	tCornPancakeThanks_Reward["Plus"]["RewardItem"][1] = {}
	tCornPancakeThanks_Reward["Plus"]["RewardItem"][1]["Id"] = 3305547
	tCornPancakeThanks_Reward["Plus"]["RewardItem"][1]["Attr"] = "0 20"
	tCornPancakeThanks_Reward["Plus"]["LogId"] = 12000890
	--香甜玉米
	tCornPancakeThanks_Reward[3305547] = {}
	tCornPancakeThanks_Reward[3305547]["RewardItem"] = {}
	tCornPancakeThanks_Reward[3305547]["RewardItem"][1] = {}
	tCornPancakeThanks_Reward[3305547]["RewardItem"][1]["Id"] = 3305548
	tCornPancakeThanks_Reward[3305547]["RewardItem"][1]["Attr"] = "0 1"
	tCornPancakeThanks_Reward[3305547]["RewardItem"][2] = {}
	tCornPancakeThanks_Reward[3305547]["RewardItem"][2]["Id"] = 3305549
	tCornPancakeThanks_Reward[3305547]["RewardItem"][2]["Attr"] = "0 1"
	tCornPancakeThanks_Reward[3305547]["RewardEffect"] = {}
	tCornPancakeThanks_Reward[3305547]["RewardEffect"]["SzObj"] = "self"
	tCornPancakeThanks_Reward[3305547]["RewardEffect"]["Effect"] = "task056"
	tCornPancakeThanks_Reward[3305547]["Time"] = tCornPancakeThanks_Time["Activity"]
	tCornPancakeThanks_Reward[3305547]["Explore"] = true
	--喷香玉米饼
	tCornPancakeThanks_Reward[3305548] = {}
	tCornPancakeThanks_Reward[3305548]["RewardItem"] = {}
	tCornPancakeThanks_Reward[3305548]["RewardItem"][1] = {}
	tCornPancakeThanks_Reward[3305548]["RewardItem"][1]["Id"] = 3301454
	tCornPancakeThanks_Reward[3305548]["RewardItem"][1]["Attr"] = "0 %d"
	tCornPancakeThanks_Reward[3305548]["DeleteItem"] = {}
	tCornPancakeThanks_Reward[3305548]["DeleteItem"][1] = {}
	tCornPancakeThanks_Reward[3305548]["DeleteItem"][1]["Id"] = 3305548
	tCornPancakeThanks_Reward[3305548]["DeleteItem"][1]["ItemNum"] = 0
	tCornPancakeThanks_Reward[3305548]["LogId"] = 12000890
	tCornPancakeThanks_Reward[3305548]["Where"] = 22203
	--感恩天石赠礼包
	tCornPancakeThanks_Reward[3305550] = {}
	tCornPancakeThanks_Reward[3305550]["RewardEMoneyMono"] = {}
	tCornPancakeThanks_Reward[3305550]["RewardEMoneyMono"]["Value"] = 0
	tCornPancakeThanks_Reward[3305550]["RewardEffect"] = {}
	tCornPancakeThanks_Reward[3305550]["RewardEffect"]["SzObj"] = "self"
	tCornPancakeThanks_Reward[3305550]["RewardEffect"]["Effect"] = "angelwing"
	tCornPancakeThanks_Reward[3305550]["DeleteItem"] = {}
	tCornPancakeThanks_Reward[3305550]["DeleteItem"][1] = {}
	tCornPancakeThanks_Reward[3305550]["DeleteItem"][1]["Id"] = 3305550
	tCornPancakeThanks_Reward[3305550]["LogId"] = 12000890
	tCornPancakeThanks_Reward[3305550]["MonoFlag"] = 88
	tCornPancakeThanks_Reward[3305550]["Time"] = tCornPancakeThanks_Time["ItemUse"]
	--感恩节武器外套可选包
	tCornPancakeThanks_Reward[3305551] = {}
	--长武：天龙骨（赠）
	tCornPancakeThanks_Reward[3305551][1] = {}
	tCornPancakeThanks_Reward[3305551][1]["RewardItem"] = {}
	tCornPancakeThanks_Reward[3305551][1]["RewardItem"][1] = {}
	tCornPancakeThanks_Reward[3305551][1]["RewardItem"][1]["Id"] = 350004
	tCornPancakeThanks_Reward[3305551][1]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1"
	tCornPancakeThanks_Reward[3305551][1]["RewardEffect"] = {}
	tCornPancakeThanks_Reward[3305551][1]["RewardEffect"]["SzObj"] = "self"
	tCornPancakeThanks_Reward[3305551][1]["RewardEffect"]["Effect"] = "angelwing"
	tCornPancakeThanks_Reward[3305551][1]["DeleteItem"] = {}
	tCornPancakeThanks_Reward[3305551][1]["DeleteItem"][1] = {}
	tCornPancakeThanks_Reward[3305551][1]["DeleteItem"][1]["Id"] = 3305551
	tCornPancakeThanks_Reward[3305551][1]["LogId"] = 12000890
	--短武：绝地光剑（赠）
	tCornPancakeThanks_Reward[3305551][2] = {}
	tCornPancakeThanks_Reward[3305551][2]["RewardItem"] = {}
	tCornPancakeThanks_Reward[3305551][2]["RewardItem"][1] = {}
	tCornPancakeThanks_Reward[3305551][2]["RewardItem"][1]["Id"] = 360018
	tCornPancakeThanks_Reward[3305551][2]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1"
	tCornPancakeThanks_Reward[3305551][2]["RewardEffect"] = {}
	tCornPancakeThanks_Reward[3305551][2]["RewardEffect"]["SzObj"] = "self"
	tCornPancakeThanks_Reward[3305551][2]["RewardEffect"]["Effect"] = "angelwing"
	tCornPancakeThanks_Reward[3305551][2]["DeleteItem"] = {}
	tCornPancakeThanks_Reward[3305551][2]["DeleteItem"][1] = {}
	tCornPancakeThanks_Reward[3305551][2]["DeleteItem"][1]["Id"] = 3305551
	tCornPancakeThanks_Reward[3305551][2]["LogId"] = 12000890
	--短武：檀香木球棒（赠）
	tCornPancakeThanks_Reward[3305551][3] = {}
	tCornPancakeThanks_Reward[3305551][3]["RewardItem"] = {}
	tCornPancakeThanks_Reward[3305551][3]["RewardItem"][1] = {}
	tCornPancakeThanks_Reward[3305551][3]["RewardItem"][1]["Id"] = 360002
	tCornPancakeThanks_Reward[3305551][3]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1"
	tCornPancakeThanks_Reward[3305551][3]["RewardEffect"] = {}
	tCornPancakeThanks_Reward[3305551][3]["RewardEffect"]["SzObj"] = "self"
	tCornPancakeThanks_Reward[3305551][3]["RewardEffect"]["Effect"] = "angelwing"
	tCornPancakeThanks_Reward[3305551][3]["DeleteItem"] = {}
	tCornPancakeThanks_Reward[3305551][3]["DeleteItem"][1] = {}
	tCornPancakeThanks_Reward[3305551][3]["DeleteItem"][1]["Id"] = 3305551
	tCornPancakeThanks_Reward[3305551][3]["LogId"] = 12000890
	--短武：金华火腿（赠）
	tCornPancakeThanks_Reward[3305551][4] = {}
	tCornPancakeThanks_Reward[3305551][4]["RewardItem"] = {}
	tCornPancakeThanks_Reward[3305551][4]["RewardItem"][1] = {}
	tCornPancakeThanks_Reward[3305551][4]["RewardItem"][1]["Id"] = 360020
	tCornPancakeThanks_Reward[3305551][4]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1"
	tCornPancakeThanks_Reward[3305551][4]["RewardEffect"] = {}
	tCornPancakeThanks_Reward[3305551][4]["RewardEffect"]["SzObj"] = "self"
	tCornPancakeThanks_Reward[3305551][4]["RewardEffect"]["Effect"] = "angelwing"
	tCornPancakeThanks_Reward[3305551][4]["DeleteItem"] = {}
	tCornPancakeThanks_Reward[3305551][4]["DeleteItem"][1] = {}
	tCornPancakeThanks_Reward[3305551][4]["DeleteItem"][1]["Id"] = 3305551
	tCornPancakeThanks_Reward[3305551][4]["LogId"] = 12000890
	--短武：大侠平底锅（赠）
	tCornPancakeThanks_Reward[3305551][5] = {}
	tCornPancakeThanks_Reward[3305551][5]["RewardItem"] = {}
	tCornPancakeThanks_Reward[3305551][5]["RewardItem"][1] = {}
	tCornPancakeThanks_Reward[3305551][5]["RewardItem"][1]["Id"] = 360009
	tCornPancakeThanks_Reward[3305551][5]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1"
	tCornPancakeThanks_Reward[3305551][5]["RewardEffect"] = {}
	tCornPancakeThanks_Reward[3305551][5]["RewardEffect"]["SzObj"] = "self"
	tCornPancakeThanks_Reward[3305551][5]["RewardEffect"]["Effect"] = "angelwing"
	tCornPancakeThanks_Reward[3305551][5]["DeleteItem"] = {}
	tCornPancakeThanks_Reward[3305551][5]["DeleteItem"][1] = {}
	tCornPancakeThanks_Reward[3305551][5]["DeleteItem"][1]["Id"] = 3305551
	tCornPancakeThanks_Reward[3305551][5]["LogId"] = 12000890
	--短武：食神铲（赠）
	tCornPancakeThanks_Reward[3305551][6] = {}
	tCornPancakeThanks_Reward[3305551][6]["RewardItem"] = {}
	tCornPancakeThanks_Reward[3305551][6]["RewardItem"][1] = {}
	tCornPancakeThanks_Reward[3305551][6]["RewardItem"][1]["Id"] = 360006
	tCornPancakeThanks_Reward[3305551][6]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1"
	tCornPancakeThanks_Reward[3305551][6]["RewardEffect"] = {}
	tCornPancakeThanks_Reward[3305551][6]["RewardEffect"]["SzObj"] = "self"
	tCornPancakeThanks_Reward[3305551][6]["RewardEffect"]["Effect"] = "angelwing"
	tCornPancakeThanks_Reward[3305551][6]["DeleteItem"] = {}
	tCornPancakeThanks_Reward[3305551][6]["DeleteItem"][1] = {}
	tCornPancakeThanks_Reward[3305551][6]["DeleteItem"][1]["Id"] = 3305551
	tCornPancakeThanks_Reward[3305551][6]["LogId"] = 12000890
	--短武：河豚鱼（赠）
	tCornPancakeThanks_Reward[3305551][7] = {}
	tCornPancakeThanks_Reward[3305551][7]["RewardItem"] = {}
	tCornPancakeThanks_Reward[3305551][7]["RewardItem"][1] = {}
	tCornPancakeThanks_Reward[3305551][7]["RewardItem"][1]["Id"] = 360004
	tCornPancakeThanks_Reward[3305551][7]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1"
	tCornPancakeThanks_Reward[3305551][7]["RewardEffect"] = {}
	tCornPancakeThanks_Reward[3305551][7]["RewardEffect"]["SzObj"] = "self"
	tCornPancakeThanks_Reward[3305551][7]["RewardEffect"]["Effect"] = "angelwing"
	tCornPancakeThanks_Reward[3305551][7]["DeleteItem"] = {}
	tCornPancakeThanks_Reward[3305551][7]["DeleteItem"][1] = {}
	tCornPancakeThanks_Reward[3305551][7]["DeleteItem"][1]["Id"] = 3305551
	tCornPancakeThanks_Reward[3305551][7]["LogId"] = 12000890
	--感恩气力值礼包
	tCornPancakeThanks_Reward[3305552] = {}
	tCornPancakeThanks_Reward[3305552]["RewardStrengthValue"] = {}
	tCornPancakeThanks_Reward[3305552]["RewardStrengthValue"]["Value"] = 200
	tCornPancakeThanks_Reward[3305552]["RewardEffect"] = {}
	tCornPancakeThanks_Reward[3305552]["RewardEffect"]["SzObj"] = "self"
	tCornPancakeThanks_Reward[3305552]["RewardEffect"]["Effect"] = "angelwing"
	tCornPancakeThanks_Reward[3305552]["DeleteItem"] = {}
	tCornPancakeThanks_Reward[3305552]["DeleteItem"][1] = {}
	tCornPancakeThanks_Reward[3305552]["DeleteItem"][1]["Id"] = 3305552
	tCornPancakeThanks_Reward[3305552]["LogId"] = 12000890
	tCornPancakeThanks_Reward[3305552]["Time"] = tCornPancakeThanks_Time["ItemUse"]
	--感恩微光星陨石礼包
	tCornPancakeThanks_Reward[3305553] = {}
	tCornPancakeThanks_Reward[3305553]["RewardItem"] = {}
	tCornPancakeThanks_Reward[3305553]["RewardItem"][1] = {}
	tCornPancakeThanks_Reward[3305553]["RewardItem"][1]["Id"] = 3009000
	tCornPancakeThanks_Reward[3305553]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tCornPancakeThanks_Reward[3305553]["RewardEffect"] = {}
	tCornPancakeThanks_Reward[3305553]["RewardEffect"]["SzObj"] = "self"
	tCornPancakeThanks_Reward[3305553]["RewardEffect"]["Effect"] = "angelwing"
	tCornPancakeThanks_Reward[3305553]["DeleteItem"] = {}
	tCornPancakeThanks_Reward[3305553]["DeleteItem"][1] = {}
	tCornPancakeThanks_Reward[3305553]["DeleteItem"][1]["Id"] = 3305553
	tCornPancakeThanks_Reward[3305553]["LogId"] = 12000890
	tCornPancakeThanks_Reward[3305553]["Time"] = tCornPancakeThanks_Time["ItemUse"]
	--感恩明亮星陨石礼包
	tCornPancakeThanks_Reward[3305554] = {}
	tCornPancakeThanks_Reward[3305554]["RewardItem"] = {}
	tCornPancakeThanks_Reward[3305554]["RewardItem"][1] = {}
	tCornPancakeThanks_Reward[3305554]["RewardItem"][1]["Id"] = 3009001
	tCornPancakeThanks_Reward[3305554]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tCornPancakeThanks_Reward[3305554]["RewardEffect"] = {}
	tCornPancakeThanks_Reward[3305554]["RewardEffect"]["SzObj"] = "self"
	tCornPancakeThanks_Reward[3305554]["RewardEffect"]["Effect"] = "angelwing"
	tCornPancakeThanks_Reward[3305554]["DeleteItem"] = {}
	tCornPancakeThanks_Reward[3305554]["DeleteItem"][1] = {}
	tCornPancakeThanks_Reward[3305554]["DeleteItem"][1]["Id"] = 3305554
	tCornPancakeThanks_Reward[3305554]["LogId"] = 12000890
	tCornPancakeThanks_Reward[3305554]["Time"] = tCornPancakeThanks_Time["ItemUse"]
	--感恩赤炼石+1礼包
	tCornPancakeThanks_Reward[3305555] = {}
	tCornPancakeThanks_Reward[3305555]["RewardItem"] = {}
	tCornPancakeThanks_Reward[3305555]["RewardItem"][1] = {}
	tCornPancakeThanks_Reward[3305555]["RewardItem"][1]["Id"] = 730001
	tCornPancakeThanks_Reward[3305555]["RewardItem"][1]["Attr"] = "0 1 3"
	tCornPancakeThanks_Reward[3305555]["RewardEffect"] = {}
	tCornPancakeThanks_Reward[3305555]["RewardEffect"]["SzObj"] = "self"
	tCornPancakeThanks_Reward[3305555]["RewardEffect"]["Effect"] = "angelwing"
	tCornPancakeThanks_Reward[3305555]["DeleteItem"] = {}
	tCornPancakeThanks_Reward[3305555]["DeleteItem"][1] = {}
	tCornPancakeThanks_Reward[3305555]["DeleteItem"][1]["Id"] = 3305555
	tCornPancakeThanks_Reward[3305555]["LogId"] = 12000890
	tCornPancakeThanks_Reward[3305555]["Time"] = tCornPancakeThanks_Time["ItemUse"]
	--感恩赤炼石+2礼包
	tCornPancakeThanks_Reward[3305556] = {}
	tCornPancakeThanks_Reward[3305556]["RewardItem"] = {}
	tCornPancakeThanks_Reward[3305556]["RewardItem"][1] = {}
	tCornPancakeThanks_Reward[3305556]["RewardItem"][1]["Id"] = 730002
	tCornPancakeThanks_Reward[3305556]["RewardItem"][1]["Attr"] = "0 1 3"
	tCornPancakeThanks_Reward[3305556]["RewardEffect"] = {}
	tCornPancakeThanks_Reward[3305556]["RewardEffect"]["SzObj"] = "self"
	tCornPancakeThanks_Reward[3305556]["RewardEffect"]["Effect"] = "angelwing"
	tCornPancakeThanks_Reward[3305556]["DeleteItem"] = {}
	tCornPancakeThanks_Reward[3305556]["DeleteItem"][1] = {}
	tCornPancakeThanks_Reward[3305556]["DeleteItem"][1]["Id"] = 3305556
	tCornPancakeThanks_Reward[3305556]["LogId"] = 12000890
	tCornPancakeThanks_Reward[3305556]["Time"] = tCornPancakeThanks_Time["ItemUse"]
--随机奖励配置
local tCornPancakeThanks_RewardRandom = {}
	--感恩礼盒
	tCornPancakeThanks_RewardRandom[3305549] = {}
	tCornPancakeThanks_RewardRandom[3305549][1] = {}
	tCornPancakeThanks_RewardRandom[3305549][1]["ItemChanceSum"] = 10000
	tCornPancakeThanks_RewardRandom[3305549][1][1] = {}
	tCornPancakeThanks_RewardRandom[3305549][1][1]["RandomItemChanceType"] = 2
	tCornPancakeThanks_RewardRandom[3305549][1][1]["ItemChance"] = 1000
	tCornPancakeThanks_RewardRandom[3305549][1][1]["RewardStrengthValue"] = {}
	tCornPancakeThanks_RewardRandom[3305549][1][1]["RewardStrengthValue"]["Value"] = 100
	tCornPancakeThanks_RewardRandom[3305549][1][1]["RewardEffect"] = {}
	tCornPancakeThanks_RewardRandom[3305549][1][1]["RewardEffect"]["SzObj"] = "self"
	tCornPancakeThanks_RewardRandom[3305549][1][1]["RewardEffect"]["Effect"] = "angelwing"
	tCornPancakeThanks_RewardRandom[3305549][1][1]["Log"] = "0,0,3305549,1,12000890,2,12,100"
	tCornPancakeThanks_RewardRandom[3305549][1][1]["Item_1"] = 1
	tCornPancakeThanks_RewardRandom[3305549][1][2] = {}
	tCornPancakeThanks_RewardRandom[3305549][1][2]["RandomItemChanceType"] = 2
	tCornPancakeThanks_RewardRandom[3305549][1][2]["ItemChance"] = 2000
	tCornPancakeThanks_RewardRandom[3305549][1][2]["RewardItem"] = {}
	tCornPancakeThanks_RewardRandom[3305549][1][2]["RewardItem"][1] = {}
	tCornPancakeThanks_RewardRandom[3305549][1][2]["RewardItem"][1]["Id"] = 3009000
	tCornPancakeThanks_RewardRandom[3305549][1][2]["RewardItem"][1]["Attr"] = "0 3 0 2880 1"
	tCornPancakeThanks_RewardRandom[3305549][1][2]["RewardEffect"] = {}
	tCornPancakeThanks_RewardRandom[3305549][1][2]["RewardEffect"]["SzObj"] = "self"
	tCornPancakeThanks_RewardRandom[3305549][1][2]["RewardEffect"]["Effect"] = "angelwing"
	tCornPancakeThanks_RewardRandom[3305549][1][2]["Log"] = "0,0,3305549,1,12000890,2,3009000,3"
	tCornPancakeThanks_RewardRandom[3305549][1][2]["Item_1"] = 2
	tCornPancakeThanks_RewardRandom[3305549][1][3] = {}
	tCornPancakeThanks_RewardRandom[3305549][1][3]["RandomItemChanceType"] = 2
	tCornPancakeThanks_RewardRandom[3305549][1][3]["ItemChance"] = 3000
	tCornPancakeThanks_RewardRandom[3305549][1][3]["RewardItem"] = {}
	tCornPancakeThanks_RewardRandom[3305549][1][3]["RewardItem"][1] = {}
	tCornPancakeThanks_RewardRandom[3305549][1][3]["RewardItem"][1]["Id"] = 730001
	tCornPancakeThanks_RewardRandom[3305549][1][3]["RewardItem"][1]["Attr"] = "0 3 3"
	tCornPancakeThanks_RewardRandom[3305549][1][3]["RewardEffect"] = {}
	tCornPancakeThanks_RewardRandom[3305549][1][3]["RewardEffect"]["SzObj"] = "self"
	tCornPancakeThanks_RewardRandom[3305549][1][3]["RewardEffect"]["Effect"] = "angelwing"
	tCornPancakeThanks_RewardRandom[3305549][1][3]["Log"] = "0,0,3305549,1,12000890,2,730001,3"
	tCornPancakeThanks_RewardRandom[3305549][1][3]["Item_1"] = 3
	tCornPancakeThanks_RewardRandom[3305549][1][4] = {}
	tCornPancakeThanks_RewardRandom[3305549][1][4]["RandomItemChanceType"] = 2
	tCornPancakeThanks_RewardRandom[3305549][1][4]["ItemChance"] = 3000
	tCornPancakeThanks_RewardRandom[3305549][1][4]["RewardItem"] = {}
	tCornPancakeThanks_RewardRandom[3305549][1][4]["RewardItem"][1] = {}
	tCornPancakeThanks_RewardRandom[3305549][1][4]["RewardItem"][1]["Id"] = 3003124
	tCornPancakeThanks_RewardRandom[3305549][1][4]["RewardItem"][1]["Attr"] = "0 3 3"
	tCornPancakeThanks_RewardRandom[3305549][1][4]["RewardEffect"] = {}
	tCornPancakeThanks_RewardRandom[3305549][1][4]["RewardEffect"]["SzObj"] = "self"
	tCornPancakeThanks_RewardRandom[3305549][1][4]["RewardEffect"]["Effect"] = "angelwing"
	tCornPancakeThanks_RewardRandom[3305549][1][4]["Log"] = "0,0,3305549,1,12000890,2,3003124,3"
	tCornPancakeThanks_RewardRandom[3305549][1][4]["Item_1"] = 4
	tCornPancakeThanks_RewardRandom[3305549][1][5] = {}
	tCornPancakeThanks_RewardRandom[3305549][1][5]["RandomItemChanceType"] = 2
	tCornPancakeThanks_RewardRandom[3305549][1][5]["ItemChance"] = 1000
	tCornPancakeThanks_RewardRandom[3305549][1][5]["RewardEMoneyMono"] = {}
	tCornPancakeThanks_RewardRandom[3305549][1][5]["RewardEMoneyMono"]["Value"] = 50
	tCornPancakeThanks_RewardRandom[3305549][1][5]["RewardEffect"] = {}
	tCornPancakeThanks_RewardRandom[3305549][1][5]["RewardEffect"]["SzObj"] = "self"
	tCornPancakeThanks_RewardRandom[3305549][1][5]["RewardEffect"]["Effect"] = "angelwing"
	tCornPancakeThanks_RewardRandom[3305549][1][5]["Log"] = "0,0,3305549,1,12000890,2,3,50"
	tCornPancakeThanks_RewardRandom[3305549][1][5]["Item_1"] = 5
	tCornPancakeThanks_RewardRandom[3305549]["Time"] = tCornPancakeThanks_Time["Activity"]
	tCornPancakeThanks_RewardRandom[3305549]["BroadCast"] = tCornPancakeThanks_Text["BroadCast"]["OpenBox"]

---------------------------------------------逻辑模块---------------------------------------------
--物品打开通用
function CornPancakeThanks_ItemOpen(nItemTypeId)
	local nUserId = Get_UserId()
	local tAward = {}
	local bFlag = false
	
	if tCornPancakeThanks_Reward[nItemTypeId] ~= nil then
		tAward = CommonFunc_Copy(tCornPancakeThanks_Reward[nItemTypeId])
		bFlag = true
	elseif tCornPancakeThanks_RewardRandom[nItemTypeId] ~= nil then
		tAward = CommonFunc_Copy(tCornPancakeThanks_RewardRandom[nItemTypeId])
		bFlag = false
	end
	
	--时效删除
	if tAward["Time"] ~= nil then
		if not Sys_ChkFullTime(tAward["Time"]) then
			if Item_ChkItem(nItemTypeId) and Item_DelAllItemByType(nItemTypeId) then
				local sTalk = tCornPancakeThanks_Text["Channel2005"]["TimeOut"][nItemTypeId] or tCornPancakeThanks_Text["Channel2005"]["TimeOut"][3305550]
				User_TalkChannel2005(sTalk)
			end
			
			return
		end
	end
	
	--物品是否带有寻路功能
	if tAward["Where"] ~= nil then
		if Sys_ChkFullTime(tCornPancakeThanks_Time["Activity"]) then
			--活动时间内寻路
			NpcPosition_PathFind(tAward["Where"])
		else
			--活动时间外变成年运通宝
			local nCount = Get_CountItemType(nItemTypeId, 0)
			tAward["RewardItem"][1]["Attr"] = string.format(tAward["RewardItem"][1]["Attr"], nCount)
			tAward["DeleteItem"][1]["ItemNum"] = nCount
			RewardTemplate_UseItemAndMsg(tAward)
		end
		
		return
	end
	
	--是否需要读条
	if tAward["Explore"] ~= nil then
		local nSecs = tCornPancakeThanks_Cont["Sec"]
		local nActionId = tCornPancakeThanks_Cont["Action"]
		local sContent = tCornPancakeThanks_Text["UseCorn"]
		local sFunc = "CornPancakeThanks_Explore</N>"..nItemTypeId.."</N>"..nUserId
		
		local nCount = Get_CountItemType(nItemTypeId, 0)
		
		tAward["RewardItem"][1]["Attr"] = string.format("0 %d", nCount)
		tAward["RewardItem"][2]["Attr"] = string.format("0 %d", nCount)
		
		local nPlus = RewardTemplate_GetRewardSpace(tAward)
		local nLimit = Get_ItemtypeAccumulateLimit(nItemTypeId)
		local nDel = math.ceil(nCount/nLimit)
		local nSpace = nPlus - nDel
		
		--背包空间判断
		if nSpace > 0 and (not User_CheckLeftSpace(nSpace,nUserId)) then
			User_TalkChannel2005(tCornPancakeThanks_Text["Channel2005"]["NoSpace"])
			return
		end
		
		User_SetExplore(nSecs,sContent,nActionId,sFunc)
		return
	end
	
	--赠点随机包
	if tAward["MonoFlag"] ~= nil then
		local nNum = math.random(1,tAward["MonoFlag"])
		tAward["RewardEMoneyMono"]["Value"] = nNum
	end
	
	--走给奖模板
	if bFlag then
		RewardTemplate_UseItemAndMsg(tAward)
	else
		local nSpace = RewardTemplate_GetRandomSpace(tAward, 1) - 1
		
		if nSpace > 0 and (not User_CheckLeftSpace(nSpace)) then
			User_TalkChannel2005(tCornPancakeThanks_Text["Channel2005"]["NoSpace"])
			return
		end
		
		if Item_ChkItem(nItemTypeId) and Item_DelItem(nItemTypeId) then
			local tReward = RewardTemplate_NewRandom(tAward, 1)
			local nRandom = tReward[1]["tAward"][1]["Item_1"]
			
			if tAward["BroadCast"] ~= nil then
				Sys_SystemBroadcast(string.format(tAward["BroadCast"], Get_UserName(), tCornPancakeThanks_Text["OpenBox"][nRandom]))
			end
		end
	end
end

--制作玉米饼读条触发
function CornPancakeThanks_Explore(nItemTypeId, nUserId)
	local tAward = CommonFunc_Copy(tCornPancakeThanks_Reward[nItemTypeId])
	local nStartNum = tCornPancakeThanks_Cont["GetBox"]
	local nEndNum = tCornPancakeThanks_Cont["Random"]
	
	local nCount = Get_CountItemType(nItemTypeId, 0, nil, nil, nUserId)
	local nAwardNum = 0
	
	tAward["RewardItem"][1]["Attr"] = string.format("0 %d", nCount)
	tAward["RewardItem"][2]["Attr"] = string.format("0 %d", nCount)
	tAward["Talk"] = string.format(tCornPancakeThanks_Text["Talk"][nItemTypeId], nCount)
	
	local nPlus = RewardTemplate_GetRewardSpace(tAward, nUserId)
	local nLimit = Get_ItemtypeAccumulateLimit(nItemTypeId)
	local nDel = math.ceil(nCount/nLimit) + 1
	local nSpace = nPlus - nDel
	
	--背包空间判断
	if nSpace > 0 and (not User_CheckLeftSpace(nSpace,nUserId)) then
		User_TalkChannel2005(tCornPancakeThanks_Text["Channel2005"]["NoSpace"])
		return
	end
	
	for i = 1, nCount do
		if Sys_Random(nStartNum,nEndNum) then
			nAwardNum = nAwardNum + 1
		end
	end
	
	if nAwardNum == 0 then
		tAward["RewardItem"][2] = nil
		tAward["Log"] = string.format(tCornPancakeThanks_Log["GetCornCake"], nCount, nCount)
	else
		tAward["RewardItem"][2]["Attr"] = string.format("0 %d", nAwardNum)
		tAward["Log"] = string.format(tCornPancakeThanks_Log["GetCornBox"], nCount, nCount, nAwardNum)
		
		User_TalkChannel2005(string.format(tCornPancakeThanks_Text["Channel2005"]["AwardPlus"], nAwardNum), nUserId)
		Sys_MsgBox(string.format(tCornPancakeThanks_Text["MsgBox"]["AwardPlus"], nCount, nAwardNum), nil, nil, nUserId)
	end
	
	if Item_ChkItem(nItemTypeId,nil,nil,nUserId) and Item_DelAllItemByType(nItemTypeId,nUserId) then
		RewardTemplate_UseItem(tAward, nUserId)
	end
end

--显著功勋礼包打开获得
function CornPancakeThanks_PlusAward()
	--时效判断
	if not Sys_ChkFullTime(tCornPancakeThanks_Time["Activity"]) then
		return
	end
	
	RewardTemplate_UseItemAndMsg(tCornPancakeThanks_Reward["Plus"])
end

--外套选择包
function CornPancakeThanks_CoatChoose(nItemTypeId, nIndex)
	RewardTemplate_UseItemAndMsg(tCornPancakeThanks_Reward[nItemTypeId][nIndex])
end

--怪物掉落
function CornPancakeThanks_KillMonster()
	--时间判断
	if not Sys_ChkFullTime(tCornPancakeThanks_Time["Activity"]) then
		return
	end
	
	local nUserId = Get_UserId()
	
	--掉落限制
	local nEvent = tCornPancakeThanks_Stc["Kill"]["Event"]
	local nType = tCornPancakeThanks_Stc["Kill"]["Type"]
	local nSave = tCornPancakeThanks_Stc["Kill"]["Save"]
	local nDelay = tCornPancakeThanks_Stc["Kill"]["Delay"]
	local nTimeType = tCornPancakeThanks_Stc["Kill"]["TimeType"]
	local nLimitData = tCornPancakeThanks_Stc["Kill"]["LimitData"]
	
	Task_StcReset(nEvent,nType,nUserId,nTimeType,nDelay)
	
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId)
	
	--达到上限
	if nData > nLimitData then
		return
	elseif nData == nLimitData then
		Task_AddStatistic(nEvent,nType,1,nSave,nUserId)
		Sys_MsgBox(tCornPancakeThanks_Text["MsgBox"]["DropFull"])
		return
	end
	
	--空间不足
	if not RewardTemplate_CheckSpace(tCornPancakeThanks_Reward["Kill"]) then
		User_TalkChannel2005(tCornPancakeThanks_Text["Channel2005"]["DropNoSpace"])
		return
	end
	
	--概率掉落
	local nStartNum = tCornPancakeThanks_Cont["Drop"]
	local nEndNum = tCornPancakeThanks_Cont["Random"]
	
	if Sys_Random(nStartNum,nEndNum) then
		Task_AddStatistic(nEvent,nType,1,nSave,nUserId)
		RewardTemplate_UseItemAndMsg(tCornPancakeThanks_Reward["Kill"])
	end
end

--打开兑换商店
function CornPancakeThanks_OpenShop(nNpcId)
	--时间判断
	if not Sys_ChkFullTime(tCornPancakeThanks_Time["Activity"]) then
		LinkNpcGossipFunc_New(nNpcId, "2-1")
		return
	end
	
	User_OpenExchangeShop(nNpcId)
end
---------------------------------------------NPC模块---------------------------------------------
--怀恩
tNpcFace[211] = 60
tNpcGossip[22203] = tNpcGossip[22203] or DefaultNpc:new{}
tNpcGossip[22203]["DialogueText"] = tCornPancakeThanks_Text[22203]
tNpcGossip[22203]["OptionHidden"] = 1

--活动时间前
tNpcGossip[22203]["Text1-1"] = {111,112,113,114,115,116,117,118,119}
tNpcGossip[22203]["tOption1-1"] = {111}
tNpcGossip[22203]["ChkFunc1-1"] = function()
	return CommonFunc_GetBeforeActivityTime(tCornPancakeThanks_Time["Activity"])
end

--活动时间内
tNpcGossip[22203]["Text1-2"] = {121,122,123,124,125,126,127,128,129,1210,1211,1212,1213,1214,1215}
tNpcGossip[22203]["tOption1-2"] = {121,122}
tNpcGossip[22203]["ChkFunc1-2"] = function()
	local nUserId = Get_UserId()
	local nLevel = tCornPancakeThanks_Cont["Level"]
	local nMetempsychosis = tCornPancakeThanks_Cont["Metempsychosis"]
	if Sys_ChkFullTime(tCornPancakeThanks_Time["Activity"]) then
		if User_JudgeLevelAndMetempsychosis(nLevel,nMetempsychosis,nUserId) then
			tNpcGossip[22203]["Text1-2"] = {121,122,123,124,125,126,127,128,129,1210,1211,1212,1213,1215}
			tNpcGossip[22203]["tOption1-2"] = {122}
		else
			tNpcGossip[22203]["Text1-2"] = {121,122,123,124,125,126,127,128,129,1210,1211,1212,1213,1214,1215}
			tNpcGossip[22203]["tOption1-2"] = {121}
		end
		
		return true
	else
		return false
	end
end
tNpcGossip[22203]["OptionFunc122"] = "CornPancakeThanks_OpenShop</N>22203"--打开兑换商店

--活动时间后
tNpcGossip[22203]["Text1-3"] = {131,132,133,134,135}
tNpcGossip[22203]["tOption1-3"] = {131}
tNpcGossip[22203]["ChkFunc1-3"] = function()
	return CommonFunc_GetAfterActivityTime(tCornPancakeThanks_Time["Activity"])
end

--活动时间过后打开兑换商店的时候提示
tNpcGossip[22203]["Text2-1"] = {211}
tNpcGossip[22203]["tOption2-1"] = {211}

---------------------------------------------物品模块---------------------------------------------
--3305547,3305548,3305549,3305550
for i = 3305547, 3305550 do
	tItem[i] = tItem[i] or {}
	tItem[i]["Function"] = function(nItemTypeId,sItemName)
		CornPancakeThanks_ItemOpen(nItemTypeId)
	end
end
--3305552,3305553,3305554,3305555,3305556
for i = 3305552, 3305556 do
	tItem[i] = tItem[i] or {}
	tItem[i]["Function"] = function(nItemTypeId,sItemName)
		CornPancakeThanks_ItemOpen(nItemTypeId)
	end
end

--感恩节武器外套可选包
tItemFace[3305551] = 847
tItem[3305551] = tItem[3305551] or {}
tItem[3305551]["DialogueText"] = tCornPancakeThanks_Text[3305551]
tItem[3305551]["Time"] = tCornPancakeThanks_Time["ItemUse"]
tItem[3305551]["Text1-1"] = {111}
tItem[3305551]["ChkFunc1-1"] = function() return true end
tItem[3305551]["tOption1-1"] = {111,112,113,114,115,116,117,118}
tItem[3305551]["OptionFunc111"] = "CornPancakeThanks_CoatChoose</N>3305551</N>1"
tItem[3305551]["OptionFunc112"] = "CornPancakeThanks_CoatChoose</N>3305551</N>2"
tItem[3305551]["OptionFunc113"] = "CornPancakeThanks_CoatChoose</N>3305551</N>3"
tItem[3305551]["OptionFunc114"] = "CornPancakeThanks_CoatChoose</N>3305551</N>4"
tItem[3305551]["OptionFunc115"] = "CornPancakeThanks_CoatChoose</N>3305551</N>5"
tItem[3305551]["OptionFunc116"] = "CornPancakeThanks_CoatChoose</N>3305551</N>6"
tItem[3305551]["OptionFunc117"] = "CornPancakeThanks_CoatChoose</N>3305551</N>7"

---------------------------------------------怪物模块---------------------------------------------
--片区怪
-- local tCornPancakeThanks_Monster = {}
	-- tCornPancakeThanks_Monster["ActivityTime"] = tCornPancakeThanks_Time["Activity"]
	-- tCornPancakeThanks_Monster["Function"] = CornPancakeThanks_KillMonster
	-- tCornPancakeThanks_Monster["Area"] = {}
-- table.insert(tMonsterDrop_AreaLoad,tCornPancakeThanks_Monster)

