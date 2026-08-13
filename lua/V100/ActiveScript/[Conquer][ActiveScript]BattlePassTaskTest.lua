------------------------------------------------------------------------------------
--Name：            190404[简体征服][活动脚本]函数封装测试脚本
--Creator:      蔡颖静
--Created:     2019/04/04
------------------------------------------------------------------------------------
--任务需求：

------------------------------------------------------------------------------------
--前缀：tBattlePassTaskTest
--log:12001359

----------------------------------表配置部分--------------------------------------------
local tBattlePassTaskTest_Data={}
	--礼包对应积分
	tBattlePassTaskTest_Data[3320904]=500
	tBattlePassTaskTest_Data[3320905]=1000
	tBattlePassTaskTest_Data[3320993]=300
	tBattlePassTaskTest_Data[3327619]=3000
	tBattlePassTaskTest_Data[3327255]=100
	tBattlePassTaskTest_Data[3327256]=5000
	
	--上线掩码
	tBattlePassTaskTest_Data["Stc"]={}
	tBattlePassTaskTest_Data["Stc"]["LoginEvent"]=193
	tBattlePassTaskTest_Data["Stc"]["LoginType"]=47
	
	--连续上线掩码
	tBattlePassTaskTest_Data["Stc"]["LoginEvent1"]=193
	tBattlePassTaskTest_Data["Stc"]["LoginType1"]=48
	
	
	--杀怪掩码
	tBattlePassTaskTest_Data["Stc"]["KillEvent"]=195
	tBattlePassTaskTest_Data["Stc"]["KillType"]=98
	
	--击杀叫天鸡掩码
	tBattlePassTaskTest_Data["Stc"]["KillJTJEvent"]=195
	tBattlePassTaskTest_Data["Stc"]["KillJTJType"]=99
	
	--任务类型
	tBattlePassTaskTest_Data["TaskType"]={}
	--累计击杀1000只妖匪
	tBattlePassTaskTest_Data["TaskType"][1]=102
	--参加3次排位赛
	tBattlePassTaskTest_Data["TaskType"][2]=112
	--参加1次骑马大赛
	tBattlePassTaskTest_Data["TaskType"][3]=111
	--击杀100只叫天鸡
	tBattlePassTaskTest_Data["TaskType"][4]=101
	--收集10个九幽魔晶
	tBattlePassTaskTest_Data["TaskType"][5]=104
	--累计登录25天
	tBattlePassTaskTest_Data["TaskType"][6]=108
	--连续登陆14天
	tBattlePassTaskTest_Data["TaskType"][7]=109
	--参与击杀boss
	tBattlePassTaskTest_Data["TaskType"][8]=103
	--参与击杀妖后瑶姬
	tBattlePassTaskTest_Data["TaskType"][9]=110
	--参与击杀古神灵境boss
	tBattlePassTaskTest_Data["TaskType"][10]=105
	
	--参与1次升龙鼎玩法
	tBattlePassTaskTest_Data["TaskType"][11]=106
	--参与5次升龙鼎玩法
	-- tBattlePassTaskTest_Data["TaskType"][12]=106
	--兑换10次矿石
	tBattlePassTaskTest_Data["TaskType"][13]=113
	--击杀5名玩家
	tBattlePassTaskTest_Data["TaskType"][14]=114
	
	--参与5次升棋魂玩法
	tBattlePassTaskTest_Data["TaskType"][15]=115

----------------------BP二期----------------------
	--使用1次正气令
	tBattlePassTaskTest_Data["TaskType"][20]=120
	--累计登录3天
	tBattlePassTaskTest_Data["TaskType"][21]=121
	--累计登录5天
	tBattlePassTaskTest_Data["TaskType"][22]=122
	--完成决战冥城
	tBattlePassTaskTest_Data["TaskType"][23]=123
	--完成战场杀敌
	tBattlePassTaskTest_Data["TaskType"][24]=124
	
	-------8月精炼神纹专题战令优化版
	--完成镇魔塔
	tBattlePassTaskTest_Data["TaskType"][30]=130
	
	--完成内功副本
	tBattlePassTaskTest_Data["TaskType"][31]=131
	
	--完成神纹副本
	tBattlePassTaskTest_Data["TaskType"][32]=132
	
	--完成真假BOSS挑战副本
	tBattlePassTaskTest_Data["TaskType"][33]=133
	
	--完成清剿妖魔挑战
	tBattlePassTaskTest_Data["TaskType"][34]=134
	
	
	tBattlePassTaskTest_Data["Stc"]["LoginNew"]={}
	--累计登录3天
	tBattlePassTaskTest_Data["Stc"]["LoginNew"][3]={}
	tBattlePassTaskTest_Data["Stc"]["LoginNew"][3]["Event"]=205
	tBattlePassTaskTest_Data["Stc"]["LoginNew"][3]["Type"]=5
	
	--累计登录5天
	tBattlePassTaskTest_Data["Stc"]["LoginNew"][5]={}
	tBattlePassTaskTest_Data["Stc"]["LoginNew"][5]["Event"]=205
	tBattlePassTaskTest_Data["Stc"]["LoginNew"][5]["Type"]=6
	
	
	-------8月精炼神纹专题战令优化版
	
	tBattlePassTaskTest_Data["Stc"]["Instance"]={}
	
	tBattlePassTaskTest_Data["Stc"]["Instance"][30] = {}
	tBattlePassTaskTest_Data["Stc"]["Instance"][30]["Event"]=226
	tBattlePassTaskTest_Data["Stc"]["Instance"][30]["Type"]=5
	
	tBattlePassTaskTest_Data["Stc"]["Instance"][31] = {}
	tBattlePassTaskTest_Data["Stc"]["Instance"][31]["Event"]=226
	tBattlePassTaskTest_Data["Stc"]["Instance"][31]["Type"]=0
	
	tBattlePassTaskTest_Data["Stc"]["Instance"][32] = {}
	tBattlePassTaskTest_Data["Stc"]["Instance"][32]["Event"]=226
	tBattlePassTaskTest_Data["Stc"]["Instance"][32]["Type"]=1
	
	tBattlePassTaskTest_Data["Stc"]["Instance"][33] = {}
	tBattlePassTaskTest_Data["Stc"]["Instance"][33]["Event"]=226
	tBattlePassTaskTest_Data["Stc"]["Instance"][33]["Type"]=2
	
	tBattlePassTaskTest_Data["Stc"]["Instance"][34] = {}
	tBattlePassTaskTest_Data["Stc"]["Instance"][34]["Event"]=226
	tBattlePassTaskTest_Data["Stc"]["Instance"][34]["Type"]=3
	


--5颗人参果礼包
	tBattlePassTaskTest_Data[3320988]={}
	tBattlePassTaskTest_Data[3320988]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3320988]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3320988]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3320988]["DeleteItem"][1]["Id"] = 3320988
	tBattlePassTaskTest_Data[3320988]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3320988]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3320988]["RewardItem"][1]["Id"] = 3009100
	tBattlePassTaskTest_Data[3320988]["RewardItem"][1]["Attr"] = "0 5"
	tBattlePassTaskTest_Data[3320988]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3320988]["RewardEffect"]["Effect"] = "zf2-e285"
	
--10颗人参果礼包
	tBattlePassTaskTest_Data[3320989]={}
	tBattlePassTaskTest_Data[3320989]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3320989]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3320989]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3320989]["DeleteItem"][1]["Id"] = 3320989
	tBattlePassTaskTest_Data[3320989]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3320989]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3320989]["RewardItem"][1]["Id"] = 3009100
	tBattlePassTaskTest_Data[3320989]["RewardItem"][1]["Attr"] = "0 10"
	tBattlePassTaskTest_Data[3320989]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3320989]["RewardEffect"]["Effect"] = "zf2-e285"
	
--30颗人参果礼包
	tBattlePassTaskTest_Data[3320990]={}
	tBattlePassTaskTest_Data[3320990]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3320990]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3320990]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3320990]["DeleteItem"][1]["Id"] = 3320990
	tBattlePassTaskTest_Data[3320990]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3320990]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3320990]["RewardItem"][1]["Id"] = 3009100
	tBattlePassTaskTest_Data[3320990]["RewardItem"][1]["Attr"] = "0 30"
	tBattlePassTaskTest_Data[3320990]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3320990]["RewardEffect"]["Effect"] = "zf2-e285"
	
--150颗人参果礼包
	tBattlePassTaskTest_Data[3320991]={}
	tBattlePassTaskTest_Data[3320991]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3320991]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3320991]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3320991]["DeleteItem"][1]["Id"] = 3320991
	tBattlePassTaskTest_Data[3320991]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3320991]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3320991]["RewardItem"][1]["Id"] = 3009100
	tBattlePassTaskTest_Data[3320991]["RewardItem"][1]["Attr"] = "0 150"
	tBattlePassTaskTest_Data[3320991]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3320991]["RewardEffect"]["Effect"] = "zf2-e285"
	
--50颗人参果礼包
	tBattlePassTaskTest_Data[3320992]={}
	tBattlePassTaskTest_Data[3320992]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3320992]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3320992]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3320992]["DeleteItem"][1]["Id"] = 3320992
	tBattlePassTaskTest_Data[3320992]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3320992]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3320992]["RewardItem"][1]["Id"] = 3009100
	tBattlePassTaskTest_Data[3320992]["RewardItem"][1]["Attr"] = "0 50"
	tBattlePassTaskTest_Data[3320992]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3320992]["RewardEffect"]["Effect"] = "zf2-e285"
	
--七星宝钻礼包
	-- tBattlePassTaskTest_Data[3320993]={}
	-- tBattlePassTaskTest_Data[3320993]["LogId"] = 12001359
	-- tBattlePassTaskTest_Data[3320993]["DeleteItem"] = {}
	-- tBattlePassTaskTest_Data[3320993]["DeleteItem"][1] = {}
	-- tBattlePassTaskTest_Data[3320993]["DeleteItem"][1]["Id"] = 3320993
	-- tBattlePassTaskTest_Data[3320993]["RewardItem"] = {}
	-- tBattlePassTaskTest_Data[3320993]["RewardItem"][1] = {}
	-- tBattlePassTaskTest_Data[3320993]["RewardItem"][1]["Id"] = 1200006
	-- tBattlePassTaskTest_Data[3320993]["RewardItem"][1]["Attr"] = "0 1 3"
	-- tBattlePassTaskTest_Data[3320993]["RewardEffect"] = {}
	-- tBattlePassTaskTest_Data[3320993]["RewardEffect"]["Effect"] = "zf2-e285"
	
--600颗免费强炼丹礼包
	tBattlePassTaskTest_Data[3320994]={}
	tBattlePassTaskTest_Data[3320994]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3320994]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3320994]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3320994]["DeleteItem"][1]["Id"] = 3320994
	tBattlePassTaskTest_Data[3320994]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3320994]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3320994]["RewardItem"][1]["Id"] = 3003124
	tBattlePassTaskTest_Data[3320994]["RewardItem"][1]["Attr"] = "0 600 3"
	tBattlePassTaskTest_Data[3320994]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3320994]["RewardEffect"]["Effect"] = "zf2-e285"
	
--神纹源晶礼包
	tBattlePassTaskTest_Data[3320995]={}
	tBattlePassTaskTest_Data[3320995]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3320995]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3320995]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3320995]["DeleteItem"][1]["Id"] = 3320995
	tBattlePassTaskTest_Data[3320995]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3320995]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3320995]["RewardItem"][1]["Id"] = 3311759
	tBattlePassTaskTest_Data[3320995]["RewardItem"][1]["Attr"] = "0 10 3"
	tBattlePassTaskTest_Data[3320995]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3320995]["RewardEffect"]["Effect"] = "zf2-e285"
	
	
--灵珠随机包
	tBattlePassTaskTest_Data[3320996]={}
	tBattlePassTaskTest_Data[3320996][1] = {}
	tBattlePassTaskTest_Data[3320996][1]["ItemChanceSum"] = 10000
	tBattlePassTaskTest_Data[3320996][1]["LogId"] = 12001333
	-- 4200004	4阶灵珠	40	23.20%
	-- tBattlePassTaskTest_Data[3320996][1][1] = {}
	-- tBattlePassTaskTest_Data[3320996][1][1]["RandomItemChanceType"] = 2
	-- tBattlePassTaskTest_Data[3320996][1][1]["ItemChance"] = 2320
	-- tBattlePassTaskTest_Data[3320996][1][1]["RewardItem"] = {}
	-- tBattlePassTaskTest_Data[3320996][1][1]["RewardItem"][1] = {}
	-- tBattlePassTaskTest_Data[3320996][1][1]["RewardItem"][1]["Id"] = 4200004
	-- tBattlePassTaskTest_Data[3320996][1][1]["RewardItem"][1]["Attr"] = "0 1"
	-- tBattlePassTaskTest_Data[3320996][1][1]["RewardItem"][1]["PreciousType"] = 314
	-- tBattlePassTaskTest_Data[3320996][1][1]["RewardEffect"] = {}
	-- tBattlePassTaskTest_Data[3320996][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	-- tBattlePassTaskTest_Data[3320996][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 4200005	5阶灵珠	80	32.20%
	-- tBattlePassTaskTest_Data[3320996][1][2] = {}
	-- tBattlePassTaskTest_Data[3320996][1][2]["RandomItemChanceType"] = 2
	-- tBattlePassTaskTest_Data[3320996][1][2]["ItemChance"] = 3220
	-- tBattlePassTaskTest_Data[3320996][1][2]["RewardItem"] = {}
	-- tBattlePassTaskTest_Data[3320996][1][2]["RewardItem"][1] = {}
	-- tBattlePassTaskTest_Data[3320996][1][2]["RewardItem"][1]["Id"] = 4200005
	-- tBattlePassTaskTest_Data[3320996][1][2]["RewardItem"][1]["Attr"] = "0 1"
	-- tBattlePassTaskTest_Data[3320996][1][2]["RewardItem"][1]["PreciousType"] = 314
	-- tBattlePassTaskTest_Data[3320996][1][2]["RewardEffect"] = {}
	-- tBattlePassTaskTest_Data[3320996][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	-- tBattlePassTaskTest_Data[3320996][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 4200006	6阶灵珠	160	33.00%
	-- tBattlePassTaskTest_Data[3320996][1][3] = {}
	-- tBattlePassTaskTest_Data[3320996][1][3]["RandomItemChanceType"] = 2
	-- tBattlePassTaskTest_Data[3320996][1][3]["ItemChance"] = 3300
	-- tBattlePassTaskTest_Data[3320996][1][3]["RewardItem"] = {}
	-- tBattlePassTaskTest_Data[3320996][1][3]["RewardItem"][1] = {}
	-- tBattlePassTaskTest_Data[3320996][1][3]["RewardItem"][1]["Id"] = 4200006 
	-- tBattlePassTaskTest_Data[3320996][1][3]["RewardItem"][1]["Attr"] = "0 1" 
	-- tBattlePassTaskTest_Data[3320996][1][3]["RewardItem"][1]["PreciousType"] = 314
	-- tBattlePassTaskTest_Data[3320996][1][3]["RewardEffect"] = {}
	-- tBattlePassTaskTest_Data[3320996][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	-- tBattlePassTaskTest_Data[3320996][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 4200007	7阶灵珠	320	50.40%
	tBattlePassTaskTest_Data[3320996][1][1] = {}
	tBattlePassTaskTest_Data[3320996][1][1]["RandomItemChanceType"] = 2
	tBattlePassTaskTest_Data[3320996][1][1]["ItemChance"] = 5040
	tBattlePassTaskTest_Data[3320996][1][1]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3320996][1][1]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3320996][1][1]["RewardItem"][1]["Id"] = 4200007
	tBattlePassTaskTest_Data[3320996][1][1]["RewardItem"][1]["Attr"] = "0 1"
	tBattlePassTaskTest_Data[3320996][1][1]["RewardItem"][1]["PreciousType"] = 314
	tBattlePassTaskTest_Data[3320996][1][1]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3320996][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3320996][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 4200008	8阶灵珠	640	48.00%
	tBattlePassTaskTest_Data[3320996][1][2] = {}
	tBattlePassTaskTest_Data[3320996][1][2]["RandomItemChanceType"] = 2
	tBattlePassTaskTest_Data[3320996][1][2]["ItemChance"] = 4800
	tBattlePassTaskTest_Data[3320996][1][2]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3320996][1][2]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3320996][1][2]["RewardItem"][1]["Id"] = 4200008
	tBattlePassTaskTest_Data[3320996][1][2]["RewardItem"][1]["Attr"] = "0 1"
	tBattlePassTaskTest_Data[3320996][1][2]["RewardItem"][1]["PreciousType"] = 314
	tBattlePassTaskTest_Data[3320996][1][2]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3320996][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3320996][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 4200009	9阶灵珠	1280	1.00%
	tBattlePassTaskTest_Data[3320996][1][3] = {}
	tBattlePassTaskTest_Data[3320996][1][3]["RandomItemChanceType"] = 2
	tBattlePassTaskTest_Data[3320996][1][3]["ItemChance"] = 100
	tBattlePassTaskTest_Data[3320996][1][3]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3320996][1][3]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3320996][1][3]["RewardItem"][1]["Id"] = 4200009
	tBattlePassTaskTest_Data[3320996][1][3]["RewardItem"][1]["Attr"] = "0 1"
	tBattlePassTaskTest_Data[3320996][1][3]["RewardItem"][1]["PreciousType"] = 314
	tBattlePassTaskTest_Data[3320996][1][3]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3320996][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3320996][1][3]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 4200010	10阶灵珠	2560	0.50%
	tBattlePassTaskTest_Data[3320996][1][4] = {}
	tBattlePassTaskTest_Data[3320996][1][4]["RandomItemChanceType"] = 2
	tBattlePassTaskTest_Data[3320996][1][4]["ItemChance"] = 50
	tBattlePassTaskTest_Data[3320996][1][4]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3320996][1][4]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3320996][1][4]["RewardItem"][1]["Id"] = 4200010
	tBattlePassTaskTest_Data[3320996][1][4]["RewardItem"][1]["Attr"] = "0 1"
	tBattlePassTaskTest_Data[3320996][1][4]["RewardItem"][1]["PreciousType"] = 314
	tBattlePassTaskTest_Data[3320996][1][4]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3320996][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3320996][1][4]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 4200011	11阶灵珠	5120	0.10%
	tBattlePassTaskTest_Data[3320996][1][5] = {}
	tBattlePassTaskTest_Data[3320996][1][5]["RandomItemChanceType"] = 2
	tBattlePassTaskTest_Data[3320996][1][5]["ItemChance"] = 10
	tBattlePassTaskTest_Data[3320996][1][5]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3320996][1][5]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3320996][1][5]["RewardItem"][1]["Id"] = 4200011
	tBattlePassTaskTest_Data[3320996][1][5]["RewardItem"][1]["Attr"] = "0 1"
	tBattlePassTaskTest_Data[3320996][1][5]["RewardItem"][1]["PreciousType"] = 314
	tBattlePassTaskTest_Data[3320996][1][5]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3320996][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3320996][1][5]["RewardEffect"]["Effect"] = "angelwing"
	
	
	
	--使用魂梦星海碎片
	tBattlePassTaskTest_Data[3321584]={}
	tBattlePassTaskTest_Data[3321584]["LogId"]=12001359
	tBattlePassTaskTest_Data[3321584]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3321584]["DeleteItem"][1]={}
	tBattlePassTaskTest_Data[3321584]["DeleteItem"][1]["Id"]=3321584
	tBattlePassTaskTest_Data[3321584]["DeleteItem"][1]["ItemNum"]=20
	tBattlePassTaskTest_Data[3321584]["DeleteItem"][1]["NoItem"]=tBattlePassTaskTest_Text["Systemtip"]["UseFail"]
	tBattlePassTaskTest_Data[3321584]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3321584]["RewardItem"][1]={}
	tBattlePassTaskTest_Data[3321584]["RewardItem"][1]["Id"]= 195635
	tBattlePassTaskTest_Data[3321584]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	
	--魂梦星海·圣歌碎片
	tBattlePassTaskTest_Data[3321585]={}
	tBattlePassTaskTest_Data[3321585]["LogId"]=12001359
	tBattlePassTaskTest_Data[3321585]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3321585]["DeleteItem"][1]={}
	tBattlePassTaskTest_Data[3321585]["DeleteItem"][1]["Id"]=3321585
	tBattlePassTaskTest_Data[3321585]["DeleteItem"][1]["ItemNum"]=20
	tBattlePassTaskTest_Data[3321585]["DeleteItem"][1]["NoItem"]=tBattlePassTaskTest_Text["Systemtip"]["UseFail"]
	tBattlePassTaskTest_Data[3321585]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3321585]["RewardItem"][1]={}
	tBattlePassTaskTest_Data[3321585]["RewardItem"][1]["Id"]= 195645
	tBattlePassTaskTest_Data[3321585]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	
	--灵霄海龙碎片
	tBattlePassTaskTest_Data[3321586]={}
	tBattlePassTaskTest_Data[3321586]["LogId"]=12001359
	tBattlePassTaskTest_Data[3321586]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3321586]["DeleteItem"][1]={}
	tBattlePassTaskTest_Data[3321586]["DeleteItem"][1]["Id"]=3321586
	tBattlePassTaskTest_Data[3321586]["DeleteItem"][1]["ItemNum"]=20
	tBattlePassTaskTest_Data[3321586]["DeleteItem"][1]["NoItem"]=tBattlePassTaskTest_Text["Systemtip"]["UseFail"]
	tBattlePassTaskTest_Data[3321586]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3321586]["RewardItem"][1]={}
	tBattlePassTaskTest_Data[3321586]["RewardItem"][1]["Id"]= 200645
	tBattlePassTaskTest_Data[3321586]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	
	--灵霄海龙碎片
	tBattlePassTaskTest_Data[3321587]={}
	tBattlePassTaskTest_Data[3321587]["LogId"]=12001359
	tBattlePassTaskTest_Data[3321587]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3321587]["DeleteItem"][1]={}
	tBattlePassTaskTest_Data[3321587]["DeleteItem"][1]["Id"]=3321587
	tBattlePassTaskTest_Data[3321587]["DeleteItem"][1]["ItemNum"]=20
	tBattlePassTaskTest_Data[3321587]["DeleteItem"][1]["NoItem"]=tBattlePassTaskTest_Text["Systemtip"]["UseFail"]
	tBattlePassTaskTest_Data[3321587]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3321587]["RewardItem"][1]={}
	tBattlePassTaskTest_Data[3321587]["RewardItem"][1]["Id"]= 200646
	tBattlePassTaskTest_Data[3321587]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	
	--紫芒星辰翼碎片
	tBattlePassTaskTest_Data[3321588]={}
	tBattlePassTaskTest_Data[3321588]["LogId"]=12001359
	tBattlePassTaskTest_Data[3321588]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3321588]["DeleteItem"][1]={}
	tBattlePassTaskTest_Data[3321588]["DeleteItem"][1]["Id"]=3321588
	tBattlePassTaskTest_Data[3321588]["DeleteItem"][1]["ItemNum"]=20
	tBattlePassTaskTest_Data[3321588]["DeleteItem"][1]["NoItem"]=tBattlePassTaskTest_Text["Systemtip"]["UseFail"]
	tBattlePassTaskTest_Data[3321588]["RewardWing"] = {}
	tBattlePassTaskTest_Data[3321588]["RewardWing"]["TitleType"] = 6023
	tBattlePassTaskTest_Data[3321588]["RewardWing"]["TitleId"] = 6023
	
	--豪情万丈碎片
	tBattlePassTaskTest_Data[3321582]={}
	tBattlePassTaskTest_Data[3321582]["LogId"]=12001359
	tBattlePassTaskTest_Data[3321582]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3321582]["DeleteItem"][1]={}
	tBattlePassTaskTest_Data[3321582]["DeleteItem"][1]["Id"]=3321582
	tBattlePassTaskTest_Data[3321582]["DeleteItem"][1]["ItemNum"]=10
	tBattlePassTaskTest_Data[3321582]["DeleteItem"][1]["NoItem"]=tBattlePassTaskTest_Text["Systemtip"]["UseFail"]
	tBattlePassTaskTest_Data[3321582]["RewardTitle"] = {}
	tBattlePassTaskTest_Data[3321582]["RewardTitle"]["TitleType"] = 2124
	tBattlePassTaskTest_Data[3321582]["RewardTitle"]["TitleId"] = 2124
	
	--侠义冠天下碎片
	tBattlePassTaskTest_Data[3321583]={}
	tBattlePassTaskTest_Data[3321583]["LogId"]=12001359
	tBattlePassTaskTest_Data[3321583]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3321583]["DeleteItem"][1]={}
	tBattlePassTaskTest_Data[3321583]["DeleteItem"][1]["Id"]=3321583
	tBattlePassTaskTest_Data[3321583]["DeleteItem"][1]["ItemNum"]=20
	tBattlePassTaskTest_Data[3321583]["DeleteItem"][1]["NoItem"]=tBattlePassTaskTest_Text["Systemtip"]["UseFail"]
	tBattlePassTaskTest_Data[3321583]["RewardTitle"] = {}
	tBattlePassTaskTest_Data[3321583]["RewardTitle"]["TitleType"] = 2123
	tBattlePassTaskTest_Data[3321583]["RewardTitle"]["TitleId"] = 2123
	
	-- 3321581 紫芒星辰翼
	tBattlePassTaskTest_Data[3321581] = {}
	tBattlePassTaskTest_Data[3321581]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3321581]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3321581]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3321581]["DeleteItem"][1]["Id"] = 3321581
	tBattlePassTaskTest_Data[3321581]["RewardWing"] = {}
	tBattlePassTaskTest_Data[3321581]["RewardWing"]["TitleType"] = 6023
	tBattlePassTaskTest_Data[3321581]["RewardWing"]["TitleId"] = 6023
	-- tBattlePassTaskTest_Data[3321581]["Talk"] =tDragonMaster_Text[3303801]["Talk"] 
	
	--魂梦星海外套包
	tBattlePassTaskTest_Data[3321589]={}
	tBattlePassTaskTest_Data[3321589]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3321589]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3321589]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3321589]["DeleteItem"][1]["Id"] = 3321589
	tBattlePassTaskTest_Data[3321589]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3321589]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3321589]["RewardItem"][1]["Id"] = 195635
	tBattlePassTaskTest_Data[3321589]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tBattlePassTaskTest_Data[3321589]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3321589]["RewardEffect"]["Effect"] = "zf2-e285"
	
	--灵霄海龙外套包
	tBattlePassTaskTest_Data[3321590]={}
	tBattlePassTaskTest_Data[3321590]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3321590]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3321590]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3321590]["DeleteItem"][1]["Id"] = 3321590
	tBattlePassTaskTest_Data[3321590]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3321590]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3321590]["RewardItem"][1]["Id"] = 200645
	tBattlePassTaskTest_Data[3321590]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tBattlePassTaskTest_Data[3321590]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3321590]["RewardEffect"]["Effect"] = "zf2-e285"
	
	--灵霄海龙【星辰版】碎片包
	tBattlePassTaskTest_Data[3321591]={}
	tBattlePassTaskTest_Data[3321591]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3321591]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3321591]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3321591]["DeleteItem"][1]["Id"] = 3321591
	tBattlePassTaskTest_Data[3321591]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3321591]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3321591]["RewardItem"][1]["Id"] = 3321587
	tBattlePassTaskTest_Data[3321591]["RewardItem"][1]["Attr"] = "0 10"
	tBattlePassTaskTest_Data[3321591]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3321591]["RewardEffect"]["Effect"] = "zf2-e285"
	
	--魂梦星海·圣歌碎片包
	tBattlePassTaskTest_Data[3321592]={}
	tBattlePassTaskTest_Data[3321592]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3321592]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3321592]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3321592]["DeleteItem"][1]["Id"] = 3321592
	tBattlePassTaskTest_Data[3321592]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3321592]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3321592]["RewardItem"][1]["Id"] = 3321585
	tBattlePassTaskTest_Data[3321592]["RewardItem"][1]["Attr"] = "0 10"
	tBattlePassTaskTest_Data[3321592]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3321592]["RewardEffect"]["Effect"] = "zf2-e285"
	
	--侠义冠天下碎片包
	tBattlePassTaskTest_Data[3321593]={}
	tBattlePassTaskTest_Data[3321593]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3321593]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3321593]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3321593]["DeleteItem"][1]["Id"] = 3321593
	tBattlePassTaskTest_Data[3321593]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3321593]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3321593]["RewardItem"][1]["Id"] = 3321583
	tBattlePassTaskTest_Data[3321593]["RewardItem"][1]["Attr"] = "0 10"
	tBattlePassTaskTest_Data[3321593]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3321593]["RewardEffect"]["Effect"] = "zf2-e285"
	
	tBattlePassTaskTest_Data["KillMonsterLimit"]=1000
	tBattlePassTaskTest_Data["EachNum"]=50
	
	tBattlePassTaskTest_Data["KillJTJMonsterLimit"]=100
	tBattlePassTaskTest_Data["EachJTJNum"]=10
	
	local tBattlePassTaskTest_KillNum = {}
	local tBattlePassTaskTest_KillNumJTJ = {}
	

----------------------------------英文新增礼包---------------------------------------
	--30天魂梦星海
	tBattlePassTaskTest_Data[3321673]={}
	tBattlePassTaskTest_Data[3321673]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3321673]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3321673]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3321673]["DeleteItem"][1]["Id"] = 3321673
	tBattlePassTaskTest_Data[3321673]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3321673]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3321673]["RewardItem"][1]["Id"] = 195635
	tBattlePassTaskTest_Data[3321673]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	tBattlePassTaskTest_Data[3321673]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3321673]["RewardEffect"]["Effect"] = "zf2-e285"
	
	--30天灵霄海龙
	tBattlePassTaskTest_Data[3321674]={}
	tBattlePassTaskTest_Data[3321674]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3321674]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3321674]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3321674]["DeleteItem"][1]["Id"] = 3321674
	tBattlePassTaskTest_Data[3321674]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3321674]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3321674]["RewardItem"][1]["Id"] = 200645
	tBattlePassTaskTest_Data[3321674]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	tBattlePassTaskTest_Data[3321674]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3321674]["RewardEffect"]["Effect"] = "zf2-e285"
	
	--30天魂梦星海·圣歌
	tBattlePassTaskTest_Data[3321675]={}
	tBattlePassTaskTest_Data[3321675]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3321675]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3321675]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3321675]["DeleteItem"][1]["Id"] = 3321675
	tBattlePassTaskTest_Data[3321675]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3321675]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3321675]["RewardItem"][1]["Id"] = 195645
	tBattlePassTaskTest_Data[3321675]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	tBattlePassTaskTest_Data[3321675]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3321675]["RewardEffect"]["Effect"] = "zf2-e285"
	
	--30天赛季光效称号
	tBattlePassTaskTest_Data[3321676]={}
	tBattlePassTaskTest_Data[3321676]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3321676]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3321676]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3321676]["DeleteItem"][1]["Id"] = 3321676
	tBattlePassTaskTest_Data[3321676]["RewardTitle"] = {}
	tBattlePassTaskTest_Data[3321676]["RewardTitle"]["TitleType"] = 2123
	tBattlePassTaskTest_Data[3321676]["RewardTitle"]["TitleId"] = 2123
	tBattlePassTaskTest_Data[3321676]["RewardTitle"]["SaveTime"] = 43200
	tBattlePassTaskTest_Data[3321676]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3321676]["RewardEffect"]["Effect"] = "zf2-e285"
	
	--魂梦星海·圣歌碎片*5
	tBattlePassTaskTest_Data[3321677]={}
	tBattlePassTaskTest_Data[3321677]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3321677]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3321677]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3321677]["DeleteItem"][1]["Id"] = 3321677
	tBattlePassTaskTest_Data[3321677]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3321677]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3321677]["RewardItem"][1]["Id"] = 3321585
	tBattlePassTaskTest_Data[3321677]["RewardItem"][1]["Attr"] = "0 5"
	tBattlePassTaskTest_Data[3321677]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3321677]["RewardEffect"]["Effect"] = "zf2-e285"
	
	--人参果*50
	tBattlePassTaskTest_Data[3321678]={}
	tBattlePassTaskTest_Data[3321678]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3321678]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3321678]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3321678]["DeleteItem"][1]["Id"] = 3321678
	tBattlePassTaskTest_Data[3321678]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3321678]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3321678]["RewardItem"][1]["Id"] = 3009100
	tBattlePassTaskTest_Data[3321678]["RewardItem"][1]["Attr"] = "0 50"
	tBattlePassTaskTest_Data[3321678]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3321678]["RewardEffect"]["Effect"] = "zf2-e285"
	
	--龙鳞果*10
	tBattlePassTaskTest_Data[3321679]={}
	tBattlePassTaskTest_Data[3321679]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3321679]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3321679]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3321679]["DeleteItem"][1]["Id"] = 3321679
	tBattlePassTaskTest_Data[3321679]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3321679]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3321679]["RewardItem"][1]["Id"] = 3009101
	tBattlePassTaskTest_Data[3321679]["RewardItem"][1]["Attr"] = "0 10"
	tBattlePassTaskTest_Data[3321679]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3321679]["RewardEffect"]["Effect"] = "zf2-e285"
	
	--辉月果*10
	tBattlePassTaskTest_Data[3321680]={}
	tBattlePassTaskTest_Data[3321680]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3321680]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3321680]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3321680]["DeleteItem"][1]["Id"] = 3321680
	tBattlePassTaskTest_Data[3321680]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3321680]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3321680]["RewardItem"][1]["Id"] = 3009102
	tBattlePassTaskTest_Data[3321680]["RewardItem"][1]["Attr"] = "0 10"
	tBattlePassTaskTest_Data[3321680]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3321680]["RewardEffect"]["Effect"] = "zf2-e285"
	
	--辉月果*15
	tBattlePassTaskTest_Data[3321681]={}
	tBattlePassTaskTest_Data[3321681]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3321681]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3321681]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3321681]["DeleteItem"][1]["Id"] = 3321681
	tBattlePassTaskTest_Data[3321681]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3321681]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3321681]["RewardItem"][1]["Id"] = 3009102
	tBattlePassTaskTest_Data[3321681]["RewardItem"][1]["Attr"] = "0 15"
	tBattlePassTaskTest_Data[3321681]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3321681]["RewardEffect"]["Effect"] = "zf2-e285"
	
	--赠稀有黄色神纹碎片*4
	tBattlePassTaskTest_Data[3321682]={}
	tBattlePassTaskTest_Data[3321682]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3321682]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3321682]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3321682]["DeleteItem"][1]["Id"] = 3321682
	tBattlePassTaskTest_Data[3321682]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3321682]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3321682]["RewardItem"][1]["Id"] = 3311744
	tBattlePassTaskTest_Data[3321682]["RewardItem"][1]["Attr"] = "0 4 3"
	tBattlePassTaskTest_Data[3321682]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3321682]["RewardEffect"]["Effect"] = "zf2-e285"
	
	--赠神纹源晶*10
	tBattlePassTaskTest_Data[3321683]={}
	tBattlePassTaskTest_Data[3321683]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3321683]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3321683]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3321683]["DeleteItem"][1]["Id"] = 3321683
	tBattlePassTaskTest_Data[3321683]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3321683]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3321683]["RewardItem"][1]["Id"] = 3311759
	tBattlePassTaskTest_Data[3321683]["RewardItem"][1]["Attr"] = "0 10 3"
	tBattlePassTaskTest_Data[3321683]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3321683]["RewardEffect"]["Effect"] = "zf2-e285"
	
	--赠良品神纹源晶*10
	tBattlePassTaskTest_Data[3321684]={}
	tBattlePassTaskTest_Data[3321684]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3321684]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3321684]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3321684]["DeleteItem"][1]["Id"] = 3321684
	tBattlePassTaskTest_Data[3321684]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3321684]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3321684]["RewardItem"][1]["Id"] = 3311820
	tBattlePassTaskTest_Data[3321684]["RewardItem"][1]["Attr"] = "0 10"
	tBattlePassTaskTest_Data[3321684]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3321684]["RewardEffect"]["Effect"] = "zf2-e285"
	
	--赠万能神纹精粹*50
	tBattlePassTaskTest_Data[3321685]={}
	tBattlePassTaskTest_Data[3321685]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3321685]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3321685]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3321685]["DeleteItem"][1]["Id"] = 3321685
	tBattlePassTaskTest_Data[3321685]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3321685]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3321685]["RewardItem"][1]["Id"] = 4060001
	tBattlePassTaskTest_Data[3321685]["RewardItem"][1]["Attr"] = "0 50 3"
	tBattlePassTaskTest_Data[3321685]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3321685]["RewardEffect"]["Effect"] = "zf2-e285"
	
	--30天紫芒星辰翼
	tBattlePassTaskTest_Data[3321687] = {}
	tBattlePassTaskTest_Data[3321687]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3321687]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3321687]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3321687]["DeleteItem"][1]["Id"] = 3321687
	tBattlePassTaskTest_Data[3321687]["RewardWing"] = {}
	tBattlePassTaskTest_Data[3321687]["RewardWing"]["TitleType"] = 6023
	tBattlePassTaskTest_Data[3321687]["RewardWing"]["TitleId"] = 6023
	tBattlePassTaskTest_Data[3321687]["RewardWing"]["SaveTime"] = 43200
	tBattlePassTaskTest_Data[3321687]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3321687]["RewardEffect"]["Effect"] = "zf2-e285"
	
	
--赠神纹源晶*1
	tBattlePassTaskTest_Data[3321689]={}
	tBattlePassTaskTest_Data[3321689]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3321689]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3321689]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3321689]["DeleteItem"][1]["Id"] = 3321689
	tBattlePassTaskTest_Data[3321689]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3321689]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3321689]["RewardItem"][1]["Id"] = 3311759
	tBattlePassTaskTest_Data[3321689]["RewardItem"][1]["Attr"] = "0 1 3"
	tBattlePassTaskTest_Data[3321689]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3321689]["RewardEffect"]["Effect"] = "zf2-e285"
	
