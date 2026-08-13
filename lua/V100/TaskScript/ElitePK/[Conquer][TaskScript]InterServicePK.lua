----------------------------------------------------------------------------
--Name:		[征服][功能脚本]跨服精英PK赛活动制作.lua
--Purpose:	跨服精英PK赛活动
--Creator: 	郑鋆
--Created:	2016/08/10
----------------------------------------------------------------------------

-- 命名前缀
-- InterServicePK_

-- LOGID	18000133

-- 130级以上跨服精英PK赛冠军光环: 状态ID为184
-- 130级以上跨服精英PK赛亚军光环: 状态ID为185
-- 130级以上跨服精英PK赛季军光环: 状态ID为186
-- 130级以上跨服精英PK赛八强光环: 状态ID为187

-- 120-129级跨服精英PK赛冠军光环: 状态ID为188
-- 120-129级跨服精英PK赛亚军光环: 状态ID为189
-- 120-129级跨服精英PK赛季军光环: 状态ID为190
-- 120-129级跨服精英PK赛八强光环: 状态ID为191

local tInterServicePK_Constant = {}
	tInterServicePK_Constant["ActivityTime"] = "2020-08-13 00:00 2020-08-14 23:59"
	-- 日常跨服精英积分包给门票的时间
	tInterServicePK_Constant["DayTime"] = "2020-07-23 00:00 2020-08-14 23:59"
	-- 积分物品使用时间
	tInterServicePK_Constant["ExchangeTime"] = "2017-05-12 00:00 2017-06-01 23:59"
	tInterServicePK_Constant["Emoney"] = 99
	-- 入场门票
	tInterServicePK_Constant["EntranceTicket"] = 3300020
	-- 参赛的等级要求
	tInterServicePK_Constant["Level"] = 100
	tInterServicePK_Constant["BattleLev"] = 300
	
	tInterServicePK_Constant["GlobalId"] = 51338

	tInterServicePK_Constant["EmoneyLog"] = {}
	tInterServicePK_Constant["EmoneyLog"][1] = "250	4062	99	99	1	"
	tInterServicePK_Constant["EmoneyLog"][2] = "250	4063	188	188	1	"
	--记录emonlog方便统计参赛人数
	tInterServicePK_Constant["JoinLog"] = "350	21563	0	0	1	"
	
