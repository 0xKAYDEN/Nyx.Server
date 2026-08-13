------------------------------------------------------------------------------------
-- Name:		181022[英文征服][活动脚本]11月日充有礼活动相关发奖action制作
-- Creator:		江宇君
-- Created:		2018/10/22
------------------------------------------------------------------------------------

-- 命名前缀
-- DayRechargeAward_

-- 奖励模板
local tDayRechargeAward_Reward = {}

	-- 3311229 2匹+2枣红马包 利用发奖action给玩家
	tDayRechargeAward_Reward[3311229] = {}
	tDayRechargeAward_Reward[3311229]["LogId"] = 12001192
	tDayRechargeAward_Reward[3311229]["DeleteItem"] = {}
	tDayRechargeAward_Reward[3311229]["DeleteItem"][1] = {}
	tDayRechargeAward_Reward[3311229]["DeleteItem"][1]["Id"] = 3311229
	tDayRechargeAward_Reward[3311229]["RewardItem"] = {}
	tDayRechargeAward_Reward[3311229]["RewardItem"][1] = {}
	tDayRechargeAward_Reward[3311229]["RewardItem"][1]["Id"] = 727461 -- +2枣红马礼包
	tDayRechargeAward_Reward[3311229]["RewardItem"][1]["Attr"] = "0 2 0" -- 2个
	tDayRechargeAward_Reward[3311229]["RewardEffect"] = {}
	tDayRechargeAward_Reward[3311229]["RewardEffect"]["Effect"] = "angelwing"

	-- 3311230 2颗+2赤炼石包 利用发奖action给玩家
	tDayRechargeAward_Reward[3311230] = {}
	tDayRechargeAward_Reward[3311230]["LogId"] = 12001192
	tDayRechargeAward_Reward[3311230]["DeleteItem"] = {}
	tDayRechargeAward_Reward[3311230]["DeleteItem"][1] = {}
	tDayRechargeAward_Reward[3311230]["DeleteItem"][1]["Id"] = 3311230
	tDayRechargeAward_Reward[3311230]["RewardItem"] = {}
	tDayRechargeAward_Reward[3311230]["RewardItem"][1] = {}
	tDayRechargeAward_Reward[3311230]["RewardItem"][1]["Id"] = 730002 -- +2赤炼石
	tDayRechargeAward_Reward[3311230]["RewardItem"][1]["Attr"] = "0 2 0" -- 2个
	tDayRechargeAward_Reward[3311230]["RewardEffect"] = {}
	tDayRechargeAward_Reward[3311230]["RewardEffect"]["Effect"] = "angelwing"

	-- 3311231 2颗+3赤炼石包 利用发奖action给玩家
	tDayRechargeAward_Reward[3311231] = {}
	tDayRechargeAward_Reward[3311231]["LogId"] = 12001192
	tDayRechargeAward_Reward[3311231]["DeleteItem"] = {}
	tDayRechargeAward_Reward[3311231]["DeleteItem"][1] = {}
	tDayRechargeAward_Reward[3311231]["DeleteItem"][1]["Id"] = 3311231
	tDayRechargeAward_Reward[3311231]["RewardItem"] = {}
	tDayRechargeAward_Reward[3311231]["RewardItem"][1] = {}
	tDayRechargeAward_Reward[3311231]["RewardItem"][1]["Id"] = 730003 -- +3赤炼石
	tDayRechargeAward_Reward[3311231]["RewardItem"][1]["Attr"] = "0 2 0" -- 2个
	tDayRechargeAward_Reward[3311231]["RewardEffect"] = {}
	tDayRechargeAward_Reward[3311231]["RewardEffect"]["Effect"] = "angelwing"

	-- 3311231 2颗+6赤炼石礼盒 利用发奖action给玩家
	tDayRechargeAward_Reward[3311232] = {}
	tDayRechargeAward_Reward[3311232]["LogId"] = 12001192
	tDayRechargeAward_Reward[3311232]["DeleteItem"] = {}
	tDayRechargeAward_Reward[3311232]["DeleteItem"][1] = {}
	tDayRechargeAward_Reward[3311232]["DeleteItem"][1]["Id"] = 3311232
	tDayRechargeAward_Reward[3311232]["RewardItem"] = {}
	tDayRechargeAward_Reward[3311232]["RewardItem"][1] = {}
	tDayRechargeAward_Reward[3311232]["RewardItem"][1]["Id"] = 730006 -- +6赤炼石
	tDayRechargeAward_Reward[3311232]["RewardItem"][1]["Attr"] = "0 2 0" -- 2个
	tDayRechargeAward_Reward[3311232]["RewardEffect"] = {}
	tDayRechargeAward_Reward[3311232]["RewardEffect"]["Effect"] = "angelwing"

	-- 3311233 4颗龙珠包 利用发奖action给玩家
	tDayRechargeAward_Reward[3311233] = {}
	tDayRechargeAward_Reward[3311233]["LogId"] = 12001192
	tDayRechargeAward_Reward[3311233]["DeleteItem"] = {}
	tDayRechargeAward_Reward[3311233]["DeleteItem"][1] = {}
	tDayRechargeAward_Reward[3311233]["DeleteItem"][1]["Id"] = 3311233
	tDayRechargeAward_Reward[3311233]["RewardItem"] = {}
	tDayRechargeAward_Reward[3311233]["RewardItem"][1] = {}
	tDayRechargeAward_Reward[3311233]["RewardItem"][1]["Id"] = 1088000 -- 4颗龙珠
	tDayRechargeAward_Reward[3311233]["RewardItem"][1]["Attr"] = "0 4 0" -- 4个
	tDayRechargeAward_Reward[3311233]["RewardEffect"] = {}
	tDayRechargeAward_Reward[3311233]["RewardEffect"]["Effect"] = "angelwing"

	-- 3311234 武器淬炼材料大礼包 利用发奖action给玩家
	tDayRechargeAward_Reward[3311234] = {}
	tDayRechargeAward_Reward[3311234]["LogId"] = 12001192
	tDayRechargeAward_Reward[3311234]["DeleteItem"] = {}
	tDayRechargeAward_Reward[3311234]["DeleteItem"][1] = {}
	tDayRechargeAward_Reward[3311234]["DeleteItem"][1]["Id"] = 3311234
	tDayRechargeAward_Reward[3311234]["RewardItem"] = {}
	tDayRechargeAward_Reward[3311234]["RewardItem"][1] = {}
	tDayRechargeAward_Reward[3311234]["RewardItem"][1]["Id"] = 3003629 -- WeaponRefineryPack
	tDayRechargeAward_Reward[3311234]["RewardItem"][1]["Attr"] = "0 4" -- 4个
	tDayRechargeAward_Reward[3311234]["RewardEffect"] = {}
	tDayRechargeAward_Reward[3311234]["RewardEffect"]["Effect"] = "angelwing"

	-- 3311235 20颗回气丹（赠）礼盒 利用发奖action给玩家
	tDayRechargeAward_Reward[3311235] = {}
	tDayRechargeAward_Reward[3311235]["LogId"] = 12001192
	tDayRechargeAward_Reward[3311235]["DeleteItem"] = {}
	tDayRechargeAward_Reward[3311235]["DeleteItem"][1] = {}
	tDayRechargeAward_Reward[3311235]["DeleteItem"][1]["Id"] = 3311235
	tDayRechargeAward_Reward[3311235]["RewardItem"] = {}
	tDayRechargeAward_Reward[3311235]["RewardItem"][1] = {}
	tDayRechargeAward_Reward[3311235]["RewardItem"][1]["Id"] = 3311256 -- 回气丹
	tDayRechargeAward_Reward[3311235]["RewardItem"][1]["Attr"] = "0 4 3" -- 20颗 赠品
	tDayRechargeAward_Reward[3311235]["RewardEffect"] = {}
	tDayRechargeAward_Reward[3311235]["RewardEffect"]["Effect"] = "angelwing"

	-- 3311236 良品宝石组合包 利用发奖action给玩家
	tDayRechargeAward_Reward[3311236] = {}
	tDayRechargeAward_Reward[3311236]["LogId"] = 12001192
	tDayRechargeAward_Reward[3311236]["DeleteItem"] = {}
	tDayRechargeAward_Reward[3311236]["DeleteItem"][1] = {}
	tDayRechargeAward_Reward[3311236]["DeleteItem"][1]["Id"] = 3311236
	tDayRechargeAward_Reward[3311236]["RewardItem"] = {}
	tDayRechargeAward_Reward[3311236]["RewardItem"][1] = {}
	tDayRechargeAward_Reward[3311236]["RewardItem"][1]["Id"] = 3008435 -- RefinedGemPack
	tDayRechargeAward_Reward[3311236]["RewardItem"][1]["Attr"] = "0 4" -- 4个
	tDayRechargeAward_Reward[3311236]["RewardEffect"] = {}
	tDayRechargeAward_Reward[3311236]["RewardEffect"]["Effect"] = "angelwing"

	-- 3311237 2颗八宝护气丹（赠）包 利用发奖action给玩家
	tDayRechargeAward_Reward[3311237] = {}
	tDayRechargeAward_Reward[3311237]["LogId"] = 12001192
	tDayRechargeAward_Reward[3311237]["DeleteItem"] = {}
	tDayRechargeAward_Reward[3311237]["DeleteItem"][1] = {}
	tDayRechargeAward_Reward[3311237]["DeleteItem"][1]["Id"] = 3311237
	tDayRechargeAward_Reward[3311237]["RewardItem"] = {}
	tDayRechargeAward_Reward[3311237]["RewardItem"][1] = {}
	tDayRechargeAward_Reward[3311237]["RewardItem"][1]["Id"] = 3005360 -- FrozenChiPill
	tDayRechargeAward_Reward[3311237]["RewardItem"][1]["Attr"] = "0 2" -- 2颗 赠品
	tDayRechargeAward_Reward[3311237]["RewardEffect"] = {}
	tDayRechargeAward_Reward[3311237]["RewardEffect"]["Effect"] = "angelwing"

	-- 3311238 2颗晶莹星陨石包 利用发奖action给玩家
	tDayRechargeAward_Reward[3311238] = {}
	tDayRechargeAward_Reward[3311238]["LogId"] = 12001192
	tDayRechargeAward_Reward[3311238]["DeleteItem"] = {}
	tDayRechargeAward_Reward[3311238]["DeleteItem"][1] = {}
	tDayRechargeAward_Reward[3311238]["DeleteItem"][1]["Id"] = 3311238
	tDayRechargeAward_Reward[3311238]["RewardItem"] = {}
	tDayRechargeAward_Reward[3311238]["RewardItem"][1] = {}
	tDayRechargeAward_Reward[3311238]["RewardItem"][1]["Id"] = 3009002 -- RadiantStarStone
	tDayRechargeAward_Reward[3311238]["RewardItem"][1]["Attr"] = "0 2 0 2880 1" -- 2颗 2天时效
	tDayRechargeAward_Reward[3311238]["RewardEffect"] = {}
	tDayRechargeAward_Reward[3311238]["RewardEffect"]["Effect"] = "angelwing"

	-- 3311239 4颗晶莹星陨石包 利用发奖action给玩家
	tDayRechargeAward_Reward[3311239] = {}
	tDayRechargeAward_Reward[3311239]["LogId"] = 12001192
	tDayRechargeAward_Reward[3311239]["DeleteItem"] = {}
	tDayRechargeAward_Reward[3311239]["DeleteItem"][1] = {}
	tDayRechargeAward_Reward[3311239]["DeleteItem"][1]["Id"] = 3311239
	tDayRechargeAward_Reward[3311239]["RewardItem"] = {}
	tDayRechargeAward_Reward[3311239]["RewardItem"][1] = {}
	tDayRechargeAward_Reward[3311239]["RewardItem"][1]["Id"] = 3009002 -- RadiantStarStone
	tDayRechargeAward_Reward[3311239]["RewardItem"][1]["Attr"] = "0 4 0 2880 1" -- 4颗  2天时效
	tDayRechargeAward_Reward[3311239]["RewardEffect"] = {}
	tDayRechargeAward_Reward[3311239]["RewardEffect"]["Effect"] = "angelwing"

	-- 3311240 8颗晶莹星陨石礼盒 利用发奖action给玩家
	tDayRechargeAward_Reward[3311240] = {}
	tDayRechargeAward_Reward[3311240]["LogId"] = 12001192
	tDayRechargeAward_Reward[3311240]["DeleteItem"] = {}
	tDayRechargeAward_Reward[3311240]["DeleteItem"][1] = {}
	tDayRechargeAward_Reward[3311240]["DeleteItem"][1]["Id"] = 3311240
	tDayRechargeAward_Reward[3311240]["RewardItem"] = {}
	tDayRechargeAward_Reward[3311240]["RewardItem"][1] = {}
	tDayRechargeAward_Reward[3311240]["RewardItem"][1]["Id"] = 3009002 -- RadiantStarStone
	tDayRechargeAward_Reward[3311240]["RewardItem"][1]["Attr"] = "0 8 0 2880 1" -- 8颗  2天时效
	tDayRechargeAward_Reward[3311240]["RewardEffect"] = {}
	tDayRechargeAward_Reward[3311240]["RewardEffect"]["Effect"] = "angelwing"

	-- 3311241 4颗固化石礼盒 利用发奖action给玩家
	tDayRechargeAward_Reward[3311241] = {}
	tDayRechargeAward_Reward[3311241]["LogId"] = 12001192
	tDayRechargeAward_Reward[3311241]["DeleteItem"] = {}
	tDayRechargeAward_Reward[3311241]["DeleteItem"][1] = {}
	tDayRechargeAward_Reward[3311241]["DeleteItem"][1]["Id"] = 3311241
	tDayRechargeAward_Reward[3311241]["RewardItem"] = {}
	tDayRechargeAward_Reward[3311241]["RewardItem"][1] = {}
	tDayRechargeAward_Reward[3311241]["RewardItem"][1]["Id"] = 723694 -- 固化石
	tDayRechargeAward_Reward[3311241]["RewardItem"][1]["Attr"] = "0 4 0" -- 4颗 
	tDayRechargeAward_Reward[3311241]["RewardEffect"] = {}
	tDayRechargeAward_Reward[3311241]["RewardEffect"]["Effect"] = "angelwing"

	-- 3311242 2颗金钢坚钻礼盒 利用发奖action给玩家
	tDayRechargeAward_Reward[3311242] = {}
	tDayRechargeAward_Reward[3311242]["LogId"] = 12001192
	tDayRechargeAward_Reward[3311242]["DeleteItem"] = {}
	tDayRechargeAward_Reward[3311242]["DeleteItem"][1] = {}
	tDayRechargeAward_Reward[3311242]["DeleteItem"][1]["Id"] = 3311242
	tDayRechargeAward_Reward[3311242]["RewardItem"] = {}
	tDayRechargeAward_Reward[3311242]["RewardItem"][1] = {}
	tDayRechargeAward_Reward[3311242]["RewardItem"][1]["Id"] = 1200005 -- 金刚坚钻
	tDayRechargeAward_Reward[3311242]["RewardItem"][1]["Attr"] = "0 2 0" -- 2颗 
	tDayRechargeAward_Reward[3311242]["RewardEffect"] = {}
	tDayRechargeAward_Reward[3311242]["RewardEffect"]["Effect"] = "angelwing"

	-- 3311243 200000修为值礼盒 
	tDayRechargeAward_Reward[3311243] = {}
	tDayRechargeAward_Reward[3311243]["LogId"] = 12001192
	tDayRechargeAward_Reward[3311243]["DeleteItem"] = {}
	tDayRechargeAward_Reward[3311243]["DeleteItem"][1] = {}
	tDayRechargeAward_Reward[3311243]["DeleteItem"][1]["Id"] = 3311243
	tDayRechargeAward_Reward[3311243]["RewardRepairValue"] = {}
	tDayRechargeAward_Reward[3311243]["RewardRepairValue"]["Value"] = 200000 -- 200000修为值
	tDayRechargeAward_Reward[3311243]["RewardEffect"] = {}
	tDayRechargeAward_Reward[3311243]["RewardEffect"]["Effect"] = "angelwing"

	-- 3311244 150000修为值礼盒 
	tDayRechargeAward_Reward[3311244] = {}
	tDayRechargeAward_Reward[3311244]["LogId"] = 12001192
	tDayRechargeAward_Reward[3311244]["DeleteItem"] = {}
	tDayRechargeAward_Reward[3311244]["DeleteItem"][1] = {}
	tDayRechargeAward_Reward[3311244]["DeleteItem"][1]["Id"] = 3311244
	tDayRechargeAward_Reward[3311244]["RewardRepairValue"] = {}
	tDayRechargeAward_Reward[3311244]["RewardRepairValue"]["Value"] = 150000
	tDayRechargeAward_Reward[3311244]["RewardEffect"] = {}
	tDayRechargeAward_Reward[3311244]["RewardEffect"]["Effect"] = "angelwing"

	-- 3311245 100000修为值礼盒 
	tDayRechargeAward_Reward[3311245] = {}
	tDayRechargeAward_Reward[3311245]["LogId"] = 12001192
	tDayRechargeAward_Reward[3311245]["DeleteItem"] = {}
	tDayRechargeAward_Reward[3311245]["DeleteItem"][1] = {}
	tDayRechargeAward_Reward[3311245]["DeleteItem"][1]["Id"] = 3311245
	tDayRechargeAward_Reward[3311245]["RewardRepairValue"] = {}
	tDayRechargeAward_Reward[3311245]["RewardRepairValue"]["Value"] = 100000
	tDayRechargeAward_Reward[3311245]["RewardEffect"] = {}
	tDayRechargeAward_Reward[3311245]["RewardEffect"]["Effect"] = "angelwing"

	-- 3311246 50000修为值包 
	tDayRechargeAward_Reward[3311246] = {}
	tDayRechargeAward_Reward[3311246]["LogId"] = 12001192
	tDayRechargeAward_Reward[3311246]["DeleteItem"] = {}
	tDayRechargeAward_Reward[3311246]["DeleteItem"][1] = {}
	tDayRechargeAward_Reward[3311246]["DeleteItem"][1]["Id"] = 3311246
	tDayRechargeAward_Reward[3311246]["RewardRepairValue"] = {}
	tDayRechargeAward_Reward[3311246]["RewardRepairValue"]["Value"] = 50000
	tDayRechargeAward_Reward[3311246]["RewardEffect"] = {}
	tDayRechargeAward_Reward[3311246]["RewardEffect"]["Effect"] = "angelwing"

	-- 3311247 30000修为值包
	tDayRechargeAward_Reward[3311247] = {}
	tDayRechargeAward_Reward[3311247]["LogId"] = 12001192
	tDayRechargeAward_Reward[3311247]["DeleteItem"] = {}
	tDayRechargeAward_Reward[3311247]["DeleteItem"][1] = {}
	tDayRechargeAward_Reward[3311247]["DeleteItem"][1]["Id"] = 3311247
	tDayRechargeAward_Reward[3311247]["RewardRepairValue"] = {}
	tDayRechargeAward_Reward[3311247]["RewardRepairValue"]["Value"] = 30000
	tDayRechargeAward_Reward[3311247]["RewardEffect"] = {}
	tDayRechargeAward_Reward[3311247]["RewardEffect"]["Effect"] = "angelwing"

	-- 3311248 1000修为值包
	tDayRechargeAward_Reward[3311248] = {}
	tDayRechargeAward_Reward[3311248]["LogId"] = 12001192
	tDayRechargeAward_Reward[3311248]["DeleteItem"] = {}
	tDayRechargeAward_Reward[3311248]["DeleteItem"][1] = {}
	tDayRechargeAward_Reward[3311248]["DeleteItem"][1]["Id"] = 3311248
	tDayRechargeAward_Reward[3311248]["RewardRepairValue"] = {}
	tDayRechargeAward_Reward[3311248]["RewardRepairValue"]["Value"] = 1000
	tDayRechargeAward_Reward[3311248]["RewardEffect"] = {}
	tDayRechargeAward_Reward[3311248]["RewardEffect"]["Effect"] = "angelwing"

	-- 3311249 至尊豪侠礼盒 利用发奖action给玩家
	tDayRechargeAward_Reward[3311249] = {}
	tDayRechargeAward_Reward[3311249]["LogId"] = 12001192
	tDayRechargeAward_Reward[3311249]["DeleteItem"] = {}
	tDayRechargeAward_Reward[3311249]["DeleteItem"][1] = {}
	tDayRechargeAward_Reward[3311249]["DeleteItem"][1]["Id"] = 3311249
	tDayRechargeAward_Reward[3311249]["RewardItem"] = {}
	tDayRechargeAward_Reward[3311249]["RewardItem"][1] = {}
	tDayRechargeAward_Reward[3311249]["RewardItem"][1]["Id"] = 3311243 -- 200000修为值礼盒
	tDayRechargeAward_Reward[3311249]["RewardItem"][1]["Attr"] = "0 1 0" -- 1个
	tDayRechargeAward_Reward[3311249]["RewardItem"][2] = {}
	tDayRechargeAward_Reward[3311249]["RewardItem"][2]["Id"] = 4060001 -- 通用神纹精粹
	tDayRechargeAward_Reward[3311249]["RewardItem"][2]["Attr"] = "0 300" -- 300个
	tDayRechargeAward_Reward[3311249]["RewardItem"][3] = {}
	tDayRechargeAward_Reward[3311249]["RewardItem"][3]["Id"] = 711504 -- 小抽奖券
	tDayRechargeAward_Reward[3311249]["RewardItem"][3]["Attr"] = "0 150" -- 150个
	tDayRechargeAward_Reward[3311249]["RewardItem"][4] = {}
	tDayRechargeAward_Reward[3311249]["RewardItem"][4]["Id"] = 3307971
	tDayRechargeAward_Reward[3311249]["RewardItem"][4]["Attr"] = "0 1"
	tDayRechargeAward_Reward[3311249]["RewardEffect"] = {}
	tDayRechargeAward_Reward[3311249]["RewardEffect"]["Effect"] = "angelwing"

	-- 3311250 荣耀豪侠礼盒 利用发奖action给玩家
	tDayRechargeAward_Reward[3311250] = {}
	tDayRechargeAward_Reward[3311250]["LogId"] = 12001192
	tDayRechargeAward_Reward[3311250]["DeleteItem"] = {}
	tDayRechargeAward_Reward[3311250]["DeleteItem"][1] = {}
	tDayRechargeAward_Reward[3311250]["DeleteItem"][1]["Id"] = 3311250
	tDayRechargeAward_Reward[3311250]["RewardItem"] = {}
	tDayRechargeAward_Reward[3311250]["RewardItem"][1] = {}
	tDayRechargeAward_Reward[3311250]["RewardItem"][1]["Id"] = 3311244 -- 150000修为值礼盒
	tDayRechargeAward_Reward[3311250]["RewardItem"][1]["Attr"] = "0 1 0" -- 1个
	tDayRechargeAward_Reward[3311250]["RewardItem"][2] = {}
	tDayRechargeAward_Reward[3311250]["RewardItem"][2]["Id"] = 4060001 -- 通用神纹精粹
	tDayRechargeAward_Reward[3311250]["RewardItem"][2]["Attr"] = "0 200" -- 200个
	tDayRechargeAward_Reward[3311250]["RewardItem"][3] = {}
	tDayRechargeAward_Reward[3311250]["RewardItem"][3]["Id"] = 711504 -- 小抽奖券
	tDayRechargeAward_Reward[3311250]["RewardItem"][3]["Attr"] = "0 90" -- 90个
	tDayRechargeAward_Reward[3311250]["RewardItem"][4] = {}
	tDayRechargeAward_Reward[3311250]["RewardItem"][4]["Id"] = 3307972
	tDayRechargeAward_Reward[3311250]["RewardItem"][4]["Attr"] = "0 1"
	tDayRechargeAward_Reward[3311250]["RewardEffect"] = {}
	tDayRechargeAward_Reward[3311250]["RewardEffect"]["Effect"] = "angelwing"

	-- 3311251 尊贵豪侠礼盒 利用发奖action给玩家
	tDayRechargeAward_Reward[3311251] = {}
	tDayRechargeAward_Reward[3311251]["LogId"] = 12001192
	tDayRechargeAward_Reward[3311251]["DeleteItem"] = {}
	tDayRechargeAward_Reward[3311251]["DeleteItem"][1] = {}
	tDayRechargeAward_Reward[3311251]["DeleteItem"][1]["Id"] = 3311251
	tDayRechargeAward_Reward[3311251]["RewardItem"] = {}
	tDayRechargeAward_Reward[3311251]["RewardItem"][1] = {}
	tDayRechargeAward_Reward[3311251]["RewardItem"][1]["Id"] = 3311245 -- 100000修为值礼盒
	tDayRechargeAward_Reward[3311251]["RewardItem"][1]["Attr"] = "0 1 0" -- 1个
	tDayRechargeAward_Reward[3311251]["RewardItem"][2] = {}
	tDayRechargeAward_Reward[3311251]["RewardItem"][2]["Id"] = 4060001 -- 通用神纹精粹
	tDayRechargeAward_Reward[3311251]["RewardItem"][2]["Attr"] = "0 100" -- 100个
	tDayRechargeAward_Reward[3311251]["RewardItem"][3] = {}
	tDayRechargeAward_Reward[3311251]["RewardItem"][3]["Id"] = 711504 -- 小抽奖券
	tDayRechargeAward_Reward[3311251]["RewardItem"][3]["Attr"] = "0 60" -- 60个
	tDayRechargeAward_Reward[3311251]["RewardItem"][4] = {}
	tDayRechargeAward_Reward[3311251]["RewardItem"][4]["Id"] = 3307973
	tDayRechargeAward_Reward[3311251]["RewardItem"][4]["Attr"] = "0 1"
	tDayRechargeAward_Reward[3311251]["RewardEffect"] = {}
	tDayRechargeAward_Reward[3311251]["RewardEffect"]["Effect"] = "angelwing"

	-- 3311252 奢华豪侠礼盒 利用发奖action给玩家
	tDayRechargeAward_Reward[3311252] = {}
	tDayRechargeAward_Reward[3311252]["LogId"] = 12001192
	tDayRechargeAward_Reward[3311252]["DeleteItem"] = {}
	tDayRechargeAward_Reward[3311252]["DeleteItem"][1] = {}
	tDayRechargeAward_Reward[3311252]["DeleteItem"][1]["Id"] = 3311252
	tDayRechargeAward_Reward[3311252]["RewardItem"] = {}
	tDayRechargeAward_Reward[3311252]["RewardItem"][1] = {}
	tDayRechargeAward_Reward[3311252]["RewardItem"][1]["Id"] = 3311246 -- 50000修为值礼盒
	tDayRechargeAward_Reward[3311252]["RewardItem"][1]["Attr"] = "0 1 0" -- 1个
	tDayRechargeAward_Reward[3311252]["RewardItem"][2] = {}
	tDayRechargeAward_Reward[3311252]["RewardItem"][2]["Id"] = 3009002 -- 晶莹星陨石
	tDayRechargeAward_Reward[3311252]["RewardItem"][2]["Attr"] = "0 2 0 2880 1" -- 2个 2天时效
	tDayRechargeAward_Reward[3311252]["RewardItem"][3] = {}
	tDayRechargeAward_Reward[3311252]["RewardItem"][3]["Id"] = 711504 -- 小抽奖券
	tDayRechargeAward_Reward[3311252]["RewardItem"][3]["Attr"] = "0 30" -- 30个
	tDayRechargeAward_Reward[3311252]["RewardItem"][4] = {}
	tDayRechargeAward_Reward[3311252]["RewardItem"][4]["Id"] = 3003124 -- 免费强炼丹
	tDayRechargeAward_Reward[3311252]["RewardItem"][4]["Attr"] = "0 50"
	tDayRechargeAward_Reward[3311252]["RewardEffect"] = {}
	tDayRechargeAward_Reward[3311252]["RewardEffect"]["Effect"] = "angelwing"

	-- 3311256 5颗回气丹（赠）包
	tDayRechargeAward_Reward[3311256] = {}
	tDayRechargeAward_Reward[3311256]["LogId"] = 12001192
	tDayRechargeAward_Reward[3311256]["DeleteItem"] = {}
	tDayRechargeAward_Reward[3311256]["DeleteItem"][1] = {}
	tDayRechargeAward_Reward[3311256]["DeleteItem"][1]["Id"] = 3311256
	tDayRechargeAward_Reward[3311256]["RewardItem"] = {}
	tDayRechargeAward_Reward[3311256]["RewardItem"][1] = {}
	tDayRechargeAward_Reward[3311256]["RewardItem"][1]["Id"] = 729481
	tDayRechargeAward_Reward[3311256]["RewardItem"][1]["Attr"] = "0 5 3" -- 5个 赠品
	tDayRechargeAward_Reward[3311256]["RewardEffect"] = {}
	tDayRechargeAward_Reward[3311256]["RewardEffect"]["Effect"] = "angelwing"

