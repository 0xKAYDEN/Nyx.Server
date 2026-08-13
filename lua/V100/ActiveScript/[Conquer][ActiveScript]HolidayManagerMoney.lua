------------------------------------------------------------------------------------
--Name：            190418[简体征服][活动脚本]假日理财活动活动发奖ID
--Creator:      江宇君
--Created:     2019-04-18
------------------------------------------------------------------------------------
--任务需求：

------------------------------------------------------------------------------------
-- 命名后缀：	HolidayManagerMoney_

----------------------------------表配置部分--------------------------------------------

-- 奖励表
local tHolidayManagerMoney_Reward = {}
	-- ===3312279 7日投资650档参与包
	-- ===索引: tHolidayManagerMoney_Reward[3312279]
	-- ===删除: 3312279,1
	-- ===EMoneyLog:10000,0455
	tHolidayManagerMoney_Reward[3312279] = {}
	tHolidayManagerMoney_Reward[3312279]["LogId"] = 12001373
	tHolidayManagerMoney_Reward[3312279]["DeleteItem"] = {}
	tHolidayManagerMoney_Reward[3312279]["DeleteItem"][1] = {}
	tHolidayManagerMoney_Reward[3312279]["DeleteItem"][1]["Id"] = 3312279 -- 【库】7日投资豪华礼盒[属性:9]
	tHolidayManagerMoney_Reward[3312279]["RewardItem"] = {}
	tHolidayManagerMoney_Reward[3312279]["RewardItem"][1] = {}
	tHolidayManagerMoney_Reward[3312279]["RewardItem"][1]["Id"] = 4200006 -- 【库】6阶灵珠[属性:72], 【表格】6阶灵珠
	tHolidayManagerMoney_Reward[3312279]["RewardItem"][1]["Attr"] = "0 1" -- 6阶灵珠*1
	tHolidayManagerMoney_Reward[3312279]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tHolidayManagerMoney_Reward[3312279]["RewardEMoneyMono"] = {}
	tHolidayManagerMoney_Reward[3312279]["RewardEMoneyMono"]["Value"] = 27 -- 天石（赠）, 【需求】27天石（赠）
	tHolidayManagerMoney_Reward[3312279]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	455"
	tHolidayManagerMoney_Reward[3312279]["RewardEffect"] = {}
	tHolidayManagerMoney_Reward[3312279]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHolidayManagerMoney_Reward[3312279]["RewardEffect"]["Effect"] = "angelwing"


	tHolidayManagerMoney_Reward[3312280] = {}
	-- ===3312280 7日投资6650档参与包
	-- ===索引: tHolidayManagerMoney_Reward[3312280]
	-- ===删除: 3312280,1
	-- ===EMoneyLog:10000,0456
	tHolidayManagerMoney_Reward[3312280]["LogId"] = 12001373
	tHolidayManagerMoney_Reward[3312280]["DeleteItem"] = {}
	tHolidayManagerMoney_Reward[3312280]["DeleteItem"][1] = {}
	tHolidayManagerMoney_Reward[3312280]["DeleteItem"][1]["Id"] = 3312280 -- 【库】7日投资奢华礼盒[属性:9]
	tHolidayManagerMoney_Reward[3312280]["RewardItem"] = {}
	tHolidayManagerMoney_Reward[3312280]["RewardItem"][1] = {}
	tHolidayManagerMoney_Reward[3312280]["RewardItem"][1]["Id"] = 4200010 -- 【库】10阶灵珠[属性:72], 【表格】10阶灵珠
	tHolidayManagerMoney_Reward[3312280]["RewardItem"][1]["Attr"] = "0 1" -- 10阶灵珠*1
	tHolidayManagerMoney_Reward[3312280]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tHolidayManagerMoney_Reward[3312280]["RewardItem"][2] = {}
	tHolidayManagerMoney_Reward[3312280]["RewardItem"][2]["Id"] = 4200006 -- 【库】6阶灵珠[属性:72], 【表格】6阶灵珠
	tHolidayManagerMoney_Reward[3312280]["RewardItem"][2]["Attr"] = "0 1" -- 6阶灵珠*1
	tHolidayManagerMoney_Reward[3312280]["RewardItem"][2]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tHolidayManagerMoney_Reward[3312280]["RewardItem"][3] = {}
	tHolidayManagerMoney_Reward[3312280]["RewardItem"][3]["Id"] = 4200002 -- 【库】12阶灵珠[属性:72], 【表格】12阶灵珠 -- 根据运营需求，修改为2阶灵珠
	tHolidayManagerMoney_Reward[3312280]["RewardItem"][3]["Attr"] = "0 1" -- 12阶灵珠*1
	tHolidayManagerMoney_Reward[3312280]["RewardItem"][3]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tHolidayManagerMoney_Reward[3312280]["RewardEMoneyMono"] = {}
	tHolidayManagerMoney_Reward[3312280]["RewardEMoneyMono"]["Value"] = 300 -- 天石（赠）, 【需求】300天石（赠）
	tHolidayManagerMoney_Reward[3312280]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	456"
	tHolidayManagerMoney_Reward[3312280]["RewardEffect"] = {}
	tHolidayManagerMoney_Reward[3312280]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHolidayManagerMoney_Reward[3312280]["RewardEffect"]["Effect"] = "angelwing"


	tHolidayManagerMoney_Reward[3312281] = {}
	-- ===3312281 15日投资1000档参与包
	-- ===索引: tHolidayManagerMoney_Reward[3312281]
	-- ===删除: 3312281,1
	-- ===EMoneyLog:10000,0457
	tHolidayManagerMoney_Reward[3312281]["LogId"] = 12001373
	tHolidayManagerMoney_Reward[3312281]["DeleteItem"] = {}
	tHolidayManagerMoney_Reward[3312281]["DeleteItem"][1] = {}
	tHolidayManagerMoney_Reward[3312281]["DeleteItem"][1]["Id"] = 3312281 -- 【库】15日投资豪华礼盒[属性:9]
	tHolidayManagerMoney_Reward[3312281]["RewardItem"] = {}
	tHolidayManagerMoney_Reward[3312281]["RewardItem"][1] = {}
	tHolidayManagerMoney_Reward[3312281]["RewardItem"][1]["Id"] = 4200007 -- 【库】7阶灵珠[属性:72], 【表格】7阶灵珠
	tHolidayManagerMoney_Reward[3312281]["RewardItem"][1]["Attr"] = "0 1" -- 7阶灵珠*1
	tHolidayManagerMoney_Reward[3312281]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tHolidayManagerMoney_Reward[3312281]["RewardItem"][2] = {}
	tHolidayManagerMoney_Reward[3312281]["RewardItem"][2]["Id"] = 4200003 -- 【库】3阶灵珠[属性:72], 【表格】3阶灵珠
	tHolidayManagerMoney_Reward[3312281]["RewardItem"][2]["Attr"] = "0 1" -- 3阶灵珠*1
	tHolidayManagerMoney_Reward[3312281]["RewardItem"][2]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tHolidayManagerMoney_Reward[3312281]["RewardEMoneyMono"] = {}
	tHolidayManagerMoney_Reward[3312281]["RewardEMoneyMono"]["Value"] = 54 -- 天石（赠）, 【需求】54天石（赠）
	tHolidayManagerMoney_Reward[3312281]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	457"
	tHolidayManagerMoney_Reward[3312281]["RewardEffect"] = {}
	tHolidayManagerMoney_Reward[3312281]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHolidayManagerMoney_Reward[3312281]["RewardEffect"]["Effect"] = "angelwing"


	tHolidayManagerMoney_Reward[3312282] = {}
	-- ===3312282 15日投资10000档参与包
	-- ===索引: tHolidayManagerMoney_Reward[3312282]
	-- ===删除: 3312282
	-- ===EMoneyLog:10000,0458
	tHolidayManagerMoney_Reward[3312282]["LogId"] = 12001373
	tHolidayManagerMoney_Reward[3312282]["DeleteItem"] = {}
	tHolidayManagerMoney_Reward[3312282]["DeleteItem"][1] = {}
	tHolidayManagerMoney_Reward[3312282]["DeleteItem"][1]["Id"] = 3312282 -- 【库】15日投资奢华礼盒[属性:9]
	tHolidayManagerMoney_Reward[3312282]["RewardItem"] = {}
	tHolidayManagerMoney_Reward[3312282]["RewardItem"][1] = {}
	tHolidayManagerMoney_Reward[3312282]["RewardItem"][1]["Id"] = 4200011 -- 【库】11阶灵珠[属性:72], 【表格】11阶灵珠
	tHolidayManagerMoney_Reward[3312282]["RewardItem"][1]["Attr"] = "0 1" -- 11阶灵珠*1
	tHolidayManagerMoney_Reward[3312282]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tHolidayManagerMoney_Reward[3312282]["RewardItem"][2] = {}
	tHolidayManagerMoney_Reward[3312282]["RewardItem"][2]["Id"] = 4200005 -- 【库】5阶灵珠[属性:72], 【表格】5阶灵珠
	tHolidayManagerMoney_Reward[3312282]["RewardItem"][2]["Attr"] = "0 1" -- 5阶灵珠*1
	tHolidayManagerMoney_Reward[3312282]["RewardItem"][2]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tHolidayManagerMoney_Reward[3312282]["RewardEMoneyMono"] = {}
	tHolidayManagerMoney_Reward[3312282]["RewardEMoneyMono"]["Value"] = 900 -- 天石（赠）, 【需求】900天石（赠）
	tHolidayManagerMoney_Reward[3312282]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	458"
	tHolidayManagerMoney_Reward[3312282]["RewardEffect"] = {}
	tHolidayManagerMoney_Reward[3312282]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHolidayManagerMoney_Reward[3312282]["RewardEffect"]["Effect"] = "angelwing"


	tHolidayManagerMoney_Reward[3312283] = {}
	-- ===3312283 30日投资200档参与包
	-- ===索引: tHolidayManagerMoney_Reward[3312283]
	-- ===删除: 3312283,1
	-- ===EMoneyLog:10000,0459
	tHolidayManagerMoney_Reward[3312283]["LogId"] = 12001373
	tHolidayManagerMoney_Reward[3312283]["DeleteItem"] = {}
	tHolidayManagerMoney_Reward[3312283]["DeleteItem"][1] = {}
	tHolidayManagerMoney_Reward[3312283]["DeleteItem"][1]["Id"] = 3312283 -- 【库】30日投资精致礼盒[属性:9]
	tHolidayManagerMoney_Reward[3312283]["RewardItem"] = {}
	tHolidayManagerMoney_Reward[3312283]["RewardItem"][1] = {}
	tHolidayManagerMoney_Reward[3312283]["RewardItem"][1]["Id"] = 4200004 -- 【库】4阶灵珠[属性:72], 【表格】4阶灵珠
	tHolidayManagerMoney_Reward[3312283]["RewardItem"][1]["Attr"] = "0 1" -- 4阶灵珠*1
	tHolidayManagerMoney_Reward[3312283]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tHolidayManagerMoney_Reward[3312283]["RewardItem"][2] = {}
	tHolidayManagerMoney_Reward[3312283]["RewardItem"][2]["Id"] = 4200002 -- 【库】2阶灵珠[属性:72], 【表格】2阶灵珠
	tHolidayManagerMoney_Reward[3312283]["RewardItem"][2]["Attr"] = "0 1" -- 2阶灵珠*1
	tHolidayManagerMoney_Reward[3312283]["RewardItem"][2]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tHolidayManagerMoney_Reward[3312283]["RewardEMoneyMono"] = {}
	tHolidayManagerMoney_Reward[3312283]["RewardEMoneyMono"]["Value"] = 5 -- 天石（赠）, 【需求】5天石（赠）
	tHolidayManagerMoney_Reward[3312283]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	459"
	tHolidayManagerMoney_Reward[3312283]["RewardEffect"] = {}
	tHolidayManagerMoney_Reward[3312283]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHolidayManagerMoney_Reward[3312283]["RewardEffect"]["Effect"] = "angelwing"


	tHolidayManagerMoney_Reward[3312284] = {}
	-- ===3312284 30日投资1000档参与包
	-- ===索引: tHolidayManagerMoney_Reward[3312284]
	-- ===删除: 3312284,1
	-- ===EMoneyLog:10000,0460
	tHolidayManagerMoney_Reward[3312284]["LogId"] = 12001373
	tHolidayManagerMoney_Reward[3312284]["DeleteItem"] = {}
	tHolidayManagerMoney_Reward[3312284]["DeleteItem"][1] = {}
	tHolidayManagerMoney_Reward[3312284]["DeleteItem"][1]["Id"] = 3312284 -- 【库】30日投资豪华礼盒[属性:9]
	tHolidayManagerMoney_Reward[3312284]["RewardItem"] = {}
	tHolidayManagerMoney_Reward[3312284]["RewardItem"][1] = {}
	tHolidayManagerMoney_Reward[3312284]["RewardItem"][1]["Id"] = 4200007 -- 【库】7阶灵珠[属性:72], 【表格】7阶灵珠
	tHolidayManagerMoney_Reward[3312284]["RewardItem"][1]["Attr"] = "0 1" -- 7阶灵珠*1
	tHolidayManagerMoney_Reward[3312284]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tHolidayManagerMoney_Reward[3312284]["RewardItem"][2] = {}
	tHolidayManagerMoney_Reward[3312284]["RewardItem"][2]["Id"] = 4200003 -- 【库】3阶灵珠[属性:72], 【表格】3阶灵珠
	tHolidayManagerMoney_Reward[3312284]["RewardItem"][2]["Attr"] = "0 1" -- 3阶灵珠*1
	tHolidayManagerMoney_Reward[3312284]["RewardItem"][2]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tHolidayManagerMoney_Reward[3312284]["RewardEMoneyMono"] = {}
	tHolidayManagerMoney_Reward[3312284]["RewardEMoneyMono"]["Value"] = 30 -- 天石（赠）, 【需求】30天石（赠）
	tHolidayManagerMoney_Reward[3312284]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	460"
	tHolidayManagerMoney_Reward[3312284]["RewardEffect"] = {}
	tHolidayManagerMoney_Reward[3312284]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHolidayManagerMoney_Reward[3312284]["RewardEffect"]["Effect"] = "angelwing"


	tHolidayManagerMoney_Reward[3312285] = {}
	-- ===3312285 30日投资10000档参与包
	-- ===索引: tHolidayManagerMoney_Reward[3312285]
	-- ===删除: 3312285,1
	-- ===EMoneyLog:10000,0461
	tHolidayManagerMoney_Reward[3312285]["LogId"] = 12001373
	tHolidayManagerMoney_Reward[3312285]["DeleteItem"] = {}
	tHolidayManagerMoney_Reward[3312285]["DeleteItem"][1] = {}
	tHolidayManagerMoney_Reward[3312285]["DeleteItem"][1]["Id"] = 3312285 -- 【库】30日投资奢华礼盒[属性:9]
	tHolidayManagerMoney_Reward[3312285]["RewardItem"] = {}
	tHolidayManagerMoney_Reward[3312285]["RewardItem"][1] = {}
	tHolidayManagerMoney_Reward[3312285]["RewardItem"][1]["Id"] = 4200010 -- 【库】10阶灵珠[属性:72], 【表格】10阶灵珠
	tHolidayManagerMoney_Reward[3312285]["RewardItem"][1]["Attr"] = "0 1" -- 10阶灵珠*1
	tHolidayManagerMoney_Reward[3312285]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tHolidayManagerMoney_Reward[3312285]["RewardItem"][2] = {}
	tHolidayManagerMoney_Reward[3312285]["RewardItem"][2]["Id"] = 4200006 -- 【库】6阶灵珠[属性:72], 【表格】6阶灵珠
	tHolidayManagerMoney_Reward[3312285]["RewardItem"][2]["Attr"] = "0 1" -- 6阶灵珠*1
	tHolidayManagerMoney_Reward[3312285]["RewardItem"][2]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tHolidayManagerMoney_Reward[3312285]["RewardItem"][3] = {}
	tHolidayManagerMoney_Reward[3312285]["RewardItem"][3]["Id"] = 4200005 -- 【库】5阶灵珠[属性:72], 【表格】5阶灵珠
	tHolidayManagerMoney_Reward[3312285]["RewardItem"][3]["Attr"] = "0 1" -- 5阶灵珠*1
	tHolidayManagerMoney_Reward[3312285]["RewardItem"][3]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tHolidayManagerMoney_Reward[3312285]["RewardEMoneyMono"] = {}
	tHolidayManagerMoney_Reward[3312285]["RewardEMoneyMono"]["Value"] = 1000 -- 天石（赠）, 【需求】1000天石（赠）
	tHolidayManagerMoney_Reward[3312285]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	461"
	tHolidayManagerMoney_Reward[3312285]["RewardStrengthValue"] = {}
	tHolidayManagerMoney_Reward[3312285]["RewardStrengthValue"]["Value"] = 2000 -- 气力值, 【需求】2000点气力值
	tHolidayManagerMoney_Reward[3312285]["RewardEffect"] = {}
	tHolidayManagerMoney_Reward[3312285]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHolidayManagerMoney_Reward[3312285]["RewardEffect"]["Effect"] = "angelwing"


	tHolidayManagerMoney_Reward[3312286] = {}
	-- ===3312286 7日投资650返利包
	-- ===索引: tHolidayManagerMoney_Reward[3312286]
	-- ===删除: 3312286,1
	tHolidayManagerMoney_Reward[3312286]["LogId"] = 12001373
	tHolidayManagerMoney_Reward[3312286]["DeleteItem"] = {}
	tHolidayManagerMoney_Reward[3312286]["DeleteItem"][1] = {}
	tHolidayManagerMoney_Reward[3312286]["DeleteItem"][1]["Id"] = 3312286 -- 【库】7日返利礼盒[属性:9]
	tHolidayManagerMoney_Reward[3312286]["RewardItem"] = {}
	tHolidayManagerMoney_Reward[3312286]["RewardItem"][1] = {}
	tHolidayManagerMoney_Reward[3312286]["RewardItem"][1]["Id"] = 4200002 -- 【库】2阶灵珠[属性:72], 【表格】2阶灵珠
	tHolidayManagerMoney_Reward[3312286]["RewardItem"][1]["Attr"] = "0 1" -- 2阶灵珠*1
	tHolidayManagerMoney_Reward[3312286]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tHolidayManagerMoney_Reward[3312286]["RewardItem"][2] = {}
	tHolidayManagerMoney_Reward[3312286]["RewardItem"][2]["Id"] = 4200003 -- 【库】3阶灵珠[属性:72], 【表格】3阶灵珠
	tHolidayManagerMoney_Reward[3312286]["RewardItem"][2]["Attr"] = "0 1" -- 3阶灵珠*1
	tHolidayManagerMoney_Reward[3312286]["RewardItem"][2]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tHolidayManagerMoney_Reward[3312286]["RewardItem"][3] = {}
	tHolidayManagerMoney_Reward[3312286]["RewardItem"][3]["Id"] = 4200004 -- 【库】4阶灵珠[属性:72], 【表格】4阶灵珠
	tHolidayManagerMoney_Reward[3312286]["RewardItem"][3]["Attr"] = "0 1" -- 4阶灵珠*1
	tHolidayManagerMoney_Reward[3312286]["RewardItem"][3]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tHolidayManagerMoney_Reward[3312286]["RewardItem"][4] = {}
	tHolidayManagerMoney_Reward[3312286]["RewardItem"][4]["Id"] = 4060001 -- 【库】万能神纹精粹[属性:9], 【表格】万能神纹精粹（赠）
	tHolidayManagerMoney_Reward[3312286]["RewardItem"][4]["Attr"] = "0 9 3" -- 万能神纹精粹（赠）*9
	tHolidayManagerMoney_Reward[3312286]["RewardEffect"] = {}
	tHolidayManagerMoney_Reward[3312286]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHolidayManagerMoney_Reward[3312286]["RewardEffect"]["Effect"] = "angelwing"


	tHolidayManagerMoney_Reward[3312287] = {}
	-- ===3312287 7日投资6666返利包
	-- ===索引: tHolidayManagerMoney_Reward[3312287]
	-- ===删除: 3312287,1
	tHolidayManagerMoney_Reward[3312287]["LogId"] = 12001373
	tHolidayManagerMoney_Reward[3312287]["DeleteItem"] = {}
	tHolidayManagerMoney_Reward[3312287]["DeleteItem"][1] = {}
	tHolidayManagerMoney_Reward[3312287]["DeleteItem"][1]["Id"] = 3312287 -- 【库】7日返利精致礼盒[属性:9]
	tHolidayManagerMoney_Reward[3312287]["RewardItem"] = {}
	tHolidayManagerMoney_Reward[3312287]["RewardItem"][1] = {}
	tHolidayManagerMoney_Reward[3312287]["RewardItem"][1]["Id"] = 4200005 -- 【库】5阶灵珠[属性:72], 【表格】5阶灵珠
	tHolidayManagerMoney_Reward[3312287]["RewardItem"][1]["Attr"] = "0 1" -- 5阶灵珠*1
	tHolidayManagerMoney_Reward[3312287]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tHolidayManagerMoney_Reward[3312287]["RewardItem"][2] = {}
	tHolidayManagerMoney_Reward[3312287]["RewardItem"][2]["Id"] = 4200006 -- 【库】6阶灵珠[属性:72], 【表格】6阶灵珠
	tHolidayManagerMoney_Reward[3312287]["RewardItem"][2]["Attr"] = "0 1" -- 6阶灵珠*1
	tHolidayManagerMoney_Reward[3312287]["RewardItem"][2]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tHolidayManagerMoney_Reward[3312287]["RewardItem"][3] = {}
	tHolidayManagerMoney_Reward[3312287]["RewardItem"][3]["Id"] = 4200007 -- 【库】7阶灵珠[属性:72], 【表格】7阶灵珠
	tHolidayManagerMoney_Reward[3312287]["RewardItem"][3]["Attr"] = "0 1" -- 7阶灵珠*1
	tHolidayManagerMoney_Reward[3312287]["RewardItem"][3]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tHolidayManagerMoney_Reward[3312287]["RewardItem"][4] = {}
	tHolidayManagerMoney_Reward[3312287]["RewardItem"][4]["Id"] = 4060001 -- 【库】万能神纹精粹[属性:9], 【表格】万能神纹精粹（赠）
	tHolidayManagerMoney_Reward[3312287]["RewardItem"][4]["Attr"] = "0 90 3" -- 万能神纹精粹（赠）*90
	tHolidayManagerMoney_Reward[3312287]["RewardEffect"] = {}
	tHolidayManagerMoney_Reward[3312287]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHolidayManagerMoney_Reward[3312287]["RewardEffect"]["Effect"] = "angelwing"


	tHolidayManagerMoney_Reward[3312288] = {}
	-- ===3312288 15日投资1000返利包
	-- ===索引: tHolidayManagerMoney_Reward[3312288]
	-- ===删除: 3312288,1
	tHolidayManagerMoney_Reward[3312288]["LogId"] = 12001373
	tHolidayManagerMoney_Reward[3312288]["DeleteItem"] = {}
	tHolidayManagerMoney_Reward[3312288]["DeleteItem"][1] = {}
	tHolidayManagerMoney_Reward[3312288]["DeleteItem"][1]["Id"] = 3312288 -- 【库】15日返利礼盒[属性:9]
	tHolidayManagerMoney_Reward[3312288]["RewardItem"] = {}
	tHolidayManagerMoney_Reward[3312288]["RewardItem"][1] = {}
	tHolidayManagerMoney_Reward[3312288]["RewardItem"][1]["Id"] = 4200004 -- 【库】4阶灵珠[属性:72], 【表格】4阶灵珠
	tHolidayManagerMoney_Reward[3312288]["RewardItem"][1]["Attr"] = "0 1" -- 4阶灵珠*1
	tHolidayManagerMoney_Reward[3312288]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tHolidayManagerMoney_Reward[3312288]["RewardItem"][2] = {}
	tHolidayManagerMoney_Reward[3312288]["RewardItem"][2]["Id"] = 4060001 -- 【库】万能神纹精粹[属性:9], 【表格】万能神纹精粹（赠）
	tHolidayManagerMoney_Reward[3312288]["RewardItem"][2]["Attr"] = "0 18 3" -- 万能神纹精粹（赠）*18
	tHolidayManagerMoney_Reward[3312288]["RewardEffect"] = {}
	tHolidayManagerMoney_Reward[3312288]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHolidayManagerMoney_Reward[3312288]["RewardEffect"]["Effect"] = "angelwing"


	tHolidayManagerMoney_Reward[3312289] = {}
	-- ===3312289 15日投资10000返利包
	-- ===索引: tHolidayManagerMoney_Reward[3312289]
	-- ===删除: 3312289,1
	tHolidayManagerMoney_Reward[3312289]["LogId"] = 12001373
	tHolidayManagerMoney_Reward[3312289]["DeleteItem"] = {}
	tHolidayManagerMoney_Reward[3312289]["DeleteItem"][1] = {}
	tHolidayManagerMoney_Reward[3312289]["DeleteItem"][1]["Id"] = 3312289 -- 【库】15日返利精致礼盒[属性:9]
	tHolidayManagerMoney_Reward[3312289]["RewardItem"] = {}
	tHolidayManagerMoney_Reward[3312289]["RewardItem"][1] = {}
	tHolidayManagerMoney_Reward[3312289]["RewardItem"][1]["Id"] = 4200007 -- 【库】7阶灵珠[属性:72], 【表格】7阶灵珠
	tHolidayManagerMoney_Reward[3312289]["RewardItem"][1]["Attr"] = "0 1" -- 7阶灵珠*1
	tHolidayManagerMoney_Reward[3312289]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tHolidayManagerMoney_Reward[3312289]["RewardItem"][2] = {}
	tHolidayManagerMoney_Reward[3312289]["RewardItem"][2]["Id"] = 4060001 -- 【库】万能神纹精粹[属性:9], 【表格】万能神纹精粹（赠）
	tHolidayManagerMoney_Reward[3312289]["RewardItem"][2]["Attr"] = "0 90 3" -- 万能神纹精粹（赠）*90
	tHolidayManagerMoney_Reward[3312289]["RewardEffect"] = {}
	tHolidayManagerMoney_Reward[3312289]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHolidayManagerMoney_Reward[3312289]["RewardEffect"]["Effect"] = "angelwing"


	tHolidayManagerMoney_Reward[3312290] = {}
	-- ===3312290 30日投资200返利包
	-- ===索引: tHolidayManagerMoney_Reward[3312290]
	-- ===删除: 3312290,1
	tHolidayManagerMoney_Reward[3312290]["LogId"] = 12001373
	tHolidayManagerMoney_Reward[3312290]["DeleteItem"] = {}
	tHolidayManagerMoney_Reward[3312290]["DeleteItem"][1] = {}
	tHolidayManagerMoney_Reward[3312290]["DeleteItem"][1]["Id"] = 3312290 -- 【库】30日返利礼盒[属性:9]
	tHolidayManagerMoney_Reward[3312290]["RewardItem"] = {}
	tHolidayManagerMoney_Reward[3312290]["RewardItem"][1] = {}
	tHolidayManagerMoney_Reward[3312290]["RewardItem"][1]["Id"] = 4200001 -- 【库】1阶灵珠[属性:72], 【表格】1阶灵珠
	tHolidayManagerMoney_Reward[3312290]["RewardItem"][1]["Attr"] = "0 1" -- 1阶灵珠*1
	tHolidayManagerMoney_Reward[3312290]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tHolidayManagerMoney_Reward[3312290]["RewardItem"][2] = {}
	tHolidayManagerMoney_Reward[3312290]["RewardItem"][2]["Id"] = 4060001 -- 【库】万能神纹精粹[属性:9], 【表格】万能神纹精粹（赠）
	tHolidayManagerMoney_Reward[3312290]["RewardItem"][2]["Attr"] = "0 4 3" -- 万能神纹精粹（赠）*4
	tHolidayManagerMoney_Reward[3312290]["RewardEffect"] = {}
	tHolidayManagerMoney_Reward[3312290]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHolidayManagerMoney_Reward[3312290]["RewardEffect"]["Effect"] = "angelwing"


	tHolidayManagerMoney_Reward[3312291] = {}
	-- ===3312291 30日投资1000返利包
	-- ===索引: tHolidayManagerMoney_Reward[3312291]
	-- ===删除: 3312291,1
	tHolidayManagerMoney_Reward[3312291]["LogId"] = 12001373
	tHolidayManagerMoney_Reward[3312291]["DeleteItem"] = {}
	tHolidayManagerMoney_Reward[3312291]["DeleteItem"][1] = {}
	tHolidayManagerMoney_Reward[3312291]["DeleteItem"][1]["Id"] = 3312291 -- 【库】30日返利精致礼盒[属性:9]
	tHolidayManagerMoney_Reward[3312291]["RewardItem"] = {}
	tHolidayManagerMoney_Reward[3312291]["RewardItem"][1] = {}
	tHolidayManagerMoney_Reward[3312291]["RewardItem"][1]["Id"] = 4200003 -- 【库】3阶灵珠[属性:72], 【表格】3阶灵珠
	tHolidayManagerMoney_Reward[3312291]["RewardItem"][1]["Attr"] = "0 1" -- 3阶灵珠*1
	tHolidayManagerMoney_Reward[3312291]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tHolidayManagerMoney_Reward[3312291]["RewardItem"][2] = {}
	tHolidayManagerMoney_Reward[3312291]["RewardItem"][2]["Id"] = 4060001 -- 【库】万能神纹精粹[属性:9], 【表格】万能神纹精粹（赠）
	tHolidayManagerMoney_Reward[3312291]["RewardItem"][2]["Attr"] = "0 27 3" -- 万能神纹精粹（赠）*27
	tHolidayManagerMoney_Reward[3312291]["RewardStrengthValue"] = {}
	tHolidayManagerMoney_Reward[3312291]["RewardStrengthValue"]["Value"] = 1000 -- 气力值, 【需求】1000点气力值
	tHolidayManagerMoney_Reward[3312291]["RewardEffect"] = {}
	tHolidayManagerMoney_Reward[3312291]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHolidayManagerMoney_Reward[3312291]["RewardEffect"]["Effect"] = "angelwing"


	tHolidayManagerMoney_Reward[3312292] = {}
	-- ===3312292 30日投资10000返利包
	-- ===索引: tHolidayManagerMoney_Reward[3312292]
	-- ===删除: 3312292,1
	tHolidayManagerMoney_Reward[3312292]["LogId"] = 12001373
	tHolidayManagerMoney_Reward[3312292]["DeleteItem"] = {}
	tHolidayManagerMoney_Reward[3312292]["DeleteItem"][1] = {}
	tHolidayManagerMoney_Reward[3312292]["DeleteItem"][1]["Id"] = 3312292 -- 【库】30日返利豪华礼盒[属性:9]
	tHolidayManagerMoney_Reward[3312292]["RewardItem"] = {}
	tHolidayManagerMoney_Reward[3312292]["RewardItem"][1] = {}
	tHolidayManagerMoney_Reward[3312292]["RewardItem"][1]["Id"] = 4200005 -- 【库】5阶灵珠[属性:72], 【表格】5阶灵珠
	tHolidayManagerMoney_Reward[3312292]["RewardItem"][1]["Attr"] = "0 1" -- 5阶灵珠*1
	tHolidayManagerMoney_Reward[3312292]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tHolidayManagerMoney_Reward[3312292]["RewardItem"][2] = {}
	tHolidayManagerMoney_Reward[3312292]["RewardItem"][2]["Id"] = 4200006 -- 【库】6阶灵珠[属性:72], 【表格】6阶灵珠
	tHolidayManagerMoney_Reward[3312292]["RewardItem"][2]["Attr"] = "0 1" -- 6阶灵珠*1
	tHolidayManagerMoney_Reward[3312292]["RewardItem"][2]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tHolidayManagerMoney_Reward[3312292]["RewardItem"][3] = {}
	tHolidayManagerMoney_Reward[3312292]["RewardItem"][3]["Id"] = 4060001 -- 【库】万能神纹精粹[属性:9], 【表格】万能神纹精粹（赠）
	tHolidayManagerMoney_Reward[3312292]["RewardItem"][3]["Attr"] = "0 135 3" -- 万能神纹精粹（赠）*135
	tHolidayManagerMoney_Reward[3312292]["RewardStrengthValue"] = {}
	tHolidayManagerMoney_Reward[3312292]["RewardStrengthValue"]["Value"] = 6000 -- 气力值, 【需求】6000点气力值
	tHolidayManagerMoney_Reward[3312292]["RewardEffect"] = {}
	tHolidayManagerMoney_Reward[3312292]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHolidayManagerMoney_Reward[3312292]["RewardEffect"]["Effect"] = "angelwing"



	-- ===3327017 7日投资650档参与包
	-- ===索引: tHolidayManagerMoney_Reward[3327017]
	-- ===删除: 3327017,1
	-- ===EMoneyLog:10000,0455
	tHolidayManagerMoney_Reward[3327017] = {}
	tHolidayManagerMoney_Reward[3327017]["LogId"] = 12001373
	tHolidayManagerMoney_Reward[3327017]["DeleteItem"] = {}
	tHolidayManagerMoney_Reward[3327017]["DeleteItem"][1] = {}
	tHolidayManagerMoney_Reward[3327017]["DeleteItem"][1]["Id"] = 3327017 -- 【库】7日投资豪华礼盒[属性:9]
	tHolidayManagerMoney_Reward[3327017]["RewardItem"] = {}
	tHolidayManagerMoney_Reward[3327017]["RewardItem"][1] = {}
	tHolidayManagerMoney_Reward[3327017]["RewardItem"][1]["Id"] = 4200006 -- 【库】6阶灵珠[属性:72], 【表格】6阶灵珠
	tHolidayManagerMoney_Reward[3327017]["RewardItem"][1]["Attr"] = "0 1" -- 6阶灵珠*1
	tHolidayManagerMoney_Reward[3327017]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tHolidayManagerMoney_Reward[3327017]["RewardEMoneyMono"] = {}
	tHolidayManagerMoney_Reward[3327017]["RewardEMoneyMono"]["Value"] = 81 -- 天石（赠）, 【需求】81天石（赠）
	tHolidayManagerMoney_Reward[3327017]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	455"
	tHolidayManagerMoney_Reward[3327017]["RewardEffect"] = {}
	tHolidayManagerMoney_Reward[3327017]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHolidayManagerMoney_Reward[3327017]["RewardEffect"]["Effect"] = "angelwing"


	tHolidayManagerMoney_Reward[3327018] = {}
	-- ===3327018 7日投资6650档参与包
	-- ===索引: tHolidayManagerMoney_Reward[3327018]
	-- ===删除: 3327018,1
	-- ===EMoneyLog:10000,0456
	tHolidayManagerMoney_Reward[3327018]["LogId"] = 12001373
	tHolidayManagerMoney_Reward[3327018]["DeleteItem"] = {}
	tHolidayManagerMoney_Reward[3327018]["DeleteItem"][1] = {}
	tHolidayManagerMoney_Reward[3327018]["DeleteItem"][1]["Id"] = 3327018 -- 【库】7日投资奢华礼盒[属性:9]
	tHolidayManagerMoney_Reward[3327018]["RewardItem"] = {}
	tHolidayManagerMoney_Reward[3327018]["RewardItem"][1] = {}
	tHolidayManagerMoney_Reward[3327018]["RewardItem"][1]["Id"] = 4200010 -- 【库】10阶灵珠[属性:72], 【表格】10阶灵珠
	tHolidayManagerMoney_Reward[3327018]["RewardItem"][1]["Attr"] = "0 1" -- 10阶灵珠*1
	tHolidayManagerMoney_Reward[3327018]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tHolidayManagerMoney_Reward[3327018]["RewardItem"][2] = {}
	tHolidayManagerMoney_Reward[3327018]["RewardItem"][2]["Id"] = 4200006 -- 【库】6阶灵珠[属性:72], 【表格】6阶灵珠
	tHolidayManagerMoney_Reward[3327018]["RewardItem"][2]["Attr"] = "0 1" -- 6阶灵珠*1
	tHolidayManagerMoney_Reward[3327018]["RewardItem"][2]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tHolidayManagerMoney_Reward[3327018]["RewardItem"][3] = {}
	tHolidayManagerMoney_Reward[3327018]["RewardItem"][3]["Id"] = 4200002 -- 【库】12阶灵珠[属性:72], 【表格】12阶灵珠 -- 根据运营需求，修改为2阶灵珠
	tHolidayManagerMoney_Reward[3327018]["RewardItem"][3]["Attr"] = "0 1" -- 12阶灵珠*1
	tHolidayManagerMoney_Reward[3327018]["RewardItem"][3]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tHolidayManagerMoney_Reward[3327018]["RewardEMoneyMono"] = {}
	tHolidayManagerMoney_Reward[3327018]["RewardEMoneyMono"]["Value"] = 810 -- 天石（赠）, 【需求】810天石（赠）
	tHolidayManagerMoney_Reward[3327018]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	456"
	tHolidayManagerMoney_Reward[3327018]["RewardEffect"] = {}
	tHolidayManagerMoney_Reward[3327018]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHolidayManagerMoney_Reward[3327018]["RewardEffect"]["Effect"] = "angelwing"


	tHolidayManagerMoney_Reward[3327019] = {}
	-- ===3327019 15日投资1000档参与包
	-- ===索引: tHolidayManagerMoney_Reward[3327019]
	-- ===删除: 3327019,1
	-- ===EMoneyLog:10000,0457
	tHolidayManagerMoney_Reward[3327019]["LogId"] = 12001373
	tHolidayManagerMoney_Reward[3327019]["DeleteItem"] = {}
	tHolidayManagerMoney_Reward[3327019]["DeleteItem"][1] = {}
	tHolidayManagerMoney_Reward[3327019]["DeleteItem"][1]["Id"] = 3327019 -- 【库】15日投资豪华礼盒[属性:9]
	tHolidayManagerMoney_Reward[3327019]["RewardItem"] = {}
	tHolidayManagerMoney_Reward[3327019]["RewardItem"][1] = {}
	tHolidayManagerMoney_Reward[3327019]["RewardItem"][1]["Id"] = 4200007 -- 【库】7阶灵珠[属性:72], 【表格】7阶灵珠
	tHolidayManagerMoney_Reward[3327019]["RewardItem"][1]["Attr"] = "0 1" -- 7阶灵珠*1
	tHolidayManagerMoney_Reward[3327019]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tHolidayManagerMoney_Reward[3327019]["RewardItem"][2] = {}
	tHolidayManagerMoney_Reward[3327019]["RewardItem"][2]["Id"] = 4200003 -- 【库】3阶灵珠[属性:72], 【表格】3阶灵珠
	tHolidayManagerMoney_Reward[3327019]["RewardItem"][2]["Attr"] = "0 1" -- 3阶灵珠*1
	tHolidayManagerMoney_Reward[3327019]["RewardItem"][2]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tHolidayManagerMoney_Reward[3327019]["RewardEMoneyMono"] = {}
	tHolidayManagerMoney_Reward[3327019]["RewardEMoneyMono"]["Value"] = 162 -- 天石（赠）, 【需求】162天石（赠）
	tHolidayManagerMoney_Reward[3327019]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	457"
	tHolidayManagerMoney_Reward[3327019]["RewardEffect"] = {}
	tHolidayManagerMoney_Reward[3327019]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHolidayManagerMoney_Reward[3327019]["RewardEffect"]["Effect"] = "angelwing"


	tHolidayManagerMoney_Reward[3327020] = {}
	-- ===3327020 15日投资10000档参与包
	-- ===索引: tHolidayManagerMoney_Reward[3327020]
	-- ===删除: 3327020
	-- ===EMoneyLog:10000,0458
	tHolidayManagerMoney_Reward[3327020]["LogId"] = 12001373
	tHolidayManagerMoney_Reward[3327020]["DeleteItem"] = {}
	tHolidayManagerMoney_Reward[3327020]["DeleteItem"][1] = {}
	tHolidayManagerMoney_Reward[3327020]["DeleteItem"][1]["Id"] = 3327020 -- 【库】15日投资奢华礼盒[属性:9]
	tHolidayManagerMoney_Reward[3327020]["RewardItem"] = {}
	tHolidayManagerMoney_Reward[3327020]["RewardItem"][1] = {}
	tHolidayManagerMoney_Reward[3327020]["RewardItem"][1]["Id"] = 4200011 -- 【库】11阶灵珠[属性:72], 【表格】11阶灵珠
	tHolidayManagerMoney_Reward[3327020]["RewardItem"][1]["Attr"] = "0 1" -- 11阶灵珠*1
	tHolidayManagerMoney_Reward[3327020]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tHolidayManagerMoney_Reward[3327020]["RewardItem"][2] = {}
	tHolidayManagerMoney_Reward[3327020]["RewardItem"][2]["Id"] = 4200005 -- 【库】5阶灵珠[属性:72], 【表格】5阶灵珠
	tHolidayManagerMoney_Reward[3327020]["RewardItem"][2]["Attr"] = "0 1" -- 5阶灵珠*1
	tHolidayManagerMoney_Reward[3327020]["RewardItem"][2]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tHolidayManagerMoney_Reward[3327020]["RewardEMoneyMono"] = {}
	tHolidayManagerMoney_Reward[3327020]["RewardEMoneyMono"]["Value"] = 1620 -- 天石（赠）, 【需求】1620天石（赠）
	tHolidayManagerMoney_Reward[3327020]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	458"
	tHolidayManagerMoney_Reward[3327020]["RewardEffect"] = {}
	tHolidayManagerMoney_Reward[3327020]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHolidayManagerMoney_Reward[3327020]["RewardEffect"]["Effect"] = "angelwing"


	tHolidayManagerMoney_Reward[3327021] = {}
	-- ===3327021 30日投资200档参与包
	-- ===索引: tHolidayManagerMoney_Reward[3327021]
	-- ===删除: 3327021,1
	-- ===EMoneyLog:10000,0459
	tHolidayManagerMoney_Reward[3327021]["LogId"] = 12001373
	tHolidayManagerMoney_Reward[3327021]["DeleteItem"] = {}
	tHolidayManagerMoney_Reward[3327021]["DeleteItem"][1] = {}
	tHolidayManagerMoney_Reward[3327021]["DeleteItem"][1]["Id"] = 3327021 -- 【库】30日投资精致礼盒[属性:9]
	tHolidayManagerMoney_Reward[3327021]["RewardItem"] = {}
	tHolidayManagerMoney_Reward[3327021]["RewardItem"][1] = {}
	tHolidayManagerMoney_Reward[3327021]["RewardItem"][1]["Id"] = 4200004 -- 【库】4阶灵珠[属性:72], 【表格】4阶灵珠
	tHolidayManagerMoney_Reward[3327021]["RewardItem"][1]["Attr"] = "0 1" -- 4阶灵珠*1
	tHolidayManagerMoney_Reward[3327021]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tHolidayManagerMoney_Reward[3327021]["RewardItem"][2] = {}
	tHolidayManagerMoney_Reward[3327021]["RewardItem"][2]["Id"] = 4200002 -- 【库】2阶灵珠[属性:72], 【表格】2阶灵珠
	tHolidayManagerMoney_Reward[3327021]["RewardItem"][2]["Attr"] = "0 1" -- 2阶灵珠*1
	tHolidayManagerMoney_Reward[3327021]["RewardItem"][2]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tHolidayManagerMoney_Reward[3327021]["RewardEMoneyMono"] = {}
	tHolidayManagerMoney_Reward[3327021]["RewardEMoneyMono"]["Value"] = 27 -- 天石（赠）, 【需求】27天石（赠）
	tHolidayManagerMoney_Reward[3327021]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	459"
	tHolidayManagerMoney_Reward[3327021]["RewardEffect"] = {}
	tHolidayManagerMoney_Reward[3327021]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHolidayManagerMoney_Reward[3327021]["RewardEffect"]["Effect"] = "angelwing"


	tHolidayManagerMoney_Reward[3327022] = {}
	-- ===3327022 30日投资1000档参与包
	-- ===索引: tHolidayManagerMoney_Reward[3327022]
	-- ===删除: 3327022,1
	-- ===EMoneyLog:10000,0460
	tHolidayManagerMoney_Reward[3327022]["LogId"] = 12001373
	tHolidayManagerMoney_Reward[3327022]["DeleteItem"] = {}
	tHolidayManagerMoney_Reward[3327022]["DeleteItem"][1] = {}
	tHolidayManagerMoney_Reward[3327022]["DeleteItem"][1]["Id"] = 3327022 -- 【库】30日投资豪华礼盒[属性:9]
	tHolidayManagerMoney_Reward[3327022]["RewardItem"] = {}
	tHolidayManagerMoney_Reward[3327022]["RewardItem"][1] = {}
	tHolidayManagerMoney_Reward[3327022]["RewardItem"][1]["Id"] = 4200007 -- 【库】7阶灵珠[属性:72], 【表格】7阶灵珠
	tHolidayManagerMoney_Reward[3327022]["RewardItem"][1]["Attr"] = "0 1" -- 7阶灵珠*1
	tHolidayManagerMoney_Reward[3327022]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tHolidayManagerMoney_Reward[3327022]["RewardItem"][2] = {}
	tHolidayManagerMoney_Reward[3327022]["RewardItem"][2]["Id"] = 4200003 -- 【库】3阶灵珠[属性:72], 【表格】3阶灵珠
	tHolidayManagerMoney_Reward[3327022]["RewardItem"][2]["Attr"] = "0 1" -- 3阶灵珠*1
	tHolidayManagerMoney_Reward[3327022]["RewardItem"][2]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tHolidayManagerMoney_Reward[3327022]["RewardEMoneyMono"] = {}
	tHolidayManagerMoney_Reward[3327022]["RewardEMoneyMono"]["Value"] = 162 -- 天石（赠）, 【需求】162天石（赠）
	tHolidayManagerMoney_Reward[3327022]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	460"
	tHolidayManagerMoney_Reward[3327022]["RewardEffect"] = {}
	tHolidayManagerMoney_Reward[3327022]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHolidayManagerMoney_Reward[3327022]["RewardEffect"]["Effect"] = "angelwing"


	tHolidayManagerMoney_Reward[3327023] = {}
	-- ===3327023 7日投资650返利包
	-- ===索引: tHolidayManagerMoney_Reward[3327023]
	-- ===删除: 3327023,1
	tHolidayManagerMoney_Reward[3327023]["LogId"] = 12001373
	tHolidayManagerMoney_Reward[3327023]["DeleteItem"] = {}
	tHolidayManagerMoney_Reward[3327023]["DeleteItem"][1] = {}
	tHolidayManagerMoney_Reward[3327023]["DeleteItem"][1]["Id"] = 3327023 -- 【库】7日返利礼盒[属性:9]
	tHolidayManagerMoney_Reward[3327023]["RewardItem"] = {}
	tHolidayManagerMoney_Reward[3327023]["RewardItem"][1] = {}
	tHolidayManagerMoney_Reward[3327023]["RewardItem"][1]["Id"] = 4200002 -- 【库】2阶灵珠[属性:72], 【表格】2阶灵珠
	tHolidayManagerMoney_Reward[3327023]["RewardItem"][1]["Attr"] = "0 1" -- 2阶灵珠*1
	tHolidayManagerMoney_Reward[3327023]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tHolidayManagerMoney_Reward[3327023]["RewardItem"][2] = {}
	tHolidayManagerMoney_Reward[3327023]["RewardItem"][2]["Id"] = 4200003 -- 【库】3阶灵珠[属性:72], 【表格】3阶灵珠
	tHolidayManagerMoney_Reward[3327023]["RewardItem"][2]["Attr"] = "0 1" -- 3阶灵珠*1
	tHolidayManagerMoney_Reward[3327023]["RewardItem"][2]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tHolidayManagerMoney_Reward[3327023]["RewardItem"][3] = {}
	tHolidayManagerMoney_Reward[3327023]["RewardItem"][3]["Id"] = 4200004 -- 【库】4阶灵珠[属性:72], 【表格】4阶灵珠
	tHolidayManagerMoney_Reward[3327023]["RewardItem"][3]["Attr"] = "0 1" -- 4阶灵珠*1
	tHolidayManagerMoney_Reward[3327023]["RewardItem"][3]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tHolidayManagerMoney_Reward[3327023]["RewardItem"][4] = {}
	tHolidayManagerMoney_Reward[3327023]["RewardItem"][4]["Id"] = 4060001 -- 【库】万能神纹精粹[属性:9], 【表格】万能神纹精粹（赠）
	tHolidayManagerMoney_Reward[3327023]["RewardItem"][4]["Attr"] = "0 30 3" -- 万能神纹精粹（赠）*30
	tHolidayManagerMoney_Reward[3327023]["RewardEffect"] = {}
	tHolidayManagerMoney_Reward[3327023]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHolidayManagerMoney_Reward[3327023]["RewardEffect"]["Effect"] = "angelwing"


	tHolidayManagerMoney_Reward[3327024] = {}
	-- ===3327024 7日投资6666返利包
	-- ===索引: tHolidayManagerMoney_Reward[3327024]
	-- ===删除: 3327024,1
	tHolidayManagerMoney_Reward[3327024]["LogId"] = 12001373
	tHolidayManagerMoney_Reward[3327024]["DeleteItem"] = {}
	tHolidayManagerMoney_Reward[3327024]["DeleteItem"][1] = {}
	tHolidayManagerMoney_Reward[3327024]["DeleteItem"][1]["Id"] = 3327024 -- 【库】7日返利精致礼盒[属性:9]
	tHolidayManagerMoney_Reward[3327024]["RewardItem"] = {}
	tHolidayManagerMoney_Reward[3327024]["RewardItem"][1] = {}
	tHolidayManagerMoney_Reward[3327024]["RewardItem"][1]["Id"] = 4200005 -- 【库】5阶灵珠[属性:72], 【表格】5阶灵珠
	tHolidayManagerMoney_Reward[3327024]["RewardItem"][1]["Attr"] = "0 1" -- 5阶灵珠*1
	tHolidayManagerMoney_Reward[3327024]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tHolidayManagerMoney_Reward[3327024]["RewardItem"][2] = {}
	tHolidayManagerMoney_Reward[3327024]["RewardItem"][2]["Id"] = 4200006 -- 【库】6阶灵珠[属性:72], 【表格】6阶灵珠
	tHolidayManagerMoney_Reward[3327024]["RewardItem"][2]["Attr"] = "0 1" -- 6阶灵珠*1
	tHolidayManagerMoney_Reward[3327024]["RewardItem"][2]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tHolidayManagerMoney_Reward[3327024]["RewardItem"][3] = {}
	tHolidayManagerMoney_Reward[3327024]["RewardItem"][3]["Id"] = 4200007 -- 【库】7阶灵珠[属性:72], 【表格】7阶灵珠
	tHolidayManagerMoney_Reward[3327024]["RewardItem"][3]["Attr"] = "0 1" -- 7阶灵珠*1
	tHolidayManagerMoney_Reward[3327024]["RewardItem"][3]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tHolidayManagerMoney_Reward[3327024]["RewardItem"][4] = {}
	tHolidayManagerMoney_Reward[3327024]["RewardItem"][4]["Id"] = 4060001 -- 【库】万能神纹精粹[属性:9], 【表格】万能神纹精粹（赠）
	tHolidayManagerMoney_Reward[3327024]["RewardItem"][4]["Attr"] = "0 150 3" -- 万能神纹精粹（赠）*150
	tHolidayManagerMoney_Reward[3327024]["RewardEffect"] = {}
	tHolidayManagerMoney_Reward[3327024]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHolidayManagerMoney_Reward[3327024]["RewardEffect"]["Effect"] = "angelwing"


	tHolidayManagerMoney_Reward[3327025] = {}
	-- ===3327025 15日投资1000返利包
	-- ===索引: tHolidayManagerMoney_Reward[3327025]
	-- ===删除: 3327025,1
	tHolidayManagerMoney_Reward[3327025]["LogId"] = 12001373
	tHolidayManagerMoney_Reward[3327025]["DeleteItem"] = {}
	tHolidayManagerMoney_Reward[3327025]["DeleteItem"][1] = {}
	tHolidayManagerMoney_Reward[3327025]["DeleteItem"][1]["Id"] = 3327025 -- 【库】15日返利礼盒[属性:9]
	tHolidayManagerMoney_Reward[3327025]["RewardItem"] = {}
	tHolidayManagerMoney_Reward[3327025]["RewardItem"][1] = {}
	tHolidayManagerMoney_Reward[3327025]["RewardItem"][1]["Id"] = 4200004 -- 【库】4阶灵珠[属性:72], 【表格】4阶灵珠
	tHolidayManagerMoney_Reward[3327025]["RewardItem"][1]["Attr"] = "0 1" -- 4阶灵珠*1
	tHolidayManagerMoney_Reward[3327025]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tHolidayManagerMoney_Reward[3327025]["RewardItem"][2] = {}
	tHolidayManagerMoney_Reward[3327025]["RewardItem"][2]["Id"] = 4060001 -- 【库】万能神纹精粹[属性:9], 【表格】万能神纹精粹（赠）
	tHolidayManagerMoney_Reward[3327025]["RewardItem"][2]["Attr"] = "0 30 3" -- 万能神纹精粹（赠）*30
	tHolidayManagerMoney_Reward[3327025]["RewardEffect"] = {}
	tHolidayManagerMoney_Reward[3327025]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHolidayManagerMoney_Reward[3327025]["RewardEffect"]["Effect"] = "angelwing"


	tHolidayManagerMoney_Reward[3327026] = {}
	-- ===3327026 15日投资10000返利包
	-- ===索引: tHolidayManagerMoney_Reward[3327026]
	-- ===删除: 3327026,1
	tHolidayManagerMoney_Reward[3327026]["LogId"] = 12001373
	tHolidayManagerMoney_Reward[3327026]["DeleteItem"] = {}
	tHolidayManagerMoney_Reward[3327026]["DeleteItem"][1] = {}
	tHolidayManagerMoney_Reward[3327026]["DeleteItem"][1]["Id"] = 3327026 -- 【库】15日返利精致礼盒[属性:9]
	tHolidayManagerMoney_Reward[3327026]["RewardItem"] = {}
	tHolidayManagerMoney_Reward[3327026]["RewardItem"][1] = {}
	tHolidayManagerMoney_Reward[3327026]["RewardItem"][1]["Id"] = 4200007 -- 【库】7阶灵珠[属性:72], 【表格】7阶灵珠
	tHolidayManagerMoney_Reward[3327026]["RewardItem"][1]["Attr"] = "0 1" -- 7阶灵珠*1
	tHolidayManagerMoney_Reward[3327026]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tHolidayManagerMoney_Reward[3327026]["RewardItem"][2] = {}
	tHolidayManagerMoney_Reward[3327026]["RewardItem"][2]["Id"] = 4060001 -- 【库】万能神纹精粹[属性:9], 【表格】万能神纹精粹（赠）
	tHolidayManagerMoney_Reward[3327026]["RewardItem"][2]["Attr"] = "0 180 3" -- 万能神纹精粹（赠）*180
	tHolidayManagerMoney_Reward[3327026]["RewardEffect"] = {}
	tHolidayManagerMoney_Reward[3327026]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHolidayManagerMoney_Reward[3327026]["RewardEffect"]["Effect"] = "angelwing"


	tHolidayManagerMoney_Reward[3327027] = {}
	-- ===3327027 30日投资200返利包
	-- ===索引: tHolidayManagerMoney_Reward[3327027]
	-- ===删除: 3327027,1
	tHolidayManagerMoney_Reward[3327027]["LogId"] = 12001373
	tHolidayManagerMoney_Reward[3327027]["DeleteItem"] = {}
	tHolidayManagerMoney_Reward[3327027]["DeleteItem"][1] = {}
	tHolidayManagerMoney_Reward[3327027]["DeleteItem"][1]["Id"] = 3327027 -- 【库】30日返利礼盒[属性:9]
	tHolidayManagerMoney_Reward[3327027]["RewardItem"] = {}
	tHolidayManagerMoney_Reward[3327027]["RewardItem"][1] = {}
	tHolidayManagerMoney_Reward[3327027]["RewardItem"][1]["Id"] = 4200001 -- 【库】1阶灵珠[属性:72], 【表格】1阶灵珠
	tHolidayManagerMoney_Reward[3327027]["RewardItem"][1]["Attr"] = "0 1" -- 1阶灵珠*1
	tHolidayManagerMoney_Reward[3327027]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tHolidayManagerMoney_Reward[3327027]["RewardItem"][2] = {}
	tHolidayManagerMoney_Reward[3327027]["RewardItem"][2]["Id"] = 4060001 -- 【库】万能神纹精粹[属性:9], 【表格】万能神纹精粹（赠）
	tHolidayManagerMoney_Reward[3327027]["RewardItem"][2]["Attr"] = "0 30 3" -- 万能神纹精粹（赠）*30
	tHolidayManagerMoney_Reward[3327027]["RewardEffect"] = {}
	tHolidayManagerMoney_Reward[3327027]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHolidayManagerMoney_Reward[3327027]["RewardEffect"]["Effect"] = "angelwing"


	tHolidayManagerMoney_Reward[3327028] = {}
	-- ===3327028 30日投资1000返利包
	-- ===索引: tHolidayManagerMoney_Reward[3327028]
	-- ===删除: 3327028,1
	tHolidayManagerMoney_Reward[3327028]["LogId"] = 12001373
	tHolidayManagerMoney_Reward[3327028]["DeleteItem"] = {}
	tHolidayManagerMoney_Reward[3327028]["DeleteItem"][1] = {}
	tHolidayManagerMoney_Reward[3327028]["DeleteItem"][1]["Id"] = 3327028 -- 【库】30日返利精致礼盒[属性:9]
	tHolidayManagerMoney_Reward[3327028]["RewardItem"] = {}
	tHolidayManagerMoney_Reward[3327028]["RewardItem"][1] = {}
	tHolidayManagerMoney_Reward[3327028]["RewardItem"][1]["Id"] = 4200003 -- 【库】3阶灵珠[属性:72], 【表格】3阶灵珠
	tHolidayManagerMoney_Reward[3327028]["RewardItem"][1]["Attr"] = "0 1" -- 3阶灵珠*1
	tHolidayManagerMoney_Reward[3327028]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tHolidayManagerMoney_Reward[3327028]["RewardItem"][2] = {}
	tHolidayManagerMoney_Reward[3327028]["RewardItem"][2]["Id"] = 4060001 -- 【库】万能神纹精粹[属性:9], 【表格】万能神纹精粹（赠）
	tHolidayManagerMoney_Reward[3327028]["RewardItem"][2]["Attr"] = "0 60 3" -- 万能神纹精粹（赠）*60
	tHolidayManagerMoney_Reward[3327028]["RewardStrengthValue"] = {}
	tHolidayManagerMoney_Reward[3327028]["RewardStrengthValue"]["Value"] = 2000 -- 气力值, 【需求】2000点气力值
	tHolidayManagerMoney_Reward[3327028]["RewardEffect"] = {}
	tHolidayManagerMoney_Reward[3327028]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHolidayManagerMoney_Reward[3327028]["RewardEffect"]["Effect"] = "angelwing"


	tHolidayManagerMoney_Reward[3327435] = {}
	-- ===3327435 30日投资10000返利包
	-- ===索引: tHolidayManagerMoney_Reward[3327435]
	-- ===删除: 3327435,1
	tHolidayManagerMoney_Reward[3327435]["LogId"] = 12001373
	tHolidayManagerMoney_Reward[3327435]["DeleteItem"] = {}
	tHolidayManagerMoney_Reward[3327435]["DeleteItem"][1] = {}
	tHolidayManagerMoney_Reward[3327435]["DeleteItem"][1]["Id"] = 3327435 -- 【库】30日返利豪华礼盒[属性:9]
	tHolidayManagerMoney_Reward[3327435]["RewardItem"] = {}
	tHolidayManagerMoney_Reward[3327435]["RewardItem"][1] = {}
	tHolidayManagerMoney_Reward[3327435]["RewardItem"][1]["Id"] = 4200005 -- 【库】5阶灵珠[属性:72], 【表格】5阶灵珠
	tHolidayManagerMoney_Reward[3327435]["RewardItem"][1]["Attr"] = "0 1" -- 5阶灵珠*1
	tHolidayManagerMoney_Reward[3327435]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tHolidayManagerMoney_Reward[3327435]["RewardItem"][2] = {}
	tHolidayManagerMoney_Reward[3327435]["RewardItem"][2]["Id"] = 4200006 -- 【库】6阶灵珠[属性:72], 【表格】6阶灵珠
	tHolidayManagerMoney_Reward[3327435]["RewardItem"][2]["Attr"] = "0 1" -- 6阶灵珠*1
	tHolidayManagerMoney_Reward[3327435]["RewardItem"][2]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tHolidayManagerMoney_Reward[3327435]["RewardItem"][3] = {}
	tHolidayManagerMoney_Reward[3327435]["RewardItem"][3]["Id"] = 4060001 -- 【库】万能神纹精粹[属性:9], 【表格】万能神纹精粹（赠）
	tHolidayManagerMoney_Reward[3327435]["RewardItem"][3]["Attr"] = "0 200 3" -- 万能神纹精粹（赠）*200
	tHolidayManagerMoney_Reward[3327435]["RewardStrengthValue"] = {}
	tHolidayManagerMoney_Reward[3327435]["RewardStrengthValue"]["Value"] = 6000 -- 气力值, 【需求】6000点气力值
	tHolidayManagerMoney_Reward[3327435]["RewardEffect"] = {}
	tHolidayManagerMoney_Reward[3327435]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHolidayManagerMoney_Reward[3327435]["RewardEffect"]["Effect"] = "angelwing"


	-- 3期新礼包
	tHolidayManagerMoney_Reward[3330729] = {}
	-- ===3330729 7日投资650返利包
	-- ===索引: tHolidayManagerMoney_Reward[3330729]
	-- ===删除: 3330729,1
	tHolidayManagerMoney_Reward[3330729]["LogId"] = 12001373
	tHolidayManagerMoney_Reward[3330729]["DeleteItem"] = {}
	tHolidayManagerMoney_Reward[3330729]["DeleteItem"][1] = {}
	tHolidayManagerMoney_Reward[3330729]["DeleteItem"][1]["Id"] = 3330729 -- 【库】7日返利礼盒[属性:9]
	tHolidayManagerMoney_Reward[3330729]["RewardItem"] = {}
	tHolidayManagerMoney_Reward[3330729]["RewardItem"][1] = {}
	tHolidayManagerMoney_Reward[3330729]["RewardItem"][1]["Id"] = 4200002 -- 【库】2阶灵珠[属性:72], 【表格】2阶灵珠
	tHolidayManagerMoney_Reward[3330729]["RewardItem"][1]["Attr"] = "0 1" -- 2阶灵珠*1
	tHolidayManagerMoney_Reward[3330729]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tHolidayManagerMoney_Reward[3330729]["RewardItem"][2] = {}
	tHolidayManagerMoney_Reward[3330729]["RewardItem"][2]["Id"] = 4200003 -- 【库】3阶灵珠[属性:72], 【表格】3阶灵珠
	tHolidayManagerMoney_Reward[3330729]["RewardItem"][2]["Attr"] = "0 1" -- 3阶灵珠*1
	tHolidayManagerMoney_Reward[3330729]["RewardItem"][2]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tHolidayManagerMoney_Reward[3330729]["RewardItem"][3] = {}
	tHolidayManagerMoney_Reward[3330729]["RewardItem"][3]["Id"] = 4200004 -- 【库】4阶灵珠[属性:72], 【表格】4阶灵珠
	tHolidayManagerMoney_Reward[3330729]["RewardItem"][3]["Attr"] = "0 1" -- 4阶灵珠*1
	tHolidayManagerMoney_Reward[3330729]["RewardItem"][3]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tHolidayManagerMoney_Reward[3330729]["RewardItem"][4] = {}
	tHolidayManagerMoney_Reward[3330729]["RewardItem"][4]["Id"] = 4060001 -- 【库】万能神纹精粹[属性:9], 【表格】万能神纹精粹（赠）
	tHolidayManagerMoney_Reward[3330729]["RewardItem"][4]["Attr"] = "0 20 3" -- 万能神纹精粹（赠）*20
	tHolidayManagerMoney_Reward[3330729]["RewardEffect"] = {}
	tHolidayManagerMoney_Reward[3330729]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHolidayManagerMoney_Reward[3330729]["RewardEffect"]["Effect"] = "angelwing"


	tHolidayManagerMoney_Reward[3330730] = {}
	-- ===3330730 7日投资6666返利包
	-- ===索引: tHolidayManagerMoney_Reward[3330730]
	-- ===删除: 3330730,1
	tHolidayManagerMoney_Reward[3330730]["LogId"] = 12001373
	tHolidayManagerMoney_Reward[3330730]["DeleteItem"] = {}
	tHolidayManagerMoney_Reward[3330730]["DeleteItem"][1] = {}
	tHolidayManagerMoney_Reward[3330730]["DeleteItem"][1]["Id"] = 3330730 -- 【库】7日返利精致礼盒[属性:9]
	tHolidayManagerMoney_Reward[3330730]["RewardItem"] = {}
	tHolidayManagerMoney_Reward[3330730]["RewardItem"][1] = {}
	tHolidayManagerMoney_Reward[3330730]["RewardItem"][1]["Id"] = 4200005 -- 【库】5阶灵珠[属性:72], 【表格】5阶灵珠
	tHolidayManagerMoney_Reward[3330730]["RewardItem"][1]["Attr"] = "0 1" -- 5阶灵珠*1
	tHolidayManagerMoney_Reward[3330730]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tHolidayManagerMoney_Reward[3330730]["RewardItem"][2] = {}
	tHolidayManagerMoney_Reward[3330730]["RewardItem"][2]["Id"] = 4200006 -- 【库】6阶灵珠[属性:72], 【表格】6阶灵珠
	tHolidayManagerMoney_Reward[3330730]["RewardItem"][2]["Attr"] = "0 1" -- 6阶灵珠*1
	tHolidayManagerMoney_Reward[3330730]["RewardItem"][2]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tHolidayManagerMoney_Reward[3330730]["RewardItem"][3] = {}
	tHolidayManagerMoney_Reward[3330730]["RewardItem"][3]["Id"] = 4200007 -- 【库】7阶灵珠[属性:72], 【表格】7阶灵珠
	tHolidayManagerMoney_Reward[3330730]["RewardItem"][3]["Attr"] = "0 1" -- 7阶灵珠*1
	tHolidayManagerMoney_Reward[3330730]["RewardItem"][3]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tHolidayManagerMoney_Reward[3330730]["RewardItem"][4] = {}
	tHolidayManagerMoney_Reward[3330730]["RewardItem"][4]["Id"] = 4060001 -- 【库】万能神纹精粹[属性:9], 【表格】万能神纹精粹（赠）
	tHolidayManagerMoney_Reward[3330730]["RewardItem"][4]["Attr"] = "0 100 3" -- 万能神纹精粹（赠）*100
	tHolidayManagerMoney_Reward[3330730]["RewardEffect"] = {}
	tHolidayManagerMoney_Reward[3330730]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHolidayManagerMoney_Reward[3330730]["RewardEffect"]["Effect"] = "angelwing"


	tHolidayManagerMoney_Reward[3330731] = {}
	-- ===3330731 15日投资1000返利包
	-- ===索引: tHolidayManagerMoney_Reward[3330731]
	-- ===删除: 3330731,1
	tHolidayManagerMoney_Reward[3330731]["LogId"] = 12001373
	tHolidayManagerMoney_Reward[3330731]["DeleteItem"] = {}
	tHolidayManagerMoney_Reward[3330731]["DeleteItem"][1] = {}
	tHolidayManagerMoney_Reward[3330731]["DeleteItem"][1]["Id"] = 3330731 -- 【库】15日返利礼盒[属性:9]
	tHolidayManagerMoney_Reward[3330731]["RewardItem"] = {}
	tHolidayManagerMoney_Reward[3330731]["RewardItem"][1] = {}
	tHolidayManagerMoney_Reward[3330731]["RewardItem"][1]["Id"] = 4200004 -- 【库】4阶灵珠[属性:72], 【表格】4阶灵珠
	tHolidayManagerMoney_Reward[3330731]["RewardItem"][1]["Attr"] = "0 1" -- 4阶灵珠*1
	tHolidayManagerMoney_Reward[3330731]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tHolidayManagerMoney_Reward[3330731]["RewardItem"][2] = {}
	tHolidayManagerMoney_Reward[3330731]["RewardItem"][2]["Id"] = 4060001 -- 【库】万能神纹精粹[属性:9], 【表格】万能神纹精粹（赠）
	tHolidayManagerMoney_Reward[3330731]["RewardItem"][2]["Attr"] = "0 30 3" -- 万能神纹精粹（赠）*30
	tHolidayManagerMoney_Reward[3330731]["RewardEffect"] = {}
	tHolidayManagerMoney_Reward[3330731]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHolidayManagerMoney_Reward[3330731]["RewardEffect"]["Effect"] = "angelwing"


	tHolidayManagerMoney_Reward[3330732] = {}
	-- ===3330732 15日投资10000返利包
	-- ===索引: tHolidayManagerMoney_Reward[3330732]
	-- ===删除: 3330732,1
	tHolidayManagerMoney_Reward[3330732]["LogId"] = 12001373
	tHolidayManagerMoney_Reward[3330732]["DeleteItem"] = {}
	tHolidayManagerMoney_Reward[3330732]["DeleteItem"][1] = {}
	tHolidayManagerMoney_Reward[3330732]["DeleteItem"][1]["Id"] = 3330732 -- 【库】15日返利精致礼盒[属性:9]
	tHolidayManagerMoney_Reward[3330732]["RewardItem"] = {}
	tHolidayManagerMoney_Reward[3330732]["RewardItem"][1] = {}
	tHolidayManagerMoney_Reward[3330732]["RewardItem"][1]["Id"] = 4200007 -- 【库】7阶灵珠[属性:72], 【表格】7阶灵珠
	tHolidayManagerMoney_Reward[3330732]["RewardItem"][1]["Attr"] = "0 1" -- 7阶灵珠*1
	tHolidayManagerMoney_Reward[3330732]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tHolidayManagerMoney_Reward[3330732]["RewardItem"][2] = {}
	tHolidayManagerMoney_Reward[3330732]["RewardItem"][2]["Id"] = 4060001 -- 【库】万能神纹精粹[属性:9], 【表格】万能神纹精粹（赠）
	tHolidayManagerMoney_Reward[3330732]["RewardItem"][2]["Attr"] = "0 120 3" -- 万能神纹精粹（赠）*120
	tHolidayManagerMoney_Reward[3330732]["RewardEffect"] = {}
	tHolidayManagerMoney_Reward[3330732]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHolidayManagerMoney_Reward[3330732]["RewardEffect"]["Effect"] = "angelwing"


	tHolidayManagerMoney_Reward[3330733] = {}
	-- ===3330733 30日投资200返利包
	-- ===索引: tHolidayManagerMoney_Reward[3330733]
	-- ===删除: 3330733,1
	tHolidayManagerMoney_Reward[3330733]["LogId"] = 12001373
	tHolidayManagerMoney_Reward[3330733]["DeleteItem"] = {}
	tHolidayManagerMoney_Reward[3330733]["DeleteItem"][1] = {}
	tHolidayManagerMoney_Reward[3330733]["DeleteItem"][1]["Id"] = 3330733 -- 【库】30日返利礼盒[属性:9]
	tHolidayManagerMoney_Reward[3330733]["RewardItem"] = {}
	tHolidayManagerMoney_Reward[3330733]["RewardItem"][1] = {}
	tHolidayManagerMoney_Reward[3330733]["RewardItem"][1]["Id"] = 4200001 -- 【库】1阶灵珠[属性:72], 【表格】1阶灵珠
	tHolidayManagerMoney_Reward[3330733]["RewardItem"][1]["Attr"] = "0 1" -- 1阶灵珠*1
	tHolidayManagerMoney_Reward[3330733]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tHolidayManagerMoney_Reward[3330733]["RewardItem"][2] = {}
	tHolidayManagerMoney_Reward[3330733]["RewardItem"][2]["Id"] = 4060001 -- 【库】万能神纹精粹[属性:9], 【表格】万能神纹精粹（赠）
	tHolidayManagerMoney_Reward[3330733]["RewardItem"][2]["Attr"] = "0 20 3" -- 万能神纹精粹（赠）*20
	tHolidayManagerMoney_Reward[3330733]["RewardEffect"] = {}
	tHolidayManagerMoney_Reward[3330733]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHolidayManagerMoney_Reward[3330733]["RewardEffect"]["Effect"] = "angelwing"


	tHolidayManagerMoney_Reward[3330734] = {}
	-- ===3330734 30日投资1000返利包
	-- ===索引: tHolidayManagerMoney_Reward[3330734]
	-- ===删除: 3330734,1
	tHolidayManagerMoney_Reward[3330734]["LogId"] = 12001373
	tHolidayManagerMoney_Reward[3330734]["DeleteItem"] = {}
	tHolidayManagerMoney_Reward[3330734]["DeleteItem"][1] = {}
	tHolidayManagerMoney_Reward[3330734]["DeleteItem"][1]["Id"] = 3330734 -- 【库】30日返利精致礼盒[属性:9]
	tHolidayManagerMoney_Reward[3330734]["RewardItem"] = {}
	tHolidayManagerMoney_Reward[3330734]["RewardItem"][1] = {}
	tHolidayManagerMoney_Reward[3330734]["RewardItem"][1]["Id"] = 4200003 -- 【库】3阶灵珠[属性:72], 【表格】3阶灵珠
	tHolidayManagerMoney_Reward[3330734]["RewardItem"][1]["Attr"] = "0 1" -- 3阶灵珠*1
	tHolidayManagerMoney_Reward[3330734]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tHolidayManagerMoney_Reward[3330734]["RewardItem"][2] = {}
	tHolidayManagerMoney_Reward[3330734]["RewardItem"][2]["Id"] = 4060001 -- 【库】万能神纹精粹[属性:9], 【表格】万能神纹精粹（赠）
	tHolidayManagerMoney_Reward[3330734]["RewardItem"][2]["Attr"] = "0 50 3" -- 万能神纹精粹（赠）*50
	tHolidayManagerMoney_Reward[3330734]["RewardStrengthValue"] = {}
	tHolidayManagerMoney_Reward[3330734]["RewardStrengthValue"]["Value"] = 1000 -- 气力值, 【需求】1000点气力值
	tHolidayManagerMoney_Reward[3330734]["RewardEffect"] = {}
	tHolidayManagerMoney_Reward[3330734]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHolidayManagerMoney_Reward[3330734]["RewardEffect"]["Effect"] = "angelwing"


	tHolidayManagerMoney_Reward[3330735] = {}
	-- ===3330735 30日投资10000返利包
	-- ===索引: tHolidayManagerMoney_Reward[3330735]
	-- ===删除: 3330735,1
	tHolidayManagerMoney_Reward[3330735]["LogId"] = 12001373
	tHolidayManagerMoney_Reward[3330735]["DeleteItem"] = {}
	tHolidayManagerMoney_Reward[3330735]["DeleteItem"][1] = {}
	tHolidayManagerMoney_Reward[3330735]["DeleteItem"][1]["Id"] = 3330735 -- 【库】30日返利豪华礼盒[属性:9]
	tHolidayManagerMoney_Reward[3330735]["RewardItem"] = {}
	tHolidayManagerMoney_Reward[3330735]["RewardItem"][1] = {}
	tHolidayManagerMoney_Reward[3330735]["RewardItem"][1]["Id"] = 4200005 -- 【库】5阶灵珠[属性:72], 【表格】5阶灵珠
	tHolidayManagerMoney_Reward[3330735]["RewardItem"][1]["Attr"] = "0 1" -- 5阶灵珠*1
	tHolidayManagerMoney_Reward[3330735]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tHolidayManagerMoney_Reward[3330735]["RewardItem"][2] = {}
	tHolidayManagerMoney_Reward[3330735]["RewardItem"][2]["Id"] = 4200006 -- 【库】6阶灵珠[属性:72], 【表格】6阶灵珠
	tHolidayManagerMoney_Reward[3330735]["RewardItem"][2]["Attr"] = "0 1" -- 6阶灵珠*1
	tHolidayManagerMoney_Reward[3330735]["RewardItem"][2]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tHolidayManagerMoney_Reward[3330735]["RewardItem"][3] = {}
	tHolidayManagerMoney_Reward[3330735]["RewardItem"][3]["Id"] = 4060001 -- 【库】万能神纹精粹[属性:9], 【表格】万能神纹精粹（赠）
	tHolidayManagerMoney_Reward[3330735]["RewardItem"][3]["Attr"] = "0 150 3" -- 万能神纹精粹（赠）*150
	tHolidayManagerMoney_Reward[3330735]["RewardStrengthValue"] = {}
	tHolidayManagerMoney_Reward[3330735]["RewardStrengthValue"]["Value"] = 2000 -- 气力值, 【需求】2000点气力值
	tHolidayManagerMoney_Reward[3330735]["RewardEffect"] = {}
	tHolidayManagerMoney_Reward[3330735]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHolidayManagerMoney_Reward[3330735]["RewardEffect"]["Effect"] = "angelwing"

	
	-- ===3330971 7日投资650档参与包
	-- ===索引: tHolidayManagerMoney_Reward[3330971]
	-- ===删除: 3330971,1
	-- ===EMoneyLog:10000,0455
	tHolidayManagerMoney_Reward[3330971] = {}
	tHolidayManagerMoney_Reward[3330971]["LogId"] = 12001373
	tHolidayManagerMoney_Reward[3330971]["DeleteItem"] = {}
	tHolidayManagerMoney_Reward[3330971]["DeleteItem"][1] = {}
	tHolidayManagerMoney_Reward[3330971]["DeleteItem"][1]["Id"] = 3330971 -- 【库】7日投资豪华礼盒[属性:9]
	tHolidayManagerMoney_Reward[3330971]["RewardItem"] = {}
	tHolidayManagerMoney_Reward[3330971]["RewardItem"][1] = {}
	tHolidayManagerMoney_Reward[3330971]["RewardItem"][1]["Id"] = 4200006 -- 【库】6阶灵珠[属性:72], 【表格】6阶灵珠
	tHolidayManagerMoney_Reward[3330971]["RewardItem"][1]["Attr"] = "0 1" -- 6阶灵珠*1
	tHolidayManagerMoney_Reward[3330971]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tHolidayManagerMoney_Reward[3330971]["RewardEMoneyMono"] = {}
	tHolidayManagerMoney_Reward[3330971]["RewardEMoneyMono"]["Value"] = 81 -- 天石（赠）, 【需求】81天石（赠）
	tHolidayManagerMoney_Reward[3330971]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	455"
	tHolidayManagerMoney_Reward[3330971]["RewardEffect"] = {}
	tHolidayManagerMoney_Reward[3330971]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHolidayManagerMoney_Reward[3330971]["RewardEffect"]["Effect"] = "angelwing"


	tHolidayManagerMoney_Reward[3330972] = {}
	-- ===3330972 7日投资6650档参与包
	-- ===索引: tHolidayManagerMoney_Reward[3330972]
	-- ===删除: 3330972,1
	-- ===EMoneyLog:10000,0456
	tHolidayManagerMoney_Reward[3330972]["LogId"] = 12001373
	tHolidayManagerMoney_Reward[3330972]["DeleteItem"] = {}
	tHolidayManagerMoney_Reward[3330972]["DeleteItem"][1] = {}
	tHolidayManagerMoney_Reward[3330972]["DeleteItem"][1]["Id"] = 3330972 -- 【库】7日投资奢华礼盒[属性:9]
	tHolidayManagerMoney_Reward[3330972]["RewardItem"] = {}
	tHolidayManagerMoney_Reward[3330972]["RewardItem"][1] = {}
	tHolidayManagerMoney_Reward[3330972]["RewardItem"][1]["Id"] = 4200010 -- 【库】10阶灵珠[属性:72], 【表格】10阶灵珠
	tHolidayManagerMoney_Reward[3330972]["RewardItem"][1]["Attr"] = "0 1" -- 10阶灵珠*1
	tHolidayManagerMoney_Reward[3330972]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tHolidayManagerMoney_Reward[3330972]["RewardItem"][2] = {}
	tHolidayManagerMoney_Reward[3330972]["RewardItem"][2]["Id"] = 4200006 -- 【库】6阶灵珠[属性:72], 【表格】6阶灵珠
	tHolidayManagerMoney_Reward[3330972]["RewardItem"][2]["Attr"] = "0 1" -- 6阶灵珠*1
	tHolidayManagerMoney_Reward[3330972]["RewardItem"][2]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tHolidayManagerMoney_Reward[3330972]["RewardItem"][3] = {}
	tHolidayManagerMoney_Reward[3330972]["RewardItem"][3]["Id"] = 4200002 -- 【库】12阶灵珠[属性:72], 【表格】12阶灵珠 -- 根据运营需求，修改为2阶灵珠
	tHolidayManagerMoney_Reward[3330972]["RewardItem"][3]["Attr"] = "0 1" -- 2阶灵珠*1
	tHolidayManagerMoney_Reward[3330972]["RewardItem"][3]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tHolidayManagerMoney_Reward[3330972]["RewardEMoneyMono"] = {}
	tHolidayManagerMoney_Reward[3330972]["RewardEMoneyMono"]["Value"] = 270 -- 天石（赠）, 【需求】270天石（赠）
	tHolidayManagerMoney_Reward[3330972]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	456"
	tHolidayManagerMoney_Reward[3330972]["RewardEffect"] = {}
	tHolidayManagerMoney_Reward[3330972]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHolidayManagerMoney_Reward[3330972]["RewardEffect"]["Effect"] = "angelwing"


	tHolidayManagerMoney_Reward[3330973] = {}
	-- ===3330973 15日投资1000档参与包
	-- ===索引: tHolidayManagerMoney_Reward[3330973]
	-- ===删除: 3330973,1
	-- ===EMoneyLog:10000,0457
	tHolidayManagerMoney_Reward[3330973]["LogId"] = 12001373
	tHolidayManagerMoney_Reward[3330973]["DeleteItem"] = {}
	tHolidayManagerMoney_Reward[3330973]["DeleteItem"][1] = {}
	tHolidayManagerMoney_Reward[3330973]["DeleteItem"][1]["Id"] = 3330973 -- 【库】15日投资豪华礼盒[属性:9]
	tHolidayManagerMoney_Reward[3330973]["RewardItem"] = {}
	tHolidayManagerMoney_Reward[3330973]["RewardItem"][1] = {}
	tHolidayManagerMoney_Reward[3330973]["RewardItem"][1]["Id"] = 4200007 -- 【库】7阶灵珠[属性:72], 【表格】7阶灵珠
	tHolidayManagerMoney_Reward[3330973]["RewardItem"][1]["Attr"] = "0 1" -- 7阶灵珠*1
	tHolidayManagerMoney_Reward[3330973]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tHolidayManagerMoney_Reward[3330973]["RewardItem"][2] = {}
	tHolidayManagerMoney_Reward[3330973]["RewardItem"][2]["Id"] = 4200003 -- 【库】3阶灵珠[属性:72], 【表格】3阶灵珠
	tHolidayManagerMoney_Reward[3330973]["RewardItem"][2]["Attr"] = "0 1" -- 3阶灵珠*1
	tHolidayManagerMoney_Reward[3330973]["RewardItem"][2]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tHolidayManagerMoney_Reward[3330973]["RewardEMoneyMono"] = {}
	tHolidayManagerMoney_Reward[3330973]["RewardEMoneyMono"]["Value"] = 162 -- 天石（赠）, 【需求】162天石（赠）
	tHolidayManagerMoney_Reward[3330973]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	457"
	tHolidayManagerMoney_Reward[3330973]["RewardEffect"] = {}
	tHolidayManagerMoney_Reward[3330973]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHolidayManagerMoney_Reward[3330973]["RewardEffect"]["Effect"] = "angelwing"


	tHolidayManagerMoney_Reward[3330974] = {}
	-- ===3330974 15日投资10000档参与包
	-- ===索引: tHolidayManagerMoney_Reward[3330974]
	-- ===删除: 3330974
	-- ===EMoneyLog:10000,0458
	tHolidayManagerMoney_Reward[3330974]["LogId"] = 12001373
	tHolidayManagerMoney_Reward[3330974]["DeleteItem"] = {}
	tHolidayManagerMoney_Reward[3330974]["DeleteItem"][1] = {}
	tHolidayManagerMoney_Reward[3330974]["DeleteItem"][1]["Id"] = 3330974 -- 【库】15日投资奢华礼盒[属性:9]
	tHolidayManagerMoney_Reward[3330974]["RewardItem"] = {}
	tHolidayManagerMoney_Reward[3330974]["RewardItem"][1] = {}
	tHolidayManagerMoney_Reward[3330974]["RewardItem"][1]["Id"] = 4200011 -- 【库】11阶灵珠[属性:72], 【表格】11阶灵珠
	tHolidayManagerMoney_Reward[3330974]["RewardItem"][1]["Attr"] = "0 1" -- 11阶灵珠*1
	tHolidayManagerMoney_Reward[3330974]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tHolidayManagerMoney_Reward[3330974]["RewardItem"][2] = {}
	tHolidayManagerMoney_Reward[3330974]["RewardItem"][2]["Id"] = 4200005 -- 【库】5阶灵珠[属性:72], 【表格】5阶灵珠
	tHolidayManagerMoney_Reward[3330974]["RewardItem"][2]["Attr"] = "0 1" -- 5阶灵珠*1
	tHolidayManagerMoney_Reward[3330974]["RewardItem"][2]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tHolidayManagerMoney_Reward[3330974]["RewardEMoneyMono"] = {}
	tHolidayManagerMoney_Reward[3330974]["RewardEMoneyMono"]["Value"] = 1620 -- 天石（赠）, 【需求】1620天石（赠）
	tHolidayManagerMoney_Reward[3330974]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	458"
	tHolidayManagerMoney_Reward[3330974]["RewardEffect"] = {}
	tHolidayManagerMoney_Reward[3330974]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHolidayManagerMoney_Reward[3330974]["RewardEffect"]["Effect"] = "angelwing"


	tHolidayManagerMoney_Reward[3330975] = {}
	-- ===3330975 30日投资200档参与包
	-- ===索引: tHolidayManagerMoney_Reward[3330975]
	-- ===删除: 3330975,1
	-- ===EMoneyLog:10000,0459
	tHolidayManagerMoney_Reward[3330975]["LogId"] = 12001373
	tHolidayManagerMoney_Reward[3330975]["DeleteItem"] = {}
	tHolidayManagerMoney_Reward[3330975]["DeleteItem"][1] = {}
	tHolidayManagerMoney_Reward[3330975]["DeleteItem"][1]["Id"] = 3330975 -- 【库】30日投资精致礼盒[属性:9]
	tHolidayManagerMoney_Reward[3330975]["RewardItem"] = {}
	tHolidayManagerMoney_Reward[3330975]["RewardItem"][1] = {}
	tHolidayManagerMoney_Reward[3330975]["RewardItem"][1]["Id"] = 4200004 -- 【库】4阶灵珠[属性:72], 【表格】4阶灵珠
	tHolidayManagerMoney_Reward[3330975]["RewardItem"][1]["Attr"] = "0 1" -- 4阶灵珠*1
	tHolidayManagerMoney_Reward[3330975]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tHolidayManagerMoney_Reward[3330975]["RewardItem"][2] = {}
	tHolidayManagerMoney_Reward[3330975]["RewardItem"][2]["Id"] = 4200002 -- 【库】2阶灵珠[属性:72], 【表格】2阶灵珠
	tHolidayManagerMoney_Reward[3330975]["RewardItem"][2]["Attr"] = "0 1" -- 2阶灵珠*1
	tHolidayManagerMoney_Reward[3330975]["RewardItem"][2]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tHolidayManagerMoney_Reward[3330975]["RewardEMoneyMono"] = {}
	tHolidayManagerMoney_Reward[3330975]["RewardEMoneyMono"]["Value"] = 50 -- 天石（赠）, 【需求】50天石（赠）
	tHolidayManagerMoney_Reward[3330975]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	459"
	tHolidayManagerMoney_Reward[3330975]["RewardEffect"] = {}
	tHolidayManagerMoney_Reward[3330975]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHolidayManagerMoney_Reward[3330975]["RewardEffect"]["Effect"] = "angelwing"


	tHolidayManagerMoney_Reward[3330976] = {}
	-- ===3330976 30日投资1000档参与包
	-- ===索引: tHolidayManagerMoney_Reward[3330976]
	-- ===删除: 3330976,1
	-- ===EMoneyLog:10000,0460
	tHolidayManagerMoney_Reward[3330976]["LogId"] = 12001373
	tHolidayManagerMoney_Reward[3330976]["DeleteItem"] = {}
	tHolidayManagerMoney_Reward[3330976]["DeleteItem"][1] = {}
	tHolidayManagerMoney_Reward[3330976]["DeleteItem"][1]["Id"] = 3330976 -- 【库】30日投资豪华礼盒[属性:9]
	tHolidayManagerMoney_Reward[3330976]["RewardItem"] = {}
	tHolidayManagerMoney_Reward[3330976]["RewardItem"][1] = {}
	tHolidayManagerMoney_Reward[3330976]["RewardItem"][1]["Id"] = 4200007 -- 【库】7阶灵珠[属性:72], 【表格】7阶灵珠
	tHolidayManagerMoney_Reward[3330976]["RewardItem"][1]["Attr"] = "0 1" -- 7阶灵珠*1
	tHolidayManagerMoney_Reward[3330976]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tHolidayManagerMoney_Reward[3330976]["RewardItem"][2] = {}
	tHolidayManagerMoney_Reward[3330976]["RewardItem"][2]["Id"] = 4200003 -- 【库】3阶灵珠[属性:72], 【表格】3阶灵珠
	tHolidayManagerMoney_Reward[3330976]["RewardItem"][2]["Attr"] = "0 1" -- 3阶灵珠*1
	tHolidayManagerMoney_Reward[3330976]["RewardItem"][2]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tHolidayManagerMoney_Reward[3330976]["RewardEMoneyMono"] = {}
	tHolidayManagerMoney_Reward[3330976]["RewardEMoneyMono"]["Value"] = 300 -- 天石（赠）, 【需求】300天石（赠）
	tHolidayManagerMoney_Reward[3330976]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	460"
	tHolidayManagerMoney_Reward[3330976]["RewardEffect"] = {}
	tHolidayManagerMoney_Reward[3330976]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHolidayManagerMoney_Reward[3330976]["RewardEffect"]["Effect"] = "angelwing"


	tHolidayManagerMoney_Reward[3330977] = {}
	-- ===3330977 30日投资10000档参与包
	-- ===索引: tHolidayManagerMoney_Reward[3330977]
	-- ===删除: 3330977,1
	-- ===EMoneyLog:10000,0461
	tHolidayManagerMoney_Reward[3330977]["LogId"] = 12001373
	tHolidayManagerMoney_Reward[3330977]["DeleteItem"] = {}
	tHolidayManagerMoney_Reward[3330977]["DeleteItem"][1] = {}
	tHolidayManagerMoney_Reward[3330977]["DeleteItem"][1]["Id"] = 3330977 -- 【库】30日投资奢华礼盒[属性:9]
	tHolidayManagerMoney_Reward[3330977]["RewardItem"] = {}
	tHolidayManagerMoney_Reward[3330977]["RewardItem"][1] = {}
	tHolidayManagerMoney_Reward[3330977]["RewardItem"][1]["Id"] = 4200010 -- 【库】10阶灵珠[属性:72], 【表格】10阶灵珠
	tHolidayManagerMoney_Reward[3330977]["RewardItem"][1]["Attr"] = "0 1" -- 10阶灵珠*1
	tHolidayManagerMoney_Reward[3330977]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tHolidayManagerMoney_Reward[3330977]["RewardItem"][2] = {}
	tHolidayManagerMoney_Reward[3330977]["RewardItem"][2]["Id"] = 4200006 -- 【库】6阶灵珠[属性:72], 【表格】6阶灵珠
	tHolidayManagerMoney_Reward[3330977]["RewardItem"][2]["Attr"] = "0 1" -- 6阶灵珠*1
	tHolidayManagerMoney_Reward[3330977]["RewardItem"][2]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tHolidayManagerMoney_Reward[3330977]["RewardItem"][3] = {}
	tHolidayManagerMoney_Reward[3330977]["RewardItem"][3]["Id"] = 4200005 -- 【库】5阶灵珠[属性:72], 【表格】5阶灵珠
	tHolidayManagerMoney_Reward[3330977]["RewardItem"][3]["Attr"] = "0 1" -- 5阶灵珠*1
	tHolidayManagerMoney_Reward[3330977]["RewardItem"][3]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tHolidayManagerMoney_Reward[3330977]["RewardEMoneyMono"] = {}
	tHolidayManagerMoney_Reward[3330977]["RewardEMoneyMono"]["Value"] = 1000 -- 天石（赠）, 【需求】1000天石（赠）
	tHolidayManagerMoney_Reward[3330977]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	461"
	tHolidayManagerMoney_Reward[3330977]["RewardStrengthValue"] = {}
	tHolidayManagerMoney_Reward[3330977]["RewardStrengthValue"]["Value"] = 2000 -- 气力值, 【需求】2000点气力值
	tHolidayManagerMoney_Reward[3330977]["RewardEffect"] = {}
	tHolidayManagerMoney_Reward[3330977]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHolidayManagerMoney_Reward[3330977]["RewardEffect"]["Effect"] = "angelwing"