local tInterServicePK_Item = {}
	-- 130级以上冠军奖励
	------- 14天时效冠军称号（130级以上）
	------- 14天时效冠军光环（130级以上）
	------- 5000积分（约4000赠点）
	------- 凤凰坐骑碎片*3
	------- 7天凤凰
	tInterServicePK_Item[3300021] = {}
	tInterServicePK_Item[3300021]["LogId"] = 18000133
	tInterServicePK_Item[3300021]["DeleteItem"] = {}
	tInterServicePK_Item[3300021]["DeleteItem"][1] = {}
	tInterServicePK_Item[3300021]["DeleteItem"][1]["Id"] = 3300021
	tInterServicePK_Item[3300021]["RewardItem"] = {}
	tInterServicePK_Item[3300021]["RewardItem"][1] = {}
	tInterServicePK_Item[3300021]["RewardItem"][1]["Id"] = 3300035
	tInterServicePK_Item[3300021]["RewardItem"][1]["Attr"] = "0 5000"
	tInterServicePK_Item[3300021]["RewardItem"][2] = {}
	tInterServicePK_Item[3300021]["RewardItem"][2]["Id"] = 3300036
	tInterServicePK_Item[3300021]["RewardItem"][2]["Attr"] = "0 3"
	tInterServicePK_Item[3300021]["RewardItem"][3] = {}
	tInterServicePK_Item[3300021]["RewardItem"][3]["Id"] = 200575
	tInterServicePK_Item[3300021]["RewardItem"][3]["Attr"] = "0 1 0 10080 1 0 0 1"
	tInterServicePK_Item[3300021]["RewardTitle"] = {}
	tInterServicePK_Item[3300021]["RewardTitle"]["TitleType"] = 2035
	tInterServicePK_Item[3300021]["RewardTitle"]["TitleId"] = 2035
	tInterServicePK_Item[3300021]["RewardTitle"]["SaveTime"] = 43200
	tInterServicePK_Item[3300021]["Status"] = 184

	-- 130级以上亚军奖励
	------- 14天时效亚军称号（130级以上）
	------- 14天时效亚军光环（130级以上）
	------- 4000积分 （约3200赠点）
	------- 凤凰坐骑碎片*2
	------- 7天凤凰
	tInterServicePK_Item[3300022] = {}
	tInterServicePK_Item[3300022]["LogId"] = 18000133
	tInterServicePK_Item[3300022]["DeleteItem"] = {}
	tInterServicePK_Item[3300022]["DeleteItem"][1] = {}
	tInterServicePK_Item[3300022]["DeleteItem"][1]["Id"] = 3300022
	tInterServicePK_Item[3300022]["RewardItem"] = {}
	tInterServicePK_Item[3300022]["RewardItem"][1] = {}
	tInterServicePK_Item[3300022]["RewardItem"][1]["Id"] = 3300035
	tInterServicePK_Item[3300022]["RewardItem"][1]["Attr"] = "0 4000"
	tInterServicePK_Item[3300022]["RewardItem"][2] = {}
	tInterServicePK_Item[3300022]["RewardItem"][2]["Id"] = 3300036
	tInterServicePK_Item[3300022]["RewardItem"][2]["Attr"] = "0 2"
	tInterServicePK_Item[3300022]["RewardItem"][3] = {}
	tInterServicePK_Item[3300022]["RewardItem"][3]["Id"] = 200575
	tInterServicePK_Item[3300022]["RewardItem"][3]["Attr"] = "0 1 0 10080 1 0 0 1"
	tInterServicePK_Item[3300022]["RewardTitle"] = {}
	tInterServicePK_Item[3300022]["RewardTitle"]["TitleType"] = 2036
	tInterServicePK_Item[3300022]["RewardTitle"]["TitleId"] = 2036
	tInterServicePK_Item[3300022]["RewardTitle"]["SaveTime"] = 43200
	tInterServicePK_Item[3300022]["Status"] = 185
	
	-- 130级以上季军奖励
	------- 14天时效季军称号（130级以上）
	------- 14天时效季军光环（130级以上）
	------- 3500积分 （约2800赠点）
	------- 凤凰坐骑碎片*1
	------- 7天凤凰
	tInterServicePK_Item[3300023] = {}
	tInterServicePK_Item[3300023]["LogId"] = 18000133
	tInterServicePK_Item[3300023]["DeleteItem"] = {}
	tInterServicePK_Item[3300023]["DeleteItem"][1] = {}
	tInterServicePK_Item[3300023]["DeleteItem"][1]["Id"] = 3300023
	tInterServicePK_Item[3300023]["RewardItem"] = {}
	tInterServicePK_Item[3300023]["RewardItem"][1] = {}
	tInterServicePK_Item[3300023]["RewardItem"][1]["Id"] = 3300035
	tInterServicePK_Item[3300023]["RewardItem"][1]["Attr"] = "0 3500"
	tInterServicePK_Item[3300023]["RewardItem"][2] = {}
	tInterServicePK_Item[3300023]["RewardItem"][2]["Id"] = 3300036
	tInterServicePK_Item[3300023]["RewardItem"][2]["Attr"] = "0 1"
	tInterServicePK_Item[3300023]["RewardItem"][3] = {}
	tInterServicePK_Item[3300023]["RewardItem"][3]["Id"] = 200575
	tInterServicePK_Item[3300023]["RewardItem"][3]["Attr"] = "0 1 0 10080 1 0 0 1"
	tInterServicePK_Item[3300023]["RewardTitle"] = {}
	tInterServicePK_Item[3300023]["RewardTitle"]["TitleType"] = 2037
	tInterServicePK_Item[3300023]["RewardTitle"]["TitleId"] = 2037
	tInterServicePK_Item[3300023]["RewardTitle"]["SaveTime"] = 43200
	tInterServicePK_Item[3300023]["Status"] = 186
	
	-- 130级以上八强奖励
	------- 14天时效八强称号（130级以上）
	------- 14天时效八强光环（130级以上）
	------- 3000积分 （约2400赠点）
	tInterServicePK_Item[3300024] = {}
	tInterServicePK_Item[3300024]["LogId"] = 18000133
	tInterServicePK_Item[3300024]["DeleteItem"] = {}
	tInterServicePK_Item[3300024]["DeleteItem"][1] = {}
	tInterServicePK_Item[3300024]["DeleteItem"][1]["Id"] = 3300024
	tInterServicePK_Item[3300024]["RewardItem"] = {}
	tInterServicePK_Item[3300024]["RewardItem"][1] = {}
	tInterServicePK_Item[3300024]["RewardItem"][1]["Id"] = 3300035
	tInterServicePK_Item[3300024]["RewardItem"][1]["Attr"] = "0 3000"
	tInterServicePK_Item[3300024]["RewardTitle"] = {}
	tInterServicePK_Item[3300024]["RewardTitle"]["TitleType"] = 2038
	tInterServicePK_Item[3300024]["RewardTitle"]["TitleId"] = 2038
	tInterServicePK_Item[3300024]["RewardTitle"]["SaveTime"] = 43200
	tInterServicePK_Item[3300024]["Status"] = 187
	
	-- 120-129冠军奖励
	-- 14天时效冠军光环（120-129级）
	-- 3000积分	（约2400赠点）
	tInterServicePK_Item[3300025] = {}
	tInterServicePK_Item[3300025]["LogId"] = 18000133
	tInterServicePK_Item[3300025]["DeleteItem"] = {}
	tInterServicePK_Item[3300025]["DeleteItem"][1] = {}
	tInterServicePK_Item[3300025]["DeleteItem"][1]["Id"] = 3300025
	tInterServicePK_Item[3300025]["RewardItem"] = {}
	tInterServicePK_Item[3300025]["RewardItem"][1] = {}
	tInterServicePK_Item[3300025]["RewardItem"][1]["Id"] = 3300035
	tInterServicePK_Item[3300025]["RewardItem"][1]["Attr"] = "0 3000"
	tInterServicePK_Item[3300025]["Status"] = 188
	
	-- 120-129亚军奖励
	-- 14天时效亚军光环（120-129级）
	-- 2500积分	（约2000赠点）
	tInterServicePK_Item[3300026] = {}
	tInterServicePK_Item[3300026]["LogId"] = 18000133
	tInterServicePK_Item[3300026]["DeleteItem"] = {}
	tInterServicePK_Item[3300026]["DeleteItem"][1] = {}
	tInterServicePK_Item[3300026]["DeleteItem"][1]["Id"] = 3300026
	tInterServicePK_Item[3300026]["RewardItem"] = {}
	tInterServicePK_Item[3300026]["RewardItem"][1] = {}
	tInterServicePK_Item[3300026]["RewardItem"][1]["Id"] = 3300035
	tInterServicePK_Item[3300026]["RewardItem"][1]["Attr"] = "0 2500"
	tInterServicePK_Item[3300026]["Status"] = 189
	
	-- 120-129季军奖励
	-- 14天时效季军光环（120-129级）
	-- 2000积分	（约1600赠点）
	tInterServicePK_Item[3300027] = {}
	tInterServicePK_Item[3300027]["LogId"] = 18000133
	tInterServicePK_Item[3300027]["DeleteItem"] = {}
	tInterServicePK_Item[3300027]["DeleteItem"][1] = {}
	tInterServicePK_Item[3300027]["DeleteItem"][1]["Id"] = 3300027
	tInterServicePK_Item[3300027]["RewardItem"] = {}
	tInterServicePK_Item[3300027]["RewardItem"][1] = {}
	tInterServicePK_Item[3300027]["RewardItem"][1]["Id"] = 3300035
	tInterServicePK_Item[3300027]["RewardItem"][1]["Attr"] = "0 2000"
	tInterServicePK_Item[3300027]["Status"] = 190
	
	-- 120-129八强奖励
	-- 14天时效八强光环（120-129级）
	-- 1500积分	（约1200赠点）
	tInterServicePK_Item[3300028] = {}
	tInterServicePK_Item[3300028]["LogId"] = 18000133
	tInterServicePK_Item[3300028]["DeleteItem"] = {}
	tInterServicePK_Item[3300028]["DeleteItem"][1] = {}
	tInterServicePK_Item[3300028]["DeleteItem"][1]["Id"] = 3300028
	tInterServicePK_Item[3300028]["RewardItem"] = {}
	tInterServicePK_Item[3300028]["RewardItem"][1] = {}
	tInterServicePK_Item[3300028]["RewardItem"][1]["Id"] = 3300035
	tInterServicePK_Item[3300028]["RewardItem"][1]["Attr"] = "0 1500"
	tInterServicePK_Item[3300028]["Status"] = 191
	
	-- 100-119冠军奖励
	-- 2000积分	（约1600赠点）
	tInterServicePK_Item[3300029] = {}
	tInterServicePK_Item[3300029]["LogId"] = 18000133
	tInterServicePK_Item[3300029]["DeleteItem"] = {}
	tInterServicePK_Item[3300029]["DeleteItem"][1] = {}
	tInterServicePK_Item[3300029]["DeleteItem"][1]["Id"] = 3300029
	tInterServicePK_Item[3300029]["RewardItem"] = {}
	tInterServicePK_Item[3300029]["RewardItem"][1] = {}
	tInterServicePK_Item[3300029]["RewardItem"][1]["Id"] = 3300035
	tInterServicePK_Item[3300029]["RewardItem"][1]["Attr"] = "0 2000"
	
	-- 100-119亚军奖励
	-- 1500积分	（约1200赠点）
	tInterServicePK_Item[3300030] = {}
	tInterServicePK_Item[3300030]["LogId"] = 18000133
	tInterServicePK_Item[3300030]["DeleteItem"] = {}
	tInterServicePK_Item[3300030]["DeleteItem"][1] = {}
	tInterServicePK_Item[3300030]["DeleteItem"][1]["Id"] = 3300030
	tInterServicePK_Item[3300030]["RewardItem"] = {}
	tInterServicePK_Item[3300030]["RewardItem"][1] = {}
	tInterServicePK_Item[3300030]["RewardItem"][1]["Id"] = 3300035
	tInterServicePK_Item[3300030]["RewardItem"][1]["Attr"] = "0 1500"
	
	-- 100-119季军奖励
	-- 1200积分	（约960赠点）
	tInterServicePK_Item[3300031] = {}
	tInterServicePK_Item[3300031]["LogId"] = 18000133
	tInterServicePK_Item[3300031]["DeleteItem"] = {}
	tInterServicePK_Item[3300031]["DeleteItem"][1] = {}
	tInterServicePK_Item[3300031]["DeleteItem"][1]["Id"] = 3300031
	tInterServicePK_Item[3300031]["RewardItem"] = {}
	tInterServicePK_Item[3300031]["RewardItem"][1] = {}
	tInterServicePK_Item[3300031]["RewardItem"][1]["Id"] = 3300035
	tInterServicePK_Item[3300031]["RewardItem"][1]["Attr"] = "0 1200"
	
	-- 100-119八强奖励
	-- 1000积分	（约800赠点）
	tInterServicePK_Item[3300032] = {}
	tInterServicePK_Item[3300032]["LogId"] = 18000133
	tInterServicePK_Item[3300032]["DeleteItem"] = {}
	tInterServicePK_Item[3300032]["DeleteItem"][1] = {}
	tInterServicePK_Item[3300032]["DeleteItem"][1]["Id"] = 3300032
	tInterServicePK_Item[3300032]["RewardItem"] = {}
	tInterServicePK_Item[3300032]["RewardItem"][1] = {}
	tInterServicePK_Item[3300032]["RewardItem"][1]["Id"] = 3300035
	tInterServicePK_Item[3300032]["RewardItem"][1]["Attr"] = "0 1000"
	
	-- 参与奖
	-- 500积分（约400赠点）
	tInterServicePK_Item[3300033] = {}
	tInterServicePK_Item[3300033]["LogId"] = 18000133
	tInterServicePK_Item[3300033]["DeleteItem"] = {}
	tInterServicePK_Item[3300033]["DeleteItem"][1] = {}
	tInterServicePK_Item[3300033]["DeleteItem"][1]["Id"] = 3300033
	tInterServicePK_Item[3300033]["RewardItem"] = {}
	tInterServicePK_Item[3300033]["RewardItem"][1] = {}
	tInterServicePK_Item[3300033]["RewardItem"][1]["Id"] = 3300035
	tInterServicePK_Item[3300033]["RewardItem"][1]["Attr"] = "0 500"
	
	-------新增礼包部分---------created：李甲
		-- 130级以上冠军奖励
	------- 30天时效冠军称号（130级以上）
	------- 30天时效冠军光环（130级以上）
	------- 10000气力值
	------- 璀璨星陨石*1
	------- 凤凰坐骑碎片*5
	------- 30天凤凰
	tInterServicePK_Item[3305118] = {}
	tInterServicePK_Item[3305118]["LogId"] = 18000133
	tInterServicePK_Item[3305118]["DeleteItem"] = {}
	tInterServicePK_Item[3305118]["DeleteItem"][1] = {}
	tInterServicePK_Item[3305118]["DeleteItem"][1]["Id"] = 3305118
	tInterServicePK_Item[3305118]["RewardItem"] = {}
	tInterServicePK_Item[3305118]["RewardItem"][1] = {}
	tInterServicePK_Item[3305118]["RewardItem"][1]["Id"] = 3300036
	tInterServicePK_Item[3305118]["RewardItem"][1]["Attr"] = "0 15"
	tInterServicePK_Item[3305118]["RewardItem"][2] = {}
	tInterServicePK_Item[3305118]["RewardItem"][2]["Id"] = 200575
	tInterServicePK_Item[3305118]["RewardItem"][2]["Attr"] = "0 1 0 129600 1 0 0 1"
	-- tInterServicePK_Item[3305118]["RewardItem"][3] = {}
	-- tInterServicePK_Item[3305118]["RewardItem"][3]["Id"] = 3009003
	-- tInterServicePK_Item[3305118]["RewardItem"][3]["Attr"] = "0 1 0 2880 1"
	tInterServicePK_Item[3305118]["RewardItem"][3] = {}
	tInterServicePK_Item[3305118]["RewardItem"][3]["Id"] = 3319015
	tInterServicePK_Item[3305118]["RewardItem"][3]["Attr"] = "0 1"
	-- tInterServicePK_Item[3305118]["RewardItem"][4] = {}
	-- tInterServicePK_Item[3305118]["RewardItem"][4]["Id"] = 3306367
	-- tInterServicePK_Item[3305118]["RewardItem"][4]["Attr"] = "0 50"
	tInterServicePK_Item[3305118]["RewardItem"][4] = {}
	tInterServicePK_Item[3305118]["RewardItem"][4]["Id"] = 4060001
	tInterServicePK_Item[3305118]["RewardItem"][4]["Attr"] = "0 400"
	-- tInterServicePK_Item[3305118]["RewardItem"][5] = {}
	-- tInterServicePK_Item[3305118]["RewardItem"][5]["Id"] = 3309765
	-- tInterServicePK_Item[3305118]["RewardItem"][5]["Attr"] = "0 900"
	-- tInterServicePK_Item[3305118]["RewardEMoneyMono"] = {}
	-- tInterServicePK_Item[3305118]["RewardEMoneyMono"]["Value"] = 20000 -- 20000
	-- tInterServicePK_Item[3305118]["RewardStrengthValue"] = {}
	-- tInterServicePK_Item[3305118]["RewardStrengthValue"]["Value"] = 10000
	tInterServicePK_Item[3305118]["RewardTitle"] = {}
	tInterServicePK_Item[3305118]["RewardTitle"]["TitleType"] = 2035
	tInterServicePK_Item[3305118]["RewardTitle"]["TitleId"] = 2035
	tInterServicePK_Item[3305118]["RewardTitle"]["SaveTime"] = 86400
	tInterServicePK_Item[3305118]["Status"] = 184

	-- 130级以上亚军奖励
	------- 30天时效亚军称号（130级以上）
	------- 30天时效亚军光环（130级以上）
	------- 8000气力值
	------- 晶莹星陨石*5
	------- 凤凰坐骑碎片*3
	------- 15天凤凰
	tInterServicePK_Item[3305119] = {}
	tInterServicePK_Item[3305119]["LogId"] = 18000133
	tInterServicePK_Item[3305119]["DeleteItem"] = {}
	tInterServicePK_Item[3305119]["DeleteItem"][1] = {}
	tInterServicePK_Item[3305119]["DeleteItem"][1]["Id"] = 3305119
	tInterServicePK_Item[3305119]["RewardItem"] = {}
	tInterServicePK_Item[3305119]["RewardItem"][1] = {}
	tInterServicePK_Item[3305119]["RewardItem"][1]["Id"] = 3300036
	tInterServicePK_Item[3305119]["RewardItem"][1]["Attr"] = "0 10"
	tInterServicePK_Item[3305119]["RewardItem"][2] = {}
	tInterServicePK_Item[3305119]["RewardItem"][2]["Id"] = 200575
	tInterServicePK_Item[3305119]["RewardItem"][2]["Attr"] = "0 1 0 86400 1 0 0 1"
	-- tInterServicePK_Item[3305119]["RewardItem"][3] = {}
	-- tInterServicePK_Item[3305119]["RewardItem"][3]["Id"] = 3009002
	-- tInterServicePK_Item[3305119]["RewardItem"][3]["Attr"] = "0 5 0 2880 1"
	tInterServicePK_Item[3305119]["RewardItem"][3] = {}
	tInterServicePK_Item[3305119]["RewardItem"][3]["Id"] = 3319014
	tInterServicePK_Item[3305119]["RewardItem"][3]["Attr"] = "0 1"
	-- tInterServicePK_Item[3305119]["RewardItem"][4] = {}
	-- tInterServicePK_Item[3305119]["RewardItem"][4]["Id"] = 3306367
	-- tInterServicePK_Item[3305119]["RewardItem"][4]["Attr"] = "0 40"
	tInterServicePK_Item[3305119]["RewardItem"][4] = {}
	tInterServicePK_Item[3305119]["RewardItem"][4]["Id"] = 4060001
	tInterServicePK_Item[3305119]["RewardItem"][4]["Attr"] = "0 300"
	-- tInterServicePK_Item[3305119]["RewardItem"][5] = {}
	-- tInterServicePK_Item[3305119]["RewardItem"][5]["Id"] = 3309765
	-- tInterServicePK_Item[3305119]["RewardItem"][5]["Attr"] = "0 700"
	-- tInterServicePK_Item[3305119]["RewardEMoneyMono"] = {}
	-- tInterServicePK_Item[3305119]["RewardEMoneyMono"]["Value"] = 10000 -- 10000
	-- tInterServicePK_Item[3305119]["RewardStrengthValue"] = {}
	-- tInterServicePK_Item[3305119]["RewardStrengthValue"]["Value"] = 8000
	tInterServicePK_Item[3305119]["RewardTitle"] = {}
	tInterServicePK_Item[3305119]["RewardTitle"]["TitleType"] = 2036
	tInterServicePK_Item[3305119]["RewardTitle"]["TitleId"] = 2036
	tInterServicePK_Item[3305119]["RewardTitle"]["SaveTime"] = 86400
	tInterServicePK_Item[3305119]["Status"] = 185
	
	-- 130级以上季军奖励
	------- 30天时效季军称号（130级以上）
	------- 30天时效季军光环（130级以上）
	------- 6000气力值
	------- 晶莹星陨石*3
	------- 凤凰坐骑碎片*2
	------- 15天凤凰
	tInterServicePK_Item[3305120] = {}
	tInterServicePK_Item[3305120]["LogId"] = 18000133
	tInterServicePK_Item[3305120]["DeleteItem"] = {}
	tInterServicePK_Item[3305120]["DeleteItem"][1] = {}
	tInterServicePK_Item[3305120]["DeleteItem"][1]["Id"] = 3305120
	tInterServicePK_Item[3305120]["RewardItem"] = {}
	tInterServicePK_Item[3305120]["RewardItem"][1] = {}
	tInterServicePK_Item[3305120]["RewardItem"][1]["Id"] = 3300036
	tInterServicePK_Item[3305120]["RewardItem"][1]["Attr"] = "0 5"
	tInterServicePK_Item[3305120]["RewardItem"][2] = {}
	tInterServicePK_Item[3305120]["RewardItem"][2]["Id"] = 200575
	tInterServicePK_Item[3305120]["RewardItem"][2]["Attr"] = "0 1 0 43200 1 0 0 1"
	-- tInterServicePK_Item[3305120]["RewardItem"][3] = {}
	-- tInterServicePK_Item[3305120]["RewardItem"][3]["Id"] = 3009002
	-- tInterServicePK_Item[3305120]["RewardItem"][3]["Attr"] = "0 3 0 2880 1"
	tInterServicePK_Item[3305120]["RewardItem"][3] = {}
	tInterServicePK_Item[3305120]["RewardItem"][3]["Id"] = 3319013
	tInterServicePK_Item[3305120]["RewardItem"][3]["Attr"] = "0 1"
	-- tInterServicePK_Item[3305120]["RewardItem"][4] = {}
	-- tInterServicePK_Item[3305120]["RewardItem"][4]["Id"] = 3306367
	-- tInterServicePK_Item[3305120]["RewardItem"][4]["Attr"] = "0 30"
	tInterServicePK_Item[3305120]["RewardItem"][4] = {}
	tInterServicePK_Item[3305120]["RewardItem"][4]["Id"] = 4060001
	tInterServicePK_Item[3305120]["RewardItem"][4]["Attr"] = "0 200"
	-- tInterServicePK_Item[3305120]["RewardItem"][5] = {}
	-- tInterServicePK_Item[3305120]["RewardItem"][5]["Id"] = 3309765
	-- tInterServicePK_Item[3305120]["RewardItem"][5]["Attr"] = "0 500"
	-- tInterServicePK_Item[3305120]["RewardEMoneyMono"] = {}
	-- tInterServicePK_Item[3305120]["RewardEMoneyMono"]["Value"] = 5000 -- 5000
	-- tInterServicePK_Item[3305120]["RewardStrengthValue"] = {}
	-- tInterServicePK_Item[3305120]["RewardStrengthValue"]["Value"] = 6000
	tInterServicePK_Item[3305120]["RewardTitle"] = {}
	tInterServicePK_Item[3305120]["RewardTitle"]["TitleType"] = 2037
	tInterServicePK_Item[3305120]["RewardTitle"]["TitleId"] = 2037
	tInterServicePK_Item[3305120]["RewardTitle"]["SaveTime"] = 86400
	tInterServicePK_Item[3305120]["Status"] = 186
	
	-- 130级以上八强奖励
	------- 30天时效八强称号（130级以上）
	------- 30天时效八强光环（130级以上）
	------- 3000气力值
	------- 晶莹星陨石*2
	------- 凤凰坐骑碎片*1
	------- 7天凤凰
	tInterServicePK_Item[3305121] = {}
	tInterServicePK_Item[3305121]["LogId"] = 18000133
	tInterServicePK_Item[3305121]["DeleteItem"] = {}
	tInterServicePK_Item[3305121]["DeleteItem"][1] = {}
	tInterServicePK_Item[3305121]["DeleteItem"][1]["Id"] = 3305121
	tInterServicePK_Item[3305121]["RewardItem"] = {}
	tInterServicePK_Item[3305121]["RewardItem"][1] = {}
	tInterServicePK_Item[3305121]["RewardItem"][1]["Id"] = 3300036
	tInterServicePK_Item[3305121]["RewardItem"][1]["Attr"] = "0 3"
	tInterServicePK_Item[3305121]["RewardItem"][2] = {}
	tInterServicePK_Item[3305121]["RewardItem"][2]["Id"] = 200575
	tInterServicePK_Item[3305121]["RewardItem"][2]["Attr"] = "0 1 0 21600 1 0 0 1"
	-- tInterServicePK_Item[3305121]["RewardItem"][3] = {}
	-- tInterServicePK_Item[3305121]["RewardItem"][3]["Id"] = 3009002
	-- tInterServicePK_Item[3305121]["RewardItem"][3]["Attr"] = "0 2 0 2880 1"
	tInterServicePK_Item[3305121]["RewardItem"][3] = {}
	tInterServicePK_Item[3305121]["RewardItem"][3]["Id"] = 3311748
	tInterServicePK_Item[3305121]["RewardItem"][3]["Attr"] = "0 3"
	-- tInterServicePK_Item[3305121]["RewardItem"][4] = {}
	-- tInterServicePK_Item[3305121]["RewardItem"][4]["Id"] = 3306367
	-- tInterServicePK_Item[3305121]["RewardItem"][4]["Attr"] = "0 20"
	tInterServicePK_Item[3305121]["RewardItem"][4] = {}
	tInterServicePK_Item[3305121]["RewardItem"][4]["Id"] = 4060001
	tInterServicePK_Item[3305121]["RewardItem"][4]["Attr"] = "0 150"
	-- tInterServicePK_Item[3305121]["RewardItem"][5] = {}
	-- tInterServicePK_Item[3305121]["RewardItem"][5]["Id"] = 3309765
	-- tInterServicePK_Item[3305121]["RewardItem"][5]["Attr"] = "0 300"
	-- tInterServicePK_Item[3305121]["RewardEMoneyMono"] = {}
	-- tInterServicePK_Item[3305121]["RewardEMoneyMono"]["Value"] = 3000 -- 3000
	-- tInterServicePK_Item[3305121]["RewardStrengthValue"] = {}
	-- tInterServicePK_Item[3305121]["RewardStrengthValue"]["Value"] = 3000
	tInterServicePK_Item[3305121]["RewardTitle"] = {}
	tInterServicePK_Item[3305121]["RewardTitle"]["TitleType"] = 2038
	tInterServicePK_Item[3305121]["RewardTitle"]["TitleId"] = 2038
	tInterServicePK_Item[3305121]["RewardTitle"]["SaveTime"] = 43200
	tInterServicePK_Item[3305121]["Status"] = 187
	
	-- 120-129冠军奖励
	-- 晶莹星陨石*5
	-- 10000气力值
	tInterServicePK_Item[3305122] = {}
	tInterServicePK_Item[3305122]["LogId"] = 18000133
	tInterServicePK_Item[3305122]["DeleteItem"] = {}
	tInterServicePK_Item[3305122]["DeleteItem"][1] = {}
	tInterServicePK_Item[3305122]["DeleteItem"][1]["Id"] = 3305122
	tInterServicePK_Item[3305122]["RewardItem"] = {}
	-- tInterServicePK_Item[3305122]["RewardItem"][1] = {}
	-- tInterServicePK_Item[3305122]["RewardItem"][1]["Id"] = 3009002
	-- tInterServicePK_Item[3305122]["RewardItem"][1]["Attr"] = "0 5 0 2880 1"
	tInterServicePK_Item[3305122]["RewardItem"][1] = {}
	tInterServicePK_Item[3305122]["RewardItem"][1]["Id"] = 3311748
	tInterServicePK_Item[3305122]["RewardItem"][1]["Attr"] = "0 1"
	-- tInterServicePK_Item[3305122]["RewardItem"][2] = {}
	-- tInterServicePK_Item[3305122]["RewardItem"][2]["Id"] = 3306367
	-- tInterServicePK_Item[3305122]["RewardItem"][2]["Attr"] = "0 20"
	tInterServicePK_Item[3305122]["RewardItem"][2] = {}
	tInterServicePK_Item[3305122]["RewardItem"][2]["Id"] = 4060001
	tInterServicePK_Item[3305122]["RewardItem"][2]["Attr"] = "0 150"
	tInterServicePK_Item[3305122]["RewardItem"][3] = {}
	tInterServicePK_Item[3305122]["RewardItem"][3]["Id"] = 3311759
	tInterServicePK_Item[3305122]["RewardItem"][3]["Attr"] = "0 5 3"
	-- tInterServicePK_Item[3305122]["RewardItem"][3] = {}
	-- tInterServicePK_Item[3305122]["RewardItem"][3]["Id"] = 3309765
	-- tInterServicePK_Item[3305122]["RewardItem"][3]["Attr"] = "0 700"
	-- tInterServicePK_Item[3305122]["RewardEMoneyMono"] = {}
	-- tInterServicePK_Item[3305122]["RewardEMoneyMono"]["Value"] = 3000
	-- tInterServicePK_Item[3305122]["RewardStrengthValue"] = {}
	-- tInterServicePK_Item[3305122]["RewardStrengthValue"]["Value"] = 10000
	tInterServicePK_Item[3305122]["Status"] = 188
	
	-- 120-129亚军奖励
	-- 晶莹星陨石*3
	-- 8000气力值
	tInterServicePK_Item[3305123] = {}
	tInterServicePK_Item[3305123]["LogId"] = 18000133
	tInterServicePK_Item[3305123]["DeleteItem"] = {}
	tInterServicePK_Item[3305123]["DeleteItem"][1] = {}
	tInterServicePK_Item[3305123]["DeleteItem"][1]["Id"] = 3305123
	tInterServicePK_Item[3305123]["RewardItem"] = {}
	tInterServicePK_Item[3305123]["RewardItem"][1] = {}
	tInterServicePK_Item[3305123]["RewardItem"][1]["Id"] = 4060001
	tInterServicePK_Item[3305123]["RewardItem"][1]["Attr"] = "0 100"
	-- tInterServicePK_Item[3305123]["RewardItem"][1] = {}
	-- tInterServicePK_Item[3305123]["RewardItem"][1]["Id"] = 3009002
	-- tInterServicePK_Item[3305123]["RewardItem"][1]["Attr"] = "0 3 0 2880 1"
	-- tInterServicePK_Item[3305123]["RewardItem"][2] = {}
	-- tInterServicePK_Item[3305123]["RewardItem"][2]["Id"] = 3306367
	-- tInterServicePK_Item[3305123]["RewardItem"][2]["Attr"] = "0 15"
	tInterServicePK_Item[3305123]["RewardItem"][2] = {}
	tInterServicePK_Item[3305123]["RewardItem"][2]["Id"] = 3311759
	tInterServicePK_Item[3305123]["RewardItem"][2]["Attr"] = "0 3 3"
	
	-- tInterServicePK_Item[3305123]["RewardItem"][3] = {}
	-- tInterServicePK_Item[3305123]["RewardItem"][3]["Id"] = 3309765
	-- tInterServicePK_Item[3305123]["RewardItem"][3]["Attr"] = "0 500"
	-- tInterServicePK_Item[3305123]["RewardEMoneyMono"] = {}
	-- tInterServicePK_Item[3305123]["RewardEMoneyMono"]["Value"] = 2500
	-- tInterServicePK_Item[3305123]["RewardStrengthValue"] = {}
	-- tInterServicePK_Item[3305123]["RewardStrengthValue"]["Value"] = 8000
	tInterServicePK_Item[3305123]["Status"] = 189
	
	-- 120-129季军奖励
	--  晶莹星陨石*2
	-- 6000气力值
	tInterServicePK_Item[3305124] = {}
	tInterServicePK_Item[3305124]["LogId"] = 18000133
	tInterServicePK_Item[3305124]["DeleteItem"] = {}
	tInterServicePK_Item[3305124]["DeleteItem"][1] = {}
	tInterServicePK_Item[3305124]["DeleteItem"][1]["Id"] = 3305124
	tInterServicePK_Item[3305124]["RewardItem"] = {}
	-- tInterServicePK_Item[3305124]["RewardItem"][1] = {}
	-- tInterServicePK_Item[3305124]["RewardItem"][1]["Id"] = 3009002
	-- tInterServicePK_Item[3305124]["RewardItem"][1]["Attr"] = "0 2 0 2880 1"
	tInterServicePK_Item[3305124]["RewardItem"][1] = {}
	tInterServicePK_Item[3305124]["RewardItem"][1]["Id"] = 4060001
	tInterServicePK_Item[3305124]["RewardItem"][1]["Attr"] = "0 70"
	-- tInterServicePK_Item[3305124]["RewardItem"][2] = {}
	-- tInterServicePK_Item[3305124]["RewardItem"][2]["Id"] = 3306367
	-- tInterServicePK_Item[3305124]["RewardItem"][2]["Attr"] = "0 10"
	tInterServicePK_Item[3305124]["RewardItem"][2] = {}
	tInterServicePK_Item[3305124]["RewardItem"][2]["Id"] = 3311759
	tInterServicePK_Item[3305124]["RewardItem"][2]["Attr"] = "0 2 3"
	-- tInterServicePK_Item[3305124]["RewardItem"][3] = {}
	-- tInterServicePK_Item[3305124]["RewardItem"][3]["Id"] = 3309765
	-- tInterServicePK_Item[3305124]["RewardItem"][3]["Attr"] = "0 300"
	-- tInterServicePK_Item[3305124]["RewardEMoneyMono"] = {}
	-- tInterServicePK_Item[3305124]["RewardEMoneyMono"]["Value"] = 2000
	-- tInterServicePK_Item[3305124]["RewardStrengthValue"] = {}
	-- tInterServicePK_Item[3305124]["RewardStrengthValue"]["Value"] = 6000
	tInterServicePK_Item[3305124]["Status"] = 190
	
	-- 120-129八强奖励
	-- 晶莹星陨石*1
	-- 3000气力值
	tInterServicePK_Item[3305125] = {}
	tInterServicePK_Item[3305125]["LogId"] = 18000133
	tInterServicePK_Item[3305125]["DeleteItem"] = {}
	tInterServicePK_Item[3305125]["DeleteItem"][1] = {}
	tInterServicePK_Item[3305125]["DeleteItem"][1]["Id"] = 3305125
	tInterServicePK_Item[3305125]["RewardItem"] = {}
	-- tInterServicePK_Item[3305125]["RewardItem"][1] = {}
	-- tInterServicePK_Item[3305125]["RewardItem"][1]["Id"] = 3009002
	-- tInterServicePK_Item[3305125]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tInterServicePK_Item[3305125]["RewardItem"][1] = {}
	tInterServicePK_Item[3305125]["RewardItem"][1]["Id"] = 4060001
	tInterServicePK_Item[3305125]["RewardItem"][1]["Attr"] = "0 50"
	-- tInterServicePK_Item[3305125]["RewardItem"][2] = {}
	-- tInterServicePK_Item[3305125]["RewardItem"][2]["Id"] = 3306367
	-- tInterServicePK_Item[3305125]["RewardItem"][2]["Attr"] = "0 5"
	tInterServicePK_Item[3305125]["RewardItem"][2] = {}
	tInterServicePK_Item[3305125]["RewardItem"][2]["Id"] = 3311759
	tInterServicePK_Item[3305125]["RewardItem"][2]["Attr"] = "0 1 3"
	-- tInterServicePK_Item[3305125]["RewardItem"][3] = {}
	-- tInterServicePK_Item[3305125]["RewardItem"][3]["Id"] = 3309765
	-- tInterServicePK_Item[3305125]["RewardItem"][3]["Attr"] = "0 200"
	-- tInterServicePK_Item[3305125]["RewardEMoneyMono"] = {}
	-- tInterServicePK_Item[3305125]["RewardEMoneyMono"]["Value"] = 1500
	-- tInterServicePK_Item[3305125]["RewardStrengthValue"] = {}
	-- tInterServicePK_Item[3305125]["RewardStrengthValue"]["Value"] = 3000
	tInterServicePK_Item[3305125]["Status"] = 191
	
	-- 110-119冠军奖励
	-- 晶莹星陨石*5
	-- 10000气力值
	tInterServicePK_Item[3305126] = {}
	tInterServicePK_Item[3305126]["LogId"] = 18000133
	tInterServicePK_Item[3305126]["DeleteItem"] = {}
	tInterServicePK_Item[3305126]["DeleteItem"][1] = {}
	tInterServicePK_Item[3305126]["DeleteItem"][1]["Id"] = 3305126
	tInterServicePK_Item[3305126]["RewardItem"] = {}
	tInterServicePK_Item[3305126]["RewardItem"][1] = {}
	tInterServicePK_Item[3305126]["RewardItem"][1]["Id"] = 4060001
	tInterServicePK_Item[3305126]["RewardItem"][1]["Attr"] = "0 100"
	-- tInterServicePK_Item[3305126]["RewardItem"][1] = {}
	-- tInterServicePK_Item[3305126]["RewardItem"][1]["Id"] = 3009002
	-- tInterServicePK_Item[3305126]["RewardItem"][1]["Attr"] = "0 5 0 2880 1"
	-- tInterServicePK_Item[3305126]["RewardItem"][2] = {}
	-- tInterServicePK_Item[3305126]["RewardItem"][2]["Id"] = 3306367
	-- tInterServicePK_Item[3305126]["RewardItem"][2]["Attr"] = "0 10"
	tInterServicePK_Item[3305126]["RewardItem"][2] = {}
	tInterServicePK_Item[3305126]["RewardItem"][2]["Id"] = 3311759
	tInterServicePK_Item[3305126]["RewardItem"][2]["Attr"] = "0 5 3"
	-- tInterServicePK_Item[3305126]["RewardItem"][3] = {}
	-- tInterServicePK_Item[3305126]["RewardItem"][3]["Id"] = 3309765
	-- tInterServicePK_Item[3305126]["RewardItem"][3]["Attr"] = "0 500"
	-- tInterServicePK_Item[3305126]["RewardEMoneyMono"] = {}
	-- tInterServicePK_Item[3305126]["RewardEMoneyMono"]["Value"] = 2000
	-- tInterServicePK_Item[3305126]["RewardStrengthValue"] = {}
	-- tInterServicePK_Item[3305126]["RewardStrengthValue"]["Value"] = 10000
	
	-- 110-119亚军奖励
	-- 晶莹星陨石*3
	-- 8000气力值
	tInterServicePK_Item[3305127] = {}
	tInterServicePK_Item[3305127]["LogId"] = 18000133
	tInterServicePK_Item[3305127]["DeleteItem"] = {}
	tInterServicePK_Item[3305127]["DeleteItem"][1] = {}
	tInterServicePK_Item[3305127]["DeleteItem"][1]["Id"] = 3305127
	tInterServicePK_Item[3305127]["RewardItem"] = {}
	-- tInterServicePK_Item[3305127]["RewardItem"][1] = {}
	-- tInterServicePK_Item[3305127]["RewardItem"][1]["Id"] = 3009002
	-- tInterServicePK_Item[3305127]["RewardItem"][1]["Attr"] = "0 3 0 2880 1"
	tInterServicePK_Item[3305127]["RewardItem"][1] = {}
	tInterServicePK_Item[3305127]["RewardItem"][1]["Id"] = 4060001
	tInterServicePK_Item[3305127]["RewardItem"][1]["Attr"] = "0 80"
	-- tInterServicePK_Item[3305127]["RewardItem"][2] = {}
	-- tInterServicePK_Item[3305127]["RewardItem"][2]["Id"] = 3306367
	-- tInterServicePK_Item[3305127]["RewardItem"][2]["Attr"] = "0 8"
	tInterServicePK_Item[3305127]["RewardItem"][2] = {}
	tInterServicePK_Item[3305127]["RewardItem"][2]["Id"] = 3311759
	tInterServicePK_Item[3305127]["RewardItem"][2]["Attr"] = "0 3 3"
	-- tInterServicePK_Item[3305127]["RewardItem"][3] = {}
	-- tInterServicePK_Item[3305127]["RewardItem"][3]["Id"] = 3309765
	-- tInterServicePK_Item[3305127]["RewardItem"][3]["Attr"] = "0 300"
	-- tInterServicePK_Item[3305127]["RewardEMoneyMono"] = {}
	-- tInterServicePK_Item[3305127]["RewardEMoneyMono"]["Value"] = 1500
	-- tInterServicePK_Item[3305127]["RewardStrengthValue"] = {}
	-- tInterServicePK_Item[3305127]["RewardStrengthValue"]["Value"] = 8000
	
	-- 110-119季军奖励
	-- 晶莹星陨石*2
	-- 6000气力值
	tInterServicePK_Item[3305128] = {}
	tInterServicePK_Item[3305128]["LogId"] = 18000133
	tInterServicePK_Item[3305128]["DeleteItem"] = {}
	tInterServicePK_Item[3305128]["DeleteItem"][1] = {}
	tInterServicePK_Item[3305128]["DeleteItem"][1]["Id"] = 3305128
	tInterServicePK_Item[3305128]["RewardItem"] = {}
	tInterServicePK_Item[3305128]["RewardItem"] = {}
	-- tInterServicePK_Item[3305128]["RewardItem"][1] = {}
	-- tInterServicePK_Item[3305128]["RewardItem"][1]["Id"] = 3009002
	-- tInterServicePK_Item[3305128]["RewardItem"][1]["Attr"] = "0 2 0 2880 1"
	tInterServicePK_Item[3305128]["RewardItem"][1] = {}
	tInterServicePK_Item[3305128]["RewardItem"][1]["Id"] = 4060001
	tInterServicePK_Item[3305128]["RewardItem"][1]["Attr"] = "0 60"
	-- tInterServicePK_Item[3305128]["RewardItem"][2] = {}
	-- tInterServicePK_Item[3305128]["RewardItem"][2]["Id"] = 3306367
	-- tInterServicePK_Item[3305128]["RewardItem"][2]["Attr"] = "0 5"
	-- tInterServicePK_Item[3305128]["RewardItem"][3] = {}
	-- tInterServicePK_Item[3305128]["RewardItem"][3]["Id"] = 3309765
	-- tInterServicePK_Item[3305128]["RewardItem"][3]["Attr"] = "0 200"
	tInterServicePK_Item[3305128]["RewardItem"][2] = {}
	tInterServicePK_Item[3305128]["RewardItem"][2]["Id"] = 3311759
	tInterServicePK_Item[3305128]["RewardItem"][2]["Attr"] = "0 2 3"
	-- tInterServicePK_Item[3305128]["RewardEMoneyMono"] = {}
	-- tInterServicePK_Item[3305128]["RewardEMoneyMono"]["Value"] = 1000
	-- tInterServicePK_Item[3305128]["RewardStrengthValue"] = {}
	-- tInterServicePK_Item[3305128]["RewardStrengthValue"]["Value"] = 6000
	
	-- 110-119八强奖励
	-- 晶莹星陨石*1
	-- 3000气力值
	tInterServicePK_Item[3305129] = {}
	tInterServicePK_Item[3305129]["LogId"] = 18000133
	tInterServicePK_Item[3305129]["DeleteItem"] = {}
	tInterServicePK_Item[3305129]["DeleteItem"][1] = {}
	tInterServicePK_Item[3305129]["DeleteItem"][1]["Id"] = 3305129
	tInterServicePK_Item[3305129]["RewardItem"] = {}
	-- tInterServicePK_Item[3305129]["RewardItem"][1] = {}
	-- tInterServicePK_Item[3305129]["RewardItem"][1]["Id"] = 3009002
	-- tInterServicePK_Item[3305129]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tInterServicePK_Item[3305129]["RewardItem"][1] = {}
	tInterServicePK_Item[3305129]["RewardItem"][1]["Id"] = 4060001
	tInterServicePK_Item[3305129]["RewardItem"][1]["Attr"] = "0 30"
	-- tInterServicePK_Item[3305129]["RewardItem"][2] = {}
	-- tInterServicePK_Item[3305129]["RewardItem"][2]["Id"] = 3306367
	-- tInterServicePK_Item[3305129]["RewardItem"][2]["Attr"] = "0 3"
	-- tInterServicePK_Item[3305129]["RewardItem"][3] = {}
	-- tInterServicePK_Item[3305129]["RewardItem"][3]["Id"] = 3309765
	-- tInterServicePK_Item[3305129]["RewardItem"][3]["Attr"] = "0 100"
	tInterServicePK_Item[3305129]["RewardItem"][2] = {}
	tInterServicePK_Item[3305129]["RewardItem"][2]["Id"] = 3311759
	tInterServicePK_Item[3305129]["RewardItem"][2]["Attr"] = "0 1 3"
	-- tInterServicePK_Item[3305129]["RewardEMoneyMono"] = {}
	-- tInterServicePK_Item[3305129]["RewardEMoneyMono"]["Value"] = 500
	-- tInterServicePK_Item[3305129]["RewardStrengthValue"] = {}
	-- tInterServicePK_Item[3305129]["RewardStrengthValue"]["Value"] = 3000
	
	-- 参与奖
	-- 明亮星陨石*3
	-- 1000气力值
	tInterServicePK_Item[3305130] = {}
	tInterServicePK_Item[3305130]["LogId"] = 18000133
	tInterServicePK_Item[3305130]["DeleteItem"] = {}
	tInterServicePK_Item[3305130]["DeleteItem"][1] = {}
	tInterServicePK_Item[3305130]["DeleteItem"][1]["Id"] = 3305130
	tInterServicePK_Item[3305130]["RewardItem"] = {}
	tInterServicePK_Item[3305130]["RewardItem"][1] = {}
	tInterServicePK_Item[3305130]["RewardItem"][1]["Id"] = 3009001
	tInterServicePK_Item[3305130]["RewardItem"][1]["Attr"] = "0 3 0 2880 1"
	-- tInterServicePK_Item[3305130]["RewardItem"][2] = {}
	-- tInterServicePK_Item[3305130]["RewardItem"][2]["Id"] = 3309765
	-- tInterServicePK_Item[3305130]["RewardItem"][2]["Attr"] = "0 30"
	tInterServicePK_Item[3305130]["RewardStrengthValue"] = {}
	tInterServicePK_Item[3305130]["RewardStrengthValue"]["Value"] = 1000
	
	-- 日常跨服精英积分包
	tInterServicePK_Item[3300034] = {}
	tInterServicePK_Item[3300034]["ItemChanceSum"] = 10000
	tInterServicePK_Item[3300034]["LogId"] = 18000133
	
	tInterServicePK_Item[3300034][1] = {}
	tInterServicePK_Item[3300034][1]["RandomItemChanceType"] = 2
	tInterServicePK_Item[3300034][1]["ItemChance"] = 5000
	tInterServicePK_Item[3300034][1]["RewardItem"] = {}
	tInterServicePK_Item[3300034][1]["RewardItem"][1] = {}
	tInterServicePK_Item[3300034][1]["RewardItem"][1]["Id"] = 3300035
	tInterServicePK_Item[3300034][1]["RewardItem"][1]["Attr"] = "0 30"
	
	tInterServicePK_Item[3300034][2] = {}
	tInterServicePK_Item[3300034][2]["RandomItemChanceType"] = 2
	tInterServicePK_Item[3300034][2]["ItemChance"] = 3000
	tInterServicePK_Item[3300034][2]["RewardItem"] = {}
	tInterServicePK_Item[3300034][2]["RewardItem"][1] = {}
	tInterServicePK_Item[3300034][2]["RewardItem"][1]["Id"] = 3300035
	tInterServicePK_Item[3300034][2]["RewardItem"][1]["Attr"] = "0 50"
	
	tInterServicePK_Item[3300034][3] = {}
	tInterServicePK_Item[3300034][3]["RandomItemChanceType"] = 2
	tInterServicePK_Item[3300034][3]["ItemChance"] = 1900
	tInterServicePK_Item[3300034][3]["RewardItem"] = {}
	tInterServicePK_Item[3300034][3]["RewardItem"][1] = {}
	tInterServicePK_Item[3300034][3]["RewardItem"][1]["Id"] = 3300035
	tInterServicePK_Item[3300034][3]["RewardItem"][1]["Attr"] = "0 80"
	
	tInterServicePK_Item[3300034][4] = {}
	tInterServicePK_Item[3300034][4]["RandomItemChanceType"] = 2
	tInterServicePK_Item[3300034][4]["ItemChance"] = 100
	tInterServicePK_Item[3300034][4]["GlobalId"] = 51338
	tInterServicePK_Item[3300034][4]["Pos"] = 0
	tInterServicePK_Item[3300034][4]["MaxData"] = 2
	tInterServicePK_Item[3300034][4]["FullIndex"] = 1
	tInterServicePK_Item[3300034][4]["RewardItem"] = {}
	tInterServicePK_Item[3300034][4]["RewardItem"][1] = {}
	tInterServicePK_Item[3300034][4]["RewardItem"][1]["Id"] = 3300020
	tInterServicePK_Item[3300034][4]["RewardItem"][1]["Attr"] = "0 1"
	
	-- 凤凰坐骑碎片
	tInterServicePK_Item[3300036] = {}
	tInterServicePK_Item[3300036]["LogId"] = 18000133
	tInterServicePK_Item[3300036]["DeleteItem"] = {}
	tInterServicePK_Item[3300036]["DeleteItem"][1] = {}
	tInterServicePK_Item[3300036]["DeleteItem"][1]["Id"] = 3300036
	tInterServicePK_Item[3300036]["DeleteItem"][1]["ItemNum"] = 50
	tInterServicePK_Item[3300036]["DeleteItem"][1]["NoItem"] = tInterServicePK_Text[3300036]["NoItem"]
	tInterServicePK_Item[3300036]["RewardItem"] = {}
	tInterServicePK_Item[3300036]["RewardItem"][1] = {}
	tInterServicePK_Item[3300036]["RewardItem"][1]["Id"] = 200575
	tInterServicePK_Item[3300036]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	
	-- 15天银色屠龙礼包
	tInterServicePK_Item[3300037] = {}
	-- 长武
	tInterServicePK_Item[3300037][1] = {}
	tInterServicePK_Item[3300037][1]["LogId"] = 18000133
	tInterServicePK_Item[3300037][1]["DeleteItem"] = {}
	tInterServicePK_Item[3300037][1]["DeleteItem"][1] = {}
	tInterServicePK_Item[3300037][1]["DeleteItem"][1]["Id"] = 3300037
	tInterServicePK_Item[3300037][1]["RewardItem"] = {}
	tInterServicePK_Item[3300037][1]["RewardItem"][1] = {}
	tInterServicePK_Item[3300037][1]["RewardItem"][1]["Id"] = 350103
	tInterServicePK_Item[3300037][1]["RewardItem"][1]["Attr"] = "0 1 3 21600 1 0 0 1"
	-- 短武
	tInterServicePK_Item[3300037][2] = {}
	tInterServicePK_Item[3300037][2]["LogId"] = 18000133
	tInterServicePK_Item[3300037][2]["DeleteItem"] = {}
	tInterServicePK_Item[3300037][2]["DeleteItem"][1] = {}
	tInterServicePK_Item[3300037][2]["DeleteItem"][1]["Id"] = 3300037
	tInterServicePK_Item[3300037][2]["RewardItem"] = {}
	tInterServicePK_Item[3300037][2]["RewardItem"][1] = {}
	tInterServicePK_Item[3300037][2]["RewardItem"][1]["Id"] = 360201
	tInterServicePK_Item[3300037][2]["RewardItem"][1]["Attr"] = "0 1 3 21600 1 0 0 1"
	
	-- 30天银色屠龙礼包
	tInterServicePK_Item[3300038] = {}
	-- 长武
	tInterServicePK_Item[3300038][1] = {}
	tInterServicePK_Item[3300038][1]["LogId"] = 18000133
	tInterServicePK_Item[3300038][1]["DeleteItem"] = {}
	tInterServicePK_Item[3300038][1]["DeleteItem"][1] = {}
	tInterServicePK_Item[3300038][1]["DeleteItem"][1]["Id"] = 3300038
	tInterServicePK_Item[3300038][1]["RewardItem"] = {}
	tInterServicePK_Item[3300038][1]["RewardItem"][1] = {}
	tInterServicePK_Item[3300038][1]["RewardItem"][1]["Id"] = 350103
	tInterServicePK_Item[3300038][1]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	-- 短武
	tInterServicePK_Item[3300038][2] = {}
	tInterServicePK_Item[3300038][2]["LogId"] = 18000133
	tInterServicePK_Item[3300038][2]["DeleteItem"] = {}
	tInterServicePK_Item[3300038][2]["DeleteItem"][1] = {}
	tInterServicePK_Item[3300038][2]["DeleteItem"][1]["Id"] = 3300038
	tInterServicePK_Item[3300038][2]["RewardItem"] = {}
	tInterServicePK_Item[3300038][2]["RewardItem"][1] = {}
	tInterServicePK_Item[3300038][2]["RewardItem"][1]["Id"] = 360201
	tInterServicePK_Item[3300038][2]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	
	-- 15天金色屠龙礼包
	tInterServicePK_Item[3300039] = {}
	-- 长武
	tInterServicePK_Item[3300039][1] = {}
	tInterServicePK_Item[3300039][1]["LogId"] = 18000133
	tInterServicePK_Item[3300039][1]["DeleteItem"] = {}
	tInterServicePK_Item[3300039][1]["DeleteItem"][1] = {}
	tInterServicePK_Item[3300039][1]["DeleteItem"][1]["Id"] = 3300039
	tInterServicePK_Item[3300039][1]["RewardItem"] = {}
	tInterServicePK_Item[3300039][1]["RewardItem"][1] = {}
	tInterServicePK_Item[3300039][1]["RewardItem"][1]["Id"] = 350104
	tInterServicePK_Item[3300039][1]["RewardItem"][1]["Attr"] = "0 1 3 21600 1 0 0 1"
	-- 短武
	tInterServicePK_Item[3300039][2] = {}
	tInterServicePK_Item[3300039][2]["LogId"] = 18000133
	tInterServicePK_Item[3300039][2]["DeleteItem"] = {}
	tInterServicePK_Item[3300039][2]["DeleteItem"][1] = {}
	tInterServicePK_Item[3300039][2]["DeleteItem"][1]["Id"] = 3300039
	tInterServicePK_Item[3300039][2]["RewardItem"] = {}
	tInterServicePK_Item[3300039][2]["RewardItem"][1] = {}
	tInterServicePK_Item[3300039][2]["RewardItem"][1]["Id"] = 360202
	tInterServicePK_Item[3300039][2]["RewardItem"][1]["Attr"] = "0 1 3 21600 1 0 0 1"
	
	-- 30天金色屠龙礼包
	tInterServicePK_Item[3300040] = {}
	-- 长武
	tInterServicePK_Item[3300040][1] = {}
	tInterServicePK_Item[3300040][1]["LogId"] = 18000133
	tInterServicePK_Item[3300040][1]["DeleteItem"] = {}
	tInterServicePK_Item[3300040][1]["DeleteItem"][1] = {}
	tInterServicePK_Item[3300040][1]["DeleteItem"][1]["Id"] = 3300040
	tInterServicePK_Item[3300040][1]["RewardItem"] = {}
	tInterServicePK_Item[3300040][1]["RewardItem"][1] = {}
	tInterServicePK_Item[3300040][1]["RewardItem"][1]["Id"] = 350104
	tInterServicePK_Item[3300040][1]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	-- 短武
	tInterServicePK_Item[3300040][2] = {}
	tInterServicePK_Item[3300040][2]["LogId"] = 18000133
	tInterServicePK_Item[3300040][2]["DeleteItem"] = {}
	tInterServicePK_Item[3300040][2]["DeleteItem"][1] = {}
	tInterServicePK_Item[3300040][2]["DeleteItem"][1]["Id"] = 3300040
	tInterServicePK_Item[3300040][2]["RewardItem"] = {}
	tInterServicePK_Item[3300040][2]["RewardItem"][1] = {}
	tInterServicePK_Item[3300040][2]["RewardItem"][1]["Id"] = 360202
	tInterServicePK_Item[3300040][2]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	
	-- 15天猴锤子礼包
	tInterServicePK_Item[3300041] = {}
	tInterServicePK_Item[3300041]["LogId"] = 18000133
	tInterServicePK_Item[3300041]["DeleteItem"] = {}
	tInterServicePK_Item[3300041]["DeleteItem"][1] = {}
	tInterServicePK_Item[3300041]["DeleteItem"][1]["Id"] = 3300041
	tInterServicePK_Item[3300041]["RewardItem"] = {}
	tInterServicePK_Item[3300041]["RewardItem"][1] = {}
	tInterServicePK_Item[3300041]["RewardItem"][1]["Id"] = 360086
	tInterServicePK_Item[3300041]["RewardItem"][1]["Attr"] = "0 1 3 21600 1 0 0 1"
	
	-- 30天猴锤子礼包
	tInterServicePK_Item[3300042] = {}
	tInterServicePK_Item[3300042]["LogId"] = 18000133
	tInterServicePK_Item[3300042]["DeleteItem"] = {}
	tInterServicePK_Item[3300042]["DeleteItem"][1] = {}
	tInterServicePK_Item[3300042]["DeleteItem"][1]["Id"] = 3300042
	tInterServicePK_Item[3300042]["RewardItem"] = {}
	tInterServicePK_Item[3300042]["RewardItem"][1] = {}
	tInterServicePK_Item[3300042]["RewardItem"][1]["Id"] = 360086
	tInterServicePK_Item[3300042]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	
	-- 15天鸡锤子礼包
	tInterServicePK_Item[3300043] = {}
	tInterServicePK_Item[3300043]["LogId"] = 18000133
	tInterServicePK_Item[3300043]["DeleteItem"] = {}
	tInterServicePK_Item[3300043]["DeleteItem"][1] = {}
	tInterServicePK_Item[3300043]["DeleteItem"][1]["Id"] = 3300043
	tInterServicePK_Item[3300043]["RewardItem"] = {}
	tInterServicePK_Item[3300043]["RewardItem"][1] = {}
	tInterServicePK_Item[3300043]["RewardItem"][1]["Id"] = 360087
	tInterServicePK_Item[3300043]["RewardItem"][1]["Attr"] = "0 1 3 21600 1 0 0 1"
	
	-- 30天鸡锤子礼包
	tInterServicePK_Item[3300044] = {}
	tInterServicePK_Item[3300044]["LogId"] = 18000133
	tInterServicePK_Item[3300044]["DeleteItem"] = {}
	tInterServicePK_Item[3300044]["DeleteItem"][1] = {}
	tInterServicePK_Item[3300044]["DeleteItem"][1]["Id"] = 3300044
	tInterServicePK_Item[3300044]["RewardItem"] = {}
	tInterServicePK_Item[3300044]["RewardItem"][1] = {}
	tInterServicePK_Item[3300044]["RewardItem"][1]["Id"] = 360087
	tInterServicePK_Item[3300044]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"

	-- 30天佩饰（葫芦级）
	tInterServicePK_Item[3300046] = {}
	tInterServicePK_Item[3300046]["LogId"] = 18000133
	tInterServicePK_Item[3300046]["DeleteItem"] = {}
	tInterServicePK_Item[3300046]["DeleteItem"][1] = {}
	tInterServicePK_Item[3300046]["DeleteItem"][1]["Id"] = 3300046
	tInterServicePK_Item[3300046]["RewardItem"] = {}
	tInterServicePK_Item[3300046]["RewardItem"][1] = {}
	tInterServicePK_Item[3300046]["RewardItem"][1]["Id"] = 2100185
	tInterServicePK_Item[3300046]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	
	-- 30天佩饰（铜杯级）
	tInterServicePK_Item[3300047] = {}
	tInterServicePK_Item[3300047]["LogId"] = 18000133
	tInterServicePK_Item[3300047]["DeleteItem"] = {}
	tInterServicePK_Item[3300047]["DeleteItem"][1] = {}
	tInterServicePK_Item[3300047]["DeleteItem"][1]["Id"] = 3300047
	tInterServicePK_Item[3300047]["RewardItem"] = {}
	tInterServicePK_Item[3300047]["RewardItem"][1] = {}
	tInterServicePK_Item[3300047]["RewardItem"][1]["Id"] = 2100195
	tInterServicePK_Item[3300047]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	
	-- 30天佩饰（银杯级）
	tInterServicePK_Item[3300048] = {}
	tInterServicePK_Item[3300048]["LogId"] = 18000133
	tInterServicePK_Item[3300048]["DeleteItem"] = {}
	tInterServicePK_Item[3300048]["DeleteItem"][1] = {}
	tInterServicePK_Item[3300048]["DeleteItem"][1]["Id"] = 3300048
	tInterServicePK_Item[3300048]["RewardItem"] = {}
	tInterServicePK_Item[3300048]["RewardItem"][1] = {}
	tInterServicePK_Item[3300048]["RewardItem"][1]["Id"] = 2100205
	tInterServicePK_Item[3300048]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	
	-- 1000气力特惠补充包
	tInterServicePK_Item[3300050] = {}
	tInterServicePK_Item[3300050]["LogId"] = 18000133
	tInterServicePK_Item[3300050]["DeleteItem"] = {}
	tInterServicePK_Item[3300050]["DeleteItem"][1] = {}
	tInterServicePK_Item[3300050]["DeleteItem"][1]["Id"] = 3300050
	tInterServicePK_Item[3300050]["RewardStrengthValue"] = {}
	tInterServicePK_Item[3300050]["RewardStrengthValue"]["Value"] = 1000

	-- 微光星陨石礼盒
	tInterServicePK_Item[3300051] = {}
	tInterServicePK_Item[3300051]["LogId"] = 18000133
	tInterServicePK_Item[3300051]["DeleteItem"] = {}
	tInterServicePK_Item[3300051]["DeleteItem"][1] = {}
	tInterServicePK_Item[3300051]["DeleteItem"][1]["Id"] = 3300051
	tInterServicePK_Item[3300051]["RewardItem"] = {}
	tInterServicePK_Item[3300051]["RewardItem"][1] = {}
	tInterServicePK_Item[3300051]["RewardItem"][1]["Id"] = 3009000
	tInterServicePK_Item[3300051]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	
	-- 明亮星陨石礼盒
	tInterServicePK_Item[3300052] = {}
	tInterServicePK_Item[3300052]["LogId"] = 18000133
	tInterServicePK_Item[3300052]["DeleteItem"] = {}
	tInterServicePK_Item[3300052]["DeleteItem"][1] = {}
	tInterServicePK_Item[3300052]["DeleteItem"][1]["Id"] = 3300052
	tInterServicePK_Item[3300052]["RewardItem"] = {}
	tInterServicePK_Item[3300052]["RewardItem"][1] = {}
	tInterServicePK_Item[3300052]["RewardItem"][1]["Id"] = 3009001
	tInterServicePK_Item[3300052]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	
	-- 铜杯碎片
	tInterServicePK_Item[3300053] = {}
	tInterServicePK_Item[3300053]["LogId"] = 18000133
	tInterServicePK_Item[3300053]["DeleteItem"] = {}
	tInterServicePK_Item[3300053]["DeleteItem"][1] = {}
	tInterServicePK_Item[3300053]["DeleteItem"][1]["Id"] = 3300053
	tInterServicePK_Item[3300053]["DeleteItem"][1]["ItemNum"] = 15
	tInterServicePK_Item[3300053]["DeleteItem"][1]["NoItem"] = tInterServicePK_Text[3300053]["NoItem"]
	tInterServicePK_Item[3300053]["RewardItem"] = {}
	tInterServicePK_Item[3300053]["RewardItem"][1] = {}
	tInterServicePK_Item[3300053]["RewardItem"][1]["Id"] = 2100195
	tInterServicePK_Item[3300053]["RewardItem"][1]["Attr"] = "0 1 0 86400 1 0 0 1"
	
	-- 银杯碎片
	tInterServicePK_Item[3300054] = {}
	tInterServicePK_Item[3300054]["LogId"] = 18000133
	tInterServicePK_Item[3300054]["DeleteItem"] = {}
	tInterServicePK_Item[3300054]["DeleteItem"][1] = {}
	tInterServicePK_Item[3300054]["DeleteItem"][1]["Id"] = 3300054
	tInterServicePK_Item[3300054]["DeleteItem"][1]["ItemNum"] = 20
	tInterServicePK_Item[3300054]["DeleteItem"][1]["NoItem"] = tInterServicePK_Text[3300054]["NoItem"]
	tInterServicePK_Item[3300054]["RewardItem"] = {}
	tInterServicePK_Item[3300054]["RewardItem"][1] = {}
	tInterServicePK_Item[3300054]["RewardItem"][1]["Id"] = 2100205
	tInterServicePK_Item[3300054]["RewardItem"][1]["Attr"] = "0 1 0 129600 1 0 0 1"
	
	-- 金杯碎片
	tInterServicePK_Item[3300055] = {}
	tInterServicePK_Item[3300055]["LogId"] = 18000133
	tInterServicePK_Item[3300055]["DeleteItem"] = {}
	tInterServicePK_Item[3300055]["DeleteItem"][1] = {}
	tInterServicePK_Item[3300055]["DeleteItem"][1]["Id"] = 3300055
	tInterServicePK_Item[3300055]["DeleteItem"][1]["ItemNum"] = 30
	tInterServicePK_Item[3300055]["DeleteItem"][1]["NoItem"] = tInterServicePK_Text[3300055]["NoItem"]
	tInterServicePK_Item[3300055]["RewardItem"] = {}
	tInterServicePK_Item[3300055]["RewardItem"][1] = {}
	tInterServicePK_Item[3300055]["RewardItem"][1]["Id"] = 2100245
	tInterServicePK_Item[3300055]["RewardItem"][1]["Attr"] = "0 1 0 129600 1 0 0 1"
	
	-- 消费1
	-- 桃源灵玉*2、10积分 1天时效凤凰光效骑宠外套
	tInterServicePK_Item[3300057] = {}
	tInterServicePK_Item[3300057]["LogId"] = 18000133
	tInterServicePK_Item[3300057]["DeleteItem"] = {}
	tInterServicePK_Item[3300057]["DeleteItem"][1] = {}
	tInterServicePK_Item[3300057]["DeleteItem"][1]["Id"] = 3300057
	tInterServicePK_Item[3300057]["RewardItem"] = {}
	tInterServicePK_Item[3300057]["RewardItem"][1] = {}
	tInterServicePK_Item[3300057]["RewardItem"][1]["Id"] = 711504
	tInterServicePK_Item[3300057]["RewardItem"][1]["Attr"] = "0 2"
	tInterServicePK_Item[3300057]["RewardItem"][2] = {}
	tInterServicePK_Item[3300057]["RewardItem"][2]["Id"] = 3300035
	tInterServicePK_Item[3300057]["RewardItem"][2]["Attr"] = "0 10"
	tInterServicePK_Item[3300057]["RewardItem"][3] = {}
	tInterServicePK_Item[3300057]["RewardItem"][3]["Id"] = 200575
	tInterServicePK_Item[3300057]["RewardItem"][3]["Attr"] = "0 1 0 1440 1 0 0 1"
	
	-- 消费2
	-- 明亮星陨石*1、80积分 1天时效凤凰光效骑宠外套
	tInterServicePK_Item[3300058] = {}
	tInterServicePK_Item[3300058]["LogId"] = 18000133
	tInterServicePK_Item[3300058]["DeleteItem"] = {}
	tInterServicePK_Item[3300058]["DeleteItem"][1] = {}
	tInterServicePK_Item[3300058]["DeleteItem"][1]["Id"] = 3300058
	tInterServicePK_Item[3300058]["RewardItem"] = {}
	tInterServicePK_Item[3300058]["RewardItem"][1] = {}
	tInterServicePK_Item[3300058]["RewardItem"][1]["Id"] = 3009001
	tInterServicePK_Item[3300058]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tInterServicePK_Item[3300058]["RewardItem"][2] = {}
	tInterServicePK_Item[3300058]["RewardItem"][2]["Id"] = 3300035
	tInterServicePK_Item[3300058]["RewardItem"][2]["Attr"] = "0 80"
	tInterServicePK_Item[3300058]["RewardItem"][3] = {}
	tInterServicePK_Item[3300058]["RewardItem"][3]["Id"] = 200575
	tInterServicePK_Item[3300058]["RewardItem"][3]["Attr"] = "0 1 0 1440 1 0 0 1"
	
	-- 消费3
	-- 明亮星陨石*2（70点）、110积分（88点） 2天时效凤凰光效骑宠外套
	tInterServicePK_Item[3300059] = {}
	tInterServicePK_Item[3300059]["LogId"] = 18000133
	tInterServicePK_Item[3300059]["DeleteItem"] = {}
	tInterServicePK_Item[3300059]["DeleteItem"][1] = {}
	tInterServicePK_Item[3300059]["DeleteItem"][1]["Id"] = 3300059
	tInterServicePK_Item[3300059]["RewardItem"] = {}
	tInterServicePK_Item[3300059]["RewardItem"][1] = {}
	tInterServicePK_Item[3300059]["RewardItem"][1]["Id"] = 3009001
	tInterServicePK_Item[3300059]["RewardItem"][1]["Attr"] = "0 2 0 2880 1"
	tInterServicePK_Item[3300059]["RewardItem"][2] = {}
	tInterServicePK_Item[3300059]["RewardItem"][2]["Id"] = 3300035
	tInterServicePK_Item[3300059]["RewardItem"][2]["Attr"] = "0 110"
	tInterServicePK_Item[3300059]["RewardItem"][3] = {}
	tInterServicePK_Item[3300059]["RewardItem"][3]["Id"] = 200575
	tInterServicePK_Item[3300059]["RewardItem"][3]["Attr"] = "0 1 0 2880 1 0 0 1"
	
	-- 消费4
	-- 明亮星陨石*8（280点）、500积分（400点） 2天时效凤凰光效骑宠外套
	tInterServicePK_Item[3300121] = {}
	tInterServicePK_Item[3300121]["LogId"] = 18000133
	tInterServicePK_Item[3300121]["DeleteItem"] = {}
	tInterServicePK_Item[3300121]["DeleteItem"][1] = {}
	tInterServicePK_Item[3300121]["DeleteItem"][1]["Id"] = 3300121
	tInterServicePK_Item[3300121]["RewardItem"] = {}
	tInterServicePK_Item[3300121]["RewardItem"][1] = {}
	tInterServicePK_Item[3300121]["RewardItem"][1]["Id"] = 3009001
	tInterServicePK_Item[3300121]["RewardItem"][1]["Attr"] = "0 8 0 2880 1"
	tInterServicePK_Item[3300121]["RewardItem"][2] = {}
	tInterServicePK_Item[3300121]["RewardItem"][2]["Id"] = 3300035
	tInterServicePK_Item[3300121]["RewardItem"][2]["Attr"] = "0 500"
	tInterServicePK_Item[3300121]["RewardItem"][3] = {}
	tInterServicePK_Item[3300121]["RewardItem"][3]["Id"] = 200575
	tInterServicePK_Item[3300121]["RewardItem"][3]["Attr"] = "0 1 0 2880 1 0 0 1"
	
	-- 消费5
	-- 晶莹星陨石*1（350点）、500点气力值（150点）、800积分（640点） 4天时效凤凰光效骑宠外套
	tInterServicePK_Item[3300122] = {}
	tInterServicePK_Item[3300122]["LogId"] = 18000133
	tInterServicePK_Item[3300122]["DeleteItem"] = {}
	tInterServicePK_Item[3300122]["DeleteItem"][1] = {}
	tInterServicePK_Item[3300122]["DeleteItem"][1]["Id"] = 3300122
	tInterServicePK_Item[3300122]["RewardItem"] = {}
	tInterServicePK_Item[3300122]["RewardItem"][1] = {}
	tInterServicePK_Item[3300122]["RewardItem"][1]["Id"] = 3009002
	tInterServicePK_Item[3300122]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tInterServicePK_Item[3300122]["RewardItem"][2] = {}
	tInterServicePK_Item[3300122]["RewardItem"][2]["Id"] = 3300035
	tInterServicePK_Item[3300122]["RewardItem"][2]["Attr"] = "0 800"
	tInterServicePK_Item[3300122]["RewardItem"][3] = {}
	tInterServicePK_Item[3300122]["RewardItem"][3]["Id"] = 200575
	tInterServicePK_Item[3300122]["RewardItem"][3]["Attr"] = "0 1 0 5760 1 0 0 1"
	tInterServicePK_Item[3300122]["RewardStrengthValue"] = {}
	tInterServicePK_Item[3300122]["RewardStrengthValue"]["Value"] = 500

	-- 消费6
	-- 晶莹星陨石*1（350点）、1000点气力值（300点）、1000积分（800点） 6天时效凤凰光效骑宠外套
	tInterServicePK_Item[3300123] = {}
	tInterServicePK_Item[3300123]["LogId"] = 18000133
	tInterServicePK_Item[3300123]["DeleteItem"] = {}
	tInterServicePK_Item[3300123]["DeleteItem"][1] = {}
	tInterServicePK_Item[3300123]["DeleteItem"][1]["Id"] = 3300123
	tInterServicePK_Item[3300123]["RewardItem"] = {}
	tInterServicePK_Item[3300123]["RewardItem"][1] = {}
	tInterServicePK_Item[3300123]["RewardItem"][1]["Id"] = 3009002
	tInterServicePK_Item[3300123]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tInterServicePK_Item[3300123]["RewardItem"][2] = {}
	tInterServicePK_Item[3300123]["RewardItem"][2]["Id"] = 3300035
	tInterServicePK_Item[3300123]["RewardItem"][2]["Attr"] = "0 1000"
	tInterServicePK_Item[3300123]["RewardItem"][3] = {}
	tInterServicePK_Item[3300123]["RewardItem"][3]["Id"] = 200575
	tInterServicePK_Item[3300123]["RewardItem"][3]["Attr"] = "0 1 0 8640 1 0 0 1"
	tInterServicePK_Item[3300123]["RewardStrengthValue"] = {}
	tInterServicePK_Item[3300123]["RewardStrengthValue"]["Value"] = 1000

	-- 消费7
	-- 晶莹星陨石*4（1400点）、3000点气力值（900点）、1500积分（1200点） 6天时效凤凰光效骑宠外套
	tInterServicePK_Item[3300124] = {}
	tInterServicePK_Item[3300124]["LogId"] = 18000133
	tInterServicePK_Item[3300124]["DeleteItem"] = {}
	tInterServicePK_Item[3300124]["DeleteItem"][1] = {}
	tInterServicePK_Item[3300124]["DeleteItem"][1]["Id"] = 3300124
	tInterServicePK_Item[3300124]["RewardItem"] = {}
	tInterServicePK_Item[3300124]["RewardItem"][1] = {}
	tInterServicePK_Item[3300124]["RewardItem"][1]["Id"] = 3009002
	tInterServicePK_Item[3300124]["RewardItem"][1]["Attr"] = "0 4 0 2880 1"
	tInterServicePK_Item[3300124]["RewardItem"][2] = {}
	tInterServicePK_Item[3300124]["RewardItem"][2]["Id"] = 3300035
	tInterServicePK_Item[3300124]["RewardItem"][2]["Attr"] = "0 1500"
	tInterServicePK_Item[3300124]["RewardItem"][3] = {}
	tInterServicePK_Item[3300124]["RewardItem"][3]["Id"] = 200575
	tInterServicePK_Item[3300124]["RewardItem"][3]["Attr"] = "0 1 0 8640 1 0 0 1"
	tInterServicePK_Item[3300124]["RewardStrengthValue"] = {}
	tInterServicePK_Item[3300124]["RewardStrengthValue"]["Value"] = 3000

	-- 消费8
	-- 璀璨星陨石*1（4000天石）、晶莹星陨石*6（2100天石）、凤凰坐骑碎片*1、2500积分
	-- 8天时效凤凰光效骑宠外套
	tInterServicePK_Item[3300125] = {}
	tInterServicePK_Item[3300125]["LogId"] = 18000133
	tInterServicePK_Item[3300125]["DeleteItem"] = {}
	tInterServicePK_Item[3300125]["DeleteItem"][1] = {}
	tInterServicePK_Item[3300125]["DeleteItem"][1]["Id"] = 3300125
	tInterServicePK_Item[3300125]["RewardItem"] = {}
	tInterServicePK_Item[3300125]["RewardItem"][1] = {}
	tInterServicePK_Item[3300125]["RewardItem"][1]["Id"] = 3009002
	tInterServicePK_Item[3300125]["RewardItem"][1]["Attr"] = "0 6 0 2880 1"
	tInterServicePK_Item[3300125]["RewardItem"][2] = {}
	tInterServicePK_Item[3300125]["RewardItem"][2]["Id"] = 3300035
	tInterServicePK_Item[3300125]["RewardItem"][2]["Attr"] = "0 2500"
	tInterServicePK_Item[3300125]["RewardItem"][3] = {}
	tInterServicePK_Item[3300125]["RewardItem"][3]["Id"] = 3300036
	tInterServicePK_Item[3300125]["RewardItem"][3]["Attr"] = "0 1"
	tInterServicePK_Item[3300125]["RewardItem"][4] = {}
	tInterServicePK_Item[3300125]["RewardItem"][4]["Id"] = 3009003
	tInterServicePK_Item[3300125]["RewardItem"][4]["Attr"] = "0 1 0 2880 1"
	tInterServicePK_Item[3300125]["RewardItem"][5] = {}
	tInterServicePK_Item[3300125]["RewardItem"][5]["Id"] = 200575
	tInterServicePK_Item[3300125]["RewardItem"][5]["Attr"] = "0 1 0 11520 1 0 0 1"
	
	-- 精英佩饰材料*10
	tInterServicePK_Item[3300179] = {}
	tInterServicePK_Item[3300179]["LogId"] = 18000133
	tInterServicePK_Item[3300179]["DeleteItem"] = {}
	tInterServicePK_Item[3300179]["DeleteItem"][1] = {}
	tInterServicePK_Item[3300179]["DeleteItem"][1]["Id"] = 3300179
	tInterServicePK_Item[3300179]["RewardItem"] = {}
	tInterServicePK_Item[3300179]["RewardItem"][1] = {}
	tInterServicePK_Item[3300179]["RewardItem"][1]["Id"] = 3300056
	tInterServicePK_Item[3300179]["RewardItem"][1]["Attr"] = "0 10"

