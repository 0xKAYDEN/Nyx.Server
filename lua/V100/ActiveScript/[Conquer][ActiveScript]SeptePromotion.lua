------------------------------------------------------------------------------------
--Name:			160810【英文征服】【活动脚本】9月版本促销活动
--Creator: 		陈彦宏
--Created:		2016/08/10
------------------------------------------------------------------------------------
--[[
命名前缀 SeptePromtion_

#logid 12000489

]]--
-------------------------------礼包表配置------------------------
local tSeptePromtion_Item = {}
--气力值精装礼包	5000气力值	1颗究极通神丹3003126
	tSeptePromtion_Item[3300060] = {}
	tSeptePromtion_Item[3300060][1] = {}
	tSeptePromtion_Item[3300060][1]["RewardItem"] = {}
	tSeptePromtion_Item[3300060][1]["RewardItem"][1] = {}
	tSeptePromtion_Item[3300060][1]["RewardItem"][1]["Id"] = 3003126
	tSeptePromtion_Item[3300060][1]["RewardItem"][1]["Attr"] = "0 1"
	tSeptePromtion_Item[3300060][1] ["RewardStrengthValue"] = {}
	tSeptePromtion_Item[3300060][1] ["RewardStrengthValue"]["Value"] = 5000
	tSeptePromtion_Item[3300060][1]["DeleteItem"] = {}
	tSeptePromtion_Item[3300060][1]["DeleteItem"][1] = {}
	tSeptePromtion_Item[3300060][1]["DeleteItem"][1]["Id"] = 3300060
	tSeptePromtion_Item[3300060][1]["Talk"] = tSeptePromtion_Text[3300060][1]
	tSeptePromtion_Item[3300060][1]["LogId"] = 12000489

--气力值豪华礼包	50000气力值	5颗八宝护气丹3005360
	tSeptePromtion_Item[3300061] = {}
	tSeptePromtion_Item[3300061][1] = {}
	tSeptePromtion_Item[3300061][1]["RewardItem"] = {}
	tSeptePromtion_Item[3300061][1]["RewardItem"][1] = {}
	tSeptePromtion_Item[3300061][1]["RewardItem"][1]["Id"] = 3005360
	tSeptePromtion_Item[3300061][1]["RewardItem"][1]["Attr"] = "0 5"
	tSeptePromtion_Item[3300061][1] ["RewardStrengthValue"] = {}
	tSeptePromtion_Item[3300061][1] ["RewardStrengthValue"]["Value"] = 50000
	tSeptePromtion_Item[3300061][1]["DeleteItem"] = {}
	tSeptePromtion_Item[3300061][1]["DeleteItem"][1] = {}
	tSeptePromtion_Item[3300061][1]["DeleteItem"][1]["Id"] = 3300061
	tSeptePromtion_Item[3300061][1]["Talk"] = tSeptePromtion_Text[3300061][1]
	tSeptePromtion_Item[3300061][1]["LogId"] = 12000489

--小抽奖券礼包	300个小抽奖卷711504	1颗+4赤炼石730004
	tSeptePromtion_Item[3300062] = {}
	tSeptePromtion_Item[3300062][1] = {}
	tSeptePromtion_Item[3300062][1]["RewardItem"] = {}
	tSeptePromtion_Item[3300062][1]["RewardItem"][1] = {}
	tSeptePromtion_Item[3300062][1]["RewardItem"][1]["Id"] = 711504
	tSeptePromtion_Item[3300062][1]["RewardItem"][1]["Attr"] = "0 300"
	tSeptePromtion_Item[3300062][1]["RewardItem"][2] = {}
	tSeptePromtion_Item[3300062][1]["RewardItem"][2]["Id"] = 730004
	tSeptePromtion_Item[3300062][1]["RewardItem"][2]["Attr"] = "0 1"
	tSeptePromtion_Item[3300062][1]["DeleteItem"] = {}
	tSeptePromtion_Item[3300062][1]["DeleteItem"][1] = {}
	tSeptePromtion_Item[3300062][1]["DeleteItem"][1]["Id"] = 3300062
	tSeptePromtion_Item[3300062][1]["Talk"] = tSeptePromtion_Text[3300062][1]
	tSeptePromtion_Item[3300062][1]["LogId"] = 12000489

