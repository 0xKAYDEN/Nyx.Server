------------------------------------------------------------------------------------
--Name：            180822[简体征服][活动脚本]烦请制作9月份神笔马良促活活动线上部分内容
--Creator:      杨艳
--Created:     2018/08/22
------------------------------------------------------------------------------------


--命名前缀
--ShenLiangMaLiangOnLineAct_

--logid： 12001147

-- cq_dyna_global_data id : 52945 data0全服限量浅白50个

--npc：
-- 23167,'马良'
-- 23168,'颜料商人

--物品
-- 3310589,'马良的求助信
-- 3310590,'颜料包'
-- 3310591,'石青',9
-- 3310592,'褚红',9
-- 3310593,'朱砂',9
-- 3310594,'海蓝',9
-- 3310595,'绛紫',9
-- 3310596,'浅白',9
-- 3310597,'画卷包'
-- 3310598,'画卷',9

-- 3311090,'英雄集结礼盒
-- 3311091,'水火交融礼盒
-- 3311092,'叱咤风云礼盒
-- 3311093,'今日重聚礼盒
-- 3311094,'季军画师礼盒
-- 3311095,'亚军画师礼盒
-- 3311096,'冠军画师礼盒

--STC掩码表：
-- 182 45	表示背包信掩码
-- 182 39 记录每日打开个人竞技礼包三个
-- 182 40      神龙岛杀怪100只记录掩码 杀怪 185 61
-- 182 41 记录打开国境功勋礼包掩码
-- 182 43 记录帮战
-- 182 44 记录战旗争夺战
-- 182 42 记录家族占领赛

-------------------------------------------数据部分-----------------------------------------

--基本数据
local tShenLiangMaLiangOnLineAct_Data = {}
	--活动时间
	tShenLiangMaLiangOnLineAct_Data["ActivityTime"] = tActivityTime["ShenLiangMaLiangOnLineAct"]["ActivityTime"]
	
	--颜料商人坐标
	tShenLiangMaLiangOnLineAct_Data["NPC"] = {}
	tShenLiangMaLiangOnLineAct_Data["NPC"]["CellX"] = 339 
	tShenLiangMaLiangOnLineAct_Data["NPC"]["CellY"] = 475
	tShenLiangMaLiangOnLineAct_Data["NPC"]["Mapid"] = 1002
	tShenLiangMaLiangOnLineAct_Data["NPC"]["nNpcId"] = 23168
	
	--马良的坐标
	tShenLiangMaLiangOnLineAct_Data["NPC1"] = {}
	tShenLiangMaLiangOnLineAct_Data["NPC1"]["CellX"] = 339 
	tShenLiangMaLiangOnLineAct_Data["NPC1"]["CellY"] = 473
	tShenLiangMaLiangOnLineAct_Data["NPC1"]["Mapid"] = 1002
	tShenLiangMaLiangOnLineAct_Data["NPC1"]["nNpcId"] = 23167

	--活动线下页面
	tShenLiangMaLiangOnLineAct_Data["Web"] = "https://coevent.99.com/greatpainter/"

	--等级
	tShenLiangMaLiangOnLineAct_Data["Level"] = 110
	tShenLiangMaLiangOnLineAct_Data["Metempsychosis"] = 1
	
	--物品
	tShenLiangMaLiangOnLineAct_Data["Item"] = {}
	tShenLiangMaLiangOnLineAct_Data["Item"][1] = 3310591
	tShenLiangMaLiangOnLineAct_Data["Item"][2] = 3310592
	tShenLiangMaLiangOnLineAct_Data["Item"][3] = 3310593
	tShenLiangMaLiangOnLineAct_Data["Item"][4] = 3310594
	tShenLiangMaLiangOnLineAct_Data["Item"][5] = 3310595
	tShenLiangMaLiangOnLineAct_Data["Item"][6] = 3310596
	tShenLiangMaLiangOnLineAct_Data["Item"][7] = 3310598
	
	tShenLiangMaLiangOnLineAct_Data["GlobalId"] = 52945
	
	--家族占领赛地图id
	tShenLiangMaLiangOnLineAct_Data["Map"] = {}
	tShenLiangMaLiangOnLineAct_Data["Map"][1] = 1863
	tShenLiangMaLiangOnLineAct_Data["Map"][2] = 1868
	tShenLiangMaLiangOnLineAct_Data["Map"][3] = 1883  
	tShenLiangMaLiangOnLineAct_Data["Map"][4] = 1878 
	tShenLiangMaLiangOnLineAct_Data["Map"][5] = 1873  
	
--随机奖励
local	tShenLiangMaLiangOnLineAct_RunReward = {}
--3310590,'颜料包
	tShenLiangMaLiangOnLineAct_RunReward[3310590] = {}
	tShenLiangMaLiangOnLineAct_RunReward[3310590]["ItemChanceSum"] = 10000
	
	-- 丹青	3310591	1				20.00%		
	tShenLiangMaLiangOnLineAct_RunReward[3310590][1] = {}
	tShenLiangMaLiangOnLineAct_RunReward[3310590][1]["RandomItemChanceType"] = 2
	tShenLiangMaLiangOnLineAct_RunReward[3310590][1]["ItemChance"] = 2000
	tShenLiangMaLiangOnLineAct_RunReward[3310590][1]["RewardItem"] = {}
	tShenLiangMaLiangOnLineAct_RunReward[3310590][1]["RewardItem"][1] = {}
	tShenLiangMaLiangOnLineAct_RunReward[3310590][1]["RewardItem"][1]["Id"] = 3310591
	tShenLiangMaLiangOnLineAct_RunReward[3310590][1]["RewardItem"][1]["Attr"] = "0 1"
	tShenLiangMaLiangOnLineAct_RunReward[3310590][1]["LogId"] = 12001147	
	
	-- 褚红	3310592	1				20.00%	
	tShenLiangMaLiangOnLineAct_RunReward[3310590][2] = {}
	tShenLiangMaLiangOnLineAct_RunReward[3310590][2]["RandomItemChanceType"] = 2
	tShenLiangMaLiangOnLineAct_RunReward[3310590][2]["ItemChance"] = 2000
	tShenLiangMaLiangOnLineAct_RunReward[3310590][2]["RewardItem"] = {}
	tShenLiangMaLiangOnLineAct_RunReward[3310590][2]["RewardItem"][1] = {}
	tShenLiangMaLiangOnLineAct_RunReward[3310590][2]["RewardItem"][1]["Id"] = 3310592
	tShenLiangMaLiangOnLineAct_RunReward[3310590][2]["RewardItem"][1]["Attr"] = "0 1"
	tShenLiangMaLiangOnLineAct_RunReward[3310590][2]["LogId"] = 12001147	
	
	-- 朱砂	3310593	1				20.00%	
	tShenLiangMaLiangOnLineAct_RunReward[3310590][3] = {}
	tShenLiangMaLiangOnLineAct_RunReward[3310590][3]["RandomItemChanceType"] = 2
	tShenLiangMaLiangOnLineAct_RunReward[3310590][3]["ItemChance"] = 2000
	tShenLiangMaLiangOnLineAct_RunReward[3310590][3]["RewardItem"] = {}
	tShenLiangMaLiangOnLineAct_RunReward[3310590][3]["RewardItem"][1] = {}
	tShenLiangMaLiangOnLineAct_RunReward[3310590][3]["RewardItem"][1]["Id"] = 3310593
	tShenLiangMaLiangOnLineAct_RunReward[3310590][3]["RewardItem"][1]["Attr"] = "0 1"
	tShenLiangMaLiangOnLineAct_RunReward[3310590][3]["LogId"] = 12001147	
	
	-- 海蓝	3310594	1				19.00%			
	tShenLiangMaLiangOnLineAct_RunReward[3310590][4] = {}
	tShenLiangMaLiangOnLineAct_RunReward[3310590][4]["RandomItemChanceType"] = 2
	tShenLiangMaLiangOnLineAct_RunReward[3310590][4]["ItemChance"] = 1900
	tShenLiangMaLiangOnLineAct_RunReward[3310590][4]["RewardItem"] = {}
	tShenLiangMaLiangOnLineAct_RunReward[3310590][4]["RewardItem"][1] = {}
	tShenLiangMaLiangOnLineAct_RunReward[3310590][4]["RewardItem"][1]["Id"] = 3310594
	tShenLiangMaLiangOnLineAct_RunReward[3310590][4]["RewardItem"][1]["Attr"] = "0 1"
	tShenLiangMaLiangOnLineAct_RunReward[3310590][4]["LogId"] = 12001147	
	
	-- 绛紫	3310595	1				19.00%
	tShenLiangMaLiangOnLineAct_RunReward[3310590][5] = {}
	tShenLiangMaLiangOnLineAct_RunReward[3310590][5]["RandomItemChanceType"] = 2
	tShenLiangMaLiangOnLineAct_RunReward[3310590][5]["ItemChance"] = 1900
	tShenLiangMaLiangOnLineAct_RunReward[3310590][5]["RewardItem"] = {}
	tShenLiangMaLiangOnLineAct_RunReward[3310590][5]["RewardItem"][1] = {}
	tShenLiangMaLiangOnLineAct_RunReward[3310590][5]["RewardItem"][1]["Id"] = 3310595
	tShenLiangMaLiangOnLineAct_RunReward[3310590][5]["RewardItem"][1]["Attr"] = "0 1"
	tShenLiangMaLiangOnLineAct_RunReward[3310590][5]["LogId"] = 12001147	
		
	-- 浅白	3310596	1				2.00%			每日50个
	tShenLiangMaLiangOnLineAct_RunReward[3310590][6] = {}
	tShenLiangMaLiangOnLineAct_RunReward[3310590][6]["RandomItemChanceType"] = 2
	tShenLiangMaLiangOnLineAct_RunReward[3310590][6]["ItemChance"] = 200
	tShenLiangMaLiangOnLineAct_RunReward[3310590][6]["RewardItem"] = {}
	tShenLiangMaLiangOnLineAct_RunReward[3310590][6]["RewardItem"][1] = {}
	tShenLiangMaLiangOnLineAct_RunReward[3310590][6]["RewardItem"][1]["Id"] = 3310596
	tShenLiangMaLiangOnLineAct_RunReward[3310590][6]["RewardItem"][1]["Attr"] = "0 1"
	tShenLiangMaLiangOnLineAct_RunReward[3310590][6]["LogId"] = 12001147	
	tShenLiangMaLiangOnLineAct_RunReward[3310590][6]["GlobalId"] = 52945
	tShenLiangMaLiangOnLineAct_RunReward[3310590][6]["MaxData"] = 50
	tShenLiangMaLiangOnLineAct_RunReward[3310590][6]["FullIndex"] = 1
	tShenLiangMaLiangOnLineAct_RunReward[3310590][6]["Pos"] = 0
	
