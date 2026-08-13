------------------------------------------------------------------------------------
--Name：            180821[英文征服][活动脚本]英文征服9月帮派PVP活动
--Creator:      杨艳
--Created:     2018/08/21
------------------------------------------------------------------------------------


--命名前缀
--BigGangFight_

--logid： 12001160

-- cq_dyna_global_data id : 52977~52983

--npc：
-- 23169,'荒原传送使
-- 23170,'荒原都督',

--物品
-- 3310601,'至尊帮主宝箱',11
-- 3310602,'荒原精英宝箱',11
-- 3310603,'荒原奋战礼包',11
-- 3310604,'+1赤炼石荒原包',
-- 3310605,'+2赤炼石荒原包',
-- 3310606,'通神丹荒原包',11
-- 3310607,'究极通神丹荒原包
-- 3310608,'荒原夺宝召集令',


--怪物
-- 4828,'魔卒',1,
-- 4829,'赤焰凤王


--STC掩码表：


-------------------------------------------数据部分-----------------------------------------

--基本数据
local tBigGangFight_Data = {}
	--活动时间
	tBigGangFight_Data["ActivityTime"] = tActivityTime["BigGangFight"]["ActivityTime"]
	
	--等级
	tBigGangFight_Data["Level"] = 80
	tBigGangFight_Data["Metempsychosis"] = 0
	tBigGangFight_Data["OpenTime"] = "5 21:30 5 21:59"
	-- tBigGangFight_Data["OpenTime"] = "5 21:30 5 23:59"  --测试数据
	
	--传送地图变量
	tBigGangFight_Data["City"] = 1002 --双龙城ID

	--传送到双龙城的坐标
	tBigGangFight_Data["CityPos"] = {}
	tBigGangFight_Data["CityPos"]["PosX"] = 330
	tBigGangFight_Data["CityPos"]["PosY"] = 492
	
	tBigGangFight_Data["MapId"] = 10363 --帮派活动地图
	tBigGangFight_Data["TransPos"] = {}
	tBigGangFight_Data["TransPos"][1] = {234,286}
	tBigGangFight_Data["TransPos"][2] = {244,336}
	tBigGangFight_Data["TransPos"][3] = {295,354}
	tBigGangFight_Data["TransPos"][4] = {347,373}
	tBigGangFight_Data["TransPos"][5] = {381,348}
	tBigGangFight_Data["TransPos"][6] = {360,263}
	tBigGangFight_Data["TransPos"][7] = {301,226}

	--读条秒数
	tBigGangFight_Data["Second"] = 1
	tBigGangFight_Data["Action"] = 100
	tBigGangFight_Data["Distance"] = 5
	
	tBigGangFight_Data[10363] = {}
	tBigGangFight_Data[10363][01] = {256,255}
	tBigGangFight_Data[10363][02] = {255,269}
	tBigGangFight_Data[10363][03] = {273,345}
	tBigGangFight_Data[10363][04] = {296,349}
	tBigGangFight_Data[10363][05] = {338,352}
	tBigGangFight_Data[10363][06] = {342,335}
	tBigGangFight_Data[10363][07] = {380,314}
	tBigGangFight_Data[10363][08] = {391,344}
	tBigGangFight_Data[10363][09] = {345,253}
	tBigGangFight_Data[10363][10] = {330,254}
	tBigGangFight_Data[10363][11] = {290,223}

	--击杀BOSS掉落参数
	tBigGangFight_Data["Cellx"] = 25
	tBigGangFight_Data["Celly"] = 25
	tBigGangFight_Data["ExistTime"] = 300
	
	--怪物信息
	tBigGangFight_Data["MonsterId"] = {}
	tBigGangFight_Data["MonsterId"][1] = 4828
	
	tBigGangFight_Data["MonsterId"][2] = {}
	tBigGangFight_Data["MonsterId"][2]["Id"] = 4829
	tBigGangFight_Data["MonsterId"][2]["GenId"] = 25280
	tBigGangFight_Data["MonsterId"][2]["MaxData"] = 5
	--boss 刷怪点
	tBigGangFight_Data["MonsterId"]["Born"] = {}
	tBigGangFight_Data["MonsterId"]["Born"][1] = {290,289}
	tBigGangFight_Data["MonsterId"]["Born"][2] = {333,283}                    
	tBigGangFight_Data["MonsterId"]["Born"][3] = {357,335}
	tBigGangFight_Data["MonsterId"]["Born"][4] = {310,354}                 

	--击杀BOSS掉落物品表
	tBigGangFight_Data["BossDrop"] = {}
	-- 100气力值礼包	3304324	2			20	100.00%
	-- 300气力值礼包	3304327	1			60	50.00%
	-- +1赤练石	3310604	2	赠		3	100.00%
	-- +2赤练石	3310605	1	赠		12	50.00%
	-- 龙珠	1088000	1			27	50.00%
	-- 通神丹	3310606	3	赠		3	100.00%
	-- 究极通神丹	3310607	1	赠		15	100.00%
	-- 秘制免费强炼丹	3003124	1			30	60.00%
	-- 奇门秘籍	723340	10			1	100.00%

	-- 100气力值礼包
	tBigGangFight_Data["BossDrop"][1] = {}
	tBigGangFight_Data["BossDrop"][1]["ItemId"] = 3304324
	tBigGangFight_Data["BossDrop"][1]["Num"] = 2
	tBigGangFight_Data["BossDrop"][1]["ItemChanceSum"] = 100
	tBigGangFight_Data["BossDrop"][1]["ItemChanceNum"] = 100
	
	-- 300气力值礼包
	tBigGangFight_Data["BossDrop"][2] = {}
	tBigGangFight_Data["BossDrop"][2]["ItemId"] = 3304327
	tBigGangFight_Data["BossDrop"][2]["Num"] = 1
	tBigGangFight_Data["BossDrop"][2]["ItemChanceSum"] = 100
	tBigGangFight_Data["BossDrop"][2]["ItemChanceNum"] = 50
	
	-- +1赤炼石
	tBigGangFight_Data["BossDrop"][3] = {}
	tBigGangFight_Data["BossDrop"][3]["ItemId"] = 3310604
	tBigGangFight_Data["BossDrop"][3]["Num"] = 2
	tBigGangFight_Data["BossDrop"][3]["ItemChanceSum"] = 100
	tBigGangFight_Data["BossDrop"][3]["ItemChanceNum"] = 100
	
	-- +2赤炼石
	tBigGangFight_Data["BossDrop"][4] = {}
	tBigGangFight_Data["BossDrop"][4]["ItemId"] = 3310605
	tBigGangFight_Data["BossDrop"][4]["Num"] = 1
	tBigGangFight_Data["BossDrop"][4]["ItemChanceSum"] = 100
	tBigGangFight_Data["BossDrop"][4]["ItemChanceNum"] = 50
	
	-- 龙珠
	tBigGangFight_Data["BossDrop"][5] = {}
	tBigGangFight_Data["BossDrop"][5]["ItemId"] = 1088000
	tBigGangFight_Data["BossDrop"][5]["Num"] = 1
	tBigGangFight_Data["BossDrop"][5]["ItemChanceSum"] = 100
	tBigGangFight_Data["BossDrop"][5]["ItemChanceNum"] = 50
	
	-- 通神丹
	tBigGangFight_Data["BossDrop"][6] = {}
	tBigGangFight_Data["BossDrop"][6]["ItemId"] = 3310606
	tBigGangFight_Data["BossDrop"][6]["Num"] = 3
	tBigGangFight_Data["BossDrop"][6]["ItemChanceSum"] = 100
	tBigGangFight_Data["BossDrop"][6]["ItemChanceNum"] = 100
	
	-- 究极通神丹
	tBigGangFight_Data["BossDrop"][7] = {}
	tBigGangFight_Data["BossDrop"][7]["ItemId"] = 3310607
	tBigGangFight_Data["BossDrop"][7]["Num"] = 1
	tBigGangFight_Data["BossDrop"][7]["ItemChanceSum"] = 100
	tBigGangFight_Data["BossDrop"][7]["ItemChanceNum"] = 100
	
	-- 秘制免费强炼丹
	tBigGangFight_Data["BossDrop"][8] = {}
	tBigGangFight_Data["BossDrop"][8]["ItemId"] = 3003124
	tBigGangFight_Data["BossDrop"][8]["Num"] = 1
	tBigGangFight_Data["BossDrop"][8]["ItemChanceSum"] = 100
	tBigGangFight_Data["BossDrop"][8]["ItemChanceNum"] = 60
	
	-- 奇门秘籍
	tBigGangFight_Data["BossDrop"][9] = {}
	tBigGangFight_Data["BossDrop"][9]["ItemId"] = 723340
	tBigGangFight_Data["BossDrop"][9]["Num"] = 10
	tBigGangFight_Data["BossDrop"][9]["ItemChanceSum"] = 100
	tBigGangFight_Data["BossDrop"][9]["ItemChanceNum"] = 100
	
	--记录全服积分动态码  data0记录积分  data1记录活动次数  data5用来记录邮件发奖
	tBigGangFight_Data["DynaAllGlobal"] = 52977
	
	--帮派排行榜记录
	tBigGangFight_Data["DynaGuildGlobal"] = 52978
	
	--帮派id记录
	tBigGangFight_Data["DynaGuildIdGlobal"] = 52979
	
	--天石奖池
	tBigGangFight_Data["Emoney"] = {}
	tBigGangFight_Data["Emoney"][1] = 5000
	tBigGangFight_Data["Emoney"][2] = 7000
	tBigGangFight_Data["Emoney"][3] = 10000
	
	--全服积分级别
	tBigGangFight_Data["Score"] = {}
	tBigGangFight_Data["Score"][1] = 3000
	tBigGangFight_Data["Score"][2] = 4500
	
	--排行榜数量
	tBigGangFight_Data["RankNum"] = 3
	
	--4次活动开启时间记录
	tBigGangFight_Data["OpenDate"] = {}
	tBigGangFight_Data["OpenDate"]["Times"] = 4
	tBigGangFight_Data["OpenDate"][0] = {}
	tBigGangFight_Data["OpenDate"][0]["Year"] = 2019
	tBigGangFight_Data["OpenDate"][0]["Month"] = 3
	tBigGangFight_Data["OpenDate"][0]["Day"] = 29
	tBigGangFight_Data["OpenDate"][1] = {}
	tBigGangFight_Data["OpenDate"][1]["Year"] = 2019
	tBigGangFight_Data["OpenDate"][1]["Month"] = 4
	tBigGangFight_Data["OpenDate"][1]["Day"] = 5
	tBigGangFight_Data["OpenDate"][2] = {}
	tBigGangFight_Data["OpenDate"][2]["Year"] = 2019
	tBigGangFight_Data["OpenDate"][2]["Month"] = 4
	tBigGangFight_Data["OpenDate"][2]["Day"] = 12
	tBigGangFight_Data["OpenDate"][3] = {}
	tBigGangFight_Data["OpenDate"][3]["Year"] = 2019
	tBigGangFight_Data["OpenDate"][3]["Month"] = 4
	tBigGangFight_Data["OpenDate"][3]["Day"] = 19
	tBigGangFight_Data["OpenDate"][4] = {}
	tBigGangFight_Data["OpenDate"][4]["Year"] = 2019
	tBigGangFight_Data["OpenDate"][4]["Month"] = 4
	tBigGangFight_Data["OpenDate"][4]["Day"] = 26
	tBigGangFight_Data["OpenDate"][5] = {}
	tBigGangFight_Data["OpenDate"][5]["Year"] = 2019
	tBigGangFight_Data["OpenDate"][5]["Month"] = 5
	tBigGangFight_Data["OpenDate"][5]["Day"] = 2
	
local	tBigGangFight_Mail = {}
	--邮件action
	tBigGangFight_Mail["Mail"] = {}
	tBigGangFight_Mail["Mail"]["Action"] = {}
	tBigGangFight_Mail["Mail"]["ExistDay"] = 7
	tBigGangFight_Mail["Mail"]["Action"][1] = 569812
	tBigGangFight_Mail["Mail"]["Action"][2] = 569813
	tBigGangFight_Mail["Mail"]["Action"][3] = 569814	
	tBigGangFight_Mail["Mail"]["Action"][4] = 569815	
	tBigGangFight_Mail["Mail"]["Action"][5] = 569816
	tBigGangFight_Mail["Mail"]["Action"][6] = 7383052
	tBigGangFight_Mail["Mail"]["Action"][7] = 7383053
	tBigGangFight_Mail["Mail"]["Action"][8] = 7383054
	tBigGangFight_Mail["Mail"]["Action"][9] = 7383055
	
	
	
