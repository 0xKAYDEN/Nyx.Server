------------------------------------------------------------------------------------
--Name：            190529[英文征服][活动脚本]勇士赠品狂欢
--Creator:      洪聪敏
--Created:     2019/05/29
------------------------------------------------------------------------------------
--log :12001448
--lua.ini ：41326
--命名前缀：WarriorsPromotion_
--STC掩码记录：
--(197,57) --记录玩家购买的第一个物品ID
--(197,69) --记录玩家购买的第二个物品ID 

--(197,58) --记录玩家购买开洞直升包数量
--(197,59) --记录玩家购买宝石直升包数量
--(197,60) --记录玩家购买神佑直升包数量
--(197,61) --记录玩家购买追加直升包数量
--(197,62) --记录玩家购买神纹直升包数量
--(200,09) --记录玩家购买桃源灵玉直升包数量

--(200,10) --记录玩家上交暑期抽奖券数量

------------------------------------------------------------------------------------
local tWarriorsPromotion_Cont = {}
tWarriorsPromotion_Cont["Emoney"] = {}
tWarriorsPromotion_Cont["Emoney"][3321807] = 2399
tWarriorsPromotion_Cont["Emoney"][3321808] = 1599
tWarriorsPromotion_Cont["Emoney"][3321809] = 4399
tWarriorsPromotion_Cont["Emoney"][3321810] = 12599
tWarriorsPromotion_Cont["Emoney"][3321811] = 39999
tWarriorsPromotion_Cont["Emoney"][3313145] = 2099

tWarriorsPromotion_Cont["AttributeNumMax"] = 2
tWarriorsPromotion_Cont["AttributeNumMin"] = 0
-- tWarriorsPromotion_Cont["SubmitItem"] = 3313144
tWarriorsPromotion_Cont["SubmitItem"] = 3316494
tWarriorsPromotion_Cont["Web"] = "https://coevent.99.com/rank/2020summersales/"
tWarriorsPromotion_Cont["WebNew"] = "https://coevent.99.com/newcomerscarnival/"
tWarriorsPromotion_Cont["NinJa"] = {3311683,3309874,3315170,3315216,3315118,3315108,3315160,3315232,3315125,3315177,3315224,3315130,3315182,3315223,3302603,3302644,3321410,3302613,3302654,3321394,3302620,3302661,3321402,3302625,3302666,3321401}




local tWarriorsPromotion_Stc = {}
--购买种类数量
tWarriorsPromotion_Stc[1] = {}
tWarriorsPromotion_Stc[1]["Event"] =197
tWarriorsPromotion_Stc[1]["Type"] = 57


tWarriorsPromotion_Stc[2] = {}
tWarriorsPromotion_Stc[2]["Event"] =197
tWarriorsPromotion_Stc[2]["Type"] = 69

--上交暑期抽奖券数量
tWarriorsPromotion_Stc[3] = {}
tWarriorsPromotion_Stc[3]["Event"] =200
tWarriorsPromotion_Stc[3]["Type"] = 10


--玩家上交暑期惊喜券数量
tWarriorsPromotion_Stc[4] = {}
tWarriorsPromotion_Stc[4]["Event"] =216
tWarriorsPromotion_Stc[4]["Type"] = 38



--开洞直升包
tWarriorsPromotion_Stc[3321807] = {}
tWarriorsPromotion_Stc[3321807]["Event"] = 197
tWarriorsPromotion_Stc[3321807]["Type"] = 58
--宝石直升包
tWarriorsPromotion_Stc[3321808] = {}
tWarriorsPromotion_Stc[3321808]["Event"] = 197
tWarriorsPromotion_Stc[3321808]["Type"] = 59
--神佑直升包
tWarriorsPromotion_Stc[3321809] = {}
tWarriorsPromotion_Stc[3321809]["Event"] = 197
tWarriorsPromotion_Stc[3321809]["Type"] = 60
--追加直升包
tWarriorsPromotion_Stc[3321810] = {}
tWarriorsPromotion_Stc[3321810]["Event"] = 197
tWarriorsPromotion_Stc[3321810]["Type"] = 61
--神纹直升包
tWarriorsPromotion_Stc[3321811] = {}
tWarriorsPromotion_Stc[3321811]["Event"] = 197
tWarriorsPromotion_Stc[3321811]["Type"] = 62

--桃源灵玉直升包
tWarriorsPromotion_Stc[3313145] = {}
tWarriorsPromotion_Stc[3313145]["Event"] = 200
tWarriorsPromotion_Stc[3313145]["Type"] = 09



local tWarriorsPromotion_Log = {}
	tWarriorsPromotion_Log["Log"] = {}
	tWarriorsPromotion_Log["Log"]["GetXuanBao"] = "0,0,%d,1,12001448,2,%s,1"
	tWarriorsPromotion_Log["Log"]["DelItem"] = "0,0,0,1,12001448,3,%d,%d"