-- 报名	
local tInterServicePK_SignUp = {}
	tInterServicePK_SignUp["Talk"] = tInterServicePK_Text[19424]["Success"]
	tInterServicePK_SignUp["LogId"] = 18000133
	tInterServicePK_SignUp["RewardItem"] = {}
	tInterServicePK_SignUp["RewardItem"][1] = {}
	tInterServicePK_SignUp["RewardItem"][1]["Id"] = 3300020
	tInterServicePK_SignUp["RewardItem"][1]["Attr"] = "0 1"

--[[
-- 发送邮件给对应的奖励
local tInterServicePK_Reward = {}
	-- 110级组
	tInterServicePK_Reward[1] = {}
	tInterServicePK_Reward[1][1] = {}
	tInterServicePK_Reward[1][1]["ActionId"] = 94476178
	tInterServicePK_Reward[1][1]["Sender"] = tInterServicePK_Text[94476178]["Sender"]
	tInterServicePK_Reward[1][1]["Title"] = tInterServicePK_Text[94476178]["Title"]
	tInterServicePK_Reward[1][1]["Content"] = tInterServicePK_Text[94476178]["Content"]
	
	tInterServicePK_Reward[1][2] = {}
	tInterServicePK_Reward[1][2]["ActionId"] = 94476179
	tInterServicePK_Reward[1][2]["Sender"] = tInterServicePK_Text[94476179]["Sender"]
	tInterServicePK_Reward[1][2]["Title"] = tInterServicePK_Text[94476179]["Title"]
	tInterServicePK_Reward[1][2]["Content"] = tInterServicePK_Text[94476179]["Content"]
	
	tInterServicePK_Reward[1][3] = {}
	tInterServicePK_Reward[1][3]["ActionId"] = 94476180
	tInterServicePK_Reward[1][3]["Sender"] = tInterServicePK_Text[94476180]["Sender"]
	tInterServicePK_Reward[1][3]["Title"] = tInterServicePK_Text[94476180]["Title"]
	tInterServicePK_Reward[1][3]["Content"] = tInterServicePK_Text[94476180]["Content"]
	
	tInterServicePK_Reward[1][4] = {}
	tInterServicePK_Reward[1][4]["ActionId"] = 94476181
	tInterServicePK_Reward[1][4]["Sender"] = tInterServicePK_Text[94476181]["Sender"]
	tInterServicePK_Reward[1][4]["Title"] = tInterServicePK_Text[94476181]["Title"]
	tInterServicePK_Reward[1][4]["Content"] = tInterServicePK_Text[94476181]["Content"]
	
	-- 120级组
	tInterServicePK_Reward[2] = {}
	tInterServicePK_Reward[2][1] = {}
	tInterServicePK_Reward[2][1]["ActionId"] = 94476174
	tInterServicePK_Reward[2][1]["Sender"] = tInterServicePK_Text[94476174]["Sender"]
	tInterServicePK_Reward[2][1]["Title"] = tInterServicePK_Text[94476174]["Title"]
	tInterServicePK_Reward[2][1]["Content"] = tInterServicePK_Text[94476174]["Content"]
	
	tInterServicePK_Reward[2][2] = {}
	tInterServicePK_Reward[2][2]["ActionId"] = 94476175
	tInterServicePK_Reward[2][2]["Sender"] = tInterServicePK_Text[94476175]["Sender"]
	tInterServicePK_Reward[2][2]["Title"] = tInterServicePK_Text[94476175]["Title"]
	tInterServicePK_Reward[2][2]["Content"] = tInterServicePK_Text[94476175]["Content"]
	
	tInterServicePK_Reward[2][3] = {}
	tInterServicePK_Reward[2][3]["ActionId"] = 94476176
	tInterServicePK_Reward[2][3]["Sender"] = tInterServicePK_Text[94476176]["Sender"]
	tInterServicePK_Reward[2][3]["Title"] = tInterServicePK_Text[94476176]["Title"]
	tInterServicePK_Reward[2][3]["Content"] = tInterServicePK_Text[94476176]["Content"]
	
	tInterServicePK_Reward[2][4] = {}
	tInterServicePK_Reward[2][4]["ActionId"] = 94476177
	tInterServicePK_Reward[2][4]["Sender"] = tInterServicePK_Text[94476177]["Sender"]
	tInterServicePK_Reward[2][4]["Title"] = tInterServicePK_Text[94476177]["Title"]
	tInterServicePK_Reward[2][4]["Content"] = tInterServicePK_Text[94476177]["Content"]
	
	-- 130级组
	tInterServicePK_Reward[3] = {}
	tInterServicePK_Reward[3][1] = {}
	tInterServicePK_Reward[3][1]["ActionId"] = 94476170
	tInterServicePK_Reward[3][1]["Sender"] = tInterServicePK_Text[94476170]["Sender"]
	tInterServicePK_Reward[3][1]["Title"] = tInterServicePK_Text[94476170]["Title"]
	tInterServicePK_Reward[3][1]["Content"] = tInterServicePK_Text[94476170]["Content"]
	
	tInterServicePK_Reward[3][2] = {}
	tInterServicePK_Reward[3][2]["ActionId"] = 94476171
	tInterServicePK_Reward[3][2]["Sender"] = tInterServicePK_Text[94476171]["Sender"]
	tInterServicePK_Reward[3][2]["Title"] = tInterServicePK_Text[94476171]["Title"]
	tInterServicePK_Reward[3][2]["Content"] = tInterServicePK_Text[94476171]["Content"]
	
	tInterServicePK_Reward[3][3] = {}
	tInterServicePK_Reward[3][3]["ActionId"] = 94476172
	tInterServicePK_Reward[3][3]["Sender"] = tInterServicePK_Text[94476172]["Sender"]
	tInterServicePK_Reward[3][3]["Title"] = tInterServicePK_Text[94476172]["Title"]
	tInterServicePK_Reward[3][3]["Content"] = tInterServicePK_Text[94476172]["Content"]
	
	tInterServicePK_Reward[3][4] = {}
	tInterServicePK_Reward[3][4]["ActionId"] = 94476173
	tInterServicePK_Reward[3][4]["Sender"] = tInterServicePK_Text[94476173]["Sender"]
	tInterServicePK_Reward[3][4]["Title"] = tInterServicePK_Text[94476173]["Title"]
	tInterServicePK_Reward[3][4]["Content"] = tInterServicePK_Text[94476173]["Content"]
--]]
	
