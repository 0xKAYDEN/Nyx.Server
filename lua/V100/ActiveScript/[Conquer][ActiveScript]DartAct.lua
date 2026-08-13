------------------------------------------------------------------------------------
--Name：            190517[简体征服][活动脚本]掷飞镖小游戏发奖ID制作
--Creator:      杨艳
--Created:     2019/05/17
------------------------------------------------------------------------------------
--任务需求：


--命名规范： DartAct_


-- logid :	12001430
------------------------------------------------------------------------------------

	
local tDartAct_Data = {}
	tDartAct_Data["Https"] = "https://coevent.99.com/throwingknife201910/" 
	
	
local tDartAct_Stc = {}
	tDartAct_Stc["EventType"] = {}
	tDartAct_Stc["DataType"] = {}
	
	--记录天石数量
	tDartAct_Stc["EventType"][1] = 197
    tDartAct_Stc["DataType"][1] = 08
	
	--记录飞刀数量
	tDartAct_Stc["EventType"][2] = 197
    tDartAct_Stc["DataType"][2] = 09
	
	-- #DELETE FROM emoneybuylog申请 WHERE id >= 10000 0448 AND id <= 100000450;
local tDartAct_Log = {}
	tDartAct_Log["EmoneyLog"] = {}
	-- 记录消费 3  1000  100000
	tDartAct_Log["EmoneyLog"][240000] = "10000	0448	240000	240000	1	"
	tDartAct_Log["EmoneyLog"][2400000] = "10000	0449	2400000	2400000	1	"
	tDartAct_Log["EmoneyLog"][24000000] = "10000	0450	24000000	24000000	1	"
	tDartAct_Log["EmoneyLog"][72000000] = "10000	0690	72000000	72000000	1	"
	tDartAct_Log["EmoneyLog"][240000000] = "10000	0691	240000000	240000000	1	"