------------------------------------------------------------------------------------
local tWarriorsPromotion_Reward = {}
	-- ===晶莹坚钻包
	-- ===索引: tWarriorsPromotion_Reward[3321807]
	-- ===删除: 3321807,1
	tWarriorsPromotion_Reward[3321807] = {}
	tWarriorsPromotion_Reward[3321807]["LogId"] = 12001448
	tWarriorsPromotion_Reward[3321807]["DeleteItem"] = {}
	tWarriorsPromotion_Reward[3321807]["DeleteItem"][1] = {}
	tWarriorsPromotion_Reward[3321807]["DeleteItem"][1]["Id"] = 3321807 -- 【库】RadiantDrillPack[属性:9]
	tWarriorsPromotion_Reward[3321807]["RewardItem"] = {}
	tWarriorsPromotion_Reward[3321807]["RewardItem"][1] = {}
	tWarriorsPromotion_Reward[3321807]["RewardItem"][1]["Id"] = 1200005 -- 【库】ToughDrill[属性:0], 【表格】金钢坚钻
	tWarriorsPromotion_Reward[3321807]["RewardItem"][1]["Attr"] = "0 3 3" -- ToughDrill（赠）*3
	tWarriorsPromotion_Reward[3321807]["RewardItem"][2] = {}
	tWarriorsPromotion_Reward[3321807]["RewardItem"][2]["Id"] = 3009002 -- 【库】RadiantStarStone[属性:9], 【表格】晶莹星陨石
	tWarriorsPromotion_Reward[3321807]["RewardItem"][2]["Attr"] = "0 6 0 2880 1" -- 2天时效(激活)的RadiantStarStone*6
	tWarriorsPromotion_Reward[3321807]["RewardItem"][3] = {}
	tWarriorsPromotion_Reward[3321807]["RewardItem"][3]["Id"] = 3313144 -- 【库】SummerTicket[属性:9], 【表格】SummerTicket
	tWarriorsPromotion_Reward[3321807]["RewardItem"][3]["Attr"] = "0 2" -- SummerTicket*2

	-- ===金钢龙恨包
	-- ===索引: tWarriorsPromotion_Reward[3321808]
	-- ===删除: 3321808,1
	tWarriorsPromotion_Reward[3321808] = {}
	tWarriorsPromotion_Reward[3321808]["LogId"] = 12001448
	tWarriorsPromotion_Reward[3321808]["DeleteItem"] = {}
	tWarriorsPromotion_Reward[3321808]["DeleteItem"][1] = {}
	tWarriorsPromotion_Reward[3321808]["DeleteItem"][1]["Id"] = 3321808 -- 【库】ToughDragonPack[属性:9]
	tWarriorsPromotion_Reward[3321808]["RewardItem"] = {}
	tWarriorsPromotion_Reward[3321808]["RewardItem"][1] = {}
	tWarriorsPromotion_Reward[3321808]["RewardItem"][1]["Id"] = 700013 -- 【库】DragonGem[属性:0], 【表格】优质龙恨宝石
	tWarriorsPromotion_Reward[3321808]["RewardItem"][1]["Attr"] = "0 5 3" -- DragonGem（赠）*5
	tWarriorsPromotion_Reward[3321808]["RewardItem"][2] = {}
	tWarriorsPromotion_Reward[3321808]["RewardItem"][2]["Id"] = 1200005 -- 【库】ToughDrill[属性:0], 【表格】金刚坚钻
	tWarriorsPromotion_Reward[3321808]["RewardItem"][2]["Attr"] = "0 3 3" -- ToughDrill（赠）*3
	tWarriorsPromotion_Reward[3321808]["RewardItem"][3] = {}
	tWarriorsPromotion_Reward[3321808]["RewardItem"][3]["Id"] = 3313144 -- 【库】SummerTicket[属性:9], 【表格】SummerTicket
	tWarriorsPromotion_Reward[3321808]["RewardItem"][3]["Attr"] = "0 1" -- SummerTicket*1
	-- ===神纹玄元包
	-- ===索引: tWarriorsPromotion_Reward[3321809]
	-- ===删除: 3321809,1
	tWarriorsPromotion_Reward[3321809] = {}
	tWarriorsPromotion_Reward[3321809]["LogId"] = 12001448
	tWarriorsPromotion_Reward[3321809]["DeleteItem"] = {}
	tWarriorsPromotion_Reward[3321809]["DeleteItem"][1] = {}
	tWarriorsPromotion_Reward[3321809]["DeleteItem"][1]["Id"] = 3321809 -- 【库】TortoiseRunePack[属性:9]
	tWarriorsPromotion_Reward[3321809]["RewardItem"] = {}
	tWarriorsPromotion_Reward[3321809]["RewardItem"][1] = {}
	tWarriorsPromotion_Reward[3321809]["RewardItem"][1]["Id"] = 700073 -- 【库】TortoiseGem[属性:0], 【表格】优质玄元宝石
	tWarriorsPromotion_Reward[3321809]["RewardItem"][1]["Attr"] = "0 14 3" -- TortoiseGem（赠）*14
	tWarriorsPromotion_Reward[3321809]["RewardItem"][2] = {}
	tWarriorsPromotion_Reward[3321809]["RewardItem"][2]["Id"] = 4060001 -- 【库】UniversalRuneEssence[属性:9], 【表格】万能神纹精粹
	tWarriorsPromotion_Reward[3321809]["RewardItem"][2]["Attr"] = "0 100 3" -- UniversalRuneEssence（赠）*100
	tWarriorsPromotion_Reward[3321809]["RewardItem"][3] = {}
	tWarriorsPromotion_Reward[3321809]["RewardItem"][3]["Id"] = 3313144 -- 【库】SummerTicket[属性:9], 【表格】SummerTicket
	tWarriorsPromotion_Reward[3321809]["RewardItem"][3]["Attr"] = "0 3" -- SummerTicket*3
	-- ===晶莹赤炼包
	-- ===索引: tWarriorsPromotion_Reward[3321810]
	-- ===删除: 3321810,1
	tWarriorsPromotion_Reward[3321810] = {}
	tWarriorsPromotion_Reward[3321810]["LogId"] = 12001448
	tWarriorsPromotion_Reward[3321810]["DeleteItem"] = {}
	tWarriorsPromotion_Reward[3321810]["DeleteItem"][1] = {}
	tWarriorsPromotion_Reward[3321810]["DeleteItem"][1]["Id"] = 3321810 -- 【库】RadiantStonePack[属性:9]
	tWarriorsPromotion_Reward[3321810]["RewardItem"] = {}
	tWarriorsPromotion_Reward[3321810]["RewardItem"][1] = {}
	tWarriorsPromotion_Reward[3321810]["RewardItem"][1]["Id"] = 730006 -- 【库】+6Stone[属性:0], 【表格】+6赤炼石
	tWarriorsPromotion_Reward[3321810]["RewardItem"][1]["Attr"] = "0 20 3" -- +6Stone（赠）*20
	tWarriorsPromotion_Reward[3321810]["RewardItem"][2] = {}
	tWarriorsPromotion_Reward[3321810]["RewardItem"][2]["Id"] = 3009002 -- 【库】RadiantStarStone[属性:9], 【表格】晶莹星陨石
	tWarriorsPromotion_Reward[3321810]["RewardItem"][2]["Attr"] = "0 12 0 2880 1" -- 2天时效(激活)的RadiantStarStone*12
	tWarriorsPromotion_Reward[3321810]["RewardItem"][3] = {}
	tWarriorsPromotion_Reward[3321810]["RewardItem"][3]["Id"] = 3313144 -- 【库】SummerTicket[属性:9], 【表格】SummerTicket
	tWarriorsPromotion_Reward[3321810]["RewardItem"][3]["Attr"] = "0 10" -- SummerTicket*10

	-- ===晶莹源晶包
	-- ===索引: tWarriorsPromotion_Reward[3321811]
	-- ===删除: 3321811,1
	tWarriorsPromotion_Reward[3321811] = {}
	tWarriorsPromotion_Reward[3321811]["LogId"] = 12001448
	tWarriorsPromotion_Reward[3321811]["DeleteItem"] = {}
	tWarriorsPromotion_Reward[3321811]["DeleteItem"][1] = {}
	tWarriorsPromotion_Reward[3321811]["DeleteItem"][1]["Id"] = 3321811 -- 【库】RadiantCrystalPack[属性:9]
	tWarriorsPromotion_Reward[3321811]["RewardItem"] = {}
	tWarriorsPromotion_Reward[3321811]["RewardItem"][1] = {}
	tWarriorsPromotion_Reward[3321811]["RewardItem"][1]["Id"] = 3304583 -- 【库】10RadiantStarStonesBox[属性:11], 【表格】晶莹星陨石包*5
	tWarriorsPromotion_Reward[3321811]["RewardItem"][1]["Attr"] = "0 5" -- 10RadiantStarStonesBox*5
	tWarriorsPromotion_Reward[3321811]["RewardItem"][2] = {}
	tWarriorsPromotion_Reward[3321811]["RewardItem"][2]["Id"] = 3311821 -- 【库】DivineRuneStone[属性:9], 【表格】优质神纹源晶
	tWarriorsPromotion_Reward[3321811]["RewardItem"][2]["Attr"] = "0 50" -- DivineRuneStone*50
	tWarriorsPromotion_Reward[3321811]["RewardItem"][3] = {}
	tWarriorsPromotion_Reward[3321811]["RewardItem"][3]["Id"] = 3313144 -- 【库】SummerTicket[属性:9], 【表格】SummerTicket
	tWarriorsPromotion_Reward[3321811]["RewardItem"][3]["Attr"] = "0 25" -- SummerTicket*25


	-- ===世界杯A组发型礼盒
	-- ===索引: tWarriorsPromotion_Reward[3321813]
	-- ===删除: 3321813,1
	tWarriorsPromotion_Reward[3321813] = {}
	tWarriorsPromotion_Reward[3321813]["LogId"] = 12001448
	tWarriorsPromotion_Reward[3321813]["DeleteItem"] = {}
	tWarriorsPromotion_Reward[3321813]["DeleteItem"][1] = {}
	tWarriorsPromotion_Reward[3321813]["DeleteItem"][1]["Id"] = 3321813 -- 【库】HairstyleBoxA[属性:9]
	tWarriorsPromotion_Reward[3321813]["RewardItem"] = {}
	tWarriorsPromotion_Reward[3321813]["RewardItem"][1] = {}
	tWarriorsPromotion_Reward[3321813]["RewardItem"][1]["Id"] = 3308894 -- 【库】WildBullet[属性:0], 【表格】WildBullet
	tWarriorsPromotion_Reward[3321813]["RewardItem"][1]["Attr"] = "0 1" -- WildBullet*1
	tWarriorsPromotion_Reward[3321813]["RewardItem"][2] = {}
	tWarriorsPromotion_Reward[3321813]["RewardItem"][2]["Id"] = 3308895 -- 【库】CurlyAfro[属性:0], 【表格】CurlyAfo
	tWarriorsPromotion_Reward[3321813]["RewardItem"][2]["Attr"] = "0 1" -- CurlyAfro*1
	tWarriorsPromotion_Reward[3321813]["RewardItem"][3] = {}
	tWarriorsPromotion_Reward[3321813]["RewardItem"][3]["Id"] = 3308896 -- 【库】HandsomeTail[属性:0], 【表格】HandsomeTail
	tWarriorsPromotion_Reward[3321813]["RewardItem"][3]["Attr"] = "0 1" -- HandsomeTail*1
	tWarriorsPromotion_Reward[3321813]["RewardItem"][4] = {}
	tWarriorsPromotion_Reward[3321813]["RewardItem"][4]["Id"] = 3308902 -- 【库】Buzzcut[属性:0], 【表格】Buzzcut
	tWarriorsPromotion_Reward[3321813]["RewardItem"][4]["Attr"] = "0 1" -- Buzzcut*1
	tWarriorsPromotion_Reward[3321813]["RewardItem"][5] = {}
	tWarriorsPromotion_Reward[3321813]["RewardItem"][5]["Id"] = 3308903 -- 【库】GoldenFur[属性:0], 【表格】GoldenFur
	tWarriorsPromotion_Reward[3321813]["RewardItem"][5]["Attr"] = "0 1" -- GoldenFur*1


	-- ===世界杯B组发型礼盒
	-- ===索引: tWarriorsPromotion_Reward[3321814]
	-- ===删除: 3321814,1
	tWarriorsPromotion_Reward[3321814] = {}
	tWarriorsPromotion_Reward[3321814]["LogId"] = 12001448
	tWarriorsPromotion_Reward[3321814]["DeleteItem"] = {}
	tWarriorsPromotion_Reward[3321814]["DeleteItem"][1] = {}
	tWarriorsPromotion_Reward[3321814]["DeleteItem"][1]["Id"] = 3321814 -- 【库】HairstyleBoxB[属性:9]
	tWarriorsPromotion_Reward[3321814]["RewardItem"] = {}
	tWarriorsPromotion_Reward[3321814]["RewardItem"][1] = {}
	tWarriorsPromotion_Reward[3321814]["RewardItem"][1]["Id"] = 3308897 -- 【库】CurlyShortHair[属性:0], 【表格】CurlyShortHair
	tWarriorsPromotion_Reward[3321814]["RewardItem"][1]["Attr"] = "0 1" -- CurlyShortHair*1
	tWarriorsPromotion_Reward[3321814]["RewardItem"][2] = {}
	tWarriorsPromotion_Reward[3321814]["RewardItem"][2]["Id"] = 3308898 -- 【库】GentleHair[属性:0], 【表格】GentleHair
	tWarriorsPromotion_Reward[3321814]["RewardItem"][2]["Attr"] = "0 1" -- GentleHair*1
	tWarriorsPromotion_Reward[3321814]["RewardItem"][3] = {}
	tWarriorsPromotion_Reward[3321814]["RewardItem"][3]["Id"] = 3308899 -- 【库】WildCurl[属性:0], 【表格】WildCurl
	tWarriorsPromotion_Reward[3321814]["RewardItem"][3]["Attr"] = "0 1" -- WildCurl*1
	tWarriorsPromotion_Reward[3321814]["RewardItem"][4] = {}
	tWarriorsPromotion_Reward[3321814]["RewardItem"][4]["Id"] = 3308900 -- 【库】RebelliousSpirit[属性:0], 【表格】RebelliousSpirit
	tWarriorsPromotion_Reward[3321814]["RewardItem"][4]["Attr"] = "0 1" -- RebelliousSpirit*1
	tWarriorsPromotion_Reward[3321814]["RewardItem"][5] = {}
	tWarriorsPromotion_Reward[3321814]["RewardItem"][5]["Id"] = 3308901 -- 【库】TrendyDreadlocks[属性:0], 【表格】TrendyDreadlocks
	tWarriorsPromotion_Reward[3321814]["RewardItem"][5]["Attr"] = "0 1" -- TrendyDreadlocks*1


	-- ===魔武通玄丹礼包
	-- ===索引: tWarriorsPromotion_Reward[3321816]
	-- ===删除: 3321816,1
	tWarriorsPromotion_Reward[3321816] = {}
	tWarriorsPromotion_Reward[3321816]["LogId"] = 12001448
	tWarriorsPromotion_Reward[3321816]["DeleteItem"] = {}
	tWarriorsPromotion_Reward[3321816]["DeleteItem"][1] = {}
	tWarriorsPromotion_Reward[3321816]["DeleteItem"][1]["Id"] = 3321816 -- 【库】KnowledgePillPack[属性:9]
	tWarriorsPromotion_Reward[3321816]["RewardItem"] = {}
	tWarriorsPromotion_Reward[3321816]["RewardItem"][1] = {}
	tWarriorsPromotion_Reward[3321816]["RewardItem"][1]["Id"] = 3303373 -- 【库】KnowledgePill[属性:9], 【表格】魔武通玄丹
	tWarriorsPromotion_Reward[3321816]["RewardItem"][1]["Attr"] = "0 5" -- KnowledgePill*5


	-- ===龙象般若功礼包
	-- ===索引: tWarriorsPromotion_Reward[3321817][1]
	-- ===删除: 3321817,1
	tWarriorsPromotion_Reward[3321817] = {}
	tWarriorsPromotion_Reward[3321817][1] = {}
	tWarriorsPromotion_Reward[3321817][1]["LogId"] = 12001448
	tWarriorsPromotion_Reward[3321817][1]["DeleteItem"] = {}
	tWarriorsPromotion_Reward[3321817][1]["DeleteItem"][1] = {}
	tWarriorsPromotion_Reward[3321817][1]["DeleteItem"][1]["Id"] = 3321817 -- 【库】DragonTacticsPack[属性:9]
	tWarriorsPromotion_Reward[3321817][1]["RewardItem"] = {}
	tWarriorsPromotion_Reward[3321817][1]["RewardItem"][1] = {}
	tWarriorsPromotion_Reward[3321817][1]["RewardItem"][1]["Id"] = 3005397 -- 【库】DragonTactics(A)[属性:9], 【表格】龙象般若功·上篇
	tWarriorsPromotion_Reward[3321817][1]["RewardItem"][1]["Attr"] = "0 1" -- DragonTactics(A)*1


	-- ===龙象般若功礼包
	-- ===索引: tWarriorsPromotion_Reward[3321817][2]
	-- ===删除: 3321817,1
	tWarriorsPromotion_Reward[3321817][2] = {}
	tWarriorsPromotion_Reward[3321817][2]["LogId"] = 12001448
	tWarriorsPromotion_Reward[3321817][2]["DeleteItem"] = {}
	tWarriorsPromotion_Reward[3321817][2]["DeleteItem"][1] = {}
	tWarriorsPromotion_Reward[3321817][2]["DeleteItem"][1]["Id"] = 3321817 -- 【库】DragonTacticsPack[属性:9]
	tWarriorsPromotion_Reward[3321817][2]["RewardItem"] = {}
	tWarriorsPromotion_Reward[3321817][2]["RewardItem"][1] = {}
	tWarriorsPromotion_Reward[3321817][2]["RewardItem"][1]["Id"] = 3005398 -- 【库】DragonTactics(B)[属性:9], 【表格】龙象般若功·下篇
	tWarriorsPromotion_Reward[3321817][2]["RewardItem"][1]["Attr"] = "0 1" -- DragonTactics(B)*1


	-- ===无量心经礼包
	-- ===索引: tWarriorsPromotion_Reward[3321818][1]
	-- ===删除: 3321818,1
	tWarriorsPromotion_Reward[3321818] = {}
	tWarriorsPromotion_Reward[3321818][1] = {}
	tWarriorsPromotion_Reward[3321818][1]["LogId"] = 12001448
	tWarriorsPromotion_Reward[3321818][1]["DeleteItem"] = {}
	tWarriorsPromotion_Reward[3321818][1]["DeleteItem"][1] = {}
	tWarriorsPromotion_Reward[3321818][1]["DeleteItem"][1]["Id"] = 3321818 -- 【库】BoundlessHeartPack[属性:9]
	tWarriorsPromotion_Reward[3321818][1]["RewardItem"] = {}
	tWarriorsPromotion_Reward[3321818][1]["RewardItem"][1] = {}
	tWarriorsPromotion_Reward[3321818][1]["RewardItem"][1]["Id"] = 3007115 -- 【库】BoundlessHeart(A)[属性:9], 【表格】无量心经·上篇
	tWarriorsPromotion_Reward[3321818][1]["RewardItem"][1]["Attr"] = "0 1" -- BoundlessHeart(A)*1


	-- ===无量心经·下篇
	-- ===索引: tWarriorsPromotion_Reward[3321818][2]
	-- ===删除: 3321818,1
	tWarriorsPromotion_Reward[3321818][2] = {}
	tWarriorsPromotion_Reward[3321818][2]["LogId"] = 12001448
	tWarriorsPromotion_Reward[3321818][2]["DeleteItem"] = {}
	tWarriorsPromotion_Reward[3321818][2]["DeleteItem"][1] = {}
	tWarriorsPromotion_Reward[3321818][2]["DeleteItem"][1]["Id"] = 3321818 -- 【库】BoundlessHeartPack[属性:9]
	tWarriorsPromotion_Reward[3321818][2]["RewardItem"] = {}
	tWarriorsPromotion_Reward[3321818][2]["RewardItem"][1] = {}
	tWarriorsPromotion_Reward[3321818][2]["RewardItem"][1]["Id"] = 3007116 -- 【库】BoundlessHeart(C)[属性:9], 【表格】无量心经·下篇
	tWarriorsPromotion_Reward[3321818][2]["RewardItem"][1]["Attr"] = "0 1" -- BoundlessHeart(C)*1

	-- ===无量心经·中篇
	-- ===索引: tWarriorsPromotion_Reward[3321818][2]
	-- ===删除: 3321818,1
	tWarriorsPromotion_Reward[3321818][3] = {}
	tWarriorsPromotion_Reward[3321818][3]["LogId"] = 12001448
	tWarriorsPromotion_Reward[3321818][3]["DeleteItem"] = {}
	tWarriorsPromotion_Reward[3321818][3]["DeleteItem"][1] = {}
	tWarriorsPromotion_Reward[3321818][3]["DeleteItem"][1]["Id"] = 3321818 -- 【库】BoundlessHeartPack[属性:9]
	tWarriorsPromotion_Reward[3321818][3]["RewardItem"] = {}
	tWarriorsPromotion_Reward[3321818][3]["RewardItem"][1] = {}
	tWarriorsPromotion_Reward[3321818][3]["RewardItem"][1]["Id"] = 3007117 -- 【库】BoundlessHeart(B)[属性:9], 【表格】无量心经·下篇
	tWarriorsPromotion_Reward[3321818][3]["RewardItem"][1]["Attr"] = "0 1" -- BoundlessHeart(B)*1
	
	-- ===太乙神功礼包
	-- ===索引: tWarriorsPromotion_Reward[3321819][1]
	-- ===删除: 3321819,1
	tWarriorsPromotion_Reward[3321819] = {}
	tWarriorsPromotion_Reward[3321819][1] = {}
	tWarriorsPromotion_Reward[3321819][1]["LogId"] = 12001448
	tWarriorsPromotion_Reward[3321819][1]["DeleteItem"] = {}
	tWarriorsPromotion_Reward[3321819][1]["DeleteItem"][1] = {}
	tWarriorsPromotion_Reward[3321819][1]["DeleteItem"][1]["Id"] = 3321819 -- 【库】DoctrineofDeityPack[属性:9]
	tWarriorsPromotion_Reward[3321819][1]["RewardItem"] = {}
	tWarriorsPromotion_Reward[3321819][1]["RewardItem"][1] = {}
	tWarriorsPromotion_Reward[3321819][1]["RewardItem"][1]["Id"] = 3005399 -- 【库】DoctrineofDeity(A)[属性:9], 【表格】太乙神功·上篇
	tWarriorsPromotion_Reward[3321819][1]["RewardItem"][1]["Attr"] = "0 1" -- DoctrineofDeity(A)*1

	-- ===太乙神功礼包
	-- ===索引: tWarriorsPromotion_Reward[3321819][2]
	-- ===删除: 3321819,1
	tWarriorsPromotion_Reward[3321819][2] = {}
	tWarriorsPromotion_Reward[3321819][2]["LogId"] = 12001448
	tWarriorsPromotion_Reward[3321819][2]["DeleteItem"] = {}
	tWarriorsPromotion_Reward[3321819][2]["DeleteItem"][1] = {}
	tWarriorsPromotion_Reward[3321819][2]["DeleteItem"][1]["Id"] = 3321819 -- 【库】DoctrineofDeityPack[属性:9]
	tWarriorsPromotion_Reward[3321819][2]["RewardItem"] = {}
	tWarriorsPromotion_Reward[3321819][2]["RewardItem"][1] = {}
	tWarriorsPromotion_Reward[3321819][2]["RewardItem"][1]["Id"] = 3005400 -- 【库】DoctrineofDeity(C)[属性:9], 【表格】太乙神功·下篇
	tWarriorsPromotion_Reward[3321819][2]["RewardItem"][1]["Attr"] = "0 1" -- DoctrineofDeity(C)*1


	-- ===太乙神功礼包
	-- ===索引: tWarriorsPromotion_Reward[3321819][2]
	-- ===删除: 3321819,1
	tWarriorsPromotion_Reward[3321819][3] = {}
	tWarriorsPromotion_Reward[3321819][3]["LogId"] = 12001448
	tWarriorsPromotion_Reward[3321819][3]["DeleteItem"] = {}
	tWarriorsPromotion_Reward[3321819][3]["DeleteItem"][1] = {}
	tWarriorsPromotion_Reward[3321819][3]["DeleteItem"][1]["Id"] = 3321819 -- 【库】DoctrineofDeityPack[属性:9]
	tWarriorsPromotion_Reward[3321819][3]["RewardItem"] = {}
	tWarriorsPromotion_Reward[3321819][3]["RewardItem"][1] = {}
	tWarriorsPromotion_Reward[3321819][3]["RewardItem"][1]["Id"] = 3005401 -- 【库】DoctrineofDeity(C)[属性:9], 【表格】太乙神功·下篇
	tWarriorsPromotion_Reward[3321819][3]["RewardItem"][1]["Attr"] = "0 1" -- DoctrineofDeity(C)*1


	-- ===枯荣禅功礼包
	-- ===索引: tWarriorsPromotion_Reward[3321820][1]
	-- ===删除: 3321820,1
	tWarriorsPromotion_Reward[3321820] = {}
	tWarriorsPromotion_Reward[3321820][1] = {}
	tWarriorsPromotion_Reward[3321820][1]["LogId"] = 12001448
	tWarriorsPromotion_Reward[3321820][1]["DeleteItem"] = {}
	tWarriorsPromotion_Reward[3321820][1]["DeleteItem"][1] = {}
	tWarriorsPromotion_Reward[3321820][1]["DeleteItem"][1]["Id"] = 3321820 -- 【库】PuzzleofLifePack[属性:9]
	tWarriorsPromotion_Reward[3321820][1]["RewardItem"] = {}
	tWarriorsPromotion_Reward[3321820][1]["RewardItem"][1] = {}
	tWarriorsPromotion_Reward[3321820][1]["RewardItem"][1]["Id"] = 3007230 -- 【库】PuzzleofLife(A)[属性:9], 【表格】枯荣禅功·上篇
	tWarriorsPromotion_Reward[3321820][1]["RewardItem"][1]["Attr"] = "0 1" -- PuzzleofLife(A)*1

	-- ===枯荣禅功礼包
	-- ===索引: tWarriorsPromotion_Reward[3321820][2]
	-- ===删除: 3321820,1
	tWarriorsPromotion_Reward[3321820][2] = {}
	tWarriorsPromotion_Reward[3321820][2]["LogId"] = 12001448
	tWarriorsPromotion_Reward[3321820][2]["DeleteItem"] = {}
	tWarriorsPromotion_Reward[3321820][2]["DeleteItem"][1] = {}
	tWarriorsPromotion_Reward[3321820][2]["DeleteItem"][1]["Id"] = 3321820 -- 【库】PuzzleofLifePack[属性:9]
	tWarriorsPromotion_Reward[3321820][2]["RewardItem"] = {}
	tWarriorsPromotion_Reward[3321820][2]["RewardItem"][1] = {}
	tWarriorsPromotion_Reward[3321820][2]["RewardItem"][1]["Id"] = 3007231 -- 【库】PuzzleofLife(C)[属性:9], 【表格】枯荣禅功·下篇
	tWarriorsPromotion_Reward[3321820][2]["RewardItem"][1]["Attr"] = "0 1" -- PuzzleofLife(C)*1



	-- ===枯荣禅功礼包
	-- ===索引: tWarriorsPromotion_Reward[3321820][2]
	-- ===删除: 3321820,1
	tWarriorsPromotion_Reward[3321820][3] = {}
	tWarriorsPromotion_Reward[3321820][3]["LogId"] = 12001448
	tWarriorsPromotion_Reward[3321820][3]["DeleteItem"] = {}
	tWarriorsPromotion_Reward[3321820][3]["DeleteItem"][1] = {}
	tWarriorsPromotion_Reward[3321820][3]["DeleteItem"][1]["Id"] = 3321820 -- 【库】PuzzleofLifePack[属性:9]
	tWarriorsPromotion_Reward[3321820][3]["RewardItem"] = {}
	tWarriorsPromotion_Reward[3321820][3]["RewardItem"][1] = {}
	tWarriorsPromotion_Reward[3321820][3]["RewardItem"][1]["Id"] = 3007232 -- 【库】PuzzleofLife(C)[属性:9], 【表格】枯荣禅功·下篇
	tWarriorsPromotion_Reward[3321820][3]["RewardItem"][1]["Attr"] = "0 1" -- PuzzleofLife(C)*1



	-- ===一星人物外套礼包(天石购买)
	-- ===索引: tWarriorsPromotion_Reward[3321821]
	-- ===删除: 3321821,1
	tWarriorsPromotion_Reward[3321821] = {}
	tWarriorsPromotion_Reward[3321821]["LogId"] = 12001448
	tWarriorsPromotion_Reward[3321821]["DeleteItem"] = {}
	tWarriorsPromotion_Reward[3321821]["DeleteItem"][1] = {}
	tWarriorsPromotion_Reward[3321821]["DeleteItem"][1]["Id"] = 3321821 -- 【库】1-StarGarmentPack[属性:9]
	tWarriorsPromotion_Reward[3321821]["RewardItem"] = {}
	tWarriorsPromotion_Reward[3321821]["RewardItem"][1] = {}
	tWarriorsPromotion_Reward[3321821]["RewardItem"][1]["Id"] = 181305 -- 【库】WhitePhoenix[属性:0], 【表格】WhitePhoenix
	tWarriorsPromotion_Reward[3321821]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑WhitePhoenix（赠）*1
	tWarriorsPromotion_Reward[3321821]["RewardItem"][2] = {}
	tWarriorsPromotion_Reward[3321821]["RewardItem"][2]["Id"] = 181315 -- 【库】WhiteElegance[属性:0], 【表格】WhiteElegance
	tWarriorsPromotion_Reward[3321821]["RewardItem"][2]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑WhiteElegance（赠）*1
	tWarriorsPromotion_Reward[3321821]["RewardItem"][3] = {}
	tWarriorsPromotion_Reward[3321821]["RewardItem"][3]["Id"] = 181325 -- 【库】WhiteCelestial[属性:0], 【表格】WhiteCelestial
	tWarriorsPromotion_Reward[3321821]["RewardItem"][3]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑WhiteCelestial（赠）*1
	tWarriorsPromotion_Reward[3321821]["RewardItem"][4] = {}
	tWarriorsPromotion_Reward[3321821]["RewardItem"][4]["Id"] = 181345 -- 【库】ColorfulDress[属性:0], 【表格】ColorfulDress
	tWarriorsPromotion_Reward[3321821]["RewardItem"][4]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑ColorfulDress（赠）*1
	tWarriorsPromotion_Reward[3321821]["RewardItem"][5] = {}
	tWarriorsPromotion_Reward[3321821]["RewardItem"][5]["Id"] = 181405 -- 【库】BrownPhoenix[属性:0], 【表格】BrownPhoenix
	tWarriorsPromotion_Reward[3321821]["RewardItem"][5]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑BrownPhoenix（赠）*1
	tWarriorsPromotion_Reward[3321821]["RewardItem"][6] = {}
	tWarriorsPromotion_Reward[3321821]["RewardItem"][6]["Id"] = 181415 -- 【库】BrownElegance[属性:0], 【表格】BrownElegance
	tWarriorsPromotion_Reward[3321821]["RewardItem"][6]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑BrownElegance（赠）*1
	tWarriorsPromotion_Reward[3321821]["RewardItem"][7] = {}
	tWarriorsPromotion_Reward[3321821]["RewardItem"][7]["Id"] = 181425 -- 【库】BrownCelestial[属性:0], 【表格】BrownCelestial
	tWarriorsPromotion_Reward[3321821]["RewardItem"][7]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑BrownCelestial（赠）*1
	tWarriorsPromotion_Reward[3321821]["RewardItem"][8] = {}
	tWarriorsPromotion_Reward[3321821]["RewardItem"][8]["Id"] = 181505 -- 【库】BlackPhoenix[属性:0], 【表格】BlackPhoenix
	tWarriorsPromotion_Reward[3321821]["RewardItem"][8]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑BlackPhoenix（赠）*1
	tWarriorsPromotion_Reward[3321821]["RewardItem"][9] = {}
	tWarriorsPromotion_Reward[3321821]["RewardItem"][9]["Id"] = 181515 -- 【库】BlackElegance[属性:0], 【表格】BlackElegance
	tWarriorsPromotion_Reward[3321821]["RewardItem"][9]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑BlackElegance（赠）*1
	tWarriorsPromotion_Reward[3321821]["RewardItem"][10] = {}
	tWarriorsPromotion_Reward[3321821]["RewardItem"][10]["Id"] = 181525 -- 【库】BlackCelestial[属性:0], 【表格】BlackCelestial
	tWarriorsPromotion_Reward[3321821]["RewardItem"][10]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑BlackCelestial（赠）*1
	tWarriorsPromotion_Reward[3321821]["RewardItem"][11] = {}
	tWarriorsPromotion_Reward[3321821]["RewardItem"][11]["Id"] = 181605 -- 【库】RedPhoenix[属性:0], 【表格】RedPhoenix
	tWarriorsPromotion_Reward[3321821]["RewardItem"][11]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑RedPhoenix（赠）*1
	tWarriorsPromotion_Reward[3321821]["RewardItem"][12] = {}
	tWarriorsPromotion_Reward[3321821]["RewardItem"][12]["Id"] = 181615 -- 【库】RedElegance[属性:0], 【表格】RedElegance
	tWarriorsPromotion_Reward[3321821]["RewardItem"][12]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑RedElegance（赠）*1
	tWarriorsPromotion_Reward[3321821]["RewardItem"][13] = {}
	tWarriorsPromotion_Reward[3321821]["RewardItem"][13]["Id"] = 181625 -- 【库】RedCelestial[属性:0], 【表格】RedCelestial
	tWarriorsPromotion_Reward[3321821]["RewardItem"][13]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑RedCelestial（赠）*1
	tWarriorsPromotion_Reward[3321821]["RewardItem"][14] = {}
	tWarriorsPromotion_Reward[3321821]["RewardItem"][14]["Id"] = 181705 -- 【库】GreenPhoenix[属性:0], 【表格】GreenPhoenix
	tWarriorsPromotion_Reward[3321821]["RewardItem"][14]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑GreenPhoenix（赠）*1
	tWarriorsPromotion_Reward[3321821]["RewardItem"][15] = {}
	tWarriorsPromotion_Reward[3321821]["RewardItem"][15]["Id"] = 181715 -- 【库】GreenElegance[属性:0], 【表格】GreenElegance
	tWarriorsPromotion_Reward[3321821]["RewardItem"][15]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑GreenElegance（赠）*1
	tWarriorsPromotion_Reward[3321821]["RewardItem"][16] = {}
	tWarriorsPromotion_Reward[3321821]["RewardItem"][16]["Id"] = 181725 -- 【库】CyanCelestial[属性:0], 【表格】CyanCelestial
	tWarriorsPromotion_Reward[3321821]["RewardItem"][16]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑CyanCelestial（赠）*1
	tWarriorsPromotion_Reward[3321821]["RewardItem"][17] = {}
	tWarriorsPromotion_Reward[3321821]["RewardItem"][17]["Id"] = 181805 -- 【库】BluePhoenix[属性:0], 【表格】BluePhoenix
	tWarriorsPromotion_Reward[3321821]["RewardItem"][17]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑BluePhoenix（赠）*1
	tWarriorsPromotion_Reward[3321821]["RewardItem"][18] = {}
	tWarriorsPromotion_Reward[3321821]["RewardItem"][18]["Id"] = 181815 -- 【库】BlueElegance[属性:0], 【表格】BlueElegance
	tWarriorsPromotion_Reward[3321821]["RewardItem"][18]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑BlueElegance（赠）*1
	tWarriorsPromotion_Reward[3321821]["RewardItem"][19] = {}
	tWarriorsPromotion_Reward[3321821]["RewardItem"][19]["Id"] = 181905 -- 【库】PurplePhoenix[属性:0], 【表格】PurplePhoenix
	tWarriorsPromotion_Reward[3321821]["RewardItem"][19]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑PurplePhoenix（赠）*1
	tWarriorsPromotion_Reward[3321821]["RewardItem"][20] = {}
	tWarriorsPromotion_Reward[3321821]["RewardItem"][20]["Id"] = 181915 -- 【库】PurpleElegance[属性:0], 【表格】PurpleElegance
	tWarriorsPromotion_Reward[3321821]["RewardItem"][20]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑PurpleElegance（赠）*1
	tWarriorsPromotion_Reward[3321821]["RewardItem"][21] = {}
	tWarriorsPromotion_Reward[3321821]["RewardItem"][21]["Id"] = 182355 -- 【库】FeatherDress[属性:0], 【表格】FeatherDress
	tWarriorsPromotion_Reward[3321821]["RewardItem"][21]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑FeatherDress（赠）*1
	tWarriorsPromotion_Reward[3321821]["RewardItem"][22] = {}
	tWarriorsPromotion_Reward[3321821]["RewardItem"][22]["Id"] = 183305 -- 【库】SandRaider[属性:0], 【表格】SandRaider
	tWarriorsPromotion_Reward[3321821]["RewardItem"][22]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑SandRaider（赠）*1
	tWarriorsPromotion_Reward[3321821]["RewardItem"][23] = {}
	tWarriorsPromotion_Reward[3321821]["RewardItem"][23]["Id"] = 181365 -- 【库】MongolianDress[属性:0], 【表格】MongolianDress
	tWarriorsPromotion_Reward[3321821]["RewardItem"][23]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑MongolianDress（赠）*1
	tWarriorsPromotion_Reward[3321821]["RewardItem"][24] = {}
	tWarriorsPromotion_Reward[3321821]["RewardItem"][24]["Id"] = 181375 -- 【库】UyghurDress[属性:0], 【表格】UyghurDress
	tWarriorsPromotion_Reward[3321821]["RewardItem"][24]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑UyghurDress（赠）*1
	tWarriorsPromotion_Reward[3321821]["RewardItem"][25] = {}
	tWarriorsPromotion_Reward[3321821]["RewardItem"][25]["Id"] = 181385 -- 【库】ManchuDress[属性:0], 【表格】ManchuDress
	tWarriorsPromotion_Reward[3321821]["RewardItem"][25]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑ManchuDress（赠）*1
	tWarriorsPromotion_Reward[3321821]["RewardItem"][26] = {}
	tWarriorsPromotion_Reward[3321821]["RewardItem"][26]["Id"] = 181395 -- 【库】KoreanDress[属性:0], 【表格】KoreanDress
	tWarriorsPromotion_Reward[3321821]["RewardItem"][26]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑KoreanDress（赠）*1
	tWarriorsPromotion_Reward[3321821]["RewardItem"][27] = {}
	tWarriorsPromotion_Reward[3321821]["RewardItem"][27]["Id"] = 181825 -- 【库】BlueCelestial[属性:0], 【表格】BlueCelestial
	tWarriorsPromotion_Reward[3321821]["RewardItem"][27]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑BlueCelestial（赠）*1
	tWarriorsPromotion_Reward[3321821]["RewardItem"][28] = {}
	tWarriorsPromotion_Reward[3321821]["RewardItem"][28]["Id"] = 181925 -- 【库】PurpleCelestial[属性:0], 【表格】PurpleCelestial
	tWarriorsPromotion_Reward[3321821]["RewardItem"][28]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑PurpleCelestial（赠）*1
	tWarriorsPromotion_Reward[3321821]["RewardItem"][29] = {}
	tWarriorsPromotion_Reward[3321821]["RewardItem"][29]["Id"] = 182405 -- 【库】SouthofCloud[属性:0], 【表格】SouthofCloud
	tWarriorsPromotion_Reward[3321821]["RewardItem"][29]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑SouthofCloud（赠）*1
	tWarriorsPromotion_Reward[3321821]["RewardItem"][30] = {}
	tWarriorsPromotion_Reward[3321821]["RewardItem"][30]["Id"] = 182315 -- 【库】BonfireNight[属性:0], 【表格】BonfireNight
	tWarriorsPromotion_Reward[3321821]["RewardItem"][30]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑BonfireNight（赠）*1
	tWarriorsPromotion_Reward[3321821]["RewardItem"][31] = {}
	tWarriorsPromotion_Reward[3321821]["RewardItem"][31]["Id"] = 182325 -- 【库】AngelicalDress[属性:0], 【表格】AngelicalDress
	tWarriorsPromotion_Reward[3321821]["RewardItem"][31]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑AngelicalDress（赠）*1
	tWarriorsPromotion_Reward[3321821]["RewardItem"][32] = {}
	tWarriorsPromotion_Reward[3321821]["RewardItem"][32]["Id"] = 182335 -- 【库】BlueDream[属性:0], 【表格】BlueDream
	tWarriorsPromotion_Reward[3321821]["RewardItem"][32]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑BlueDream（赠）*1
	tWarriorsPromotion_Reward[3321821]["RewardItem"][33] = {}
	tWarriorsPromotion_Reward[3321821]["RewardItem"][33]["Id"] = 182345 -- 【库】MoonOrchid[属性:0], 【表格】MoonOrchid
	tWarriorsPromotion_Reward[3321821]["RewardItem"][33]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑MoonOrchid（赠）*1
	tWarriorsPromotion_Reward[3321821]["RewardItem"][34] = {}
	tWarriorsPromotion_Reward[3321821]["RewardItem"][34]["Id"] = 182365 -- 【库】HeavenScent[属性:0], 【表格】HeavenScent
	tWarriorsPromotion_Reward[3321821]["RewardItem"][34]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑HeavenScent（赠）*1
	tWarriorsPromotion_Reward[3321821]["RewardItem"][35] = {}
	tWarriorsPromotion_Reward[3321821]["RewardItem"][35]["Id"] = 182375 -- 【库】CherryBlossom[属性:0], 【表格】CherryBlossom
	tWarriorsPromotion_Reward[3321821]["RewardItem"][35]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑CherryBlossom（赠）*1
	tWarriorsPromotion_Reward[3321821]["RewardItem"][36] = {}
	tWarriorsPromotion_Reward[3321821]["RewardItem"][36]["Id"] = 182385 -- 【库】DreaminFlowers[属性:0], 【表格】DreaminFlowers
	tWarriorsPromotion_Reward[3321821]["RewardItem"][36]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑DreaminFlowers（赠）*1


	-- ===一星人物外套礼包(赠点购买)
	-- ===索引: tWarriorsPromotion_Reward[3321822]
	-- ===删除: 3321822,1
	tWarriorsPromotion_Reward[3321822] = {}
	tWarriorsPromotion_Reward[3321822]["LogId"] = 12001448
	tWarriorsPromotion_Reward[3321822]["DeleteItem"] = {}
	tWarriorsPromotion_Reward[3321822]["DeleteItem"][1] = {}
	tWarriorsPromotion_Reward[3321822]["DeleteItem"][1]["Id"] = 3321822 -- 【库】1-StarGarmentPack[属性:9]
	tWarriorsPromotion_Reward[3321822]["RewardItem"] = {}
	tWarriorsPromotion_Reward[3321822]["RewardItem"][1] = {}
	tWarriorsPromotion_Reward[3321822]["RewardItem"][1]["Id"] = 181305 -- 【库】WhitePhoenix[属性:0], 【表格】WhitePhoenix
	tWarriorsPromotion_Reward[3321822]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑WhitePhoenix（赠）*1
	tWarriorsPromotion_Reward[3321822]["RewardItem"][2] = {}
	tWarriorsPromotion_Reward[3321822]["RewardItem"][2]["Id"] = 181315 -- 【库】WhiteElegance[属性:0], 【表格】WhiteElegance
	tWarriorsPromotion_Reward[3321822]["RewardItem"][2]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑WhiteElegance（赠）*1
	tWarriorsPromotion_Reward[3321822]["RewardItem"][3] = {}
	tWarriorsPromotion_Reward[3321822]["RewardItem"][3]["Id"] = 181325 -- 【库】WhiteCelestial[属性:0], 【表格】WhiteCelestial
	tWarriorsPromotion_Reward[3321822]["RewardItem"][3]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑WhiteCelestial（赠）*1
	tWarriorsPromotion_Reward[3321822]["RewardItem"][4] = {}
	tWarriorsPromotion_Reward[3321822]["RewardItem"][4]["Id"] = 181345 -- 【库】ColorfulDress[属性:0], 【表格】ColorfulDress
	tWarriorsPromotion_Reward[3321822]["RewardItem"][4]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑ColorfulDress（赠）*1
	tWarriorsPromotion_Reward[3321822]["RewardItem"][5] = {}
	tWarriorsPromotion_Reward[3321822]["RewardItem"][5]["Id"] = 181405 -- 【库】BrownPhoenix[属性:0], 【表格】BrownPhoenix
	tWarriorsPromotion_Reward[3321822]["RewardItem"][5]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑BrownPhoenix（赠）*1
	tWarriorsPromotion_Reward[3321822]["RewardItem"][6] = {}
	tWarriorsPromotion_Reward[3321822]["RewardItem"][6]["Id"] = 181415 -- 【库】BrownElegance[属性:0], 【表格】BrownElegance
	tWarriorsPromotion_Reward[3321822]["RewardItem"][6]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑BrownElegance（赠）*1
	tWarriorsPromotion_Reward[3321822]["RewardItem"][7] = {}
	tWarriorsPromotion_Reward[3321822]["RewardItem"][7]["Id"] = 181425 -- 【库】BrownCelestial[属性:0], 【表格】BrownCelestial
	tWarriorsPromotion_Reward[3321822]["RewardItem"][7]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑BrownCelestial（赠）*1
	tWarriorsPromotion_Reward[3321822]["RewardItem"][8] = {}
	tWarriorsPromotion_Reward[3321822]["RewardItem"][8]["Id"] = 181505 -- 【库】BlackPhoenix[属性:0], 【表格】BlackPhoenix
	tWarriorsPromotion_Reward[3321822]["RewardItem"][8]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑BlackPhoenix（赠）*1
	tWarriorsPromotion_Reward[3321822]["RewardItem"][9] = {}
	tWarriorsPromotion_Reward[3321822]["RewardItem"][9]["Id"] = 181515 -- 【库】BlackElegance[属性:0], 【表格】BlackElegance
	tWarriorsPromotion_Reward[3321822]["RewardItem"][9]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑BlackElegance（赠）*1
	tWarriorsPromotion_Reward[3321822]["RewardItem"][10] = {}
	tWarriorsPromotion_Reward[3321822]["RewardItem"][10]["Id"] = 181525 -- 【库】BlackCelestial[属性:0], 【表格】BlackCelestial
	tWarriorsPromotion_Reward[3321822]["RewardItem"][10]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑BlackCelestial（赠）*1
	tWarriorsPromotion_Reward[3321822]["RewardItem"][11] = {}
	tWarriorsPromotion_Reward[3321822]["RewardItem"][11]["Id"] = 181605 -- 【库】RedPhoenix[属性:0], 【表格】RedPhoenix
	tWarriorsPromotion_Reward[3321822]["RewardItem"][11]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑RedPhoenix（赠）*1
	tWarriorsPromotion_Reward[3321822]["RewardItem"][12] = {}
	tWarriorsPromotion_Reward[3321822]["RewardItem"][12]["Id"] = 181615 -- 【库】RedElegance[属性:0], 【表格】RedElegance
	tWarriorsPromotion_Reward[3321822]["RewardItem"][12]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑RedElegance（赠）*1
	tWarriorsPromotion_Reward[3321822]["RewardItem"][13] = {}
	tWarriorsPromotion_Reward[3321822]["RewardItem"][13]["Id"] = 181625 -- 【库】RedCelestial[属性:0], 【表格】RedCelestial
	tWarriorsPromotion_Reward[3321822]["RewardItem"][13]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑RedCelestial（赠）*1
	tWarriorsPromotion_Reward[3321822]["RewardItem"][14] = {}
	tWarriorsPromotion_Reward[3321822]["RewardItem"][14]["Id"] = 181705 -- 【库】GreenPhoenix[属性:0], 【表格】GreenPhoenix
	tWarriorsPromotion_Reward[3321822]["RewardItem"][14]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑GreenPhoenix（赠）*1
	tWarriorsPromotion_Reward[3321822]["RewardItem"][15] = {}
	tWarriorsPromotion_Reward[3321822]["RewardItem"][15]["Id"] = 181715 -- 【库】GreenElegance[属性:0], 【表格】GreenElegance
	tWarriorsPromotion_Reward[3321822]["RewardItem"][15]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑GreenElegance（赠）*1
	tWarriorsPromotion_Reward[3321822]["RewardItem"][16] = {}
	tWarriorsPromotion_Reward[3321822]["RewardItem"][16]["Id"] = 181725 -- 【库】CyanCelestial[属性:0], 【表格】CyanCelestial
	tWarriorsPromotion_Reward[3321822]["RewardItem"][16]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑CyanCelestial（赠）*1
	tWarriorsPromotion_Reward[3321822]["RewardItem"][17] = {}
	tWarriorsPromotion_Reward[3321822]["RewardItem"][17]["Id"] = 181805 -- 【库】BluePhoenix[属性:0], 【表格】BluePhoenix
	tWarriorsPromotion_Reward[3321822]["RewardItem"][17]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑BluePhoenix（赠）*1
	tWarriorsPromotion_Reward[3321822]["RewardItem"][18] = {}
	tWarriorsPromotion_Reward[3321822]["RewardItem"][18]["Id"] = 181815 -- 【库】BlueElegance[属性:0], 【表格】BlueElegance
	tWarriorsPromotion_Reward[3321822]["RewardItem"][18]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑BlueElegance（赠）*1
	tWarriorsPromotion_Reward[3321822]["RewardItem"][19] = {}
	tWarriorsPromotion_Reward[3321822]["RewardItem"][19]["Id"] = 181905 -- 【库】PurplePhoenix[属性:0], 【表格】PurplePhoenix
	tWarriorsPromotion_Reward[3321822]["RewardItem"][19]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑PurplePhoenix（赠）*1
	tWarriorsPromotion_Reward[3321822]["RewardItem"][20] = {}
	tWarriorsPromotion_Reward[3321822]["RewardItem"][20]["Id"] = 181915 -- 【库】PurpleElegance[属性:0], 【表格】PurpleElegance
	tWarriorsPromotion_Reward[3321822]["RewardItem"][20]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑PurpleElegance（赠）*1
	tWarriorsPromotion_Reward[3321822]["RewardItem"][21] = {}
	tWarriorsPromotion_Reward[3321822]["RewardItem"][21]["Id"] = 182355 -- 【库】FeatherDress[属性:0], 【表格】FeatherDress
	tWarriorsPromotion_Reward[3321822]["RewardItem"][21]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑FeatherDress（赠）*1
	tWarriorsPromotion_Reward[3321822]["RewardItem"][22] = {}
	tWarriorsPromotion_Reward[3321822]["RewardItem"][22]["Id"] = 183305 -- 【库】SandRaider[属性:0], 【表格】SandRaider
	tWarriorsPromotion_Reward[3321822]["RewardItem"][22]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑SandRaider（赠）*1
	tWarriorsPromotion_Reward[3321822]["RewardItem"][23] = {}
	tWarriorsPromotion_Reward[3321822]["RewardItem"][23]["Id"] = 181365 -- 【库】MongolianDress[属性:0], 【表格】MongolianDress
	tWarriorsPromotion_Reward[3321822]["RewardItem"][23]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑MongolianDress（赠）*1
	tWarriorsPromotion_Reward[3321822]["RewardItem"][24] = {}
	tWarriorsPromotion_Reward[3321822]["RewardItem"][24]["Id"] = 181375 -- 【库】UyghurDress[属性:0], 【表格】UyghurDress
	tWarriorsPromotion_Reward[3321822]["RewardItem"][24]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑UyghurDress（赠）*1
	tWarriorsPromotion_Reward[3321822]["RewardItem"][25] = {}
	tWarriorsPromotion_Reward[3321822]["RewardItem"][25]["Id"] = 181385 -- 【库】ManchuDress[属性:0], 【表格】ManchuDress
	tWarriorsPromotion_Reward[3321822]["RewardItem"][25]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑ManchuDress（赠）*1
	tWarriorsPromotion_Reward[3321822]["RewardItem"][26] = {}
	tWarriorsPromotion_Reward[3321822]["RewardItem"][26]["Id"] = 181395 -- 【库】KoreanDress[属性:0], 【表格】KoreanDress
	tWarriorsPromotion_Reward[3321822]["RewardItem"][26]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑KoreanDress（赠）*1
	tWarriorsPromotion_Reward[3321822]["RewardItem"][27] = {}
	tWarriorsPromotion_Reward[3321822]["RewardItem"][27]["Id"] = 181825 -- 【库】BlueCelestial[属性:0], 【表格】BlueCelestial
	tWarriorsPromotion_Reward[3321822]["RewardItem"][27]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑BlueCelestial（赠）*1
	tWarriorsPromotion_Reward[3321822]["RewardItem"][28] = {}
	tWarriorsPromotion_Reward[3321822]["RewardItem"][28]["Id"] = 181925 -- 【库】PurpleCelestial[属性:0], 【表格】PurpleCelestial
	tWarriorsPromotion_Reward[3321822]["RewardItem"][28]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑PurpleCelestial（赠）*1
	tWarriorsPromotion_Reward[3321822]["RewardItem"][29] = {}
	tWarriorsPromotion_Reward[3321822]["RewardItem"][29]["Id"] = 182405 -- 【库】SouthofCloud[属性:0], 【表格】SouthofCloud
	tWarriorsPromotion_Reward[3321822]["RewardItem"][29]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑SouthofCloud（赠）*1
	tWarriorsPromotion_Reward[3321822]["RewardItem"][30] = {}
	tWarriorsPromotion_Reward[3321822]["RewardItem"][30]["Id"] = 182315 -- 【库】BonfireNight[属性:0], 【表格】BonfireNight
	tWarriorsPromotion_Reward[3321822]["RewardItem"][30]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑BonfireNight（赠）*1
	tWarriorsPromotion_Reward[3321822]["RewardItem"][31] = {}
	tWarriorsPromotion_Reward[3321822]["RewardItem"][31]["Id"] = 182325 -- 【库】AngelicalDress[属性:0], 【表格】AngelicalDress
	tWarriorsPromotion_Reward[3321822]["RewardItem"][31]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑AngelicalDress（赠）*1
	tWarriorsPromotion_Reward[3321822]["RewardItem"][32] = {}
	tWarriorsPromotion_Reward[3321822]["RewardItem"][32]["Id"] = 182335 -- 【库】BlueDream[属性:0], 【表格】BlueDream
	tWarriorsPromotion_Reward[3321822]["RewardItem"][32]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑BlueDream（赠）*1
	tWarriorsPromotion_Reward[3321822]["RewardItem"][33] = {}
	tWarriorsPromotion_Reward[3321822]["RewardItem"][33]["Id"] = 182345 -- 【库】MoonOrchid[属性:0], 【表格】MoonOrchid
	tWarriorsPromotion_Reward[3321822]["RewardItem"][33]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑MoonOrchid（赠）*1
	tWarriorsPromotion_Reward[3321822]["RewardItem"][34] = {}
	tWarriorsPromotion_Reward[3321822]["RewardItem"][34]["Id"] = 182365 -- 【库】HeavenScent[属性:0], 【表格】HeavenScent
	tWarriorsPromotion_Reward[3321822]["RewardItem"][34]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑HeavenScent（赠）*1
	tWarriorsPromotion_Reward[3321822]["RewardItem"][35] = {}
	tWarriorsPromotion_Reward[3321822]["RewardItem"][35]["Id"] = 182375 -- 【库】CherryBlossom[属性:0], 【表格】CherryBlossom
	tWarriorsPromotion_Reward[3321822]["RewardItem"][35]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑CherryBlossom（赠）*1
	tWarriorsPromotion_Reward[3321822]["RewardItem"][36] = {}
	tWarriorsPromotion_Reward[3321822]["RewardItem"][36]["Id"] = 182385 -- 【库】DreaminFlowers[属性:0], 【表格】DreaminFlowers
	tWarriorsPromotion_Reward[3321822]["RewardItem"][36]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑DreaminFlowers（赠）*1


	-- ===一星骑宠外套礼包(赠点购买)
	-- ===索引: tWarriorsPromotion_Reward[3321823]
	-- ===删除: 3321823,1
	tWarriorsPromotion_Reward[3321823] = {}
	tWarriorsPromotion_Reward[3321823]["LogId"] = 12001448
	tWarriorsPromotion_Reward[3321823]["DeleteItem"] = {}
	tWarriorsPromotion_Reward[3321823]["DeleteItem"][1] = {}
	tWarriorsPromotion_Reward[3321823]["DeleteItem"][1]["Id"] = 3321823 -- 【库】1-StarMountArmorPack[属性:9]
	tWarriorsPromotion_Reward[3321823]["RewardItem"] = {}
	tWarriorsPromotion_Reward[3321823]["RewardItem"][1] = {}
	tWarriorsPromotion_Reward[3321823]["RewardItem"][1]["Id"] = 200000 -- 【库】PurpleTiger[属性:0], 【表格】PurpleTiger
	tWarriorsPromotion_Reward[3321823]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑PurpleTiger（赠）*1
	tWarriorsPromotion_Reward[3321823]["RewardItem"][2] = {}
	tWarriorsPromotion_Reward[3321823]["RewardItem"][2]["Id"] = 200001 -- 【库】ScarletTiger[属性:0], 【表格】ScarletTiger
	tWarriorsPromotion_Reward[3321823]["RewardItem"][2]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑ScarletTiger（赠）*1
	tWarriorsPromotion_Reward[3321823]["RewardItem"][3] = {}
	tWarriorsPromotion_Reward[3321823]["RewardItem"][3]["Id"] = 200004 -- 【库】InfernoTiger[属性:0], 【表格】InfernoTiger
	tWarriorsPromotion_Reward[3321823]["RewardItem"][3]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑InfernoTiger（赠）*1
	tWarriorsPromotion_Reward[3321823]["RewardItem"][4] = {}
	tWarriorsPromotion_Reward[3321823]["RewardItem"][4]["Id"] = 200006 -- 【库】SapphireTiger[属性:0], 【表格】SapphireTiger
	tWarriorsPromotion_Reward[3321823]["RewardItem"][4]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑SapphireTiger（赠）*1
	tWarriorsPromotion_Reward[3321823]["RewardItem"][5] = {}
	tWarriorsPromotion_Reward[3321823]["RewardItem"][5]["Id"] = 200018 -- 【库】SoulTiger[属性:0], 【表格】SoulTiger
	tWarriorsPromotion_Reward[3321823]["RewardItem"][5]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑SoulTiger（赠）*1
	tWarriorsPromotion_Reward[3321823]["RewardItem"][6] = {}
	tWarriorsPromotion_Reward[3321823]["RewardItem"][6]["Id"] = 200019 -- 【库】IcyTiger[属性:0], 【表格】IcyTiger
	tWarriorsPromotion_Reward[3321823]["RewardItem"][6]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑IcyTiger（赠）*1
	tWarriorsPromotion_Reward[3321823]["RewardItem"][7] = {}
	tWarriorsPromotion_Reward[3321823]["RewardItem"][7]["Id"] = 200020 -- 【库】PurpleTiger[属性:0], 【表格】PurpleTiger
	tWarriorsPromotion_Reward[3321823]["RewardItem"][7]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑PurpleTiger（赠）*1
	tWarriorsPromotion_Reward[3321823]["RewardItem"][8] = {}
	tWarriorsPromotion_Reward[3321823]["RewardItem"][8]["Id"] = 200101 -- 【库】MarshDeer[属性:0], 【表格】MarshDeer
	tWarriorsPromotion_Reward[3321823]["RewardItem"][8]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑MarshDeer（赠）*1
	tWarriorsPromotion_Reward[3321823]["RewardItem"][9] = {}
	tWarriorsPromotion_Reward[3321823]["RewardItem"][9]["Id"] = 200102 -- 【库】SikaDeer[属性:0], 【表格】SikaDeer
	tWarriorsPromotion_Reward[3321823]["RewardItem"][9]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑SikaDeer（赠）*1
	tWarriorsPromotion_Reward[3321823]["RewardItem"][10] = {}
	tWarriorsPromotion_Reward[3321823]["RewardItem"][10]["Id"] = 200120 -- 【库】CrimsonDeer[属性:0], 【表格】CrimsonDeer
	tWarriorsPromotion_Reward[3321823]["RewardItem"][10]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑CrimsonDeer（赠）*1
	tWarriorsPromotion_Reward[3321823]["RewardItem"][11] = {}
	tWarriorsPromotion_Reward[3321823]["RewardItem"][11]["Id"] = 200121 -- 【库】CeriseDeer[属性:0], 【表格】CeriseDeer
	tWarriorsPromotion_Reward[3321823]["RewardItem"][11]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑CeriseDeer（赠）*1
	tWarriorsPromotion_Reward[3321823]["RewardItem"][12] = {}
	tWarriorsPromotion_Reward[3321823]["RewardItem"][12]["Id"] = 200122 -- 【库】GlowingDeer[属性:0], 【表格】GlowingDeer
	tWarriorsPromotion_Reward[3321823]["RewardItem"][12]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑GlowingDeer（赠）*1
	tWarriorsPromotion_Reward[3321823]["RewardItem"][13] = {}
	tWarriorsPromotion_Reward[3321823]["RewardItem"][13]["Id"] = 200123 -- 【库】PhantomDeer[属性:0], 【表格】PhantomDeer
	tWarriorsPromotion_Reward[3321823]["RewardItem"][13]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑PhantomDeer（赠）*1
	tWarriorsPromotion_Reward[3321823]["RewardItem"][14] = {}
	tWarriorsPromotion_Reward[3321823]["RewardItem"][14]["Id"] = 200124 -- 【库】MirageDeer[属性:0], 【表格】MirageDeer
	tWarriorsPromotion_Reward[3321823]["RewardItem"][14]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑MirageDeer（赠）*1
	tWarriorsPromotion_Reward[3321823]["RewardItem"][15] = {}
	tWarriorsPromotion_Reward[3321823]["RewardItem"][15]["Id"] = 200125 -- 【库】JasperDeer[属性:0], 【表格】JasperDeer
	tWarriorsPromotion_Reward[3321823]["RewardItem"][15]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑JasperDeer（赠）*1
	tWarriorsPromotion_Reward[3321823]["RewardItem"][16] = {}
	tWarriorsPromotion_Reward[3321823]["RewardItem"][16]["Id"] = 200126 -- 【库】CelestialDeer[属性:0], 【表格】CelestialDeer
	tWarriorsPromotion_Reward[3321823]["RewardItem"][16]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑CelestialDeer（赠）*1
	tWarriorsPromotion_Reward[3321823]["RewardItem"][17] = {}
	tWarriorsPromotion_Reward[3321823]["RewardItem"][17]["Id"] = 200015 -- 【库】EmeraldTiger[属性:0], 【表格】EmeraldTiger
	tWarriorsPromotion_Reward[3321823]["RewardItem"][17]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑EmeraldTiger（赠）*1
	tWarriorsPromotion_Reward[3321823]["RewardItem"][18] = {}
	tWarriorsPromotion_Reward[3321823]["RewardItem"][18]["Id"] = 200016 -- 【库】AbyssTiger[属性:0], 【表格】AbyssTiger
	tWarriorsPromotion_Reward[3321823]["RewardItem"][18]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑AbyssTiger（赠）*1
	tWarriorsPromotion_Reward[3321823]["RewardItem"][19] = {}
	tWarriorsPromotion_Reward[3321823]["RewardItem"][19]["Id"] = 200547 -- 【库】JasperTiger[属性:0], 【表格】JasperTiger
	tWarriorsPromotion_Reward[3321823]["RewardItem"][19]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑JasperTiger（赠）*1


	-- ===一星骑宠外套礼包(赠点购买)
	-- ===索引: tWarriorsPromotion_Reward[3321823]
	-- ===删除: 3321823,1
	tWarriorsPromotion_Reward[3321824] = {}
	tWarriorsPromotion_Reward[3321824]["LogId"] = 12001448
	tWarriorsPromotion_Reward[3321824]["DeleteItem"] = {}
	tWarriorsPromotion_Reward[3321824]["DeleteItem"][1] = {}
	tWarriorsPromotion_Reward[3321824]["DeleteItem"][1]["Id"] = 3321824 -- 【库】1-StarMountArmorPack[属性:9]
	tWarriorsPromotion_Reward[3321824]["RewardItem"] = {}
	tWarriorsPromotion_Reward[3321824]["RewardItem"][1] = {}
	tWarriorsPromotion_Reward[3321824]["RewardItem"][1]["Id"] = 200000 -- 【库】PurpleTiger[属性:0], 【表格】PurpleTiger
	tWarriorsPromotion_Reward[3321824]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑PurpleTiger（赠）*1
	tWarriorsPromotion_Reward[3321824]["RewardItem"][2] = {}
	tWarriorsPromotion_Reward[3321824]["RewardItem"][2]["Id"] = 200001 -- 【库】ScarletTiger[属性:0], 【表格】ScarletTiger
	tWarriorsPromotion_Reward[3321824]["RewardItem"][2]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑ScarletTiger（赠）*1
	tWarriorsPromotion_Reward[3321824]["RewardItem"][3] = {}
	tWarriorsPromotion_Reward[3321824]["RewardItem"][3]["Id"] = 200004 -- 【库】InfernoTiger[属性:0], 【表格】InfernoTiger
	tWarriorsPromotion_Reward[3321824]["RewardItem"][3]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑InfernoTiger（赠）*1
	tWarriorsPromotion_Reward[3321824]["RewardItem"][4] = {}
	tWarriorsPromotion_Reward[3321824]["RewardItem"][4]["Id"] = 200006 -- 【库】SapphireTiger[属性:0], 【表格】SapphireTiger
	tWarriorsPromotion_Reward[3321824]["RewardItem"][4]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑SapphireTiger（赠）*1
	tWarriorsPromotion_Reward[3321824]["RewardItem"][5] = {}
	tWarriorsPromotion_Reward[3321824]["RewardItem"][5]["Id"] = 200018 -- 【库】SoulTiger[属性:0], 【表格】SoulTiger
	tWarriorsPromotion_Reward[3321824]["RewardItem"][5]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑SoulTiger（赠）*1
	tWarriorsPromotion_Reward[3321824]["RewardItem"][6] = {}
	tWarriorsPromotion_Reward[3321824]["RewardItem"][6]["Id"] = 200019 -- 【库】IcyTiger[属性:0], 【表格】IcyTiger
	tWarriorsPromotion_Reward[3321824]["RewardItem"][6]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑IcyTiger（赠）*1
	tWarriorsPromotion_Reward[3321824]["RewardItem"][7] = {}
	tWarriorsPromotion_Reward[3321824]["RewardItem"][7]["Id"] = 200020 -- 【库】PurpleTiger[属性:0], 【表格】PurpleTiger
	tWarriorsPromotion_Reward[3321824]["RewardItem"][7]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑PurpleTiger（赠）*1
	tWarriorsPromotion_Reward[3321824]["RewardItem"][8] = {}
	tWarriorsPromotion_Reward[3321824]["RewardItem"][8]["Id"] = 200101 -- 【库】MarshDeer[属性:0], 【表格】MarshDeer
	tWarriorsPromotion_Reward[3321824]["RewardItem"][8]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑MarshDeer（赠）*1
	tWarriorsPromotion_Reward[3321824]["RewardItem"][9] = {}
	tWarriorsPromotion_Reward[3321824]["RewardItem"][9]["Id"] = 200102 -- 【库】SikaDeer[属性:0], 【表格】SikaDeer
	tWarriorsPromotion_Reward[3321824]["RewardItem"][9]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑SikaDeer（赠）*1
	tWarriorsPromotion_Reward[3321824]["RewardItem"][10] = {}
	tWarriorsPromotion_Reward[3321824]["RewardItem"][10]["Id"] = 200120 -- 【库】CrimsonDeer[属性:0], 【表格】CrimsonDeer
	tWarriorsPromotion_Reward[3321824]["RewardItem"][10]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑CrimsonDeer（赠）*1
	tWarriorsPromotion_Reward[3321824]["RewardItem"][11] = {}
	tWarriorsPromotion_Reward[3321824]["RewardItem"][11]["Id"] = 200121 -- 【库】CeriseDeer[属性:0], 【表格】CeriseDeer
	tWarriorsPromotion_Reward[3321824]["RewardItem"][11]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑CeriseDeer（赠）*1
	tWarriorsPromotion_Reward[3321824]["RewardItem"][12] = {}
	tWarriorsPromotion_Reward[3321824]["RewardItem"][12]["Id"] = 200122 -- 【库】GlowingDeer[属性:0], 【表格】GlowingDeer
	tWarriorsPromotion_Reward[3321824]["RewardItem"][12]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑GlowingDeer（赠）*1
	tWarriorsPromotion_Reward[3321824]["RewardItem"][13] = {}
	tWarriorsPromotion_Reward[3321824]["RewardItem"][13]["Id"] = 200123 -- 【库】PhantomDeer[属性:0], 【表格】PhantomDeer
	tWarriorsPromotion_Reward[3321824]["RewardItem"][13]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑PhantomDeer（赠）*1
	tWarriorsPromotion_Reward[3321824]["RewardItem"][14] = {}
	tWarriorsPromotion_Reward[3321824]["RewardItem"][14]["Id"] = 200124 -- 【库】MirageDeer[属性:0], 【表格】MirageDeer
	tWarriorsPromotion_Reward[3321824]["RewardItem"][14]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑MirageDeer（赠）*1
	tWarriorsPromotion_Reward[3321824]["RewardItem"][15] = {}
	tWarriorsPromotion_Reward[3321824]["RewardItem"][15]["Id"] = 200125 -- 【库】JasperDeer[属性:0], 【表格】JasperDeer
	tWarriorsPromotion_Reward[3321824]["RewardItem"][15]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑JasperDeer（赠）*1
	tWarriorsPromotion_Reward[3321824]["RewardItem"][16] = {}
	tWarriorsPromotion_Reward[3321824]["RewardItem"][16]["Id"] = 200126 -- 【库】CelestialDeer[属性:0], 【表格】CelestialDeer
	tWarriorsPromotion_Reward[3321824]["RewardItem"][16]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑CelestialDeer（赠）*1
	tWarriorsPromotion_Reward[3321824]["RewardItem"][17] = {}
	tWarriorsPromotion_Reward[3321824]["RewardItem"][17]["Id"] = 200015 -- 【库】EmeraldTiger[属性:0], 【表格】EmeraldTiger
	tWarriorsPromotion_Reward[3321824]["RewardItem"][17]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑EmeraldTiger（赠）*1
	tWarriorsPromotion_Reward[3321824]["RewardItem"][18] = {}
	tWarriorsPromotion_Reward[3321824]["RewardItem"][18]["Id"] = 200016 -- 【库】AbyssTiger[属性:0], 【表格】AbyssTiger
	tWarriorsPromotion_Reward[3321824]["RewardItem"][18]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑AbyssTiger（赠）*1
	tWarriorsPromotion_Reward[3321824]["RewardItem"][19] = {}
	tWarriorsPromotion_Reward[3321824]["RewardItem"][19]["Id"] = 200547 -- 【库】JasperTiger[属性:0], 【表格】JasperTiger
	tWarriorsPromotion_Reward[3321824]["RewardItem"][19]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑JasperTiger（赠）*1

	
	-- ===59CPs(B)Pack
	-- ===索引: tWarriorsPromotion_BuyItem[3312890]
	-- ===删除: 3312890,1
	tWarriorsPromotion_Reward[3312890] = {}
	tWarriorsPromotion_Reward[3312890]["LogId"] = 12001448
	tWarriorsPromotion_Reward[3312890]["DeleteItem"] = {}
	tWarriorsPromotion_Reward[3312890]["DeleteItem"][1] = {}
	tWarriorsPromotion_Reward[3312890]["DeleteItem"][1]["Id"] = 3312890 -- 【库】59CPs(B)Pack[属性:9]
	tWarriorsPromotion_Reward[3312890]["RewardEMoneyMono"] = {}
	tWarriorsPromotion_Reward[3312890]["RewardEMoneyMono"]["Value"] = 59 -- 赠点, 【需求】59CPs(B)Pack
	tWarriorsPromotion_Reward[3312890]["RewardEMoneyMono"]["EmoneyLog"] = "350	22327	0	0	-59	"

	-- ===99CPs(B)Pack
	-- ===索引: tWarriorsPromotion_Reward[3312891]
	-- ===删除: 3312891,1
	tWarriorsPromotion_Reward[3312891] = {}
	tWarriorsPromotion_Reward[3312891]["LogId"] = 12001448
	tWarriorsPromotion_Reward[3312891]["DeleteItem"] = {}
	tWarriorsPromotion_Reward[3312891]["DeleteItem"][1] = {}
	tWarriorsPromotion_Reward[3312891]["DeleteItem"][1]["Id"] = 3312891 -- 【库】99CPs(B)Pack[属性:9]
	tWarriorsPromotion_Reward[3312891]["RewardEMoneyMono"] = {}
	tWarriorsPromotion_Reward[3312891]["RewardEMoneyMono"]["Value"] = 99 -- 赠点, 【需求】99CPs(B)Pack
	tWarriorsPromotion_Reward[3312891]["RewardEMoneyMono"]["EmoneyLog"] = "350	22328	0	0	-99	"

	-- ===109CPs(B)Pack
	-- ===索引: tWarriorsPromotion_Reward[3312892]
	-- ===删除: 3312892,1
	tWarriorsPromotion_Reward[3312892] = {}
	tWarriorsPromotion_Reward[3312892]["LogId"] = 12001448
	tWarriorsPromotion_Reward[3312892]["DeleteItem"] = {}
	tWarriorsPromotion_Reward[3312892]["DeleteItem"][1] = {}
	tWarriorsPromotion_Reward[3312892]["DeleteItem"][1]["Id"] = 3312892 -- 【库】109CPs(B)Pack[属性:9]
	tWarriorsPromotion_Reward[3312892]["RewardEMoneyMono"] = {}
	tWarriorsPromotion_Reward[3312892]["RewardEMoneyMono"]["Value"] = 109 -- 赠点, 【需求】109CPs(B)Pack
	tWarriorsPromotion_Reward[3312892]["RewardEMoneyMono"]["EmoneyLog"] = "350	22329	0	0	-109	"

	-- ===129CPs(B)Pack
	-- ===索引: tWarriorsPromotion_Reward[3312893]
	-- ===删除: 3312893,1
	tWarriorsPromotion_Reward[3312893] = {}
	tWarriorsPromotion_Reward[3312893]["LogId"] = 12001448
	tWarriorsPromotion_Reward[3312893]["DeleteItem"] = {}
	tWarriorsPromotion_Reward[3312893]["DeleteItem"][1] = {}
	tWarriorsPromotion_Reward[3312893]["DeleteItem"][1]["Id"] = 3312893 -- 【库】129CPs(B)Pack[属性:9]
	tWarriorsPromotion_Reward[3312893]["RewardEMoneyMono"] = {}
	tWarriorsPromotion_Reward[3312893]["RewardEMoneyMono"]["Value"] = 129 -- 赠点, 【需求】129CPs(B)Pack
	tWarriorsPromotion_Reward[3312893]["RewardEMoneyMono"]["EmoneyLog"] = "350	22330	0	0	-129	"

	-- ===139CPs(B)Pack
	-- ===索引: tWarriorsPromotion_Reward[3312894]
	-- ===删除: 3312894,1
	tWarriorsPromotion_Reward[3312894] = {}
	tWarriorsPromotion_Reward[3312894]["LogId"] = 12001448
	tWarriorsPromotion_Reward[3312894]["DeleteItem"] = {}
	tWarriorsPromotion_Reward[3312894]["DeleteItem"][1] = {}
	tWarriorsPromotion_Reward[3312894]["DeleteItem"][1]["Id"] = 3312894 -- 【库】139CPs(B)Pack[属性:9]
	tWarriorsPromotion_Reward[3312894]["RewardEMoneyMono"] = {}
	tWarriorsPromotion_Reward[3312894]["RewardEMoneyMono"]["Value"] = 139 -- 赠点, 【需求】139CPs(B)Pack
	tWarriorsPromotion_Reward[3312894]["RewardEMoneyMono"]["EmoneyLog"] = "350	22331	0	0	-139	"

	-- ===149CPs(B)Pack
	-- ===索引: tWarriorsPromotion_Reward[3312895]
	-- ===删除: 3312895,1
	tWarriorsPromotion_Reward[3312895] = {}
	tWarriorsPromotion_Reward[3312895]["LogId"] = 12001448
	tWarriorsPromotion_Reward[3312895]["DeleteItem"] = {}
	tWarriorsPromotion_Reward[3312895]["DeleteItem"][1] = {}
	tWarriorsPromotion_Reward[3312895]["DeleteItem"][1]["Id"] = 3312895 -- 【库】149CPs(B)Pack[属性:9]
	tWarriorsPromotion_Reward[3312895]["RewardEMoneyMono"] = {}
	tWarriorsPromotion_Reward[3312895]["RewardEMoneyMono"]["Value"] = 149 -- 赠点, 【需求】149CPs(B)Pack
	tWarriorsPromotion_Reward[3312895]["RewardEMoneyMono"]["EmoneyLog"] = "350	22332	0	0	-149	"

	-- ===189CPs(B)Pack
	-- ===索引: tWarriorsPromotion_Reward[3312896]
	-- ===删除: 3312896,1
	tWarriorsPromotion_Reward[3312896] = {}
	tWarriorsPromotion_Reward[3312896]["LogId"] = 12001448
	tWarriorsPromotion_Reward[3312896]["DeleteItem"] = {}
	tWarriorsPromotion_Reward[3312896]["DeleteItem"][1] = {}
	tWarriorsPromotion_Reward[3312896]["DeleteItem"][1]["Id"] = 3312896 -- 【库】189CPs(B)Pack[属性:9]
	tWarriorsPromotion_Reward[3312896]["RewardEMoneyMono"] = {}
	tWarriorsPromotion_Reward[3312896]["RewardEMoneyMono"]["Value"] = 189 -- 赠点, 【需求】189CPs(B)Pack
	tWarriorsPromotion_Reward[3312896]["RewardEMoneyMono"]["EmoneyLog"] = "350	22333	0	0	-189	"

	-- ===999CPs(B)Pack
	-- ===索引: tWarriorsPromotion_Reward[3312897]
	-- ===删除: 3312897,1
	tWarriorsPromotion_Reward[3312897] = {}
	tWarriorsPromotion_Reward[3312897]["LogId"] = 12001448
	tWarriorsPromotion_Reward[3312897]["DeleteItem"] = {}
	tWarriorsPromotion_Reward[3312897]["DeleteItem"][1] = {}
	tWarriorsPromotion_Reward[3312897]["DeleteItem"][1]["Id"] = 3312897 -- 【库】999CPs(B)Pack[属性:9]
	tWarriorsPromotion_Reward[3312897]["RewardEMoneyMono"] = {}
	tWarriorsPromotion_Reward[3312897]["RewardEMoneyMono"]["Value"] = 999 -- 赠点, 【需求】999CPs(B)Pack
	tWarriorsPromotion_Reward[3312897]["RewardEMoneyMono"]["EmoneyLog"] = "350	22334	0	0	-999	"

