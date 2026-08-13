------------------------------------------------------------------------------------
--Name：           190417[英文征服][活动脚本]5月玩灵珠有好礼（5月28日-6月10日）
--Creator:      杨艳
--Created:     2019/04/28
------------------------------------------------------------------------------------


--命名前缀
--DragonGift_

--logid： 12001408

--掩码说明
-- 19474 ：记录玩家积分
-- 19475 ：背包信

--npc：

-------------------------------------------数据部分-----------------------------------------

--基本数据
local tDragonGift_Data = {}

	-- 转盘积分
	tDragonGift_Data["Score"] = {}
	tDragonGift_Data["Score"][3321215] = 1
	tDragonGift_Data["Score"][3321216] = 8
	tDragonGift_Data["Score"][3321217] = 90
	
	tDragonGift_Data["Goto"] = {}
	tDragonGift_Data["Goto"][1] = {}
	tDragonGift_Data["Goto"][1]["CellX"] = 376 
	tDragonGift_Data["Goto"][1]["CellY"] = 453
	tDragonGift_Data["Goto"][1]["MapId"] = 1002
	
	tDragonGift_Data["Roulette"] = {}
	tDragonGift_Data["Roulette"][7033] = 3321215
	tDragonGift_Data["Roulette"][7034] = 3321216
	tDragonGift_Data["Roulette"][7035] = 3321217
	
	tDragonGift_Data["GlobalId"] = {}
	tDragonGift_Data["GlobalId"][1] = 53371
	tDragonGift_Data["GlobalId"][2] = 53372
	
	-- tDragonGift_Data["Goto"][2]["CellX"] = 
	-- tDragonGift_Data["Goto"][2]["CellY"] = 
	-- tDragonGift_Data["Goto"][2]["MapId"] = 1002
	