--固化石礼包	1颗固化石723694	1个六阶神魂可选包3005893
	tSeptePromtion_Item[3300063] = {}
	tSeptePromtion_Item[3300063][1] = {}
	tSeptePromtion_Item[3300063][1]["RewardItem"] = {}
	tSeptePromtion_Item[3300063][1]["RewardItem"][1] = {}
	tSeptePromtion_Item[3300063][1]["RewardItem"][1]["Id"] = 723694
	tSeptePromtion_Item[3300063][1]["RewardItem"][1]["Attr"] = "0 1"
	tSeptePromtion_Item[3300063][1]["RewardItem"][2] = {}
	tSeptePromtion_Item[3300063][1]["RewardItem"][2]["Id"] = 3005893
	tSeptePromtion_Item[3300063][1]["RewardItem"][2]["Attr"] = "0 1"
	tSeptePromtion_Item[3300063][1]["DeleteItem"] = {}
	tSeptePromtion_Item[3300063][1]["DeleteItem"][1] = {}
	tSeptePromtion_Item[3300063][1]["DeleteItem"][1]["Id"] = 3300063
	tSeptePromtion_Item[3300063][1]["Talk"] = tSeptePromtion_Text[3300063][1]
	tSeptePromtion_Item[3300063][1]["LogId"] = 12000489

--超大固化石礼包	1颗大固化石723695	1个七阶神魂可选包3006233
	tSeptePromtion_Item[3300064] = {}
	tSeptePromtion_Item[3300064][1] = {}
	tSeptePromtion_Item[3300064][1]["RewardItem"] = {}
	tSeptePromtion_Item[3300064][1]["RewardItem"][1] = {}
	tSeptePromtion_Item[3300064][1]["RewardItem"][1]["Id"] = 723695
	tSeptePromtion_Item[3300064][1]["RewardItem"][1]["Attr"] = "0 1"
	tSeptePromtion_Item[3300064][1]["RewardItem"][2] = {}
	tSeptePromtion_Item[3300064][1]["RewardItem"][2]["Id"] = 3006233
	tSeptePromtion_Item[3300064][1]["RewardItem"][2]["Attr"] = "0 1"
	tSeptePromtion_Item[3300064][1]["DeleteItem"] = {}
	tSeptePromtion_Item[3300064][1]["DeleteItem"][1] = {}
	tSeptePromtion_Item[3300064][1]["DeleteItem"][1]["Id"] = 3300064
	tSeptePromtion_Item[3300064][1]["Talk"] = tSeptePromtion_Text[3300064][1]
	tSeptePromtion_Item[3300064][1]["LogId"] = 12000489
	
--金刚坚钻礼包	1个金钢坚钻1200005	1个七星宝钻1200006
	tSeptePromtion_Item[3300065] = {}
	tSeptePromtion_Item[3300065][1] = {}
	tSeptePromtion_Item[3300065][1]["RewardItem"] = {}
	tSeptePromtion_Item[3300065][1]["RewardItem"][1] = {}
	tSeptePromtion_Item[3300065][1]["RewardItem"][1]["Id"] = 1200005
	tSeptePromtion_Item[3300065][1]["RewardItem"][1]["Attr"] = "0 1"
	tSeptePromtion_Item[3300065][1]["RewardItem"][2] = {}
	tSeptePromtion_Item[3300065][1]["RewardItem"][2]["Id"] = 1200006
	tSeptePromtion_Item[3300065][1]["RewardItem"][2]["Attr"] = "0 1"
	tSeptePromtion_Item[3300065][1]["DeleteItem"] = {}
	tSeptePromtion_Item[3300065][1]["DeleteItem"][1] = {}
	tSeptePromtion_Item[3300065][1]["DeleteItem"][1]["Id"] = 3300065
	tSeptePromtion_Item[3300065][1]["Talk"] = tSeptePromtion_Text[3300065][1]
	tSeptePromtion_Item[3300065][1]["LogId"] = 12000489

