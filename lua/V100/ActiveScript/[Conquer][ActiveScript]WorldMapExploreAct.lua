------------------------------------------------------------------------------------
--Name：            190430[英文征服][活动脚本]世界版图探索发奖
--Creator:      蔡颖静
--Created:     2019/04/30
------------------------------------------------------------------------------------
--任务需求：

------------------------------------------------------------------------------------


----------------------------------表配置部分--------------------------------------------
local tWorldMapExploreAct_Data = {}
	-- ===阳光普照包
	-- ===索引:tWorldMapExploreAct_Data[3321271]
	-- ===删除: 3321271,1
	-- ===EMoneyLog: 10000,391,0,0,-100
	tWorldMapExploreAct_Data[3321271] = {}
	tWorldMapExploreAct_Data[3321271]["LogId"] = 12001406
	tWorldMapExploreAct_Data[3321271]["DeleteItem"] = {}
	tWorldMapExploreAct_Data[3321271]["DeleteItem"][1] = {}
	tWorldMapExploreAct_Data[3321271]["DeleteItem"][1]["Id"] = 3321271 -- 【库】 3321271 【库里没有该物品】[属性:]
	tWorldMapExploreAct_Data[3321271]["RewardItem"] = {}
	tWorldMapExploreAct_Data[3321271]["RewardItem"][1] = {}
	tWorldMapExploreAct_Data[3321271]["RewardItem"][1]["Id"] = 3306155 -- 【库】500ChiPointsPack[属性:9], 【表格】500点气力值
	tWorldMapExploreAct_Data[3321271]["RewardItem"][1]["Attr"] = "0 1" -- 500ChiPointsPack*1
	tWorldMapExploreAct_Data[3321271]["RewardEMoneyMono"] = {}
	tWorldMapExploreAct_Data[3321271]["RewardEMoneyMono"]["Value"] = 100 -- 天石（赠）, 【需求】100点天石（赠）
	tWorldMapExploreAct_Data[3321271]["EmoneyLog"] = "10000	391	0	0	-100	"
	tWorldMapExploreAct_Data[3321271]["RewardItem"][2] = {}
	tWorldMapExploreAct_Data[3321271]["RewardItem"][2]["Id"] = 3311820 -- 【库】MysticRuneStone[属性:9], 【表格】良品神纹源晶（赠）
	tWorldMapExploreAct_Data[3321271]["RewardItem"][2]["Attr"] = "0 1" -- MysticRuneStone*1
	tWorldMapExploreAct_Data[3321271]["RewardItem"][3] = {}
	tWorldMapExploreAct_Data[3321271]["RewardItem"][3]["Id"] = 730002 -- 【库】+2Stone[属性:0], 【表格】赤炼石+2（赠）
	tWorldMapExploreAct_Data[3321271]["RewardItem"][3]["Attr"] = "0 1 3 2880 1" -- 2天时效(激活)的+2Stone（赠）*1
	tWorldMapExploreAct_Data[3321271]["RewardEffect"] = {}
	tWorldMapExploreAct_Data[3321271]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWorldMapExploreAct_Data[3321271]["RewardEffect"]["Effect"] = "angelwing"


	tWorldMapExploreAct_Data[3321272] = {}
	-- ===占领探索冠军礼盒
	-- ===索引:tWorldMapExploreAct_Data[3321272]
	-- ===删除: 3321272,1
	tWorldMapExploreAct_Data[3321272]["LogId"] = 12001406
	tWorldMapExploreAct_Data[3321272]["DeleteItem"] = {}
	tWorldMapExploreAct_Data[3321272]["DeleteItem"][1] = {}
	tWorldMapExploreAct_Data[3321272]["DeleteItem"][1]["Id"] = 3321272 -- 【库】 3321272 【库里没有该物品】[属性:]
	tWorldMapExploreAct_Data[3321272]["RewardItem"] = {}
	tWorldMapExploreAct_Data[3321272]["RewardItem"][1] = {}
	tWorldMapExploreAct_Data[3321272]["RewardItem"][1]["Id"] = 4200008 -- 【库】P8Anima[属性:72], 【表格】8级灵珠
	tWorldMapExploreAct_Data[3321272]["RewardItem"][1]["Attr"] = "0 1" -- P8Anima*1
	tWorldMapExploreAct_Data[3321272]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tWorldMapExploreAct_Data[3321272]["RewardItem"][2] = {}
	tWorldMapExploreAct_Data[3321272]["RewardItem"][2]["Id"] = 3304335 -- 【库】5000ChiPointsPack[属性:9], 【表格】5000点气力值
	tWorldMapExploreAct_Data[3321272]["RewardItem"][2]["Attr"] = "0 1" -- 5000ChiPointsPack*1
	tWorldMapExploreAct_Data[3321272]["RewardItem"][3] = {}
	tWorldMapExploreAct_Data[3321272]["RewardItem"][3]["Id"] = 3311820 -- 【库】MysticRuneStone[属性:9], 【表格】良品神纹源晶（赠）
	tWorldMapExploreAct_Data[3321272]["RewardItem"][3]["Attr"] = "0 10" -- MysticRuneStone*10
	tWorldMapExploreAct_Data[3321272]["RewardItem"][4] = {}
	tWorldMapExploreAct_Data[3321272]["RewardItem"][4]["Id"] = 3009002 -- 【库】RadiantStarStone[属性:9], 【表格】晶莹星陨石
	tWorldMapExploreAct_Data[3321272]["RewardItem"][4]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的RadiantStarStone*3
	tWorldMapExploreAct_Data[3321272]["RewardEffect"] = {}
	tWorldMapExploreAct_Data[3321272]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWorldMapExploreAct_Data[3321272]["RewardEffect"]["Effect"] = "angelwing"


	tWorldMapExploreAct_Data[3321273] = {}
	-- ===占领探索亚军礼盒
	-- ===索引:tWorldMapExploreAct_Data[3321273]
	-- ===删除: 3321273,1
	tWorldMapExploreAct_Data[3321273]["LogId"] = 12001406
	tWorldMapExploreAct_Data[3321273]["DeleteItem"] = {}
	tWorldMapExploreAct_Data[3321273]["DeleteItem"][1] = {}
	tWorldMapExploreAct_Data[3321273]["DeleteItem"][1]["Id"] = 3321273 -- 【库】 3321273 【库里没有该物品】[属性:]
	tWorldMapExploreAct_Data[3321273]["RewardItem"] = {}
	tWorldMapExploreAct_Data[3321273]["RewardItem"][1] = {}
	tWorldMapExploreAct_Data[3321273]["RewardItem"][1]["Id"] = 4200007 -- 【库】P7Anima[属性:72], 【表格】7级灵珠
	tWorldMapExploreAct_Data[3321273]["RewardItem"][1]["Attr"] = "0 1" -- P7Anima*1
	tWorldMapExploreAct_Data[3321273]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tWorldMapExploreAct_Data[3321273]["RewardItem"][2] = {}
	tWorldMapExploreAct_Data[3321273]["RewardItem"][2]["Id"] = 3311142 -- 【库】4000ChiPtsBag[属性:9], 【表格】4000点气力值
	tWorldMapExploreAct_Data[3321273]["RewardItem"][2]["Attr"] = "0 1" -- 4000ChiPtsBag*1
	tWorldMapExploreAct_Data[3321273]["RewardItem"][3] = {}
	tWorldMapExploreAct_Data[3321273]["RewardItem"][3]["Id"] = 3311820 -- 【库】MysticRuneStone[属性:9], 【表格】良品神纹源晶（赠）
	tWorldMapExploreAct_Data[3321273]["RewardItem"][3]["Attr"] = "0 8" -- MysticRuneStone*8
	tWorldMapExploreAct_Data[3321273]["RewardItem"][4] = {}
	tWorldMapExploreAct_Data[3321273]["RewardItem"][4]["Id"] = 3009002 -- 【库】RadiantStarStone[属性:9], 【表格】晶莹星陨石
	tWorldMapExploreAct_Data[3321273]["RewardItem"][4]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的RadiantStarStone*2
	tWorldMapExploreAct_Data[3321273]["RewardEffect"] = {}
	tWorldMapExploreAct_Data[3321273]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWorldMapExploreAct_Data[3321273]["RewardEffect"]["Effect"] = "angelwing"


	tWorldMapExploreAct_Data[3321274] = {}
	-- ===占领探索季军礼盒
	-- ===索引:tWorldMapExploreAct_Data[3321274]
	-- ===删除: 3321274,1
	tWorldMapExploreAct_Data[3321274]["LogId"] = 12001406
	tWorldMapExploreAct_Data[3321274]["DeleteItem"] = {}
	tWorldMapExploreAct_Data[3321274]["DeleteItem"][1] = {}
	tWorldMapExploreAct_Data[3321274]["DeleteItem"][1]["Id"] = 3321274 -- 【库】 3321274 【库里没有该物品】[属性:]
	tWorldMapExploreAct_Data[3321274]["RewardItem"] = {}
	tWorldMapExploreAct_Data[3321274]["RewardItem"][1] = {}
	tWorldMapExploreAct_Data[3321274]["RewardItem"][1]["Id"] = 4200006 -- 【库】P6Anima[属性:72], 【表格】6级灵珠
	tWorldMapExploreAct_Data[3321274]["RewardItem"][1]["Attr"] = "0 1" -- P6Anima*1
	tWorldMapExploreAct_Data[3321274]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tWorldMapExploreAct_Data[3321274]["RewardItem"][2] = {}
	tWorldMapExploreAct_Data[3321274]["RewardItem"][2]["Id"] = 3320467 -- 【库】3000ChiPtsBag[属性:9], 【表格】3000点气力值
	tWorldMapExploreAct_Data[3321274]["RewardItem"][2]["Attr"] = "0 1" -- 3000ChiPtsBag*1
	tWorldMapExploreAct_Data[3321274]["RewardItem"][3] = {}
	tWorldMapExploreAct_Data[3321274]["RewardItem"][3]["Id"] = 3311820 -- 【库】MysticRuneStone[属性:9], 【表格】良品神纹源晶（赠）
	tWorldMapExploreAct_Data[3321274]["RewardItem"][3]["Attr"] = "0 6" -- MysticRuneStone*6
	tWorldMapExploreAct_Data[3321274]["RewardItem"][4] = {}
	tWorldMapExploreAct_Data[3321274]["RewardItem"][4]["Id"] = 3009002 -- 【库】RadiantStarStone[属性:9], 【表格】晶莹星陨石
	tWorldMapExploreAct_Data[3321274]["RewardItem"][4]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的RadiantStarStone*1
	tWorldMapExploreAct_Data[3321274]["RewardEffect"] = {}
	tWorldMapExploreAct_Data[3321274]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWorldMapExploreAct_Data[3321274]["RewardEffect"]["Effect"] = "angelwing"


	tWorldMapExploreAct_Data[3321275] = {}
	-- ===占领探索翘楚包
	-- ===索引:tWorldMapExploreAct_Data[3321275]
	-- ===删除: 3321275,1
	tWorldMapExploreAct_Data[3321275]["LogId"] = 12001406
	tWorldMapExploreAct_Data[3321275]["DeleteItem"] = {}
	tWorldMapExploreAct_Data[3321275]["DeleteItem"][1] = {}
	tWorldMapExploreAct_Data[3321275]["DeleteItem"][1]["Id"] = 3321275 -- 【库】 3321275 【库里没有该物品】[属性:]
	tWorldMapExploreAct_Data[3321275]["RewardItem"] = {}
	tWorldMapExploreAct_Data[3321275]["RewardItem"][1] = {}
	tWorldMapExploreAct_Data[3321275]["RewardItem"][1]["Id"] = 4200005 -- 【库】P5Anima[属性:72], 【表格】5级灵珠
	tWorldMapExploreAct_Data[3321275]["RewardItem"][1]["Attr"] = "0 1" -- P5Anima*1
	tWorldMapExploreAct_Data[3321275]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tWorldMapExploreAct_Data[3321275]["RewardItem"][2] = {}
	tWorldMapExploreAct_Data[3321275]["RewardItem"][2]["Id"] = 3300136 -- 【库】2000ChiPointsPack[属性:9], 【表格】2000点气力值
	tWorldMapExploreAct_Data[3321275]["RewardItem"][2]["Attr"] = "0 1" -- 2000ChiPointsPack*1
	tWorldMapExploreAct_Data[3321275]["RewardItem"][3] = {}
	tWorldMapExploreAct_Data[3321275]["RewardItem"][3]["Id"] = 3311820 -- 【库】MysticRuneStone[属性:9], 【表格】良品神纹源晶（赠）
	tWorldMapExploreAct_Data[3321275]["RewardItem"][3]["Attr"] = "0 4" -- MysticRuneStone*4
	tWorldMapExploreAct_Data[3321275]["RewardItem"][4] = {}
	tWorldMapExploreAct_Data[3321275]["RewardItem"][4]["Id"] = 3009001 -- 【库】BrightStarStone[属性:9], 【表格】明亮星陨石
	tWorldMapExploreAct_Data[3321275]["RewardItem"][4]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的BrightStarStone*5
	tWorldMapExploreAct_Data[3321275]["RewardEffect"] = {}
	tWorldMapExploreAct_Data[3321275]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWorldMapExploreAct_Data[3321275]["RewardEffect"]["Effect"] = "angelwing"


	tWorldMapExploreAct_Data[3321276] = {}
	-- ===占领探索精英包
	-- ===索引:tWorldMapExploreAct_Data[3321276]
	-- ===删除: 3321276,1
	tWorldMapExploreAct_Data[3321276]["LogId"] = 12001406
	tWorldMapExploreAct_Data[3321276]["DeleteItem"] = {}
	tWorldMapExploreAct_Data[3321276]["DeleteItem"][1] = {}
	tWorldMapExploreAct_Data[3321276]["DeleteItem"][1]["Id"] = 3321276 -- 【库】 3321276 【库里没有该物品】[属性:]
	tWorldMapExploreAct_Data[3321276]["RewardItem"] = {}
	tWorldMapExploreAct_Data[3321276]["RewardItem"][1] = {}
	tWorldMapExploreAct_Data[3321276]["RewardItem"][1]["Id"] = 4200004 -- 【库】P4Anima[属性:72], 【表格】4级灵珠
	tWorldMapExploreAct_Data[3321276]["RewardItem"][1]["Attr"] = "0 1" -- P4Anima*1
	tWorldMapExploreAct_Data[3321276]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tWorldMapExploreAct_Data[3321276]["RewardItem"][2] = {}
	tWorldMapExploreAct_Data[3321276]["RewardItem"][2]["Id"] = 3301810 -- 【库】1000ChiPointsPack[属性:9], 【表格】1000点气力值
	tWorldMapExploreAct_Data[3321276]["RewardItem"][2]["Attr"] = "0 1" -- 1000ChiPointsPack*1
	tWorldMapExploreAct_Data[3321276]["RewardItem"][3] = {}
	tWorldMapExploreAct_Data[3321276]["RewardItem"][3]["Id"] = 3311820 -- 【库】MysticRuneStone[属性:9], 【表格】良品神纹源晶（赠）
	tWorldMapExploreAct_Data[3321276]["RewardItem"][3]["Attr"] = "0 2" -- MysticRuneStone*2
	tWorldMapExploreAct_Data[3321276]["RewardItem"][4] = {}
	tWorldMapExploreAct_Data[3321276]["RewardItem"][4]["Id"] = 3009001 -- 【库】BrightStarStone[属性:9], 【表格】明亮星陨石
	tWorldMapExploreAct_Data[3321276]["RewardItem"][4]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的BrightStarStone*3
	tWorldMapExploreAct_Data[3321276]["RewardEffect"] = {}
	tWorldMapExploreAct_Data[3321276]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWorldMapExploreAct_Data[3321276]["RewardEffect"]["Effect"] = "angelwing"


	tWorldMapExploreAct_Data[3321277] = {}
	-- ===未占领探索冠军礼盒
	-- ===索引:tWorldMapExploreAct_Data[3321277]
	-- ===删除: 3321277,1
	tWorldMapExploreAct_Data[3321277]["LogId"] = 12001406
	tWorldMapExploreAct_Data[3321277]["DeleteItem"] = {}
	tWorldMapExploreAct_Data[3321277]["DeleteItem"][1] = {}
	tWorldMapExploreAct_Data[3321277]["DeleteItem"][1]["Id"] = 3321277 -- 【库】 3321277 【库里没有该物品】[属性:]
	tWorldMapExploreAct_Data[3321277]["RewardItem"] = {}
	tWorldMapExploreAct_Data[3321277]["RewardItem"][1] = {}
	tWorldMapExploreAct_Data[3321277]["RewardItem"][1]["Id"] = 3309995 -- 【库】1000ChiPointsBag[属性:9], 【表格】1000点气力值
	tWorldMapExploreAct_Data[3321277]["RewardItem"][1]["Attr"] = "0 1" -- 1000ChiPointsBag*1
	tWorldMapExploreAct_Data[3321277]["RewardItem"][2] = {}
	tWorldMapExploreAct_Data[3321277]["RewardItem"][2]["Id"] = 3311820 -- 【库】MysticRuneStone[属性:9], 【表格】良品神纹源晶（赠）
	tWorldMapExploreAct_Data[3321277]["RewardItem"][2]["Attr"] = "0 2" -- MysticRuneStone*2
	tWorldMapExploreAct_Data[3321277]["RewardItem"][3] = {}
	tWorldMapExploreAct_Data[3321277]["RewardItem"][3]["Id"] = 3009001 -- 【库】BrightStarStone[属性:9], 【表格】明亮星陨石
	tWorldMapExploreAct_Data[3321277]["RewardItem"][3]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的BrightStarStone*3
	tWorldMapExploreAct_Data[3321277]["RewardEffect"] = {}
	tWorldMapExploreAct_Data[3321277]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWorldMapExploreAct_Data[3321277]["RewardEffect"]["Effect"] = "angelwing"


	tWorldMapExploreAct_Data[3321278] = {}
	-- ===未占领探索亚军礼盒
	-- ===索引:tWorldMapExploreAct_Data[3321278]
	-- ===删除: 3321278,1
	tWorldMapExploreAct_Data[3321278]["LogId"] = 12001406
	tWorldMapExploreAct_Data[3321278]["DeleteItem"] = {}
	tWorldMapExploreAct_Data[3321278]["DeleteItem"][1] = {}
	tWorldMapExploreAct_Data[3321278]["DeleteItem"][1]["Id"] = 3321278 -- 【库】 3321278 【库里没有该物品】[属性:]
	tWorldMapExploreAct_Data[3321278]["RewardItem"] = {}
	tWorldMapExploreAct_Data[3321278]["RewardItem"][1] = {}
	tWorldMapExploreAct_Data[3321278]["RewardItem"][1]["Id"] = 3309996 -- 【库】800ChiPointsBag[属性:9], 【表格】800点气力值
	tWorldMapExploreAct_Data[3321278]["RewardItem"][1]["Attr"] = "0 1" -- 800ChiPointsBag*1
	tWorldMapExploreAct_Data[3321278]["RewardItem"][2] = {}
	tWorldMapExploreAct_Data[3321278]["RewardItem"][2]["Id"] = 3311820 -- 【库】MysticRuneStone[属性:9], 【表格】良品神纹源晶（赠）
	tWorldMapExploreAct_Data[3321278]["RewardItem"][2]["Attr"] = "0 2" -- MysticRuneStone*2
	tWorldMapExploreAct_Data[3321278]["RewardItem"][3] = {}
	tWorldMapExploreAct_Data[3321278]["RewardItem"][3]["Id"] = 3009001 -- 【库】BrightStarStone[属性:9], 【表格】明亮星陨石
	tWorldMapExploreAct_Data[3321278]["RewardItem"][3]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的BrightStarStone*2
	tWorldMapExploreAct_Data[3321278]["RewardEffect"] = {}
	tWorldMapExploreAct_Data[3321278]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWorldMapExploreAct_Data[3321278]["RewardEffect"]["Effect"] = "angelwing"


	tWorldMapExploreAct_Data[3321279] = {}
	-- ===未占领探索季军礼盒
	-- ===索引:tWorldMapExploreAct_Data[3321279]
	-- ===删除: 3321279,1
	tWorldMapExploreAct_Data[3321279]["LogId"] = 12001406
	tWorldMapExploreAct_Data[3321279]["DeleteItem"] = {}
	tWorldMapExploreAct_Data[3321279]["DeleteItem"][1] = {}
	tWorldMapExploreAct_Data[3321279]["DeleteItem"][1]["Id"] = 3321279 -- 【库】 3321279 【库里没有该物品】[属性:]
	tWorldMapExploreAct_Data[3321279]["RewardItem"] = {}
	tWorldMapExploreAct_Data[3321279]["RewardItem"][1] = {}
	tWorldMapExploreAct_Data[3321279]["RewardItem"][1]["Id"] = 3309999 -- 【库】500ChiPointsBag[属性:9], 【表格】500点气力值
	tWorldMapExploreAct_Data[3321279]["RewardItem"][1]["Attr"] = "0 1" -- 500ChiPointsBag*1
	tWorldMapExploreAct_Data[3321279]["RewardItem"][2] = {}
	tWorldMapExploreAct_Data[3321279]["RewardItem"][2]["Id"] = 3311820 -- 【库】MysticRuneStone[属性:9], 【表格】良品神纹源晶（赠）
	tWorldMapExploreAct_Data[3321279]["RewardItem"][2]["Attr"] = "0 1" -- MysticRuneStone*1
	tWorldMapExploreAct_Data[3321279]["RewardItem"][3] = {}
	tWorldMapExploreAct_Data[3321279]["RewardItem"][3]["Id"] = 3009001 -- 【库】BrightStarStone[属性:9], 【表格】明亮星陨石
	tWorldMapExploreAct_Data[3321279]["RewardItem"][3]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的BrightStarStone*1
	tWorldMapExploreAct_Data[3321279]["RewardEffect"] = {}
	tWorldMapExploreAct_Data[3321279]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWorldMapExploreAct_Data[3321279]["RewardEffect"]["Effect"] = "angelwing"


	tWorldMapExploreAct_Data[3321280] = {}
	-- ===未占领探索翘楚包
	-- ===索引:tWorldMapExploreAct_Data[3321280]
	-- ===删除: 3321280,1
	tWorldMapExploreAct_Data[3321280]["LogId"] = 12001406
	tWorldMapExploreAct_Data[3321280]["DeleteItem"] = {}
	tWorldMapExploreAct_Data[3321280]["DeleteItem"][1] = {}
	tWorldMapExploreAct_Data[3321280]["DeleteItem"][1]["Id"] = 3321280 -- 【库】 3321280 【库里没有该物品】[属性:]
	tWorldMapExploreAct_Data[3321280]["RewardItem"] = {}
	tWorldMapExploreAct_Data[3321280]["RewardItem"][1] = {}
	tWorldMapExploreAct_Data[3321280]["RewardItem"][1]["Id"] = 3309999 -- 【库】500ChiPointsBag[属性:9], 【表格】500点气力值
	tWorldMapExploreAct_Data[3321280]["RewardItem"][1]["Attr"] = "0 1" -- 500ChiPointsBag*1
	tWorldMapExploreAct_Data[3321280]["RewardItem"][2] = {}
	tWorldMapExploreAct_Data[3321280]["RewardItem"][2]["Id"] = 3311820 -- 【库】MysticRuneStone[属性:9], 【表格】良品神纹源晶（赠）
	tWorldMapExploreAct_Data[3321280]["RewardItem"][2]["Attr"] = "0 1" -- MysticRuneStone*1
	tWorldMapExploreAct_Data[3321280]["RewardItem"][3] = {}
	tWorldMapExploreAct_Data[3321280]["RewardItem"][3]["Id"] = 730002 -- 【库】+2Stone[属性:0], 【表格】赤炼石+2（赠）
	tWorldMapExploreAct_Data[3321280]["RewardItem"][3]["Attr"] = "0 1 3 2880 1" -- 2天时效(激活)的+2Stone（赠）*1
	tWorldMapExploreAct_Data[3321280]["RewardEffect"] = {}
	tWorldMapExploreAct_Data[3321280]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWorldMapExploreAct_Data[3321280]["RewardEffect"]["Effect"] = "angelwing"


	tWorldMapExploreAct_Data[3321281] = {}
	-- ===当日探索冠军礼盒
	-- ===索引:tWorldMapExploreAct_Data[3321281]
	-- ===删除: 3321281,1
	tWorldMapExploreAct_Data[3321281]["LogId"] = 12001406
	tWorldMapExploreAct_Data[3321281]["DeleteItem"] = {}
	tWorldMapExploreAct_Data[3321281]["DeleteItem"][1] = {}
	tWorldMapExploreAct_Data[3321281]["DeleteItem"][1]["Id"] = 3321281 -- 【库】 3321281 【库里没有该物品】[属性:]
	tWorldMapExploreAct_Data[3321281]["RewardItem"] = {}
	tWorldMapExploreAct_Data[3321281]["RewardItem"][1] = {}
	tWorldMapExploreAct_Data[3321281]["RewardItem"][1]["Id"] = 4200006 -- 【库】P6Anima[属性:72], 【表格】6级灵珠
	tWorldMapExploreAct_Data[3321281]["RewardItem"][1]["Attr"] = "0 1" -- P6Anima*1
	tWorldMapExploreAct_Data[3321281]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tWorldMapExploreAct_Data[3321281]["RewardItem"][2] = {}
	tWorldMapExploreAct_Data[3321281]["RewardItem"][2]["Id"] = 3306919 -- 【库】RandomYellowRunePack[属性:9], 【表格】黄色神纹随机包（赠）
	tWorldMapExploreAct_Data[3321281]["RewardItem"][2]["Attr"] = "0 2" -- RandomYellowRunePack*2
	tWorldMapExploreAct_Data[3321281]["RewardItem"][3] = {}
	tWorldMapExploreAct_Data[3321281]["RewardItem"][3]["Id"] = 3306885 -- 【库】RelicCrystal[属性:9], 【表格】神器源晶（赠）
	tWorldMapExploreAct_Data[3321281]["RewardItem"][3]["Attr"] = "0 60" -- RelicCrystal*60
	tWorldMapExploreAct_Data[3321281]["RewardItem"][4] = {}
	tWorldMapExploreAct_Data[3321281]["RewardItem"][4]["Id"] = 730005 -- 【库】+5Stone[属性:0], 【表格】赤炼石+5（赠）
	tWorldMapExploreAct_Data[3321281]["RewardItem"][4]["Attr"] = "0 1 3 2880 1" -- 2天时效(激活)的+5Stone（赠）*1
	tWorldMapExploreAct_Data[3321281]["RewardEffect"] = {}
	tWorldMapExploreAct_Data[3321281]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWorldMapExploreAct_Data[3321281]["RewardEffect"]["Effect"] = "angelwing"


	tWorldMapExploreAct_Data[3321282] = {}
	-- ===当日探索亚军礼盒
	-- ===索引:tWorldMapExploreAct_Data[3321282]
	-- ===删除: 3321282,1
	tWorldMapExploreAct_Data[3321282]["LogId"] = 12001406
	tWorldMapExploreAct_Data[3321282]["DeleteItem"] = {}
	tWorldMapExploreAct_Data[3321282]["DeleteItem"][1] = {}
	tWorldMapExploreAct_Data[3321282]["DeleteItem"][1]["Id"] = 3321282 -- 【库】 3321282 【库里没有该物品】[属性:]
	tWorldMapExploreAct_Data[3321282]["RewardItem"] = {}
	tWorldMapExploreAct_Data[3321282]["RewardItem"][1] = {}
	tWorldMapExploreAct_Data[3321282]["RewardItem"][1]["Id"] = 4200005 -- 【库】P5Anima[属性:72], 【表格】5级灵珠
	tWorldMapExploreAct_Data[3321282]["RewardItem"][1]["Attr"] = "0 1" -- P5Anima*1
	tWorldMapExploreAct_Data[3321282]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tWorldMapExploreAct_Data[3321282]["RewardItem"][2] = {}
	tWorldMapExploreAct_Data[3321282]["RewardItem"][2]["Id"] = 3306919 -- 【库】RandomYellowRunePack[属性:9], 【表格】黄色神纹随机包（赠）
	tWorldMapExploreAct_Data[3321282]["RewardItem"][2]["Attr"] = "0 1" -- RandomYellowRunePack*1
	tWorldMapExploreAct_Data[3321282]["RewardItem"][3] = {}
	tWorldMapExploreAct_Data[3321282]["RewardItem"][3]["Id"] = 3306885 -- 【库】RelicCrystal[属性:9], 【表格】神器源晶（赠）
	tWorldMapExploreAct_Data[3321282]["RewardItem"][3]["Attr"] = "0 50" -- RelicCrystal*50
	tWorldMapExploreAct_Data[3321282]["RewardItem"][4] = {}
	tWorldMapExploreAct_Data[3321282]["RewardItem"][4]["Id"] = 730004 -- 【库】+4Stone[属性:0], 【表格】赤炼石+4（赠）
	tWorldMapExploreAct_Data[3321282]["RewardItem"][4]["Attr"] = "0 2 3 2880 1" -- 2天时效(激活)的+4Stone（赠）*2
	tWorldMapExploreAct_Data[3321282]["RewardEffect"] = {}
	tWorldMapExploreAct_Data[3321282]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWorldMapExploreAct_Data[3321282]["RewardEffect"]["Effect"] = "angelwing"


	tWorldMapExploreAct_Data[3321283] = {}
	-- ===当日探索季军礼盒
	-- ===索引:tWorldMapExploreAct_Data[3321283]
	-- ===删除: 3321283,1
	tWorldMapExploreAct_Data[3321283]["LogId"] = 12001406
	tWorldMapExploreAct_Data[3321283]["DeleteItem"] = {}
	tWorldMapExploreAct_Data[3321283]["DeleteItem"][1] = {}
	tWorldMapExploreAct_Data[3321283]["DeleteItem"][1]["Id"] = 3321283 -- 【库】 3321283 【库里没有该物品】[属性:]
	tWorldMapExploreAct_Data[3321283]["RewardItem"] = {}
	tWorldMapExploreAct_Data[3321283]["RewardItem"][1] = {}
	tWorldMapExploreAct_Data[3321283]["RewardItem"][1]["Id"] = 4200004 -- 【库】P4Anima[属性:72], 【表格】4级灵珠
	tWorldMapExploreAct_Data[3321283]["RewardItem"][1]["Attr"] = "0 1" -- P4Anima*1
	tWorldMapExploreAct_Data[3321283]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tWorldMapExploreAct_Data[3321283]["RewardItem"][2] = {}
	tWorldMapExploreAct_Data[3321283]["RewardItem"][2]["Id"] = 3306919 -- 【库】RandomYellowRunePack[属性:9], 【表格】黄色神纹随机包（赠）
	tWorldMapExploreAct_Data[3321283]["RewardItem"][2]["Attr"] = "0 1" -- RandomYellowRunePack*1
	tWorldMapExploreAct_Data[3321283]["RewardItem"][3] = {}
	tWorldMapExploreAct_Data[3321283]["RewardItem"][3]["Id"] = 3306885 -- 【库】RelicCrystal[属性:9], 【表格】神器源晶（赠）
	tWorldMapExploreAct_Data[3321283]["RewardItem"][3]["Attr"] = "0 40" -- RelicCrystal*40
	tWorldMapExploreAct_Data[3321283]["RewardItem"][4] = {}
	tWorldMapExploreAct_Data[3321283]["RewardItem"][4]["Id"] = 730004 -- 【库】+4Stone[属性:0], 【表格】赤炼石+4（赠）
	tWorldMapExploreAct_Data[3321283]["RewardItem"][4]["Attr"] = "0 1 3 2880 1" -- 2天时效(激活)的+4Stone（赠）*1
	tWorldMapExploreAct_Data[3321283]["RewardEffect"] = {}
	tWorldMapExploreAct_Data[3321283]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWorldMapExploreAct_Data[3321283]["RewardEffect"]["Effect"] = "angelwing"


	tWorldMapExploreAct_Data[3321284] = {}
	-- ===当日探索翘楚包
	-- ===索引:tWorldMapExploreAct_Data[3321284]
	-- ===删除: 3321284,1
	tWorldMapExploreAct_Data[3321284]["LogId"] = 12001406
	tWorldMapExploreAct_Data[3321284]["DeleteItem"] = {}
	tWorldMapExploreAct_Data[3321284]["DeleteItem"][1] = {}
	tWorldMapExploreAct_Data[3321284]["DeleteItem"][1]["Id"] = 3321284 -- 【库】 3321284 【库里没有该物品】[属性:]
	tWorldMapExploreAct_Data[3321284]["RewardItem"] = {}
	tWorldMapExploreAct_Data[3321284]["RewardItem"][1] = {}
	tWorldMapExploreAct_Data[3321284]["RewardItem"][1]["Id"] = 4200003 -- 【库】P3Anima[属性:72], 【表格】3级灵珠
	tWorldMapExploreAct_Data[3321284]["RewardItem"][1]["Attr"] = "0 1" -- P3Anima*1
	tWorldMapExploreAct_Data[3321284]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tWorldMapExploreAct_Data[3321284]["RewardItem"][2] = {}
	tWorldMapExploreAct_Data[3321284]["RewardItem"][2]["Id"] = 3311654 -- 【库】 3311654 【库里没有该物品】[属性:], 【表格】黄色神纹碎片随机包（赠）
	tWorldMapExploreAct_Data[3321284]["RewardItem"][2]["Attr"] = "0 3" --  3311654 【库里没有该物品】（赠）*3
	tWorldMapExploreAct_Data[3321284]["RewardItem"][3] = {}
	tWorldMapExploreAct_Data[3321284]["RewardItem"][3]["Id"] = 3306885 -- 【库】RelicCrystal[属性:9], 【表格】神器源晶（赠）
	tWorldMapExploreAct_Data[3321284]["RewardItem"][3]["Attr"] = "0 30" -- RelicCrystal*30
	tWorldMapExploreAct_Data[3321284]["RewardItem"][4] = {}
	tWorldMapExploreAct_Data[3321284]["RewardItem"][4]["Id"] = 730003 -- 【库】+3Stone[属性:0], 【表格】赤炼石+3（赠）*2
	tWorldMapExploreAct_Data[3321284]["RewardItem"][4]["Attr"] = "0 2 3 2880 1" -- 2天时效(激活)的+3Stone（赠）*2
	tWorldMapExploreAct_Data[3321284]["RewardEffect"] = {}
	tWorldMapExploreAct_Data[3321284]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWorldMapExploreAct_Data[3321284]["RewardEffect"]["Effect"] = "angelwing"


	tWorldMapExploreAct_Data[3321285] = {}
	-- ===当日探索精英包
	-- ===索引:tWorldMapExploreAct_Data[3321285]
	-- ===删除: 3321285,1
	tWorldMapExploreAct_Data[3321285]["LogId"] = 12001406
	tWorldMapExploreAct_Data[3321285]["DeleteItem"] = {}
	tWorldMapExploreAct_Data[3321285]["DeleteItem"][1] = {}
	tWorldMapExploreAct_Data[3321285]["DeleteItem"][1]["Id"] = 3321285 -- 【库】 3321285 【库里没有该物品】[属性:]
	tWorldMapExploreAct_Data[3321285]["RewardItem"] = {}
	tWorldMapExploreAct_Data[3321285]["RewardItem"][1] = {}
	tWorldMapExploreAct_Data[3321285]["RewardItem"][1]["Id"] = 4200002 -- 【库】P2Anima[属性:72], 【表格】2级灵珠
	tWorldMapExploreAct_Data[3321285]["RewardItem"][1]["Attr"] = "0 1" -- P2Anima*1
	tWorldMapExploreAct_Data[3321285]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tWorldMapExploreAct_Data[3321285]["RewardItem"][2] = {}
	tWorldMapExploreAct_Data[3321285]["RewardItem"][2]["Id"] = 3311654 -- 【库】 3311654 【库里没有该物品】[属性:], 【表格】黄色神纹碎片随机包（赠）
	tWorldMapExploreAct_Data[3321285]["RewardItem"][2]["Attr"] = "0 2" --  3311654 【库里没有该物品】（赠）*2
	tWorldMapExploreAct_Data[3321285]["RewardItem"][3] = {}
	tWorldMapExploreAct_Data[3321285]["RewardItem"][3]["Id"] = 3306885 -- 【库】RelicCrystal[属性:9], 【表格】神器源晶（赠）
	tWorldMapExploreAct_Data[3321285]["RewardItem"][3]["Attr"] = "0 20" -- RelicCrystal*20
	tWorldMapExploreAct_Data[3321285]["RewardItem"][4] = {}
	tWorldMapExploreAct_Data[3321285]["RewardItem"][4]["Id"] = 730003 -- 【库】+3Stone[属性:0], 【表格】赤炼石+3（赠）
	tWorldMapExploreAct_Data[3321285]["RewardItem"][4]["Attr"] = "0 1 3 2880 1" -- 2天时效(激活)的+3Stone（赠）*1
	tWorldMapExploreAct_Data[3321285]["RewardEffect"] = {}
	tWorldMapExploreAct_Data[3321285]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWorldMapExploreAct_Data[3321285]["RewardEffect"]["Effect"] = "angelwing"


	tWorldMapExploreAct_Data[3321286] = {}
	-- ===当日探索勇者包
	-- ===索引:tWorldMapExploreAct_Data[3321286]
	-- ===删除: 3321286,1
	tWorldMapExploreAct_Data[3321286]["LogId"] = 12001406
	tWorldMapExploreAct_Data[3321286]["DeleteItem"] = {}
	tWorldMapExploreAct_Data[3321286]["DeleteItem"][1] = {}
	tWorldMapExploreAct_Data[3321286]["DeleteItem"][1]["Id"] = 3321286 -- 【库】 3321286 【库里没有该物品】[属性:]
	tWorldMapExploreAct_Data[3321286]["RewardItem"] = {}
	tWorldMapExploreAct_Data[3321286]["RewardItem"][1] = {}
	tWorldMapExploreAct_Data[3321286]["RewardItem"][1]["Id"] = 4200001 -- 【库】P1Anima[属性:72], 【表格】1级灵珠
	tWorldMapExploreAct_Data[3321286]["RewardItem"][1]["Attr"] = "0 1" -- P1Anima*1
	tWorldMapExploreAct_Data[3321286]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tWorldMapExploreAct_Data[3321286]["RewardItem"][2] = {}
	tWorldMapExploreAct_Data[3321286]["RewardItem"][2]["Id"] = 3311654 -- 【库】 3311654 【库里没有该物品】[属性:], 【表格】黄色神纹碎片随机包（赠）
	tWorldMapExploreAct_Data[3321286]["RewardItem"][2]["Attr"] = "0 1" --  3311654 【库里没有该物品】（赠）*1
	tWorldMapExploreAct_Data[3321286]["RewardItem"][3] = {}
	tWorldMapExploreAct_Data[3321286]["RewardItem"][3]["Id"] = 3306885 -- 【库】RelicCrystal[属性:9], 【表格】神器源晶（赠）
	tWorldMapExploreAct_Data[3321286]["RewardItem"][3]["Attr"] = "0 10" -- RelicCrystal*10
	tWorldMapExploreAct_Data[3321286]["RewardItem"][4] = {}
	tWorldMapExploreAct_Data[3321286]["RewardItem"][4]["Id"] = 730002 -- 【库】+2Stone[属性:0], 【表格】赤炼石+2（赠）
	tWorldMapExploreAct_Data[3321286]["RewardItem"][4]["Attr"] = "0 2 3 2880 1" -- 2天时效(激活)的+2Stone（赠）*2
	tWorldMapExploreAct_Data[3321286]["RewardEffect"] = {}
	tWorldMapExploreAct_Data[3321286]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWorldMapExploreAct_Data[3321286]["RewardEffect"]["Effect"] = "angelwing"


	tWorldMapExploreAct_Data[3321287] = {}
	-- ===150探索度包
	-- ===索引:tWorldMapExploreAct_Data[3321287]
	-- ===删除: 3321287,1
	tWorldMapExploreAct_Data[3321287]["LogId"] = 12001406
	tWorldMapExploreAct_Data[3321287]["DeleteItem"] = {}
	tWorldMapExploreAct_Data[3321287]["DeleteItem"][1] = {}
	tWorldMapExploreAct_Data[3321287]["DeleteItem"][1]["Id"] = 3321287 -- 【库】 3321287 【库里没有该物品】[属性:]
	tWorldMapExploreAct_Data[3321287]["RewardItem"] = {}
	tWorldMapExploreAct_Data[3321287]["RewardItem"][1] = {}
	tWorldMapExploreAct_Data[3321287]["RewardItem"][1]["Id"] = 4060001 -- 【库】UniversalRuneEssence[属性:9], 【表格】万能神纹精粹（赠）
	tWorldMapExploreAct_Data[3321287]["RewardItem"][1]["Attr"] = "0 10 3" -- UniversalRuneEssence（赠）*10
	tWorldMapExploreAct_Data[3321287]["RewardItem"][2] = {}
	tWorldMapExploreAct_Data[3321287]["RewardItem"][2]["Id"] = 3009000 -- 【库】TwilightStarStone[属性:9], 【表格】微光星陨石
	tWorldMapExploreAct_Data[3321287]["RewardItem"][2]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的TwilightStarStone*2
	tWorldMapExploreAct_Data[3321287]["RewardEffect"] = {}
	tWorldMapExploreAct_Data[3321287]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWorldMapExploreAct_Data[3321287]["RewardEffect"]["Effect"] = "angelwing"


	tWorldMapExploreAct_Data[3321288] = {}
	-- ===200探索度包
	-- ===索引:tWorldMapExploreAct_Data[3321288]
	-- ===删除: 3321288,1
	tWorldMapExploreAct_Data[3321288]["LogId"] = 12001406
	tWorldMapExploreAct_Data[3321288]["DeleteItem"] = {}
	tWorldMapExploreAct_Data[3321288]["DeleteItem"][1] = {}
	tWorldMapExploreAct_Data[3321288]["DeleteItem"][1]["Id"] = 3321288 -- 【库】 3321288 【库里没有该物品】[属性:]
	tWorldMapExploreAct_Data[3321288]["RewardItem"] = {}
	tWorldMapExploreAct_Data[3321288]["RewardItem"][1] = {}
	tWorldMapExploreAct_Data[3321288]["RewardItem"][1]["Id"] = 4060001 -- 【库】UniversalRuneEssence[属性:9], 【表格】万能神纹精粹（赠）
	tWorldMapExploreAct_Data[3321288]["RewardItem"][1]["Attr"] = "0 20 3" -- UniversalRuneEssence（赠）*20
	tWorldMapExploreAct_Data[3321288]["RewardItem"][2] = {}
	tWorldMapExploreAct_Data[3321288]["RewardItem"][2]["Id"] = 3009000 -- 【库】TwilightStarStone[属性:9], 【表格】微光星陨石
	tWorldMapExploreAct_Data[3321288]["RewardItem"][2]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的TwilightStarStone*5
	tWorldMapExploreAct_Data[3321288]["RewardEffect"] = {}
	tWorldMapExploreAct_Data[3321288]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWorldMapExploreAct_Data[3321288]["RewardEffect"]["Effect"] = "angelwing"


	tWorldMapExploreAct_Data[3321289] = {}
	-- ===500探索度包
	-- ===索引:tWorldMapExploreAct_Data[3321289]
	-- ===删除: 3321289,1
	tWorldMapExploreAct_Data[3321289]["LogId"] = 12001406
	tWorldMapExploreAct_Data[3321289]["DeleteItem"] = {}
	tWorldMapExploreAct_Data[3321289]["DeleteItem"][1] = {}
	tWorldMapExploreAct_Data[3321289]["DeleteItem"][1]["Id"] = 3321289 -- 【库】 3321289 【库里没有该物品】[属性:]
	tWorldMapExploreAct_Data[3321289]["RewardItem"] = {}
	tWorldMapExploreAct_Data[3321289]["RewardItem"][1] = {}
	tWorldMapExploreAct_Data[3321289]["RewardItem"][1]["Id"] = 4060001 -- 【库】UniversalRuneEssence[属性:9], 【表格】万能神纹精粹（赠）
	tWorldMapExploreAct_Data[3321289]["RewardItem"][1]["Attr"] = "0 30 3" -- UniversalRuneEssence（赠）*30
	tWorldMapExploreAct_Data[3321289]["RewardItem"][2] = {}
	tWorldMapExploreAct_Data[3321289]["RewardItem"][2]["Id"] = 3009001 -- 【库】BrightStarStone[属性:9], 【表格】明亮星陨石
	tWorldMapExploreAct_Data[3321289]["RewardItem"][2]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的BrightStarStone*2
	tWorldMapExploreAct_Data[3321289]["RewardEffect"] = {}
	tWorldMapExploreAct_Data[3321289]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWorldMapExploreAct_Data[3321289]["RewardEffect"]["Effect"] = "angelwing"


	tWorldMapExploreAct_Data[3321290] = {}
	-- ===1000探索度包
	-- ===索引:tWorldMapExploreAct_Data[3321290]
	-- ===删除: 3321290,1
	tWorldMapExploreAct_Data[3321290]["LogId"] = 12001406
	tWorldMapExploreAct_Data[3321290]["DeleteItem"] = {}
	tWorldMapExploreAct_Data[3321290]["DeleteItem"][1] = {}
	tWorldMapExploreAct_Data[3321290]["DeleteItem"][1]["Id"] = 3321290 -- 【库】 3321290 【库里没有该物品】[属性:]
	tWorldMapExploreAct_Data[3321290]["RewardItem"] = {}
	tWorldMapExploreAct_Data[3321290]["RewardItem"][1] = {}
	tWorldMapExploreAct_Data[3321290]["RewardItem"][1]["Id"] = 4060001 -- 【库】UniversalRuneEssence[属性:9], 【表格】万能神纹精粹（赠）
	tWorldMapExploreAct_Data[3321290]["RewardItem"][1]["Attr"] = "0 50 3" -- UniversalRuneEssence（赠）*50
	tWorldMapExploreAct_Data[3321290]["RewardItem"][2] = {}
	tWorldMapExploreAct_Data[3321290]["RewardItem"][2]["Id"] = 3009001 -- 【库】BrightStarStone[属性:9], 【表格】明亮星陨石
	tWorldMapExploreAct_Data[3321290]["RewardItem"][2]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的BrightStarStone*5
	tWorldMapExploreAct_Data[3321290]["RewardEffect"] = {}
	tWorldMapExploreAct_Data[3321290]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWorldMapExploreAct_Data[3321290]["RewardEffect"]["Effect"] = "angelwing"


	tWorldMapExploreAct_Data[3321291] = {}
	-- ===1500累计探索度包
	-- ===索引:tWorldMapExploreAct_Data[3321291]
	-- ===删除: 3321291,1
	tWorldMapExploreAct_Data[3321291]["LogId"] = 12001406
	tWorldMapExploreAct_Data[3321291]["DeleteItem"] = {}
	tWorldMapExploreAct_Data[3321291]["DeleteItem"][1] = {}
	tWorldMapExploreAct_Data[3321291]["DeleteItem"][1]["Id"] = 3321291 -- 【库】 3321291 【库里没有该物品】[属性:]
	tWorldMapExploreAct_Data[3321291]["RewardItem"] = {}
	tWorldMapExploreAct_Data[3321291]["RewardItem"][1] = {}
	tWorldMapExploreAct_Data[3321291]["RewardItem"][1]["Id"] = 3009100 -- 【库】GinsengFruit[属性:9], 【表格】人参果*3
	tWorldMapExploreAct_Data[3321291]["RewardItem"][1]["Attr"] = "0 3" -- GinsengFruit*3
	tWorldMapExploreAct_Data[3321291]["RewardItem"][2] = {}
	tWorldMapExploreAct_Data[3321291]["RewardItem"][2]["Id"] = 4060001 -- 【库】UniversalRuneEssence[属性:9], 【表格】万能神纹精粹（赠）*10
	tWorldMapExploreAct_Data[3321291]["RewardItem"][2]["Attr"] = "0 10 3" -- UniversalRuneEssence（赠）*10
	tWorldMapExploreAct_Data[3321291]["RewardEffect"] = {}
	tWorldMapExploreAct_Data[3321291]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWorldMapExploreAct_Data[3321291]["RewardEffect"]["Effect"] = "angelwing"


	tWorldMapExploreAct_Data[3321292] = {}
	-- ===2000累计探索度包
	-- ===索引:tWorldMapExploreAct_Data[3321292]
	-- ===删除: 3321292,1
	tWorldMapExploreAct_Data[3321292]["LogId"] = 12001406
	tWorldMapExploreAct_Data[3321292]["DeleteItem"] = {}
	tWorldMapExploreAct_Data[3321292]["DeleteItem"][1] = {}
	tWorldMapExploreAct_Data[3321292]["DeleteItem"][1]["Id"] = 3321292 -- 【库】 3321292 【库里没有该物品】[属性:]
	tWorldMapExploreAct_Data[3321292]["RewardItem"] = {}
	tWorldMapExploreAct_Data[3321292]["RewardItem"][1] = {}
	tWorldMapExploreAct_Data[3321292]["RewardItem"][1]["Id"] = 3312276 -- 【库】MedalofGlory[属性:9], 【表格】荣誉勋章
	tWorldMapExploreAct_Data[3321292]["RewardItem"][1]["Attr"] = "0 1" -- MedalofGlory*1
	tWorldMapExploreAct_Data[3321292]["RewardItem"][2] = {}
	tWorldMapExploreAct_Data[3321292]["RewardItem"][2]["Id"] = 3009100 -- 【库】GinsengFruit[属性:9], 【表格】人参果*5
	tWorldMapExploreAct_Data[3321292]["RewardItem"][2]["Attr"] = "0 5" -- GinsengFruit*5
	tWorldMapExploreAct_Data[3321292]["RewardItem"][3] = {}
	tWorldMapExploreAct_Data[3321292]["RewardItem"][3]["Id"] = 4060001 -- 【库】UniversalRuneEssence[属性:9], 【表格】万能神纹精粹（赠）*20
	tWorldMapExploreAct_Data[3321292]["RewardItem"][3]["Attr"] = "0 20 3" -- UniversalRuneEssence（赠）*20
	tWorldMapExploreAct_Data[3321292]["RewardEffect"] = {}
	tWorldMapExploreAct_Data[3321292]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWorldMapExploreAct_Data[3321292]["RewardEffect"]["Effect"] = "angelwing"


	tWorldMapExploreAct_Data[3321293] = {}
	-- ===3000累计探索度包
	-- ===索引:tWorldMapExploreAct_Data[3321293]
	-- ===删除: 3321293,1
	tWorldMapExploreAct_Data[3321293]["LogId"] = 12001406
	tWorldMapExploreAct_Data[3321293]["DeleteItem"] = {}
	tWorldMapExploreAct_Data[3321293]["DeleteItem"][1] = {}
	tWorldMapExploreAct_Data[3321293]["DeleteItem"][1]["Id"] = 3321293 -- 【库】 3321293 【库里没有该物品】[属性:]
	tWorldMapExploreAct_Data[3321293]["RewardItem"] = {}
	tWorldMapExploreAct_Data[3321293]["RewardItem"][1] = {}
	tWorldMapExploreAct_Data[3321293]["RewardItem"][1]["Id"] = 3009100 -- 【库】GinsengFruit[属性:9], 【表格】人参果*8
	tWorldMapExploreAct_Data[3321293]["RewardItem"][1]["Attr"] = "0 8" -- GinsengFruit*8
	tWorldMapExploreAct_Data[3321293]["RewardItem"][2] = {}
	tWorldMapExploreAct_Data[3321293]["RewardItem"][2]["Id"] = 4060001 -- 【库】UniversalRuneEssence[属性:9], 【表格】万能神纹精粹（赠）*30
	tWorldMapExploreAct_Data[3321293]["RewardItem"][2]["Attr"] = "0 30 3" -- UniversalRuneEssence（赠）*30
	tWorldMapExploreAct_Data[3321293]["RewardEffect"] = {}
	tWorldMapExploreAct_Data[3321293]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWorldMapExploreAct_Data[3321293]["RewardEffect"]["Effect"] = "angelwing"


	tWorldMapExploreAct_Data[3321294] = {}
	-- ===5000累计探索度包
	-- ===索引:tWorldMapExploreAct_Data[3321294]
	-- ===删除: 3321294,1
	tWorldMapExploreAct_Data[3321294]["LogId"] = 12001406
	tWorldMapExploreAct_Data[3321294]["DeleteItem"] = {}
	tWorldMapExploreAct_Data[3321294]["DeleteItem"][1] = {}
	tWorldMapExploreAct_Data[3321294]["DeleteItem"][1]["Id"] = 3321294 -- 【库】 3321294 【库里没有该物品】[属性:]
	tWorldMapExploreAct_Data[3321294]["RewardItem"] = {}
	tWorldMapExploreAct_Data[3321294]["RewardItem"][1] = {}
	tWorldMapExploreAct_Data[3321294]["RewardItem"][1]["Id"] = 3009101 -- 【库】DragonFruit[属性:9], 【表格】龙鳞果*3
	tWorldMapExploreAct_Data[3321294]["RewardItem"][1]["Attr"] = "0 3" -- DragonFruit*3
	tWorldMapExploreAct_Data[3321294]["RewardItem"][2] = {}
	tWorldMapExploreAct_Data[3321294]["RewardItem"][2]["Id"] = 4060001 -- 【库】UniversalRuneEssence[属性:9], 【表格】万能神纹精粹（赠）*50
	tWorldMapExploreAct_Data[3321294]["RewardItem"][2]["Attr"] = "0 50 3" -- UniversalRuneEssence（赠）*50
	tWorldMapExploreAct_Data[3321294]["RewardEffect"] = {}
	tWorldMapExploreAct_Data[3321294]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWorldMapExploreAct_Data[3321294]["RewardEffect"]["Effect"] = "angelwing"


	tWorldMapExploreAct_Data[3321295] = {}
	-- ===累计探索冠军礼盒
	-- ===索引:tWorldMapExploreAct_Data[3321295]
	-- ===删除: 3321295,1
	tWorldMapExploreAct_Data[3321295]["LogId"] = 12001406
	tWorldMapExploreAct_Data[3321295]["DeleteItem"] = {}
	tWorldMapExploreAct_Data[3321295]["DeleteItem"][1] = {}
	tWorldMapExploreAct_Data[3321295]["DeleteItem"][1]["Id"] = 3321295 -- 【库】 3321295 【库里没有该物品】[属性:]
	tWorldMapExploreAct_Data[3321295]["RewardItem"] = {}
	tWorldMapExploreAct_Data[3321295]["RewardItem"][1] = {}
	tWorldMapExploreAct_Data[3321295]["RewardItem"][1]["Id"] = 4200011 -- 【库】P11Anima[属性:72], 【表格】11级灵珠
	tWorldMapExploreAct_Data[3321295]["RewardItem"][1]["Attr"] = "0 1" -- P11Anima*1
	tWorldMapExploreAct_Data[3321295]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tWorldMapExploreAct_Data[3321295]["RewardTitle"] = {}
	tWorldMapExploreAct_Data[3321295]["RewardTitle"]["TitleType"] = 2126 -- 【库】Superman, 【表格】世界探索之王
	tWorldMapExploreAct_Data[3321295]["RewardTitle"]["TitleId"] = 2126
	tWorldMapExploreAct_Data[3321295]["RewardTitle"]["SaveTime"] = 259200 -- 180天时效的[称号]:Superman, 【需求】世界探索之王
	tWorldMapExploreAct_Data[3321295]["RewardItem"][2] = {}
	tWorldMapExploreAct_Data[3321295]["RewardItem"][2]["Id"] = 2168915 -- 【库】 2168915 【库里没有该物品】[属性:], 【表格】重鸾佩
	tWorldMapExploreAct_Data[3321295]["RewardItem"][2]["Attr"] = "0 1 0 259200 1 0 0 1"  -- 180天时效(激活)的 2168915 【库里没有该物品】*1
	tWorldMapExploreAct_Data[3321295]["RewardItem"][3] = {}
	tWorldMapExploreAct_Data[3321295]["RewardItem"][3]["Id"] = 3319013 -- 【库】RareRandomYellowRunePack(B)[属性:9], 【表格】稀有黄色神纹随机包（赠）
	tWorldMapExploreAct_Data[3321295]["RewardItem"][3]["Attr"] = "0 3" -- RareRandomYellowRunePack(B)*3
	tWorldMapExploreAct_Data[3321295]["RewardItem"][4] = {}
	tWorldMapExploreAct_Data[3321295]["RewardItem"][4]["Id"] = 730008 -- 【库】+8Stone[属性:0], 【表格】赤炼石+8（赠）
	tWorldMapExploreAct_Data[3321295]["RewardItem"][4]["Attr"] = "0 1 3 2880 1" -- 2天时效(激活)的+8Stone（赠）*1
	tWorldMapExploreAct_Data[3321295]["RewardEffect"] = {}
	tWorldMapExploreAct_Data[3321295]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWorldMapExploreAct_Data[3321295]["RewardEffect"]["Effect"] = "angelwing"


	tWorldMapExploreAct_Data[3321296] = {}
	-- ===累计探索亚军礼盒
	-- ===索引:tWorldMapExploreAct_Data[3321296]
	-- ===删除: 3321296,1
	tWorldMapExploreAct_Data[3321296]["LogId"] = 12001406
	tWorldMapExploreAct_Data[3321296]["DeleteItem"] = {}
	tWorldMapExploreAct_Data[3321296]["DeleteItem"][1] = {}
	tWorldMapExploreAct_Data[3321296]["DeleteItem"][1]["Id"] = 3321296 -- 【库】 3321296 【库里没有该物品】[属性:]
	tWorldMapExploreAct_Data[3321296]["RewardItem"] = {}
	tWorldMapExploreAct_Data[3321296]["RewardItem"][1] = {}
	tWorldMapExploreAct_Data[3321296]["RewardItem"][1]["Id"] = 4200010 -- 【库】P10Anima[属性:72], 【表格】10级灵珠
	tWorldMapExploreAct_Data[3321296]["RewardItem"][1]["Attr"] = "0 1" -- P10Anima*1
	tWorldMapExploreAct_Data[3321296]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tWorldMapExploreAct_Data[3321296]["RewardTitle"] = {}
	tWorldMapExploreAct_Data[3321296]["RewardTitle"]["TitleType"] = 2126 -- 【库】Superman, 【表格】世界探索之王
	tWorldMapExploreAct_Data[3321296]["RewardTitle"]["TitleId"] = 2126
	tWorldMapExploreAct_Data[3321296]["RewardTitle"]["SaveTime"] = 172800 -- 120天时效的[称号]:Superman, 【需求】世界探索之王
	tWorldMapExploreAct_Data[3321296]["RewardItem"][2] = {}
	tWorldMapExploreAct_Data[3321296]["RewardItem"][2]["Id"] = 2168915 -- 【库】 2168915 【库里没有该物品】[属性:], 【表格】重鸾佩
	tWorldMapExploreAct_Data[3321296]["RewardItem"][2]["Attr"] = "0 1 0 172800 1 0 0 1" -- 120天时效(激活)的 2168915 【库里没有该物品】*1
	tWorldMapExploreAct_Data[3321296]["RewardItem"][3] = {}
	tWorldMapExploreAct_Data[3321296]["RewardItem"][3]["Id"] = 3319013 -- 【库】RareRandomYellowRunePack(B)[属性:9], 【表格】稀有黄色神纹随机包（赠）
	tWorldMapExploreAct_Data[3321296]["RewardItem"][3]["Attr"] = "0 3" -- RareRandomYellowRunePack(B)*3
	tWorldMapExploreAct_Data[3321296]["RewardItem"][4] = {}
	tWorldMapExploreAct_Data[3321296]["RewardItem"][4]["Id"] = 730007 -- 【库】+7Stone[属性:0], 【表格】赤炼石+7（赠）
	tWorldMapExploreAct_Data[3321296]["RewardItem"][4]["Attr"] = "0 2 3 2880 1" -- 2天时效(激活)的+7Stone（赠）*2
	tWorldMapExploreAct_Data[3321296]["RewardEffect"] = {}
	tWorldMapExploreAct_Data[3321296]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWorldMapExploreAct_Data[3321296]["RewardEffect"]["Effect"] = "angelwing"


	tWorldMapExploreAct_Data[3321297] = {}
	-- ===累计探索季军礼盒
	-- ===索引:tWorldMapExploreAct_Data[3321297]
	-- ===删除: 3321297,1
	tWorldMapExploreAct_Data[3321297]["LogId"] = 12001406
	tWorldMapExploreAct_Data[3321297]["DeleteItem"] = {}
	tWorldMapExploreAct_Data[3321297]["DeleteItem"][1] = {}
	tWorldMapExploreAct_Data[3321297]["DeleteItem"][1]["Id"] = 3321297 -- 【库】 3321297 【库里没有该物品】[属性:]
	tWorldMapExploreAct_Data[3321297]["RewardItem"] = {}
	tWorldMapExploreAct_Data[3321297]["RewardItem"][1] = {}
	tWorldMapExploreAct_Data[3321297]["RewardItem"][1]["Id"] = 4200009 -- 【库】P9Anima[属性:72], 【表格】9级灵珠
	tWorldMapExploreAct_Data[3321297]["RewardItem"][1]["Attr"] = "0 1" -- P9Anima*1
	tWorldMapExploreAct_Data[3321297]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tWorldMapExploreAct_Data[3321297]["RewardTitle"] = {}
	tWorldMapExploreAct_Data[3321297]["RewardTitle"]["TitleType"] = 2126 -- 【库】Superman, 【表格】世界探索之王
	tWorldMapExploreAct_Data[3321297]["RewardTitle"]["TitleId"] = 2126
	tWorldMapExploreAct_Data[3321297]["RewardTitle"]["SaveTime"] = 129600 -- 90天时效的[称号]:Superman, 【需求】世界探索之王
	tWorldMapExploreAct_Data[3321297]["RewardItem"][2] = {}
	tWorldMapExploreAct_Data[3321297]["RewardItem"][2]["Id"] = 2168915 -- 【库】 2168915 【库里没有该物品】[属性:], 【表格】重鸾佩
	tWorldMapExploreAct_Data[3321297]["RewardItem"][2]["Attr"] = "0 1 0 129600 1 0 0 1" -- 90天时效(激活)的 2168915 【库里没有该物品】*1
	tWorldMapExploreAct_Data[3321297]["RewardItem"][3] = {}
	tWorldMapExploreAct_Data[3321297]["RewardItem"][3]["Id"] = 3319013 -- 【库】RareRandomYellowRunePack(B)[属性:9], 【表格】稀有黄色神纹随机包（赠）
	tWorldMapExploreAct_Data[3321297]["RewardItem"][3]["Attr"] = "0 3" -- RareRandomYellowRunePack(B)*3
	tWorldMapExploreAct_Data[3321297]["RewardItem"][4] = {}
	tWorldMapExploreAct_Data[3321297]["RewardItem"][4]["Id"] = 730007 -- 【库】+7Stone[属性:0], 【表格】赤炼石+7（赠）
	tWorldMapExploreAct_Data[3321297]["RewardItem"][4]["Attr"] = "0 1 3 2880 1" -- 2天时效(激活)的+7Stone（赠）*1
	tWorldMapExploreAct_Data[3321297]["RewardEffect"] = {}
	tWorldMapExploreAct_Data[3321297]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWorldMapExploreAct_Data[3321297]["RewardEffect"]["Effect"] = "angelwing"


	tWorldMapExploreAct_Data[3321298] = {}
	-- ===累计探索翘楚礼盒
	-- ===索引:tWorldMapExploreAct_Data[3321298]
	-- ===删除: 3321298,1
	tWorldMapExploreAct_Data[3321298]["LogId"] = 12001406
	tWorldMapExploreAct_Data[3321298]["DeleteItem"] = {}
	tWorldMapExploreAct_Data[3321298]["DeleteItem"][1] = {}
	tWorldMapExploreAct_Data[3321298]["DeleteItem"][1]["Id"] = 3321298 -- 【库】 3321298 【库里没有该物品】[属性:]
	tWorldMapExploreAct_Data[3321298]["RewardItem"] = {}
	tWorldMapExploreAct_Data[3321298]["RewardItem"][1] = {}
	tWorldMapExploreAct_Data[3321298]["RewardItem"][1]["Id"] = 4200008 -- 【库】P8Anima[属性:72], 【表格】8级灵珠
	tWorldMapExploreAct_Data[3321298]["RewardItem"][1]["Attr"] = "0 1" -- P8Anima*1
	tWorldMapExploreAct_Data[3321298]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tWorldMapExploreAct_Data[3321298]["RewardTitle"] = {}
	tWorldMapExploreAct_Data[3321298]["RewardTitle"]["TitleType"] = 2126 -- 【库】Superman, 【表格】世界探索之王
	tWorldMapExploreAct_Data[3321298]["RewardTitle"]["TitleId"] = 2126
	tWorldMapExploreAct_Data[3321298]["RewardTitle"]["SaveTime"] = 86400 -- 60天时效的[称号]:Superman, 【需求】世界探索之王
	tWorldMapExploreAct_Data[3321298]["RewardItem"][2] = {}
	tWorldMapExploreAct_Data[3321298]["RewardItem"][2]["Id"] = 2168915 -- 【库】 2168915 【库里没有该物品】[属性:], 【表格】重鸾佩
	tWorldMapExploreAct_Data[3321298]["RewardItem"][2]["Attr"] = "0 1 0 86400 1 0 0 1" -- 60天时效(激活)的 2168915 【库里没有该物品】*1
	tWorldMapExploreAct_Data[3321298]["RewardItem"][3] = {}
	tWorldMapExploreAct_Data[3321298]["RewardItem"][3]["Id"] = 3319013 -- 【库】RareRandomYellowRunePack(B)[属性:9], 【表格】稀有黄色神纹随机包（赠）
	tWorldMapExploreAct_Data[3321298]["RewardItem"][3]["Attr"] = "0 2" -- RareRandomYellowRunePack(B)*2
	tWorldMapExploreAct_Data[3321298]["RewardItem"][4] = {}
	tWorldMapExploreAct_Data[3321298]["RewardItem"][4]["Id"] = 730006 -- 【库】+6Stone[属性:0], 【表格】赤炼石+6（赠）
	tWorldMapExploreAct_Data[3321298]["RewardItem"][4]["Attr"] = "0 2 3 2880 1" -- 2天时效(激活)的+6Stone（赠）*2
	tWorldMapExploreAct_Data[3321298]["RewardEffect"] = {}
	tWorldMapExploreAct_Data[3321298]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWorldMapExploreAct_Data[3321298]["RewardEffect"]["Effect"] = "angelwing"


	tWorldMapExploreAct_Data[3321299] = {}
	-- ===累计探索精英礼盒
	-- ===索引:tWorldMapExploreAct_Data[3321299]
	-- ===删除: 3321299,1
	tWorldMapExploreAct_Data[3321299]["LogId"] = 12001406
	tWorldMapExploreAct_Data[3321299]["DeleteItem"] = {}
	tWorldMapExploreAct_Data[3321299]["DeleteItem"][1] = {}
	tWorldMapExploreAct_Data[3321299]["DeleteItem"][1]["Id"] = 3321299 -- 【库】 3321299 【库里没有该物品】[属性:]
	tWorldMapExploreAct_Data[3321299]["RewardItem"] = {}
	tWorldMapExploreAct_Data[3321299]["RewardItem"][1] = {}
	tWorldMapExploreAct_Data[3321299]["RewardItem"][1]["Id"] = 4200007 -- 【库】P7Anima[属性:72], 【表格】7级灵珠
	tWorldMapExploreAct_Data[3321299]["RewardItem"][1]["Attr"] = "0 1" -- P7Anima*1
	tWorldMapExploreAct_Data[3321299]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tWorldMapExploreAct_Data[3321299]["RewardTitle"] = {}
	tWorldMapExploreAct_Data[3321299]["RewardTitle"]["TitleType"] = 2126 -- 【库】Superman, 【表格】世界探索之王
	tWorldMapExploreAct_Data[3321299]["RewardTitle"]["TitleId"] = 2126
	tWorldMapExploreAct_Data[3321299]["RewardTitle"]["SaveTime"] = 43200 -- 30天时效的[称号]:Superman, 【需求】世界探索之王
	tWorldMapExploreAct_Data[3321299]["RewardItem"][2] = {}
	tWorldMapExploreAct_Data[3321299]["RewardItem"][2]["Id"] = 2168915 -- 【库】 2168915 【库里没有该物品】[属性:], 【表格】重鸾佩
	tWorldMapExploreAct_Data[3321299]["RewardItem"][2]["Attr"] = "0 1 0 43200 1 0 0 1" -- 30天时效(激活)的 2168915 【库里没有该物品】*1
	tWorldMapExploreAct_Data[3321299]["RewardItem"][3] = {}
	tWorldMapExploreAct_Data[3321299]["RewardItem"][3]["Id"] = 3319013 -- 【库】RareRandomYellowRunePack(B)[属性:9], 【表格】稀有黄色神纹随机包（赠）
	tWorldMapExploreAct_Data[3321299]["RewardItem"][3]["Attr"] = "0 2" -- RareRandomYellowRunePack(B)*2
	tWorldMapExploreAct_Data[3321299]["RewardItem"][4] = {}
	tWorldMapExploreAct_Data[3321299]["RewardItem"][4]["Id"] = 730006 -- 【库】+6Stone[属性:0], 【表格】赤炼石+6（赠）
	tWorldMapExploreAct_Data[3321299]["RewardItem"][4]["Attr"] = "0 2 3 2880 1" -- 2天时效(激活)的+6Stone（赠）*2
	tWorldMapExploreAct_Data[3321299]["RewardEffect"] = {}
	tWorldMapExploreAct_Data[3321299]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWorldMapExploreAct_Data[3321299]["RewardEffect"]["Effect"] = "angelwing"


	tWorldMapExploreAct_Data[3321300] = {}
	-- ===累计探索勇者包
	-- ===索引:tWorldMapExploreAct_Data[3321300]
	-- ===删除: 3321300,1
	tWorldMapExploreAct_Data[3321300]["LogId"] = 12001406
	tWorldMapExploreAct_Data[3321300]["DeleteItem"] = {}
	tWorldMapExploreAct_Data[3321300]["DeleteItem"][1] = {}
	tWorldMapExploreAct_Data[3321300]["DeleteItem"][1]["Id"] = 3321300 -- 【库】 3321300 【库里没有该物品】[属性:]
	tWorldMapExploreAct_Data[3321300]["RewardItem"] = {}
	tWorldMapExploreAct_Data[3321300]["RewardItem"][1] = {}
	tWorldMapExploreAct_Data[3321300]["RewardItem"][1]["Id"] = 4200006 -- 【库】P6Anima[属性:72], 【表格】6级灵珠
	tWorldMapExploreAct_Data[3321300]["RewardItem"][1]["Attr"] = "0 1" -- P6Anima*1
	tWorldMapExploreAct_Data[3321300]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tWorldMapExploreAct_Data[3321300]["RewardTitle"] = {}
	tWorldMapExploreAct_Data[3321300]["RewardTitle"]["TitleType"] = 2126 -- 【库】Superman, 【表格】世界探索之王
	tWorldMapExploreAct_Data[3321300]["RewardTitle"]["TitleId"] = 2126
	tWorldMapExploreAct_Data[3321300]["RewardTitle"]["SaveTime"] = 21600 -- 15天时效的[称号]:Superman, 【需求】世界探索之王
	tWorldMapExploreAct_Data[3321300]["RewardItem"][2] = {}
	tWorldMapExploreAct_Data[3321300]["RewardItem"][2]["Id"] = 2168915 -- 【库】 2168915 【库里没有该物品】[属性:], 【表格】重鸾佩
	tWorldMapExploreAct_Data[3321300]["RewardItem"][2]["Attr"] = "0 1 0 21600 1 0 0 1" -- 15天时效(激活)的 2168915 【库里没有该物品】*1
	tWorldMapExploreAct_Data[3321300]["RewardItem"][3] = {}
	tWorldMapExploreAct_Data[3321300]["RewardItem"][3]["Id"] = 3319013 -- 【库】RareRandomYellowRunePack(B)[属性:9], 【表格】稀有黄色神纹随机包（赠）
	tWorldMapExploreAct_Data[3321300]["RewardItem"][3]["Attr"] = "0 2" -- RareRandomYellowRunePack(B)*2
	tWorldMapExploreAct_Data[3321300]["RewardItem"][4] = {}
	tWorldMapExploreAct_Data[3321300]["RewardItem"][4]["Id"] = 730006 -- 【库】+6Stone[属性:0], 【表格】赤炼石+6（赠）
	tWorldMapExploreAct_Data[3321300]["RewardItem"][4]["Attr"] = "0 2 3 2880 1" -- 2天时效(激活)的+6Stone（赠）*2
	tWorldMapExploreAct_Data[3321300]["RewardEffect"] = {}
	tWorldMapExploreAct_Data[3321300]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWorldMapExploreAct_Data[3321300]["RewardEffect"]["Effect"] = "angelwing"


	tWorldMapExploreAct_Data[3321301] = {}
	-- ===累计探索狂热包
	-- ===索引:tWorldMapExploreAct_Data[3321301]
	-- ===删除: 3321301,1
	tWorldMapExploreAct_Data[3321301]["LogId"] = 12001406
	tWorldMapExploreAct_Data[3321301]["DeleteItem"] = {}
	tWorldMapExploreAct_Data[3321301]["DeleteItem"][1] = {}
	tWorldMapExploreAct_Data[3321301]["DeleteItem"][1]["Id"] = 3321301 -- 【库】 3321301 【库里没有该物品】[属性:]
	tWorldMapExploreAct_Data[3321301]["RewardItem"] = {}
	tWorldMapExploreAct_Data[3321301]["RewardItem"][1] = {}
	tWorldMapExploreAct_Data[3321301]["RewardItem"][1]["Id"] = 4200005 -- 【库】P5Anima[属性:72], 【表格】5级灵珠
	tWorldMapExploreAct_Data[3321301]["RewardItem"][1]["Attr"] = "0 1" -- P5Anima*1
	tWorldMapExploreAct_Data[3321301]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tWorldMapExploreAct_Data[3321301]["RewardTitle"] = {}
	tWorldMapExploreAct_Data[3321301]["RewardTitle"]["TitleType"] = 2126 -- 【库】Superman, 【表格】世界探索之王
	tWorldMapExploreAct_Data[3321301]["RewardTitle"]["TitleId"] = 2126
	tWorldMapExploreAct_Data[3321301]["RewardTitle"]["SaveTime"] = 10080 -- 7天时效的[称号]:Superman, 【需求】世界探索之王
	tWorldMapExploreAct_Data[3321301]["RewardItem"][2] = {}
	tWorldMapExploreAct_Data[3321301]["RewardItem"][2]["Id"] = 2168915 -- 【库】 2168915 【库里没有该物品】[属性:], 【表格】重鸾佩
	tWorldMapExploreAct_Data[3321301]["RewardItem"][2]["Attr"] = "0 1 0 10080 1 0 0 1" -- 7天时效(激活)的 2168915 【库里没有该物品】*1
	tWorldMapExploreAct_Data[3321301]["RewardItem"][3] = {}
	tWorldMapExploreAct_Data[3321301]["RewardItem"][3]["Id"] = 3319013 -- 【库】RareRandomYellowRunePack(B)[属性:9], 【表格】稀有黄色神纹随机包（赠）
	tWorldMapExploreAct_Data[3321301]["RewardItem"][3]["Attr"] = "0 1" -- RareRandomYellowRunePack(B)*1
	tWorldMapExploreAct_Data[3321301]["RewardItem"][4] = {}
	tWorldMapExploreAct_Data[3321301]["RewardItem"][4]["Id"] = 730005 -- 【库】+5Stone[属性:0], 【表格】赤炼石+5（赠）
	tWorldMapExploreAct_Data[3321301]["RewardItem"][4]["Attr"] = "0 2 3 2880 1" -- 2天时效(激活)的+5Stone（赠）*2
	tWorldMapExploreAct_Data[3321301]["RewardEffect"] = {}
	tWorldMapExploreAct_Data[3321301]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWorldMapExploreAct_Data[3321301]["RewardEffect"]["Effect"] = "angelwing"


	tWorldMapExploreAct_Data[3321302] = {}
	-- ===累计探索奋斗包
	-- ===索引:tWorldMapExploreAct_Data[3321302]
	-- ===删除: 3321302,1
	tWorldMapExploreAct_Data[3321302]["LogId"] = 12001406
	tWorldMapExploreAct_Data[3321302]["DeleteItem"] = {}
	tWorldMapExploreAct_Data[3321302]["DeleteItem"][1] = {}
	tWorldMapExploreAct_Data[3321302]["DeleteItem"][1]["Id"] = 3321302 -- 【库】 3321302 【库里没有该物品】[属性:]
	tWorldMapExploreAct_Data[3321302]["RewardItem"] = {}
	tWorldMapExploreAct_Data[3321302]["RewardItem"][1] = {}
	tWorldMapExploreAct_Data[3321302]["RewardItem"][1]["Id"] = 4200004 -- 【库】P4Anima[属性:72], 【表格】4级灵珠
	tWorldMapExploreAct_Data[3321302]["RewardItem"][1]["Attr"] = "0 1" -- P4Anima*1
	tWorldMapExploreAct_Data[3321302]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tWorldMapExploreAct_Data[3321302]["RewardItem"][2] = {}
	tWorldMapExploreAct_Data[3321302]["RewardItem"][2]["Id"] = 2168915 -- 【库】 2168915 【库里没有该物品】[属性:], 【表格】重鸾佩
	tWorldMapExploreAct_Data[3321302]["RewardItem"][2]["Attr"] = "0 1 0 10080 1 0 0 1" -- 7天时效(激活)的 2168915 【库里没有该物品】*1
	tWorldMapExploreAct_Data[3321302]["RewardItem"][3] = {}
	tWorldMapExploreAct_Data[3321302]["RewardItem"][3]["Id"] = 3319013 -- 【库】RareRandomYellowRunePack(B)[属性:9], 【表格】稀有黄色神纹随机包（赠）
	tWorldMapExploreAct_Data[3321302]["RewardItem"][3]["Attr"] = "0 1" -- RareRandomYellowRunePack(B)*1
	tWorldMapExploreAct_Data[3321302]["RewardItem"][4] = {}
	tWorldMapExploreAct_Data[3321302]["RewardItem"][4]["Id"] = 730005 -- 【库】+5Stone[属性:0], 【表格】赤炼石+5（赠）
	tWorldMapExploreAct_Data[3321302]["RewardItem"][4]["Attr"] = "0 2 3 2880 1" -- 2天时效(激活)的+5Stone（赠）*2
	tWorldMapExploreAct_Data[3321302]["RewardEffect"] = {}
	tWorldMapExploreAct_Data[3321302]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWorldMapExploreAct_Data[3321302]["RewardEffect"]["Effect"] = "angelwing"


	tWorldMapExploreAct_Data[3321303] = {}
	-- ===累计探索百强包
	-- ===索引:tWorldMapExploreAct_Data[3321303]
	-- ===删除: 3321303,1
	tWorldMapExploreAct_Data[3321303]["LogId"] = 12001406
	tWorldMapExploreAct_Data[3321303]["DeleteItem"] = {}
	tWorldMapExploreAct_Data[3321303]["DeleteItem"][1] = {}
	tWorldMapExploreAct_Data[3321303]["DeleteItem"][1]["Id"] = 3321303 -- 【库】 3321303 【库里没有该物品】[属性:]
	tWorldMapExploreAct_Data[3321303]["RewardItem"] = {}
	tWorldMapExploreAct_Data[3321303]["RewardItem"][1] = {}
	tWorldMapExploreAct_Data[3321303]["RewardItem"][1]["Id"] = 4200003 -- 【库】P3Anima[属性:72], 【表格】3级灵珠
	tWorldMapExploreAct_Data[3321303]["RewardItem"][1]["Attr"] = "0 1" -- P3Anima*1
	tWorldMapExploreAct_Data[3321303]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tWorldMapExploreAct_Data[3321303]["RewardItem"][2] = {}
	tWorldMapExploreAct_Data[3321303]["RewardItem"][2]["Id"] = 2168915 -- 【库】 2168915 【库里没有该物品】[属性:], 【表格】重鸾佩
	tWorldMapExploreAct_Data[3321303]["RewardItem"][2]["Attr"] = "0 1 0 10080 1 0 0 1" -- 7天时效(激活)的 2168915 【库里没有该物品】*1
	tWorldMapExploreAct_Data[3321303]["RewardItem"][3] = {}
	tWorldMapExploreAct_Data[3321303]["RewardItem"][3]["Id"] = 3319013 -- 【库】RareRandomYellowRunePack(B)[属性:9], 【表格】稀有黄色神纹随机包（赠）
	tWorldMapExploreAct_Data[3321303]["RewardItem"][3]["Attr"] = "0 1" -- RareRandomYellowRunePack(B)*1
	tWorldMapExploreAct_Data[3321303]["RewardItem"][4] = {}
	tWorldMapExploreAct_Data[3321303]["RewardItem"][4]["Id"] = 730005 -- 【库】+5Stone[属性:0], 【表格】赤炼石+5（赠）
	tWorldMapExploreAct_Data[3321303]["RewardItem"][4]["Attr"] = "0 2 3 2880 1" -- 2天时效(激活)的+5Stone（赠）*2
	tWorldMapExploreAct_Data[3321303]["RewardEffect"] = {}
	tWorldMapExploreAct_Data[3321303]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWorldMapExploreAct_Data[3321303]["RewardEffect"]["Effect"] = "angelwing"