--奖励表
local tDragonGift_Award = {}
	
	tDragonGift_Award["PointsItem"] = {}
	
	tDragonGift_Award["PointsItem"][3321215] = {}
	tDragonGift_Award["PointsItem"][3321215]["LogId"] = 12001408
	tDragonGift_Award["PointsItem"][3321215]["RewardItem"] = {}
	tDragonGift_Award["PointsItem"][3321215]["RewardItem"][1] = {}
	tDragonGift_Award["PointsItem"][3321215]["RewardItem"][1]["Id"] = 3321214
	tDragonGift_Award["PointsItem"][3321215]["RewardItem"][1]["Attr"] = "0 1"
	tDragonGift_Award["PointsItem"][3321215]["RewardEffect"]={}
	tDragonGift_Award["PointsItem"][3321215]["RewardEffect"]["Effect"] = "angelwing"
	
	tDragonGift_Award["PointsItem"][3321216] = {}
	tDragonGift_Award["PointsItem"][3321216]["LogId"] = 12001408
	tDragonGift_Award["PointsItem"][3321216]["RewardItem"] = {}
	tDragonGift_Award["PointsItem"][3321216]["RewardItem"][1] = {}
	tDragonGift_Award["PointsItem"][3321216]["RewardItem"][1]["Id"] = 3321214
	tDragonGift_Award["PointsItem"][3321216]["RewardItem"][1]["Attr"] = "0 8"
	tDragonGift_Award["PointsItem"][3321216]["RewardEffect"]={}
	tDragonGift_Award["PointsItem"][3321216]["RewardEffect"]["Effect"] = "angelwing"
	
	tDragonGift_Award["PointsItem"][3321217] = {}
	tDragonGift_Award["PointsItem"][3321217]["LogId"] = 12001408
	tDragonGift_Award["PointsItem"][3321217]["RewardItem"] = {}
	tDragonGift_Award["PointsItem"][3321217]["RewardItem"][1] = {}
	tDragonGift_Award["PointsItem"][3321217]["RewardItem"][1]["Id"] = 3321214
	tDragonGift_Award["PointsItem"][3321217]["RewardItem"][1]["Attr"] = "0 90"
	tDragonGift_Award["PointsItem"][3321217]["RewardEffect"]={}
	tDragonGift_Award["PointsItem"][3321217]["RewardEffect"]["Effect"] = "angelwing"
	
	
	-- ===5120积分币礼包
	-- ===索引: 3321218
	-- ===删除: 3321218,1
	-- ===
	-- tDragonGift_Award[3321218] = {}
	-- tDragonGift_Award[3321218]["LogId"] = 12001408
	-- tDragonGift_Award[3321218]["DeleteItem"] = {}
	-- tDragonGift_Award[3321218]["DeleteItem"][1] = {}
	-- tDragonGift_Award[3321218]["DeleteItem"][1]["Id"] = 3321218 -- 【库】5120积分币礼包[属性:9]
	-- tDragonGift_Award[3321218]["RewardItem"] = {}
	-- tDragonGift_Award[3321218]["RewardItem"][1] = {}
	-- tDragonGift_Award[3321218]["RewardItem"][1]["Id"] = 3321214 -- 【库】积分币[属性:9]【表格】积分币
	-- tDragonGift_Award[3321218]["RewardItem"][1]["Attr"] = "0 5120" -- 积分币*5120
	-- tDragonGift_Award[3321218]["RewardEffect"] = {}
	-- tDragonGift_Award[3321218]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	-- tDragonGift_Award[3321218]["RewardEffect"]["Effect"] = "angelwing"


	-- ===每日积分冠军礼包
	-- ===索引: 3321219
	-- ===删除: 3321219,1
	-- ===
	tDragonGift_Award[3321219] = {}
	tDragonGift_Award[3321219]["LogId"] = 12001408
	tDragonGift_Award[3321219]["DeleteItem"] = {}
	tDragonGift_Award[3321219]["DeleteItem"][1] = {}
	tDragonGift_Award[3321219]["DeleteItem"][1]["Id"] = 3321219 -- 【库】每日积分冠军礼包[属性:9]
	tDragonGift_Award[3321219]["RewardItem"] = {}
	tDragonGift_Award[3321219]["RewardItem"][1] = {}
	tDragonGift_Award[3321219]["RewardItem"][1]["Id"] = 4200003 -- 【库】P3Anima[属性:72]【表格】3阶灵珠*1
	tDragonGift_Award[3321219]["RewardItem"][1]["Attr"] = "0 1" -- P3Anima*1
	tDragonGift_Award[3321219]["RewardItem"][2] = {}
	tDragonGift_Award[3321219]["RewardItem"][2]["Id"] = 3009100 -- 【库】GinsengFruit[属性:9]【表格】人参果*20
	tDragonGift_Award[3321219]["RewardItem"][2]["Attr"] = "0 20" -- GinsengFruit*20
	tDragonGift_Award[3321219]["RewardStrengthValue"] = {}
	tDragonGift_Award[3321219]["RewardStrengthValue"]["Value"] = 5000 -- 气力值
	tDragonGift_Award[3321219]["RewardEffect"] = {}
	tDragonGift_Award[3321219]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDragonGift_Award[3321219]["RewardEffect"]["Effect"] = "angelwing"


	-- ===每日积分亚军礼包
	-- ===索引: 3321220
	-- ===删除: 3321220,1
	-- ===
	tDragonGift_Award[3321220] = {}
	tDragonGift_Award[3321220]["LogId"] = 12001408
	tDragonGift_Award[3321220]["DeleteItem"] = {}
	tDragonGift_Award[3321220]["DeleteItem"][1] = {}
	tDragonGift_Award[3321220]["DeleteItem"][1]["Id"] = 3321220 -- 【库】每日积分亚军礼包[属性:9]
	tDragonGift_Award[3321220]["RewardItem"] = {}
	tDragonGift_Award[3321220]["RewardItem"][1] = {}
	tDragonGift_Award[3321220]["RewardItem"][1]["Id"] = 4200002 -- 【库】P2Anima[属性:72]【表格】2阶灵珠*1
	tDragonGift_Award[3321220]["RewardItem"][1]["Attr"] = "0 1" -- P2Anima*1
	tDragonGift_Award[3321220]["RewardItem"][2] = {}
	tDragonGift_Award[3321220]["RewardItem"][2]["Id"] = 3009100 -- 【库】GinsengFruit[属性:9]【表格】人参果*15
	tDragonGift_Award[3321220]["RewardItem"][2]["Attr"] = "0 15" -- GinsengFruit*15
	tDragonGift_Award[3321220]["RewardStrengthValue"] = {}
	tDragonGift_Award[3321220]["RewardStrengthValue"]["Value"] = 4000 -- 气力值
	tDragonGift_Award[3321220]["RewardEffect"] = {}
	tDragonGift_Award[3321220]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDragonGift_Award[3321220]["RewardEffect"]["Effect"] = "angelwing"


	-- ===每日积分季军礼包
	-- ===索引: 3321221
	-- ===删除: 3321221,1
	-- ===
	tDragonGift_Award[3321221] = {}
	tDragonGift_Award[3321221]["LogId"] = 12001408
	tDragonGift_Award[3321221]["DeleteItem"] = {}
	tDragonGift_Award[3321221]["DeleteItem"][1] = {}
	tDragonGift_Award[3321221]["DeleteItem"][1]["Id"] = 3321221 -- 【库】每日积分季军礼包[属性:9]
	tDragonGift_Award[3321221]["RewardItem"] = {}
	tDragonGift_Award[3321221]["RewardItem"][1] = {}
	tDragonGift_Award[3321221]["RewardItem"][1]["Id"] = 4200001 -- 【库】P1Anima[属性:72]【表格】1阶灵珠*1
	tDragonGift_Award[3321221]["RewardItem"][1]["Attr"] = "0 1" -- P1Anima*1
	tDragonGift_Award[3321221]["RewardItem"][2] = {}
	tDragonGift_Award[3321221]["RewardItem"][2]["Id"] = 3009100 -- 【库】GinsengFruit[属性:9]【表格】人参果*10
	tDragonGift_Award[3321221]["RewardItem"][2]["Attr"] = "0 10" -- GinsengFruit*10
	tDragonGift_Award[3321221]["RewardStrengthValue"] = {}
	tDragonGift_Award[3321221]["RewardStrengthValue"]["Value"] = 3000 -- 气力值
	tDragonGift_Award[3321221]["RewardEffect"] = {}
	tDragonGift_Award[3321221]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDragonGift_Award[3321221]["RewardEffect"]["Effect"] = "angelwing"


	-- ===每日积分精英礼包
	-- ===索引: 3321222
	-- ===删除: 3321222,1
	-- ===
	tDragonGift_Award[3321222] = {}
	tDragonGift_Award[3321222]["LogId"] = 12001408
	tDragonGift_Award[3321222]["DeleteItem"] = {}
	tDragonGift_Award[3321222]["DeleteItem"][1] = {}
	tDragonGift_Award[3321222]["DeleteItem"][1]["Id"] = 3321222 -- 【库】每日积分精英礼包[属性:9]
	tDragonGift_Award[3321222]["RewardItem"] = {}
	tDragonGift_Award[3321222]["RewardItem"][1] = {}
	tDragonGift_Award[3321222]["RewardItem"][1]["Id"] = 3009100 -- 【库】GinsengFruit[属性:9]【表格】人参果*8
	tDragonGift_Award[3321222]["RewardItem"][1]["Attr"] = "0 8" -- GinsengFruit*8
	tDragonGift_Award[3321222]["RewardStrengthValue"] = {}
	tDragonGift_Award[3321222]["RewardStrengthValue"]["Value"] = 2000 -- 气力值
	tDragonGift_Award[3321222]["RewardEffect"] = {}
	tDragonGift_Award[3321222]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDragonGift_Award[3321222]["RewardEffect"]["Effect"] = "angelwing"


	-- ===每日积分优秀礼包
	-- ===索引: 3321223
	-- ===删除: 3321223,1
	-- ===
	tDragonGift_Award[3321223] = {}
	tDragonGift_Award[3321223]["LogId"] = 12001408
	tDragonGift_Award[3321223]["DeleteItem"] = {}
	tDragonGift_Award[3321223]["DeleteItem"][1] = {}
	tDragonGift_Award[3321223]["DeleteItem"][1]["Id"] = 3321223 -- 【库】每日积分优秀礼包[属性:9]
	tDragonGift_Award[3321223]["RewardItem"] = {}
	tDragonGift_Award[3321223]["RewardItem"][1] = {}
	tDragonGift_Award[3321223]["RewardItem"][1]["Id"] = 3009100 -- 【库】GinsengFruit[属性:9]【表格】人参果*5
	tDragonGift_Award[3321223]["RewardItem"][1]["Attr"] = "0 5" -- GinsengFruit*5
	tDragonGift_Award[3321223]["RewardStrengthValue"] = {}
	tDragonGift_Award[3321223]["RewardStrengthValue"]["Value"] = 1000 -- 气力值
	tDragonGift_Award[3321223]["RewardEffect"] = {}
	tDragonGift_Award[3321223]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDragonGift_Award[3321223]["RewardEffect"]["Effect"] = "angelwing"


	-- ===10点气力值包
	-- ===索引: 3321224
	-- ===删除: 3321224,1
	-- ===
	tDragonGift_Award[3321224] = {}
	tDragonGift_Award[3321224]["LogId"] = 12001408
	tDragonGift_Award[3321224]["DeleteItem"] = {}
	tDragonGift_Award[3321224]["DeleteItem"][1] = {}
	tDragonGift_Award[3321224]["DeleteItem"][1]["Id"] = 3321224 -- 【库】10点气力值包[属性:9]
	tDragonGift_Award[3321224]["RewardStrengthValue"] = {}
	tDragonGift_Award[3321224]["RewardStrengthValue"]["Value"] = 10 -- 气力值
	tDragonGift_Award[3321224]["RewardEffect"] = {}
	tDragonGift_Award[3321224]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDragonGift_Award[3321224]["RewardEffect"]["Effect"] = "angelwing"


	-- ===5000点气力值包
	-- ===索引: 3321225
	-- ===删除: 3321225,1
	-- ===
	tDragonGift_Award[3321225] = {}
	tDragonGift_Award[3321225]["LogId"] = 12001408
	tDragonGift_Award[3321225]["DeleteItem"] = {}
	tDragonGift_Award[3321225]["DeleteItem"][1] = {}
	tDragonGift_Award[3321225]["DeleteItem"][1]["Id"] = 3321225 -- 【库】5000点气力值包[属性:9]
	tDragonGift_Award[3321225]["RewardStrengthValue"] = {}
	tDragonGift_Award[3321225]["RewardStrengthValue"]["Value"] = 5000 -- 气力值
	tDragonGift_Award[3321225]["RewardEffect"] = {}
	tDragonGift_Award[3321225]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDragonGift_Award[3321225]["RewardEffect"]["Effect"] = "angelwing"


	-- ===3000天石（赠）包
	-- ===索引: 3321226
	-- ===删除: 3321226,1
	-- ===
	tDragonGift_Award[3321226] = {}
	tDragonGift_Award[3321226]["LogId"] = 12001408
	tDragonGift_Award[3321226]["DeleteItem"] = {}
	tDragonGift_Award[3321226]["DeleteItem"][1] = {}
	tDragonGift_Award[3321226]["DeleteItem"][1]["Id"] = 3321226 -- 【库】3000天石（赠）包[属性:9]
	tDragonGift_Award[3321226]["RewardEMoneyMono"] = {}
	tDragonGift_Award[3321226]["RewardEMoneyMono"]["Value"] = 3000 -- 天石（赠）
	tDragonGift_Award[3321226]["EmoneyLog"] = "10000	0415	0	0	3000	"	
	tDragonGift_Award[3321226]["RewardEffect"] = {}
	tDragonGift_Award[3321226]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDragonGift_Award[3321226]["RewardEffect"]["Effect"] = "angelwing"


	-- ===10个良品神纹源晶包
	-- ===索引: 3321227
	-- ===删除: 3321227,1
	-- ===
	tDragonGift_Award[3321227] = {}
	tDragonGift_Award[3321227]["LogId"] = 12001408
	tDragonGift_Award[3321227]["DeleteItem"] = {}
	tDragonGift_Award[3321227]["DeleteItem"][1] = {}
	tDragonGift_Award[3321227]["DeleteItem"][1]["Id"] = 3321227 -- 【库】10个良品神纹源晶包[属性:9]
	tDragonGift_Award[3321227]["RewardItem"] = {}
	tDragonGift_Award[3321227]["RewardItem"][1] = {}
	tDragonGift_Award[3321227]["RewardItem"][1]["Id"] = 3311820 -- 【库】MysticRuneStone[属性:9]【表格】赠良品神纹源晶*10
	tDragonGift_Award[3321227]["RewardItem"][1]["Attr"] = "0 10" -- MysticRuneStone*10
	tDragonGift_Award[3321227]["RewardEffect"] = {}
	tDragonGift_Award[3321227]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDragonGift_Award[3321227]["RewardEffect"]["Effect"] = "angelwing"


	-- ===MythicBeastPack
	-- ===索引: 3321231
	-- ===删除: 3321231,1
	-- ===
	tDragonGift_Award[3321231] = {}
	tDragonGift_Award[3321231]["LogId"] = 12001408
	tDragonGift_Award[3321231]["DeleteItem"] = {}
	tDragonGift_Award[3321231]["DeleteItem"][1] = {}
	tDragonGift_Award[3321231]["DeleteItem"][1]["Id"] = 3321231 -- 【库】MythicBeastPack[属性:9]
	tDragonGift_Award[3321231]["RewardItem"] = {}
	tDragonGift_Award[3321231]["RewardItem"][1] = {}
	tDragonGift_Award[3321231]["RewardItem"][1]["Id"] = 200580 -- 【库】MythicBeast[属性:8]【表格】永久1%神佑赠MythicBeast
	tDragonGift_Award[3321231]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑MythicBeast(赠)*1
	tDragonGift_Award[3321231]["RewardEffect"] = {}
	tDragonGift_Award[3321231]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDragonGift_Award[3321231]["RewardEffect"]["Effect"] = "angelwing"

