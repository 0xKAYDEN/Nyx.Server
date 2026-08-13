------------------------------------------------------------------------------------
--Name：            180305[简体征服][活动脚本]烦请制作海盗翻身签到活动发奖ID1
--Creator:      林旭
--Created:     2018/03/05
------------------------------------------------------------------------------------
--任务需求：

------------------------------------------------------------------------------------
-- 命名前缀
-- PiratesStrengthen_
-- LogId = 12001017
----------------------------------表配置部分--------------------------------------------
local tPiratesStrengthen_RewardItem = {}
-- 100点骑马积分
	tPiratesStrengthen_RewardItem[3307602] = {}
	tPiratesStrengthen_RewardItem[3307602]["LogId"] = 12001017
	tPiratesStrengthen_RewardItem[3307602]["DeleteItem"] = {}
	tPiratesStrengthen_RewardItem[3307602]["DeleteItem"][1] = {}
	tPiratesStrengthen_RewardItem[3307602]["DeleteItem"][1]["Id"] = 3307602
	tPiratesStrengthen_RewardItem[3307602]["DeleteItem"][1]["ItemNum"] = 1
	tPiratesStrengthen_RewardItem[3307602]["RewardRidingPoint"] = {}
	tPiratesStrengthen_RewardItem[3307602]["RewardRidingPoint"]["Value"] = 100
	tPiratesStrengthen_RewardItem[3307602]["RewardEffect"] = {}
	tPiratesStrengthen_RewardItem[3307602]["RewardEffect"]["SzObj"] = "self"
	tPiratesStrengthen_RewardItem[3307602]["RewardEffect"]["Effect"] = "angelwing"

