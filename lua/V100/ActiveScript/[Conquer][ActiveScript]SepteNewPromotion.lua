------------------------------------------------------------------------------------
--Name:			160810【英文征服】【活动脚本】9月版本新服促销活动
--Creator: 		陈彦宏
--Created:		2016/08/10
------------------------------------------------------------------------------------
--[[
命名前缀 SepteNewPromtion_

#logid 12000501

]]--
-------------------------------礼包表配置------------------------
local tSepteNewPromtion_Item = {}
--气力值精装礼包	5000气力值	1颗究极通神丹3003126
	tSepteNewPromtion_Item[3300191] = {}
	tSepteNewPromtion_Item[3300191][1] = {}
	tSepteNewPromtion_Item[3300191][1]["RewardItem"] = {}
	tSepteNewPromtion_Item[3300191][1]["RewardItem"][1] = {}
	tSepteNewPromtion_Item[3300191][1]["RewardItem"][1]["Id"] = 3003126
	tSepteNewPromtion_Item[3300191][1]["RewardItem"][1]["Attr"] = "0 1"
	tSepteNewPromtion_Item[3300191][1] ["RewardStrengthValue"] = {}
	tSepteNewPromtion_Item[3300191][1] ["RewardStrengthValue"]["Value"] = 5000
	tSepteNewPromtion_Item[3300191][1]["DeleteItem"] = {}
	tSepteNewPromtion_Item[3300191][1]["DeleteItem"][1] = {}
	tSepteNewPromtion_Item[3300191][1]["DeleteItem"][1]["Id"] = 3300191
	tSepteNewPromtion_Item[3300191][1]["Talk"] = tSepteNewPromtion_Text[3300191][1]
	tSepteNewPromtion_Item[3300191][1]["LogId"] = 12000501

--气力值豪华礼包	50000气力值	5颗八宝护气丹3005360
	tSepteNewPromtion_Item[3300192] = {}
	tSepteNewPromtion_Item[3300192][1] = {}
	tSepteNewPromtion_Item[3300192][1]["RewardItem"] = {}
	tSepteNewPromtion_Item[3300192][1]["RewardItem"][1] = {}
	tSepteNewPromtion_Item[3300192][1]["RewardItem"][1]["Id"] = 3005360
	tSepteNewPromtion_Item[3300192][1]["RewardItem"][1]["Attr"] = "0 5"
	tSepteNewPromtion_Item[3300192][1] ["RewardStrengthValue"] = {}
	tSepteNewPromtion_Item[3300192][1] ["RewardStrengthValue"]["Value"] = 50000
	tSepteNewPromtion_Item[3300192][1]["DeleteItem"] = {}
	tSepteNewPromtion_Item[3300192][1]["DeleteItem"][1] = {}
	tSepteNewPromtion_Item[3300192][1]["DeleteItem"][1]["Id"] = 3300192
	tSepteNewPromtion_Item[3300192][1]["Talk"] = tSepteNewPromtion_Text[3300192][1]
	tSepteNewPromtion_Item[3300192][1]["LogId"] = 12000501

--小抽奖券礼包	300个小抽奖卷711504	1颗+4赤炼石730004
	tSepteNewPromtion_Item[3300193] = {}
	tSepteNewPromtion_Item[3300193][1] = {}
	tSepteNewPromtion_Item[3300193][1]["RewardItem"] = {}
	tSepteNewPromtion_Item[3300193][1]["RewardItem"][1] = {}
	tSepteNewPromtion_Item[3300193][1]["RewardItem"][1]["Id"] = 711504
	tSepteNewPromtion_Item[3300193][1]["RewardItem"][1]["Attr"] = "0 300"
	tSepteNewPromtion_Item[3300193][1]["RewardItem"][2] = {}
	tSepteNewPromtion_Item[3300193][1]["RewardItem"][2]["Id"] = 730004
	tSepteNewPromtion_Item[3300193][1]["RewardItem"][2]["Attr"] = "0 1"
	tSepteNewPromtion_Item[3300193][1]["DeleteItem"] = {}
	tSepteNewPromtion_Item[3300193][1]["DeleteItem"][1] = {}
	tSepteNewPromtion_Item[3300193][1]["DeleteItem"][1]["Id"] = 3300193
	tSepteNewPromtion_Item[3300193][1]["Talk"] = tSepteNewPromtion_Text[3300193][1]
	tSepteNewPromtion_Item[3300193][1]["LogId"] = 12000501

--固化石礼包	1颗固化石723694	1个六阶神魂可选包3005893
	tSepteNewPromtion_Item[3300194] = {}
	tSepteNewPromtion_Item[3300194][1] = {}
	tSepteNewPromtion_Item[3300194][1]["RewardItem"] = {}
	tSepteNewPromtion_Item[3300194][1]["RewardItem"][1] = {}
	tSepteNewPromtion_Item[3300194][1]["RewardItem"][1]["Id"] = 723694
	tSepteNewPromtion_Item[3300194][1]["RewardItem"][1]["Attr"] = "0 1"
	tSepteNewPromtion_Item[3300194][1]["RewardItem"][2] = {}
	tSepteNewPromtion_Item[3300194][1]["RewardItem"][2]["Id"] = 3005893
	tSepteNewPromtion_Item[3300194][1]["RewardItem"][2]["Attr"] = "0 1"
	tSepteNewPromtion_Item[3300194][1]["DeleteItem"] = {}
	tSepteNewPromtion_Item[3300194][1]["DeleteItem"][1] = {}
	tSepteNewPromtion_Item[3300194][1]["DeleteItem"][1]["Id"] = 3300194
	tSepteNewPromtion_Item[3300194][1]["Talk"] = tSepteNewPromtion_Text[3300194][1]
	tSepteNewPromtion_Item[3300194][1]["LogId"] = 12000501