-- 全区全服测试的发奖	
local tInterServicePK_Reward = {}
	-- 110级组
	tInterServicePK_Reward[1] = {}
	tInterServicePK_Reward[1][1] = {}
	tInterServicePK_Reward[1][1]["ActionId"] = 566320
	tInterServicePK_Reward[1][1]["Sender"] = tInterServicePK_Text[94476178]["Sender"]
	tInterServicePK_Reward[1][1]["Title"] = tInterServicePK_Text[94476178]["Title"]
	tInterServicePK_Reward[1][1]["Content"] = tInterServicePK_Text[94476178]["Content"]
	
	tInterServicePK_Reward[1][2] = {}
	tInterServicePK_Reward[1][2]["ActionId"] = 566321
	tInterServicePK_Reward[1][2]["Sender"] = tInterServicePK_Text[94476179]["Sender"]
	tInterServicePK_Reward[1][2]["Title"] = tInterServicePK_Text[94476179]["Title"]
	tInterServicePK_Reward[1][2]["Content"] = tInterServicePK_Text[94476179]["Content"]
	
	tInterServicePK_Reward[1][3] = {}
	tInterServicePK_Reward[1][3]["ActionId"] = 566322
	tInterServicePK_Reward[1][3]["Sender"] = tInterServicePK_Text[94476180]["Sender"]
	tInterServicePK_Reward[1][3]["Title"] = tInterServicePK_Text[94476180]["Title"]
	tInterServicePK_Reward[1][3]["Content"] = tInterServicePK_Text[94476180]["Content"]
	
	tInterServicePK_Reward[1][4] = {}
	tInterServicePK_Reward[1][4]["ActionId"] = 566323
	tInterServicePK_Reward[1][4]["Sender"] = tInterServicePK_Text[94476181]["Sender"]
	tInterServicePK_Reward[1][4]["Title"] = tInterServicePK_Text[94476181]["Title"]
	tInterServicePK_Reward[1][4]["Content"] = tInterServicePK_Text[94476181]["Content"]
	
	-- 120级组
	tInterServicePK_Reward[2] = {}
	tInterServicePK_Reward[2][1] = {}
	tInterServicePK_Reward[2][1]["ActionId"] = 566316
	tInterServicePK_Reward[2][1]["Sender"] = tInterServicePK_Text[94476174]["Sender"]
	tInterServicePK_Reward[2][1]["Title"] = tInterServicePK_Text[94476174]["Title"]
	tInterServicePK_Reward[2][1]["Content"] = tInterServicePK_Text[94476174]["Content"]
	
	tInterServicePK_Reward[2][2] = {}
	tInterServicePK_Reward[2][2]["ActionId"] = 566317
	tInterServicePK_Reward[2][2]["Sender"] = tInterServicePK_Text[94476175]["Sender"]
	tInterServicePK_Reward[2][2]["Title"] = tInterServicePK_Text[94476175]["Title"]
	tInterServicePK_Reward[2][2]["Content"] = tInterServicePK_Text[94476175]["Content"]
	
	tInterServicePK_Reward[2][3] = {}
	tInterServicePK_Reward[2][3]["ActionId"] = 566318
	tInterServicePK_Reward[2][3]["Sender"] = tInterServicePK_Text[94476176]["Sender"]
	tInterServicePK_Reward[2][3]["Title"] = tInterServicePK_Text[94476176]["Title"]
	tInterServicePK_Reward[2][3]["Content"] = tInterServicePK_Text[94476176]["Content"]
	
	tInterServicePK_Reward[2][4] = {}
	tInterServicePK_Reward[2][4]["ActionId"] = 566319
	tInterServicePK_Reward[2][4]["Sender"] = tInterServicePK_Text[94476177]["Sender"]
	tInterServicePK_Reward[2][4]["Title"] = tInterServicePK_Text[94476177]["Title"]
	tInterServicePK_Reward[2][4]["Content"] = tInterServicePK_Text[94476177]["Content"]
	
	-- 130级组
	tInterServicePK_Reward[3] = {}
	tInterServicePK_Reward[3][1] = {}
	tInterServicePK_Reward[3][1]["ActionId"] = 566312
	tInterServicePK_Reward[3][1]["Sender"] = tInterServicePK_Text[94476170]["Sender"]
	tInterServicePK_Reward[3][1]["Title"] = tInterServicePK_Text[94476170]["Title"]
	tInterServicePK_Reward[3][1]["Content"] = tInterServicePK_Text[94476170]["Content"]
	
	tInterServicePK_Reward[3][2] = {}
	tInterServicePK_Reward[3][2]["ActionId"] = 566313
	tInterServicePK_Reward[3][2]["Sender"] = tInterServicePK_Text[94476171]["Sender"]
	tInterServicePK_Reward[3][2]["Title"] = tInterServicePK_Text[94476171]["Title"]
	tInterServicePK_Reward[3][2]["Content"] = tInterServicePK_Text[94476171]["Content"]
	
	tInterServicePK_Reward[3][3] = {}
	tInterServicePK_Reward[3][3]["ActionId"] = 566314
	tInterServicePK_Reward[3][3]["Sender"] = tInterServicePK_Text[94476172]["Sender"]
	tInterServicePK_Reward[3][3]["Title"] = tInterServicePK_Text[94476172]["Title"]
	tInterServicePK_Reward[3][3]["Content"] = tInterServicePK_Text[94476172]["Content"]
	
	tInterServicePK_Reward[3][4] = {}
	tInterServicePK_Reward[3][4]["ActionId"] = 566315
	tInterServicePK_Reward[3][4]["Sender"] = tInterServicePK_Text[94476173]["Sender"]
	tInterServicePK_Reward[3][4]["Title"] = tInterServicePK_Text[94476173]["Title"]
	tInterServicePK_Reward[3][4]["Content"] = tInterServicePK_Text[94476173]["Content"]