--赠稀有黄色神纹碎片*2
	tBattlePassTaskTest_Data[3321690]={}
	tBattlePassTaskTest_Data[3321690]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3321690]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3321690]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3321690]["DeleteItem"][1]["Id"] = 3321690
	tBattlePassTaskTest_Data[3321690]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3321690]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3321690]["RewardItem"][1]["Id"] = 3311744
	tBattlePassTaskTest_Data[3321690]["RewardItem"][1]["Attr"] = "0 2 3"
	tBattlePassTaskTest_Data[3321690]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3321690]["RewardEffect"]["Effect"] = "zf2-e285"
	
--二期新增物品
	tBattlePassTaskTest_Data[3322663]={}
	
	--昊天玄狐【魅幻版】
	tBattlePassTaskTest_Data[3322663][1]={}
	tBattlePassTaskTest_Data[3322663][1]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3322663][1]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3322663][1]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3322663][1]["DeleteItem"][1]["Id"] = 3322663
	tBattlePassTaskTest_Data[3322663][1]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3322663][1]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3322663][1]["RewardItem"][1]["Id"] = 200596
	tBattlePassTaskTest_Data[3322663][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tBattlePassTaskTest_Data[3322663][1]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3322663][1]["RewardEffect"]["Effect"] = "zf2-e285"
	
	--魅影魔狐【修罗版】
	tBattlePassTaskTest_Data[3322663][2]={}
	tBattlePassTaskTest_Data[3322663][2]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3322663][2]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3322663][2]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3322663][2]["DeleteItem"][1]["Id"] = 3322663
	tBattlePassTaskTest_Data[3322663][2]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3322663][2]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3322663][2]["RewardItem"][1]["Id"] = 200638
	tBattlePassTaskTest_Data[3322663][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tBattlePassTaskTest_Data[3322663][2]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3322663][2]["RewardEffect"]["Effect"] = "zf2-e285"
	
	--碧霄灵狐【悠然版】
	tBattlePassTaskTest_Data[3322663][3]={}
	tBattlePassTaskTest_Data[3322663][3]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3322663][3]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3322663][3]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3322663][3]["DeleteItem"][1]["Id"] = 3322663
	tBattlePassTaskTest_Data[3322663][3]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3322663][3]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3322663][3]["RewardItem"][1]["Id"] = 200639
	tBattlePassTaskTest_Data[3322663][3]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tBattlePassTaskTest_Data[3322663][3]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3322663][3]["RewardEffect"]["Effect"] = "zf2-e285"
	
	--幻月仙狐【缥缈版】
	tBattlePassTaskTest_Data[3322663][4]={}
	tBattlePassTaskTest_Data[3322663][4]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3322663][4]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3322663][4]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3322663][4]["DeleteItem"][1]["Id"] = 3322663
	tBattlePassTaskTest_Data[3322663][4]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3322663][4]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3322663][4]["RewardItem"][1]["Id"] = 200640
	tBattlePassTaskTest_Data[3322663][4]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tBattlePassTaskTest_Data[3322663][4]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3322663][4]["RewardEffect"]["Effect"] = "zf2-e285"
	
	
	
	tBattlePassTaskTest_Data[3322664]={}
	
	--昊天玄狐
	tBattlePassTaskTest_Data[3322664][1]={}
	tBattlePassTaskTest_Data[3322664][1]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3322664][1]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3322664][1]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3322664][1]["DeleteItem"][1]["Id"] = 3322664
	tBattlePassTaskTest_Data[3322664][1]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3322664][1]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3322664][1]["RewardItem"][1]["Id"] = 200595
	tBattlePassTaskTest_Data[3322664][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tBattlePassTaskTest_Data[3322664][1]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3322664][1]["RewardEffect"]["Effect"] = "zf2-e285"
	
	--魅影魔狐
	tBattlePassTaskTest_Data[3322664][2]={}
	tBattlePassTaskTest_Data[3322664][2]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3322664][2]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3322664][2]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3322664][2]["DeleteItem"][1]["Id"] = 3322664
	tBattlePassTaskTest_Data[3322664][2]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3322664][2]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3322664][2]["RewardItem"][1]["Id"] = 200641
	tBattlePassTaskTest_Data[3322664][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tBattlePassTaskTest_Data[3322664][2]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3322664][2]["RewardEffect"]["Effect"] = "zf2-e285"
	
	--碧霄灵狐
	tBattlePassTaskTest_Data[3322664][3]={}
	tBattlePassTaskTest_Data[3322664][3]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3322664][3]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3322664][3]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3322664][3]["DeleteItem"][1]["Id"] = 3322664
	tBattlePassTaskTest_Data[3322664][3]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3322664][3]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3322664][3]["RewardItem"][1]["Id"] = 200642
	tBattlePassTaskTest_Data[3322664][3]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tBattlePassTaskTest_Data[3322664][3]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3322664][3]["RewardEffect"]["Effect"] = "zf2-e285"
	
	--幻月仙狐
	tBattlePassTaskTest_Data[3322664][4]={}
	tBattlePassTaskTest_Data[3322664][4]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3322664][4]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3322664][4]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3322664][4]["DeleteItem"][1]["Id"] = 3322664
	tBattlePassTaskTest_Data[3322664][4]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3322664][4]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3322664][4]["RewardItem"][1]["Id"] = 200643
	tBattlePassTaskTest_Data[3322664][4]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tBattlePassTaskTest_Data[3322664][4]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3322664][4]["RewardEffect"]["Effect"] = "zf2-e285"
	
	
	--天蓬朱衣（30天）
	tBattlePassTaskTest_Data[3322665]={}
	tBattlePassTaskTest_Data[3322665]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3322665]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3322665]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3322665]["DeleteItem"][1]["Id"] = 3322665
	tBattlePassTaskTest_Data[3322665]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3322665]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3322665]["RewardItem"][1]["Id"] = 195585
	tBattlePassTaskTest_Data[3322665]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	tBattlePassTaskTest_Data[3322665]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3322665]["RewardEffect"]["Effect"] = "zf2-e285"
	
	--天蓬朱衣（赠）
	tBattlePassTaskTest_Data[3322666]={}
	tBattlePassTaskTest_Data[3322666]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3322666]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3322666]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3322666]["DeleteItem"][1]["Id"] = 3322666
	tBattlePassTaskTest_Data[3322666]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3322666]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3322666]["RewardItem"][1]["Id"] = 195585
	tBattlePassTaskTest_Data[3322666]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tBattlePassTaskTest_Data[3322666]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3322666]["RewardEffect"]["Effect"] = "zf2-e285"
	
	--天蓬朱衣【鸿福】（30天）
	tBattlePassTaskTest_Data[3322667]={}
	tBattlePassTaskTest_Data[3322667]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3322667]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3322667]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3322667]["DeleteItem"][1]["Id"] = 3322667
	tBattlePassTaskTest_Data[3322667]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3322667]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3322667]["RewardItem"][1]["Id"] = 195575
	tBattlePassTaskTest_Data[3322667]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	tBattlePassTaskTest_Data[3322667]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3322667]["RewardEffect"]["Effect"] = "zf2-e285"
	
	
	-----排行榜奖励
	--PermanentImperialFox(Supreme)
	tBattlePassTaskTest_Data[3322746]={}
	tBattlePassTaskTest_Data[3322746]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3322746]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3322746]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3322746]["DeleteItem"][1]["Id"] = 3322746
	tBattlePassTaskTest_Data[3322746]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3322746]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3322746]["RewardItem"][1]["Id"] = 200637
	tBattlePassTaskTest_Data[3322746]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tBattlePassTaskTest_Data[3322746]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3322746]["RewardEffect"]["Effect"] = "zf2-e285"
	
	--180-dayImperialFox(Supreme)
	tBattlePassTaskTest_Data[3322747]={}
	tBattlePassTaskTest_Data[3322747]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3322747]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3322747]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3322747]["DeleteItem"][1]["Id"] = 3322747
	tBattlePassTaskTest_Data[3322747]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3322747]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3322747]["RewardItem"][1]["Id"] = 200637
	tBattlePassTaskTest_Data[3322747]["RewardItem"][1]["Attr"] = "0 1 0 259200 1 0 0 1"
	tBattlePassTaskTest_Data[3322747]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3322747]["RewardEffect"]["Effect"] = "zf2-e285"
	
	--90-dayImperialFox(Supreme)
	tBattlePassTaskTest_Data[3322748]={}
	tBattlePassTaskTest_Data[3322748]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3322748]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3322748]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3322748]["DeleteItem"][1]["Id"] = 3322748
	tBattlePassTaskTest_Data[3322748]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3322748]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3322748]["RewardItem"][1]["Id"] = 200637
	tBattlePassTaskTest_Data[3322748]["RewardItem"][1]["Attr"] = "0 1 0 129600 1 0 0 1"
	tBattlePassTaskTest_Data[3322748]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3322748]["RewardEffect"]["Effect"] = "zf2-e285"
	
	--30-dayImperialFox(Supreme)
	tBattlePassTaskTest_Data[3322749]={}
	tBattlePassTaskTest_Data[3322749]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3322749]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3322749]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3322749]["DeleteItem"][1]["Id"] = 3322749
	tBattlePassTaskTest_Data[3322749]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3322749]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3322749]["RewardItem"][1]["Id"] = 200637
	tBattlePassTaskTest_Data[3322749]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1"
	tBattlePassTaskTest_Data[3322749]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3322749]["RewardEffect"]["Effect"] = "zf2-e285"
	
	tBattlePassTaskTest_Data["Log"] = {}
	tBattlePassTaskTest_Data["Log"]["Overtime"]="0,0,%d,%d,12001359,1,0,0"
	tBattlePassTaskTest_Data["Log"]["AddScore"]="0,0,%d,1,12001359,1,%d,0"
	
----------------------------------bp二期------------------------------------------------
	tBattlePassTaskTest_Data[3326661] = {}
	tBattlePassTaskTest_Data[3326661]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3326661]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3326661]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3326661]["DeleteItem"][1]["Id"] = 3326661 -- 【库】名扬天下豪侠礼包[属性:8]
	tBattlePassTaskTest_Data[3326661]["RewardWing"] = {}
	tBattlePassTaskTest_Data[3326661]["RewardWing"]["TitleType"] = 6032 -- 【库】蝶刹琉璃翼, 【表格】永久时效蝶刹琉璃翼
	tBattlePassTaskTest_Data[3326661]["RewardWing"]["TitleId"] = 6032
	tBattlePassTaskTest_Data[3326661]["RewardWing"]["SaveTime"] = 0 -- 永久时效的[翅膀]:蝶刹琉璃翼, 【需求】永久时效蝶刹琉璃翼
	tBattlePassTaskTest_Data[3326661]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3326661]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3326661]["RewardItem"][1]["Id"] = 3390077 --  3390077 【库里没有该物品】, 【表格】PokerCard7
	tBattlePassTaskTest_Data[3326661]["RewardItem"][1]["Attr"] = "0 75" --  3390077 【库里没有该物品】*75（[错误]物品数量超10个）
	tBattlePassTaskTest_Data[3326661]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3326661]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3326661]["RewardEffect"]["Effect"] = "angelwing"


	tBattlePassTaskTest_Data[3326662] = {}
	-- ===一代宗师礼包
	-- ===索引: tBattlePassTaskTest_Data[3326662]
	-- ===删除: 3326662,1
	-- ===
	-- ===
	tBattlePassTaskTest_Data[3326662]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3326662]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3326662]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3326662]["DeleteItem"][1]["Id"] = 3326662 -- 【库】一代宗师礼包[属性:8]
	tBattlePassTaskTest_Data[3326662]["RewardWing"] = {}
	tBattlePassTaskTest_Data[3326662]["RewardWing"]["TitleType"] = 6032 -- 【库】蝶刹琉璃翼, 【表格】180天时效蝶刹琉璃翼
	tBattlePassTaskTest_Data[3326662]["RewardWing"]["TitleId"] = 6032
	tBattlePassTaskTest_Data[3326662]["RewardWing"]["SaveTime"] = 259200 -- 180天时效的[翅膀]:蝶刹琉璃翼, 【需求】180天时效蝶刹琉璃翼
	tBattlePassTaskTest_Data[3326662]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3326662]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3326662]["RewardItem"][1]["Id"] = 3390077 --  3390077 【库里没有该物品】, 【表格】PokerCard7
	tBattlePassTaskTest_Data[3326662]["RewardItem"][1]["Attr"] = "0 50" --  3390077 【库里没有该物品】*50（[错误]物品数量超10个）
	tBattlePassTaskTest_Data[3326662]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3326662]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3326662]["RewardEffect"]["Effect"] = "angelwing"


	tBattlePassTaskTest_Data[3326663] = {}
	-- ===绝代天骄礼包
	-- ===索引: tBattlePassTaskTest_Data[3326663]
	-- ===删除: 3326663,1
	-- ===
	-- ===
	tBattlePassTaskTest_Data[3326663]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3326663]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3326663]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3326663]["DeleteItem"][1]["Id"] = 3326663 -- 【库】绝代天骄礼包[属性:8]
	tBattlePassTaskTest_Data[3326663]["RewardWing"] = {}
	tBattlePassTaskTest_Data[3326663]["RewardWing"]["TitleType"] = 6032 -- 【库】蝶刹琉璃翼, 【表格】90天时效蝶刹琉璃翼
	tBattlePassTaskTest_Data[3326663]["RewardWing"]["TitleId"] = 6032
	tBattlePassTaskTest_Data[3326663]["RewardWing"]["SaveTime"] = 129600 -- 90天时效的[翅膀]:蝶刹琉璃翼, 【需求】90天时效蝶刹琉璃翼
	tBattlePassTaskTest_Data[3326663]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3326663]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3326663]["RewardItem"][1]["Id"] = 3390077 --  3390077 【库里没有该物品】, 【表格】PokerCard7
	tBattlePassTaskTest_Data[3326663]["RewardItem"][1]["Attr"] = "0 37" --  3390077 【库里没有该物品】*37（[错误]物品数量超10个）
	tBattlePassTaskTest_Data[3326663]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3326663]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3326663]["RewardEffect"]["Effect"] = "angelwing"


	tBattlePassTaskTest_Data[3326664] = {}
	-- ===旷世奇才礼包
	-- ===索引: tBattlePassTaskTest_Data[3326664]
	-- ===删除: 3326664,1
	-- ===
	-- ===
	tBattlePassTaskTest_Data[3326664]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3326664]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3326664]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3326664]["DeleteItem"][1]["Id"] = 3326664 -- 【库】旷世奇才礼包[属性:8]
	tBattlePassTaskTest_Data[3326664]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3326664]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3326664]["RewardItem"][1]["Id"] = 3390077 --  3390077 【库里没有该物品】, 【表格】PokerCard7
	tBattlePassTaskTest_Data[3326664]["RewardItem"][1]["Attr"] = "0 10" --  3390077 【库里没有该物品】*10
	tBattlePassTaskTest_Data[3326664]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3326664]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3326664]["RewardEffect"]["Effect"] = "angelwing"


	tBattlePassTaskTest_Data[3326806] = {}
	-- ===月影星河梦（赠）包
	-- ===索引: tBattlePassTaskTest_Data[3326806]
	-- ===删除: 3326806,1
	-- ===
	-- ===
	tBattlePassTaskTest_Data[3326806]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3326806]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3326806]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3326806]["DeleteItem"][1]["Id"] = 3326806 -- 【库】月影星河梦(赠)包[属性:9]
	tBattlePassTaskTest_Data[3326806]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3326806]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3326806]["RewardItem"][1]["Id"] = 195895 -- 月影星河梦[195895][属性:0][叠加:0][金币:0], 【表格】月影星河梦（赠）
	tBattlePassTaskTest_Data[3326806]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑月影星河梦（赠）*1
	tBattlePassTaskTest_Data[3326806]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3326806]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3326806]["RewardEffect"]["Effect"] = "angelwing"


	tBattlePassTaskTest_Data[3326807] = {}
	-- ===月影星河梦·惊鸿（赠）包
	-- ===索引: tBattlePassTaskTest_Data[3326807]
	-- ===删除: 3326807,1
	-- ===
	-- ===
	tBattlePassTaskTest_Data[3326807]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3326807]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3326807]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3326807]["DeleteItem"][1]["Id"] = 3326807 -- 【库】月影星河梦·惊鸿(赠)包[属性:9]
	tBattlePassTaskTest_Data[3326807]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3326807]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3326807]["RewardItem"][1]["Id"] = 195905 -- 月影星河梦·惊鸿[195905][属性:0][叠加:0][金币:0], 【表格】月影星河梦·惊鸿（赠）
	tBattlePassTaskTest_Data[3326807]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑月影星河梦·惊鸿（赠）*1
	tBattlePassTaskTest_Data[3326807]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3326807]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3326807]["RewardEffect"]["Effect"] = "angelwing"


	