--上古神器风云礼盒
	tWarriorsPromotion_Reward[3321815]={}
	tWarriorsPromotion_Reward[3321815]["LogId"] =12001448
	tWarriorsPromotion_Reward[3321815]["DeleteItem"] = {}
	tWarriorsPromotion_Reward[3321815]["DeleteItem"][1]={}
	tWarriorsPromotion_Reward[3321815]["DeleteItem"][1]["Id"]=3321815
	tWarriorsPromotion_Reward[3321815]["RewardEffect"]={}
	tWarriorsPromotion_Reward[3321815]["RewardEffect"]["Effect"] = "zf2-e128"
	tWarriorsPromotion_Reward[3321815]["RewardRXuanB"] = {}
	tWarriorsPromotion_Reward[3321815]["RewardRXuanB"][1] = {}
	tWarriorsPromotion_Reward[3321815]["RewardRXuanB"][1]["Id"] = 0
	tWarriorsPromotion_Reward[3321815]["RewardRXuanB"][1]["Monopoly"] = 0


	-- ===FieryRedUniformPack
	-- ===索引: tWarriorsPromotion_Reward[3312905]
	-- ===删除: 3312905,1
	tWarriorsPromotion_Reward[3312905] = {}
	tWarriorsPromotion_Reward[3312905]["LogId"] = 12001448
	tWarriorsPromotion_Reward[3312905]["DeleteItem"] = {}
	tWarriorsPromotion_Reward[3312905]["DeleteItem"][1] = {}
	tWarriorsPromotion_Reward[3312905]["DeleteItem"][1]["Id"] = 3312905 -- 【库】 3312905 【库里没有该物品】[属性:]
	tWarriorsPromotion_Reward[3312905]["RewardItem"] = {}
	tWarriorsPromotion_Reward[3312905]["RewardItem"][1] = {}
	tWarriorsPromotion_Reward[3312905]["RewardItem"][1]["Id"] = 193605 -- 【库】FieryRedUniform[属性:0], 【表格】FieryRedUniform
	tWarriorsPromotion_Reward[3312905]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑FieryRedUniform（赠）*1



	-- ===FlameDragonPack
	-- ===索引: tWarriorsPromotion_Reward[3312906]
	-- ===删除: 3312906,1
	tWarriorsPromotion_Reward[3312906] = {}
	tWarriorsPromotion_Reward[3312906]["LogId"] = 12001448
	tWarriorsPromotion_Reward[3312906]["DeleteItem"] = {}
	tWarriorsPromotion_Reward[3312906]["DeleteItem"][1] = {}
	tWarriorsPromotion_Reward[3312906]["DeleteItem"][1]["Id"] = 3312906 -- 【库】 3312906 【库里没有该物品】[属性:]
	tWarriorsPromotion_Reward[3312906]["RewardItem"] = {}
	tWarriorsPromotion_Reward[3312906]["RewardItem"][1] = {}
	tWarriorsPromotion_Reward[3312906]["RewardItem"][1]["Id"] = 193015 -- 【库】FlameDragon[属性:0], 【表格】FlameDragon
	tWarriorsPromotion_Reward[3312906]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑FlameDragon（赠）*1



	-- ===KungfuPantsPack
	-- ===索引: tWarriorsPromotion_Reward[3312907]
	-- ===删除: 3312907,1
	tWarriorsPromotion_Reward[3312907] = {}
	tWarriorsPromotion_Reward[3312907]["LogId"] = 12001448
	tWarriorsPromotion_Reward[3312907]["DeleteItem"] = {}
	tWarriorsPromotion_Reward[3312907]["DeleteItem"][1] = {}
	tWarriorsPromotion_Reward[3312907]["DeleteItem"][1]["Id"] = 3312907 -- 【库】 3312907 【库里没有该物品】[属性:]
	tWarriorsPromotion_Reward[3312907]["RewardItem"] = {}
	tWarriorsPromotion_Reward[3312907]["RewardItem"][1] = {}
	tWarriorsPromotion_Reward[3312907]["RewardItem"][1]["Id"] = 193045 -- 【库】KungfuPants[属性:0], 【表格】KungfuPants
	tWarriorsPromotion_Reward[3312907]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑KungfuPants（赠）*1



	-- ===JingwuUniformPack
	-- ===索引: tWarriorsPromotion_Reward[3312908]
	-- ===删除: 3312908,1
	tWarriorsPromotion_Reward[3312908] = {}
	tWarriorsPromotion_Reward[3312908]["LogId"] = 12001448
	tWarriorsPromotion_Reward[3312908]["DeleteItem"] = {}
	tWarriorsPromotion_Reward[3312908]["DeleteItem"][1] = {}
	tWarriorsPromotion_Reward[3312908]["DeleteItem"][1]["Id"] = 3312908 -- 【库】 3312908 【库里没有该物品】[属性:]
	tWarriorsPromotion_Reward[3312908]["RewardItem"] = {}
	tWarriorsPromotion_Reward[3312908]["RewardItem"][1] = {}
	tWarriorsPromotion_Reward[3312908]["RewardItem"][1]["Id"] = 193065 -- 【库】JingwuUniform[属性:0], 【表格】JingwuUniform
	tWarriorsPromotion_Reward[3312908]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑JingwuUniform（赠）*1



	-- ===AbyssalDragonPack
	-- ===索引: tWarriorsPromotion_Reward[3312909]
	-- ===删除: 3312909,1
	tWarriorsPromotion_Reward[3312909] = {}
	tWarriorsPromotion_Reward[3312909]["LogId"] = 12001448
	tWarriorsPromotion_Reward[3312909]["DeleteItem"] = {}
	tWarriorsPromotion_Reward[3312909]["DeleteItem"][1] = {}
	tWarriorsPromotion_Reward[3312909]["DeleteItem"][1]["Id"] = 3312909 -- 【库】 3312909 【库里没有该物品】[属性:]
	tWarriorsPromotion_Reward[3312909]["RewardItem"] = {}
	tWarriorsPromotion_Reward[3312909]["RewardItem"][1] = {}
	tWarriorsPromotion_Reward[3312909]["RewardItem"][1]["Id"] = 193025 -- 【库】AbyssalDragon[属性:0], 【表格】AbyssalDragon
	tWarriorsPromotion_Reward[3312909]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑AbyssalDragon（赠）*1



	-- ===SolarDragonPack
	-- ===索引: tWarriorsPromotion_Reward[3312910]
	-- ===删除: 3312910,1
	tWarriorsPromotion_Reward[3312910] = {}
	tWarriorsPromotion_Reward[3312910]["LogId"] = 12001448
	tWarriorsPromotion_Reward[3312910]["DeleteItem"] = {}
	tWarriorsPromotion_Reward[3312910]["DeleteItem"][1] = {}
	tWarriorsPromotion_Reward[3312910]["DeleteItem"][1]["Id"] = 3312910 -- 【库】 3312910 【库里没有该物品】[属性:]
	tWarriorsPromotion_Reward[3312910]["RewardItem"] = {}
	tWarriorsPromotion_Reward[3312910]["RewardItem"][1] = {}
	tWarriorsPromotion_Reward[3312910]["RewardItem"][1]["Id"] = 193035 -- 【库】SolarDragon[属性:0], 【表格】SolarDragon
	tWarriorsPromotion_Reward[3312910]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑SolarDragon（赠）*1

	-- ===SupremeLotteryPack
	-- ===索引: tWarriorsPromotion_Reward[3313145]
	-- ===删除:3313145,1
	tWarriorsPromotion_Reward[3313145] = {}
	tWarriorsPromotion_Reward[3313145]["LogId"] = 12001448
	tWarriorsPromotion_Reward[3313145]["DeleteItem"] = {}
	tWarriorsPromotion_Reward[3313145]["DeleteItem"][1] = {}
	tWarriorsPromotion_Reward[3313145]["DeleteItem"][1]["Id"] = 3313145 -- 【库】SupremeLotteryPack[属性:9]
	tWarriorsPromotion_Reward[3313145]["RewardItem"] = {}
	tWarriorsPromotion_Reward[3313145]["RewardItem"][1] = {}
	tWarriorsPromotion_Reward[3313145]["RewardItem"][1]["Id"] = 711504 -- 【库】SmallLotteryTicket[属性:9], 【表格】桃源灵玉
	tWarriorsPromotion_Reward[3313145]["RewardItem"][1]["Attr"] = "0 300" -- SmallLotteryTicket*300
	tWarriorsPromotion_Reward[3313145]["RewardItem"][2] = {}
	tWarriorsPromotion_Reward[3313145]["RewardItem"][2]["Id"] = 3313144 -- 【库】SummerTicket[属性:9], 【表格】SummerTicket
	tWarriorsPromotion_Reward[3313145]["RewardItem"][2]["Attr"] = "0 2" -- SummerTicket*2


------------------购买礼包
local tWarriorsPromotion_BuyItem = {}
	-- ===购买晶莹坚钻包
	-- ===索引: tWarriorsPromotion_BuyItem[3321807]
	-- ===EMoneyLog:350 22176
	tWarriorsPromotion_BuyItem[3321807] = {}
	tWarriorsPromotion_BuyItem[3321807]["LogId"] = 12001448
	tWarriorsPromotion_BuyItem[3321807]["RewardItem"] = {}
	tWarriorsPromotion_BuyItem[3321807]["RewardItem"][1] = {}
	tWarriorsPromotion_BuyItem[3321807]["RewardItem"][1]["Id"] = 3321807 -- 【库】RadiantDrillPack[属性:9], 【表格】RadiantDrillPack
	tWarriorsPromotion_BuyItem[3321807]["RewardItem"][1]["Attr"] = "0 1" -- RadiantDrillPack*1
	tWarriorsPromotion_BuyItem[3321807]["RewardEMoney"] = {}
	tWarriorsPromotion_BuyItem[3321807]["RewardEMoney"]["Value"] = -2399
	tWarriorsPromotion_BuyItem[3321807]["RewardEMoney"]["EmoneyLog"] = "350	22176	2399	2399	1	"
	
	-- ===金钢龙恨包
	-- ===索引: tWarriorsPromotion_BuyItem[3321808]
	-- ===EMoneyLog: 350 22177
	tWarriorsPromotion_BuyItem[3321808] = {}
	tWarriorsPromotion_BuyItem[3321808]["LogId"] = 12001448
	tWarriorsPromotion_BuyItem[3321808]["RewardItem"] = {}
	tWarriorsPromotion_BuyItem[3321808]["RewardItem"][1] = {}
	tWarriorsPromotion_BuyItem[3321808]["RewardItem"][1]["Id"] = 3321808 -- 【库】ToughDragonPack[属性:9], 【表格】ToughDragonPack
	tWarriorsPromotion_BuyItem[3321808]["RewardItem"][1]["Attr"] = "0 1" -- ToughDragonPack*1
	tWarriorsPromotion_BuyItem[3321808]["RewardEMoney"] = {}
	tWarriorsPromotion_BuyItem[3321808]["RewardEMoney"]["Value"] = -1599
	tWarriorsPromotion_BuyItem[3321808]["RewardEMoney"]["EmoneyLog"] = "350	22177	1599	1599	1	"
	
	-- ===神纹玄元包
	-- ===索引: tWarriorsPromotion_BuyItem[3321809]
	-- ===EMoneyLog: 350 22178
	tWarriorsPromotion_BuyItem[3321809] = {}
	tWarriorsPromotion_BuyItem[3321809]["LogId"] = 12001448
	tWarriorsPromotion_BuyItem[3321809]["RewardItem"] = {}
	tWarriorsPromotion_BuyItem[3321809]["RewardItem"][1] = {}
	tWarriorsPromotion_BuyItem[3321809]["RewardItem"][1]["Id"] = 3321809 -- 【库】TortoiseRunePack[属性:9], 【表格】TortoiseRunePack
	tWarriorsPromotion_BuyItem[3321809]["RewardItem"][1]["Attr"] = "0 1" -- TortoiseRunePack*1
	tWarriorsPromotion_BuyItem[3321809]["RewardEMoney"] = {}
	tWarriorsPromotion_BuyItem[3321809]["RewardEMoney"]["Value"] = -4399
	tWarriorsPromotion_BuyItem[3321809]["RewardEMoney"]["EmoneyLog"] = "350	22178	4399	4399	1	"
	-- ===晶莹赤炼包
	
	-- ===索引: tWarriorsPromotion_BuyItem[3321810]
	-- ===EMoneyLog: 350 22179
	tWarriorsPromotion_BuyItem[3321810] = {}
	tWarriorsPromotion_BuyItem[3321810]["LogId"] = 12001448
	tWarriorsPromotion_BuyItem[3321810]["RewardItem"] = {}
	tWarriorsPromotion_BuyItem[3321810]["RewardItem"][1] = {}
	tWarriorsPromotion_BuyItem[3321810]["RewardItem"][1]["Id"] = 3321810 -- 【库】RadiantStonePack[属性:9], 【表格】RadiantStonePack
	tWarriorsPromotion_BuyItem[3321810]["RewardItem"][1]["Attr"] = "0 1" -- RadiantStonePack*1
	tWarriorsPromotion_BuyItem[3321810]["RewardEMoney"] = {}
	tWarriorsPromotion_BuyItem[3321810]["RewardEMoney"]["Value"] = -12599
	tWarriorsPromotion_BuyItem[3321810]["RewardEMoney"]["EmoneyLog"] = "350	22179	12599	12599	1	"
	-- ===晶莹源晶包
	-- ===索引: tWarriorsPromotion_BuyItem[3321811]
	-- ===EMoneyLog: 350 22180
	tWarriorsPromotion_BuyItem[3321811] = {}
	tWarriorsPromotion_BuyItem[3321811]["LogId"] = 12001448
	tWarriorsPromotion_BuyItem[3321811]["RewardItem"] = {}
	tWarriorsPromotion_BuyItem[3321811]["RewardItem"][1] = {}
	tWarriorsPromotion_BuyItem[3321811]["RewardItem"][1]["Id"] = 3321811 -- 【库】RadiantCrystalPack[属性:9], 【表格】RadiantCrystalPack
	tWarriorsPromotion_BuyItem[3321811]["RewardItem"][1]["Attr"] = "0 1" -- RadiantCrystalPack*1
	tWarriorsPromotion_BuyItem[3321811]["RewardEMoney"] = {}
	tWarriorsPromotion_BuyItem[3321811]["RewardEMoney"]["Value"] = -39999
	tWarriorsPromotion_BuyItem[3321811]["RewardEMoney"]["EmoneyLog"] = "350	221806	39999	39999	1	"
	-- ===购买SupremeLotteryPack
	-- ===索引: tWarriorsPromotion_BuyItem[3313145]
	-- ===EMoneyLog: 350 22180
	tWarriorsPromotion_BuyItem[3313145] = {}
	tWarriorsPromotion_BuyItem[3313145]["LogId"] = 12001448
	tWarriorsPromotion_BuyItem[3313145]["RewardItem"] = {}
	tWarriorsPromotion_BuyItem[3313145]["RewardItem"][1] = {}
	tWarriorsPromotion_BuyItem[3313145]["RewardItem"][1]["Id"] = 3313145 -- 【库】SupremeLotteryBox[属性:9], 【表格】RadiantCrystalPack
	tWarriorsPromotion_BuyItem[3313145]["RewardItem"][1]["Attr"] = "0 1" -- SupremeLotteryBox*1
	tWarriorsPromotion_BuyItem[3313145]["RewardEMoney"] = {}
	tWarriorsPromotion_BuyItem[3313145]["RewardEMoney"]["Value"] = -2099
	tWarriorsPromotion_BuyItem[3313145]["RewardEMoney"]["EmoneyLog"] = "350	22404	2099	2099	1	"

