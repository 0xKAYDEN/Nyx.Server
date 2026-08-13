------------------------------------------------------------------------------------
--Name：	181201[简体征服][活动脚本]新熔炉活动-双锻造炉
--Creator:	林旭
--Created:	2018/12/01
------------------------------------------------------------------------------------
-- 命名前缀：
-- DoubleStove
-- LogId:
-- 12001361
-- stc掩码说明
-- (187,32) 屏蔽二次确认标志，上线重置
------------------------------------------------------------------------------------


----------------------------------表配置部分--------------------------------------------
-- 跳转网页
local sCardSoul_LinkWeb = "https://co.99.com/guide/event/anima_introduction.shtml"
-- 地效光效
local tCardSoul_TrapType = {}
	-- 准备冶炼中
	tCardSoul_TrapType["zbylz"] = {}
	tCardSoul_TrapType["zbylz"]["TrapType"] = 2317
	tCardSoul_TrapType["zbylz"]["Look"] = 2317
	tCardSoul_TrapType["zbylz"][1] = {}
	tCardSoul_TrapType["zbylz"][1]["MapId"] = 3053
	tCardSoul_TrapType["zbylz"][1]["PosX"] = 182
	tCardSoul_TrapType["zbylz"][1]["PosY"] = 144
	tCardSoul_TrapType["zbylz"][2] = {}
	tCardSoul_TrapType["zbylz"][2]["MapId"] = 1002
	tCardSoul_TrapType["zbylz"][2]["PosX"] = 345
	tCardSoul_TrapType["zbylz"][2]["PosY"] = 471
	-- 正在冶炼
	tCardSoul_TrapType["zzyl"] = {}
	tCardSoul_TrapType["zzyl"]["TrapType"] = 2318
	tCardSoul_TrapType["zzyl"]["Look"] = 2318
	tCardSoul_TrapType["zzyl"][1] = {}
	tCardSoul_TrapType["zzyl"][1]["MapId"] = 3053
	tCardSoul_TrapType["zzyl"][1]["PosX"] = 182
	tCardSoul_TrapType["zzyl"][1]["PosY"] = 144
	tCardSoul_TrapType["zzyl"][2] = {}
	tCardSoul_TrapType["zzyl"][2]["MapId"] = 1002
	tCardSoul_TrapType["zzyl"][2]["PosX"] = 345
	tCardSoul_TrapType["zzyl"][2]["PosY"] = 471
	-- 冶炼成功
	tCardSoul_TrapType["ylcg"] = "qsuccess"
	-- 冶炼失败
	tCardSoul_TrapType["ylsb"] = "qfail"
	-- 倒计时
	tCardSoul_TrapType["djs"] = {}
	tCardSoul_TrapType["djs"][1] = {}
	tCardSoul_TrapType["djs"][1]["MapId"] = 3053
	tCardSoul_TrapType["djs"][1]["PosX"] = 182
	tCardSoul_TrapType["djs"][1]["PosY"] = 144
	tCardSoul_TrapType["djs"][2] = {}
	tCardSoul_TrapType["djs"][2]["MapId"] = 1002
	tCardSoul_TrapType["djs"][2]["PosX"] = 345
	tCardSoul_TrapType["djs"][2]["PosY"] = 471
	tCardSoul_TrapType["djs"]["EffectName"] = "DragonSoul_djs"
-- 传送进双鼎
local tCardSoul_Map = {}
	tCardSoul_Map["MapId"] = 10430
	tCardSoul_Map["PosX"] = 54
	tCardSoul_Map["PosY"] = 59
	-- 传送回双龙城
local tCardSoul_BackCity = {}
	tCardSoul_BackCity["Normal"] = {}
	tCardSoul_BackCity["Normal"]["MapId"] = 1002
	tCardSoul_BackCity["Normal"]["PosX"] = 347
	tCardSoul_BackCity["Normal"]["PosY"] = 421
	tCardSoul_BackCity["NoGift"] = {}
	tCardSoul_BackCity["NoGift"]["MapId"] = 1036
	tCardSoul_BackCity["NoGift"]["PosX"] = 308
	tCardSoul_BackCity["NoGift"]["PosY"] = 267
	
local tCardSoul_CopyNpc = {}
	tCardSoul_CopyNpc[23940] = 23934
	tCardSoul_CopyNpc[23941] = 23935
	tCardSoul_CopyNpc[23934] = 23934
	tCardSoul_CopyNpc[23935] = 23935
	tCardSoul_CopyNpc[23942] = 23936
	tCardSoul_CopyNpc[23936] = 23936
	
local tCardSoul_Npc = {}
	tCardSoul_Npc[1] = 23934
	tCardSoul_Npc[2] = 23935
	tCardSoul_Npc[3] = 23940
	tCardSoul_Npc[4] = 23941
local tCardSoul_Stc = {}
	tCardSoul_Stc["EventType"] = 193
	tCardSoul_Stc["DataType"] = 28


local tCardSoul_Time = {}
	-- tCardSoul_Time["ActTime"] = tActivityTime["DoubleStove"]["ActTime"]
	tCardSoul_Time["DayNoTime"] = "06:56 07:05"
	
local tCardSoul_Reward = {}
	-- 一阶灵珠
	tCardSoul_Reward[3390072] = {}
	tCardSoul_Reward[3390072]["RewardMoney"] = {}
	tCardSoul_Reward[3390072]["RewardMoney"]["Value"] = 300000
	tCardSoul_Reward[3390072]["DeleteItem"] = {}
	tCardSoul_Reward[3390072]["DeleteItem"][1] = {}
	tCardSoul_Reward[3390072]["DeleteItem"][1]["Id"] = 3390072
	tCardSoul_Reward[3390072]["LogId"] = 12001361
	tCardSoul_Reward[3390072]["SzObj"] = "self"
	tCardSoul_Reward[3390072]["RewardEffect"] = {}
	tCardSoul_Reward[3390072]["RewardEffect"]["Effect"] = "angelwing"
	tCardSoul_Reward[3390072]["Gold"] = true
	-- 二阶灵珠
	tCardSoul_Reward[3390073] = {}
	tCardSoul_Reward[3390073]["RewardMoney"] = {}
	tCardSoul_Reward[3390073]["RewardMoney"]["Value"] = 600000
	tCardSoul_Reward[3390073]["DeleteItem"] = {}
	tCardSoul_Reward[3390073]["DeleteItem"][1] = {}
	tCardSoul_Reward[3390073]["DeleteItem"][1]["Id"] = 3390073
	tCardSoul_Reward[3390073]["LogId"] = 12001361
	tCardSoul_Reward[3390073]["SzObj"] = "self"
	tCardSoul_Reward[3390073]["RewardEffect"] = {}
	tCardSoul_Reward[3390073]["RewardEffect"]["Effect"] = "angelwing"
	tCardSoul_Reward[3390073]["Gold"] = true
	-- 三阶灵珠
	tCardSoul_Reward[3390074] = {}
	tCardSoul_Reward[3390074]["RewardMoney"] = {}
	tCardSoul_Reward[3390074]["RewardMoney"]["Value"] = 1200000
	tCardSoul_Reward[3390074]["DeleteItem"] = {}
	tCardSoul_Reward[3390074]["DeleteItem"][1] = {}
	tCardSoul_Reward[3390074]["DeleteItem"][1]["Id"] = 3390074
	tCardSoul_Reward[3390074]["LogId"] = 12001361
	tCardSoul_Reward[3390074]["SzObj"] = "self"
	tCardSoul_Reward[3390074]["RewardEffect"] = {}
	tCardSoul_Reward[3390074]["RewardEffect"]["Effect"] = "angelwing"
	tCardSoul_Reward[3390074]["Gold"] = true
	-- 四阶灵珠
	tCardSoul_Reward[3390075] = {}
	tCardSoul_Reward[3390075]["RewardMoney"] = {}
	tCardSoul_Reward[3390075]["RewardMoney"]["Value"] = 2400000
	tCardSoul_Reward[3390075]["DeleteItem"] = {}
	tCardSoul_Reward[3390075]["DeleteItem"][1] = {}
	tCardSoul_Reward[3390075]["DeleteItem"][1]["Id"] = 3390075
	tCardSoul_Reward[3390075]["LogId"] = 12001361
	tCardSoul_Reward[3390075]["SzObj"] = "self"
	tCardSoul_Reward[3390075]["RewardEffect"] = {}
	tCardSoul_Reward[3390075]["RewardEffect"]["Effect"] = "angelwing"
	tCardSoul_Reward[3390075]["Gold"] = true
	-- 五阶灵珠       
	tCardSoul_Reward[3390076] = {}
	tCardSoul_Reward[3390076]["RewardMoney"] = {}
	tCardSoul_Reward[3390076]["RewardMoney"]["Value"] = 4800000
	tCardSoul_Reward[3390076]["DeleteItem"] = {}
	tCardSoul_Reward[3390076]["DeleteItem"][1] = {}
	tCardSoul_Reward[3390076]["DeleteItem"][1]["Id"] = 3390076
	tCardSoul_Reward[3390076]["LogId"] = 12001361
	tCardSoul_Reward[3390076]["SzObj"] = "self"
	tCardSoul_Reward[3390076]["RewardEffect"] = {}
	tCardSoul_Reward[3390076]["RewardEffect"]["Effect"] = "angelwing"
	tCardSoul_Reward[3390076]["Gold"] = true
	-- 六阶灵珠            
	tCardSoul_Reward[3390077] = {}
	tCardSoul_Reward[3390077]["RewardMoney"] = {}
	tCardSoul_Reward[3390077]["RewardMoney"]["Value"] = 9600000
	tCardSoul_Reward[3390077]["DeleteItem"] = {}
	tCardSoul_Reward[3390077]["DeleteItem"][1] = {}
	tCardSoul_Reward[3390077]["DeleteItem"][1]["Id"] = 3390077
	tCardSoul_Reward[3390077]["LogId"] = 12001361
	tCardSoul_Reward[3390077]["SzObj"] = "self"
	tCardSoul_Reward[3390077]["RewardEffect"] = {}
	tCardSoul_Reward[3390077]["RewardEffect"]["Effect"] = "angelwing"
	tCardSoul_Reward[3390077]["Gold"] = true
	-- 七阶灵珠            
	tCardSoul_Reward[3390078] = {}
	tCardSoul_Reward[3390078]["RewardMoney"] = {}
	tCardSoul_Reward[3390078]["RewardMoney"]["Value"] = 19200000
	tCardSoul_Reward[3390078]["DeleteItem"] = {}
	tCardSoul_Reward[3390078]["DeleteItem"][1] = {}
	tCardSoul_Reward[3390078]["DeleteItem"][1]["Id"] = 3390078
	tCardSoul_Reward[3390078]["LogId"] = 12001361
	tCardSoul_Reward[3390078]["SzObj"] = "self"
	tCardSoul_Reward[3390078]["RewardEffect"] = {}
	tCardSoul_Reward[3390078]["RewardEffect"]["Effect"] = "angelwing"
	tCardSoul_Reward[3390078]["Gold"] = true
	-- 八阶灵珠            
	tCardSoul_Reward[3390079] = {}
	tCardSoul_Reward[3390079]["RewardMoney"] = {}
	tCardSoul_Reward[3390079]["RewardMoney"]["Value"] = 38400000
	tCardSoul_Reward[3390079]["DeleteItem"] = {}
	tCardSoul_Reward[3390079]["DeleteItem"][1] = {}
	tCardSoul_Reward[3390079]["DeleteItem"][1]["Id"] = 3390079
	tCardSoul_Reward[3390079]["LogId"] = 12001361
	tCardSoul_Reward[3390079]["SzObj"] = "self"
	tCardSoul_Reward[3390079]["RewardEffect"] = {}
	tCardSoul_Reward[3390079]["RewardEffect"]["Effect"] = "angelwing"
	tCardSoul_Reward[3390079]["Gold"] = true
	-- 九阶灵珠            
	tCardSoul_Reward[3390080] = {}
	tCardSoul_Reward[3390080]["RewardMoney"] = {}
	tCardSoul_Reward[3390080]["RewardMoney"]["Value"] = 76800000
	tCardSoul_Reward[3390080]["DeleteItem"] = {}
	tCardSoul_Reward[3390080]["DeleteItem"][1] = {}
	tCardSoul_Reward[3390080]["DeleteItem"][1]["Id"] = 3390080
	tCardSoul_Reward[3390080]["LogId"] = 12001361
	tCardSoul_Reward[3390080]["SzObj"] = "self"
	tCardSoul_Reward[3390080]["RewardEffect"] = {}
	tCardSoul_Reward[3390080]["RewardEffect"]["Effect"] = "angelwing"
	tCardSoul_Reward[3390080]["Gold"] = true
	-- 十阶灵珠            
	tCardSoul_Reward[3390081] = {}
	tCardSoul_Reward[3390081]["RewardMoney"] = {}
	tCardSoul_Reward[3390081]["RewardMoney"]["Value"] = 153600000
	tCardSoul_Reward[3390081]["DeleteItem"] = {}
	tCardSoul_Reward[3390081]["DeleteItem"][1] = {}
	tCardSoul_Reward[3390081]["DeleteItem"][1]["Id"] = 3390081
	tCardSoul_Reward[3390081]["LogId"] = 12001361
	tCardSoul_Reward[3390081]["SzObj"] = "self"
	tCardSoul_Reward[3390081]["RewardEffect"] = {}
	tCardSoul_Reward[3390081]["RewardEffect"]["Effect"] = "angelwing"
	tCardSoul_Reward[3390081]["Gold"] = true
	-- 十一阶灵珠            
	tCardSoul_Reward[3390082] = {}
	tCardSoul_Reward[3390082]["RewardMoney"] = {}
	tCardSoul_Reward[3390082]["RewardMoney"]["Value"] = 307200000
	tCardSoul_Reward[3390082]["DeleteItem"] = {}
	tCardSoul_Reward[3390082]["DeleteItem"][1] = {}
	tCardSoul_Reward[3390082]["DeleteItem"][1]["Id"] = 3390082
	tCardSoul_Reward[3390082]["LogId"] = 12001361
	tCardSoul_Reward[3390082]["SzObj"] = "self"
	tCardSoul_Reward[3390082]["RewardEffect"] = {}
	tCardSoul_Reward[3390082]["RewardEffect"]["Effect"] = "angelwing"
	tCardSoul_Reward[3390082]["Gold"] = true
	-- 十二阶灵珠          
	tCardSoul_Reward[3390083] = {}
	tCardSoul_Reward[3390083]["RewardMoney"] = {}
	tCardSoul_Reward[3390083]["RewardMoney"]["Value"] = 614400000
	tCardSoul_Reward[3390083]["DeleteItem"] = {}
	tCardSoul_Reward[3390083]["DeleteItem"][1] = {}
	tCardSoul_Reward[3390083]["DeleteItem"][1]["Id"] = 3390083
	tCardSoul_Reward[3390083]["LogId"] = 12001361
	tCardSoul_Reward[3390083]["SzObj"] = "self"
	tCardSoul_Reward[3390083]["RewardEffect"] = {}
	tCardSoul_Reward[3390083]["RewardEffect"]["Effect"] = "angelwing"
	tCardSoul_Reward[3390083]["Gold"] = true
	-- 十三阶灵珠        
	tCardSoul_Reward[3390084] = {}
	tCardSoul_Reward[3390084]["RewardMoney"] = {}
	tCardSoul_Reward[3390084]["RewardMoney"]["Value"] = 1228800000
	tCardSoul_Reward[3390084]["DeleteItem"] = {}
	tCardSoul_Reward[3390084]["DeleteItem"][1] = {}
	tCardSoul_Reward[3390084]["DeleteItem"][1]["Id"] = 3390084
	tCardSoul_Reward[3390084]["LogId"] = 12001361
	tCardSoul_Reward[3390084]["SzObj"] = "self"
	tCardSoul_Reward[3390084]["RewardEffect"] = {}
	tCardSoul_Reward[3390084]["RewardEffect"]["Effect"] = "angelwing"
	tCardSoul_Reward[3390084]["Gold"] = true
	-- 十四阶灵珠     
	tCardSoul_Reward[3390085] = {}
	tCardSoul_Reward[3390085]["RewardItem"] = {}
	tCardSoul_Reward[3390085]["RewardItem"][1] = {}
	tCardSoul_Reward[3390085]["RewardItem"][1]["Id"] = 3390084
	tCardSoul_Reward[3390085]["RewardItem"][1]["Attr"] = "0 2"
	tCardSoul_Reward[3390085]["DeleteItem"] = {}
	tCardSoul_Reward[3390085]["DeleteItem"][1] = {}
	tCardSoul_Reward[3390085]["DeleteItem"][1]["Id"] = 3390085
	tCardSoul_Reward[3390085]["Count"] = 2
	tCardSoul_Reward[3390085]["LogId"] = 12001361
	tCardSoul_Reward[3390085]["SzObj"] = "self"
	tCardSoul_Reward[3390085]["RewardEffect"] = {}
	tCardSoul_Reward[3390085]["RewardEffect"]["Effect"] = "angelwing"
	tCardSoul_Reward[3390085]["Gold"] = true
	-- 十五阶灵珠      
	tCardSoul_Reward[3390086] = {}
	tCardSoul_Reward[3390086]["RewardItem"] = {}
	tCardSoul_Reward[3390086]["RewardItem"][1] = {}
	tCardSoul_Reward[3390086]["RewardItem"][1]["Id"] = 3390084
	tCardSoul_Reward[3390086]["RewardItem"][1]["Attr"] = "0 4"
	tCardSoul_Reward[3390086]["DeleteItem"] = {}
	tCardSoul_Reward[3390086]["DeleteItem"][1] = {}
	tCardSoul_Reward[3390086]["DeleteItem"][1]["Id"] = 3390086
	tCardSoul_Reward[3390086]["Count"] = 4
	tCardSoul_Reward[3390086]["LogId"] = 12001361
	tCardSoul_Reward[3390086]["SzObj"] = "self"
	tCardSoul_Reward[3390086]["RewardEffect"] = {}
	tCardSoul_Reward[3390086]["RewardEffect"]["Effect"] = "angelwing"
	tCardSoul_Reward[3390086]["Gold"] = true
	-- 十六阶灵珠
	tCardSoul_Reward[3390087] = {}
	tCardSoul_Reward[3390087]["RewardItem"] = {}
	tCardSoul_Reward[3390087]["RewardItem"][1] = {}
	tCardSoul_Reward[3390087]["RewardItem"][1]["Id"] = 3390084
	tCardSoul_Reward[3390087]["RewardItem"][1]["Attr"] = "0 8"
	tCardSoul_Reward[3390087]["DeleteItem"] = {}
	tCardSoul_Reward[3390087]["DeleteItem"][1] = {}
	tCardSoul_Reward[3390087]["DeleteItem"][1]["Id"] = 3390087
	tCardSoul_Reward[3390087]["Count"] = 8
	tCardSoul_Reward[3390087]["LogId"] = 12001361
	tCardSoul_Reward[3390087]["SzObj"] = "self"
	tCardSoul_Reward[3390087]["RewardEffect"] = {}
	tCardSoul_Reward[3390087]["RewardEffect"]["Effect"] = "angelwing"
	tCardSoul_Reward[3390087]["Gold"] = true
	-- 十七阶灵珠
	tCardSoul_Reward[3390088] = {}
	tCardSoul_Reward[3390088]["RewardItem"] = {}
	tCardSoul_Reward[3390088]["RewardItem"][1] = {}
	tCardSoul_Reward[3390088]["RewardItem"][1]["Id"] = 3390084
	tCardSoul_Reward[3390088]["RewardItem"][1]["Attr"] = "0 16"
	tCardSoul_Reward[3390088]["DeleteItem"] = {}
	tCardSoul_Reward[3390088]["DeleteItem"][1] = {}
	tCardSoul_Reward[3390088]["DeleteItem"][1]["Id"] = 3390088
	tCardSoul_Reward[3390088]["Count"] = 16
	tCardSoul_Reward[3390088]["LogId"] = 12001361
	tCardSoul_Reward[3390088]["SzObj"] = "self"
	tCardSoul_Reward[3390088]["RewardEffect"] = {}
	tCardSoul_Reward[3390088]["RewardEffect"]["Effect"] = "angelwing"
	tCardSoul_Reward[3390088]["Gold"] = true
	-- 十八阶灵珠      
	tCardSoul_Reward[3390089] = {}
	tCardSoul_Reward[3390089]["RewardItem"] = {}
	tCardSoul_Reward[3390089]["RewardItem"][1] = {}
	tCardSoul_Reward[3390089]["RewardItem"][1]["Id"] = 3390084
	tCardSoul_Reward[3390089]["RewardItem"][1]["Attr"] = "0 32"
	tCardSoul_Reward[3390089]["DeleteItem"] = {}
	tCardSoul_Reward[3390089]["DeleteItem"][1] = {}
	tCardSoul_Reward[3390089]["DeleteItem"][1]["Id"] = 3390089
	tCardSoul_Reward[3390089]["Count"] = 32
	tCardSoul_Reward[3390089]["LogId"] = 12001361
	tCardSoul_Reward[3390089]["SzObj"] = "self"
	tCardSoul_Reward[3390089]["RewardEffect"] = {}
	tCardSoul_Reward[3390089]["RewardEffect"]["Effect"] = "angelwing"
	tCardSoul_Reward[3390089]["Gold"] = true
	
	-- 重炼灵珠
