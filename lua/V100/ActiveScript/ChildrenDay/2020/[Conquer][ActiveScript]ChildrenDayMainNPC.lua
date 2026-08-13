------------------------------------------------------------------------------------
--Name：        200416[简体征服][活动脚本]全球儿童节
--Creator:      耿力兀
--Created:     2020-04-16
------------------------------------------------------------------------------------
--任务需求：
--lua.ini: 41799
--前缀：ChildrenDayMainNPC_
--全球掩码：30001  记录童趣积分
--stc：218 92 - 218 96
--21892 是否第一次点击主NPC
--21893 是否第一次进入妙妙屋
------------------------------------------------------------------------------------


----------------------------------表配置部分--------------------------------------------
tRankingFunc_Info[26486] = {}
tRankingFunc_Info[26486]["Reset"] = 1
tRankingFunc_Info[26486]["ActiveTime"] = tActivityTime["ChildrenDay2020"]["ActivityTime"]
tRankingFunc_Info[26486]["DayTime"] = {}
tRankingFunc_Info[26486]["DayTime"][1] = "00:00 23:59"
tRankingFunc_Info[26486]["Global"] = {54420,54421,54422,54423,54424}
tRankingFunc_Info[26486]["RankMode"] = 1
tRankingFunc_Info[26486]["RankNum"] = 10
tRankingFunc_Info[26486]["Mail"] = {}
tRankingFunc_Info[26486]["Mail"]["ActiveTime"] = tActivityTime["ChildrenDay2020"]["EmailTime"]
tRankingFunc_Info[26486]["Mail"]["RewardTime"] = {}
tRankingFunc_Info[26486]["Mail"]["RewardTime"] = {}
tRankingFunc_Info[26486]["Mail"]["RewardTime"][1] = "00:00 00:03"
tRankingFunc_Info[26486]["Mail"]["Reward"] = {}
tRankingFunc_Info[26486]["Mail"]["Reward"][1] = {}
tRankingFunc_Info[26486]["Mail"]["Reward"][1]["RewardRank"] = 1
tRankingFunc_Info[26486]["Mail"]["Reward"][1]["ActionId"] = 577230
tRankingFunc_Info[26486]["Mail"]["Reward"][1]["ExistDay"] = 7
tRankingFunc_Info[26486]["Mail"]["Reward"][1]["Title"] = tChildrenDayMainNPC_Text["Title"]
tRankingFunc_Info[26486]["Mail"]["Reward"][1]["Sender"] = tChildrenDayMainNPC_Text["Sender"]
tRankingFunc_Info[26486]["Mail"]["Reward"][1]["Content"] = string.format(tChildrenDayMainNPC_Text["Content"],1)
tRankingFunc_Info[26486]["Mail"]["Reward"][2] = {}
tRankingFunc_Info[26486]["Mail"]["Reward"][2]["RewardRank"] = 2
tRankingFunc_Info[26486]["Mail"]["Reward"][2]["ActionId"] = 577231
tRankingFunc_Info[26486]["Mail"]["Reward"][2]["ExistDay"] = 7
tRankingFunc_Info[26486]["Mail"]["Reward"][2]["Title"] = tChildrenDayMainNPC_Text["Title"]
tRankingFunc_Info[26486]["Mail"]["Reward"][2]["Sender"] = tChildrenDayMainNPC_Text["Sender"]
tRankingFunc_Info[26486]["Mail"]["Reward"][2]["Content"] = string.format(tChildrenDayMainNPC_Text["Content"],2)
tRankingFunc_Info[26486]["Mail"]["Reward"][3] = {}
tRankingFunc_Info[26486]["Mail"]["Reward"][3]["RewardRank"] = 3
tRankingFunc_Info[26486]["Mail"]["Reward"][3]["ActionId"] = 577231
tRankingFunc_Info[26486]["Mail"]["Reward"][3]["ExistDay"] = 7
tRankingFunc_Info[26486]["Mail"]["Reward"][3]["Title"] = tChildrenDayMainNPC_Text["Title"]
tRankingFunc_Info[26486]["Mail"]["Reward"][3]["Sender"] = tChildrenDayMainNPC_Text["Sender"]
tRankingFunc_Info[26486]["Mail"]["Reward"][3]["Content"] = string.format(tChildrenDayMainNPC_Text["Content"],3)
tRankingFunc_Info[26486]["Mail"]["Reward"][4] = {}
tRankingFunc_Info[26486]["Mail"]["Reward"][4]["RewardRank"] = 4
tRankingFunc_Info[26486]["Mail"]["Reward"][4]["ActionId"] = 577232
tRankingFunc_Info[26486]["Mail"]["Reward"][4]["ExistDay"] = 7
tRankingFunc_Info[26486]["Mail"]["Reward"][4]["Title"] = tChildrenDayMainNPC_Text["Title"]
tRankingFunc_Info[26486]["Mail"]["Reward"][4]["Sender"] = tChildrenDayMainNPC_Text["Sender"]
tRankingFunc_Info[26486]["Mail"]["Reward"][4]["Content"] = string.format(tChildrenDayMainNPC_Text["Content"],4)
tRankingFunc_Info[26486]["Mail"]["Reward"][5] = {}
tRankingFunc_Info[26486]["Mail"]["Reward"][5]["RewardRank"] = 5
tRankingFunc_Info[26486]["Mail"]["Reward"][5]["ActionId"] = 577232
tRankingFunc_Info[26486]["Mail"]["Reward"][5]["ExistDay"] = 7
tRankingFunc_Info[26486]["Mail"]["Reward"][5]["Title"] = tChildrenDayMainNPC_Text["Title"]
tRankingFunc_Info[26486]["Mail"]["Reward"][5]["Sender"] = tChildrenDayMainNPC_Text["Sender"]
tRankingFunc_Info[26486]["Mail"]["Reward"][5]["Content"] = string.format(tChildrenDayMainNPC_Text["Content"],5)
tRankingFunc_Info[26486]["Mail"]["Reward"][6] = {}
tRankingFunc_Info[26486]["Mail"]["Reward"][6]["RewardRank"] = 6
tRankingFunc_Info[26486]["Mail"]["Reward"][6]["ActionId"] = 577232
tRankingFunc_Info[26486]["Mail"]["Reward"][6]["ExistDay"] = 7
tRankingFunc_Info[26486]["Mail"]["Reward"][6]["Title"] = tChildrenDayMainNPC_Text["Title"]
tRankingFunc_Info[26486]["Mail"]["Reward"][6]["Sender"] = tChildrenDayMainNPC_Text["Sender"]
tRankingFunc_Info[26486]["Mail"]["Reward"][6]["Content"] = string.format(tChildrenDayMainNPC_Text["Content"],6)
tRankingFunc_Info[26486]["Mail"]["Reward"][7] = {}
tRankingFunc_Info[26486]["Mail"]["Reward"][7]["RewardRank"] = 7
tRankingFunc_Info[26486]["Mail"]["Reward"][7]["ActionId"] = 577233
tRankingFunc_Info[26486]["Mail"]["Reward"][7]["ExistDay"] = 7
tRankingFunc_Info[26486]["Mail"]["Reward"][7]["Title"] = tChildrenDayMainNPC_Text["Title"]
tRankingFunc_Info[26486]["Mail"]["Reward"][7]["Sender"] = tChildrenDayMainNPC_Text["Sender"]
tRankingFunc_Info[26486]["Mail"]["Reward"][7]["Content"] = string.format(tChildrenDayMainNPC_Text["Content"],7)
tRankingFunc_Info[26486]["Mail"]["Reward"][8] = {}
tRankingFunc_Info[26486]["Mail"]["Reward"][8]["RewardRank"] = 8
tRankingFunc_Info[26486]["Mail"]["Reward"][8]["ActionId"] = 577233
tRankingFunc_Info[26486]["Mail"]["Reward"][8]["ExistDay"] = 7
tRankingFunc_Info[26486]["Mail"]["Reward"][8]["Title"] = tChildrenDayMainNPC_Text["Title"]
tRankingFunc_Info[26486]["Mail"]["Reward"][8]["Sender"] = tChildrenDayMainNPC_Text["Sender"]
tRankingFunc_Info[26486]["Mail"]["Reward"][8]["Content"] = string.format(tChildrenDayMainNPC_Text["Content"],8)
tRankingFunc_Info[26486]["Mail"]["Reward"][9] = {}
tRankingFunc_Info[26486]["Mail"]["Reward"][9]["RewardRank"] = 9
tRankingFunc_Info[26486]["Mail"]["Reward"][9]["ActionId"] = 577233
tRankingFunc_Info[26486]["Mail"]["Reward"][9]["ExistDay"] = 7
tRankingFunc_Info[26486]["Mail"]["Reward"][9]["Title"] = tChildrenDayMainNPC_Text["Title"]
tRankingFunc_Info[26486]["Mail"]["Reward"][9]["Sender"] = tChildrenDayMainNPC_Text["Sender"]
tRankingFunc_Info[26486]["Mail"]["Reward"][9]["Content"] = string.format(tChildrenDayMainNPC_Text["Content"],9)
tRankingFunc_Info[26486]["Mail"]["Reward"][10] = {}
tRankingFunc_Info[26486]["Mail"]["Reward"][10]["RewardRank"] = 10
tRankingFunc_Info[26486]["Mail"]["Reward"][10]["ActionId"] = 577233
tRankingFunc_Info[26486]["Mail"]["Reward"][10]["ExistDay"] = 7
tRankingFunc_Info[26486]["Mail"]["Reward"][10]["Title"] = tChildrenDayMainNPC_Text["Title"]
tRankingFunc_Info[26486]["Mail"]["Reward"][10]["Sender"] = tChildrenDayMainNPC_Text["Sender"]
tRankingFunc_Info[26486]["Mail"]["Reward"][10]["Content"] = string.format(tChildrenDayMainNPC_Text["Content"],10)

