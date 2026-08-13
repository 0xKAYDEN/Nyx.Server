------------------------------------------------------------------------------------
--Name:			200506[简体征服][活动脚本]忍者主题PK活动
--Creator:		杨志翔
--Created:		2020/05/06
------------------------------------------------------------------------------------
--NjThPK
--lua 41825
--{54439,54440,54441,54442} 忍者排名
--{54443,54444,54445,54446} 非忍者排名
--map 10860
--npc 26553 主npc
--npc 26554 隐身npc
--id >= 94492369 AND id <= 94492386
--100001819 emoneylog
--12001985 log
--stc 221 54 记录分数
--    221 55 参与奖
--	  221 56 排名领奖记录
--	  221 57 积分奖励领取记录
--3330928 卷轴
--3330929 背包信


---------------------------------逻辑部分------------------------------------------
local tNjThPk_Cont = {}
--ActivityTime
tNjThPk_Cont["ActTime"] = tActivityTime["NjThPk"]["ActivityTime"]
--entertime 
tNjThPk_Cont["PKtime"] = tActivityTime["NjThPk"]["PKtime"]
--地图id与地图相关的数据
tNjThPk_Cont["Map"] = {}
tNjThPk_Cont["Map"]["MapId"] = 10860
tNjThPk_Cont["Map"]["PosX"] = 259
tNjThPk_Cont["Map"]["PosY"] = 375
		--重生点
tNjThPk_Cont["Map"]["ReBorn"] = {}

tNjThPk_Cont["Global"] = {}
tNjThPk_Cont["Global"]["Summon"] = 54447
--回城位置 
tNjThPk_Cont["Map"]["Back"] = {}
tNjThPk_Cont["Map"]["Back"]["Normal"] = {}
tNjThPk_Cont["Map"]["Back"]["Normal"]["MapId"] = 1002
tNjThPk_Cont["Map"]["Back"]["Normal"]["X"] = 319
tNjThPk_Cont["Map"]["Back"]["Normal"]["Y"] = 447
tNjThPk_Cont["Map"]["Back"]["Passion"] = {}
tNjThPk_Cont["Map"]["Back"]["Passion"]["MapId"] = 1036
tNjThPk_Cont["Map"]["Back"]["Passion"]["X"] = 264
tNjThPk_Cont["Map"]["Back"]["Passion"]["Y"] = 234
--物品与物品相关的数据
tNjThPk_Cont["Item"] = {}
tNjThPk_Cont["Item"]["PickUp"] = 3330928
tNjThPk_Cont["Item"]["PickUpStatus"] = 138
	
--
tNjThPk_Cont["RandomTrans"] = {
	[1] = {
		["PosX"] = 247,
		["PosY"] = 125,
	},
	[2] = {
		["PosX"] = 172,
		["PosY"] = 142,
	},
	[3] = {
		["PosX"] = 180,
		["PosY"] = 204,
	},
	[4] = {
		["PosX"] = 157,
		["PosY"] = 273,
	},
	[5] = {
		["PosX"] = 188,
		["PosY"] = 246,
	},
	[6] = {
		["PosX"] = 192,
		["PosY"] = 185,
	},
}
tNjThPk_Cont["Npc"] = {}
--排行榜npc
tNjThPk_Cont["Npc"]["NinjaRank"] = 26551
tNjThPk_Cont["Npc"]["NotNinjaRank"] = 26552
--主npc
tNjThPk_Cont["Npc"]["Main"] = 26553
--地图内隐藏npc
tNjThPk_Cont["Npc"]["Hide"] = 26554
tNjThPk_Cont["Npc"]["HideName"] = tNjThPk_Text["HideName"]
tNjThPk_Cont["Npc"]["HideLookFace"] = 24180
--使用忍者卷轴获得buff
tNjThPk_Cont["Buff"] = {}
tNjThPk_Cont["Buff"]["Status"] = 138
tNjThPk_Cont["Buff"]["Power"] = 100
tNjThPk_Cont["Buff"]["Secs"] = 30
tNjThPk_Cont["Lev"] = 80
--设计需求 记录金币购买数量
tNjThPk_Cont["EMoneyLog"] = "1000	01894	%d	%d	1	"
--积分等级
tNjThPk_Cont["Level"] = {
	[1] = 500,
	[2] = 1000,
	[3] = 2000,
	[4] = 3000,
	[5] = 4000,
	[6] = 6000,
	[7] = 8000,
	[8] = 10000,
}
--隐藏npc的位置与action
--带一个参数 执行NjThPK_HideNpc
tNjThPk_Cont["Hide"] = {
	[1] = {
		["PosX"] = 248,
		["PosY"] = 336,
		["Action"] = 94492369,
	},
	[2] = {
		["PosX"] = 266,
		["PosY"] = 295,
		["Action"] = 94492370,
	},

	[3] = {
		["PosX"] = 169,
		["PosY"] = 173,
		["Action"] = 94492371,
	},
	[4] = {
		["PosX"] = 143,
		["PosY"] = 243,
		["Action"] = 94492372,
	},
	[5] = {
		["PosX"] = 212,
		["PosY"] = 276,
		["Action"] = 94492373,
	},
	[6] = {
		["PosX"] = 264,
		["PosY"] = 120,
		["Action"] = 94492374,
	},
	[7] = {
		["PosX"] = 191,
		["PosY"] = 186,
		["Action"] = 94492375,
	},
	[8] = {
		["PosX"] = 181,
		["PosY"] = 128,
		["Action"] = 94492376,
	},
	[9] = {
		["PosX"] = 191,
		["PosY"] = 222,
		["Action"] = 94492377,
	},
	[10] = {
		["PosX"] = 201,
		["PosY"] = 288,
		["Action"] = 94492378,
	},
	[11] = {
		["PosX"] = 232,
		["PosY"] = 273,
		["Action"] = 94492379,
	},
	[12] = {
		["PosX"] = 287,
		["PosY"] = 298,
		["Action"] = 94492380,
	},
	[13] = {
		["PosX"] = 168,
		["PosY"] = 135,
		["Action"] = 94492381,
	},
	[14] = {
		["PosX"] = 135,
		["PosY"] = 287,
		["Action"] = 94492382,
	},
	[15] = {
		["PosX"] = 186,
		["PosY"] = 242,
		["Action"] =94492383,
	},
	[16] = {
		["PosX"] = 208,
		["PosY"] = 216,
		["Action"] = 94492384,
	},
	[17] = {
		["PosX"] = 173,
		["PosY"] = 270,
		["Action"] = 94492385,
	},
	[18] = {
		["PosX"] = 244,
		["PosY"] = 315,
		["Action"] = 94492386,
	},
}

--分数记录stc
tNjThPk_Cont["Stc"] = {}
tNjThPk_Cont["Stc"]["ScoreEvent"] = 221
tNjThPk_Cont["Stc"]["ScoreData"] = 54
--
tNjThPk_Cont["Stc"]["SRewardEvent"] = 221
tNjThPk_Cont["Stc"]["SRewardData"] = 57
tNjThPk_Cont["Stc"]["RRewardEvent"] = 221
tNjThPk_Cont["Stc"]["RRewardData"] = 56
tNjThPk_Cont["Stc"]["JoinEvent"] = 221
tNjThPk_Cont["Stc"]["JoinData"] = 55

--防止玩家同时点一个
tNjThPk_Cont["Stc"]["SameEvent"] = 224
tNjThPk_Cont["Stc"]["SameData"] = 39



tNjThPk_Cont["Score"] = {}
tNjThPk_Cont["Score"]["Creep"] = 10
tNjThPk_Cont["Score"]["Boss"] = 300
tNjThPk_Cont["Score"]["Player"] = 10

tNjThPk_Cont["Gen"] = {}
tNjThPk_Cont["Gen"]["Boss"] = 31018

tNjThPk_Cont["Monster"] = {}
	
tNjThPk_Cont["Monster"]["Creep"] = 1321
tNjThPk_Cont["Monster"]["Boss"] = 1322

tNjThPk_Cont["Price"] = {}
tNjThPk_Cont["Price"][4200004] = 41
tNjThPk_Cont["Price"][4200005] = 81
tNjThPk_Cont["Price"][4200006] = 161
tNjThPk_Cont["Price"][4200007] = 321
tNjThPk_Cont["Price"][4200008] = 641
tNjThPk_Cont["Price"][4200002] = 11

tNjThPk_Cont["Soul"] = {}
tNjThPk_Cont["Soul"]["Rank"] = 4200002
tNjThPk_Cont["PosLimit"] = {
	--非激情服的进入位置限制
	[1] = {
		["PosX"] = {310,330},
		["PosY"] = {438,448},
	},
	--激情服
	[2] = {
		["PosX"] = {259,276},
		["PosY"] = {256,272},
	},

}



--忍者表
tRankingFunc_Info[26551] = {}
tRankingFunc_Info[26551]["RankMode"] = 3
tRankingFunc_Info[26551]["ActiveTime"] = tActivityTime["NjThPk"]["PostTime"]
--4个
tRankingFunc_Info[26551]["Global"] = {54439,54440,54441,54442}
--可刷新排名的时间
--tRankingFunc_Info[26551]["DayTime"] = {}
--tRankingFunc_Info[26551]["DayTime"][1] = tNjThPk_Cont["PKtime"]
--由于会掉分 所以做12个选项
tRankingFunc_Info[26551]["RankNum"] = 12
tRankingFunc_Info[26551]["Reset"] = 1

--非忍者表
tRankingFunc_Info[26552] = {}
tRankingFunc_Info[26552]["RankMode"] = 3
tRankingFunc_Info[26552]["ActiveTime"] = tActivityTime["NjThPk"]["PostTime"]
--4个
tRankingFunc_Info[26552]["Global"] = {54443,54444,54445,54446}
--可刷新排名的时间 
--卷轴全天可用 不做限制刷新排行时间
--tRankingFunc_Info[26552]["DayTime"] = {}
--tRankingFunc_Info[26552]["DayTime"][1] = tNjThPk_Cont["PKtime"]
--由于会掉分 所以做12个选项
tRankingFunc_Info[26552]["RankNum"] = 12
tRankingFunc_Info[26552]["Reset"] = 1