----------------------------------2020.01新战令活动-----------------------------------
	tBattlePassTaskTest_Data[3314199] = {}
	-- ===100万爵位勋章
	-- ===索引:tBattlePassTaskTest_Data[3314199]
	-- ===删除: 3314199,1
	-- ===
	tBattlePassTaskTest_Data[3314199]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3314199]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3314199]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3314199]["DeleteItem"][1]["Id"] = 3314199 -- 【库】100万爵位勋章[属性:8]
	tBattlePassTaskTest_Data[3314199]["RewardDonate"] = {}
	tBattlePassTaskTest_Data[3314199]["RewardDonate"]["Value"] = 1000000 -- 爵位贡献, 【需求】100万点爵位贡献度
	tBattlePassTaskTest_Data[3314199]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3314199]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3314199]["RewardEffect"]["Effect"] = "angelwing"
	
	tBattlePassTaskTest_Data[3327393] = {}
	-- ===天石（赠）豪侠礼盒
	-- ===索引:tBattlePassTaskTest_Data[3327393]
	-- ===删除: 3327393,1
	-- ===NewEMoneyLog:1000,1170
	tBattlePassTaskTest_Data[3327393]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3327393]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3327393]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3327393]["DeleteItem"][1]["Id"] = 3327393 -- 【库】天石（赠）豪侠礼盒[属性:9]
	tBattlePassTaskTest_Data[3327393]["RewardEMoneyMono"] = {}
	tBattlePassTaskTest_Data[3327393]["RewardEMoneyMono"]["Value"] = 100 -- 天石（赠）, 【需求】100天石（赠）
	tBattlePassTaskTest_Data[3327393]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1407"
	tBattlePassTaskTest_Data[3327393]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327393]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327393]["RewardEffect"]["Effect"] = "angelwing"
	
	
	
	tBattlePassTaskTest_Data[3327403] = {}
	tBattlePassTaskTest_Data[3327403]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3327403]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3327403]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3327403]["DeleteItem"][1]["Id"] = 3327403 -- 【库】 3327403 【库里没有该物品】[属性:]
	tBattlePassTaskTest_Data[3327403]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327403]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327403]["RewardItem"][1]["Id"] = 3009002 --  3321640 【库里没有该物品】, 【表格】晶莹星陨石碎片
	tBattlePassTaskTest_Data[3327403]["RewardItem"][1]["Attr"] = "0 7 0 2880 1" -- 2天时效(激活)的 3321640 【库里没有该物品】*14（[错误]物品数量超10个）
	tBattlePassTaskTest_Data[3327403]["RewardItem"][2] = {}
	tBattlePassTaskTest_Data[3327403]["RewardItem"][2]["Id"] = 730005 -- +5Stone[730005][属性:0][叠加:0][金币:0], 【表格】赤炼石+5
	tBattlePassTaskTest_Data[3327403]["RewardItem"][2]["Attr"] = "0 3 0 7200 1" -- 5天时效(激活)的+5Stone*3
	tBattlePassTaskTest_Data[3327403]["RewardItem"][3] = {}
	tBattlePassTaskTest_Data[3327403]["RewardItem"][3]["Id"] = 3314207 -- 1000PointsChiPack[3304198][属性:0][叠加:0][金币:0], 【表格】1000PointsChiPack
	tBattlePassTaskTest_Data[3327403]["RewardItem"][3]["Attr"] = "0 5" -- 1000PointsChiPack*5
	tBattlePassTaskTest_Data[3327403]["RewardItem"][4] = {}
	tBattlePassTaskTest_Data[3327403]["RewardItem"][4]["Id"] = 3314255 -- RareYellowRuneFragment[3311744][属性:8][叠加:10000][金币:0], 【表格】稀有黄色神纹碎片
	tBattlePassTaskTest_Data[3327403]["RewardItem"][4]["Attr"] = "0 4" -- RareYellowRuneFragment*4
	tBattlePassTaskTest_Data[3327403]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327403]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327403]["RewardEffect"]["Effect"] = "angelwing"


	tBattlePassTaskTest_Data[3327404] = {}
	-- ===战令排行亚军礼盒
	-- ===索引: tBattlePassTaskTest_Data[3327404]
	-- ===删除: 3327404,1
	-- ===
	-- ===
	tBattlePassTaskTest_Data[3327404]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3327404]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3327404]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3327404]["DeleteItem"][1]["Id"] = 3327404 -- 【库】 3327404 【库里没有该物品】[属性:]
	tBattlePassTaskTest_Data[3327404]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327404]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327404]["RewardItem"][1]["Id"] = 3009002 --  3321640 【库里没有该物品】, 【表格】晶莹星陨石碎片
	tBattlePassTaskTest_Data[3327404]["RewardItem"][1]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的 3321640 【库里没有该物品】*10
	tBattlePassTaskTest_Data[3327404]["RewardItem"][2] = {}
	tBattlePassTaskTest_Data[3327404]["RewardItem"][2]["Id"] = 730005 -- +5Stone[730005][属性:0][叠加:0][金币:0], 【表格】赤炼石+5
	tBattlePassTaskTest_Data[3327404]["RewardItem"][2]["Attr"] = "0 2 0 7200 1" -- 5天时效(激活)的+5Stone*2
	tBattlePassTaskTest_Data[3327404]["RewardItem"][3] = {}
	tBattlePassTaskTest_Data[3327404]["RewardItem"][3]["Id"] = 3314207 -- 1000PointsChiPack[3304198][属性:0][叠加:0][金币:0], 【表格】1000PointsChiPack
	tBattlePassTaskTest_Data[3327404]["RewardItem"][3]["Attr"] = "0 4" -- 1000PointsChiPack*4
	tBattlePassTaskTest_Data[3327404]["RewardItem"][4] = {}
	tBattlePassTaskTest_Data[3327404]["RewardItem"][4]["Id"] = 3314255 -- RareYellowRuneFragment[3311744][属性:8][叠加:10000][金币:0], 【表格】稀有黄色神纹碎片
	tBattlePassTaskTest_Data[3327404]["RewardItem"][4]["Attr"] = "0 3" -- RareYellowRuneFragment*3
	tBattlePassTaskTest_Data[3327404]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327404]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327404]["RewardEffect"]["Effect"] = "angelwing"


	tBattlePassTaskTest_Data[3327405] = {}
	-- ===豪侠积分季军礼盒
	-- ===索引: tBattlePassTaskTest_Data[3327405]
	-- ===删除: 3327405,1
	-- ===
	-- ===
	tBattlePassTaskTest_Data[3327405]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3327405]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3327405]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3327405]["DeleteItem"][1]["Id"] = 3327405 -- 【库】 3327405 【库里没有该物品】[属性:]
	tBattlePassTaskTest_Data[3327405]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327405]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327405]["RewardItem"][1]["Id"] = 3009002 --  3321640 【库里没有该物品】, 【表格】晶莹星陨石碎片
	tBattlePassTaskTest_Data[3327405]["RewardItem"][1]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的 3321640 【库里没有该物品】*6
	tBattlePassTaskTest_Data[3327405]["RewardItem"][2] = {}
	tBattlePassTaskTest_Data[3327405]["RewardItem"][2]["Id"] = 730005 -- +5Stone[730005][属性:0][叠加:0][金币:0], 【表格】赤炼石+5
	tBattlePassTaskTest_Data[3327405]["RewardItem"][2]["Attr"] = "0 1 0 7200 1" -- 5天时效(激活)的+5Stone*1
	tBattlePassTaskTest_Data[3327405]["RewardItem"][3] = {}
	tBattlePassTaskTest_Data[3327405]["RewardItem"][3]["Id"] = 3314207 -- 1000PointsChiPack[3304198][属性:0][叠加:0][金币:0], 【表格】1000PointsChiPack
	tBattlePassTaskTest_Data[3327405]["RewardItem"][3]["Attr"] = "0 3" -- 1000PointsChiPack*3
	tBattlePassTaskTest_Data[3327405]["RewardItem"][4] = {}
	tBattlePassTaskTest_Data[3327405]["RewardItem"][4]["Id"] = 3314255 -- RareYellowRuneFragment[3311744][属性:8][叠加:10000][金币:0], 【表格】稀有黄色神纹碎片
	tBattlePassTaskTest_Data[3327405]["RewardItem"][4]["Attr"] = "0 2" -- RareYellowRuneFragment*2
	tBattlePassTaskTest_Data[3327405]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327405]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327405]["RewardEffect"]["Effect"] = "angelwing"


	tBattlePassTaskTest_Data[3327406] = {}
	-- ===战令排行精英礼盒
	-- ===索引: tBattlePassTaskTest_Data[3327406]
	-- ===删除: 3327406,1
	-- ===
	-- ===
	tBattlePassTaskTest_Data[3327406]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3327406]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3327406]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3327406]["DeleteItem"][1]["Id"] = 3327406 -- 【库】 3327406 【库里没有该物品】[属性:]
	tBattlePassTaskTest_Data[3327406]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327406]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327406]["RewardItem"][1]["Id"] = 3009002 --  3321640 【库里没有该物品】, 【表格】晶莹星陨石碎片
	tBattlePassTaskTest_Data[3327406]["RewardItem"][1]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的 3321640 【库里没有该物品】*4
	tBattlePassTaskTest_Data[3327406]["RewardItem"][2] = {}
	tBattlePassTaskTest_Data[3327406]["RewardItem"][2]["Id"] = 730004 -- +4Stone[730004][属性:0][叠加:0][金币:0], 【表格】赤炼石+4
	tBattlePassTaskTest_Data[3327406]["RewardItem"][2]["Attr"] = "0 2 0 7200 1" -- 5天时效(激活)的+4Stone*2
	tBattlePassTaskTest_Data[3327406]["RewardItem"][3] = {}
	tBattlePassTaskTest_Data[3327406]["RewardItem"][3]["Id"] = 3314207 -- 1000PointsChiPack[3304198][属性:0][叠加:0][金币:0], 【表格】1000PointsChiPack
	tBattlePassTaskTest_Data[3327406]["RewardItem"][3]["Attr"] = "0 2" -- 1000PointsChiPack*2
	tBattlePassTaskTest_Data[3327406]["RewardItem"][4] = {}
	tBattlePassTaskTest_Data[3327406]["RewardItem"][4]["Id"] = 3314255 -- RareYellowRuneFragment[3311744][属性:8][叠加:10000][金币:0], 【表格】稀有黄色神纹碎片
	tBattlePassTaskTest_Data[3327406]["RewardItem"][4]["Attr"] = "0 1" -- RareYellowRuneFragment*1
	tBattlePassTaskTest_Data[3327406]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327406]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327406]["RewardEffect"]["Effect"] = "angelwing"


	tBattlePassTaskTest_Data[3327381] = {}
	-- ===随机外套礼包
	-- ===索引: tBattlePassTaskTest_Data[3327381][1]
	-- ===删除: 3327381,1
	-- ===
	-- ===
	tBattlePassTaskTest_Data[3327381][1] = {}
	tBattlePassTaskTest_Data[3327381][1]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tBattlePassTaskTest_Data[3327381][1]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3327381][1]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3327381][1]["DeleteItem"][1]["Id"] = 3327381 -- 【库】随机外套礼包[属性:9]
	tBattlePassTaskTest_Data[3327381][1]["LogId"] = 12001359
	-- 赠品GloryofRaptors（King） 猛龙战队【北境之王】-1天时效 - 5%
	tBattlePassTaskTest_Data[3327381][1][1] = {}
	tBattlePassTaskTest_Data[3327381][1][1]["RandomItemChanceType"] = 2
	tBattlePassTaskTest_Data[3327381][1][1]["ItemChance"] = 500
	tBattlePassTaskTest_Data[3327381][1][1]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327381][1][1]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327381][1][1]["RewardItem"][1]["Id"] = 195755 -- GloryofRaptors(King)[195755][属性:0][叠加:0][金币:0], 【表格】赠品GloryofRaptors（King） 猛龙战队【北境之王】-1天时效
	tBattlePassTaskTest_Data[3327381][1][1]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑GloryofRaptors(King)（赠）*1
	tBattlePassTaskTest_Data[3327381][1][1]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327381][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327381][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 赠品CelestialGuard（Thunder）星穹禁卫【雷霆版】-1天时效 - 5%
	tBattlePassTaskTest_Data[3327381][1][2] = {}
	tBattlePassTaskTest_Data[3327381][1][2]["RandomItemChanceType"] = 2
	tBattlePassTaskTest_Data[3327381][1][2]["ItemChance"] = 500
	tBattlePassTaskTest_Data[3327381][1][2]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327381][1][2]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327381][1][2]["RewardItem"][1]["Id"] = 195765 -- CelestialGuard(Thunder)[195765][属性:0][叠加:0][金币:0], 【表格】赠品CelestialGuard（Thunder）星穹禁卫【雷霆版】-1天时效
	tBattlePassTaskTest_Data[3327381][1][2]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑CelestialGuard(Thunder)（赠）*1
	tBattlePassTaskTest_Data[3327381][1][2]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327381][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327381][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 赠品LavaCatRobe（Star）-1天时效 - 5%
	tBattlePassTaskTest_Data[3327381][1][3] = {}
	tBattlePassTaskTest_Data[3327381][1][3]["RandomItemChanceType"] = 2
	tBattlePassTaskTest_Data[3327381][1][3]["ItemChance"] = 500
	tBattlePassTaskTest_Data[3327381][1][3]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327381][1][3]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327381][1][3]["RewardItem"][1]["Id"] = 193565 -- LavaCatRobe(Star)[193565][属性:0][叠加:0][金币:0], 【表格】赠品LavaCatRobe（Star）-1天时效
	tBattlePassTaskTest_Data[3327381][1][3]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑LavaCatRobe(Star)（赠）*1
	tBattlePassTaskTest_Data[3327381][1][3]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327381][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327381][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 赠品LegendofWarriors（Champion）勇士传奇【联盟王者】-1天时效 - 5%
	tBattlePassTaskTest_Data[3327381][1][4] = {}
	tBattlePassTaskTest_Data[3327381][1][4]["RandomItemChanceType"] = 2
	tBattlePassTaskTest_Data[3327381][1][4]["ItemChance"] = 500
	tBattlePassTaskTest_Data[3327381][1][4]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327381][1][4]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327381][1][4]["RewardItem"][1]["Id"] = 195365 -- LegendofWarriors(Champion)[195365][属性:0][叠加:0][金币:0], 【表格】赠品LegendofWarriors（Champion）勇士传奇【联盟王者】-1天时效
	tBattlePassTaskTest_Data[3327381][1][4]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑LegendofWarriors(Champion)（赠）*1
	tBattlePassTaskTest_Data[3327381][1][4]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327381][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327381][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 赠品RobeofDarkness（Hades）（NoHelmet）-1天时效 - 5%
	tBattlePassTaskTest_Data[3327381][1][5] = {}
	tBattlePassTaskTest_Data[3327381][1][5]["RandomItemChanceType"] = 2
	tBattlePassTaskTest_Data[3327381][1][5]["ItemChance"] = 500
	tBattlePassTaskTest_Data[3327381][1][5]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327381][1][5]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327381][1][5]["RewardItem"][1]["Id"] = 193275 -- RobeofDarkness(Hades)(NoHelmet)[193275][属性:8][叠加:0][金币:0], 【表格】赠品RobeofDarkness（Hades）（NoHelmet）-1天时效
	tBattlePassTaskTest_Data[3327381][1][5]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑RobeofDarkness(Hades)(NoHelmet)（赠）*1
	tBattlePassTaskTest_Data[3327381][1][5]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327381][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327381][1][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 赠品ColorofWind十载瑰梦外套【十周年绝版】-3天时效 - 8%
	tBattlePassTaskTest_Data[3327381][1][6] = {}
	tBattlePassTaskTest_Data[3327381][1][6]["RandomItemChanceType"] = 2
	tBattlePassTaskTest_Data[3327381][1][6]["ItemChance"] = 800
	tBattlePassTaskTest_Data[3327381][1][6]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327381][1][6]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327381][1][6]["RewardItem"][1]["Id"] = 192425 -- ColorOfWind[192425][属性:0][叠加:0][金币:100], 【表格】赠品ColorofWind十载瑰梦外套【十周年绝版】-3天时效
	tBattlePassTaskTest_Data[3327381][1][6]["RewardItem"][1]["Attr"] = "0 1 3 4320 1 0 0 1" -- 3天时效(激活)的1%神佑ColorOfWind（赠）*1
	tBattlePassTaskTest_Data[3327381][1][6]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327381][1][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327381][1][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 赠品FreedomSuit天地逍遥服-3天时效 - 8%
	tBattlePassTaskTest_Data[3327381][1][7] = {}
	tBattlePassTaskTest_Data[3327381][1][7]["RandomItemChanceType"] = 2
	tBattlePassTaskTest_Data[3327381][1][7]["ItemChance"] = 800
	tBattlePassTaskTest_Data[3327381][1][7]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327381][1][7]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327381][1][7]["RewardItem"][1]["Id"] = 192745 -- FreedomSuit[192745][属性:0][叠加:0][金币:100], 【表格】赠品FreedomSuit天地逍遥服-3天时效
	tBattlePassTaskTest_Data[3327381][1][7]["RewardItem"][1]["Attr"] = "0 1 3 4320 1 0 0 1" -- 3天时效(激活)的1%神佑FreedomSuit（赠）*1
	tBattlePassTaskTest_Data[3327381][1][7]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327381][1][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327381][1][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 赠品DreamyFairySuit梦幻仙缘套装【珍藏版】-3天时效 - 8%
	tBattlePassTaskTest_Data[3327381][1][8] = {}
	tBattlePassTaskTest_Data[3327381][1][8]["RandomItemChanceType"] = 2
	tBattlePassTaskTest_Data[3327381][1][8]["ItemChance"] = 800
	tBattlePassTaskTest_Data[3327381][1][8]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327381][1][8]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327381][1][8]["RewardItem"][1]["Id"] = 192125 -- DreamyFairySuit[192125][属性:0][叠加:0][金币:0], 【表格】赠品DreamyFairySuit梦幻仙缘套装【珍藏版】-3天时效
	tBattlePassTaskTest_Data[3327381][1][8]["RewardItem"][1]["Attr"] = "0 1 3 4320 1 0 0 1" -- 3天时效(激活)的1%神佑DreamyFairySuit（赠）*1
	tBattlePassTaskTest_Data[3327381][1][8]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327381][1][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327381][1][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 赠品FlameDance火舞九天外套-3天时效 - 8%
	tBattlePassTaskTest_Data[3327381][1][9] = {}
	tBattlePassTaskTest_Data[3327381][1][9]["RandomItemChanceType"] = 2
	tBattlePassTaskTest_Data[3327381][1][9]["ItemChance"] = 800
	tBattlePassTaskTest_Data[3327381][1][9]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327381][1][9]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327381][1][9]["RewardItem"][1]["Id"] = 192785 -- FlameDance[192785][属性:0][叠加:0][金币:0], 【表格】赠品FlameDance火舞九天外套-3天时效
	tBattlePassTaskTest_Data[3327381][1][9]["RewardItem"][1]["Attr"] = "0 1 3 4320 1 0 0 1" -- 3天时效(激活)的1%神佑FlameDance（赠）*1
	tBattlePassTaskTest_Data[3327381][1][9]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327381][1][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327381][1][9]["RewardEffect"]["Effect"] = "angelwing"
	-- 赠品PrideofTriumph洋洋得意套装-3天时效 - 8%
	tBattlePassTaskTest_Data[3327381][1][10] = {}
	tBattlePassTaskTest_Data[3327381][1][10]["RandomItemChanceType"] = 2
	tBattlePassTaskTest_Data[3327381][1][10]["ItemChance"] = 800
	tBattlePassTaskTest_Data[3327381][1][10]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327381][1][10]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327381][1][10]["RewardItem"][1]["Id"] = 193205 -- PrideofTriumph[193205][属性:0][叠加:0][金币:0], 【表格】赠品PrideofTriumph洋洋得意套装-3天时效
	tBattlePassTaskTest_Data[3327381][1][10]["RewardItem"][1]["Attr"] = "0 1 3 4320 1 0 0 1" -- 3天时效(激活)的1%神佑PrideofTriumph（赠）*1
	tBattlePassTaskTest_Data[3327381][1][10]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327381][1][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327381][1][10]["RewardEffect"]["Effect"] = "angelwing"
	-- 赠品ArabicPride-3天时效 - 8%
	tBattlePassTaskTest_Data[3327381][1][11] = {}
	tBattlePassTaskTest_Data[3327381][1][11]["RandomItemChanceType"] = 2
	tBattlePassTaskTest_Data[3327381][1][11]["ItemChance"] = 800
	tBattlePassTaskTest_Data[3327381][1][11]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327381][1][11]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327381][1][11]["RewardItem"][1]["Id"] = 189645 -- ArabicPride[189645][属性:8][叠加:0][金币:0], 【表格】赠品ArabicPride-3天时效
	tBattlePassTaskTest_Data[3327381][1][11]["RewardItem"][1]["Attr"] = "0 1 3 4320 1 0 0 1" -- 3天时效(激活)的1%神佑ArabicPride（赠）*1
	tBattlePassTaskTest_Data[3327381][1][11]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327381][1][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327381][1][11]["RewardEffect"]["Effect"] = "angelwing"
	-- 赠品SpringShirt 桃李春风衫-3天时效 - 9%
	tBattlePassTaskTest_Data[3327381][1][12] = {}
	tBattlePassTaskTest_Data[3327381][1][12]["RandomItemChanceType"] = 2
	tBattlePassTaskTest_Data[3327381][1][12]["ItemChance"] = 900
	tBattlePassTaskTest_Data[3327381][1][12]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327381][1][12]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327381][1][12]["RewardItem"][1]["Id"] = 192435 -- SpringShirt[192435][属性:0][叠加:0][金币:100], 【表格】赠品SpringShirt 桃李春风衫-3天时效
	tBattlePassTaskTest_Data[3327381][1][12]["RewardItem"][1]["Attr"] = "0 1 3 4320 1 0 0 1" -- 3天时效(激活)的1%神佑SpringShirt（赠）*1
	tBattlePassTaskTest_Data[3327381][1][12]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327381][1][12]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327381][1][12]["RewardEffect"]["Effect"] = "angelwing"
	-- 赠品FairyTale雀翎轻衫-3天时效 - 9%
	tBattlePassTaskTest_Data[3327381][1][13] = {}
	tBattlePassTaskTest_Data[3327381][1][13]["RandomItemChanceType"] = 2
	tBattlePassTaskTest_Data[3327381][1][13]["ItemChance"] = 900
	tBattlePassTaskTest_Data[3327381][1][13]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327381][1][13]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327381][1][13]["RewardItem"][1]["Id"] = 188395 -- FairyTale[188395][属性:0][叠加:0][金币:0], 【表格】赠品FairyTale雀翎轻衫-3天时效
	tBattlePassTaskTest_Data[3327381][1][13]["RewardItem"][1]["Attr"] = "0 1 3 4320 1 0 0 1" -- 3天时效(激活)的1%神佑FairyTale（赠）*1
	tBattlePassTaskTest_Data[3327381][1][13]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327381][1][13]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327381][1][13]["RewardEffect"]["Effect"] = "angelwing"
	-- 赠品WizardRobe-3天时效 - 9%
	tBattlePassTaskTest_Data[3327381][1][14] = {}
	tBattlePassTaskTest_Data[3327381][1][14]["RandomItemChanceType"] = 2
	tBattlePassTaskTest_Data[3327381][1][14]["ItemChance"] = 900
	tBattlePassTaskTest_Data[3327381][1][14]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327381][1][14]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327381][1][14]["RewardItem"][1]["Id"] = 192311 -- WizardRobe[192311][属性:0][叠加:0][金币:100], 【表格】赠品WizardRobe-3天时效
	tBattlePassTaskTest_Data[3327381][1][14]["RewardItem"][1]["Attr"] = "0 1 3 4320 1 0 0 1" -- 3天时效(激活)的1%神佑WizardRobe（赠）*1
	tBattlePassTaskTest_Data[3327381][1][14]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327381][1][14]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327381][1][14]["RewardEffect"]["Effect"] = "angelwing"


	tBattlePassTaskTest_Data[3327402] = {}
	-- ===五星外套抽奖礼包
	-- ===索引: tBattlePassTaskTest_Data[3327402][1]
	-- ===删除: 3327402,1
	-- ===
	-- ===
	tBattlePassTaskTest_Data[3327402][1] = {}
	tBattlePassTaskTest_Data[3327402][1]["ItemChanceSum"] = 99995
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tBattlePassTaskTest_Data[3327402][1]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3327402][1]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3327402][1]["DeleteItem"][1]["Id"] = 3327402 -- 【库】五星外套抽奖礼包[属性:9]
	tBattlePassTaskTest_Data[3327402][1]["LogId"] = 12001359
	-- 赠品永久GloryofRaptors（King） 猛龙战队【北境之王】 - 0.001%
	tBattlePassTaskTest_Data[3327402][1][1] = {}
	tBattlePassTaskTest_Data[3327402][1][1]["RandomItemChanceType"] = 2
	tBattlePassTaskTest_Data[3327402][1][1]["ItemChance"] = 1
	tBattlePassTaskTest_Data[3327402][1][1]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327402][1][1]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327402][1][1]["RewardItem"][1]["Id"] = 195755 -- GloryofRaptors(King)[195755][属性:0][叠加:0][金币:0], 【表格】赠品永久GloryofRaptors（King） 猛龙战队【北境之王】
	tBattlePassTaskTest_Data[3327402][1][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑GloryofRaptors(King)（赠）*1
	tBattlePassTaskTest_Data[3327402][1][1]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327402][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327402][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 赠品永久CelestialGuard（Thunder）星穹禁卫【雷霆版】 - 0.001%
	tBattlePassTaskTest_Data[3327402][1][2] = {}
	tBattlePassTaskTest_Data[3327402][1][2]["RandomItemChanceType"] = 2
	tBattlePassTaskTest_Data[3327402][1][2]["ItemChance"] = 1
	tBattlePassTaskTest_Data[3327402][1][2]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327402][1][2]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327402][1][2]["RewardItem"][1]["Id"] = 195765 -- CelestialGuard(Thunder)[195765][属性:0][叠加:0][金币:0], 【表格】赠品永久CelestialGuard（Thunder）星穹禁卫【雷霆版】
	tBattlePassTaskTest_Data[3327402][1][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑CelestialGuard(Thunder)（赠）*1
	tBattlePassTaskTest_Data[3327402][1][2]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327402][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327402][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 赠品永久LavaCatRobe（Star） - 0.001%
	tBattlePassTaskTest_Data[3327402][1][3] = {}
	tBattlePassTaskTest_Data[3327402][1][3]["RandomItemChanceType"] = 2
	tBattlePassTaskTest_Data[3327402][1][3]["ItemChance"] = 1
	tBattlePassTaskTest_Data[3327402][1][3]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327402][1][3]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327402][1][3]["RewardItem"][1]["Id"] = 193565 -- LavaCatRobe(Star)[193565][属性:0][叠加:0][金币:0], 【表格】赠品永久LavaCatRobe（Star）
	tBattlePassTaskTest_Data[3327402][1][3]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑LavaCatRobe(Star)（赠）*1
	tBattlePassTaskTest_Data[3327402][1][3]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327402][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327402][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 赠品永久LegendofWarriors（Champion）勇士传奇【联盟王者】 - 0.001%
	tBattlePassTaskTest_Data[3327402][1][4] = {}
	tBattlePassTaskTest_Data[3327402][1][4]["RandomItemChanceType"] = 2
	tBattlePassTaskTest_Data[3327402][1][4]["ItemChance"] = 1
	tBattlePassTaskTest_Data[3327402][1][4]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327402][1][4]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327402][1][4]["RewardItem"][1]["Id"] = 195365 -- LegendofWarriors(Champion)[195365][属性:0][叠加:0][金币:0], 【表格】赠品永久LegendofWarriors（Champion）勇士传奇【联盟王者】
	tBattlePassTaskTest_Data[3327402][1][4]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑LegendofWarriors(Champion)（赠）*1
	tBattlePassTaskTest_Data[3327402][1][4]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327402][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327402][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 赠品永久RobeofDarkness（Hades）（NoHelmet） - 0.001%
	tBattlePassTaskTest_Data[3327402][1][5] = {}
	tBattlePassTaskTest_Data[3327402][1][5]["RandomItemChanceType"] = 2
	tBattlePassTaskTest_Data[3327402][1][5]["ItemChance"] = 1
	tBattlePassTaskTest_Data[3327402][1][5]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327402][1][5]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327402][1][5]["RewardItem"][1]["Id"] = 193275 -- RobeofDarkness(Hades)(NoHelmet)[193275][属性:8][叠加:0][金币:0], 【表格】赠品永久RobeofDarkness（Hades）（NoHelmet）
	tBattlePassTaskTest_Data[3327402][1][5]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑RobeofDarkness(Hades)(NoHelmet)（赠）*1
	tBattlePassTaskTest_Data[3327402][1][5]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327402][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327402][1][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 赠品永久ColorofWind十载瑰梦外套【十周年绝版】 - 0.01%
	tBattlePassTaskTest_Data[3327402][1][6] = {}
	tBattlePassTaskTest_Data[3327402][1][6]["RandomItemChanceType"] = 2
	tBattlePassTaskTest_Data[3327402][1][6]["ItemChance"] = 10
	tBattlePassTaskTest_Data[3327402][1][6]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327402][1][6]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327402][1][6]["RewardItem"][1]["Id"] = 192425 -- ColorOfWind[192425][属性:0][叠加:0][金币:100], 【表格】赠品永久ColorofWind十载瑰梦外套【十周年绝版】
	tBattlePassTaskTest_Data[3327402][1][6]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑ColorOfWind（赠）*1
	tBattlePassTaskTest_Data[3327402][1][6]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327402][1][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327402][1][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 赠品永久FreedomSuit天地逍遥服 - 0.01%
	tBattlePassTaskTest_Data[3327402][1][7] = {}
	tBattlePassTaskTest_Data[3327402][1][7]["RandomItemChanceType"] = 2
	tBattlePassTaskTest_Data[3327402][1][7]["ItemChance"] = 10
	tBattlePassTaskTest_Data[3327402][1][7]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327402][1][7]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327402][1][7]["RewardItem"][1]["Id"] = 192745 -- FreedomSuit[192745][属性:0][叠加:0][金币:100], 【表格】赠品永久FreedomSuit天地逍遥服
	tBattlePassTaskTest_Data[3327402][1][7]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑FreedomSuit（赠）*1
	tBattlePassTaskTest_Data[3327402][1][7]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327402][1][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327402][1][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 赠品永久DreamyFairySuit梦幻仙缘套装【珍藏版】 - 0.01%
	tBattlePassTaskTest_Data[3327402][1][8] = {}
	tBattlePassTaskTest_Data[3327402][1][8]["RandomItemChanceType"] = 2
	tBattlePassTaskTest_Data[3327402][1][8]["ItemChance"] = 10
	tBattlePassTaskTest_Data[3327402][1][8]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327402][1][8]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327402][1][8]["RewardItem"][1]["Id"] = 192125 -- DreamyFairySuit[192125][属性:0][叠加:0][金币:0], 【表格】赠品永久DreamyFairySuit梦幻仙缘套装【珍藏版】
	tBattlePassTaskTest_Data[3327402][1][8]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑DreamyFairySuit（赠）*1
	tBattlePassTaskTest_Data[3327402][1][8]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327402][1][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327402][1][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 赠品永久FlameDance火舞九天外套 - 0.01%
	tBattlePassTaskTest_Data[3327402][1][9] = {}
	tBattlePassTaskTest_Data[3327402][1][9]["RandomItemChanceType"] = 2
	tBattlePassTaskTest_Data[3327402][1][9]["ItemChance"] = 10
	tBattlePassTaskTest_Data[3327402][1][9]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327402][1][9]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327402][1][9]["RewardItem"][1]["Id"] = 192785 -- FlameDance[192785][属性:0][叠加:0][金币:0], 【表格】赠品永久FlameDance火舞九天外套
	tBattlePassTaskTest_Data[3327402][1][9]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑FlameDance（赠）*1
	tBattlePassTaskTest_Data[3327402][1][9]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327402][1][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327402][1][9]["RewardEffect"]["Effect"] = "angelwing"
	-- 赠品永久PrideofTriumph洋洋得意套装 - 0.01%
	tBattlePassTaskTest_Data[3327402][1][10] = {}
	tBattlePassTaskTest_Data[3327402][1][10]["RandomItemChanceType"] = 2
	tBattlePassTaskTest_Data[3327402][1][10]["ItemChance"] = 10
	tBattlePassTaskTest_Data[3327402][1][10]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327402][1][10]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327402][1][10]["RewardItem"][1]["Id"] = 193205 -- PrideofTriumph[193205][属性:0][叠加:0][金币:0], 【表格】赠品永久PrideofTriumph洋洋得意套装
	tBattlePassTaskTest_Data[3327402][1][10]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑PrideofTriumph（赠）*1
	tBattlePassTaskTest_Data[3327402][1][10]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327402][1][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327402][1][10]["RewardEffect"]["Effect"] = "angelwing"
	-- 赠品永久ArabicPride - 0.01%
	tBattlePassTaskTest_Data[3327402][1][11] = {}
	tBattlePassTaskTest_Data[3327402][1][11]["RandomItemChanceType"] = 2
	tBattlePassTaskTest_Data[3327402][1][11]["ItemChance"] = 10
	tBattlePassTaskTest_Data[3327402][1][11]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327402][1][11]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327402][1][11]["RewardItem"][1]["Id"] = 189645 -- ArabicPride[189645][属性:8][叠加:0][金币:0], 【表格】赠品永久ArabicPride
	tBattlePassTaskTest_Data[3327402][1][11]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑ArabicPride（赠）*1
	tBattlePassTaskTest_Data[3327402][1][11]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327402][1][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327402][1][11]["RewardEffect"]["Effect"] = "angelwing"
	-- 赠品永久SpringShirt 桃李春风衫 - 0.01%
	tBattlePassTaskTest_Data[3327402][1][12] = {}
	tBattlePassTaskTest_Data[3327402][1][12]["RandomItemChanceType"] = 2
	tBattlePassTaskTest_Data[3327402][1][12]["ItemChance"] = 10
	tBattlePassTaskTest_Data[3327402][1][12]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327402][1][12]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327402][1][12]["RewardItem"][1]["Id"] = 192435 -- SpringShirt[192435][属性:0][叠加:0][金币:100], 【表格】赠品永久SpringShirt 桃李春风衫
	tBattlePassTaskTest_Data[3327402][1][12]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑SpringShirt（赠）*1
	tBattlePassTaskTest_Data[3327402][1][12]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327402][1][12]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327402][1][12]["RewardEffect"]["Effect"] = "angelwing"
	-- 赠品永久FairyTale雀翎轻衫 - 0.01%
	tBattlePassTaskTest_Data[3327402][1][13] = {}
	tBattlePassTaskTest_Data[3327402][1][13]["RandomItemChanceType"] = 2
	tBattlePassTaskTest_Data[3327402][1][13]["ItemChance"] = 10
	tBattlePassTaskTest_Data[3327402][1][13]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327402][1][13]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327402][1][13]["RewardItem"][1]["Id"] = 188395 -- FairyTale[188395][属性:0][叠加:0][金币:0], 【表格】赠品永久FairyTale雀翎轻衫
	tBattlePassTaskTest_Data[3327402][1][13]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑FairyTale（赠）*1
	tBattlePassTaskTest_Data[3327402][1][13]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327402][1][13]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327402][1][13]["RewardEffect"]["Effect"] = "angelwing"
	-- 赠品永久WizardRobe - 0.01%
	tBattlePassTaskTest_Data[3327402][1][14] = {}
	tBattlePassTaskTest_Data[3327402][1][14]["RandomItemChanceType"] = 2
	tBattlePassTaskTest_Data[3327402][1][14]["ItemChance"] = 10
	tBattlePassTaskTest_Data[3327402][1][14]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327402][1][14]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327402][1][14]["RewardItem"][1]["Id"] = 192311 -- WizardRobe[192311][属性:0][叠加:0][金币:100], 【表格】赠品永久WizardRobe
	tBattlePassTaskTest_Data[3327402][1][14]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑WizardRobe（赠）*1
	tBattlePassTaskTest_Data[3327402][1][14]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327402][1][14]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327402][1][14]["RewardEffect"]["Effect"] = "angelwing"
	-- 赠品GloryofRaptors（King） 猛龙战队【北境之王】-30天时效+赠品五星外套兑换碎片*1 - 1%
	tBattlePassTaskTest_Data[3327402][1][15] = {}
	tBattlePassTaskTest_Data[3327402][1][15]["RandomItemChanceType"] = 2
	tBattlePassTaskTest_Data[3327402][1][15]["ItemChance"] = 1000
	tBattlePassTaskTest_Data[3327402][1][15]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327402][1][15]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327402][1][15]["RewardItem"][1]["Id"] = 3327411 -- GloryofRaptors(King)（赠）礼盒[3327411][属性:9][叠加:1][金币:0], 【表格】赠品GloryofRaptors（King） 猛龙战队【北境之王】-30天时效+赠品五星外套兑换碎片*1
	tBattlePassTaskTest_Data[3327402][1][15]["RewardItem"][1]["Attr"] = "0 1" -- GloryofRaptors(King)（赠）礼盒*1
	tBattlePassTaskTest_Data[3327402][1][15]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327402][1][15]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327402][1][15]["RewardEffect"]["Effect"] = "angelwing"
	-- 赠品CelestialGuard（Thunder）星穹禁卫【雷霆版】-30天时效+赠品五星外套兑换碎片*1 - 1%
	tBattlePassTaskTest_Data[3327402][1][16] = {}
	tBattlePassTaskTest_Data[3327402][1][16]["RandomItemChanceType"] = 2
	tBattlePassTaskTest_Data[3327402][1][16]["ItemChance"] = 1000
	tBattlePassTaskTest_Data[3327402][1][16]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327402][1][16]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327402][1][16]["RewardItem"][1]["Id"] = 3327412 -- CelestialGuard(Thunder)（赠）礼盒[3327412][属性:9][叠加:1][金币:0], 【表格】赠品CelestialGuard（Thunder）星穹禁卫【雷霆版】-30天时效+赠品五星外套兑换碎片*1
	tBattlePassTaskTest_Data[3327402][1][16]["RewardItem"][1]["Attr"] = "0 1" -- CelestialGuard(Thunder)（赠）礼盒*1
	tBattlePassTaskTest_Data[3327402][1][16]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327402][1][16]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327402][1][16]["RewardEffect"]["Effect"] = "angelwing"
	-- 赠品LavaCatRobe（Star）-30天时效+赠品五星外套兑换碎片*1 - 1%
	tBattlePassTaskTest_Data[3327402][1][17] = {}
	tBattlePassTaskTest_Data[3327402][1][17]["RandomItemChanceType"] = 2
	tBattlePassTaskTest_Data[3327402][1][17]["ItemChance"] = 1000
	tBattlePassTaskTest_Data[3327402][1][17]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327402][1][17]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327402][1][17]["RewardItem"][1]["Id"] = 3327413 -- LavaCatRobe(Star)（赠）礼盒[3327413][属性:9][叠加:1][金币:0], 【表格】赠品LavaCatRobe（Star）-30天时效+赠品五星外套兑换碎片*1
	tBattlePassTaskTest_Data[3327402][1][17]["RewardItem"][1]["Attr"] = "0 1" -- LavaCatRobe(Star)（赠）礼盒*1
	tBattlePassTaskTest_Data[3327402][1][17]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327402][1][17]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327402][1][17]["RewardEffect"]["Effect"] = "angelwing"
	-- 赠品LegendofWarriors（Champion）勇士传奇【联盟王者】-30天时效+赠品五星外套兑换碎片*1 - 1%
	tBattlePassTaskTest_Data[3327402][1][18] = {}
	tBattlePassTaskTest_Data[3327402][1][18]["RandomItemChanceType"] = 2
	tBattlePassTaskTest_Data[3327402][1][18]["ItemChance"] = 1000
	tBattlePassTaskTest_Data[3327402][1][18]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327402][1][18]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327402][1][18]["RewardItem"][1]["Id"] = 3327414 -- LegendofWarriors(Champion)（赠）礼盒[3327414][属性:9][叠加:1][金币:0], 【表格】赠品LegendofWarriors（Champion）勇士传奇【联盟王者】-30天时效+赠品五星外套兑换碎片*1
	tBattlePassTaskTest_Data[3327402][1][18]["RewardItem"][1]["Attr"] = "0 1" -- LegendofWarriors(Champion)（赠）礼盒*1
	tBattlePassTaskTest_Data[3327402][1][18]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327402][1][18]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327402][1][18]["RewardEffect"]["Effect"] = "angelwing"
	-- 赠品RobeofDarkness（Hades）（NoHelmet）-30天时效+赠品五星外套兑换碎片*1 - 1%
	tBattlePassTaskTest_Data[3327402][1][19] = {}
	tBattlePassTaskTest_Data[3327402][1][19]["RandomItemChanceType"] = 2
	tBattlePassTaskTest_Data[3327402][1][19]["ItemChance"] = 1000
	tBattlePassTaskTest_Data[3327402][1][19]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327402][1][19]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327402][1][19]["RewardItem"][1]["Id"] = 3327415 -- RobeofDarkness(Hades)(NoHelmet)（赠）礼盒[3327415][属性:9][叠加:1][金币:0], 【表格】赠品RobeofDarkness（Hades）（NoHelmet）-30天时效+赠品五星外套兑换碎片*1
	tBattlePassTaskTest_Data[3327402][1][19]["RewardItem"][1]["Attr"] = "0 1" -- RobeofDarkness(Hades)(NoHelmet)（赠）礼盒*1
	tBattlePassTaskTest_Data[3327402][1][19]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327402][1][19]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327402][1][19]["RewardEffect"]["Effect"] = "angelwing"
	-- 赠品ColorofWind十载瑰梦外套【十周年绝版】-30天时效+赠品四星外套兑换碎片*1 - 13%
	tBattlePassTaskTest_Data[3327402][1][20] = {}
	tBattlePassTaskTest_Data[3327402][1][20]["RandomItemChanceType"] = 2
	tBattlePassTaskTest_Data[3327402][1][20]["ItemChance"] = 13000
	tBattlePassTaskTest_Data[3327402][1][20]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327402][1][20]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327402][1][20]["RewardItem"][1]["Id"] = 3327416 -- ColorofWind（赠）礼盒[3327416][属性:9][叠加:1][金币:0], 【表格】赠品ColorofWind十载瑰梦外套【十周年绝版】-30天时效+赠品四星外套兑换碎片*1
	tBattlePassTaskTest_Data[3327402][1][20]["RewardItem"][1]["Attr"] = "0 1" -- ColorofWind（赠）礼盒*1
	tBattlePassTaskTest_Data[3327402][1][20]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327402][1][20]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327402][1][20]["RewardEffect"]["Effect"] = "angelwing"
	-- 赠品FreedomSuit天地逍遥服-30天时效+赠品四星外套兑换碎片*1 - 10%
	tBattlePassTaskTest_Data[3327402][1][21] = {}
	tBattlePassTaskTest_Data[3327402][1][21]["RandomItemChanceType"] = 2
	tBattlePassTaskTest_Data[3327402][1][21]["ItemChance"] = 10000
	tBattlePassTaskTest_Data[3327402][1][21]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327402][1][21]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327402][1][21]["RewardItem"][1]["Id"] = 3327417 -- FreedomSuit（赠）礼盒[3327417][属性:9][叠加:1][金币:0], 【表格】赠品FreedomSuit天地逍遥服-30天时效+赠品四星外套兑换碎片*1
	tBattlePassTaskTest_Data[3327402][1][21]["RewardItem"][1]["Attr"] = "0 1" -- FreedomSuit（赠）礼盒*1
	tBattlePassTaskTest_Data[3327402][1][21]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327402][1][21]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327402][1][21]["RewardEffect"]["Effect"] = "angelwing"
	-- 赠品DreamyFairySuit梦幻仙缘套装【珍藏版】-30天时效+赠品四星外套兑换碎片*1 - 10%
	tBattlePassTaskTest_Data[3327402][1][22] = {}
	tBattlePassTaskTest_Data[3327402][1][22]["RandomItemChanceType"] = 2
	tBattlePassTaskTest_Data[3327402][1][22]["ItemChance"] = 10000
	tBattlePassTaskTest_Data[3327402][1][22]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327402][1][22]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327402][1][22]["RewardItem"][1]["Id"] = 3327418 -- DreamyFairySuit（赠）礼盒[3327418][属性:9][叠加:1][金币:0], 【表格】赠品DreamyFairySuit梦幻仙缘套装【珍藏版】-30天时效+赠品四星外套兑换碎片*1
	tBattlePassTaskTest_Data[3327402][1][22]["RewardItem"][1]["Attr"] = "0 1" -- DreamyFairySuit（赠）礼盒*1
	tBattlePassTaskTest_Data[3327402][1][22]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327402][1][22]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327402][1][22]["RewardEffect"]["Effect"] = "angelwing"
	-- 赠品FlameDance火舞九天外套-30天时效+赠品四星外套兑换碎片*1 - 10%
	tBattlePassTaskTest_Data[3327402][1][23] = {}
	tBattlePassTaskTest_Data[3327402][1][23]["RandomItemChanceType"] = 2
	tBattlePassTaskTest_Data[3327402][1][23]["ItemChance"] = 10000
	tBattlePassTaskTest_Data[3327402][1][23]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327402][1][23]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327402][1][23]["RewardItem"][1]["Id"] = 3327419 -- FlameDance（赠）礼盒[3327419][属性:9][叠加:1][金币:0], 【表格】赠品FlameDance火舞九天外套-30天时效+赠品四星外套兑换碎片*1
	tBattlePassTaskTest_Data[3327402][1][23]["RewardItem"][1]["Attr"] = "0 1" -- FlameDance（赠）礼盒*1
	tBattlePassTaskTest_Data[3327402][1][23]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327402][1][23]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327402][1][23]["RewardEffect"]["Effect"] = "angelwing"
	-- 赠品PrideofTriumph洋洋得意套装-30天时效+赠品四星外套兑换碎片*1 - 11.9%
	tBattlePassTaskTest_Data[3327402][1][24] = {}
	tBattlePassTaskTest_Data[3327402][1][24]["RandomItemChanceType"] = 2
	tBattlePassTaskTest_Data[3327402][1][24]["ItemChance"] = 11900
	tBattlePassTaskTest_Data[3327402][1][24]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327402][1][24]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327402][1][24]["RewardItem"][1]["Id"] = 3327420 -- PrideofTriumph（赠）礼盒[3327420][属性:9][叠加:1][金币:0], 【表格】赠品PrideofTriumph洋洋得意套装-30天时效+赠品四星外套兑换碎片*1
	tBattlePassTaskTest_Data[3327402][1][24]["RewardItem"][1]["Attr"] = "0 1" -- PrideofTriumph（赠）礼盒*1
	tBattlePassTaskTest_Data[3327402][1][24]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327402][1][24]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327402][1][24]["RewardEffect"]["Effect"] = "angelwing"
	-- 赠品ArabicPride-30天时效+赠品四星外套兑换碎片*1 - 10%
	tBattlePassTaskTest_Data[3327402][1][25] = {}
	tBattlePassTaskTest_Data[3327402][1][25]["RandomItemChanceType"] = 2
	tBattlePassTaskTest_Data[3327402][1][25]["ItemChance"] = 10000
	tBattlePassTaskTest_Data[3327402][1][25]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327402][1][25]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327402][1][25]["RewardItem"][1]["Id"] = 3327421 -- ArabicPride（赠）礼盒[3327421][属性:9][叠加:1][金币:0], 【表格】赠品ArabicPride-30天时效+赠品四星外套兑换碎片*1
	tBattlePassTaskTest_Data[3327402][1][25]["RewardItem"][1]["Attr"] = "0 1" -- ArabicPride（赠）礼盒*1
	tBattlePassTaskTest_Data[3327402][1][25]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327402][1][25]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327402][1][25]["RewardEffect"]["Effect"] = "angelwing"
	-- 赠品SpringShirt 桃李春风衫-30天时效+赠品四星外套兑换碎片*1 - 10%
	tBattlePassTaskTest_Data[3327402][1][26] = {}
	tBattlePassTaskTest_Data[3327402][1][26]["RandomItemChanceType"] = 2
	tBattlePassTaskTest_Data[3327402][1][26]["ItemChance"] = 10000
	tBattlePassTaskTest_Data[3327402][1][26]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327402][1][26]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327402][1][26]["RewardItem"][1]["Id"] = 3327422 -- SpringShirt（赠）礼盒[3327422][属性:9][叠加:1][金币:0], 【表格】赠品SpringShirt 桃李春风衫-30天时效+赠品四星外套兑换碎片*1
	tBattlePassTaskTest_Data[3327402][1][26]["RewardItem"][1]["Attr"] = "0 1" -- SpringShirt（赠）礼盒*1
	tBattlePassTaskTest_Data[3327402][1][26]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327402][1][26]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327402][1][26]["RewardEffect"]["Effect"] = "angelwing"
	-- 赠品FairyTale雀翎轻衫-30天时效+赠品四星外套兑换碎片*1 - 10%
	tBattlePassTaskTest_Data[3327402][1][27] = {}
	tBattlePassTaskTest_Data[3327402][1][27]["RandomItemChanceType"] = 2
	tBattlePassTaskTest_Data[3327402][1][27]["ItemChance"] = 10000
	tBattlePassTaskTest_Data[3327402][1][27]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327402][1][27]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327402][1][27]["RewardItem"][1]["Id"] = 3327423 -- FairyTale（赠）礼盒[3327423][属性:9][叠加:1][金币:0], 【表格】赠品FairyTale雀翎轻衫-30天时效+赠品四星外套兑换碎片*1
	tBattlePassTaskTest_Data[3327402][1][27]["RewardItem"][1]["Attr"] = "0 1" -- FairyTale（赠）礼盒*1
	tBattlePassTaskTest_Data[3327402][1][27]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327402][1][27]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327402][1][27]["RewardEffect"]["Effect"] = "angelwing"
	-- 赠品WizardRobe-30天时效+赠品四星外套兑换碎片*1 - 10%
	tBattlePassTaskTest_Data[3327402][1][28] = {}
	tBattlePassTaskTest_Data[3327402][1][28]["RandomItemChanceType"] = 2
	tBattlePassTaskTest_Data[3327402][1][28]["ItemChance"] = 10000
	tBattlePassTaskTest_Data[3327402][1][28]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327402][1][28]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327402][1][28]["RewardItem"][1]["Id"] = 3327424 -- WizardRobe（赠）礼盒[3327424][属性:9][叠加:1][金币:0], 【表格】赠品WizardRobe-30天时效+赠品四星外套兑换碎片*1
	tBattlePassTaskTest_Data[3327402][1][28]["RewardItem"][1]["Attr"] = "0 1" -- WizardRobe（赠）礼盒*1
	tBattlePassTaskTest_Data[3327402][1][28]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327402][1][28]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327402][1][28]["RewardEffect"]["Effect"] = "angelwing"


	tBattlePassTaskTest_Data[3327410] = {}
	-- ===5星外套福袋
	-- ===索引: tBattlePassTaskTest_Data[3327410][1]
	-- ===删除: 3327410,1
	-- ===
	-- ===
	tBattlePassTaskTest_Data[3327410][1] = {}
	tBattlePassTaskTest_Data[3327410][1]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tBattlePassTaskTest_Data[3327410][1]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3327410][1]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3327410][1]["DeleteItem"][1]["Id"] = 3327410 -- 【库】5星外套福袋[属性:9]
	tBattlePassTaskTest_Data[3327410][1]["LogId"] = 12001359
	-- 赠品永久GloryofRaptors（King） 猛龙战队【北境之王】 - 15%
	tBattlePassTaskTest_Data[3327410][1][1] = {}
	tBattlePassTaskTest_Data[3327410][1][1]["RandomItemChanceType"] = 2
	tBattlePassTaskTest_Data[3327410][1][1]["ItemChance"] = 1500
	tBattlePassTaskTest_Data[3327410][1][1]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327410][1][1]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327410][1][1]["RewardItem"][1]["Id"] = 195755 -- GloryofRaptors(King)[195755][属性:0][叠加:0][金币:0], 【表格】赠品永久GloryofRaptors（King） 猛龙战队【北境之王】
	tBattlePassTaskTest_Data[3327410][1][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑GloryofRaptors(King)（赠）*1
	tBattlePassTaskTest_Data[3327410][1][1]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327410][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327410][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 赠品永久CelestialGuard（Thunder）星穹禁卫【雷霆版】 - 15%
	tBattlePassTaskTest_Data[3327410][1][2] = {}
	tBattlePassTaskTest_Data[3327410][1][2]["RandomItemChanceType"] = 2
	tBattlePassTaskTest_Data[3327410][1][2]["ItemChance"] = 1500
	tBattlePassTaskTest_Data[3327410][1][2]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327410][1][2]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327410][1][2]["RewardItem"][1]["Id"] = 195765 -- CelestialGuard(Thunder)[195765][属性:0][叠加:0][金币:0], 【表格】赠品永久CelestialGuard（Thunder）星穹禁卫【雷霆版】
	tBattlePassTaskTest_Data[3327410][1][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑CelestialGuard(Thunder)（赠）*1
	tBattlePassTaskTest_Data[3327410][1][2]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327410][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327410][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 赠品永久LavaCatRobe（Star） - 27.5%
	tBattlePassTaskTest_Data[3327410][1][3] = {}
	tBattlePassTaskTest_Data[3327410][1][3]["RandomItemChanceType"] = 2
	tBattlePassTaskTest_Data[3327410][1][3]["ItemChance"] = 2750
	tBattlePassTaskTest_Data[3327410][1][3]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327410][1][3]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327410][1][3]["RewardItem"][1]["Id"] = 193565 -- LavaCatRobe(Star)[193565][属性:0][叠加:0][金币:0], 【表格】赠品永久LavaCatRobe（Star）
	tBattlePassTaskTest_Data[3327410][1][3]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑LavaCatRobe(Star)（赠）*1
	tBattlePassTaskTest_Data[3327410][1][3]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327410][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327410][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 赠品永久LegendofWarriors（Champion）勇士传奇【联盟王者】 - 15%
	tBattlePassTaskTest_Data[3327410][1][4] = {}
	tBattlePassTaskTest_Data[3327410][1][4]["RandomItemChanceType"] = 2
	tBattlePassTaskTest_Data[3327410][1][4]["ItemChance"] = 1500
	tBattlePassTaskTest_Data[3327410][1][4]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327410][1][4]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327410][1][4]["RewardItem"][1]["Id"] = 195365 -- LegendofWarriors(Champion)[195365][属性:0][叠加:0][金币:0], 【表格】赠品永久LegendofWarriors（Champion）勇士传奇【联盟王者】
	tBattlePassTaskTest_Data[3327410][1][4]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑LegendofWarriors(Champion)（赠）*1
	tBattlePassTaskTest_Data[3327410][1][4]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327410][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327410][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 赠品永久RobeofDarkness（Hades）（NoHelmet） - 27.5%
	tBattlePassTaskTest_Data[3327410][1][5] = {}
	tBattlePassTaskTest_Data[3327410][1][5]["RandomItemChanceType"] = 2
	tBattlePassTaskTest_Data[3327410][1][5]["ItemChance"] = 2750
	tBattlePassTaskTest_Data[3327410][1][5]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327410][1][5]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327410][1][5]["RewardItem"][1]["Id"] = 193275 -- RobeofDarkness(Hades)(NoHelmet)[193275][属性:8][叠加:0][金币:0], 【表格】赠品永久RobeofDarkness（Hades）（NoHelmet）
	tBattlePassTaskTest_Data[3327410][1][5]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑RobeofDarkness(Hades)(NoHelmet)（赠）*1
	tBattlePassTaskTest_Data[3327410][1][5]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327410][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327410][1][5]["RewardEffect"]["Effect"] = "angelwing"


	tBattlePassTaskTest_Data[3327409] = {}
	-- ===4星外套福袋
	-- ===索引: tBattlePassTaskTest_Data[3327409][1]
	-- ===删除: 3327409,1
	-- ===
	-- ===
	tBattlePassTaskTest_Data[3327409][1] = {}
	tBattlePassTaskTest_Data[3327409][1]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tBattlePassTaskTest_Data[3327409][1]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3327409][1]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3327409][1]["DeleteItem"][1]["Id"] = 3327409 -- 【库】4星外套福袋[属性:9]
	tBattlePassTaskTest_Data[3327409][1]["LogId"] = 12001359
	-- 赠品永久ColorofWind十载瑰梦外套【十周年绝版】 - 8%
	tBattlePassTaskTest_Data[3327409][1][1] = {}
	tBattlePassTaskTest_Data[3327409][1][1]["RandomItemChanceType"] = 2
	tBattlePassTaskTest_Data[3327409][1][1]["ItemChance"] = 800
	tBattlePassTaskTest_Data[3327409][1][1]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327409][1][1]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327409][1][1]["RewardItem"][1]["Id"] = 192425 -- ColorOfWind[192425][属性:0][叠加:0][金币:100], 【表格】赠品永久ColorofWind十载瑰梦外套【十周年绝版】
	tBattlePassTaskTest_Data[3327409][1][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑ColorOfWind（赠）*1
	tBattlePassTaskTest_Data[3327409][1][1]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327409][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327409][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 赠品永久FreedomSuit天地逍遥服 - 8%
	tBattlePassTaskTest_Data[3327409][1][2] = {}
	tBattlePassTaskTest_Data[3327409][1][2]["RandomItemChanceType"] = 2
	tBattlePassTaskTest_Data[3327409][1][2]["ItemChance"] = 800
	tBattlePassTaskTest_Data[3327409][1][2]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327409][1][2]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327409][1][2]["RewardItem"][1]["Id"] = 192745 -- FreedomSuit[192745][属性:0][叠加:0][金币:100], 【表格】赠品永久FreedomSuit天地逍遥服
	tBattlePassTaskTest_Data[3327409][1][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑FreedomSuit（赠）*1
	tBattlePassTaskTest_Data[3327409][1][2]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327409][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327409][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 赠品永久DreamyFairySuit梦幻仙缘套装【珍藏版】 - 8%
	tBattlePassTaskTest_Data[3327409][1][3] = {}
	tBattlePassTaskTest_Data[3327409][1][3]["RandomItemChanceType"] = 2
	tBattlePassTaskTest_Data[3327409][1][3]["ItemChance"] = 800
	tBattlePassTaskTest_Data[3327409][1][3]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327409][1][3]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327409][1][3]["RewardItem"][1]["Id"] = 192125 -- DreamyFairySuit[192125][属性:0][叠加:0][金币:0], 【表格】赠品永久DreamyFairySuit梦幻仙缘套装【珍藏版】
	tBattlePassTaskTest_Data[3327409][1][3]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑DreamyFairySuit（赠）*1
	tBattlePassTaskTest_Data[3327409][1][3]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327409][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327409][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 赠品永久FlameDance火舞九天外套 - 25%
	tBattlePassTaskTest_Data[3327409][1][4] = {}
	tBattlePassTaskTest_Data[3327409][1][4]["RandomItemChanceType"] = 2
	tBattlePassTaskTest_Data[3327409][1][4]["ItemChance"] = 2500
	tBattlePassTaskTest_Data[3327409][1][4]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327409][1][4]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327409][1][4]["RewardItem"][1]["Id"] = 192785 -- FlameDance[192785][属性:0][叠加:0][金币:0], 【表格】赠品永久FlameDance火舞九天外套
	tBattlePassTaskTest_Data[3327409][1][4]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑FlameDance（赠）*1
	tBattlePassTaskTest_Data[3327409][1][4]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327409][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327409][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 赠品永久PrideofTriumph洋洋得意套装 - 22%
	tBattlePassTaskTest_Data[3327409][1][5] = {}
	tBattlePassTaskTest_Data[3327409][1][5]["RandomItemChanceType"] = 2
	tBattlePassTaskTest_Data[3327409][1][5]["ItemChance"] = 2200
	tBattlePassTaskTest_Data[3327409][1][5]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327409][1][5]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327409][1][5]["RewardItem"][1]["Id"] = 193205 -- PrideofTriumph[193205][属性:0][叠加:0][金币:0], 【表格】赠品永久PrideofTriumph洋洋得意套装
	tBattlePassTaskTest_Data[3327409][1][5]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑PrideofTriumph（赠）*1
	tBattlePassTaskTest_Data[3327409][1][5]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327409][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327409][1][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 赠品永久ArabicPride - 1%
	tBattlePassTaskTest_Data[3327409][1][6] = {}
	tBattlePassTaskTest_Data[3327409][1][6]["RandomItemChanceType"] = 2
	tBattlePassTaskTest_Data[3327409][1][6]["ItemChance"] = 100
	tBattlePassTaskTest_Data[3327409][1][6]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327409][1][6]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327409][1][6]["RewardItem"][1]["Id"] = 189645 -- ArabicPride[189645][属性:8][叠加:0][金币:0], 【表格】赠品永久ArabicPride
	tBattlePassTaskTest_Data[3327409][1][6]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑ArabicPride（赠）*1
	tBattlePassTaskTest_Data[3327409][1][6]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327409][1][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327409][1][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 赠品永久SpringShirt 桃李春风衫 - 9%
	tBattlePassTaskTest_Data[3327409][1][7] = {}
	tBattlePassTaskTest_Data[3327409][1][7]["RandomItemChanceType"] = 2
	tBattlePassTaskTest_Data[3327409][1][7]["ItemChance"] = 900
	tBattlePassTaskTest_Data[3327409][1][7]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327409][1][7]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327409][1][7]["RewardItem"][1]["Id"] = 192435 -- SpringShirt[192435][属性:0][叠加:0][金币:100], 【表格】赠品永久SpringShirt 桃李春风衫
	tBattlePassTaskTest_Data[3327409][1][7]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑SpringShirt（赠）*1
	tBattlePassTaskTest_Data[3327409][1][7]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327409][1][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327409][1][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 赠品永久FairyTale雀翎轻衫 - 9%
	tBattlePassTaskTest_Data[3327409][1][8] = {}
	tBattlePassTaskTest_Data[3327409][1][8]["RandomItemChanceType"] = 2
	tBattlePassTaskTest_Data[3327409][1][8]["ItemChance"] = 900
	tBattlePassTaskTest_Data[3327409][1][8]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327409][1][8]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327409][1][8]["RewardItem"][1]["Id"] = 188395 -- FairyTale[188395][属性:0][叠加:0][金币:0], 【表格】赠品永久FairyTale雀翎轻衫
	tBattlePassTaskTest_Data[3327409][1][8]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑FairyTale（赠）*1
	tBattlePassTaskTest_Data[3327409][1][8]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327409][1][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327409][1][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 赠品永久WizardRobe - 10%
	tBattlePassTaskTest_Data[3327409][1][9] = {}
	tBattlePassTaskTest_Data[3327409][1][9]["RandomItemChanceType"] = 2
	tBattlePassTaskTest_Data[3327409][1][9]["ItemChance"] = 1000
	tBattlePassTaskTest_Data[3327409][1][9]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327409][1][9]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327409][1][9]["RewardItem"][1]["Id"] = 192311 -- WizardRobe[192311][属性:0][叠加:0][金币:100], 【表格】赠品永久WizardRobe
	tBattlePassTaskTest_Data[3327409][1][9]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑WizardRobe（赠）*1
	tBattlePassTaskTest_Data[3327409][1][9]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327409][1][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327409][1][9]["RewardEffect"]["Effect"] = "angelwing"


	tBattlePassTaskTest_Data[3327411] = {}
	-- ===GloryofRaptors（King）（赠）礼盒
	-- ===索引: tBattlePassTaskTest_Data[3327411]
	-- ===删除: 3327411,1
	-- ===
	-- ===
	tBattlePassTaskTest_Data[3327411]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3327411]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3327411]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3327411]["DeleteItem"][1]["Id"] = 3327411 -- 【库】GloryofRaptors(King)（赠）礼盒[属性:9]
	tBattlePassTaskTest_Data[3327411]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327411]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327411]["RewardItem"][1]["Id"] = 195755 -- GloryofRaptors(King)[195755][属性:0][叠加:0][金币:0], 【表格】30天时效的GloryofRaptors（King）（赠）
	tBattlePassTaskTest_Data[3327411]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑GloryofRaptors(King)（赠）*1
	tBattlePassTaskTest_Data[3327411]["RewardItem"][2] = {}
	tBattlePassTaskTest_Data[3327411]["RewardItem"][2]["Id"] = 3327408 -- 赠品五星外套碎片[3327408][属性:9][叠加:1][金币:0], 【表格】赠品五星外套碎片
	tBattlePassTaskTest_Data[3327411]["RewardItem"][2]["Attr"] = "0 1" -- 赠品五星外套碎片*1
	tBattlePassTaskTest_Data[3327411]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327411]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327411]["RewardEffect"]["Effect"] = "angelwing"


	tBattlePassTaskTest_Data[3327412] = {}
	-- ===CelestialGuard（Thunder）（赠）礼盒
	-- ===索引: tBattlePassTaskTest_Data[3327412]
	-- ===删除: 3327412,1
	-- ===
	-- ===
	tBattlePassTaskTest_Data[3327412]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3327412]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3327412]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3327412]["DeleteItem"][1]["Id"] = 3327412 -- 【库】CelestialGuard(Thunder)（赠）礼盒[属性:9]
	tBattlePassTaskTest_Data[3327412]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327412]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327412]["RewardItem"][1]["Id"] = 195765 -- CelestialGuard(Thunder)[195765][属性:0][叠加:0][金币:0], 【表格】30天时效的CelestialGuard（Thunder）（赠）
	tBattlePassTaskTest_Data[3327412]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑CelestialGuard(Thunder)（赠）*1
	tBattlePassTaskTest_Data[3327412]["RewardItem"][2] = {}
	tBattlePassTaskTest_Data[3327412]["RewardItem"][2]["Id"] = 3327408 -- 赠品五星外套碎片[3327408][属性:9][叠加:1][金币:0], 【表格】赠品五星外套碎片
	tBattlePassTaskTest_Data[3327412]["RewardItem"][2]["Attr"] = "0 1" -- 赠品五星外套碎片*1
	tBattlePassTaskTest_Data[3327412]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327412]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327412]["RewardEffect"]["Effect"] = "angelwing"


	tBattlePassTaskTest_Data[3327413] = {}
	-- ===LavaCatRobe（Star）（赠）礼盒
	-- ===索引: tBattlePassTaskTest_Data[3327413]
	-- ===删除: 3327413,1
	-- ===
	-- ===
	tBattlePassTaskTest_Data[3327413]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3327413]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3327413]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3327413]["DeleteItem"][1]["Id"] = 3327413 -- 【库】LavaCatRobe(Star)（赠）礼盒[属性:9]
	tBattlePassTaskTest_Data[3327413]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327413]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327413]["RewardItem"][1]["Id"] = 193565 -- LavaCatRobe(Star)[193565][属性:0][叠加:0][金币:0], 【表格】30天时效的LavaCatRobe（Star）（赠）
	tBattlePassTaskTest_Data[3327413]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑LavaCatRobe(Star)（赠）*1
	tBattlePassTaskTest_Data[3327413]["RewardItem"][2] = {}
	tBattlePassTaskTest_Data[3327413]["RewardItem"][2]["Id"] = 3327408 -- 赠品五星外套碎片[3327408][属性:9][叠加:1][金币:0], 【表格】赠品五星外套碎片
	tBattlePassTaskTest_Data[3327413]["RewardItem"][2]["Attr"] = "0 1" -- 赠品五星外套碎片*1
	tBattlePassTaskTest_Data[3327413]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327413]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327413]["RewardEffect"]["Effect"] = "angelwing"


	tBattlePassTaskTest_Data[3327414] = {}
	-- ===LegendofWarriors（Champion）（赠）礼盒
	-- ===索引: tBattlePassTaskTest_Data[3327414]
	-- ===删除: 3327414,1
	-- ===
	-- ===
	tBattlePassTaskTest_Data[3327414]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3327414]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3327414]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3327414]["DeleteItem"][1]["Id"] = 3327414 -- 【库】LegendofWarriors(Champion)（赠）礼盒[属性:9]
	tBattlePassTaskTest_Data[3327414]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327414]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327414]["RewardItem"][1]["Id"] = 195365 -- LegendofWarriors(Champion)[195365][属性:0][叠加:0][金币:0], 【表格】30天时效的LegendofWarriors（Champion）（赠）
	tBattlePassTaskTest_Data[3327414]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑LegendofWarriors(Champion)（赠）*1
	tBattlePassTaskTest_Data[3327414]["RewardItem"][2] = {}
	tBattlePassTaskTest_Data[3327414]["RewardItem"][2]["Id"] = 3327408 -- 赠品五星外套碎片[3327408][属性:9][叠加:1][金币:0], 【表格】赠品五星外套碎片
	tBattlePassTaskTest_Data[3327414]["RewardItem"][2]["Attr"] = "0 1" -- 赠品五星外套碎片*1
	tBattlePassTaskTest_Data[3327414]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327414]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327414]["RewardEffect"]["Effect"] = "angelwing"


	tBattlePassTaskTest_Data[3327415] = {}
	-- ===RobeofDarkness（Hades）（NoHelmet）（赠）礼盒
	-- ===索引: tBattlePassTaskTest_Data[3327415]
	-- ===删除: 3327415,1
	-- ===
	-- ===
	tBattlePassTaskTest_Data[3327415]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3327415]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3327415]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3327415]["DeleteItem"][1]["Id"] = 3327415 -- 【库】RobeofDarkness(Hades)(NoHelmet)（赠）礼盒[属性:9]
	tBattlePassTaskTest_Data[3327415]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327415]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327415]["RewardItem"][1]["Id"] = 193275 -- RobeofDarkness(Hades)(NoHelmet)[193275][属性:8][叠加:0][金币:0], 【表格】30天时效的RobeofDarkness（Hades）（NoHelmet）（赠）
	tBattlePassTaskTest_Data[3327415]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑RobeofDarkness(Hades)(NoHelmet)（赠）*1
	tBattlePassTaskTest_Data[3327415]["RewardItem"][2] = {}
	tBattlePassTaskTest_Data[3327415]["RewardItem"][2]["Id"] = 3327408 -- 赠品五星外套碎片[3327408][属性:9][叠加:1][金币:0], 【表格】赠品五星外套碎片
	tBattlePassTaskTest_Data[3327415]["RewardItem"][2]["Attr"] = "0 1" -- 赠品五星外套碎片*1
	tBattlePassTaskTest_Data[3327415]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327415]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327415]["RewardEffect"]["Effect"] = "angelwing"


	tBattlePassTaskTest_Data[3327416] = {}
	-- ===ColorofWind（赠）礼盒
	-- ===索引: tBattlePassTaskTest_Data[3327416]
	-- ===删除: 3327416,1
	-- ===
	-- ===
	tBattlePassTaskTest_Data[3327416]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3327416]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3327416]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3327416]["DeleteItem"][1]["Id"] = 3327416 -- 【库】ColorofWind（赠）礼盒[属性:9]
	tBattlePassTaskTest_Data[3327416]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327416]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327416]["RewardItem"][1]["Id"] = 192425 -- ColorOfWind[192425][属性:0][叠加:0][金币:100], 【表格】30天时效的ColorofWind（赠）时装外套
	tBattlePassTaskTest_Data[3327416]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑ColorOfWind（赠）*1
	tBattlePassTaskTest_Data[3327416]["RewardItem"][2] = {}
	tBattlePassTaskTest_Data[3327416]["RewardItem"][2]["Id"] = 3327407 -- 赠品四星外套碎片[3327407][属性:9][叠加:1][金币:0], 【表格】赠品四星外套碎片
	tBattlePassTaskTest_Data[3327416]["RewardItem"][2]["Attr"] = "0 1" -- 赠品四星外套碎片*1
	tBattlePassTaskTest_Data[3327416]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327416]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327416]["RewardEffect"]["Effect"] = "angelwing"


	tBattlePassTaskTest_Data[3327417] = {}
	-- ===FreedomSuit（赠）礼盒
	-- ===索引: tBattlePassTaskTest_Data[3327417]
	-- ===删除: 3327417,1
	-- ===
	-- ===
	tBattlePassTaskTest_Data[3327417]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3327417]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3327417]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3327417]["DeleteItem"][1]["Id"] = 3327417 -- 【库】FreedomSuit（赠）礼盒[属性:9]
	tBattlePassTaskTest_Data[3327417]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327417]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327417]["RewardItem"][1]["Id"] = 192745 -- FreedomSuit[192745][属性:0][叠加:0][金币:100], 【表格】30天时效的FreedomSuit（赠）
	tBattlePassTaskTest_Data[3327417]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑FreedomSuit（赠）*1
	tBattlePassTaskTest_Data[3327417]["RewardItem"][2] = {}
	tBattlePassTaskTest_Data[3327417]["RewardItem"][2]["Id"] = 3327407 -- 赠品四星外套碎片[3327407][属性:9][叠加:1][金币:0], 【表格】赠品四星外套碎片
	tBattlePassTaskTest_Data[3327417]["RewardItem"][2]["Attr"] = "0 1" -- 赠品四星外套碎片*1
	tBattlePassTaskTest_Data[3327417]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327417]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327417]["RewardEffect"]["Effect"] = "angelwing"


	tBattlePassTaskTest_Data[3327418] = {}
	-- ===DreamyFairySuit（赠）礼盒
	-- ===索引: tBattlePassTaskTest_Data[3327418]
	-- ===删除: 3327418,1
	-- ===
	-- ===
	tBattlePassTaskTest_Data[3327418]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3327418]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3327418]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3327418]["DeleteItem"][1]["Id"] = 3327418 -- 【库】DreamyFairySuit（赠）礼盒[属性:9]
	tBattlePassTaskTest_Data[3327418]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327418]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327418]["RewardItem"][1]["Id"] = 192125 -- DreamyFairySuit[192125][属性:0][叠加:0][金币:0], 【表格】30天时效的DreamyFairySuit（赠）
	tBattlePassTaskTest_Data[3327418]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑DreamyFairySuit（赠）*1
	tBattlePassTaskTest_Data[3327418]["RewardItem"][2] = {}
	tBattlePassTaskTest_Data[3327418]["RewardItem"][2]["Id"] = 3327407 -- 赠品四星外套碎片[3327407][属性:9][叠加:1][金币:0], 【表格】赠品四星外套碎片
	tBattlePassTaskTest_Data[3327418]["RewardItem"][2]["Attr"] = "0 1" -- 赠品四星外套碎片*1
	tBattlePassTaskTest_Data[3327418]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327418]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327418]["RewardEffect"]["Effect"] = "angelwing"


	tBattlePassTaskTest_Data[3327419] = {}
	-- ===FlameDance（赠）礼盒
	-- ===索引: tBattlePassTaskTest_Data[3327419]
	-- ===删除: 3327419,1
	-- ===
	-- ===
	tBattlePassTaskTest_Data[3327419]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3327419]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3327419]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3327419]["DeleteItem"][1]["Id"] = 3327419 -- 【库】FlameDance（赠）礼盒[属性:9]
	tBattlePassTaskTest_Data[3327419]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327419]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327419]["RewardItem"][1]["Id"] = 192785 -- FlameDance[192785][属性:0][叠加:0][金币:0], 【表格】30天时效的FlameDance（赠）
	tBattlePassTaskTest_Data[3327419]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑FlameDance（赠）*1
	tBattlePassTaskTest_Data[3327419]["RewardItem"][2] = {}
	tBattlePassTaskTest_Data[3327419]["RewardItem"][2]["Id"] = 3327407 -- 赠品四星外套碎片[3327407][属性:9][叠加:1][金币:0], 【表格】赠品四星外套碎片
	tBattlePassTaskTest_Data[3327419]["RewardItem"][2]["Attr"] = "0 1" -- 赠品四星外套碎片*1
	tBattlePassTaskTest_Data[3327419]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327419]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327419]["RewardEffect"]["Effect"] = "angelwing"


	tBattlePassTaskTest_Data[3327420] = {}
	-- ===PrideofTriumph（赠）礼盒
	-- ===索引: tBattlePassTaskTest_Data[3327420]
	-- ===删除: 3327420,1
	-- ===
	-- ===
	tBattlePassTaskTest_Data[3327420]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3327420]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3327420]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3327420]["DeleteItem"][1]["Id"] = 3327420 -- 【库】PrideofTriumph（赠）礼盒[属性:9]
	tBattlePassTaskTest_Data[3327420]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327420]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327420]["RewardItem"][1]["Id"] = 193205 -- PrideofTriumph[193205][属性:0][叠加:0][金币:0], 【表格】30天时效的PrideofTriumph（赠）
	tBattlePassTaskTest_Data[3327420]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑PrideofTriumph（赠）*1
	tBattlePassTaskTest_Data[3327420]["RewardItem"][2] = {}
	tBattlePassTaskTest_Data[3327420]["RewardItem"][2]["Id"] = 3327407 -- 赠品四星外套碎片[3327407][属性:9][叠加:1][金币:0], 【表格】赠品四星外套碎片
	tBattlePassTaskTest_Data[3327420]["RewardItem"][2]["Attr"] = "0 1" -- 赠品四星外套碎片*1
	tBattlePassTaskTest_Data[3327420]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327420]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327420]["RewardEffect"]["Effect"] = "angelwing"


	tBattlePassTaskTest_Data[3327421] = {}
	-- ===ArabicPride（赠）礼盒
	-- ===索引: tBattlePassTaskTest_Data[3327421]
	-- ===删除: 3327421,1
	-- ===
	-- ===
	tBattlePassTaskTest_Data[3327421]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3327421]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3327421]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3327421]["DeleteItem"][1]["Id"] = 3327421 -- 【库】ArabicPride（赠）礼盒[属性:9]
	tBattlePassTaskTest_Data[3327421]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327421]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327421]["RewardItem"][1]["Id"] = 189645 -- ArabicPride[189645][属性:8][叠加:0][金币:0], 【表格】30天时效的ArabicPride（赠）
	tBattlePassTaskTest_Data[3327421]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑ArabicPride（赠）*1
	tBattlePassTaskTest_Data[3327421]["RewardItem"][2] = {}
	tBattlePassTaskTest_Data[3327421]["RewardItem"][2]["Id"] = 3327407 -- 赠品四星外套碎片[3327407][属性:9][叠加:1][金币:0], 【表格】赠品四星外套碎片
	tBattlePassTaskTest_Data[3327421]["RewardItem"][2]["Attr"] = "0 1" -- 赠品四星外套碎片*1
	tBattlePassTaskTest_Data[3327421]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327421]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327421]["RewardEffect"]["Effect"] = "angelwing"


	tBattlePassTaskTest_Data[3327422] = {}
	-- ===SpringShirt（赠）礼盒
	-- ===索引: tBattlePassTaskTest_Data[3327422]
	-- ===删除: 3327422,1
	-- ===
	-- ===
	tBattlePassTaskTest_Data[3327422]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3327422]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3327422]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3327422]["DeleteItem"][1]["Id"] = 3327422 -- 【库】SpringShirt（赠）礼盒[属性:9]
	tBattlePassTaskTest_Data[3327422]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327422]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327422]["RewardItem"][1]["Id"] = 192435 -- SpringShirt[192435][属性:0][叠加:0][金币:100], 【表格】30天时效的SpringShirt（赠）
	tBattlePassTaskTest_Data[3327422]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑SpringShirt（赠）*1
	tBattlePassTaskTest_Data[3327422]["RewardItem"][2] = {}
	tBattlePassTaskTest_Data[3327422]["RewardItem"][2]["Id"] = 3327407 -- 赠品四星外套碎片[3327407][属性:9][叠加:1][金币:0], 【表格】赠品四星外套碎片
	tBattlePassTaskTest_Data[3327422]["RewardItem"][2]["Attr"] = "0 1" -- 赠品四星外套碎片*1
	tBattlePassTaskTest_Data[3327422]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327422]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327422]["RewardEffect"]["Effect"] = "angelwing"


	tBattlePassTaskTest_Data[3327423] = {}
	-- ===FairyTale（赠）礼盒
	-- ===索引: tBattlePassTaskTest_Data[3327423]
	-- ===删除: 3327423,1
	-- ===
	-- ===
	tBattlePassTaskTest_Data[3327423]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3327423]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3327423]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3327423]["DeleteItem"][1]["Id"] = 3327423 -- 【库】FairyTale（赠）礼盒[属性:9]
	tBattlePassTaskTest_Data[3327423]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327423]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327423]["RewardItem"][1]["Id"] = 188395 -- FairyTale[188395][属性:0][叠加:0][金币:0], 【表格】30天时效的FairyTale（赠）
	tBattlePassTaskTest_Data[3327423]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑FairyTale（赠）*1
	tBattlePassTaskTest_Data[3327423]["RewardItem"][2] = {}
	tBattlePassTaskTest_Data[3327423]["RewardItem"][2]["Id"] = 3327407 -- 赠品四星外套碎片[3327407][属性:9][叠加:1][金币:0], 【表格】赠品四星外套碎片
	tBattlePassTaskTest_Data[3327423]["RewardItem"][2]["Attr"] = "0 1" -- 赠品四星外套碎片*1
	tBattlePassTaskTest_Data[3327423]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327423]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327423]["RewardEffect"]["Effect"] = "angelwing"


	tBattlePassTaskTest_Data[3327424] = {}
	-- ===WizardRobe（赠）礼盒
	-- ===索引: tBattlePassTaskTest_Data[3327424]
	-- ===删除: 3327424,1
	-- ===
	-- ===
	tBattlePassTaskTest_Data[3327424]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3327424]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3327424]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3327424]["DeleteItem"][1]["Id"] = 3327424 -- 【库】WizardRobe（赠）礼盒[属性:9]
	tBattlePassTaskTest_Data[3327424]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327424]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327424]["RewardItem"][1]["Id"] = 192311 -- WizardRobe[192311][属性:0][叠加:0][金币:100], 【表格】30天时效的WizardRobe（赠）
	tBattlePassTaskTest_Data[3327424]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑WizardRobe（赠）*1
	tBattlePassTaskTest_Data[3327424]["RewardItem"][2] = {}
	tBattlePassTaskTest_Data[3327424]["RewardItem"][2]["Id"] = 3327407 -- 赠品四星外套碎片[3327407][属性:9][叠加:1][金币:0], 【表格】赠品四星外套碎片
	tBattlePassTaskTest_Data[3327424]["RewardItem"][2]["Attr"] = "0 1" -- 赠品四星外套碎片*1
	tBattlePassTaskTest_Data[3327424]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327424]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327424]["RewardEffect"]["Effect"] = "angelwing"
	
	
	--赠品四星外套碎片
	tBattlePassTaskTest_Data[3327407]={}
	tBattlePassTaskTest_Data[3327407]["LogId"]=12001359
	tBattlePassTaskTest_Data[3327407]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3327407]["DeleteItem"][1]={}
	tBattlePassTaskTest_Data[3327407]["DeleteItem"][1]["Id"]=3327407
	tBattlePassTaskTest_Data[3327407]["DeleteItem"][1]["ItemNum"]=5
	tBattlePassTaskTest_Data[3327407]["DeleteItem"][1]["NoItem"]=tBattlePassTaskTest_Text["Systemtip"]["UseFail"]
	tBattlePassTaskTest_Data[3327407]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327407]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327407]["RewardItem"][1]["Id"] = 3327409 -- 4星外套福袋[3327409][属性:9][叠加:1][金币:0], 【表格】4星外套福袋
	tBattlePassTaskTest_Data[3327407]["RewardItem"][1]["Attr"] = "0 1" -- 4星外套福袋*1
	tBattlePassTaskTest_Data[3327407]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327407]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327407]["RewardEffect"]["Effect"] = "angelwing"
	
	--赠品五星外套碎片
	tBattlePassTaskTest_Data[3327408]={}
	tBattlePassTaskTest_Data[3327408]["LogId"]=12001359
	tBattlePassTaskTest_Data[3327408]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3327408]["DeleteItem"][1]={}
	tBattlePassTaskTest_Data[3327408]["DeleteItem"][1]["Id"]=3327408
	tBattlePassTaskTest_Data[3327408]["DeleteItem"][1]["ItemNum"]=10
	tBattlePassTaskTest_Data[3327408]["DeleteItem"][1]["NoItem"]=tBattlePassTaskTest_Text["Systemtip"]["UseFail"]
	tBattlePassTaskTest_Data[3327408]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327408]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327408]["RewardItem"][1]["Id"] = 3327410 -- 5星外套福袋[3327410][属性:9][叠加:1][金币:0], 【表格】5星外套福袋
	tBattlePassTaskTest_Data[3327408]["RewardItem"][1]["Attr"] = "0 1" -- 5星外套福袋*1
	tBattlePassTaskTest_Data[3327408]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327408]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327408]["RewardEffect"]["Effect"] = "angelwing"
	
	
	-- ===晶莹星陨石碎片
	-- ===索引: 3321640
	-- ===删除: 3321640,50
	-- ===
	tBattlePassTaskTest_Data[3321640] = {}
	tBattlePassTaskTest_Data[3321640]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3321640]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3321640]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3321640]["DeleteItem"][1]["Id"] = 3321640 -- 【库】晶莹星陨石碎片[属性:8]
	tBattlePassTaskTest_Data[3321640]["DeleteItem"][1]["ItemNum"] = 2
	tBattlePassTaskTest_Data[3321640]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3321640]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3321640]["RewardItem"][1]["Id"] = 3009002 -- 【库】晶莹星陨石[属性:9]【表格】晶莹星陨石
	tBattlePassTaskTest_Data[3321640]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的晶莹星陨石*1
	tBattlePassTaskTest_Data[3321640]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3321640]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3321640]["RewardEffect"]["Effect"] = "angelwing"
	
	

	tBattlePassTaskTest_Data["Stc"][3327425]={}
	tBattlePassTaskTest_Data["Stc"][3327425]["Event"]=213
	tBattlePassTaskTest_Data["Stc"][3327425]["Type"]=48
	

	tBattlePassTaskTest_Data["Stc"][3329789]={}
	tBattlePassTaskTest_Data["Stc"][3329789]["Event"]=218
	tBattlePassTaskTest_Data["Stc"][3329789]["Type"]=25
	
	tBattlePassTaskTest_Data["AddScore"]={}
	tBattlePassTaskTest_Data["AddScore"][3327425]=10
	tBattlePassTaskTest_Data["AddScore"][3327426]=100
	
	tBattlePassTaskTest_Data["AddScore"][3329789]=10
	tBattlePassTaskTest_Data["AddScore"][3329790]=100
	
	tBattlePassTaskTest_Data["AddScore"][3327501]=1
	tBattlePassTaskTest_Data["AddScore"][3327502]=4
	tBattlePassTaskTest_Data["AddScore"][3327503]=6
	tBattlePassTaskTest_Data["AddScore"][3327504]=7
	tBattlePassTaskTest_Data["AddScore"][3327505]=18
	tBattlePassTaskTest_Data["AddScore"][3327506]=36
	
	
	--杀怪掉落
	tBattlePassTaskTest_Data["MonsterDropPack"] = {}
	
	--小怪掉落
	tBattlePassTaskTest_Data["MonsterDropPack"][1] = {}
	tBattlePassTaskTest_Data["MonsterDropPack"][1]["ItemChanceSum"] = 10000
	tBattlePassTaskTest_Data["MonsterDropPack"][1]["LogId"] = 12001359
	-- - 0.5%
	tBattlePassTaskTest_Data["MonsterDropPack"][1][1] = {}
	tBattlePassTaskTest_Data["MonsterDropPack"][1][1]["RandomItemChanceType"] = 2
	tBattlePassTaskTest_Data["MonsterDropPack"][1][1]["ItemChance"] = 50
	tBattlePassTaskTest_Data["MonsterDropPack"][1][1]["RewardItem"] = {}
	tBattlePassTaskTest_Data["MonsterDropPack"][1][1]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data["MonsterDropPack"][1][1]["RewardItem"][1]["Id"] = 3329789 --  3327425 【库里没有该物品】, 【表格】10豪侠积分包
	tBattlePassTaskTest_Data["MonsterDropPack"][1][1]["RewardItem"][1]["Attr"] = "0 1" --  3327425 【库里没有该物品】*1
	tBattlePassTaskTest_Data["MonsterDropPack"][1][1]["RewardEffect"] = {}
	tBattlePassTaskTest_Data["MonsterDropPack"][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data["MonsterDropPack"][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 无 - 99.5%
	tBattlePassTaskTest_Data["MonsterDropPack"][1][2] = {}
	tBattlePassTaskTest_Data["MonsterDropPack"][1][2]["RandomItemChanceType"] = 2
	tBattlePassTaskTest_Data["MonsterDropPack"][1][2]["ItemChance"] = 9950
	tBattlePassTaskTest_Data["MonsterDropPack"][1][2]["RewardEffect"] = {}
	tBattlePassTaskTest_Data["MonsterDropPack"][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data["MonsterDropPack"][1][2]["RewardEffect"]["Effect"] = "angelwing"
	
	
	--boss掉落
	tBattlePassTaskTest_Data["MonsterDropPack"][2] = {}
	tBattlePassTaskTest_Data["MonsterDropPack"][2]["ItemChanceSum"] = 10000
	tBattlePassTaskTest_Data["MonsterDropPack"][2]["LogId"] = 12001359
	-- - 1%
	tBattlePassTaskTest_Data["MonsterDropPack"][2][1] = {}
	tBattlePassTaskTest_Data["MonsterDropPack"][2][1]["RandomItemChanceType"] = 2
	tBattlePassTaskTest_Data["MonsterDropPack"][2][1]["ItemChance"] = 100
	tBattlePassTaskTest_Data["MonsterDropPack"][2][1]["RewardItem"] = {}
	tBattlePassTaskTest_Data["MonsterDropPack"][2][1]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data["MonsterDropPack"][2][1]["RewardItem"][1]["Id"] = 3329790 --  3327426 【库里没有该物品】, 【表格】100豪侠积分包
	tBattlePassTaskTest_Data["MonsterDropPack"][2][1]["RewardItem"][1]["Attr"] = "0 1" --  3327426 【库里没有该物品】*1
	tBattlePassTaskTest_Data["MonsterDropPack"][2][1]["RewardEffect"] = {}
	tBattlePassTaskTest_Data["MonsterDropPack"][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data["MonsterDropPack"][2][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 无 - 99%
	tBattlePassTaskTest_Data["MonsterDropPack"][2][2] = {}
	tBattlePassTaskTest_Data["MonsterDropPack"][2][2]["RandomItemChanceType"] = 2
	tBattlePassTaskTest_Data["MonsterDropPack"][2][2]["ItemChance"] = 9900
	tBattlePassTaskTest_Data["MonsterDropPack"][2][2]["RewardEffect"] = {}
	tBattlePassTaskTest_Data["MonsterDropPack"][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data["MonsterDropPack"][2][2]["RewardEffect"]["Effect"] = "angelwing"
	

	tBattlePassTaskTest_Data[3327436] = {}
	-- ===究极通神丹（赠）礼盒
	-- ===索引: tBattlePassTaskTest_Data[3327436]
	-- ===删除: 3327436,1
	-- ===
	-- ===
	tBattlePassTaskTest_Data[3327436]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3327436]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3327436]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3327436]["DeleteItem"][1]["Id"] = 3327436 -- 【库】 3327436 【库里没有该物品】[属性:]
	tBattlePassTaskTest_Data[3327436]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327436]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327436]["RewardItem"][1]["Id"] = 3003126 -- 究极通神丹[3003126][属性:0][叠加:10000][金币:0], 【表格】究极通神丹
	tBattlePassTaskTest_Data[3327436]["RewardItem"][1]["Attr"] = "0 1 3" -- 究极通神丹（赠）*1
	tBattlePassTaskTest_Data[3327436]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327436]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327436]["RewardEffect"]["Effect"] = "angelwing"


	tBattlePassTaskTest_Data[3327437] = {}
	-- ===2个万能神纹精粹（赠）礼盒
	-- ===索引: tBattlePassTaskTest_Data[3327437]
	-- ===删除: 3327437,1
	-- ===
	-- ===
	tBattlePassTaskTest_Data[3327437]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3327437]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3327437]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3327437]["DeleteItem"][1]["Id"] = 3327437 -- 【库】 3327437 【库里没有该物品】[属性:]
	tBattlePassTaskTest_Data[3327437]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327437]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327437]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】2个万能神纹精粹（赠）
	tBattlePassTaskTest_Data[3327437]["RewardItem"][1]["Attr"] = "0 2 3" -- 万能神纹精粹（赠）*2
	tBattlePassTaskTest_Data[3327437]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327437]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327437]["RewardEffect"]["Effect"] = "angelwing"


	tBattlePassTaskTest_Data[3327438] = {}
	-- ===3个万能神纹精粹（赠）礼盒
	-- ===索引: tBattlePassTaskTest_Data[3327438]
	-- ===删除: 3327438,1
	-- ===
	-- ===
	tBattlePassTaskTest_Data[3327438]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3327438]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3327438]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3327438]["DeleteItem"][1]["Id"] = 3327438 -- 【库】 3327438 【库里没有该物品】[属性:]
	tBattlePassTaskTest_Data[3327438]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327438]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327438]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】3个万能神纹精粹（赠）礼盒
	tBattlePassTaskTest_Data[3327438]["RewardItem"][1]["Attr"] = "0 3 3" -- 万能神纹精粹（赠）*3
	tBattlePassTaskTest_Data[3327438]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327438]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327438]["RewardEffect"]["Effect"] = "angelwing"


	tBattlePassTaskTest_Data[3327439] = {}
	-- ===4个万能神纹精粹（赠）礼盒
	-- ===索引: tBattlePassTaskTest_Data[3327439]
	-- ===删除: 3327439,1
	-- ===
	-- ===
	tBattlePassTaskTest_Data[3327439]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3327439]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3327439]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3327439]["DeleteItem"][1]["Id"] = 3327439 -- 【库】 3327439 【库里没有该物品】[属性:]
	tBattlePassTaskTest_Data[3327439]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327439]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327439]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】4个万能神纹精粹（赠）礼盒
	tBattlePassTaskTest_Data[3327439]["RewardItem"][1]["Attr"] = "0 4 3" -- 万能神纹精粹（赠）*4
	tBattlePassTaskTest_Data[3327439]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327439]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327439]["RewardEffect"]["Effect"] = "angelwing"


	tBattlePassTaskTest_Data[3327440] = {}
	-- ===6个万能神纹精粹（赠）礼盒
	-- ===索引: tBattlePassTaskTest_Data[3327440]
	-- ===删除: 3327440,1
	-- ===
	-- ===
	tBattlePassTaskTest_Data[3327440]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3327440]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3327440]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3327440]["DeleteItem"][1]["Id"] = 3327440 -- 【库】 3327440 【库里没有该物品】[属性:]
	tBattlePassTaskTest_Data[3327440]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327440]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327440]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】6个万能神纹精粹（赠）礼盒
	tBattlePassTaskTest_Data[3327440]["RewardItem"][1]["Attr"] = "0 6 3" -- 万能神纹精粹（赠）*6
	tBattlePassTaskTest_Data[3327440]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327440]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327440]["RewardEffect"]["Effect"] = "angelwing"


	tBattlePassTaskTest_Data[3327441] = {}
	-- ===12个万能神纹精粹（赠）礼盒
	-- ===索引: tBattlePassTaskTest_Data[3327441]
	-- ===删除: 3327441,1
	-- ===
	-- ===
	tBattlePassTaskTest_Data[3327441]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3327441]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3327441]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3327441]["DeleteItem"][1]["Id"] = 3327441 -- 【库】 3327441 【库里没有该物品】[属性:]
	tBattlePassTaskTest_Data[3327441]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327441]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327441]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】12个万能神纹精粹（赠）礼盒
	tBattlePassTaskTest_Data[3327441]["RewardItem"][1]["Attr"] = "0 12 3" -- 万能神纹精粹（赠）*12
	tBattlePassTaskTest_Data[3327441]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327441]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327441]["RewardEffect"]["Effect"] = "angelwing"


	tBattlePassTaskTest_Data[3327442] = {}
	-- ===100万爵位值礼盒
	-- ===索引: tBattlePassTaskTest_Data[3327442]
	-- ===删除: 3327442,1
	-- ===
	-- ===
	tBattlePassTaskTest_Data[3327442]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3327442]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3327442]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3327442]["DeleteItem"][1]["Id"] = 3327442 -- 【库】 3327442 【库里没有该物品】[属性:]
	tBattlePassTaskTest_Data[3327442]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327442]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327442]["RewardItem"][1]["Id"] = 3314199 -- 100万爵位勋章[3314199][属性:8][叠加:1][金币:0], 【表格】100万爵位勋章（赠）
	tBattlePassTaskTest_Data[3327442]["RewardItem"][1]["Attr"] = "0 1 3" -- 100万爵位勋章（赠）*1
	tBattlePassTaskTest_Data[3327442]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327442]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327442]["RewardEffect"]["Effect"] = "angelwing"


	tBattlePassTaskTest_Data[3327443] = {}
	-- ===黄色神纹碎片（赠）礼盒
	-- ===索引: tBattlePassTaskTest_Data[3327443]
	-- ===删除: 3327443,1
	-- ===
	-- ===
	tBattlePassTaskTest_Data[3327443]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3327443]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3327443]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3327443]["DeleteItem"][1]["Id"] = 3327443 -- 【库】 3327443 【库里没有该物品】[属性:]
	tBattlePassTaskTest_Data[3327443]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327443]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327443]["RewardItem"][1]["Id"] = 3306370 -- 黄色神纹碎片[3314253][属性:8][叠加:10000][金币:0], 【表格】黄色神纹碎片（赠）
	tBattlePassTaskTest_Data[3327443]["RewardItem"][1]["Attr"] = "0 1 3" -- 黄色神纹碎片（赠）*1
	tBattlePassTaskTest_Data[3327443]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327443]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327443]["RewardEffect"]["Effect"] = "angelwing"


	tBattlePassTaskTest_Data[3327444] = {}
	-- ===稀有黄色神纹碎片（赠）礼盒
	-- ===索引: tBattlePassTaskTest_Data[3327444]
	-- ===删除: 3327444,1
	-- ===
	-- ===
	tBattlePassTaskTest_Data[3327444]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3327444]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3327444]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3327444]["DeleteItem"][1]["Id"] = 3327444 -- 【库】 3327444 【库里没有该物品】[属性:]
	tBattlePassTaskTest_Data[3327444]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327444]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327444]["RewardItem"][1]["Id"] = 3311748 -- 稀有黄色神纹碎片[3314255][属性:8][叠加:10000][金币:0], 【表格】稀有黄色神纹碎片（赠）
	tBattlePassTaskTest_Data[3327444]["RewardItem"][1]["Attr"] = "0 1" -- 稀有黄色神纹碎片（赠）*1
	tBattlePassTaskTest_Data[3327444]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327444]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327444]["RewardEffect"]["Effect"] = "angelwing"

	
	tBattlePassTaskTest_Data["BackReward"]={}
	--融魂加积分
	tBattlePassTaskTest_Data["BackReward"][1]={}
	tBattlePassTaskTest_Data["BackReward"][1][4200001] = 5
	tBattlePassTaskTest_Data["BackReward"][1][4200002] = 10
	tBattlePassTaskTest_Data["BackReward"][1][4200003] = 20
	tBattlePassTaskTest_Data["BackReward"][1][4200004] = 40
	tBattlePassTaskTest_Data["BackReward"][1][4200005] = 80
	tBattlePassTaskTest_Data["BackReward"][1][4200006] = 160
	tBattlePassTaskTest_Data["BackReward"][1][4200007] = 320
	tBattlePassTaskTest_Data["BackReward"][1][4200008] = 640
	tBattlePassTaskTest_Data["BackReward"][1][4200009] = 1280
	tBattlePassTaskTest_Data["BackReward"][1][4200010] = 2500
	tBattlePassTaskTest_Data["BackReward"][1][4200011] = 5000
	tBattlePassTaskTest_Data["BackReward"][1][4200012] = 10000
	tBattlePassTaskTest_Data["BackReward"][1][4200013] = 20000
	tBattlePassTaskTest_Data["BackReward"][1][4200014] = 20000
	tBattlePassTaskTest_Data["BackReward"][1][4200015] = 20000
	tBattlePassTaskTest_Data["BackReward"][1][4200016] = 20000
	tBattlePassTaskTest_Data["BackReward"][1][4200017] = 20000
	tBattlePassTaskTest_Data["BackReward"][1][4200018] = 20000

	--重铸加积分
	tBattlePassTaskTest_Data["BackReward"][2]={}
	tBattlePassTaskTest_Data["BackReward"][2][4200001] = 2
	tBattlePassTaskTest_Data["BackReward"][2][4200002] = 5
	tBattlePassTaskTest_Data["BackReward"][2][4200003] = 10
	tBattlePassTaskTest_Data["BackReward"][2][4200004] = 20
	tBattlePassTaskTest_Data["BackReward"][2][4200005] = 40
	tBattlePassTaskTest_Data["BackReward"][2][4200006] = 80
	tBattlePassTaskTest_Data["BackReward"][2][4200007] = 160
	tBattlePassTaskTest_Data["BackReward"][2][4200008] = 320
	tBattlePassTaskTest_Data["BackReward"][2][4200009] = 640
	tBattlePassTaskTest_Data["BackReward"][2][4200010] = 1250
	tBattlePassTaskTest_Data["BackReward"][2][4200011] = 2500
	tBattlePassTaskTest_Data["BackReward"][2][4200012] = 5000
	tBattlePassTaskTest_Data["BackReward"][2][4200013] = 10000
	tBattlePassTaskTest_Data["BackReward"][2][4200014] = 10000
	tBattlePassTaskTest_Data["BackReward"][2][4200015] = 10000
	tBattlePassTaskTest_Data["BackReward"][2][4200016] = 10000
	tBattlePassTaskTest_Data["BackReward"][2][4200017] = 10000
	tBattlePassTaskTest_Data["BackReward"][2][4200018] = 10000
	
	
	--双鼎加积分
	tBattlePassTaskTest_Data["BackReward"][3]={}
	tBattlePassTaskTest_Data["BackReward"][3][4200001] = 0
	tBattlePassTaskTest_Data["BackReward"][3][4200002] = 0
	tBattlePassTaskTest_Data["BackReward"][3][4200003] = 18
	tBattlePassTaskTest_Data["BackReward"][3][4200004] = 35
	tBattlePassTaskTest_Data["BackReward"][3][4200005] = 70
	tBattlePassTaskTest_Data["BackReward"][3][4200006] = 140
	tBattlePassTaskTest_Data["BackReward"][3][4200007] = 280
	tBattlePassTaskTest_Data["BackReward"][3][4200008] = 500
	tBattlePassTaskTest_Data["BackReward"][3][4200009] = 1000
	tBattlePassTaskTest_Data["BackReward"][3][4200010] = 2000
	tBattlePassTaskTest_Data["BackReward"][3][4200011] = 4000
	tBattlePassTaskTest_Data["BackReward"][3][4200012] = 8000
	tBattlePassTaskTest_Data["BackReward"][3][4200013] = 10000
	tBattlePassTaskTest_Data["BackReward"][3][4200014] = 10000
	tBattlePassTaskTest_Data["BackReward"][3][4200015] = 10000
	tBattlePassTaskTest_Data["BackReward"][3][4200016] = 10000
	tBattlePassTaskTest_Data["BackReward"][3][4200017] = 10000
	tBattlePassTaskTest_Data["BackReward"][3][4200018] = 10000
	
	
	--锁妖盒加积分
	tBattlePassTaskTest_Data["BackReward"][4]={}
	tBattlePassTaskTest_Data["BackReward"][4][720650] = 10
	tBattlePassTaskTest_Data["BackReward"][4][720651] = 60
	tBattlePassTaskTest_Data["BackReward"][4][720652] = 120
	tBattlePassTaskTest_Data["BackReward"][4][720671] = 600
	tBattlePassTaskTest_Data["BackReward"][4][720672] = 1200
	tBattlePassTaskTest_Data["BackReward"][4][720673] = 2400
	tBattlePassTaskTest_Data["BackReward"][4][720674] = 6000
	
	tBattlePassTaskTest_Data["Stc"]["FirstLogin"]={}
	tBattlePassTaskTest_Data["Stc"]["FirstLogin"]["Event"]=214
	tBattlePassTaskTest_Data["Stc"]["FirstLogin"]["Type"]=36
	
	tBattlePassTaskTest_Data["Stc"]["JZMC"]={}
	tBattlePassTaskTest_Data["Stc"]["JZMC"]["Event"]=144
	tBattlePassTaskTest_Data["Stc"]["JZMC"]["Type"]=59
	
	tBattlePassTaskTest_Data["Stc"]["DCSD"]={}
	tBattlePassTaskTest_Data["Stc"]["DCSD"]["Event"]=144
	tBattlePassTaskTest_Data["Stc"]["DCSD"]["Type"]=94
	
	---------------------------------2月战令活动
	-- ===星光祝福礼包
	-- ===索引: tBattlePassTaskTest_Data[3327611][1]
	-- ===删除: 3327611,1
	-- ===
	-- ===
	tBattlePassTaskTest_Data[3327611] = {}
	tBattlePassTaskTest_Data[3327611][1] = {}
	tBattlePassTaskTest_Data[3327611][1]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tBattlePassTaskTest_Data[3327611][1]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3327611][1]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3327611][1]["DeleteItem"][1]["Id"] = 3327611 -- 【库】 3327611 【库里没有该物品】[属性:]
	tBattlePassTaskTest_Data[3327611][1]["LogId"] = 12001359
	-- 星光鹿抽奖道具 - 30%
	tBattlePassTaskTest_Data[3327611][1][1] = {}
	tBattlePassTaskTest_Data[3327611][1][1]["RandomItemChanceType"] = 2
	tBattlePassTaskTest_Data[3327611][1][1]["ItemChance"] = 3000
	tBattlePassTaskTest_Data[3327611][1][1]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327611][1][1]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327611][1][1]["RewardItem"][1]["Id"] = 3327612 --  3327612 【库里没有该物品】, 【表格】星光鹿抽奖道具
	tBattlePassTaskTest_Data[3327611][1][1]["RewardItem"][1]["Attr"] = "0 1" --  3327612 【库里没有该物品】*1
	tBattlePassTaskTest_Data[3327611][1][1]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327611][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327611][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 3000气力值 - 38%
	tBattlePassTaskTest_Data[3327611][1][2] = {}
	tBattlePassTaskTest_Data[3327611][1][2]["RandomItemChanceType"] = 2
	tBattlePassTaskTest_Data[3327611][1][2]["ItemChance"] = 3800
	tBattlePassTaskTest_Data[3327611][1][2]["RewardStrengthValue"] = {}
	tBattlePassTaskTest_Data[3327611][1][2]["RewardStrengthValue"]["Value"] = 3000 -- 气力值, 【需求】3000气力值
	tBattlePassTaskTest_Data[3327611][1][2]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327611][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327611][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 明亮星陨石（2天时效） - 10%
	tBattlePassTaskTest_Data[3327611][1][3] = {}
	tBattlePassTaskTest_Data[3327611][1][3]["RandomItemChanceType"] = 2
	tBattlePassTaskTest_Data[3327611][1][3]["ItemChance"] = 1000
	tBattlePassTaskTest_Data[3327611][1][3]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327611][1][3]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327611][1][3]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石（2天时效）
	tBattlePassTaskTest_Data[3327611][1][3]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的明亮星陨石*1
	tBattlePassTaskTest_Data[3327611][1][3]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327611][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327611][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 魔武通玄丹 - 5%
	tBattlePassTaskTest_Data[3327611][1][4] = {}
	tBattlePassTaskTest_Data[3327611][1][4]["RandomItemChanceType"] = 2
	tBattlePassTaskTest_Data[3327611][1][4]["ItemChance"] = 500
	tBattlePassTaskTest_Data[3327611][1][4]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327611][1][4]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327611][1][4]["RewardItem"][1]["Id"] = 3303373 -- 魔武通玄丹[3303373][属性:9][叠加:10000][金币:0], 【表格】魔武通玄丹
	tBattlePassTaskTest_Data[3327611][1][4]["RewardItem"][1]["Attr"] = "0 1" -- 魔武通玄丹*1
	tBattlePassTaskTest_Data[3327611][1][4]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327611][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327611][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 99朵红玫瑰 - 7%
	tBattlePassTaskTest_Data[3327611][1][5] = {}
	tBattlePassTaskTest_Data[3327611][1][5]["RandomItemChanceType"] = 2
	tBattlePassTaskTest_Data[3327611][1][5]["ItemChance"] = 700
	tBattlePassTaskTest_Data[3327611][1][5]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327611][1][5]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327611][1][5]["RewardItem"][1]["Id"] = 751099 -- 99朵红玫瑰[751099][属性:8][叠加:0][金币:0], 【表格】99朵红玫瑰
	tBattlePassTaskTest_Data[3327611][1][5]["RewardItem"][1]["Attr"] = "0 1 3" -- 99朵红玫瑰（赠）*1
	tBattlePassTaskTest_Data[3327611][1][5]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327611][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327611][1][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 6个龙鳞果 - 6%
	tBattlePassTaskTest_Data[3327611][1][6] = {}
	tBattlePassTaskTest_Data[3327611][1][6]["RandomItemChanceType"] = 2
	tBattlePassTaskTest_Data[3327611][1][6]["ItemChance"] = 600
	tBattlePassTaskTest_Data[3327611][1][6]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327611][1][6]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327611][1][6]["RewardItem"][1]["Id"] = 3009101 -- 龙鳞果[3009101][属性:9][叠加:10000][金币:0], 【表格】6个龙鳞果
	tBattlePassTaskTest_Data[3327611][1][6]["RewardItem"][1]["Attr"] = "0 6" -- 龙鳞果*6
	tBattlePassTaskTest_Data[3327611][1][6]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327611][1][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327611][1][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤炼石+3（赠）（5天时效） - 4%
	tBattlePassTaskTest_Data[3327611][1][7] = {}
	tBattlePassTaskTest_Data[3327611][1][7]["RandomItemChanceType"] = 2
	tBattlePassTaskTest_Data[3327611][1][7]["ItemChance"] = 400
	tBattlePassTaskTest_Data[3327611][1][7]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327611][1][7]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327611][1][7]["RewardItem"][1]["Id"] = 730003 -- +3赤炼石[730003][属性:0][叠加:0][金币:0], 【表格】赤炼石+3（赠）（5天时效）
	tBattlePassTaskTest_Data[3327611][1][7]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+3赤炼石（赠）*1
	tBattlePassTaskTest_Data[3327611][1][7]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327611][1][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327611][1][7]["RewardEffect"]["Effect"] = "angelwing"


	tBattlePassTaskTest_Data[3327608] = {}
	-- ===赤练石
	-- ===索引: tBattlePassTaskTest_Data[3327608]
	-- ===删除: 3327608,1
	-- ===
	-- ===
	tBattlePassTaskTest_Data[3327608]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3327608]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3327608]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3327608]["DeleteItem"][1]["Id"] = 3327608 -- 【库】 3327608 【库里没有该物品】[属性:]
	tBattlePassTaskTest_Data[3327608]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327608]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327608]["RewardItem"][1]["Id"] = 730001 -- +1赤炼石[730001][属性:0][叠加:0][金币:0], 【表格】5天时效+1赤炼石（赠）
	tBattlePassTaskTest_Data[3327608]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+1赤炼石（赠）*1
	tBattlePassTaskTest_Data[3327608]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327608]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327608]["RewardEffect"]["Effect"] = "angelwing"


	tBattlePassTaskTest_Data[3327609] = {}
	-- ===赤练石
	-- ===索引: tBattlePassTaskTest_Data[3327609]
	-- ===删除: 3327609,1
	-- ===
	-- ===
	tBattlePassTaskTest_Data[3327609]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3327609]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3327609]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3327609]["DeleteItem"][1]["Id"] = 3327609 -- 【库】 3327609 【库里没有该物品】[属性:]
	tBattlePassTaskTest_Data[3327609]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327609]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327609]["RewardItem"][1]["Id"] = 730002 -- +2赤炼石[730002][属性:0][叠加:0][金币:0], 【表格】5天时效+2赤炼石（赠）
	tBattlePassTaskTest_Data[3327609]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+2赤炼石（赠）*1
	tBattlePassTaskTest_Data[3327609]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327609]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327609]["RewardEffect"]["Effect"] = "angelwing"


	tBattlePassTaskTest_Data[3327610] = {}
	-- ===赤练石
	-- ===索引: tBattlePassTaskTest_Data[3327610]
	-- ===删除: 3327610,1
	-- ===
	-- ===
	tBattlePassTaskTest_Data[3327610]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3327610]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3327610]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3327610]["DeleteItem"][1]["Id"] = 3327610 -- 【库】 3327610 【库里没有该物品】[属性:]
	tBattlePassTaskTest_Data[3327610]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327610]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327610]["RewardItem"][1]["Id"] = 730003 -- +3赤炼石[730003][属性:0][叠加:0][金币:0], 【表格】5天时效+3赤炼石（赠）
	tBattlePassTaskTest_Data[3327610]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+3赤炼石（赠）*1
	tBattlePassTaskTest_Data[3327610]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327610]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327610]["RewardEffect"]["Effect"] = "angelwing"


	tBattlePassTaskTest_Data[3327612] = {}
	-- ===星愿灵石
	-- ===索引: tBattlePassTaskTest_Data[3327612][1]
	-- ===删除: 3327612,1
	-- ===
	-- ===
	tBattlePassTaskTest_Data[3327612][1] = {}
	tBattlePassTaskTest_Data[3327612][1]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tBattlePassTaskTest_Data[3327612][1]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3327612][1]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3327612][1]["DeleteItem"][1]["Id"] = 3327612 -- 【库】 3327612 【库里没有该物品】[属性:]
	tBattlePassTaskTest_Data[3327612][1]["LogId"] = 12001359
	-- 星光鹿坐骑外套（赠） - 0.01%
	tBattlePassTaskTest_Data[3327612][1][1] = {}
	tBattlePassTaskTest_Data[3327612][1][1]["RandomItemChanceType"] = 2
	tBattlePassTaskTest_Data[3327612][1][1]["ItemChance"] = 1
	tBattlePassTaskTest_Data[3327612][1][1]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327612][1][1]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327612][1][1]["RewardItem"][1]["Id"] = 200661 --  200661 【库里没有该物品】, 【表格】星光鹿坐骑外套（赠）
	tBattlePassTaskTest_Data[3327612][1][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑 200661 【库里没有该物品】（赠）*1
	tBattlePassTaskTest_Data[3327612][1][1]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327612][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327612][1][1]["RewardEffect"]["Effect"] = "angelwing"
	tBattlePassTaskTest_Data[3327612][1][1]["GlobalId"] = 54182
	tBattlePassTaskTest_Data[3327612][1][1]["Pos"] = 0
	tBattlePassTaskTest_Data[3327612][1][1]["MaxData"] = 1
	tBattlePassTaskTest_Data[3327612][1][1]["FullIndex"] = 2
	
	-- 星光鹿坐骑外套（赠）（15天时效） - 4%
	tBattlePassTaskTest_Data[3327612][1][2] = {}
	tBattlePassTaskTest_Data[3327612][1][2]["RandomItemChanceType"] = 2
	tBattlePassTaskTest_Data[3327612][1][2]["ItemChance"] = 400
	tBattlePassTaskTest_Data[3327612][1][2]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327612][1][2]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327612][1][2]["RewardItem"][1]["Id"] = 200661 --  200661 【库里没有该物品】, 【表格】星光鹿坐骑外套（赠）（15天时效）
	tBattlePassTaskTest_Data[3327612][1][2]["RewardItem"][1]["Attr"] = "0 1 3 21600 1 0 0 1" -- 15天时效(激活)的1%神佑 200661 【库里没有该物品】（赠）*1
	tBattlePassTaskTest_Data[3327612][1][2]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327612][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327612][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 星光鹿坐骑外套（赠）（1天时效） - 8%
	tBattlePassTaskTest_Data[3327612][1][3] = {}
	tBattlePassTaskTest_Data[3327612][1][3]["RandomItemChanceType"] = 2
	tBattlePassTaskTest_Data[3327612][1][3]["ItemChance"] = 800
	tBattlePassTaskTest_Data[3327612][1][3]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327612][1][3]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327612][1][3]["RewardItem"][1]["Id"] = 200661 --  200661 【库里没有该物品】, 【表格】星光鹿坐骑外套（赠）（1天时效）
	tBattlePassTaskTest_Data[3327612][1][3]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑 200661 【库里没有该物品】（赠）*1
	tBattlePassTaskTest_Data[3327612][1][3]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327612][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327612][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 5000气力值 - 32.99%
	tBattlePassTaskTest_Data[3327612][1][4] = {}
	tBattlePassTaskTest_Data[3327612][1][4]["RandomItemChanceType"] = 2
	tBattlePassTaskTest_Data[3327612][1][4]["ItemChance"] = 3299
	tBattlePassTaskTest_Data[3327612][1][4]["RewardStrengthValue"] = {}
	tBattlePassTaskTest_Data[3327612][1][4]["RewardStrengthValue"]["Value"] = 5000 -- 气力值, 【需求】5000气力值
	tBattlePassTaskTest_Data[3327612][1][4]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327612][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327612][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 3000点战令积分 - 29%
	tBattlePassTaskTest_Data[3327612][1][5] = {}
	tBattlePassTaskTest_Data[3327612][1][5]["RandomItemChanceType"] = 2
	tBattlePassTaskTest_Data[3327612][1][5]["ItemChance"] = 2900
	tBattlePassTaskTest_Data[3327612][1][5]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327612][1][5]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327612][1][5]["RewardItem"][1]["Id"] = 3327619 --  3327619 【库里没有该物品】, 【表格】3000点战令积分
	tBattlePassTaskTest_Data[3327612][1][5]["RewardItem"][1]["Attr"] = "0 1" --  3327619 【库里没有该物品】*1
	tBattlePassTaskTest_Data[3327612][1][5]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327612][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327612][1][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 星光鹿坐骑外套碎片 - 26%
	tBattlePassTaskTest_Data[3327612][1][6] = {}
	tBattlePassTaskTest_Data[3327612][1][6]["RandomItemChanceType"] = 2
	tBattlePassTaskTest_Data[3327612][1][6]["ItemChance"] = 2600
	tBattlePassTaskTest_Data[3327612][1][6]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327612][1][6]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327612][1][6]["RewardItem"][1]["Id"] = 3327613 --  3327613 【库里没有该物品】, 【表格】星光鹿坐骑外套碎片
	tBattlePassTaskTest_Data[3327612][1][6]["RewardItem"][1]["Attr"] = "0 1" --  3327613 【库里没有该物品】*1
	tBattlePassTaskTest_Data[3327612][1][6]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327612][1][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327612][1][6]["RewardEffect"]["Effect"] = "angelwing"


	tBattlePassTaskTest_Data[3327613] = {}
	-- ===星之碎屑
	-- ===索引: tBattlePassTaskTest_Data[3327613]
	-- ===删除: 3327613,50
	-- ===
	-- ===
	tBattlePassTaskTest_Data[3327613]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3327613]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3327613]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3327613]["DeleteItem"][1]["Id"] = 3327613 -- 【库】 3327613 【库里没有该物品】[属性:]
	tBattlePassTaskTest_Data[3327613]["DeleteItem"][1]["ItemNum"] = 50
	tBattlePassTaskTest_Data[3327613]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327613]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327613]["RewardItem"][1]["Id"] = 200661 --  200661 【库里没有该物品】, 【表格】星光鹿坐骑外套（赠）
	tBattlePassTaskTest_Data[3327613]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑 200661 【库里没有该物品】（赠）*1
	tBattlePassTaskTest_Data[3327613]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327613]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327613]["RewardEffect"]["Effect"] = "angelwing"


	tBattlePassTaskTest_Data[3327614] = {}
	-- ===浣星露
	-- ===索引: tBattlePassTaskTest_Data[3327614]
	-- ===删除: 3327614,1
	-- ===
	-- ===
	tBattlePassTaskTest_Data[3327614]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3327614]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3327614]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3327614]["DeleteItem"][1]["Id"] = 3327614 -- 【库】 3327614 【库里没有该物品】[属性:]
	tBattlePassTaskTest_Data[3327614]["DeleteItem"][1]["ItemNum"] = 1
	tBattlePassTaskTest_Data[3327614]["DeleteItem"][2] = {}
	tBattlePassTaskTest_Data[3327614]["DeleteItem"][2]["Id"] = 200661 -- 【库】 200661 【库里没有该物品】[属性:]
	tBattlePassTaskTest_Data[3327614]["DeleteItem"][2]["ItemNum"] = 1
	tBattlePassTaskTest_Data[3327614]["DeleteItem"][2]["Monopoly"] = 2
	tBattlePassTaskTest_Data[3327614]["DeleteItem"][2]["SaveTime"] = 0
	tBattlePassTaskTest_Data[3327614]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327614]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327614]["RewardItem"][1]["Id"] = 200661 --  200661 【库里没有该物品】, 【表格】星光鹿坐骑外套
	tBattlePassTaskTest_Data[3327614]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑 200661 【库里没有该物品】*1
	tBattlePassTaskTest_Data[3327614]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327614]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327614]["RewardEffect"]["Effect"] = "angelwing"

	-- ===情人节积分冠军礼盒
	-- ===索引: tBattlePassTaskTest_Data[3327615]
	-- ===删除: 3327615,1
	-- ===
	-- ===
	tBattlePassTaskTest_Data[3327615] = {}
	tBattlePassTaskTest_Data[3327615]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3327615]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3327615]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3327615]["DeleteItem"][1]["Id"] = 3327615 -- 【库】豪侠积分冠军礼盒[属性:9]
	tBattlePassTaskTest_Data[3327615]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327615]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327615]["RewardItem"][1]["Id"] = 3009002 -- 晶莹星陨石碎片[3009002][属性:8][叠加:10000][金币:0], 【表格】晶莹星陨石碎片
	tBattlePassTaskTest_Data[3327615]["RewardItem"][1]["Attr"] = "0 7 0 2880 1" -- 2天时效(激活)的晶莹星陨石碎片*14（[错误]物品数量超10个）
	tBattlePassTaskTest_Data[3327615]["RewardItem"][2] = {}
	tBattlePassTaskTest_Data[3327615]["RewardItem"][2]["Id"] = 3327614 -- +5赤炼石[730005][属性:0][叠加:0][金币:0], 【表格】赤炼石+5
	tBattlePassTaskTest_Data[3327615]["RewardItem"][2]["Attr"] = "0 1" -- 5天时效(激活)的+5赤炼石*3
	tBattlePassTaskTest_Data[3327615]["RewardItem"][3] = {}
	tBattlePassTaskTest_Data[3327615]["RewardItem"][3]["Id"] = 3314207 -- 虎骨气力酒[3314207][属性:8][叠加:10000][金币:0], 【表格】虎骨气力酒
	tBattlePassTaskTest_Data[3327615]["RewardItem"][3]["Attr"] = "0 5" -- 虎骨气力酒*5
	tBattlePassTaskTest_Data[3327615]["RewardItem"][4] = {}
	tBattlePassTaskTest_Data[3327615]["RewardItem"][4]["Id"] = 3311744 -- 稀有黄色神纹碎片[3311748][属性:8][叠加:10000][金币:0], 【表格】稀有黄色神纹碎片
	tBattlePassTaskTest_Data[3327615]["RewardItem"][4]["Attr"] = "0 4" -- 稀有黄色神纹碎片*4
	tBattlePassTaskTest_Data[3327615]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327615]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327615]["RewardEffect"]["Effect"] = "angelwing"


	tBattlePassTaskTest_Data[3327616] = {}
	-- ===豪侠积分亚军礼盒
	-- ===索引: tBattlePassTaskTest_Data[3327616]
	-- ===删除: 3327616,1
	-- ===
	-- ===
	tBattlePassTaskTest_Data[3327616]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3327616]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3327616]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3327616]["DeleteItem"][1]["Id"] = 3327616 -- 【库】豪侠积分亚军礼盒[属性:9]
	tBattlePassTaskTest_Data[3327616]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327616]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327616]["RewardItem"][1]["Id"] = 3009002 -- 晶莹星陨石碎片[3009002][属性:8][叠加:10000][金币:0], 【表格】晶莹星陨石碎片
	tBattlePassTaskTest_Data[3327616]["RewardItem"][1]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的晶莹星陨石碎片*10
	tBattlePassTaskTest_Data[3327616]["RewardItem"][2] = {}
	tBattlePassTaskTest_Data[3327616]["RewardItem"][2]["Id"] = 730005 -- +5赤炼石[730005][属性:0][叠加:0][金币:0], 【表格】赤炼石+5
	tBattlePassTaskTest_Data[3327616]["RewardItem"][2]["Attr"] = "0 2 0 7200 1" -- 5天时效(激活)的+5赤炼石*2
	tBattlePassTaskTest_Data[3327616]["RewardItem"][3] = {}
	tBattlePassTaskTest_Data[3327616]["RewardItem"][3]["Id"] = 3314207 -- 虎骨气力酒[3314207][属性:8][叠加:10000][金币:0], 【表格】虎骨气力酒
	tBattlePassTaskTest_Data[3327616]["RewardItem"][3]["Attr"] = "0 4" -- 虎骨气力酒*4
	tBattlePassTaskTest_Data[3327616]["RewardItem"][4] = {}
	tBattlePassTaskTest_Data[3327616]["RewardItem"][4]["Id"] = 3311744 -- 稀有黄色神纹碎片[3311748][属性:8][叠加:10000][金币:0], 【表格】稀有黄色神纹碎片
	tBattlePassTaskTest_Data[3327616]["RewardItem"][4]["Attr"] = "0 3" -- 稀有黄色神纹碎片*3
	tBattlePassTaskTest_Data[3327616]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327616]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327616]["RewardEffect"]["Effect"] = "angelwing"


	tBattlePassTaskTest_Data[3327617] = {}
	-- ===豪侠积分季军礼盒
	-- ===索引: tBattlePassTaskTest_Data[3327617]
	-- ===删除: 3327617,1
	-- ===
	-- ===
	tBattlePassTaskTest_Data[3327617]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3327617]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3327617]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3327617]["DeleteItem"][1]["Id"] = 3327617 -- 【库】豪侠积分季军礼盒[属性:9]
	tBattlePassTaskTest_Data[3327617]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327617]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327617]["RewardItem"][1]["Id"] = 3009002 -- 晶莹星陨石碎片[3009002][属性:8][叠加:10000][金币:0], 【表格】晶莹星陨石碎片
	tBattlePassTaskTest_Data[3327617]["RewardItem"][1]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的晶莹星陨石碎片*6
	tBattlePassTaskTest_Data[3327617]["RewardItem"][2] = {}
	tBattlePassTaskTest_Data[3327617]["RewardItem"][2]["Id"] = 730005 -- +5赤炼石[730005][属性:0][叠加:0][金币:0], 【表格】赤炼石+5
	tBattlePassTaskTest_Data[3327617]["RewardItem"][2]["Attr"] = "0 1 0 7200 1" -- 5天时效(激活)的+5赤炼石*1
	tBattlePassTaskTest_Data[3327617]["RewardItem"][3] = {}
	tBattlePassTaskTest_Data[3327617]["RewardItem"][3]["Id"] = 3314207 -- 虎骨气力酒[3314207][属性:8][叠加:10000][金币:0], 【表格】虎骨气力酒
	tBattlePassTaskTest_Data[3327617]["RewardItem"][3]["Attr"] = "0 3" -- 虎骨气力酒*3
	tBattlePassTaskTest_Data[3327617]["RewardItem"][4] = {}
	tBattlePassTaskTest_Data[3327617]["RewardItem"][4]["Id"] = 3311744 -- 稀有黄色神纹碎片[3311748][属性:8][叠加:10000][金币:0], 【表格】稀有黄色神纹碎片
	tBattlePassTaskTest_Data[3327617]["RewardItem"][4]["Attr"] = "0 2" -- 稀有黄色神纹碎片*2
	tBattlePassTaskTest_Data[3327617]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327617]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327617]["RewardEffect"]["Effect"] = "angelwing"


	tBattlePassTaskTest_Data[3327618] = {}
	-- ===豪侠积分风云礼盒
	-- ===索引: tBattlePassTaskTest_Data[3327618]
	-- ===删除: 3327618,1
	-- ===
	-- ===
	tBattlePassTaskTest_Data[3327618]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3327618]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3327618]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3327618]["DeleteItem"][1]["Id"] = 3327618 -- 【库】豪侠积分风云礼盒[属性:9]
	tBattlePassTaskTest_Data[3327618]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3327618]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3327618]["RewardItem"][1]["Id"] = 3009002 -- 晶莹星陨石碎片[3009002][属性:8][叠加:10000][金币:0], 【表格】晶莹星陨石碎片
	tBattlePassTaskTest_Data[3327618]["RewardItem"][1]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的晶莹星陨石碎片*4
	tBattlePassTaskTest_Data[3327618]["RewardItem"][2] = {}
	tBattlePassTaskTest_Data[3327618]["RewardItem"][2]["Id"] = 730004 -- +4赤炼石[730004][属性:0][叠加:0][金币:0], 【表格】赤炼石+4
	tBattlePassTaskTest_Data[3327618]["RewardItem"][2]["Attr"] = "0 2 0 7200 1" -- 5天时效(激活)的+4赤炼石*2
	tBattlePassTaskTest_Data[3327618]["RewardItem"][3] = {}
	tBattlePassTaskTest_Data[3327618]["RewardItem"][3]["Id"] = 3314207 -- 虎骨气力酒[3314207][属性:8][叠加:10000][金币:0], 【表格】虎骨气力酒
	tBattlePassTaskTest_Data[3327618]["RewardItem"][3]["Attr"] = "0 2" -- 虎骨气力酒*2
	tBattlePassTaskTest_Data[3327618]["RewardItem"][4] = {}
	tBattlePassTaskTest_Data[3327618]["RewardItem"][4]["Id"] = 3311744 -- 稀有黄色神纹碎片[3311748][属性:8][叠加:10000][金币:0], 【表格】稀有黄色神纹碎片
	tBattlePassTaskTest_Data[3327618]["RewardItem"][4]["Attr"] = "0 1" -- 稀有黄色神纹碎片*1
	tBattlePassTaskTest_Data[3327618]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3327618]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3327618]["RewardEffect"]["Effect"] = "angelwing"

	
	tBattlePassTaskTest_Data["StrengthBack"] = {}
	tBattlePassTaskTest_Data["StrengthBack"]["LogId"] = 12001359
	tBattlePassTaskTest_Data["StrengthBack"]["RewardStrengthValue"] = {}
	tBattlePassTaskTest_Data["StrengthBack"]["RewardStrengthValue"]["Value"] = 0 -- 气力值, 【需求】5000气力值
	tBattlePassTaskTest_Data["StrengthBack"]["RewardEffect"] = {}
	tBattlePassTaskTest_Data["StrengthBack"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data["StrengthBack"]["RewardEffect"]["Effect"] = "angelwing"
	
	-- tBattlePassTaskTest_Data["Log"]={}
	-- tBattlePassTaskTest_Data["Log"]["Overtime"]="0,0,%d,%d,12001359,1,0,0"

---------4月忍者战令--------------
		-- ===2赤炼石（赠）礼盒
	-- ===索引: tBattlePassTaskTest_Data[3329772]
	-- ===删除: 3329772,1
	-- ===
	-- ===
	tBattlePassTaskTest_Data[3329772] = {}
	tBattlePassTaskTest_Data[3329772]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3329772]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3329772]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3329772]["DeleteItem"][1]["Id"] = 3329772 -- 【库】 3329772 【库里没有该物品】[属性:]
	tBattlePassTaskTest_Data[3329772]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3329772]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3329772]["RewardItem"][1]["Id"] = 730002 -- +2赤炼石[730002][属性:0][叠加:0][金币:0], 【表格】赤炼石+2
	tBattlePassTaskTest_Data[3329772]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+2赤炼石（赠）*1
	tBattlePassTaskTest_Data[3329772]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3329772]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3329772]["RewardEffect"]["Effect"] = "angelwing"


	tBattlePassTaskTest_Data[3329773] = {}
	-- ===3赤炼石（赠）礼盒
	-- ===索引: tBattlePassTaskTest_Data[3329773]
	-- ===删除: 3329773,1
	-- ===
	-- ===
	tBattlePassTaskTest_Data[3329773]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3329773]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3329773]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3329773]["DeleteItem"][1]["Id"] = 3329773 -- 【库】 3329773 【库里没有该物品】[属性:]
	tBattlePassTaskTest_Data[3329773]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3329773]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3329773]["RewardItem"][1]["Id"] = 730003 -- +3赤炼石[730003][属性:0][叠加:0][金币:0], 【表格】赤炼石+3
	tBattlePassTaskTest_Data[3329773]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+3赤炼石（赠）*1
	tBattlePassTaskTest_Data[3329773]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3329773]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3329773]["RewardEffect"]["Effect"] = "angelwing"


	tBattlePassTaskTest_Data[3329774] = {}
	-- ===4赤炼石（赠）礼盒
	-- ===索引: tBattlePassTaskTest_Data[3329774]
	-- ===删除: 3329774,1
	-- ===
	-- ===
	tBattlePassTaskTest_Data[3329774]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3329774]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3329774]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3329774]["DeleteItem"][1]["Id"] = 3329774 -- 【库】 3329774 【库里没有该物品】[属性:]
	tBattlePassTaskTest_Data[3329774]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3329774]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3329774]["RewardItem"][1]["Id"] = 730004 -- +4赤炼石[730004][属性:0][叠加:0][金币:0], 【表格】赤炼石+4
	tBattlePassTaskTest_Data[3329774]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+4赤炼石（赠）*1
	tBattlePassTaskTest_Data[3329774]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3329774]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3329774]["RewardEffect"]["Effect"] = "angelwing"


	tBattlePassTaskTest_Data[3329775] = {}
	-- ===500气力值礼盒
	-- ===索引: tBattlePassTaskTest_Data[3329775]
	-- ===删除: 3329775,1
	-- ===
	-- ===
	tBattlePassTaskTest_Data[3329775]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3329775]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3329775]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3329775]["DeleteItem"][1]["Id"] = 3329775 -- 【库】 3329775 【库里没有该物品】[属性:]
	tBattlePassTaskTest_Data[3329775]["RewardStrengthValue"] = {}
	tBattlePassTaskTest_Data[3329775]["RewardStrengthValue"]["Value"] = 500 -- 气力值, 【需求】500气力值
	tBattlePassTaskTest_Data[3329775]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3329775]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3329775]["RewardEffect"]["Effect"] = "angelwing"


	tBattlePassTaskTest_Data[3329776] = {}
	-- ===300气力值礼盒
	-- ===索引: tBattlePassTaskTest_Data[3329776]
	-- ===删除: 3329776,1
	-- ===
	-- ===
	tBattlePassTaskTest_Data[3329776]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3329776]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3329776]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3329776]["DeleteItem"][1]["Id"] = 3329776 -- 【库】 3329776 【库里没有该物品】[属性:]
	tBattlePassTaskTest_Data[3329776]["RewardStrengthValue"] = {}
	tBattlePassTaskTest_Data[3329776]["RewardStrengthValue"]["Value"] = 300 -- 气力值, 【需求】300气力值
	tBattlePassTaskTest_Data[3329776]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3329776]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3329776]["RewardEffect"]["Effect"] = "angelwing"


	tBattlePassTaskTest_Data[3329777] = {}
	-- ===全民福利礼盒 非忍者
	-- ===索引: tBattlePassTaskTest_Data[3329777][1]
	-- ===删除: 3329777,1
	-- ===
	-- ===
	tBattlePassTaskTest_Data[3329777][1] = {}
	tBattlePassTaskTest_Data[3329777][1]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3329777][1]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3329777][1]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3329777][1]["DeleteItem"][1]["Id"] = 3329777 -- 【库】 3329777 【库里没有该物品】[属性:]
	tBattlePassTaskTest_Data[3329777][1]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3329777][1]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3329777][1]["RewardItem"][1]["Id"] = 3314253 -- 黄色神纹碎片[3314253][属性:8][叠加:10000][金币:0], 【表格】普通黄色神纹碎片（赠）
	tBattlePassTaskTest_Data[3329777][1]["RewardItem"][1]["Attr"] = "0 2 3" -- 黄色神纹碎片（赠）*2
	tBattlePassTaskTest_Data[3329777][1]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3329777][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3329777][1]["RewardEffect"]["Effect"] = "angelwing"


	tBattlePassTaskTest_Data[3329777][2] = {}
	-- ===全民福利礼盒 忍者
	-- ===索引: tBattlePassTaskTest_Data[3329777][2]
	-- ===删除: 3329777,1
	-- ===
	-- ===
	tBattlePassTaskTest_Data[3329777][2]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3329777][2]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3329777][2]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3329777][2]["DeleteItem"][1]["Id"] = 3329777 -- 【库】 3329777 【库里没有该物品】[属性:]
	tBattlePassTaskTest_Data[3329777][2]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3329777][2]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3329777][2]["RewardItem"][1]["Id"] = 3329788 --  3329788 【库里没有该物品】, 【表格】幻刃影杀礼盒.
	tBattlePassTaskTest_Data[3329777][2]["RewardItem"][1]["Attr"] = "0 1" --  3329788 【库里没有该物品】*1
	tBattlePassTaskTest_Data[3329777][2]["RewardItem"][2] = {}
	tBattlePassTaskTest_Data[3329777][2]["RewardItem"][2]["Id"] = 3314253 -- 黄色神纹碎片[3314253][属性:8][叠加:10000][金币:0], 【表格】普通黄色神纹碎片（赠）
	tBattlePassTaskTest_Data[3329777][2]["RewardItem"][2]["Attr"] = "0 2 3" -- 黄色神纹碎片（赠）*2
	tBattlePassTaskTest_Data[3329777][2]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3329777][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3329777][2]["RewardEffect"]["Effect"] = "angelwing"


	tBattlePassTaskTest_Data[3329778] = {}
	-- ===全民狂欢礼盒 非忍者
	-- ===索引: tBattlePassTaskTest_Data[3329778][1]
	-- ===删除: 3329778,1
	-- ===
	-- ===
	tBattlePassTaskTest_Data[3329778][1] = {}
	tBattlePassTaskTest_Data[3329778][1]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3329778][1]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3329778][1]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3329778][1]["DeleteItem"][1]["Id"] = 3329778 -- 【库】 3329778 【库里没有该物品】[属性:]
	tBattlePassTaskTest_Data[3329778][1]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3329778][1]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3329778][1]["RewardItem"][1]["Id"] = 3329802 --  3329802 【库里没有该物品】, 【表格】300万爵位勋章（赠）礼盒
	tBattlePassTaskTest_Data[3329778][1]["RewardItem"][1]["Attr"] = "0 1" --  3329802 【库里没有该物品】*1
	tBattlePassTaskTest_Data[3329778][1]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3329778][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3329778][1]["RewardEffect"]["Effect"] = "angelwing"


	tBattlePassTaskTest_Data[3329778][2] = {}
	-- ===全民狂欢礼盒 忍者
	-- ===索引: tBattlePassTaskTest_Data[3329778][2]
	-- ===删除: 3329778,1
	-- ===
	-- ===
	tBattlePassTaskTest_Data[3329778][2]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3329778][2]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3329778][2]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3329778][2]["DeleteItem"][1]["Id"] = 3329778 -- 【库】 3329778 【库里没有该物品】[属性:]
	tBattlePassTaskTest_Data[3329778][2]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3329778][2]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3329778][2]["RewardItem"][1]["Id"] = 3329788 --  3329788 【库里没有该物品】, 【表格】幻刃影杀礼盒.
	tBattlePassTaskTest_Data[3329778][2]["RewardItem"][1]["Attr"] = "0 1" --  3329788 【库里没有该物品】*1
	tBattlePassTaskTest_Data[3329778][2]["RewardItem"][2] = {}
	tBattlePassTaskTest_Data[3329778][2]["RewardItem"][2]["Id"] = 3329802 --  3329802 【库里没有该物品】, 【表格】300万爵位勋章（赠）礼盒
	tBattlePassTaskTest_Data[3329778][2]["RewardItem"][2]["Attr"] = "0 1" --  3329802 【库里没有该物品】*1
	tBattlePassTaskTest_Data[3329778][2]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3329778][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3329778][2]["RewardEffect"]["Effect"] = "angelwing"


	tBattlePassTaskTest_Data[3329779] = {}
	-- ===普天同庆礼盒 非忍者
	-- ===索引: tBattlePassTaskTest_Data[3329779][1]
	-- ===删除: 3329779,1
	-- ===
	-- ===
	tBattlePassTaskTest_Data[3329779][1] = {}
	tBattlePassTaskTest_Data[3329779][1]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3329779][1]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3329779][1]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3329779][1]["DeleteItem"][1]["Id"] = 3329779 -- 【库】 3329779 【库里没有该物品】[属性:]
	tBattlePassTaskTest_Data[3329779][1]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3329779][1]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3329779][1]["RewardItem"][1]["Id"] = 3314255 -- 稀有黄色神纹碎片[3314255][属性:8][叠加:10000][金币:0], 【表格】1个稀有黄色神纹碎片（赠）
	tBattlePassTaskTest_Data[3329779][1]["RewardItem"][1]["Attr"] = "0 1 3" -- 稀有黄色神纹碎片（赠）*1
	tBattlePassTaskTest_Data[3329779][1]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3329779][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3329779][1]["RewardEffect"]["Effect"] = "angelwing"


	tBattlePassTaskTest_Data[3329779][2] = {}
	-- ===普天同庆礼盒 忍者
	-- ===索引: tBattlePassTaskTest_Data[3329779][2]
	-- ===删除: 3329779,1
	-- ===
	-- ===
	tBattlePassTaskTest_Data[3329779][2]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3329779][2]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3329779][2]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3329779][2]["DeleteItem"][1]["Id"] = 3329779 -- 【库】 3329779 【库里没有该物品】[属性:]
	tBattlePassTaskTest_Data[3329779][2]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3329779][2]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3329779][2]["RewardItem"][1]["Id"] = 3329788 --  3329788 【库里没有该物品】, 【表格】幻刃影杀礼盒.
	tBattlePassTaskTest_Data[3329779][2]["RewardItem"][1]["Attr"] = "0 1" --  3329788 【库里没有该物品】*1
	tBattlePassTaskTest_Data[3329779][2]["RewardItem"][2] = {}
	tBattlePassTaskTest_Data[3329779][2]["RewardItem"][2]["Id"] = 3314255 -- 稀有黄色神纹碎片[3314255][属性:8][叠加:10000][金币:0], 【表格】1个稀有黄色神纹碎片（赠）
	tBattlePassTaskTest_Data[3329779][2]["RewardItem"][2]["Attr"] = "0 1 3" -- 稀有黄色神纹碎片（赠）*1
	tBattlePassTaskTest_Data[3329779][2]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3329779][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3329779][2]["RewardEffect"]["Effect"] = "angelwing"


	tBattlePassTaskTest_Data[3329780] = {}
	-- ===300点修为值礼盒
	-- ===索引: tBattlePassTaskTest_Data[3329780]
	-- ===删除: 3329780,1
	-- ===
	-- ===
	tBattlePassTaskTest_Data[3329780]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3329780]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3329780]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3329780]["DeleteItem"][1]["Id"] = 3329780 -- 【库】 3329780 【库里没有该物品】[属性:]
	tBattlePassTaskTest_Data[3329780]["RewardRepairValue"] = {}
	tBattlePassTaskTest_Data[3329780]["RewardRepairValue"]["Value"] = 300 -- 修为值, 【需求】300修为值
	tBattlePassTaskTest_Data[3329780]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3329780]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3329780]["RewardEffect"]["Effect"] = "angelwing"

	tBattlePassTaskTest_Data[3329781]={}
	tBattlePassTaskTest_Data[3329781][1] = {}
	-- ===觉醒福利礼盒 非忍者
	-- ===索引: tBattlePassTaskTest_Data[3329781][1]
	-- ===删除: 3329781,1
	-- ===
	-- ===
	tBattlePassTaskTest_Data[3329781][1]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3329781][1]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3329781][1]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3329781][1]["DeleteItem"][1]["Id"] = 3329781 -- 【库】 3329781 【库里没有该物品】[属性:]
	tBattlePassTaskTest_Data[3329781][1]["RewardEMoneyMono"] = {}
	tBattlePassTaskTest_Data[3329781][1]["RewardEMoneyMono"]["Value"] = 50 -- 天石（赠）, 【需求】50天石（赠）
	tBattlePassTaskTest_Data[3329781][1]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1531"
	tBattlePassTaskTest_Data[3329781][1]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3329781][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3329781][1]["RewardEffect"]["Effect"] = "angelwing"


	tBattlePassTaskTest_Data[3329781][2] = {}
	-- ===觉醒福利礼盒 忍者
	-- ===索引: tBattlePassTaskTest_Data[3329781][2]
	-- ===删除: 3329781,1
	-- ===
	-- ===
	tBattlePassTaskTest_Data[3329781][2]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3329781][2]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3329781][2]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3329781][2]["DeleteItem"][1]["Id"] = 3329781 -- 【库】 3329781 【库里没有该物品】[属性:]
	tBattlePassTaskTest_Data[3329781][2]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3329781][2]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3329781][2]["RewardItem"][1]["Id"] = 3329788 --  3329788 【库里没有该物品】, 【表格】幻刃影杀礼盒.
	tBattlePassTaskTest_Data[3329781][2]["RewardItem"][1]["Attr"] = "0 1" --  3329788 【库里没有该物品】*1
	tBattlePassTaskTest_Data[3329781][2]["RewardEMoneyMono"] = {}
	tBattlePassTaskTest_Data[3329781][2]["RewardEMoneyMono"]["Value"] = 50 -- 天石（赠）, 【需求】50天石（赠）
	tBattlePassTaskTest_Data[3329781][2]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1531"
	tBattlePassTaskTest_Data[3329781][2]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3329781][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3329781][2]["RewardEffect"]["Effect"] = "angelwing"


	tBattlePassTaskTest_Data[3329782] = {}
	-- ===天降福利礼盒 非忍者
	-- ===索引: tBattlePassTaskTest_Data[3329782][1]
	-- ===删除: 3329782,1
	-- ===
	-- ===
	tBattlePassTaskTest_Data[3329782][1] = {}
	tBattlePassTaskTest_Data[3329782][1]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3329782][1]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3329782][1]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3329782][1]["DeleteItem"][1]["Id"] = 3329782 -- 【库】 3329782 【库里没有该物品】[属性:]
	tBattlePassTaskTest_Data[3329782][1]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3329782][1]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3329782][1]["RewardItem"][1]["Id"] = 3008226 -- 千年血玉碎片[3008226][属性:9][叠加:10000][金币:0], 【表格】50个千年血玉碎片
	tBattlePassTaskTest_Data[3329782][1]["RewardItem"][1]["Attr"] = "0 50" -- 千年血玉碎片*50（[错误]物品数量超10个）
	tBattlePassTaskTest_Data[3329782][1]["RewardItem"][2] = {}
	tBattlePassTaskTest_Data[3329782][1]["RewardItem"][2]["Id"] = 196175 -- 千年血玉碎片[3008226][属性:9][叠加:10000][金币:0], 【表格】50个千年血玉碎片
	tBattlePassTaskTest_Data[3329782][1]["RewardItem"][2]["Attr"] = "0 1 3 259200 1 0 0 1" -- 千年血玉碎片*50（[错误]物品数量超10个）
	tBattlePassTaskTest_Data[3329782][1]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3329782][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3329782][1]["RewardEffect"]["Effect"] = "angelwing"


	tBattlePassTaskTest_Data[3329782][2] = {}
	-- ===天降福利礼盒 忍者
	-- ===索引: tBattlePassTaskTest_Data[3329782][2]
	-- ===删除: 3329782,1
	-- ===
	-- ===
	tBattlePassTaskTest_Data[3329782][2]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3329782][2]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3329782][2]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3329782][2]["DeleteItem"][1]["Id"] = 3329782 -- 【库】 3329782 【库里没有该物品】[属性:]
	tBattlePassTaskTest_Data[3329782][2]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3329782][2]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3329782][2]["RewardItem"][1]["Id"] = 3329788 --  3329788 【库里没有该物品】, 【表格】幻刃影杀礼盒.
	tBattlePassTaskTest_Data[3329782][2]["RewardItem"][1]["Attr"] = "0 2" --  3329788 【库里没有该物品】*2
	tBattlePassTaskTest_Data[3329782][2]["RewardItem"][2] = {}
	tBattlePassTaskTest_Data[3329782][2]["RewardItem"][2]["Id"] = 3008226 -- 千年血玉碎片[3008226][属性:9][叠加:10000][金币:0], 【表格】50个千年血玉碎片
	tBattlePassTaskTest_Data[3329782][2]["RewardItem"][2]["Attr"] = "0 50" -- 千年血玉碎片*50（[错误]物品数量超10个）
	tBattlePassTaskTest_Data[3329782][2]["RewardItem"][3] = {}
	tBattlePassTaskTest_Data[3329782][2]["RewardItem"][3]["Id"] = 196175 -- 千年血玉碎片[3008226][属性:9][叠加:10000][金币:0], 【表格】50个千年血玉碎片
	tBattlePassTaskTest_Data[3329782][2]["RewardItem"][3]["Attr"] = "0 1 3 259200 1 0 0 1" -- 千年血玉碎片*50（[错误]物品数量超10个）
	tBattlePassTaskTest_Data[3329782][2]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3329782][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3329782][2]["RewardEffect"]["Effect"] = "angelwing"


	tBattlePassTaskTest_Data[3329783] = {}
	-- ===好运常伴礼盒 非忍者
	-- ===索引: tBattlePassTaskTest_Data[3329783][1]
	-- ===删除: 3329783,1
	-- ===
	-- ===
	tBattlePassTaskTest_Data[3329783][1] = {}
	tBattlePassTaskTest_Data[3329783][1]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3329783][1]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3329783][1]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3329783][1]["DeleteItem"][1]["Id"] = 3329783 -- 【库】 3329783 【库里没有该物品】[属性:]
	tBattlePassTaskTest_Data[3329783][1]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3329783][1]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3329783][1]["RewardItem"][1]["Id"] = 3008226 -- 千年血玉碎片[3008226][属性:9][叠加:10000][金币:0], 【表格】25个千年血玉碎片
	tBattlePassTaskTest_Data[3329783][1]["RewardItem"][1]["Attr"] = "0 25" -- 千年血玉碎片*25（[错误]物品数量超10个）
	tBattlePassTaskTest_Data[3329783][1]["RewardItem"][2] = {}
	tBattlePassTaskTest_Data[3329783][1]["RewardItem"][2]["Id"] = 196175 -- 千年血玉碎片[3008226][属性:9][叠加:10000][金币:0], 【表格】50个千年血玉碎片
	tBattlePassTaskTest_Data[3329783][1]["RewardItem"][2]["Attr"] = "0 1 3 0 0 0 0 1" -- 千年血玉碎片*50（[错误]物品数量超10个）
	tBattlePassTaskTest_Data[3329783][1]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3329783][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3329783][1]["RewardEffect"]["Effect"] = "angelwing"


	tBattlePassTaskTest_Data[3329783][2] = {}
	-- ===好运常伴礼盒 忍者
	-- ===索引: tBattlePassTaskTest_Data[3329783][2]
	-- ===删除: 3329783,1
	-- ===
	-- ===
	tBattlePassTaskTest_Data[3329783][2]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3329783][2]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3329783][2]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3329783][2]["DeleteItem"][1]["Id"] = 3329783 -- 【库】 3329783 【库里没有该物品】[属性:]
	tBattlePassTaskTest_Data[3329783][2]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3329783][2]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3329783][2]["RewardItem"][1]["Id"] = 3329788 --  3329788 【库里没有该物品】, 【表格】幻刃影杀礼盒.
	tBattlePassTaskTest_Data[3329783][2]["RewardItem"][1]["Attr"] = "0 2" --  3329788 【库里没有该物品】*2
	tBattlePassTaskTest_Data[3329783][2]["RewardItem"][2] = {}
	tBattlePassTaskTest_Data[3329783][2]["RewardItem"][2]["Id"] = 3008226 -- 千年血玉碎片[3008226][属性:9][叠加:10000][金币:0], 【表格】25个千年血玉碎片
	tBattlePassTaskTest_Data[3329783][2]["RewardItem"][2]["Attr"] = "0 25" -- 千年血玉碎片*25（[错误]物品数量超10个）
	tBattlePassTaskTest_Data[3329783][2]["RewardItem"][3] = {}
	tBattlePassTaskTest_Data[3329783][2]["RewardItem"][3]["Id"] = 196175 -- 千年血玉碎片[3008226][属性:9][叠加:10000][金币:0], 【表格】50个千年血玉碎片
	tBattlePassTaskTest_Data[3329783][2]["RewardItem"][3]["Attr"] = "0 1 3 0 0 0 0 1" -- 千年血玉碎片*50（[错误]物品数量超10个）
	tBattlePassTaskTest_Data[3329783][2]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3329783][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3329783][2]["RewardEffect"]["Effect"] = "angelwing"


	tBattlePassTaskTest_Data[3329784] = {}
	-- ===全服庆典礼盒 非忍者
	-- ===索引: tBattlePassTaskTest_Data[3329784][1]
	-- ===删除: 3329784,1
	-- ===
	-- ===
	tBattlePassTaskTest_Data[3329784][1] = {}
	tBattlePassTaskTest_Data[3329784][1]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3329784][1]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3329784][1]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3329784][1]["DeleteItem"][1]["Id"] = 3329784 -- 【库】 3329784 【库里没有该物品】[属性:]
	tBattlePassTaskTest_Data[3329784][1]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3329784][1]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3329784][1]["RewardItem"][1]["Id"] = 3314255 -- 稀有黄色神纹碎片[3314255][属性:8][叠加:10000][金币:0], 【表格】2个稀有黄色神纹碎片（赠）
	tBattlePassTaskTest_Data[3329784][1]["RewardItem"][1]["Attr"] = "0 2 3" -- 稀有黄色神纹碎片（赠）*2
	tBattlePassTaskTest_Data[3329784][1]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3329784][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3329784][1]["RewardEffect"]["Effect"] = "angelwing"


	tBattlePassTaskTest_Data[3329784][2] = {}
	-- ===全服庆典礼盒 忍者
	-- ===索引: tBattlePassTaskTest_Data[3329784][2]
	-- ===删除: 3329784,1
	-- ===
	-- ===
	tBattlePassTaskTest_Data[3329784][2]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3329784][2]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3329784][2]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3329784][2]["DeleteItem"][1]["Id"] = 3329784 -- 【库】 3329784 【库里没有该物品】[属性:]
	tBattlePassTaskTest_Data[3329784][2]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3329784][2]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3329784][2]["RewardItem"][1]["Id"] = 3329788 --  3329788 【库里没有该物品】, 【表格】幻刃影杀礼盒.
	tBattlePassTaskTest_Data[3329784][2]["RewardItem"][1]["Attr"] = "0 2" --  3329788 【库里没有该物品】*2
	tBattlePassTaskTest_Data[3329784][2]["RewardItem"][2] = {}
	tBattlePassTaskTest_Data[3329784][2]["RewardItem"][2]["Id"] = 3314255 -- 稀有黄色神纹碎片[3314255][属性:8][叠加:10000][金币:0], 【表格】2个稀有黄色神纹碎片（赠）
	tBattlePassTaskTest_Data[3329784][2]["RewardItem"][2]["Attr"] = "0 2 3" -- 稀有黄色神纹碎片（赠）*2
	tBattlePassTaskTest_Data[3329784][2]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3329784][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3329784][2]["RewardEffect"]["Effect"] = "angelwing"


	tBattlePassTaskTest_Data[3329785] = {}
	-- ===觉醒庆典礼盒 非忍者
	-- ===索引: tBattlePassTaskTest_Data[3329785][1]
	-- ===删除: 3329785,1
	-- ===
	-- ===
	tBattlePassTaskTest_Data[3329785][1] = {}
	tBattlePassTaskTest_Data[3329785][1]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3329785][1]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3329785][1]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3329785][1]["DeleteItem"][1]["Id"] = 3329785 -- 【库】 3329785 【库里没有该物品】[属性:]
	tBattlePassTaskTest_Data[3329785][1]["RewardEMoneyMono"] = {}
	tBattlePassTaskTest_Data[3329785][1]["RewardEMoneyMono"]["Value"] = 250 -- 天石（赠）, 【需求】250天石（赠）
	tBattlePassTaskTest_Data[3329785][1]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1532"
	tBattlePassTaskTest_Data[3329785][1]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3329785][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3329785][1]["RewardEffect"]["Effect"] = "angelwing"


	tBattlePassTaskTest_Data[3329785][2] = {}
	-- ===觉醒庆典礼盒 忍者
	-- ===索引: tBattlePassTaskTest_Data[3329785][2]
	-- ===删除: 3329785,1
	-- ===
	-- ===
	tBattlePassTaskTest_Data[3329785][2]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3329785][2]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3329785][2]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3329785][2]["DeleteItem"][1]["Id"] = 3329785 -- 【库】 3329785 【库里没有该物品】[属性:]
	tBattlePassTaskTest_Data[3329785][2]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3329785][2]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3329785][2]["RewardItem"][1]["Id"] = 3329788 --  3329788 【库里没有该物品】, 【表格】幻刃影杀礼盒.
	tBattlePassTaskTest_Data[3329785][2]["RewardItem"][1]["Attr"] = "0 2" --  3329788 【库里没有该物品】*2
	tBattlePassTaskTest_Data[3329785][2]["RewardEMoneyMono"] = {}
	tBattlePassTaskTest_Data[3329785][2]["RewardEMoneyMono"]["Value"] = 250 -- 天石（赠）, 【需求】250天石（赠）
	tBattlePassTaskTest_Data[3329785][2]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1532"
	tBattlePassTaskTest_Data[3329785][2]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3329785][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3329785][2]["RewardEffect"]["Effect"] = "angelwing"


	tBattlePassTaskTest_Data[3329786] = {}
	-- ===福至心灵礼盒 非忍者
	-- ===索引: tBattlePassTaskTest_Data[3329786][1]
	-- ===删除: 3329786,1
	-- ===
	-- ===
	tBattlePassTaskTest_Data[3329786][1] = {}
	tBattlePassTaskTest_Data[3329786][1]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3329786][1]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3329786][1]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3329786][1]["DeleteItem"][1]["Id"] = 3329786 -- 【库】 3329786 【库里没有该物品】[属性:]
	tBattlePassTaskTest_Data[3329786][1]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3329786][1]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3329786][1]["RewardItem"][1]["Id"] = 3315503 --  3315503 【库里没有该物品】, 【表格】2封刺客信条
	tBattlePassTaskTest_Data[3329786][1]["RewardItem"][1]["Attr"] = "0 2" --  3315503 【库里没有该物品】*2
	tBattlePassTaskTest_Data[3329786][1]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3329786][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3329786][1]["RewardEffect"]["Effect"] = "angelwing"


	tBattlePassTaskTest_Data[3329786][2] = {}
	-- ===福至心灵礼盒 忍者
	-- ===索引: tBattlePassTaskTest_Data[3329786][2]
	-- ===删除: 3329786,1
	-- ===
	-- ===
	tBattlePassTaskTest_Data[3329786][2]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3329786][2]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3329786][2]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3329786][2]["DeleteItem"][1]["Id"] = 3329786 -- 【库】 3329786 【库里没有该物品】[属性:]
	tBattlePassTaskTest_Data[3329786][2]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3329786][2]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3329786][2]["RewardItem"][1]["Id"] = 3329788 --  3329788 【库里没有该物品】, 【表格】幻刃影杀礼盒.
	tBattlePassTaskTest_Data[3329786][2]["RewardItem"][1]["Attr"] = "0 2" --  3329788 【库里没有该物品】*2
	tBattlePassTaskTest_Data[3329786][2]["RewardItem"][2] = {}
	tBattlePassTaskTest_Data[3329786][2]["RewardItem"][2]["Id"] = 3315503 --  3315503 【库里没有该物品】, 【表格】2封刺客信条
	tBattlePassTaskTest_Data[3329786][2]["RewardItem"][2]["Attr"] = "0 2" --  3315503 【库里没有该物品】*2
	tBattlePassTaskTest_Data[3329786][2]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3329786][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3329786][2]["RewardEffect"]["Effect"] = "angelwing"


	tBattlePassTaskTest_Data[3329802] = {}
	-- ===300万爵位勋章（赠）礼盒
	-- ===索引: tBattlePassTaskTest_Data[3329802]
	-- ===删除: 3329802,1
	-- ===
	-- ===
	tBattlePassTaskTest_Data[3329802]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3329802]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3329802]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3329802]["DeleteItem"][1]["Id"] = 3329802 -- 【库】 3329802 【库里没有该物品】[属性:]
	tBattlePassTaskTest_Data[3329802]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3329802]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3329802]["RewardItem"][1]["Id"] = 3322760 -- 300万爵位勋章[3322760][属性:8][叠加:1][金币:0], 【表格】300万爵位勋章（赠）
	tBattlePassTaskTest_Data[3329802]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的300万爵位勋章（赠）*1
	tBattlePassTaskTest_Data[3329802]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3329802]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3329802]["RewardEffect"]["Effect"] = "angelwing"


	tBattlePassTaskTest_Data[3329788] = {}
	tBattlePassTaskTest_Data[3329788][1] = {}
	-- ===幻刃影杀礼盒.
	-- ===索引: tBattlePassTaskTest_Data[3329788]
	-- ===删除: 3329788,1
	-- ===
	-- ===
	tBattlePassTaskTest_Data[3329788][1]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tBattlePassTaskTest_Data[3329788][1]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3329788][1]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3329788][1]["DeleteItem"][1]["Id"] = 3329788 -- 【库】 3329788 【库里没有该物品】[属性:]
	tBattlePassTaskTest_Data[3329788][1]["LogId"] = 12001359
	-- 秘术精华*3 - 99.1%
	tBattlePassTaskTest_Data[3329788][1][1] = {}
	tBattlePassTaskTest_Data[3329788][1][1]["RandomItemChanceType"] = 2
	tBattlePassTaskTest_Data[3329788][1][1]["ItemChance"] = 9910
	tBattlePassTaskTest_Data[3329788][1][1]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3329788][1][1]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3329788][1][1]["RewardItem"][1]["Id"] = 3329979 --  3329979 【库里没有该物品】, 【表格】资质洗练道具
	tBattlePassTaskTest_Data[3329788][1][1]["RewardItem"][1]["Attr"] = "0 3" --  3329979 【库里没有该物品】*1
	tBattlePassTaskTest_Data[3329788][1][1]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3329788][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3329788][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 秘术精华*9 - 0.5%
	tBattlePassTaskTest_Data[3329788][1][2] = {}
	tBattlePassTaskTest_Data[3329788][1][2]["RandomItemChanceType"] = 2
	tBattlePassTaskTest_Data[3329788][1][2]["ItemChance"] = 50
	tBattlePassTaskTest_Data[3329788][1][2]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3329788][1][2]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3329788][1][2]["RewardItem"][1]["Id"] = 3329979 --  3329979 【库里没有该物品】, 【表格】高级资质洗练道具
	tBattlePassTaskTest_Data[3329788][1][2]["RewardItem"][1]["Attr"] = "0 9" --  3329979 【库里没有该物品】*1
	tBattlePassTaskTest_Data[3329788][1][2]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3329788][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3329788][1][2]["RewardEffect"]["Effect"] = "angelwing"
			-- 【动态掩码（54258, data0）】全服限量:（420）, 超限给编号（1）-
	tBattlePassTaskTest_Data[3329788][1][2]["GlobalId"] = 54258
	tBattlePassTaskTest_Data[3329788][1][2]["Pos"] = 0
	tBattlePassTaskTest_Data[3329788][1][2]["MaxData"] = 420
	tBattlePassTaskTest_Data[3329788][1][2]["FullIndex"] = 1
			-- 【动态掩码（54258, data1）】单日限量:（20）, 超限给编号（1）-
	tBattlePassTaskTest_Data[3329788][1][2]["OtherPos"] = 1
	tBattlePassTaskTest_Data[3329788][1][2]["OtherMaxData"] = 20
	tBattlePassTaskTest_Data[3329788][1][2]["OtherFullIndex"] = 1
	-- 秘术精华*20 - 0.3%
	tBattlePassTaskTest_Data[3329788][1][3] = {}
	tBattlePassTaskTest_Data[3329788][1][3]["RandomItemChanceType"] = 2
	tBattlePassTaskTest_Data[3329788][1][3]["ItemChance"] = 30
	tBattlePassTaskTest_Data[3329788][1][3]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3329788][1][3]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3329788][1][3]["RewardItem"][1]["Id"] = 3329979 --  3329979 【库里没有该物品】, 【表格】勾玉精华*20
	tBattlePassTaskTest_Data[3329788][1][3]["RewardItem"][1]["Attr"] = "0 20" --  3329979 【库里没有该物品】*1
	tBattlePassTaskTest_Data[3329788][1][3]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3329788][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3329788][1][3]["RewardEffect"]["Effect"] = "angelwing"
			-- 【动态掩码（54258, data2）】全服限量:（252）, 超限给编号（1）-
	tBattlePassTaskTest_Data[3329788][1][3]["GlobalId"] = 54258
	tBattlePassTaskTest_Data[3329788][1][3]["Pos"] = 2
	tBattlePassTaskTest_Data[3329788][1][3]["MaxData"] = 252
	tBattlePassTaskTest_Data[3329788][1][3]["FullIndex"] = 1
			-- 【动态掩码（54258, data3）】单日限量:（12）, 超限给编号（1）-
	tBattlePassTaskTest_Data[3329788][1][3]["OtherPos"] = 3
	tBattlePassTaskTest_Data[3329788][1][3]["OtherMaxData"] = 12
	tBattlePassTaskTest_Data[3329788][1][3]["OtherFullIndex"] = 1
	-- 法印宝盒 - 0.1%
	tBattlePassTaskTest_Data[3329788][1][4] = {}
	tBattlePassTaskTest_Data[3329788][1][4]["RandomItemChanceType"] = 2
	tBattlePassTaskTest_Data[3329788][1][4]["ItemChance"] = 10
	tBattlePassTaskTest_Data[3329788][1][4]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3329788][1][4]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3329788][1][4]["RewardItem"][1]["Id"] = 3330063 --  3330063 【库里没有该物品】, 【表格】勾玉宝盒
	tBattlePassTaskTest_Data[3329788][1][4]["RewardItem"][1]["Attr"] = "0 1" --  3330063 【库里没有该物品】*1
	tBattlePassTaskTest_Data[3329788][1][4]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3329788][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3329788][1][4]["RewardEffect"]["Effect"] = "angelwing"
			-- 【动态掩码（54258, data4）】全服限量:（84）, 超限给编号（1）-
	tBattlePassTaskTest_Data[3329788][1][4]["GlobalId"] = 54258
	tBattlePassTaskTest_Data[3329788][1][4]["Pos"] = 4
	tBattlePassTaskTest_Data[3329788][1][4]["MaxData"] = 84
	tBattlePassTaskTest_Data[3329788][1][4]["FullIndex"] = 1
			-- 【动态掩码（54258, data5）】单日限量:（4）, 超限给编号（1）-
	tBattlePassTaskTest_Data[3329788][1][4]["OtherPos"] = 5
	tBattlePassTaskTest_Data[3329788][1][4]["OtherMaxData"] = 4
	tBattlePassTaskTest_Data[3329788][1][4]["OtherFullIndex"] = 1
	
	tBattlePassTaskTest_Data["Stc"]["NinjaTaskEvent"]=218
	tBattlePassTaskTest_Data["Stc"]["NinjaTaskType"]=2
	
	tBattlePassTaskTest_Data["NinjaTaskScore"]={}
	tBattlePassTaskTest_Data["NinjaTaskScore"]["Index"]=10
	tBattlePassTaskTest_Data["NinjaTaskScore"]["Each"]=200
	tBattlePassTaskTest_Data["NinjaTaskScore"]["WeeklyTotal"]=2000
	

	
	----------------------------------------周年庆战令----------------------------------------------
	
	-- ===200ChiPointsBox
	-- ===索引: tBattlePassTaskTest_Data[3330755]
	-- ===删除:3330755,1
	-- ===
	-- ===
	-- ===
	tBattlePassTaskTest_Data[3330755] = {}
	tBattlePassTaskTest_Data[3330755]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3330755]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3330755]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3330755]["DeleteItem"][1]["Id"] = 3330755 -- 【库】 3330755 【库里没有该物品】[属性:]
	tBattlePassTaskTest_Data[3330755]["RewardStrengthValue"] = {}
	tBattlePassTaskTest_Data[3330755]["RewardStrengthValue"]["Value"] = 200 -- 气力值, 【需求】200气力值
	tBattlePassTaskTest_Data[3330755]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3330755]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3330755]["RewardEffect"]["Effect"] = "angelwing"


	tBattlePassTaskTest_Data[3330756] = {}
	-- ===2000ChiPointsBox
	-- ===索引: tBattlePassTaskTest_Data[3330756]
	-- ===删除:3330756,1
	-- ===
	-- ===
	-- ===
	tBattlePassTaskTest_Data[3330756]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3330756]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3330756]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3330756]["DeleteItem"][1]["Id"] = 3330756 -- 【库】 3330756 【库里没有该物品】[属性:]
	tBattlePassTaskTest_Data[3330756]["RewardStrengthValue"] = {}
	tBattlePassTaskTest_Data[3330756]["RewardStrengthValue"]["Value"] = 2000 -- 气力值, 【需求】2000气力值
	tBattlePassTaskTest_Data[3330756]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3330756]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3330756]["RewardEffect"]["Effect"] = "angelwing"


	tBattlePassTaskTest_Data[3330757] = {}
	-- ===6UniversalRuneEssences（B）Box
	-- ===索引: tBattlePassTaskTest_Data[3330757]
	-- ===删除:3330757,1
	-- ===
	-- ===
	-- ===
	tBattlePassTaskTest_Data[3330757]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3330757]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3330757]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3330757]["DeleteItem"][1]["Id"] = 3330757 -- 【库】 3330757 【库里没有该物品】[属性:]
	tBattlePassTaskTest_Data[3330757]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3330757]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3330757]["RewardItem"][1]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】6UniversalRuneEssences（B）
	tBattlePassTaskTest_Data[3330757]["RewardItem"][1]["Attr"] = "0 6 3" -- UniversalRuneEssence（赠）*6
	tBattlePassTaskTest_Data[3330757]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3330757]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3330757]["RewardEffect"]["Effect"] = "angelwing"


	tBattlePassTaskTest_Data[3330758] = {}
	-- ===20UniversalRuneEssences（B）Box
	-- ===索引: tBattlePassTaskTest_Data[3330758]
	-- ===删除:3330758,1
	-- ===
	-- ===
	-- ===
	tBattlePassTaskTest_Data[3330758]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3330758]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3330758]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3330758]["DeleteItem"][1]["Id"] = 3330758 -- 【库】 3330758 【库里没有该物品】[属性:]
	tBattlePassTaskTest_Data[3330758]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3330758]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3330758]["RewardItem"][1]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】20UniversalRuneEssences（B）
	tBattlePassTaskTest_Data[3330758]["RewardItem"][1]["Attr"] = "0 20 3" -- UniversalRuneEssence（赠）*20
	tBattlePassTaskTest_Data[3330758]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3330758]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3330758]["RewardEffect"]["Effect"] = "angelwing"


	tBattlePassTaskTest_Data[3330759] = {}
	-- ===24UniversalRuneEssences（B）Box
	-- ===索引: tBattlePassTaskTest_Data[3330759]
	-- ===删除:3330759,1
	-- ===
	-- ===
	-- ===
	tBattlePassTaskTest_Data[3330759]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3330759]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3330759]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3330759]["DeleteItem"][1]["Id"] = 3330759 -- 【库】 3330759 【库里没有该物品】[属性:]
	tBattlePassTaskTest_Data[3330759]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3330759]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3330759]["RewardItem"][1]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】24UniversalRuneEssences（B）
	tBattlePassTaskTest_Data[3330759]["RewardItem"][1]["Attr"] = "0 24 3" -- UniversalRuneEssence（赠）*24
	tBattlePassTaskTest_Data[3330759]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3330759]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3330759]["RewardEffect"]["Effect"] = "angelwing"
	
