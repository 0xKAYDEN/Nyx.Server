------------------------------------------------------------------------------------
--Name:			190611[英文征服][活动脚本]7月活动发奖action-上半月7.02
--Creator: 		茅志伟
--Created:		2019/06/11
------------------------------------------------------------------------------------

--命名前缀 tJulyActionUp_

--lua.ini 41337
-- 41337 = V100\ActiveScript\[Conquer][ActiveScript]JulyActionUp.lua
-- 41337 = V100\活动脚本\[征服][活动脚本]7月活动发奖action-上半月.lua
--LogId = 12001456


local tJulyActionUp_Pack = {}
	-- ===500000神纹礼包
	-- ===索引: tJulyActionUp_Pack[3321924]
	-- ===删除:3321924,1
	-- ===
	tJulyActionUp_Pack[3321924] = {}
	tJulyActionUp_Pack[3321924]["LogId"] = 12001456
	tJulyActionUp_Pack[3321924]["DeleteItem"] = {}
	tJulyActionUp_Pack[3321924]["DeleteItem"][1] = {}
	tJulyActionUp_Pack[3321924]["DeleteItem"][1]["Id"] = 3321924 -- 【库】神纹提升礼包[属性:9]
	tJulyActionUp_Pack[3321924]["RewardItem"] = {}
	tJulyActionUp_Pack[3321924]["RewardItem"][1] = {}
	tJulyActionUp_Pack[3321924]["RewardItem"][1]["Id"] = 3301425 -- 【库】SuperSkillSoulSplinter[属性:9], 【表格】赠极品技能外套碎片*29（赠）
	tJulyActionUp_Pack[3321924]["RewardItem"][1]["Attr"] = "0 29" -- SuperSkillSoulSplinter*29
	tJulyActionUp_Pack[3321924]["RewardItem"][2] = {}
	tJulyActionUp_Pack[3321924]["RewardItem"][2]["Id"] = 730008 -- 【库】+8Stone[属性:0], 【表格】赠品赤炼石+8*1（赠）
	tJulyActionUp_Pack[3321924]["RewardItem"][2]["Attr"] = "0 1 3" -- +8Stone（赠）*1
	tJulyActionUp_Pack[3321924]["RewardItem"][3] = {}
	tJulyActionUp_Pack[3321924]["RewardItem"][3]["Id"] = 4060001 -- 【库】UniversalRuneEssence[属性:9], 【表格】非赠万能神纹精粹*200
	tJulyActionUp_Pack[3321924]["RewardItem"][3]["Attr"] = "0 200" -- UniversalRuneEssence*200
	tJulyActionUp_Pack[3321924]["RewardItem"][4] = {}
	tJulyActionUp_Pack[3321924]["RewardItem"][4]["Id"] = 711504 -- 【库】SmallLotteryTicket[属性:9], 【表格】非赠小抽奖券*30
	tJulyActionUp_Pack[3321924]["RewardItem"][4]["Attr"] = "0 30" -- SmallLotteryTicket*30
	tJulyActionUp_Pack[3321924]["RewardEffect"] = {}
	tJulyActionUp_Pack[3321924]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyActionUp_Pack[3321924]["RewardEffect"]["Effect"] = "angelwing"


	tJulyActionUp_Pack[3321925] = {}
	-- ===全服第一奖励礼包
	-- ===索引: tJulyActionUp_Pack[3321925][1]
	-- ===删除:3321925,1
	-- ===
	tJulyActionUp_Pack[3321925][1] = {}
	tJulyActionUp_Pack[3321925][1]["LogId"] = 12001456
	tJulyActionUp_Pack[3321925][1]["DeleteItem"] = {}
	tJulyActionUp_Pack[3321925][1]["DeleteItem"][1] = {}
	tJulyActionUp_Pack[3321925][1]["DeleteItem"][1]["Id"] = 3321925 -- 【库】全服第一奖励礼包[属性:9]
	tJulyActionUp_Pack[3321925][1]["RewardItem"] = {}
	tJulyActionUp_Pack[3321925][1]["RewardItem"][1] = {}
	tJulyActionUp_Pack[3321925][1]["RewardItem"][1]["Id"] = 195485 -- 【库】InvincibleEastern(Supreme)[属性:0], 【表格】神佑1%赠永久东方不败-至尊（赠）
	tJulyActionUp_Pack[3321925][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑InvincibleEastern(Supreme)（赠）*1
	tJulyActionUp_Pack[3321925][1]["RewardItem"][2] = {}
	tJulyActionUp_Pack[3321925][1]["RewardItem"][2]["Id"] = 3005412 -- 【库】PowerEraser[属性:0], 【表格】赠散功丹*20（赠）
	tJulyActionUp_Pack[3321925][1]["RewardItem"][2]["Attr"] = "0 20 3" -- PowerEraser（赠）*20
	tJulyActionUp_Pack[3321925][1]["RewardEffect"] = {}
	tJulyActionUp_Pack[3321925][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyActionUp_Pack[3321925][1]["RewardEffect"]["Effect"] = "angelwing"


	tJulyActionUp_Pack[3321925][2] = {}
	-- ===全服第一奖励礼包
	-- ===索引: tJulyActionUp_Pack[3321925][2]
	-- ===删除:3321925,1
	-- ===
	tJulyActionUp_Pack[3321925][2]["LogId"] = 12001456
	tJulyActionUp_Pack[3321925][2]["DeleteItem"] = {}
	tJulyActionUp_Pack[3321925][2]["DeleteItem"][1] = {}
	tJulyActionUp_Pack[3321925][2]["DeleteItem"][1]["Id"] = 3321925 -- 【库】全服第一奖励礼包[属性:9]
	tJulyActionUp_Pack[3321925][2]["RewardItem"] = {}
	tJulyActionUp_Pack[3321925][2]["RewardItem"][1] = {}
	tJulyActionUp_Pack[3321925][2]["RewardItem"][1]["Id"] = 189695 -- 【库】MonkeyKingArmor(Heaven)[属性:0], 【表格】神佑1%赠永久大圣魔铠（赠）
	tJulyActionUp_Pack[3321925][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑MonkeyKingArmor(Heaven)（赠）*1
	tJulyActionUp_Pack[3321925][2]["RewardItem"][2] = {}
	tJulyActionUp_Pack[3321925][2]["RewardItem"][2]["Id"] = 3005412 -- 【库】PowerEraser[属性:0], 【表格】赠散功丹*20（赠）
	tJulyActionUp_Pack[3321925][2]["RewardItem"][2]["Attr"] = "0 20 3" -- PowerEraser（赠）*20
	tJulyActionUp_Pack[3321925][2]["RewardEffect"] = {}
	tJulyActionUp_Pack[3321925][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyActionUp_Pack[3321925][2]["RewardEffect"]["Effect"] = "angelwing"


	tJulyActionUp_Pack[3321925][3] = {}
	-- ===全服第一奖励礼包
	-- ===索引: tJulyActionUp_Pack[3321925][3]
	-- ===删除:3321925,1
	-- ===
	tJulyActionUp_Pack[3321925][3]["LogId"] = 12001456
	tJulyActionUp_Pack[3321925][3]["DeleteItem"] = {}
	tJulyActionUp_Pack[3321925][3]["DeleteItem"][1] = {}
	tJulyActionUp_Pack[3321925][3]["DeleteItem"][1]["Id"] = 3321925 -- 【库】全服第一奖励礼包[属性:9]
	tJulyActionUp_Pack[3321925][3]["RewardItem"] = {}
	tJulyActionUp_Pack[3321925][3]["RewardItem"][1] = {}
	tJulyActionUp_Pack[3321925][3]["RewardItem"][1]["Id"] = 194875 -- 【库】BrightPurpleRomance[属性:8], 【表格】神佑1%赠紫音青衫【霞光】（赠）
	tJulyActionUp_Pack[3321925][3]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑BrightPurpleRomance（赠）*1
	tJulyActionUp_Pack[3321925][3]["RewardItem"][2] = {}
	tJulyActionUp_Pack[3321925][3]["RewardItem"][2]["Id"] = 3005412 -- 【库】PowerEraser[属性:0], 【表格】赠散功丹*20（赠）
	tJulyActionUp_Pack[3321925][3]["RewardItem"][2]["Attr"] = "0 20 3" -- PowerEraser（赠）*20
	tJulyActionUp_Pack[3321925][3]["RewardEffect"] = {}
	tJulyActionUp_Pack[3321925][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyActionUp_Pack[3321925][3]["RewardEffect"]["Effect"] = "angelwing"


	tJulyActionUp_Pack[3321926] = {}
	-- ===全服第二奖励礼包
	-- ===索引: tJulyActionUp_Pack[3321926][1]
	-- ===删除:3321926,1
	-- ===
	tJulyActionUp_Pack[3321926][1] = {}
	tJulyActionUp_Pack[3321926][1]["LogId"] = 12001456
	tJulyActionUp_Pack[3321926][1]["DeleteItem"] = {}
	tJulyActionUp_Pack[3321926][1]["DeleteItem"][1] = {}
	tJulyActionUp_Pack[3321926][1]["DeleteItem"][1]["Id"] = 3321926 -- 【库】全服第二奖励礼包[属性:9]
	tJulyActionUp_Pack[3321926][1]["RewardItem"] = {}
	tJulyActionUp_Pack[3321926][1]["RewardItem"][1] = {}
	tJulyActionUp_Pack[3321926][1]["RewardItem"][1]["Id"] = 195485 -- 【库】InvincibleEastern(Supreme)[属性:0], 【表格】神佑1%赠永久东方不败-至尊（赠）
	tJulyActionUp_Pack[3321926][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑InvincibleEastern(Supreme)（赠）*1
	tJulyActionUp_Pack[3321926][1]["RewardItem"][2] = {}
	tJulyActionUp_Pack[3321926][1]["RewardItem"][2]["Id"] = 3005412 -- 【库】PowerEraser[属性:0], 【表格】赠散功丹*18（赠）
	tJulyActionUp_Pack[3321926][1]["RewardItem"][2]["Attr"] = "0 18 3" -- PowerEraser（赠）*18
	tJulyActionUp_Pack[3321926][1]["RewardEffect"] = {}
	tJulyActionUp_Pack[3321926][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyActionUp_Pack[3321926][1]["RewardEffect"]["Effect"] = "angelwing"


	tJulyActionUp_Pack[3321926][2] = {}
	-- ===全服第二奖励礼包
	-- ===索引: tJulyActionUp_Pack[3321926][2]
	-- ===删除:3321926,1
	-- ===
	tJulyActionUp_Pack[3321926][2]["LogId"] = 12001456
	tJulyActionUp_Pack[3321926][2]["DeleteItem"] = {}
	tJulyActionUp_Pack[3321926][2]["DeleteItem"][1] = {}
	tJulyActionUp_Pack[3321926][2]["DeleteItem"][1]["Id"] = 3321926 -- 【库】全服第二奖励礼包[属性:9]
	tJulyActionUp_Pack[3321926][2]["RewardItem"] = {}
	tJulyActionUp_Pack[3321926][2]["RewardItem"][1] = {}
	tJulyActionUp_Pack[3321926][2]["RewardItem"][1]["Id"] = 189695 -- 【库】MonkeyKingArmor(Heaven)[属性:0], 【表格】神佑1%赠永久大圣魔铠（赠）
	tJulyActionUp_Pack[3321926][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑MonkeyKingArmor(Heaven)（赠）*1
	tJulyActionUp_Pack[3321926][2]["RewardItem"][2] = {}
	tJulyActionUp_Pack[3321926][2]["RewardItem"][2]["Id"] = 3005412 -- 【库】PowerEraser[属性:0], 【表格】赠散功丹*18（赠）
	tJulyActionUp_Pack[3321926][2]["RewardItem"][2]["Attr"] = "0 18 3" -- PowerEraser（赠）*18
	tJulyActionUp_Pack[3321926][2]["RewardEffect"] = {}
	tJulyActionUp_Pack[3321926][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyActionUp_Pack[3321926][2]["RewardEffect"]["Effect"] = "angelwing"


	tJulyActionUp_Pack[3321927] = {}
	-- ===全服第三奖励礼包
	-- ===索引: tJulyActionUp_Pack[3321927][1]
	-- ===删除:3321927,1
	-- ===
	tJulyActionUp_Pack[3321927][1] = {}
	tJulyActionUp_Pack[3321927][1]["LogId"] = 12001456
	tJulyActionUp_Pack[3321927][1]["DeleteItem"] = {}
	tJulyActionUp_Pack[3321927][1]["DeleteItem"][1] = {}
	tJulyActionUp_Pack[3321927][1]["DeleteItem"][1]["Id"] = 3321927 -- 【库】全服第三奖励礼包[属性:9]
	tJulyActionUp_Pack[3321927][1]["RewardItem"] = {}
	tJulyActionUp_Pack[3321927][1]["RewardItem"][1] = {}
	tJulyActionUp_Pack[3321927][1]["RewardItem"][1]["Id"] = 189695 -- 【库】MonkeyKingArmor(Heaven)[属性:0], 【表格】神佑1%赠永久大圣魔铠（赠）
	tJulyActionUp_Pack[3321927][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑MonkeyKingArmor(Heaven)（赠）*1
	tJulyActionUp_Pack[3321927][1]["RewardItem"][2] = {}
	tJulyActionUp_Pack[3321927][1]["RewardItem"][2]["Id"] = 3005412 -- 【库】PowerEraser[属性:0], 【表格】赠散功丹*13（赠）
	tJulyActionUp_Pack[3321927][1]["RewardItem"][2]["Attr"] = "0 13 3" -- PowerEraser（赠）*13
	tJulyActionUp_Pack[3321927][1]["RewardEffect"] = {}
	tJulyActionUp_Pack[3321927][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyActionUp_Pack[3321927][1]["RewardEffect"]["Effect"] = "angelwing"


	tJulyActionUp_Pack[3321927][2] = {}
	-- ===全服第三奖励礼包
	-- ===索引: tJulyActionUp_Pack[3321927][2]
	-- ===删除:3321927,1
	-- ===
	tJulyActionUp_Pack[3321927][2]["LogId"] = 12001456
	tJulyActionUp_Pack[3321927][2]["DeleteItem"] = {}
	tJulyActionUp_Pack[3321927][2]["DeleteItem"][1] = {}
	tJulyActionUp_Pack[3321927][2]["DeleteItem"][1]["Id"] = 3321927 -- 【库】全服第三奖励礼包[属性:9]
	tJulyActionUp_Pack[3321927][2]["RewardItem"] = {}
	tJulyActionUp_Pack[3321927][2]["RewardItem"][1] = {}
	tJulyActionUp_Pack[3321927][2]["RewardItem"][1]["Id"] = 194875 -- 【库】BrightPurpleRomance[属性:8], 【表格】神佑1%赠紫音青衫【霞光】（赠）
	tJulyActionUp_Pack[3321927][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑BrightPurpleRomance（赠）*1
	tJulyActionUp_Pack[3321927][2]["RewardItem"][2] = {}
	tJulyActionUp_Pack[3321927][2]["RewardItem"][2]["Id"] = 3005412 -- 【库】PowerEraser[属性:0], 【表格】赠散功丹*13（赠）
	tJulyActionUp_Pack[3321927][2]["RewardItem"][2]["Attr"] = "0 13 3" -- PowerEraser（赠）*13
	tJulyActionUp_Pack[3321927][2]["RewardEffect"] = {}
	tJulyActionUp_Pack[3321927][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyActionUp_Pack[3321927][2]["RewardEffect"]["Effect"] = "angelwing"


	tJulyActionUp_Pack[3321928] = {}
	-- ===全服第四奖励礼包
	-- ===索引: tJulyActionUp_Pack[3321928]
	-- ===删除:3321928,1
	-- ===
	tJulyActionUp_Pack[3321928]["LogId"] = 12001456
	tJulyActionUp_Pack[3321928]["DeleteItem"] = {}
	tJulyActionUp_Pack[3321928]["DeleteItem"][1] = {}
	tJulyActionUp_Pack[3321928]["DeleteItem"][1]["Id"] = 3321928 -- 【库】全服第四奖励礼包[属性:9]
	tJulyActionUp_Pack[3321928]["RewardItem"] = {}
	tJulyActionUp_Pack[3321928]["RewardItem"][1] = {}
	tJulyActionUp_Pack[3321928]["RewardItem"][1]["Id"] = 194875 -- 【库】BrightPurpleRomance[属性:8], 【表格】神佑1%赠紫音青衫【霞光】（赠）
	tJulyActionUp_Pack[3321928]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑BrightPurpleRomance（赠）*1
	tJulyActionUp_Pack[3321928]["RewardItem"][2] = {}
	tJulyActionUp_Pack[3321928]["RewardItem"][2]["Id"] = 3005412 -- 【库】PowerEraser[属性:0], 【表格】赠散功丹*10（赠）
	tJulyActionUp_Pack[3321928]["RewardItem"][2]["Attr"] = "0 10 3" -- PowerEraser（赠）*10
	tJulyActionUp_Pack[3321928]["RewardEffect"] = {}
	tJulyActionUp_Pack[3321928]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyActionUp_Pack[3321928]["RewardEffect"]["Effect"] = "angelwing"


	tJulyActionUp_Pack[3321929] = {}
	-- ===全服第五奖励礼包
	-- ===索引: tJulyActionUp_Pack[3321929]
	-- ===删除:3321929,1
	-- ===
	tJulyActionUp_Pack[3321929]["LogId"] = 12001456
	tJulyActionUp_Pack[3321929]["DeleteItem"] = {}
	tJulyActionUp_Pack[3321929]["DeleteItem"][1] = {}
	tJulyActionUp_Pack[3321929]["DeleteItem"][1]["Id"] = 3321929 -- 【库】全服第五奖励礼包[属性:9]
	tJulyActionUp_Pack[3321929]["RewardItem"] = {}
	tJulyActionUp_Pack[3321929]["RewardItem"][1] = {}
	tJulyActionUp_Pack[3321929]["RewardItem"][1]["Id"] = 194875 -- 【库】BrightPurpleRomance[属性:8], 【表格】神佑1%赠紫音青衫【霞光】（赠）
	tJulyActionUp_Pack[3321929]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑BrightPurpleRomance（赠）*1
	tJulyActionUp_Pack[3321929]["RewardItem"][2] = {}
	tJulyActionUp_Pack[3321929]["RewardItem"][2]["Id"] = 3005412 -- 【库】PowerEraser[属性:0], 【表格】赠散功丹*8（赠）
	tJulyActionUp_Pack[3321929]["RewardItem"][2]["Attr"] = "0 8 3" -- PowerEraser（赠）*8
	tJulyActionUp_Pack[3321929]["RewardEffect"] = {}
	tJulyActionUp_Pack[3321929]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyActionUp_Pack[3321929]["RewardEffect"]["Effect"] = "angelwing"


	tJulyActionUp_Pack[3321930] = {}
	-- ===全服第六奖励礼包
	-- ===索引: tJulyActionUp_Pack[3321930]
	-- ===删除:3321930,1
	-- ===
	tJulyActionUp_Pack[3321930]["LogId"] = 12001456
	tJulyActionUp_Pack[3321930]["DeleteItem"] = {}
	tJulyActionUp_Pack[3321930]["DeleteItem"][1] = {}
	tJulyActionUp_Pack[3321930]["DeleteItem"][1]["Id"] = 3321930 -- 【库】全服第六奖励礼包[属性:9]
	tJulyActionUp_Pack[3321930]["RewardItem"] = {}
	tJulyActionUp_Pack[3321930]["RewardItem"][1] = {}
	tJulyActionUp_Pack[3321930]["RewardItem"][1]["Id"] = 194875 -- 【库】BrightPurpleRomance[属性:8], 【表格】神佑1%赠紫音青衫【霞光】（赠）
	tJulyActionUp_Pack[3321930]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑BrightPurpleRomance（赠）*1
	tJulyActionUp_Pack[3321930]["RewardItem"][2] = {}
	tJulyActionUp_Pack[3321930]["RewardItem"][2]["Id"] = 3005412 -- 【库】PowerEraser[属性:0], 【表格】赠散功丹*5（赠）
	tJulyActionUp_Pack[3321930]["RewardItem"][2]["Attr"] = "0 5 3" -- PowerEraser（赠）*5
	tJulyActionUp_Pack[3321930]["RewardEffect"] = {}
	tJulyActionUp_Pack[3321930]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyActionUp_Pack[3321930]["RewardEffect"]["Effect"] = "angelwing"


	tJulyActionUp_Pack[3321931] = {}
	-- ===全服第七奖励礼包
	-- ===索引: tJulyActionUp_Pack[3321931]
	-- ===删除:3321931,1
	-- ===
	tJulyActionUp_Pack[3321931]["LogId"] = 12001456
	tJulyActionUp_Pack[3321931]["DeleteItem"] = {}
	tJulyActionUp_Pack[3321931]["DeleteItem"][1] = {}
	tJulyActionUp_Pack[3321931]["DeleteItem"][1]["Id"] = 3321931 -- 【库】全服第七奖励礼包[属性:9]
	tJulyActionUp_Pack[3321931]["RewardItem"] = {}
	tJulyActionUp_Pack[3321931]["RewardItem"][1] = {}
	tJulyActionUp_Pack[3321931]["RewardItem"][1]["Id"] = 194875 -- 【库】BrightPurpleRomance[属性:8], 【表格】神佑1%赠紫音青衫【霞光】（赠）
	tJulyActionUp_Pack[3321931]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑BrightPurpleRomance（赠）*1
	tJulyActionUp_Pack[3321931]["RewardItem"][2] = {}
	tJulyActionUp_Pack[3321931]["RewardItem"][2]["Id"] = 3005412 -- 【库】PowerEraser[属性:0], 【表格】赠散功丹*3（赠）
	tJulyActionUp_Pack[3321931]["RewardItem"][2]["Attr"] = "0 3 3" -- PowerEraser（赠）*3
	tJulyActionUp_Pack[3321931]["RewardEffect"] = {}
	tJulyActionUp_Pack[3321931]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyActionUp_Pack[3321931]["RewardEffect"]["Effect"] = "angelwing"


	tJulyActionUp_Pack[3321932] = {}
	-- ===全服第八奖励礼包
	-- ===索引: tJulyActionUp_Pack[3321932]
	-- ===删除:3321932,1
	-- ===
	tJulyActionUp_Pack[3321932]["LogId"] = 12001456
	tJulyActionUp_Pack[3321932]["DeleteItem"] = {}
	tJulyActionUp_Pack[3321932]["DeleteItem"][1] = {}
	tJulyActionUp_Pack[3321932]["DeleteItem"][1]["Id"] = 3321932 -- 【库】全服第八奖励礼包[属性:9]
	tJulyActionUp_Pack[3321932]["RewardItem"] = {}
	tJulyActionUp_Pack[3321932]["RewardItem"][1] = {}
	tJulyActionUp_Pack[3321932]["RewardItem"][1]["Id"] = 194875 -- 【库】BrightPurpleRomance[属性:8], 【表格】神佑1%赠紫音青衫【霞光】（赠）
	tJulyActionUp_Pack[3321932]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑BrightPurpleRomance（赠）*1
	tJulyActionUp_Pack[3321932]["RewardItem"][2] = {}
	tJulyActionUp_Pack[3321932]["RewardItem"][2]["Id"] = 3005412 -- 【库】PowerEraser[属性:0], 【表格】赠散功丹*2（赠）
	tJulyActionUp_Pack[3321932]["RewardItem"][2]["Attr"] = "0 2 3" -- PowerEraser（赠）*2
	tJulyActionUp_Pack[3321932]["RewardEffect"] = {}
	tJulyActionUp_Pack[3321932]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyActionUp_Pack[3321932]["RewardEffect"]["Effect"] = "angelwing"


	tJulyActionUp_Pack[3321933] = {}
	-- ===神器源晶小礼包
	-- ===索引: tJulyActionUp_Pack[3321933]
	-- ===删除:3321933,1
	-- ===
	tJulyActionUp_Pack[3321933]["LogId"] = 12001456
	tJulyActionUp_Pack[3321933]["DeleteItem"] = {}
	tJulyActionUp_Pack[3321933]["DeleteItem"][1] = {}
	tJulyActionUp_Pack[3321933]["DeleteItem"][1]["Id"] = 3321933 -- 【库】300个神器源晶（赠）包[属性:9]
	tJulyActionUp_Pack[3321933]["RewardItem"] = {}
	tJulyActionUp_Pack[3321933]["RewardItem"][1] = {}
	tJulyActionUp_Pack[3321933]["RewardItem"][1]["Id"] = 3306885 -- 【库】RelicCrystal[属性:9], 【表格】神器源晶*300（赠）
	tJulyActionUp_Pack[3321933]["RewardItem"][1]["Attr"] = "0 300" -- RelicCrystal*300
	tJulyActionUp_Pack[3321933]["RewardEffect"] = {}
	tJulyActionUp_Pack[3321933]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyActionUp_Pack[3321933]["RewardEffect"]["Effect"] = "angelwing"


	tJulyActionUp_Pack[3321934] = {}
	-- ===神器源晶大礼包
	-- ===索引: tJulyActionUp_Pack[3321934]
	-- ===删除:3321934,1
	-- ===
	tJulyActionUp_Pack[3321934]["LogId"] = 12001456
	tJulyActionUp_Pack[3321934]["DeleteItem"] = {}
	tJulyActionUp_Pack[3321934]["DeleteItem"][1] = {}
	tJulyActionUp_Pack[3321934]["DeleteItem"][1]["Id"] = 3321934 -- 【库】800个神器源晶（赠）包[属性:9]
	tJulyActionUp_Pack[3321934]["RewardItem"] = {}
	tJulyActionUp_Pack[3321934]["RewardItem"][1] = {}
	tJulyActionUp_Pack[3321934]["RewardItem"][1]["Id"] = 3306885 -- 【库】RelicCrystal[属性:9], 【表格】神器源晶*800（赠）
	tJulyActionUp_Pack[3321934]["RewardItem"][1]["Attr"] = "0 800" -- RelicCrystal*800
	tJulyActionUp_Pack[3321934]["RewardEffect"] = {}
	tJulyActionUp_Pack[3321934]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyActionUp_Pack[3321934]["RewardEffect"]["Effect"] = "angelwing"


	tJulyActionUp_Pack[3321935] = {}
	-- ===神器源晶包
	-- ===索引: tJulyActionUp_Pack[3321935]
	-- ===删除:3321935,1
	-- ===
	tJulyActionUp_Pack[3321935]["LogId"] = 12001456
	tJulyActionUp_Pack[3321935]["DeleteItem"] = {}
	tJulyActionUp_Pack[3321935]["DeleteItem"][1] = {}
	tJulyActionUp_Pack[3321935]["DeleteItem"][1]["Id"] = 3321935 -- 【库】5个神器源晶（赠）包[属性:9]
	tJulyActionUp_Pack[3321935]["RewardItem"] = {}
	tJulyActionUp_Pack[3321935]["RewardItem"][1] = {}
	tJulyActionUp_Pack[3321935]["RewardItem"][1]["Id"] = 3306885 -- 【库】RelicCrystal[属性:9], 【表格】赠神器源晶*5（赠）
	tJulyActionUp_Pack[3321935]["RewardItem"][1]["Attr"] = "0 5" -- RelicCrystal*5
	tJulyActionUp_Pack[3321935]["RewardEffect"] = {}
	tJulyActionUp_Pack[3321935]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyActionUp_Pack[3321935]["RewardEffect"]["Effect"] = "angelwing"


	tJulyActionUp_Pack[3321936] = {}
	-- ===岫山玉包
	-- ===索引: tJulyActionUp_Pack[3321936]
	-- ===删除:3321936,1
	-- ===
	tJulyActionUp_Pack[3321936]["LogId"] = 12001456
	tJulyActionUp_Pack[3321936]["DeleteItem"] = {}
	tJulyActionUp_Pack[3321936]["DeleteItem"][1] = {}
	tJulyActionUp_Pack[3321936]["DeleteItem"][1]["Id"] = 3321936 -- 【库】3个岫山玉（赠）包[属性:9]
	tJulyActionUp_Pack[3321936]["RewardItem"] = {}
	tJulyActionUp_Pack[3321936]["RewardItem"][1] = {}
	tJulyActionUp_Pack[3321936]["RewardItem"][1]["Id"] = 3008221 -- 【库】OliveJade[属性:9], 【表格】岫山玉*3（赠）
	tJulyActionUp_Pack[3321936]["RewardItem"][1]["Attr"] = "0 3" -- OliveJade*3
	tJulyActionUp_Pack[3321936]["RewardEffect"] = {}
	tJulyActionUp_Pack[3321936]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyActionUp_Pack[3321936]["RewardEffect"]["Effect"] = "angelwing"


	tJulyActionUp_Pack[3321937] = {}
	-- ===蓝色神纹精粹包
	-- ===索引: tJulyActionUp_Pack[3321937]
	-- ===删除:3321937,1
	-- ===
	tJulyActionUp_Pack[3321937]["LogId"] = 12001456
	tJulyActionUp_Pack[3321937]["DeleteItem"] = {}
	tJulyActionUp_Pack[3321937]["DeleteItem"][1] = {}
	tJulyActionUp_Pack[3321937]["DeleteItem"][1]["Id"] = 3321937 -- 【库】10个蓝色神纹精粹（赠）包[属性:9]
	tJulyActionUp_Pack[3321937]["RewardItem"] = {}
	tJulyActionUp_Pack[3321937]["RewardItem"][1] = {}
	tJulyActionUp_Pack[3321937]["RewardItem"][1]["Id"] = 4040001 -- 【库】BlueRuneEssence[属性:9], 【表格】赠蓝色神纹精粹*10（赠）
	tJulyActionUp_Pack[3321937]["RewardItem"][1]["Attr"] = "0 10 3" -- BlueRuneEssence（赠）*10
	tJulyActionUp_Pack[3321937]["RewardEffect"] = {}
	tJulyActionUp_Pack[3321937]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyActionUp_Pack[3321937]["RewardEffect"]["Effect"] = "angelwing"


	tJulyActionUp_Pack[3321938] = {}
	-- ===8阶灵珠包
	-- ===索引: tJulyActionUp_Pack[3321938]
	-- ===删除:3321938,1
	-- ===
	tJulyActionUp_Pack[3321938]["LogId"] = 12001456
	tJulyActionUp_Pack[3321938]["DeleteItem"] = {}
	tJulyActionUp_Pack[3321938]["DeleteItem"][1] = {}
	tJulyActionUp_Pack[3321938]["DeleteItem"][1]["Id"] = 3321938 -- 【库】3个8阶灵珠包[属性:9]
	tJulyActionUp_Pack[3321938]["RewardItem"] = {}
	tJulyActionUp_Pack[3321938]["RewardItem"][1] = {}
	tJulyActionUp_Pack[3321938]["RewardItem"][1]["Id"] = 4200008 -- 【库】P8Anima[属性:72], 【表格】8阶灵珠*3（赠）
	tJulyActionUp_Pack[3321938]["RewardItem"][1]["Attr"] = "0 3" -- P8Anima*3
	tJulyActionUp_Pack[3321938]["RewardItem"][1]["PreciousType"] = 314 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tJulyActionUp_Pack[3321938]["RewardEffect"] = {}
	tJulyActionUp_Pack[3321938]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyActionUp_Pack[3321938]["RewardEffect"]["Effect"] = "angelwing"


	tJulyActionUp_Pack[3321939] = {}
	-- ===优质神纹源晶包
	-- ===索引: tJulyActionUp_Pack[3321939]
	-- ===删除:3321939,1
	-- ===
	tJulyActionUp_Pack[3321939]["LogId"] = 12001456
	tJulyActionUp_Pack[3321939]["DeleteItem"] = {}
	tJulyActionUp_Pack[3321939]["DeleteItem"][1] = {}
	tJulyActionUp_Pack[3321939]["DeleteItem"][1]["Id"] = 3321939 -- 【库】2个优质神纹源晶（赠）包[属性:9]
	tJulyActionUp_Pack[3321939]["RewardItem"] = {}
	tJulyActionUp_Pack[3321939]["RewardItem"][1] = {}
	tJulyActionUp_Pack[3321939]["RewardItem"][1]["Id"] = 3311821 -- 【库】DivineRuneStone[属性:9], 【表格】赠品优质神纹源晶*2（赠）
	tJulyActionUp_Pack[3321939]["RewardItem"][1]["Attr"] = "0 2" -- DivineRuneStone*2
	tJulyActionUp_Pack[3321939]["RewardEffect"] = {}
	tJulyActionUp_Pack[3321939]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyActionUp_Pack[3321939]["RewardEffect"]["Effect"] = "angelwing"


	tJulyActionUp_Pack[3321940] = {}
	-- ===璀璨星陨石包
	-- ===索引: tJulyActionUp_Pack[3321940]
	-- ===删除:3321940,1
	-- ===
	tJulyActionUp_Pack[3321940]["LogId"] = 12001456
	tJulyActionUp_Pack[3321940]["DeleteItem"] = {}
	tJulyActionUp_Pack[3321940]["DeleteItem"][1] = {}
	tJulyActionUp_Pack[3321940]["DeleteItem"][1]["Id"] = 3321940 -- 【库】2个璀璨星陨石包[属性:9]
	tJulyActionUp_Pack[3321940]["RewardItem"] = {}
	tJulyActionUp_Pack[3321940]["RewardItem"][1] = {}
	tJulyActionUp_Pack[3321940]["RewardItem"][1]["Id"] = 3009003 -- 【库】SplendidStarStone[属性:9], 【表格】璀璨星陨石*2（赠）
	tJulyActionUp_Pack[3321940]["RewardItem"][1]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的SplendidStarStone*2
	tJulyActionUp_Pack[3321940]["RewardEffect"] = {}
	tJulyActionUp_Pack[3321940]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyActionUp_Pack[3321940]["RewardEffect"]["Effect"] = "angelwing"


	tJulyActionUp_Pack[3321941] = {}
	-- ===黄色神纹精粹包
	-- ===索引: tJulyActionUp_Pack[3321941]
	-- ===删除:3321941,1
	-- ===
	tJulyActionUp_Pack[3321941]["LogId"] = 12001456
	tJulyActionUp_Pack[3321941]["DeleteItem"] = {}
	tJulyActionUp_Pack[3321941]["DeleteItem"][1] = {}
	tJulyActionUp_Pack[3321941]["DeleteItem"][1]["Id"] = 3321941 -- 【库】50个黄色神纹精粹（赠）包[属性:9]
	tJulyActionUp_Pack[3321941]["RewardItem"] = {}
	tJulyActionUp_Pack[3321941]["RewardItem"][1] = {}
	tJulyActionUp_Pack[3321941]["RewardItem"][1]["Id"] = 4050001 -- 【库】YellowRuneEssence[属性:9], 【表格】黄色神纹精粹*50（赠）
	tJulyActionUp_Pack[3321941]["RewardItem"][1]["Attr"] = "0 50 3" -- YellowRuneEssence（赠）*50
	tJulyActionUp_Pack[3321941]["RewardEffect"] = {}
	tJulyActionUp_Pack[3321941]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyActionUp_Pack[3321941]["RewardEffect"]["Effect"] = "angelwing"


	tJulyActionUp_Pack[3321942] = {}
	-- ===大爆丹包
	-- ===索引: tJulyActionUp_Pack[3321942]
	-- ===删除:3321942,1
	-- ===
	tJulyActionUp_Pack[3321942]["LogId"] = 12001456
	tJulyActionUp_Pack[3321942]["DeleteItem"] = {}
	tJulyActionUp_Pack[3321942]["DeleteItem"][1] = {}
	tJulyActionUp_Pack[3321942]["DeleteItem"][1]["Id"] = 3321942 -- 【库】40个究极通神丹（赠）包[属性:9]
	tJulyActionUp_Pack[3321942]["RewardItem"] = {}
	tJulyActionUp_Pack[3321942]["RewardItem"][1] = {}
	tJulyActionUp_Pack[3321942]["RewardItem"][1]["Id"] = 3003126 -- 【库】SeniorTrainingPill[属性:0], 【表格】大爆丹*40（赠）
	tJulyActionUp_Pack[3321942]["RewardItem"][1]["Attr"] = "0 40 3" -- SeniorTrainingPill（赠）*40
	tJulyActionUp_Pack[3321942]["RewardEffect"] = {}
	tJulyActionUp_Pack[3321942]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyActionUp_Pack[3321942]["RewardEffect"]["Effect"] = "angelwing"


	tJulyActionUp_Pack[3321943] = {}
	-- ===微光星陨石包
	-- ===索引: tJulyActionUp_Pack[3321943]
	-- ===删除:3321943,1
	-- ===
	tJulyActionUp_Pack[3321943]["LogId"] = 12001456
	tJulyActionUp_Pack[3321943]["DeleteItem"] = {}
	tJulyActionUp_Pack[3321943]["DeleteItem"][1] = {}
	tJulyActionUp_Pack[3321943]["DeleteItem"][1]["Id"] = 3321943 -- 【库】3个微光星陨石包[属性:9]
	tJulyActionUp_Pack[3321943]["RewardItem"] = {}
	tJulyActionUp_Pack[3321943]["RewardItem"][1] = {}
	tJulyActionUp_Pack[3321943]["RewardItem"][1]["Id"] = 3009000 -- 【库】TwilightStarStone[属性:9], 【表格】微光星陨石*3
	tJulyActionUp_Pack[3321943]["RewardItem"][1]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的TwilightStarStone*3
	tJulyActionUp_Pack[3321943]["RewardEffect"] = {}
	tJulyActionUp_Pack[3321943]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyActionUp_Pack[3321943]["RewardEffect"]["Effect"] = "angelwing"


	tJulyActionUp_Pack[3321944] = {}
	-- ===辉月果包
	-- ===索引: tJulyActionUp_Pack[3321944]
	-- ===删除:3321944,1
	-- ===
	tJulyActionUp_Pack[3321944]["LogId"] = 12001456
	tJulyActionUp_Pack[3321944]["DeleteItem"] = {}
	tJulyActionUp_Pack[3321944]["DeleteItem"][1] = {}
	tJulyActionUp_Pack[3321944]["DeleteItem"][1]["Id"] = 3321944 -- 【库】3个辉月果包[属性:9]
	tJulyActionUp_Pack[3321944]["RewardItem"] = {}
	tJulyActionUp_Pack[3321944]["RewardItem"][1] = {}
	tJulyActionUp_Pack[3321944]["RewardItem"][1]["Id"] = 3009102 -- 【库】MoonFruit[属性:9], 【表格】辉月果*3
	tJulyActionUp_Pack[3321944]["RewardItem"][1]["Attr"] = "0 3" -- MoonFruit*3
	tJulyActionUp_Pack[3321944]["RewardEffect"] = {}
	tJulyActionUp_Pack[3321944]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyActionUp_Pack[3321944]["RewardEffect"]["Effect"] = "angelwing"


	tJulyActionUp_Pack[3321945] = {}
	-- ===良品神纹源晶包
	-- ===索引: tJulyActionUp_Pack[3321945]
	-- ===删除:3321945,1
	-- ===
	tJulyActionUp_Pack[3321945]["LogId"] = 12001456
	tJulyActionUp_Pack[3321945]["DeleteItem"] = {}
	tJulyActionUp_Pack[3321945]["DeleteItem"][1] = {}
	tJulyActionUp_Pack[3321945]["DeleteItem"][1]["Id"] = 3321945 -- 【库】10个良品神纹源晶包[属性:9]
	tJulyActionUp_Pack[3321945]["RewardItem"] = {}
	tJulyActionUp_Pack[3321945]["RewardItem"][1] = {}
	tJulyActionUp_Pack[3321945]["RewardItem"][1]["Id"] = 3311820 -- 【库】MysticRuneStone[属性:9], 【表格】良品神纹源晶*10
	tJulyActionUp_Pack[3321945]["RewardItem"][1]["Attr"] = "0 10" -- MysticRuneStone*10
	tJulyActionUp_Pack[3321945]["RewardEffect"] = {}
	tJulyActionUp_Pack[3321945]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyActionUp_Pack[3321945]["RewardEffect"]["Effect"] = "angelwing"


	tJulyActionUp_Pack[3321946] = {}
	-- ===成长加速包A
	-- ===索引: tJulyActionUp_Pack[3321946]
	-- ===删除:3321946,1
	-- ===
	tJulyActionUp_Pack[3321946]["LogId"] = 12001456
	tJulyActionUp_Pack[3321946]["DeleteItem"] = {}
	tJulyActionUp_Pack[3321946]["DeleteItem"][1] = {}
	tJulyActionUp_Pack[3321946]["DeleteItem"][1]["Id"] = 3321946 -- 【库】成长加速普通包[属性:9]
	tJulyActionUp_Pack[3321946]["RewardItem"] = {}
	tJulyActionUp_Pack[3321946]["RewardItem"][1] = {}
	tJulyActionUp_Pack[3321946]["RewardItem"][1]["Id"] = 3322075 -- 【库】BlessedAccessoryPack[属性:11], 【表格】赠武器外套30天时效*2（赠）
	tJulyActionUp_Pack[3321946]["RewardItem"][1]["Attr"] = "0 2 0 43200 1" -- 30天时效(激活)的BlessedAccessoryPack*2
	tJulyActionUp_Pack[3321946]["RewardEffect"] = {}
	tJulyActionUp_Pack[3321946]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyActionUp_Pack[3321946]["RewardEffect"]["Effect"] = "angelwing"


	tJulyActionUp_Pack[3321947] = {}
	-- ===成长加速包B
	-- ===索引: tJulyActionUp_Pack[3321947]
	-- ===删除:3321947,1
	-- ===
	tJulyActionUp_Pack[3321947]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tJulyActionUp_Pack[3321947]["DeleteItem"] = {}
	tJulyActionUp_Pack[3321947]["DeleteItem"][1] = {}
	tJulyActionUp_Pack[3321947]["DeleteItem"][1]["Id"] = 3321947 -- 【库】成长加速精致包[属性:9]
	tJulyActionUp_Pack[3321947]["LogId"] = 12001456
	-- 2阶灵珠 - 20.00%
	tJulyActionUp_Pack[3321947][1] = {}
	tJulyActionUp_Pack[3321947][1]["RandomItemChanceType"] = 2
	tJulyActionUp_Pack[3321947][1]["ItemChance"] = 2000
	tJulyActionUp_Pack[3321947][1]["RewardItem"] = {}
	tJulyActionUp_Pack[3321947][1]["RewardItem"][1] = {}
	tJulyActionUp_Pack[3321947][1]["RewardItem"][1]["Id"] = 4200002 -- 【库】P2Anima[属性:72], 【表格】2阶灵珠
	tJulyActionUp_Pack[3321947][1]["RewardItem"][1]["Attr"] = "0 1" -- P2Anima*1
	tJulyActionUp_Pack[3321947][1]["RewardItem"][1]["PreciousType"] = 314 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tJulyActionUp_Pack[3321947][1]["RewardEffect"] = {}
	tJulyActionUp_Pack[3321947][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyActionUp_Pack[3321947][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 赠赤炼石+3（赠） - 20.00%
	tJulyActionUp_Pack[3321947][2] = {}
	tJulyActionUp_Pack[3321947][2]["RandomItemChanceType"] = 2
	tJulyActionUp_Pack[3321947][2]["ItemChance"] = 2000
	tJulyActionUp_Pack[3321947][2]["RewardItem"] = {}
	tJulyActionUp_Pack[3321947][2]["RewardItem"][1] = {}
	tJulyActionUp_Pack[3321947][2]["RewardItem"][1]["Id"] = 730003 -- 【库】+3Stone[属性:0], 【表格】赠赤炼石+3（赠）
	tJulyActionUp_Pack[3321947][2]["RewardItem"][1]["Attr"] = "0 2 3 10080 1" -- 7天时效(激活)的+3Stone（赠）*2
	tJulyActionUp_Pack[3321947][2]["RewardEffect"] = {}
	tJulyActionUp_Pack[3321947][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyActionUp_Pack[3321947][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 明亮星陨石 - 20.00%
	tJulyActionUp_Pack[3321947][3] = {}
	tJulyActionUp_Pack[3321947][3]["RandomItemChanceType"] = 2
	tJulyActionUp_Pack[3321947][3]["ItemChance"] = 2000
	tJulyActionUp_Pack[3321947][3]["RewardItem"] = {}
	tJulyActionUp_Pack[3321947][3]["RewardItem"][1] = {}
	tJulyActionUp_Pack[3321947][3]["RewardItem"][1]["Id"] = 3009001 -- 【库】BrightStarStone[属性:9], 【表格】明亮星陨石
	tJulyActionUp_Pack[3321947][3]["RewardItem"][1]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的BrightStarStone*2
	tJulyActionUp_Pack[3321947][3]["RewardEffect"] = {}
	tJulyActionUp_Pack[3321947][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyActionUp_Pack[3321947][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 神纹源晶（赠） - 20.00%
	tJulyActionUp_Pack[3321947][4] = {}
	tJulyActionUp_Pack[3321947][4]["RandomItemChanceType"] = 2
	tJulyActionUp_Pack[3321947][4]["ItemChance"] = 2000
	tJulyActionUp_Pack[3321947][4]["RewardItem"] = {}
	tJulyActionUp_Pack[3321947][4]["RewardItem"][1] = {}
	tJulyActionUp_Pack[3321947][4]["RewardItem"][1]["Id"] = 3311759 -- 【库】RuneCrystal[属性:8], 【表格】神纹源晶（赠）
	tJulyActionUp_Pack[3321947][4]["RewardItem"][1]["Attr"] = "0 1 3" -- RuneCrystal（赠）*1
	tJulyActionUp_Pack[3321947][4]["RewardEffect"] = {}
	tJulyActionUp_Pack[3321947][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyActionUp_Pack[3321947][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 万能神纹精粹（赠） - 20.00%
	tJulyActionUp_Pack[3321947][5] = {}
	tJulyActionUp_Pack[3321947][5]["RandomItemChanceType"] = 2
	tJulyActionUp_Pack[3321947][5]["ItemChance"] = 2000
	tJulyActionUp_Pack[3321947][5]["RewardItem"] = {}
	tJulyActionUp_Pack[3321947][5]["RewardItem"][1] = {}
	tJulyActionUp_Pack[3321947][5]["RewardItem"][1]["Id"] = 4060001 -- 【库】UniversalRuneEssence[属性:9], 【表格】万能神纹精粹（赠）
	tJulyActionUp_Pack[3321947][5]["RewardItem"][1]["Attr"] = "0 10 3" -- UniversalRuneEssence（赠）*10
	tJulyActionUp_Pack[3321947][5]["RewardEffect"] = {}
	tJulyActionUp_Pack[3321947][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyActionUp_Pack[3321947][5]["RewardEffect"]["Effect"] = "angelwing"


	tJulyActionUp_Pack[3321948] = {}
	-- ===藏宝阁-特惠月卡包
	-- ===索引: tJulyActionUp_Pack[3321948][1]
	-- ===
	tJulyActionUp_Pack[3321948][1] = {}
	tJulyActionUp_Pack[3321948][1]["LogId"] = 12001456
	tJulyActionUp_Pack[3321948][1]["RewardWing"] = {}
	tJulyActionUp_Pack[3321948][1]["RewardWing"]["TitleType"] = 6017 -- 【库】SirenSong, 【表格】15天时效SirenSong翅膀
	tJulyActionUp_Pack[3321948][1]["RewardWing"]["TitleId"] = 6017
	tJulyActionUp_Pack[3321948][1]["RewardWing"]["SaveTime"] = 21600 -- 15天时效的[翅膀]:SirenSong, 【需求】15天时效SirenSong翅膀
	tJulyActionUp_Pack[3321948][1]["RewardItem"] = {}
	tJulyActionUp_Pack[3321948][1]["RewardItem"][1] = {}
	tJulyActionUp_Pack[3321948][1]["RewardItem"][1]["Id"] = 730006 -- 【库】+6Stone[属性:0], 【表格】 +6赤练石赠（赠）
	tJulyActionUp_Pack[3321948][1]["RewardItem"][1]["Attr"] = "0 1 3" -- +6Stone（赠）*1
	tJulyActionUp_Pack[3321948][1]["RewardItem"][2] = {}
	tJulyActionUp_Pack[3321948][1]["RewardItem"][2]["Id"] = 720652 -- 【库】FloodDemonBox[属性:9], 【表格】100天石锁妖盒
	tJulyActionUp_Pack[3321948][1]["RewardItem"][2]["Attr"] = "0 3" -- FloodDemonBox*3
	tJulyActionUp_Pack[3321948][1]["RewardEffect"] = {}
	tJulyActionUp_Pack[3321948][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyActionUp_Pack[3321948][1]["RewardEffect"]["Effect"] = "angelwing"


	tJulyActionUp_Pack[3321948][2] = {}
	-- ===藏宝阁-特惠月卡包
	-- ===索引: tJulyActionUp_Pack[3321948][2]
	tJulyActionUp_Pack[3321948][2]["ItemChanceSum"] = 10000
	tJulyActionUp_Pack[3321948][2]["LogId"] = 12001456
	-- 小抽奖券 - 25.00%
	tJulyActionUp_Pack[3321948][2][1] = {}
	tJulyActionUp_Pack[3321948][2][1]["RandomItemChanceType"] = 2
	tJulyActionUp_Pack[3321948][2][1]["ItemChance"] = 2500
	tJulyActionUp_Pack[3321948][2][1]["RewardItem"] = {}
	tJulyActionUp_Pack[3321948][2][1]["RewardItem"][1] = {}
	tJulyActionUp_Pack[3321948][2][1]["RewardItem"][1]["Id"] = 711504 -- 【库】SmallLotteryTicket[属性:9], 【表格】小抽奖券
	tJulyActionUp_Pack[3321948][2][1]["RewardItem"][1]["Attr"] = "0 1" -- SmallLotteryTicket*1
	tJulyActionUp_Pack[3321948][2][1]["RewardEffect"] = {}
	tJulyActionUp_Pack[3321948][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyActionUp_Pack[3321948][2][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 明亮星陨石 - 29.00%
	tJulyActionUp_Pack[3321948][2][2] = {}
	tJulyActionUp_Pack[3321948][2][2]["RandomItemChanceType"] = 2
	tJulyActionUp_Pack[3321948][2][2]["ItemChance"] = 2900
	tJulyActionUp_Pack[3321948][2][2]["RewardItem"] = {}
	tJulyActionUp_Pack[3321948][2][2]["RewardItem"][1] = {}
	tJulyActionUp_Pack[3321948][2][2]["RewardItem"][1]["Id"] = 3009001 -- 【库】BrightStarStone[属性:9], 【表格】明亮星陨石
	tJulyActionUp_Pack[3321948][2][2]["RewardItem"][1]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的BrightStarStone*2
	tJulyActionUp_Pack[3321948][2][2]["RewardEffect"] = {}
	tJulyActionUp_Pack[3321948][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyActionUp_Pack[3321948][2][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 万能神纹精粹（赠） - 25.50%
	tJulyActionUp_Pack[3321948][2][3] = {}
	tJulyActionUp_Pack[3321948][2][3]["RandomItemChanceType"] = 2
	tJulyActionUp_Pack[3321948][2][3]["ItemChance"] = 2550
	tJulyActionUp_Pack[3321948][2][3]["RewardItem"] = {}
	tJulyActionUp_Pack[3321948][2][3]["RewardItem"][1] = {}
	tJulyActionUp_Pack[3321948][2][3]["RewardItem"][1]["Id"] = 4060001 -- 【库】UniversalRuneEssence[属性:9], 【表格】万能神纹精粹（赠）
	tJulyActionUp_Pack[3321948][2][3]["RewardItem"][1]["Attr"] = "0 10 3" -- UniversalRuneEssence*10
	tJulyActionUp_Pack[3321948][2][3]["RewardEffect"] = {}
	tJulyActionUp_Pack[3321948][2][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyActionUp_Pack[3321948][2][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 神纹源晶（赠） - 10.00%
	tJulyActionUp_Pack[3321948][2][4] = {}
	tJulyActionUp_Pack[3321948][2][4]["RandomItemChanceType"] = 2
	tJulyActionUp_Pack[3321948][2][4]["ItemChance"] = 1000
	tJulyActionUp_Pack[3321948][2][4]["RewardItem"] = {}
	tJulyActionUp_Pack[3321948][2][4]["RewardItem"][1] = {}
	tJulyActionUp_Pack[3321948][2][4]["RewardItem"][1]["Id"] = 3311759 -- 【库】RuneCrystal[属性:8], 【表格】神纹源晶（赠）
	tJulyActionUp_Pack[3321948][2][4]["RewardItem"][1]["Attr"] = "0 1 3" -- RuneCrystal（赠）*1
	tJulyActionUp_Pack[3321948][2][4]["RewardEffect"] = {}
	tJulyActionUp_Pack[3321948][2][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyActionUp_Pack[3321948][2][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 300天石（赠） - 5.00%
	tJulyActionUp_Pack[3321948][2][5] = {}
	tJulyActionUp_Pack[3321948][2][5]["RandomItemChanceType"] = 2
	tJulyActionUp_Pack[3321948][2][5]["ItemChance"] = 500
	tJulyActionUp_Pack[3321948][2][5]["RewardEMoneyMono"] = {}
	tJulyActionUp_Pack[3321948][2][5]["RewardEMoneyMono"]["Value"] = 300 -- 天石（赠）, 【需求】300天石（赠）
--	tJulyActionUp_Pack[3321948][2][5]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	0506"
	tJulyActionUp_Pack[3321948][2][5]["RewardEffect"] = {}
	tJulyActionUp_Pack[3321948][2][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyActionUp_Pack[3321948][2][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 1500气力值 - 5.00%
	tJulyActionUp_Pack[3321948][2][6] = {}
	tJulyActionUp_Pack[3321948][2][6]["RandomItemChanceType"] = 2
	tJulyActionUp_Pack[3321948][2][6]["ItemChance"] = 500
	tJulyActionUp_Pack[3321948][2][6]["RewardStrengthValue"] = {}
	tJulyActionUp_Pack[3321948][2][6]["RewardStrengthValue"]["Value"] = 1500 -- 气力值, 【需求】1500气力值
	tJulyActionUp_Pack[3321948][2][6]["RewardEffect"] = {}
	tJulyActionUp_Pack[3321948][2][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyActionUp_Pack[3321948][2][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 赠金刚尖钻（赠） - 0.50%
	tJulyActionUp_Pack[3321948][2][7] = {}
	tJulyActionUp_Pack[3321948][2][7]["RandomItemChanceType"] = 2
	tJulyActionUp_Pack[3321948][2][7]["ItemChance"] = 50
	tJulyActionUp_Pack[3321948][2][7]["RewardItem"] = {}
	tJulyActionUp_Pack[3321948][2][7]["RewardItem"][1] = {}
	tJulyActionUp_Pack[3321948][2][7]["RewardItem"][1]["Id"] = 1200005 -- 【库】ToughDrill[属性:0], 【表格】赠金刚尖钻（赠）
	tJulyActionUp_Pack[3321948][2][7]["RewardItem"][1]["Attr"] = "0 1 3" -- ToughDrill（赠）*1
	tJulyActionUp_Pack[3321948][2][7]["RewardEffect"] = {}
	tJulyActionUp_Pack[3321948][2][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyActionUp_Pack[3321948][2][7]["RewardEffect"]["Effect"] = "angelwing"


	tJulyActionUp_Pack[3321949] = {}
	-- ===10000个神器源晶礼包
	-- ===索引: tJulyActionUp_Pack[3321949]
	-- ===删除:3321949,1
	-- ===
	tJulyActionUp_Pack[3321949]["LogId"] = 12001456
	tJulyActionUp_Pack[3321949]["DeleteItem"] = {}
	tJulyActionUp_Pack[3321949]["DeleteItem"][1] = {}
	tJulyActionUp_Pack[3321949]["DeleteItem"][1]["Id"] = 3321949 -- 【库】10000个神器源晶（赠）包[属性:9]
	tJulyActionUp_Pack[3321949]["RewardItem"] = {}
	tJulyActionUp_Pack[3321949]["RewardItem"][1] = {}
	tJulyActionUp_Pack[3321949]["RewardItem"][1]["Id"] = 3306885 -- 【库】RelicCrystal[属性:9], 【表格】10000个神器源晶（赠）
	tJulyActionUp_Pack[3321949]["RewardItem"][1]["Attr"] = "0 10000" -- RelicCrystal*10000
	tJulyActionUp_Pack[3321949]["RewardEffect"] = {}
	tJulyActionUp_Pack[3321949]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyActionUp_Pack[3321949]["RewardEffect"]["Effect"] = "angelwing"


	-- ===武器外套可选包
	-- ===索引: tJulyActionUp_Pack[3322075][350011]
	-- ===删除:3322075,1
	-- ===
	tJulyActionUp_Pack[3322075] = {}
	tJulyActionUp_Pack[3322075][350011] = {}
	tJulyActionUp_Pack[3322075][350011]["LogId"] = 12001456
	tJulyActionUp_Pack[3322075][350011]["DeleteItem"] = {}
	tJulyActionUp_Pack[3322075][350011]["DeleteItem"][1] = {}
	tJulyActionUp_Pack[3322075][350011]["DeleteItem"][1]["Id"] = 3322075 -- 【库】BlessedAccessoryPack(G)[属性:9]
	tJulyActionUp_Pack[3322075][350011]["RewardItem"] = {}
	tJulyActionUp_Pack[3322075][350011]["RewardItem"][1] = {}
	tJulyActionUp_Pack[3322075][350011]["RewardItem"][1]["Id"] = 350011 -- 【库】Broom[属性:0], 【表格】Broom（赠）
	tJulyActionUp_Pack[3322075][350011]["RewardItem"][1]["Attr"] = "0 1 3 43200 1" -- 30天时效(激活)的Broom（赠）*1
	tJulyActionUp_Pack[3322075][350011]["RewardEffect"] = {}
	tJulyActionUp_Pack[3322075][350011]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyActionUp_Pack[3322075][350011]["RewardEffect"]["Effect"] = "angelwing"


	tJulyActionUp_Pack[3322075][350012] = {}
	-- ===武器外套可选包
	-- ===索引: tJulyActionUp_Pack[3322075][350012]
	-- ===删除:3322075,1
	-- ===
	tJulyActionUp_Pack[3322075][350012]["LogId"] = 12001456
	tJulyActionUp_Pack[3322075][350012]["DeleteItem"] = {}
	tJulyActionUp_Pack[3322075][350012]["DeleteItem"][1] = {}
	tJulyActionUp_Pack[3322075][350012]["DeleteItem"][1]["Id"] = 3322075 -- 【库】BlessedAccessoryPack(G)[属性:9]
	tJulyActionUp_Pack[3322075][350012]["RewardItem"] = {}
	tJulyActionUp_Pack[3322075][350012]["RewardItem"][1] = {}
	tJulyActionUp_Pack[3322075][350012]["RewardItem"][1]["Id"] = 350012 -- 【库】BlueGuitar[属性:0], 【表格】Blue~Guitar（赠）
	tJulyActionUp_Pack[3322075][350012]["RewardItem"][1]["Attr"] = "0 1 3 43200 1" -- 30天时效(激活)的BlueGuitar（赠）*1
	tJulyActionUp_Pack[3322075][350012]["RewardEffect"] = {}
	tJulyActionUp_Pack[3322075][350012]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyActionUp_Pack[3322075][350012]["RewardEffect"]["Effect"] = "angelwing"


	tJulyActionUp_Pack[3322075][350014] = {}
	-- ===武器外套可选包
	-- ===索引: tJulyActionUp_Pack[3322075][350014]
	-- ===删除:3322075,1
	-- ===
	tJulyActionUp_Pack[3322075][350014]["LogId"] = 12001456
	tJulyActionUp_Pack[3322075][350014]["DeleteItem"] = {}
	tJulyActionUp_Pack[3322075][350014]["DeleteItem"][1] = {}
	tJulyActionUp_Pack[3322075][350014]["DeleteItem"][1]["Id"] = 3322075 -- 【库】BlessedAccessoryPack(G)[属性:9]
	tJulyActionUp_Pack[3322075][350014]["RewardItem"] = {}
	tJulyActionUp_Pack[3322075][350014]["RewardItem"][1] = {}
	tJulyActionUp_Pack[3322075][350014]["RewardItem"][1]["Id"] = 350014 -- 【库】DragonBone[属性:0], 【表格】Dragon~Bone（赠）
	tJulyActionUp_Pack[3322075][350014]["RewardItem"][1]["Attr"] = "0 1 3 43200 1" -- 30天时效(激活)的DragonBone（赠）*1
	tJulyActionUp_Pack[3322075][350014]["RewardEffect"] = {}
	tJulyActionUp_Pack[3322075][350014]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyActionUp_Pack[3322075][350014]["RewardEffect"]["Effect"] = "angelwing"


	tJulyActionUp_Pack[3322075][350015] = {}
	-- ===武器外套可选包
	-- ===索引: tJulyActionUp_Pack[3322075][350015]
	-- ===删除:3322075,1
	-- ===
	tJulyActionUp_Pack[3322075][350015]["LogId"] = 12001456
	tJulyActionUp_Pack[3322075][350015]["DeleteItem"] = {}
	tJulyActionUp_Pack[3322075][350015]["DeleteItem"][1] = {}
	tJulyActionUp_Pack[3322075][350015]["DeleteItem"][1]["Id"] = 3322075 -- 【库】BlessedAccessoryPack(G)[属性:9]
	tJulyActionUp_Pack[3322075][350015]["RewardItem"] = {}
	tJulyActionUp_Pack[3322075][350015]["RewardItem"][1] = {}
	tJulyActionUp_Pack[3322075][350015]["RewardItem"][1]["Id"] = 350015 -- 【库】Oar[属性:0], 【表格】Oar（赠）
	tJulyActionUp_Pack[3322075][350015]["RewardItem"][1]["Attr"] = "0 1 3 43200 1" -- 30天时效(激活)的Oar（赠）*1
	tJulyActionUp_Pack[3322075][350015]["RewardEffect"] = {}
	tJulyActionUp_Pack[3322075][350015]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyActionUp_Pack[3322075][350015]["RewardEffect"]["Effect"] = "angelwing"


	tJulyActionUp_Pack[3322075][350016] = {}
	-- ===武器外套可选包
	-- ===索引: tJulyActionUp_Pack[3322075][350016]
	-- ===删除:3322075,1
	-- ===
	tJulyActionUp_Pack[3322075][350016]["LogId"] = 12001456
	tJulyActionUp_Pack[3322075][350016]["DeleteItem"] = {}
	tJulyActionUp_Pack[3322075][350016]["DeleteItem"][1] = {}
	tJulyActionUp_Pack[3322075][350016]["DeleteItem"][1]["Id"] = 3322075 -- 【库】BlessedAccessoryPack(G)[属性:9]
	tJulyActionUp_Pack[3322075][350016]["RewardItem"] = {}
	tJulyActionUp_Pack[3322075][350016]["RewardItem"][1] = {}
	tJulyActionUp_Pack[3322075][350016]["RewardItem"][1]["Id"] = 350016 -- 【库】Pipa[属性:0], 【表格】Pipa（赠）
	tJulyActionUp_Pack[3322075][350016]["RewardItem"][1]["Attr"] = "0 1 3 43200 1" -- 30天时效(激活)的Pipa（赠）*1
	tJulyActionUp_Pack[3322075][350016]["RewardEffect"] = {}
	tJulyActionUp_Pack[3322075][350016]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyActionUp_Pack[3322075][350016]["RewardEffect"]["Effect"] = "angelwing"


	tJulyActionUp_Pack[3322075][350017] = {}
	-- ===武器外套可选包
	-- ===索引: tJulyActionUp_Pack[3322075][350017]
	-- ===删除:3322075,1
	-- ===
	tJulyActionUp_Pack[3322075][350017]["LogId"] = 12001456
	tJulyActionUp_Pack[3322075][350017]["DeleteItem"] = {}
	tJulyActionUp_Pack[3322075][350017]["DeleteItem"][1] = {}
	tJulyActionUp_Pack[3322075][350017]["DeleteItem"][1]["Id"] = 3322075 -- 【库】BlessedAccessoryPack(G)[属性:9]
	tJulyActionUp_Pack[3322075][350017]["RewardItem"] = {}
	tJulyActionUp_Pack[3322075][350017]["RewardItem"][1] = {}
	tJulyActionUp_Pack[3322075][350017]["RewardItem"][1]["Id"] = 350017 -- 【库】PalmLeafFan[属性:0], 【表格】Palm~Leaf~Fan（赠）
	tJulyActionUp_Pack[3322075][350017]["RewardItem"][1]["Attr"] = "0 1 3 43200 1" -- 30天时效(激活)的PalmLeafFan（赠）*1
	tJulyActionUp_Pack[3322075][350017]["RewardEffect"] = {}
	tJulyActionUp_Pack[3322075][350017]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyActionUp_Pack[3322075][350017]["RewardEffect"]["Effect"] = "angelwing"


	tJulyActionUp_Pack[3322075][350018] = {}
	-- ===武器外套可选包
	-- ===索引: tJulyActionUp_Pack[3322075][350018]
	-- ===删除:3322075,1
	-- ===
	tJulyActionUp_Pack[3322075][350018]["LogId"] = 12001456
	tJulyActionUp_Pack[3322075][350018]["DeleteItem"] = {}
	tJulyActionUp_Pack[3322075][350018]["DeleteItem"][1] = {}
	tJulyActionUp_Pack[3322075][350018]["DeleteItem"][1]["Id"] = 3322075 -- 【库】BlessedAccessoryPack(G)[属性:9]
	tJulyActionUp_Pack[3322075][350018]["RewardItem"] = {}
	tJulyActionUp_Pack[3322075][350018]["RewardItem"][1] = {}
	tJulyActionUp_Pack[3322075][350018]["RewardItem"][1]["Id"] = 350018 -- 【库】IronShovel[属性:0], 【表格】Iron~Shovel（赠）
	tJulyActionUp_Pack[3322075][350018]["RewardItem"][1]["Attr"] = "0 1 3 43200 1" -- 30天时效(激活)的IronShovel（赠）*1
	tJulyActionUp_Pack[3322075][350018]["RewardEffect"] = {}
	tJulyActionUp_Pack[3322075][350018]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyActionUp_Pack[3322075][350018]["RewardEffect"]["Effect"] = "angelwing"


	tJulyActionUp_Pack[3322075][350019] = {}
	-- ===武器外套可选包
	-- ===索引: tJulyActionUp_Pack[3322075][350019]
	-- ===删除:3322075,1
	-- ===
	tJulyActionUp_Pack[3322075][350019]["LogId"] = 12001456
	tJulyActionUp_Pack[3322075][350019]["DeleteItem"] = {}
	tJulyActionUp_Pack[3322075][350019]["DeleteItem"][1] = {}
	tJulyActionUp_Pack[3322075][350019]["DeleteItem"][1]["Id"] = 3322075 -- 【库】BlessedAccessoryPack(G)[属性:9]
	tJulyActionUp_Pack[3322075][350019]["RewardItem"] = {}
	tJulyActionUp_Pack[3322075][350019]["RewardItem"][1] = {}
	tJulyActionUp_Pack[3322075][350019]["RewardItem"][1]["Id"] = 350019 -- 【库】FrozenTuna[属性:0], 【表格】Frozen~Tuna（赠）
	tJulyActionUp_Pack[3322075][350019]["RewardItem"][1]["Attr"] = "0 1 3 43200 1" -- 30天时效(激活)的FrozenTuna（赠）*1
	tJulyActionUp_Pack[3322075][350019]["RewardEffect"] = {}
	tJulyActionUp_Pack[3322075][350019]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyActionUp_Pack[3322075][350019]["RewardEffect"]["Effect"] = "angelwing"


	tJulyActionUp_Pack[3322075][350020] = {}
	-- ===武器外套可选包
	-- ===索引: tJulyActionUp_Pack[3322075][350020]
	-- ===删除:3322075,1
	-- ===
	tJulyActionUp_Pack[3322075][350020]["LogId"] = 12001456
	tJulyActionUp_Pack[3322075][350020]["DeleteItem"] = {}
	tJulyActionUp_Pack[3322075][350020]["DeleteItem"][1] = {}
	tJulyActionUp_Pack[3322075][350020]["DeleteItem"][1]["Id"] = 3322075 -- 【库】BlessedAccessoryPack(G)[属性:9]
	tJulyActionUp_Pack[3322075][350020]["RewardItem"] = {}
	tJulyActionUp_Pack[3322075][350020]["RewardItem"][1] = {}
	tJulyActionUp_Pack[3322075][350020]["RewardItem"][1]["Id"] = 350020 -- 【库】IceStick[属性:0], 【表格】Ice~Stick（赠）
	tJulyActionUp_Pack[3322075][350020]["RewardItem"][1]["Attr"] = "0 1 3 43200 1" -- 30天时效(激活)的IceStick（赠）*1
	tJulyActionUp_Pack[3322075][350020]["RewardEffect"] = {}
	tJulyActionUp_Pack[3322075][350020]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyActionUp_Pack[3322075][350020]["RewardEffect"]["Effect"] = "angelwing"


	tJulyActionUp_Pack[3322075][360021] = {}
	-- ===武器外套可选包
	-- ===索引: tJulyActionUp_Pack[3322075][360021]
	-- ===删除:3322075,1
	-- ===
	tJulyActionUp_Pack[3322075][360021]["LogId"] = 12001456
	tJulyActionUp_Pack[3322075][360021]["DeleteItem"] = {}
	tJulyActionUp_Pack[3322075][360021]["DeleteItem"][1] = {}
	tJulyActionUp_Pack[3322075][360021]["DeleteItem"][1]["Id"] = 3322075 -- 【库】BlessedAccessoryPack(G)[属性:9]
	tJulyActionUp_Pack[3322075][360021]["RewardItem"] = {}
	tJulyActionUp_Pack[3322075][360021]["RewardItem"][1] = {}
	tJulyActionUp_Pack[3322075][360021]["RewardItem"][1]["Id"] = 360021 -- 【库】Wrench[属性:0], 【表格】Wrench（赠）
	tJulyActionUp_Pack[3322075][360021]["RewardItem"][1]["Attr"] = "0 1 3 43200 1" -- 30天时效(激活)的Wrench（赠）*1
	tJulyActionUp_Pack[3322075][360021]["RewardEffect"] = {}
	tJulyActionUp_Pack[3322075][360021]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyActionUp_Pack[3322075][360021]["RewardEffect"]["Effect"] = "angelwing"


	tJulyActionUp_Pack[3322075][360022] = {}
	-- ===武器外套可选包
	-- ===索引: tJulyActionUp_Pack[3322075][360022]
	-- ===删除:3322075,1
	-- ===
	tJulyActionUp_Pack[3322075][360022]["LogId"] = 12001456
	tJulyActionUp_Pack[3322075][360022]["DeleteItem"] = {}
	tJulyActionUp_Pack[3322075][360022]["DeleteItem"][1] = {}
	tJulyActionUp_Pack[3322075][360022]["DeleteItem"][1]["Id"] = 3322075 -- 【库】BlessedAccessoryPack(G)[属性:9]
	tJulyActionUp_Pack[3322075][360022]["RewardItem"] = {}
	tJulyActionUp_Pack[3322075][360022]["RewardItem"][1] = {}
	tJulyActionUp_Pack[3322075][360022]["RewardItem"][1]["Id"] = 360022 -- 【库】WoodenClub[属性:0], 【表格】Wooden~Club（赠）
	tJulyActionUp_Pack[3322075][360022]["RewardItem"][1]["Attr"] = "0 1 3 43200 1" -- 30天时效(激活)的WoodenClub（赠）*1
	tJulyActionUp_Pack[3322075][360022]["RewardEffect"] = {}
	tJulyActionUp_Pack[3322075][360022]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyActionUp_Pack[3322075][360022]["RewardEffect"]["Effect"] = "angelwing"


	tJulyActionUp_Pack[3322075][360023] = {}
	-- ===武器外套可选包
	-- ===索引: tJulyActionUp_Pack[3322075][360023]
	-- ===删除:3322075,1
	-- ===
	tJulyActionUp_Pack[3322075][360023]["LogId"] = 12001456
	tJulyActionUp_Pack[3322075][360023]["DeleteItem"] = {}
	tJulyActionUp_Pack[3322075][360023]["DeleteItem"][1] = {}
	tJulyActionUp_Pack[3322075][360023]["DeleteItem"][1]["Id"] = 3322075 -- 【库】BlessedAccessoryPack(G)[属性:9]
	tJulyActionUp_Pack[3322075][360023]["RewardItem"] = {}
	tJulyActionUp_Pack[3322075][360023]["RewardItem"][1] = {}
	tJulyActionUp_Pack[3322075][360023]["RewardItem"][1]["Id"] = 360023 -- 【库】Umbrella[属性:0], 【表格】Umbrella（赠）
	tJulyActionUp_Pack[3322075][360023]["RewardItem"][1]["Attr"] = "0 1 3 43200 1" -- 30天时效(激活)的Umbrella（赠）*1
	tJulyActionUp_Pack[3322075][360023]["RewardEffect"] = {}
	tJulyActionUp_Pack[3322075][360023]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyActionUp_Pack[3322075][360023]["RewardEffect"]["Effect"] = "angelwing"


	tJulyActionUp_Pack[3322075][360024] = {}
	-- ===武器外套可选包
	-- ===索引: tJulyActionUp_Pack[3322075][360024]
	-- ===删除:3322075,1
	-- ===
	tJulyActionUp_Pack[3322075][360024]["LogId"] = 12001456
	tJulyActionUp_Pack[3322075][360024]["DeleteItem"] = {}
	tJulyActionUp_Pack[3322075][360024]["DeleteItem"][1] = {}
	tJulyActionUp_Pack[3322075][360024]["DeleteItem"][1]["Id"] = 3322075 -- 【库】BlessedAccessoryPack(G)[属性:9]
	tJulyActionUp_Pack[3322075][360024]["RewardItem"] = {}
	tJulyActionUp_Pack[3322075][360024]["RewardItem"][1] = {}
	tJulyActionUp_Pack[3322075][360024]["RewardItem"][1]["Id"] = 360024 -- 【库】Blowfish[属性:0], 【表格】Blowfish（赠）
	tJulyActionUp_Pack[3322075][360024]["RewardItem"][1]["Attr"] = "0 1 3 43200 1" -- 30天时效(激活)的Blowfish（赠）*1
	tJulyActionUp_Pack[3322075][360024]["RewardEffect"] = {}
	tJulyActionUp_Pack[3322075][360024]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyActionUp_Pack[3322075][360024]["RewardEffect"]["Effect"] = "angelwing"


	tJulyActionUp_Pack[3322075][360025] = {}
	-- ===武器外套可选包
	-- ===索引: tJulyActionUp_Pack[3322075][360025]
	-- ===删除:3322075,1
	-- ===
	tJulyActionUp_Pack[3322075][360025]["LogId"] = 12001456
	tJulyActionUp_Pack[3322075][360025]["DeleteItem"] = {}
	tJulyActionUp_Pack[3322075][360025]["DeleteItem"][1] = {}
	tJulyActionUp_Pack[3322075][360025]["DeleteItem"][1]["Id"] = 3322075 -- 【库】BlessedAccessoryPack(G)[属性:9]
	tJulyActionUp_Pack[3322075][360025]["RewardItem"] = {}
	tJulyActionUp_Pack[3322075][360025]["RewardItem"][1] = {}
	tJulyActionUp_Pack[3322075][360025]["RewardItem"][1]["Id"] = 360025 -- 【库】FeatherDuster[属性:0], 【表格】Feather~Duster（赠）
	tJulyActionUp_Pack[3322075][360025]["RewardItem"][1]["Attr"] = "0 1 3 43200 1" -- 30天时效(激活)的FeatherDuster（赠）*1
	tJulyActionUp_Pack[3322075][360025]["RewardEffect"] = {}
	tJulyActionUp_Pack[3322075][360025]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyActionUp_Pack[3322075][360025]["RewardEffect"]["Effect"] = "angelwing"


	tJulyActionUp_Pack[3322075][360026] = {}
	-- ===武器外套可选包
	-- ===索引: tJulyActionUp_Pack[3322075][360026]
	-- ===删除:3322075,1
	-- ===
	tJulyActionUp_Pack[3322075][360026]["LogId"] = 12001456
	tJulyActionUp_Pack[3322075][360026]["DeleteItem"] = {}
	tJulyActionUp_Pack[3322075][360026]["DeleteItem"][1] = {}
	tJulyActionUp_Pack[3322075][360026]["DeleteItem"][1]["Id"] = 3322075 -- 【库】BlessedAccessoryPack(G)[属性:9]
	tJulyActionUp_Pack[3322075][360026]["RewardItem"] = {}
	tJulyActionUp_Pack[3322075][360026]["RewardItem"][1] = {}
	tJulyActionUp_Pack[3322075][360026]["RewardItem"][1]["Id"] = 360026 -- 【库】Spatula[属性:0], 【表格】Spatula（赠）
	tJulyActionUp_Pack[3322075][360026]["RewardItem"][1]["Attr"] = "0 1 3 43200 1" -- 30天时效(激活)的Spatula（赠）*1
	tJulyActionUp_Pack[3322075][360026]["RewardEffect"] = {}
	tJulyActionUp_Pack[3322075][360026]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyActionUp_Pack[3322075][360026]["RewardEffect"]["Effect"] = "angelwing"


	tJulyActionUp_Pack[3322075][360027] = {}
	-- ===武器外套可选包
	-- ===索引: tJulyActionUp_Pack[3322075][360027]
	-- ===删除:3322075,1
	-- ===
	tJulyActionUp_Pack[3322075][360027]["LogId"] = 12001456
	tJulyActionUp_Pack[3322075][360027]["DeleteItem"] = {}
	tJulyActionUp_Pack[3322075][360027]["DeleteItem"][1] = {}
	tJulyActionUp_Pack[3322075][360027]["DeleteItem"][1]["Id"] = 3322075 -- 【库】BlessedAccessoryPack(G)[属性:9]
	tJulyActionUp_Pack[3322075][360027]["RewardItem"] = {}
	tJulyActionUp_Pack[3322075][360027]["RewardItem"][1] = {}
	tJulyActionUp_Pack[3322075][360027]["RewardItem"][1]["Id"] = 360027 -- 【库】InvincibleFist[属性:0], 【表格】Invincible~Fist（赠）
	tJulyActionUp_Pack[3322075][360027]["RewardItem"][1]["Attr"] = "0 1 3 43200 1" -- 30天时效(激活)的InvincibleFist（赠）*1
	tJulyActionUp_Pack[3322075][360027]["RewardEffect"] = {}
	tJulyActionUp_Pack[3322075][360027]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyActionUp_Pack[3322075][360027]["RewardEffect"]["Effect"] = "angelwing"


	tJulyActionUp_Pack[3322075][360028] = {}
	-- ===武器外套可选包
	-- ===索引: tJulyActionUp_Pack[3322075][360028]
	-- ===删除:3322075,1
	-- ===
	tJulyActionUp_Pack[3322075][360028]["LogId"] = 12001456
	tJulyActionUp_Pack[3322075][360028]["DeleteItem"] = {}
	tJulyActionUp_Pack[3322075][360028]["DeleteItem"][1] = {}
	tJulyActionUp_Pack[3322075][360028]["DeleteItem"][1]["Id"] = 3322075 -- 【库】BlessedAccessoryPack(G)[属性:9]
	tJulyActionUp_Pack[3322075][360028]["RewardItem"] = {}
	tJulyActionUp_Pack[3322075][360028]["RewardItem"][1] = {}
	tJulyActionUp_Pack[3322075][360028]["RewardItem"][1]["Id"] = 360028 -- 【库】FishPole[属性:0], 【表格】Fish~Pole（赠）
	tJulyActionUp_Pack[3322075][360028]["RewardItem"][1]["Attr"] = "0 1 3 43200 1" -- 30天时效(激活)的FishPole（赠）*1
	tJulyActionUp_Pack[3322075][360028]["RewardEffect"] = {}
	tJulyActionUp_Pack[3322075][360028]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyActionUp_Pack[3322075][360028]["RewardEffect"]["Effect"] = "angelwing"


	tJulyActionUp_Pack[3322075][360029] = {}
	-- ===武器外套可选包
	-- ===索引: tJulyActionUp_Pack[3322075][360029]
	-- ===删除:3322075,1
	-- ===
	tJulyActionUp_Pack[3322075][360029]["LogId"] = 12001456
	tJulyActionUp_Pack[3322075][360029]["DeleteItem"] = {}
	tJulyActionUp_Pack[3322075][360029]["DeleteItem"][1] = {}
	tJulyActionUp_Pack[3322075][360029]["DeleteItem"][1]["Id"] = 3322075 -- 【库】BlessedAccessoryPack(G)[属性:9]
	tJulyActionUp_Pack[3322075][360029]["RewardItem"] = {}
	tJulyActionUp_Pack[3322075][360029]["RewardItem"][1] = {}
	tJulyActionUp_Pack[3322075][360029]["RewardItem"][1]["Id"] = 360029 -- 【库】Pan[属性:0], 【表格】Pan（赠）
	tJulyActionUp_Pack[3322075][360029]["RewardItem"][1]["Attr"] = "0 1 3 43200 1" -- 30天时效(激活)的Pan（赠）*1
	tJulyActionUp_Pack[3322075][360029]["RewardEffect"] = {}
	tJulyActionUp_Pack[3322075][360029]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyActionUp_Pack[3322075][360029]["RewardEffect"]["Effect"] = "angelwing"


	tJulyActionUp_Pack[3322075][360030] = {}
	-- ===武器外套可选包
	-- ===索引: tJulyActionUp_Pack[3322075][360030]
	-- ===删除:3322075,1
	-- ===
	tJulyActionUp_Pack[3322075][360030]["LogId"] = 12001456
	tJulyActionUp_Pack[3322075][360030]["DeleteItem"] = {}
	tJulyActionUp_Pack[3322075][360030]["DeleteItem"][1] = {}
	tJulyActionUp_Pack[3322075][360030]["DeleteItem"][1]["Id"] = 3322075 -- 【库】BlessedAccessoryPack(G)[属性:9]
	tJulyActionUp_Pack[3322075][360030]["RewardItem"] = {}
	tJulyActionUp_Pack[3322075][360030]["RewardItem"][1] = {}
	tJulyActionUp_Pack[3322075][360030]["RewardItem"][1]["Id"] = 360030 -- 【库】Handbag[属性:0], 【表格】Handbag（赠）
	tJulyActionUp_Pack[3322075][360030]["RewardItem"][1]["Attr"] = "0 1 3 43200 1" -- 30天时效(激活)的Handbag（赠）*1
	tJulyActionUp_Pack[3322075][360030]["RewardEffect"] = {}
	tJulyActionUp_Pack[3322075][360030]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyActionUp_Pack[3322075][360030]["RewardEffect"]["Effect"] = "angelwing"


	tJulyActionUp_Pack[3322075][360031] = {}
	-- ===武器外套可选包
	-- ===索引: tJulyActionUp_Pack[3322075][360031]
	-- ===删除:3322075,1
	-- ===
	tJulyActionUp_Pack[3322075][360031]["LogId"] = 12001456
	tJulyActionUp_Pack[3322075][360031]["DeleteItem"] = {}
	tJulyActionUp_Pack[3322075][360031]["DeleteItem"][1] = {}
	tJulyActionUp_Pack[3322075][360031]["DeleteItem"][1]["Id"] = 3322075 -- 【库】BlessedAccessoryPack(G)[属性:9]
	tJulyActionUp_Pack[3322075][360031]["RewardItem"] = {}
	tJulyActionUp_Pack[3322075][360031]["RewardItem"][1] = {}
	tJulyActionUp_Pack[3322075][360031]["RewardItem"][1]["Id"] = 360031 -- 【库】Backpack[属性:0], 【表格】Backpack（赠）
	tJulyActionUp_Pack[3322075][360031]["RewardItem"][1]["Attr"] = "0 1 3 43200 1" -- 30天时效(激活)的Backpack（赠）*1
	tJulyActionUp_Pack[3322075][360031]["RewardEffect"] = {}
	tJulyActionUp_Pack[3322075][360031]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyActionUp_Pack[3322075][360031]["RewardEffect"]["Effect"] = "angelwing"


	tJulyActionUp_Pack[3322075][360032] = {}
	-- ===武器外套可选包
	-- ===索引: tJulyActionUp_Pack[3322075][360032]
	-- ===删除:3322075,1
	-- ===
	tJulyActionUp_Pack[3322075][360032]["LogId"] = 12001456
	tJulyActionUp_Pack[3322075][360032]["DeleteItem"] = {}
	tJulyActionUp_Pack[3322075][360032]["DeleteItem"][1] = {}
	tJulyActionUp_Pack[3322075][360032]["DeleteItem"][1]["Id"] = 3322075 -- 【库】BlessedAccessoryPack(G)[属性:9]
	tJulyActionUp_Pack[3322075][360032]["RewardItem"] = {}
	tJulyActionUp_Pack[3322075][360032]["RewardItem"][1] = {}
	tJulyActionUp_Pack[3322075][360032]["RewardItem"][1]["Id"] = 360032 -- 【库】SportsBag[属性:0], 【表格】Sports~Bag（赠）
	tJulyActionUp_Pack[3322075][360032]["RewardItem"][1]["Attr"] = "0 1 3 43200 1" -- 30天时效(激活)的SportsBag（赠）*1
	tJulyActionUp_Pack[3322075][360032]["RewardEffect"] = {}
	tJulyActionUp_Pack[3322075][360032]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyActionUp_Pack[3322075][360032]["RewardEffect"]["Effect"] = "angelwing"


	tJulyActionUp_Pack[3322075][360033] = {}
	-- ===武器外套可选包
	-- ===索引: tJulyActionUp_Pack[3322075][360033]
	-- ===删除:3322075,1
	-- ===
	tJulyActionUp_Pack[3322075][360033]["LogId"] = 12001456
	tJulyActionUp_Pack[3322075][360033]["DeleteItem"] = {}
	tJulyActionUp_Pack[3322075][360033]["DeleteItem"][1] = {}
	tJulyActionUp_Pack[3322075][360033]["DeleteItem"][1]["Id"] = 3322075 -- 【库】BlessedAccessoryPack(G)[属性:9]
	tJulyActionUp_Pack[3322075][360033]["RewardItem"] = {}
	tJulyActionUp_Pack[3322075][360033]["RewardItem"][1] = {}
	tJulyActionUp_Pack[3322075][360033]["RewardItem"][1]["Id"] = 360033 -- 【库】Bunny[属性:0], 【表格】Bunny（赠）
	tJulyActionUp_Pack[3322075][360033]["RewardItem"][1]["Attr"] = "0 1 3 43200 1" -- 30天时效(激活)的Bunny（赠）*1
	tJulyActionUp_Pack[3322075][360033]["RewardEffect"] = {}
	tJulyActionUp_Pack[3322075][360033]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyActionUp_Pack[3322075][360033]["RewardEffect"]["Effect"] = "angelwing"


	tJulyActionUp_Pack[3322075][360034] = {}
	-- ===武器外套可选包
	-- ===索引: tJulyActionUp_Pack[3322075][360034]
	-- ===删除:3322075,1
	-- ===
	tJulyActionUp_Pack[3322075][360034]["LogId"] = 12001456
	tJulyActionUp_Pack[3322075][360034]["DeleteItem"] = {}
	tJulyActionUp_Pack[3322075][360034]["DeleteItem"][1] = {}
	tJulyActionUp_Pack[3322075][360034]["DeleteItem"][1]["Id"] = 3322075 -- 【库】BlessedAccessoryPack(G)[属性:9]
	tJulyActionUp_Pack[3322075][360034]["RewardItem"] = {}
	tJulyActionUp_Pack[3322075][360034]["RewardItem"][1] = {}
	tJulyActionUp_Pack[3322075][360034]["RewardItem"][1]["Id"] = 360034 -- 【库】GoodEveningBear[属性:0], 【表格】Good~Evening~Bear（赠）
	tJulyActionUp_Pack[3322075][360034]["RewardItem"][1]["Attr"] = "0 1 3 43200 1" -- 30天时效(激活)的GoodEveningBear（赠）*1
	tJulyActionUp_Pack[3322075][360034]["RewardEffect"] = {}
	tJulyActionUp_Pack[3322075][360034]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyActionUp_Pack[3322075][360034]["RewardEffect"]["Effect"] = "angelwing"


	tJulyActionUp_Pack[3322075][360035] = {}
	-- ===武器外套可选包
	-- ===索引: tJulyActionUp_Pack[3322075][360035]
	-- ===删除:3322075,1
	-- ===
	tJulyActionUp_Pack[3322075][360035]["LogId"] = 12001456
	tJulyActionUp_Pack[3322075][360035]["DeleteItem"] = {}
	tJulyActionUp_Pack[3322075][360035]["DeleteItem"][1] = {}
	tJulyActionUp_Pack[3322075][360035]["DeleteItem"][1]["Id"] = 3322075 -- 【库】BlessedAccessoryPack(G)[属性:9]
	tJulyActionUp_Pack[3322075][360035]["RewardItem"] = {}
	tJulyActionUp_Pack[3322075][360035]["RewardItem"][1] = {}
	tJulyActionUp_Pack[3322075][360035]["RewardItem"][1]["Id"] = 360035 -- 【库】Rod[属性:0], 【表格】Rod（赠）
	tJulyActionUp_Pack[3322075][360035]["RewardItem"][1]["Attr"] = "0 1 3 43200 1" -- 30天时效(激活)的Rod（赠）*1
	tJulyActionUp_Pack[3322075][360035]["RewardEffect"] = {}
	tJulyActionUp_Pack[3322075][360035]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyActionUp_Pack[3322075][360035]["RewardEffect"]["Effect"] = "angelwing"


	tJulyActionUp_Pack[3322075][360036] = {}
	-- ===武器外套可选包
	-- ===索引: tJulyActionUp_Pack[3322075][360036]
	-- ===删除:3322075,1
	-- ===
	tJulyActionUp_Pack[3322075][360036]["LogId"] = 12001456
	tJulyActionUp_Pack[3322075][360036]["DeleteItem"] = {}
	tJulyActionUp_Pack[3322075][360036]["DeleteItem"][1] = {}
	tJulyActionUp_Pack[3322075][360036]["DeleteItem"][1]["Id"] = 3322075 -- 【库】BlessedAccessoryPack(G)[属性:9]
	tJulyActionUp_Pack[3322075][360036]["RewardItem"] = {}
	tJulyActionUp_Pack[3322075][360036]["RewardItem"][1] = {}
	tJulyActionUp_Pack[3322075][360036]["RewardItem"][1]["Id"] = 360036 -- 【库】Clap[属性:0], 【表格】Clap（赠）
	tJulyActionUp_Pack[3322075][360036]["RewardItem"][1]["Attr"] = "0 1 3 43200 1" -- 30天时效(激活)的Clap（赠）*1
	tJulyActionUp_Pack[3322075][360036]["RewardEffect"] = {}
	tJulyActionUp_Pack[3322075][360036]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyActionUp_Pack[3322075][360036]["RewardEffect"]["Effect"] = "angelwing"


	tJulyActionUp_Pack[3322075][360037] = {}
	-- ===武器外套可选包
	-- ===索引: tJulyActionUp_Pack[3322075][360037]
	-- ===删除:3322075,1
	-- ===
	tJulyActionUp_Pack[3322075][360037]["LogId"] = 12001456
	tJulyActionUp_Pack[3322075][360037]["DeleteItem"] = {}
	tJulyActionUp_Pack[3322075][360037]["DeleteItem"][1] = {}
	tJulyActionUp_Pack[3322075][360037]["DeleteItem"][1]["Id"] = 3322075 -- 【库】BlessedAccessoryPack(G)[属性:9]
	tJulyActionUp_Pack[3322075][360037]["RewardItem"] = {}
	tJulyActionUp_Pack[3322075][360037]["RewardItem"][1] = {}
	tJulyActionUp_Pack[3322075][360037]["RewardItem"][1]["Id"] = 360037 -- 【库】HeavyHammer[属性:0], 【表格】Heavy~Hammer（赠）
	tJulyActionUp_Pack[3322075][360037]["RewardItem"][1]["Attr"] = "0 1 3 43200 1" -- 30天时效(激活)的HeavyHammer（赠）*1
	tJulyActionUp_Pack[3322075][360037]["RewardEffect"] = {}
	tJulyActionUp_Pack[3322075][360037]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyActionUp_Pack[3322075][360037]["RewardEffect"]["Effect"] = "angelwing"


	tJulyActionUp_Pack[3322075][360038] = {}
	-- ===武器外套可选包
	-- ===索引: tJulyActionUp_Pack[3322075][360038]
	-- ===删除:3322075,1
	-- ===
	tJulyActionUp_Pack[3322075][360038]["LogId"] = 12001456
	tJulyActionUp_Pack[3322075][360038]["DeleteItem"] = {}
	tJulyActionUp_Pack[3322075][360038]["DeleteItem"][1] = {}
	tJulyActionUp_Pack[3322075][360038]["DeleteItem"][1]["Id"] = 3322075 -- 【库】BlessedAccessoryPack(G)[属性:9]
	tJulyActionUp_Pack[3322075][360038]["RewardItem"] = {}
	tJulyActionUp_Pack[3322075][360038]["RewardItem"][1] = {}
	tJulyActionUp_Pack[3322075][360038]["RewardItem"][1]["Id"] = 360038 -- 【库】LightSaber[属性:0], 【表格】Light~Saber（赠）
	tJulyActionUp_Pack[3322075][360038]["RewardItem"][1]["Attr"] = "0 1 3 43200 1" -- 30天时效(激活)的LightSaber（赠）*1
	tJulyActionUp_Pack[3322075][360038]["RewardEffect"] = {}
	tJulyActionUp_Pack[3322075][360038]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyActionUp_Pack[3322075][360038]["RewardEffect"]["Effect"] = "angelwing"


	tJulyActionUp_Pack[3322075][360039] = {}
	-- ===武器外套可选包
	-- ===索引: tJulyActionUp_Pack[3322075][360039]
	-- ===删除:3322075,1
	-- ===
	tJulyActionUp_Pack[3322075][360039]["LogId"] = 12001456
	tJulyActionUp_Pack[3322075][360039]["DeleteItem"] = {}
	tJulyActionUp_Pack[3322075][360039]["DeleteItem"][1] = {}
	tJulyActionUp_Pack[3322075][360039]["DeleteItem"][1]["Id"] = 3322075 -- 【库】BlessedAccessoryPack(G)[属性:9]
	tJulyActionUp_Pack[3322075][360039]["RewardItem"] = {}
	tJulyActionUp_Pack[3322075][360039]["RewardItem"][1] = {}
	tJulyActionUp_Pack[3322075][360039]["RewardItem"][1]["Id"] = 360039 -- 【库】TennisRacket[属性:0], 【表格】Tennis~Racket（赠）
	tJulyActionUp_Pack[3322075][360039]["RewardItem"][1]["Attr"] = "0 1 3 43200 1" -- 30天时效(激活)的TennisRacket（赠）*1
	tJulyActionUp_Pack[3322075][360039]["RewardEffect"] = {}
	tJulyActionUp_Pack[3322075][360039]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyActionUp_Pack[3322075][360039]["RewardEffect"]["Effect"] = "angelwing"


	tJulyActionUp_Pack[3322075][360040] = {}
	-- ===武器外套可选包
	-- ===索引: tJulyActionUp_Pack[3322075][360040]
	-- ===删除:3322075,1
	-- ===
	tJulyActionUp_Pack[3322075][360040]["LogId"] = 12001456
	tJulyActionUp_Pack[3322075][360040]["DeleteItem"] = {}
	tJulyActionUp_Pack[3322075][360040]["DeleteItem"][1] = {}
	tJulyActionUp_Pack[3322075][360040]["DeleteItem"][1]["Id"] = 3322075 -- 【库】BlessedAccessoryPack(G)[属性:9]
	tJulyActionUp_Pack[3322075][360040]["RewardItem"] = {}
	tJulyActionUp_Pack[3322075][360040]["RewardItem"][1] = {}
	tJulyActionUp_Pack[3322075][360040]["RewardItem"][1]["Id"] = 360040 -- 【库】ApeCityHam[属性:0], 【表格】Ape~City~Ham（赠）
	tJulyActionUp_Pack[3322075][360040]["RewardItem"][1]["Attr"] = "0 1 3 43200 1" -- 30天时效(激活)的ApeCityHam（赠）*1
	tJulyActionUp_Pack[3322075][360040]["RewardEffect"] = {}
	tJulyActionUp_Pack[3322075][360040]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyActionUp_Pack[3322075][360040]["RewardEffect"]["Effect"] = "angelwing"


	tJulyActionUp_Pack[3322075][370011] = {}
	-- ===武器外套可选包
	-- ===索引: tJulyActionUp_Pack[3322075][370011]
	-- ===删除:3322075,1
	-- ===
	tJulyActionUp_Pack[3322075][370011]["LogId"] = 12001456
	tJulyActionUp_Pack[3322075][370011]["DeleteItem"] = {}
	tJulyActionUp_Pack[3322075][370011]["DeleteItem"][1] = {}
	tJulyActionUp_Pack[3322075][370011]["DeleteItem"][1]["Id"] = 3322075 -- 【库】BlessedAccessoryPack(G)[属性:9]
	tJulyActionUp_Pack[3322075][370011]["RewardItem"] = {}
	tJulyActionUp_Pack[3322075][370011]["RewardItem"][1] = {}
	tJulyActionUp_Pack[3322075][370011]["RewardItem"][1]["Id"] = 370011 -- 【库】WoodenBow[属性:0], 【表格】Wooden~Bow（赠）
	tJulyActionUp_Pack[3322075][370011]["RewardItem"][1]["Attr"] = "0 1 3 43200 1" -- 30天时效(激活)的WoodenBow（赠）*1
	tJulyActionUp_Pack[3322075][370011]["RewardEffect"] = {}
	tJulyActionUp_Pack[3322075][370011]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyActionUp_Pack[3322075][370011]["RewardEffect"]["Effect"] = "angelwing"


	tJulyActionUp_Pack[3322075][370012] = {}
	-- ===武器外套可选包
	-- ===索引: tJulyActionUp_Pack[3322075][370012]
	-- ===删除:3322075,1
	-- ===
	tJulyActionUp_Pack[3322075][370012]["LogId"] = 12001456
	tJulyActionUp_Pack[3322075][370012]["DeleteItem"] = {}
	tJulyActionUp_Pack[3322075][370012]["DeleteItem"][1] = {}
	tJulyActionUp_Pack[3322075][370012]["DeleteItem"][1]["Id"] = 3322075 -- 【库】BlessedAccessoryPack(G)[属性:9]
	tJulyActionUp_Pack[3322075][370012]["RewardItem"] = {}
	tJulyActionUp_Pack[3322075][370012]["RewardItem"][1] = {}
	tJulyActionUp_Pack[3322075][370012]["RewardItem"][1]["Id"] = 370012 -- 【库】LoveBow[属性:0], 【表格】Love~Bow（赠）
	tJulyActionUp_Pack[3322075][370012]["RewardItem"][1]["Attr"] = "0 1 3 43200 1" -- 30天时效(激活)的LoveBow（赠）*1
	tJulyActionUp_Pack[3322075][370012]["RewardEffect"] = {}
	tJulyActionUp_Pack[3322075][370012]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyActionUp_Pack[3322075][370012]["RewardEffect"]["Effect"] = "angelwing"


	tJulyActionUp_Pack[3322075][370013] = {}
	-- ===武器外套可选包
	-- ===索引: tJulyActionUp_Pack[3322075][370013]
	-- ===删除:3322075,1
	-- ===
	tJulyActionUp_Pack[3322075][370013]["LogId"] = 12001456
	tJulyActionUp_Pack[3322075][370013]["DeleteItem"] = {}
	tJulyActionUp_Pack[3322075][370013]["DeleteItem"][1] = {}
	tJulyActionUp_Pack[3322075][370013]["DeleteItem"][1]["Id"] = 3322075 -- 【库】BlessedAccessoryPack(G)[属性:9]
	tJulyActionUp_Pack[3322075][370013]["RewardItem"] = {}
	tJulyActionUp_Pack[3322075][370013]["RewardItem"][1] = {}
	tJulyActionUp_Pack[3322075][370013]["RewardItem"][1]["Id"] = 370013 -- 【库】SeaHorse[属性:0], 【表格】Sea~Horse（赠）
	tJulyActionUp_Pack[3322075][370013]["RewardItem"][1]["Attr"] = "0 1 3 43200 1" -- 30天时效(激活)的SeaHorse（赠）*1
	tJulyActionUp_Pack[3322075][370013]["RewardEffect"] = {}
	tJulyActionUp_Pack[3322075][370013]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyActionUp_Pack[3322075][370013]["RewardEffect"]["Effect"] = "angelwing"


	tJulyActionUp_Pack[3322075][370014] = {}
	-- ===武器外套可选包
	-- ===索引: tJulyActionUp_Pack[3322075][370014]
	-- ===删除:3322075,1
	-- ===
	tJulyActionUp_Pack[3322075][370014]["LogId"] = 12001456
	tJulyActionUp_Pack[3322075][370014]["DeleteItem"] = {}
	tJulyActionUp_Pack[3322075][370014]["DeleteItem"][1] = {}
	tJulyActionUp_Pack[3322075][370014]["DeleteItem"][1]["Id"] = 3322075 -- 【库】BlessedAccessoryPack(G)[属性:9]
	tJulyActionUp_Pack[3322075][370014]["RewardItem"] = {}
	tJulyActionUp_Pack[3322075][370014]["RewardItem"][1] = {}
	tJulyActionUp_Pack[3322075][370014]["RewardItem"][1]["Id"] = 370014 -- 【库】Harp[属性:0], 【表格】Harp（赠）
	tJulyActionUp_Pack[3322075][370014]["RewardItem"][1]["Attr"] = "0 1 3 43200 1" -- 30天时效(激活)的Harp（赠）*1
	tJulyActionUp_Pack[3322075][370014]["RewardEffect"] = {}
	tJulyActionUp_Pack[3322075][370014]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyActionUp_Pack[3322075][370014]["RewardEffect"]["Effect"] = "angelwing"


	tJulyActionUp_Pack[3322075][370015] = {}
	-- ===武器外套可选包
	-- ===索引: tJulyActionUp_Pack[3322075][370015]
	-- ===删除:3322075,1
	-- ===
	tJulyActionUp_Pack[3322075][370015]["LogId"] = 12001456
	tJulyActionUp_Pack[3322075][370015]["DeleteItem"] = {}
	tJulyActionUp_Pack[3322075][370015]["DeleteItem"][1] = {}
	tJulyActionUp_Pack[3322075][370015]["DeleteItem"][1]["Id"] = 3322075 -- 【库】BlessedAccessoryPack(G)[属性:9]
	tJulyActionUp_Pack[3322075][370015]["RewardItem"] = {}
	tJulyActionUp_Pack[3322075][370015]["RewardItem"][1] = {}
	tJulyActionUp_Pack[3322075][370015]["RewardItem"][1]["Id"] = 370015 -- 【库】ForceBow[属性:0], 【表格】Force~Bow（赠）
	tJulyActionUp_Pack[3322075][370015]["RewardItem"][1]["Attr"] = "0 1 3 43200 1" -- 30天时效(激活)的ForceBow（赠）*1
	tJulyActionUp_Pack[3322075][370015]["RewardEffect"] = {}
	tJulyActionUp_Pack[3322075][370015]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyActionUp_Pack[3322075][370015]["RewardEffect"]["Effect"] = "angelwing"


	tJulyActionUp_Pack[3322075][380011] = {}
	-- ===武器外套可选包
	-- ===索引: tJulyActionUp_Pack[3322075][380011]
	-- ===删除:3322075,1
	-- ===
	tJulyActionUp_Pack[3322075][380011]["LogId"] = 12001456
	tJulyActionUp_Pack[3322075][380011]["DeleteItem"] = {}
	tJulyActionUp_Pack[3322075][380011]["DeleteItem"][1] = {}
	tJulyActionUp_Pack[3322075][380011]["DeleteItem"][1]["Id"] = 3322075 -- 【库】BlessedAccessoryPack(G)[属性:9]
	tJulyActionUp_Pack[3322075][380011]["RewardItem"] = {}
	tJulyActionUp_Pack[3322075][380011]["RewardItem"][1] = {}
	tJulyActionUp_Pack[3322075][380011]["RewardItem"][1]["Id"] = 380011 -- 【库】Wok[属性:0], 【表格】Wok（赠）
	tJulyActionUp_Pack[3322075][380011]["RewardItem"][1]["Attr"] = "0 1 3 43200 1" -- 30天时效(激活)的Wok（赠）*1
	tJulyActionUp_Pack[3322075][380011]["RewardEffect"] = {}
	tJulyActionUp_Pack[3322075][380011]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyActionUp_Pack[3322075][380011]["RewardEffect"]["Effect"] = "angelwing"


	tJulyActionUp_Pack[3322075][380012] = {}
	-- ===武器外套可选包
	-- ===索引: tJulyActionUp_Pack[3322075][380012]
	-- ===删除:3322075,1
	-- ===
	tJulyActionUp_Pack[3322075][380012]["LogId"] = 12001456
	tJulyActionUp_Pack[3322075][380012]["DeleteItem"] = {}
	tJulyActionUp_Pack[3322075][380012]["DeleteItem"][1] = {}
	tJulyActionUp_Pack[3322075][380012]["DeleteItem"][1]["Id"] = 3322075 -- 【库】BlessedAccessoryPack(G)[属性:9]
	tJulyActionUp_Pack[3322075][380012]["RewardItem"] = {}
	tJulyActionUp_Pack[3322075][380012]["RewardItem"][1] = {}
	tJulyActionUp_Pack[3322075][380012]["RewardItem"][1]["Id"] = 380012 -- 【库】TurtleShell[属性:0], 【表格】Turtle~Shell（赠）
	tJulyActionUp_Pack[3322075][380012]["RewardItem"][1]["Attr"] = "0 1 3 43200 1" -- 30天时效(激活)的TurtleShell（赠）*1
	tJulyActionUp_Pack[3322075][380012]["RewardEffect"] = {}
	tJulyActionUp_Pack[3322075][380012]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyActionUp_Pack[3322075][380012]["RewardEffect"]["Effect"] = "angelwing"


	tJulyActionUp_Pack[3322075][380013] = {}
	-- ===武器外套可选包
	-- ===索引: tJulyActionUp_Pack[3322075][380013]
	-- ===删除:3322075,1
	-- ===
	tJulyActionUp_Pack[3322075][380013]["LogId"] = 12001456
	tJulyActionUp_Pack[3322075][380013]["DeleteItem"] = {}
	tJulyActionUp_Pack[3322075][380013]["DeleteItem"][1] = {}
	tJulyActionUp_Pack[3322075][380013]["DeleteItem"][1]["Id"] = 3322075 -- 【库】BlessedAccessoryPack(G)[属性:9]
	tJulyActionUp_Pack[3322075][380013]["RewardItem"] = {}
	tJulyActionUp_Pack[3322075][380013]["RewardItem"][1] = {}
	tJulyActionUp_Pack[3322075][380013]["RewardItem"][1]["Id"] = 380013 -- 【库】LoveShield[属性:0], 【表格】Love~Shield（赠）
	tJulyActionUp_Pack[3322075][380013]["RewardItem"][1]["Attr"] = "0 1 3 43200 1" -- 30天时效(激活)的LoveShield（赠）*1
	tJulyActionUp_Pack[3322075][380013]["RewardEffect"] = {}
	tJulyActionUp_Pack[3322075][380013]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyActionUp_Pack[3322075][380013]["RewardEffect"]["Effect"] = "angelwing"


	tJulyActionUp_Pack[3322075][380014] = {}
	-- ===武器外套可选包
	-- ===索引: tJulyActionUp_Pack[3322075][380014]
	-- ===删除:3322075,1
	-- ===
	tJulyActionUp_Pack[3322075][380014]["LogId"] = 12001456
	tJulyActionUp_Pack[3322075][380014]["DeleteItem"] = {}
	tJulyActionUp_Pack[3322075][380014]["DeleteItem"][1] = {}
	tJulyActionUp_Pack[3322075][380014]["DeleteItem"][1]["Id"] = 3322075 -- 【库】BlessedAccessoryPack(G)[属性:9]
	tJulyActionUp_Pack[3322075][380014]["RewardItem"] = {}
	tJulyActionUp_Pack[3322075][380014]["RewardItem"][1] = {}
	tJulyActionUp_Pack[3322075][380014]["RewardItem"][1]["Id"] = 380014 -- 【库】SunFlower[属性:0], 【表格】Sun~Flower（赠）
	tJulyActionUp_Pack[3322075][380014]["RewardItem"][1]["Attr"] = "0 1 3 43200 1" -- 30天时效(激活)的SunFlower（赠）*1
	tJulyActionUp_Pack[3322075][380014]["RewardEffect"] = {}
	tJulyActionUp_Pack[3322075][380014]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyActionUp_Pack[3322075][380014]["RewardEffect"]["Effect"] = "angelwing"


	tJulyActionUp_Pack[3322075][380015] = {}
	-- ===武器外套可选包
	-- ===索引: tJulyActionUp_Pack[3322075][380015]
	-- ===删除:3322075,1
	-- ===
	tJulyActionUp_Pack[3322075][380015]["LogId"] = 12001456
	tJulyActionUp_Pack[3322075][380015]["DeleteItem"] = {}
	tJulyActionUp_Pack[3322075][380015]["DeleteItem"][1] = {}
	tJulyActionUp_Pack[3322075][380015]["DeleteItem"][1]["Id"] = 3322075 -- 【库】BlessedAccessoryPack(G)[属性:9]
	tJulyActionUp_Pack[3322075][380015]["RewardItem"] = {}
	tJulyActionUp_Pack[3322075][380015]["RewardItem"][1] = {}
	tJulyActionUp_Pack[3322075][380015]["RewardItem"][1]["Id"] = 380015 -- 【库】Wheel[属性:0], 【表格】Wheel（赠）
	tJulyActionUp_Pack[3322075][380015]["RewardItem"][1]["Attr"] = "0 1 3 43200 1" -- 30天时效(激活)的Wheel（赠）*1
	tJulyActionUp_Pack[3322075][380015]["RewardEffect"] = {}
	tJulyActionUp_Pack[3322075][380015]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyActionUp_Pack[3322075][380015]["RewardEffect"]["Effect"] = "angelwing"







--掩码表
local tJulyActionUp_Stc = {}
--记录月卡开启次数
tJulyActionUp_Stc[3321948] = {}
tJulyActionUp_Stc[3321948]["EventType"] = 198
tJulyActionUp_Stc[3321948]["DataType"] = 01

tJulyActionUp_Log = {}
tJulyActionUp_Log["DeleteLog"] = "0,0,%d,%d,0,12001456,2,0,0"
tJulyActionUp_Log["EMonyeLog"] = {}
tJulyActionUp_Log["EMonyeLog"]["EMonoMony"] = "10000	0506	0	0	%d	"
-------------------------------------------------------逻辑部分
--可选包逻辑
function JulyActionUp_ChoicePack(nItemId,nChoNum)
	if not Item_ChkMulItem(nItemId,nItemId,1) then
		return
	end 
	local nSpace = RewardTemplate_GetRewardSpace(tJulyActionUp_Pack[nItemId][nChoNum])
	if not User_CheckLeftSpace(nSpace) then
		User_TalkChannel2005(string.format(tJulyActionUp_Text["Sys_MsgBox"]["NoSpace"],nSpace))
		return
	end
	RewardTemplate_UseItemAndMsg(tJulyActionUp_Pack[nItemId][nChoNum])
end 

--月卡卡包逻辑
function JulyActionUp_MonthPack(nItemId)
	if not Item_ChkMulItem(nItemId,nItemId,1) then
		return
	end 
	local nEventType1 = tJulyActionUp_Stc[nItemId]["EventType"]
	local nDataType1 = tJulyActionUp_Stc[nItemId]["DataType"]
	local nData1 = Get_UserStatisticValue(nEventType1,nDataType1)
	if nData1 == 0 then 
		local nFirstSpace = 5
		if not User_CheckLeftSpace(nFirstSpace) then --背包空间
			User_TalkChannel2005(string.format(tJulyActionUp_Text["Sys_MsgBox"]["NoSpace"],nFirstSpace))
			return
		end
		Task_AddStatistic(nEventType1,nDataType1,1,1)
		Task_SetStcTimestamp(nEventType1,nDataType1,0)
		RewardTemplate_UseItemAndMsg(tJulyActionUp_Pack[nItemId][1])
	else
		if not Task_StcInterval(nEventType1,nDataType1,1,4) then   --判断是否隔天
			Sys_MsgBox(string.format(tJulyActionUp_Text["Sys_MsgBox"]["Once"],sName))
			return
		end 
		local nRewardEMoneyM = tJulyActionUp_Pack[3321948][2][5]["RewardEMoneyMono"]["Value"]
		if Get_UserMonoEMoney() + nRewardEMoneyM > G_User_MaxEmoneyMono then  --赠点上限
			User_TalkChannel2005(tJulyActionUp_Text["Sys_MsgBox"]["NotEMoneyMono"])
			return
		end 
		local nSpace = 5
		if not User_CheckLeftSpace(nSpace) then  --背包空间
			User_TalkChannel2005(string.format(tJulyActionUp_Text["Sys_MsgBox"]["NoSpace"],nSpace))
			return
		end
		if nData1 >= 29 then  --判断是否开满30次，开满删除
			if Item_DelMulItem(nItemId,nItemId,1) then 
				local tTextLog = string.format(tJulyActionUp_Log["DeleteLog"],nItemId,1)
				Sys_SaveActionFestivalLog(tTextLog)
			end 
		end 
		Task_AddStatistic(nEventType1,nDataType1,1,1)
		Task_SetStcTimestamp(nEventType1,nDataType1,0)
		local tNum,sText = RewardTemplate_NewRandom(tJulyActionUp_Pack[nItemId],2)
		if tNum[1]["tAward"][1]["RewardEMoneyMono"] ~= nil then 
			local tTextLog2 = string.format(tJulyActionUp_Log["EMonyeLog"]["EMonoMony"],-nRewardEMoneyM)
			Sys_SaveEmoneyBuy(tTextLog2)
		end 
	end 
end 

function JulyActionUp_RandomPack(nItemId)
	local nSpace = 2
	if not User_CheckLeftSpace(nSpace) then  --背包空间
		User_TalkChannel2005(string.format(tJulyActionUp_Text["Sys_MsgBox"]["NoSpace"],nSpace))
		return
	end
	-- RewardTemplate_NewRandom(tJulyActionUp_Pack,nItemId)
	RewardTemplate_RandomReward(tJulyActionUp_Pack,nItemId)
end 

function JulyActionUp_FirstMonth(nItemId)
	local nEventType1 = tJulyActionUp_Stc[nItemId]["EventType"]
	local nDataType1 = tJulyActionUp_Stc[nItemId]["DataType"]
	local nData1 = Get_UserStatisticValue(nEventType1,nDataType1)
	if nData1 == 0 then 
		return true
	else
		local nTimes = nData1 + 1
		tItem[nItemId]["Text121"] = string.format(tJulyActionUp_Text[nItemId]["Text121"],nTimes)
		return false
	end 
end 

function JulyActionUp_ChoiceWT(nPackId,nNum,nItemId)
	local nItemName = Get_ItemtypeName(nItemId)
	tItem[nPackId]["Text121"] = string.format(tJulyActionUp_Text[nPackId]["Text121"],nItemName)
	tItem[nPackId]["OptionFunc121"] = "JulyActionUp_ChoicePack</N>" ..nPackId.. "</N>" ..nNum
	LinkItemGossipFunc_New(nPackId,"1-2")
end 


------------------------------------------------------
--月卡
tItemFace[3321948] = 623
tItem[3321948] = tItem[3321948] or {}
tItem[3321948]["DialogueText"] = tJulyActionUp_Text[3321948]
tItem[3321948]["Text1-1"] = {111}
tItem[3321948]["ChkFunc1-1"]= function()
	return JulyActionUp_FirstMonth(3321948)
end 
tItem[3321948]["tOption1-1"] = {111,112}
tItem[3321948]["OptionFunc111"] = "JulyActionUp_MonthPack</N>3321948"
tItem[3321948]["Text1-2"] = {121,122}
tItem[3321948]["ChkFunc1-2"]= function()
	return not JulyActionUp_FirstMonth(3321948)
end 
tItem[3321948]["tOption1-2"] = {121,122}
tItem[3321948]["OptionFunc121"] = "JulyActionUp_MonthPack</N>3321948"

--全服第一奖励包
tItemFace[3321925] = 1403
tItem[3321925] = tItem[3321925] or {}
tItem[3321925]["DialogueText"] = tJulyActionUp_Text[3321925]
tItem[3321925]["Text1-1"] = {111}
tItem[3321925]["tOption1-1"] = {111,112,113}
tItem[3321925]["OptionFunc111"] = "JulyActionUp_ChoiceWT</N>3321925</N>1</N>195485"
tItem[3321925]["OptionFunc112"] = "JulyActionUp_ChoiceWT</N>3321925</N>2</N>189695"
tItem[3321925]["OptionFunc113"] = "JulyActionUp_ChoiceWT</N>3321925</N>3</N>194875"
tItem[3321925]["Text1-2"] = {121}
tItem[3321925]["tOption1-2"] = {121,122}
--全服第二奖励包
tItemFace[3321926] = 1448
tItem[3321926] = tItem[3321926] or {}
tItem[3321926]["DialogueText"] = tJulyActionUp_Text[3321926]
tItem[3321926]["Text1-1"] = {111}
tItem[3321926]["tOption1-1"] = {111,112}
tItem[3321926]["OptionFunc111"] = "JulyActionUp_ChoiceWT</N>3321926</N>1</N>195485"
tItem[3321926]["OptionFunc112"] = "JulyActionUp_ChoiceWT</N>3321926</N>2</N>189695"
tItem[3321926]["Text1-2"] = {121}
tItem[3321926]["tOption1-2"] = {121,122}
--全服第三奖励包
tItemFace[3321927] = 2198
tItem[3321927] = tItem[3321927] or {}
tItem[3321927]["DialogueText"] = tJulyActionUp_Text[3321927]
tItem[3321927]["Text1-1"] = {111}
tItem[3321927]["tOption1-1"] = {111,112}
tItem[3321927]["OptionFunc111"] = "JulyActionUp_ChoiceWT</N>3321927</N>1</N>189695"
tItem[3321927]["OptionFunc112"] = "JulyActionUp_ChoiceWT</N>3321927</N>2</N>194875"
tItem[3321927]["Text1-2"] = {121}
tItem[3321927]["tOption1-2"] = {121,122}

--武器外套可选包
tItemFace[3322075] = 1011
tItem[3322075] = tItem[3322075] or {}
tItem[3322075]["DialogueText"] = tJulyActionUp_Text[3322075]
tItem[3322075]["Text1-1"] = {111}
tItem[3322075]["tOption1-1"] = {111,112,113,114,115}
tItem[3322075]["OptionPoint111"] = "2-1"
tItem[3322075]["OptionPoint112"] = "3-1"
tItem[3322075]["OptionPoint113"] = "4-1"
tItem[3322075]["OptionPoint114"] = "5-1"
tItem[3322075]["Text1-2"] = {121}
tItem[3322075]["tOption1-2"] = {121,122}
-- 2-Handed~Weapon
tItem[3322075]["Text2-1"] = {211}
tItem[3322075]["tOption2-1"] = {211,212,213,214,215,216,217,218,219,220}
tItem[3322075]["OptionFunc211"] = "JulyActionUp_ChoiceWT</N>3322075</N>350011</N>350011"
tItem[3322075]["OptionFunc212"] = "JulyActionUp_ChoiceWT</N>3322075</N>350012</N>350012"
tItem[3322075]["OptionFunc213"] = "JulyActionUp_ChoiceWT</N>3322075</N>350014</N>350014"
tItem[3322075]["OptionFunc214"] = "JulyActionUp_ChoiceWT</N>3322075</N>350015</N>350015"
tItem[3322075]["OptionFunc215"] = "JulyActionUp_ChoiceWT</N>3322075</N>350016</N>350016"
tItem[3322075]["OptionFunc216"] = "JulyActionUp_ChoiceWT</N>3322075</N>350017</N>350017"
tItem[3322075]["OptionFunc217"] = "JulyActionUp_ChoiceWT</N>3322075</N>350018</N>350018"
tItem[3322075]["OptionFunc218"] = "JulyActionUp_ChoiceWT</N>3322075</N>350019</N>350019"
tItem[3322075]["OptionFunc219"] = "JulyActionUp_ChoiceWT</N>3322075</N>350020</N>350020"
-- 1-Handed~Weapon
tItem[3322075]["Text3-1"] = {311}
tItem[3322075]["tOption3-1"] = {311,312,313,314,315,316,317,318,319,320,321,322,323,324,325,326,327,328,329,330,331}
tItem[3322075]["OptionFunc311"] = "JulyActionUp_ChoiceWT</N>3322075</N>360021</N>360021"
tItem[3322075]["OptionFunc312"] = "JulyActionUp_ChoiceWT</N>3322075</N>360022</N>360022"
tItem[3322075]["OptionFunc313"] = "JulyActionUp_ChoiceWT</N>3322075</N>360023</N>360023"
tItem[3322075]["OptionFunc314"] = "JulyActionUp_ChoiceWT</N>3322075</N>360024</N>360024"
tItem[3322075]["OptionFunc315"] = "JulyActionUp_ChoiceWT</N>3322075</N>360025</N>360025"
tItem[3322075]["OptionFunc316"] = "JulyActionUp_ChoiceWT</N>3322075</N>360026</N>360026"
tItem[3322075]["OptionFunc317"] = "JulyActionUp_ChoiceWT</N>3322075</N>360027</N>360027"
tItem[3322075]["OptionFunc318"] = "JulyActionUp_ChoiceWT</N>3322075</N>360028</N>360028"
tItem[3322075]["OptionFunc319"] = "JulyActionUp_ChoiceWT</N>3322075</N>360029</N>360029"
tItem[3322075]["OptionFunc320"] = "JulyActionUp_ChoiceWT</N>3322075</N>360030</N>360030"
tItem[3322075]["OptionFunc321"] = "JulyActionUp_ChoiceWT</N>3322075</N>360031</N>360031"
tItem[3322075]["OptionFunc322"] = "JulyActionUp_ChoiceWT</N>3322075</N>360032</N>360032"
tItem[3322075]["OptionFunc323"] = "JulyActionUp_ChoiceWT</N>3322075</N>360033</N>360033"
tItem[3322075]["OptionFunc324"] = "JulyActionUp_ChoiceWT</N>3322075</N>360034</N>360034"
tItem[3322075]["OptionFunc325"] = "JulyActionUp_ChoiceWT</N>3322075</N>360035</N>360035"
tItem[3322075]["OptionFunc326"] = "JulyActionUp_ChoiceWT</N>3322075</N>360036</N>360036"
tItem[3322075]["OptionFunc327"] = "JulyActionUp_ChoiceWT</N>3322075</N>360037</N>360037"
tItem[3322075]["OptionFunc328"] = "JulyActionUp_ChoiceWT</N>3322075</N>360038</N>360038"
tItem[3322075]["OptionFunc329"] = "JulyActionUp_ChoiceWT</N>3322075</N>360039</N>360039"
tItem[3322075]["OptionFunc330"] = "JulyActionUp_ChoiceWT</N>3322075</N>360040</N>360040"
-- Bow
tItem[3322075]["Text4-1"] = {411}
tItem[3322075]["tOption4-1"] = {411,412,413,414,415,416}
tItem[3322075]["OptionFunc411"] = "JulyActionUp_ChoiceWT</N>3322075</N>370011</N>370011"
tItem[3322075]["OptionFunc412"] = "JulyActionUp_ChoiceWT</N>3322075</N>370012</N>370012"
tItem[3322075]["OptionFunc413"] = "JulyActionUp_ChoiceWT</N>3322075</N>370013</N>370013"
tItem[3322075]["OptionFunc414"] = "JulyActionUp_ChoiceWT</N>3322075</N>370014</N>370014"
tItem[3322075]["OptionFunc415"] = "JulyActionUp_ChoiceWT</N>3322075</N>370015</N>370015"
-- Shield
tItem[3322075]["Text5-1"] = {511}
tItem[3322075]["tOption5-1"] = {511,512,513,514,515,516}
tItem[3322075]["OptionFunc511"] = "JulyActionUp_ChoiceWT</N>3322075</N>380011</N>380011"
tItem[3322075]["OptionFunc512"] = "JulyActionUp_ChoiceWT</N>3322075</N>380012</N>380012"
tItem[3322075]["OptionFunc513"] = "JulyActionUp_ChoiceWT</N>3322075</N>380013</N>380013"
tItem[3322075]["OptionFunc514"] = "JulyActionUp_ChoiceWT</N>3322075</N>380014</N>380014"
tItem[3322075]["OptionFunc515"] = "JulyActionUp_ChoiceWT</N>3322075</N>380015</N>380015"
-------------------------------------------------------------------------物品使用

tItem[3321924] = tItem[3321924] or {}
tItem[3321924]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tJulyActionUp_Pack[nItemId])
end
tItem[3321928] = tItem[3321924] or {}
tItem[3321929] = tItem[3321924] or {}
tItem[3321930] = tItem[3321924] or {}
tItem[3321931] = tItem[3321924] or {}
tItem[3321932] = tItem[3321924] or {}
tItem[3321933] = tItem[3321924] or {}
tItem[3321934] = tItem[3321924] or {}
tItem[3321935] = tItem[3321924] or {}
tItem[3321936] = tItem[3321924] or {}
tItem[3321937] = tItem[3321924] or {}
tItem[3321938] = tItem[3321924] or {}
tItem[3321939] = tItem[3321924] or {}
tItem[3321940] = tItem[3321924] or {}
tItem[3321941] = tItem[3321924] or {}
tItem[3321942] = tItem[3321924] or {}
-- tItem[3321943] = tItem[3321924] or {}
tItem[3321944] = tItem[3321924] or {}
tItem[3321945] = tItem[3321924] or {}
tItem[3321946] = tItem[3321924] or {}
tItem[3321949] = tItem[3321924] or {}

tItem[3321947] = tItem[3321947] or {}
tItem[3321947]["Function"] = function(nItemId,sItemName)
	JulyActionUp_RandomPack(nItemId)
end

-- tItem[3321948] = tItem[3321948] or {}
-- tItem[3321948]["Function"] = function(nItemId,sItemName)
	-- JulyActionUp_MonthPack(nItemId)
-- end