----------------------------------逻辑部分---------------------------------------------












---------------------------------物品部分---------------------------------------------
tItem[3321271] = tItem[3321271] or {}
tItem[3321271]["Function"] = function(nItemId,sItemName)
	local nUserId = Get_UserId()
	local bJudge = TermsOfUse_Main(nItemId,tWorldMapExploreAct_Data[nItemId])
	
	if not bJudge then
		return
	end
	
	RewardTemplate_UseItemAndMsg(tWorldMapExploreAct_Data[nItemId],nUserId,bJudge)
end
tItem[3321272] = tItem[3321271]
tItem[3321273] = tItem[3321271]
tItem[3321274] = tItem[3321271]
tItem[3321275] = tItem[3321271]
tItem[3321276] = tItem[3321271]
tItem[3321277] = tItem[3321271]
tItem[3321278] = tItem[3321271]
tItem[3321279] = tItem[3321271]
tItem[3321280] = tItem[3321271]
tItem[3321281] = tItem[3321271]
tItem[3321282] = tItem[3321271]
tItem[3321283] = tItem[3321271]
tItem[3321284] = tItem[3321271]
tItem[3321285] = tItem[3321271]
tItem[3321286] = tItem[3321271]
tItem[3321287] = tItem[3321271]
tItem[3321288] = tItem[3321271]
tItem[3321289] = tItem[3321271]
tItem[3321290] = tItem[3321271]
tItem[3321291] = tItem[3321271]
tItem[3321292] = tItem[3321271]
tItem[3321293] = tItem[3321271]
tItem[3321294] = tItem[3321271]
tItem[3321295] = tItem[3321271]
tItem[3321296] = tItem[3321271]
tItem[3321297] = tItem[3321271]
tItem[3321298] = tItem[3321271]
tItem[3321299] = tItem[3321271]
tItem[3321300] = tItem[3321271]
tItem[3321301] = tItem[3321271]
tItem[3321302] = tItem[3321271]
tItem[3321303] = tItem[3321271]



