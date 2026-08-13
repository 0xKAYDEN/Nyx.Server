------------------------------------------------------------------------------------
--Name:		170829[英文征服][任务脚本]金币服新手体验
--Creator: 	兰瑞妹
--Created:	2017/10/15
------------------------------------------------------------------------------------

-- 命名前缀
-- Grow_Bags_

-- logid 10001528
-- logid 12000916

-- #stc 掩码说明 
-- #stc(112,05) 成长礼包阶段stc
-- #stc(169,06) 大于120级以后的成长礼包
-- #stc(169,07) 登录送礼包
-- #stc(169,08) 礼包奖励 含1已领第二天，含2已领第三天，含4已领第五天
-- #stc(169,09) 个人boss弹框
-- #stc(169,10) 全服前几名可否领奖标志 含1可以领100级前2000名
-- #stc(169,11) 全服前领奖情况 含1可以已领100级前2000名

-- GlobalId 51822 全服达到等级任务计数
--动态存储表说明
----------	存储位	--存储说明--
---		--data0--	全服前2000名达到100级的玩家额外获得100颗流星赠作为奖励
---		--data1--	全服前1000名达到120级的玩家额外获得7颗龙珠赠作为奖励
			--data2--	全服前500名达到130级的玩家额外获得5000气力值+1颗璀璨星陨石作为奖励
			--data4--	全服前100名到达135级的玩家可以获得绝版专属奖励。（如称号，配饰）
			--data5--	全服前10名到达2转140级的玩家可以获得绝版专属奖励。（如称号，配饰）


-- 常量表
local tGrow_Bags_Count = {}
	-- 可以传送的地图
	tGrow_Bags_Count["MapId"] = {1000,1002,1011,1015,1020,1036,1068,1351,1352,1353,1354,1785,1786,1787,1926,1927,1999,2054,2055,2056,3055,3056,3998,4020}

	-- 礼包奖励
	tGrow_Bags_Count["Phase"] = {1,2,4}
	
	-- 动态表id
	tGrow_Bags_Count["GlobalId"] = 51822
	
	-- 职业
	tGrow_Bags_Count["Profession"] = {}
	-- 勇士
	tGrow_Bags_Count["Profession"][1] = {G_PRO_Trojan0,G_PRO_Trojan5}
	--战士
	tGrow_Bags_Count["Profession"][2] = {G_PRO_Warrior0,G_PRO_Warrior5}
	--弓手
	tGrow_Bags_Count["Profession"][3] = {G_PRO_Archer0,G_PRO_Archer5}
	--忍者
	tGrow_Bags_Count["Profession"][4] = {G_PRO_Ninja0,G_PRO_Ninja5}
	--武僧
	tGrow_Bags_Count["Profession"][5] = {G_PRO_Monk0,G_PRO_Monk5}
	--海盗
	tGrow_Bags_Count["Profession"][6] = {G_PRO_Pirate0,G_PRO_Pirate5}
	--截拳师
	tGrow_Bags_Count["Profession"][7] = {G_PRO_Dragon0,G_PRO_Dragon5}
	--道士
	tGrow_Bags_Count["Profession"][8] = {G_PRO_Taoist0,G_PRO_FireTaoist5}
	-- 铁扇门
 	tGrow_Bags_Count["Profession"][9] = {G_PRO_IroFan0,G_PRO_IroFan5}
	
	-- 回级
	tGrow_Bags_Count["LevelTo"] = {}
	tGrow_Bags_Count["LevelTo"][1] = 120
	tGrow_Bags_Count["LevelTo"][2] = 130
	
-- Log表
local tGrow_Bags_Log = {}
	-- 过期删除
	tGrow_Bags_Log["OverDue"] = "0,0,%d,1,10001528,2,0,0"

-- stc掩码
local tGrow_Bags_Stc = {}
	-- 成长礼包阶段stc
	tGrow_Bags_Stc[1] = {}
	tGrow_Bags_Stc[1]["EventType"] = 112
	tGrow_Bags_Stc[1]["DataType"] = 05
	-- 大于120级以后的成长礼包
	tGrow_Bags_Stc[2] = {}
	tGrow_Bags_Stc[2]["EventType"] = 169
	tGrow_Bags_Stc[2]["DataType"] = 06
	-- 登录送礼包
	tGrow_Bags_Stc[3] = {}
	tGrow_Bags_Stc[3]["EventType"] = 169
	tGrow_Bags_Stc[3]["DataType"] = 07
	-- 礼包奖励 含1已领第二天，含2已领第三天，含4已领第五天
	tGrow_Bags_Stc[4] = {}
	tGrow_Bags_Stc[4]["EventType"] = 169
	tGrow_Bags_Stc[4]["DataType"] = 08
	-- 个人boss弹框
	tGrow_Bags_Stc[5] = {}
	tGrow_Bags_Stc[5]["EventType"] = 169
	tGrow_Bags_Stc[5]["DataType"] = 09
	-- 全服前几名可否领奖标志 含1可以领100级前2000名
	tGrow_Bags_Stc[6] = {}
	tGrow_Bags_Stc[6]["EventType"] = 169
	tGrow_Bags_Stc[6]["DataType"] = 10
	-- 全服前领奖情况 含1可以已领100级前2000名
	tGrow_Bags_Stc[7] = {}
	tGrow_Bags_Stc[7]["EventType"] = 169
	tGrow_Bags_Stc[7]["DataType"] = 11
	
local tGrow_Bags_FindWay = {}
	-- 个人boss传送
	tGrow_Bags_FindWay[1] = {}
	tGrow_Bags_FindWay[1]["MapId"] = 1002
	tGrow_Bags_FindWay[1]["PosX"] = 324
	tGrow_Bags_FindWay[1]["PosY"] = 433
	tGrow_Bags_FindWay[1]["Range"] = 5
	