--奖励表
local tBigGangFight_Awarditem = {}
	-- 至尊帮主宝箱  3310601   可选
	-- 7天时效翅膀：Supreme
	tBigGangFight_Awarditem[6011] = {}
	tBigGangFight_Awarditem[6011]["DeleteItem"] = {}
	tBigGangFight_Awarditem[6011]["DeleteItem"][1] = {}
	tBigGangFight_Awarditem[6011]["DeleteItem"][1]["Id"] = 3310601
	tBigGangFight_Awarditem[6011]["RewardWing"] = {}
	tBigGangFight_Awarditem[6011]["RewardWing"]["TitleType"] = 6011
	tBigGangFight_Awarditem[6011]["RewardWing"]["TitleId"] = 6011
	tBigGangFight_Awarditem[6011]["RewardWing"]["SaveTime"] = 10080
	tBigGangFight_Awarditem[6011]["LogId"] = 12001160
	tBigGangFight_Awarditem[6011]["RewardEffect"] = {}
	tBigGangFight_Awarditem[6011]["RewardEffect"]["SzObj"] = "self"
	tBigGangFight_Awarditem[6011]["RewardEffect"]["Effect"] = "angelwing"	
	
	-- 7天时效AstralPhoenix
	tBigGangFight_Awarditem[200575] = {}
	tBigGangFight_Awarditem[200575]["DeleteItem"] = {}
	tBigGangFight_Awarditem[200575]["DeleteItem"][1] = {}
	tBigGangFight_Awarditem[200575]["DeleteItem"][1]["Id"] = 3310601
	tBigGangFight_Awarditem[200575]["RewardItem"] = {}
	tBigGangFight_Awarditem[200575]["RewardItem"][1] = {}
	tBigGangFight_Awarditem[200575]["RewardItem"][1]["Id"] = 200575
	tBigGangFight_Awarditem[200575]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1"
	tBigGangFight_Awarditem[200575]["LogId"] = 12001160
	tBigGangFight_Awarditem[200575]["RewardEffect"] = {}
	tBigGangFight_Awarditem[200575]["RewardEffect"]["SzObj"] = "self"
	tBigGangFight_Awarditem[200575]["RewardEffect"]["Effect"] = "angelwing"	
	
	-- 3310602,'荒原精英宝箱 可选
	-- 7天时效赠品RadiantLotus
	tBigGangFight_Awarditem[200573] = {}
	tBigGangFight_Awarditem[200573]["DeleteItem"] = {}
	tBigGangFight_Awarditem[200573]["DeleteItem"][1] = {}
	tBigGangFight_Awarditem[200573]["DeleteItem"][1]["Id"] = 3310602
	tBigGangFight_Awarditem[200573]["RewardItem"] = {}
	tBigGangFight_Awarditem[200573]["RewardItem"][1] = {}
	tBigGangFight_Awarditem[200573]["RewardItem"][1]["Id"] = 200573
	tBigGangFight_Awarditem[200573]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1"
	tBigGangFight_Awarditem[200573]["LogId"] = 12001160
	tBigGangFight_Awarditem[200573]["RewardEffect"] = {}
	tBigGangFight_Awarditem[200573]["RewardEffect"]["SzObj"] = "self"
	tBigGangFight_Awarditem[200573]["RewardEffect"]["Effect"] = "angelwing"	
	
	-- 5000气力值&300赠点
	tBigGangFight_Awarditem[1] = {}
	tBigGangFight_Awarditem[1]["DeleteItem"] = {}
	tBigGangFight_Awarditem[1]["DeleteItem"][1] = {}
	tBigGangFight_Awarditem[1]["DeleteItem"][1]["Id"] = 3310602
	tBigGangFight_Awarditem[1]["RewardStrengthValue"] = {}
	tBigGangFight_Awarditem[1]["RewardStrengthValue"]["Value"] = 5000
	tBigGangFight_Awarditem[1]["RewardEMoneyMono"] = {}
	tBigGangFight_Awarditem[1]["RewardEMoneyMono"]["Value"] = 300
	tBigGangFight_Awarditem[1]["LogId"] = 12001160
	tBigGangFight_Awarditem[1]["RewardEffect"] = {}
	tBigGangFight_Awarditem[1]["RewardEffect"]["SzObj"] = "self"
	tBigGangFight_Awarditem[1]["RewardEffect"]["Effect"] = "angelwing"	
	
	-- 3310603,'荒原奋战礼包'
	tBigGangFight_Awarditem[3310603] = {}
	tBigGangFight_Awarditem[3310603]["DeleteItem"] = {}
	tBigGangFight_Awarditem[3310603]["DeleteItem"][1] = {}
	tBigGangFight_Awarditem[3310603]["DeleteItem"][1]["Id"] = 3310603
	tBigGangFight_Awarditem[3310603]["RewardStrengthValue"] = {}
	tBigGangFight_Awarditem[3310603]["RewardStrengthValue"]["Value"] = 1500
	tBigGangFight_Awarditem[3310603]["LogId"] = 12001160
	tBigGangFight_Awarditem[3310603]["RewardEffect"] = {}
	tBigGangFight_Awarditem[3310603]["RewardEffect"]["SzObj"] = "self"
	tBigGangFight_Awarditem[3310603]["RewardEffect"]["Effect"] = "angelwing"	
	
	-- 3310604,'+1赤炼石荒原包',
	tBigGangFight_Awarditem[3310604] = {}
	tBigGangFight_Awarditem[3310604]["DeleteItem"] = {}
	tBigGangFight_Awarditem[3310604]["DeleteItem"][1] = {}
	tBigGangFight_Awarditem[3310604]["DeleteItem"][1]["Id"] = 3310604
	tBigGangFight_Awarditem[3310604]["RewardItem"] = {}
	tBigGangFight_Awarditem[3310604]["RewardItem"][1] = {}
	tBigGangFight_Awarditem[3310604]["RewardItem"][1]["Id"] = 730001
	tBigGangFight_Awarditem[3310604]["RewardItem"][1]["Attr"] = "0 2 3 10080 1"
	tBigGangFight_Awarditem[3310604]["LogId"] = 12001160
	tBigGangFight_Awarditem[3310604]["RewardEffect"] = {}
	tBigGangFight_Awarditem[3310604]["RewardEffect"]["SzObj"] = "self"
	tBigGangFight_Awarditem[3310604]["RewardEffect"]["Effect"] = "angelwing"	
	
	-- 3310605,'+2赤炼石荒原包',
	tBigGangFight_Awarditem[3310605] = {}
	tBigGangFight_Awarditem[3310605]["DeleteItem"] = {}
	tBigGangFight_Awarditem[3310605]["DeleteItem"][1] = {}
	tBigGangFight_Awarditem[3310605]["DeleteItem"][1]["Id"] = 3310605
	tBigGangFight_Awarditem[3310605]["RewardItem"] = {}
	tBigGangFight_Awarditem[3310605]["RewardItem"][1] = {}
	tBigGangFight_Awarditem[3310605]["RewardItem"][1]["Id"] = 730002
	tBigGangFight_Awarditem[3310605]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
	tBigGangFight_Awarditem[3310605]["LogId"] = 12001160
	tBigGangFight_Awarditem[3310605]["RewardEffect"] = {}
	tBigGangFight_Awarditem[3310605]["RewardEffect"]["SzObj"] = "self"
	tBigGangFight_Awarditem[3310605]["RewardEffect"]["Effect"] = "angelwing"	
	
	-- 3310606,'通神丹荒原包',11
	tBigGangFight_Awarditem[3310606] = {}
	tBigGangFight_Awarditem[3310606]["DeleteItem"] = {}
	tBigGangFight_Awarditem[3310606]["DeleteItem"][1] = {}
	tBigGangFight_Awarditem[3310606]["DeleteItem"][1]["Id"] = 3310606
	tBigGangFight_Awarditem[3310606]["RewardItem"] = {}
	tBigGangFight_Awarditem[3310606]["RewardItem"][1] = {}
	tBigGangFight_Awarditem[3310606]["RewardItem"][1]["Id"] = 3003125
	tBigGangFight_Awarditem[3310606]["RewardItem"][1]["Attr"] = "0 3 3"
	tBigGangFight_Awarditem[3310606]["LogId"] = 12001160
	tBigGangFight_Awarditem[3310606]["RewardEffect"] = {}
	tBigGangFight_Awarditem[3310606]["RewardEffect"]["SzObj"] = "self"
	tBigGangFight_Awarditem[3310606]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 3310607,'究极通神丹荒原包
	tBigGangFight_Awarditem[3310607] = {}
	tBigGangFight_Awarditem[3310607]["DeleteItem"] = {}
	tBigGangFight_Awarditem[3310607]["DeleteItem"][1] = {}
	tBigGangFight_Awarditem[3310607]["DeleteItem"][1]["Id"] = 3310607
	tBigGangFight_Awarditem[3310607]["RewardItem"] = {}
	tBigGangFight_Awarditem[3310607]["RewardItem"][1] = {}
	tBigGangFight_Awarditem[3310607]["RewardItem"][1]["Id"] = 3003126
	tBigGangFight_Awarditem[3310607]["RewardItem"][1]["Attr"] = "0 1 3"
	tBigGangFight_Awarditem[3310607]["LogId"] = 12001160
	tBigGangFight_Awarditem[3310607]["RewardEffect"] = {}
	tBigGangFight_Awarditem[3310607]["RewardEffect"]["SzObj"] = "self"
	tBigGangFight_Awarditem[3310607]["RewardEffect"]["Effect"] = "angelwing"
	
	--每周活动结束发奖
	tBigGangFight_Awarditem["OverReward"] = {}
	tBigGangFight_Awarditem["OverReward"]["LogId"] = 12001160
	tBigGangFight_Awarditem["OverReward"]["RewardEMoney"] = {}
	tBigGangFight_Awarditem["OverReward"]["RewardEMoney"]["Value"] = 0
	tBigGangFight_Awarditem["OverReward"]["RewardEffect"]={}
	tBigGangFight_Awarditem["OverReward"]["RewardEffect"]["Effect"] = "angelwing"
	
--掩码表配置
local tBigGangFight_Stc = {}
	--积分掩码
	tBigGangFight_Stc["ActivePoint"] = {}
	tBigGangFight_Stc["ActivePoint"]["EventType"] = 182
	tBigGangFight_Stc["ActivePoint"]["DataType"] = 78
	--击杀魔卒1分
	tBigGangFight_Stc["ActivePoint"]["KillMonster"] = 1
	--锁魂5分
	tBigGangFight_Stc["ActivePoint"]["LockGhost"] = 1
	--击杀敌帮5分
	tBigGangFight_Stc["ActivePoint"]["KillAgainst"] = 2
	--复活友帮5分
	tBigGangFight_Stc["ActivePoint"]["SkillRelive"] = 1
	--击杀BOSS 100分
	tBigGangFight_Stc["ActivePoint"]["KillBoss"] = 30
	--击杀BOSS的该侠士所在帮派所有参与击败凤王的成员，均可获30点积分。
	tBigGangFight_Stc["ActivePoint"]["HelpKillBoss"] = 1
	--焚烧了1具魔卒尸体 +3
	tBigGangFight_Stc["ActivePoint"]["BurnMonster"] = 1
	
	--记录玩家帮派ID 
	tBigGangFight_Stc["GuildId"] = {}
	tBigGangFight_Stc["GuildId"]["EventType"] = 182
	tBigGangFight_Stc["GuildId"]["DataType"] = 79
	
	--记录玩家击杀其他帮派人数 
	tBigGangFight_Stc["KillAgainst"] = {}
	tBigGangFight_Stc["KillAgainst"]["EventType"] = 182
	tBigGangFight_Stc["KillAgainst"]["DataType"] = 82
	
local tBigGangFight_Effect = {}
	tBigGangFight_Effect[1] = {}
	tBigGangFight_Effect[1][1] = "self"
	tBigGangFight_Effect[1][2] = "BodyDisapear"
	
--log表
local tBigGangFight_Log = {}	

	tBigGangFight_Log["DelItem"] = "0,0,%d,1,12001160,2,0,0"	
	tBigGangFight_Log["DelAllItem"] = "0,0,%d,%d,12001160,2,0,0"	
	-- 参与人数
	tBigGangFight_Log["Enter"] = "350	22091	0	0	1	"
	-- 帮派第1名获得天石 350 22092
	-- 帮派第2名获得天石：350 22093
	-- 帮派第3名获得天石：350 22094
	
	tBigGangFight_Log["First"] = "350	22092	%d	%d	1	"
	tBigGangFight_Log["Second"] = "350	22093	%d	%d	1	"
	tBigGangFight_Log["Third"] = "350	22094	%d	%d	1	"
	-- 全服获得5000天石：350 22095
	-- 全服获得7000天石：350 22096
	-- 全服获得10000天石：350 22097
	tBigGangFight_Log["AllEmoney"] = {}
	tBigGangFight_Log["AllEmoney"][1] = "350	22095	0	0	1	"
	tBigGangFight_Log["AllEmoney"][2] = "350	22096	0	0	1	"
	tBigGangFight_Log["AllEmoney"][3] = "350	22097	0	0	1	"

	
	
	
--临时表存储玩家帮派积分数据 
local tBigGangFight_GuildRank = {}

--邮件发奖存储玩家积分>50的信息
local tBigGangFight_KeepData = {}

--存放击杀boss玩家信息
local tBigGangFight_KillBossUser = {}
--记录击杀魔卒个数
local nIndex = 0

--排行榜
	tRankingFunc_Info[23169] = {}
	tRankingFunc_Info[23169]["ActiveTime"] = tBigGangFight_Data["ActivityTime"]
	tRankingFunc_Info[23169]["DayTime"] = {}
	tRankingFunc_Info[23169]["DayTime"][1] = "00:00 23:59"
	tRankingFunc_Info[23169]["Global"] = {52980,52981}
	tRankingFunc_Info[23169]["BeforeGlobal"] = {52982,52983}
	tRankingFunc_Info[23169]["RankNum"] = 5
	tRankingFunc_Info[23169]["RankMode"] = 3

	
---------------------------------逻辑部分--------------------------------------------- 
--离开荒原
function BigGangFight_LeaveActMap()
	--传送到指定区域
	local nMapId = tBigGangFight_Data["City"]
	local nPosX = tBigGangFight_Data["CityPos"]["PosX"]
	local nPosY = tBigGangFight_Data["CityPos"]["PosY"]
	User_ChgMap(nMapId,nPosX,nPosY,0)
	
end

--传送致活动地图  nIndex 传送坐标索引
function BigGangFight_TransActiveMap(nNpcId,nIndex)
	local nUserId = Get_UserId()
	--时间判断
	if not BigGangFight_JudgeActivityTime() then
		return 
	end
	--判断玩家等级
	if not BigGangFight_JudgeUserLevel() then
		return
	end
	--判断玩家是否有帮派
	local nGuildId = Get_UserGuildId()
	if nGuildId == 0 then
		return
	end
	--判断玩家是否和NPC在一个地图(防切屏)
	if Get_NpcMapID(nNpcId) ~= Get_UserMapId() then

		return
	end

	BigGangFight_StcInterval()

	--传送到指定区域
	local nMapId = tBigGangFight_Data["MapId"]
	
	-- 随机一个区域
	local tNewRandom = tBigGangFight_Data["TransPos"]
	local nRandomIndex = math.random(1,#tNewRandom)
	local tRandom = tBigGangFight_Data["TransPos"][nRandomIndex]
	
	local nPosX = tRandom[1]
	local nPosY = tRandom[2]
	User_ChgMap(nMapId,nPosX,nPosY,0)
	
	Sys_MsgBox(tBigGangFight_Text["Sys"]["Enter"])
	--记录参与人数的emoneylog
	Sys_SaveEmoneyBuy(tBigGangFight_Log["Enter"],nUserId)
	
	if Task_ChkStcValue(tBigGangFight_Stc["GuildId"]["EventType"],tBigGangFight_Stc["GuildId"]["DataType"],"<=",0) then
		--记录玩家的帮派ID
		Task_SetStatistic(tBigGangFight_Stc["GuildId"]["EventType"],tBigGangFight_Stc["GuildId"]["DataType"],nGuildId,1)
		Task_SetStcTimestamp(tBigGangFight_Stc["GuildId"]["EventType"],tBigGangFight_Stc["GuildId"]["DataType"],0)
	end
	
end

--获取天石奖池级别
function BigGangFight_GetEmoneyNum()
	local nFlag = 1
	local nData0 = BigGangFight_GetServerPoint()
	if nData0 <= tBigGangFight_Data["Score"][1] then
		nFlag = 1
	elseif nData0 > tBigGangFight_Data["Score"][1] and nData0 <= tBigGangFight_Data["Score"][2] then
		nFlag = 2
	else
		nFlag = 3
	end
	return nFlag
end


--判断玩家等级
function BigGangFight_JudgeUserLevel()
	local nLevel = tBigGangFight_Data["Level"]
	local nMete = tBigGangFight_Data["Metempsychosis"]
	--判断玩家等级
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMete) then
		return false
	end
	return true
end

--通用时间判断
function BigGangFight_JudgeActivityTime()
	--判断活动期间
	if not Sys_ChkFullTime(tBigGangFight_Data["ActivityTime"]) then
		return false
	end
	--判断活动是否开启
	if not Sys_ChkWeedTime(tBigGangFight_Data["OpenTime"]) then
		return false
	end
	return true
end

--判断是否隔7天
function BigGangFight_StcInterval()

	local nPointEvent = tBigGangFight_Stc["ActivePoint"]["EventType"]
	local nPointData = tBigGangFight_Stc["ActivePoint"]["DataType"]
	
	local nKillEvent = tBigGangFight_Stc["KillAgainst"]["EventType"]
	local nKillData = tBigGangFight_Stc["KillAgainst"]["DataType"]

	--领奖掩码
	if Task_StcInterval(tBigGangFight_Stc["GuildId"]["EventType"],tBigGangFight_Stc["GuildId"]["DataType"],7,4) then

		--重置积分
		Task_SetStatistic(nPointEvent,nPointData,0,1)
		Task_SetStcTimestamp(nPointEvent,nPointData,0)
		
		--重置击杀敌帮人数掩码
		Task_SetStatistic(nKillEvent,nKillData,0,1)
		Task_SetStcTimestamp(nKillEvent,nKillData,0)

		--重置帮派记录
		Task_SetStatistic(tBigGangFight_Stc["GuildId"]["EventType"],tBigGangFight_Stc["GuildId"]["DataType"],0,1)
	end