---------------------------------物品部分---------------------------------------------
tItem[3312279] = tItem[3312279] or {}
tItem[3312279]["Function"] = function(nItemId,sItemName)
	--判断物品
	if not Item_ChkItem(nItemId) then
		return
	end
	
	RewardTemplate_UseItemAndMsg(tHolidayManagerMoney_Reward[nItemId])
end
tItem[3312280] = tItem[3312279] or {}
tItem[3312281] = tItem[3312279] or {}
tItem[3312282] = tItem[3312279] or {}
tItem[3312283] = tItem[3312279] or {}
tItem[3312284] = tItem[3312279] or {}
tItem[3312285] = tItem[3312279] or {}
tItem[3312286] = tItem[3312279] or {}
tItem[3312287] = tItem[3312279] or {}
tItem[3312288] = tItem[3312279] or {}
tItem[3312289] = tItem[3312279] or {}
tItem[3312290] = tItem[3312279] or {}
tItem[3312291] = tItem[3312279] or {}
tItem[3312292] = tItem[3312279] or {}
-- 2期新礼包
tItem[3327017] = tItem[3312279] or {}
tItem[3327018] = tItem[3312279] or {}
tItem[3327019] = tItem[3312279] or {}
tItem[3327020] = tItem[3312279] or {}
tItem[3327021] = tItem[3312279] or {}
tItem[3327022] = tItem[3312279] or {}
tItem[3327023] = tItem[3312279] or {}
tItem[3327024] = tItem[3312279] or {}
tItem[3327025] = tItem[3312279] or {}
tItem[3327026] = tItem[3312279] or {}
tItem[3327027] = tItem[3312279] or {}
tItem[3327028] = tItem[3312279] or {}
tItem[3327435] = tItem[3312279] or {}
-- 3期新礼包
tItem[3330729] = tItem[3312279] or {}
tItem[3330730] = tItem[3312279] or {}
tItem[3330731] = tItem[3312279] or {}
tItem[3330732] = tItem[3312279] or {}
tItem[3330733] = tItem[3312279] or {}
tItem[3330734] = tItem[3312279] or {}
tItem[3330735] = tItem[3312279] or {}
tItem[3330971] = tItem[3312279] or {}
tItem[3330972] = tItem[3312279] or {}
tItem[3330973] = tItem[3312279] or {}
tItem[3330974] = tItem[3312279] or {}
tItem[3330975] = tItem[3312279] or {}
tItem[3330976] = tItem[3312279] or {}
tItem[3330977] = tItem[3312279] or {}
