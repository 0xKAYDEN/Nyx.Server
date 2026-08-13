------------------------------------------------------------------------------------
--Name：        191022[英文征服][活动脚本]11月新服1金币天石大爆服（11.7-12.7）
--Creator:      耿力兀
--Created:     2019-10-20
------------------------------------------------------------------------------------
--任务需求：
--前缀：NovServer_
--stc掩码：20801-20805
--208 01 背包信
--208 02 转移天石数
--208 03 转移银两数
--208 04 玩家购买的时间
--208 05 杀怪计数
--209 48 是否领取保底
--global 53835 data0 =1 新服
--global 53838 data0 =1 掉落转服令  data1 记录掉落时间
--global 53876 记录天石掉落
--global 53877 记录金币掉落
------------------------------------------------------------------------------------


----------------------------------表配置部分--------------------------------------------
--网页
local tNovServer_Web={}
	tNovServer_Web[1]="http://coevent.99.com/newservergifttrasnfer1911/"
	tNovServer_Web[2]="http://coevent.99.com/newservergifttrasnfer1911/"

local tNovServer_Data = {}
	tNovServer_Data["MaxLev"] = 140
	tNovServer_Data["EmoneyMax"] = 50000
	tNovServer_Data["SilverMax"] = 2000000000
	tNovServer_Data["SeverGlobalId"] = 53835
	tNovServer_Data["GlobalId"] = 53838
	tNovServer_Data["ColdTime"] = 2592000		--1个月
	--buff时间
	tNovServer_Data[60] = 3600
	tNovServer_Data[120] = 7200
	tNovServer_Data[240] = 14400

local tNovServer_Stc = {}
	tNovServer_Stc["EventType"] = 208
	tNovServer_Stc["DataType"] = {}
	tNovServer_Stc["DataType"][1] = 2
	tNovServer_Stc["DataType"][2] = 3
	tNovServer_Stc["DataType"]["HaveTime"] = 4
	tNovServer_Stc["DataType"]["Monster"] = 5
	tNovServer_Stc["BDEventType"] = 209
	tNovServer_Stc["DataType"]["BD"] = 48

local tNovServer_Log = {}
	tNovServer_Log["Emoneylog"] = "%d,0,0,0,12001702,[1],0,0"				--预存天石log
	tNovServer_Log["Bufflog"] = "%d,0,0,0,12001702,[2],0,0"				--购买buff log
	tNovServer_Log["Emoney"] = "1000	1198"
	tNovServer_Log["Buff"] = "1000	1250"
-- 转世技能继承
local tNovServer_Skill = {}
	-- 一转技能继承
	tNovServer_Skill[1] = {}
	-- 勇士职业
	tNovServer_Skill[1][15] = {}
	tNovServer_Skill[1][15][11] = {3050}
	-- 弓手职业
	tNovServer_Skill[1][45] = {}
	tNovServer_Skill[1][45][41] = {5000}
	-- 铁扇门
	tNovServer_Skill[1][165] = {}
	tNovServer_Skill[1][165][161] = {12860,12870,12980,13090}
	-- 雷神
	tNovServer_Skill[1][95] = {}
	tNovServer_Skill[1][95][91] = {15750,15790}
	-- 水道士职业
	tNovServer_Skill[1][135] = {}
	tNovServer_Skill[1][135][132] = {3090}
	-- 火道士职业
	tNovServer_Skill[1][145] = {}
	tNovServer_Skill[1][145][142] = {3080}

	-- 二转技能继承
	tNovServer_Skill[2] = {}
	-- 勇士职业
	tNovServer_Skill[2][15] = {}
	tNovServer_Skill[2][15][11] = {9876,3050}
	-- 战士
	tNovServer_Skill[2][25] = {}
	tNovServer_Skill[2][25][21] = {9876}

	-- 弓箭手
	tNovServer_Skill[2][45] = {}
	tNovServer_Skill[2][45][41] = {9876,5000}
	-- 忍者
	tNovServer_Skill[2][55] = {}
	tNovServer_Skill[2][55][51] = {9876}

	-- 武僧
	tNovServer_Skill[2][65] = {}
	tNovServer_Skill[2][65][61] = {9876}

	-- 海盗
	tNovServer_Skill[2][75] = {}
	tNovServer_Skill[2][75][71] = {9876}

	-- 截拳师
	tNovServer_Skill[2][85] = {}
	tNovServer_Skill[2][85][81] = {9876}

	-- 铁扇门
	tNovServer_Skill[2][165] = {}
	tNovServer_Skill[2][165][161] = {9876,12860,12870,12980,13090}
	-- 雷神
	tNovServer_Skill[2][95] = {}
	tNovServer_Skill[2][95][91] = {9876,15750,15790}	
	-- 水道
	tNovServer_Skill[2][135] = {}
	tNovServer_Skill[2][135][132] = {9876,3090}

	-- 火道
	tNovServer_Skill[2][145] = {}
	tNovServer_Skill[2][145][142] = {9876,3080}

local tNovServer_Num= {}
-- 玩家想转移的天石数
	tNovServer_Num[1] = {}
-- 玩家想转移的银两数
	tNovServer_Num[2] = {}