--掩码表配置
local tDragonGift_Stc = {}
	tDragonGift_Stc["EventType"] = {}
	tDragonGift_Stc["DataType"] = {}
	tDragonGift_Stc["Data"] = {}
	--积分掩码
	tDragonGift_Stc["EventType"][1] = 194
	tDragonGift_Stc["DataType"][1] = 74
	--积分超过100记录排行榜
	tDragonGift_Stc["Data"][1] = 100
		
--log表
local tDragonGift_Log = {}	

	tDragonGift_Log["DelItem"] = "0,0,%d,1,12001408,2,0,0"	
	tDragonGift_Log["DelAllItem"] = "0,0,%d,%d,12001408,2,0,0"	

	-- 3321215,'低阶灵珠转盘	100000406	
	-- 3321216,'中阶灵珠转盘	100000407
	-- 3321217,'高阶灵珠转盘	100000408
	tDragonGift_Log["UseRoulette"] = {}
	tDragonGift_Log["UseRoulette"][3321215] = "10000	0406	0	0	1	"
	tDragonGift_Log["UseRoulette"][3321216] = "10000	0407	0	0	1	"
	tDragonGift_Log["UseRoulette"][3321217] = "10000	0408	0	0	1	"


--排行榜
	--积分排行榜   
	tRankingFunc_Info[24189] = {}
	tRankingFunc_Info[24189]["ActiveTime"] = tActivityTime["DragonGift"]["RankActivityTime"]
	tRankingFunc_Info[24189]["DayTime"] = {}
	tRankingFunc_Info[24189]["DayTime"][1] = "00:00 23:59"
	tRankingFunc_Info[24189]["ResetTime"] = {}
	tRankingFunc_Info[24189]["ResetTime"][1] = "00:00 00:05"
	tRankingFunc_Info[24189]["Global"] = {53388,53389,53390,53391}
	tRankingFunc_Info[24189]["RankNum"] = 10
	
 -- 572138	 单日第一奖励		3321219 
 -- 572139	 单日第二奖励		3321220 
 -- 572140	 单日第三奖励		3321221 
 -- 572141	 单日第四-六奖励	3321222 
 -- 572142	 单日第七-十奖励	3321223 	
	tRankingFunc_Info[24189]["Mail"] = {}
	tRankingFunc_Info[24189]["Mail"]["ActiveTime"] = tActivityTime["DragonGift"]["RankActivityTime"]
	tRankingFunc_Info[24189]["Mail"]["RewardTime"] = {}
	tRankingFunc_Info[24189]["Mail"]["RewardTime"][1] = "00:00 00:05"
	tRankingFunc_Info[24189]["Mail"]["HaveFunc"] = 1

	tRankingFunc_Info[24189]["Mail"]["Reward"] = {}
	tRankingFunc_Info[24189]["Mail"]["Reward"][1] = {}
	tRankingFunc_Info[24189]["Mail"]["Reward"][1]["RewardRank"] = 1
	tRankingFunc_Info[24189]["Mail"]["Reward"][1]["ActionId"] = 572138
	tRankingFunc_Info[24189]["Mail"]["Reward"][1]["ExistDay"] = 2
	tRankingFunc_Info[24189]["Mail"]["Reward"][1]["Title"] = tDragonGift_Text["Mail"][1]["Title"]
	tRankingFunc_Info[24189]["Mail"]["Reward"][1]["Sender"] = tDragonGift_Text["Mail"][1]["Sender"]
	tRankingFunc_Info[24189]["Mail"]["Reward"][1]["Content"] = tDragonGift_Text["Mail"][1]["Content"]
	
	tRankingFunc_Info[24189]["Mail"]["Reward"][2] = {}
	tRankingFunc_Info[24189]["Mail"]["Reward"][2]["RewardRank"] = 2
	tRankingFunc_Info[24189]["Mail"]["Reward"][2]["ActionId"] = 572139
	tRankingFunc_Info[24189]["Mail"]["Reward"][2]["ExistDay"] = 2
	tRankingFunc_Info[24189]["Mail"]["Reward"][2]["Title"] = tDragonGift_Text["Mail"][1]["Title"]
	tRankingFunc_Info[24189]["Mail"]["Reward"][2]["Sender"] = tDragonGift_Text["Mail"][1]["Sender"]
	tRankingFunc_Info[24189]["Mail"]["Reward"][2]["Content"] = tDragonGift_Text["Mail"][2]["Content"]
	
	tRankingFunc_Info[24189]["Mail"]["Reward"][3] = {}
	tRankingFunc_Info[24189]["Mail"]["Reward"][3]["RewardRank"] = 3
	tRankingFunc_Info[24189]["Mail"]["Reward"][3]["ActionId"] = 572140
	tRankingFunc_Info[24189]["Mail"]["Reward"][3]["ExistDay"] = 2
	tRankingFunc_Info[24189]["Mail"]["Reward"][3]["Title"] = tDragonGift_Text["Mail"][1]["Title"]
	tRankingFunc_Info[24189]["Mail"]["Reward"][3]["Sender"] = tDragonGift_Text["Mail"][1]["Sender"]
	tRankingFunc_Info[24189]["Mail"]["Reward"][3]["Content"] = tDragonGift_Text["Mail"][3]["Content"]
	
	tRankingFunc_Info[24189]["Mail"]["Reward"][4] = {}
	tRankingFunc_Info[24189]["Mail"]["Reward"][4]["RewardRank"] = 4
	tRankingFunc_Info[24189]["Mail"]["Reward"][4]["ActionId"] = 572141
	tRankingFunc_Info[24189]["Mail"]["Reward"][4]["ExistDay"] = 2
	tRankingFunc_Info[24189]["Mail"]["Reward"][4]["Title"] = tDragonGift_Text["Mail"][1]["Title"]
	tRankingFunc_Info[24189]["Mail"]["Reward"][4]["Sender"] = tDragonGift_Text["Mail"][1]["Sender"]
	tRankingFunc_Info[24189]["Mail"]["Reward"][4]["Content"] = tDragonGift_Text["Mail"][4]["Content"]
	
	tRankingFunc_Info[24189]["Mail"]["Reward"][5] = {}
	tRankingFunc_Info[24189]["Mail"]["Reward"][5]["RewardRank"] = 5
	tRankingFunc_Info[24189]["Mail"]["Reward"][5]["ActionId"] = 572141
	tRankingFunc_Info[24189]["Mail"]["Reward"][5]["ExistDay"] = 2
	tRankingFunc_Info[24189]["Mail"]["Reward"][5]["Title"] = tDragonGift_Text["Mail"][1]["Title"]
	tRankingFunc_Info[24189]["Mail"]["Reward"][5]["Sender"] = tDragonGift_Text["Mail"][1]["Sender"]
	tRankingFunc_Info[24189]["Mail"]["Reward"][5]["Content"] = tDragonGift_Text["Mail"][5]["Content"]
	
	tRankingFunc_Info[24189]["Mail"]["Reward"][6] = {}
	tRankingFunc_Info[24189]["Mail"]["Reward"][6]["RewardRank"] = 6
	tRankingFunc_Info[24189]["Mail"]["Reward"][6]["ActionId"] = 572141
	tRankingFunc_Info[24189]["Mail"]["Reward"][6]["ExistDay"] = 2
	tRankingFunc_Info[24189]["Mail"]["Reward"][6]["Title"] = tDragonGift_Text["Mail"][1]["Title"]
	tRankingFunc_Info[24189]["Mail"]["Reward"][6]["Sender"] = tDragonGift_Text["Mail"][1]["Sender"]
	tRankingFunc_Info[24189]["Mail"]["Reward"][6]["Content"] = tDragonGift_Text["Mail"][6]["Content"]
	
	tRankingFunc_Info[24189]["Mail"]["Reward"][7] = {}
	tRankingFunc_Info[24189]["Mail"]["Reward"][7]["RewardRank"] = 7
	tRankingFunc_Info[24189]["Mail"]["Reward"][7]["ActionId"] = 572142
	tRankingFunc_Info[24189]["Mail"]["Reward"][7]["ExistDay"] = 2
	tRankingFunc_Info[24189]["Mail"]["Reward"][7]["Title"] = tDragonGift_Text["Mail"][1]["Title"]
	tRankingFunc_Info[24189]["Mail"]["Reward"][7]["Sender"] = tDragonGift_Text["Mail"][1]["Sender"]
	tRankingFunc_Info[24189]["Mail"]["Reward"][7]["Content"] = tDragonGift_Text["Mail"][7]["Content"]
	
	tRankingFunc_Info[24189]["Mail"]["Reward"][8] = {}
	tRankingFunc_Info[24189]["Mail"]["Reward"][8]["RewardRank"] = 8
	tRankingFunc_Info[24189]["Mail"]["Reward"][8]["ActionId"] = 572142
	tRankingFunc_Info[24189]["Mail"]["Reward"][8]["ExistDay"] = 2
	tRankingFunc_Info[24189]["Mail"]["Reward"][8]["Title"] = tDragonGift_Text["Mail"][1]["Title"]
	tRankingFunc_Info[24189]["Mail"]["Reward"][8]["Sender"] = tDragonGift_Text["Mail"][1]["Sender"]
	tRankingFunc_Info[24189]["Mail"]["Reward"][8]["Content"] = tDragonGift_Text["Mail"][8]["Content"]
	
	tRankingFunc_Info[24189]["Mail"]["Reward"][9] = {}
	tRankingFunc_Info[24189]["Mail"]["Reward"][9]["RewardRank"] = 9
	tRankingFunc_Info[24189]["Mail"]["Reward"][9]["ActionId"] = 572142
	tRankingFunc_Info[24189]["Mail"]["Reward"][9]["ExistDay"] = 2
	tRankingFunc_Info[24189]["Mail"]["Reward"][9]["Title"] = tDragonGift_Text["Mail"][1]["Title"]
	tRankingFunc_Info[24189]["Mail"]["Reward"][9]["Sender"] = tDragonGift_Text["Mail"][1]["Sender"]
	tRankingFunc_Info[24189]["Mail"]["Reward"][9]["Content"] = tDragonGift_Text["Mail"][9]["Content"]
	tRankingFunc_Info[24189]["Mail"]["Reward"][10] = {}
	tRankingFunc_Info[24189]["Mail"]["Reward"][10]["RewardRank"] = 10
	tRankingFunc_Info[24189]["Mail"]["Reward"][10]["ActionId"] = 572142
	tRankingFunc_Info[24189]["Mail"]["Reward"][10]["ExistDay"] = 2
	tRankingFunc_Info[24189]["Mail"]["Reward"][10]["Title"] = tDragonGift_Text["Mail"][1]["Title"]
	tRankingFunc_Info[24189]["Mail"]["Reward"][10]["Sender"] = tDragonGift_Text["Mail"][1]["Sender"]
	tRankingFunc_Info[24189]["Mail"]["Reward"][10]["Content"] = tDragonGift_Text["Mail"][10]["Content"]
	

