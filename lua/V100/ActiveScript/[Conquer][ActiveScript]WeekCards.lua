------------------------------------------------------------------------------------
--Name:		[简体征服][活动脚本]周卡包活动
--Purpose:	周卡包活动
--Creator: 	严振飞
--Created:	2015/12/23
------------------------------------------------------------------------------------

-- 命名前缀
-- WeekCards_

-- 掩码说明
--	stc(139,79)		记录-- 极速升级周礼包 --打开次数
--	stc(139,80)		记录-- 极速升级周礼包 --购买后的天数

--	stc(139,81)		记录-- 赤炼成堆周礼包 --打开次数
--	stc(139,82)		记录-- 赤炼成堆周礼包 --购买后的天数

--	stc(139,83)		记录-- 极品神魂周礼包 --打开次数
--	stc(139,84)		记录-- 极品神魂周礼包 --购买后的天数

--	stc(139,85)		记录-- 袖纳乾坤周礼包 --打开次数
--	stc(139,86)		记录-- 袖纳乾坤周礼包 --购买后的天数

--	stc(139,87)		记录-- 属性秘令周礼包 --打开次数
--	stc(139,88)		记录-- 属性秘令周礼包 --购买后的天数

--	stc(139,89)		记录-- 内功修为周礼包 --打开次数
--	stc(139,90)		记录-- 内功修为周礼包 --购买后的天数

--	stc(139,91)		记录-- 海量天石周礼包 --打开次数
--	stc(139,92)		记录-- 海量天石周礼包 --购买后的天数

-- LOG-id:12000293

------------------------------------------------------------------------------------
--STC掩码表
local tWeekCards_Stc = {}
-- 记录-- 极速升级周礼包
	tWeekCards_Stc[3008160] = {}
	-- 打开次数
	tWeekCards_Stc[3008160][1] = {}
	tWeekCards_Stc[3008160][1]["EventData"] = 139
	tWeekCards_Stc[3008160][1]["TypeData"] = 79
	tWeekCards_Stc[3008160][1]["Complete"] = 6
	-- 购买后的天数
	tWeekCards_Stc[3008160][2] = {}
	tWeekCards_Stc[3008160][2]["EventData"] = 139
	tWeekCards_Stc[3008160][2]["TypeData"] = 80

-- 记录-- 赤炼成堆周礼包
	tWeekCards_Stc[3008161] = {}
	-- 打开次数
	tWeekCards_Stc[3008161][1] = {}
	tWeekCards_Stc[3008161][1]["EventData"] = 139
	tWeekCards_Stc[3008161][1]["TypeData"] = 81
	tWeekCards_Stc[3008161][1]["Complete"] = 6
	-- 购买后的天数
	tWeekCards_Stc[3008161][2] = {}
	tWeekCards_Stc[3008161][2]["EventData"] = 139
	tWeekCards_Stc[3008161][2]["TypeData"] = 82

-- 记录-- 极品神魂周礼包
	tWeekCards_Stc[3008162] = {}
	-- 打开次数
	tWeekCards_Stc[3008162][1] = {}
	tWeekCards_Stc[3008162][1]["EventData"] = 139
	tWeekCards_Stc[3008162][1]["TypeData"] = 83
	tWeekCards_Stc[3008162][1]["Complete"] = 6
	-- 购买后的天数
	tWeekCards_Stc[3008162][2] = {}
	tWeekCards_Stc[3008162][2]["EventData"] = 139
	tWeekCards_Stc[3008162][2]["TypeData"] = 84
	
-- 记录-- 袖纳乾坤周礼包
	tWeekCards_Stc[3008163] = {}
	-- 打开次数
	tWeekCards_Stc[3008163][1] = {}
	tWeekCards_Stc[3008163][1]["EventData"] = 139
	tWeekCards_Stc[3008163][1]["TypeData"] = 85
	tWeekCards_Stc[3008163][1]["Complete"] = 6
	-- 购买后的天数
	tWeekCards_Stc[3008163][2] = {}
	tWeekCards_Stc[3008163][2]["EventData"] = 139
	tWeekCards_Stc[3008163][2]["TypeData"] = 86

-- 记录-- 属性秘令周礼包
	tWeekCards_Stc[3008164] = {}
	-- 打开次数
	tWeekCards_Stc[3008164][1] = {}
	tWeekCards_Stc[3008164][1]["EventData"] = 139
	tWeekCards_Stc[3008164][1]["TypeData"] = 87
	tWeekCards_Stc[3008164][1]["Complete"] = 6
	-- 购买后的天数
	tWeekCards_Stc[3008164][2] = {}
	tWeekCards_Stc[3008164][2]["EventData"] = 139
	tWeekCards_Stc[3008164][2]["TypeData"] = 88
	
-- 记录-- 内功修为周礼包
	tWeekCards_Stc[3008165] = {}
	-- 打开次数
	tWeekCards_Stc[3008165][1] = {}
	tWeekCards_Stc[3008165][1]["EventData"] = 139
	tWeekCards_Stc[3008165][1]["TypeData"] = 89
	tWeekCards_Stc[3008165][1]["Complete"] = 6
	-- 购买后的天数
	tWeekCards_Stc[3008165][2] = {}
	tWeekCards_Stc[3008165][2]["EventData"] = 139
	tWeekCards_Stc[3008165][2]["TypeData"] = 90

-- 记录-- 海量天石周礼包 --打开次数
	tWeekCards_Stc[3008166] = {}
	-- 打开次数
	tWeekCards_Stc[3008166][1] = {}
	tWeekCards_Stc[3008166][1]["EventData"] = 139
	tWeekCards_Stc[3008166][1]["TypeData"] = 91
	tWeekCards_Stc[3008166][1]["Complete"] = 6
	-- 购买后的天数
	tWeekCards_Stc[3008166][2] = {}
	tWeekCards_Stc[3008166][2]["EventData"] = 139
	tWeekCards_Stc[3008166][2]["TypeData"] = 92

------------------------------------------------------------------------------------
-- 基础数据
local tWeekCards_Data = {}
	-- 活动时间
	-- tWeekCards_Data["Festival_BefTime"] = "2016-01-01 00:00 2016-06-22 23:59"
	-- tWeekCards_Data["Festival_NowTime"] = "2016-06-23 00:00 2016-07-22 23:59"

	-- 背包空间
	tWeekCards_Data["ChkSpace1"] = 1
	-- tWeekCards_Data["ChkSpace2"] = 2
	tWeekCards_Data["GlobalAc"] = 51131
	
	-- 经验保护状态
	tWeekCards_Data["Status"] = 149
	tWeekCards_Data["Power"] = 200
	tWeekCards_Data["Secs"] = 18000
	tWeekCards_Data["Times"] = 0
	tWeekCards_Data["RemainTime"] = 0
	tWeekCards_Data["EndTime"] = 18000
	tWeekCards_Data["Recordable"] = 1

	-- +3赤炼石
	tWeekCards_Data["Stone3"] = 730003
	
	-- LOG记录类型
	tWeekCards_Data["LogType"] = {}
	tWeekCards_Data["LogType"]["ExpTime"] = 4			-- 获得经验时间
	tWeekCards_Data["LogType"]["ExpPercent"] = "4%"		-- 获得百分比经验
	tWeekCards_Data["LogType"]["Cultivation"] = 6		-- 修行值
	tWeekCards_Data["LogType"]["RoleStatus"] = 13		-- 状态
	tWeekCards_Data["LogType"]["StrengthValue"] = 12 	-- 气力值
	tWeekCards_Data["LogType"]["CultureValue"] = 19 	-- 修为值
	tWeekCards_Data["LogType"]["RidingPoints"] = 14 	-- 骑马积分
	tWeekCards_Data["LogType"]["EMoneyMono"] = 3 		-- 赠点天石
	tWeekCards_Data["LogType"]["FreePractNum"] = 17 	-- 免费修炼
	
	-- 周礼包促销专员ID
	tWeekCards_Data["NpcId"] = 19029
	-- 周卡礼包时效--10天
	tWeekCards_Data["KeepTime"] = "0 0 0 14400 1"
	-- 各周卡对应的天石数
	tWeekCards_Data[3008160] = 199
	tWeekCards_Data[3008161] = 299
	tWeekCards_Data[3008162] = 199
	tWeekCards_Data[3008163] = 499
	tWeekCards_Data[3008164] = 499
	tWeekCards_Data[3008165] = 299
	tWeekCards_Data[3008166] = 399

	-- 续费卷对应的周卡
	tWeekCards_Data[3008167] = 3008160
	tWeekCards_Data[3008168] = 3008161
	tWeekCards_Data[3008169] = 3008162
	tWeekCards_Data[3008170] = 3008163
	tWeekCards_Data[3008171] = 3008164
	tWeekCards_Data[3008172] = 3008165
	tWeekCards_Data[3008173] = 3008166
	
	
-- 光效
	tWeekCards_Data["EffectObj"] = "self"
	tWeekCards_Data["Effect"] = "zf2-e129"
	
-- 周卡对应的续费卷
local tWeekCards_Pack2Reset = {}
	tWeekCards_Pack2Reset[3008160] = 3008167
	tWeekCards_Pack2Reset[3008161] = 3008168
	tWeekCards_Pack2Reset[3008162] = 3008169
	tWeekCards_Pack2Reset[3008163] = 3008170
	tWeekCards_Pack2Reset[3008164] = 3008171
	tWeekCards_Pack2Reset[3008165] = 3008172
	tWeekCards_Pack2Reset[3008166] = 3008173

	
-- 职业编号 -- 方便物品不同职业出不同对白
local tWeekCards_Pro = {}
	-- 勇士（10-15）
	tWeekCards_Pro[1] = {}
	tWeekCards_Pro[1]["Min"] = G_PRO_Trojan0
	tWeekCards_Pro[1]["Max"] = G_PRO_Trojan5
	-- 战士（20-25）
	tWeekCards_Pro[2] = {}
	tWeekCards_Pro[2]["Min"] = G_PRO_Warrior0
	tWeekCards_Pro[2]["Max"] = G_PRO_Warrior5
	-- 弓手（40-45）
	tWeekCards_Pro[3] = {}
	tWeekCards_Pro[3]["Min"] = G_PRO_Archer0
	tWeekCards_Pro[3]["Max"] = G_PRO_Archer5
	-- 忍者（50-55）
	tWeekCards_Pro[4] = {}
	tWeekCards_Pro[4]["Min"] = G_PRO_Ninja0
	tWeekCards_Pro[4]["Max"] = G_PRO_Ninja5
	-- 武僧（60-65）
	tWeekCards_Pro[5] = {}
	tWeekCards_Pro[5]["Min"] = G_PRO_Monk0
	tWeekCards_Pro[5]["Max"] = G_PRO_Monk5
	-- 海盗（70-75）
	tWeekCards_Pro[6] = {}
	tWeekCards_Pro[6]["Min"] = G_PRO_Pirate0
	tWeekCards_Pro[6]["Max"] = G_PRO_Pirate5
	-- 拳师（80-85）
	tWeekCards_Pro[7] = {}
	tWeekCards_Pro[7]["Min"] = G_PRO_Dragon0
	tWeekCards_Pro[7]["Max"] = G_PRO_Dragon5
	-- 道士（100-145）
	tWeekCards_Pro[8] = {}
	tWeekCards_Pro[8]["Min"] = G_PRO_Taoist0
	tWeekCards_Pro[8]["Max"] = G_PRO_FireTaoist5
	-- 铁扇门（160-165）
	tWeekCards_Pro[9] = {}
	tWeekCards_Pro[9]["Min"] = G_PRO_IroFan0
	tWeekCards_Pro[9]["Max"] = G_PRO_IroFan5
	
	--雷神（90-95）
	tWeekCards_Pro[10] = {}
	tWeekCards_Pro[10]["Min"] = G_PRO_Thor0
	tWeekCards_Pro[10]["Max"] = G_PRO_Thor5
	
	
	
-- 礼包的给予物品ID
local tWeekCards_PackData_ItemId = {}
------ 【极品2D武器兑换卷】 -- 武器ID
	tWeekCards_PackData_ItemId[3005889] = {}
	tWeekCards_PackData_ItemId[3005889]["ItemAttr"] = "0 0 3 0 0 0 0 0 0 0 0 255 255" -- 物品属性
	tWeekCards_PackData_ItemId[3005889]["ItemType"] = "GetWeapon"							 -- 对白LOG类型
	-- 勇士
	tWeekCards_PackData_ItemId[3005889][1] = {}
	tWeekCards_PackData_ItemId[3005889][1][1] = 510199	-- 五虎追风刀
	tWeekCards_PackData_ItemId[3005889][1][2] = 420199	-- 赤霄剑
	tWeekCards_PackData_ItemId[3005889][1][3] = 480199	-- 珊银棒
	-- 战士
	tWeekCards_PackData_ItemId[3005889][2] = {}
	tWeekCards_PackData_ItemId[3005889][2][1] = 561199	-- 熟铜棍
	tWeekCards_PackData_ItemId[3005889][2][2] = 560199	-- 梅花枪
	tWeekCards_PackData_ItemId[3005889][2][3] = 624199	-- 苍之怒焰
	-- 弓手
	tWeekCards_PackData_ItemId[3005889][3] = {}
	tWeekCards_PackData_ItemId[3005889][3][1] = 500189	-- 乐浪檀弓
	tWeekCards_PackData_ItemId[3005889][3][2] = 613189	-- 幽冥飞刀
	-- 忍者
	tWeekCards_PackData_ItemId[3005889][4] = {}
	tWeekCards_PackData_ItemId[3005889][4][1] = 601199	-- 太岁宗道
	tWeekCards_PackData_ItemId[3005889][4][2] = 511199	-- 封魔战镰
	-- 武僧
	tWeekCards_PackData_ItemId[3005889][5] = {}
	tWeekCards_PackData_ItemId[3005889][5][1] = 610199	-- 镇狱念珠
	-- 海盗
	tWeekCards_PackData_ItemId[3005889][6] = {}
	tWeekCards_PackData_ItemId[3005889][6][1] = 611199	-- 血狱之剑
	tWeekCards_PackData_ItemId[3005889][6][2] = 612199	-- 恸哭火枪
	-- 拳师
	tWeekCards_PackData_ItemId[3005889][7] = {}
	tWeekCards_PackData_ItemId[3005889][7][1] = 617199	-- 聚灵双龙棍
	-- 道士
	tWeekCards_PackData_ItemId[3005889][8] = {}
	tWeekCards_PackData_ItemId[3005889][8][1] = 421199	-- 赤霞剑
	
	-- 铁扇门
	tWeekCards_PackData_ItemId[3005889][9] = {}
	tWeekCards_PackData_ItemId[3005889][9][1] = 626199	-- 扇子
	
	-- 雷神
	tWeekCards_PackData_ItemId[3005889][10] = {}
	tWeekCards_PackData_ItemId[3005889][10][1] = 681199	-- 100级雷神之锤
	tWeekCards_PackData_ItemId[3005889][10][2] = 680199	-- 100级风暴战斧
	