----------------------------------8月精炼神纹专题战令优化版 ----------------------------------------------
	
	-- ===8个万能神纹精粹（赠）礼包
	-- ===索引: tBattlePassTaskTest_Data[3332130]
	-- ===删除: 3332130,1
	-- ===
	-- ===
	tBattlePassTaskTest_Data[3332130] = {}
	tBattlePassTaskTest_Data[3332130]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3332130]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3332130]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3332130]["DeleteItem"][1]["Id"] = 3332130 -- 【库】 3332130 【库里没有该物品】[属性:]
	tBattlePassTaskTest_Data[3332130]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3332130]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3332130]["RewardItem"][1]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】8个万能神纹精粹（赠）
	tBattlePassTaskTest_Data[3332130]["RewardItem"][1]["Attr"] = "0 8 3" -- UniversalRuneEssence（赠）*8
	tBattlePassTaskTest_Data[3332130]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3332130]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3332130]["RewardEffect"]["Effect"] = "angelwing"


	tBattlePassTaskTest_Data[3332131] = {}
	-- ===14个万能神纹精粹（赠）礼包
	-- ===索引: tBattlePassTaskTest_Data[3332131]
	-- ===删除: 3332131,1
	-- ===
	-- ===
	tBattlePassTaskTest_Data[3332131]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3332131]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3332131]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3332131]["DeleteItem"][1]["Id"] = 3332131 -- 【库】 3332131 【库里没有该物品】[属性:]
	tBattlePassTaskTest_Data[3332131]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3332131]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3332131]["RewardItem"][1]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】14个万能神纹精粹（赠）
	tBattlePassTaskTest_Data[3332131]["RewardItem"][1]["Attr"] = "0 14 3" -- UniversalRuneEssence（赠）*14
	tBattlePassTaskTest_Data[3332131]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3332131]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3332131]["RewardEffect"]["Effect"] = "angelwing"


	tBattlePassTaskTest_Data[3332132] = {}
	-- ===普通黄色神纹碎片（赠）+究极通神丹（赠）
	-- ===索引: tBattlePassTaskTest_Data[3332132]
	-- ===删除: 3332132,1
	-- ===
	-- ===
	tBattlePassTaskTest_Data[3332132]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3332132]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3332132]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3332132]["DeleteItem"][1]["Id"] = 3332132 -- 【库】 3332132 【库里没有该物品】[属性:]
	tBattlePassTaskTest_Data[3332132]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3332132]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3332132]["RewardItem"][1]["Id"] = 3314253 -- YellowRuneFragment[3314253][属性:8][叠加:10000][金币:0], 【表格】普通黄色神纹碎片（赠）
	tBattlePassTaskTest_Data[3332132]["RewardItem"][1]["Attr"] = "0 1 3" -- YellowRuneFragment（赠）*1
	tBattlePassTaskTest_Data[3332132]["RewardItem"][2] = {}
	tBattlePassTaskTest_Data[3332132]["RewardItem"][2]["Id"] = 3003126 -- SeniorTrainingPill[3003126][属性:0][叠加:10000][金币:0], 【表格】究极通神丹（赠）
	tBattlePassTaskTest_Data[3332132]["RewardItem"][2]["Attr"] = "0 1 3" -- SeniorTrainingPill（赠）*1
	tBattlePassTaskTest_Data[3332132]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3332132]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3332132]["RewardEffect"]["Effect"] = "angelwing"


	tBattlePassTaskTest_Data[3332133] = {}
	-- ===稀有黄色神纹碎片（赠）+究极通神丹（赠）
	-- ===索引: tBattlePassTaskTest_Data[3332133]
	-- ===删除: 3332133,1
	-- ===
	-- ===
	tBattlePassTaskTest_Data[3332133]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3332133]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3332133]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3332133]["DeleteItem"][1]["Id"] = 3332133 -- 【库】 3332133 【库里没有该物品】[属性:]
	tBattlePassTaskTest_Data[3332133]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3332133]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3332133]["RewardItem"][1]["Id"] = 3314255 -- RareYellowRuneFragment[3314255][属性:8][叠加:10000][金币:0], 【表格】稀有黄色神纹碎片（赠）
	tBattlePassTaskTest_Data[3332133]["RewardItem"][1]["Attr"] = "0 1 3" -- RareYellowRuneFragment（赠）*1
	tBattlePassTaskTest_Data[3332133]["RewardItem"][2] = {}
	tBattlePassTaskTest_Data[3332133]["RewardItem"][2]["Id"] = 3003126 -- SeniorTrainingPill[3003126][属性:0][叠加:10000][金币:0], 【表格】究极通神丹（赠）
	tBattlePassTaskTest_Data[3332133]["RewardItem"][2]["Attr"] = "0 1 3" -- SeniorTrainingPill（赠）*1
	tBattlePassTaskTest_Data[3332133]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3332133]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3332133]["RewardEffect"]["Effect"] = "angelwing"


	tBattlePassTaskTest_Data[3332134] = {}
	-- ===35个千年血玉碎片+2个普通黄色神纹碎片（赠）
	-- ===索引: tBattlePassTaskTest_Data[3332134]
	-- ===删除: 3332134,1
	-- ===
	-- ===
	tBattlePassTaskTest_Data[3332134]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3332134]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3332134]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3332134]["DeleteItem"][1]["Id"] = 3332134 -- 【库】 3332134 【库里没有该物品】[属性:]
	tBattlePassTaskTest_Data[3332134]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3332134]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3332134]["RewardItem"][1]["Id"] = 3008226 -- BloodyJadeFragment[3008226][属性:9][叠加:10000][金币:0], 【表格】35个千年血玉碎片
	tBattlePassTaskTest_Data[3332134]["RewardItem"][1]["Attr"] = "0 35" -- BloodyJadeFragment*35（[错误]物品数量超10个）
	tBattlePassTaskTest_Data[3332134]["RewardItem"][2] = {}
	tBattlePassTaskTest_Data[3332134]["RewardItem"][2]["Id"] = 3314253 -- YellowRuneFragment[3314253][属性:8][叠加:10000][金币:0], 【表格】2个普通黄色神纹碎片（赠）
	tBattlePassTaskTest_Data[3332134]["RewardItem"][2]["Attr"] = "0 2 3" -- YellowRuneFragment（赠）*2
	tBattlePassTaskTest_Data[3332134]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3332134]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3332134]["RewardEffect"]["Effect"] = "angelwing"


	tBattlePassTaskTest_Data[3332135] = {}
	-- ===65个千年血玉碎片+稀有黄色神纹碎片（赠）+1个忍者猴外套碎片
	-- ===索引: tBattlePassTaskTest_Data[3332135]
	-- ===删除: 3332135,1
	-- ===
	-- ===
	tBattlePassTaskTest_Data[3332135]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3332135]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3332135]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3332135]["DeleteItem"][1]["Id"] = 3332135 -- 【库】 3332135 【库里没有该物品】[属性:]
	tBattlePassTaskTest_Data[3332135]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3332135]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3332135]["RewardItem"][1]["Id"] = 3008226 -- BloodyJadeFragment[3008226][属性:9][叠加:10000][金币:0], 【表格】65个千年血玉碎片
	tBattlePassTaskTest_Data[3332135]["RewardItem"][1]["Attr"] = "0 65" -- BloodyJadeFragment*65（[错误]物品数量超10个）
	tBattlePassTaskTest_Data[3332135]["RewardItem"][2] = {}
	tBattlePassTaskTest_Data[3332135]["RewardItem"][2]["Id"] = 3314255 -- RareYellowRuneFragment[3314255][属性:8][叠加:10000][金币:0], 【表格】稀有黄色神纹碎片（赠）
	tBattlePassTaskTest_Data[3332135]["RewardItem"][2]["Attr"] = "0 1 3" -- RareYellowRuneFragment（赠）*1
	tBattlePassTaskTest_Data[3332135]["RewardItem"][3] = {}
	tBattlePassTaskTest_Data[3332135]["RewardItem"][3]["Id"] = 3315503 -- NinjaCredoToken[3315503][属性:11][叠加:10000][金币:0], 【表格】1个忍者猴外套碎片
	tBattlePassTaskTest_Data[3332135]["RewardItem"][3]["Attr"] = "0 1" -- NinjaCredoToken*1
	tBattlePassTaskTest_Data[3332135]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3332135]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3332135]["RewardEffect"]["Effect"] = "angelwing"


	tBattlePassTaskTest_Data[3332136] = {}
	-- ===85个千年血玉碎片+稀有黄色神纹碎片（赠）+2个忍者猴外套碎片
	-- ===索引: tBattlePassTaskTest_Data[3332136]
	-- ===删除: 3332136,1
	-- ===
	-- ===
	tBattlePassTaskTest_Data[3332136]["LogId"] = 12001359
	tBattlePassTaskTest_Data[3332136]["DeleteItem"] = {}
	tBattlePassTaskTest_Data[3332136]["DeleteItem"][1] = {}
	tBattlePassTaskTest_Data[3332136]["DeleteItem"][1]["Id"] = 3332136 -- 【库】 3332136 【库里没有该物品】[属性:]
	tBattlePassTaskTest_Data[3332136]["RewardItem"] = {}
	tBattlePassTaskTest_Data[3332136]["RewardItem"][1] = {}
	tBattlePassTaskTest_Data[3332136]["RewardItem"][1]["Id"] = 3008226 -- BloodyJadeFragment[3008226][属性:9][叠加:10000][金币:0], 【表格】85个千年血玉碎片
	tBattlePassTaskTest_Data[3332136]["RewardItem"][1]["Attr"] = "0 85" -- BloodyJadeFragment*85（[错误]物品数量超10个）
	tBattlePassTaskTest_Data[3332136]["RewardItem"][2] = {}
	tBattlePassTaskTest_Data[3332136]["RewardItem"][2]["Id"] = 3314255 -- RareYellowRuneFragment[3314255][属性:8][叠加:10000][金币:0], 【表格】稀有黄色神纹碎片（赠）
	tBattlePassTaskTest_Data[3332136]["RewardItem"][2]["Attr"] = "0 1 3" -- RareYellowRuneFragment（赠）*1
	tBattlePassTaskTest_Data[3332136]["RewardItem"][3] = {}
	tBattlePassTaskTest_Data[3332136]["RewardItem"][3]["Id"] = 3315503 -- NinjaCredoToken[3315503][属性:11][叠加:10000][金币:0], 【表格】2个忍者猴外套碎片
	tBattlePassTaskTest_Data[3332136]["RewardItem"][3]["Attr"] = "0 2" -- NinjaCredoToken*2
	tBattlePassTaskTest_Data[3332136]["RewardEffect"] = {}
	tBattlePassTaskTest_Data[3332136]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_Data[3332136]["RewardEffect"]["Effect"] = "angelwing"





	local tBattlePassTaskTest_ItemChip = {}
	-- ===纪念勋章碎片
	-- ===索引: tBattlePassTaskTest_ItemChip[3327170]
	-- ===删除:3327170,100
	tBattlePassTaskTest_ItemChip[3327170] = {}
	tBattlePassTaskTest_ItemChip[3327170]["LogId"] = 12001359
	tBattlePassTaskTest_ItemChip[3327170]["DeleteItem"] = {}
	tBattlePassTaskTest_ItemChip[3327170]["DeleteItem"][1] = {}
	tBattlePassTaskTest_ItemChip[3327170]["DeleteItem"][1]["Id"] = 3327170 -- 【库】MemorialMedalFragment[属性:9]
	tBattlePassTaskTest_ItemChip[3327170]["DeleteItem"][1]["ItemNum"] = 100
	tBattlePassTaskTest_ItemChip[3327170]["RewardItem"] = {}
	tBattlePassTaskTest_ItemChip[3327170]["RewardItem"][1] = {}
	tBattlePassTaskTest_ItemChip[3327170]["RewardItem"][1]["Id"] = 3327169 -- MemorialMedal[3327169][属性:9][叠加:10000][金币:0], 【表格】纪念勋章
	tBattlePassTaskTest_ItemChip[3327170]["RewardItem"][1]["Attr"] = "0 1" -- MemorialMedal*1
	tBattlePassTaskTest_ItemChip[3327170]["RewardEffect"] = {}
	tBattlePassTaskTest_ItemChip[3327170]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBattlePassTaskTest_ItemChip[3327170]["RewardEffect"]["Effect"] = "angelwing"