---------------------------------逻辑部分--------------------------------------------- 

--打开兑换商店
function DragonGift_OpenExchangeShop(nNpcId)
	
	local nUserId = Get_UserId()
	if  CommonFunc_GetBeforeActivityTime(tActivityTime["DragonGift"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end
	
	if not Sys_ChkFullTime(tActivityTime["DragonGift"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	User_OpenExchangeShop(nNpcId,nUserId)

end


--打开天石商店
function DragonGift_OpenEMoneyShop(nNpcId)

	local nUserId = Get_UserId()
	if Sys_ChkFullTime(tActivityTime["DragonGift"]["ActivityTime"]) then
		User_OpenDialog()
	else
		LinkNpcGossipFunc_New(nNpcId,"1-4")
	end	

end

--判断隔天
function DragonGift_StcInterval(nEvent,nData,nUserId)
	local nUserId = nUserId or Get_UserId()
	-- local nPointEvent = tDragonGift_Stc["EventType"][1]
	-- local nPointData = tDragonGift_Stc["DataType"][1]
	
	-- 判断是否隔天
	if Task_StcInterval(nEvent,nData,1,4,nUserId) then
		Task_SetStatistic(nEvent,nData,0,1,nUserId)
		Task_SetStcTimestamp(nEvent,nData,0,nUserId)
	end

end


--获取玩家当前积分
function DragonGift_GetUserPoint(nUserId)
	local nUserId = nUserId or Get_UserId()
	local nEvent = tDragonGift_Stc["EventType"][1]
	local nData = tDragonGift_Stc["DataType"][1]
	local nUserPoint = Get_UserStatisticValue(nEvent,nData,nUserId)
	return nUserPoint
end

--广播寻路
-- function DragonGift_GotoNpc(nFlag)
	-- local nUserId = Get_UserId()
	-- 判断是否在活动期内
	-- if not Sys_ChkFullTime(tBigGangFight_Data["ActivityTime"]) then
		-- return
	-- end
	
	-- 切地图传送
	-- local nMapId = tBigGangFight_Data["City"]
	-- local nUserMapId = Get_UserMapId(nUserId)
	-- local nPosX = tBigGangFight_Data["CityPos"]["PosX"]
	-- local nPosY = tBigGangFight_Data["CityPos"]["PosY"]
	-- if nMapId == nUserMapId then
		-- User_UserRandBoundTrans(nMapId,nPosX,nPosY,10,10,1,nUserId)
	-- else
		-- User_TalkChannel2005(tBigGangFight_Text["Sys"]["GotoNpc"])
	-- end
	
-- end


--时间自检重置全服限量
function DragonGift_ResetReward()
	--判断时间
	if  CommonFunc_GetBeforeActivityTime(tActivityTime["DragonGift"]["ActivityTime"]) then
		return
	end
	
	if not Sys_ChkFullTime(tActivityTime["DragonGift"]["ActivityTime"]) then
		return
	end
	for i,v in pairs(tDragonGift_Data["GlobalId"]) do
		local nGlobalId = v
		local sDataStr1 = Get_SysDynaGlobalDataStr1(nGlobalId)
		
		if sDataStr1 == "" or sDataStr1 == nil or sDataStr1 == "0" then 
			Sys_SetSynaGlobalData0(nGlobalId,0)
			Sys_SetSynaGlobalData1(nGlobalId,0)
			Sys_SetSynaGlobalData2(nGlobalId,0)
			Sys_SetSynaGlobalData3(nGlobalId,0)
			Sys_SetSynaGlobalData4(nGlobalId,0)
			Sys_SetSynaGlobalData5(nGlobalId,0)
			--设置标识位
			Sys_SetSynaGlobalDataStr1(nGlobalId,"1")
		end	
	end
end

function DragonGift_ResetReward2()
	
	--判断时间
	if  CommonFunc_GetBeforeActivityTime(tActivityTime["DragonGift"]["ActivityTime"]) then
		return
	end
	
	if not Sys_ChkFullTime(tActivityTime["DragonGift"]["ActivityTime"]) then
		return
	end
	for i,v in pairs(tDragonGift_Data["GlobalId"]) do
		local nGlobalId = v
		local sDataStr1 = Get_SysDynaGlobalDataStr1(nGlobalId)
		
		if sDataStr1 == "1" then
			Sys_SetSynaGlobalDataStr1(nGlobalId,"0")
		end
	end 
	
	
end

------------------------------------------物品逻辑-------------------------------------------
function DragonGift_UseRoulette(nIndex,nUserId)
	local nItemId = tDragonGift_Data["Roulette"][nIndex]
	if not Sys_ChkFullTime(tActivityTime["DragonGift"]["ActivityTime"]) then
		if Item_ChkItem(nItemId,0,0,nUserId) then
			if Item_DelItem(nItemId) then
				local sDelItemLog = string.format(tDragonGift_Log["DelItem"],nItemId)
				Sys_SaveActionFestivalLog(sDelItemLog,nUserId)
				User_TalkChannel2005(tDragonGift_Text["Sys"]["OverTime"],nUserId)
			end
		end	
		return 
	end
	
	--背包空间判断
	local nSpace = RewardTemplate_GetRewardSpace(tDragonGift_Award["PointsItem"][nItemId],nUserId) 
	if not User_CheckLeftSpace(nSpace-1,nUserId) then
		User_TalkChannel2005(string.format(tDragonGift_Text["Sys"]["BagFull"],nSpace-1),nUserId)
		return
	end
	local nPointEvent = tDragonGift_Stc["EventType"][1]
	local nPointData = tDragonGift_Stc["DataType"][1]
	DragonGift_StcInterval(nPointEvent,nPointData,nUserId)
	
	Task_AddStatistic(nPointEvent,nPointData,tDragonGift_Data["Score"][nItemId],1,nUserId)
	Task_SetStcTimestamp(nPointEvent,nPointData,0,nUserId)
	
	local nData = Get_UserStatisticValue(nPointEvent,nPointData,nUserId)
	Sys_SaveEmoneyBuy(tDragonGift_Log["UseRoulette"][nItemId],nUserId)
	if nData >= tDragonGift_Stc["Data"][1] then 
		RankingFunc_SetInfo(24189,nData,nUserId)
	end 
	RewardTemplate_UseItemAndMsg(tDragonGift_Award["PointsItem"][nItemId],nUserId)
	
end 




----------------------------------时间自检逻辑-----------------------------------

-------------------------- npc部分------------------------
-- (24189,'史塔克',0002,61010,-  头像 107
-- (24190,'彼得',32,61180,-1,50       21

tNpcFace[6101] = 107

tNpcGossip[24189] = tNpcGossip[24189] or DefaultNpc:new{}
tNpcGossip[24189]["OptionHidden"] = 1
tNpcGossip[24189]["DialogueText"] = tBigGangFight_Text[24189]

--活动时间前
tNpcGossip[24189]["Text1-1"] = {111,112,113,114}
tNpcGossip[24189]["Text111"] = tDragonGift_Text[24189]["Text111"]
tNpcGossip[24189]["Text112"] = tDragonGift_Text[24189]["Text112"]
tNpcGossip[24189]["Text113"] = tDragonGift_Text[24189]["Text113"]
tNpcGossip[24189]["Text114"] = tDragonGift_Text[24189]["Text114"]

tNpcGossip[24189]["tOption1-1"] = {111}
tNpcGossip[24189]["ChkFunc1-1"] = function()

	return CommonFunc_GetBeforeActivityTime(tActivityTime["DragonGift"]["ActivityTime"])
end
tNpcGossip[24189]["Option111"] = tDragonGift_Text[24189]["Option111"] 

--活动时间后
tNpcGossip[24189]["Text1-2"] = {121}
tNpcGossip[24189]["Text121"] = tDragonGift_Text[24189]["Text121"]

tNpcGossip[24189]["tOption1-2"] = {121}
tNpcGossip[24189]["ChkFunc1-2"] = function()

	return not Sys_ChkFullTime(tActivityTime["DragonGift"]["ActivityTime"])
end
tNpcGossip[24189]["Option121"] = tDragonGift_Text[24189]["Option121"] 

--【活动中】
tNpcGossip[24189]["Text1-3"] = {131,132,133,134}
tNpcGossip[24189]["Text131"] = tDragonGift_Text[24189]["Text131"]
tNpcGossip[24189]["Text132"] = tDragonGift_Text[24189]["Text132"]
tNpcGossip[24189]["Text133"] = tDragonGift_Text[24189]["Text133"]
tNpcGossip[24189]["Text134"] = tDragonGift_Text[24189]["Text134"]
          
tNpcGossip[24189]["tOption1-3"] = {131,132,133}
tNpcGossip[24189]["ChkFunc1-3"] = function()
	
	return Sys_ChkFullTime(tActivityTime["DragonGift"]["ActivityTime"])
end
tNpcGossip[24189]["Option131"] = tDragonGift_Text[24189]["Option131"] 
tNpcGossip[24189]["Option132"] = tDragonGift_Text[24189]["Option132"] 
tNpcGossip[24189]["Option133"] = tDragonGift_Text[24189]["Option133"] 


tNpcGossip[24189]["OptionFunc131"] = "DragonGift_OpenEMoneyShop</N>24189"
tNpcGossip[24189]["OptionPoint132"] = "2-3"
tNpcGossip[24189]["OptionPoint133"] = "2-1" 


--第二层对白
--查看积分获取规则。
tNpcGossip[24189]["Text2-1"] = {211,212,213,214,215,216,217}
tNpcGossip[24189]["Text211"] = tDragonGift_Text[24189]["Text211"]
tNpcGossip[24189]["Text212"] = tDragonGift_Text[24189]["Text212"]
tNpcGossip[24189]["Text213"] = tDragonGift_Text[24189]["Text213"]
tNpcGossip[24189]["Text214"] = tDragonGift_Text[24189]["Text214"]
tNpcGossip[24189]["Text215"] = tDragonGift_Text[24189]["Text215"]
tNpcGossip[24189]["Text216"] = tDragonGift_Text[24189]["Text216"]
tNpcGossip[24189]["Text217"] = tDragonGift_Text[24189]["Text217"]

tNpcGossip[24189]["tOption2-1"] = {211}
tNpcGossip[24189]["Option211"] = tDragonGift_Text[24189]["Option211"]
tNpcGossip[24189]["OptionPoint211"] = "1-3"

--查看每日积分榜奖励
tNpcGossip[24189]["Text2-2"] = {221,222,223,224,225,226,227,228,229,2210,2211,2212,2213,2214}
tNpcGossip[24189]["Text221"] = tDragonGift_Text[24189]["Text221"]
tNpcGossip[24189]["Text222"] = tDragonGift_Text[24189]["Text222"]
tNpcGossip[24189]["Text223"] = tDragonGift_Text[24189]["Text223"]
tNpcGossip[24189]["Text224"] = tDragonGift_Text[24189]["Text224"]
tNpcGossip[24189]["Text225"] = tDragonGift_Text[24189]["Text225"]
tNpcGossip[24189]["Text226"] = tDragonGift_Text[24189]["Text226"]
tNpcGossip[24189]["Text227"] = tDragonGift_Text[24189]["Text227"]
tNpcGossip[24189]["Text228"] = tDragonGift_Text[24189]["Text228"]
tNpcGossip[24189]["Text229"] = tDragonGift_Text[24189]["Text229"]
tNpcGossip[24189]["Text2210"] = tDragonGift_Text[24189]["Text2210"]
tNpcGossip[24189]["Text2211"] = tDragonGift_Text[24189]["Text2211"]
tNpcGossip[24189]["Text2212"] = tDragonGift_Text[24189]["Text2212"]
tNpcGossip[24189]["Text2213"] = tDragonGift_Text[24189]["Text2213"]
tNpcGossip[24189]["Text2214"] = tDragonGift_Text[24189]["Text2214"]

tNpcGossip[24189]["tOption2-2"] = {221}
tNpcGossip[24189]["Option221"] = tDragonGift_Text[24189]["Option221"]
tNpcGossip[24189]["OptionPoint221"] = "1-3"
tNpcGossip[24189]["ChkFunc2-2"] = function()
	
	local nPointEvent = tDragonGift_Stc["EventType"][1]
	local nPointData = tDragonGift_Stc["DataType"][1]
	local nUserId = Get_UserId()
	-- 判断是否隔天
	DragonGift_StcInterval(nPointEvent,nPointData,nUserId)

	local nPointValue = Get_UserStatisticValue(nPointEvent,nPointData)
	tNpcGossip[24189]["Text2214"] = string.format(tDragonGift_Text[24189]["Text2214"],nPointValue)
	
	return true	
end


--排行榜
tNpcGossip[24189]["Text2-3"] = {231,232,2315,233,234,235,236,237,238,239,2310,2311,2312,2313,2314}
tNpcGossip[24189]["Text231"] = tDragonGift_Text[24189]["Text231"]
tNpcGossip[24189]["Text232"] = tDragonGift_Text[24189]["Text232"]
tNpcGossip[24189]["Text2315"] = tDragonGift_Text[24189]["Text2315"]
tNpcGossip[24189]["Text233"] = tDragonGift_Text[24189]["Text233"]
tNpcGossip[24189]["Text234"] = tDragonGift_Text[24189]["Text234"]
tNpcGossip[24189]["Text235"] = tDragonGift_Text[24189]["Text235"]
tNpcGossip[24189]["Text236"] = tDragonGift_Text[24189]["Text236"]
tNpcGossip[24189]["Text237"] = tDragonGift_Text[24189]["Text237"]
tNpcGossip[24189]["Text238"] = tDragonGift_Text[24189]["Text238"]
tNpcGossip[24189]["Text239"] = tDragonGift_Text[24189]["Text239"]
tNpcGossip[24189]["Text2310"] = tDragonGift_Text[24189]["Text2310"]
tNpcGossip[24189]["Text2311"] = tDragonGift_Text[24189]["Text2311"]
tNpcGossip[24189]["Text2312"] = tDragonGift_Text[24189]["Text2312"]
tNpcGossip[24189]["Text2313"] = tDragonGift_Text[24189]["Text2313"]
tNpcGossip[24189]["Text2314"] = tDragonGift_Text[24189]["Text2314"]

tNpcGossip[24189]["tOption2-3"] = {231}
tNpcGossip[24189]["Option231"] = tDragonGift_Text[24189]["Option231"] 
tNpcGossip[24189]["OptionPoint231"] = "2-2"
tNpcGossip[24189]["ChkFunc2-3"] = function()
	
	local nPointEvent = tDragonGift_Stc["EventType"][1]
	local nPointData = tDragonGift_Stc["DataType"][1]
	local nUserId = Get_UserId()
	-- 判断是否隔天
	DragonGift_StcInterval(nPointEvent,nPointData,nUserId)

	local nPointValue = Get_UserStatisticValue(nPointEvent,nPointData)
	local tRank = RankingFunc_GetNowData(24189)
	
	for i=1,10 do
		if tRank[i] == nil then
		tNpcGossip[24189]["Text23"..i+2] = Sys_Alignment(tDragonGift_Text[24189]["Text23"..i+2],2,tDragonGift_Text[24189]["NoData"],30,tDragonGift_Text[24189]["NoData"],60) 
		elseif tRank[i]["Score"] >= 0 then
			local nScore = tRank[i]["Score"]
			local sUserName = tRank[i]["UserName"]
			tNpcGossip[24189]["Text23"..i+2] = Sys_Alignment(tDragonGift_Text[24189]["Text23"..i+2],2,tostring(nScore),30,sUserName,60)	
		end
	end
	tNpcGossip[24189]["Text2314"] = string.format(tDragonGift_Text[24189]["Text2314"],nPointValue)
	
	return true	
end

-- (24190,'彼得',32,61180
tNpcFace[6118] = 107

tNpcGossip[24190] = tNpcGossip[24190] or DefaultNpc:new{}
tNpcGossip[24190]["OptionHidden"] = 1
tNpcGossip[24190]["DialogueText"] = tBigGangFight_Text[24190]

--活动时间前
tNpcGossip[24190]["Text1-1"] = {111,112,113,114}
tNpcGossip[24190]["Text111"] = tDragonGift_Text[24190]["Text111"]
tNpcGossip[24190]["Text112"] = tDragonGift_Text[24190]["Text112"]
tNpcGossip[24190]["Text113"] = tDragonGift_Text[24190]["Text113"]
tNpcGossip[24190]["Text114"] = tDragonGift_Text[24190]["Text114"]

tNpcGossip[24190]["tOption1-1"] = {111}
tNpcGossip[24190]["ChkFunc1-1"] = function()

	return CommonFunc_GetBeforeActivityTime(tActivityTime["DragonGift"]["ActivityTime"])
end
tNpcGossip[24190]["Option111"] = tDragonGift_Text[24190]["Option111"] 

--活动时间后
tNpcGossip[24190]["Text1-2"] = {121}
tNpcGossip[24190]["Text121"] = tDragonGift_Text[24190]["Text121"]

tNpcGossip[24190]["tOption1-2"] = {121}
tNpcGossip[24190]["ChkFunc1-2"] = function()

	return not Sys_ChkFullTime(tActivityTime["DragonGift"]["ActivityTime"])
end
tNpcGossip[24190]["Option121"] = tDragonGift_Text[24190]["Option121"] 

---------------------------------物品部分---------------------------------------------
-- 3321218,'5120积分币礼包',9
-- 3321219,'每日积分冠军礼包'
-- 3321220,'每日积分亚军礼包'
-- 3321221,'每日积分季军礼包'
-- 3321222,'每日积分精英礼包'
-- 3321223,'每日积分优秀礼包'
-- 3321224,'10点气力值包',9,9
-- 3321225,'5000点气力值包',9
-- 3321226,'3000天石（赠）包'
-- 3321227,'10个良品神纹源晶包                     
-- 3321231,'MythicBeastPack',
-- 3321214,'积分币
-- tItem[3321218] = tItem[3321218] or {}
-- tItem[3321218]["Function"] = function(nItemId,sItemName)
	-- if not Sys_ChkFullTime(tActivityTime["DragonGift"]["ItemUseTime"]) then
		-- if Item_ChkItem(nItemId) then
			-- if Item_DelItem(nItemId) then
				-- local sDelItemLog = string.format(tDragonGift_Log["DelItem"],nItemId)
				-- Sys_SaveActionFestivalLog(sDelItemLog)
				-- User_TalkChannel2005(tBigGangFight_Text["Sys"]["OverTime"][nItemId])
			-- end
		-- end	
		-- return 
	-- end

	-- RewardTemplate_UseItemAndMsg(tDragonGift_Award[nItemId])
-- end

tItem[3321219] = tItem[3321219] or {}
tItem[3321219]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tDragonGift_Award[nItemId])
end
tItem[3321220] = tItem[3321219] or {}
tItem[3321221] = tItem[3321219] or {}
tItem[3321222] = tItem[3321219] or {}
tItem[3321223] = tItem[3321219] or {}
tItem[3321224] = tItem[3321219] or {}
tItem[3321225] = tItem[3321219] or {}
tItem[3321226] = tItem[3321219] or {}
tItem[3321227] = tItem[3321219] or {}
tItem[3321231] = tItem[3321219] or {}

tItem[3321214] = tItem[3321214] or {}
tItem[3321214]["Function"] = function(nItemId,sItemName)
	if not Sys_ChkFullTime(tActivityTime["DragonGift"]["ItemUseTime"]) then
		if Item_ChkItem(nItemId) then
			if Item_DelItem(nItemId) then
				local sDelItemLog = string.format(tDragonGift_Log["DelItem"],nItemId)
				Sys_SaveActionFestivalLog(sDelItemLog)
				User_TalkChannel2005(tBigGangFight_Text["Sys"]["OverTime"][nItemId])
			end
		end	
		return 
	end
	NpcPosition_PathFind(24190)
end
-----------------------------------时间自检-----------------------------------

--时间自检重置全服限量
local tDragonGift_Reset = {}
tDragonGift_Reset["Type"] = 2
tDragonGift_Reset["TimeType"] = 4
tDragonGift_Reset["Multiple"] = {}
tDragonGift_Reset["Multiple"][1]  = "00:00 00:03"
tDragonGift_Reset["Func"] = DragonGift_ResetReward
table.insert(tSystemTime_InitialData,tDragonGift_Reset)


local tDragonGift_Reset2 = {}
tDragonGift_Reset2["Type"] = 2
tDragonGift_Reset2["TimeType"] = 4
tDragonGift_Reset2["Multiple"] = {}
tDragonGift_Reset2["Multiple"][1]  = "00:04 00:06"
tDragonGift_Reset2["Func"] = DragonGift_ResetReward2
table.insert(tSystemTime_InitialData,tDragonGift_Reset2)