local tCardSoul_Delete = {}
	-- 二阶灵珠
	tCardSoul_Delete[3390073] = {}
	tCardSoul_Delete[3390073]["DeleteItem"] = {}
	tCardSoul_Delete[3390073]["DeleteItem"][1] = {}
	tCardSoul_Delete[3390073]["DeleteItem"][1]["Id"] = 3390073
	tCardSoul_Delete[3390073]["RewardItem"] = {}
	tCardSoul_Delete[3390073]["LogId"] = 12001361
	-- 三阶灵珠
	tCardSoul_Delete[3390074] = {}
	tCardSoul_Delete[3390074]["DeleteItem"] = {}
	tCardSoul_Delete[3390074]["DeleteItem"][1] = {}
	tCardSoul_Delete[3390074]["DeleteItem"][1]["Id"] = 3390074
	tCardSoul_Delete[3390074]["RewardItem"] = {}
	tCardSoul_Delete[3390074]["LogId"] = 12001361
	-- 四阶灵珠
	tCardSoul_Delete[3390075] = {}
	tCardSoul_Delete[3390075]["DeleteItem"] = {}
	tCardSoul_Delete[3390075]["DeleteItem"][1] = {}
	tCardSoul_Delete[3390075]["DeleteItem"][1]["Id"] = 3390075
	tCardSoul_Delete[3390075]["RewardItem"] = {}
	tCardSoul_Delete[3390075]["LogId"] = 12001361
	-- 五阶灵珠       
	tCardSoul_Delete[3390076] = {}
	tCardSoul_Delete[3390076]["DeleteItem"] = {}
	tCardSoul_Delete[3390076]["DeleteItem"][1] = {}
	tCardSoul_Delete[3390076]["DeleteItem"][1]["Id"] = 3390076
	tCardSoul_Delete[3390076]["RewardItem"] = {}
	tCardSoul_Delete[3390076]["LogId"] = 12001361
	-- 六阶灵珠            
	tCardSoul_Delete[3390077] = {}
	tCardSoul_Delete[3390077]["DeleteItem"] = {}
	tCardSoul_Delete[3390077]["DeleteItem"][1] = {}
	tCardSoul_Delete[3390077]["DeleteItem"][1]["Id"] = 3390077
	tCardSoul_Delete[3390077]["RewardItem"] = {}
	tCardSoul_Delete[3390077]["LogId"] = 12001361
	-- 七阶灵珠            
	tCardSoul_Delete[3390078] = {}
	tCardSoul_Delete[3390078]["DeleteItem"] = {}
	tCardSoul_Delete[3390078]["DeleteItem"][1] = {}
	tCardSoul_Delete[3390078]["DeleteItem"][1]["Id"] = 3390078
	tCardSoul_Delete[3390078]["RewardItem"] = {}
	tCardSoul_Delete[3390078]["LogId"] = 12001361
	-- 八阶灵珠            
	tCardSoul_Delete[3390079] = {}
	tCardSoul_Delete[3390079]["DeleteItem"] = {}
	tCardSoul_Delete[3390079]["DeleteItem"][1] = {}
	tCardSoul_Delete[3390079]["DeleteItem"][1]["Id"] = 3390079
	tCardSoul_Delete[3390079]["RewardItem"] = {}
	tCardSoul_Delete[3390079]["LogId"] = 12001361
	-- 九阶灵珠            
	tCardSoul_Delete[3390080] = {}
	tCardSoul_Delete[3390080]["DeleteItem"] = {}
	tCardSoul_Delete[3390080]["DeleteItem"][1] = {}
	tCardSoul_Delete[3390080]["DeleteItem"][1]["Id"] = 3390080
	tCardSoul_Delete[3390080]["RewardItem"] = {}
	tCardSoul_Delete[3390080]["LogId"] = 12001361
	-- 十阶灵珠            
	tCardSoul_Delete[3390081] = {}
	tCardSoul_Delete[3390081]["DeleteItem"] = {}
	tCardSoul_Delete[3390081]["DeleteItem"][1] = {}
	tCardSoul_Delete[3390081]["DeleteItem"][1]["Id"] = 3390081
	tCardSoul_Delete[3390081]["RewardItem"] = {}
	tCardSoul_Delete[3390081]["LogId"] = 12001361
	-- 十一阶灵珠            
	tCardSoul_Delete[3390082] = {}
	tCardSoul_Delete[3390082]["DeleteItem"] = {}
	tCardSoul_Delete[3390082]["DeleteItem"][1] = {}
	tCardSoul_Delete[3390082]["DeleteItem"][1]["Id"] = 3390082
	tCardSoul_Delete[3390082]["RewardItem"] = {}
	tCardSoul_Delete[3390082]["LogId"] = 12001361
	-- 十二阶灵珠          
	tCardSoul_Delete[3390083] = {}
	tCardSoul_Delete[3390083]["DeleteItem"] = {}
	tCardSoul_Delete[3390083]["DeleteItem"][1] = {}
	tCardSoul_Delete[3390083]["DeleteItem"][1]["Id"] = 3390083
	tCardSoul_Delete[3390083]["RewardItem"] = {}
	tCardSoul_Delete[3390083]["LogId"] = 12001361
	-- 十三阶灵珠        
	tCardSoul_Delete[3390084] = {}
	tCardSoul_Delete[3390084]["DeleteItem"] = {}
	tCardSoul_Delete[3390084]["DeleteItem"][1] = {}
	tCardSoul_Delete[3390084]["DeleteItem"][1]["Id"] = 3390084
	tCardSoul_Delete[3390084]["RewardItem"] = {}
	tCardSoul_Delete[3390084]["LogId"] = 12001361
	-- 十四阶灵珠     
	tCardSoul_Delete[3390085] = {}
	tCardSoul_Delete[3390085]["DeleteItem"] = {}
	tCardSoul_Delete[3390085]["DeleteItem"][1] = {}
	tCardSoul_Delete[3390085]["DeleteItem"][1]["Id"] = 3390085
	tCardSoul_Delete[3390085]["RewardItem"] = {}
	tCardSoul_Delete[3390085]["LogId"] = 12001361
	-- 十五阶灵珠      
	tCardSoul_Delete[3390086] = {}
	tCardSoul_Delete[3390086]["DeleteItem"] = {}
	tCardSoul_Delete[3390086]["DeleteItem"][1] = {}
	tCardSoul_Delete[3390086]["DeleteItem"][1]["Id"] = 3390086
	tCardSoul_Delete[3390086]["RewardItem"] = {}
	tCardSoul_Delete[3390086]["LogId"] = 12001361
	-- 十六阶灵珠
	tCardSoul_Delete[3390087] = {}
	tCardSoul_Delete[3390087]["DeleteItem"] = {}
	tCardSoul_Delete[3390087]["DeleteItem"][1] = {}
	tCardSoul_Delete[3390087]["DeleteItem"][1]["Id"] = 3390087
	tCardSoul_Delete[3390087]["RewardItem"] = {}
	tCardSoul_Delete[3390087]["LogId"] = 12001361
	-- 十七阶灵珠
	tCardSoul_Delete[3390088] = {}
	tCardSoul_Delete[3390088]["DeleteItem"] = {}
	tCardSoul_Delete[3390088]["DeleteItem"][1] = {}
	tCardSoul_Delete[3390088]["DeleteItem"][1]["Id"] = 3390088
	tCardSoul_Delete[3390088]["RewardItem"] = {}
	tCardSoul_Delete[3390088]["LogId"] = 12001361
	-- 十八阶灵珠      
	tCardSoul_Delete[3390089] = {}
	tCardSoul_Delete[3390089]["DeleteItem"] = {}
	tCardSoul_Delete[3390089]["DeleteItem"][1] = {}
	tCardSoul_Delete[3390089]["DeleteItem"][1]["Id"] = 3390089
	tCardSoul_Delete[3390089]["RewardItem"] = {}
	tCardSoul_Delete[3390089]["LogId"] = 12001361
	