-- 光环
local tInterServicePK_Halo = {}
	tInterServicePK_Halo["Power"] = 200
	tInterServicePK_Halo["Secs"] = 2592000
	tInterServicePK_Halo["Times"] = 0
	tInterServicePK_Halo["RemainTime"] = 0
	tInterServicePK_Halo["EndTime"] = 2592000
	tInterServicePK_Halo["Recordable"] = 1

-- 兑换配饰
local tInterServicePK_Exchange = {}
	tInterServicePK_Exchange[1] = {}
	tInterServicePK_Exchange[1]["ItemChanceSum"] = 10000
	tInterServicePK_Exchange[1]["LogId"] = 18000133
	
	-- 100气力值	25	27.0%
	tInterServicePK_Exchange[1][1] = {}
	tInterServicePK_Exchange[1][1]["RandomItemChanceType"] = 2
	tInterServicePK_Exchange[1][1]["ItemChance"] = 2700
	tInterServicePK_Exchange[1][1]["RewardStrengthValue"] = {}
	tInterServicePK_Exchange[1][1]["RewardStrengthValue"]["Value"] = 100

	-- 30天葫芦级佩饰	125	19.0%
	tInterServicePK_Exchange[1][2] = {}
	tInterServicePK_Exchange[1][2]["RandomItemChanceType"] = 2
	tInterServicePK_Exchange[1][2]["ItemChance"] = 1900
	tInterServicePK_Exchange[1][2]["RewardItem"] = {}
	tInterServicePK_Exchange[1][2]["RewardItem"][1] = {}
	tInterServicePK_Exchange[1][2]["RewardItem"][1]["Id"] = 2100185
	tInterServicePK_Exchange[1][2]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1"
	
	-- 铜杯碎片*1+1天不完整铜杯	66.66666667	18.0%
	tInterServicePK_Exchange[1][3] = {}
	tInterServicePK_Exchange[1][3]["RandomItemChanceType"] = 2
	tInterServicePK_Exchange[1][3]["ItemChance"] = 1800
	tInterServicePK_Exchange[1][3]["RewardItem"] = {}
	tInterServicePK_Exchange[1][3]["RewardItem"][1] = {}
	tInterServicePK_Exchange[1][3]["RewardItem"][1]["Id"] = 3300053
	tInterServicePK_Exchange[1][3]["RewardItem"][1]["Attr"] = "0 1"
	tInterServicePK_Exchange[1][3]["RewardItem"][2] = {}
	tInterServicePK_Exchange[1][3]["RewardItem"][2]["Id"] = 2100215
	tInterServicePK_Exchange[1][3]["RewardItem"][2]["Attr"] = "0 1 0 1440 1 0 0 1"
	
	-- 铜杯碎片*2	133.3333333	9.0%
	tInterServicePK_Exchange[1][4] = {}
	tInterServicePK_Exchange[1][4]["RandomItemChanceType"] = 2
	tInterServicePK_Exchange[1][4]["ItemChance"] = 900
	tInterServicePK_Exchange[1][4]["RewardItem"] = {}
	tInterServicePK_Exchange[1][4]["RewardItem"][1] = {}
	tInterServicePK_Exchange[1][4]["RewardItem"][1]["Id"] = 3300053
	tInterServicePK_Exchange[1][4]["RewardItem"][1]["Attr"] = "0 2"
	
	-- 银杯碎片*1+1天不完整银杯	250	12.0%
	tInterServicePK_Exchange[1][5] = {}
	tInterServicePK_Exchange[1][5]["RandomItemChanceType"] = 2
	tInterServicePK_Exchange[1][5]["ItemChance"] = 1200
	tInterServicePK_Exchange[1][5]["RewardItem"] = {}
	tInterServicePK_Exchange[1][5]["RewardItem"][1] = {}
	tInterServicePK_Exchange[1][5]["RewardItem"][1]["Id"] = 3300054
	tInterServicePK_Exchange[1][5]["RewardItem"][1]["Attr"] = "0 1"
	tInterServicePK_Exchange[1][5]["RewardItem"][2] = {}
	tInterServicePK_Exchange[1][5]["RewardItem"][2]["Id"] = 2100225
	tInterServicePK_Exchange[1][5]["RewardItem"][2]["Attr"] = "0 1 0 1440 1 0 0 1"
	
	-- 银杯碎片*2	500	6.0%
	tInterServicePK_Exchange[1][6] = {}
	tInterServicePK_Exchange[1][6]["RandomItemChanceType"] = 2
	tInterServicePK_Exchange[1][6]["ItemChance"] = 600
	tInterServicePK_Exchange[1][6]["RewardItem"] = {}
	tInterServicePK_Exchange[1][6]["RewardItem"][1] = {}
	tInterServicePK_Exchange[1][6]["RewardItem"][1]["Id"] = 3300054
	tInterServicePK_Exchange[1][6]["RewardItem"][1]["Attr"] = "0 2"
	
	-- 金杯碎片*1+1天不完整金杯	1000	8.0%
	tInterServicePK_Exchange[1][7] = {}
	tInterServicePK_Exchange[1][7]["RandomItemChanceType"] = 2
	tInterServicePK_Exchange[1][7]["ItemChance"] = 800
	tInterServicePK_Exchange[1][7]["RewardItem"] = {}
	tInterServicePK_Exchange[1][7]["RewardItem"][1] = {}
	tInterServicePK_Exchange[1][7]["RewardItem"][1]["Id"] = 3300055
	tInterServicePK_Exchange[1][7]["RewardItem"][1]["Attr"] = "0 1"
	tInterServicePK_Exchange[1][7]["RewardItem"][2] = {}
	tInterServicePK_Exchange[1][7]["RewardItem"][2]["Id"] = 2100235
	tInterServicePK_Exchange[1][7]["RewardItem"][2]["Attr"] = "0 1 0 1440 1 0 0 1"
	
	-- 60天铜杯级佩饰	1000	1.0%
	tInterServicePK_Exchange[1][8] = {}
	tInterServicePK_Exchange[1][8]["RandomItemChanceType"] = 2
	tInterServicePK_Exchange[1][8]["ItemChance"] = 100
	tInterServicePK_Exchange[1][8]["RewardItem"] = {}
	tInterServicePK_Exchange[1][8]["RewardItem"][1] = {}
	tInterServicePK_Exchange[1][8]["RewardItem"][1]["Id"] = 2100195
	tInterServicePK_Exchange[1][8]["RewardItem"][1]["Attr"] = "0 1 0 86400 1 0 0 1"