local tNovServer_Award = {}
	-- ===30000天石充值返利礼盒
	-- ===索引: tNovServer_Award[3314164]
	-- ===删除: 3314164,1
	-- ===EMoneyLog: 1000,1175
	tNovServer_Award[3314164] = {}
	tNovServer_Award[3314164]["LogId"] = 12001702
	tNovServer_Award[3314164]["EmoneyLog"] = "1000	1175	0	0	1	"
	tNovServer_Award[3314164]["DeleteItem"] = {}
	tNovServer_Award[3314164]["DeleteItem"][1] = {}
	tNovServer_Award[3314164]["DeleteItem"][1]["Id"] = 3314164 -- 【库】30000CPsCreditRebateBox[属性:9]
	tNovServer_Award[3314164]["RewardItem"] = {}
	tNovServer_Award[3314164]["RewardItem"][1] = {}
	tNovServer_Award[3314164]["RewardItem"][1]["Id"] = 3322775 -- SeniorTreasureToken[3322775][属性:8][叠加:10000][金币:0], 【表格】至尊珍宝令*800
	tNovServer_Award[3314164]["RewardItem"][1]["Attr"] = "0 800" -- SeniorTreasureToken*800（[错误]物品数量超10个）
	tNovServer_Award[3314164]["RewardEffect"] = {}
	tNovServer_Award[3314164]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovServer_Award[3314164]["RewardEffect"]["Effect"] = "angelwing"


	tNovServer_Award[3314165] = {}
	-- ===50000天石充值返利礼盒
	-- ===索引: tNovServer_Award[3314165]
	-- ===删除: 3314165,1
	-- ===EMoneyLog: 1000,1176
	tNovServer_Award[3314165]["LogId"] = 12001702
	tNovServer_Award[3314165]["EmoneyLog"] = "1000	1176	0	0	1	"
	tNovServer_Award[3314165]["DeleteItem"] = {}
	tNovServer_Award[3314165]["DeleteItem"][1] = {}
	tNovServer_Award[3314165]["DeleteItem"][1]["Id"] = 3314165 -- 【库】50000CPsCreditRebateBox[属性:9]
	tNovServer_Award[3314165]["RewardItem"] = {}
	tNovServer_Award[3314165]["RewardItem"][1] = {}
	tNovServer_Award[3314165]["RewardItem"][1]["Id"] = 3322775 -- SeniorTreasureToken[3322775][属性:8][叠加:10000][金币:0], 【表格】至尊珍宝令*1000
	tNovServer_Award[3314165]["RewardItem"][1]["Attr"] = "0 1000" -- SeniorTreasureToken*1000（[错误]物品数量超10个）
	tNovServer_Award[3314165]["RewardEffect"] = {}
	tNovServer_Award[3314165]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovServer_Award[3314165]["RewardEffect"]["Effect"] = "angelwing"


	tNovServer_Award[3314166] = {}
	-- ===80000天石充值返利礼盒
	-- ===索引: tNovServer_Award[3314166]
	-- ===删除: 3314166,1
	-- ===EMoneyLog: 1000,1177
	tNovServer_Award[3314166]["LogId"] = 12001702
	tNovServer_Award[3314166]["EmoneyLog"] = "1000	1177	0	0	1	"
	tNovServer_Award[3314166]["DeleteItem"] = {}
	tNovServer_Award[3314166]["DeleteItem"][1] = {}
	tNovServer_Award[3314166]["DeleteItem"][1]["Id"] = 3314166 -- 【库】80000CPsCreditRebateBox[属性:9]
	tNovServer_Award[3314166]["RewardItem"] = {}
	tNovServer_Award[3314166]["RewardItem"][1] = {}
	tNovServer_Award[3314166]["RewardItem"][1]["Id"] = 3322775 -- SeniorTreasureToken[3322775][属性:8][叠加:10000][金币:0], 【表格】至尊珍宝令*1500
	tNovServer_Award[3314166]["RewardItem"][1]["Attr"] = "0 1500" -- SeniorTreasureToken*1500（[错误]物品数量超10个）
	tNovServer_Award[3314166]["RewardEffect"] = {}
	tNovServer_Award[3314166]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovServer_Award[3314166]["RewardEffect"]["Effect"] = "angelwing"


	tNovServer_Award[3314167] = {}
	-- ===130000天石充值返利礼盒
	-- ===索引: tNovServer_Award[3314167]
	-- ===删除: 3314167,1
	-- ===EMoneyLog: 1000,1178
	tNovServer_Award[3314167]["LogId"] = 12001702
	tNovServer_Award[3314167]["EmoneyLog"] = "1000	1178	0	0	1	"
	tNovServer_Award[3314167]["DeleteItem"] = {}
	tNovServer_Award[3314167]["DeleteItem"][1] = {}
	tNovServer_Award[3314167]["DeleteItem"][1]["Id"] = 3314167 -- 【库】130000CPsCreditRebateBox[属性:9]
	tNovServer_Award[3314167]["RewardItem"] = {}
	tNovServer_Award[3314167]["RewardItem"][1] = {}
	tNovServer_Award[3314167]["RewardItem"][1]["Id"] = 3322775 -- SeniorTreasureToken[3322775][属性:8][叠加:10000][金币:0], 【表格】至尊珍宝令*2500
	tNovServer_Award[3314167]["RewardItem"][1]["Attr"] = "0 2500" -- SeniorTreasureToken*2500（[错误]物品数量超10个）
	tNovServer_Award[3314167]["RewardEffect"] = {}
	tNovServer_Award[3314167]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovServer_Award[3314167]["RewardEffect"]["Effect"] = "angelwing"


	tNovServer_Award[3314168] = {}
	-- ===200000天石充值返利礼盒
	-- ===索引: tNovServer_Award[3314168]
	-- ===删除: 3314168,1
	-- ===EMoneyLog: 1000,1179
	tNovServer_Award[3314168]["LogId"] = 12001702
	tNovServer_Award[3314168]["EmoneyLog"] = "1000	1179	0	0	1	"
	tNovServer_Award[3314168]["DeleteItem"] = {}
	tNovServer_Award[3314168]["DeleteItem"][1] = {}
	tNovServer_Award[3314168]["DeleteItem"][1]["Id"] = 3314168 -- 【库】200000CPsCreditRebateBox[属性:9]
	tNovServer_Award[3314168]["RewardItem"] = {}
	tNovServer_Award[3314168]["RewardItem"][1] = {}
	tNovServer_Award[3314168]["RewardItem"][1]["Id"] = 3322775 -- SeniorTreasureToken[3322775][属性:8][叠加:10000][金币:0], 【表格】至尊珍宝令*3500
	tNovServer_Award[3314168]["RewardItem"][1]["Attr"] = "0 3500" -- SeniorTreasureToken*3500（[错误]物品数量超10个）
	tNovServer_Award[3314168]["RewardEffect"] = {}
	tNovServer_Award[3314168]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovServer_Award[3314168]["RewardEffect"]["Effect"] = "angelwing"


	tNovServer_Award[3314169] = {}
	-- ===310000天石充值返利礼盒
	-- ===索引: tNovServer_Award[3314169]
	-- ===删除: 3314169,1
	-- ===EMoneyLog: 1000,1180
	tNovServer_Award[3314169]["LogId"] = 12001702
	tNovServer_Award[3314169]["EmoneyLog"] = "1000	1180	0	0	1	"
	tNovServer_Award[3314169]["DeleteItem"] = {}
	tNovServer_Award[3314169]["DeleteItem"][1] = {}
	tNovServer_Award[3314169]["DeleteItem"][1]["Id"] = 3314169 -- 【库】310000CPsCreditRebateBox[属性:9]
	tNovServer_Award[3314169]["RewardItem"] = {}
	tNovServer_Award[3314169]["RewardItem"][1] = {}
	tNovServer_Award[3314169]["RewardItem"][1]["Id"] = 3322775 -- SeniorTreasureToken[3322775][属性:8][叠加:10000][金币:0], 【表格】至尊珍宝令*5500
	tNovServer_Award[3314169]["RewardItem"][1]["Attr"] = "0 5500" -- SeniorTreasureToken*5500（[错误]物品数量超10个）
	tNovServer_Award[3314169]["RewardEffect"] = {}
	tNovServer_Award[3314169]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovServer_Award[3314169]["RewardEffect"]["Effect"] = "angelwing"


	tNovServer_Award[3314170] = {}
	-- ===400000天石充值返利礼盒
	-- ===索引: tNovServer_Award[3314170]
	-- ===删除: 3314170,1
	-- ===EMoneyLog: 1000,1181
	tNovServer_Award[3314170]["LogId"] = 12001702
	tNovServer_Award[3314170]["EmoneyLog"] = "1000	1181	0	0	1	"
	tNovServer_Award[3314170]["DeleteItem"] = {}
	tNovServer_Award[3314170]["DeleteItem"][1] = {}
	tNovServer_Award[3314170]["DeleteItem"][1]["Id"] = 3314170 -- 【库】400000CPsCreditRebateBox[属性:9]
	tNovServer_Award[3314170]["RewardItem"] = {}
	tNovServer_Award[3314170]["RewardItem"][1] = {}
	tNovServer_Award[3314170]["RewardItem"][1]["Id"] = 3322775 -- SeniorTreasureToken[3322775][属性:8][叠加:10000][金币:0], 【表格】至尊珍宝令*7000
	tNovServer_Award[3314170]["RewardItem"][1]["Attr"] = "0 7000" -- SeniorTreasureToken*7000（[错误]物品数量超10个）
	tNovServer_Award[3314170]["RewardEffect"] = {}
	tNovServer_Award[3314170]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovServer_Award[3314170]["RewardEffect"]["Effect"] = "angelwing"


	tNovServer_Award[3314171] = {}
	-- ===510000天石充值返利礼盒
	-- ===索引: tNovServer_Award[3314171]
	-- ===删除: 3314171,1
	-- ===EMoneyLog: 1000,1182
	tNovServer_Award[3314171]["LogId"] = 12001702
	tNovServer_Award[3314171]["EmoneyLog"] = "1000	1182	0	0	1	"
	tNovServer_Award[3314171]["DeleteItem"] = {}
	tNovServer_Award[3314171]["DeleteItem"][1] = {}
	tNovServer_Award[3314171]["DeleteItem"][1]["Id"] = 3314171 -- 【库】510000CPsCreditRebateBox[属性:9]
	tNovServer_Award[3314171]["RewardItem"] = {}
	tNovServer_Award[3314171]["RewardItem"][1] = {}
	tNovServer_Award[3314171]["RewardItem"][1]["Id"] = 3322775 -- SeniorTreasureToken[3322775][属性:8][叠加:10000][金币:0], 【表格】至尊珍宝令*8500
	tNovServer_Award[3314171]["RewardItem"][1]["Attr"] = "0 8500" -- SeniorTreasureToken*8500（[错误]物品数量超10个）
	tNovServer_Award[3314171]["RewardEffect"] = {}
	tNovServer_Award[3314171]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovServer_Award[3314171]["RewardEffect"]["Effect"] = "angelwing"


	tNovServer_Award[3314172] = {}
	-- ===630000天石充值返利礼盒
	-- ===索引: tNovServer_Award[3314172]
	-- ===删除: 3314172,1
	-- ===EMoneyLog: 1000,1183
	tNovServer_Award[3314172]["LogId"] = 12001702
	tNovServer_Award[3314172]["EmoneyLog"] = "1000	1183	0	0	1	"
	tNovServer_Award[3314172]["DeleteItem"] = {}
	tNovServer_Award[3314172]["DeleteItem"][1] = {}
	tNovServer_Award[3314172]["DeleteItem"][1]["Id"] = 3314172 -- 【库】630000CPsCreditRebateBox[属性:9]
	tNovServer_Award[3314172]["RewardItem"] = {}
	tNovServer_Award[3314172]["RewardItem"][1] = {}
	tNovServer_Award[3314172]["RewardItem"][1]["Id"] = 3322775 -- SeniorTreasureToken[3322775][属性:8][叠加:10000][金币:0], 【表格】至尊珍宝令*9000
	tNovServer_Award[3314172]["RewardItem"][1]["Attr"] = "0 9000" -- SeniorTreasureToken*9000（[错误]物品数量超10个）
	tNovServer_Award[3314172]["RewardEffect"] = {}
	tNovServer_Award[3314172]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovServer_Award[3314172]["RewardEffect"]["Effect"] = "angelwing"


	tNovServer_Award[3314173] = {}
	-- ===760000天石充值返利礼盒
	-- ===索引: tNovServer_Award[3314173]
	-- ===删除: 3314173,1
	-- ===EMoneyLog: 1000,1184
	tNovServer_Award[3314173]["LogId"] = 12001702
	tNovServer_Award[3314173]["EmoneyLog"] = "1000	1184	0	0	1	"
	tNovServer_Award[3314173]["DeleteItem"] = {}
	tNovServer_Award[3314173]["DeleteItem"][1] = {}
	tNovServer_Award[3314173]["DeleteItem"][1]["Id"] = 3314173 -- 【库】760000CPsCreditRebateBox[属性:9]
	tNovServer_Award[3314173]["RewardItem"] = {}
	tNovServer_Award[3314173]["RewardItem"][1] = {}
	tNovServer_Award[3314173]["RewardItem"][1]["Id"] = 3322775 -- SeniorTreasureToken[3322775][属性:8][叠加:10000][金币:0], 【表格】至尊珍宝令*11000
	tNovServer_Award[3314173]["RewardItem"][1]["Attr"] = "0 11000" -- SeniorTreasureToken*11000（[错误]物品数量超10个）
	tNovServer_Award[3314173]["RewardEffect"] = {}
	tNovServer_Award[3314173]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovServer_Award[3314173]["RewardEffect"]["Effect"] = "angelwing"


	tNovServer_Award[3314174] = {}
	-- ===910000天石充值返利礼盒
	-- ===索引: tNovServer_Award[3314174]
	-- ===删除: 3314174,1
	-- ===EMoneyLog: 1000,1185
	tNovServer_Award[3314174]["LogId"] = 12001702
	tNovServer_Award[3314174]["EmoneyLog"] = "1000	1185	0	0	1	"
	tNovServer_Award[3314174]["DeleteItem"] = {}
	tNovServer_Award[3314174]["DeleteItem"][1] = {}
	tNovServer_Award[3314174]["DeleteItem"][1]["Id"] = 3314174 -- 【库】910000CPsCreditRebateBox[属性:9]
	tNovServer_Award[3314174]["RewardItem"] = {}
	tNovServer_Award[3314174]["RewardItem"][1] = {}
	tNovServer_Award[3314174]["RewardItem"][1]["Id"] = 3322775 -- SeniorTreasureToken[3322775][属性:8][叠加:10000][金币:0], 【表格】至尊珍宝令*15000
	tNovServer_Award[3314174]["RewardItem"][1]["Attr"] = "0 15000" -- SeniorTreasureToken*15000（[错误]物品数量超10个）
	tNovServer_Award[3314174]["RewardEffect"] = {}
	tNovServer_Award[3314174]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovServer_Award[3314174]["RewardEffect"]["Effect"] = "angelwing"


	tNovServer_Award[3314175] = {}
	-- ===1100000天石充值返利礼盒
	-- ===索引: tNovServer_Award[3314175]
	-- ===删除: 3314175,1
	-- ===EMoneyLog: 1000,1186
	tNovServer_Award[3314175]["LogId"] = 12001702
	tNovServer_Award[3314175]["EmoneyLog"] = "1000	1186	0	0	1	"
	tNovServer_Award[3314175]["DeleteItem"] = {}
	tNovServer_Award[3314175]["DeleteItem"][1] = {}
	tNovServer_Award[3314175]["DeleteItem"][1]["Id"] = 3314175 -- 【库】1100000CPsCreditRebateBox[属性:9]
	tNovServer_Award[3314175]["RewardItem"] = {}
	tNovServer_Award[3314175]["RewardItem"][1] = {}
	tNovServer_Award[3314175]["RewardItem"][1]["Id"] = 3322775 -- SeniorTreasureToken[3322775][属性:8][叠加:10000][金币:0], 【表格】至尊珍宝令*20000
	tNovServer_Award[3314175]["RewardItem"][1]["Attr"] = "0 20000" -- SeniorTreasureToken*20000（[错误]物品数量超10个）
	tNovServer_Award[3314175]["RewardItem"][2] = {}
	tNovServer_Award[3314175]["RewardItem"][2]["Id"] = 3314163 -- GoldenTransferToken[3314163][属性:8][叠加:1][金币:0], 【表格】10枚鎏金转服令
	tNovServer_Award[3314175]["RewardItem"][2]["Attr"] = "0 10" -- GoldenTransferToken*10
	tNovServer_Award[3314175]["RewardEffect"] = {}
	tNovServer_Award[3314175]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovServer_Award[3314175]["RewardEffect"]["Effect"] = "angelwing"


	tNovServer_Award[3314176] = {}
	-- ===1300000天石充值返利礼盒
	-- ===索引: tNovServer_Award[3314176]
	-- ===删除: 3314176,1
	-- ===EMoneyLog: 1000,1187
	tNovServer_Award[3314176]["LogId"] = 12001702
	tNovServer_Award[3314176]["EmoneyLog"] = "1000	1187	0	0	1	"
	tNovServer_Award[3314176]["DeleteItem"] = {}
	tNovServer_Award[3314176]["DeleteItem"][1] = {}
	tNovServer_Award[3314176]["DeleteItem"][1]["Id"] = 3314176 -- 【库】1300000CPsCreditRebateBox[属性:9]
	tNovServer_Award[3314176]["RewardItem"] = {}
	tNovServer_Award[3314176]["RewardItem"][1] = {}
	tNovServer_Award[3314176]["RewardItem"][1]["Id"] = 3322775 -- SeniorTreasureToken[3322775][属性:8][叠加:10000][金币:0], 【表格】至尊珍宝令*30000
	tNovServer_Award[3314176]["RewardItem"][1]["Attr"] = "0 30000" -- SeniorTreasureToken*30000（[错误]物品数量超10个）
	tNovServer_Award[3314176]["RewardItem"][2] = {}
	tNovServer_Award[3314176]["RewardItem"][2]["Id"] = 3314163 -- GoldenTransferToken[3314163][属性:8][叠加:1][金币:0], 【表格】10枚鎏金转服令
	tNovServer_Award[3314176]["RewardItem"][2]["Attr"] = "0 10" -- GoldenTransferToken*10
	tNovServer_Award[3314176]["RewardEffect"] = {}
	tNovServer_Award[3314176]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovServer_Award[3314176]["RewardEffect"]["Effect"] = "angelwing"


	tNovServer_Award[3314177] = {}
	-- ===1550000天石充值返利礼盒
	-- ===索引: tNovServer_Award[3314177]
	-- ===删除: 3314177,1
	-- ===EMoneyLog: 1000,1188
	tNovServer_Award[3314177]["LogId"] = 12001702
	tNovServer_Award[3314177]["EmoneyLog"] = "1000	1188	0	0	1	"
	tNovServer_Award[3314177]["DeleteItem"] = {}
	tNovServer_Award[3314177]["DeleteItem"][1] = {}
	tNovServer_Award[3314177]["DeleteItem"][1]["Id"] = 3314177 -- 【库】1550000CPsCreditRebateBox[属性:9]
	tNovServer_Award[3314177]["RewardItem"] = {}
	tNovServer_Award[3314177]["RewardItem"][1] = {}
	tNovServer_Award[3314177]["RewardItem"][1]["Id"] = 3322775 -- SeniorTreasureToken[3322775][属性:8][叠加:10000][金币:0], 【表格】至尊珍宝令*50000
	tNovServer_Award[3314177]["RewardItem"][1]["Attr"] = "0 50000" -- SeniorTreasureToken*50000（[错误]物品数量超10个）
	tNovServer_Award[3314177]["RewardItem"][2] = {}
	tNovServer_Award[3314177]["RewardItem"][2]["Id"] = 3314163 -- GoldenTransferToken[3314163][属性:8][叠加:1][金币:0], 【表格】10枚鎏金转服令
	tNovServer_Award[3314177]["RewardItem"][2]["Attr"] = "0 10" -- GoldenTransferToken*10
	tNovServer_Award[3314177]["RewardEffect"] = {}
	tNovServer_Award[3314177]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovServer_Award[3314177]["RewardEffect"]["Effect"] = "angelwing"


	tNovServer_Award[3314241] = {}
	-- ===神装大礼包
	-- ===索引: tNovServer_Award[3314241]
	-- ===删除: 3314241,1
	tNovServer_Award[3314241]["LogId"] = 12001702
	tNovServer_Award[3314241]["DeleteItem"] = {}
	tNovServer_Award[3314241]["DeleteItem"][1] = {}
	tNovServer_Award[3314241]["DeleteItem"][1]["Id"] = 3314241 -- 【库】GoldenBlissBox[属性:9]
	tNovServer_Award[3314241]["RewardItem"] = {}
	tNovServer_Award[3314241]["RewardItem"][1] = {}
	tNovServer_Award[3314241]["RewardItem"][1]["Id"] = 3326409 -- +8SuperGearChest[3326409][属性:9][叠加:1][金币:0], 【表格】+8极品装备宝箱
	tNovServer_Award[3314241]["RewardItem"][1]["Attr"] = "0 1" -- +8SuperGearChest*1
	tNovServer_Award[3314241]["RewardItem"][2] = {}
	tNovServer_Award[3314241]["RewardItem"][2]["Id"] = 3326414 -- +5RuneChest[3326414][属性:9][叠加:1][金币:0], 【表格】（+5）职业神纹宝箱
	tNovServer_Award[3314241]["RewardItem"][2]["Attr"] = "0 1" -- +5RuneChest*1
	tNovServer_Award[3314241]["RewardItem"][3] = {}
	tNovServer_Award[3314241]["RewardItem"][3]["Id"] = 3326415 -- +5YellowRuneChest[3326415][属性:9][叠加:1][金币:0], 【表格】（+5）黄色神纹宝箱
	tNovServer_Award[3314241]["RewardItem"][3]["Attr"] = "0 1" -- +5YellowRuneChest*1
	tNovServer_Award[3314241]["RewardItem"][4] = {}
	tNovServer_Award[3314241]["RewardItem"][4]["Id"] = 3326416 -- +5RareYellowRuneChest[3326416][属性:9][叠加:1][金币:0], 【表格】（+5）稀有黄色神纹宝箱
	tNovServer_Award[3314241]["RewardItem"][4]["Attr"] = "0 1" -- +5RareYellowRuneChest*1
	tNovServer_Award[3314241]["RewardItem"][5] = {}
	tNovServer_Award[3314241]["RewardItem"][5]["Id"] = 3326420 -- Sub-classChest[3326420][属性:9][叠加:1][金币:0], 【表格】副职业就职宝箱
	tNovServer_Award[3314241]["RewardItem"][5]["Attr"] = "0 1" -- Sub-classChest*1
	tNovServer_Award[3314241]["RewardItem"][6] = {}
	tNovServer_Award[3314241]["RewardItem"][6]["Id"] = 3326421 -- PrimaryInnerPowerChest[3326421][属性:9][叠加:1][金币:0], 【表格】初级内功宝箱
	tNovServer_Award[3314241]["RewardItem"][6]["Attr"] = "0 1" -- PrimaryInnerPowerChest*1
	tNovServer_Award[3314241]["RewardItem"][7] = {}
	tNovServer_Award[3314241]["RewardItem"][7]["Id"] = 3326423 -- P7DragonSoulChest[3326423][属性:9][叠加:1][金币:0], 【表格】7阶全套神魂宝箱
	tNovServer_Award[3314241]["RewardItem"][7]["Attr"] = "0 1" -- P7DragonSoulChest*1
	tNovServer_Award[3314241]["RewardItem"][8] = {}
	tNovServer_Award[3314241]["RewardItem"][8]["Id"] = 3326425 -- 240RadiantStarStonesChest[3326425][属性:9][叠加:1][金币:0], 【表格】璀璨星陨石*220宝箱
	tNovServer_Award[3314241]["RewardItem"][8]["Attr"] = "0 1" -- 240RadiantStarStonesChest*1
	tNovServer_Award[3314241]["RewardItem"][9] = {}
	tNovServer_Award[3314241]["RewardItem"][9]["Id"] = 3009104 -- RedBodhiBean[3009104][属性:9][叠加:99][金币:0], 【表格】血菩提
	tNovServer_Award[3314241]["RewardItem"][9]["Attr"] = "0 66" -- RedBodhiBean*66（[错误]物品数量超10个）
	tNovServer_Award[3314241]["RewardItem"][10] = {}
	tNovServer_Award[3314241]["RewardItem"][10]["Id"] = 2169065 -- WonderLamp[2169065][属性:9][叠加:0][金币:0], 【表格】一元灯
	tNovServer_Award[3314241]["RewardItem"][10]["Attr"] = "0 1" -- WonderLamp*1
	tNovServer_Award[3314241]["RewardEffect"] = {}
	tNovServer_Award[3314241]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovServer_Award[3314241]["RewardEffect"]["Effect"] = "angelwing"
	tNovServer_Award[3314465] = {}
	-- ===13CPBag
	-- ===索引: tNovServer_Award[3314465]
	-- ===删除: 3314465,1
	-- ===NewEMoneyLog: 1000,1249
	tNovServer_Award[3314465]["LogId"] = 12001702
	tNovServer_Award[3314465]["DeleteItem"] = {}
	tNovServer_Award[3314465]["DeleteItem"][1] = {}
	tNovServer_Award[3314465]["DeleteItem"][1]["Id"] = 3314465 -- 【库】 3314465 【库里没有该物品】[属性:]
	tNovServer_Award[3314465]["RewardEMoney"] = {}
	tNovServer_Award[3314465]["RewardEMoney"]["Value"] = 13 -- 天石, 【需求】13天石
	tNovServer_Award[3314465]["RewardEMoney"]["NewEmoneyLog"] = "1000	1249"
	tNovServer_Award[3314465]["RewardEffect"] = {}
	tNovServer_Award[3314465]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovServer_Award[3314465]["RewardEffect"]["Effect"] = "angelwing"
	tNovServer_Award[3314466] = {}
	-- ===500KSilverPack
	-- ===索引: tNovServer_Award[3314466]
	-- ===删除: 3314466,1
	tNovServer_Award[3314466]["LogId"] = 12001702
	tNovServer_Award[3314466]["DeleteItem"] = {}
	tNovServer_Award[3314466]["DeleteItem"][1] = {}
	tNovServer_Award[3314466]["DeleteItem"][1]["Id"] = 3314466 -- 【库】 3314466 【库里没有该物品】[属性:]
	tNovServer_Award[3314466]["RewardMoney"] = {}
	tNovServer_Award[3314466]["RewardMoney"]["Value"] = 500000 -- 金币, 【需求】50w银两
	tNovServer_Award[3314466]["RewardEffect"] = {}
	tNovServer_Award[3314466]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovServer_Award[3314466]["RewardEffect"]["Effect"] = "angelwing"

	tNovServer_Award[1] = {}
	-- ===保底奖励
	-- ===索引: tNovServer_Award[1]
	tNovServer_Award[1]["LogId"] = 12001702
	tNovServer_Award[1]["RewardItem"] = {}
	tNovServer_Award[1]["RewardItem"][1] = {}
	tNovServer_Award[1]["RewardItem"][1]["Id"] = 3314466 -- 【库】 3314466 【库里没有该物品】[属性:]
	tNovServer_Award[1]["RewardItem"][1]["Attr"] = "0 1" -- 3314466, 【需求】500KSilverPack
	tNovServer_Award[1]["RewardEffect"] = {}
	tNovServer_Award[1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovServer_Award[1]["RewardEffect"]["Effect"] = "angelwing"

local tNovServer_MonsterDrop = {}
	-- ===妖后掉落转服令
	-- ===索引: tNovServer_MonsterDrop[3970]
	tNovServer_MonsterDrop[3970] = {}
	tNovServer_MonsterDrop[3970]["ItemChanceSum"] = 10000
	tNovServer_MonsterDrop[3970]["LogId"] = 12001702
	-- 鎏金转服令 - 0.1%
	tNovServer_MonsterDrop[3970][1] = {}
	tNovServer_MonsterDrop[3970][1]["RandomItemChanceType"] = 2
	tNovServer_MonsterDrop[3970][1]["ItemChance"] = 10
	tNovServer_MonsterDrop[3970][1]["RewardItem"] = {}
	tNovServer_MonsterDrop[3970][1]["RewardItem"][1] = {}
	tNovServer_MonsterDrop[3970][1]["RewardItem"][1]["Id"] = 3314163 -- GoldenTransferToken[3314163][属性:8][叠加:1][金币:0], 【表格】鎏金转服令
	tNovServer_MonsterDrop[3970][1]["RewardItem"][1]["Attr"] = "0 1" -- GoldenTransferToken*1
	tNovServer_MonsterDrop[3970][1]["RewardEffect"] = {}
	tNovServer_MonsterDrop[3970][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovServer_MonsterDrop[3970][1]["RewardEffect"]["Effect"] = "angelwing"

	-- 无物品 - 99.9%
	tNovServer_MonsterDrop[3970][2] = {}
	tNovServer_MonsterDrop[3970][2]["RandomItemChanceType"] = 2
	tNovServer_MonsterDrop[3970][2]["ItemChance"] = 9990
	tNovServer_MonsterDrop[1] = {}
	-- ===掉落13天石
	-- ===索引: tNovServer_MonsterDrop[1]
	tNovServer_MonsterDrop[1]["ItemChanceSum"] = 10000
	tNovServer_MonsterDrop[1]["LogId"] = 12001702
	-- 13天石 - 0.01%
	tNovServer_MonsterDrop[1][1] = {}
	tNovServer_MonsterDrop[1][1]["RandomItemChanceType"] = 2
	tNovServer_MonsterDrop[1][1]["ItemChance"] = 1
	tNovServer_MonsterDrop[1][1]["RewardItem"] = {}
	tNovServer_MonsterDrop[1][1]["RewardItem"][1] = {}
	tNovServer_MonsterDrop[1][1]["RewardItem"][1]["Id"] = 3314465 --  3314465 【库里没有该物品】, 【表格】13天石
	tNovServer_MonsterDrop[1][1]["RewardItem"][1]["Attr"] = "0 1" --  3314465 【库里没有该物品】*1
	tNovServer_MonsterDrop[1][1]["GlobalId"] = 53876
	tNovServer_MonsterDrop[1][1]["Pos"] = 0
	tNovServer_MonsterDrop[1][1]["MaxData"] =288
	tNovServer_MonsterDrop[1][1]["FullIndex"]= 2
	tNovServer_MonsterDrop[1][1]["RewardEffect"] = {}
	tNovServer_MonsterDrop[1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovServer_MonsterDrop[1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 无物品 - 99.9%
	tNovServer_MonsterDrop[1][2] = {}
	tNovServer_MonsterDrop[1][2]["RandomItemChanceType"] = 2
	tNovServer_MonsterDrop[1][2]["ItemChance"] = 9999
	tNovServer_MonsterDrop[2] = {}
	-- ===掉落50w银两
	-- ===索引: tNovServer_MonsterDrop[2]
	tNovServer_MonsterDrop[2]["ItemChanceSum"] = 10000
	tNovServer_MonsterDrop[2]["LogId"] = 12001702
	-- 50w银两 - 0.01%
	tNovServer_MonsterDrop[2][1] = {}
	tNovServer_MonsterDrop[2][1]["RandomItemChanceType"] = 2
	tNovServer_MonsterDrop[2][1]["ItemChance"] = 1
	tNovServer_MonsterDrop[2][1]["RewardItem"] = {}
	tNovServer_MonsterDrop[2][1]["RewardItem"][1] = {}
	tNovServer_MonsterDrop[2][1]["RewardItem"][1]["Id"] = 3314466 --  3314466 【库里没有该物品】, 【表格】50w银两
	tNovServer_MonsterDrop[2][1]["RewardItem"][1]["Attr"] = "0 1" --  3314466 【库里没有该物品】*1
	tNovServer_MonsterDrop[2][1]["GlobalId"] = 53877
	tNovServer_MonsterDrop[2][1]["Pos"] = 0
	tNovServer_MonsterDrop[2][1]["MaxData"] =600
	tNovServer_MonsterDrop[2][1]["FullIndex"]= 2
	tNovServer_MonsterDrop[2][1]["RewardEffect"] = {}
	tNovServer_MonsterDrop[2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovServer_MonsterDrop[2][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 无物品 - 99.9%
	tNovServer_MonsterDrop[2][2] = {}
	tNovServer_MonsterDrop[2][2]["RandomItemChanceType"] = 2
	tNovServer_MonsterDrop[2][2]["ItemChance"] = 9999



----------------------------------逻辑部分---------------------------------------------
--打开内嵌网页
function NovServer_OpenWeb(nIndex)
	local nUserId = Get_UserId()
	User_SendWebDialog(tNovServer_Web[nIndex],nUserId)
end 

function NovServer_UpLev()
	local nUserId = Get_UserId()
	local nUserMete = Get_UserMetempsychosis(nUserId)
	-- 已二转
	if nUserMete >= 2 then
		User_UpLevelTo(tNovServer_Data["MaxLev"])
		local nNovServer_NowPoint = NovServer_GetAttrPoint(nUserId)
		local nNovServer_AddPoint = G_User_AttrPoint - nNovServer_NowPoint
		User_AddAddPoint(nNovServer_AddPoint,nUserId)
		return
	end
	-- 未转世
	if nUserMete == 0 then
		NovServer_Metempsychosis(1)
	end
	-- 二转
	NovServer_Metempsychosis(2)
	User_UpLevelTo(tNovServer_Data["MaxLev"])
	Sys_MsgBox(tNovServer_Text["Login"])
	local nNovServer_NowPoint = NovServer_GetAttrPoint(nUserId)
	local nNovServer_AddPoint = G_User_AttrPoint - nNovServer_NowPoint
	User_AddAddPoint(nNovServer_AddPoint,nUserId)
end

-- 获取玩家当前属性点
function NovServer_GetAttrPoint(nUserId)
	local nStrength = Get_UserStrength(nUserId)
	local nSpeed = Get_UserSpeed(nUserId)
	local nHealth = Get_UserHealth(nUserId)
	local nSoul = Get_UserSoul(nUserId)
	local nPoint = Get_UserAddPoint(nUserId)
	return nStrength + nSpeed + nHealth + nSoul + nPoint
end

-- 转世及技能处理
function NovServer_Metempsychosis(nMete)

	local nUserId = Get_UserId()
	local nLookFace = 8
	if Get_UserSex(nUserId) == 2 then
		nLookFace = 7
	end
	-- 等级未达到
	if (Get_UserLevel(nUserId) < tNovServer_Data["MaxLev"]) then
		User_UpLevelTo(tNovServer_Data["MaxLev"])
	end
	
	local nProfession = Get_UserProfession(nUserId)
	if nProfession>=100 and nProfession<=101 then 
		nProfession = 132
	end 

	-- 计算最高职级
	local nGreatPro = (math.floor(nProfession/10)*1000)+5
	User_SetProfession(nGreatPro, nUserId)

	
	-- 玩家转世
	local nNowPro = Get_UserProfession(nUserId)
	local nNewPro = (math.floor(Get_UserProfession(nUserId)/10)*1000)+1
	local nChoosePro = (math.floor(nNowPro/10)*10)+1
	if nNowPro==135 or nNowPro ==145 then 
		nNewPro = (math.floor(Get_UserProfession(nUserId)/10)*1000)+2
		nChoosePro = (math.floor(nNowPro/10)*10)+2
	end 
	
	User_Rebirth(nNewPro,nLookFace,nMete,nUserId) 

	
	-- 转世技能处理
	if not User_RebirthSkill(nUserId) then
		return
	end
	-- 继承原有职业的部分技能
	if not NovServer_Inherit(nMete,nNowPro,nChoosePro) then
		return
	end
	-- 转世遗忘技能
	if not User_UnlearnSkill(nUserId) then
		return
	end
	
end

-- 继承原有职业的部分技能
function NovServer_Inherit(nMete,nNowPro,nChoosePro)
	local nUserId = Get_UserId()
	if tNovServer_Skill[nMete] == nil then
		return true
	end

	-- 判断该职业是否有需要继承技能的配置
	if tNovServer_Skill[nMete][nNowPro] == nil then
		return true
	end

	-- 判断选择要转世的职业是否有需要继承技能的配置
	if tNovServer_Skill[nMete][nNowPro][nChoosePro] == nil then
		return true
	end

	for i,v in pairs(tNovServer_Skill[nMete][nNowPro][nChoosePro]) do
		if not Magic_ChkType(v,nUserId) then
			Magic_Learn(v,nUserId)
		end
	end
	return true
end

--输入预转移天石或银两
function NovServer_TransferEmoney(nItemId,nClear,nIndex)
	local nUserId = Get_UserId()
	--是否清除数据
	if nClear ==1 then 
		tNovServer_Num[nIndex][nUserId] = 0
	end 
	local nNum = tNovServer_Num[nIndex][nUserId]
	--判断是否有数据
	if nNum == 0 or nNum == nil then 
		Sys_DialogItemFace(nItemId)
		Sys_DialogText(string.format(tNovServer_Text[nItemId]["Text211"],tNovServer_Text[nItemId][nIndex]))
		local sText = string.format(tNovServer_Text[nItemId]["Text212"],tNovServer_Text[nItemId][nIndex])
		Sys_DialogOptEdit(sText,10,"NovServer_detection</N>3314163</N>"..nIndex)
		Sys_DialogEnd()
	else  
		tItem[nItemId]["Text231"] = string.format(tNovServer_Text[nItemId]["Text231"],nNum,tNovServer_Text[nItemId][nIndex])
		tItem[nItemId]["Option231"] = string.format(tNovServer_Text[nItemId]["Option231"],tNovServer_Text[nItemId][nIndex])
		tItem[nItemId]["OptionFunc231"]="NovServer_TransferEmoney</N>3314163</N>1</N>"..nIndex
		LinkItemGossipFunc_New(nItemId,"2-3")
		
	end
end 

--确认转移数量
function NovServer_detection(nItemId,nIndex)
	local nUserId = Get_UserId()
	-- 判断输入格式
	local nInput = tonumber(Get_SysAcceptStr())
	--判断是否输入数字
	if type(nInput) == "number" and nInput>0 then 
		local nEvent = tNovServer_Stc["EventType"] 
		local nType = tNovServer_Stc["DataType"][nIndex]
		local nData = Get_UserStatisticValue(nEvent,nType)
		local nNum = nInput+nData
		--判断转移上限，钱够不够，记录预转移数量(1天石 5w 2银两 30亿)
		if nIndex == 1 then 
			local nResidue = tNovServer_Data["EmoneyMax"]-nData
			if nInput > tNovServer_Data["EmoneyMax"]  then
				Sys_MsgBox(string.format(tNovServer_Text[nItemId]["EmoneyMax"],nResidue))
				return 
			end 
			if Get_UserEMoney() < nInput then
				Sys_MsgBox(tNovServer_Text[nItemId]["NoEmoney"])
				return 
			end 
			if nNum >tNovServer_Data["EmoneyMax"] then 
				Sys_MsgBox(tNovServer_Text[nItemId]["TransferEmoneyMax"])
				return 
			end 
		else 
			local nResidue = tNovServer_Data["SilverMax"]-nData
			if nInput > tNovServer_Data["SilverMax"]  then
				Sys_MsgBox(tNovServer_Text[nItemId]["SilverMax"])
				return 
			end 
			if not User_CanPutMoney2Bag(-nInput) then
				Sys_MsgBox(tNovServer_Text[nItemId]["NoSilver"])
				return
			end
			if nNum >tNovServer_Data["SilverMax"] then 
				Sys_MsgBox(string.format(tNovServer_Text[nItemId]["TransferSilverMax"],nResidue))
				return 
			end 
		end 
		tNovServer_Num[nIndex][nUserId] = nInput
		--跳转成功
		tItem[nItemId]["Text221"] = string.format(tNovServer_Text[nItemId]["Text221"],nInput,tNovServer_Text[nItemId][nIndex])
		LinkItemGossipFunc_New(nItemId,"2-2")
	else
		Sys_MsgBox(tNovServer_Text[nItemId]["Nonum"])
	end 
end

--转移天石和银两
function NovServer_Affirm(nItemId)
	local nUserId = Get_UserId()
	local nEvent = tNovServer_Stc["EventType"] 
	local nEmoneyType = tNovServer_Stc["DataType"][1]
	local nSilverType = tNovServer_Stc["DataType"][2]
	local nEmoney = tNovServer_Num[1][nUserId]
	local nSilver = tNovServer_Num[2][nUserId]
	if nEmoney==nil and nSilver ==nil then 
		
		Sys_MsgBox(tNovServer_Text[nItemId]["Nonum"])
		return 
	end 
	--判断天石和银两是否足够
	if nEmoney >0 then 
		if Get_UserEMoney() < nEmoney then
			Sys_MsgBox(tNovServer_Text[nItemId]["NoMoney"])
			return 
		end 
	end 
	if nSilver>0 then 
		if not User_CanPutMoney2Bag(-nSilver) then
			Sys_MsgBox(tNovServer_Text[nItemId]["NoMoney"])
			return
		end
	end 
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		--扣天石加掩码
		if User_AddEMoneyAndLog(-nEmoney,tNovServer_Log["Emoney"]) then
			--加掩码
			Task_AddStatistic(nEvent,nEmoneyType,nEmoney,1)
			Task_SetStcTimestamp(nEvent,nEmoneyType,0)
			--加Log
			Sys_SaveActionFestivalLog(string.format(tNovServer_Log["Emoneylog"],nEmoney))
		end
		-- 扣除银两
		if User_AddMoney(-nSilver,nUserId) then
			--加掩码
			Task_AddStatistic(nEvent,nSilverType,nSilver,1)
			Task_SetStcTimestamp(nEvent,nSilverType,0)
			--加Log
			Sys_SaveActionFestivalLog(string.format(tNovServer_Log["Emoneylog"],nSilver))
		end
		--清空预转移表
		tNovServer_Num[1][nUserId] = 0
		tNovServer_Num[2][nUserId] = 0
		tItem[3314163]["Text421"] =string.format(tNovServer_Text[3314163]["Text421"],nEmoney,nSilver)
		LinkItemGossipFunc_New(nItemId,"4-2")
	end
end 

--boss死亡
function NovServer_BossDie(nMonsterId)
	local nGlobalId = tNovServer_Data["GlobalId"]
	local nSeverID = tNovServer_Data["SeverGlobalId"]
	local nData = Get_SysDynaGlobalData(nGlobalId,0)
	local nTime = Get_SysDynaGlobalData(nGlobalId,1)
	local nIsSever = Get_SysDynaGlobalData(nSeverID,0)
	--非新服不掉
	if nIsSever ~= 1 then 
		return 
	end 
	--可掉落
	if nData<=0 then
		local tReward,sRewardStr = RewardTemplate_NewRandom(tNovServer_MonsterDrop,nMonsterId)
		if sRewardStr ~= nil then 
			--加global
			Sys_SetSynaGlobalData0(nGlobalId,1)
			Sys_SetSynaGlobalData2(nGlobalId,0)
			Sys_SetSynaGlobalData1(nGlobalId,os.time())
		end 
	end 
end 

--一般礼包使用
function NovServer_NormalPack(nItemId)
	local nUserId = Get_UserId()
	local bJudge = TermsOfUse_Main(nItemId,tNovServer_Award[nItemId])
	if not bJudge then
		return
	end
	RewardTemplate_UseItemAndMsg(tNovServer_Award[nItemId],nUserId,bJudge)
end 

--时间自检
function tNovServer_ClearRankList()
	local nGlobalId = tNovServer_Data["GlobalId"]
	local nData = Get_SysDynaGlobalData(nGlobalId,0)
	local nTime = Get_SysDynaGlobalData(nGlobalId,1)
	local nCleardata = Get_SysDynaGlobalData(nGlobalId,2)	
	local nNowTime  = os.time()
	--掉落过未重置
	if not (nData == 0) and (nCleardata == 0)then
		--间隔超过30天
		if (nTime - nNowTime)>= tNovServer_Data["ColdTime"] then 
			-- 掉落数量清0
			Sys_SetSynaGlobalData0(nGlobalId,0)
			--标记改为已清空
			Sys_SetSynaGlobalData2(nGlobalId,1)
		end
	end
end 

--购买buff时间
function NovServer_BuyBuff(nTime,nEmoney,nNpcId)
	tNpcGossip[nNpcId]["Text212"] = string.format(tNovServer_Text[nNpcId]["Text212"],nEmoney,nTime)
	local nNowHave = math.floor(NovServer_GetTime()/60)
	if nNowHave<=0 then 
		nNowHave = 0
	end 
	tNpcGossip[nNpcId]["Text213"] = string.format(tNovServer_Text[nNpcId]["Text213"],nNowHave)
	tNpcGossip[nNpcId]["OptionFunc211"]="NovServer_AddTime</N>"..nEmoney.."</N>"..tNovServer_Data[nTime]
	LinkNpcGossipFunc_New(nNpcId,"2-1")
end 
--重置购买时间，加时间
function NovServer_AddTime(nEmoney,nTime)
	local nEvent = tNovServer_Stc["EventType"] 
	local nHaveType = tNovServer_Stc["DataType"]["HaveTime"]
	local nHaveData = Get_UserStatisticValue(nEvent,nHaveType)
	--判断天石
	if Get_UserEMoney() < nEmoney then
		Sys_MsgBox(tNovServer_Text[25496]["NoCPS"])
		return 
	end 
	--扣天石加掩码
	if User_AddEMoneyAndLog(-nEmoney,tNovServer_Log["Buff"]) then
		--加剩余时间
		local nHaveTime =nTime
		if NovServer_GetTime()>=0 then 
			nHaveTime = NovServer_GetTime()+ nTime
		end 
		Task_SetStatistic(nEvent,nHaveType,nHaveTime,1)
		Task_SetStcTimestamp(nEvent,nHaveType,0)
		--重置保底次数和杀怪次数
		Task_SetStatistic(tNovServer_Stc["BDEventType"],tNovServer_Stc["DataType"]["BD"],0,1)
		Task_SetStatistic(nEvent,tNovServer_Stc["DataType"]["Monster"],0,1)
		--加Log
		Sys_SaveActionFestivalLog(string.format(tNovServer_Log["Bufflog"],nEmoney))
		Sys_MsgBox(string.format(tNovServer_Text[25496]["Succeed"],math.floor(nHaveTime/60)))
	end
end
--获取玩家剩余时间
function NovServer_GetTime()
	local nEvent = tNovServer_Stc["EventType"] 
	local nHaveType = tNovServer_Stc["DataType"]["HaveTime"]
	--local nBuyType = tNovServer_Stc["DataType"]["BuyTime"] 
	local nHaveData = Get_UserStatisticValue(nEvent,nHaveType)
	local nBuyData = Get_UserStcTimestampValue(nEvent,nHaveType)
	--未购买buff
	if nHaveData ==0 or nHaveData==nil then 
		return 0
	else 
		--已购买buff，判断剩余时间
		local nNowTime = os.time()
		local nResidue = nNowTime-nBuyData
		if nResidue>=nHaveData then 
			Task_SetStatistic(nEvent,nHaveType,0,1)
			return 0
		else 
			local nHaveTime = nHaveData-nResidue
			--Task_SetStatistic(nEvent,nHaveType,nHaveTime,1)
			return nHaveTime
		end 
	end 
end 
--怪物掉落
function NovServer_KillMonster(nMonsterId)
	local nSeverID = tNovServer_Data["SeverGlobalId"]
	local nIsSever = Get_SysDynaGlobalData(nSeverID,0)
	local nEvent = tNovServer_Stc["EventType"] 
	local nMonsterType = tNovServer_Stc["DataType"]["Monster"]
	--非新服不掉
	if nIsSever ~= 1 then 
		return 
	end 
	--判断是否有超过buff时间
	local nNowHave = NovServer_GetTime()
	if nNowHave<=0 then 
		--超过时间清空buff时间和杀怪计数
		local nHaveType = tNovServer_Stc["DataType"]["HaveTime"]
		Task_SetStatistic(nEvent,nHaveType,0,1)
		Task_SetStatistic(nEvent,nMonsterType,0,1)
		return 
	end 
	
	RewardTemplate_NewRandom(tNovServer_MonsterDrop,1)
	RewardTemplate_NewRandom(tNovServer_MonsterDrop,2)
	
	--是否领过保底奖励
	local nBDReward = Get_UserStatisticValue(tNovServer_Stc["BDEventType"],tNovServer_Stc["DataType"]["BD"])
	if nBDReward >=1 then
		return 
	end 
	--杀怪加掩码
	Task_AddStatistic(nEvent,nMonsterType,1,1)
	Task_SetStcTimestamp(nEvent,nMonsterType,0)
	
	local nMonsterData = Get_UserStatisticValue(nEvent,nMonsterType)
	if nMonsterData >=100 then 
		Task_AddStatistic(tNovServer_Stc["BDEventType"],tNovServer_Stc["DataType"]["BD"],1,1)
		Task_SetStcTimestamp(tNovServer_Stc["BDEventType"],tNovServer_Stc["DataType"]["BD"],0)
		RewardTemplate_UseItemAndMsg(tNovServer_Award[1])
	end 
	
end 
----------------------------------NPC部分---------------------------------------------
tNpcFace[2159] = 2634
tNpcGossip[25496]= tNpcGossip[25496] or DefaultNpc:new{}
tNpcGossip[25496]["OptionHidden"] = 1
tNpcGossip[25496]["DialogueText"] = tNovServer_Text[25496]
tNpcGossip[25496]["Text1-1"] = {111,112,113,114}
tNpcGossip[25496]["tOption1-1"] = {111,112,113}

tNpcGossip[25496]["OptionFunc111"]="NovServer_BuyBuff</N>60</N>27</N>25496"
tNpcGossip[25496]["OptionFunc112"]="NovServer_BuyBuff</N>120</N>50</N>25496"
tNpcGossip[25496]["OptionFunc113"]="NovServer_BuyBuff</N>240</N>80</N>25496"
tNpcGossip[25496]["Text2-1"] = {211,212,213}
tNpcGossip[25496]["tOption2-1"] = {211,212,213}


tNpcFace[5057] = 180
tNpcGossip[25206]= tNpcGossip[25206] or DefaultNpc:new{}
tNpcGossip[25206]["OptionHidden"] = 1
tNpcGossip[25206]["DialogueText"] = tNovServer_Text[25206]

--活动前
tNpcGossip[25206]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[25206]["tOption1-1"] = {111}
tNpcGossip[25206]["ChkFunc1-1"] = function()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["NovServer"]["ActivityTime"])
end

--活动后
tNpcGossip[25206]["Text1-2"] = {121}
tNpcGossip[25206]["tOption1-2"] = {121}
tNpcGossip[25206]["ChkFunc1-2"] = function()
	return CommonFunc_GetAfterActivityTime(tActivityTime["NovServer"]["ActivityTime"])
end

--活动中 
tNpcGossip[25206]["Text1-3"] = {131,132,133,134}
tNpcGossip[25206]["tOption1-3"] = {131,132}
tNpcGossip[25206]["ChkFunc1-3"]= function()
--判断活动时间
	return Sys_ChkFullTime(tActivityTime["NovServer"]["ActivityTime"])
end 
--查看职业神装
tNpcGossip[25206]["OptionPoint131"]="2-1"
--前往区服大厅
tNpcGossip[25206]["OptionFunc132"]="NovServer_OpenWeb</N>1"
--前往狂欢大厅
--tNpcGossip[25206]["OptionFunc133"]="NovServer_OpenWeb</N>2"

tNpcGossip[25206]["Text2-1"] = {211,212,213,214,215,216,217,218,219,2110,2111,2112}
tNpcGossip[25206]["tOption2-1"] = {211}


---------------------------------物品部分---------------------------------------------
--神装大礼包
tItem[3314241] = tItem[3314241] or {}
tItem[3314241]["Function"] = function(nItemId,sItemName)
	NovServer_NormalPack(nItemId)
end
tItem[3314164] = tItem[3314241] or {}
tItem[3314165] = tItem[3314241] or {}
tItem[3314166] = tItem[3314241] or {}
tItem[3314167] = tItem[3314241] or {}
tItem[3314168] = tItem[3314241] or {}
tItem[3314169] = tItem[3314241] or {}
tItem[3314170] = tItem[3314241] or {}
tItem[3314171] = tItem[3314241] or {}
tItem[3314172] = tItem[3314241] or {}
tItem[3314173] = tItem[3314241] or {}
tItem[3314174] = tItem[3314241] or {}
tItem[3314175] = tItem[3314241] or {}
tItem[3314176] = tItem[3314241] or {}
tItem[3314177] = tItem[3314241] or {}
tItem[3314465] = tItem[3314241] or {}
tItem[3314466] = tItem[3314241] or {}

--鎏金转服令
tItemFace[3314163] = 2586
tItem[3314163] = tItem[3314163] or {}
tItem[3314163]["Text1-1"] = {111,112,113,114,115,116,117}
tItem[3314163]["Text111"] =tNovServer_Text[3314163]["Text111"]
tItem[3314163]["Text112"] =tNovServer_Text[3314163]["Text112"]
tItem[3314163]["Text113"] =tNovServer_Text[3314163]["Text113"]
tItem[3314163]["Text114"] =tNovServer_Text[3314163]["Text114"]
tItem[3314163]["Text115"] =tNovServer_Text[3314163]["Text115"]
tItem[3314163]["Text116"] =tNovServer_Text[3314163]["Text116"]
tItem[3314163]["Text117"] =tNovServer_Text[3314163]["Text117"]


tItem[3314163]["tOption1-1"] = {111,112,113,114}
--输入天石
tItem[3314163]["Option111"] = tNovServer_Text[3314163]["Option111"]
tItem[3314163]["OptionFunc111"]="NovServer_TransferEmoney</N>3314163</N>0</N>1"
--输入银两
tItem[3314163]["Option112"] = tNovServer_Text[3314163]["Option112"]
tItem[3314163]["OptionFunc112"]="NovServer_TransferEmoney</N>3314163</N>0</N>2"
--转移天石和银两
tItem[3314163]["Option113"] = tNovServer_Text[3314163]["Option113"]
tItem[3314163]["OptionPoint113"]="4-1"
--前往线下界面
tItem[3314163]["Option114"] = tNovServer_Text[3314163]["Option114"]
tItem[3314163]["OptionFunc114"]="NovServer_OpenWeb</N>1"

--成功转移天石
tItem[3314163]["Text2-2"] = {221,222}
tItem[3314163]["Text221"] =tNovServer_Text[3314163]["Text221"]
tItem[3314163]["Text222"] =tNovServer_Text[3314163]["Text222"]
tItem[3314163]["tOption2-2"] = {221,222}
tItem[3314163]["Option221"] = tNovServer_Text[3314163]["Option221"]
tItem[3314163]["OptionFunc221"]="NovServer_OpenWeb</N>1"
tItem[3314163]["Option222"] = tNovServer_Text[3314163]["Option222"]

--已输入过天石数量
tItem[3314163]["Text2-3"] = {231,232}
tItem[3314163]["Text231"] =tNovServer_Text[3314163]["Text231"]
tItem[3314163]["Text232"] =tNovServer_Text[3314163]["Text232"]
tItem[3314163]["tOption2-3"] = {231}
tItem[3314163]["Option231"] = tNovServer_Text[3314163]["Option231"]
--tItem[3314163]["OptionFunc231"]="NovServer_TransferEmoney</N>3314163</N>1</N>2"


tItem[3314163]["Text4-1"] = {411,412,413}
tItem[3314163]["Text411"] =tNovServer_Text[3314163]["Text411"]
tItem[3314163]["Text412"] =tNovServer_Text[3314163]["Text412"]
tItem[3314163]["Text413"] =tNovServer_Text[3314163]["Text413"]
tItem[3314163]["ChkFunc4-1"]= function()
	local nUserId = Get_UserId()
	local nEmoney = tNovServer_Num[1][nUserId]
	local nSilver = tNovServer_Num[2][nUserId]
	if nEmoney==nil then 
		tNovServer_Num[1][nUserId]=0
	end 
	if nSilver==nil then 
		tNovServer_Num[2][nUserId]=0
	end 
	tItem[3314163]["Text412"] =string.format(tNovServer_Text[3314163]["Text412"],nEmoney)
	tItem[3314163]["Text413"] =string.format(tNovServer_Text[3314163]["Text413"],nSilver)
	return true
end

tItem[3314163]["tOption4-1"] = {411,412}
tItem[3314163]["Option411"] = tNovServer_Text[3314163]["Option411"]
tItem[3314163]["OptionFunc411"]="NovServer_Affirm</N>3314163"
tItem[3314163]["Option412"] = tNovServer_Text[3314163]["Option412"]

--转移成功
tItem[3314163]["Text4-2"] = {421,422}
tItem[3314163]["Text421"] =tNovServer_Text[3314163]["Text421"]
tItem[3314163]["Text422"] =tNovServer_Text[3314163]["Text422"]
tItem[3314163]["tOption4-2"] = {421,422}
tItem[3314163]["Option421"] = tNovServer_Text[3314163]["Option421"]
tItem[3314163]["OptionFunc421"]="NovServer_OpenWeb</N>1"
tItem[3314163]["Option422"] = tNovServer_Text[3314163]["Option422"]
---------------------------------怪物部分---------------------------------------------
-- 3970	妖后瑶姬
local tNovServer_Boss = {}
	tNovServer_Boss["Function"] = NovServer_BossDie
	tNovServer_Boss["MonsterId"] = {3970}
table.insert(tMonsterDrop_AreaLoad,tNovServer_Boss)

--古神灵境掉落
local tNovServer_KillMonster = {}
tNovServer_KillMonster["Function"]= NovServer_KillMonster
tNovServer_KillMonster["MonsterId"] = {3973,3974,3975,4709,4710,4711,4712,4713,4720,4717,4718,4719,3976,3977,3978,3970,3971,3979,3981,3982,3983,3984,3986,3992}
table.insert(tMonsterDrop_AreaLoad,tNovServer_KillMonster)

local tNovServer_ClearRankList = {}
tNovServer_ClearRankList["Type"] = 2  -- 重置动态存储值
tNovServer_ClearRankList["TimeType"] = 4  -- 日时间
tNovServer_ClearRankList["Time"] = "00:00 00:03"
tNovServer_ClearRankList["Func"] = tNovServer_ClearRankList
table.insert(tSystemTime_InitialData,tNovServer_ClearRankList)
-- 动态存储表清零
tGlobalData_Info[53876] = {}
tGlobalData_Info[53876]["Time"] = {}
tGlobalData_Info[53876]["Time"]["ClearTime"] = "00:00 00:02"
tGlobalData_Info[53876]["Rest"] = {}
tGlobalData_Info[53876]["Rest"]["GlobalId"] = {53876}
tGlobalData_Info[53876]["Rest"]["Pos"] = {0}
tGlobalData_Info[53877] = {}
tGlobalData_Info[53877]["Time"] = {}
tGlobalData_Info[53877]["Time"]["ClearTime"] = "00:00 00:02"
tGlobalData_Info[53877]["Rest"] = {}
tGlobalData_Info[53877]["Rest"]["GlobalId"] = {53877}
tGlobalData_Info[53877]["Rest"]["Pos"] = {0}