end

--击杀魔卒1分
function BigGangFight_KillMonster()
	local nEvent = tBigGangFight_Stc["ActivePoint"]["EventType"]
	local nData = tBigGangFight_Stc["ActivePoint"]["DataType"]
	local nUserId = Get_UserId()
	local sUserName = Get_UserName()
	--时间判断
	if not BigGangFight_JudgeActivityTime() then
		return 
	end
	
	--判断是否在地图内
	local nUserMapId = Get_UserMapId(nUserId)
	if nUserMapId ~= tBigGangFight_Data["MapId"] then
		return
	end
	--判断玩家是否有帮派
	local nGuildId = Get_UserGuildId(nUserId)
	if nGuildId == 0 then
		return
	end
	local sGuildName = Get_UserSynDicateName(nGuildId,nUserId)
	nIndex = nIndex + 1
	if nIndex == 10 then
		local nScore = BigGangFight_GetUserPoint(nUserId)
		User_TalkChannel2005(string.format(tBigGangFight_Text["Sys"]["LimtKill"],nScore))
		nIndex = 0
	end
	if nIndex > 10 then
		nIndex = 0
	end
	
	local nOldUserPoint = Get_UserStatisticValue(nEvent,nData,nUserId)
	
	--记录积分超过50分存入临时表
	if nOldUserPoint > 50 then
		BigGangFight_KeepData(nUserId,nOldUserPoint,nGuildId)
	end
	
	--积分+1
	Task_AddStatistic(nEvent,nData,tBigGangFight_Stc["ActivePoint"]["KillMonster"],1,nUserId)
	Task_SetStcTimestamp(nEvent,nData,0,nUserId)
	User_TalkChannel2005(tBigGangFight_Text["Sys"]["GetPoint1"],nUserId)
	--记录到全服积分
	BigGangFight_CaculateFullGlobal(tBigGangFight_Stc["ActivePoint"]["KillMonster"])
	--重置排行榜
	local nUserPoint = Get_UserStatisticValue(nEvent,nData,nUserId)
	if nUserPoint > 50 then
		BigGangFight_KeepData(nUserId,nUserPoint,nGuildId)
	end
	
	local nIndexBefore = BigGangFight_CheckUserIndex(nUserId)
	local nPersonIndexB = BigGangFight_CheckUserPersonIndex(nUserId)
	BigGangFight_ResetRank(nUserId,tBigGangFight_Stc["ActivePoint"]["KillMonster"],nGuildId)
	--个人榜
	RankingFunc_SetInfo(23169,nUserPoint,nUserId)
	RankingFunc_RestSortRankingList(23169)
	
	local nIndexAfter = BigGangFight_CheckUserIndex(nUserId)
	local nPersonIndexA = BigGangFight_CheckUserPersonIndex(nUserId)
	BigGangFight_ConparePesonIndex(nPersonIndexB,nPersonIndexA,sUserName)
	BigGangFight_ConpareIndex(nIndexBefore,nIndexAfter,sGuildName)
	
	
	--更新个人排行榜中帮派id
	BigGangFight_SetUserGuild(nUserId)
	
end

--杀死其他帮派+5
function BigGangFight_KillAgainst(nUserId,nTargetId)
	local nEvent = tBigGangFight_Stc["ActivePoint"]["EventType"]
	local nData = tBigGangFight_Stc["ActivePoint"]["DataType"]

	local nKillAgainstEvent = tBigGangFight_Stc["KillAgainst"]["EventType"]
	local nKillAgainstData = tBigGangFight_Stc["KillAgainst"]["DataType"] 
	
	--时间判断
	if not BigGangFight_JudgeActivityTime() then
		return 
	end
	--判断是否在地图内
	local nUserMapId = Get_UserMapId(nUserId)
	if nUserMapId ~= tBigGangFight_Data["MapId"] then
		return
	end
	
	--判断玩家是否有帮派
	local nGangId = Get_UserGuildId(nUserId)
	
	if nGangId == 0 then
		return
	end
	local sGuildName = Get_UserSynDicateName(nGangId,nUserId) 
	--获取被杀玩家的帮派
	local nTargetGuildId = Get_UserGuildId(nTargetId)
	if nTargetGuildId == 0 then
		return
	end
	
	if nGangId == nTargetGuildId then
		return
	end
	local sUserName = Get_UserName(nUserId)
	local nKillAgainst = Get_UserStatisticValue(nKillAgainstEvent,nKillAgainstData,nUserId)
	--超过50个人 个人击杀积分上限100分 不记录
	if nKillAgainst > 49 then 
		-- if nKillAgainst == 50 then 
			-- Sys_MsgBox(tBigGangFight_Text["Sys"]["KillLimit"],nUserId)
		-- end
		return
	end 
	Task_AddStatistic(nKillAgainstEvent,nKillAgainstData,1,1,nUserId)
	Task_SetStcTimestamp(nKillAgainstEvent,nKillAgainstData,0,nUserId)
	local nNowKillAgainst = Get_UserStatisticValue(nKillAgainstEvent,nKillAgainstData,nUserId)
	
	Sys_SystemBroadcast(string.format(tBigGangFight_Text["Broadcast"]["KillAgainst"],sUserName,nNowKillAgainst))
	local nOldUserPoint = Get_UserStatisticValue(nEvent,nData,nUserId)
	--记录积分超过50分存入临时表
	if nOldUserPoint > 50 then
		BigGangFight_KeepData(nUserId,nOldUserPoint,nGangId)
	end
	
	--积分+5
	Task_AddStatistic(nEvent,nData,tBigGangFight_Stc["ActivePoint"]["KillAgainst"],1,nUserId)
	Task_SetStcTimestamp(nEvent,nData,0,nUserId)
	User_TalkChannel2005(tBigGangFight_Text["Sys"]["GetPoint"],nUserId)
	--记录到全服积分
	BigGangFight_CaculateFullGlobal(tBigGangFight_Stc["ActivePoint"]["KillAgainst"])
	--重置排行榜
	local nUserPoint = Get_UserStatisticValue(nEvent,nData,nUserId)
	if nUserPoint > 50 then
		BigGangFight_KeepData(nUserId,nUserPoint,nGangId)
	end
	local nIndexBefore = BigGangFight_CheckUserIndex(nUserId)
	BigGangFight_ResetRank(nUserId,tBigGangFight_Stc["ActivePoint"]["KillAgainst"],nGangId)
	local nIndexAfter = BigGangFight_CheckUserIndex(nUserId)
	local nPersonIndexB = BigGangFight_CheckUserPersonIndex(nUserId)
	--个人榜
	RankingFunc_SetInfo(23169,nUserPoint,nUserId)
	RankingFunc_RestSortRankingList(23169)
	
	local nPersonIndexA = BigGangFight_CheckUserPersonIndex(nUserId)
	BigGangFight_ConparePesonIndex(nPersonIndexB,nPersonIndexA,sUserName)
	BigGangFight_ConpareIndex(nIndexBefore,nIndexAfter,sGuildName)
	
	--更新个人排行榜中帮派id
	BigGangFight_SetUserGuild(nUserId)
	
end

--锁魂玩家+5
function BigGangFight_KeepGhostPlayer(nUserId,nLockUserId)

	local nEvent = tBigGangFight_Stc["ActivePoint"]["EventType"]
	local nData = tBigGangFight_Stc["ActivePoint"]["DataType"]
	local sUserName = Get_UserName(nUserId)
	--时间判断
	if not BigGangFight_JudgeActivityTime() then
		return 
	end
	--判断是否在地图内
	local nUserMapId = Get_UserMapId(nUserId)
	if nUserMapId ~= tBigGangFight_Data["MapId"] then
		return
	end
	
	--判断玩家是否有帮派
	local nGangId = Get_UserGuildId(nUserId)
	if nGangId == 0 then
		return
	end
	local sGuildName = Get_UserSynDicateName(nGangId,nUserId)
	--被锁魂玩家的帮派
	local nTargetGuildId = Get_UserGuildId(nLockUserId)
	if nTargetGuildId == 0 then
		return
	end
	
	if nGangId == nTargetGuildId then
		return
	end
	
	local nOldUserPoint = Get_UserStatisticValue(nEvent,nData,nUserId)
	--记录积分超过50分存入临时表
	if nOldUserPoint > 50 then
		BigGangFight_KeepData(nUserId,nOldUserPoint,nGangId)
	end
	
	--锁魂+5
	Task_AddStatistic(nEvent,nData,tBigGangFight_Stc["ActivePoint"]["LockGhost"],1,nUserId)
	Task_SetStcTimestamp(nEvent,nData,0,nUserId)
	-- User_TalkChannel2005(tBigGangFight_Text["Sys"]["GetPoint1"],nUserId)
	
	--记录到全服积分
	BigGangFight_CaculateFullGlobal(tBigGangFight_Stc["ActivePoint"]["LockGhost"])
	--重置排行榜
	local nUserPoint = Get_UserStatisticValue(nEvent,nData,nUserId)
	if nUserPoint > 50 then
		BigGangFight_KeepData(nUserId,nUserPoint,nGangId)
	end
	local nIndexBefore = BigGangFight_CheckUserIndex(nUserId)
	BigGangFight_ResetRank(nUserId,tBigGangFight_Stc["ActivePoint"]["LockGhost"],nGangId)
	local nIndexAfter = BigGangFight_CheckUserIndex(nUserId)
	local nPersonIndexB = BigGangFight_CheckUserPersonIndex(nUserId)
	--个人榜
	RankingFunc_SetInfo(23169,nUserPoint,nUserId)
	RankingFunc_RestSortRankingList(23169)
	local nPersonIndexA = BigGangFight_CheckUserPersonIndex(nUserId)
	BigGangFight_ConparePesonIndex(nPersonIndexB,nPersonIndexA,sUserName)
	BigGangFight_ConpareIndex(nIndexBefore,nIndexAfter,sGuildName)
	
	--更新个人排行榜中帮派id
	BigGangFight_SetUserGuild(nUserId)
	
end

--复活同帮人员+5
function BigGangFight_RevivePlayer(nUserId,nGangsUserId)
	local nEvent = tBigGangFight_Stc["ActivePoint"]["EventType"]
	local nData = tBigGangFight_Stc["ActivePoint"]["DataType"]
	local sUserName = Get_UserName(nUserId)
	--时间判断
	if not BigGangFight_JudgeActivityTime() then
		return 
	end
	--判断是否在地图内
	local nUserMapId = Get_UserMapId(nUserId)
	if nUserMapId ~= tBigGangFight_Data["MapId"] then
		return
	end

	--判断玩家是否有帮派
	local nGangId = Get_UserGuildId(nUserId)
	if nGangId == 0 then
		return
	end
	local sGuildName = Get_UserSynDicateName(nGangId,nUserId)
	--获取被杀玩家的帮派
	local nUserGuildId = Get_UserGuildId(nGangsUserId)
	--判断是否是同帮
	if nUserGuildId ~= nGangId then
		return
	end
	
	local nOldUserPoint = Get_UserStatisticValue(nEvent,nData,nUserId)
	
	--记录积分超过50分存入临时表
	if nOldUserPoint > 50 then
		BigGangFight_KeepData(nUserId,nOldUserPoint,nGangId)
	end
	
	--复活同帮+5分
	Task_AddStatistic(nEvent,nData,tBigGangFight_Stc["ActivePoint"]["SkillRelive"],1,nUserId)
	Task_SetStcTimestamp(nEvent,nData,0,nUserId)
	User_TalkChannel2005(tBigGangFight_Text["Sys"]["GetPoint1"],nUserId)
	
	--记录到全服积分
	BigGangFight_CaculateFullGlobal(tBigGangFight_Stc["ActivePoint"]["SkillRelive"])
	--重置排行榜
	local nUserPoint = Get_UserStatisticValue(nEvent,nData,nUserId)
	if nUserPoint > 50 then
		BigGangFight_KeepData(nUserId,nUserPoint,nGangId)
	end
	local nIndexBefore = BigGangFight_CheckUserIndex(nUserId)
	BigGangFight_ResetRank(nUserId,tBigGangFight_Stc["ActivePoint"]["SkillRelive"],nGangId)
	local nIndexAfter = BigGangFight_CheckUserIndex(nUserId)
	
	local nPersonIndexB = BigGangFight_CheckUserPersonIndex(nUserId)
	--个人榜
	RankingFunc_SetInfo(23169,nUserPoint,nUserId)
	RankingFunc_RestSortRankingList(23169)
	
	local nPersonIndexA = BigGangFight_CheckUserPersonIndex(nUserId)
	BigGangFight_ConparePesonIndex(nPersonIndexB,nPersonIndexA,sUserName)
	BigGangFight_ConpareIndex(nIndexBefore,nIndexAfter,sGuildName)

	--更新个人排行榜中帮派id
	BigGangFight_SetUserGuild(nUserId)
	
	
end

--杀死BOSS
function BigGangFight_KillBoss(nMonsterId)

	local nUserId = Get_UserId()
	local sUserName = Get_UserName()
	local nEvent = tBigGangFight_Stc["ActivePoint"]["EventType"]
	local nData = tBigGangFight_Stc["ActivePoint"]["DataType"]
	
	local nMapId = tBigGangFight_Data["MapId"]
	local nPosX = Get_MonsterPosX()
	local nPosY = Get_MonsterPosY()
	Monster_Death(nMonsterId,nMapId)
	
	--时间判断
	if not BigGangFight_JudgeActivityTime() then
		return 
	end
	
	--判断是否在地图内
	local nUserMapId = Get_UserMapId()
	if nUserMapId ~= tBigGangFight_Data["MapId"] then
		return
	end
	--判断玩家是否有帮派
	local nGangId = Get_UserGuildId(nUserId)
	if nGangId == 0 then
		return
	end

	local sGuildName = Get_UserSynDicateName(nGangId,nUserId)
	
	local nOldUserPoint = Get_UserStatisticValue(nEvent,nData,nUserId)
	--记录积分超过50分存入临时表
	if nOldUserPoint > 50 then
		BigGangFight_KeepData(nUserId,nOldUserPoint,nGangId)
	end
	
	Task_AddStatistic(nEvent,nData,tBigGangFight_Stc["ActivePoint"]["KillBoss"],1,nUserId)
	Task_SetStcTimestamp(nEvent,nData,0,nUserId)

	-- 记录到全服积分
	BigGangFight_CaculateFullGlobal(tBigGangFight_Stc["ActivePoint"]["KillBoss"])
	-- 重置排行榜
	local nUserPoint = Get_UserStatisticValue(nEvent,nData,nUserId)
	if nUserPoint > 50 then
		BigGangFight_KeepData(nUserId,nUserPoint,nGangId)
	end
	local nIndexBefore = BigGangFight_CheckUserIndex(nUserId)
	BigGangFight_ResetRank(nUserId,tBigGangFight_Stc["ActivePoint"]["KillBoss"],nGangId)
	local nIndexAfter = BigGangFight_CheckUserIndex(nUserId)
	
	local nPersonIndexB = BigGangFight_CheckUserPersonIndex(nUserId)
	-- 个人榜
	RankingFunc_SetInfo(23169,nUserPoint,nUserId)
	RankingFunc_RestSortRankingList(23169)
	local nPersonIndexA = BigGangFight_CheckUserPersonIndex(nUserId)
	BigGangFight_ConparePesonIndex(nPersonIndexB,nPersonIndexA,sUserName)
	BigGangFight_ConpareIndex(nIndexBefore,nIndexAfter,sGuildName)
	-- 发公告
	local sText = string.format(tBigGangFight_Text["Broadcast"]["BossDeath"],sGuildName,sUserName)
	Sys_SystemBroadcast(sText)
	User_TalkChannel2005(tBigGangFight_Text["Sys"]["BossDeath"])
	--地面刷新奖励
	BigGangFight_MapDropItem(nPosX,nPosY)
	
	tBigGangFight_KillBossUser[nUserId] = nGangId
	
	--更新个人排行榜中帮派id
	BigGangFight_SetUserGuild(nUserId)