--奖励表
local tShenLiangMaLiangOnLineAct_Awarditem = {}
	--画卷包 3310597
	tShenLiangMaLiangOnLineAct_Awarditem[3310597] = {}
	tShenLiangMaLiangOnLineAct_Awarditem[3310597]["DeleteItem"] = {}
	tShenLiangMaLiangOnLineAct_Awarditem[3310597]["DeleteItem"][1] = {}
	tShenLiangMaLiangOnLineAct_Awarditem[3310597]["DeleteItem"][1]["Id"] = 3310597
	tShenLiangMaLiangOnLineAct_Awarditem[3310597]["RewardItem"] = {}
	tShenLiangMaLiangOnLineAct_Awarditem[3310597]["RewardItem"][1] = {}
	tShenLiangMaLiangOnLineAct_Awarditem[3310597]["RewardItem"][1]["Id"] = 3310598
	tShenLiangMaLiangOnLineAct_Awarditem[3310597]["RewardItem"][1]["Attr"] = "0 1"
	tShenLiangMaLiangOnLineAct_Awarditem[3310597]["LogId"] = 12001147
	tShenLiangMaLiangOnLineAct_Awarditem[3310597]["RewardEffect"] = {}
	tShenLiangMaLiangOnLineAct_Awarditem[3310597]["RewardEffect"]["SzObj"] = "self"
	tShenLiangMaLiangOnLineAct_Awarditem[3310597]["RewardEffect"]["Effect"] = "angelwing"	
	
	-- 3311090,'英雄集结礼盒
	tShenLiangMaLiangOnLineAct_Awarditem[3311090] = {}
	tShenLiangMaLiangOnLineAct_Awarditem[3311090]["DeleteItem"] = {}
	tShenLiangMaLiangOnLineAct_Awarditem[3311090]["DeleteItem"][1] = {}
	tShenLiangMaLiangOnLineAct_Awarditem[3311090]["DeleteItem"][1]["Id"] = 3311090
	tShenLiangMaLiangOnLineAct_Awarditem[3311090]["RewardItem"] = {}
	tShenLiangMaLiangOnLineAct_Awarditem[3311090]["RewardItem"][1] = {}
	tShenLiangMaLiangOnLineAct_Awarditem[3311090]["RewardItem"][1]["Id"] = 3009001
	tShenLiangMaLiangOnLineAct_Awarditem[3311090]["RewardItem"][1]["Attr"] = "0 5 0 2880 1"
	tShenLiangMaLiangOnLineAct_Awarditem[3311090]["RewardItem"][2] = {}
	tShenLiangMaLiangOnLineAct_Awarditem[3311090]["RewardItem"][2]["Id"] = 3008192
	tShenLiangMaLiangOnLineAct_Awarditem[3311090]["RewardItem"][2]["Attr"] = "0 1"
	tShenLiangMaLiangOnLineAct_Awarditem[3311090]["LogId"] = 12001147
	tShenLiangMaLiangOnLineAct_Awarditem[3311090]["RewardEffect"] = {}
	tShenLiangMaLiangOnLineAct_Awarditem[3311090]["RewardEffect"]["SzObj"] = "self"
	tShenLiangMaLiangOnLineAct_Awarditem[3311090]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 3311091,'水火交融礼盒
	tShenLiangMaLiangOnLineAct_Awarditem[3311091] = {}
	tShenLiangMaLiangOnLineAct_Awarditem[3311091]["DeleteItem"] = {}
	tShenLiangMaLiangOnLineAct_Awarditem[3311091]["DeleteItem"][1] = {}
	tShenLiangMaLiangOnLineAct_Awarditem[3311091]["DeleteItem"][1]["Id"] = 3311091
	tShenLiangMaLiangOnLineAct_Awarditem[3311091]["RewardItem"] = {}
	tShenLiangMaLiangOnLineAct_Awarditem[3311091]["RewardItem"][1] = {}
	tShenLiangMaLiangOnLineAct_Awarditem[3311091]["RewardItem"][1]["Id"] = 4060001
	tShenLiangMaLiangOnLineAct_Awarditem[3311091]["RewardItem"][1]["Attr"] = "0 50 3"
	-- tShenLiangMaLiangOnLineAct_Awarditem[3311091]["RewardItem"][2] = {}
	-- tShenLiangMaLiangOnLineAct_Awarditem[3311091]["RewardItem"][2]["Id"] = 729852
	-- tShenLiangMaLiangOnLineAct_Awarditem[3311091]["RewardItem"][2]["Attr"] = "0 1"
	tShenLiangMaLiangOnLineAct_Awarditem[3311091]["RewardCultivation"] = {}
	tShenLiangMaLiangOnLineAct_Awarditem[3311091]["RewardCultivation"]["Value"] = 1000
	tShenLiangMaLiangOnLineAct_Awarditem[3311091]["LogId"] = 12001147
	tShenLiangMaLiangOnLineAct_Awarditem[3311091]["RewardEffect"] = {}
	tShenLiangMaLiangOnLineAct_Awarditem[3311091]["RewardEffect"]["SzObj"] = "self"
	tShenLiangMaLiangOnLineAct_Awarditem[3311091]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 3311092,'叱咤风云礼盒
	tShenLiangMaLiangOnLineAct_Awarditem[3311092] = {}
	tShenLiangMaLiangOnLineAct_Awarditem[3311092]["DeleteItem"] = {}
	tShenLiangMaLiangOnLineAct_Awarditem[3311092]["DeleteItem"][1] = {}
	tShenLiangMaLiangOnLineAct_Awarditem[3311092]["DeleteItem"][1]["Id"] = 3311092
	tShenLiangMaLiangOnLineAct_Awarditem[3311092]["RewardItem"] = {}
	tShenLiangMaLiangOnLineAct_Awarditem[3311092]["RewardItem"][1] = {}
	tShenLiangMaLiangOnLineAct_Awarditem[3311092]["RewardItem"][1]["Id"] = 4060001
	tShenLiangMaLiangOnLineAct_Awarditem[3311092]["RewardItem"][1]["Attr"] = "0 30 3"
	tShenLiangMaLiangOnLineAct_Awarditem[3311092]["RewardItem"][2] = {}
	tShenLiangMaLiangOnLineAct_Awarditem[3311092]["RewardItem"][2]["Id"] = 3009002
	tShenLiangMaLiangOnLineAct_Awarditem[3311092]["RewardItem"][2]["Attr"] = "0 1 0 2880 1"
	tShenLiangMaLiangOnLineAct_Awarditem[3311092]["LogId"] = 12001147
	tShenLiangMaLiangOnLineAct_Awarditem[3311092]["RewardEffect"] = {}
	tShenLiangMaLiangOnLineAct_Awarditem[3311092]["RewardEffect"]["SzObj"] = "self"
	tShenLiangMaLiangOnLineAct_Awarditem[3311092]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 3311093,'今日重聚礼盒
	tShenLiangMaLiangOnLineAct_Awarditem[3311093] = {}
	tShenLiangMaLiangOnLineAct_Awarditem[3311093]["DeleteItem"] = {}
	tShenLiangMaLiangOnLineAct_Awarditem[3311093]["DeleteItem"][1] = {}
	tShenLiangMaLiangOnLineAct_Awarditem[3311093]["DeleteItem"][1]["Id"] = 3311093
	tShenLiangMaLiangOnLineAct_Awarditem[3311093]["RewardItem"] = {}
	tShenLiangMaLiangOnLineAct_Awarditem[3311093]["RewardItem"][1] = {}
	tShenLiangMaLiangOnLineAct_Awarditem[3311093]["RewardItem"][1]["Id"] = 711504
	tShenLiangMaLiangOnLineAct_Awarditem[3311093]["RewardItem"][1]["Attr"] = "0 3 3"
	-- tShenLiangMaLiangOnLineAct_Awarditem[3311093]["RewardItem"][2] = {}
	-- tShenLiangMaLiangOnLineAct_Awarditem[3311093]["RewardItem"][2]["Id"] = 3006434
	-- tShenLiangMaLiangOnLineAct_Awarditem[3311093]["RewardItem"][2]["Attr"] = "0 1"
	tShenLiangMaLiangOnLineAct_Awarditem[3311093]["RewardCultivation"] = {}
	tShenLiangMaLiangOnLineAct_Awarditem[3311093]["RewardCultivation"]["Value"] = 2000
	tShenLiangMaLiangOnLineAct_Awarditem[3311093]["RewardItem"][2] = {}
	tShenLiangMaLiangOnLineAct_Awarditem[3311093]["RewardItem"][2]["Id"] = 3008193
	tShenLiangMaLiangOnLineAct_Awarditem[3311093]["RewardItem"][2]["Attr"] = "0 1"
	tShenLiangMaLiangOnLineAct_Awarditem[3311093]["RewardItem"][3] = {}
	tShenLiangMaLiangOnLineAct_Awarditem[3311093]["RewardItem"][3]["Id"] = 3009002
	tShenLiangMaLiangOnLineAct_Awarditem[3311093]["RewardItem"][3]["Attr"] = "0 3 0 2880 1"
	tShenLiangMaLiangOnLineAct_Awarditem[3311093]["LogId"] = 12001147
	tShenLiangMaLiangOnLineAct_Awarditem[3311093]["RewardEffect"] = {}
	tShenLiangMaLiangOnLineAct_Awarditem[3311093]["RewardEffect"]["SzObj"] = "self"
	tShenLiangMaLiangOnLineAct_Awarditem[3311093]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 3311094,'季军画师礼盒
	tShenLiangMaLiangOnLineAct_Awarditem[3311094] = {}
	tShenLiangMaLiangOnLineAct_Awarditem[3311094]["DeleteItem"] = {}
	tShenLiangMaLiangOnLineAct_Awarditem[3311094]["DeleteItem"][1] = {}
	tShenLiangMaLiangOnLineAct_Awarditem[3311094]["DeleteItem"][1]["Id"] = 3311094
	tShenLiangMaLiangOnLineAct_Awarditem[3311094]["RewardItem"] = {}
	tShenLiangMaLiangOnLineAct_Awarditem[3311094]["RewardItem"][1] = {}
	tShenLiangMaLiangOnLineAct_Awarditem[3311094]["RewardItem"][1]["Id"] = 3008192
	tShenLiangMaLiangOnLineAct_Awarditem[3311094]["RewardItem"][1]["Attr"] = "0 1"
	tShenLiangMaLiangOnLineAct_Awarditem[3311094]["RewardItem"][2] = {}
	tShenLiangMaLiangOnLineAct_Awarditem[3311094]["RewardItem"][2]["Id"] = 4060001
	tShenLiangMaLiangOnLineAct_Awarditem[3311094]["RewardItem"][2]["Attr"] = "0 50 3"
	-- tShenLiangMaLiangOnLineAct_Awarditem[3311094]["RewardItem"][1] = {}
	-- tShenLiangMaLiangOnLineAct_Awarditem[3311094]["RewardItem"][1]["Id"] = 3004305
	-- tShenLiangMaLiangOnLineAct_Awarditem[3311094]["RewardItem"][1]["Attr"] = "0 1 3"
	tShenLiangMaLiangOnLineAct_Awarditem[3311094]["RewardEMoneyMono"] = {}
	tShenLiangMaLiangOnLineAct_Awarditem[3311094]["RewardEMoneyMono"]["Value"] = 100
	tShenLiangMaLiangOnLineAct_Awarditem[3311094]["LogId"] = 12001147
	tShenLiangMaLiangOnLineAct_Awarditem[3311094]["RewardEffect"] = {}
	tShenLiangMaLiangOnLineAct_Awarditem[3311094]["RewardEffect"]["SzObj"] = "self"
	tShenLiangMaLiangOnLineAct_Awarditem[3311094]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 3311095,'亚军画师礼盒
	tShenLiangMaLiangOnLineAct_Awarditem[3311095] = {}
	tShenLiangMaLiangOnLineAct_Awarditem[3311095]["DeleteItem"] = {}
	tShenLiangMaLiangOnLineAct_Awarditem[3311095]["DeleteItem"][1] = {}
	tShenLiangMaLiangOnLineAct_Awarditem[3311095]["DeleteItem"][1]["Id"] = 3311095
	tShenLiangMaLiangOnLineAct_Awarditem[3311095]["RewardItem"] = {}
	tShenLiangMaLiangOnLineAct_Awarditem[3311095]["RewardItem"][1] = {}
	tShenLiangMaLiangOnLineAct_Awarditem[3311095]["RewardItem"][1]["Id"] = 3008193
	tShenLiangMaLiangOnLineAct_Awarditem[3311095]["RewardItem"][1]["Attr"] = "0 1"
	tShenLiangMaLiangOnLineAct_Awarditem[3311095]["RewardItem"][2] = {}
	tShenLiangMaLiangOnLineAct_Awarditem[3311095]["RewardItem"][2]["Id"] = 4060001
	tShenLiangMaLiangOnLineAct_Awarditem[3311095]["RewardItem"][2]["Attr"] = "0 100 3"
	tShenLiangMaLiangOnLineAct_Awarditem[3311095]["RewardItem"][3] = {}
	tShenLiangMaLiangOnLineAct_Awarditem[3311095]["RewardItem"][3]["Id"] = 3301245
	tShenLiangMaLiangOnLineAct_Awarditem[3311095]["RewardItem"][3]["Attr"] = "0 1"
	tShenLiangMaLiangOnLineAct_Awarditem[3311095]["LogId"] = 12001147
	tShenLiangMaLiangOnLineAct_Awarditem[3311095]["RewardEffect"] = {}
	tShenLiangMaLiangOnLineAct_Awarditem[3311095]["RewardEffect"]["SzObj"] = "self"
	tShenLiangMaLiangOnLineAct_Awarditem[3311095]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 3311096,'冠军画师礼盒
	tShenLiangMaLiangOnLineAct_Awarditem[3311096] = {}
	tShenLiangMaLiangOnLineAct_Awarditem[3311096]["DeleteItem"] = {}
	tShenLiangMaLiangOnLineAct_Awarditem[3311096]["DeleteItem"][1] = {}
	tShenLiangMaLiangOnLineAct_Awarditem[3311096]["DeleteItem"][1]["Id"] = 3311096
	tShenLiangMaLiangOnLineAct_Awarditem[3311096]["RewardItem"] = {}
	tShenLiangMaLiangOnLineAct_Awarditem[3311096]["RewardItem"][1] = {}
	tShenLiangMaLiangOnLineAct_Awarditem[3311096]["RewardItem"][1]["Id"] = 3008196
	tShenLiangMaLiangOnLineAct_Awarditem[3311096]["RewardItem"][1]["Attr"] = "0 1"
	tShenLiangMaLiangOnLineAct_Awarditem[3311096]["RewardItem"][2] = {}
	tShenLiangMaLiangOnLineAct_Awarditem[3311096]["RewardItem"][2]["Id"] = 4060001
	tShenLiangMaLiangOnLineAct_Awarditem[3311096]["RewardItem"][2]["Attr"] = "0 200 3"
	-- tShenLiangMaLiangOnLineAct_Awarditem[3311096]["RewardItem"][3] = {}
	-- tShenLiangMaLiangOnLineAct_Awarditem[3311096]["RewardItem"][3]["Id"] = 3004884
	-- tShenLiangMaLiangOnLineAct_Awarditem[3311096]["RewardItem"][3]["Attr"] = "0 1 3"
	tShenLiangMaLiangOnLineAct_Awarditem[3311096]["RewardEMoneyMono"] = {}
	tShenLiangMaLiangOnLineAct_Awarditem[3311096]["RewardEMoneyMono"]["Value"] = 500
	tShenLiangMaLiangOnLineAct_Awarditem[3311096]["LogId"] = 12001147
	tShenLiangMaLiangOnLineAct_Awarditem[3311096]["RewardEffect"] = {}
	tShenLiangMaLiangOnLineAct_Awarditem[3311096]["RewardEffect"]["SzObj"] = "self"
	tShenLiangMaLiangOnLineAct_Awarditem[3311096]["RewardEffect"]["Effect"] = "angelwing"
		
	
