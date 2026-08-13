------------------------------------------------------------------------------------
--Name：            191125[英文征服][活动脚本]12月精准推送新增拉收包
--Creator:      林嘉鑫
--Created:     2019-11-25
------------------------------------------------------------------------------------
--任务需求：

------------------------------------------------------------------------------------


----------------------------------表配置部分-------------------------------------------
local tDecPrecisionPushPlus_Cont = {}
	tDecPrecisionPushPlus_Cont[3327096] = {}
	tDecPrecisionPushPlus_Cont[3327096]["Num"] = 26
	
	tDecPrecisionPushPlus_Cont[3327097] = {}
	tDecPrecisionPushPlus_Cont[3327097]["Num"] = 5


local tDecPrecisionPushPlus_Pack = {}
	-- ===炼气+1狂欢包
	-- ===索引: tDecPrecisionPushPlus_Pack[3327089]
	-- ===删除: 3327089,1
	-- ===EmoneyLog: 350,22894
	tDecPrecisionPushPlus_Pack[3327089] = {}
	tDecPrecisionPushPlus_Pack[3327089]["LogId"] = 12001759
	tDecPrecisionPushPlus_Pack[3327089]["EmoneyLog"] = "350	22894	0	0	1	"
	tDecPrecisionPushPlus_Pack[3327089]["DeleteItem"] = {}
	tDecPrecisionPushPlus_Pack[3327089]["DeleteItem"][1] = {}
	tDecPrecisionPushPlus_Pack[3327089]["DeleteItem"][1]["Id"] = 3327089 -- 【库】ChiBooster(+1)Box[属性:9]
	tDecPrecisionPushPlus_Pack[3327089]["RewardItem"] = {}
	tDecPrecisionPushPlus_Pack[3327089]["RewardItem"][1] = {}
	tDecPrecisionPushPlus_Pack[3327089]["RewardItem"][1]["Id"] = 711903 -- ChiBooster(+1)[711903][属性:9][叠加:100][金币:0], 【表格】炼气+1道具
	tDecPrecisionPushPlus_Pack[3327089]["RewardItem"][1]["Attr"] = "0 1" -- ChiBooster(+1)*1
	tDecPrecisionPushPlus_Pack[3327089]["RewardEffect"] = {}
	tDecPrecisionPushPlus_Pack[3327089]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPushPlus_Pack[3327089]["RewardEffect"]["Effect"] = "angelwing"


	tDecPrecisionPushPlus_Pack[3327090] = {}
	-- ===自创武功魔性球狂欢包
	-- ===索引: tDecPrecisionPushPlus_Pack[3327090]
	-- ===删除: 3327090,1
	-- ===EmoneyLog: 350,22895
	tDecPrecisionPushPlus_Pack[3327090]["LogId"] = 12001759
	tDecPrecisionPushPlus_Pack[3327090]["EmoneyLog"] = "350	22895	0	0	1	"
	tDecPrecisionPushPlus_Pack[3327090]["DeleteItem"] = {}
	tDecPrecisionPushPlus_Pack[3327090]["DeleteItem"][1] = {}
	tDecPrecisionPushPlus_Pack[3327090]["DeleteItem"][1]["Id"] = 3327090 -- 【库】JiangHuEpicBallBox[属性:9]
	tDecPrecisionPushPlus_Pack[3327090]["RewardItem"] = {}
	tDecPrecisionPushPlus_Pack[3327090]["RewardItem"][1] = {}
	tDecPrecisionPushPlus_Pack[3327090]["RewardItem"][1]["Id"] = 711904 -- JiangHuEpicBall[711904][属性:9][叠加:100][金币:0], 【表格】自创武功魔性球
	tDecPrecisionPushPlus_Pack[3327090]["RewardItem"][1]["Attr"] = "0 3" -- JiangHuEpicBall*3
	tDecPrecisionPushPlus_Pack[3327090]["RewardEffect"] = {}
	tDecPrecisionPushPlus_Pack[3327090]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPushPlus_Pack[3327090]["RewardEffect"]["Effect"] = "angelwing"


	tDecPrecisionPushPlus_Pack[3327091] = {}
	-- ===散功丹特卖包
	-- ===索引: tDecPrecisionPushPlus_Pack[3327091]
	-- ===删除: 3327091,1
	-- ===EmoneyLog: 350,22896
	tDecPrecisionPushPlus_Pack[3327091]["LogId"] = 12001759
	tDecPrecisionPushPlus_Pack[3327091]["EmoneyLog"] = "350	22896	0	0	1	"
	tDecPrecisionPushPlus_Pack[3327091]["DeleteItem"] = {}
	tDecPrecisionPushPlus_Pack[3327091]["DeleteItem"][1] = {}
	tDecPrecisionPushPlus_Pack[3327091]["DeleteItem"][1]["Id"] = 3327091 -- 【库】PowerEraser(B)Box[属性:9]
	tDecPrecisionPushPlus_Pack[3327091]["RewardItem"] = {}
	tDecPrecisionPushPlus_Pack[3327091]["RewardItem"][1] = {}
	tDecPrecisionPushPlus_Pack[3327091]["RewardItem"][1]["Id"] = 3005412 -- PowerEraser[3005412][属性:0][叠加:10000][金币:0], 【表格】散功丹
	tDecPrecisionPushPlus_Pack[3327091]["RewardItem"][1]["Attr"] = "0 10 3" -- PowerEraser（赠）*10
	tDecPrecisionPushPlus_Pack[3327091]["RewardEffect"] = {}
	tDecPrecisionPushPlus_Pack[3327091]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPushPlus_Pack[3327091]["RewardEffect"]["Effect"] = "angelwing"


	tDecPrecisionPushPlus_Pack[3327092] = {}
	-- ===散功丹狂欢包
	-- ===索引: tDecPrecisionPushPlus_Pack[3327092]
	-- ===删除: 3327092,1
	-- ===EmoneyLog: 350,22897
	tDecPrecisionPushPlus_Pack[3327092]["LogId"] = 12001759
	tDecPrecisionPushPlus_Pack[3327092]["EmoneyLog"] = "350	22897	0	0	1	"
	tDecPrecisionPushPlus_Pack[3327092]["DeleteItem"] = {}
	tDecPrecisionPushPlus_Pack[3327092]["DeleteItem"][1] = {}
	tDecPrecisionPushPlus_Pack[3327092]["DeleteItem"][1]["Id"] = 3327092 -- 【库】LuxuryPowerEraser(B)Box[属性:9]
	tDecPrecisionPushPlus_Pack[3327092]["RewardItem"] = {}
	tDecPrecisionPushPlus_Pack[3327092]["RewardItem"][1] = {}
	tDecPrecisionPushPlus_Pack[3327092]["RewardItem"][1]["Id"] = 3005412 -- PowerEraser[3005412][属性:0][叠加:10000][金币:0], 【表格】散功丹
	tDecPrecisionPushPlus_Pack[3327092]["RewardItem"][1]["Attr"] = "0 30 3" -- PowerEraser（赠）*30
	tDecPrecisionPushPlus_Pack[3327092]["RewardEffect"] = {}
	tDecPrecisionPushPlus_Pack[3327092]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPushPlus_Pack[3327092]["RewardEffect"]["Effect"] = "angelwing"


	tDecPrecisionPushPlus_Pack[3327093] = {}
	-- ===高阶灵珠经典包
	-- ===索引: tDecPrecisionPushPlus_Pack[3327093]
	-- ===删除: 3327093,1
	-- ===EmoneyLog: 350,22898
	tDecPrecisionPushPlus_Pack[3327093]["LogId"] = 12001759
	tDecPrecisionPushPlus_Pack[3327093]["EmoneyLog"] = "350	22898	0	0	1	"
	tDecPrecisionPushPlus_Pack[3327093]["DeleteItem"] = {}
	tDecPrecisionPushPlus_Pack[3327093]["DeleteItem"][1] = {}
	tDecPrecisionPushPlus_Pack[3327093]["DeleteItem"][1]["Id"] = 3327093 -- 【库】P16AnimaBox[属性:9]
	tDecPrecisionPushPlus_Pack[3327093]["RewardItem"] = {}
	tDecPrecisionPushPlus_Pack[3327093]["RewardItem"][1] = {}
	tDecPrecisionPushPlus_Pack[3327093]["RewardItem"][1]["Id"] = 4200016 -- P16Anima[4200016][属性:72][叠加:99][金币:0], 【表格】P16 灵珠
	tDecPrecisionPushPlus_Pack[3327093]["RewardItem"][1]["Attr"] = "0 1" -- P16Anima*1
	tDecPrecisionPushPlus_Pack[3327093]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tDecPrecisionPushPlus_Pack[3327093]["RewardEffect"] = {}
	tDecPrecisionPushPlus_Pack[3327093]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPushPlus_Pack[3327093]["RewardEffect"]["Effect"] = "angelwing"


	tDecPrecisionPushPlus_Pack[3327094] = {}
	-- ===特级灵珠特卖包
	-- ===索引: tDecPrecisionPushPlus_Pack[3327094]
	-- ===删除: 3327094,1
	-- ===EmoneyLog: 350,22899
	tDecPrecisionPushPlus_Pack[3327094]["LogId"] = 12001759
	tDecPrecisionPushPlus_Pack[3327094]["EmoneyLog"] = "350	22899	0	0	1	"
	tDecPrecisionPushPlus_Pack[3327094]["DeleteItem"] = {}
	tDecPrecisionPushPlus_Pack[3327094]["DeleteItem"][1] = {}
	tDecPrecisionPushPlus_Pack[3327094]["DeleteItem"][1]["Id"] = 3327094 -- 【库】P17AnimaBox[属性:9]
	tDecPrecisionPushPlus_Pack[3327094]["RewardItem"] = {}
	tDecPrecisionPushPlus_Pack[3327094]["RewardItem"][1] = {}
	tDecPrecisionPushPlus_Pack[3327094]["RewardItem"][1]["Id"] = 4200017 -- P17Anima[4200017][属性:72][叠加:99][金币:0], 【表格】P17 灵珠
	tDecPrecisionPushPlus_Pack[3327094]["RewardItem"][1]["Attr"] = "0 1" -- P17Anima*1
	tDecPrecisionPushPlus_Pack[3327094]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tDecPrecisionPushPlus_Pack[3327094]["RewardEffect"] = {}
	tDecPrecisionPushPlus_Pack[3327094]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPushPlus_Pack[3327094]["RewardEffect"]["Effect"] = "angelwing"


	tDecPrecisionPushPlus_Pack[3327095] = {}
	-- ===顶级灵珠狂欢包
	-- ===索引: tDecPrecisionPushPlus_Pack[3327095]
	-- ===删除: 3327095,1
	-- ===EmoneyLog: 350,22900
	tDecPrecisionPushPlus_Pack[3327095]["LogId"] = 12001759
	tDecPrecisionPushPlus_Pack[3327095]["EmoneyLog"] = "350	22900	0	0	1	"
	tDecPrecisionPushPlus_Pack[3327095]["DeleteItem"] = {}
	tDecPrecisionPushPlus_Pack[3327095]["DeleteItem"][1] = {}
	tDecPrecisionPushPlus_Pack[3327095]["DeleteItem"][1]["Id"] = 3327095 -- 【库】P18AnimaBox[属性:9]
	tDecPrecisionPushPlus_Pack[3327095]["RewardItem"] = {}
	tDecPrecisionPushPlus_Pack[3327095]["RewardItem"][1] = {}
	tDecPrecisionPushPlus_Pack[3327095]["RewardItem"][1]["Id"] = 4200018 -- P18Anima[4200018][属性:72][叠加:99][金币:0], 【表格】P18 灵珠
	tDecPrecisionPushPlus_Pack[3327095]["RewardItem"][1]["Attr"] = "0 1" -- P18Anima*1
	tDecPrecisionPushPlus_Pack[3327095]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tDecPrecisionPushPlus_Pack[3327095]["RewardEffect"] = {}
	tDecPrecisionPushPlus_Pack[3327095]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPushPlus_Pack[3327095]["RewardEffect"]["Effect"] = "angelwing"


	tDecPrecisionPushPlus_Pack[3327096] = {}
	-- ===1级黄色稀有神纹自选包
	-- ===索引: tDecPrecisionPushPlus_Pack[3327096][1]
	-- ===删除: 3327096,1
	-- ===EmoneyLog: 350,22901
	tDecPrecisionPushPlus_Pack[3327096][1] = {}
	tDecPrecisionPushPlus_Pack[3327096][1]["LogId"] = 12001759
	tDecPrecisionPushPlus_Pack[3327096][1]["EmoneyLog"] = "350	22901	0	0	1	"
	tDecPrecisionPushPlus_Pack[3327096][1]["DeleteItem"] = {}
	tDecPrecisionPushPlus_Pack[3327096][1]["DeleteItem"][1] = {}
	tDecPrecisionPushPlus_Pack[3327096][1]["DeleteItem"][1]["Id"] = 3327096 -- 【库】+1RareYellowRune(B)SelectionBox+1[属性:9]
	tDecPrecisionPushPlus_Pack[3327096][1]["RewardItem"] = {}
	tDecPrecisionPushPlus_Pack[3327096][1]["RewardItem"][1] = {}
	tDecPrecisionPushPlus_Pack[3327096][1]["RewardItem"][1]["Id"] = 4032001 -- Sanctity(+1)[4032001][属性:8][叠加:0][金币:0], 【表格】神罗天征
	tDecPrecisionPushPlus_Pack[3327096][1]["RewardItem"][1]["Attr"] = "0 1 3" -- Sanctity(+1)（赠）*1
	tDecPrecisionPushPlus_Pack[3327096][1]["RewardEffect"] = {}
	tDecPrecisionPushPlus_Pack[3327096][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPushPlus_Pack[3327096][1]["RewardEffect"]["Effect"] = "angelwing"


	tDecPrecisionPushPlus_Pack[3327096][2] = {}
	-- ===1级黄色稀有神纹自选包
	-- ===索引: tDecPrecisionPushPlus_Pack[3327096][2]
	-- ===删除: 3327096,1
	-- ===EmoneyLog: 350,22901
	tDecPrecisionPushPlus_Pack[3327096][2]["LogId"] = 12001759
	tDecPrecisionPushPlus_Pack[3327096][2]["EmoneyLog"] = "350	22901	0	0	1	"
	tDecPrecisionPushPlus_Pack[3327096][2]["DeleteItem"] = {}
	tDecPrecisionPushPlus_Pack[3327096][2]["DeleteItem"][1] = {}
	tDecPrecisionPushPlus_Pack[3327096][2]["DeleteItem"][1]["Id"] = 3327096 -- 【库】+1RareYellowRune(B)SelectionBox+1[属性:9]
	tDecPrecisionPushPlus_Pack[3327096][2]["RewardItem"] = {}
	tDecPrecisionPushPlus_Pack[3327096][2]["RewardItem"][1] = {}
	tDecPrecisionPushPlus_Pack[3327096][2]["RewardItem"][1]["Id"] = 4032101 -- FireBlast(+1)[4032101][属性:8][叠加:0][金币:0], 【表格】爆炎诀
	tDecPrecisionPushPlus_Pack[3327096][2]["RewardItem"][1]["Attr"] = "0 1 3" -- FireBlast(+1)（赠）*1
	tDecPrecisionPushPlus_Pack[3327096][2]["RewardEffect"] = {}
	tDecPrecisionPushPlus_Pack[3327096][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPushPlus_Pack[3327096][2]["RewardEffect"]["Effect"] = "angelwing"


	tDecPrecisionPushPlus_Pack[3327096][3] = {}
	-- ===1级黄色稀有神纹自选包
	-- ===索引: tDecPrecisionPushPlus_Pack[3327096][3]
	-- ===删除: 3327096,1
	-- ===EmoneyLog: 350,22901
	tDecPrecisionPushPlus_Pack[3327096][3]["LogId"] = 12001759
	tDecPrecisionPushPlus_Pack[3327096][3]["EmoneyLog"] = "350	22901	0	0	1	"
	tDecPrecisionPushPlus_Pack[3327096][3]["DeleteItem"] = {}
	tDecPrecisionPushPlus_Pack[3327096][3]["DeleteItem"][1] = {}
	tDecPrecisionPushPlus_Pack[3327096][3]["DeleteItem"][1]["Id"] = 3327096 -- 【库】+1RareYellowRune(B)SelectionBox+1[属性:9]
	tDecPrecisionPushPlus_Pack[3327096][3]["RewardItem"] = {}
	tDecPrecisionPushPlus_Pack[3327096][3]["RewardItem"][1] = {}
	tDecPrecisionPushPlus_Pack[3327096][3]["RewardItem"][1]["Id"] = 4032201 -- Serenity(+1)[4032201][属性:8][叠加:0][金币:0], 【表格】清心诀
	tDecPrecisionPushPlus_Pack[3327096][3]["RewardItem"][1]["Attr"] = "0 1 3" -- Serenity(+1)（赠）*1
	tDecPrecisionPushPlus_Pack[3327096][3]["RewardEffect"] = {}
	tDecPrecisionPushPlus_Pack[3327096][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPushPlus_Pack[3327096][3]["RewardEffect"]["Effect"] = "angelwing"


	tDecPrecisionPushPlus_Pack[3327096][4] = {}
	-- ===1级黄色稀有神纹自选包
	-- ===索引: tDecPrecisionPushPlus_Pack[3327096][4]
	-- ===删除: 3327096,1
	-- ===EmoneyLog: 350,22901
	tDecPrecisionPushPlus_Pack[3327096][4]["LogId"] = 12001759
	tDecPrecisionPushPlus_Pack[3327096][4]["EmoneyLog"] = "350	22901	0	0	1	"
	tDecPrecisionPushPlus_Pack[3327096][4]["DeleteItem"] = {}
	tDecPrecisionPushPlus_Pack[3327096][4]["DeleteItem"][1] = {}
	tDecPrecisionPushPlus_Pack[3327096][4]["DeleteItem"][1]["Id"] = 3327096 -- 【库】+1RareYellowRune(B)SelectionBox+1[属性:9]
	tDecPrecisionPushPlus_Pack[3327096][4]["RewardItem"] = {}
	tDecPrecisionPushPlus_Pack[3327096][4]["RewardItem"][1] = {}
	tDecPrecisionPushPlus_Pack[3327096][4]["RewardItem"][1]["Id"] = 4032301 -- Wonder(+1)[4032301][属性:8][叠加:0][金币:0], 【表格】天衣无缝
	tDecPrecisionPushPlus_Pack[3327096][4]["RewardItem"][1]["Attr"] = "0 1 3" -- Wonder(+1)（赠）*1
	tDecPrecisionPushPlus_Pack[3327096][4]["RewardEffect"] = {}
	tDecPrecisionPushPlus_Pack[3327096][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPushPlus_Pack[3327096][4]["RewardEffect"]["Effect"] = "angelwing"


	tDecPrecisionPushPlus_Pack[3327096][5] = {}
	-- ===1级黄色稀有神纹自选包
	-- ===索引: tDecPrecisionPushPlus_Pack[3327096][5]
	-- ===删除: 3327096,1
	-- ===EmoneyLog: 350,22901
	tDecPrecisionPushPlus_Pack[3327096][5]["LogId"] = 12001759
	tDecPrecisionPushPlus_Pack[3327096][5]["EmoneyLog"] = "350	22901	0	0	1	"
	tDecPrecisionPushPlus_Pack[3327096][5]["DeleteItem"] = {}
	tDecPrecisionPushPlus_Pack[3327096][5]["DeleteItem"][1] = {}
	tDecPrecisionPushPlus_Pack[3327096][5]["DeleteItem"][1]["Id"] = 3327096 -- 【库】+1RareYellowRune(B)SelectionBox+1[属性:9]
	tDecPrecisionPushPlus_Pack[3327096][5]["RewardItem"] = {}
	tDecPrecisionPushPlus_Pack[3327096][5]["RewardItem"][1] = {}
	tDecPrecisionPushPlus_Pack[3327096][5]["RewardItem"][1]["Id"] = 4032401 -- SoulChant(+1)[4032401][属性:8][叠加:0][金币:0], 【表格】祭灵诀
	tDecPrecisionPushPlus_Pack[3327096][5]["RewardItem"][1]["Attr"] = "0 1 3" -- SoulChant(+1)（赠）*1
	tDecPrecisionPushPlus_Pack[3327096][5]["RewardEffect"] = {}
	tDecPrecisionPushPlus_Pack[3327096][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPushPlus_Pack[3327096][5]["RewardEffect"]["Effect"] = "angelwing"


	tDecPrecisionPushPlus_Pack[3327096][6] = {}
	-- ===1级黄色稀有神纹自选包
	-- ===索引: tDecPrecisionPushPlus_Pack[3327096][6]
	-- ===删除: 3327096,1
	-- ===EmoneyLog: 350,22901
	tDecPrecisionPushPlus_Pack[3327096][6]["LogId"] = 12001759
	tDecPrecisionPushPlus_Pack[3327096][6]["EmoneyLog"] = "350	22901	0	0	1	"
	tDecPrecisionPushPlus_Pack[3327096][6]["DeleteItem"] = {}
	tDecPrecisionPushPlus_Pack[3327096][6]["DeleteItem"][1] = {}
	tDecPrecisionPushPlus_Pack[3327096][6]["DeleteItem"][1]["Id"] = 3327096 -- 【库】+1RareYellowRune(B)SelectionBox+1[属性:9]
	tDecPrecisionPushPlus_Pack[3327096][6]["RewardItem"] = {}
	tDecPrecisionPushPlus_Pack[3327096][6]["RewardItem"][1] = {}
	tDecPrecisionPushPlus_Pack[3327096][6]["RewardItem"][1]["Id"] = 4032501 -- WideSwipe(+1)[4032501][属性:8][叠加:0][金币:0], 【表格】横扫千军
	tDecPrecisionPushPlus_Pack[3327096][6]["RewardItem"][1]["Attr"] = "0 1 3" -- WideSwipe(+1)（赠）*1
	tDecPrecisionPushPlus_Pack[3327096][6]["RewardEffect"] = {}
	tDecPrecisionPushPlus_Pack[3327096][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPushPlus_Pack[3327096][6]["RewardEffect"]["Effect"] = "angelwing"


	tDecPrecisionPushPlus_Pack[3327096][7] = {}
	-- ===1级黄色稀有神纹自选包
	-- ===索引: tDecPrecisionPushPlus_Pack[3327096][7]
	-- ===删除: 3327096,1
	-- ===EmoneyLog: 350,22901
	tDecPrecisionPushPlus_Pack[3327096][7]["LogId"] = 12001759
	tDecPrecisionPushPlus_Pack[3327096][7]["EmoneyLog"] = "350	22901	0	0	1	"
	tDecPrecisionPushPlus_Pack[3327096][7]["DeleteItem"] = {}
	tDecPrecisionPushPlus_Pack[3327096][7]["DeleteItem"][1] = {}
	tDecPrecisionPushPlus_Pack[3327096][7]["DeleteItem"][1]["Id"] = 3327096 -- 【库】+1RareYellowRune(B)SelectionBox+1[属性:9]
	tDecPrecisionPushPlus_Pack[3327096][7]["RewardItem"] = {}
	tDecPrecisionPushPlus_Pack[3327096][7]["RewardItem"][1] = {}
	tDecPrecisionPushPlus_Pack[3327096][7]["RewardItem"][1]["Id"] = 4032601 -- Nirvana(+1)[4032601][属性:8][叠加:0][金币:0], 【表格】涅槃重生
	tDecPrecisionPushPlus_Pack[3327096][7]["RewardItem"][1]["Attr"] = "0 1 3" -- Nirvana(+1)（赠）*1
	tDecPrecisionPushPlus_Pack[3327096][7]["RewardEffect"] = {}
	tDecPrecisionPushPlus_Pack[3327096][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPushPlus_Pack[3327096][7]["RewardEffect"]["Effect"] = "angelwing"


	tDecPrecisionPushPlus_Pack[3327096][8] = {}
	-- ===1级黄色稀有神纹自选包
	-- ===索引: tDecPrecisionPushPlus_Pack[3327096][8]
	-- ===删除: 3327096,1
	-- ===EmoneyLog: 350,22901
	tDecPrecisionPushPlus_Pack[3327096][8]["LogId"] = 12001759
	tDecPrecisionPushPlus_Pack[3327096][8]["EmoneyLog"] = "350	22901	0	0	1	"
	tDecPrecisionPushPlus_Pack[3327096][8]["DeleteItem"] = {}
	tDecPrecisionPushPlus_Pack[3327096][8]["DeleteItem"][1] = {}
	tDecPrecisionPushPlus_Pack[3327096][8]["DeleteItem"][1]["Id"] = 3327096 -- 【库】+1RareYellowRune(B)SelectionBox+1[属性:9]
	tDecPrecisionPushPlus_Pack[3327096][8]["RewardItem"] = {}
	tDecPrecisionPushPlus_Pack[3327096][8]["RewardItem"][1] = {}
	tDecPrecisionPushPlus_Pack[3327096][8]["RewardItem"][1]["Id"] = 4032701 -- Sharpness(+1)[4032701][属性:8][叠加:0][金币:0], 【表格】锋芒毕露
	tDecPrecisionPushPlus_Pack[3327096][8]["RewardItem"][1]["Attr"] = "0 1 3" -- Sharpness(+1)（赠）*1
	tDecPrecisionPushPlus_Pack[3327096][8]["RewardEffect"] = {}
	tDecPrecisionPushPlus_Pack[3327096][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPushPlus_Pack[3327096][8]["RewardEffect"]["Effect"] = "angelwing"


	tDecPrecisionPushPlus_Pack[3327096][9] = {}
	-- ===1级黄色稀有神纹自选包
	-- ===索引: tDecPrecisionPushPlus_Pack[3327096][9]
	-- ===删除: 3327096,1
	-- ===EmoneyLog: 350,22901
	tDecPrecisionPushPlus_Pack[3327096][9]["LogId"] = 12001759
	tDecPrecisionPushPlus_Pack[3327096][9]["EmoneyLog"] = "350	22901	0	0	1	"
	tDecPrecisionPushPlus_Pack[3327096][9]["DeleteItem"] = {}
	tDecPrecisionPushPlus_Pack[3327096][9]["DeleteItem"][1] = {}
	tDecPrecisionPushPlus_Pack[3327096][9]["DeleteItem"][1]["Id"] = 3327096 -- 【库】+1RareYellowRune(B)SelectionBox+1[属性:9]
	tDecPrecisionPushPlus_Pack[3327096][9]["RewardItem"] = {}
	tDecPrecisionPushPlus_Pack[3327096][9]["RewardItem"][1] = {}
	tDecPrecisionPushPlus_Pack[3327096][9]["RewardItem"][1]["Id"] = 4032801 -- Evocation(+1)[4032801][属性:8][叠加:0][金币:0], 【表格】魂兮归来
	tDecPrecisionPushPlus_Pack[3327096][9]["RewardItem"][1]["Attr"] = "0 1 3" -- Evocation(+1)（赠）*1
	tDecPrecisionPushPlus_Pack[3327096][9]["RewardEffect"] = {}
	tDecPrecisionPushPlus_Pack[3327096][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPushPlus_Pack[3327096][9]["RewardEffect"]["Effect"] = "angelwing"


	tDecPrecisionPushPlus_Pack[3327096][10] = {}
	-- ===1级黄色稀有神纹自选包
	-- ===索引: tDecPrecisionPushPlus_Pack[3327096][10]
	-- ===删除: 3327096,1
	-- ===EmoneyLog: 350,22901
	tDecPrecisionPushPlus_Pack[3327096][10]["LogId"] = 12001759
	tDecPrecisionPushPlus_Pack[3327096][10]["EmoneyLog"] = "350	22901	0	0	1	"
	tDecPrecisionPushPlus_Pack[3327096][10]["DeleteItem"] = {}
	tDecPrecisionPushPlus_Pack[3327096][10]["DeleteItem"][1] = {}
	tDecPrecisionPushPlus_Pack[3327096][10]["DeleteItem"][1]["Id"] = 3327096 -- 【库】+1RareYellowRune(B)SelectionBox+1[属性:9]
	tDecPrecisionPushPlus_Pack[3327096][10]["RewardItem"] = {}
	tDecPrecisionPushPlus_Pack[3327096][10]["RewardItem"][1] = {}
	tDecPrecisionPushPlus_Pack[3327096][10]["RewardItem"][1]["Id"] = 4031601 -- Barrier(+1)[4031601][属性:8][叠加:0][金币:0], 【表格】玄武护体
	tDecPrecisionPushPlus_Pack[3327096][10]["RewardItem"][1]["Attr"] = "0 1 3" -- Barrier(+1)（赠）*1
	tDecPrecisionPushPlus_Pack[3327096][10]["RewardEffect"] = {}
	tDecPrecisionPushPlus_Pack[3327096][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPushPlus_Pack[3327096][10]["RewardEffect"]["Effect"] = "angelwing"


	tDecPrecisionPushPlus_Pack[3327096][11] = {}
	-- ===1级黄色稀有神纹自选包
	-- ===索引: tDecPrecisionPushPlus_Pack[3327096][11]
	-- ===删除: 3327096,1
	-- ===EmoneyLog: 350,22901
	tDecPrecisionPushPlus_Pack[3327096][11]["LogId"] = 12001759
	tDecPrecisionPushPlus_Pack[3327096][11]["EmoneyLog"] = "350	22901	0	0	1	"
	tDecPrecisionPushPlus_Pack[3327096][11]["DeleteItem"] = {}
	tDecPrecisionPushPlus_Pack[3327096][11]["DeleteItem"][1] = {}
	tDecPrecisionPushPlus_Pack[3327096][11]["DeleteItem"][1]["Id"] = 3327096 -- 【库】+1RareYellowRune(B)SelectionBox+1[属性:9]
	tDecPrecisionPushPlus_Pack[3327096][11]["RewardItem"] = {}
	tDecPrecisionPushPlus_Pack[3327096][11]["RewardItem"][1] = {}
	tDecPrecisionPushPlus_Pack[3327096][11]["RewardItem"][1]["Id"] = 4031501 -- Breakdown(+1)[4031501][属性:8][叠加:0][金币:0], 【表格】攻城掠地
	tDecPrecisionPushPlus_Pack[3327096][11]["RewardItem"][1]["Attr"] = "0 1 3" -- Breakdown(+1)（赠）*1
	tDecPrecisionPushPlus_Pack[3327096][11]["RewardEffect"] = {}
	tDecPrecisionPushPlus_Pack[3327096][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPushPlus_Pack[3327096][11]["RewardEffect"]["Effect"] = "angelwing"


	tDecPrecisionPushPlus_Pack[3327096][12] = {}
	-- ===1级黄色稀有神纹自选包
	-- ===索引: tDecPrecisionPushPlus_Pack[3327096][12]
	-- ===删除: 3327096,1
	-- ===EmoneyLog: 350,22901
	tDecPrecisionPushPlus_Pack[3327096][12]["LogId"] = 12001759
	tDecPrecisionPushPlus_Pack[3327096][12]["EmoneyLog"] = "350	22901	0	0	1	"
	tDecPrecisionPushPlus_Pack[3327096][12]["DeleteItem"] = {}
	tDecPrecisionPushPlus_Pack[3327096][12]["DeleteItem"][1] = {}
	tDecPrecisionPushPlus_Pack[3327096][12]["DeleteItem"][1]["Id"] = 3327096 -- 【库】+1RareYellowRune(B)SelectionBox+1[属性:9]
	tDecPrecisionPushPlus_Pack[3327096][12]["RewardItem"] = {}
	tDecPrecisionPushPlus_Pack[3327096][12]["RewardItem"][1] = {}
	tDecPrecisionPushPlus_Pack[3327096][12]["RewardItem"][1]["Id"] = 4031401 -- QuickMount(+1)[4031401][属性:8][叠加:0][金币:0], 【表格】策马扬鞭
	tDecPrecisionPushPlus_Pack[3327096][12]["RewardItem"][1]["Attr"] = "0 1 3" -- QuickMount(+1)（赠）*1
	tDecPrecisionPushPlus_Pack[3327096][12]["RewardEffect"] = {}
	tDecPrecisionPushPlus_Pack[3327096][12]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPushPlus_Pack[3327096][12]["RewardEffect"]["Effect"] = "angelwing"


	tDecPrecisionPushPlus_Pack[3327096][13] = {}
	-- ===1级黄色稀有神纹自选包
	-- ===索引: tDecPrecisionPushPlus_Pack[3327096][13]
	-- ===删除: 3327096,1
	-- ===EmoneyLog: 350,22901
	tDecPrecisionPushPlus_Pack[3327096][13]["LogId"] = 12001759
	tDecPrecisionPushPlus_Pack[3327096][13]["EmoneyLog"] = "350	22901	0	0	1	"
	tDecPrecisionPushPlus_Pack[3327096][13]["DeleteItem"] = {}
	tDecPrecisionPushPlus_Pack[3327096][13]["DeleteItem"][1] = {}
	tDecPrecisionPushPlus_Pack[3327096][13]["DeleteItem"][1]["Id"] = 3327096 -- 【库】+1RareYellowRune(B)SelectionBox+1[属性:9]
	tDecPrecisionPushPlus_Pack[3327096][13]["RewardItem"] = {}
	tDecPrecisionPushPlus_Pack[3327096][13]["RewardItem"][1] = {}
	tDecPrecisionPushPlus_Pack[3327096][13]["RewardItem"][1]["Id"] = 4034001 -- DivineShield(+1)[4034001][属性:8][叠加:0][金币:0], 【表格】乾坤护法
	tDecPrecisionPushPlus_Pack[3327096][13]["RewardItem"][1]["Attr"] = "0 1 3" -- DivineShield(+1)（赠）*1
	tDecPrecisionPushPlus_Pack[3327096][13]["RewardEffect"] = {}
	tDecPrecisionPushPlus_Pack[3327096][13]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPushPlus_Pack[3327096][13]["RewardEffect"]["Effect"] = "angelwing"


	tDecPrecisionPushPlus_Pack[3327096][14] = {}
	-- ===1级黄色稀有神纹自选包
	-- ===索引: tDecPrecisionPushPlus_Pack[3327096][14]
	-- ===删除: 3327096,1
	-- ===EmoneyLog: 350,22901
	tDecPrecisionPushPlus_Pack[3327096][14]["LogId"] = 12001759
	tDecPrecisionPushPlus_Pack[3327096][14]["EmoneyLog"] = "350	22901	0	0	1	"
	tDecPrecisionPushPlus_Pack[3327096][14]["DeleteItem"] = {}
	tDecPrecisionPushPlus_Pack[3327096][14]["DeleteItem"][1] = {}
	tDecPrecisionPushPlus_Pack[3327096][14]["DeleteItem"][1]["Id"] = 3327096 -- 【库】+1RareYellowRune(B)SelectionBox+1[属性:9]
	tDecPrecisionPushPlus_Pack[3327096][14]["RewardItem"] = {}
	tDecPrecisionPushPlus_Pack[3327096][14]["RewardItem"][1] = {}
	tDecPrecisionPushPlus_Pack[3327096][14]["RewardItem"][1]["Id"] = 4033901 -- ReverseMagic(+1)[4033901][属性:8][叠加:0][金币:0], 【表格】斗转星移
	tDecPrecisionPushPlus_Pack[3327096][14]["RewardItem"][1]["Attr"] = "0 1 3" -- ReverseMagic(+1)（赠）*1
	tDecPrecisionPushPlus_Pack[3327096][14]["RewardEffect"] = {}
	tDecPrecisionPushPlus_Pack[3327096][14]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPushPlus_Pack[3327096][14]["RewardEffect"]["Effect"] = "angelwing"


	tDecPrecisionPushPlus_Pack[3327096][15] = {}
	-- ===1级黄色稀有神纹自选包
	-- ===索引: tDecPrecisionPushPlus_Pack[3327096][15]
	-- ===删除: 3327096,1
	-- ===EmoneyLog: 350,22901
	tDecPrecisionPushPlus_Pack[3327096][15]["LogId"] = 12001759
	tDecPrecisionPushPlus_Pack[3327096][15]["EmoneyLog"] = "350	22901	0	0	1	"
	tDecPrecisionPushPlus_Pack[3327096][15]["DeleteItem"] = {}
	tDecPrecisionPushPlus_Pack[3327096][15]["DeleteItem"][1] = {}
	tDecPrecisionPushPlus_Pack[3327096][15]["DeleteItem"][1]["Id"] = 3327096 -- 【库】+1RareYellowRune(B)SelectionBox+1[属性:9]
	tDecPrecisionPushPlus_Pack[3327096][15]["RewardItem"] = {}
	tDecPrecisionPushPlus_Pack[3327096][15]["RewardItem"][1] = {}
	tDecPrecisionPushPlus_Pack[3327096][15]["RewardItem"][1]["Id"] = 4033401 -- TacitStrike(+1)[4033401][属性:8][叠加:0][金币:0], 【表格】会心一击
	tDecPrecisionPushPlus_Pack[3327096][15]["RewardItem"][1]["Attr"] = "0 1 3" -- TacitStrike(+1)（赠）*1
	tDecPrecisionPushPlus_Pack[3327096][15]["RewardEffect"] = {}
	tDecPrecisionPushPlus_Pack[3327096][15]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPushPlus_Pack[3327096][15]["RewardEffect"]["Effect"] = "angelwing"


	tDecPrecisionPushPlus_Pack[3327096][16] = {}
	-- ===1级黄色稀有神纹自选包
	-- ===索引: tDecPrecisionPushPlus_Pack[3327096][16]
	-- ===删除: 3327096,1
	-- ===EmoneyLog: 350,22901
	tDecPrecisionPushPlus_Pack[3327096][16]["LogId"] = 12001759
	tDecPrecisionPushPlus_Pack[3327096][16]["EmoneyLog"] = "350	22901	0	0	1	"
	tDecPrecisionPushPlus_Pack[3327096][16]["DeleteItem"] = {}
	tDecPrecisionPushPlus_Pack[3327096][16]["DeleteItem"][1] = {}
	tDecPrecisionPushPlus_Pack[3327096][16]["DeleteItem"][1]["Id"] = 3327096 -- 【库】+1RareYellowRune(B)SelectionBox+1[属性:9]
	tDecPrecisionPushPlus_Pack[3327096][16]["RewardItem"] = {}
	tDecPrecisionPushPlus_Pack[3327096][16]["RewardItem"][1] = {}
	tDecPrecisionPushPlus_Pack[3327096][16]["RewardItem"][1]["Id"] = 4034101 -- Deterrence(+1)[4034101][属性:8][叠加:0][金币:0], 【表格】威慑
	tDecPrecisionPushPlus_Pack[3327096][16]["RewardItem"][1]["Attr"] = "0 1 3" -- Deterrence(+1)（赠）*1
	tDecPrecisionPushPlus_Pack[3327096][16]["RewardEffect"] = {}
	tDecPrecisionPushPlus_Pack[3327096][16]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPushPlus_Pack[3327096][16]["RewardEffect"]["Effect"] = "angelwing"


	tDecPrecisionPushPlus_Pack[3327096][17] = {}
	-- ===1级黄色稀有神纹自选包
	-- ===索引: tDecPrecisionPushPlus_Pack[3327096][17]
	-- ===删除: 3327096,1
	-- ===EmoneyLog: 350,22901
	tDecPrecisionPushPlus_Pack[3327096][17]["LogId"] = 12001759
	tDecPrecisionPushPlus_Pack[3327096][17]["EmoneyLog"] = "350	22901	0	0	1	"
	tDecPrecisionPushPlus_Pack[3327096][17]["DeleteItem"] = {}
	tDecPrecisionPushPlus_Pack[3327096][17]["DeleteItem"][1] = {}
	tDecPrecisionPushPlus_Pack[3327096][17]["DeleteItem"][1]["Id"] = 3327096 -- 【库】+1RareYellowRune(B)SelectionBox+1[属性:9]
	tDecPrecisionPushPlus_Pack[3327096][17]["RewardItem"] = {}
	tDecPrecisionPushPlus_Pack[3327096][17]["RewardItem"][1] = {}
	tDecPrecisionPushPlus_Pack[3327096][17]["RewardItem"][1]["Id"] = 4033301 -- DeadlySight(+1)[4033301][属性:8][叠加:0][金币:0], 【表格】致命准星
	tDecPrecisionPushPlus_Pack[3327096][17]["RewardItem"][1]["Attr"] = "0 1 3" -- DeadlySight(+1)（赠）*1
	tDecPrecisionPushPlus_Pack[3327096][17]["RewardEffect"] = {}
	tDecPrecisionPushPlus_Pack[3327096][17]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPushPlus_Pack[3327096][17]["RewardEffect"]["Effect"] = "angelwing"


	tDecPrecisionPushPlus_Pack[3327096][18] = {}
	-- ===1级黄色稀有神纹自选包
	-- ===索引: tDecPrecisionPushPlus_Pack[3327096][18]
	-- ===删除: 3327096,1
	-- ===EmoneyLog: 350,22901
	tDecPrecisionPushPlus_Pack[3327096][18]["LogId"] = 12001759
	tDecPrecisionPushPlus_Pack[3327096][18]["EmoneyLog"] = "350	22901	0	0	1	"
	tDecPrecisionPushPlus_Pack[3327096][18]["DeleteItem"] = {}
	tDecPrecisionPushPlus_Pack[3327096][18]["DeleteItem"][1] = {}
	tDecPrecisionPushPlus_Pack[3327096][18]["DeleteItem"][1]["Id"] = 3327096 -- 【库】+1RareYellowRune(B)SelectionBox+1[属性:9]
	tDecPrecisionPushPlus_Pack[3327096][18]["RewardItem"] = {}
	tDecPrecisionPushPlus_Pack[3327096][18]["RewardItem"][1] = {}
	tDecPrecisionPushPlus_Pack[3327096][18]["RewardItem"][1]["Id"] = 4032901 -- Overwhelm(+1)[4032901][属性:8][叠加:0][金币:0], 【表格】例无虚发
	tDecPrecisionPushPlus_Pack[3327096][18]["RewardItem"][1]["Attr"] = "0 1 3" -- Overwhelm(+1)（赠）*1
	tDecPrecisionPushPlus_Pack[3327096][18]["RewardEffect"] = {}
	tDecPrecisionPushPlus_Pack[3327096][18]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPushPlus_Pack[3327096][18]["RewardEffect"]["Effect"] = "angelwing"


	tDecPrecisionPushPlus_Pack[3327096][19] = {}
	-- ===1级黄色稀有神纹自选包
	-- ===索引: tDecPrecisionPushPlus_Pack[3327096][19]
	-- ===删除: 3327096,1
	-- ===EmoneyLog: 350,22901
	tDecPrecisionPushPlus_Pack[3327096][19]["LogId"] = 12001759
	tDecPrecisionPushPlus_Pack[3327096][19]["EmoneyLog"] = "350	22901	0	0	1	"
	tDecPrecisionPushPlus_Pack[3327096][19]["DeleteItem"] = {}
	tDecPrecisionPushPlus_Pack[3327096][19]["DeleteItem"][1] = {}
	tDecPrecisionPushPlus_Pack[3327096][19]["DeleteItem"][1]["Id"] = 3327096 -- 【库】+1RareYellowRune(B)SelectionBox+1[属性:9]
	tDecPrecisionPushPlus_Pack[3327096][19]["RewardItem"] = {}
	tDecPrecisionPushPlus_Pack[3327096][19]["RewardItem"][1] = {}
	tDecPrecisionPushPlus_Pack[3327096][19]["RewardItem"][1]["Id"] = 4033001 -- Judgment(+1)[4033001][属性:8][叠加:0][金币:0], 【表格】审判
	tDecPrecisionPushPlus_Pack[3327096][19]["RewardItem"][1]["Attr"] = "0 1 3" -- Judgment(+1)（赠）*1
	tDecPrecisionPushPlus_Pack[3327096][19]["RewardEffect"] = {}
	tDecPrecisionPushPlus_Pack[3327096][19]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPushPlus_Pack[3327096][19]["RewardEffect"]["Effect"] = "angelwing"


	tDecPrecisionPushPlus_Pack[3327096][20] = {}
	-- ===1级黄色稀有神纹自选包
	-- ===索引: tDecPrecisionPushPlus_Pack[3327096][20]
	-- ===删除: 3327096,1
	-- ===EmoneyLog: 350,22901
	tDecPrecisionPushPlus_Pack[3327096][20]["LogId"] = 12001759
	tDecPrecisionPushPlus_Pack[3327096][20]["EmoneyLog"] = "350	22901	0	0	1	"
	tDecPrecisionPushPlus_Pack[3327096][20]["DeleteItem"] = {}
	tDecPrecisionPushPlus_Pack[3327096][20]["DeleteItem"][1] = {}
	tDecPrecisionPushPlus_Pack[3327096][20]["DeleteItem"][1]["Id"] = 3327096 -- 【库】+1RareYellowRune(B)SelectionBox+1[属性:9]
	tDecPrecisionPushPlus_Pack[3327096][20]["RewardItem"] = {}
	tDecPrecisionPushPlus_Pack[3327096][20]["RewardItem"][1] = {}
	tDecPrecisionPushPlus_Pack[3327096][20]["RewardItem"][1]["Id"] = 4034201 -- Nature`sChant(+1)[4034201][属性:8][叠加:0][金币:0], 【表格】乾坤妙法
	tDecPrecisionPushPlus_Pack[3327096][20]["RewardItem"][1]["Attr"] = "0 1 3" -- Nature`sChant(+1)（赠）*1
	tDecPrecisionPushPlus_Pack[3327096][20]["RewardEffect"] = {}
	tDecPrecisionPushPlus_Pack[3327096][20]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPushPlus_Pack[3327096][20]["RewardEffect"]["Effect"] = "angelwing"


	tDecPrecisionPushPlus_Pack[3327096][21] = {}
	-- ===1级黄色稀有神纹自选包
	-- ===索引: tDecPrecisionPushPlus_Pack[3327096][21]
	-- ===删除: 3327096,1
	-- ===EmoneyLog: 350,22901
	tDecPrecisionPushPlus_Pack[3327096][21]["LogId"] = 12001759
	tDecPrecisionPushPlus_Pack[3327096][21]["EmoneyLog"] = "350	22901	0	0	1	"
	tDecPrecisionPushPlus_Pack[3327096][21]["DeleteItem"] = {}
	tDecPrecisionPushPlus_Pack[3327096][21]["DeleteItem"][1] = {}
	tDecPrecisionPushPlus_Pack[3327096][21]["DeleteItem"][1]["Id"] = 3327096 -- 【库】+1RareYellowRune(B)SelectionBox+1[属性:9]
	tDecPrecisionPushPlus_Pack[3327096][21]["RewardItem"] = {}
	tDecPrecisionPushPlus_Pack[3327096][21]["RewardItem"][1] = {}
	tDecPrecisionPushPlus_Pack[3327096][21]["RewardItem"][1]["Id"] = 4034301 -- JusticeGuard(+1)[4034301][属性:8][叠加:0][金币:0], 【表格】罡气护体
	tDecPrecisionPushPlus_Pack[3327096][21]["RewardItem"][1]["Attr"] = "0 1 3" -- JusticeGuard(+1)（赠）*1
	tDecPrecisionPushPlus_Pack[3327096][21]["RewardEffect"] = {}
	tDecPrecisionPushPlus_Pack[3327096][21]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPushPlus_Pack[3327096][21]["RewardEffect"]["Effect"] = "angelwing"


	tDecPrecisionPushPlus_Pack[3327096][22] = {}
	-- ===1级黄色稀有神纹自选包
	-- ===索引: tDecPrecisionPushPlus_Pack[3327096][22]
	-- ===删除: 3327096,1
	-- ===EmoneyLog: 350,22901
	tDecPrecisionPushPlus_Pack[3327096][22]["LogId"] = 12001759
	tDecPrecisionPushPlus_Pack[3327096][22]["EmoneyLog"] = "350	22901	0	0	1	"
	tDecPrecisionPushPlus_Pack[3327096][22]["DeleteItem"] = {}
	tDecPrecisionPushPlus_Pack[3327096][22]["DeleteItem"][1] = {}
	tDecPrecisionPushPlus_Pack[3327096][22]["DeleteItem"][1]["Id"] = 3327096 -- 【库】+1RareYellowRune(B)SelectionBox+1[属性:9]
	tDecPrecisionPushPlus_Pack[3327096][22]["RewardItem"] = {}
	tDecPrecisionPushPlus_Pack[3327096][22]["RewardItem"][1] = {}
	tDecPrecisionPushPlus_Pack[3327096][22]["RewardItem"][1]["Id"] = 4034401 -- SurgingForce(+1)[4034401][属性:8][叠加:0][金币:0], 【表格】沧澜破
	tDecPrecisionPushPlus_Pack[3327096][22]["RewardItem"][1]["Attr"] = "0 1 3" -- SurgingForce(+1)（赠）*1
	tDecPrecisionPushPlus_Pack[3327096][22]["RewardEffect"] = {}
	tDecPrecisionPushPlus_Pack[3327096][22]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPushPlus_Pack[3327096][22]["RewardEffect"]["Effect"] = "angelwing"


	tDecPrecisionPushPlus_Pack[3327096][23] = {}
	-- ===1级黄色稀有神纹自选包
	-- ===索引: tDecPrecisionPushPlus_Pack[3327096][23]
	-- ===删除: 3327096,1
	-- ===EmoneyLog: 350,22901
	tDecPrecisionPushPlus_Pack[3327096][23]["LogId"] = 12001759
	tDecPrecisionPushPlus_Pack[3327096][23]["EmoneyLog"] = "350	22901	0	0	1	"
	tDecPrecisionPushPlus_Pack[3327096][23]["DeleteItem"] = {}
	tDecPrecisionPushPlus_Pack[3327096][23]["DeleteItem"][1] = {}
	tDecPrecisionPushPlus_Pack[3327096][23]["DeleteItem"][1]["Id"] = 3327096 -- 【库】+1RareYellowRune(B)SelectionBox+1[属性:9]
	tDecPrecisionPushPlus_Pack[3327096][23]["RewardItem"] = {}
	tDecPrecisionPushPlus_Pack[3327096][23]["RewardItem"][1] = {}
	tDecPrecisionPushPlus_Pack[3327096][23]["RewardItem"][1]["Id"] = 4034501 -- MiracleTouch(+1)[4034501][属性:8][叠加:0][金币:0], 【表格】妙手回春
	tDecPrecisionPushPlus_Pack[3327096][23]["RewardItem"][1]["Attr"] = "0 1 3" -- MiracleTouch(+1)（赠）*1
	tDecPrecisionPushPlus_Pack[3327096][23]["RewardEffect"] = {}
	tDecPrecisionPushPlus_Pack[3327096][23]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPushPlus_Pack[3327096][23]["RewardEffect"]["Effect"] = "angelwing"


	tDecPrecisionPushPlus_Pack[3327096][24] = {}
	-- ===1级黄色稀有神纹自选包
	-- ===索引: tDecPrecisionPushPlus_Pack[3327096][24]
	-- ===删除: 3327096,1
	-- ===EmoneyLog: 350,22901
	tDecPrecisionPushPlus_Pack[3327096][24]["LogId"] = 12001759
	tDecPrecisionPushPlus_Pack[3327096][24]["EmoneyLog"] = "350	22901	0	0	1	"
	tDecPrecisionPushPlus_Pack[3327096][24]["DeleteItem"] = {}
	tDecPrecisionPushPlus_Pack[3327096][24]["DeleteItem"][1] = {}
	tDecPrecisionPushPlus_Pack[3327096][24]["DeleteItem"][1]["Id"] = 3327096 -- 【库】+1RareYellowRune(B)SelectionBox+1[属性:9]
	tDecPrecisionPushPlus_Pack[3327096][24]["RewardItem"] = {}
	tDecPrecisionPushPlus_Pack[3327096][24]["RewardItem"][1] = {}
	tDecPrecisionPushPlus_Pack[3327096][24]["RewardItem"][1]["Id"] = 4034601 -- CurseBlock(+1)[4034601][属性:8][叠加:0][金币:0], 【表格】碎魔屏障
	tDecPrecisionPushPlus_Pack[3327096][24]["RewardItem"][1]["Attr"] = "0 1 3" -- CurseBlock(+1)（赠）*1
	tDecPrecisionPushPlus_Pack[3327096][24]["RewardEffect"] = {}
	tDecPrecisionPushPlus_Pack[3327096][24]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPushPlus_Pack[3327096][24]["RewardEffect"]["Effect"] = "angelwing"


	tDecPrecisionPushPlus_Pack[3327096][25] = {}
	-- ===1级黄色稀有神纹自选包
	-- ===索引: tDecPrecisionPushPlus_Pack[3327096][25]
	-- ===删除: 3327096,1
	-- ===EmoneyLog: 350,22901
	tDecPrecisionPushPlus_Pack[3327096][25]["LogId"] = 12001759
	tDecPrecisionPushPlus_Pack[3327096][25]["EmoneyLog"] = "350	22901	0	0	1	"
	tDecPrecisionPushPlus_Pack[3327096][25]["DeleteItem"] = {}
	tDecPrecisionPushPlus_Pack[3327096][25]["DeleteItem"][1] = {}
	tDecPrecisionPushPlus_Pack[3327096][25]["DeleteItem"][1]["Id"] = 3327096 -- 【库】+1RareYellowRune(B)SelectionBox+1[属性:9]
	tDecPrecisionPushPlus_Pack[3327096][25]["RewardItem"] = {}
	tDecPrecisionPushPlus_Pack[3327096][25]["RewardItem"][1] = {}
	tDecPrecisionPushPlus_Pack[3327096][25]["RewardItem"][1]["Id"] = 4034701 -- UniversalShield(+1)[4034701][属性:8][叠加:0][金币:0], 【表格】天地化盾
	tDecPrecisionPushPlus_Pack[3327096][25]["RewardItem"][1]["Attr"] = "0 1 3" -- UniversalShield(+1)（赠）*1
	tDecPrecisionPushPlus_Pack[3327096][25]["RewardEffect"] = {}
	tDecPrecisionPushPlus_Pack[3327096][25]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPushPlus_Pack[3327096][25]["RewardEffect"]["Effect"] = "angelwing"


	tDecPrecisionPushPlus_Pack[3327096][26] = {}
	-- ===1级黄色稀有神纹自选包
	-- ===索引: tDecPrecisionPushPlus_Pack[3327096][26]
	-- ===删除: 3327096,1
	-- ===EmoneyLog: 350,22901
	tDecPrecisionPushPlus_Pack[3327096][26]["LogId"] = 12001759
	tDecPrecisionPushPlus_Pack[3327096][26]["EmoneyLog"] = "350	22901	0	0	1	"
	tDecPrecisionPushPlus_Pack[3327096][26]["DeleteItem"] = {}
	tDecPrecisionPushPlus_Pack[3327096][26]["DeleteItem"][1] = {}
	tDecPrecisionPushPlus_Pack[3327096][26]["DeleteItem"][1]["Id"] = 3327096 -- 【库】+1RareYellowRune(B)SelectionBox+1[属性:9]
	tDecPrecisionPushPlus_Pack[3327096][26]["RewardItem"] = {}
	tDecPrecisionPushPlus_Pack[3327096][26]["RewardItem"][1] = {}
	tDecPrecisionPushPlus_Pack[3327096][26]["RewardItem"][1]["Id"] = 4034801 -- TortoiseBreaker(+1)[4034801][属性:8][叠加:0][金币:0], 【表格】碎玄元
	tDecPrecisionPushPlus_Pack[3327096][26]["RewardItem"][1]["Attr"] = "0 1 3" -- TortoiseBreaker(+1)（赠）*1
	tDecPrecisionPushPlus_Pack[3327096][26]["RewardEffect"] = {}
	tDecPrecisionPushPlus_Pack[3327096][26]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPushPlus_Pack[3327096][26]["RewardEffect"]["Effect"] = "angelwing"


	tDecPrecisionPushPlus_Pack[3327097] = {}
	-- ===永久五星外套自选包
	-- ===索引: tDecPrecisionPushPlus_Pack[3327097][1]
	-- ===删除: 3327097,1
	-- ===EmoneyLog: 350,22902
	tDecPrecisionPushPlus_Pack[3327097][1] = {}
	tDecPrecisionPushPlus_Pack[3327097][1]["LogId"] = 12001759
	tDecPrecisionPushPlus_Pack[3327097][1]["EmoneyLog"] = "350	22902	0	0	1	"
	tDecPrecisionPushPlus_Pack[3327097][1]["DeleteItem"] = {}
	tDecPrecisionPushPlus_Pack[3327097][1]["DeleteItem"][1] = {}
	tDecPrecisionPushPlus_Pack[3327097][1]["DeleteItem"][1]["Id"] = 3327097 -- 【库】5-starGarmentSelectionBox[属性:9]
	tDecPrecisionPushPlus_Pack[3327097][1]["RewardItem"] = {}
	tDecPrecisionPushPlus_Pack[3327097][1]["RewardItem"][1] = {}
	tDecPrecisionPushPlus_Pack[3327097][1]["RewardItem"][1]["Id"] = 195795 -- SweetnessofLove(Eternal)[195795][属性:0][叠加:0][金币:0], 【表格】SweetnessofLove（Eternal）
	tDecPrecisionPushPlus_Pack[3327097][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑SweetnessofLove(Eternal)（赠）*1
	tDecPrecisionPushPlus_Pack[3327097][1]["RewardEffect"] = {}
	tDecPrecisionPushPlus_Pack[3327097][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPushPlus_Pack[3327097][1]["RewardEffect"]["Effect"] = "angelwing"


	tDecPrecisionPushPlus_Pack[3327097][2] = {}
	-- ===永久五星外套自选包
	-- ===索引: tDecPrecisionPushPlus_Pack[3327097][2]
	-- ===删除: 3327097,1
	-- ===EmoneyLog: 350,22902
	tDecPrecisionPushPlus_Pack[3327097][2]["LogId"] = 12001759
	tDecPrecisionPushPlus_Pack[3327097][2]["EmoneyLog"] = "350	22902	0	0	1	"
	tDecPrecisionPushPlus_Pack[3327097][2]["DeleteItem"] = {}
	tDecPrecisionPushPlus_Pack[3327097][2]["DeleteItem"][1] = {}
	tDecPrecisionPushPlus_Pack[3327097][2]["DeleteItem"][1]["Id"] = 3327097 -- 【库】5-starGarmentSelectionBox[属性:9]
	tDecPrecisionPushPlus_Pack[3327097][2]["RewardItem"] = {}
	tDecPrecisionPushPlus_Pack[3327097][2]["RewardItem"][1] = {}
	tDecPrecisionPushPlus_Pack[3327097][2]["RewardItem"][1]["Id"] = 195015 -- ChristmasHarmony[195015][属性:8][叠加:0][金币:0], 【表格】ChristmasHarmony
	tDecPrecisionPushPlus_Pack[3327097][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑ChristmasHarmony（赠）*1
	tDecPrecisionPushPlus_Pack[3327097][2]["RewardEffect"] = {}
	tDecPrecisionPushPlus_Pack[3327097][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPushPlus_Pack[3327097][2]["RewardEffect"]["Effect"] = "angelwing"


	tDecPrecisionPushPlus_Pack[3327097][3] = {}
	-- ===永久五星外套自选包
	-- ===索引: tDecPrecisionPushPlus_Pack[3327097][3]
	-- ===删除: 3327097,1
	-- ===EmoneyLog: 350,22902
	tDecPrecisionPushPlus_Pack[3327097][3]["LogId"] = 12001759
	tDecPrecisionPushPlus_Pack[3327097][3]["EmoneyLog"] = "350	22902	0	0	1	"
	tDecPrecisionPushPlus_Pack[3327097][3]["DeleteItem"] = {}
	tDecPrecisionPushPlus_Pack[3327097][3]["DeleteItem"][1] = {}
	tDecPrecisionPushPlus_Pack[3327097][3]["DeleteItem"][1]["Id"] = 3327097 -- 【库】5-starGarmentSelectionBox[属性:9]
	tDecPrecisionPushPlus_Pack[3327097][3]["RewardItem"] = {}
	tDecPrecisionPushPlus_Pack[3327097][3]["RewardItem"][1] = {}
	tDecPrecisionPushPlus_Pack[3327097][3]["RewardItem"][1]["Id"] = 195715 -- FlamingWarrior(Elite)[195715][属性:0][叠加:0][金币:0], 【表格】FlamingWarrior（Elite）
	tDecPrecisionPushPlus_Pack[3327097][3]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑FlamingWarrior(Elite)（赠）*1
	tDecPrecisionPushPlus_Pack[3327097][3]["RewardEffect"] = {}
	tDecPrecisionPushPlus_Pack[3327097][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPushPlus_Pack[3327097][3]["RewardEffect"]["Effect"] = "angelwing"


	tDecPrecisionPushPlus_Pack[3327097][4] = {}
	-- ===永久五星外套自选包
	-- ===索引: tDecPrecisionPushPlus_Pack[3327097][4]
	-- ===删除: 3327097,1
	-- ===EmoneyLog: 350,22902
	tDecPrecisionPushPlus_Pack[3327097][4]["LogId"] = 12001759
	tDecPrecisionPushPlus_Pack[3327097][4]["EmoneyLog"] = "350	22902	0	0	1	"
	tDecPrecisionPushPlus_Pack[3327097][4]["DeleteItem"] = {}
	tDecPrecisionPushPlus_Pack[3327097][4]["DeleteItem"][1] = {}
	tDecPrecisionPushPlus_Pack[3327097][4]["DeleteItem"][1]["Id"] = 3327097 -- 【库】5-starGarmentSelectionBox[属性:9]
	tDecPrecisionPushPlus_Pack[3327097][4]["RewardItem"] = {}
	tDecPrecisionPushPlus_Pack[3327097][4]["RewardItem"][1] = {}
	tDecPrecisionPushPlus_Pack[3327097][4]["RewardItem"][1]["Id"] = 195885 -- BuddingFlower[Legend][195885][属性:0][叠加:0][金币:0], 【表格】BuddingFlower[legend]
	tDecPrecisionPushPlus_Pack[3327097][4]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑BuddingFlower[Legend]（赠）*1
	tDecPrecisionPushPlus_Pack[3327097][4]["RewardEffect"] = {}
	tDecPrecisionPushPlus_Pack[3327097][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPushPlus_Pack[3327097][4]["RewardEffect"]["Effect"] = "angelwing"


	tDecPrecisionPushPlus_Pack[3327097][5] = {}
	-- ===永久五星外套自选包
	-- ===索引: tDecPrecisionPushPlus_Pack[3327097][5]
	-- ===删除: 3327097,1
	-- ===EmoneyLog: 350,22902
	tDecPrecisionPushPlus_Pack[3327097][5]["LogId"] = 12001759
	tDecPrecisionPushPlus_Pack[3327097][5]["EmoneyLog"] = "350	22902	0	0	1	"
	tDecPrecisionPushPlus_Pack[3327097][5]["DeleteItem"] = {}
	tDecPrecisionPushPlus_Pack[3327097][5]["DeleteItem"][1] = {}
	tDecPrecisionPushPlus_Pack[3327097][5]["DeleteItem"][1]["Id"] = 3327097 -- 【库】5-starGarmentSelectionBox[属性:9]
	tDecPrecisionPushPlus_Pack[3327097][5]["RewardItem"] = {}
	tDecPrecisionPushPlus_Pack[3327097][5]["RewardItem"][1] = {}
	tDecPrecisionPushPlus_Pack[3327097][5]["RewardItem"][1]["Id"] = 194875 -- BrightPurpleRomance[194875][属性:8][叠加:0][金币:0], 【表格】BrightPurpleRomance
	tDecPrecisionPushPlus_Pack[3327097][5]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑BrightPurpleRomance（赠）*1
	tDecPrecisionPushPlus_Pack[3327097][5]["RewardEffect"] = {}
	tDecPrecisionPushPlus_Pack[3327097][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPushPlus_Pack[3327097][5]["RewardEffect"]["Effect"] = "angelwing"


	tDecPrecisionPushPlus_Pack[3327098] = {}
	-- ===混沌锁妖盒特惠包
	-- ===索引: tDecPrecisionPushPlus_Pack[3327098]
	-- ===删除: 3327098,1
	-- ===EmoneyLog: 350,22903
	tDecPrecisionPushPlus_Pack[3327098]["LogId"] = 12001759
	tDecPrecisionPushPlus_Pack[3327098]["EmoneyLog"] = "350	22903	0	0	1	"
	tDecPrecisionPushPlus_Pack[3327098]["DeleteItem"] = {}
	tDecPrecisionPushPlus_Pack[3327098]["DeleteItem"][1] = {}
	tDecPrecisionPushPlus_Pack[3327098]["DeleteItem"][1]["Id"] = 3327098 -- 【库】ChaosDemonBox(B)[属性:9]
	tDecPrecisionPushPlus_Pack[3327098]["RewardItem"] = {}
	tDecPrecisionPushPlus_Pack[3327098]["RewardItem"][1] = {}
	tDecPrecisionPushPlus_Pack[3327098]["RewardItem"][1]["Id"] = 720672 -- ChaosDemonBox[720672][属性:9][叠加:0][金币:0], 【表格】混沌锁妖盒
	tDecPrecisionPushPlus_Pack[3327098]["RewardItem"][1]["Attr"] = "0 15" -- ChaosDemonBox*15
	tDecPrecisionPushPlus_Pack[3327098]["RewardEffect"] = {}
	tDecPrecisionPushPlus_Pack[3327098]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPushPlus_Pack[3327098]["RewardEffect"]["Effect"] = "angelwing"


	tDecPrecisionPushPlus_Pack[3327099] = {}
	-- ===金币特惠包
	-- ===索引: tDecPrecisionPushPlus_Pack[3327099]
	-- ===删除: 3327099,1
	-- ===EmoneyLog: 350,22904
	tDecPrecisionPushPlus_Pack[3327099]["LogId"] = 12001759
	tDecPrecisionPushPlus_Pack[3327099]["EmoneyLog"] = "350	22904	0	0	1	"
	tDecPrecisionPushPlus_Pack[3327099]["DeleteItem"] = {}
	tDecPrecisionPushPlus_Pack[3327099]["DeleteItem"][1] = {}
	tDecPrecisionPushPlus_Pack[3327099]["DeleteItem"][1]["Id"] = 3327099 -- 【库】SilverSalesBox[属性:9]
	tDecPrecisionPushPlus_Pack[3327099]["RewardMoney"] = {}
	tDecPrecisionPushPlus_Pack[3327099]["RewardMoney"]["Value"] = 1000000000 -- 银两, 【需求】1kkk金币
	tDecPrecisionPushPlus_Pack[3327099]["RewardEffect"] = {}
	tDecPrecisionPushPlus_Pack[3327099]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPushPlus_Pack[3327099]["RewardEffect"]["Effect"] = "angelwing"


	tDecPrecisionPushPlus_Pack[3327100] = {}
	-- ===精选神器经典包
	-- ===索引: tDecPrecisionPushPlus_Pack[3327100]
	-- ===删除: 3327100,1
	-- ===EmoneyLog: 350,22905
	tDecPrecisionPushPlus_Pack[3327100]["LogId"] = 12001759
	tDecPrecisionPushPlus_Pack[3327100]["EmoneyLog"] = "350	22905	0	0	1	"
	tDecPrecisionPushPlus_Pack[3327100]["DeleteItem"] = {}
	tDecPrecisionPushPlus_Pack[3327100]["DeleteItem"][1] = {}
	tDecPrecisionPushPlus_Pack[3327100]["DeleteItem"][1]["Id"] = 3327100 -- 【库】ClassicLuxuryRelicBox[属性:9]
	tDecPrecisionPushPlus_Pack[3327100]["RewardItem"] = {}
	tDecPrecisionPushPlus_Pack[3327100]["RewardItem"][1] = {}
	tDecPrecisionPushPlus_Pack[3327100]["RewardItem"][1]["Id"] = 3322774 -- LuxuryRelicBox[3322774][属性:8][叠加:1][金币:0], 【表格】神器豪华礼盒
	tDecPrecisionPushPlus_Pack[3327100]["RewardItem"][1]["Attr"] = "0 10" -- LuxuryRelicBox*10
	tDecPrecisionPushPlus_Pack[3327100]["RewardEffect"] = {}
	tDecPrecisionPushPlus_Pack[3327100]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPushPlus_Pack[3327100]["RewardEffect"]["Effect"] = "angelwing"


	tDecPrecisionPushPlus_Pack[3327101] = {}
	-- ===精选神器狂欢包
	-- ===索引: tDecPrecisionPushPlus_Pack[3327101]
	-- ===删除: 3327101,1
	-- ===EmoneyLog: 350,22906
	tDecPrecisionPushPlus_Pack[3327101]["LogId"] = 12001759
	tDecPrecisionPushPlus_Pack[3327101]["EmoneyLog"] = "350	22906	0	0	1	"
	tDecPrecisionPushPlus_Pack[3327101]["DeleteItem"] = {}
	tDecPrecisionPushPlus_Pack[3327101]["DeleteItem"][1] = {}
	tDecPrecisionPushPlus_Pack[3327101]["DeleteItem"][1]["Id"] = 3327101 -- 【库】SelectedLuxuryRelicBox[属性:9]
	tDecPrecisionPushPlus_Pack[3327101]["RewardItem"] = {}
	tDecPrecisionPushPlus_Pack[3327101]["RewardItem"][1] = {}
	tDecPrecisionPushPlus_Pack[3327101]["RewardItem"][1]["Id"] = 3322774 -- LuxuryRelicBox[3322774][属性:8][叠加:1][金币:0], 【表格】神器豪华礼盒
	tDecPrecisionPushPlus_Pack[3327101]["RewardItem"][1]["Attr"] = "0 30" -- LuxuryRelicBox*30
	tDecPrecisionPushPlus_Pack[3327101]["RewardEffect"] = {}
	tDecPrecisionPushPlus_Pack[3327101]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecPrecisionPushPlus_Pack[3327101]["RewardEffect"]["Effect"] = "angelwing"

----------------------------------逻辑部分---------------------------------------------
function DecPrecisionPushPlus_Chooose(nItemId,nChoose)
	tItem[nItemId]["Text211"] = string.format(tDecPrecisionPushPlus_Text[nItemId]["Text211"],tDecPrecisionPushPlus_Text[nItemId][nChoose])
	tItem[nItemId]["OptionFunc211"] = "DecPrecisionPushPlus_OpenPack</N>"..nItemId.."</N>"..nChoose
	LinkItemGossipFunc_New(nItemId,"2-1")
end

function DecPrecisionPushPlus_OpenPack(nItemId,nChoose)
	-- 检测物品是否存在
	if not Item_ChkItem(nItemId) then
		return
	end
	RewardTemplate_UseItemAndMsg(tDecPrecisionPushPlus_Pack[nItemId][nChoose])
end

---------------------------------物品部分---------------------------------------------
--------物品无对白模板
-- 纯物品整合类礼包
tItem[3327089] = tItem[3327089] or {}
tItem[3327089]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tDecPrecisionPushPlus_Pack[nItemId])
end
tItem[3327090] = tItem[3327089]
tItem[3327091] = tItem[3327089]
tItem[3327092] = tItem[3327089]
tItem[3327093] = tItem[3327089]
tItem[3327094] = tItem[3327089]
tItem[3327095] = tItem[3327089]
tItem[3327098] = tItem[3327089]
tItem[3327099] = tItem[3327089]
tItem[3327100] = tItem[3327089]
tItem[3327101] = tItem[3327089]

--------物品有对白模板
tItemFace[3327096] = 951
tItem[3327096] = tItem[3327096] or {}
tItem[3327096]["Function"] = function(nItemId,sItemName)
	-- 检测物品是否存在
	if not Item_ChkItem(nItemId) then
		return
	end
	for i = 1,tDecPrecisionPushPlus_Cont[nItemId]["Num"] do
		tItem[nItemId]["OptionFunc11"..i] = "DecPrecisionPushPlus_Chooose</N>"..nItemId.."</N>"..i
	end
	LinkItemGossipFunc_New(nItemId,"1-1")
end
tItem[3327096]["DialogueText"] = tDecPrecisionPushPlus_Text[3327096]
tItem[3327096]["Text1-1"] = {111}
tItem[3327096]["tOption1-1"] = {111,112,113,114,115,116,117,118,1110,1111,1112,1113,1114,1115,1116,1117,1118,1119,1120,1121,1122,1123,1124,1125,1126,1127}

tItem[3327096]["Text2-1"] = {211}
tItem[3327096]["tOption2-1"] = {211,212}

tItemFace[3327097] = 1007
tItem[3327097] = tItem[3327097] or {}
tItem[3327097]["Function"] = function(nItemId,sItemName)
	-- 检测物品是否存在
	if not Item_ChkItem(nItemId) then
		return
	end
	for i = 1,tDecPrecisionPushPlus_Cont[nItemId]["Num"] do
		tItem[nItemId]["OptionFunc11"..i] = "DecPrecisionPushPlus_Chooose</N>"..nItemId.."</N>"..i
	end
	LinkItemGossipFunc_New(nItemId,"1-1")
end
tItem[3327097]["DialogueText"] = tDecPrecisionPushPlus_Text[3327097]
tItem[3327097]["Text1-1"] = {111}
tItem[3327097]["tOption1-1"] = {111,112,113,114,115,116}

tItem[3327097]["Text2-1"] = {211}
tItem[3327097]["tOption2-1"] = {211,212}