----------------------------------逻辑部分---------------------------------------------

--LUA接口:
--//战令增加玩家任务进度 参数1: 玩家ID 参数2:任务类型(值要大于100) 参数3:增加的进度值
--BattlePassAddTaskProgress

-- function User_BattlePassAddTaskProgress(nType,nValue,nUserId)
	-- if nUserId == nil then
		-- nUserId = Get_UserId()
	-- elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		-- Sys_SaveAbnormalLog("函数User_BattlePassAddTaskProgress中的nUserId只能传大于等于0的整数")
		-- return
	-- end
	
	-- if type(nType) ~= "number" or nType%1 ~= 0 then
		-- Sys_SaveAbnormalLog("函数 User_BattlePassAddTaskProgress 中 [nType]:[".. nType .."] 只能传整数")
		-- return
	-- end 
	
	-- if nType <= 100 then 
		-- Sys_SaveAbnormalLog("函数 User_BattlePassAddTaskProgress 中 [nType]:[".. nType .."] 只能传大于100的整数")
		-- return
	-- end
	
	-- if type(nValue) ~= "number" or  nValue <= 0 or nValue%1 ~= 0 then
		-- Sys_SaveAbnormalLog("函数 User_BattlePassAddTaskProgress 中 [nValue]:[".. nValue .."] 必须为整数且大于0。")
		-- return
	-- end

	-- return BattlePassAddTaskProgress(nUserId, nType, nValue)