local tInterServicePK_Accessories = {}
	tInterServicePK_Accessories["ItemId"] = 3300056
	tInterServicePK_Accessories["Emoney"] = 188
	-- 1个葫芦级佩饰可兑换500点气力值
	tInterServicePK_Accessories[1] = {}
	tInterServicePK_Accessories[1]["Index"] = "3-3"
	tInterServicePK_Accessories[1]["ItemId"] = 2100185
	tInterServicePK_Accessories[1]["EventType"] = 148
	tInterServicePK_Accessories[1]["DataType"] = 29
	tInterServicePK_Accessories[1]["RewardData"] = 9999
	tInterServicePK_Accessories[1]["RewardDelay"] = 1
	tInterServicePK_Accessories[1]["RewardTimeType"] = 4
	tInterServicePK_Accessories[1]["RewardStrengthValue"] = {}
	tInterServicePK_Accessories[1]["RewardStrengthValue"]["Value"] = 500
	tInterServicePK_Accessories[1]["Log"] = "0,0,2100185,1,18000133,2,12,500"

	-- 1个铜杯级佩饰可兑换1个金杯碎片
	tInterServicePK_Accessories[2] = {}
	tInterServicePK_Accessories[2]["Index"] = "3-5"
	tInterServicePK_Accessories[2]["ItemId"] = 2100195
	tInterServicePK_Accessories[2]["EventType"] = 148
	tInterServicePK_Accessories[2]["DataType"] = 29
	tInterServicePK_Accessories[2]["RewardData"] = 9999
	tInterServicePK_Accessories[2]["RewardDelay"] = 1
	tInterServicePK_Accessories[2]["RewardTimeType"] = 4
	tInterServicePK_Accessories[2]["Log"] = "0,0,2100195,1,18000133,2,3300055,1"
	tInterServicePK_Accessories[2]["RewardItem"] = {}
	tInterServicePK_Accessories[2]["RewardItem"][1] = {}
	tInterServicePK_Accessories[2]["RewardItem"][1]["Id"] = 3300055
	tInterServicePK_Accessories[2]["RewardItem"][1]["Attr"] = "0 1"

	-- 1个银杯级佩饰可兑换5个金杯碎片
	tInterServicePK_Accessories[3] = {}
	tInterServicePK_Accessories[3]["Index"] = "3-7"
	tInterServicePK_Accessories[3]["ItemId"] = 2100205
	tInterServicePK_Accessories[3]["EventType"] = 148
	tInterServicePK_Accessories[3]["DataType"] = 29
	tInterServicePK_Accessories[3]["RewardData"] = 9999
	tInterServicePK_Accessories[3]["RewardDelay"] = 1
	tInterServicePK_Accessories[3]["RewardTimeType"] = 4
	tInterServicePK_Accessories[3]["Log"] = "0,0,2100205,1,18000133,2,3300055,5"
	tInterServicePK_Accessories[3]["RewardItem"] = {}
	tInterServicePK_Accessories[3]["RewardItem"][1] = {}
	tInterServicePK_Accessories[3]["RewardItem"][1]["Id"] = 3300055
	tInterServicePK_Accessories[3]["RewardItem"][1]["Attr"] = "0 5"