--------------------------------------------
------ 【四阶神魂礼包】 -- 四阶神魂ID
	tWeekCards_PackData_ItemId[3005891] = {}
	tWeekCards_PackData_ItemId[3005891]["ItemAttr"] = "0 0 3"	 -- 物品属性
	tWeekCards_PackData_ItemId[3005891]["ItemType"] = "GetP4DragonSoul"	 -- 对白LOG类型

	-- 勇士
	tWeekCards_PackData_ItemId[3005891][1] = {}
	tWeekCards_PackData_ItemId[3005891][1][1] = 800014 -- 掩日灵剑（四阶神魂）
	tWeekCards_PackData_ItemId[3005891][1][2] = 800015 -- 银月灵锤（四阶神魂）
	tWeekCards_PackData_ItemId[3005891][1][3] = 823052 -- 紫郢宝戒（四阶神魂）
	-- 战士
	tWeekCards_PackData_ItemId[3005891][2] = {}
	tWeekCards_PackData_ItemId[3005891][2][1] = 800214 -- 寒螭灵戟（四阶神魂）
	tWeekCards_PackData_ItemId[3005891][2][2] = 823052 -- 紫郢宝戒（四阶神魂）
	tWeekCards_PackData_ItemId[3005891][2][3] = 801208 -- 四阶暴击系战士史诗（四阶神魂）
	tWeekCards_PackData_ItemId[3005891][2][4] = 801210 -- 四阶粉碎系战士史诗（四阶神魂）
	-- 弓手
	tWeekCards_PackData_ItemId[3005891][3] = {}
	tWeekCards_PackData_ItemId[3005891][3][1] = 800613 -- 潜龙灵弓（四阶神魂）
	tWeekCards_PackData_ItemId[3005891][3][2] = 800913 -- 冥判虎翼（四阶神魂）
	tWeekCards_PackData_ItemId[3005891][3][3] = 823053 -- 凌岳宝指（四阶神魂）
	-- 忍者
	tWeekCards_PackData_ItemId[3005891][4] = {}
	tWeekCards_PackData_ItemId[3005891][4][1] = 800016 -- 鬼丸国纲（四阶神魂）
	tWeekCards_PackData_ItemId[3005891][4][2] = 800253 -- 灭绝邪镰（四阶神魂）
	tWeekCards_PackData_ItemId[3005891][4][3] = 823052 -- 紫郢宝戒（四阶神魂）
	-- 武僧
	tWeekCards_PackData_ItemId[3005891][5] = {}
	tWeekCards_PackData_ItemId[3005891][5][1] = 800720 -- 灭绝邪镰（四阶神魂）
	tWeekCards_PackData_ItemId[3005891][5][2] = 823052 -- 紫郢宝戒（四阶神魂）
	-- 海盗
	tWeekCards_PackData_ItemId[3005891][6] = {}
	tWeekCards_PackData_ItemId[3005891][6][1] = 800808 -- 泰坦之剑（四阶神魂）
	tWeekCards_PackData_ItemId[3005891][6][2] = 800803 -- 暗黑之枪（四阶神魂）
	tWeekCards_PackData_ItemId[3005891][6][3] = 823052 -- 紫郢宝戒（四阶神魂）
	-- 拳师
	tWeekCards_PackData_ItemId[3005891][7] = {}
	tWeekCards_PackData_ItemId[3005891][7][1] = 801002 -- 炽焰赤鳞（四阶神魂）
	tWeekCards_PackData_ItemId[3005891][7][2] = 823052 -- 紫郢宝戒（四阶神魂）
	-- 道士
	tWeekCards_PackData_ItemId[3005891][8] = {}
	tWeekCards_PackData_ItemId[3005891][8][1] = 800512 -- 莲华灵剑（四阶神魂）
	tWeekCards_PackData_ItemId[3005891][8][2] = 823054 -- 泣月宝镯（四阶神魂）
	-- 铁扇门
	tWeekCards_PackData_ItemId[3005891][9] = {}
	tWeekCards_PackData_ItemId[3005891][9][1] = 801304 -- 4阶铁扇武器神魂
	tWeekCards_PackData_ItemId[3005891][9][2] = 823052 -- 紫郢宝戒（四阶神魂）

	-- 雷神
	tWeekCards_PackData_ItemId[3005891][10] = {}
	tWeekCards_PackData_ItemId[3005891][10][1] = 827004 -- 风暴战锤（四阶神魂）
	tWeekCards_PackData_ItemId[3005891][10][2] = 827005 -- 风暴战斧（四阶神魂）
	tWeekCards_PackData_ItemId[3005891][10][3] = 823052 -- 紫郢宝戒（四阶神魂）
--------------------------------------------
	-- 【五阶神魂礼包】 -- 五阶神魂ID
	tWeekCards_PackData_ItemId[3005892] = {}
	tWeekCards_PackData_ItemId[3005892]["ItemAttr"] = "0 0 3"	 -- 物品属性
	tWeekCards_PackData_ItemId[3005892]["ItemType"] = "GetP5DragonSoul"	 -- 对白LOG类型
	-- 战士
	tWeekCards_PackData_ItemId[3005892][2] = {}
	tWeekCards_PackData_ItemId[3005892][2][1] = 800415 -- 雷纹盾（五阶神魂）
	tWeekCards_PackData_ItemId[3005892][2][2] = 820056 -- 冰凝头饰（五阶神魂）
	tWeekCards_PackData_ItemId[3005892][2][3] = 821028 -- 御灵仙坠（五阶神魂）
	-- 道士
	tWeekCards_PackData_ItemId[3005892][8] = {}
	tWeekCards_PackData_ItemId[3005892][8][1] = 820057 -- 六阳头饰（五阶神魂）
	tWeekCards_PackData_ItemId[3005892][8][2] = 821030 -- 苍木仙囊（五阶神魂）
	-- 其他职业
	tWeekCards_PackData_ItemId[3005892]["General"] = {}
	tWeekCards_PackData_ItemId[3005892]["General"][1] = 820056 -- 冰凝头饰（五阶神魂）
	tWeekCards_PackData_ItemId[3005892]["General"][2] = 821028 -- 御灵仙坠（五阶神魂）
	
--------------------------------------------
------ 【六阶神魂礼包】 -- 六阶神魂ID
	tWeekCards_PackData_ItemId[3005893] = {}
	tWeekCards_PackData_ItemId[3005893]["ItemAttr"] = "0 0 3"	 -- 物品属性
	tWeekCards_PackData_ItemId[3005893]["ItemType"] = "GetP6DragonSoul"	 -- 对白LOG类型
	-- 勇士
	tWeekCards_PackData_ItemId[3005893][1] = {}
	tWeekCards_PackData_ItemId[3005893][1][1] = 800000 -- 紫魔刃（六阶神魂）
	tWeekCards_PackData_ItemId[3005893][1][2] = 800110 -- 魔吕锤（六阶神魂）
	tWeekCards_PackData_ItemId[3005893][1][3] = 822053 -- 千漩仙铠（六阶神魂）
	tWeekCards_PackData_ItemId[3005893][1][4] = 822055 -- 天瀑仙袍（六阶神魂）
	tWeekCards_PackData_ItemId[3005893][1][5] = 823055 -- 盘龙玄戒（六阶神魂）
	tWeekCards_PackData_ItemId[3005893][1][6] = 820071 -- 九曜玄羽（六阶神魂）
	tWeekCards_PackData_ItemId[3005893][1][7] = 821031 -- 晶魄玄坠（六阶神魂）
	tWeekCards_PackData_ItemId[3005893][1][8] = 824017 -- 天行玄履（六阶神魂）
	-- 战士
	tWeekCards_PackData_ItemId[3005893][2] = {}
	tWeekCards_PackData_ItemId[3005893][2][1] = 800320 -- 龙翼长棍（六阶神魂）
	tWeekCards_PackData_ItemId[3005893][2][2] = 822053 -- 千漩仙铠（六阶神魂）
	tWeekCards_PackData_ItemId[3005893][2][3] = 822055 -- 天瀑仙袍（六阶神魂）
	tWeekCards_PackData_ItemId[3005893][2][4] = 823055 -- 盘龙玄戒（六阶神魂）
	tWeekCards_PackData_ItemId[3005893][2][5] = 820071 -- 九曜玄羽（六阶神魂）
	tWeekCards_PackData_ItemId[3005893][2][6] = 821031 -- 晶魄玄坠（六阶神魂）
	tWeekCards_PackData_ItemId[3005893][2][7] = 824017 -- 天行玄履（六阶神魂）
	tWeekCards_PackData_ItemId[3005893][2][8] = 801212 -- 六阶暴击系战士史诗（六阶神魂）
	tWeekCards_PackData_ItemId[3005893][2][9] = 801214 -- 六阶粉碎系战士史诗（六阶神魂）
	-- 弓手
	tWeekCards_PackData_ItemId[3005893][3] = {}
	tWeekCards_PackData_ItemId[3005893][3][1] = 800616 -- 天翼弓（六阶神魂）
	tWeekCards_PackData_ItemId[3005893][3][2] = 800916 -- 帝青龙牙（六阶神魂）
	tWeekCards_PackData_ItemId[3005893][3][3] = 822053 -- 千漩仙铠（六阶神魂）
	tWeekCards_PackData_ItemId[3005893][3][4] = 822055 -- 天瀑仙袍（六阶神魂）
	tWeekCards_PackData_ItemId[3005893][3][5] = 823055 -- 盘龙玄戒（六阶神魂）
	tWeekCards_PackData_ItemId[3005893][3][6] = 820071 -- 九曜玄羽（六阶神魂）
	tWeekCards_PackData_ItemId[3005893][3][7] = 821031 -- 晶魄玄坠（六阶神魂）
	tWeekCards_PackData_ItemId[3005893][3][8] = 824017 -- 天行玄履（六阶神魂）
	-- 忍者
	tWeekCards_PackData_ItemId[3005893][4] = {}
	tWeekCards_PackData_ItemId[3005893][4][1] = 800017 -- 隐夜忍刀（六阶神魂）
	tWeekCards_PackData_ItemId[3005893][4][2] = 800254 -- 勾魂神镰（六阶神魂）
	tWeekCards_PackData_ItemId[3005893][4][3] = 822053 -- 千漩仙铠（六阶神魂）
	tWeekCards_PackData_ItemId[3005893][4][4] = 822055 -- 天瀑仙袍（六阶神魂）
	tWeekCards_PackData_ItemId[3005893][4][5] = 823055 -- 盘龙玄戒（六阶神魂）
	tWeekCards_PackData_ItemId[3005893][4][6] = 820071 -- 九曜玄羽（六阶神魂）
	tWeekCards_PackData_ItemId[3005893][4][7] = 821031 -- 晶魄玄坠（六阶神魂）
	tWeekCards_PackData_ItemId[3005893][4][8] = 824017 -- 天行玄履（六阶神魂）
	-- 武僧
	tWeekCards_PackData_ItemId[3005893][5] = {}
	tWeekCards_PackData_ItemId[3005893][5][1] = 800722 -- 定海玄珠（六阶神魂）
	tWeekCards_PackData_ItemId[3005893][5][2] = 822053 -- 千漩仙铠（六阶神魂）
	tWeekCards_PackData_ItemId[3005893][5][3] = 822055 -- 天瀑仙袍（六阶神魂）
	tWeekCards_PackData_ItemId[3005893][5][4] = 823055 -- 盘龙玄戒（六阶神魂）
	tWeekCards_PackData_ItemId[3005893][5][5] = 820071 -- 九曜玄羽（六阶神魂）
	tWeekCards_PackData_ItemId[3005893][5][6] = 821031 -- 晶魄玄坠（六阶神魂）
	tWeekCards_PackData_ItemId[3005893][5][7] = 824017 -- 天行玄履（六阶神魂）
	-- 海盗
	tWeekCards_PackData_ItemId[3005893][6] = {}
	tWeekCards_PackData_ItemId[3005893][6][1] = 800809 -- 命运之剑（六阶神魂）
	tWeekCards_PackData_ItemId[3005893][6][2] = 800804 -- 岁月之枪（六阶神魂）
	tWeekCards_PackData_ItemId[3005893][6][3] = 822053 -- 千漩仙铠（六阶神魂）
	tWeekCards_PackData_ItemId[3005893][6][4] = 822055 -- 天瀑仙袍（六阶神魂）
	tWeekCards_PackData_ItemId[3005893][6][5] = 823055 -- 盘龙玄戒（六阶神魂）
	tWeekCards_PackData_ItemId[3005893][6][6] = 820071 -- 九曜玄羽（六阶神魂）
	tWeekCards_PackData_ItemId[3005893][6][7] = 821031 -- 晶魄玄坠（六阶神魂）
	tWeekCards_PackData_ItemId[3005893][6][8] = 824017 -- 天行玄履（六阶神魂）
	-- 拳师
	tWeekCards_PackData_ItemId[3005893][7] = {}
	tWeekCards_PackData_ItemId[3005893][7][1] = 801003 -- 沧海龙吟（六阶神魂）
	tWeekCards_PackData_ItemId[3005893][7][2] = 822053 -- 千漩仙铠（六阶神魂）
	tWeekCards_PackData_ItemId[3005893][7][3] = 822055 -- 天瀑仙袍（六阶神魂）
	tWeekCards_PackData_ItemId[3005893][7][4] = 823055 -- 盘龙玄戒（六阶神魂）
	tWeekCards_PackData_ItemId[3005893][7][5] = 820071 -- 九曜玄羽（六阶神魂）
	tWeekCards_PackData_ItemId[3005893][7][6] = 821031 -- 晶魄玄坠（六阶神魂）
	tWeekCards_PackData_ItemId[3005893][7][7] = 824017 -- 天行玄履（六阶神魂）
	-- 道士
	tWeekCards_PackData_ItemId[3005893][8] = {}
	tWeekCards_PackData_ItemId[3005893][8][1] = 800513 -- 影灵宝剑（六阶神魂）
	tWeekCards_PackData_ItemId[3005893][8][2] = 822053 -- 千漩仙铠（六阶神魂）
	tWeekCards_PackData_ItemId[3005893][8][3] = 822055 -- 天瀑仙袍（六阶神魂）
	tWeekCards_PackData_ItemId[3005893][8][4] = 821032 -- 灵檀玄囊（六阶神魂）
	tWeekCards_PackData_ItemId[3005893][8][5] = 820072 -- 天瀑玄羽（六阶神魂）
	tWeekCards_PackData_ItemId[3005893][8][6] = 821031 -- 晶魄玄坠（六阶神魂）
	tWeekCards_PackData_ItemId[3005893][8][7] = 824017 -- 天行玄履（六阶神魂）
	-- 铁扇门
	tWeekCards_PackData_ItemId[3005893][9] = {}
	tWeekCards_PackData_ItemId[3005893][9][1] = 801306 -- 6阶铁扇武器神魂
	tWeekCards_PackData_ItemId[3005893][9][2] = 822053 -- 千漩仙铠（六阶神魂）
	tWeekCards_PackData_ItemId[3005893][9][3] = 822055 -- 天瀑仙袍（六阶神魂）
	tWeekCards_PackData_ItemId[3005893][9][4] = 823055 -- 盘龙玄戒（六阶神魂）
	tWeekCards_PackData_ItemId[3005893][9][5] = 820071 -- 九曜玄羽（六阶神魂）
	tWeekCards_PackData_ItemId[3005893][9][6] = 821031 -- 晶魄玄坠（六阶神魂）
	tWeekCards_PackData_ItemId[3005893][9][7] = 824017 -- 天行玄履（六阶神魂）
	-- 雷神
	tWeekCards_PackData_ItemId[3005893][10] = {}
	tWeekCards_PackData_ItemId[3005893][10][1] = 827006 -- 六阶风暴战锤（暴击）
	tWeekCards_PackData_ItemId[3005893][10][2] = 827007 -- 六阶风暴战斧（暴击）
	tWeekCards_PackData_ItemId[3005893][10][3] = 827008 -- 六阶风暴战锤（粉碎）
	tWeekCards_PackData_ItemId[3005893][10][4] = 827009 -- 六阶风暴战斧（粉碎）
	tWeekCards_PackData_ItemId[3005893][10][5] = 822053 -- 千漩仙铠（六阶神魂）
	tWeekCards_PackData_ItemId[3005893][10][6] = 822055 -- 天瀑仙袍（六阶神魂）
	tWeekCards_PackData_ItemId[3005893][10][7] = 823055 -- 盘龙玄戒（六阶神魂）
	tWeekCards_PackData_ItemId[3005893][10][8] = 820071 -- 九曜玄羽（六阶神魂）
	tWeekCards_PackData_ItemId[3005893][10][9] = 821031 -- 晶魄玄坠（六阶神魂）
	tWeekCards_PackData_ItemId[3005893][10][10] = 824017 -- 天行玄履（六阶神魂）