--超大固化石礼包	1颗大固化石723695	1个七阶神魂可选包3006233
	tSepteNewPromtion_Item[3300195] = {}
	tSepteNewPromtion_Item[3300195][1] = {}
	tSepteNewPromtion_Item[3300195][1]["RewardItem"] = {}
	tSepteNewPromtion_Item[3300195][1]["RewardItem"][1] = {}
	tSepteNewPromtion_Item[3300195][1]["RewardItem"][1]["Id"] = 723695
	tSepteNewPromtion_Item[3300195][1]["RewardItem"][1]["Attr"] = "0 1"
	tSepteNewPromtion_Item[3300195][1]["RewardItem"][2] = {}
	tSepteNewPromtion_Item[3300195][1]["RewardItem"][2]["Id"] = 3006233
	tSepteNewPromtion_Item[3300195][1]["RewardItem"][2]["Attr"] = "0 1"
	tSepteNewPromtion_Item[3300195][1]["DeleteItem"] = {}
	tSepteNewPromtion_Item[3300195][1]["DeleteItem"][1] = {}
	tSepteNewPromtion_Item[3300195][1]["DeleteItem"][1]["Id"] = 3300195
	tSepteNewPromtion_Item[3300195][1]["Talk"] = tSepteNewPromtion_Text[3300195][1]
	tSepteNewPromtion_Item[3300195][1]["LogId"] = 12000501
	
--金刚坚钻礼包	1个金钢坚钻1200005	1个七星宝钻1200006
	tSepteNewPromtion_Item[3300196] = {}
	tSepteNewPromtion_Item[3300196][1] = {}
	tSepteNewPromtion_Item[3300196][1]["RewardItem"] = {}
	tSepteNewPromtion_Item[3300196][1]["RewardItem"][1] = {}
	tSepteNewPromtion_Item[3300196][1]["RewardItem"][1]["Id"] = 1200005
	tSepteNewPromtion_Item[3300196][1]["RewardItem"][1]["Attr"] = "0 1"
	tSepteNewPromtion_Item[3300196][1]["RewardItem"][2] = {}
	tSepteNewPromtion_Item[3300196][1]["RewardItem"][2]["Id"] = 1200006
	tSepteNewPromtion_Item[3300196][1]["RewardItem"][2]["Attr"] = "0 1"
	tSepteNewPromtion_Item[3300196][1]["DeleteItem"] = {}
	tSepteNewPromtion_Item[3300196][1]["DeleteItem"][1] = {}
	tSepteNewPromtion_Item[3300196][1]["DeleteItem"][1]["Id"] = 3300196
	tSepteNewPromtion_Item[3300196][1]["Talk"] = tSepteNewPromtion_Text[3300196][1]
	tSepteNewPromtion_Item[3300196][1]["LogId"] = 12000501

--免费强炼丹礼包	100颗免费强炼丹3003124	20颗护心丹3300209
	tSepteNewPromtion_Item[3300197] = {}
	tSepteNewPromtion_Item[3300197][1] = {}
	tSepteNewPromtion_Item[3300197][1]["RewardItem"] = {}
	tSepteNewPromtion_Item[3300197][1]["RewardItem"][1] = {}
	tSepteNewPromtion_Item[3300197][1]["RewardItem"][1]["Id"] = 3003124
	tSepteNewPromtion_Item[3300197][1]["RewardItem"][1]["Attr"] = "0 100"
	tSepteNewPromtion_Item[3300197][1]["RewardItem"][2] = {}
	tSepteNewPromtion_Item[3300197][1]["RewardItem"][2]["Id"] = 3300209
	tSepteNewPromtion_Item[3300197][1]["RewardItem"][2]["Attr"] = "0 1"
	tSepteNewPromtion_Item[3300197][1]["DeleteItem"] = {}
	tSepteNewPromtion_Item[3300197][1]["DeleteItem"][1] = {}
	tSepteNewPromtion_Item[3300197][1]["DeleteItem"][1]["Id"] = 3300197
	tSepteNewPromtion_Item[3300197][1]["Talk"] = tSepteNewPromtion_Text[3300197][1]
	tSepteNewPromtion_Item[3300197][1]["LogId"] = 12000501

--究极通神丹礼包	50颗究极通神丹3003126	20颗护心丹3300209
	tSepteNewPromtion_Item[3300198] = {}
	tSepteNewPromtion_Item[3300198][1] = {}
	tSepteNewPromtion_Item[3300198][1]["RewardItem"] = {}
	tSepteNewPromtion_Item[3300198][1]["RewardItem"][1] = {}
	tSepteNewPromtion_Item[3300198][1]["RewardItem"][1]["Id"] = 3003126
	tSepteNewPromtion_Item[3300198][1]["RewardItem"][1]["Attr"] = "0 50"
	tSepteNewPromtion_Item[3300198][1]["RewardItem"][2] = {}
	tSepteNewPromtion_Item[3300198][1]["RewardItem"][2]["Id"] = 3300209
	tSepteNewPromtion_Item[3300198][1]["RewardItem"][2]["Attr"] = "0 1"
	tSepteNewPromtion_Item[3300198][1]["DeleteItem"] = {}
	tSepteNewPromtion_Item[3300198][1]["DeleteItem"][1] = {}
	tSepteNewPromtion_Item[3300198][1]["DeleteItem"][1]["Id"] = 3300198
	tSepteNewPromtion_Item[3300198][1]["Talk"] = tSepteNewPromtion_Text[3300198][1]
	tSepteNewPromtion_Item[3300198][1]["LogId"] = 12000501

--龙珠卷礼包	1份龙珠卷720028	10份流星卷720027
	tSepteNewPromtion_Item[3300199] = {}
	tSepteNewPromtion_Item[3300199][1] = {}
	tSepteNewPromtion_Item[3300199][1]["RewardItem"] = {}
	tSepteNewPromtion_Item[3300199][1]["RewardItem"][1] = {}
	tSepteNewPromtion_Item[3300199][1]["RewardItem"][1]["Id"] = 720028
	tSepteNewPromtion_Item[3300199][1]["RewardItem"][1]["Attr"] = "0 1"
	tSepteNewPromtion_Item[3300199][1]["RewardItem"][2] = {}
	tSepteNewPromtion_Item[3300199][1]["RewardItem"][2]["Id"] = 720027
	tSepteNewPromtion_Item[3300199][1]["RewardItem"][2]["Attr"] = "0 10"
	tSepteNewPromtion_Item[3300199][1]["DeleteItem"] = {}
	tSepteNewPromtion_Item[3300199][1]["DeleteItem"][1] = {}
	tSepteNewPromtion_Item[3300199][1]["DeleteItem"][1]["Id"] = 3300199
	tSepteNewPromtion_Item[3300199][1]["Talk"] = tSepteNewPromtion_Text[3300199][1]
	tSepteNewPromtion_Item[3300199][1]["LogId"] = 12000501

