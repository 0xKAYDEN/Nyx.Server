------------------------------------------------------------------------------------
--Name：	181201[简体征服][活动脚本]新熔炉活动-双锻造炉
--Creator:	林旭
--Created:	2018/12/01
------------------------------------------------------------------------------------
-- 命名前缀：
-- DoubleStove
-- LogId:
-- 12001234
-- stc掩码说明
-- (187,32) 屏蔽二次确认标志，上线重置
------------------------------------------------------------------------------------


----------------------------------表配置部分--------------------------------------------
local tDoubleStove_Log = {}
	--投入
	tDoubleStove_Log["Del"] = "0,0,%d,%d,12001234,1[1],0,0"
	--获得
	tDoubleStove_Log["Get"] = "0,0,0,0,12001234,1[2],%d,%d"
	
local tDoubleStove_Cont = {}
	tDoubleStove_Cont["ServerId"] = 200
	tDoubleStove_Cont["ServerType"] = 12
	tDoubleStove_Cont["MapFlag"] = 117
	tDoubleStove_Cont["TaskId"] = 35056
	tDoubleStove_Cont["Serial"] = 10001
	
-- 跳转网页
local sDoubleStove_LinkWeb = "https://co.99.com/guide/event/anima_introduction.shtml"
-- 地效光效
local tDoubleStove_TrapType = {}
	-- 准备冶炼中
	tDoubleStove_TrapType["zbylz"] = {}
	tDoubleStove_TrapType["zbylz"]["TrapType"] = 2284
	tDoubleStove_TrapType["zbylz"]["Look"] = 2284
	tDoubleStove_TrapType["zbylz"]["MapId"] = 10430
	tDoubleStove_TrapType["zbylz"]["PosX"] = 50
	tDoubleStove_TrapType["zbylz"]["PosY"] = 55
	-- 正在冶炼
	tDoubleStove_TrapType["zzyl"] = {}
	tDoubleStove_TrapType["zzyl"]["TrapType"] = 2285
	tDoubleStove_TrapType["zzyl"]["Look"] = 2285
	tDoubleStove_TrapType["zzyl"]["MapId"] = 10430
	tDoubleStove_TrapType["zzyl"]["PosX"] = 50
	tDoubleStove_TrapType["zzyl"]["PosY"] = 55
	-- 冶炼成功
	tDoubleStove_TrapType["ylcg"] = "DragonSoul_ylcg"
	-- 冶炼失败
	tDoubleStove_TrapType["ylsb"] = "DragonSoul_ylsb"
	-- 倒计时
	tDoubleStove_TrapType["djs"] = {}
	tDoubleStove_TrapType["djs"]["MapId"] = 10430
	tDoubleStove_TrapType["djs"]["PosX"] = 50
	tDoubleStove_TrapType["djs"]["PosY"] = 55
	tDoubleStove_TrapType["djs"]["EffectName"] = "DragonSoul_djs"
-- 传送进双鼎
local tDoubleStove_Map = {}
	tDoubleStove_Map["MapId"] = 10430
	tDoubleStove_Map["PosX"] = 54
	tDoubleStove_Map["PosY"] = 59
	-- 传送回双龙城
local tDoubleStove_BackCity = {}
	tDoubleStove_BackCity["Normal"] = {}
	tDoubleStove_BackCity["Normal"]["MapId"] = 1002
	tDoubleStove_BackCity["Normal"]["PosX"] = 347
	tDoubleStove_BackCity["Normal"]["PosY"] = 421
	tDoubleStove_BackCity["NoGift"] = {}
	tDoubleStove_BackCity["NoGift"]["MapId"] = 1036
	tDoubleStove_BackCity["NoGift"]["PosX"] = 308
	tDoubleStove_BackCity["NoGift"]["PosY"] = 267
	
local tDoubleStove_Npc = {}
	tDoubleStove_Npc[1] = 23580
	tDoubleStove_Npc[2] = 23581
local tDoubleStove_Stc = {}
	tDoubleStove_Stc["EventType"] = 187
	tDoubleStove_Stc["DataType"] = 32


local tDoubleStove_Time = {}
	-- tDoubleStove_Time["ActTime"] = tActivityTime["DoubleStove"]["ActTime"]
	tDoubleStove_Time["DayNoTime"] = "06:56 07:05"
	
local tDoubleStove_Reward = {}
	-- 一阶灵珠
	tDoubleStove_Reward[3390072] = {}
	tDoubleStove_Reward[3390072]["RewardMoney"] = {}
	tDoubleStove_Reward[3390072]["RewardMoney"]["Value"] = 10000
	tDoubleStove_Reward[3390072]["DeleteItem"] = {}
	tDoubleStove_Reward[3390072]["DeleteItem"][1] = {}
	tDoubleStove_Reward[3390072]["DeleteItem"][1]["Id"] = 3390072
	tDoubleStove_Reward[3390072]["LogId"] = 12001234
	tDoubleStove_Reward[3390072]["SzObj"] = "self"
	tDoubleStove_Reward[3390072]["RewardEffect"] = {}
	tDoubleStove_Reward[3390072]["RewardEffect"]["Effect"] = "angelwing"
	-- 二阶灵珠
	tDoubleStove_Reward[3390073] = {}
	tDoubleStove_Reward[3390073]["RewardMoney"] = {}
	tDoubleStove_Reward[3390073]["RewardMoney"]["Value"] = 20000
	tDoubleStove_Reward[3390073]["DeleteItem"] = {}
	tDoubleStove_Reward[3390073]["DeleteItem"][1] = {}
	tDoubleStove_Reward[3390073]["DeleteItem"][1]["Id"] = 3390073
	tDoubleStove_Reward[3390073]["LogId"] = 12001234
	tDoubleStove_Reward[3390073]["SzObj"] = "self"
	tDoubleStove_Reward[3390073]["RewardEffect"] = {}
	tDoubleStove_Reward[3390073]["RewardEffect"]["Effect"] = "angelwing"
	-- 三阶灵珠
	tDoubleStove_Reward[3390074] = {}
	tDoubleStove_Reward[3390074]["RewardMoney"] = {}
	tDoubleStove_Reward[3390074]["RewardMoney"]["Value"] = 40000
	tDoubleStove_Reward[3390074]["DeleteItem"] = {}
	tDoubleStove_Reward[3390074]["DeleteItem"][1] = {}
	tDoubleStove_Reward[3390074]["DeleteItem"][1]["Id"] = 3390074
	tDoubleStove_Reward[3390074]["LogId"] = 12001234
	tDoubleStove_Reward[3390074]["SzObj"] = "self"
	tDoubleStove_Reward[3390074]["RewardEffect"] = {}
	tDoubleStove_Reward[3390074]["RewardEffect"]["Effect"] = "angelwing"
	-- 四阶灵珠
	tDoubleStove_Reward[3390075] = {}
	tDoubleStove_Reward[3390075]["RewardMoney"] = {}
	tDoubleStove_Reward[3390075]["RewardMoney"]["Value"] = 80000
	tDoubleStove_Reward[3390075]["DeleteItem"] = {}
	tDoubleStove_Reward[3390075]["DeleteItem"][1] = {}
	tDoubleStove_Reward[3390075]["DeleteItem"][1]["Id"] = 3390075
	tDoubleStove_Reward[3390075]["LogId"] = 12001234
	tDoubleStove_Reward[3390075]["SzObj"] = "self"
	tDoubleStove_Reward[3390075]["RewardEffect"] = {}
	tDoubleStove_Reward[3390075]["RewardEffect"]["Effect"] = "angelwing"
	-- 五阶灵珠       
	tDoubleStove_Reward[3390076] = {}
	tDoubleStove_Reward[3390076]["RewardMoney"] = {}
	tDoubleStove_Reward[3390076]["RewardMoney"]["Value"] = 160000
	tDoubleStove_Reward[3390076]["DeleteItem"] = {}
	tDoubleStove_Reward[3390076]["DeleteItem"][1] = {}
	tDoubleStove_Reward[3390076]["DeleteItem"][1]["Id"] = 3390076
	tDoubleStove_Reward[3390076]["LogId"] = 12001234
	tDoubleStove_Reward[3390076]["SzObj"] = "self"
	tDoubleStove_Reward[3390076]["RewardEffect"] = {}
	tDoubleStove_Reward[3390076]["RewardEffect"]["Effect"] = "angelwing"
	-- 六阶灵珠            
	tDoubleStove_Reward[3390077] = {}
	tDoubleStove_Reward[3390077]["RewardMoney"] = {}
	tDoubleStove_Reward[3390077]["RewardMoney"]["Value"] = 320000
	tDoubleStove_Reward[3390077]["DeleteItem"] = {}
	tDoubleStove_Reward[3390077]["DeleteItem"][1] = {}
	tDoubleStove_Reward[3390077]["DeleteItem"][1]["Id"] = 3390077
	tDoubleStove_Reward[3390077]["LogId"] = 12001234
	tDoubleStove_Reward[3390077]["SzObj"] = "self"
	tDoubleStove_Reward[3390077]["RewardEffect"] = {}
	tDoubleStove_Reward[3390077]["RewardEffect"]["Effect"] = "angelwing"
	-- 七阶灵珠            
	tDoubleStove_Reward[3390078] = {}
	tDoubleStove_Reward[3390078]["RewardMoney"] = {}
	tDoubleStove_Reward[3390078]["RewardMoney"]["Value"] = 640000
	tDoubleStove_Reward[3390078]["DeleteItem"] = {}
	tDoubleStove_Reward[3390078]["DeleteItem"][1] = {}
	tDoubleStove_Reward[3390078]["DeleteItem"][1]["Id"] = 3390078
	tDoubleStove_Reward[3390078]["LogId"] = 12001234
	tDoubleStove_Reward[3390078]["SzObj"] = "self"
	tDoubleStove_Reward[3390078]["RewardEffect"] = {}
	tDoubleStove_Reward[3390078]["RewardEffect"]["Effect"] = "angelwing"
	-- 八阶灵珠            
	tDoubleStove_Reward[3390079] = {}
	tDoubleStove_Reward[3390079]["RewardMoney"] = {}
	tDoubleStove_Reward[3390079]["RewardMoney"]["Value"] = 1280000
	tDoubleStove_Reward[3390079]["DeleteItem"] = {}
	tDoubleStove_Reward[3390079]["DeleteItem"][1] = {}
	tDoubleStove_Reward[3390079]["DeleteItem"][1]["Id"] = 3390079
	tDoubleStove_Reward[3390079]["LogId"] = 12001234
	tDoubleStove_Reward[3390079]["SzObj"] = "self"
	tDoubleStove_Reward[3390079]["RewardEffect"] = {}
	tDoubleStove_Reward[3390079]["RewardEffect"]["Effect"] = "angelwing"
	-- 九阶灵珠            
	tDoubleStove_Reward[3390080] = {}
	tDoubleStove_Reward[3390080]["RewardMoney"] = {}
	tDoubleStove_Reward[3390080]["RewardMoney"]["Value"] = 2560000
	tDoubleStove_Reward[3390080]["DeleteItem"] = {}
	tDoubleStove_Reward[3390080]["DeleteItem"][1] = {}
	tDoubleStove_Reward[3390080]["DeleteItem"][1]["Id"] = 3390080
	tDoubleStove_Reward[3390080]["LogId"] = 12001234
	tDoubleStove_Reward[3390080]["SzObj"] = "self"
	tDoubleStove_Reward[3390080]["RewardEffect"] = {}
	tDoubleStove_Reward[3390080]["RewardEffect"]["Effect"] = "angelwing"
	-- 十阶灵珠            
	tDoubleStove_Reward[3390081] = {}
	tDoubleStove_Reward[3390081]["RewardMoney"] = {}
	tDoubleStove_Reward[3390081]["RewardMoney"]["Value"] = 5120000
	tDoubleStove_Reward[3390081]["DeleteItem"] = {}
	tDoubleStove_Reward[3390081]["DeleteItem"][1] = {}
	tDoubleStove_Reward[3390081]["DeleteItem"][1]["Id"] = 3390081
	tDoubleStove_Reward[3390081]["LogId"] = 12001234
	tDoubleStove_Reward[3390081]["SzObj"] = "self"
	tDoubleStove_Reward[3390081]["RewardEffect"] = {}
	tDoubleStove_Reward[3390081]["RewardEffect"]["Effect"] = "angelwing"
	-- 十一阶灵珠            
	tDoubleStove_Reward[3390082] = {}
	tDoubleStove_Reward[3390082]["RewardMoney"] = {}
	tDoubleStove_Reward[3390082]["RewardMoney"]["Value"] = 10240000
	tDoubleStove_Reward[3390082]["DeleteItem"] = {}
	tDoubleStove_Reward[3390082]["DeleteItem"][1] = {}
	tDoubleStove_Reward[3390082]["DeleteItem"][1]["Id"] = 3390082
	tDoubleStove_Reward[3390082]["LogId"] = 12001234
	tDoubleStove_Reward[3390082]["SzObj"] = "self"
	tDoubleStove_Reward[3390082]["RewardEffect"] = {}
	tDoubleStove_Reward[3390082]["RewardEffect"]["Effect"] = "angelwing"
	-- 十二阶灵珠          
	tDoubleStove_Reward[3390083] = {}
	tDoubleStove_Reward[3390083]["RewardMoney"] = {}
	tDoubleStove_Reward[3390083]["RewardMoney"]["Value"] = 20480000
	tDoubleStove_Reward[3390083]["DeleteItem"] = {}
	tDoubleStove_Reward[3390083]["DeleteItem"][1] = {}
	tDoubleStove_Reward[3390083]["DeleteItem"][1]["Id"] = 3390083
	tDoubleStove_Reward[3390083]["LogId"] = 12001234
	tDoubleStove_Reward[3390083]["SzObj"] = "self"
	tDoubleStove_Reward[3390083]["RewardEffect"] = {}
	tDoubleStove_Reward[3390083]["RewardEffect"]["Effect"] = "angelwing"
	-- 十三阶灵珠        
	tDoubleStove_Reward[3390084] = {}
	tDoubleStove_Reward[3390084]["RewardMoney"] = {}
	tDoubleStove_Reward[3390084]["RewardMoney"]["Value"] = 40960000
	tDoubleStove_Reward[3390084]["DeleteItem"] = {}
	tDoubleStove_Reward[3390084]["DeleteItem"][1] = {}
	tDoubleStove_Reward[3390084]["DeleteItem"][1]["Id"] = 3390084
	tDoubleStove_Reward[3390084]["LogId"] = 12001234
	tDoubleStove_Reward[3390084]["SzObj"] = "self"
	tDoubleStove_Reward[3390084]["RewardEffect"] = {}
	tDoubleStove_Reward[3390084]["RewardEffect"]["Effect"] = "angelwing"
	-- 十四阶灵珠     
	tDoubleStove_Reward[3390085] = {}
	tDoubleStove_Reward[3390085]["RewardMoney"] = {}
	tDoubleStove_Reward[3390085]["RewardMoney"]["Value"] = 81920000
	tDoubleStove_Reward[3390085]["DeleteItem"] = {}
	tDoubleStove_Reward[3390085]["DeleteItem"][1] = {}
	tDoubleStove_Reward[3390085]["DeleteItem"][1]["Id"] = 3390085
	tDoubleStove_Reward[3390085]["LogId"] = 12001234
	tDoubleStove_Reward[3390085]["SzObj"] = "self"
	tDoubleStove_Reward[3390085]["RewardEffect"] = {}
	tDoubleStove_Reward[3390085]["RewardEffect"]["Effect"] = "angelwing"
	-- 十五阶灵珠      
	tDoubleStove_Reward[3390086] = {}
	tDoubleStove_Reward[3390086]["RewardMoney"] = {}
	tDoubleStove_Reward[3390086]["RewardMoney"]["Value"] = 163840000
	tDoubleStove_Reward[3390086]["DeleteItem"] = {}
	tDoubleStove_Reward[3390086]["DeleteItem"][1] = {}
	tDoubleStove_Reward[3390086]["DeleteItem"][1]["Id"] = 3390086
	tDoubleStove_Reward[3390086]["LogId"] = 12001234
	tDoubleStove_Reward[3390086]["SzObj"] = "self"
	tDoubleStove_Reward[3390086]["RewardEffect"] = {}
	tDoubleStove_Reward[3390086]["RewardEffect"]["Effect"] = "angelwing"
	-- 十六阶灵珠
	tDoubleStove_Reward[3390087] = {}
	tDoubleStove_Reward[3390087]["RewardMoney"] = {}
	tDoubleStove_Reward[3390087]["RewardMoney"]["Value"] = 327680000
	tDoubleStove_Reward[3390087]["DeleteItem"] = {}
	tDoubleStove_Reward[3390087]["DeleteItem"][1] = {}
	tDoubleStove_Reward[3390087]["DeleteItem"][1]["Id"] = 3390087
	tDoubleStove_Reward[3390087]["LogId"] = 12001234
	tDoubleStove_Reward[3390087]["SzObj"] = "self"
	tDoubleStove_Reward[3390087]["RewardEffect"] = {}
	tDoubleStove_Reward[3390087]["RewardEffect"]["Effect"] = "angelwing"
	-- 十七阶灵珠
	tDoubleStove_Reward[3390088] = {}
	tDoubleStove_Reward[3390088]["RewardMoney"] = {}
	tDoubleStove_Reward[3390088]["RewardMoney"]["Value"] = 655360000
	tDoubleStove_Reward[3390088]["DeleteItem"] = {}
	tDoubleStove_Reward[3390088]["DeleteItem"][1] = {}
	tDoubleStove_Reward[3390088]["DeleteItem"][1]["Id"] = 3390088
	tDoubleStove_Reward[3390088]["LogId"] = 12001234
	tDoubleStove_Reward[3390088]["SzObj"] = "self"
	tDoubleStove_Reward[3390088]["RewardEffect"] = {}
	tDoubleStove_Reward[3390088]["RewardEffect"]["Effect"] = "angelwing"
	-- 十八阶灵珠      
	tDoubleStove_Reward[3390089] = {}
	tDoubleStove_Reward[3390089]["RewardMoney"] = {}
	tDoubleStove_Reward[3390089]["RewardMoney"]["Value"] = 1310720000
	tDoubleStove_Reward[3390089]["DeleteItem"] = {}
	tDoubleStove_Reward[3390089]["DeleteItem"][1] = {}
	tDoubleStove_Reward[3390089]["DeleteItem"][1]["Id"] = 3390089
	tDoubleStove_Reward[3390089]["LogId"] = 12001234
	tDoubleStove_Reward[3390089]["SzObj"] = "self"
	tDoubleStove_Reward[3390089]["RewardEffect"] = {}
	tDoubleStove_Reward[3390089]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 重炼灵珠
