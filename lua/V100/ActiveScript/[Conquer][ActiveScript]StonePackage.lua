------------------------------------------------------------------------------------
--Name：            190411[简体征服][活动脚本]时效赤炼石掉落包制作
--Creator:      林嘉鑫
--Created:     2019-04-11
------------------------------------------------------------------------------------
--任务需求：

------------------------------------------------------------------------------------


----------------------------------表配置部分--------------------------------------------
local tStonePackage_Pack = {}
	-- ===+1赤炼石
	-- ===索引: 3321034
	-- ===删除: 3321034,1
	tStonePackage_Pack[3321034] = {}
	tStonePackage_Pack[3321034]["LogId"] = 12001363
	tStonePackage_Pack[3321034]["DeleteItem"] = {}
	tStonePackage_Pack[3321034]["DeleteItem"][1] = {}
	tStonePackage_Pack[3321034]["DeleteItem"][1]["Id"] = 3321034 -- 【库】+1赤炼石[属性:256]
	tStonePackage_Pack[3321034]["RewardItem"] = {}
	tStonePackage_Pack[3321034]["RewardItem"][1] = {}
	tStonePackage_Pack[3321034]["RewardItem"][1]["Id"] = 730001 -- 【库】+1赤炼石[属性:0]【表格】+1赤炼石
	tStonePackage_Pack[3321034]["RewardItem"][1]["Attr"] = "0 1 0 7200 1" -- 5天时效(激活)的+1赤炼石*1
	tStonePackage_Pack[3321034]["RewardEffect"] = {}
	tStonePackage_Pack[3321034]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStonePackage_Pack[3321034]["RewardEffect"]["Effect"] = "angelwing"


	-- ===+2赤炼石
	-- ===索引: 3321035
	-- ===删除: 3321035,1
	tStonePackage_Pack[3321035] = {}
	tStonePackage_Pack[3321035]["LogId"] = 12001363
	tStonePackage_Pack[3321035]["DeleteItem"] = {}
	tStonePackage_Pack[3321035]["DeleteItem"][1] = {}
	tStonePackage_Pack[3321035]["DeleteItem"][1]["Id"] = 3321035 -- 【库】+2赤炼石[属性:256]
	tStonePackage_Pack[3321035]["RewardItem"] = {}
	tStonePackage_Pack[3321035]["RewardItem"][1] = {}
	tStonePackage_Pack[3321035]["RewardItem"][1]["Id"] = 730002 -- 【库】+2赤炼石[属性:0]【表格】+2赤炼石
	tStonePackage_Pack[3321035]["RewardItem"][1]["Attr"] = "0 1 0 7200 1" -- 5天时效(激活)的+2赤炼石*1
	tStonePackage_Pack[3321035]["RewardEffect"] = {}
	tStonePackage_Pack[3321035]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStonePackage_Pack[3321035]["RewardEffect"]["Effect"] = "angelwing"


	-- ===+3赤炼石
	-- ===索引: 3321036
	-- ===删除: 3321036,1
	tStonePackage_Pack[3321036] = {}
	tStonePackage_Pack[3321036]["LogId"] = 12001363
	tStonePackage_Pack[3321036]["DeleteItem"] = {}
	tStonePackage_Pack[3321036]["DeleteItem"][1] = {}
	tStonePackage_Pack[3321036]["DeleteItem"][1]["Id"] = 3321036 -- 【库】+3赤炼石[属性:256]
	tStonePackage_Pack[3321036]["RewardItem"] = {}
	tStonePackage_Pack[3321036]["RewardItem"][1] = {}
	tStonePackage_Pack[3321036]["RewardItem"][1]["Id"] = 730003 -- 【库】+3赤炼石[属性:0]【表格】+3赤炼石
	tStonePackage_Pack[3321036]["RewardItem"][1]["Attr"] = "0 1 0 7200 1" -- 5天时效(激活)的+3赤炼石*1
	tStonePackage_Pack[3321036]["RewardEffect"] = {}
	tStonePackage_Pack[3321036]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStonePackage_Pack[3321036]["RewardEffect"]["Effect"] = "angelwing"


	-- ===+4赤炼石
	-- ===索引: 3321037
	-- ===删除: 3321037,1
	tStonePackage_Pack[3321037] = {}
	tStonePackage_Pack[3321037]["LogId"] = 12001363
	tStonePackage_Pack[3321037]["DeleteItem"] = {}
	tStonePackage_Pack[3321037]["DeleteItem"][1] = {}
	tStonePackage_Pack[3321037]["DeleteItem"][1]["Id"] = 3321037 -- 【库】+4赤炼石[属性:256]
	tStonePackage_Pack[3321037]["RewardItem"] = {}
	tStonePackage_Pack[3321037]["RewardItem"][1] = {}
	tStonePackage_Pack[3321037]["RewardItem"][1]["Id"] = 730004 -- 【库】+4赤炼石[属性:0]【表格】+4赤炼石
	tStonePackage_Pack[3321037]["RewardItem"][1]["Attr"] = "0 1 0 7200 1" -- 5天时效(激活)的+4赤炼石*1
	tStonePackage_Pack[3321037]["RewardEffect"] = {}
	tStonePackage_Pack[3321037]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStonePackage_Pack[3321037]["RewardEffect"]["Effect"] = "angelwing"


	-- ===+5赤炼石
	-- ===索引: 3321038
	-- ===删除: 3321038,1
	tStonePackage_Pack[3321038] = {}
	tStonePackage_Pack[3321038]["LogId"] = 12001363
	tStonePackage_Pack[3321038]["DeleteItem"] = {}
	tStonePackage_Pack[3321038]["DeleteItem"][1] = {}
	tStonePackage_Pack[3321038]["DeleteItem"][1]["Id"] = 3321038 -- 【库】+5赤炼石[属性:256]
	tStonePackage_Pack[3321038]["RewardItem"] = {}
	tStonePackage_Pack[3321038]["RewardItem"][1] = {}
	tStonePackage_Pack[3321038]["RewardItem"][1]["Id"] = 730005 -- 【库】+5赤炼石[属性:0]【表格】+5赤炼石
	tStonePackage_Pack[3321038]["RewardItem"][1]["Attr"] = "0 1 0 7200 1" -- 5天时效(激活)的+5赤炼石*1
	tStonePackage_Pack[3321038]["RewardEffect"] = {}
	tStonePackage_Pack[3321038]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStonePackage_Pack[3321038]["RewardEffect"]["Effect"] = "angelwing"


	-- ===+6赤炼石
	-- ===索引: 3321039
	-- ===删除: 3321039,1
	tStonePackage_Pack[3321039] = {}
	tStonePackage_Pack[3321039]["LogId"] = 12001363
	tStonePackage_Pack[3321039]["DeleteItem"] = {}
	tStonePackage_Pack[3321039]["DeleteItem"][1] = {}
	tStonePackage_Pack[3321039]["DeleteItem"][1]["Id"] = 3321039 -- 【库】+6赤炼石[属性:256]
	tStonePackage_Pack[3321039]["RewardItem"] = {}
	tStonePackage_Pack[3321039]["RewardItem"][1] = {}
	tStonePackage_Pack[3321039]["RewardItem"][1]["Id"] = 730006 -- 【库】+6赤炼石[属性:0]【表格】+6赤炼石
	tStonePackage_Pack[3321039]["RewardItem"][1]["Attr"] = "0 1 0 7200 1" -- 5天时效(激活)的+6赤炼石*1
	tStonePackage_Pack[3321039]["RewardEffect"] = {}
	tStonePackage_Pack[3321039]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStonePackage_Pack[3321039]["RewardEffect"]["Effect"] = "angelwing"


	-- ===+7赤炼石
	-- ===索引: 3321040
	-- ===删除: 3321040,1
	tStonePackage_Pack[3321040] = {}
	tStonePackage_Pack[3321040]["LogId"] = 12001363
	tStonePackage_Pack[3321040]["DeleteItem"] = {}
	tStonePackage_Pack[3321040]["DeleteItem"][1] = {}
	tStonePackage_Pack[3321040]["DeleteItem"][1]["Id"] = 3321040 -- 【库】+7赤炼石[属性:256]
	tStonePackage_Pack[3321040]["RewardItem"] = {}
	tStonePackage_Pack[3321040]["RewardItem"][1] = {}
	tStonePackage_Pack[3321040]["RewardItem"][1]["Id"] = 730007 -- 【库】+7赤炼石[属性:0]【表格】+7赤炼石
	tStonePackage_Pack[3321040]["RewardItem"][1]["Attr"] = "0 1 0 7200 1" -- 5天时效(激活)的+7赤炼石*1
	tStonePackage_Pack[3321040]["RewardEffect"] = {}
	tStonePackage_Pack[3321040]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStonePackage_Pack[3321040]["RewardEffect"]["Effect"] = "angelwing"


	-- ===+8赤炼石
	-- ===索引: 3321041
	-- ===删除: 3321041,1
	tStonePackage_Pack[3321041] = {}
	tStonePackage_Pack[3321041]["LogId"] = 12001363
	tStonePackage_Pack[3321041]["DeleteItem"] = {}
	tStonePackage_Pack[3321041]["DeleteItem"][1] = {}
	tStonePackage_Pack[3321041]["DeleteItem"][1]["Id"] = 3321041 -- 【库】+8赤炼石[属性:256]
	tStonePackage_Pack[3321041]["RewardItem"] = {}
	tStonePackage_Pack[3321041]["RewardItem"][1] = {}
	tStonePackage_Pack[3321041]["RewardItem"][1]["Id"] = 730008 -- 【库】+8赤炼石[属性:0]【表格】+8赤炼石
	tStonePackage_Pack[3321041]["RewardItem"][1]["Attr"] = "0 1 0 7200 1" -- 5天时效(激活)的+8赤炼石*1
	tStonePackage_Pack[3321041]["RewardEffect"] = {}
	tStonePackage_Pack[3321041]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStonePackage_Pack[3321041]["RewardEffect"]["Effect"] = "angelwing"


	-- ===+1赤炼石(赠)
	-- ===索引: 3321042
	-- ===删除: 3321042,1
	tStonePackage_Pack[3321042] = {}
	tStonePackage_Pack[3321042]["LogId"] = 12001363
	tStonePackage_Pack[3321042]["DeleteItem"] = {}
	tStonePackage_Pack[3321042]["DeleteItem"][1] = {}
	tStonePackage_Pack[3321042]["DeleteItem"][1]["Id"] = 3321042 -- 【库】+1赤炼石(赠)[属性:265]
	tStonePackage_Pack[3321042]["RewardItem"] = {}
	tStonePackage_Pack[3321042]["RewardItem"][1] = {}
	tStonePackage_Pack[3321042]["RewardItem"][1]["Id"] = 730001 -- 【库】+1赤炼石[属性:0]【表格】+1赤炼石(赠)
	tStonePackage_Pack[3321042]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+1赤炼石(赠)*1
	tStonePackage_Pack[3321042]["RewardEffect"] = {}
	tStonePackage_Pack[3321042]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStonePackage_Pack[3321042]["RewardEffect"]["Effect"] = "angelwing"


	-- ===+2赤炼石(赠)
	-- ===索引: 3321043
	-- ===删除: 3321043,1
	tStonePackage_Pack[3321043] = {}
	tStonePackage_Pack[3321043]["LogId"] = 12001363
	tStonePackage_Pack[3321043]["DeleteItem"] = {}
	tStonePackage_Pack[3321043]["DeleteItem"][1] = {}
	tStonePackage_Pack[3321043]["DeleteItem"][1]["Id"] = 3321043 -- 【库】+2赤炼石(赠)[属性:265]
	tStonePackage_Pack[3321043]["RewardItem"] = {}
	tStonePackage_Pack[3321043]["RewardItem"][1] = {}
	tStonePackage_Pack[3321043]["RewardItem"][1]["Id"] = 730002 -- 【库】+2赤炼石[属性:0]【表格】+2赤炼石(赠)
	tStonePackage_Pack[3321043]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+2赤炼石(赠)*1
	tStonePackage_Pack[3321043]["RewardEffect"] = {}
	tStonePackage_Pack[3321043]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStonePackage_Pack[3321043]["RewardEffect"]["Effect"] = "angelwing"


	-- ===+3赤炼石(赠)
	-- ===索引: 3321044
	-- ===删除: 3321044,1
	tStonePackage_Pack[3321044] = {}
	tStonePackage_Pack[3321044]["LogId"] = 12001363
	tStonePackage_Pack[3321044]["DeleteItem"] = {}
	tStonePackage_Pack[3321044]["DeleteItem"][1] = {}
	tStonePackage_Pack[3321044]["DeleteItem"][1]["Id"] = 3321044 -- 【库】+3赤炼石(赠)[属性:265]
	tStonePackage_Pack[3321044]["RewardItem"] = {}
	tStonePackage_Pack[3321044]["RewardItem"][1] = {}
	tStonePackage_Pack[3321044]["RewardItem"][1]["Id"] = 730003 -- 【库】+3赤炼石[属性:0]【表格】+3赤炼石(赠)
	tStonePackage_Pack[3321044]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+3赤炼石(赠)*1
	tStonePackage_Pack[3321044]["RewardEffect"] = {}
	tStonePackage_Pack[3321044]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStonePackage_Pack[3321044]["RewardEffect"]["Effect"] = "angelwing"


	-- ===+4赤炼石(赠)
	-- ===索引: 3321045
	-- ===删除: 3321045,1
	tStonePackage_Pack[3321045] = {}
	tStonePackage_Pack[3321045]["LogId"] = 12001363
	tStonePackage_Pack[3321045]["DeleteItem"] = {}
	tStonePackage_Pack[3321045]["DeleteItem"][1] = {}
	tStonePackage_Pack[3321045]["DeleteItem"][1]["Id"] = 3321045 -- 【库】+4赤炼石(赠)[属性:265]
	tStonePackage_Pack[3321045]["RewardItem"] = {}
	tStonePackage_Pack[3321045]["RewardItem"][1] = {}
	tStonePackage_Pack[3321045]["RewardItem"][1]["Id"] = 730004 -- 【库】+4赤炼石[属性:0]【表格】+4赤炼石(赠)
	tStonePackage_Pack[3321045]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+4赤炼石(赠)*1
	tStonePackage_Pack[3321045]["RewardEffect"] = {}
	tStonePackage_Pack[3321045]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStonePackage_Pack[3321045]["RewardEffect"]["Effect"] = "angelwing"


	-- ===+5赤炼石(赠)
	-- ===索引: 3321046
	-- ===删除: 3321046,1
	tStonePackage_Pack[3321046] = {}
	tStonePackage_Pack[3321046]["LogId"] = 12001363
	tStonePackage_Pack[3321046]["DeleteItem"] = {}
	tStonePackage_Pack[3321046]["DeleteItem"][1] = {}
	tStonePackage_Pack[3321046]["DeleteItem"][1]["Id"] = 3321046 -- 【库】+5赤炼石(赠)[属性:265]
	tStonePackage_Pack[3321046]["RewardItem"] = {}
	tStonePackage_Pack[3321046]["RewardItem"][1] = {}
	tStonePackage_Pack[3321046]["RewardItem"][1]["Id"] = 730005 -- 【库】+5赤炼石[属性:0]【表格】+5赤炼石(赠)
	tStonePackage_Pack[3321046]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+5赤炼石(赠)*1
	tStonePackage_Pack[3321046]["RewardEffect"] = {}
	tStonePackage_Pack[3321046]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStonePackage_Pack[3321046]["RewardEffect"]["Effect"] = "angelwing"


	-- ===+6赤炼石(赠)
	-- ===索引: 3321047
	-- ===删除: 3321047,1
	tStonePackage_Pack[3321047] = {}
	tStonePackage_Pack[3321047]["LogId"] = 12001363
	tStonePackage_Pack[3321047]["DeleteItem"] = {}
	tStonePackage_Pack[3321047]["DeleteItem"][1] = {}
	tStonePackage_Pack[3321047]["DeleteItem"][1]["Id"] = 3321047 -- 【库】+6赤炼石(赠)[属性:265]
	tStonePackage_Pack[3321047]["RewardItem"] = {}
	tStonePackage_Pack[3321047]["RewardItem"][1] = {}
	tStonePackage_Pack[3321047]["RewardItem"][1]["Id"] = 730006 -- 【库】+6赤炼石[属性:0]【表格】+6赤炼石(赠)
	tStonePackage_Pack[3321047]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+6赤炼石(赠)*1
	tStonePackage_Pack[3321047]["RewardEffect"] = {}
	tStonePackage_Pack[3321047]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStonePackage_Pack[3321047]["RewardEffect"]["Effect"] = "angelwing"


	-- ===+7赤炼石(赠)
	-- ===索引: 3321048
	-- ===删除: 3321048,1
	tStonePackage_Pack[3321048] = {}
	tStonePackage_Pack[3321048]["LogId"] = 12001363
	tStonePackage_Pack[3321048]["DeleteItem"] = {}
	tStonePackage_Pack[3321048]["DeleteItem"][1] = {}
	tStonePackage_Pack[3321048]["DeleteItem"][1]["Id"] = 3321048 -- 【库】+7赤炼石(赠)[属性:265]
	tStonePackage_Pack[3321048]["RewardItem"] = {}
	tStonePackage_Pack[3321048]["RewardItem"][1] = {}
	tStonePackage_Pack[3321048]["RewardItem"][1]["Id"] = 730007 -- 【库】+7赤炼石[属性:0]【表格】+7赤炼石(赠)
	tStonePackage_Pack[3321048]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+7赤炼石(赠)*1
	tStonePackage_Pack[3321048]["RewardEffect"] = {}
	tStonePackage_Pack[3321048]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStonePackage_Pack[3321048]["RewardEffect"]["Effect"] = "angelwing"


	-- ===+8赤炼石(赠)
	-- ===索引: 3321049
	-- ===删除: 3321049,1
	tStonePackage_Pack[3321049] = {}
	tStonePackage_Pack[3321049]["LogId"] = 12001363
	tStonePackage_Pack[3321049]["DeleteItem"] = {}
	tStonePackage_Pack[3321049]["DeleteItem"][1] = {}
	tStonePackage_Pack[3321049]["DeleteItem"][1]["Id"] = 3321049 -- 【库】+8赤炼石(赠)[属性:265]
	tStonePackage_Pack[3321049]["RewardItem"] = {}
	tStonePackage_Pack[3321049]["RewardItem"][1] = {}
	tStonePackage_Pack[3321049]["RewardItem"][1]["Id"] = 730008 -- 【库】+8赤炼石[属性:0]【表格】+8赤炼石(赠)
	tStonePackage_Pack[3321049]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+8赤炼石(赠)*1
	tStonePackage_Pack[3321049]["RewardEffect"] = {}
	tStonePackage_Pack[3321049]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStonePackage_Pack[3321049]["RewardEffect"]["Effect"] = "angelwing"


	-- ===微光星陨石
	-- ===索引: 3321050
	-- ===删除: 3321050,1
	tStonePackage_Pack[3321050] = {}
	tStonePackage_Pack[3321050]["LogId"] = 12001363
	tStonePackage_Pack[3321050]["DeleteItem"] = {}
	tStonePackage_Pack[3321050]["DeleteItem"][1] = {}
	tStonePackage_Pack[3321050]["DeleteItem"][1]["Id"] = 3321050 -- 【库】微光星陨石[属性:265]
	tStonePackage_Pack[3321050]["RewardItem"] = {}
	tStonePackage_Pack[3321050]["RewardItem"][1] = {}
	tStonePackage_Pack[3321050]["RewardItem"][1]["Id"] = 3009000 -- 【库】微光星陨石[属性:9]【表格】微光星陨石
	tStonePackage_Pack[3321050]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的微光星陨石*1
	tStonePackage_Pack[3321050]["RewardEffect"] = {}
	tStonePackage_Pack[3321050]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStonePackage_Pack[3321050]["RewardEffect"]["Effect"] = "angelwing"


	-- ===明亮星陨石
	-- ===索引: 3321051
	-- ===删除: 3321051,1
	tStonePackage_Pack[3321051] = {}
	tStonePackage_Pack[3321051]["LogId"] = 12001363
	tStonePackage_Pack[3321051]["DeleteItem"] = {}
	tStonePackage_Pack[3321051]["DeleteItem"][1] = {}
	tStonePackage_Pack[3321051]["DeleteItem"][1]["Id"] = 3321051 -- 【库】明亮星陨石[属性:265]
	tStonePackage_Pack[3321051]["RewardItem"] = {}
	tStonePackage_Pack[3321051]["RewardItem"][1] = {}
	tStonePackage_Pack[3321051]["RewardItem"][1]["Id"] = 3009001 -- 【库】明亮星陨石[属性:9]【表格】明亮星陨石
	tStonePackage_Pack[3321051]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的明亮星陨石*1
	tStonePackage_Pack[3321051]["RewardEffect"] = {}
	tStonePackage_Pack[3321051]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStonePackage_Pack[3321051]["RewardEffect"]["Effect"] = "angelwing"


	-- ===晶莹星陨石
	-- ===索引: 3321052
	-- ===删除: 3321052,1
	tStonePackage_Pack[3321052] = {}
	tStonePackage_Pack[3321052]["LogId"] = 12001363
	tStonePackage_Pack[3321052]["DeleteItem"] = {}
	tStonePackage_Pack[3321052]["DeleteItem"][1] = {}
	tStonePackage_Pack[3321052]["DeleteItem"][1]["Id"] = 3321052 -- 【库】晶莹星陨石[属性:265]
	tStonePackage_Pack[3321052]["RewardItem"] = {}
	tStonePackage_Pack[3321052]["RewardItem"][1] = {}
	tStonePackage_Pack[3321052]["RewardItem"][1]["Id"] = 3009002 -- 【库】晶莹星陨石[属性:9]【表格】晶莹星陨石
	tStonePackage_Pack[3321052]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的晶莹星陨石*1
	tStonePackage_Pack[3321052]["RewardEffect"] = {}
	tStonePackage_Pack[3321052]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStonePackage_Pack[3321052]["RewardEffect"]["Effect"] = "angelwing"


	-- ===璀璨星陨石
	-- ===索引: 3321053
	-- ===删除: 3321053,1
	tStonePackage_Pack[3321053] = {}
	tStonePackage_Pack[3321053]["LogId"] = 12001363
	tStonePackage_Pack[3321053]["DeleteItem"] = {}
	tStonePackage_Pack[3321053]["DeleteItem"][1] = {}
	tStonePackage_Pack[3321053]["DeleteItem"][1]["Id"] = 3321053 -- 【库】璀璨星陨石[属性:265]
	tStonePackage_Pack[3321053]["RewardItem"] = {}
	tStonePackage_Pack[3321053]["RewardItem"][1] = {}
	tStonePackage_Pack[3321053]["RewardItem"][1]["Id"] = 3009003 -- 【库】璀璨星陨石[属性:9]【表格】璀璨星陨石
	tStonePackage_Pack[3321053]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的璀璨星陨石*1
	tStonePackage_Pack[3321053]["RewardEffect"] = {}
	tStonePackage_Pack[3321053]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStonePackage_Pack[3321053]["RewardEffect"]["Effect"] = "angelwing"