local tChildrenDayMainNPC_Reward = {}
	-- ===全球扭蛋王至尊宝箱
	-- ===索引:tChildrenDayMainNPC_Reward[3316110]
	-- ===删除: 3316110,1
	tChildrenDayMainNPC_Reward[3316110] = {}
	tChildrenDayMainNPC_Reward[3316110]["LogId"] = 12001963
	tChildrenDayMainNPC_Reward[3316110]["DeleteItem"] = {}
	tChildrenDayMainNPC_Reward[3316110]["DeleteItem"][1] = {}
	tChildrenDayMainNPC_Reward[3316110]["DeleteItem"][1]["Id"] = 3316110 -- 【库】全球扭蛋王至尊宝箱[属性:9]
	tChildrenDayMainNPC_Reward[3316110]["RewardItem"] = {}
	tChildrenDayMainNPC_Reward[3316110]["RewardItem"][1] = {}
	tChildrenDayMainNPC_Reward[3316110]["RewardItem"][1]["Id"] = 3316121 -- 365天【儿童节武器】武器外套可选包[3316121][属性:9][叠加:1][金币:0], 【表格】365天儿童节武器外套可选包
	tChildrenDayMainNPC_Reward[3316110]["RewardItem"][1]["Attr"] = "0 1 0 525600 1" -- 365天时效(激活)的365天【儿童节武器】武器外套可选包*1
	tChildrenDayMainNPC_Reward[3316110]["RewardItem"][2] = {}
	tChildrenDayMainNPC_Reward[3316110]["RewardItem"][2]["Id"] = 4200011 -- 11阶灵珠[4200011][属性:72][叠加:99][金币:0], 【表格】11阶灵珠
	tChildrenDayMainNPC_Reward[3316110]["RewardItem"][2]["Attr"] = "0 1" -- 11阶灵珠*1
	tChildrenDayMainNPC_Reward[3316110]["RewardItem"][2]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tChildrenDayMainNPC_Reward[3316110]["RewardStrengthValue"] = {}
	tChildrenDayMainNPC_Reward[3316110]["RewardStrengthValue"]["Value"] = 30000 -- 气力值, 【需求】30000点气力值
	tChildrenDayMainNPC_Reward[3316110]["RewardEffect"] = {}
	tChildrenDayMainNPC_Reward[3316110]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildrenDayMainNPC_Reward[3316110]["RewardEffect"]["Effect"] = "angelwing"


	tChildrenDayMainNPC_Reward[3316111] = {}
	-- ===全球扭蛋荣耀宝箱
	-- ===索引:tChildrenDayMainNPC_Reward[3316111]
	-- ===删除: 3316111,1
	tChildrenDayMainNPC_Reward[3316111]["LogId"] = 12001963
	tChildrenDayMainNPC_Reward[3316111]["DeleteItem"] = {}
	tChildrenDayMainNPC_Reward[3316111]["DeleteItem"][1] = {}
	tChildrenDayMainNPC_Reward[3316111]["DeleteItem"][1]["Id"] = 3316111 -- 【库】全球扭蛋荣耀宝箱[属性:9]
	tChildrenDayMainNPC_Reward[3316111]["RewardItem"] = {}
	tChildrenDayMainNPC_Reward[3316111]["RewardItem"][1] = {}
	tChildrenDayMainNPC_Reward[3316111]["RewardItem"][1]["Id"] = 3316122 -- 180天【儿童节武器】武器外套可选包[3316122][属性:9][叠加:1][金币:0], 【表格】180天儿童节武器外套可选包
	tChildrenDayMainNPC_Reward[3316111]["RewardItem"][1]["Attr"] = "0 1 0 259200 1" -- 180天时效(激活)的180天【儿童节武器】武器外套可选包*1
	tChildrenDayMainNPC_Reward[3316111]["RewardItem"][2] = {}
	tChildrenDayMainNPC_Reward[3316111]["RewardItem"][2]["Id"] = 4200009 -- 9阶灵珠[4200009][属性:72][叠加:99][金币:0], 【表格】9阶灵珠
	tChildrenDayMainNPC_Reward[3316111]["RewardItem"][2]["Attr"] = "0 1" -- 9阶灵珠*1
	tChildrenDayMainNPC_Reward[3316111]["RewardItem"][2]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tChildrenDayMainNPC_Reward[3316111]["RewardStrengthValue"] = {}
	tChildrenDayMainNPC_Reward[3316111]["RewardStrengthValue"]["Value"] = 20000 -- 气力值, 【需求】20000点气力值
	tChildrenDayMainNPC_Reward[3316111]["RewardEffect"] = {}
	tChildrenDayMainNPC_Reward[3316111]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildrenDayMainNPC_Reward[3316111]["RewardEffect"]["Effect"] = "angelwing"


	tChildrenDayMainNPC_Reward[3316112] = {}
	-- ===全球扭蛋尊享宝箱
	-- ===索引:tChildrenDayMainNPC_Reward[3316112]
	-- ===删除: 3316112,1
	tChildrenDayMainNPC_Reward[3316112]["LogId"] = 12001963
	tChildrenDayMainNPC_Reward[3316112]["DeleteItem"] = {}
	tChildrenDayMainNPC_Reward[3316112]["DeleteItem"][1] = {}
	tChildrenDayMainNPC_Reward[3316112]["DeleteItem"][1]["Id"] = 3316112 -- 【库】全球扭蛋尊享宝箱[属性:9]
	tChildrenDayMainNPC_Reward[3316112]["RewardItem"] = {}
	tChildrenDayMainNPC_Reward[3316112]["RewardItem"][1] = {}
	tChildrenDayMainNPC_Reward[3316112]["RewardItem"][1]["Id"] = 3316123 -- 90天【儿童节武器】武器外套可选包[3316123][属性:9][叠加:1][金币:0], 【表格】90天儿童节武器外套可选包
	tChildrenDayMainNPC_Reward[3316112]["RewardItem"][1]["Attr"] = "0 1 0 129600 1" -- 90天时效(激活)的90天【儿童节武器】武器外套可选包*1
	tChildrenDayMainNPC_Reward[3316112]["RewardItem"][2] = {}
	tChildrenDayMainNPC_Reward[3316112]["RewardItem"][2]["Id"] = 4200008 -- 8阶灵珠[4200008][属性:72][叠加:99][金币:0], 【表格】8阶灵珠
	tChildrenDayMainNPC_Reward[3316112]["RewardItem"][2]["Attr"] = "0 1" -- 8阶灵珠*1
	tChildrenDayMainNPC_Reward[3316112]["RewardItem"][2]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tChildrenDayMainNPC_Reward[3316112]["RewardStrengthValue"] = {}
	tChildrenDayMainNPC_Reward[3316112]["RewardStrengthValue"]["Value"] = 15000 -- 气力值, 【需求】15000点气力值
	tChildrenDayMainNPC_Reward[3316112]["RewardEffect"] = {}
	tChildrenDayMainNPC_Reward[3316112]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildrenDayMainNPC_Reward[3316112]["RewardEffect"]["Effect"] = "angelwing"


	tChildrenDayMainNPC_Reward[3316113] = {}
	-- ===全球扭蛋豪华宝箱
	-- ===索引:tChildrenDayMainNPC_Reward[3316113]
	-- ===删除: 3316113,1
	tChildrenDayMainNPC_Reward[3316113]["LogId"] = 12001963
	tChildrenDayMainNPC_Reward[3316113]["DeleteItem"] = {}
	tChildrenDayMainNPC_Reward[3316113]["DeleteItem"][1] = {}
	tChildrenDayMainNPC_Reward[3316113]["DeleteItem"][1]["Id"] = 3316113 -- 【库】全球扭蛋豪华宝箱[属性:9]
	tChildrenDayMainNPC_Reward[3316113]["RewardItem"] = {}
	tChildrenDayMainNPC_Reward[3316113]["RewardItem"][1] = {}
	tChildrenDayMainNPC_Reward[3316113]["RewardItem"][1]["Id"] = 3316124 -- 60天【儿童节武器】武器外套可选包[3316124][属性:9][叠加:1][金币:0], 【表格】60天儿童节武器外套可选包
	tChildrenDayMainNPC_Reward[3316113]["RewardItem"][1]["Attr"] = "0 1 0 86400 1" -- 60天时效(激活)的60天【儿童节武器】武器外套可选包*1
	tChildrenDayMainNPC_Reward[3316113]["RewardItem"][2] = {}
	tChildrenDayMainNPC_Reward[3316113]["RewardItem"][2]["Id"] = 4200007 -- 7阶灵珠[4200008][属性:72][叠加:99][金币:0], 【表格】7阶灵珠
	tChildrenDayMainNPC_Reward[3316113]["RewardItem"][2]["Attr"] = "0 1" -- 7阶灵珠*1
	tChildrenDayMainNPC_Reward[3316113]["RewardItem"][2]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tChildrenDayMainNPC_Reward[3316113]["RewardStrengthValue"] = {}
	tChildrenDayMainNPC_Reward[3316113]["RewardStrengthValue"]["Value"] = 10000 -- 气力值, 【需求】10000点气力值
	tChildrenDayMainNPC_Reward[3316113]["RewardEffect"] = {}
	tChildrenDayMainNPC_Reward[3316113]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildrenDayMainNPC_Reward[3316113]["RewardEffect"]["Effect"] = "angelwing"


	tChildrenDayMainNPC_Reward[3316114] = {}
	-- ===全球扭蛋豪华宝箱
	-- ===索引:tChildrenDayMainNPC_Reward[3316114]
	-- ===删除: 3316114,1
	tChildrenDayMainNPC_Reward[3316114]["LogId"] = 12001963
	tChildrenDayMainNPC_Reward[3316114]["DeleteItem"] = {}
	tChildrenDayMainNPC_Reward[3316114]["DeleteItem"][1] = {}
	tChildrenDayMainNPC_Reward[3316114]["DeleteItem"][1]["Id"] = 3316114 -- 【库】本服扭蛋王荣耀宝箱[属性:9]
	tChildrenDayMainNPC_Reward[3316114]["RewardStrengthValue"] = {}
	tChildrenDayMainNPC_Reward[3316114]["RewardStrengthValue"]["Value"] = 10000 -- 气力值, 【需求】10000点气力值
	tChildrenDayMainNPC_Reward[3316114]["RewardItem"] = {}
	tChildrenDayMainNPC_Reward[3316114]["RewardItem"][1] = {}
	tChildrenDayMainNPC_Reward[3316114]["RewardItem"][1]["Id"] = 3322813 -- 1亿爵位勋章[3322813][属性:8][叠加:1][金币:0], 【表格】3枚1亿爵位勋章
	tChildrenDayMainNPC_Reward[3316114]["RewardItem"][1]["Attr"] = "0 3 3 10080 1" -- 7天时效(激活)1亿爵位勋章（赠）*3
	tChildrenDayMainNPC_Reward[3316114]["RewardEffect"] = {}
	tChildrenDayMainNPC_Reward[3316114]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildrenDayMainNPC_Reward[3316114]["RewardEffect"]["Effect"] = "angelwing"


	tChildrenDayMainNPC_Reward[3316115] = {}
	-- ===本服扭蛋强者宝箱
	-- ===索引:tChildrenDayMainNPC_Reward[3316115]
	-- ===删除: 3316115,1
	tChildrenDayMainNPC_Reward[3316115]["LogId"] = 12001963
	tChildrenDayMainNPC_Reward[3316115]["DeleteItem"] = {}
	tChildrenDayMainNPC_Reward[3316115]["DeleteItem"][1] = {}
	tChildrenDayMainNPC_Reward[3316115]["DeleteItem"][1]["Id"] = 3316115 -- 【库】本服扭蛋强者宝箱[属性:9]
	tChildrenDayMainNPC_Reward[3316115]["RewardStrengthValue"] = {}
	tChildrenDayMainNPC_Reward[3316115]["RewardStrengthValue"]["Value"] = 8000 -- 气力值, 【需求】8000点气力值
	tChildrenDayMainNPC_Reward[3316115]["RewardItem"] = {}
	tChildrenDayMainNPC_Reward[3316115]["RewardItem"][1] = {}
	tChildrenDayMainNPC_Reward[3316115]["RewardItem"][1]["Id"] = 3322813 -- 1亿爵位勋章[3322813][属性:8][叠加:1][金币:0], 【表格】2枚1亿爵位勋章
	tChildrenDayMainNPC_Reward[3316115]["RewardItem"][1]["Attr"] = "0 2 3 10080 1" -- 7天时效(激活)1亿爵位勋章（赠）*2
	tChildrenDayMainNPC_Reward[3316115]["RewardEffect"] = {}
	tChildrenDayMainNPC_Reward[3316115]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildrenDayMainNPC_Reward[3316115]["RewardEffect"]["Effect"] = "angelwing"


	tChildrenDayMainNPC_Reward[3316116] = {}
	-- ===本服扭蛋强者宝箱
	-- ===索引:tChildrenDayMainNPC_Reward[3316116]
	-- ===删除: 3316116,1
	tChildrenDayMainNPC_Reward[3316116]["LogId"] = 12001963
	tChildrenDayMainNPC_Reward[3316116]["DeleteItem"] = {}
	tChildrenDayMainNPC_Reward[3316116]["DeleteItem"][1] = {}
	tChildrenDayMainNPC_Reward[3316116]["DeleteItem"][1]["Id"] = 3316116 -- 【库】本服扭蛋典藏宝箱[属性:9]
	tChildrenDayMainNPC_Reward[3316116]["RewardStrengthValue"] = {}
	tChildrenDayMainNPC_Reward[3316116]["RewardStrengthValue"]["Value"] = 6000 -- 气力值, 【需求】6000点气力值
	tChildrenDayMainNPC_Reward[3316116]["RewardItem"] = {}
	tChildrenDayMainNPC_Reward[3316116]["RewardItem"][1] = {}
	tChildrenDayMainNPC_Reward[3316116]["RewardItem"][1]["Id"] = 3322813 -- 1亿爵位勋章[3322813][属性:8][叠加:1][金币:0], 【表格】1枚1亿爵位勋章
	tChildrenDayMainNPC_Reward[3316116]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)1亿爵位勋章（赠）*1
	tChildrenDayMainNPC_Reward[3316116]["RewardEffect"] = {}
	tChildrenDayMainNPC_Reward[3316116]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildrenDayMainNPC_Reward[3316116]["RewardEffect"]["Effect"] = "angelwing"

	tChildrenDayMainNPC_Reward[3316117] = {}
	-- ===本服扭蛋精装宝箱
	-- ===索引:tChildrenDayMainNPC_Reward[3316117]
	-- ===删除: 3316117,1
	tChildrenDayMainNPC_Reward[3316117]["LogId"] = 12001963
	tChildrenDayMainNPC_Reward[3316117]["DeleteItem"] = {}
	tChildrenDayMainNPC_Reward[3316117]["DeleteItem"][1] = {}
	tChildrenDayMainNPC_Reward[3316117]["DeleteItem"][1]["Id"] = 3316117 -- 【库】本服扭蛋精装宝箱[属性:9]
	tChildrenDayMainNPC_Reward[3316117]["RewardStrengthValue"] = {}
	tChildrenDayMainNPC_Reward[3316117]["RewardStrengthValue"]["Value"] = 5000 -- 气力值, 【需求】5000点气力值
	tChildrenDayMainNPC_Reward[3316117]["RewardItem"] = {}
	tChildrenDayMainNPC_Reward[3316117]["RewardItem"][1] = {}
	tChildrenDayMainNPC_Reward[3316117]["RewardItem"][1]["Id"] = 3322762 -- 1000万爵位勋章[3322762][属性:8][叠加:1][金币:0], 【表格】5枚1000万爵位勋章
	tChildrenDayMainNPC_Reward[3316117]["RewardItem"][1]["Attr"] = "0 5 3 10080 1" -- 7天时效(激活)1000万爵位勋章（赠）*5
	tChildrenDayMainNPC_Reward[3316117]["RewardEffect"] = {}
	tChildrenDayMainNPC_Reward[3316117]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildrenDayMainNPC_Reward[3316117]["RewardEffect"]["Effect"] = "angelwing"


	tChildrenDayMainNPC_Reward[3316121] = {}
	-- ===365天儿童节武器外套可选包
	-- ===索引:tChildrenDayMainNPC_Reward[3316121][1]
	-- ===删除: 3316121,1
	tChildrenDayMainNPC_Reward[3316121][1] = {}
	tChildrenDayMainNPC_Reward[3316121][1]["LogId"] = 12001963
	tChildrenDayMainNPC_Reward[3316121][1]["DeleteItem"] = {}
	tChildrenDayMainNPC_Reward[3316121][1]["DeleteItem"][1] = {}
	tChildrenDayMainNPC_Reward[3316121][1]["DeleteItem"][1]["Id"] = 3316121 -- 【库】365天【儿童节武器】武器外套可选包[属性:9]
	tChildrenDayMainNPC_Reward[3316121][1]["RewardItem"] = {}
	tChildrenDayMainNPC_Reward[3316121][1]["RewardItem"][1] = {}
	tChildrenDayMainNPC_Reward[3316121][1]["RewardItem"][1]["Id"] = 350175 --  350175 【cnzf库里没有该物品】, 【表格】365天儿童节长武器外套
	tChildrenDayMainNPC_Reward[3316121][1]["RewardItem"][1]["Attr"] = "0 1 3 525600 1 0 0 1" -- 365天时效(激活)的1%神佑 350175 【cnzf库里没有该物品】（赠）*1
	tChildrenDayMainNPC_Reward[3316121][1]["RewardEffect"] = {}
	tChildrenDayMainNPC_Reward[3316121][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildrenDayMainNPC_Reward[3316121][1]["RewardEffect"]["Effect"] = "angelwing"


	tChildrenDayMainNPC_Reward[3316121][2] = {}
	-- ===365天儿童节武器外套可选包
	-- ===索引:tChildrenDayMainNPC_Reward[3316121][2]
	-- ===删除: 3316121,1
	tChildrenDayMainNPC_Reward[3316121][2]["LogId"] = 12001963
	tChildrenDayMainNPC_Reward[3316121][2]["DeleteItem"] = {}
	tChildrenDayMainNPC_Reward[3316121][2]["DeleteItem"][1] = {}
	tChildrenDayMainNPC_Reward[3316121][2]["DeleteItem"][1]["Id"] = 3316121 -- 【库】365天【儿童节武器】武器外套可选包[属性:9]
	tChildrenDayMainNPC_Reward[3316121][2]["RewardItem"] = {}
	tChildrenDayMainNPC_Reward[3316121][2]["RewardItem"][1] = {}
	tChildrenDayMainNPC_Reward[3316121][2]["RewardItem"][1]["Id"] = 360312 --  360312 【cnzf库里没有该物品】, 【表格】365天儿童节短武器外套
	tChildrenDayMainNPC_Reward[3316121][2]["RewardItem"][1]["Attr"] = "0 2 3 525600 1 0 0 1" -- 365天时效(激活)的 360312 【cnzf库里没有该物品】（赠）*2
	tChildrenDayMainNPC_Reward[3316121][2]["RewardEffect"] = {}
	tChildrenDayMainNPC_Reward[3316121][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildrenDayMainNPC_Reward[3316121][2]["RewardEffect"]["Effect"] = "angelwing"


	tChildrenDayMainNPC_Reward[3316122] = {}
	-- ===180天儿童节武器外套可选包
	-- ===索引:tChildrenDayMainNPC_Reward[3316122][1]
	-- ===删除: 3316122,1
	tChildrenDayMainNPC_Reward[3316122][1] = {}
	tChildrenDayMainNPC_Reward[3316122][1]["LogId"] = 12001963
	tChildrenDayMainNPC_Reward[3316122][1]["DeleteItem"] = {}
	tChildrenDayMainNPC_Reward[3316122][1]["DeleteItem"][1] = {}
	tChildrenDayMainNPC_Reward[3316122][1]["DeleteItem"][1]["Id"] = 3316122 -- 【库】180天【儿童节武器】武器外套可选包[属性:9]
	tChildrenDayMainNPC_Reward[3316122][1]["RewardItem"] = {}
	tChildrenDayMainNPC_Reward[3316122][1]["RewardItem"][1] = {}
	tChildrenDayMainNPC_Reward[3316122][1]["RewardItem"][1]["Id"] = 350175 --  350175 【cnzf库里没有该物品】, 【表格】180天儿童节长武器外套
	tChildrenDayMainNPC_Reward[3316122][1]["RewardItem"][1]["Attr"] = "0 1 3 259200 1 0 0 1" -- 180天时效(激活)的1%神佑 350175 【cnzf库里没有该物品】（赠）*1
	tChildrenDayMainNPC_Reward[3316122][1]["RewardEffect"] = {}
	tChildrenDayMainNPC_Reward[3316122][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildrenDayMainNPC_Reward[3316122][1]["RewardEffect"]["Effect"] = "angelwing"


	tChildrenDayMainNPC_Reward[3316122][2] = {}
	-- ===180天儿童节武器外套可选包
	-- ===索引:tChildrenDayMainNPC_Reward[3316122][2]
	-- ===删除: 3316122,1
	tChildrenDayMainNPC_Reward[3316122][2]["LogId"] = 12001963
	tChildrenDayMainNPC_Reward[3316122][2]["DeleteItem"] = {}
	tChildrenDayMainNPC_Reward[3316122][2]["DeleteItem"][1] = {}
	tChildrenDayMainNPC_Reward[3316122][2]["DeleteItem"][1]["Id"] = 3316122 -- 【库】180天【儿童节武器】武器外套可选包[属性:9]
	tChildrenDayMainNPC_Reward[3316122][2]["RewardItem"] = {}
	tChildrenDayMainNPC_Reward[3316122][2]["RewardItem"][1] = {}
	tChildrenDayMainNPC_Reward[3316122][2]["RewardItem"][1]["Id"] = 360312 --  360312 【cnzf库里没有该物品】, 【表格】180天儿童节短武器外套
	tChildrenDayMainNPC_Reward[3316122][2]["RewardItem"][1]["Attr"] = "0 2 3 259200 1 0 0 1" -- 180天时效(激活)的 360312 【cnzf库里没有该物品】（赠）*2
	tChildrenDayMainNPC_Reward[3316122][2]["RewardEffect"] = {}
	tChildrenDayMainNPC_Reward[3316122][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildrenDayMainNPC_Reward[3316122][2]["RewardEffect"]["Effect"] = "angelwing"


	tChildrenDayMainNPC_Reward[3316123] = {}
	-- ===90天儿童节武器外套可选包
	-- ===索引:tChildrenDayMainNPC_Reward[3316123][1]
	-- ===删除: 3316123,1
	tChildrenDayMainNPC_Reward[3316123][1] = {}
	tChildrenDayMainNPC_Reward[3316123][1]["LogId"] = 12001963
	tChildrenDayMainNPC_Reward[3316123][1]["DeleteItem"] = {}
	tChildrenDayMainNPC_Reward[3316123][1]["DeleteItem"][1] = {}
	tChildrenDayMainNPC_Reward[3316123][1]["DeleteItem"][1]["Id"] = 3316123 -- 【库】90天【儿童节武器】武器外套可选包[属性:9]
	tChildrenDayMainNPC_Reward[3316123][1]["RewardItem"] = {}
	tChildrenDayMainNPC_Reward[3316123][1]["RewardItem"][1] = {}
	tChildrenDayMainNPC_Reward[3316123][1]["RewardItem"][1]["Id"] = 350175 --  350175 【cnzf库里没有该物品】, 【表格】90天儿童节长武器外套
	tChildrenDayMainNPC_Reward[3316123][1]["RewardItem"][1]["Attr"] = "0 1 3 129600 1 0 0 1" -- 90天时效(激活)的1%神佑 350175 【cnzf库里没有该物品】（赠）*1
	tChildrenDayMainNPC_Reward[3316123][1]["RewardEffect"] = {}
	tChildrenDayMainNPC_Reward[3316123][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildrenDayMainNPC_Reward[3316123][1]["RewardEffect"]["Effect"] = "angelwing"


	tChildrenDayMainNPC_Reward[3316123][2] = {}
	-- ===90天儿童节武器外套可选包
	-- ===索引:tChildrenDayMainNPC_Reward[3316123][2]
	-- ===删除: 3316123,1
	tChildrenDayMainNPC_Reward[3316123][2]["LogId"] = 12001963
	tChildrenDayMainNPC_Reward[3316123][2]["DeleteItem"] = {}
	tChildrenDayMainNPC_Reward[3316123][2]["DeleteItem"][1] = {}
	tChildrenDayMainNPC_Reward[3316123][2]["DeleteItem"][1]["Id"] = 3316123 -- 【库】90天【儿童节武器】武器外套可选包[属性:9]
	tChildrenDayMainNPC_Reward[3316123][2]["RewardItem"] = {}
	tChildrenDayMainNPC_Reward[3316123][2]["RewardItem"][1] = {}
	tChildrenDayMainNPC_Reward[3316123][2]["RewardItem"][1]["Id"] = 360312 --  360312 【cnzf库里没有该物品】, 【表格】90天儿童节短武器外套
	tChildrenDayMainNPC_Reward[3316123][2]["RewardItem"][1]["Attr"] = "0 2 3 129600 1 0 0 1" -- 90天时效(激活)的 360312 【cnzf库里没有该物品】（赠）*2
	tChildrenDayMainNPC_Reward[3316123][2]["RewardEffect"] = {}
	tChildrenDayMainNPC_Reward[3316123][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildrenDayMainNPC_Reward[3316123][2]["RewardEffect"]["Effect"] = "angelwing"


	tChildrenDayMainNPC_Reward[3316124] = {}
	-- ===60天儿童节武器外套可选包
	-- ===索引:tChildrenDayMainNPC_Reward[3316124][1]
	-- ===删除: 3316124,1
	tChildrenDayMainNPC_Reward[3316124][1] = {}
	tChildrenDayMainNPC_Reward[3316124][1]["LogId"] = 12001963
	tChildrenDayMainNPC_Reward[3316124][1]["DeleteItem"] = {}
	tChildrenDayMainNPC_Reward[3316124][1]["DeleteItem"][1] = {}
	tChildrenDayMainNPC_Reward[3316124][1]["DeleteItem"][1]["Id"] = 3316124 -- 【库】60天【儿童节武器】武器外套可选包[属性:9]
	tChildrenDayMainNPC_Reward[3316124][1]["RewardItem"] = {}
	tChildrenDayMainNPC_Reward[3316124][1]["RewardItem"][1] = {}
	tChildrenDayMainNPC_Reward[3316124][1]["RewardItem"][1]["Id"] = 350175 --  350175 【cnzf库里没有该物品】, 【表格】60天儿童节长武器外套
	tChildrenDayMainNPC_Reward[3316124][1]["RewardItem"][1]["Attr"] = "0 1 3 86400 1 0 0 1" -- 60天时效(激活)的1%神佑 350175 【cnzf库里没有该物品】（赠）*1
	tChildrenDayMainNPC_Reward[3316124][1]["RewardEffect"] = {}
	tChildrenDayMainNPC_Reward[3316124][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildrenDayMainNPC_Reward[3316124][1]["RewardEffect"]["Effect"] = "angelwing"


	tChildrenDayMainNPC_Reward[3316124][2] = {}
	-- ===60天儿童节武器外套可选包
	-- ===索引:tChildrenDayMainNPC_Reward[3316124][2]
	-- ===删除: 3316124,1
	tChildrenDayMainNPC_Reward[3316124][2]["LogId"] = 12001963
	tChildrenDayMainNPC_Reward[3316124][2]["DeleteItem"] = {}
	tChildrenDayMainNPC_Reward[3316124][2]["DeleteItem"][1] = {}
	tChildrenDayMainNPC_Reward[3316124][2]["DeleteItem"][1]["Id"] = 3316124 -- 【库】60天【儿童节武器】武器外套可选包[属性:9]
	tChildrenDayMainNPC_Reward[3316124][2]["RewardItem"] = {}
	tChildrenDayMainNPC_Reward[3316124][2]["RewardItem"][1] = {}
	tChildrenDayMainNPC_Reward[3316124][2]["RewardItem"][1]["Id"] = 360312 --  360312 【cnzf库里没有该物品】, 【表格】60天儿童节短武器外套
	tChildrenDayMainNPC_Reward[3316124][2]["RewardItem"][1]["Attr"] = "0 2 3 86400 1 0 0 1" -- 60天时效(激活)的1%神佑 360312 【cnzf库里没有该物品】（赠）*2
	tChildrenDayMainNPC_Reward[3316124][2]["RewardEffect"] = {}
	tChildrenDayMainNPC_Reward[3316124][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildrenDayMainNPC_Reward[3316124][2]["RewardEffect"]["Effect"] = "angelwing"

	tChildrenDayMainNPC_Reward["ToysBox"] = {}
	-- ===领取玩具箱
	-- ===索引: tChildrenDayMainNPC_Reward["ToysBox"]
	-- ===LogStep:6[3][5]
	tChildrenDayMainNPC_Reward["ToysBox"]["LogId"] = 12001963
	tChildrenDayMainNPC_Reward["ToysBox"]["LogStep"] = "6[3][5]"
	tChildrenDayMainNPC_Reward["ToysBox"]["RewardItem"] = {}
	tChildrenDayMainNPC_Reward["ToysBox"]["RewardItem"][1] = {}
	tChildrenDayMainNPC_Reward["ToysBox"]["RewardItem"][1]["Id"] = 3330712 -- 童趣玩具箱[3330712][属性:9][叠加:0][金币:0], 【表格】童趣玩具箱
	tChildrenDayMainNPC_Reward["ToysBox"]["RewardItem"][1]["Attr"] = "0 1" -- 童趣玩具箱*1
	tChildrenDayMainNPC_Reward["ToysBox"]["RewardEffect"] = {}
	tChildrenDayMainNPC_Reward["ToysBox"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildrenDayMainNPC_Reward["ToysBox"]["RewardEffect"]["Effect"] = "angelwing"


local tChildrenDayMainNPC_Data = {}
	tChildrenDayMainNPC_Data["Web"] = "https://wtop.zf.99.com/etj/nqEn/"
	tChildrenDayMainNPC_Data["Level"] = 80
	tChildrenDayMainNPC_Data["Metempsychosis"] = 0
	tChildrenDayMainNPC_Data["ToysBox"] = 3330712
	tChildrenDayMainNPC_Data["MapId"] = 10835
	tChildrenDayMainNPC_Data["PosX"] = 80
	tChildrenDayMainNPC_Data["PosY"] = 80
	tChildrenDayMainNPC_Data["NPC"] = 54	--npc剧情
	tChildrenDayMainNPC_Data["Map"] = 55	--地图剧情(普通)
	tChildrenDayMainNPC_Data["Global"] = 54427	--data0收个集齐玩具的玩家
--地图坐标
local tChildrenDayMainNPC_Map = {}
	tChildrenDayMainNPC_Map["MapId"] = 10835
	tChildrenDayMainNPC_Map["PosX"] = 80
	tChildrenDayMainNPC_Map["PosY"] = 80
	--主NPC坐标
	tChildrenDayMainNPC_Map[1] = {}
	tChildrenDayMainNPC_Map[1]["NPCId"] = 26486
	tChildrenDayMainNPC_Map[1]["MapId"] = 1002
	tChildrenDayMainNPC_Map[1]["PosX"] = 373
	tChildrenDayMainNPC_Map[1]["PosY"] = 441
	tChildrenDayMainNPC_Map[2] = {}
	tChildrenDayMainNPC_Map[2]["MapId"] = 1036
	tChildrenDayMainNPC_Map[2]["PosX"] = 215
	tChildrenDayMainNPC_Map[2]["PosY"] = 173
	--扭蛋机坐标
	tChildrenDayMainNPC_Map["NDJ"] = {}
	tChildrenDayMainNPC_Map["NDJ"]["NPCId"] = 26507
	tChildrenDayMainNPC_Map["NDJ"]["MapId"] = 10835
	tChildrenDayMainNPC_Map["NDJ"]["PosX"] = 48
	tChildrenDayMainNPC_Map["NDJ"]["PosY"] = 51
	--领取斗蛋
	tChildrenDayMainNPC_Map["DD"] = {}
	tChildrenDayMainNPC_Map["DD"]["NPCId"] = 26478
	tChildrenDayMainNPC_Map["DD"]["MapId"] = 10835
	tChildrenDayMainNPC_Map["DD"]["PosX"] = 69
	tChildrenDayMainNPC_Map["DD"]["PosY"] = 91
	--小游戏npc坐标
	tChildrenDayMainNPC_Map["Play"] = {}
	tChildrenDayMainNPC_Map["Play"][1] = {}
	tChildrenDayMainNPC_Map["Play"][1]["NPCId"] = 26513
	tChildrenDayMainNPC_Map["Play"][1]["MapId"] = 10835
	tChildrenDayMainNPC_Map["Play"][1]["PosX"] = 90
	tChildrenDayMainNPC_Map["Play"][1]["PosY"] = 65
	tChildrenDayMainNPC_Map["Play"][2] = {}
	tChildrenDayMainNPC_Map["Play"][2]["NPCId"] = 26493
	tChildrenDayMainNPC_Map["Play"][2]["MapId"] = 10835
	tChildrenDayMainNPC_Map["Play"][2]["PosX"] = 69
	tChildrenDayMainNPC_Map["Play"][2]["PosY"] = 83
	tChildrenDayMainNPC_Map["Play"][3] = {}
	tChildrenDayMainNPC_Map["Play"][3]["NPCId"] = 26505
	tChildrenDayMainNPC_Map["Play"][3]["MapId"] = 10835
	tChildrenDayMainNPC_Map["Play"][3]["PosX"] = 69
	tChildrenDayMainNPC_Map["Play"][3]["PosY"] = 75
	tChildrenDayMainNPC_Map["Play"][4] = {}
	tChildrenDayMainNPC_Map["Play"][4]["NPCId"] = 26480
	tChildrenDayMainNPC_Map["Play"][4]["MapId"] = 10835
	tChildrenDayMainNPC_Map["Play"][4]["PosX"] = 78
	tChildrenDayMainNPC_Map["Play"][4]["PosY"] = 65
	tChildrenDayMainNPC_Map["Play"][5] = {}
	tChildrenDayMainNPC_Map["Play"][5]["NPCId"] = 26512
	tChildrenDayMainNPC_Map["Play"][5]["MapId"] = 10835
	tChildrenDayMainNPC_Map["Play"][5]["PosX"] = 84
	tChildrenDayMainNPC_Map["Play"][5]["PosY"] = 65

	
--掩码表	
local tChildrenDayMainNPC_Stc = {}
	tChildrenDayMainNPC_Stc["ScoreEvent"] = 300
	tChildrenDayMainNPC_Stc["ScoreType"] = 1		--童趣积分
	tChildrenDayMainNPC_Stc["EventType"] = 218
	tChildrenDayMainNPC_Stc["DataType"] = {}
	tChildrenDayMainNPC_Stc["DataType"]["NPC"] = 92		--是否第一次点击主NPC
	tChildrenDayMainNPC_Stc["DataType"]["Map"] = 93		--是否第一次进妙妙屋
	tChildrenDayMainNPC_Stc["EggEvent"] = 219		--领取斗蛋
	tChildrenDayMainNPC_Stc["EggType"] = 57
	
----------------------------------逻辑部分---------------------------------------------
--线下页面
function ChildrenDayMainNPC_WebOpenH5(nNpcId)
	local nChildrenDayMainNPC_WebUserId = Get_UserId()
	--时间判断
	if not Sys_ChkFullTime(tActivityTime["ChildrenDay2020"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return 
	end
	User_SendWebDialog(tChildrenDayMainNPC_Data["Web"],nChildrenDayMainNPC_WebUserId)
end

--进入地图
function ChildrenDayMainNPC_EnterMap(nNpcId)
	if not Sys_ChkFullTime(tActivityTime["ChildrenDay2020"]["ActivityTime"])then 
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return 
	end  
	
	local nUserId= Get_UserId()
	local nChildrenDayMainNPC_Event = tChildrenDayMainNPC_Stc["EventType"]
	local nChildrenDayMainNPC_Type = tChildrenDayMainNPC_Stc["DataType"]["Map"]
	local nChildrenDayMainNPC_Data = Get_UserStatisticValue(nChildrenDayMainNPC_Event,nChildrenDayMainNPC_Type,nUserId)
	if nChildrenDayMainNPC_Data<=0 then 
		Task_SetStatistic(nChildrenDayMainNPC_Event,nChildrenDayMainNPC_Type,1,1,nUserId)
		Task_SetStcTimestamp(nChildrenDayMainNPC_Event,nChildrenDayMainNPC_Type,0,nUserId)
		User_PlayPlot(tChildrenDayMainNPC_Data["Map"])
	end  
	--进地图
	if User_UserRandBoundTrans(tChildrenDayMainNPC_Map["MapId"],tChildrenDayMainNPC_Map["PosX"],tChildrenDayMainNPC_Map["PosY"],5,5,0,nUserId)then 
		LinkNpcGossipFunc_New(26486,"6-1")
	end
end

--查看排行榜
function ChildrenDayMainNPC_LookRanking(nNpcId)
	local tChildrenDayMainNPC_RankingList = RankingFunc_GetNowData(nNpcId) -- 获取排行榜数据
	local nChildrenDayMainNPC_TabLength = #tChildrenDayMainNPC_RankingList
	
	for k = 1, nChildrenDayMainNPC_TabLength do
		local nChildrenDayMainNPC_Score = tChildrenDayMainNPC_RankingList[k]["Score"]
		local sChildrenDayMainNPC_UserName = tChildrenDayMainNPC_RankingList[k]["UserName"]
		-- 名字处理 -- 海外使用
		sChildrenDayMainNPC_UserName = string.gsub(sChildrenDayMainNPC_UserName, "<", " ")
		sChildrenDayMainNPC_UserName = string.gsub(sChildrenDayMainNPC_UserName, ">", " ")
		if k>10 then 
			break
		end 
		tNpcGossip[nNpcId]["Text214"..k] = string.format(tChildrenDayMainNPC_Text[nNpcId]["Text214"..k],k,nChildrenDayMainNPC_Score,sChildrenDayMainNPC_UserName)
	end
	local nNextText = nChildrenDayMainNPC_TabLength+1
	for i =nNextText,10 do 
		tNpcGossip[nNpcId]["Text214"..i] = string.format(tChildrenDayMainNPC_Text[nNpcId]["Text214"..i],i,tChildrenDayMainNPC_Text["NoScore"],tChildrenDayMainNPC_Text["NoScore"])
	end
end 

--排行榜存积分
function ChildrenDayMainNPC_SaveScore(nScore)
	local nUserId= Get_UserId()
	local nChildrenDayMainNPC_Event = tChildrenDayMainNPC_Stc["ScoreEvent"]
	local nChildrenDayMainNPC_Type = tChildrenDayMainNPC_Stc["ScoreType"] 
	local nChildrenDayMainNPC_Data = Get_UserStatisticValue(nChildrenDayMainNPC_Event,nChildrenDayMainNPC_Type,nUserId)
	local nAllScore = nScore+nChildrenDayMainNPC_Data
	RankingFunc_SetInfo(26486,nAllScore,nUserId)
end

--返回双龙城
function ChildrenDayMainNPC_Leave()
	local nUserId =Get_UserId()
	--判断是否为激情服
	if SpecialServer_ChkNoGiftServer() then		
		local nMapId = tChildrenDayMainNPC_Map[2]["MapId"]
		local nCellX =tChildrenDayMainNPC_Map[2]["PosX"]
		local nCellY =tChildrenDayMainNPC_Map[2]["PosY"]
		User_UserRandBoundTrans(nMapId,nCellX,nCellY,5,5,1,nUserId)
		return 
	end 
	local nMapId = tChildrenDayMainNPC_Map[1]["MapId"]
	local nCellX =tChildrenDayMainNPC_Map[1]["PosX"]
	local nCellY =tChildrenDayMainNPC_Map[1]["PosY"]
	User_UserRandBoundTrans(nMapId,nCellX,nCellY,5,5,1,nUserId)
end

--自选礼包
function ChildrenDayMainNPC_OptionalGift(nItemId,nOption)
	--判断背包空间
	local nSpace = RewardTemplate_GetRewardSpace(tChildrenDayMainNPC_Reward[nItemId][nOption])
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(tChildrenDayMainNPC_Text["NoSpace"])	
		return
	end
	RewardTemplate_UseItemAndMsg(tChildrenDayMainNPC_Reward[nItemId][nOption])
end

--主NPC剧情
function ChildrenDayMainNPC_NPCPlot()
	local nUserId =Get_UserId()
	local nChildrenDayMainNPC_Event = tChildrenDayMainNPC_Stc["EventType"]
	local nChildrenDayMainNPC_Type = tChildrenDayMainNPC_Stc["DataType"]["NPC"]
	Task_SetStatistic(nChildrenDayMainNPC_Event,nChildrenDayMainNPC_Type,1,1)
	Task_SetStcTimestamp(nChildrenDayMainNPC_Event,nChildrenDayMainNPC_Type,0)
	--判断是否有玩具箱
	if not Item_ChkItem(tChildrenDayMainNPC_Data["ToysBox"]) then
		RewardTemplate_UseItemAndMsg(tChildrenDayMainNPC_Reward["ToysBox"])
	end

	-- 剧情
	if SpecialServer_ChkNoGiftServer() then	
		local nMapId = tChildrenDayMainNPC_Map[1]["MapId"]
		local nCellX =tChildrenDayMainNPC_Map[1]["PosX"]
		local nCellY =tChildrenDayMainNPC_Map[1]["PosY"]
		User_UserRandBoundTrans(nMapId,nCellX,nCellY,5,5,1,nUserId)
	end 
	LinkNpcGossipFunc_New(26486,"1-5")
	User_PlayPlot(tChildrenDayMainNPC_Data["NPC"])
end 

--播完脚本传回激情服
function ChildrenDayMainNPC_EndPlot(nUserId,nPlayId,nPlayStatus)
	if nPlayId ~= tChildrenDayMainNPC_Data["NPC"] then
		return
	end
	if SpecialServer_ChkNoGiftServer() then	
		local nMapId = tChildrenDayMainNPC_Map[2]["MapId"]
		local nCellX =tChildrenDayMainNPC_Map[2]["PosX"]
		local nCellY =tChildrenDayMainNPC_Map[2]["PosY"]
		User_UserRandBoundTrans(nMapId,nCellX,nCellY,5,5,1,nUserId)
	end
end

--寻路
function ChildrenDayMainNPC_FindNpc(sType)
	local nUserId =Get_UserId()
	local nMapId = tChildrenDayMainNPC_Map[sType]["MapId"]
	local nCellX =tChildrenDayMainNPC_Map[sType]["PosX"]
	local nCellY =tChildrenDayMainNPC_Map[sType]["PosY"]
	local nNPCId = tChildrenDayMainNPC_Map[sType]["NPCId"]
	if sType=="Play" then 
		local nIndex = math.random(1,5)
		nNPCId = tChildrenDayMainNPC_Map[sType][nIndex]["NPCId"]
		nMapId = tChildrenDayMainNPC_Map[sType][nIndex]["MapId"]
		nCellX =tChildrenDayMainNPC_Map[sType][nIndex]["PosX"]
		nCellY =tChildrenDayMainNPC_Map[sType][nIndex]["PosY"]
	end 
	Sys_GotoSomeWhere(nCellX,nCellY,nMapId,nNPCId)

end 

--补领玩具箱
function ChildrenDayMainNPC_GetToyBox()
	if not Sys_ChkFullTime(tActivityTime["ChildrenDay2020"]["ActivityTime"]) then
		return
	end
	local nChildrenDayMainNPC_UserId =Get_UserId()
--检查玩家身上是否有玩具箱
	if Item_ChkMulItem(tChildrenDayMainNPC_Data["ToysBox"],tChildrenDayMainNPC_Data["ToysBox"],1,0,0,nChildrenDayMainNPC_UserId) then
		return
	end
	RewardTemplate_UseItemAndMsg(tChildrenDayMainNPC_Reward["ToysBox"])
end

----------------------------------NPC部分---------------------------------------------
tNpcFace[5016] = 64
tNpcGossip[26486] = tNpcGossip[26486] or DefaultNpc:new{}
tNpcGossip[26486]["OptionHidden"] = 1
tNpcGossip[26486]["DialogueText"] = tChildrenDayMainNPC_Text[26486]
-- 活动前
tNpcGossip[26486]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[26486]["tOption1-1"] = {111}
tNpcGossip[26486]["ChkFunc1-1"] = function ()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["ChildrenDay2020"]["ActivityTime"])
end

-- 活动后
tNpcGossip[26486]["Text1-2"] = {111,121}
tNpcGossip[26486]["tOption1-2"] = {121}
tNpcGossip[26486]["ChkFunc1-2"] = function ()
	return not Sys_ChkFullTime(tActivityTime["ChildrenDay2020"]["ActivityTime"])
end
--活动中第一次点击 
tNpcGossip[26486]["Text1-3"] = {111,131}
tNpcGossip[26486]["tOption1-3"] = {131}
tNpcGossip[26486]["ChkFunc1-3"] = function ()
	if not Sys_ChkFullTime(tActivityTime["ChildrenDay2020"]["ActivityTime"])then 
		return false
	end 
	if not User_JudgeLevelAndMetempsychosis(tChildrenDayMainNPC_Data["Level"],tChildrenDayMainNPC_Data["Metempsychosis"])then 
		return false
	end 
	ChildrenDayToy_TaskComplete()
	local nChildrenDayMainNPC_Event = tChildrenDayMainNPC_Stc["EventType"]
	local nChildrenDayMainNPC_Type = tChildrenDayMainNPC_Stc["DataType"]["NPC"]
	local nChildrenDayMainNPC_Data = Get_UserStatisticValue(nChildrenDayMainNPC_Event,nChildrenDayMainNPC_Type)
	if nChildrenDayMainNPC_Data>0 then 
		return false
	else  
		return true
	end 
end
--首次点击剧情
tNpcGossip[26486]["OptionFunc131"] = "ChildrenDayMainNPC_NPCPlot"

--活动中等级不足
tNpcGossip[26486]["Text1-4"] = {111,141,142,143,144,145}
tNpcGossip[26486]["tOption1-4"] = {141}
tNpcGossip[26486]["ChkFunc1-4"] = function ()
	return Sys_ChkFullTime(tActivityTime["ChildrenDay2020"]["ActivityTime"]) and (not User_JudgeLevelAndMetempsychosis(tChildrenDayMainNPC_Data["Level"],tChildrenDayMainNPC_Data["Metempsychosis"]))
end

--活动中等级满足
tNpcGossip[26486]["Text1-5"] = {111,151,152,153,154,155,156,158}
tNpcGossip[26486]["tOption1-5"] = {151,153,152,154}
tNpcGossip[26486]["ChkFunc1-5"] = function ()

	local nUserId = Get_SysDynaGlobalData0(tChildrenDayMainNPC_Data["Global"])
	if nUserId ~=0 and nUserId ~=nil then 
		local sUserName = Get_SysDynaGlobalDataStr0(tChildrenDayMainNPC_Data["Global"])
		tNpcGossip[26486]["Text154"] = string.format(tChildrenDayMainNPC_Text[26486]["FirstUser"],sUserName)
	end 
	return Sys_ChkFullTime(tActivityTime["ChildrenDay2020"]["ActivityTime"]) and (User_JudgeLevelAndMetempsychosis(tChildrenDayMainNPC_Data["Level"],tChildrenDayMainNPC_Data["Metempsychosis"]))
end
--进入主地图
tNpcGossip[26486]["OptionFunc151"] = "ChildrenDayMainNPC_EnterMap"
--童趣扭蛋冒险榜
tNpcGossip[26486]["OptionPoint152"] = "2-1"
--查看与领取收集奖励
tNpcGossip[26486]["OptionPoint153"] = "5-1"

tNpcGossip[26486]["OptionFunc154"] = "ChildrenDayMainNPC_GetToyBox"
tNpcGossip[26486]["OptionChkFunc154"] = function ()
	local nChildrenDayMainNPC_UserId =Get_UserId()
	--检查玩家身上是否有玩具箱
	
	if Item_ChkMulItem(tChildrenDayMainNPC_Data["ToysBox"],tChildrenDayMainNPC_Data["ToysBox"],1,0,0,nChildrenDayMainNPC_UserId) then
		return false
	else
		return true
	end
end


--接本服排行榜
tNpcGossip[26486]["Text2-1"] = {211,212,213,2141,2142,2143,2144,2145,2146,2147,2148,2149,21410,215,216,217}
tNpcGossip[26486]["tOption2-1"] = {212,211,213}
tNpcGossip[26486]["ChkFunc2-1"] = function ()
	--tNpcGossip[26486]["Text2-1"] = {211,212,213,2141,2142,2143,2144,2145,2146,2147,2148,2149,21410,215,216,217}
	local tChildrenDayMainNPC_RankingList = RankingFunc_GetNowData(26486) -- 获取排行榜数据
	if tChildrenDayMainNPC_RankingList == nil or #tChildrenDayMainNPC_RankingList == 0 then
		for i =1,10 do 
			tNpcGossip[26486]["Text214"..i] = string.format(tChildrenDayMainNPC_Text[26486]["Text214"..i],i,tChildrenDayMainNPC_Text["NoScore"],tChildrenDayMainNPC_Text["NoScore"])
		end
	else 
		ChildrenDayMainNPC_LookRanking(26486)
	end 
	local nUserId= Get_UserId()
	local nChildrenDayMainNPC_Event = tChildrenDayMainNPC_Stc["ScoreEvent"]
	local nChildrenDayMainNPC_Type = tChildrenDayMainNPC_Stc["ScoreType"] 
	local nChildrenDayMainNPC_Data = Get_UserStatisticValue(nChildrenDayMainNPC_Event,nChildrenDayMainNPC_Type,nUserId)
	tNpcGossip[26486]["Text217"] = string.format(tChildrenDayMainNPC_Text[26486]["Text217"],nChildrenDayMainNPC_Data)
	return Sys_ChkFullTime(tActivityTime["ChildrenDay2020"]["ActivityTime"]) and (User_JudgeLevelAndMetempsychosis(tChildrenDayMainNPC_Data["Level"],tChildrenDayMainNPC_Data["Metempsychosis"]))
end

--查看全球排行榜Func
tNpcGossip[26486]["OptionFunc211"] = "ChildrenDayMainNPC_WebOpenH5</N>26486"
--本服排行榜奖励
tNpcGossip[26486]["OptionPoint212"] = "3-1" 
--积分获取途径
tNpcGossip[26486]["OptionPoint213"] = "4-1"

--接本服排行榜奖励
tNpcGossip[26486]["Text3-1"] = {311,312,313,314,315,316,317,318}
tNpcGossip[26486]["tOption3-1"] = {311}
tNpcGossip[26486]["ChkFunc3-1"] = function ()
	return Sys_ChkFullTime(tActivityTime["ChildrenDay2020"]["ActivityTime"]) and (User_JudgeLevelAndMetempsychosis(tChildrenDayMainNPC_Data["Level"],tChildrenDayMainNPC_Data["Metempsychosis"]))
end

--接积分获取途径
tNpcGossip[26486]["Text4-1"] = {411,412,413,414,415,416,417,418,419,4110,4111}
tNpcGossip[26486]["tOption4-1"] = {411}
tNpcGossip[26486]["ChkFunc4-1"] = function ()
	return Sys_ChkFullTime(tActivityTime["ChildrenDay2020"]["ActivityTime"]) and (User_JudgeLevelAndMetempsychosis(tChildrenDayMainNPC_Data["Level"],tChildrenDayMainNPC_Data["Metempsychosis"]))
end

--进地图提示
tNpcGossip[26486]["Text6-1"] = {611,612,613,614,615,616,617}
tNpcGossip[26486]["tOption6-1"] = {612,611,613}
tNpcGossip[26486]["ChkFunc6-1"] = function ()
	return Sys_ChkFullTime(tActivityTime["ChildrenDay2020"]["ActivityTime"]) and (User_JudgeLevelAndMetempsychosis(tChildrenDayMainNPC_Data["Level"],tChildrenDayMainNPC_Data["Metempsychosis"]))
end

--领斗蛋
tNpcGossip[26486]["OptionFunc611"] = "ChildrenDayMainNPC_FindNpc</S>DD"
tNpcGossip[26486]["OptionChkFunc611"] = function ()
	local nUserId= Get_UserId()
	local nChildrenDayMainNPC_Event = tChildrenDayMainNPC_Stc["EggEvent"]
	local nChildrenDayMainNPC_Type = tChildrenDayMainNPC_Stc["EggType"] 
	--隔天
	if Task_StcInterval(nChildrenDayMainNPC_Event,nChildrenDayMainNPC_Type,1,4,nUserId) then
		return true
	end
	
	local nChildrenDayMainNPC_Data = Get_UserStatisticValue(nChildrenDayMainNPC_Event,nChildrenDayMainNPC_Type,nUserId)
	if  nChildrenDayMainNPC_Data>0 then
		return false
	else 
		return true
	end 
end

--玩游戏
tNpcGossip[26486]["OptionFunc612"] = "ChildrenDayMainNPC_FindNpc</S>Play"
--换扭蛋
tNpcGossip[26486]["OptionFunc613"] = "ChildrenDayMainNPC_FindNpc</S>NDJ"

---------------------------------物品部分---------------------------------------------
--------物品无对白模板
tItem[3316110] = tItem[3316110] or {}
tItem[3316110]["Function"] = function(nItemId)
	RewardTemplate_UseItemAndMsg(tChildrenDayMainNPC_Reward[nItemId])
end
tItem[3316111] = tItem[3316110] or {}
tItem[3316112] = tItem[3316110] or {}
tItem[3316113] = tItem[3316110] or {}
tItem[3316114] = tItem[3316110] or {}
tItem[3316115] = tItem[3316110] or {}
tItem[3316116] = tItem[3316110] or {}
tItem[3316117] = tItem[3316110] or {}

--------物品有对白模板
tItemFace[3316121] = 2909
tItemFace[3316122] = 2910
tItemFace[3316123] = 2911
tItemFace[3316124] = 2912
--365天儿童节武器外套可选包
tItem[3316121] = tItem[3316121] or {}
tItem[3316121]["Text1-1"] = {111}
tItem[3316121]["Text111"] =tChildrenDayMainNPC_Text[3316121]["Text111"]
tItem[3316121]["tOption1-1"] = {1,2}
tItem[3316121]["Option1"] = tChildrenDayMainNPC_Text[3316121]["Option1"]
tItem[3316121]["OptionFunc1"]="ChildrenDayMainNPC_OptionalGift</N>3316121</N>1"

tItem[3316121]["Option2"] = tChildrenDayMainNPC_Text[3316121]["Option2"]
tItem[3316121]["OptionFunc2"]="ChildrenDayMainNPC_OptionalGift</N>3316121</N>2"

--180天儿童节武器外套可选包
tItem[3316122] = tItem[3316122] or {}
tItem[3316122]["Text1-1"] = {111}
tItem[3316122]["Text111"] =tChildrenDayMainNPC_Text[3316122]["Text111"]
tItem[3316122]["tOption1-1"] = {1,2}
tItem[3316122]["Option1"] = tChildrenDayMainNPC_Text[3316122]["Option1"]
tItem[3316122]["OptionFunc1"]="ChildrenDayMainNPC_OptionalGift</N>3316122</N>1"

tItem[3316122]["Option2"] = tChildrenDayMainNPC_Text[3316122]["Option2"]
tItem[3316122]["OptionFunc2"]="ChildrenDayMainNPC_OptionalGift</N>3316122</N>2"

--90天儿童节武器外套可选包
tItem[3316123] = tItem[3316123] or {}
tItem[3316123]["Text1-1"] = {111}
tItem[3316123]["Text111"] =tChildrenDayMainNPC_Text[3316123]["Text111"]
tItem[3316123]["tOption1-1"] = {1,2}
tItem[3316123]["Option1"] = tChildrenDayMainNPC_Text[3316123]["Option1"]
tItem[3316123]["OptionFunc1"]="ChildrenDayMainNPC_OptionalGift</N>3316123</N>1"

tItem[3316123]["Option2"] = tChildrenDayMainNPC_Text[3316123]["Option2"]
tItem[3316123]["OptionFunc2"]="ChildrenDayMainNPC_OptionalGift</N>3316123</N>2"

--60天儿童节武器外套可选包
tItem[3316124] = tItem[3316124] or {}
tItem[3316124]["Text1-1"] = {111}
tItem[3316124]["Text111"] =tChildrenDayMainNPC_Text[3316124]["Text111"]
tItem[3316124]["tOption1-1"] = {1,2}
tItem[3316124]["Option1"] = tChildrenDayMainNPC_Text[3316124]["Option1"]
tItem[3316124]["OptionFunc1"]="ChildrenDayMainNPC_OptionalGift</N>3316124</N>1"

tItem[3316124]["Option2"] = tChildrenDayMainNPC_Text[3316124]["Option2"]
tItem[3316124]["OptionFunc2"]="ChildrenDayMainNPC_OptionalGift</N>3316124</N>2"
---------------------------------陷阱部分---------------------------------------------
tTrap[228] = tTrap[228] or {}
tTrap[228]["Function"] = function(nTrapId,nTrapType)
	ChildrenDayMainNPC_Leave()
end
tLuaEffectEnd["tFunction"] = tLuaEffectEnd["tFunction"] or {}
table.insert(tLuaEffectEnd["tFunction"],ChildrenDayMainNPC_EndPlot)