--免费强炼丹礼包	100颗免费强炼丹3003124	20颗护心丹3300019
	tSeptePromtion_Item[3300066] = {}
	tSeptePromtion_Item[3300066][1] = {}
	tSeptePromtion_Item[3300066][1]["RewardItem"] = {}
	tSeptePromtion_Item[3300066][1]["RewardItem"][1] = {}
	tSeptePromtion_Item[3300066][1]["RewardItem"][1]["Id"] = 3003124
	tSeptePromtion_Item[3300066][1]["RewardItem"][1]["Attr"] = "0 100"
	tSeptePromtion_Item[3300066][1]["RewardItem"][2] = {}
	tSeptePromtion_Item[3300066][1]["RewardItem"][2]["Id"] = 3300019
	tSeptePromtion_Item[3300066][1]["RewardItem"][2]["Attr"] = "0 1"
	tSeptePromtion_Item[3300066][1]["DeleteItem"] = {}
	tSeptePromtion_Item[3300066][1]["DeleteItem"][1] = {}
	tSeptePromtion_Item[3300066][1]["DeleteItem"][1]["Id"] = 3300066
	tSeptePromtion_Item[3300066][1]["Talk"] = tSeptePromtion_Text[3300066][1]
	tSeptePromtion_Item[3300066][1]["LogId"] = 12000489

--究极通神丹礼包	50颗究极通神丹3003126	20颗护心丹3300019
	tSeptePromtion_Item[3300067] = {}
	tSeptePromtion_Item[3300067][1] = {}
	tSeptePromtion_Item[3300067][1]["RewardItem"] = {}
	tSeptePromtion_Item[3300067][1]["RewardItem"][1] = {}
	tSeptePromtion_Item[3300067][1]["RewardItem"][1]["Id"] = 3003126
	tSeptePromtion_Item[3300067][1]["RewardItem"][1]["Attr"] = "0 50"
	tSeptePromtion_Item[3300067][1]["RewardItem"][2] = {}
	tSeptePromtion_Item[3300067][1]["RewardItem"][2]["Id"] = 3300019
	tSeptePromtion_Item[3300067][1]["RewardItem"][2]["Attr"] = "0 1"
	tSeptePromtion_Item[3300067][1]["DeleteItem"] = {}
	tSeptePromtion_Item[3300067][1]["DeleteItem"][1] = {}
	tSeptePromtion_Item[3300067][1]["DeleteItem"][1]["Id"] = 3300067
	tSeptePromtion_Item[3300067][1]["Talk"] = tSeptePromtion_Text[3300067][1]
	tSeptePromtion_Item[3300067][1]["LogId"] = 12000489

--龙珠卷礼包	1份龙珠卷720028	10份流星卷720027
	tSeptePromtion_Item[3300068] = {}
	tSeptePromtion_Item[3300068][1] = {}
	tSeptePromtion_Item[3300068][1]["RewardItem"] = {}
	tSeptePromtion_Item[3300068][1]["RewardItem"][1] = {}
	tSeptePromtion_Item[3300068][1]["RewardItem"][1]["Id"] = 720028
	tSeptePromtion_Item[3300068][1]["RewardItem"][1]["Attr"] = "0 1"
	tSeptePromtion_Item[3300068][1]["RewardItem"][2] = {}
	tSeptePromtion_Item[3300068][1]["RewardItem"][2]["Id"] = 720027
	tSeptePromtion_Item[3300068][1]["RewardItem"][2]["Attr"] = "0 10"
	tSeptePromtion_Item[3300068][1]["DeleteItem"] = {}
	tSeptePromtion_Item[3300068][1]["DeleteItem"][1] = {}
	tSeptePromtion_Item[3300068][1]["DeleteItem"][1]["Id"] = 3300068
	tSeptePromtion_Item[3300068][1]["Talk"] = tSeptePromtion_Text[3300068][1]
	tSeptePromtion_Item[3300068][1]["LogId"] = 12000489