----------------------------------------------------------------------------------------
	--新增雷神装备非赠品
	--+4
	tWarriorsPromotion_Reward[3315240] = {}
	tWarriorsPromotion_Reward[3315240]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315240]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315240]["DeleteItem"][1]["Id"]= 3315240
	tWarriorsPromotion_Reward[3315240]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315240]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315240]["RewardItem"][1]["Id"]= 147009
	tWarriorsPromotion_Reward[3315240]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 3 0 0 4 255"
	tWarriorsPromotion_Reward[3315240]["LogId"]= 12000651
	
	tWarriorsPromotion_Reward[3315241] = {}
	tWarriorsPromotion_Reward[3315241]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315241]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315241]["DeleteItem"][1]["Id"]= 3315241
	tWarriorsPromotion_Reward[3315241]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315241]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315241]["RewardItem"][1]["Id"]= 102009
	tWarriorsPromotion_Reward[3315241]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 3 0 0 4 255"
	tWarriorsPromotion_Reward[3315241]["LogId"]= 12000651
	
	tWarriorsPromotion_Reward[3315242] = {}
	tWarriorsPromotion_Reward[3315242]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315242]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315242]["DeleteItem"][1]["Id"]= 3315242
	tWarriorsPromotion_Reward[3315242]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315242]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315242]["RewardItem"][1]["Id"]= 681029
	tWarriorsPromotion_Reward[3315242]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 3 0 0 4 255"
	tWarriorsPromotion_Reward[3315242]["LogId"]= 12000651
	
	tWarriorsPromotion_Reward[3315243] = {}
	tWarriorsPromotion_Reward[3315243]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315243]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315243]["DeleteItem"][1]["Id"]= 3315243
	tWarriorsPromotion_Reward[3315243]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315243]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315243]["RewardItem"][1]["Id"]= 680029
	tWarriorsPromotion_Reward[3315243]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 3 0 0 4 255"
	tWarriorsPromotion_Reward[3315243]["LogId"]= 12000651
	
	--+6
	tWarriorsPromotion_Reward[3315244] = {}
	tWarriorsPromotion_Reward[3315244]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315244]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315244]["DeleteItem"][1]["Id"]= 3315244
	tWarriorsPromotion_Reward[3315244]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315244]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315244]["RewardItem"][1]["Id"]= 147009
	tWarriorsPromotion_Reward[3315244]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 5 0 0 6 255 255"
	tWarriorsPromotion_Reward[3315244]["LogId"]= 12000651
	
	tWarriorsPromotion_Reward[3315245] = {}
	tWarriorsPromotion_Reward[3315245]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315245]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315245]["DeleteItem"][1]["Id"]= 3315245
	tWarriorsPromotion_Reward[3315245]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315245]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315245]["RewardItem"][1]["Id"]= 102009
	tWarriorsPromotion_Reward[3315245]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 5 0 0 6 255 255"
	tWarriorsPromotion_Reward[3315245]["LogId"]= 12000651
	
	tWarriorsPromotion_Reward[3315246] = {}
	tWarriorsPromotion_Reward[3315246]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315246]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315246]["DeleteItem"][1]["Id"]= 3315246
	tWarriorsPromotion_Reward[3315246]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315246]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315246]["RewardItem"][1]["Id"]= 681029
	tWarriorsPromotion_Reward[3315246]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 5 0 0 6 255 255"
	tWarriorsPromotion_Reward[3315246]["LogId"]= 12000651
	
	
	tWarriorsPromotion_Reward[3315247] = {}
	tWarriorsPromotion_Reward[3315247]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315247]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315247]["DeleteItem"][1]["Id"]= 3315247
	tWarriorsPromotion_Reward[3315247]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315247]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315247]["RewardItem"][1]["Id"]= 680029
	tWarriorsPromotion_Reward[3315247]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 5 0 0 6 255 255"
	tWarriorsPromotion_Reward[3315247]["LogId"]= 12000651
	
	--+8
	tWarriorsPromotion_Reward[3315195] = {}
	tWarriorsPromotion_Reward[3315195]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315195]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315195]["DeleteItem"][1]["Id"]= 3315195
	tWarriorsPromotion_Reward[3315195]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315195]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315195]["RewardItem"][1]["Id"]= 147009
	tWarriorsPromotion_Reward[3315195]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 7 0 0 8 255 255"
	tWarriorsPromotion_Reward[3315195]["LogId"]= 12000651
	
	tWarriorsPromotion_Reward[3315196] = {}
	tWarriorsPromotion_Reward[3315196]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315196]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315196]["DeleteItem"][1]["Id"]= 3315196
	tWarriorsPromotion_Reward[3315196]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315196]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315196]["RewardItem"][1]["Id"]= 102009
	tWarriorsPromotion_Reward[3315196]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 7 0 0 8 255 255"
	tWarriorsPromotion_Reward[3315196]["LogId"]= 12000651
	
	tWarriorsPromotion_Reward[3315197] = {}
	tWarriorsPromotion_Reward[3315197]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315197]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315197]["DeleteItem"][1]["Id"]= 3315197
	tWarriorsPromotion_Reward[3315197]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315197]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315197]["RewardItem"][1]["Id"]= 681029
	tWarriorsPromotion_Reward[3315197]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 7 0 0 8 255 255"
	tWarriorsPromotion_Reward[3315197]["LogId"]= 12000651
	
	tWarriorsPromotion_Reward[3315198] = {}
	tWarriorsPromotion_Reward[3315198]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315198]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315198]["DeleteItem"][1]["Id"]= 3315198
	tWarriorsPromotion_Reward[3315198]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315198]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315198]["RewardItem"][1]["Id"]= 680029
	tWarriorsPromotion_Reward[3315198]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 7 0 0 8 255 255"
	tWarriorsPromotion_Reward[3315198]["LogId"]= 12000651
	
	
	tWarriorsPromotion_Reward[3315199] = {}
	tWarriorsPromotion_Reward[3315199]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315199]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315199]["DeleteItem"][1]["Id"]= 3315199
	tWarriorsPromotion_Reward[3315199]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315199]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315199]["RewardItem"][1]["Id"]= 133049
	tWarriorsPromotion_Reward[3315199]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 7 0 0 8 255 255"
	tWarriorsPromotion_Reward[3315199]["LogId"]= 12000651
	
	tWarriorsPromotion_Reward[3315200] = {}
	tWarriorsPromotion_Reward[3315200]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315200]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315200]["DeleteItem"][1]["Id"]= 3315200
	tWarriorsPromotion_Reward[3315200]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315200]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315200]["RewardItem"][1]["Id"]= 142039
	tWarriorsPromotion_Reward[3315200]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 7 0 0 8 255 255"
	tWarriorsPromotion_Reward[3315200]["LogId"]= 12000651
	
	tWarriorsPromotion_Reward[3315201] = {}
	tWarriorsPromotion_Reward[3315201]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315201]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315201]["DeleteItem"][1]["Id"]= 3315201
	tWarriorsPromotion_Reward[3315201]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315201]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315201]["RewardItem"][1]["Id"]= 421139
	tWarriorsPromotion_Reward[3315201]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 7 0 0 8 255 255"
	tWarriorsPromotion_Reward[3315201]["LogId"]= 12000651
	
	
	tWarriorsPromotion_Reward[3315202] = {}
	tWarriorsPromotion_Reward[3315202]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315202]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315202]["DeleteItem"][1]["Id"]= 3315202
	tWarriorsPromotion_Reward[3315202]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315202]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315202]["RewardItem"][1]["Id"]= 121129
	tWarriorsPromotion_Reward[3315202]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 7 0 0 8 255 255"
	tWarriorsPromotion_Reward[3315202]["LogId"]= 12000651
	
	tWarriorsPromotion_Reward[3315203] = {}
	tWarriorsPromotion_Reward[3315203]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315203]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315203]["DeleteItem"][1]["Id"]= 3315203
	tWarriorsPromotion_Reward[3315203]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315203]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315203]["RewardItem"][1]["Id"]= 610139
	tWarriorsPromotion_Reward[3315203]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 7 0 0 8 255 255"
	tWarriorsPromotion_Reward[3315203]["LogId"]= 12000651
	
	tWarriorsPromotion_Reward[3315204] = {}
	tWarriorsPromotion_Reward[3315204]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315204]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315204]["DeleteItem"][1]["Id"]= 3315204
	tWarriorsPromotion_Reward[3315204]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315204]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315204]["RewardItem"][1]["Id"]= 410139
	tWarriorsPromotion_Reward[3315204]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 7 0 0 8 255 255"
	tWarriorsPromotion_Reward[3315204]["LogId"]= 12000651
	
	tWarriorsPromotion_Reward[3315205] = {}
	tWarriorsPromotion_Reward[3315205]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315205]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315205]["DeleteItem"][1]["Id"]= 3315205
	tWarriorsPromotion_Reward[3315205]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315205]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315205]["RewardItem"][1]["Id"]= 160139
	tWarriorsPromotion_Reward[3315205]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 7 0 0 8 255 255"
	tWarriorsPromotion_Reward[3315205]["LogId"]= 12000651
	
	tWarriorsPromotion_Reward[3315206] = {}
	tWarriorsPromotion_Reward[3315206]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315206]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315206]["DeleteItem"][1]["Id"]= 3315206
	tWarriorsPromotion_Reward[3315206]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315206]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315206]["RewardItem"][1]["Id"]= 500129
	tWarriorsPromotion_Reward[3315206]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 7 0 0 8 255 255"
	tWarriorsPromotion_Reward[3315206]["LogId"]= 12000651
	
	tWarriorsPromotion_Reward[3315207] = {}
	tWarriorsPromotion_Reward[3315207]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315207]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315207]["DeleteItem"][1]["Id"]= 3315207
	tWarriorsPromotion_Reward[3315207]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315207]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315207]["RewardItem"][1]["Id"]= 152129
	tWarriorsPromotion_Reward[3315207]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 7 0 0 8 255 255"
	tWarriorsPromotion_Reward[3315207]["LogId"]= 12000651
	
	
	tWarriorsPromotion_Reward[3315208] = {}
	tWarriorsPromotion_Reward[3315208]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315208]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315208]["DeleteItem"][1]["Id"]= 3315208
	tWarriorsPromotion_Reward[3315208]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315208]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315208]["RewardItem"][1]["Id"]= 148069
	tWarriorsPromotion_Reward[3315208]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 7 0 0 8 255 255"
	tWarriorsPromotion_Reward[3315208]["LogId"]= 12000651
	
	tWarriorsPromotion_Reward[3315209] = {}
	tWarriorsPromotion_Reward[3315209]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315209]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315209]["DeleteItem"][1]["Id"]= 3315209
	tWarriorsPromotion_Reward[3315209]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315209]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315209]["RewardItem"][1]["Id"]= 480139
	tWarriorsPromotion_Reward[3315209]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 7 0 0 8 255 255"
	tWarriorsPromotion_Reward[3315209]["LogId"]= 12000651
	
	tWarriorsPromotion_Reward[3315210] = {}
	tWarriorsPromotion_Reward[3315210]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315210]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315210]["DeleteItem"][1]["Id"]= 3315210
	tWarriorsPromotion_Reward[3315210]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315210]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315210]["RewardItem"][1]["Id"]= 138069
	tWarriorsPromotion_Reward[3315210]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 7 0 0 8 255 255"
	tWarriorsPromotion_Reward[3315210]["LogId"]= 12000651
	
	tWarriorsPromotion_Reward[3315211] = {}
	tWarriorsPromotion_Reward[3315211]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315211]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315211]["DeleteItem"][1]["Id"]= 3315211
	tWarriorsPromotion_Reward[3315211]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315211]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315211]["RewardItem"][1]["Id"]= 203009
	tWarriorsPromotion_Reward[3315211]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 1 0 0 8"
	tWarriorsPromotion_Reward[3315211]["LogId"]= 12000651
	
	--CryingHeavyRing（扳指）
	tWarriorsPromotion_Reward[3315212] = {}
	tWarriorsPromotion_Reward[3315212]["RewardItem"] = {}
	tWarriorsPromotion_Reward[3315212]["RewardItem"][1] = {}
	tWarriorsPromotion_Reward[3315212]["RewardItem"][1]["Id"] = 151229
	tWarriorsPromotion_Reward[3315212]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 7 0 0 8 255 255"
	tWarriorsPromotion_Reward[3315212]["LogId"] = 12001098
	tWarriorsPromotion_Reward[3315212]["DeleteItem"] = {}
	tWarriorsPromotion_Reward[3315212]["DeleteItem"][1] = {}
	tWarriorsPromotion_Reward[3315212]["DeleteItem"][1]["Id"] = 3315212

	tWarriorsPromotion_Reward[3315213] = {}
	tWarriorsPromotion_Reward[3315213]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315213]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315213]["DeleteItem"][1]["Id"]= 3315213
	tWarriorsPromotion_Reward[3315213]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315213]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315213]["RewardItem"][1]["Id"]= 117069
	tWarriorsPromotion_Reward[3315213]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 7 0 0 8 255 255"
	tWarriorsPromotion_Reward[3315213]["LogId"]= 12000651

	tWarriorsPromotion_Reward[3315214] = {}
	tWarriorsPromotion_Reward[3315214]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315214]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315214]["DeleteItem"][1]["Id"]= 3315214
	tWarriorsPromotion_Reward[3315214]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315214]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315214]["RewardItem"][1]["Id"]= 201009
	tWarriorsPromotion_Reward[3315214]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 1 0 0 8 255 255"
	tWarriorsPromotion_Reward[3315214]["LogId"]= 12000651
	
	tWarriorsPromotion_Reward[3315215] = {}
	tWarriorsPromotion_Reward[3315215]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315215]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315215]["DeleteItem"][1]["Id"]= 3315215
	tWarriorsPromotion_Reward[3315215]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315215]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315215]["RewardItem"][1]["Id"]= 617139
	tWarriorsPromotion_Reward[3315215]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 7 0 0 8 255 255"
	tWarriorsPromotion_Reward[3315215]["LogId"]= 12000651
	
	tWarriorsPromotion_Reward[3315216] = {}
	tWarriorsPromotion_Reward[3315216]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315216]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315216]["DeleteItem"][1]["Id"]= 3315216
	tWarriorsPromotion_Reward[3315216]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315216]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315216]["RewardItem"][1]["Id"]= 601139
	tWarriorsPromotion_Reward[3315216]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 7 0 0 8 255 255"
	tWarriorsPromotion_Reward[3315216]["LogId"]= 12000651
	
	
	tWarriorsPromotion_Reward[3315217] = {}
	tWarriorsPromotion_Reward[3315217]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315217]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315217]["DeleteItem"][1]["Id"]= 3315217
	tWarriorsPromotion_Reward[3315217]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315217]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315217]["RewardItem"][1]["Id"]= 613129
	tWarriorsPromotion_Reward[3315217]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 7 0 0 8 255 255"
	tWarriorsPromotion_Reward[3315217]["LogId"]= 12000651
	
	tWarriorsPromotion_Reward[3315218] = {}
	tWarriorsPromotion_Reward[3315218]["RewardItem"] = {}
	tWarriorsPromotion_Reward[3315218]["RewardItem"][1] = {}
	tWarriorsPromotion_Reward[3315218]["RewardItem"][1]["Id"] = 150320
	tWarriorsPromotion_Reward[3315218]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 7 0 0 8 255 255"
	tWarriorsPromotion_Reward[3315218]["LogId"] = 12001098
	tWarriorsPromotion_Reward[3315218]["DeleteItem"] = {}
	tWarriorsPromotion_Reward[3315218]["DeleteItem"][1] = {}
	tWarriorsPromotion_Reward[3315218]["DeleteItem"][1]["Id"] = 3315218
	
	tWarriorsPromotion_Reward[3315219] = {}
	tWarriorsPromotion_Reward[3315219]["RewardItem"] = {}
	tWarriorsPromotion_Reward[3315219]["RewardItem"][1] = {}
	tWarriorsPromotion_Reward[3315219]["RewardItem"][1]["Id"] = 150310
	tWarriorsPromotion_Reward[3315219]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 7 0 0 8 255 255"
	tWarriorsPromotion_Reward[3315219]["LogId"] = 12001098
	tWarriorsPromotion_Reward[3315219]["DeleteItem"] = {}
	tWarriorsPromotion_Reward[3315219]["DeleteItem"][1] = {}
	tWarriorsPromotion_Reward[3315219]["DeleteItem"][1]["Id"] = 3315219

	
	tWarriorsPromotion_Reward[3315220] = {}
	tWarriorsPromotion_Reward[3315220]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315220]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315220]["DeleteItem"][1]["Id"]= 3315220
	tWarriorsPromotion_Reward[3315220]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315220]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315220]["RewardItem"][1]["Id"]= 143069
	tWarriorsPromotion_Reward[3315220]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 7 0 0 8 255 255"
	tWarriorsPromotion_Reward[3315220]["LogId"]= 12000651
	
	tWarriorsPromotion_Reward[3315221] = {}
	tWarriorsPromotion_Reward[3315221]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315221]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315221]["DeleteItem"][1]["Id"]= 3315221
	tWarriorsPromotion_Reward[3315221]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315221]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315221]["RewardItem"][1]["Id"]= 136069
	tWarriorsPromotion_Reward[3315221]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 7 0 0 8 255 255"
	tWarriorsPromotion_Reward[3315221]["LogId"]= 12000651
	
	tWarriorsPromotion_Reward[3315222] = {}
	tWarriorsPromotion_Reward[3315222]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315222]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315222]["DeleteItem"][1]["Id"]= 3315222
	tWarriorsPromotion_Reward[3315222]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315222]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315222]["RewardItem"][1]["Id"]= 120129
	tWarriorsPromotion_Reward[3315222]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 7 0 0 8 255 255"
	tWarriorsPromotion_Reward[3315222]["LogId"]= 12000651
	
	tWarriorsPromotion_Reward[3315223] = {}
	tWarriorsPromotion_Reward[3315223]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315223]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315223]["DeleteItem"][1]["Id"]= 3315223
	tWarriorsPromotion_Reward[3315223]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315223]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315223]["RewardItem"][1]["Id"]= 123069
	tWarriorsPromotion_Reward[3315223]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 7 0 0 8 255 255"
	tWarriorsPromotion_Reward[3315223]["LogId"]= 12000651
	
	
	tWarriorsPromotion_Reward[3315224] = {}
	tWarriorsPromotion_Reward[3315224]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315224]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315224]["DeleteItem"][1]["Id"]= 3315224
	tWarriorsPromotion_Reward[3315224]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315224]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315224]["RewardItem"][1]["Id"]= 135069
	tWarriorsPromotion_Reward[3315224]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 7 0 0 8 255 255"
	tWarriorsPromotion_Reward[3315224]["LogId"]= 12000651
	
