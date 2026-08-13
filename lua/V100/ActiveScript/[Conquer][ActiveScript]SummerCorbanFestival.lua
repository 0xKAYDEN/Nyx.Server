------------------------------------------------------------------------------------
--Name：        200528[英文征服][活动脚本]7月暑期+宰牲节活跃福利活动（7.14-7.31）
--Creator:      李瑞恒
--Created:     2020-05-28
------------------------------------------------------------------------------------


---------------------------------------------数据部分--------------------------------------------
local tSummerCorbanFestival_Global = {}
	tSummerCorbanFestival_Global[1] = 54720
-- Log表
local tSummerCorbanFestival_Log = {}
	-- 过期删除
	tSummerCorbanFestival_Log["OverDue"] = "0,0,%d,%d,12002022,2,0,0"


local tSummerCorbanFestival_Data = {}
tSummerCorbanFestival_Data['LoginReward'] = {}
tSummerCorbanFestival_Data['LoginReward']['EventType'] = 223
tSummerCorbanFestival_Data['LoginReward']['DataType'] = 16

tSummerCorbanFestival_Data['ItemDailyUsed'] = {}
tSummerCorbanFestival_Data['ItemDailyUsed']['EventType'] = 223
tSummerCorbanFestival_Data['ItemDailyUsed']['DataType'] = 17
tSummerCorbanFestival_Data['ItemDailyUsed']['UseTimes'] = 3

tSummerCorbanFestival_Data['ItemUsed'] = {}
tSummerCorbanFestival_Data['ItemUsed']['EventType'] = 223
tSummerCorbanFestival_Data['ItemUsed']['DataType'] = 18