--+3赤炼石礼包	+3赤炼石730003	4颗微光星陨石3009000
	tSeptePromtion_Item[3300069] = {}
	tSeptePromtion_Item[3300069][1] = {}
	tSeptePromtion_Item[3300069][1]["RewardItem"] = {}
	tSeptePromtion_Item[3300069][1]["RewardItem"][1] = {}
	tSeptePromtion_Item[3300069][1]["RewardItem"][1]["Id"] = 730003
	tSeptePromtion_Item[3300069][1]["RewardItem"][1]["Attr"] = "0 1"
	tSeptePromtion_Item[3300069][1]["RewardItem"][2] = {}
	tSeptePromtion_Item[3300069][1]["RewardItem"][2]["Id"] = 3009000
	tSeptePromtion_Item[3300069][1]["RewardItem"][2]["Attr"] = "0 4 0 2880 1"
	tSeptePromtion_Item[3300069][1]["DeleteItem"] = {}
	tSeptePromtion_Item[3300069][1]["DeleteItem"][1] = {}
	tSeptePromtion_Item[3300069][1]["DeleteItem"][1]["Id"] = 3300069
	tSeptePromtion_Item[3300069][1]["Talk"] = tSeptePromtion_Text[3300069][1]
	tSeptePromtion_Item[3300069][1]["LogId"] = 12000489

--+5赤炼石礼包	+5赤炼石730005	2颗明亮星陨石3009001
	tSeptePromtion_Item[3300070] = {}
	tSeptePromtion_Item[3300070][1] = {}
	tSeptePromtion_Item[3300070][1]["RewardItem"] = {}
	tSeptePromtion_Item[3300070][1]["RewardItem"][1] = {}
	tSeptePromtion_Item[3300070][1]["RewardItem"][1]["Id"] = 730005
	tSeptePromtion_Item[3300070][1]["RewardItem"][1]["Attr"] = "0 1"
	tSeptePromtion_Item[3300070][1]["RewardItem"][2] = {}
	tSeptePromtion_Item[3300070][1]["RewardItem"][2]["Id"] = 3009001
	tSeptePromtion_Item[3300070][1]["RewardItem"][2]["Attr"] = "0 2 0 2880 1"
	tSeptePromtion_Item[3300070][1]["DeleteItem"] = {}
	tSeptePromtion_Item[3300070][1]["DeleteItem"][1] = {}
	tSeptePromtion_Item[3300070][1]["DeleteItem"][1]["Id"] = 3300070
	tSeptePromtion_Item[3300070][1]["Talk"] = tSeptePromtion_Text[3300070][1]
	tSeptePromtion_Item[3300070][1]["LogId"] = 12000489

--+6赤炼石礼包	+6赤炼石730006	1颗晶莹星陨石3009002
	tSeptePromtion_Item[3300071] = {}
	tSeptePromtion_Item[3300071][1] = {}
	tSeptePromtion_Item[3300071][1]["RewardItem"] = {}
	tSeptePromtion_Item[3300071][1]["RewardItem"][1] = {}
	tSeptePromtion_Item[3300071][1]["RewardItem"][1]["Id"] = 730006
	tSeptePromtion_Item[3300071][1]["RewardItem"][1]["Attr"] = "0 1"
	tSeptePromtion_Item[3300071][1]["RewardItem"][2] = {}
	tSeptePromtion_Item[3300071][1]["RewardItem"][2]["Id"] = 3009002
	tSeptePromtion_Item[3300071][1]["RewardItem"][2]["Attr"] = "0 1 0 2880 1"
	tSeptePromtion_Item[3300071][1]["DeleteItem"] = {}
	tSeptePromtion_Item[3300071][1]["DeleteItem"][1] = {}
	tSeptePromtion_Item[3300071][1]["DeleteItem"][1]["Id"] = 3300071
	tSeptePromtion_Item[3300071][1]["Talk"] = tSeptePromtion_Text[3300071][1]
	tSeptePromtion_Item[3300071][1]["LogId"] = 12000489