local tDoubleStove_Delete = {}
	-- 二阶灵珠
	tDoubleStove_Delete[4200002] = {}
	tDoubleStove_Delete[4200002]["DeleteItem"] = {}
	tDoubleStove_Delete[4200002]["DeleteItem"][1] = {}
	tDoubleStove_Delete[4200002]["DeleteItem"][1]["Id"] = 4200002
	tDoubleStove_Delete[4200002]["DeleteItem"][1]["PreciousType"] = 353
	tDoubleStove_Delete[4200002]["RewardItem"] = {}
	tDoubleStove_Delete[4200002]["LogId"] = 12001234
	-- 三阶灵珠
	tDoubleStove_Delete[4200003] = {}
	tDoubleStove_Delete[4200003]["DeleteItem"] = {}
	tDoubleStove_Delete[4200003]["DeleteItem"][1] = {}
	tDoubleStove_Delete[4200003]["DeleteItem"][1]["Id"] = 4200003
	tDoubleStove_Delete[4200003]["DeleteItem"][1]["PreciousType"] = 353
	tDoubleStove_Delete[4200003]["RewardItem"] = {}
	tDoubleStove_Delete[4200003]["LogId"] = 12001234
	-- 四阶灵珠
	tDoubleStove_Delete[4200004] = {}
	tDoubleStove_Delete[4200004]["DeleteItem"] = {}
	tDoubleStove_Delete[4200004]["DeleteItem"][1] = {}
	tDoubleStove_Delete[4200004]["DeleteItem"][1]["Id"] = 4200004
	tDoubleStove_Delete[4200004]["DeleteItem"][1]["PreciousType"] = 353
	tDoubleStove_Delete[4200004]["RewardItem"] = {}
	tDoubleStove_Delete[4200004]["LogId"] = 12001234
	-- 五阶灵珠       
	tDoubleStove_Delete[4200005] = {}
	tDoubleStove_Delete[4200005]["DeleteItem"] = {}
	tDoubleStove_Delete[4200005]["DeleteItem"][1] = {}
	tDoubleStove_Delete[4200005]["DeleteItem"][1]["Id"] = 4200005
	tDoubleStove_Delete[4200005]["DeleteItem"][1]["PreciousType"] = 353
	tDoubleStove_Delete[4200005]["RewardItem"] = {}
	tDoubleStove_Delete[4200005]["LogId"] = 12001234
	-- 六阶灵珠            
	tDoubleStove_Delete[4200006] = {}
	tDoubleStove_Delete[4200006]["DeleteItem"] = {}
	tDoubleStove_Delete[4200006]["DeleteItem"][1] = {}
	tDoubleStove_Delete[4200006]["DeleteItem"][1]["Id"] = 4200006
	tDoubleStove_Delete[4200006]["DeleteItem"][1]["PreciousType"] = 353
	tDoubleStove_Delete[4200006]["RewardItem"] = {}
	tDoubleStove_Delete[4200006]["LogId"] = 12001234
	-- 七阶灵珠            
	tDoubleStove_Delete[4200007] = {}
	tDoubleStove_Delete[4200007]["DeleteItem"] = {}
	tDoubleStove_Delete[4200007]["DeleteItem"][1] = {}
	tDoubleStove_Delete[4200007]["DeleteItem"][1]["Id"] = 4200007
	tDoubleStove_Delete[4200007]["DeleteItem"][1]["PreciousType"] = 353
	tDoubleStove_Delete[4200007]["RewardItem"] = {}
	tDoubleStove_Delete[4200007]["LogId"] = 12001234
	-- 八阶灵珠            
	tDoubleStove_Delete[4200008] = {}
	tDoubleStove_Delete[4200008]["DeleteItem"] = {}
	tDoubleStove_Delete[4200008]["DeleteItem"][1] = {}
	tDoubleStove_Delete[4200008]["DeleteItem"][1]["Id"] = 4200008
	tDoubleStove_Delete[4200008]["DeleteItem"][1]["PreciousType"] = 353
	tDoubleStove_Delete[4200008]["RewardItem"] = {}
	tDoubleStove_Delete[4200008]["LogId"] = 12001234
	-- 九阶灵珠            
	tDoubleStove_Delete[4200009] = {}
	tDoubleStove_Delete[4200009]["DeleteItem"] = {}
	tDoubleStove_Delete[4200009]["DeleteItem"][1] = {}
	tDoubleStove_Delete[4200009]["DeleteItem"][1]["Id"] = 4200009
	tDoubleStove_Delete[4200009]["DeleteItem"][1]["PreciousType"] = 353
	tDoubleStove_Delete[4200009]["RewardItem"] = {}
	tDoubleStove_Delete[4200009]["LogId"] = 12001234
	-- 十阶灵珠            
	tDoubleStove_Delete[4200010] = {}
	tDoubleStove_Delete[4200010]["DeleteItem"] = {}
	tDoubleStove_Delete[4200010]["DeleteItem"][1] = {}
	tDoubleStove_Delete[4200010]["DeleteItem"][1]["Id"] = 4200010
	tDoubleStove_Delete[4200010]["DeleteItem"][1]["PreciousType"] = 353
	tDoubleStove_Delete[4200010]["RewardItem"] = {}
	tDoubleStove_Delete[4200010]["LogId"] = 12001234
	-- 十一阶灵珠            
	tDoubleStove_Delete[4200011] = {}
	tDoubleStove_Delete[4200011]["DeleteItem"] = {}
	tDoubleStove_Delete[4200011]["DeleteItem"][1] = {}
	tDoubleStove_Delete[4200011]["DeleteItem"][1]["Id"] = 4200011
	tDoubleStove_Delete[4200011]["DeleteItem"][1]["PreciousType"] = 353
	tDoubleStove_Delete[4200011]["RewardItem"] = {}
	tDoubleStove_Delete[4200011]["LogId"] = 12001234
	-- 十二阶灵珠          
	tDoubleStove_Delete[4200012] = {}
	tDoubleStove_Delete[4200012]["DeleteItem"] = {}
	tDoubleStove_Delete[4200012]["DeleteItem"][1] = {}
	tDoubleStove_Delete[4200012]["DeleteItem"][1]["Id"] = 4200012
	tDoubleStove_Delete[4200012]["DeleteItem"][1]["PreciousType"] = 353
	tDoubleStove_Delete[4200012]["RewardItem"] = {}
	tDoubleStove_Delete[4200012]["LogId"] = 12001234
	-- 十三阶灵珠        
	tDoubleStove_Delete[4200013] = {}
	tDoubleStove_Delete[4200013]["DeleteItem"] = {}
	tDoubleStove_Delete[4200013]["DeleteItem"][1] = {}
	tDoubleStove_Delete[4200013]["DeleteItem"][1]["Id"] = 4200013
	tDoubleStove_Delete[4200013]["DeleteItem"][1]["PreciousType"] = 353
	tDoubleStove_Delete[4200013]["RewardItem"] = {}
	tDoubleStove_Delete[4200013]["LogId"] = 12001234
	-- 十四阶灵珠     
	tDoubleStove_Delete[4200014] = {}
	tDoubleStove_Delete[4200014]["DeleteItem"] = {}
	tDoubleStove_Delete[4200014]["DeleteItem"][1] = {}
	tDoubleStove_Delete[4200014]["DeleteItem"][1]["Id"] = 4200014
	tDoubleStove_Delete[4200014]["DeleteItem"][1]["PreciousType"] = 353
	tDoubleStove_Delete[4200014]["RewardItem"] = {}
	tDoubleStove_Delete[4200014]["LogId"] = 12001234
	-- 十五阶灵珠      
	tDoubleStove_Delete[4200015] = {}
	tDoubleStove_Delete[4200015]["DeleteItem"] = {}
	tDoubleStove_Delete[4200015]["DeleteItem"][1] = {}
	tDoubleStove_Delete[4200015]["DeleteItem"][1]["Id"] = 4200015
	tDoubleStove_Delete[4200015]["DeleteItem"][1]["PreciousType"] = 353
	tDoubleStove_Delete[4200015]["RewardItem"] = {}
	tDoubleStove_Delete[4200015]["LogId"] = 12001234
	-- 十六阶灵珠
	tDoubleStove_Delete[4200016] = {}
	tDoubleStove_Delete[4200016]["DeleteItem"] = {}
	tDoubleStove_Delete[4200016]["DeleteItem"][1] = {}
	tDoubleStove_Delete[4200016]["DeleteItem"][1]["Id"] = 4200016
	tDoubleStove_Delete[4200016]["DeleteItem"][1]["PreciousType"] = 353
	tDoubleStove_Delete[4200016]["RewardItem"] = {}
	tDoubleStove_Delete[4200016]["LogId"] = 12001234
	-- 十七阶灵珠
	tDoubleStove_Delete[4200017] = {}
	tDoubleStove_Delete[4200017]["DeleteItem"] = {}
	tDoubleStove_Delete[4200017]["DeleteItem"][1] = {}
	tDoubleStove_Delete[4200017]["DeleteItem"][1]["Id"] = 4200017
	tDoubleStove_Delete[4200017]["DeleteItem"][1]["PreciousType"] = 353
	tDoubleStove_Delete[4200017]["RewardItem"] = {}
	tDoubleStove_Delete[4200017]["LogId"] = 12001234
	-- 十八阶灵珠      
	tDoubleStove_Delete[4200018] = {}
	tDoubleStove_Delete[4200018]["DeleteItem"] = {}
	tDoubleStove_Delete[4200018]["DeleteItem"][1] = {}
	tDoubleStove_Delete[4200018]["DeleteItem"][1]["Id"] = 4200018
	tDoubleStove_Delete[4200018]["DeleteItem"][1]["PreciousType"] = 353
	tDoubleStove_Delete[4200018]["RewardItem"] = {}
	tDoubleStove_Delete[4200018]["LogId"] = 12001234
	
local tDoubleStove_Random = {}
	-- 投注正确1-11阶灵珠随机奖励
	tDoubleStove_Random[1] = {}
	tDoubleStove_Random[1]["ItemChanceSum"] = 100000
	tDoubleStove_Random[1][1] = {}
	tDoubleStove_Random[1][1]["RandomItemChanceType"] = 2
	tDoubleStove_Random[1][1]["ItemChance"] = 33280
	tDoubleStove_Random[1][1]["Index"] = 1
	tDoubleStove_Random[1][2] = {}
	tDoubleStove_Random[1][2]["RandomItemChanceType"] = 2
	tDoubleStove_Random[1][2]["ItemChance"] = 66500
	tDoubleStove_Random[1][2]["Index"] = 2
	tDoubleStove_Random[1][3] = {}
	tDoubleStove_Random[1][3]["RandomItemChanceType"] = 2
	tDoubleStove_Random[1][3]["ItemChance"] = 0
	tDoubleStove_Random[1][3]["Index"] = 3
	tDoubleStove_Random[1][4] = {}
	tDoubleStove_Random[1][4]["RandomItemChanceType"] = 2
	tDoubleStove_Random[1][4]["ItemChance"] = 200
	tDoubleStove_Random[1][4]["Index"] = 4
	tDoubleStove_Random[1][5] = {}
	tDoubleStove_Random[1][5]["RandomItemChanceType"] = 2
	tDoubleStove_Random[1][5]["ItemChance"] = 20
	tDoubleStove_Random[1][5]["Index"] = 5
	-- 投注正确12阶灵珠随机奖励
	tDoubleStove_Random[2] = {}
	tDoubleStove_Random[2]["ItemChanceSum"] = 100000
	tDoubleStove_Random[2][1] = {}
	tDoubleStove_Random[2][1]["RandomItemChanceType"] = 2
	tDoubleStove_Random[2][1]["ItemChance"] = 33260
	tDoubleStove_Random[2][1]["Index"] = 1
	tDoubleStove_Random[2][2] = {}
	tDoubleStove_Random[2][2]["RandomItemChanceType"] = 2
	tDoubleStove_Random[2][2]["ItemChance"] = 66500
	tDoubleStove_Random[2][2]["Index"] = 2
	tDoubleStove_Random[2][3] = {}
	tDoubleStove_Random[2][3]["RandomItemChanceType"] = 2
	tDoubleStove_Random[2][3]["ItemChance"] = 0
	tDoubleStove_Random[2][3]["Index"] = 3
	tDoubleStove_Random[2][4] = {}
	tDoubleStove_Random[2][4]["RandomItemChanceType"] = 2
	tDoubleStove_Random[2][4]["ItemChance"] = 200
	tDoubleStove_Random[2][4]["Index"] = 4
	tDoubleStove_Random[2][5] = {}
	tDoubleStove_Random[2][5]["RandomItemChanceType"] = 2
	tDoubleStove_Random[2][5]["ItemChance"] = 40
	tDoubleStove_Random[2][5]["Index"] = 5
	
	