tWarriorsPromotion_Reward[3315225] = {}
tWarriorsPromotion_Reward[3315225]["RewardItem"] = {}
tWarriorsPromotion_Reward[3315225]["RewardItem"][1] = {}
tWarriorsPromotion_Reward[3315225]["RewardItem"][1]["Id"] = 490169
tWarriorsPromotion_Reward[3315225]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 7 0 0 8 255 255"
tWarriorsPromotion_Reward[3315225]["LogId"] = 12001098
tWarriorsPromotion_Reward[3315225]["DeleteItem"] = {}
tWarriorsPromotion_Reward[3315225]["DeleteItem"][1] = {}
tWarriorsPromotion_Reward[3315225]["DeleteItem"][1]["Id"] = 3315225
	
	
	tWarriorsPromotion_Reward[3315226] = {}
	tWarriorsPromotion_Reward[3315226]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315226]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315226]["DeleteItem"][1]["Id"]= 3315226
	tWarriorsPromotion_Reward[3315226]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315226]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315226]["RewardItem"][1]["Id"]= 139069
	tWarriorsPromotion_Reward[3315226]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 7 0 0 8 255 255"
	tWarriorsPromotion_Reward[3315226]["LogId"]= 12000651
	
	tWarriorsPromotion_Reward[3315227] = {}
	tWarriorsPromotion_Reward[3315227]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315227]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315227]["DeleteItem"][1]["Id"]= 3315227
	tWarriorsPromotion_Reward[3315227]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315227]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315227]["RewardItem"][1]["Id"]= 145069
	tWarriorsPromotion_Reward[3315227]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 7 0 0 8 255 255"
	tWarriorsPromotion_Reward[3315227]["LogId"]= 12000651
	
	tWarriorsPromotion_Reward[3315228] = {}
	tWarriorsPromotion_Reward[3315228]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315228]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315228]["DeleteItem"][1]["Id"]= 3315228
	tWarriorsPromotion_Reward[3315228]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315228]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315228]["RewardItem"][1]["Id"]= 612139
	tWarriorsPromotion_Reward[3315228]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 7 0 0 8 255 255"
	tWarriorsPromotion_Reward[3315228]["LogId"]= 12000651
	
	tWarriorsPromotion_Reward[3315229] = {}
	tWarriorsPromotion_Reward[3315229]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315229]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315229]["DeleteItem"][1]["Id"]= 3315229
	tWarriorsPromotion_Reward[3315229]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315229]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315229]["RewardItem"][1]["Id"]= 410139
	tWarriorsPromotion_Reward[3315229]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 7 0 0 8 255 255 200"
	tWarriorsPromotion_Reward[3315229]["LogId"]= 12000651

	tWarriorsPromotion_Reward[3315230] = {}
	tWarriorsPromotion_Reward[3315230]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315230]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315230]["DeleteItem"][1]["Id"]= 3315230
	tWarriorsPromotion_Reward[3315230]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315230]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315230]["RewardItem"][1]["Id"]= 611139
	tWarriorsPromotion_Reward[3315230]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 7 0 0 8 255 255"
	tWarriorsPromotion_Reward[3315230]["LogId"]= 12000651
	
	
	
	tWarriorsPromotion_Reward[3315231] = {}
	tWarriorsPromotion_Reward[3315231]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315231]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315231]["DeleteItem"][1]["Id"]= 3315231
	tWarriorsPromotion_Reward[3315231]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315231]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315231]["RewardItem"][1]["Id"]= 150139
	tWarriorsPromotion_Reward[3315231]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 7 0 0 8 255 255"
	tWarriorsPromotion_Reward[3315231]["LogId"]= 12000651
	

	tWarriorsPromotion_Reward[3315233] = {}
	tWarriorsPromotion_Reward[3315233]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315233]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315233]["DeleteItem"][1]["Id"]= 3315233
	tWarriorsPromotion_Reward[3315233]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315233]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315233]["RewardItem"][1]["Id"]= 900049
	tWarriorsPromotion_Reward[3315233]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 7 0 0 8 255 255"
	tWarriorsPromotion_Reward[3315233]["LogId"]= 12000651
	
	
	tWarriorsPromotion_Reward[3315232] = {}
	tWarriorsPromotion_Reward[3315232]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315232]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315232]["DeleteItem"][1]["Id"]= 3315232
	tWarriorsPromotion_Reward[3315232]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315232]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315232]["RewardItem"][1]["Id"]= 511139
	tWarriorsPromotion_Reward[3315232]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 7 0 0 8 255 255"
	tWarriorsPromotion_Reward[3315232]["LogId"]= 12000651
	

	-- 极品15级狂战武器
	tWarriorsPromotion_Reward[3315234] = {}
	tWarriorsPromotion_Reward[3315234]["DeleteItem"] = {}
	tWarriorsPromotion_Reward[3315234]["DeleteItem"][1] = {}
	tWarriorsPromotion_Reward[3315234]["DeleteItem"][1]["Id"] = 3315234
	tWarriorsPromotion_Reward[3315234]["RewardItem"] = {}
	tWarriorsPromotion_Reward[3315234]["RewardItem"][1] = {}
	tWarriorsPromotion_Reward[3315234]["RewardItem"][1]["Id"] = 624029
	tWarriorsPromotion_Reward[3315234]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 7 0 0 8 255 255"
	tWarriorsPromotion_Reward[3315234]["LogId"] = 12000651
	
	tWarriorsPromotion_Reward[3315235] = {}
	tWarriorsPromotion_Reward[3315235]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315235]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315235]["DeleteItem"][1]["Id"]= 3315235
	tWarriorsPromotion_Reward[3315235]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315235]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315235]["RewardItem"][1]["Id"]= 560139
	tWarriorsPromotion_Reward[3315235]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 7 0 0 8 255 255"
	tWarriorsPromotion_Reward[3315235]["LogId"]= 12000651
	
	tWarriorsPromotion_Reward[3315236] = {}
	tWarriorsPromotion_Reward[3315236]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315236]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315236]["DeleteItem"][1]["Id"]= 3315236
	tWarriorsPromotion_Reward[3315236]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315236]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315236]["RewardItem"][1]["Id"]= 420139
	tWarriorsPromotion_Reward[3315236]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 7 0 0 8 255 255"
	tWarriorsPromotion_Reward[3315236]["LogId"]= 12000651
	
	tWarriorsPromotion_Reward[3315237] = {}
	tWarriorsPromotion_Reward[3315237]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315237]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315237]["DeleteItem"][1]["Id"]= 3315237
	tWarriorsPromotion_Reward[3315237]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315237]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315237]["RewardItem"][1]["Id"]= 114069
	tWarriorsPromotion_Reward[3315237]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 7 0 0 8 255 255"
	tWarriorsPromotion_Reward[3315237]["LogId"]= 12000651
	
	tWarriorsPromotion_Reward[3315238] = {}
	tWarriorsPromotion_Reward[3315238]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315238]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315238]["DeleteItem"][1]["Id"]= 3315238
	tWarriorsPromotion_Reward[3315238]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315238]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315238]["RewardItem"][1]["Id"]= 134069
	tWarriorsPromotion_Reward[3315238]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 7 0 0 8 255 255"
	tWarriorsPromotion_Reward[3315238]["LogId"]= 12000651	
	
	tWarriorsPromotion_Reward[3315239] = {}
	tWarriorsPromotion_Reward[3315239]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315239]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315239]["DeleteItem"][1]["Id"]= 3315239
	tWarriorsPromotion_Reward[3315239]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315239]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315239]["RewardItem"][1]["Id"]= 202009
	tWarriorsPromotion_Reward[3315239]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 1 0 0 8 255 255"
	tWarriorsPromotion_Reward[3315239]["LogId"]= 12000651
	
	tWarriorsPromotion_Reward[3315087] = {}
	tWarriorsPromotion_Reward[3315087]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315087]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315087]["DeleteItem"][1]["Id"]= 3315087
	tWarriorsPromotion_Reward[3315087]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315087]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315087]["RewardItem"][1]["Id"]= 130069
	tWarriorsPromotion_Reward[3315087]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 7 0 0 8 255 255"
	tWarriorsPromotion_Reward[3315087]["LogId"]= 12000651
	
	tWarriorsPromotion_Reward[3315089] = {}
	tWarriorsPromotion_Reward[3315089]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315089]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315089]["DeleteItem"][1]["Id"]= 3315089
	tWarriorsPromotion_Reward[3315089]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315089]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315089]["RewardItem"][1]["Id"]= 561139
	tWarriorsPromotion_Reward[3315089]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 7 0 0 8 255 255"
	tWarriorsPromotion_Reward[3315089]["LogId"]= 12000651
	
	tWarriorsPromotion_Reward[3315088] = {}
	tWarriorsPromotion_Reward[3315088]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315088]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315088]["DeleteItem"][1]["Id"]= 3315088
	tWarriorsPromotion_Reward[3315088]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315088]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315088]["RewardItem"][1]["Id"]= 118069
	tWarriorsPromotion_Reward[3315088]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 7 0 0 8 255 255"
	tWarriorsPromotion_Reward[3315088]["LogId"]= 12000651
	
	tWarriorsPromotion_Reward[3315090] = {}
	tWarriorsPromotion_Reward[3315090]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315090]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315090]["DeleteItem"][1]["Id"]= 3315090
	tWarriorsPromotion_Reward[3315090]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315090]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315090]["RewardItem"][1]["Id"]= 131069
	tWarriorsPromotion_Reward[3315090]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 7 0 0 8 255 255"
	tWarriorsPromotion_Reward[3315090]["LogId"]= 12000651
	
	tWarriorsPromotion_Reward[3315092] = {}
	tWarriorsPromotion_Reward[3315092]["LogId"] = 12000651
	tWarriorsPromotion_Reward[3315092]["RewardItem"] = {}
	tWarriorsPromotion_Reward[3315092]["RewardItem"][1] = {}
	tWarriorsPromotion_Reward[3315092]["RewardItem"][1]["Id"] = 170009
	tWarriorsPromotion_Reward[3315092]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 7 0 0 8 255 255"
	tWarriorsPromotion_Reward[3315092]["DeleteItem"] = {} 
	tWarriorsPromotion_Reward[3315092]["DeleteItem"][1] = {}
	tWarriorsPromotion_Reward[3315092]["DeleteItem"][1]["Id"] = 3315092
	
	tWarriorsPromotion_Reward[3315091] = {}
	tWarriorsPromotion_Reward[3315091]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315091]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315091]["DeleteItem"][1]["Id"]= 3315091
	tWarriorsPromotion_Reward[3315091]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315091]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315091]["RewardItem"][1]["Id"]= 111069
	tWarriorsPromotion_Reward[3315091]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 7 0 0 8 255 255"
	tWarriorsPromotion_Reward[3315091]["LogId"]= 12000651
	
	
	tWarriorsPromotion_Reward[3315093] = {}
	tWarriorsPromotion_Reward[3315093]["LogId"] = 12000651
	tWarriorsPromotion_Reward[3315093]["RewardItem"] = {}
	tWarriorsPromotion_Reward[3315093]["RewardItem"][1] = {}
	tWarriorsPromotion_Reward[3315093]["RewardItem"][1]["Id"] = 101009
	tWarriorsPromotion_Reward[3315093]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 7 0 0 8 255 255"
	tWarriorsPromotion_Reward[3315093]["DeleteItem"] = {} 
	tWarriorsPromotion_Reward[3315093]["DeleteItem"][1] = {}
	tWarriorsPromotion_Reward[3315093]["DeleteItem"][1]["Id"] = 3315093
	
	tWarriorsPromotion_Reward[3315094] = {}
	tWarriorsPromotion_Reward[3315094]["LogId"] = 12000651
	tWarriorsPromotion_Reward[3315094]["RewardItem"] = {}
	tWarriorsPromotion_Reward[3315094]["RewardItem"][1] = {}
	tWarriorsPromotion_Reward[3315094]["RewardItem"][1]["Id"] = 626029
	tWarriorsPromotion_Reward[3315094]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 7 0 0 8 255 255"
	tWarriorsPromotion_Reward[3315094]["DeleteItem"] = {} 
	tWarriorsPromotion_Reward[3315094]["DeleteItem"][1] = {}
	tWarriorsPromotion_Reward[3315094]["DeleteItem"][1]["Id"] = 3315094
	
	--雷神版本新增非赠装备购买
	--+6苍之怒焰（赠）礼包(拳套)
	tWarriorsPromotion_Reward[3315190] = {}
	tWarriorsPromotion_Reward[3315190]["DeleteItem"] = {} 
	tWarriorsPromotion_Reward[3315190]["DeleteItem"][1] = {}
	tWarriorsPromotion_Reward[3315190]["DeleteItem"][1]["Id"] = 3315190
	tWarriorsPromotion_Reward[3315190]["RewardItem"] = {} 
	tWarriorsPromotion_Reward[3315190]["RewardItem"][1] = {}
	tWarriorsPromotion_Reward[3315190]["RewardItem"][1]["Id"] = 624029
	tWarriorsPromotion_Reward[3315190]["RewardItem"][1]["Attr"] ="0 1 0 0 0 0 0 5 0 0 6 255 255"
	tWarriorsPromotion_Reward[3315190]["LogId"] = 12000651
	
	tWarriorsPromotion_Reward[3315189] = {}
	tWarriorsPromotion_Reward[3315189]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315189]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315189]["DeleteItem"][1]["Id"]= 3315189
	tWarriorsPromotion_Reward[3315189]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315189]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315189]["RewardItem"][1]["Id"]= 617139
	tWarriorsPromotion_Reward[3315189]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 5 0 0 6 255 255"
	tWarriorsPromotion_Reward[3315189]["LogId"]= 12000651
	
	tWarriorsPromotion_Reward[3315188] = {}
	tWarriorsPromotion_Reward[3315188]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315188]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315188]["DeleteItem"][1]["Id"]= 3315188
	tWarriorsPromotion_Reward[3315188]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315188]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315188]["RewardItem"][1]["Id"]= 148069
	tWarriorsPromotion_Reward[3315188]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 5 0 0 6 255 255"
	tWarriorsPromotion_Reward[3315188]["LogId"]= 12000651
	
	
	tWarriorsPromotion_Reward[3315187] = {}
	tWarriorsPromotion_Reward[3315187]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315187]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315187]["DeleteItem"][1]["Id"]= 3315187
	tWarriorsPromotion_Reward[3315187]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315187]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315187]["RewardItem"][1]["Id"]= 138069
	tWarriorsPromotion_Reward[3315187]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 5 0 0 6 255 255"
	tWarriorsPromotion_Reward[3315187]["LogId"]= 12000651

	tWarriorsPromotion_Reward[3315186] = {}
	tWarriorsPromotion_Reward[3315186]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315186]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315186]["DeleteItem"][1]["Id"]= 3315186
	tWarriorsPromotion_Reward[3315186]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315186]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315186]["RewardItem"][1]["Id"]= 111069
	tWarriorsPromotion_Reward[3315186]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 5 0 0 6 255 255"
	tWarriorsPromotion_Reward[3315186]["LogId"]= 12000651
	
	tWarriorsPromotion_Reward[3315185] = {}
	tWarriorsPromotion_Reward[3315185]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315185]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315185]["DeleteItem"][1]["Id"]= 3315185
	tWarriorsPromotion_Reward[3315185]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315185]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315185]["RewardItem"][1]["Id"]= 142039
	tWarriorsPromotion_Reward[3315185]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 5 0 0 6 255 255"
	tWarriorsPromotion_Reward[3315185]["LogId"]= 12000651
	
	tWarriorsPromotion_Reward[3315184] = {}
	tWarriorsPromotion_Reward[3315184]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315184]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315184]["DeleteItem"][1]["Id"]= 3315184
	tWarriorsPromotion_Reward[3315184]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315184]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315184]["RewardItem"][1]["Id"]= 145069
	tWarriorsPromotion_Reward[3315184]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 5 0 0 6 255 255"
	tWarriorsPromotion_Reward[3315184]["LogId"]= 12000651
	
	tWarriorsPromotion_Reward[3315183] = {}
	tWarriorsPromotion_Reward[3315183]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315183]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315183]["DeleteItem"][1]["Id"]= 3315183
	tWarriorsPromotion_Reward[3315183]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315183]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315183]["RewardItem"][1]["Id"]= 143069
	tWarriorsPromotion_Reward[3315183]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 5 0 0 6 255 255"
	tWarriorsPromotion_Reward[3315183]["LogId"]= 12000651
	
	tWarriorsPromotion_Reward[3315182] = {}
	tWarriorsPromotion_Reward[3315182]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315182]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315182]["DeleteItem"][1]["Id"]= 3315182
	tWarriorsPromotion_Reward[3315182]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315182]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315182]["RewardItem"][1]["Id"]= 123069
	tWarriorsPromotion_Reward[3315182]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 5 0 0 6 255 255"
	tWarriorsPromotion_Reward[3315182]["LogId"]= 12000651
	
	tWarriorsPromotion_Reward[3315181] = {}
	tWarriorsPromotion_Reward[3315181]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315181]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315181]["DeleteItem"][1]["Id"]= 3315181
	tWarriorsPromotion_Reward[3315181]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315181]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315181]["RewardItem"][1]["Id"]= 114069
	tWarriorsPromotion_Reward[3315181]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 5 0 0 6 255 255"
	tWarriorsPromotion_Reward[3315181]["LogId"]= 12000651
	
	
	tWarriorsPromotion_Reward[3315180] = {}
	tWarriorsPromotion_Reward[3315180]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315180]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315180]["DeleteItem"][1]["Id"]= 3315180
	tWarriorsPromotion_Reward[3315180]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315180]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315180]["RewardItem"][1]["Id"]= 118069
	tWarriorsPromotion_Reward[3315180]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 5 0 0 6 255 255"
	tWarriorsPromotion_Reward[3315180]["LogId"]= 12000651	
	
	tWarriorsPromotion_Reward[3315179] = {}
	tWarriorsPromotion_Reward[3315179]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315179]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315179]["DeleteItem"][1]["Id"]= 3315179
	tWarriorsPromotion_Reward[3315179]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315179]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315179]["RewardItem"][1]["Id"]= 131069
	tWarriorsPromotion_Reward[3315179]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 5 0 0 6 255 255"
	tWarriorsPromotion_Reward[3315179]["LogId"]= 12000651
	
	tWarriorsPromotion_Reward[3315178] = {}
	tWarriorsPromotion_Reward[3315178]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315178]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315178]["DeleteItem"][1]["Id"]= 3315178
	tWarriorsPromotion_Reward[3315178]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315178]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315178]["RewardItem"][1]["Id"]= 133049
	tWarriorsPromotion_Reward[3315178]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 5 0 0 6 255 255"
	tWarriorsPromotion_Reward[3315178]["LogId"]= 12000651
	
	
	tWarriorsPromotion_Reward[3315166] = {}
	tWarriorsPromotion_Reward[3315166]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315166]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315166]["DeleteItem"][1]["Id"]= 3315166
	tWarriorsPromotion_Reward[3315166]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315166]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315166]["RewardItem"][1]["Id"]= 500129
	tWarriorsPromotion_Reward[3315166]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 5 0 0 6 255 255"
	tWarriorsPromotion_Reward[3315166]["LogId"]= 12000651
	tWarriorsPromotion_Reward[3315167] = {}
	tWarriorsPromotion_Reward[3315167]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315167]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315167]["DeleteItem"][1]["Id"]= 3315167
	tWarriorsPromotion_Reward[3315167]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315167]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315167]["RewardItem"][1]["Id"]= 561139
	tWarriorsPromotion_Reward[3315167]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 5 0 0 6 255 255"
	tWarriorsPromotion_Reward[3315167]["LogId"]= 12000651
	tWarriorsPromotion_Reward[3315168] = {}
	tWarriorsPromotion_Reward[3315168]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315168]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315168]["DeleteItem"][1]["Id"]= 3315168
	tWarriorsPromotion_Reward[3315168]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315168]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315168]["RewardItem"][1]["Id"]= 560139
	tWarriorsPromotion_Reward[3315168]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 5 0 0 6 255 255"
	tWarriorsPromotion_Reward[3315168]["LogId"]= 12000651
	tWarriorsPromotion_Reward[3315169] = {}
	tWarriorsPromotion_Reward[3315169]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315169]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315169]["DeleteItem"][1]["Id"]= 3315169
	tWarriorsPromotion_Reward[3315169]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315169]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315169]["RewardItem"][1]["Id"]= 900049
	tWarriorsPromotion_Reward[3315169]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 5 0 0 6 255 255"
	tWarriorsPromotion_Reward[3315169]["LogId"]= 12000651
	tWarriorsPromotion_Reward[3315170] = {}
	tWarriorsPromotion_Reward[3315170]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315170]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315170]["DeleteItem"][1]["Id"]= 3315170
	tWarriorsPromotion_Reward[3315170]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315170]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315170]["RewardItem"][1]["Id"]= 601139
	tWarriorsPromotion_Reward[3315170]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 5 0 0 6 255 255"
	tWarriorsPromotion_Reward[3315170]["LogId"]= 12000651
	tWarriorsPromotion_Reward[3315171] = {}
	tWarriorsPromotion_Reward[3315171]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315171]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315171]["DeleteItem"][1]["Id"]= 3315171
	tWarriorsPromotion_Reward[3315171]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315171]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315171]["RewardItem"][1]["Id"]= 611139
	tWarriorsPromotion_Reward[3315171]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 5 0 0 6 255 255"
	tWarriorsPromotion_Reward[3315171]["LogId"]= 12000651
	tWarriorsPromotion_Reward[3315172] = {}
	tWarriorsPromotion_Reward[3315172]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315172]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315172]["DeleteItem"][1]["Id"]= 3315172
	tWarriorsPromotion_Reward[3315172]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315172]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315172]["RewardItem"][1]["Id"]= 612139
	tWarriorsPromotion_Reward[3315172]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 5 0 0 6 255 255"
	tWarriorsPromotion_Reward[3315172]["LogId"]= 12000651
	tWarriorsPromotion_Reward[3315173] = {}
	tWarriorsPromotion_Reward[3315173]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315173]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315173]["DeleteItem"][1]["Id"]= 3315173
	tWarriorsPromotion_Reward[3315173]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315173]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315173]["RewardItem"][1]["Id"]= 130069
	tWarriorsPromotion_Reward[3315173]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 5 0 0 6 255 255"
	tWarriorsPromotion_Reward[3315173]["LogId"]= 12000651
	tWarriorsPromotion_Reward[3315174] = {}
	tWarriorsPromotion_Reward[3315174]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315174]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315174]["DeleteItem"][1]["Id"]= 3315174
	tWarriorsPromotion_Reward[3315174]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315174]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315174]["RewardItem"][1]["Id"]= 134069
	tWarriorsPromotion_Reward[3315174]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 5 0 0 6 255 255"
	tWarriorsPromotion_Reward[3315174]["LogId"]= 12000651
	tWarriorsPromotion_Reward[3315175] = {}
	tWarriorsPromotion_Reward[3315175]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315175]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315175]["DeleteItem"][1]["Id"]= 3315175
	tWarriorsPromotion_Reward[3315175]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315175]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315175]["RewardItem"][1]["Id"]= 136069
	tWarriorsPromotion_Reward[3315175]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 5 0 0 6 255 255"
	tWarriorsPromotion_Reward[3315175]["LogId"]= 12000651
	tWarriorsPromotion_Reward[3315176] = {}
	tWarriorsPromotion_Reward[3315176]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315176]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315176]["DeleteItem"][1]["Id"]= 3315176
	tWarriorsPromotion_Reward[3315176]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315176]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315176]["RewardItem"][1]["Id"]= 139069
	tWarriorsPromotion_Reward[3315176]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 5 0 0 6 255 255"
	tWarriorsPromotion_Reward[3315176]["LogId"]= 12000651
	tWarriorsPromotion_Reward[3315177] = {}
	tWarriorsPromotion_Reward[3315177]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315177]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315177]["DeleteItem"][1]["Id"]= 3315177
	tWarriorsPromotion_Reward[3315177]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315177]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315177]["RewardItem"][1]["Id"]= 135069
	tWarriorsPromotion_Reward[3315177]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 5 0 0 6 255 255"
	tWarriorsPromotion_Reward[3315177]["LogId"]= 12000651
	
	
	tWarriorsPromotion_Reward[3315149] = {}
	tWarriorsPromotion_Reward[3315149]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315149]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315149]["DeleteItem"][1]["Id"]= 3315149
	tWarriorsPromotion_Reward[3315149]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315149]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315149]["RewardItem"][1]["Id"]= 150139
	tWarriorsPromotion_Reward[3315149]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 5 0 0 6 255 255"
	tWarriorsPromotion_Reward[3315149]["LogId"]= 12000651
	tWarriorsPromotion_Reward[3315150] = {}
	tWarriorsPromotion_Reward[3315150]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315150]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315150]["DeleteItem"][1]["Id"]= 3315150
	tWarriorsPromotion_Reward[3315150]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315150]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315150]["RewardItem"][1]["Id"]= 120129
	tWarriorsPromotion_Reward[3315150]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 5 0 0 6 255 255"
	tWarriorsPromotion_Reward[3315150]["LogId"]= 12000651
	tWarriorsPromotion_Reward[3315151] = {}
	tWarriorsPromotion_Reward[3315151]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315151]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315151]["DeleteItem"][1]["Id"]= 3315151
	tWarriorsPromotion_Reward[3315151]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315151]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315151]["RewardItem"][1]["Id"]= 160139
	tWarriorsPromotion_Reward[3315151]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 5 0 0 6 255 255"
	tWarriorsPromotion_Reward[3315151]["LogId"]= 12000651
	tWarriorsPromotion_Reward[3315152] = {}
	tWarriorsPromotion_Reward[3315152]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315152]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315152]["DeleteItem"][1]["Id"]= 3315152
	tWarriorsPromotion_Reward[3315152]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315152]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315152]["RewardItem"][1]["Id"]= 117069
	tWarriorsPromotion_Reward[3315152]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 5 0 0 6 255 255"
	tWarriorsPromotion_Reward[3315152]["LogId"]= 12000651
	tWarriorsPromotion_Reward[3315153] = {}
	tWarriorsPromotion_Reward[3315153]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315153]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315153]["DeleteItem"][1]["Id"]= 3315153
	tWarriorsPromotion_Reward[3315153]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315153]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315153]["RewardItem"][1]["Id"]= 121129
	tWarriorsPromotion_Reward[3315153]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 5 0 0 6 255 255"
	tWarriorsPromotion_Reward[3315153]["LogId"]= 12000651
	tWarriorsPromotion_Reward[3315154] = {}
	tWarriorsPromotion_Reward[3315154]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315154]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315154]["DeleteItem"][1]["Id"]= 3315154
	tWarriorsPromotion_Reward[3315154]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315154]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315154]["RewardItem"][1]["Id"]= 152129
	tWarriorsPromotion_Reward[3315154]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 5 0 0 6 255 255"
	tWarriorsPromotion_Reward[3315154]["LogId"]= 12000651
	tWarriorsPromotion_Reward[3315155] = {}
	tWarriorsPromotion_Reward[3315155]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315155]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315155]["DeleteItem"][1]["Id"]= 3315155
	tWarriorsPromotion_Reward[3315155]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315155]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315155]["RewardItem"][1]["Id"]= 202009
	tWarriorsPromotion_Reward[3315155]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 1 0 0 6 255 255"
	tWarriorsPromotion_Reward[3315155]["LogId"]= 12000651
	tWarriorsPromotion_Reward[3315156] = {}
	tWarriorsPromotion_Reward[3315156]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315156]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315156]["DeleteItem"][1]["Id"]= 3315156
	tWarriorsPromotion_Reward[3315156]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315156]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315156]["RewardItem"][1]["Id"]= 201009
	tWarriorsPromotion_Reward[3315156]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 1 0 0 6 255 255"
	tWarriorsPromotion_Reward[3315156]["LogId"]= 12000651
	tWarriorsPromotion_Reward[3315157] = {}
	tWarriorsPromotion_Reward[3315157]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315157]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315157]["DeleteItem"][1]["Id"]= 3315157
	tWarriorsPromotion_Reward[3315157]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315157]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315157]["RewardItem"][1]["Id"]= 203009
	tWarriorsPromotion_Reward[3315157]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 1 0 0 6"
	tWarriorsPromotion_Reward[3315157]["LogId"]= 12000651
	tWarriorsPromotion_Reward[3315158] = {}
	tWarriorsPromotion_Reward[3315158]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315158]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315158]["DeleteItem"][1]["Id"]= 3315158
	tWarriorsPromotion_Reward[3315158]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315158]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315158]["RewardItem"][1]["Id"]= 410139
	tWarriorsPromotion_Reward[3315158]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 5 0 0 6 255 255 200"
	tWarriorsPromotion_Reward[3315158]["LogId"]= 12000651
	tWarriorsPromotion_Reward[3315159] = {}
	tWarriorsPromotion_Reward[3315159]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315159]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315159]["DeleteItem"][1]["Id"]= 3315159
	tWarriorsPromotion_Reward[3315159]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315159]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315159]["RewardItem"][1]["Id"]= 613129
	tWarriorsPromotion_Reward[3315159]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 5 0 0 6 255 255"
	tWarriorsPromotion_Reward[3315159]["LogId"]= 12000651
	tWarriorsPromotion_Reward[3315160] = {}
	tWarriorsPromotion_Reward[3315160]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315160]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315160]["DeleteItem"][1]["Id"]= 3315160
	tWarriorsPromotion_Reward[3315160]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315160]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315160]["RewardItem"][1]["Id"]= 511139
	tWarriorsPromotion_Reward[3315160]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 5 0 0 6 255 255"
	tWarriorsPromotion_Reward[3315160]["LogId"]= 12000651
	tWarriorsPromotion_Reward[3315161] = {}
	tWarriorsPromotion_Reward[3315161]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315161]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315161]["DeleteItem"][1]["Id"]= 3315161
	tWarriorsPromotion_Reward[3315161]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315161]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315161]["RewardItem"][1]["Id"]= 610139
	tWarriorsPromotion_Reward[3315161]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 5 0 0 6 255 255"
	tWarriorsPromotion_Reward[3315161]["LogId"]= 12000651
	tWarriorsPromotion_Reward[3315162] = {}
	tWarriorsPromotion_Reward[3315162]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315162]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315162]["DeleteItem"][1]["Id"]= 3315162
	tWarriorsPromotion_Reward[3315162]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315162]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315162]["RewardItem"][1]["Id"]= 410139
	tWarriorsPromotion_Reward[3315162]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 5 0 0 6 255 255"
	tWarriorsPromotion_Reward[3315162]["LogId"]= 12000651
	tWarriorsPromotion_Reward[3315163] = {}
	tWarriorsPromotion_Reward[3315163]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315163]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315163]["DeleteItem"][1]["Id"]= 3315163
	tWarriorsPromotion_Reward[3315163]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315163]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315163]["RewardItem"][1]["Id"]= 420139
	tWarriorsPromotion_Reward[3315163]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 5 0 0 6 255 255"
	tWarriorsPromotion_Reward[3315163]["LogId"]= 12000651
	tWarriorsPromotion_Reward[3315164] = {}
	tWarriorsPromotion_Reward[3315164]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315164]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315164]["DeleteItem"][1]["Id"]= 3315164
	tWarriorsPromotion_Reward[3315164]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315164]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315164]["RewardItem"][1]["Id"]= 480139
	tWarriorsPromotion_Reward[3315164]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 5 0 0 6 255 255"
	tWarriorsPromotion_Reward[3315164]["LogId"]= 12000651
	tWarriorsPromotion_Reward[3315165] = {}
	tWarriorsPromotion_Reward[3315165]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315165]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315165]["DeleteItem"][1]["Id"]= 3315165
	tWarriorsPromotion_Reward[3315165]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315165]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315165]["RewardItem"][1]["Id"]= 421139
	tWarriorsPromotion_Reward[3315165]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 5 0 0 6 255 255"
	tWarriorsPromotion_Reward[3315165]["LogId"]= 12000651

--LoveForever-女戒
tWarriorsPromotion_Reward[3315144] = {}
tWarriorsPromotion_Reward[3315144]["RewardItem"] = {}
tWarriorsPromotion_Reward[3315144]["RewardItem"][1] = {}
tWarriorsPromotion_Reward[3315144]["RewardItem"][1]["Id"] = 150320
tWarriorsPromotion_Reward[3315144]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 3 0 0 4 255"
tWarriorsPromotion_Reward[3315144]["LogId"] = 12001098
tWarriorsPromotion_Reward[3315144]["DeleteItem"] = {}
tWarriorsPromotion_Reward[3315144]["DeleteItem"][1] = {}
tWarriorsPromotion_Reward[3315144]["DeleteItem"][1]["Id"] = 3315144

--CryingHeavyRing（扳指）
tWarriorsPromotion_Reward[3315143] = {}
tWarriorsPromotion_Reward[3315143]["RewardItem"] = {}
tWarriorsPromotion_Reward[3315143]["RewardItem"][1] = {}
tWarriorsPromotion_Reward[3315143]["RewardItem"][1]["Id"] = 151229
tWarriorsPromotion_Reward[3315143]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 3 0 0 4 255"
tWarriorsPromotion_Reward[3315143]["LogId"] = 12001098
tWarriorsPromotion_Reward[3315143]["DeleteItem"] = {}
tWarriorsPromotion_Reward[3315143]["DeleteItem"][1] = {}
tWarriorsPromotion_Reward[3315143]["DeleteItem"][1]["Id"] = 3315143

--雷神
--Odddagger（匕首）
tWarriorsPromotion_Reward[3315142] = {}
tWarriorsPromotion_Reward[3315142]["RewardItem"] = {}
tWarriorsPromotion_Reward[3315142]["RewardItem"][1] = {}
tWarriorsPromotion_Reward[3315142]["RewardItem"][1]["Id"] = 490169
tWarriorsPromotion_Reward[3315142]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 3 0 0 4 255"
tWarriorsPromotion_Reward[3315142]["LogId"] = 12001098
tWarriorsPromotion_Reward[3315142]["DeleteItem"] = {}
tWarriorsPromotion_Reward[3315142]["DeleteItem"][1] = {}
tWarriorsPromotion_Reward[3315142]["DeleteItem"][1]["Id"] = 3315142


	-- 极品15级狂战武器
	tWarriorsPromotion_Reward[3315141] = {}
	tWarriorsPromotion_Reward[3315141]["DeleteItem"] = {}
	tWarriorsPromotion_Reward[3315141]["DeleteItem"][1] = {}
	tWarriorsPromotion_Reward[3315141]["DeleteItem"][1]["Id"] = 3315141
	tWarriorsPromotion_Reward[3315141]["RewardItem"] = {}
	tWarriorsPromotion_Reward[3315141]["RewardItem"][1] = {}
	tWarriorsPromotion_Reward[3315141]["RewardItem"][1]["Id"] = 624029
	tWarriorsPromotion_Reward[3315141]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 3 0 0 4 255"
	tWarriorsPromotion_Reward[3315141]["LogId"] = 12000651
	
	-- 极品15级铁扇武器
	tWarriorsPromotion_Reward[3315140] = {}
	tWarriorsPromotion_Reward[3315140]["DeleteItem"] = {}
	tWarriorsPromotion_Reward[3315140]["DeleteItem"][1] = {}
	tWarriorsPromotion_Reward[3315140]["DeleteItem"][1]["Id"] = 3315140
	tWarriorsPromotion_Reward[3315140]["RewardItem"] = {}
	tWarriorsPromotion_Reward[3315140]["RewardItem"][1] = {}
	tWarriorsPromotion_Reward[3315140]["RewardItem"][1]["Id"] = 626029
	tWarriorsPromotion_Reward[3315140]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 3 0 0 4 255"
	tWarriorsPromotion_Reward[3315140]["LogId"] = 12000651
	
	--雷神版本新增非赠装备购买
	-- 极品15级铁头
	tWarriorsPromotion_Reward[3315138] = {}
	tWarriorsPromotion_Reward[3315138]["DeleteItem"] = {}
	tWarriorsPromotion_Reward[3315138]["DeleteItem"][1] = {}
	tWarriorsPromotion_Reward[3315138]["DeleteItem"][1]["Id"] = 3315138
	tWarriorsPromotion_Reward[3315138]["RewardItem"] = {}
	tWarriorsPromotion_Reward[3315138]["RewardItem"][1] = {}
	tWarriorsPromotion_Reward[3315138]["RewardItem"][1]["Id"] = 170009
	tWarriorsPromotion_Reward[3315138]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 3 0 0 4 255"
	tWarriorsPromotion_Reward[3315138]["LogId"] = 12000651
	-- 极品15级铁衣
	tWarriorsPromotion_Reward[3315139] = {}
	tWarriorsPromotion_Reward[3315139]["DeleteItem"] = {}
	tWarriorsPromotion_Reward[3315139]["DeleteItem"][1] = {}
	tWarriorsPromotion_Reward[3315139]["DeleteItem"][1]["Id"] = 3315139
	tWarriorsPromotion_Reward[3315139]["RewardItem"] = {}
	tWarriorsPromotion_Reward[3315139]["RewardItem"][1] = {}
	tWarriorsPromotion_Reward[3315139]["RewardItem"][1]["Id"] = 101009
	tWarriorsPromotion_Reward[3315139]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 3 0 0 4 255"
	tWarriorsPromotion_Reward[3315139]["LogId"] = 12000651
	
	tWarriorsPromotion_Reward[3315137] = {}
	tWarriorsPromotion_Reward[3315137]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315137]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315137]["DeleteItem"][1]["Id"]= 3315137
	tWarriorsPromotion_Reward[3315137]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315137]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315137]["RewardItem"][1]["Id"]= 617139
	tWarriorsPromotion_Reward[3315137]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 3 0 0 4 255"
	tWarriorsPromotion_Reward[3315137]["LogId"]= 12000651
	
	
	--极品+6DarkCloudHat(B)礼盒 
	tWarriorsPromotion_Reward[3315148] = {}
	tWarriorsPromotion_Reward[3315148]["LogId"] = 12000651
	tWarriorsPromotion_Reward[3315148]["RewardItem"] = {}
	tWarriorsPromotion_Reward[3315148]["RewardItem"][1] = {}
	tWarriorsPromotion_Reward[3315148]["RewardItem"][1]["Id"] = 170009
	tWarriorsPromotion_Reward[3315148]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 5 0 0 6 255 255"
	tWarriorsPromotion_Reward[3315148]["DeleteItem"] = {} 
	tWarriorsPromotion_Reward[3315148]["DeleteItem"][1] = {}
	tWarriorsPromotion_Reward[3315148]["DeleteItem"][1]["Id"] = 3315148
	
	--极品+6MysticWindrobe(B)礼盒 
	tWarriorsPromotion_Reward[3315147] = {}
	tWarriorsPromotion_Reward[3315147]["LogId"] = 12000651
	tWarriorsPromotion_Reward[3315147]["RewardItem"] = {}
	tWarriorsPromotion_Reward[3315147]["RewardItem"][1] = {}
	tWarriorsPromotion_Reward[3315147]["RewardItem"][1]["Id"] = 101009
	tWarriorsPromotion_Reward[3315147]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 5 0 0 6 255 255"
	tWarriorsPromotion_Reward[3315147]["DeleteItem"] = {} 
	tWarriorsPromotion_Reward[3315147]["DeleteItem"][1] = {}
	tWarriorsPromotion_Reward[3315147]["DeleteItem"][1]["Id"] = 3315147
	
	
	--雷神版本新增非赠装备购买
	--极品+6PrideFan(B)礼盒 
	tWarriorsPromotion_Reward[3315146] = {}
	tWarriorsPromotion_Reward[3315146]["LogId"] = 12000651
	tWarriorsPromotion_Reward[3315146]["RewardItem"] = {}
	tWarriorsPromotion_Reward[3315146]["RewardItem"][1] = {}
	tWarriorsPromotion_Reward[3315146]["RewardItem"][1]["Id"] = 626029
	tWarriorsPromotion_Reward[3315146]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 5 0 0 6 255 255"
	tWarriorsPromotion_Reward[3315146]["DeleteItem"] = {} 
	tWarriorsPromotion_Reward[3315146]["DeleteItem"][1] = {}
	tWarriorsPromotion_Reward[3315146]["DeleteItem"][1]["Id"] = 3315146



