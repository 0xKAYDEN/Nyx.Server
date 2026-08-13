------------------------------------------------------------------------------------
--Name：           190806[英文征服][活动脚本]9月耗赠点活动（9.5-9.25）
--Creator:      杨艳
--Created:     2019/08/09
------------------------------------------------------------------------------------


--命名前缀
--SepMoMoAct_

--logid： 12001557

--掩码说明


--npc：

-------------------------------------------数据部分-----------------------------------------
local tSepMoMoAct_Log = {}
	-- 删除物品log
	tSepMoMoAct_Log["DeleteItem"] = "0,0,%d,%d,12001557,2,0,0"

local tSepMoMoAct_Award = {}
	
	tSepMoMoAct_Award[3322921] = {}
	tSepMoMoAct_Award[3322921]["LogId"] = 12001557
	tSepMoMoAct_Award[3322921]["RewardItem"] = {}
	tSepMoMoAct_Award[3322921]["RewardItem"][1] = {}
	tSepMoMoAct_Award[3322921]["RewardItem"][1]["Id"] = 3322921 -- 【库】赤炼石鸿运转盘[属性:11]【表格】赤炼石鸿运转盘
	tSepMoMoAct_Award[3322921]["RewardItem"][1]["Attr"] = "0 1" -- 赤炼石鸿运转盘*1
	tSepMoMoAct_Award[3322921]["RewardEffect"] = {}
	tSepMoMoAct_Award[3322921]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSepMoMoAct_Award[3322921]["RewardEffect"]["Effect"] = "angelwing"
	
	tSepMoMoAct_Award[3322922] = {}
	tSepMoMoAct_Award[3322922]["LogId"] = 12001557
	tSepMoMoAct_Award[3322922]["RewardItem"] = {}
	tSepMoMoAct_Award[3322922]["RewardItem"][1] = {}
	tSepMoMoAct_Award[3322922]["RewardItem"][1]["Id"] = 3322922 -- 【库】星陨石鸿运转盘[属性:11]【表格】星陨石鸿运转盘
	tSepMoMoAct_Award[3322922]["RewardItem"][1]["Attr"] = "0 1" -- 星陨石鸿运转盘*1
	tSepMoMoAct_Award[3322922]["RewardEffect"] = {}
	tSepMoMoAct_Award[3322922]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSepMoMoAct_Award[3322922]["RewardEffect"]["Effect"] = "angelwing"
	
	tSepMoMoAct_Award[3322923] = {}
	tSepMoMoAct_Award[3322923]["LogId"] = 12001557
	tSepMoMoAct_Award[3322923]["RewardItem"] = {}
	tSepMoMoAct_Award[3322923]["RewardItem"][1] = {}
	tSepMoMoAct_Award[3322923]["RewardItem"][1]["Id"] = 3322923 -- 【库】天石（赠）鸿运转盘[属性:11]【表格】天石（赠）鸿运转盘
	tSepMoMoAct_Award[3322923]["RewardItem"][1]["Attr"] = "0 1" -- 天石（赠）鸿运转盘*1
	tSepMoMoAct_Award[3322923]["RewardEffect"] = {}
	tSepMoMoAct_Award[3322923]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSepMoMoAct_Award[3322923]["RewardEffect"]["Effect"] = "angelwing"
	
	tSepMoMoAct_Award[3322924] = {}
	tSepMoMoAct_Award[3322924]["LogId"] = 12001557
	tSepMoMoAct_Award[3322924]["RewardItem"] = {}
	tSepMoMoAct_Award[3322924]["RewardItem"][1] = {}
	tSepMoMoAct_Award[3322924]["RewardItem"][1]["Id"] = 3322924 -- 【库】气力值鸿运转盘[属性:11]【表格】气力值鸿运转盘
	tSepMoMoAct_Award[3322924]["RewardItem"][1]["Attr"] = "0 1" -- 气力值鸿运转盘*1
	tSepMoMoAct_Award[3322924]["RewardEffect"] = {}
	tSepMoMoAct_Award[3322924]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSepMoMoAct_Award[3322924]["RewardEffect"]["Effect"] = "angelwing"
	
	tSepMoMoAct_Award[3326907] = {}
	tSepMoMoAct_Award[3326907]["LogId"] = 12001557
	tSepMoMoAct_Award[3326907]["RewardItem"] = {}
	tSepMoMoAct_Award[3326907]["RewardItem"][1] = {}
	tSepMoMoAct_Award[3326907]["RewardItem"][1]["Id"] = 3326907 -- 【库】天石鸿运转盘[属性:11]【表格】天石鸿运转盘
	tSepMoMoAct_Award[3326907]["RewardItem"][1]["Attr"] = "0 1" -- 天石鸿运转盘*1
	tSepMoMoAct_Award[3326907]["RewardEffect"] = {}
	tSepMoMoAct_Award[3326907]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSepMoMoAct_Award[3326907]["RewardEffect"]["Effect"] = "angelwing"
	
	tSepMoMoAct_Award[3331629] = {}
	tSepMoMoAct_Award[3331629]["LogId"] = 12001557
	tSepMoMoAct_Award[3331629]["RewardItem"] = {}
	tSepMoMoAct_Award[3331629]["RewardItem"][1] = {}
	tSepMoMoAct_Award[3331629]["RewardItem"][1]["Id"] = 3331629 -- 【库】天石鸿运转盘[属性:11]【表格】天石鸿运转盘
	tSepMoMoAct_Award[3331629]["RewardItem"][1]["Attr"] = "0 1" -- 天石鸿运转盘*1
	tSepMoMoAct_Award[3331629]["RewardEffect"] = {}
	tSepMoMoAct_Award[3331629]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSepMoMoAct_Award[3331629]["RewardEffect"]["Effect"] = "angelwing"
	
	
	tSepMoMoAct_Award[3330205] = {}
	tSepMoMoAct_Award[3330205]["LogId"] = 12001557
	tSepMoMoAct_Award[3330205]["RewardItem"] = {}
	tSepMoMoAct_Award[3330205]["RewardItem"][1] = {}
	tSepMoMoAct_Award[3330205]["RewardItem"][1]["Id"] = 3330205 -- 【库】惊喜外套轮盘[属性:11]【表格】惊喜外套轮盘
	tSepMoMoAct_Award[3330205]["RewardItem"][1]["Attr"] = "0 1" -- 惊喜外套轮盘*1
	tSepMoMoAct_Award[3330205]["RewardEffect"] = {}
	tSepMoMoAct_Award[3330205]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSepMoMoAct_Award[3330205]["RewardEffect"]["Effect"] = "angelwing"
	
	tSepMoMoAct_Award[3330206] = {}
	tSepMoMoAct_Award[3330206]["LogId"] = 12001557
	tSepMoMoAct_Award[3330206]["RewardItem"] = {}
	tSepMoMoAct_Award[3330206]["RewardItem"][1] = {}
	tSepMoMoAct_Award[3330206]["RewardItem"][1]["Id"] = 3330206 -- 【库】FlowerFortuneWheel[属性:11]【表格】FlowerFortuneWheel
	tSepMoMoAct_Award[3330206]["RewardItem"][1]["Attr"] = "0 1" -- FlowerFortuneWheel*1
	tSepMoMoAct_Award[3330206]["RewardEffect"] = {}
	tSepMoMoAct_Award[3330206]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSepMoMoAct_Award[3330206]["RewardEffect"]["Effect"] = "angelwing"
	
	tSepMoMoAct_Award[3330207] = {}
	tSepMoMoAct_Award[3330207]["LogId"] = 12001557
	tSepMoMoAct_Award[3330207]["RewardItem"] = {}
	tSepMoMoAct_Award[3330207]["RewardItem"][1] = {}
	tSepMoMoAct_Award[3330207]["RewardItem"][1]["Id"] = 3330207 -- 【库】绚烂翅膀轮盘[属性:11]【表格】绚烂翅膀轮盘
	tSepMoMoAct_Award[3330207]["RewardItem"][1]["Attr"] = "0 1" -- 绚烂翅膀轮盘*1
	tSepMoMoAct_Award[3330207]["RewardEffect"] = {}
	tSepMoMoAct_Award[3330207]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSepMoMoAct_Award[3330207]["RewardEffect"]["Effect"] = "angelwing"
	
	tSepMoMoAct_Award[3330208] = {}
	tSepMoMoAct_Award[3330208]["LogId"] = 12001557
	tSepMoMoAct_Award[3330208]["RewardItem"] = {}
	tSepMoMoAct_Award[3330208]["RewardItem"][1] = {}
	tSepMoMoAct_Award[3330208]["RewardItem"][1]["Id"] = 3330208 -- 【库】华丽星陨石轮盘[属性:11]【表格】华丽星陨石轮盘
	tSepMoMoAct_Award[3330208]["RewardItem"][1]["Attr"] = "0 1" -- 华丽星陨石轮盘*1
	tSepMoMoAct_Award[3330208]["RewardEffect"] = {}
	tSepMoMoAct_Award[3330208]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSepMoMoAct_Award[3330208]["RewardEffect"]["Effect"] = "angelwing"
	
	tSepMoMoAct_Award[3330209] = {}
	tSepMoMoAct_Award[3330209]["LogId"] = 12001557
	tSepMoMoAct_Award[3330209]["RewardItem"] = {}
	tSepMoMoAct_Award[3330209]["RewardItem"][1] = {}
	tSepMoMoAct_Award[3330209]["RewardItem"][1]["Id"] = 3330209 -- 【库】威严灵珠轮盘[属性:11]【表格】威严灵珠轮盘
	tSepMoMoAct_Award[3330209]["RewardItem"][1]["Attr"] = "0 1" -- 威严灵珠轮盘*1
	tSepMoMoAct_Award[3330209]["RewardEffect"] = {}
	tSepMoMoAct_Award[3330209]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSepMoMoAct_Award[3330209]["RewardEffect"]["Effect"] = "angelwing"
	
	-- ===7天时效征服十周年外套（赠）礼盒
	-- ===索引: tSepMoMoAct_Award[3330210]
	-- ===删除: 3330210,1
	tSepMoMoAct_Award[3330210] = {}
	tSepMoMoAct_Award[3330210]["LogId"] = 12001557
	tSepMoMoAct_Award[3330210]["DeleteItem"] = {}
	tSepMoMoAct_Award[3330210]["DeleteItem"][1] = {}
	tSepMoMoAct_Award[3330210]["DeleteItem"][1]["Id"] = 3330210 -- 【库】 3330210 【库里没有该物品】[属性:]
	tSepMoMoAct_Award[3330210]["RewardItem"] = {}
	tSepMoMoAct_Award[3330210]["RewardItem"][1] = {}
	tSepMoMoAct_Award[3330210]["RewardItem"][1]["Id"] = 192465 -- PrideofSuccess[192465][属性:0][叠加:0][金币:100], 【表格】7天时效征服十周年外套（赠）
	tSepMoMoAct_Award[3330210]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1" -- 7天时效(激活)的1%神佑PrideofSuccess（赠）*1
	tSepMoMoAct_Award[3330210]["RewardEffect"] = {}
	tSepMoMoAct_Award[3330210]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSepMoMoAct_Award[3330210]["RewardEffect"]["Effect"] = "angelwing"


	tSepMoMoAct_Award[3330211] = {}
	-- ===7天时效梦幻仙缘套装【珍藏版】（赠）礼盒
	-- ===索引: tSepMoMoAct_Award[3330211]
	-- ===删除: 3330211,1
	tSepMoMoAct_Award[3330211]["LogId"] = 12001557
	tSepMoMoAct_Award[3330211]["DeleteItem"] = {}
	tSepMoMoAct_Award[3330211]["DeleteItem"][1] = {}
	tSepMoMoAct_Award[3330211]["DeleteItem"][1]["Id"] = 3330211 -- 【库】 3330211 【库里没有该物品】[属性:]
	tSepMoMoAct_Award[3330211]["RewardItem"] = {}
	tSepMoMoAct_Award[3330211]["RewardItem"][1] = {}
	tSepMoMoAct_Award[3330211]["RewardItem"][1]["Id"] = 192125 -- DreamyFairySuit[192125][属性:0][叠加:0][金币:0], 【表格】7天时效梦幻仙缘套装【珍藏版】（赠）
	tSepMoMoAct_Award[3330211]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1" -- 7天时效(激活)的1%神佑DreamyFairySuit（赠）*1
	tSepMoMoAct_Award[3330211]["RewardEffect"] = {}
	tSepMoMoAct_Award[3330211]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSepMoMoAct_Award[3330211]["RewardEffect"]["Effect"] = "angelwing"


	tSepMoMoAct_Award[3330212] = {}
	-- ===7天时效EvilPumpkin（赠）礼盒
	-- ===索引: tSepMoMoAct_Award[3330212]
	-- ===删除: 3330212,1
	tSepMoMoAct_Award[3330212]["LogId"] = 12001557
	tSepMoMoAct_Award[3330212]["DeleteItem"] = {}
	tSepMoMoAct_Award[3330212]["DeleteItem"][1] = {}
	tSepMoMoAct_Award[3330212]["DeleteItem"][1]["Id"] = 3330212 -- 【库】 3330212 【库里没有该物品】[属性:]
	tSepMoMoAct_Award[3330212]["RewardItem"] = {}
	tSepMoMoAct_Award[3330212]["RewardItem"][1] = {}
	tSepMoMoAct_Award[3330212]["RewardItem"][1]["Id"] = 192695 -- EvilPumpkin[192695][属性:0][叠加:0][金币:0], 【表格】7天时效EvilPumpkin（赠）
	tSepMoMoAct_Award[3330212]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1" -- 7天时效(激活)的1%神佑EvilPumpkin（赠）*1
	tSepMoMoAct_Award[3330212]["RewardEffect"] = {}
	tSepMoMoAct_Award[3330212]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSepMoMoAct_Award[3330212]["RewardEffect"]["Effect"] = "angelwing"


	tSepMoMoAct_Award[3330213] = {}
	-- ===7天时效萌萌兔套装（赠）礼盒
	-- ===索引: tSepMoMoAct_Award[3330213]
	-- ===删除: 3330213,1
	tSepMoMoAct_Award[3330213]["LogId"] = 12001557
	tSepMoMoAct_Award[3330213]["DeleteItem"] = {}
	tSepMoMoAct_Award[3330213]["DeleteItem"][1] = {}
	tSepMoMoAct_Award[3330213]["DeleteItem"][1]["Id"] = 3330213 -- 【库】 3330213 【库里没有该物品】[属性:]
	tSepMoMoAct_Award[3330213]["RewardItem"] = {}
	tSepMoMoAct_Award[3330213]["RewardItem"][1] = {}
	tSepMoMoAct_Award[3330213]["RewardItem"][1]["Id"] = 193115 -- XmasBunny[193115][属性:0][叠加:0][金币:100], 【表格】7天时效萌萌兔套装（赠）
	tSepMoMoAct_Award[3330213]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1" -- 7天时效(激活)的1%神佑XmasBunny（赠）*1
	tSepMoMoAct_Award[3330213]["RewardEffect"] = {}
	tSepMoMoAct_Award[3330213]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSepMoMoAct_Award[3330213]["RewardEffect"]["Effect"] = "angelwing"


	tSepMoMoAct_Award[3330214] = {}
	-- ===永久时效BlessedStar（Splendor）（赠）礼盒
	-- ===索引: tSepMoMoAct_Award[3330214]
	-- ===删除: 3330214,1
	tSepMoMoAct_Award[3330214]["LogId"] = 12001557
	tSepMoMoAct_Award[3330214]["DeleteItem"] = {}
	tSepMoMoAct_Award[3330214]["DeleteItem"][1] = {}
	tSepMoMoAct_Award[3330214]["DeleteItem"][1]["Id"] = 3330214 -- 【库】 3330214 【库里没有该物品】[属性:]
	tSepMoMoAct_Award[3330214]["RewardItem"] = {}
	tSepMoMoAct_Award[3330214]["RewardItem"][1] = {}
	tSepMoMoAct_Award[3330214]["RewardItem"][1]["Id"] = 195075 -- BlessedStar(Splendor)[195075][属性:0][叠加:0][金币:0], 【表格】永久时效BlessedStar（Splendor）（赠）
	tSepMoMoAct_Award[3330214]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑BlessedStar(Splendor)（赠）*1
	tSepMoMoAct_Award[3330214]["RewardEffect"] = {}
	tSepMoMoAct_Award[3330214]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSepMoMoAct_Award[3330214]["RewardEffect"]["Effect"] = "angelwing"


	tSepMoMoAct_Award[3330215] = {}
	-- ===3天时效喵基尼【璀璨版】（赠）礼盒
	-- ===索引: tSepMoMoAct_Award[3330215]
	-- ===删除: 3330215,1
	tSepMoMoAct_Award[3330215]["LogId"] = 12001557
	tSepMoMoAct_Award[3330215]["DeleteItem"] = {}
	tSepMoMoAct_Award[3330215]["DeleteItem"][1] = {}
	tSepMoMoAct_Award[3330215]["DeleteItem"][1]["Id"] = 3330215 -- 【库】 3330215 【库里没有该物品】[属性:]
	tSepMoMoAct_Award[3330215]["RewardItem"] = {}
	tSepMoMoAct_Award[3330215]["RewardItem"][1] = {}
	tSepMoMoAct_Award[3330215]["RewardItem"][1]["Id"] = 193565 -- LavaCatRobe(Star)[193565][属性:0][叠加:0][金币:0], 【表格】3天时效喵基尼【璀璨版】（赠）
	tSepMoMoAct_Award[3330215]["RewardItem"][1]["Attr"] = "0 1 3 4320 1 0 0 1" -- 3天时效(激活)的1%神佑LavaCatRobe(Star)（赠）*1
	tSepMoMoAct_Award[3330215]["RewardEffect"] = {}
	tSepMoMoAct_Award[3330215]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSepMoMoAct_Award[3330215]["RewardEffect"]["Effect"] = "angelwing"


	tSepMoMoAct_Award[3330216] = {}
	-- ===3天时效RobeofDarkness（Hades）（NoHelmet）（赠）礼盒
	-- ===索引: tSepMoMoAct_Award[3330216]
	-- ===删除: 3330216,1
	tSepMoMoAct_Award[3330216]["LogId"] = 12001557
	tSepMoMoAct_Award[3330216]["DeleteItem"] = {}
	tSepMoMoAct_Award[3330216]["DeleteItem"][1] = {}
	tSepMoMoAct_Award[3330216]["DeleteItem"][1]["Id"] = 3330216 -- 【库】 3330216 【库里没有该物品】[属性:]
	tSepMoMoAct_Award[3330216]["RewardItem"] = {}
	tSepMoMoAct_Award[3330216]["RewardItem"][1] = {}
	tSepMoMoAct_Award[3330216]["RewardItem"][1]["Id"] = 193275 -- RobeofDarkness(Hades)(NoHelmet)[193275][属性:8][叠加:0][金币:0], 【表格】3天时效RobeofDarkness（Hades）（NoHelmet）（赠）
	tSepMoMoAct_Award[3330216]["RewardItem"][1]["Attr"] = "0 1 3 4320 1 0 0 1" -- 3天时效(激活)的1%神佑RobeofDarkness(Hades)(NoHelmet)（赠）*1
	tSepMoMoAct_Award[3330216]["RewardEffect"] = {}
	tSepMoMoAct_Award[3330216]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSepMoMoAct_Award[3330216]["RewardEffect"]["Effect"] = "angelwing"


	tSepMoMoAct_Award[3330217] = {}
	-- ===3天时效BubbleSwimsuit（赠）礼盒
	-- ===索引: tSepMoMoAct_Award[3330217]
	-- ===删除: 3330217,1
	tSepMoMoAct_Award[3330217]["LogId"] = 12001557
	tSepMoMoAct_Award[3330217]["DeleteItem"] = {}
	tSepMoMoAct_Award[3330217]["DeleteItem"][1] = {}
	tSepMoMoAct_Award[3330217]["DeleteItem"][1]["Id"] = 3330217 -- 【库】 3330217 【库里没有该物品】[属性:]
	tSepMoMoAct_Award[3330217]["RewardItem"] = {}
	tSepMoMoAct_Award[3330217]["RewardItem"][1] = {}
	tSepMoMoAct_Award[3330217]["RewardItem"][1]["Id"] = 189675 -- BubbleSwimsuit[189675][属性:0][叠加:0][金币:0], 【表格】3天时效BubbleSwimsuit（赠）
	tSepMoMoAct_Award[3330217]["RewardItem"][1]["Attr"] = "0 1 3 4320 1 0 0 1" -- 3天时效(激活)的1%神佑BubbleSwimsuit（赠）*1
	tSepMoMoAct_Award[3330217]["RewardEffect"] = {}
	tSepMoMoAct_Award[3330217]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSepMoMoAct_Award[3330217]["RewardEffect"]["Effect"] = "angelwing"


	tSepMoMoAct_Award[3330218] = {}
	-- ===3天时效WingsofRomance（赠）礼盒
	-- ===索引: tSepMoMoAct_Award[3330218]
	-- ===删除: 3330218,1
	tSepMoMoAct_Award[3330218]["LogId"] = 12001557
	tSepMoMoAct_Award[3330218]["DeleteItem"] = {}
	tSepMoMoAct_Award[3330218]["DeleteItem"][1] = {}
	tSepMoMoAct_Award[3330218]["DeleteItem"][1]["Id"] = 3330218 -- 【库】 3330218 【库里没有该物品】[属性:]
	tSepMoMoAct_Award[3330218]["RewardWing"] = {}
	tSepMoMoAct_Award[3330218]["RewardWing"]["TitleType"] = 6012 -- 【库】WingsofRomance, 【表格】3天时效WingsofRomance（赠）
	tSepMoMoAct_Award[3330218]["RewardWing"]["TitleId"] = 6012
	tSepMoMoAct_Award[3330218]["RewardWing"]["SaveTime"] = 4320 -- 3天时效的[翅膀]:WingsofRomance, 【需求】3天时效WingsofRomance（赠）
	tSepMoMoAct_Award[3330218]["RewardEffect"] = {}
	tSepMoMoAct_Award[3330218]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSepMoMoAct_Award[3330218]["RewardEffect"]["Effect"] = "angelwing"


	tSepMoMoAct_Award[3330219] = {}
	-- ===3天时效 WingsofHeart（赠）礼盒
	-- ===索引: tSepMoMoAct_Award[3330219]
	-- ===删除: 3330219,1
	tSepMoMoAct_Award[3330219]["LogId"] = 12001557
	tSepMoMoAct_Award[3330219]["DeleteItem"] = {}
	tSepMoMoAct_Award[3330219]["DeleteItem"][1] = {}
	tSepMoMoAct_Award[3330219]["DeleteItem"][1]["Id"] = 3330219 -- 【库】 3330219 【库里没有该物品】[属性:]
	tSepMoMoAct_Award[3330219]["RewardWing"] = {}
	tSepMoMoAct_Award[3330219]["RewardWing"]["TitleType"] = 6020 -- 【库】WingsofHeart, 【表格】3天时效 WingsofHeart（赠）
	tSepMoMoAct_Award[3330219]["RewardWing"]["TitleId"] = 6020
	tSepMoMoAct_Award[3330219]["RewardWing"]["SaveTime"] = 4320 -- 3天时效的[翅膀]:WingsofHeart, 【需求】3天时效 WingsofHeart（赠）
	tSepMoMoAct_Award[3330219]["RewardEffect"] = {}
	tSepMoMoAct_Award[3330219]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSepMoMoAct_Award[3330219]["RewardEffect"]["Effect"] = "angelwing"


	tSepMoMoAct_Award[3330220] = {}
	-- ===3天时效 OrangeGlowWings（赠）礼盒
	-- ===索引: tSepMoMoAct_Award[3330220]
	-- ===删除: 3330220,1
	tSepMoMoAct_Award[3330220]["LogId"] = 12001557
	tSepMoMoAct_Award[3330220]["DeleteItem"] = {}
	tSepMoMoAct_Award[3330220]["DeleteItem"][1] = {}
	tSepMoMoAct_Award[3330220]["DeleteItem"][1]["Id"] = 3330220 -- 【库】 3330220 【库里没有该物品】[属性:]
	tSepMoMoAct_Award[3330220]["RewardWing"] = {}
	tSepMoMoAct_Award[3330220]["RewardWing"]["TitleType"] = 6014 -- 【库】OrangeGlowWings, 【表格】3天时效 OrangeGlowWings（赠）
	tSepMoMoAct_Award[3330220]["RewardWing"]["TitleId"] = 6014
	tSepMoMoAct_Award[3330220]["RewardWing"]["SaveTime"] = 4320 -- 3天时效的[翅膀]:OrangeGlowWings, 【需求】3天时效 OrangeGlowWings（赠）
	tSepMoMoAct_Award[3330220]["RewardEffect"] = {}
	tSepMoMoAct_Award[3330220]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSepMoMoAct_Award[3330220]["RewardEffect"]["Effect"] = "angelwing"


	tSepMoMoAct_Award[3330221] = {}
	-- ===3天时效EmeraldGlowWing（赠）礼盒
	-- ===索引: tSepMoMoAct_Award[3330221]
	-- ===删除: 3330221,1
	tSepMoMoAct_Award[3330221]["LogId"] = 12001557
	tSepMoMoAct_Award[3330221]["DeleteItem"] = {}
	tSepMoMoAct_Award[3330221]["DeleteItem"][1] = {}
	tSepMoMoAct_Award[3330221]["DeleteItem"][1]["Id"] = 3330221 -- 【库】 3330221 【库里没有该物品】[属性:]
	tSepMoMoAct_Award[3330221]["RewardWing"] = {}
	tSepMoMoAct_Award[3330221]["RewardWing"]["TitleType"] = 6013 -- 【库】EmeraldGlowWing, 【表格】3天时效EmeraldGlowWing（赠）
	tSepMoMoAct_Award[3330221]["RewardWing"]["TitleId"] = 6013
	tSepMoMoAct_Award[3330221]["RewardWing"]["SaveTime"] = 4320 -- 3天时效的[翅膀]:EmeraldGlowWing, 【需求】3天时效EmeraldGlowWing（赠）
	tSepMoMoAct_Award[3330221]["RewardEffect"] = {}
	tSepMoMoAct_Award[3330221]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSepMoMoAct_Award[3330221]["RewardEffect"]["Effect"] = "angelwing"


	tSepMoMoAct_Award[3330222] = {}
	-- ===3天时效FlameGlowWings（赠）礼盒
	-- ===索引: tSepMoMoAct_Award[3330222]
	-- ===删除: 3330222,1
	tSepMoMoAct_Award[3330222]["LogId"] = 12001557
	tSepMoMoAct_Award[3330222]["DeleteItem"] = {}
	tSepMoMoAct_Award[3330222]["DeleteItem"][1] = {}
	tSepMoMoAct_Award[3330222]["DeleteItem"][1]["Id"] = 3330222 -- 【库】 3330222 【库里没有该物品】[属性:]
	tSepMoMoAct_Award[3330222]["RewardWing"] = {}
	tSepMoMoAct_Award[3330222]["RewardWing"]["TitleType"] = 6015 -- 【库】FlameGlowWings, 【表格】3天时效FlameGlowWings（赠）
	tSepMoMoAct_Award[3330222]["RewardWing"]["TitleId"] = 6015
	tSepMoMoAct_Award[3330222]["RewardWing"]["SaveTime"] = 4320 -- 3天时效的[翅膀]:FlameGlowWings, 【需求】3天时效FlameGlowWings（赠）
	tSepMoMoAct_Award[3330222]["RewardEffect"] = {}
	tSepMoMoAct_Award[3330222]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSepMoMoAct_Award[3330222]["RewardEffect"]["Effect"] = "angelwing"


	tSepMoMoAct_Award[3330223] = {}
	-- ===90天SpringFestivalWings（赠）礼盒
	-- ===索引: tSepMoMoAct_Award[3330223]
	-- ===删除: 3330223,1
	tSepMoMoAct_Award[3330223]["LogId"] = 12001557
	tSepMoMoAct_Award[3330223]["DeleteItem"] = {}
	tSepMoMoAct_Award[3330223]["DeleteItem"][1] = {}
	tSepMoMoAct_Award[3330223]["DeleteItem"][1]["Id"] = 3330223 -- 【库】 3330223 【库里没有该物品】[属性:]
	tSepMoMoAct_Award[3330223]["RewardWing"] = {}
	tSepMoMoAct_Award[3330223]["RewardWing"]["TitleType"] = 6033 -- 【库】SpringFestivalWings, 【表格】90天SpringFestivalWings（赠）
	tSepMoMoAct_Award[3330223]["RewardWing"]["TitleId"] = 6033
	tSepMoMoAct_Award[3330223]["RewardWing"]["SaveTime"] = 129600 -- 90天时效的[翅膀]:SpringFestivalWings, 【需求】90天SpringFestivalWings（赠）
	tSepMoMoAct_Award[3330223]["RewardEffect"] = {}
	tSepMoMoAct_Award[3330223]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSepMoMoAct_Award[3330223]["RewardEffect"]["Effect"] = "angelwing"


	tSepMoMoAct_Award[3330224] = {}
	-- ===7天时效 HolyBlueWings（赠）礼盒
	-- ===索引: tSepMoMoAct_Award[3330224]
	-- ===删除: 3330224,1
	tSepMoMoAct_Award[3330224]["LogId"] = 12001557
	tSepMoMoAct_Award[3330224]["DeleteItem"] = {}
	tSepMoMoAct_Award[3330224]["DeleteItem"][1] = {}
	tSepMoMoAct_Award[3330224]["DeleteItem"][1]["Id"] = 3330224 -- 【库】 3330224 【库里没有该物品】[属性:]
	tSepMoMoAct_Award[3330224]["RewardWing"] = {}
	tSepMoMoAct_Award[3330224]["RewardWing"]["TitleType"] = 6032 -- 【库】HollyBlueWings, 【表格】7天时效 HolyBlueWings（赠）
	tSepMoMoAct_Award[3330224]["RewardWing"]["TitleId"] = 6032
	tSepMoMoAct_Award[3330224]["RewardWing"]["SaveTime"] = 10080 -- 7天时效的[翅膀]:HollyBlueWings, 【需求】7天时效 HolyBlueWings（赠）
	tSepMoMoAct_Award[3330224]["RewardEffect"] = {}
	tSepMoMoAct_Award[3330224]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSepMoMoAct_Award[3330224]["RewardEffect"]["Effect"] = "angelwing"


	tSepMoMoAct_Award[3330225] = {}
	-- ===7天时效 SirenSong（赠）礼盒
	-- ===索引: tSepMoMoAct_Award[3330225]
	-- ===删除: 3330225,1
	tSepMoMoAct_Award[3330225]["LogId"] = 12001557
	tSepMoMoAct_Award[3330225]["DeleteItem"] = {}
	tSepMoMoAct_Award[3330225]["DeleteItem"][1] = {}
	tSepMoMoAct_Award[3330225]["DeleteItem"][1]["Id"] = 3330225 -- 【库】 3330225 【库里没有该物品】[属性:]
	tSepMoMoAct_Award[3330225]["RewardWing"] = {}
	tSepMoMoAct_Award[3330225]["RewardWing"]["TitleType"] = 6017 -- 【库】SirenSong, 【表格】7天时效 SirenSong（赠）
	tSepMoMoAct_Award[3330225]["RewardWing"]["TitleId"] = 6017
	tSepMoMoAct_Award[3330225]["RewardWing"]["SaveTime"] = 10080 -- 7天时效的[翅膀]:SirenSong, 【需求】7天时效 SirenSong（赠）
	tSepMoMoAct_Award[3330225]["RewardEffect"] = {}
	tSepMoMoAct_Award[3330225]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSepMoMoAct_Award[3330225]["RewardEffect"]["Effect"] = "angelwing"
	
	tSepMoMoAct_Award[3330466] = {}
	-- ===2BrightStarStonePack
	-- ===索引: tSepMoMoAct_Award[3330466]
	-- ===删除: 3330466,1
	tSepMoMoAct_Award[3330466]["LogId"] = 12001557
	tSepMoMoAct_Award[3330466]["DeleteItem"] = {}
	tSepMoMoAct_Award[3330466]["DeleteItem"][1] = {}
	tSepMoMoAct_Award[3330466]["DeleteItem"][1]["Id"] = 3330466 -- 【库】2BrightStarStonePack[属性:9]
	tSepMoMoAct_Award[3330466]["RewardItem"] = {}
	tSepMoMoAct_Award[3330466]["RewardItem"][1] = {}
	tSepMoMoAct_Award[3330466]["RewardItem"][1]["Id"] = 3009001 -- BrightStarStone[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石*2
	tSepMoMoAct_Award[3330466]["RewardItem"][1]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的BrightStarStone*2
	tSepMoMoAct_Award[3330466]["RewardEffect"] = {}
	tSepMoMoAct_Award[3330466]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSepMoMoAct_Award[3330466]["RewardEffect"]["Effect"] = "angelwing"
	
	tSepMoMoAct_Award[3330467] = {}
	-- ===4BrightStarStonePack
	-- ===索引: tSepMoMoAct_Award[3330467]
	-- ===删除: 3330467,1
	tSepMoMoAct_Award[3330467]["LogId"] = 12001557
	tSepMoMoAct_Award[3330467]["DeleteItem"] = {}
	tSepMoMoAct_Award[3330467]["DeleteItem"][1] = {}
	tSepMoMoAct_Award[3330467]["DeleteItem"][1]["Id"] = 3330467 -- 【库】4BrightStarStonePack[属性:9]
	tSepMoMoAct_Award[3330467]["RewardItem"] = {}
	tSepMoMoAct_Award[3330467]["RewardItem"][1] = {}
	tSepMoMoAct_Award[3330467]["RewardItem"][1]["Id"] = 3009001 -- BrightStarStone[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石*4
	tSepMoMoAct_Award[3330467]["RewardItem"][1]["Attr"] = "0 4 0 2880 1" -- 2天时效(激活)的BrightStarStone*4
	tSepMoMoAct_Award[3330467]["RewardEffect"] = {}
	tSepMoMoAct_Award[3330467]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSepMoMoAct_Award[3330467]["RewardEffect"]["Effect"] = "angelwing"


	tSepMoMoAct_Award[3330468] = {}
	-- ===8BrightStarStonePack
	-- ===索引: tSepMoMoAct_Award[3330468]
	-- ===删除: 3330468,1
	tSepMoMoAct_Award[3330468]["LogId"] = 12001557
	tSepMoMoAct_Award[3330468]["DeleteItem"] = {}
	tSepMoMoAct_Award[3330468]["DeleteItem"][1] = {}
	tSepMoMoAct_Award[3330468]["DeleteItem"][1]["Id"] = 3330468 -- 【库】8BrightStarStonePack[属性:9]
	tSepMoMoAct_Award[3330468]["RewardItem"] = {}
	tSepMoMoAct_Award[3330468]["RewardItem"][1] = {}
	tSepMoMoAct_Award[3330468]["RewardItem"][1]["Id"] = 3009001 -- BrightStarStone[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石*8
	tSepMoMoAct_Award[3330468]["RewardItem"][1]["Attr"] = "0 8 0 2880 1" -- 2天时效(激活)的BrightStarStone*8
	tSepMoMoAct_Award[3330468]["RewardEffect"] = {}
	tSepMoMoAct_Award[3330468]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSepMoMoAct_Award[3330468]["RewardEffect"]["Effect"] = "angelwing"


	tSepMoMoAct_Award[3330469] = {}
	-- ===2RadiantStarStonePack
	-- ===索引: tSepMoMoAct_Award[3330469]
	-- ===删除: 3330469,1
	tSepMoMoAct_Award[3330469]["LogId"] = 12001557
	tSepMoMoAct_Award[3330469]["DeleteItem"] = {}
	tSepMoMoAct_Award[3330469]["DeleteItem"][1] = {}
	tSepMoMoAct_Award[3330469]["DeleteItem"][1]["Id"] = 3330469 -- 【库】2RadiantStarStonePack[属性:9]
	tSepMoMoAct_Award[3330469]["RewardItem"] = {}
	tSepMoMoAct_Award[3330469]["RewardItem"][1] = {}
	tSepMoMoAct_Award[3330469]["RewardItem"][1]["Id"] = 3009002 -- RadiantStarStone[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石*2
	tSepMoMoAct_Award[3330469]["RewardItem"][1]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的RadiantStarStone*2
	tSepMoMoAct_Award[3330469]["RewardEffect"] = {}
	tSepMoMoAct_Award[3330469]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSepMoMoAct_Award[3330469]["RewardEffect"]["Effect"] = "angelwing"


	tSepMoMoAct_Award[3330470] = {}
	-- ===4RadiantStarStonePack
	-- ===索引: tSepMoMoAct_Award[3330470]
	-- ===删除: 3330470,1
	tSepMoMoAct_Award[3330470]["LogId"] = 12001557
	tSepMoMoAct_Award[3330470]["DeleteItem"] = {}
	tSepMoMoAct_Award[3330470]["DeleteItem"][1] = {}
	tSepMoMoAct_Award[3330470]["DeleteItem"][1]["Id"] = 3330470 -- 【库】4RadiantStarStonePack[属性:9]
	tSepMoMoAct_Award[3330470]["RewardItem"] = {}
	tSepMoMoAct_Award[3330470]["RewardItem"][1] = {}
	tSepMoMoAct_Award[3330470]["RewardItem"][1]["Id"] = 3009002 -- RadiantStarStone[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石*4
	tSepMoMoAct_Award[3330470]["RewardItem"][1]["Attr"] = "0 4 0 2880 1" -- 2天时效(激活)的RadiantStarStone*4
	tSepMoMoAct_Award[3330470]["RewardEffect"] = {}
	tSepMoMoAct_Award[3330470]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSepMoMoAct_Award[3330470]["RewardEffect"]["Effect"] = "angelwing"


	tSepMoMoAct_Award[3330471] = {}
	-- ===8RadiantStarStonePack
	-- ===索引: tSepMoMoAct_Award[3330471]
	-- ===删除: 3330471,1
	tSepMoMoAct_Award[3330471]["LogId"] = 12001557
	tSepMoMoAct_Award[3330471]["DeleteItem"] = {}
	tSepMoMoAct_Award[3330471]["DeleteItem"][1] = {}
	tSepMoMoAct_Award[3330471]["DeleteItem"][1]["Id"] = 3330471 -- 【库】8RadiantStarStonePack[属性:9]
	tSepMoMoAct_Award[3330471]["RewardItem"] = {}
	tSepMoMoAct_Award[3330471]["RewardItem"][1] = {}
	tSepMoMoAct_Award[3330471]["RewardItem"][1]["Id"] = 3009002 -- RadiantStarStone[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石*8
	tSepMoMoAct_Award[3330471]["RewardItem"][1]["Attr"] = "0 8 0 2880 1" -- 2天时效(激活)的RadiantStarStone*8
	tSepMoMoAct_Award[3330471]["RewardEffect"] = {}
	tSepMoMoAct_Award[3330471]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSepMoMoAct_Award[3330471]["RewardEffect"]["Effect"] = "angelwing"


	tSepMoMoAct_Award[3330472] = {}
	-- ===1SplendidStarStonePack
	-- ===索引: tSepMoMoAct_Award[3330472]
	-- ===删除: 3330472,1
	tSepMoMoAct_Award[3330472]["LogId"] = 12001557
	tSepMoMoAct_Award[3330472]["DeleteItem"] = {}
	tSepMoMoAct_Award[3330472]["DeleteItem"][1] = {}
	tSepMoMoAct_Award[3330472]["DeleteItem"][1]["Id"] = 3330472 -- 【库】1SplendidStarStonePack[属性:9]
	tSepMoMoAct_Award[3330472]["RewardItem"] = {}
	tSepMoMoAct_Award[3330472]["RewardItem"][1] = {}
	tSepMoMoAct_Award[3330472]["RewardItem"][1]["Id"] = 3009003 -- SplendidStarStone[3009003][属性:9][叠加:0][金币:0], 【表格】璀璨星陨石*1
	tSepMoMoAct_Award[3330472]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的SplendidStarStone*1
	tSepMoMoAct_Award[3330472]["RewardEffect"] = {}
	tSepMoMoAct_Award[3330472]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSepMoMoAct_Award[3330472]["RewardEffect"]["Effect"] = "angelwing"


	tSepMoMoAct_Award[3330473] = {}
	-- ===3SplendidStarStonePack
	-- ===索引: tSepMoMoAct_Award[3330473]
	-- ===删除: 3330473,1
	tSepMoMoAct_Award[3330473]["LogId"] = 12001557
	tSepMoMoAct_Award[3330473]["DeleteItem"] = {}
	tSepMoMoAct_Award[3330473]["DeleteItem"][1] = {}
	tSepMoMoAct_Award[3330473]["DeleteItem"][1]["Id"] = 3330473 -- 【库】3SplendidStarStonePack[属性:9]
	tSepMoMoAct_Award[3330473]["RewardItem"] = {}
	tSepMoMoAct_Award[3330473]["RewardItem"][1] = {}
	tSepMoMoAct_Award[3330473]["RewardItem"][1]["Id"] = 3009003 -- SplendidStarStone[3009003][属性:9][叠加:0][金币:0], 【表格】璀璨星陨石*3
	tSepMoMoAct_Award[3330473]["RewardItem"][1]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的SplendidStarStone*3
	tSepMoMoAct_Award[3330473]["RewardEffect"] = {}
	tSepMoMoAct_Award[3330473]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSepMoMoAct_Award[3330473]["RewardEffect"]["Effect"] = "angelwing"
	
	-- ===普+2StonePack
	-- ===索引:3322925
	-- ===删除: 3322925,1
	-- ===
	tSepMoMoAct_Award[3322925] = {}
	tSepMoMoAct_Award[3322925]["LogId"] = 12001557
	tSepMoMoAct_Award[3322925]["DeleteItem"] = {}
	tSepMoMoAct_Award[3322925]["DeleteItem"][1] = {}
	tSepMoMoAct_Award[3322925]["DeleteItem"][1]["Id"] = 3322925 -- 【库】+2StonePack(B)[属性:9]
	tSepMoMoAct_Award[3322925]["RewardItem"] = {}
	tSepMoMoAct_Award[3322925]["RewardItem"][1] = {}
	tSepMoMoAct_Award[3322925]["RewardItem"][1]["Id"] = 730002 -- 【库】+2Stone[属性:0]【表格】赤炼石+2
	tSepMoMoAct_Award[3322925]["RewardItem"][1]["Attr"] = "0 1 3" -- +2Stone(赠)*1
	tSepMoMoAct_Award[3322925]["RewardEffect"] = {}
	tSepMoMoAct_Award[3322925]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSepMoMoAct_Award[3322925]["RewardEffect"]["Effect"] = "angelwing"


	-- ===8StonesPack
	-- ===索引: 3322926
	-- ===删除: 3322926,1
	-- ===
	tSepMoMoAct_Award[3322926] = {}
	tSepMoMoAct_Award[3322926]["LogId"] = 12001557
	tSepMoMoAct_Award[3322926]["DeleteItem"] = {}
	tSepMoMoAct_Award[3322926]["DeleteItem"][1] = {}
	tSepMoMoAct_Award[3322926]["DeleteItem"][1]["Id"] = 3322926 -- 【库】+8StonesPack(B)[属性:9]
	tSepMoMoAct_Award[3322926]["RewardItem"] = {}
	tSepMoMoAct_Award[3322926]["RewardItem"][1] = {}
	tSepMoMoAct_Award[3322926]["RewardItem"][1]["Id"] = 730008 -- 【库】+8Stone[属性:0]【表格】赤炼石+8
	tSepMoMoAct_Award[3322926]["RewardItem"][1]["Attr"] = "0 2 3" -- +8Stone(赠)*2
	tSepMoMoAct_Award[3322926]["RewardEffect"] = {}
	tSepMoMoAct_Award[3322926]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSepMoMoAct_Award[3322926]["RewardEffect"]["Effect"] = "angelwing"


	-- ===豪华回馈礼盒
	-- ===索引: 3322927
	-- ===删除: 3322927,1
	-- ===
	tSepMoMoAct_Award[3322927] = {}
	tSepMoMoAct_Award[3322927]["LogId"] = 12001557
	tSepMoMoAct_Award[3322927]["DeleteItem"] = {}
	tSepMoMoAct_Award[3322927]["DeleteItem"][1] = {}
	tSepMoMoAct_Award[3322927]["DeleteItem"][1]["Id"] = 3322927 -- 【库】9BrightStarStonesPack[属性:9]
	tSepMoMoAct_Award[3322927]["RewardItem"] = {}
	tSepMoMoAct_Award[3322927]["RewardItem"][1] = {}
	tSepMoMoAct_Award[3322927]["RewardItem"][1]["Id"] = 3009001 -- 【库】BrightStarStone[属性:9]【表格】明亮星陨石*9
	tSepMoMoAct_Award[3322927]["RewardItem"][1]["Attr"] = "0 9 0 2880 1" -- 2天时效(激活)的BrightStarStone*9
	tSepMoMoAct_Award[3322927]["RewardEffect"] = {}
	tSepMoMoAct_Award[3322927]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSepMoMoAct_Award[3322927]["RewardEffect"]["Effect"] = "angelwing"


	-- ===至尊回馈礼盒
	-- ===索引: 3322928
	-- ===删除: 3322928,1
	-- ===
	tSepMoMoAct_Award[3322928] = {}
	tSepMoMoAct_Award[3322928]["LogId"] = 12001557
	tSepMoMoAct_Award[3322928]["DeleteItem"] = {}
	tSepMoMoAct_Award[3322928]["DeleteItem"][1] = {}
	tSepMoMoAct_Award[3322928]["DeleteItem"][1]["Id"] = 3322928 -- 【库】6RadiantStarStonesPack[属性:9]
	tSepMoMoAct_Award[3322928]["RewardItem"] = {}
	tSepMoMoAct_Award[3322928]["RewardItem"][1] = {}
	tSepMoMoAct_Award[3322928]["RewardItem"][1]["Id"] = 3009002 -- 【库】RadiantStarStone[属性:9]【表格】晶莹星陨石*6
	tSepMoMoAct_Award[3322928]["RewardItem"][1]["Attr"] = "0 6 0 2880 1" -- 2天时效(激活)的RadiantStarStone*6
	tSepMoMoAct_Award[3322928]["RewardEffect"] = {}
	tSepMoMoAct_Award[3322928]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSepMoMoAct_Award[3322928]["RewardEffect"]["Effect"] = "angelwing"


	-- ===一掷千金礼盒
	-- ===索引: 3322929
	-- ===删除: 3322929,1
	-- ===
	tSepMoMoAct_Award[3322929] = {}
	tSepMoMoAct_Award[3322929]["LogId"] = 12001557
	tSepMoMoAct_Award[3322929]["DeleteItem"] = {}
	tSepMoMoAct_Award[3322929]["DeleteItem"][1] = {}
	tSepMoMoAct_Award[3322929]["DeleteItem"][1]["Id"] = 3322929 -- 【库】3SplendidStarStonesPack[属性:9]
	tSepMoMoAct_Award[3322929]["RewardItem"] = {}
	tSepMoMoAct_Award[3322929]["RewardItem"][1] = {}
	tSepMoMoAct_Award[3322929]["RewardItem"][1]["Id"] = 3009003 -- 【库】SplendidStarStone[属性:9]【表格】璀璨星陨石*3
	tSepMoMoAct_Award[3322929]["RewardItem"][1]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的SplendidStarStone*3
	tSepMoMoAct_Award[3322929]["RewardEffect"] = {}
	tSepMoMoAct_Award[3322929]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSepMoMoAct_Award[3322929]["RewardEffect"]["Effect"] = "angelwing"


	-- ===腰缠万贯礼盒
	-- ===索引: 3322930
	-- ===删除: 3322930,1
	-- ===
	tSepMoMoAct_Award[3322930] = {}
	tSepMoMoAct_Award[3322930]["LogId"] = 12001557
	tSepMoMoAct_Award[3322930]["DeleteItem"] = {}
	tSepMoMoAct_Award[3322930]["DeleteItem"][1] = {}
	tSepMoMoAct_Award[3322930]["DeleteItem"][1]["Id"] = 3322930 -- 【库】10SplendidStarStonesPack[属性:9]
	tSepMoMoAct_Award[3322930]["RewardItem"] = {}
	tSepMoMoAct_Award[3322930]["RewardItem"][1] = {}
	tSepMoMoAct_Award[3322930]["RewardItem"][1]["Id"] = 3009003 -- 【库】SplendidStarStone[属性:9]【表格】璀璨星陨石*10
	tSepMoMoAct_Award[3322930]["RewardItem"][1]["Attr"] = "0 10 0 2880 1" -- 2天时效(激活)的SplendidStarStone*10
	tSepMoMoAct_Award[3322930]["RewardEffect"] = {}
	tSepMoMoAct_Award[3322930]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSepMoMoAct_Award[3322930]["RewardEffect"]["Effect"] = "angelwing"


	-- ===富甲天下礼盒
	-- ===索引: 3322931
	-- ===删除: 3322931,1
	-- ===
	tSepMoMoAct_Award[3322931] = {}
	tSepMoMoAct_Award[3322931]["LogId"] = 12001557
	tSepMoMoAct_Award[3322931]["DeleteItem"] = {}
	tSepMoMoAct_Award[3322931]["DeleteItem"][1] = {}
	tSepMoMoAct_Award[3322931]["DeleteItem"][1]["Id"] = 3322931 -- 【库】180CP(B)Pack[属性:9]
	tSepMoMoAct_Award[3322931]["RewardEMoneyMono"] = {}
	tSepMoMoAct_Award[3322931]["RewardEMoneyMono"]["Value"] = 180 -- 天石（赠）
--	tSepMoMoAct_Award[3322931]["EmoneyLog"] = "10000	X	0	0	180	"
	tSepMoMoAct_Award[3322931]["RewardEffect"] = {}
	tSepMoMoAct_Award[3322931]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSepMoMoAct_Award[3322931]["RewardEffect"]["Effect"] = "angelwing"


	-- ===富甲天下礼盒
	-- ===索引: 3322932
	-- ===删除: 3322932,1
	-- ===
	tSepMoMoAct_Award[3322932] = {}
	tSepMoMoAct_Award[3322932]["LogId"] = 12001557
	tSepMoMoAct_Award[3322932]["DeleteItem"] = {}
	tSepMoMoAct_Award[3322932]["DeleteItem"][1] = {}
	tSepMoMoAct_Award[3322932]["DeleteItem"][1]["Id"] = 3322932 -- 【库】540CP(B)Pack[属性:9]
	tSepMoMoAct_Award[3322932]["RewardEMoneyMono"] = {}
	tSepMoMoAct_Award[3322932]["RewardEMoneyMono"]["Value"] = 540 -- 天石（赠）
--	tSepMoMoAct_Award[3322932]["EmoneyLog"] = "10000	X	0	0	540	"
	tSepMoMoAct_Award[3322932]["RewardEffect"] = {}
	tSepMoMoAct_Award[3322932]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSepMoMoAct_Award[3322932]["RewardEffect"]["Effect"] = "angelwing"


	-- ===富甲天下礼盒
	-- ===索引: 3322933
	-- ===删除: 3322933,1
	-- ===
	tSepMoMoAct_Award[3322933] = {}
	tSepMoMoAct_Award[3322933]["LogId"] = 12001557
	tSepMoMoAct_Award[3322933]["DeleteItem"] = {}
	tSepMoMoAct_Award[3322933]["DeleteItem"][1] = {}
	tSepMoMoAct_Award[3322933]["DeleteItem"][1]["Id"] = 3322933 -- 【库】1200ChiPack[属性:9]
	tSepMoMoAct_Award[3322933]["RewardStrengthValue"] = {}
	tSepMoMoAct_Award[3322933]["RewardStrengthValue"]["Value"] = 1200 -- 气力值
	tSepMoMoAct_Award[3322933]["RewardEffect"] = {}
	tSepMoMoAct_Award[3322933]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSepMoMoAct_Award[3322933]["RewardEffect"]["Effect"] = "angelwing"


	-- ===富甲天下礼盒
	-- ===索引: 3322934
	-- ===删除: 3322934,1
	-- ===
	tSepMoMoAct_Award[3322934] = {}
	tSepMoMoAct_Award[3322934]["LogId"] = 12001557
	tSepMoMoAct_Award[3322934]["DeleteItem"] = {}
	tSepMoMoAct_Award[3322934]["DeleteItem"][1] = {}
	tSepMoMoAct_Award[3322934]["DeleteItem"][1]["Id"] = 3322934 -- 【库】 90000 ChiPack[属性:9]
	tSepMoMoAct_Award[3322934]["RewardStrengthValue"] = {}
	tSepMoMoAct_Award[3322934]["RewardStrengthValue"]["Value"] = 90000 -- 气力值
	tSepMoMoAct_Award[3322934]["RewardEffect"] = {}
	tSepMoMoAct_Award[3322934]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSepMoMoAct_Award[3322934]["RewardEffect"]["Effect"] = "angelwing"


	-- ===富甲天下礼盒
	-- ===索引: 3322935
	-- ===删除: 3322935,1
	-- ===
	tSepMoMoAct_Award[3322935] = {}
	tSepMoMoAct_Award[3322935]["LogId"] = 12001557
	tSepMoMoAct_Award[3322935]["DeleteItem"] = {}
	tSepMoMoAct_Award[3322935]["DeleteItem"][1] = {}
	tSepMoMoAct_Award[3322935]["DeleteItem"][1]["Id"] = 3322935 -- 【库】 180000 ChiPack[属性:9]
	tSepMoMoAct_Award[3322935]["RewardStrengthValue"] = {}
	tSepMoMoAct_Award[3322935]["RewardStrengthValue"]["Value"] = 180000 -- 气力值
	tSepMoMoAct_Award[3322935]["RewardEffect"] = {}
	tSepMoMoAct_Award[3322935]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSepMoMoAct_Award[3322935]["RewardEffect"]["Effect"] = "angelwing"

	tSepMoMoAct_Award[3331621] = {}
	tSepMoMoAct_Award[3331621]["LogId"] = 12001557
	tSepMoMoAct_Award[3331621]["DeleteItem"] = {}
	tSepMoMoAct_Award[3331621]["DeleteItem"][1] = {}
	tSepMoMoAct_Award[3331621]["DeleteItem"][1]["Id"] = 3331621 -- 【库】40CP(B)Pack[属性:9]
	tSepMoMoAct_Award[3331621]["RewardEMoneyMono"] = {}
	tSepMoMoAct_Award[3331621]["RewardEMoneyMono"]["Value"] = 40 -- 天石（赠）
	tSepMoMoAct_Award[3331621]["EmoneyLog"] = "1000	01927	0	0	-40	"
	tSepMoMoAct_Award[3331621]["RewardEffect"] = {}
	tSepMoMoAct_Award[3331621]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSepMoMoAct_Award[3331621]["RewardEffect"]["Effect"] = "angelwing"

	tSepMoMoAct_Award[3332102] = {}
	tSepMoMoAct_Award[3332102]["LogId"] = 12001557
	tSepMoMoAct_Award[3332102]["DeleteItem"] = {}
	tSepMoMoAct_Award[3332102]["DeleteItem"][1] = {}
	tSepMoMoAct_Award[3332102]["DeleteItem"][1]["Id"] = 3332102 -- 【库】40CP(B)Pack[属性:9]
	tSepMoMoAct_Award[3332102]["RewardEMoneyMono"] = {}
	tSepMoMoAct_Award[3332102]["RewardEMoneyMono"]["Value"] = 450 -- 天石（赠）
	tSepMoMoAct_Award[3332102]["EmoneyLog"] = "1000	02086	0	0	-450	"
	tSepMoMoAct_Award[3332102]["RewardEffect"] = {}
	tSepMoMoAct_Award[3332102]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSepMoMoAct_Award[3332102]["RewardEffect"]["Effect"] = "angelwing"
	
	tSepMoMoAct_Award[3331622] = {}
	tSepMoMoAct_Award[3331622]["LogId"] = 12001557
	tSepMoMoAct_Award[3331622]["DeleteItem"] = {}
	tSepMoMoAct_Award[3331622]["DeleteItem"][1] = {}
	tSepMoMoAct_Award[3331622]["DeleteItem"][1]["Id"] = 3331622 -- 【库】80CP(B)Pack[属性:9]
	tSepMoMoAct_Award[3331622]["RewardEMoneyMono"] = {}
	tSepMoMoAct_Award[3331622]["RewardEMoneyMono"]["Value"] = 80 -- 天石（赠）
	tSepMoMoAct_Award[3331622]["EmoneyLog"] = "1000	01928	0	0	-80	"
	tSepMoMoAct_Award[3331622]["RewardEffect"] = {}
	tSepMoMoAct_Award[3331622]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSepMoMoAct_Award[3331622]["RewardEffect"]["Effect"] = "angelwing"
	
	tSepMoMoAct_Award[3331623] = {}
	tSepMoMoAct_Award[3331623]["LogId"] = 12001557
	tSepMoMoAct_Award[3331623]["DeleteItem"] = {}
	tSepMoMoAct_Award[3331623]["DeleteItem"][1] = {}
	tSepMoMoAct_Award[3331623]["DeleteItem"][1]["Id"] = 3331623 -- 【库】120CP(B)Pack[属性:9]
	tSepMoMoAct_Award[3331623]["RewardEMoneyMono"] = {}
	tSepMoMoAct_Award[3331623]["RewardEMoneyMono"]["Value"] = 120 -- 天石（赠）
	tSepMoMoAct_Award[3331623]["EmoneyLog"] = "1000	01929	0	0	-120	"
	tSepMoMoAct_Award[3331623]["RewardEffect"] = {}
	tSepMoMoAct_Award[3331623]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSepMoMoAct_Award[3331623]["RewardEffect"]["Effect"] = "angelwing"
	
	tSepMoMoAct_Award[3331624] = {}
	tSepMoMoAct_Award[3331624]["LogId"] = 12001557
	tSepMoMoAct_Award[3331624]["DeleteItem"] = {}
	tSepMoMoAct_Award[3331624]["DeleteItem"][1] = {}
	tSepMoMoAct_Award[3331624]["DeleteItem"][1]["Id"] = 3331624 -- 【库】160CP(B)Pack[属性:9]
	tSepMoMoAct_Award[3331624]["RewardEMoneyMono"] = {}
	tSepMoMoAct_Award[3331624]["RewardEMoneyMono"]["Value"] = 160 -- 天石（赠）
	tSepMoMoAct_Award[3331624]["EmoneyLog"] = "1000	01930	0	0	-160	"
	tSepMoMoAct_Award[3331624]["RewardEffect"] = {}
	tSepMoMoAct_Award[3331624]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSepMoMoAct_Award[3331624]["RewardEffect"]["Effect"] = "angelwing"
	
	tSepMoMoAct_Award[3331625] = {}
	tSepMoMoAct_Award[3331625]["LogId"] = 12001557
	tSepMoMoAct_Award[3331625]["DeleteItem"] = {}
	tSepMoMoAct_Award[3331625]["DeleteItem"][1] = {}
	tSepMoMoAct_Award[3331625]["DeleteItem"][1]["Id"] = 3331625 -- 【库】200CP(B)Pack[属性:9]
	tSepMoMoAct_Award[3331625]["RewardEMoneyMono"] = {}
	tSepMoMoAct_Award[3331625]["RewardEMoneyMono"]["Value"] = 200 -- 天石（赠）
	tSepMoMoAct_Award[3331625]["EmoneyLog"] = "1000	01931	0	0	-200	"
	tSepMoMoAct_Award[3331625]["RewardEffect"] = {}
	tSepMoMoAct_Award[3331625]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSepMoMoAct_Award[3331625]["RewardEffect"]["Effect"] = "angelwing"
	
	tSepMoMoAct_Award[3331626] = {}
	tSepMoMoAct_Award[3331626]["LogId"] = 12001557
	tSepMoMoAct_Award[3331626]["DeleteItem"] = {}
	tSepMoMoAct_Award[3331626]["DeleteItem"][1] = {}
	tSepMoMoAct_Award[3331626]["DeleteItem"][1]["Id"] = 3331626 -- 【库】400CP(B)Pack[属性:9]
	tSepMoMoAct_Award[3331626]["RewardEMoneyMono"] = {}
	tSepMoMoAct_Award[3331626]["RewardEMoneyMono"]["Value"] = 400 -- 天石（赠）
	tSepMoMoAct_Award[3331626]["EmoneyLog"] = "1000	019302	0	0	-400	"
	tSepMoMoAct_Award[3331626]["RewardEffect"] = {}
	tSepMoMoAct_Award[3331626]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSepMoMoAct_Award[3331626]["RewardEffect"]["Effect"] = "angelwing"
	
	tSepMoMoAct_Award[3331627] = {}
	tSepMoMoAct_Award[3331627]["LogId"] = 12001557
	tSepMoMoAct_Award[3331627]["DeleteItem"] = {}
	tSepMoMoAct_Award[3331627]["DeleteItem"][1] = {}
	tSepMoMoAct_Award[3331627]["DeleteItem"][1]["Id"] = 3331627 -- 【库】800CP(B)Pack[属性:9]
	tSepMoMoAct_Award[3331627]["RewardEMoneyMono"] = {}
	tSepMoMoAct_Award[3331627]["RewardEMoneyMono"]["Value"] = 800 -- 天石（赠）
	tSepMoMoAct_Award[3331627]["EmoneyLog"] = "1000	01933	0	0	-800	"
	tSepMoMoAct_Award[3331627]["RewardEffect"] = {}
	tSepMoMoAct_Award[3331627]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSepMoMoAct_Award[3331627]["RewardEffect"]["Effect"] = "angelwing"
	
	tSepMoMoAct_Award[3331628] = {}
	tSepMoMoAct_Award[3331628]["LogId"] = 12001557
	tSepMoMoAct_Award[3331628]["DeleteItem"] = {}
	tSepMoMoAct_Award[3331628]["DeleteItem"][1] = {}
	tSepMoMoAct_Award[3331628]["DeleteItem"][1]["Id"] = 3331628 -- 【库】2000CP(B)Pack[属性:9]
	tSepMoMoAct_Award[3331628]["RewardEMoneyMono"] = {}
	tSepMoMoAct_Award[3331628]["RewardEMoneyMono"]["Value"] = 2000 -- 天石（赠）
	tSepMoMoAct_Award[3331628]["EmoneyLog"] = "1000	01934	0	0	-2000	"
	tSepMoMoAct_Award[3331628]["RewardEffect"] = {}
	tSepMoMoAct_Award[3331628]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSepMoMoAct_Award[3331628]["RewardEffect"]["Effect"] = "angelwing"
	
---------------------------------逻辑部分--------------------------------------------- 
function SepMoMoAct_GetRoulette(nNpcId,nItemId)
	local nUserId = Get_UserId()
	if  CommonFunc_GetBeforeActivityTime(tActivityTime["SepMoMoAct"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end
	if not Sys_ChkFullTime(tActivityTime["SepMoMoAct"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	if Item_ChkMulItem(nItemId,nItemId,1) then
		Sys_DialogText(string.format(tSepMoMoAct_Text[24787]["Text211"],tSepMoMoAct_Text["ItemName"][nItemId]))
		Sys_DialogOption(tSepMoMoAct_Text[24787]["Option211"],"</F>NULL")
		Sys_DialogFace(nNpcId)
		Sys_DialogEnd()
		return
	end 
	
	RewardTemplate_UseItemAndMsg(tSepMoMoAct_Award[nItemId],nUserId)
end 

----------------------------------时间自检逻辑-----------------------------------

-------------------------- npc部分------------------------
-- 24787,'乔治',0002,61950,  

tNpcFace[6195] = 235
tNpcGossip[24787] = tNpcGossip[24787] or DefaultNpc:new{}
tNpcGossip[24787]["OptionHidden"] = 1
tNpcGossip[24787]["DialogueText"] = tSepMoMoAct_Text[24787]

--活动时间前
tNpcGossip[24787]["Text1-1"] = {111,112}
tNpcGossip[24787]["Text111"] = tSepMoMoAct_Text[24787]["Text111"]
tNpcGossip[24787]["Text112"] = tSepMoMoAct_Text[24787]["Text112"]

tNpcGossip[24787]["tOption1-1"] = {111}
tNpcGossip[24787]["ChkFunc1-1"] = function()

	return CommonFunc_GetBeforeActivityTime(tActivityTime["SepMoMoAct"]["ActivityTime"])
end
tNpcGossip[24787]["Option111"] = tSepMoMoAct_Text[24787]["Option111"] 

--活动时间后
tNpcGossip[24787]["Text1-2"] = {121}
tNpcGossip[24787]["Text121"] = tSepMoMoAct_Text[24787]["Text121"]

tNpcGossip[24787]["tOption1-2"] = {121}
tNpcGossip[24787]["ChkFunc1-2"] = function()

	return not Sys_ChkFullTime(tActivityTime["SepMoMoAct"]["ActivityTime"])
end
tNpcGossip[24787]["Option121"] = tSepMoMoAct_Text[24787]["Option121"] 

--【活动中】
tNpcGossip[24787]["Text1-3"] = {131,132}
tNpcGossip[24787]["Text131"] = tSepMoMoAct_Text[24787]["Text131"]
tNpcGossip[24787]["Text132"] = tSepMoMoAct_Text[24787]["Text132"]
   
tNpcGossip[24787]["tOption1-3"] = {133,134}
tNpcGossip[24787]["ChkFunc1-3"] = function()
	
	return Sys_ChkFullTime(tActivityTime["SepMoMoAct"]["ActivityTime"])
end
tNpcGossip[24787]["Option131"] = tSepMoMoAct_Text[24787]["Option131"] 
tNpcGossip[24787]["Option132"] = tSepMoMoAct_Text[24787]["Option132"] 
tNpcGossip[24787]["Option133"] = tSepMoMoAct_Text[24787]["Option133"] 
tNpcGossip[24787]["Option134"] = tSepMoMoAct_Text[24787]["Option134"] 
tNpcGossip[24787]["Option135"] = tSepMoMoAct_Text[24787]["Option135"] 
tNpcGossip[24787]["Option136"] = tSepMoMoAct_Text[24787]["Option136"] 
tNpcGossip[24787]["Option137"] = tSepMoMoAct_Text[24787]["Option137"] 
tNpcGossip[24787]["Option138"] = tSepMoMoAct_Text[24787]["Option138"] 
tNpcGossip[24787]["Option139"] = tSepMoMoAct_Text[24787]["Option139"] 
tNpcGossip[24787]["Option1310"] = tSepMoMoAct_Text[24787]["Option1310"] 



-- tNpcGossip[24787]["OptionFunc131"] = "SepMoMoAct_GetRoulette</N>24787</N>3322921"
-- tNpcGossip[24787]["OptionFunc132"] = "SepMoMoAct_GetRoulette</N>24787</N>3322922"
tNpcGossip[24787]["OptionFunc133"] = "SepMoMoAct_GetRoulette</N>24787</N>3322923"
tNpcGossip[24787]["OptionFunc134"] = "SepMoMoAct_GetRoulette</N>24787</N>3322924"
-- tNpcGossip[24787]["OptionFunc135"] = "SepMoMoAct_GetRoulette</N>24787</N>3326907"
-- tNpcGossip[24787]["OptionFunc135"] = "SepMoMoAct_GetRoulette</N>24787</N>3331629"
-- tNpcGossip[24787]["OptionFunc136"] = "SepMoMoAct_GetRoulette</N>24787</N>3330205"
-- tNpcGossip[24787]["OptionFunc137"] = "SepMoMoAct_GetRoulette</N>24787</N>3330206"
-- tNpcGossip[24787]["OptionFunc138"] = "SepMoMoAct_GetRoulette</N>24787</N>3330207"
-- tNpcGossip[24787]["OptionFunc139"] = "SepMoMoAct_GetRoulette</N>24787</N>3330208"
-- tNpcGossip[24787]["OptionFunc1310"] = "SepMoMoAct_GetRoulette</N>24787</N>3330209"



---------------------------------物品部分---------------------------------------------
-- 3322925,'+2StonePack(B)',9,98471500
-- 3322926,'+8StonesPack(B)',9,9847150
-- 3322927,'9BrightStarStonesPack',9,9
-- 3322928,'6RadiantStarStonesPack',9,
-- 3322929,'3SplendidStarStonesPack',9
-- 3322930,'10SplendidStarStonesPack',
-- 3322931,'180CP(B)Pack',9,98471500,0
-- 3322932,'540CP(B)Pack',9,98471500,0
-- 3322933,'1200ChiPack',9,98471500,0,
-- 3322934,'90000ChiPack',9,98471500,0
-- 3322935,'180000ChiPack',9,98471500,
-- 3330466,'2BrightStarStonePack',
-- 3330467,'4BrightStarStonePack',
-- 3330468,'8BrightStarStonePack',
-- 3330469,'2RadiantStarStonePack'
-- 3330470,'4RadiantStarStonePack'
-- 3330471,'8RadiantStarStonePack'
-- 3330472,'1SplendidStarStonePack
-- 3330473,'3SplendidStarStonePack

tItem[3322925] = tItem[3322925] or {}
tItem[3322925]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tSepMoMoAct_Award[nItemId])
end
tItem[3322926] = tItem[3322925] or {}
tItem[3322927] = tItem[3322925] or {}
tItem[3322928] = tItem[3322925] or {}
tItem[3322929] = tItem[3322925] or {}
tItem[3322930] = tItem[3322925] or {}
tItem[3322931] = tItem[3322925] or {}
tItem[3322932] = tItem[3322925] or {}
tItem[3322933] = tItem[3322925] or {}
tItem[3322934] = tItem[3322925] or {}
tItem[3322935] = tItem[3322925] or {}
tItem[3332102] = tItem[3322925] or {}

tItem[3330466] = tItem[3322925] or {}
tItem[3330467] = tItem[3322925] or {}
tItem[3330468] = tItem[3322925] or {}
tItem[3330469] = tItem[3322925] or {}
tItem[3330470] = tItem[3322925] or {}
tItem[3330471] = tItem[3322925] or {}
tItem[3330472] = tItem[3322925] or {}
tItem[3330473] = tItem[3322925] or {}

tItem[3331621] = tItem[3322925] or {}
tItem[3331622] = tItem[3322925] or {}
tItem[3331623] = tItem[3322925] or {}
tItem[3331624] = tItem[3322925] or {}
tItem[3331625] = tItem[3322925] or {}
tItem[3331626] = tItem[3322925] or {}
tItem[3331627] = tItem[3322925] or {}
tItem[3331628] = tItem[3322925] or {}



-- 3330210,'7天时效征服十周年外套（赠）礼盒',
-- 3330211,'7天时效梦幻仙缘套装【珍藏版】（赠）礼盒',
-- 3330212,'7天时效EvilPumpkin（赠）礼盒',
-- 3330213,'7天时效萌萌兔套装（赠）礼盒',
-- 3330214,'永久时效BlessedStar(Splendor)（赠）礼盒'
-- 3330215,'3天时效喵基尼【璀璨版】（赠）礼盒'
-- 3330216,'3天时效RobeofDarkness(Hades)(NoHelmet)（赠）礼盒'
-- 3330217,'3天时效BubbleSwimsuit（赠）礼盒',
-- 3330218,'3天时效WingsofRomance（赠）礼盒',
-- 3330219,'3天时效 WingsofHeart（赠）礼盒',
-- 3330220,'3天时效 OrangeGlowWings（赠）礼盒',
-- 3330221,'3天时效EmeraldGlowWing（赠）礼盒',
-- 3330222,'3天时效FlameGlowWings（赠）礼盒',
-- 3330223,'90天SpringFestivalWings（赠）礼盒',
-- 3330224,'7天时效 HolyBlueWings（赠）礼盒',
-- 3330225,'7天时效 SirenSong（赠）礼盒'
tItem[3330210] = tItem[3330210] or {}
tItem[3330210]["Function"] = function(nSepMoMoAct_ItemId,sSepMoMoAct_ItemName)
	-- 判断是否处于活动期内，过期删除
	if CommonFunc_GetAfterActivityTime(tActivityTime["SepMoMoAct"]["ItemUseTime"]) then
		local nSepMoMoAct_Num = Get_CountItemType(nSepMoMoAct_ItemId,0) or 0
		if Item_ChkItem(nSepMoMoAct_ItemId) and Item_DelAllItemByType(nSepMoMoAct_ItemId) then
		--过期删除log
		local sSepMoMoAct_str = string.format(tSepMoMoAct_Log["DeleteItem"],nSepMoMoAct_ItemId,nSepMoMoAct_Num)
		Sys_SaveActionFestivalLog(sSepMoMoAct_str)
		Sys_MsgBox(tSepMoMoAct_Text["SystemTips"]["OverTime"])
		end 
		return
	end
	RewardTemplate_UseItemAndMsg(tSepMoMoAct_Award[nSepMoMoAct_ItemId])
end

tItem[3330211] = tItem[3330210] or {}
tItem[3330212] = tItem[3330210] or {}
tItem[3330213] = tItem[3330210] or {}
tItem[3330214] = tItem[3330210] or {}
tItem[3330215] = tItem[3330210] or {}
tItem[3330216] = tItem[3330210] or {}
tItem[3330217] = tItem[3330210] or {}
tItem[3330218] = tItem[3330210] or {}
tItem[3330219] = tItem[3330210] or {}
tItem[3330220] = tItem[3330210] or {}
tItem[3330221] = tItem[3330210] or {}
tItem[3330222] = tItem[3330210] or {}
tItem[3330223] = tItem[3330210] or {}
tItem[3330224] = tItem[3330210] or {}
tItem[3330225] = tItem[3330210] or {}