-- 奖励表
local tGrow_Bags_Reward = {}
	-- 等级1获得3天祈愿石
	tGrow_Bags_Reward[1] = {}
	tGrow_Bags_Reward[1]["Log"] = "0,0,3000550,1,10001528,2,1200000,1"
	tGrow_Bags_Reward[1]["RewardItem"] = {}
	tGrow_Bags_Reward[1]["RewardItem"][1] = {}
	tGrow_Bags_Reward[1]["RewardItem"][1]["Id"] = 1200000
	tGrow_Bags_Reward[1]["RewardItem"][1]["Attr"] = "0 1 3"
	tGrow_Bags_Reward[1]["RewardEffect"] = {}
	tGrow_Bags_Reward[1]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 等级5改给昆仑雪水 723017
	tGrow_Bags_Reward[5] = {}
	tGrow_Bags_Reward[5]["Log"] = "0,0,3000550,1,10001528,2,723017,1"
	tGrow_Bags_Reward[5]["RewardItem"] = {}
	tGrow_Bags_Reward[5]["RewardItem"][1] = {}
	tGrow_Bags_Reward[5]["RewardItem"][1]["Id"] = 723017
	tGrow_Bags_Reward[5]["RewardItem"][1]["Attr"] = "0 1 3"
	tGrow_Bags_Reward[5]["RewardEffect"] = {}
	tGrow_Bags_Reward[5]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 10级 替换成新装备-武器
	tGrow_Bags_Reward[10] = {}
	tGrow_Bags_Reward[10]["LogId"] = 10001528
	tGrow_Bags_Reward[10]["RewardProItem"] = {}
	-- 勇士（10-15）
	tGrow_Bags_Reward[10]["RewardProItem"][1] = {}
	tGrow_Bags_Reward[10]["RewardProItem"][1]["Pro"] = {{G_PRO_Trojan0,G_PRO_Trojan5}}
	tGrow_Bags_Reward[10]["RewardProItem"][1]["Item"] = {}
	tGrow_Bags_Reward[10]["RewardProItem"][1]["Item"][1] = {}
	tGrow_Bags_Reward[10]["RewardProItem"][1]["Item"][1]["Id"] = 410019
	tGrow_Bags_Reward[10]["RewardProItem"][1]["Item"][1]["Attr"] = "0 1 3"
	tGrow_Bags_Reward[10]["RewardProItem"][1]["Item"][2] = {}
	tGrow_Bags_Reward[10]["RewardProItem"][1]["Item"][2]["Id"] = 420019
	tGrow_Bags_Reward[10]["RewardProItem"][1]["Item"][2]["Attr"] = "0 1 3"
	-- 战士（20-25）
	tGrow_Bags_Reward[10]["RewardProItem"][2] = {}
	tGrow_Bags_Reward[10]["RewardProItem"][2]["Pro"] = {{G_PRO_Warrior0,G_PRO_Warrior5}}
	tGrow_Bags_Reward[10]["RewardProItem"][2]["Item"] = {}
	tGrow_Bags_Reward[10]["RewardProItem"][2]["Item"][1] = {}
	tGrow_Bags_Reward[10]["RewardProItem"][2]["Item"][1]["Id"] = 624019
	tGrow_Bags_Reward[10]["RewardProItem"][2]["Item"][1]["Attr"] = "0 2 3"
	-- 射手（40-45）
	tGrow_Bags_Reward[10]["RewardProItem"][3] = {}
	tGrow_Bags_Reward[10]["RewardProItem"][3]["Pro"] = {{G_PRO_Archer0,G_PRO_Archer5}}
	tGrow_Bags_Reward[10]["RewardProItem"][3]["Item"] = {}
	tGrow_Bags_Reward[10]["RewardProItem"][3]["Item"][1] = {}
	tGrow_Bags_Reward[10]["RewardProItem"][3]["Item"][1]["Id"] = 613009
	tGrow_Bags_Reward[10]["RewardProItem"][3]["Item"][1]["Attr"] = "0 2 3"
	-- 忍者（50-55）
	tGrow_Bags_Reward[10]["RewardProItem"][4] = {}
	tGrow_Bags_Reward[10]["RewardProItem"][4]["Pro"] = {{G_PRO_Ninja0,G_PRO_Ninja5}}
	tGrow_Bags_Reward[10]["RewardProItem"][4]["Item"] = {}
	tGrow_Bags_Reward[10]["RewardProItem"][4]["Item"][1] = {}
	tGrow_Bags_Reward[10]["RewardProItem"][4]["Item"][1]["Id"] = 601010
	tGrow_Bags_Reward[10]["RewardProItem"][4]["Item"][1]["Attr"] = "0 2 3"
	-- 武僧（60-65）
	tGrow_Bags_Reward[10]["RewardProItem"][5] = {}
	tGrow_Bags_Reward[10]["RewardProItem"][5]["Pro"] = {{G_PRO_Monk0,G_PRO_Monk5}}
	tGrow_Bags_Reward[10]["RewardProItem"][5]["Item"] = {}
	tGrow_Bags_Reward[10]["RewardProItem"][5]["Item"][1] = {}
	tGrow_Bags_Reward[10]["RewardProItem"][5]["Item"][1]["Id"] = 610019
	tGrow_Bags_Reward[10]["RewardProItem"][5]["Item"][1]["Attr"] = "0 2 3"
	-- 海盗（70-75）
	tGrow_Bags_Reward[10]["RewardProItem"][6] = {}
	tGrow_Bags_Reward[10]["RewardProItem"][6]["Pro"] = {{G_PRO_Pirate0,G_PRO_Pirate5}}
	tGrow_Bags_Reward[10]["RewardProItem"][6]["Item"] = {}
	tGrow_Bags_Reward[10]["RewardProItem"][6]["Item"][1] = {}
	tGrow_Bags_Reward[10]["RewardProItem"][6]["Item"][1]["Id"] = 611019
	tGrow_Bags_Reward[10]["RewardProItem"][6]["Item"][1]["Attr"] = "0 1 3"
	tGrow_Bags_Reward[10]["RewardProItem"][6]["Item"][2] = {}
	tGrow_Bags_Reward[10]["RewardProItem"][6]["Item"][2]["Id"] = 612019
	tGrow_Bags_Reward[10]["RewardProItem"][6]["Item"][2]["Attr"] = "0 1 3"
	-- 拳师（80-85）
	tGrow_Bags_Reward[10]["RewardProItem"][7] = {}
	tGrow_Bags_Reward[10]["RewardProItem"][7]["Pro"] = {{G_PRO_Dragon0,G_PRO_Dragon5}}
	tGrow_Bags_Reward[10]["RewardProItem"][7]["Item"] = {}
	tGrow_Bags_Reward[10]["RewardProItem"][7]["Item"][1] = {}
	tGrow_Bags_Reward[10]["RewardProItem"][7]["Item"][1]["Id"] = 617019
	tGrow_Bags_Reward[10]["RewardProItem"][7]["Item"][1]["Attr"] = "0 2 3"
	-- 道士（100-145）
	tGrow_Bags_Reward[10]["RewardProItem"][8] = {}
	tGrow_Bags_Reward[10]["RewardProItem"][8]["Pro"] = {{G_PRO_Taoist0,G_PRO_FireTaoist5}}
	tGrow_Bags_Reward[10]["RewardProItem"][8]["Item"] = {}
	tGrow_Bags_Reward[10]["RewardProItem"][8]["Item"][1] = {}
	tGrow_Bags_Reward[10]["RewardProItem"][8]["Item"][1]["Id"] = 421013
	tGrow_Bags_Reward[10]["RewardProItem"][8]["Item"][1]["Attr"] = "0 1 3"
	tGrow_Bags_Reward[10]["RewardProItem"][8]["Item"][2] = {}
	tGrow_Bags_Reward[10]["RewardProItem"][8]["Item"][2]["Id"] = 619019
	tGrow_Bags_Reward[10]["RewardProItem"][8]["Item"][2]["Attr"] = "0 1 3"
	-- 铁扇门
	tGrow_Bags_Reward[10]["RewardProItem"][9] = {}
	tGrow_Bags_Reward[10]["RewardProItem"][9]["Pro"] = {{G_PRO_IroFan0,G_PRO_IroFan5}}
	tGrow_Bags_Reward[10]["RewardProItem"][9]["Item"] = {}
	tGrow_Bags_Reward[10]["RewardProItem"][9]["Item"][1] = {}
	tGrow_Bags_Reward[10]["RewardProItem"][9]["Item"][1]["Id"] = 626019
	tGrow_Bags_Reward[10]["RewardProItem"][9]["Item"][1]["Attr"] = "0 2 3"
	tGrow_Bags_Reward[10]["RewardEffect"] = {}
	tGrow_Bags_Reward[10]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 20级 主动，被动技能提升
	tGrow_Bags_Reward[20] = {}
	-- tGrow_Bags_Reward[20]["Skill"] = {}
	
	-- 30级 获得新装备-马鞭， 203009
	tGrow_Bags_Reward[30] = {}
	tGrow_Bags_Reward[30]["Log"] = "0,0,3000550,1,10001528,2,203009,1"
	tGrow_Bags_Reward[30]["RewardItem"] = {}
	tGrow_Bags_Reward[30]["RewardItem"][1] = {}
	tGrow_Bags_Reward[30]["RewardItem"][1]["Id"] = 203009
	tGrow_Bags_Reward[30]["RewardItem"][1]["Attr"] = "0 1 3"
	tGrow_Bags_Reward[30]["RewardEffect"] = {}
	tGrow_Bags_Reward[30]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 40级 获得新装备-戒指，150079
	tGrow_Bags_Reward[40] = {}
	tGrow_Bags_Reward[40]["Log"] = "0,0,3000550,1,10001528,2,150079,1"
	tGrow_Bags_Reward[40]["RewardItem"] = {}
	tGrow_Bags_Reward[40]["RewardItem"][1] = {}
	tGrow_Bags_Reward[40]["RewardItem"][1]["Id"] = 150079
	tGrow_Bags_Reward[40]["RewardItem"][1]["Attr"] = "0 1 3"
	tGrow_Bags_Reward[40]["RewardEffect"] = {}
	tGrow_Bags_Reward[40]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 50级 获得新装备-武器（见表2）
	tGrow_Bags_Reward[50] = {}
	tGrow_Bags_Reward[50]["LogId"] = 10001528
	tGrow_Bags_Reward[50]["RewardProItem"] = {}
	-- 勇士（10-15）
	tGrow_Bags_Reward[50]["RewardProItem"][1] = {}
	tGrow_Bags_Reward[50]["RewardProItem"][1]["Pro"] = {{G_PRO_Trojan0,G_PRO_Trojan5}}
	tGrow_Bags_Reward[50]["RewardProItem"][1]["Item"] = {}
	tGrow_Bags_Reward[50]["RewardProItem"][1]["Item"][1] = {}
	tGrow_Bags_Reward[50]["RewardProItem"][1]["Item"][1]["Id"] = 410099
	tGrow_Bags_Reward[50]["RewardProItem"][1]["Item"][1]["Attr"] = "0 1 3"
	tGrow_Bags_Reward[50]["RewardProItem"][1]["Item"][2] = {}
	tGrow_Bags_Reward[50]["RewardProItem"][1]["Item"][2]["Id"] = 420099
	tGrow_Bags_Reward[50]["RewardProItem"][1]["Item"][2]["Attr"] = "0 1 3"
	-- 战士（20-25）
	tGrow_Bags_Reward[50]["RewardProItem"][2] = {}
	tGrow_Bags_Reward[50]["RewardProItem"][2]["Pro"] = {{G_PRO_Warrior0,G_PRO_Warrior5}}
	tGrow_Bags_Reward[50]["RewardProItem"][2]["Item"] = {}
	tGrow_Bags_Reward[50]["RewardProItem"][2]["Item"][1] = {}
	tGrow_Bags_Reward[50]["RewardProItem"][2]["Item"][1]["Id"] = 624099
	tGrow_Bags_Reward[50]["RewardProItem"][2]["Item"][1]["Attr"] = "0 2 3"
	-- 射手（40-45）
	tGrow_Bags_Reward[50]["RewardProItem"][3] = {}
	tGrow_Bags_Reward[50]["RewardProItem"][3]["Pro"] = {{G_PRO_Archer0,G_PRO_Archer5}}
	tGrow_Bags_Reward[50]["RewardProItem"][3]["Item"] = {}
	tGrow_Bags_Reward[50]["RewardProItem"][3]["Item"][1] = {}
	tGrow_Bags_Reward[50]["RewardProItem"][3]["Item"][1]["Id"] = 613089
	tGrow_Bags_Reward[50]["RewardProItem"][3]["Item"][1]["Attr"] = "0 2 3"
	-- 忍者（50-55）
	tGrow_Bags_Reward[50]["RewardProItem"][4] = {}
	tGrow_Bags_Reward[50]["RewardProItem"][4]["Pro"] = {{G_PRO_Ninja0,G_PRO_Ninja5}}
	tGrow_Bags_Reward[50]["RewardProItem"][4]["Item"] = {}
	tGrow_Bags_Reward[50]["RewardProItem"][4]["Item"][1] = {}
	tGrow_Bags_Reward[50]["RewardProItem"][4]["Item"][1]["Id"] = 601099
	tGrow_Bags_Reward[50]["RewardProItem"][4]["Item"][1]["Attr"] = "0 2 3"
	-- 武僧（60-65）
	tGrow_Bags_Reward[50]["RewardProItem"][5] = {}
	tGrow_Bags_Reward[50]["RewardProItem"][5]["Pro"] = {{G_PRO_Monk0,G_PRO_Monk5}}
	tGrow_Bags_Reward[50]["RewardProItem"][5]["Item"] = {}
	tGrow_Bags_Reward[50]["RewardProItem"][5]["Item"][1] = {}
	tGrow_Bags_Reward[50]["RewardProItem"][5]["Item"][1]["Id"] = 610099
	tGrow_Bags_Reward[50]["RewardProItem"][5]["Item"][1]["Attr"] = "0 2 3"
	-- 海盗（70-75）
	tGrow_Bags_Reward[50]["RewardProItem"][6] = {}
	tGrow_Bags_Reward[50]["RewardProItem"][6]["Pro"] = {{G_PRO_Pirate0,G_PRO_Pirate5}}
	tGrow_Bags_Reward[50]["RewardProItem"][6]["Item"] = {}
	tGrow_Bags_Reward[50]["RewardProItem"][6]["Item"][1] = {}
	tGrow_Bags_Reward[50]["RewardProItem"][6]["Item"][1]["Id"] = 611099
	tGrow_Bags_Reward[50]["RewardProItem"][6]["Item"][1]["Attr"] = "0 1 3"
	tGrow_Bags_Reward[50]["RewardProItem"][6]["Item"][2] = {}
	tGrow_Bags_Reward[50]["RewardProItem"][6]["Item"][2]["Id"] = 612099
	tGrow_Bags_Reward[50]["RewardProItem"][6]["Item"][2]["Attr"] = "0 1 3"
	-- 拳师（80-85）
	tGrow_Bags_Reward[50]["RewardProItem"][7] = {}
	tGrow_Bags_Reward[50]["RewardProItem"][7]["Pro"] = {{G_PRO_Dragon0,G_PRO_Dragon5}}
	tGrow_Bags_Reward[50]["RewardProItem"][7]["Item"] = {}
	tGrow_Bags_Reward[50]["RewardProItem"][7]["Item"][1] = {}
	tGrow_Bags_Reward[50]["RewardProItem"][7]["Item"][1]["Id"] = 617099
	tGrow_Bags_Reward[50]["RewardProItem"][7]["Item"][1]["Attr"] = "0 2 3"
	-- 道士（100-145）
	tGrow_Bags_Reward[50]["RewardProItem"][8] = {}
	tGrow_Bags_Reward[50]["RewardProItem"][8]["Pro"] = {{G_PRO_Taoist0,G_PRO_FireTaoist5}}
	tGrow_Bags_Reward[50]["RewardProItem"][8]["Item"] = {}
	tGrow_Bags_Reward[50]["RewardProItem"][8]["Item"][1] = {}
	tGrow_Bags_Reward[50]["RewardProItem"][8]["Item"][1]["Id"] = 619090
	tGrow_Bags_Reward[50]["RewardProItem"][8]["Item"][1]["Attr"] = "0 1 3"
	tGrow_Bags_Reward[50]["RewardProItem"][8]["Item"][2] = {}
	tGrow_Bags_Reward[50]["RewardProItem"][8]["Item"][2]["Id"] = 421089
	tGrow_Bags_Reward[50]["RewardProItem"][8]["Item"][2]["Attr"] = "0 1 3"
	-- 铁扇门
	tGrow_Bags_Reward[50]["RewardProItem"][9] = {}
	tGrow_Bags_Reward[50]["RewardProItem"][9]["Pro"] = {{G_PRO_IroFan0,G_PRO_IroFan5}}
	tGrow_Bags_Reward[50]["RewardProItem"][9]["Item"] = {}
	tGrow_Bags_Reward[50]["RewardProItem"][9]["Item"][1] = {}
	tGrow_Bags_Reward[50]["RewardProItem"][9]["Item"][1]["Id"] = 626099
	tGrow_Bags_Reward[50]["RewardProItem"][9]["Item"][1]["Attr"] = "0 2 3"
	tGrow_Bags_Reward[50]["RewardEffect"] = {}
	tGrow_Bags_Reward[50]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 60级 免费修炼丹*10，3002926
	tGrow_Bags_Reward[60] = {}
	tGrow_Bags_Reward[60]["Log"] = "0,0,3000550,1,10001528,2,3002926,10"
	tGrow_Bags_Reward[60]["RewardItem"] = {}
	tGrow_Bags_Reward[60]["RewardItem"][1] = {}
	tGrow_Bags_Reward[60]["RewardItem"][1]["Id"] = 3002926
	tGrow_Bags_Reward[60]["RewardItem"][1]["Attr"] = "0 10"
	tGrow_Bags_Reward[60]["RewardEffect"] = {}
	tGrow_Bags_Reward[60]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 70级 获得所有副职业就职道具和5000修行值
	tGrow_Bags_Reward[70] = {}
	tGrow_Bags_Reward[70]["Log"] = "0,0,3000550,1,10001528,2,711188[711679][721259][721261][723087][720027][723903][6],1[1][1][5][10][20][1][40][5000]"
	tGrow_Bags_Reward[70]["RewardItem"] = {}
	tGrow_Bags_Reward[70]["RewardItem"][1] = {}
	tGrow_Bags_Reward[70]["RewardItem"][1]["Id"] = 711188
	tGrow_Bags_Reward[70]["RewardItem"][1]["Attr"] = "0 1 3"
	tGrow_Bags_Reward[70]["RewardItem"][2] = {}
	tGrow_Bags_Reward[70]["RewardItem"][2]["Id"] = 711679
	tGrow_Bags_Reward[70]["RewardItem"][2]["Attr"] = "0 1 3"
	tGrow_Bags_Reward[70]["RewardItem"][3] = {}
	tGrow_Bags_Reward[70]["RewardItem"][3]["Id"] = 721259
	tGrow_Bags_Reward[70]["RewardItem"][3]["Attr"] = "0 5 3"
	tGrow_Bags_Reward[70]["RewardItem"][4] = {}
	tGrow_Bags_Reward[70]["RewardItem"][4]["Id"] = 721261
	tGrow_Bags_Reward[70]["RewardItem"][4]["Attr"] = "0 10 3"
	tGrow_Bags_Reward[70]["RewardItem"][5] = {}
	tGrow_Bags_Reward[70]["RewardItem"][5]["Id"] = 723087
	tGrow_Bags_Reward[70]["RewardItem"][5]["Attr"] = "0 20 3"
	tGrow_Bags_Reward[70]["RewardItem"][6] = {}
	tGrow_Bags_Reward[70]["RewardItem"][6]["Id"] = 720027
	tGrow_Bags_Reward[70]["RewardItem"][6]["Attr"] = "0 1 3"
	tGrow_Bags_Reward[70]["RewardItem"][7] = {}
	tGrow_Bags_Reward[70]["RewardItem"][7]["Id"] = 723903
	tGrow_Bags_Reward[70]["RewardItem"][7]["Attr"] = "0 40 3"
	tGrow_Bags_Reward[70]["RewardCultivation"] = {}
	tGrow_Bags_Reward[70]["RewardCultivation"]["Value"] = 5000
	tGrow_Bags_Reward[70]["RewardEffect"] = {}
	tGrow_Bags_Reward[70]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 80级 获得新装备-戒指，150158
	tGrow_Bags_Reward[80] = {}
	tGrow_Bags_Reward[80]["Log"] = "0,0,3000550,1,10001528,2,150158,1"
	tGrow_Bags_Reward[80]["RewardItem"] = {}
	tGrow_Bags_Reward[80]["RewardItem"][1] = {}
	tGrow_Bags_Reward[80]["RewardItem"][1]["Id"] = 150158
	tGrow_Bags_Reward[80]["RewardItem"][1]["Attr"] = "0 1 3"
	tGrow_Bags_Reward[80]["RewardEffect"] = {}
	tGrow_Bags_Reward[80]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 90级 免费修炼丹*10 + 通神丹*10 + 护心丹*10 3002926，3003125，3002030
	tGrow_Bags_Reward[90] = {}
	tGrow_Bags_Reward[90]["Log"] = "0,0,3000550,1,10001528,2,3002926[3003125][3002030],10[10][10]"
	tGrow_Bags_Reward[90]["RewardItem"] = {}
	tGrow_Bags_Reward[90]["RewardItem"][1] = {}
	tGrow_Bags_Reward[90]["RewardItem"][1]["Id"] = 3002926
	tGrow_Bags_Reward[90]["RewardItem"][1]["Attr"] = "0 10"
	tGrow_Bags_Reward[90]["RewardItem"][2] = {}
	tGrow_Bags_Reward[90]["RewardItem"][2]["Id"] = 3003125
	tGrow_Bags_Reward[90]["RewardItem"][2]["Attr"] = "0 10 3"
	tGrow_Bags_Reward[90]["RewardItem"][3] = {}
	tGrow_Bags_Reward[90]["RewardItem"][3]["Id"] = 3002030
	tGrow_Bags_Reward[90]["RewardItem"][3]["Attr"] = "0 10"
	tGrow_Bags_Reward[90]["RewardEffect"] = {}
	tGrow_Bags_Reward[90]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 100级 获得新装备-凌霄扇，201009
	tGrow_Bags_Reward[100] = {}
	tGrow_Bags_Reward[100]["Log"] = "0,0,3000550,1,10001528,2,201009,1"
	tGrow_Bags_Reward[100]["RewardItem"] = {}
	tGrow_Bags_Reward[100]["RewardItem"][1] = {}
	tGrow_Bags_Reward[100]["RewardItem"][1]["Id"] = 201009
	tGrow_Bags_Reward[100]["RewardItem"][1]["Attr"] = "0 1 3"
	tGrow_Bags_Reward[100]["RewardEffect"] = {}
	tGrow_Bags_Reward[100]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 105级 获得新装备-混元塔，202009
	tGrow_Bags_Reward[105] = {}
	tGrow_Bags_Reward[105]["Log"] = "0,0,3000550,1,10001528,2,202009,1"
	tGrow_Bags_Reward[105]["RewardItem"] = {}
	tGrow_Bags_Reward[105]["RewardItem"][1] = {}
	tGrow_Bags_Reward[105]["RewardItem"][1]["Id"] = 202009
	tGrow_Bags_Reward[105]["RewardItem"][1]["Attr"] = "0 1 3"
	tGrow_Bags_Reward[105]["RewardEffect"] = {}
	tGrow_Bags_Reward[105]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 110级 赤炼石+3*2，730003
	tGrow_Bags_Reward[110] = {}
	tGrow_Bags_Reward[110]["Log"] = "0,0,3000550,1,10001528,2,730003,2"
	tGrow_Bags_Reward[110]["RewardItem"] = {}
	tGrow_Bags_Reward[110]["RewardItem"][1] = {}
	tGrow_Bags_Reward[110]["RewardItem"][1]["Id"] = 730003
	tGrow_Bags_Reward[110]["RewardItem"][1]["Attr"] = "0 2 3"
	tGrow_Bags_Reward[110]["RewardEffect"] = {}
	tGrow_Bags_Reward[110]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 115级 龙珠赠*4，1088000
	tGrow_Bags_Reward[115] = {}
	tGrow_Bags_Reward[115]["Log"] = "0,0,3000550,1,10001528,2,1088000,4"
	tGrow_Bags_Reward[115]["RewardItem"] = {}
	tGrow_Bags_Reward[115]["RewardItem"][1] = {}
	tGrow_Bags_Reward[115]["RewardItem"][1]["Id"] = 1088000
	tGrow_Bags_Reward[115]["RewardItem"][1]["Attr"] = "0 4 3"
	tGrow_Bags_Reward[115]["RewardEffect"] = {}
	tGrow_Bags_Reward[115]["RewardEffect"]["Effect"] = "angelwing"
	