--LoveForever-男戒
tWarriorsPromotion_Reward[3315145] = {}
tWarriorsPromotion_Reward[3315145]["RewardItem"] = {}
tWarriorsPromotion_Reward[3315145]["RewardItem"][1] = {}
tWarriorsPromotion_Reward[3315145]["RewardItem"][1]["Id"] = 150310
tWarriorsPromotion_Reward[3315145]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 3 0 0 4 255"
tWarriorsPromotion_Reward[3315145]["LogId"] = 12001098
tWarriorsPromotion_Reward[3315145]["DeleteItem"] = {}
tWarriorsPromotion_Reward[3315145]["DeleteItem"][1] = {}
tWarriorsPromotion_Reward[3315145]["DeleteItem"][1]["Id"] = 3315145


	tWarriorsPromotion_Reward[3315136] = {}
	tWarriorsPromotion_Reward[3315136]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315136]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315136]["DeleteItem"][1]["Id"]= 3315136
	tWarriorsPromotion_Reward[3315136]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315136]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315136]["RewardItem"][1]["Id"]= 148069
	tWarriorsPromotion_Reward[3315136]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 3 0 0 4 255"
	tWarriorsPromotion_Reward[3315136]["LogId"]= 12000651


	tWarriorsPromotion_Reward[3315135] = {}
	tWarriorsPromotion_Reward[3315135]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315135]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315135]["DeleteItem"][1]["Id"]= 3315135
	tWarriorsPromotion_Reward[3315135]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315135]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315135]["RewardItem"][1]["Id"]= 138069
	tWarriorsPromotion_Reward[3315135]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 3 0 0 4 255"
	tWarriorsPromotion_Reward[3315135]["LogId"]= 12000651


	tWarriorsPromotion_Reward[3315134] = {}
	tWarriorsPromotion_Reward[3315134]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315134]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315134]["DeleteItem"][1]["Id"]= 3315134
	tWarriorsPromotion_Reward[3315134]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315134]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315134]["RewardItem"][1]["Id"]= 111069
	tWarriorsPromotion_Reward[3315134]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 3 0 0 4 255"
	tWarriorsPromotion_Reward[3315134]["LogId"]= 12000651

	tWarriorsPromotion_Reward[3315133] = {}
	tWarriorsPromotion_Reward[3315133]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315133]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315133]["DeleteItem"][1]["Id"]= 3315133
	tWarriorsPromotion_Reward[3315133]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315133]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315133]["RewardItem"][1]["Id"]= 142039
	tWarriorsPromotion_Reward[3315133]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 3 0 0 4 255"
	tWarriorsPromotion_Reward[3315133]["LogId"]= 12000651
	
	
	tWarriorsPromotion_Reward[3315132] = {}
	tWarriorsPromotion_Reward[3315132]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315132]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315132]["DeleteItem"][1]["Id"]= 3315132
	tWarriorsPromotion_Reward[3315132]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315132]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315132]["RewardItem"][1]["Id"]= 145069
	tWarriorsPromotion_Reward[3315132]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 3 0 0 4 255"
	tWarriorsPromotion_Reward[3315132]["LogId"]= 12000651
	
	
	
	
	tWarriorsPromotion_Reward[3315131] = {}
	tWarriorsPromotion_Reward[3315131]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315131]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315131]["DeleteItem"][1]["Id"]= 3315131
	tWarriorsPromotion_Reward[3315131]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315131]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315131]["RewardItem"][1]["Id"]= 143069
	tWarriorsPromotion_Reward[3315131]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 3 0 0 4 255"
	tWarriorsPromotion_Reward[3315131]["LogId"]= 12000651
	

	tWarriorsPromotion_Reward[3315130] = {}
	tWarriorsPromotion_Reward[3315130]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315130]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315130]["DeleteItem"][1]["Id"]= 3315130
	tWarriorsPromotion_Reward[3315130]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315130]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315130]["RewardItem"][1]["Id"]= 123069
	tWarriorsPromotion_Reward[3315130]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 3 0 0 4 255"
	tWarriorsPromotion_Reward[3315130]["LogId"]= 12000651
	
	tWarriorsPromotion_Reward[3315129] = {}
	tWarriorsPromotion_Reward[3315129]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315129]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315129]["DeleteItem"][1]["Id"]= 3315129
	tWarriorsPromotion_Reward[3315129]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315129]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315129]["RewardItem"][1]["Id"]= 114069
	tWarriorsPromotion_Reward[3315129]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 3 0 0 4 255"
	tWarriorsPromotion_Reward[3315129]["LogId"]= 12000651
	
	
	tWarriorsPromotion_Reward[3315128] = {}
	tWarriorsPromotion_Reward[3315128]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315128]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315128]["DeleteItem"][1]["Id"]= 3315128
	tWarriorsPromotion_Reward[3315128]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315128]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315128]["RewardItem"][1]["Id"]= 118069
	tWarriorsPromotion_Reward[3315128]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 3 0 0 4 255"
	tWarriorsPromotion_Reward[3315128]["LogId"]= 12000651
	
	tWarriorsPromotion_Reward[3315127] = {}
	tWarriorsPromotion_Reward[3315127]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315127]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315127]["DeleteItem"][1]["Id"]= 3315127
	tWarriorsPromotion_Reward[3315127]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315127]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315127]["RewardItem"][1]["Id"]= 131069
	tWarriorsPromotion_Reward[3315127]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 3 0 0 4 255"
	tWarriorsPromotion_Reward[3315127]["LogId"]= 12000651
	
	tWarriorsPromotion_Reward[3315126] = {}
	tWarriorsPromotion_Reward[3315126]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315126]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315126]["DeleteItem"][1]["Id"]= 3315126
	tWarriorsPromotion_Reward[3315126]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315126]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315126]["RewardItem"][1]["Id"]= 133049
	tWarriorsPromotion_Reward[3315126]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 3 0 0 4 255"
	tWarriorsPromotion_Reward[3315126]["LogId"]= 12000651
	
	tWarriorsPromotion_Reward[3315125] = {}
	tWarriorsPromotion_Reward[3315125]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315125]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315125]["DeleteItem"][1]["Id"]= 3315125
	tWarriorsPromotion_Reward[3315125]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315125]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315125]["RewardItem"][1]["Id"]= 135069
	tWarriorsPromotion_Reward[3315125]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 3 0 0 4 255"
	tWarriorsPromotion_Reward[3315125]["LogId"]= 12000651
	
	tWarriorsPromotion_Reward[3315124] = {}
	tWarriorsPromotion_Reward[3315124]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315124]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315124]["DeleteItem"][1]["Id"]= 3315124
	tWarriorsPromotion_Reward[3315124]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315124]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315124]["RewardItem"][1]["Id"]= 139069
	tWarriorsPromotion_Reward[3315124]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 3 0 0 4 255"
	tWarriorsPromotion_Reward[3315124]["LogId"]= 12000651
	
	
	
	tWarriorsPromotion_Reward[3315123] = {}
	tWarriorsPromotion_Reward[3315123]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315123]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315123]["DeleteItem"][1]["Id"]= 3315123
	tWarriorsPromotion_Reward[3315123]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315123]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315123]["RewardItem"][1]["Id"]= 136069
	tWarriorsPromotion_Reward[3315123]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 3 0 0 4 255"
	tWarriorsPromotion_Reward[3315123]["LogId"]= 12000651
	
	tWarriorsPromotion_Reward[3315122] = {}
	tWarriorsPromotion_Reward[3315122]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315122]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315122]["DeleteItem"][1]["Id"]= 3315122
	tWarriorsPromotion_Reward[3315122]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315122]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315122]["RewardItem"][1]["Id"]= 134069
	tWarriorsPromotion_Reward[3315122]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 3 0 0 4 255"
	tWarriorsPromotion_Reward[3315122]["LogId"]= 12000651	
	
	tWarriorsPromotion_Reward[3315121] = {}
	tWarriorsPromotion_Reward[3315121]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315121]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315121]["DeleteItem"][1]["Id"]= 3315121
	tWarriorsPromotion_Reward[3315121]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315121]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315121]["RewardItem"][1]["Id"]= 130069
	tWarriorsPromotion_Reward[3315121]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 3 0 0 4 255"
	tWarriorsPromotion_Reward[3315121]["LogId"]= 12000651
	
	tWarriorsPromotion_Reward[3315120] = {}
	tWarriorsPromotion_Reward[3315120]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315120]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315120]["DeleteItem"][1]["Id"]= 3315120
	tWarriorsPromotion_Reward[3315120]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315120]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315120]["RewardItem"][1]["Id"]= 612139
	tWarriorsPromotion_Reward[3315120]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 3 0 0 4 255 255"
	tWarriorsPromotion_Reward[3315120]["LogId"]= 12000651
	
	tWarriorsPromotion_Reward[3315119] = {}
	tWarriorsPromotion_Reward[3315119]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315119]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315119]["DeleteItem"][1]["Id"]= 3315119
	tWarriorsPromotion_Reward[3315119]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315119]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315119]["RewardItem"][1]["Id"]= 611139
	tWarriorsPromotion_Reward[3315119]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 3 0 0 4 255 255"
	tWarriorsPromotion_Reward[3315119]["LogId"]= 12000651
	
	tWarriorsPromotion_Reward[3315118] = {}
	tWarriorsPromotion_Reward[3315118]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315118]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315118]["DeleteItem"][1]["Id"]= 3315118
	tWarriorsPromotion_Reward[3315118]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315118]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315118]["RewardItem"][1]["Id"]= 601139
	tWarriorsPromotion_Reward[3315118]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 3 0 0 4 255 255"
	tWarriorsPromotion_Reward[3315118]["LogId"]= 12000651
	
	tWarriorsPromotion_Reward[3315117] = {}
	tWarriorsPromotion_Reward[3315117]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315117]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315117]["DeleteItem"][1]["Id"]= 3315117
	tWarriorsPromotion_Reward[3315117]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315117]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315117]["RewardItem"][1]["Id"]= 900049
	tWarriorsPromotion_Reward[3315117]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 3 0 0 4 255 255"
	tWarriorsPromotion_Reward[3315117]["LogId"]= 12000651
	
	tWarriorsPromotion_Reward[3315116] = {}
	tWarriorsPromotion_Reward[3315116]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315116]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315116]["DeleteItem"][1]["Id"]= 3315116
	tWarriorsPromotion_Reward[3315116]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315116]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315116]["RewardItem"][1]["Id"]= 560139
	tWarriorsPromotion_Reward[3315116]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 3 0 0 4 255 255"
	tWarriorsPromotion_Reward[3315116]["LogId"]= 12000651
	
	
	
	tWarriorsPromotion_Reward[3315115] = {}
	tWarriorsPromotion_Reward[3315115]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315115]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315115]["DeleteItem"][1]["Id"]= 3315115
	tWarriorsPromotion_Reward[3315115]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315115]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315115]["RewardItem"][1]["Id"]= 561139
	tWarriorsPromotion_Reward[3315115]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 3 0 0 4 255 255"
	tWarriorsPromotion_Reward[3315115]["LogId"]= 12000651
	
	
	tWarriorsPromotion_Reward[3315114] = {}
	tWarriorsPromotion_Reward[3315114]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315114]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315114]["DeleteItem"][1]["Id"]= 3315114
	tWarriorsPromotion_Reward[3315114]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315114]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315114]["RewardItem"][1]["Id"]= 500129
	tWarriorsPromotion_Reward[3315114]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 3 0 0 4 255 255"
	tWarriorsPromotion_Reward[3315114]["LogId"]= 12000651
	
	tWarriorsPromotion_Reward[3315113] = {}
	tWarriorsPromotion_Reward[3315113]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315113]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315113]["DeleteItem"][1]["Id"]= 3315113
	tWarriorsPromotion_Reward[3315113]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315113]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315113]["RewardItem"][1]["Id"]= 421139
	tWarriorsPromotion_Reward[3315113]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 3 0 0 4 255 255"
	tWarriorsPromotion_Reward[3315113]["LogId"]= 12000651
	
	tWarriorsPromotion_Reward[3315112] = {}
	tWarriorsPromotion_Reward[3315112]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315112]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315112]["DeleteItem"][1]["Id"]= 3315112
	tWarriorsPromotion_Reward[3315112]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315112]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315112]["RewardItem"][1]["Id"]= 480139
	tWarriorsPromotion_Reward[3315112]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 3 0 0 4 255 255"
	tWarriorsPromotion_Reward[3315112]["LogId"]= 12000651
	
	
	
	tWarriorsPromotion_Reward[3315111] = {}
	tWarriorsPromotion_Reward[3315111]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315111]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315111]["DeleteItem"][1]["Id"]= 3315111
	tWarriorsPromotion_Reward[3315111]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315111]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315111]["RewardItem"][1]["Id"]= 420139
	tWarriorsPromotion_Reward[3315111]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 3 0 0 4 255 255"
	tWarriorsPromotion_Reward[3315111]["LogId"]= 12000651
	
	tWarriorsPromotion_Reward[3315110] = {}
	tWarriorsPromotion_Reward[3315110]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315110]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315110]["DeleteItem"][1]["Id"]= 3315110
	tWarriorsPromotion_Reward[3315110]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315110]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315110]["RewardItem"][1]["Id"]= 410139
	tWarriorsPromotion_Reward[3315110]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 3 0 0 4 255 255"
	tWarriorsPromotion_Reward[3315110]["LogId"]= 12000651
	
	tWarriorsPromotion_Reward[3315109] = {}
	tWarriorsPromotion_Reward[3315109]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315109]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315109]["DeleteItem"][1]["Id"]= 3315109
	tWarriorsPromotion_Reward[3315109]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315109]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315109]["RewardItem"][1]["Id"]= 610139
	tWarriorsPromotion_Reward[3315109]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 3 0 0 4 255 255"
	tWarriorsPromotion_Reward[3315109]["LogId"]= 12000651
	
	
	tWarriorsPromotion_Reward[3315108] = {}
	tWarriorsPromotion_Reward[3315108]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315108]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315108]["DeleteItem"][1]["Id"]= 3315108
	tWarriorsPromotion_Reward[3315108]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315108]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315108]["RewardItem"][1]["Id"]= 511139
	tWarriorsPromotion_Reward[3315108]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 3 0 0 4 255 255"
	tWarriorsPromotion_Reward[3315108]["LogId"]= 12000651	

	tWarriorsPromotion_Reward[3315107] = {}
	tWarriorsPromotion_Reward[3315107]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315107]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315107]["DeleteItem"][1]["Id"]= 3315107
	tWarriorsPromotion_Reward[3315107]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315107]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315107]["RewardItem"][1]["Id"]= 613129
	tWarriorsPromotion_Reward[3315107]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 3 0 0 4 255 255"
	tWarriorsPromotion_Reward[3315107]["LogId"]= 12000651


	tWarriorsPromotion_Reward[3315106] = {}
	tWarriorsPromotion_Reward[3315106]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315106]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315106]["DeleteItem"][1]["Id"]= 3315106
	tWarriorsPromotion_Reward[3315106]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315106]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315106]["RewardItem"][1]["Id"]= 410139
	tWarriorsPromotion_Reward[3315106]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 3 0 0 4 255 255 200"
	tWarriorsPromotion_Reward[3315106]["LogId"]= 12000651
	
	
	tWarriorsPromotion_Reward[3315105] = {}
	tWarriorsPromotion_Reward[3315105]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315105]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315105]["DeleteItem"][1]["Id"]= 3315105
	tWarriorsPromotion_Reward[3315105]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315105]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315105]["RewardItem"][1]["Id"]= 203009
	tWarriorsPromotion_Reward[3315105]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 1 0 0 4"
	tWarriorsPromotion_Reward[3315105]["LogId"]= 12000651
	
	tWarriorsPromotion_Reward[3315104] = {}
	tWarriorsPromotion_Reward[3315104]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315104]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315104]["DeleteItem"][1]["Id"]= 3315104
	tWarriorsPromotion_Reward[3315104]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315104]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315104]["RewardItem"][1]["Id"]= 201009
	tWarriorsPromotion_Reward[3315104]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 1 0 0 4 255"
	tWarriorsPromotion_Reward[3315104]["LogId"]= 12000651
	
	
	
	tWarriorsPromotion_Reward[3315103] = {}
	tWarriorsPromotion_Reward[3315103]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315103]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315103]["DeleteItem"][1]["Id"]= 3315103
	tWarriorsPromotion_Reward[3315103]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315103]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315103]["RewardItem"][1]["Id"]= 202009
	tWarriorsPromotion_Reward[3315103]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 1 0 0 4 255"
	tWarriorsPromotion_Reward[3315103]["LogId"]= 12000651
	
	tWarriorsPromotion_Reward[3315102] = {}
	tWarriorsPromotion_Reward[3315102]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315102]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315102]["DeleteItem"][1]["Id"]= 3315102
	tWarriorsPromotion_Reward[3315102]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315102]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315102]["RewardItem"][1]["Id"]= 152129
	tWarriorsPromotion_Reward[3315102]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 3 0 0 4 255"
	tWarriorsPromotion_Reward[3315102]["LogId"]= 12000651
	
	tWarriorsPromotion_Reward[3315101] = {}
	tWarriorsPromotion_Reward[3315101]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315101]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315101]["DeleteItem"][1]["Id"]= 3315101
	tWarriorsPromotion_Reward[3315101]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315101]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315101]["RewardItem"][1]["Id"]= 121129
	tWarriorsPromotion_Reward[3315101]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 3 0 0 4 255"
	tWarriorsPromotion_Reward[3315101]["LogId"]= 12000651
	
	tWarriorsPromotion_Reward[3315100] = {}
	tWarriorsPromotion_Reward[3315100]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315100]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315100]["DeleteItem"][1]["Id"]= 3315100
	tWarriorsPromotion_Reward[3315100]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315100]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315100]["RewardItem"][1]["Id"]= 117069
	tWarriorsPromotion_Reward[3315100]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 3 0 0 4 255"
	tWarriorsPromotion_Reward[3315100]["LogId"]= 12000651
	
	tWarriorsPromotion_Reward[3315099] = {}
	tWarriorsPromotion_Reward[3315099]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315099]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315099]["DeleteItem"][1]["Id"]= 3315099
	tWarriorsPromotion_Reward[3315099]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315099]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315099]["RewardItem"][1]["Id"]= 160139
	tWarriorsPromotion_Reward[3315099]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 3 0 0 4 255"
	tWarriorsPromotion_Reward[3315099]["LogId"]= 12000651
	
	tWarriorsPromotion_Reward[3315098] = {}
	tWarriorsPromotion_Reward[3315098]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315098]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315098]["DeleteItem"][1]["Id"]= 3315098
	tWarriorsPromotion_Reward[3315098]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315098]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315098]["RewardItem"][1]["Id"]= 120129
	tWarriorsPromotion_Reward[3315098]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 3 0 0 4 255"
	tWarriorsPromotion_Reward[3315098]["LogId"]= 12000651
	
	
	tWarriorsPromotion_Reward[3315097] = {}
	tWarriorsPromotion_Reward[3315097]["DeleteItem"]= {}
	tWarriorsPromotion_Reward[3315097]["DeleteItem"][1]= {}
	tWarriorsPromotion_Reward[3315097]["DeleteItem"][1]["Id"]= 3315097
	tWarriorsPromotion_Reward[3315097]["RewardItem"]= {}
	tWarriorsPromotion_Reward[3315097]["RewardItem"][1]= {}
	tWarriorsPromotion_Reward[3315097]["RewardItem"][1]["Id"]= 150139
	tWarriorsPromotion_Reward[3315097]["RewardItem"][1]["Attr"]= "0 1 0 0 0 0 0 3 0 0 4 255"
	tWarriorsPromotion_Reward[3315097]["LogId"]= 12000651	
	
	--雷神
	--2洞+6-5
	--Odddagger（匕首）
	tWarriorsPromotion_Reward[3315191] = {}
	tWarriorsPromotion_Reward[3315191]["RewardItem"] = {}
	tWarriorsPromotion_Reward[3315191]["RewardItem"][1] = {}
	tWarriorsPromotion_Reward[3315191]["RewardItem"][1]["Id"] = 490169
	tWarriorsPromotion_Reward[3315191]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 5 0 0 6 255 255"
	tWarriorsPromotion_Reward[3315191]["LogId"] = 12001098
	tWarriorsPromotion_Reward[3315191]["DeleteItem"] = {}
	tWarriorsPromotion_Reward[3315191]["DeleteItem"][1] = {}
	tWarriorsPromotion_Reward[3315191]["DeleteItem"][1]["Id"] = 3315191
		
		
	--CryingHeavyRing（扳指）
	tWarriorsPromotion_Reward[3315192] = {}
	tWarriorsPromotion_Reward[3315192]["RewardItem"] = {}
	tWarriorsPromotion_Reward[3315192]["RewardItem"][1] = {}
	tWarriorsPromotion_Reward[3315192]["RewardItem"][1]["Id"] = 151229
	tWarriorsPromotion_Reward[3315192]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 5 0 0 6 255 255"
	tWarriorsPromotion_Reward[3315192]["LogId"] = 12001098
	tWarriorsPromotion_Reward[3315192]["DeleteItem"] = {}
	tWarriorsPromotion_Reward[3315192]["DeleteItem"][1] = {}
	tWarriorsPromotion_Reward[3315192]["DeleteItem"][1]["Id"] = 3315192
		
	--LoveForever-女戒
	tWarriorsPromotion_Reward[3315193] = {}
	tWarriorsPromotion_Reward[3315193]["RewardItem"] = {}
	tWarriorsPromotion_Reward[3315193]["RewardItem"][1] = {}
	tWarriorsPromotion_Reward[3315193]["RewardItem"][1]["Id"] = 150320
	tWarriorsPromotion_Reward[3315193]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 5 0 0 6 255 255"
	tWarriorsPromotion_Reward[3315193]["LogId"] = 12001098
	tWarriorsPromotion_Reward[3315193]["DeleteItem"] = {}
	tWarriorsPromotion_Reward[3315193]["DeleteItem"][1] = {}
	tWarriorsPromotion_Reward[3315193]["DeleteItem"][1]["Id"] = 3315193	
	
	