-- stc掩码	
local tInterServicePK_Stc = {}
	tInterServicePK_Stc["EventType"] = 148
	tInterServicePK_Stc["DataType"] = 30
	-- 参与值
	tInterServicePK_Stc["Join"] = 1
	-- 领取奖励
	tInterServicePK_Stc["Reward"] = 2
	-- 获得前八强奖励
	tInterServicePK_Stc["FinalEight"] = 3	

-- 参与	
local tInterServicePK_Join = {}
	tInterServicePK_Join["LogId"] = 18000133
	tInterServicePK_Join["RewardItem"] = {}
	tInterServicePK_Join["RewardItem"][1] = {}
	tInterServicePK_Join["RewardItem"][1]["Id"] = 3305130
	tInterServicePK_Join["RewardItem"][1]["Attr"] = "0 1"
	
--log 记录玩家获得名次信息-18000169
--%d[%d]信息
--1[1] 110组别第1名 1[2]110组别第2名 1[3]110组别第3名 1[4]110组别8强
--2[1] 120组别第1名 2[2]120组别第2名 2[3]120组别第3名 2[4]120组别8强
--3[1] 130组别第1名 3[2]130组别第2名 3[3]130组别第3名 3[4]130组别8强

local tInterServicePK_Log = {}
tInterServicePK_Log["Rank"] = "0,0,0,0,18000169,%d[%d],0,0" --%d[%d] 组别[排名]

---------------------------------逻辑部分-----------------------------------------
-- 报名参赛的条件检测
function InterServicePK_ChkSignUp(nNpcId)
	local nUserEmoney = Get_UserEMoney()
	
	if nUserEmoney < tInterServicePK_Constant["Emoney"] then
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return false
	end
	
	if not User_CheckLeftSpace(1) then
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return false
	end
	
	return true
end

-- 报名参赛
function InterServicePK_SignUp(nNpcId,nType)
	if not InterServicePK_ChkSignUp(nNpcId) then
		return
	end
	
	if nType == 1 then
		LinkNpcGossipFunc_New(nNpcId,"3-3")
	else
		if not User_AddEMoney(-tInterServicePK_Constant["Emoney"]) then
			return
		end
		
		Sys_SaveEmoneyBuy(tInterServicePK_Constant["EmoneyLog"][1])
		RewardTemplate_Reward(tInterServicePK_SignUp)
	end
end

-- 打开兑换商店
function InterServicePK_OpenShop(nNpcId)
	--if not Sys_ChkFullTime(tInterServicePK_Constant["ExchangeTime"]) then
		--return
	--end
	User_OpenExchangeShop(nNpcId)
end