-- 转世后奖励
local tGrow_Bags_MeteOpen = {}
	-- 1转	120	1个1阶段武器神魂+1000气力值	3001265
	tGrow_Bags_MeteOpen[120] = {}
	tGrow_Bags_MeteOpen[120]["level"] = 120
	tGrow_Bags_MeteOpen[120]["Mete"] = 1
	tGrow_Bags_MeteOpen[120]["StcData"] = 5
	tGrow_Bags_MeteOpen[120]["Log"] = "0,0,3000550,1,10001528,2,3001265[12],1[1000]"
	tGrow_Bags_MeteOpen[120]["RewardItem"] = {}
	tGrow_Bags_MeteOpen[120]["RewardItem"][1] = {}
	tGrow_Bags_MeteOpen[120]["RewardItem"][1]["Id"] = 3001265
	tGrow_Bags_MeteOpen[120]["RewardItem"][1]["Attr"] = "0 1 3"
	tGrow_Bags_MeteOpen[120]["RewardStrengthValue"] = {}
	tGrow_Bags_MeteOpen[120]["RewardStrengthValue"]["Value"] = 1000
	tGrow_Bags_MeteOpen[120]["RewardEffect"] = {}
	tGrow_Bags_MeteOpen[120]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 1转	125	2000气力值
	tGrow_Bags_MeteOpen[125] = {}
	tGrow_Bags_MeteOpen[125]["level"] = 125
	tGrow_Bags_MeteOpen[125]["Mete"] = 1
	tGrow_Bags_MeteOpen[125]["StcData"] = 10
	tGrow_Bags_MeteOpen[125]["Log"] = "0,0,3000550,1,10001528,2,12,2000"
	tGrow_Bags_MeteOpen[125]["RewardStrengthValue"] = {}
	tGrow_Bags_MeteOpen[125]["RewardStrengthValue"]["Value"] = 2000
	tGrow_Bags_MeteOpen[125]["RewardEffect"] = {}
	tGrow_Bags_MeteOpen[125]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 2转	130	1个3阶段武器神魂并且固化	729807
	tGrow_Bags_MeteOpen[130] = {}
	tGrow_Bags_MeteOpen[130]["level"] = 130
	tGrow_Bags_MeteOpen[130]["Mete"] = 2
	tGrow_Bags_MeteOpen[130]["StcData"] = 15
	tGrow_Bags_MeteOpen[130]["Log"] = "0,0,3000550,1,10001528,2,729807,1"
	tGrow_Bags_MeteOpen[130]["RewardItem"] = {}
	tGrow_Bags_MeteOpen[130]["RewardItem"][1] = {}
	tGrow_Bags_MeteOpen[130]["RewardItem"][1]["Id"] = 729807
	tGrow_Bags_MeteOpen[130]["RewardItem"][1]["Attr"] = "0 1"
	tGrow_Bags_MeteOpen[130]["RewardEffect"] = {}
	tGrow_Bags_MeteOpen[130]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 2转	131	4000气力值 + 明亮星陨石，3009001
	tGrow_Bags_MeteOpen[131] = {}
	tGrow_Bags_MeteOpen[131]["level"] = 131
	tGrow_Bags_MeteOpen[131]["Mete"] = 2
	tGrow_Bags_MeteOpen[131]["StcData"] = 20
	tGrow_Bags_MeteOpen[131]["LogId"] = 10001528
	tGrow_Bags_MeteOpen[131]["RewardItem"] = {}
	tGrow_Bags_MeteOpen[131]["RewardItem"][1] = {}
	tGrow_Bags_MeteOpen[131]["RewardItem"][1]["Id"] = 3009001
	tGrow_Bags_MeteOpen[131]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tGrow_Bags_MeteOpen[131]["RewardStrengthValue"] = {}
	tGrow_Bags_MeteOpen[131]["RewardStrengthValue"]["Value"] = 4000
	tGrow_Bags_MeteOpen[131]["RewardEffect"] = {}
	tGrow_Bags_MeteOpen[131]["RewardEffect"]["Effect"] = "angelwing"
	-- 2转	132	5000气力值 + 明亮星陨石*3
	tGrow_Bags_MeteOpen[132] = {}
	tGrow_Bags_MeteOpen[132]["level"] = 132
	tGrow_Bags_MeteOpen[132]["Mete"] = 2
	tGrow_Bags_MeteOpen[132]["StcData"] = 25
	tGrow_Bags_MeteOpen[132]["LogId"] = 10001528
	tGrow_Bags_MeteOpen[132]["RewardItem"] = {}
	tGrow_Bags_MeteOpen[132]["RewardItem"][1] = {}
	tGrow_Bags_MeteOpen[132]["RewardItem"][1]["Id"] = 3009001
	tGrow_Bags_MeteOpen[132]["RewardItem"][1]["Attr"] = "0 3 0 2880 1"
	tGrow_Bags_MeteOpen[132]["RewardStrengthValue"] = {}
	tGrow_Bags_MeteOpen[132]["RewardStrengthValue"]["Value"] = 5000
	tGrow_Bags_MeteOpen[132]["RewardEffect"] = {}
	tGrow_Bags_MeteOpen[132]["RewardEffect"]["Effect"] = "angelwing"
	-- 2转	133	6000气力值 + 明亮星陨石*5
	tGrow_Bags_MeteOpen[133] = {}
	tGrow_Bags_MeteOpen[133]["level"] = 133
	tGrow_Bags_MeteOpen[133]["Mete"] = 2
	tGrow_Bags_MeteOpen[133]["StcData"] = 30
	tGrow_Bags_MeteOpen[133]["LogId"] = 10001528
	tGrow_Bags_MeteOpen[133]["RewardItem"] = {}
	tGrow_Bags_MeteOpen[133]["RewardItem"][1] = {}
	tGrow_Bags_MeteOpen[133]["RewardItem"][1]["Id"] = 3009001
	tGrow_Bags_MeteOpen[133]["RewardItem"][1]["Attr"] = "0 5 0 2880 1"
	tGrow_Bags_MeteOpen[133]["RewardStrengthValue"] = {}
	tGrow_Bags_MeteOpen[133]["RewardStrengthValue"]["Value"] = 6000
	tGrow_Bags_MeteOpen[133]["RewardEffect"] = {}
	tGrow_Bags_MeteOpen[133]["RewardEffect"]["Effect"] = "angelwing"
	-- 2转	134	7000气力值 + 明亮星陨石*8
	tGrow_Bags_MeteOpen[134] = {}
	tGrow_Bags_MeteOpen[134]["level"] = 134
	tGrow_Bags_MeteOpen[134]["Mete"] = 2
	tGrow_Bags_MeteOpen[134]["StcData"] = 35
	tGrow_Bags_MeteOpen[134]["LogId"] = 10001528
	tGrow_Bags_MeteOpen[134]["RewardItem"] = {}
	tGrow_Bags_MeteOpen[134]["RewardItem"][1] = {}
	tGrow_Bags_MeteOpen[134]["RewardItem"][1]["Id"] = 3009001
	tGrow_Bags_MeteOpen[134]["RewardItem"][1]["Attr"] = "0 8 0 2880 1"
	tGrow_Bags_MeteOpen[134]["RewardStrengthValue"] = {}
	tGrow_Bags_MeteOpen[134]["RewardStrengthValue"]["Value"] = 7000
	tGrow_Bags_MeteOpen[134]["RewardEffect"] = {}
	tGrow_Bags_MeteOpen[134]["RewardEffect"]["Effect"] = "angelwing"
	-- 2转	135	8000气力值 + 明亮星陨石*10
	tGrow_Bags_MeteOpen[135] = {}
	tGrow_Bags_MeteOpen[135]["level"] = 135
	tGrow_Bags_MeteOpen[135]["Mete"] = 2
	tGrow_Bags_MeteOpen[135]["StcData"] = 40
	tGrow_Bags_MeteOpen[135]["LogId"] = 10001528
	tGrow_Bags_MeteOpen[135]["RewardItem"] = {}
	tGrow_Bags_MeteOpen[135]["RewardItem"][1] = {}
	tGrow_Bags_MeteOpen[135]["RewardItem"][1]["Id"] = 3305937
	tGrow_Bags_MeteOpen[135]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tGrow_Bags_MeteOpen[135]["RewardStrengthValue"] = {}
	tGrow_Bags_MeteOpen[135]["RewardStrengthValue"]["Value"] = 8000
	tGrow_Bags_MeteOpen[135]["RewardEffect"] = {}
	tGrow_Bags_MeteOpen[135]["RewardEffect"]["Effect"] = "angelwing"
	-- 2转	136	9000气力值 + 明亮星陨石*15
	tGrow_Bags_MeteOpen[136] = {}
	tGrow_Bags_MeteOpen[136]["level"] = 136
	tGrow_Bags_MeteOpen[136]["Mete"] = 2
	tGrow_Bags_MeteOpen[136]["StcData"] = 45
	tGrow_Bags_MeteOpen[136]["LogId"] = 10001528
	tGrow_Bags_MeteOpen[136]["RewardItem"] = {}
	tGrow_Bags_MeteOpen[136]["RewardItem"][1] = {}
	tGrow_Bags_MeteOpen[136]["RewardItem"][1]["Id"] = 3305937
	tGrow_Bags_MeteOpen[136]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tGrow_Bags_MeteOpen[136]["RewardItem"][2] = {}
	tGrow_Bags_MeteOpen[136]["RewardItem"][2]["Id"] = 3009001
	tGrow_Bags_MeteOpen[136]["RewardItem"][2]["Attr"] = "0 5 0 2880 1"
	tGrow_Bags_MeteOpen[136]["RewardStrengthValue"] = {}
	tGrow_Bags_MeteOpen[136]["RewardStrengthValue"]["Value"] = 9000
	tGrow_Bags_MeteOpen[136]["RewardEffect"] = {}
	tGrow_Bags_MeteOpen[136]["RewardEffect"]["Effect"] = "angelwing"
	-- 2转	137	10000气力值 + 明亮星陨石*20
	tGrow_Bags_MeteOpen[137] = {}
	tGrow_Bags_MeteOpen[137]["level"] = 137
	tGrow_Bags_MeteOpen[137]["Mete"] = 2
	tGrow_Bags_MeteOpen[137]["StcData"] = 50
	tGrow_Bags_MeteOpen[137]["LogId"] = 10001528
	tGrow_Bags_MeteOpen[137]["RewardItem"] = {}
	tGrow_Bags_MeteOpen[137]["RewardItem"][1] = {}
	tGrow_Bags_MeteOpen[137]["RewardItem"][1]["Id"] = 3305937
	tGrow_Bags_MeteOpen[137]["RewardItem"][1]["Attr"] = "0 2 0 2880 1"
	tGrow_Bags_MeteOpen[137]["RewardStrengthValue"] = {}
	tGrow_Bags_MeteOpen[137]["RewardStrengthValue"]["Value"] = 10000
	tGrow_Bags_MeteOpen[137]["RewardEffect"] = {}
	tGrow_Bags_MeteOpen[137]["RewardEffect"]["Effect"] = "angelwing"
	-- 2转	138	11000气力值 + 明亮星陨石*30
	tGrow_Bags_MeteOpen[138] = {}
	tGrow_Bags_MeteOpen[138]["level"] = 138
	tGrow_Bags_MeteOpen[138]["Mete"] = 2
	tGrow_Bags_MeteOpen[138]["StcData"] = 60
	tGrow_Bags_MeteOpen[138]["LogId"] = 10001528
	tGrow_Bags_MeteOpen[138]["RewardItem"] = {}
	tGrow_Bags_MeteOpen[138]["RewardItem"][1] = {}
	tGrow_Bags_MeteOpen[138]["RewardItem"][1]["Id"] = 3305937
	tGrow_Bags_MeteOpen[138]["RewardItem"][1]["Attr"] = "0 3 0 2880 1"
	tGrow_Bags_MeteOpen[138]["RewardStrengthValue"] = {}
	tGrow_Bags_MeteOpen[138]["RewardStrengthValue"]["Value"] = 11000
	tGrow_Bags_MeteOpen[138]["RewardEffect"] = {}
	tGrow_Bags_MeteOpen[138]["RewardEffect"]["Effect"] = "angelwing"
	-- 2转	139	12000气力值 + 明亮星陨石*40
	tGrow_Bags_MeteOpen[139] = {}
	tGrow_Bags_MeteOpen[139]["level"] = 139
	tGrow_Bags_MeteOpen[139]["Mete"] = 2
	tGrow_Bags_MeteOpen[139]["StcData"] = 60
	tGrow_Bags_MeteOpen[139]["LogId"] = 10001528
	tGrow_Bags_MeteOpen[139]["RewardItem"] = {}
	tGrow_Bags_MeteOpen[139]["RewardItem"][1] = {}
	tGrow_Bags_MeteOpen[139]["RewardItem"][1]["Id"] = 3305937
	tGrow_Bags_MeteOpen[139]["RewardItem"][1]["Attr"] = "0 4 0 2880 1"
	tGrow_Bags_MeteOpen[139]["RewardStrengthValue"] = {}
	tGrow_Bags_MeteOpen[139]["RewardStrengthValue"]["Value"] = 12000
	tGrow_Bags_MeteOpen[139]["RewardEffect"] = {}
	tGrow_Bags_MeteOpen[139]["RewardEffect"]["Effect"] = "angelwing"
	-- 2转	140	15000气力值 + 明亮星陨石*60
	tGrow_Bags_MeteOpen[140] = {}
	tGrow_Bags_MeteOpen[140]["level"] = 140
	tGrow_Bags_MeteOpen[140]["Mete"] = 2
	tGrow_Bags_MeteOpen[140]["StcData"] = 65
	tGrow_Bags_MeteOpen[140]["LogId"] = 10001528
	tGrow_Bags_MeteOpen[140]["DeleteItem"] = {}
	tGrow_Bags_MeteOpen[140]["DeleteItem"][1] = {}
	tGrow_Bags_MeteOpen[140]["DeleteItem"][1]["Id"] = 3000550
	tGrow_Bags_MeteOpen[140]["DeleteItem"][1]["SaveTime"] = 1
	tGrow_Bags_MeteOpen[140]["RewardItem"] = {}
	tGrow_Bags_MeteOpen[140]["RewardItem"][1] = {}
	tGrow_Bags_MeteOpen[140]["RewardItem"][1]["Id"] = 3305937
	tGrow_Bags_MeteOpen[140]["RewardItem"][1]["Attr"] = "0 6 0 2880 1"
	tGrow_Bags_MeteOpen[140]["RewardStrengthValue"] = {}
	tGrow_Bags_MeteOpen[140]["RewardStrengthValue"]["Value"] = 15000
	tGrow_Bags_MeteOpen[140]["RewardEffect"] = {}
	tGrow_Bags_MeteOpen[140]["RewardEffect"]["Effect"] = "angelwing"
	