--LoveForever-男戒
	tWarriorsPromotion_Reward[3315194] = {}
	tWarriorsPromotion_Reward[3315194]["RewardItem"] = {}
	tWarriorsPromotion_Reward[3315194]["RewardItem"][1] = {}
	tWarriorsPromotion_Reward[3315194]["RewardItem"][1]["Id"] = 150310
	tWarriorsPromotion_Reward[3315194]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 5 0 0 6 255 255"
	tWarriorsPromotion_Reward[3315194]["LogId"] = 12001098
	tWarriorsPromotion_Reward[3315194]["DeleteItem"] = {}
	tWarriorsPromotion_Reward[3315194]["DeleteItem"][1] = {}
	tWarriorsPromotion_Reward[3315194]["DeleteItem"][1]["Id"] = 3315194	
	
	
	tWarriorsPromotion_Reward[3315096] = {}
	-- ===+4IronScepter(B)Pack
	-- ===索引: tWarriorsPromotion_Reward[3315096]
	-- ===删除: 3313735,1
	tWarriorsPromotion_Reward[3315096]["LogId"] = 12001580
	tWarriorsPromotion_Reward[3315096]["DeleteItem"] = {}
	tWarriorsPromotion_Reward[3315096]["DeleteItem"][1] = {}
	tWarriorsPromotion_Reward[3315096]["DeleteItem"][1]["Id"] = 3315096 -- 【库】+6IronScepterPack[属性:8]
	tWarriorsPromotion_Reward[3315096]["RewardItem"] = {}
	tWarriorsPromotion_Reward[3315096]["RewardItem"][1] = {}
	tWarriorsPromotion_Reward[3315096]["RewardItem"][1]["Id"] = 481029 -- IronScepter[481029][属性:0][叠加:0][金币:550], 【表格】IronScepter
	tWarriorsPromotion_Reward[3315096]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 5 0 0 6 255 255" -- IronScepter*1

		--9月新增武器杵
	tWarriorsPromotion_Reward[3315095] = {}
	-- ===+4IronScepter(B)Pack
	-- ===索引: tWarriorsPromotion_Reward[3315095]
	-- ===删除: 3313734,1
	tWarriorsPromotion_Reward[3315095]["LogId"] = 12001580
	tWarriorsPromotion_Reward[3315095]["DeleteItem"] = {}
	tWarriorsPromotion_Reward[3315095]["DeleteItem"][1] = {}
	tWarriorsPromotion_Reward[3315095]["DeleteItem"][1]["Id"] = 3315095 -- 【库】+4IronScepterPack[属性:8]
	tWarriorsPromotion_Reward[3315095]["RewardItem"] = {}
	tWarriorsPromotion_Reward[3315095]["RewardItem"][1] = {}
	tWarriorsPromotion_Reward[3315095]["RewardItem"][1]["Id"] = 481029 -- IronScepter[481029][属性:0][叠加:0][金币:550], 【表格】IronScepter
	tWarriorsPromotion_Reward[3315095]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 3 0 0 4 255" -- IronScepter*1

	-- ===十里桃花·三生三世 短武礼包
	-- ===索引: tWarriorsPromotion_Reward[3315383]
	-- ===删除: 3315383,1
	tWarriorsPromotion_Reward[3315383] = {}
	tWarriorsPromotion_Reward[3315383]["LogId"] = 12001448
	tWarriorsPromotion_Reward[3315383]["DeleteItem"] = {}
	tWarriorsPromotion_Reward[3315383]["DeleteItem"][1] = {}
	tWarriorsPromotion_Reward[3315383]["DeleteItem"][1]["Id"] = 3315383 -- 【库】LingeringBlossoms(Forever)Pack[属性:9]
	tWarriorsPromotion_Reward[3315383]["RewardItem"] = {}
	tWarriorsPromotion_Reward[3315383]["RewardItem"][1] = {}
	tWarriorsPromotion_Reward[3315383]["RewardItem"][1]["Id"] = 360297 -- LingeringBlossoms(Forever)[360297][属性:0][叠加:0][金币:0], 【表格】十里桃花·三生三世 短武
	tWarriorsPromotion_Reward[3315383]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑LingeringBlossoms(Forever)（赠）*1
	tWarriorsPromotion_Reward[3315383]["RewardEffect"] = {}
	tWarriorsPromotion_Reward[3315383]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWarriorsPromotion_Reward[3315383]["RewardEffect"]["Effect"] = "angelwing"


	tWarriorsPromotion_Reward[3315384] = {}
	-- ===RodofRoses*2
	-- ===索引: tWarriorsPromotion_Reward[3315384]
	-- ===删除: 3315384,1
	tWarriorsPromotion_Reward[3315384]["LogId"] = 12001448
	tWarriorsPromotion_Reward[3315384]["DeleteItem"] = {}
	tWarriorsPromotion_Reward[3315384]["DeleteItem"][1] = {}
	tWarriorsPromotion_Reward[3315384]["DeleteItem"][1]["Id"] = 3315384 -- 【库】GoldenDragonHammerPack[属性:9]
	tWarriorsPromotion_Reward[3315384]["RewardItem"] = {}
	tWarriorsPromotion_Reward[3315384]["RewardItem"][1] = {}
	tWarriorsPromotion_Reward[3315384]["RewardItem"][1]["Id"] = 360149 -- RodofRoses[360149][属性:0][叠加:0][金币:0], 【表格】RodofRoses*2
	tWarriorsPromotion_Reward[3315384]["RewardItem"][1]["Attr"] = "0 2 3 0 0 0 0 1" -- 1%神佑RodofRoses（赠）*2
	tWarriorsPromotion_Reward[3315384]["RewardEffect"] = {}
	tWarriorsPromotion_Reward[3315384]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWarriorsPromotion_Reward[3315384]["RewardEffect"]["Effect"] = "angelwing"


	tWarriorsPromotion_Reward[3315385] = {}
	-- ===GoldenDragonHammer*2
	-- ===索引: tWarriorsPromotion_Reward[3315385]
	-- ===删除: 3315385,1
	tWarriorsPromotion_Reward[3315385]["LogId"] = 12001448
	tWarriorsPromotion_Reward[3315385]["DeleteItem"] = {}
	tWarriorsPromotion_Reward[3315385]["DeleteItem"][1] = {}
	tWarriorsPromotion_Reward[3315385]["DeleteItem"][1]["Id"] = 3315385 -- 【库】RodofRosesPack[属性:9]
	tWarriorsPromotion_Reward[3315385]["RewardItem"] = {}
	tWarriorsPromotion_Reward[3315385]["RewardItem"][1] = {}
	tWarriorsPromotion_Reward[3315385]["RewardItem"][1]["Id"] = 360144 -- GoldenDragonHammer[360144][属性:0][叠加:0][金币:0], 【表格】GoldenDragonHammer*2
	tWarriorsPromotion_Reward[3315385]["RewardItem"][1]["Attr"] = "0 2 3 0 0 0 0 1" -- 1%神佑GoldenDragonHammer（赠）*2
	tWarriorsPromotion_Reward[3315385]["RewardEffect"] = {}
	tWarriorsPromotion_Reward[3315385]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWarriorsPromotion_Reward[3315385]["RewardEffect"]["Effect"] = "angelwing"


	tWarriorsPromotion_Reward[3315386] = {}
	-- ===十里桃花·三生三世 长武器外套
	-- ===索引: tWarriorsPromotion_Reward[3315386]
	-- ===删除: 3315386,1
	tWarriorsPromotion_Reward[3315386]["LogId"] = 12001448
	tWarriorsPromotion_Reward[3315386]["DeleteItem"] = {}
	tWarriorsPromotion_Reward[3315386]["DeleteItem"][1] = {}
	tWarriorsPromotion_Reward[3315386]["DeleteItem"][1]["Id"] = 3315386 -- 【库】LingeringBlossoms(Forever)Pack[属性:9]
	tWarriorsPromotion_Reward[3315386]["RewardItem"] = {}
	tWarriorsPromotion_Reward[3315386]["RewardItem"][1] = {}
	tWarriorsPromotion_Reward[3315386]["RewardItem"][1]["Id"] = 350164 -- LingeringBlossoms(Forever)[350164][属性:0][叠加:0][金币:0], 【表格】十里桃花·三生三世 短武
	tWarriorsPromotion_Reward[3315386]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑LingeringBlossoms(Forever)（赠）*1
	tWarriorsPromotion_Reward[3315386]["RewardEffect"] = {}
	tWarriorsPromotion_Reward[3315386]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWarriorsPromotion_Reward[3315386]["RewardEffect"]["Effect"] = "angelwing"


	tWarriorsPromotion_Reward[3315387] = {}
	-- ===海马的幻想
	-- ===索引: tWarriorsPromotion_Reward[3315387]
	-- ===删除: 3315387,1
	tWarriorsPromotion_Reward[3315387]["LogId"] = 12001448
	tWarriorsPromotion_Reward[3315387]["DeleteItem"] = {}
	tWarriorsPromotion_Reward[3315387]["DeleteItem"][1] = {}
	tWarriorsPromotion_Reward[3315387]["DeleteItem"][1]["Id"] = 3315387 -- 【库】DreamofSeahorsePack[属性:9]
	tWarriorsPromotion_Reward[3315387]["RewardItem"] = {}
	tWarriorsPromotion_Reward[3315387]["RewardItem"][1] = {}
	tWarriorsPromotion_Reward[3315387]["RewardItem"][1]["Id"] = 370049 -- DreamofSeahorse[370049][属性:0][叠加:0][金币:0], 【表格】海马的幻想
	tWarriorsPromotion_Reward[3315387]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑DreamofSeahorse（赠）*1
	tWarriorsPromotion_Reward[3315387]["RewardEffect"] = {}
	tWarriorsPromotion_Reward[3315387]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWarriorsPromotion_Reward[3315387]["RewardEffect"]["Effect"] = "angelwing"


	tWarriorsPromotion_Reward[3315388] = {}
	-- ===挡挡铛【魅力版】
	-- ===索引: tWarriorsPromotion_Reward[3315388]
	-- ===删除: 3315388,1
	tWarriorsPromotion_Reward[3315388]["LogId"] = 12001448
	tWarriorsPromotion_Reward[3315388]["DeleteItem"] = {}
	tWarriorsPromotion_Reward[3315388]["DeleteItem"][1] = {}
	tWarriorsPromotion_Reward[3315388]["DeleteItem"][1]["Id"] = 3315388 -- 【库】MewMewShield(Charm)Pack[属性:9]
	tWarriorsPromotion_Reward[3315388]["RewardItem"] = {}
	tWarriorsPromotion_Reward[3315388]["RewardItem"][1] = {}
	tWarriorsPromotion_Reward[3315388]["RewardItem"][1]["Id"] = 380046 -- MewMewShield(Charm)[380046][属性:0][叠加:0][金币:0], 【表格】挡挡铛【魅力版】
	tWarriorsPromotion_Reward[3315388]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑MewMewShield(Charm)（赠）*1
	tWarriorsPromotion_Reward[3315388]["RewardEffect"] = {}
	tWarriorsPromotion_Reward[3315388]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWarriorsPromotion_Reward[3315388]["RewardEffect"]["Effect"] = "angelwing"


	tWarriorsPromotion_Reward[3315391] = {}
	-- ===鸭力山大 短武器外套
	-- ===索引: tWarriorsPromotion_Reward[3315391]
	-- ===删除: 3315391,1
	tWarriorsPromotion_Reward[3315391]["LogId"] = 12001448
	tWarriorsPromotion_Reward[3315391]["DeleteItem"] = {}
	tWarriorsPromotion_Reward[3315391]["DeleteItem"][1] = {}
	tWarriorsPromotion_Reward[3315391]["DeleteItem"][1]["Id"] = 3315391 -- 【库】 3315391 【库里没有该物品】[属性:]
	tWarriorsPromotion_Reward[3315391]["RewardItem"] = {}
	tWarriorsPromotion_Reward[3315391]["RewardItem"][1] = {}
	tWarriorsPromotion_Reward[3315391]["RewardItem"][1]["Id"] = 360257 --  360257 【库里没有该物品】, 【表格】鸭力山大 短武器外套
	tWarriorsPromotion_Reward[3315391]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑 360257 【库里没有该物品】（赠）*1
	tWarriorsPromotion_Reward[3315391]["RewardEffect"] = {}
	tWarriorsPromotion_Reward[3315391]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWarriorsPromotion_Reward[3315391]["RewardEffect"]["Effect"] = "angelwing"


	tWarriorsPromotion_Reward[3315392] = {}
	-- ===鸭力山大 长武器外套
	-- ===索引: tWarriorsPromotion_Reward[3315392]
	-- ===删除: 3315392,1
	tWarriorsPromotion_Reward[3315392]["LogId"] = 12001448
	tWarriorsPromotion_Reward[3315392]["DeleteItem"] = {}
	tWarriorsPromotion_Reward[3315392]["DeleteItem"][1] = {}
	tWarriorsPromotion_Reward[3315392]["DeleteItem"][1]["Id"] = 3315392 -- 【库】 3315392 【库里没有该物品】[属性:]
	tWarriorsPromotion_Reward[3315392]["RewardItem"] = {}
	tWarriorsPromotion_Reward[3315392]["RewardItem"][1] = {}
	tWarriorsPromotion_Reward[3315392]["RewardItem"][1]["Id"] = 350140 --  350140 【库里没有该物品】, 【表格】鸭力山大 长武器外套
	tWarriorsPromotion_Reward[3315392]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑 350140 【库里没有该物品】（赠）*1
	tWarriorsPromotion_Reward[3315392]["RewardEffect"] = {}
	tWarriorsPromotion_Reward[3315392]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWarriorsPromotion_Reward[3315392]["RewardEffect"]["Effect"] = "angelwing"


	tWarriorsPromotion_Reward[3315389] = {}
	-- ===神奇海螺 短武器外套
	-- ===索引: tWarriorsPromotion_Reward[3315389]
	-- ===删除: 3315389,1
	tWarriorsPromotion_Reward[3315389]["LogId"] = 12001448
	tWarriorsPromotion_Reward[3315389]["DeleteItem"] = {}
	tWarriorsPromotion_Reward[3315389]["DeleteItem"][1] = {}
	tWarriorsPromotion_Reward[3315389]["DeleteItem"][1]["Id"] = 3315389 -- 【库】 3315389 【库里没有该物品】[属性:]
	tWarriorsPromotion_Reward[3315389]["RewardItem"] = {}
	tWarriorsPromotion_Reward[3315389]["RewardItem"][1] = {}
	tWarriorsPromotion_Reward[3315389]["RewardItem"][1]["Id"] = 360258 --  360258 【库里没有该物品】, 【表格】神奇海螺 短武器外套
	tWarriorsPromotion_Reward[3315389]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑 360258 【库里没有该物品】（赠）*1
	tWarriorsPromotion_Reward[3315389]["RewardEffect"] = {}
	tWarriorsPromotion_Reward[3315389]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWarriorsPromotion_Reward[3315389]["RewardEffect"]["Effect"] = "angelwing"


	tWarriorsPromotion_Reward[3315390] = {}
	-- ===神奇海螺 长武器外套
	-- ===索引: tWarriorsPromotion_Reward[3315390]
	-- ===删除: 3315390,1
	tWarriorsPromotion_Reward[3315390]["LogId"] = 12001448
	tWarriorsPromotion_Reward[3315390]["DeleteItem"] = {}
	tWarriorsPromotion_Reward[3315390]["DeleteItem"][1] = {}
	tWarriorsPromotion_Reward[3315390]["DeleteItem"][1]["Id"] = 3315390 -- 【库】 3315390 【库里没有该物品】[属性:]
	tWarriorsPromotion_Reward[3315390]["RewardItem"] = {}
	tWarriorsPromotion_Reward[3315390]["RewardItem"][1] = {}
	tWarriorsPromotion_Reward[3315390]["RewardItem"][1]["Id"] = 350139 --  350139 【库里没有该物品】, 【表格】神奇海螺 长武器外套
	tWarriorsPromotion_Reward[3315390]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑 350139 【库里没有该物品】（赠）*1
	tWarriorsPromotion_Reward[3315390]["RewardEffect"] = {}
	tWarriorsPromotion_Reward[3315390]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWarriorsPromotion_Reward[3315390]["RewardEffect"]["Effect"] = "angelwing"

	-- ===CloudDeerPack
	-- ===索引: tWarriorsPromotion_Reward[3315683]
	-- ===删除: 3315683,1
	tWarriorsPromotion_Reward[3315683] = {}
	tWarriorsPromotion_Reward[3315683]["LogId"] = 12001448
	tWarriorsPromotion_Reward[3315683]["DeleteItem"] = {}
	tWarriorsPromotion_Reward[3315683]["DeleteItem"][1] = {}
	tWarriorsPromotion_Reward[3315683]["DeleteItem"][1]["Id"] = 3315683 -- 【库】CloudDeerPack[属性:9]
	tWarriorsPromotion_Reward[3315683]["RewardItem"] = {}
	tWarriorsPromotion_Reward[3315683]["RewardItem"][1] = {}
	tWarriorsPromotion_Reward[3315683]["RewardItem"][1]["Id"] = 200107 -- CloudDeer[200107][属性:0][叠加:0][金币:100], 【表格】CloudDeer
	tWarriorsPromotion_Reward[3315683]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑CloudDeer（赠）*1
	tWarriorsPromotion_Reward[3315683]["RewardEffect"] = {}
	tWarriorsPromotion_Reward[3315683]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWarriorsPromotion_Reward[3315683]["RewardEffect"]["Effect"] = "angelwing"


	tWarriorsPromotion_Reward[3315684] = {}
	-- ===WarKylin
	-- ===索引: tWarriorsPromotion_Reward[3315684]
	-- ===删除: 3315684,1
	tWarriorsPromotion_Reward[3315684]["LogId"] = 12001448
	tWarriorsPromotion_Reward[3315684]["DeleteItem"] = {}
	tWarriorsPromotion_Reward[3315684]["DeleteItem"][1] = {}
	tWarriorsPromotion_Reward[3315684]["DeleteItem"][1]["Id"] = 3315684 -- 【库】WarKylinPack[属性:9]
	tWarriorsPromotion_Reward[3315684]["RewardItem"] = {}
	tWarriorsPromotion_Reward[3315684]["RewardItem"][1] = {}
	tWarriorsPromotion_Reward[3315684]["RewardItem"][1]["Id"] = 200403 -- WarKylin[200403][属性:0][叠加:0][金币:0], 【表格】WarKylin
	tWarriorsPromotion_Reward[3315684]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑WarKylin（赠）*1
	tWarriorsPromotion_Reward[3315684]["RewardEffect"] = {}
	tWarriorsPromotion_Reward[3315684]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWarriorsPromotion_Reward[3315684]["RewardEffect"]["Effect"] = "angelwing"


	tWarriorsPromotion_Reward[3315685] = {}
	-- ===TurkeyRun
	-- ===索引: tWarriorsPromotion_Reward[3315685]
	-- ===删除: 3315685,1
	tWarriorsPromotion_Reward[3315685]["LogId"] = 12001448
	tWarriorsPromotion_Reward[3315685]["DeleteItem"] = {}
	tWarriorsPromotion_Reward[3315685]["DeleteItem"][1] = {}
	tWarriorsPromotion_Reward[3315685]["DeleteItem"][1]["Id"] = 3315685 -- 【库】TurkeyRunPack[属性:9]
	tWarriorsPromotion_Reward[3315685]["RewardItem"] = {}
	tWarriorsPromotion_Reward[3315685]["RewardItem"][1] = {}
	tWarriorsPromotion_Reward[3315685]["RewardItem"][1]["Id"] = 200490 -- TurkeyRun[200490][属性:0][叠加:0][金币:0], 【表格】TurkeyRun
	tWarriorsPromotion_Reward[3315685]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑TurkeyRun（赠）*1
	tWarriorsPromotion_Reward[3315685]["RewardEffect"] = {}
	tWarriorsPromotion_Reward[3315685]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWarriorsPromotion_Reward[3315685]["RewardEffect"]["Effect"] = "angelwing"


	tWarriorsPromotion_Reward[3315686] = {}
	-- ===GiantFish
	-- ===索引: tWarriorsPromotion_Reward[3315686]
	-- ===删除: 3315686,1
	tWarriorsPromotion_Reward[3315686]["LogId"] = 12001448
	tWarriorsPromotion_Reward[3315686]["DeleteItem"] = {}
	tWarriorsPromotion_Reward[3315686]["DeleteItem"][1] = {}
	tWarriorsPromotion_Reward[3315686]["DeleteItem"][1]["Id"] = 3315686 -- 【库】GiantFishPack[属性:9]
	tWarriorsPromotion_Reward[3315686]["RewardItem"] = {}
	tWarriorsPromotion_Reward[3315686]["RewardItem"][1] = {}
	tWarriorsPromotion_Reward[3315686]["RewardItem"][1]["Id"] = 200625 -- GiantFish[200625][属性:0][叠加:0][金币:0], 【表格】GiantFish
	tWarriorsPromotion_Reward[3315686]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑GiantFish（赠）*1
	tWarriorsPromotion_Reward[3315686]["RewardEffect"] = {}
	tWarriorsPromotion_Reward[3315686]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWarriorsPromotion_Reward[3315686]["RewardEffect"]["Effect"] = "angelwing"


	tWarriorsPromotion_Reward[3315687] = {}
	-- ===AnniversaryLotusBase
	-- ===索引: tWarriorsPromotion_Reward[3315687]
	-- ===删除: 3315687,1
	tWarriorsPromotion_Reward[3315687]["LogId"] = 12001448
	tWarriorsPromotion_Reward[3315687]["DeleteItem"] = {}
	tWarriorsPromotion_Reward[3315687]["DeleteItem"][1] = {}
	tWarriorsPromotion_Reward[3315687]["DeleteItem"][1]["Id"] = 3315687 -- 【库】AnniversaryLotusBasePack[属性:9]
	tWarriorsPromotion_Reward[3315687]["RewardItem"] = {}
	tWarriorsPromotion_Reward[3315687]["RewardItem"][1] = {}
	tWarriorsPromotion_Reward[3315687]["RewardItem"][1]["Id"] = 200527 -- AnniversaryLotusBase[200527][属性:0][叠加:0][金币:0], 【表格】AnniversaryLotusBase
	tWarriorsPromotion_Reward[3315687]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑AnniversaryLotusBase（赠）*1
	tWarriorsPromotion_Reward[3315687]["RewardEffect"] = {}
	tWarriorsPromotion_Reward[3315687]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWarriorsPromotion_Reward[3315687]["RewardEffect"]["Effect"] = "angelwing"


	tWarriorsPromotion_Reward[3315688] = {}
	-- ===XmasSled
	-- ===索引: tWarriorsPromotion_Reward[3315688]
	-- ===删除: 3315688,1
	tWarriorsPromotion_Reward[3315688]["LogId"] = 12001448
	tWarriorsPromotion_Reward[3315688]["DeleteItem"] = {}
	tWarriorsPromotion_Reward[3315688]["DeleteItem"][1] = {}
	tWarriorsPromotion_Reward[3315688]["DeleteItem"][1]["Id"] = 3315688 -- 【库】XmasSledPack[属性:9]
	tWarriorsPromotion_Reward[3315688]["RewardItem"] = {}
	tWarriorsPromotion_Reward[3315688]["RewardItem"][1] = {}
	tWarriorsPromotion_Reward[3315688]["RewardItem"][1]["Id"] = 200491 -- XmasSled[200491][属性:0][叠加:0][金币:0], 【表格】XmasSled
	tWarriorsPromotion_Reward[3315688]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑XmasSled（赠）*1
	tWarriorsPromotion_Reward[3315688]["RewardEffect"] = {}
	tWarriorsPromotion_Reward[3315688]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWarriorsPromotion_Reward[3315688]["RewardEffect"]["Effect"] = "angelwing"


	tWarriorsPromotion_Reward[3315689] = {}
	-- ===SpecialForcePack
	-- ===索引: tWarriorsPromotion_Reward[3315689]
	-- ===删除: 3315689,1
	tWarriorsPromotion_Reward[3315689]["LogId"] = 12001448
	tWarriorsPromotion_Reward[3315689]["DeleteItem"] = {}
	tWarriorsPromotion_Reward[3315689]["DeleteItem"][1] = {}
	tWarriorsPromotion_Reward[3315689]["DeleteItem"][1]["Id"] = 3315689 -- 【库】SpecialForcePack[属性:9]
	tWarriorsPromotion_Reward[3315689]["RewardItem"] = {}
	tWarriorsPromotion_Reward[3315689]["RewardItem"][1] = {}
	tWarriorsPromotion_Reward[3315689]["RewardItem"][1]["Id"] = 196185 -- FinalSurvivor[196185][属性:0][叠加:0][金币:0], 【表格】SpecialForcePack
	tWarriorsPromotion_Reward[3315689]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑FinalSurvivor*1
	tWarriorsPromotion_Reward[3315689]["RewardEffect"] = {}
	tWarriorsPromotion_Reward[3315689]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWarriorsPromotion_Reward[3315689]["RewardEffect"]["Effect"] = "angelwing"


	tWarriorsPromotion_Reward[3315690] = {}
	-- ===SpecialForce（Elite）
	-- ===索引: tWarriorsPromotion_Reward[3315690]
	-- ===删除: 3315690,1
	tWarriorsPromotion_Reward[3315690]["LogId"] = 12001448
	tWarriorsPromotion_Reward[3315690]["DeleteItem"] = {}
	tWarriorsPromotion_Reward[3315690]["DeleteItem"][1] = {}
	tWarriorsPromotion_Reward[3315690]["DeleteItem"][1]["Id"] = 3315690 -- 【库】SpecialForce(Elite) Pack[属性:9]
	tWarriorsPromotion_Reward[3315690]["RewardItem"] = {}
	tWarriorsPromotion_Reward[3315690]["RewardItem"][1] = {}
	tWarriorsPromotion_Reward[3315690]["RewardItem"][1]["Id"] = 196195 -- FinalSurvivor(Supreme)[196195][属性:0][叠加:0][金币:0], 【表格】SpecialForce（Elite）
	tWarriorsPromotion_Reward[3315690]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑FinalSurvivor(Supreme)*1
	tWarriorsPromotion_Reward[3315690]["RewardEffect"] = {}
	tWarriorsPromotion_Reward[3315690]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWarriorsPromotion_Reward[3315690]["RewardEffect"]["Effect"] = "angelwing"

	tWarriorsPromotion_Reward[3315796] = {}
	tWarriorsPromotion_Reward[3315796]["LogId"] = 12001448
	tWarriorsPromotion_Reward[3315796]["DeleteItem"] = {}
	tWarriorsPromotion_Reward[3315796]["DeleteItem"][1] = {}
	tWarriorsPromotion_Reward[3315796]["DeleteItem"][1]["Id"] = 3315796
	tWarriorsPromotion_Reward[3315796]["RewardItem"] = {}
	tWarriorsPromotion_Reward[3315796]["RewardItem"][1] = {}
	tWarriorsPromotion_Reward[3315796]["RewardItem"][1]["Id"] = 711083 
	tWarriorsPromotion_Reward[3315796]["RewardItem"][1]["Attr"] = "0 1" 
	tWarriorsPromotion_Reward[3315796]["RewardEffect"] = {}
	tWarriorsPromotion_Reward[3315796]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWarriorsPromotion_Reward[3315796]["RewardEffect"]["Effect"] = "angelwing"

	tWarriorsPromotion_Reward[3315797] = {}
	tWarriorsPromotion_Reward[3315797]["LogId"] = 12001448
	tWarriorsPromotion_Reward[3315797]["DeleteItem"] = {}
	tWarriorsPromotion_Reward[3315797]["DeleteItem"][1] = {}
	tWarriorsPromotion_Reward[3315797]["DeleteItem"][1]["Id"] = 3315797
	tWarriorsPromotion_Reward[3315797]["RewardItem"] = {}
	tWarriorsPromotion_Reward[3315797]["RewardItem"][1] = {}
	tWarriorsPromotion_Reward[3315797]["RewardItem"][1]["Id"] = 720650 
	tWarriorsPromotion_Reward[3315797]["RewardItem"][1]["Attr"] = "0 1" 
	tWarriorsPromotion_Reward[3315797]["RewardEffect"] = {}
	tWarriorsPromotion_Reward[3315797]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWarriorsPromotion_Reward[3315797]["RewardEffect"]["Effect"] = "angelwing"
	
	tWarriorsPromotion_Reward[3315798] = {}
	tWarriorsPromotion_Reward[3315798]["LogId"] = 12001448
	tWarriorsPromotion_Reward[3315798]["DeleteItem"] = {}
	tWarriorsPromotion_Reward[3315798]["DeleteItem"][1] = {}
	tWarriorsPromotion_Reward[3315798]["DeleteItem"][1]["Id"] = 3315798
	tWarriorsPromotion_Reward[3315798]["RewardItem"] = {}
	tWarriorsPromotion_Reward[3315798]["RewardItem"][1] = {}
	tWarriorsPromotion_Reward[3315798]["RewardItem"][1]["Id"] = 720651 
	tWarriorsPromotion_Reward[3315798]["RewardItem"][1]["Attr"] = "0 1" 
	tWarriorsPromotion_Reward[3315798]["RewardEffect"] = {}
	tWarriorsPromotion_Reward[3315798]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWarriorsPromotion_Reward[3315798]["RewardEffect"]["Effect"] = "angelwing"
	
	
	tWarriorsPromotion_Reward[3315799] = {}
	tWarriorsPromotion_Reward[3315799]["LogId"] = 12001448
	tWarriorsPromotion_Reward[3315799]["DeleteItem"] = {}
	tWarriorsPromotion_Reward[3315799]["DeleteItem"][1] = {}
	tWarriorsPromotion_Reward[3315799]["DeleteItem"][1]["Id"] = 3315799
	tWarriorsPromotion_Reward[3315799]["RewardItem"] = {}
	tWarriorsPromotion_Reward[3315799]["RewardItem"][1] = {}
	tWarriorsPromotion_Reward[3315799]["RewardItem"][1]["Id"] = 720652 
	tWarriorsPromotion_Reward[3315799]["RewardItem"][1]["Attr"] = "0 1" 
	tWarriorsPromotion_Reward[3315799]["RewardEffect"] = {}
	tWarriorsPromotion_Reward[3315799]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWarriorsPromotion_Reward[3315799]["RewardEffect"]["Effect"] = "angelwing"
	
	tWarriorsPromotion_Reward[3315800] = {}
	tWarriorsPromotion_Reward[3315800]["LogId"] = 12001448
	tWarriorsPromotion_Reward[3315800]["DeleteItem"] = {}
	tWarriorsPromotion_Reward[3315800]["DeleteItem"][1] = {}
	tWarriorsPromotion_Reward[3315800]["DeleteItem"][1]["Id"] = 3315800
	tWarriorsPromotion_Reward[3315800]["RewardItem"] = {}
	tWarriorsPromotion_Reward[3315800]["RewardItem"][1] = {}
	tWarriorsPromotion_Reward[3315800]["RewardItem"][1]["Id"] = 720671 
	tWarriorsPromotion_Reward[3315800]["RewardItem"][1]["Attr"] = "0 1" 
	tWarriorsPromotion_Reward[3315800]["RewardEffect"] = {}
	tWarriorsPromotion_Reward[3315800]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWarriorsPromotion_Reward[3315800]["RewardEffect"]["Effect"] = "angelwing"
	
	tWarriorsPromotion_Reward[3315801] = {}
	tWarriorsPromotion_Reward[3315801]["LogId"] = 12001448
	tWarriorsPromotion_Reward[3315801]["DeleteItem"] = {}
	tWarriorsPromotion_Reward[3315801]["DeleteItem"][1] = {}
	tWarriorsPromotion_Reward[3315801]["DeleteItem"][1]["Id"] = 3315801
	tWarriorsPromotion_Reward[3315801]["RewardItem"] = {}
	tWarriorsPromotion_Reward[3315801]["RewardItem"][1] = {}
	tWarriorsPromotion_Reward[3315801]["RewardItem"][1]["Id"] = 720672 
	tWarriorsPromotion_Reward[3315801]["RewardItem"][1]["Attr"] = "0 1" 
	tWarriorsPromotion_Reward[3315801]["RewardEffect"] = {}
	tWarriorsPromotion_Reward[3315801]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWarriorsPromotion_Reward[3315801]["RewardEffect"]["Effect"] = "angelwing"
	
	tWarriorsPromotion_Reward[3315802] = {}
	tWarriorsPromotion_Reward[3315802]["LogId"] = 12001448
	tWarriorsPromotion_Reward[3315802]["DeleteItem"] = {}
	tWarriorsPromotion_Reward[3315802]["DeleteItem"][1] = {}
	tWarriorsPromotion_Reward[3315802]["DeleteItem"][1]["Id"] = 3315802
	tWarriorsPromotion_Reward[3315802]["RewardItem"] = {}
	tWarriorsPromotion_Reward[3315802]["RewardItem"][1] = {}
	tWarriorsPromotion_Reward[3315802]["RewardItem"][1]["Id"] = 3001044 
	tWarriorsPromotion_Reward[3315802]["RewardItem"][1]["Attr"] ="0 1" 
	tWarriorsPromotion_Reward[3315802]["RewardEffect"] = {}
	tWarriorsPromotion_Reward[3315802]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWarriorsPromotion_Reward[3315802]["RewardEffect"]["Effect"] = "angelwing"
	
	tWarriorsPromotion_Reward[3315803] = {}
	tWarriorsPromotion_Reward[3315803]["LogId"] = 12001448
	tWarriorsPromotion_Reward[3315803]["DeleteItem"] = {}
	tWarriorsPromotion_Reward[3315803]["DeleteItem"][1] = {}
	tWarriorsPromotion_Reward[3315803]["DeleteItem"][1]["Id"] = 3315803
	tWarriorsPromotion_Reward[3315803]["RewardItem"] = {}
	tWarriorsPromotion_Reward[3315803]["RewardItem"][1] = {}
	tWarriorsPromotion_Reward[3315803]["RewardItem"][1]["Id"] = 3001045 
	tWarriorsPromotion_Reward[3315803]["RewardItem"][1]["Attr"] = "0 1" 
	tWarriorsPromotion_Reward[3315803]["RewardEffect"] = {}
	tWarriorsPromotion_Reward[3315803]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWarriorsPromotion_Reward[3315803]["RewardEffect"]["Effect"] = "angelwing"
	
	tWarriorsPromotion_Reward[3315804] = {}
	tWarriorsPromotion_Reward[3315804]["LogId"] = 12001448
	tWarriorsPromotion_Reward[3315804]["DeleteItem"] = {}
	tWarriorsPromotion_Reward[3315804]["DeleteItem"][1] = {}
	tWarriorsPromotion_Reward[3315804]["DeleteItem"][1]["Id"] = 3315804
	tWarriorsPromotion_Reward[3315804]["RewardItem"] = {}
	tWarriorsPromotion_Reward[3315804]["RewardItem"][1] = {}
	tWarriorsPromotion_Reward[3315804]["RewardItem"][1]["Id"] = 3005744 
	tWarriorsPromotion_Reward[3315804]["RewardItem"][1]["Attr"] = "0 1" 
	tWarriorsPromotion_Reward[3315804]["RewardEffect"] = {}
	tWarriorsPromotion_Reward[3315804]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWarriorsPromotion_Reward[3315804]["RewardEffect"]["Effect"] = "angelwing"
	
	
	tWarriorsPromotion_Reward[3315752] = {}  --超级流星卷
	tWarriorsPromotion_Reward[3315752]["LogId"] = 10000411
	tWarriorsPromotion_Reward[3315752]["DeleteItem"] = {}
	tWarriorsPromotion_Reward[3315752]["DeleteItem"][1] = {}
	tWarriorsPromotion_Reward[3315752]["DeleteItem"][1]["Id"] = 3315752
	tWarriorsPromotion_Reward[3315752]["RewardItem"] = {}
	tWarriorsPromotion_Reward[3315752]["RewardItem"][1] = {}
	tWarriorsPromotion_Reward[3315752]["RewardItem"][1]["Id"] = 720027
	tWarriorsPromotion_Reward[3315752]["RewardItem"][1]["Attr"] = "0 10"
	tWarriorsPromotion_Reward[3315752]["RewardEffect"] = {}
	tWarriorsPromotion_Reward[3315752]["RewardEffect"]["SzObj"] = "self"
	tWarriorsPromotion_Reward[3315752]["RewardEffect"]["Effect"] = "angelwing"
	
	
	-- ===法印宝盒
	-- ===索引: tWarriorsPromotion_Reward[3316499]
	-- ===删除: 3316499
	tWarriorsPromotion_Reward[3316499] = {}
	tWarriorsPromotion_Reward[3316499]["LogId"] = 12001448
	tWarriorsPromotion_Reward[3316499]["DeleteItem"] = {}
	tWarriorsPromotion_Reward[3316499]["DeleteItem"][1] = {}
	tWarriorsPromotion_Reward[3316499]["DeleteItem"][1]["Id"] = 3316499 -- 【库】ArcaneEssence[属性:9]
	tWarriorsPromotion_Reward[3316499]["RewardItem"] = {}
	tWarriorsPromotion_Reward[3316499]["RewardItem"][1] = {}
	tWarriorsPromotion_Reward[3316499]["RewardItem"][1]["Id"] = 3330063 -- SigilBox[3330063][属性:9][叠加:10000][金币:0], 【表格】法印宝盒
	tWarriorsPromotion_Reward[3316499]["RewardItem"][1]["Attr"] = "0 1" -- SigilBox*1
	tWarriorsPromotion_Reward[3316499]["RewardEffect"] = {}
	tWarriorsPromotion_Reward[3316499]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWarriorsPromotion_Reward[3316499]["RewardEffect"]["Effect"] = "angelwing"


	-- ===高级法印宝盒
	-- ===索引: tWarriorsPromotion_Reward[3316500]
	-- ===删除: 3316500
	tWarriorsPromotion_Reward[3316500] = {}
	tWarriorsPromotion_Reward[3316500]["LogId"] = 12001448
	tWarriorsPromotion_Reward[3316500]["DeleteItem"] = {}
	tWarriorsPromotion_Reward[3316500]["DeleteItem"][1] = {}
	tWarriorsPromotion_Reward[3316500]["DeleteItem"][1]["Id"] = 3316500 -- 【库】SigilBox[属性:9]
	tWarriorsPromotion_Reward[3316500]["RewardItem"] = {}
	tWarriorsPromotion_Reward[3316500]["RewardItem"][1] = {}
	tWarriorsPromotion_Reward[3316500]["RewardItem"][1]["Id"] = 3330064 -- AdvancedSigilBox[3330064][属性:9][叠加:10000][金币:0], 【表格】高级法印宝盒
	tWarriorsPromotion_Reward[3316500]["RewardItem"][1]["Attr"] = "0 1" -- AdvancedSigilBox*1
	tWarriorsPromotion_Reward[3316500]["RewardEffect"] = {}
	tWarriorsPromotion_Reward[3316500]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWarriorsPromotion_Reward[3316500]["RewardEffect"]["Effect"] = "angelwing"


	-- ===秘术精华
	-- ===索引: tWarriorsPromotion_Reward[3316501]
	-- ===删除: 3316501
	tWarriorsPromotion_Reward[3316501] = {}
	tWarriorsPromotion_Reward[3316501]["LogId"] = 12001448
	tWarriorsPromotion_Reward[3316501]["DeleteItem"] = {}
	tWarriorsPromotion_Reward[3316501]["DeleteItem"][1] = {}
	tWarriorsPromotion_Reward[3316501]["DeleteItem"][1]["Id"] = 3316501 -- 【库】AdvancedSigilBox[属性:9]
	tWarriorsPromotion_Reward[3316501]["RewardItem"] = {}
	tWarriorsPromotion_Reward[3316501]["RewardItem"][1] = {}
	tWarriorsPromotion_Reward[3316501]["RewardItem"][1]["Id"] = 3329979 -- ArcaneEssence[3329979][属性:9][叠加:10000][金币:0], 【表格】秘术精华
	tWarriorsPromotion_Reward[3316501]["RewardItem"][1]["Attr"] = "0 1" -- ArcaneEssence*1
	tWarriorsPromotion_Reward[3316501]["RewardEffect"] = {}
	tWarriorsPromotion_Reward[3316501]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWarriorsPromotion_Reward[3316501]["RewardEffect"]["Effect"] = "angelwing"


	
	tWarriorsPromotion_Reward["NinJa"] = {}
	tWarriorsPromotion_Reward["NinJa"]["LogId"] = 12001448
	tWarriorsPromotion_Reward["NinJa"]["RewardItem"] = {}
	tWarriorsPromotion_Reward["NinJa"]["RewardItem"][1] = {}
	tWarriorsPromotion_Reward["NinJa"]["RewardItem"][1]["Id"] = 3316494 
	tWarriorsPromotion_Reward["NinJa"]["RewardItem"][1]["Attr"] = "0 1" 

----------------------------------------逻辑部分----------------------------------------
function WarriorsPromotion_BuyJudge(nItemId,nNpcId)
	local nEvent_1 = tWarriorsPromotion_Stc[1]["Event"]
	local nType_1 = tWarriorsPromotion_Stc[1]["Type"]
	local nEvent_2 = tWarriorsPromotion_Stc[2]["Event"]
	local nType_2 = tWarriorsPromotion_Stc[2]["Type"]
	
	local nNeedEmoney = tWarriorsPromotion_Cont["Emoney"][nItemId]
	local sItemName = Get_ItemtypeName(nItemId)
	
	if Task_ChkStcValue(nEvent_1,nType_1,">",0,nUserId) and Task_ChkStcValue(nEvent_2,nType_2,">",0,nUserId) then
		if not (Task_ChkStcValue(nEvent_1,nType_1,"==",nItemId,nUserId) or Task_ChkStcValue(nEvent_2,nType_2,"==",nItemId,nUserId)) then
			LinkNpcGossipFunc_New(nNpcId,"3-1")
			return
		end
	end
	
	local nEvent_Item = tWarriorsPromotion_Stc[nItemId]["Event"]
	local nType_Item = tWarriorsPromotion_Stc[nItemId]["Type"]
	
	if Task_ChkStatistic(nEvent_Item,nType_Item,nUserId) and Task_ChkStcValue(nEvent_Item,nType_Item,">=",5,nUserId) then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	
	tNpcGossip[24314]["Text411"] = string.format(tWarriorsPromotion_Text[24314]["Text411"],nNeedEmoney,sItemName)
	tNpcGossip[24314]["OptionFunc411"] = "WarriorsPromotion_BuyItem</N>"..nItemId.."</N>"..nNpcId
	LinkNpcGossipFunc_New(nNpcId,"4-1")
	
	
	
end
function WarriorsPromotion_BuyItem(nItemId,nNpcId)
	local nUserId = Get_UserId()
	local nNeedEmoney = tWarriorsPromotion_Cont["Emoney"][nItemId]
	local nUserEmoney = Get_UserEMoney(nUserId)
	
	local nEvent_1 = tWarriorsPromotion_Stc[1]["Event"]
	local nType_1 = tWarriorsPromotion_Stc[1]["Type"]
	local nEvent_2 = tWarriorsPromotion_Stc[2]["Event"]
	local nType_2 = tWarriorsPromotion_Stc[2]["Type"]
	
	local nEvent_Item = tWarriorsPromotion_Stc[nItemId]["Event"]
	local nType_Item = tWarriorsPromotion_Stc[nItemId]["Type"]
	
	if nUserEmoney < nNeedEmoney then
		LinkNpcGossipFunc_New(nNpcId,"5-1")
		return
	end
	--非第一次购买，只加本物品数量掩码
	if Task_ChkStcValue(nEvent_1,nType_1,">",0,nUserId) and Task_ChkStcValue(nEvent_2,nType_2,">",0,nUserId) then
	--增加购买物品掩码
		Task_AddStatistic(nEvent_Item,nType_Item,1,1,nUserId)
		RewardTemplate_UseItemAndMsg(tWarriorsPromotion_BuyItem[nItemId],nUserId)
	else
	--第一次购买，加数量和种类掩码
		if Task_ChkStcValue(nEvent_1,nType_1,"==",nItemId,nUserId) or Task_ChkStcValue(nEvent_2,nType_2,"==",nItemId,nUserId) then
			Task_AddStatistic(nEvent_Item,nType_Item,1,1,nUserId)
			RewardTemplate_UseItemAndMsg(tWarriorsPromotion_BuyItem[nItemId],nUserId)
		else
			if Task_ChkStcValue(nEvent_1,nType_1,">",0,nUserId) then
				Task_SetStatistic(nEvent_2,nType_2,nItemId,1,nUserId)
			else
				Task_SetStatistic(nEvent_1,nType_1,nItemId,1,nUserId)
			end
		
			Task_AddStatistic(nEvent_Item,nType_Item,1,1,nUserId)
			RewardTemplate_UseItemAndMsg(tWarriorsPromotion_BuyItem[nItemId],nUserId)
		end
	end
end

function WarriorsPromotion_GetReward(nItemId,nIndex)
	local nUserId = Get_UserId()
	--若不是打折物品，则直接打开该礼包
	-- local nCutTip = CommonPackage_ExitTicket()
	local nReturnMoney,tMemoryBin,sEmoneyLog,nZhengItemId = CommonPackage_ReturnPrice(nItemId,1)
	local nSpace = RewardTemplate_GetRewardSpace(tWarriorsPromotion_Reward[nItemId][nIndex]) + WarriorsPromotion_JudgeSpace(nItemId)
	
	if tMemoryBin == nil and nReturnMoney == nil then
		if User_CheckLeftSpace(nSpace) then
			if RewardTemplate_UseItemAndMsg(tWarriorsPromotion_Reward[nItemId][nIndex]) then
				WarriorsPromotion_JudgeNinjaItem(nItemId)
			end
		else
			--提示
			Sys_MsgBox(string.format(tPeelingPromotion_Text["MsgSpace"],nSpace))
			return
		end
		return
	end
	-- --判断是否在活动时间内
	if not Sys_ChkFullTime(tActivityTime["BoundCarnival"]["OldActivityTime"]) then
	
		if User_CheckLeftSpace(nSpace) then
		if RewardTemplate_UseItemAndMsg(tWarriorsPromotion_Reward[nItemId][nIndex],nUserId) then
				WarriorsPromotion_JudgeNinjaItem(nItemId)
			end
		else
			--提示
			Sys_MsgBox(string.format(tPeelingPromotion_Text["MsgSpace"],nSpace))
			return 
		end
	else
		
		
		--有返利,给玩家返相应的天石
		-- if nCutTip == 2 then
		local nEmoney = Get_UserEMoney()
		if nEmoney + nReturnMoney > G_User_MaxEmoney then
			User_TalkChannel2005(tMayPKMonth_Text["Item"]["Text121"])
			Sys_MsgBox(tMayPKMonth_Text["Item"]["Text121"])
			return
		end
		-- end
		
		if User_CheckLeftSpace(nSpace) then
			RewardTemplate_UseItemAndMsg(tWarriorsPromotion_Reward[nItemId][nIndex],nUserId)
			--给玩家对应的印记
			-- CommonPackage_LocationYing(nItemId,nCutTip)
		
			--若是玩家有打折卷则给玩家放对应的天石
			-- if nCutTip == 2  then
				--给对应的天石
			if CommonPackage_DeleteTicket(nZhengItemId,nItemId) and User_AddEMoney(nReturnMoney) then
				Sys_SaveEmoneyBuy(string.format(sEmoneyLog,nReturnMoney,nReturnMoney))
			end
			-- end
		else
			User_TalkChannel2005(string.format(tRewardTemplate_Text["NoSpace"],nSpace))
			Sys_MsgBox(string.format(tRewardTemplate_Text["NoSpace"],nSpace))	
		end
		
	end

	-- local nUserId = Get_UserId()
	-- local nSpace = RewardTemplate_GetRewardSpace(tWarriorsPromotion_Reward[nItemId][nIndex]) + WarriorsPromotion_JudgeSpace(nItemId)
	-- if User_CheckLeftSpace(nSpace) then
		-- if RewardTemplate_UseItemAndMsg(tWarriorsPromotion_Reward[nItemId][nIndex],nUserId) then
			-- WarriorsPromotion_JudgeNinjaItem(nItemId)
		-- end
	-- else
		-- --提示
		-- Sys_MsgBox(string.format(tPeelingPromotion_Text["MsgSpace"],nSpace))
		-- return 
	-- end
end

function WarriorsPromotion_GetXuanBao(nItemId)
	local nAttrNum = math.random(tWarriorsPromotion_Cont["AttributeNumMin"],tWarriorsPromotion_Cont["AttributeNumMax"])
	local nSpace =  WarriorsPromotion_JudgeSpace(nItemId) + 1
	if User_CheckLeftSpace(nSpace) then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId)then
			local nXuanBaoId,nItem = Xuanbao_Reward(0,0,10,0,0,4,0,0,nAttrNum)
			WarriorsPromotion_JudgeNinjaItem(nItemId)
			if nXuanBaoId ~= 0 then
				local sItemName = Get_ItemtypeName(nXuanBaoId)
				local sContent = string.format(tWarriorsPromotion_Text["GetXuanBao"],sItemName)
				User_TalkChannel2005(sContent)
				User_TalkChannel2005(sContent)
				
				local sStr1 = Get_ItemData1(nItem)
				local sStr2 = Get_ItemData2(nItem)
				local sStr3 = Get_ItemData3(nItem)
				local sStr4 = Get_ItemData4(nItem)
				local sStr5 = Get_ItemData5(nItem)
				local sAttr = nXuanBaoId .. "{" .. sStr1 .. "&" .. sStr2 .. "&" .. sStr3 .. "&" .. sStr4 .. "&" .. sStr5 .. "}"
				local sLog = string.format(tWarriorsPromotion_Log["Log"]["GetXuanBao"],nItemId,sAttr)
				Sys_SaveActionFestivalLog(sLog)
				User_EffectAdd("self","zf2-e128")
			end
		end
	else
		--提示
		Sys_MsgBox(string.format(tPeelingPromotion_Text["MsgSpace"],nSpace))
		return 
	end
		
		