-- end


--击杀妖匪
function BattlePassTaskTest_KillMonster(nMonsterId)
	--赛季判断
	if not Sys_ChkFullTime(tActivityTime["BattlePassSeason"]["ActivityTime"]) then
		return 
	end
	
	local nKillEvent=tBattlePassTaskTest_Data["Stc"]["KillEvent"]
	local nKillType=tBattlePassTaskTest_Data["Stc"]["KillType"]
	
	local nUserId = Get_UserId()
	if tBattlePassTaskTest_KillNum[nUserId] == nil then
		tBattlePassTaskTest_KillNum[nUserId] = 0
	end
	--完成任务
	if Task_ChkStcValue(nKillEvent, nKillType, ">=", tBattlePassTaskTest_Data["KillMonsterLimit"]) then
		--隔天重置掩码，重新开始任务
		if Task_StcInterval(nKillEvent, nKillType, 1, 4) then
			Task_SetStatistic(nKillEvent, nKillType, 0, 1) 
			Task_SetStcTimestamp(nKillEvent, nKillType, 0)
			
			--清理临时表
			tBattlePassTaskTest_KillNum[nUserId] = 0
		else
			--完成任务，但是还没隔天，跳出，不在操作掩码
			return 
		end 
	end
	
	--每打50只怪加一次积分
	if tBattlePassTaskTest_KillNum[nUserId] == tBattlePassTaskTest_Data["EachNum"] then
		--加掩码
		Task_AddStatistic(nKillEvent, nKillType, tBattlePassTaskTest_Data["EachNum"], 1)
		Task_SetStcTimestamp(nKillEvent, nKillType, 0)
		--清理临时表
		tBattlePassTaskTest_KillNum[nUserId] = 0
		--加积分
		BattlePassTaskTest_TaskAddProgress(1,tBattlePassTaskTest_Data["EachNum"])
	end
	--计数
	tBattlePassTaskTest_KillNum[nUserId] = tBattlePassTaskTest_KillNum[nUserId] +1