--+3赤炼石礼包	+3赤炼石730003	4颗微光星陨石3009000
	tSepteNewPromtion_Item[3300200] = {}
	tSepteNewPromtion_Item[3300200][1] = {}
	tSepteNewPromtion_Item[3300200][1]["RewardItem"] = {}
	tSepteNewPromtion_Item[3300200][1]["RewardItem"][1] = {}
	tSepteNewPromtion_Item[3300200][1]["RewardItem"][1]["Id"] = 730003
	tSepteNewPromtion_Item[3300200][1]["RewardItem"][1]["Attr"] = "0 1"
	tSepteNewPromtion_Item[3300200][1]["RewardItem"][2] = {}
	tSepteNewPromtion_Item[3300200][1]["RewardItem"][2]["Id"] = 3009000
	tSepteNewPromtion_Item[3300200][1]["RewardItem"][2]["Attr"] = "0 4 0 2880 1"
	tSepteNewPromtion_Item[3300200][1]["DeleteItem"] = {}
	tSepteNewPromtion_Item[3300200][1]["DeleteItem"][1] = {}
	tSepteNewPromtion_Item[3300200][1]["DeleteItem"][1]["Id"] = 3300200
	tSepteNewPromtion_Item[3300200][1]["Talk"] = tSepteNewPromtion_Text[3300200][1]
	tSepteNewPromtion_Item[3300200][1]["LogId"] = 12000501

--+5赤炼石礼包	+5赤炼石730005	2颗明亮星陨石3009001
	tSepteNewPromtion_Item[3300201] = {}
	tSepteNewPromtion_Item[3300201][1] = {}
	tSepteNewPromtion_Item[3300201][1]["RewardItem"] = {}
	tSepteNewPromtion_Item[3300201][1]["RewardItem"][1] = {}
	tSepteNewPromtion_Item[3300201][1]["RewardItem"][1]["Id"] = 730005
	tSepteNewPromtion_Item[3300201][1]["RewardItem"][1]["Attr"] = "0 1"
	tSepteNewPromtion_Item[3300201][1]["RewardItem"][2] = {}
	tSepteNewPromtion_Item[3300201][1]["RewardItem"][2]["Id"] = 3009001
	tSepteNewPromtion_Item[3300201][1]["RewardItem"][2]["Attr"] = "0 2 0 2880 1"
	tSepteNewPromtion_Item[3300201][1]["DeleteItem"] = {}
	tSepteNewPromtion_Item[3300201][1]["DeleteItem"][1] = {}
	tSepteNewPromtion_Item[3300201][1]["DeleteItem"][1]["Id"] = 3300201
	tSepteNewPromtion_Item[3300201][1]["Talk"] = tSepteNewPromtion_Text[3300201][1]
	tSepteNewPromtion_Item[3300201][1]["LogId"] = 12000501

--+6赤炼石礼包	+6赤炼石730006	1颗晶莹星陨石3009002
	tSepteNewPromtion_Item[3300202] = {}
	tSepteNewPromtion_Item[3300202][1] = {}
	tSepteNewPromtion_Item[3300202][1]["RewardItem"] = {}
	tSepteNewPromtion_Item[3300202][1]["RewardItem"][1] = {}
	tSepteNewPromtion_Item[3300202][1]["RewardItem"][1]["Id"] = 730006
	tSepteNewPromtion_Item[3300202][1]["RewardItem"][1]["Attr"] = "0 1"
	tSepteNewPromtion_Item[3300202][1]["RewardItem"][2] = {}
	tSepteNewPromtion_Item[3300202][1]["RewardItem"][2]["Id"] = 3009002
	tSepteNewPromtion_Item[3300202][1]["RewardItem"][2]["Attr"] = "0 1 0 2880 1"
	tSepteNewPromtion_Item[3300202][1]["DeleteItem"] = {}
	tSepteNewPromtion_Item[3300202][1]["DeleteItem"][1] = {}
	tSepteNewPromtion_Item[3300202][1]["DeleteItem"][1]["Id"] = 3300202
	tSepteNewPromtion_Item[3300202][1]["Talk"] = tSepteNewPromtion_Text[3300202][1]
	tSepteNewPromtion_Item[3300202][1]["LogId"] = 12000501

--+8赤炼石礼包	+8赤炼石730008	1颗璀璨星陨石3009003
	tSepteNewPromtion_Item[3300203] = {}
	tSepteNewPromtion_Item[3300203][1] = {}
	tSepteNewPromtion_Item[3300203][1]["RewardItem"] = {}
	tSepteNewPromtion_Item[3300203][1]["RewardItem"][1] = {}
	tSepteNewPromtion_Item[3300203][1]["RewardItem"][1]["Id"] = 730008
	tSepteNewPromtion_Item[3300203][1]["RewardItem"][1]["Attr"] = "0 1"
	tSepteNewPromtion_Item[3300203][1]["RewardItem"][2] = {}
	tSepteNewPromtion_Item[3300203][1]["RewardItem"][2]["Id"] = 3009003
	tSepteNewPromtion_Item[3300203][1]["RewardItem"][2]["Attr"] = "0 1 0 2880 1"
	tSepteNewPromtion_Item[3300203][1]["DeleteItem"] = {}
	tSepteNewPromtion_Item[3300203][1]["DeleteItem"][1] = {}
	tSepteNewPromtion_Item[3300203][1]["DeleteItem"][1]["Id"] = 3300203
	tSepteNewPromtion_Item[3300203][1]["Talk"] = tSepteNewPromtion_Text[3300203][1]
	tSepteNewPromtion_Item[3300203][1]["LogId"] = 12000501