local tDoubleStove_WinReward = {}
	-- 灵珠双鼎成功模板 3阶
	tDoubleStove_WinReward[4200003] = {}
	tDoubleStove_WinReward[4200003][1] = {}
	tDoubleStove_WinReward[4200003][1]["RewardItem"] = {}
	tDoubleStove_WinReward[4200003][1]["RewardItem"][1] = {}
	tDoubleStove_WinReward[4200003][1]["RewardItem"][1]["Id"] = 4200002
	tDoubleStove_WinReward[4200003][1]["RewardItem"][1]["Attr"] = "0 1"
	tDoubleStove_WinReward[4200003][1]["RewardItem"][1]["PreciousType"] = 303
	tDoubleStove_WinReward[4200003][1]["RewardItem"][2] = {}
	tDoubleStove_WinReward[4200003][1]["RewardItem"][2]["Id"] = 4200003
	tDoubleStove_WinReward[4200003][1]["RewardItem"][2]["Attr"] = "0 1"
	tDoubleStove_WinReward[4200003][1]["RewardItem"][2]["PreciousType"] = 303
	tDoubleStove_WinReward[4200003][1]["LogId"] = 12001234
	tDoubleStove_WinReward[4200003][1]["SzObj"] = "self"
	tDoubleStove_WinReward[4200003][1]["RewardEffect"] = {}
	tDoubleStove_WinReward[4200003][1]["RewardEffect"]["Effect"] = "angelwing"
	tDoubleStove_WinReward[4200003][2] = {}
	tDoubleStove_WinReward[4200003][2]["RewardItem"] = {}
	tDoubleStove_WinReward[4200003][2]["RewardItem"][1] = {}
	tDoubleStove_WinReward[4200003][2]["RewardItem"][1]["Id"] = 4200004
	tDoubleStove_WinReward[4200003][2]["RewardItem"][1]["Attr"] = "0 1"
	tDoubleStove_WinReward[4200003][2]["RewardItem"][1]["PreciousType"] = 303
	tDoubleStove_WinReward[4200003][2]["LogId"] = 12001234
	tDoubleStove_WinReward[4200003][2]["SzObj"] = "self"
	tDoubleStove_WinReward[4200003][2]["RewardEffect"] = {}
	tDoubleStove_WinReward[4200003][2]["RewardEffect"]["Effect"] = "angelwing"
	tDoubleStove_WinReward[4200003][4] = {}
	tDoubleStove_WinReward[4200003][4]["RewardItem"] = {}
	tDoubleStove_WinReward[4200003][4]["RewardItem"][1] = {}
	tDoubleStove_WinReward[4200003][4]["RewardItem"][1]["Id"] = 4200008
	tDoubleStove_WinReward[4200003][4]["RewardItem"][1]["Attr"] = "0 1"
	tDoubleStove_WinReward[4200003][4]["RewardItem"][1]["PreciousType"] = 303
	tDoubleStove_WinReward[4200003][4]["LogId"] = 12001234
	tDoubleStove_WinReward[4200003][4]["SzObj"] = "self"
	tDoubleStove_WinReward[4200003][4]["RewardEffect"] = {}
	tDoubleStove_WinReward[4200003][4]["RewardEffect"]["Effect"] = "angelwing"
	tDoubleStove_WinReward[4200003][5] = {}
	tDoubleStove_WinReward[4200003][5]["RewardItem"] = {}
	tDoubleStove_WinReward[4200003][5]["RewardItem"][1] = {}
	tDoubleStove_WinReward[4200003][5]["RewardItem"][1]["Id"] = 4200010
	tDoubleStove_WinReward[4200003][5]["RewardItem"][1]["Attr"] = "0 1"
	tDoubleStove_WinReward[4200003][5]["RewardItem"][1]["PreciousType"] = 303
	tDoubleStove_WinReward[4200003][5]["LogId"] = 12001234
	tDoubleStove_WinReward[4200003][5]["SzObj"] = "self"
	tDoubleStove_WinReward[4200003][5]["RewardEffect"] = {}
	tDoubleStove_WinReward[4200003][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 灵珠双鼎成功模板 4阶
	tDoubleStove_WinReward[4200004] = {}
	tDoubleStove_WinReward[4200004][1] = {}
	tDoubleStove_WinReward[4200004][1]["RewardItem"] = {}
	tDoubleStove_WinReward[4200004][1]["RewardItem"][1] = {}
	tDoubleStove_WinReward[4200004][1]["RewardItem"][1]["Id"] = 4200003
	tDoubleStove_WinReward[4200004][1]["RewardItem"][1]["Attr"] = "0 1"
	tDoubleStove_WinReward[4200004][1]["RewardItem"][1]["PreciousType"] = 303
	tDoubleStove_WinReward[4200004][1]["RewardItem"][2] = {}
	tDoubleStove_WinReward[4200004][1]["RewardItem"][2]["Id"] = 4200004
	tDoubleStove_WinReward[4200004][1]["RewardItem"][2]["Attr"] = "0 1"
	tDoubleStove_WinReward[4200004][1]["RewardItem"][2]["PreciousType"] = 303
	tDoubleStove_WinReward[4200004][1]["LogId"] = 12001234
	tDoubleStove_WinReward[4200004][1]["SzObj"] = "self"
	tDoubleStove_WinReward[4200004][1]["RewardEffect"] = {}
	tDoubleStove_WinReward[4200004][1]["RewardEffect"]["Effect"] = "angelwing"
	tDoubleStove_WinReward[4200004][2] = {}
	tDoubleStove_WinReward[4200004][2]["RewardItem"] = {}
	tDoubleStove_WinReward[4200004][2]["RewardItem"][1] = {}
	tDoubleStove_WinReward[4200004][2]["RewardItem"][1]["Id"] = 4200005
	tDoubleStove_WinReward[4200004][2]["RewardItem"][1]["Attr"] = "0 1"
	tDoubleStove_WinReward[4200004][2]["RewardItem"][1]["PreciousType"] = 303
	tDoubleStove_WinReward[4200004][2]["LogId"] = 12001234
	tDoubleStove_WinReward[4200004][2]["SzObj"] = "self"
	tDoubleStove_WinReward[4200004][2]["RewardEffect"] = {}
	tDoubleStove_WinReward[4200004][2]["RewardEffect"]["Effect"] = "angelwing"
	tDoubleStove_WinReward[4200004][4] = {}
	tDoubleStove_WinReward[4200004][4]["RewardItem"] = {}
	tDoubleStove_WinReward[4200004][4]["RewardItem"][1] = {}
	tDoubleStove_WinReward[4200004][4]["RewardItem"][1]["Id"] = 4200009
	tDoubleStove_WinReward[4200004][4]["RewardItem"][1]["Attr"] = "0 1"
	tDoubleStove_WinReward[4200004][4]["RewardItem"][1]["PreciousType"] = 303
	tDoubleStove_WinReward[4200004][4]["LogId"] = 12001234
	tDoubleStove_WinReward[4200004][4]["SzObj"] = "self"
	tDoubleStove_WinReward[4200004][4]["RewardEffect"] = {}
	tDoubleStove_WinReward[4200004][4]["RewardEffect"]["Effect"] = "angelwing"
	tDoubleStove_WinReward[4200004][5] = {}
	tDoubleStove_WinReward[4200004][5]["RewardItem"] = {}
	tDoubleStove_WinReward[4200004][5]["RewardItem"][1] = {}
	tDoubleStove_WinReward[4200004][5]["RewardItem"][1]["Id"] = 4200011
	tDoubleStove_WinReward[4200004][5]["RewardItem"][1]["Attr"] = "0 1"
	tDoubleStove_WinReward[4200004][5]["RewardItem"][1]["PreciousType"] = 303
	tDoubleStove_WinReward[4200004][5]["LogId"] = 12001234
	tDoubleStove_WinReward[4200004][5]["SzObj"] = "self"
	tDoubleStove_WinReward[4200004][5]["RewardEffect"] = {}
	tDoubleStove_WinReward[4200004][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 灵珠双鼎成功模板 5阶
	tDoubleStove_WinReward[4200005] = {}
	tDoubleStove_WinReward[4200005][1] = {}
	tDoubleStove_WinReward[4200005][1]["RewardItem"] = {}
	tDoubleStove_WinReward[4200005][1]["RewardItem"][1] = {}
	tDoubleStove_WinReward[4200005][1]["RewardItem"][1]["Id"] = 4200004
	tDoubleStove_WinReward[4200005][1]["RewardItem"][1]["Attr"] = "0 1"
	tDoubleStove_WinReward[4200005][1]["RewardItem"][1]["PreciousType"] = 303
	tDoubleStove_WinReward[4200005][1]["RewardItem"][2] = {}
	tDoubleStove_WinReward[4200005][1]["RewardItem"][2]["Id"] = 4200005
	tDoubleStove_WinReward[4200005][1]["RewardItem"][2]["Attr"] = "0 1"
	tDoubleStove_WinReward[4200005][1]["RewardItem"][2]["PreciousType"] = 303
	tDoubleStove_WinReward[4200005][1]["LogId"] = 12001234
	tDoubleStove_WinReward[4200005][1]["SzObj"] = "self"
	tDoubleStove_WinReward[4200005][1]["RewardEffect"] = {}
	tDoubleStove_WinReward[4200005][1]["RewardEffect"]["Effect"] = "angelwing"
	tDoubleStove_WinReward[4200005][2] = {}
	tDoubleStove_WinReward[4200005][2]["RewardItem"] = {}
	tDoubleStove_WinReward[4200005][2]["RewardItem"][1] = {}
	tDoubleStove_WinReward[4200005][2]["RewardItem"][1]["Id"] = 4200006
	tDoubleStove_WinReward[4200005][2]["RewardItem"][1]["Attr"] = "0 1"
	tDoubleStove_WinReward[4200005][2]["RewardItem"][1]["PreciousType"] = 303
	tDoubleStove_WinReward[4200005][2]["LogId"] = 12001234
	tDoubleStove_WinReward[4200005][2]["SzObj"] = "self"
	tDoubleStove_WinReward[4200005][2]["RewardEffect"] = {}
	tDoubleStove_WinReward[4200005][2]["RewardEffect"]["Effect"] = "angelwing"
	tDoubleStove_WinReward[4200005][4] = {}
	tDoubleStove_WinReward[4200005][4]["RewardItem"] = {}
	tDoubleStove_WinReward[4200005][4]["RewardItem"][1] = {}
	tDoubleStove_WinReward[4200005][4]["RewardItem"][1]["Id"] = 4200010
	tDoubleStove_WinReward[4200005][4]["RewardItem"][1]["Attr"] = "0 1"
	tDoubleStove_WinReward[4200005][4]["RewardItem"][1]["PreciousType"] = 303
	tDoubleStove_WinReward[4200005][4]["LogId"] = 12001234
	tDoubleStove_WinReward[4200005][4]["SzObj"] = "self"
	tDoubleStove_WinReward[4200005][4]["RewardEffect"] = {}
	tDoubleStove_WinReward[4200005][4]["RewardEffect"]["Effect"] = "angelwing"
	tDoubleStove_WinReward[4200005][5] = {}
	tDoubleStove_WinReward[4200005][5]["RewardItem"] = {}
	tDoubleStove_WinReward[4200005][5]["RewardItem"][1] = {}
	tDoubleStove_WinReward[4200005][5]["RewardItem"][1]["Id"] = 4200012
	tDoubleStove_WinReward[4200005][5]["RewardItem"][1]["Attr"] = "0 1"
	tDoubleStove_WinReward[4200005][5]["RewardItem"][1]["PreciousType"] = 303
	tDoubleStove_WinReward[4200005][5]["LogId"] = 12001234
	tDoubleStove_WinReward[4200005][5]["SzObj"] = "self"
	tDoubleStove_WinReward[4200005][5]["RewardEffect"] = {}
	tDoubleStove_WinReward[4200005][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 灵珠双鼎成功模板 6阶
	tDoubleStove_WinReward[4200006] = {}
	tDoubleStove_WinReward[4200006][1] = {}
	tDoubleStove_WinReward[4200006][1]["RewardItem"] = {}
	tDoubleStove_WinReward[4200006][1]["RewardItem"][1] = {}
	tDoubleStove_WinReward[4200006][1]["RewardItem"][1]["Id"] = 4200005
	tDoubleStove_WinReward[4200006][1]["RewardItem"][1]["Attr"] = "0 1"
	tDoubleStove_WinReward[4200006][1]["RewardItem"][1]["PreciousType"] = 303
	tDoubleStove_WinReward[4200006][1]["RewardItem"][2] = {}
	tDoubleStove_WinReward[4200006][1]["RewardItem"][2]["Id"] = 4200006
	tDoubleStove_WinReward[4200006][1]["RewardItem"][2]["Attr"] = "0 1"
	tDoubleStove_WinReward[4200006][1]["RewardItem"][2]["PreciousType"] = 303
	tDoubleStove_WinReward[4200006][1]["LogId"] = 12001234
	tDoubleStove_WinReward[4200006][1]["SzObj"] = "self"
	tDoubleStove_WinReward[4200006][1]["RewardEffect"] = {}
	tDoubleStove_WinReward[4200006][1]["RewardEffect"]["Effect"] = "angelwing"
	tDoubleStove_WinReward[4200006][2] = {}
	tDoubleStove_WinReward[4200006][2]["RewardItem"] = {}
	tDoubleStove_WinReward[4200006][2]["RewardItem"][1] = {}
	tDoubleStove_WinReward[4200006][2]["RewardItem"][1]["Id"] = 4200007
	tDoubleStove_WinReward[4200006][2]["RewardItem"][1]["Attr"] = "0 1"
	tDoubleStove_WinReward[4200006][2]["RewardItem"][1]["PreciousType"] = 303
	tDoubleStove_WinReward[4200006][2]["LogId"] = 12001234
	tDoubleStove_WinReward[4200006][2]["SzObj"] = "self"
	tDoubleStove_WinReward[4200006][2]["RewardEffect"] = {}
	tDoubleStove_WinReward[4200006][2]["RewardEffect"]["Effect"] = "angelwing"
	tDoubleStove_WinReward[4200006][4] = {}
	tDoubleStove_WinReward[4200006][4]["RewardItem"] = {}
	tDoubleStove_WinReward[4200006][4]["RewardItem"][1] = {}
	tDoubleStove_WinReward[4200006][4]["RewardItem"][1]["Id"] = 4200011
	tDoubleStove_WinReward[4200006][4]["RewardItem"][1]["Attr"] = "0 1"
	tDoubleStove_WinReward[4200006][4]["RewardItem"][1]["PreciousType"] = 303
	tDoubleStove_WinReward[4200006][4]["LogId"] = 12001234
	tDoubleStove_WinReward[4200006][4]["SzObj"] = "self"
	tDoubleStove_WinReward[4200006][4]["RewardEffect"] = {}
	tDoubleStove_WinReward[4200006][4]["RewardEffect"]["Effect"] = "angelwing"
	tDoubleStove_WinReward[4200006][5] = {}
	tDoubleStove_WinReward[4200006][5]["RewardItem"] = {}
	tDoubleStove_WinReward[4200006][5]["RewardItem"][1] = {}
	tDoubleStove_WinReward[4200006][5]["RewardItem"][1]["Id"] = 4200013
	tDoubleStove_WinReward[4200006][5]["RewardItem"][1]["Attr"] = "0 1"
	tDoubleStove_WinReward[4200006][5]["RewardItem"][1]["PreciousType"] = 303
	tDoubleStove_WinReward[4200006][5]["LogId"] = 12001234
	tDoubleStove_WinReward[4200006][5]["SzObj"] = "self"
	tDoubleStove_WinReward[4200006][5]["RewardEffect"] = {}
	tDoubleStove_WinReward[4200006][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 灵珠双鼎成功模板 7阶
	tDoubleStove_WinReward[4200007] = {}
	tDoubleStove_WinReward[4200007][1] = {}
	tDoubleStove_WinReward[4200007][1]["RewardItem"] = {}
	tDoubleStove_WinReward[4200007][1]["RewardItem"][1] = {}
	tDoubleStove_WinReward[4200007][1]["RewardItem"][1]["Id"] = 4200006
	tDoubleStove_WinReward[4200007][1]["RewardItem"][1]["Attr"] = "0 1"
	tDoubleStove_WinReward[4200007][1]["RewardItem"][1]["PreciousType"] = 303
	tDoubleStove_WinReward[4200007][1]["RewardItem"][2] = {}
	tDoubleStove_WinReward[4200007][1]["RewardItem"][2]["Id"] = 4200007
	tDoubleStove_WinReward[4200007][1]["RewardItem"][2]["Attr"] = "0 1"
	tDoubleStove_WinReward[4200007][1]["RewardItem"][2]["PreciousType"] = 303
	tDoubleStove_WinReward[4200007][1]["LogId"] = 12001234
	tDoubleStove_WinReward[4200007][1]["SzObj"] = "self"
	tDoubleStove_WinReward[4200007][1]["RewardEffect"] = {}
	tDoubleStove_WinReward[4200007][1]["RewardEffect"]["Effect"] = "angelwing"
	tDoubleStove_WinReward[4200007][2] = {}
	tDoubleStove_WinReward[4200007][2]["RewardItem"] = {}
	tDoubleStove_WinReward[4200007][2]["RewardItem"][1] = {}
	tDoubleStove_WinReward[4200007][2]["RewardItem"][1]["Id"] = 4200008
	tDoubleStove_WinReward[4200007][2]["RewardItem"][1]["Attr"] = "0 1"
	tDoubleStove_WinReward[4200007][2]["RewardItem"][1]["PreciousType"] = 303
	tDoubleStove_WinReward[4200007][2]["LogId"] = 12001234
	tDoubleStove_WinReward[4200007][2]["SzObj"] = "self"
	tDoubleStove_WinReward[4200007][2]["RewardEffect"] = {}
	tDoubleStove_WinReward[4200007][2]["RewardEffect"]["Effect"] = "angelwing"
	tDoubleStove_WinReward[4200007][4] = {}
	tDoubleStove_WinReward[4200007][4]["RewardItem"] = {}
	tDoubleStove_WinReward[4200007][4]["RewardItem"][1] = {}
	tDoubleStove_WinReward[4200007][4]["RewardItem"][1]["Id"] = 4200012
	tDoubleStove_WinReward[4200007][4]["RewardItem"][1]["Attr"] = "0 1"
	tDoubleStove_WinReward[4200007][4]["RewardItem"][1]["PreciousType"] = 303
	tDoubleStove_WinReward[4200007][4]["LogId"] = 12001234
	tDoubleStove_WinReward[4200007][4]["SzObj"] = "self"
	tDoubleStove_WinReward[4200007][4]["RewardEffect"] = {}
	tDoubleStove_WinReward[4200007][4]["RewardEffect"]["Effect"] = "angelwing"
	tDoubleStove_WinReward[4200007][5] = {}
	tDoubleStove_WinReward[4200007][5]["RewardItem"] = {}
	tDoubleStove_WinReward[4200007][5]["RewardItem"][1] = {}
	tDoubleStove_WinReward[4200007][5]["RewardItem"][1]["Id"] = 4200014
	tDoubleStove_WinReward[4200007][5]["RewardItem"][1]["Attr"] = "0 1"
	tDoubleStove_WinReward[4200007][5]["RewardItem"][1]["PreciousType"] = 303
	tDoubleStove_WinReward[4200007][5]["LogId"] = 12001234
	tDoubleStove_WinReward[4200007][5]["SzObj"] = "self"
	tDoubleStove_WinReward[4200007][5]["RewardEffect"] = {}
	tDoubleStove_WinReward[4200007][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 灵珠双鼎成功模板 8阶
	tDoubleStove_WinReward[4200008] = {}
	tDoubleStove_WinReward[4200008][1] = {}
	tDoubleStove_WinReward[4200008][1]["RewardItem"] = {}
	tDoubleStove_WinReward[4200008][1]["RewardItem"][1] = {}
	tDoubleStove_WinReward[4200008][1]["RewardItem"][1]["Id"] = 4200007
	tDoubleStove_WinReward[4200008][1]["RewardItem"][1]["Attr"] = "0 1"
	tDoubleStove_WinReward[4200008][1]["RewardItem"][1]["PreciousType"] = 303
	tDoubleStove_WinReward[4200008][1]["RewardItem"][2] = {}
	tDoubleStove_WinReward[4200008][1]["RewardItem"][2]["Id"] = 4200008
	tDoubleStove_WinReward[4200008][1]["RewardItem"][2]["Attr"] = "0 1"
	tDoubleStove_WinReward[4200008][1]["RewardItem"][2]["PreciousType"] = 303
	tDoubleStove_WinReward[4200008][1]["LogId"] = 12001234
	tDoubleStove_WinReward[4200008][1]["SzObj"] = "self"
	tDoubleStove_WinReward[4200008][1]["RewardEffect"] = {}
	tDoubleStove_WinReward[4200008][1]["RewardEffect"]["Effect"] = "angelwing"
	tDoubleStove_WinReward[4200008][2] = {}
	tDoubleStove_WinReward[4200008][2]["RewardItem"] = {}
	tDoubleStove_WinReward[4200008][2]["RewardItem"][1] = {}
	tDoubleStove_WinReward[4200008][2]["RewardItem"][1]["Id"] = 4200009
	tDoubleStove_WinReward[4200008][2]["RewardItem"][1]["Attr"] = "0 1"
	tDoubleStove_WinReward[4200008][2]["RewardItem"][1]["PreciousType"] = 303
	tDoubleStove_WinReward[4200008][2]["LogId"] = 12001234
	tDoubleStove_WinReward[4200008][2]["SzObj"] = "self"
	tDoubleStove_WinReward[4200008][2]["RewardEffect"] = {}
	tDoubleStove_WinReward[4200008][2]["RewardEffect"]["Effect"] = "angelwing"
	tDoubleStove_WinReward[4200008][4] = {}
	tDoubleStove_WinReward[4200008][4]["RewardItem"] = {}
	tDoubleStove_WinReward[4200008][4]["RewardItem"][1] = {}
	tDoubleStove_WinReward[4200008][4]["RewardItem"][1]["Id"] = 4200013
	tDoubleStove_WinReward[4200008][4]["RewardItem"][1]["Attr"] = "0 1"
	tDoubleStove_WinReward[4200008][4]["RewardItem"][1]["PreciousType"] = 303
	tDoubleStove_WinReward[4200008][4]["LogId"] = 12001234
	tDoubleStove_WinReward[4200008][4]["SzObj"] = "self"
	tDoubleStove_WinReward[4200008][4]["RewardEffect"] = {}
	tDoubleStove_WinReward[4200008][4]["RewardEffect"]["Effect"] = "angelwing"
	tDoubleStove_WinReward[4200008][5] = {}
	tDoubleStove_WinReward[4200008][5]["RewardItem"] = {}
	tDoubleStove_WinReward[4200008][5]["RewardItem"][1] = {}
	tDoubleStove_WinReward[4200008][5]["RewardItem"][1]["Id"] = 4200015
	tDoubleStove_WinReward[4200008][5]["RewardItem"][1]["Attr"] = "0 1"
	tDoubleStove_WinReward[4200008][5]["RewardItem"][1]["PreciousType"] = 303
	tDoubleStove_WinReward[4200008][5]["LogId"] = 12001234
	tDoubleStove_WinReward[4200008][5]["SzObj"] = "self"
	tDoubleStove_WinReward[4200008][5]["RewardEffect"] = {}
	tDoubleStove_WinReward[4200008][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 灵珠双鼎成功模板 9阶
	tDoubleStove_WinReward[4200009] = {}
	tDoubleStove_WinReward[4200009][1] = {}
	tDoubleStove_WinReward[4200009][1]["RewardItem"] = {}
	tDoubleStove_WinReward[4200009][1]["RewardItem"][1] = {}
	tDoubleStove_WinReward[4200009][1]["RewardItem"][1]["Id"] = 4200008
	tDoubleStove_WinReward[4200009][1]["RewardItem"][1]["Attr"] = "0 1"
	tDoubleStove_WinReward[4200009][1]["RewardItem"][1]["PreciousType"] = 303
	tDoubleStove_WinReward[4200009][1]["RewardItem"][2] = {}
	tDoubleStove_WinReward[4200009][1]["RewardItem"][2]["Id"] = 4200009
	tDoubleStove_WinReward[4200009][1]["RewardItem"][2]["Attr"] = "0 1"
	tDoubleStove_WinReward[4200009][1]["RewardItem"][2]["PreciousType"] = 303
	tDoubleStove_WinReward[4200009][1]["LogId"] = 12001234
	tDoubleStove_WinReward[4200009][1]["SzObj"] = "self"
	tDoubleStove_WinReward[4200009][1]["RewardEffect"] = {}
	tDoubleStove_WinReward[4200009][1]["RewardEffect"]["Effect"] = "angelwing"
	tDoubleStove_WinReward[4200009][2] = {}
	tDoubleStove_WinReward[4200009][2]["RewardItem"] = {}
	tDoubleStove_WinReward[4200009][2]["RewardItem"][1] = {}
	tDoubleStove_WinReward[4200009][2]["RewardItem"][1]["Id"] = 4200010
	tDoubleStove_WinReward[4200009][2]["RewardItem"][1]["Attr"] = "0 1"
	tDoubleStove_WinReward[4200009][2]["RewardItem"][1]["PreciousType"] = 303
	tDoubleStove_WinReward[4200009][2]["LogId"] = 12001234
	tDoubleStove_WinReward[4200009][2]["SzObj"] = "self"
	tDoubleStove_WinReward[4200009][2]["RewardEffect"] = {}
	tDoubleStove_WinReward[4200009][2]["RewardEffect"]["Effect"] = "angelwing"
	tDoubleStove_WinReward[4200009][4] = {}
	tDoubleStove_WinReward[4200009][4]["RewardItem"] = {}
	tDoubleStove_WinReward[4200009][4]["RewardItem"][1] = {}
	tDoubleStove_WinReward[4200009][4]["RewardItem"][1]["Id"] = 4200014
	tDoubleStove_WinReward[4200009][4]["RewardItem"][1]["Attr"] = "0 1"
	tDoubleStove_WinReward[4200009][4]["RewardItem"][1]["PreciousType"] = 303
	tDoubleStove_WinReward[4200009][4]["LogId"] = 12001234
	tDoubleStove_WinReward[4200009][4]["SzObj"] = "self"
	tDoubleStove_WinReward[4200009][4]["RewardEffect"] = {}
	tDoubleStove_WinReward[4200009][4]["RewardEffect"]["Effect"] = "angelwing"
	tDoubleStove_WinReward[4200009][5] = {}
	tDoubleStove_WinReward[4200009][5]["RewardItem"] = {}
	tDoubleStove_WinReward[4200009][5]["RewardItem"][1] = {}
	tDoubleStove_WinReward[4200009][5]["RewardItem"][1]["Id"] = 4200016
	tDoubleStove_WinReward[4200009][5]["RewardItem"][1]["Attr"] = "0 1"
	tDoubleStove_WinReward[4200009][5]["RewardItem"][1]["PreciousType"] = 303
	tDoubleStove_WinReward[4200009][5]["LogId"] = 12001234
	tDoubleStove_WinReward[4200009][5]["SzObj"] = "self"
	tDoubleStove_WinReward[4200009][5]["RewardEffect"] = {}
	tDoubleStove_WinReward[4200009][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 灵珠双鼎成功模板 10阶
	tDoubleStove_WinReward[4200010] = {}
	tDoubleStove_WinReward[4200010][1] = {}
	tDoubleStove_WinReward[4200010][1]["RewardItem"] = {}
	tDoubleStove_WinReward[4200010][1]["RewardItem"][1] = {}
	tDoubleStove_WinReward[4200010][1]["RewardItem"][1]["Id"] = 4200009
	tDoubleStove_WinReward[4200010][1]["RewardItem"][1]["Attr"] = "0 1"
	tDoubleStove_WinReward[4200010][1]["RewardItem"][1]["PreciousType"] = 303
	tDoubleStove_WinReward[4200010][1]["RewardItem"][2] = {}
	tDoubleStove_WinReward[4200010][1]["RewardItem"][2]["Id"] = 4200010
	tDoubleStove_WinReward[4200010][1]["RewardItem"][2]["Attr"] = "0 1"
	tDoubleStove_WinReward[4200010][1]["RewardItem"][2]["PreciousType"] = 303
	tDoubleStove_WinReward[4200010][1]["LogId"] = 12001234
	tDoubleStove_WinReward[4200010][1]["SzObj"] = "self"
	tDoubleStove_WinReward[4200010][1]["RewardEffect"] = {}
	tDoubleStove_WinReward[4200010][1]["RewardEffect"]["Effect"] = "angelwing"
	tDoubleStove_WinReward[4200010][2] = {}
	tDoubleStove_WinReward[4200010][2]["RewardItem"] = {}
	tDoubleStove_WinReward[4200010][2]["RewardItem"][1] = {}
	tDoubleStove_WinReward[4200010][2]["RewardItem"][1]["Id"] = 4200011
	tDoubleStove_WinReward[4200010][2]["RewardItem"][1]["Attr"] = "0 1"
	tDoubleStove_WinReward[4200010][2]["RewardItem"][1]["PreciousType"] = 303
	tDoubleStove_WinReward[4200010][2]["LogId"] = 12001234
	tDoubleStove_WinReward[4200010][2]["SzObj"] = "self"
	tDoubleStove_WinReward[4200010][2]["RewardEffect"] = {}
	tDoubleStove_WinReward[4200010][2]["RewardEffect"]["Effect"] = "angelwing"
	tDoubleStove_WinReward[4200010][4] = {}
	tDoubleStove_WinReward[4200010][4]["RewardItem"] = {}
	tDoubleStove_WinReward[4200010][4]["RewardItem"][1] = {}
	tDoubleStove_WinReward[4200010][4]["RewardItem"][1]["Id"] = 4200015
	tDoubleStove_WinReward[4200010][4]["RewardItem"][1]["Attr"] = "0 1"
	tDoubleStove_WinReward[4200010][4]["RewardItem"][1]["PreciousType"] = 303
	tDoubleStove_WinReward[4200010][4]["LogId"] = 12001234
	tDoubleStove_WinReward[4200010][4]["SzObj"] = "self"
	tDoubleStove_WinReward[4200010][4]["RewardEffect"] = {}
	tDoubleStove_WinReward[4200010][4]["RewardEffect"]["Effect"] = "angelwing"
	tDoubleStove_WinReward[4200010][5] = {}
	tDoubleStove_WinReward[4200010][5]["RewardItem"] = {}
	tDoubleStove_WinReward[4200010][5]["RewardItem"][1] = {}
	tDoubleStove_WinReward[4200010][5]["RewardItem"][1]["Id"] = 4200017
	tDoubleStove_WinReward[4200010][5]["RewardItem"][1]["Attr"] = "0 1"
	tDoubleStove_WinReward[4200010][5]["RewardItem"][1]["PreciousType"] = 303
	tDoubleStove_WinReward[4200010][5]["LogId"] = 12001234
	tDoubleStove_WinReward[4200010][5]["SzObj"] = "self"
	tDoubleStove_WinReward[4200010][5]["RewardEffect"] = {}
	tDoubleStove_WinReward[4200010][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 灵珠双鼎成功模板 11阶
	tDoubleStove_WinReward[4200011] = {}
	tDoubleStove_WinReward[4200011][1] = {}
	tDoubleStove_WinReward[4200011][1]["RewardItem"] = {}
	tDoubleStove_WinReward[4200011][1]["RewardItem"][1] = {}
	tDoubleStove_WinReward[4200011][1]["RewardItem"][1]["Id"] = 4200010
	tDoubleStove_WinReward[4200011][1]["RewardItem"][1]["Attr"] = "0 1"
	tDoubleStove_WinReward[4200011][1]["RewardItem"][1]["PreciousType"] = 303
	tDoubleStove_WinReward[4200011][1]["RewardItem"][2] = {}
	tDoubleStove_WinReward[4200011][1]["RewardItem"][2]["Id"] = 4200011
	tDoubleStove_WinReward[4200011][1]["RewardItem"][2]["Attr"] = "0 1"
	tDoubleStove_WinReward[4200011][1]["RewardItem"][2]["PreciousType"] = 303
	tDoubleStove_WinReward[4200011][1]["LogId"] = 12001234
	tDoubleStove_WinReward[4200011][1]["SzObj"] = "self"
	tDoubleStove_WinReward[4200011][1]["RewardEffect"] = {}
	tDoubleStove_WinReward[4200011][1]["RewardEffect"]["Effect"] = "angelwing"
	tDoubleStove_WinReward[4200011][2] = {}
	tDoubleStove_WinReward[4200011][2]["RewardItem"] = {}
	tDoubleStove_WinReward[4200011][2]["RewardItem"][1] = {}
	tDoubleStove_WinReward[4200011][2]["RewardItem"][1]["Id"] = 4200012
	tDoubleStove_WinReward[4200011][2]["RewardItem"][1]["Attr"] = "0 1"
	tDoubleStove_WinReward[4200011][2]["RewardItem"][1]["PreciousType"] = 303
	tDoubleStove_WinReward[4200011][2]["LogId"] = 12001234
	tDoubleStove_WinReward[4200011][2]["SzObj"] = "self"
	tDoubleStove_WinReward[4200011][2]["RewardEffect"] = {}
	tDoubleStove_WinReward[4200011][2]["RewardEffect"]["Effect"] = "angelwing"
	tDoubleStove_WinReward[4200011][4] = {}
	tDoubleStove_WinReward[4200011][4]["RewardItem"] = {}
	tDoubleStove_WinReward[4200011][4]["RewardItem"][1] = {}
	tDoubleStove_WinReward[4200011][4]["RewardItem"][1]["Id"] = 4200016
	tDoubleStove_WinReward[4200011][4]["RewardItem"][1]["Attr"] = "0 1"
	tDoubleStove_WinReward[4200011][4]["RewardItem"][1]["PreciousType"] = 303
	tDoubleStove_WinReward[4200011][4]["LogId"] = 12001234
	tDoubleStove_WinReward[4200011][4]["SzObj"] = "self"
	tDoubleStove_WinReward[4200011][4]["RewardEffect"] = {}
	tDoubleStove_WinReward[4200011][4]["RewardEffect"]["Effect"] = "angelwing"
	tDoubleStove_WinReward[4200011][5] = {}
	tDoubleStove_WinReward[4200011][5]["RewardItem"] = {}
	tDoubleStove_WinReward[4200011][5]["RewardItem"][1] = {}
	tDoubleStove_WinReward[4200011][5]["RewardItem"][1]["Id"] = 4200018
	tDoubleStove_WinReward[4200011][5]["RewardItem"][1]["Attr"] = "0 1"
	tDoubleStove_WinReward[4200011][5]["RewardItem"][1]["PreciousType"] = 303
	tDoubleStove_WinReward[4200011][5]["LogId"] = 12001234
	tDoubleStove_WinReward[4200011][5]["SzObj"] = "self"
	tDoubleStove_WinReward[4200011][5]["RewardEffect"] = {}
	tDoubleStove_WinReward[4200011][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 灵珠双鼎成功模板 12阶
	tDoubleStove_WinReward[4200012] = {}
	tDoubleStove_WinReward[4200012][1] = {}
	tDoubleStove_WinReward[4200012][1]["RewardItem"] = {}
	tDoubleStove_WinReward[4200012][1]["RewardItem"][1] = {}
	tDoubleStove_WinReward[4200012][1]["RewardItem"][1]["Id"] = 4200011
	tDoubleStove_WinReward[4200012][1]["RewardItem"][1]["Attr"] = "0 1"
	tDoubleStove_WinReward[4200012][1]["RewardItem"][1]["PreciousType"] = 303
	tDoubleStove_WinReward[4200012][1]["RewardItem"][2] = {}
	tDoubleStove_WinReward[4200012][1]["RewardItem"][2]["Id"] = 4200012
	tDoubleStove_WinReward[4200012][1]["RewardItem"][2]["Attr"] = "0 1"
	tDoubleStove_WinReward[4200012][1]["RewardItem"][2]["PreciousType"] = 303
	tDoubleStove_WinReward[4200012][1]["LogId"] = 12001234
	tDoubleStove_WinReward[4200012][1]["SzObj"] = "self"
	tDoubleStove_WinReward[4200012][1]["RewardEffect"] = {}
	tDoubleStove_WinReward[4200012][1]["RewardEffect"]["Effect"] = "angelwing"
	tDoubleStove_WinReward[4200012][2] = {}
	tDoubleStove_WinReward[4200012][2]["RewardItem"] = {}
	tDoubleStove_WinReward[4200012][2]["RewardItem"][1] = {}
	tDoubleStove_WinReward[4200012][2]["RewardItem"][1]["Id"] = 4200013
	tDoubleStove_WinReward[4200012][2]["RewardItem"][1]["Attr"] = "0 1"
	tDoubleStove_WinReward[4200012][2]["RewardItem"][1]["PreciousType"] = 303
	tDoubleStove_WinReward[4200012][2]["LogId"] = 12001234
	tDoubleStove_WinReward[4200012][2]["SzObj"] = "self"
	tDoubleStove_WinReward[4200012][2]["RewardEffect"] = {}
	tDoubleStove_WinReward[4200012][2]["RewardEffect"]["Effect"] = "angelwing"
	tDoubleStove_WinReward[4200012][4] = {}
	tDoubleStove_WinReward[4200012][4]["RewardItem"] = {}
	tDoubleStove_WinReward[4200012][4]["RewardItem"][1] = {}
	tDoubleStove_WinReward[4200012][4]["RewardItem"][1]["Id"] = 4200017
	tDoubleStove_WinReward[4200012][4]["RewardItem"][1]["Attr"] = "0 1"
	tDoubleStove_WinReward[4200012][4]["RewardItem"][1]["PreciousType"] = 303
	tDoubleStove_WinReward[4200012][4]["LogId"] = 12001234
	tDoubleStove_WinReward[4200012][4]["SzObj"] = "self"
	tDoubleStove_WinReward[4200012][4]["RewardEffect"] = {}
	tDoubleStove_WinReward[4200012][4]["RewardEffect"]["Effect"] = "angelwing"
	tDoubleStove_WinReward[4200012][5] = {}
	tDoubleStove_WinReward[4200012][5]["RewardItem"] = {}
	tDoubleStove_WinReward[4200012][5]["RewardItem"][1] = {}
	tDoubleStove_WinReward[4200012][5]["RewardItem"][1]["Id"] = 4200018
	tDoubleStove_WinReward[4200012][5]["RewardItem"][1]["Attr"] = "0 1"
	tDoubleStove_WinReward[4200012][5]["RewardItem"][1]["PreciousType"] = 303
	tDoubleStove_WinReward[4200012][5]["LogId"] = 12001234
	tDoubleStove_WinReward[4200012][5]["SzObj"] = "self"
	tDoubleStove_WinReward[4200012][5]["RewardEffect"] = {}
	tDoubleStove_WinReward[4200012][5]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 灵珠双鼎失败
local tDoubleStove_LoseReward = {}
	tDoubleStove_LoseReward[4200003] = {}
	tDoubleStove_LoseReward[4200003]["RewardItem"] = {}
	tDoubleStove_LoseReward[4200003]["RewardItem"][1] = {}
	tDoubleStove_LoseReward[4200003]["RewardItem"][1]["Id"] = 3320539
	tDoubleStove_LoseReward[4200003]["RewardItem"][1]["Attr"] = "0 1"
	tDoubleStove_LoseReward[4200003]["LogId"] = 12001234
	tDoubleStove_LoseReward[4200003]["LogFile"] = "Pearl"
	tDoubleStove_LoseReward[4200003]["SzObj"] = "self"
	tDoubleStove_LoseReward[4200003]["RewardEffect"] = {}
	tDoubleStove_LoseReward[4200003]["RewardEffect"]["Effect"] = "angelwing"
	tDoubleStove_LoseReward[4200003]["ExpTime"] = 20
	tDoubleStove_LoseReward[4200003]["ActionId"] = 575364
	tDoubleStove_LoseReward[4200004] = {}
	tDoubleStove_LoseReward[4200004]["RewardItem"] = {}
	tDoubleStove_LoseReward[4200004]["RewardItem"][1] = {}
	tDoubleStove_LoseReward[4200004]["RewardItem"][1]["Id"] = 3320540
	tDoubleStove_LoseReward[4200004]["RewardItem"][1]["Attr"] = "0 1"
	tDoubleStove_LoseReward[4200004]["LogId"] = 12001234
	tDoubleStove_LoseReward[4200004]["LogFile"] = "Pearl"
	tDoubleStove_LoseReward[4200004]["SzObj"] = "self"
	tDoubleStove_LoseReward[4200004]["RewardEffect"] = {}
	tDoubleStove_LoseReward[4200004]["RewardEffect"]["Effect"] = "angelwing"
	tDoubleStove_LoseReward[4200004]["ExpTime"] = 30
	tDoubleStove_LoseReward[4200004]["ActionId"] = 575365
	tDoubleStove_LoseReward[4200005] = {}
	tDoubleStove_LoseReward[4200005]["RewardItem"] = {}
	tDoubleStove_LoseReward[4200005]["RewardItem"][1] = {}
	tDoubleStove_LoseReward[4200005]["RewardItem"][1]["Id"] = 3008974
	tDoubleStove_LoseReward[4200005]["RewardItem"][1]["Attr"] = "0 1"
	tDoubleStove_LoseReward[4200005]["LogId"] = 12001234
	tDoubleStove_LoseReward[4200005]["LogFile"] = "Pearl"
	tDoubleStove_LoseReward[4200005]["SzObj"] = "self"
	tDoubleStove_LoseReward[4200005]["RewardEffect"] = {}
	tDoubleStove_LoseReward[4200005]["RewardEffect"]["Effect"] = "angelwing"
	tDoubleStove_LoseReward[4200005]["ExpTime"] = 50
	tDoubleStove_LoseReward[4200005]["ActionId"] = 575366
	tDoubleStove_LoseReward[4200006] = {}
	tDoubleStove_LoseReward[4200006]["RewardItem"] = {}
	tDoubleStove_LoseReward[4200006]["RewardItem"][1] = {}
	tDoubleStove_LoseReward[4200006]["RewardItem"][1]["Id"] = 3008975
	tDoubleStove_LoseReward[4200006]["RewardItem"][1]["Attr"] = "0 1"
	tDoubleStove_LoseReward[4200006]["LogId"] = 12001234
	tDoubleStove_LoseReward[4200006]["LogFile"] = "Pearl"
	tDoubleStove_LoseReward[4200006]["SzObj"] = "self"
	tDoubleStove_LoseReward[4200006]["RewardEffect"] = {}
	tDoubleStove_LoseReward[4200006]["RewardEffect"]["Effect"] = "angelwing"
	tDoubleStove_LoseReward[4200006]["ExpTime"] = 100
	tDoubleStove_LoseReward[4200006]["ActionId"] = 575367
	tDoubleStove_LoseReward[4200007] = {}
	tDoubleStove_LoseReward[4200007]["RewardItem"] = {}
	tDoubleStove_LoseReward[4200007]["RewardItem"][1] = {}
	tDoubleStove_LoseReward[4200007]["RewardItem"][1]["Id"] = 3008960
	tDoubleStove_LoseReward[4200007]["RewardItem"][1]["Attr"] = "0 1"
	tDoubleStove_LoseReward[4200007]["LogId"] = 12001234
	tDoubleStove_LoseReward[4200007]["LogFile"] = "Pearl"
	tDoubleStove_LoseReward[4200007]["SzObj"] = "self"
	tDoubleStove_LoseReward[4200007]["RewardEffect"] = {}
	tDoubleStove_LoseReward[4200007]["RewardEffect"]["Effect"] = "angelwing"
	tDoubleStove_LoseReward[4200007]["ExpTime"] = 150
	tDoubleStove_LoseReward[4200007]["ActionId"] = 575368
	tDoubleStove_LoseReward[4200008] = {}
	tDoubleStove_LoseReward[4200008]["RewardItem"] = {}
	tDoubleStove_LoseReward[4200008]["RewardItem"][1] = {}
	tDoubleStove_LoseReward[4200008]["RewardItem"][1]["Id"] = 3008963
	tDoubleStove_LoseReward[4200008]["RewardItem"][1]["Attr"] = "0 1"
	tDoubleStove_LoseReward[4200008]["LogId"] = 12001234
	tDoubleStove_LoseReward[4200008]["LogFile"] = "Pearl"
	tDoubleStove_LoseReward[4200008]["SzObj"] = "self"
	tDoubleStove_LoseReward[4200008]["RewardEffect"] = {}
	tDoubleStove_LoseReward[4200008]["RewardEffect"]["Effect"] = "angelwing"
	tDoubleStove_LoseReward[4200008]["ExpTime"] = 200
	tDoubleStove_LoseReward[4200008]["ActionId"] = 575369
	tDoubleStove_LoseReward[4200009] = {}
	tDoubleStove_LoseReward[4200009]["RewardItem"] = {}
	tDoubleStove_LoseReward[4200009]["RewardItem"][1] = {}
	tDoubleStove_LoseReward[4200009]["RewardItem"][1]["Id"] = 3200331
	tDoubleStove_LoseReward[4200009]["RewardItem"][1]["Attr"] = "0 1"
	tDoubleStove_LoseReward[4200009]["LogId"] = 12001234
	tDoubleStove_LoseReward[4200009]["LogFile"] = "Pearl"
	tDoubleStove_LoseReward[4200009]["SzObj"] = "self"
	tDoubleStove_LoseReward[4200009]["RewardEffect"] = {}
	tDoubleStove_LoseReward[4200009]["RewardEffect"]["Effect"] = "angelwing"
	tDoubleStove_LoseReward[4200009]["ExpTime"] = 250
	tDoubleStove_LoseReward[4200009]["ActionId"] = 575370
	tDoubleStove_LoseReward[4200010] = {}
	tDoubleStove_LoseReward[4200010]["RewardItem"] = {}
	tDoubleStove_LoseReward[4200010]["RewardItem"][1] = {}
	tDoubleStove_LoseReward[4200010]["RewardItem"][1]["Id"] = 3200334
	tDoubleStove_LoseReward[4200010]["RewardItem"][1]["Attr"] = "0 1"
	tDoubleStove_LoseReward[4200010]["LogId"] = 12001234
	tDoubleStove_LoseReward[4200010]["LogFile"] = "Pearl"
	tDoubleStove_LoseReward[4200010]["SzObj"] = "self"
	tDoubleStove_LoseReward[4200010]["RewardEffect"] = {}
	tDoubleStove_LoseReward[4200010]["RewardEffect"]["Effect"] = "angelwing"
	tDoubleStove_LoseReward[4200010]["ExpTime"] = 300
	tDoubleStove_LoseReward[4200010]["ActionId"] = 575371
	tDoubleStove_LoseReward[4200011] = {}
	tDoubleStove_LoseReward[4200011]["RewardItem"] = {}
	tDoubleStove_LoseReward[4200011]["RewardItem"][1] = {}
	tDoubleStove_LoseReward[4200011]["RewardItem"][1]["Id"] = 3200325
	tDoubleStove_LoseReward[4200011]["RewardItem"][1]["Attr"] = "0 1"
	tDoubleStove_LoseReward[4200011]["LogId"] = 12001234
	tDoubleStove_LoseReward[4200011]["LogFile"] = "Pearl"
	tDoubleStove_LoseReward[4200011]["SzObj"] = "self"
	tDoubleStove_LoseReward[4200011]["RewardEffect"] = {}
	tDoubleStove_LoseReward[4200011]["RewardEffect"]["Effect"] = "angelwing"
	tDoubleStove_LoseReward[4200011]["ExpTime"] = 500
	tDoubleStove_LoseReward[4200011]["ActionId"] = 575372
	tDoubleStove_LoseReward[4200012] = {}
	tDoubleStove_LoseReward[4200012]["RewardItem"] = {}
	tDoubleStove_LoseReward[4200012]["RewardItem"][1] = {}
	tDoubleStove_LoseReward[4200012]["RewardItem"][1]["Id"] = 3008968
	tDoubleStove_LoseReward[4200012]["RewardItem"][1]["Attr"] = "0 2"
	tDoubleStove_LoseReward[4200012]["LogId"] = 12001234
	tDoubleStove_LoseReward[4200012]["LogFile"] = "Pearl"
	tDoubleStove_LoseReward[4200012]["SzObj"] = "self"
	tDoubleStove_LoseReward[4200012]["RewardEffect"] = {}
	tDoubleStove_LoseReward[4200012]["RewardEffect"]["Effect"] = "angelwing"
	tDoubleStove_LoseReward[4200012]["ExpTime"] = 800
	tDoubleStove_LoseReward[4200012]["ActionId"] = 575373
	
	tDoubleStove_LoseRewardNew = {}
	tDoubleStove_LoseRewardNew[4200008] = {}
	tDoubleStove_LoseRewardNew[4200008]["RewardItem"] = {}
	tDoubleStove_LoseRewardNew[4200008]["RewardItem"][1] = {}
	tDoubleStove_LoseRewardNew[4200008]["RewardItem"][1]["Id"] = 3321211
	tDoubleStove_LoseRewardNew[4200008]["RewardItem"][1]["Attr"] = "0 1"
	tDoubleStove_LoseRewardNew[4200008]["LogId"] = 12001234
	tDoubleStove_LoseRewardNew[4200008]["RewardEffect"] = {}
	tDoubleStove_LoseRewardNew[4200008]["RewardEffect"]["SzObj"] = "self"
	tDoubleStove_LoseRewardNew[4200008]["RewardEffect"]["Effect"] = "angelwing"
	tDoubleStove_LoseRewardNew[4200008]["ActionId"] = 572113
	tDoubleStove_LoseRewardNew[4200009] = {}
	tDoubleStove_LoseRewardNew[4200009]["RewardItem"] = {}
	tDoubleStove_LoseRewardNew[4200009]["RewardItem"][1] = {}
	tDoubleStove_LoseRewardNew[4200009]["RewardItem"][1]["Id"] = 3321211
	tDoubleStove_LoseRewardNew[4200009]["RewardItem"][1]["Attr"] = "0 2"
	tDoubleStove_LoseRewardNew[4200009]["LogId"] = 12001234
	tDoubleStove_LoseRewardNew[4200009]["RewardEffect"] = {}
	tDoubleStove_LoseRewardNew[4200009]["RewardEffect"]["SzObj"] = "self"
	tDoubleStove_LoseRewardNew[4200009]["RewardEffect"]["Effect"] = "angelwing"
	tDoubleStove_LoseRewardNew[4200009]["ActionId"] = 572114
	tDoubleStove_LoseRewardNew[4200010] = {}
	tDoubleStove_LoseRewardNew[4200010]["RewardItem"] = {}
	tDoubleStove_LoseRewardNew[4200010]["RewardItem"][1] = {}
	tDoubleStove_LoseRewardNew[4200010]["RewardItem"][1]["Id"] = 3321211
	tDoubleStove_LoseRewardNew[4200010]["RewardItem"][1]["Attr"] = "0 4"
	tDoubleStove_LoseRewardNew[4200010]["LogId"] = 12001234
	tDoubleStove_LoseRewardNew[4200010]["RewardEffect"] = {}
	tDoubleStove_LoseRewardNew[4200010]["RewardEffect"]["SzObj"] = "self"
	tDoubleStove_LoseRewardNew[4200010]["RewardEffect"]["Effect"] = "angelwing"
	tDoubleStove_LoseRewardNew[4200010]["ActionId"] = 572115
	tDoubleStove_LoseRewardNew[4200011] = {}
	tDoubleStove_LoseRewardNew[4200011]["RewardItem"] = {}
	tDoubleStove_LoseRewardNew[4200011]["RewardItem"][1] = {}
	tDoubleStove_LoseRewardNew[4200011]["RewardItem"][1]["Id"] = 3321211
	tDoubleStove_LoseRewardNew[4200011]["RewardItem"][1]["Attr"] = "0 8"
	tDoubleStove_LoseRewardNew[4200011]["LogId"] = 12001234
	tDoubleStove_LoseRewardNew[4200011]["RewardEffect"] = {}
	tDoubleStove_LoseRewardNew[4200011]["RewardEffect"]["SzObj"] = "self"
	tDoubleStove_LoseRewardNew[4200011]["RewardEffect"]["Effect"] = "angelwing"
	tDoubleStove_LoseRewardNew[4200011]["ActionId"] = 572116
	tDoubleStove_LoseRewardNew[4200012] = {}
	tDoubleStove_LoseRewardNew[4200012]["RewardItem"] = {}
	tDoubleStove_LoseRewardNew[4200012]["RewardItem"][1] = {}
	tDoubleStove_LoseRewardNew[4200012]["RewardItem"][1]["Id"] = 3321211
	tDoubleStove_LoseRewardNew[4200012]["RewardItem"][1]["Attr"] = "0 16"
	tDoubleStove_LoseRewardNew[4200012]["LogId"] = 12001234
	tDoubleStove_LoseRewardNew[4200012]["RewardEffect"] = {}
	tDoubleStove_LoseRewardNew[4200012]["RewardEffect"]["SzObj"] = "self"
	tDoubleStove_LoseRewardNew[4200012]["RewardEffect"]["Effect"] = "angelwing"
	tDoubleStove_LoseRewardNew[4200012]["ActionId"] = 572117
	
	-- 投注正确不同阶灵珠对应发奖 最低二阶
local tDoubleStove_WinAction = {}
	tDoubleStove_WinAction[4200003] = {}
	tDoubleStove_WinAction[4200003][1] = 570625
	tDoubleStove_WinAction[4200003][2] = 570609
	tDoubleStove_WinAction[4200003][3] = 570611
	tDoubleStove_WinAction[4200003][4] = 570613
	tDoubleStove_WinAction[4200003][5] = 570615
	tDoubleStove_WinAction[4200004] = {}
	tDoubleStove_WinAction[4200004][1] = 570626
	tDoubleStove_WinAction[4200004][2] = 570610
	tDoubleStove_WinAction[4200004][3] = 570612
	tDoubleStove_WinAction[4200004][4] = 570614
	tDoubleStove_WinAction[4200004][5] = 570616
	tDoubleStove_WinAction[4200005] = {}
	tDoubleStove_WinAction[4200005][1] = 570627
	tDoubleStove_WinAction[4200005][2] = 570611
	tDoubleStove_WinAction[4200005][3] = 570613
	tDoubleStove_WinAction[4200005][4] = 570615
	tDoubleStove_WinAction[4200005][5] = 570617
	tDoubleStove_WinAction[4200006] = {}
	tDoubleStove_WinAction[4200006][1] = 570628
	tDoubleStove_WinAction[4200006][2] = 570612
	tDoubleStove_WinAction[4200006][3] = 570614
	tDoubleStove_WinAction[4200006][4] = 570616
	tDoubleStove_WinAction[4200006][5] = 570618
	tDoubleStove_WinAction[4200007] = {}
	tDoubleStove_WinAction[4200007][1] = 570629
	tDoubleStove_WinAction[4200007][2] = 570613
	tDoubleStove_WinAction[4200007][3] = 570615
	tDoubleStove_WinAction[4200007][4] = 570617
	tDoubleStove_WinAction[4200007][5] = 570619
	tDoubleStove_WinAction[4200008] = {}
	tDoubleStove_WinAction[4200008][1] = 570630
	tDoubleStove_WinAction[4200008][2] = 570614
	tDoubleStove_WinAction[4200008][3] = 570616
	tDoubleStove_WinAction[4200008][4] = 570618
	tDoubleStove_WinAction[4200008][5] = 570620
	tDoubleStove_WinAction[4200009] = {}
	tDoubleStove_WinAction[4200009][1] = 570631
	tDoubleStove_WinAction[4200009][2] = 570615
	tDoubleStove_WinAction[4200009][3] = 570617
	tDoubleStove_WinAction[4200009][4] = 570619
	tDoubleStove_WinAction[4200009][5] = 570621
	tDoubleStove_WinAction[4200010] = {}
	tDoubleStove_WinAction[4200010][1] = 570632
	tDoubleStove_WinAction[4200010][2] = 570616
	tDoubleStove_WinAction[4200010][3] = 570618
	tDoubleStove_WinAction[4200010][4] = 570620
	tDoubleStove_WinAction[4200010][5] = 570622
	tDoubleStove_WinAction[4200011] = {}
	tDoubleStove_WinAction[4200011][1] = 570633
	tDoubleStove_WinAction[4200011][2] = 570617
	tDoubleStove_WinAction[4200011][3] = 570619
	tDoubleStove_WinAction[4200011][4] = 570621
	tDoubleStove_WinAction[4200011][5] = 570623
	tDoubleStove_WinAction[4200012] = {}
	tDoubleStove_WinAction[4200012][1] = 570634
	tDoubleStove_WinAction[4200012][2] = 570618
	tDoubleStove_WinAction[4200012][3] = 570620
	tDoubleStove_WinAction[4200012][4] = 570622
	tDoubleStove_WinAction[4200012][5] = 570623
	
	
	-- 记录玩家炼丹
local tDoubleStove_Stove = {}
-- 阴炉
	tDoubleStove_Stove[1] = {}
-- 阳炉
	tDoubleStove_Stove[2] = {}
local tDoubleStove_StoveWin = {}
local tDoubleStove_StoveLose = {}
	-- 已判断阴阳炉成功标志
local tDoubleStove_StoveFlag = 0
local nDoubleStove_Random
-- 最近成功的炉子
local tDoubleStove_NewSuccess = {}
-- 炉子期数
local nDoubleStove_SuccessNum = 1
-- 最近高级灵珠
local tDoubleStove_NewLucky = {}
-- 倒计时播放
local nDoubleStove_djs = 0

--玩家选择的炉子索引
local tDoubleStove_StoveIndex = {}

local tDoubleStove_effect = {}
tDoubleStove_effect[23580] = "npc_liandanlu_1"
tDoubleStove_effect[23581] = "npc_liandanluY"

-- 贵重物品记录
local tDoubleStove_PreciousType = {}
	tDoubleStove_PreciousType[570609] = {4200004}
	tDoubleStove_PreciousType[570610] = {4200005}
	tDoubleStove_PreciousType[570611] = {4200006}
	tDoubleStove_PreciousType[570612] = {4200007}
	tDoubleStove_PreciousType[570613] = {4200008}
	tDoubleStove_PreciousType[570614] = {4200009}
	tDoubleStove_PreciousType[570615] = {4200010}
	tDoubleStove_PreciousType[570616] = {4200011}
	tDoubleStove_PreciousType[570617] = {4200012}
	tDoubleStove_PreciousType[570618] = {4200013}
	tDoubleStove_PreciousType[570619] = {4200014}
	tDoubleStove_PreciousType[570620] = {4200015}
	tDoubleStove_PreciousType[570621] = {4200016}
	tDoubleStove_PreciousType[570622] = {4200017}
	tDoubleStove_PreciousType[570623] = {4200018}
	tDoubleStove_PreciousType[570625] = {4200002,4200003}
	tDoubleStove_PreciousType[570626] = {4200003,4200004}
	tDoubleStove_PreciousType[570627] = {4200004,4200005}
	tDoubleStove_PreciousType[570628] = {4200005,4200006}
	tDoubleStove_PreciousType[570629] = {4200006,4200007}
	tDoubleStove_PreciousType[570630] = {4200007,4200008}
	tDoubleStove_PreciousType[570631] = {4200008,4200009}
	tDoubleStove_PreciousType[570632] = {4200009,4200010}
	tDoubleStove_PreciousType[570633] = {4200010,4200011}
	tDoubleStove_PreciousType[570634] = {4200011,4200012}

----------------------------------逻辑部分---------------------------------------------
-- 返回投注正确给玩家的发奖Id,和是否公告
function DoubleStove_GetUserActionIndex(nItemId)
	local tTab,flag
	if nItemId == 4200012 then
		flag,tTab = Probabil_RandomAward(tDoubleStove_Random,2)
	else
		flag,tTab = Probabil_RandomAward(tDoubleStove_Random,1)
	end
	local nActionIndex = tTab[1]["tAward"][1]["Index"]
	local nBroadcast = 0
	if nActionIndex >= 4 then
		nBroadcast = 1
	end
	return nActionIndex,nBroadcast
	-- return tDoubleStove_WinAction[nItemId][nActionIndex],nBroadcast
end

-- 确认炼丹 nIndex(1为阴炉，2阳炉)
function DoubleStove_SelectStove(nItemId,nIndex)
	local nNpcId = Get_NpcId()
	if Sys_ChkDayTime(tDoubleStove_Time["DayNoTime"]) then
		Sys_MsgBox(tDoubleStove_Text["Smelting"])
		return
	end
	--判断物品存在
	local sItemName = Get_ItemtypeName(nItemId)
	if not Item_ChkItem(nItemId) then
		tNpcGossip[nNpcId]["Text141"] = string.format(tDoubleStove_Text[nNpcId]["Text141"],sItemName)
		LinkNpcGossipFunc_New(nNpcId,"1-4")
		return
	end
	local nSec = tonumber(os.date("%S"))%20
	if nSec == 0 or nSec > 17 then
		Sys_MsgBox(tDoubleStove_Text["Smelting"])
		return
	end
	local nUserId = Get_UserId()
	local nTaskId = tDoubleStove_Cont["TaskId"]
	local nServerId = Get_UserServerId(nUserId)
	local BenUserId = nUserId
	
	if Task_ChkTaskDetail(nTaskId,nUserId) then
		local nDoubleStove_Data1 = Get_TaskDetailData1(nTaskId,nUserId)
		
		if nDoubleStove_Data1 > 0 then
			BenUserId = nDoubleStove_Data1
		end
	end

	if tDoubleStove_Stove[nIndex][nServerId] == nil then
		tDoubleStove_Stove[nIndex][nServerId] = {}
	end
	
	if tDoubleStove_Stove[3-nIndex][nServerId] == nil then
		tDoubleStove_Stove[3-nIndex][nServerId] = {}
	end
	
	if tDoubleStove_Stove[nIndex][nServerId][BenUserId] ~= nil or tDoubleStove_Stove[3-nIndex][nServerId][BenUserId] ~= nil then
		Sys_MsgBox(tDoubleStove_Text["Smelted"])
		return
	end
	
	--判断是否跨服
	if not User_IsCrossByGSID(nServerId,BenUserId) then
		if RewardTemplate_UseItemAndMsg(tDoubleStove_Delete[nItemId]) then
			tDoubleStove_Stove[nIndex][nServerId][BenUserId] = tDoubleStove_Stove[nIndex][nServerId][BenUserId] or {}
			tDoubleStove_Stove[nIndex][nServerId][BenUserId]["UserName"] = Get_UserName()
			tDoubleStove_Stove[nIndex][nServerId][BenUserId]["ItemId"] = nItemId
			tDoubleStove_Stove[nIndex][nServerId][BenUserId]["ServerId"] = nServerId
			tDoubleStove_Stove[nIndex][nServerId][BenUserId]["BenUserId"] = BenUserId
			
			User_EffectAdd("self","angelwing",BenUserId)
			local sNpcName = Get_NpcName(nNpcId)
			Sys_MsgBox(string.format((tDoubleStove_Text["SuccessPut"]),sNpcName,sItemName))
			-- LinkNpcGossipFunc_New(nNpcId,"1-1")
			-- 十八变
			EighteenChanges_ParticipateDoubleFurnace(nItemId,BenUserId,nServerId)
		end
		
		return
	end
	
	--记录选择的炉子
	if tDoubleStove_StoveIndex[nServerId] == nil then
		tDoubleStove_StoveIndex[nServerId] = {}
	end
	tDoubleStove_StoveIndex[nServerId][BenUserId] = nIndex
	
	local nDelItemId = tDoubleStove_Delete[nItemId]["DeleteItem"][1]["Id"]
	
	if Item_DelAsynOSItem(nDelItemId,0,1,tDoubleStove_Cont["Serial"],353,BenUserId,nServerId) then
		
	end
end

-- 邮件发奖
function DoubleStove_SendMail(nUserId,nItemId,nActionIndex,nDoubleStove_Random,tSender,tContent,sTitle,nServerid)
	local sItemName = Get_ItemtypeName(nItemId)
	local nActionId = tDoubleStove_WinAction[nItemId][nActionIndex]
	local sContent = string.format(tContent["Win"],sItemName,tDoubleStove_Text["Action"][nActionId])
	Sys_SendMail(nUserId,0,0,nActionId,0,30,tSender[nDoubleStove_Random],sTitle,sContent,nServerid)

	-- 打上贵重物品的log
	for i,v in pairs(tDoubleStove_PreciousType[nActionId]) do
		Sys_IncNosuchStatisticCount(353,v,1,nUserId)
	end
end

-- 开炉 30秒1次 0-27投丹，28-29等待开奖
function DoubleStove_OpenStove(nSec)
	if Sys_ChkDayTime(tDoubleStove_Time["DayNoTime"]) then
		return
	end
	nSec = nSec%20
	DoubleStove_MoveTrap(nSec)
	if (nSec == 18 or nSec == 19) then
		if tDoubleStove_StoveFlag == 0 then
			nDoubleStove_Random = math.random(1,2)
			tDoubleStove_StoveWin = CommonFunc_Copy(tDoubleStove_Stove[nDoubleStove_Random])
			tDoubleStove_StoveLose = CommonFunc_Copy(tDoubleStove_Stove[3-nDoubleStove_Random])
			tDoubleStove_Stove[1] = {}
			tDoubleStove_Stove[2] = {}
			tDoubleStove_StoveFlag = 1
		end
	else
		if tDoubleStove_StoveFlag == 0 then
			return
		end
		DoubleStove_StoveEffect(nDoubleStove_Random)
		table.insert(tDoubleStove_NewSuccess,1,nDoubleStove_Random)
		nDoubleStove_SuccessNum = nDoubleStove_SuccessNum+1
		if tDoubleStove_NewSuccess[21] ~= nil then
			tDoubleStove_NewSuccess[21] = nil
		end
		-- 成功的炉子
		local nNpcId = tDoubleStove_Npc[nDoubleStove_Random]
		local nNpcMapId,nNpcPosX,nNpcPosY = NpcPosition_Get(nNpcId)
		-- Map_Effect(nNpcMapId,nNpcPosX,nNpcPosY,"npc_liandanlu_1")
		local sEffect = tDoubleStove_effect[nNpcId]
		Map_Effect(nNpcMapId,nNpcPosX,nNpcPosY,sEffect)
		Map_Effect(nNpcMapId,nNpcPosX,nNpcPosY,"glebesword")
		local tSender = tDoubleStove_Text["Sender"]
		local sTitle = tDoubleStove_Text["Title"]
		local tContent = tDoubleStove_Text["Content"]
		
		if User_AddNosuchDoubleStoveHisData(nNpcMapId,nNpcId) then
		end
		
		
		-- 成功炉子
		for a,b in pairs(tDoubleStove_StoveWin) do
			local nServerId = a
			for k,v in pairs(tDoubleStove_StoveWin[nServerId]) do
				local nUserId = k
				local nItemId = tDoubleStove_StoveWin[nServerId][nUserId]["ItemId"]
				local nActionIndex,nBroadcast = DoubleStove_GetUserActionIndex(nItemId)
				local sItemName = Get_ItemtypeName(nItemId)
				
				-- local nServerId = v["ServerId"]
				local nBenUserId = v["BenUserId"]
				local nOSUserId = GetOSIDByGSUser(nServerId,nBenUserId)
				
				--判断是否跨服
				if not User_IsCrossByGSID(nServerId,nBenUserId) then
					-- nServerId = 0
					nBenUserId = nUserId
					nOSUserId = nBenUserId
				end
				
				-- -- 十八变
				-- EighteenChanges_DoubleFurnaceSuccess(nItemId,nBenUserId,nServerId)
				
				-- 判断玩家是否在线
				if not User_IsUserOnline(nOSUserId) then
					DoubleStove_SendMail(nBenUserId,nItemId,nActionIndex,nDoubleStove_Random,tSender,tContent,sTitle,nServerId)
				elseif User_IsUserToCross(nOSUserId) then
					DoubleStove_SendMail(nBenUserId,nItemId,nActionIndex,nDoubleStove_Random,tSender,tContent,sTitle,nServerId)
				else
					local sUserName = Get_UserName(nOSUserId)
					if sUserName == tDoubleStove_StoveWin[nServerId][nBenUserId]["UserName"] then
						local nSpace = RewardTemplate_GetRewardSpace(tDoubleStove_WinReward[nItemId][nActionIndex],nBenUserId)
						if not User_CheckLeftSpace(nSpace,nOSUserId) then
							DoubleStove_SendMail(nBenUserId,nItemId,nActionIndex,nDoubleStove_Random,tSender,tContent,sTitle,nServerId)
						else
							--判断是否跨服
							if not User_IsCrossByGSID(nServerId,nBenUserId) then
								RewardTemplate_UseItemAndMsg(tDoubleStove_WinReward[nItemId][nActionIndex],nBenUserId)
							else
								if tDoubleStove_WinReward[nItemId][nActionIndex]["RewardItem"] ~= nil then
									for _,tAward in pairs(tDoubleStove_WinReward[nItemId][nActionIndex]["RewardItem"]) do
										local nAwardItemId = tAward["Id"]
										
										Item_AddAsynOSItem(nAwardItemId,0,1,tDoubleStove_Cont["Serial"],303,nBenUserId,nServerId)
									end
								end
							end
							
							if nActionIndex == 1 then
								local sRewardName = Get_ItemtypeName(tDoubleStove_WinReward[nItemId][nActionIndex]["RewardItem"][1]["Id"])
								Sys_MsgBox(string.format(tDoubleStove_Text["Msg"]["Success2"],sRewardName),nil,nil,nOSUserId)
							else
								local sRewardName = Get_ItemtypeName(tDoubleStove_WinReward[nItemId][nActionIndex]["RewardItem"][1]["Id"])
								Sys_MsgBox(string.format(tDoubleStove_Text["Msg"]["Success1"],sRewardName),nil,nil,nOSUserId)
								if tDoubleStove_WinReward[nItemId][nActionIndex]["RewardItem"][1]["Id"] >= 4200014 then
									local sLeft = string.format(tDoubleStove_Text["Lucky"],sItemName,sRewardName)
									local sLast = sUserName.."\n"
									local sText = Sys_CenterAline(sLeft,16,sLast,37)
									table.insert(tDoubleStove_NewLucky,1,sText)
									if tDoubleStove_NewLucky[11] ~= nil then
										tDoubleStove_NewLucky[11] = nil
									end
								end
							end
						end
					end
				end
				
				local UpLev = 0
				
				for i = 1,2 do 
					if tDoubleStove_WinReward[nItemId][nActionIndex]["RewardItem"][i] ~= nil then
						UpLev = tDoubleStove_WinReward[nItemId][nActionIndex]["RewardItem"][i]["Id"] - nItemId + UpLev
					end
				end
				
				
				if tDoubleStove_WinReward[nItemId][nActionIndex]["RewardItem"][2] ~= nil then
					UpLev = 0
				end
				
				
				local nRewardItemId = 0
				if tDoubleStove_WinReward[nItemId][nActionIndex]["RewardItem"][2] == nil then
					nRewardItemId = tDoubleStove_WinReward[nItemId][nActionIndex]["RewardItem"][1]["Id"]
				end
				
				--成功冶炼阶段
				-- if UpLev >= 2 then
					-- User_AddProcessTaskSchedule(1045,0,1,nOSUserId)
				-- else
					-- User_AddProcessTaskSchedule(1044,0,1,nOSUserId)
				-- end
				--冶炼提升总阶数
				-- if UpLev > 0 then
					-- User_AddProcessTaskSchedule(1046,0,1,nOSUserId)
				-- end
				--累计冶炼次数
				-- User_AddProcessTaskSchedule(1043,0,1,nOSUserId)
				
				-- -- 十八变
				EighteenChanges_DoubleFurnaceSuccess(nRewardItemId,nBenUserId,nServerId)
				
				if UpLev >= 3 then
					local sFun = "FF03FA01 </F>NpcPosition_PathFind</N>23735"
					local sText1 = string.format(tDragonSoulConnectNpc_Text["STR_Dragon_Soul"],GetServerName(nServerId),v["UserName"],Get_ItemtypeName(nItemId),Get_ItemtypeName(nRewardItemId),sFun)
					if nItemId >= 4200003 then
						Sys_DragonSoulUpLevToAllServer(sText1,nil,1)
					elseif nItemId >= 4200002 then
					if nRewardItemId >= 4200004 then
							Sys_DragonSoulUpLevToAllServer(sText1,nil,1)
						else
							Sys_DragonSoulUpLevToAllServer(sText1,nil,0)
						end
						
						
					end
				elseif UpLev > 0 then
					local sFun = "FF03FA01 </F>NpcPosition_PathFind</N>23735"
					local sText1 = string.format(tDragonSoulConnectNpc_Text["STR_Dragon_Soul"],GetServerName(nServerId),v["UserName"],Get_ItemtypeName(nItemId),Get_ItemtypeName(nRewardItemId),sFun)
				if nRewardItemId >= 4200004 then
						Sys_DragonSoulUpLevToAllServer(sText1,nil,1)
				elseif nRewardItemId >= 4200003 then
						Sys_DragonSoulUpLevToAllServer(sText1,nil,0)
					end
					
				end
				-- 公告
				if nBroadcast == 1 then
					local nActionId = tDoubleStove_WinAction[nItemId][nActionIndex]
					local sBroadcast
					if SpecialServer_ChkNoGiftServer() then
						sBroadcast = tDoubleStove_Text["Broadcast"]["NoGift"]
					else
						sBroadcast = tDoubleStove_Text["Broadcast"]["Normal"]
					end
					Sys_SystemBroadcast(string.format(sBroadcast,v["UserName"],sItemName,tDoubleStove_Text["Action"][nActionId]))
				end
				
				if User_AddNosuchDoubleStoveSortData(nOSUserId,nNpcMapId,nRewardItemId,UpLev) then
				end
			end
		end

		-- 失败炉子
		for a,b in pairs(tDoubleStove_StoveLose) do
			local nServerId = a
			for k,v in pairs(tDoubleStove_StoveLose[nServerId]) do
				local nUserId = k
				local nItemId = tDoubleStove_StoveLose[nServerId][nUserId]["ItemId"]
				local sItemName = Get_ItemtypeName(nItemId)
				-- local nServerId = v["ServerId"]
				local nBenUserId = v["BenUserId"]
				local nOSUserId = GetOSIDByGSUser(nServerId,nBenUserId)
				
				--判断是否跨服
				if not User_IsCrossByGSID(nServerId,nBenUserId) then
					-- nServerId = 0
					nBenUserId = nUserId
					nOSUserId = nBenUserId
				end
				
				-- 十八变
				EighteenChanges_DoubleFurnaceFail(nItemId,nBenUserId,nServerId)
				
				-- 判断玩家是否在线
				if not User_IsUserOnline(nOSUserId) then
					Sys_SendMail(nBenUserId,0,0,0,0,30,tSender[3-nDoubleStove_Random],sTitle,string.format(tContent["Lose"],sItemName), nServerId)
				elseif User_IsUserToCross(nOSUserId) then
					Sys_SendMail(nBenUserId,0,0,0,0,30,tSender[3-nDoubleStove_Random],sTitle,string.format(tContent["Lose"],sItemName), nServerId)
				else
					local sUserName = Get_UserName(nOSUserId)
					if sUserName == tDoubleStove_StoveLose[nServerId][nBenUserId]["UserName"] then
						local nAwardItemId = tDoubleStove_LoseReward[nItemId]["RewardItem"][1]["Id"]
						local nAwardNum = tonumber(string.sub(tDoubleStove_LoseReward[nItemId]["RewardItem"][1]["Attr"],3,3))
						local nActionId = tDoubleStove_LoseReward[nItemId]["ActionId"]
						local nSpace = RewardTemplate_GetRewardSpace(tDoubleStove_LoseReward[nItemId],nOSUserId)
						
						--活动时间内不给经验，给转盘
						-- if tDoubleStove_LoseRewardNew[nItemId] ~= nil then
							-- if Sys_ChkFullTime(tActivityTime["SpringFestivalEmoney"]["ActiveTime"]) then
								-- nActionId = tDoubleStove_LoseRewardNew[nItemId]["ActionId"]
							-- end
						-- end
						
						-- if not User_CheckLeftSpace(nSpace,nOSUserId) then
							Sys_SendMail(nBenUserId,0,0,nActionId,0,30,tSender[3-nDoubleStove_Random],sTitle,string.format(tContent["Lose"],sItemName), nServerId)
						-- else
							-- --判断是否跨服
							-- if not User_IsCrossByGSID(nServerId,nBenUserId) then
								-- RewardTemplate_UseItemAndMsg(tDoubleStove_LoseReward[nItemId],nBenUserId)
							-- else
								-- Item_AddAsynOSItem(nAwardItemId,0,nAwardNum,tDoubleStove_Cont["Serial"],303,nBenUserId,nServerId)
							-- end
						-- end
						-- if Get_UserLevel(nUserId) < G_User_MaxLev then
							-- RewardTemplate_UseItemAndMsg(tDoubleStove_LoseReward[nItemId],nUserId)
							
							local nEXPTime = tDoubleStove_LoseReward[nItemId]["ExpTime"]
							Sys_MsgBox(string.format(tDoubleStove_Text["Msg"]["Fail"],nEXPTime),nil,nil,nOSUserId)
						-- end
					end
				end
				--战令积分返利
			-- BattlePassTaskTest_ScoreAdd(3,nItemId,nOSUserId)
				
			end
			
			--累计冶炼次数
			-- User_AddProcessTaskSchedule(1043,0,1,nOSUserId)
			
		end
		tDoubleStove_StoveFlag = 0
	end
end

-- 打开商店
function DoubleStove_OpenShop()
	local nNpcId = Get_NpcId()
	if not Sys_ChkFullTime(tDoubleStove_Time["ActTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end
	User_OpenDialog()
end

-- 独立玩家的对白
function DoubleStove_LinkUserOption()
	local nUserId = Get_UserId()
	local nNpcId = Get_NpcId()
	local sLink = nUserId.."-1"
	if Item_ChkMulItem(4200003,4200012,1) then
		tNpcGossip[nNpcId]["Text2-1"] = {211}
	else
		tNpcGossip[nNpcId]["Text2-1"] = {212}
	end
	tNpcGossip[nNpcId]["Text"..sLink] = tNpcGossip[nNpcId]["Text2-1"]
	tNpcGossip[nNpcId]["tOption"..sLink] = tNpcGossip[nNpcId]["tOption2-1"]
	LinkNpcGossipFunc_New(nNpcId,sLink)
end

-- 是否屏蔽二次确认
function DoubleStove_JudgeShiledSec()
	-- local nEventType = tDoubleStove_Stc["EventType"]
	-- local nDataType = tDoubleStove_Stc["DataType"]
	-- local nStc = Get_UserStatisticValue(nEventType,nDataType)
	-- if nStc == 0 then
		-- return false
	-- else
		-- return true
	-- end
	
	local nUserId = Get_UserId()
	local nTaskId = tDoubleStove_Cont["TaskId"]
	
	if not Task_ChkTaskDetail(nTaskId,nUserId) then
		return false
	end
	
	if Get_TaskDetailData2(nTaskId,nUserId) > 0 then
		return true
	else
		return false
	end
end

-- 屏蔽二次确认
function DoubleStove_ShiledSec()
	-- local nEventType = tDoubleStove_Stc["EventType"]
	-- local nDataType = tDoubleStove_Stc["DataType"]
	-- Task_SetStatistic(nEventType,nDataType,1,1)
	
	local nUserId = Get_UserId()
	local nTaskId = tDoubleStove_Cont["TaskId"]
	
	if not Task_ChkTaskDetail(nTaskId,nUserId) then
		return
	end
	
	Task_SetTaskDetailData2(nTaskId,1,nUserId)
	
	local nNpcId = Get_NpcId()
	LinkNpcGossipFunc_New(nNpcId,"1-1")
end

-- 屏蔽二次确认直接炼丹
function DoubleStove_SelectStoveShiledSec(nItemId,nIndex,sLink)
	local nNpcId = Get_NpcId()
	--判断物品存在
	local sItemName = Get_ItemtypeName(nItemId)
	if not Item_ChkItem(nItemId) then
		tNpcGossip[nNpcId]["Text141"] = string.format(tDoubleStove_Text[nNpcId]["Text141"],sItemName)
		LinkNpcGossipFunc_New(nNpcId,"1-4")
		return
	end
	if DoubleStove_JudgeShiledSec() then
		DoubleStove_SelectStove(nItemId,nIndex)
	else
		local nNpcId = Get_NpcId()
		LinkNpcGossipFunc_New(nNpcId,sLink)
	end
end

function DoubleStove_Login()
	-- local nEventType = tDoubleStove_Stc["EventType"]
	-- local nDataType = tDoubleStove_Stc["DataType"]
	-- Task_SetStatistic(nEventType,nDataType,0,1)
	
	local nUserId = Get_UserId()
	local nTaskId = tDoubleStove_Cont["TaskId"]
	
	if not Task_ChkTaskDetail(nTaskId,nUserId) then
		return
	end
	
	Task_SetTaskDetailData2(nTaskId,0,nUserId)
end

-- 熔炼之星榜单（临时表）
function DoubleStove_ShowNewLucky()
	local nNpcId = Get_NpcId()
	for k,v in pairs(tDoubleStove_NewLucky) do
		--名字处理
		v = string.gsub(v, "<", " ")
		v = string.gsub(v, ">", " ")
		tNpcGossip[nNpcId]["Text1".. 13+k] = v
	end
	if tNpcGossip[nNpcId]["Text114"] == tDoubleStove_Text[nNpcId]["Text114"] then
		tNpcGossip[nNpcId]["Text114"] = tDoubleStove_Text["NoLucky"]
	end
end

-- 最近成功的炉子（临时表）
function DoubleStove_ShowNewSuccess()
	local nNpcId = Get_NpcId()
	for k=1,10 do
		if tDoubleStove_NewSuccess[k] ~= nil then
			local sSuccessStove = tDoubleStove_Text["StoveColor"][tDoubleStove_NewSuccess[k]]
			local sSuccessNum = string.format(tDoubleStove_Text[nNpcId]["Text2".. 13+k],nDoubleStove_SuccessNum-k)
			local sText = Sys_CenterAline(sSuccessStove,16,sSuccessNum,37)
			tNpcGossip[nNpcId]["Text2".. 13+k] = sText
		elseif k == 1 then
			tNpcGossip[nNpcId]["Text2".. 13+k] = tDoubleStove_Text["NoLucky"]
		else
			tNpcGossip[nNpcId]["Text2".. 13+k] = ""
		end
	end
	for k=11,20 do
		if tDoubleStove_NewSuccess[k] ~= nil then
			local sSuccessStove = tDoubleStove_Text["StoveColor"][tDoubleStove_NewSuccess[k]]
			local sSuccessNum = string.format(tDoubleStove_Text[nNpcId]["Text3".. 3+k],nDoubleStove_SuccessNum-k)
			local sText = Sys_CenterAline(sSuccessStove,16,sSuccessNum,37)
			tNpcGossip[nNpcId]["Text3".. 3+k] = sText
		else
			tNpcGossip[nNpcId]["Text3".. 3+k] = ""
		end
	end
end

-- 点击双鼎
function DoubleStove_Main()
	local nNpcId = Get_NpcId()
	if Sys_ChkDayTime(tDoubleStove_Time["DayNoTime"]) then
		Sys_MsgBox(tDoubleStove_Text["Smelting"])
		return
	end
	local nSec = tonumber(os.date("%S"))%20
	if nSec == 0 or nSec > 17 then
		Sys_MsgBox(tDoubleStove_Text["Smelting"])
		return
	end
	local nUserId = Get_UserId()
	local nTaskId = tDoubleStove_Cont["TaskId"]
	local nServerId = Get_UserServerId(nUserId)
	local BenUserId = nUserId
	
	if Task_ChkTaskDetail(nTaskId,nUserId) then
		local nDoubleStove_Data1 = Get_TaskDetailData1(nTaskId,nUserId)
		if nDoubleStove_Data1 > 0 then
			BenUserId = nDoubleStove_Data1
		end
	end

	if tDoubleStove_Stove[1][nServerId] == nil then
		tDoubleStove_Stove[1][nServerId] = {}
	end
	
	if tDoubleStove_Stove[2][nServerId] == nil then
		tDoubleStove_Stove[2][nServerId] = {}
	end
	
	if tDoubleStove_Stove[1][nServerId][BenUserId] ~= nil then
		local sItemName = Get_ItemtypeName(tDoubleStove_Stove[1][nServerId][BenUserId]["ItemId"])
		Sys_MsgBox(string.format(tDoubleStove_Text["Smelted"],tDoubleStove_Text["Sender"][1],sItemName))
		return
	end
	if tDoubleStove_Stove[2][nServerId][BenUserId] ~= nil then
		local sItemName = Get_ItemtypeName(tDoubleStove_Stove[2][nServerId][BenUserId]["ItemId"])
		Sys_MsgBox(string.format(tDoubleStove_Text["Smelted"],tDoubleStove_Text["Sender"][2],sItemName))
		return
	end
	LinkNpcGossipFunc_New(nNpcId,"1-1")
end

-- 传送进双鼎
function DoubleStove_Trans()
	local nMapId = tDoubleStove_Map["MapId"]
	local nPosX = tDoubleStove_Map["PosX"]
	local nPosY = tDoubleStove_Map["PosY"]
	local nUserId = Get_UserId()
	-- User_UserRandBoundTrans(nMapId,nPosX,nPosY,2,2,1,nUserId)
	
	local nTaskId = tDoubleStove_Cont["TaskId"]
	
	local nDoubleStove_CityId = tDoubleStove_BackCity["Normal"]["MapId"]
	local sDoubleStove_Text = tDragonSoulNpc_Text["105"]["NotInTwinCity"]
	
	if SpecialServer_ChkNoGiftServer() then
		nDoubleStove_CityId = tDoubleStove_BackCity["NoGift"]["MapId"]
		sDoubleStove_Text = tDragonSoulNpc_Text["105"]["NotInMarket"]
	end
	
	-- 不在双龙城，激情服不在市场
	local nDoubleStove_MapId = Get_UserMapId(nUserId)
	if nDoubleStove_MapId ~= nDoubleStove_CityId then
		Sys_MsgBox(sDoubleStove_Text)
		return
	end
	
	if not Task_ChkTaskDetail(nTaskId,nUserId) then
		if not Task_AddTaskDetail(nTaskId,nil,nUserId) then
			Sys_MsgBox(tDoubleStove_Text["Msg"]["AddTaskFail"],nil,nil,nUserId)
			return
		end
	end
	
	-- local nServerId = Get_FrontierServerID()
	local nServerId = tDoubleStove_Cont["ServerId"]
	local nConfigMapFlag = tDoubleStove_Cont["MapFlag"]
	local nType = tDoubleStove_Cont["ServerType"]
	
	if Sys_EnterServer(nServerId,nType,nUserId,nConfigMapFlag) then
		if Task_ChkTaskDetail(nTaskId,nUserId) then
			Task_SetTaskDetailData1(nTaskId,nUserId,nUserId)
		end
	else
		User_UserRandBoundTrans(nMapId,nPosX,nPosY,2,2,1,nUserId)
	end
	
	Sys_MsgBox(tDoubleStove_Text["IntoMap"])
	
	-- Get_QueryNosuchDoubleStoveData(nUserId)
	
end

-- 传送回双龙城
function DoubleStove_BackCity()
	local nUserId = Get_UserId()
	
	--判断是否跨服
	if User_IsCross(nUserId) then
		if Sys_ExitOS() then
			Sys_MsgBox(tDoubleStove_Text["BackCity"]["Normal"])
		end
	else
		if not SpecialServer_ChkNoGiftServer() then
			local nMapId = tDoubleStove_BackCity["Normal"]["MapId"]
			local nPosX = tDoubleStove_BackCity["Normal"]["PosX"]
			local nPosY = tDoubleStove_BackCity["Normal"]["PosY"]
			-- local nUserId = Get_UserId()
			User_UserRandBoundTrans(nMapId,nPosX,nPosY,5,5,1,nUserId)
			Sys_MsgBox(tDoubleStove_Text["BackCity"]["NoGift"])
		else
			local nMapId = tDoubleStove_BackCity["NoGift"]["MapId"]
			local nPosX = tDoubleStove_BackCity["NoGift"]["PosX"]
			local nPosY = tDoubleStove_BackCity["NoGift"]["PosY"]
			-- local nUserId = Get_UserId()
			User_UserRandBoundTrans(nMapId,nPosX,nPosY,5,5,1,nUserId)
			Sys_MsgBox(tDoubleStove_Text["BackCity"]["NoGift"])
		end
	end
end

-- 播放成功失败光效
function DoubleStove_StoveEffect(nDoubleStove_Random)
	local nNpcId1 = tDoubleStove_Npc[1]
	local nNpcId2 = tDoubleStove_Npc[2]
	local nNpcMapId1,nNpcPosX1,nNpcPosY1 = NpcPosition_Get(nNpcId1)
	local nNpcMapId2,nNpcPosX2,nNpcPosY2 = NpcPosition_Get(nNpcId2)
	local sSuccessEffectName = tDoubleStove_TrapType["ylcg"]
	local sFailEffectName = tDoubleStove_TrapType["ylsb"]
	if nDoubleStove_Random == 1 then
		Map_Effect(nNpcMapId1,nNpcPosX1-10,nNpcPosY1-10,sSuccessEffectName)
		Map_Effect(nNpcMapId2,nNpcPosX2-10,nNpcPosY2-10,sFailEffectName)
	else
		Map_Effect(nNpcMapId1,nNpcPosX1-10,nNpcPosY1-10,sFailEffectName)
		Map_Effect(nNpcMapId2,nNpcPosX2-10,nNpcPosY2-10,sSuccessEffectName)
	end
end

-- 移动地效
function DoubleStove_MoveTrap(nSec)
	-- 准备冶炼中
	if nSec == 0 then
		-- 删除陷阱
		local nTrapType = tDoubleStove_TrapType["zzyl"]["TrapType"]
		local nMapId = tDoubleStove_TrapType["zzyl"]["MapId"]
		local nMapCount = MoveTrap_GetCount(nTrapType,nMapId)
		if nMapCount > 0 then
			Trap_DelMapTrap(nMapId,nTrapType)
		end
		-- 创建陷阱
		local nTrapType = tDoubleStove_TrapType["zbylz"]["TrapType"]
		local nLook = tDoubleStove_TrapType["zbylz"]["Look"]
		local nMapId = tDoubleStove_TrapType["zbylz"]["MapId"]
		local nPosX = tDoubleStove_TrapType["zbylz"]["PosX"]
		local nPosY = tDoubleStove_TrapType["zbylz"]["PosY"]
		local nMapCount = MoveTrap_GetCount(nTrapType,nMapId)
		if nMapCount == 0 then
			Trap_CreateMapTrap(nTrapType,nLook,0,nMapId,nPosX,nPosY,0,0)
		end
	end
	-- 正在冶炼
	if nSec == 18 or nSec == 19 then
		-- 创建陷阱
		local nTrapType = tDoubleStove_TrapType["zzyl"]["TrapType"]
		local nLook = tDoubleStove_TrapType["zzyl"]["Look"]
		local nMapId = tDoubleStove_TrapType["zzyl"]["MapId"]
		local nPosX = tDoubleStove_TrapType["zzyl"]["PosX"]
		local nPosY = tDoubleStove_TrapType["zzyl"]["PosY"]
		local nMapCount = MoveTrap_GetCount(nTrapType,nMapId)
		if nMapCount == 0 then
			Trap_CreateMapTrap(nTrapType,nLook,0,nMapId,nPosX,nPosY,0,0)
		end
	end
	-- 倒计时
	if nSec == 13 then
		-- 删除陷阱
		local nTrapType = tDoubleStove_TrapType["zbylz"]["TrapType"]
		local nMapId = tDoubleStove_TrapType["zbylz"]["MapId"]
		local nMapCount = MoveTrap_GetCount(nTrapType,nMapId)
		if nMapCount > 0 then
			Trap_DelMapTrap(nMapId,nTrapType)
		end
		if nDoubleStove_djs == 0 then
			local nMapId = tDoubleStove_TrapType["djs"]["MapId"]
			local nPosX = tDoubleStove_TrapType["djs"]["PosX"]
			local nPosY = tDoubleStove_TrapType["djs"]["PosY"]
			local sEffectName = tDoubleStove_TrapType["djs"]["EffectName"]
			Map_Effect(nMapId,nPosX,nPosY,sEffectName)
			nDoubleStove_djs = 1
		end
	else
		nDoubleStove_djs = 0
	end
end

function DoubleStove_CrossDelItem(nServerId,nUserId,nItemId,nMonopoly,nNum,nSerial,nRet)
	local sItemName = Get_ItemtypeName(nItemId)
	
	local nOSUserId = GetOSIDByGSUser(nServerId,nUserId)
	
	--不成功
	if nRet ~= 1 then
		Sys_MsgBox(string.format(tDoubleStove_Text[23580]["Text141"], sItemName),nil,nil,nOSUserId)
		return
	end
	
	--功能编号不匹配
	if nSerial ~= tDoubleStove_Cont["Serial"] then
		return
	end
	
	-- 十八变
	EighteenChanges_ParticipateDoubleFurnace(nItemId,nUserId,nServerId)
	
	if tDoubleStove_StoveIndex[nServerId] == nil or tDoubleStove_StoveIndex[nServerId][nUserId] == nil then
		return
	end
	
	local nIndex = tDoubleStove_StoveIndex[nServerId][nUserId]
	
	if tDoubleStove_Stove[nIndex][nServerId] == nil then
		tDoubleStove_Stove[nIndex][nServerId] = {}
	end
	
	
	--记录炉子内灵珠信息
	tDoubleStove_Stove[nIndex][nServerId][nUserId] = tDoubleStove_Stove[nIndex][nServerId][nUserId] or {}
	tDoubleStove_Stove[nIndex][nServerId][nUserId]["UserName"] = Get_UserName(nOSUserId)
	tDoubleStove_Stove[nIndex][nServerId][nUserId]["ItemId"] = nItemId
	tDoubleStove_Stove[nIndex][nServerId][nUserId]["ServerId"] = nServerId
	tDoubleStove_Stove[nIndex][nServerId][nUserId]["BenUserId"] = nUserId
	
	User_EffectAdd("self","angelwing",nOSUserId)
	local sNpcName = tDoubleStove_Text["Sender"][nIndex]
	
	Sys_MsgBox(string.format((tDoubleStove_Text["SuccessPut"]),sNpcName,sItemName), nil, nil, nOSUserId)
	
	Sys_SaveActionRewardLog(string.format(tDoubleStove_Log["Del"], nItemId, nNum),nOSUserId)
end

function DoubleStove_CrossAddItem(nServerId,nUserId,nItemId,nMonopoly,nNum,nSerial,nRet)
	local sItemName = Get_ItemtypeName(nItemId)
	
	--不成功
	if nRet ~= 1 then
		return
	end
	
	--功能编号不匹配
	if nSerial ~= tDoubleStove_Cont["Serial"] then
		return
	end
	
	local nOSUserId = GetOSIDByGSUser(nServerId,nUserId)
	Sys_SaveActionRewardLog(string.format(tDoubleStove_Log["Get"], nItemId, nNum),nOSUserId)
end

----------------------------------NPC部分---------------------------------------------
tNpcFace[1460] = 2093
tNpcFace[1461] = 2093
-- 玄阴八卦炉
tNpcGossip[23580]= tNpcGossip[23580] or DefaultNpc:new{}
tNpcGossip[23580]["OptionHidden"] = 1
tNpcGossip[23580]["DialogueText"] = tDoubleStove_Text[23580]
-- 可炼丹
-- tNpcGossip[23580]["Text1-1"] = {111,112,611,612,613,614,615,616,617,618,619,620,621,622,623,112,118,119}
tNpcGossip[23580]["Text1-1"] = {111,112}
tNpcGossip[23580]["tOption1-1"] = {221,220,219,218,217,216,215,214,213,212,113,112}
tNpcGossip[23580]["OptionFunc111"] = "DoubleStove_LinkUserOption"
tNpcGossip[23580]["OptionFunc113"] = "DragonSoulNpc_Buy"
tNpcGossip[23580]["OptionPoint112"] = "7-1"
tNpcGossip[23580]["OptionChkFunc113"] = function ()
	return not DragonSoulNpc_ChkAnima(0,3,1)
end
-- 不可炼丹
tNpcGossip[23580]["Text1-2"] = {111,112,121,112,122}
tNpcGossip[23580]["tOption1-2"] = {121}
-- 活动后
tNpcGossip[23580]["Text1-3"] = {131}
tNpcGossip[23580]["tOption1-3"] = {131}
-- 没有相应灵珠
tNpcGossip[23580]["Text1-4"] = {141}
tNpcGossip[23580]["tOption1-4"] = {141}
-- 重炼灵珠
-- 不可炼丹
-- tNpcGossip[23580]["Text2-1"] = {211,212}
-- tNpcGossip[23580]["tOption2-1"] = {211,212,213,214,215,216,217,218,219,220,221,222}
-- tNpcGossip[23580]["OptionFunc222"] = "DoubleStove_OpenShop"
-- tNpcGossip[23580]["OptionChkFunc222"] = function ()
	-- return not Item_ChkMulItem(4200002,4200012,1)
-- end
-- for i=211,221 do
	-- local nItemId = 4200002+i-211
	-- tNpcGossip[23580]["OptionChkFunc"..i] = function()
		-- return Item_ChkItem(nItemId)
	-- end
-- end
tNpcGossip[23580]["OptionFunc211"] = "DoubleStove_SelectStoveShiledSec</N>4200002</N>1</S>3-1"
tNpcGossip[23580]["OptionFunc212"] = "DoubleStove_SelectStoveShiledSec</N>4200003</N>1</S>3-2"
tNpcGossip[23580]["OptionFunc213"] = "DoubleStove_SelectStoveShiledSec</N>4200004</N>1</S>3-3"
tNpcGossip[23580]["OptionFunc214"] = "DoubleStove_SelectStoveShiledSec</N>4200005</N>1</S>3-4"
tNpcGossip[23580]["OptionFunc215"] = "DoubleStove_SelectStoveShiledSec</N>4200006</N>1</S>3-5"
tNpcGossip[23580]["OptionFunc216"] = "DoubleStove_SelectStoveShiledSec</N>4200007</N>1</S>3-6"
tNpcGossip[23580]["OptionFunc217"] = "DoubleStove_SelectStoveShiledSec</N>4200008</N>1</S>3-7"
tNpcGossip[23580]["OptionFunc218"] = "DoubleStove_SelectStoveShiledSec</N>4200009</N>1</S>3-8"
tNpcGossip[23580]["OptionFunc219"] = "DoubleStove_SelectStoveShiledSec</N>4200010</N>1</S>3-9"
tNpcGossip[23580]["OptionFunc220"] = "DoubleStove_SelectStoveShiledSec</N>4200011</N>1</S>4-1"
tNpcGossip[23580]["OptionFunc221"] = "DoubleStove_SelectStoveShiledSec</N>4200012</N>1</S>4-2"
tNpcGossip[23580]["OptionChkFunc212"] = function ()
	return DragonSoulNpc_ChkAnima(4200003,3)
end
tNpcGossip[23580]["OptionChkFunc213"] = function ()
	return DragonSoulNpc_ChkAnima(4200004,3)
end
tNpcGossip[23580]["OptionChkFunc214"] = function ()
	return DragonSoulNpc_ChkAnima(4200005,3)
end
tNpcGossip[23580]["OptionChkFunc215"] = function ()
	return DragonSoulNpc_ChkAnima(4200006,3)
end
tNpcGossip[23580]["OptionChkFunc216"] = function ()
	return DragonSoulNpc_ChkAnima(4200007,3)
end
tNpcGossip[23580]["OptionChkFunc217"] = function ()
	return DragonSoulNpc_ChkAnima(4200008,3)
end
tNpcGossip[23580]["OptionChkFunc218"] = function ()
	return DragonSoulNpc_ChkAnima(4200009,3)
end
tNpcGossip[23580]["OptionChkFunc219"] = function ()
	return DragonSoulNpc_ChkAnima(4200010,3)
end
tNpcGossip[23580]["OptionChkFunc220"] = function ()
	return DragonSoulNpc_ChkAnima(4200011,3)
end
tNpcGossip[23580]["OptionChkFunc221"] = function ()
	return DragonSoulNpc_ChkAnima(4200012,3)
end
-- 炼丹
tNpcGossip[23580]["Text3-1"] = {311}
tNpcGossip[23580]["tOption3-1"] = {311,312}
tNpcGossip[23580]["OptionFunc311"] = "DoubleStove_SelectStove</N>4200002</N>1"
tNpcGossip[23580]["OptionPoint312"] = "5-1"
tNpcGossip[23580]["OptionChkFunc312"] = function ()
	if DoubleStove_JudgeShiledSec() then
		return false
	else
		return true
	end
end
tNpcGossip[23580]["Text3-2"] = {321}
tNpcGossip[23580]["tOption3-2"] = {321,312}
tNpcGossip[23580]["OptionFunc321"] = "DoubleStove_SelectStove</N>4200003</N>1"
tNpcGossip[23580]["Text3-3"] = {331}
tNpcGossip[23580]["tOption3-3"] = {331,312}
tNpcGossip[23580]["OptionFunc331"] = "DoubleStove_SelectStove</N>4200004</N>1"
tNpcGossip[23580]["Text3-4"] = {341}
tNpcGossip[23580]["tOption3-4"] = {341,312}
tNpcGossip[23580]["OptionFunc341"] = "DoubleStove_SelectStove</N>4200005</N>1"
tNpcGossip[23580]["Text3-5"] = {351}
tNpcGossip[23580]["tOption3-5"] = {351,312}
tNpcGossip[23580]["OptionFunc351"] = "DoubleStove_SelectStove</N>4200006</N>1"
tNpcGossip[23580]["Text3-6"] = {361}
tNpcGossip[23580]["tOption3-6"] = {361,312}
tNpcGossip[23580]["OptionFunc361"] = "DoubleStove_SelectStove</N>4200007</N>1"
tNpcGossip[23580]["Text3-7"] = {371}
tNpcGossip[23580]["tOption3-7"] = {371,312}
tNpcGossip[23580]["OptionFunc371"] = "DoubleStove_SelectStove</N>4200008</N>1"
tNpcGossip[23580]["Text3-8"] = {381}
tNpcGossip[23580]["tOption3-8"] = {381,312}
tNpcGossip[23580]["OptionFunc381"] = "DoubleStove_SelectStove</N>4200009</N>1"
tNpcGossip[23580]["Text3-9"] = {391}
tNpcGossip[23580]["tOption3-9"] = {391,312}
tNpcGossip[23580]["OptionFunc391"] = "DoubleStove_SelectStove</N>4200010</N>1"
tNpcGossip[23580]["Text4-1"] = {411}
tNpcGossip[23580]["tOption4-1"] = {411,312}
tNpcGossip[23580]["OptionFunc411"] = "DoubleStove_SelectStove</N>4200011</N>1"
tNpcGossip[23580]["Text4-2"] = {421}
tNpcGossip[23580]["tOption4-2"] = {421,312}
tNpcGossip[23580]["OptionFunc421"] = "DoubleStove_SelectStove</N>4200012</N>1"

-- 屏蔽二次确认
tNpcGossip[23580]["Text5-1"] = {511}
tNpcGossip[23580]["tOption5-1"] = {511,512}
tNpcGossip[23580]["OptionFunc511"] = "DoubleStove_ShiledSec"

-- 详细情况
tNpcGossip[23580]["Text7-1"] = {711,712}
tNpcGossip[23580]["tOption7-1"] = {711,712,713}
tNpcGossip[23580]["OptionPoint711"] = "7-2"
tNpcGossip[23580]["OptionFunc712"] = "User_SendWebPage</S>"..sDoubleStove_LinkWeb
tNpcGossip[23580]["OptionPoint713"] = "1-1"
tNpcGossip[23580]["Text7-2"] = {721}
tNpcGossip[23580]["tOption7-2"] = {721,722}
tNpcGossip[23580]["OptionPoint721"] = "7-1"

-- 混阳八卦炉
tNpcGossip[23581]= tNpcGossip[23581] or DefaultNpc:new{}
tNpcGossip[23581]["OptionHidden"] = 1
tNpcGossip[23581]["DialogueText"] = tDoubleStove_Text[23581]
-- 可炼丹
-- tNpcGossip[23580]["Text1-1"] = {111,112,611,612,613,614,615,616,617,618,619,620,621,622,623,112,118,119}
tNpcGossip[23581]["Text1-1"] = {111,112}
tNpcGossip[23581]["tOption1-1"] = {221,220,219,218,217,216,215,214,213,212,113,112}
tNpcGossip[23581]["OptionFunc111"] = "DoubleStove_LinkUserOption"
tNpcGossip[23581]["OptionFunc113"] = "DragonSoulNpc_Buy"
tNpcGossip[23581]["OptionPoint112"] = "7-1"
tNpcGossip[23581]["OptionChkFunc113"] = function ()
	return not DragonSoulNpc_ChkAnima(0,3,1)
end
-- 不可炼丹
tNpcGossip[23581]["Text1-2"] = {111,112,121,112,122}
tNpcGossip[23581]["tOption1-2"] = {121}
-- 活动后
tNpcGossip[23581]["Text1-3"] = {131}
tNpcGossip[23581]["tOption1-3"] = {131}
-- 没有相应灵珠
tNpcGossip[23581]["Text1-4"] = {141}
tNpcGossip[23581]["tOption1-4"] = {141}
-- 重炼灵珠
tNpcGossip[23581]["OptionFunc211"] = "DoubleStove_SelectStoveShiledSec</N>4200002</N>2</S>3-1"
tNpcGossip[23581]["OptionFunc212"] = "DoubleStove_SelectStoveShiledSec</N>4200003</N>2</S>3-2"
tNpcGossip[23581]["OptionFunc213"] = "DoubleStove_SelectStoveShiledSec</N>4200004</N>2</S>3-3"
tNpcGossip[23581]["OptionFunc214"] = "DoubleStove_SelectStoveShiledSec</N>4200005</N>2</S>3-4"
tNpcGossip[23581]["OptionFunc215"] = "DoubleStove_SelectStoveShiledSec</N>4200006</N>2</S>3-5"
tNpcGossip[23581]["OptionFunc216"] = "DoubleStove_SelectStoveShiledSec</N>4200007</N>2</S>3-6"
tNpcGossip[23581]["OptionFunc217"] = "DoubleStove_SelectStoveShiledSec</N>4200008</N>2</S>3-7"
tNpcGossip[23581]["OptionFunc218"] = "DoubleStove_SelectStoveShiledSec</N>4200009</N>2</S>3-8"
tNpcGossip[23581]["OptionFunc219"] = "DoubleStove_SelectStoveShiledSec</N>4200010</N>2</S>3-9"
tNpcGossip[23581]["OptionFunc220"] = "DoubleStove_SelectStoveShiledSec</N>4200011</N>2</S>4-1"
tNpcGossip[23581]["OptionFunc221"] = "DoubleStove_SelectStoveShiledSec</N>4200012</N>2</S>4-2"
tNpcGossip[23581]["OptionChkFunc212"] = function ()
	return DragonSoulNpc_ChkAnima(4200003,3)
end
tNpcGossip[23581]["OptionChkFunc213"] = function ()
	return DragonSoulNpc_ChkAnima(4200004,3)
end
tNpcGossip[23581]["OptionChkFunc214"] = function ()
	return DragonSoulNpc_ChkAnima(4200005,3)
end
tNpcGossip[23581]["OptionChkFunc215"] = function ()
	return DragonSoulNpc_ChkAnima(4200006,3)
end
tNpcGossip[23581]["OptionChkFunc216"] = function ()
	return DragonSoulNpc_ChkAnima(4200007,3)
end
tNpcGossip[23581]["OptionChkFunc217"] = function ()
	return DragonSoulNpc_ChkAnima(4200008,3)
end
tNpcGossip[23581]["OptionChkFunc218"] = function ()
	return DragonSoulNpc_ChkAnima(4200009,3)
end
tNpcGossip[23581]["OptionChkFunc219"] = function ()
	return DragonSoulNpc_ChkAnima(4200010,3)
end
tNpcGossip[23581]["OptionChkFunc220"] = function ()
	return DragonSoulNpc_ChkAnima(4200011,3)
end
tNpcGossip[23581]["OptionChkFunc221"] = function ()
	return DragonSoulNpc_ChkAnima(4200012,3)
end
-- 炼丹
tNpcGossip[23581]["Text3-1"] = {311}
tNpcGossip[23581]["tOption3-1"] = {311,312}
tNpcGossip[23581]["OptionFunc311"] = "DoubleStove_SelectStove</N>4200002</N>2"
tNpcGossip[23581]["OptionPoint312"] = "5-1"
tNpcGossip[23581]["OptionChkFunc312"] = function ()
	if DoubleStove_JudgeShiledSec() then
		return false
	else
		return true
	end
end
tNpcGossip[23581]["Text3-2"] = {321}
tNpcGossip[23581]["tOption3-2"] = {321,312}
tNpcGossip[23581]["OptionFunc321"] = "DoubleStove_SelectStove</N>4200003</N>2"
tNpcGossip[23581]["Text3-3"] = {331}
tNpcGossip[23581]["tOption3-3"] = {331,312}
tNpcGossip[23581]["OptionFunc331"] = "DoubleStove_SelectStove</N>4200004</N>2"
tNpcGossip[23581]["Text3-4"] = {341}
tNpcGossip[23581]["tOption3-4"] = {341,312}
tNpcGossip[23581]["OptionFunc341"] = "DoubleStove_SelectStove</N>4200005</N>2"
tNpcGossip[23581]["Text3-5"] = {351}
tNpcGossip[23581]["tOption3-5"] = {351,312}
tNpcGossip[23581]["OptionFunc351"] = "DoubleStove_SelectStove</N>4200006</N>2"
tNpcGossip[23581]["Text3-6"] = {361}
tNpcGossip[23581]["tOption3-6"] = {361,312}
tNpcGossip[23581]["OptionFunc361"] = "DoubleStove_SelectStove</N>4200007</N>2"
tNpcGossip[23581]["Text3-7"] = {371}
tNpcGossip[23581]["tOption3-7"] = {371,312}
tNpcGossip[23581]["OptionFunc371"] = "DoubleStove_SelectStove</N>4200008</N>2"
tNpcGossip[23581]["Text3-8"] = {381}
tNpcGossip[23581]["tOption3-8"] = {381,312}
tNpcGossip[23581]["OptionFunc381"] = "DoubleStove_SelectStove</N>4200009</N>2"
tNpcGossip[23581]["Text3-9"] = {391}
tNpcGossip[23581]["tOption3-9"] = {391,312}
tNpcGossip[23581]["OptionFunc391"] = "DoubleStove_SelectStove</N>4200010</N>2"
tNpcGossip[23581]["Text4-1"] = {411}
tNpcGossip[23581]["tOption4-1"] = {411,312}
tNpcGossip[23581]["OptionFunc411"] = "DoubleStove_SelectStove</N>4200011</N>2"
tNpcGossip[23581]["Text4-2"] = {421}
tNpcGossip[23581]["tOption4-2"] = {421,312}
tNpcGossip[23581]["OptionFunc421"] = "DoubleStove_SelectStove</N>4200012</N>2"
-- 屏蔽二次确认
tNpcGossip[23581]["Text5-1"] = {511}
tNpcGossip[23581]["tOption5-1"] = {511,512}
tNpcGossip[23581]["OptionFunc511"] = "DoubleStove_ShiledSec"

-- 详细情况
tNpcGossip[23581]["Text7-1"] = {711,712}
tNpcGossip[23581]["tOption7-1"] = {711,712,713}
tNpcGossip[23581]["OptionPoint711"] = "7-2"
tNpcGossip[23581]["OptionFunc712"] = "User_SendWebPage</S>"..sDoubleStove_LinkWeb
tNpcGossip[23581]["OptionPoint713"] = "1-1"
tNpcGossip[23581]["Text7-2"] = {721}
tNpcGossip[23581]["tOption7-2"] = {721,722}
tNpcGossip[23581]["OptionPoint721"] = "7-1"

-- 熔炼之星
tNpcGossip[23582]= tNpcGossip[23582] or DefaultNpc:new{}
tNpcGossip[23582]["OptionHidden"] = 1
tNpcGossip[23582]["DialogueText"] = tDoubleStove_Text[23582]
tNpcGossip[23582]["Text1-1"] = {111,112,114,115,116,117,118,119,120,121,122,123,112,113}
tNpcGossip[23582]["tOption1-1"] = {111,113}
tNpcGossip[23582]["ChkFunc1-1"]= function()
	DoubleStove_ShowNewLucky()
	return true
end
tNpcGossip[23582]["OptionPoint111"] = "2-1"
tNpcGossip[23582]["OptionPoint112"] = "4-1"
tNpcGossip[23582]["Text2-1"] = {211,212,213,214,215,216,217,218,219,220,221,222,223,212}
tNpcGossip[23582]["tOption2-1"] = {211,212}
tNpcGossip[23582]["ChkFunc2-1"]= function()
	DoubleStove_ShowNewSuccess()
	return true
end
tNpcGossip[23582]["OptionChkFunc211"]= function()
	if tDoubleStove_NewSuccess[11] == nil then
		return false
	else
		return true
	end
end
tNpcGossip[23582]["OptionPoint211"] = "3-1"
tNpcGossip[23582]["Text3-1"] = {311,312,313,314,315,316,317,318,319,320,321,322,323,312}
tNpcGossip[23582]["tOption3-1"] = {311,312}
tNpcGossip[23582]["ChkFunc3-1"]= function()
	DoubleStove_ShowNewSuccess()
	return true
end
tNpcGossip[23582]["OptionPoint311"] = "2-1"
tNpcGossip[23582]["Text4-1"] = {411,412}
tNpcGossip[23582]["tOption4-1"] = {411}
tNpcGossip[23582]["OptionPoint411"] = "1-1"
---------------------------------陷阱部分---------------------------------------------
tTrap[2279] = tTrap[2279] or {}
tTrap[2279]["Function"] = function(nTrapId,nTrapType)
	DoubleStove_BackCity()
end
----------------------上线触发--------------------------------------------------------
-- 上线触发
table.insert(tSystem_PlayLogin_Func,DoubleStove_Login)
---------------------------------时间自检---------------------------------------------
tSystemTime_Each = tSystemTime_Each or {}
table.insert(tSystemTime_Each,DoubleStove_OpenStove)

---------------------------------跨服删除物品---------------------------------------------
tDelAsynOSItemRet["tFunction"] = tDelAsynOSItemRet["tFunction"] or {}
table.insert(tDelAsynOSItemRet["tFunction"],DoubleStove_CrossDelItem)

---------------------------------跨服获得物品---------------------------------------------
tAddAsynOSItemRet["tFunction"] = tAddAsynOSItemRet["tFunction"] or {}
table.insert(tAddAsynOSItemRet["tFunction"],DoubleStove_CrossAddItem)