local tCardSoul_Random = {}
	-- 投注正确1-11阶灵珠随机奖励
	tCardSoul_Random[1] = {}
	tCardSoul_Random[1]["ItemChanceSum"] = 100000
	tCardSoul_Random[1][1] = {}
	tCardSoul_Random[1][1]["RandomItemChanceType"] = 2
	tCardSoul_Random[1][1]["ItemChance"] = 33380
	tCardSoul_Random[1][1]["Index"] = 1
	tCardSoul_Random[1][2] = {}
	tCardSoul_Random[1][2]["RandomItemChanceType"] = 2
	tCardSoul_Random[1][2]["ItemChance"] = 66500
	tCardSoul_Random[1][2]["Index"] = 2
	tCardSoul_Random[1][3] = {}
	tCardSoul_Random[1][3]["RandomItemChanceType"] = 2
	tCardSoul_Random[1][3]["ItemChance"] = 0
	tCardSoul_Random[1][3]["Index"] = 3
	tCardSoul_Random[1][4] = {}
	tCardSoul_Random[1][4]["RandomItemChanceType"] = 2
	tCardSoul_Random[1][4]["ItemChance"] = 110
	tCardSoul_Random[1][4]["Index"] = 4
	tCardSoul_Random[1][5] = {}
	tCardSoul_Random[1][5]["RandomItemChanceType"] = 2
	tCardSoul_Random[1][5]["ItemChance"] = 10
	tCardSoul_Random[1][5]["Index"] = 5
	-- 投注正确12阶灵珠随机奖励
	tCardSoul_Random[2] = {}
	tCardSoul_Random[2]["ItemChanceSum"] = 100000
	tCardSoul_Random[2][1] = {}
	tCardSoul_Random[2][1]["RandomItemChanceType"] = 2
	tCardSoul_Random[2][1]["ItemChance"] = 33370
	tCardSoul_Random[2][1]["Index"] = 1
	tCardSoul_Random[2][2] = {}
	tCardSoul_Random[2][2]["RandomItemChanceType"] = 2
	tCardSoul_Random[2][2]["ItemChance"] = 66500
	tCardSoul_Random[2][2]["Index"] = 2
	tCardSoul_Random[2][3] = {}
	tCardSoul_Random[2][3]["RandomItemChanceType"] = 2
	tCardSoul_Random[2][3]["ItemChance"] = 0
	tCardSoul_Random[2][3]["Index"] = 3
	tCardSoul_Random[2][4] = {}
	tCardSoul_Random[2][4]["RandomItemChanceType"] = 2
	tCardSoul_Random[2][4]["ItemChance"] = 110
	tCardSoul_Random[2][4]["Index"] = 4
	tCardSoul_Random[2][5] = {}
	tCardSoul_Random[2][5]["RandomItemChanceType"] = 2
	tCardSoul_Random[2][5]["ItemChance"] = 20
	tCardSoul_Random[2][5]["Index"] = 5
	
	
