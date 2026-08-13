------------------------------------------------------------------------------------
--Name：            200628[简体征服][活动脚本]全球七夕花魁活动（剧情）
--Creator:      耿力兀
--Created:     2020-06-28
------------------------------------------------------------------------------------
--任务需求：

------------------------------------------------------------------------------------
--前缀：QixiFestivalNPC_
--logid：12002030[1]
--全球掩码：30003  记录喜鹊数量
--stc：224 12 - 224 31
----------------------------------表配置部分--------------------------------------------
tRankingFunc_Info[26809] = {}
tRankingFunc_Info[26809]["Reset"] = 1
tRankingFunc_Info[26809]["ActiveTime"] = tActivityTime["QixiFestivalNPC"]["NPCTime"]
tRankingFunc_Info[26809]["DayTime"] = {}
tRankingFunc_Info[26809]["DayTime"][1] = "00:00 23:59"
tRankingFunc_Info[26809]["Global"] = {54698,54699,54700,54701}
tRankingFunc_Info[26809]["RankMode"] = 1
tRankingFunc_Info[26809]["RankNum"] = 10
tRankingFunc_Info[26809]["Mail"] = {}
tRankingFunc_Info[26809]["Mail"]["ActiveTime"] = tActivityTime["QixiFestivalNPC"]["EmailTime"]
tRankingFunc_Info[26809]["Mail"]["RewardTime"] = {}
tRankingFunc_Info[26809]["Mail"]["RewardTime"] = {}
tRankingFunc_Info[26809]["Mail"]["RewardTime"][1] = "00:00 00:03"
tRankingFunc_Info[26809]["Mail"]["Reward"] = {}
tRankingFunc_Info[26809]["Mail"]["Reward"][1] = {}
tRankingFunc_Info[26809]["Mail"]["Reward"][1]["RewardRank"] = 1
tRankingFunc_Info[26809]["Mail"]["Reward"][1]["ActionId"] = 578312
tRankingFunc_Info[26809]["Mail"]["Reward"][1]["ExistDay"] = 7
tRankingFunc_Info[26809]["Mail"]["Reward"][1]["Title"] = tQixiFestivalNPC_Text["Title"]
tRankingFunc_Info[26809]["Mail"]["Reward"][1]["Sender"] = tQixiFestivalNPC_Text["Sender"]
tRankingFunc_Info[26809]["Mail"]["Reward"][1]["Content"] = string.format(tQixiFestivalNPC_Text["Content"],1)
tRankingFunc_Info[26809]["Mail"]["Reward"][2] = {}
tRankingFunc_Info[26809]["Mail"]["Reward"][2]["RewardRank"] = 2
tRankingFunc_Info[26809]["Mail"]["Reward"][2]["ActionId"] = 578313
tRankingFunc_Info[26809]["Mail"]["Reward"][2]["ExistDay"] = 7
tRankingFunc_Info[26809]["Mail"]["Reward"][2]["Title"] = tQixiFestivalNPC_Text["Title"]
tRankingFunc_Info[26809]["Mail"]["Reward"][2]["Sender"] = tQixiFestivalNPC_Text["Sender"]
tRankingFunc_Info[26809]["Mail"]["Reward"][2]["Content"] = string.format(tQixiFestivalNPC_Text["Content"],2)
tRankingFunc_Info[26809]["Mail"]["Reward"][3] = {}
tRankingFunc_Info[26809]["Mail"]["Reward"][3]["RewardRank"] = 3
tRankingFunc_Info[26809]["Mail"]["Reward"][3]["ActionId"] = 578313
tRankingFunc_Info[26809]["Mail"]["Reward"][3]["ExistDay"] = 7
tRankingFunc_Info[26809]["Mail"]["Reward"][3]["Title"] = tQixiFestivalNPC_Text["Title"]
tRankingFunc_Info[26809]["Mail"]["Reward"][3]["Sender"] = tQixiFestivalNPC_Text["Sender"]
tRankingFunc_Info[26809]["Mail"]["Reward"][3]["Content"] = string.format(tQixiFestivalNPC_Text["Content"],3)
tRankingFunc_Info[26809]["Mail"]["Reward"][4] = {}
tRankingFunc_Info[26809]["Mail"]["Reward"][4]["RewardRank"] = 4
tRankingFunc_Info[26809]["Mail"]["Reward"][4]["ActionId"] = 578314
tRankingFunc_Info[26809]["Mail"]["Reward"][4]["ExistDay"] = 7
tRankingFunc_Info[26809]["Mail"]["Reward"][4]["Title"] = tQixiFestivalNPC_Text["Title"]
tRankingFunc_Info[26809]["Mail"]["Reward"][4]["Sender"] = tQixiFestivalNPC_Text["Sender"]
tRankingFunc_Info[26809]["Mail"]["Reward"][4]["Content"] = string.format(tQixiFestivalNPC_Text["Content"],4)
tRankingFunc_Info[26809]["Mail"]["Reward"][5] = {}
tRankingFunc_Info[26809]["Mail"]["Reward"][5]["RewardRank"] = 5
tRankingFunc_Info[26809]["Mail"]["Reward"][5]["ActionId"] = 578314
tRankingFunc_Info[26809]["Mail"]["Reward"][5]["ExistDay"] = 7
tRankingFunc_Info[26809]["Mail"]["Reward"][5]["Title"] = tQixiFestivalNPC_Text["Title"]
tRankingFunc_Info[26809]["Mail"]["Reward"][5]["Sender"] = tQixiFestivalNPC_Text["Sender"]
tRankingFunc_Info[26809]["Mail"]["Reward"][5]["Content"] = string.format(tQixiFestivalNPC_Text["Content"],5)
tRankingFunc_Info[26809]["Mail"]["Reward"][6] = {}
tRankingFunc_Info[26809]["Mail"]["Reward"][6]["RewardRank"] = 6
tRankingFunc_Info[26809]["Mail"]["Reward"][6]["ActionId"] = 578314
tRankingFunc_Info[26809]["Mail"]["Reward"][6]["ExistDay"] = 7
tRankingFunc_Info[26809]["Mail"]["Reward"][6]["Title"] = tQixiFestivalNPC_Text["Title"]
tRankingFunc_Info[26809]["Mail"]["Reward"][6]["Sender"] = tQixiFestivalNPC_Text["Sender"]
tRankingFunc_Info[26809]["Mail"]["Reward"][6]["Content"] = string.format(tQixiFestivalNPC_Text["Content"],6)
tRankingFunc_Info[26809]["Mail"]["Reward"][7] = {}
tRankingFunc_Info[26809]["Mail"]["Reward"][7]["RewardRank"] = 7
tRankingFunc_Info[26809]["Mail"]["Reward"][7]["ActionId"] = 578315
tRankingFunc_Info[26809]["Mail"]["Reward"][7]["ExistDay"] = 7
tRankingFunc_Info[26809]["Mail"]["Reward"][7]["Title"] = tQixiFestivalNPC_Text["Title"]
tRankingFunc_Info[26809]["Mail"]["Reward"][7]["Sender"] = tQixiFestivalNPC_Text["Sender"]
tRankingFunc_Info[26809]["Mail"]["Reward"][7]["Content"] = string.format(tQixiFestivalNPC_Text["Content"],7)
tRankingFunc_Info[26809]["Mail"]["Reward"][8] = {}
tRankingFunc_Info[26809]["Mail"]["Reward"][8]["RewardRank"] = 8
tRankingFunc_Info[26809]["Mail"]["Reward"][8]["ActionId"] = 578315
tRankingFunc_Info[26809]["Mail"]["Reward"][8]["ExistDay"] = 7
tRankingFunc_Info[26809]["Mail"]["Reward"][8]["Title"] = tQixiFestivalNPC_Text["Title"]
tRankingFunc_Info[26809]["Mail"]["Reward"][8]["Sender"] = tQixiFestivalNPC_Text["Sender"]
tRankingFunc_Info[26809]["Mail"]["Reward"][8]["Content"] = string.format(tQixiFestivalNPC_Text["Content"],8)
tRankingFunc_Info[26809]["Mail"]["Reward"][9] = {}
tRankingFunc_Info[26809]["Mail"]["Reward"][9]["RewardRank"] = 9
tRankingFunc_Info[26809]["Mail"]["Reward"][9]["ActionId"] = 578315
tRankingFunc_Info[26809]["Mail"]["Reward"][9]["ExistDay"] = 7
tRankingFunc_Info[26809]["Mail"]["Reward"][9]["Title"] = tQixiFestivalNPC_Text["Title"]
tRankingFunc_Info[26809]["Mail"]["Reward"][9]["Sender"] = tQixiFestivalNPC_Text["Sender"]
tRankingFunc_Info[26809]["Mail"]["Reward"][9]["Content"] = string.format(tQixiFestivalNPC_Text["Content"],9)
tRankingFunc_Info[26809]["Mail"]["Reward"][10] = {}
tRankingFunc_Info[26809]["Mail"]["Reward"][10]["RewardRank"] = 10
tRankingFunc_Info[26809]["Mail"]["Reward"][10]["ActionId"] = 578315
tRankingFunc_Info[26809]["Mail"]["Reward"][10]["ExistDay"] = 7
tRankingFunc_Info[26809]["Mail"]["Reward"][10]["Title"] = tQixiFestivalNPC_Text["Title"]
tRankingFunc_Info[26809]["Mail"]["Reward"][10]["Sender"] = tQixiFestivalNPC_Text["Sender"]
tRankingFunc_Info[26809]["Mail"]["Reward"][10]["Content"] = string.format(tQixiFestivalNPC_Text["Content"],10)

