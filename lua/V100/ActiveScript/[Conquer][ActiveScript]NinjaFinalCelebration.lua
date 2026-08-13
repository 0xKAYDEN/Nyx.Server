------------------------------------------------------------------------------------
--Name：            200302[英文征服][活动脚本]忍者觉醒普天同庆【终阶】(4.14-5.1)
--Creator:      蔡颖静
--Created:     2020-03-02
------------------------------------------------------------------------------------
--任务需求：

------------------------------------------------------------------------------------
--logid:12001896


----------------------------------表配置部分--------------------------------------------
local tNinjaFinalCelebration_Data={}

tNinjaFinalCelebration_Data["Global"]={}
tNinjaFinalCelebration_Data["Global"]["Id"]=54279
tNinjaFinalCelebration_Data["Global"]["Server"]=54279
tNinjaFinalCelebration_Data["Global"]["Limit1"]=5
tNinjaFinalCelebration_Data["Global"]["Limit2"]=10

tNinjaFinalCelebration_Data["Cost"]={10,15,20}

tNinjaFinalCelebration_Data["Stc"]={}
tNinjaFinalCelebration_Data["Stc"]["TotalTimeEvent"]=216
tNinjaFinalCelebration_Data["Stc"]["TotalTimeType"]=83

tNinjaFinalCelebration_Data["Stc"]["LoginEvent"]=216
tNinjaFinalCelebration_Data["Stc"]["LoginType"]=84

tNinjaFinalCelebration_Data["Stc"]["TimeEvent"]=216
tNinjaFinalCelebration_Data["Stc"]["TimeType"]=85

tNinjaFinalCelebration_Data["Stc"]["ProPackEvent"]=216
tNinjaFinalCelebration_Data["Stc"]["ProPackType"]=86

tNinjaFinalCelebration_Data["Stc"]["zhuanShiEvent"]=218
tNinjaFinalCelebration_Data["Stc"]["zhuanShiType"]=87

tNinjaFinalCelebration_Data["MailAction"]={}
tNinjaFinalCelebration_Data["MailAction"][1]=576512
tNinjaFinalCelebration_Data["MailAction"][2]=576513

tNinjaFinalCelebration_Data["LevelPack"]={}
tNinjaFinalCelebration_Data["LevelPack"][3329993]=85
tNinjaFinalCelebration_Data["LevelPack"][3329994]=110
tNinjaFinalCelebration_Data["LevelPack"][3329995]=110
tNinjaFinalCelebration_Data["LevelPack"][3329996]=110
tNinjaFinalCelebration_Data["LevelPack"][3329997]=110