-- 进入赛场
function InterServicePK_EnterField(nNpcId)
	local nUserId = Get_UserId()
	-- 判断是否在活动时间内
	if not Sys_ChkFullTime(tInterServicePK_Constant["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end
	
	-- 判断是否在入场时间内
	local nStatus = Get_CrossEliteStatus()
	
	if nStatus ~= 1 then
		LinkNpcGossipFunc_New(nNpcId,"4-2")
		return
	end
	
	-- 判断是否为道士职业
	--local nPro = Get_UserProfession(nUserId)
	--if not ((nPro >= G_PRO_Taoist0) and (nPro <= G_PRO_FireTaoist5)) then
		--User_TalkChannel2005(tInterServicePK_Text[19425]["NoTaoist"])
		--return
	--end
	
	-- 判断是否满足入场等级要求
	-- local nUserLevel = Get_UserLevel()
	-- if nUserLevel < tInterServicePK_Constant["Level"] then
		-- User_TalkChannel2005(tInterServicePK_Text[19425]["NoLevel"])
		-- return
	-- end
	
	local nUserBattleLev = Get_UserBattleLevel()
	
	if nUserBattleLev < tInterServicePK_Constant["BattleLev"] then
		User_TalkChannel2005(tInterServicePK_Text[19425]["NoBattleLevel"])
		return
	end
	
	local nEvent = tInterServicePK_Stc["EventType"]
	local nType = tInterServicePK_Stc["DataType"]

	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	end
	
	if Task_ChkStcValue(nEvent,nType,"~=",tInterServicePK_Stc["Join"]) then
		-- 判断是否有入场门票
		if not Item_ChkItem(tInterServicePK_Constant["EntranceTicket"]) then
			LinkNpcGossipFunc_New(nNpcId,"4-1")
			return
		end
		
		if not Item_DelItem(tInterServicePK_Constant["EntranceTicket"]) then
			return
		end
	end
	
	Task_SetStatistic(nEvent,nType,tInterServicePK_Stc["Join"],1)
	Task_SetStcTimestamp(nEvent,nType,0)
	--记录emonlog方便统计参赛人数
	Sys_SaveEmoneyBuy(tInterServicePK_Constant["JoinLog"])
	-- 入场
	--local nFrontierServerID = Get_FrontierServerID()
	-- 获取主国境服的ID
	local nFrontierServerID = Get_MainFrontierID()
	if Sys_EnterServer(nFrontierServerID,11,0) then
		User_TalkChannel2005(tInterServicePK_Text[19424]["ChgMap"])
	end
end

-- 离开赛场
function InterServicePK_AwayField()
	local nNpcId = Get_NpcId()
	local nStatus = Get_CrossEliteStatus()
	
	-- 判断是否还在比赛中
	if nStatus >= 2 then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
	else
		Sys_ExitOS()
	end
end

-- 跨服精英PK赛礼包
function InterServicePK_Package(nItemId)
	if RewardTemplate_UseItemAndMsg(tInterServicePK_Item[nItemId]) then
		-- 加光环
		if User_IsExistHalo() then
			--删除光环
			User_DelHalo()
		end
		
		local nUserId = Get_UserId()
		local nStatus = tInterServicePK_Item[nItemId]["Status"]
		local nPower = tInterServicePK_Halo["Power"]
		local nSecs  = tInterServicePK_Halo["Secs"]
		local nTimes = tInterServicePK_Halo["Times"]
		local nEndTime = tInterServicePK_Halo["EndTime"]
		local nRecordable = tInterServicePK_Halo["Recordable"]
		local nRemainTime = tInterServicePK_Halo["RemainTime"]

		User_AddRoleStatus(nStatus,nPower,nSecs,nTimes,nRemainTime,nEndTime,nRecordable,1,0,nUserId)
	end
end

-- 跨服PK赛获得奖励
function InterServicePK_Reward(nUserId,nGroup,nRank) -- 玩家id	组别	排名
	if nRank > 4 then
		nRank = 4
	end
	
	local nActionId = tInterServicePK_Reward[nGroup][nRank]["ActionId"] or 0
	local sSender = tInterServicePK_Reward[nGroup][nRank]["Sender"]
	local sTitle = tInterServicePK_Reward[nGroup][nRank]["Title"]
	local sContent = tInterServicePK_Reward[nGroup][nRank]["Content"]
	
	Sys_SendMail(nUserId,0,0,nActionId,0,0,sSender,sTitle,sContent)
	
	local nEvent = tInterServicePK_Stc["EventType"]
	local nType = tInterServicePK_Stc["DataType"]
	local sLog = string.format(tInterServicePK_Log["Rank"],nGroup,nRank)
	Task_SetStatistic(nEvent,nType,tInterServicePK_Stc["FinalEight"],1,nUserId)
	Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	Sys_SaveActionFestivalLog(sLog,nUserId)
end

-- 可选武器礼包
function InterServicePK_FullServiceInvitat(nItemId,nIndex)
	RewardTemplate_UseItemAndMsg(tInterServicePK_Item[nItemId][nIndex])
end

-- 判断用哪种兑换
function InterServicePK_Change(nNpcId)	
	local nItemId = tInterServicePK_Accessories["ItemId"]
	
	if Item_ChkItem(nItemId) then
		InterServicePK_Exchange(nNpcId,1)
		return
	end
	
	local nUserEmoney = Get_UserEMoney()
	local nCostEmoney = tInterServicePK_Accessories["Emoney"]
	
	if nUserEmoney < nCostEmoney then
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end
	
	LinkNpcGossipFunc_New(nNpcId,"2-3")
end

-- 兑换配饰
function InterServicePK_Exchange(nNpcId,nIndex)
	local nItemId = tInterServicePK_Accessories["ItemId"]
	
	-- 选择材料兑换还是天石兑换
	if nIndex == 1 then
		-- 判断背包空间
		if not User_CheckLeftSpace(1) then
			tNpcGossip[19436]["Text211"] = string.format(tInterServicePK_Text[19436]["Text211"],1)
			LinkNpcGossipFunc_New(nNpcId,"2-1")
			return
		end
		
		if not Item_ChkItem(nItemId) then
			return
		end
		
		if not Item_DelItem(nItemId) then
			return
		end
	else
		-- 判断背包空间
		if not User_CheckLeftSpace(2) then
			tNpcGossip[19436]["Text211"] = string.format(tInterServicePK_Text[19436]["Text211"],2)
			LinkNpcGossipFunc_New(nNpcId,"2-1")
			return
		end
		
		local nUserEmoney = Get_UserEMoney()
		local nCostEmoney = tInterServicePK_Accessories["Emoney"]
		
		if nUserEmoney < nCostEmoney then
			LinkNpcGossipFunc_New(nNpcId,"2-5")
			return
		end
		
		if not User_AddEMoney(-nCostEmoney) then
			return
		end
		
		Sys_SaveEmoneyBuy(tInterServicePK_Constant["EmoneyLog"][2])
	end
	
	-- 给奖励
	RewardTemplate_NewRandom(tInterServicePK_Exchange,1)
end

-- 兑换碎片
function InterServicePK_Fragment(nNpcId,nIndex)
	local nItemId = tInterServicePK_Accessories[nIndex]["ItemId"]
	
	if not Item_ChkItem(nItemId) then
		LinkNpcGossipFunc_New(nNpcId,tInterServicePK_Accessories[nIndex]["Index"])
		return
	end
	
	if Item_DelItem(nItemId) then
		RewardTemplate_OuterPckage(tInterServicePK_Accessories[nIndex])
		return
	end
end

-- 领取参与奖
function InterServicePK_ReceiveAward(nNpcId)
	local nEvent = tInterServicePK_Stc["EventType"]
	local nType = tInterServicePK_Stc["DataType"]
	local nData = Get_UserStatisticValue(nEvent,nType)
	local nStatus = Get_CrossEliteStatus()
	-- 判断是否还在比赛间
	if nStatus == 1 or nStatus == 2 then
		LinkNpcGossipFunc_New(nNpcId,"5-4")
		return
	end
	
	-- 判断玩家是否参与了本场跨服精英PK赛
	if nData < tInterServicePK_Stc["Reward"] and nData ~= tInterServicePK_Stc["Join"] then
		LinkNpcGossipFunc_New(nNpcId,"5-1")
		return
	end

	-- 判断是否领取过奖励
	if nData >= tInterServicePK_Stc["Reward"] then
		LinkNpcGossipFunc_New(nNpcId,"5-3")
		return
	end
	
	-- 判断背包空间
	if not User_CheckLeftSpace(1) then
		LinkNpcGossipFunc_New(nNpcId,"5-2")
		return
	end
	
	Task_SetStatistic(nEvent,nType,tInterServicePK_Stc["Reward"],1)
	Task_SetStcTimestamp(nEvent,nType,0)
	RewardTemplate_UseItemAndMsg(tInterServicePK_Join)
end

-- 查询界面
function InterServicePK_Query()
	return Get_QueryCrossEliteInfo(3)
end

-- 打开网页
function InterServicePK_WebPage()
	User_SendWebPage("http://co.99.com/guide/event/cross_server_pk_tournament_reward.shtml")
end

function InterServicePK_ClearGlbDetail()
	if not Sys_ChkFullTime(tInterServicePK_Constant["DayTime"]) then
		return
	end
	
	local nData5 = Get_SysDynaGlobalData5(tInterServicePK_Constant["GlobalId"])
	if nData5 == 0 then
		Sys_SetSynaGlobalData0(tInterServicePK_Constant["GlobalId"],0)
		Sys_SetSynaGlobalData5(tInterServicePK_Constant["GlobalId"],1)
	end
end

function InterServicePK_RestGlbDetail()
	if not Sys_ChkFullTime(tInterServicePK_Constant["DayTime"]) then
		return
	end
	
	Sys_SetSynaGlobalData5(tInterServicePK_Constant["GlobalId"],0)
end
--52035 data0 = 1代表欧服 data0 = 2 代表美服
function InterServicePK_IsUSServer()
	local nGlobalId = Get_SysDynaGlobalData0(52035)
	if nGlobalId ~= 2 then
		return false
	else
		return true
	end
end
---------------------------------npc配置------------------------------------------
-- 赛事管理员（场外）
--tNpcFace[4297] = 4
tNpcFace[5148] = 223
tNpcGossip[19424] = tNpcGossip[19424] or DefaultNpc:new{}
tNpcGossip[19424]["OptionHidden"] = 1
tNpcGossip[19424]["DialogueText"] = tInterServicePK_Text[19424]
-- 活动时间前
tNpcGossip[19424]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[19424]["ChkFunc1-1"] = function ()
	return not Sys_ChkFullTime(tInterServicePK_Constant["ActivityTime"])
end
--tNpcGossip[19424]["tOption1-1"] = {1,2,3,23,24,4}
tNpcGossip[19424]["tOption1-1"] = {1,2,23,24,4}

tNpcGossip[19424]["OptionPoint1"] = "2-1"
tNpcGossip[19424]["OptionFunc2"] = "InterServicePK_SignUp</N>19424</N>1"
tNpcGossip[19424]["OptionChkFunc2"] = function ()
	local nUserId = Get_UserId()
	
	-- 职业判断
	--local nPro = Get_UserProfession(nUserId)
	--if not ((nPro >= G_PRO_Taoist0) and (nPro <= G_PRO_FireTaoist5)) then
		--return false
	--end
	
	-- local nUserLevel = Get_UserLevel()
	-- if nUserLevel < tInterServicePK_Constant["Level"] then
		-- return false
	-- end
	
	-- return true
	
	local nUserBattleLev = Get_UserBattleLevel()
	return nUserBattleLev >= tInterServicePK_Constant["BattleLev"]
end
tNpcGossip[19424]["OptionFunc3"] = "InterServicePK_OpenShop</N>19424"

-- 活动中
tNpcGossip[19424]["Text1-2"] = {121,122,123,124}
-- tNpcGossip[19424]["tOption1-2"] = {13,2,1,3,23,24,4}
tNpcGossip[19424]["tOption1-2"] = {13,2,1,23,24,4}
tNpcGossip[19424]["OptionFunc13"] = "InterServicePK_EnterField</N>19424"
tNpcGossip[19424]["OptionFunc23"] = "InterServicePK_ReceiveAward</N>19424"
tNpcGossip[19424]["OptionFunc24"] = "InterServicePK_Query"

-- 了解规则
tNpcGossip[19424]["Text2-1"] = {211,212,213}
tNpcGossip[19424]["tOption2-1"] = {6,7,8,4}
tNpcGossip[19424]["OptionFunc5"] = "InterServicePK_WebPage"
tNpcGossip[19424]["OptionPoint6"] = "2-2"
tNpcGossip[19424]["OptionPoint7"] = "2-3"
tNpcGossip[19424]["OptionPoint8"] = "2-4"

-- 查看130级以上奖励。
tNpcGossip[19424]["Text2-2"] = {221,222,223,224,225,226,227,228,229}
--tNpcGossip[19424]["Text2-2"] = {221,222,223,224,225}
tNpcGossip[19424]["tOption2-2"] = {9}

-- 查看120至129级奖励。
tNpcGossip[19424]["Text2-3"] = {231,232,233,234,235}
tNpcGossip[19424]["tOption2-3"] = {9}

-- 查看100至119级奖励。
tNpcGossip[19424]["Text2-4"] = {241,242,243,244,245}
tNpcGossip[19424]["tOption2-4"] = {9}

-- 报名参赛（99天石）
-- 失败，天石不足
tNpcGossip[19424]["Text3-1"] = {311}
tNpcGossip[19424]["tOption3-1"] = {10}

-- 【失败，背包空间不足】
tNpcGossip[19424]["Text3-2"] = {321}
tNpcGossip[19424]["tOption3-2"] = {10}

-- 【成功，二次确认】
tNpcGossip[19424]["Text3-3"] = {331,332}
tNpcGossip[19424]["tOption3-3"] = {11,12}
tNpcGossip[19424]["OptionFunc11"] = "InterServicePK_SignUp</N>19424</N>2"

-- 进入赛场
-- 【失败，没有选手证】
tNpcGossip[19424]["Text4-1"] = {411}
tNpcGossip[19424]["tOption4-1"] = {17}

-- 【失败，不在入场期间内】
tNpcGossip[19424]["Text4-2"] = {421}
tNpcGossip[19424]["tOption4-2"] = {18}

-- 领取参与奖
tNpcGossip[19424]["Text5-1"] = {511}
tNpcGossip[19424]["tOption5-1"] = {19}

tNpcGossip[19424]["Text5-2"] = {521}
tNpcGossip[19424]["tOption5-2"] = {20}

tNpcGossip[19424]["Text5-3"] = {531}
tNpcGossip[19424]["tOption5-3"] = {21}

tNpcGossip[19424]["Text5-4"] = {541}
tNpcGossip[19424]["tOption5-4"] = {22}

-- NPC【跨服精英PK赛】赛事管理员（赛场内）
tNpcFace[810] = 4
tNpcGossip[19425] = tNpcGossip[19425] or DefaultNpc:new{}
tNpcGossip[19425]["OptionHidden"] = 1
tNpcGossip[19425]["DialogueText"] = tInterServicePK_Text[19425]

tNpcGossip[19425]["Text1-1"] = {111}
tNpcGossip[19425]["tOption1-1"] = {1,2,3}
tNpcGossip[19425]["OptionFunc1"] = "InterServicePK_AwayField"
tNpcGossip[19425]["OptionPoint2"] = "2-1"

tNpcGossip[19425]["Text1-2"] = {121,122}
tNpcGossip[19425]["tOption1-2"] = {4,5}

tNpcGossip[19425]["OptionFunc4"] = "Sys_ExitOS"

-- 了解规则
tNpcGossip[19425]["Text2-1"] = {211,212,213}
tNpcGossip[19425]["tOption2-1"] = {6,7,8,3}
tNpcGossip[19425]["OptionFunc5"] = "InterServicePK_WebPage"
tNpcGossip[19425]["OptionPoint6"] = "2-2"
tNpcGossip[19425]["OptionPoint7"] = "2-3"
tNpcGossip[19425]["OptionPoint8"] = "2-4"

-- 查看130级以上奖励。
tNpcGossip[19425]["Text2-2"] = {221,222,223,224,225,226,227,228}
tNpcGossip[19425]["tOption2-2"] = {9}

-- 查看120至129级奖励。
tNpcGossip[19425]["Text2-3"] = {231,232,233,234,235}
tNpcGossip[19425]["tOption2-3"] = {9}

-- 查看100至119级奖励。
tNpcGossip[19425]["Text2-4"] = {241,242,243,244,245}
tNpcGossip[19425]["tOption2-4"] = {9}

tNpcGossip[19433] = tNpcGossip[19425]
tNpcGossip[19434] = tNpcGossip[19425]
tNpcGossip[19435] = tNpcGossip[19425]

tNpcGossip[19433]["DialogueText"] = tInterServicePK_Text[19425]
tNpcGossip[19434]["DialogueText"] = tInterServicePK_Text[19425]
tNpcGossip[19435]["DialogueText"] = tInterServicePK_Text[19425]

-- 兑换NPC
tNpcFace[4298] = 7
tNpcGossip[19436] = tNpcGossip[19436] or DefaultNpc:new{}
tNpcGossip[19436]["OptionHidden"] = 1
tNpcGossip[19436]["DialogueText"] = tInterServicePK_Text[19436]

tNpcGossip[19436]["Text1-1"] = {111,112,113}
tNpcGossip[19436]["tOption1-1"] = {1,2,29,3}
tNpcGossip[19436]["OptionFunc1"] = "InterServicePK_Change</N>19436"
tNpcGossip[19436]["OptionPoint2"] = "3-1"
tNpcGossip[19436]["OptionPoint29"] = "4-1"

tNpcGossip[19436]["Text2-1"] = {211}
tNpcGossip[19436]["tOption2-1"] = {4}

tNpcGossip[19436]["Text2-2"] = {221}
tNpcGossip[19436]["tOption2-2"] = {5}

tNpcGossip[19436]["Text2-3"] = {231}
tNpcGossip[19436]["tOption2-3"] = {6,7}
tNpcGossip[19436]["OptionPoint6"] = "2-4"

tNpcGossip[19436]["Text2-4"] = {241}
tNpcGossip[19436]["tOption2-4"] = {8,7}
tNpcGossip[19436]["OptionFunc8"] = "InterServicePK_Exchange</N>19436</N>2"

tNpcGossip[19436]["Text2-5"] = {251}
tNpcGossip[19436]["tOption2-5"] = {9}

tNpcGossip[19436]["Text3-1"] = {311,312,313}
tNpcGossip[19436]["tOption3-1"] = {10,11,12,13}
tNpcGossip[19436]["OptionPoint10"] = "3-2"
tNpcGossip[19436]["OptionPoint11"] = "3-4"
tNpcGossip[19436]["OptionPoint12"] = "3-6"

tNpcGossip[19436]["Text3-2"] = {321}
tNpcGossip[19436]["tOption3-2"] = {14,15}
tNpcGossip[19436]["OptionFunc14"] = "InterServicePK_Fragment</N>19436</N>1"

tNpcGossip[19436]["Text3-3"] = {331}
tNpcGossip[19436]["tOption3-3"] = {16}

tNpcGossip[19436]["Text3-4"] = {341}
tNpcGossip[19436]["tOption3-4"] = {17,15}
tNpcGossip[19436]["OptionFunc17"] = "InterServicePK_Fragment</N>19436</N>2"

tNpcGossip[19436]["Text3-5"] = {351}
tNpcGossip[19436]["tOption3-5"] = {18}

tNpcGossip[19436]["Text3-6"] = {361}
tNpcGossip[19436]["tOption3-6"] = {19,15}
tNpcGossip[19436]["OptionFunc19"] = "InterServicePK_Fragment</N>19436</N>3"

tNpcGossip[19436]["Text3-7"] = {371}
tNpcGossip[19436]["tOption3-7"] = {20}

tNpcGossip[19436]["Text4-1"] = {411,412}
tNpcGossip[19436]["tOption4-1"] = {21,22,23,24}
tNpcGossip[19436]["OptionPoint21"] = "4-2"
tNpcGossip[19436]["OptionPoint22"] = "4-3"
tNpcGossip[19436]["OptionPoint23"] = "4-4"
tNpcGossip[19436]["OptionPoint24"] = "4-5"

tNpcGossip[19436]["Text4-2"] = {421,422,423,424}
tNpcGossip[19436]["tOption4-2"] = {25}

tNpcGossip[19436]["Text4-3"] = {431,432,433}
tNpcGossip[19436]["tOption4-3"] = {26}

tNpcGossip[19436]["Text4-4"] = {441,442,443}
tNpcGossip[19436]["tOption4-4"] = {27}

tNpcGossip[19436]["Text4-5"] = {451,452}
tNpcGossip[19436]["tOption4-5"] = {28}

-- 九天玄鸟
tNpcGossip[19452] = tNpcGossip[19452] or DefaultNpc:new{}
tNpcGossip[19452]["OptionHidden"] = 1
tNpcGossip[19452]["DialogueText"] = tInterServicePK_Text[19452]

tNpcGossip[19452]["Text1-1"] = {111}
tNpcGossip[19452]["tOption1-1"] = {1}
tNpcGossip[19452]["OptionFunc1"] = "InterServicePK_WebPage"

tNpcGossip[19458] = tNpcGossip[19452]
tNpcGossip[19458]["DialogueText"] = tInterServicePK_Text[19452]

--新增市场内
-- 赛事管理员（场外）
--tNpcFace[5148] = 4
tNpcGossip[19485] = CommonFunc_Copy(tNpcGossip[19424])
tNpcGossip[19485]["OptionFunc2"] = "InterServicePK_SignUp</N>19485</N>1"
tNpcGossip[19485]["OptionFunc3"] = "InterServicePK_OpenShop</N>19485"
tNpcGossip[19485]["OptionFunc13"] = "InterServicePK_EnterField</N>19485"
tNpcGossip[19485]["OptionFunc23"] = "InterServicePK_ReceiveAward</N>19485"
tNpcGossip[19485]["OptionFunc11"] = "InterServicePK_SignUp</N>19485</N>2"
-- 兑换NPC
tNpcFace[4298] = 7
tNpcGossip[19486] = CommonFunc_Copy(tNpcGossip[19436])
tNpcGossip[19486]["OptionFunc1"] = "InterServicePK_Change</N>19486"
tNpcGossip[19486]["OptionFunc8"] = "InterServicePK_Exchange</N>19486</N>2"
tNpcGossip[19486]["OptionFunc14"] = "InterServicePK_Fragment</N>19486</N>1"
tNpcGossip[19486]["OptionFunc17"] = "InterServicePK_Fragment</N>19486</N>2"
tNpcGossip[19486]["OptionFunc19"] = "InterServicePK_Fragment</N>19486</N>3"

-- 九天玄鸟
tNpcGossip[19487] =  CommonFunc_Copy(tNpcGossip[19452])

---------------------------------物品配置-----------------------------------------
-- 3300021	130级组冠军礼包
tItem[3300021] = tItem[3300021] or {}
tItem[3300021]["Function"] = function(nItemId,sItemName)
	InterServicePK_Package(nItemId)
end

tItem[3300022] = tItem[3300021]
tItem[3300023] = tItem[3300021]
tItem[3300024] = tItem[3300021]
tItem[3300025] = tItem[3300021]
tItem[3300026] = tItem[3300021]
tItem[3300027] = tItem[3300021]
tItem[3300028] = tItem[3300021]
tItem[3305118] = tItem[3300021]
tItem[3305119] = tItem[3300021]
tItem[3305120] = tItem[3300021]
tItem[3305121] = tItem[3300021]

-- 3300029	110级组冠军礼包
tItem[3300029] = tItem[3300029] or {}
tItem[3300029]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tInterServicePK_Item[nItemId])
end

tItem[3300030] = tItem[3300029]
tItem[3300031] = tItem[3300029]
tItem[3300032] = tItem[3300029]
tItem[3300033] = tItem[3300029]
tItem[3300036] = tItem[3300029]
tItem[3300046] = tItem[3300029]
tItem[3300047] = tItem[3300029]
tItem[3300048] = tItem[3300029]
tItem[3300050] = tItem[3300029]
tItem[3300051] = tItem[3300029]
tItem[3300052] = tItem[3300029]
tItem[3300053] = tItem[3300029]
tItem[3300054] = tItem[3300029]
tItem[3300055] = tItem[3300029]
tItem[3300057] = tItem[3300029]
tItem[3300058] = tItem[3300029]
tItem[3300059] = tItem[3300029]
tItem[3300121] = tItem[3300029]
tItem[3300122] = tItem[3300029]
tItem[3300123] = tItem[3300029]
tItem[3300124] = tItem[3300029]
tItem[3300125] = tItem[3300029]
tItem[3300179] = tItem[3300029]
tItem[3300041] = tItem[3300029]
tItem[3300042] = tItem[3300029]
tItem[3300043] = tItem[3300029]
tItem[3300044] = tItem[3300029]
tItem[3305122] = tItem[3300029]
tItem[3305123] = tItem[3300029]
tItem[3305124] = tItem[3300029]
tItem[3305125] = tItem[3300029]
tItem[3305126] = tItem[3300029]
tItem[3305127] = tItem[3300029]
tItem[3305128] = tItem[3300029]
tItem[3305129] = tItem[3300029]
tItem[3305130] = tItem[3300029]

-- 3300034 日常跨服精英积分包
tItem[3300034] = tItem[3300034] or {}
tItem[3300034]["Function"] = function(nItemId,sItemName)
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		RewardTemplate_NewRandom(tInterServicePK_Item,nItemId)
	end
end

-- 神兵利刃礼包
tItem[3300045] = tItem[3300045] or {}
tItem[3300045]["Function"] = function(nItemId,sItemName)
	RouletteMould_Main(3736)
end

-- 精英竞技礼包
tItem[3300049] = tItem[3300049] or {}
tItem[3300049]["Function"] = function(nItemId,sItemName)
	RouletteMould_Main(3737)
end

-- 3300037	15天银色屠龙礼包
tItem[3300037] = tItem[3300037] or {}
tItem[3300037]["DialogueText"] = tInterServicePK_Text[3300037]
tItem[3300037]["Text1-1"] = {111}
tItem[3300037]["tOption1-1"] = {1,2,3}
tItem[3300037]["OptionFunc1"] = "InterServicePK_FullServiceInvitat</N>3300037</N>1"
tItem[3300037]["OptionFunc2"] = "InterServicePK_FullServiceInvitat</N>3300037</N>2"

-- 3300038	30天银色屠龙礼包
tItem[3300038] = tItem[3300038] or {}
tItem[3300038]["DialogueText"] = tInterServicePK_Text[3300038]
tItem[3300038]["Text1-1"] = {111}
tItem[3300038]["tOption1-1"] = {1,2,3}
tItem[3300038]["OptionFunc1"] = "InterServicePK_FullServiceInvitat</N>3300038</N>1"
tItem[3300038]["OptionFunc2"] = "InterServicePK_FullServiceInvitat</N>3300038</N>2"

-- 3300039	15天金色屠龙礼包
tItem[3300039] = tItem[3300039] or {}
tItem[3300039]["DialogueText"] = tInterServicePK_Text[3300039]
tItem[3300039]["Text1-1"] = {111}
tItem[3300039]["tOption1-1"] = {1,2,3}
tItem[3300039]["OptionFunc1"] = "InterServicePK_FullServiceInvitat</N>3300039</N>1"
tItem[3300039]["OptionFunc2"] = "InterServicePK_FullServiceInvitat</N>3300039</N>2"

-- 3300040	30天金色屠龙礼包
tItem[3300040] = tItem[3300040] or {}
tItem[3300040]["DialogueText"] = tInterServicePK_Text[3300040]
tItem[3300040]["Text1-1"] = {111}
tItem[3300040]["tOption1-1"] = {1,2,3}
tItem[3300040]["OptionFunc1"] = "InterServicePK_FullServiceInvitat</N>3300040</N>1"
tItem[3300040]["OptionFunc2"] = "InterServicePK_FullServiceInvitat</N>3300040</N>2"

-- 精英积分券
tItem[3300035] = tItem[3300035] or {}
tItem[3300035]["Function"] = function(nItemId,sItemName)
	if not Sys_ChkFullTime(tInterServicePK_Constant["ExchangeTime"]) then
		if  Item_ChkItem(nItemId)then
			Item_DelAllItemByType(nItemId)
			Sys_MsgBox(tInterServicePK_Text["OutTime"])
		end
	else
	NpcPosition_PathFind(19424)
	end
end

-- 精武之魂
tItem[3300056] = tItem[3300056] or {}
tItem[3300056]["Function"] = function(nItemId,sItemName)
	NpcPosition_PathFind(19436)
end
---------------------------------美服配置-----------------------------------------
function InterServicePK_USServerCopySpriceTable()
	tNpcGossip[19424]["Text113"] = tInterServicePK_Text[19424]["Text113_US"]
	tNpcGossip[19424]["Text114"] = tInterServicePK_Text[19424]["Text114_US"]
	tNpcGossip[19424]["Text122"] = tInterServicePK_Text[19424]["Text122_US"]
	tNpcGossip[19424]["Text123"] = tInterServicePK_Text[19424]["Text123_US"]
end
function InterServicePK_ServerStart()
	if InterServicePK_IsUSServer() then
		InterServicePK_USServerCopySpriceTable()
	end
end

---------------------------------------------------------------------------------
tAwardCrossElite["tFunction"] = tAwardCrossElite["tFunction"] or {}
table.insert(tAwardCrossElite["tFunction"],InterServicePK_Reward)

tOntimerMin_HM[0000] = tOntimerMin_HM[0000] or {}
table.insert(tOntimerMin_HM[0000],InterServicePK_ClearGlbDetail)
tOntimerMin_HM[0001] = tOntimerMin_HM[0001] or {}
table.insert(tOntimerMin_HM[0001],InterServicePK_ClearGlbDetail)
tOntimerMin_HM[0002] = tOntimerMin_HM[0002] or {}
table.insert(tOntimerMin_HM[0002],InterServicePK_RestGlbDetail)
tOntimerMin_HM[0003] = tOntimerMin_HM[0003] or {}
table.insert(tOntimerMin_HM[0003],InterServicePK_RestGlbDetail)

-- 服务器启动触发
tServerStart["tFunction"] = tServerStart["tFunction"] or {}
table.insert(tServerStart["tFunction"],InterServicePK_ServerStart)