end

--杀BOSS刷新地面奖励
function BigGangFight_MapDropItem(nPosX,nPosY)
	local nMapId = tBigGangFight_Data["MapId"]
	local nCellx = tBigGangFight_Data["Cellx"]
	local nCelly = tBigGangFight_Data["Celly"]
	local nExistTime = tBigGangFight_Data["ExistTime"]
	for i,v in pairs(tBigGangFight_Data["BossDrop"]) do
		if Sys_Random(v["ItemChanceNum"],v["ItemChanceSum"]) then
			local nItemId = v["ItemId"]
			local nItemNum = v["Num"]
			Map_DropMultiItems(nMapId, nItemId, nPosX-12, nPosY-10, nCellx, nCelly, nItemNum, nExistTime)
		end
	end
end

--距离判断
function BigGangFight_CheckDistance(nNpcId,nUserId)

	local nMapId = Get_NpcMapID(nNpcId)
	local nNpcX = Get_NpcPositionX(nNpcId)
	local nNpcY = Get_NpcPositionY(nNpcId)
	
--玩家位置
	local nUserX = Get_UserPositionX(nUserId)
	local nUserY = Get_UserPositionY(nUserId)

--最大距离
	local nDis = tBigGangFight_Data["Distance"]
	if math.abs(nUserX - nNpcX) > nDis then
		return false
	elseif math.abs(nUserY - nNpcY) > nDis then
		return false
	end
	return true
end


--焚烧了1具魔卒尸体
function BigGangFight_BurningBody()

	local nUserId = Get_UserId()
	local nNpcId = Get_NpcId()

	--时间判断
	if not BigGangFight_JudgeActivityTime() then

		return 
	end

	--判断是否在地图内
	local nUserMapId = Get_UserMapId(nUserId)
	if nUserMapId ~= tBigGangFight_Data["MapId"] then
		return
	end
	--判断玩家是否有帮派
	local nGuildId = Get_UserGuildId(nUserId)

	if nGuildId == 0 then
		return
	end
	
	if not BigGangFight_CheckDistance(nNpcId,nUserId) then
		Sys_MsgBox(tBigGangFight_Text["Sys"]["Far"])
		return
	end 
	
	-- 焚烧尸体
	local nSecs = tBigGangFight_Data["Second"]
	local nActionId = tBigGangFight_Data["Action"]
	local sContent = tBigGangFight_Text["Digging"]
	User_SetExplore(nSecs,sContent,nActionId,"BigGangFight_Success".."</N>"..nNpcId,"</F>BigGangFight_Fail",nUserId)
	
end

function BigGangFight_Success(nNpcId,nUserId)

	local nEvent = tBigGangFight_Stc["ActivePoint"]["EventType"]
	local nData = tBigGangFight_Stc["ActivePoint"]["DataType"]
	local nUserId = nUserId or Get_UserId() 
	--时间判断
	if not BigGangFight_JudgeActivityTime() then
		return 
	end
	--判断是否在地图内
	local nUserMapId = Get_UserMapId(nUserId)
	if nUserMapId ~= tBigGangFight_Data["MapId"] then
		return
	end
	--判断玩家是否有帮派
	local nGuildId = Get_UserGuildId(nUserId)
	if nGuildId == 0 then
		return
	end
	if not BigGangFight_CheckDistance(nNpcId,nUserId) then
		Sys_MsgBox(tBigGangFight_Text["Sys"]["Far"])
		return
	end 
	
	local sGuildName = Get_UserSynDicateName(nGuildId,nUserId)

	local sUserName = Get_UserName(nUserId)
	local nOldUserPoint = Get_UserStatisticValue(nEvent,nData,nUserId)
	--记录积分超过50分存入临时表
	if nOldUserPoint > 50 then
		BigGangFight_KeepData(nUserId,nOldUserPoint,nGuildId)
	end
	
	--积分+3
	Task_AddStatistic(nEvent,nData,tBigGangFight_Stc["ActivePoint"]["BurnMonster"],1,nUserId)
	Task_SetStcTimestamp(nEvent,nData,0,nUserId)
	User_TalkChannel2005(tBigGangFight_Text["Sys"]["BurnMonster"],nUserId)
	--记录到全服积分
	BigGangFight_CaculateFullGlobal(tBigGangFight_Stc["ActivePoint"]["BurnMonster"])
	--重置排行榜
	local nUserPoint = Get_UserStatisticValue(nEvent,nData,nUserId)
	if nUserPoint > 50 then
		BigGangFight_KeepData(nUserId,nUserPoint,nGuildId)
	end
	local nIndexBefore = BigGangFight_CheckUserIndex(nUserId)
	BigGangFight_ResetRank(nUserId,tBigGangFight_Stc["ActivePoint"]["BurnMonster"],nGuildId)
	local nIndexAfter = BigGangFight_CheckUserIndex(nUserId)
	local nPersonIndexB = BigGangFight_CheckUserPersonIndex(nUserId)
	RankingFunc_SetInfo(23169,nUserPoint,nUserId)
	RankingFunc_RestSortRankingList(23169)
	local nPersonIndexA = BigGangFight_CheckUserPersonIndex(nUserId)
	BigGangFight_ConparePesonIndex(nPersonIndexB,nPersonIndexA,sUserName)
	BigGangFight_ConpareIndex(nIndexBefore,nIndexAfter,sGuildName)
	
	local nMapId = Get_NpcMapID(nNpcId)
	local nNpcPosX = Get_NpcPositionX(nNpcId)
	local nNpcPosY = Get_NpcPositionY(nNpcId)
	--将npc移走
	BigGangFight_MoveNpcRumdom(nNpcId,nUserId)
	Map_Effect(nMapId, nNpcPosX, nNpcPosY, tBigGangFight_Effect[1][2])

	
	--更新个人排行榜中帮派id
	BigGangFight_SetUserGuild(nUserId)

end
-- 失败
function BigGangFight_Fail(nUserId)
	Sys_MsgBox(tBigGangFight_Text["Sys"]["BurnFail"],"NULL","NULL",nUserId)