tNinjaFinalCelebration_Data["EmoneyLog"]={}
tNinjaFinalCelebration_Data["EmoneyLog"]["GetPack"]="1000	1621	%d	%d	1	"
tNinjaFinalCelebration_Data["EmoneyLog"]["UpdatePack"]="1000	1622	%d	%d	1	"
tNinjaFinalCelebration_Data["EmoneyLog"]["PayPack"]="1000	1623	%d	%d	1	"

	-- ===1级星陨石成长包
	-- ===索引: tNinjaFinalCelebration_Data[3329981][1]
	-- ===删除: 3329981,1
	-- ===
	-- ===
	tNinjaFinalCelebration_Data[3329981] = {}
	tNinjaFinalCelebration_Data[3329981][1] = {}
	tNinjaFinalCelebration_Data[3329981][1]["LogId"] = 12001896
	tNinjaFinalCelebration_Data[3329981][1]["DeleteItem"] = {}
	tNinjaFinalCelebration_Data[3329981][1]["DeleteItem"][1] = {}
	tNinjaFinalCelebration_Data[3329981][1]["DeleteItem"][1]["Id"] = 3329981 -- 【库】 3329981 【库里没有该物品】[属性:]
	tNinjaFinalCelebration_Data[3329981][1]["RewardItem"] = {}
	tNinjaFinalCelebration_Data[3329981][1]["RewardItem"][1] = {}
	tNinjaFinalCelebration_Data[3329981][1]["RewardItem"][1]["Id"] = 3009000 -- TwilightStarStone[3009000][属性:9][叠加:0][金币:0], 【表格】微光星陨石
	tNinjaFinalCelebration_Data[3329981][1]["RewardItem"][1]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的TwilightStarStone*5
	tNinjaFinalCelebration_Data[3329981][1]["RewardEffect"] = {}
	tNinjaFinalCelebration_Data[3329981][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaFinalCelebration_Data[3329981][1]["RewardEffect"]["Effect"] = "angelwing"


	tNinjaFinalCelebration_Data[3329981][2] = {}
	-- ===1级星陨石成长包
	-- ===索引: tNinjaFinalCelebration_Data[3329981][2]
	-- ===删除: 3329981,1
	-- ===
	-- ===
	tNinjaFinalCelebration_Data[3329981][2]["LogId"] = 12001896
	tNinjaFinalCelebration_Data[3329981][2]["DeleteItem"] = {}
	tNinjaFinalCelebration_Data[3329981][2]["DeleteItem"][1] = {}
	tNinjaFinalCelebration_Data[3329981][2]["DeleteItem"][1]["Id"] = 3329981 -- 【库】 3329981 【库里没有该物品】[属性:]
	tNinjaFinalCelebration_Data[3329981][2]["RewardItem"] = {}
	tNinjaFinalCelebration_Data[3329981][2]["RewardItem"][1] = {}
	tNinjaFinalCelebration_Data[3329981][2]["RewardItem"][1]["Id"] = 3329982 --  3329982 【库里没有该物品】, 【表格】2级星陨石成长礼盒
	tNinjaFinalCelebration_Data[3329981][2]["RewardItem"][1]["Attr"] = "0 1" --  3329982 【库里没有该物品】*1
	tNinjaFinalCelebration_Data[3329981][2]["RewardEffect"] = {}
	tNinjaFinalCelebration_Data[3329981][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaFinalCelebration_Data[3329981][2]["RewardEffect"]["Effect"] = "angelwing"


	tNinjaFinalCelebration_Data[3329982] = {}
	-- ===2级星陨石成长礼盒
	-- ===索引: tNinjaFinalCelebration_Data[3329982][1]
	-- ===删除: 3329982,1
	-- ===
	-- ===
	tNinjaFinalCelebration_Data[3329982][1] = {}
	tNinjaFinalCelebration_Data[3329982][1]["LogId"] = 12001896
	tNinjaFinalCelebration_Data[3329982][1]["DeleteItem"] = {}
	tNinjaFinalCelebration_Data[3329982][1]["DeleteItem"][1] = {}
	tNinjaFinalCelebration_Data[3329982][1]["DeleteItem"][1]["Id"] = 3329982 -- 【库】 3329982 【库里没有该物品】[属性:]
	tNinjaFinalCelebration_Data[3329982][1]["RewardItem"] = {}
	tNinjaFinalCelebration_Data[3329982][1]["RewardItem"][1] = {}
	tNinjaFinalCelebration_Data[3329982][1]["RewardItem"][1]["Id"] = 3009001 -- BrightStarStone[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石
	tNinjaFinalCelebration_Data[3329982][1]["RewardItem"][1]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的BrightStarStone*2
	tNinjaFinalCelebration_Data[3329982][1]["RewardEffect"] = {}
	tNinjaFinalCelebration_Data[3329982][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaFinalCelebration_Data[3329982][1]["RewardEffect"]["Effect"] = "angelwing"


	tNinjaFinalCelebration_Data[3329982][2] = {}
	-- ===2级星陨石成长礼盒
	-- ===索引: tNinjaFinalCelebration_Data[3329982][2]
	-- ===删除: 3329982,1
	-- ===
	-- ===
	tNinjaFinalCelebration_Data[3329982][2]["LogId"] = 12001896
	tNinjaFinalCelebration_Data[3329982][2]["DeleteItem"] = {}
	tNinjaFinalCelebration_Data[3329982][2]["DeleteItem"][1] = {}
	tNinjaFinalCelebration_Data[3329982][2]["DeleteItem"][1]["Id"] = 3329982 -- 【库】 3329982 【库里没有该物品】[属性:]
	tNinjaFinalCelebration_Data[3329982][2]["RewardItem"] = {}
	tNinjaFinalCelebration_Data[3329982][2]["RewardItem"][1] = {}
	tNinjaFinalCelebration_Data[3329982][2]["RewardItem"][1]["Id"] = 3329983 --  3329983 【库里没有该物品】, 【表格】3级星陨石成长礼盒
	tNinjaFinalCelebration_Data[3329982][2]["RewardItem"][1]["Attr"] = "0 1" --  3329983 【库里没有该物品】*1
	tNinjaFinalCelebration_Data[3329982][2]["RewardEffect"] = {}
	tNinjaFinalCelebration_Data[3329982][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaFinalCelebration_Data[3329982][2]["RewardEffect"]["Effect"] = "angelwing"


	tNinjaFinalCelebration_Data[3329983] = {}
	-- ===3级星陨石成长礼盒
	-- ===索引: tNinjaFinalCelebration_Data[3329983][1]
	-- ===删除: 3329983,1
	-- ===
	-- ===
	tNinjaFinalCelebration_Data[3329983][1] = {}
	tNinjaFinalCelebration_Data[3329983][1]["LogId"] = 12001896
	tNinjaFinalCelebration_Data[3329983][1]["DeleteItem"] = {}
	tNinjaFinalCelebration_Data[3329983][1]["DeleteItem"][1] = {}
	tNinjaFinalCelebration_Data[3329983][1]["DeleteItem"][1]["Id"] = 3329983 -- 【库】 3329983 【库里没有该物品】[属性:]
	tNinjaFinalCelebration_Data[3329983][1]["RewardItem"] = {}
	tNinjaFinalCelebration_Data[3329983][1]["RewardItem"][1] = {}
	tNinjaFinalCelebration_Data[3329983][1]["RewardItem"][1]["Id"] = 3009002 -- RadiantStarStone[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石
	tNinjaFinalCelebration_Data[3329983][1]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的RadiantStarStone*1
	tNinjaFinalCelebration_Data[3329983][1]["RewardEffect"] = {}
	tNinjaFinalCelebration_Data[3329983][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaFinalCelebration_Data[3329983][1]["RewardEffect"]["Effect"] = "angelwing"


	tNinjaFinalCelebration_Data[3329983][2] = {}
	-- ===3级星陨石成长礼盒
	-- ===索引: tNinjaFinalCelebration_Data[3329983][2]
	-- ===删除: 3329983,1
	-- ===
	-- ===
	tNinjaFinalCelebration_Data[3329983][2]["LogId"] = 12001896
	tNinjaFinalCelebration_Data[3329983][2]["DeleteItem"] = {}
	tNinjaFinalCelebration_Data[3329983][2]["DeleteItem"][1] = {}
	tNinjaFinalCelebration_Data[3329983][2]["DeleteItem"][1]["Id"] = 3329983 -- 【库】 3329983 【库里没有该物品】[属性:]
	tNinjaFinalCelebration_Data[3329983][2]["RewardItem"] = {}
	tNinjaFinalCelebration_Data[3329983][2]["RewardItem"][1] = {}
	tNinjaFinalCelebration_Data[3329983][2]["RewardItem"][1]["Id"] = 3329984 --  3329984 【库里没有该物品】, 【表格】4级星陨石成长礼盒
	tNinjaFinalCelebration_Data[3329983][2]["RewardItem"][1]["Attr"] = "0 1" --  3329984 【库里没有该物品】*1
	tNinjaFinalCelebration_Data[3329983][2]["RewardEffect"] = {}
	tNinjaFinalCelebration_Data[3329983][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaFinalCelebration_Data[3329983][2]["RewardEffect"]["Effect"] = "angelwing"


	tNinjaFinalCelebration_Data[3329984] = {}
	-- ===4级星陨石成长礼盒
	-- ===索引: tNinjaFinalCelebration_Data[3329984][1]
	-- ===删除: 3329984,1
	-- ===
	-- ===
	tNinjaFinalCelebration_Data[3329984]["LogId"] = 12001896
	tNinjaFinalCelebration_Data[3329984]["DeleteItem"] = {}
	tNinjaFinalCelebration_Data[3329984]["DeleteItem"][1] = {}
	tNinjaFinalCelebration_Data[3329984]["DeleteItem"][1]["Id"] = 3329984 -- 【库】 3329984 【库里没有该物品】[属性:]
	tNinjaFinalCelebration_Data[3329984]["RewardItem"] = {}
	tNinjaFinalCelebration_Data[3329984]["RewardItem"][1] = {}
	tNinjaFinalCelebration_Data[3329984]["RewardItem"][1]["Id"] = 3009003 -- SplendidStarStone[3009003][属性:9][叠加:0][金币:0], 【表格】璀璨星陨石
	tNinjaFinalCelebration_Data[3329984]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的SplendidStarStone*1
	tNinjaFinalCelebration_Data[3329984]["RewardEffect"] = {}
	tNinjaFinalCelebration_Data[3329984]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaFinalCelebration_Data[3329984]["RewardEffect"]["Effect"] = "angelwing"


	tNinjaFinalCelebration_Data[3329985] = {}
	-- ===1级赤炼石成长礼盒
	-- ===索引: tNinjaFinalCelebration_Data[3329985][1]
	-- ===删除: 3329985,1
	-- ===
	-- ===
	tNinjaFinalCelebration_Data[3329985][1] = {}
	tNinjaFinalCelebration_Data[3329985][1]["LogId"] = 12001896
	tNinjaFinalCelebration_Data[3329985][1]["DeleteItem"] = {}
	tNinjaFinalCelebration_Data[3329985][1]["DeleteItem"][1] = {}
	tNinjaFinalCelebration_Data[3329985][1]["DeleteItem"][1]["Id"] = 3329985 -- 【库】 3329985 【库里没有该物品】[属性:]
	tNinjaFinalCelebration_Data[3329985][1]["RewardItem"] = {}
	tNinjaFinalCelebration_Data[3329985][1]["RewardItem"][1] = {}
	tNinjaFinalCelebration_Data[3329985][1]["RewardItem"][1]["Id"] = 730003 -- +3Stone[730003][属性:0][叠加:0][金币:0], 【表格】+3赤炼石（赠）
	tNinjaFinalCelebration_Data[3329985][1]["RewardItem"][1]["Attr"] = "0 1 3" -- +3Stone（赠）*1
	tNinjaFinalCelebration_Data[3329985][1]["RewardEffect"] = {}
	tNinjaFinalCelebration_Data[3329985][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaFinalCelebration_Data[3329985][1]["RewardEffect"]["Effect"] = "angelwing"


	tNinjaFinalCelebration_Data[3329985][2] = {}
	-- ===1级赤炼石成长礼盒
	-- ===索引: tNinjaFinalCelebration_Data[3329985][2]
	-- ===删除: 3329985,1
	-- ===
	-- ===
	tNinjaFinalCelebration_Data[3329985][2]["LogId"] = 12001896
	tNinjaFinalCelebration_Data[3329985][2]["DeleteItem"] = {}
	tNinjaFinalCelebration_Data[3329985][2]["DeleteItem"][1] = {}
	tNinjaFinalCelebration_Data[3329985][2]["DeleteItem"][1]["Id"] = 3329985 -- 【库】 3329985 【库里没有该物品】[属性:]
	tNinjaFinalCelebration_Data[3329985][2]["RewardItem"] = {}
	tNinjaFinalCelebration_Data[3329985][2]["RewardItem"][1] = {}
	tNinjaFinalCelebration_Data[3329985][2]["RewardItem"][1]["Id"] = 3329986 --  3329986 【库里没有该物品】, 【表格】2级赤炼石成长礼盒
	tNinjaFinalCelebration_Data[3329985][2]["RewardItem"][1]["Attr"] = "0 1" --  3329986 【库里没有该物品】*1
	tNinjaFinalCelebration_Data[3329985][2]["RewardEffect"] = {}
	tNinjaFinalCelebration_Data[3329985][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaFinalCelebration_Data[3329985][2]["RewardEffect"]["Effect"] = "angelwing"


	tNinjaFinalCelebration_Data[3329986] = {}
	-- ===2级赤炼石成长礼盒
	-- ===索引: tNinjaFinalCelebration_Data[3329986][1]
	-- ===删除: 3329986,1
	-- ===
	-- ===
	tNinjaFinalCelebration_Data[3329986][1] = {}
	tNinjaFinalCelebration_Data[3329986][1]["LogId"] = 12001896
	tNinjaFinalCelebration_Data[3329986][1]["DeleteItem"] = {}
	tNinjaFinalCelebration_Data[3329986][1]["DeleteItem"][1] = {}
	tNinjaFinalCelebration_Data[3329986][1]["DeleteItem"][1]["Id"] = 3329986 -- 【库】 3329986 【库里没有该物品】[属性:]
	tNinjaFinalCelebration_Data[3329986][1]["RewardItem"] = {}
	tNinjaFinalCelebration_Data[3329986][1]["RewardItem"][1] = {}
	tNinjaFinalCelebration_Data[3329986][1]["RewardItem"][1]["Id"] = 730004 -- +4Stone[730004][属性:0][叠加:0][金币:0], 【表格】+4赤炼石（赠）
	tNinjaFinalCelebration_Data[3329986][1]["RewardItem"][1]["Attr"] = "0 1 3" -- +4Stone（赠）*1
	tNinjaFinalCelebration_Data[3329986][1]["RewardEffect"] = {}
	tNinjaFinalCelebration_Data[3329986][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaFinalCelebration_Data[3329986][1]["RewardEffect"]["Effect"] = "angelwing"


	tNinjaFinalCelebration_Data[3329986][2] = {}
	-- ===2级赤炼石成长礼盒
	-- ===索引: tNinjaFinalCelebration_Data[3329986][2]
	-- ===删除: 3329986,1
	-- ===
	-- ===
	tNinjaFinalCelebration_Data[3329986][2]["LogId"] = 12001896
	tNinjaFinalCelebration_Data[3329986][2]["DeleteItem"] = {}
	tNinjaFinalCelebration_Data[3329986][2]["DeleteItem"][1] = {}
	tNinjaFinalCelebration_Data[3329986][2]["DeleteItem"][1]["Id"] = 3329986 -- 【库】 3329986 【库里没有该物品】[属性:]
	tNinjaFinalCelebration_Data[3329986][2]["RewardItem"] = {}
	tNinjaFinalCelebration_Data[3329986][2]["RewardItem"][1] = {}
	tNinjaFinalCelebration_Data[3329986][2]["RewardItem"][1]["Id"] = 3329987 --  3329987 【库里没有该物品】, 【表格】3级赤炼石成长礼盒
	tNinjaFinalCelebration_Data[3329986][2]["RewardItem"][1]["Attr"] = "0 1" --  3329987 【库里没有该物品】*1
	tNinjaFinalCelebration_Data[3329986][2]["RewardEffect"] = {}
	tNinjaFinalCelebration_Data[3329986][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaFinalCelebration_Data[3329986][2]["RewardEffect"]["Effect"] = "angelwing"


	tNinjaFinalCelebration_Data[3329987] = {}
	-- ===3级赤炼石成长礼盒
	-- ===索引: tNinjaFinalCelebration_Data[3329987][1]
	-- ===删除: 3329987,1
	-- ===
	-- ===
	tNinjaFinalCelebration_Data[3329987][1] = {}
	tNinjaFinalCelebration_Data[3329987][1]["LogId"] = 12001896
	tNinjaFinalCelebration_Data[3329987][1]["DeleteItem"] = {}
	tNinjaFinalCelebration_Data[3329987][1]["DeleteItem"][1] = {}
	tNinjaFinalCelebration_Data[3329987][1]["DeleteItem"][1]["Id"] = 3329987 -- 【库】 3329987 【库里没有该物品】[属性:]
	tNinjaFinalCelebration_Data[3329987][1]["RewardItem"] = {}
	tNinjaFinalCelebration_Data[3329987][1]["RewardItem"][1] = {}
	tNinjaFinalCelebration_Data[3329987][1]["RewardItem"][1]["Id"] = 730005 -- +5Stone[730005][属性:0][叠加:0][金币:0], 【表格】+5赤炼石（赠）
	tNinjaFinalCelebration_Data[3329987][1]["RewardItem"][1]["Attr"] = "0 1 3" -- +5Stone（赠）*1
	tNinjaFinalCelebration_Data[3329987][1]["RewardEffect"] = {}
	tNinjaFinalCelebration_Data[3329987][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaFinalCelebration_Data[3329987][1]["RewardEffect"]["Effect"] = "angelwing"


	tNinjaFinalCelebration_Data[3329987][2] = {}
	-- ===3级赤炼石成长礼盒
	-- ===索引: tNinjaFinalCelebration_Data[3329987][2]
	-- ===删除: 3329987,1
	-- ===
	-- ===
	tNinjaFinalCelebration_Data[3329987][2]["LogId"] = 12001896
	tNinjaFinalCelebration_Data[3329987][2]["DeleteItem"] = {}
	tNinjaFinalCelebration_Data[3329987][2]["DeleteItem"][1] = {}
	tNinjaFinalCelebration_Data[3329987][2]["DeleteItem"][1]["Id"] = 3329987 -- 【库】 3329987 【库里没有该物品】[属性:]
	tNinjaFinalCelebration_Data[3329987][2]["RewardItem"] = {}
	tNinjaFinalCelebration_Data[3329987][2]["RewardItem"][1] = {}
	tNinjaFinalCelebration_Data[3329987][2]["RewardItem"][1]["Id"] = 3329988 --  3329988 【库里没有该物品】, 【表格】4级赤炼石成长礼盒
	tNinjaFinalCelebration_Data[3329987][2]["RewardItem"][1]["Attr"] = "0 1" --  3329988 【库里没有该物品】*1
	tNinjaFinalCelebration_Data[3329987][2]["RewardEffect"] = {}
	tNinjaFinalCelebration_Data[3329987][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaFinalCelebration_Data[3329987][2]["RewardEffect"]["Effect"] = "angelwing"


	tNinjaFinalCelebration_Data[3329988] = {}
	-- ===4级赤炼石成长礼盒
	-- ===索引: tNinjaFinalCelebration_Data[3329988][1]
	-- ===删除: 3329988,1
	-- ===
	-- ===
	tNinjaFinalCelebration_Data[3329988][1] = {}
	tNinjaFinalCelebration_Data[3329988][1]["LogId"] = 12001896
	tNinjaFinalCelebration_Data[3329988][1]["DeleteItem"] = {}
	tNinjaFinalCelebration_Data[3329988][1]["DeleteItem"][1] = {}
	tNinjaFinalCelebration_Data[3329988][1]["DeleteItem"][1]["Id"] = 3329988 -- 【库】 3329988 【库里没有该物品】[属性:]
	tNinjaFinalCelebration_Data[3329988][1]["RewardItem"] = {}
	tNinjaFinalCelebration_Data[3329988][1]["RewardItem"][1] = {}
	tNinjaFinalCelebration_Data[3329988][1]["RewardItem"][1]["Id"] = 730006 -- +6Stone[730006][属性:0][叠加:0][金币:0], 【表格】+6赤炼石（赠）
	tNinjaFinalCelebration_Data[3329988][1]["RewardItem"][1]["Attr"] = "0 1 3" -- +6Stone（赠）*1
	tNinjaFinalCelebration_Data[3329988][1]["RewardEffect"] = {}
	tNinjaFinalCelebration_Data[3329988][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaFinalCelebration_Data[3329988][1]["RewardEffect"]["Effect"] = "angelwing"


	tNinjaFinalCelebration_Data[3329988][2] = {}
	-- ===4级赤炼石成长礼盒
	-- ===索引: tNinjaFinalCelebration_Data[3329988][2]
	-- ===删除: 3329988,1
	-- ===
	-- ===
	tNinjaFinalCelebration_Data[3329988][2]["LogId"] = 12001896
	tNinjaFinalCelebration_Data[3329988][2]["DeleteItem"] = {}
	tNinjaFinalCelebration_Data[3329988][2]["DeleteItem"][1] = {}
	tNinjaFinalCelebration_Data[3329988][2]["DeleteItem"][1]["Id"] = 3329988 -- 【库】 3329988 【库里没有该物品】[属性:]
	tNinjaFinalCelebration_Data[3329988][2]["RewardItem"] = {}
	tNinjaFinalCelebration_Data[3329988][2]["RewardItem"][1] = {}
	tNinjaFinalCelebration_Data[3329988][2]["RewardItem"][1]["Id"] = 3329989 --  3329989 【库里没有该物品】, 【表格】5级赤炼石成长礼盒
	tNinjaFinalCelebration_Data[3329988][2]["RewardItem"][1]["Attr"] = "0 1" --  3329989 【库里没有该物品】*1
	tNinjaFinalCelebration_Data[3329988][2]["RewardEffect"] = {}
	tNinjaFinalCelebration_Data[3329988][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaFinalCelebration_Data[3329988][2]["RewardEffect"]["Effect"] = "angelwing"


	tNinjaFinalCelebration_Data[3329989] = {}
	-- ===5级赤炼石成长礼盒
	-- ===索引: tNinjaFinalCelebration_Data[3329989][1]
	-- ===删除: 3329989,1
	-- ===
	-- ===
	tNinjaFinalCelebration_Data[3329989][1] = {}
	tNinjaFinalCelebration_Data[3329989][1]["LogId"] = 12001896
	tNinjaFinalCelebration_Data[3329989][1]["DeleteItem"] = {}
	tNinjaFinalCelebration_Data[3329989][1]["DeleteItem"][1] = {}
	tNinjaFinalCelebration_Data[3329989][1]["DeleteItem"][1]["Id"] = 3329989 -- 【库】 3329989 【库里没有该物品】[属性:]
	tNinjaFinalCelebration_Data[3329989][1]["RewardItem"] = {}
	tNinjaFinalCelebration_Data[3329989][1]["RewardItem"][1] = {}
	tNinjaFinalCelebration_Data[3329989][1]["RewardItem"][1]["Id"] = 730007 -- +7Stone[730007][属性:0][叠加:0][金币:0], 【表格】+7赤炼石（赠）
	tNinjaFinalCelebration_Data[3329989][1]["RewardItem"][1]["Attr"] = "0 1 3" -- +7Stone（赠）*1
	tNinjaFinalCelebration_Data[3329989][1]["RewardEffect"] = {}
	tNinjaFinalCelebration_Data[3329989][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaFinalCelebration_Data[3329989][1]["RewardEffect"]["Effect"] = "angelwing"


	tNinjaFinalCelebration_Data[3329989][2] = {}
	-- ===5级赤炼石成长礼盒
	-- ===索引: tNinjaFinalCelebration_Data[3329989][2]
	-- ===删除: 3329989,1
	-- ===
	-- ===
	tNinjaFinalCelebration_Data[3329989][2]["LogId"] = 12001896
	tNinjaFinalCelebration_Data[3329989][2]["DeleteItem"] = {}
	tNinjaFinalCelebration_Data[3329989][2]["DeleteItem"][1] = {}
	tNinjaFinalCelebration_Data[3329989][2]["DeleteItem"][1]["Id"] = 3329989 -- 【库】 3329989 【库里没有该物品】[属性:]
	tNinjaFinalCelebration_Data[3329989][2]["RewardItem"] = {}
	tNinjaFinalCelebration_Data[3329989][2]["RewardItem"][1] = {}
	tNinjaFinalCelebration_Data[3329989][2]["RewardItem"][1]["Id"] = 3329990 --  3329990 【库里没有该物品】, 【表格】6级赤炼石成长礼盒
	tNinjaFinalCelebration_Data[3329989][2]["RewardItem"][1]["Attr"] = "0 1" --  3329990 【库里没有该物品】*1
	tNinjaFinalCelebration_Data[3329989][2]["RewardEffect"] = {}
	tNinjaFinalCelebration_Data[3329989][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaFinalCelebration_Data[3329989][2]["RewardEffect"]["Effect"] = "angelwing"


	tNinjaFinalCelebration_Data[3329990] = {}
	-- ===6级赤炼石成长礼盒
	-- ===索引: tNinjaFinalCelebration_Data[3329990][1]
	-- ===删除: 3329990,1
	-- ===
	-- ===
	tNinjaFinalCelebration_Data[3329990]["LogId"] = 12001896
	tNinjaFinalCelebration_Data[3329990]["DeleteItem"] = {}
	tNinjaFinalCelebration_Data[3329990]["DeleteItem"][1] = {}
	tNinjaFinalCelebration_Data[3329990]["DeleteItem"][1]["Id"] = 3329990 -- 【库】 3329990 【库里没有该物品】[属性:]
	tNinjaFinalCelebration_Data[3329990]["RewardItem"] = {}
	tNinjaFinalCelebration_Data[3329990]["RewardItem"][1] = {}
	tNinjaFinalCelebration_Data[3329990]["RewardItem"][1]["Id"] = 730008 -- +8Stone[730008][属性:0][叠加:0][金币:0], 【表格】+8赤炼石（赠）
	tNinjaFinalCelebration_Data[3329990]["RewardItem"][1]["Attr"] = "0 1 3" -- +8Stone（赠）*1
	tNinjaFinalCelebration_Data[3329990]["RewardEffect"] = {}
	tNinjaFinalCelebration_Data[3329990]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaFinalCelebration_Data[3329990]["RewardEffect"]["Effect"] = "angelwing"


	tNinjaFinalCelebration_Data[3329993] = {}
	-- ===角色提升礼盒
	-- ===索引: tNinjaFinalCelebration_Data[3329993]
	-- ===删除: 3329993,1
	-- ===
	-- ===
	tNinjaFinalCelebration_Data[3329993]["LogId"] = 12001896
	tNinjaFinalCelebration_Data[3329993]["DeleteItem"] = {}
	tNinjaFinalCelebration_Data[3329993]["DeleteItem"][1] = {}
	tNinjaFinalCelebration_Data[3329993]["DeleteItem"][1]["Id"] = 3329993 -- 【库】 3329993 【库里没有该物品】[属性:]
	tNinjaFinalCelebration_Data[3329993]["RewardItem"] = {}
	tNinjaFinalCelebration_Data[3329993]["RewardItem"][1] = {}
	tNinjaFinalCelebration_Data[3329993]["RewardItem"][1]["Id"] = 721261 -- Bomb[721261][属性:0][叠加:10000][金币:1], 【表格】破城火雷*10
	tNinjaFinalCelebration_Data[3329993]["RewardItem"][1]["Attr"] = "0 10 3" -- Bomb（赠）*10
	tNinjaFinalCelebration_Data[3329993]["RewardItem"][2] = {}
	tNinjaFinalCelebration_Data[3329993]["RewardItem"][2]["Id"] = 3330150 -- MeteorTear[1088002][属性:0][叠加:0][金币:0], 【表格】流星泪*10
	tNinjaFinalCelebration_Data[3329993]["RewardItem"][2]["Attr"] = "0 1" -- MeteorTear（赠）*10
	tNinjaFinalCelebration_Data[3329993]["RewardItem"][3] = {}
	tNinjaFinalCelebration_Data[3329993]["RewardItem"][3]["Id"] = 723087 -- LuckyAmulet[723087][属性:0][叠加:10000][金币:0], 【表格】辟邪护符*20
	tNinjaFinalCelebration_Data[3329993]["RewardItem"][3]["Attr"] = "0 20 3" -- LuckyAmulet（赠）*20（[错误]物品数量超10个）
	tNinjaFinalCelebration_Data[3329993]["RewardCultivation"] = {}
	tNinjaFinalCelebration_Data[3329993]["RewardCultivation"]["Value"] = 2000 -- 修行值, 【需求】修行值2000
	tNinjaFinalCelebration_Data[3329993]["RewardItem"][4] = {}
	tNinjaFinalCelebration_Data[3329993]["RewardItem"][4]["Id"] = 723700 -- ExpBall[723700][属性:0][叠加:10][金币:0], 【表格】聚神丹*10
	tNinjaFinalCelebration_Data[3329993]["RewardItem"][4]["Attr"] = "0 10 3" -- ExpBall（赠）*10
	tNinjaFinalCelebration_Data[3329993]["RewardItem"][5] = {}
	tNinjaFinalCelebration_Data[3329993]["RewardItem"][5]["Id"] = 711188 -- YinYangFruit[711188][属性:8][叠加:10][金币:0], 【表格】金刚灵果*1
	tNinjaFinalCelebration_Data[3329993]["RewardItem"][5]["Attr"] = "0 1 3" -- YinYangFruit（赠）*1
	tNinjaFinalCelebration_Data[3329993]["EventType"] = 217
	tNinjaFinalCelebration_Data[3329993]["DataType"] = 0
	tNinjaFinalCelebration_Data[3329993]["RewardData"] = 1
	tNinjaFinalCelebration_Data[3329993]["RewardTotalData"] = 10
	tNinjaFinalCelebration_Data[3329993]["RewardDelay"] = 1
	tNinjaFinalCelebration_Data[3329993]["RewardTimeType"] = 4
	tNinjaFinalCelebration_Data[3329993]["RewardEffect"] = {}
	tNinjaFinalCelebration_Data[3329993]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaFinalCelebration_Data[3329993]["RewardEffect"]["Effect"] = "angelwing"


	tNinjaFinalCelebration_Data[3329994] = {}
	-- ===角色提升豪华礼盒
	-- ===索引: tNinjaFinalCelebration_Data[3329994]
	-- ===删除: 3329994,1
	-- ===
	-- ===
	tNinjaFinalCelebration_Data[3329994]["LogId"] = 12001896
	tNinjaFinalCelebration_Data[3329994]["DeleteItem"] = {}
	tNinjaFinalCelebration_Data[3329994]["DeleteItem"][1] = {}
	tNinjaFinalCelebration_Data[3329994]["DeleteItem"][1]["Id"] = 3329994 -- 【库】 3329994 【库里没有该物品】[属性:]
	tNinjaFinalCelebration_Data[3329994]["RewardStrengthValue"] = {}
	tNinjaFinalCelebration_Data[3329994]["RewardStrengthValue"]["Value"] = 2000 -- 气力值, 【需求】气力值2000点
	tNinjaFinalCelebration_Data[3329994]["RewardItem"] = {}
	tNinjaFinalCelebration_Data[3329994]["RewardItem"][1] = {}
	tNinjaFinalCelebration_Data[3329994]["RewardItem"][1]["Id"] = 3003124 -- FavoredTrainingPill[3003124][属性:0][叠加:10000][金币:0], 【表格】强练丹30颗
	tNinjaFinalCelebration_Data[3329994]["RewardItem"][1]["Attr"] = "0 30 3" -- FavoredTrainingPill（赠）*30（[错误]物品数量超10个）
	tNinjaFinalCelebration_Data[3329994]["RewardItem"][2] = {}
	tNinjaFinalCelebration_Data[3329994]["RewardItem"][2]["Id"] = 3003125 -- SpecialTrainingPill[3003125][属性:0][叠加:10000][金币:0], 【表格】小爆丹30颗
	tNinjaFinalCelebration_Data[3329994]["RewardItem"][2]["Attr"] = "0 30 3" -- SpecialTrainingPill（赠）*30（[错误]物品数量超10个）
	tNinjaFinalCelebration_Data[3329994]["RewardRepairValue"] = {}
	tNinjaFinalCelebration_Data[3329994]["RewardRepairValue"]["Value"] = 1000 -- 修为值, 【需求】修为值1000
	tNinjaFinalCelebration_Data[3329994]["RewardItem"][3] = {}
	tNinjaFinalCelebration_Data[3329994]["RewardItem"][3]["Id"] = 721259 -- CelestialStone[721259][属性:0][叠加:10][金币:0], 【表格】涅槃灵石*1
	tNinjaFinalCelebration_Data[3329994]["RewardItem"][3]["Attr"] = "0 1 3" -- CelestialStone（赠）*1
	tNinjaFinalCelebration_Data[3329994]["RewardItem"][4] = {}
	tNinjaFinalCelebration_Data[3329994]["RewardItem"][4]["Id"] = 3009001 -- BrightStarStone[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石*3（2天时效）
	tNinjaFinalCelebration_Data[3329994]["RewardItem"][4]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的BrightStarStone*3
	tNinjaFinalCelebration_Data[3329994]["EventType"] = 217
	tNinjaFinalCelebration_Data[3329994]["DataType"] = 1
	tNinjaFinalCelebration_Data[3329994]["RewardData"] = 1
	tNinjaFinalCelebration_Data[3329994]["RewardTotalData"] = 10
	tNinjaFinalCelebration_Data[3329994]["RewardDelay"] = 1
	tNinjaFinalCelebration_Data[3329994]["RewardTimeType"] = 4
	tNinjaFinalCelebration_Data[3329994]["RewardEffect"] = {}
	tNinjaFinalCelebration_Data[3329994]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaFinalCelebration_Data[3329994]["RewardEffect"]["Effect"] = "angelwing"


	tNinjaFinalCelebration_Data[3329995] = {}
	-- ===超值练气礼盒
	-- ===索引: tNinjaFinalCelebration_Data[3329995]
	-- ===删除: 3329995,1
	-- ===
	-- ===
	tNinjaFinalCelebration_Data[3329995]["LogId"] = 12001896
	tNinjaFinalCelebration_Data[3329995]["DeleteItem"] = {}
	tNinjaFinalCelebration_Data[3329995]["DeleteItem"][1] = {}
	tNinjaFinalCelebration_Data[3329995]["DeleteItem"][1]["Id"] = 3329995 -- 【库】 3329995 【库里没有该物品】[属性:]
	tNinjaFinalCelebration_Data[3329995]["RewardStrengthValue"] = {}
	tNinjaFinalCelebration_Data[3329995]["RewardStrengthValue"]["Value"] = 100000 -- 气力值, 【需求】气力值10W点
	tNinjaFinalCelebration_Data[3329995]["RewardItem"] = {}
	tNinjaFinalCelebration_Data[3329995]["RewardItem"][1] = {}
	tNinjaFinalCelebration_Data[3329995]["RewardItem"][1]["Id"] = 3005360 -- FrozenChiPill[3005360][属性:9][叠加:10000][金币:0], 【表格】八宝护气丹
	tNinjaFinalCelebration_Data[3329995]["RewardItem"][1]["Attr"] = "0 4" -- FrozenChiPill*4
	tNinjaFinalCelebration_Data[3329995]["EventType"] = 216
	tNinjaFinalCelebration_Data[3329995]["DataType"] = 87
	tNinjaFinalCelebration_Data[3329995]["RewardData"] = 1
	tNinjaFinalCelebration_Data[3329995]["RewardTotalData"] = 10
	tNinjaFinalCelebration_Data[3329995]["RewardDelay"] = 1
	tNinjaFinalCelebration_Data[3329995]["RewardTimeType"] = 4
	tNinjaFinalCelebration_Data[3329995]["RewardEffect"] = {}
	tNinjaFinalCelebration_Data[3329995]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaFinalCelebration_Data[3329995]["RewardEffect"]["Effect"] = "angelwing"


	tNinjaFinalCelebration_Data[3329996] = {}
	-- ===超值自创礼盒
	-- ===索引: tNinjaFinalCelebration_Data[3329996]
	-- ===删除: 3329996,1
	-- ===
	-- ===
	tNinjaFinalCelebration_Data[3329996]["LogId"] = 12001896
	tNinjaFinalCelebration_Data[3329996]["DeleteItem"] = {}
	tNinjaFinalCelebration_Data[3329996]["DeleteItem"][1] = {}
	tNinjaFinalCelebration_Data[3329996]["DeleteItem"][1]["Id"] = 3329996 -- 【库】 3329996 【库里没有该物品】[属性:]
	tNinjaFinalCelebration_Data[3329996]["RewardItem"] = {}
	tNinjaFinalCelebration_Data[3329996]["RewardItem"][1] = {}
	tNinjaFinalCelebration_Data[3329996]["RewardItem"][1]["Id"] = 3002926 -- FreeTrainingPill[3002926][属性:11][叠加:10000][金币:0], 【表格】免费修炼丹
	tNinjaFinalCelebration_Data[3329996]["RewardItem"][1]["Attr"] = "0 100" -- FreeTrainingPill*100（[错误]物品数量超10个）
	tNinjaFinalCelebration_Data[3329996]["RewardItem"][2] = {}
	tNinjaFinalCelebration_Data[3329996]["RewardItem"][2]["Id"] = 3003126 -- SeniorTrainingPill[3003126][属性:0][叠加:10000][金币:0], 【表格】大爆丹
	tNinjaFinalCelebration_Data[3329996]["RewardItem"][2]["Attr"] = "0 100 3" -- SeniorTrainingPill（赠）*100（[错误]物品数量超10个）
	tNinjaFinalCelebration_Data[3329996]["RewardItem"][3] = {}
	tNinjaFinalCelebration_Data[3329996]["RewardItem"][3]["Id"] = 3002030 -- SuperProtectionPill[3002030][属性:9][叠加:10000][金币:1], 【表格】强效护心丹
	tNinjaFinalCelebration_Data[3329996]["RewardItem"][3]["Attr"] = "0 100" -- SuperProtectionPill*100（[错误]物品数量超10个）
	tNinjaFinalCelebration_Data[3329996]["EventType"] = 216
	tNinjaFinalCelebration_Data[3329996]["DataType"] = 88
	tNinjaFinalCelebration_Data[3329996]["RewardData"] = 1
	tNinjaFinalCelebration_Data[3329996]["RewardTotalData"] = 10
	tNinjaFinalCelebration_Data[3329996]["RewardDelay"] = 1
	tNinjaFinalCelebration_Data[3329996]["RewardTimeType"] = 4
	tNinjaFinalCelebration_Data[3329996]["RewardEffect"] = {}
	tNinjaFinalCelebration_Data[3329996]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaFinalCelebration_Data[3329996]["RewardEffect"]["Effect"] = "angelwing"


	tNinjaFinalCelebration_Data[3329997] = {}
	-- ===超值追加礼盒
	-- ===索引: tNinjaFinalCelebration_Data[3329997]
	-- ===删除: 3329997,1
	-- ===
	-- ===
	tNinjaFinalCelebration_Data[3329997]["LogId"] = 12001896
	tNinjaFinalCelebration_Data[3329997]["DeleteItem"] = {}
	tNinjaFinalCelebration_Data[3329997]["DeleteItem"][1] = {}
	tNinjaFinalCelebration_Data[3329997]["DeleteItem"][1]["Id"] = 3329997 -- 【库】 3329997 【库里没有该物品】[属性:]
	tNinjaFinalCelebration_Data[3329997]["RewardItem"] = {}
	tNinjaFinalCelebration_Data[3329997]["RewardItem"][1] = {}
	tNinjaFinalCelebration_Data[3329997]["RewardItem"][1]["Id"] = 3330151 -- +6Stone[730006][属性:0][叠加:0][金币:0], 【表格】+6赤练石赠
	tNinjaFinalCelebration_Data[3329997]["RewardItem"][1]["Attr"] = "0 1" -- +6Stone（赠）*12（[错误]物品数量超10个）
	tNinjaFinalCelebration_Data[3329997]["EventType"] = 216
	tNinjaFinalCelebration_Data[3329997]["DataType"] = 89
	tNinjaFinalCelebration_Data[3329997]["RewardData"] = 1
	tNinjaFinalCelebration_Data[3329997]["RewardTotalData"] = 10
	tNinjaFinalCelebration_Data[3329997]["RewardDelay"] = 1
	tNinjaFinalCelebration_Data[3329997]["RewardTimeType"] = 4
	tNinjaFinalCelebration_Data[3329997]["RewardEffect"] = {}
	tNinjaFinalCelebration_Data[3329997]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaFinalCelebration_Data[3329997]["RewardEffect"]["Effect"] = "angelwing"


	tNinjaFinalCelebration_Data[3330000] = {}
	-- ===轮回之眼礼盒
	-- ===索引: tNinjaFinalCelebration_Data[3330000]
	-- ===删除: 3330000,1
	-- ===
	-- ===
	tNinjaFinalCelebration_Data[3330000]["LogId"] = 12001896
	tNinjaFinalCelebration_Data[3330000]["DeleteItem"] = {}
	tNinjaFinalCelebration_Data[3330000]["DeleteItem"][1] = {}
	tNinjaFinalCelebration_Data[3330000]["DeleteItem"][1]["Id"] = 3330000 -- 【库】 3330000 【库里没有该物品】[属性:]
	tNinjaFinalCelebration_Data[3330000]["RewardItem"] = {}
	tNinjaFinalCelebration_Data[3330000]["RewardItem"][1] = {}
	tNinjaFinalCelebration_Data[3330000]["RewardItem"][1]["Id"] = 3004464 -- Life`sEye[3004464][属性:9][叠加:0][金币:0], 【表格】轮回之眼*1
	tNinjaFinalCelebration_Data[3330000]["RewardItem"][1]["Attr"] = "0 1" -- Life`sEye*1
	tNinjaFinalCelebration_Data[3330000]["RewardEffect"] = {}
	tNinjaFinalCelebration_Data[3330000]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaFinalCelebration_Data[3330000]["RewardEffect"]["Effect"] = "angelwing"


	tNinjaFinalCelebration_Data[3330001] = {}
	-- ===忍者蓝色神纹礼盒
	-- ===索引: tNinjaFinalCelebration_Data[3330001]
	-- ===删除: 3330001,1
	-- ===
	-- ===
	tNinjaFinalCelebration_Data[3330001]["LogId"] = 12001896
	tNinjaFinalCelebration_Data[3330001]["DeleteItem"] = {}
	tNinjaFinalCelebration_Data[3330001]["DeleteItem"][1] = {}
	tNinjaFinalCelebration_Data[3330001]["DeleteItem"][1]["Id"] = 3330001 -- 【库】 3330001 【库里没有该物品】[属性:]
	tNinjaFinalCelebration_Data[3330001]["RewardItem"] = {}
	tNinjaFinalCelebration_Data[3330001]["RewardItem"][1] = {}
	tNinjaFinalCelebration_Data[3330001]["RewardItem"][1]["Id"] = 4020415 -- Absolution(+15)[4020415][属性:8][叠加:0][金币:0], 【表格】15级忍法·影遁*1 
	tNinjaFinalCelebration_Data[3330001]["RewardItem"][1]["Attr"] = "0 1 3" -- Absolution(+15)（赠）*1
	tNinjaFinalCelebration_Data[3330001]["RewardEffect"] = {}
	tNinjaFinalCelebration_Data[3330001]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaFinalCelebration_Data[3330001]["RewardEffect"]["Effect"] = "angelwing"


	tNinjaFinalCelebration_Data[3330002] = {}
	-- ===忍者蓝色稀有神纹礼盒
	-- ===索引: tNinjaFinalCelebration_Data[3330002]
	-- ===删除: 3330002,1
	-- ===
	-- ===
	tNinjaFinalCelebration_Data[3330002]["LogId"] = 12001896
	tNinjaFinalCelebration_Data[3330002]["DeleteItem"] = {}
	tNinjaFinalCelebration_Data[3330002]["DeleteItem"][1] = {}
	tNinjaFinalCelebration_Data[3330002]["DeleteItem"][1]["Id"] = 3330002 -- 【库】 3330002 【库里没有该物品】[属性:]
	tNinjaFinalCelebration_Data[3330002]["RewardItem"] = {}
	tNinjaFinalCelebration_Data[3330002]["RewardItem"][1] = {}
	tNinjaFinalCelebration_Data[3330002]["RewardItem"][1]["Id"] = 4021615 -- Duel(+15)[4021615][属性:8][叠加:0][金币:0], 【表格】15级忍法·决斗*1
	tNinjaFinalCelebration_Data[3330002]["RewardItem"][1]["Attr"] = "0 1 3" -- Duel(+15)（赠）*1
	tNinjaFinalCelebration_Data[3330002]["RewardEffect"] = {}
	tNinjaFinalCelebration_Data[3330002]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaFinalCelebration_Data[3330002]["RewardEffect"]["Effect"] = "angelwing"


	tNinjaFinalCelebration_Data[3330003] = {}
	-- ===忍者五星外套礼盒
	-- ===索引: tNinjaFinalCelebration_Data[3330003]
	-- ===删除: 3330003,1
	-- ===
	-- ===
	tNinjaFinalCelebration_Data[3330003]["LogId"] = 12001896
	tNinjaFinalCelebration_Data[3330003]["DeleteItem"] = {}
	tNinjaFinalCelebration_Data[3330003]["DeleteItem"][1] = {}
	tNinjaFinalCelebration_Data[3330003]["DeleteItem"][1]["Id"] = 3330003 -- 【库】 3330003 【库里没有该物品】[属性:]
	tNinjaFinalCelebration_Data[3330003]["RewardItem"] = {}
 	tNinjaFinalCelebration_Data[3330003]["RewardItem"][1] = {}
 	tNinjaFinalCelebration_Data[3330003]["RewardItem"][1]["Id"] = 195925 -- NightMaster[195925][属性:0][叠加:0][金币:0], 【表格】NightMaster
 	tNinjaFinalCelebration_Data[3330003]["RewardItem"][1]["Attr"] = "0 1 3 518400 1 0 0 1"  -- 1%神佑NightMaster（赠）*1
 	tNinjaFinalCelebration_Data[3330003]["RewardItem"][2] = {}
 	tNinjaFinalCelebration_Data[3330003]["RewardItem"][2]["Id"] = 200560 -- LunarMonkey[200560][属性:0][叠加:0][金币:0], 【表格】LunarMonkey
 	tNinjaFinalCelebration_Data[3330003]["RewardItem"][2]["Attr"] = "0 1 3 518400 1 0 0 1" -- 360天时效(激活)的1%神佑LunarMonkey（赠）*1
 	tNinjaFinalCelebration_Data[3330003]["RewardItem"][3] = {}
 	tNinjaFinalCelebration_Data[3330003]["RewardItem"][3]["Id"] = 200559 -- SolarMonkey[200559][属性:0][叠加:0][金币:0], 【表格】SolarMonkey
 	tNinjaFinalCelebration_Data[3330003]["RewardItem"][3]["Attr"] = "0 1 3 518400 1 0 0 1" -- 360天时效(激活)的1%神佑SolarMonkey（赠）*1
	tNinjaFinalCelebration_Data[3330003]["RewardEffect"] = {}
	tNinjaFinalCelebration_Data[3330003]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaFinalCelebration_Data[3330003]["RewardEffect"]["Effect"] = "angelwing"


	tNinjaFinalCelebration_Data[3330004] = {}
	-- ===觉醒庆典豪华礼盒
	-- ===索引: tNinjaFinalCelebration_Data[3330004]
	-- ===删除: 3330004,1
	-- ===
	-- ===
	tNinjaFinalCelebration_Data[3330004]["LogId"] = 12001896
	tNinjaFinalCelebration_Data[3330004]["DeleteItem"] = {}
	tNinjaFinalCelebration_Data[3330004]["DeleteItem"][1] = {}
	tNinjaFinalCelebration_Data[3330004]["DeleteItem"][1]["Id"] = 3330004 -- 【库】 3330004 【库里没有该物品】[属性:]
	tNinjaFinalCelebration_Data[3330004]["RewardItem"] = {}
	tNinjaFinalCelebration_Data[3330004]["RewardItem"][1] = {}
	tNinjaFinalCelebration_Data[3330004]["RewardItem"][1]["Id"] = 3329991 --  3329991 【库里没有该物品】, 【表格】忍者极品装备礼盒
	tNinjaFinalCelebration_Data[3330004]["RewardItem"][1]["Attr"] = "0 1 0 43200 1" --  3329991 【库里没有该物品】*1
	tNinjaFinalCelebration_Data[3330004]["RewardItem"][2] = {}
	tNinjaFinalCelebration_Data[3330004]["RewardItem"][2]["Id"] = 3329992 --  3329992 【库里没有该物品】, 【表格】忍者职业福利礼盒
	tNinjaFinalCelebration_Data[3330004]["RewardItem"][2]["Attr"] = "0 1 0 43200 1" --  3329992 【库里没有该物品】*1
	tNinjaFinalCelebration_Data[3330004]["RewardItem"][3] = {}
	tNinjaFinalCelebration_Data[3330004]["RewardItem"][3]["Id"] = 3329993 --  3329993 【库里没有该物品】, 【表格】角色提升礼盒
	tNinjaFinalCelebration_Data[3330004]["RewardItem"][3]["Attr"] = "0 1 0 43200 1" --  3329993 【库里没有该物品】*1
	tNinjaFinalCelebration_Data[3330004]["RewardItem"][4] = {}
	tNinjaFinalCelebration_Data[3330004]["RewardItem"][4]["Id"] = 3329994 --  3329994 【库里没有该物品】, 【表格】角色提升豪华礼盒
	tNinjaFinalCelebration_Data[3330004]["RewardItem"][4]["Attr"] = "0 1 0 43200 1" --  3329994 【库里没有该物品】*1
	tNinjaFinalCelebration_Data[3330004]["RewardItem"][5] = {}
	tNinjaFinalCelebration_Data[3330004]["RewardItem"][5]["Id"] = 3329995 --  3329995 【库里没有该物品】, 【表格】超值练气礼盒
	tNinjaFinalCelebration_Data[3330004]["RewardItem"][5]["Attr"] = "0 1 0 43200 1" --  3329995 【库里没有该物品】*1
	tNinjaFinalCelebration_Data[3330004]["RewardItem"][6] = {}
	tNinjaFinalCelebration_Data[3330004]["RewardItem"][6]["Id"] = 3329996 --  3329996 【库里没有该物品】, 【表格】超值自创礼盒
	tNinjaFinalCelebration_Data[3330004]["RewardItem"][6]["Attr"] = "0 1 0 43200 1" --  3329996 【库里没有该物品】*1
	tNinjaFinalCelebration_Data[3330004]["RewardItem"][7] = {}
	tNinjaFinalCelebration_Data[3330004]["RewardItem"][7]["Id"] = 3329997 --  3329997 【库里没有该物品】, 【表格】超值追加礼盒
	tNinjaFinalCelebration_Data[3330004]["RewardItem"][7]["Attr"] = "0 1 0 43200 1" --  3329997 【库里没有该物品】*1
	tNinjaFinalCelebration_Data[3330004]["RewardEffect"] = {}
	tNinjaFinalCelebration_Data[3330004]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaFinalCelebration_Data[3330004]["RewardEffect"]["Effect"] = "angelwing"


	tNinjaFinalCelebration_Data["LoginPack"] = {}
	-- ===6级赤炼石成长礼盒
	-- ===索引: tNinjaFinalCelebration_Data["LoginPack"]
	-- ===
	-- ===
	-- ===
	tNinjaFinalCelebration_Data["LoginPack"]["LogId"] = 12001896
	tNinjaFinalCelebration_Data["LoginPack"]["RewardItem"] = {}
	tNinjaFinalCelebration_Data["LoginPack"]["RewardItem"][1] = {}
	tNinjaFinalCelebration_Data["LoginPack"]["RewardItem"][1]["Id"] = 3330004 --  3330004 【库里没有该物品】, 【表格】觉醒庆典豪华礼盒
	tNinjaFinalCelebration_Data["LoginPack"]["RewardItem"][1]["Attr"] = "0 1" --  3330004 【库里没有该物品】*1
	tNinjaFinalCelebration_Data["LoginPack"]["RewardEffect"] = {}
	tNinjaFinalCelebration_Data["LoginPack"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaFinalCelebration_Data["LoginPack"]["RewardEffect"]["Effect"] = "angelwing"


	tNinjaFinalCelebration_Data["ProPack"] = {}
	-- ===6级赤炼石成长礼盒
	-- ===索引: tNinjaFinalCelebration_Data["ProPack"]
	-- ===
	-- ===
	-- ===
	tNinjaFinalCelebration_Data["ProPack"]["LogId"] = 12001896
	tNinjaFinalCelebration_Data["ProPack"]["RewardItem"] = {}
	tNinjaFinalCelebration_Data["ProPack"]["RewardItem"][1] = {}
	tNinjaFinalCelebration_Data["ProPack"]["RewardItem"][1]["Id"] = 3329999 --  3329999 【库里没有该物品】, 【表格】转职忍者成长礼盒
	tNinjaFinalCelebration_Data["ProPack"]["RewardItem"][1]["Attr"] = "0 1" --  3329999 【库里没有该物品】*1
	tNinjaFinalCelebration_Data["ProPack"]["RewardEffect"] = {}
	tNinjaFinalCelebration_Data["ProPack"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaFinalCelebration_Data["ProPack"]["RewardEffect"]["Effect"] = "angelwing"


	tNinjaFinalCelebration_Data[3329998] = {}
	-- ===乾坤九转神露礼盒
	-- ===索引: tNinjaFinalCelebration_Data[3329998]
	-- ===删除: 3329998,1
	-- ===
	-- ===
	-- ===
	tNinjaFinalCelebration_Data[3329998]["LogId"] = 12001896
	tNinjaFinalCelebration_Data[3329998]["DeleteItem"] = {}
	tNinjaFinalCelebration_Data[3329998]["DeleteItem"][1] = {}
	tNinjaFinalCelebration_Data[3329998]["DeleteItem"][1]["Id"] = 3329998 -- 【库】 3329998 【库里没有该物品】[属性:]
	tNinjaFinalCelebration_Data[3329998]["RewardItem"] = {}
	tNinjaFinalCelebration_Data[3329998]["RewardItem"][1] = {}
	tNinjaFinalCelebration_Data[3329998]["RewardItem"][1]["Id"] = 711083 -- OblivionDew[711083][属性:8][叠加:10][金币:0], 【表格】乾坤九转神露
	tNinjaFinalCelebration_Data[3329998]["RewardItem"][1]["Attr"] = "0 10 3" -- OblivionDew（赠）*10
	tNinjaFinalCelebration_Data[3329998]["RewardEffect"] = {}
	tNinjaFinalCelebration_Data[3329998]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaFinalCelebration_Data[3329998]["RewardEffect"]["Effect"] = "angelwing"


	tNinjaFinalCelebration_Data[3329999] = {}
	-- ===转职忍者成长礼盒
	-- ===索引: tNinjaFinalCelebration_Data[3329999][1]
	-- ===
	-- ===
	-- ===
	-- ===
	tNinjaFinalCelebration_Data[3329999][1] = {}
	tNinjaFinalCelebration_Data[3329999][1]["LogId"] = 12001896
	tNinjaFinalCelebration_Data[3329999][1]["RewardItem"] = {}
	tNinjaFinalCelebration_Data[3329999][1]["RewardItem"][1] = {}
	tNinjaFinalCelebration_Data[3329999][1]["RewardItem"][1]["Id"] = 3329998 --  3329998 【库里没有该物品】, 【表格】乾坤九转神露礼盒
	tNinjaFinalCelebration_Data[3329999][1]["RewardItem"][1]["Attr"] = "0 1" --  3329998 【库里没有该物品】*1
	tNinjaFinalCelebration_Data[3329999][1]["RewardItem"][2] = {}
	tNinjaFinalCelebration_Data[3329999][1]["RewardItem"][2]["Id"] = 601339 -- EmperorKatana[601339][属性:0][叠加:0][金币:100000], 【表格】极品130级赤皇御魂武器 
	tNinjaFinalCelebration_Data[3329999][1]["RewardItem"][2]["Attr"] = "0 1 3 0 0 0 0 0 0 0 3" -- （追加+3）EmperorKatana（赠）*1
	tNinjaFinalCelebration_Data[3329999][1]["RewardItem"][3] = {}
	tNinjaFinalCelebration_Data[3329999][1]["RewardItem"][3]["Id"] = 135209 -- FuryVest[135209][属性:0][叠加:0][金币:129000], 【表格】极品130级鬼怒川战魂衣服 
	tNinjaFinalCelebration_Data[3329999][1]["RewardItem"][3]["Attr"] = "0 1 3 0 0 0 0 0 0 0 3" -- （追加+3）FuryVest（赠）*1
	tNinjaFinalCelebration_Data[3329999][1]["RewardItem"][4] = {}
	tNinjaFinalCelebration_Data[3329999][1]["RewardItem"][4]["Id"] = 123209 -- BrilliantHood[123209][属性:0][叠加:0][金币:48080], 【表格】极品130级天照樱舞护额 
	tNinjaFinalCelebration_Data[3329999][1]["RewardItem"][4]["Attr"] = "0 1 3 0 0 0 0 0 0 0 3" -- （追加+3）BrilliantHood（赠）*1
	tNinjaFinalCelebration_Data[3329999][1]["RewardItem"][5] = {}
	tNinjaFinalCelebration_Data[3329999][1]["RewardItem"][5]["Id"] = 4010301 -- Assassin[4010301][属性:8][叠加:0][金币:0], 【表格】赠忍者红色神纹-忍法暗杀*1
	tNinjaFinalCelebration_Data[3329999][1]["RewardItem"][5]["Attr"] = "0 1 3" -- Assassin（赠）*1
	tNinjaFinalCelebration_Data[3329999][1]["RewardEffect"] = {}
	tNinjaFinalCelebration_Data[3329999][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaFinalCelebration_Data[3329999][1]["RewardEffect"]["Effect"] = "angelwing"


	tNinjaFinalCelebration_Data[3329999][2] = {}
	-- ===转职忍者成长礼盒
	-- ===索引: tNinjaFinalCelebration_Data[3329999][2]
	-- ===
	-- ===
	-- ===
	-- ===
	tNinjaFinalCelebration_Data[3329999][2]["LogId"] = 12001896
	tNinjaFinalCelebration_Data[3329999][2]["RewardEMoneyMono"] = {}
	tNinjaFinalCelebration_Data[3329999][2]["RewardEMoneyMono"]["Value"] = 500 -- 赠点, 【需求】500天石（赠）
	tNinjaFinalCelebration_Data[3329999][2]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1619"
	tNinjaFinalCelebration_Data[3329999][2]["RewardEffect"] = {}
	tNinjaFinalCelebration_Data[3329999][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaFinalCelebration_Data[3329999][2]["RewardEffect"]["Effect"] = "angelwing"


	tNinjaFinalCelebration_Data[3329999][3] = {}
	-- ===转职忍者成长礼盒
	-- ===索引: tNinjaFinalCelebration_Data[3329999][3]
	-- ===删除: 3329999,1
	-- ===
	-- ===
	-- ===
	-- ===
	tNinjaFinalCelebration_Data[3329999][3]["LogId"] = 12001896
	tNinjaFinalCelebration_Data[3329999][3]["DeleteItem"] = {}
	tNinjaFinalCelebration_Data[3329999][3]["DeleteItem"][1] = {}
	tNinjaFinalCelebration_Data[3329999][3]["DeleteItem"][1]["Id"] = 3329999 -- 【库】 3329999 【库里没有该物品】[属性:]
	tNinjaFinalCelebration_Data[3329999][3]["RewardEMoneyMono"] = {}
	tNinjaFinalCelebration_Data[3329999][3]["RewardEMoneyMono"]["Value"] = 1000 -- 赠点, 【需求】1000天石（赠）
	tNinjaFinalCelebration_Data[3329999][3]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1620"
	tNinjaFinalCelebration_Data[3329999][3]["RewardEffect"] = {}
	tNinjaFinalCelebration_Data[3329999][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaFinalCelebration_Data[3329999][3]["RewardEffect"]["Effect"] = "angelwing"


	tNinjaFinalCelebration_Data[3329991] = {}
	-- ===忍者极品装备礼盒
	-- ===索引: tNinjaFinalCelebration_Data[3329991]
	-- ===删除: 3329991,1
	-- ===
	-- ===
	-- ===
	-- ===
	tNinjaFinalCelebration_Data[3329991]["LogId"] = 12001896
	tNinjaFinalCelebration_Data[3329991]["DeleteItem"] = {}
	tNinjaFinalCelebration_Data[3329991]["DeleteItem"][1] = {}
	tNinjaFinalCelebration_Data[3329991]["DeleteItem"][1]["Id"] = 3329991 -- 【库】 3329991 【库里没有该物品】[属性:]
	tNinjaFinalCelebration_Data[3329991]["RewardItem"] = {}
	tNinjaFinalCelebration_Data[3329991]["RewardItem"][1] = {}
	tNinjaFinalCelebration_Data[3329991]["RewardItem"][1]["Id"] = 601139 -- RainKatana[601139][属性:0][叠加:0][金币:15128], 【表格】极品70级铁虹丸武器 无洞无神佑+3
	tNinjaFinalCelebration_Data[3329991]["RewardItem"][1]["Attr"] = "0 2 3 0 0 0 0 0 0 0 3" -- （追加+3）RainKatana（赠）*2
	tNinjaFinalCelebration_Data[3329991]["RewardItem"][2] = {}
	tNinjaFinalCelebration_Data[3329991]["RewardItem"][2]["Id"] = 135059 -- WolfVest[135059][属性:0][叠加:0][金币:5218], 【表格】极品57级铜武魂衣服 无洞无神佑+3
	tNinjaFinalCelebration_Data[3329991]["RewardItem"][2]["Attr"] = "0 1 3 0 0 0 0 0 0 0 3" -- （追加+3）WolfVest（赠）*1
	tNinjaFinalCelebration_Data[3329991]["RewardItem"][3] = {}
	tNinjaFinalCelebration_Data[3329991]["RewardItem"][3]["Id"] = 123069 -- BlazeHood[123069][属性:0][叠加:0][金币:6465], 【表格】极品67级宿炎护额 无洞无神佑+3
	tNinjaFinalCelebration_Data[3329991]["RewardItem"][3]["Attr"] = "0 1 3 0 0 0 0 0 0 0 3" -- （追加+3）BlazeHood（赠）*1
	tNinjaFinalCelebration_Data[3329991]["RewardEffect"] = {}
	tNinjaFinalCelebration_Data[3329991]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaFinalCelebration_Data[3329991]["RewardEffect"]["Effect"] = "angelwing"


	tNinjaFinalCelebration_Data[3329992] = {}
	-- ===忍者职业福利礼盒
	-- ===索引: tNinjaFinalCelebration_Data[3329992]
	-- ===删除: 3329992,1
	-- ===
	-- ===
	-- ===
	-- ===
	tNinjaFinalCelebration_Data[3329992]["LogId"] = 12001896
	tNinjaFinalCelebration_Data[3329992]["DeleteItem"] = {}
	tNinjaFinalCelebration_Data[3329992]["DeleteItem"][1] = {}
	tNinjaFinalCelebration_Data[3329992]["DeleteItem"][1]["Id"] = 3329992 -- 【库】 3329992 【库里没有该物品】[属性:]
	tNinjaFinalCelebration_Data[3329992]["RewardItem"] = {}
	tNinjaFinalCelebration_Data[3329992]["RewardItem"][1] = {}
	tNinjaFinalCelebration_Data[3329992]["RewardItem"][1]["Id"] = 120049 -- ThreadNecklace[120049][属性:0][叠加:0][金币:200], 【表格】极品30级龙睛宝链--无洞无神佑+3
	tNinjaFinalCelebration_Data[3329992]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 3" -- （追加+3）ThreadNecklace（赠）*1
	tNinjaFinalCelebration_Data[3329992]["RewardItem"][2] = {}
	tNinjaFinalCelebration_Data[3329992]["RewardItem"][2]["Id"] = 150059 -- GoldRing[150059][属性:0][叠加:0][金币:1640], 【表格】极品30级白金钻戒--无洞无神佑+3
	tNinjaFinalCelebration_Data[3329992]["RewardItem"][2]["Attr"] = "0 1 3 0 0 0 0 0 0 0 3" -- （追加+3）GoldRing（赠）*1
	tNinjaFinalCelebration_Data[3329992]["RewardItem"][3] = {}
	tNinjaFinalCelebration_Data[3329992]["RewardItem"][3]["Id"] = 160059 -- SoftBoots[160059][属性:0][叠加:0][金币:1700], 【表格】极品30级麒麟靴--无洞无神佑+3
	tNinjaFinalCelebration_Data[3329992]["RewardItem"][3]["Attr"] = "0 1 3 0 0 0 0 0 0 0 3" -- （追加+3）SoftBoots（赠）*1
	tNinjaFinalCelebration_Data[3329992]["RewardItem"][4] = {}
	tNinjaFinalCelebration_Data[3329992]["RewardItem"][4]["Id"] = 3001064 -- +3WhiteSteedPack[3001064][属性:9][叠加:0][金币:0], 【表格】雪脂马+3礼包
	tNinjaFinalCelebration_Data[3329992]["RewardItem"][4]["Attr"] = "0 1" -- +3WhiteSteedPack*1
	tNinjaFinalCelebration_Data[3329992]["RewardEffect"] = {}
	tNinjaFinalCelebration_Data[3329992]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaFinalCelebration_Data[3329992]["RewardEffect"]["Effect"] = "angelwing"


	tNinjaFinalCelebration_Data["GetPack"] = {}
	-- ===领取赤炼石成长包
	-- ===索引: tNinjaFinalCelebration_Data["GetPack"][1]
	-- ===

	tNinjaFinalCelebration_Data["GetPack"][1] = {}
	tNinjaFinalCelebration_Data["GetPack"][1]["LogId"] = 12001896
	tNinjaFinalCelebration_Data["GetPack"][1]["RewardItem"] = {}
	tNinjaFinalCelebration_Data["GetPack"][1]["RewardItem"][1] = {}
	tNinjaFinalCelebration_Data["GetPack"][1]["RewardItem"][1]["Id"] = 3329985 --  3329985 【库里没有该物品】, 【表格】1级赤炼石成长礼盒
	tNinjaFinalCelebration_Data["GetPack"][1]["RewardItem"][1]["Attr"] = "0 1" --  3329985 【库里没有该物品】*1
	tNinjaFinalCelebration_Data["GetPack"][1]["RewardEffect"] = {}
	tNinjaFinalCelebration_Data["GetPack"][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaFinalCelebration_Data["GetPack"][1]["RewardEffect"]["Effect"] = "angelwing"


	tNinjaFinalCelebration_Data["GetPack"][2] = {}
	-- ===领取聚宝盆
	-- ===索引: tNinjaFinalCelebration_Data["GetPack"][2]
	-- ===

	tNinjaFinalCelebration_Data["GetPack"][2]["LogId"] = 12001896
	tNinjaFinalCelebration_Data["GetPack"][2]["RewardItem"] = {}
	tNinjaFinalCelebration_Data["GetPack"][2]["RewardItem"][1] = {}
	tNinjaFinalCelebration_Data["GetPack"][2]["RewardItem"][1]["Id"] = 3326948 --  3326948 【库里没有该物品】, 【表格】聚宝盆
	tNinjaFinalCelebration_Data["GetPack"][2]["RewardItem"][1]["Attr"] = "0 1" --  3326948 【库里没有该物品】*1
	tNinjaFinalCelebration_Data["GetPack"][2]["RewardEffect"] = {}
	tNinjaFinalCelebration_Data["GetPack"][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaFinalCelebration_Data["GetPack"][2]["RewardEffect"]["Effect"] = "angelwing"


	tNinjaFinalCelebration_Data["GetPack"][3] = {}
	-- ===领取星陨石成长包
	-- ===索引: tNinjaFinalCelebration_Data["GetPack"][3]
	-- ===
	tNinjaFinalCelebration_Data["GetPack"][3]["LogId"] = 12001896
	tNinjaFinalCelebration_Data["GetPack"][3]["RewardItem"] = {}
	tNinjaFinalCelebration_Data["GetPack"][3]["RewardItem"][1] = {}
	tNinjaFinalCelebration_Data["GetPack"][3]["RewardItem"][1]["Id"] = 3329981 --  3329981 【库里没有该物品】, 【表格】1级星陨石成长礼盒
	tNinjaFinalCelebration_Data["GetPack"][3]["RewardItem"][1]["Attr"] = "0 1" --  3329981 【库里没有该物品】*1
	tNinjaFinalCelebration_Data["GetPack"][3]["RewardEffect"] = {}
	tNinjaFinalCelebration_Data["GetPack"][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaFinalCelebration_Data["GetPack"][3]["RewardEffect"]["Effect"] = "angelwing"

	
	tNinjaFinalCelebration_Data["UpdateCost"]={}
	tNinjaFinalCelebration_Data["UpdateCost"][3329981]=38
	tNinjaFinalCelebration_Data["UpdateCost"][3329982]=159
	tNinjaFinalCelebration_Data["UpdateCost"][3329983]=1688
	
	tNinjaFinalCelebration_Data["UpdateCost"][3329985]=65
	tNinjaFinalCelebration_Data["UpdateCost"][3329986]=170
	tNinjaFinalCelebration_Data["UpdateCost"][3329987]=655
	tNinjaFinalCelebration_Data["UpdateCost"][3329988]=1699
	tNinjaFinalCelebration_Data["UpdateCost"][3329989]=3799
	
	tNinjaFinalCelebration_Data["UpdateCost"][3329995]=1999
	tNinjaFinalCelebration_Data["UpdateCost"][3329996]=999
	tNinjaFinalCelebration_Data["UpdateCost"][3329997]=3999
	tNinjaFinalCelebration_Data["UpdateCost"][3329998]=10
	
	
	tNinjaFinalCelebration_Data[3330150] = {}
	tNinjaFinalCelebration_Data[3330150]["LogId"] = 12001896
	tNinjaFinalCelebration_Data[3330150]["DeleteItem"] = {}
	tNinjaFinalCelebration_Data[3330150]["DeleteItem"][1] = {}
	tNinjaFinalCelebration_Data[3330150]["DeleteItem"][1]["Id"] = 3330150 -- 【库】 3330150 【库里没有该物品】[属性:]
	tNinjaFinalCelebration_Data[3330150]["RewardItem"] = {}
	tNinjaFinalCelebration_Data[3330150]["RewardItem"][1] = {}
	tNinjaFinalCelebration_Data[3330150]["RewardItem"][1]["Id"] = 1088002 -- RainKatana[601139][属性:0][叠加:0][金币:15128], 【表格】极品70级铁虹丸武器 无洞无神佑+3
	tNinjaFinalCelebration_Data[3330150]["RewardItem"][1]["Attr"] = "0 10 3" -- （追加+3）RainKatana（赠）*2
	tNinjaFinalCelebration_Data[3330150]["RewardEffect"] = {}
	tNinjaFinalCelebration_Data[3330150]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaFinalCelebration_Data[3330150]["RewardEffect"]["Effect"] = "angelwing"
		
	tNinjaFinalCelebration_Data[3330151] = {}
	tNinjaFinalCelebration_Data[3330151]["LogId"] = 12001896
	tNinjaFinalCelebration_Data[3330151]["DeleteItem"] = {}
	tNinjaFinalCelebration_Data[3330151]["DeleteItem"][1] = {}
	tNinjaFinalCelebration_Data[3330151]["DeleteItem"][1]["Id"] = 3330151 -- 【库】 3330151 【库里没有该物品】[属性:]
	tNinjaFinalCelebration_Data[3330151]["RewardItem"] = {}
	tNinjaFinalCelebration_Data[3330151]["RewardItem"][1] = {}
	tNinjaFinalCelebration_Data[3330151]["RewardItem"][1]["Id"] = 730006 -- RainKatana[601139][属性:0][叠加:0][金币:15128], 【表格】极品70级铁虹丸武器 无洞无神佑+3
	tNinjaFinalCelebration_Data[3330151]["RewardItem"][1]["Attr"] = "0 12 3" -- （追加+3）RainKatana（赠）*2
	tNinjaFinalCelebration_Data[3330151]["RewardEffect"] = {}
	tNinjaFinalCelebration_Data[3330151]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaFinalCelebration_Data[3330151]["RewardEffect"]["Effect"] = "angelwing"
	
----------------------------------逻辑部分---------------------------------------------
--职业判断
function NinjaFinalCelebration_ProCheck()
	local nIndex=false
	--判断职业
	local nPro=Get_UserProfession()
	
	if nPro>=50 and nPro<=55 then 
		nIndex=true
	end 
	
	return nIndex
end 

function NinjaFinalCelebration_OpenShopCheck()
	if not Sys_ChkFullTime(tActivityTime["NinjaFinalCelebration"]["ActTime"]) then 
		return 
	end
	--非忍者职业
	if not NinjaFinalCelebration_ProCheck() then 
		return LinkNpcGossipFunc_New(26016,"1-2")
	else
		return LinkNpcGossipFunc_New(26016,"1-3")
	end 
end 

function NinjaFinalCelebration_OpenShop()
	if not Sys_ChkFullTime(tActivityTime["NinjaFinalCelebration"]["ActTime"]) then 
		return 
	end
	
	local nUserId = Get_UserId()
	--打开天石商店
	User_OpenDialog(0,26016,nUserId)
end 
	
	
function NinjaFinalCelebration_GetRewardCheck(nIndex)
	if not Sys_ChkFullTime(tActivityTime["NinjaFinalCelebration"]["ActTime"]) then 
		return 
	end

	-- local nGlobalId=tNinjaFinalCelebration_Data["Global"]["Id"]
	local nLimit=tNinjaFinalCelebration_Data["Global"]["Limit1"]
	
	local nTimeEvent=tNinjaFinalCelebration_Data["Stc"]["TimeEvent"]
	local nTimeType=tNinjaFinalCelebration_Data["Stc"]["TimeType"]
	
	local nTotalTimeEvent=tNinjaFinalCelebration_Data["Stc"]["TotalTimeEvent"]
	local nTotalTimeType=tNinjaFinalCelebration_Data["Stc"]["TotalTimeType"]
	
	local nCostIndex=1
	
	if NinjaFinalCelebration_ProCheck() then 
		nLimit=tNinjaFinalCelebration_Data["Global"]["Limit2"]
	end 
	local nNowTime=Get_UserStatisticValue(nTotalTimeEvent,nTotalTimeType)
	local nDailyTime=Get_UserStatisticValue(nTimeEvent,nTimeType)
 
	if nNowTime<nLimit then 
		--隔天清掩码
		Task_StcReset(nTimeEvent,nTimeType)
	end 
 
	if nDailyTime >= 2 and nDailyTime<11 then 
		nCostIndex=1
	end 
	if nDailyTime >= 11 and nDailyTime<21 then 
		nCostIndex=2
	end 
	if nDailyTime >= 21 then 
		nCostIndex=3
	end 
	local nCost=tNinjaFinalCelebration_Data["Cost"][nCostIndex]
	
	if nNowTime<nLimit and nDailyTime==0 then 
		tNpcGossip[26017]["OptionFunc211"] = "NinjaFinalCelebration_GetReward</N>26017</N>0</N>" .. nIndex
		return LinkNpcGossipFunc_New(26017,"2-1")
	end 
	
	if nNowTime<nLimit and nDailyTime>0 then
		tNpcGossip[26017]["Text221"]=string.format(tNinjaFinalCelebration_Text[26017]["Text221"],nCost)
		tNpcGossip[26017]["OptionFunc221"] = "NinjaFinalCelebration_GetReward</N>26017</N>" .. nCost .. "</N>" .. nIndex
		return LinkNpcGossipFunc_New(26017,"2-2")
	end 
	
	if nNowTime>=nLimit then 
		tNpcGossip[26017]["Text231"]=string.format(tNinjaFinalCelebration_Text[26017]["Text231"],nCost)
		tNpcGossip[26017]["OptionFunc231"] = "NinjaFinalCelebration_GetReward</N>26017</N>" .. nCost .. "</N>" .. nIndex
		return LinkNpcGossipFunc_New(26017,"2-3")
	end
end 

function NinjaFinalCelebration_GetReward(nNpcId,nCost,nIndex)
	if not Sys_ChkFullTime(tActivityTime["NinjaFinalCelebration"]["ActTime"]) then 
		return 
	end
	
	local nTimeEvent=tNinjaFinalCelebration_Data["Stc"]["TimeEvent"]
	local nTimeType=tNinjaFinalCelebration_Data["Stc"]["TimeType"]
	local nTotalTimeEvent=tNinjaFinalCelebration_Data["Stc"]["TotalTimeEvent"]
	local nTotalTimeType=tNinjaFinalCelebration_Data["Stc"]["TotalTimeType"]
	
	-- local nGlobalId=tNinjaFinalCelebration_Data["Global"]["Id"]
	local nNowTime=Get_UserStatisticValue(nTotalTimeEvent,nTotalTimeType)
	local sItemName=tNinjaFinalCelebration_Text["ItemName"][nIndex]
	if not User_CheckLeftSpace(1) then 
		return Sys_MsgBox(tNinjaFinalCelebration_Text["Tips"]["BagFull"])
	end 
	
	if nCost==0 then
		--打掩码
		Task_AddStatistic(nTimeEvent,nTimeType,1,1)
		Task_SetStcTimestamp(nTimeEvent,nTimeType,0)
		
		Task_AddStatistic(nTotalTimeEvent,nTotalTimeType,1,1)
		Task_SetStcTimestamp(nTotalTimeEvent,nTotalTimeType,0)
		--给奖励
		RewardTemplate_UseItemAndMsg(tNinjaFinalCelebration_Data["GetPack"][nIndex])
	else
		--二次确认
		tNpcGossip[nNpcId]["Text311"]=string.format(tNinjaFinalCelebration_Text[nNpcId]["Text311"],nCost,sItemName)
		tNpcGossip[nNpcId]["OptionFunc311"] = "NinjaFinalCelebration_GetRewardSure</N>" .. nCost .. "</N>" .. nIndex
		return LinkNpcGossipFunc_New(nNpcId,"3-1")
	end 
	
end 
	
function NinjaFinalCelebration_GetRewardSure(nCost,nIndex)
	if not Sys_ChkFullTime(tActivityTime["NinjaFinalCelebration"]["ActTime"]) then 
		return 
	end
	
	local nTimeEvent=tNinjaFinalCelebration_Data["Stc"]["TimeEvent"]
	local nTimeType=tNinjaFinalCelebration_Data["Stc"]["TimeType"]
	local nTotalTimeEvent=tNinjaFinalCelebration_Data["Stc"]["TotalTimeEvent"]
	local nTotalTimeType=tNinjaFinalCelebration_Data["Stc"]["TotalTimeType"]
	
	-- local nGlobalId=tNinjaFinalCelebration_Data["Global"]["Id"]
	local nNowTime=Get_UserStatisticValue(nTotalTimeEvent,nTotalTimeType)
	
	if not User_CheckLeftSpace(1) then 
		return Sys_MsgBox(tNinjaFinalCelebration_Text["Tips"]["BagFull"])
	end 
	
	--天石判断
	local nUserEmoney = Get_UserEMoney(nUserId)
	if nUserEmoney < nCost then
		return Sys_MsgBox(tNinjaFinalCelebration_Text["Tips"]["NoEmoney"])
	end
	
	
	--扣除天石给奖励
	if User_AddEMoney(-nCost) then
		--打掩码
		Task_AddStatistic(nTimeEvent,nTimeType,1,1)
		Task_SetStcTimestamp(nTimeEvent,nTimeType,0)
		
		Sys_SaveEmoneyBuy(string.format(tNinjaFinalCelebration_Data["EmoneyLog"]["GetPack"],nCost,nCost))
		--给奖励
		RewardTemplate_UseItemAndMsg(tNinjaFinalCelebration_Data["GetPack"][nIndex])
	end
end

function NinjaFinalCelebration_ZhuanZhiReward(nUserId)
	if not Sys_ChkFullTime(tActivityTime["NinjaFinalCelebration"]["ActTime"]) then 
		return 
	end
	
	--判断新老服,新服不触发
	local nServerGlobal=tNinjaFinalCelebration_Data["Global"]["Server"]
	
	if Get_SysDynaGlobalData(nServerGlobal,0) == 1 then 
		return 
	end 
	
	local nzhuanShiEvent = tNinjaFinalCelebration_Data["Stc"]["zhuanShiEvent"]
	local nzhuanShiType = tNinjaFinalCelebration_Data["Stc"]["zhuanShiType"]
	
	local nLoginEvent = tNinjaFinalCelebration_Data["Stc"]["LoginEvent"]
	local nLoginType = tNinjaFinalCelebration_Data["Stc"]["LoginType"]
	
	if Get_UserStatisticValue(nzhuanShiEvent,nzhuanShiType,nUserId)>=1 then
		return 
	end 
	
	if Get_UserStatisticValue(nzhuanShiEvent,nzhuanShiType,nUserId)==0 then 
		Task_AddStatistic(nzhuanShiEvent,nzhuanShiType,1,1,nUserId)
		Task_SetStcTimestamp(nzhuanShiEvent,nzhuanShiType,0,nUserId)
		
		Task_SetStatistic(nLoginEvent,nLoginType,1,1)
		Task_SetStcTimestamp(nLoginEvent,nLoginType,0)
	end 

	if not User_CheckLeftSpace(1,nUserId) then 
		--邮件发奖
		NinjaFinalCelebration_Mail(1,nUserId)
	else
		RewardTemplate_UseItemAndMsg(tNinjaFinalCelebration_Data["ProPack"],nUserId)
	end 
end 

function NinjaFinalCelebration_Mail(nIndex,nNowUserId)
	if not Sys_ChkFullTime(tActivityTime["NinjaFinalCelebration"]["ActTime"]) then 
		return 
	end
	
	local sSender = tNinjaFinalCelebration_Text["Mail"]["Sender"]
	local sTitle = tNinjaFinalCelebration_Text["Mail"]["Title"]
	local sContent =tNinjaFinalCelebration_Text["Mail"]["Content"][nIndex]
	local nExistDay = 30
	local nActionId = tNinjaFinalCelebration_Data["MailAction"][nIndex]
	local nUserId = Get_UserId() or nNowUserId
	
	Sys_SendMail(nUserId,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent)
end 
	
function NinjaFinalCelebration_Login()
	if not Sys_ChkFullTime(tActivityTime["NinjaFinalCelebration"]["ActTime"]) then 
		return 
	end
	
	--判断新老服,新服不触发
	local nServerGlobal=tNinjaFinalCelebration_Data["Global"]["Server"]
	
	if Get_SysDynaGlobalData(nServerGlobal,0) == 1 then 
		return 
	end 
	
	if NinjaFinalCelebration_ProCheck() then 
		local nLoginEvent = tNinjaFinalCelebration_Data["Stc"]["LoginEvent"]
		local nLoginType = tNinjaFinalCelebration_Data["Stc"]["LoginType"]
		
		if Get_UserStatisticValue(nLoginEvent,nLoginType)>=1 then
			return 
		end 
		
		if Get_UserStatisticValue(nLoginEvent,nLoginType)==0 then 
			Task_AddStatistic(nLoginEvent,nLoginType,1,1)
			Task_SetStcTimestamp(nLoginEvent,nLoginType,0)
			
			if not User_CheckLeftSpace(1) then 
				NinjaFinalCelebration_Mail(2)
			else
				RewardTemplate_UseItemAndMsg(tNinjaFinalCelebration_Data["LoginPack"])
			end 
			Sys_MsgBox(tNinjaFinalCelebration_Text["Tips"]["Login"])
		end 
	end 
end 
	
function NinjaFinalCelebration_OpenUpdatePack(nIndex,nItemId)
	--物品判断
	if not Item_ChkMulItem(nItemId,nItemId,1) then
		return 
	end 
	
	local nUserId = Get_UserId()
	
	if nIndex==1 then 
		--条件判断
		local bJudge = TermsOfUse_Main(nItemId,tNinjaFinalCelebration_Data[nItemId][nIndex])
	
		if not bJudge then
			return
		end
		RewardTemplate_UseItemAndMsg(tNinjaFinalCelebration_Data[nItemId][nIndex],nUserId,bJudge)
	else
		local sName=tNinjaFinalCelebration_Text["ItemDesc"][nItemId]["Name"]
		local sItemDesc=tNinjaFinalCelebration_Text["ItemDesc"][nItemId]["Desc"]
		local sUpdateName=tNinjaFinalCelebration_Text["ItemDesc"][nItemId+1]["Name"]
		local sUpdateItemDesc=tNinjaFinalCelebration_Text["ItemDesc"][nItemId+1]["Desc"]
		local nCost=tNinjaFinalCelebration_Data["UpdateCost"][nItemId]
		tItem[nItemId]["Text121"]=string.format(tNinjaFinalCelebration_Text["ItemUse"][nItemId]["Text121"],nCost,sUpdateName,sUpdateName,sUpdateItemDesc)
		tItem[nItemId]["OptionFunc121"] = "NinjaFinalCelebration_OpenUpdatePackCost</N>" .. nItemId .. "</N>" .. nCost
		
		LinkItemGossipFunc_New(nItemId,"1-2")
	end 
end 

function NinjaFinalCelebration_OpenUpdatePackCost(nItemId,nCost)
	--物品判断
	if not Item_ChkMulItem(nItemId,nItemId,1) then
		return 
	end 
	
	local nUserId = Get_UserId()
	--天石判断
	local nUserEmoney = Get_UserEMoney(nUserId)
	if nUserEmoney < nCost then
		User_TalkChannel2005(tNinjaFinalCelebration_Text["Tips"]["NoEmoneyUpdate"])
		return
	end
	
	--其他条件判断
	local bJudge = TermsOfUse_Main(nItemId,tNinjaFinalCelebration_Data[nItemId][2])
	
	if not bJudge then
		return
	end
	
	--扣除天石给奖励
	if User_AddEMoney(-nCost) then
		--记录log
		Sys_SaveEmoneyBuy(string.format(tNinjaFinalCelebration_Data["EmoneyLog"]["UpdatePack"],nCost,nCost))
		RewardTemplate_UseItemAndMsg(tNinjaFinalCelebration_Data[nItemId][2],nUserId,bJudge)
	end
end

function NinjaFinalCelebration_OpenNormalPack(nItemId)
	--物品判断
	if not Item_ChkMulItem(nItemId,nItemId,1) then
		return 
	end 
	
	if tNinjaFinalCelebration_Data["LevelPack"][nItemId]~=nil then 
		if not User_JudgeLevelAndMetempsychosis(tNinjaFinalCelebration_Data["LevelPack"][nItemId],0) then
			return User_TalkChannel2005(string.format(tNinjaFinalCelebration_Text["Tips"]["NoLevel"],tNinjaFinalCelebration_Data["LevelPack"][nItemId]))
		end 
	end 
	
	if nItemId>=3329993 and nItemId<=3329994 then
		--背包空间判断
		local nGetRewardSpace = RewardTemplate_GetRewardSpace(tNinjaFinalCelebration_Data[nItemId])
		local nDelRewardSpace = RewardTemplate_GetDelSpace(tNinjaFinalCelebration_Data[nItemId])
		local nSpace = nGetRewardSpace - nDelRewardSpace
		local nNeedSpace =nSpace+1
		if not User_CheckLeftSpace(nNeedSpace) then
			return User_TalkChannel2005(string.format(tPrayForKirin_Text["Msg"]["NoSpace"],nNeedSpace))
		end 
	end 
	
	
	--其他条件判断
	local nUserId = Get_UserId()
	local bJudge = TermsOfUse_Main(nItemId,tNinjaFinalCelebration_Data[nItemId])
	
	if not bJudge then
		return
	end	
	
	RewardTemplate_UseItemAndMsg(tNinjaFinalCelebration_Data[nItemId],nUserId,bJudge)
end 

--付费礼包
function NinjaFinalCelebration_OpenPayPack(nItemId)
	--物品判断
	if not Item_ChkMulItem(nItemId,nItemId,1) then
		return 
	end 
	local nCost=tNinjaFinalCelebration_Data["UpdateCost"][nItemId]

	local nUserId = Get_UserId()
	
	if tNinjaFinalCelebration_Data["LevelPack"][nItemId]~=nil then 
		if not User_JudgeLevelAndMetempsychosis(tNinjaFinalCelebration_Data["LevelPack"][nItemId],0) then
			return User_TalkChannel2005(string.format(tNinjaFinalCelebration_Text["Tips"]["NoLevel"],tNinjaFinalCelebration_Data["LevelPack"][nItemId]))
		end 
	end 
	
	--天石判断
	local nUserEmoney = Get_UserEMoney(nUserId)
	if nUserEmoney < nCost then
		User_TalkChannel2005(tNinjaFinalCelebration_Text["Tips"]["NoEmoneyOpen"])
		return
	end
	
	if nItemId>=3329995 and nItemId<=3329997 then
		--背包空间判断
		local nGetRewardSpace = RewardTemplate_GetRewardSpace(tNinjaFinalCelebration_Data[nItemId])
		local nDelRewardSpace = RewardTemplate_GetDelSpace(tNinjaFinalCelebration_Data[nItemId])
		local nSpace = nGetRewardSpace - nDelRewardSpace
		local nNeedSpace =nSpace+1
		if not User_CheckLeftSpace(nNeedSpace) then
			return User_TalkChannel2005(string.format(tPrayForKirin_Text["Msg"]["NoSpace"],nNeedSpace))
		end 
	end 
	
	--其他条件判断
	local bJudge = TermsOfUse_Main(nItemId,tNinjaFinalCelebration_Data[nItemId])
	
	if not bJudge then
		return
	end
	
	--扣除天石给奖励
	if User_AddEMoney(-nCost) then
		--记录log
		Sys_SaveEmoneyBuy(string.format(tNinjaFinalCelebration_Data["EmoneyLog"]["PayPack"],nCost,nCost))
		RewardTemplate_UseItemAndMsg(tNinjaFinalCelebration_Data[nItemId],nUserId,bJudge)
	end	
end
----------------------------------NPC部分---------------------------------------------
tNpcFace[6117] = 208
tNpcGossip[26016]= tNpcGossip[26016] or DefaultNpc:new{}
tNpcGossip[26016]["OptionHidden"] = 1
tNpcGossip[26016]["DialogueText"] = tNinjaFinalCelebration_Text[26016]

--活动前
tNpcGossip[26016]["Text1-1"] = {111,112,113,114}
tNpcGossip[26016]["tOption1-1"] = {111}
tNpcGossip[26016]["ChkFunc1-1"] = function()
	if CommonFunc_GetBeforeActivityTime(tActivityTime["NinjaFinalCelebration"]["ActTime"]) then 
		return true
	else
		return false
	end 
end

--活动中[非忍者职业]
tNpcGossip[26016]["Text1-2"] = {121,122,123,124}
tNpcGossip[26016]["tOption1-2"] = {121}
tNpcGossip[26016]["ChkFunc1-2"] = function()
	if Sys_ChkFullTime(tActivityTime["NinjaFinalCelebration"]["ActTime"]) then 
		return true
	else
		return false
	end 
end

--活动中[忍者职业]
tNpcGossip[26016]["Text1-3"] = {131,132,133,134}
tNpcGossip[26016]["tOption1-3"] = {131,132}
tNpcGossip[26016]["ChkFunc1-3"] = function()
	if Sys_ChkFullTime(tActivityTime["NinjaFinalCelebration"]["ActTime"]) then 
		return true
	else
		return false
	end 
end

tNpcGossip[26016]["OptionFunc131"] = "NinjaFinalCelebration_OpenShop"

tNpcGossip[26016]["Text1-4"] = {141}
tNpcGossip[26016]["tOption1-4"] = {141}
tNpcGossip[26016]["ChkFunc1-4"] = function()
	if CommonFunc_GetAfterActivityTime(tActivityTime["NinjaFinalCelebration"]["ActTime"]) then 
		return true
	else
		return false
	end 
end


tNpcFace[5177] = 205
tNpcGossip[26017]= tNpcGossip[26017] or DefaultNpc:new{}
tNpcGossip[26017]["OptionHidden"] = 1
tNpcGossip[26017]["DialogueText"] = tNinjaFinalCelebration_Text[26017]

--活动前
tNpcGossip[26017]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[26017]["tOption1-1"] = {111}
tNpcGossip[26017]["ChkFunc1-1"] = function()
	if CommonFunc_GetBeforeActivityTime(tActivityTime["NinjaFinalCelebration"]["ActTime"]) then 
		return true
	else
		return false
	end 
end

--活动中[等级未到达]
tNpcGossip[26017]["Text1-2"] = {121,122,123,124,125}
tNpcGossip[26017]["tOption1-2"] = {121}
tNpcGossip[26017]["ChkFunc1-2"] = function()
	if Sys_ChkFullTime(tActivityTime["NinjaFinalCelebration"]["ActTime"]) then 
		--判断等级
		if not User_JudgeLevelAndMetempsychosis(0,2) then
			return true
		else
			return false
		end 
	else
		return false
	end 
end

--活动中[非忍者职业]
tNpcGossip[26017]["Text1-3"] = {131,132,133,134,135}
tNpcGossip[26017]["tOption1-3"] = {131,132,133,134}
tNpcGossip[26017]["ChkFunc1-3"] = function()
	if Sys_ChkFullTime(tActivityTime["NinjaFinalCelebration"]["ActTime"]) then 
		--判断等级
		if User_JudgeLevelAndMetempsychosis(0,2) then
			if not NinjaFinalCelebration_ProCheck() then
				local nTotalTimeEvent=tNinjaFinalCelebration_Data["Stc"]["TotalTimeEvent"]
				local nTotalTimeType=tNinjaFinalCelebration_Data["Stc"]["TotalTimeType"]
				local nTimeEvent=tNinjaFinalCelebration_Data["Stc"]["TimeEvent"]
				local nTimeType=tNinjaFinalCelebration_Data["Stc"]["TimeType"]
				local nLimit=tNinjaFinalCelebration_Data["Global"]["Limit1"]
				local nNowTime=Get_UserStatisticValue(nTotalTimeEvent,nTotalTimeType)

				if NinjaFinalCelebration_ProCheck() then 
					nLimit=tNinjaFinalCelebration_Data["Global"]["Limit2"]
				end 
				
				if nNowTime<nLimit then 
					--隔天清掩码
					Task_StcReset(nTimeEvent,nTimeType)
				end
				
				return true
			else
				return false
			end
		else
			return false
		end 
	else
		return false
	end 
end

tNpcGossip[26017]["OptionFunc131"] = "NinjaFinalCelebration_GetRewardCheck</N>1"
tNpcGossip[26017]["OptionFunc132"] = "NinjaFinalCelebration_GetRewardCheck</N>2"
tNpcGossip[26017]["OptionFunc133"] = "NinjaFinalCelebration_GetRewardCheck</N>3"

--活动中[忍者职业]
tNpcGossip[26017]["Text1-4"] = {141,142,143,144,145}
tNpcGossip[26017]["tOption1-4"] = {141,142,143,144}
tNpcGossip[26017]["ChkFunc1-4"] = function()
	if Sys_ChkFullTime(tActivityTime["NinjaFinalCelebration"]["ActTime"]) then 
		--判断等级
		if User_JudgeLevelAndMetempsychosis(0,2) then
			if NinjaFinalCelebration_ProCheck() then
				local nTotalTimeEvent=tNinjaFinalCelebration_Data["Stc"]["TotalTimeEvent"]
				local nTotalTimeType=tNinjaFinalCelebration_Data["Stc"]["TotalTimeType"]
				local nTimeEvent=tNinjaFinalCelebration_Data["Stc"]["TimeEvent"]
				local nTimeType=tNinjaFinalCelebration_Data["Stc"]["TimeType"]
				local nLimit=tNinjaFinalCelebration_Data["Global"]["Limit1"]
				local nNowTime=Get_UserStatisticValue(nTotalTimeEvent,nTotalTimeType)

				if NinjaFinalCelebration_ProCheck() then 
					nLimit=tNinjaFinalCelebration_Data["Global"]["Limit2"]
				end 
				
				if nNowTime<nLimit then 
					--隔天清掩码
					Task_StcReset(nTimeEvent,nTimeType)
				end 
				return true
			else
				return false
			end
		else
			return false
		end 
	else
		return false
	end 
end

tNpcGossip[26017]["OptionFunc141"] = "NinjaFinalCelebration_GetRewardCheck</N>1"
tNpcGossip[26017]["OptionFunc142"] = "NinjaFinalCelebration_GetRewardCheck</N>2"
tNpcGossip[26017]["OptionFunc143"] = "NinjaFinalCelebration_GetRewardCheck</N>3"

tNpcGossip[26017]["Text1-5"] = {151}
tNpcGossip[26017]["tOption1-5"] = {151}
tNpcGossip[26017]["ChkFunc1-5"] = function()
	if CommonFunc_GetAfterActivityTime(tActivityTime["NinjaFinalCelebration"]["ActTime"]) then 
		return true
	else
		return false
	end 
end

--首次领取
tNpcGossip[26017]["Text2-1"] = {211,212}
tNpcGossip[26017]["tOption2-1"] = {211,212}

--非首次领取
tNpcGossip[26017]["Text2-2"] = {221,222}
tNpcGossip[26017]["tOption2-2"] = {221,222}

--免费次数领完
tNpcGossip[26017]["Text2-3"] = {231,232}
tNpcGossip[26017]["tOption2-3"] = {231,232}

--二次确认
tNpcGossip[26017]["Text3-1"] = {311}
tNpcGossip[26017]["tOption3-1"] = {311,312}

----------------------------------物品部分-------------------------------------
--升级礼包
tItemFace[3329981] = 918
tItemFace[3329982] = 2851
tItemFace[3329983] = 1024
tItemFace[3329985] = 2387
tItemFace[3329986] = 2852
tItemFace[3329987] = 2386
tItemFace[3329988] = 2388
tItemFace[3329989] = 502
tItemFace[3329998] = 285

local tItemId1={3329981,3329982,3329983,3329985,3329986,3329987,3329988,3329989}

for k,i in ipairs(tItemId1) do 
	tItem[i] = tItem[i] or {}
	tItem[i]["DialogueText"] = tNinjaFinalCelebration_Text["ItemUse"][i]
	tItem[i]["Text1-1"] = {111}
	tItem[i]["tOption1-1"] = {111,112}
	tItem[i]["ChkFunc1-1"] = function()
		local sName=tNinjaFinalCelebration_Text["ItemDesc"][i]["Name"]
		local sItemDesc=tNinjaFinalCelebration_Text["ItemDesc"][i]["Desc"]
		local sUpdateName=tNinjaFinalCelebration_Text["ItemDesc"][i+1]["Name"]
		local sUpdateItemDesc=tNinjaFinalCelebration_Text["ItemDesc"][i+1]["Desc"]
		local nCost=tNinjaFinalCelebration_Text["ItemDesc"][i]["Cost"]
		tItem[i]["Text111"]=string.format(tNinjaFinalCelebration_Text["ItemUse"][i]["Text111"],sItemDesc,nCost,sUpdateName,sUpdateName,sUpdateItemDesc)
		tItem[i]["Option112"]=string.format(tNinjaFinalCelebration_Text["ItemUse"][i]["Option112"],nCost)
		return true
	end 
	
	tItem[i]["OptionFunc111"] = "NinjaFinalCelebration_OpenUpdatePack</N>1</N>" .. i
	tItem[i]["OptionFunc112"] = "NinjaFinalCelebration_OpenUpdatePack</N>2</N>" .. i
	
	--二次确认
	tItem[i]["Text1-2"] = {121}
	tItem[i]["tOption1-2"] = {121,122}
end 

--普通礼包
tItem[3329984] = tItem[3329984] or {}
tItem[3329984]["Function"] = function(nItemId,sItemName)
	NinjaFinalCelebration_OpenNormalPack(nItemId)
end

tItem[3329990] = tItem[3329984]
tItem[3329991] = tItem[3329984]
tItem[3329992] = tItem[3329984]
tItem[3329993] = tItem[3329984]
tItem[3329994] = tItem[3329984]
tItem[3330004] = tItem[3329984]
tItem[3330000] = tItem[3329984]
tItem[3330001] = tItem[3329984]
tItem[3330002] = tItem[3329984]
tItem[3330003] = tItem[3329984]

tItem[3330150] = tItem[3329984]
tItem[3330151] = tItem[3329984]

tItemFace[3329995] = 1011
tItemFace[3329996] = 1012
tItemFace[3329997] = 1013
tItemFace[3329998] = 1014
--付费礼包
local tItemId2={3329995,3329996,3329997,3329998}

for m,n in ipairs(tItemId2) do 
	tItem[n] = tItem[n] or {}
	tItem[n]["DialogueText"] = tNinjaFinalCelebration_Text["ItemUse"][n]
	tItem[n]["Text1-1"] = {111}
	tItem[n]["tOption1-1"] = {111,112}
	tItem[n]["ChkFunc1-1"] = function()
		local sName=tNinjaFinalCelebration_Text["ItemDesc"][n]["Name"]
		local sItemDesc=tNinjaFinalCelebration_Text["ItemDesc"][n]["Desc"]
		local nCost=tNinjaFinalCelebration_Data["UpdateCost"][n]
		if n==3329998 then 
			tItem[n]["Text111"]=string.format(tNinjaFinalCelebration_Text["ItemUse"][n]["Text112"],nCost,sItemDesc)
		else
			tItem[n]["Text111"]=string.format(tNinjaFinalCelebration_Text["ItemUse"][n]["Text111"],nCost,sItemDesc)
		end 
		return true
	end 
	
	tItem[n]["OptionPoint111"] = "1-2"
	
	--二次确认
	tItem[n]["Text1-2"] = {121}
	tItem[n]["tOption1-2"] = {121,122}
	tItem[n]["ChkFunc1-2"] = function()
		local sName=tNinjaFinalCelebration_Text["ItemDesc"][n]["Name"]
		local sItemDesc=tNinjaFinalCelebration_Text["ItemDesc"][n]["Desc"]
		local nCost=tNinjaFinalCelebration_Data["UpdateCost"][n]
		tItem[n]["Text121"]=string.format(tNinjaFinalCelebration_Text["ItemUse"][n]["Text121"],nCost,sItemDesc)
		return true
	end 
	
	tItem[n]["OptionFunc121"] = "NinjaFinalCelebration_OpenPayPack</N>" .. n
end 

--转职礼包使用
tItem[3329999] = tItem[3329999] or {}
tItem[3329999]["Function"] = function(nItemId,sItemName)
	--物品判断
	if not Item_ChkMulItem(nItemId,nItemId,1) then
		return 
	end 
	
	local nProPackEvent= tNinjaFinalCelebration_Data["Stc"]["ProPackEvent"]
	local nProPackType= tNinjaFinalCelebration_Data["Stc"]["ProPackType"]
	local nUserId = Get_UserId()
	
	if not User_JudgeLevelAndMetempsychosis(100,1) then
		if Get_UserStatisticValue(nProPackEvent,nProPackType) == 0 then 
			--其他条件判断
			local bJudge = TermsOfUse_Main(nItemId,tNinjaFinalCelebration_Data[nItemId][1])
		
			if not bJudge then
				return
			end
			Task_AddStatistic(nProPackEvent,nProPackType,1,1)
			Task_SetStcTimestamp(nProPackEvent,nProPackType,0)
			RewardTemplate_UseItemAndMsg(tNinjaFinalCelebration_Data[nItemId][1],nUserId,bJudge)
		end 
	end 
	
	if User_JudgeLevelAndMetempsychosis(100,1) and not User_JudgeLevelAndMetempsychosis(100,2) then 
		if Get_UserStatisticValue(nProPackEvent,nProPackType) >=2 then 
			return 
		end 
		
		if Get_UserStatisticValue(nProPackEvent,nProPackType) ==0 then 
			for i=1,2 do 
				--其他条件判断
				local bJudge = TermsOfUse_Main(nItemId,tNinjaFinalCelebration_Data[nItemId][i])
				
				if not bJudge then
					return
				end
				Task_AddStatistic(nProPackEvent,nProPackType,1,1)
				Task_SetStcTimestamp(nProPackEvent,nProPackType,0)
				RewardTemplate_UseItemAndMsg(tNinjaFinalCelebration_Data[nItemId][i],nUserId,bJudge) 
			end 
		end 
		
		if Get_UserStatisticValue(nProPackEvent,nProPackType) >=1 and Get_UserStatisticValue(nProPackEvent,nProPackType) <2 then
			--其他条件判断
			local bJudge = TermsOfUse_Main(nItemId,tNinjaFinalCelebration_Data[nItemId][2])
			
			if not bJudge then
				return
			end
			Task_AddStatistic(nProPackEvent,nProPackType,1,1)
			Task_SetStcTimestamp(nProPackEvent,nProPackType,0)
			RewardTemplate_UseItemAndMsg(tNinjaFinalCelebration_Data[nItemId][2],nUserId,bJudge) 
		end 	
	end 
	
	if User_JudgeLevelAndMetempsychosis(100,2) then 
		if Get_UserStatisticValue(nProPackEvent,nProPackType) >=3 then 
			return 
		end 
		
		if Get_UserStatisticValue(nProPackEvent,nProPackType) ==0 then 
			for j=1,3 do 
				--其他条件判断
				local bJudge = TermsOfUse_Main(nItemId,tNinjaFinalCelebration_Data[nItemId][j])
				
				if not bJudge then
					return
				end
				Task_AddStatistic(nProPackEvent,nProPackType,1,1)
				Task_SetStcTimestamp(nProPackEvent,nProPackType,0)
				RewardTemplate_UseItemAndMsg(tNinjaFinalCelebration_Data[nItemId][j],nUserId,bJudge) 
			end 
		end 
		
		if Get_UserStatisticValue(nProPackEvent,nProPackType) >=1 and Get_UserStatisticValue(nProPackEvent,nProPackType) <2 then 
			for k=2,3 do 
				--其他条件判断
				local bJudge = TermsOfUse_Main(nItemId,tNinjaFinalCelebration_Data[nItemId][k])
				
				if not bJudge then
					return
				end
				Task_AddStatistic(nProPackEvent,nProPackType,1,1)
				Task_SetStcTimestamp(nProPackEvent,nProPackType,0)
				RewardTemplate_UseItemAndMsg(tNinjaFinalCelebration_Data[nItemId][k],nUserId,bJudge) 
			end 
		end 
		
		if Get_UserStatisticValue(nProPackEvent,nProPackType) >=2 then 
			--其他条件判断
			local bJudge = TermsOfUse_Main(nItemId,tNinjaFinalCelebration_Data[nItemId][3])
			
			if not bJudge then
				return
			end
			Task_AddStatistic(nProPackEvent,nProPackType,1,1)
			Task_SetStcTimestamp(nProPackEvent,nProPackType,0)
			RewardTemplate_UseItemAndMsg(tNinjaFinalCelebration_Data[nItemId][3],nUserId,bJudge)
		end 
	end 
end 
	
			
----------------------------------上线触发---------------------------------------------
table.insert(tSystem_PlayLogin_Func,NinjaFinalCelebration_Login)