----------------------------------逻辑部分---------------------------------------------
-- 打开礼包
function StonePackage_OpenPackage(nItemId)
	-- 满背包提示
	if not RewardTemplate_CheckSpace(tStonePackage_Pack[nItemId]) then
		Sys_MsgBox(tStonePackage_Text["Msg"]["NoSpace"])
		User_TalkChannel2005(tStonePackage_Text["Msg"]["NoSpace"])
		return
	end
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		local sRewardStr = RewardTemplate_Reward(tStonePackage_Pack[nItemId])
		User_TalkChannel2005(string.format(tStonePackage_Text["Msg"]["Success"],sRewardStr))
	end
end

---------------------------------物品部分---------------------------------------------
--------物品无对白模板
tItem[3321034] = tItem[3321034] or {}
tItem[3321034]["Function"] = function (nItemId,sItemName)
	StonePackage_OpenPackage(nItemId)
end
tItem[3321035] = tItem[3321034] or {}
tItem[3321036] = tItem[3321034] or {}
tItem[3321037] = tItem[3321034] or {}
tItem[3321038] = tItem[3321034] or {}
tItem[3321039] = tItem[3321034] or {}
tItem[3321040] = tItem[3321034] or {}
tItem[3321041] = tItem[3321034] or {}
tItem[3321042] = tItem[3321034] or {}
tItem[3321043] = tItem[3321034] or {}
tItem[3321044] = tItem[3321034] or {}
tItem[3321045] = tItem[3321034] or {}
tItem[3321046] = tItem[3321034] or {}
tItem[3321047] = tItem[3321034] or {}
tItem[3321048] = tItem[3321034] or {}
tItem[3321049] = tItem[3321034] or {}
tItem[3321050] = tItem[3321034] or {}
tItem[3321051] = tItem[3321034] or {}
tItem[3321052] = tItem[3321034] or {}
tItem[3321053] = tItem[3321034] or {}