--+8赤炼石礼包	+8赤炼石730008	1颗璀璨星陨石3009003
	tSeptePromtion_Item[3300072] = {}
	tSeptePromtion_Item[3300072][1] = {}
	tSeptePromtion_Item[3300072][1]["RewardItem"] = {}
	tSeptePromtion_Item[3300072][1]["RewardItem"][1] = {}
	tSeptePromtion_Item[3300072][1]["RewardItem"][1]["Id"] = 730008
	tSeptePromtion_Item[3300072][1]["RewardItem"][1]["Attr"] = "0 1"
	tSeptePromtion_Item[3300072][1]["RewardItem"][2] = {}
	tSeptePromtion_Item[3300072][1]["RewardItem"][2]["Id"] = 3009003
	tSeptePromtion_Item[3300072][1]["RewardItem"][2]["Attr"] = "0 1 0 2880 1"
	tSeptePromtion_Item[3300072][1]["DeleteItem"] = {}
	tSeptePromtion_Item[3300072][1]["DeleteItem"][1] = {}
	tSeptePromtion_Item[3300072][1]["DeleteItem"][1]["Id"] = 3300072
	tSeptePromtion_Item[3300072][1]["Talk"] = tSeptePromtion_Text[3300072][1]
	tSeptePromtion_Item[3300072][1]["LogId"] = 12000489

--修行值大礼包	1万修行值	200修为值
	tSeptePromtion_Item[3300073] = {}
	tSeptePromtion_Item[3300073][1] = {}
	tSeptePromtion_Item[3300073][1] ["RewardCultivation"] = {}
	tSeptePromtion_Item[3300073][1] ["RewardCultivation"]["Value"] = 10000
	tSeptePromtion_Item[3300073][1] ["RewardRepairValue"] = {}
	tSeptePromtion_Item[3300073][1] ["RewardRepairValue"]["Value"] = 200
	tSeptePromtion_Item[3300073][1]["DeleteItem"] = {}
	tSeptePromtion_Item[3300073][1]["DeleteItem"][1] = {}
	tSeptePromtion_Item[3300073][1]["DeleteItem"][1]["Id"] = 3300073
	tSeptePromtion_Item[3300073][1]["Talk"] = tSeptePromtion_Text[3300073][1]
	tSeptePromtion_Item[3300073][1]["LogId"] = 12000489