--掩码表
local tShenLiangMaLiangOnLineAct_Stc = {}	

	tShenLiangMaLiangOnLineAct_Stc["EventType"] = {}
	tShenLiangMaLiangOnLineAct_Stc["DataType"] = {}

	--记录玩家上交材料数量掩码 3310591,'石青',
	tShenLiangMaLiangOnLineAct_Stc["EventType"][3310591] = 182
	tShenLiangMaLiangOnLineAct_Stc["DataType"][3310591] = 32
	
	--记录玩家上交材料数量掩码 3310592,'褚红',
	tShenLiangMaLiangOnLineAct_Stc["EventType"][3310592] = 182
	tShenLiangMaLiangOnLineAct_Stc["DataType"][3310592] = 33
	
	--记录玩家上交材料数量掩码 3310593,'朱砂',
	tShenLiangMaLiangOnLineAct_Stc["EventType"][3310593] = 182
	tShenLiangMaLiangOnLineAct_Stc["DataType"][3310593] = 34
	
	--记录玩家上交材料数量掩码 3310594,'海蓝',
	tShenLiangMaLiangOnLineAct_Stc["EventType"][3310594] = 182
	tShenLiangMaLiangOnLineAct_Stc["DataType"][3310594] = 35
	
	--记录玩家上交材料数量掩码 3310595,'绛紫',
	tShenLiangMaLiangOnLineAct_Stc["EventType"][3310595] = 182
	tShenLiangMaLiangOnLineAct_Stc["DataType"][3310595] = 36
	
	--记录玩家上交材料数量掩码 3310596,'浅白',
	tShenLiangMaLiangOnLineAct_Stc["EventType"][3310596] = 182
	tShenLiangMaLiangOnLineAct_Stc["DataType"][3310596] = 37
	
	--记录玩家上交材料数量掩码 3310598,'画卷',
	tShenLiangMaLiangOnLineAct_Stc["EventType"][3310598] = 182
	tShenLiangMaLiangOnLineAct_Stc["DataType"][3310598] = 38
	
	--记录玩家每日参赛并打开个人竞技礼包三个
	tShenLiangMaLiangOnLineAct_Stc["EventType"][1] = 182
	tShenLiangMaLiangOnLineAct_Stc["DataType"][1] = 39
	
	--参加个人竞技赛掩码
	tShenLiangMaLiangOnLineAct_Stc["EventType"][4] =182
	tShenLiangMaLiangOnLineAct_Stc["DataType"][4] = 54
	
	--个人竞技礼包掩码 
	tShenLiangMaLiangOnLineAct_Stc["EventType"][3007309] =137
	tShenLiangMaLiangOnLineAct_Stc["DataType"][3007309] =59
	
	--显著功勋礼包掩码 
	tShenLiangMaLiangOnLineAct_Stc["EventType"][3007108] =182
	tShenLiangMaLiangOnLineAct_Stc["DataType"][3007108] =50
	
	--卓越功勋礼包掩码 
	tShenLiangMaLiangOnLineAct_Stc["EventType"][3007109] =182
	tShenLiangMaLiangOnLineAct_Stc["DataType"][3007109] =51
	
	--记录打开国境功勋礼包掩码
	tShenLiangMaLiangOnLineAct_Stc["EventType"][2] =182
	tShenLiangMaLiangOnLineAct_Stc["DataType"][2] =41
	
	--记录玩家每日参与矿洞活动
	tShenLiangMaLiangOnLineAct_Stc["EventType"][3] =182
	tShenLiangMaLiangOnLineAct_Stc["DataType"][3] =40
	
	--记录玩家家族占领赛掩码
	tShenLiangMaLiangOnLineAct_Stc["EventType"][5] =182
	tShenLiangMaLiangOnLineAct_Stc["DataType"][5] =42
	
	--记录玩家切换战旗地图打掩码
	tShenLiangMaLiangOnLineAct_Stc["EventType"][6] =182
	tShenLiangMaLiangOnLineAct_Stc["DataType"][6] =44
	
	--记录玩家在神龙岛杀怪只数  18561
	tShenLiangMaLiangOnLineAct_Stc["EventType"][7] = 185
	tShenLiangMaLiangOnLineAct_Stc["DataType"][7] = 61
	
	