tSummerCorbanFestival_Data['Item'] = {}
-- ===2转15+
-- ===索引: tSummerCorbanFestival_Data['Item'][1]
tSummerCorbanFestival_Data['Item'][1] = {}
tSummerCorbanFestival_Data['Item'][1]["LogId"] = 12002022
tSummerCorbanFestival_Data['Item'][1]["NeedMete"] = 2
tSummerCorbanFestival_Data['Item'][1]["NeedLevel"] = 15
tSummerCorbanFestival_Data['Item'][1]["RewardItem"] = {}
tSummerCorbanFestival_Data['Item'][1]["RewardItem"][1] = {}
tSummerCorbanFestival_Data['Item'][1]["RewardItem"][1]["Id"] = 3316399 -- SuperLesserBairamPack[3316399][属性:11][叠加:0][金币:0], 【表格】SuperLesserBairamPack
tSummerCorbanFestival_Data['Item'][1]["RewardItem"][1]["Attr"] = "0 1" -- SuperLesserBairamPack*1
tSummerCorbanFestival_Data['Item'][1]["RewardEffect"] = {}
tSummerCorbanFestival_Data['Item'][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSummerCorbanFestival_Data['Item'][1]["RewardEffect"]["Effect"] = "angelwing"


-- ===1转以上，2转以下
-- ===索引: tSummerCorbanFestival_Data['Item'][2]
tSummerCorbanFestival_Data['Item'][2] = {}
tSummerCorbanFestival_Data['Item'][2]["LogId"] = 12002022
tSummerCorbanFestival_Data['Item'][2]["NeedMete"] = 1
tSummerCorbanFestival_Data['Item'][2]["NeedLevel"] = 0
tSummerCorbanFestival_Data['Item'][2]["RewardItem"] = {}
tSummerCorbanFestival_Data['Item'][2]["RewardItem"][1] = {}
tSummerCorbanFestival_Data['Item'][2]["RewardItem"][1]["Id"] = 3316398 -- DeluxeLesserBairamPack(B)[3316398][属性:11][叠加:0][金币:0], 【表格】DeluxeLesserBairamPack（B）
tSummerCorbanFestival_Data['Item'][2]["RewardItem"][1]["Attr"] = "0 1" -- DeluxeLesserBairamPack(B)*1
tSummerCorbanFestival_Data['Item'][2]["RewardEffect"] = {}
tSummerCorbanFestival_Data['Item'][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSummerCorbanFestival_Data['Item'][2]["RewardEffect"]["Effect"] = "angelwing"


-- ===0转80级到0转140级
-- ===索引: tSummerCorbanFestival_Data['Item'][3]
tSummerCorbanFestival_Data['Item'][3] = {}
tSummerCorbanFestival_Data['Item'][3]["LogId"] = 12002022
tSummerCorbanFestival_Data['Item'][3]["NeedMete"] = 0
tSummerCorbanFestival_Data['Item'][3]["NeedLevel"] = 80
tSummerCorbanFestival_Data['Item'][3]["RewardItem"] = {}
tSummerCorbanFestival_Data['Item'][3]["RewardItem"][1] = {}
tSummerCorbanFestival_Data['Item'][3]["RewardItem"][1]["Id"] = 3316397 -- DeluxeLesserBairamPack(A)[3316397][属性:11][叠加:0][金币:0], 【表格】DeluxeLesserBairamPack（A）
tSummerCorbanFestival_Data['Item'][3]["RewardItem"][1]["Attr"] = "0 1" -- DeluxeLesserBairamPack(A)*1
tSummerCorbanFestival_Data['Item'][3]["RewardEffect"] = {}
tSummerCorbanFestival_Data['Item'][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSummerCorbanFestival_Data['Item'][3]["RewardEffect"]["Effect"] = "angelwing"


local tSummerCorbanFestival_ItemInfo = {}
tSummerCorbanFestival_ItemInfo[3316397] = {}
tSummerCorbanFestival_ItemInfo[3316397]["EMoneyLog"] = "1000	1898	0	0	%d	"  -- 记录礼包使用次数

-- ===DeluxeLesserBairamPack(A) 使用1
-- ===索引: tSummerCorbanFestival_ItemInfo[3316397][1]
tSummerCorbanFestival_ItemInfo[3316397][1] = {}
tSummerCorbanFestival_ItemInfo[3316397][1]["LogId"] = 12002022
tSummerCorbanFestival_ItemInfo[3316397][1]["RewardItem"] = {}
tSummerCorbanFestival_ItemInfo[3316397][1]["RewardItem"][1] = {}
tSummerCorbanFestival_ItemInfo[3316397][1]["RewardItem"][1]["Id"] = 1088001 -- Meteor[1088001][属性:0][叠加:0][金币:10000], 【表格】流星赠*1
tSummerCorbanFestival_ItemInfo[3316397][1]["RewardItem"][1]["Attr"] = "0 1 3" -- Meteor（赠）*1
tSummerCorbanFestival_ItemInfo[3316397][1]["RewardItem"][2] = {}
tSummerCorbanFestival_ItemInfo[3316397][1]["RewardItem"][2]["Id"] = 723700 -- EXPBall[723700][属性:11][叠加:0][金币:0], 【表格】经验球赠*3
tSummerCorbanFestival_ItemInfo[3316397][1]["RewardItem"][2]["Attr"] = "0 3 3" -- EXPBall*3
tSummerCorbanFestival_ItemInfo[3316397][1]["RewardItem"][3] = {}
tSummerCorbanFestival_ItemInfo[3316397][1]["RewardItem"][3]["Id"] = 3316396 -- NormalGemSelectionPack[3316396][属性:11][叠加:0][金币:0], 【表格】普通龙恨或者凤鸣宝石赠*1
tSummerCorbanFestival_ItemInfo[3316397][1]["RewardItem"][3]["Attr"] = "0 1 3" -- NormalGemSelectionPack*1
tSummerCorbanFestival_ItemInfo[3316397][1]["RewardEffect"] = {}
tSummerCorbanFestival_ItemInfo[3316397][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSummerCorbanFestival_ItemInfo[3316397][1]["RewardEffect"]["Effect"] = "angelwing"


-- ===DeluxeLesserBairamPack(A) 使用2
-- ===索引: tSummerCorbanFestival_ItemInfo[3316397][2]
tSummerCorbanFestival_ItemInfo[3316397][2] = {}
tSummerCorbanFestival_ItemInfo[3316397][2]["LogId"] = 12002022
tSummerCorbanFestival_ItemInfo[3316397][2]["RewardItem"] = {}
tSummerCorbanFestival_ItemInfo[3316397][2]["RewardItem"][1] = {}
tSummerCorbanFestival_ItemInfo[3316397][2]["RewardItem"][1]["Id"] = 730001 -- +1Stone[730001][属性:0][叠加:0][金币:0], 【表格】赤练石+1赠*1
tSummerCorbanFestival_ItemInfo[3316397][2]["RewardItem"][1]["Attr"] = "0 1 3" -- +1Stone（赠）*1
tSummerCorbanFestival_ItemInfo[3316397][2]["RewardItem"][2] = {}
tSummerCorbanFestival_ItemInfo[3316397][2]["RewardItem"][2]["Id"] = 3006291 -- +1SteedPack[3006291][属性:11][叠加:1][金币:0], 【表格】马匹+1赠*1
tSummerCorbanFestival_ItemInfo[3316397][2]["RewardItem"][2]["Attr"] = "0 1 3" -- +1SteedPack*1
tSummerCorbanFestival_ItemInfo[3316397][2]["RewardEMoneyMono"] = {}
tSummerCorbanFestival_ItemInfo[3316397][2]["RewardEMoneyMono"]["Value"] = 50 -- 天石（赠）, 【需求】赠点50
tSummerCorbanFestival_ItemInfo[3316397][2]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1909"
tSummerCorbanFestival_ItemInfo[3316397][2]["RewardEffect"] = {}
tSummerCorbanFestival_ItemInfo[3316397][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSummerCorbanFestival_ItemInfo[3316397][2]["RewardEffect"]["Effect"] = "angelwing"


-- ===DeluxeLesserBairamPack(A) 使用3
-- ===索引: tSummerCorbanFestival_ItemInfo[3316397][3]
tSummerCorbanFestival_ItemInfo[3316397][3] = {}
tSummerCorbanFestival_ItemInfo[3316397][3]["LogId"] = 12002022
tSummerCorbanFestival_ItemInfo[3316397][3]["RewardItem"] = {}
tSummerCorbanFestival_ItemInfo[3316397][3]["RewardItem"][1] = {}
tSummerCorbanFestival_ItemInfo[3316397][3]["RewardItem"][1]["Id"] = 3008994 -- DragonBloodstone[3008994][属性:9][叠加:10000][金币:0], 【表格】赠龙血晶石*2
tSummerCorbanFestival_ItemInfo[3316397][3]["RewardItem"][1]["Attr"] = "0 2 3" -- DragonBloodstone*2
tSummerCorbanFestival_ItemInfo[3316397][3]["RewardItem"][2] = {}
tSummerCorbanFestival_ItemInfo[3316397][3]["RewardItem"][2]["Id"] = 730001 -- +1Stone[730001][属性:0][叠加:0][金币:0], 【表格】赤练石+1赠*2
tSummerCorbanFestival_ItemInfo[3316397][3]["RewardItem"][2]["Attr"] = "0 2 3" -- +1Stone（赠）*2
tSummerCorbanFestival_ItemInfo[3316397][3]["RewardEffect"] = {}
tSummerCorbanFestival_ItemInfo[3316397][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSummerCorbanFestival_ItemInfo[3316397][3]["RewardEffect"]["Effect"] = "angelwing"


tSummerCorbanFestival_ItemInfo[3316398] = {}
tSummerCorbanFestival_ItemInfo[3316398]["EMoneyLog"] = "1000	1899	0	0	%d	"  -- 记录礼包使用次数
-- ===DeluxeLesserBairamPack(B) 使用1
-- ===索引: tSummerCorbanFestival_ItemInfo[3316398][1]
tSummerCorbanFestival_ItemInfo[3316398][1] = {}
tSummerCorbanFestival_ItemInfo[3316398][1]["LogId"] = 12002022
tSummerCorbanFestival_ItemInfo[3316398][1]["RewardItem"] = {}
tSummerCorbanFestival_ItemInfo[3316398][1]["RewardItem"][1] = {}
tSummerCorbanFestival_ItemInfo[3316398][1]["RewardItem"][1]["Id"] = 1088001 -- Meteor[1088001][属性:0][叠加:0][金币:10000], 【表格】流星赠*1
tSummerCorbanFestival_ItemInfo[3316398][1]["RewardItem"][1]["Attr"] = "0 1 3" -- Meteor（赠）*1
tSummerCorbanFestival_ItemInfo[3316398][1]["RewardStrengthValue"] = {}
tSummerCorbanFestival_ItemInfo[3316398][1]["RewardStrengthValue"]["Value"] = 100 -- 气力值, 【需求】赠气力值100点
tSummerCorbanFestival_ItemInfo[3316398][1]["RewardItem"][2] = {}
tSummerCorbanFestival_ItemInfo[3316398][1]["RewardItem"][2]["Id"] = 3009000 -- TwilightStarStone[3009000][属性:9][叠加:0][金币:0], 【表格】微光星陨石*2
tSummerCorbanFestival_ItemInfo[3316398][1]["RewardItem"][2]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的TwilightStarStone*2
tSummerCorbanFestival_ItemInfo[3316398][1]["RewardEffect"] = {}
tSummerCorbanFestival_ItemInfo[3316398][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSummerCorbanFestival_ItemInfo[3316398][1]["RewardEffect"]["Effect"] = "angelwing"


-- ===DeluxeLesserBairamPack(B) 使用2
-- ===索引: tSummerCorbanFestival_ItemInfo[3316398][2]
tSummerCorbanFestival_ItemInfo[3316398][2] = {}
tSummerCorbanFestival_ItemInfo[3316398][2]["LogId"] = 12002022
tSummerCorbanFestival_ItemInfo[3316398][2]["RewardItem"] = {}
tSummerCorbanFestival_ItemInfo[3316398][2]["RewardItem"][1] = {}
tSummerCorbanFestival_ItemInfo[3316398][2]["RewardItem"][1]["Id"] = 3006291 -- +1SteedPack[3006291][属性:11][叠加:1][金币:0], 【表格】赠马匹+1*1
tSummerCorbanFestival_ItemInfo[3316398][2]["RewardItem"][1]["Attr"] = "0 1 3" -- +1SteedPack*1
tSummerCorbanFestival_ItemInfo[3316398][2]["RewardItem"][2] = {}
tSummerCorbanFestival_ItemInfo[3316398][2]["RewardItem"][2]["Id"] = 730001 -- +1Stone[730001][属性:0][叠加:0][金币:0], 【表格】赤炼石+1赠*2
tSummerCorbanFestival_ItemInfo[3316398][2]["RewardItem"][2]["Attr"] = "0 2 3" -- +1Stone（赠）*2
tSummerCorbanFestival_ItemInfo[3316398][2]["RewardItem"][3] = {}
tSummerCorbanFestival_ItemInfo[3316398][2]["RewardItem"][3]["Id"] = 3306370 -- YellowRuneFragment[3306370][属性:9][叠加:10000][金币:0], 【表格】赠非稀有黄色神纹碎片*1
tSummerCorbanFestival_ItemInfo[3316398][2]["RewardItem"][3]["Attr"] = "0 1 3" -- YellowRuneFragment*1
tSummerCorbanFestival_ItemInfo[3316398][2]["RewardItem"][4] = {}
tSummerCorbanFestival_ItemInfo[3316398][2]["RewardItem"][4]["Id"] = 700122 -- GloryGem[700122][属性:0][叠加:0][金币:0], 【表格】良品地灵宝石赠*1
tSummerCorbanFestival_ItemInfo[3316398][2]["RewardItem"][4]["Attr"] = "0 1 3" -- GloryGem（赠）*1
tSummerCorbanFestival_ItemInfo[3316398][2]["RewardEffect"] = {}
tSummerCorbanFestival_ItemInfo[3316398][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSummerCorbanFestival_ItemInfo[3316398][2]["RewardEffect"]["Effect"] = "angelwing"


-- ===DeluxeLesserBairamPack(B) 使用3
-- ===索引: tSummerCorbanFestival_ItemInfo[3316398][3]
tSummerCorbanFestival_ItemInfo[3316398][3] = {}
tSummerCorbanFestival_ItemInfo[3316398][3]["LogId"] = 12002022
tSummerCorbanFestival_ItemInfo[3316398][3]["RewardEMoneyMono"] = {}
tSummerCorbanFestival_ItemInfo[3316398][3]["RewardEMoneyMono"]["Value"] = 100 -- 天石（赠）, 【需求】赠点100
tSummerCorbanFestival_ItemInfo[3316398][3]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1910"
tSummerCorbanFestival_ItemInfo[3316398][3]["RewardItem"] = {}
tSummerCorbanFestival_ItemInfo[3316398][3]["RewardItem"][1] = {}
tSummerCorbanFestival_ItemInfo[3316398][3]["RewardItem"][1]["Id"] = 730002 -- +2Stone[730002][属性:0][叠加:0][金币:0], 【表格】赤练石+2赠*2
tSummerCorbanFestival_ItemInfo[3316398][3]["RewardItem"][1]["Attr"] = "0 2 3" -- +2Stone（赠）*2
tSummerCorbanFestival_ItemInfo[3316398][3]["RewardEffect"] = {}
tSummerCorbanFestival_ItemInfo[3316398][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSummerCorbanFestival_ItemInfo[3316398][3]["RewardEffect"]["Effect"] = "angelwing"


tSummerCorbanFestival_ItemInfo[3316399] = {}
tSummerCorbanFestival_ItemInfo[3316399]["EMoneyLog"] = "1000	1900	0	0	%d	"  -- 记录礼包使用次数
-- ===SuperLesserBairamPack 使用1
-- ===索引: tSummerCorbanFestival_ItemInfo[3316399][1]
tSummerCorbanFestival_ItemInfo[3316399][1] = {}
tSummerCorbanFestival_ItemInfo[3316399][1]["LogId"] = 12002022
tSummerCorbanFestival_ItemInfo[3316399][1]["RewardItem"] = {}
tSummerCorbanFestival_ItemInfo[3316399][1]["RewardItem"][1] = {}
tSummerCorbanFestival_ItemInfo[3316399][1]["RewardItem"][1]["Id"] = 3009000 -- TwilightStarStone[3009000][属性:9][叠加:0][金币:0], 【表格】微光星陨石*5
tSummerCorbanFestival_ItemInfo[3316399][1]["RewardItem"][1]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的TwilightStarStone*5
tSummerCorbanFestival_ItemInfo[3316399][1]["RewardItem"][2] = {}
tSummerCorbanFestival_ItemInfo[3316399][1]["RewardItem"][2]["Id"] = 4050001 -- YellowRuneEssence[4050001][属性:9][叠加:10000][金币:0], 【表格】赠品黄色神纹精粹*5
tSummerCorbanFestival_ItemInfo[3316399][1]["RewardItem"][2]["Attr"] = "0 5 3" -- YellowRuneEssence*5
tSummerCorbanFestival_ItemInfo[3316399][1]["RewardRepairValue"] = {}
tSummerCorbanFestival_ItemInfo[3316399][1]["RewardRepairValue"]["Value"] = 300 -- 修为值, 【需求】赠修为值300
tSummerCorbanFestival_ItemInfo[3316399][1]["RewardItem"][3] = {}
tSummerCorbanFestival_ItemInfo[3316399][1]["RewardItem"][3]["Id"] = 3306370 -- YellowRuneFragment[3306370][属性:9][叠加:10000][金币:0], 【表格】赠非稀有黄色神纹碎片*2
tSummerCorbanFestival_ItemInfo[3316399][1]["RewardItem"][3]["Attr"] = "0 2 3" -- YellowRuneFragment*2
tSummerCorbanFestival_ItemInfo[3316399][1]["RewardEffect"] = {}
tSummerCorbanFestival_ItemInfo[3316399][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSummerCorbanFestival_ItemInfo[3316399][1]["RewardEffect"]["Effect"] = "angelwing"


-- ===SuperLesserBairamPack 使用2
-- ===索引: tSummerCorbanFestival_ItemInfo[3316399][2]
tSummerCorbanFestival_ItemInfo[3316399][2] = {}
tSummerCorbanFestival_ItemInfo[3316399][2]["LogId"] = 12002022
tSummerCorbanFestival_ItemInfo[3316399][2]["RewardItem"] = {}
tSummerCorbanFestival_ItemInfo[3316399][2]["RewardItem"][1] = {}
tSummerCorbanFestival_ItemInfo[3316399][2]["RewardItem"][1]["Id"] = 730003 -- +3Stone[730003][属性:0][叠加:0][金币:0], 【表格】赤练石+3赠*1
tSummerCorbanFestival_ItemInfo[3316399][2]["RewardItem"][1]["Attr"] = "0 1 3" -- +3Stone（赠）*1
tSummerCorbanFestival_ItemInfo[3316399][2]["RewardItem"][2] = {}
tSummerCorbanFestival_ItemInfo[3316399][2]["RewardItem"][2]["Id"] = 3009001 -- BrightStarStone[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石*2
tSummerCorbanFestival_ItemInfo[3316399][2]["RewardItem"][2]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的BrightStarStone*2
tSummerCorbanFestival_ItemInfo[3316399][2]["RewardStrengthValue"] = {}
tSummerCorbanFestival_ItemInfo[3316399][2]["RewardStrengthValue"]["Value"] = 1000 -- 气力值, 【需求】气力值1000点
tSummerCorbanFestival_ItemInfo[3316399][2]["RewardEffect"] = {}
tSummerCorbanFestival_ItemInfo[3316399][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSummerCorbanFestival_ItemInfo[3316399][2]["RewardEffect"]["Effect"] = "angelwing"


-- ===SuperLesserBairamPack 使用3
-- ===索引: tSummerCorbanFestival_ItemInfo[3316399][3]
tSummerCorbanFestival_ItemInfo[3316399][3] = {}
tSummerCorbanFestival_ItemInfo[3316399][3]["LogId"] = 12002022
tSummerCorbanFestival_ItemInfo[3316399][3]["RewardItem"] = {}
tSummerCorbanFestival_ItemInfo[3316399][3]["RewardItem"][1] = {}
tSummerCorbanFestival_ItemInfo[3316399][3]["RewardItem"][1]["Id"] = 3311759 -- RuneCrystal[3311759][属性:8][叠加:10000][金币:0], 【表格】赠神纹源晶*1
tSummerCorbanFestival_ItemInfo[3316399][3]["RewardItem"][1]["Attr"] = "0 1 3" -- RuneCrystal（赠）*1
tSummerCorbanFestival_ItemInfo[3316399][3]["RewardEMoneyMono"] = {}
tSummerCorbanFestival_ItemInfo[3316399][3]["RewardEMoneyMono"]["Value"] = 200 -- 天石（赠）, 【需求】赠点200
tSummerCorbanFestival_ItemInfo[3316399][3]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1911"
tSummerCorbanFestival_ItemInfo[3316399][3]["RewardEffect"] = {}
tSummerCorbanFestival_ItemInfo[3316399][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSummerCorbanFestival_ItemInfo[3316399][3]["RewardEffect"]["Effect"] = "angelwing"

tSummerCorbanFestival_ItemInfo[3316396] = {}
-- ===NormalGemSelectionPack
-- ===索引: tSummerCorbanFestival_ItemInfo[3316396][1]
-- ===删除:3316396,1
tSummerCorbanFestival_ItemInfo[3316396][1] = {}
tSummerCorbanFestival_ItemInfo[3316396][1]["LogId"] = 12002022
tSummerCorbanFestival_ItemInfo[3316396][1]["DeleteItem"] = {}
tSummerCorbanFestival_ItemInfo[3316396][1]["DeleteItem"][1] = {}
tSummerCorbanFestival_ItemInfo[3316396][1]["DeleteItem"][1]["Id"] = 3316396 -- 【库】NormalGemSelectionPack[属性:11]
tSummerCorbanFestival_ItemInfo[3316396][1]["RewardItem"] = {}
tSummerCorbanFestival_ItemInfo[3316396][1]["RewardItem"][1] = {}
tSummerCorbanFestival_ItemInfo[3316396][1]["RewardItem"][1]["Id"] = 700011 -- DragonGem[700011][属性:0][叠加:0][金币:0], 【表格】普通龙恨宝石
tSummerCorbanFestival_ItemInfo[3316396][1]["RewardItem"][1]["Attr"] = "0 1 3" -- DragonGem（赠）*1
tSummerCorbanFestival_ItemInfo[3316396][1]["RewardEffect"] = {}
tSummerCorbanFestival_ItemInfo[3316396][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSummerCorbanFestival_ItemInfo[3316396][1]["RewardEffect"]["Effect"] = "angelwing"


-- ===NormalGemSelectionPack
-- ===索引: tSummerCorbanFestival_ItemInfo[3316396][2]
-- ===删除:3316396,1
tSummerCorbanFestival_ItemInfo[3316396][2] = {}
tSummerCorbanFestival_ItemInfo[3316396][2]["LogId"] = 12002022
tSummerCorbanFestival_ItemInfo[3316396][2]["DeleteItem"] = {}
tSummerCorbanFestival_ItemInfo[3316396][2]["DeleteItem"][1] = {}
tSummerCorbanFestival_ItemInfo[3316396][2]["DeleteItem"][1]["Id"] = 3316396 -- 【库】NormalGemSelectionPack[属性:11]
tSummerCorbanFestival_ItemInfo[3316396][2]["RewardItem"] = {}
tSummerCorbanFestival_ItemInfo[3316396][2]["RewardItem"][1] = {}
tSummerCorbanFestival_ItemInfo[3316396][2]["RewardItem"][1]["Id"] = 700001 -- PhoenixGem[700001][属性:0][叠加:0][金币:0], 【表格】普通凤鸣宝石
tSummerCorbanFestival_ItemInfo[3316396][2]["RewardItem"][1]["Attr"] = "0 1 3" -- PhoenixGem（赠）*1
tSummerCorbanFestival_ItemInfo[3316396][2]["RewardEffect"] = {}
tSummerCorbanFestival_ItemInfo[3316396][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tSummerCorbanFestival_ItemInfo[3316396][2]["RewardEffect"]["Effect"] = "angelwing"

---------------------------------------------逻辑部分--------------------------------------------

-- 获取掩码值
function SummerCorbanFestival_GetStc(sIndex)
	if tSummerCorbanFestival_Data[sIndex] == nil then
		return 0
	end
	
	local nSummerCorbanFestival_EventType = tSummerCorbanFestival_Data[sIndex]['EventType']
	local nSummerCorbanFestival_DataType = tSummerCorbanFestival_Data[sIndex]['DataType']
	return Get_UserStatisticValue(nSummerCorbanFestival_EventType,nSummerCorbanFestival_DataType)
end

-- 加掩码值
function SummerCorbanFestival_AddStc(sIndex,nData)
	if tSummerCorbanFestival_Data[sIndex] == nil then
		return 0
	end

	local nSummerCorbanFestival_EventType = tSummerCorbanFestival_Data[sIndex]['EventType']
	local nSummerCorbanFestival_DataType = tSummerCorbanFestival_Data[sIndex]['DataType']
	
	Task_AddStatistic(nSummerCorbanFestival_EventType,nSummerCorbanFestival_DataType,nData,1)
	Task_SetStcTimestamp(nSummerCorbanFestival_EventType,nSummerCorbanFestival_DataType,0)
end

-- 设掩码值
function SummerCorbanFestival_SetStc(sIndex,nData)
	if tSummerCorbanFestival_Data[sIndex] == nil then
		return 0
	end

	local nSummerCorbanFestival_EventType = tSummerCorbanFestival_Data[sIndex]['EventType']
	local nSummerCorbanFestival_DataType = tSummerCorbanFestival_Data[sIndex]['DataType']
	Task_SetStatistic(nSummerCorbanFestival_EventType,nSummerCorbanFestival_DataType,nData,1)
	Task_SetStcTimestamp(nSummerCorbanFestival_EventType,nSummerCorbanFestival_DataType,0)
end

-- 检查掩码是否存在
function SummerCorbanFestival_IsExistStc(sIndex)
	if tSummerCorbanFestival_Data[sIndex] == nil then
		return 0
	end

	local nSummerCorbanFestival_EventType = tSummerCorbanFestival_Data[sIndex]['EventType']
	local nSummerCorbanFestival_DataType = tSummerCorbanFestival_Data[sIndex]['DataType']
	
	return Task_ChkStatistic(nSummerCorbanFestival_EventType,nSummerCorbanFestival_DataType)
end

-- 删除掩码
function SummerCorbanFestival_DelStc(sIndex)
	if tSummerCorbanFestival_Data[sIndex] == nil then
		return 0
	end

	local nSummerCorbanFestival_EventType = tSummerCorbanFestival_Data[sIndex]['EventType']
	local nSummerCorbanFestival_DataType = tSummerCorbanFestival_Data[sIndex]['DataType']
	
	return Task_DelStatistic(nSummerCorbanFestival_EventType,nSummerCorbanFestival_DataType)
end

-- 判断是否隔天
function SummerCorbanFestival_IsIntervalDay(sIndex)
	if tSummerCorbanFestival_Data[sIndex] == nil then
		return false
	end

	local nSummerCorbanFestival_EventType = tSummerCorbanFestival_Data[sIndex]['EventType']
	local nSummerCorbanFestival_DataType = tSummerCorbanFestival_Data[sIndex]['DataType']
	
	if Task_StcInterval(nSummerCorbanFestival_EventType,nSummerCorbanFestival_DataType,1,4) then
		return true
	end
	
	return false
end

---判断服务器
function SummerCorbanFestival_JubServer()
	local nGlobal = tSummerCorbanFestival_Global[1]
	local nData = Get_SysDynaGlobalData(nGlobal,0)
	if nData >= 1 then
		return true
	else
		return false
	end
end

-- 上线触发领取奖励
function SummerCorbanFestival_LoginReward()
	if not Sys_ChkFullTime(tActivityTime["tSummerCorbanFestival"]["ActivityTime"]) then
		SummerCorbanFestival_DelStc('LoginReward')
		return
	end
	if not SummerCorbanFestival_JubServer() then
		return
	end
	if not SummerCorbanFestival_IsExistStc('LoginReward') then
		SummerCorbanFestival_SetStc('LoginReward',0)
	else
		local nSummerCorbanFestival_Stc = SummerCorbanFestival_GetStc('LoginReward')
		if nSummerCorbanFestival_Stc >= 1 then
			return
		end
	end
	
	local nSummerCorbanFestival_Type = 0
	for i,v in ipairs(tSummerCorbanFestival_Data['Item']) do
		if User_JudgeLevelAndMetempsychosis(v["NeedLevel"],v["NeedMete"]) then
				nSummerCorbanFestival_Type = i
			break
		end
	end
	
	if nSummerCorbanFestival_Type == 0 then
		return
	end
	
	local tSummerCorbanFestival_Reward = CommonFunc_Copy(tSummerCorbanFestival_Data['Item'][nSummerCorbanFestival_Type])
	local nSummerCorbanFestival_space = RewardTemplate_GetRewardSpace(tSummerCorbanFestival_Reward)
	if not User_CheckLeftSpace(nSummerCorbanFestival_space) then
		Sys_MsgBox(string.format(tSummerCorbanFestival_Activities_Text["Limit"][1],nSummerCorbanFestival_space))
		return
	end
	
	SummerCorbanFestival_AddStc('LoginReward',1)
	
	-- 给物品
	RewardTemplate_UseItemAndMsg(tSummerCorbanFestival_Reward) 
		-- SummerCorbanFestival_SetStc('LoginReward',0)

end

-- 获取奖励限制判断，背包空间限制, CPs满限制
function SummerCorbanFestival_RewardLimit(tReward)
	local nSummerCorbanFestival_AddEmoney = 0
	local nSummerCorbanFestival_Space = 0
	
	for i,v in pairs(tReward) do
		if string.find(i,"RewardItem") then
			for m,n in pairs (v) do
				nSummerCorbanFestival_Space = nSummerCorbanFestival_Space + RewardTemplate_GetSpace(n)
			end
		elseif string.find(i,"RewardEMoneyMono") then
			nSummerCorbanFestival_AddEmoney = v["Value"]
		end
	end
	
	if nSummerCorbanFestival_Space > 0 and (not User_CheckLeftSpace(nSummerCorbanFestival_Space)) then
		Sys_MsgBox(string.format(tSummerCorbanFestival_Activities_Text["Limit"][1],nSummerCorbanFestival_Space))
		return false
	end
	
	-- 没有给赠CPs，无需后续流程
	if nSummerCorbanFestival_AddEmoney == 0 then
		return true
	end

	local nSummerCorbanFestival_Emoney = Get_UserMonoEMoney()
	if nSummerCorbanFestival_Emoney + nSummerCorbanFestival_AddEmoney > G_User_MaxEmoneyMono then
		Sys_MsgBox(string.format(tSummerCorbanFestival_Activities_Text["Limit"][2]))
		return false
	end
	
	return true
end

-- 道具使用次数记录
function SummerCorbanFestival_ItemUsedTimes(nItemId)
	if not SummerCorbanFestival_IsExistStc('ItemUsed') then
		SummerCorbanFestival_SetStc('ItemUsed',0)
	end
	
	SummerCorbanFestival_AddStc('ItemUsed',1)
	local nSummerCorbanFestival_Stc = SummerCorbanFestival_GetStc('ItemUsed')
	Sys_SaveEmoneyBuy(string.format(tSummerCorbanFestival_ItemInfo[nItemId]["EMoneyLog"],nSummerCorbanFestival_Stc))
end

-- (3316397-3316399)道具使用
function SummerCorbanFestival_LoginItemUsed(nItemId)
	if not Sys_ChkFullTime(tActivityTime["tSummerCorbanFestival"]["ActivityTime"]) then
		local nSummerCorbanFestival_Count = Get_CountItemType(nItemId,0)
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tSummerCorbanFestival_Activities_Text["Limit"][3])	
			local sLog = tSummerCorbanFestival_Log["OverDue"]
			Sys_SaveActionFestivalLog(string.format(sLog,nItemId,nSummerCorbanFestival_Count))
		end
		return
	end
	
	if not Item_ChkItem(nItemId) then
		return
	end
	
	local nSummerCorbanFestival_Stc = 0
	if not SummerCorbanFestival_IsExistStc('ItemDailyUsed') then
		SummerCorbanFestival_SetStc('ItemDailyUsed',0)
	else
		-- 隔天判断
		if SummerCorbanFestival_IsIntervalDay('ItemDailyUsed') then
			SummerCorbanFestival_SetStc('ItemDailyUsed',0)
		else
			nSummerCorbanFestival_Stc = SummerCorbanFestival_GetStc('ItemDailyUsed')
			if nSummerCorbanFestival_Stc >= tSummerCorbanFestival_Data['ItemDailyUsed']['UseTimes'] then
				Sys_MsgBox(string.format(tSummerCorbanFestival_Activities_Text["Time"][1],tSummerCorbanFestival_Data['ItemDailyUsed']['UseTimes']))
				return
			end
		end
	end
	
	if nSummerCorbanFestival_Stc > 0 then
		local nSummerCorbanFestival_EventType = tSummerCorbanFestival_Data['ItemDailyUsed']['EventType']
		local nSummerCorbanFestival_DataType = tSummerCorbanFestival_Data['ItemDailyUsed']['DataType']
		-- 是否大于30分钟
		if not Task_StcInterval(nSummerCorbanFestival_EventType,nSummerCorbanFestival_DataType,30,1) then
			Sys_MsgBox(string.format(tSummerCorbanFestival_Activities_Text["Time"][2]))
			return
		end
	end
	
	local nCurUseItems = nSummerCorbanFestival_Stc + 1
	local tSummerCorbanFestival_Reward = tSummerCorbanFestival_ItemInfo[nItemId][nCurUseItems]
	if tSummerCorbanFestival_Reward == nil then
		return
	end
	
	if not SummerCorbanFestival_RewardLimit(tSummerCorbanFestival_Reward) then
		return
	end
	
	SummerCorbanFestival_AddStc('ItemDailyUsed',1)
	SummerCorbanFestival_ItemUsedTimes(nItemId)
	
	if RewardTemplate_UseItemAndMsg(tSummerCorbanFestival_Reward) then
		if nCurUseItems >= tSummerCorbanFestival_Data['ItemDailyUsed']['UseTimes'] then				
			Sys_MsgBox(string.format(tSummerCorbanFestival_Activities_Text["RewardLog"][1],nCurUseItems,tSummerCorbanFestival_Activities_Text[nItemId][nCurUseItems]))
		else				
			Sys_MsgBox(string.format(tSummerCorbanFestival_Activities_Text["RewardLog"][2],nCurUseItems,tSummerCorbanFestival_Activities_Text[nItemId][nCurUseItems],tSummerCorbanFestival_Activities_Text[nItemId][nCurUseItems + 1]))
		end
	end
end

-- 3316396 道具使用 
-- nType = 1 获得Normal Dragon Gem (B)  
-- nType = 2 获得普通凤吟宝石 (B)
function SummerCorbanFestival_GemItemUsed(nItemId,nType)
	if not Item_ChkItem(nItemId) then
		return
	end
	
	RewardTemplate_UseItemAndMsg(tSummerCorbanFestival_ItemInfo[nItemId][nType])
end

---------------------------------------------道具模板---------------------------------------------

tItemFace[3316396] = 2972
tItem[3316396] = tItem[3316396] or {}
tItem[3316396]["Text1-1"] = {111}
tItem[3316396]["Text111"] = tSummerCorbanFestival_Activities_Text[3316396]["Text111"]
tItem[3316396]["tOption1-1"] = {1,2}
tItem[3316396]["Option1"] = tSummerCorbanFestival_Activities_Text[3316396]["Option1"]
tItem[3316396]["OptionFunc1"] = "SummerCorbanFestival_GemItemUsed</N>3316396</N>1"
tItem[3316396]["Option2"] = tSummerCorbanFestival_Activities_Text[3316396]["Option2"]
tItem[3316396]["OptionFunc2"] = "SummerCorbanFestival_GemItemUsed</N>3316396</N>2"

tItem[3316397] = tItem[3316397] or {}
tItem[3316397]["Function"] = function(nItemId,sItemName)
	SummerCorbanFestival_LoginItemUsed(nItemId)
end

tItem[3316398] = tItem[3316397] or {}
tItem[3316399] = tItem[3316397] or {}

---------------------------------------------上线触发---------------------------------------------
tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
table.insert(tSystem_PlayLogin_Func,SummerCorbanFestival_LoginReward)


---------------------------------------------测试---------------------------------------------
-- function DelStc()
	-- User_TalkChannel2005("Del  OK")
	-- SummerCorbanFestival_DelStc("LoginReward")
	-- SummerCorbanFestival_DelStc("ItemDailyUsed")
-- end