----------------逻辑-------------------------------

function DayRechargeAward_GetReward(nItemId)
	local nUserId = Get_UserId()
	
	--检测礼包是否存在
	if not Item_ChkItem(nItemId) then
		return
	end
	
	-- 奖励所需要的背包空间
	local nSpace = RewardTemplate_GetRewardSpace(tDayRechargeAward_Reward[nItemId], nUserId)
	
	-- 判断背包空间是否足够，弹出提示。
	if not User_CheckLeftSpace(nSpace, nUserId) then
		Sys_MsgBox(string.format(tDayRechargeAward_Text["BagFull"], nSpace))
		return
	end
	
	-- 给玩家奖励
	RewardTemplate_UseItemAndMsg(tDayRechargeAward_Reward[nItemId])
end

function DayRechargeAward_GetRepair(nItemId)
	local nUserId = Get_UserId()
	
	--检测礼包是否存在
	if not Item_ChkItem(nItemId) then
		return
	end
	
	local nUserRepair = Get_UserCultureValue(nUserId) -- 获取玩家的修为值
	local nGetRepair = tDayRechargeAward_Reward[nItemId]["RewardRepairValue"]["Value"] -- 要给玩家的修为值
	
	-- 判断修为值上限
	if (nUserRepair + nGetRepair) > G_User_RepairValue then
		User_TalkChannel2005(tRewardTemplate_Text["RepairValue"])
		return
	end
	
	-- 给玩家奖励
	RewardTemplate_UseItemAndMsg(tDayRechargeAward_Reward[nItemId])
end


----------------物品模板-------------------------
for i = 3311229, 3311242 do
	tItem[i] = tItem[i] or {}
	tItem[i]["Function"] = function(nItemId, sItemName)
		DayRechargeAward_GetReward(nItemId)
	end
end

for i = 3311243, 3311248 do
	tItem[i] = tItem[i] or {}
	tItem[i]["Function"] = function(nItemId, sItemName)
		DayRechargeAward_GetRepair(nItemId)
	end
end

for i = 3311249, 3311252 do
	tItem[i] = tItem[i] or {}
	tItem[i]["Function"] = function(nItemId, sItemName)
		DayRechargeAward_GetReward(nItemId)
	end
end

tItem[3311256] = tItem[3311256] or {}
tItem[3311256]["Function"] = function(nItemId, sItemName)
	DayRechargeAward_GetReward(nItemId)
end