--玩家进入条件表
local tNjThPK_Team = {}
local nNjThPK_SummonRecord = 0
--npc生效表
local tNjThPK_Npc = {
	[1] = false,
	[2] = false,
	[3] = false,
	[4] = false,
	[5] = false,
	[6] = false,
	[7] = false,
	[8] = false,
	[9] = false,
	[10] = false,
	[11] = false,
	[12] = false,
	[13] = false,
	[14] = false,
	[15] = false,
	[16] = false,
	[17] = false,
	[18] = false,
}
--设计需求：修改赠点价格
local tNjThPK_HideReward = {}
	-- ===随机奖励
	-- ===索引:tNjThPK_HideReward
	-- ===
	-- ===
	tNjThPK_HideReward["LogId"] = 12001985
	tNjThPK_HideReward["RewardItem"] = {}
	tNjThPK_HideReward["RewardItem"][1] = {}
	tNjThPK_HideReward["RewardItem"][1]["Id"] = 3330928 --  3330928 【cnzf1库里没有该物品】, 【表格】随机卷轴
	tNjThPK_HideReward["RewardItem"][1]["Attr"] = "0 1 0 30 1" --  3330928 【cnzf1库里没有该物品】*1
	tNjThPK_HideReward["RewardEffect"] = {}
	tNjThPK_HideReward["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPK_HideReward["RewardEffect"]["Effect"] = "angelwing"


local tNjThPK_RankReward = {}
	-- ===忍者排名奖励1位
	-- ===索引:tNjThPK_RankReward["Ninja"][1][1]
	-- ===
	-- ===
	tNjThPK_RankReward["Ninja"] = {}
	tNjThPK_RankReward["Ninja"][1] = {}
	tNjThPK_RankReward["Ninja"][1][1] = {}
	tNjThPK_RankReward["Ninja"][1][1]["LogId"] = 12001985
	tNjThPK_RankReward["Ninja"][1][1]["RewardItem"] = {}
	tNjThPK_RankReward["Ninja"][1][1]["RewardItem"][1] = {}
	tNjThPK_RankReward["Ninja"][1][1]["RewardItem"][1]["Id"] = 3330608 -- 彼岸幽兰[3330608][属性:8][叠加:10000][金币:0], 【表格】彼岸幽兰*15
	tNjThPK_RankReward["Ninja"][1][1]["RewardItem"][1]["Attr"] = "0 15" -- 彼岸幽兰*15（[错误]物品数量超10个）
	tNjThPK_RankReward["Ninja"][1][1]["RewardEffect"] = {}
	tNjThPK_RankReward["Ninja"][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPK_RankReward["Ninja"][1][1]["RewardEffect"]["Effect"] = "angelwing"


	tNjThPK_RankReward["Ninja"][1][2] = {}
	-- ===忍者排名奖励1位
	-- ===索引:tNjThPK_RankReward["Ninja"][1][2]
	-- ===消耗金币:50000000
	-- ===
	tNjThPK_RankReward["Ninja"][1][2]["LogId"] = 12001985
	tNjThPK_RankReward["Ninja"][1][2]["CostEMoneyMono"] = {}
	tNjThPK_RankReward["Ninja"][1][2]["CostEMoneyMono"]["Value"] = 4500 -- 赠点
	tNjThPK_RankReward["Ninja"][1][2]["CostEMoneyMono"]["EmoneyLog"] = "1000	1894"
	tNjThPK_RankReward["Ninja"][1][2]["RewardItem"] = {}
	tNjThPK_RankReward["Ninja"][1][2]["RewardItem"][1] = {}
	tNjThPK_RankReward["Ninja"][1][2]["RewardItem"][1]["Id"] = 3330608 -- 彼岸幽兰[3330608][属性:8][叠加:10000][金币:0], 【表格】彼岸幽兰*20
	tNjThPK_RankReward["Ninja"][1][2]["RewardItem"][1]["Attr"] = "0 20" -- 彼岸幽兰*20（[错误]物品数量超10个）
	tNjThPK_RankReward["Ninja"][1][2]["RewardEffect"] = {}
	tNjThPK_RankReward["Ninja"][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPK_RankReward["Ninja"][1][2]["RewardEffect"]["Effect"] = "angelwing"


	tNjThPK_RankReward["Ninja"][1][3] = {}
	-- ===忍者排名奖励1位
	-- ===索引:tNjThPK_RankReward["Ninja"][1][3]
	-- ===删除:4200002,150
	-- ===
	tNjThPK_RankReward["Ninja"][1][3]["LogId"] = 12001985
	tNjThPK_RankReward["Ninja"][1][3]["DeleteItem"] = {}
	tNjThPK_RankReward["Ninja"][1][3]["DeleteItem"][1] = {}
	tNjThPK_RankReward["Ninja"][1][3]["DeleteItem"][1]["Id"] = 4200002 -- 【库】2阶灵珠[属性:72]
	tNjThPK_RankReward["Ninja"][1][3]["DeleteItem"][1]["ItemNum"] = 150
	tNjThPK_RankReward["Ninja"][1][3]["DeleteItem"][1]["PreciousType"] = 357 -- =351//重铸活动消耗=352//融合活动消耗=353//冶炼活动消耗=354//灵珠塔活动消耗=355//龙冢试炼消耗=356//熔炼炉消耗=357//其他LUA消耗
	tNjThPK_RankReward["Ninja"][1][3]["RewardItem"] = {}
	tNjThPK_RankReward["Ninja"][1][3]["RewardItem"][1] = {}
	tNjThPK_RankReward["Ninja"][1][3]["RewardItem"][1]["Id"] = 3330608 -- 彼岸幽兰[3330608][属性:8][叠加:10000][金币:0], 【表格】彼岸幽兰*25
	tNjThPK_RankReward["Ninja"][1][3]["RewardItem"][1]["Attr"] = "0 30" -- 彼岸幽兰*30（[错误]物品数量超10个）
	tNjThPK_RankReward["Ninja"][1][3]["RewardEffect"] = {}
	tNjThPK_RankReward["Ninja"][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPK_RankReward["Ninja"][1][3]["RewardEffect"]["Effect"] = "angelwing"


	tNjThPK_RankReward["Ninja"][1][4] = {}
	-- ===忍者排名奖励1位
	-- ===索引:tNjThPK_RankReward["Ninja"][1][4]
	-- ===删除:4200002,2
	-- ===消耗天石:1
	-- ===NewEmoneyLog:1000,01819
	tNjThPK_RankReward["Ninja"][1][4]["LogId"] = 12001985
	tNjThPK_RankReward["Ninja"][1][4]["DeleteItem"] = {}
	tNjThPK_RankReward["Ninja"][1][4]["DeleteItem"][1] = {}
	tNjThPK_RankReward["Ninja"][1][4]["DeleteItem"][1]["Id"] = 4200002 -- 【库】2阶灵珠[属性:72]
	tNjThPK_RankReward["Ninja"][1][4]["DeleteItem"][1]["ItemNum"] = 2
	tNjThPK_RankReward["Ninja"][1][4]["DeleteItem"][1]["PreciousType"] = 357 -- =351//重铸活动消耗=352//融合活动消耗=353//冶炼活动消耗=354//灵珠塔活动消耗=355//龙冢试炼消耗=356//熔炼炉消耗=357//其他LUA消耗
	tNjThPK_RankReward["Ninja"][1][4]["CostEMoney"] = {}
	tNjThPK_RankReward["Ninja"][1][4]["CostEMoney"]["Value"] = 1 -- 消耗天石
	tNjThPK_RankReward["Ninja"][1][4]["CostEMoney"]["EmoneyLog"] = "1000	1819"
	tNjThPK_RankReward["Ninja"][1][4]["RewardItem"] = {}
	tNjThPK_RankReward["Ninja"][1][4]["RewardItem"][1] = {}
	tNjThPK_RankReward["Ninja"][1][4]["RewardItem"][1]["Id"] = 3330608 -- 彼岸幽兰[3330608][属性:8][叠加:10000][金币:0], 【表格】彼岸幽兰*25
	tNjThPK_RankReward["Ninja"][1][4]["RewardItem"][1]["Attr"] = "0 30" -- 彼岸幽兰*30（[错误]物品数量超10个）
	tNjThPK_RankReward["Ninja"][1][4]["RewardEffect"] = {}
	tNjThPK_RankReward["Ninja"][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPK_RankReward["Ninja"][1][4]["RewardEffect"]["Effect"] = "angelwing"


	tNjThPK_RankReward["Ninja"][2] = {}
	-- ===忍者排名奖励2位
	-- ===索引:tNjThPK_RankReward["Ninja"][2][1]
	-- ===
	-- ===
	tNjThPK_RankReward["Ninja"][2][1] = {}
	tNjThPK_RankReward["Ninja"][2][1]["LogId"] = 12001985
	tNjThPK_RankReward["Ninja"][2][1]["RewardItem"] = {}
	tNjThPK_RankReward["Ninja"][2][1]["RewardItem"][1] = {}
	tNjThPK_RankReward["Ninja"][2][1]["RewardItem"][1]["Id"] = 3330608 -- 彼岸幽兰[3330608][属性:8][叠加:10000][金币:0], 【表格】彼岸幽兰*10
	tNjThPK_RankReward["Ninja"][2][1]["RewardItem"][1]["Attr"] = "0 10" -- 彼岸幽兰*10
	tNjThPK_RankReward["Ninja"][2][1]["RewardEffect"] = {}
	tNjThPK_RankReward["Ninja"][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPK_RankReward["Ninja"][2][1]["RewardEffect"]["Effect"] = "angelwing"


	tNjThPK_RankReward["Ninja"][2][2] = {}
	-- ===忍者排名奖励2位
	-- ===索引:tNjThPK_RankReward["Ninja"][2][2]
	-- ===消耗金币:34000000
	-- ===
	tNjThPK_RankReward["Ninja"][2][2]["LogId"] = 12001985
	tNjThPK_RankReward["Ninja"][2][2]["CostEMoneyMono"] = {}
	tNjThPK_RankReward["Ninja"][2][2]["CostEMoneyMono"]["Value"] = 3000 -- 赠点
	tNjThPK_RankReward["Ninja"][2][2]["CostEMoneyMono"]["EmoneyLog"] = "1000	1894"
	tNjThPK_RankReward["Ninja"][2][2]["RewardItem"] = {}
	tNjThPK_RankReward["Ninja"][2][2]["RewardItem"][1] = {}
	tNjThPK_RankReward["Ninja"][2][2]["RewardItem"][1]["Id"] = 3330608 -- 彼岸幽兰[3330608][属性:8][叠加:10000][金币:0], 【表格】彼岸幽兰*13
	tNjThPK_RankReward["Ninja"][2][2]["RewardItem"][1]["Attr"] = "0 13" -- 彼岸幽兰*13（[错误]物品数量超10个）
	tNjThPK_RankReward["Ninja"][2][2]["RewardEffect"] = {}
	tNjThPK_RankReward["Ninja"][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPK_RankReward["Ninja"][2][2]["RewardEffect"]["Effect"] = "angelwing"


	tNjThPK_RankReward["Ninja"][2][3] = {}
	-- ===忍者排名奖励2位
	-- ===索引:tNjThPK_RankReward["Ninja"][2][3]
	-- ===删除:4200002,100
	-- ===
	tNjThPK_RankReward["Ninja"][2][3]["LogId"] = 12001985
	tNjThPK_RankReward["Ninja"][2][3]["DeleteItem"] = {}
	tNjThPK_RankReward["Ninja"][2][3]["DeleteItem"][1] = {}
	tNjThPK_RankReward["Ninja"][2][3]["DeleteItem"][1]["Id"] = 4200002 -- 【库】2阶灵珠[属性:72]
	tNjThPK_RankReward["Ninja"][2][3]["DeleteItem"][1]["ItemNum"] = 100
	tNjThPK_RankReward["Ninja"][2][3]["DeleteItem"][1]["PreciousType"] = 357 -- =351//重铸活动消耗=352//融合活动消耗=353//冶炼活动消耗=354//灵珠塔活动消耗=355//龙冢试炼消耗=356//熔炼炉消耗=357//其他LUA消耗
	tNjThPK_RankReward["Ninja"][2][3]["RewardItem"] = {}
	tNjThPK_RankReward["Ninja"][2][3]["RewardItem"][1] = {}
	tNjThPK_RankReward["Ninja"][2][3]["RewardItem"][1]["Id"] = 3330608 -- 彼岸幽兰[3330608][属性:8][叠加:10000][金币:0], 【表格】彼岸幽兰*16
	tNjThPK_RankReward["Ninja"][2][3]["RewardItem"][1]["Attr"] = "0 20" -- 彼岸幽兰*20（[错误]物品数量超10个）
	tNjThPK_RankReward["Ninja"][2][3]["RewardEffect"] = {}
	tNjThPK_RankReward["Ninja"][2][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPK_RankReward["Ninja"][2][3]["RewardEffect"]["Effect"] = "angelwing"


	tNjThPK_RankReward["Ninja"][2][4] = {}
	-- ===忍者排名奖励2位
	-- ===索引:tNjThPK_RankReward["Ninja"][2][4]
	-- ===删除:4200002,2
	-- ===消耗天石:1
	-- ===NewEmoneyLog:1000,01819
	tNjThPK_RankReward["Ninja"][2][4]["LogId"] = 12001985
	tNjThPK_RankReward["Ninja"][2][4]["DeleteItem"] = {}
	tNjThPK_RankReward["Ninja"][2][4]["DeleteItem"][1] = {}
	tNjThPK_RankReward["Ninja"][2][4]["DeleteItem"][1]["Id"] = 4200002 -- 【库】2阶灵珠[属性:72]
	tNjThPK_RankReward["Ninja"][2][4]["DeleteItem"][1]["ItemNum"] = 2
	tNjThPK_RankReward["Ninja"][2][4]["DeleteItem"][1]["PreciousType"] = 357 -- =351//重铸活动消耗=352//融合活动消耗=353//冶炼活动消耗=354//灵珠塔活动消耗=355//龙冢试炼消耗=356//熔炼炉消耗=357//其他LUA消耗
	tNjThPK_RankReward["Ninja"][2][4]["CostEMoney"] = {}
	tNjThPK_RankReward["Ninja"][2][4]["CostEMoney"]["Value"] = 1 -- 消耗天石
	tNjThPK_RankReward["Ninja"][2][4]["CostEMoney"]["EmoneyLog"] = "1000	1819"
	tNjThPK_RankReward["Ninja"][2][4]["RewardItem"] = {}
	tNjThPK_RankReward["Ninja"][2][4]["RewardItem"][1] = {}
	tNjThPK_RankReward["Ninja"][2][4]["RewardItem"][1]["Id"] = 3330608 -- 彼岸幽兰[3330608][属性:8][叠加:10000][金币:0], 【表格】彼岸幽兰*16
	tNjThPK_RankReward["Ninja"][2][4]["RewardItem"][1]["Attr"] = "0 20" -- 彼岸幽兰*20（[错误]物品数量超10个）
	tNjThPK_RankReward["Ninja"][2][4]["RewardEffect"] = {}
	tNjThPK_RankReward["Ninja"][2][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPK_RankReward["Ninja"][2][4]["RewardEffect"]["Effect"] = "angelwing"


	tNjThPK_RankReward["Ninja"][3] = {}
	-- ===忍者排名奖励3位
	-- ===索引:tNjThPK_RankReward["Ninja"][3][1]
	-- ===
	-- ===
	tNjThPK_RankReward["Ninja"][3][1] = {}
	tNjThPK_RankReward["Ninja"][3][1]["LogId"] = 12001985
	tNjThPK_RankReward["Ninja"][3][1]["RewardItem"] = {}
	tNjThPK_RankReward["Ninja"][3][1]["RewardItem"][1] = {}
	tNjThPK_RankReward["Ninja"][3][1]["RewardItem"][1]["Id"] = 3330608 -- 彼岸幽兰[3330608][属性:8][叠加:10000][金币:0], 【表格】彼岸幽兰*8
	tNjThPK_RankReward["Ninja"][3][1]["RewardItem"][1]["Attr"] = "0 8" -- 彼岸幽兰*8
	tNjThPK_RankReward["Ninja"][3][1]["RewardEffect"] = {}
	tNjThPK_RankReward["Ninja"][3][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPK_RankReward["Ninja"][3][1]["RewardEffect"]["Effect"] = "angelwing"


	tNjThPK_RankReward["Ninja"][3][2] = {}
	-- ===忍者排名奖励3位
	-- ===索引:tNjThPK_RankReward["Ninja"][3][2]
	-- ===消耗金币:27000000
	-- ===
	tNjThPK_RankReward["Ninja"][3][2]["LogId"] = 12001985
	tNjThPK_RankReward["Ninja"][3][2]["CostEMoneyMono"] = {}
	tNjThPK_RankReward["Ninja"][3][2]["CostEMoneyMono"]["Value"] = 2400 -- 赠点
	tNjThPK_RankReward["Ninja"][3][2]["CostEMoneyMono"]["EmoneyLog"] = "1000	1894"
	tNjThPK_RankReward["Ninja"][3][2]["RewardItem"] = {}
	tNjThPK_RankReward["Ninja"][3][2]["RewardItem"][1] = {}
	tNjThPK_RankReward["Ninja"][3][2]["RewardItem"][1]["Id"] = 3330608 -- 彼岸幽兰[3330608][属性:8][叠加:10000][金币:0], 【表格】彼岸幽兰*12
	tNjThPK_RankReward["Ninja"][3][2]["RewardItem"][1]["Attr"] = "0 10" -- 彼岸幽兰*10
	tNjThPK_RankReward["Ninja"][3][2]["RewardEffect"] = {}
	tNjThPK_RankReward["Ninja"][3][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPK_RankReward["Ninja"][3][2]["RewardEffect"]["Effect"] = "angelwing"


	tNjThPK_RankReward["Ninja"][3][3] = {}
	-- ===忍者排名奖励3位
	-- ===索引:tNjThPK_RankReward["Ninja"][3][3]
	-- ===删除:4200002,80
	-- ===
	tNjThPK_RankReward["Ninja"][3][3]["LogId"] = 12001985
	tNjThPK_RankReward["Ninja"][3][3]["DeleteItem"] = {}
	tNjThPK_RankReward["Ninja"][3][3]["DeleteItem"][1] = {}
	tNjThPK_RankReward["Ninja"][3][3]["DeleteItem"][1]["Id"] = 4200002 -- 【库】2阶灵珠[属性:72]
	tNjThPK_RankReward["Ninja"][3][3]["DeleteItem"][1]["ItemNum"] = 80
	tNjThPK_RankReward["Ninja"][3][3]["DeleteItem"][1]["PreciousType"] = 357 -- =351//重铸活动消耗=352//融合活动消耗=353//冶炼活动消耗=354//灵珠塔活动消耗=355//龙冢试炼消耗=356//熔炼炉消耗=357//其他LUA消耗
	tNjThPK_RankReward["Ninja"][3][3]["RewardItem"] = {}
	tNjThPK_RankReward["Ninja"][3][3]["RewardItem"][1] = {}
	tNjThPK_RankReward["Ninja"][3][3]["RewardItem"][1]["Id"] = 3330608 -- 彼岸幽兰[3330608][属性:8][叠加:10000][金币:0], 【表格】彼岸幽兰*12
	tNjThPK_RankReward["Ninja"][3][3]["RewardItem"][1]["Attr"] = "0 16" -- 彼岸幽兰*16（[错误]物品数量超10个）
	tNjThPK_RankReward["Ninja"][3][3]["RewardEffect"] = {}
	tNjThPK_RankReward["Ninja"][3][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPK_RankReward["Ninja"][3][3]["RewardEffect"]["Effect"] = "angelwing"


	tNjThPK_RankReward["Ninja"][3][4] = {}
	-- ===忍者排名奖励3位
	-- ===索引:tNjThPK_RankReward["Ninja"][3][4]
	-- ===删除:4200002,2
	-- ===消耗天石:1
	-- ===NewEmoneyLog:1000,01819
	tNjThPK_RankReward["Ninja"][3][4]["LogId"] = 12001985
	tNjThPK_RankReward["Ninja"][3][4]["DeleteItem"] = {}
	tNjThPK_RankReward["Ninja"][3][4]["DeleteItem"][1] = {}
	tNjThPK_RankReward["Ninja"][3][4]["DeleteItem"][1]["Id"] = 4200002 -- 【库】2阶灵珠[属性:72]
	tNjThPK_RankReward["Ninja"][3][4]["DeleteItem"][1]["ItemNum"] = 2
	tNjThPK_RankReward["Ninja"][3][4]["DeleteItem"][1]["PreciousType"] = 357 -- =351//重铸活动消耗=352//融合活动消耗=353//冶炼活动消耗=354//灵珠塔活动消耗=355//龙冢试炼消耗=356//熔炼炉消耗=357//其他LUA消耗
	tNjThPK_RankReward["Ninja"][3][4]["CostEMoney"] = {}
	tNjThPK_RankReward["Ninja"][3][4]["CostEMoney"]["Value"] = 1 -- 消耗天石
	tNjThPK_RankReward["Ninja"][3][4]["CostEMoney"]["EmoneyLog"] = "1000	1819"
	tNjThPK_RankReward["Ninja"][3][4]["RewardItem"] = {}
	tNjThPK_RankReward["Ninja"][3][4]["RewardItem"][1] = {}
	tNjThPK_RankReward["Ninja"][3][4]["RewardItem"][1]["Id"] = 3330608 -- 彼岸幽兰[3330608][属性:8][叠加:10000][金币:0], 【表格】彼岸幽兰*12
	tNjThPK_RankReward["Ninja"][3][4]["RewardItem"][1]["Attr"] = "0 16" -- 彼岸幽兰*16（[错误]物品数量超10个）
	tNjThPK_RankReward["Ninja"][3][4]["RewardEffect"] = {}
	tNjThPK_RankReward["Ninja"][3][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPK_RankReward["Ninja"][3][4]["RewardEffect"]["Effect"] = "angelwing"


	tNjThPK_RankReward["Ninja"][4] = {}
	-- ===忍者排名奖励3位
	-- ===索引:tNjThPK_RankReward["Ninja"][4][1]
	-- ===
	-- ===
	tNjThPK_RankReward["Ninja"][4][1] = {}
	tNjThPK_RankReward["Ninja"][4][1]["LogId"] = 12001985
	tNjThPK_RankReward["Ninja"][4][1]["RewardItem"] = {}
	tNjThPK_RankReward["Ninja"][4][1]["RewardItem"][1] = {}
	tNjThPK_RankReward["Ninja"][4][1]["RewardItem"][1]["Id"] = 3330608 -- 彼岸幽兰[3330608][属性:8][叠加:10000][金币:0], 【表格】彼岸幽兰*5
	tNjThPK_RankReward["Ninja"][4][1]["RewardItem"][1]["Attr"] = "0 5" -- 彼岸幽兰*5
	tNjThPK_RankReward["Ninja"][4][1]["RewardEffect"] = {}
	tNjThPK_RankReward["Ninja"][4][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPK_RankReward["Ninja"][4][1]["RewardEffect"]["Effect"] = "angelwing"


	tNjThPK_RankReward["Ninja"][4][2] = {}
	-- ===忍者排名奖励4位
	-- ===索引:tNjThPK_RankReward["Ninja"][4][2]
	-- ===消耗金币:17000000
	-- ===
	tNjThPK_RankReward["Ninja"][4][2]["LogId"] = 12001985
	tNjThPK_RankReward["Ninja"][4][2]["CostEMoneyMono"] = {}
	tNjThPK_RankReward["Ninja"][4][2]["CostEMoneyMono"]["Value"] = 1500 -- 赠点
	tNjThPK_RankReward["Ninja"][4][2]["CostEMoneyMono"]["EmoneyLog"] = "1000	1894"
	tNjThPK_RankReward["Ninja"][4][2]["RewardItem"] = {}
	tNjThPK_RankReward["Ninja"][4][2]["RewardItem"][1] = {}
	tNjThPK_RankReward["Ninja"][4][2]["RewardItem"][1]["Id"] = 3330608 -- 彼岸幽兰[3330608][属性:8][叠加:10000][金币:0], 【表格】彼岸幽兰*6
	tNjThPK_RankReward["Ninja"][4][2]["RewardItem"][1]["Attr"] = "0 6" -- 彼岸幽兰*6
	tNjThPK_RankReward["Ninja"][4][2]["RewardEffect"] = {}
	tNjThPK_RankReward["Ninja"][4][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPK_RankReward["Ninja"][4][2]["RewardEffect"]["Effect"] = "angelwing"


	tNjThPK_RankReward["Ninja"][4][3] = {}
	-- ===忍者排名奖励4位
	-- ===索引:tNjThPK_RankReward["Ninja"][4][3]
	-- ===删除:4200002,50
	-- ===
	tNjThPK_RankReward["Ninja"][4][3]["LogId"] = 12001985
	tNjThPK_RankReward["Ninja"][4][3]["DeleteItem"] = {}
	tNjThPK_RankReward["Ninja"][4][3]["DeleteItem"][1] = {}
	tNjThPK_RankReward["Ninja"][4][3]["DeleteItem"][1]["Id"] = 4200002 -- 【库】2阶灵珠[属性:72]
	tNjThPK_RankReward["Ninja"][4][3]["DeleteItem"][1]["ItemNum"] = 50
	tNjThPK_RankReward["Ninja"][4][3]["DeleteItem"][1]["PreciousType"] = 357 -- =351//重铸活动消耗=352//融合活动消耗=353//冶炼活动消耗=354//灵珠塔活动消耗=355//龙冢试炼消耗=356//熔炼炉消耗=357//其他LUA消耗
	tNjThPK_RankReward["Ninja"][4][3]["RewardItem"] = {}
	tNjThPK_RankReward["Ninja"][4][3]["RewardItem"][1] = {}
	tNjThPK_RankReward["Ninja"][4][3]["RewardItem"][1]["Id"] = 3330608 -- 彼岸幽兰[3330608][属性:8][叠加:10000][金币:0], 【表格】彼岸幽兰*7
	tNjThPK_RankReward["Ninja"][4][3]["RewardItem"][1]["Attr"] = "0 10" -- 彼岸幽兰*10
	tNjThPK_RankReward["Ninja"][4][3]["RewardEffect"] = {}
	tNjThPK_RankReward["Ninja"][4][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPK_RankReward["Ninja"][4][3]["RewardEffect"]["Effect"] = "angelwing"


	tNjThPK_RankReward["Ninja"][4][4] = {}
	-- ===忍者排名奖励3位
	-- ===索引:tNjThPK_RankReward["Ninja"][4][4]
	-- ===删除:4200002,2
	-- ===消耗天石:1
	-- ===NewEmoneyLog:1000,01819
	tNjThPK_RankReward["Ninja"][4][4]["LogId"] = 12001985
	tNjThPK_RankReward["Ninja"][4][4]["DeleteItem"] = {}
	tNjThPK_RankReward["Ninja"][4][4]["DeleteItem"][1] = {}
	tNjThPK_RankReward["Ninja"][4][4]["DeleteItem"][1]["Id"] = 4200002 -- 【库】2阶灵珠[属性:72]
	tNjThPK_RankReward["Ninja"][4][4]["DeleteItem"][1]["ItemNum"] = 2
	tNjThPK_RankReward["Ninja"][4][4]["DeleteItem"][1]["PreciousType"] = 357 -- =351//重铸活动消耗=352//融合活动消耗=353//冶炼活动消耗=354//灵珠塔活动消耗=355//龙冢试炼消耗=356//熔炼炉消耗=357//其他LUA消耗
	tNjThPK_RankReward["Ninja"][4][4]["CostEMoney"] = {}
	tNjThPK_RankReward["Ninja"][4][4]["CostEMoney"]["Value"] = 1 -- 消耗天石
	tNjThPK_RankReward["Ninja"][4][4]["CostEMoney"]["EmoneyLog"] = "1000	1819"
	tNjThPK_RankReward["Ninja"][4][4]["RewardItem"] = {}
	tNjThPK_RankReward["Ninja"][4][4]["RewardItem"][1] = {}
	tNjThPK_RankReward["Ninja"][4][4]["RewardItem"][1]["Id"] = 3330608 -- 彼岸幽兰[3330608][属性:8][叠加:10000][金币:0], 【表格】彼岸幽兰*7
	tNjThPK_RankReward["Ninja"][4][4]["RewardItem"][1]["Attr"] = "0 10" -- 彼岸幽兰*10
	tNjThPK_RankReward["Ninja"][4][4]["RewardEffect"] = {}
	tNjThPK_RankReward["Ninja"][4][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPK_RankReward["Ninja"][4][4]["RewardEffect"]["Effect"] = "angelwing"


	tNjThPK_RankReward["Ninja"][5] = {}
	-- ===忍者排名奖励7位
	-- ===索引:tNjThPK_RankReward["Ninja"][5][1]
	-- ===
	-- ===
	tNjThPK_RankReward["Ninja"][5][1] = {}
	tNjThPK_RankReward["Ninja"][5][1]["LogId"] = 12001985
	tNjThPK_RankReward["Ninja"][5][1]["RewardItem"] = {}
	tNjThPK_RankReward["Ninja"][5][1]["RewardItem"][1] = {}
	tNjThPK_RankReward["Ninja"][5][1]["RewardItem"][1]["Id"] = 3330608 -- 彼岸幽兰[3330608][属性:8][叠加:10000][金币:0], 【表格】彼岸幽兰*3
	tNjThPK_RankReward["Ninja"][5][1]["RewardItem"][1]["Attr"] = "0 3" -- 彼岸幽兰*3
	tNjThPK_RankReward["Ninja"][5][1]["RewardEffect"] = {}
	tNjThPK_RankReward["Ninja"][5][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPK_RankReward["Ninja"][5][1]["RewardEffect"]["Effect"] = "angelwing"


	tNjThPK_RankReward["Ninja"][5][2] = {}
	-- ===忍者排名奖励7位
	-- ===索引:tNjThPK_RankReward["Ninja"][5][2]
	-- ===消耗金币:10000000
	-- ===
	tNjThPK_RankReward["Ninja"][5][2]["LogId"] = 12001985
	tNjThPK_RankReward["Ninja"][5][2]["CostEMoneyMono"] = {}
	tNjThPK_RankReward["Ninja"][5][2]["CostEMoneyMono"]["Value"] = 900 -- 赠点
	tNjThPK_RankReward["Ninja"][5][2]["CostEMoneyMono"]["EmoneyLog"] = "1000	1894"
	tNjThPK_RankReward["Ninja"][5][2]["RewardItem"] = {}
	tNjThPK_RankReward["Ninja"][5][2]["RewardItem"][1] = {}
	tNjThPK_RankReward["Ninja"][5][2]["RewardItem"][1]["Id"] = 3330608 -- 彼岸幽兰[3330608][属性:8][叠加:10000][金币:0], 【表格】彼岸幽兰*4
	tNjThPK_RankReward["Ninja"][5][2]["RewardItem"][1]["Attr"] = "0 4" -- 彼岸幽兰*4
	tNjThPK_RankReward["Ninja"][5][2]["RewardEffect"] = {}
	tNjThPK_RankReward["Ninja"][5][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPK_RankReward["Ninja"][5][2]["RewardEffect"]["Effect"] = "angelwing"


	tNjThPK_RankReward["Ninja"][5][3] = {}
	-- ===忍者排名奖励7位
	-- ===索引:tNjThPK_RankReward["Ninja"][5][3]
	-- ===删除:4200002,30
	-- ===
	tNjThPK_RankReward["Ninja"][5][3]["LogId"] = 12001985
	tNjThPK_RankReward["Ninja"][5][3]["DeleteItem"] = {}
	tNjThPK_RankReward["Ninja"][5][3]["DeleteItem"][1] = {}
	tNjThPK_RankReward["Ninja"][5][3]["DeleteItem"][1]["Id"] = 4200002 -- 【库】2阶灵珠[属性:72]
	tNjThPK_RankReward["Ninja"][5][3]["DeleteItem"][1]["ItemNum"] = 30
	tNjThPK_RankReward["Ninja"][5][3]["DeleteItem"][1]["PreciousType"] = 357 -- =351//重铸活动消耗=352//融合活动消耗=353//冶炼活动消耗=354//灵珠塔活动消耗=355//龙冢试炼消耗=356//熔炼炉消耗=357//其他LUA消耗
	tNjThPK_RankReward["Ninja"][5][3]["RewardItem"] = {}
	tNjThPK_RankReward["Ninja"][5][3]["RewardItem"][1] = {}
	tNjThPK_RankReward["Ninja"][5][3]["RewardItem"][1]["Id"] = 3330608 -- 彼岸幽兰[3330608][属性:8][叠加:10000][金币:0], 【表格】彼岸幽兰*5
	tNjThPK_RankReward["Ninja"][5][3]["RewardItem"][1]["Attr"] = "0 8" -- 彼岸幽兰*8
	tNjThPK_RankReward["Ninja"][5][3]["RewardEffect"] = {}
	tNjThPK_RankReward["Ninja"][5][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPK_RankReward["Ninja"][5][3]["RewardEffect"]["Effect"] = "angelwing"


	tNjThPK_RankReward["Ninja"][5][4] = {}
	-- ===忍者排名奖励7位
	-- ===索引:tNjThPK_RankReward["Ninja"][5][4]
	-- ===删除:4200002,2
	-- ===消耗天石:1
	-- ===NewEmoneyLog:1000,01819
	tNjThPK_RankReward["Ninja"][5][4]["LogId"] = 12001985
	tNjThPK_RankReward["Ninja"][5][4]["DeleteItem"] = {}
	tNjThPK_RankReward["Ninja"][5][4]["DeleteItem"][1] = {}
	tNjThPK_RankReward["Ninja"][5][4]["DeleteItem"][1]["Id"] = 4200002 -- 【库】2阶灵珠[属性:72]
	tNjThPK_RankReward["Ninja"][5][4]["DeleteItem"][1]["ItemNum"] = 2
	tNjThPK_RankReward["Ninja"][5][4]["DeleteItem"][1]["PreciousType"] = 357 -- =351//重铸活动消耗=352//融合活动消耗=353//冶炼活动消耗=354//灵珠塔活动消耗=355//龙冢试炼消耗=356//熔炼炉消耗=357//其他LUA消耗
	tNjThPK_RankReward["Ninja"][5][4]["CostEMoney"] = {}
	tNjThPK_RankReward["Ninja"][5][4]["CostEMoney"]["Value"] = 1 -- 消耗天石
	tNjThPK_RankReward["Ninja"][5][4]["CostEMoney"]["EmoneyLog"] = "1000	1819"
	tNjThPK_RankReward["Ninja"][5][4]["RewardItem"] = {}
	tNjThPK_RankReward["Ninja"][5][4]["RewardItem"][1] = {}
	tNjThPK_RankReward["Ninja"][5][4]["RewardItem"][1]["Id"] = 3330608 -- 彼岸幽兰[3330608][属性:8][叠加:10000][金币:0], 【表格】彼岸幽兰*5
	tNjThPK_RankReward["Ninja"][5][4]["RewardItem"][1]["Attr"] = "0 8" -- 彼岸幽兰*8
	tNjThPK_RankReward["Ninja"][5][4]["RewardEffect"] = {}
	tNjThPK_RankReward["Ninja"][5][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPK_RankReward["Ninja"][5][4]["RewardEffect"]["Effect"] = "angelwing"


local tNjThPk_Join = {}
	-- ===参与奖
	-- ===索引:tNjThPk_Join["Ninja"]
	-- ===
	-- ===
	tNjThPk_Join["Ninja"] = {}
	tNjThPk_Join["Ninja"]["LogId"] = 12001985
	tNjThPk_Join["Ninja"]["RewardItem"] = {}
	tNjThPk_Join["Ninja"]["RewardItem"][1] = {}
	tNjThPk_Join["Ninja"]["RewardItem"][1]["Id"] = 3327203 -- 血狱花[3327203][属性:8][叠加:10000][金币:0], 【表格】血狱花*3
	tNjThPk_Join["Ninja"]["RewardItem"][1]["Attr"] = "0 3 3" -- 血狱花*3
	tNjThPk_Join["Ninja"]["RewardEffect"] = {}
	tNjThPk_Join["Ninja"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPk_Join["Ninja"]["RewardEffect"]["Effect"] = "angelwing"


	tNjThPk_Join["Other"] = {}
	-- ===参与奖
	-- ===索引:tNjThPk_Join["Other"]
	-- ===
	-- ===
	tNjThPk_Join["Other"]["LogId"] = 12001985
	tNjThPk_Join["Other"]["RewardStrengthValue"] = {}
	tNjThPk_Join["Other"]["RewardStrengthValue"]["Value"] = 300 -- 气力值, 【需求】300气力值
	tNjThPk_Join["Other"]["RewardEffect"] = {}
	tNjThPk_Join["Other"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPk_Join["Other"]["RewardEffect"]["Effect"] = "angelwing"

	local tNjThPk_UseScroll = {}
	-- ===参与奖
	-- ===索引:tNjThPk_Join["Ninja"]
	-- ===
	-- ===
	tNjThPk_UseScroll["LogId"] = 12001985
	tNjThPk_UseScroll["DeleteItem"] = {}
	tNjThPk_UseScroll["DeleteItem"][1] = {}
	tNjThPk_UseScroll["DeleteItem"][1]["Id"] = 3330928 -- 
	tNjThPk_UseScroll["RewardEffect"] = {}
	tNjThPk_UseScroll["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPk_UseScroll["RewardEffect"]["Effect"] = "angelwing"


	tNjThPK_RankReward["Other"] = {}
	-- ===非忍者排名奖励1位
	-- ===索引:tNjThPK_RankReward["Other"][1][1]
	-- ===
	-- ===
	tNjThPK_RankReward["Other"][1] = {}
	tNjThPK_RankReward["Other"][1][1] = {}
	tNjThPK_RankReward["Other"][1][1]["LogId"] = 12001985
	tNjThPK_RankReward["Other"][1][1]["RewardItem"] = {}
	tNjThPK_RankReward["Other"][1][1]["RewardItem"][1] = {}
	tNjThPK_RankReward["Other"][1][1]["RewardItem"][1]["Id"] = 3314255 -- 稀有黄色神纹碎片[3314255][属性:8][叠加:10000][金币:0], 【表格】稀有黄色神纹碎片赠*30
	tNjThPK_RankReward["Other"][1][1]["RewardItem"][1]["Attr"] = "0 30 3" -- 稀有黄色神纹碎片（赠）*30（[错误]物品数量超10个）
	tNjThPK_RankReward["Other"][1][1]["RewardEffect"] = {}
	tNjThPK_RankReward["Other"][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPK_RankReward["Other"][1][1]["RewardEffect"]["Effect"] = "angelwing"


	tNjThPK_RankReward["Other"][1][2] = {}
	-- ===非忍者排名奖励1位
	-- ===索引:tNjThPK_RankReward["Other"][1][2]
	-- ===消耗金币:50000000
	-- ===
	tNjThPK_RankReward["Other"][1][2]["LogId"] = 12001985
	tNjThPK_RankReward["Other"][1][2]["CostEMoneyMono"] = {}
	tNjThPK_RankReward["Other"][1][2]["CostEMoneyMono"]["Value"] = 4500 -- 赠点
	tNjThPK_RankReward["Other"][1][2]["CostEMoneyMono"]["EmoneyLog"] = "1000	1894"
	tNjThPK_RankReward["Other"][1][2]["RewardItem"] = {}
	tNjThPK_RankReward["Other"][1][2]["RewardItem"][1] = {}
	tNjThPK_RankReward["Other"][1][2]["RewardItem"][1]["Id"] = 3314255 -- 稀有黄色神纹碎片[3314255][属性:8][叠加:10000][金币:0], 【表格】稀有黄色神纹碎片赠*40
	tNjThPK_RankReward["Other"][1][2]["RewardItem"][1]["Attr"] = "0 40 3" -- 稀有黄色神纹碎片（赠）*40（[错误]物品数量超10个）
	tNjThPK_RankReward["Other"][1][2]["RewardEffect"] = {}
	tNjThPK_RankReward["Other"][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPK_RankReward["Other"][1][2]["RewardEffect"]["Effect"] = "angelwing"


	tNjThPK_RankReward["Other"][1][3] = {}
	-- ===非忍者排名奖励1位
	-- ===索引:tNjThPK_RankReward["Other"][1][3]
	-- ===删除:4200002,150
	-- ===
	tNjThPK_RankReward["Other"][1][3]["LogId"] = 12001985
	tNjThPK_RankReward["Other"][1][3]["DeleteItem"] = {}
	tNjThPK_RankReward["Other"][1][3]["DeleteItem"][1] = {}
	tNjThPK_RankReward["Other"][1][3]["DeleteItem"][1]["Id"] = 4200002 -- 【库】2阶灵珠[属性:72]
	tNjThPK_RankReward["Other"][1][3]["DeleteItem"][1]["ItemNum"] = 150
	tNjThPK_RankReward["Other"][1][3]["DeleteItem"][1]["PreciousType"] = 357 -- =351//重铸活动消耗=352//融合活动消耗=353//冶炼活动消耗=354//灵珠塔活动消耗=355//龙冢试炼消耗=356//熔炼炉消耗=357//其他LUA消耗
	tNjThPK_RankReward["Other"][1][3]["RewardItem"] = {}
	tNjThPK_RankReward["Other"][1][3]["RewardItem"][1] = {}
	tNjThPK_RankReward["Other"][1][3]["RewardItem"][1]["Id"] = 3314255 -- 稀有黄色神纹碎片[3314255][属性:8][叠加:10000][金币:0], 【表格】稀有黄色神纹碎片赠*50
	tNjThPK_RankReward["Other"][1][3]["RewardItem"][1]["Attr"] = "0 60 3" -- 稀有黄色神纹碎片（赠）*60（[错误]物品数量超10个）
	tNjThPK_RankReward["Other"][1][3]["RewardEffect"] = {}
	tNjThPK_RankReward["Other"][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPK_RankReward["Other"][1][3]["RewardEffect"]["Effect"] = "angelwing"


	tNjThPK_RankReward["Other"][1][4] = {}
	-- ===非忍者排名奖励1位
	-- ===索引:tNjThPK_RankReward["Other"][1][4]
	-- ===删除:4200002,2
	-- ===消耗天石:1
	-- ===NewEmoneyLog:1000,01819
	tNjThPK_RankReward["Other"][1][4]["LogId"] = 12001985
	tNjThPK_RankReward["Other"][1][4]["DeleteItem"] = {}
	tNjThPK_RankReward["Other"][1][4]["DeleteItem"][1] = {}
	tNjThPK_RankReward["Other"][1][4]["DeleteItem"][1]["Id"] = 4200002 -- 【库】2阶灵珠[属性:72]
	tNjThPK_RankReward["Other"][1][4]["DeleteItem"][1]["ItemNum"] = 2
	tNjThPK_RankReward["Other"][1][4]["DeleteItem"][1]["PreciousType"] = 357 -- =351//重铸活动消耗=352//融合活动消耗=353//冶炼活动消耗=354//灵珠塔活动消耗=355//龙冢试炼消耗=356//熔炼炉消耗=357//其他LUA消耗
	tNjThPK_RankReward["Other"][1][4]["CostEMoney"] = {}
	tNjThPK_RankReward["Other"][1][4]["CostEMoney"]["Value"] = 1 -- 消耗天石
	tNjThPK_RankReward["Other"][1][4]["CostEMoney"]["EmoneyLog"] = "1000	1819"
	tNjThPK_RankReward["Other"][1][4]["RewardItem"] = {}
	tNjThPK_RankReward["Other"][1][4]["RewardItem"][1] = {}
	tNjThPK_RankReward["Other"][1][4]["RewardItem"][1]["Id"] = 3314255 -- 稀有黄色神纹碎片[3314255][属性:8][叠加:10000][金币:0], 【表格】稀有黄色神纹碎片赠*50
	tNjThPK_RankReward["Other"][1][4]["RewardItem"][1]["Attr"] = "0 60 3" -- 稀有黄色神纹碎片（赠）*60（[错误]物品数量超10个）
	tNjThPK_RankReward["Other"][1][4]["RewardEffect"] = {}
	tNjThPK_RankReward["Other"][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPK_RankReward["Other"][1][4]["RewardEffect"]["Effect"] = "angelwing"


	tNjThPK_RankReward["Other"][2] = {}
	-- ===非忍者排名奖励1位
	-- ===索引:tNjThPK_RankReward["Other"][2][1]
	-- ===
	-- ===
	tNjThPK_RankReward["Other"][2][1] = {}
	tNjThPK_RankReward["Other"][2][1]["LogId"] = 12001985
	tNjThPK_RankReward["Other"][2][1]["RewardItem"] = {}
	tNjThPK_RankReward["Other"][2][1]["RewardItem"][1] = {}
	tNjThPK_RankReward["Other"][2][1]["RewardItem"][1]["Id"] = 3314255 -- 稀有黄色神纹碎片[3314255][属性:8][叠加:10000][金币:0], 【表格】稀有黄色神纹碎片赠*20
	tNjThPK_RankReward["Other"][2][1]["RewardItem"][1]["Attr"] = "0 20 3" -- 稀有黄色神纹碎片（赠）*20（[错误]物品数量超10个）
	tNjThPK_RankReward["Other"][2][1]["RewardEffect"] = {}
	tNjThPK_RankReward["Other"][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPK_RankReward["Other"][2][1]["RewardEffect"]["Effect"] = "angelwing"


	tNjThPK_RankReward["Other"][2][2] = {}
	-- ===非忍者排名奖励1位
	-- ===索引:tNjThPK_RankReward["Other"][2][2]
	-- ===消耗金币:34000000
	-- ===
	tNjThPK_RankReward["Other"][2][2]["LogId"] = 12001985
	tNjThPK_RankReward["Other"][2][2]["CostEMoneyMono"] = {}
	tNjThPK_RankReward["Other"][2][2]["CostEMoneyMono"]["Value"] = 3000 -- 赠点
	tNjThPK_RankReward["Other"][2][2]["CostEMoneyMono"]["EmoneyLog"] = "1000	1894"
	tNjThPK_RankReward["Other"][2][2]["RewardItem"] = {}
	tNjThPK_RankReward["Other"][2][2]["RewardItem"][1] = {}
	tNjThPK_RankReward["Other"][2][2]["RewardItem"][1]["Id"] = 3314255 -- 稀有黄色神纹碎片[3314255][属性:8][叠加:10000][金币:0], 【表格】稀有黄色神纹碎片赠*27
	tNjThPK_RankReward["Other"][2][2]["RewardItem"][1]["Attr"] = "0 27 3" -- 稀有黄色神纹碎片（赠）*27（[错误]物品数量超10个）
	tNjThPK_RankReward["Other"][2][2]["RewardEffect"] = {}
	tNjThPK_RankReward["Other"][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPK_RankReward["Other"][2][2]["RewardEffect"]["Effect"] = "angelwing"


	tNjThPK_RankReward["Other"][2][3] = {}
	-- ===非忍者排名奖励1位
	-- ===索引:tNjThPK_RankReward["Other"][2][3]
	-- ===删除:4200002,100
	-- ===
	tNjThPK_RankReward["Other"][2][3]["LogId"] = 12001985
	tNjThPK_RankReward["Other"][2][3]["DeleteItem"] = {}
	tNjThPK_RankReward["Other"][2][3]["DeleteItem"][1] = {}
	tNjThPK_RankReward["Other"][2][3]["DeleteItem"][1]["Id"] = 4200002 -- 【库】2阶灵珠[属性:72]
	tNjThPK_RankReward["Other"][2][3]["DeleteItem"][1]["ItemNum"] = 100
	tNjThPK_RankReward["Other"][2][3]["DeleteItem"][1]["PreciousType"] = 357 -- =351//重铸活动消耗=352//融合活动消耗=353//冶炼活动消耗=354//灵珠塔活动消耗=355//龙冢试炼消耗=356//熔炼炉消耗=357//其他LUA消耗
	tNjThPK_RankReward["Other"][2][3]["RewardItem"] = {}
	tNjThPK_RankReward["Other"][2][3]["RewardItem"][1] = {}
	tNjThPK_RankReward["Other"][2][3]["RewardItem"][1]["Id"] = 3314255 -- 稀有黄色神纹碎片[3314255][属性:8][叠加:10000][金币:0], 【表格】稀有黄色神纹碎片赠*34
	tNjThPK_RankReward["Other"][2][3]["RewardItem"][1]["Attr"] = "0 40 3" -- 稀有黄色神纹碎片（赠）*40（[错误]物品数量超10个）
	tNjThPK_RankReward["Other"][2][3]["RewardEffect"] = {}
	tNjThPK_RankReward["Other"][2][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPK_RankReward["Other"][2][3]["RewardEffect"]["Effect"] = "angelwing"


	tNjThPK_RankReward["Other"][2][4] = {}
	-- ===非忍者排名奖励1位
	-- ===索引:tNjThPK_RankReward["Other"][2][4]
	-- ===删除:4200002,2
	-- ===消耗天石:1
	-- ===NewEmoneyLog:1000,01819
	tNjThPK_RankReward["Other"][2][4]["LogId"] = 12001985
	tNjThPK_RankReward["Other"][2][4]["DeleteItem"] = {}
	tNjThPK_RankReward["Other"][2][4]["DeleteItem"][1] = {}
	tNjThPK_RankReward["Other"][2][4]["DeleteItem"][1]["Id"] = 4200002 -- 【库】2阶灵珠[属性:72]
	tNjThPK_RankReward["Other"][2][4]["DeleteItem"][1]["ItemNum"] = 2
	tNjThPK_RankReward["Other"][2][4]["DeleteItem"][1]["PreciousType"] = 357 -- =351//重铸活动消耗=352//融合活动消耗=353//冶炼活动消耗=354//灵珠塔活动消耗=355//龙冢试炼消耗=356//熔炼炉消耗=357//其他LUA消耗
	tNjThPK_RankReward["Other"][2][4]["CostEMoney"] = {}
	tNjThPK_RankReward["Other"][2][4]["CostEMoney"]["Value"] = 1 -- 消耗天石
	tNjThPK_RankReward["Other"][2][4]["CostEMoney"]["EmoneyLog"] = "1000	1819"
	tNjThPK_RankReward["Other"][2][4]["RewardItem"] = {}
	tNjThPK_RankReward["Other"][2][4]["RewardItem"][1] = {}
	tNjThPK_RankReward["Other"][2][4]["RewardItem"][1]["Id"] = 3314255 -- 稀有黄色神纹碎片[3314255][属性:8][叠加:10000][金币:0], 【表格】稀有黄色神纹碎片赠*34
	tNjThPK_RankReward["Other"][2][4]["RewardItem"][1]["Attr"] = "0 40 3" -- 稀有黄色神纹碎片（赠）*40（[错误]物品数量超10个）
	tNjThPK_RankReward["Other"][2][4]["RewardEffect"] = {}
	tNjThPK_RankReward["Other"][2][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPK_RankReward["Other"][2][4]["RewardEffect"]["Effect"] = "angelwing"


	tNjThPK_RankReward["Other"][3] = {}
	-- ===非忍者排名奖励1位
	-- ===索引:tNjThPK_RankReward["Other"][3][1]
	-- ===
	-- ===
	tNjThPK_RankReward["Other"][3][1] = {}
	tNjThPK_RankReward["Other"][3][1]["LogId"] = 12001985
	tNjThPK_RankReward["Other"][3][1]["RewardItem"] = {}
	tNjThPK_RankReward["Other"][3][1]["RewardItem"][1] = {}
	tNjThPK_RankReward["Other"][3][1]["RewardItem"][1]["Id"] = 3314255 -- 稀有黄色神纹碎片[3314255][属性:8][叠加:10000][金币:0], 【表格】稀有黄色神纹碎片赠*16
	tNjThPK_RankReward["Other"][3][1]["RewardItem"][1]["Attr"] = "0 16 3" -- 稀有黄色神纹碎片（赠）*16（[错误]物品数量超10个）
	tNjThPK_RankReward["Other"][3][1]["RewardEffect"] = {}
	tNjThPK_RankReward["Other"][3][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPK_RankReward["Other"][3][1]["RewardEffect"]["Effect"] = "angelwing"


	tNjThPK_RankReward["Other"][3][2] = {}
	-- ===非忍者排名奖励1位
	-- ===索引:tNjThPK_RankReward["Other"][3][2]
	-- ===消耗金币:27000000
	-- ===
	tNjThPK_RankReward["Other"][3][2]["LogId"] = 12001985
	tNjThPK_RankReward["Other"][3][2]["CostEMoneyMono"] = {}
	tNjThPK_RankReward["Other"][3][2]["CostEMoneyMono"]["Value"] = 2400 -- 赠点
	tNjThPK_RankReward["Other"][3][2]["CostEMoneyMono"]["EmoneyLog"] = "1000	1894"
	tNjThPK_RankReward["Other"][3][2]["RewardItem"] = {}
	tNjThPK_RankReward["Other"][3][2]["RewardItem"][1] = {}
	tNjThPK_RankReward["Other"][3][2]["RewardItem"][1]["Id"] = 3314255 -- 稀有黄色神纹碎片[3314255][属性:8][叠加:10000][金币:0], 【表格】稀有黄色神纹碎片赠*21
	tNjThPK_RankReward["Other"][3][2]["RewardItem"][1]["Attr"] = "0 21 3" -- 稀有黄色神纹碎片（赠）*21（[错误]物品数量超10个）
	tNjThPK_RankReward["Other"][3][2]["RewardEffect"] = {}
	tNjThPK_RankReward["Other"][3][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPK_RankReward["Other"][3][2]["RewardEffect"]["Effect"] = "angelwing"


	tNjThPK_RankReward["Other"][3][3] = {}
	-- ===非忍者排名奖励1位
	-- ===索引:tNjThPK_RankReward["Other"][3][3]
	-- ===删除:4200002,80
	-- ===
	tNjThPK_RankReward["Other"][3][3]["LogId"] = 12001985
	tNjThPK_RankReward["Other"][3][3]["DeleteItem"] = {}
	tNjThPK_RankReward["Other"][3][3]["DeleteItem"][1] = {}
	tNjThPK_RankReward["Other"][3][3]["DeleteItem"][1]["Id"] = 4200002 -- 【库】2阶灵珠[属性:72]
	tNjThPK_RankReward["Other"][3][3]["DeleteItem"][1]["ItemNum"] = 80
	tNjThPK_RankReward["Other"][3][3]["DeleteItem"][1]["PreciousType"] = 357 -- =351//重铸活动消耗=352//融合活动消耗=353//冶炼活动消耗=354//灵珠塔活动消耗=355//龙冢试炼消耗=356//熔炼炉消耗=357//其他LUA消耗
	tNjThPK_RankReward["Other"][3][3]["RewardItem"] = {}
	tNjThPK_RankReward["Other"][3][3]["RewardItem"][1] = {}
	tNjThPK_RankReward["Other"][3][3]["RewardItem"][1]["Id"] = 3314255 -- 稀有黄色神纹碎片[3314255][属性:8][叠加:10000][金币:0], 【表格】稀有黄色神纹碎片赠*26
	tNjThPK_RankReward["Other"][3][3]["RewardItem"][1]["Attr"] = "0 32 3" -- 稀有黄色神纹碎片（赠）*32（[错误]物品数量超10个）
	tNjThPK_RankReward["Other"][3][3]["RewardEffect"] = {}
	tNjThPK_RankReward["Other"][3][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPK_RankReward["Other"][3][3]["RewardEffect"]["Effect"] = "angelwing"


	tNjThPK_RankReward["Other"][3][4] = {}
	-- ===非忍者排名奖励1位
	-- ===索引:tNjThPK_RankReward["Other"][3][4]
	-- ===删除:4200002,2
	-- ===消耗天石:1
	-- ===NewEmoneyLog:1000,01819
	tNjThPK_RankReward["Other"][3][4]["LogId"] = 12001985
	tNjThPK_RankReward["Other"][3][4]["DeleteItem"] = {}
	tNjThPK_RankReward["Other"][3][4]["DeleteItem"][1] = {}
	tNjThPK_RankReward["Other"][3][4]["DeleteItem"][1]["Id"] = 4200002 -- 【库】2阶灵珠[属性:72]
	tNjThPK_RankReward["Other"][3][4]["DeleteItem"][1]["ItemNum"] = 2
	tNjThPK_RankReward["Other"][3][4]["DeleteItem"][1]["PreciousType"] = 357 -- =351//重铸活动消耗=352//融合活动消耗=353//冶炼活动消耗=354//灵珠塔活动消耗=355//龙冢试炼消耗=356//熔炼炉消耗=357//其他LUA消耗
	tNjThPK_RankReward["Other"][3][4]["CostEMoney"] = {}
	tNjThPK_RankReward["Other"][3][4]["CostEMoney"]["Value"] = 1 -- 消耗天石
	tNjThPK_RankReward["Other"][3][4]["CostEMoney"]["EmoneyLog"] = "1000	1819"
	tNjThPK_RankReward["Other"][3][4]["RewardItem"] = {}
	tNjThPK_RankReward["Other"][3][4]["RewardItem"][1] = {}
	tNjThPK_RankReward["Other"][3][4]["RewardItem"][1]["Id"] = 3314255 -- 稀有黄色神纹碎片[3314255][属性:8][叠加:10000][金币:0], 【表格】稀有黄色神纹碎片赠*26
	tNjThPK_RankReward["Other"][3][4]["RewardItem"][1]["Attr"] = "0 32 3" -- 稀有黄色神纹碎片（赠）*32（[错误]物品数量超10个）
	tNjThPK_RankReward["Other"][3][4]["RewardEffect"] = {}
	tNjThPK_RankReward["Other"][3][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPK_RankReward["Other"][3][4]["RewardEffect"]["Effect"] = "angelwing"


	tNjThPK_RankReward["Other"][4] = {}
	-- ===非忍者排名奖励1位
	-- ===索引:tNjThPK_RankReward["Other"][4][1]
	-- ===
	-- ===
	tNjThPK_RankReward["Other"][4][1] = {}
	tNjThPK_RankReward["Other"][4][1]["LogId"] = 12001985
	tNjThPK_RankReward["Other"][4][1]["RewardItem"] = {}
	tNjThPK_RankReward["Other"][4][1]["RewardItem"][1] = {}
	tNjThPK_RankReward["Other"][4][1]["RewardItem"][1]["Id"] = 3314255 -- 稀有黄色神纹碎片[3314255][属性:8][叠加:10000][金币:0], 【表格】稀有黄色神纹碎片赠*10
	tNjThPK_RankReward["Other"][4][1]["RewardItem"][1]["Attr"] = "0 10 3" -- 稀有黄色神纹碎片（赠）*10
	tNjThPK_RankReward["Other"][4][1]["RewardEffect"] = {}
	tNjThPK_RankReward["Other"][4][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPK_RankReward["Other"][4][1]["RewardEffect"]["Effect"] = "angelwing"


	tNjThPK_RankReward["Other"][4][2] = {}
	-- ===非忍者排名奖励1位
	-- ===索引:tNjThPK_RankReward["Other"][4][2]
	-- ===消耗金币:17000000
	-- ===
	tNjThPK_RankReward["Other"][4][2]["LogId"] = 12001985
	tNjThPK_RankReward["Other"][4][2]["CostEMoneyMono"] = {}
	tNjThPK_RankReward["Other"][4][2]["CostEMoneyMono"]["Value"] = 1500 -- 赠点
	tNjThPK_RankReward["Other"][4][2]["CostEMoneyMono"]["EmoneyLog"] = "1000	1894"
	tNjThPK_RankReward["Other"][4][2]["RewardItem"] = {}
	tNjThPK_RankReward["Other"][4][2]["RewardItem"][1] = {}
	tNjThPK_RankReward["Other"][4][2]["RewardItem"][1]["Id"] = 3314255 -- 稀有黄色神纹碎片[3314255][属性:8][叠加:10000][金币:0], 【表格】稀有黄色神纹碎片赠*13
	tNjThPK_RankReward["Other"][4][2]["RewardItem"][1]["Attr"] = "0 13 3" -- 稀有黄色神纹碎片（赠）*13（[错误]物品数量超10个）
	tNjThPK_RankReward["Other"][4][2]["RewardEffect"] = {}
	tNjThPK_RankReward["Other"][4][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPK_RankReward["Other"][4][2]["RewardEffect"]["Effect"] = "angelwing"


	tNjThPK_RankReward["Other"][4][3] = {}
	-- ===非忍者排名奖励1位
	-- ===索引:tNjThPK_RankReward["Other"][4][3]
	-- ===删除:4200002,50
	-- ===
	tNjThPK_RankReward["Other"][4][3]["LogId"] = 12001985
	tNjThPK_RankReward["Other"][4][3]["DeleteItem"] = {}
	tNjThPK_RankReward["Other"][4][3]["DeleteItem"][1] = {}
	tNjThPK_RankReward["Other"][4][3]["DeleteItem"][1]["Id"] = 4200002 -- 【库】2阶灵珠[属性:72]
	tNjThPK_RankReward["Other"][4][3]["DeleteItem"][1]["ItemNum"] = 50
	tNjThPK_RankReward["Other"][4][3]["DeleteItem"][1]["PreciousType"] = 357 -- =351//重铸活动消耗=352//融合活动消耗=353//冶炼活动消耗=354//灵珠塔活动消耗=355//龙冢试炼消耗=356//熔炼炉消耗=357//其他LUA消耗
	tNjThPK_RankReward["Other"][4][3]["RewardItem"] = {}
	tNjThPK_RankReward["Other"][4][3]["RewardItem"][1] = {}
	tNjThPK_RankReward["Other"][4][3]["RewardItem"][1]["Id"] = 3314255 -- 稀有黄色神纹碎片[3314255][属性:8][叠加:10000][金币:0], 【表格】稀有黄色神纹碎片赠*16
	tNjThPK_RankReward["Other"][4][3]["RewardItem"][1]["Attr"] = "0 20 3" -- 稀有黄色神纹碎片（赠）*20（[错误]物品数量超10个）
	tNjThPK_RankReward["Other"][4][3]["RewardEffect"] = {}
	tNjThPK_RankReward["Other"][4][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPK_RankReward["Other"][4][3]["RewardEffect"]["Effect"] = "angelwing"


	tNjThPK_RankReward["Other"][4][4] = {}
	-- ===非忍者排名奖励1位
	-- ===索引:tNjThPK_RankReward["Other"][4][4]
	-- ===删除:4200002,2
	-- ===消耗天石:1
	-- ===NewEmoneyLog:1000,01819
	tNjThPK_RankReward["Other"][4][4]["LogId"] = 12001985
	tNjThPK_RankReward["Other"][4][4]["DeleteItem"] = {}
	tNjThPK_RankReward["Other"][4][4]["DeleteItem"][1] = {}
	tNjThPK_RankReward["Other"][4][4]["DeleteItem"][1]["Id"] = 4200002 -- 【库】2阶灵珠[属性:72]
	tNjThPK_RankReward["Other"][4][4]["DeleteItem"][1]["ItemNum"] = 2
	tNjThPK_RankReward["Other"][4][4]["DeleteItem"][1]["PreciousType"] = 357 -- =351//重铸活动消耗=352//融合活动消耗=353//冶炼活动消耗=354//灵珠塔活动消耗=355//龙冢试炼消耗=356//熔炼炉消耗=357//其他LUA消耗
	tNjThPK_RankReward["Other"][4][4]["CostEMoney"] = {}
	tNjThPK_RankReward["Other"][4][4]["CostEMoney"]["Value"] = 1 -- 消耗天石
	tNjThPK_RankReward["Other"][4][4]["CostEMoney"]["EmoneyLog"] = "1000	1819"
	tNjThPK_RankReward["Other"][4][4]["RewardItem"] = {}
	tNjThPK_RankReward["Other"][4][4]["RewardItem"][1] = {}
	tNjThPK_RankReward["Other"][4][4]["RewardItem"][1]["Id"] = 3314255 -- 稀有黄色神纹碎片[3314255][属性:8][叠加:10000][金币:0], 【表格】稀有黄色神纹碎片赠*16
	tNjThPK_RankReward["Other"][4][4]["RewardItem"][1]["Attr"] = "0 20 3" -- 稀有黄色神纹碎片（赠）*20（[错误]物品数量超10个）
	tNjThPK_RankReward["Other"][4][4]["RewardEffect"] = {}
	tNjThPK_RankReward["Other"][4][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPK_RankReward["Other"][4][4]["RewardEffect"]["Effect"] = "angelwing"


	tNjThPK_RankReward["Other"][5] = {}
	-- ===非忍者排名奖励1位
	-- ===索引:tNjThPK_RankReward["Other"][5][1]
	-- ===
	-- ===
	tNjThPK_RankReward["Other"][5][1] = {}
	tNjThPK_RankReward["Other"][5][1]["LogId"] = 12001985
	tNjThPK_RankReward["Other"][5][1]["RewardItem"] = {}
	tNjThPK_RankReward["Other"][5][1]["RewardItem"][1] = {}
	tNjThPK_RankReward["Other"][5][1]["RewardItem"][1]["Id"] = 3314255 -- 稀有黄色神纹碎片[3314255][属性:8][叠加:10000][金币:0], 【表格】稀有黄色神纹碎片赠*6
	tNjThPK_RankReward["Other"][5][1]["RewardItem"][1]["Attr"] = "0 6 3" -- 稀有黄色神纹碎片（赠）*6
	tNjThPK_RankReward["Other"][5][1]["RewardEffect"] = {}
	tNjThPK_RankReward["Other"][5][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPK_RankReward["Other"][5][1]["RewardEffect"]["Effect"] = "angelwing"


	tNjThPK_RankReward["Other"][5][2] = {}
	-- ===非忍者排名奖励1位
	-- ===索引:tNjThPK_RankReward["Other"][5][2]
	-- ===消耗金币:10000000
	-- ===
	tNjThPK_RankReward["Other"][5][2]["LogId"] = 12001985
	tNjThPK_RankReward["Other"][5][2]["CostEMoneyMono"] = {}
	tNjThPK_RankReward["Other"][5][2]["CostEMoneyMono"]["Value"] = 900 -- 赠点
	tNjThPK_RankReward["Other"][5][2]["CostEMoneyMono"]["EmoneyLog"] = "1000	1894"
	tNjThPK_RankReward["Other"][5][2]["RewardItem"] = {}
	tNjThPK_RankReward["Other"][5][2]["RewardItem"][1] = {}
	tNjThPK_RankReward["Other"][5][2]["RewardItem"][1]["Id"] = 3314255 -- 稀有黄色神纹碎片[3314255][属性:8][叠加:10000][金币:0], 【表格】稀有黄色神纹碎片赠*8
	tNjThPK_RankReward["Other"][5][2]["RewardItem"][1]["Attr"] = "0 8 3" -- 稀有黄色神纹碎片（赠）*8
	tNjThPK_RankReward["Other"][5][2]["RewardEffect"] = {}
	tNjThPK_RankReward["Other"][5][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPK_RankReward["Other"][5][2]["RewardEffect"]["Effect"] = "angelwing"


	tNjThPK_RankReward["Other"][5][3] = {}
	-- ===非忍者排名奖励1位
	-- ===索引:tNjThPK_RankReward["Other"][5][3]
	-- ===删除:4200002,30
	-- ===
	tNjThPK_RankReward["Other"][5][3] = {}
	tNjThPK_RankReward["Other"][5][3]["LogId"] = 12001985
	tNjThPK_RankReward["Other"][5][3]["DeleteItem"] = {}
	tNjThPK_RankReward["Other"][5][3]["DeleteItem"][1] = {}
	tNjThPK_RankReward["Other"][5][3]["DeleteItem"][1]["Id"] = 4200002 -- 【库】2阶灵珠[属性:72]
	tNjThPK_RankReward["Other"][5][3]["DeleteItem"][1]["ItemNum"] = 30
	tNjThPK_RankReward["Other"][5][3]["DeleteItem"][1]["PreciousType"] = 357 -- =351//重铸活动消耗=352//融合活动消耗=353//冶炼活动消耗=354//灵珠塔活动消耗=355//龙冢试炼消耗=356//熔炼炉消耗=357//其他LUA消耗
	tNjThPK_RankReward["Other"][5][3]["RewardItem"] = {}
	tNjThPK_RankReward["Other"][5][3]["RewardItem"][1] = {}
	tNjThPK_RankReward["Other"][5][3]["RewardItem"][1]["Id"] = 3314255 -- 稀有黄色神纹碎片[3314255][属性:8][叠加:10000][金币:0], 【表格】稀有黄色神纹碎片赠*10
	tNjThPK_RankReward["Other"][5][3]["RewardItem"][1]["Attr"] = "0 12 3" -- 稀有黄色神纹碎片（赠）*12（[错误]物品数量超10个）
	tNjThPK_RankReward["Other"][5][3]["RewardEffect"] = {}
	tNjThPK_RankReward["Other"][5][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPK_RankReward["Other"][5][3]["RewardEffect"]["Effect"] = "angelwing"


	tNjThPK_RankReward["Other"][5][4] = {}
	-- ===非忍者排名奖励1位
	-- ===索引:tNjThPK_RankReward["Other"][5][4]
	-- ===删除:4200002,2
	-- ===消耗天石:1
	-- ===NewEmoneyLog:1000,01819
	tNjThPK_RankReward["Other"][5][4]["LogId"] = 12001985
	tNjThPK_RankReward["Other"][5][4]["DeleteItem"] = {}
	tNjThPK_RankReward["Other"][5][4]["DeleteItem"][1] = {}
	tNjThPK_RankReward["Other"][5][4]["DeleteItem"][1]["Id"] = 4200002 -- 【库】2阶灵珠[属性:72]
	tNjThPK_RankReward["Other"][5][4]["DeleteItem"][1]["ItemNum"] = 2
	tNjThPK_RankReward["Other"][5][4]["DeleteItem"][1]["PreciousType"] = 357 -- =351//重铸活动消耗=352//融合活动消耗=353//冶炼活动消耗=354//灵珠塔活动消耗=355//龙冢试炼消耗=356//熔炼炉消耗=357//其他LUA消耗
	tNjThPK_RankReward["Other"][5][4]["CostEMoney"] = {}
	tNjThPK_RankReward["Other"][5][4]["CostEMoney"]["Value"] = 1 -- 消耗天石
	tNjThPK_RankReward["Other"][5][4]["CostEMoney"]["EmoneyLog"] = "1000	1819"
	tNjThPK_RankReward["Other"][5][4]["RewardItem"] = {}
	tNjThPK_RankReward["Other"][5][4]["RewardItem"][1] = {}
	tNjThPK_RankReward["Other"][5][4]["RewardItem"][1]["Id"] = 3314255 -- 稀有黄色神纹碎片[3314255][属性:8][叠加:10000][金币:0], 【表格】稀有黄色神纹碎片赠*10
	tNjThPK_RankReward["Other"][5][4]["RewardItem"][1]["Attr"] = "0 12 3" -- 稀有黄色神纹碎片（赠）*12（[错误]物品数量超10个）
	tNjThPK_RankReward["Other"][5][4]["RewardEffect"] = {}
	tNjThPK_RankReward["Other"][5][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPK_RankReward["Other"][5][4]["RewardEffect"]["Effect"] = "angelwing"


local tNjThPk_ScoreReward = {}
	-- ===非忍者500分
	-- ===索引:tNjThPk_ScoreReward["Other"][1][1]
	-- ===
	-- ===
	tNjThPk_ScoreReward["Other"] = {}
	tNjThPk_ScoreReward["Other"][1] = {}
	tNjThPk_ScoreReward["Other"][1][1] = {}
	tNjThPk_ScoreReward["Other"][1][1]["LogId"] = 12001985
	tNjThPk_ScoreReward["Other"][1][1]["RewardItem"] = {}
	tNjThPk_ScoreReward["Other"][1][1]["RewardItem"][1] = {}
	tNjThPk_ScoreReward["Other"][1][1]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石*5
	tNjThPk_ScoreReward["Other"][1][1]["RewardItem"][1]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的明亮星陨石*5
	tNjThPk_ScoreReward["Other"][1][1]["RewardEffect"] = {}
	tNjThPk_ScoreReward["Other"][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPk_ScoreReward["Other"][1][1]["RewardEffect"]["Effect"] = "angelwing"


	tNjThPk_ScoreReward["Other"][1][2] = {}
	-- ===非忍者500分
	-- ===索引:tNjThPk_ScoreReward["Other"][1][2]
	-- ===消耗金币:6000000
	-- ===
	tNjThPk_ScoreReward["Other"][1][2]["LogId"] = 12001985
	tNjThPk_ScoreReward["Other"][1][2]["CostEMoneyMono"] = {}
	tNjThPk_ScoreReward["Other"][1][2]["CostEMoneyMono"]["Value"] = 240 -- 赠点
	tNjThPk_ScoreReward["Other"][1][2]["CostEMoneyMono"]["EmoneyLog"] = "1000	1894"
	tNjThPk_ScoreReward["Other"][1][2]["RewardItem"] = {}
	tNjThPk_ScoreReward["Other"][1][2]["RewardItem"][1] = {}
	tNjThPk_ScoreReward["Other"][1][2]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石*10
	tNjThPk_ScoreReward["Other"][1][2]["RewardItem"][1]["Attr"] = "0 10 0 2880 1" -- 2天时效(激活)的明亮星陨石*10
	tNjThPk_ScoreReward["Other"][1][2]["RewardEffect"] = {}
	tNjThPk_ScoreReward["Other"][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPk_ScoreReward["Other"][1][2]["RewardEffect"]["Effect"] = "angelwing"


	tNjThPk_ScoreReward["Other"][1][3] = {}
	-- ===非忍者500分
	-- ===索引:tNjThPk_ScoreReward["Other"][1][3]
	-- ===删除:4200005,1
	-- ===
	tNjThPk_ScoreReward["Other"][1][3]["LogId"] = 12001985
	tNjThPk_ScoreReward["Other"][1][3]["DeleteItem"] = {}
	tNjThPk_ScoreReward["Other"][1][3]["DeleteItem"][1] = {}
	tNjThPk_ScoreReward["Other"][1][3]["DeleteItem"][1]["Id"] = 4200005 -- 【库】5阶灵珠[属性:72]
	tNjThPk_ScoreReward["Other"][1][3]["DeleteItem"][1]["PreciousType"] = 357 -- =351//重铸活动消耗=352//融合活动消耗=353//冶炼活动消耗=354//灵珠塔活动消耗=355//龙冢试炼消耗=356//熔炼炉消耗=357//其他LUA消耗
	tNjThPk_ScoreReward["Other"][1][3]["RewardItem"] = {}
	tNjThPk_ScoreReward["Other"][1][3]["RewardItem"][1] = {}
	tNjThPk_ScoreReward["Other"][1][3]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石*10
	tNjThPk_ScoreReward["Other"][1][3]["RewardItem"][1]["Attr"] = "0 10 0 2880 1" -- 2天时效(激活)的明亮星陨石*10
	tNjThPk_ScoreReward["Other"][1][3]["RewardEffect"] = {}
	tNjThPk_ScoreReward["Other"][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPk_ScoreReward["Other"][1][3]["RewardEffect"]["Effect"] = "angelwing"


	tNjThPk_ScoreReward["Other"][1][4] = {}
	-- ===非忍者500分
	-- ===索引:tNjThPk_ScoreReward["Other"][1][4]
	-- ===消耗天石:80
	-- ===NewEmoneyLog:1000,01819
	tNjThPk_ScoreReward["Other"][1][4]["LogId"] = 12001985
	tNjThPk_ScoreReward["Other"][1][4]["CostEMoney"] = {}
	tNjThPk_ScoreReward["Other"][1][4]["CostEMoney"]["Value"] = 80 -- 消耗天石
	tNjThPk_ScoreReward["Other"][1][4]["CostEMoney"]["EmoneyLog"] = "1000	1819"
	tNjThPk_ScoreReward["Other"][1][4]["RewardItem"] = {}
	tNjThPk_ScoreReward["Other"][1][4]["RewardItem"][1] = {}
	tNjThPk_ScoreReward["Other"][1][4]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石*10
	tNjThPk_ScoreReward["Other"][1][4]["RewardItem"][1]["Attr"] = "0 10 0 2880 1" -- 2天时效(激活)的明亮星陨石*10
	tNjThPk_ScoreReward["Other"][1][4]["RewardEffect"] = {}
	tNjThPk_ScoreReward["Other"][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPk_ScoreReward["Other"][1][4]["RewardEffect"]["Effect"] = "angelwing"


	tNjThPk_ScoreReward["Other"][2] = {}
	-- ===非忍者1000分
	-- ===索引:tNjThPk_ScoreReward["Other"][2][1]
	-- ===
	-- ===
	tNjThPk_ScoreReward["Other"][2][1] = {}
	tNjThPk_ScoreReward["Other"][2][1]["LogId"] = 12001985
	tNjThPk_ScoreReward["Other"][2][1]["RewardItem"] = {}
	tNjThPk_ScoreReward["Other"][2][1]["RewardItem"][1] = {}
	tNjThPk_ScoreReward["Other"][2][1]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹赠*50
	tNjThPk_ScoreReward["Other"][2][1]["RewardItem"][1]["Attr"] = "0 50 3" -- 万能神纹精粹（赠）*50
	tNjThPk_ScoreReward["Other"][2][1]["RewardEffect"] = {}
	tNjThPk_ScoreReward["Other"][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPk_ScoreReward["Other"][2][1]["RewardEffect"]["Effect"] = "angelwing"


	tNjThPk_ScoreReward["Other"][2][2] = {}
	-- ===非忍者1000分
	-- ===索引:tNjThPk_ScoreReward["Other"][2][2]
	-- ===消耗金币:9000000
	-- ===
	tNjThPk_ScoreReward["Other"][2][2]["LogId"] = 12001985
	tNjThPk_ScoreReward["Other"][2][2]["CostEMoneyMono"] = {}
	tNjThPk_ScoreReward["Other"][2][2]["CostEMoneyMono"]["Value"] = 360 -- 赠点
	tNjThPk_ScoreReward["Other"][2][2]["CostEMoneyMono"]["EmoneyLog"] = "1000	1894"
	tNjThPk_ScoreReward["Other"][2][2]["RewardItem"] = {}
	tNjThPk_ScoreReward["Other"][2][2]["RewardItem"][1] = {}
	tNjThPk_ScoreReward["Other"][2][2]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹赠*100
	tNjThPk_ScoreReward["Other"][2][2]["RewardItem"][1]["Attr"] = "0 100 3" -- 万能神纹精粹（赠）*100
	tNjThPk_ScoreReward["Other"][2][2]["RewardEffect"] = {}
	tNjThPk_ScoreReward["Other"][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPk_ScoreReward["Other"][2][2]["RewardEffect"]["Effect"] = "angelwing"


	tNjThPk_ScoreReward["Other"][2][3] = {}
	-- ===非忍者1000分
	-- ===索引:tNjThPk_ScoreReward["Other"][2][3]
	-- ===删除:4200004,3
	-- ===
	tNjThPk_ScoreReward["Other"][2][3]["LogId"] = 12001985
	tNjThPk_ScoreReward["Other"][2][3]["DeleteItem"] = {}
	tNjThPk_ScoreReward["Other"][2][3]["DeleteItem"][1] = {}
	tNjThPk_ScoreReward["Other"][2][3]["DeleteItem"][1]["Id"] = 4200004 -- 【库】4阶灵珠[属性:72]
	tNjThPk_ScoreReward["Other"][2][3]["DeleteItem"][1]["ItemNum"] = 3
	tNjThPk_ScoreReward["Other"][2][3]["DeleteItem"][1]["PreciousType"] = 357 -- =351//重铸活动消耗=352//融合活动消耗=353//冶炼活动消耗=354//灵珠塔活动消耗=355//龙冢试炼消耗=356//熔炼炉消耗=357//其他LUA消耗
	tNjThPk_ScoreReward["Other"][2][3]["RewardItem"] = {}
	tNjThPk_ScoreReward["Other"][2][3]["RewardItem"][1] = {}
	tNjThPk_ScoreReward["Other"][2][3]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹赠*100
	tNjThPk_ScoreReward["Other"][2][3]["RewardItem"][1]["Attr"] = "0 100 3" -- 万能神纹精粹（赠）*100
	tNjThPk_ScoreReward["Other"][2][3]["RewardEffect"] = {}
	tNjThPk_ScoreReward["Other"][2][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPk_ScoreReward["Other"][2][3]["RewardEffect"]["Effect"] = "angelwing"


	tNjThPk_ScoreReward["Other"][2][4] = {}
	-- ===非忍者1000分
	-- ===索引:tNjThPk_ScoreReward["Other"][2][4]
	-- ===删除:4200004,2
	-- ===消耗天石:1
	-- ===NewEmoneyLog:1000,01819
	tNjThPk_ScoreReward["Other"][2][4]["LogId"] = 12001985
	tNjThPk_ScoreReward["Other"][2][4]["DeleteItem"] = {}
	tNjThPk_ScoreReward["Other"][2][4]["DeleteItem"][1] = {}
	tNjThPk_ScoreReward["Other"][2][4]["DeleteItem"][1]["Id"] = 4200004 -- 【库】4阶灵珠[属性:72]
	tNjThPk_ScoreReward["Other"][2][4]["DeleteItem"][1]["ItemNum"] = 2
	tNjThPk_ScoreReward["Other"][2][4]["DeleteItem"][1]["PreciousType"] = 357 -- =351//重铸活动消耗=352//融合活动消耗=353//冶炼活动消耗=354//灵珠塔活动消耗=355//龙冢试炼消耗=356//熔炼炉消耗=357//其他LUA消耗
	tNjThPk_ScoreReward["Other"][2][4]["CostEMoney"] = {}
	tNjThPk_ScoreReward["Other"][2][4]["CostEMoney"]["Value"] = 1 -- 消耗天石
	tNjThPk_ScoreReward["Other"][2][4]["CostEMoney"]["EmoneyLog"] = "1000	1819"
	tNjThPk_ScoreReward["Other"][2][4]["RewardItem"] = {}
	tNjThPk_ScoreReward["Other"][2][4]["RewardItem"][1] = {}
	tNjThPk_ScoreReward["Other"][2][4]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹赠*100
	tNjThPk_ScoreReward["Other"][2][4]["RewardItem"][1]["Attr"] = "0 100 3" -- 万能神纹精粹（赠）*100
	tNjThPk_ScoreReward["Other"][2][4]["RewardEffect"] = {}
	tNjThPk_ScoreReward["Other"][2][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPk_ScoreReward["Other"][2][4]["RewardEffect"]["Effect"] = "angelwing"


	tNjThPk_ScoreReward["Other"][3] = {}
	-- ===非忍者2000分
	-- ===索引:tNjThPk_ScoreReward["Other"][3][1]
	-- ===
	-- ===
	tNjThPk_ScoreReward["Other"][3][1] = {}
	tNjThPk_ScoreReward["Other"][3][1]["LogId"] = 12001985
	tNjThPk_ScoreReward["Other"][3][1]["RewardStrengthValue"] = {}
	tNjThPk_ScoreReward["Other"][3][1]["RewardStrengthValue"]["Value"] = 2000 -- 气力值, 【需求】2000气力值
	tNjThPk_ScoreReward["Other"][3][1]["RewardEffect"] = {}
	tNjThPk_ScoreReward["Other"][3][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPk_ScoreReward["Other"][3][1]["RewardEffect"]["Effect"] = "angelwing"


	tNjThPk_ScoreReward["Other"][3][2] = {}
	-- ===非忍者2000分
	-- ===索引:tNjThPk_ScoreReward["Other"][3][2]
	-- ===消耗金币:12000000
	-- ===
	tNjThPk_ScoreReward["Other"][3][2]["LogId"] = 12001985
	tNjThPk_ScoreReward["Other"][3][2]["CostEMoneyMono"] = {}
	tNjThPk_ScoreReward["Other"][3][2]["CostEMoneyMono"]["Value"] = 480 -- 赠点
	tNjThPk_ScoreReward["Other"][3][2]["CostEMoneyMono"]["EmoneyLog"] = "1000	1894"
	tNjThPk_ScoreReward["Other"][3][2]["RewardStrengthValue"] = {}
	tNjThPk_ScoreReward["Other"][3][2]["RewardStrengthValue"]["Value"] = 4000 -- 气力值, 【需求】2000气力值
	tNjThPk_ScoreReward["Other"][3][2]["RewardEffect"] = {}
	tNjThPk_ScoreReward["Other"][3][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPk_ScoreReward["Other"][3][2]["RewardEffect"]["Effect"] = "angelwing"


	tNjThPk_ScoreReward["Other"][3][3] = {}
	-- ===非忍者2000分
	-- ===索引:tNjThPk_ScoreReward["Other"][3][3]
	-- ===删除:4200006,1
	-- ===
	tNjThPk_ScoreReward["Other"][3][3]["LogId"] = 12001985
	tNjThPk_ScoreReward["Other"][3][3]["DeleteItem"] = {}
	tNjThPk_ScoreReward["Other"][3][3]["DeleteItem"][1] = {}
	tNjThPk_ScoreReward["Other"][3][3]["DeleteItem"][1]["Id"] = 4200006 -- 【库】6阶灵珠[属性:72]
	tNjThPk_ScoreReward["Other"][3][3]["DeleteItem"][1]["PreciousType"] = 357 -- =351//重铸活动消耗=352//融合活动消耗=353//冶炼活动消耗=354//灵珠塔活动消耗=355//龙冢试炼消耗=356//熔炼炉消耗=357//其他LUA消耗
	tNjThPk_ScoreReward["Other"][3][3]["RewardStrengthValue"] = {}
	tNjThPk_ScoreReward["Other"][3][3]["RewardStrengthValue"]["Value"] = 4000 -- 气力值, 【需求】2000气力值
	tNjThPk_ScoreReward["Other"][3][3]["RewardEffect"] = {}
	tNjThPk_ScoreReward["Other"][3][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPk_ScoreReward["Other"][3][3]["RewardEffect"]["Effect"] = "angelwing"


	tNjThPk_ScoreReward["Other"][3][4] = {}
	-- ===非忍者2000分
	-- ===索引:tNjThPk_ScoreReward["Other"][3][4]
	-- ===消耗天石:160
	-- ===NewEmoneyLog:1000,01819
	tNjThPk_ScoreReward["Other"][3][4]["LogId"] = 12001985
	tNjThPk_ScoreReward["Other"][3][4]["CostEMoney"] = {}
	tNjThPk_ScoreReward["Other"][3][4]["CostEMoney"]["Value"] = 160 -- 消耗天石
	tNjThPk_ScoreReward["Other"][3][4]["CostEMoney"]["EmoneyLog"] = "1000	1819"
	tNjThPk_ScoreReward["Other"][3][4]["RewardStrengthValue"] = {}
	tNjThPk_ScoreReward["Other"][3][4]["RewardStrengthValue"]["Value"] = 4000 -- 气力值, 【需求】2000气力值
	tNjThPk_ScoreReward["Other"][3][4]["RewardEffect"] = {}
	tNjThPk_ScoreReward["Other"][3][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPk_ScoreReward["Other"][3][4]["RewardEffect"]["Effect"] = "angelwing"


	tNjThPk_ScoreReward["Other"][4] = {}
	-- ===非忍者3000分
	-- ===索引:tNjThPk_ScoreReward["Other"][4][1]
	-- ===
	-- ===
	tNjThPk_ScoreReward["Other"][4][1] = {}
	tNjThPk_ScoreReward["Other"][4][1]["LogId"] = 12001985
	tNjThPk_ScoreReward["Other"][4][1]["RewardItem"] = {}
	tNjThPk_ScoreReward["Other"][4][1]["RewardItem"][1] = {}
	tNjThPk_ScoreReward["Other"][4][1]["RewardItem"][1]["Id"] = 3009002 -- 晶莹星陨石[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石
	tNjThPk_ScoreReward["Other"][4][1]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的晶莹星陨石*1
	tNjThPk_ScoreReward["Other"][4][1]["RewardEffect"] = {}
	tNjThPk_ScoreReward["Other"][4][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPk_ScoreReward["Other"][4][1]["RewardEffect"]["Effect"] = "angelwing"


	tNjThPk_ScoreReward["Other"][4][2] = {}
	-- ===非忍者3000分
	-- ===索引:tNjThPk_ScoreReward["Other"][4][2]
	-- ===消耗金币:15000000
	-- ===
	tNjThPk_ScoreReward["Other"][4][2]["LogId"] = 12001985
	tNjThPk_ScoreReward["Other"][4][2]["CostEMoneyMono"] = {}
	tNjThPk_ScoreReward["Other"][4][2]["CostEMoneyMono"]["Value"] = 480 -- 赠点
	tNjThPk_ScoreReward["Other"][4][2]["CostEMoneyMono"]["EmoneyLog"] = "1000	1894"
	tNjThPk_ScoreReward["Other"][4][2]["RewardItem"] = {}
	tNjThPk_ScoreReward["Other"][4][2]["RewardItem"][1] = {}
	tNjThPk_ScoreReward["Other"][4][2]["RewardItem"][1]["Id"] = 3009002 -- 晶莹星陨石[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石
	tNjThPk_ScoreReward["Other"][4][2]["RewardItem"][1]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的晶莹星陨石*2
	tNjThPk_ScoreReward["Other"][4][2]["RewardEffect"] = {}
	tNjThPk_ScoreReward["Other"][4][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPk_ScoreReward["Other"][4][2]["RewardEffect"]["Effect"] = "angelwing"


	tNjThPk_ScoreReward["Other"][4][3] = {}
	-- ===非忍者3000分
	-- ===索引:tNjThPk_ScoreReward["Other"][4][3]
	-- ===删除:4200006,1
	-- ===
	tNjThPk_ScoreReward["Other"][4][3]["LogId"] = 12001985
	tNjThPk_ScoreReward["Other"][4][3]["DeleteItem"] = {}
	tNjThPk_ScoreReward["Other"][4][3]["DeleteItem"][1] = {}
	tNjThPk_ScoreReward["Other"][4][3]["DeleteItem"][1]["Id"] = 4200006 -- 【库】6阶灵珠[属性:72]
	tNjThPk_ScoreReward["Other"][4][3]["DeleteItem"][1]["PreciousType"] = 357 -- =351//重铸活动消耗=352//融合活动消耗=353//冶炼活动消耗=354//灵珠塔活动消耗=355//龙冢试炼消耗=356//熔炼炉消耗=357//其他LUA消耗
	tNjThPk_ScoreReward["Other"][4][3]["RewardItem"] = {}
	tNjThPk_ScoreReward["Other"][4][3]["RewardItem"][1] = {}
	tNjThPk_ScoreReward["Other"][4][3]["RewardItem"][1]["Id"] = 3009002 -- 晶莹星陨石[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石
	tNjThPk_ScoreReward["Other"][4][3]["RewardItem"][1]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的晶莹星陨石*2
	tNjThPk_ScoreReward["Other"][4][3]["RewardEffect"] = {}
	tNjThPk_ScoreReward["Other"][4][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPk_ScoreReward["Other"][4][3]["RewardEffect"]["Effect"] = "angelwing"


	tNjThPk_ScoreReward["Other"][4][4] = {}
	-- ===非忍者3000分
	-- ===索引:tNjThPk_ScoreReward["Other"][4][4]
	-- ===消耗天石:160
	-- ===NewEmoneyLog:1000,01819
	tNjThPk_ScoreReward["Other"][4][4]["LogId"] = 12001985
	tNjThPk_ScoreReward["Other"][4][4]["CostEMoney"] = {}
	tNjThPk_ScoreReward["Other"][4][4]["CostEMoney"]["Value"] = 160 -- 消耗天石
	tNjThPk_ScoreReward["Other"][4][4]["CostEMoney"]["EmoneyLog"] = "1000	1819"
	tNjThPk_ScoreReward["Other"][4][4]["RewardItem"] = {}
	tNjThPk_ScoreReward["Other"][4][4]["RewardItem"][1] = {}
	tNjThPk_ScoreReward["Other"][4][4]["RewardItem"][1]["Id"] = 3009002 -- 晶莹星陨石[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石
	tNjThPk_ScoreReward["Other"][4][4]["RewardItem"][1]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的晶莹星陨石*2
	tNjThPk_ScoreReward["Other"][4][4]["RewardEffect"] = {}
	tNjThPk_ScoreReward["Other"][4][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPk_ScoreReward["Other"][4][4]["RewardEffect"]["Effect"] = "angelwing"


	tNjThPk_ScoreReward["Other"][5] = {}
	-- ===非忍者4000分
	-- ===索引:tNjThPk_ScoreReward["Other"][5][1]
	-- ===
	-- ===
	tNjThPk_ScoreReward["Other"][5][1] = {}
	tNjThPk_ScoreReward["Other"][5][1]["LogId"] = 12001985
	tNjThPk_ScoreReward["Other"][5][1]["RewardItem"] = {}
	tNjThPk_ScoreReward["Other"][5][1]["RewardItem"][1] = {}
	tNjThPk_ScoreReward["Other"][5][1]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹赠*100
	tNjThPk_ScoreReward["Other"][5][1]["RewardItem"][1]["Attr"] = "0 100 3" -- 万能神纹精粹（赠）*100
	tNjThPk_ScoreReward["Other"][5][1]["RewardEffect"] = {}
	tNjThPk_ScoreReward["Other"][5][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPk_ScoreReward["Other"][5][1]["RewardEffect"]["Effect"] = "angelwing"


	tNjThPk_ScoreReward["Other"][5][2] = {}
	-- ===非忍者4000分
	-- ===索引:tNjThPk_ScoreReward["Other"][5][2]
	-- ===消耗金币:18000000
	-- ===
	tNjThPk_ScoreReward["Other"][5][2]["LogId"] = 12001985
	tNjThPk_ScoreReward["Other"][5][2]["CostEMoneyMono"] = {}
	tNjThPk_ScoreReward["Other"][5][2]["CostEMoneyMono"]["Value"] = 720 -- 赠点
	tNjThPk_ScoreReward["Other"][5][2]["CostEMoneyMono"]["EmoneyLog"] = "1000	1894"
	tNjThPk_ScoreReward["Other"][5][2]["RewardItem"] = {}
	tNjThPk_ScoreReward["Other"][5][2]["RewardItem"][1] = {}
	tNjThPk_ScoreReward["Other"][5][2]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹赠*200
	tNjThPk_ScoreReward["Other"][5][2]["RewardItem"][1]["Attr"] = "0 200 3" -- 万能神纹精粹（赠）*200
	tNjThPk_ScoreReward["Other"][5][2]["RewardEffect"] = {}
	tNjThPk_ScoreReward["Other"][5][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPk_ScoreReward["Other"][5][2]["RewardEffect"]["Effect"] = "angelwing"


	tNjThPk_ScoreReward["Other"][5][3] = {}
	-- ===非忍者4000分
	-- ===索引:tNjThPk_ScoreReward["Other"][5][3]
	-- ===删除:4200005,3
	-- ===
	tNjThPk_ScoreReward["Other"][5][3]["LogId"] = 12001985
	tNjThPk_ScoreReward["Other"][5][3]["DeleteItem"] = {}
	tNjThPk_ScoreReward["Other"][5][3]["DeleteItem"][1] = {}
	tNjThPk_ScoreReward["Other"][5][3]["DeleteItem"][1]["Id"] = 4200005 -- 【库】5阶灵珠[属性:72]
	tNjThPk_ScoreReward["Other"][5][3]["DeleteItem"][1]["ItemNum"] = 3
	tNjThPk_ScoreReward["Other"][5][3]["DeleteItem"][1]["PreciousType"] = 357 -- =351//重铸活动消耗=352//融合活动消耗=353//冶炼活动消耗=354//灵珠塔活动消耗=355//龙冢试炼消耗=356//熔炼炉消耗=357//其他LUA消耗
	tNjThPk_ScoreReward["Other"][5][3]["RewardItem"] = {}
	tNjThPk_ScoreReward["Other"][5][3]["RewardItem"][1] = {}
	tNjThPk_ScoreReward["Other"][5][3]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹赠*200
	tNjThPk_ScoreReward["Other"][5][3]["RewardItem"][1]["Attr"] = "0 200 3" -- 万能神纹精粹（赠）*200
	tNjThPk_ScoreReward["Other"][5][3]["RewardEffect"] = {}
	tNjThPk_ScoreReward["Other"][5][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPk_ScoreReward["Other"][5][3]["RewardEffect"]["Effect"] = "angelwing"


	tNjThPk_ScoreReward["Other"][5][4] = {}
	-- ===非忍者4000分
	-- ===索引:tNjThPk_ScoreReward["Other"][5][4]
	-- ===删除:4200005,1
	-- ===消耗天石:240
	-- ===NewEmoneyLog:1000,01819
	tNjThPk_ScoreReward["Other"][5][4]["LogId"] = 12001985
	tNjThPk_ScoreReward["Other"][5][4]["DeleteItem"] = {}
	tNjThPk_ScoreReward["Other"][5][4]["DeleteItem"][1] = {}
	tNjThPk_ScoreReward["Other"][5][4]["DeleteItem"][1]["Id"] = 4200005 -- 【库】5阶灵珠[属性:72]
	tNjThPk_ScoreReward["Other"][5][4]["DeleteItem"][1]["PreciousType"] = 357 -- =351//重铸活动消耗=352//融合活动消耗=353//冶炼活动消耗=354//灵珠塔活动消耗=355//龙冢试炼消耗=356//熔炼炉消耗=357//其他LUA消耗
	tNjThPk_ScoreReward["Other"][5][4]["CostEMoney"] = {}
	tNjThPk_ScoreReward["Other"][5][4]["CostEMoney"]["Value"] = 240 -- 消耗天石
	tNjThPk_ScoreReward["Other"][5][4]["CostEMoney"]["EmoneyLog"] = "1000	1819"
	tNjThPk_ScoreReward["Other"][5][4]["RewardItem"] = {}
	tNjThPk_ScoreReward["Other"][5][4]["RewardItem"][1] = {}
	tNjThPk_ScoreReward["Other"][5][4]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹赠*200
	tNjThPk_ScoreReward["Other"][5][4]["RewardItem"][1]["Attr"] = "0 200 3" -- 万能神纹精粹（赠）*200
	tNjThPk_ScoreReward["Other"][5][4]["RewardEffect"] = {}
	tNjThPk_ScoreReward["Other"][5][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPk_ScoreReward["Other"][5][4]["RewardEffect"]["Effect"] = "angelwing"


	tNjThPk_ScoreReward["Other"][6] = {}
	-- ===非忍者6000分
	-- ===索引:tNjThPk_ScoreReward["Other"][6][1]
	-- ===
	-- ===
	tNjThPk_ScoreReward["Other"][6][1] = {}
	tNjThPk_ScoreReward["Other"][6][1]["LogId"] = 12001985
	tNjThPk_ScoreReward["Other"][6][1]["RewardItem"] = {}
	tNjThPk_ScoreReward["Other"][6][1]["RewardItem"][1] = {}
	tNjThPk_ScoreReward["Other"][6][1]["RewardItem"][1]["Id"] = 3009002 -- 晶莹星陨石[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石
	tNjThPk_ScoreReward["Other"][6][1]["RewardItem"][1]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的晶莹星陨石*2
	tNjThPk_ScoreReward["Other"][6][1]["RewardEffect"] = {}
	tNjThPk_ScoreReward["Other"][6][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPk_ScoreReward["Other"][6][1]["RewardEffect"]["Effect"] = "angelwing"


	tNjThPk_ScoreReward["Other"][6][2] = {}
	-- ===非忍者6000分
	-- ===索引:tNjThPk_ScoreReward["Other"][6][2]
	-- ===消耗金币:30000000
	-- ===
	tNjThPk_ScoreReward["Other"][6][2]["LogId"] = 12001985
	tNjThPk_ScoreReward["Other"][6][2]["CostEMoneyMono"] = {}
	tNjThPk_ScoreReward["Other"][6][2]["CostEMoneyMono"]["Value"] = 960 -- 赠点
	tNjThPk_ScoreReward["Other"][6][2]["CostEMoneyMono"]["EmoneyLog"] = "1000	1894"
	tNjThPk_ScoreReward["Other"][6][2]["RewardItem"] = {}
	tNjThPk_ScoreReward["Other"][6][2]["RewardItem"][1] = {}
	tNjThPk_ScoreReward["Other"][6][2]["RewardItem"][1]["Id"] = 3009002 -- 晶莹星陨石[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石
	tNjThPk_ScoreReward["Other"][6][2]["RewardItem"][1]["Attr"] = "0 4 0 2880 1" -- 2天时效(激活)的晶莹星陨石*4
	tNjThPk_ScoreReward["Other"][6][2]["RewardEffect"] = {}
	tNjThPk_ScoreReward["Other"][6][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPk_ScoreReward["Other"][6][2]["RewardEffect"]["Effect"] = "angelwing"


	tNjThPk_ScoreReward["Other"][6][3] = {}
	-- ===非忍者6000分
	-- ===索引:tNjThPk_ScoreReward["Other"][6][3]
	-- ===删除:4200007,1
	-- ===
	tNjThPk_ScoreReward["Other"][6][3]["LogId"] = 12001985
	tNjThPk_ScoreReward["Other"][6][3]["DeleteItem"] = {}
	tNjThPk_ScoreReward["Other"][6][3]["DeleteItem"][1] = {}
	tNjThPk_ScoreReward["Other"][6][3]["DeleteItem"][1]["Id"] = 4200007 -- 【库】7阶灵珠[属性:72]
	tNjThPk_ScoreReward["Other"][6][3]["DeleteItem"][1]["PreciousType"] = 357 -- =351//重铸活动消耗=352//融合活动消耗=353//冶炼活动消耗=354//灵珠塔活动消耗=355//龙冢试炼消耗=356//熔炼炉消耗=357//其他LUA消耗
	tNjThPk_ScoreReward["Other"][6][3]["RewardItem"] = {}
	tNjThPk_ScoreReward["Other"][6][3]["RewardItem"][1] = {}
	tNjThPk_ScoreReward["Other"][6][3]["RewardItem"][1]["Id"] = 3009002 -- 晶莹星陨石[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石
	tNjThPk_ScoreReward["Other"][6][3]["RewardItem"][1]["Attr"] = "0 4 0 2880 1" -- 2天时效(激活)的晶莹星陨石*4
	tNjThPk_ScoreReward["Other"][6][3]["RewardEffect"] = {}
	tNjThPk_ScoreReward["Other"][6][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPk_ScoreReward["Other"][6][3]["RewardEffect"]["Effect"] = "angelwing"


	tNjThPk_ScoreReward["Other"][6][4] = {}
	-- ===非忍者6000分
	-- ===索引:tNjThPk_ScoreReward["Other"][6][4]
	-- ===删除:4200005,1
	-- ===消耗天石:320
	-- ===NewEmoneyLog:1000,01819
	tNjThPk_ScoreReward["Other"][6][4]["LogId"] = 12001985
	tNjThPk_ScoreReward["Other"][6][4]["DeleteItem"] = {}
	tNjThPk_ScoreReward["Other"][6][4]["DeleteItem"][1] = {}
	tNjThPk_ScoreReward["Other"][6][4]["DeleteItem"][1]["Id"] = 4200005 -- 【库】5阶灵珠[属性:72]
	tNjThPk_ScoreReward["Other"][6][4]["DeleteItem"][1]["PreciousType"] = 357 -- =351//重铸活动消耗=352//融合活动消耗=353//冶炼活动消耗=354//灵珠塔活动消耗=355//龙冢试炼消耗=356//熔炼炉消耗=357//其他LUA消耗
	tNjThPk_ScoreReward["Other"][6][4]["CostEMoney"] = {}
	tNjThPk_ScoreReward["Other"][6][4]["CostEMoney"]["Value"] = 320 -- 消耗天石
	tNjThPk_ScoreReward["Other"][6][4]["CostEMoney"]["EmoneyLog"] = "1000	1819"
	tNjThPk_ScoreReward["Other"][6][4]["RewardItem"] = {}
	tNjThPk_ScoreReward["Other"][6][4]["RewardItem"][1] = {}
	tNjThPk_ScoreReward["Other"][6][4]["RewardItem"][1]["Id"] = 3009002 -- 晶莹星陨石[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石
	tNjThPk_ScoreReward["Other"][6][4]["RewardItem"][1]["Attr"] = "0 4 0 2880 1" -- 2天时效(激活)的晶莹星陨石*4
	tNjThPk_ScoreReward["Other"][6][4]["RewardEffect"] = {}
	tNjThPk_ScoreReward["Other"][6][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPk_ScoreReward["Other"][6][4]["RewardEffect"]["Effect"] = "angelwing"


	tNjThPk_ScoreReward["Other"][7] = {}
	-- ===非忍者8000分
	-- ===索引:tNjThPk_ScoreReward["Other"][7][1]
	-- ===
	-- ===
	tNjThPk_ScoreReward["Other"][7][1] = {}
	tNjThPk_ScoreReward["Other"][7][1]["LogId"] = 12001985
	tNjThPk_ScoreReward["Other"][7][1]["RewardStrengthValue"] = {}
	tNjThPk_ScoreReward["Other"][7][1]["RewardStrengthValue"]["Value"] = 8000 -- 气力值, 【需求】8000点气力值
	tNjThPk_ScoreReward["Other"][7][1]["RewardEffect"] = {}
	tNjThPk_ScoreReward["Other"][7][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPk_ScoreReward["Other"][7][1]["RewardEffect"]["Effect"] = "angelwing"


	tNjThPk_ScoreReward["Other"][7][2] = {}
	-- ===非忍者8000分
	-- ===索引:tNjThPk_ScoreReward["Other"][7][2]
	-- ===消耗金币:48000000
	-- ===
	tNjThPk_ScoreReward["Other"][7][2]["LogId"] = 12001985
	tNjThPk_ScoreReward["Other"][7][2]["CostEMoneyMono"] = {}
	tNjThPk_ScoreReward["Other"][7][2]["CostEMoneyMono"]["Value"] = 1920 -- 赠点
	tNjThPk_ScoreReward["Other"][7][2]["CostEMoneyMono"]["EmoneyLog"] = "1000	1894"
	tNjThPk_ScoreReward["Other"][7][2]["RewardStrengthValue"] = {}
	tNjThPk_ScoreReward["Other"][7][2]["RewardStrengthValue"]["Value"] = 16000 -- 气力值, 【需求】气力值
	tNjThPk_ScoreReward["Other"][7][2]["RewardEffect"] = {}
	tNjThPk_ScoreReward["Other"][7][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPk_ScoreReward["Other"][7][2]["RewardEffect"]["Effect"] = "angelwing"


	tNjThPk_ScoreReward["Other"][7][3] = {}
	-- ===非忍者8000分
	-- ===索引:tNjThPk_ScoreReward["Other"][7][3]
	-- ===删除:4200008,1
	-- ===
	tNjThPk_ScoreReward["Other"][7][3]["LogId"] = 12001985
	tNjThPk_ScoreReward["Other"][7][3]["DeleteItem"] = {}
	tNjThPk_ScoreReward["Other"][7][3]["DeleteItem"][1] = {}
	tNjThPk_ScoreReward["Other"][7][3]["DeleteItem"][1]["Id"] = 4200008 -- 【库】8阶灵珠[属性:72]
	tNjThPk_ScoreReward["Other"][7][3]["DeleteItem"][1]["PreciousType"] = 357 -- =351//重铸活动消耗=352//融合活动消耗=353//冶炼活动消耗=354//灵珠塔活动消耗=355//龙冢试炼消耗=356//熔炼炉消耗=357//其他LUA消耗
	tNjThPk_ScoreReward["Other"][7][3]["RewardStrengthValue"] = {}
	tNjThPk_ScoreReward["Other"][7][3]["RewardStrengthValue"]["Value"] = 16000 -- 气力值, 【需求】气力值
	tNjThPk_ScoreReward["Other"][7][3]["RewardEffect"] = {}
	tNjThPk_ScoreReward["Other"][7][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPk_ScoreReward["Other"][7][3]["RewardEffect"]["Effect"] = "angelwing"


	tNjThPk_ScoreReward["Other"][7][4] = {}
	-- ===非忍者8000分
	-- ===索引:tNjThPk_ScoreReward["Other"][7][4]
	-- ===消耗天石:320
	-- ===NewEmoneyLog:1000,01819
	tNjThPk_ScoreReward["Other"][7][4]["LogId"] = 12001985
	tNjThPk_ScoreReward["Other"][7][4]["CostEMoney"] = {}
	tNjThPk_ScoreReward["Other"][7][4]["CostEMoney"]["Value"] = 320 -- 消耗天石
	tNjThPk_ScoreReward["Other"][7][4]["CostEMoney"]["EmoneyLog"] = "1000	1819"
	tNjThPk_ScoreReward["Other"][7][4]["RewardStrengthValue"] = {}
	tNjThPk_ScoreReward["Other"][7][4]["RewardStrengthValue"]["Value"] = 16000 -- 气力值, 【需求】气力值
	tNjThPk_ScoreReward["Other"][7][4]["RewardEffect"] = {}
	tNjThPk_ScoreReward["Other"][7][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPk_ScoreReward["Other"][7][4]["RewardEffect"]["Effect"] = "angelwing"


	tNjThPk_ScoreReward["Other"][8] = {}
	-- ===非忍者8000分
	-- ===索引:tNjThPk_ScoreReward["Other"][8][1]
	-- ===
	-- ===
	tNjThPk_ScoreReward["Other"][8][1] = {}
	tNjThPk_ScoreReward["Other"][8][1]["LogId"] = 12001985
	tNjThPk_ScoreReward["Other"][8][1]["RewardItem"] = {}
	tNjThPk_ScoreReward["Other"][8][1]["RewardItem"][1] = {}
	tNjThPk_ScoreReward["Other"][8][1]["RewardItem"][1]["Id"] = 3319013 -- (+1)稀有黄色神纹随机包(赠)[3319013][属性:9][叠加:0][金币:0], 【表格】3319013
	tNjThPk_ScoreReward["Other"][8][1]["RewardItem"][1]["Attr"] = "0 1" -- (+1)稀有黄色神纹随机包(赠)*1
	tNjThPk_ScoreReward["Other"][8][1]["RewardEffect"] = {}
	tNjThPk_ScoreReward["Other"][8][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPk_ScoreReward["Other"][8][1]["RewardEffect"]["Effect"] = "angelwing"


	tNjThPk_ScoreReward["Other"][8][2] = {}
	-- ===非忍者8000分
	-- ===索引:tNjThPk_ScoreReward["Other"][8][2]
	-- ===消耗金币:60000000
	-- ===
	tNjThPk_ScoreReward["Other"][8][2]["LogId"] = 12001985
	tNjThPk_ScoreReward["Other"][8][2]["CostEMoneyMono"] = {}
	tNjThPk_ScoreReward["Other"][8][2]["CostEMoneyMono"]["Value"] = 1920 -- 赠点
	tNjThPk_ScoreReward["Other"][8][2]["CostEMoneyMono"]["EmoneyLog"] = "1000	1894"
	tNjThPk_ScoreReward["Other"][8][2]["RewardItem"] = {}
	tNjThPk_ScoreReward["Other"][8][2]["RewardItem"][1] = {}
	tNjThPk_ScoreReward["Other"][8][2]["RewardItem"][1]["Id"] = 3319013 -- (+1)稀有黄色神纹随机包(赠)[3319013][属性:9][叠加:0][金币:0], 【表格】3319013
	tNjThPk_ScoreReward["Other"][8][2]["RewardItem"][1]["Attr"] = "0 2" -- (+1)稀有黄色神纹随机包(赠)*2
	tNjThPk_ScoreReward["Other"][8][2]["RewardEffect"] = {}
	tNjThPk_ScoreReward["Other"][8][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPk_ScoreReward["Other"][8][2]["RewardEffect"]["Effect"] = "angelwing"


	tNjThPk_ScoreReward["Other"][8][3] = {}
	-- ===非忍者8000分
	-- ===索引:tNjThPk_ScoreReward["Other"][8][3]
	-- ===删除:4200008,1
	-- ===
	tNjThPk_ScoreReward["Other"][8][3]["LogId"] = 12001985
	tNjThPk_ScoreReward["Other"][8][3]["DeleteItem"] = {}
	tNjThPk_ScoreReward["Other"][8][3]["DeleteItem"][1] = {}
	tNjThPk_ScoreReward["Other"][8][3]["DeleteItem"][1]["Id"] = 4200008 -- 【库】8阶灵珠[属性:72]
	tNjThPk_ScoreReward["Other"][8][3]["DeleteItem"][1]["PreciousType"] = 357 -- =351//重铸活动消耗=352//融合活动消耗=353//冶炼活动消耗=354//灵珠塔活动消耗=355//龙冢试炼消耗=356//熔炼炉消耗=357//其他LUA消耗
	tNjThPk_ScoreReward["Other"][8][3]["RewardItem"] = {}
	tNjThPk_ScoreReward["Other"][8][3]["RewardItem"][1] = {}
	tNjThPk_ScoreReward["Other"][8][3]["RewardItem"][1]["Id"] = 3319013 -- (+1)稀有黄色神纹随机包(赠)[3319013][属性:9][叠加:0][金币:0], 【表格】3319013
	tNjThPk_ScoreReward["Other"][8][3]["RewardItem"][1]["Attr"] = "0 2" -- (+1)稀有黄色神纹随机包(赠)*2
	tNjThPk_ScoreReward["Other"][8][3]["RewardEffect"] = {}
	tNjThPk_ScoreReward["Other"][8][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPk_ScoreReward["Other"][8][3]["RewardEffect"]["Effect"] = "angelwing"


	tNjThPk_ScoreReward["Other"][8][4] = {}
	-- ===非忍者8000分
	-- ===索引:tNjThPk_ScoreReward["Other"][8][4]
	-- ===消耗天石:640
	-- ===NewEmoneyLog:1000,01819
	tNjThPk_ScoreReward["Other"][8][4]["LogId"] = 12001985
	tNjThPk_ScoreReward["Other"][8][4]["CostEMoney"] = {}
	tNjThPk_ScoreReward["Other"][8][4]["CostEMoney"]["Value"] = 640 -- 消耗天石
	tNjThPk_ScoreReward["Other"][8][4]["CostEMoney"]["EmoneyLog"] = "1000	1819"
	tNjThPk_ScoreReward["Other"][8][4]["RewardItem"] = {}
	tNjThPk_ScoreReward["Other"][8][4]["RewardItem"][1] = {}
	tNjThPk_ScoreReward["Other"][8][4]["RewardItem"][1]["Id"] = 3319013 -- (+1)稀有黄色神纹随机包(赠)[3319013][属性:9][叠加:0][金币:0], 【表格】3319013
	tNjThPk_ScoreReward["Other"][8][4]["RewardItem"][1]["Attr"] = "0 2" -- (+1)稀有黄色神纹随机包(赠)*2
	tNjThPk_ScoreReward["Other"][8][4]["RewardEffect"] = {}
	tNjThPk_ScoreReward["Other"][8][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPk_ScoreReward["Other"][8][4]["RewardEffect"]["Effect"] = "angelwing"


	tNjThPk_ScoreReward["Ninja"] = {}
	-- ===忍者500积分奖励
	-- ===索引:tNjThPk_ScoreReward["Ninja"][1][1]
	-- ===
	-- ===
	tNjThPk_ScoreReward["Ninja"][1] = {}
	tNjThPk_ScoreReward["Ninja"][1][1] = {}
	tNjThPk_ScoreReward["Ninja"][1][1]["LogId"] = 12001985
	tNjThPk_ScoreReward["Ninja"][1][1]["RewardItem"] = {}
	tNjThPk_ScoreReward["Ninja"][1][1]["RewardItem"][1] = {}
	tNjThPk_ScoreReward["Ninja"][1][1]["RewardItem"][1]["Id"] = 3329979 -- 秘术精华[3329979][属性:9][叠加:10000][金币:0], 【表格】法印精华*10
	tNjThPk_ScoreReward["Ninja"][1][1]["RewardItem"][1]["Attr"] = "0 10" -- 秘术精华*10
	tNjThPk_ScoreReward["Ninja"][1][1]["RewardEffect"] = {}
	tNjThPk_ScoreReward["Ninja"][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPk_ScoreReward["Ninja"][1][1]["RewardEffect"]["Effect"] = "angelwing"


	tNjThPk_ScoreReward["Ninja"][1][2] = {}
	-- ===非忍者8000分
	-- ===索引:tNjThPk_ScoreReward["Ninja"][1][2]
	-- ===消耗金币:6000000
	-- ===
	tNjThPk_ScoreReward["Ninja"][1][2]["LogId"] = 12001985
	tNjThPk_ScoreReward["Ninja"][1][2]["CostEMoneyMono"] = {}
	tNjThPk_ScoreReward["Ninja"][1][2]["CostEMoneyMono"]["Value"] = 240 -- 赠点
	tNjThPk_ScoreReward["Ninja"][1][2]["CostEMoneyMono"]["EmoneyLog"] = "1000	1894"
	tNjThPk_ScoreReward["Ninja"][1][2]["RewardItem"] = {}
	tNjThPk_ScoreReward["Ninja"][1][2]["RewardItem"][1] = {}
	tNjThPk_ScoreReward["Ninja"][1][2]["RewardItem"][1]["Id"] = 3329979 -- 秘术精华[3329979][属性:9][叠加:10000][金币:0], 【表格】法印精华*20
	tNjThPk_ScoreReward["Ninja"][1][2]["RewardItem"][1]["Attr"] = "0 20" -- 秘术精华*20（[错误]物品数量超10个）
	tNjThPk_ScoreReward["Ninja"][1][2]["RewardEffect"] = {}
	tNjThPk_ScoreReward["Ninja"][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPk_ScoreReward["Ninja"][1][2]["RewardEffect"]["Effect"] = "angelwing"


	tNjThPk_ScoreReward["Ninja"][1][3] = {}
	-- ===非忍者8000分
	-- ===索引:tNjThPk_ScoreReward["Ninja"][1][3]
	-- ===删除:4200005,1
	-- ===
	tNjThPk_ScoreReward["Ninja"][1][3]["LogId"] = 12001985
	tNjThPk_ScoreReward["Ninja"][1][3]["DeleteItem"] = {}
	tNjThPk_ScoreReward["Ninja"][1][3]["DeleteItem"][1] = {}
	tNjThPk_ScoreReward["Ninja"][1][3]["DeleteItem"][1]["Id"] = 4200005 -- 【库】5阶灵珠[属性:72]
	tNjThPk_ScoreReward["Ninja"][1][3]["DeleteItem"][1]["PreciousType"] = 357 -- =351//重铸活动消耗=352//融合活动消耗=353//冶炼活动消耗=354//灵珠塔活动消耗=355//龙冢试炼消耗=356//熔炼炉消耗=357//其他LUA消耗
	tNjThPk_ScoreReward["Ninja"][1][3]["RewardItem"] = {}
	tNjThPk_ScoreReward["Ninja"][1][3]["RewardItem"][1] = {}
	tNjThPk_ScoreReward["Ninja"][1][3]["RewardItem"][1]["Id"] = 3329979 -- 秘术精华[3329979][属性:9][叠加:10000][金币:0], 【表格】法印精华*20
	tNjThPk_ScoreReward["Ninja"][1][3]["RewardItem"][1]["Attr"] = "0 20" -- 秘术精华*20（[错误]物品数量超10个）
	tNjThPk_ScoreReward["Ninja"][1][3]["RewardEffect"] = {}
	tNjThPk_ScoreReward["Ninja"][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPk_ScoreReward["Ninja"][1][3]["RewardEffect"]["Effect"] = "angelwing"


	tNjThPk_ScoreReward["Ninja"][1][4] = {}
	-- ===非忍者8000分
	-- ===索引:tNjThPk_ScoreReward["Ninja"][1][4]
	-- ===消耗天石:80
	-- ===NewEmoneyLog:1000,01819
	tNjThPk_ScoreReward["Ninja"][1][4]["LogId"] = 12001985
	tNjThPk_ScoreReward["Ninja"][1][4]["CostEMoney"] = {}
	tNjThPk_ScoreReward["Ninja"][1][4]["CostEMoney"]["Value"] = 80 -- 消耗天石
	tNjThPk_ScoreReward["Ninja"][1][4]["CostEMoney"]["EmoneyLog"] = "1000	1819"
	tNjThPk_ScoreReward["Ninja"][1][4]["RewardItem"] = {}
	tNjThPk_ScoreReward["Ninja"][1][4]["RewardItem"][1] = {}
	tNjThPk_ScoreReward["Ninja"][1][4]["RewardItem"][1]["Id"] = 3329979 -- 秘术精华[3329979][属性:9][叠加:10000][金币:0], 【表格】法印精华*20
	tNjThPk_ScoreReward["Ninja"][1][4]["RewardItem"][1]["Attr"] = "0 20" -- 秘术精华*20（[错误]物品数量超10个）
	tNjThPk_ScoreReward["Ninja"][1][4]["RewardEffect"] = {}
	tNjThPk_ScoreReward["Ninja"][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPk_ScoreReward["Ninja"][1][4]["RewardEffect"]["Effect"] = "angelwing"


	tNjThPk_ScoreReward["Ninja"][2] = {}
	-- ===
	-- ===索引:tNjThPk_ScoreReward["Ninja"][2][1]
	-- ===
	-- ===
	tNjThPk_ScoreReward["Ninja"][2][1] = {}
	tNjThPk_ScoreReward["Ninja"][2][1]["LogId"] = 12001985
	tNjThPk_ScoreReward["Ninja"][2][1]["RewardItem"] = {}
	tNjThPk_ScoreReward["Ninja"][2][1]["RewardItem"][1] = {}
	tNjThPk_ScoreReward["Ninja"][2][1]["RewardItem"][1]["Id"] = 3327202 -- 法印宝盒碎片[3327202][属性:9][叠加:10000][金币:0], 【表格】3327202
	tNjThPk_ScoreReward["Ninja"][2][1]["RewardItem"][1]["Attr"] = "0 5" -- 法印宝盒碎片*5
	tNjThPk_ScoreReward["Ninja"][2][1]["RewardEffect"] = {}
	tNjThPk_ScoreReward["Ninja"][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPk_ScoreReward["Ninja"][2][1]["RewardEffect"]["Effect"] = "angelwing"


	tNjThPk_ScoreReward["Ninja"][2][2] = {}
	-- ===
	-- ===索引:tNjThPk_ScoreReward["Ninja"][2][2]
	-- ===消耗金币:9000000
	-- ===
	tNjThPk_ScoreReward["Ninja"][2][2]["LogId"] = 12001985
	tNjThPk_ScoreReward["Ninja"][2][2]["CostEMoneyMono"] = {}
	tNjThPk_ScoreReward["Ninja"][2][2]["CostEMoneyMono"]["Value"] = 360 -- 赠点
	tNjThPk_ScoreReward["Ninja"][2][2]["CostEMoneyMono"]["EmoneyLog"] = "1000	1894"
	tNjThPk_ScoreReward["Ninja"][2][2]["RewardItem"] = {}
	tNjThPk_ScoreReward["Ninja"][2][2]["RewardItem"][1] = {}
	tNjThPk_ScoreReward["Ninja"][2][2]["RewardItem"][1]["Id"] = 3327202 -- 法印宝盒碎片[3327202][属性:9][叠加:10000][金币:0], 【表格】3327202
	tNjThPk_ScoreReward["Ninja"][2][2]["RewardItem"][1]["Attr"] = "0 10" -- 法印宝盒碎片*10
	tNjThPk_ScoreReward["Ninja"][2][2]["RewardEffect"] = {}
	tNjThPk_ScoreReward["Ninja"][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPk_ScoreReward["Ninja"][2][2]["RewardEffect"]["Effect"] = "angelwing"


	tNjThPk_ScoreReward["Ninja"][2][3] = {}
	-- ===
	-- ===索引:tNjThPk_ScoreReward["Ninja"][2][3]
	-- ===删除:4200004,3
	-- ===
	tNjThPk_ScoreReward["Ninja"][2][3]["LogId"] = 12001985
	tNjThPk_ScoreReward["Ninja"][2][3]["DeleteItem"] = {}
	tNjThPk_ScoreReward["Ninja"][2][3]["DeleteItem"][1] = {}
	tNjThPk_ScoreReward["Ninja"][2][3]["DeleteItem"][1]["Id"] = 4200004 -- 【库】4阶灵珠[属性:72]
	tNjThPk_ScoreReward["Ninja"][2][3]["DeleteItem"][1]["ItemNum"] = 3
	tNjThPk_ScoreReward["Ninja"][2][3]["DeleteItem"][1]["PreciousType"] = 357 -- =351//重铸活动消耗=352//融合活动消耗=353//冶炼活动消耗=354//灵珠塔活动消耗=355//龙冢试炼消耗=356//熔炼炉消耗=357//其他LUA消耗
	tNjThPk_ScoreReward["Ninja"][2][3]["RewardItem"] = {}
	tNjThPk_ScoreReward["Ninja"][2][3]["RewardItem"][1] = {}
	tNjThPk_ScoreReward["Ninja"][2][3]["RewardItem"][1]["Id"] = 3327202 -- 法印宝盒碎片[3327202][属性:9][叠加:10000][金币:0], 【表格】3327202
	tNjThPk_ScoreReward["Ninja"][2][3]["RewardItem"][1]["Attr"] = "0 10" -- 法印宝盒碎片*10
	tNjThPk_ScoreReward["Ninja"][2][3]["RewardEffect"] = {}
	tNjThPk_ScoreReward["Ninja"][2][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPk_ScoreReward["Ninja"][2][3]["RewardEffect"]["Effect"] = "angelwing"


	tNjThPk_ScoreReward["Ninja"][2][4] = {}
	-- ===
	-- ===索引:tNjThPk_ScoreReward["Ninja"][2][4]
	-- ===删除:4200004,2
	-- ===消耗天石:120
	-- ===NewEmoneyLog:1000,01819
	tNjThPk_ScoreReward["Ninja"][2][4]["LogId"] = 12001985
	tNjThPk_ScoreReward["Ninja"][2][4]["DeleteItem"] = {}
	tNjThPk_ScoreReward["Ninja"][2][4]["DeleteItem"][1] = {}
	tNjThPk_ScoreReward["Ninja"][2][4]["DeleteItem"][1]["Id"] = 4200004 -- 【库】4阶灵珠[属性:72]
	tNjThPk_ScoreReward["Ninja"][2][4]["DeleteItem"][1]["ItemNum"] = 2
	tNjThPk_ScoreReward["Ninja"][2][4]["DeleteItem"][1]["PreciousType"] = 357 -- =351//重铸活动消耗=352//融合活动消耗=353//冶炼活动消耗=354//灵珠塔活动消耗=355//龙冢试炼消耗=356//熔炼炉消耗=357//其他LUA消耗
	tNjThPk_ScoreReward["Ninja"][2][4]["CostEMoney"] = {}
	tNjThPk_ScoreReward["Ninja"][2][4]["CostEMoney"]["Value"] = 120 -- 消耗天石
	tNjThPk_ScoreReward["Ninja"][2][4]["CostEMoney"]["EmoneyLog"] = "1000	1819"
	tNjThPk_ScoreReward["Ninja"][2][4]["RewardItem"] = {}
	tNjThPk_ScoreReward["Ninja"][2][4]["RewardItem"][1] = {}
	tNjThPk_ScoreReward["Ninja"][2][4]["RewardItem"][1]["Id"] = 3327202 -- 法印宝盒碎片[3327202][属性:9][叠加:10000][金币:0], 【表格】3327202
	tNjThPk_ScoreReward["Ninja"][2][4]["RewardItem"][1]["Attr"] = "0 10" -- 法印宝盒碎片*10
	tNjThPk_ScoreReward["Ninja"][2][4]["RewardEffect"] = {}
	tNjThPk_ScoreReward["Ninja"][2][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPk_ScoreReward["Ninja"][2][4]["RewardEffect"]["Effect"] = "angelwing"


	tNjThPk_ScoreReward["Ninja"][3] = {}
	-- ===
	-- ===索引:tNjThPk_ScoreReward["Ninja"][3][1]
	-- ===
	-- ===
	tNjThPk_ScoreReward["Ninja"][3][1] = {}
	tNjThPk_ScoreReward["Ninja"][3][1]["LogId"] = 12001985
	tNjThPk_ScoreReward["Ninja"][3][1]["RewardItem"] = {}
	tNjThPk_ScoreReward["Ninja"][3][1]["RewardItem"][1] = {}
	tNjThPk_ScoreReward["Ninja"][3][1]["RewardItem"][1]["Id"] = 3329979 -- 秘术精华[3329979][属性:9][叠加:10000][金币:0], 【表格】3329979
	tNjThPk_ScoreReward["Ninja"][3][1]["RewardItem"][1]["Attr"] = "0 20" -- 秘术精华*20（[错误]物品数量超10个）
	tNjThPk_ScoreReward["Ninja"][3][1]["RewardEffect"] = {}
	tNjThPk_ScoreReward["Ninja"][3][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPk_ScoreReward["Ninja"][3][1]["RewardEffect"]["Effect"] = "angelwing"


	tNjThPk_ScoreReward["Ninja"][3][2] = {}
	-- ===
	-- ===索引:tNjThPk_ScoreReward["Ninja"][3][2]
	-- ===消耗金币:12000000
	-- ===
	tNjThPk_ScoreReward["Ninja"][3][2]["LogId"] = 12001985
	tNjThPk_ScoreReward["Ninja"][3][2]["CostEMoneyMono"] = {}
	tNjThPk_ScoreReward["Ninja"][3][2]["CostEMoneyMono"]["Value"] = 480 -- 赠点
	tNjThPk_ScoreReward["Ninja"][3][2]["CostEMoneyMono"]["EmoneyLog"] = "1000	1894"
	tNjThPk_ScoreReward["Ninja"][3][2]["RewardItem"] = {}
	tNjThPk_ScoreReward["Ninja"][3][2]["RewardItem"][1] = {}
	tNjThPk_ScoreReward["Ninja"][3][2]["RewardItem"][1]["Id"] = 3329979 -- 秘术精华[3329979][属性:9][叠加:10000][金币:0], 【表格】3329979
	tNjThPk_ScoreReward["Ninja"][3][2]["RewardItem"][1]["Attr"] = "0 40" -- 秘术精华*40（[错误]物品数量超10个）
	tNjThPk_ScoreReward["Ninja"][3][2]["RewardEffect"] = {}
	tNjThPk_ScoreReward["Ninja"][3][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPk_ScoreReward["Ninja"][3][2]["RewardEffect"]["Effect"] = "angelwing"


	tNjThPk_ScoreReward["Ninja"][3][3] = {}
	-- ===
	-- ===索引:tNjThPk_ScoreReward["Ninja"][3][3]
	-- ===删除:4200006,1
	-- ===
	tNjThPk_ScoreReward["Ninja"][3][3]["LogId"] = 12001985
	tNjThPk_ScoreReward["Ninja"][3][3]["DeleteItem"] = {}
	tNjThPk_ScoreReward["Ninja"][3][3]["DeleteItem"][1] = {}
	tNjThPk_ScoreReward["Ninja"][3][3]["DeleteItem"][1]["Id"] = 4200006 -- 【库】6阶灵珠[属性:72]
	tNjThPk_ScoreReward["Ninja"][3][3]["DeleteItem"][1]["PreciousType"] = 357 -- =351//重铸活动消耗=352//融合活动消耗=353//冶炼活动消耗=354//灵珠塔活动消耗=355//龙冢试炼消耗=356//熔炼炉消耗=357//其他LUA消耗
	tNjThPk_ScoreReward["Ninja"][3][3]["RewardItem"] = {}
	tNjThPk_ScoreReward["Ninja"][3][3]["RewardItem"][1] = {}
	tNjThPk_ScoreReward["Ninja"][3][3]["RewardItem"][1]["Id"] = 3329979 -- 秘术精华[3329979][属性:9][叠加:10000][金币:0], 【表格】3329979
	tNjThPk_ScoreReward["Ninja"][3][3]["RewardItem"][1]["Attr"] = "0 40" -- 秘术精华*40（[错误]物品数量超10个）
	tNjThPk_ScoreReward["Ninja"][3][3]["RewardEffect"] = {}
	tNjThPk_ScoreReward["Ninja"][3][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPk_ScoreReward["Ninja"][3][3]["RewardEffect"]["Effect"] = "angelwing"


	tNjThPk_ScoreReward["Ninja"][3][4] = {}
	-- ===
	-- ===索引:tNjThPk_ScoreReward["Ninja"][3][4]
	-- ===消耗天石:160
	-- ===NewEmoneyLog:1000,01819
	tNjThPk_ScoreReward["Ninja"][3][4]["LogId"] = 12001985
	tNjThPk_ScoreReward["Ninja"][3][4]["CostEMoney"] = {}
	tNjThPk_ScoreReward["Ninja"][3][4]["CostEMoney"]["Value"] = 160 -- 消耗天石
	tNjThPk_ScoreReward["Ninja"][3][4]["CostEMoney"]["EmoneyLog"] = "1000	1819"
	tNjThPk_ScoreReward["Ninja"][3][4]["RewardItem"] = {}
	tNjThPk_ScoreReward["Ninja"][3][4]["RewardItem"][1] = {}
	tNjThPk_ScoreReward["Ninja"][3][4]["RewardItem"][1]["Id"] = 3329979 -- 秘术精华[3329979][属性:9][叠加:10000][金币:0], 【表格】3329979
	tNjThPk_ScoreReward["Ninja"][3][4]["RewardItem"][1]["Attr"] = "0 40" -- 秘术精华*40（[错误]物品数量超10个）
	tNjThPk_ScoreReward["Ninja"][3][4]["RewardEffect"] = {}
	tNjThPk_ScoreReward["Ninja"][3][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPk_ScoreReward["Ninja"][3][4]["RewardEffect"]["Effect"] = "angelwing"


	tNjThPk_ScoreReward["Ninja"][4] = {}
	-- ===
	-- ===索引:tNjThPk_ScoreReward["Ninja"][4][1]
	-- ===
	-- ===
	tNjThPk_ScoreReward["Ninja"][4][1] = {}
	tNjThPk_ScoreReward["Ninja"][4][1]["LogId"] = 12001985
	tNjThPk_ScoreReward["Ninja"][4][1]["RewardItem"] = {}
	tNjThPk_ScoreReward["Ninja"][4][1]["RewardItem"][1] = {}
	tNjThPk_ScoreReward["Ninja"][4][1]["RewardItem"][1]["Id"] = 3330609 -- 轮回莲[3330609][属性:8][叠加:10000][金币:0], 【表格】3330609
	tNjThPk_ScoreReward["Ninja"][4][1]["RewardItem"][1]["Attr"] = "0 5 3" -- 轮回莲*5
	tNjThPk_ScoreReward["Ninja"][4][1]["RewardEffect"] = {}
	tNjThPk_ScoreReward["Ninja"][4][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPk_ScoreReward["Ninja"][4][1]["RewardEffect"]["Effect"] = "angelwing"


	tNjThPk_ScoreReward["Ninja"][4][2] = {}
	-- ===
	-- ===索引:tNjThPk_ScoreReward["Ninja"][4][2]
	-- ===消耗金币:15000000
	-- ===
	tNjThPk_ScoreReward["Ninja"][4][2]["LogId"] = 12001985
	tNjThPk_ScoreReward["Ninja"][4][2]["CostEMoneyMono"] = {}
	tNjThPk_ScoreReward["Ninja"][4][2]["CostEMoneyMono"]["Value"] = 480 -- 赠点
	tNjThPk_ScoreReward["Ninja"][4][2]["CostEMoneyMono"]["EmoneyLog"] = "1000	1894"
	tNjThPk_ScoreReward["Ninja"][4][2]["RewardItem"] = {}
	tNjThPk_ScoreReward["Ninja"][4][2]["RewardItem"][1] = {}
	tNjThPk_ScoreReward["Ninja"][4][2]["RewardItem"][1]["Id"] = 3330609 -- 轮回莲[3330609][属性:8][叠加:10000][金币:0], 【表格】3330609
	tNjThPk_ScoreReward["Ninja"][4][2]["RewardItem"][1]["Attr"] = "0 10 3" -- 轮回莲*10
	tNjThPk_ScoreReward["Ninja"][4][2]["RewardEffect"] = {}
	tNjThPk_ScoreReward["Ninja"][4][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPk_ScoreReward["Ninja"][4][2]["RewardEffect"]["Effect"] = "angelwing"


	tNjThPk_ScoreReward["Ninja"][4][3] = {}
	-- ===
	-- ===索引:tNjThPk_ScoreReward["Ninja"][4][3]
	-- ===删除:4200006,1
	-- ===
	tNjThPk_ScoreReward["Ninja"][4][3]["LogId"] = 12001985
	tNjThPk_ScoreReward["Ninja"][4][3]["DeleteItem"] = {}
	tNjThPk_ScoreReward["Ninja"][4][3]["DeleteItem"][1] = {}
	tNjThPk_ScoreReward["Ninja"][4][3]["DeleteItem"][1]["Id"] = 4200006 -- 【库】6阶灵珠[属性:72]
	tNjThPk_ScoreReward["Ninja"][4][3]["DeleteItem"][1]["PreciousType"] = 357 -- =351//重铸活动消耗=352//融合活动消耗=353//冶炼活动消耗=354//灵珠塔活动消耗=355//龙冢试炼消耗=356//熔炼炉消耗=357//其他LUA消耗
	tNjThPk_ScoreReward["Ninja"][4][3]["RewardItem"] = {}
	tNjThPk_ScoreReward["Ninja"][4][3]["RewardItem"][1] = {}
	tNjThPk_ScoreReward["Ninja"][4][3]["RewardItem"][1]["Id"] = 3330609 -- 轮回莲[3330609][属性:8][叠加:10000][金币:0], 【表格】3330609
	tNjThPk_ScoreReward["Ninja"][4][3]["RewardItem"][1]["Attr"] = "0 10 3" -- 轮回莲*10
	tNjThPk_ScoreReward["Ninja"][4][3]["RewardEffect"] = {}
	tNjThPk_ScoreReward["Ninja"][4][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPk_ScoreReward["Ninja"][4][3]["RewardEffect"]["Effect"] = "angelwing"


	tNjThPk_ScoreReward["Ninja"][4][4] = {}
	-- ===
	-- ===索引:tNjThPk_ScoreReward["Ninja"][4][4]
	-- ===消耗天石:160
	-- ===NewEmoneyLog:1000,01819
	tNjThPk_ScoreReward["Ninja"][4][4]["LogId"] = 12001985
	tNjThPk_ScoreReward["Ninja"][4][4]["CostEMoney"] = {}
	tNjThPk_ScoreReward["Ninja"][4][4]["CostEMoney"]["Value"] = 160 -- 消耗天石
	tNjThPk_ScoreReward["Ninja"][4][4]["CostEMoney"]["EmoneyLog"] = "1000	1819"
	tNjThPk_ScoreReward["Ninja"][4][4]["RewardItem"] = {}
	tNjThPk_ScoreReward["Ninja"][4][4]["RewardItem"][1] = {}
	tNjThPk_ScoreReward["Ninja"][4][4]["RewardItem"][1]["Id"] = 3330609 -- 轮回莲[3330609][属性:8][叠加:10000][金币:0], 【表格】3330609
	tNjThPk_ScoreReward["Ninja"][4][4]["RewardItem"][1]["Attr"] = "0 10 3" -- 轮回莲*10
	tNjThPk_ScoreReward["Ninja"][4][4]["RewardEffect"] = {}
	tNjThPk_ScoreReward["Ninja"][4][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPk_ScoreReward["Ninja"][4][4]["RewardEffect"]["Effect"] = "angelwing"


	tNjThPk_ScoreReward["Ninja"][5] = {}
	-- ===
	-- ===索引:tNjThPk_ScoreReward["Ninja"][5][1]
	-- ===
	-- ===
	tNjThPk_ScoreReward["Ninja"][5][1] = {}
	tNjThPk_ScoreReward["Ninja"][5][1]["LogId"] = 12001985
	tNjThPk_ScoreReward["Ninja"][5][1]["RewardItem"] = {}
	tNjThPk_ScoreReward["Ninja"][5][1]["RewardItem"][1] = {}
	tNjThPk_ScoreReward["Ninja"][5][1]["RewardItem"][1]["Id"] = 3329979 -- 秘术精华[3329979][属性:9][叠加:10000][金币:0], 【表格】3329979
	tNjThPk_ScoreReward["Ninja"][5][1]["RewardItem"][1]["Attr"] = "0 30" -- 秘术精华*30（[错误]物品数量超10个）
	tNjThPk_ScoreReward["Ninja"][5][1]["RewardEffect"] = {}
	tNjThPk_ScoreReward["Ninja"][5][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPk_ScoreReward["Ninja"][5][1]["RewardEffect"]["Effect"] = "angelwing"


	tNjThPk_ScoreReward["Ninja"][5][2] = {}
	-- ===
	-- ===索引:tNjThPk_ScoreReward["Ninja"][5][2]
	-- ===消耗金币:18000000
	-- ===
	tNjThPk_ScoreReward["Ninja"][5][2]["LogId"] = 12001985
	tNjThPk_ScoreReward["Ninja"][5][2]["CostEMoneyMono"] = {}
	tNjThPk_ScoreReward["Ninja"][5][2]["CostEMoneyMono"]["Value"] = 720 -- 赠点
	tNjThPk_ScoreReward["Ninja"][5][2]["CostEMoneyMono"]["EmoneyLog"] = "1000	1894"
	tNjThPk_ScoreReward["Ninja"][5][2]["RewardItem"] = {}
	tNjThPk_ScoreReward["Ninja"][5][2]["RewardItem"][1] = {}
	tNjThPk_ScoreReward["Ninja"][5][2]["RewardItem"][1]["Id"] = 3329979 -- 秘术精华[3329979][属性:9][叠加:10000][金币:0], 【表格】3329979
	tNjThPk_ScoreReward["Ninja"][5][2]["RewardItem"][1]["Attr"] = "0 60" -- 秘术精华*60（[错误]物品数量超10个）
	tNjThPk_ScoreReward["Ninja"][5][2]["RewardEffect"] = {}
	tNjThPk_ScoreReward["Ninja"][5][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPk_ScoreReward["Ninja"][5][2]["RewardEffect"]["Effect"] = "angelwing"


	tNjThPk_ScoreReward["Ninja"][5][3] = {}
	-- ===
	-- ===索引:tNjThPk_ScoreReward["Ninja"][5][3]
	-- ===删除:4200005,3
	-- ===
	tNjThPk_ScoreReward["Ninja"][5][3]["LogId"] = 12001985
	tNjThPk_ScoreReward["Ninja"][5][3]["DeleteItem"] = {}
	tNjThPk_ScoreReward["Ninja"][5][3]["DeleteItem"][1] = {}
	tNjThPk_ScoreReward["Ninja"][5][3]["DeleteItem"][1]["Id"] = 4200005 -- 【库】5阶灵珠[属性:72]
	tNjThPk_ScoreReward["Ninja"][5][3]["DeleteItem"][1]["ItemNum"] = 3
	tNjThPk_ScoreReward["Ninja"][5][3]["DeleteItem"][1]["PreciousType"] = 357 -- =351//重铸活动消耗=352//融合活动消耗=353//冶炼活动消耗=354//灵珠塔活动消耗=355//龙冢试炼消耗=356//熔炼炉消耗=357//其他LUA消耗
	tNjThPk_ScoreReward["Ninja"][5][3]["RewardItem"] = {}
	tNjThPk_ScoreReward["Ninja"][5][3]["RewardItem"][1] = {}
	tNjThPk_ScoreReward["Ninja"][5][3]["RewardItem"][1]["Id"] = 3329979 -- 秘术精华[3329979][属性:9][叠加:10000][金币:0], 【表格】3329979
	tNjThPk_ScoreReward["Ninja"][5][3]["RewardItem"][1]["Attr"] = "0 60" -- 秘术精华*60（[错误]物品数量超10个）
	tNjThPk_ScoreReward["Ninja"][5][3]["RewardEffect"] = {}
	tNjThPk_ScoreReward["Ninja"][5][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPk_ScoreReward["Ninja"][5][3]["RewardEffect"]["Effect"] = "angelwing"


	tNjThPk_ScoreReward["Ninja"][5][4] = {}
	-- ===
	-- ===索引:tNjThPk_ScoreReward["Ninja"][5][4]
	-- ===删除:4200005,3
	-- ===消耗天石:240
	-- ===NewEmoneyLog:1000,01819
	tNjThPk_ScoreReward["Ninja"][5][4]["LogId"] = 12001985
	tNjThPk_ScoreReward["Ninja"][5][4]["DeleteItem"] = {}
	tNjThPk_ScoreReward["Ninja"][5][4]["DeleteItem"][1] = {}
	tNjThPk_ScoreReward["Ninja"][5][4]["DeleteItem"][1]["Id"] = 4200005 -- 【库】5阶灵珠[属性:72]
	tNjThPk_ScoreReward["Ninja"][5][4]["DeleteItem"][1]["ItemNum"] = 3
	tNjThPk_ScoreReward["Ninja"][5][4]["DeleteItem"][1]["PreciousType"] = 357 -- =351//重铸活动消耗=352//融合活动消耗=353//冶炼活动消耗=354//灵珠塔活动消耗=355//龙冢试炼消耗=356//熔炼炉消耗=357//其他LUA消耗
	tNjThPk_ScoreReward["Ninja"][5][4]["CostEMoney"] = {}
	tNjThPk_ScoreReward["Ninja"][5][4]["CostEMoney"]["Value"] = 240 -- 消耗天石
	tNjThPk_ScoreReward["Ninja"][5][4]["CostEMoney"]["EmoneyLog"] = "1000	1819"
	tNjThPk_ScoreReward["Ninja"][5][4]["RewardItem"] = {}
	tNjThPk_ScoreReward["Ninja"][5][4]["RewardItem"][1] = {}
	tNjThPk_ScoreReward["Ninja"][5][4]["RewardItem"][1]["Id"] = 3329979 -- 秘术精华[3329979][属性:9][叠加:10000][金币:0], 【表格】3329979
	tNjThPk_ScoreReward["Ninja"][5][4]["RewardItem"][1]["Attr"] = "0 60" -- 秘术精华*60（[错误]物品数量超10个）
	tNjThPk_ScoreReward["Ninja"][5][4]["RewardEffect"] = {}
	tNjThPk_ScoreReward["Ninja"][5][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPk_ScoreReward["Ninja"][5][4]["RewardEffect"]["Effect"] = "angelwing"


	tNjThPk_ScoreReward["Ninja"][6] = {}
	-- ===
	-- ===索引:tNjThPk_ScoreReward["Ninja"][6][1]
	-- ===
	-- ===
	tNjThPk_ScoreReward["Ninja"][6][1] = {}
	tNjThPk_ScoreReward["Ninja"][6][1]["LogId"] = 12001985
	tNjThPk_ScoreReward["Ninja"][6][1]["RewardItem"] = {}
	tNjThPk_ScoreReward["Ninja"][6][1]["RewardItem"][1] = {}
	tNjThPk_ScoreReward["Ninja"][6][1]["RewardItem"][1]["Id"] = 3330609 -- 轮回莲[3330609][属性:8][叠加:10000][金币:0], 【表格】3330609
	tNjThPk_ScoreReward["Ninja"][6][1]["RewardItem"][1]["Attr"] = "0 20 3" -- 轮回莲*20（[错误]物品数量超10个）
	tNjThPk_ScoreReward["Ninja"][6][1]["RewardEffect"] = {}
	tNjThPk_ScoreReward["Ninja"][6][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPk_ScoreReward["Ninja"][6][1]["RewardEffect"]["Effect"] = "angelwing"


	tNjThPk_ScoreReward["Ninja"][6][2] = {}
	-- ===
	-- ===索引:tNjThPk_ScoreReward["Ninja"][6][2]
	-- ===消耗金币:30000000
	-- ===
	tNjThPk_ScoreReward["Ninja"][6][2]["LogId"] = 12001985
	tNjThPk_ScoreReward["Ninja"][6][2]["CostEMoneyMono"] = {}
	tNjThPk_ScoreReward["Ninja"][6][2]["CostEMoneyMono"]["Value"] = 960 -- 赠点
	tNjThPk_ScoreReward["Ninja"][6][2]["CostEMoneyMono"]["EmoneyLog"] = "1000	1894"
	tNjThPk_ScoreReward["Ninja"][6][2]["RewardItem"] = {}
	tNjThPk_ScoreReward["Ninja"][6][2]["RewardItem"][1] = {}
	tNjThPk_ScoreReward["Ninja"][6][2]["RewardItem"][1]["Id"] = 3330609 -- 轮回莲[3330609][属性:8][叠加:10000][金币:0], 【表格】3330609
	tNjThPk_ScoreReward["Ninja"][6][2]["RewardItem"][1]["Attr"] = "0 40 3" -- 轮回莲*40（[错误]物品数量超10个）
	tNjThPk_ScoreReward["Ninja"][6][2]["RewardEffect"] = {}
	tNjThPk_ScoreReward["Ninja"][6][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPk_ScoreReward["Ninja"][6][2]["RewardEffect"]["Effect"] = "angelwing"


	tNjThPk_ScoreReward["Ninja"][6][3] = {}
	-- ===
	-- ===索引:tNjThPk_ScoreReward["Ninja"][6][3]
	-- ===删除:4200007,1
	-- ===
	tNjThPk_ScoreReward["Ninja"][6][3]["LogId"] = 12001985
	tNjThPk_ScoreReward["Ninja"][6][3]["DeleteItem"] = {}
	tNjThPk_ScoreReward["Ninja"][6][3]["DeleteItem"][1] = {}
	tNjThPk_ScoreReward["Ninja"][6][3]["DeleteItem"][1]["Id"] = 4200007 -- 【库】7阶灵珠[属性:72]
	tNjThPk_ScoreReward["Ninja"][6][3]["DeleteItem"][1]["PreciousType"] = 357 -- =351//重铸活动消耗=352//融合活动消耗=353//冶炼活动消耗=354//灵珠塔活动消耗=355//龙冢试炼消耗=356//熔炼炉消耗=357//其他LUA消耗
	tNjThPk_ScoreReward["Ninja"][6][3]["RewardItem"] = {}
	tNjThPk_ScoreReward["Ninja"][6][3]["RewardItem"][1] = {}
	tNjThPk_ScoreReward["Ninja"][6][3]["RewardItem"][1]["Id"] = 3330609 -- 轮回莲[3330609][属性:8][叠加:10000][金币:0], 【表格】3330609
	tNjThPk_ScoreReward["Ninja"][6][3]["RewardItem"][1]["Attr"] = "0 40 3" -- 轮回莲*40（[错误]物品数量超10个）
	tNjThPk_ScoreReward["Ninja"][6][3]["RewardEffect"] = {}
	tNjThPk_ScoreReward["Ninja"][6][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPk_ScoreReward["Ninja"][6][3]["RewardEffect"]["Effect"] = "angelwing"


	tNjThPk_ScoreReward["Ninja"][6][4] = {}
	-- ===
	-- ===索引:tNjThPk_ScoreReward["Ninja"][6][4]
	-- ===消耗天石:320
	-- ===NewEmoneyLog:1000,01819
	tNjThPk_ScoreReward["Ninja"][6][4]["LogId"] = 12001985
	tNjThPk_ScoreReward["Ninja"][6][4]["CostEMoney"] = {}
	tNjThPk_ScoreReward["Ninja"][6][4]["CostEMoney"]["Value"] = 320 -- 消耗天石
	tNjThPk_ScoreReward["Ninja"][6][4]["CostEMoney"]["EmoneyLog"] = "1000	1819"
	tNjThPk_ScoreReward["Ninja"][6][4]["RewardItem"] = {}
	tNjThPk_ScoreReward["Ninja"][6][4]["RewardItem"][1] = {}
	tNjThPk_ScoreReward["Ninja"][6][4]["RewardItem"][1]["Id"] = 3330609 -- 轮回莲[3330609][属性:8][叠加:10000][金币:0], 【表格】3330609
	tNjThPk_ScoreReward["Ninja"][6][4]["RewardItem"][1]["Attr"] = "0 40 3" -- 轮回莲*40（[错误]物品数量超10个）
	tNjThPk_ScoreReward["Ninja"][6][4]["RewardEffect"] = {}
	tNjThPk_ScoreReward["Ninja"][6][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPk_ScoreReward["Ninja"][6][4]["RewardEffect"]["Effect"] = "angelwing"


	tNjThPk_ScoreReward["Ninja"][7] = {}
	-- ===
	-- ===索引:tNjThPk_ScoreReward["Ninja"][7][1]
	-- ===
	-- ===
	tNjThPk_ScoreReward["Ninja"][7][1] = {}
	tNjThPk_ScoreReward["Ninja"][7][1]["LogId"] = 12001985
	tNjThPk_ScoreReward["Ninja"][7][1]["RewardItem"] = {}
	tNjThPk_ScoreReward["Ninja"][7][1]["RewardItem"][1] = {}
	tNjThPk_ScoreReward["Ninja"][7][1]["RewardItem"][1]["Id"] = 3330063 -- 法印宝盒[3330063][属性:9][叠加:10000][金币:0], 【表格】3330063
	tNjThPk_ScoreReward["Ninja"][7][1]["RewardItem"][1]["Attr"] = "0 1" -- 法印宝盒*1
	tNjThPk_ScoreReward["Ninja"][7][1]["RewardEffect"] = {}
	tNjThPk_ScoreReward["Ninja"][7][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPk_ScoreReward["Ninja"][7][1]["RewardEffect"]["Effect"] = "angelwing"


	tNjThPk_ScoreReward["Ninja"][7][2] = {}
	-- ===
	-- ===索引:tNjThPk_ScoreReward["Ninja"][7][2]
	-- ===消耗金币:48000000
	-- ===
	tNjThPk_ScoreReward["Ninja"][7][2]["LogId"] = 12001985
	tNjThPk_ScoreReward["Ninja"][7][2]["CostEMoneyMono"] = {}
	tNjThPk_ScoreReward["Ninja"][7][2]["CostEMoneyMono"]["Value"] = 1920 -- 赠点
	tNjThPk_ScoreReward["Ninja"][7][2]["CostEMoneyMono"]["EmoneyLog"] = "1000	1894"
	tNjThPk_ScoreReward["Ninja"][7][2]["RewardItem"] = {}
	tNjThPk_ScoreReward["Ninja"][7][2]["RewardItem"][1] = {}
	tNjThPk_ScoreReward["Ninja"][7][2]["RewardItem"][1]["Id"] = 3330063 -- 法印宝盒[3330063][属性:9][叠加:10000][金币:0], 【表格】3330063
	tNjThPk_ScoreReward["Ninja"][7][2]["RewardItem"][1]["Attr"] = "0 2" -- 法印宝盒*2
	tNjThPk_ScoreReward["Ninja"][7][2]["RewardEffect"] = {}
	tNjThPk_ScoreReward["Ninja"][7][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPk_ScoreReward["Ninja"][7][2]["RewardEffect"]["Effect"] = "angelwing"


	tNjThPk_ScoreReward["Ninja"][7][3] = {}
	-- ===
	-- ===索引:tNjThPk_ScoreReward["Ninja"][7][3]
	-- ===删除:4200008,1
	-- ===
	tNjThPk_ScoreReward["Ninja"][7][3]["LogId"] = 12001985
	tNjThPk_ScoreReward["Ninja"][7][3]["DeleteItem"] = {}
	tNjThPk_ScoreReward["Ninja"][7][3]["DeleteItem"][1] = {}
	tNjThPk_ScoreReward["Ninja"][7][3]["DeleteItem"][1]["Id"] = 4200008 -- 【库】8阶灵珠[属性:72]
	tNjThPk_ScoreReward["Ninja"][7][3]["DeleteItem"][1]["PreciousType"] = 357 -- =351//重铸活动消耗=352//融合活动消耗=353//冶炼活动消耗=354//灵珠塔活动消耗=355//龙冢试炼消耗=356//熔炼炉消耗=357//其他LUA消耗
	tNjThPk_ScoreReward["Ninja"][7][3]["RewardItem"] = {}
	tNjThPk_ScoreReward["Ninja"][7][3]["RewardItem"][1] = {}
	tNjThPk_ScoreReward["Ninja"][7][3]["RewardItem"][1]["Id"] = 3330063 -- 法印宝盒[3330063][属性:9][叠加:10000][金币:0], 【表格】3330063
	tNjThPk_ScoreReward["Ninja"][7][3]["RewardItem"][1]["Attr"] = "0 2" -- 法印宝盒*2
	tNjThPk_ScoreReward["Ninja"][7][3]["RewardEffect"] = {}
	tNjThPk_ScoreReward["Ninja"][7][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPk_ScoreReward["Ninja"][7][3]["RewardEffect"]["Effect"] = "angelwing"


	tNjThPk_ScoreReward["Ninja"][7][4] = {}
	-- ===
	-- ===索引:tNjThPk_ScoreReward["Ninja"][7][4]
	-- ===消耗天石:640
	-- ===NewEmoneyLog:1000,01819
	tNjThPk_ScoreReward["Ninja"][7][4]["LogId"] = 12001985
	tNjThPk_ScoreReward["Ninja"][7][4]["CostEMoney"] = {}
	tNjThPk_ScoreReward["Ninja"][7][4]["CostEMoney"]["Value"] = 640 -- 消耗天石
	tNjThPk_ScoreReward["Ninja"][7][4]["CostEMoney"]["EmoneyLog"] = "1000	1819"
	tNjThPk_ScoreReward["Ninja"][7][4]["RewardItem"] = {}
	tNjThPk_ScoreReward["Ninja"][7][4]["RewardItem"][1] = {}
	tNjThPk_ScoreReward["Ninja"][7][4]["RewardItem"][1]["Id"] = 3330063 -- 法印宝盒[3330063][属性:9][叠加:10000][金币:0], 【表格】3330063
	tNjThPk_ScoreReward["Ninja"][7][4]["RewardItem"][1]["Attr"] = "0 2" -- 法印宝盒*2
	tNjThPk_ScoreReward["Ninja"][7][4]["RewardEffect"] = {}
	tNjThPk_ScoreReward["Ninja"][7][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPk_ScoreReward["Ninja"][7][4]["RewardEffect"]["Effect"] = "angelwing"


	tNjThPk_ScoreReward["Ninja"][8] = {}
	-- ===
	-- ===索引:tNjThPk_ScoreReward["Ninja"][8][1]
	-- ===
	-- ===
	tNjThPk_ScoreReward["Ninja"][8][1] = {}
	tNjThPk_ScoreReward["Ninja"][8][1]["LogId"] = 12001985
	tNjThPk_ScoreReward["Ninja"][8][1]["RewardItem"] = {}
	tNjThPk_ScoreReward["Ninja"][8][1]["RewardItem"][1] = {}
	tNjThPk_ScoreReward["Ninja"][8][1]["RewardItem"][1]["Id"] = 3330064 -- 高级法印宝盒[3330064][属性:9][叠加:10000][金币:0], 【表格】3330064
	tNjThPk_ScoreReward["Ninja"][8][1]["RewardItem"][1]["Attr"] = "0 1" -- 高级法印宝盒*1
	tNjThPk_ScoreReward["Ninja"][8][1]["RewardEffect"] = {}
	tNjThPk_ScoreReward["Ninja"][8][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPk_ScoreReward["Ninja"][8][1]["RewardEffect"]["Effect"] = "angelwing"


	tNjThPk_ScoreReward["Ninja"][8][2] = {}
	-- ===
	-- ===索引:tNjThPk_ScoreReward["Ninja"][8][2]
	-- ===消耗金币:60000000
	-- ===
	tNjThPk_ScoreReward["Ninja"][8][2]["LogId"] = 12001985
	tNjThPk_ScoreReward["Ninja"][8][2]["CostEMoneyMono"] = {}
	tNjThPk_ScoreReward["Ninja"][8][2]["CostEMoneyMono"]["Value"] = 1920 -- 赠点
	tNjThPk_ScoreReward["Ninja"][8][2]["CostEMoneyMono"]["EmoneyLog"] = "1000	1894"
	tNjThPk_ScoreReward["Ninja"][8][2]["RewardItem"] = {}
	tNjThPk_ScoreReward["Ninja"][8][2]["RewardItem"][1] = {}
	tNjThPk_ScoreReward["Ninja"][8][2]["RewardItem"][1]["Id"] = 3330064 -- 高级法印宝盒[3330064][属性:9][叠加:10000][金币:0], 【表格】3330064
	tNjThPk_ScoreReward["Ninja"][8][2]["RewardItem"][1]["Attr"] = "0 2" -- 高级法印宝盒*2
	tNjThPk_ScoreReward["Ninja"][8][2]["RewardEffect"] = {}
	tNjThPk_ScoreReward["Ninja"][8][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPk_ScoreReward["Ninja"][8][2]["RewardEffect"]["Effect"] = "angelwing"


	tNjThPk_ScoreReward["Ninja"][8][3] = {}
	-- ===
	-- ===索引:tNjThPk_ScoreReward["Ninja"][8][3]
	-- ===删除:4200008,1
	-- ===
	tNjThPk_ScoreReward["Ninja"][8][3]["LogId"] = 12001985
	tNjThPk_ScoreReward["Ninja"][8][3]["DeleteItem"] = {}
	tNjThPk_ScoreReward["Ninja"][8][3]["DeleteItem"][1] = {}
	tNjThPk_ScoreReward["Ninja"][8][3]["DeleteItem"][1]["Id"] = 4200008 -- 【库】8阶灵珠[属性:72]
	tNjThPk_ScoreReward["Ninja"][8][3]["DeleteItem"][1]["PreciousType"] = 357 -- =351//重铸活动消耗=352//融合活动消耗=353//冶炼活动消耗=354//灵珠塔活动消耗=355//龙冢试炼消耗=356//熔炼炉消耗=357//其他LUA消耗
	tNjThPk_ScoreReward["Ninja"][8][3]["RewardItem"] = {}
	tNjThPk_ScoreReward["Ninja"][8][3]["RewardItem"][1] = {}
	tNjThPk_ScoreReward["Ninja"][8][3]["RewardItem"][1]["Id"] = 3330064 -- 高级法印宝盒[3330064][属性:9][叠加:10000][金币:0], 【表格】3330064
	tNjThPk_ScoreReward["Ninja"][8][3]["RewardItem"][1]["Attr"] = "0 2" -- 高级法印宝盒*2
	tNjThPk_ScoreReward["Ninja"][8][3]["RewardEffect"] = {}
	tNjThPk_ScoreReward["Ninja"][8][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPk_ScoreReward["Ninja"][8][3]["RewardEffect"]["Effect"] = "angelwing"


	tNjThPk_ScoreReward["Ninja"][8][4] = {}
	-- ===
	-- ===索引:tNjThPk_ScoreReward["Ninja"][8][4]
	-- ===消耗天石:640
	-- ===NewEmoneyLog:1000,01819
	tNjThPk_ScoreReward["Ninja"][8][4]["LogId"] = 12001985
	tNjThPk_ScoreReward["Ninja"][8][4]["CostEMoney"] = {}
	tNjThPk_ScoreReward["Ninja"][8][4]["CostEMoney"]["Value"] = 640 -- 消耗天石
	tNjThPk_ScoreReward["Ninja"][8][4]["CostEMoney"]["EmoneyLog"] = "1000	1819"
	tNjThPk_ScoreReward["Ninja"][8][4]["RewardItem"] = {}
	tNjThPk_ScoreReward["Ninja"][8][4]["RewardItem"][1] = {}
	tNjThPk_ScoreReward["Ninja"][8][4]["RewardItem"][1]["Id"] = 3330064 -- 高级法印宝盒[3330064][属性:9][叠加:10000][金币:0], 【表格】3330064
	tNjThPk_ScoreReward["Ninja"][8][4]["RewardItem"][1]["Attr"] = "0 2" -- 高级法印宝盒*2
	tNjThPk_ScoreReward["Ninja"][8][4]["RewardEffect"] = {}
	tNjThPk_ScoreReward["Ninja"][8][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNjThPk_ScoreReward["Ninja"][8][4]["RewardEffect"]["Effect"] = "angelwing"

---------------------------------物品逻辑------------------------------------------
--enter arena
function NjThPK_EnterMap()
	local nNjThPK_UserId = Get_UserId()
	if not NjThPK_ChkTime() then
		Sys_MsgBox(tNjThPk_Text["NotEnter"])
		return
	end
	
	if Get_UserTeamNumbers(nNjThPK_UserId) >= 2 then
		--组队传送
		local nNjThPK_TeamId = Get_UserTeamId(nNjThPK_UserId)
		tNjThPK_Team[nNjThPK_TeamId] = true
		User_TeamExeFuncByTeamer(3,"NjThPK_TeamEnterChk</N>"..nNjThPK_TeamId,nNjThPK_UserId)
		if not tNjThPK_Team[nNjThPK_TeamId] then
			--请阁下和队友都站在该隐面前，他才能将阁下的队伍传送进考场。
			Sys_MsgBox(tNjThPk_Text["EnterFail"])
			return
		end
		User_TeamExeFuncByTeamer(3,"NjThPK_TeamEnter",nNjThPK_UserId)
		return
	else
		local nNjThPK_Mapid = Get_UserMapId(nNjThPK_UserId)
		if SpecialServer_ChkNoGiftServer()  then
			if (nNjThPK_Mapid ~= tNjThPk_Cont["Map"]["Back"]["Passion"]["MapId"]) then
				return
			end
		else
			if (nNjThPK_Mapid ~= tNjThPk_Cont["Map"]["Back"]["Normal"]["MapId"]) then
				return
			end
		end
	end
	NjThPK_DelStatus(nNjThPK_UserId)
	--传送到安全区
	User_SetPkType(2,nNjThPK_UserId)
	if User_UserRandBoundTrans(tNjThPk_Cont["Map"]["MapId"],tNjThPk_Cont["Map"]["PosX"],tNjThPk_Cont["Map"]["PosY"],5,5) then
		if  Get_UserStatisticValue(tNjThPk_Cont["Stc"]["JoinEvent"],tNjThPk_Cont["Stc"]["JoinData"],nNjThPK_UserId) == 0 then
			local sPro = "Ninja" 
			if not NjThPK_JudgePro(nNjThPK_UserId) then
				sPro = "Other"
			end
			if not RewardTemplate_UseItemAndMsg(tNjThPk_Join[sPro]) then
				Sys_MsgBox(tNjThPk_Text["JoinFull"])
				return
			end
			--恭喜阁下获得了参与奖。
			if sPro == "Ninja" then
				Sys_MsgBox(tNjThPk_Text["JoinGetNinja"],nil,nil,nNjThPK_UserId)
			else
				Sys_MsgBox(tNjThPk_Text["JoinGetOther"],nil,nil,nNjThPK_UserId)
			end
			Task_AddStatistic(tNjThPk_Cont["Stc"]["JoinEvent"],tNjThPk_Cont["Stc"]["JoinData"],1,1,nNjThPK_UserId)
		end
	end
end
function NjThPK_PositionChk(nNjThPK_UserId)
	local nFlag = 1
	if SpecialServer_ChkNoGiftServer() then
		nFlag = 2
	end
	local nPosX1 = tNjThPk_Cont["PosLimit"][nFlag]["PosX"][1]
	local nPosX2 = tNjThPk_Cont["PosLimit"][nFlag]["PosX"][2]
	local nPosY1 = tNjThPk_Cont["PosLimit"][nFlag]["PosY"][1]
	local nPosY2 = tNjThPk_Cont["PosLimit"][nFlag]["PosY"][2]
	local nUserX = Get_UserPositionX(nNjThPK_UserId)
	local nUserY = Get_UserPositionY(nNjThPK_UserId)
	if (nUserX >= nPosX1) and (nUserX <= nPosX2) and (nUserY >= nPosY1) and (nUserY <= nPosY2) then
		return true
	else
		return false
	end
end


function NjThPK_TeamEnterChk(nNjThPK_TeamId,nNjThPK_UserId)
	--摆摊检测
	if not NjThPK_PositionChk(nNjThPK_UserId) then
		tNjThPK_Team[nNjThPK_TeamId] = false
	else
		--所在地图检测
		local nNjThPK_Mapid = Get_UserMapId(nNjThPK_UserId)
		if SpecialServer_ChkNoGiftServer()  then
			if (nNjThPK_Mapid ~= tNjThPk_Cont["Map"]["Back"]["Passion"]["MapId"]) or NjThPK_ChkMap(nNjThPK_UserId) then
				tNjThPK_Team[nNjThPK_TeamId] = false
			end
		else
			if (nNjThPK_Mapid ~= tNjThPk_Cont["Map"]["Back"]["Normal"]["MapId"]) or NjThPK_ChkMap(nNjThPK_UserId) then
				tNjThPK_Team[nNjThPK_TeamId] = false
			end
		end
	end		
end

function NjThPK_TeamEnter(nNjThPK_UserId) 
	NjThPK_DelStatus(nNjThPK_UserId)
	User_SetPkType(2,nNjThPK_UserId)
	if User_UserRandBoundTrans(tNjThPk_Cont["Map"]["MapId"],tNjThPk_Cont["Map"]["PosX"],tNjThPk_Cont["Map"]["PosY"],5,5,0,nNjThPK_UserId) then
		if  Get_UserStatisticValue(tNjThPk_Cont["Stc"]["JoinEvent"],tNjThPk_Cont["Stc"]["JoinData"],nNjThPK_UserId) == 0 then
			local sPro = "Ninja" 
			if not NjThPK_JudgePro(nNjThPK_UserId) then
				sPro = "Other"
			end
			--参与奖
			if not RewardTemplate_UseItemAndMsg(tNjThPk_Join[sPro],nNjThPK_UserId) then
				Sys_MsgBox(tNjThPk_Text["JoinFull"],nil,nil,nNjThPK_UserId)
				return
			end
			if sPro == "Ninja" then
				Sys_MsgBox(tNjThPk_Text["JoinGetNinja"],nil,nil,nNjThPK_UserId)
			else
				Sys_MsgBox(tNjThPk_Text["JoinGetOther"],nil,nil,nNjThPK_UserId)
			end
			Task_AddStatistic(tNjThPk_Cont["Stc"]["JoinEvent"],tNjThPk_Cont["Stc"]["JoinData"],1,1,nNjThPK_UserId)
		end
	end
end


--check ninja profession 
function NjThPK_JudgePro(nNjThPK_UserId)
	local nNjThPK_Pro = Get_UserProfession(nNjThPK_UserId)
	if nNjThPK_Pro >= 50 and nNjThPK_Pro < 60 then 
		return true
	else
		return false 
	end
end

--检查活动时间与入场时间
function NjThPK_ChkTime()
	if not Sys_ChkFullTime(tNjThPk_Cont["ActTime"]) then
		return false
	end
	if not Sys_ChkDayTime(tNjThPk_Cont["PKtime"]) then	
		return false
	end
	return true
end

--检查mapid 部分接口只能使用传入的userid 不能getuserid
function NjThPK_ChkMap(nNjThPK_UserId)
	local nNjThPK_Mapid = Get_UserMapId(nNjThPK_UserId)
	if nNjThPK_Mapid == tNjThPk_Cont["Map"]["MapId"] then
		return true
	else 
		return false 
	end
end


function NjThPK_DelStatus(nNjThPK_UserId)
	local nNjThPK_Status = tNjThPk_Cont["Item"]["PickUpStatus"]
	if User_ChkRoleStatus(nNjThPK_Status,nNjThPK_UserId) then 
		User_DelRoleStatus(nNjThPK_Status,nNjThPK_UserId)
	end
end

--清场自检
function NjThPK_Clean()
	local nMapId = tNjThPk_Cont["Map"]["MapId"]
	local nMonsterId1 = tNjThPk_Cont["Monster"]["Creep"]
	local nMonsterId2 = tNjThPk_Cont["Monster"]["Boss"]
	local nHideNpc = tNjThPk_Cont["Npc"]["Hide"]
	--清怪
	tNjThPK_Npc = {
		[1] = false,
		[2] = false,
		[3] = false,
		[4] = false,
		[5] = false,
		[6] = false,
		[7] = false,
		[8] = false,
		[9] = false,
		[10] = false,
		[11] = false,
		[12] = false,
		[13] = false,
		[14] = false,
		[15] = false,
		[16] = false,
		[17] = false,
		[18] = false,
	}
	Monster_DelMonster(nMapId,nMonsterId1)
	Monster_DelMonster(nMapId,nMonsterId2)
	Monster_Death(nMonsterId2,tNjThPk_Cont["Map"]["MapId"])
	--删除动态npc
	Npc_DelDynaNpc(nMapId,"name",tNjThPk_Cont["Npc"]["HideName"])
	--踢人
    Map_UserExeFunc(nMapId,-1,"NjThPK_Kick")
end

--踢人
--死亡也会踢人
function NjThPK_Kick(nNjThPK_UserId)
	local nNjThPK_UserId = nNjThPK_UserId or Get_UserId()
	NjThPK_DelStatus(nNjThPK_UserId)
	local nMapId = tNjThPk_Cont["Map"]["Back"]["Normal"]["MapId"]
    local nPosx = tNjThPk_Cont["Map"]["Back"]["Normal"]["X"]
    local nPosy = tNjThPk_Cont["Map"]["Back"]["Normal"]["Y"]
    if SpecialServer_ChkNoGiftServer() then
        nMapId = tNjThPk_Cont["Map"]["Back"]["Passion"]["MapId"]
        nPosx = tNjThPk_Cont["Map"]["Back"]["Passion"]["X"]
        nPosy = tNjThPk_Cont["Map"]["Back"]["Passion"]["Y"]
    end
    User_UserRandBoundTrans(nMapId,nPosx,nPosy,2,2,1,nNjThPK_UserId)
end

--怪物击杀逻辑
function NjThPK_KillMonster()
	if not NjThPK_ChkTime() then 
		return 
	end
	local nNjThPK_UserId = Get_UserId()
	local nNjThPK_Event = tNjThPk_Cont["Stc"]["ScoreEvent"]
	local nNjThPK_Data = tNjThPk_Cont["Stc"]["ScoreData"]
	local nNjThPK_Score = tNjThPk_Cont["Score"]["Creep"]
	local nNjThPK_NowScore = Get_UserStatisticValue(nNjThPK_Event,nNjThPK_Data,nNjThPK_UserId)
	--增加积分
	Task_SetStatistic(nNjThPK_Event,nNjThPK_Data,nNjThPK_NowScore+nNjThPK_Score,1,nNjThPK_UserId)
	--刷新排行
	NjThPK_RefreshRank(nNjThPK_UserId,nNjThPK_Score,1,1)
	--判断为组队状态
	if Get_UserTeamNumbers(nNjThPK_UserId) >= 2 then
		User_TeamExeFuncByTeamer(2,"NjThPK_TeamPoint</N>"..nNjThPK_UserId.."</N>1")
	end
	local nMonsterId = tNjThPk_Cont["Monster"]["Boss"]
	--1%概率出boss
	if Sys_Random(1,100) then
		--读global
		
		--场上同时存在一只 且上一次召唤后3分钟内不再召唤
		local nMapId = Get_UserMapId(nNjThPK_UserId)
		if Get_SysTempData(1,nMapId,nMonsterId) > 0 then
			return
		elseif (os.time() - nNjThPK_SummonRecord) < 1800 then
			return
		end
		--召唤怪物
		local nPosX = Get_UserPositionX(nNjThPK_UserId)
		local nPosY = Get_UserPositionY(nNjThPK_UserId)
	
		local nGenId = tNjThPk_Cont["Gen"]["Boss"]
		local nMonsterId = tNjThPk_Cont["Monster"]["Boss"]
		--计数+1
		--Sys_SetTempData(1,nUserMapId,nMonsterId,1)
		--Monster_CreateMonsterRange(0,0,nMapId,nPosX,nPosY,nGenId,nMonsterId,0,sMonsterName,0,5,5,1,180)
		
		if Monster_AddAndCount(nMapId,nPosX,nPosY,nGenId,nMonsterId) then
			--记录召唤时间
			nNjThPK_SummonRecord = os.time()
		end
	end
end

--boss击杀逻辑
--User_TeamExeFuncByTeamer仅是给执行函数的param末尾加上了一个队友的userid
--使用时User_TeamExeFuncByTeamer(3,"exet</N>"..Get_UserId())
--比较一下function exet(nKillerId,nNjThPK_UserId)击杀者id与userid是否相同
function NjThPK_KillBoss()
	--一个boss300分
	if not NjThPK_ChkTime() then 
		return 
	end
	--击杀计数
	local nNjThPK_MonsterId = tNjThPk_Cont["Monster"]["Boss"]
	local nNjThPK_Mapid = tNjThPk_Cont["Map"]["MapId"] 
	local nNjThPK_UserId = Get_UserId()
	local nNjThPK_Event = tNjThPk_Cont["Stc"]["ScoreEvent"]
	local nNjThPK_Data = tNjThPk_Cont["Stc"]["ScoreData"]
	local nNjThPK_Score = tNjThPk_Cont["Score"]["Boss"]
	local nNjThPK_NowScore = Get_UserStatisticValue(nNjThPK_Event,nNjThPK_Data,nNjThPK_UserId)
	--死亡计数
	Monster_Death(nNjThPK_MonsterId,tNjThPk_Cont["Map"]["MapId"] )
	--增加积分
	Task_SetStatistic(nNjThPK_Event,nNjThPK_Data,nNjThPK_NowScore+nNjThPK_Score,1,nNjThPK_UserId)
	--刷新排行
	NjThPK_RefreshRank(nNjThPK_UserId,nNjThPK_Score,1,2)
	--击杀共享30分
	if Get_UserTeamNumbers(nNjThPK_UserId) >= 2 then
		User_TeamExeFuncByTeamer(2,"NjThPK_TeamPoint</N>"..nNjThPK_UserId.."</N>30")
	end
end

--写着是队友触发 实际就是自动传入队友id
function NjThPK_TeamPoint(nKillerId,nScore,nNjThPK_UserId)
	if nKillerId == nNjThPK_UserId then
		return 
	end
	if not NjThPK_ChkMap(nNjThPK_UserId) then 
		return
	end
	local nNjThPK_Event = tNjThPk_Cont["Stc"]["ScoreEvent"]
	local nNjThPK_Data = tNjThPk_Cont["Stc"]["ScoreData"]

	local nNjThPK_NowScore = Get_UserStatisticValue(nNjThPK_Event,nNjThPK_Data,nNjThPK_UserId)
	--增加积分
	Task_SetStatistic(nNjThPK_Event,nNjThPK_Data,nNjThPK_NowScore+nScore,1,nNjThPK_UserId)
	--刷新排行
	NjThPK_RefreshRank(nNjThPK_UserId,nScore,3)
	
end

--刷新积分
function NjThPK_RefreshRank(nNjThPK_UserId,nScore,nIndex,nType)
	--nIndex =1 加分
	--nIndex =2 扣分
	--nIndex = 3 共享积分
	if not Sys_ChkFullTime(tNjThPk_Cont["ActTime"]) then 
		return 
	end
	local sUserName = Get_UserName(nNjThPK_UserId)
	--获取当前积分 已增加了
	local nNjThPK_Score = Get_UserStatisticValue(tNjThPk_Cont["Stc"]["ScoreEvent"],tNjThPk_Cont["Stc"]["ScoreData"],nNjThPK_UserId)
	local sNjThPK_Score = tNjThPk_Text["Add"]
	if nIndex == 2 then
		--扣了XX分，目前积分为xx
		sNjThPK_Score = string.format(tNjThPk_Text["Minus"],nScore,nNjThPK_Score)
	elseif nIndex == 1 then
		--根据传入的场景类型进行不同的2005对话
		if nType == 1 then
			sNjThPK_Score = string.format(tNjThPk_Text["KillScore"],nScore,nNjThPK_Score)
		elseif nType == 2 then
			sNjThPK_Score = string.format(tNjThPk_Text["KillBossScore"],nScore,nNjThPK_Score)
		elseif nType == 3 then
			sNjThPK_Score = string.format(tNjThPk_Text["KillPlayerScore"],nScore,nNjThPK_Score)
		elseif nType == 4 then
			sNjThPK_Score = string.format(tNjThPk_Text["UseScrollScore"],nScore,nNjThPK_Score)
		end
	elseif nIndex == 3 then
		--从队友处共享了xx分，目前积分为XX
		sNjThPK_Score = string.format(tNjThPk_Text["Share"],nScore,nNjThPK_Score)
	end
	if NjThPK_JudgePro(nNjThPK_UserId) then
		--清除另一个榜的该玩家内容
		if RankingFunc_GetUserInRank(tNjThPk_Cont["Npc"]["NotNinjaRank"],nNjThPK_UserId) > 0 then
			RankingFunc_Remove(tNjThPk_Cont["Npc"]["NotNinjaRank"],nNjThPK_UserId)
		end
		RankingFunc_SetInfo(tNjThPk_Cont["Npc"]["NinjaRank"],nNjThPK_Score,nNjThPK_UserId)
		RankingFunc_RestSortRankingList(tNjThPk_Cont["Npc"]["NinjaRank"])
	else
		--清除另一个榜的该玩家内容
		if RankingFunc_GetUserInRank(tNjThPk_Cont["Npc"]["NinjaRank"],nNjThPK_UserId) > 0 then
			RankingFunc_Remove(tNjThPk_Cont["Npc"]["NinjaRank"],nNjThPK_UserId)
		end
		RankingFunc_SetInfo(tNjThPk_Cont["Npc"]["NotNinjaRank"],nNjThPK_Score,nNjThPK_UserId)
		RankingFunc_RestSortRankingList(tNjThPk_Cont["Npc"]["NotNinjaRank"])
	end
	--2005播放
	User_TalkChannel2005(sNjThPK_Score,nNjThPK_UserId)
end

--击杀玩家逻辑
function NjThPK_KillPlayer(nNjThPK_UserId,nTargetId)
	--时间检测与地图检测
	if not NjThPK_ChkTime() then 
		return 
	end
	if not NjThPK_ChkMap(nNjThPK_UserId) then 
		return 
	end
	local nNjThPK_Event = tNjThPk_Cont["Stc"]["ScoreEvent"]
	local nNjThPK_Data = tNjThPk_Cont["Stc"]["ScoreData"]
	local nNjThPK_UserScore = Get_UserStatisticValue(nNjThPK_Event,nNjThPK_Data,nNjThPK_UserId)
	local nNjThPK_TargetScore = Get_UserStatisticValue(nNjThPK_Event,nNjThPK_Data,nTargetId)
	--积分逻辑
	if nNjThPK_TargetScore < 100 then 
		--只加10分
		Task_SetStatistic(nNjThPK_Event,nNjThPK_Data,nNjThPK_UserScore + tNjThPk_Cont["Score"]["Player"],1,nNjThPK_UserId)
		NjThPK_RefreshRank(nNjThPK_UserId,tNjThPk_Cont["Score"]["Player"],1,3)
	else 
		--夺取积分 分数stc变化 刷新排行
		local NjThPK_Point = math.floor(nNjThPK_TargetScore/10)
		--刷新分数
		Task_SetStatistic(nNjThPK_Event,nNjThPK_Data,nNjThPK_UserScore + NjThPK_Point + tNjThPk_Cont["Score"]["Player"],1,nNjThPK_UserId)
		Task_SetStatistic(nNjThPK_Event,nNjThPK_Data,nNjThPK_TargetScore - NjThPK_Point,1,nTargetId)
		NjThPK_RefreshRank(nNjThPK_UserId,NjThPK_Point + tNjThPk_Cont["Score"]["Player"],1,3)
		NjThPK_RefreshRank(nTargetId,NjThPK_Point,2)
	end
	--击杀共享1分 夺取的分数不共享
	if Get_UserTeamNumbers(nNjThPK_UserId) >= 2 then
		User_TeamExeFuncByTeamer(2,"NjThPK_TeamPoint</N>"..nNjThPK_UserId.."</N>1")
	end
end

--隐藏忍者
function NjThPK_HideNpc(nNjThPK_Index)
	--非忍者不能点
	if not NjThPK_ChkTime() then 
		return 
	end
	local nNjThPK_UserId = Get_UserId()
	--重置重复点的stc
	Task_StcReset(tNjThPk_Cont["Stc"]["SameEvent"],tNjThPk_Cont["Stc"]["SameData"],nNjThPK_UserId)
	if not NjThPK_JudgePro(nNjThPK_UserId) then
		Sys_MsgBox(tNjThPk_Text["NoProfession"],nil,nil,nNjThPK_UserId)
		return 
	end
	--调起对话
	--npc不删 固定点 概率发现npc
	if tNjThPK_Npc[nNjThPK_Index] and (Get_UserStatisticValue(tNjThPk_Cont["Stc"]["SameEvent"],tNjThPk_Cont["Stc"]["SameData"],nNjThPK_UserId) ~= nNjThPK_Index) then 
		Sys_DialogText(tNjThPk_Text[26554]["Text111"])
		Sys_DialogText(tNjThPk_Text[26554]["Text112"])
		Sys_DialogOption(tNjThPk_Text[26554]["Option111"], "</F>NjThPK_HideReward</N>"..nNjThPK_Index)
		Sys_DialogEnd()
		return
	end
	Sys_MsgBox(tNjThPk_Text["NotFind"])
end

function NjThPK_HideReward(nIndex)
	--获取1-5个卷轴
	local nNjThPK_Random = math.random(1,5)
	--复制奖励表 替换数量
	local tNjThPK_RandomReward = CommonFunc_Copy(tNjThPK_HideReward)
	tNjThPK_RandomReward["RewardItem"][1]["Attr"] = "0 "..nNjThPK_Random
	if not RewardTemplate_CheckSpace(tNjThPK_RandomReward) then
		return
	end
	local nNjThPK_UserId = Get_UserId()
	local nNjThPK_Event = tNjThPk_Cont["Stc"]["ScoreEvent"]
	local nNjThPK_Data = tNjThPk_Cont["Stc"]["ScoreData"]
	local nNjThPK_Score = tNjThPk_Cont["Score"]["Creep"]
	local nNjThPK_NowScore = Get_UserStatisticValue(nNjThPK_Event,nNjThPK_Data,nNjThPK_UserId)
	if RewardTemplate_UseItemAndMsg(tNjThPK_RandomReward) then
		--npc失效
		--随机一个其他位置生效
		--记录stc 当前记录的位置
		Task_SetStcTimestamp(tNjThPk_Cont["Stc"]["SameEvent"],tNjThPk_Cont["Stc"]["SameData"],0,nNjThPK_UserId)
		Task_SetStatistic(tNjThPk_Cont["Stc"]["SameEvent"],tNjThPk_Cont["Stc"]["SameData"],1,1,nNjThPK_UserId)
		NjThPK_RefreshNpc(nIndex)
		--当前点击的失效
		tNjThPK_Npc[nIndex] = false
		--不在这里增加 改为使用增加
		--NjThPK_RefreshRank(nNjThPK_UserId,nNjThPK_Score,1)
	end
end


--随机点npc 活动开始时随机数决定部分npc生效 领取之后换一个随机点npc
function NjThPK_SetNpc()
	if not Sys_ChkFullTime(tNjThPk_Cont["ActTime"]) then
		return 
	end
	--初始化队伍进入表与召唤时间
	tNjThPK_Team = {}
	nNjThPK_SummonRecord = 0
	--18个位置取6个生效
	local nNjThPK_Total = 6
	local nNjThPK_Random = 1
	local sNjThPK_Name = tNjThPk_Cont["Npc"]["HideName"]
	for i = 1,999 do
		nNjThPK_Random = math.random(1,18)
		if not tNjThPK_Npc[nNjThPK_Random] then
			tNjThPK_Npc[nNjThPK_Random] = true
			nNjThPK_Total = nNjThPK_Total - 1
			if nNjThPK_Total == 0 then 
				break
			end
		end
		
	end
	local nNjThPK_NpcType = tNjThPk_Cont["Npc"]["Hide"]
	local nNjThPK_LookFace = tNjThPk_Cont["Npc"]["HideLookFace"]
	local nNjThPK_Mapid = tNjThPk_Cont["Map"]["MapId"]
	--放置npc
	for i = 1, 18 do 
		local nNjThPK_PosX = tNjThPk_Cont["Hide"][i]["PosX"]
		local nNjThPK_PosY = tNjThPk_Cont["Hide"][i]["PosY"]
		local nNjThPK_Task0 = tNjThPk_Cont["Hide"][i]["Action"]
		Npc_CreateDynaNpc(sNjThPK_Name,2,0,nNjThPK_LookFace,0,0,nNjThPK_Mapid,nNjThPK_PosX,nNjThPK_PosY,0,0,0,nNjThPK_Task0)
	end
end

function NjThPK_RefreshNpc(nIndex)
	local nFlag = false
	local nNjThPK_Random = 1
	for i = 1,999 do
		nNjThPK_Random = math.random(1,18)
		if not tNjThPK_Npc[nNjThPK_Random] then
			tNjThPK_Npc[nNjThPK_Random] = true
			break
		end
	end
end
--返回玩家的积分等级
function NjThPK_ChkLevel(nScore)
	local nLev = 0
	for i = 1,8 do
		if nScore >= tNjThPk_Cont["Level"][i] then
			nLev = i 
		else
			break
		end
	end
	return nLev
end

--
function NjThPK_GiveSReward(nIndex)
	local nNjThPK_UserId = Get_UserId() 
	if not Sys_ChkFullTime(tNjThPk_Cont["ActTime"]) then 
		return 
	end
	local nNjThPK_RewardLev = Get_UserStatisticValue(tNjThPk_Cont["Stc"]["SRewardEvent"],tNjThPk_Cont["Stc"]["SRewardData"],nNjThPK_UserId)
	local sPro
	if NjThPK_JudgePro(nNjThPK_UserId) then
		sPro = "Ninja"
	else
		sPro = "Other"
	end
	if nIndex == 1 then
		if not RewardTemplate_CheckSpace(tNjThPk_ScoreReward[sPro][nNjThPK_RewardLev+1][1]) then
			local nNjThPK_Space = RewardTemplate_GetRewardSpace(tNjThPk_ScoreReward[sPro][nNjThPK_RewardLev+1][1])
			local sNjThPK_Space = string.format(tNjThPk_Text["NotSpace"],nNjThPK_Space)
			Sys_MsgBox(sNjThPK_Space)
			return
		end
		if RewardTemplate_UseItemAndMsg(tNjThPk_ScoreReward[sPro][nNjThPK_RewardLev+1][1]) then
			--领奖进度+1
			Task_AddStatistic(tNjThPk_Cont["Stc"]["SRewardEvent"],tNjThPk_Cont["Stc"]["SRewardData"],1,1)
		end
	elseif nIndex == 2 then
		local nEMoneyMonoPrice = tNjThPk_ScoreReward[sPro][nNjThPK_RewardLev+1][2]["CostEMoneyMono"]["Value"]
		local nUserMono = Get_UserMonoEMoney(nNjThPK_UserId)
		if nUserMono < nEMoneyMonoPrice  then
			--赠点不足
			Sys_MsgBox(tNjThPk_Text["NoMoney"])
			return
		end

		if not RewardTemplate_CheckSpace(tNjThPk_ScoreReward[sPro][nNjThPK_RewardLev+1][2]) then
			local nNjThPK_Space = RewardTemplate_GetRewardSpace(tNjThPk_ScoreReward[sPro][nNjThPK_RewardLev+1][2])
			local sNjThPK_Space = string.format(tNjThPk_Text["NotSpace"],nNjThPK_Space)
			Sys_MsgBox(sNjThPK_Space)
			return
		end
		if RewardTemplate_UseItemAndMsg(tNjThPk_ScoreReward[sPro][nNjThPK_RewardLev+1][2]) then
			--领奖进度+1
			--赠点已有log 不加log了
			--Sys_SaveEmoneyBuy(string.format(tNjThPk_Cont["EMoneyLog"],nMoney,nMoney),nNjThPK_UserId)
			Task_AddStatistic(tNjThPk_Cont["Stc"]["SRewardEvent"],tNjThPk_Cont["Stc"]["SRewardData"],1,1)
		end
	elseif nIndex == 3 then
		local nNjThPK_ReqSoul = tNjThPk_ScoreReward[sPro][nNjThPK_RewardLev+1][3]["DeleteItem"][1]["Id"]
		local nNjThPK_ReqSoulNum =  tNjThPk_ScoreReward[sPro][nNjThPK_RewardLev+1][3]["DeleteItem"][1]["ItemNum"] or 1
		--获取背包内物品的数量与要求的进行比较
		local nNjThPK_Soul = Get_CountItemType(nNjThPK_ReqSoul,0)
		if nNjThPK_Soul < nNjThPK_ReqSoulNum then
			--不足的对话
			--另写一个函数传入了
			LinkNpcGossipFunc_New(tNjThPk_Cont["Npc"]["Main"],"4-1")
			return
		else
			if not RewardTemplate_CheckSpace(tNjThPk_ScoreReward[sPro][nNjThPK_RewardLev+1][3]) then
				local nNjThPK_Space = RewardTemplate_GetRewardSpace(tNjThPk_ScoreReward[sPro][nNjThPK_RewardLev+1][3])
				local sNjThPK_Space = string.format(tNjThPk_Text["NotSpace"],nNjThPK_Space)
				Sys_MsgBox(sNjThPK_Space)
				return
			end
			if RewardTemplate_UseItemAndMsg(tNjThPk_ScoreReward[sPro][nNjThPK_RewardLev+1][3]) then
				--领奖进度+1
				Task_AddStatistic(tNjThPk_Cont["Stc"]["SRewardEvent"],tNjThPk_Cont["Stc"]["SRewardData"],1,1)
			end
		end
	end
end

--获取玩家的名次
function NjThPK_GetRank(nNjThPK_UserId)
	local nNjThPK_UserId = nNjThPK_UserId or Get_UserId()
	local tRank = RankingFunc_GetNowData(tNjThPk_Cont["Npc"]["NotNinjaRank"])
	if NjThPK_JudgePro(nNjThPK_UserId) then
		tRank = RankingFunc_GetNowData(tNjThPk_Cont["Npc"]["NinjaRank"])
	end
	local nNjThPK_Rank = 0
	for i = 1,10 do 
		if tRank[i] == nil then
			break
		end
		if tRank[i]["UserId"] == nNjThPK_UserId then 
			nNjThPK_Rank = i
		end
	end
	return nNjThPK_Rank
end



function NjThPK_GiveSReward2(nNjThPK_ReqSoul,nNjThPK_Num,nNjThPK_Cost)
	local nNjThPK_UserId = Get_UserId() 
	if not Sys_ChkFullTime(tNjThPk_Cont["ActTime"]) then 
		return 
	end
	local nNjThPK_Emoney =  Get_UserEMoney(nNjThPK_UserId)
	if nNjThPK_Emoney < nNjThPK_Cost then
		Sys_MsgBox(tNjThPk_Text["NoEMoney"])
		return
	end
	if Get_CountItemType(nNjThPK_ReqSoul,0) < nNjThPK_Num then
		LinkNpcGossipFunc_New(tNjThPk_Cont["Npc"]["Main"],"4-1")
		return
	end
	local nNjThPK_RewardLev = Get_UserStatisticValue(tNjThPk_Cont["Stc"]["SRewardEvent"],tNjThPk_Cont["Stc"]["SRewardData"],nNjThPK_UserId)
	local sPro
	if NjThPK_JudgePro(nNjThPK_UserId) then
		sPro = "Ninja"
	else
		sPro = "Other"
	end
	local tNjThPk_CopyReward = CommonFunc_Copy(tNjThPk_ScoreReward[sPro][nNjThPK_RewardLev+1][4])
	if nNjThPK_Num == 0 then
		tNjThPk_CopyReward["DeleteItem"] = nil
	elseif nNjThPK_Num == 1 then
		tNjThPk_CopyReward["DeleteItem"] = {}
		tNjThPk_CopyReward["DeleteItem"][1] = {}
		tNjThPk_CopyReward["DeleteItem"][1]["Id"] = nNjThPK_ReqSoul
		tNjThPk_CopyReward["DeleteItem"][1]["ItemNum"] = nil
	else 
		tNjThPk_CopyReward["DeleteItem"] = {}
		tNjThPk_CopyReward["DeleteItem"][1] = {}
		tNjThPk_CopyReward["DeleteItem"][1]["Id"] = nNjThPK_ReqSoul
		tNjThPk_CopyReward["DeleteItem"][1]["ItemNum"] = nNjThPK_Num
	end
	tNjThPk_CopyReward["CostEMoney"]["Value"] = nNjThPK_Cost
	if RewardTemplate_UseItemAndMsg(tNjThPk_CopyReward) then
		--领奖进度+1
		Task_AddStatistic(tNjThPk_Cont["Stc"]["SRewardEvent"],tNjThPk_Cont["Stc"]["SRewardData"],1,1)
	end
end
function NjThPK_ChgRank(nNjThPK_Rank)
	if nNjThPK_Rank < 4 then 
		return nNjThPK_Rank
	elseif nNjThPK_Rank < 7 then
		return 4
	else
		return 5
	end
end
function NjThPK_GetRankReward(nIndex)
	local nNjThPK_UserId = Get_UserId() 
	local nNjThPK_RewardLev = Get_UserStatisticValue(tNjThPk_Cont["Stc"]["RRewardEvent"],tNjThPk_Cont["Stc"]["RRewardData"],nNjThPK_UserId)
	if nNjThPK_RewardLev >= 1 then
		--已领取
		return
	end

	local nNjThPK_Rank =  NjThPK_ChgRank(NjThPK_GetRank(nNjThPK_UserId))
	local sPro
	if NjThPK_JudgePro(nNjThPK_UserId) then
		sPro = "Ninja"
	else
		sPro = "Other"
	end

	if nIndex == 1 then
		if not RewardTemplate_CheckSpace(tNjThPK_RankReward[sPro][nNjThPK_Rank][1]) then
			local nNjThPK_Space = RewardTemplate_GetRewardSpace(tNjThPK_RankReward[sPro][nNjThPK_Rank][1])
			local sNjThPK_Space = string.format(tNjThPk_Text["NotSpace"],nNjThPK_Space)
			Sys_MsgBox(sNjThPK_Space)
			return
		end
		if RewardTemplate_UseItemAndMsg(tNjThPK_RankReward[sPro][nNjThPK_Rank][1]) then
			--领奖进度+1
			Task_AddStatistic(tNjThPk_Cont["Stc"]["RRewardEvent"],tNjThPk_Cont["Stc"]["RRewardData"],1,1)
		end
	elseif nIndex == 2 then
		local nEMoneyMonoPrice = tNjThPK_RankReward[sPro][nNjThPK_Rank][2]["CostEMoneyMono"]["Value"]
		local nUserMono = Get_UserMonoEMoney(nNjThPK_UserId)
		
		if nUserMono < nEMoneyMonoPrice  then
			--赠点不足
			Sys_MsgBox(tNjThPk_Text["NoMoney"])
			return
		end
		if not RewardTemplate_CheckSpace(tNjThPK_RankReward[sPro][nNjThPK_Rank][2]) then
			local nNjThPK_Space = RewardTemplate_GetRewardSpace(tNjThPK_RankReward[sPro][nNjThPK_Rank][2])
			local sNjThPK_Space = string.format(tNjThPk_Text["NotSpace"],nNjThPK_Space)
			Sys_MsgBox(sNjThPK_Space)
			return
		end
		
		if RewardTemplate_UseItemAndMsg(tNjThPK_RankReward[sPro][nNjThPK_Rank][2]) then
			--记录金币花费 保留万位
			--Sys_SaveEmoneyBuy(string.format(tNjThPk_Cont["EMoneyLog"],nMoney,nMoney),nNjThPK_UserId)
			--领奖进度+1
			Task_AddStatistic(tNjThPk_Cont["Stc"]["RRewardEvent"],tNjThPk_Cont["Stc"]["RRewardData"],1,1)
		end
	elseif nIndex == 3 then
		local nNjThPK_ReqSoul = tNjThPK_RankReward[sPro][nNjThPK_Rank][3]["DeleteItem"][1]["Id"]
		local nNjThPK_ReqSoulNum =  tNjThPK_RankReward[sPro][nNjThPK_Rank][3]["DeleteItem"][1]["ItemNum"]
		--获取背包内物品的数量与要求的进行比较
		local nNjThPK_Soul = Get_CountItemType(nNjThPK_ReqSoul,0)
		if nNjThPK_Soul < nNjThPK_ReqSoulNum then
			--不足的对话
			--另写一个函数传入了
			if sPro == "Ninja" then
				LinkNpcGossipFunc_New(tNjThPk_Cont["Npc"]["NinjaRank"],"7-1")
			else 
				LinkNpcGossipFunc_New(tNjThPk_Cont["Npc"]["NotNinjaRank"],"7-1")
			end
			return
		else
			if not RewardTemplate_CheckSpace(tNjThPK_RankReward[sPro][nNjThPK_Rank][3]) then
				local nNjThPK_Space = RewardTemplate_GetRewardSpace(tNjThPK_RankReward[sPro][nNjThPK_Rank][3])
				local sNjThPK_Space = string.format(tNjThPk_Text["NotSpace"],nNjThPK_Space)
				Sys_MsgBox(sNjThPK_Space)
				return
			end
			if RewardTemplate_UseItemAndMsg(tNjThPK_RankReward[sPro][nNjThPK_Rank][3]) then
				--领奖进度+1
				Task_AddStatistic(tNjThPk_Cont["Stc"]["RRewardEvent"],tNjThPk_Cont["Stc"]["RRewardData"],1,1)
			end
		end
	end
end

function NjThPK_GetRankReward2(nNjThPK_Num,nNjThPK_Cost)
	local nNjThPK_UserId = Get_UserId() 
	local nNjThPK_RewardLev = Get_UserStatisticValue(tNjThPk_Cont["Stc"]["RRewardEvent"],tNjThPk_Cont["Stc"]["RRewardData"],nNjThPK_UserId)
	if nNjThPK_RewardLev >= 1 then
		--已领取
		return
	end
	local nNjThPK_ReqSoul = tNjThPk_Cont["Soul"]["Rank"]
	local nNjThPK_Rank = NjThPK_ChgRank(NjThPK_GetRank(nNjThPK_UserId))
	local sPro = "Ninja"
	if NjThPK_JudgePro(nNjThPK_UserId) then
		sPro = "Ninja"
	else
		sPro = "Other"
	end
	local nNjThPK_Emoney =  Get_UserEMoney(nNjThPK_UserId)
	if nNjThPK_Emoney < nNjThPK_Cost then
		Sys_MsgBox(tNjThPk_Text["NoEMoney"])
		return
	end
	if Get_CountItemType(nNjThPK_ReqSoul,0) < nNjThPK_Num then
		if sPro == "Ninja" then
			LinkNpcGossipFunc_New(tNjThPk_Cont["Npc"]["NinjaRank"],"7-1")
		else 
			LinkNpcGossipFunc_New(tNjThPk_Cont["Npc"]["NotNinjaRank"],"7-1")
		end
		return
	end
	local tNjThPk_CopyReward = CommonFunc_Copy(tNjThPK_RankReward[sPro][nNjThPK_Rank][4])
	if nNjThPK_Num == 0 then
		tNjThPk_CopyReward["DeleteItem"] = nil
	elseif nNjThPK_Num == 1 then
		tNjThPk_CopyReward["DeleteItem"] = {}
		tNjThPk_CopyReward["DeleteItem"][1] = {}
		tNjThPk_CopyReward["DeleteItem"][1]["Id"] = nNjThPK_ReqSoul
		tNjThPk_CopyReward["DeleteItem"][1]["ItemNum"] = nil
	else 
		tNjThPk_CopyReward["DeleteItem"] = {}
		tNjThPk_CopyReward["DeleteItem"][1] = {}
		tNjThPk_CopyReward["DeleteItem"][1]["Id"] = nNjThPK_ReqSoul
		tNjThPk_CopyReward["DeleteItem"][1]["ItemNum"] = nNjThPK_Num
	end
	tNjThPk_CopyReward["CostEMoney"]["Value"] = nNjThPK_Cost
	if not RewardTemplate_CheckSpace(tNjThPk_CopyReward) then
		local nNjThPK_Space = RewardTemplate_GetRewardSpace(tNjThPk_CopyReward)
		local sNjThPK_Space = string.format(tNjThPk_Text["NotSpace"],nNjThPK_Space)
		Sys_MsgBox(sNjThPK_Space)
		return
	end
	if RewardTemplate_UseItemAndMsg(tNjThPk_CopyReward) then
		--领奖进度+1
		Task_AddStatistic(tNjThPk_Cont["Stc"]["RRewardEvent"],tNjThPk_Cont["Stc"]["RRewardData"],1,1)
	end
end

function NjThPK_RandomTrans()
	if not Sys_ChkFullTime(tNjThPk_Cont["ActTime"]) then
		return
	end
	local nNjThPK_UserId = Get_UserId()
	local nRandom = math.random(1,6)
    local nMapId = tNjThPk_Cont["Map"]["MapId"]
    local nPosx = tNjThPk_Cont["RandomTrans"][nRandom]["PosX"]
    local nPosy = tNjThPk_Cont["RandomTrans"][nRandom]["PosY"]
    User_UserRandBoundTrans(nMapId,nPosx,nPosy,2,2,1,nNjThPK_UserId)
end
-----------------------------------------------------------------------------------------------------------------------------



--忍者卷轴
tItem[3330928] = tItem[3330928] or {}
tItem[3330928]["Function"] = function(nItemId)
	--加buff
	--每次使用加100生命 一个stc记录当前层数 当前没有buff就重置层数
	local nNjThPK_UserId = Get_UserId()
	if not NjThPK_JudgePro(nNjThPK_UserId) then
		return
	end
	if not Sys_ChkFullTime(tNjThPk_Cont["ActTime"]) then
		Item_DelAllItemByType(nItemId,nNjThPK_UserId)
		return
	end
	local nNjThPK_Event = tNjThPk_Cont["Stc"]["ScoreEvent"]
	local nNjThPK_Data = tNjThPk_Cont["Stc"]["ScoreData"]
	local nNjThPK_Score = Get_UserStatisticValue(nNjThPK_Event,nNjThPK_Data,nNjThPK_UserId)
	if not NjThPK_ChkMap(nNjThPK_UserId) then
		--只能在地图使用
		--否则只加积分
		if RewardTemplate_UseItemAndMsg(tNjThPk_UseScroll) then
			Task_SetStatistic(tNjThPk_Cont["Stc"]["ScoreEvent"],tNjThPk_Cont["Stc"]["ScoreData"],nNjThPK_Score+10,1,nNjThPK_UserId)
			NjThPK_RefreshRank(nNjThPK_UserId,10,1,4)
			Sys_MsgBox(tNjThPk_Text["UseScroll"])
			--Sys_MsgBox(tNjThPk_Text["NotMap"])
		end
		return
	end
	--每次使用都在上一个buff之上加个100血上限
	local sNjThPK_BuffPower = tNjThPk_Text["Buff"]
	if RewardTemplate_UseItemAndMsg(tNjThPk_UseScroll) then
		if not User_ChkRoleStatus(138,nNjThPK_UserId) then
			User_AddRoleStatus(138,100,30,0,0,0,0,0,0,nNjThPK_UserId)
			sNjThPK_BuffPower = string.format(tNjThPk_Text["Buff"],100)
		else
			local nNjThPK_StatusLev = Get_UserRoleStatusPower(138,nNjThPK_UserId)
			User_DelRoleStatus(138,nNjThPK_UserId)
			User_AddRoleStatus(138,nNjThPK_StatusLev+100,30,0,0,0,0,0,0,nNjThPK_UserId)
			sNjThPK_BuffPower = string.format(tNjThPk_Text["Buff"],nNjThPK_StatusLev+100)
		end
		Task_SetStatistic(tNjThPk_Cont["Stc"]["ScoreEvent"],tNjThPk_Cont["Stc"]["ScoreData"],nNjThPK_Score+10,1,nNjThPK_UserId)
		NjThPK_RefreshRank(nNjThPK_UserId,10,1,4)
		Sys_MsgBox(sNjThPK_BuffPower)
	end
	
end

--主npc
tNpcGossip[26553] = tNpcGossip[26553] or DefaultNpc:new{}
tNpcGossip[26553]["OptionHidden"] = 1

--活动前
tNpcGossip[26553]["DialogueText"] = tNjThPk_Text[26553]
tNpcGossip[26553]["Text1-1"] = {111,112,113,114,115,116,117,118}
tNpcGossip[26553]["tOption1-1"] = {111}
tNpcGossip[26553]["ChkFunc1-1"] = function()
	return CommonFunc_GetBeforeActivityTime(tNjThPk_Cont["ActTime"])
end
--活动后
tNpcGossip[26553]["Text1-2"] = {111,121}
tNpcGossip[26553]["tOption1-2"] = {121}
tNpcGossip[26553]["ChkFunc1-2"] = function()
	return not Sys_ChkFullTime(tNjThPk_Cont["ActTime"])
end
--活动中
tNpcGossip[26553]["Text1-3"] = {111,112,113,114,115,116,117,118}
tNpcGossip[26553]["tOption1-3"] = {131,132,133,134}
tNpcGossip[26553]["ChkFunc1-3"] = function()
	local nNjThPK_UserId = Get_UserId()
	return Sys_ChkFullTime(tNjThPk_Cont["ActTime"]) and (User_JudgeLevelAndMetempsychosis(tNjThPk_Cont["Lev"],0,nNjThPK_UserId))
end
--进入地图
tNpcGossip[26553]["OptionFunc131"] = "NjThPK_EnterMap"
--2-1游戏规则
tNpcGossip[26553]["OptionPoint132"] = "2-1"
--查看忍者积分奖励
tNpcGossip[26553]["OptionPoint133"] = "3-1"
--查看非忍者积分奖励
tNpcGossip[26553]["OptionPoint134"] = "5-1"

tNpcGossip[26553]["Text1-4"] = {111,112,113,114,115,116,117,118}
tNpcGossip[26553]["tOption1-4"] = {141}

--游戏规则
tNpcGossip[26553]["Text2-1"] = {211,212,213,214,215,216,217,218,219}
tNpcGossip[26553]["tOption2-1"] = {211}
--回主对话
tNpcGossip[26553]["OptionPoint211"] = "1-3"

--忍者积分奖励领取
tNpcGossip[26553]["Text3-1"] = {311,312,313,314,315,316,317,318,319,3110,3111,3112,3113,3114}
tNpcGossip[26553]["tOption3-1"] = {311,312}
tNpcGossip[26553]["ChkFunc3-1"] = function()
	local nNjThPK_UserId = Get_UserId()
	if not NjThPK_JudgePro(nNjThPK_UserId) then 
		tNpcGossip[26553]["tOption3-1"] = {312}
		tNpcGossip[26553]["Text3-1"] = {311,312,313,314,315,316,317,318,319,3110,3111,3112,3113}
	else
		local nNjThPK_RewardLev = Get_UserStatisticValue(tNjThPk_Cont["Stc"]["SRewardEvent"],tNjThPk_Cont["Stc"]["SRewardData"],nNjThPK_UserId) or 0
		local nNjThPK_Score = Get_UserStatisticValue(tNjThPk_Cont["Stc"]["ScoreEvent"],tNjThPk_Cont["Stc"]["ScoreData"],nNjThPK_UserId)
		tNpcGossip[26553]["Text3-1"] = {311,312,313,314,315,316,317,318,319,3110,3111,3112,3113,3114}
		tNpcGossip[26553]["Text3114"] = string.format(tNjThPk_Text[26553]["Text3114"],nNjThPK_Score)
		if NjThPK_ChkLevel(nNjThPK_Score) > nNjThPK_RewardLev then
			tNpcGossip[26553]["tOption3-1"] = {311}
			tNpcGossip[26553]["Option311"] = string.format(tNjThPk_Text[26553]["Option311"],nNjThPK_RewardLev+1)
		else
			tNpcGossip[26553]["tOption3-1"] = {312}
		end
	end
	return true
end	
--选择是否翻倍对话
tNpcGossip[26553]["OptionPoint311"] = "3-2"

--
tNpcGossip[26553]["Text3-2"] = {111,321}
tNpcGossip[26553]["tOption3-2"] = {321,322,323}
tNpcGossip[26553]["ChkFunc3-2"] = function()
	--对白的赋值
	local nNjThPK_UserId = Get_UserId()
	local sPro = "Ninja"
	if NjThPK_JudgePro(nNjThPK_UserId) then
		sPro = "Ninja"
	else
		sPro = "Other"
	end
	local nNjThPK_RewardLev = Get_UserStatisticValue(tNjThPk_Cont["Stc"]["SRewardEvent"],tNjThPk_Cont["Stc"]["SRewardData"],nNjThPK_UserId)
	local sReward = tNjThPk_Text[26553][sPro][nNjThPK_RewardLev+1]
	--英语为赠点
	local nGoldCost = tNjThPk_ScoreReward["Ninja"][nNjThPK_RewardLev+1][2]["CostEMoneyMono"]["Value"]
	--X万银两
	local nSoulCost = tNjThPk_ScoreReward["Ninja"][nNjThPK_RewardLev+1][3]["DeleteItem"][1]["Id"] - 4200000
	local nSoulNum =  tNjThPk_ScoreReward["Ninja"][nNjThPK_RewardLev+1][3]["DeleteItem"][1]["ItemNum"] or 1
	
	tNpcGossip[26553]["Text321"] = string.format(tNjThPk_Text[26553]["Text321"],nNjThPK_RewardLev+1,sReward,nGoldCost,nSoulNum,nSoulCost)
	tNpcGossip[26553]["Option322"] = string.format(tNjThPk_Text[26553]["Option322"],nGoldCost)
	tNpcGossip[26553]["Option323"] = string.format(tNjThPk_Text[26553]["Option323"],nSoulNum,nSoulCost)
	return true
end
--直接领取对白二次确认
tNpcGossip[26553]["OptionPoint321"] = "3-3"
--金币二次确认
tNpcGossip[26553]["OptionPoint322"] = "3-4"
--灵珠或者天石二次确认
tNpcGossip[26553]["OptionPoint323"] = "3-5"


--z直接领取
tNpcGossip[26553]["Text3-3"] = {111,331}
tNpcGossip[26553]["tOption3-3"] = {331,332}
tNpcGossip[26553]["OptionFunc331"] = "NjThPK_GiveSReward</N>1"
tNpcGossip[26553]["OptionPoint332"] = "3-2"

--
tNpcGossip[26553]["Text3-4"] = {111,341}
tNpcGossip[26553]["ChkFunc3-4"] = function()
	local nNjThPK_UserId = Get_UserId()
	local nNjThPK_RewardLev = Get_UserStatisticValue(tNjThPk_Cont["Stc"]["SRewardEvent"],tNjThPk_Cont["Stc"]["SRewardData"],nNjThPK_UserId)
	local nGoldCost = tNjThPk_ScoreReward["Ninja"][nNjThPK_RewardLev+1][2]["CostEMoneyMono"]["Value"]
	tNpcGossip[26553]["Text341"] = string.format(tNjThPk_Text[26553]["Text341"],nGoldCost)
	tNpcGossip[26553]["Option341"] = string.format(tNjThPk_Text[26553]["Option341"],nGoldCost)
	return true
end
tNpcGossip[26553]["tOption3-4"] = {341,332}
tNpcGossip[26553]["OptionFunc341"] = "NjThPK_GiveSReward</N>2"


tNpcGossip[26553]["Text3-5"] = {111,351}
tNpcGossip[26553]["ChkFunc3-5"] = function()
	local nNjThPK_UserId = Get_UserId()
	local nNjThPK_RewardLev = Get_UserStatisticValue(tNjThPk_Cont["Stc"]["SRewardEvent"],tNjThPk_Cont["Stc"]["SRewardData"],nNjThPK_UserId)
	local nSoulCost = tNjThPk_ScoreReward["Ninja"][nNjThPK_RewardLev+1][3]["DeleteItem"][1]["Id"] - 4200000
	local nSoulNum =  tNjThPk_ScoreReward["Ninja"][nNjThPK_RewardLev+1][3]["DeleteItem"][1]["ItemNum"] or 1
	tNpcGossip[26553]["Text351"] = string.format(tNjThPk_Text[26553]["Text351"],nSoulNum,nSoulCost)
	tNpcGossip[26553]["Option351"] = string.format(tNjThPk_Text[26553]["Option351"],nSoulNum,nSoulCost)
	return true
end
tNpcGossip[26553]["tOption3-5"] = {351,332}
tNpcGossip[26553]["OptionFunc351"] = "NjThPK_GiveSReward</N>3"

tNpcGossip[26553]["Text4-1"] = {111,411}
tNpcGossip[26553]["ChkFunc4-1"] = function()
	local nNjThPK_UserId = Get_UserId()
	local sPro
	if NjThPK_JudgePro(nNjThPK_UserId) then
		sPro = "Ninja"
	else
		sPro = "Other"
	end
	local nNjThPK_RewardLev = Get_UserStatisticValue(tNjThPk_Cont["Stc"]["SRewardEvent"],tNjThPk_Cont["Stc"]["SRewardData"],nNjThPK_UserId)
	local nNjThPK_ReqSoul = tNjThPk_ScoreReward[sPro][nNjThPK_RewardLev+1][3]["DeleteItem"][1]["Id"]
	local nNjThPK_ReqSoulNum =  tNjThPk_ScoreReward[sPro][nNjThPK_RewardLev+1][3]["DeleteItem"][1]["ItemNum"] or 1
	local nNjThPK_Soul = Get_CountItemType(nNjThPK_ReqSoul,0)
	--获取数量与价格 补上需要的天石
	local nNjThPK_Cost = tNjThPk_Cont["Price"][nNjThPK_ReqSoul] * (nNjThPK_ReqSoulNum - nNjThPK_Soul)
	local nNjThPK_ReqSoulName = nNjThPK_ReqSoul-4200000
	--阁下携带的X阶灵珠不足，是否花费XX天石立即购买足够的2阶灵珠？
	tNpcGossip[26553]["Text411"] = string.format(tNjThPk_Text[26553]["Text411"],nNjThPK_ReqSoulName,nNjThPK_Cost,nNjThPK_ReqSoulName)
	--立即花费xx天石翻倍领奖
	tNpcGossip[26553]["Option411"] = string.format(tNjThPk_Text[26553]["Option411"],nNjThPK_Cost)
	tNpcGossip[26553]["OptionFunc411"] = "NjThPK_GiveSReward2</N>"..nNjThPK_ReqSoul.."</N>"..nNjThPK_Soul.."</N>"..nNjThPK_Cost
	return true
end
tNpcGossip[26553]["tOption4-1"] = {411,332}
tNpcGossip[26553]["OptionFunc411"] = "NjThPK_GiveSReward2</N>"

--忍者积分奖励领取
tNpcGossip[26553]["Text5-1"] = {511,512,513,514,515,516,517,518,519,5110,5111,5112,5113,5114}
tNpcGossip[26553]["tOption5-1"] = {511,512}
tNpcGossip[26553]["ChkFunc5-1"] = function()
	local nNjThPK_UserId = Get_UserId()
	if NjThPK_JudgePro(nNjThPK_UserId) then 
		tNpcGossip[26553]["Text5-1"] = {511,512,513,514,515,516,517,518,519,5110,5111,5112,5113}
		tNpcGossip[26553]["tOption5-1"] = {512}
	else
		local nNjThPK_RewardLev = Get_UserStatisticValue(tNjThPk_Cont["Stc"]["SRewardEvent"],tNjThPk_Cont["Stc"]["SRewardData"],nNjThPK_UserId)
		local nNjThPK_Score = Get_UserStatisticValue(tNjThPk_Cont["Stc"]["ScoreEvent"],tNjThPk_Cont["Stc"]["ScoreData"],nNjThPK_UserId)
		tNpcGossip[26553]["Text5-1"] = {511,512,513,514,515,516,517,518,519,5110,5111,5112,5113,5114}
		tNpcGossip[26553]["Text5114"] = string.format(tNjThPk_Text[26553]["Text5114"],nNjThPK_Score)
		if NjThPK_ChkLevel(nNjThPK_Score) > nNjThPK_RewardLev then
			tNpcGossip[26553]["tOption5-1"] = {511}
			tNpcGossip[26553]["Option511"] = string.format(tNjThPk_Text[26553]["Option311"],nNjThPK_RewardLev+1)
		else
			tNpcGossip[26553]["tOption5-1"] = {512}
		end
	end
	return true
end	
--选择是否翻倍对话
tNpcGossip[26553]["OptionPoint511"] = "3-2"
-----
--忍者排行榜npc
tNpcGossip[26551] = tNpcGossip[26551] or DefaultNpc:new{}
tNpcGossip[26551]["OptionHidden"] = 1

tNpcGossip[26551]["DialogueText"] = tNjThPk_Text[26551]
tNpcGossip[26551]["Text1-1"] = {111,112,113,114,115,116,117,118,119,1110,1111,1112,1113,1114,1115}
tNpcGossip[26551]["tOption1-1"] = {111,112}
tNpcGossip[26551]["ChkFunc1-1"] = function()
	--刷新排名
	local tRank = RankingFunc_GetNowData(tNjThPk_Cont["Npc"]["NinjaRank"])
	for i = 1,10 do	
		local sUserName = tNjThPk_Text["NotRank"]
		local sNameTemp = ""
		if tRank[i] ~= nil then
			--
			--sUserName = tRank[i]["UserName"].."（"..tRank[i]["Score"].."分）\n"
			sNameTemp = string.gsub(tRank[i]["UserName"], "<", " ")
			sNameTemp = string.gsub(sNameTemp,">", " ")
			sUserName = string.format(tNjThPk_Text["RankName"],sNameTemp,tRank[i]["Score"])
		end
		local nNjThPK_Rank = NjThPK_ChgRank(i)
		local sReward = tNjThPk_Text[26551]["Reward"][nNjThPK_Rank]
		
		tNpcGossip[26551]["Text11"..tostring(i+3)] = Sys_Alignment(tostring(i),3,sReward,18,sUserName,45) 
		--Sys_CenterAline(tostring(i),3,nil,3,sReward,22,sUserName,48)
	end 
	local nNjThPK_UserId = Get_UserId()
	local nNjThPK_RRank = Get_UserStatisticValue(tNjThPk_Cont["Stc"]["RRewardEvent"],tNjThPk_Cont["Stc"]["RRewardData"],nNjThPK_UserId)

	if CommonFunc_GetAfterActivityTime(tNjThPk_Cont["ActTime"]) then
		local nNjThPK_Rank = NjThPK_GetRank(nNjThPK_UserId)
		if nNjThPK_Rank < 1 then
			tNpcGossip[26551]["tOption1-1"] = {111}
		elseif nNjThPK_RRank >= 1 then
			tNpcGossip[26551]["tOption1-1"] = {111}
		else
			tNpcGossip[26551]["tOption1-1"] = {111,112}
		end
	elseif Sys_ChkFullTime(tNjThPk_Cont["ActTime"]) then
		tNpcGossip[26551]["tOption1-1"] = {111}
	end
	return true
end
--额外奖励展示部分
tNpcGossip[26551]["OptionPoint111"] = "2-1" 
tNpcGossip[26551]["OptionPoint112"] = "3-1" 

tNpcGossip[26551]["Text2-1"] = {211,212,213,214,215,216,217,218,219}
tNpcGossip[26551]["tOption2-1"] = {211}
tNpcGossip[26551]["OptionPoint211"] = "1-1"

tNpcGossip[26551]["Text3-1"] = {311,312,313}
tNpcGossip[26551]["tOption3-1"] = {311,312,313}
tNpcGossip[26551]["ChkFunc3-1"] = function()
	--不在排名结束后
	if not CommonFunc_GetAfterActivityTime(tNjThPk_Cont["ActTime"]) then
		return
	end
	--忍者排行 非忍者职业
	local nNjThPK_UserId = Get_UserId()
	if not NjThPK_JudgePro(nNjThPK_UserId) then
		return false
	end
	local nNjThPK_RRank = Get_UserStatisticValue(tNjThPk_Cont["Stc"]["RRewardEvent"],tNjThPk_Cont["Stc"]["RRewardData"],nNjThPK_UserId)
	if nNjThPK_RRank >= 1 then
		--已领取
		return
	end
	local nNjThPK_Rank = NjThPK_GetRank(nNjThPK_UserId)
	if nNjThPK_Rank < 1 then 
		--未上榜
		return false
	end
	local nNjThPK_ChgRank = NjThPK_ChgRank(nNjThPK_Rank)
	local sExtraReward = tNjThPk_Text[26551]["ExtraReward"][nNjThPK_ChgRank]
	local sReward = tNjThPk_Text[26551]["Reward"][nNjThPK_ChgRank]
	--显示xx万银两
	local nMoneyPrice = tNjThPK_RankReward["Ninja"][nNjThPK_ChgRank][2]["CostEMoneyMono"]["Value"]
	local nSoulPrice = tNjThPK_RankReward["Ninja"][nNjThPK_ChgRank][3]["DeleteItem"][1]["ItemNum"]
	tNpcGossip[26551]["Text311"] = string.format(tNjThPk_Text[26551]["Text311"],nNjThPK_Rank,sReward)
	tNpcGossip[26551]["Text312"] = string.format(tNjThPk_Text[26551]["Text312"],nMoneyPrice,sExtraReward)
	tNpcGossip[26551]["Text313"] = string.format(tNjThPk_Text[26551]["Text313"],nSoulPrice)
	tNpcGossip[26551]["Option312"] =  string.format(tNjThPk_Text[26551]["Option312"],nMoneyPrice)
	tNpcGossip[26551]["Option313"] =  string.format(tNjThPk_Text[26551]["Option313"],nSoulPrice)
	return true
end
tNpcGossip[26551]["OptionPoint311"] = "4-1" 
tNpcGossip[26551]["OptionPoint312"] = "5-1"
tNpcGossip[26551]["OptionPoint313"] = "6-1"

tNpcGossip[26551]["Text4-1"] = {411}
tNpcGossip[26551]["tOption4-1"] = {411,412}
tNpcGossip[26551]["OptionFunc411"] = "NjThPK_GetRankReward</N>1"

tNpcGossip[26551]["Text5-1"] = {511}
tNpcGossip[26551]["tOption5-1"] = {511,512}
tNpcGossip[26551]["ChkFunc5-1"] = function()
		--不在排名结束后
	if not CommonFunc_GetAfterActivityTime(tNjThPk_Cont["ActTime"]) then
		return false
	end
	--忍者排行 非忍者职业
	local nNjThPK_UserId = Get_UserId()
	if not NjThPK_JudgePro(nNjThPK_UserId) then
		return false
	end
	local nNjThPK_Rank = NjThPK_GetRank(nNjThPK_UserId)
	if nNjThPK_Rank < 1 then 
		--未上榜
		return false
	end	
	local nNjThPK_ChgRank = NjThPK_ChgRank(nNjThPK_Rank)
	local sExtraReward = tNjThPk_Text[26551]["ExtraReward"][nNjThPK_ChgRank]
	local nMoneyPrice = tNjThPK_RankReward["Ninja"][nNjThPK_ChgRank][2]["CostEMoneyMono"]["Value"]
	tNpcGossip[26551]["Text511"] = string.format(tNjThPk_Text[26551]["Text511"],nMoneyPrice,sExtraReward)
	tNpcGossip[26551]["Option511"] =  string.format(tNjThPk_Text[26551]["Option511"],nMoneyPrice)	
	return true
end
tNpcGossip[26551]["OptionFunc511"] = "NjThPK_GetRankReward</N>2"

tNpcGossip[26551]["Text6-1"] = {611}
tNpcGossip[26551]["tOption6-1"] = {611,612}
tNpcGossip[26551]["ChkFunc6-1"] = function()
	--不在排名结束后
	if not CommonFunc_GetAfterActivityTime(tNjThPk_Cont["ActTime"]) then
		return
	end
	--忍者排行 非忍者职业
	local nNjThPK_UserId = Get_UserId()
	if not NjThPK_JudgePro(nNjThPK_UserId) then
		return false
	end
	local nNjThPK_Rank = NjThPK_GetRank(nNjThPK_UserId)
	if nNjThPK_Rank < 1 then 
		--未上榜
		return false
	end	
	local nNjThPK_ChgRank = NjThPK_ChgRank(nNjThPK_Rank)
	tNpcGossip[26551]["Text611"] = string.format(tNjThPk_Text[26551]["Text611"],tNjThPK_RankReward["Ninja"][nNjThPK_ChgRank][3]["DeleteItem"][1]["ItemNum"])
	tNpcGossip[26551]["Option611"] =  string.format(tNjThPk_Text[26551]["Option611"],tNjThPK_RankReward["Ninja"][nNjThPK_ChgRank][3]["DeleteItem"][1]["ItemNum"])	
	return true
end
tNpcGossip[26551]["OptionFunc611"] = "NjThPK_GetRankReward</N>3"

--不足 天石补齐
tNpcGossip[26551]["Text7-1"] = {711}
tNpcGossip[26551]["tOption7-1"] = {711,712}
tNpcGossip[26551]["ChkFunc7-1"] = function()
	--不在排名结束后
	if not CommonFunc_GetAfterActivityTime(tNjThPk_Cont["ActTime"]) then
		return
	end
	--忍者排行 非忍者职业
	local nNjThPK_UserId = Get_UserId()
	if not NjThPK_JudgePro(nNjThPK_UserId) then
		return false
	end
	local nNjThPK_Rank = NjThPK_GetRank(nNjThPK_UserId)
	if nNjThPK_Rank < 1 then 
		--未上榜
		return false
	end	
	local nNjThPK_ChgRank = NjThPK_ChgRank(nNjThPK_Rank)
	if nNjThPK_Rank < 1 then 
		--未上榜
		return false
	end	
	local nNjThPK_ChgRank = NjThPK_ChgRank(nNjThPK_Rank)
	local nNjThPK_ReqSoul =tNjThPK_RankReward["Ninja"][nNjThPK_ChgRank][3]["DeleteItem"][1]["Id"]
	local nNjThPK_ReqSoulNum =  tNjThPK_RankReward["Ninja"][nNjThPK_ChgRank][3]["DeleteItem"][1]["ItemNum"] 
	local nNjThPK_Soul = Get_CountItemType(nNjThPK_ReqSoul,0)
	--获取数量与价格 补上需要的天石
	local nNjThPK_Cost = tNjThPk_Cont["Price"][nNjThPK_ReqSoul] * (nNjThPK_ReqSoulNum - nNjThPK_Soul)
	tNpcGossip[26551]["Text711"] = string.format(tNjThPk_Text[26551]["Text711"],nNjThPK_Cost)
	tNpcGossip[26551]["Option711"] =  string.format(tNjThPk_Text[26551]["Option711"],nNjThPK_Cost)
	tNpcGossip[26551]["OptionFunc711"] = "NjThPK_GetRankReward2</N>"..nNjThPK_Soul.."</N>"..nNjThPK_Cost
	return true
end
tNpcGossip[26551]["OptionFunc711"] = "NjThPK_GetRankReward2</N>"



tNpcGossip[26552] = tNpcGossip[26552] or DefaultNpc:new{}
tNpcGossip[26552]["OptionHidden"] = 1

tNpcGossip[26552]["DialogueText"] = tNjThPk_Text[26552]
tNpcGossip[26552]["Text1-1"] = {111,112,113,114,115,116,117,118,119,1110,1111,1112,1113,1114,1115}
tNpcGossip[26552]["tOption1-1"] = {111,112}
tNpcGossip[26552]["ChkFunc1-1"] = function()
	--刷新排名
	local tRank = RankingFunc_GetNowData(tNjThPk_Cont["Npc"]["NotNinjaRank"])
	for i = 1,10 do
		
		local sUserName = tNjThPk_Text["NotRank"]
		local sNameTemp = ""
		if tRank[i] ~= nil then
			--
			--sUserName = tRank[i]["UserName"].."（"..tRank[i]["Score"].."分）\n"
			sNameTemp = string.gsub(tRank[i]["UserName"], "<", " ")
			sNameTemp = string.gsub(sNameTemp,">", " ")
			sUserName = string.format(tNjThPk_Text["RankName"],sNameTemp,tRank[i]["Score"])
		end
		local nNjThPK_Rank = NjThPK_ChgRank(i)
		local sReward = tNjThPk_Text[26552]["Reward"][nNjThPK_Rank]
		tNpcGossip[26552]["Text11"..tostring(i+3)] = Sys_Alignment(tostring(i),3,sReward,10,sUserName,50) 
	end
	local nNjThPK_UserId = Get_UserId()
	local nNjThPK_RRank = Get_UserStatisticValue(tNjThPk_Cont["Stc"]["RRewardEvent"],tNjThPk_Cont["Stc"]["RRewardData"],nNjThPK_UserId)

	if CommonFunc_GetAfterActivityTime(tNjThPk_Cont["ActTime"]) then
		local nNjThPK_Rank = NjThPK_GetRank(nNjThPK_UserId)
		if nNjThPK_Rank < 1 then
			tNpcGossip[26552]["tOption1-1"] = {111}
		elseif nNjThPK_RRank >= 1 then
			tNpcGossip[26552]["tOption1-1"] = {111}
		else
			tNpcGossip[26552]["tOption1-1"] = {111,112}
		end
	elseif Sys_ChkFullTime(tNjThPk_Cont["ActTime"]) then
		tNpcGossip[26552]["tOption1-1"] = {111}
	end
	return true
end
--额外奖励展示部分
tNpcGossip[26552]["OptionPoint111"] = "2-1" 
tNpcGossip[26552]["OptionPoint112"] = "3-1" 

tNpcGossip[26552]["Text2-1"] = {211,212,213,214,215,216,217,218,219}
tNpcGossip[26552]["tOption2-1"] = {211}
tNpcGossip[26552]["OptionPoint211"] = "1-1"

tNpcGossip[26552]["Text3-1"] = {311,312,313}
tNpcGossip[26552]["tOption3-1"] = {311,312,313}
tNpcGossip[26552]["ChkFunc3-1"] = function()
	--不在排名结束后
	if not CommonFunc_GetAfterActivityTime(tNjThPk_Cont["ActTime"]) then
		return
	end
	--忍者排行 非忍者职业
	local nNjThPK_UserId = Get_UserId()
	if NjThPK_JudgePro(nNjThPK_UserId) then
		return false
	end
	local nNjThPK_RRank = Get_UserStatisticValue(tNjThPk_Cont["Stc"]["RRewardEvent"],tNjThPk_Cont["Stc"]["RRewardData"],nNjThPK_UserId)
	if nNjThPK_RRank >= 1 then
		--已领取
		return
	end
	local nNjThPK_Rank = NjThPK_GetRank(nNjThPK_UserId)
	if nNjThPK_Rank < 1 then 
		--未上榜
		return false
	end
	local nNjThPK_ChgRank = NjThPK_ChgRank(nNjThPK_Rank)
	local sExtraReward = tNjThPk_Text[26552]["ExtraReward"][nNjThPK_ChgRank]
	local sReward = tNjThPk_Text[26552]["Reward"][nNjThPK_ChgRank]
	--显示xx万银两
	local nMoneyPrice = tNjThPK_RankReward["Other"][nNjThPK_ChgRank][2]["CostEMoneyMono"]["Value"]
	local nSoulPrice = tNjThPK_RankReward["Other"][nNjThPK_ChgRank][3]["DeleteItem"][1]["ItemNum"]
	tNpcGossip[26552]["Text311"] = string.format(tNjThPk_Text[26552]["Text311"],nNjThPK_Rank,sReward)
	tNpcGossip[26552]["Text312"] = string.format(tNjThPk_Text[26552]["Text312"],nMoneyPrice,sExtraReward)
	tNpcGossip[26552]["Text313"] = string.format(tNjThPk_Text[26552]["Text313"],nSoulPrice)
	tNpcGossip[26552]["Option312"] =  string.format(tNjThPk_Text[26552]["Option312"],nMoneyPrice)
	tNpcGossip[26552]["Option313"] =  string.format(tNjThPk_Text[26552]["Option313"],nSoulPrice)
	return true
end
tNpcGossip[26552]["OptionPoint311"] = "4-1" 
tNpcGossip[26552]["OptionPoint312"] = "5-1"
tNpcGossip[26552]["OptionPoint313"] = "6-1"

tNpcGossip[26552]["Text4-1"] = {411}
tNpcGossip[26552]["tOption4-1"] = {411,412}
tNpcGossip[26552]["OptionFunc411"] = "NjThPK_GetRankReward</N>1"

tNpcGossip[26552]["Text5-1"] = {511}
tNpcGossip[26552]["tOption5-1"] = {511,512}
tNpcGossip[26552]["ChkFunc5-1"] = function()
		--不在排名结束后
	if not CommonFunc_GetAfterActivityTime(tNjThPk_Cont["ActTime"]) then
		return
	end
	--忍者排行 非忍者职业
	local nNjThPK_UserId = Get_UserId()
	if  NjThPK_JudgePro(nNjThPK_UserId) then
		return false
	end
	local nNjThPK_Rank = NjThPK_GetRank(nNjThPK_UserId)
	if nNjThPK_Rank < 1 then 
		--未上榜
		return false
	end	
	local nNjThPK_ChgRank = NjThPK_ChgRank(nNjThPK_Rank)
	local sExtraReward = tNjThPk_Text[26552]["ExtraReward"][nNjThPK_ChgRank]
	local nMoneyPrice = tNjThPK_RankReward["Other"][nNjThPK_ChgRank][2]["CostEMoneyMono"]["Value"]
	tNpcGossip[26552]["Text511"] = string.format(tNjThPk_Text[26552]["Text511"],nMoneyPrice,sExtraReward)
	tNpcGossip[26552]["Option511"] =  string.format(tNjThPk_Text[26552]["Option511"],nMoneyPrice)	
	return true
end
tNpcGossip[26552]["OptionFunc511"] = "NjThPK_GetRankReward</N>2"

tNpcGossip[26552]["Text6-1"] = {611}
tNpcGossip[26552]["tOption6-1"] = {611,612}
tNpcGossip[26552]["ChkFunc6-1"] = function()
	--不在排名结束后
	if not CommonFunc_GetAfterActivityTime(tNjThPk_Cont["ActTime"]) then
		return
	end
	--忍者排行 非忍者职业
	local nNjThPK_UserId = Get_UserId()
	if  NjThPK_JudgePro(nNjThPK_UserId) then
		return false
	end
	local nNjThPK_Rank = NjThPK_GetRank(nNjThPK_UserId)
	if nNjThPK_Rank < 1 then 
		--未上榜
		return false
	end	
	local nNjThPK_ChgRank = NjThPK_ChgRank(nNjThPK_Rank)
	tNpcGossip[26552]["Text611"] = string.format(tNjThPk_Text[26552]["Text611"],tNjThPK_RankReward["Other"][nNjThPK_ChgRank][3]["DeleteItem"][1]["ItemNum"])
	tNpcGossip[26552]["Option611"] =  string.format(tNjThPk_Text[26552]["Option611"],tNjThPK_RankReward["Other"][nNjThPK_ChgRank][3]["DeleteItem"][1]["ItemNum"])	
	return true
end
tNpcGossip[26552]["OptionFunc611"] = "NjThPK_GetRankReward</N>3"

--不足 天石补齐
tNpcGossip[26552]["Text7-1"] = {711}
tNpcGossip[26552]["tOption7-1"] = {711,712}
tNpcGossip[26552]["ChkFunc7-1"] = function()
	--不在排名结束后
	if not CommonFunc_GetAfterActivityTime(tNjThPk_Cont["ActTime"]) then
		return
	end
	--忍者排行 非忍者职业
	local nNjThPK_UserId = Get_UserId()
	if  NjThPK_JudgePro(nNjThPK_UserId) then
		return false
	end
	local nNjThPK_Rank = NjThPK_GetRank(nNjThPK_UserId)
	if nNjThPK_Rank < 1 then 
		--未上榜
		return false
	end	
	local nNjThPK_ChgRank = NjThPK_ChgRank(nNjThPK_Rank)
	if nNjThPK_Rank < 1 then 
		--未上榜
		return false
	end	
	local nNjThPK_ChgRank = NjThPK_ChgRank(nNjThPK_Rank)
	local nNjThPK_ReqSoul =tNjThPK_RankReward["Ninja"][nNjThPK_ChgRank][3]["DeleteItem"][1]["Id"]
	local nNjThPK_ReqSoulNum =  tNjThPK_RankReward["Ninja"][nNjThPK_ChgRank][3]["DeleteItem"][1]["ItemNum"] 
	local nNjThPK_Soul = Get_CountItemType(nNjThPK_ReqSoul,0)
	--获取数量与价格 补上需要的天石
	local nNjThPK_Cost = tNjThPk_Cont["Price"][nNjThPK_ReqSoul] * (nNjThPK_ReqSoulNum - nNjThPK_Soul)
	tNpcGossip[26552]["Text711"] = string.format(tNjThPk_Text[26552]["Text711"],nNjThPK_Cost)
	tNpcGossip[26552]["Option711"] =  string.format(tNjThPk_Text[26552]["Option711"],nNjThPK_Cost)
	tNpcGossip[26552]["OptionFunc711"] = "NjThPK_GetRankReward2</N>"..nNjThPK_Soul.."</N>"..nNjThPK_Cost
	return true
end
tNpcGossip[26552]["OptionFunc711"] = "NjThPK_GetRankReward2</N>"


--副本内的npc 用于指路和介绍规则
tNpcGossip[26624] = tNpcGossip[26624] or DefaultNpc:new{}
tNpcGossip[26624]["OptionHidden"] = 1

tNpcGossip[26624]["DialogueText"] = tNjThPk_Text[26624]

--介绍规则
tNpcGossip[26624]["Text1-1"] = {111,112,113,114,115,116,117,118,119}
tNpcGossip[26624]["tOption1-1"] = {111}
tNpcGossip[26624]["OptionFunc111"] = "NjThPK_RandomTrans"



local tNjThPk_KillTable = {}
--小怪的击杀逻辑
tNjThPk_KillTable[1] = {}
tNjThPk_KillTable[1]["ActivityTime"] = tNjThPk_Cont["ActTime"]
tNjThPk_KillTable[1]["Function"] = NjThPK_KillMonster
tNjThPk_KillTable[1]["MonsterId"] = {1321}
--boss击杀逻辑
tNjThPk_KillTable[2] = {}
tNjThPk_KillTable[2]["ActivityTime"] = tNjThPk_Cont["ActTime"]
tNjThPk_KillTable[2]["Function"] = NjThPK_KillBoss
tNjThPk_KillTable[2]["MonsterId"] = {1322}


tTrap[2594] = tTrap[2594] or {}
tTrap[2594]["Function"] = function()
	local nUserId = Get_UserId()
	local sFunc = "NjThPK_Kick"
	Sys_MsgBox(tNjThPk_Text["Leave"],"NjThPK_Kick</N>"..nUserId,nil,nUserId)
end

--时间自检清场  
local tNjThPk_KickTable = {}
tNjThPk_KickTable["ActivityTime"] = tNjThPk_Cont["ActTime"]
tNjThPk_KickTable["Type"] = 4
tNjThPk_KickTable["TimeType"] = 4
tNjThPk_KickTable["Multiple"] = {}
tNjThPk_KickTable["Multiple"][1]  = "20:30 20:33"
tNjThPk_KickTable["Func"] = NjThPK_Clean

--时间自检 在活动开始前3分钟开始放置npc 
local tNjThPk_SetTable = {}
tNjThPk_SetTable["ActivityTime"] = tNjThPk_Cont["ActTime"]
tNjThPk_SetTable["Type"] = 1
tNjThPk_SetTable["TimeType"] = 4
tNjThPk_SetTable["Multiple"] = {}
tNjThPk_SetTable["Multiple"][1]  = "19:57 19:59"
tNjThPk_SetTable["Func"] = NjThPK_SetNpc

table.insert(tSystemTime_InitialData,tNjThPk_KickTable)
table.insert(tSystemTime_InitialData,tNjThPk_SetTable)
--怪物击杀触发表
table.insert(tMonsterDrop_AreaLoad,tNjThPk_KillTable[1])
table.insert(tMonsterDrop_AreaLoad,tNjThPk_KillTable[2])

--杀人触发
tUserKilled["tFunction"] = tUserKilled["tFunction"] or {}
table.insert(tUserKilled["tFunction"],NjThPK_KillPlayer)