-- 随机+1马（赠）
	tPiratesStrengthen_RewardItem[3307603] = {}
	tPiratesStrengthen_RewardItem[3307603]["ItemChanceSum"] = 3000
	-- +1雪脂马
	tPiratesStrengthen_RewardItem[3307603][1] = {}
	tPiratesStrengthen_RewardItem[3307603][1]["Log"] = "0,0,3307603,1,12001017,2,300000,1"
	tPiratesStrengthen_RewardItem[3307603][1]["RandomItemChanceType"] = 2
	tPiratesStrengthen_RewardItem[3307603][1]["ItemChance"] = 1000
	tPiratesStrengthen_RewardItem[3307603][1]["DeleteItem"] = {}
	tPiratesStrengthen_RewardItem[3307603][1]["DeleteItem"][1] = {}
	tPiratesStrengthen_RewardItem[3307603][1]["DeleteItem"][1]["Id"] = 3307603
	tPiratesStrengthen_RewardItem[3307603][1]["DeleteItem"][1]["ItemNum"] = 1
	tPiratesStrengthen_RewardItem[3307603][1]["RewardItem"] = {}
	tPiratesStrengthen_RewardItem[3307603][1]["RewardItem"][1] = {}
	tPiratesStrengthen_RewardItem[3307603][1]["RewardItem"][1]["Id"] = 300000
	tPiratesStrengthen_RewardItem[3307603][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 65430 0 255 0 1 0 0 0 0 0 0 150"
	tPiratesStrengthen_RewardItem[3307603][1]["RewardEffect"] = {}
	tPiratesStrengthen_RewardItem[3307603][1]["RewardEffect"]["SzObj"] = "self"
	tPiratesStrengthen_RewardItem[3307603][1]["RewardEffect"]["Effect"] = "angelwing"
	-- +1黑颈马
	tPiratesStrengthen_RewardItem[3307603][2] = {}
	tPiratesStrengthen_RewardItem[3307603][2]["Log"] = "0,0,3307603,1,12001017,2,300000,1"
	tPiratesStrengthen_RewardItem[3307603][2]["RandomItemChanceType"] = 2
	tPiratesStrengthen_RewardItem[3307603][2]["ItemChance"] = 1000
	tPiratesStrengthen_RewardItem[3307603][2]["DeleteItem"] = {}
	tPiratesStrengthen_RewardItem[3307603][2]["DeleteItem"][1] = {}
	tPiratesStrengthen_RewardItem[3307603][2]["DeleteItem"][1]["Id"] = 3307603
	tPiratesStrengthen_RewardItem[3307603][2]["DeleteItem"][1]["ItemNum"] = 1
	tPiratesStrengthen_RewardItem[3307603][2]["RewardItem"] = {}
	tPiratesStrengthen_RewardItem[3307603][2]["RewardItem"][1] = {}
	tPiratesStrengthen_RewardItem[3307603][2]["RewardItem"][1]["Id"] = 300000
	tPiratesStrengthen_RewardItem[3307603][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 9830655 150 0 0 1 0 0 0 0 0 0 255"
	tPiratesStrengthen_RewardItem[3307603][2]["RewardEffect"] = {}
	tPiratesStrengthen_RewardItem[3307603][2]["RewardEffect"]["SzObj"] = "self"
	tPiratesStrengthen_RewardItem[3307603][2]["RewardEffect"]["Effect"] = "angelwing"
	-- +1枣红马
	tPiratesStrengthen_RewardItem[3307603][3] = {}
	tPiratesStrengthen_RewardItem[3307603][3]["Log"] = "0,0,3307603,1,12001017,2,300000,1"
	tPiratesStrengthen_RewardItem[3307603][3]["RandomItemChanceType"] = 2
	tPiratesStrengthen_RewardItem[3307603][3]["ItemChance"] = 1000
	tPiratesStrengthen_RewardItem[3307603][3]["DeleteItem"] = {}
	tPiratesStrengthen_RewardItem[3307603][3]["DeleteItem"][1] = {}
	tPiratesStrengthen_RewardItem[3307603][3]["DeleteItem"][1]["Id"] = 3307603
	tPiratesStrengthen_RewardItem[3307603][3]["DeleteItem"][1]["ItemNum"] = 1
	tPiratesStrengthen_RewardItem[3307603][3]["RewardItem"] = {}
	tPiratesStrengthen_RewardItem[3307603][3]["RewardItem"][1] = {}
	tPiratesStrengthen_RewardItem[3307603][3]["RewardItem"][1]["Id"] = 300000
	tPiratesStrengthen_RewardItem[3307603][3]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 16750080 255 150 0 1"
	tPiratesStrengthen_RewardItem[3307603][3]["RewardEffect"] = {}
	tPiratesStrengthen_RewardItem[3307603][3]["RewardEffect"]["SzObj"] = "self"
	tPiratesStrengthen_RewardItem[3307603][3]["RewardEffect"]["Effect"] = "angelwing"
	
-- 白驹过隙精装包
	tPiratesStrengthen_RewardItem[3307605] = {}
	tPiratesStrengthen_RewardItem[3307605]["LogId"] = 12001017
	tPiratesStrengthen_RewardItem[3307605]["DeleteItem"] = {}
	tPiratesStrengthen_RewardItem[3307605]["DeleteItem"][1] = {}
	tPiratesStrengthen_RewardItem[3307605]["DeleteItem"][1]["Id"] = 3307605
	tPiratesStrengthen_RewardItem[3307605]["DeleteItem"][1]["ItemNum"] = 1
	tPiratesStrengthen_RewardItem[3307605]["RewardItem"] = {}
	-- 200分钟经验
	tPiratesStrengthen_RewardItem[3307605]["RewardItem"][1] = {}
	tPiratesStrengthen_RewardItem[3307605]["RewardItem"][1]["Id"] = 3008963
	tPiratesStrengthen_RewardItem[3307605]["RewardItem"][1]["Attr"] = "0 1"
	-- 100点修行值
	tPiratesStrengthen_RewardItem[3307605]["RewardItem"][2] = {}
	tPiratesStrengthen_RewardItem[3307605]["RewardItem"][2]["Id"] = 3002553
	tPiratesStrengthen_RewardItem[3307605]["RewardItem"][2]["Attr"] = "0 1"
	tPiratesStrengthen_RewardItem[3307605]["RewardEffect"] = {}
	tPiratesStrengthen_RewardItem[3307605]["RewardEffect"]["SzObj"] = "self"
	tPiratesStrengthen_RewardItem[3307605]["RewardEffect"]["Effect"] = "angelwing"
	
-- 白驹过隙豪华包
	tPiratesStrengthen_RewardItem[3307606] = {}
	tPiratesStrengthen_RewardItem[3307606]["LogId"] = 12001017
	tPiratesStrengthen_RewardItem[3307606]["DeleteItem"] = {}
	tPiratesStrengthen_RewardItem[3307606]["DeleteItem"][1] = {}
	tPiratesStrengthen_RewardItem[3307606]["DeleteItem"][1]["Id"] = 3307606
	tPiratesStrengthen_RewardItem[3307606]["DeleteItem"][1]["ItemNum"] = 1
	tPiratesStrengthen_RewardItem[3307606]["RewardItem"] = {}
	-- 100点骑马积分*2
	tPiratesStrengthen_RewardItem[3307606]["RewardItem"][1] = {}
	tPiratesStrengthen_RewardItem[3307606]["RewardItem"][1]["Id"] = 3307602
	tPiratesStrengthen_RewardItem[3307606]["RewardItem"][1]["Attr"] = "0 2"
	-- +3赤炼石赠
	tPiratesStrengthen_RewardItem[3307606]["RewardItem"][2] = {}
	tPiratesStrengthen_RewardItem[3307606]["RewardItem"][2]["Id"] = 730003
	tPiratesStrengthen_RewardItem[3307606]["RewardItem"][2]["Attr"] = "0 1 3 10080 1"
	-- 100点修行值
	tPiratesStrengthen_RewardItem[3307606]["RewardItem"][3] = {}
	tPiratesStrengthen_RewardItem[3307606]["RewardItem"][3]["Id"] = 3002553
	tPiratesStrengthen_RewardItem[3307606]["RewardItem"][3]["Attr"] = "0 1"
	tPiratesStrengthen_RewardItem[3307606]["RewardEffect"] = {}
	tPiratesStrengthen_RewardItem[3307606]["RewardEffect"]["SzObj"] = "self"
	tPiratesStrengthen_RewardItem[3307606]["RewardEffect"]["Effect"] = "angelwing"
	
-- 白驹过隙尊享包
	tPiratesStrengthen_RewardItem[3307607] = {}
	tPiratesStrengthen_RewardItem[3307607]["LogId"] = 12001017
	tPiratesStrengthen_RewardItem[3307607]["DeleteItem"] = {}
	tPiratesStrengthen_RewardItem[3307607]["DeleteItem"][1] = {}
	tPiratesStrengthen_RewardItem[3307607]["DeleteItem"][1]["Id"] = 3307607
	tPiratesStrengthen_RewardItem[3307607]["DeleteItem"][1]["ItemNum"] = 1
	tPiratesStrengthen_RewardItem[3307607]["RewardItem"] = {}
	-- 究极通神丹*3
	tPiratesStrengthen_RewardItem[3307607]["RewardItem"][1] = {}
	tPiratesStrengthen_RewardItem[3307607]["RewardItem"][1]["Id"] = 3003126
	tPiratesStrengthen_RewardItem[3307607]["RewardItem"][1]["Attr"] = "0 3 3"
	-- 200点气力值
	tPiratesStrengthen_RewardItem[3307607]["RewardItem"][2] = {}
	tPiratesStrengthen_RewardItem[3307607]["RewardItem"][2]["Id"] = 3200660
	tPiratesStrengthen_RewardItem[3307607]["RewardItem"][2]["Attr"] = "0 1 "
	-- 明亮星陨石*3
	tPiratesStrengthen_RewardItem[3307607]["RewardItem"][3] = {}
	tPiratesStrengthen_RewardItem[3307607]["RewardItem"][3]["Id"] = 3009001
	tPiratesStrengthen_RewardItem[3307607]["RewardItem"][3]["Attr"] = "0 3 0 2880 1"
	tPiratesStrengthen_RewardItem[3307607]["RewardEffect"] = {}
	tPiratesStrengthen_RewardItem[3307607]["RewardEffect"]["SzObj"] = "self"
	tPiratesStrengthen_RewardItem[3307607]["RewardEffect"]["Effect"] = "angelwing"
	
-- 光阴荏苒精装包
	tPiratesStrengthen_RewardItem[3307608] = {}
	tPiratesStrengthen_RewardItem[3307608]["LogId"] = 12001017
	tPiratesStrengthen_RewardItem[3307608]["DeleteItem"] = {}
	tPiratesStrengthen_RewardItem[3307608]["DeleteItem"][1] = {}
	tPiratesStrengthen_RewardItem[3307608]["DeleteItem"][1]["Id"] = 3307608
	tPiratesStrengthen_RewardItem[3307608]["DeleteItem"][1]["ItemNum"] = 1
	tPiratesStrengthen_RewardItem[3307608]["RewardItem"] = {}
	-- 300分钟经验
	tPiratesStrengthen_RewardItem[3307608]["RewardItem"][1] = {}
	tPiratesStrengthen_RewardItem[3307608]["RewardItem"][1]["Id"] = 3200337
	tPiratesStrengthen_RewardItem[3307608]["RewardItem"][1]["Attr"] = "0 1"
	-- 7天祝福时间
	tPiratesStrengthen_RewardItem[3307608]["RewardItem"][2] = {}
	tPiratesStrengthen_RewardItem[3307608]["RewardItem"][2]["Id"] = 1200001
	tPiratesStrengthen_RewardItem[3307608]["RewardItem"][2]["Attr"] = "0 1 3"
	-- +3马赠
	tPiratesStrengthen_RewardItem[3307608]["RewardItem"][3] = {}
	tPiratesStrengthen_RewardItem[3307608]["RewardItem"][3]["Id"] = 3303246
	tPiratesStrengthen_RewardItem[3307608]["RewardItem"][3]["Attr"] = "0 1"
	tPiratesStrengthen_RewardItem[3307608]["RewardEffect"] = {}
	tPiratesStrengthen_RewardItem[3307608]["RewardEffect"]["SzObj"] = "self"
	tPiratesStrengthen_RewardItem[3307608]["RewardEffect"]["Effect"] = "angelwing"
	
-- 光阴荏苒豪华包
	tPiratesStrengthen_RewardItem[3307609] = {}
	tPiratesStrengthen_RewardItem[3307609]["LogId"] = 12001017
	tPiratesStrengthen_RewardItem[3307609]["DeleteItem"] = {}
	tPiratesStrengthen_RewardItem[3307609]["DeleteItem"][1] = {}
	tPiratesStrengthen_RewardItem[3307609]["DeleteItem"][1]["Id"] = 3307609
	tPiratesStrengthen_RewardItem[3307609]["DeleteItem"][1]["ItemNum"] = 1
	tPiratesStrengthen_RewardItem[3307609]["RewardItem"] = {}
	-- 晶莹星陨石
	tPiratesStrengthen_RewardItem[3307609]["RewardItem"][1] = {}
	tPiratesStrengthen_RewardItem[3307609]["RewardItem"][1]["Id"] = 3009002
	tPiratesStrengthen_RewardItem[3307609]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	-- 天道酬勤卷两天时效*2
	tPiratesStrengthen_RewardItem[3307609]["RewardItem"][2] = {}
	tPiratesStrengthen_RewardItem[3307609]["RewardItem"][2]["Id"] = 3001407
	tPiratesStrengthen_RewardItem[3307609]["RewardItem"][2]["Attr"] = "0 2 3 2880 1"
	tPiratesStrengthen_RewardItem[3307609]["RewardEffect"] = {}
	tPiratesStrengthen_RewardItem[3307609]["RewardEffect"]["SzObj"] = "self"
	tPiratesStrengthen_RewardItem[3307609]["RewardEffect"]["Effect"] = "angelwing"
	
-- 光阴荏苒尊享包
	tPiratesStrengthen_RewardItem[3307610] = {}
	tPiratesStrengthen_RewardItem[3307610]["LogId"] = 12001017
	tPiratesStrengthen_RewardItem[3307610]["DeleteItem"] = {}
	tPiratesStrengthen_RewardItem[3307610]["DeleteItem"][1] = {}
	tPiratesStrengthen_RewardItem[3307610]["DeleteItem"][1]["Id"] = 3307610
	tPiratesStrengthen_RewardItem[3307610]["DeleteItem"][1]["ItemNum"] = 1
	tPiratesStrengthen_RewardItem[3307610]["RewardItem"] = {}
	-- 晶莹星陨石
	tPiratesStrengthen_RewardItem[3307610]["RewardItem"][1] = {}
	tPiratesStrengthen_RewardItem[3307610]["RewardItem"][1]["Id"] = 3009002
	tPiratesStrengthen_RewardItem[3307610]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	-- 500点气力值
	tPiratesStrengthen_RewardItem[3307610]["RewardItem"][2] = {}
	tPiratesStrengthen_RewardItem[3307610]["RewardItem"][2]["Id"] = 3008190
	tPiratesStrengthen_RewardItem[3307610]["RewardItem"][2]["Attr"] = "0 1"
	tPiratesStrengthen_RewardItem[3307610]["RewardEffect"] = {}
	tPiratesStrengthen_RewardItem[3307610]["RewardEffect"]["SzObj"] = "self"
	tPiratesStrengthen_RewardItem[3307610]["RewardEffect"]["Effect"] = "angelwing"
	
-- 日积月累精装包
	tPiratesStrengthen_RewardItem[3307611] = {}
	tPiratesStrengthen_RewardItem[3307611]["LogId"] = 12001017
	tPiratesStrengthen_RewardItem[3307611]["DeleteItem"] = {}
	tPiratesStrengthen_RewardItem[3307611]["DeleteItem"][1] = {}
	tPiratesStrengthen_RewardItem[3307611]["DeleteItem"][1]["Id"] = 3307611
	tPiratesStrengthen_RewardItem[3307611]["DeleteItem"][1]["ItemNum"] = 1
	tPiratesStrengthen_RewardItem[3307611]["RewardItem"] = {}
	-- 强效护心丹*5
	tPiratesStrengthen_RewardItem[3307611]["RewardItem"][1] = {}
	tPiratesStrengthen_RewardItem[3307611]["RewardItem"][1]["Id"] = 3002030
	tPiratesStrengthen_RewardItem[3307611]["RewardItem"][1]["Attr"] = "0 5"
	-- 桃源灵玉*2
	tPiratesStrengthen_RewardItem[3307611]["RewardItem"][2] = {}
	tPiratesStrengthen_RewardItem[3307611]["RewardItem"][2]["Id"] = 711504
	tPiratesStrengthen_RewardItem[3307611]["RewardItem"][2]["Attr"] = "0 2"
	-- 200点修行值
	tPiratesStrengthen_RewardItem[3307611]["RewardItem"][3] = {}
	tPiratesStrengthen_RewardItem[3307611]["RewardItem"][3]["Id"] = 3005123
	tPiratesStrengthen_RewardItem[3307611]["RewardItem"][3]["Attr"] = "0 1"
	tPiratesStrengthen_RewardItem[3307611]["RewardEffect"] = {}
	tPiratesStrengthen_RewardItem[3307611]["RewardEffect"]["SzObj"] = "self"
	tPiratesStrengthen_RewardItem[3307611]["RewardEffect"]["Effect"] = "angelwing"
	
-- 日积月累豪华包
	tPiratesStrengthen_RewardItem[3307612] = {}
	tPiratesStrengthen_RewardItem[3307612]["LogId"] = 12001017
	tPiratesStrengthen_RewardItem[3307612]["DeleteItem"] = {}
	tPiratesStrengthen_RewardItem[3307612]["DeleteItem"][1] = {}
	tPiratesStrengthen_RewardItem[3307612]["DeleteItem"][1]["Id"] = 3307612
	tPiratesStrengthen_RewardItem[3307612]["DeleteItem"][1]["ItemNum"] = 1
	tPiratesStrengthen_RewardItem[3307612]["RewardItem"] = {}
	-- 随机神纹礼包
	tPiratesStrengthen_RewardItem[3307612]["RewardItem"][1] = {}
	tPiratesStrengthen_RewardItem[3307612]["RewardItem"][1]["Id"] = 3306918
	tPiratesStrengthen_RewardItem[3307612]["RewardItem"][1]["Attr"] = "0 1"
	-- 桃源灵玉*2
	tPiratesStrengthen_RewardItem[3307612]["RewardItem"][2] = {}
	tPiratesStrengthen_RewardItem[3307612]["RewardItem"][2]["Id"] = 711504
	tPiratesStrengthen_RewardItem[3307612]["RewardItem"][2]["Attr"] = "0 2"
	-- 2000骑马积分礼包
	tPiratesStrengthen_RewardItem[3307612]["RewardItem"][3] = {}
	tPiratesStrengthen_RewardItem[3307612]["RewardItem"][3]["Id"] = 720881
	tPiratesStrengthen_RewardItem[3307612]["RewardItem"][3]["Attr"] = "0 1 3"
	tPiratesStrengthen_RewardItem[3307612]["RewardEffect"] = {}
	tPiratesStrengthen_RewardItem[3307612]["RewardEffect"]["SzObj"] = "self"
	tPiratesStrengthen_RewardItem[3307612]["RewardEffect"]["Effect"] = "angelwing"
	
-- 日积月累尊享包
	tPiratesStrengthen_RewardItem[3307613] = {}
	tPiratesStrengthen_RewardItem[3307613]["LogId"] = 12001017
	tPiratesStrengthen_RewardItem[3307613]["DeleteItem"] = {}
	tPiratesStrengthen_RewardItem[3307613]["DeleteItem"][1] = {}
	tPiratesStrengthen_RewardItem[3307613]["DeleteItem"][1]["Id"] = 3307613
	tPiratesStrengthen_RewardItem[3307613]["DeleteItem"][1]["ItemNum"] = 1
	tPiratesStrengthen_RewardItem[3307613]["RewardItem"] = {}
	-- 随机神纹礼包
	tPiratesStrengthen_RewardItem[3307613]["RewardItem"][1] = {}
	tPiratesStrengthen_RewardItem[3307613]["RewardItem"][1]["Id"] = 3306918
	tPiratesStrengthen_RewardItem[3307613]["RewardItem"][1]["Attr"] = "0 1"
	-- 桃源灵玉*3
	tPiratesStrengthen_RewardItem[3307613]["RewardItem"][2] = {}
	tPiratesStrengthen_RewardItem[3307613]["RewardItem"][2]["Id"] = 711504
	tPiratesStrengthen_RewardItem[3307613]["RewardItem"][2]["Attr"] = "0 3"
	-- 2000骑马积分礼包
	tPiratesStrengthen_RewardItem[3307613]["RewardItem"][3] = {}
	tPiratesStrengthen_RewardItem[3307613]["RewardItem"][3]["Id"] = 720881
	tPiratesStrengthen_RewardItem[3307613]["RewardItem"][3]["Attr"] = "0 1 3"
	-- 800点气力值
	tPiratesStrengthen_RewardItem[3307613]["RewardItem"][4] = {}
	tPiratesStrengthen_RewardItem[3307613]["RewardItem"][4]["Id"] = 3008192
	tPiratesStrengthen_RewardItem[3307613]["RewardItem"][4]["Attr"] = "0 1"
	tPiratesStrengthen_RewardItem[3307613]["RewardEffect"] = {}
	tPiratesStrengthen_RewardItem[3307613]["RewardEffect"]["SzObj"] = "self"
	tPiratesStrengthen_RewardItem[3307613]["RewardEffect"]["Effect"] = "angelwing"
	
-- 持之以恒精装包
	tPiratesStrengthen_RewardItem[3307614] = {}
	tPiratesStrengthen_RewardItem[3307614]["LogId"] = 12001017
	tPiratesStrengthen_RewardItem[3307614]["DeleteItem"] = {}
	tPiratesStrengthen_RewardItem[3307614]["DeleteItem"][1] = {}
	tPiratesStrengthen_RewardItem[3307614]["DeleteItem"][1]["Id"] = 3307614
	tPiratesStrengthen_RewardItem[3307614]["DeleteItem"][1]["ItemNum"] = 1
	tPiratesStrengthen_RewardItem[3307614]["RewardItem"] = {}
	-- 龙珠赠
	tPiratesStrengthen_RewardItem[3307614]["RewardItem"][1] = {}
	tPiratesStrengthen_RewardItem[3307614]["RewardItem"][1]["Id"] = 1088000
	tPiratesStrengthen_RewardItem[3307614]["RewardItem"][1]["Attr"] = "0 1 3"
	-- 500点修行值
	tPiratesStrengthen_RewardItem[3307614]["RewardItem"][2] = {}
	tPiratesStrengthen_RewardItem[3307614]["RewardItem"][2]["Id"] = 723342
	tPiratesStrengthen_RewardItem[3307614]["RewardItem"][2]["Attr"] = "0 1 3"
	-- +4赤炼石赠
	tPiratesStrengthen_RewardItem[3307614]["RewardItem"][3] = {}
	tPiratesStrengthen_RewardItem[3307614]["RewardItem"][3]["Id"] = 730004
	tPiratesStrengthen_RewardItem[3307614]["RewardItem"][3]["Attr"] = "0 1 3 10080 1"
	tPiratesStrengthen_RewardItem[3307614]["RewardEffect"] = {}
	tPiratesStrengthen_RewardItem[3307614]["RewardEffect"]["SzObj"] = "self"
	tPiratesStrengthen_RewardItem[3307614]["RewardEffect"]["Effect"] = "angelwing"
	
-- 持之以恒豪华包
	tPiratesStrengthen_RewardItem[3307615] = {}
	tPiratesStrengthen_RewardItem[3307615]["LogId"] = 12001017
	tPiratesStrengthen_RewardItem[3307615]["DeleteItem"] = {}
	tPiratesStrengthen_RewardItem[3307615]["DeleteItem"][1] = {}
	tPiratesStrengthen_RewardItem[3307615]["DeleteItem"][1]["Id"] = 3307615
	tPiratesStrengthen_RewardItem[3307615]["DeleteItem"][1]["ItemNum"] = 1
	tPiratesStrengthen_RewardItem[3307615]["RewardItem"] = {}
	-- 晶莹星陨石*3
	tPiratesStrengthen_RewardItem[3307615]["RewardItem"][1] = {}
	tPiratesStrengthen_RewardItem[3307615]["RewardItem"][1]["Id"] = 3009002
	tPiratesStrengthen_RewardItem[3307615]["RewardItem"][1]["Attr"] = "0 3 0 2880 1"
	-- 500点气力值
	tPiratesStrengthen_RewardItem[3307615]["RewardItem"][2] = {}
	tPiratesStrengthen_RewardItem[3307615]["RewardItem"][2]["Id"] = 3008190
	tPiratesStrengthen_RewardItem[3307615]["RewardItem"][2]["Attr"] = "0 1"
	-- 500点修行值
	tPiratesStrengthen_RewardItem[3307615]["RewardItem"][3] = {}
	tPiratesStrengthen_RewardItem[3307615]["RewardItem"][3]["Id"] = 723342
	tPiratesStrengthen_RewardItem[3307615]["RewardItem"][3]["Attr"] = "0 1 3"
	tPiratesStrengthen_RewardItem[3307615]["RewardEffect"] = {}
	tPiratesStrengthen_RewardItem[3307615]["RewardEffect"]["SzObj"] = "self"
	tPiratesStrengthen_RewardItem[3307615]["RewardEffect"]["Effect"] = "angelwing"
	
-- 持之以恒尊享包
	tPiratesStrengthen_RewardItem[3307616] = {}
	tPiratesStrengthen_RewardItem[3307616]["LogId"] = 12001017
	tPiratesStrengthen_RewardItem[3307616]["DeleteItem"] = {}
	tPiratesStrengthen_RewardItem[3307616]["DeleteItem"][1] = {}
	tPiratesStrengthen_RewardItem[3307616]["DeleteItem"][1]["Id"] = 3307616
	tPiratesStrengthen_RewardItem[3307616]["DeleteItem"][1]["ItemNum"] = 1
	tPiratesStrengthen_RewardItem[3307616]["RewardItem"] = {}
	-- 晶莹星陨石*5
	tPiratesStrengthen_RewardItem[3307616]["RewardItem"][1] = {}
	tPiratesStrengthen_RewardItem[3307616]["RewardItem"][1]["Id"] = 3009002
	tPiratesStrengthen_RewardItem[3307616]["RewardItem"][1]["Attr"] = "0 5 0 2880 1"
	-- 1000点气力值
	tPiratesStrengthen_RewardItem[3307616]["RewardItem"][2] = {}
	tPiratesStrengthen_RewardItem[3307616]["RewardItem"][2]["Id"] = 3306156
	tPiratesStrengthen_RewardItem[3307616]["RewardItem"][2]["Attr"] = "0 1"
	-- 500点修行值
	tPiratesStrengthen_RewardItem[3307616]["RewardItem"][3] = {}
	tPiratesStrengthen_RewardItem[3307616]["RewardItem"][3]["Id"] = 723342
	tPiratesStrengthen_RewardItem[3307616]["RewardItem"][3]["Attr"] = "0 1 3"
	tPiratesStrengthen_RewardItem[3307616]["RewardEffect"] = {}
	tPiratesStrengthen_RewardItem[3307616]["RewardEffect"]["SzObj"] = "self"
	tPiratesStrengthen_RewardItem[3307616]["RewardEffect"]["Effect"] = "angelwing"

----------------------------------逻辑部分---------------------------------------------
function PiratesStrengthen_OpenRandomHorse(nItemId)
	local nSpace = RewardTemplate_GetRandomSpace(tPiratesStrengthen_RewardItem,nItemId)
	local sText = tRewardTemplate_Text["NoSpace"]
	if not User_CheckLeftSpace(nSpace) then
		User_TalkChannel2005(string.format(sText,nSpace))
		return
	elseif Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		RewardTemplate_NewRandom(tPiratesStrengthen_RewardItem,nItemId)
	end
end

---------------------------------物品部分---------------------------------------------
-- 100点骑乘积分包
tItem[3307602] = tItem[3307602] or {}
tItem[3307602]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tPiratesStrengthen_RewardItem[nItemId])
end
-- +1随机马包
tItem[3307603] = tItem[3307603] or {}
tItem[3307603]["Function"] = function(nItemId,sItemName)
	PiratesStrengthen_OpenRandomHorse(nItemId)
end
-- 白驹过隙精装包
tItem[3307605] = tItem[3307602]
-- 白驹过隙豪华包
tItem[3307606] = tItem[3307602]
-- 白驹过隙尊享包
tItem[3307607] = tItem[3307602]
-- 光阴荏苒精装包
tItem[3307608] = tItem[3307602]
-- 光阴荏苒豪华包
tItem[3307609] = tItem[3307602]
-- 光阴荏苒尊享包
tItem[3307610] = tItem[3307602]
-- 日积月累精装包
tItem[3307611] = tItem[3307602]
-- 日积月累豪华包
tItem[3307612] = tItem[3307602]
-- 日积月累尊享包
tItem[3307613] = tItem[3307602]
-- 持之以恒精装包
tItem[3307614] = tItem[3307602]
-- 持之以恒豪华包
tItem[3307615] = tItem[3307602]
-- 持之以恒尊享包
tItem[3307616] = tItem[3307602]