end
--上交暑假惊喜券
function WarriorsPromotion_SubmitTicket(nIndex,nNpcId)
	local nWarriorsPromotion_UserId = Get_UserId()
	local nItemId = tWarriorsPromotion_Cont["SubmitItem"]
	local nSubmitNum = nIndex
	--玩家拥有总数
	local nUserItemNum = Get_CountItemType(nItemId,0)
	--nIndex：2 上交全部
	if nIndex == 2 then 
		nSubmitNum = nUserItemNum
	end

	--活动时间
	if not Sys_ChkFullTime(tActivityTime["BoundCarnival"]["ActivityTime"]) then
		return
	end
	--物品不足
	if nUserItemNum < nSubmitNum then
		Sys_MsgBox(tWarriorsPromotion_Text["NoItem"])
		return
	end
	
	if Item_ChkMulItem(nItemId,nItemId,nSubmitNum) and Item_DelMulItem(nItemId,nItemId,nSubmitNum) then
		local nEvent = tWarriorsPromotion_Stc[4]["Event"]
		local nType = tWarriorsPromotion_Stc[4]["Type"]
		--加掩码 打log
		Task_AddStatistic(nEvent,nType,nSubmitNum,1)
		Sys_SaveActionFestivalLog(string.format(tWarriorsPromotion_Log["Log"]["DelItem"],nItemId,nSubmitNum))
		--出提示
		-- tNpcGossip[24314]["Text811"] = string.format(tWarriorsPromotion_Text[24314]["Text811"] ,nSubmitNum)
		-- LinkNpcGossipFunc_New(nNpcId,"8-1")
		local sWarriorsPromotion_Msg = string.format(tWarriorsPromotion_Text["MsgBox"] ,nSubmitNum)
		Sys_MsgBox(sWarriorsPromotion_Msg,nil,nil,nWarriorsPromotion_UserId)
	end
	
end
--打开暑期英豪榜
function WarriorsPromotion_OpenWeb()
	local nUserId = Get_UserId()
	
	if not Sys_ChkFullTime(tActivityTime["BoundCarnival"]["ActivityTime"]) then
		return
	end
	--打开网页
	User_SendWebPage(tWarriorsPromotion_Cont["Web"],nUserId)

end
--打开忍者相关物品可以获得徽章
function WarriorsPromotion_JudgeNinjaItem(nItemId)
	-- local nWarriorsPromotion_UserId = Get_UserId()
	
	-- if not Sys_ChkFullTime(tActivityTime["BoundCarnival"]["ActivityTime"]) then
		-- return
	-- end
	-- local nWarriorsPromotion_GetItemNum = Get_ItemtypeEmoneyPrice(nItemId)
	-- local nWarriorsPromotion_EmoneyMono = Get_ItemtypeEmoneyMonoPrice(nItemId)
	-- if nWarriorsPromotion_EmoneyMono ~=nil and nWarriorsPromotion_EmoneyMono ~= 0 then
		-- return
	-- end
	-- for i,v in pairs(tWarriorsPromotion_Cont["NinJa"]) do 
		 -- if nItemId == v then
			-- nWarriorsPromotion_GetItemNum = math.floor(nWarriorsPromotion_GetItemNum * 1.5)
		-- end
	-- end
	-- if nWarriorsPromotion_GetItemNum == nil or nWarriorsPromotion_GetItemNum== 0 then
		-- return
	-- end
	
	
	-- local tWarriorsPromotion_Award = CommonFunc_Copy(tWarriorsPromotion_Reward["NinJa"])
	-- tWarriorsPromotion_Award["RewardItem"][1]["Attr"] = "0 "..nWarriorsPromotion_GetItemNum
	-- RewardTemplate_UseItemAndMsg(tWarriorsPromotion_Award)
	return true
	
end
function WarriorsPromotion_JudgeSpace(nItemId)
	-- if not Sys_ChkFullTime(tActivityTime["BoundCarnival"]["ActivityTime"]) then
		-- return 0
	-- end
	-- local nWarriorsPromotion_Space = 1
	-- local nWarriorsPromotion_GetItemNum = Get_ItemtypeEmoneyPrice(nItemId)
	-- local nWarriorsPromotion_EmoneyMono = Get_ItemtypeEmoneyMonoPrice(nItemId)
	-- if nWarriorsPromotion_EmoneyMono ~= nil and nWarriorsPromotion_EmoneyMono ~= 0 then
		-- nWarriorsPromotion_Space = 0
		-- return nWarriorsPromotion_Space
	-- end
	-- for i,v in pairs(tWarriorsPromotion_Cont["NinJa"]) do 
		 -- if nItemId == v then
			-- nWarriorsPromotion_GetItemNum = math.floor(nWarriorsPromotion_GetItemNum * 1.5)
		-- end
	-- end
	-- if nWarriorsPromotion_GetItemNum == nil or nWarriorsPromotion_GetItemNum== 0 then
		-- nWarriorsPromotion_Space = 0
	-- end
	
	
	-- 背包空间不足
	-- if nWarriorsPromotion_GetItemNum > 10000 then
		-- nWarriorsPromotion_Space = math.ceil(nWarriorsPromotion_GetItemNum/10000)
	-- end
	-- return nWarriorsPromotion_Space
	return 0
	
end
function WarriorsPromotion_OpenNewWeb()
	local nWarriorsPromotion_UserId = Get_UserId()
	
	if not Sys_ChkFullTime(tActivityTime["NewcomersCarnivalEnvoy"]["ActivityTime"]) then
		return
	end
	--打开网页
	User_SendWebPage(tWarriorsPromotion_Cont["WebNew"],nWarriorsPromotion_UserId)
end
----------------------------------------物品配置---------------------------------
--暑期抽奖券
tItem[3316494] = tItem[3316494] or {}
tItem[3316494]["Function"] = function(nItemId,sItemName)
	if Sys_ChkFullTime(tActivityTime["BoundCarnival"]["OldActivityTime"]) then
		NpcPosition_PathFind(26705)
	else
		Item_DelAllItemByType(nItemId)
	end
end

tItem[3321817] = tItem[3321817] or {}
tItem[3321817]["DialogueText"]=tWarriorsPromotion_Text[3321817]
tItem[3321817]["Text1-1"]={111}
tItem[3321817]["tOption1-1"]={1,2}
tItem[3321817]["OptionFunc1"] = "WarriorsPromotion_GetReward</N>3321817</N>1"
tItem[3321817]["OptionFunc2"] = "WarriorsPromotion_GetReward</N>3321817</N>2"

tItem[3321818] = tItem[3321818] or {}
tItem[3321818]["DialogueText"]=tWarriorsPromotion_Text[3321818]
tItem[3321818]["Text1-1"]={111}
tItem[3321818]["tOption1-1"]={1,2,3}
tItem[3321818]["OptionFunc1"] = "WarriorsPromotion_GetReward</N>3321818</N>1"
tItem[3321818]["OptionFunc2"] = "WarriorsPromotion_GetReward</N>3321818</N>2"
tItem[3321818]["OptionFunc3"] = "WarriorsPromotion_GetReward</N>3321818</N>3"
tItem[3321819] = tItem[3321819] or {}
tItem[3321819]["DialogueText"]=tWarriorsPromotion_Text[3321819]
tItem[3321819]["Text1-1"]={111}
tItem[3321819]["tOption1-1"]={1,2,3}
tItem[3321819]["OptionFunc1"] = "WarriorsPromotion_GetReward</N>3321819</N>1"
tItem[3321819]["OptionFunc2"] = "WarriorsPromotion_GetReward</N>3321819</N>2"
tItem[3321819]["OptionFunc3"] = "WarriorsPromotion_GetReward</N>3321819</N>3"
tItem[3321820] = tItem[3321820] or {}
tItem[3321820]["DialogueText"]=tWarriorsPromotion_Text[3321820]
tItem[3321820]["Text1-1"]={111}
tItem[3321820]["tOption1-1"]={1,2,3}
tItem[3321820]["OptionFunc1"] = "WarriorsPromotion_GetReward</N>3321820</N>1"
tItem[3321820]["OptionFunc2"] = "WarriorsPromotion_GetReward</N>3321820</N>2"
tItem[3321820]["OptionFunc3"] = "WarriorsPromotion_GetReward</N>3321820</N>3"

--神器礼盒
tItem[3321815] = tItem[3321815] or {}
tItem[3321815]["Function"] = function(nItemId,sItemName)
	WarriorsPromotion_GetXuanBao(nItemId)
end
--暑期抽奖券
tItem[3313144] = tItem[3313144] or {}
tItem[3313144]["Function"] = function(nItemId,sItemName)
	NpcPosition_PathFind(24314)
end

--忍者觉醒徽章
tItem[3315653] = tItem[3315653] or {}
tItem[3315653]["Function"] = function(nItemId,sItemName)
	if Sys_ChkFullTime(tActivityTime["BoundCarnival"]["OldActivityTime"]) then
		NpcPosition_PathFind(26032)
	else
		Item_DelAllItemByType(nItemId)
	end
end
tItem[3321807] = tItem[3321807] or {}
tItem[3321807]["Function"] = function(nItemId,sItemName)
	--判断物品
	if not Item_ChkMulItem(nItemId,nItemId,1) then
		return
	end
	
	--若不是打折物品，则直接打开该礼包
	-- local nCutTip = CommonPackage_ExitTicket()
	local nReturnMoney,tMemoryBin,sEmoneyLog,nZhengItemId = CommonPackage_ReturnPrice(nItemId,1)
	local nSpace = RewardTemplate_GetRewardSpace(tWarriorsPromotion_Reward[nItemId])+ WarriorsPromotion_JudgeSpace(nItemId)
	
	if tMemoryBin == nil and nReturnMoney == nil then
		if User_CheckLeftSpace(nSpace) then
			if RewardTemplate_UseItemAndMsg(tWarriorsPromotion_Reward[nItemId]) then
				WarriorsPromotion_JudgeNinjaItem(nItemId)
			end
		else
			--提示
			Sys_MsgBox(string.format(tPeelingPromotion_Text["MsgSpace"],nSpace))
			return
		end
		return
	end
	--判断是否在活动时间内
	if not Sys_ChkFullTime(tActivityTime["BoundCarnival"]["OldActivityTime"]) then
		RewardTemplate_UseItemAndMsg(tWarriorsPromotion_Reward[nItemId])
	else
		--有返利,给玩家返相应的天石
		-- if nCutTip == 2 then
		local nEmoney = Get_UserEMoney()
		if nEmoney + nReturnMoney > G_User_MaxEmoney then
			User_TalkChannel2005(tMayPKMonth_Text["Item"]["Text121"])
			Sys_MsgBox(tMayPKMonth_Text["Item"]["Text121"])
			return
		end
		-- end
		
		if User_CheckLeftSpace(nSpace) then
			RewardTemplate_UseItemAndMsg(tWarriorsPromotion_Reward[nItemId])
			--给玩家对应的印记
			-- CommonPackage_LocationYing(nItemId,nCutTip)
		
			--若是玩家有打折卷则给玩家放对应的天石
			-- if nCutTip == 2  then
				--给对应的天石
			if CommonPackage_DeleteTicket(nZhengItemId,nItemId) and  User_AddEMoney(nReturnMoney) then
				Sys_SaveEmoneyBuy(string.format(sEmoneyLog,nReturnMoney,nReturnMoney))
			end
			-- end
		else
			User_TalkChannel2005(string.format(tRewardTemplate_Text["NoSpace"],nSpace))
			Sys_MsgBox(string.format(tRewardTemplate_Text["NoSpace"],nSpace))
		end
		
	end
	-- local nWarriorsPromotion_Space = RewardTemplate_GetRewardSpace(tWarriorsPromotion_Reward[nItemId]) + WarriorsPromotion_JudgeSpace(nItemId)
	-- if User_CheckLeftSpace(nWarriorsPromotion_Space) then
		-- if RewardTemplate_UseItemAndMsg(tWarriorsPromotion_Reward[nItemId]) then
			-- WarriorsPromotion_JudgeNinjaItem(nItemId)
		-- end
	-- else
	-- 提示
		-- Sys_MsgBox(string.format(tPeelingPromotion_Text["MsgSpace"],nWarriorsPromotion_Space))
		-- return 
	-- end
end
tItem[3321808] = tItem[3321807]
tItem[3321809] = tItem[3321807]
tItem[3321810] = tItem[3321807]
tItem[3321811] = tItem[3321807]
tItem[3321813] = tItem[3321807]
tItem[3321814] = tItem[3321807]
tItem[3321816] = tItem[3321807]

tItem[3321821] = tItem[3321807]


tItem[3321822] = tItem[3321822] or {}
tItem[3321822]["Function"] = function(nItemId,sItemName)
	--判断物品
	if not Item_ChkMulItem(nItemId,nItemId,1) then
		return
	end
	
	--若不是打折物品，则直接打开该礼包
	-- local nCutTip = CommonPackage_ExitTicket()
	local nReturnMoney,tMemoryBin,sEmoneyLog,nZhengItemId = CommonPackage_ReturnPrice(nItemId,2)
	local nSpace = RewardTemplate_GetRewardSpace(tWarriorsPromotion_Reward[nItemId])
	
	if tMemoryBin == nil and nReturnMoney == nil then
		if User_CheckLeftSpace(nSpace) then
			if RewardTemplate_UseItemAndMsg(tWarriorsPromotion_Reward[nItemId]) then
				WarriorsPromotion_JudgeNinjaItem(nItemId)
			end
		else
			--提示
			Sys_MsgBox(string.format(tPeelingPromotion_Text["MsgSpace"],nSpace))
			return
		end
		return
	end
	--判断是否在活动时间内
	if not Sys_ChkFullTime(tActivityTime["BoundCarnival"]["OldActivityTime"]) then
		RewardTemplate_UseItemAndMsg(tWarriorsPromotion_Reward[nItemId])
	else
		
		--有返利,给玩家返相应的天石
		-- if nCutTip == 2 then
		local nEmoney = Get_UserMonoEMoney()
		if nEmoney + nReturnMoney > G_User_MaxEmoneyMono then
			User_TalkChannel2005(tMayPKMonth_Text["Item"]["Text141"])
			Sys_MsgBox(tMayPKMonth_Text["Item"]["Text141"])
			return
		end
		-- end
		
		if User_CheckLeftSpace(nSpace) then
			RewardTemplate_UseItemAndMsg(tWarriorsPromotion_Reward[nItemId])
			--给玩家对应的印记
			-- CommonPackage_LocationYing(nItemId,nCutTip)
		
			--若是玩家有打折卷则给玩家放对应的天石
			-- if nCutTip == 2  then
				--给对应的天石
			if CommonPackage_DeleteTicket(nZhengItemId,nItemId) and  User_AddEMoneyMono(nReturnMoney) then
				Sys_SaveEmoneyBuy(string.format(sEmoneyLog,nReturnMoney))
			end
			-- end
		else
			User_TalkChannel2005(string.format(tRewardTemplate_Text["NoSpace"],nSpace))
			Sys_MsgBox(string.format(tRewardTemplate_Text["NoSpace"],nSpace))
		end
		
	end
	-- local nWarriorsPromotion_Space = RewardTemplate_GetRewardSpace(tWarriorsPromotion_Reward[nItemId]) + WarriorsPromotion_JudgeSpace(nItemId)
	-- if User_CheckLeftSpace(nWarriorsPromotion_Space) then
		-- if RewardTemplate_UseItemAndMsg(tWarriorsPromotion_Reward[nItemId]) then
			-- WarriorsPromotion_JudgeNinjaItem(nItemId)
		-- end
	-- else
	-- 提示
		-- Sys_MsgBox(string.format(tPeelingPromotion_Text["MsgSpace"],nWarriorsPromotion_Space))
		-- return 
	-- end
end

tItem[3321824] = tItem[3321822]
tItem[3315683] = tItem[3321822]
tItem[3315684] = tItem[3321822]
tItem[3315685] = tItem[3321822]
tItem[3315686] = tItem[3321822]
tItem[3315687] = tItem[3321822]
tItem[3315688] = tItem[3321822]

tItem[3321823] = tItem[3321807]
tItem[3312890] = tItem[3321807]
tItem[3312891] = tItem[3321807]
tItem[3312892] = tItem[3321807]
tItem[3312893] = tItem[3321807]
tItem[3312894] = tItem[3321807]
tItem[3312895] = tItem[3321807]
tItem[3312896] = tItem[3321807]
tItem[3312897] = tItem[3321807]
tItem[3312905] = tItem[3321807]
tItem[3312906] = tItem[3321807]
tItem[3312907] = tItem[3321807]
tItem[3312908] = tItem[3321807]
tItem[3312909] = tItem[3321807]
tItem[3312910] = tItem[3321807]
tItem[3313145] = tItem[3321807]

--------------------------------新年促销新增装备
tItem[3315087] = tItem[3321807]
tItem[3315088] = tItem[3321807]
tItem[3315089] = tItem[3321807]
tItem[3315090] = tItem[3321807]
tItem[3315091] = tItem[3321807]
tItem[3315092] = tItem[3321807]
tItem[3315093] = tItem[3321807]
tItem[3315094] = tItem[3321807]
tItem[3315095] = tItem[3321807]
tItem[3315096] = tItem[3321807]
tItem[3315097] = tItem[3321807]
tItem[3315098] = tItem[3321807]
tItem[3315099] = tItem[3321807]
tItem[3315100] = tItem[3321807]
tItem[3315101] = tItem[3321807]
tItem[3315102] = tItem[3321807]
tItem[3315103] = tItem[3321807]
tItem[3315104] = tItem[3321807]
tItem[3315105] = tItem[3321807]
tItem[3315106] = tItem[3321807]
tItem[3315107] = tItem[3321807]
tItem[3315108] = tItem[3321807]
tItem[3315109] = tItem[3321807]
tItem[3315110] = tItem[3321807]
tItem[3315111] = tItem[3321807]
tItem[3315112] = tItem[3321807]
tItem[3315113] = tItem[3321807]
tItem[3315114] = tItem[3321807]
tItem[3315115] = tItem[3321807]
tItem[3315116] = tItem[3321807]
tItem[3315117] = tItem[3321807]
tItem[3315118] = tItem[3321807]
tItem[3315119] = tItem[3321807]
tItem[3315120] = tItem[3321807]
tItem[3315121] = tItem[3321807]
tItem[3315122] = tItem[3321807]
tItem[3315123] = tItem[3321807]
tItem[3315124] = tItem[3321807]
tItem[3315125] = tItem[3321807]
tItem[3315126] = tItem[3321807]
tItem[3315127] = tItem[3321807]
tItem[3315128] = tItem[3321807]
tItem[3315129] = tItem[3321807]
tItem[3315130] = tItem[3321807]
tItem[3315131] = tItem[3321807]
tItem[3315132] = tItem[3321807]
tItem[3315133] = tItem[3321807]
tItem[3315134] = tItem[3321807]
tItem[3315135] = tItem[3321807]
tItem[3315136] = tItem[3321807]
tItem[3315137] = tItem[3321807]
tItem[3315138] = tItem[3321807]
tItem[3315139] = tItem[3321807]
tItem[3315140] = tItem[3321807]
tItem[3315141] = tItem[3321807]
tItem[3315142] = tItem[3321807]
tItem[3315143] = tItem[3321807]
tItem[3315144] = tItem[3321807]
tItem[3315145] = tItem[3321807]
tItem[3315146] = tItem[3321807]
tItem[3315147] = tItem[3321807]
tItem[3315148] = tItem[3321807]
tItem[3315149] = tItem[3321807]
tItem[3315150] = tItem[3321807]
tItem[3315151] = tItem[3321807]
tItem[3315152] = tItem[3321807]
tItem[3315153] = tItem[3321807]
tItem[3315154] = tItem[3321807]
tItem[3315155] = tItem[3321807]
tItem[3315156] = tItem[3321807]
tItem[3315157] = tItem[3321807]
tItem[3315158] = tItem[3321807]
tItem[3315159] = tItem[3321807]
tItem[3315160] = tItem[3321807]
tItem[3315161] = tItem[3321807]
tItem[3315162] = tItem[3321807]
tItem[3315163] = tItem[3321807]
tItem[3315164] = tItem[3321807]
tItem[3315165] = tItem[3321807]
tItem[3315166] = tItem[3321807]
tItem[3315167] = tItem[3321807]
tItem[3315168] = tItem[3321807]
tItem[3315169] = tItem[3321807]
tItem[3315170] = tItem[3321807]
tItem[3315171] = tItem[3321807]
tItem[3315172] = tItem[3321807]
tItem[3315173] = tItem[3321807]
tItem[3315174] = tItem[3321807]
tItem[3315175] = tItem[3321807]
tItem[3315176] = tItem[3321807]
tItem[3315177] = tItem[3321807]
tItem[3315178] = tItem[3321807]
tItem[3315179] = tItem[3321807]
tItem[3315180] = tItem[3321807]
tItem[3315181] = tItem[3321807]
tItem[3315182] = tItem[3321807]
tItem[3315183] = tItem[3321807]
tItem[3315184] = tItem[3321807]
tItem[3315185] = tItem[3321807]
tItem[3315186] = tItem[3321807]
tItem[3315187] = tItem[3321807]
tItem[3315188] = tItem[3321807]
tItem[3315189] = tItem[3321807]
tItem[3315190] = tItem[3321807]
tItem[3315191] = tItem[3321807]
tItem[3315192] = tItem[3321807]
tItem[3315193] = tItem[3321807]
tItem[3315194] = tItem[3321807]
tItem[3315195] = tItem[3321807]
tItem[3315196] = tItem[3321807]
tItem[3315197] = tItem[3321807]
tItem[3315198] = tItem[3321807]
tItem[3315199] = tItem[3321807]
tItem[3315200] = tItem[3321807]
tItem[3315201] = tItem[3321807]
tItem[3315202] = tItem[3321807]
tItem[3315203] = tItem[3321807]
tItem[3315204] = tItem[3321807]
tItem[3315205] = tItem[3321807]
tItem[3315206] = tItem[3321807]
tItem[3315207] = tItem[3321807]
tItem[3315208] = tItem[3321807]
tItem[3315209] = tItem[3321807]
tItem[3315210] = tItem[3321807]
tItem[3315211] = tItem[3321807]
tItem[3315212] = tItem[3321807]
tItem[3315213] = tItem[3321807]
tItem[3315214] = tItem[3321807]
tItem[3315215] = tItem[3321807]
tItem[3315216] = tItem[3321807]
tItem[3315217] = tItem[3321807]
tItem[3315218] = tItem[3321807]
tItem[3315219] = tItem[3321807]
tItem[3315220] = tItem[3321807]
tItem[3315221] = tItem[3321807]
tItem[3315222] = tItem[3321807]
tItem[3315223] = tItem[3321807]
tItem[3315224] = tItem[3321807]
tItem[3315225] = tItem[3321807]
tItem[3315226] = tItem[3321807]
tItem[3315227] = tItem[3321807]
tItem[3315228] = tItem[3321807]
tItem[3315229] = tItem[3321807]
tItem[3315230] = tItem[3321807]
tItem[3315231] = tItem[3321807]
tItem[3315232] = tItem[3321807]
tItem[3315233] = tItem[3321807]
tItem[3315234] = tItem[3321807]
tItem[3315235] = tItem[3321807]
tItem[3315236] = tItem[3321807]
tItem[3315237] = tItem[3321807]
tItem[3315238] = tItem[3321807]
tItem[3315239] = tItem[3321807]
tItem[3315240] = tItem[3321807]
tItem[3315241] = tItem[3321807]
tItem[3315242] = tItem[3321807]
tItem[3315243] = tItem[3321807]
tItem[3315244] = tItem[3321807]
tItem[3315245] = tItem[3321807]
tItem[3315246] = tItem[3321807]
tItem[3315247] = tItem[3321807]

tItem[3315383] = tItem[3321807]
tItem[3315384] = tItem[3321807]
tItem[3315385] = tItem[3321807]
tItem[3315386] = tItem[3321807]
tItem[3315387] = tItem[3321807]
tItem[3315388] = tItem[3321807]
tItem[3315389] = tItem[3321807]
tItem[3315390] = tItem[3321807]
tItem[3315391] = tItem[3321807]
tItem[3315392] = tItem[3321807]

tItem[3315689] = tItem[3321807]
tItem[3315690] = tItem[3321807]

tItem[3315796] = tItem[3321807]
tItem[3315797] = tItem[3321807]
tItem[3315798] = tItem[3321807]
tItem[3315799] = tItem[3321807]
tItem[3315800] = tItem[3321807]
tItem[3315801] = tItem[3321807]
tItem[3315802] = tItem[3321807]
tItem[3315803] = tItem[3321807]
tItem[3315804] = tItem[3321807]
tItem[3315752] = tItem[3321807]
tItem[3316499] = tItem[3321807]
tItem[3316500] = tItem[3321807]
tItem[3316501] = tItem[3321807]


----------------------------------------NPC配置------------------------------------------------
tNpcFace[2420]=119
tNpcGossip[26068]=tNpcGossip[26068]	or	DefaultNpc:new{}
tNpcGossip[26068]["OptionHidden"]=1
tNpcGossip[26068]["DialogueText"]=tWarriorsPromotion_Text[26068]
tNpcGossip[26068]["Text1-1"]={111,112,113}
tNpcGossip[26068]["tOption1-1"]={111}
tNpcGossip[26068]["OptionFunc111"] = "WarriorsPromotion_OpenNewWeb"


tNpcFace[6212]=119
tNpcGossip[24314]=tNpcGossip[24314]	or	DefaultNpc:new{}
tNpcGossip[24314]["OptionHidden"]=1
tNpcGossip[24314]["DialogueText"]=tWarriorsPromotion_Text[24314]


tNpcGossip[24314]["Text1-1"]={111,112,113,114,115,116,117,118,119,1110,1111,1112}
tNpcGossip[24314]["tOption1-1"]={117,118,111,112,113,114,115,116}
tNpcGossip[24314]["OptionChkFunc111"] = function()
	local nEvent = tWarriorsPromotion_Stc[3321807]["Event"]
	local nType = tWarriorsPromotion_Stc[3321807]["Type"]
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId)
	
	tNpcGossip[24314]["Option111"] = string.format(tWarriorsPromotion_Text[24314]["Option111"],nData)
	return true
end
tNpcGossip[24314]["OptionChkFunc112"] = function()
	local nEvent = tWarriorsPromotion_Stc[3321808]["Event"]
	local nType = tWarriorsPromotion_Stc[3321808]["Type"]
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId) or 0
	tNpcGossip[24314]["Option112"] = string.format(tWarriorsPromotion_Text[24314]["Option112"],nData)
	return true
end
tNpcGossip[24314]["OptionChkFunc113"] = function()
	local nEvent = tWarriorsPromotion_Stc[3321809]["Event"]
	local nType = tWarriorsPromotion_Stc[3321809]["Type"]
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId) or 0
	tNpcGossip[24314]["Option113"] = string.format(tWarriorsPromotion_Text[24314]["Option113"],nData)
	return true
end
tNpcGossip[24314]["OptionChkFunc114"] = function()
	local nEvent = tWarriorsPromotion_Stc[3321810]["Event"]
	local nType = tWarriorsPromotion_Stc[3321810]["Type"]
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId) or 0
	tNpcGossip[24314]["Option114"] = string.format(tWarriorsPromotion_Text[24314]["Option114"],nData)
	return true
end
tNpcGossip[24314]["OptionChkFunc115"] = function()
	local nEvent = tWarriorsPromotion_Stc[3321811]["Event"]
	local nType = tWarriorsPromotion_Stc[3321811]["Type"]
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId) or 0
	tNpcGossip[24314]["Option115"] = string.format(tWarriorsPromotion_Text[24314]["Option115"],nData)
	return true
end
tNpcGossip[24314]["OptionChkFunc116"] = function()
	local nEvent = tWarriorsPromotion_Stc[3313145]["Event"]
	local nType = tWarriorsPromotion_Stc[3313145]["Type"]
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId) or 0
	tNpcGossip[24314]["Option116"] = string.format(tWarriorsPromotion_Text[24314]["Option116"],nData)
	return true
end

tNpcGossip[24314]["OptionFunc111"] = "WarriorsPromotion_BuyJudge</N>3321807</N>24314"
tNpcGossip[24314]["OptionFunc112"] = "WarriorsPromotion_BuyJudge</N>3321808</N>24314"
tNpcGossip[24314]["OptionFunc113"] = "WarriorsPromotion_BuyJudge</N>3321809</N>24314"
tNpcGossip[24314]["OptionFunc114"] = "WarriorsPromotion_BuyJudge</N>3321810</N>24314"
tNpcGossip[24314]["OptionFunc115"] = "WarriorsPromotion_BuyJudge</N>3321811</N>24314"
tNpcGossip[24314]["OptionFunc116"] = "WarriorsPromotion_BuyJudge</N>3313145</N>24314"

tNpcGossip[24314]["OptionPoint117"] = "6-1"
tNpcGossip[24314]["OptionFunc118"] = "WarriorsPromotion_OpenWeb"


--购买超过两种
tNpcGossip[24314]["Text2-1"]={211,212}
tNpcGossip[24314]["tOption2-1"]={211}
--购买超过五个
tNpcGossip[24314]["Text3-1"]={311,312}
tNpcGossip[24314]["tOption3-1"]={311}

--购买超过五个
tNpcGossip[24314]["Text4-1"]={411,412}
tNpcGossip[24314]["tOption4-1"]={411,412}

tNpcGossip[24314]["Text5-1"]={511,512}
tNpcGossip[24314]["tOption5-1"]={511}


--上交暑假惊喜券
tNpcGossip[24314]["Text6-1"]={611,612}
tNpcGossip[24314]["tOption6-1"]={611,612,613,614}

tNpcGossip[24314]["OptionFunc611"] = "WarriorsPromotion_SubmitTicket</N>1</N>24314"
tNpcGossip[24314]["OptionFunc612"] = "WarriorsPromotion_SubmitTicket</N>5</N>24314"
tNpcGossip[24314]["OptionFunc613"] = "WarriorsPromotion_SubmitTicket</N>10</N>24314"
tNpcGossip[24314]["OptionFunc614"] = "WarriorsPromotion_SubmitTicket</N>2</N>24314"

--数量不足
tNpcGossip[24314]["Text7-1"]={711}
tNpcGossip[24314]["tOption7-1"]={711}

--上交成功
tNpcGossip[24314]["Text8-1"]={811}
tNpcGossip[24314]["tOption8-1"]={811}
tNpcGossip[24314]["OptionPoint811"] = "1"

-----------------------------------------------------------------------------------------------
tNpcFace[5739]=119
tNpcGossip[26032]=tNpcGossip[26032]	or	DefaultNpc:new{}
tNpcGossip[26032]["OptionHidden"]=1
tNpcGossip[26032]["DialogueText"]=tWarriorsPromotion_Text[26032]


tNpcGossip[26032]["Text1-1"]={111,112,113}
tNpcGossip[26032]["tOption1-1"]={111}
tNpcGossip[26032]["ChkFunc1-1"] = function()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["BoundCarnival"]["OldActivityTime"]) 
end

-- 活动后
tNpcGossip[26032]["Text1-2"] = {111,112,121}
tNpcGossip[26032]["tOption1-2"] = {121}
tNpcGossip[26032]["ChkFunc1-2"] = function ()
	return not Sys_ChkFullTime(tActivityTime["BoundCarnival"]["OldActivityTime"])
end

--上交觉醒徽章
tNpcGossip[26032]["Text1-3"]={131,132,133,134}
tNpcGossip[26032]["tOption1-3"]={131,132}
tNpcGossip[26032]["OptionPoint131"] ="2-1"
tNpcGossip[26032]["OptionFunc132"] =  "WarriorsPromotion_OpenWeb"

tNpcGossip[26032]["Text2-1"]={211}
tNpcGossip[26032]["tOption2-1"]={211,212,213,214}


tNpcGossip[26032]["OptionFunc211"] = "WarriorsPromotion_SubmitTicket</N>1</N>26032"
tNpcGossip[26032]["OptionFunc212"] = "WarriorsPromotion_SubmitTicket</N>5</N>26032"
tNpcGossip[26032]["OptionFunc213"] = "WarriorsPromotion_SubmitTicket</N>10</N>26032"
tNpcGossip[26032]["OptionFunc214"] = "WarriorsPromotion_SubmitTicket</N>2</N>26032 "

--觉醒徽章不足
tNpcGossip[26032]["Text3-1"]={311,312}
tNpcGossip[26032]["tOption3-1"]={311}
-----------------------------------------------------------------------------------------------
tNpcFace[5021]=119
tNpcGossip[26705]=tNpcGossip[26705]	or	DefaultNpc:new{}
tNpcGossip[26705]["OptionHidden"]=1
tNpcGossip[26705]["DialogueText"]=tWarriorsPromotion_Text[26705]

--活动前
tNpcGossip[26705]["Text1-1"]={111,112,113}
tNpcGossip[26705]["tOption1-1"]={111}
tNpcGossip[26705]["ChkFunc1-1"] = function()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["BoundCarnival"]["ActivityTime"]) 
end

-- 活动中
tNpcGossip[26705]["Text1-2"]={121,122}
tNpcGossip[26705]["tOption1-2"]={121,122}
tNpcGossip[26705]["OptionPoint121"] = "2-1"
tNpcGossip[26705]["OptionFunc122"] = "WarriorsPromotion_OpenWeb"

-- 上交暑期惊喜券
tNpcGossip[26705]["Text2-1"]={211}
tNpcGossip[26705]["tOption2-1"]={211,212,213,214}
tNpcGossip[26705]["OptionFunc211"] = "WarriorsPromotion_SubmitTicket</N>1</N>26032"
tNpcGossip[26705]["OptionFunc212"] = "WarriorsPromotion_SubmitTicket</N>5</N>26032"
tNpcGossip[26705]["OptionFunc213"] = "WarriorsPromotion_SubmitTicket</N>10</N>26032"
tNpcGossip[26705]["OptionFunc214"] = "WarriorsPromotion_SubmitTicket</N>2</N>26032 "