local tShenLiangMaLiangOnLineAct_Effect = {}
	tShenLiangMaLiangOnLineAct_Effect[1] = "self"
	tShenLiangMaLiangOnLineAct_Effect[2] = "angelwing"
--log表
local tShenLiangMaLiangOnLineAct_Log = {}	

	tShenLiangMaLiangOnLineAct_Log["DelItem"] = "0,0,%d,1,12001147,2,0,0"	
	tShenLiangMaLiangOnLineAct_Log["DelAllItem"] = "0,0,%d,%d,12001147,2,0,0"	
	


---------------------------------逻辑部分--------------------------------------------- 
--记录玩家个人竞技赛是否参与掩码
function ShenLiangMaLiangOnLineAct_AddStatistic4()
	local nUserId = Get_UserId()
	--时间判断
	if not Sys_ChkFullTime(tShenLiangMaLiangOnLineAct_Data["ActivityTime"]) then
		return
	end
	--等级
	if not User_JudgeLevelAndMetempsychosis(tShenLiangMaLiangOnLineAct_Data["Level"],tShenLiangMaLiangOnLineAct_Data["Metempsychosis"]) then 
		return
	end 	

	local nEvent = tShenLiangMaLiangOnLineAct_Stc["EventType"][4]
	local nType = tShenLiangMaLiangOnLineAct_Stc["DataType"][4]
	
	-- 判断掩码是否隔天
	if Task_StcInterval(nEvent,nType,1,4,nUserId) then
		Task_SetStatistic(nEvent,nType,0,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	end
	Task_SetStatistic(nEvent,nType,1,1,nUserId)
	Task_SetStcTimestamp(nEvent,nType,0,nUserId)
end


--记录玩家每日参与矿洞活动   英文改成神龙岛杀怪100只
function ShenLiangMaLiangOnLineAct_AddStatistic3()
	
	local nUserId = Get_UserId()
	--时间判断
	if not Sys_ChkFullTime(tShenLiangMaLiangOnLineAct_Data["ActivityTime"]) then
		return
	end
	--等级
	if not User_JudgeLevelAndMetempsychosis(tShenLiangMaLiangOnLineAct_Data["Level"],tShenLiangMaLiangOnLineAct_Data["Metempsychosis"]) then 
		return
	end 	
	
	local nKillMonsterEvent = tShenLiangMaLiangOnLineAct_Stc["EventType"][7] 
	local nKillMonsterType = tShenLiangMaLiangOnLineAct_Stc["DataType"][7]
	
	local nEvent = tShenLiangMaLiangOnLineAct_Stc["EventType"][3]
	local nType = tShenLiangMaLiangOnLineAct_Stc["DataType"][3]
	
	-- 判断掩码是否隔天
	if Task_StcInterval(nKillMonsterEvent,nKillMonsterType,1,4,nUserId) then
		Task_SetStatistic(nKillMonsterEvent,nKillMonsterType,0,1,nUserId)
		Task_SetStcTimestamp(nKillMonsterEvent,nKillMonsterType,0,nUserId)
	end
	-- 判断掩码是否隔天
	if Task_StcInterval(nEvent,nType,1,4,nUserId) then
		Task_SetStatistic(nEvent,nType,0,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	end

	Task_AddStatistic(nKillMonsterEvent,nKillMonsterType,1,1,nUserId)
	Task_SetStcTimestamp(nKillMonsterEvent,nKillMonsterType,0,nUserId)
	local nMonster = Get_UserStatisticValue(nKillMonsterEvent,nKillMonsterType,nUserId)
	if nMonster >= 100 then 
		Task_SetStatistic(nEvent,nType,1,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	end
end


--记录打开国境功勋礼包掩码
function ShenLiangMaLiangOnLineAct_AddStatistic2(nItemId)

	local nUserId = Get_UserId()
	--时间判断
	if not Sys_ChkFullTime(tShenLiangMaLiangOnLineAct_Data["ActivityTime"]) then
		return
	end
	--等级
	if not User_JudgeLevelAndMetempsychosis(tShenLiangMaLiangOnLineAct_Data["Level"],tShenLiangMaLiangOnLineAct_Data["Metempsychosis"]) then 
		return
	end 	
	--显著功勋礼包掩码
	local nFEvent = tShenLiangMaLiangOnLineAct_Stc["EventType"][3007108]
	local nFType = tShenLiangMaLiangOnLineAct_Stc["DataType"][3007108]
	
	local nTEvent = tShenLiangMaLiangOnLineAct_Stc["EventType"][3007109] 
	local nTType = tShenLiangMaLiangOnLineAct_Stc["DataType"][3007109]
	
	local nEvent = tShenLiangMaLiangOnLineAct_Stc["EventType"][2] 
	local nType = tShenLiangMaLiangOnLineAct_Stc["DataType"][2]
	
	-- 判断掩码是否隔天
	if Task_StcInterval(nEvent,nType,1,4,nUserId) then
		Task_SetStatistic(nEvent,nType,0,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	end
	
	if Task_StcInterval(nFEvent,nFType,1,4,nUserId) then
		Task_SetStatistic(nFEvent,nFType,0,1,nUserId)
		Task_SetStcTimestamp(nFEvent,nFType,0,nUserId)
	end
	
	if Task_StcInterval(nTEvent,nTType,1,4,nUserId) then
		Task_SetStatistic(nTEvent,nTType,0,1,nUserId)
		Task_SetStcTimestamp(nTEvent,nTType,0,nUserId)
	end
	
	local nFData = Get_UserStatisticValue(nFEvent,nFType,nUserId)
	local nTData = Get_UserStatisticValue(nTEvent,nTType,nUserId)
	
	if nFData > 0 and nTData == 0 then
		-- 加掩码
		Task_SetStatistic(nEvent,nType,1,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	end
	
	if nFData == 0 and nTData > 0 then
		-- 加掩码
		Task_SetStatistic(nEvent,nType,1,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	end
	
	if nFData > 0 and nTData > 0 then
		-- 加掩码
		Task_SetStatistic(nEvent,nType,1,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	end
	
	Task_SetStatistic(tShenLiangMaLiangOnLineAct_Stc["EventType"][nItemId], tShenLiangMaLiangOnLineAct_Stc["DataType"][nItemId],1,1,nUserId)
	Task_SetStcTimestamp(tShenLiangMaLiangOnLineAct_Stc["EventType"][nItemId], tShenLiangMaLiangOnLineAct_Stc["DataType"][nItemId],0,nUserId)
	
end

--每日参赛并打开个人竞技礼包三个
function ShenLiangMaLiangOnLineAct_AddStatistic1(nItemId)
	local nUserId = Get_UserId()
	--时间判断
	if not Sys_ChkFullTime(tShenLiangMaLiangOnLineAct_Data["ActivityTime"]) then
		return
	end
	--等级
	if not User_JudgeLevelAndMetempsychosis(tShenLiangMaLiangOnLineAct_Data["Level"],tShenLiangMaLiangOnLineAct_Data["Metempsychosis"]) then 
		return
	end 	
	--个人竞技礼包掩码
	local nEvent = tShenLiangMaLiangOnLineAct_Stc["EventType"][3007309]
	local nType = tShenLiangMaLiangOnLineAct_Stc["DataType"][3007309]
	
	local nEvent4 = tShenLiangMaLiangOnLineAct_Stc["EventType"][4]
	local nType4 = tShenLiangMaLiangOnLineAct_Stc["DataType"][4]
	
	local nPEvent = tShenLiangMaLiangOnLineAct_Stc["EventType"][1] 
	local nPType = tShenLiangMaLiangOnLineAct_Stc["DataType"][1]
	
	-- 判断掩码是否隔天
	if Task_StcInterval(nEvent,nType,1,4,nUserId) then
		Task_SetStatistic(nEvent,nType,0,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	end
	if Task_StcInterval(nEvent4,nType4,1,4,nUserId) then
		Task_SetStatistic(nEvent4,nType4,0,1,nUserId)
		Task_SetStcTimestamp(nEvent4,nType4,0,nUserId)
	end
	
	if Task_StcInterval(nPEvent,nPType,1,4,nUserId) then
		Task_SetStatistic(nPEvent,nPType,0,1,nUserId)
		Task_SetStcTimestamp(nPEvent,nPType,0,nUserId)
	end
	
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId)
	local nData4 = Get_UserStatisticValue(nEvent4,nType4,nUserId)
	if nItemId == 3309813 then
		if nData >= 2 then
			-- 加掩码
			Task_SetStatistic(nPEvent,nPType,1,1,nUserId)
			Task_SetStcTimestamp(nPEvent,nPType,0,nUserId)
		end
	end
	
	if nData > 2 and nData4 >= 0 then
		-- 加掩码
		Task_SetStatistic(nPEvent,nPType,1,1,nUserId)
		Task_SetStcTimestamp(nPEvent,nPType,0,nUserId)
	end
end


--打开商店
function ShenLiangMaLiangOnLineAct_Open(nNpcId)
	--时间判断
	if not Sys_ChkFullTime(tActivityTime["ShenLiangMaLiangOnLineAct"]["ActivityTime1"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end
	--等级
	if not User_JudgeLevelAndMetempsychosis(tShenLiangMaLiangOnLineAct_Data["Level"],tShenLiangMaLiangOnLineAct_Data["Metempsychosis"]) then 
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end 	

	User_OpenDialog(0,nNpcId)

end	

--去找颜料商人
function ShenLiangMaLiangOnLineAct_GoTo(nNpcId)
	--时间判断
	if not Sys_ChkFullTime(tActivityTime["ShenLiangMaLiangOnLineAct"]["ActivityTime1"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end
	--等级
	if not User_JudgeLevelAndMetempsychosis(tShenLiangMaLiangOnLineAct_Data["Level"],tShenLiangMaLiangOnLineAct_Data["Metempsychosis"]) then 
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end 	
	local nPosX = tShenLiangMaLiangOnLineAct_Data["NPC"]["CellX"]
	local nPosY = tShenLiangMaLiangOnLineAct_Data["NPC"]["CellY"]
	local nMapId = tShenLiangMaLiangOnLineAct_Data["NPC"]["Mapid"]

	local nNpcId = tShenLiangMaLiangOnLineAct_Data["NPC"]["nNpcId"]
	Sys_GotoSomeWhere(nPosX,nPosY,nMapId,nNpcId)
	
end

--上交物品
function ShenLiangMaLiangOnLineAct_HandItem(nNpcId,nItemId)
	--时间判断
	if not Sys_ChkFullTime(tShenLiangMaLiangOnLineAct_Data["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end
	--等级
	if not User_JudgeLevelAndMetempsychosis(tShenLiangMaLiangOnLineAct_Data["Level"],tShenLiangMaLiangOnLineAct_Data["Metempsychosis"]) then 
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end 

	--判断物品
	if not Item_ChkItem(nItemId) then

		tNpcGossip[23167]["Text311"] = string.format(tShenLiangMaLiangOnLineAct_Text[23167]["Text311"],tShenLiangMaLiangOnLineAct_Text[nItemId])
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return
	end 

	--玩家背包中材料数量
	local nNum = Get_CountItemType(nItemId,0)

	if Item_DelMulItem(nItemId,nItemId,nNum) then
		local sDelItemLog = string.format(tShenLiangMaLiangOnLineAct_Log["DelAllItem"],nItemId,nNum)
		Sys_SaveActionFestivalLog(sDelItemLog)
		-- Sys_SaveEmoneyBuy(string.format(tTexasChristmasDraw_EmoneyBuy["Hanging"],nNum))
	
		--上交成功
		local nEvent = tShenLiangMaLiangOnLineAct_Stc["EventType"][nItemId]
		local nType = tShenLiangMaLiangOnLineAct_Stc["DataType"][nItemId]
		
		Task_AddStatistic(nEvent,nType,nNum,1,0)
		-- local nData = Get_UserStatisticValue(nEvent,nType)
		
		-- Sys_DialogText(string.format(tTexasChristmasDraw_Text[22412]["Text311"],nNum))
		-- Sys_DialogText(string.format(tTexasChristmasDraw_Text[22412]["Text312"],nData))
		-- Sys_DialogOptEdit("", 32, "TexasChristmasDraw_HandGift</N>"..nItemId)
		-- Sys_DialogFace(nNpcId)
		-- Sys_DialogEnd()
		-- LinkNpcGossipFunc_New(nNpcId,"3-3")
		Sys_MsgBox(string.format(tShenLiangMaLiangOnLineAct_Text[23167]["Text331"],tShenLiangMaLiangOnLineAct_Text[nItemId]))
		-- User_TalkChannel2005(string.format(tTexasChristmasDraw_Text["HandSuccess"],nNeedCompose))
	end	

end

--判断背包中有何种材料  没有返回false  有返回true 和 表 表结构 t[i]["Id"]  t[i]["Num"]
function ShenLiangMaLiangOnLineAct_CheckItem()
	local tItem = {}
	local nIndex = 1
	local nBagNum 
	for a,b in pairs(tShenLiangMaLiangOnLineAct_Data["Item"]) do
		if Item_ChkItem(b) then
			tItem[nIndex] = {}
			nBagNum = Get_CountItemType(b,0)
			tItem[nIndex]["Id"] = b
			tItem[nIndex]["Num"] = nBagNum
			nIndex = nIndex + 1	
		end
	end
	if nIndex == 1 then
		return tItem , false
	else
		return tItem , true
	end

end

--上交所有物品
function ShenLiangMaLiangOnLineAct_HandAllItem(nNpcId)
	--时间判断
	if not Sys_ChkFullTime(tShenLiangMaLiangOnLineAct_Data["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end
	--等级
	if not User_JudgeLevelAndMetempsychosis(tShenLiangMaLiangOnLineAct_Data["Level"],tShenLiangMaLiangOnLineAct_Data["Metempsychosis"]) then 
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end 
	local tItem,b = ShenLiangMaLiangOnLineAct_CheckItem()
	
	if not b then
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return
	end
	-- 表结构 t[1]["Id"]  t[1]["Num"]
	for a,b in pairs(tItem) do
		local nItemId = b["Id"]
		local nNum = b["Num"]
		if Item_DelMulItem(nItemId,nItemId,nNum) then
			local sDelItemLog = string.format(tShenLiangMaLiangOnLineAct_Log["DelAllItem"],nItemId,nNum)
			Sys_SaveActionFestivalLog(sDelItemLog)
			--上交成功
			local nEvent = tShenLiangMaLiangOnLineAct_Stc["EventType"][nItemId]
			local nType = tShenLiangMaLiangOnLineAct_Stc["DataType"][nItemId]
			
			Task_AddStatistic(nEvent,nType,nNum,1,0)
		end	
		
	end
	Sys_MsgBox(tShenLiangMaLiangOnLineAct_Text[23167]["Text341"])
	-- LinkNpcGossipFunc_New(nNpcId,"3-3")

end

--颜料包使用
function ShenLiangMaLiangOnLineAct_UseBag(nItemId)
	local nUserId = Get_UserId()
	--等级判断
	if not User_JudgeLevelAndMetempsychosis(tShenLiangMaLiangOnLineAct_Data["Level"],tShenLiangMaLiangOnLineAct_Data["Metempsychosis"]) then 
		User_TalkChannel2005(tShenLiangMaLiangOnLineAct_Text["Sys"]["LevLimit"][nItemId])
		return
	end 
	User_EffectAdd(tShenLiangMaLiangOnLineAct_Effect[1],tShenLiangMaLiangOnLineAct_Effect[2],nUserId)
	
	if Item_ChkItem(nItemId) then
		if Item_DelItem(nItemId) then
			local sDelItemLog = string.format(tShenLiangMaLiangOnLineAct_Log["DelItem"],nItemId)
			Sys_SaveActionFestivalLog(sDelItemLog)
			RewardTemplate_NewRandom(tShenLiangMaLiangOnLineAct_RunReward,nItemId,nUserId)	
		end
	end	
end

--画卷包使用
function ShenLiangMaLiangOnLineAct_UseItem(nItemId)
	local nUserId = Get_UserId()
	--等级判断
	if not User_JudgeLevelAndMetempsychosis(tShenLiangMaLiangOnLineAct_Data["Level"],tShenLiangMaLiangOnLineAct_Data["Metempsychosis"]) then 
		User_TalkChannel2005(tShenLiangMaLiangOnLineAct_Text["Sys"]["LevLimit"][nItemId])
		return
	end 
	RewardTemplate_UseItemAndMsg(tShenLiangMaLiangOnLineAct_Awarditem[nItemId])
end

--物品导航
function ShenLiangMaLiangOnLineAct_GoNpc(nItemId)
	local nUserId = Get_UserId()
	--时间判断
	if  CommonFunc_GetBeforeActivityTime(tShenLiangMaLiangOnLineAct_Data["ActivityTime"]) then
		return
	end
	--时间判断
	if not Sys_ChkFullTime(tShenLiangMaLiangOnLineAct_Data["ActivityTime"]) then 
		return
	end
	--等级
	if not User_JudgeLevelAndMetempsychosis(tShenLiangMaLiangOnLineAct_Data["Level"],tShenLiangMaLiangOnLineAct_Data["Metempsychosis"]) then 
		return
	end 
	local nPosX = tShenLiangMaLiangOnLineAct_Data["NPC1"]["CellX"]
	local nPosY = tShenLiangMaLiangOnLineAct_Data["NPC1"]["CellY"]
	local nMapId = tShenLiangMaLiangOnLineAct_Data["NPC1"]["Mapid"]
	local nNpcId = tShenLiangMaLiangOnLineAct_Data["NPC1"]["nNpcId"]
	Sys_GotoSomeWhere(nPosX,nPosY,nMapId,nNpcId)
end

--时间自检重置全服限量
function ShenLiangMaLiangOnLineAct_ResetReward()
	local nData5 = Get_SysDynaGlobalData5(tShenLiangMaLiangOnLineAct_Data["GlobalId"])
	if nData5 == 1 then 
		return
	end
	Sys_SetSynaGlobalData5(tShenLiangMaLiangOnLineAct_Data["GlobalId"],1)
	Sys_SetSynaGlobalData0(tShenLiangMaLiangOnLineAct_Data["GlobalId"],0)

end
function ShenLiangMaLiangOnLineAct_ResetReward2()
	local nAllData5 = Get_SysDynaGlobalData5(tShenLiangMaLiangOnLineAct_Data["GlobalId"])
	if nAllData5 == 1 then
		Sys_SetSynaGlobalData5(tShenLiangMaLiangOnLineAct_Data["GlobalId"],0)
	end
end


-- 判断活动地图
function ShenLiangMaLiangOnLineAct_JudgeMap(nUserId)
	local nMapId = Get_UserMapId(nUserId)
	local nFlag = false
	
	for i = 1 ,5 do
		local nMineMapId = tShenLiangMaLiangOnLineAct_Data["Map"][i]
		if nMineMapId == nMapId  then
			nFlag = true
			break
		end
	end
	return nFlag
end

-- 击杀玩家
function ShenLiangMaLiangOnLineAct_KillPlayer(nUserId, nBeKilled)
	--时间判断
	if  CommonFunc_GetBeforeActivityTime(tShenLiangMaLiangOnLineAct_Data["ActivityTime"]) then
		return
	end
	--时间判断
	if not Sys_ChkFullTime(tShenLiangMaLiangOnLineAct_Data["ActivityTime"]) then 
		return
	end
	--等级
	-- if not User_JudgeLevelAndMetempsychosis(tShenLiangMaLiangOnLineAct_Data["Level"],tShenLiangMaLiangOnLineAct_Data["Metempsychosis"]) then 
		-- return
	-- end 
	
	-- 判断是否在活动地图
	if not ShenLiangMaLiangOnLineAct_JudgeMap(nUserId) then
		return
	end

	local nEvent = tShenLiangMaLiangOnLineAct_Stc["EventType"][5]
	local nData = tShenLiangMaLiangOnLineAct_Stc["DataType"][5]
	-- 判断隔天
	if Task_StcInterval(nEvent, nData, 1, 4, nUserId) then
		Task_SetStatistic(nEvent, nData, 0, 1, nUserId)
		Task_SetStcTimestamp(nEvent, nData, 0, nUserId)
	end
	
	if Task_StcInterval(nEvent, nData, 1, 4, nBeKilled) then
		Task_SetStatistic(nEvent, nData, 0, 1, nBeKilled)
		Task_SetStcTimestamp(nEvent, nData, 0, nBeKilled)
	end
	
	Task_SetStatistic(nEvent, nData, 1, 1, nUserId)
	Task_SetStcTimestamp(nEvent, nData, 0, nUserId)
	
	Task_SetStatistic(nEvent, nData, 1, 1, nBeKilled)
	Task_SetStcTimestamp(nEvent, nData, 0, nBeKilled)
	
end

function ShenLiangMaLiangOnLineAct_ChckMap()
	Map_UserExeFunc(2057,-1,"ShenLiangMaLiangOnLineAct_AddStc")
end

function ShenLiangMaLiangOnLineAct_AddStc(nUserId)
	local nEvent = tShenLiangMaLiangOnLineAct_Stc["EventType"][6]
	local nType = tShenLiangMaLiangOnLineAct_Stc["DataType"][6]
	
	if not Task_StcInterval(nEvent,nType,1,4,nUserId) then
		return
	end

	Task_AddStatistic(nEvent,nType,1,1,nUserId)
	Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	
end

--英文新增
-- 礼包使用
function ShenLiangMaLiangOnLineAct_UsePack(nItemId)
	--背包空间判断
	local nSpace = RewardTemplate_GetRewardSpace(tShenLiangMaLiangOnLineAct_Awarditem[nItemId])
	if not User_CheckLeftSpace(nSpace) then
		local sStr = string.format(tShenLiangMaLiangOnLineAct_Text["Sys"]["NoSpace"],nSpace)
		Sys_MsgBox(sStr)
		return
	end
	if nItemId == 3311096 or nItemId == 3311094 then 
		-- 判断赠点天石上限
		local nMaxRewardMonoEMoney = tShenLiangMaLiangOnLineAct_Awarditem[nItemId]["RewardEMoneyMono"]["Value"]
		if Get_UserMonoEMoney() + nMaxRewardMonoEMoney > G_User_MaxEmoneyMono then
			Sys_MsgBox(tShenLiangMaLiangOnLineAct_Text["Sys"]["EmoneyMonoLimit"])
			return 
		end
	end
	
	RewardTemplate_UseItemAndMsg(tShenLiangMaLiangOnLineAct_Awarditem[nItemId])
end 


-------------------------- npc部分------------------------

-- 23167,'马良'
tNpcFace[2274] = 19

tNpcGossip[23167] = tNpcGossip[23167] or DefaultNpc:new{}
tNpcGossip[23167]["OptionHidden"] = 1
tNpcGossip[23167]["DialogueText"] = tShenLiangMaLiangOnLineAct_Text[23167]

--活动时间前
tNpcGossip[23167]["Text1-1"] = {111,112,113,114}
tNpcGossip[23167]["Text111"] = tShenLiangMaLiangOnLineAct_Text[23167]["Text111"]
tNpcGossip[23167]["Text112"] = tShenLiangMaLiangOnLineAct_Text[23167]["Text112"]
tNpcGossip[23167]["Text113"] = tShenLiangMaLiangOnLineAct_Text[23167]["Text113"]
tNpcGossip[23167]["Text114"] = tShenLiangMaLiangOnLineAct_Text[23167]["Text114"]

tNpcGossip[23167]["tOption1-1"] = {111}
tNpcGossip[23167]["ChkFunc1-1"] = function()
	return CommonFunc_GetBeforeActivityTime(tShenLiangMaLiangOnLineAct_Data["ActivityTime"])
end
tNpcGossip[23167]["Option111"] = tShenLiangMaLiangOnLineAct_Text[23167]["Option111"] 

--等级不足
tNpcGossip[23167]["Text1-2"] = {121,122,123,124}
tNpcGossip[23167]["Text121"] = tShenLiangMaLiangOnLineAct_Text[23167]["Text121"]
tNpcGossip[23167]["Text122"] = tShenLiangMaLiangOnLineAct_Text[23167]["Text122"]
tNpcGossip[23167]["Text123"] = tShenLiangMaLiangOnLineAct_Text[23167]["Text123"]
tNpcGossip[23167]["Text124"] = tShenLiangMaLiangOnLineAct_Text[23167]["Text124"]

tNpcGossip[23167]["tOption1-2"] = {121}
tNpcGossip[23167]["ChkFunc1-2"] = function()
	
	return not User_JudgeLevelAndMetempsychosis(tShenLiangMaLiangOnLineAct_Data["Level"],tShenLiangMaLiangOnLineAct_Data["Metempsychosis"]) and Sys_ChkFullTime(tShenLiangMaLiangOnLineAct_Data["ActivityTime"])
end
tNpcGossip[23167]["Option121"] = tShenLiangMaLiangOnLineAct_Text[23167]["Option121"] 

--活动时间中
tNpcGossip[23167]["Text1-3"] = {131,132,133,134}

tNpcGossip[23167]["Text131"] = tShenLiangMaLiangOnLineAct_Text[23167]["Text131"]
tNpcGossip[23167]["Text132"] = tShenLiangMaLiangOnLineAct_Text[23167]["Text132"]
tNpcGossip[23167]["Text133"] = tShenLiangMaLiangOnLineAct_Text[23167]["Text133"]
tNpcGossip[23167]["Text134"] = tShenLiangMaLiangOnLineAct_Text[23167]["Text134"]

tNpcGossip[23167]["tOption1-3"] = {131,132,133,134}
tNpcGossip[23167]["ChkFunc1-3"] = function()
	

	return User_JudgeLevelAndMetempsychosis(tShenLiangMaLiangOnLineAct_Data["Level"],tShenLiangMaLiangOnLineAct_Data["Metempsychosis"]) and Sys_ChkFullTime(tShenLiangMaLiangOnLineAct_Data["ActivityTime"])
end
tNpcGossip[23167]["Option131"] = tShenLiangMaLiangOnLineAct_Text[23167]["Option131"] 
tNpcGossip[23167]["Option132"] = tShenLiangMaLiangOnLineAct_Text[23167]["Option132"] 
tNpcGossip[23167]["Option133"] = tShenLiangMaLiangOnLineAct_Text[23167]["Option133"] 
tNpcGossip[23167]["Option134"] = tShenLiangMaLiangOnLineAct_Text[23167]["Option134"] 

tNpcGossip[23167]["OptionFunc131"] = "User_SendWebDialog</S>" .. tShenLiangMaLiangOnLineAct_Data["Web"]
tNpcGossip[23167]["OptionPoint132"] = "2-1"
tNpcGossip[23167]["OptionFunc133"] = "ShenLiangMaLiangOnLineAct_GoTo</N>23167" 

--活动时间后
tNpcGossip[23167]["Text1-4"] = {141,142}
tNpcGossip[23167]["Text141"] = tShenLiangMaLiangOnLineAct_Text[23167]["Text141"]
tNpcGossip[23167]["Text142"] = tShenLiangMaLiangOnLineAct_Text[23167]["Text142"]

tNpcGossip[23167]["tOption1-4"] = {141}
tNpcGossip[23167]["ChkFunc1-4"] = function()
	return not Sys_ChkFullTime(tShenLiangMaLiangOnLineAct_Data["ActivityTime"])
end
tNpcGossip[23167]["Option141"] = tShenLiangMaLiangOnLineAct_Text[23167]["Option141"] 


--第二层对白
-- 上交材料	
tNpcGossip[23167]["Text2-1"] = {211}
tNpcGossip[23167]["Text211"] = tShenLiangMaLiangOnLineAct_Text[23167]["Text211"]

tNpcGossip[23167]["tOption2-1"] = {211,212,213,214,215,216,217,218}
tNpcGossip[23167]["Option211"] = tShenLiangMaLiangOnLineAct_Text[23167]["Option2-1"][3310591] 
tNpcGossip[23167]["Option212"] = tShenLiangMaLiangOnLineAct_Text[23167]["Option2-1"][3310592] 
tNpcGossip[23167]["Option213"] = tShenLiangMaLiangOnLineAct_Text[23167]["Option2-1"][3310593] 
tNpcGossip[23167]["Option214"] = tShenLiangMaLiangOnLineAct_Text[23167]["Option2-1"][3310594] 
tNpcGossip[23167]["Option215"] = tShenLiangMaLiangOnLineAct_Text[23167]["Option2-1"][3310595]
tNpcGossip[23167]["Option216"] = tShenLiangMaLiangOnLineAct_Text[23167]["Option2-1"][3310596]
tNpcGossip[23167]["Option217"] = tShenLiangMaLiangOnLineAct_Text[23167]["Option2-1"][3310598]
tNpcGossip[23167]["Option218"] = tShenLiangMaLiangOnLineAct_Text[23167]["Option218"]

tNpcGossip[23167]["OptionFunc211"] = "ShenLiangMaLiangOnLineAct_HandItem</N>23167</N>3310591"
tNpcGossip[23167]["OptionFunc212"] = "ShenLiangMaLiangOnLineAct_HandItem</N>23167</N>3310592"
tNpcGossip[23167]["OptionFunc213"] = "ShenLiangMaLiangOnLineAct_HandItem</N>23167</N>3310593"
tNpcGossip[23167]["OptionFunc214"] = "ShenLiangMaLiangOnLineAct_HandItem</N>23167</N>3310594"
tNpcGossip[23167]["OptionFunc215"] = "ShenLiangMaLiangOnLineAct_HandItem</N>23167</N>3310595"
tNpcGossip[23167]["OptionFunc216"] = "ShenLiangMaLiangOnLineAct_HandItem</N>23167</N>3310596"
tNpcGossip[23167]["OptionFunc217"] = "ShenLiangMaLiangOnLineAct_HandItem</N>23167</N>3310598"
tNpcGossip[23167]["OptionFunc218"] = "ShenLiangMaLiangOnLineAct_HandAllItem</N>23167"
tNpcGossip[23167]["ChkFunc2-1"] = function()
	
	for a,b in pairs(tShenLiangMaLiangOnLineAct_Data["Item"]) do

		local nEvent = tShenLiangMaLiangOnLineAct_Stc["EventType"][b]
		local nType = tShenLiangMaLiangOnLineAct_Stc["DataType"][b]
		local nData = Get_UserStatisticValue(nEvent,nType)
		tNpcGossip[23167]["Option21"..a] = string.format(tShenLiangMaLiangOnLineAct_Text[23167]["Option2-1"][b],nData)

	end
	return true
end

-- 没有某种材料
tNpcGossip[23167]["Text3-1"] = {311}
tNpcGossip[23167]["Text311"] = tShenLiangMaLiangOnLineAct_Text[23167]["Text311"]

tNpcGossip[23167]["tOption3-1"] = {311}
tNpcGossip[23167]["Option311"] = tShenLiangMaLiangOnLineAct_Text[23167]["Option311"] 

--没有任何材料
tNpcGossip[23167]["Text3-2"] = {321}
tNpcGossip[23167]["Text321"] = tShenLiangMaLiangOnLineAct_Text[23167]["Text321"]

tNpcGossip[23167]["tOption3-2"] = {321}
tNpcGossip[23167]["Option321"] = tShenLiangMaLiangOnLineAct_Text[23167]["Option321"] 

--上交成功
tNpcGossip[23167]["Text3-3"] = {331}
tNpcGossip[23167]["Text331"] = tShenLiangMaLiangOnLineAct_Text[23167]["Text331"]

tNpcGossip[23167]["tOption3-3"] = {331}
tNpcGossip[23167]["Option331"] = tShenLiangMaLiangOnLineAct_Text[23167]["Option331"] 

-- 23168,'颜料商人
tNpcFace[2275] = 103

tNpcGossip[23168] = tNpcGossip[23168] or DefaultNpc:new{}
tNpcGossip[23168]["OptionHidden"] = 1
tNpcGossip[23168]["DialogueText"] = tShenLiangMaLiangOnLineAct_Text[23168]

--活动时间前
tNpcGossip[23168]["Text1-1"] = {111,112,113,114}
tNpcGossip[23168]["Text111"] = tShenLiangMaLiangOnLineAct_Text[23168]["Text111"]
tNpcGossip[23168]["Text112"] = tShenLiangMaLiangOnLineAct_Text[23168]["Text112"]
tNpcGossip[23168]["Text113"] = tShenLiangMaLiangOnLineAct_Text[23168]["Text113"]
tNpcGossip[23168]["Text114"] = tShenLiangMaLiangOnLineAct_Text[23168]["Text114"]

tNpcGossip[23168]["tOption1-1"] = {111}
tNpcGossip[23168]["ChkFunc1-1"] = function()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["ShenLiangMaLiangOnLineAct"]["ActivityTime1"])
end
tNpcGossip[23168]["Option111"] = tShenLiangMaLiangOnLineAct_Text[23168]["Option111"] 

--等级不足
tNpcGossip[23168]["Text1-2"] = {121,122,123,124}
tNpcGossip[23168]["Text121"] = tShenLiangMaLiangOnLineAct_Text[23168]["Text121"]
tNpcGossip[23168]["Text122"] = tShenLiangMaLiangOnLineAct_Text[23168]["Text122"]
tNpcGossip[23168]["Text123"] = tShenLiangMaLiangOnLineAct_Text[23168]["Text123"]
tNpcGossip[23168]["Text124"] = tShenLiangMaLiangOnLineAct_Text[23168]["Text124"]

tNpcGossip[23168]["tOption1-2"] = {121}
tNpcGossip[23168]["ChkFunc1-2"] = function()
	
	return not User_JudgeLevelAndMetempsychosis(tShenLiangMaLiangOnLineAct_Data["Level"],tShenLiangMaLiangOnLineAct_Data["Metempsychosis"]) and Sys_ChkFullTime(tActivityTime["ShenLiangMaLiangOnLineAct"]["ActivityTime1"])
end
tNpcGossip[23168]["Option121"] = tShenLiangMaLiangOnLineAct_Text[23168]["Option121"] 

--活动时间中
tNpcGossip[23168]["Text1-3"] = {131,132,133,134}

tNpcGossip[23168]["Text131"] = tShenLiangMaLiangOnLineAct_Text[23168]["Text131"]
tNpcGossip[23168]["Text132"] = tShenLiangMaLiangOnLineAct_Text[23168]["Text132"]
tNpcGossip[23168]["Text133"] = tShenLiangMaLiangOnLineAct_Text[23168]["Text133"]
tNpcGossip[23168]["Text134"] = tShenLiangMaLiangOnLineAct_Text[23168]["Text134"]

tNpcGossip[23168]["tOption1-3"] = {131,132}
tNpcGossip[23168]["ChkFunc1-3"] = function()
	
	return User_JudgeLevelAndMetempsychosis(tShenLiangMaLiangOnLineAct_Data["Level"],tShenLiangMaLiangOnLineAct_Data["Metempsychosis"]) and Sys_ChkFullTime(tActivityTime["ShenLiangMaLiangOnLineAct"]["ActivityTime1"])
end
tNpcGossip[23168]["Option131"] = tShenLiangMaLiangOnLineAct_Text[23168]["Option131"] 
tNpcGossip[23168]["Option132"] = tShenLiangMaLiangOnLineAct_Text[23168]["Option132"] 

tNpcGossip[23168]["OptionFunc131"] = "ShenLiangMaLiangOnLineAct_Open</N>23168" 


--活动时间后
tNpcGossip[23168]["Text1-4"] = {141,142}
tNpcGossip[23168]["Text141"] = tShenLiangMaLiangOnLineAct_Text[23168]["Text141"]
tNpcGossip[23168]["Text142"] = tShenLiangMaLiangOnLineAct_Text[23168]["Text142"]

tNpcGossip[23168]["tOption1-4"] = {141}
tNpcGossip[23168]["ChkFunc1-4"] = function()
	return not Sys_ChkFullTime(tActivityTime["ShenLiangMaLiangOnLineAct"]["ActivityTime1"])
end
tNpcGossip[23168]["Option141"] = tShenLiangMaLiangOnLineAct_Text[23168]["Option141"] 




---------------------------------物品部分---------------------------------------------
-- 3310590,'颜料包'
-- 3310591,'石青',9
-- 3310592,'褚红',9
-- 3310593,'朱砂',9
-- 3310594,'海蓝',9
-- 3310595,'绛紫',9
-- 3310596,'浅白',9
-- 3310597,'画卷包'
-- 3310598,'画卷',9

tItem[3310590] = tItem[3310590] or {}
tItem[3310590]["Function"] = function(nItemId,sItemName)
	ShenLiangMaLiangOnLineAct_UseBag(nItemId)
end

-- 3310597,'画卷包'
tItem[3310597] = tItem[3310597] or {}
tItem[3310597]["Function"] = function(nItemId,sItemName)
	ShenLiangMaLiangOnLineAct_UseItem(nItemId)
end

-- 3310591,'石青'
tItem[3310591] = tItem[3310591] or {}
tItem[3310591]["Function"] = function(nItemId,sItemName)
	ShenLiangMaLiangOnLineAct_GoNpc(nItemId)
end

tItem[3310592] = tItem[3310591] or {}
tItem[3310593] = tItem[3310591] or {}
tItem[3310594] = tItem[3310591] or {}
tItem[3310595] = tItem[3310591] or {}
tItem[3310596] = tItem[3310591] or {}
tItem[3310598] = tItem[3310591] or {}


-- 3311090,'英雄集结礼盒
tItem[3311090] = tItem[3311090] or {}
tItem[3311090]["Function"] = function(nItemId,sItemName)
	ShenLiangMaLiangOnLineAct_UsePack(nItemId)
end
-- 3311091,'水火交融礼盒
-- 3311092,'叱咤风云礼盒
-- 3311093,'今日重聚礼盒
-- 3311094,'季军画师礼盒
-- 3311095,'亚军画师礼盒
-- 3311096,'冠军画师礼盒
tItem[3311091] = tItem[3311090] or {}
tItem[3311092] = tItem[3311090] or {}
tItem[3311093] = tItem[3311090] or {}
tItem[3311094] = tItem[3311090] or {}
tItem[3311095] = tItem[3311090] or {}
tItem[3311096] = tItem[3311090] or {}


--时间自检重置全服限量
local tShenLiangMaLiangOnLineAct_Reset = {}
tShenLiangMaLiangOnLineAct_Reset["Type"] = 2
tShenLiangMaLiangOnLineAct_Reset["TimeType"] = 4
tShenLiangMaLiangOnLineAct_Reset["Multiple"] = {}
tShenLiangMaLiangOnLineAct_Reset["Multiple"][1]  = "00:00 00:03"
tShenLiangMaLiangOnLineAct_Reset["Func"] = ShenLiangMaLiangOnLineAct_ResetReward
table.insert(tSystemTime_InitialData,tShenLiangMaLiangOnLineAct_Reset)


local tShenLiangMaLiangOnLineAct_Reset2 = {}
tShenLiangMaLiangOnLineAct_Reset2["Type"] = 2
tShenLiangMaLiangOnLineAct_Reset2["TimeType"] = 4
tShenLiangMaLiangOnLineAct_Reset2["Multiple"] = {}
tShenLiangMaLiangOnLineAct_Reset2["Multiple"][1]  = "00:04 00:06"
tShenLiangMaLiangOnLineAct_Reset2["Func"] = ShenLiangMaLiangOnLineAct_ResetReward2
table.insert(tSystemTime_InitialData,tShenLiangMaLiangOnLineAct_Reset2)


local tShenLiangMaLiangOnLineAct_AddStc = {}
	tShenLiangMaLiangOnLineAct_AddStc[1] = {}
	tShenLiangMaLiangOnLineAct_AddStc[1]["ActivityTime"] = tShenLiangMaLiangOnLineAct_Data["ActivityTime"]
	tShenLiangMaLiangOnLineAct_AddStc[1]["Type"] = 6
	tShenLiangMaLiangOnLineAct_AddStc[1]["TimeType"] = 3
	tShenLiangMaLiangOnLineAct_AddStc[1]["Time"] = "6 21:00 6 22:00"
	tShenLiangMaLiangOnLineAct_AddStc[1]["Func"] = ShenLiangMaLiangOnLineAct_ChckMap
table.insert(tSystemTime_InitialData,tShenLiangMaLiangOnLineAct_AddStc[1])

---------------------------------杀人触发----------------------------------------------
tUserKilled["tFunction"] = tUserKilled["tFunction"] or {}
table.insert(tUserKilled["tFunction"], ShenLiangMaLiangOnLineAct_KillPlayer)