local tQixiFestivalNPC_Reward = {}
	-- ===活动引导
	-- ===索引:tQixiFestivalNPC_Reward["Guide"]
	-- ===LogStep: 1[1]
	tQixiFestivalNPC_Reward["Guide"] = {}
	tQixiFestivalNPC_Reward["Guide"]["LogId"] = 12002030
	tQixiFestivalNPC_Reward["Guide"]["RewardItem"] = {}
	tQixiFestivalNPC_Reward["Guide"]["RewardItem"][1] = {}
	tQixiFestivalNPC_Reward["Guide"]["RewardItem"][1]["Id"] = 3316530 -- 揽鹊笛[3316530][属性:9][叠加:10000][金币:0], 【表格】揽鹊笛*1
	tQixiFestivalNPC_Reward["Guide"]["RewardItem"][1]["Attr"] = "0 1" -- 揽鹊笛*1
	tQixiFestivalNPC_Reward["Guide"]["RewardEffect"] = {}
	tQixiFestivalNPC_Reward["Guide"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQixiFestivalNPC_Reward["Guide"]["RewardEffect"]["Effect"] = "angelwing"
	
	-- ===5000喜鹊（鹊桥1级）
	-- ===索引:tQixiFestivalNPC_Reward[1]
	-- ===LogStep: 1[1]
	tQixiFestivalNPC_Reward[1] = {}
	tQixiFestivalNPC_Reward[1]["LogId"] = 12002030
	tQixiFestivalNPC_Reward[1]["LogStep"] = "1[1][1]"
	tQixiFestivalNPC_Reward[1]["RewardItem"] = {}
	tQixiFestivalNPC_Reward[1]["RewardItem"][1] = {}
	tQixiFestivalNPC_Reward[1]["RewardItem"][1]["Id"] = 730004 -- +4赤炼石[730004][属性:0][叠加:0][金币:0], 【表格】赤炼石+4
	tQixiFestivalNPC_Reward[1]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+4赤炼石（赠）*1
	tQixiFestivalNPC_Reward[1]["RewardItem"][2] = {}
	tQixiFestivalNPC_Reward[1]["RewardItem"][2]["Id"] = 3316531 -- 七夕外套碎片[3316531][属性:9][叠加:1][金币:0], 【表格】外套碎片
	tQixiFestivalNPC_Reward[1]["RewardItem"][2]["Attr"] = "0 1" -- 七夕外套碎片*1
	tQixiFestivalNPC_Reward[1]["RewardEffect"] = {}
	tQixiFestivalNPC_Reward[1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQixiFestivalNPC_Reward[1]["RewardEffect"]["Effect"] = "angelwing"


	-- ===15000喜鹊（鹊桥2级）
	-- ===索引:tQixiFestivalNPC_Reward[2]
	-- ===LogStep: 1[2]
	tQixiFestivalNPC_Reward[2] = {}
	tQixiFestivalNPC_Reward[2]["LogId"] = 12002030
	tQixiFestivalNPC_Reward[2]["LogStep"] = "1[1][2]"
	tQixiFestivalNPC_Reward[2]["RewardItem"] = {}
	tQixiFestivalNPC_Reward[2]["RewardItem"][1] = {}
	tQixiFestivalNPC_Reward[2]["RewardItem"][1]["Id"] = 3009002 -- 晶莹星陨石[3009002][属性:265][叠加:0][金币:0], 【表格】晶莹星陨石
	tQixiFestivalNPC_Reward[2]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的晶莹星陨石*1
	tQixiFestivalNPC_Reward[2]["RewardItem"][2] = {}
	tQixiFestivalNPC_Reward[2]["RewardItem"][2]["Id"] = 3316531 -- 七夕外套碎片[3316531][属性:9][叠加:1][金币:0], 【表格】外套碎片
	tQixiFestivalNPC_Reward[2]["RewardItem"][2]["Attr"] = "0 1" -- 七夕外套碎片*1
	tQixiFestivalNPC_Reward[2]["RewardEffect"] = {}
	tQixiFestivalNPC_Reward[2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQixiFestivalNPC_Reward[2]["RewardEffect"]["Effect"] = "angelwing"


	-- ===30000喜鹊（鹊桥3级）
	-- ===索引:tQixiFestivalNPC_Reward[3]
	-- ===LogStep: 1[3]
	tQixiFestivalNPC_Reward[3] = {}
	tQixiFestivalNPC_Reward[3]["LogId"] = 12002030
	tQixiFestivalNPC_Reward[3]["LogStep"] = "1[1][3]"
	tQixiFestivalNPC_Reward[3]["RewardItem"] = {}
	tQixiFestivalNPC_Reward[3]["RewardItem"][1] = {}
	tQixiFestivalNPC_Reward[3]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tQixiFestivalNPC_Reward[3]["RewardItem"][1]["Attr"] = "0 100 3" -- 万能神纹精粹（赠）*100
	tQixiFestivalNPC_Reward[3]["RewardItem"][2] = {}
	tQixiFestivalNPC_Reward[3]["RewardItem"][2]["Id"] = 3316531 -- 七夕外套碎片[3316531][属性:9][叠加:1][金币:0], 【表格】外套碎片
	tQixiFestivalNPC_Reward[3]["RewardItem"][2]["Attr"] = "0 2" -- 七夕外套碎片*2
	tQixiFestivalNPC_Reward[3]["RewardEffect"] = {}
	tQixiFestivalNPC_Reward[3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQixiFestivalNPC_Reward[3]["RewardEffect"]["Effect"] = "angelwing"


	-- ===50000喜鹊（鹊桥4级）
	-- ===索引:tQixiFestivalNPC_Reward[4]
	-- ===LogStep: 1[4]
	tQixiFestivalNPC_Reward[4] = {}
	tQixiFestivalNPC_Reward[4]["LogId"] = 12002030
	tQixiFestivalNPC_Reward[4]["LogStep"] = "1[1][4]"
	tQixiFestivalNPC_Reward[4]["RewardItem"] = {}
	tQixiFestivalNPC_Reward[4]["RewardItem"][1] = {}
	tQixiFestivalNPC_Reward[4]["RewardItem"][1]["Id"] = 730005 -- +5赤炼石[730005][属性:0][叠加:0][金币:0], 【表格】赤炼石+5
	tQixiFestivalNPC_Reward[4]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+5赤炼石（赠）*1
	tQixiFestivalNPC_Reward[4]["RewardTitle"] = {}
	tQixiFestivalNPC_Reward[4]["RewardTitle"]["TitleType"] = 2198 -- 【库】称号3男, 【表格】七夕称号3礼包
	tQixiFestivalNPC_Reward[4]["RewardTitle"]["TitleId"] = 2198
	tQixiFestivalNPC_Reward[4]["RewardTitle"]["SaveTime"] = 0 -- 永久时效的[称号]:称号3男, 【需求】七夕称号3礼包
	tQixiFestivalNPC_Reward[4]["RewardItem"][2] = {}
	tQixiFestivalNPC_Reward[4]["RewardItem"][2]["Id"] = 3316531 -- 七夕外套碎片[3316531][属性:9][叠加:1][金币:0], 【表格】外套碎片
	tQixiFestivalNPC_Reward[4]["RewardItem"][2]["Attr"] = "0 3" -- 七夕外套碎片*3
	tQixiFestivalNPC_Reward[4]["RewardEffect"] = {}
	tQixiFestivalNPC_Reward[4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQixiFestivalNPC_Reward[4]["RewardEffect"]["Effect"] = "angelwing"


	-- ===100000喜鹊
	-- ===索引:tQixiFestivalNPC_Reward[5]
	-- ===LogStep: 1[5]
	tQixiFestivalNPC_Reward[5] = {}
	tQixiFestivalNPC_Reward[5]["LogId"] = 12002030
	tQixiFestivalNPC_Reward[5]["LogStep"] = "1[1][5]"
	tQixiFestivalNPC_Reward[5]["RewardItem"] = {}
	tQixiFestivalNPC_Reward[5]["RewardItem"][1] = {}
	tQixiFestivalNPC_Reward[5]["RewardItem"][1]["Id"] = 723694 -- 固化石[723694][属性:8][叠加:10000][金币:0], 【表格】固化石
	tQixiFestivalNPC_Reward[5]["RewardItem"][1]["Attr"] = "0 1 3" -- 固化石（赠）*1
	tQixiFestivalNPC_Reward[5]["RewardItem"][2] = {}
	tQixiFestivalNPC_Reward[5]["RewardItem"][2]["Id"] = 3316531 -- 七夕外套碎片[3316531][属性:9][叠加:1][金币:0], 【表格】外套碎片
	tQixiFestivalNPC_Reward[5]["RewardItem"][2]["Attr"] = "0 5" -- 七夕外套碎片*5
	tQixiFestivalNPC_Reward[5]["RewardEffect"] = {}
	tQixiFestivalNPC_Reward[5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQixiFestivalNPC_Reward[5]["RewardEffect"]["Effect"] = "angelwing"


	-- ===180000喜鹊
	-- ===索引:tQixiFestivalNPC_Reward[6]
	-- ===LogStep: 1[6]
	tQixiFestivalNPC_Reward[6] = {}
	tQixiFestivalNPC_Reward[6]["LogId"] = 12002030
	tQixiFestivalNPC_Reward[6]["LogStep"] = "1[1][6]"
	tQixiFestivalNPC_Reward[6]["RewardItem"] = {}
	tQixiFestivalNPC_Reward[6]["RewardItem"][1] = {}
	tQixiFestivalNPC_Reward[6]["RewardItem"][1]["Id"] = 196285 -- 普通外套[196285][属性:0][叠加:0][金币:0], 【表格】七夕外套无光效版
	tQixiFestivalNPC_Reward[6]["RewardItem"][1]["Attr"] = "0 1 3" -- 普通外套（赠）*1
	tQixiFestivalNPC_Reward[6]["RewardItem"][2] = {}
	tQixiFestivalNPC_Reward[6]["RewardItem"][2]["Id"] = 3316531 -- 七夕外套碎片[3316531][属性:9][叠加:1][金币:0], 【表格】外套碎片
	tQixiFestivalNPC_Reward[6]["RewardItem"][2]["Attr"] = "0 5" -- 七夕外套碎片*5
	tQixiFestivalNPC_Reward[6]["RewardEffect"] = {}
	tQixiFestivalNPC_Reward[6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQixiFestivalNPC_Reward[6]["RewardEffect"]["Effect"] = "angelwing"


	-- ===300000喜鹊
	-- ===索引:tQixiFestivalNPC_Reward[7]
	-- ===LogStep: 1[7]
	tQixiFestivalNPC_Reward[7] = {}
	tQixiFestivalNPC_Reward[7]["LogId"] = 12002030
	tQixiFestivalNPC_Reward[7]["LogStep"] = "1[1][7]"
	tQixiFestivalNPC_Reward[7]["RewardItem"] = {}
	tQixiFestivalNPC_Reward[7]["RewardItem"][1] = {}
	tQixiFestivalNPC_Reward[7]["RewardItem"][1]["Id"] = 3314913 -- 乾坤神器宝盒[3314913][属性:9][叠加:10000][金币:0], 【表格】乾坤神器宝盒
	tQixiFestivalNPC_Reward[7]["RewardItem"][1]["Attr"] = "0 5" -- 乾坤神器宝盒*5
	tQixiFestivalNPC_Reward[7]["RewardItem"][2] = {}
	tQixiFestivalNPC_Reward[7]["RewardItem"][2]["Id"] = 3316531 -- 七夕外套碎片[3316531][属性:9][叠加:1][金币:0], 【表格】外套碎片
	tQixiFestivalNPC_Reward[7]["RewardItem"][2]["Attr"] = "0 5" -- 七夕外套碎片*5
	tQixiFestivalNPC_Reward[7]["RewardEffect"] = {}
	tQixiFestivalNPC_Reward[7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQixiFestivalNPC_Reward[7]["RewardEffect"]["Effect"] = "angelwing"


	-- ===每30000只喜鹊
	-- ===索引:tQixiFestivalNPC_Reward["Max"]
	-- ===LogStep: 1[8]
	tQixiFestivalNPC_Reward["Max"] = {}
	tQixiFestivalNPC_Reward["Max"]["LogId"] = 12002030
	tQixiFestivalNPC_Reward["Max"]["LogStep"] = "1[1][8]"
	tQixiFestivalNPC_Reward["Max"]["RewardItem"] = {}
	tQixiFestivalNPC_Reward["Max"]["RewardItem"][1] = {}
	tQixiFestivalNPC_Reward["Max"]["RewardItem"][1]["Id"] = 3316531 -- 七夕外套碎片[3316531][属性:9][叠加:1][金币:0], 【表格】外套碎片
	tQixiFestivalNPC_Reward["Max"]["RewardItem"][1]["Attr"] = "0 1" -- 七夕外套碎片*1
	tQixiFestivalNPC_Reward["Max"]["RewardEffect"] = {}
	tQixiFestivalNPC_Reward["Max"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQixiFestivalNPC_Reward["Max"]["RewardEffect"]["Effect"] = "angelwing"


	-- ===单服排行第1
	-- ===索引:tQixiFestivalNPC_Reward[3316522]
	-- ===删除:3316522,1
	tQixiFestivalNPC_Reward[3316522] = {}
	tQixiFestivalNPC_Reward[3316522]["LogId"] = 12002030
	tQixiFestivalNPC_Reward[3316522]["DeleteItem"] = {}
	tQixiFestivalNPC_Reward[3316522]["DeleteItem"][1] = {}
	tQixiFestivalNPC_Reward[3316522]["DeleteItem"][1]["Id"] = 3316522 -- 【库】万里星河鹊桥仙礼盒[属性:9]
	tQixiFestivalNPC_Reward[3316522]["RewardTitle"] = {}
	tQixiFestivalNPC_Reward[3316522]["RewardTitle"]["TitleType"] = 2196 -- 【库】称号2男, 【表格】称号2礼包
	tQixiFestivalNPC_Reward[3316522]["RewardTitle"]["TitleId"] = 2196
	tQixiFestivalNPC_Reward[3316522]["RewardTitle"]["SaveTime"] = 0 -- 永久时效的[称号]:称号2男, 【需求】称号2礼包
	tQixiFestivalNPC_Reward[3316522]["RewardWing"] = {}
	tQixiFestivalNPC_Reward[3316522]["RewardWing"]["TitleType"] = 6036 -- 【库】翅膀小, 【表格】七夕小翅膀
	tQixiFestivalNPC_Reward[3316522]["RewardWing"]["TitleId"] = 6036
	tQixiFestivalNPC_Reward[3316522]["RewardWing"]["SaveTime"] = 0 -- 永久时效的[翅膀]:翅膀小, 【需求】七夕小翅膀
	tQixiFestivalNPC_Reward[3316522]["RewardItem"] = {}
	tQixiFestivalNPC_Reward[3316522]["RewardItem"][1] = {}
	tQixiFestivalNPC_Reward[3316522]["RewardItem"][1]["Id"] = 730006 -- +6赤炼石[730006][属性:0][叠加:0][金币:0], 【表格】赤炼石+6
	tQixiFestivalNPC_Reward[3316522]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+6赤炼石（赠）*1
	tQixiFestivalNPC_Reward[3316522]["RewardItem"][2] = {}
	tQixiFestivalNPC_Reward[3316522]["RewardItem"][2]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tQixiFestivalNPC_Reward[3316522]["RewardItem"][2]["Attr"] = "0 500 3" -- 万能神纹精粹（赠）*500（[错误]物品数量超100个）
	tQixiFestivalNPC_Reward[3316522]["RewardItem"][3] = {}
	tQixiFestivalNPC_Reward[3316522]["RewardItem"][3]["Id"] = 3316660 -- 七夕发型[3316660][属性:9][叠加:10000][金币:0], 【表格】七夕发型
	tQixiFestivalNPC_Reward[3316522]["RewardItem"][3]["Attr"] = "0 1" -- 七夕发型*1
	tQixiFestivalNPC_Reward[3316522]["RewardEffect"] = {}
	tQixiFestivalNPC_Reward[3316522]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQixiFestivalNPC_Reward[3316522]["RewardEffect"]["Effect"] = "angelwing"


	-- ===单服排行第2~3
	-- ===索引:tQixiFestivalNPC_Reward[3316523]
	-- ===删除:3316523,1
	tQixiFestivalNPC_Reward[3316523] = {}
	tQixiFestivalNPC_Reward[3316523]["LogId"] = 12002030
	tQixiFestivalNPC_Reward[3316523]["DeleteItem"] = {}
	tQixiFestivalNPC_Reward[3316523]["DeleteItem"][1] = {}
	tQixiFestivalNPC_Reward[3316523]["DeleteItem"][1]["Id"] = 3316523 -- 【库】千里银河鹊桥仙礼盒[属性:9]
	tQixiFestivalNPC_Reward[3316523]["RewardTitle"] = {}
	tQixiFestivalNPC_Reward[3316523]["RewardTitle"]["TitleType"] = 2196 -- 【库】称号2男, 【表格】称号2礼包
	tQixiFestivalNPC_Reward[3316523]["RewardTitle"]["TitleId"] = 2196
	tQixiFestivalNPC_Reward[3316523]["RewardTitle"]["SaveTime"] = 0 -- 永久时效的[称号]:称号2男, 【需求】称号2礼包
	tQixiFestivalNPC_Reward[3316523]["RewardItem"] = {}
	tQixiFestivalNPC_Reward[3316523]["RewardItem"][1] = {}
	tQixiFestivalNPC_Reward[3316523]["RewardItem"][1]["Id"] = 730006 -- +6赤炼石[730006][属性:0][叠加:0][金币:0], 【表格】赤炼石+6
	tQixiFestivalNPC_Reward[3316523]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+6赤炼石（赠）*1
	tQixiFestivalNPC_Reward[3316523]["RewardItem"][2] = {}
	tQixiFestivalNPC_Reward[3316523]["RewardItem"][2]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tQixiFestivalNPC_Reward[3316523]["RewardItem"][2]["Attr"] = "0 400 3" -- 万能神纹精粹（赠）*400（[错误]物品数量超100个）
	tQixiFestivalNPC_Reward[3316523]["RewardItem"][3] = {}
	tQixiFestivalNPC_Reward[3316523]["RewardItem"][3]["Id"] = 3316660 -- 七夕发型[3316660][属性:9][叠加:10000][金币:0], 【表格】七夕发型
	tQixiFestivalNPC_Reward[3316523]["RewardItem"][3]["Attr"] = "0 1" -- 七夕发型*1
	tQixiFestivalNPC_Reward[3316523]["RewardEffect"] = {}
	tQixiFestivalNPC_Reward[3316523]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQixiFestivalNPC_Reward[3316523]["RewardEffect"]["Effect"] = "angelwing"



	-- ===单服排行第4~6
	-- ===索引:tQixiFestivalNPC_Reward[3316524]
	-- ===删除:3316524,1
	tQixiFestivalNPC_Reward[3316524] = {}
	tQixiFestivalNPC_Reward[3316524]["LogId"] = 12002030
	tQixiFestivalNPC_Reward[3316524]["DeleteItem"] = {}
	tQixiFestivalNPC_Reward[3316524]["DeleteItem"][1] = {}
	tQixiFestivalNPC_Reward[3316524]["DeleteItem"][1]["Id"] = 3316524 -- 【库】星河鹊桥礼盒[属性:9]
	tQixiFestivalNPC_Reward[3316524]["RewardItem"] = {}
	tQixiFestivalNPC_Reward[3316524]["RewardItem"][1] = {}
	tQixiFestivalNPC_Reward[3316524]["RewardItem"][1]["Id"] = 730005 -- +5赤炼石[730005][属性:0][叠加:0][金币:0], 【表格】赤炼石+5
	tQixiFestivalNPC_Reward[3316524]["RewardItem"][1]["Attr"] = "0 2 3 7200 1" -- 5天时效(激活)的+5赤炼石（赠）*2
	tQixiFestivalNPC_Reward[3316524]["RewardItem"][2] = {}
	tQixiFestivalNPC_Reward[3316524]["RewardItem"][2]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tQixiFestivalNPC_Reward[3316524]["RewardItem"][2]["Attr"] = "0 300 3" -- 万能神纹精粹（赠）*300（[错误]物品数量超100个）
	tQixiFestivalNPC_Reward[3316524]["RewardEffect"] = {}
	tQixiFestivalNPC_Reward[3316524]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQixiFestivalNPC_Reward[3316524]["RewardEffect"]["Effect"] = "angelwing"


	-- ===单服排行第7~10
	-- ===索引:tQixiFestivalNPC_Reward[3316525]
	-- ===删除:3316525,1
	tQixiFestivalNPC_Reward[3316525] = {}
	tQixiFestivalNPC_Reward[3316525]["LogId"] = 12002030
	tQixiFestivalNPC_Reward[3316525]["DeleteItem"] = {}
	tQixiFestivalNPC_Reward[3316525]["DeleteItem"][1] = {}
	tQixiFestivalNPC_Reward[3316525]["DeleteItem"][1]["Id"] = 3316525 -- 【库】鹊桥仙礼盒[属性:9]
	tQixiFestivalNPC_Reward[3316525]["RewardItem"] = {}
	tQixiFestivalNPC_Reward[3316525]["RewardItem"][1] = {}
	tQixiFestivalNPC_Reward[3316525]["RewardItem"][1]["Id"] = 730005 -- +5赤炼石[730005][属性:0][叠加:0][金币:0], 【表格】赤炼石+5
	tQixiFestivalNPC_Reward[3316525]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+5赤炼石（赠）*1
	tQixiFestivalNPC_Reward[3316525]["RewardItem"][2] = {}
	tQixiFestivalNPC_Reward[3316525]["RewardItem"][2]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tQixiFestivalNPC_Reward[3316525]["RewardItem"][2]["Attr"] = "0 200 3" -- 万能神纹精粹（赠）*200（[错误]物品数量超100个）
	tQixiFestivalNPC_Reward[3316525]["RewardEffect"] = {}
	tQixiFestivalNPC_Reward[3316525]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQixiFestivalNPC_Reward[3316525]["RewardEffect"]["Effect"] = "angelwing"


	-- ===全球排行第1
	-- ===索引:tQixiFestivalNPC_Reward[3316526]
	-- ===删除:3316526,1
	tQixiFestivalNPC_Reward[3316526] = {}
	tQixiFestivalNPC_Reward[3316526]["LogId"] = 12002030
	tQixiFestivalNPC_Reward[3316526]["DeleteItem"] = {}
	tQixiFestivalNPC_Reward[3316526]["DeleteItem"][1] = {}
	tQixiFestivalNPC_Reward[3316526]["DeleteItem"][1]["Id"] = 3316526 -- 【库】万里星河全球鹊桥礼盒[属性:9]
	tQixiFestivalNPC_Reward[3316526]["RewardItem"] = {}
	tQixiFestivalNPC_Reward[3316526]["RewardItem"][1] = {}
	tQixiFestivalNPC_Reward[3316526]["RewardItem"][1]["Id"] = 3316532 -- 七夕光环道具[3316532][属性:9][叠加:1][金币:0], 【表格】专属光环物品
	tQixiFestivalNPC_Reward[3316526]["RewardItem"][1]["Attr"] = "0 1" -- 七夕光环道具*1
	tQixiFestivalNPC_Reward[3316526]["RewardWing"] = {}
	tQixiFestivalNPC_Reward[3316526]["RewardWing"]["TitleType"] = 6037 -- 【库】翅膀大, 【表格】专属大翅膀
	tQixiFestivalNPC_Reward[3316526]["RewardWing"]["TitleId"] = 6037
	tQixiFestivalNPC_Reward[3316526]["RewardWing"]["SaveTime"] = 0 -- 永久时效的[翅膀]:翅膀大, 【需求】专属大翅膀
	tQixiFestivalNPC_Reward[3316526]["RewardTitle"] = {}
	tQixiFestivalNPC_Reward[3316526]["RewardTitle"]["TitleType"] = 2194 -- 【库】称号1男, 【表格】七夕称号1
	tQixiFestivalNPC_Reward[3316526]["RewardTitle"]["TitleId"] = 2194
	tQixiFestivalNPC_Reward[3316526]["RewardTitle"]["SaveTime"] = 0 -- 永久时效的[称号]:称号1男, 【需求】七夕称号1
	tQixiFestivalNPC_Reward[3316526]["RewardStrengthValue"] = {}
	tQixiFestivalNPC_Reward[3316526]["RewardStrengthValue"]["Value"] = 30000 -- 气力值, 【需求】气力值
	tQixiFestivalNPC_Reward[3316526]["RewardEffect"] = {}
	tQixiFestivalNPC_Reward[3316526]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQixiFestivalNPC_Reward[3316526]["RewardEffect"]["Effect"] = "angelwing"


	-- ===全球排行第2~3
	-- ===索引:tQixiFestivalNPC_Reward[3316527]
	-- ===删除:3316527,1
	tQixiFestivalNPC_Reward[3316527] = {}
	tQixiFestivalNPC_Reward[3316527]["LogId"] = 12002030
	tQixiFestivalNPC_Reward[3316527]["DeleteItem"] = {}
	tQixiFestivalNPC_Reward[3316527]["DeleteItem"][1] = {}
	tQixiFestivalNPC_Reward[3316527]["DeleteItem"][1]["Id"] = 3316527 -- 【库】千里星河全球鹊桥礼盒[属性:9]
	tQixiFestivalNPC_Reward[3316527]["RewardTitle"] = {}
	tQixiFestivalNPC_Reward[3316527]["RewardTitle"]["TitleType"] = 2194 -- 【库】称号1男, 【表格】七夕称号1
	tQixiFestivalNPC_Reward[3316527]["RewardTitle"]["TitleId"] = 2194
	tQixiFestivalNPC_Reward[3316527]["RewardTitle"]["SaveTime"] = 0 -- 永久时效的[称号]:称号1男, 【需求】七夕称号1
	tQixiFestivalNPC_Reward[3316527]["RewardWing"] = {}
	tQixiFestivalNPC_Reward[3316527]["RewardWing"]["TitleType"] = 6037 -- 【库】翅膀大, 【表格】专属大翅膀
	tQixiFestivalNPC_Reward[3316527]["RewardWing"]["TitleId"] = 6037
	tQixiFestivalNPC_Reward[3316527]["RewardWing"]["SaveTime"] = 0 -- 永久时效的[翅膀]:翅膀大, 【需求】专属大翅膀
	tQixiFestivalNPC_Reward[3316527]["RewardStrengthValue"] = {}
	tQixiFestivalNPC_Reward[3316527]["RewardStrengthValue"]["Value"] = 20000 -- 气力值, 【需求】气力值
	tQixiFestivalNPC_Reward[3316527]["RewardEffect"] = {}
	tQixiFestivalNPC_Reward[3316527]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQixiFestivalNPC_Reward[3316527]["RewardEffect"]["Effect"] = "angelwing"


	-- ===全球排行第4~6
	-- ===索引:tQixiFestivalNPC_Reward[3316528]
	-- ===删除:3316528,1
	tQixiFestivalNPC_Reward[3316528] = {}
	tQixiFestivalNPC_Reward[3316528]["LogId"] = 12002030
	tQixiFestivalNPC_Reward[3316528]["DeleteItem"] = {}
	tQixiFestivalNPC_Reward[3316528]["DeleteItem"][1] = {}
	tQixiFestivalNPC_Reward[3316528]["DeleteItem"][1]["Id"] = 3316528 -- 【库】星河全球鹊桥礼盒[属性:9]
	tQixiFestivalNPC_Reward[3316528]["RewardStrengthValue"] = {}
	tQixiFestivalNPC_Reward[3316528]["RewardStrengthValue"]["Value"] = 15000 -- 气力值, 【需求】气力值
	tQixiFestivalNPC_Reward[3316528]["RewardEffect"] = {}
	tQixiFestivalNPC_Reward[3316528]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQixiFestivalNPC_Reward[3316528]["RewardEffect"]["Effect"] = "angelwing"


	-- ===全球排行第7~10
	-- ===索引:tQixiFestivalNPC_Reward[3316529]
	-- ===删除:3316529,1
	tQixiFestivalNPC_Reward[3316529] = {}
	tQixiFestivalNPC_Reward[3316529]["LogId"] = 12002030
	tQixiFestivalNPC_Reward[3316529]["DeleteItem"] = {}
	tQixiFestivalNPC_Reward[3316529]["DeleteItem"][1] = {}
	tQixiFestivalNPC_Reward[3316529]["DeleteItem"][1]["Id"] = 3316529 -- 【库】全球鹊桥仙礼盒[属性:9]
	tQixiFestivalNPC_Reward[3316529]["RewardStrengthValue"] = {}
	tQixiFestivalNPC_Reward[3316529]["RewardStrengthValue"]["Value"] = 10000 -- 气力值, 【需求】气力值
	tQixiFestivalNPC_Reward[3316529]["RewardEffect"] = {}
	tQixiFestivalNPC_Reward[3316529]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQixiFestivalNPC_Reward[3316529]["RewardEffect"]["Effect"] = "angelwing"


	tQixiFestivalNPC_Reward[3316531] = {}
	-- ===外套碎片合成
	-- ===索引:tQixiFestivalNPC_Reward[3316531]["Compose"]
	-- ===删除:3316531,35
	tQixiFestivalNPC_Reward[3316531]["Compose"] = {}
	tQixiFestivalNPC_Reward[3316531]["Compose"]["LogId"] = 12002030
	tQixiFestivalNPC_Reward[3316531]["Compose"]["DeleteItem"] = {}
	tQixiFestivalNPC_Reward[3316531]["Compose"]["DeleteItem"][1] = {}
	tQixiFestivalNPC_Reward[3316531]["Compose"]["DeleteItem"][1]["Id"] = 3316531 -- 【库】七夕外套碎片[属性:9]
	tQixiFestivalNPC_Reward[3316531]["Compose"]["DeleteItem"][1]["ItemNum"] = 35
	tQixiFestivalNPC_Reward[3316531]["Compose"]["RewardItem"] = {}
	tQixiFestivalNPC_Reward[3316531]["Compose"]["RewardItem"][1] = {}
	tQixiFestivalNPC_Reward[3316531]["Compose"]["RewardItem"][1]["Id"] = 196275 -- 光效外套[196275][属性:0][叠加:0][金币:0], 【表格】赠品光效外套
	tQixiFestivalNPC_Reward[3316531]["Compose"]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑光效外套（赠）*1
	tQixiFestivalNPC_Reward[3316531]["Compose"]["RewardEffect"] = {}
	tQixiFestivalNPC_Reward[3316531]["Compose"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQixiFestivalNPC_Reward[3316531]["Compose"]["RewardEffect"]["Effect"] = "angelwing"


	-- ===外套碎片洗赠
	-- ===索引:tQixiFestivalNPC_Reward[3316531]["Clear"]
	-- ===删除:3316531,5
	tQixiFestivalNPC_Reward[3316531]["Clear"] = {}
	tQixiFestivalNPC_Reward[3316531]["Clear"]["LogId"] = 12002030
	tQixiFestivalNPC_Reward[3316531]["Clear"]["DeleteItem"] = {}
	tQixiFestivalNPC_Reward[3316531]["Clear"]["DeleteItem"][1] = {}
	tQixiFestivalNPC_Reward[3316531]["Clear"]["DeleteItem"][1]["Id"] = 3316531 -- 【库】七夕外套碎片[属性:9]
	tQixiFestivalNPC_Reward[3316531]["Clear"]["DeleteItem"][1]["ItemNum"] = 5
	tQixiFestivalNPC_Reward[3316531]["Clear"]["RewardItem"] = {}
	tQixiFestivalNPC_Reward[3316531]["Clear"]["RewardItem"][1] = {}
	tQixiFestivalNPC_Reward[3316531]["Clear"]["RewardItem"][1]["Id"] = 196275 -- 光效外套[196275][属性:0][叠加:0][金币:0], 【表格】非赠光效外套
	tQixiFestivalNPC_Reward[3316531]["Clear"]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑光效外套*1
	tQixiFestivalNPC_Reward[3316531]["Clear"]["RewardEffect"] = {}
	tQixiFestivalNPC_Reward[3316531]["Clear"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQixiFestivalNPC_Reward[3316531]["Clear"]["RewardEffect"]["Effect"] = "angelwing"


	-- ===外套碎片单个使用
	-- ===索引:tQixiFestivalNPC_Reward[3316531][1]
	-- ===删除:3316531,1
	-- RewardTemplate_RandomReward(tQixiFestivalNPC_Reward[3316531],1)
	tQixiFestivalNPC_Reward[3316531][1] = {}
	tQixiFestivalNPC_Reward[3316531][1]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tQixiFestivalNPC_Reward[3316531][1]["LogId"] = 12002030
	-- 2个外套碎片 - 50%
	tQixiFestivalNPC_Reward[3316531][1][1] = {}
	tQixiFestivalNPC_Reward[3316531][1][1]["RandomItemChanceType"] = 2
	tQixiFestivalNPC_Reward[3316531][1][1]["ItemChance"] = 5000
	tQixiFestivalNPC_Reward[3316531][1][1]["RewardItem"] = {}
	tQixiFestivalNPC_Reward[3316531][1][1]["RewardItem"][1] = {}
	tQixiFestivalNPC_Reward[3316531][1][1]["RewardItem"][1]["Id"] = 3316531 -- 七夕外套碎片[3316531][属性:9][叠加:1][金币:0], 【表格】2个外套碎片
	tQixiFestivalNPC_Reward[3316531][1][1]["RewardItem"][1]["Attr"] = "0 2" -- 七夕外套碎片*2
	tQixiFestivalNPC_Reward[3316531][1][1]["RewardEffect"] = {}
	tQixiFestivalNPC_Reward[3316531][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQixiFestivalNPC_Reward[3316531][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 无物品 - 50%
	tQixiFestivalNPC_Reward[3316531][1][2] = {}
	tQixiFestivalNPC_Reward[3316531][1][2]["RandomItemChanceType"] = 2
	tQixiFestivalNPC_Reward[3316531][1][2]["ItemChance"] = 5000


	-- ===过期给气力值
	-- ===索引:tQixiFestivalNPC_Reward["TimeOut"]
	-- ===删除:3316530,1
	tQixiFestivalNPC_Reward["TimeOut"] = {}
	tQixiFestivalNPC_Reward["TimeOut"]["LogId"] = 12002030
	tQixiFestivalNPC_Reward["TimeOut"]["DeleteItem"] = {}
	tQixiFestivalNPC_Reward["TimeOut"]["DeleteItem"][1] = {}
	tQixiFestivalNPC_Reward["TimeOut"]["DeleteItem"][1]["Id"] = 3316530 -- 【库】揽鹊笛[属性:9]
	tQixiFestivalNPC_Reward["TimeOut"]["DeleteItem"][1]["ItemNum"] = 1
	tQixiFestivalNPC_Reward["TimeOut"]["RewardStrengthValue"] = {}
	tQixiFestivalNPC_Reward["TimeOut"]["RewardStrengthValue"]["Value"] = 1 -- 气力值, 【需求】气力值
	tQixiFestivalNPC_Reward["TimeOut"]["RewardEffect"] = {}
	tQixiFestivalNPC_Reward["TimeOut"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQixiFestivalNPC_Reward["TimeOut"]["RewardEffect"]["Effect"] = "angelwing"

	-- ===碎片换气力值
	-- ===索引:tQixiFestivalNPC_Reward["Chi"]
	-- ===删除:3316531,1
	tQixiFestivalNPC_Reward["Chi"] = {}
	tQixiFestivalNPC_Reward["Chi"]["LogId"] = 12002030
	tQixiFestivalNPC_Reward["Chi"]["DeleteItem"] = {}
	tQixiFestivalNPC_Reward["Chi"]["DeleteItem"][1] = {}
	tQixiFestivalNPC_Reward["Chi"]["DeleteItem"][1]["Id"] = 3316531 -- 七夕外套碎片[3316531][属性:9][叠加:1][金币:0],
	tQixiFestivalNPC_Reward["Chi"]["DeleteItem"][1]["ItemNum"] = 1
	tQixiFestivalNPC_Reward["Chi"]["RewardStrengthValue"] = {}
	tQixiFestivalNPC_Reward["Chi"]["RewardStrengthValue"]["Value"] = 1000 -- 气力值, 【需求】气力值
	tQixiFestivalNPC_Reward["Chi"]["RewardEffect"] = {}
	tQixiFestivalNPC_Reward["Chi"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQixiFestivalNPC_Reward["Chi"]["RewardEffect"]["Effect"] = "angelwing"

	-- ===100000喜鹊
	-- ===索引:tQixiFestivalNPC_Reward[5]
	-- ===LogStep: 1[5]
	tQixiFestivalNPC_Reward["JQF"] = {}
	tQixiFestivalNPC_Reward["JQF"]["LogId"] = 12002030
	tQixiFestivalNPC_Reward["JQF"]["LogStep"] = "1[1][5]"
	tQixiFestivalNPC_Reward["JQF"]["RewardItem"] = {}
	tQixiFestivalNPC_Reward["JQF"]["RewardItem"][1] = {}
	tQixiFestivalNPC_Reward["JQF"]["RewardItem"][1]["Id"] = 3009002 -- 晶莹星陨石[3009002][属性:265][叠加:0][金币:0], 【表格】晶莹星陨石
	tQixiFestivalNPC_Reward["JQF"]["RewardItem"][1]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的晶莹星陨石*3
	tQixiFestivalNPC_Reward["JQF"]["RewardItem"][2] = {}
	tQixiFestivalNPC_Reward["JQF"]["RewardItem"][2]["Id"] = 3316531 -- 七夕外套碎片[3316531][属性:9][叠加:1][金币:0], 【表格】外套碎片
	tQixiFestivalNPC_Reward["JQF"]["RewardItem"][2]["Attr"] = "0 5" -- 七夕外套碎片*5
	tQixiFestivalNPC_Reward["JQF"]["RewardEffect"] = {}
	tQixiFestivalNPC_Reward["JQF"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQixiFestivalNPC_Reward["JQF"]["RewardEffect"]["Effect"] = "angelwing"
	
local tQixiFestivalNPC_Data = {}
	tQixiFestivalNPC_Data["NPCID"] = 26809
	tQixiFestivalNPC_Data["Level"] = 80
	tQixiFestivalNPC_Data["Metempsychosis"] = 0
	tQixiFestivalNPC_Data["Plot"] = {}
	tQixiFestivalNPC_Data["Plot"][2] = 67
	tQixiFestivalNPC_Data["Plot"][3] = 67
	tQixiFestivalNPC_Data["Plot"][4] = 67
	tQixiFestivalNPC_Data["Exp"] = 35000
	tQixiFestivalNPC_Data["Web"] = {}
	tQixiFestivalNPC_Data["Web"][2] = "https://wtop.zf.99.com/qxhk/nqEn/" 
	tQixiFestivalNPC_Data["Web"][3] = "https://wtop.zf.99.com/qxhk/nqSp/" 
	tQixiFestivalNPC_Data["Web"][4] = "https://wtop.zf.99.com/qxhk/nqAr/" 
	tQixiFestivalNPC_Data["TimeOutWeb"] = {}
	tQixiFestivalNPC_Data["TimeOutWeb"][2] = "https://wtop.zf.99.com/qxhk/?lang=en"
	tQixiFestivalNPC_Data["TimeOutWeb"][3] = "https://wtop.zf.99.com/qxhk/?lang=sp"
	tQixiFestivalNPC_Data["TimeOutWeb"][4] = "https://wtop.zf.99.com/qxhk/?lang=ar"
	tQixiFestivalNPC_Data["ItemId"] = 3316530
	tQixiFestivalNPC_Data[3316530] = 100
	tQixiFestivalNPC_Data["HandUp"] = 50000
	tQixiFestivalNPC_Data["Effect"] = "qixiniao"
	tQixiFestivalNPC_Data["Global"] = 54757
	--七夕称光环
	tQixiFestivalNPC_Data["RoleStatus"] = {}
	tQixiFestivalNPC_Data["RoleStatus"][1] = 3316532
	tQixiFestivalNPC_Data["RoleStatus"][2] = 3316533
	tQixiFestivalNPC_Data["RoleStatus"][3316532] = 260
	tQixiFestivalNPC_Data["RoleStatus"][3316533] = 262
	tQixiFestivalNPC_Data["RoleStatus"]["Power"] = 200
	tQixiFestivalNPC_Data["RoleStatus"]["Secs"] = 2592000
	tQixiFestivalNPC_Data["RoleStatus"]["Times"] = 0
	tQixiFestivalNPC_Data["RoleStatus"]["EndTime"] = 2592000
	tQixiFestivalNPC_Data["RoleStatus"]["Recordable"] = 1
	tQixiFestivalNPC_Data["RoleStatus"]["RemainTime"] = 0
	--七夕称号3
	tQixiFestivalNPC_Data[4] = {}
	tQixiFestivalNPC_Data[4]["TitleType"] = {}
	tQixiFestivalNPC_Data[4]["TitleType"][1] = 2198
	tQixiFestivalNPC_Data[4]["TitleType"][2] = 2199
	tQixiFestivalNPC_Data[4]["TitleId"] = {}
	tQixiFestivalNPC_Data[4]["TitleId"][1] = 2198
	tQixiFestivalNPC_Data[4]["TitleId"][2] = 2199
	--七夕称号2
	tQixiFestivalNPC_Data[3316522] = {}
	tQixiFestivalNPC_Data[3316522]["TitleType"] = {}
	tQixiFestivalNPC_Data[3316522]["TitleType"][1] = 2196
	tQixiFestivalNPC_Data[3316522]["TitleType"][2] = 2197
	tQixiFestivalNPC_Data[3316522]["TitleId"] = {}
	tQixiFestivalNPC_Data[3316522]["TitleId"][1] = 2196
	tQixiFestivalNPC_Data[3316522]["TitleId"][2] = 2197
	tQixiFestivalNPC_Data[3316523] = {}
	tQixiFestivalNPC_Data[3316523]["TitleType"] = {}
	tQixiFestivalNPC_Data[3316523]["TitleType"][1] = 2196
	tQixiFestivalNPC_Data[3316523]["TitleType"][2] = 2197
	tQixiFestivalNPC_Data[3316523]["TitleId"] = {}
	tQixiFestivalNPC_Data[3316523]["TitleId"][1] = 2196
	tQixiFestivalNPC_Data[3316523]["TitleId"][2] = 2197
	--七夕称号1
	tQixiFestivalNPC_Data[3316526] = {}
	tQixiFestivalNPC_Data[3316526]["TitleType"] = {}
	tQixiFestivalNPC_Data[3316526]["TitleType"][1] = 2194
	tQixiFestivalNPC_Data[3316526]["TitleType"][2] = 2195
	tQixiFestivalNPC_Data[3316526]["TitleId"] = {}
	tQixiFestivalNPC_Data[3316526]["TitleId"][1] = 2194
	tQixiFestivalNPC_Data[3316526]["TitleId"][2] = 2195
	tQixiFestivalNPC_Data[3316527] = {}
	tQixiFestivalNPC_Data[3316527]["TitleType"] = {}
	tQixiFestivalNPC_Data[3316527]["TitleType"][1] = 2194
	tQixiFestivalNPC_Data[3316527]["TitleType"][2] = 2195
	tQixiFestivalNPC_Data[3316527]["TitleId"] = {}
	tQixiFestivalNPC_Data[3316527]["TitleId"][1] = 2194
	tQixiFestivalNPC_Data[3316527]["TitleId"][2] = 2195
	--龙魂对应喜鹊数量
	tQixiFestivalNPC_Data[4200001] = 100
	tQixiFestivalNPC_Data[4200002] = 200
	tQixiFestivalNPC_Data[4200003] = 400
	tQixiFestivalNPC_Data[4200004] = 800
	tQixiFestivalNPC_Data[4200005] = 1600
	tQixiFestivalNPC_Data[4200006] = 3200
	tQixiFestivalNPC_Data[4200007] = 6400
	tQixiFestivalNPC_Data[4200008] = 12800
	tQixiFestivalNPC_Data[4200009] = 25600
	tQixiFestivalNPC_Data[4200010] = 51200
	tQixiFestivalNPC_Data[4200011] = 102400

--鹊桥升级所需累计喜鹊数量
local tQixiFestivalNPC_Lev ={}
	tQixiFestivalNPC_Lev[0] = 5000
	tQixiFestivalNPC_Lev[1] = 15000
	tQixiFestivalNPC_Lev[2] = 30000
	tQixiFestivalNPC_Lev[3] = 50000
	tQixiFestivalNPC_Lev[4] = 100000
	tQixiFestivalNPC_Lev[5] = 180000
	tQixiFestivalNPC_Lev[6] = 300000

local tQixiFestivalNPC_DelItemId = {}
local tQixiFestivalNPC_DelItemNum = {}
	
--各种道具所召唤喜鹊数量	
local tQixiFestivalNPC_Exp = {}
	
	tQixiFestivalNPC_Exp[755999] = 9990
	tQixiFestivalNPC_Exp[753999] = 9990
	tQixiFestivalNPC_Exp[757999] = 9990
	tQixiFestivalNPC_Exp[751999] = 9990
	tQixiFestivalNPC_Exp[752999] = 9990
	tQixiFestivalNPC_Exp[756999] = 9990
	tQixiFestivalNPC_Exp[754099] = 1980
	tQixiFestivalNPC_Exp[758099] = 1980
	tQixiFestivalNPC_Exp[753099] = 990
	tQixiFestivalNPC_Exp[757099] = 990
	tQixiFestivalNPC_Exp[751099] = 990
	tQixiFestivalNPC_Exp[755099] = 990
	tQixiFestivalNPC_Exp[752099] = 990
	tQixiFestivalNPC_Exp[756099] = 990	
	tQixiFestivalNPC_Exp[754009] = 180
	tQixiFestivalNPC_Exp[758009] = 180
	tQixiFestivalNPC_Exp[753009] = 90
	tQixiFestivalNPC_Exp[757009] = 90
	tQixiFestivalNPC_Exp[751009] = 90
	tQixiFestivalNPC_Exp[755009] = 90
	tQixiFestivalNPC_Exp[752009] = 90
	tQixiFestivalNPC_Exp[756009] = 90 	
	tQixiFestivalNPC_Exp[754003] = 60
	tQixiFestivalNPC_Exp[758003] = 60
	tQixiFestivalNPC_Exp[752003] = 30
	tQixiFestivalNPC_Exp[756003] = 30
	tQixiFestivalNPC_Exp[753003] = 30
	tQixiFestivalNPC_Exp[757003] = 30
	tQixiFestivalNPC_Exp[751003] = 30
	tQixiFestivalNPC_Exp[755003] = 30
	tQixiFestivalNPC_Exp[754001] = 20
	tQixiFestivalNPC_Exp[758001] = 20
	tQixiFestivalNPC_Exp[753001] = 10
	tQixiFestivalNPC_Exp[757001] = 10
	tQixiFestivalNPC_Exp[751001] = 10
	tQixiFestivalNPC_Exp[755001] = 10
	
	--兑换券
	tQixiFestivalNPC_Exp[3304137]=20
	tQixiFestivalNPC_Exp[3304135]=10
	tQixiFestivalNPC_Exp[3304134]=10
	tQixiFestivalNPC_Exp[3304136]=10
	tQixiFestivalNPC_Exp[3331782]=10
	
local tQixiFestivalNPC_Item = {}
	tQixiFestivalNPC_Item[1] = {}
	tQixiFestivalNPC_Item[1][1] = 754099
	tQixiFestivalNPC_Item[1][2] = 758099
	tQixiFestivalNPC_Item[1][3] = 755999
	tQixiFestivalNPC_Item[1][4] = 752999
	tQixiFestivalNPC_Item[1][5] = 756999
	tQixiFestivalNPC_Item[1][6] = 754009
	tQixiFestivalNPC_Item[1][7] = 758009
	tQixiFestivalNPC_Item[1][8] = 753099
	tQixiFestivalNPC_Item[1][9] = 757099
	tQixiFestivalNPC_Item[1][10] = 751099
	tQixiFestivalNPC_Item[1][11] = 755099
	tQixiFestivalNPC_Item[1][12] = 754003
	tQixiFestivalNPC_Item[1][13] = 758003
	tQixiFestivalNPC_Item[1][14] = 752099
	tQixiFestivalNPC_Item[1][15] = 756099
	tQixiFestivalNPC_Item[1][16] = 754001
	tQixiFestivalNPC_Item[1][17] = 758001
	tQixiFestivalNPC_Item[1][18] = 753009
	tQixiFestivalNPC_Item[1][19] = 757009
	tQixiFestivalNPC_Item[1][20] = 751009
	tQixiFestivalNPC_Item[1][21] = 755009
	tQixiFestivalNPC_Item[1][22] = 753003
	tQixiFestivalNPC_Item[1][23] = 757003
	tQixiFestivalNPC_Item[1][24] = 751003
	tQixiFestivalNPC_Item[1][25] = 755003
	tQixiFestivalNPC_Item[1][26] = 752009
	tQixiFestivalNPC_Item[1][27] = 756009
	tQixiFestivalNPC_Item[1][28] = 753001
	tQixiFestivalNPC_Item[1][29] = 757001
	tQixiFestivalNPC_Item[1][30] = 751001
	tQixiFestivalNPC_Item[1][31] = 755001
	tQixiFestivalNPC_Item[1][32] = 752003
	tQixiFestivalNPC_Item[1][33] = 756003
	tQixiFestivalNPC_Item[1][34] = 753999
	tQixiFestivalNPC_Item[1][35] = 757999
	tQixiFestivalNPC_Item[1][36] = 751999

	--兑换券
	tQixiFestivalNPC_Item[2] = {}
	tQixiFestivalNPC_Item[2][1]=3304137
	tQixiFestivalNPC_Item[2][2]=3304135
	tQixiFestivalNPC_Item[2][3]=3304136
	tQixiFestivalNPC_Item[2][4]=3304134
	tQixiFestivalNPC_Item[2][5]=3331782
	--灵珠
	tQixiFestivalNPC_Item[3] = {}
	tQixiFestivalNPC_Item[3][1] = 4200001
	tQixiFestivalNPC_Item[3][2] = 4200002
	tQixiFestivalNPC_Item[3][3] = 4200003
	tQixiFestivalNPC_Item[3][4] = 4200004
	tQixiFestivalNPC_Item[3][5] = 4200005
	tQixiFestivalNPC_Item[3][6] = 4200006
	tQixiFestivalNPC_Item[3][7] = 4200007
	tQixiFestivalNPC_Item[3][8] = 4200008
	tQixiFestivalNPC_Item[3][9] = 4200009
	tQixiFestivalNPC_Item[3][10]= 4200010
	tQixiFestivalNPC_Item[3][11]= 4200011

	
local tQixiFestivalNPC_Del = {}
	tQixiFestivalNPC_Del[1] = {}
	tQixiFestivalNPC_Del[1]["LogId"] = 12002030
	tQixiFestivalNPC_Del[1]["DeleteItem"] = {}
	tQixiFestivalNPC_Del[1]["RewardEffect"] = {}
	tQixiFestivalNPC_Del[1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQixiFestivalNPC_Del[1]["RewardEffect"]["Effect"] = "angelwing"
	
	
	tQixiFestivalNPC_Del[2] = {}
	--一键兑换兑换券
	tQixiFestivalNPC_Del[2]["LogId"] = 12002030
	tQixiFestivalNPC_Del[2]["DeleteItem"] = {}
	tQixiFestivalNPC_Del[2]["RewardEffect"] = {}
	tQixiFestivalNPC_Del[2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQixiFestivalNPC_Del[2]["RewardEffect"]["Effect"] = "angelwing"

local tQixiFestivalNPC_Stc = {}
	tQixiFestivalNPC_Stc["AllEvent"] = 300
	tQixiFestivalNPC_Stc["AllType"] = 3  --召唤喜鹊总数量
	tQixiFestivalNPC_Stc["EventType"] = 224
	--鹊桥阶段奖励
	tQixiFestivalNPC_Stc["Reward"] = {}
	tQixiFestivalNPC_Stc["Reward"][1] = 13
	tQixiFestivalNPC_Stc["Reward"][2] = 14
	tQixiFestivalNPC_Stc["Reward"][3] = 15
	tQixiFestivalNPC_Stc["Reward"][4] = 16
	tQixiFestivalNPC_Stc["Reward"][5] = 17
	tQixiFestivalNPC_Stc["Reward"][6] = 18
	tQixiFestivalNPC_Stc["Reward"][7] = 19
	tQixiFestivalNPC_Stc["DataType"] = {}
	tQixiFestivalNPC_Stc["DataType"]["Plot"] = 20 --是否已过剧情
	tQixiFestivalNPC_Stc["DataType"]["NPC"] = 21 --剧情后第一次点NPC
	tQixiFestivalNPC_Stc["DataType"]["Lev"] = 22 --鹊桥阶段等级
	tQixiFestivalNPC_Stc["DataType"]["Exp"] = 23 --1w只进度（满1w后可领取掩码+1，本掩码data值-1w）
	tQixiFestivalNPC_Stc["DataType"]["AwardChip"] = 24 --1w碎片是否可领（进度满1w+1，领取一次-1）
	tQixiFestivalNPC_Stc["DataType"][3316531] = 25 --外套碎片赌赢次数（赢了+1输了-1，大于105必输）
	tQixiFestivalNPC_Stc["DataType"]["HandUp"] = 26 --每日礼物兑换喜鹊的值
	tQixiFestivalNPC_Stc["DataType"]["Guide"] = 27 --是否完成杀怪引导
	tQixiFestivalNPC_Stc["DataType"]["Kill"] =62	--杀怪计数
local tQixiFestivalNPC_Map = {}
	tQixiFestivalNPC_Map["Plot"] = {}
	tQixiFestivalNPC_Map["Plot"]["MapId"] = 10912
	tQixiFestivalNPC_Map["Plot"]["PosX"] = 263
	tQixiFestivalNPC_Map["Plot"]["PosY"] = 124
	tQixiFestivalNPC_Map[1] = {}
	tQixiFestivalNPC_Map[1]["MapId"] = 1002
	tQixiFestivalNPC_Map[1]["PosX"] = 374
	tQixiFestivalNPC_Map[1]["PosY"] = 439
	tQixiFestivalNPC_Map[2] = {}
	tQixiFestivalNPC_Map[2]["MapId"] = 1036
	tQixiFestivalNPC_Map[2]["PosX"] = 250
	tQixiFestivalNPC_Map[2]["PosY"] = 214
	
local tQixiFestivalNPC_Log = {}
	tQixiFestivalNPC_Log["HandUp"] = "0,%d,%d,0,12002030,1[2],0,0"		--上交道具
----------------------------------逻辑部分---------------------------------------------
--判断服务器
function QixiFestivalNPC_ChkServer()
	-- 语种判断
	local nLanguage = User_ChkLanguage()
	--非英文不区分服务器
	if nLanguage~=2 then 
		return false
	end
	local nGlobalId = tQixiFestivalNPC_Data["Global"]
	local nData = Get_SysDynaGlobalData0(nGlobalId)
	if nData>0 then 
		return true
	end 
	return false
end 
--物品过期给气力值
function QixiFestivalNPC_OutTime(nItemId)
	local tReward = CommonFunc_Copy(tQixiFestivalNPC_Reward["TimeOut"])
	--过期给气力值
	if not Sys_ChkFullTime(tActivityTime["QixiFestivalNPC"]["ActivityTime"]) then
		local nItemNum = Get_CountItemType(nItemId,0)
		--给奖励
		if Item_ChkMulItem(nItemId,nItemId,nItemNum)then
			local nValue = tReward["RewardStrengthValue"]["Value"]*nItemNum
			--修改奖励气力值及删除物品数量
			tReward["DeleteItem"][1]["Id"] = nItemId
			tReward["DeleteItem"][1]["ItemNum"] = nItemNum
			tReward["RewardStrengthValue"]["Value"] = nValue
			RewardTemplate_UseItemAndMsg(tReward)
			Sys_MsgBox(string.format(tQixiFestivalNPC_Text["TimeOut"],nValue))
			return true 
		end 
	end
	return false
end


--线下页面
function QixiFestivalNPC_WebOpenH5()
	-- 语种判断
	local nLanguage = User_ChkLanguage()
	local nQixiFestivalNPC_WebUserId = Get_UserId()
	User_SendWebDialog(tQixiFestivalNPC_Data["Web"][nLanguage],nQixiFestivalNPC_WebUserId)
end

--积分转换线下页面
function QixiFestivalNPC_WebOpenH5_TimeOut()
	-- 语种判断
	local nLanguage = User_ChkLanguage()
	local nQixiFestivalNPC_WebUserId = Get_UserId()
	User_SendWebPage(tQixiFestivalNPC_Data["TimeOutWeb"][nLanguage],nQixiFestivalNPC_WebUserId)
end

--取玩家数据（当前鹊桥等级，累计召唤喜鹊数量，下阶段喜鹊数量）
function QixiFestivalNPC_GetUserDate(nUserId)
	local nQixiFestivalNPC_Event = tQixiFestivalNPC_Stc["EventType"]
	local nQixiFestivalNPC_Type = tQixiFestivalNPC_Stc["DataType"]["Lev"]
	--取玩家鹊桥等级
	local nQixiFestivalNPC_Data = Get_UserStatisticValue(nQixiFestivalNPC_Event,nQixiFestivalNPC_Type,nUserId)
	--取玩家累计召唤数量
	local nQixiFestivalNPC_AllEvent = tQixiFestivalNPC_Stc["AllEvent"]
	local nQixiFestivalNPC_AllType = tQixiFestivalNPC_Stc["AllType"] 
	local nQixiFestivalNPC_AllData = Get_UserStatisticValue(nQixiFestivalNPC_AllEvent,nQixiFestivalNPC_AllType,nUserId)
	--取玩家所需经验
	local nAllExp = 0
	if nQixiFestivalNPC_Data<7 then 
		nAllExp = tQixiFestivalNPC_Lev[nQixiFestivalNPC_Data]
	else 
		nAllExp = tQixiFestivalNPC_Data["Exp"]
	end 
	return nQixiFestivalNPC_Data,nQixiFestivalNPC_AllData,nAllExp
end 

--剧情
function QixiFestivalNPC_Plot()
	local nQixiFestivalNPC_Event = tQixiFestivalNPC_Stc["EventType"]
	local nQixiFestivalNPC_Type = tQixiFestivalNPC_Stc["DataType"]["Plot"]
	
	Task_SetStatistic(nQixiFestivalNPC_Event,nQixiFestivalNPC_Type,1,1)
	Task_SetStcTimestamp(nQixiFestivalNPC_Event,nQixiFestivalNPC_Type,0)
	local nMapId = tQixiFestivalNPC_Map["Plot"]["MapId"]
	local nCellX =tQixiFestivalNPC_Map["Plot"]["PosX"]
	local nCellY =tQixiFestivalNPC_Map["Plot"]["PosY"]
	User_UserRandBoundTrans(nMapId,nCellX,nCellY,5,5,1)
	-- 语种判断
	local nLanguage = User_ChkLanguage()
	User_PlayPlot(tQixiFestivalNPC_Data["Plot"][nLanguage])
	LinkNpcGossipFunc_New(26809,"1-5")
end 

--播完脚本传回激情服
function QixiFestivalNPC_EndPlot(nUserId,nPlayId,nPlayStatus)
	-- 语种判断
	local nLanguage = User_ChkLanguage()
	if nPlayId ~= tQixiFestivalNPC_Data["Plot"][nLanguage] then
		return
	end
	local nMapId = tQixiFestivalNPC_Map[1]["MapId"]
	local nCellX =tQixiFestivalNPC_Map[1]["PosX"]
	local nCellY =tQixiFestivalNPC_Map[1]["PosY"]
	if SpecialServer_ChkNoGiftServer() then	
		nMapId = tQixiFestivalNPC_Map[2]["MapId"]
		nCellX =tQixiFestivalNPC_Map[2]["PosX"]
		nCellY =tQixiFestivalNPC_Map[2]["PosY"]
		User_UserRandBoundTrans(nMapId,nCellX,nCellY,5,5,1,nUserId)
		return 
	end
	User_UserRandBoundTrans(nMapId,nCellX,nCellY,5,5,1,nUserId)
end

--提交物品
function QixiFestivalNPC_HandUp(nNpcId,nItemId,nIndex,sText)
	if not Sys_ChkFullTime(tActivityTime["QixiFestivalNPC"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return 
	end 
	--提交全部
	if nIndex==0 then 
		local nItemNum = Get_CountItemType(nItemId,0)
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			--计算召唤喜鹊数量
			local nAddExp = nItemNum*tQixiFestivalNPC_Data[nItemId]
			if sText =="6-3" then 
				Sys_DecNosuchStatisticCount(374,nItemId,1)
			end 
			Sys_SaveActionFestivalLog(string.format(tQixiFestivalNPC_Log["HandUp"],nItemId,nItemNum))
			QixiFestivalNPC_AddExp(nAddExp,1)
		else 
			LinkNpcGossipFunc_New(nNpcId,sText)
			return 
		end 
	else 
		if Item_ChkMulItem(nItemId,nItemId,nIndex) and Item_DelMulItem(nItemId,nItemId,nIndex) then
			--计算召唤喜鹊数量
			local nAddExp = nIndex*tQixiFestivalNPC_Data[nItemId]
			Sys_SaveActionFestivalLog(string.format(tQixiFestivalNPC_Log["HandUp"],nItemId,nIndex))
			if sText =="6-3" then 
				Sys_DecNosuchStatisticCount(374,nItemId,1)
			end 
			QixiFestivalNPC_AddExp(nAddExp,1)
		else 
			LinkNpcGossipFunc_New(nNpcId,sText)
			return 
		end 
	end 
end 

--判断是否达到3w只
function QixiFestivalNPC_PassExp(nPassExp,nIndex,nAddExp)
	
	local nUserId = Get_UserId()
	local nQixiFestivalNPC_Event = tQixiFestivalNPC_Stc["EventType"]
	local nQixiFestivalNPC_PassType = tQixiFestivalNPC_Stc["DataType"]["Exp"]
	--取玩家碎片进度
	local nQixiFestivalNPC_Data = Get_UserStatisticValue(nQixiFestivalNPC_Event,nQixiFestivalNPC_PassType)
	local nResidue =nQixiFestivalNPC_Data+nPassExp
	--增加可领碎片数量
	local nAwardChip = math.floor(nResidue/tQixiFestivalNPC_Data["Exp"])
	local nShengyu = nResidue%tQixiFestivalNPC_Data["Exp"] 
	--修改进度值
	Task_SetStatistic(nQixiFestivalNPC_Event,nQixiFestivalNPC_PassType,nShengyu,1)
	Task_SetStcTimestamp(nQixiFestivalNPC_Event,nQixiFestivalNPC_PassType,0)
	--加碎片可领取掩码
	Task_AddStatistic(nQixiFestivalNPC_Event,tQixiFestivalNPC_Stc["DataType"]["AwardChip"],nAwardChip,1)
	Task_SetStcTimestamp(nQixiFestivalNPC_Event,tQixiFestivalNPC_Stc["DataType"]["AwardChip"],0)

	--玩家累计召唤数量
	local nQixiFestivalNPC_AllEvent = tQixiFestivalNPC_Stc["AllEvent"]
	local nQixiFestivalNPC_AllType = tQixiFestivalNPC_Stc["AllType"] 
	--加累计召唤数量
	Task_AddStatistic(nQixiFestivalNPC_AllEvent,nQixiFestivalNPC_AllType,nAddExp,1,nUserId)
	Task_SetStcTimestamp(nQixiFestivalNPC_AllEvent,nQixiFestivalNPC_AllType,0,nUserId)
	
	--取玩家数据
	local nNowLev,nNowAllNum,nNowAllExp = QixiFestivalNPC_GetUserDate(nUserId)
	local nData = Get_UserStatisticValue(nQixiFestivalNPC_Event,nQixiFestivalNPC_PassType)
	local nNeedExp = nNowAllExp - nData
	local sText = string.format(tQixiFestivalNPC_Text["Succeed"],nNeedExp)
	Sys_MsgBox(string.format(tQixiFestivalNPC_Text["HandUp"][nIndex],nAddExp,sText))
	--加排行榜积分
	if nNowLev>=1 then 
		RankingFunc_SetInfo(26809,nNowAllNum,nUserId)
	end 
	-- 播光效
	User_EffectAdd("self",tQixiFestivalNPC_Data["Effect"])
end
	

--加成喜鹊数量
function QixiFestivalNPC_AddExp(nAddExp,nIndex)
	local nUserId = Get_UserId()

	--取玩家数据
	local nLev,nAllNum,nAllExp = QixiFestivalNPC_GetUserDate(nUserId)
	--增加后总数
	local nAllBird = nAllNum+nAddExp
	--是否需要升级提升
	local nUP = 0
	local nQixiFestivalNPC_Event = tQixiFestivalNPC_Stc["EventType"]
	--是否到最高阶段
	if nLev>=7 then 
		--取1w只的进度
		QixiFestivalNPC_PassExp(nAddExp,nIndex,nAddExp)
		return 
	else 
		for index =1,8 do
			local nQixiFestivalNPC_Type = tQixiFestivalNPC_Stc["DataType"]["Lev"]
			--取玩家鹊桥等级
			local nLev = Get_UserStatisticValue(nQixiFestivalNPC_Event,nQixiFestivalNPC_Type)
			if nLev<7 then 
				if nAllBird >= tQixiFestivalNPC_Lev[nLev] then 
					--升级
					Task_AddStatistic(nQixiFestivalNPC_Event,nQixiFestivalNPC_Type,1,1)
					Task_SetStcTimestamp(nQixiFestivalNPC_Event,nQixiFestivalNPC_Type,0)
					nUP = nUP+1
					--判断升级后是否大于7级
					nLev = Get_UserStatisticValue(nQixiFestivalNPC_Event,nQixiFestivalNPC_Type)
					if nLev >=7 then 
						local nPassExp = nAllBird-tQixiFestivalNPC_Lev[6]
						if nPassExp>0 then 
							QixiFestivalNPC_PassExp(nPassExp,nIndex,nAddExp)
							return 
						end 
					end 
				end 
			end 
		end
	end
	--玩家累计召唤数量
	local nQixiFestivalNPC_AllEvent = tQixiFestivalNPC_Stc["AllEvent"]
	local nQixiFestivalNPC_AllType = tQixiFestivalNPC_Stc["AllType"] 
	--加累计召唤数量
	Task_AddStatistic(nQixiFestivalNPC_AllEvent,nQixiFestivalNPC_AllType,nAddExp,1,nUserId)
	Task_SetStcTimestamp(nQixiFestivalNPC_AllEvent,nQixiFestivalNPC_AllType,0,nUserId)
	--取玩家数据
	local nNowLev,nNowAllNum,nNowAllExp = QixiFestivalNPC_GetUserDate(nUserId)
	local nNeedExp = nNowAllExp - nNowAllNum
	--加排行榜积分
	if nNowLev>=1 then 
		RankingFunc_SetInfo(26809,nNowAllNum,nUserId)
	end 
	local sFunc = "LinkNpcGossipFunc_New</N>"..tQixiFestivalNPC_Data["NPCID"].."</S>2-4"
	if nNowLev<=4 then 
		if nUP ==0 then 
			local sText = string.format(tQixiFestivalNPC_Text["Succeed"],nNeedExp)
			
			Sys_MsgBox(string.format(tQixiFestivalNPC_Text["HandUp"][nIndex],nAddExp,sText),sFunc,nil,nUserId)
		else  

			local sUserName = Get_UserName(nUserId)
			local snQixiFestivalNPC_Broadcast = string.format(tQixiFestivalNPC_Text["Broadcast"],sUserName,tostring(nNowLev))
			Sys_SystemBroadcast(snQixiFestivalNPC_Broadcast)
			Sys_TalkBroadcast(snQixiFestivalNPC_Broadcast)
			local sText = string.format(tQixiFestivalNPC_Text["LevUp"],nNowLev,tQixiFestivalNPC_Text[nNowLev])
			Sys_MsgBox(string.format(tQixiFestivalNPC_Text["HandUp"][nIndex],nAddExp,sText),sFunc,nil,nUserId)
		end 
	else 
		if nNowLev>=7 then 
			nNeedExp = tQixiFestivalNPC_Data["Exp"] - (nNowAllNum - tQixiFestivalNPC_Lev[6])
		end 
		local sText = string.format(tQixiFestivalNPC_Text["Succeed"],nNeedExp)
		Sys_MsgBox(string.format(tQixiFestivalNPC_Text["HandUp"][nIndex],nAddExp,sText),sFunc,nil,nUserId)
	end 
	-- 播光效
	User_EffectAdd("self",tQixiFestivalNPC_Data["Effect"])
end

--取玩家是否可领阶段奖励
function QixiFestivalNPC_GetRewardTime()
	local nUserId = Get_UserId()
	--取玩家数据
	local nLev,nAllNum,nAllExp = QixiFestivalNPC_GetUserDate(nUserId)
	local nQixiFestivalNPC_Event = tQixiFestivalNPC_Stc["EventType"]
	--领奖阶段
	local nIndex = 0
	local nQixiFestivalNPC_Reward = 0
	for i = 1,7 do
		if nAllNum >= tQixiFestivalNPC_Lev[i-1] then
			nQixiFestivalNPC_Reward = tQixiFestivalNPC_Stc["Reward"][i]
			if Task_ChkStcValue(nQixiFestivalNPC_Event,nQixiFestivalNPC_Reward,"==",0,nUserId) then
				nIndex = i
				break
			end
		end
	end
	return nIndex
end 

--判断是否有可领奖励
function QixiFestivalNPC_CanReward()
	local nUserId = Get_UserId()
	local nIndex = QixiFestivalNPC_GetRewardTime()
	local nLev,nAllNum,nAllExp = QixiFestivalNPC_GetUserDate(nUserId)
	local nQixiFestivalNPC_Event = tQixiFestivalNPC_Stc["EventType"]
	--没有可以领取的单次奖励
	if nIndex > 0 then
		return true 
	else  
		--判断是否可领取碎片奖励
		if nLev>=7 then 
			--取1w碎片是否可领掩码
			local nQixiFestivalNPC_Type = tQixiFestivalNPC_Stc["DataType"]["AwardChip"]
			local nQixiFestivalNPC_Data = Get_UserStatisticValue(nQixiFestivalNPC_Event,nQixiFestivalNPC_Type)
			if nQixiFestivalNPC_Data>0 then 
				return true 
			end 
		end 
	end 
	return false  
end

--领取阶段奖励
function QixiFestivalNPC_GetReward(nNpcId)
	if not Sys_ChkFullTime(tActivityTime["QixiFestivalNPC"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return 
	end 
	local nUserId = Get_UserId()
	--取玩家数据
	local nLev,nAllNum,nAllExp = QixiFestivalNPC_GetUserDate(nUserId)
	local nQixiFestivalNPC_Event = tQixiFestivalNPC_Stc["EventType"]
	
	local nIndex = QixiFestivalNPC_GetRewardTime()
	--没有可以领取的单次奖励
	if nIndex == 0 then
		--判断是否可领取碎片奖励
		if nLev>=7 then 
			--取1w碎片是否可领掩码
			local nQixiFestivalNPC_Type = tQixiFestivalNPC_Stc["DataType"]["AwardChip"]
			local nQixiFestivalNPC_Data = Get_UserStatisticValue(nQixiFestivalNPC_Event,nQixiFestivalNPC_Type)
			if nQixiFestivalNPC_Data>0 then 
				--判断背包空间
				local nSpace = RewardTemplate_GetRewardSpace(tQixiFestivalNPC_Reward["Max"])
				if not User_CheckLeftSpace(nSpace) then
					local sText = string.format(tQixiFestivalNPC_Text["NoSpace"],nSpace)
					Sys_MsgBox(sText)
					return
				end
				if Task_AddStatistic(nQixiFestivalNPC_Event,nQixiFestivalNPC_Type,-nQixiFestivalNPC_Data,1,nUserId) then
					local tReward = CommonFunc_Copy(tQixiFestivalNPC_Reward["Max"])
					tReward["RewardItem"][1]["Attr"] = "0 "..nQixiFestivalNPC_Data
					RewardTemplate_UseItemAndMsg(tReward)
					return 
				end
			end 
		end 
		return
	end
	local tReward = tQixiFestivalNPC_Reward[nIndex]
	--激情服和绿色服改固化石奖励为星陨石
	if nIndex==5  and QixiFestivalNPC_ChkServer() then 
		tReward = tQixiFestivalNPC_Reward["JQF"]
	end 
	local nSpace = RewardTemplate_GetRewardSpace(tReward)
	--判断背包空间
	if not User_CheckLeftSpace(nSpace) then
		local sText = string.format(tQixiFestivalNPC_Text["NoSpace"],nSpace)
		Sys_MsgBox(sText)
		return
	end
	--打掩码给奖励
	nQixiFestivalNPC_Reward = tQixiFestivalNPC_Stc["Reward"][nIndex]
	if Task_SetStatistic(nQixiFestivalNPC_Event,nQixiFestivalNPC_Reward,1,1,nUserId) then
	
		if tReward["RewardTitle"]~=nil then 
			local tReward = CommonFunc_Copy(tReward)
			local nSex = Get_UserSex(nUserId)
			tReward["RewardTitle"]["TitleType"] = tQixiFestivalNPC_Data[nIndex]["TitleType"][nSex]
			tReward["RewardTitle"]["TitleId"] = tQixiFestivalNPC_Data[nIndex]["TitleId"][nSex]
			RewardTemplate_UseItemAndMsg(tReward)
		else  
			RewardTemplate_UseItemAndMsg(tReward)
		end 
	end
	if QixiFestivalNPC_CanReward()then 
		LinkNpcGossipFunc_New(nNpcId,"4-1")
	end 
end 
--判断是否上榜
function QixiFestivalNPC_ChkRank(nNpcId,nNowUserId)
	local tQixiFestivalNPC_RankingList = RankingFunc_GetNowData(nNpcId) -- 获取排行榜数据
	local nQixiFestivalNPC_TabLength = #tQixiFestivalNPC_RankingList
	for k = 1, nQixiFestivalNPC_TabLength do
		local nQixiFestivalNPC_UserId = tQixiFestivalNPC_RankingList[k]["UserId"]
		if nQixiFestivalNPC_UserId==nNowUserId then 
			return true
		end 
	end 
	return false
end 
--查看全球鹊桥榜
function QixiFestivalNPC_LookRanking(nNpcId)
	local nNowUserId = Get_UserId()
	local tQixiFestivalNPC_RankingList = RankingFunc_GetNowData(nNpcId) -- 获取排行榜数据
	local nQixiFestivalNPC_TabLength = #tQixiFestivalNPC_RankingList
	--取玩家数据
	local nLev,nAllNum,nAllExp = QixiFestivalNPC_GetUserDate(nNowUserId)
	for k = 1, nQixiFestivalNPC_TabLength do
		local nQixiFestivalNPC_Score = tQixiFestivalNPC_RankingList[k]["Score"]
		local nQixiFestivalNPC_UserId = tQixiFestivalNPC_RankingList[k]["UserId"]
		local sQixiFestivalNPC_UserName = tQixiFestivalNPC_RankingList[k]["UserName"]
		-- 名字处理 -- 海外使用
		sQixiFestivalNPC_UserName = string.gsub(sQixiFestivalNPC_UserName, "<", " ")
		sQixiFestivalNPC_UserName = string.gsub(sQixiFestivalNPC_UserName, ">", " ")
		
		local nRankUserLev = QixiFestivalNPC_GetLevel(nQixiFestivalNPC_UserId,nQixiFestivalNPC_Score)
		if k>10 then 
			break
		end 
		tNpcGossip[nNpcId]["Text516"] = string.format(tQixiFestivalNPC_Text[nNpcId]["Text516"],nLev,nAllNum)
		-- 语种判断
		local nLanguage = User_ChkLanguage()
		--上榜显示总数，否则只显示鹊桥等级
		if QixiFestivalNPC_ChkRank(nNpcId,nNowUserId) then 
			tNpcGossip[nNpcId]["Text513"] = tQixiFestivalNPC_Text[nNpcId]["Rank"]
			local sText = string.format(tQixiFestivalNPC_Text["AllNum"],nQixiFestivalNPC_Score)
			local sAllRankText = ""
			if nLanguage==2 then
				sAllRankText = Sys_Alignment(tostring(k),4,tostring(nRankUserLev),16,tostring(sText),28,sQixiFestivalNPC_UserName,38)
			elseif nLanguage==3 then
				sAllRankText = Sys_Alignment(tostring(k),4,tostring(nRankUserLev),30,tostring(sText),65,sQixiFestivalNPC_UserName,83)
			elseif nLanguage==4 then
				sAllRankText = Sys_Alignment(tostring(k),4,tostring(nRankUserLev),16,tostring(sText),28,sQixiFestivalNPC_UserName,38)
			end
			tNpcGossip[nNpcId]["Text514"..k] = string.format(tQixiFestivalNPC_Text[nNpcId]["Text514"..k],sAllRankText)
		else 
			tNpcGossip[nNpcId]["Text513"] = tQixiFestivalNPC_Text[nNpcId]["Text513"] 
			local sAllRankText = ""
			if nLanguage==2 then
				sAllRankText = Sys_Alignment(tostring(k),4,tostring(nRankUserLev),22,sQixiFestivalNPC_UserName,35)
			elseif nLanguage==3 then
				sAllRankText = Sys_Alignment(tostring(k),4,tostring(nRankUserLev),40,sQixiFestivalNPC_UserName,85)
			elseif nLanguage==4 then
				sAllRankText = Sys_Alignment(tostring(k),4,tostring(nRankUserLev),22,sQixiFestivalNPC_UserName,35)
			end
			tNpcGossip[nNpcId]["Text514"..k] = string.format(tQixiFestivalNPC_Text[nNpcId]["Text514"..k],sAllRankText)
		end 
	end
	local nNextText = nQixiFestivalNPC_TabLength+1
	for i =nNextText,10 do 
		tNpcGossip[nNpcId]["Text514"..i] = ""
	end

end 

--根据分数计算等级
function QixiFestivalNPC_GetLevel(nQixiFestivalNPC_UserId,nQixiFestivalNPC_Score)
	for  k = 1, #tQixiFestivalNPC_Lev do	
		if nQixiFestivalNPC_Score< tQixiFestivalNPC_Lev[k] then 
			return k
		else 
			if nQixiFestivalNPC_Score>= tQixiFestivalNPC_Lev[6] then 
				return 7
			end 
		end 
	end
end
-- 光环礼包使用
function QixiFestivalNPC_AddRole(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
	--判定玩家身上是否有光环
	local nStatus = tQixiFestivalNPC_Data["RoleStatus"][nItemId]
	local nPower = tQixiFestivalNPC_Data["RoleStatus"]["Power"]
	local nSecs  = tQixiFestivalNPC_Data["RoleStatus"]["Secs"]
	local nTimes = tQixiFestivalNPC_Data["RoleStatus"]["Times"]
	local nEndTime = tQixiFestivalNPC_Data["RoleStatus"]["EndTime"]
	local nRecordable = tQixiFestivalNPC_Data["RoleStatus"]["Recordable"]
	local nRemainTime = tQixiFestivalNPC_Data["RoleStatus"]["RemainTime"]
	if User_IsExistHalo() then
		--删除光环
		User_DelHalo()
	end
	local nUserId = Get_UserId()
	User_AddRoleStatus(nStatus,nPower,nSecs,nTimes,nRemainTime,nEndTime,nRecordable,1,0,nUserId)
end

-- 卸下光环
function QixiFestivalNPC_DropEffect(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
	if User_IsExistHalo() then
		--删除光环
		User_DelHalo()
	end
end

--外套碎片使用后背包还有，继续跳出对白
function QixiFestivalNPC_CoatChip(nItemId)
	local nHaveNum = Get_CountItemType(nItemId,0)
	if nHaveNum>0 then 
		LinkItemGossipFunc_New(nItemId,"1-1")
	end
end

--外套合成
function QixiFestivalNPC_Compose(nItemId,nItemNum)
	
	--判断数量
	if not Item_ChkMulItem(nItemId,nItemId,nItemNum) then
		local nHaveNum = Get_CountItemType(nItemId,0)
		local nNeedNum = nItemNum-nHaveNum
		Sys_MsgBox(string.format(tQixiFestivalNPC_Text[nItemId]["ComposeDefeate"],nNeedNum))
		return
	end
	
	local nSpace = RewardTemplate_GetRewardSpace(tQixiFestivalNPC_Reward[nItemId]["Compose"])
	--判断背包空间
	if not User_CheckLeftSpace(nSpace) then
		local sText = string.format(tQixiFestivalNPC_Text["NoSpace"],nSpace)
		Sys_MsgBox(sText)
		return
	end
	RewardTemplate_UseItemAndMsg(tQixiFestivalNPC_Reward[nItemId]["Compose"])
	Sys_MsgBox(tQixiFestivalNPC_Text[nItemId]["ComposeSucceed"])
	QixiFestivalNPC_CoatChip(nItemId)
end 

--外套洗赠
function QixiFestivalNPC_ChgCoat(nCoatItemId,nItemId,nItemNum)
	local nUserId =Get_UserId()
	--检测背包中是否存在可洗的赠品
	if not Item_ChkMulItem(nCoatItemId,nCoatItemId,1,2,0,nUserId,0) then
		Sys_MsgBox(tQixiFestivalNPC_Text[nItemId]["ChgCoatNoItem"])
		return
	end
	--判断数量
	if not Item_ChkMulItem(nItemId,nItemId,nItemNum) then
		local nHaveNum = Get_CountItemType(nItemId,0)
		local nNeedNum = nItemNum-nHaveNum
		Sys_MsgBox(string.format(tQixiFestivalNPC_Text[nItemId]["ChgCoatDefeate"],nNeedNum))
		return
	end
	--判断背包空间
	local nSpace = RewardTemplate_GetRewardSpace(tQixiFestivalNPC_Reward[nItemId]["Clear"])
	if not User_CheckLeftSpace(nSpace) then
		local sText = string.format(tQixiFestivalNPC_Text["NoSpace"],nSpace)
		Sys_MsgBox(sText)
		return
	end
	if Item_ChkMulItem(nCoatItemId,nCoatItemId,1,2,0,nUserId,0) and Item_DelMulItem(nCoatItemId,nCoatItemId,1,2,0,nUserId,0) then
		RewardTemplate_UseItemAndMsg(tQixiFestivalNPC_Reward[nItemId]["Clear"])
		Sys_MsgBox(tQixiFestivalNPC_Text[nItemId]["ChgCoatSucceed"])
	end
	QixiFestivalNPC_CoatChip(nItemId)
end

--使用一个时装碎片
function QixiFestivalNPC_UseOneItem(nItemId)
	local nUserId = Get_UserId()
	local nSpace = RewardTemplate_GetRandomSpace(tQixiFestivalNPC_Reward[nItemId],1)
	--判断背包空间
	if not User_CheckLeftSpace(nSpace) then
		local sText = string.format(tQixiFestivalNPC_Text["NoSpace"],nSpace)
		Sys_MsgBox(sText)
		return
	end
	
	--判断单个使用了几次
	local nEvent = tQixiFestivalNPC_Stc["EventType"]
	local nType = tQixiFestivalNPC_Stc["DataType"][nItemId]
	
	--初始化掩码
	if Get_UserStatisticValue(nEvent,nType)<=5 then 
		Task_SetStatistic(nEvent,nType,100,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	end 
	--大于105必输
	local nDate = Get_UserStatisticValue(nEvent,nType)
	if nDate >= 105 then 
		--删物品减掩码
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			Task_AddStatistic(nEvent,nType,-1,1)
			Task_SetStcTimestamp(nEvent,nType,0)
			Sys_MsgBox(tQixiFestivalNPC_Text[nItemId]["Defeate"])
		end
		return
	end
	
	--删除物品
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		-- 给奖励
		local tNewReward,sRewardStr=RewardTemplate_NewRandom(tQixiFestivalNPC_Reward[nItemId],1)
		--赌赢加掩码
		if tNewReward[1]["tAward"][1]["RewardItem"] ~= nil then 
			--加掩码
			Task_AddStatistic(nEvent,nType,1,1)
			Task_SetStcTimestamp(nEvent,nType,0)
			Sys_MsgBox(tQixiFestivalNPC_Text[nItemId]["OneSucceed"])
			return
		else
			--赌输减掩码
			--减掩码
			Task_AddStatistic(nEvent,nType,-1,1)
			Task_SetStcTimestamp(nEvent,nType,0)
			Sys_MsgBox(tQixiFestivalNPC_Text[nItemId]["Defeate"])
		end	
		
	end 	
	QixiFestivalNPC_CoatChip(nItemId)
end 


-- 判断今日5w喜鹊
function QixiFestivalNPC_HandNum()
	local nQixiFestivalNPC_Event = tQixiFestivalNPC_Stc["EventType"]
	local nQixiFestivalNPC_Hand = tQixiFestivalNPC_Stc["DataType"]["HandUp"]
	-- 隔日重置
	QixiFestivalNPC_Rest(nQixiFestivalNPC_Event,nQixiFestivalNPC_Hand)
	local nQixiFestivalNPC_Data = Get_UserStatisticValue(nQixiFestivalNPC_Event,nQixiFestivalNPC_Hand)
	if nQixiFestivalNPC_Data < tQixiFestivalNPC_Data["HandUp"] then
		return true
	else
		return false
	end
end

-- 隔日重置
function QixiFestivalNPC_Rest(nEvent,nType)
	local nQixiFestivalNPC_nUserId =  Get_UserId()
	if Task_StcInterval(nEvent,nType,1,4,nQixiFestivalNPC_nUserId) then
		Task_SetStatistic(nEvent,nType,0,1,nQixiFestivalNPC_nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nQixiFestivalNPC_nUserId)
	end
end

--提交上限
function QixiFestivalNPC_Remain()
	local nQixiFestivalNPC_Event = tQixiFestivalNPC_Stc["EventType"]
	local nQixiFestivalNPC_Hand = tQixiFestivalNPC_Stc["DataType"]["HandUp"]
	local nQixiFestivalNPC_Data = Get_UserStatisticValue(nQixiFestivalNPC_Event,nQixiFestivalNPC_Hand)
	tQixiFestivalNPC_DelItemId = {}
	tQixiFestivalNPC_DelItemNum = {}
	--剩余可提交
	local nRemain = tQixiFestivalNPC_Data["HandUp"]-nQixiFestivalNPC_Data
	for i=1,#tQixiFestivalNPC_Item[1] do 
		local nQixiFestivalNPC_nItemId = tQixiFestivalNPC_Item[1][i]
		local nQixiFestivalNPC_nItemNum = Get_CountItemType(nQixiFestivalNPC_nItemId,0)
		if nQixiFestivalNPC_nItemNum > 0 then
			local nExp =  nQixiFestivalNPC_nItemNum*tQixiFestivalNPC_Exp[nQixiFestivalNPC_nItemId]
			if nRemain-nExp>0 then 
				nRemain = nRemain-nExp
				if nQixiFestivalNPC_nItemNum~=0 and nQixiFestivalNPC_nItemNum~=nil then 
					table.insert(tQixiFestivalNPC_DelItemId,nQixiFestivalNPC_nItemId)
					table.insert(tQixiFestivalNPC_DelItemNum,nQixiFestivalNPC_nItemNum)
				end 
			else 
				local nNeedDelId,nNeedDelNum = QixiFestivalNPC_NeedDelNum(nQixiFestivalNPC_nItemId,nQixiFestivalNPC_nItemNum,nRemain)
				if nNeedDelNum~=0 and nNeedDelNum~=nil then 
					table.insert(tQixiFestivalNPC_DelItemId,nNeedDelId)
					table.insert(tQixiFestivalNPC_DelItemNum,nNeedDelNum)
				else
					Sys_MsgBox(tQixiFestivalNPC_Text["MaxNum"])
					return false
				end
			end 
		end 
	end 
	return true
end

--计算要扣多少个
function QixiFestivalNPC_NeedDelNum(nItemId,nItemNum,nRemain)
	local nDelNum = 0
	for i=1,nItemNum do 
		local nAllExp = nDelNum*tQixiFestivalNPC_Exp[nItemId]
		if nAllExp<=nRemain then 
			nDelNum = nDelNum+1
		else  
			nDelNum = nDelNum-1
		end 
	end 
	return nItemId,nDelNum
end 

-- 获得兑换喜鹊数量 1为鲜花礼物，2为兑换券
function QixiFestivalNPC_GetNum(nIndex)
	local nQixiFestivalNPC_nNum = 0
	for i=1,#tQixiFestivalNPC_Item[nIndex] do
		local nQixiFestivalNPC_nItemId = tQixiFestivalNPC_Item[nIndex][i]
		local nQixiFestivalNPC_nItemNum = Get_CountItemType(nQixiFestivalNPC_nItemId,0)
		if nQixiFestivalNPC_nItemNum > 0 then
			--召唤总量（物品个数*单个数量）
			nQixiFestivalNPC_nNum = nQixiFestivalNPC_nNum + nQixiFestivalNPC_nItemNum*tQixiFestivalNPC_Exp[nQixiFestivalNPC_nItemId]
		end
	end
	return nQixiFestivalNPC_nNum
end

-- 获得消耗物品字符串（1为鲜花礼物，2为兑换券
function QixiFestivalNPC_GetDelItemStr(nIndex)
	local sQixiFestivalNPC_sText = tQixiFestivalNPC_Text["String"]
	local bQixiFestivalNPC_sText = false
	for i=1,#tQixiFestivalNPC_Item[nIndex] do
		local nQixiFestivalNPC_nItemId = tQixiFestivalNPC_Item[nIndex][i]
		local nQixiFestivalNPC_nItemNum = Get_CountItemType(nQixiFestivalNPC_nItemId,0)
		if nQixiFestivalNPC_nItemNum > 0 then
			local sItemName = Get_ItemtypeName(nQixiFestivalNPC_nItemId)
			if bQixiFestivalNPC_sText then
				sQixiFestivalNPC_sText = string.format(sQixiFestivalNPC_sText,tostring(tQixiFestivalNPC_Text["Link"]),tostring(tQixiFestivalNPC_Text["String"]))
			end
			bQixiFestivalNPC_sText = true
			local sQixiFestivalNPC_ItemStr = string.format(tQixiFestivalNPC_Text["ItemStr"],tostring(nQixiFestivalNPC_nItemNum),tostring(sItemName))
			sQixiFestivalNPC_sText = string.format(sQixiFestivalNPC_sText,tostring(sQixiFestivalNPC_ItemStr),tostring(tQixiFestivalNPC_Text["String"]))
		end
	end
	sQixiFestivalNPC_sText = string.format(sQixiFestivalNPC_sText,'','')
	return sQixiFestivalNPC_sText
end

-- 【一键上交判断】
function QixiFestivalNPC_GiftHandUp(nNpcId,nIndex)
	if QixiFestivalNPC_GetNum(nIndex) > 0 then
		if nIndex == 1 then 
			LinkNpcGossipFunc_New(nNpcId,"3-3")
		else 
			LinkNpcGossipFunc_New(nNpcId,"3-5")
		end 
	else
		tNpcGossip[26809]["Text321"] = tQixiFestivalNPC_Text[26809][nIndex]
		--背包里没有道具
		LinkNpcGossipFunc_New(nNpcId,"3-2")
	end

end 

-- 【确认一键上交鲜花礼物】
function QixiFestivalNPC_ConfirmExchange(nIndex)
	local tQixiFestivalNPC_tReward = CommonFunc_Copy(tQixiFestivalNPC_Del[nIndex])
	local QixiFestivalNPC_nNum = 0
	local nNumber = 1
	for i= 1,#tQixiFestivalNPC_Item[nIndex] do
	
		local nQixiFestivalNPC_ItemId = tQixiFestivalNPC_Item[nIndex][i]
		local QixiFestivalNPC_nHaveNum = Get_CountItemType(nQixiFestivalNPC_ItemId,0)
		
		if QixiFestivalNPC_nHaveNum> 0 and QixiFestivalNPC_nHaveNum~=nil then
			Sys_SaveActionFestivalLog(string.format(tQixiFestivalNPC_Log["HandUp"],nQixiFestivalNPC_ItemId,QixiFestivalNPC_nHaveNum))
			tQixiFestivalNPC_tReward["DeleteItem"][nNumber] = {}
			tQixiFestivalNPC_tReward["DeleteItem"][nNumber]["Id"] = nQixiFestivalNPC_ItemId
			tQixiFestivalNPC_tReward["DeleteItem"][nNumber]["ItemNum"] = QixiFestivalNPC_nHaveNum
			
			QixiFestivalNPC_nNum = QixiFestivalNPC_nNum + QixiFestivalNPC_nHaveNum*tQixiFestivalNPC_Exp[nQixiFestivalNPC_ItemId]
			nNumber = nNumber+1
		end
	end
	if QixiFestivalNPC_nNum == 0 then
		return
	end
	local nQixiFestivalNPC_Event = tQixiFestivalNPC_Stc["EventType"]
	local nQixiFestivalNPC_Hand = tQixiFestivalNPC_Stc["DataType"]["HandUp"]
	-- 隔日重置
	QixiFestivalNPC_Rest(nQixiFestivalNPC_Event,nQixiFestivalNPC_Hand)
	
	if nIndex==1 then
		Task_AddStatistic(nQixiFestivalNPC_Event,nQixiFestivalNPC_Hand,QixiFestivalNPC_nNum,1,nQixiFestivalNPC_nUserId)
		Task_SetStcTimestamp(nQixiFestivalNPC_Event,nQixiFestivalNPC_Hand,0,nQixiFestivalNPC_nUserId)
	end 
	
	if RewardTemplate_UseItemAndMsg(tQixiFestivalNPC_tReward) then
		--加鹊桥经验
		QixiFestivalNPC_AddExp(QixiFestivalNPC_nNum,nIndex)

	end
end

--超过5w对白
function QixiFestivalNPC_MaxText()
	local nQixiFestivalNPC_nNum = 0
	local sQixiFestivalNPC_sText = tQixiFestivalNPC_Text["String"]
	local bQixiFestivalNPC_sText = false
	
	for i =1,#tQixiFestivalNPC_DelItemId do 
		local nQixiFestivalNPC_nItemId = tQixiFestivalNPC_DelItemId[i]
		local nQixiFestivalNPC_HaveNum = Get_CountItemType(nQixiFestivalNPC_nItemId,0)
		local nQixiFestivalNPC_DelNum = tQixiFestivalNPC_DelItemNum[i]
		if nQixiFestivalNPC_HaveNum<nQixiFestivalNPC_DelNum then 
			return 
		end 
		if nQixiFestivalNPC_DelNum > 0 then
			--召唤总量（物品个数*单个数量）
			nQixiFestivalNPC_nNum = nQixiFestivalNPC_nNum + nQixiFestivalNPC_DelNum*tQixiFestivalNPC_Exp[nQixiFestivalNPC_nItemId]
			local sItemName = Get_ItemtypeName(nQixiFestivalNPC_nItemId)
			if bQixiFestivalNPC_sText then
				sQixiFestivalNPC_sText = string.format(sQixiFestivalNPC_sText,tQixiFestivalNPC_Text["Link"],tQixiFestivalNPC_Text["String"])
			end
			bQixiFestivalNPC_sText = true
			local QixiFestivalNPC_sItemStr = string.format(tQixiFestivalNPC_Text["ItemStr"],nQixiFestivalNPC_DelNum,sItemName)
			sQixiFestivalNPC_sText = string.format(sQixiFestivalNPC_sText,QixiFestivalNPC_sItemStr,tQixiFestivalNPC_Text["String"])
		end
	end 
	sQixiFestivalNPC_sText = string.format(sQixiFestivalNPC_sText,'','')
	return sQixiFestivalNPC_sText,nQixiFestivalNPC_nNum
end

--超过5w后上交
function QixiFestivalNPC_MaxHand()
	local tQixiFestivalNPC_tReward = CommonFunc_Copy(tQixiFestivalNPC_Del[1])
	local QixiFestivalNPC_nNum = 0
	local nNumber = 1
	for i= 1,#tQixiFestivalNPC_DelItemId do
		local nQixiFestivalNPC_ItemId = tQixiFestivalNPC_DelItemId[i]
		local nQixiFestivalNPC_nHaveNum = Get_CountItemType(nQixiFestivalNPC_ItemId,0)
		local nDelNum = tQixiFestivalNPC_DelItemNum[i]
		if nDelNum> 0 and nDelNum~=nil then
			if nQixiFestivalNPC_nHaveNum<nDelNum then 
				return 
			end 
			tQixiFestivalNPC_tReward["DeleteItem"][nNumber] = {}
			tQixiFestivalNPC_tReward["DeleteItem"][nNumber]["Id"] = nQixiFestivalNPC_ItemId
			tQixiFestivalNPC_tReward["DeleteItem"][nNumber]["ItemNum"] = nDelNum
			
			QixiFestivalNPC_nNum = QixiFestivalNPC_nNum + nDelNum*tQixiFestivalNPC_Exp[nQixiFestivalNPC_ItemId]
			nNumber = nNumber+1
		end
	end
	if QixiFestivalNPC_nNum == 0 then
		return
	end
	if RewardTemplate_UseItemAndMsg(tQixiFestivalNPC_tReward) then
		--加礼物召唤掩码
		local nQixiFestivalNPC_Event = tQixiFestivalNPC_Stc["EventType"]
		local nQixiFestivalNPC_Hand = tQixiFestivalNPC_Stc["DataType"]["HandUp"]
		-- 隔日重置
		QixiFestivalNPC_Rest(nQixiFestivalNPC_Event,nQixiFestivalNPC_Hand)
		Task_AddStatistic(nQixiFestivalNPC_Event,nQixiFestivalNPC_Hand,QixiFestivalNPC_nNum,1)
		Task_SetStcTimestamp(nQixiFestivalNPC_Event,nQixiFestivalNPC_Hand,0)
	
		--加鹊桥经验
		QixiFestivalNPC_AddExp(QixiFestivalNPC_nNum,1)
		local QixiFestivalNPC_nNpcId = Get_NpcId()
		Sys_MsgBox(string.format(tQixiFestivalNPC_Text["HandUp"][2],QixiFestivalNPC_nNum))
	end
	-- 播光效
	User_EffectAdd("self",tQixiFestivalNPC_Data["Effect"])
end 

--判断是否第一次点击NPC
function QixiFestivalNPC_ChkNPC(nIndex)
	if not Sys_ChkFullTime(tActivityTime["QixiFestivalNPC"]["ActivityTime"])then 
		return false
	end 
	if not User_JudgeLevelAndMetempsychosis(tQixiFestivalNPC_Data["Level"],tQixiFestivalNPC_Data["Metempsychosis"])then 
		return false
	end 
	local nQixiFestivalNPC_Event = tQixiFestivalNPC_Stc["EventType"]
	local nQixiFestivalNPC_Type = tQixiFestivalNPC_Stc["DataType"]["NPC"]
	local nQixiFestivalNPC_Data = Get_UserStatisticValue(nQixiFestivalNPC_Event,nQixiFestivalNPC_Type)
	if nQixiFestivalNPC_Data>nIndex then 
		return false
	else  
		Task_AddStatistic(nQixiFestivalNPC_Event,nQixiFestivalNPC_Type,1,1)
		Task_SetStcTimestamp(nQixiFestivalNPC_Event,nQixiFestivalNPC_Type,0)
		return true
	end 
end

--显示进度条
function QixiFestivalNPC_Schedule()

	local nUserId = Get_UserId()
	--取玩家数据
	local nLev,nAllNum,nAllExp = QixiFestivalNPC_GetUserDate(nUserId)
	local nIndex = math.floor((nAllNum/nAllExp)*10)
	if nIndex==0 then 
		nIndex = 1
	end 
	tNpcGossip[26809]["Text161"] = string.format(tQixiFestivalNPC_Text[26809]["Text161"],nLev)
	--取当前可进地图名称
	local sStarName = tQixiFestivalNPC_Text[nLev]
	if nLev>=4 then 
		sStarName = tQixiFestivalNPC_Text[4]
	end
	if nLev >=7 then 
		tNpcGossip[26809]["Text164"] = string.format(tQixiFestivalNPC_Text["Max"],sStarName)
	else 
		tNpcGossip[26809]["Text164"] = string.format(tQixiFestivalNPC_Text[26809]["Text164"],sStarName)
	end 

	if nLev<7 then 
		tNpcGossip[26809]["Text162"] = string.format(tQixiFestivalNPC_Text["Schedule"][nIndex],nAllNum,nAllExp)
		
	else 
		--满3w进度
		local nQixiFestivalNPC_Event = tQixiFestivalNPC_Stc["EventType"]
		local nQixiFestivalNPC_Type = tQixiFestivalNPC_Stc["DataType"]["Exp"]
		local nQixiFestivalNPC_Data = Get_UserStatisticValue(nQixiFestivalNPC_Event,nQixiFestivalNPC_Type)
		local nNeedExp = tQixiFestivalNPC_Data["Exp"] - nQixiFestivalNPC_Data
		local nEXP = math.floor((nNeedExp/tQixiFestivalNPC_Data["Exp"])*10)
		tNpcGossip[26809]["Text162"] = string.format(tQixiFestivalNPC_Text["Schedule"]["Max"],nAllNum)
	end 
end 

--给引导奖励
function QixiFestivalNPC_Guide()
	local nUserId = Get_UserId()
	local nQixiFestivalNPC_Event = tQixiFestivalNPC_Stc["EventType"]
	local nSpace = RewardTemplate_GetRewardSpace(tQixiFestivalNPC_Reward["Guide"])
	local nKillType	= tQixiFestivalNPC_Stc["DataType"]["Kill"]
	local nQixiFestivalNPC_Data = Get_UserStatisticValue(nQixiFestivalNPC_Event,nKillType)
	if not User_CheckLeftSpace(nSpace) then
		if nQixiFestivalNPC_Data==3 then 
			local sText = string.format(tQixiFestivalNPC_Text["NoSpace"],nSpace)
			Sys_MsgBox(sText)
		end 
		return
	end
	local nQixiFestivalNPC_Type = tQixiFestivalNPC_Stc["DataType"]["Guide"]
	--引导任务完成
	Task_SetStatistic(nQixiFestivalNPC_Event,nQixiFestivalNPC_Type,1,1)
	Task_SetStcTimestamp(nQixiFestivalNPC_Event,nQixiFestivalNPC_Type,0)
	RewardTemplate_UseItemAndMsg(tQixiFestivalNPC_Reward["Guide"])
	Sys_MsgBox(tQixiFestivalNPC_Text["Guide"],"QixiFestivalNPC_BackCity","QixiFestivalNPC_BackCity",nUserId)
end 

--回双龙城
function QixiFestivalNPC_BackCity()
	local nUserId = Get_UserId()
	local nMapId = tQixiFestivalNPC_Map[1]["MapId"]
	local nCellX =tQixiFestivalNPC_Map[1]["PosX"]
	local nCellY =tQixiFestivalNPC_Map[1]["PosY"]
	if SpecialServer_ChkNoGiftServer() then	
		nMapId = tQixiFestivalNPC_Map[2]["MapId"]
		nCellX =tQixiFestivalNPC_Map[2]["PosX"]
		nCellY =tQixiFestivalNPC_Map[2]["PosY"]
	end
	User_UserRandBoundTrans(nMapId,nCellX,nCellY,5,5,1,nUserId)
	LinkNpcGossipFunc_New(26809,"1-8")
end 

--背包里是否有对应等级灵珠
function QixiFestivalNPC_ChkBall(nIndex)
	local nQixiFestivalNPC_nItemId = tQixiFestivalNPC_Item[3][nIndex]
	local nQixiFestivalNPC_nItemNum = Get_CountItemType(nQixiFestivalNPC_nItemId,0)
	if nQixiFestivalNPC_nItemNum>0 then 
		return true 
	end 
	return false  
end

--二次确认对白
function QixiFestivalNPC_AffirmBall(nNpcId,nIndex)
	local nQixiFestivalNPC_nItemId = tQixiFestivalNPC_Item[3][nIndex]
	local nQixiFestivalNPC_nItemNum = Get_CountItemType(nQixiFestivalNPC_nItemId,0)
	local sItemName = Get_ItemtypeName(nQixiFestivalNPC_nItemId)
	tNpcGossip[26809]["Text621"] = string.format(tQixiFestivalNPC_Text[26809]["Text621"],sItemName)
	if nQixiFestivalNPC_nItemNum>=0 then 
		LinkNpcGossipFunc_New(nNpcId,"6-3")
	end 
	local nUserId = Get_UserId()
	--取玩家数据
	local nLev,nAllNum,nAllExp = QixiFestivalNPC_GetUserDate(nUserId)
	if nLev<7 then 
		--下段奖励进度
		local nNeedExp = nAllExp - nAllNum
		tNpcGossip[26809]["Text622"] = string.format(tQixiFestivalNPC_Text[26809]["Text622"],nAllNum,nNeedExp,tQixiFestivalNPC_Text["Reward"][nLev])
	else 
		--满3w进度
		local nQixiFestivalNPC_Event = tQixiFestivalNPC_Stc["EventType"]
		local nQixiFestivalNPC_Type = tQixiFestivalNPC_Stc["DataType"]["Exp"]
		local nQixiFestivalNPC_Data = Get_UserStatisticValue(nQixiFestivalNPC_Event,nQixiFestivalNPC_Type)
		local nNeedExp = tQixiFestivalNPC_Data["Exp"] - nQixiFestivalNPC_Data
		tNpcGossip[26809]["Text622"] = string.format(tQixiFestivalNPC_Text[26809]["Text622"],nAllNum,nNeedExp,tQixiFestivalNPC_Text["Reward"]["Max"])
	end 
	
	tNpcGossip[26809]["OptionFunc621"] = "QixiFestivalNPC_HandUp</N>26809</N>"..nQixiFestivalNPC_nItemId.."</N>1</S>6-3"
	tNpcGossip[26809]["OptionFunc622"] = "QixiFestivalNPC_HandUp</N>26809</N>"..nQixiFestivalNPC_nItemId.."</N>0</S>6-3"
	LinkNpcGossipFunc_New(nNpcId,"6-2")
end

--碎片换气力值
function QixiFestivalNPC_Chi(nItemId,nIndex)
	if not Sys_ChkFullTime(tActivityTime["QixiFestivalNPC"]["ActivityTime"]) then
		return 
	end 
	local tReward = CommonFunc_Copy(tQixiFestivalNPC_Reward["Chi"])
	--全部
	if nIndex==0 then 
			local nItemNum = Get_CountItemType(nItemId,0)
			--给奖励
			if Item_ChkMulItem(nItemId,nItemId,nItemNum)then
				local nValue = tReward["RewardStrengthValue"]["Value"]*nItemNum
				--修改奖励气力值及删除物品数量
				tReward["DeleteItem"][1]["Id"] = nItemId
				tReward["DeleteItem"][1]["ItemNum"] = nItemNum
				tReward["RewardStrengthValue"]["Value"] = nValue
				RewardTemplate_UseItemAndMsg(tReward)
			end 
	else 
		RewardTemplate_UseItemAndMsg(tQixiFestivalNPC_Reward["Chi"])
	end 

end 

--传送限制
function QixiFestivalNPC_Map()
	local nUserId = Get_UserId()
	local nUserMapId = Get_UserMapId()
	--激情服
	if SpecialServer_ChkNoGiftServer() then	
		if nUserMapId~=tQixiFestivalNPC_Map[2]["MapId"] then
			return 
		end 
	else 
		if nUserMapId~=tQixiFestivalNPC_Map[1]["MapId"] then
			return 
		end
	end 
	QiXiQuintupleMonster2020_GoMap()
end
----------------------------------NPC部分---------------------------------------------
tNpcFace[5056] = 15
tNpcGossip[26809] = tNpcGossip[26809] or DefaultNpc:new{}
tNpcGossip[26809]["OptionHidden"] = 1
tNpcGossip[26809]["DialogueText"] = tQixiFestivalNPC_Text[26809]
-- 活动前
tNpcGossip[26809]["Text1-1"] = {111,112,113,114,115,116,117,118}
tNpcGossip[26809]["tOption1-1"] = {111}
tNpcGossip[26809]["ChkFunc1-1"] = function ()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["QixiFestivalNPC"]["ActivityTime"])
end

-- 活动后
tNpcGossip[26809]["Text1-2"] = {111,121}
tNpcGossip[26809]["tOption1-2"] = {121,122}
tNpcGossip[26809]["ChkFunc1-2"] = function ()
	return not Sys_ChkFullTime(tActivityTime["QixiFestivalNPC"]["ActivityTime"])
end
--查看排行榜
tNpcGossip[26809]["OptionPoint121"] = "5-1"
--积分转换
tNpcGossip[26809]["OptionFunc122"] = "QixiFestivalNPC_WebOpenH5_TimeOut"

--活动中等级不足
tNpcGossip[26809]["Text1-3"] = {111,131,132,133,134,135,136,137,138}
tNpcGossip[26809]["tOption1-3"] = {131}
tNpcGossip[26809]["ChkFunc1-3"] = function ()
	return Sys_ChkFullTime(tActivityTime["QixiFestivalNPC"]["ActivityTime"]) and (not User_JudgeLevelAndMetempsychosis(tQixiFestivalNPC_Data["Level"],tQixiFestivalNPC_Data["Metempsychosis"]))
end


--活动中未过剧情
tNpcGossip[26809]["Text1-4"] = {111,141,142,143,144,145}
tNpcGossip[26809]["tOption1-4"] = {141}
tNpcGossip[26809]["ChkFunc1-4"] = function ()
	if not Sys_ChkFullTime(tActivityTime["QixiFestivalNPC"]["ActivityTime"])then 
		return false
	end 
	if not User_JudgeLevelAndMetempsychosis(tQixiFestivalNPC_Data["Level"],tQixiFestivalNPC_Data["Metempsychosis"])then 
		return false
	end 
	ValentinesDaySurprise_TaskComplete()
	local nQixiFestivalNPC_Event = tQixiFestivalNPC_Stc["EventType"]
	local nQixiFestivalNPC_Type = tQixiFestivalNPC_Stc["DataType"]["Plot"]
	local nQixiFestivalNPC_Data = Get_UserStatisticValue(nQixiFestivalNPC_Event,nQixiFestivalNPC_Type)
	if nQixiFestivalNPC_Data>0 then 
		return false
	else  
		return Sys_ChkFullTime(tActivityTime["QixiFestivalNPC"]["ActivityTime"]) and (User_JudgeLevelAndMetempsychosis(tQixiFestivalNPC_Data["Level"],tQixiFestivalNPC_Data["Metempsychosis"]))
	end 
end
--进入剧情
tNpcGossip[26809]["OptionFunc141"] = "QixiFestivalNPC_Plot"

--活动中第一次点NPC
tNpcGossip[26809]["Text1-5"] = {111,151,152}
tNpcGossip[26809]["tOption1-5"] = {151}
tNpcGossip[26809]["ChkFunc1-5"] = function ()
	if not QixiFestivalNPC_ChkNPC(0)then
		return false  
	end 
	return Sys_ChkFullTime(tActivityTime["QixiFestivalNPC"]["ActivityTime"]) and (User_JudgeLevelAndMetempsychosis(tQixiFestivalNPC_Data["Level"],tQixiFestivalNPC_Data["Metempsychosis"]))
end
tNpcGossip[26809]["OptionPoint151"] = "1-7"

--首次点击进地图
tNpcGossip[26809]["Text1-7"] = {111,171}
tNpcGossip[26809]["tOption1-7"] = {171}
tNpcGossip[26809]["ChkFunc1-7"] = function ()
	if not QixiFestivalNPC_ChkNPC(1)then
		return false  
	end 
	return Sys_ChkFullTime(tActivityTime["QixiFestivalNPC"]["ActivityTime"]) and (User_JudgeLevelAndMetempsychosis(tQixiFestivalNPC_Data["Level"],tQixiFestivalNPC_Data["Metempsychosis"]))
end
tNpcGossip[26809]["OptionFunc171"] = "QixiFestivalNPC_Map"

--活动主对白
tNpcGossip[26809]["Text1-6"] = {111,161,162,163,164,1610,165,166,169,167,168}
tNpcGossip[26809]["tOption1-6"] = {161,162,163}
tNpcGossip[26809]["ChkFunc1-6"] = function ()
	tNpcGossip[26809]["Text1-6"] = {111,161,162,163,164,1610,165,166,169,167,168}
	local nUserId = Get_UserId()
	local nLev,nAllNum,nAllExp = QixiFestivalNPC_GetUserDate(nUserId)
	if nLev>=4 then 
		tNpcGossip[26809]["Text1-6"] = {111,161,162,163,164,165,166,169,167,168}
	end 
	QixiFestivalNPC_Schedule()
	if QixiFestivalNPC_CanReward() then 
		tNpcGossip[26809]["Option162"] = tQixiFestivalNPC_Text["CanReward"]
	else  
		tNpcGossip[26809]["Option162"] = tQixiFestivalNPC_Text[26809]["Option162"]
	end 
	return Sys_ChkFullTime(tActivityTime["QixiFestivalNPC"]["ActivityTime"]) and (User_JudgeLevelAndMetempsychosis(tQixiFestivalNPC_Data["Level"],tQixiFestivalNPC_Data["Metempsychosis"]))
end

--递交揽鹊笛
tNpcGossip[26809]["OptionPoint161"] = "2-4"
--领取鹊桥阶段奖励
tNpcGossip[26809]["OptionPoint162"] = "4-1"
--查看全球鹊桥榜
tNpcGossip[26809]["OptionPoint163"] = "5-1"

--提交指引
tNpcGossip[26809]["Text1-8"] = {111,181,182,183,184,185,186}
tNpcGossip[26809]["tOption1-8"] = {181}
tNpcGossip[26809]["ChkFunc1-8"] = function ()
	local nUserId = Get_UserId()
	--取玩家数据
	local nLev,nAllNum,nAllExp = QixiFestivalNPC_GetUserDate(nUserId)
	local nIndex = math.floor((nAllNum/nAllExp)*10)
	if nIndex==0 then 
		nIndex = 1
	end 
	local nLevText= 4
	
	if nLev<7 then 
		if nLev <4 then 
			nLevText = nLev
			--等级进度
			tNpcGossip[26809]["Text181"] = string.format(tQixiFestivalNPC_Text[26809]["Text181"],nLevText)
			tNpcGossip[26809]["Text182"] = string.format(tQixiFestivalNPC_Text["Schedule"][nIndex],nAllNum,nAllExp)
			
			return true
		end 
		--下段奖励进度
		local nNeedExp = nAllExp - nAllNum
		tNpcGossip[26809]["Text182"] = string.format(tQixiFestivalNPC_Text["MaxLev"],nNeedExp)
	else 
		--满3w进度
		local nQixiFestivalNPC_Event = tQixiFestivalNPC_Stc["EventType"]
		local nQixiFestivalNPC_Type = tQixiFestivalNPC_Stc["DataType"]["Exp"]
		local nQixiFestivalNPC_Data = Get_UserStatisticValue(nQixiFestivalNPC_Event,nQixiFestivalNPC_Type)
		local nNeedExp = tQixiFestivalNPC_Data["Exp"] - nQixiFestivalNPC_Data
		tNpcGossip[26809]["Text182"] = string.format(tQixiFestivalNPC_Text["MaxLev"],nNeedExp)
	end 
	tNpcGossip[26809]["Text181"] = string.format(tQixiFestivalNPC_Text["Schedule"][nIndex],nAllNum,nAllExp)
	return Sys_ChkFullTime(tActivityTime["QixiFestivalNPC"]["ActivityTime"]) and (User_JudgeLevelAndMetempsychosis(tQixiFestivalNPC_Data["Level"],tQixiFestivalNPC_Data["Metempsychosis"]))
end 
tNpcGossip[26809]["OptionFunc181"] = "QixiFestivalNPC_HandUp</N>26809</N>3316530</N>0</S>2-2"

--选择提交道具
tNpcGossip[26809]["Text2-4"] = {111,161,162,163,241,242,243,244}
tNpcGossip[26809]["ChkFunc2-4"] = function ()
	QixiFestivalNPC_Schedule()
return Sys_ChkFullTime(tActivityTime["QixiFestivalNPC"]["ActivityTime"]) and (User_JudgeLevelAndMetempsychosis(tQixiFestivalNPC_Data["Level"],tQixiFestivalNPC_Data["Metempsychosis"]))
end 

tNpcGossip[26809]["tOption2-4"] = {241,242,243}
--递交揽鹊笛
tNpcGossip[26809]["OptionPoint241"] = "2-1"
--鲜花道具
tNpcGossip[26809]["OptionPoint242"] = "3-1"
--灵珠
tNpcGossip[26809]["OptionPoint243"] = "6-1"

--递交揽鹊笛
tNpcGossip[26809]["Text2-1"] = {111,211,212}
tNpcGossip[26809]["tOption2-1"] = {211,212,213}
tNpcGossip[26809]["ChkFunc2-1"] = function ()
	local nUserId = Get_UserId()
	local nItemNum = Get_CountItemType(tQixiFestivalNPC_Data["ItemId"],0)
	if nItemNum<=0 then 
		LinkNpcGossipFunc_New(26809,"2-2")
		return false 
	end 
	--取玩家数据
	local nLev,nAllNum,nAllExp = QixiFestivalNPC_GetUserDate(nUserId)
	if nLev<7 then 
		--下段奖励进度 
		local nNeedExp = nAllExp - nAllNum
		tNpcGossip[26809]["Text212"] = string.format(tQixiFestivalNPC_Text[26809]["Text212"],nAllNum,nNeedExp,tQixiFestivalNPC_Text["Reward"][nLev])
	else 
		--满3w进度
		local nQixiFestivalNPC_Event = tQixiFestivalNPC_Stc["EventType"]
		local nQixiFestivalNPC_Type = tQixiFestivalNPC_Stc["DataType"]["Exp"]
		local nQixiFestivalNPC_Data = Get_UserStatisticValue(nQixiFestivalNPC_Event,nQixiFestivalNPC_Type)
		local nNeedExp = tQixiFestivalNPC_Data["Exp"] - nQixiFestivalNPC_Data
		tNpcGossip[26809]["Text212"] = string.format(tQixiFestivalNPC_Text[26809]["Text212"],nAllNum,nNeedExp,tQixiFestivalNPC_Text["Reward"]["Max"])
	end 
	
	return Sys_ChkFullTime(tActivityTime["QixiFestivalNPC"]["ActivityTime"]) and (User_JudgeLevelAndMetempsychosis(tQixiFestivalNPC_Data["Level"],tQixiFestivalNPC_Data["Metempsychosis"]))
end
--1支
tNpcGossip[26809]["OptionFunc211"] = "QixiFestivalNPC_HandUp</N>26809</N>3316530</N>1</S>2-2"
--10支
tNpcGossip[26809]["OptionFunc212"] = "QixiFestivalNPC_HandUp</N>26809</N>3316530</N>10</S>2-2"
--全部
tNpcGossip[26809]["OptionPoint213"] = "2-3"


--递交揽鹊笛
tNpcGossip[26809]["Text2-2"] = {111,221,222,223,224,225}
tNpcGossip[26809]["tOption2-2"] = {221,222}
tNpcGossip[26809]["OptionFunc221"] = "QiXiQuintupleMonster2020_GoMap"
--全部提交二次确认
tNpcGossip[26809]["Text2-3"] = {111,231,232}
tNpcGossip[26809]["tOption2-3"] = {231,232}
tNpcGossip[26809]["ChkFunc2-3"] = function ()
	local nItemNum = Get_CountItemType(3316530,0)
	local nExp = nItemNum*100
	if nExp<=0 then 
		LinkNpcGossipFunc_New(26809,"2-2")
		return 
	end 
	tNpcGossip[26809]["Text231"] = string.format(tQixiFestivalNPC_Text[26809]["Text231"],nItemNum,nExp)
	return Sys_ChkFullTime(tActivityTime["QixiFestivalNPC"]["ActivityTime"]) and (User_JudgeLevelAndMetempsychosis(tQixiFestivalNPC_Data["Level"],tQixiFestivalNPC_Data["Metempsychosis"]))
end
--全部提交
tNpcGossip[26809]["OptionFunc231"] = "QixiFestivalNPC_HandUp</N>26809</N>3316530</N>0</S>2-2"


--上交鲜花道具
tNpcGossip[26809]["Text3-1"] = {311,312,313,314,315,316,317,318,319,3110,3111,3112,3113}
tNpcGossip[26809]["tOption3-1"] = {311,312}
tNpcGossip[26809]["ChkFunc3-1"] = function()
	local nQixiFestivalNPC_Event = tQixiFestivalNPC_Stc["EventType"]
	local nQixiFestivalNPC_Hand = tQixiFestivalNPC_Stc["DataType"]["HandUp"]
	local nQixiFestivalNPC_Data = Get_UserStatisticValue(nQixiFestivalNPC_Event,nQixiFestivalNPC_Hand)
	tNpcGossip[26809]["Text3113"] = string.format(tQixiFestivalNPC_Text[26809]["Text3113"],nQixiFestivalNPC_Data)
	return Sys_ChkFullTime(tActivityTime["QixiFestivalNPC"]["ActivityTime"]) and (User_JudgeLevelAndMetempsychosis(tQixiFestivalNPC_Data["Level"],tQixiFestivalNPC_Data["Metempsychosis"]))
end
--上交道具
tNpcGossip[26809]["OptionFunc311"] = "QixiFestivalNPC_GiftHandUp</N>26809</N>1"
tNpcGossip[26809]["OptionChkFunc311"] = function ()
	if QixiFestivalNPC_HandNum() then
		return true
	else 
		return false
	end 
end
--上交兑换券
tNpcGossip[26809]["OptionFunc312"] = "QixiFestivalNPC_GiftHandUp</N>26809</N>2"

-- 【背包中没有鲜花礼物】
tNpcGossip[26809]["Text3-2"] = {111,321,322}
tNpcGossip[26809]["tOption3-2"] = {321}
tNpcGossip[26809]["OptionPoint321"] = "3-1"


-- 【背包中有鲜花礼物】
tNpcGossip[26809]["Text3-3"] = {111,331,332}
tNpcGossip[26809]["tOption3-3"] = {331,332}
tNpcGossip[26809]["ChkFunc3-3"] = function()

	local nQixiFestivalNPC_Event = tQixiFestivalNPC_Stc["EventType"]
	local nQixiFestivalNPC_Hand = tQixiFestivalNPC_Stc["DataType"]["HandUp"]
	local nQixiFestivalNPC_Data = Get_UserStatisticValue(nQixiFestivalNPC_Event,nQixiFestivalNPC_Hand)
	local nQixiFestivalNPC_nNum = QixiFestivalNPC_GetNum(1)
	if nQixiFestivalNPC_nNum + nQixiFestivalNPC_Data > tQixiFestivalNPC_Data["HandUp"] then
		--提交后超过5w
		LinkNpcGossipFunc_New(26809,"3-4")
		return
	else
		--提交后不超过5w
		tNpcGossip[26809]["Text331"] = string.format(tQixiFestivalNPC_Text[26809]["Text331"],QixiFestivalNPC_GetDelItemStr(1))
		tNpcGossip[26809]["Text332"] = string.format(tQixiFestivalNPC_Text[26809]["Text332"],QixiFestivalNPC_GetNum(1))
	end
	return true
end
tNpcGossip[26809]["OptionFunc331"] = "QixiFestivalNPC_ConfirmExchange</N>1"


--提交后超过5w
tNpcGossip[26809]["Text3-4"] = {111,341,342}
tNpcGossip[26809]["tOption3-4"] = {341,342}
tNpcGossip[26809]["ChkFunc3-4"] = function()
	if not QixiFestivalNPC_Remain() then 
		return false
	end 
	local sMsg,nNum = QixiFestivalNPC_MaxText()
	tNpcGossip[26809]["Text341"] = string.format(tQixiFestivalNPC_Text[26809]["Text341"],nNum)
	tNpcGossip[26809]["Text342"] = string.format(tQixiFestivalNPC_Text[26809]["Text342"],sMsg)
	return true
end 
tNpcGossip[26809]["OptionFunc341"] = "QixiFestivalNPC_MaxHand"


--上交兑换券
tNpcGossip[26809]["Text3-5"] = {111,351,352}
tNpcGossip[26809]["tOption3-5"] = {351,352}
tNpcGossip[26809]["ChkFunc3-5"] = function()
	local sText = QixiFestivalNPC_GetDelItemStr(2)
	tNpcGossip[26809]["Text351"] = string.format(tQixiFestivalNPC_Text[26809]["Text351"],tostring(sText))
	tNpcGossip[26809]["Text352"] = string.format(tQixiFestivalNPC_Text[26809]["Text352"],QixiFestivalNPC_GetNum(2))
	return true
end
tNpcGossip[26809]["OptionFunc351"] = "QixiFestivalNPC_ConfirmExchange</N>2"


--上交灵珠
tNpcGossip[26809]["Text6-1"] = {111,611,612}
tNpcGossip[26809]["tOption6-1"] = {611,612,613,614,615,616,617,618,619,6110,6111}
tNpcGossip[26809]["ChkFunc6-1"] = function()
	for i=1,#tQixiFestivalNPC_Item[3] do 
		local nQixiFestivalNPC_nItemId = tQixiFestivalNPC_Item[3][i]
		local nQixiFestivalNPC_nItemNum = Get_CountItemType(nQixiFestivalNPC_nItemId,0)
		if nQixiFestivalNPC_nItemNum>0 then 
			return true 
		end 
	end 
	LinkNpcGossipFunc_New(26809,"6-3")
	return false 
end

tNpcGossip[26809]["OptionFunc611"] = "QixiFestivalNPC_AffirmBall</N>26809</N>1"
tNpcGossip[26809]["OptionChkFunc611"] = function ()
	if QixiFestivalNPC_ChkBall(1) then
		return true
	end 
	return false
end
tNpcGossip[26809]["OptionFunc612"] = "QixiFestivalNPC_AffirmBall</N>26809</N>2"
tNpcGossip[26809]["OptionChkFunc612"] = function ()
	if QixiFestivalNPC_ChkBall(2) then
		return true
	end 
	return false
end
tNpcGossip[26809]["OptionFunc613"] = "QixiFestivalNPC_AffirmBall</N>26809</N>3"
tNpcGossip[26809]["OptionChkFunc613"] = function ()
	if QixiFestivalNPC_ChkBall(3) then
		return true
	end 
	return false
end
tNpcGossip[26809]["OptionFunc614"] = "QixiFestivalNPC_AffirmBall</N>26809</N>4"
tNpcGossip[26809]["OptionChkFunc614"] = function ()
	if QixiFestivalNPC_ChkBall(4) then
		return true
	end 
	return false
end
tNpcGossip[26809]["OptionFunc615"] = "QixiFestivalNPC_AffirmBall</N>26809</N>5"
tNpcGossip[26809]["OptionChkFunc615"] = function ()
	if QixiFestivalNPC_ChkBall(5) then
		return true
	end 
	return false
end
tNpcGossip[26809]["OptionFunc616"] = "QixiFestivalNPC_AffirmBall</N>26809</N>6"
tNpcGossip[26809]["OptionChkFunc616"] = function ()
	if QixiFestivalNPC_ChkBall(6) then
		return true
	end 
	return false
end
tNpcGossip[26809]["OptionFunc617"] = "QixiFestivalNPC_AffirmBall</N>26809</N>7"
tNpcGossip[26809]["OptionChkFunc617"] = function ()
	if QixiFestivalNPC_ChkBall(7) then
		return true
	end 
	return false
end
tNpcGossip[26809]["OptionFunc618"] = "QixiFestivalNPC_AffirmBall</N>26809</N>8"
tNpcGossip[26809]["OptionChkFunc618"] = function ()
	if QixiFestivalNPC_ChkBall(8) then
		return true
	end 
	return false
end
tNpcGossip[26809]["OptionFunc619"] = "QixiFestivalNPC_AffirmBall</N>26809</N>9"
tNpcGossip[26809]["OptionChkFunc619"] = function ()
	if QixiFestivalNPC_ChkBall(9) then
		return true
	end 
	return false
end
tNpcGossip[26809]["OptionFunc6110"] = "QixiFestivalNPC_AffirmBall</N>26809</N>10"
tNpcGossip[26809]["OptionChkFunc6110"] = function ()
	if QixiFestivalNPC_ChkBall(10) then
		return true
	end 
	return false
end
tNpcGossip[26809]["OptionFunc6111"] = "QixiFestivalNPC_AffirmBall</N>26809</N>11"
tNpcGossip[26809]["OptionChkFunc6111"] = function ()
	if QixiFestivalNPC_ChkBall(11) then
		return true
	end 
	return false
end

--上交灵珠
tNpcGossip[26809]["Text6-2"] = {111,621,622}
tNpcGossip[26809]["tOption6-2"] = {621,622}
tNpcGossip[26809]["ChkFunc6-2"] = function ()
	return Sys_ChkFullTime(tActivityTime["QixiFestivalNPC"]["ActivityTime"]) and (User_JudgeLevelAndMetempsychosis(tQixiFestivalNPC_Data["Level"],tQixiFestivalNPC_Data["Metempsychosis"]))
end 
-- tNpcGossip[26809]["OptionFunc621"] = "QixiFestivalNPC_HandUp</N>26809</N>3316530</N>1</S>6-3"
-- tNpcGossip[26809]["OptionFunc622"] = "QixiFestivalNPC_HandUp</N>26809</N>3316530</N>0</S>6-3"

tNpcGossip[26809]["Text6-3"] = {111,631}
tNpcGossip[26809]["tOption6-3"] = {631}

--领取鹊桥阶段奖励
tNpcGossip[26809]["Text4-1"] = {411,412,413,414,415,416,417,418,419,4110,4111,4112,4113}
tNpcGossip[26809]["tOption4-1"] = {411,412}
tNpcGossip[26809]["OptionFunc411"] = "QixiFestivalNPC_GetReward</N>26809"
tNpcGossip[26809]["ChkFunc4-1"] = function ()
	local nUserId = Get_UserId()
	local nLev,nAllNum,nAllExp = QixiFestivalNPC_GetUserDate(nUserId)
	tNpcGossip[26809]["Text4113"] = string.format(tQixiFestivalNPC_Text[26809]["Text4113"],nAllNum)
	for i = 1,7 do
		tNpcGossip[26809]["Text41"..(i+3)] = tQixiFestivalNPC_Text[26809]["Text41"..(i+3)]
		--激情服和绿色服改固化石奖励为星陨石
		if QixiFestivalNPC_ChkServer() then 
			tNpcGossip[26809]["Text418"] = tQixiFestivalNPC_Text[26809]["JQF1"]
		end 
	end 
	tNpcGossip[26809]["Text411"] = tQixiFestivalNPC_Text[26809]["Text411"]
	local nQixiFestivalNPC_Event = tQixiFestivalNPC_Stc["EventType"]
	--是否领奖
	for i = 1,7 do
		local nQixiFestivalNPC_Reward = tQixiFestivalNPC_Stc["Reward"][i]
		if Task_ChkStcValue(nQixiFestivalNPC_Event,nQixiFestivalNPC_Reward,">",0,nUserId) then
			tNpcGossip[26809]["Text41"..(i+3)] = tQixiFestivalNPC_Text[26809]["Text42"..(i+3)]
			--激情服和绿色服改固化石奖励为星陨石
			if QixiFestivalNPC_ChkServer() then 
				tNpcGossip[26809]["Text418"] = tQixiFestivalNPC_Text[26809]["JQF2"]
			end 
		end
	end

	if QixiFestivalNPC_CanReward() then 
		tNpcGossip[26809]["Option411"] = tQixiFestivalNPC_Text["Can"]
	else  
		tNpcGossip[26809]["Option411"] = tQixiFestivalNPC_Text[26809]["Option411"]
	end 
	return Sys_ChkFullTime(tActivityTime["QixiFestivalNPC"]["ActivityTime"]) and (User_JudgeLevelAndMetempsychosis(tQixiFestivalNPC_Data["Level"],tQixiFestivalNPC_Data["Metempsychosis"]))
end

--查看全球鹊桥榜
tNpcGossip[26809]["Text5-1"] = {511,512,513,5141,5142,5143,5144,5145,5146,5147,5148,5149,51410,515,516,517}
tNpcGossip[26809]["tOption5-1"] = {511,512}
tNpcGossip[26809]["ChkFunc5-1"] = function ()
	tNpcGossip[26809]["Text5-1"] = {511,512,513,5141,5142,5143,5144,5145,5146,5147,5148,5149,51410,515,516}
	local tQixiFestivalNPC_RankingList = RankingFunc_GetNowData(26809) -- 获取排行榜数据
	if tQixiFestivalNPC_RankingList == nil or #tQixiFestivalNPC_RankingList == 0 then
		tNpcGossip[26809]["Text5-1"] = {511,512,513,517,515,516}
		local nNowUserId = Get_UserId()
		local nLev,nAllNum,nAllExp = QixiFestivalNPC_GetUserDate(nNowUserId)
		tNpcGossip[26809]["Text516"] = string.format(tQixiFestivalNPC_Text[26809]["Text516"],nLev,nAllNum)
	else 
		QixiFestivalNPC_LookRanking(26809)
	end 
	return Sys_ChkFullTime(tActivityTime["QixiFestivalNPC"]["NPCTime"]) and (User_JudgeLevelAndMetempsychosis(tQixiFestivalNPC_Data["Level"],tQixiFestivalNPC_Data["Metempsychosis"]))
end
tNpcGossip[26809]["OptionFunc511"] = "QixiFestivalNPC_WebOpenH5"
tNpcGossip[26809]["OptionPoint512"] = "5-2"

--查看奖励
tNpcGossip[26809]["Text5-2"] = {521,522,523,524,525,526,527,528,529}
tNpcGossip[26809]["tOption5-2"] = {521}

---------------------------------物品部分---------------------------------------------
--------物品无对白模板
--揽鹊笛
tItem[3316530] = tItem[3316530] or {}
tItem[3316530]["Function"] = function(nItemId)
	if QixiFestivalNPC_OutTime(nItemId)then
		return
	else
		NpcPosition_PathFind(26809)
		LinkNpcGossipFunc_New(26809,"2-1")
	end
end

--排行榜礼包
tItem[3316522] = tItem[3316522] or {}
tItem[3316522]["Function"] = function(nItemId)
	if tQixiFestivalNPC_Reward[nItemId]["RewardTitle"]~=nil then 
		local tReward = CommonFunc_Copy(tQixiFestivalNPC_Reward[nItemId])
		local nUserId = Get_UserId()
		local nSex = Get_UserSex(nUserId)
		tReward["RewardTitle"]["TitleType"] = tQixiFestivalNPC_Data[nItemId]["TitleType"][nSex]
		tReward["RewardTitle"]["TitleId"] = tQixiFestivalNPC_Data[nItemId]["TitleId"][nSex]
		RewardTemplate_UseItemAndMsg(tReward)
	else  
		RewardTemplate_UseItemAndMsg(tQixiFestivalNPC_Reward[nItemId])
	end 
end
tItem[3316523] = tItem[3316522] or {}
tItem[3316524] = tItem[3316522] or {}
tItem[3316525] = tItem[3316522] or {}
tItem[3316527] = tItem[3316522] or {}
tItem[3316528] = tItem[3316522] or {}
tItem[3316529] = tItem[3316522] or {}

--全球第一，根据性别给不同光环道具
tItem[3316526] = tItem[3316526] or {}
tItem[3316526]["Function"] = function(nItemId)
	local tReward = CommonFunc_Copy(tQixiFestivalNPC_Reward[nItemId])
	local nUserId = Get_UserId()
	local nSex = Get_UserSex(nUserId)
	tReward["RewardItem"][1]["Id"] = tQixiFestivalNPC_Data["RoleStatus"][nSex]
	tReward["RewardTitle"]["TitleType"] = tQixiFestivalNPC_Data[nItemId]["TitleType"][nSex]
	tReward["RewardTitle"]["TitleId"] = tQixiFestivalNPC_Data[nItemId]["TitleId"][nSex]
	RewardTemplate_UseItemAndMsg(tReward)
end

--光环道具
tItemFace[3316532] = 2999
tItem[3316532] = tItem[3316532] or {}
tItem[3316532]["DialogueText"] = tQixiFestivalNPC_Text[3316532]
tItem[3316532]["Text1-1"] = {111}
tItem[3316532]["tOption1-1"] = {111,112}
tItem[3316532]["OptionFunc111"] = "QixiFestivalNPC_AddRole</N>3316532"
tItem[3316532]["OptionFunc112"] = "QixiFestivalNPC_DropEffect</N>3316532"

tItemFace[3316533] = 3000
tItem[3316533] = tItem[3316533] or {}
tItem[3316533]["DialogueText"] = tQixiFestivalNPC_Text[3316533]
tItem[3316533]["Text1-1"] = {111}
tItem[3316533]["tOption1-1"] = {111,112}
tItem[3316533]["OptionFunc111"] = "QixiFestivalNPC_AddRole</N>3316533"
tItem[3316533]["OptionFunc112"] = "QixiFestivalNPC_DropEffect</N>3316533"

--外套碎片
tItemFace[3316531] = 2998
tItem[3316531] = tItem[3316531] or {}
tItem[3316531]["DialogueText"] = tQixiFestivalNPC_Text[3316531]
tItem[3316531]["Function"] = function(nItemId)
	LinkItemGossipFunc_New(nItemId,"1-1")
end

tItem[3316531]["Text1-1"] = {111}
tItem[3316531]["tOption1-1"] = {1,2,3,4}
tItem[3316531]["OptionFunc1"]="QixiFestivalNPC_Compose</N>3316531</N>35"
tItem[3316531]["OptionFunc2"]="QixiFestivalNPC_ChgCoat</N>196275</N>3316531</N>5"
tItem[3316531]["OptionFunc3"]="QixiFestivalNPC_UseOneItem</N>3316531"
tItem[3316531]["OptionPoint4"]="2-1"
tItem[3316531]["OptionChkFunc4"] = function ()
	if not Sys_ChkFullTime(tActivityTime["QixiFestivalNPC"]["ActivityTime"]) then
		return true
	end 
	return false
end
tItem[3316531]["Text2-1"] = {211}
tItem[3316531]["tOption2-1"] = {211,212}
tItem[3316531]["OptionFunc211"] = "QixiFestivalNPC_Chi</N>3316531</N>1"
tItem[3316531]["OptionFunc212"] = "QixiFestivalNPC_Chi</N>3316531</N>0"
--发型道具
tItemFace[3316660] = 3001
tItem[3316660] = tItem[3316660] or {}
tItem[3316660]["Function"] = function(nItemId)
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		User_NotifyChgHairstyle(93,0)
	end
end

tLuaEffectEnd["tFunction"] = tLuaEffectEnd["tFunction"] or {}
table.insert(tLuaEffectEnd["tFunction"],QixiFestivalNPC_EndPlot)