local tCardSoul_WinReward = {}
	-- 灵珠双鼎成功模板 3阶
	tCardSoul_WinReward[3390074] = {}
	tCardSoul_WinReward[3390074][1] = {}
	tCardSoul_WinReward[3390074][1]["RewardItem"] = {}
	tCardSoul_WinReward[3390074][1]["RewardItem"][1] = {}
	tCardSoul_WinReward[3390074][1]["RewardItem"][1]["Id"] = 3390073
	tCardSoul_WinReward[3390074][1]["RewardItem"][1]["Attr"] = "0 1"
	tCardSoul_WinReward[3390074][1]["RewardItem"][2] = {}
	tCardSoul_WinReward[3390074][1]["RewardItem"][2]["Id"] = 3390074
	tCardSoul_WinReward[3390074][1]["RewardItem"][2]["Attr"] = "0 1"
	tCardSoul_WinReward[3390074][1]["LogId"] = 12001361
	tCardSoul_WinReward[3390074][1]["SzObj"] = "self"
	tCardSoul_WinReward[3390074][1]["RewardEffect"] = {}
	tCardSoul_WinReward[3390074][1]["RewardEffect"]["Effect"] = "angelwing"
	tCardSoul_WinReward[3390074][2] = {}
	tCardSoul_WinReward[3390074][2]["RewardItem"] = {}
	tCardSoul_WinReward[3390074][2]["RewardItem"][1] = {}
	tCardSoul_WinReward[3390074][2]["RewardItem"][1]["Id"] = 3390075
	tCardSoul_WinReward[3390074][2]["RewardItem"][1]["Attr"] = "0 1"
	tCardSoul_WinReward[3390074][2]["LogId"] = 12001361
	tCardSoul_WinReward[3390074][2]["SzObj"] = "self"
	tCardSoul_WinReward[3390074][2]["RewardEffect"] = {}
	tCardSoul_WinReward[3390074][2]["RewardEffect"]["Effect"] = "angelwing"
	tCardSoul_WinReward[3390074][4] = {}
	tCardSoul_WinReward[3390074][4]["RewardItem"] = {}
	tCardSoul_WinReward[3390074][4]["RewardItem"][1] = {}
	tCardSoul_WinReward[3390074][4]["RewardItem"][1]["Id"] = 3390079
	tCardSoul_WinReward[3390074][4]["RewardItem"][1]["Attr"] = "0 1"
	tCardSoul_WinReward[3390074][4]["LogId"] = 12001361
	tCardSoul_WinReward[3390074][4]["SzObj"] = "self"
	tCardSoul_WinReward[3390074][4]["RewardEffect"] = {}
	tCardSoul_WinReward[3390074][4]["RewardEffect"]["Effect"] = "angelwing"
	tCardSoul_WinReward[3390074][5] = {}
	tCardSoul_WinReward[3390074][5]["RewardItem"] = {}
	tCardSoul_WinReward[3390074][5]["RewardItem"][1] = {}
	tCardSoul_WinReward[3390074][5]["RewardItem"][1]["Id"] = 3390081
	tCardSoul_WinReward[3390074][5]["RewardItem"][1]["Attr"] = "0 1"
	tCardSoul_WinReward[3390074][5]["LogId"] = 12001361
	tCardSoul_WinReward[3390074][5]["SzObj"] = "self"
	tCardSoul_WinReward[3390074][5]["RewardEffect"] = {}
	tCardSoul_WinReward[3390074][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 灵珠双鼎成功模板 4阶
	tCardSoul_WinReward[3390075] = {}
	tCardSoul_WinReward[3390075][1] = {}
	tCardSoul_WinReward[3390075][1]["RewardItem"] = {}
	tCardSoul_WinReward[3390075][1]["RewardItem"][1] = {}
	tCardSoul_WinReward[3390075][1]["RewardItem"][1]["Id"] = 3390074
	tCardSoul_WinReward[3390075][1]["RewardItem"][1]["Attr"] = "0 1"
	tCardSoul_WinReward[3390075][1]["RewardItem"][2] = {}
	tCardSoul_WinReward[3390075][1]["RewardItem"][2]["Id"] = 3390075
	tCardSoul_WinReward[3390075][1]["RewardItem"][2]["Attr"] = "0 1"
	tCardSoul_WinReward[3390075][1]["LogId"] = 12001361
	tCardSoul_WinReward[3390075][1]["SzObj"] = "self"
	tCardSoul_WinReward[3390075][1]["RewardEffect"] = {}
	tCardSoul_WinReward[3390075][1]["RewardEffect"]["Effect"] = "angelwing"
	tCardSoul_WinReward[3390075][2] = {}
	tCardSoul_WinReward[3390075][2]["RewardItem"] = {}
	tCardSoul_WinReward[3390075][2]["RewardItem"][1] = {}
	tCardSoul_WinReward[3390075][2]["RewardItem"][1]["Id"] = 3390076
	tCardSoul_WinReward[3390075][2]["RewardItem"][1]["Attr"] = "0 1"
	tCardSoul_WinReward[3390075][2]["LogId"] = 12001361
	tCardSoul_WinReward[3390075][2]["SzObj"] = "self"
	tCardSoul_WinReward[3390075][2]["RewardEffect"] = {}
	tCardSoul_WinReward[3390075][2]["RewardEffect"]["Effect"] = "angelwing"
	tCardSoul_WinReward[3390075][4] = {}
	tCardSoul_WinReward[3390075][4]["RewardItem"] = {}
	tCardSoul_WinReward[3390075][4]["RewardItem"][1] = {}
	tCardSoul_WinReward[3390075][4]["RewardItem"][1]["Id"] = 3390080
	tCardSoul_WinReward[3390075][4]["RewardItem"][1]["Attr"] = "0 1"
	tCardSoul_WinReward[3390075][4]["LogId"] = 12001361
	tCardSoul_WinReward[3390075][4]["SzObj"] = "self"
	tCardSoul_WinReward[3390075][4]["RewardEffect"] = {}
	tCardSoul_WinReward[3390075][4]["RewardEffect"]["Effect"] = "angelwing"
	tCardSoul_WinReward[3390075][5] = {}
	tCardSoul_WinReward[3390075][5]["RewardItem"] = {}
	tCardSoul_WinReward[3390075][5]["RewardItem"][1] = {}
	tCardSoul_WinReward[3390075][5]["RewardItem"][1]["Id"] = 3390082
	tCardSoul_WinReward[3390075][5]["RewardItem"][1]["Attr"] = "0 1"
	tCardSoul_WinReward[3390075][5]["LogId"] = 12001361
	tCardSoul_WinReward[3390075][5]["SzObj"] = "self"
	tCardSoul_WinReward[3390075][5]["RewardEffect"] = {}
	tCardSoul_WinReward[3390075][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 灵珠双鼎成功模板 5阶
	tCardSoul_WinReward[3390076] = {}
	tCardSoul_WinReward[3390076][1] = {}
	tCardSoul_WinReward[3390076][1]["RewardItem"] = {}
	tCardSoul_WinReward[3390076][1]["RewardItem"][1] = {}
	tCardSoul_WinReward[3390076][1]["RewardItem"][1]["Id"] = 3390075
	tCardSoul_WinReward[3390076][1]["RewardItem"][1]["Attr"] = "0 1"
	tCardSoul_WinReward[3390076][1]["RewardItem"][2] = {}
	tCardSoul_WinReward[3390076][1]["RewardItem"][2]["Id"] = 3390076
	tCardSoul_WinReward[3390076][1]["RewardItem"][2]["Attr"] = "0 1"
	tCardSoul_WinReward[3390076][1]["LogId"] = 12001361
	tCardSoul_WinReward[3390076][1]["SzObj"] = "self"
	tCardSoul_WinReward[3390076][1]["RewardEffect"] = {}
	tCardSoul_WinReward[3390076][1]["RewardEffect"]["Effect"] = "angelwing"
	tCardSoul_WinReward[3390076][2] = {}
	tCardSoul_WinReward[3390076][2]["RewardItem"] = {}
	tCardSoul_WinReward[3390076][2]["RewardItem"][1] = {}
	tCardSoul_WinReward[3390076][2]["RewardItem"][1]["Id"] = 3390077
	tCardSoul_WinReward[3390076][2]["RewardItem"][1]["Attr"] = "0 1"
	tCardSoul_WinReward[3390076][2]["LogId"] = 12001361
	tCardSoul_WinReward[3390076][2]["SzObj"] = "self"
	tCardSoul_WinReward[3390076][2]["RewardEffect"] = {}
	tCardSoul_WinReward[3390076][2]["RewardEffect"]["Effect"] = "angelwing"
	tCardSoul_WinReward[3390076][4] = {}
	tCardSoul_WinReward[3390076][4]["RewardItem"] = {}
	tCardSoul_WinReward[3390076][4]["RewardItem"][1] = {}
	tCardSoul_WinReward[3390076][4]["RewardItem"][1]["Id"] = 3390081
	tCardSoul_WinReward[3390076][4]["RewardItem"][1]["Attr"] = "0 1"
	tCardSoul_WinReward[3390076][4]["LogId"] = 12001361
	tCardSoul_WinReward[3390076][4]["SzObj"] = "self"
	tCardSoul_WinReward[3390076][4]["RewardEffect"] = {}
	tCardSoul_WinReward[3390076][4]["RewardEffect"]["Effect"] = "angelwing"
	tCardSoul_WinReward[3390076][5] = {}
	tCardSoul_WinReward[3390076][5]["RewardItem"] = {}
	tCardSoul_WinReward[3390076][5]["RewardItem"][1] = {}
	tCardSoul_WinReward[3390076][5]["RewardItem"][1]["Id"] = 3390083
	tCardSoul_WinReward[3390076][5]["RewardItem"][1]["Attr"] = "0 1"
	tCardSoul_WinReward[3390076][5]["LogId"] = 12001361
	tCardSoul_WinReward[3390076][5]["SzObj"] = "self"
	tCardSoul_WinReward[3390076][5]["RewardEffect"] = {}
	tCardSoul_WinReward[3390076][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 灵珠双鼎成功模板 6阶
	tCardSoul_WinReward[3390077] = {}
	tCardSoul_WinReward[3390077][1] = {}
	tCardSoul_WinReward[3390077][1]["RewardItem"] = {}
	tCardSoul_WinReward[3390077][1]["RewardItem"][1] = {}
	tCardSoul_WinReward[3390077][1]["RewardItem"][1]["Id"] = 3390076
	tCardSoul_WinReward[3390077][1]["RewardItem"][1]["Attr"] = "0 1"
	tCardSoul_WinReward[3390077][1]["RewardItem"][2] = {}
	tCardSoul_WinReward[3390077][1]["RewardItem"][2]["Id"] = 3390077
	tCardSoul_WinReward[3390077][1]["RewardItem"][2]["Attr"] = "0 1"
	tCardSoul_WinReward[3390077][1]["LogId"] = 12001361
	tCardSoul_WinReward[3390077][1]["SzObj"] = "self"
	tCardSoul_WinReward[3390077][1]["RewardEffect"] = {}
	tCardSoul_WinReward[3390077][1]["RewardEffect"]["Effect"] = "angelwing"
	tCardSoul_WinReward[3390077][2] = {}
	tCardSoul_WinReward[3390077][2]["RewardItem"] = {}
	tCardSoul_WinReward[3390077][2]["RewardItem"][1] = {}
	tCardSoul_WinReward[3390077][2]["RewardItem"][1]["Id"] = 3390078
	tCardSoul_WinReward[3390077][2]["RewardItem"][1]["Attr"] = "0 1"
	tCardSoul_WinReward[3390077][2]["LogId"] = 12001361
	tCardSoul_WinReward[3390077][2]["SzObj"] = "self"
	tCardSoul_WinReward[3390077][2]["RewardEffect"] = {}
	tCardSoul_WinReward[3390077][2]["RewardEffect"]["Effect"] = "angelwing"
	tCardSoul_WinReward[3390077][4] = {}
	tCardSoul_WinReward[3390077][4]["RewardItem"] = {}
	tCardSoul_WinReward[3390077][4]["RewardItem"][1] = {}
	tCardSoul_WinReward[3390077][4]["RewardItem"][1]["Id"] = 3390082
	tCardSoul_WinReward[3390077][4]["RewardItem"][1]["Attr"] = "0 1"
	tCardSoul_WinReward[3390077][4]["LogId"] = 12001361
	tCardSoul_WinReward[3390077][4]["SzObj"] = "self"
	tCardSoul_WinReward[3390077][4]["RewardEffect"] = {}
	tCardSoul_WinReward[3390077][4]["RewardEffect"]["Effect"] = "angelwing"
	tCardSoul_WinReward[3390077][5] = {}
	tCardSoul_WinReward[3390077][5]["RewardItem"] = {}
	tCardSoul_WinReward[3390077][5]["RewardItem"][1] = {}
	tCardSoul_WinReward[3390077][5]["RewardItem"][1]["Id"] = 3390084
	tCardSoul_WinReward[3390077][5]["RewardItem"][1]["Attr"] = "0 1"
	tCardSoul_WinReward[3390077][5]["LogId"] = 12001361
	tCardSoul_WinReward[3390077][5]["SzObj"] = "self"
	tCardSoul_WinReward[3390077][5]["RewardEffect"] = {}
	tCardSoul_WinReward[3390077][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 灵珠双鼎成功模板 7阶
	tCardSoul_WinReward[3390078] = {}
	tCardSoul_WinReward[3390078][1] = {}
	tCardSoul_WinReward[3390078][1]["RewardItem"] = {}
	tCardSoul_WinReward[3390078][1]["RewardItem"][1] = {}
	tCardSoul_WinReward[3390078][1]["RewardItem"][1]["Id"] = 3390077
	tCardSoul_WinReward[3390078][1]["RewardItem"][1]["Attr"] = "0 1"
	tCardSoul_WinReward[3390078][1]["RewardItem"][2] = {}
	tCardSoul_WinReward[3390078][1]["RewardItem"][2]["Id"] = 3390078
	tCardSoul_WinReward[3390078][1]["RewardItem"][2]["Attr"] = "0 1"
	tCardSoul_WinReward[3390078][1]["LogId"] = 12001361
	tCardSoul_WinReward[3390078][1]["SzObj"] = "self"
	tCardSoul_WinReward[3390078][1]["RewardEffect"] = {}
	tCardSoul_WinReward[3390078][1]["RewardEffect"]["Effect"] = "angelwing"
	tCardSoul_WinReward[3390078][2] = {}
	tCardSoul_WinReward[3390078][2]["RewardItem"] = {}
	tCardSoul_WinReward[3390078][2]["RewardItem"][1] = {}
	tCardSoul_WinReward[3390078][2]["RewardItem"][1]["Id"] = 3390079
	tCardSoul_WinReward[3390078][2]["RewardItem"][1]["Attr"] = "0 1"
	tCardSoul_WinReward[3390078][2]["LogId"] = 12001361
	tCardSoul_WinReward[3390078][2]["SzObj"] = "self"
	tCardSoul_WinReward[3390078][2]["RewardEffect"] = {}
	tCardSoul_WinReward[3390078][2]["RewardEffect"]["Effect"] = "angelwing"
	tCardSoul_WinReward[3390078][4] = {}
	tCardSoul_WinReward[3390078][4]["RewardItem"] = {}
	tCardSoul_WinReward[3390078][4]["RewardItem"][1] = {}
	tCardSoul_WinReward[3390078][4]["RewardItem"][1]["Id"] = 3390083
	tCardSoul_WinReward[3390078][4]["RewardItem"][1]["Attr"] = "0 1"
	tCardSoul_WinReward[3390078][4]["LogId"] = 12001361
	tCardSoul_WinReward[3390078][4]["SzObj"] = "self"
	tCardSoul_WinReward[3390078][4]["RewardEffect"] = {}
	tCardSoul_WinReward[3390078][4]["RewardEffect"]["Effect"] = "angelwing"
	tCardSoul_WinReward[3390078][5] = {}
	tCardSoul_WinReward[3390078][5]["RewardItem"] = {}
	tCardSoul_WinReward[3390078][5]["RewardItem"][1] = {}
	tCardSoul_WinReward[3390078][5]["RewardItem"][1]["Id"] = 3390085
	tCardSoul_WinReward[3390078][5]["RewardItem"][1]["Attr"] = "0 1"
	tCardSoul_WinReward[3390078][5]["LogId"] = 12001361
	tCardSoul_WinReward[3390078][5]["SzObj"] = "self"
	tCardSoul_WinReward[3390078][5]["RewardEffect"] = {}
	tCardSoul_WinReward[3390078][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 灵珠双鼎成功模板 8阶
	tCardSoul_WinReward[3390079] = {}
	tCardSoul_WinReward[3390079][1] = {}
	tCardSoul_WinReward[3390079][1]["RewardItem"] = {}
	tCardSoul_WinReward[3390079][1]["RewardItem"][1] = {}
	tCardSoul_WinReward[3390079][1]["RewardItem"][1]["Id"] = 3390078
	tCardSoul_WinReward[3390079][1]["RewardItem"][1]["Attr"] = "0 1"
	tCardSoul_WinReward[3390079][1]["RewardItem"][2] = {}
	tCardSoul_WinReward[3390079][1]["RewardItem"][2]["Id"] = 3390079
	tCardSoul_WinReward[3390079][1]["RewardItem"][2]["Attr"] = "0 1"
	tCardSoul_WinReward[3390079][1]["LogId"] = 12001361
	tCardSoul_WinReward[3390079][1]["SzObj"] = "self"
	tCardSoul_WinReward[3390079][1]["RewardEffect"] = {}
	tCardSoul_WinReward[3390079][1]["RewardEffect"]["Effect"] = "angelwing"
	tCardSoul_WinReward[3390079][2] = {}
	tCardSoul_WinReward[3390079][2]["RewardItem"] = {}
	tCardSoul_WinReward[3390079][2]["RewardItem"][1] = {}
	tCardSoul_WinReward[3390079][2]["RewardItem"][1]["Id"] = 3390080
	tCardSoul_WinReward[3390079][2]["RewardItem"][1]["Attr"] = "0 1"
	tCardSoul_WinReward[3390079][2]["LogId"] = 12001361
	tCardSoul_WinReward[3390079][2]["SzObj"] = "self"
	tCardSoul_WinReward[3390079][2]["RewardEffect"] = {}
	tCardSoul_WinReward[3390079][2]["RewardEffect"]["Effect"] = "angelwing"
	tCardSoul_WinReward[3390079][4] = {}
	tCardSoul_WinReward[3390079][4]["RewardItem"] = {}
	tCardSoul_WinReward[3390079][4]["RewardItem"][1] = {}
	tCardSoul_WinReward[3390079][4]["RewardItem"][1]["Id"] = 3390084
	tCardSoul_WinReward[3390079][4]["RewardItem"][1]["Attr"] = "0 1"
	tCardSoul_WinReward[3390079][4]["LogId"] = 12001361
	tCardSoul_WinReward[3390079][4]["SzObj"] = "self"
	tCardSoul_WinReward[3390079][4]["RewardEffect"] = {}
	tCardSoul_WinReward[3390079][4]["RewardEffect"]["Effect"] = "angelwing"
	tCardSoul_WinReward[3390079][5] = {}
	tCardSoul_WinReward[3390079][5]["RewardItem"] = {}
	tCardSoul_WinReward[3390079][5]["RewardItem"][1] = {}
	tCardSoul_WinReward[3390079][5]["RewardItem"][1]["Id"] = 3390086
	tCardSoul_WinReward[3390079][5]["RewardItem"][1]["Attr"] = "0 1"
	tCardSoul_WinReward[3390079][5]["LogId"] = 12001361
	tCardSoul_WinReward[3390079][5]["SzObj"] = "self"
	tCardSoul_WinReward[3390079][5]["RewardEffect"] = {}
	tCardSoul_WinReward[3390079][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 灵珠双鼎成功模板 9阶
	tCardSoul_WinReward[3390080] = {}
	tCardSoul_WinReward[3390080][1] = {}
	tCardSoul_WinReward[3390080][1]["RewardItem"] = {}
	tCardSoul_WinReward[3390080][1]["RewardItem"][1] = {}
	tCardSoul_WinReward[3390080][1]["RewardItem"][1]["Id"] = 3390079
	tCardSoul_WinReward[3390080][1]["RewardItem"][1]["Attr"] = "0 1"
	tCardSoul_WinReward[3390080][1]["RewardItem"][2] = {}
	tCardSoul_WinReward[3390080][1]["RewardItem"][2]["Id"] = 3390080
	tCardSoul_WinReward[3390080][1]["RewardItem"][2]["Attr"] = "0 1"
	tCardSoul_WinReward[3390080][1]["LogId"] = 12001361
	tCardSoul_WinReward[3390080][1]["SzObj"] = "self"
	tCardSoul_WinReward[3390080][1]["RewardEffect"] = {}
	tCardSoul_WinReward[3390080][1]["RewardEffect"]["Effect"] = "angelwing"
	tCardSoul_WinReward[3390080][2] = {}
	tCardSoul_WinReward[3390080][2]["RewardItem"] = {}
	tCardSoul_WinReward[3390080][2]["RewardItem"][1] = {}
	tCardSoul_WinReward[3390080][2]["RewardItem"][1]["Id"] = 3390081
	tCardSoul_WinReward[3390080][2]["RewardItem"][1]["Attr"] = "0 1"
	tCardSoul_WinReward[3390080][2]["LogId"] = 12001361
	tCardSoul_WinReward[3390080][2]["SzObj"] = "self"
	tCardSoul_WinReward[3390080][2]["RewardEffect"] = {}
	tCardSoul_WinReward[3390080][2]["RewardEffect"]["Effect"] = "angelwing"
	tCardSoul_WinReward[3390080][4] = {}
	tCardSoul_WinReward[3390080][4]["RewardItem"] = {}
	tCardSoul_WinReward[3390080][4]["RewardItem"][1] = {}
	tCardSoul_WinReward[3390080][4]["RewardItem"][1]["Id"] = 3390085
	tCardSoul_WinReward[3390080][4]["RewardItem"][1]["Attr"] = "0 1"
	tCardSoul_WinReward[3390080][4]["LogId"] = 12001361
	tCardSoul_WinReward[3390080][4]["SzObj"] = "self"
	tCardSoul_WinReward[3390080][4]["RewardEffect"] = {}
	tCardSoul_WinReward[3390080][4]["RewardEffect"]["Effect"] = "angelwing"
	tCardSoul_WinReward[3390080][5] = {}
	tCardSoul_WinReward[3390080][5]["RewardItem"] = {}
	tCardSoul_WinReward[3390080][5]["RewardItem"][1] = {}
	tCardSoul_WinReward[3390080][5]["RewardItem"][1]["Id"] = 3390087
	tCardSoul_WinReward[3390080][5]["RewardItem"][1]["Attr"] = "0 1"
	tCardSoul_WinReward[3390080][5]["LogId"] = 12001361
	tCardSoul_WinReward[3390080][5]["SzObj"] = "self"
	tCardSoul_WinReward[3390080][5]["RewardEffect"] = {}
	tCardSoul_WinReward[3390080][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 灵珠双鼎成功模板 10阶
	tCardSoul_WinReward[3390081] = {}
	tCardSoul_WinReward[3390081][1] = {}
	tCardSoul_WinReward[3390081][1]["RewardItem"] = {}
	tCardSoul_WinReward[3390081][1]["RewardItem"][1] = {}
	tCardSoul_WinReward[3390081][1]["RewardItem"][1]["Id"] = 3390080
	tCardSoul_WinReward[3390081][1]["RewardItem"][1]["Attr"] = "0 1"
	tCardSoul_WinReward[3390081][1]["RewardItem"][2] = {}
	tCardSoul_WinReward[3390081][1]["RewardItem"][2]["Id"] = 3390081
	tCardSoul_WinReward[3390081][1]["RewardItem"][2]["Attr"] = "0 1"
	tCardSoul_WinReward[3390081][1]["LogId"] = 12001361
	tCardSoul_WinReward[3390081][1]["SzObj"] = "self"
	tCardSoul_WinReward[3390081][1]["RewardEffect"] = {}
	tCardSoul_WinReward[3390081][1]["RewardEffect"]["Effect"] = "angelwing"
	tCardSoul_WinReward[3390081][2] = {}
	tCardSoul_WinReward[3390081][2]["RewardItem"] = {}
	tCardSoul_WinReward[3390081][2]["RewardItem"][1] = {}
	tCardSoul_WinReward[3390081][2]["RewardItem"][1]["Id"] = 3390082
	tCardSoul_WinReward[3390081][2]["RewardItem"][1]["Attr"] = "0 1"
	tCardSoul_WinReward[3390081][2]["LogId"] = 12001361
	tCardSoul_WinReward[3390081][2]["SzObj"] = "self"
	tCardSoul_WinReward[3390081][2]["RewardEffect"] = {}
	tCardSoul_WinReward[3390081][2]["RewardEffect"]["Effect"] = "angelwing"
	tCardSoul_WinReward[3390081][4] = {}
	tCardSoul_WinReward[3390081][4]["RewardItem"] = {}
	tCardSoul_WinReward[3390081][4]["RewardItem"][1] = {}
	tCardSoul_WinReward[3390081][4]["RewardItem"][1]["Id"] = 3390086
	tCardSoul_WinReward[3390081][4]["RewardItem"][1]["Attr"] = "0 1"
	tCardSoul_WinReward[3390081][4]["LogId"] = 12001361
	tCardSoul_WinReward[3390081][4]["SzObj"] = "self"
	tCardSoul_WinReward[3390081][4]["RewardEffect"] = {}
	tCardSoul_WinReward[3390081][4]["RewardEffect"]["Effect"] = "angelwing"
	tCardSoul_WinReward[3390081][5] = {}
	tCardSoul_WinReward[3390081][5]["RewardItem"] = {}
	tCardSoul_WinReward[3390081][5]["RewardItem"][1] = {}
	tCardSoul_WinReward[3390081][5]["RewardItem"][1]["Id"] = 3390088
	tCardSoul_WinReward[3390081][5]["RewardItem"][1]["Attr"] = "0 1"
	tCardSoul_WinReward[3390081][5]["LogId"] = 12001361
	tCardSoul_WinReward[3390081][5]["SzObj"] = "self"
	tCardSoul_WinReward[3390081][5]["RewardEffect"] = {}
	tCardSoul_WinReward[3390081][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 灵珠双鼎成功模板 11阶
	tCardSoul_WinReward[3390082] = {}
	tCardSoul_WinReward[3390082][1] = {}
	tCardSoul_WinReward[3390082][1]["RewardItem"] = {}
	tCardSoul_WinReward[3390082][1]["RewardItem"][1] = {}
	tCardSoul_WinReward[3390082][1]["RewardItem"][1]["Id"] = 3390081
	tCardSoul_WinReward[3390082][1]["RewardItem"][1]["Attr"] = "0 1"
	tCardSoul_WinReward[3390082][1]["RewardItem"][2] = {}
	tCardSoul_WinReward[3390082][1]["RewardItem"][2]["Id"] = 3390082
	tCardSoul_WinReward[3390082][1]["RewardItem"][2]["Attr"] = "0 1"
	tCardSoul_WinReward[3390082][1]["LogId"] = 12001361
	tCardSoul_WinReward[3390082][1]["SzObj"] = "self"
	tCardSoul_WinReward[3390082][1]["RewardEffect"] = {}
	tCardSoul_WinReward[3390082][1]["RewardEffect"]["Effect"] = "angelwing"
	tCardSoul_WinReward[3390082][2] = {}
	tCardSoul_WinReward[3390082][2]["RewardItem"] = {}
	tCardSoul_WinReward[3390082][2]["RewardItem"][1] = {}
	tCardSoul_WinReward[3390082][2]["RewardItem"][1]["Id"] = 3390083
	tCardSoul_WinReward[3390082][2]["RewardItem"][1]["Attr"] = "0 1"
	tCardSoul_WinReward[3390082][2]["LogId"] = 12001361
	tCardSoul_WinReward[3390082][2]["SzObj"] = "self"
	tCardSoul_WinReward[3390082][2]["RewardEffect"] = {}
	tCardSoul_WinReward[3390082][2]["RewardEffect"]["Effect"] = "angelwing"
	tCardSoul_WinReward[3390082][4] = {}
	tCardSoul_WinReward[3390082][4]["RewardItem"] = {}
	tCardSoul_WinReward[3390082][4]["RewardItem"][1] = {}
	tCardSoul_WinReward[3390082][4]["RewardItem"][1]["Id"] = 3390087
	tCardSoul_WinReward[3390082][4]["RewardItem"][1]["Attr"] = "0 1"
	tCardSoul_WinReward[3390082][4]["LogId"] = 12001361
	tCardSoul_WinReward[3390082][4]["SzObj"] = "self"
	tCardSoul_WinReward[3390082][4]["RewardEffect"] = {}
	tCardSoul_WinReward[3390082][4]["RewardEffect"]["Effect"] = "angelwing"
	tCardSoul_WinReward[3390082][5] = {}
	tCardSoul_WinReward[3390082][5]["RewardItem"] = {}
	tCardSoul_WinReward[3390082][5]["RewardItem"][1] = {}
	tCardSoul_WinReward[3390082][5]["RewardItem"][1]["Id"] = 3390089
	tCardSoul_WinReward[3390082][5]["RewardItem"][1]["Attr"] = "0 1"
	tCardSoul_WinReward[3390082][5]["LogId"] = 12001361
	tCardSoul_WinReward[3390082][5]["SzObj"] = "self"
	tCardSoul_WinReward[3390082][5]["RewardEffect"] = {}
	tCardSoul_WinReward[3390082][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 灵珠双鼎成功模板 12阶
	tCardSoul_WinReward[3390083] = {}
	tCardSoul_WinReward[3390083][1] = {}
	tCardSoul_WinReward[3390083][1]["RewardItem"] = {}
	tCardSoul_WinReward[3390083][1]["RewardItem"][1] = {}
	tCardSoul_WinReward[3390083][1]["RewardItem"][1]["Id"] = 3390082
	tCardSoul_WinReward[3390083][1]["RewardItem"][1]["Attr"] = "0 1"
	tCardSoul_WinReward[3390083][1]["RewardItem"][2] = {}
	tCardSoul_WinReward[3390083][1]["RewardItem"][2]["Id"] = 3390083
	tCardSoul_WinReward[3390083][1]["RewardItem"][2]["Attr"] = "0 1"
	tCardSoul_WinReward[3390083][1]["LogId"] = 12001361
	tCardSoul_WinReward[3390083][1]["SzObj"] = "self"
	tCardSoul_WinReward[3390083][1]["RewardEffect"] = {}
	tCardSoul_WinReward[3390083][1]["RewardEffect"]["Effect"] = "angelwing"
	tCardSoul_WinReward[3390083][2] = {}
	tCardSoul_WinReward[3390083][2]["RewardItem"] = {}
	tCardSoul_WinReward[3390083][2]["RewardItem"][1] = {}
	tCardSoul_WinReward[3390083][2]["RewardItem"][1]["Id"] = 3390084
	tCardSoul_WinReward[3390083][2]["RewardItem"][1]["Attr"] = "0 1"
	tCardSoul_WinReward[3390083][2]["LogId"] = 12001361
	tCardSoul_WinReward[3390083][2]["SzObj"] = "self"
	tCardSoul_WinReward[3390083][2]["RewardEffect"] = {}
	tCardSoul_WinReward[3390083][2]["RewardEffect"]["Effect"] = "angelwing"
	tCardSoul_WinReward[3390083][4] = {}
	tCardSoul_WinReward[3390083][4]["RewardItem"] = {}
	tCardSoul_WinReward[3390083][4]["RewardItem"][1] = {}
	tCardSoul_WinReward[3390083][4]["RewardItem"][1]["Id"] = 3390088
	tCardSoul_WinReward[3390083][4]["RewardItem"][1]["Attr"] = "0 1"
	tCardSoul_WinReward[3390083][4]["LogId"] = 12001361
	tCardSoul_WinReward[3390083][4]["SzObj"] = "self"
	tCardSoul_WinReward[3390083][4]["RewardEffect"] = {}
	tCardSoul_WinReward[3390083][4]["RewardEffect"]["Effect"] = "angelwing"
	tCardSoul_WinReward[3390083][5] = {}
	tCardSoul_WinReward[3390083][5]["RewardItem"] = {}
	tCardSoul_WinReward[3390083][5]["RewardItem"][1] = {}
	tCardSoul_WinReward[3390083][5]["RewardItem"][1]["Id"] = 3390089
	tCardSoul_WinReward[3390083][5]["RewardItem"][1]["Attr"] = "0 1"
	tCardSoul_WinReward[3390083][5]["LogId"] = 12001361
	tCardSoul_WinReward[3390083][5]["SzObj"] = "self"
	tCardSoul_WinReward[3390083][5]["RewardEffect"] = {}
	tCardSoul_WinReward[3390083][5]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 灵珠双鼎失败
local tCardSoul_LoseReward = {}
	tCardSoul_LoseReward[3390074] = {}
	tCardSoul_LoseReward[3390074]["RewardExpTime"] = {}
	tCardSoul_LoseReward[3390074]["RewardExpTime"]["Value"] = 20
	tCardSoul_LoseReward[3390074]["LogId"] = 12001361
	tCardSoul_LoseReward[3390074]["SzObj"] = "self"
	tCardSoul_LoseReward[3390074]["RewardEffect"] = {}
	tCardSoul_LoseReward[3390074]["RewardEffect"]["Effect"] = "angelwing"
	tCardSoul_LoseReward[3390075] = {}
	tCardSoul_LoseReward[3390075]["RewardExpTime"] = {}
	tCardSoul_LoseReward[3390075]["RewardExpTime"]["Value"] = 30
	tCardSoul_LoseReward[3390075]["LogId"] = 12001361
	tCardSoul_LoseReward[3390075]["SzObj"] = "self"
	tCardSoul_LoseReward[3390075]["RewardEffect"] = {}
	tCardSoul_LoseReward[3390075]["RewardEffect"]["Effect"] = "angelwing"
	tCardSoul_LoseReward[3390076] = {}
	tCardSoul_LoseReward[3390076]["RewardExpTime"] = {}
	tCardSoul_LoseReward[3390076]["RewardExpTime"]["Value"] = 50
	tCardSoul_LoseReward[3390076]["LogId"] = 12001361
	tCardSoul_LoseReward[3390076]["SzObj"] = "self"
	tCardSoul_LoseReward[3390076]["RewardEffect"] = {}
	tCardSoul_LoseReward[3390076]["RewardEffect"]["Effect"] = "angelwing"
	tCardSoul_LoseReward[3390077] = {}
	tCardSoul_LoseReward[3390077]["RewardExpTime"] = {}
	tCardSoul_LoseReward[3390077]["RewardExpTime"]["Value"] = 100
	tCardSoul_LoseReward[3390077]["LogId"] = 12001361
	tCardSoul_LoseReward[3390077]["SzObj"] = "self"
	tCardSoul_LoseReward[3390077]["RewardEffect"] = {}
	tCardSoul_LoseReward[3390077]["RewardEffect"]["Effect"] = "angelwing"
	tCardSoul_LoseReward[3390078] = {}
	tCardSoul_LoseReward[3390078]["RewardExpTime"] = {}
	tCardSoul_LoseReward[3390078]["RewardExpTime"]["Value"] = 150
	tCardSoul_LoseReward[3390078]["LogId"] = 12001361
	tCardSoul_LoseReward[3390078]["SzObj"] = "self"
	tCardSoul_LoseReward[3390078]["RewardEffect"] = {}
	tCardSoul_LoseReward[3390078]["RewardEffect"]["Effect"] = "angelwing"
	tCardSoul_LoseReward[3390079] = {}
	tCardSoul_LoseReward[3390079]["RewardExpTime"] = {}
	tCardSoul_LoseReward[3390079]["RewardExpTime"]["Value"] = 200
	tCardSoul_LoseReward[3390079]["LogId"] = 12001361
	tCardSoul_LoseReward[3390079]["SzObj"] = "self"
	tCardSoul_LoseReward[3390079]["RewardEffect"] = {}
	tCardSoul_LoseReward[3390079]["RewardEffect"]["Effect"] = "angelwing"
	tCardSoul_LoseReward[3390080] = {}
	tCardSoul_LoseReward[3390080]["RewardExpTime"] = {}
	tCardSoul_LoseReward[3390080]["RewardExpTime"]["Value"] = 250
	tCardSoul_LoseReward[3390080]["LogId"] = 12001361
	tCardSoul_LoseReward[3390080]["SzObj"] = "self"
	tCardSoul_LoseReward[3390080]["RewardEffect"] = {}
	tCardSoul_LoseReward[3390080]["RewardEffect"]["Effect"] = "angelwing"
	tCardSoul_LoseReward[3390081] = {}
	tCardSoul_LoseReward[3390081]["RewardExpTime"] = {}
	tCardSoul_LoseReward[3390081]["RewardExpTime"]["Value"] = 300
	tCardSoul_LoseReward[3390081]["LogId"] = 12001361
	tCardSoul_LoseReward[3390081]["SzObj"] = "self"
	tCardSoul_LoseReward[3390081]["RewardEffect"] = {}
	tCardSoul_LoseReward[3390081]["RewardEffect"]["Effect"] = "angelwing"
	tCardSoul_LoseReward[3390082] = {}
	tCardSoul_LoseReward[3390082]["RewardExpTime"] = {}
	tCardSoul_LoseReward[3390082]["RewardExpTime"]["Value"] = 500
	tCardSoul_LoseReward[3390082]["LogId"] = 12001361
	tCardSoul_LoseReward[3390082]["SzObj"] = "self"
	tCardSoul_LoseReward[3390082]["RewardEffect"] = {}
	tCardSoul_LoseReward[3390082]["RewardEffect"]["Effect"] = "angelwing"
	tCardSoul_LoseReward[3390083] = {}
	tCardSoul_LoseReward[3390083]["RewardExpTime"] = {}
	tCardSoul_LoseReward[3390083]["RewardExpTime"]["Value"] = 800
	tCardSoul_LoseReward[3390083]["LogId"] = 12001361
	tCardSoul_LoseReward[3390083]["SzObj"] = "self"
	tCardSoul_LoseReward[3390083]["RewardEffect"] = {}
	tCardSoul_LoseReward[3390083]["RewardEffect"]["Effect"] = "angelwing"
	
--失败给bp积分
local tCardSoul_LoseScoreReward = {}
	tCardSoul_LoseScoreReward[3390074] = {}
	tCardSoul_LoseScoreReward[3390074]["Score"] = 1
	tCardSoul_LoseScoreReward[3390075] = {}
	tCardSoul_LoseScoreReward[3390075]["Score"] = 2
	tCardSoul_LoseScoreReward[3390076] = {}
	tCardSoul_LoseScoreReward[3390076]["Score"] = 4
	tCardSoul_LoseScoreReward[3390077] = {}
	tCardSoul_LoseScoreReward[3390077]["Score"] = 8
	tCardSoul_LoseScoreReward[3390078] = {}
	tCardSoul_LoseScoreReward[3390078]["Score"] = 16
	tCardSoul_LoseScoreReward[3390079] = {}
	tCardSoul_LoseScoreReward[3390079]["Score"] = 32
	tCardSoul_LoseScoreReward[3390080] = {}
	tCardSoul_LoseScoreReward[3390080]["Score"] = 64
	tCardSoul_LoseScoreReward[3390081] = {}
	tCardSoul_LoseScoreReward[3390081]["Score"] = 128
	tCardSoul_LoseScoreReward[3390082] = {}
	tCardSoul_LoseScoreReward[3390082]["Score"] = 256
	tCardSoul_LoseScoreReward[3390083] = {}
	tCardSoul_LoseScoreReward[3390083]["Score"] = 512
	
	-- 投注正确不同阶灵珠对应发奖 最低二阶
local tCardSoul_WinAction = {}
	tCardSoul_WinAction[3390074] = {}
	tCardSoul_WinAction[3390074][1] = 571858
	tCardSoul_WinAction[3390074][2] = 571842
	tCardSoul_WinAction[3390074][3] = 571844
	tCardSoul_WinAction[3390074][4] = 571846
	tCardSoul_WinAction[3390074][5] = 571848
	tCardSoul_WinAction[3390075] = {}
	tCardSoul_WinAction[3390075][1] = 571859
	tCardSoul_WinAction[3390075][2] = 571843
	tCardSoul_WinAction[3390075][3] = 571845
	tCardSoul_WinAction[3390075][4] = 571847
	tCardSoul_WinAction[3390075][5] = 571849
	tCardSoul_WinAction[3390076] = {}
	tCardSoul_WinAction[3390076][1] = 571860
	tCardSoul_WinAction[3390076][2] = 571844
	tCardSoul_WinAction[3390076][3] = 571846
	tCardSoul_WinAction[3390076][4] = 571848
	tCardSoul_WinAction[3390076][5] = 571850
	tCardSoul_WinAction[3390077] = {}
	tCardSoul_WinAction[3390077][1] = 571861
	tCardSoul_WinAction[3390077][2] = 571845
	tCardSoul_WinAction[3390077][3] = 571847
	tCardSoul_WinAction[3390077][4] = 571849
	tCardSoul_WinAction[3390077][5] = 571851
	tCardSoul_WinAction[3390078] = {}
	tCardSoul_WinAction[3390078][1] = 571862
	tCardSoul_WinAction[3390078][2] = 571846
	tCardSoul_WinAction[3390078][3] = 571848
	tCardSoul_WinAction[3390078][4] = 571850
	tCardSoul_WinAction[3390078][5] = 571852
	tCardSoul_WinAction[3390079] = {}
	tCardSoul_WinAction[3390079][1] = 571863
	tCardSoul_WinAction[3390079][2] = 571847
	tCardSoul_WinAction[3390079][3] = 571849
	tCardSoul_WinAction[3390079][4] = 571851
	tCardSoul_WinAction[3390079][5] = 571853
	tCardSoul_WinAction[3390080] = {}
	tCardSoul_WinAction[3390080][1] = 571864
	tCardSoul_WinAction[3390080][2] = 571848
	tCardSoul_WinAction[3390080][3] = 571850
	tCardSoul_WinAction[3390080][4] = 571852
	tCardSoul_WinAction[3390080][5] = 571854
	tCardSoul_WinAction[3390081] = {}
	tCardSoul_WinAction[3390081][1] = 571865
	tCardSoul_WinAction[3390081][2] = 571849
	tCardSoul_WinAction[3390081][3] = 571851
	tCardSoul_WinAction[3390081][4] = 571853
	tCardSoul_WinAction[3390081][5] = 571855
	tCardSoul_WinAction[3390082] = {}
	tCardSoul_WinAction[3390082][1] = 571866
	tCardSoul_WinAction[3390082][2] = 571850
	tCardSoul_WinAction[3390082][3] = 571852
	tCardSoul_WinAction[3390082][4] = 571854
	tCardSoul_WinAction[3390082][5] = 571856
	tCardSoul_WinAction[3390083] = {}
	tCardSoul_WinAction[3390083][1] = 571867
	tCardSoul_WinAction[3390083][2] = 571851
	tCardSoul_WinAction[3390083][3] = 571853
	tCardSoul_WinAction[3390083][4] = 571855
	tCardSoul_WinAction[3390083][5] = 571856
	
	
	-- 记录玩家炼丹
local tCardSoul_Stove = {}
-- 阴炉
	tCardSoul_Stove[1] = {}
-- 阳炉
	tCardSoul_Stove[2] = {}
local tCardSoul_StoveWin = {}
local tCardSoul_StoveLose = {}
	-- 已判断阴阳炉成功标志
local tCardSoul_StoveFlag = 0
local nCardSoul_Random
-- 最近成功的炉子
local tCardSoul_NewSuccess = {}
-- 炉子期数
local nCardSoul_SuccessNum = 1
-- 最近高级灵珠
local tCardSoul_NewLucky = {}
-- 倒计时播放
local nCardSoul_djs = 0
----------------------------------逻辑部分---------------------------------------------
-- 返回投注正确给玩家的发奖Id,和是否公告
function CardSoul_GetUserActionIndex(nItemId)
	local tTab,flag
	if nItemId == 3390083 then
		flag,tTab = Probabil_RandomAward(tCardSoul_Random,2)
	else
		flag,tTab = Probabil_RandomAward(tCardSoul_Random,1)
	end
	local nActionIndex = tTab[1]["tAward"][1]["Index"]
	local nBroadcast = 0
	if nActionIndex >= 4 then
		nBroadcast = 1
	end
	return nActionIndex,nBroadcast
	-- return tCardSoul_WinAction[nItemId][nActionIndex],nBroadcast
end

-- 确认炼丹 nIndex(1为阴炉，2阳炉)
function CardSoul_SelectStove(nItemId,nIndex)
	local nNpcId = Get_NpcId()
	nNpcId = tCardSoul_CopyNpc[nNpcId]
	if Sys_ChkDayTime(tCardSoul_Time["DayNoTime"]) then
		Sys_MsgBox(tCardSoul_Text["Smelting"])
		return
	end
	--判断物品存在
	local sItemName = Get_ItemtypeName(nItemId)
	if not Item_ChkItem(nItemId) then
		tNpcGossip[nNpcId]["Text141"] = string.format(tCardSoul_Text[nNpcId]["Text141"],sItemName)
		LinkNpcGossipFunc_New(nNpcId,"1-4")
		return
	end
	local nSec = tonumber(os.date("%S"))%30
	if nSec == 0 or nSec > 27 then
		Sys_MsgBox(tCardSoul_Text["Smelting"])
		return
	end
	local nUserId = Get_UserId()
	if tCardSoul_Stove[nIndex][nUserId] ~= nil or tCardSoul_Stove[3-nIndex][nUserId] ~= nil then
		Sys_MsgBox(tCardSoul_Text["Smelted"])
		return
	end
	if RewardTemplate_UseItemAndMsg(tCardSoul_Delete[nItemId]) then
		tCardSoul_Stove[nIndex][nUserId] = tCardSoul_Stove[nIndex][nUserId] or {}
		tCardSoul_Stove[nIndex][nUserId]["UserName"] = Get_UserName()
		tCardSoul_Stove[nIndex][nUserId]["ItemId"] = nItemId
		User_EffectAdd("self","angelwing",nUserId)
		local sNpcName = Get_NpcName(nNpcId)
		Sys_MsgBox(string.format((tCardSoul_Text["SuccessPut"]),sNpcName,sItemName))
		-- LinkNpcGossipFunc_New(nNpcId,"1-1")
	end
end

-- 邮件发奖
function CardSoul_SendMail(nUserId,nItemId,nActionIndex,nCardSoul_Random,tSender,tContent,sTitle)
	local sItemName = Get_ItemtypeName(nItemId)
	local nActionId = tCardSoul_WinAction[nItemId][nActionIndex]
	local sContent = string.format(tContent["Win"],sItemName,tCardSoul_Text["Action"][nActionId])
	Sys_SendMail(nUserId,0,0,nActionId,0,30,tSender[nCardSoul_Random],sTitle,sContent)
end

-- 开炉 30秒1次 0-27投丹，28-29等待开奖
function CardSoul_OpenStove(nSec)
	if Sys_ChkDayTime(tCardSoul_Time["DayNoTime"]) then
		return
	end
	nSec = nSec%30
	CardSoul_MoveTrap(nSec)
	if (nSec == 28 or nSec == 29) then
		if tCardSoul_StoveFlag == 0 then
			nCardSoul_Random = math.random(1,2)
			tCardSoul_StoveWin = CommonFunc_Copy(tCardSoul_Stove[nCardSoul_Random])
			tCardSoul_StoveLose = CommonFunc_Copy(tCardSoul_Stove[3-nCardSoul_Random])
			tCardSoul_Stove[1] = {}
			tCardSoul_Stove[2] = {}
			tCardSoul_StoveFlag = 1
		end
	else
		if tCardSoul_StoveFlag == 0 then
			return
		end
		CardSoul_StoveEffect(nCardSoul_Random)
		table.insert(tCardSoul_NewSuccess,1,nCardSoul_Random)
		nCardSoul_SuccessNum = nCardSoul_SuccessNum+1
		if tCardSoul_NewSuccess[21] ~= nil then
			tCardSoul_NewSuccess[21] = nil
		end
		-- 成功的炉子
		local nNpcId = tCardSoul_Npc[nCardSoul_Random]
		local nNpcMapId,nNpcPosX,nNpcPosY = NpcPosition_Get(nNpcId)
		-- Map_Effect(nNpcMapId,nNpcPosX,nNpcPosY,"npc_liandanlu_1")
		-- Map_Effect(nNpcMapId,nNpcPosX,nNpcPosY,"glebesword")
		local tSender = tCardSoul_Text["Sender"]
		local sTitle = tCardSoul_Text["Title"]
		local tContent = tCardSoul_Text["Content"]
		-- 成功炉子
		for k,v in pairs(tCardSoul_StoveWin) do
			local nUserId = k
			local nItemId = tCardSoul_StoveWin[nUserId]["ItemId"]
			local nActionIndex,nBroadcast = CardSoul_GetUserActionIndex(nItemId)
			local sItemName = Get_ItemtypeName(nItemId)
			-- 判断玩家是否在线
			if not User_IsUserOnline(nUserId) then
				CardSoul_SendMail(nUserId,nItemId,nActionIndex,nCardSoul_Random,tSender,tContent,sTitle)
			else
				local sUserName = Get_UserName(nUserId)
				if sUserName == tCardSoul_StoveWin[nUserId]["UserName"] then
					local nSpace = RewardTemplate_GetRewardSpace(tCardSoul_WinReward[nItemId][nActionIndex],nUserId)
					if not User_CheckLeftSpace(nSpace,nUserId) then
						CardSoul_SendMail(nUserId,nItemId,nActionIndex,nCardSoul_Random,tSender,tContent,sTitle)
					else
						RewardTemplate_UseItemAndMsg(tCardSoul_WinReward[nItemId][nActionIndex],nUserId)
						if nActionIndex == 1 then
							local sRewardName = Get_ItemtypeName(tCardSoul_WinReward[nItemId][nActionIndex]["RewardItem"][1]["Id"])
							Sys_MsgBox(string.format(tCardSoul_Text["Msg"]["Success2"],sRewardName),nil,nil,nUserId)
						else
							local sRewardName = Get_ItemtypeName(tCardSoul_WinReward[nItemId][nActionIndex]["RewardItem"][1]["Id"])
							Sys_MsgBox(string.format(tCardSoul_Text["Msg"]["Success1"],sRewardName),nil,nil,nUserId)
							if tCardSoul_WinReward[nItemId][nActionIndex]["RewardItem"][1]["Id"] >= 3390085 then
								local sLeft = string.format(tCardSoul_Text["Lucky"],sItemName,sRewardName)
								local sLast = sUserName.."\n"
								local sText = Sys_CenterAline(sLeft,16,sLast,37)
								table.insert(tCardSoul_NewLucky,1,sText)
								if tCardSoul_NewLucky[11] ~= nil then
									tCardSoul_NewLucky[11] = nil
								end
							end
						end
					end
				end
			end
			-- 公告
			if nBroadcast == 1 then
				local nActionId = tCardSoul_WinAction[nItemId][nActionIndex]
				local sBroadcast
				if SpecialServer_ChkNoGiftServer() then
					sBroadcast = tCardSoul_Text["Broadcast"]["NoGift"]
				else
					sBroadcast = tCardSoul_Text["Broadcast"]["Normal"]
				end
				Sys_SystemBroadcast(string.format(sBroadcast,v["UserName"],sItemName,tCardSoul_Text["Action"][nActionId]))
			end
		end
		-- 失败炉子
		for k,v in pairs(tCardSoul_StoveLose) do
			local nUserId = k
			local nItemId = tCardSoul_StoveLose[nUserId]["ItemId"]
			local sItemName = Get_ItemtypeName(nItemId)
				-- 判断玩家是否在线
			if not User_IsUserOnline(nUserId) then
				Sys_SendMail(nUserId,0,0,0,0,30,tSender[3-nCardSoul_Random],sTitle,string.format(tContent["Lose"],sItemName))
			else
				local sUserName = Get_UserName(nUserId)
				if sUserName == tCardSoul_StoveLose[nUserId]["UserName"] then
					if Get_UserLevel(nUserId) < G_User_MaxLev then
						RewardTemplate_UseItemAndMsg(tCardSoul_LoseReward[nItemId],nUserId)
						local nEXPTime = tCardSoul_LoseReward[nItemId]["RewardExpTime"]["Value"]
						Sys_MsgBox(string.format(tCardSoul_Text["Msg"]["Fail"],nEXPTime),nil,nil,nUserId)
					end
					
					--给bp积分
					local nBpScore=tCardSoul_LoseScoreReward[nItemId]["Score"]
					User_AddUserSeasonScore(nBpScore,nUserId)
					
				end
			end
		end
		tCardSoul_StoveFlag = 0
	end
end

-- 打开商店
function CardSoul_OpenShop()
	local nNpcId = Get_NpcId()
	nNpcId = tCardSoul_CopyNpc[nNpcId]
	if not Sys_ChkFullTime(tCardSoul_Time["ActTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end
	User_OpenDialog()
end

-- 独立玩家的对白
function CardSoul_LinkUserOption()
	local nUserId = Get_UserId()
	local nNpcId = Get_NpcId()
	nNpcId = tCardSoul_CopyNpc[nNpcId]
	local sLink = nUserId.."-1"
	if Item_ChkMulItem(3390074,3390083,1) then
		tNpcGossip[nNpcId]["Text2-1"] = {211}
	else
		tNpcGossip[nNpcId]["Text2-1"] = {212}
	end
	tNpcGossip[nNpcId]["Text"..sLink] = tNpcGossip[nNpcId]["Text2-1"]
	tNpcGossip[nNpcId]["tOption"..sLink] = tNpcGossip[nNpcId]["tOption2-1"]
	LinkNpcGossipFunc_New(nNpcId,sLink)
end

-- 是否屏蔽二次确认
function CardSoul_JudgeShiledSec()
	local nEventType = tCardSoul_Stc["EventType"]
	local nDataType = tCardSoul_Stc["DataType"]
	local nStc = Get_UserStatisticValue(nEventType,nDataType)
	if nStc == 0 then
		return false
	else
		return true
	end
end

-- 屏蔽二次确认
function CardSoul_ShiledSec()
	local nEventType = tCardSoul_Stc["EventType"]
	local nDataType = tCardSoul_Stc["DataType"]
	Task_SetStatistic(nEventType,nDataType,1,1)
	local nNpcId = Get_NpcId()
	nNpcId = tCardSoul_CopyNpc[nNpcId]
	LinkNpcGossipFunc_New(nNpcId,"1-1")
end

-- 屏蔽二次确认直接炼丹
function CardSoul_SelectStoveShiledSec(nItemId,nIndex,sLink)
	local nNpcId = Get_NpcId()
	nNpcId = tCardSoul_CopyNpc[nNpcId]
	--判断物品存在
	local sItemName = Get_ItemtypeName(nItemId)
	if not Item_ChkItem(nItemId) then
		tNpcGossip[nNpcId]["Text141"] = string.format(tCardSoul_Text[nNpcId]["Text141"],sItemName)
		LinkNpcGossipFunc_New(nNpcId,"1-4")
		return
	end
	if CardSoul_JudgeShiledSec() then
		CardSoul_SelectStove(nItemId,nIndex)
	else
		local nNpcId = Get_NpcId()
		nNpcId = tCardSoul_CopyNpc[nNpcId]
		LinkNpcGossipFunc_New(nNpcId,sLink)
	end
end

function CardSoul_Login()
	local nEventType = tCardSoul_Stc["EventType"]
	local nDataType = tCardSoul_Stc["DataType"]
	Task_SetStatistic(nEventType,nDataType,0,1)
end

-- 熔炼之星榜单（临时表）
function CardSoul_ShowNewLucky()
	local nNpcId = Get_NpcId()
	nNpcId = tCardSoul_CopyNpc[nNpcId]
	for k,v in pairs(tCardSoul_NewLucky) do
		--名字处理
		v = string.gsub(v, "<", " ")
		v = string.gsub(v, ">", " ")
		tNpcGossip[nNpcId]["Text1".. 13+k] = v
	end
	if tNpcGossip[nNpcId]["Text114"] == tCardSoul_Text[nNpcId]["Text114"] then
		tNpcGossip[nNpcId]["Text114"] = tCardSoul_Text["NoLucky"]
	end
end

-- 最近成功的炉子（临时表）
function CardSoul_ShowNewSuccess()
	local nNpcId = Get_NpcId()
	nNpcId = tCardSoul_CopyNpc[nNpcId]
	for k=1,10 do
		if tCardSoul_NewSuccess[k] ~= nil then
			local sSuccessStove = tCardSoul_Text["StoveColor"][tCardSoul_NewSuccess[k]]
			local sSuccessNum = string.format(tCardSoul_Text[nNpcId]["Text2".. 13+k],nCardSoul_SuccessNum-k)
			local sText = Sys_CenterAline(sSuccessStove,16,sSuccessNum,37)
			tNpcGossip[nNpcId]["Text2".. 13+k] = sText
		elseif k == 1 then
			tNpcGossip[nNpcId]["Text2".. 13+k] = tCardSoul_Text["NoLucky"]
		else
			tNpcGossip[nNpcId]["Text2".. 13+k] = ""
		end
	end
	for k=11,20 do
		if tCardSoul_NewSuccess[k] ~= nil then
			local sSuccessStove = tCardSoul_Text["StoveColor"][tCardSoul_NewSuccess[k]]
			local sSuccessNum = string.format(tCardSoul_Text[nNpcId]["Text3".. 3+k],nCardSoul_SuccessNum-k)
			local sText = Sys_CenterAline(sSuccessStove,16,sSuccessNum,37)
			tNpcGossip[nNpcId]["Text3".. 3+k] = sText
		else
			tNpcGossip[nNpcId]["Text3".. 3+k] = ""
		end
	end
end

-- 点击双鼎
function CardSoul_Main()
	local nNpcId = Get_NpcId()
	nNpcId = tCardSoul_CopyNpc[nNpcId]
	if Sys_ChkDayTime(tCardSoul_Time["DayNoTime"]) then
		Sys_MsgBox(tCardSoul_Text["Smelting"])
		return
	end
	local nSec = tonumber(os.date("%S"))%30
	if nSec == 0 or nSec > 27 then
		Sys_MsgBox(tCardSoul_Text["Smelting"])
		return
	end
	local nUserId = Get_UserId()
	if tCardSoul_Stove[1][nUserId] ~= nil then
		local sItemName = Get_ItemtypeName(tCardSoul_Stove[1][nUserId]["ItemId"])
		Sys_MsgBox(string.format(tCardSoul_Text["Smelted"],tCardSoul_Text["Sender"][1],sItemName))
		return
	end
	if tCardSoul_Stove[2][nUserId] ~= nil then
		local sItemName = Get_ItemtypeName(tCardSoul_Stove[2][nUserId]["ItemId"])
		Sys_MsgBox(string.format(tCardSoul_Text["Smelted"],tCardSoul_Text["Sender"][2],sItemName))
		return
	end
	LinkNpcGossipFunc_New(nNpcId,"1-1")
end

-- 传送进双鼎
function CardSoul_Trans()
	local nMapId = tCardSoul_Map["MapId"]
	local nPosX = tCardSoul_Map["PosX"]
	local nPosY = tCardSoul_Map["PosY"]
	local nUserId = Get_UserId()
	User_UserRandBoundTrans(nMapId,nPosX,nPosY,2,2,1,nUserId)
	Sys_MsgBox(tCardSoul_Text["IntoMap"])
end

-- 传送回双龙城
function CardSoul_BackCity()
	if not SpecialServer_ChkNoGiftServer() then
		local nMapId = tCardSoul_BackCity["Normal"]["MapId"]
		local nPosX = tCardSoul_BackCity["Normal"]["PosX"]
		local nPosY = tCardSoul_BackCity["Normal"]["PosY"]
		local nUserId = Get_UserId()
		User_UserRandBoundTrans(nMapId,nPosX,nPosY,5,5,1,nUserId)
		Sys_MsgBox(tCardSoul_Text["BackCity"]["Normal"])
	else
		local nMapId = tCardSoul_BackCity["NoGift"]["MapId"]
		local nPosX = tCardSoul_BackCity["NoGift"]["PosX"]
		local nPosY = tCardSoul_BackCity["NoGift"]["PosY"]
		local nUserId = Get_UserId()
		User_UserRandBoundTrans(nMapId,nPosX,nPosY,5,5,1,nUserId)
		Sys_MsgBox(tCardSoul_Text["BackCity"]["NoGift"])
	end
end

-- 播放成功失败光效
function CardSoul_StoveEffect(nCardSoul_Random)
	local nNpcId1 = tCardSoul_Npc[1]
	local nNpcId2 = tCardSoul_Npc[2]
	local nNpcId3 = tCardSoul_Npc[3]
	local nNpcId4 = tCardSoul_Npc[4]
	local nNpcMapId1,nNpcPosX1,nNpcPosY1 = NpcPosition_Get(nNpcId1)
	local nNpcMapId2,nNpcPosX2,nNpcPosY2 = NpcPosition_Get(nNpcId2)
	local nNpcMapId3,nNpcPosX3,nNpcPosY3 = NpcPosition_Get(nNpcId3)
	local nNpcMapId4,nNpcPosX4,nNpcPosY4 = NpcPosition_Get(nNpcId4)
	local sSuccessEffectName = tCardSoul_TrapType["ylcg"]
	local sFailEffectName = tCardSoul_TrapType["ylsb"]
	if nCardSoul_Random == 1 then
		Map_Effect(nNpcMapId1,nNpcPosX1-12,nNpcPosY1-12,"DragonSoul_ylcg")
		Map_Effect(nNpcMapId1,nNpcPosX1+3,nNpcPosY1+3,sSuccessEffectName)
		Map_Effect(nNpcMapId2,nNpcPosX2-12,nNpcPosY2-12,"DragonSoul_ylsb")
		Map_Effect(nNpcMapId2,nNpcPosX2,nNpcPosY2,sFailEffectName)
		Map_Effect(nNpcMapId3,nNpcPosX3-12,nNpcPosY3-12,"DragonSoul_ylcg")
		Map_Effect(nNpcMapId3,nNpcPosX3+3,nNpcPosY3+3,sSuccessEffectName)
		Map_Effect(nNpcMapId4,nNpcPosX4-12,nNpcPosY4-12,"DragonSoul_ylsb")
		Map_Effect(nNpcMapId4,nNpcPosX4,nNpcPosY4,sFailEffectName)
	else
		Map_Effect(nNpcMapId1,nNpcPosX1-12,nNpcPosY1-12,"DragonSoul_ylsb")
		Map_Effect(nNpcMapId1,nNpcPosX1,nNpcPosY1,sFailEffectName)
		Map_Effect(nNpcMapId2,nNpcPosX2-12,nNpcPosY2-12,"DragonSoul_ylcg")
		Map_Effect(nNpcMapId2,nNpcPosX2+3,nNpcPosY2+3,sSuccessEffectName)
		Map_Effect(nNpcMapId3,nNpcPosX3-12,nNpcPosY3-12,"DragonSoul_ylsb")
		Map_Effect(nNpcMapId3,nNpcPosX3,nNpcPosY3,sFailEffectName)
		Map_Effect(nNpcMapId4,nNpcPosX4-12,nNpcPosY4-12,"DragonSoul_ylcg")
		Map_Effect(nNpcMapId4,nNpcPosX4+3,nNpcPosY4+3,sSuccessEffectName)
	end
end

-- 移动地效
function CardSoul_MoveTrap(nSec)
	-- 准备冶炼中
	if nSec == 0 then
		-- 删除陷阱
		local nTrapType = tCardSoul_TrapType["zzyl"]["TrapType"]
		local nMapId = tCardSoul_TrapType["zzyl"][1]["MapId"]
		local nMapCount = MoveTrap_GetCount(nTrapType,nMapId)
		if nMapCount > 0 then
			Trap_DelMapTrap(nMapId,nTrapType)
		end
		local nMapId = tCardSoul_TrapType["zzyl"][2]["MapId"]
		local nMapCount = MoveTrap_GetCount(nTrapType,nMapId)
		if nMapCount > 0 then
			Trap_DelMapTrap(nMapId,nTrapType)
		end
		-- 创建陷阱
		local nTrapType = tCardSoul_TrapType["zbylz"]["TrapType"]
		
		local nLook = tCardSoul_TrapType["zbylz"]["Look"]
		local nMapId = tCardSoul_TrapType["zbylz"][1]["MapId"]
		local nPosX = tCardSoul_TrapType["zbylz"][1]["PosX"]
		local nPosY = tCardSoul_TrapType["zbylz"][1]["PosY"]
		local nMapCount = MoveTrap_GetCount(nTrapType,nMapId)
		if nMapCount == 0 then
			Trap_CreateMapTrap(nTrapType,nLook,0,nMapId,nPosX,nPosY,0,0)
		end
		local nMapId = tCardSoul_TrapType["zbylz"][2]["MapId"]
		local nPosX = tCardSoul_TrapType["zbylz"][2]["PosX"]
		local nPosY = tCardSoul_TrapType["zbylz"][2]["PosY"]
		local nMapCount = MoveTrap_GetCount(nTrapType,nMapId)
		if nMapCount == 0 then
			Trap_CreateMapTrap(nTrapType,nLook,0,nMapId,nPosX,nPosY,0,0)
		end
	end
	-- 正在冶炼
	if nSec == 28 or nSec == 29 then
		-- 创建陷阱
		local nTrapType = tCardSoul_TrapType["zzyl"]["TrapType"]
		local nLook = tCardSoul_TrapType["zzyl"]["Look"]
		local nMapId = tCardSoul_TrapType["zzyl"][1]["MapId"]
		local nPosX = tCardSoul_TrapType["zzyl"][1]["PosX"]
		local nPosY = tCardSoul_TrapType["zzyl"][1]["PosY"]
		local nMapCount = MoveTrap_GetCount(nTrapType,nMapId)
		if nMapCount == 0 then
			Trap_CreateMapTrap(nTrapType,nLook,0,nMapId,nPosX,nPosY,0,0)
		end
		local nMapId = tCardSoul_TrapType["zzyl"][2]["MapId"]
		local nPosX = tCardSoul_TrapType["zzyl"][2]["PosX"]
		local nPosY = tCardSoul_TrapType["zzyl"][2]["PosY"]
		local nMapCount = MoveTrap_GetCount(nTrapType,nMapId)
		if nMapCount == 0 then
			Trap_CreateMapTrap(nTrapType,nLook,0,nMapId,nPosX,nPosY,0,0)
		end
	end
	-- 倒计时
	if nSec == 23 then
		-- 删除陷阱
		local nTrapType = tCardSoul_TrapType["zbylz"]["TrapType"]
		local nMapId = tCardSoul_TrapType["zbylz"][1]["MapId"]
		local nMapCount = MoveTrap_GetCount(nTrapType,nMapId)
		if nMapCount > 0 then
			Trap_DelMapTrap(nMapId,nTrapType)
		end
		local nMapId = tCardSoul_TrapType["zbylz"][2]["MapId"]
		local nMapCount = MoveTrap_GetCount(nTrapType,nMapId)
		if nMapCount > 0 then
			Trap_DelMapTrap(nMapId,nTrapType)
		end
		if nCardSoul_djs == 0 then
			local nMapId = tCardSoul_TrapType["djs"][1]["MapId"]
			local nPosX = tCardSoul_TrapType["djs"][1]["PosX"]
			local nPosY = tCardSoul_TrapType["djs"][1]["PosY"]
			local sEffectName = tCardSoul_TrapType["djs"]["EffectName"]
			Map_Effect(nMapId,nPosX,nPosY,sEffectName)
			local nMapId = tCardSoul_TrapType["djs"][2]["MapId"]
			local nPosX = tCardSoul_TrapType["djs"][2]["PosX"]
			local nPosY = tCardSoul_TrapType["djs"][2]["PosY"]
			Map_Effect(nMapId,nPosX,nPosY,sEffectName)
			nCardSoul_djs = 1
		end
	else
		nCardSoul_djs = 0
	end
end
----------------------------------NPC部分---------------------------------------------
tNpcFace[1460] = 2093
tNpcFace[1461] = 2093
-- 玄阴八卦炉
tNpcGossip[23934]= tNpcGossip[23934] or DefaultNpc:new{}
tNpcGossip[23934]["OptionHidden"] = 1
tNpcGossip[23934]["DialogueText"] = tCardSoul_Text[23934]
-- 可炼丹
-- tNpcGossip[23934]["Text1-1"] = {111,112,611,612,613,614,615,616,617,618,619,620,621,622,623,112,118,119}
tNpcGossip[23934]["Text1-1"] = {111,112}
tNpcGossip[23934]["tOption1-1"] = {221,220,219,218,217,216,215,214,213,212}
tNpcGossip[23934]["OptionFunc111"] = "CardSoul_LinkUserOption"
tNpcGossip[23934]["OptionPoint112"] = "7-1"
-- 不可炼丹
tNpcGossip[23934]["Text1-2"] = {111,112,121,112,122}
tNpcGossip[23934]["tOption1-2"] = {121}
-- 活动后
tNpcGossip[23934]["Text1-3"] = {131}
tNpcGossip[23934]["tOption1-3"] = {131}
-- 没有相应灵珠
tNpcGossip[23934]["Text1-4"] = {141}
tNpcGossip[23934]["tOption1-4"] = {141}
-- 重炼灵珠
-- 不可炼丹
-- tNpcGossip[23934]["Text2-1"] = {211,212}
-- tNpcGossip[23934]["tOption2-1"] = {211,212,213,214,215,216,217,218,219,220,221,222}
-- tNpcGossip[23934]["OptionFunc222"] = "CardSoul_OpenShop"
-- tNpcGossip[23934]["OptionChkFunc222"] = function ()
	-- return not Item_ChkMulItem(3390073,3390083,1)
-- end
-- for i=211,221 do
	-- local nItemId = 3390073+i-211
	-- tNpcGossip[23934]["OptionChkFunc"..i] = function()
		-- return Item_ChkItem(nItemId)
	-- end
-- end
tNpcGossip[23934]["OptionFunc211"] = "CardSoul_SelectStoveShiledSec</N>3390073</N>1</S>3-1"
tNpcGossip[23934]["OptionFunc212"] = "CardSoul_SelectStoveShiledSec</N>3390074</N>1</S>3-2"
tNpcGossip[23934]["OptionFunc213"] = "CardSoul_SelectStoveShiledSec</N>3390075</N>1</S>3-3"
tNpcGossip[23934]["OptionFunc214"] = "CardSoul_SelectStoveShiledSec</N>3390076</N>1</S>3-4"
tNpcGossip[23934]["OptionFunc215"] = "CardSoul_SelectStoveShiledSec</N>3390077</N>1</S>3-5"
tNpcGossip[23934]["OptionFunc216"] = "CardSoul_SelectStoveShiledSec</N>3390078</N>1</S>3-6"
tNpcGossip[23934]["OptionFunc217"] = "CardSoul_SelectStoveShiledSec</N>3390079</N>1</S>3-7"
tNpcGossip[23934]["OptionFunc218"] = "CardSoul_SelectStoveShiledSec</N>3390080</N>1</S>3-8"
tNpcGossip[23934]["OptionFunc219"] = "CardSoul_SelectStoveShiledSec</N>3390081</N>1</S>3-9"
tNpcGossip[23934]["OptionFunc220"] = "CardSoul_SelectStoveShiledSec</N>3390082</N>1</S>4-1"
tNpcGossip[23934]["OptionFunc221"] = "CardSoul_SelectStoveShiledSec</N>3390083</N>1</S>4-2"
-- 炼丹
tNpcGossip[23934]["Text3-1"] = {311}
tNpcGossip[23934]["tOption3-1"] = {311,312}
tNpcGossip[23934]["OptionFunc311"] = "CardSoul_SelectStove</N>3390073</N>1"
tNpcGossip[23934]["OptionPoint312"] = "5-1"
tNpcGossip[23934]["OptionChkFunc312"] = function ()
	if CardSoul_JudgeShiledSec() then
		return false
	else
		return true
	end
end
tNpcGossip[23934]["Text3-2"] = {321}
tNpcGossip[23934]["tOption3-2"] = {321,312}
tNpcGossip[23934]["OptionFunc321"] = "CardSoul_SelectStove</N>3390074</N>1"
tNpcGossip[23934]["Text3-3"] = {331}
tNpcGossip[23934]["tOption3-3"] = {331,312}
tNpcGossip[23934]["OptionFunc331"] = "CardSoul_SelectStove</N>3390075</N>1"
tNpcGossip[23934]["Text3-4"] = {341}
tNpcGossip[23934]["tOption3-4"] = {341,312}
tNpcGossip[23934]["OptionFunc341"] = "CardSoul_SelectStove</N>3390076</N>1"
tNpcGossip[23934]["Text3-5"] = {351}
tNpcGossip[23934]["tOption3-5"] = {351,312}
tNpcGossip[23934]["OptionFunc351"] = "CardSoul_SelectStove</N>3390077</N>1"
tNpcGossip[23934]["Text3-6"] = {361}
tNpcGossip[23934]["tOption3-6"] = {361,312}
tNpcGossip[23934]["OptionFunc361"] = "CardSoul_SelectStove</N>3390078</N>1"
tNpcGossip[23934]["Text3-7"] = {371}
tNpcGossip[23934]["tOption3-7"] = {371,312}
tNpcGossip[23934]["OptionFunc371"] = "CardSoul_SelectStove</N>3390079</N>1"
tNpcGossip[23934]["Text3-8"] = {381}
tNpcGossip[23934]["tOption3-8"] = {381,312}
tNpcGossip[23934]["OptionFunc381"] = "CardSoul_SelectStove</N>3390080</N>1"
tNpcGossip[23934]["Text3-9"] = {391}
tNpcGossip[23934]["tOption3-9"] = {391,312}
tNpcGossip[23934]["OptionFunc391"] = "CardSoul_SelectStove</N>3390081</N>1"
tNpcGossip[23934]["Text4-1"] = {411}
tNpcGossip[23934]["tOption4-1"] = {411,312}
tNpcGossip[23934]["OptionFunc411"] = "CardSoul_SelectStove</N>3390082</N>1"
tNpcGossip[23934]["Text4-2"] = {421}
tNpcGossip[23934]["tOption4-2"] = {421,312}
tNpcGossip[23934]["OptionFunc421"] = "CardSoul_SelectStove</N>3390083</N>1"

-- 屏蔽二次确认
tNpcGossip[23934]["Text5-1"] = {511}
tNpcGossip[23934]["tOption5-1"] = {511,512}
tNpcGossip[23934]["OptionFunc511"] = "CardSoul_ShiledSec"

-- 详细情况
tNpcGossip[23934]["Text7-1"] = {711,712}
tNpcGossip[23934]["tOption7-1"] = {711,712,713}
tNpcGossip[23934]["OptionPoint711"] = "7-2"
tNpcGossip[23934]["OptionFunc712"] = "User_SendWebPage</S>"..sCardSoul_LinkWeb
tNpcGossip[23934]["OptionPoint713"] = "1-1"
tNpcGossip[23934]["Text7-2"] = {721}
tNpcGossip[23934]["tOption7-2"] = {721,722}
tNpcGossip[23934]["OptionPoint721"] = "7-1"

-- 混阳八卦炉
tNpcGossip[23935]= tNpcGossip[23935] or DefaultNpc:new{}
tNpcGossip[23935]["OptionHidden"] = 1
tNpcGossip[23935]["DialogueText"] = tCardSoul_Text[23935]
-- 可炼丹
-- tNpcGossip[23934]["Text1-1"] = {111,112,611,612,613,614,615,616,617,618,619,620,621,622,623,112,118,119}
tNpcGossip[23935]["Text1-1"] = {111,112}
tNpcGossip[23935]["tOption1-1"] = {221,220,219,218,217,216,215,214,213,212}
tNpcGossip[23935]["OptionFunc111"] = "CardSoul_LinkUserOption"
tNpcGossip[23935]["OptionPoint112"] = "7-1"
-- 不可炼丹
tNpcGossip[23935]["Text1-2"] = {111,112,121,112,122}
tNpcGossip[23935]["tOption1-2"] = {121}
-- 活动后
tNpcGossip[23935]["Text1-3"] = {131}
tNpcGossip[23935]["tOption1-3"] = {131}
-- 没有相应灵珠
tNpcGossip[23935]["Text1-4"] = {141}
tNpcGossip[23935]["tOption1-4"] = {141}
-- 重炼灵珠
tNpcGossip[23935]["OptionFunc211"] = "CardSoul_SelectStoveShiledSec</N>3390073</N>2</S>3-1"
tNpcGossip[23935]["OptionFunc212"] = "CardSoul_SelectStoveShiledSec</N>3390074</N>2</S>3-2"
tNpcGossip[23935]["OptionFunc213"] = "CardSoul_SelectStoveShiledSec</N>3390075</N>2</S>3-3"
tNpcGossip[23935]["OptionFunc214"] = "CardSoul_SelectStoveShiledSec</N>3390076</N>2</S>3-4"
tNpcGossip[23935]["OptionFunc215"] = "CardSoul_SelectStoveShiledSec</N>3390077</N>2</S>3-5"
tNpcGossip[23935]["OptionFunc216"] = "CardSoul_SelectStoveShiledSec</N>3390078</N>2</S>3-6"
tNpcGossip[23935]["OptionFunc217"] = "CardSoul_SelectStoveShiledSec</N>3390079</N>2</S>3-7"
tNpcGossip[23935]["OptionFunc218"] = "CardSoul_SelectStoveShiledSec</N>3390080</N>2</S>3-8"
tNpcGossip[23935]["OptionFunc219"] = "CardSoul_SelectStoveShiledSec</N>3390081</N>2</S>3-9"
tNpcGossip[23935]["OptionFunc220"] = "CardSoul_SelectStoveShiledSec</N>3390082</N>2</S>4-1"
tNpcGossip[23935]["OptionFunc221"] = "CardSoul_SelectStoveShiledSec</N>3390083</N>2</S>4-2"
-- 炼丹
tNpcGossip[23935]["Text3-1"] = {311}
tNpcGossip[23935]["tOption3-1"] = {311,312}
tNpcGossip[23935]["OptionFunc311"] = "CardSoul_SelectStove</N>3390073</N>2"
tNpcGossip[23935]["OptionPoint312"] = "5-1"
tNpcGossip[23935]["OptionChkFunc312"] = function ()
	if CardSoul_JudgeShiledSec() then
		return false
	else
		return true
	end
end
tNpcGossip[23935]["Text3-2"] = {321}
tNpcGossip[23935]["tOption3-2"] = {321,312}
tNpcGossip[23935]["OptionFunc321"] = "CardSoul_SelectStove</N>3390074</N>2"
tNpcGossip[23935]["Text3-3"] = {331}
tNpcGossip[23935]["tOption3-3"] = {331,312}
tNpcGossip[23935]["OptionFunc331"] = "CardSoul_SelectStove</N>3390075</N>2"
tNpcGossip[23935]["Text3-4"] = {341}
tNpcGossip[23935]["tOption3-4"] = {341,312}
tNpcGossip[23935]["OptionFunc341"] = "CardSoul_SelectStove</N>3390076</N>2"
tNpcGossip[23935]["Text3-5"] = {351}
tNpcGossip[23935]["tOption3-5"] = {351,312}
tNpcGossip[23935]["OptionFunc351"] = "CardSoul_SelectStove</N>3390077</N>2"
tNpcGossip[23935]["Text3-6"] = {361}
tNpcGossip[23935]["tOption3-6"] = {361,312}
tNpcGossip[23935]["OptionFunc361"] = "CardSoul_SelectStove</N>3390078</N>2"
tNpcGossip[23935]["Text3-7"] = {371}
tNpcGossip[23935]["tOption3-7"] = {371,312}
tNpcGossip[23935]["OptionFunc371"] = "CardSoul_SelectStove</N>3390079</N>2"
tNpcGossip[23935]["Text3-8"] = {381}
tNpcGossip[23935]["tOption3-8"] = {381,312}
tNpcGossip[23935]["OptionFunc381"] = "CardSoul_SelectStove</N>3390080</N>2"
tNpcGossip[23935]["Text3-9"] = {391}
tNpcGossip[23935]["tOption3-9"] = {391,312}
tNpcGossip[23935]["OptionFunc391"] = "CardSoul_SelectStove</N>3390081</N>2"
tNpcGossip[23935]["Text4-1"] = {411}
tNpcGossip[23935]["tOption4-1"] = {411,312}
tNpcGossip[23935]["OptionFunc411"] = "CardSoul_SelectStove</N>3390082</N>2"
tNpcGossip[23935]["Text4-2"] = {421}
tNpcGossip[23935]["tOption4-2"] = {421,312}
tNpcGossip[23935]["OptionFunc421"] = "CardSoul_SelectStove</N>3390083</N>2"
-- 屏蔽二次确认
tNpcGossip[23935]["Text5-1"] = {511}
tNpcGossip[23935]["tOption5-1"] = {511,512}
tNpcGossip[23935]["OptionFunc511"] = "CardSoul_ShiledSec"

-- 详细情况
tNpcGossip[23935]["Text7-1"] = {711,712}
tNpcGossip[23935]["tOption7-1"] = {711,712,713}
tNpcGossip[23935]["OptionPoint711"] = "7-2"
tNpcGossip[23935]["OptionFunc712"] = "User_SendWebPage</S>"..sCardSoul_LinkWeb
tNpcGossip[23935]["OptionPoint713"] = "1-1"
tNpcGossip[23935]["Text7-2"] = {721}
tNpcGossip[23935]["tOption7-2"] = {721,722}
tNpcGossip[23935]["OptionPoint721"] = "7-1"

-- 熔炼之星
tNpcGossip[23936]= tNpcGossip[23936] or DefaultNpc:new{}
tNpcGossip[23936]["OptionHidden"] = 1
tNpcGossip[23936]["DialogueText"] = tCardSoul_Text[23936]
tNpcGossip[23936]["Text1-1"] = {111,112,114,115,116,117,118,119,120,121,122,123,112,113}
tNpcGossip[23936]["tOption1-1"] = {111,113}
tNpcGossip[23936]["ChkFunc1-1"]= function()
	CardSoul_ShowNewLucky()
	return true
end
tNpcGossip[23936]["OptionPoint111"] = "2-1"
tNpcGossip[23936]["OptionPoint112"] = "4-1"
tNpcGossip[23936]["Text2-1"] = {211,212,213,214,215,216,217,218,219,220,221,222,223,212}
tNpcGossip[23936]["tOption2-1"] = {211,212}
tNpcGossip[23936]["ChkFunc2-1"]= function()
	CardSoul_ShowNewSuccess()
	return true
end
tNpcGossip[23936]["OptionChkFunc211"]= function()
	if tCardSoul_NewSuccess[11] == nil then
		return false
	else
		return true
	end
end
tNpcGossip[23936]["OptionPoint211"] = "3-1"
tNpcGossip[23936]["Text3-1"] = {311,312,313,314,315,316,317,318,319,320,321,322,323,312}
tNpcGossip[23936]["tOption3-1"] = {311,312}
tNpcGossip[23936]["ChkFunc3-1"]= function()
	CardSoul_ShowNewSuccess()
	return true
end
tNpcGossip[23936]["OptionPoint311"] = "2-1"
tNpcGossip[23936]["Text4-1"] = {411,412}
tNpcGossip[23936]["tOption4-1"] = {411}
tNpcGossip[23936]["OptionPoint411"] = "1-1"
tNpcGossip[23942]= tNpcGossip[23936]
---------------------------------物品部分---------------------------------------------
tItem[3390072] = tItem[3390072] or {}
tItem[3390072]["Function"] = function(nItemId,sItemName)
	--判断是否在德州比赛，是禁用这个段的礼包
	if User_IsUserInGame() then			
		User_TalkChannel2005(tSpecItem_Use_Msg["NotUseMsg"])
		return
	end	
	if RewardTemplate_UseItemAndMsg(tCardSoul_Reward[nItemId]) then
		local sRewardText = string.format(tCardSoul_Text["Reward"]["Silver"],tCardSoul_Reward[nItemId]["RewardMoney"]["Value"])
		Sys_MsgBox(sRewardText)
	end
end
for i=3390073,3390084 do
	tItem[i] = tItem[3390072]
end

tItem[3390085] = tItem[3390085] or {}
tItem[3390085]["Function"] = function(nItemId,sItemName)
	--判断是否在德州比赛，是禁用这个段的礼包
	if User_IsUserInGame() then			
		User_TalkChannel2005(tSpecItem_Use_Msg["NotUseMsg"])
		return
	end	
	if RewardTemplate_UseItemAndMsg(tCardSoul_Reward[nItemId]) then
		local sItemName = Get_ItemtypeName(nItemId)
		local sRewardText = string.format(tCardSoul_Text["Reward"]["Item"],tCardSoul_Reward[nItemId]["Count"],sItemName)
		Sys_MsgBox(sRewardText)
	end
end
for j=3390086,3390089 do
	tItem[j] = tItem[3390085]
end
---------------------------------陷阱部分---------------------------------------------
-- tTrap[2279] = tTrap[2279] or {}
-- tTrap[2279]["Function"] = function(nTrapId,nTrapType)
	-- CardSoul_BackCity()
-- end
----------------------上线触发--------------------------------------------------------
-- 上线触发
table.insert(tSystem_PlayLogin_Func,CardSoul_Login)
---------------------------------时间自检---------------------------------------------
tSystemTime_Each = tSystemTime_Each or {}
table.insert(tSystemTime_Each,CardSoul_OpenStove)