--修行值大礼包	1万修行值	200修为值
	tSepteNewPromtion_Item[3300204] = {}
	tSepteNewPromtion_Item[3300204][1] = {}
	tSepteNewPromtion_Item[3300204][1] ["RewardCultivation"] = {}
	tSepteNewPromtion_Item[3300204][1] ["RewardCultivation"]["Value"] = 10000
	tSepteNewPromtion_Item[3300204][1] ["RewardRepairValue"] = {}
	tSepteNewPromtion_Item[3300204][1] ["RewardRepairValue"]["Value"] = 200
	tSepteNewPromtion_Item[3300204][1]["DeleteItem"] = {}
	tSepteNewPromtion_Item[3300204][1]["DeleteItem"][1] = {}
	tSepteNewPromtion_Item[3300204][1]["DeleteItem"][1]["Id"] = 3300204
	tSepteNewPromtion_Item[3300204][1]["Talk"] = tSepteNewPromtion_Text[3300204][1]
	tSepteNewPromtion_Item[3300204][1]["LogId"] = 12000501

--转世重生礼包	1块免试金牌723701	1瓶乾坤九转神露711083或1个涅槃灵石721259
	tSepteNewPromtion_Item[3300205] = {}
	tSepteNewPromtion_Item[3300205][1] = {}
	tSepteNewPromtion_Item[3300205][1]["RewardItem"] = {}
	tSepteNewPromtion_Item[3300205][1]["RewardItem"][1] = {}
	tSepteNewPromtion_Item[3300205][1]["RewardItem"][1]["Id"] = 723701
	tSepteNewPromtion_Item[3300205][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tSepteNewPromtion_Item[3300205][1]["RewardItem"][2] = {}
	tSepteNewPromtion_Item[3300205][1]["RewardItem"][2]["Id"] = 711083
	tSepteNewPromtion_Item[3300205][1]["RewardItem"][2]["Attr"] = "0 1"
	tSepteNewPromtion_Item[3300205][1]["DeleteItem"] = {}
	tSepteNewPromtion_Item[3300205][1]["DeleteItem"][1] = {}
	tSepteNewPromtion_Item[3300205][1]["DeleteItem"][1]["Id"] = 3300205
	tSepteNewPromtion_Item[3300205][1]["Talk"] = tSepteNewPromtion_Text[3300205][1]
	tSepteNewPromtion_Item[3300205][1]["LogId"] = 12000501

	tSepteNewPromtion_Item[3300205][2] = {}
	tSepteNewPromtion_Item[3300205][2]["RewardItem"] = {}
	tSepteNewPromtion_Item[3300205][2]["RewardItem"][1] = {}
	tSepteNewPromtion_Item[3300205][2]["RewardItem"][1]["Id"] = 723701
	tSepteNewPromtion_Item[3300205][2]["RewardItem"][1]["Attr"] = "0 1 3"
	tSepteNewPromtion_Item[3300205][2]["RewardItem"][2] = {}
	tSepteNewPromtion_Item[3300205][2]["RewardItem"][2]["Id"] = 721259
	tSepteNewPromtion_Item[3300205][2]["RewardItem"][2]["Attr"] = "0 1"
	tSepteNewPromtion_Item[3300205][2]["DeleteItem"] = {}
	tSepteNewPromtion_Item[3300205][2]["DeleteItem"][1] = {}
	tSepteNewPromtion_Item[3300205][2]["DeleteItem"][1]["Id"] = 3300205
	tSepteNewPromtion_Item[3300205][2]["Talk"] = tSepteNewPromtion_Text[3300205][2]
	tSepteNewPromtion_Item[3300205][2]["LogId"] = 12000501

--超级经验礼包	1颗九转聚神丹722057	2瓶30分钟5倍经验药水728777
	tSepteNewPromtion_Item[3300206] = {}
	tSepteNewPromtion_Item[3300206][1] = {}
	tSepteNewPromtion_Item[3300206][1]["RewardItem"] = {}
	tSepteNewPromtion_Item[3300206][1]["RewardItem"][1] = {}
	tSepteNewPromtion_Item[3300206][1]["RewardItem"][1]["Id"] = 722057
	tSepteNewPromtion_Item[3300206][1]["RewardItem"][1]["Attr"] = "0 1"
	tSepteNewPromtion_Item[3300206][1]["RewardItem"][2] = {}
	tSepteNewPromtion_Item[3300206][1]["RewardItem"][2]["Id"] = 728777
	tSepteNewPromtion_Item[3300206][1]["RewardItem"][2]["Attr"] = "0 2"
	tSepteNewPromtion_Item[3300206][1]["DeleteItem"] = {}
	tSepteNewPromtion_Item[3300206][1]["DeleteItem"][1] = {}
	tSepteNewPromtion_Item[3300206][1]["DeleteItem"][1]["Id"] = 3300206
	tSepteNewPromtion_Item[3300206][1]["Talk"] = tSepteNewPromtion_Text[3300206][1]
	tSepteNewPromtion_Item[3300206][1]["LogId"] = 12000501

--优质天怒宝石礼包	1个优质天怒宝石700103	5颗明亮星陨石3009001
	tSepteNewPromtion_Item[3300207] = {}
	tSepteNewPromtion_Item[3300207][1] = {}
	tSepteNewPromtion_Item[3300207][1]["RewardItem"] = {}
	tSepteNewPromtion_Item[3300207][1]["RewardItem"][1] = {}
	tSepteNewPromtion_Item[3300207][1]["RewardItem"][1]["Id"] = 700103
	tSepteNewPromtion_Item[3300207][1]["RewardItem"][1]["Attr"] = "0 1"
	tSepteNewPromtion_Item[3300207][1]["RewardItem"][2] = {}
	tSepteNewPromtion_Item[3300207][1]["RewardItem"][2]["Id"] = 3009001
	tSepteNewPromtion_Item[3300207][1]["RewardItem"][2]["Attr"] = "0 5 0 2880 1"
	tSepteNewPromtion_Item[3300207][1]["DeleteItem"] = {}
	tSepteNewPromtion_Item[3300207][1]["DeleteItem"][1] = {}
	tSepteNewPromtion_Item[3300207][1]["DeleteItem"][1]["Id"] = 3300207
	tSepteNewPromtion_Item[3300207][1]["Talk"] = tSepteNewPromtion_Text[3300207][1]
	tSepteNewPromtion_Item[3300207][1]["LogId"] = 12000501

--优质地灵宝石礼包	1个优质地灵宝石700123	5颗明亮星陨石3009001
	tSepteNewPromtion_Item[3300208] = {}
	tSepteNewPromtion_Item[3300208][1] = {}
	tSepteNewPromtion_Item[3300208][1]["RewardItem"] = {}
	tSepteNewPromtion_Item[3300208][1]["RewardItem"][1] = {}
	tSepteNewPromtion_Item[3300208][1]["RewardItem"][1]["Id"] = 700123
	tSepteNewPromtion_Item[3300208][1]["RewardItem"][1]["Attr"] = "0 1"
	tSepteNewPromtion_Item[3300208][1]["RewardItem"][2] = {}
	tSepteNewPromtion_Item[3300208][1]["RewardItem"][2]["Id"] = 3009001
	tSepteNewPromtion_Item[3300208][1]["RewardItem"][2]["Attr"] = "0 5 0 2880 1"
	tSepteNewPromtion_Item[3300208][1]["DeleteItem"] = {}
	tSepteNewPromtion_Item[3300208][1]["DeleteItem"][1] = {}
	tSepteNewPromtion_Item[3300208][1]["DeleteItem"][1]["Id"] = 3300208
	tSepteNewPromtion_Item[3300208][1]["Talk"] = tSepteNewPromtion_Text[3300208][1]
	tSepteNewPromtion_Item[3300208][1]["LogId"] = 12000501

--护心丹精装礼包	20颗护心丹3002029
	tSepteNewPromtion_Item[3300209] = {}
	tSepteNewPromtion_Item[3300209][1] = {}
	tSepteNewPromtion_Item[3300209][1]["RewardItem"] = {}
	tSepteNewPromtion_Item[3300209][1]["RewardItem"][1] = {}
	tSepteNewPromtion_Item[3300209][1]["RewardItem"][1]["Id"] = 3002029
	tSepteNewPromtion_Item[3300209][1]["RewardItem"][1]["Attr"] = "0 20 0 0 1"
	tSepteNewPromtion_Item[3300209][1]["DeleteItem"] = {}
	tSepteNewPromtion_Item[3300209][1]["DeleteItem"][1] = {}
	tSepteNewPromtion_Item[3300209][1]["DeleteItem"][1]["Id"] = 3300209
	tSepteNewPromtion_Item[3300209][1]["Talk"] = tSepteNewPromtion_Text[3300209][1]
	tSepteNewPromtion_Item[3300209][1]["LogId"] = 12000501

--极品乌金盔礼包	极品乌金盔111049
	tSepteNewPromtion_Item[3300210] = {}
	tSepteNewPromtion_Item[3300210][1] = {}
	tSepteNewPromtion_Item[3300210][1]["RewardItem"] = {}
	tSepteNewPromtion_Item[3300210][1]["RewardItem"][1] = {}
	tSepteNewPromtion_Item[3300210][1]["RewardItem"][1]["Id"] = 111049
	tSepteNewPromtion_Item[3300210][1]["RewardItem"][1]["Attr"] = "0 1"
	tSepteNewPromtion_Item[3300210][1]["DeleteItem"] = {}
	tSepteNewPromtion_Item[3300210][1]["DeleteItem"][1] = {}
	tSepteNewPromtion_Item[3300210][1]["DeleteItem"][1]["Id"] = 3300210
	tSepteNewPromtion_Item[3300210][1]["Talk"] = tSepteNewPromtion_Text[3300210][1]
	tSepteNewPromtion_Item[3300210][1]["LogId"] = 12000501

--极品水晶项链礼包	极品水晶项链120089
	tSepteNewPromtion_Item[3300211] = {}
	tSepteNewPromtion_Item[3300211][1] = {}
	tSepteNewPromtion_Item[3300211][1]["RewardItem"] = {}
	tSepteNewPromtion_Item[3300211][1]["RewardItem"][1] = {}
	tSepteNewPromtion_Item[3300211][1]["RewardItem"][1]["Id"] = 120089
	tSepteNewPromtion_Item[3300211][1]["RewardItem"][1]["Attr"] = "0 1"
	tSepteNewPromtion_Item[3300211][1]["DeleteItem"] = {}
	tSepteNewPromtion_Item[3300211][1]["DeleteItem"][1] = {}
	tSepteNewPromtion_Item[3300211][1]["DeleteItem"][1]["Id"] = 3300211
	tSepteNewPromtion_Item[3300211][1]["Talk"] = tSepteNewPromtion_Text[3300211][1]
	tSepteNewPromtion_Item[3300211][1]["LogId"] = 12000501

--极品白玉戒指礼包	极品白玉戒指150099
	tSepteNewPromtion_Item[3300212] = {}
	tSepteNewPromtion_Item[3300212][1] = {}
	tSepteNewPromtion_Item[3300212][1]["RewardItem"] = {}
	tSepteNewPromtion_Item[3300212][1]["RewardItem"][1] = {}
	tSepteNewPromtion_Item[3300212][1]["RewardItem"][1]["Id"] = 150099
	tSepteNewPromtion_Item[3300212][1]["RewardItem"][1]["Attr"] = "0 1"
	tSepteNewPromtion_Item[3300212][1]["DeleteItem"] = {}
	tSepteNewPromtion_Item[3300212][1]["DeleteItem"][1] = {}
	tSepteNewPromtion_Item[3300212][1]["DeleteItem"][1]["Id"] = 3300212
	tSepteNewPromtion_Item[3300212][1]["Talk"] = tSepteNewPromtion_Text[3300212][1]
	tSepteNewPromtion_Item[3300212][1]["LogId"] = 12000501

--极品光明铠礼包	极品光明铠131049
	tSepteNewPromtion_Item[3300213] = {}
	tSepteNewPromtion_Item[3300213][1] = {}
	tSepteNewPromtion_Item[3300213][1]["RewardItem"] = {}
	tSepteNewPromtion_Item[3300213][1]["RewardItem"][1] = {}
	tSepteNewPromtion_Item[3300213][1]["RewardItem"][1]["Id"] = 131049
	tSepteNewPromtion_Item[3300213][1]["RewardItem"][1]["Attr"] = "0 1"
	tSepteNewPromtion_Item[3300213][1]["DeleteItem"] = {}
	tSepteNewPromtion_Item[3300213][1]["DeleteItem"][1] = {}
	tSepteNewPromtion_Item[3300213][1]["DeleteItem"][1]["Id"] = 3300213
	tSepteNewPromtion_Item[3300213][1]["Talk"] = tSepteNewPromtion_Text[3300213][1]
	tSepteNewPromtion_Item[3300213][1]["LogId"] = 12000501

--极品云锦靴礼包	极品云锦靴160099
	tSepteNewPromtion_Item[3300214] = {}
	tSepteNewPromtion_Item[3300214][1] = {}
	tSepteNewPromtion_Item[3300214][1]["RewardItem"] = {}
	tSepteNewPromtion_Item[3300214][1]["RewardItem"][1] = {}
	tSepteNewPromtion_Item[3300214][1]["RewardItem"][1]["Id"] = 160099
	tSepteNewPromtion_Item[3300214][1]["RewardItem"][1]["Attr"] = "0 1"
	tSepteNewPromtion_Item[3300214][1]["DeleteItem"] = {}
	tSepteNewPromtion_Item[3300214][1]["DeleteItem"][1] = {}
	tSepteNewPromtion_Item[3300214][1]["DeleteItem"][1]["Id"] = 3300214
	tSepteNewPromtion_Item[3300214][1]["Talk"] = tSepteNewPromtion_Text[3300214][1]
	tSepteNewPromtion_Item[3300214][1]["LogId"] = 12000501

--极品蝶恋剑礼包	极品蝶恋剑420099
	tSepteNewPromtion_Item[3300215] = {}
	tSepteNewPromtion_Item[3300215][1] = {}
	tSepteNewPromtion_Item[3300215][1]["RewardItem"] = {}
	tSepteNewPromtion_Item[3300215][1]["RewardItem"][1] = {}
	tSepteNewPromtion_Item[3300215][1]["RewardItem"][1]["Id"] = 420099
	tSepteNewPromtion_Item[3300215][1]["RewardItem"][1]["Attr"] = "0 1"
	tSepteNewPromtion_Item[3300215][1]["DeleteItem"] = {}
	tSepteNewPromtion_Item[3300215][1]["DeleteItem"][1] = {}
	tSepteNewPromtion_Item[3300215][1]["DeleteItem"][1]["Id"] = 3300215
	tSepteNewPromtion_Item[3300215][1]["Talk"] = tSepteNewPromtion_Text[3300215][1]
	tSepteNewPromtion_Item[3300215][1]["LogId"] = 12000501

--极品藤木盾礼包	极品藤木盾900019
	tSepteNewPromtion_Item[3300216] = {}
	tSepteNewPromtion_Item[3300216][1] = {}
	tSepteNewPromtion_Item[3300216][1]["RewardItem"] = {}
	tSepteNewPromtion_Item[3300216][1]["RewardItem"][1] = {}
	tSepteNewPromtion_Item[3300216][1]["RewardItem"][1]["Id"] = 900019
	tSepteNewPromtion_Item[3300216][1]["RewardItem"][1]["Attr"] = "0 1"
	tSepteNewPromtion_Item[3300216][1]["DeleteItem"] = {}
	tSepteNewPromtion_Item[3300216][1]["DeleteItem"][1] = {}
	tSepteNewPromtion_Item[3300216][1]["DeleteItem"][1]["Id"] = 3300216
	tSepteNewPromtion_Item[3300216][1]["Talk"] = tSepteNewPromtion_Text[3300216][1]
	tSepteNewPromtion_Item[3300216][1]["LogId"] = 12000501

--极品风雷翅礼包	极品风雷翅204009
	tSepteNewPromtion_Item[3300217] = {}
	tSepteNewPromtion_Item[3300217][1] = {}
	tSepteNewPromtion_Item[3300217][1]["RewardItem"] = {}
	tSepteNewPromtion_Item[3300217][1]["RewardItem"][1] = {}
	tSepteNewPromtion_Item[3300217][1]["RewardItem"][1]["Id"] = 204009
	tSepteNewPromtion_Item[3300217][1]["RewardItem"][1]["Attr"] = "0 1"
	tSepteNewPromtion_Item[3300217][1]["DeleteItem"] = {}
	tSepteNewPromtion_Item[3300217][1]["DeleteItem"][1] = {}
	tSepteNewPromtion_Item[3300217][1]["DeleteItem"][1]["Id"] = 3300217
	tSepteNewPromtion_Item[3300217][1]["Talk"] = tSepteNewPromtion_Text[3300217][1]
	tSepteNewPromtion_Item[3300217][1]["LogId"] = 12000501

--极品凌霄扇礼包	极品凌霄扇201009
	tSepteNewPromtion_Item[3300218] = {}
	tSepteNewPromtion_Item[3300218][1] = {}
	tSepteNewPromtion_Item[3300218][1]["RewardItem"] = {}
	tSepteNewPromtion_Item[3300218][1]["RewardItem"][1] = {}
	tSepteNewPromtion_Item[3300218][1]["RewardItem"][1]["Id"] = 201009
	tSepteNewPromtion_Item[3300218][1]["RewardItem"][1]["Attr"] = "0 1"
	tSepteNewPromtion_Item[3300218][1]["DeleteItem"] = {}
	tSepteNewPromtion_Item[3300218][1]["DeleteItem"][1] = {}
	tSepteNewPromtion_Item[3300218][1]["DeleteItem"][1]["Id"] = 3300218
	tSepteNewPromtion_Item[3300218][1]["Talk"] = tSepteNewPromtion_Text[3300218][1]
	tSepteNewPromtion_Item[3300218][1]["LogId"] = 12000501

--极品混元塔礼包	极品混元塔202009
	tSepteNewPromtion_Item[3300219] = {}
	tSepteNewPromtion_Item[3300219][1] = {}
	tSepteNewPromtion_Item[3300219][1]["RewardItem"] = {}
	tSepteNewPromtion_Item[3300219][1]["RewardItem"][1] = {}
	tSepteNewPromtion_Item[3300219][1]["RewardItem"][1]["Id"] = 202009
	tSepteNewPromtion_Item[3300219][1]["RewardItem"][1]["Attr"] = "0 1"
	tSepteNewPromtion_Item[3300219][1]["DeleteItem"] = {}
	tSepteNewPromtion_Item[3300219][1]["DeleteItem"][1] = {}
	tSepteNewPromtion_Item[3300219][1]["DeleteItem"][1]["Id"] = 3300219
	tSepteNewPromtion_Item[3300219][1]["Talk"] = tSepteNewPromtion_Text[3300219][1]
	tSepteNewPromtion_Item[3300219][1]["LogId"] = 12000501

--极品马鞭礼包	极品马鞭203009
	tSepteNewPromtion_Item[3300220] = {}
	tSepteNewPromtion_Item[3300220][1] = {}
	tSepteNewPromtion_Item[3300220][1]["RewardItem"] = {}
	tSepteNewPromtion_Item[3300220][1]["RewardItem"][1] = {}
	tSepteNewPromtion_Item[3300220][1]["RewardItem"][1]["Id"] = 203009
	tSepteNewPromtion_Item[3300220][1]["RewardItem"][1]["Attr"] = "0 1"
	tSepteNewPromtion_Item[3300220][1]["DeleteItem"] = {}
	tSepteNewPromtion_Item[3300220][1]["DeleteItem"][1] = {}
	tSepteNewPromtion_Item[3300220][1]["DeleteItem"][1]["Id"] = 3300220
	tSepteNewPromtion_Item[3300220][1]["Talk"] = tSepteNewPromtion_Text[3300220][1]
	tSepteNewPromtion_Item[3300220][1]["LogId"] = 12000501

--极品苍之怒焰礼包	极品苍之怒焰624029
	tSepteNewPromtion_Item[3300221] = {}
	tSepteNewPromtion_Item[3300221][1] = {}
	tSepteNewPromtion_Item[3300221][1]["RewardItem"] = {}
	tSepteNewPromtion_Item[3300221][1]["RewardItem"][1] = {}
	tSepteNewPromtion_Item[3300221][1]["RewardItem"][1]["Id"] = 624029
	tSepteNewPromtion_Item[3300221][1]["RewardItem"][1]["Attr"] = "0 1"
	tSepteNewPromtion_Item[3300221][1]["DeleteItem"] = {}
	tSepteNewPromtion_Item[3300221][1]["DeleteItem"][1] = {}
	tSepteNewPromtion_Item[3300221][1]["DeleteItem"][1]["Id"] = 3300221
	tSepteNewPromtion_Item[3300221][1]["Talk"] = tSepteNewPromtion_Text[3300221][1]
	tSepteNewPromtion_Item[3300221][1]["LogId"] = 12000501
	
--两亿金币礼包	两亿金币
	tSepteNewPromtion_Item[3300222] = {}
	tSepteNewPromtion_Item[3300222][1] = {}
	tSepteNewPromtion_Item[3300222][1]["RewardMoney"] = {}
	tSepteNewPromtion_Item[3300222][1]["RewardMoney"]["Value"] = 200000000
	tSepteNewPromtion_Item[3300222][1]["DeleteItem"] = {}
	tSepteNewPromtion_Item[3300222][1]["DeleteItem"][1] = {}
	tSepteNewPromtion_Item[3300222][1]["DeleteItem"][1]["Id"] = 3300222
	tSepteNewPromtion_Item[3300222][1]["Talk"] = tSepteNewPromtion_Text[3300222][1]
	tSepteNewPromtion_Item[3300222][1]["LogId"] = 12000501



----------------------------------逻辑部分--------------------------------------------
function tSepteNewPromtion_UseSweetie(nItemId,nIndex)
	RewardTemplate_UseItem(tSepteNewPromtion_Item[nItemId][nIndex])
end
----------------------------------礼包配置---------------------------------------------
--气力值精装礼包
tItem[3300191] = tItem[3300191] or {}
tItem[3300191]["Function"] = function(nItemId,sItemName)
	local nIndex = 1
	tSepteNewPromtion_UseSweetie(nItemId,nIndex)
end

--气力值豪华礼包
tItem[3300192] = tItem[3300192] or {}
tItem[3300192]["Function"] = function(nItemId,sItemName)
	local nIndex = 1
	tSepteNewPromtion_UseSweetie(nItemId,nIndex)
end

--小抽奖券礼包
tItem[3300193] = tItem[3300193] or {}
tItem[3300193]["Function"] = function(nItemId,sItemName)
	local nIndex = 1
	tSepteNewPromtion_UseSweetie(nItemId,nIndex)
end

--固化石礼包
tItem[3300194] = tItem[3300194] or {}
tItem[3300194]["Function"] = function(nItemId,sItemName)
	local nIndex = 1
	tSepteNewPromtion_UseSweetie(nItemId,nIndex)
end

--超大固化石礼包
tItem[3300195] = tItem[3300195] or {}
tItem[3300195]["Function"] = function(nItemId,sItemName)
	local nIndex = 1
	tSepteNewPromtion_UseSweetie(nItemId,nIndex)
end

--金刚坚钻礼包
tItem[3300196] = tItem[3300196] or {}
tItem[3300196]["Function"] = function(nItemId,sItemName)
	local nIndex = 1
	tSepteNewPromtion_UseSweetie(nItemId,nIndex)
end

--免费强炼丹礼包
tItem[3300197] = tItem[3300197] or {}
tItem[3300197]["Function"] = function(nItemId,sItemName)
	local nIndex = 1
	tSepteNewPromtion_UseSweetie(nItemId,nIndex)
end

--究极通神丹礼包
tItem[3300198] = tItem[3300198] or {}
tItem[3300198]["Function"] = function(nItemId,sItemName)
	local nIndex = 1
	tSepteNewPromtion_UseSweetie(nItemId,nIndex)
end

--龙珠卷礼包
tItem[3300199] = tItem[3300199] or {}
tItem[3300199]["Function"] = function(nItemId,sItemName)
	local nIndex = 1
	tSepteNewPromtion_UseSweetie(nItemId,nIndex)
end

--+3赤炼石礼包
tItem[3300200] = tItem[3300200] or {}
tItem[3300200]["Function"] = function(nItemId,sItemName)
	local nIndex = 1
	tSepteNewPromtion_UseSweetie(nItemId,nIndex)
end

--+5赤炼石礼包
tItem[3300201] = tItem[3300201] or {}
tItem[3300201]["Function"] = function(nItemId,sItemName)
	local nIndex = 1
	tSepteNewPromtion_UseSweetie(nItemId,nIndex)
end

--+6赤炼石礼包
tItem[3300202] = tItem[3300202] or {}
tItem[3300202]["Function"] = function(nItemId,sItemName)
	local nIndex = 1
	tSepteNewPromtion_UseSweetie(nItemId,nIndex)
end

--+8赤炼石礼包
tItem[3300203] = tItem[3300203] or {}
tItem[3300203]["Function"] = function(nItemId,sItemName)
	local nIndex = 1
	tSepteNewPromtion_UseSweetie(nItemId,nIndex)
end

--修行值大礼包
tItem[3300204] = tItem[3300204] or {}
tItem[3300204]["Function"] = function(nItemId,sItemName)
	local nIndex = 1
	tSepteNewPromtion_UseSweetie(nItemId,nIndex)
end

--转世重生礼包
tItem[3300205] = tItem[3300205] or {}
tItem[3300205]["DialogueText"] = tSepteNewPromtion_Text[3300205]
tItem[3300205]["Text1-1"] = {111}
tItem[3300205]["tOption1-1"] = {1,2,3}
tItem[3300205]["OptionPoint1"] = "1-2"
tItem[3300205]["OptionPoint2"] = "1-3"

tItem[3300205]["Text1-2"] = {121}
tItem[3300205]["tOption1-2"] = {4,5}
tItem[3300205]["OptionFunc4"] = "tSepteNewPromtion_UseSweetie</N>3300205</N>1"
tItem[3300205]["OptionPoint5"] = "1-1"

tItem[3300205]["Text1-3"] = {131}
tItem[3300205]["tOption1-3"] = {6,5}
tItem[3300205]["OptionFunc6"] = "tSepteNewPromtion_UseSweetie</N>3300205</N>2"

--超级经验礼包
tItem[3300206] = tItem[3300206] or {}
tItem[3300206]["Function"] = function(nItemId,sItemName)
	local nIndex = 1
	tSepteNewPromtion_UseSweetie(nItemId,nIndex)
end

--优质天怒宝石礼包
tItem[3300207] = tItem[3300207] or {}
tItem[3300207]["Function"] = function(nItemId,sItemName)
	local nIndex = 1
	tSepteNewPromtion_UseSweetie(nItemId,nIndex)
end

--优质天怒宝石礼包
tItem[3300208] = tItem[3300208] or {}
tItem[3300208]["Function"] = function(nItemId,sItemName)
	local nIndex = 1
	tSepteNewPromtion_UseSweetie(nItemId,nIndex)
end

--护心丹精装礼包
tItem[3300209] = tItem[3300209] or {}
tItem[3300209]["Function"] = function(nItemId,sItemName)
	local nIndex = 1
	tSepteNewPromtion_UseSweetie(nItemId,nIndex)
end

--极品乌金盔礼包
tItem[3300210] = tItem[3300210] or {}
tItem[3300210]["Function"] = function(nItemId,sItemName)
	local nIndex = 1
	tSepteNewPromtion_UseSweetie(nItemId,nIndex)
end

--极品水晶项链礼包
tItem[3300211] = tItem[3300211] or {}
tItem[3300211]["Function"] = function(nItemId,sItemName)
	local nIndex = 1
	tSepteNewPromtion_UseSweetie(nItemId,nIndex)
end

--极品白玉戒指礼包
tItem[3300212] = tItem[3300212] or {}
tItem[3300212]["Function"] = function(nItemId,sItemName)
	local nIndex = 1
	tSepteNewPromtion_UseSweetie(nItemId,nIndex)
end

--极品光明铠礼包
tItem[3300213] = tItem[3300213] or {}
tItem[3300213]["Function"] = function(nItemId,sItemName)
	local nIndex = 1
	tSepteNewPromtion_UseSweetie(nItemId,nIndex)
end

--极品云锦靴礼包
tItem[3300214] = tItem[3300214] or {}
tItem[3300214]["Function"] = function(nItemId,sItemName)
	local nIndex = 1
	tSepteNewPromtion_UseSweetie(nItemId,nIndex)
end

--极品蝶恋剑礼包
tItem[3300215] = tItem[3300215] or {}
tItem[3300215]["Function"] = function(nItemId,sItemName)
	local nIndex = 1
	tSepteNewPromtion_UseSweetie(nItemId,nIndex)
end

--极品藤木盾礼包
tItem[3300216] = tItem[3300216] or {}
tItem[3300216]["Function"] = function(nItemId,sItemName)
	local nIndex = 1
	tSepteNewPromtion_UseSweetie(nItemId,nIndex)
end

--极品风雷翅礼包
tItem[3300217] = tItem[3300217] or {}
tItem[3300217]["Function"] = function(nItemId,sItemName)
	local nIndex = 1
	tSepteNewPromtion_UseSweetie(nItemId,nIndex)
end

--极品风雷翅礼包
tItem[3300218] = tItem[3300218] or {}
tItem[3300218]["Function"] = function(nItemId,sItemName)
	local nIndex = 1
	tSepteNewPromtion_UseSweetie(nItemId,nIndex)
end

--极品混元塔礼包
tItem[3300219] = tItem[3300219] or {}
tItem[3300219]["Function"] = function(nItemId,sItemName)
	local nIndex = 1
	tSepteNewPromtion_UseSweetie(nItemId,nIndex)
end

--极品马鞭礼包
tItem[3300220] = tItem[3300220] or {}
tItem[3300220]["Function"] = function(nItemId,sItemName)
	local nIndex = 1
	tSepteNewPromtion_UseSweetie(nItemId,nIndex)
end

--极品苍之怒焰礼包
tItem[3300221] = tItem[3300221] or {}
tItem[3300221]["Function"] = function(nItemId,sItemName)
	local nIndex = 1
	tSepteNewPromtion_UseSweetie(nItemId,nIndex)
end

--两亿金币礼包
tItem[3300222] = tItem[3300222] or {}
tItem[3300222]["Function"] = function(nItemId,sItemName)
	local nIndex = 1
	tSepteNewPromtion_UseSweetie(nItemId,nIndex)
end