end 

--参加3次排位赛
function BattlePassTaskTest_CompetesRanking(nUserId,nFieldNum)
	--赛季判断
	if not Sys_ChkFullTime(tActivityTime["BattlePassSeason"]["ActivityTime"]) then
		return 
	end
	BattlePassTaskTest_TaskAddProgress(2,1,nUserId)
end

--参加1次骑马大赛
function BattlePassTaskTest_CompetesRide(nUserId)
	--赛季判断
	if not Sys_ChkFullTime(tActivityTime["BattlePassSeason"]["ActivityTime"]) then
		return 
	end
	BattlePassTaskTest_TaskAddProgress(3,1,nUserId)
end

--击杀叫天鸡
function BattlePassTaskTest_KillMonster1(nMonsterId)
	--赛季判断
	if not Sys_ChkFullTime(tActivityTime["BattlePassSeason"]["ActivityTime"]) then
		return 
	end
	
	local nKillEvent=tBattlePassTaskTest_Data["Stc"]["KillJTJEvent"]
	local nKillType=tBattlePassTaskTest_Data["Stc"]["KillJTJType"]
	
	local nUserId = Get_UserId()
	if tBattlePassTaskTest_KillNumJTJ[nUserId] == nil then
		tBattlePassTaskTest_KillNumJTJ[nUserId] = 0
	end
	--完成任务
	if Task_ChkStcValue(nKillEvent, nKillType, ">=", tBattlePassTaskTest_Data["KillJTJMonsterLimit"]) then
		--隔天重置掩码，重新开始任务
		if Task_StcInterval(nKillEvent, nKillType, 1, 4) then
			Task_SetStatistic(nKillEvent, nKillType, 0, 1) 
			Task_SetStcTimestamp(nKillEvent, nKillType, 0)
			
			--清理临时表
			tBattlePassTaskTest_KillNumJTJ[nUserId] = 0
		else
			--完成任务，但是还没隔天，跳出，不在操作掩码
			return 
		end 
	end
	
	--每打10只怪加一次积分
	if tBattlePassTaskTest_KillNumJTJ[nUserId] == tBattlePassTaskTest_Data["EachJTJNum"] then
		--加掩码
		Task_AddStatistic(nKillEvent, nKillType, tBattlePassTaskTest_Data["EachJTJNum"], 1)
		Task_SetStcTimestamp(nKillEvent, nKillType, 0)
		--清理临时表
		tBattlePassTaskTest_KillNumJTJ[nUserId] = 0
		--加积分
		BattlePassTaskTest_TaskAddProgress(4,tBattlePassTaskTest_Data["EachJTJNum"])
	end
	--计数
	tBattlePassTaskTest_KillNumJTJ[nUserId] = tBattlePassTaskTest_KillNumJTJ[nUserId] +1

end 


--累计登录25天\连续登陆14天
function BattlePassTaskTest_Login()
	-- 赛季判断
	if not Sys_ChkFullTime(tActivityTime["BattlePassSeason"]["ActivityTime"]) then
		return 
	end
	
	-- 累积登录
	local nLoginEvent=tBattlePassTaskTest_Data["Stc"]["LoginEvent"]
	local nLoginType=tBattlePassTaskTest_Data["Stc"]["LoginType"]
	
	-- 连续登录
	local nLoginEvent_1=tBattlePassTaskTest_Data["Stc"]["LoginEvent1"]
	local nLoginType_1=tBattlePassTaskTest_Data["Stc"]["LoginType1"]
	
	-- 首次登录 掩码直接加1 连续登录
	if Task_ChkStcValue(nLoginEvent_1,nLoginType_1,"==",0) then
		-- 掩码增加
		Task_AddStatistic(nLoginEvent_1,nLoginType_1,1,1)
		Task_SetStcTimestamp(nLoginEvent_1,nLoginType_1,0)
	end
	
	-- 首次登录 掩码直接加1 累积登录
	if Task_ChkStcValue(nLoginEvent,nLoginType,"==",0) then
		-- 掩码增加
		Task_AddStatistic(nLoginEvent,nLoginType,1,1)
		Task_SetStcTimestamp(nLoginEvent,nLoginType,0)
		BattlePassTaskTest_TaskAddProgress(6,1)
	end
	
	-- 隔天判断
	if Task_StcInterval(nLoginEvent_1,nLoginType_1,1,4) then 
		if Task_StcInterval(nLoginEvent_1,nLoginType_1,2,4) then
			--重置登录天数为1
			Task_SetStatistic(nLoginEvent_1,nLoginType_1,1,1)
			Task_SetStcTimestamp(nLoginEvent_1,nLoginType_1,0)
		else
			-- 掩码增加
			Task_AddStatistic(nLoginEvent_1,nLoginType_1,1,1)
			Task_SetStcTimestamp(nLoginEvent_1,nLoginType_1,0)
			
			-- 连续登陆14天
			if Task_ChkStcValue(nLoginEvent_1,nLoginType_1,"==",14) then
				-- 进度增加
				BattlePassTaskTest_TaskAddProgress(7,1)
			end
			
			-- 超14天
			if Task_ChkStcValue(nLoginEvent_1,nLoginType_1,">",14) then
				-- 重置掩码
				Task_AddStatistic(nLoginEvent_1,nLoginType_1,-14,1)
				Task_SetStcTimestamp(nLoginEvent_1,nLoginType_1,0)
			end
		end
	end
	
	-- 隔天判断
	if Task_StcInterval(nLoginEvent,nLoginType,1,4) then 
		Task_AddStatistic(nLoginEvent,nLoginType,1,1)
		Task_SetStcTimestamp(nLoginEvent,nLoginType,0)
		
		-- 登陆超25天
		if Task_ChkStcValue(nLoginEvent,nLoginType,">",25) then
			-- 重置掩码
			Task_AddStatistic(nLoginEvent,nLoginType,-25,1)
			Task_SetStcTimestamp(nLoginEvent,nLoginType,0)
		end
		
		BattlePassTaskTest_TaskAddProgress(6,1)
	end
end



	
--击杀boss
function BattlePassTaskTest_KillBoss1(nServerId,nUserId,nRank,nDmg,nMonsterId)
	--赛季判断
	if not Sys_ChkFullTime(tActivityTime["BattlePassSeason"]["ActivityTime"]) then
		return 
	end
	
	BattlePassTaskTest_TaskAddProgress(8,1,nUserId)
	
	--额外积分礼包掉落
	-- BattlePassTaskTest_BossDropPack(nUserId)
end 


--击杀boss
function BattlePassTaskTest_KillBoss2(nServerId,nUserId,nRank,nDmg,nMonsterId)
	--赛季判断
	if not Sys_ChkFullTime(tActivityTime["BattlePassSeason"]["ActivityTime"]) then
		return 
	end
	
	BattlePassTaskTest_TaskAddProgress(8,1,nUserId)
	-- BattlePassTaskTest_TaskAddProgress(10,1,nUserId)
	
	--额外积分礼包掉落
	-- BattlePassTaskTest_BossDropPack(nUserId)
end 

--击杀boss
function BattlePassTaskTest_KillBoss3(nServerId,nUserId,nRank,nDmg,nMonsterId)
	--赛季判断
	if not Sys_ChkFullTime(tActivityTime["BattlePassSeason"]["ActivityTime"]) then
		return 
	end
	
	BattlePassTaskTest_TaskAddProgress(8,1,nUserId)
	-- BattlePassTaskTest_TaskAddProgress(9,1,nUserId)
	-- BattlePassTaskTest_TaskAddProgress(10,1,nUserId)
	
	--额外积分礼包掉落
	-- BattlePassTaskTest_BossDropPack(nUserId)
end 




--通用函数
function BattlePassTaskTest_TaskAddProgress(nIndex,nAddValue,nUserId)
	--赛季判断
	if not Sys_ChkFullTime(tActivityTime["BattlePassSeason"]["ActivityTime"]) then
		return 
	end
	
	local nUserId=nUserId or Get_UserId()
	
	--屏蔽收集10个九幽魔晶任务
	if nIndex==5 then
		return
	end
	
	local nType=tBattlePassTaskTest_Data["TaskType"][nIndex]
	User_BattlePassAddTaskProgress(nType,nAddValue,nUserId)
end




--BP积分礼包使用
function BattlePassTaskTest_BPPack(nItemId)
	local nAddScore=tBattlePassTaskTest_Data[nItemId]
	local nUserId = Get_UserId()
	if Item_ChkMulItem(nItemId,nItemId,1) and Item_DelItem(nItemId) then 
		--积分增加
		User_AddUserSeasonScore(nAddScore)
		local sScoreLog=string.format(tBattlePassTaskTest_Data["Log"]["AddScore"],nItemId,nAddScore)
		Sys_SaveActionFestivalLog(sScoreLog)
		return
	end
end 

--灵珠随机包使用
function BattlePassTaskTest_RandomPack(nItemId)
	--背包空间判断
	local nSpace = RewardTemplate_GetRandomSpace(tBattlePassTaskTest_Data[nItemId],1)
	if not User_CheckLeftSpace(nSpace) then
		return 
	end
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		RewardTemplate_NewRandom(tBattlePassTaskTest_Data[nItemId],1)
	end 
end 

--普通礼包使用
function BattlePassTaskTest_NormalPack(nItemId)
	--背包空间判断
	local nGetRewardSpace = RewardTemplate_GetRewardSpace(tBattlePassTaskTest_Data[nItemId])
	local nDelRewardSpace = RewardTemplate_GetDelSpace(tBattlePassTaskTest_Data[nItemId])
	local nSpace = nGetRewardSpace - nDelRewardSpace
	if not User_CheckLeftSpace(nSpace) then
		return 
	end 
	if RewardTemplate_UseItemAndMsg(tBattlePassTaskTest_Data[nItemId]) then
		return
	end
end 



--使用翅膀道具
function BattlePassTaskTest_UseWingItem(nItemId)

	local nTitleType = tBattlePassTaskTest_Data[nItemId]["RewardWing"]["TitleType"]
	local nTitleId = tBattlePassTaskTest_Data[nItemId]["RewardWing"]["TitleId"]
	local nUserId = Get_UserId()

	-- 判断是否有该翅膀
	if User_CheckTitle(nTitleType,nTitleId,nUserId) then
		-- User_TalkChannel2005(tDragonMaster_Text["Wing"],nUserId)
		return
	end
	
	if RewardTemplate_UseItemAndMsg(tBattlePassTaskTest_Data[nItemId]) then
		return 
	end 
end 


--碎片使用
function BattlePassTaskTest_UseFragment(nItemId)
--物品判断
	if not Item_ChkItem(nItemId) then
		return false
	end 
	
--背包空间判断
	local nGetRewardSpace = RewardTemplate_GetRewardSpace(tBattlePassTaskTest_Data[nItemId])
	local nDelRewardSpace = RewardTemplate_GetDelSpace(tBattlePassTaskTest_Data[nItemId])
	local nNeedSpace = nGetRewardSpace - nDelRewardSpace
	if not User_CheckLeftSpace(nNeedSpace) then
		return User_TalkChannel2005(tBattlePassTaskTest_Text["Systemtip"]["BagFull"])
	end
	
	if RewardTemplate_UseItem(tBattlePassTaskTest_Data[nItemId]) then
		return 
	end 
end 


--击杀玩家
function BattlePassTaskTest_KillPlayer(nUserId, nBeKilled)
	--赛季判断
	if not Sys_ChkFullTime(tActivityTime["BattlePassSeason"]["ActivityTime"]) then
		return 
	end
	
	--击杀者增加进度
	BattlePassTaskTest_TaskAddProgress(14,1,nUserId)
end

--可选包使用
function BattlePassTaskTest_SelectPack(nItemId,nIndex)
	local nUserId = Get_UserId()
	local bJudge = TermsOfUse_Main(nItemId,tBattlePassTaskTest_Data[nItemId][nIndex])
	if not bJudge then
		return
	end
	RewardTemplate_UseItemAndMsg(tBattlePassTaskTest_Data[nItemId][nIndex],nUserId,bJudge)
end 

----------------------------BP二期----------------------------------

	
function BattlePassTaskTest_LoginJudge(nDay,nType)

	local nLoginEvent=tBattlePassTaskTest_Data["Stc"]["LoginNew"][nDay]["Event"]
	local nLoginType=tBattlePassTaskTest_Data["Stc"]["LoginNew"][nDay]["Type"]
	

	
	-- 首次登录 掩码直接加1 累积登录
	if Task_ChkStcValue(nLoginEvent,nLoginType,"==",0) then
		-- 掩码增加
		Task_AddStatistic(nLoginEvent,nLoginType,1,1)
		Task_SetStcTimestamp(nLoginEvent,nLoginType,0)
		BattlePassTaskTest_TaskAddProgress(nType,1)
	end
	
	-- 隔天判断
	if Task_StcInterval(nLoginEvent,nLoginType,1,4) then 
		Task_AddStatistic(nLoginEvent,nLoginType,1,1)
		Task_SetStcTimestamp(nLoginEvent,nLoginType,0)
		
		-- 登陆超3天
		if Task_ChkStcValue(nLoginEvent,nLoginType,">",nDay) then
			-- 重置掩码
			Task_AddStatistic(nLoginEvent,nLoginType,-nDay,1)
			Task_SetStcTimestamp(nLoginEvent,nLoginType,0)
		end
		
		BattlePassTaskTest_TaskAddProgress(nType,1)
	end
end
	
	
	
	

--累计登录3天\累计登录5天
function BattlePassTaskTest_LoginNew()
	-- 赛季判断
	if not Sys_ChkFullTime(tActivityTime["BattlePassSeason"]["ActivityTime"]) then
		return 
	end

	BattlePassTaskTest_LoginJudge(3,21)
	BattlePassTaskTest_LoginJudge(5,22)
	
	--决战冥城 stc(144,59)
	--战场杀敌 stc(144,94)
	
	local nFirstLoginEvent=tBattlePassTaskTest_Data["Stc"]["FirstLogin"]["Event"]
	local nFirstLoginType=tBattlePassTaskTest_Data["Stc"]["FirstLogin"]["Type"]
	
	local nJZMCEvent=tBattlePassTaskTest_Data["Stc"]["JZMC"]["Event"]
	local nJZMCType=tBattlePassTaskTest_Data["Stc"]["JZMC"]["Type"]
	
	local nDCSDEvent=tBattlePassTaskTest_Data["Stc"]["DCSD"]["Event"]
	local nDCSDType=tBattlePassTaskTest_Data["Stc"]["DCSD"]["Type"]
	
	if Task_ChkStcValue(nFirstLoginEvent,nFirstLoginType,"==",0) then
	
		--加掩码
		Task_SetStatistic(nFirstLoginEvent,nFirstLoginType,1,1)
		Task_SetStcTimestamp(nFirstLoginEvent,nFirstLoginType,0,0)
		
		--本周已完成决战冥城
		if not Task_ChkStcValue(nJZMCEvent,nJZMCType,"==",0) then
			BattlePassTaskTest_TaskAddProgress(23,1)
		end 
		
		--本周已完成战场杀敌
		if not Task_ChkStcValue(nDCSDEvent,nDCSDType,"==",0) then
			BattlePassTaskTest_TaskAddProgress(24,1)
		end 
	end
end


---------------------------------2020.01新战令活动-----------------------------------

function BattlePassTaskTest_DropPack(nMonsterId)
	if not Sys_ChkFullTime(tActivityTime["BattlePassSeason"]["ActivityTime"]) then
		return 
	end 	

	local nUserId = Get_UserId()
	
	--背包空间判断
	local nSpace = RewardTemplate_GetRandomSpace(tBattlePassTaskTest_Data["MonsterDropPack"],1,nUserId)
	
	if nSpace > 0 and (not User_CheckLeftSpace(nSpace,nUserId)) then
		return
	end
	
	--给奖励
	if RewardTemplate_NewRandom(tBattlePassTaskTest_Data["MonsterDropPack"],1,nUserId) then 
		return
	end 
end

function BattlePassTaskTest_BossDropPack(nNowUserId)
	if not Sys_ChkFullTime(tActivityTime["BattlePassSeason"]["ActivityTime"]) then
		return 
	end 	

	local nUserId = nNowUserId or Get_UserId()
	
	--背包空间判断
	local nSpace = RewardTemplate_GetRandomSpace(tBattlePassTaskTest_Data["MonsterDropPack"],2,nUserId)
	
	if nSpace > 0 and (not User_CheckLeftSpace(nSpace,nUserId)) then
		return
	end
	
	--给奖励
	if RewardTemplate_NewRandom(tBattlePassTaskTest_Data["MonsterDropPack"],2,nUserId) then 
		return
	end 
end


--积分补偿
function BattlePassTaskTest_ScoreAdd(nIndex1,nIndex2,nNowUserId)
	-- 赛季判断
	if not Sys_ChkFullTime(tActivityTime["BattlePassSeason"]["ActivityTime"]) then
		return 
	end
	local nUserId = nNowUserId or Get_UserId()
	local nAddScore=tBattlePassTaskTest_Data["BackReward"][nIndex1][nIndex2]
	User_AddUserSeasonScore(nAddScore,nUserId)
	local sScoreLog=string.format(tBattlePassTaskTest_Data["Log"]["AddScore"],nIndex1,nAddScore)
	Sys_SaveActionFestivalLog(sScoreLog,nUserId)
end


--洗赠道具使用
function BattlePassTaskTest_WashMono(nItem1,nItem2)
	local nUserId = Get_UserId()
	if not Item_ChkMulItem(nItem2, nItem2, 1) then
		return 
	end 
	if not Item_ChkMulItem(nItem1,nItem1,1,2,0,nUserId,0) then
		return User_TalkChannel2005(tBattlePassTaskTest_Text["Systemtip"]["NoCoat"])
	end 
	
	local bJudge = TermsOfUse_Main(nItem2,tBattlePassTaskTest_Data[nItem2])
	
	if not bJudge then
		return
	end
	
	RewardTemplate_UseItemAndMsg(tBattlePassTaskTest_Data[nItem2],nUserId,bJudge)
	User_TalkChannel2005(tBattlePassTaskTest_Text["Systemtip"]["TurnSucceed"])
end 

--完成忍者任务加战令积分
function BattlePassTaskTest_NinjaTask(nNowUserId)

	if not Sys_ChkFullTime(tActivityTime["BattlePassSeason"]["ActivityTime"]) then
		return 
	end 	
	local nNinjaTaskUserId = nNowUserId or Get_UserId()
	local nNinjaTaskEvent = tBattlePassTaskTest_Data["Stc"]["NinjaTaskEvent"]
	local nNinjaTaskType = tBattlePassTaskTest_Data["Stc"]["NinjaTaskType"]
	
	local nEachTakScore=tBattlePassTaskTest_Data["NinjaTaskScore"]["Each"]
	local nWeeklyTotalScore=tBattlePassTaskTest_Data["NinjaTaskScore"]["WeeklyTotal"]
	local nNinjaTaskIndex=tBattlePassTaskTest_Data["NinjaTaskScore"]["Index"]
	
	--隔周清掩码
	if Task_StcInterval(nNinjaTaskEvent,nNinjaTaskType,1,5,nNinjaTaskUserId) then
		Task_SetStatistic(nNinjaTaskEvent,nNinjaTaskType,0,1,nNinjaTaskUserId)
		Task_SetStcTimestamp(nNinjaTaskEvent,nNinjaTaskType,0,nNinjaTaskUserId)
	end
	
	if Get_UserStatisticValue(nNinjaTaskEvent,nNinjaTaskType,nNinjaTaskUserId) >= nWeeklyTotalScore then
		return 
	end 
	
	--加掩码
	Task_AddStatistic(nNinjaTaskEvent,nNinjaTaskType,nEachTakScore,1,nNinjaTaskUserId)
	Task_SetStcTimestamp(nNinjaTaskEvent,nNinjaTaskType,0,nNinjaTaskUserId)
	
	local sScoreLog =string.format(tBattlePassTaskTest_Data["Log"]["AddScore"],nNinjaTaskIndex,nEachTakScore)
	--积分增加
	User_AddUserSeasonScore(nEachTakScore,nNinjaTaskUserId)
	Sys_SaveActionFestivalLog(sScoreLog,nNinjaTaskUserId)
	User_TalkChannel2005(tBattlePassTaskTest_Text["Systemtip"]["NinjaTask"],nNinjaTaskUserId)
end 

-- 打开兑换商店
function BattlePassTaskTest_OpenExchangeShop()
	User_OpenExchangeShop(25760)
end


-- function BattlePassTaskTest_BroadcastKillBoss(nUserName,nMainType,nSubType,nData1,nData2,sParam)
	-- if nMainType ~= 7 then
		-- return
	-- end
	
	-- if nSubType == 1 then
		-- Sys_DragonSoulUpLevToHomeServer(string.format(tFruitMachinePrize_Text["KillBoss"][1],nUserName,nData1),nil,1)
		-- return
	-- end
	
	-- if nSubType == 2 then
		-- Sys_DragonSoulUpLevToHomeServer(string.format(tFruitMachinePrize_Text["KillBoss"][2],nUserName,nData1),nil,1)
		-- return
	-- end
	
	-- if nSubType == 3 then
		-- local sItemName = Get_ItemtypeName(nData2)
		-- Sys_DragonSoulUpLevToHomeServer(string.format(tFruitMachinePrize_Text["KillBoss"][3],nUserName,nData1,sItemName),nil,1)
		-- return
	-- end
-- end