--------------------------------------------
------ 【神魂结晶】 -- 神魂礼包ID
	tWeekCards_PackData_ItemId[3008576] = {}
	tWeekCards_PackData_ItemId[3008576]["ItemAttr"] = "0 1"		 -- 物品属性
	tWeekCards_PackData_ItemId[3008576]["ItemType"] = "GetSoulPack"	 -- 对白LOG类型
	-- 神魂礼包ID
	tWeekCards_PackData_ItemId[3008576][1] =  3005891 -- 1颗结晶 -- 四阶神魂礼包
	tWeekCards_PackData_ItemId[3008576][2] =  3005892 -- 2颗结晶 -- 五阶神魂礼包
	tWeekCards_PackData_ItemId[3008576][4] =  3005893 -- 4颗结晶 -- 六阶神魂礼包
	tWeekCards_PackData_ItemId[3008576][10] = {}
	tWeekCards_PackData_ItemId[3008576][10][1] = 3006745 -- 10颗结晶 -- 七阶武器神魂礼包（赠）
	tWeekCards_PackData_ItemId[3008576][10][2] = 3006746 -- 10颗结晶 -- 七阶防具配饰神魂礼包（赠）

--------------------------------------------
------ 【小乾坤袋碎片】 -- 小乾坤袋
	tWeekCards_PackData_ItemId[3008174] = {}
	tWeekCards_PackData_ItemId[3008174]["ItemAttr"] = "0 1"		 -- 物品属性
	tWeekCards_PackData_ItemId[3008174]["ItemType"] = "GetSash"	 -- 对白LOG类型
	-- 物品ID
	tWeekCards_PackData_ItemId[3008174]["ItemId"] = 1100003 -- 乾坤袋(小)
	
--------------------------------------------
------ 【属性秘令可选包】
	tWeekCards_PackData_ItemId[3008175] = {}
	tWeekCards_PackData_ItemId[3008175]["ItemAttr"] = "0 1"		 -- 物品属性
	tWeekCards_PackData_ItemId[3008175]["ItemType"] = "GetSecret"	 -- 对白LOG类型
	-- 物品ID
	tWeekCards_PackData_ItemId[3008175][1] = 3004895 			-- 力量秘令
	tWeekCards_PackData_ItemId[3008175][2] = 3004898 			-- 灵巧秘令
	tWeekCards_PackData_ItemId[3008175][3] = 3004897 			-- 体质秘令
	tWeekCards_PackData_ItemId[3008175][4] = 3004896 			-- 精神秘令
	
--------------------------------------------
------ 【小固化石碎片】 -- 固化石
	tWeekCards_PackData_ItemId[3008178] = {}
	tWeekCards_PackData_ItemId[3008178]["ItemAttr"] = "0 1"		 -- 物品属性
	tWeekCards_PackData_ItemId[3008178]["ItemType"] = "GetStone"	 -- 对白LOG类型
	-- 物品ID
	tWeekCards_PackData_ItemId[3008178]["ItemId"] = 723694 -- 固化石

--------------------------------------------
------ 【经验周卡】
	tWeekCards_PackData_ItemId[3008160] = {}
	-- 第一次额外
	tWeekCards_PackData_ItemId[3008160]["First"] = {}
	tWeekCards_PackData_ItemId[3008160]["First"]["ExpPercent"] = 1 			-- 给1%经验
	-- 每次都给
	tWeekCards_PackData_ItemId[3008160]["General"] = {}
	tWeekCards_PackData_ItemId[3008160]["General"]["ExpTime"] = 600 		-- 给经验时间
	tWeekCards_PackData_ItemId[3008160]["General"]["ExpProtect"] = 300 		-- 经验保护时间
	-- 最后一次额外
	tWeekCards_PackData_ItemId[3008160]["Last"] = {}
	tWeekCards_PackData_ItemId[3008160]["Last"]["Item"] = {}
	tWeekCards_PackData_ItemId[3008160]["Last"]["Item"][1] = {}
	tWeekCards_PackData_ItemId[3008160]["Last"]["Item"][1]["Id"] = 3008167 	-- 经验周卡续费
	tWeekCards_PackData_ItemId[3008160]["Last"]["Item"][1]["Attr"] = "0 1"	-- 物品属性

------ 【赤炼石周卡】
	tWeekCards_PackData_ItemId[3008161] = {}
	-- 第一次额外
	tWeekCards_PackData_ItemId[3008161]["First"] = {}
	tWeekCards_PackData_ItemId[3008161]["First"]["ChkSpace"] = 2 				-- 背包空间
	tWeekCards_PackData_ItemId[3008161]["First"]["Item"] = {}
	tWeekCards_PackData_ItemId[3008161]["First"]["Item"][1] = {}
	tWeekCards_PackData_ItemId[3008161]["First"]["Item"][1]["Id"] = 3005889 	-- 极品2D武器兑换卷
	tWeekCards_PackData_ItemId[3008161]["First"]["Item"][1]["Attr"] = "0 0 3"	-- 物品属性
	-- 每次都给
	tWeekCards_PackData_ItemId[3008161]["General"] = {}
	tWeekCards_PackData_ItemId[3008161]["General"]["ChkSpace"] = 1
	tWeekCards_PackData_ItemId[3008161]["General"]["Item"] = {}
	tWeekCards_PackData_ItemId[3008161]["General"]["Item"][1] = {}
	tWeekCards_PackData_ItemId[3008161]["General"]["Item"][1]["Id"] = 730003 	-- 赤炼石+3
	tWeekCards_PackData_ItemId[3008161]["General"]["Item"][1]["Attr"] = "0 1 3"	-- 物品属性
	-- 最后一次
	tWeekCards_PackData_ItemId[3008161]["Last"] = {}
	tWeekCards_PackData_ItemId[3008161]["Last"]["ChkSpace"] = 1
	tWeekCards_PackData_ItemId[3008161]["Last"]["Item"] = {}
	tWeekCards_PackData_ItemId[3008161]["Last"]["Item"][1] = {}
	tWeekCards_PackData_ItemId[3008161]["Last"]["Item"][1]["Id"] = 3008168 	-- 赤炼石周卡续费
	tWeekCards_PackData_ItemId[3008161]["Last"]["Item"][1]["Attr"] = "0 1"	-- 物品属性

------ 【神魂结晶周卡】
	tWeekCards_PackData_ItemId[3008162] = {}
	-- 第一次额外
	tWeekCards_PackData_ItemId[3008162]["First"] = {}
	tWeekCards_PackData_ItemId[3008162]["First"]["ChkSpace"] = 2
	tWeekCards_PackData_ItemId[3008162]["First"]["Item"] = {}
	tWeekCards_PackData_ItemId[3008162]["First"]["Item"][1] = {}
	tWeekCards_PackData_ItemId[3008162]["First"]["Item"][1]["Id"] = 3008178 	-- 小固化石碎片
	tWeekCards_PackData_ItemId[3008162]["First"]["Item"][1]["Attr"] = "0 3"		-- 物品属性
	-- 每次都给
	tWeekCards_PackData_ItemId[3008162]["General"] = {}
	tWeekCards_PackData_ItemId[3008162]["General"]["ChkSpace"] = 1
	tWeekCards_PackData_ItemId[3008162]["General"]["Item"] = {}
	tWeekCards_PackData_ItemId[3008162]["General"]["Item"][1] = {}
	tWeekCards_PackData_ItemId[3008162]["General"]["Item"][1]["Id"] = 3008576 	-- 神魂结晶
	tWeekCards_PackData_ItemId[3008162]["General"]["Item"][1]["Attr"] = "0 1"	-- 物品属性
	-- 最后一次
	tWeekCards_PackData_ItemId[3008162]["Last"] = {}
	tWeekCards_PackData_ItemId[3008162]["Last"]["ChkSpace"] = 1
	tWeekCards_PackData_ItemId[3008162]["Last"]["Item"] = {}
	tWeekCards_PackData_ItemId[3008162]["Last"]["Item"][1] = {}
	tWeekCards_PackData_ItemId[3008162]["Last"]["Item"][1]["Id"] = 3008169 	-- 神魂周卡续费
	tWeekCards_PackData_ItemId[3008162]["Last"]["Item"][1]["Attr"] = "0 1"	-- 物品属性

------ 【背包周卡】
	tWeekCards_PackData_ItemId[3008163] = {}
	-- 第一次额外
	tWeekCards_PackData_ItemId[3008163]["First"] = {}
	tWeekCards_PackData_ItemId[3008163]["First"]["ChkSpace"] = 3
	tWeekCards_PackData_ItemId[3008163]["First"]["Item"] = {}
	tWeekCards_PackData_ItemId[3008163]["First"]["Item"][1] = {}
	tWeekCards_PackData_ItemId[3008163]["First"]["Item"][1]["Id"] = 1100003 	-- 乾坤袋(小)
	tWeekCards_PackData_ItemId[3008163]["First"]["Item"][1]["Attr"] = "0 2"		-- 物品属性
	-- 每次都给
	tWeekCards_PackData_ItemId[3008163]["General"] = {}
	tWeekCards_PackData_ItemId[3008163]["General"]["ChkSpace"] = 1
	tWeekCards_PackData_ItemId[3008163]["General"]["Item"] = {}
	tWeekCards_PackData_ItemId[3008163]["General"]["Item"][1] = {}
	tWeekCards_PackData_ItemId[3008163]["General"]["Item"][1]["Id"] = 3008174 	--小乾坤袋碎片
	tWeekCards_PackData_ItemId[3008163]["General"]["Item"][1]["Attr"] = "0 1"	-- 物品属性
	-- 最后一次
	tWeekCards_PackData_ItemId[3008163]["Last"] = {}
	tWeekCards_PackData_ItemId[3008163]["Last"]["ChkSpace"] = 1
	tWeekCards_PackData_ItemId[3008163]["Last"]["Item"] = {}
	tWeekCards_PackData_ItemId[3008163]["Last"]["Item"][1] = {}
	tWeekCards_PackData_ItemId[3008163]["Last"]["Item"][1]["Id"] = 3008170 	-- 神魂周卡续费
	tWeekCards_PackData_ItemId[3008163]["Last"]["Item"][1]["Attr"] = "0 1"	-- 物品属性

------ 【属性周卡】
	tWeekCards_PackData_ItemId[3008164] = {}
	-- 第一次额外
	tWeekCards_PackData_ItemId[3008164]["First"] = {}
	tWeekCards_PackData_ItemId[3008164]["First"]["ChkSpace"] = 2
	tWeekCards_PackData_ItemId[3008164]["First"]["Item"] = {}
	tWeekCards_PackData_ItemId[3008164]["First"]["Item"][1] = {}
	tWeekCards_PackData_ItemId[3008164]["First"]["Item"][1]["Id"] = 3001044 	-- 百炼天机果
	tWeekCards_PackData_ItemId[3008164]["First"]["Item"][1]["Attr"] = "0 1"		-- 物品属性
	-- 每次都给
	tWeekCards_PackData_ItemId[3008164]["General"] = {}
	tWeekCards_PackData_ItemId[3008164]["General"]["ChkSpace"] = 1
	tWeekCards_PackData_ItemId[3008164]["General"]["Item"] = {}
	tWeekCards_PackData_ItemId[3008164]["General"]["Item"][1] = {}
	tWeekCards_PackData_ItemId[3008164]["General"]["Item"][1]["Id"] = 3008175 	-- 属性秘令可选包
	tWeekCards_PackData_ItemId[3008164]["General"]["Item"][1]["Attr"] = "0 1"	-- 物品属性
	-- 最后一次
	tWeekCards_PackData_ItemId[3008164]["Last"] = {}
	tWeekCards_PackData_ItemId[3008164]["Last"]["ChkSpace"] = 1
	tWeekCards_PackData_ItemId[3008164]["Last"]["Item"] = {}
	tWeekCards_PackData_ItemId[3008164]["Last"]["Item"][1] = {}
	tWeekCards_PackData_ItemId[3008164]["Last"]["Item"][1]["Id"] = 3008171 	-- 神魂周卡续费
	tWeekCards_PackData_ItemId[3008164]["Last"]["Item"][1]["Attr"] = "0 1"	-- 物品属性

------ 【修为值周卡】
	tWeekCards_PackData_ItemId[3008165] = {}
	-- 第一次额外
	tWeekCards_PackData_ItemId[3008165]["First"] = {}
	tWeekCards_PackData_ItemId[3008165]["First"]["StrengthValue"] = 3000 		-- 气力值
	tWeekCards_PackData_ItemId[3008165]["First"]["ChkSpace"] = 1
	tWeekCards_PackData_ItemId[3008165]["First"]["Item"] = {}
	tWeekCards_PackData_ItemId[3008165]["First"]["Item"][1] = {}
	tWeekCards_PackData_ItemId[3008165]["First"]["Item"][1]["Id"] = 3002926 	-- 秘制免费修炼丹
	tWeekCards_PackData_ItemId[3008165]["First"]["Item"][1]["Attr"] = "0 10"	-- 物品属性
	-- 每次都给
	tWeekCards_PackData_ItemId[3008165]["General"] = {}
	tWeekCards_PackData_ItemId[3008165]["General"]["CultureValue"] = 400 		-- 修为值
	tWeekCards_PackData_ItemId[3008165]["General"]["StrengthValue"] = 200 		-- 气力值
	tWeekCards_PackData_ItemId[3008165]["General"]["FreePractNum"] = 50000 		-- 免费修炼次数

	-- 最后一次
	tWeekCards_PackData_ItemId[3008165]["Last"] = {}
	tWeekCards_PackData_ItemId[3008165]["Last"]["Item"] = {}
	tWeekCards_PackData_ItemId[3008165]["Last"]["Item"][1] = {}
	tWeekCards_PackData_ItemId[3008165]["Last"]["Item"][1]["Id"] = 3008172 	-- 修为值周卡续费
	tWeekCards_PackData_ItemId[3008165]["Last"]["Item"][1]["Attr"] = "0 1"	-- 物品属性


------ 【修为值周卡】
	tWeekCards_PackData_ItemId[3008166] = {}
	-- 第一次额外
	tWeekCards_PackData_ItemId[3008166]["First"] = {}
	tWeekCards_PackData_ItemId[3008166]["First"]["RidingPoints"] = 5000 	-- 骑马积分
	-- 每次都给
	tWeekCards_PackData_ItemId[3008166]["General"] = {}
	tWeekCards_PackData_ItemId[3008166]["General"]["EMoneyMono"] = 100 		-- 赠点天石

	-- 最后一次
	tWeekCards_PackData_ItemId[3008166]["Last"] = {}
	tWeekCards_PackData_ItemId[3008166]["Last"]["Item"] = {}
	tWeekCards_PackData_ItemId[3008166]["Last"]["Item"][1] = {}
	tWeekCards_PackData_ItemId[3008166]["Last"]["Item"][1]["Id"] = 3008173 	-- 赠点周卡续费
	tWeekCards_PackData_ItemId[3008166]["Last"]["Item"][1]["Attr"] = "0 1"	-- 物品属性