-- 物品打开礼包
local tGrow_Bags_OpenItem = {}
	-- 3305936,'流星泪礼包'
	tGrow_Bags_OpenItem[3305936] = {}
	tGrow_Bags_OpenItem[3305936]["Log"] = "0,0,3305936,1,10001528,2,1088002,10"
	tGrow_Bags_OpenItem[3305936]["DeleteItem"] = {}
	tGrow_Bags_OpenItem[3305936]["DeleteItem"][1] = {}
	tGrow_Bags_OpenItem[3305936]["DeleteItem"][1]["Id"] = 3305936
	tGrow_Bags_OpenItem[3305936]["DeleteItem"][1]["SaveTime"] = 1
	tGrow_Bags_OpenItem[3305936]["RewardItem"] = {}
	tGrow_Bags_OpenItem[3305936]["RewardItem"][1] = {}
	tGrow_Bags_OpenItem[3305936]["RewardItem"][1]["Id"] = 1088002
	tGrow_Bags_OpenItem[3305936]["RewardItem"][1]["Attr"] = "0 10 3"
	tGrow_Bags_OpenItem[3305936]["RewardEffect"] = {}
	tGrow_Bags_OpenItem[3305936]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 3305937,'明亮星陨石礼包'
	tGrow_Bags_OpenItem[3305937] = {}
	tGrow_Bags_OpenItem[3305937]["Log"] = "0,0,3305937,1,10001528,2,3009001,10"
	tGrow_Bags_OpenItem[3305937]["DeleteItem"] = {}
	tGrow_Bags_OpenItem[3305937]["DeleteItem"][1] = {}
	tGrow_Bags_OpenItem[3305937]["DeleteItem"][1]["Id"] = 3305937
	tGrow_Bags_OpenItem[3305937]["DeleteItem"][1]["SaveTime"] = 1
	tGrow_Bags_OpenItem[3305937]["RewardItem"] = {}
	tGrow_Bags_OpenItem[3305937]["RewardItem"][1] = {}
	tGrow_Bags_OpenItem[3305937]["RewardItem"][1]["Id"] = 3009001
	tGrow_Bags_OpenItem[3305937]["RewardItem"][1]["Attr"] = "0 10 0 2880 1"
	tGrow_Bags_OpenItem[3305937]["RewardEffect"] = {}
	tGrow_Bags_OpenItem[3305937]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 累计登录大礼包
	tGrow_Bags_OpenItem[3305938] = {}
	-- 删除奖励
	tGrow_Bags_OpenItem[3305938]["Del"] = {}
	tGrow_Bags_OpenItem[3305938]["Del"]["DeleteItem"] = {}
	tGrow_Bags_OpenItem[3305938]["Del"]["DeleteItem"][1] = {}
	tGrow_Bags_OpenItem[3305938]["Del"]["DeleteItem"][1]["Id"] = 3305938
	tGrow_Bags_OpenItem[3305938]["Del"]["DeleteItem"][1]["SaveTime"] = 1
	-- 第二天登入送风雷翅，204009
	tGrow_Bags_OpenItem[3305938][1] = {}
	tGrow_Bags_OpenItem[3305938][1]["LogId"] = 12000916
	tGrow_Bags_OpenItem[3305938][1]["Phase"] = 1
	tGrow_Bags_OpenItem[3305938][1]["RewardItem"] = {}
	tGrow_Bags_OpenItem[3305938][1]["RewardItem"][1] = {}
	tGrow_Bags_OpenItem[3305938][1]["RewardItem"][1]["Id"] = 204009
	tGrow_Bags_OpenItem[3305938][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tGrow_Bags_OpenItem[3305938][1]["RewardEffect"] = {}
	tGrow_Bags_OpenItem[3305938][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 第三天登入送固化石，723694
	tGrow_Bags_OpenItem[3305938][2] = {}
	tGrow_Bags_OpenItem[3305938][2]["LogId"] = 12000916
	tGrow_Bags_OpenItem[3305938][2]["Phase"] = 2
	tGrow_Bags_OpenItem[3305938][2]["RewardItem"] = {}
	tGrow_Bags_OpenItem[3305938][2]["RewardItem"][1] = {}
	tGrow_Bags_OpenItem[3305938][2]["RewardItem"][1]["Id"] = 723694
	tGrow_Bags_OpenItem[3305938][2]["RewardItem"][1]["Attr"] = "0 1 3"
	tGrow_Bags_OpenItem[3305938][2]["RewardEffect"] = {}
	tGrow_Bags_OpenItem[3305938][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 第五天登入送配饰，2100045
	tGrow_Bags_OpenItem[3305938][4] = {}
	tGrow_Bags_OpenItem[3305938][4]["LogId"] = 12000916
	tGrow_Bags_OpenItem[3305938][4]["Phase"] = 4
	tGrow_Bags_OpenItem[3305938][4]["RewardItem"] = {}
	tGrow_Bags_OpenItem[3305938][4]["RewardItem"][1] = {}
	tGrow_Bags_OpenItem[3305938][4]["RewardItem"][1]["Id"] = 2100045
	tGrow_Bags_OpenItem[3305938][4]["RewardItem"][1]["Attr"] = "0 1 3"
	tGrow_Bags_OpenItem[3305938][4]["RewardEffect"] = {}
	tGrow_Bags_OpenItem[3305938][4]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 转世换道具令
	tGrow_Bags_OpenItem[3306214] = {}
	tGrow_Bags_OpenItem[3306214]["LogId"] = 12000916
	tGrow_Bags_OpenItem[3306214]["RewardItem"] = {}
	tGrow_Bags_OpenItem[3306214]["RewardItem"][1] = {}
	tGrow_Bags_OpenItem[3306214]["RewardItem"][1]["Id"] = 3306214
	tGrow_Bags_OpenItem[3306214]["RewardItem"][1]["Attr"] = "0 1 0 10080 1"
	tGrow_Bags_OpenItem[3306214]["RewardEffect"] = {}
	tGrow_Bags_OpenItem[3306214]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 删除物品转世换道具令
	tGrow_Bags_OpenItem[1] = {}
	tGrow_Bags_OpenItem[1]["LogId"] = 12000916
	tGrow_Bags_OpenItem[1]["DeleteItem"] = {}
	tGrow_Bags_OpenItem[1]["DeleteItem"][1] = {}
	tGrow_Bags_OpenItem[1]["DeleteItem"][1]["Id"] = 3306214
	
local tGrow_Bags_LevelReward = {}
	-- 全服前2000名达到100级的玩家额外获得100颗流星赠作为奖励
	tGrow_Bags_LevelReward[100] = {}
	tGrow_Bags_LevelReward[100]["LogId"] = 12000916
	tGrow_Bags_LevelReward[100]["RewardItem"] = {}
	tGrow_Bags_LevelReward[100]["RewardItem"][1] = {}
	tGrow_Bags_LevelReward[100]["RewardItem"][1]["Id"] = 3001270
	tGrow_Bags_LevelReward[100]["RewardItem"][1]["Attr"] = "0 1"
	-- tGrow_Bags_LevelReward[100]["GlobalId"] = 51822
	tGrow_Bags_LevelReward[100]["Pos"] = 0
	tGrow_Bags_LevelReward[100]["MaxData"] = 2000
	tGrow_Bags_LevelReward[100]["FullIndex"] = 1
	tGrow_Bags_LevelReward[100]["Phase"] = 1
	tGrow_Bags_LevelReward[100]["RewardEffect"] = {}
	tGrow_Bags_LevelReward[100]["RewardEffect"]["Effect"] = "angelwing"
	-- 全服前1000名达到120级的玩家额外获得7颗龙珠赠作为奖励
	tGrow_Bags_LevelReward[120] = {}
	tGrow_Bags_LevelReward[120]["LogId"] = 12000916
	tGrow_Bags_LevelReward[120]["RewardItem"] = {}
	tGrow_Bags_LevelReward[120]["RewardItem"][1] = {}
	tGrow_Bags_LevelReward[120]["RewardItem"][1]["Id"] = 1088000
	tGrow_Bags_LevelReward[120]["RewardItem"][1]["Attr"] = "0 7 3"
	-- tGrow_Bags_LevelReward[120]["GlobalId"] = 51822
	tGrow_Bags_LevelReward[120]["Pos"] = 1
	tGrow_Bags_LevelReward[120]["MaxData"] = 1000
	tGrow_Bags_LevelReward[120]["FullIndex"] = 1
	tGrow_Bags_LevelReward[120]["Phase"] = 2
	tGrow_Bags_LevelReward[120]["RewardEffect"] = {}
	tGrow_Bags_LevelReward[120]["RewardEffect"]["Effect"] = "angelwing"
	-- 全服前500名达到130级的玩家额外获得5000气力值+1颗璀璨星陨石作为奖励
	tGrow_Bags_LevelReward[130] = {}
	tGrow_Bags_LevelReward[130]["LogId"] = 12000916
	tGrow_Bags_LevelReward[130]["RewardItem"] = {}
	tGrow_Bags_LevelReward[130]["RewardItem"][1] = {}
	tGrow_Bags_LevelReward[130]["RewardItem"][1]["Id"] = 3009003
	tGrow_Bags_LevelReward[130]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tGrow_Bags_LevelReward[130]["RewardStrengthValue"] = {}
	tGrow_Bags_LevelReward[130]["RewardStrengthValue"]["Value"] = 5000
	-- tGrow_Bags_LevelReward[130]["GlobalId"] = 51822
	tGrow_Bags_LevelReward[130]["Pos"] = 2
	tGrow_Bags_LevelReward[130]["MaxData"] = 500
	tGrow_Bags_LevelReward[130]["FullIndex"] = 1
	tGrow_Bags_LevelReward[130]["Phase"] = 4
	tGrow_Bags_LevelReward[130]["RewardEffect"] = {}
	tGrow_Bags_LevelReward[130]["RewardEffect"]["Effect"] = "angelwing"
	-- 全服前100名到达135级的玩家可以获得绝版专属奖励。（如称号，配饰）
	-- tGrow_Bags_LevelReward[135] = {}
	-- tGrow_Bags_LevelReward[135]["LogId"] = 12000916
	-- tGrow_Bags_LevelReward[135]["RewardTitle"] = {}
	-- tGrow_Bags_LevelReward[135]["RewardTitle"][1] = {}
	-- tGrow_Bags_LevelReward[135]["RewardTitle"][1]["TitleType"] = 2056
	-- tGrow_Bags_LevelReward[135]["RewardTitle"][1]["TitleId"] = 2056
	-- tGrow_Bags_LevelReward[135]["RewardTitle"][1]["SaveTime"] = 0
	-- tGrow_Bags_LevelReward[135]["GlobalId"] = 51822
	-- tGrow_Bags_LevelReward[135]["Pos"] = 3
	-- tGrow_Bags_LevelReward[135]["MaxData"] = 100
	-- tGrow_Bags_LevelReward[135]["FullIndex"] = 1
	-- tGrow_Bags_LevelReward[135]["Phase"] = 8
	-- tGrow_Bags_LevelReward[135]["RewardEffect"] = {}
	-- tGrow_Bags_LevelReward[135]["RewardEffect"]["Effect"] = "angelwing"
	-- 全服前10名到达2转140级的玩家可以获得绝版专属奖励。（如称号，配饰）
	-- tGrow_Bags_LevelReward[140] = {}
	-- tGrow_Bags_LevelReward[140]["LogId"] = 12000916
	-- tGrow_Bags_LevelReward[140]["RewardTitle"] = {}
	-- tGrow_Bags_LevelReward[140]["RewardTitle"][1] = {}
	-- tGrow_Bags_LevelReward[140]["RewardTitle"][1]["TitleType"] = 2056
	-- tGrow_Bags_LevelReward[140]["RewardTitle"][1]["TitleId"] = 2056
	-- tGrow_Bags_LevelReward[140]["RewardTitle"][1]["SaveTime"] = 0
	-- tGrow_Bags_LevelReward[140]["GlobalId"] = 51822
	-- tGrow_Bags_LevelReward[140]["Pos"] = 4
	-- tGrow_Bags_LevelReward[140]["MaxData"] = 10
	-- tGrow_Bags_LevelReward[140]["FullIndex"] = 1
	-- tGrow_Bags_LevelReward[140]["Phase"] = 16
	-- tGrow_Bags_LevelReward[140]["RewardEffect"] = {}
	-- tGrow_Bags_LevelReward[140]["RewardEffect"]["Effect"] = "angelwing"
	
-- 弹框需要等级
local tGrow_Bags_MsgBoxLevel = {50,60,70,80,90,100,110,115,120,125,130,135,140}
local tGrow_Bags_MsgBox = {}
	-- 50级
	tGrow_Bags_MsgBox[1] = 1
	-- 60级
	tGrow_Bags_MsgBox[2] = 2
	-- 70级
	tGrow_Bags_MsgBox[3] = 4
	-- 80级
	tGrow_Bags_MsgBox[4] = 8
	-- 90级
	tGrow_Bags_MsgBox[5] = 16
	-- 100级
	tGrow_Bags_MsgBox[6] = 32
	-- 110级
	tGrow_Bags_MsgBox[7] = 64
	-- 115级
	tGrow_Bags_MsgBox[8] = 128
	-- 120级
	tGrow_Bags_MsgBox[9] = 256
	-- 125级
	tGrow_Bags_MsgBox[10] = 512
	-- 130级
	tGrow_Bags_MsgBox[11] = 1024
	-- 135级
	tGrow_Bags_MsgBox[12] = 2048
	-- 140级
	tGrow_Bags_MsgBox[13] = 4096
	
-- 武器检查
local tGrow_Bags_Equip = {}
	tGrow_Bags_Equip[3306214] = {}
	-- 武器位
	tGrow_Bags_Equip[3306214]["EquipPos"] = {}
	-- 左手
	tGrow_Bags_Equip[3306214]["EquipPos"][1] = 4
	-- 右手
	tGrow_Bags_Equip[3306214]["EquipPos"][2] = 5
	tGrow_Bags_Equip[3306214]["EquipCheckType"] = {}
	tGrow_Bags_Equip[3306214]["EquipCheckType"][1] = {}
	tGrow_Bags_Equip[3306214]["EquipCheckType"][1][1] = 410
	tGrow_Bags_Equip[3306214]["EquipCheckType"][1][4] = 601
	tGrow_Bags_Equip[3306214]["EquipCheckType"][1][5] = 610
	tGrow_Bags_Equip[3306214]["EquipCheckType"][1][6] = 611
	tGrow_Bags_Equip[3306214]["EquipCheckType"][1][3] = 613
	tGrow_Bags_Equip[3306214]["EquipCheckType"][1][7] = 617
	tGrow_Bags_Equip[3306214]["EquipCheckType"][1][8] = 619
	tGrow_Bags_Equip[3306214]["EquipCheckType"][1][2] = 624
	tGrow_Bags_Equip[3306214]["EquipCheckType"][1][9] = 626
	tGrow_Bags_Equip[3306214]["EquipCheckType"][2] = {}
	tGrow_Bags_Equip[3306214]["EquipCheckType"][2][1] = 420
	tGrow_Bags_Equip[3306214]["EquipCheckType"][2][4] = 601
	tGrow_Bags_Equip[3306214]["EquipCheckType"][2][5] = 610
	tGrow_Bags_Equip[3306214]["EquipCheckType"][2][6] = 612
	tGrow_Bags_Equip[3306214]["EquipCheckType"][2][3] = 613
	tGrow_Bags_Equip[3306214]["EquipCheckType"][2][7] = 617
	tGrow_Bags_Equip[3306214]["EquipCheckType"][2][8] = 421
	tGrow_Bags_Equip[3306214]["EquipCheckType"][2][2] = 624
	tGrow_Bags_Equip[3306214]["EquipCheckType"][2][9] = 626
	
--------------------------------------逻辑部分-------------------------------------------
-- 获取掩码值
function Grow_Bags_GetStcValue(nIndex,nUserId)
	local nEvent = tGrow_Bags_Stc[nIndex]["EventType"]
	local nType = tGrow_Bags_Stc[nIndex]["DataType"]
	
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId)
	return nData
end

--设置掩码值
function Grow_Bags_SetStcValue(nIndex,nData,nUserId)
	local nEvent = tGrow_Bags_Stc[nIndex]["EventType"]
	local nType = tGrow_Bags_Stc[nIndex]["DataType"]
	
	Task_SetStatistic(nEvent,nType,nData,1,nUserId)
	Task_SetStcTimestamp(nEvent,nType,0,nUserId)
end

-- 增加掩码值
function Grow_Bags_AddStcValue(nIndex,nData,nUserId)
	local nEvent = tGrow_Bags_Stc[nIndex]["EventType"]
	local nType = tGrow_Bags_Stc[nIndex]["DataType"]
	
	Task_AddStatistic(nEvent,nType,nData,1,nUserId)
	Task_SetStcTimestamp(nEvent,nType,0,nUserId)
end

-- 隔天重置
function Grow_Bags_ClearStcInterval(nIndex,nUserId)
	local nEvent = tGrow_Bags_Stc[nIndex]["EventType"]
	local nType = tGrow_Bags_Stc[nIndex]["DataType"]
	
	if Task_StcInterval(nEvent,nType,1,4,nUserId) then
		Task_SetStatistic(nEvent,nType,0,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	end
end

-- 二进制掩码chk
function Grow_Bags_ChkStcValue(nIndex,nNeedChkNum)
	local nEvent = tGrow_Bags_Stc[nIndex]["EventType"]
	local nType = tGrow_Bags_Stc[nIndex]["DataType"]
	local nValue = Get_UserStatisticValue(nEvent,nType,nUserId)

	if Sys_ParseNumbersContain(nNeedChkNum,nValue) then
		return true
	else
		return false
	end
end

-- 传送
function Grow_Bags_ChgMap(nIndex)
	local nMapId = Get_UserMapId()
	local bSend = false
	for i,v in pairs(tGrow_Bags_Count["MapId"]) do
		if nMapId == v then
			bSend = true
			break
		end
	end
	if bSend then
		local nMapId = tGrow_Bags_FindWay[nIndex]["MapId"]
		local nPosX = tGrow_Bags_FindWay[nIndex]["PosX"]
		local nPosY = tGrow_Bags_FindWay[nIndex]["PosY"]
		local nRange = tGrow_Bags_FindWay[nIndex]["Range"]
		-- 切地图传送
		User_UserRandBoundTrans(nMapId,nPosX,nPosY,nRange,nRange)
	end
end
---------------------------------------------------物品-------------------------------------------
-- 成长礼包阶段奖励
function Grow_Bags_UseItem(nLevel)
	--背包判断
	local nSpaceNum = RewardTemplate_GetRewardSpace(tGrow_Bags_Reward[nLevel])
	local bOther = false
	if nLevel == 100 then
		if Grow_Bags_ChkStcValue(6,tGrow_Bags_LevelReward[nLevel]["Phase"]) then
			bOther = true
			nSpaceNum = nSpaceNum + RewardTemplate_GetRewardSpace(tGrow_Bags_LevelReward[nLevel])
		end
	end
	if nSpaceNum > 0 and not User_CheckLeftSpace(nSpaceNum) then
		Sys_MsgBox(tGrow_Bags_Text["NoSpace"])
		return
	end
	
	-- 打掩码
	Grow_Bags_AddStcValue(1,5)
	-- 20级 主动，被动技能提升
	if nLevel == 20 then
		return
	end
	if bOther then
		Grow_Bags_AddStcValue(7,tGrow_Bags_LevelReward[nLevel]["Phase"])
		RewardTemplate_UseItemAndMsg(tGrow_Bags_LevelReward[nLevel])
	end
	RewardTemplate_UseItemAndMsg(tGrow_Bags_Reward[nLevel])
end

-- 120级以后的成长礼包
function Grow_Bags_OpenGrowItem(nItemId)
	-- 新掩码阶段
	local nData = Grow_Bags_GetStcValue(2)
	for i,v in pairs(tGrow_Bags_MeteOpen) do
		if nData < v["StcData"] then
			local nLevel = v["level"]
			local nMete = v["Mete"]
			-- 等级不足
			if not User_JudgeLevelAndMetempsychosis(nLevel,nMete) then
				local sTip = tGrow_Bags_Text["NoLevel"][nLevel]
				if nLevel >= 130 then
					local sTalk = tGrow_Bags_Text["NoLevel"][nLevel]
					sTip = string.format(sTalk,nLevel)
				end
				User_TalkChannel2005(sTip)
				return
			end
			-- 背包不足
			local nSpaceNum = RewardTemplate_GetRewardSpace(v)
			-- 额外奖励
			local bOther = false
			if tGrow_Bags_LevelReward[nLevel] ~= nil then
				if Grow_Bags_ChkStcValue(6,tGrow_Bags_LevelReward[nLevel]["Phase"]) then
					bOther = true
					nSpaceNum = nSpaceNum + RewardTemplate_GetRewardSpace(tGrow_Bags_LevelReward[nLevel])
				end
			end
			if nSpaceNum > 0 and User_CheckLeftSpace(nSpaceNum) then
				User_TalkChannel2005(tGrow_Bags_Text["NoSpace"])
				return
			end
			
			-- 打掩码
			Grow_Bags_AddStcValue(2,5)
			if bOther then
				Grow_Bags_AddStcValue(7,tGrow_Bags_LevelReward[nLevel]["Phase"])
				RewardTemplate_UseItemAndMsg(tGrow_Bags_LevelReward[nLevel])
			end
			-- 给奖励
			RewardTemplate_UseItemAndMsg(v)
			return
		end
	end
end

-- 累计登录大礼包
function Grow_Bags_GetReward(nItemId)
	-- 判断可领
	local nData = Grow_Bags_GetStcValue(3)
	if nData < 2 then
		return
	end
	
	local nPhase = 0
	local tReward = {}
	if nData == 2 then
		if not Grow_Bags_ChkStcValue(4,1) then
			tReward = CommonFunc_Copy(tGrow_Bags_OpenItem[nItemId][1])
			nPhase = nPhase + tGrow_Bags_Count["Phase"][1]
		end
	elseif nData >2 and nData < 5 then
		if not Grow_Bags_ChkStcValue(4,2) then
			tReward = CommonFunc_Copy(tGrow_Bags_OpenItem[nItemId][2])
			nPhase = nPhase + tGrow_Bags_Count["Phase"][2]
		end
	else
		local tAwardIndex = {}
		for i,v in pairs(tGrow_Bags_Count["Phase"]) do
			if not Grow_Bags_ChkStcValue(4,v) then
				table.insert(tAwardIndex,v)
				nPhase = nPhase + v
			end
		end
		tReward = CommonFunc_Copy(tGrow_Bags_OpenItem[nItemId][1])
		for i,v in pairs(tAwardIndex) do
			tReward["RewardItem"][i] = CommonFunc_Copy(tGrow_Bags_OpenItem[nItemId][v]["RewardItem"][1])
		end
	end
	
	-- 背包判断
	local nLastData = Grow_Bags_GetStcValue(4)
	if nLastData+nPhase == 7 then
		tReward["DeleteItem"] = CommonFunc_Copy(tGrow_Bags_OpenItem[nItemId]["Del"]["DeleteItem"])
	end
	if not RewardTemplate_CheckSpace(tReward) then
		return
	end
	
	-- 打掩码
	Grow_Bags_AddStcValue(4,nPhase)
	
	RewardTemplate_UseItemAndMsg(tReward)
end
--------------------------------------转世换道具令
-- 获取当前职业的type
function Grow_Bags_ProfessionType(nPro)
	for i,v in pairs(tGrow_Bags_Count["Profession"]) do
		if nPro >= v[1] and nPro <= v[2] then
			return i
		end
	end
end

-- 判断纯转
function Grow_Bags_IsMete(nUserId)
	--玩家转世次数
	local nMeteTimes = Get_UserMetempsychosis(nUserId)
	--取玩家职业
	local nUserPro = Get_UserProfession(nUserId)
	
	--转世不满足
	if nMeteTimes < 1 then
		return false
	end
	
	-- 1转判断当前与上一世比较
	if nMeteTimes == 1  then
		--当前世是铁扇门，未转世前也是铁扇门
		--  1转的时候，获得前世职业，需要通过Get_UserFirstPro(nUserId)，前世的职业保留在cq_user的first_prof
		local nOldPro = Get_UserFirstPro(nUserId)
		if Grow_Bags_ProfessionType(nOldPro) == Grow_Bags_ProfessionType(nUserPro) then
			return true
		else
			return false
		end
	end
	
	--2转及以上
	if nMeteTimes >= 2 then
		local nOldPro = Get_UserOldPro(nUserId) --取玩家前世职业
		if Grow_Bags_ProfessionType(nOldPro) == Grow_Bags_ProfessionType(nUserPro) then
			return true
		else
			return false
		end
	end
end

-- 获得转世换道具令
function Grow_Bags_RebirthItem()
	-- 转世等级不变
	--玩家转世次数
	local nUserId = Get_UserId()
	local nLevel = Get_UserLevel(nUserId)
	User_TalkChannel2005("转世等级："..nLevel,nUserId)
	local nMeteTimes = Get_UserMetempsychosis(nUserId)
	if nMeteTimes == 1  then
		local nLevel = tGrow_Bags_Count["LevelTo"][1]
		User_UpLevelTo(nLevel)
	else
		local nNewLevel = tGrow_Bags_Count["LevelTo"][2]
		User_UpLevelTo(nNewLevel)
	end
	
	-- 非纯转
	if not Grow_Bags_IsMete(nUserId) then
		-- 强插
		RewardTemplate_Reward(tGrow_Bags_OpenItem[3306214])
	end
end

-- 使用转世换道具令
function Grow_Bags_UseRebirthItem(nItemId)
	local bHave = Grow_Bags_CheckEquip(nItemId)
	if not bHave then
		return
	end
	
	--取玩家职业
	local nUserPro = Get_UserProfession(nUserId)
	local nNewType = Grow_Bags_ProfessionType(nUserPro)
	
	-- 切换并删除物品
	if RewardTemplate_UseItemAndMsg(tGrow_Bags_OpenItem[1]) then
		local nLeftPos = tGrow_Bags_Equip[nItemId]["EquipPos"][1]
		local nRightPos = tGrow_Bags_Equip[nItemId]["EquipPos"][2]
		local nLeftSubType = tGrow_Bags_Equip[nItemId]["EquipCheckType"][1][nNewType]
		local nRightSubType = tGrow_Bags_Equip[nItemId]["EquipCheckType"][2][nNewType]
		if Item_WeaponChangeSubtype(nLeftPos,nLeftSubType) and  Item_WeaponChangeSubtype(nRightPos,nRightSubType) then
			-- 提示转换成功
		end
	end
end

-- 武器检查
function Grow_Bags_CheckEquip(nItemId)
	--武器位
	local nEquipPos = 0
	--武器id
	local nWeaponId = 0
	--检查类型
	local nEquipCheckType = 0
	--玩家转世次数
	local nMeteTimes = Get_UserMetempsychosis(nUserId)
	-- 1转判断当前与上一世比较
	local nType = 0
	if nMeteTimes == 1  then
		--当前世是铁扇门，未转世前也是铁扇门
		--  1转的时候，获得前世职业，需要通过Get_UserFirstPro(nUserId)，前世的职业保留在cq_user的first_prof
		local nOldPro = Get_UserFirstPro(nUserId)
		nType = Grow_Bags_ProfessionType(nOldPro)
	else
		local nOldPro = Get_UserOldPro(nUserId) --取玩家前世职业
		nType = Grow_Bags_ProfessionType(nOldPro)
	end
	local nHave = 0
	for i=1,#tGrow_Bags_Equip[nItemId]["EquipPos"] do
		nEquipPos = tGrow_Bags_Equip[nItemId]["EquipPos"][i]
		for j=1,2 do
			nEquipCheckType = tGrow_Bags_Equip[nItemId]["EquipCheckType"][j][nType]
			if User_EquipCheck(nEquipPos,tGrow_Bags_Equip[nItemId]["EquipCheckType"][i][nType]) then
				nHave = nHave + 1
			end
		end
	end
	if nHave >= 2 then
		return true
	end
	return false
end
--------------------------------------上线触发-------------------------------------------
function Grow_Bags_OnLine()
	-- 上线累计+1
	local nData = Grow_Bags_GetStcValue(3)
	local nEvent = tGrow_Bags_Stc[3]["EventType"]
	local nType = tGrow_Bags_Stc[3]["DataType"]
	if nData >= 1 and Task_StcInterval(nEvent,nType,1,4) then
		Grow_Bags_AddStcValue(3,1)
	end
end
--------------------------------------物品模块-------------------------------------------
-- 3305936,'流星泪礼包'
tItem[3305936] = tItem[3305936] or {}
tItem[3305936]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tGrow_Bags_OpenItem[nItemId])
end
-- 3305937,'明亮星陨石礼包'
tItem[3305937] = tItem[3305936]
-- 3305938,'累计登录大礼包'
tItemFace[3305938] = 692
tItem[3305938] = tItem[3305938] or {}
tItem[3305938]["DialogueText"] = tGrow_Bags_Text[3305938]
tItem[3305938]["Text1-1"] = {111,112}
tItem[3305938]["tOption1-1"] = {111,112}
tItem[3305938]["ChkFunc1-1"] = function ()
	local nData = Grow_Bags_GetStcValue(3)
	local sText = tGrow_Bags_Text[3305938]["Text111"]
	tItem[3305938]["Text111"] = string.format(sText,nData)
	return true
end
-- 领取奖励--可领取显示，一键领取所有可领的
tItem[3305938]["OptionFunc111"] = "Grow_Bags_GetReward</N>3305938"
tItem[3305938]["OptionChkFunc111"] = function ()
	local nData = Grow_Bags_GetStcValue(3)
	if nData >= 2 then
		return true
	end
	return false
end
-- 阁下未达指定天数--不可领显示
tItem[3305938]["OptionChkFunc112"] = function ()
	local nData = Grow_Bags_GetStcValue(3)
	if nData < 2 then
		return true
	elseif nData == 2 then
		if Grow_Bags_ChkStcValue(4,1) then
			return true
		end
	elseif nData >2 and nData < 5 then
		if Grow_Bags_ChkStcValue(4,2) then
			return true
		end
	else
		local nNum = 0
		for i,v in pairs(tGrow_Bags_Count["Phase"]) do
			if not Grow_Bags_ChkStcValue(4,v) then
				return false
			else
				nNum = nNum +1
			end
		end
		if nNum == 3 then
			return true
		end
	end
	return false
end

-- 3306214 装备转换令
tItem[3306214] = tItem[3306214] or {}
tItem[3306214]["Function"] = function(nItemId,sItemName)
	Grow_Bags_UseRebirthItem(nItemId)
end

--------------------------------------上线触发-------------------------------------------
tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
table.insert(tSystem_PlayLogin_Func,Grow_Bags_OnLine)