local tDartAct_Award = {}
	-- ===超大固化石大礼包（2颗）碎片
	-- ===索引: 3321634
	-- ===删除: 3321634,50
	-- ===
	tDartAct_Award[3321634] = {}
	tDartAct_Award[3321634]["LogId"] = 12001430
	tDartAct_Award[3321634]["DeleteItem"] = {}
	tDartAct_Award[3321634]["DeleteItem"][1] = {}
	tDartAct_Award[3321634]["DeleteItem"][1]["Id"] = 3321634 -- 【库】超大固化石礼包碎片[属性:8]
	tDartAct_Award[3321634]["DeleteItem"][1]["ItemNum"] = 20
	tDartAct_Award[3321634]["RewardItem"] = {}
	tDartAct_Award[3321634]["RewardItem"][1] = {}
	tDartAct_Award[3321634]["RewardItem"][1]["Id"] = 723695 -- 【库】超大固化石[属性:0]【表格】2个超大固化石
	tDartAct_Award[3321634]["RewardItem"][1]["Attr"] = "0 2" -- 超大固化石*2
	tDartAct_Award[3321634]["RewardEffect"] = {}
	tDartAct_Award[3321634]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDartAct_Award[3321634]["RewardEffect"]["Effect"] = "angelwing"


	-- ===赤炼石包碎片
	-- ===索引: 3321635
	-- ===删除: 3321635,20
	-- ===
	tDartAct_Award[3321635] = {}
	tDartAct_Award[3321635]["LogId"] = 12001430
	tDartAct_Award[3321635]["DeleteItem"] = {}
	tDartAct_Award[3321635]["DeleteItem"][1] = {}
	tDartAct_Award[3321635]["DeleteItem"][1]["Id"] = 3321635 -- 【库】+5赤炼石包碎片[属性:8]
	tDartAct_Award[3321635]["DeleteItem"][1]["ItemNum"] = 10
	tDartAct_Award[3321635]["RewardItem"] = {}
	tDartAct_Award[3321635]["RewardItem"][1] = {}
	tDartAct_Award[3321635]["RewardItem"][1]["Id"] = 730005 -- 【库】+5赤炼石[属性:0]【表格】3个赤练石+5
	tDartAct_Award[3321635]["RewardItem"][1]["Attr"] = "0 3" -- +5赤炼石*3
	tDartAct_Award[3321635]["RewardEffect"] = {}
	tDartAct_Award[3321635]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDartAct_Award[3321635]["RewardEffect"]["Effect"] = "angelwing"


	-- ===6赤炼石礼包碎片
	-- ===索引: 3321636
	-- ===删除: 3321636,50
	-- ===
	tDartAct_Award[3321636] = {}
	tDartAct_Award[3321636]["LogId"] = 12001430
	tDartAct_Award[3321636]["DeleteItem"] = {}
	tDartAct_Award[3321636]["DeleteItem"][1] = {}
	tDartAct_Award[3321636]["DeleteItem"][1]["Id"] = 3321636 -- 【库】+6赤炼石礼包碎片[属性:8]
	tDartAct_Award[3321636]["DeleteItem"][1]["ItemNum"] = 20
	tDartAct_Award[3321636]["RewardItem"] = {}
	tDartAct_Award[3321636]["RewardItem"][1] = {}
	tDartAct_Award[3321636]["RewardItem"][1]["Id"] = 730006 -- 【库】+6赤炼石[属性:0]【表格】赤练石+6
	tDartAct_Award[3321636]["RewardItem"][1]["Attr"] = "0 4" -- +6赤炼石*4
	tDartAct_Award[3321636]["RewardEffect"] = {}
	tDartAct_Award[3321636]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDartAct_Award[3321636]["RewardEffect"]["Effect"] = "angelwing"


	-- ===璀璨星陨石碎片
	-- ===索引: 3321637
	-- ===删除: 3321637,20
	-- ===
	tDartAct_Award[3321637] = {}
	tDartAct_Award[3321637]["LogId"] = 12001430
	tDartAct_Award[3321637]["DeleteItem"] = {}
	tDartAct_Award[3321637]["DeleteItem"][1] = {}
	tDartAct_Award[3321637]["DeleteItem"][1]["Id"] = 3321637 -- 【库】璀璨星陨石碎片[属性:8]
	tDartAct_Award[3321637]["DeleteItem"][1]["ItemNum"] = 5
	tDartAct_Award[3321637]["RewardItem"] = {}
	tDartAct_Award[3321637]["RewardItem"][1] = {}
	tDartAct_Award[3321637]["RewardItem"][1]["Id"] = 3009003 -- 【库】璀璨星陨石[属性:9]【表格】璀璨星陨石
	tDartAct_Award[3321637]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的璀璨星陨石*1
	tDartAct_Award[3321637]["RewardEffect"] = {}
	tDartAct_Award[3321637]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDartAct_Award[3321637]["RewardEffect"]["Effect"] = "angelwing"


	-- ===大块祈愿石碎片
	-- ===索引: 3321638
	-- ===删除: 3321638,10
	-- ===
	tDartAct_Award[3321638] = {}
	tDartAct_Award[3321638]["LogId"] = 12001430
	tDartAct_Award[3321638]["DeleteItem"] = {}
	tDartAct_Award[3321638]["DeleteItem"][1] = {}
	tDartAct_Award[3321638]["DeleteItem"][1]["Id"] = 3321638 -- 【库】大块祈愿石碎片[属性:8]
	tDartAct_Award[3321638]["DeleteItem"][1]["ItemNum"] = 5
	tDartAct_Award[3321638]["RewardItem"] = {}
	tDartAct_Award[3321638]["RewardItem"][1] = {}
	tDartAct_Award[3321638]["RewardItem"][1]["Id"] = 1200001 -- 【库】大块祈愿石[属性:0]【表格】大块祈愿石
	tDartAct_Award[3321638]["RewardItem"][1]["Attr"] = "0 1" -- 大块祈愿石*1
	tDartAct_Award[3321638]["RewardEffect"] = {}
	tDartAct_Award[3321638]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDartAct_Award[3321638]["RewardEffect"]["Effect"] = "angelwing"


	-- ===固化石礼包碎片
	-- ===索引: 3321639
	-- ===删除: 3321639,20
	-- ===
	tDartAct_Award[3321639] = {}
	tDartAct_Award[3321639]["LogId"] = 12001430
	tDartAct_Award[3321639]["DeleteItem"] = {}
	tDartAct_Award[3321639]["DeleteItem"][1] = {}
	tDartAct_Award[3321639]["DeleteItem"][1]["Id"] = 3321639 -- 【库】固化石礼包碎片[属性:8]
	tDartAct_Award[3321639]["DeleteItem"][1]["ItemNum"] = 10
	tDartAct_Award[3321639]["RewardItem"] = {}
	tDartAct_Award[3321639]["RewardItem"][1] = {}
	tDartAct_Award[3321639]["RewardItem"][1]["Id"] = 723694 -- 【库】固化石[属性:0]【表格】固化石
	tDartAct_Award[3321639]["RewardItem"][1]["Attr"] = "0 3" -- 固化石*3
	tDartAct_Award[3321639]["RewardEffect"] = {}
	tDartAct_Award[3321639]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDartAct_Award[3321639]["RewardEffect"]["Effect"] = "angelwing"


	-- ===晶莹星陨石碎片
	-- ===索引: 3321640
	-- ===删除: 3321640,50
	-- ===
	tDartAct_Award[3321640] = {}
	tDartAct_Award[3321640]["LogId"] = 12001430
	tDartAct_Award[3321640]["DeleteItem"] = {}
	tDartAct_Award[3321640]["DeleteItem"][1] = {}
	tDartAct_Award[3321640]["DeleteItem"][1]["Id"] = 3321640 -- 【库】晶莹星陨石碎片[属性:8]
	tDartAct_Award[3321640]["DeleteItem"][1]["ItemNum"] = 2
	tDartAct_Award[3321640]["RewardItem"] = {}
	tDartAct_Award[3321640]["RewardItem"][1] = {}
	tDartAct_Award[3321640]["RewardItem"][1]["Id"] = 3009002 -- 【库】晶莹星陨石[属性:9]【表格】晶莹星陨石
	tDartAct_Award[3321640]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的晶莹星陨石*1
	tDartAct_Award[3321640]["RewardEffect"] = {}
	tDartAct_Award[3321640]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDartAct_Award[3321640]["RewardEffect"]["Effect"] = "angelwing"


	-- ===流星卷礼包碎片
	-- ===索引: 3321641
	-- ===删除: 3321641,20
	-- ===
	tDartAct_Award[3321641] = {}
	tDartAct_Award[3321641]["LogId"] = 12001430
	tDartAct_Award[3321641]["DeleteItem"] = {}
	tDartAct_Award[3321641]["DeleteItem"][1] = {}
	tDartAct_Award[3321641]["DeleteItem"][1]["Id"] = 3321641 -- 【库】流星卷礼包碎片[属性:8]
	tDartAct_Award[3321641]["DeleteItem"][1]["ItemNum"] = 10
	tDartAct_Award[3321641]["RewardItem"] = {}
	tDartAct_Award[3321641]["RewardItem"][1] = {}
	tDartAct_Award[3321641]["RewardItem"][1]["Id"] = 3321665 -- 【库】 超级流星卷[属性:8]【表格】超级流星卷
	tDartAct_Award[3321641]["RewardItem"][1]["Attr"] = "0 1" --  超级流星卷*1
	tDartAct_Award[3321641]["RewardEffect"] = {}
	tDartAct_Award[3321641]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDartAct_Award[3321641]["RewardEffect"]["Effect"] = "angelwing"


	-- ===龙珠礼包碎片
	-- ===索引: 3321642
	-- ===删除: 3321642,20
	-- ===
	tDartAct_Award[3321642] = {}
	tDartAct_Award[3321642]["LogId"] = 12001430
	tDartAct_Award[3321642]["DeleteItem"] = {}
	tDartAct_Award[3321642]["DeleteItem"][1] = {}
	tDartAct_Award[3321642]["DeleteItem"][1]["Id"] = 3321642 -- 【库】龙珠礼包碎片[属性:8]
	tDartAct_Award[3321642]["DeleteItem"][1]["ItemNum"] = 10
	tDartAct_Award[3321642]["RewardItem"] = {}
	tDartAct_Award[3321642]["RewardItem"][1] = {}
	tDartAct_Award[3321642]["RewardItem"][1]["Id"] = 720028 -- 【库】龙珠卷[属性:8]【表格】龙珠卷
	tDartAct_Award[3321642]["RewardItem"][1]["Attr"] = "0 1" -- 龙珠卷*1
	tDartAct_Award[3321642]["RewardEffect"] = {}
	tDartAct_Award[3321642]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDartAct_Award[3321642]["RewardEffect"]["Effect"] = "angelwing"


	-- ===蛮荒骨符碎片
	-- ===索引: 3321643
	-- ===删除: 3321643,50
	-- ===
	tDartAct_Award[3321643] = {}
	tDartAct_Award[3321643]["LogId"] = 12001430
	tDartAct_Award[3321643]["DeleteItem"] = {}
	tDartAct_Award[3321643]["DeleteItem"][1] = {}
	tDartAct_Award[3321643]["DeleteItem"][1]["Id"] = 3321643 -- 【库】蛮荒骨符碎片[属性:8]
	tDartAct_Award[3321643]["DeleteItem"][1]["ItemNum"] = 20
	tDartAct_Award[3321643]["RewardItem"] = {}
	tDartAct_Award[3321643]["RewardItem"][1] = {}
	tDartAct_Award[3321643]["RewardItem"][1]["Id"] = 3004181 -- 【库】蛮荒骨符[属性:0]【表格】蛮荒骨符
	tDartAct_Award[3321643]["RewardItem"][1]["Attr"] = "0 1" -- 蛮荒骨符*1
	tDartAct_Award[3321643]["RewardEffect"] = {}
	tDartAct_Award[3321643]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDartAct_Award[3321643]["RewardEffect"]["Effect"] = "angelwing"


	-- ===明亮星陨石碎片
	-- ===索引: 3321644
	-- ===删除: 3321644,10
	-- ===
	tDartAct_Award[3321644] = {}
	tDartAct_Award[3321644]["LogId"] = 12001430
	tDartAct_Award[3321644]["DeleteItem"] = {}
	tDartAct_Award[3321644]["DeleteItem"][1] = {}
	tDartAct_Award[3321644]["DeleteItem"][1]["Id"] = 3321644 -- 【库】明亮星陨石碎片[属性:8]
	tDartAct_Award[3321644]["DeleteItem"][1]["ItemNum"] = 1
	tDartAct_Award[3321644]["RewardItem"] = {}
	tDartAct_Award[3321644]["RewardItem"][1] = {}
	tDartAct_Award[3321644]["RewardItem"][1]["Id"] = 3009001 -- 【库】明亮星陨石[属性:9]【表格】明亮星陨石
	tDartAct_Award[3321644]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的明亮星陨石*1
	tDartAct_Award[3321644]["RewardEffect"] = {}
	tDartAct_Award[3321644]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDartAct_Award[3321644]["RewardEffect"]["Effect"] = "angelwing"


	-- ===10万气力值包碎片
	-- ===索引: 3321645
	-- ===删除: 3321645,50
	-- ===
	tDartAct_Award[3321645] = {}
	tDartAct_Award[3321645]["LogId"] = 12001430
	tDartAct_Award[3321645]["DeleteItem"] = {}
	tDartAct_Award[3321645]["DeleteItem"][1] = {}
	tDartAct_Award[3321645]["DeleteItem"][1]["Id"] = 3321645 -- 【库】10万气力值包碎片[属性:8]
	tDartAct_Award[3321645]["DeleteItem"][1]["ItemNum"] = 20
	tDartAct_Award[3321645]["RewardStrengthValue"] = {}
	tDartAct_Award[3321645]["RewardStrengthValue"]["Value"] = 100000 -- 气力值
	tDartAct_Award[3321645]["RewardEffect"] = {}
	tDartAct_Award[3321645]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDartAct_Award[3321645]["RewardEffect"]["Effect"] = "angelwing"


	-- ===2万气力值包碎片
	-- ===索引: 3321646
	-- ===删除: 3321646,20
	-- ===
	tDartAct_Award[3321646] = {}
	tDartAct_Award[3321646]["LogId"] = 12001430
	tDartAct_Award[3321646]["DeleteItem"] = {}
	tDartAct_Award[3321646]["DeleteItem"][1] = {}
	tDartAct_Award[3321646]["DeleteItem"][1]["Id"] = 3321646 -- 【库】2万气力值包碎片[属性:8]
	tDartAct_Award[3321646]["DeleteItem"][1]["ItemNum"] = 10
	tDartAct_Award[3321646]["RewardStrengthValue"] = {}
	tDartAct_Award[3321646]["RewardStrengthValue"]["Value"] = 20000 -- 气力值
	tDartAct_Award[3321646]["RewardEffect"] = {}
	tDartAct_Award[3321646]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDartAct_Award[3321646]["RewardEffect"]["Effect"] = "angelwing"


	-- ===5000气力值包碎片
	-- ===索引: 3321647
	-- ===删除: 3321647,10
	-- ===
	tDartAct_Award[3321647] = {}
	tDartAct_Award[3321647]["LogId"] = 12001430
	tDartAct_Award[3321647]["DeleteItem"] = {}
	tDartAct_Award[3321647]["DeleteItem"][1] = {}
	tDartAct_Award[3321647]["DeleteItem"][1]["Id"] = 3321647 -- 【库】5000气力值包碎片[属性:8]
	tDartAct_Award[3321647]["DeleteItem"][1]["ItemNum"] = 5
	tDartAct_Award[3321647]["RewardStrengthValue"] = {}
	tDartAct_Award[3321647]["RewardStrengthValue"]["Value"] = 5000 -- 气力值
	tDartAct_Award[3321647]["RewardEffect"] = {}
	tDartAct_Award[3321647]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDartAct_Award[3321647]["RewardEffect"]["Effect"] = "angelwing"


	-- ===乾坤令（小）碎片
	-- ===索引: 3321648
	-- ===删除: 3321648,10
	-- ===
	tDartAct_Award[3321648] = {}
	tDartAct_Award[3321648]["LogId"] = 12001430
	tDartAct_Award[3321648]["DeleteItem"] = {}
	tDartAct_Award[3321648]["DeleteItem"][1] = {}
	tDartAct_Award[3321648]["DeleteItem"][1]["Id"] = 3321648 -- 【库】乾坤令（小）碎片[属性:8]
	tDartAct_Award[3321648]["DeleteItem"][1]["ItemNum"] = 5
	tDartAct_Award[3321648]["RewardItem"] = {}
	tDartAct_Award[3321648]["RewardItem"][1] = {}
	tDartAct_Award[3321648]["RewardItem"][1]["Id"] = 722840 -- 【库】乾坤令（小）[属性:0]【表格】乾坤令（小）
	tDartAct_Award[3321648]["RewardItem"][1]["Attr"] = "0 1" -- 乾坤令（小）*1
	tDartAct_Award[3321648]["RewardEffect"] = {}
	tDartAct_Award[3321648]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDartAct_Award[3321648]["RewardEffect"]["Effect"] = "angelwing"


	-- ===人参果碎片
	-- ===索引: 3321649
	-- ===删除: 3321649,2
	-- ===
	tDartAct_Award[3321649] = {}
	tDartAct_Award[3321649]["LogId"] = 12001430
	tDartAct_Award[3321649]["DeleteItem"] = {}
	tDartAct_Award[3321649]["DeleteItem"][1] = {}
	tDartAct_Award[3321649]["DeleteItem"][1]["Id"] = 3321649 -- 【库】人参果碎片[属性:8]
	tDartAct_Award[3321649]["DeleteItem"][1]["ItemNum"] = 2
	tDartAct_Award[3321649]["RewardItem"] = {}
	tDartAct_Award[3321649]["RewardItem"][1] = {}
	tDartAct_Award[3321649]["RewardItem"][1]["Id"] = 3009100 -- 【库】人参果[属性:9]【表格】人参果
	tDartAct_Award[3321649]["RewardItem"][1]["Attr"] = "0 1" -- 人参果*1
	tDartAct_Award[3321649]["RewardEffect"] = {}
	tDartAct_Award[3321649]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDartAct_Award[3321649]["RewardEffect"]["Effect"] = "angelwing"


	-- ===天灵果碎片
	-- ===索引: 3321650
	-- ===删除: 3321650,10
	-- ===
	tDartAct_Award[3321650] = {}
	tDartAct_Award[3321650]["LogId"] = 12001430
	tDartAct_Award[3321650]["DeleteItem"] = {}
	tDartAct_Award[3321650]["DeleteItem"][1] = {}
	tDartAct_Award[3321650]["DeleteItem"][1]["Id"] = 3321650 -- 【库】天灵果碎片[属性:8]
	tDartAct_Award[3321650]["DeleteItem"][1]["ItemNum"] = 5
	tDartAct_Award[3321650]["RewardItem"] = {}
	tDartAct_Award[3321650]["RewardItem"][1] = {}
	tDartAct_Award[3321650]["RewardItem"][1]["Id"] = 3009103 -- 【库】天灵果[属性:9]【表格】天灵果
	tDartAct_Award[3321650]["RewardItem"][1]["Attr"] = "0 1" -- 天灵果*1
	tDartAct_Award[3321650]["RewardEffect"] = {}
	tDartAct_Award[3321650]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDartAct_Award[3321650]["RewardEffect"]["Effect"] = "angelwing"


	-- ===微光星陨石碎片
	-- ===索引: 3321651
	-- ===删除: 3321651,2
	-- ===
	tDartAct_Award[3321651] = {}
	tDartAct_Award[3321651]["LogId"] = 12001430
	tDartAct_Award[3321651]["DeleteItem"] = {}
	tDartAct_Award[3321651]["DeleteItem"][1] = {}
	tDartAct_Award[3321651]["DeleteItem"][1]["Id"] = 3321651 -- 【库】微光星陨石碎片[属性:8]
	tDartAct_Award[3321651]["DeleteItem"][1]["ItemNum"] = 1
	tDartAct_Award[3321651]["RewardItem"] = {}
	tDartAct_Award[3321651]["RewardItem"][1] = {}
	tDartAct_Award[3321651]["RewardItem"][1]["Id"] = 3009000 -- 【库】微光星陨石[属性:9]【表格】微光星陨石
	tDartAct_Award[3321651]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的微光星陨石*1
	tDartAct_Award[3321651]["RewardEffect"] = {}
	tDartAct_Award[3321651]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDartAct_Award[3321651]["RewardEffect"]["Effect"] = "angelwing"


	-- ===血菩提礼包碎片
	-- ===索引: 3321652
	-- ===删除: 3321652,20
	-- ===
	tDartAct_Award[3321652] = {}
	tDartAct_Award[3321652]["LogId"] = 12001430
	tDartAct_Award[3321652]["DeleteItem"] = {}
	tDartAct_Award[3321652]["DeleteItem"][1] = {}
	tDartAct_Award[3321652]["DeleteItem"][1]["Id"] = 3321652 -- 【库】血菩提礼包碎片[属性:8]
	tDartAct_Award[3321652]["DeleteItem"][1]["ItemNum"] = 10
	tDartAct_Award[3321652]["RewardItem"] = {}
	tDartAct_Award[3321652]["RewardItem"][1] = {}
	tDartAct_Award[3321652]["RewardItem"][1]["Id"] = 3009104 -- 【库】血菩提[属性:9]【表格】血菩提
	tDartAct_Award[3321652]["RewardItem"][1]["Attr"] = "0 2" -- 血菩提*2
	tDartAct_Award[3321652]["RewardEffect"] = {}
	tDartAct_Award[3321652]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDartAct_Award[3321652]["RewardEffect"]["Effect"] = "angelwing"


	-- ===超大固化石大礼包（2颗）碎片
	-- ===索引: 3321653
	-- ===删除: 3321653,50
	-- ===
	tDartAct_Award[3321653] = {}
	tDartAct_Award[3321653]["LogId"] = 12001430
	tDartAct_Award[3321653]["DeleteItem"] = {}
	tDartAct_Award[3321653]["DeleteItem"][1] = {}
	tDartAct_Award[3321653]["DeleteItem"][1]["Id"] = 3321653 -- 【库】超大固化石(赠)碎片[属性:9]
	tDartAct_Award[3321653]["DeleteItem"][1]["ItemNum"] = 20
	tDartAct_Award[3321653]["RewardItem"] = {}
	tDartAct_Award[3321653]["RewardItem"][1] = {}
	tDartAct_Award[3321653]["RewardItem"][1]["Id"] = 723695 -- 【库】超大固化石[属性:0]【表格】超大固化石
	tDartAct_Award[3321653]["RewardItem"][1]["Attr"] = "0 2 3" -- 超大固化石(赠)*2
	tDartAct_Award[3321653]["RewardEffect"] = {}
	tDartAct_Award[3321653]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDartAct_Award[3321653]["RewardEffect"]["Effect"] = "angelwing"


	-- ===1赤炼石（赠）碎片
	-- ===索引: 3321654
	-- ===删除: 3321654,2
	-- ===
	tDartAct_Award[3321654] = {}
	tDartAct_Award[3321654]["LogId"] = 12001430
	tDartAct_Award[3321654]["DeleteItem"] = {}
	tDartAct_Award[3321654]["DeleteItem"][1] = {}
	tDartAct_Award[3321654]["DeleteItem"][1]["Id"] = 3321654 -- 【库】+1赤炼石（赠）碎片[属性:9]
	tDartAct_Award[3321654]["DeleteItem"][1]["ItemNum"] = 2
	tDartAct_Award[3321654]["RewardItem"] = {}
	tDartAct_Award[3321654]["RewardItem"][1] = {}
	tDartAct_Award[3321654]["RewardItem"][1]["Id"] = 730001 -- 【库】+1赤炼石[属性:0]【表格】赤练石+1
	tDartAct_Award[3321654]["RewardItem"][1]["Attr"] = "0 1 3" -- +1赤炼石(赠)*1
	tDartAct_Award[3321654]["RewardEffect"] = {}
	tDartAct_Award[3321654]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDartAct_Award[3321654]["RewardEffect"]["Effect"] = "angelwing"


	-- ===赤练石+5礼包（3颗）碎片
	-- ===索引: 3321655
	-- ===删除: 3321655,20
	-- ===
	tDartAct_Award[3321655] = {}
	tDartAct_Award[3321655]["LogId"] = 12001430
	tDartAct_Award[3321655]["DeleteItem"] = {}
	tDartAct_Award[3321655]["DeleteItem"][1] = {}
	tDartAct_Award[3321655]["DeleteItem"][1]["Id"] = 3321655 -- 【库】+5赤炼石（赠）碎片[属性:9]
	tDartAct_Award[3321655]["DeleteItem"][1]["ItemNum"] = 10
	tDartAct_Award[3321655]["RewardItem"] = {}
	tDartAct_Award[3321655]["RewardItem"][1] = {}
	tDartAct_Award[3321655]["RewardItem"][1]["Id"] = 730005 -- 【库】+5赤炼石[属性:0]【表格】赤练石+5
	tDartAct_Award[3321655]["RewardItem"][1]["Attr"] = "0 3 3" -- +5赤炼石(赠)*3
	tDartAct_Award[3321655]["RewardEffect"] = {}
	tDartAct_Award[3321655]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDartAct_Award[3321655]["RewardEffect"]["Effect"] = "angelwing"


	-- ===赤练石+6礼包（4颗）碎片
	-- ===索引: 3321656
	-- ===删除: 3321656,50
	-- ===
	tDartAct_Award[3321656] = {}
	tDartAct_Award[3321656]["LogId"] = 12001430
	tDartAct_Award[3321656]["DeleteItem"] = {}
	tDartAct_Award[3321656]["DeleteItem"][1] = {}
	tDartAct_Award[3321656]["DeleteItem"][1]["Id"] = 3321656 -- 【库】+6赤炼石（赠）碎片[属性:9]
	tDartAct_Award[3321656]["DeleteItem"][1]["ItemNum"] = 20
	tDartAct_Award[3321656]["RewardItem"] = {}
	tDartAct_Award[3321656]["RewardItem"][1] = {}
	tDartAct_Award[3321656]["RewardItem"][1]["Id"] = 730006 -- 【库】+6赤炼石[属性:0]【表格】赤练石+6
	tDartAct_Award[3321656]["RewardItem"][1]["Attr"] = "0 4 3" -- +6赤炼石(赠)*4
	tDartAct_Award[3321656]["RewardEffect"] = {}
	tDartAct_Award[3321656]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDartAct_Award[3321656]["RewardEffect"]["Effect"] = "angelwing"


	-- ===大块祈愿石碎片
	-- ===索引: 3321657
	-- ===删除: 3321657,10
	-- ===
	tDartAct_Award[3321657] = {}
	tDartAct_Award[3321657]["LogId"] = 12001430
	tDartAct_Award[3321657]["DeleteItem"] = {}
	tDartAct_Award[3321657]["DeleteItem"][1] = {}
	tDartAct_Award[3321657]["DeleteItem"][1]["Id"] = 3321657 -- 【库】大块祈愿石（赠）碎片[属性:9]
	tDartAct_Award[3321657]["DeleteItem"][1]["ItemNum"] = 5
	tDartAct_Award[3321657]["RewardItem"] = {}
	tDartAct_Award[3321657]["RewardItem"][1] = {}
	tDartAct_Award[3321657]["RewardItem"][1]["Id"] = 1200001 -- 【库】大块祈愿石[属性:0]【表格】大块祈愿石
	tDartAct_Award[3321657]["RewardItem"][1]["Attr"] = "0 1 3" -- 大块祈愿石(赠)*1
	tDartAct_Award[3321657]["RewardEffect"] = {}
	tDartAct_Award[3321657]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDartAct_Award[3321657]["RewardEffect"]["Effect"] = "angelwing"


	-- ===固化石（3颗）礼包碎片
	-- ===索引: 3321658
	-- ===删除: 3321658,20
	-- ===
	tDartAct_Award[3321658] = {}
	tDartAct_Award[3321658]["LogId"] = 12001430
	tDartAct_Award[3321658]["DeleteItem"] = {}
	tDartAct_Award[3321658]["DeleteItem"][1] = {}
	tDartAct_Award[3321658]["DeleteItem"][1]["Id"] = 3321658 -- 【库】固化石（赠）碎片[属性:9]
	tDartAct_Award[3321658]["DeleteItem"][1]["ItemNum"] = 10
	tDartAct_Award[3321658]["RewardItem"] = {}
	tDartAct_Award[3321658]["RewardItem"][1] = {}
	tDartAct_Award[3321658]["RewardItem"][1]["Id"] = 723694 -- 【库】固化石[属性:0]【表格】固化石
	tDartAct_Award[3321658]["RewardItem"][1]["Attr"] = "0 3 3" -- 固化石(赠)*3
	tDartAct_Award[3321658]["RewardEffect"] = {}
	tDartAct_Award[3321658]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDartAct_Award[3321658]["RewardEffect"]["Effect"] = "angelwing"


	-- ===聚神丹（赠）碎片
	-- ===索引: 3321659
	-- ===删除: 3321659,2
	-- ===
	tDartAct_Award[3321659] = {}
	tDartAct_Award[3321659]["LogId"] = 12001430
	tDartAct_Award[3321659]["DeleteItem"] = {}
	tDartAct_Award[3321659]["DeleteItem"][1] = {}
	tDartAct_Award[3321659]["DeleteItem"][1]["Id"] = 3321659 -- 【库】聚神丹（赠）碎片[属性:9]
	tDartAct_Award[3321659]["DeleteItem"][1]["ItemNum"] = 2
	tDartAct_Award[3321659]["RewardItem"] = {}
	tDartAct_Award[3321659]["RewardItem"][1] = {}
	tDartAct_Award[3321659]["RewardItem"][1]["Id"] = 722136 -- 【库】聚神丹[属性:11]【表格】聚神丹
	tDartAct_Award[3321659]["RewardItem"][1]["Attr"] = "0 1" -- 聚神丹*1
	tDartAct_Award[3321659]["RewardEffect"] = {}
	tDartAct_Award[3321659]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDartAct_Award[3321659]["RewardEffect"]["Effect"] = "angelwing"


	-- ===流星（赠）碎片
	-- ===索引: 3321660
	-- ===删除: 3321660,2
	-- ===
	tDartAct_Award[3321660] = {}
	tDartAct_Award[3321660]["LogId"] = 12001430
	tDartAct_Award[3321660]["DeleteItem"] = {}
	tDartAct_Award[3321660]["DeleteItem"][1] = {}
	tDartAct_Award[3321660]["DeleteItem"][1]["Id"] = 3321660 -- 【库】流星（赠）碎片[属性:9]
	tDartAct_Award[3321660]["DeleteItem"][1]["ItemNum"] = 2
	tDartAct_Award[3321660]["RewardItem"] = {}
	tDartAct_Award[3321660]["RewardItem"][1] = {}
	tDartAct_Award[3321660]["RewardItem"][1]["Id"] = 1088001 -- 【库】流星[属性:0]【表格】流星
	tDartAct_Award[3321660]["RewardItem"][1]["Attr"] = "0 1 3" -- 流星(赠)*1
	tDartAct_Award[3321660]["RewardEffect"] = {}
	tDartAct_Award[3321660]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDartAct_Award[3321660]["RewardEffect"]["Effect"] = "angelwing"


	-- ===流星卷（15个）礼包碎片
	-- ===索引: 3321661
	-- ===删除: 3321661,20
	-- ===
	tDartAct_Award[3321661] = {}
	tDartAct_Award[3321661]["LogId"] = 12001430
	tDartAct_Award[3321661]["DeleteItem"] = {}
	tDartAct_Award[3321661]["DeleteItem"][1] = {}
	tDartAct_Award[3321661]["DeleteItem"][1]["Id"] = 3321661 -- 【库】超级流星卷（赠）碎片[属性:9]
	tDartAct_Award[3321661]["DeleteItem"][1]["ItemNum"] = 10
	tDartAct_Award[3321661]["RewardItem"] = {}
	tDartAct_Award[3321661]["RewardItem"][1] = {}
	tDartAct_Award[3321661]["RewardItem"][1]["Id"] = 3321666 -- 【库】 超级流星卷(赠)[属性:9]【表格】超级流星卷（赠）
	tDartAct_Award[3321661]["RewardItem"][1]["Attr"] = "0 1" --  超级流星卷(赠)*1
	tDartAct_Award[3321661]["RewardEffect"] = {}
	tDartAct_Award[3321661]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDartAct_Award[3321661]["RewardEffect"]["Effect"] = "angelwing"


	-- ===龙珠大礼包（10颗）碎片
	-- ===索引: 3321662
	-- ===删除: 3321662,20
	-- ===
	tDartAct_Award[3321662] = {}
	tDartAct_Award[3321662]["LogId"] = 12001430
	tDartAct_Award[3321662]["DeleteItem"] = {}
	tDartAct_Award[3321662]["DeleteItem"][1] = {}
	tDartAct_Award[3321662]["DeleteItem"][1]["Id"] = 3321662 -- 【库】龙珠（赠）碎片[属性:9]
	tDartAct_Award[3321662]["DeleteItem"][1]["ItemNum"] = 10
	tDartAct_Award[3321662]["RewardItem"] = {}
	tDartAct_Award[3321662]["RewardItem"][1] = {}
	tDartAct_Award[3321662]["RewardItem"][1]["Id"] = 3300376 -- 【库】龙珠卷[属性:9]【表格】龙珠卷（赠）
	tDartAct_Award[3321662]["RewardItem"][1]["Attr"] = "0 1" -- 龙珠卷*1
	tDartAct_Award[3321662]["RewardEffect"] = {}
	tDartAct_Award[3321662]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDartAct_Award[3321662]["RewardEffect"]["Effect"] = "angelwing"


	-- ===蛮荒骨符碎片
	-- ===索引: 3321663
	-- ===删除: 3321663,50
	-- ===
	tDartAct_Award[3321663] = {}
	tDartAct_Award[3321663]["LogId"] = 12001430
	tDartAct_Award[3321663]["DeleteItem"] = {}
	tDartAct_Award[3321663]["DeleteItem"][1] = {}
	tDartAct_Award[3321663]["DeleteItem"][1]["Id"] = 3321663 -- 【库】蛮荒骨符（赠）碎片[属性:9]
	tDartAct_Award[3321663]["DeleteItem"][1]["ItemNum"] = 20
	tDartAct_Award[3321663]["RewardItem"] = {}
	tDartAct_Award[3321663]["RewardItem"][1] = {}
	tDartAct_Award[3321663]["RewardItem"][1]["Id"] = 3004181 -- 【库】蛮荒骨符[属性:0]【表格】蛮荒骨符
	tDartAct_Award[3321663]["RewardItem"][1]["Attr"] = "0 1 3" -- 蛮荒骨符(赠)*1
	tDartAct_Award[3321663]["RewardEffect"] = {}
	tDartAct_Award[3321663]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDartAct_Award[3321663]["RewardEffect"]["Effect"] = "angelwing"


	-- ===乾坤令（小）碎片
	-- ===索引: 3321664
	-- ===删除: 3321664,10
	-- ===
	tDartAct_Award[3321664] = {}
	tDartAct_Award[3321664]["LogId"] = 12001430
	tDartAct_Award[3321664]["DeleteItem"] = {}
	tDartAct_Award[3321664]["DeleteItem"][1] = {}
	tDartAct_Award[3321664]["DeleteItem"][1]["Id"] = 3321664 -- 【库】赠品乾坤令（小）碎片[属性:9]
	tDartAct_Award[3321664]["DeleteItem"][1]["ItemNum"] = 5
	tDartAct_Award[3321664]["RewardItem"] = {}
	tDartAct_Award[3321664]["RewardItem"][1] = {}
	tDartAct_Award[3321664]["RewardItem"][1]["Id"] = 722840 -- 【库】乾坤令（小）[属性:0]【表格】乾坤令（小）
	tDartAct_Award[3321664]["RewardItem"][1]["Attr"] = "0 1 3" -- 乾坤令（小）(赠)*1
	tDartAct_Award[3321664]["RewardEffect"] = {}
	tDartAct_Award[3321664]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDartAct_Award[3321664]["RewardEffect"]["Effect"] = "angelwing"


	-- ===超级流星卷
	-- ===索引: 3321665
	-- ===删除: 3321665,1
	-- ===
	tDartAct_Award[3321665] = {}
	tDartAct_Award[3321665]["LogId"] = 12001430
	tDartAct_Award[3321665]["DeleteItem"] = {}
	tDartAct_Award[3321665]["DeleteItem"][1] = {}
	tDartAct_Award[3321665]["DeleteItem"][1]["Id"] = 3321665 -- 【库】 超级流星卷[属性:8]
	tDartAct_Award[3321665]["RewardItem"] = {}
	tDartAct_Award[3321665]["RewardItem"][1] = {}
	tDartAct_Award[3321665]["RewardItem"][1]["Id"] = 720027 -- 【库】流星卷[属性:0]【表格】流星卷
	tDartAct_Award[3321665]["RewardItem"][1]["Attr"] = "0 15" -- 流星卷*15
	tDartAct_Award[3321665]["RewardEffect"] = {}
	tDartAct_Award[3321665]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDartAct_Award[3321665]["RewardEffect"]["Effect"] = "angelwing"


	-- ===超级流星卷(赠)
	-- ===索引: 3321666
	-- ===删除: 3321666,1
	-- ===
	tDartAct_Award[3321666] = {}
	tDartAct_Award[3321666]["LogId"] = 12001430
	tDartAct_Award[3321666]["DeleteItem"] = {}
	tDartAct_Award[3321666]["DeleteItem"][1] = {}
	tDartAct_Award[3321666]["DeleteItem"][1]["Id"] = 3321666 -- 【库】 超级流星卷(赠)[属性:9]
	tDartAct_Award[3321666]["RewardItem"] = {}
	tDartAct_Award[3321666]["RewardItem"][1] = {}
	tDartAct_Award[3321666]["RewardItem"][1]["Id"] = 3321667 -- 【库】 流星卷(赠)[属性:9]【表格】流星卷(赠
	tDartAct_Award[3321666]["RewardItem"][1]["Attr"] = "0 15" --  流星卷(赠)*15
	tDartAct_Award[3321666]["RewardEffect"] = {}
	tDartAct_Award[3321666]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDartAct_Award[3321666]["RewardEffect"]["Effect"] = "angelwing"


	-- ===流星卷(赠)
	-- ===索引: 3321667
	-- ===删除: 3321667,1
	-- ===
	tDartAct_Award[3321667] = {}
	tDartAct_Award[3321667]["LogId"] = 12001430
	tDartAct_Award[3321667]["DeleteItem"] = {}
	tDartAct_Award[3321667]["DeleteItem"][1] = {}
	tDartAct_Award[3321667]["DeleteItem"][1]["Id"] = 3321667 -- 【库】 流星卷(赠)[属性:9]
	tDartAct_Award[3321667]["RewardItem"] = {}
	tDartAct_Award[3321667]["RewardItem"][1] = {}
	tDartAct_Award[3321667]["RewardItem"][1]["Id"] = 1088001 -- 【库】流星[属性:0]【表格】流星
	tDartAct_Award[3321667]["RewardItem"][1]["Attr"] = "0 10 3" -- 流星(赠)*10
	tDartAct_Award[3321667]["RewardEffect"] = {}
	tDartAct_Award[3321667]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDartAct_Award[3321667]["RewardEffect"]["Effect"] = "angelwing"



----------------------------------逻辑部分-------------------------------------------
--打开内嵌
function DartAct_OpenWeb(nNpcId)
	if CommonFunc_GetBeforeActivityTime(tActivityTime["DartAct"]["ActivityTime"]) then 
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end 
	if not Sys_ChkFullTime(tActivityTime["DartAct"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end 
	local nUserId = Get_UserId()
	User_SendWebDialog(tDartAct_Data["Https"],nUserId)
end 


--二次确认
function DartAct_BuyDart(nNpcId,nEmoney,nNum)

	Sys_DialogText(tDartAct_Text[24280]["Text231"])
	Sys_DialogText(string.format(tDartAct_Text[24280]["Text232"],nNum,nEmoney))
	Sys_DialogOption(tDartAct_Text[24280]["Option231"],"</F>DartAct_BuyDartSure</N>"..nEmoney.."</N>"..nNpcId.."</N>"..nNum)
	Sys_DialogOption(tDartAct_Text[24280]["Option232"],"</F>NULL")
	Sys_DialogFace(nNpcId)
	Sys_DialogEnd()
	
end 


function DartAct_BuyDartSure(nEmoney,nNpcId,nNum)
	-- 判断金币是否足够
	if not User_CanPutMoney2Bag(-nEmoney) then
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end
	local nEvent_1 = tDartAct_Stc["EventType"][1]
	local nData_1 = tDartAct_Stc["DataType"][1]
	
	local nEvent_2 = tDartAct_Stc["EventType"][2]
	local nData_2 = tDartAct_Stc["DataType"][2]
	
	-- local nUserId = Get_UserId()
	
	if User_AddMoney(-nEmoney) then
	
		Task_AddStatistic(nEvent_1,nData_1,nEmoney,1)
		Task_SetStcTimestamp(nEvent_1,nData_1,0)
		
		Task_AddStatistic(nEvent_2,nData_2,nNum,1)
		Task_SetStcTimestamp(nEvent_2,nData_2,0)
		
		Sys_SaveEmoneyBuy(tDartAct_Log["EmoneyLog"][nEmoney])
		Sys_DialogText(tDartAct_Text[24280]["Text241"])
		Sys_DialogText(string.format(tDartAct_Text[24280]["Text242"],nNum))
		Sys_DialogOption(tDartAct_Text[24280]["Option241"],"</F>DartAct_OpenWeb</N>"..nNpcId)
		Sys_DialogOption(tDartAct_Text[24280]["Option242"],"</F>NULL")
		Sys_DialogFace(nNpcId)
		Sys_DialogEnd()
		
	end

end 


----------------------------------npc部分---------------------------------------------

-- 24280,'李巡欢',0002,5988
tNpcFace[5988] = 74

tNpcGossip[24280] = tNpcGossip[24280] or DefaultNpc:new{}
tNpcGossip[24280]["OptionHidden"] = 1
tNpcGossip[24280]["DialogueText"] = tDartAct_Text[24280]

--活动时间前
tNpcGossip[24280]["Text1-1"] = {111,112}
tNpcGossip[24280]["Text111"] = tDartAct_Text[24280]["Text111"]
tNpcGossip[24280]["Text112"] = tDartAct_Text[24280]["Text112"]
    
tNpcGossip[24280]["tOption1-1"] = {111}
tNpcGossip[24280]["ChkFunc1-1"] = function()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["DartAct"]["ActivityTime"])
end
tNpcGossip[24280]["Option111"] = tDartAct_Text[24280]["Option111"] 

--活动时间中
tNpcGossip[24280]["Text1-2"] = {121,122,123}
tNpcGossip[24280]["Text121"] = tDartAct_Text[24280]["Text121"]
tNpcGossip[24280]["Text122"] = tDartAct_Text[24280]["Text122"]
tNpcGossip[24280]["Text123"] = tDartAct_Text[24280]["Text123"]

tNpcGossip[24280]["tOption1-2"] = {121,122}
tNpcGossip[24280]["ChkFunc1-2"] = function()

	return Sys_ChkFullTime(tActivityTime["DartAct"]["ActivityTime"])
	
end
tNpcGossip[24280]["Option121"] = tDartAct_Text[24280]["Option121"] 
tNpcGossip[24280]["OptionFunc121"] = "DartAct_OpenWeb</N>24280"

tNpcGossip[24280]["Option122"] = tDartAct_Text[24280]["Option122"] 
tNpcGossip[24280]["OptionPoint122"] = "2-1"

--活动时间后
tNpcGossip[24280]["Text1-3"] = {131,132}
tNpcGossip[24280]["Text131"] = tDartAct_Text[24280]["Text131"]
tNpcGossip[24280]["Text132"] = tDartAct_Text[24280]["Text132"]

tNpcGossip[24280]["tOption1-3"] = {131}
tNpcGossip[24280]["ChkFunc1-3"] = function()
	
	return not Sys_ChkFullTime(tActivityTime["DartAct"]["ActivityTime"])
end
tNpcGossip[24280]["Option131"] = tDartAct_Text[24280]["Option131"] 


-- 购买飞刀
tNpcGossip[24280]["Text2-1"] = {211,212}
tNpcGossip[24280]["Text211"] = tDartAct_Text[24280]["Text211"]
tNpcGossip[24280]["Text212"] = tDartAct_Text[24280]["Text212"]
           
tNpcGossip[24280]["tOption2-1"] = {211,212,213,214,215}
tNpcGossip[24280]["Option211"] = tDartAct_Text[24280]["Option211"] 
tNpcGossip[24280]["Option212"] = tDartAct_Text[24280]["Option212"] 
tNpcGossip[24280]["Option213"] = tDartAct_Text[24280]["Option213"] 
tNpcGossip[24280]["Option214"] = tDartAct_Text[24280]["Option214"] 
tNpcGossip[24280]["Option215"] = tDartAct_Text[24280]["Option215"] 


tNpcGossip[24280]["OptionFunc211"] = "DartAct_BuyDart</N>24280</N>240000</N>1"
tNpcGossip[24280]["OptionFunc212"] = "DartAct_BuyDart</N>24280</N>2400000</N>10"
tNpcGossip[24280]["OptionFunc213"] = "DartAct_BuyDart</N>24280</N>24000000</N>100"
tNpcGossip[24280]["OptionFunc214"] = "DartAct_BuyDart</N>24280</N>72000000</N>300"
tNpcGossip[24280]["OptionFunc215"] = "DartAct_BuyDart</N>24280</N>240000000</N>1000"


-- 金币不足
tNpcGossip[24280]["Text2-2"] = {221,222}
tNpcGossip[24280]["Text221"] = tDartAct_Text[24280]["Text221"]
          
tNpcGossip[24280]["tOption2-2"] = {221}
tNpcGossip[24280]["Option221"] = tDartAct_Text[24280]["Option221"] 


---------------------------------------------------物品部分--------------------------------------------------
-- 3321634,'超大固化石礼包碎片',8,98		
-- 3321635,'+5赤炼石包碎片',8,984715	
-- 3321636,'+6赤炼石礼包碎片',8,9847	
-- 3321637,'璀璨星陨石碎片',8,984715	
-- 3321638,'大块祈愿石碎片',8,984715	
-- 3321639,'固化石礼包碎片',8,984715	
-- 3321640,'晶莹星陨石碎片',8,984715	
-- 3321641,'流星卷礼包碎片',8,984715	
-- 3321642,'龙珠礼包碎片',8,98471500	
-- 3321643,'蛮荒骨符碎片',8,98471500	
-- 3321644,'明亮星陨石碎片',8,984715	
-- 3321645,'10万气力值包碎片',8,9847	
-- 3321646,'2万气力值包碎片',8,98471	
-- 3321647,'5000气力值包碎片',8,9847	
-- 3321648,'乾坤令（小）碎片',8,9847	
-- 3321649,'人参果碎片',8,98471500,1	
-- 3321650,'天灵果碎片',8,98471500,1	
-- 3321651,'微光星陨石碎片',8,984715	
-- 3321652,'血菩提礼包碎片',8,984715	
-- 3321653,'超大固化石(赠)碎片',9,98	
-- 3321654,'+1赤炼石（赠）碎片',9,98	
-- 3321655,'+5赤炼石（赠）碎片',9,98	
-- 3321656,'+6赤炼石（赠）碎片',9,98	
-- 3321657,'大块祈愿石（赠）碎片',9,	
-- 3321658,'固化石（赠）碎片',9,9847	
-- 3321659,'聚神丹（赠）碎片',9,9847	
-- 3321660,'流星（赠）碎片',9,984715	
-- 3321661,'超级流星卷（赠）碎片',9,	
-- 3321662,'龙珠（赠）碎片',9,984715	
-- 3321663,'蛮荒骨符（赠）碎片',9,98	
-- 3321664,'赠品乾坤令（小）碎片',9,	
	
-- 3321665,' 超级流星卷',8,98471500,	
-- 3321666,' 超级流星卷(赠)',9,98471	
-- 3321667,' 流星卷(赠)',9,98471500,	

-- tItem[3321634] = tItem[3321634] or {}
-- tItem[3321634]["Function"] = function(nItemId,sItemName)
	-- local nItemNum = tDartAct_Award[nItemId]["DeleteItem"][1]["ItemNum"]
	-- if nItemNum ~= nil then 
		-- if not Item_ChkMulItem(nItemId,nItemId,nItemNum) then
			-- User_TalkChannel2005(string.format(tDartAct_Text["Sys"]["NoItem"],sItemName))
			-- return
		-- end 
		-- RewardTemplate_UseItemAndMsg(tDartAct_Award[nItemId])	
	-- end 
	
-- end
-- tItem[3321635] = tItem[3321634] or {}
-- tItem[3321636] = tItem[3321634] or {}
-- tItem[3321637] = tItem[3321634] or {}
-- tItem[3321638] = tItem[3321634] or {}
-- tItem[3321639] = tItem[3321634] or {}
-- tItem[3321640] = tItem[3321634] or {}
-- tItem[3321641] = tItem[3321634] or {}
-- tItem[3321642] = tItem[3321634] or {}
-- tItem[3321643] = tItem[3321634] or {}
-- tItem[3321644] = tItem[3321634] or {}
-- tItem[3321645] = tItem[3321634] or {}
-- tItem[3321646] = tItem[3321634] or {}
-- tItem[3321647] = tItem[3321634] or {}
-- tItem[3321648] = tItem[3321634] or {}
-- tItem[3321649] = tItem[3321634] or {}
-- tItem[3321650] = tItem[3321634] or {}
-- tItem[3321651] = tItem[3321634] or {}
-- tItem[3321652] = tItem[3321634] or {}
-- tItem[3321653] = tItem[3321634] or {}
-- tItem[3321654] = tItem[3321634] or {}
-- tItem[3321655] = tItem[3321634] or {}
-- tItem[3321656] = tItem[3321634] or {}
-- tItem[3321657] = tItem[3321634] or {}
-- tItem[3321658] = tItem[3321634] or {}
-- tItem[3321659] = tItem[3321634] or {}
-- tItem[3321660] = tItem[3321634] or {}
-- tItem[3321661] = tItem[3321634] or {}
-- tItem[3321662] = tItem[3321634] or {}
-- tItem[3321663] = tItem[3321634] or {}
-- tItem[3321664] = tItem[3321634] or {}

-- tItem[3321665] = tItem[3321665] or {}
-- tItem[3321665]["Function"] = function(nItemId,sItemName)

	-- RewardTemplate_UseItemAndMsg(tDartAct_Award[nItemId])	
	
-- end      
-- tItem[3321666] = tItem[3321665] or {}
-- tItem[3321667] = tItem[3321665] or {}
   
      