------------------------------------------------------------------------------------
local tWeekCards_Probabil = {}
	-- 【小固化石碎片】单个使用几率
	tWeekCards_Probabil[3008174] = {}
	tWeekCards_Probabil[3008174][1] = {}
	tWeekCards_Probabil[3008174][1]["ItemChanceSum"] = 10000
	-- 48%成功
	tWeekCards_Probabil[3008174][1][1] = {}
	tWeekCards_Probabil[3008174][1][1]["RandomItemChanceType"] = 2
	tWeekCards_Probabil[3008174][1][1]["ItemChance"] = 4800
	tWeekCards_Probabil[3008174][1][1]["Item_1"] = 1100003
	-- 52%失败
	tWeekCards_Probabil[3008174][1][2] = {}
	tWeekCards_Probabil[3008174][1][2]["RandomItemChanceType"] = 2
	tWeekCards_Probabil[3008174][1][2]["ItemChance"] = 5200
	tWeekCards_Probabil[3008174][1][2]["Item_1"] = 0


	-- 【小固化石碎片】单个使用几率
	tWeekCards_Probabil[3008178] = {}
	tWeekCards_Probabil[3008178][1] = {}
	tWeekCards_Probabil[3008178][1]["ItemChanceSum"] = 10000
	-- 9.6%成功
	tWeekCards_Probabil[3008178][1][1] = {}
	tWeekCards_Probabil[3008178][1][1]["RandomItemChanceType"] = 2
	tWeekCards_Probabil[3008178][1][1]["ItemChance"] = 960
	tWeekCards_Probabil[3008178][1][1]["Item_1"] = 723694
	-- 90.4%失败
	tWeekCards_Probabil[3008178][1][2] = {}
	tWeekCards_Probabil[3008178][1][2]["RandomItemChanceType"] = 2
	tWeekCards_Probabil[3008178][1][2]["ItemChance"] = 9040
	tWeekCards_Probabil[3008178][1][2]["Item_1"] = 0

	
	

------------------------------------------------------------------------------------
--活动LOG数据
local tWeekCards_Log = {}
	-- 极品2D武器兑换卷
	tWeekCards_Log["GetWeapon"] = "0,0,3005889,1,12000293,2,%d,1"
	-- 神魂结晶
	tWeekCards_Log["GetSoulPack"] = "0,0,3008576,%d,12000293,2,%d,1"
	-- 四阶神魂礼包
	tWeekCards_Log["GetP4DragonSoul"] = "0,0,3005891,1,12000293,2,%d,1"
	-- 五阶神魂礼包
	tWeekCards_Log["GetP5DragonSoul"] = "0,0,3005892,1,12000293,2,%d,1"
	-- 六阶神魂礼包
	tWeekCards_Log["GetP6DragonSoul"] = "0,0,3005893,1,12000293,2,%d,1"
	-- 小乾坤袋碎片
	tWeekCards_Log["GetSash"] = "0,0,3008174,%d,12000293,2,%d,1"
	-- 属性秘令
	tWeekCards_Log["GetSecret"] = "0,0,3008175,1,12000293,2,%d,1"
	-- 固化石碎片
	tWeekCards_Log["GetStone"] = "0,0,3008178,%d,12000293,2,%d,1"
	-- 周卡礼包
	tWeekCards_Log["WeekPack"] = {}
	tWeekCards_Log["WeekPack"]["First"] = "0,0,0,0,12000293,2,"
	tWeekCards_Log["WeekPack"]["Last"] = "0,0,%d,1,12000293,2,"
	-- 购买周礼包
	tWeekCards_Log["ByWeekBack"] = "0,0,2,%d,12000293,2,%d,1"
	
local tWeekCards_EmoneyBuy = {}
	tWeekCards_EmoneyBuy[3008160] = "250	4044	199	199	1	"
	tWeekCards_EmoneyBuy[3008161] = "250	4045	299	299	1	"
	tWeekCards_EmoneyBuy[3008162] = "250	4046	199	199	1	"
	tWeekCards_EmoneyBuy[3008163] = "250	4047	499	499	1	"
	tWeekCards_EmoneyBuy[3008164] = "250	4048	499	499	1	"
	tWeekCards_EmoneyBuy[3008165] = "250	4049	299	299	1	"
	tWeekCards_EmoneyBuy[3008166] = "250	4050	399	399	1	"

---------------------------------------函数部分---------------------------------------------
-- 给物品公用函数
function WeekCards_Public_GetItem(nItemId,nNewItemId,sItemAttr,sItemType,nNewNum)
	local nItemNum = 0
	if nNewNum == nil then
		nItemNum = 1
	else
		nItemNum = nNewNum
	end

	-- 是否存在礼包
	if Item_ChkMulItem(nItemId,nItemId,nItemNum,1) and Item_DelMulItem(nItemId,nItemId,nItemNum,1) then
		-- 给物品
		Item_AddNewItem(nNewItemId,sItemAttr)
		
		-- 提示+LOG
		local sItemName = Get_ItemtypeName(nNewItemId)
		local sLogText = ""
		local sTalkText = ""
		if nNewNum ~= nil then
			-- 有物品数量
			sLogText = string.format(tWeekCards_Log[sItemType],nNewNum,nNewItemId)
			sTalkText = string.format(tWeekCards_Text[nItemId][sItemType],nNewNum,sItemName)
		else
			-- 没有物品数量
			sLogText = string.format(tWeekCards_Log[sItemType],nNewItemId)
			sTalkText = string.format(tWeekCards_Text[nItemId][sItemType],sItemName)
		end
		Sys_SaveActionFestivalLog(sLogText)
		User_TalkChannel2005(sTalkText)
	end
end