end
--随机移走npc
function BigGangFight_MoveNpcRumdom(nNpcId,nUserId)

	local nMapId = tBigGangFight_Data["MapId"]
	-- 随机一个区域
	local tNewRandom = tBigGangFight_Data[nMapId]
	local nRandomIndex = math.random(1,#tNewRandom)
	local tRandom = tBigGangFight_Data[nMapId][nRandomIndex]
	
	-- 随机累加xy
	local nBasicPosX,nBasicPosY = tRandom[1],tRandom[2]
	-- local nDisX = tRandom[3]-tRandom[1]
	-- local nDisY = tRandom[4]-tRandom[2]
	local nRandomX = math.random(0,5)
	local nRandomY = math.random(0,5)
	local nNpcPosX,nNpcPosY = nBasicPosX+nRandomX,nBasicPosY+nRandomY
    Npc_MoveNpcPos(nNpcId,nMapId,nNpcPosX,nNpcPosY) 

end


--获取帮派积分 
function BigGangFight_GetGuildScore()
	local nUserId = Get_UserId()
	local nGuildId = Get_UserGuildId(nUserId)
	local score = 0
	for i,v in pairs(tBigGangFight_GuildRank) do
		if v.nGuildId == nGuildId then
			score = v.nScore
		end
	end
	return score
end

--获取玩家当前积分
function BigGangFight_GetUserPoint(nUserId)
	local nUserId = nUserId or Get_UserId()
	local nEvent = tBigGangFight_Stc["ActivePoint"]["EventType"]
	local nData = tBigGangFight_Stc["ActivePoint"]["DataType"]
	local nUserPoint = Get_UserStatisticValue(nEvent,nData,nUserId)
	return nUserPoint
end
--获取全服当前积分
function BigGangFight_GetServerPoint()
	local DynaAllGlobal = tBigGangFight_Data["DynaAllGlobal"]
	local nServerPoint = Get_SysDynaGlobalData(DynaAllGlobal,0)
	return nServerPoint
end
--计算全服积分接口
function BigGangFight_CaculateFullGlobal(nPoint)
	local nPoint = nPoint
	local nFullPoint = BigGangFight_GetServerPoint()
	--计算积分
	nFullPoint = nFullPoint + nPoint
	Sys_SetSynaGlobalData(tBigGangFight_Data["DynaAllGlobal"],0,nFullPoint)
end

-- 对boss有伤害
function BigGangFight_KillBossAward(nServerId,nUserId,nRank,nDmg,nMonsterId)
	-- 判断玩家是否在线
	if not User_IsUserOnline(nUserId) then
		return
	end
	
	User_SetTimer(2,'BigGangFight_Error',0,nUserId)

end

function BigGangFight_Error(nUserId)	

	local nEvent = tBigGangFight_Stc["ActivePoint"]["EventType"]
	local nData = tBigGangFight_Stc["ActivePoint"]["DataType"]
	
	--时间判断
	if not BigGangFight_JudgeActivityTime() then
		return 
	end
	-- 判断玩家是否在线
	if not User_IsUserOnline(nUserId) then
		return
	end
	local nKillBossGid
	local nUserKillId 
	for k,v in pairs(tBigGangFight_KillBossUser) do
	    nKillBossGid = v
		nUserKillId = k
	end
	if nUserId == nUserKillId then
		return
	end

	--判断是否在地图内
	local nUserMapId = Get_UserMapId(nUserId)
	if nUserMapId ~= tBigGangFight_Data["MapId"] then
		return
	end
	--判断玩家是否有帮派
	local nGangId = Get_UserGuildId(nUserId)
	local sGuildName = Get_UserSynDicateName(nGangId,nUserId)
	if nGangId == 0 then
		return
	end
	--不同帮返回
	if nGangId ~= nKillBossGid then
		return
	end	
	local nOldUserPoint = Get_UserStatisticValue(nEvent,nData,nUserId)
	--记录积分超过50分存入临时表
	if nOldUserPoint > 50 then
		BigGangFight_KeepData(nUserId,nOldUserPoint,nGangId)
	end
	Task_AddStatistic(nEvent,nData,tBigGangFight_Stc["ActivePoint"]["HelpKillBoss"],1,nUserId)
	Task_SetStcTimestamp(nEvent,nData,0,nUserId)
	-- 记录到全服积分
	BigGangFight_CaculateFullGlobal(tBigGangFight_Stc["ActivePoint"]["HelpKillBoss"])
	-- 重置排行榜
	local nUserPoint = Get_UserStatisticValue(nEvent,nData,nUserId)
	if nUserPoint > 50 then
		BigGangFight_KeepData(nUserId,nUserPoint,nGangId)
	end
	local nIndexBefore = BigGangFight_CheckUserIndex(nUserId)
	BigGangFight_ResetRank(nUserId,tBigGangFight_Stc["ActivePoint"]["HelpKillBoss"],nGangId)
	local nIndexAfter = BigGangFight_CheckUserIndex(nUserId)
	local nPersonIndexB = BigGangFight_CheckUserPersonIndex(nUserId)
	-- 个人榜
	RankingFunc_SetInfo(23169,nUserPoint,nUserId)
	RankingFunc_RestSortRankingList(23169)
	local sUserName = Get_UserName(nUserId)
	local nPersonIndexA = BigGangFight_CheckUserPersonIndex(nUserId)
	BigGangFight_ConparePesonIndex(nPersonIndexB,nPersonIndexA,sUserName)
	BigGangFight_ConpareIndex(nIndexBefore,nIndexAfter,sGuildName)
	
	local sUserKillName = Get_UserName(nUserKillId)
	User_TalkChannel2005(string.format(tBigGangFight_Text["Sys"]["HelpBossDeath"],sUserKillName),nUserId)
	
	--更新个人排行榜中帮派id
	BigGangFight_SetUserGuild(nUserId)
	
	
end
--广播寻路
function BigGangFight_GotoNpc(nFlag)
	local nUserId = Get_UserId()
	--判断是否在活动期内
	if not Sys_ChkFullTime(tBigGangFight_Data["ActivityTime"]) then
		return
	end
	
	-- 切地图传送
	local nMapId = tBigGangFight_Data["City"]
	local nUserMapId = Get_UserMapId(nUserId)
	local nPosX = tBigGangFight_Data["CityPos"]["PosX"]
	local nPosY = tBigGangFight_Data["CityPos"]["PosY"]
	if nMapId == nUserMapId then
		User_UserRandBoundTrans(nMapId,nPosX,nPosY,10,10,1,nUserId)
	else
		User_TalkChannel2005(tBigGangFight_Text["Sys"]["GotoNpc"])
	end
	
end


--玩家积分超过50分存入临时表 用于邮件发奖
function BigGangFight_KeepData(nPlayerId,nAllData,nPlayerGuild)
	local nPlayerId = nPlayerId or Get_UserId()
	local nGuildId = nPlayerGuild or 0
	
	local nPointEvent = tBigGangFight_Stc["ActivePoint"]["EventType"]
	local nPointData = tBigGangFight_Stc["ActivePoint"]["DataType"]
	
	if tBigGangFight_KeepData[nPlayerId] == nil then
		tBigGangFight_KeepData[nPlayerId] = nGuildId
		-- User_TalkChannel2005("NewID=="..nGuildId)
	else
		
		local nOldGuild = tBigGangFight_KeepData[nPlayerId] 
		-- User_TalkChannel2005("Oldid=="..nOldGuild)
		if nGuildId ~= nOldGuild then 
			tBigGangFight_KeepData[nPlayerId] = nGuildId
			-- User_TalkChannel2005("Changeid=="..nGuildId)
			--重置积分
			Task_SetStatistic(nPointEvent,nPointData,0,1)
			Task_SetStcTimestamp(nPointEvent,nPointData,0)
		end 
	end

end

--更新排行榜
function BigGangFight_ResetRank(nPlayerId,nPlayerData,nPlayerGuild)
	local nUserId = nPlayerId or Get_UserId()
	local nPoint = nPlayerData or 0
	local sUserName = Get_UserName(nUserId)
	local nGuildId = nPlayerGuild or 0
	--帮派帮主id
	local nGangId = Get_SynWangId(nGuildId,nUserId)
	
	local nFlag = false
	-- for j=1,#tRankList do
		-- if tRankList[j]["nGuildId"] == nGuildId then
			-- table.insert(tBigGangFight_GuildRank, tRankList[j])
		-- end
	-- end
	local nLength = #tBigGangFight_GuildRank
	if nLength > 0 then
		
		for i = 1,nLength do
			if tonumber(tBigGangFight_GuildRank[i]["nGuildId"]) == tonumber(nGuildId) then
				tBigGangFight_GuildRank[i]["nScore"] = tBigGangFight_GuildRank[i]["nScore"] + nPoint
				nFlag = true
			
			end
		end
	
		if nFlag == false then
			tBigGangFight_GuildRank[nLength+1] = {}
			tBigGangFight_GuildRank[nLength+1]["nGuildId"] = nGuildId
			tBigGangFight_GuildRank[nLength+1]["nScore"] = nPoint
			tBigGangFight_GuildRank[nLength+1]["nUserId"] = nGangId
			-- tBigGangFight_GuildRank[nLength+1]["UserId"] = nUserId
		end
	else

		tBigGangFight_GuildRank[1] = {}
		tBigGangFight_GuildRank[1]["nGuildId"] = nGuildId
		tBigGangFight_GuildRank[1]["nScore"] = nPoint
		tBigGangFight_GuildRank[1]["nUserId"] = nGangId
		-- tBigGangFight_GuildRank[1]["UserId"] = nUserId
	end
	--排序
	table.sort(tBigGangFight_GuildRank,function(a,b)
		return a.nScore > b.nScore
	end)
	
	local tRankList = {}
	local nIndex = 1
	for j=1,#tBigGangFight_GuildRank do
		if tBigGangFight_GuildRank[j] then
			local sGuildName = Get_UserSynDicateName(tBigGangFight_GuildRank[j]["nGuildId"])
			if sGuildName ~= nil and sGuildName ~= "" then
				tRankList[nIndex] = tBigGangFight_GuildRank[j]
				nIndex = nIndex + 1
			end
		
			if nIndex >= 4 then
				break
			end
		end
	end
	
	--交换完毕后，更新到数据库
	BigGangFight_UpdateGlobalData(tRankList,nUserId)

end
--排行榜数据更新到数据库
function BigGangFight_UpdateGlobalData(tRankList,nPlayerId)

	--动态表ID 和 索引值
	local DynaGuildGlobal = tBigGangFight_Data["DynaGuildGlobal"]
	for i =0 , 2 do 
		Sys_SetSynaGlobalData(DynaGuildGlobal,i,0)
		Sys_SetSynaGlobalTime(DynaGuildGlobal,i,0)
		Sys_SetSynaGlobalDataStr(DynaGuildGlobal,i,"")
	end
	
	for i = 0,tBigGangFight_Data["RankNum"]-1 do
		if i < 5 then
			nPos = i
			BigGangFight_UpdateGlobalDataInfo(nPos,i,DynaGuildGlobal,tRankList,nPlayerId)
		else
			nPos = i - 5
			BigGangFight_UpdateGlobalDataInfo(nPos,i,DynaGuildGlobal,tRankList,nPlayerId)
		end
	end
end
function BigGangFight_UpdateGlobalDataInfo(nPos,i,DynaGuildGlobal,tRankList,nPlayerId)

	if tRankList[i+1] then
		local nGuildId = 0
		if tRankList[i+1]["nGuildId"] ~= nil then
			nGuildId = tRankList[i+1]["nGuildId"]
		end
		Sys_SetSynaGlobalData(DynaGuildGlobal,nPos,nGuildId)
		Sys_SetSynaGlobalTime(DynaGuildGlobal,nPos,tRankList[i+1]["nScore"])
		Sys_SetSynaGlobalDataStr(DynaGuildGlobal,nPos,tostring(tRankList[i+1]["nUserId"]))
	end

end

--从动态表中取出排行榜数据
function BigGangFight_GetRankList()

	local DynaGuildGlobal = tBigGangFight_Data["DynaGuildGlobal"]
	--创建临时排行表，先用表整理，而后再遍历更新到数据库
	local tRankList = {}
	local nPos
	--取出排行榜的数据
	for i = 0,tBigGangFight_Data["RankNum"]-1 do
		tRankList[i] = {}
		if i < 5 then
			nPos = i
			tRankList[i]["nScore"] = Get_SysDynaGlobalData(DynaGuildGlobal,nPos)
			tRankList[i]["nGuildId"] = Get_SysDynaGlobalTime(DynaGuildGlobal,nPos)
		else
			nPos = i - 5
			tRankList[i]["nScore"] = Get_SysDynaGlobalData(DynaGuildGlobal,nPos)
			tRankList[i]["nGuildId"] = Get_SysDynaGlobalTime(DynaGuildGlobal,nPos)
		end
	end
	return tRankList
end

--对白数据填充
function BigGangFight_LinkGossipCheckFunc13(nNpcId,nGossipIndex)

	BigGangFight_SelectRank(nNpcId,nGossipIndex)
	--取积分数据

	return true
end
--获取玩家首次进入地图的帮派
function BigGangFight_GetUserRecordGuild()
	local nEvent = tBigGangFight_Stc["GuildId"]["EventType"]
	local nData = tBigGangFight_Stc["GuildId"]["DataType"]
	return Get_UserStatisticValue(nEvent,nData)
end
--获取帮派排行榜名次
function BigGangFight_CheckUserIndex(nUserId)

	local nDynaGuildGlobal = tBigGangFight_Data["DynaGuildGlobal"]
	local nUserGuildId = Get_UserGuildId(nUserId)
	local nIndex = 0
	for i=0,2 do
		local nGuildId = Get_SysDynaGlobalData(nDynaGuildGlobal,i)
		if nGuildId == nUserGuildId then
			nIndex = i + 1 
		end
	end
	return nIndex
end

--比较名次变化
function BigGangFight_ConpareIndex(nIndexBefore,nIndexAfter,sGuildName)
	if nIndexBefore > nIndexAfter then
		local sText = string.format(tBigGangFight_Text["Sys"]["GuildIdChange"],sGuildName,nIndexAfter)
		Sys_SystemBroadcast(sText)	
	end
end

--获取个人排行榜名次
function BigGangFight_CheckUserPersonIndex(nUserId)
	local tRank = RankingFunc_GetNowData(23169)
	local nIndex = 0
	for i=1,5 do
		if tRank[i] ~= nil then	
			if tRank[i]["UserId"] == nUserId then
				nIndex = i
			end
		end
	end
	return nIndex
end

--比较名次变化
function BigGangFight_ConparePesonIndex(nIndexBefore,nIndexAfter,sUserName)
	if nIndexBefore > nIndexAfter then
		local sText = string.format(tBigGangFight_Text["Sys"]["PersonChange"],sUserName,nIndexAfter)
		Sys_SystemBroadcast(sText)	
	end
end

--查看排行榜
function BigGangFight_SelectRank(nNpcId,nGossipIndex)
	--动态表ID 和 索引值
	local nDynaGuildGlobal  = tBigGangFight_Data["DynaGuildGlobal"] 
	
	--对话索引 Text225 从225开始
	local sText = "Text"
	local nTextIndex = 234
	local nIndex = nGossipIndex
	--临时存储变量
	local nUserId = 0
	local sPoint = 0
	local sDataName = ""
	local nGuildId = 0
	local sGuildName = ""
	local sNum = ""
	local nNum = ""
	local nFlag = BigGangFight_GetEmoneyNum()
	local nSum = tonumber(tBigGangFight_Data["Emoney"][nFlag])
	--取出排行榜的数据，拼接到对话中
	for i = 0,tBigGangFight_Data["RankNum"]-1 do
		--排名表初始化创建
		local sDailogText = sText..nTextIndex
		local sGossipText = sText..nIndex

		if i < 5 then
			nPos = i
			sPoint,nGuildId,sGuildName,nNum = BigGangFight_SelectRankInfo(nPos,nDynaGuildGlobal)

			if nNum == 0 then
				sNum = tBigGangFight_Text["NoneData"]
			else
				
				sNum = math.floor(nSum*tBigGangFight_Text["MoneryPersent"][i])
			end
		else
			nPos = i - 5
			sPoint,nGuildId,sGuildName,nNum = BigGangFight_SelectRankInfo(nPos,nDynaGuildGlobal)
			if nNum == 0 then
				sNum = tBigGangFight_Text["NoneData"]
			else
				
				sNum = math.floor(nSum*tBigGangFight_Text["MoneryPersent"][i])
			end
		end

		tNpcGossip[nNpcId][sGossipText] = Sys_CenterAline(tBigGangFight_Text[nNpcId][sDailogText],5,sPoint,25,sGuildName,50,sNum,78).."\n"
		--对话索引+1
		nTextIndex = nTextIndex + 1
		nIndex = nIndex + 1
	end
end

--帮派积分  data0 帮派id  time0 积分 
function BigGangFight_SelectRankInfo(nPos,nDynaGuildGlobal)

	local nGuildId = 0
	local nScore = 0
	local sGuildName
	local nNum = 0

	nGuildId = Get_SysDynaGlobalData(nDynaGuildGlobal,nPos)
	local nScore = Get_SysDynaGlobalTime(nDynaGuildGlobal,nPos)

	if nScore <= 0 then
		nScore = tBigGangFight_Text["NoneData"]
	end

	if nGuildId <= 0 then
		nGuildId = tBigGangFight_Text["NoneData"]
		sGuildName = tBigGangFight_Text["NoneData"]
		nNum = 0
	else
		sGuildName = Get_UserSynDicateName(nGuildId)
		nNum = 1
	end

	return nScore,nGuildId,sGuildName,nNum

end
--计算获得天石奖励
function BigGangFight_GetEmoneyCount(nFlag,nUserId)
	local nUserId = nUserId or Get_UserId()
	local nEmoney = BigGangFight_GetEmoneyNum()
	if tBigGangFight_Log["AllEmoney"][nEmoney] == nil then 
		Sys_SaveEmoneyBuy(tBigGangFight_Log["AllEmoney"][nEmoney],nUserId)
	end
	
	--总奖池天石数量
	local nMoney = tBigGangFight_Data["Emoney"][nEmoney]
	local nUserScore = BigGangFight_GetUserPoint(nUserId)
	local nGuildScore = 0 
	local nGetEmoney = 0
	local DynaGuildGlobal = tBigGangFight_Data["DynaGuildGlobal"]
	local tRank = {}

	for i=0,2 do
		local nScore = Get_SysDynaGlobalTime(DynaGuildGlobal,i)
		if nScore > 0 then 
		   tRank[i+1] = nScore
		end
	end

	if tRank[1] ~= nil and nFlag == 1 then
		nGuildScore = tRank[1]
		nGetEmoney = nUserScore/nGuildScore*nMoney*0.55
		nGetEmoney = math.floor(nGetEmoney)
		Sys_SaveEmoneyBuy(string.format(tBigGangFight_Log["First"],nGetEmoney,nGetEmoney),nUserId)
	elseif tRank[2] ~= nil and nFlag == 2 then
		nGuildScore = tRank[2]
		nGetEmoney = nUserScore/nGuildScore*nMoney*0.3
		nGetEmoney = math.floor(nGetEmoney)
		Sys_SaveEmoneyBuy(string.format(tBigGangFight_Log["Second"],nGetEmoney,nGetEmoney),nUserId)
	elseif tRank[3] ~= nil and nFlag == 3 then
		nGuildScore = tRank[3]
		nGetEmoney = nUserScore/nGuildScore*nMoney*0.15
		nGetEmoney = math.floor(nGetEmoney)
		Sys_SaveEmoneyBuy(string.format(tBigGangFight_Log["Third"],nGetEmoney,nGetEmoney),nUserId)
	end
	-- nGetEmoney = math.floor(nGetEmoney)
	
	return nGetEmoney
end

--天石奖励
function BigGangFight_GetEmoney(nFlag)
	local nUserId = Get_UserId()

	local nEmoney = BigGangFight_GetEmoneyNum()
	--总奖池天石数量
	local nMoney = tBigGangFight_Data["Emoney"][nEmoney]
	local nUserScore = BigGangFight_GetUserPoint(nUserId)
	local nGuildScore = 0 
	local nGetEmoney = 0
	
	local DynaGuildGlobal = tBigGangFight_Data["DynaGuildGlobal"]
	local tRank = {}
	
	for i=0,2 do
		local nScore = Get_SysDynaGlobalTime(DynaGuildGlobal,i)
		if nScore > 0 then 
		   tRank[i+1] = nScore
		end
	end
	
	if tRank[1] ~= nil and nFlag == 1 then
		nGuildScore = tRank[1]
		nGetEmoney = nUserScore/nGuildScore*nMoney*0.55
		
	elseif tRank[2] ~= nil and nFlag == 2 then
		nGuildScore = tRank[2]
		nGetEmoney = nUserScore/nGuildScore*nMoney*0.3
		
	elseif tRank[3] ~= nil and nFlag == 3 then
		nGuildScore = tRank[3]
		nGetEmoney = nUserScore/nGuildScore*nMoney*0.15
	
	end
	nGetEmoney = math.floor(nGetEmoney)
	
	--防止个人积分大于帮派积分的情况
	if nGuildScore < nUserScore then
		return
	end
	
	local tRewardTable = CommonFunc_Copy(tBigGangFight_Awarditem["OverReward"])
		
	--修改复制表的奖励数
	tRewardTable["RewardEMoney"]["Value"] = nGetEmoney
	RewardTemplate_UseItem(tRewardTable)
	
end

-- function Test_Fun()
	-- tBigGangFight_KeepData = {}	
	-- tBigGangFight_KeepData[1000090] = 11
	-- tBigGangFight_KeepData[1000086] = 22
-- end


--邮件发奖
function BigGangFight_MailReward()
	local DynaGuildGlobal = tBigGangFight_Data["DynaGuildGlobal"]
	local nData5 = Get_SysDynaGlobalData5(tBigGangFight_Data["DynaAllGlobal"])
	if nData5 > 0 then
		return
	end
	
	local tRank = {}

	for i=0,2 do
		local nWinGuildId = Get_SysDynaGlobalData(DynaGuildGlobal,i)
		if nWinGuildId > 0 then 
		   tRank[i+1] = nWinGuildId
		end
	end
	local nGangId = tonumber(Get_SysDynaGlobalDataStr(DynaGuildGlobal,0))

	local sGangName = Get_UserName(nGangId)
	local sGuildName = Get_UserSynDicateName(tRank[1],nGangId)

	if nGangId > 0 then
		Sys_SystemBroadcast(string.format(tBigGangFight_Text["Broadcast"]["WinGuild"],sGangName,sGuildName))
	end
	local nGetEmoney = 0
	for i,v in pairs(tBigGangFight_KeepData) do
		-- User_TalkChannel2005("User==="..i.."gUild=="..v)
		
		-- 第一名
		if tRank[1] ~= nil and v == tRank[1] then
			local nWangId = Get_SynWangId(v,i)
			if i == nWangId then
				--获胜帮派的奖励
				local nExistDay = tBigGangFight_Mail["Mail"]["ExistDay"]	
				local nActionId = tBigGangFight_Mail["Mail"]["Action"][1]		
				local sSender = tBigGangFight_Text["Mail"][1]["Sender"]	
				local sTitle = tBigGangFight_Text["Mail"][1]["Title"]		
				local sContent = tBigGangFight_Text["Mail"][1]["Content"]	
				local nActionId1 = tBigGangFight_Mail["Mail"]["Action"][6]	
				local sSender1 = tBigGangFight_Text["Mail"][6]["Sender"]	
				local sTitle1 = tBigGangFight_Text["Mail"][6]["Title"]	
				nGetEmoney = BigGangFight_GetEmoneyCount(1,i)	
				local sContent1 = string.format(tBigGangFight_Text["Mail"][6]["Content"],nGetEmoney) 	
				Sys_SendMail(i,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent)
				Sys_SendMail(i,0,0,nActionId1,0,nExistDay,sSender1,sTitle1,sContent1)

			else
				--获胜帮派的奖励
				local nExistDay = tBigGangFight_Mail["Mail"]["ExistDay"]
				local nActionId = tBigGangFight_Mail["Mail"]["Action"][2]
				local sSender = tBigGangFight_Text["Mail"][2]["Sender"]
				local sTitle = tBigGangFight_Text["Mail"][2]["Title"]
				local sContent = tBigGangFight_Text["Mail"][2]["Content"]
				nGetEmoney = BigGangFight_GetEmoneyCount(1,i)
				
				local nActionId2 = tBigGangFight_Mail["Mail"]["Action"][7]
				local sSender2 = tBigGangFight_Text["Mail"][6]["Sender"]
				local sTitle2 = tBigGangFight_Text["Mail"][6]["Title"]
				local sContent2 =  string.format(tBigGangFight_Text["Mail"][6]["Content"],nGetEmoney) 
				
				Sys_SendMail(i,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent)
				Sys_SendMail(i,0,0,nActionId2,0,nExistDay,sSender2,sTitle2,sContent2)

			end
		elseif tRank[2] ~= nil and v == tRank[2] then

			-- 第二名
			local nExistDay = tBigGangFight_Mail["Mail"]["ExistDay"]
			local nActionId = tBigGangFight_Mail["Mail"]["Action"][8]
			local sSender = tBigGangFight_Text["Mail"][3]["Sender"]
			local sTitle = tBigGangFight_Text["Mail"][3]["Title"]
			nGetEmoney = BigGangFight_GetEmoneyCount(2,i)
			local sContent = string.format(tBigGangFight_Text["Mail"][3]["Content"],nGetEmoney) 
			
			local nActionId3 = tBigGangFight_Mail["Mail"]["Action"][3]
			local sSender3 = tBigGangFight_Text["Mail"][5]["Sender"]
			local sTitle3 = tBigGangFight_Text["Mail"][5]["Title"]
			local sContent3 = tBigGangFight_Text["Mail"][5]["Content"]
			
			Sys_SendMail(i,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent)
			Sys_SendMail(i,0,0,nActionId3,0,nExistDay,sSender3,sTitle3,sContent3)
	
		elseif tRank[3] ~= nil and v == tRank[3] then

			-- 第三名
			local nExistDay = tBigGangFight_Mail["Mail"]["ExistDay"]
			local nActionId = tBigGangFight_Mail["Mail"]["Action"][9]
			local sSender = tBigGangFight_Text["Mail"][4]["Sender"]
			local sTitle = tBigGangFight_Text["Mail"][4]["Title"]
			nGetEmoney = BigGangFight_GetEmoneyCount(3,i)
			local sContent = string.format(tBigGangFight_Text["Mail"][4]["Content"],nGetEmoney) 
			
			local nActionId3 = tBigGangFight_Mail["Mail"]["Action"][3]
			local sSender3 = tBigGangFight_Text["Mail"][5]["Sender"]
			local sTitle3 = tBigGangFight_Text["Mail"][5]["Title"]
			local sContent3 = tBigGangFight_Text["Mail"][5]["Content"]
			
			Sys_SendMail(i,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent)
			Sys_SendMail(i,0,0,nActionId3,0,nExistDay,sSender3,sTitle3,sContent3)

		else	

			-- 不上榜的玩家 不平分天石奖励 给礼包
			local nExistDay = tBigGangFight_Mail["Mail"]["ExistDay"]
			local nActionId = tBigGangFight_Mail["Mail"]["Action"][5]
			local sSender = tBigGangFight_Text["Mail"][5]["Sender"]
			local sTitle = tBigGangFight_Text["Mail"][5]["Title"]
			local sContent = tBigGangFight_Text["Mail"][5]["Content"]
			Sys_SendMail(i,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent)	
	
		end	
	end	

	Sys_SetSynaGlobalData5(tBigGangFight_Data["DynaAllGlobal"],1)
	
end


--更新帮派id记录
function BigGangFight_SetUserGuild(nUserId)
	
	local nUserId = nUserId or Get_UserId()
	local tRank = RankingFunc_GetNowData(23169)

	-- User_TalkChannel2005("tRank"..tRank[1]["GuildId"])
	-- local GuildName
	local GuildId = 0
	local sGuildName = ""
	local DynaGuildIdGlobal = tBigGangFight_Data["DynaGuildIdGlobal"]

	for i = 1,5 do
		if tRank[i] ~= nil then
			GuildId = tRank[i]["GuildId"]

		if GuildId ~= 0 and GuildId ~= nil  then
			sGuildName = tRank[i]["GuildName"] 
			--sGuildName = Get_UserSynDicateName(GuildId,nUserId)
			Sys_SetSynaGlobalData(DynaGuildIdGlobal,i,tonumber(GuildId))
			Sys_SetSynaGlobalDataStr(DynaGuildIdGlobal,i,tostring(sGuildName))
		end
		end
	end

end

------------------------------------------物品逻辑-------------------------------------------

--过期删除
function BigGangFight_TimeOut(nItemId)
	if not Sys_ChkFullTime(tBigGangFight_Data["ActivityTime"]) then
		if Item_ChkItem(nItemId) then
			if Item_DelItem(nItemId) then
				local sDelItemLog = string.format(tBigGangFight_Log["DelItem"],nItemId)
				Sys_SaveActionFestivalLog(sDelItemLog)
				User_TalkChannel2005(tBigGangFight_Text["Sys"]["OverTime"][nItemId])
			end
		end	
		return 
	end

end

function BigGangFight_ChooseItem(nItemId)
	local nUserId = Get_UserId()
	if not Sys_ChkFullTime(tBigGangFight_Data["ActivityTime"]) then
		if Item_ChkItem(nItemId) then
			if Item_DelItem(nItemId) then
				local sDelItemLog = string.format(tBigGangFight_Log["DelItem"],nItemId)
				Sys_SaveActionFestivalLog(sDelItemLog)
				User_TalkChannel2005(tBigGangFight_Text["Sys"]["OverTime"][nItemId])
			end
		end	
		return 
	end
	
	--判断物品
	if not Item_ChkItem(tBigGangFight_Awarditem[nItemId]["DeleteItem"][1]["Id"]) then
		return	
	end	

	--背包空间判断
	local nSpace = RewardTemplate_GetRewardSpace(tBigGangFight_Awarditem[nItemId],nUserId) 
	if not User_CheckLeftSpace(nSpace-1) then
		User_TalkChannel2005(tBigGangFight_Text["Sys"]["BagFull"])
		return
	end
	if nItemId == 1 then
		-- 赠点天石上限
		local nUserEMoneyMono = Get_UserMonoEMoney()
		if nUserEMoneyMono + tBigGangFight_Awarditem[nItemId]["RewardEMoneyMono"]["Value"]  > G_User_MaxEmoneyMono then
			User_TalkChannel2005(tBigGangFight_Text["Sys"]["LimitMoneyMoMo"])
			return
		end
	end
	
	RewardTemplate_UseItemAndMsg(tBigGangFight_Awarditem[nItemId])

end

----------------------------------时间自检逻辑-----------------------------------
--周五21:29清空动态码
function BigGangFight_ActivityStart()
	--判断是否在活动期内
	if not Sys_ChkFullTime(tBigGangFight_Data["ActivityTime"]) then
		return
	end
	--清空动态码
	BigGangFight_ClearDynaGlobal()
	
end

--清空动态码
function BigGangFight_ClearDynaGlobal()
	
	--全服积分 data0 全服积分  data1 活动次数  data5表示邮件发奖
	Sys_SetSynaGlobalData(tBigGangFight_Data["DynaAllGlobal"],0,0)
	
	Sys_SetSynaGlobalData(tBigGangFight_Data["DynaAllGlobal"],5,0)
	--个人排行榜帮派id
	-- local DynaGuildIdGlobal = tBigGangFight_Data["DynaGuildIdGlobal"]
	--帮派排行榜
	-- local DynaGuildGlobal = tBigGangFight_Data["DynaGuildGlobal"]
	
	--个人排行榜
	for j = 52978,52983 do
		for i = 0 , 5 do 
			Sys_SetSynaGlobalData(j,i,0)
			Sys_SetSynaGlobalDataStr(j,i,"")
			Sys_SetSynaGlobalTime(j,i,0)
		end
	end
	RankingFunc_ClearingData(23169)
	--清除临时表数据
	tBigGangFight_GuildRank = {}
	tBigGangFight_KeepData = {}
	tBigGangFight_KillBossUser = {}
	nIndex = 0
end

--周五每五分钟地图刷boss
function BigGangFight_MapDragonAppear()
	local nMapId = tBigGangFight_Data["MapId"]
	
	-- 随机一个区域
	local tNewRandom = tBigGangFight_Data["MonsterId"]["Born"]
	local nRandomIndex = math.random(1,#tNewRandom)
	local tRandom = tBigGangFight_Data["MonsterId"]["Born"][nRandomIndex]

	local nPosX = tRandom[1]
	local nPosY = tRandom[2]

	local nGenId = tBigGangFight_Data["MonsterId"][2]["GenId"]
	local nMonsterId = tBigGangFight_Data["MonsterId"][2]["Id"]
	local nMaxData = tBigGangFight_Data["MonsterId"][2]["MaxData"]
	
	--判断是否在活动期内
	if not BigGangFight_JudgeActivityTime() then
		return
	end
	
	Monster_DelMonster(nMapId,nMonsterId)
	Sys_SetTempData(1,nMapId,nMonsterId,0)
	local nMonsterNum = Get_SysTempData(1,nMapId,nMonsterId)
	if nMonsterNum >= 1 then
		return
	end
	-- local nNum = Get_SysTempData(1,nMapId,nMonsterId)
	-- if nNum == nMaxData then
		-- return
	-- end
	tBigGangFight_KillBossUser = {}
	Monster_AddAndCount(nMapId,nPosX,nPosY,nGenId,nMonsterId)
	
end

function BigGangFight_MapDragonAppearBrodcast()
	--判断是否在活动期内
	if not Sys_ChkFullTime(tBigGangFight_Data["ActivityTime"]) then
		return
	end
	Sys_SystemBroadcast(tBigGangFight_Text["Broadcast"]["BossBorn"])
end

--周五22:00 清理地图、NPC，清理玩家
function BigGangFight_MapClear()
	local nMapId = tBigGangFight_Data["MapId"]
	local nMonsterId = tBigGangFight_Data["MonsterId"][2]["Id"]
	--判断是否在活动期内
	if not Sys_ChkFullTime(tBigGangFight_Data["ActivityTime"]) then
		return
	end
	--判断活动是否开启 开启时间不清理
	if Sys_ChkWeedTime(tBigGangFight_Data["OpenTime"]) then
		return
	end
	--把玩家传送出去
	Map_UserExeFunc(nMapId,-1,"BigGangFight_AllPlayerChgMap")

	--判断龙是否还在
	local nNum = Get_SysTempData(1,nMapId,nMonsterId)
	--删龙.
	if nNum ~= 0 then
		-- Monster_Death(nMonsterId,nMapId)
		Monster_DelMonster(nMapId,nMonsterId)
		Sys_SetTempData(1,nMapId,nMonsterId,0)
	end
	--活动开启次数+1 data1标记次数
	local nTimes = Get_SysDynaGlobalData(tBigGangFight_Data["DynaAllGlobal"],1)
	Sys_SetSynaGlobalData(tBigGangFight_Data["DynaAllGlobal"],1,nTimes+1)
	--本次活动总积分记录
	-- local nServerPoint = Get_SysDynaGlobalData(tBigGangFight_Data["DynaGlobalData7"],0)
	-- Sys_SetSynaGlobalData(tBigGangFight_Data["DynaGlobalData10"],nTimes,nServerPoint)
	
end

function BigGangFight_AllPlayerChgMap(nUserId)
	local nNowUserId = nUserId or Get_UserId()
	
	--传送回双龙城
	local nMapId = tBigGangFight_Data["City"]
	local nPosX = tBigGangFight_Data["CityPos"]["PosX"]
	local nPosY = tBigGangFight_Data["CityPos"]["PosY"]
	
	User_UserRandBoundTrans(nMapId,nPosX,nPosY,5,5,0,nNowUserId)
	User_TalkChannel2005(tBigGangFight_Text["Sys"]["MoveAll"],nNowUserId)
end

function BigGangFight_ActivityStartBroad()
	--判断是否在活动期内
	if not Sys_ChkFullTime(tBigGangFight_Data["ActivityTime"]) then
		return
	end
	Sys_SystemBroadcast(tBigGangFight_Text["Broadcast"]["ActivityStartBroad"])
	
end
function BigGangFight_ActivityAfterBroad()
	--判断是否在活动期内
	if not Sys_ChkFullTime(tBigGangFight_Data["ActivityTime"]) then
		return
	end
	Sys_SystemBroadcast(tBigGangFight_Text["Broadcast"]["ActivityAfterBroad"])

end

-------------------------- npc部分------------------------

-- 23169,'荒原传送使
tNpcFace[2276] = 8

tNpcGossip[23169] = tNpcGossip[23169] or DefaultNpc:new{}
tNpcGossip[23169]["OptionHidden"] = 1
tNpcGossip[23169]["DialogueText"] = tBigGangFight_Text[23169]

--活动时间前
tNpcGossip[23169]["Text1-1"] = {111,112,113,115,114}
tNpcGossip[23169]["Text111"] = tBigGangFight_Text[23169]["Text111"]
tNpcGossip[23169]["Text112"] = tBigGangFight_Text[23169]["Text112"]
tNpcGossip[23169]["Text113"] = tBigGangFight_Text[23169]["Text113"]
tNpcGossip[23169]["Text115"] = tBigGangFight_Text[23169]["Text115"]
tNpcGossip[23169]["Text114"] = tBigGangFight_Text[23169]["Text114"]

tNpcGossip[23169]["tOption1-1"] = {111}
tNpcGossip[23169]["ChkFunc1-1"] = function()

	local nTimes = Get_SysDynaGlobalData(tBigGangFight_Data["DynaAllGlobal"],1)

	if nTimes > tBigGangFight_Data["OpenDate"]["Times"]-1 then

		tNpcGossip[23169]["Text115"] = ""
	else
		tNpcGossip[23169]["Text115"] = string.format(tBigGangFight_Text[23169]["Text115"],tBigGangFight_Data["OpenDate"][nTimes]["Month"],tBigGangFight_Data["OpenDate"][nTimes]["Day"])
	end

	return CommonFunc_GetBeforeActivityTime(tBigGangFight_Data["ActivityTime"])
end
tNpcGossip[23169]["Option111"] = tBigGangFight_Text[23169]["Option111"] 

--等级不足 帮派不足
tNpcGossip[23169]["Text1-2"] = {121,122,123,125,124,125}
tNpcGossip[23169]["Text121"] = tBigGangFight_Text[23169]["Text121"]
tNpcGossip[23169]["Text122"] = tBigGangFight_Text[23169]["Text122"]
tNpcGossip[23169]["Text123"] = tBigGangFight_Text[23169]["Text123"]
tNpcGossip[23169]["Text124"] = tBigGangFight_Text[23169]["Text124"]
tNpcGossip[23169]["Text125"] = tBigGangFight_Text[23169]["Text125"]

tNpcGossip[23169]["tOption1-2"] = {121}
tNpcGossip[23169]["ChkFunc1-2"] = function()

	local nUserId = Get_UserId()
	local nGuildId = Get_UserGuildId(nUserId)

	if Sys_ChkFullTime(tBigGangFight_Data["ActivityTime"]) then

		if not User_JudgeLevelAndMetempsychosis(tBigGangFight_Data["Level"],tBigGangFight_Data["Metempsychosis"]) then
			tNpcGossip[23169]["Option121"] = tBigGangFight_Text[23169]["Option121"] 
			return true
		elseif nGuildId == 0 then
			tNpcGossip[23169]["Option121"] = tBigGangFight_Text[23169]["Option122"] 

			return true
		end	
		return false
	end

	return false
end
tNpcGossip[23169]["Option121"] = tBigGangFight_Text[23169]["Option121"] 

--活动时间中 等级满足 帮派满足
-- 【非比赛时间，活动开始至9月14日21:30，NPC对白】
tNpcGossip[23169]["Text1-3"] = {131,132,133,135,134}
tNpcGossip[23169]["Text131"] = tBigGangFight_Text[23169]["Text131"]
tNpcGossip[23169]["Text132"] = tBigGangFight_Text[23169]["Text132"]
tNpcGossip[23169]["Text133"] = tBigGangFight_Text[23169]["Text133"]
tNpcGossip[23169]["Text135"] = tBigGangFight_Text[23169]["Text135"]
tNpcGossip[23169]["Text134"] = tBigGangFight_Text[23169]["Text134"]
          
tNpcGossip[23169]["tOption1-3"] = {132}
tNpcGossip[23169]["ChkFunc1-3"] = function()
	tNpcGossip[23169]["Text135"] = tBigGangFight_Text[23169]["Text135"]
	tNpcGossip[23169]["tOption1-3"] = {132}
	local nTimes = Get_SysDynaGlobalData(tBigGangFight_Data["DynaAllGlobal"],1)
	if nTimes > tBigGangFight_Data["OpenDate"]["Times"]-1 then
		tNpcGossip[23169]["Text135"] = ""
	else
		if Sys_ChkWeedTime(tBigGangFight_Data["OpenTime"]) then
			nTimes = nTimes+1
		end
		if nTimes > tBigGangFight_Data["OpenDate"]["Times"]-1 then
			tNpcGossip[23169]["Text135"] = ""
		else
		
			tNpcGossip[23169]["Text135"] = string.format(tBigGangFight_Text[23169]["Text135"],tBigGangFight_Data["OpenDate"][nTimes]["Month"],tBigGangFight_Data["OpenDate"][nTimes]["Day"])
		end 
		
	end
	
	if User_JudgeLevelAndMetempsychosis(tBigGangFight_Data["Level"],tBigGangFight_Data["Metempsychosis"]) and Sys_ChkFullTime(tBigGangFight_Data["ActivityTime"]) then
		if Sys_ChkWeedTime(tBigGangFight_Data["OpenTime"]) then
			tNpcGossip[23169]["tOption1-3"] = {135,133,134,132}
			return true
		else 
			--判断是否是第一场  
			if nTimes <= 0 then
				tNpcGossip[23169]["tOption1-3"] = {132}
				return true
			else
				tNpcGossip[23169]["tOption1-3"] = {133,134,132}
				return true
			end
		end
	end
	return false
end
tNpcGossip[23169]["Option131"] = tBigGangFight_Text[23169]["Option131"] 
tNpcGossip[23169]["Option132"] = tBigGangFight_Text[23169]["Option132"] 
tNpcGossip[23169]["Option133"] = tBigGangFight_Text[23169]["Option133"] 
tNpcGossip[23169]["Option134"] = tBigGangFight_Text[23169]["Option134"] 
tNpcGossip[23169]["Option135"] = tBigGangFight_Text[23169]["Option135"] 
 
tNpcGossip[23169]["OptionPoint131"] = "2-1"
tNpcGossip[23169]["OptionPoint132"] = "2-2"
tNpcGossip[23169]["OptionPoint133"] = "2-3" 
tNpcGossip[23169]["OptionPoint134"] = "2-4"
tNpcGossip[23169]["OptionFunc135"] = "BigGangFight_TransActiveMap</N>23169</N>1"

--活动时间后
tNpcGossip[23169]["Text1-4"] = {141}
tNpcGossip[23169]["Text141"] = tBigGangFight_Text[23169]["Text141"]

tNpcGossip[23169]["tOption1-4"] = {141}
tNpcGossip[23169]["ChkFunc1-4"] = function()

	return not Sys_ChkFullTime(tBigGangFight_Data["ActivityTime"])
end
tNpcGossip[23169]["Option141"] = tBigGangFight_Text[23169]["Option141"] 


--第二层对白
--积分细则
tNpcGossip[23169]["Text2-1"] = {211,212,213,214,215,216,217,218}
tNpcGossip[23169]["Text211"] = tBigGangFight_Text[23169]["Text211"]
tNpcGossip[23169]["Text212"] = tBigGangFight_Text[23169]["Text212"]
tNpcGossip[23169]["Text213"] = tBigGangFight_Text[23169]["Text213"]
tNpcGossip[23169]["Text214"] = tBigGangFight_Text[23169]["Text214"]
tNpcGossip[23169]["Text215"] = tBigGangFight_Text[23169]["Text215"]
tNpcGossip[23169]["Text216"] = tBigGangFight_Text[23169]["Text216"]
tNpcGossip[23169]["Text217"] = tBigGangFight_Text[23169]["Text217"]
tNpcGossip[23169]["Text218"] = tBigGangFight_Text[23169]["Text218"]

tNpcGossip[23169]["tOption2-1"] = {211}
tNpcGossip[23169]["Option211"] = tBigGangFight_Text[23169]["Option211"]
tNpcGossip[23169]["OptionPoint211"] = "1-3"

-- 全服积分细则
tNpcGossip[23169]["Text3-1"] = {311,312,313,314,315,316,317}
tNpcGossip[23169]["Text311"] = tBigGangFight_Text[23169]["Text311"]
tNpcGossip[23169]["Text312"] = tBigGangFight_Text[23169]["Text312"]
tNpcGossip[23169]["Text313"] = tBigGangFight_Text[23169]["Text313"]
tNpcGossip[23169]["Text314"] = tBigGangFight_Text[23169]["Text314"]
tNpcGossip[23169]["Text315"] = tBigGangFight_Text[23169]["Text315"]
tNpcGossip[23169]["Text316"] = tBigGangFight_Text[23169]["Text316"]
tNpcGossip[23169]["Text317"] = tBigGangFight_Text[23169]["Text317"]

tNpcGossip[23169]["tOption3-1"] = {311}
tNpcGossip[23169]["Option311"] = tBigGangFight_Text[23169]["Option311"] 
tNpcGossip[23169]["OptionPoint311"] = "1-3"

--夺宝要诀
tNpcGossip[23169]["Text2-2"] = {221,222,223,224,225,226,227,228,229}
tNpcGossip[23169]["Text221"] = tBigGangFight_Text[23169]["Text221"]
tNpcGossip[23169]["Text222"] = tBigGangFight_Text[23169]["Text222"]
tNpcGossip[23169]["Text223"] = tBigGangFight_Text[23169]["Text223"]
tNpcGossip[23169]["Text224"] = tBigGangFight_Text[23169]["Text224"]
tNpcGossip[23169]["Text225"] = tBigGangFight_Text[23169]["Text225"]
tNpcGossip[23169]["Text226"] = tBigGangFight_Text[23169]["Text226"]
tNpcGossip[23169]["Text227"] = tBigGangFight_Text[23169]["Text227"]
tNpcGossip[23169]["Text228"] = tBigGangFight_Text[23169]["Text228"]
tNpcGossip[23169]["Text229"] = tBigGangFight_Text[23169]["Text229"]

tNpcGossip[23169]["tOption2-2"] = {221,222}
tNpcGossip[23169]["Option221"] = tBigGangFight_Text[23169]["Option221"]
tNpcGossip[23169]["Option222"] = tBigGangFight_Text[23169]["Option222"]
tNpcGossip[23169]["OptionPoint221"] = "2-1"
tNpcGossip[23169]["OptionPoint222"] = "3-1"
 
--帮派积分榜
tNpcGossip[23169]["Text2-3"] = {231,232,233,234,235,236,237,238,239,2312,2310}
tNpcGossip[23169]["Text231"] = tBigGangFight_Text[23169]["Text231"]
tNpcGossip[23169]["Text232"] = tBigGangFight_Text[23169]["Text232"]
tNpcGossip[23169]["Text233"] = tBigGangFight_Text[23169]["Text233"]
tNpcGossip[23169]["Text234"] = tBigGangFight_Text[23169]["Text234"]
tNpcGossip[23169]["Text235"] = tBigGangFight_Text[23169]["Text235"]
tNpcGossip[23169]["Text236"] = tBigGangFight_Text[23169]["Text236"]
tNpcGossip[23169]["Text237"] = tBigGangFight_Text[23169]["Text237"]
tNpcGossip[23169]["Text238"] = tBigGangFight_Text[23169]["Text238"]
tNpcGossip[23169]["Text239"] = tBigGangFight_Text[23169]["Text239"]
tNpcGossip[23169]["Text2311"] = tBigGangFight_Text[23169]["Text2311"]
tNpcGossip[23169]["Text2310"] = tBigGangFight_Text[23169]["Text2310"]

tNpcGossip[23169]["tOption2-3"] = {231}
tNpcGossip[23169]["Option231"] = tBigGangFight_Text[23169]["Option231"] 
tNpcGossip[23169]["ChkFunc2-3"] = function()
	-- BigGangFight_ResetRank()
	local nScore = BigGangFight_GetGuildScore()
	BigGangFight_StcInterval()
	local nFlag = BigGangFight_GetEmoneyNum()
	if Sys_ChkFullTime(tBigGangFight_Data["ActivityTime"]) then
		if Sys_ChkWeedTime(tBigGangFight_Data["OpenTime"]) then
			tNpcGossip[23169]["Text231"] = tBigGangFight_Text[23169]["Text231"]
			tNpcGossip[23169]["Text2310"] = string.format(tBigGangFight_Text[23169]["Text2310"],tBigGangFight_Data["Emoney"][nFlag])	
			tNpcGossip[23169]["Text239"] = string.format(tBigGangFight_Text[23169]["Text239"],nScore)	
		else 
			tNpcGossip[23169]["Text2310"] = ""
			tNpcGossip[23169]["Text231"] = tBigGangFight_Text[23169]["Text2311"]
			tNpcGossip[23169]["Text239"] = ""
		end	
		local nAllScore = BigGangFight_GetServerPoint()
		tNpcGossip[23169]["Text2312"] = string.format(tBigGangFight_Text[23169]["Text2312"],nAllScore)
		return BigGangFight_LinkGossipCheckFunc13(23169,234)
	end
	return false
end

--英雄积分榜
tNpcGossip[23169]["Text2-4"] = {241,242,243,244,245,246,247,248,249,2410}
tNpcGossip[23169]["Text241"] = tBigGangFight_Text[23169]["Text241"]
tNpcGossip[23169]["Text242"] = tBigGangFight_Text[23169]["Text242"]
tNpcGossip[23169]["Text243"] = tBigGangFight_Text[23169]["Text243"]
tNpcGossip[23169]["Text244"] = tBigGangFight_Text[23169]["Text244"]
tNpcGossip[23169]["Text245"] = tBigGangFight_Text[23169]["Text245"]
tNpcGossip[23169]["Text246"] = tBigGangFight_Text[23169]["Text246"]
tNpcGossip[23169]["Text247"] = tBigGangFight_Text[23169]["Text247"]
tNpcGossip[23169]["Text248"] = tBigGangFight_Text[23169]["Text248"]
tNpcGossip[23169]["Text249"] = tBigGangFight_Text[23169]["Text249"]
tNpcGossip[23169]["Text2410"] = tBigGangFight_Text[23169]["Text2410"]

tNpcGossip[23169]["tOption2-4"] = {241}
tNpcGossip[23169]["Option241"] = tBigGangFight_Text[23169]["Option241"] 
tNpcGossip[23169]["ChkFunc2-4"] = function()

	BigGangFight_StcInterval()
	local nUserId = Get_UserId()
	if Sys_ChkFullTime(tBigGangFight_Data["ActivityTime"]) then
	
		if Sys_ChkWeedTime(tBigGangFight_Data["OpenTime"]) then
			tNpcGossip[23169]["Text241"] = tBigGangFight_Text[23169]["Text241"]	
		else 
			tNpcGossip[23169]["Text241"] = tBigGangFight_Text[23169]["Text2411"]
		end	
		local nUserScore = BigGangFight_GetUserPoint(nUserId)
		tNpcGossip[23169]["Text2410"] = string.format(tBigGangFight_Text[23169]["Text2410"],nUserScore)	

		local tRank = RankingFunc_GetNowData(23169)

		local sUserName = ""
		local nScore = 0
		local nGuildId = 0
		local DynaGuildIdGlobal = tBigGangFight_Data["DynaGuildIdGlobal"]
		for i=1,5 do
			local sGuildName = ""
			if tRank[i] == nil then
				tNpcGossip[23169]["Text24"..i+3] = Sys_CenterAline(tBigGangFight_Text[23169]["Text24"..i+3],5,tBigGangFight_Text["NoneData"],25,tBigGangFight_Text["NoneData"],55,tBigGangFight_Text["NoneData"],75).."\n"
			elseif tRank[i]["Score"] >= 0 then
				if tRank[i]["UserId"] == nUserId then
					tNpcGossip[23169]["Text2410"] = string.format(tBigGangFight_Text[23169]["Text2410"],nUserScore)..string.format(tBigGangFight_Text[23169]["Text2412"],i)
				end
			    nScore = tRank[i]["Score"]
			    sUserName = tRank[i]["UserName"]
				nGuildId = Get_SysDynaGlobalData(DynaGuildIdGlobal,i)
				sGuildName = Get_SysDynaGlobalDataStr(DynaGuildIdGlobal,i)
				tNpcGossip[23169]["Text24"..i+3] = Sys_CenterAline(tBigGangFight_Text[23169]["Text24"..i+3],5,nScore,25,sUserName,55,sGuildName,75).."\n"
			end

		end

		return true
		
	end
	return false
end


-- 23170,'荒原都督',
tNpcFace[2277] = 103

tNpcGossip[23170] = tNpcGossip[23170] or DefaultNpc:new{}
tNpcGossip[23170]["OptionHidden"] = 1
tNpcGossip[23170]["DialogueText"] = tBigGangFight_Text[23170]

tNpcGossip[23170]["Text2-3"] = {111,112,113,114,115,116,117,118,119,1110,1111}
tNpcGossip[23170]["Text111"] = tBigGangFight_Text[23170]["Text111"]
tNpcGossip[23170]["Text112"] = tBigGangFight_Text[23170]["Text112"]
tNpcGossip[23170]["Text113"] = tBigGangFight_Text[23170]["Text113"]
tNpcGossip[23170]["Text114"] = tBigGangFight_Text[23170]["Text114"]
tNpcGossip[23170]["Text115"] = tBigGangFight_Text[23170]["Text115"]
tNpcGossip[23170]["Text116"] = tBigGangFight_Text[23170]["Text116"]
tNpcGossip[23170]["Text117"] = tBigGangFight_Text[23170]["Text117"]
tNpcGossip[23170]["Text118"] = tBigGangFight_Text[23170]["Text118"]
tNpcGossip[23170]["Text119"] = tBigGangFight_Text[23170]["Text119"]
tNpcGossip[23170]["Text1110"] = tBigGangFight_Text[23170]["Text1110"]
tNpcGossip[23170]["Text1111"] = tBigGangFight_Text[23170]["Text1111"]


tNpcGossip[23170]["tOption1-1"] = {111,112,113}

tNpcGossip[23170]["Option111"] = tBigGangFight_Text[23170]["Option111"] 
tNpcGossip[23170]["Option112"] = tBigGangFight_Text[23170]["Option112"] 
tNpcGossip[23170]["Option113"] = tBigGangFight_Text[23170]["Option113"] 

tNpcGossip[23170]["OptionPoint111"] = "2-3"
tNpcGossip[23170]["OptionPoint112"] = "2-4"
tNpcGossip[23170]["OptionFunc113"] = "BigGangFight_LeaveActMap</N>23170" 

--帮派积分榜
tNpcGossip[23170]["Text1-1"] = {231,232,233,234,235,236,237,238,239,2312,2310}
tNpcGossip[23170]["Text231"] = tBigGangFight_Text[23170]["Text231"]
tNpcGossip[23170]["Text232"] = tBigGangFight_Text[23170]["Text232"]
tNpcGossip[23170]["Text233"] = tBigGangFight_Text[23170]["Text233"]
tNpcGossip[23170]["Text234"] = tBigGangFight_Text[23170]["Text234"]
tNpcGossip[23170]["Text235"] = tBigGangFight_Text[23170]["Text235"]
tNpcGossip[23170]["Text236"] = tBigGangFight_Text[23170]["Text236"]
tNpcGossip[23170]["Text237"] = tBigGangFight_Text[23170]["Text237"]
tNpcGossip[23170]["Text238"] = tBigGangFight_Text[23170]["Text238"]
tNpcGossip[23170]["Text239"] = tBigGangFight_Text[23170]["Text239"]
tNpcGossip[23170]["Text2310"] = tBigGangFight_Text[23170]["Text2310"]
         
tNpcGossip[23170]["tOption2-3"] = {231}
tNpcGossip[23170]["Option231"] = tBigGangFight_Text[23170]["Option231"] 
tNpcGossip[23170]["ChkFunc1-1"] = function()
	-- BigGangFight_ResetRank()
	local nScore = BigGangFight_GetGuildScore()
	BigGangFight_StcInterval()
	local nFlag = BigGangFight_GetEmoneyNum()
	if Sys_ChkFullTime(tBigGangFight_Data["ActivityTime"]) then
		if Sys_ChkWeedTime(tBigGangFight_Data["OpenTime"]) then
			tNpcGossip[23170]["Text231"] = tBigGangFight_Text[23170]["Text231"]
			tNpcGossip[23170]["Text2310"] = string.format(tBigGangFight_Text[23170]["Text2310"],tBigGangFight_Data["Emoney"][nFlag])	
			tNpcGossip[23170]["Text239"] = string.format(tBigGangFight_Text[23170]["Text239"],nScore)	
		else 
			tNpcGossip[23170]["Text2310"] = ""
			tNpcGossip[23170]["Text231"] = tBigGangFight_Text[23170]["Text2311"]
			tNpcGossip[23170]["Text239"] = ""
		end	
		local nAllScore = BigGangFight_GetServerPoint()
		tNpcGossip[23170]["Text2312"] = string.format(tBigGangFight_Text[23170]["Text2312"],nAllScore)
		return BigGangFight_LinkGossipCheckFunc13(23170,234)
	end
	return false
end

--英雄积分榜
tNpcGossip[23170]["Text2-4"] = {241,242,243,244,245,246,247,248,249,2410}
tNpcGossip[23170]["Text241"] = tBigGangFight_Text[23170]["Text241"]
tNpcGossip[23170]["Text242"] = tBigGangFight_Text[23170]["Text242"]
tNpcGossip[23170]["Text243"] = tBigGangFight_Text[23170]["Text243"]
tNpcGossip[23170]["Text244"] = tBigGangFight_Text[23170]["Text244"]
tNpcGossip[23170]["Text245"] = tBigGangFight_Text[23170]["Text245"]
tNpcGossip[23170]["Text246"] = tBigGangFight_Text[23170]["Text246"]
tNpcGossip[23170]["Text247"] = tBigGangFight_Text[23170]["Text247"]
tNpcGossip[23170]["Text248"] = tBigGangFight_Text[23170]["Text248"]
tNpcGossip[23170]["Text249"] = tBigGangFight_Text[23170]["Text249"]
tNpcGossip[23170]["Text2410"] = tBigGangFight_Text[23170]["Text2410"]
        
tNpcGossip[23170]["tOption2-4"] = {241}
tNpcGossip[23170]["Option241"] = tBigGangFight_Text[23170]["Option241"] 
tNpcGossip[23170]["ChkFunc2-4"] = function()
	
		BigGangFight_StcInterval()
	if Sys_ChkFullTime(tBigGangFight_Data["ActivityTime"]) then
		local nUserId = Get_UserId()
		if Sys_ChkWeedTime(tBigGangFight_Data["OpenTime"]) then
			tNpcGossip[23170]["Text241"] = tBigGangFight_Text[23170]["Text241"]	
		else 
			tNpcGossip[23170]["Text241"] = tBigGangFight_Text[23170]["Text2411"]
		end	
		local nUserScore = BigGangFight_GetUserPoint(nUserId)
		tNpcGossip[23170]["Text2410"] = string.format(tBigGangFight_Text[23170]["Text2410"],nUserScore)	

		local tRank = RankingFunc_GetNowData(23169)
		
		local sUserName = ""
		local nScore = 0
		local nGuildId = 0
		local DynaGuildIdGlobal = tBigGangFight_Data["DynaGuildIdGlobal"]
		for i=1,5 do
			local sGuildName = ""
			if tRank[i] == nil then
				tNpcGossip[23170]["Text24"..i+3] = Sys_CenterAline(tBigGangFight_Text[23170]["Text24"..i+3],5,tBigGangFight_Text["NoneData"],25,tBigGangFight_Text["NoneData"],55,tBigGangFight_Text["NoneData"],75).."\n"
				
			elseif tRank[i]["Score"] >= 0 then
				if tRank[i]["UserId"] == nUserId then
					tNpcGossip[23170]["Text2410"] = string.format(tBigGangFight_Text[23170]["Text2410"],nUserScore)..string.format(tBigGangFight_Text[23170]["Text2412"],i)
				end
				
			    nScore = tRank[i]["Score"]
			    sUserName = tRank[i]["UserName"]
				nGuildId = Get_SysDynaGlobalData(DynaGuildIdGlobal,i)
				sGuildName = Get_SysDynaGlobalDataStr(DynaGuildIdGlobal,i)
				tNpcGossip[23170]["Text24"..i+3] = Sys_CenterAline(tBigGangFight_Text[23170]["Text24"..i+3],5,nScore,25,sUserName,55,sGuildName,75).."\n"
			end

		end

		return true
		
	end
	return false
end

---------------------------------物品部分---------------------------------------------
-- 3310601,'至尊帮主宝箱',11
-- 3310602,'荒原精英宝箱',11
-- 3310603,'荒原奋战礼包',11

-- 3310604,'+1赤炼石荒原包',
-- 3310605,'+2赤炼石荒原包',
-- 3310606,'通神丹荒原包',11
-- 3310607,'究极通神丹荒原包

tItem[3310601] = tItem[3310601] or {}
tItem[3310601]["Function"] = function(nItemId,sItemName)
	if not Sys_ChkFullTime(tBigGangFight_Data["ActivityTime"]) then
		if Item_ChkItem(3310601) then
			if Item_DelItem(3310601) then
				local sDelItemLog = string.format(tBigGangFight_Log["DelItem"],3310601)
				Sys_SaveActionFestivalLog(sDelItemLog)
				User_TalkChannel2005(tBigGangFight_Text["Sys"]["OverTime"][3310601])
			end
		end	
		return 
	end

	LinkItemGossipFunc_New(3310601,"1-1")
end

--物品有对白模板
tItemFace[3310601] = 1752
tItem[3310601]["DialogueText"] = tBigGangFight_Text[3310601]
tItem[3310601]["Text1-1"] = {111}
tItem[3310601]["Text111"] = tBigGangFight_Text[3310601]["Text111"]


tItem[3310601]["tOption1-1"] = {111,112}
tItem[3310601]["OptionFunc111"]="BigGangFight_ChooseItem</N>6011"
tItem[3310601]["OptionFunc112"]="BigGangFight_ChooseItem</N>200575"


tItem[3310602] = tItem[3310602] or {}
tItem[3310602]["Function"] = function(nItemId,sItemName)
	if not Sys_ChkFullTime(tBigGangFight_Data["ActivityTime"]) then
		if Item_ChkItem(3310602) then
			if Item_DelItem(3310602) then
				local sDelItemLog = string.format(tBigGangFight_Log["DelItem"],3310602)
				Sys_SaveActionFestivalLog(sDelItemLog)
				User_TalkChannel2005(tBigGangFight_Text["Sys"]["OverTime"][3310602])
			end
		end	
		return 
	end
	LinkItemGossipFunc_New(3310602,"1-1")
end


tItemFace[3310602] = 1314
tItem[3310602]["DialogueText"] = tBigGangFight_Text[3310602]
tItem[3310602]["Text1-1"] = {111}

tItem[3310602]["tOption1-1"] = {111,112}
tItem[3310602]["OptionFunc111"]="BigGangFight_ChooseItem</N>200573"
tItem[3310602]["OptionFunc112"]="BigGangFight_ChooseItem</N>1"


-- 3310603,'荒原奋战礼包',11
tItem[3310603] = tItem[3310603] or {}
tItem[3310603]["Function"] = function(nItemId,sItemName)
	BigGangFight_ChooseItem(nItemId)
end

tItem[3310604] = tItem[3310603] or {}
tItem[3310605] = tItem[3310603] or {}
tItem[3310606] = tItem[3310603] or {}
tItem[3310607] = tItem[3310603] or {}




---------------------------------怪物部分---------------------------------------------
--杀小怪方法
local tBigGangFight_KillMonster = {}
	tBigGangFight_KillMonster[1] = {}
	tBigGangFight_KillMonster[1]["ActivityTime"] = tBigGangFight_Data["ActivityTime"]
	tBigGangFight_KillMonster[1]["Function"]= BigGangFight_KillMonster
	tBigGangFight_KillMonster[1]["MonsterId"] = {4828}
	tBigGangFight_KillMonster[2] = {}
	tBigGangFight_KillMonster[2]["ActivityTime"] = tBigGangFight_Data["ActivityTime"]
	tBigGangFight_KillMonster[2]["Function"]= BigGangFight_KillBoss
	tBigGangFight_KillMonster[2]["MonsterId"] = {4829}
table.insert(tMonsterDrop_AreaLoad,tBigGangFight_KillMonster[1])
table.insert(tMonsterDrop_AreaLoad,tBigGangFight_KillMonster[2])


-- 对boss有伤害
tBossRewardEnd[4829] = tBossRewardEnd[4829] or {}
tBossRewardEnd[4829]["tFunction"] = tBossRewardEnd[4829]["tFunction"] or {}
table.insert(tBossRewardEnd[4829]["tFunction"],BigGangFight_KillBossAward)


-----------------------------------时间自检-----------------------------------
--活动开始（重置积分）
tOntimerMin_wHM[52129] = tOntimerMin_wHM[52129] or {}
table.insert(tOntimerMin_wHM[52129],BigGangFight_ActivityStart)

--活动结束
tOntimerMin_wHM[52200] = tOntimerMin_wHM[52200] or {}
table.insert(tOntimerMin_wHM[52200],BigGangFight_MapClear)

local tBigGangFight_OnTime = {}
	--每五分钟刷怪
	tBigGangFight_OnTime[1] = {}
	tBigGangFight_OnTime[1]["Type"] = 3
	tBigGangFight_OnTime[1]["TimeType"] = 3
	tBigGangFight_OnTime[1]["Multiple"] = {}
	tBigGangFight_OnTime[1]["Multiple"][1]  = "5 21:30 5 21:30"
	tBigGangFight_OnTime[1]["Multiple"][2]  = "5 21:35 5 21:35"
	tBigGangFight_OnTime[1]["Multiple"][3]  = "5 21:40 5 21:40"
	tBigGangFight_OnTime[1]["Multiple"][4]  = "5 21:45 5 21:45"
	tBigGangFight_OnTime[1]["Multiple"][5]  = "5 21:50 5 21:50"
	tBigGangFight_OnTime[1]["Multiple"][6]  = "5 21:55 5 21:55"
	tBigGangFight_OnTime[1]["Multiple"][7]  = "5 22:00 5 22:00"
	tBigGangFight_OnTime[1]["Func"] = BigGangFight_MapDragonAppear
	table.insert(tSystemTime_InitialData,tBigGangFight_OnTime[1])

	--刷怪前1分钟全服公告
	tBigGangFight_OnTime[2] = {}
	tBigGangFight_OnTime[2]["Type"] = 3
	tBigGangFight_OnTime[2]["TimeType"] = 3
	tBigGangFight_OnTime[2]["Multiple"] = {}
	tBigGangFight_OnTime[2]["Multiple"][1]  = "5 21:29 5 21:29"
	tBigGangFight_OnTime[2]["Multiple"][2]  = "5 21:34 5 21:34"
	tBigGangFight_OnTime[2]["Multiple"][3]  = "5 21:39 5 21:39"
	tBigGangFight_OnTime[2]["Multiple"][4]  = "5 21:44 5 21:44"
	tBigGangFight_OnTime[2]["Multiple"][5]  = "5 21:49 5 21:49"
	tBigGangFight_OnTime[2]["Multiple"][6]  = "5 21:54 5 21:54"
	tBigGangFight_OnTime[2]["Multiple"][7]  = "5 22:59 5 22:59"
	tBigGangFight_OnTime[2]["Func"] = BigGangFight_MapDragonAppearBrodcast
	table.insert(tSystemTime_InitialData,tBigGangFight_OnTime[2])
	
	--时间自检发邮件给奖励 
	tBigGangFight_OnTime[3] = {}
	tBigGangFight_OnTime[3]["Type"] = 3
	tBigGangFight_OnTime[3]["TimeType"] = 3
	tBigGangFight_OnTime[3]["Multiple"] = {}
	tBigGangFight_OnTime[3]["Multiple"][1]  = "5 22:01 5 22:03"
	tBigGangFight_OnTime[3]["Func"] = BigGangFight_MailReward
	table.insert(tSystemTime_InitialData,tBigGangFight_OnTime[3])

	--开启五分钟前
	tBigGangFight_OnTime[4] = {}
	tBigGangFight_OnTime[4]["Type"] = 3
	tBigGangFight_OnTime[4]["TimeType"] = 3
	tBigGangFight_OnTime[4]["Multiple"] = {}
	tBigGangFight_OnTime[4]["Multiple"][1]  = "5 21:25 5 21:25"
	tBigGangFight_OnTime[4]["Func"] = BigGangFight_ActivityStartBroad
	table.insert(tSystemTime_InitialData,tBigGangFight_OnTime[4]) 
	
	--开启五分钟后
	tBigGangFight_OnTime[5] = {}
	tBigGangFight_OnTime[5]["Type"] = 3
	tBigGangFight_OnTime[5]["TimeType"] = 3
	tBigGangFight_OnTime[5]["Multiple"] = {}
	tBigGangFight_OnTime[5]["Multiple"][1]  = "5 21:35 5 21:35"
	tBigGangFight_OnTime[5]["Func"] = BigGangFight_ActivityAfterBroad
	table.insert(tSystemTime_InitialData,tBigGangFight_OnTime[5]) 

-----------------------------------杀人触发-----------------------------------
tUserKilled["tFunction"] = tUserKilled["tFunction"] or {}
table.insert(tUserKilled["tFunction"],BigGangFight_KillAgainst)

-----------------------------------复活触发-----------------------------------
tUserSave["tFunction"] = tUserSave["tFunction"] or {}
table.insert(tUserSave["tFunction"],BigGangFight_RevivePlayer) 

-----------------------------------锁魂触发-----------------------------------
tKeepGhost["tFunction"] = tKeepGhost["tFunction"] or {}
table.insert(tKeepGhost["tFunction"],BigGangFight_KeepGhostPlayer)