-- /callluafunc </F>Test_ProcessPrizeBroadcast</S>xxx</N>6</N>3</N>1</N>2</S>3329686:150
-- 测试接口 中奖频道
-- function BattlePassTaskTest_BroadcastPrize(nUserName,nMainType,nSubType,nData1,nData2,sParam)
	-- if nMainType ~= 6 then
		-- return
	-- end
	
	-- -- 赢的钱超过3倍才出广播
	-- if nData2/nData1 < 3 then
		-- return
	-- end
	
	-- if nSubType == 1 then
		-- Sys_DragonSoulUpLevToHomeServer(string.format(tFruitMachinePrize_Text["Win"][1],nUserName,nData1,nData2),nil,1)
		-- return
	-- end
	
	-- if nSubType == 2 then
		-- Sys_DragonSoulUpLevToHomeServer(string.format(tFruitMachinePrize_Text["Win"][2],nUserName,nData1,nData2),nil,1)
		-- return
	-- end
	
	-- if nSubType == 3 then
		-- local tReward_Info = Sys_Split(sParam,",")
		-- local tItem_Info = {}
		-- local sItemName = "%s%s"
		-- local sItemName_1 = "%s%s%s%s"
		-- local sItemName_3 = ""
		-- local tItem_Name = {}
		-- local tItem_Num = {}
		
		-- -- if #tReward_Info == 0 then
			-- -- return
		-- -- end
		
		-- for i = 1, #tReward_Info do
			-- tItem_Info[i] = Sys_Split(tReward_Info[i],":")
		-- end
		
		
		-- for j = 1, #tItem_Info do
			-- -- sItemName_1 = string.format(Get_ItemtypeName(tonumber(tItem_Info[j][1])),"*",tItem_Info[j][2],"、")
			-- tItem_Name[j] = Get_ItemtypeName(tonumber(tItem_Info[j][1]))
			-- tItem_Num[j] = tItem_Info[j][2]
		-- end
		
		-- -- Sys_DragonSoulUpLevToHomeServer("#tItem_Name = "..#tItem_Name)
		
		-- for k = 1, #tItem_Name do
			-- local sItemName_2 = string.format(tGlobalFormat[4],tItem_Name[k],"*",tItem_Num[k],"、")
			-- sItemName_3 = string.format(tGlobalFormat[2],sItemName_2,sItemName_3)
		-- end
		
		-- -- sItemName = sItemName_3
		
		-- Sys_DragonSoulUpLevToHomeServer(string.format(tFruitMachinePrize_Text["Win"][3],nUserName,sItemName_3),nil,1)
		-- -- Sys_DragonSoulUpLevToHomeServer(tostring(string.format(tGlobalFormat[3],nUserName,nData1,tostring(sItemName_3))))
		-- return
	-- end
-- end



----------------------------------8月精炼神纹专题战令优化版 --------------------------

--完成副本任务
function BattlePassTaskTest_CompleteInstance(nIndex,nUserId)
	--赛季判断
	if not Sys_ChkFullTime(tActivityTime["BattlePassSeason"]["ActivityTime"]) then
		return 
	end
	
	local nBattlePassTaskTest_UserId = Get_UserId() or nUserId
	
	local nBattlePassTaskTest_Event = tBattlePassTaskTest_Data["Stc"]["Instance"][nIndex]["Event"]
	local nBattlePassTaskTest_Type = tBattlePassTaskTest_Data["Stc"]["Instance"][nIndex]["Type"]
	
	--隔天清掩码
	Task_StcReset(nBattlePassTaskTest_Event,nBattlePassTaskTest_Type,nBattlePassTaskTest_UserId)
	
	if Get_UserStatisticValue(nBattlePassTaskTest_Event,nBattlePassTaskTest_Type,nBattlePassTaskTest_UserId) == 0 then 
		--加掩码
		Task_AddStatistic(nBattlePassTaskTest_Event,nBattlePassTaskTest_Type,1,1,nBattlePassTaskTest_UserId)
		Task_SetStcTimestamp(nBattlePassTaskTest_Event,nBattlePassTaskTest_Type,0,nBattlePassTaskTest_UserId)
	
		--击杀者增加进度
		BattlePassTaskTest_TaskAddProgress(nIndex,1,nBattlePassTaskTest_UserId)
	end 
end


---------------------------------物品部分---------------------------------------------
--BP积分礼包使用
tItem[3320904] = tItem[3320904] or {}
tItem[3320904]["Function"] = function(nItemId,sItemName)
	if not Item_ChkItem(nItemId) then
		return
	end
	
	local nNum = Get_CountItemType(nItemId,0)
	
	if Sys_ChkFullTime(tActivityTime["BattlePassSeason"]["ActivityTime"]) then
		if Item_ChkMulItem(nItemId, nItemId, 1) and Item_DelAllItemByType(nItemId) then
			local nUserId = Get_UserId()
			local nAddScore = tBattlePassTaskTest_Data[nItemId]*nNum
			User_AddUserSeasonScore(nAddScore,nUserId)
			local sScoreLog=string.format(tBattlePassTaskTest_Data["Log"]["AddScore"],nItemId,nAddScore)
			Sys_SaveActionFestivalLog(sScoreLog,nUserId)
		end 
	else
		if Item_ChkMulItem(nItemId, nItemId, 1) and Item_DelAllItemByType(nItemId) then
			local sLog =string.format(tBattlePassTaskTest_Data["Log"]["Overtime"],nItemId,nNum)
			Sys_SaveActionFestivalLog(sLog)
		end 
	end
end
tItem[3320905] = tItem[3320904]
tItem[3320993] = tItem[3320904]

-- 新增100积分礼包
tItem[3327255] = tItem[3320904]
-- 新增5000积分礼包
tItem[3327256] = tItem[3320904]


--普通礼包使用
tItem[3320988] = tItem[3320988] or {}
tItem[3320988]["Function"] = function(nItemId,sItemName)
	BattlePassTaskTest_NormalPack(nItemId)
end
tItem[3320989] = tItem[3320988]
tItem[3320990] = tItem[3320988]
tItem[3320991] = tItem[3320988]
tItem[3320992] = tItem[3320988]
-- tItem[3320994] = tItem[3320988]
tItem[3320995] = tItem[3320988]

--灵珠随机包使用
tItem[3320996] = tItem[3320996] or {}
tItem[3320996]["Function"] = function(nItemId,sItemName)
	BattlePassTaskTest_RandomPack(nItemId)
end

--紫芒星辰翼
tItem[3321581] = tItem[3321581] or {}
tItem[3321581]["Function"] = function(nItemId,sItemName)
	BattlePassTaskTest_UseWingItem(nItemId)
end

--碎片使用
tItem[3321582] = tItem[3321582] or {}
tItem[3321582]["Function"] = function(nItemId,sItemName)
	BattlePassTaskTest_UseFragment(nItemId)
end

tItem[3321583] = tItem[3321582]
tItem[3321584] = tItem[3321582]
tItem[3321585] = tItem[3321582]
tItem[3321586] = tItem[3321582]
tItem[3321587] = tItem[3321582]
tItem[3321588] = tItem[3321582]

--3星外套包、碎片包使用
tItem[3321589] = tItem[3321589] or {}
tItem[3321589]["Function"] = function(nItemId,sItemName)
	local nUserId = Get_UserId()
	local bJudge = TermsOfUse_Main(nItemId,tBattlePassTaskTest_Data[nItemId])
	
	if not bJudge then
		return
	end
	
	RewardTemplate_UseItemAndMsg(tBattlePassTaskTest_Data[nItemId],nUserId,bJudge)
end
tItem[3321590] = tItem[3321589] 
tItem[3321591] = tItem[3321589] 
tItem[3321592] = tItem[3321589] 
tItem[3321593] = tItem[3321589] 

--英文新增礼包
tItem[3321673] = tItem[3321589] 
tItem[3321674] = tItem[3321589] 
tItem[3321675] = tItem[3321589] 
tItem[3321676] = tItem[3321589] 
tItem[3321677] = tItem[3321589] 
tItem[3321678] = tItem[3321589] 
tItem[3321679] = tItem[3321589] 
tItem[3321680] = tItem[3321589] 
tItem[3321681] = tItem[3321589] 
tItem[3321682] = tItem[3321589] 
tItem[3321683] = tItem[3321589] 
tItem[3321684] = tItem[3321589] 
tItem[3321685] = tItem[3321589] 
tItem[3321687] = tItem[3321589] 
tItem[3321689] = tItem[3321589] 
tItem[3321690] = tItem[3321589] 

--二期新增礼包
tItem[3322665] = tItem[3321589] 
tItem[3322666] = tItem[3321589] 
tItem[3322667] = tItem[3321589] 

tItem[3322746] = tItem[3321589] 
tItem[3322747] = tItem[3321589] 
tItem[3322748] = tItem[3321589] 
tItem[3322749] = tItem[3321589] 

---可选包使用

--仙狐坐骑可选包
tItemFace[3322663] = 1953
tItem[3322663] = tItem[3322663] or {}
tItem[3322663]["DialogueText"] = tBattlePassTaskTest_Text[3322663]
tItem[3322663]["Text1-1"] = {111}
tItem[3322663]["tOption1-1"] = {111,112,113,114}
tItem[3322663]["OptionFunc111"] = "BattlePassTaskTest_SelectPack</N>3322663</N>1"
tItem[3322663]["OptionFunc112"] = "BattlePassTaskTest_SelectPack</N>3322663</N>2"
tItem[3322663]["OptionFunc113"] = "BattlePassTaskTest_SelectPack</N>3322663</N>3"
tItem[3322663]["OptionFunc114"] = "BattlePassTaskTest_SelectPack</N>3322663</N>4"

--狐妖坐骑可选包
tItemFace[3322664] = 2391
tItem[3322664] = tItem[3322664] or {}
tItem[3322664]["DialogueText"] = tBattlePassTaskTest_Text[3322664]
tItem[3322664]["Text1-1"] = {111}
tItem[3322664]["tOption1-1"] = {111,112,113,114}
tItem[3322664]["OptionFunc111"] = "BattlePassTaskTest_SelectPack</N>3322664</N>1"
tItem[3322664]["OptionFunc112"] = "BattlePassTaskTest_SelectPack</N>3322664</N>2"
tItem[3322664]["OptionFunc113"] = "BattlePassTaskTest_SelectPack</N>3322664</N>3"
tItem[3322664]["OptionFunc114"] = "BattlePassTaskTest_SelectPack</N>3322664</N>4"


---- 豪气积分礼包
tItem[3322750] = tItem[3322750] or {}
tItem[3322750]["Function"] = function(nItemId,sItemName)
	if not Item_ChkItem(nItemId) then
		return
	end
	
	local nNum = Get_CountItemType(nItemId,0)
	
	if Sys_ChkFullTime(tActivityTime["BattlePassSeason"]["ActivityTime"]) then
		if Item_ChkMulItem(nItemId, nItemId, 1) and Item_DelAllItemByType(nItemId) then
			local nUserId = Get_UserId()
			User_AddUserSeasonScore(nNum,nUserId)
			local sScoreLog=string.format(tBattlePassTaskTest_Data["Log"]["AddScore"],nItemId,nNum)
			Sys_SaveActionFestivalLog(sScoreLog,nUserId)
		end 
	else
		if Item_ChkMulItem(nItemId, nItemId, 1) and Item_DelAllItemByType(nItemId) then
			local sLog =string.format(tBattlePassTaskTest_Data["Log"]["Overtime"],nItemId,nNum)
			Sys_SaveActionFestivalLog(sLog)
		end 
	end
end


--------------------------------bp新增礼包
tItem[3326661] = tItem[3326661] or {}
tItem[3326661]["Function"] = function(nItemId,sItemName)
	local nUserId = Get_UserId()
	local bJudge = TermsOfUse_Main(nItemId,tBattlePassTaskTest_Data[nItemId])
	
	if not bJudge then
		return
	end
	
	RewardTemplate_UseItemAndMsg(tBattlePassTaskTest_Data[nItemId],nUserId,bJudge)
end

tItem[3326662] = tItem[3326661]
tItem[3326663] = tItem[3326661]
tItem[3326664] = tItem[3326661]
tItem[3326806] = tItem[3326661]
tItem[3326807] = tItem[3326661]


---------------------------------2020.01新战令活动-----------------------------------
tItem[3327393] = tItem[3326661]

tItem[3327403] = tItem[3326661]
tItem[3327404] = tItem[3326661]
tItem[3327405] = tItem[3326661]
tItem[3327406] = tItem[3326661]


tItem[3327411] = tItem[3326661]
tItem[3327412] = tItem[3326661]
tItem[3327413] = tItem[3326661]
tItem[3327414] = tItem[3326661]
tItem[3327415] = tItem[3326661]
tItem[3327416] = tItem[3326661]
tItem[3327417] = tItem[3326661]
tItem[3327418] = tItem[3326661]
tItem[3327419] = tItem[3326661]
tItem[3327420] = tItem[3326661]
tItem[3327421] = tItem[3326661]
tItem[3327422] = tItem[3326661]
tItem[3327423] = tItem[3326661]
tItem[3327424] = tItem[3326661]

tItem[3327436] = tItem[3326661] 
tItem[3327437] = tItem[3326661] 
tItem[3327438] = tItem[3326661] 
tItem[3327439] = tItem[3326661] 
tItem[3327440] = tItem[3326661] 
tItem[3327441] = tItem[3326661] 
tItem[3327442] = tItem[3326661] 
tItem[3327443] = tItem[3326661] 
tItem[3327444] = tItem[3326661] 

-- 3314199,'100万爵位勋章'
tItem[3314199] = tItem[3314199] or {}
tItem[3314199]["Function"] = function(nItemId,sItemName)
	if not User_JudgeLevelAndMetempsychosis(70,0) then
		User_TalkChannel2005(tBattlePassTaskTest_Text["DonateLevelLimit"])
		return
	end
	RewardTemplate_UseItemAndMsg(tBattlePassTaskTest_Data[nItemId])
end


tItem[3327381] = tItem[3327381] or {}
tItem[3327381]["Function"] = function(nItemId,sItemName)
	if not Item_ChkItem(nItemId) then
		return
	end 
	-- 背包空间判断
	if not RewardTemplate_ChkRandomSpace(tBattlePassTaskTest_Data[nItemId],1) then
		return
	end
	RewardTemplate_RandomReward(tBattlePassTaskTest_Data[nItemId],1)
end
tItem[3327402] = tItem[3327381]
tItem[3327409] = tItem[3327381]
tItem[3327410] = tItem[3327381]

--豪侠积分包
tItem[3327425] = tItem[3327425] or {}
tItem[3327425]["Function"] = function(nItemId,sItemName)
	if not Item_ChkItem(nItemId) then
		return
	end
	
	local nNum = Get_CountItemType(nItemId,0)
	local nUserId = Get_UserId()
	
	local nPackEvent = tBattlePassTaskTest_Data["Stc"][nItemId]["Event"]
	local nPackType = tBattlePassTaskTest_Data["Stc"][nItemId]["Type"]
	
	local nAddScore=tBattlePassTaskTest_Data["AddScore"][nItemId]
	
	if Sys_ChkFullTime(tActivityTime["BattlePassSeason"]["ActivityTime"]) then
		--隔周清掩码
		if Task_StcInterval(nPackEvent,nPackType,1,5) then
			Task_SetStatistic(nPackEvent,nPackType,0,1)
			Task_SetStcTimestamp(nPackEvent,nPackType,0)
		end
		
		if Get_UserStatisticValue(nPackEvent,nPackType)>=500 then
			return Sys_MsgBox(tBattlePassTaskTest_Text["Systemtip"]["PackLimit"])
		end 
		
		if Item_ChkMulItem(nItemId, nItemId, 1) and Item_DelItem(nItemId) then
			
			--加掩码
			Task_AddStatistic(nPackEvent,nPackType,1,1)
			Task_SetStcTimestamp(nPackEvent,nPackType,0)
			--积分增加
			User_AddUserSeasonScore(nAddScore)
			local sScoreLog=string.format(tBattlePassTaskTest_Data["Log"]["AddScore"],nItemId,nAddScore)
			Sys_SaveActionFestivalLog(sScoreLog)
		end 
	else
		if Item_ChkMulItem(nItemId, nItemId, 1) and Item_DelAllItemByType(nItemId) then
			local sLog =string.format(tBattlePassTaskTest_Data["Log"]["Overtime"],nItemId,nNum)
			Sys_SaveActionFestivalLog(sLog)
		end 
	end
end

tItem[3327426] = tItem[3327426] or {}
tItem[3327426]["Function"] = function(nItemId,sItemName)
	local nAddScore=tBattlePassTaskTest_Data["AddScore"][nItemId]
	local nUserId = Get_UserId()
	local nNum = Get_CountItemType(nItemId,0)
	
	if Sys_ChkFullTime(tActivityTime["BattlePassSeason"]["ActivityTime"]) then
		if Item_ChkMulItem(nItemId,nItemId,1) and Item_DelItem(nItemId) then 
			--积分增加
			User_AddUserSeasonScore(nAddScore)
			local sScoreLog=string.format(tBattlePassTaskTest_Data["Log"]["AddScore"],nItemId,nAddScore)
			Sys_SaveActionFestivalLog(sScoreLog)
			return
		end
	else
		if Item_ChkMulItem(nItemId, nItemId, 1) and Item_DelAllItemByType(nItemId) then
			local sLog =string.format(tBattlePassTaskTest_Data["Log"]["Overtime"],nItemId,nNum)
			Sys_SaveActionFestivalLog(sLog)
		end 
	end 
end 

tItem[3327501] = tItem[3327426]
tItem[3327502] = tItem[3327426]
tItem[3327503] = tItem[3327426]
tItem[3327504] = tItem[3327426]
tItem[3327505] = tItem[3327426]
tItem[3327506] = tItem[3327426]

--碎片使用
tItem[3327407] = tItem[3327407] or {}
tItem[3327407]["Function"] = function(nItemId,sItemName)
	BattlePassTaskTest_UseFragment(nItemId)
end
tItem[3327408] = tItem[3327407]
tItem[3321640] = tItem[3327407]

----2020.02
tItem[3327615] = tItem[3321589] 
tItem[3327616] = tItem[3321589] 
tItem[3327617] = tItem[3321589] 
tItem[3327618] = tItem[3321589] 

--时效礼包使用
tItem[3327608] = tItem[3327608] or {}
tItem[3327608]["Function"] = function(nItemId,sItemName)
	if not Sys_ChkFullTime(tActivityTime["BattlePassSeason"]["ActivityTime"]) then
		local nNum = Get_CountItemType(nItemId,0)
		if Item_ChkMulItem(nItemId, nItemId, 1) and Item_DelAllItemByType(nItemId) then
			local sLog =string.format(tBattlePassTaskTest_Data["Log"]["Overtime"],nItemId,nNum)
			Sys_SaveActionFestivalLog(sLog)
			User_TalkChannel2005(tBattlePassTaskTest_Text["Systemtip"]["OverTime"])
		end 
	else
		local nUserId = Get_UserId()
		local bJudge = TermsOfUse_Main(nItemId,tBattlePassTaskTest_Data[nItemId])
		
		if not bJudge then
			return
		end
		
		RewardTemplate_UseItemAndMsg(tBattlePassTaskTest_Data[nItemId],nUserId,bJudge)
	end
end

tItem[3327609] = tItem[3327608]
tItem[3327610] = tItem[3327608]

--随机礼包使用
tItem[3327611] = tItem[3327381]
tItem[3327612] = tItem[3327381]

--碎片使用
tItem[3327613] = tItem[3327613] or {}
tItem[3327613]["Function"] = function(nItemId,sItemName)
	if not Sys_ChkFullTime(tActivityTime["BattlePassSeason"]["ActivityTime"]) then
		local nNum = Get_CountItemType(nItemId,0)
		if Item_ChkMulItem(nItemId, nItemId, 1) and Item_DelAllItemByType(nItemId) then
			local sLog =string.format(tBattlePassTaskTest_Data["Log"]["Overtime"],nItemId,nNum)
			Sys_SaveActionFestivalLog(sLog)
			
			--返还气力
			local tStrengthBack=CommonFunc_Copy(tBattlePassTaskTest_Data["StrengthBack"]) 
			tStrengthBack["RewardStrengthValue"]["Value"]=5000*nNum
			RewardTemplate_UseItemAndMsg(tStrengthBack)

		end 
	else
		local nUserId = Get_UserId()
		local bJudge = TermsOfUse_Main(nItemId,tBattlePassTaskTest_Data[nItemId])
		local nNum = Get_CountItemType(nItemId,0)
		
		if nNum<50 then 
			return Sys_MsgBox(tBattlePassTaskTest_Text["Systemtip"]["UseFail"])
		end 
		
		if not bJudge then
			return
		end
		RewardTemplate_UseItemAndMsg(tBattlePassTaskTest_Data[nItemId],nUserId,bJudge)
		User_TalkChannel2005(tBattlePassTaskTest_Text["Systemtip"]["CombineSucceed"])
	end
end

--洗赠道具
tItemFace[3327614] = 2798
tItem[3327614] = tItem[3327614] or {}
tItem[3327614]["OptionHidden"] = 1
tItem[3327614]["DialogueText"] = tBattlePassTaskTest_Text[3327614]

tItem[3327614]["Text1-1"] = {111}
tItem[3327614]["tOption1-1"] = {111,112}
tItem[3327614]["OptionFunc111"] = "BattlePassTaskTest_WashMono</N>200661</N>3327614"


--3000积分礼包使用

tItem[3327619] = tItem[3327619] or {}
tItem[3327619]["Function"] = function(nItemId,sItemName)
	local nAddScore=tBattlePassTaskTest_Data[nItemId]
	local nUserId = Get_UserId()
	local nNum = Get_CountItemType(nItemId,0)
	
	if Sys_ChkFullTime(tActivityTime["BattlePassSeason"]["ActivityTime"]) then
		if Item_ChkMulItem(nItemId,nItemId,1) and Item_DelItem(nItemId) then 
			--积分增加
			User_AddUserSeasonScore(nAddScore)
			local sScoreLog=string.format(tBattlePassTaskTest_Data["Log"]["AddScore"],nItemId,nAddScore)
			Sys_SaveActionFestivalLog(sScoreLog)
			return
		end
	else
		if Item_ChkMulItem(nItemId, nItemId, 1) and Item_DelAllItemByType(nItemId) then
			local sLog =string.format(tBattlePassTaskTest_Data["Log"]["Overtime"],nItemId,nNum)
			Sys_SaveActionFestivalLog(sLog)
			User_TalkChannel2005(tBattlePassTaskTest_Text["Systemtip"]["OverTime"])
		end 
	end 
end 

--------------------------------------四月战令--------------------------------------
tItem[3329772] = tItem[3327608]
tItem[3329773] = tItem[3327608]
tItem[3329774] = tItem[3327608]
tItem[3329802] = tItem[3327608]

tItem[3329775] = tItem[3321589] 
tItem[3329776] = tItem[3321589] 
tItem[3329780] = tItem[3321589] 


--忍者礼包使用
tItem[3329777] = tItem[3329777] or {}
tItem[3329777]["Function"] = function(nItemId,sItemName)
	local nIndex=1
	--判断职业
	local nPro=Get_UserProfession()
	
	if nPro>=G_PRO_Ninja0 and nPro<=G_PRO_Ninja5 and User_JudgeLevelAndMetempsychosis(0,2) then
		nIndex=2
	end 
	
	--给奖
	local nUserId = Get_UserId()
	local bJudge = TermsOfUse_Main(nItemId,tBattlePassTaskTest_Data[nItemId][nIndex])
	
	if not bJudge then
		return
	end
	
	RewardTemplate_UseItemAndMsg(tBattlePassTaskTest_Data[nItemId][nIndex],nUserId,bJudge)
end 
tItem[3329778] = tItem[3329777]
tItem[3329779] = tItem[3329777]
tItem[3329781] = tItem[3329777]
tItem[3329782] = tItem[3329777]
tItem[3329783] = tItem[3329777]
tItem[3329784] = tItem[3329777]
tItem[3329785] = tItem[3329777]
tItem[3329786] = tItem[3329777]

--幻刃影杀礼盒
tItem[3329788] = tItem[3329788] or {}
tItem[3329788]["Function"] = function(nItemId,sItemName)
	if Sys_ChkFullTime(tActivityTime["BattlePassSeason"]["ActivityTime"]) then
		if not Item_ChkItem(nItemId) then
			return
		end 
		-- 背包空间判断
		if not RewardTemplate_ChkRandomSpace(tBattlePassTaskTest_Data[nItemId],1) then
			return
		end
		RewardTemplate_RandomReward(tBattlePassTaskTest_Data[nItemId],1)
	else
		local nNum = Get_CountItemType(nItemId,0)
		if Item_ChkMulItem(nItemId, nItemId, 1) and Item_DelAllItemByType(nItemId) then
			local sLog =string.format(tBattlePassTaskTest_Data["Log"]["Overtime"],nItemId,nNum)
			Sys_SaveActionFestivalLog(sLog)
			User_TalkChannel2005(tBattlePassTaskTest_Text["Systemtip"]["OverTime"])
		end 
	end 
end

--兵粮丸
tItem[3329789] = tItem[3329789] or {}
tItem[3329789]["Function"] = function(nItemId,sItemName)
	if not Item_ChkItem(nItemId) then
		return
	end
	
	local nNum = Get_CountItemType(nItemId,0)
	local nUserId = Get_UserId()
	
	local nPackEvent = tBattlePassTaskTest_Data["Stc"][nItemId]["Event"]
	local nPackType = tBattlePassTaskTest_Data["Stc"][nItemId]["Type"]
	
	local nAddScore=tBattlePassTaskTest_Data["AddScore"][nItemId]
	
	if Sys_ChkFullTime(tActivityTime["BattlePassSeason"]["ActivityTime"]) then
		--隔周清掩码
		if Task_StcInterval(nPackEvent,nPackType,1,5) then
			Task_SetStatistic(nPackEvent,nPackType,0,1)
			Task_SetStcTimestamp(nPackEvent,nPackType,0)
		end
		
		if Get_UserStatisticValue(nPackEvent,nPackType)>=500 then
			return Sys_MsgBox(tBattlePassTaskTest_Text["Systemtip"]["Limit"])
		end 
		
		if Item_ChkMulItem(nItemId, nItemId, 1) and Item_DelItem(nItemId) then
			local sScoreLog =string.format(tBattlePassTaskTest_Data["Log"]["AddScore"],nItemId,nAddScore)
			--加掩码
			Task_AddStatistic(nPackEvent,nPackType,1,1)
			Task_SetStcTimestamp(nPackEvent,nPackType,0)
			--积分增加
			User_AddUserSeasonScore(nAddScore)
			Sys_SaveActionFestivalLog(sScoreLog)
		end 
	else
		if Item_ChkMulItem(nItemId, nItemId, 1) and Item_DelAllItemByType(nItemId) then
			local sLog =string.format(tBattlePassTaskTest_Data["Log"]["Overtime"],nItemId,nNum)
			Sys_SaveActionFestivalLog(sLog)
			User_TalkChannel2005(tBattlePassTaskTest_Text["Systemtip"]["OverTime"])
		end 
	end
end

--千本之花
tItem[3329790] = tItem[3329790] or {}
tItem[3329790]["Function"] = function(nItemId,sItemName)
	local nAddScore=tBattlePassTaskTest_Data["AddScore"][nItemId]
	local nUserId = Get_UserId()
	local nNum = Get_CountItemType(nItemId,0)
	
	if Sys_ChkFullTime(tActivityTime["BattlePassSeason"]["ActivityTime"]) then
		if Item_ChkMulItem(nItemId,nItemId,1) and Item_DelItem(nItemId) then 
			local sScoreLog =string.format(tBattlePassTaskTest_Data["Log"]["AddScore"],nItemId,nAddScore)
			--积分增加
			User_AddUserSeasonScore(nAddScore)
			Sys_SaveActionFestivalLog(sScoreLog)
			return
		end
	else
		if Item_ChkMulItem(nItemId, nItemId, 1) and Item_DelAllItemByType(nItemId) then
			local sLog =string.format(tBattlePassTaskTest_Data["Log"]["Overtime"],nItemId,nNum)
			Sys_SaveActionFestivalLog(sLog)
			User_TalkChannel2005(tBattlePassTaskTest_Text["Systemtip"]["OverTime"])
		end 
	end 
end 


---------------周年庆战令----------------------------------------------
tItem[3330755] = tItem[3327608]
tItem[3330756] = tItem[3327608]
tItem[3330757] = tItem[3327608]
tItem[3330758] = tItem[3327608]
tItem[3330759] = tItem[3327608]


-- 纪念勋章碎片
tItem[3327170] = tItem[3327170] or {}
tItem[3327170]["Function"] = function(nItemId,sItemName)
	local nBattlePassTaskTest_NeedItemNum = 100
	if not Item_ChkMulItem(nItemId, nItemId, nBattlePassTaskTest_NeedItemNum) then
		User_TalkChannel2005(tBattlePassTaskTest_Text[3327170]["NotNum"])
		return
	end
	local nBattlePassTaskTest_UserId = Get_UserId()
	local bBattlePassTaskTest_Judge = TermsOfUse_Main(nItemId,tBattlePassTaskTest_ItemChip[nItemId])
	
	if not bBattlePassTaskTest_Judge then
		return
	end
	
	RewardTemplate_UseItemAndMsg(tBattlePassTaskTest_ItemChip[nItemId],nBattlePassTaskTest_UserId,bBattlePassTaskTest_Judge)
end
-- 纪念勋章
tItem[3327169] = tItem[3327169] or {}
tItem[3327169]["Function"] = function(nItemId,sItemName)
	-- User_OpenExchangeShop(25760)
	NpcPosition_PathFind(25760)
end

----------------------------------8月精炼神纹专题战令优化版 --------------------------

tItem[3332130] = tItem[3326661]
tItem[3332131] = tItem[3326661]
tItem[3332132] = tItem[3326661]
tItem[3332133] = tItem[3326661]
tItem[3332134] = tItem[3326661]
tItem[3332135] = tItem[3326661]
tItem[3332136] = tItem[3326661]

---------------------------------怪物部分---------------------------------------------
	-- -- 击杀妖匪
	-- -- local tBattlePassTaskTest_KillMonster = {}
	-- -- tBattlePassTaskTest_KillMonster[1] = {}
	-- -- tBattlePassTaskTest_KillMonster[1]["ActivityTime"] = tActivityTime["BattlePassSeason"]["ActivityTime"]
	-- -- tBattlePassTaskTest_KillMonster[1]["Function"] = BattlePassTaskTest_KillMonster
	-- -- tBattlePassTaskTest_KillMonster[1]["Area"] = {}
	-- -- table.insert(tMonsterDrop_AreaLoad,tBattlePassTaskTest_KillMonster[1])
	
	-- --击杀100只叫天鸡
	-- -- tBattlePassTaskTest_KillMonster[2]={}
	-- -- tBattlePassTaskTest_KillMonster[2]["ActivityTime"] = tActivityTime["BattlePassSeason"]["ActivityTime"]
	-- -- tBattlePassTaskTest_KillMonster[2]["Function"]= BattlePassTaskTest_KillMonster1
	-- -- tBattlePassTaskTest_KillMonster[2]["MonsterId"] = {1}
	-- -- table.insert(tMonsterDrop_AreaLoad,tBattlePassTaskTest_KillMonster[2])
	
	
	-- -- 激情服片区和地宫小怪 击杀妖匪
	-- -- tBattlePassTaskTest_KillMonster[3] = {}
	-- -- tBattlePassTaskTest_KillMonster[3]["ActivityTime"] = tActivityTime["BattlePassSeason"]["ActivityTime"]
	-- -- tBattlePassTaskTest_KillMonster[3]["Function"] = BattlePassTaskTest_KillMonster
	-- -- tBattlePassTaskTest_KillMonster[3]["MonsterId"]={4833,4834,4835,4836,4838,4839,4840,4841,4868,4842,4843,4844,4845,4869,4870,4846,4847,4848,4849,4871,
	-- -- 4850,4851,4852,4853,4854,4872,4874,4855,4856,4857,4858,4873,4875,4876,4877,4878,4879,4859,4860,4862,4863,4865,4867}
	-- -- table.insert(tMonsterDrop_AreaLoad_NoGift,tBattlePassTaskTest_KillMonster[3])
	
	-- --激情服击杀100只叫天鸡
	-- -- tBattlePassTaskTest_KillMonster[4] = {}
	-- -- tBattlePassTaskTest_KillMonster[4]["ActivityTime"] = tActivityTime["BattlePassSeason"]["ActivityTime"]
	-- -- tBattlePassTaskTest_KillMonster[4]["Function"] = BattlePassTaskTest_KillMonster1
	-- -- tBattlePassTaskTest_KillMonster[4]["MonsterId"]={4833}
	-- -- table.insert(tMonsterDrop_AreaLoad_NoGift,tBattlePassTaskTest_KillMonster[4])
	
	
	-- -- 4220 啸海巨魔
	-- tBossRewardEnd[4220] = tBossRewardEnd[4220] or {}
	-- tBossRewardEnd[4220]["tFunction"] = tBossRewardEnd[4220]["tFunction"] or {}
	-- table.insert(tBossRewardEnd[4220]["tFunction"],BattlePassTaskTest_KillBoss1)
	
	-- -- 3976（晶魄血妖）
	-- tBossRewardEnd[3976] = tBossRewardEnd[3976] or {}
	-- tBossRewardEnd[3976]["tFunction"] = tBossRewardEnd[3976]["tFunction"] or {}
	-- table.insert(tBossRewardEnd[3976]["tFunction"],BattlePassTaskTest_KillBoss2)
	
	-- -- 3977（禁天邪兽）
	-- tBossRewardEnd[3977] = tBossRewardEnd[3977] or {}
	-- tBossRewardEnd[3977]["tFunction"] = tBossRewardEnd[3977]["tFunction"] or {}
	-- table.insert(tBossRewardEnd[3977]["tFunction"],BattlePassTaskTest_KillBoss2)
	
	-- -- 3978（啸海狂魔）
	-- tBossRewardEnd[3978] = tBossRewardEnd[3978] or {}
	-- tBossRewardEnd[3978]["tFunction"] = tBossRewardEnd[3978]["tFunction"] or {}
	-- table.insert(tBossRewardEnd[3978]["tFunction"],BattlePassTaskTest_KillBoss2)
	
	-- -- 3971（邪龙护法）
	-- tBossRewardEnd[3971] = tBossRewardEnd[3971] or {}
	-- tBossRewardEnd[3971]["tFunction"] = tBossRewardEnd[3971]["tFunction"] or {}
	-- table.insert(tBossRewardEnd[3971]["tFunction"],BattlePassTaskTest_KillBoss2)
	
	
	-- -- 3970（妖后瑶姬）
	-- tBossRewardEnd[3970] = tBossRewardEnd[3970] or {}
	-- tBossRewardEnd[3970]["tFunction"] = tBossRewardEnd[3970]["tFunction"] or {}
	-- table.insert(tBossRewardEnd[3970]["tFunction"],BattlePassTaskTest_KillBoss3)
	
	
	-- -- 4907,'无天修罗
	-- tBossRewardEnd[4907] = tBossRewardEnd[4907] or {}
	-- tBossRewardEnd[4907]["tFunction"] = tBossRewardEnd[4907]["tFunction"] or {}
	-- table.insert(tBossRewardEnd[4907]["tFunction"],BattlePassTaskTest_KillBoss1)
	
	-- -- 4908,'烈焰巨魔
	-- tBossRewardEnd[4908] = tBossRewardEnd[4908] or {}
	-- tBossRewardEnd[4908]["tFunction"] = tBossRewardEnd[4908]["tFunction"] or {}
	-- table.insert(tBossRewardEnd[4908]["tFunction"],BattlePassTaskTest_KillBoss1)
	
	-- -- 4909,'雪蛛鬼母
	-- tBossRewardEnd[4909] = tBossRewardEnd[4909] or {}
	-- tBossRewardEnd[4909]["tFunction"] = tBossRewardEnd[4909]["tFunction"] or {}
	-- table.insert(tBossRewardEnd[4909]["tFunction"],BattlePassTaskTest_KillBoss1)
	
	-- -- 4910,'灭域邪龙
	-- tBossRewardEnd[4910] = tBossRewardEnd[4910] or {}
	-- tBossRewardEnd[4910]["tFunction"] = tBossRewardEnd[4910]["tFunction"] or {}
	-- table.insert(tBossRewardEnd[4910]["tFunction"],BattlePassTaskTest_KillBoss1)


	--全片区怪物
	-- local tBattlePassTaskTest_DropPack = {}
	-- tBattlePassTaskTest_DropPack["ActivityTime"] = tActivityTime["BattlePassSeason"]["ActivityTime"]
	-- tBattlePassTaskTest_DropPack["Function"] = BattlePassTaskTest_DropPack
	
	-- table.insert(tMonsterDrop_AreaLoad,tBattlePassTaskTest_DropPack)
	
	--激情服片区和地宫小怪 击杀妖匪
	-- local tBattlePassTaskTest_DropPackPassion = {}
	-- tBattlePassTaskTest_DropPackPassion["ActivityTime"] = tActivityTime["BattlePassSeason"]["ActivityTime"]
	-- tBattlePassTaskTest_DropPackPassion["Function"] = BattlePassTaskTest_DropPack
	-- tBattlePassTaskTest_DropPackPassion["MonsterId"]={4833,4834,4835,4836,4838,4839,4840,4841,4868,4842,4843,4844,4845,4869,4870,4846,4847,4848,4849,4871,
	-- 4850,4851,4852,4853,4854,4872,4874,4855,4856,4857,4858,4873,4875,4876,4877,4878,4879,4859,4860,4862,4863,4865,4867}
	-- table.insert(tMonsterDrop_AreaLoad_NoGift,tBattlePassTaskTest_DropPackPassion)

-- 个人排位赛：	参赛场
-- tArenicCompetes["tFunction"] = tArenicCompetes["tFunction"] or {}
-- table.insert(tArenicCompetes["tFunction"],BattlePassTaskTest_CompetesRanking)


-- 骑马大赛，玩家冲过终点是触发
-- tRideArrive["tFunction"] = tRideArrive["tFunction"] or {}
-- table.insert(tRideArrive["tFunction"],BattlePassTaskTest_CompetesRide)

-- --上线检测是否隔天
-- -- table.insert(tSystem_PlayLogin_Func,BattlePassTaskTest_Login)


--上线检测是否隔天
-- table.insert(tSystem_PlayLogin_Func,BattlePassTaskTest_LoginNew)





--------------------------------------------npc部分----------------------------------------
-- 头像
tNpcFace[6002] = 50

for i=24260,24263 do
	tNpcGossip[i] = tNpcGossip[i] or DefaultNpc:new{}
	tNpcGossip[i]["OptionHidden"] = 1
	tNpcGossip[i]["DialogueText"] = tBattlePassTaskTest_Text[i]
	
	tNpcGossip[i]["Text1-1"] = {111,112,113,114,115,116,117,118,119,120}
	tNpcGossip[i]["tOption1-1"] = {111}
	tNpcGossip[i]["ChkFunc1-1"] = function()
		if Sys_ChkFullTime(tActivityTime["BattlePassSeason"]["ActivityTime"]) then
			return true
		else
			return false
		end 
	end
	tNpcGossip[i]["OptionPoint111"] = "1-2"
	
	tNpcGossip[i]["Text1-2"] = {121,122,123,124,125,126,127,128,129,130}
	tNpcGossip[i]["tOption1-2"] = {121}
end


---------------------------------杀人触发----------------------------------------------
-- -- tUserKilled["tFunction"] = tUserKilled["tFunction"] or {}
-- -- table.insert(tUserKilled["tFunction"], BattlePassTaskTest_KillPlayer)

------------------------清限量

-- tGlobalData_Info[54182] = {}
-- tGlobalData_Info[54182]["Time"] = {}
-- tGlobalData_Info[54182]["Time"]["ActivityTime"] = "2020-03-17 00:00 2020-03-17 23:59"
-- tGlobalData_Info[54182]["Time"]["ClearTime"] = "00:00 00:02"
-- tGlobalData_Info[54182]["Rest"] = {}
-- tGlobalData_Info[54182]["Rest"]["GlobalId"] = {54182}
-- tGlobalData_Info[54182]["Rest"]["Pos"] = {0}

-- 每天清除动态码
-- tGlobalData_Info[54258] = {}
-- tGlobalData_Info[54258]["Time"] = {}
-- tGlobalData_Info[54258]["Time"]["ActivityTime"] = tActivityTime["BattlePassSeason"]["ActivityTime"]
-- tGlobalData_Info[54258]["Time"]["ClearTime"] = "00:00 00:02"
-- tGlobalData_Info[54258]["Rest"] = {}
-- tGlobalData_Info[54258]["Rest"]["GlobalId"] = {54258}
-- tGlobalData_Info[54258]["Rest"]["Pos"] = {1,3,5}


-- tProcessPrizeBroadcast["tFunction"] = tProcessPrizeBroadcast["tFunction"] or {}
-- table.insert(tProcessPrizeBroadcast["tFunction"],BattlePassTaskTest_BroadcastPrize)
-- table.insert(tProcessPrizeBroadcast["tFunction"],BattlePassTaskTest_BroadcastKillBoss)