-- 购买周礼包
function WeekCards_Public_DoByWeekPack(nNpcId,nItemId)
	local sItemName = Get_ItemtypeName(nItemId)
	local nUserEMoney = Get_UserEMoney()
	local nEMoney = tWeekCards_Data[nItemId]
	-- 活动时间
	local nDataAc = tWeekCards_Data["GlobalAc"]
	tWeekCards_Data["Festival_NowTime"] = Get_SysDynaGlobalDataStr2(nDataAc)

	if not Sys_ChkFullTime(tWeekCards_Data["Festival_NowTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"3-5")
		return
	end
	
	-- 失败、天石不足
	if nUserEMoney < nEMoney then
		tNpcGossip[nNpcId]["Text321"] = string.format(tWeekCards_Text[nNpcId]["Text321"],sItemName)
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return
	end

	-- 背包空间
	if not User_CheckLeftSpace(tWeekCards_Data["ChkSpace1"]) then
		tNpcGossip[nNpcId]["Text331"] = string.format(tWeekCards_Text[nNpcId]["Text331"],sItemName)
		LinkNpcGossipFunc_New(nNpcId,"3-3")
		return
	end
	
	-- 掩码处理
	local nEvent_1 = tWeekCards_Stc[nItemId][1]["EventData"]
	local nType_1 = tWeekCards_Stc[nItemId][1]["TypeData"]
	local nEvent_2 = tWeekCards_Stc[nItemId][2]["EventData"]
	local nType_2 = tWeekCards_Stc[nItemId][2]["TypeData"]

	-- 非第一次购买
	if Task_ChkStcValue(nEvent_2,nType_2,">=",1) then
		Task_SetStatistic(nEvent_1,nType_1,0,1)
	end
	
	Task_SetStatistic(nEvent_2,nType_2,1,1)
	Task_SetStcTimestamp(nEvent_2,nType_2,0)
	
	-- 扣除天石
	if User_AddEMoney(-nEMoney) then
		-- 有续费卷删除
		if Item_ChkItem(tWeekCards_Pack2Reset[nItemId]) then
			Item_DelItem(tWeekCards_Pack2Reset[nItemId])
		end
		Item_AddNewItem(nItemId,tWeekCards_Data["KeepTime"])
		Sys_SaveEmoneyBuy(tWeekCards_EmoneyBuy[nItemId])
		Sys_SaveActionFestivalLog(string.format(tWeekCards_Log["ByWeekBack"],nEMoney,nItemId))
		User_TalkChannel2005(string.format(tWeekCards_Text["ResetPack"]["Success"],sItemName))
	end
end

-- 买周礼包确认购买
function WeekCards_Public_IsByWeekPack(nItemId)
	local sItemName = Get_ItemtypeName(nItemId)
	local nNpcId = tWeekCards_Data["NpcId"]
	
	-- 是否隔7天
	local nEvent_2 = tWeekCards_Stc[nItemId][2]["EventData"]
	local nType_2 = tWeekCards_Stc[nItemId][2]["TypeData"]
	local nComplete_1 = tWeekCards_Stc[nItemId][1]["Complete"]
	if not Task_StcInterval(nEvent_2,nType_2,nComplete_1,4) then
		tNpcGossip[nNpcId]["Text361"] = string.format(tWeekCards_Text[nNpcId]["Text361"],sItemName)
		LinkNpcGossipFunc_New(nNpcId,"3-6")
		return
	end
	
	-- 是否有同类礼包
	if Item_ChkItem(nItemId) then
		tNpcGossip[nNpcId]["Text341"] = string.format(tWeekCards_Text[nNpcId]["Text341"],sItemName)
		LinkNpcGossipFunc_New(nNpcId,"3-4")
		return
	end
	
	-- 确认对白
	local nEMoney = tWeekCards_Data[nItemId]
	tNpcGossip[nNpcId]["Text311"] = string.format(tWeekCards_Text[nNpcId]["Text311"],nEMoney,sItemName)
	tNpcGossip[nNpcId]["OptionFunc311"] = string.format("WeekCards_Public_DoByWeekPack</N>%d</N>%d",nNpcId,nItemId)
	LinkNpcGossipFunc_New(nNpcId,"3-1")
end


---------------------------------------物品函数---------------------------------------------
-- 【属性秘令可选包】-- 背包判断
function WeekCards_SecretPack_ChkSpace(nItemId,nNewItemId,sItemAttr,sItemType)
	if not User_CheckLeftSpace(tWeekCards_Data["ChkSpace1"]) then
		User_TalkChannel2005(tWeekCards_Text[3008175]["SpaceFull"])
		return
	end
	
	-- 给秘令
	WeekCards_Public_GetItem(nItemId,nNewItemId,sItemAttr,sItemType)
end


--【二次确认】--【属性秘令可选包】
function WeekCards_SecretPack_IsOpen(nItemId,nItemType)
	local nNewItemId = tWeekCards_PackData_ItemId[nItemId][nItemType]
	local sItemAttr = tWeekCards_PackData_ItemId[nItemId]["ItemAttr"]
	local sItemType = tWeekCards_PackData_ItemId[nItemId]["ItemType"]
	local sItemName = Get_ItemtypeName(nNewItemId)
	local sFunc = "WeekCards_SecretPack_ChkSpace</N>%d</N>%d</S>%s</S>%s"
	tItem[nItemId]["Text211"] = string.format(tWeekCards_Text[nItemId]["Text211"],sItemName)
	tItem[nItemId]["OptionFunc211"] = string.format(sFunc,nItemId,nNewItemId,sItemAttr,sItemType)
	LinkItemGossipFunc_New(nItemId,"2-1")
end

-- 【固化石碎片】+【小乾坤袋碎片】
function WeekCards_DragonCrystal_GetStone(nItemId,nItemNum)
	local nNewItemId = tWeekCards_PackData_ItemId[nItemId]["ItemId"]
	local sItemAttr = tWeekCards_PackData_ItemId[nItemId]["ItemAttr"]
	local sItemType = tWeekCards_PackData_ItemId[nItemId]["ItemType"]

	-- 单个使用
	if nItemNum == 1 then
		-- 背包空间
		if not User_CheckLeftSpace(tWeekCards_Data["ChkSpace1"]) then
			User_TalkChannel2005(tWeekCards_Text[nItemId]["SpaceFull"])
			return
		end
	
		local nFlat,tGetStone = Probabil_RandomAward(tWeekCards_Probabil[nItemId],1)
		local nProbabilId = tGetStone[1]["tAward"][1]["Item_1"]
		
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			-- 成功 -- 获得固化石
			if nProbabilId == nNewItemId then
				local sUserName = Get_UserName()
				Item_AddNewItem(nNewItemId,sItemAttr)
				Sys_SystemBroadcast(string.format(tWeekCards_Text[nItemId]["OneSuccess"],sUserName))
			else -- 失败 -- 随机到的不是固化石ID
				User_TalkChannel2005(tWeekCards_Text[nItemId]["OneFailure"])
				return
			end
			
		-- 没碎片提示
		else
			User_TalkChannel2005(tWeekCards_Text[nItemId]["OneFailure"])
			return
		end
		
	-- 多个使用
	elseif Item_ChkMulItem(nItemId,nItemId,nItemNum,1) and Item_DelMulItem(nItemId,nItemId,nItemNum,1) then
		Item_AddNewItem(nNewItemId,sItemAttr)
		
	else -- 多个使用-数量不够
		User_TalkChannel2005(tWeekCards_Text[nItemId]["TenFailure"])
		return
	end
	
	-- 提示+LOG
	local sLogText = string.format(tWeekCards_Log[sItemType],nItemNum,nNewItemId)
	Sys_SaveActionFestivalLog(sLogText)
	User_TalkChannel2005(tWeekCards_Text[nItemId][sItemType])
end

-- 有职业区分的物品二次确认
function WeekCards_ProItem_IsOpen(nItemId,nNewItemId)
	local sItemAttr = tWeekCards_PackData_ItemId[nItemId]["ItemAttr"]
	local sItemType = tWeekCards_PackData_ItemId[nItemId]["ItemType"]
	local sItemName = Get_ItemtypeName(nNewItemId)
	local sFunc = "WeekCards_Public_GetItem</N>%d</N>%d</S>%s</S>%s"
	tItem[nItemId]["Text211"] = string.format(tWeekCards_Text[nItemId]["Text211"],sItemName)
	tItem[nItemId]["OptionFunc211"] = string.format(sFunc,nItemId,nNewItemId,sItemAttr,sItemType)
	LinkItemGossipFunc_New(nItemId,"2-1")
end


-- 【神魂结晶】给神魂礼包
function WeekCards_DragonCrystal_GetSoulPack(nItemId,nNewNum,nNewItemId)
	-- 背包空间
	if not User_CheckLeftSpace(tWeekCards_Data["ChkSpace1"]) then
		User_TalkChannel2005(tWeekCards_Text[nItemId]["SpaceFull"])
		return
	end
	
	-- 神魂数量是否满足
	if Item_ChkMulItem(nItemId,nItemId,nNewNum,1) then
		-- 给神魂礼包+提示+LOG
		local sItemAttr = tWeekCards_PackData_ItemId[nItemId]["ItemAttr"]
		local sItemType = tWeekCards_PackData_ItemId[nItemId]["ItemType"]
		WeekCards_Public_GetItem(nItemId,nNewItemId,sItemAttr,sItemType,nNewNum)
		return
	end
	
	-- 神魂数不满足
	User_TalkChannel2005(tWeekCards_Text[nItemId]["CrystalLack"])
end

-- 神魂结晶二次确认
function WeekCards_DragonCrystal_IsOpen(nItemId,nNewNum,nSeven)
	local nNewItemId = 0
	if nSeven ~= nil then
		nNewItemId = tWeekCards_PackData_ItemId[nItemId][nNewNum][nSeven]
	else
		nNewItemId = tWeekCards_PackData_ItemId[nItemId][nNewNum]
	end
	local sItemName = Get_ItemtypeName(nNewItemId)
	local sFunc = "WeekCards_DragonCrystal_GetSoulPack</N>%d</N>%d</N>%d"
	tItem[nItemId]["Text211"] = string.format(tWeekCards_Text[nItemId]["Text211"],nNewNum,sItemName)
	tItem[nItemId]["OptionFunc211"] = string.format(sFunc,nItemId,nNewNum,nNewItemId)
	LinkItemGossipFunc_New(nItemId,"2-1")
end

-- 周卡礼包给奖励
function WeekCards_WeekPack_GetReward(nItemId,sType,tLogData)
	local tHead = tWeekCards_PackData_ItemId[nItemId][sType]
	local nLevel = Get_UserLevel()
	
	-- 给分钟经验
	if tHead["ExpTime"] ~= nil then
		if nLevel >= G_User_MaxLev then
			User_TalkChannel2005(string.format(tWeekCards_Text["WeekPack"]["MaxLev"],Get_ItemtypeName(nItemId)))
			return tLogData
		end
		
		User_AddExpTime(tHead["ExpTime"])
		tLogData["ExpTime"] = tHead["ExpTime"]
	end
	
	-- 给经验保护时间
	if tHead["ExpProtect"] ~= nil then
		if nLevel >= G_User_MaxLev then
			User_TalkChannel2005(string.format(tWeekCards_Text["WeekPack"]["MaxLev"],Get_ItemtypeName(nItemId)))
			return tLogData
		end
	
		local nStatus = tWeekCards_Data["Status"]
		local nPower = tWeekCards_Data["Power"]
		local nSecs  = tWeekCards_Data["Secs"]
		local nTimes = tWeekCards_Data["Times"]
		local nEndTime = tWeekCards_Data["EndTime"]
		local nRecordable = tWeekCards_Data["Recordable"]
		local nRemainTime = tWeekCards_Data["RemainTime"]
		local nUserId = Get_UserId()
		User_AddRoleStatus(nStatus,nPower,nSecs,nTimes,nRemainTime,nEndTime,nRecordable,1,0,nUserId)
		tLogData["RoleStatus"] = tHead["ExpProtect"]
	end

	-- 给百分比经验
	if tHead["ExpPercent"] ~= nil then
		if nLevel >= G_User_MaxLev then
			User_TalkChannel2005(string.format(tWeekCards_Text["WeekPack"]["MaxLev"],Get_ItemtypeName(nItemId)))
			return tLogData
		end
		
		User_AddExpPercent(tHead["ExpPercent"])
		tLogData["ExpPercent"] = tHead["ExpPercent"]
	end
	
	-- 给指定物品
	if tHead["Item"] ~= nil then
		for i,v in pairs(tHead["Item"]) do
			local nNewItemId = tHead["Item"][i]["Id"]
			local sItemAttr = tHead["Item"][i]["Attr"]
			local tTemp = Sys_Split(sItemAttr," ")
			local nNum = tonumber(tTemp[2])
			if nNum == 0 then nNum = 1 end
			Item_AddNewItem(nNewItemId,sItemAttr)
			tLogData[nNewItemId] = nNum
		end
	end
	
	-- 给修为值
	if tHead["CultureValue"] ~= nil then
		User_AddCultureValue(tHead["CultureValue"])
		tLogData["CultureValue"] = tHead["CultureValue"]
	end
	
	-- 气力值
	if tHead["StrengthValue"] ~= nil then
		User_AddStrengthValue(tHead["StrengthValue"])
		if tLogData["StrengthValue"] ~= nil then
			tLogData["StrengthValue"] = tLogData["StrengthValue"] + tHead["StrengthValue"]
		else
			tLogData["StrengthValue"] = tHead["StrengthValue"]
		end
	end
	
	-- 骑马积分
	if tHead["RidingPoints"] ~= nil then
		User_AddRidingPoints(tHead["RidingPoints"])
		tLogData["RidingPoints"] = tHead["RidingPoints"]
	end
	
	-- 赠点天石
	if tHead["EMoneyMono"] ~= nil then
		User_AddEMoneyMono(tHead["EMoneyMono"])
		tLogData["EMoneyMono"] = tHead["EMoneyMono"]
	end
	
	-- 免费修炼次数（放在最后）
	if tHead["FreePractNum"] ~= nil then
		-- 未创建武功
		if not User_IsAlreadyCreateGongFu() then
			User_TalkChannel2005(tWeekCards_Text["WeekPack"]["NoCreateGongFu"])
			return tLogData
		end
		
		local nPractNum = Get_UserGongFureePractNum()
		if nPractNum > (G_User_FreePractice - tHead["FreePractNum"]) then
			if (G_User_FreePractice - nPractNum) > 0 then
				User_AddGongFuFreePractNum(G_User_FreePractice - nPractNum)
			end
			User_TalkChannel2005(tWeekCards_Text["WeekPack"]["PractNumFull"])
			return tLogData
		else
			User_AddGongFuFreePractNum(tHead["FreePractNum"])
			tLogData["FreePractNum"] = tHead["FreePractNum"] / 10000
		end
	end
	
	return tLogData
end


---------------------------------------------------------------------------------------------
-- 不同职业出不动对白的物品接入
function WeekCards_ProItem_Inter(nItemId)
	local nPro = Get_UserProfession()
	for nProNum ,v in pairs(tWeekCards_PackData_ItemId[nItemId]) do
		if type(nProNum) == "number" then
			if nPro >= tWeekCards_Pro[nProNum]["Min"] and nPro <= tWeekCards_Pro[nProNum]["Max"] then
				-- 生成选项功能
				for nOption ,v in ipairs(tWeekCards_PackData_ItemId[nItemId][nProNum]) do
					local sFunc = "WeekCards_ProItem_IsOpen</N>%d</N>%d"
					tItem[nItemId]["OptionFunc1".. nProNum .. nOption] = string.format(sFunc,nItemId,v)
				end
				
				-- 出相应职业对白
				LinkItemGossipFunc_New(nItemId,"1-".. nProNum)
				return
			end
		end
	end
	
	-- 没配置该职业数据，则出通用对白
	for nOption ,v in ipairs(tWeekCards_PackData_ItemId[nItemId]["General"]) do
		local sFunc = "WeekCards_ProItem_IsOpen</N>%d</N>%d"
		tItem[nItemId]["OptionFunc110" .. nOption] = string.format(sFunc,nItemId,v)
	end
	LinkItemGossipFunc_New(nItemId,"1-10")
end

-- 周卡礼包通用接入
function WeekCards_WeekPack_OpenInter(nItemId)
	local nEvent = tWeekCards_Stc[nItemId][1]["EventData"]
	local nType = tWeekCards_Stc[nItemId][1]["TypeData"]
	local nComplete = tWeekCards_Stc[nItemId][1]["Complete"]
	local sLogText = tWeekCards_Log["WeekPack"]
	local sTalkText = tWeekCards_Text["TalkHead"]
	local tLogData = {}

	-- 给赠点天石先判断上限
	if tWeekCards_PackData_ItemId[nItemId]["General"]["EMoneyMono"] ~= nil then
		local nEMoney = Get_UserMonoEMoney()
		if nEMoney > G_User_MaxEmoneyMono - tWeekCards_PackData_ItemId[nItemId]["General"]["EMoneyMono"] then
			User_TalkChannel2005(tWeekCards_Text["WeekPack"]["EMoneyFull"])
			return
		end
	end
	
	-- 隔天判断
	if not Task_StcInterval(nEvent,nType,1,4) then
		User_TalkChannel2005(tWeekCards_Text["WeekPack"]["OpenFail"])
		return
	
	-- 第一次有额外奖励
	elseif Task_ChkStcValue(nEvent,nType,"==",0) then
		
		-- 背包空间
		if tWeekCards_PackData_ItemId[nItemId]["First"]["ChkSpace"] ~= nil then
			if not User_CheckLeftSpace(tWeekCards_PackData_ItemId[nItemId]["First"]["ChkSpace"]) then
				User_TalkChannel2005(tWeekCards_Text["WeekPack"]["SpaceFull"])
				return
			end
		end
		
		-- 不存在物品return
		if not Item_ChkItem(nItemId) then return end
		tLogData = WeekCards_WeekPack_GetReward(nItemId,"First",tLogData)
		
	-- 最后一次打开 -- 给续费卡
	elseif Task_ChkStcValue(nEvent,nType,">=",nComplete) then
	
		-- 背包空间
		if tWeekCards_PackData_ItemId[nItemId]["Last"]["ChkSpace"] ~= nil then
			if not User_CheckLeftSpace(tWeekCards_PackData_ItemId[nItemId]["Last"]["ChkSpace"]) then
				User_TalkChannel2005(tWeekCards_Text["WeekPack"]["SpaceFull"])
			end
		end
		
		-- 删礼包给奖励
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			-- 活动时间内给续费卷
				local nDataAc = tWeekCards_Data["GlobalAc"]
				tWeekCards_Data["Festival_NowTime"]  = Get_SysDynaGlobalDataStr2(nDataAc)

			if Sys_ChkFullTime(tWeekCards_Data["Festival_NowTime"]) then
				tLogData = WeekCards_WeekPack_GetReward(nItemId,"Last",tLogData)
			end
		else
			return
		end
		
	-- 通常打开
	else
		-- 背包判断个数
		if tWeekCards_PackData_ItemId[nItemId]["General"]["ChkSpace"] ~= nil then
			if not User_CheckLeftSpace(tWeekCards_PackData_ItemId[nItemId]["General"]["ChkSpace"]) then
				User_TalkChannel2005(tWeekCards_Text["WeekPack"]["SpaceFull"])
				return
			end
		end
	end
	
	-- 每次都给
	Task_AddStatistic(nEvent,nType,1,1)
	Task_SetStcTimestamp(nEvent,nType,0)
	tLogData = WeekCards_WeekPack_GetReward(nItemId,"General",tLogData)
	
	-- 光效
	User_EffectAdd(tWeekCards_Data["EffectObj"],tWeekCards_Data["Effect"])
	
	-- 对白+LOG拼接
	local sTalkText = tWeekCards_Text["WeekPack"]["TalkHead"]
	local sLogItemId = ""
	local sLogItemNum = ""
	local sLogText = ""
	local sTalkLink = ""
	
	-- 奖励表为空表时直接跳出去
	if next(tLogData) == nil then
		return
	end

	for i,v in pairs(tLogData) do
		-- 非物品奖励的LOG+对白组合
		if type(i) ~= "number" then
			sLogItemId = sLogItemId .. "[".. tWeekCards_Data["LogType"][i] .."]"
			sLogItemNum = sLogItemNum .."[".. v .."]"
			
			-- 对白组合
			for sTypeName,_ in pairs(tWeekCards_Data["LogType"]) do
				if i == sTypeName then
					sTalkLink = sTalkLink.. string.format(tWeekCards_Text["WeekPack"][sTypeName],v)
				end
			end
			
		-- 给物品的LOG+对白
		else
			sLogItemId = sLogItemId .. "[".. i .."]"
			local sItemName = Get_ItemtypeName(i)
			if i == tWeekCards_Data["Stone3"] then
				sTalkLink = sTalkLink.. string.format(tWeekCards_Text["WeekPack"]["ItemGift"],v,sItemName)
			else
				sTalkLink = sTalkLink.. string.format(tWeekCards_Text["WeekPack"]["ItemNormal"],v,sItemName)
			end
			
		end
	end
	
	-- 最后一次
	if sType ~= "Last" then
		sLogText = tWeekCards_Log["WeekPack"]["First"]..sLogItemId..","..sLogItemNum
	else
		sLogText = string.format(tWeekCards_Log["WeekPack"]["Last"],nItemId)..sLogItemId..","..sLogItemNum
	end
	sTalkText = sTalkText..string.gsub(sTalkLink,", $",".")
	Sys_SaveActionFestivalLog(sLogText)
	User_TalkChannel2005(sTalkText)
end

---------------------------------------------------------------------------------------------
-- 周卡续费卷购买周卡
function WeekCards_ResetPack_DoByPack(nItemId)
	-- 活动时间
	local nDataAc = tWeekCards_Data["GlobalAc"]
	tWeekCards_Data["Festival_NowTime"]  = Get_SysDynaGlobalDataStr2(nDataAc)

	if not Sys_ChkFullTime(tWeekCards_Data["Festival_NowTime"]) then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			LinkItemGossipFunc_New(3008167,"3-1")
		end
		return
	end
	
	local nNewItemId = tWeekCards_Data[nItemId]
	local sItemName = Get_ItemtypeName(nNewItemId)
	local nEMoney = tWeekCards_Data[nNewItemId]
	local nUserEMoney = Get_UserEMoney()

	-- 是否有同种礼包
	if Item_ChkItem(nNewItemId) then
		LinkItemGossipFunc_New(3008167,"3-2")
		return
	end
	
	-- 天石不足
	 if nUserEMoney < nEMoney then
		LinkItemGossipFunc_New(3008167,"3-3")
		return
	end
	
	-- 掩码处理
	local nEvent_1 = tWeekCards_Stc[nNewItemId][1]["EventData"]
	local nType_1 = tWeekCards_Stc[nNewItemId][1]["TypeData"]
	local nEvent_2 = tWeekCards_Stc[nNewItemId][2]["EventData"]
	local nType_2 = tWeekCards_Stc[nNewItemId][2]["TypeData"]
	Task_SetStatistic(nEvent_1,nType_1,0,1)
	Task_SetStcTimestamp(nEvent_2,nType_2,0)
	
	-- 扣除天石
	if User_AddEMoney(-nEMoney) then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			Item_AddNewItem(nNewItemId,tWeekCards_Data["KeepTime"])
			Sys_SaveEmoneyBuy(tWeekCards_EmoneyBuy[nNewItemId])
			Sys_SaveActionFestivalLog(string.format(tWeekCards_Log["ByWeekBack"],nEMoney,nNewItemId))
			User_TalkChannel2005(string.format(tWeekCards_Text["ResetPack"]["Success"],sItemName))
		end
	end
end

-- 周卡续费卷二次确认
function WeekCards_ResetPack_IsByPack(nItemId)
	local nNewItemId = tWeekCards_Data[nItemId]
	local sItemName = Get_ItemtypeName(nNewItemId)
	local nEMoney = tWeekCards_Data[nNewItemId]

	-- 对白内容重定义
	tItem[3008167]["Text211"] = string.format(tWeekCards_Text[3008167]["Text211"],nEMoney,sItemName)
	tItem[3008167]["OptionFunc211"] = string.format("WeekCards_ResetPack_DoByPack</N>%d",nItemId)
	LinkItemGossipFunc_New(3008167,"2-1")
end

-- 周卡续费卷通用接入
function WeekCards_ResetPack_OpenInter(nItemId)
	-- 活动时间
	local nDataAc = tWeekCards_Data["GlobalAc"]
	tWeekCards_Data["Festival_NowTime"]  = Get_SysDynaGlobalDataStr2(nDataAc)

	if not Sys_ChkFullTime(tWeekCards_Data["Festival_NowTime"]) then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			User_TalkChannel2005(tWeekCards_Text["ResetPack"]["TimeOut"])
		end
		return
	end
	
	-- 对白内容重定义
	tItem[3008167]["Text111"] = tWeekCards_Text[nItemId]["Text111"]
	tItem[3008167]["Text112"] = tWeekCards_Text[nItemId]["Text112"]
	tItem[3008167]["Text113"] = tWeekCards_Text[nItemId]["Text113"]
	tItem[3008167]["Option111"] = tWeekCards_Text[nItemId]["Option111"]
	tItem[3008167]["OptionFunc111"] = string.format("WeekCards_ResetPack_IsByPack</N>%d",nItemId)
	LinkItemGossipFunc_New(3008167,"1-1")
end

---------------------------------------NPC配置---------------------------------------------
--------------------------------周礼包促销专员
tNpcFace[3931] = 1
tNpcGossip[19029] = tNpcGossip[19029] or DefaultNpc:new{}
tNpcGossip[19029]["OptionHidden"] = 1
-- 活动前
tNpcGossip[19029]["Text1-1"] = {111,112}
tNpcGossip[19029]["Text111"] = tWeekCards_Text[19029]["Text111"]
tNpcGossip[19029]["Text112"] = tWeekCards_Text[19029]["Text112"]
tNpcGossip[19029]["tOption1-1"] = {111}
tNpcGossip[19029]["Option111"] = tWeekCards_Text[19029]["Option111"]
tNpcGossip[19029]["ChkFunc1-1"] = function()
	return false
end
-- 活动后
tNpcGossip[19029]["Text1-2"] = {121,122}
tNpcGossip[19029]["Text121"] = tWeekCards_Text[19029]["Text121"]
tNpcGossip[19029]["Text122"] = tWeekCards_Text[19029]["Text122"]
tNpcGossip[19029]["tOption1-2"] = {121}
tNpcGossip[19029]["Option121"] = tWeekCards_Text[19029]["Option121"]
tNpcGossip[19029]["ChkFunc1-2"] = function()
	local nDataAc = tWeekCards_Data["GlobalAc"]
	tWeekCards_Data["Festival_NowTime"]  = Get_SysDynaGlobalDataStr2(nDataAc)

	return not Sys_ChkFullTime(tWeekCards_Data["Festival_NowTime"])
end
-- 活动中
tNpcGossip[19029]["Text1-3"] = {131,132,133}
tNpcGossip[19029]["Text131"] = tWeekCards_Text[19029]["Text131"]
tNpcGossip[19029]["Text132"] = tWeekCards_Text[19029]["Text132"]
tNpcGossip[19029]["Text133"] = tWeekCards_Text[19029]["Text133"]
tNpcGossip[19029]["tOption1-3"] = {131,132,133,134,135,136,137}
tNpcGossip[19029]["Option131"] = tWeekCards_Text[19029]["Option131"]
tNpcGossip[19029]["OptionPoint131"] = "2-1"
tNpcGossip[19029]["Option132"] = tWeekCards_Text[19029]["Option132"]
tNpcGossip[19029]["OptionPoint132"] = "2-2"
tNpcGossip[19029]["Option133"] = tWeekCards_Text[19029]["Option133"]
tNpcGossip[19029]["OptionPoint133"] = "2-3"
tNpcGossip[19029]["Option134"] = tWeekCards_Text[19029]["Option134"]
tNpcGossip[19029]["OptionPoint134"] = "2-4"
tNpcGossip[19029]["Option135"] = tWeekCards_Text[19029]["Option135"]
tNpcGossip[19029]["OptionPoint135"] = "2-5"
tNpcGossip[19029]["Option136"] = tWeekCards_Text[19029]["Option136"]
tNpcGossip[19029]["OptionPoint136"] = "2-6"
tNpcGossip[19029]["Option137"] = tWeekCards_Text[19029]["Option137"]
tNpcGossip[19029]["OptionPoint137"] = "2-7"
-- 极速升级周礼包
tNpcGossip[19029]["Text2-1"] = {211,212,213,214,215,216,217}
tNpcGossip[19029]["Text211"] = tWeekCards_Text[19029]["Text211"]
tNpcGossip[19029]["Text212"] = tWeekCards_Text[19029]["Text212"]
tNpcGossip[19029]["Text213"] = tWeekCards_Text[19029]["Text213"]
tNpcGossip[19029]["Text214"] = tWeekCards_Text[19029]["Text214"]
tNpcGossip[19029]["Text215"] = tWeekCards_Text[19029]["Text215"]
tNpcGossip[19029]["Text216"] = tWeekCards_Text[19029]["Text216"]
tNpcGossip[19029]["Text217"] = tWeekCards_Text[19029]["Text217"]
tNpcGossip[19029]["tOption2-1"] = {211,212}
tNpcGossip[19029]["Option211"] = tWeekCards_Text[19029]["Option211"]
tNpcGossip[19029]["OptionFunc211"] = "WeekCards_Public_IsByWeekPack</N>3008160"
tNpcGossip[19029]["Option212"] = tWeekCards_Text[19029]["Option212"]
tNpcGossip[19029]["OptionPoint212"] = "1"
-- 赤炼成堆周礼包
tNpcGossip[19029]["Text2-2"] = {221,222,223,224,225,226,227}
tNpcGossip[19029]["Text221"] = tWeekCards_Text[19029]["Text221"]
tNpcGossip[19029]["Text222"] = tWeekCards_Text[19029]["Text222"]
tNpcGossip[19029]["Text223"] = tWeekCards_Text[19029]["Text223"]
tNpcGossip[19029]["Text224"] = tWeekCards_Text[19029]["Text224"]
tNpcGossip[19029]["Text225"] = tWeekCards_Text[19029]["Text225"]
tNpcGossip[19029]["Text226"] = tWeekCards_Text[19029]["Text226"]
tNpcGossip[19029]["Text227"] = tWeekCards_Text[19029]["Text227"]
tNpcGossip[19029]["tOption2-2"] = {221,222}
tNpcGossip[19029]["Option221"] = tWeekCards_Text[19029]["Option221"]
tNpcGossip[19029]["OptionFunc221"] = "WeekCards_Public_IsByWeekPack</N>3008161"
tNpcGossip[19029]["Option222"] = tWeekCards_Text[19029]["Option222"]
tNpcGossip[19029]["OptionPoint222"] = "1"
-- 极品神魂周礼包
tNpcGossip[19029]["Text2-3"] = {231,232,233,234,235,236,237}
tNpcGossip[19029]["Text231"] = tWeekCards_Text[19029]["Text231"]
tNpcGossip[19029]["Text232"] = tWeekCards_Text[19029]["Text232"]
tNpcGossip[19029]["Text233"] = tWeekCards_Text[19029]["Text233"]
tNpcGossip[19029]["Text234"] = tWeekCards_Text[19029]["Text234"]
tNpcGossip[19029]["Text235"] = tWeekCards_Text[19029]["Text235"]
tNpcGossip[19029]["Text236"] = tWeekCards_Text[19029]["Text236"]
tNpcGossip[19029]["Text237"] = tWeekCards_Text[19029]["Text237"]
tNpcGossip[19029]["tOption2-3"] = {231,232,233}
tNpcGossip[19029]["Option231"] = tWeekCards_Text[19029]["Option231"]
tNpcGossip[19029]["OptionFunc231"] = "WeekCards_Public_IsByWeekPack</N>3008162"
tNpcGossip[19029]["Option232"] = tWeekCards_Text[19029]["Option232"]
tNpcGossip[19029]["OptionPoint232"] = "4-1"
tNpcGossip[19029]["Option233"] = tWeekCards_Text[19029]["Option233"]
tNpcGossip[19029]["OptionPoint233"] = "1"
-- 袖纳乾坤周礼包
tNpcGossip[19029]["Text2-4"] = {241,242,243,244,245,246,247}
tNpcGossip[19029]["Text241"] = tWeekCards_Text[19029]["Text241"]
tNpcGossip[19029]["Text242"] = tWeekCards_Text[19029]["Text242"]
tNpcGossip[19029]["Text243"] = tWeekCards_Text[19029]["Text243"]
tNpcGossip[19029]["Text244"] = tWeekCards_Text[19029]["Text244"]
tNpcGossip[19029]["Text245"] = tWeekCards_Text[19029]["Text245"]
tNpcGossip[19029]["Text246"] = tWeekCards_Text[19029]["Text246"]
tNpcGossip[19029]["Text247"] = tWeekCards_Text[19029]["Text247"]
tNpcGossip[19029]["tOption2-4"] = {241,242,243}
tNpcGossip[19029]["Option241"] = tWeekCards_Text[19029]["Option241"]
tNpcGossip[19029]["OptionFunc241"] = "WeekCards_Public_IsByWeekPack</N>3008163"
tNpcGossip[19029]["Option242"] = tWeekCards_Text[19029]["Option242"]
tNpcGossip[19029]["OptionPoint242"] = "4-2"
tNpcGossip[19029]["Option243"] = tWeekCards_Text[19029]["Option243"]
tNpcGossip[19029]["OptionPoint243"] = "1"
-- 属性秘令周礼包
tNpcGossip[19029]["Text2-5"] = {251,252,253,254,255,256,257}
tNpcGossip[19029]["Text251"] = tWeekCards_Text[19029]["Text251"]
tNpcGossip[19029]["Text252"] = tWeekCards_Text[19029]["Text252"]
tNpcGossip[19029]["Text253"] = tWeekCards_Text[19029]["Text253"]
tNpcGossip[19029]["Text254"] = tWeekCards_Text[19029]["Text254"]
tNpcGossip[19029]["Text255"] = tWeekCards_Text[19029]["Text255"]
tNpcGossip[19029]["Text256"] = tWeekCards_Text[19029]["Text256"]
tNpcGossip[19029]["Text257"] = tWeekCards_Text[19029]["Text257"]
tNpcGossip[19029]["tOption2-5"] = {251,252,253}
tNpcGossip[19029]["Option251"] = tWeekCards_Text[19029]["Option251"]
tNpcGossip[19029]["OptionFunc251"] = "WeekCards_Public_IsByWeekPack</N>3008164"
tNpcGossip[19029]["Option252"] = tWeekCards_Text[19029]["Option252"]
tNpcGossip[19029]["OptionPoint252"] = "4-3"
tNpcGossip[19029]["Option253"] = tWeekCards_Text[19029]["Option253"]
tNpcGossip[19029]["OptionPoint253"] = "1"
-- 内功修为周礼包
tNpcGossip[19029]["Text2-6"] = {261,262,263,264,265,266,267}
tNpcGossip[19029]["Text261"] = tWeekCards_Text[19029]["Text261"]
tNpcGossip[19029]["Text262"] = tWeekCards_Text[19029]["Text262"]
tNpcGossip[19029]["Text263"] = tWeekCards_Text[19029]["Text263"]
tNpcGossip[19029]["Text264"] = tWeekCards_Text[19029]["Text264"]
tNpcGossip[19029]["Text265"] = tWeekCards_Text[19029]["Text265"]
tNpcGossip[19029]["Text266"] = tWeekCards_Text[19029]["Text266"]
tNpcGossip[19029]["Text267"] = tWeekCards_Text[19029]["Text267"]
tNpcGossip[19029]["tOption2-6"] = {261,262}
tNpcGossip[19029]["Option261"] = tWeekCards_Text[19029]["Option261"]
tNpcGossip[19029]["OptionFunc261"] = "WeekCards_Public_IsByWeekPack</N>3008165"
tNpcGossip[19029]["Option262"] = tWeekCards_Text[19029]["Option262"]
tNpcGossip[19029]["OptionPoint262"] = "1"
-- 海量天石周礼包
tNpcGossip[19029]["Text2-7"] = {271,272,273,274,275,276,277}
tNpcGossip[19029]["Text271"] = tWeekCards_Text[19029]["Text271"]
tNpcGossip[19029]["Text272"] = tWeekCards_Text[19029]["Text272"]
tNpcGossip[19029]["Text273"] = tWeekCards_Text[19029]["Text273"]
tNpcGossip[19029]["Text274"] = tWeekCards_Text[19029]["Text274"]
tNpcGossip[19029]["Text275"] = tWeekCards_Text[19029]["Text275"]
tNpcGossip[19029]["Text276"] = tWeekCards_Text[19029]["Text276"]
tNpcGossip[19029]["Text277"] = tWeekCards_Text[19029]["Text277"]
tNpcGossip[19029]["tOption2-7"] = {271,272}
tNpcGossip[19029]["Option271"] = tWeekCards_Text[19029]["Option271"]
tNpcGossip[19029]["OptionFunc271"] = "WeekCards_Public_IsByWeekPack</N>3008166"
tNpcGossip[19029]["Option272"] = tWeekCards_Text[19029]["Option272"]
tNpcGossip[19029]["OptionPoint272"] = "1"
-- 确认购买
tNpcGossip[19029]["Text3-1"] = {311}
tNpcGossip[19029]["Text311"] = tWeekCards_Text[19029]["Text311"]
tNpcGossip[19029]["tOption3-1"] = {311,312}
tNpcGossip[19029]["Option311"] = tWeekCards_Text[19029]["Option311"]
tNpcGossip[19029]["OptionFunc311"] = ""		-- 函数内重新定义 -- WeekCards_Public_IsByWeekPack
tNpcGossip[19029]["Option312"] = tWeekCards_Text[19029]["Option312"]

-- 失败、天石不足
tNpcGossip[19029]["Text3-2"] = {321}
tNpcGossip[19029]["Text321"] = tWeekCards_Text[19029]["Text321"]
tNpcGossip[19029]["tOption3-2"] = {321}
tNpcGossip[19029]["Option321"] = tWeekCards_Text[19029]["Option321"]

-- 失败，背包空间不足
tNpcGossip[19029]["Text3-3"] = {331}
tNpcGossip[19029]["Text331"] = tWeekCards_Text[19029]["Text331"]
tNpcGossip[19029]["tOption3-3"] = {331}
tNpcGossip[19029]["Option331"] = tWeekCards_Text[19029]["Option331"]

-- 失败，有同类礼包
tNpcGossip[19029]["Text3-4"] = {341}
tNpcGossip[19029]["Text341"] = tWeekCards_Text[19029]["Text341"]
tNpcGossip[19029]["tOption3-4"] = {341}
tNpcGossip[19029]["Option341"] = tWeekCards_Text[19029]["Option341"]
-- 失败，活动已结束
tNpcGossip[19029]["Text3-5"] = {351,352}
tNpcGossip[19029]["Text351"] = tWeekCards_Text[19029]["Text351"]
tNpcGossip[19029]["Text352"] = tWeekCards_Text[19029]["Text352"]
tNpcGossip[19029]["tOption3-5"] = {351}
tNpcGossip[19029]["Option351"] = tWeekCards_Text[19029]["Option351"]
-- 失败，距离上一次购买不足7天
tNpcGossip[19029]["Text3-6"] = {361,362}
tNpcGossip[19029]["Text361"] = tWeekCards_Text[19029]["Text361"]
tNpcGossip[19029]["Text362"] = tWeekCards_Text[19029]["Text362"]
tNpcGossip[19029]["tOption3-6"] = {361}
tNpcGossip[19029]["Option361"] = tWeekCards_Text[19029]["Option361"]
tNpcGossip[19029]["OptionFunc361"] = ""
-- 道具详情（极品神魂周礼包）
tNpcGossip[19029]["Text4-1"] = {411,412,413,414}
tNpcGossip[19029]["Text411"] = tWeekCards_Text[19029]["Text411"]
tNpcGossip[19029]["Text412"] = tWeekCards_Text[19029]["Text412"]
tNpcGossip[19029]["Text413"] = tWeekCards_Text[19029]["Text413"]
tNpcGossip[19029]["Text414"] = tWeekCards_Text[19029]["Text414"]
tNpcGossip[19029]["tOption4-1"] = {411}
tNpcGossip[19029]["Option411"] = tWeekCards_Text[19029]["Option411"]
tNpcGossip[19029]["OptionPoint411"] = "2-3"
-- 道具详情（袖纳乾坤周礼包）
tNpcGossip[19029]["Text4-2"] = {421,422}
tNpcGossip[19029]["Text421"] = tWeekCards_Text[19029]["Text421"]
tNpcGossip[19029]["Text422"] = tWeekCards_Text[19029]["Text422"]
tNpcGossip[19029]["tOption4-2"] = {421}
tNpcGossip[19029]["Option421"] = tWeekCards_Text[19029]["Option421"]
tNpcGossip[19029]["OptionPoint421"] = "2-4"
-- 道具详情（属性秘令周礼包）
tNpcGossip[19029]["Text4-3"] = {431,432}
tNpcGossip[19029]["Text431"] = tWeekCards_Text[19029]["Text431"]
tNpcGossip[19029]["Text432"] = tWeekCards_Text[19029]["Text432"]
tNpcGossip[19029]["tOption4-3"] = {431}
tNpcGossip[19029]["Option431"] = tWeekCards_Text[19029]["Option431"]
tNpcGossip[19029]["OptionPoint431"] = "2-5"

---------------------------------------物品配置---------------------------------------------
--------------------------------【极品2D武器兑换卷】--------------------------------
tItem[3005889] = tItem[3005889] or {}
tItem[3005889]["Function"] = function (nItemId,sItemName)
	WeekCards_ProItem_Inter(nItemId)
end

-- 勇士 --【极品2D武器兑换卷】
tItem[3005889]["Text1-1"] = {111}
tItem[3005889]["Text111"] = tWeekCards_Text[3005889]["Text111"]
tItem[3005889]["tOption1-1"] = {111,112,113}
tItem[3005889]["Option111"] = tWeekCards_Text[3005889]["Option111"]
tItem[3005889]["Option112"] = tWeekCards_Text[3005889]["Option112"]
tItem[3005889]["Option113"] = tWeekCards_Text[3005889]["Option113"]

-- 战士 --【极品2D武器兑换卷】
tItem[3005889]["Text1-2"] = {121}
tItem[3005889]["Text121"] = tWeekCards_Text[3005889]["Text111"]
tItem[3005889]["tOption1-2"] = {121,122}
tItem[3005889]["Option121"] = tWeekCards_Text[3005889]["Option121"]
tItem[3005889]["Option122"] = tWeekCards_Text[3005889]["Option122"]

-- 弓手 --【极品2D武器兑换卷】
tItem[3005889]["Text1-3"] = {131}
tItem[3005889]["Text131"] = tWeekCards_Text[3005889]["Text111"]
tItem[3005889]["tOption1-3"] = {131,132}
tItem[3005889]["Option131"] = tWeekCards_Text[3005889]["Option131"]
tItem[3005889]["Option132"] = tWeekCards_Text[3005889]["Option132"]

-- 忍者 --【极品2D武器兑换卷】
tItem[3005889]["Text1-4"] = {141}
tItem[3005889]["Text141"] = tWeekCards_Text[3005889]["Text111"]
tItem[3005889]["tOption1-4"] = {141,142}
tItem[3005889]["Option141"] = tWeekCards_Text[3005889]["Option141"]
tItem[3005889]["Option142"] = tWeekCards_Text[3005889]["Option142"]

-- 武僧 --【极品2D武器兑换卷】
tItem[3005889]["Text1-5"] = {151}
tItem[3005889]["Text151"] = tWeekCards_Text[3005889]["Text111"]
tItem[3005889]["tOption1-5"] = {151}
tItem[3005889]["Option151"] = tWeekCards_Text[3005889]["Option151"]

-- 海盗 --【极品2D武器兑换卷】
tItem[3005889]["Text1-6"] = {161}
tItem[3005889]["Text161"] = tWeekCards_Text[3005889]["Text111"]
tItem[3005889]["tOption1-6"] = {161,162}
tItem[3005889]["Option161"] = tWeekCards_Text[3005889]["Option161"]
tItem[3005889]["Option162"] = tWeekCards_Text[3005889]["Option162"]

-- 拳师 --【极品2D武器兑换卷】
tItem[3005889]["Text1-7"] = {171}
tItem[3005889]["Text171"] = tWeekCards_Text[3005889]["Text111"]
tItem[3005889]["tOption1-7"] = {171}
tItem[3005889]["Option171"] = tWeekCards_Text[3005889]["Option171"]

-- 道士 --【极品2D武器兑换卷】
tItem[3005889]["Text1-8"] = {181}
tItem[3005889]["Text181"] = tWeekCards_Text[3005889]["Text111"]
tItem[3005889]["tOption1-8"] = {181}
tItem[3005889]["Option181"] = tWeekCards_Text[3005889]["Option181"]

-- 铁扇门 --【极品2D武器兑换卷】
tItem[3005889]["Text1-9"] = {191}
tItem[3005889]["Text191"] = tWeekCards_Text[3005889]["Text111"]
tItem[3005889]["tOption1-9"] = {191}
tItem[3005889]["Option191"] = tWeekCards_Text[3005889]["Option191"]

-- 雷神 --【极品2D武器兑换卷】
tItem[3005889]["Text1-10"] = {1101}
tItem[3005889]["Text1101"] = tWeekCards_Text[3005889]["Text111"]
tItem[3005889]["tOption1-10"] = {1101,1102}
tItem[3005889]["Option1101"] = tWeekCards_Text[3005889]["Option1101"]
tItem[3005889]["Option1102"] = tWeekCards_Text[3005889]["Option1102"]


--【二次确认】--【极品2D武器兑换卷】
tItem[3005889]["Text2-1"] = {211}
tItem[3005889]["Text211"] = tWeekCards_Text[3005889]["Text211"]
tItem[3005889]["tOption2-1"] = {211}
tItem[3005889]["Option211"] = tWeekCards_Text[3005889]["Option211"]

--------------------------------【神魂结晶】--------------------------------
tItem[3008576] = tItem[3008576] or {}
tItem[3008576]["Text1-1"] = {111}
tItem[3008576]["Text111"] = tWeekCards_Text[3008576]["Text111"]
tItem[3008576]["tOption1-1"] = {111,112,113,114,115}
tItem[3008576]["Option111"] = tWeekCards_Text[3008576]["Option111"]
tItem[3008576]["OptionFunc111"] = "WeekCards_DragonCrystal_IsOpen</N>3008576</N>1"
tItem[3008576]["Option112"] = tWeekCards_Text[3008576]["Option112"]
tItem[3008576]["OptionFunc112"] = "WeekCards_DragonCrystal_IsOpen</N>3008576</N>2"
tItem[3008576]["Option113"] = tWeekCards_Text[3008576]["Option113"]
tItem[3008576]["OptionFunc113"] = "WeekCards_DragonCrystal_IsOpen</N>3008576</N>4"
tItem[3008576]["Option114"] = tWeekCards_Text[3008576]["Option114"]
tItem[3008576]["OptionFunc114"] = "WeekCards_DragonCrystal_IsOpen</N>3008576</N>10</N>1"
tItem[3008576]["Option115"] = tWeekCards_Text[3008576]["Option115"]
tItem[3008576]["OptionFunc115"] = "WeekCards_DragonCrystal_IsOpen</N>3008576</N>10</N>2"

-- 【确认兑换】--【神魂结晶】
tItem[3008576]["Text2-1"] = {211}
tItem[3008576]["Text211"] = tWeekCards_Text[3008576]["Text211"]
tItem[3008576]["tOption2-1"] = {211}
tItem[3008576]["Option211"] = tWeekCards_Text[3008576]["Option211"]


--------------------------------【四阶神魂礼包】--------------------------------
tItem[3005891] = tItem[3005891] or {}
tItem[3005891]["Function"] = function (nItemId,sItemName)
	WeekCards_ProItem_Inter(nItemId)
end
-- 勇士 --【四阶神魂礼包】
tItem[3005891]["Text1-1"] = {111}
tItem[3005891]["Text111"] = tWeekCards_Text[3005891]["Text111"]
tItem[3005891]["tOption1-1"] = {111,112,113}
tItem[3005891]["Option111"] = tWeekCards_Text[3005891]["Option111"]
tItem[3005891]["Option112"] = tWeekCards_Text[3005891]["Option112"]
tItem[3005891]["Option113"] = tWeekCards_Text[3005891]["Option113"]

-- 战士 --【四阶神魂礼包】
tItem[3005891]["Text1-2"] = {121}
tItem[3005891]["Text121"] = tWeekCards_Text[3005891]["Text111"]
tItem[3005891]["tOption1-2"] = {121,122,123,124}
tItem[3005891]["Option121"] = tWeekCards_Text[3005891]["Option121"]
tItem[3005891]["Option122"] = tWeekCards_Text[3005891]["Option122"]
tItem[3005891]["Option123"] = tWeekCards_Text[3005891]["Option123"]
tItem[3005891]["Option124"] = tWeekCards_Text[3005891]["Option124"]

-- 弓手 --【四阶神魂礼包】
tItem[3005891]["Text1-3"] = {131}
tItem[3005891]["Text131"] = tWeekCards_Text[3005891]["Text111"]
tItem[3005891]["tOption1-3"] = {131,132,133}
tItem[3005891]["Option131"] = tWeekCards_Text[3005891]["Option131"]
tItem[3005891]["Option132"] = tWeekCards_Text[3005891]["Option132"]
tItem[3005891]["Option133"] = tWeekCards_Text[3005891]["Option133"]

-- 忍者 --【四阶神魂礼包】
tItem[3005891]["Text1-4"] = {141}
tItem[3005891]["Text141"] = tWeekCards_Text[3005891]["Text111"]
tItem[3005891]["tOption1-4"] = {141,142,143}
tItem[3005891]["Option141"] = tWeekCards_Text[3005891]["Option141"]
tItem[3005891]["Option142"] = tWeekCards_Text[3005891]["Option142"]
tItem[3005891]["Option143"] = tWeekCards_Text[3005891]["Option143"]

-- 武僧 --【四阶神魂礼包】
tItem[3005891]["Text1-5"] = {151}
tItem[3005891]["Text151"] = tWeekCards_Text[3005891]["Text111"]
tItem[3005891]["tOption1-5"] = {151,152}
tItem[3005891]["Option151"] = tWeekCards_Text[3005891]["Option151"]
tItem[3005891]["Option152"] = tWeekCards_Text[3005891]["Option152"]

-- 海盗 --【四阶神魂礼包】
tItem[3005891]["Text1-6"] = {161}
tItem[3005891]["Text161"] = tWeekCards_Text[3005891]["Text111"]
tItem[3005891]["tOption1-6"] = {161,162,163}
tItem[3005891]["Option161"] = tWeekCards_Text[3005891]["Option161"]
tItem[3005891]["Option162"] = tWeekCards_Text[3005891]["Option162"]
tItem[3005891]["Option163"] = tWeekCards_Text[3005891]["Option163"]

-- 拳师 --【四阶神魂礼包】
tItem[3005891]["Text1-7"] = {171}
tItem[3005891]["Text171"] = tWeekCards_Text[3005891]["Text111"]
tItem[3005891]["tOption1-7"] = {171,172}
tItem[3005891]["Option171"] = tWeekCards_Text[3005891]["Option171"]
tItem[3005891]["Option172"] = tWeekCards_Text[3005891]["Option172"]

-- 道士 --【四阶神魂礼包】
tItem[3005891]["Text1-8"] = {181}
tItem[3005891]["Text181"] = tWeekCards_Text[3005891]["Text111"]
tItem[3005891]["tOption1-8"] = {181,182}
tItem[3005891]["Option181"] = tWeekCards_Text[3005891]["Option181"]
tItem[3005891]["Option182"] = tWeekCards_Text[3005891]["Option182"]

-- 铁扇门 --【四阶神魂礼包】
tItem[3005891]["Text1-9"] = {191}
tItem[3005891]["Text191"] = tWeekCards_Text[3005891]["Text111"]
tItem[3005891]["tOption1-9"] = {191,192}
tItem[3005891]["Option191"] = tWeekCards_Text[3005891]["Option191"]
tItem[3005891]["Option192"] = tWeekCards_Text[3005891]["Option192"]

-- 雷神 --【四阶神魂礼包】
tItem[3005891]["Text1-10"] = {1101}
tItem[3005891]["Text1101"] = tWeekCards_Text[3005891]["Text111"]
tItem[3005891]["tOption1-10"] = {1101,1102,1103}
tItem[3005891]["Option1101"] = tWeekCards_Text[3005891]["Option1101"]
tItem[3005891]["Option1102"] = tWeekCards_Text[3005891]["Option1102"]
tItem[3005891]["Option1103"] = tWeekCards_Text[3005891]["Option1103"]




--【二次确认】--【四阶神魂礼包】
tItem[3005891]["Text2-1"] = {211}
tItem[3005891]["Text211"] = tWeekCards_Text[3005891]["Text211"]
tItem[3005891]["tOption2-1"] = {211}
tItem[3005891]["Option211"] = tWeekCards_Text[3005891]["Option211"]

--------------------------------【五阶神魂礼包】--------------------------------
tItem[3005892] = tItem[3005892] or {}
tItem[3005892]["Function"] = function (nItemId,sItemName)
	WeekCards_ProItem_Inter(nItemId)
end
-- 战士 --【五阶神魂礼包】
tItem[3005892]["Text1-2"] = {121}
tItem[3005892]["Text121"] = tWeekCards_Text[3005892]["Text121"]
tItem[3005892]["tOption1-2"] = {121,122,123}
tItem[3005892]["Option121"] = tWeekCards_Text[3005892]["Option121"]
tItem[3005892]["Option122"] = tWeekCards_Text[3005892]["Option122"]
tItem[3005892]["Option123"] = tWeekCards_Text[3005892]["Option123"]
-- 道士 --【五阶神魂礼包】
tItem[3005892]["Text1-8"] = {181}
tItem[3005892]["Text181"] = tWeekCards_Text[3005892]["Text121"]
tItem[3005892]["tOption1-8"] = {181,182}
tItem[3005892]["Option181"] = tWeekCards_Text[3005892]["Option181"]
tItem[3005892]["Option182"] = tWeekCards_Text[3005892]["Option182"]
-- 其他职业 --【五阶神魂礼包】
tItem[3005892]["Text1-10"] = {1101}
tItem[3005892]["Text1101"] = tWeekCards_Text[3005892]["Text121"]
tItem[3005892]["tOption1-10"] = {1101,1102}
tItem[3005892]["Option1101"] = tWeekCards_Text[3005892]["Option1101"]
tItem[3005892]["Option1102"] = tWeekCards_Text[3005892]["Option1102"]
--【二次确认】--【五阶神魂礼包】
tItem[3005892]["Text2-1"] = {211}
tItem[3005892]["Text211"] = tWeekCards_Text[3005892]["Text211"]
tItem[3005892]["tOption2-1"] = {211}
tItem[3005892]["Option211"] = tWeekCards_Text[3005892]["Option211"]

--------------------------------【六阶神魂礼包】--------------------------------
tItem[3005893] = tItem[3005893] or {}
tItem[3005893]["Function"] = function (nItemId,sItemName)
	WeekCards_ProItem_Inter(nItemId)
end
-- 勇士 --【六阶神魂礼包】
tItem[3005893]["Text1-1"] = {111}
tItem[3005893]["Text111"] = tWeekCards_Text[3005893]["Text111"]
tItem[3005893]["tOption1-1"] = {111,112,113,114,115,116,117,118}
tItem[3005893]["Option111"] = tWeekCards_Text[3005893]["Option111"]
tItem[3005893]["Option112"] = tWeekCards_Text[3005893]["Option112"]
tItem[3005893]["Option113"] = tWeekCards_Text[3005893]["Option113"]
tItem[3005893]["Option114"] = tWeekCards_Text[3005893]["Option114"]
tItem[3005893]["Option115"] = tWeekCards_Text[3005893]["Option115"]
tItem[3005893]["Option116"] = tWeekCards_Text[3005893]["Option116"]
tItem[3005893]["Option117"] = tWeekCards_Text[3005893]["Option117"]
tItem[3005893]["Option118"] = tWeekCards_Text[3005893]["Option118"]
-- 战士 --【六阶神魂礼包】
tItem[3005893]["Text1-2"] = {121}
tItem[3005893]["Text121"] = tWeekCards_Text[3005893]["Text111"]
tItem[3005893]["tOption1-2"] = {121,122,123,124,125,126,127,128,129}
tItem[3005893]["Option121"] = tWeekCards_Text[3005893]["Option121"]
tItem[3005893]["Option122"] = tWeekCards_Text[3005893]["Option122"]
tItem[3005893]["Option123"] = tWeekCards_Text[3005893]["Option123"]
tItem[3005893]["Option124"] = tWeekCards_Text[3005893]["Option124"]
tItem[3005893]["Option125"] = tWeekCards_Text[3005893]["Option125"]
tItem[3005893]["Option126"] = tWeekCards_Text[3005893]["Option126"]
tItem[3005893]["Option127"] = tWeekCards_Text[3005893]["Option127"]
tItem[3005893]["Option128"] = tWeekCards_Text[3005893]["Option128"]
tItem[3005893]["Option129"] = tWeekCards_Text[3005893]["Option129"]
-- 弓手 --【六阶神魂礼包】
tItem[3005893]["Text1-3"] = {131}
tItem[3005893]["Text131"] = tWeekCards_Text[3005893]["Text111"]
tItem[3005893]["tOption1-3"] = {131,132,133,134,135,136,137,138}
tItem[3005893]["Option131"] = tWeekCards_Text[3005893]["Option131"]
tItem[3005893]["Option132"] = tWeekCards_Text[3005893]["Option132"]
tItem[3005893]["Option133"] = tWeekCards_Text[3005893]["Option133"]
tItem[3005893]["Option134"] = tWeekCards_Text[3005893]["Option134"]
tItem[3005893]["Option135"] = tWeekCards_Text[3005893]["Option135"]
tItem[3005893]["Option136"] = tWeekCards_Text[3005893]["Option136"]
tItem[3005893]["Option137"] = tWeekCards_Text[3005893]["Option137"]
tItem[3005893]["Option138"] = tWeekCards_Text[3005893]["Option138"]
-- 忍者 --【六阶神魂礼包】
tItem[3005893]["Text1-4"] = {141}
tItem[3005893]["Text141"] = tWeekCards_Text[3005893]["Text111"]
tItem[3005893]["tOption1-4"] = {141,142,143,144,145,146,147,148}
tItem[3005893]["Option141"] = tWeekCards_Text[3005893]["Option141"]
tItem[3005893]["Option142"] = tWeekCards_Text[3005893]["Option142"]
tItem[3005893]["Option143"] = tWeekCards_Text[3005893]["Option143"]
tItem[3005893]["Option144"] = tWeekCards_Text[3005893]["Option144"]
tItem[3005893]["Option145"] = tWeekCards_Text[3005893]["Option145"]
tItem[3005893]["Option146"] = tWeekCards_Text[3005893]["Option146"]
tItem[3005893]["Option147"] = tWeekCards_Text[3005893]["Option147"]
tItem[3005893]["Option148"] = tWeekCards_Text[3005893]["Option148"]
-- 武僧 --【六阶神魂礼包】
tItem[3005893]["Text1-5"] = {151}
tItem[3005893]["Text151"] = tWeekCards_Text[3005893]["Text111"]
tItem[3005893]["tOption1-5"] = {151,152,153,154,155,156,157}
tItem[3005893]["Option151"] = tWeekCards_Text[3005893]["Option151"]
tItem[3005893]["Option152"] = tWeekCards_Text[3005893]["Option152"]
tItem[3005893]["Option153"] = tWeekCards_Text[3005893]["Option153"]
tItem[3005893]["Option154"] = tWeekCards_Text[3005893]["Option154"]
tItem[3005893]["Option155"] = tWeekCards_Text[3005893]["Option155"]
tItem[3005893]["Option156"] = tWeekCards_Text[3005893]["Option156"]
tItem[3005893]["Option157"] = tWeekCards_Text[3005893]["Option157"]
-- 海盗 --【六阶神魂礼包】
tItem[3005893]["Text1-6"] = {161}
tItem[3005893]["Text161"] = tWeekCards_Text[3005893]["Text111"]
tItem[3005893]["tOption1-6"] = {161,162,163,164,165,166,167,168}
tItem[3005893]["Option161"] = tWeekCards_Text[3005893]["Option161"]
tItem[3005893]["Option162"] = tWeekCards_Text[3005893]["Option162"]
tItem[3005893]["Option163"] = tWeekCards_Text[3005893]["Option163"]
tItem[3005893]["Option164"] = tWeekCards_Text[3005893]["Option164"]
tItem[3005893]["Option165"] = tWeekCards_Text[3005893]["Option165"]
tItem[3005893]["Option166"] = tWeekCards_Text[3005893]["Option166"]
tItem[3005893]["Option167"] = tWeekCards_Text[3005893]["Option167"]
tItem[3005893]["Option168"] = tWeekCards_Text[3005893]["Option168"]
-- 拳师 --【六阶神魂礼包】
tItem[3005893]["Text1-7"] = {171}
tItem[3005893]["Text171"] = tWeekCards_Text[3005893]["Text111"]
tItem[3005893]["tOption1-7"] = {171,172,173,174,175,176,177}
tItem[3005893]["Option171"] = tWeekCards_Text[3005893]["Option171"]
tItem[3005893]["Option172"] = tWeekCards_Text[3005893]["Option172"]
tItem[3005893]["Option173"] = tWeekCards_Text[3005893]["Option173"]
tItem[3005893]["Option174"] = tWeekCards_Text[3005893]["Option174"]
tItem[3005893]["Option175"] = tWeekCards_Text[3005893]["Option175"]
tItem[3005893]["Option176"] = tWeekCards_Text[3005893]["Option176"]
tItem[3005893]["Option177"] = tWeekCards_Text[3005893]["Option177"]
-- 道士 --【六阶神魂礼包】
tItem[3005893]["Text1-8"] = {181}
tItem[3005893]["Text181"] = tWeekCards_Text[3005893]["Text111"]
tItem[3005893]["tOption1-8"] = {181,182,183,184,185,186,187}
tItem[3005893]["Option181"] = tWeekCards_Text[3005893]["Option181"]
tItem[3005893]["Option182"] = tWeekCards_Text[3005893]["Option182"]
tItem[3005893]["Option183"] = tWeekCards_Text[3005893]["Option183"]
tItem[3005893]["Option184"] = tWeekCards_Text[3005893]["Option184"]
tItem[3005893]["Option185"] = tWeekCards_Text[3005893]["Option185"]
tItem[3005893]["Option186"] = tWeekCards_Text[3005893]["Option186"]
tItem[3005893]["Option187"] = tWeekCards_Text[3005893]["Option187"]
-- 铁扇门 --【六阶神魂礼包】
tItem[3005893]["Text1-9"] = {191}
tItem[3005893]["Text191"] = tWeekCards_Text[3005893]["Text111"]
tItem[3005893]["tOption1-9"] = {191,192,193,194,195,196,197}
tItem[3005893]["Option191"] = tWeekCards_Text[3005893]["Option191"]
tItem[3005893]["Option192"] = tWeekCards_Text[3005893]["Option192"]
tItem[3005893]["Option193"] = tWeekCards_Text[3005893]["Option193"]
tItem[3005893]["Option194"] = tWeekCards_Text[3005893]["Option194"]
tItem[3005893]["Option195"] = tWeekCards_Text[3005893]["Option195"]
tItem[3005893]["Option196"] = tWeekCards_Text[3005893]["Option196"]
tItem[3005893]["Option197"] = tWeekCards_Text[3005893]["Option197"]

-- 雷神 --【六阶神魂礼包】
tItem[3005893]["Text1-10"] = {1101}
tItem[3005893]["Text1101"] = tWeekCards_Text[3005893]["Text111"]
tItem[3005893]["tOption1-10"] = {1101,1102,1103,1104,1105,1106,1107,1108,1109,1110}
tItem[3005893]["Option1101"] = tWeekCards_Text[3005893]["Option1101"]
tItem[3005893]["Option1102"] = tWeekCards_Text[3005893]["Option1102"]
tItem[3005893]["Option1103"] = tWeekCards_Text[3005893]["Option1103"]
tItem[3005893]["Option1104"] = tWeekCards_Text[3005893]["Option1104"]
tItem[3005893]["Option1105"] = tWeekCards_Text[3005893]["Option1105"]
tItem[3005893]["Option1106"] = tWeekCards_Text[3005893]["Option1106"]
tItem[3005893]["Option1107"] = tWeekCards_Text[3005893]["Option1107"]
tItem[3005893]["Option1108"] = tWeekCards_Text[3005893]["Option1108"]
tItem[3005893]["Option1109"] = tWeekCards_Text[3005893]["Option1109"]
tItem[3005893]["Option11010"] = tWeekCards_Text[3005893]["Option11010"]

--【二次确认】--【六阶神魂礼包】
tItem[3005893]["Text2-1"] = {211}
tItem[3005893]["Text211"] = tWeekCards_Text[3005893]["Text211"]
tItem[3005893]["tOption2-1"] = {211}
tItem[3005893]["Option211"] = tWeekCards_Text[3005893]["Option211"]

--------------------------------【小乾坤袋碎片】--------------------------------
tItem[3008174] = tItem[3008174] or {}
tItem[3008174]["Text1-1"] = {111,112}
tItem[3008174]["Text111"] = tWeekCards_Text[3008174]["Text111"]
tItem[3008174]["Text112"] = tWeekCards_Text[3008174]["Text112"]
tItem[3008174]["tOption1-1"] = {111,112}
tItem[3008174]["Option111"] = tWeekCards_Text[3008174]["Option111"]
tItem[3008174]["OptionPoint111"] = "2-1"
tItem[3008174]["Option112"] = tWeekCards_Text[3008174]["Option112"]
tItem[3008174]["OptionPoint112"] = "2-2"
-- 单个使用【二次确认】--【小乾坤袋碎片】
tItem[3008174]["Text2-1"] = {211}
tItem[3008174]["Text211"] = tWeekCards_Text[3008174]["Text211"]
tItem[3008174]["tOption2-1"] = {211}
tItem[3008174]["Option211"] = tWeekCards_Text[3008174]["Option211"]
tItem[3008174]["OptionFunc211"] = "WeekCards_DragonCrystal_GetStone</N>3008174</N>1"

-- 10个使用【二次确认】--【小乾坤袋碎片】
tItem[3008174]["Text2-2"] = {221}
tItem[3008174]["Text221"] = tWeekCards_Text[3008174]["Text221"]
tItem[3008174]["tOption2-2"] = {221}
tItem[3008174]["Option221"] = tWeekCards_Text[3008174]["Option221"]
tItem[3008174]["OptionFunc221"] = "WeekCards_DragonCrystal_GetStone</N>3008174</N>2"

-------------------------------【属性秘令可选包】--------------------------------
tItem[3008175] = tItem[3008175] or {}
tItem[3008175]["Text1-1"] = {111,112}
tItem[3008175]["Text111"] = tWeekCards_Text[3008175]["Text111"]
tItem[3008175]["Text112"] = tWeekCards_Text[3008175]["Text112"]
tItem[3008175]["tOption1-1"] = {111,112,113,114}
tItem[3008175]["Option111"] = tWeekCards_Text[3008175]["Option111"]
tItem[3008175]["OptionFunc111"] = "WeekCards_SecretPack_IsOpen</N>3008175</N>1"
tItem[3008175]["Option112"] = tWeekCards_Text[3008175]["Option112"]
tItem[3008175]["OptionFunc112"] = "WeekCards_SecretPack_IsOpen</N>3008175</N>2"
tItem[3008175]["Option113"] = tWeekCards_Text[3008175]["Option113"]
tItem[3008175]["OptionFunc113"] = "WeekCards_SecretPack_IsOpen</N>3008175</N>3"
tItem[3008175]["Option114"] = tWeekCards_Text[3008175]["Option114"]
tItem[3008175]["OptionFunc114"] = "WeekCards_SecretPack_IsOpen</N>3008175</N>4"
-- 【二次确认】
tItem[3008175]["Text2-1"] = {211}
tItem[3008175]["Text211"] = tWeekCards_Text[3008175]["Text211"]
tItem[3008175]["tOption2-1"] = {211}
tItem[3008175]["Option211"] = tWeekCards_Text[3008175]["Option211"]
tItem[3008175]["OptionFunc211"] = ""

--------------------------------【固化石碎片】--------------------------------
tItem[3008178] = tItem[3008178] or {}
tItem[3008178]["Text1-1"] = {111,112}
tItem[3008178]["Text111"] = tWeekCards_Text[3008178]["Text111"]
tItem[3008178]["Text112"] = tWeekCards_Text[3008178]["Text112"]
tItem[3008178]["tOption1-1"] = {111,112}
tItem[3008178]["Option111"] = tWeekCards_Text[3008178]["Option111"]
tItem[3008178]["OptionPoint111"] = "2-1"
tItem[3008178]["Option112"] = tWeekCards_Text[3008178]["Option112"]
tItem[3008178]["OptionPoint112"] = "2-2"

-- 单个使用【二次确认】--【固化石碎片】
tItem[3008178]["Text2-1"] = {211}
tItem[3008178]["Text211"] = tWeekCards_Text[3008178]["Text211"]
tItem[3008178]["tOption2-1"] = {211}
tItem[3008178]["Option211"] = tWeekCards_Text[3008178]["Option211"]
tItem[3008178]["OptionFunc211"] = "WeekCards_DragonCrystal_GetStone</N>3008178</N>1"

-- 10个使用【二次确认】--【固化石碎片】
tItem[3008178]["Text2-2"] = {221}
tItem[3008178]["Text221"] = tWeekCards_Text[3008178]["Text221"]
tItem[3008178]["tOption2-2"] = {221}
tItem[3008178]["Option221"] = tWeekCards_Text[3008178]["Option221"]
tItem[3008178]["OptionFunc221"] = "WeekCards_DragonCrystal_GetStone</N>3008178</N>10"

--------------------------------【周礼包】--------------------------------
tItem[3008160] = tItem[3008160] or {}
tItem[3008161] = tItem[3008160] or {}
tItem[3008162] = tItem[3008160] or {}
tItem[3008163] = tItem[3008160] or {}
tItem[3008164] = tItem[3008160] or {}
tItem[3008165] = tItem[3008160] or {}
tItem[3008166] = tItem[3008160] or {}
tItem[3008160]["Function"] = function (nItemId,sItemName)
	WeekCards_WeekPack_OpenInter(nItemId)
end

--------------------------------【续费券】--------------------------------
tItem[3008167] = tItem[3008167] or {}
tItem[3008168] = tItem[3008167] or {}
tItem[3008169] = tItem[3008167] or {}
tItem[3008170] = tItem[3008167] or {}
tItem[3008171] = tItem[3008167] or {}
tItem[3008172] = tItem[3008167] or {}
tItem[3008173] = tItem[3008167] or {}
tItem[3008167]["Function"] = function (nItemId,sItemName)
	WeekCards_ResetPack_OpenInter(nItemId)
end
-- 主对白 -- 函数内重定义-- WeekCards_ResetPack_OpenInter
tItem[3008167]["Text1-1"] = {111,112,113}
tItem[3008167]["Text111"] = tWeekCards_Text[3008167]["Text111"]
tItem[3008167]["Text112"] = tWeekCards_Text[3008167]["Text112"]
tItem[3008167]["Text113"] = tWeekCards_Text[3008167]["Text113"]
tItem[3008167]["tOption1-1"] = {111,112}
tItem[3008167]["Option111"] = tWeekCards_Text[3008167]["Option111"]
tItem[3008167]["OptionFunc111"] = ""
tItem[3008167]["Option112"] = tWeekCards_Text[3008167]["Option112"]
-- 【二次确认】
tItem[3008167]["Text2-1"] = {211}
tItem[3008167]["Text211"] = tWeekCards_Text[3008167]["Text211"]
tItem[3008167]["tOption2-1"] = {211,212}
tItem[3008167]["Option211"] = tWeekCards_Text[3008167]["Option211"]
tItem[3008167]["OptionFunc211"] = ""
tItem[3008167]["Option212"] = tWeekCards_Text[3008167]["Option212"]
-- 失败，活动时间已过
tItem[3008167]["Text3-1"] = {311}
tItem[3008167]["Text311"] = tWeekCards_Text[3008167]["Text311"]
tItem[3008167]["tOption3-1"] = {311}
tItem[3008167]["Option311"] = tWeekCards_Text[3008167]["Option311"]
-- 失败，已有礼包
tItem[3008167]["Text3-2"] = {321}
tItem[3008167]["Text321"] = tWeekCards_Text[3008167]["Text321"]
tItem[3008167]["tOption3-2"] = {321}
tItem[3008167]["Option321"] = tWeekCards_Text[3008167]["Option321"]
-- 失败，天石不足
tItem[3008167]["Text3-3"] = {331}
tItem[3008167]["Text331"] = tWeekCards_Text[3008167]["Text331"]
tItem[3008167]["tOption3-3"] = {331}
tItem[3008167]["Option331"] = tWeekCards_Text[3008167]["Option331"]