--转世重生礼包	1块免试金牌723701	1瓶乾坤九转神露711083或1个涅槃灵石721259
	tSeptePromtion_Item[3300074] = {}
	tSeptePromtion_Item[3300074][1] = {}
	tSeptePromtion_Item[3300074][1]["RewardItem"] = {}
	tSeptePromtion_Item[3300074][1]["RewardItem"][1] = {}
	tSeptePromtion_Item[3300074][1]["RewardItem"][1]["Id"] = 723701
	tSeptePromtion_Item[3300074][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tSeptePromtion_Item[3300074][1]["RewardItem"][2] = {}
	tSeptePromtion_Item[3300074][1]["RewardItem"][2]["Id"] = 711083
	tSeptePromtion_Item[3300074][1]["RewardItem"][2]["Attr"] = "0 1"
	tSeptePromtion_Item[3300074][1]["DeleteItem"] = {}
	tSeptePromtion_Item[3300074][1]["DeleteItem"][1] = {}
	tSeptePromtion_Item[3300074][1]["DeleteItem"][1]["Id"] = 3300074
	tSeptePromtion_Item[3300074][1]["Talk"] = tSeptePromtion_Text[3300074][1]
	tSeptePromtion_Item[3300074][1]["LogId"] = 12000489

	tSeptePromtion_Item[3300074][2] = {}
	tSeptePromtion_Item[3300074][2]["RewardItem"] = {}
	tSeptePromtion_Item[3300074][2]["RewardItem"][1] = {}
	tSeptePromtion_Item[3300074][2]["RewardItem"][1]["Id"] = 723701
	tSeptePromtion_Item[3300074][2]["RewardItem"][1]["Attr"] = "0 1 3"
	tSeptePromtion_Item[3300074][2]["RewardItem"][2] = {}
	tSeptePromtion_Item[3300074][2]["RewardItem"][2]["Id"] = 721259
	tSeptePromtion_Item[3300074][2]["RewardItem"][2]["Attr"] = "0 1"
	tSeptePromtion_Item[3300074][2]["DeleteItem"] = {}
	tSeptePromtion_Item[3300074][2]["DeleteItem"][1] = {}
	tSeptePromtion_Item[3300074][2]["DeleteItem"][1]["Id"] = 3300074
	tSeptePromtion_Item[3300074][2]["Talk"] = tSeptePromtion_Text[3300074][2]
	tSeptePromtion_Item[3300074][2]["LogId"] = 12000489

--超级经验礼包	1颗九转聚神丹722057	2瓶30分钟5倍经验药水728777
	tSeptePromtion_Item[3300075] = {}
	tSeptePromtion_Item[3300075][1] = {}
	tSeptePromtion_Item[3300075][1]["RewardItem"] = {}
	tSeptePromtion_Item[3300075][1]["RewardItem"][1] = {}
	tSeptePromtion_Item[3300075][1]["RewardItem"][1]["Id"] = 722057
	tSeptePromtion_Item[3300075][1]["RewardItem"][1]["Attr"] = "0 1"
	tSeptePromtion_Item[3300075][1]["RewardItem"][2] = {}
	tSeptePromtion_Item[3300075][1]["RewardItem"][2]["Id"] = 728777
	tSeptePromtion_Item[3300075][1]["RewardItem"][2]["Attr"] = "0 2"
	tSeptePromtion_Item[3300075][1]["DeleteItem"] = {}
	tSeptePromtion_Item[3300075][1]["DeleteItem"][1] = {}
	tSeptePromtion_Item[3300075][1]["DeleteItem"][1]["Id"] = 3300075
	tSeptePromtion_Item[3300075][1]["Talk"] = tSeptePromtion_Text[3300075][1]
	tSeptePromtion_Item[3300075][1]["LogId"] = 12000489

--优质天怒宝石礼包	1个优质天怒宝石700103	5颗明亮星陨石3009001
	tSeptePromtion_Item[3300076] = {}
	tSeptePromtion_Item[3300076][1] = {}
	tSeptePromtion_Item[3300076][1]["RewardItem"] = {}
	tSeptePromtion_Item[3300076][1]["RewardItem"][1] = {}
	tSeptePromtion_Item[3300076][1]["RewardItem"][1]["Id"] = 700103
	tSeptePromtion_Item[3300076][1]["RewardItem"][1]["Attr"] = "0 1"
	tSeptePromtion_Item[3300076][1]["RewardItem"][2] = {}
	tSeptePromtion_Item[3300076][1]["RewardItem"][2]["Id"] = 3009001
	tSeptePromtion_Item[3300076][1]["RewardItem"][2]["Attr"] = "0 5 0 2880 1"
	tSeptePromtion_Item[3300076][1]["DeleteItem"] = {}
	tSeptePromtion_Item[3300076][1]["DeleteItem"][1] = {}
	tSeptePromtion_Item[3300076][1]["DeleteItem"][1]["Id"] = 3300076
	tSeptePromtion_Item[3300076][1]["Talk"] = tSeptePromtion_Text[3300076][1]
	tSeptePromtion_Item[3300076][1]["LogId"] = 12000489

--优质地灵宝石礼包	1个优质地灵宝石700123	5颗明亮星陨石3009001
	tSeptePromtion_Item[3300077] = {}
	tSeptePromtion_Item[3300077][1] = {}
	tSeptePromtion_Item[3300077][1]["RewardItem"] = {}
	tSeptePromtion_Item[3300077][1]["RewardItem"][1] = {}
	tSeptePromtion_Item[3300077][1]["RewardItem"][1]["Id"] = 700123
	tSeptePromtion_Item[3300077][1]["RewardItem"][1]["Attr"] = "0 1"
	tSeptePromtion_Item[3300077][1]["RewardItem"][2] = {}
	tSeptePromtion_Item[3300077][1]["RewardItem"][2]["Id"] = 3009001
	tSeptePromtion_Item[3300077][1]["RewardItem"][2]["Attr"] = "0 5 0 2880 1"
	tSeptePromtion_Item[3300077][1]["DeleteItem"] = {}
	tSeptePromtion_Item[3300077][1]["DeleteItem"][1] = {}
	tSeptePromtion_Item[3300077][1]["DeleteItem"][1]["Id"] = 3300077
	tSeptePromtion_Item[3300077][1]["Talk"] = tSeptePromtion_Text[3300077][1]
	tSeptePromtion_Item[3300077][1]["LogId"] = 12000489

--护心丹精装礼包	20颗护心丹3002029
	tSeptePromtion_Item[3300019] = {}
	tSeptePromtion_Item[3300019][1] = {}
	tSeptePromtion_Item[3300019][1]["RewardItem"] = {}
	tSeptePromtion_Item[3300019][1]["RewardItem"][1] = {}
	tSeptePromtion_Item[3300019][1]["RewardItem"][1]["Id"] = 3002029
	tSeptePromtion_Item[3300019][1]["RewardItem"][1]["Attr"] = "0 20 0 0 1"
	tSeptePromtion_Item[3300019][1]["DeleteItem"] = {}
	tSeptePromtion_Item[3300019][1]["DeleteItem"][1] = {}
	tSeptePromtion_Item[3300019][1]["DeleteItem"][1]["Id"] = 3300019
	tSeptePromtion_Item[3300019][1]["Talk"] = tSeptePromtion_Text[3300019][1]
	tSeptePromtion_Item[3300019][1]["LogId"] = 12000489

----------------------------------逻辑部分--------------------------------------------
function tSeptePromtion_UseSweetie(nItemId,nIndex)
	RewardTemplate_UseItem(tSeptePromtion_Item[nItemId][nIndex])
end
----------------------------------礼包配置---------------------------------------------
--气力值精装礼包
tItem[3300060] = tItem[3300060] or {}
tItem[3300060]["Function"] = function(nItemId,sItemName)
	local nIndex = 1
	tSeptePromtion_UseSweetie(nItemId,nIndex)
end

--气力值豪华礼包
tItem[3300061] = tItem[3300061] or {}
tItem[3300061]["Function"] = function(nItemId,sItemName)
	local nIndex = 1
	tSeptePromtion_UseSweetie(nItemId,nIndex)
end

--小抽奖券礼包
tItem[3300062] = tItem[3300062] or {}
tItem[3300062]["Function"] = function(nItemId,sItemName)
	local nIndex = 1
	tSeptePromtion_UseSweetie(nItemId,nIndex)
end

--固化石礼包
tItem[3300063] = tItem[3300063] or {}
tItem[3300063]["Function"] = function(nItemId,sItemName)
	local nIndex = 1
	tSeptePromtion_UseSweetie(nItemId,nIndex)
end

--超大固化石礼包
tItem[3300064] = tItem[3300064] or {}
tItem[3300064]["Function"] = function(nItemId,sItemName)
	local nIndex = 1
	tSeptePromtion_UseSweetie(nItemId,nIndex)
end

--金刚坚钻礼包
tItem[3300065] = tItem[3300065] or {}
tItem[3300065]["Function"] = function(nItemId,sItemName)
	local nIndex = 1
	tSeptePromtion_UseSweetie(nItemId,nIndex)
end

--免费强炼丹礼包
tItem[3300066] = tItem[3300066] or {}
tItem[3300066]["Function"] = function(nItemId,sItemName)
	local nIndex = 1
	tSeptePromtion_UseSweetie(nItemId,nIndex)
end

--究极通神丹礼包
tItem[3300067] = tItem[3300067] or {}
tItem[3300067]["Function"] = function(nItemId,sItemName)
	local nIndex = 1
	tSeptePromtion_UseSweetie(nItemId,nIndex)
end

--龙珠卷礼包
tItem[3300068] = tItem[3300068] or {}
tItem[3300068]["Function"] = function(nItemId,sItemName)
	local nIndex = 1
	tSeptePromtion_UseSweetie(nItemId,nIndex)
end

--+3赤炼石礼包
tItem[3300069] = tItem[3300069] or {}
tItem[3300069]["Function"] = function(nItemId,sItemName)
	local nIndex = 1
	tSeptePromtion_UseSweetie(nItemId,nIndex)
end

--+5赤炼石礼包
tItem[3300070] = tItem[3300070] or {}
tItem[3300070]["Function"] = function(nItemId,sItemName)
	local nIndex = 1
	tSeptePromtion_UseSweetie(nItemId,nIndex)
end

--+6赤炼石礼包
tItem[3300071] = tItem[3300071] or {}
tItem[3300071]["Function"] = function(nItemId,sItemName)
	local nIndex = 1
	tSeptePromtion_UseSweetie(nItemId,nIndex)
end

--+8赤炼石礼包
tItem[3300072] = tItem[3300072] or {}
tItem[3300072]["Function"] = function(nItemId,sItemName)
	local nIndex = 1
	tSeptePromtion_UseSweetie(nItemId,nIndex)
end

--修行值大礼包
tItem[3300073] = tItem[3300073] or {}
tItem[3300073]["Function"] = function(nItemId,sItemName)
	local nIndex = 1
	tSeptePromtion_UseSweetie(nItemId,nIndex)
end

--转世重生礼包
tItem[3300074] = tItem[3300074] or {}
tItem[3300074]["DialogueText"] = tSeptePromtion_Text[3300074]
tItem[3300074]["Text1-1"] = {111}
tItem[3300074]["tOption1-1"] = {1,2,3}
tItem[3300074]["OptionPoint1"] = "1-2"
tItem[3300074]["OptionPoint2"] = "1-3"

tItem[3300074]["Text1-2"] = {121}
tItem[3300074]["tOption1-2"] = {4,5}
tItem[3300074]["OptionFunc4"] = "tSeptePromtion_UseSweetie</N>3300074</N>1"
tItem[3300074]["OptionPoint5"] = "1-1"

tItem[3300074]["Text1-3"] = {131}
tItem[3300074]["tOption1-3"] = {6,5}
tItem[3300074]["OptionFunc6"] = "tSeptePromtion_UseSweetie</N>3300074</N>2"

--超级经验礼包
tItem[3300075] = tItem[3300075] or {}
tItem[3300075]["Function"] = function(nItemId,sItemName)
	local nIndex = 1
	tSeptePromtion_UseSweetie(nItemId,nIndex)
end

--优质天怒宝石礼包
tItem[3300076] = tItem[3300076] or {}
tItem[3300076]["Function"] = function(nItemId,sItemName)
	local nIndex = 1
	tSeptePromtion_UseSweetie(nItemId,nIndex)
end

--优质天怒宝石礼包
tItem[3300077] = tItem[3300077] or {}
tItem[3300077]["Function"] = function(nItemId,sItemName)
	local nIndex = 1
	tSeptePromtion_UseSweetie(nItemId,nIndex)
end

--护心丹精装礼包
tItem[3300019] = tItem[3300019] or {}
tItem[3300019]["Function"] = function(nItemId,sItemName)
	local nIndex = 1
	tSeptePromtion_UseSweetie(nItemId,nIndex)
end