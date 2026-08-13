------------------------------------------------------------------------------------
--Name：        190116[英文征服][活动脚本]2月线下活动相关发奖action制作
--Creator:      吴志宏
--Created:      2018-01-16
------------------------------------------------------------------------------------
-- 前缀
-- FebOffLineAct_

-- LogId 12001274

-- stc掩码说明 
-- stc 

-- 全局表说明
-- global 

---------------------------------------------常量配置部分---------------------------------------
-- 奖励表
local tFebOffLineAct_Reward = {}
	-- 极品天怒/地灵+金刚尖钻可选包
	tFebOffLineAct_Reward[3319362] = {}
	-- 极品天怒+金刚尖钻
	tFebOffLineAct_Reward[3319362][700103] = {}
	tFebOffLineAct_Reward[3319362][700103]["DeleteItem"] = {}
	tFebOffLineAct_Reward[3319362][700103]["DeleteItem"][1] = {}
	tFebOffLineAct_Reward[3319362][700103]["DeleteItem"][1]["Id"] = 3319362
	tFebOffLineAct_Reward[3319362][700103]["RewardItem"] = {}
	tFebOffLineAct_Reward[3319362][700103]["RewardItem"][1] = {}
	tFebOffLineAct_Reward[3319362][700103]["RewardItem"][1]["Id"] = 700103
	tFebOffLineAct_Reward[3319362][700103]["RewardItem"][1]["Attr"] = "0 1"
	tFebOffLineAct_Reward[3319362][700103]["RewardItem"][2] = {}
	tFebOffLineAct_Reward[3319362][700103]["RewardItem"][2]["Id"] = 1200005
	tFebOffLineAct_Reward[3319362][700103]["RewardItem"][2]["Attr"] = "0 1"
	tFebOffLineAct_Reward[3319362][700103]["RewardEffect"] = {}
	tFebOffLineAct_Reward[3319362][700103]["RewardEffect"]["Effect"] = "zf2-e128"
	tFebOffLineAct_Reward[3319362][700103]["LogId"] = 12001274
	-- 极品地灵+金刚尖钻
	tFebOffLineAct_Reward[3319362][700123] = {}
	tFebOffLineAct_Reward[3319362][700123]["DeleteItem"] = {}
	tFebOffLineAct_Reward[3319362][700123]["DeleteItem"][1] = {}
	tFebOffLineAct_Reward[3319362][700123]["DeleteItem"][1]["Id"] = 3319362
	tFebOffLineAct_Reward[3319362][700123]["RewardItem"] = {}
	tFebOffLineAct_Reward[3319362][700123]["RewardItem"][1] = {}
	tFebOffLineAct_Reward[3319362][700123]["RewardItem"][1]["Id"] = 700123
	tFebOffLineAct_Reward[3319362][700123]["RewardItem"][1]["Attr"] = "0 1"
	tFebOffLineAct_Reward[3319362][700123]["RewardItem"][2] = {}
	tFebOffLineAct_Reward[3319362][700123]["RewardItem"][2]["Id"] = 1200005
	tFebOffLineAct_Reward[3319362][700123]["RewardItem"][2]["Attr"] = "0 1"
	tFebOffLineAct_Reward[3319362][700123]["RewardEffect"] = {}
	tFebOffLineAct_Reward[3319362][700123]["RewardEffect"]["Effect"] = "zf2-e128"
	tFebOffLineAct_Reward[3319362][700123]["LogId"] = 12001274
	-- 小抽奖券礼包*100
	tFebOffLineAct_Reward[3319363] = {}
	tFebOffLineAct_Reward[3319363]["DeleteItem"] = {}
	tFebOffLineAct_Reward[3319363]["DeleteItem"][1] = {}
	tFebOffLineAct_Reward[3319363]["DeleteItem"][1]["Id"] = 3319363
	tFebOffLineAct_Reward[3319363]["RewardItem"] = {}
	tFebOffLineAct_Reward[3319363]["RewardItem"][1] = {}
	tFebOffLineAct_Reward[3319363]["RewardItem"][1]["Id"] = 711504 
	tFebOffLineAct_Reward[3319363]["RewardItem"][1]["Attr"] = "0 300"
	tFebOffLineAct_Reward[3319363]["RewardEffect"] = {}
	tFebOffLineAct_Reward[3319363]["RewardEffect"]["Effect"] = "zf2-e128"
	tFebOffLineAct_Reward[3319363]["LogId"] = 12001274
	-- 15气力值
	tFebOffLineAct_Reward[3319364] = {}
	tFebOffLineAct_Reward[3319364]["DeleteItem"] = {}
	tFebOffLineAct_Reward[3319364]["DeleteItem"][1] = {}
	tFebOffLineAct_Reward[3319364]["DeleteItem"][1]["Id"] = 3319364
	tFebOffLineAct_Reward[3319364]["RewardStrengthValue"] = {} 
	tFebOffLineAct_Reward[3319364]["RewardStrengthValue"]["Value"] = 15
	tFebOffLineAct_Reward[3319364]["RewardEffect"] = {}
	tFebOffLineAct_Reward[3319364]["RewardEffect"]["Effect"] = "zf2-e128"
	tFebOffLineAct_Reward[3319364]["LogId"] = 12001274
	-- 5000气力值
	tFebOffLineAct_Reward[3319365] = {}
	tFebOffLineAct_Reward[3319365]["DeleteItem"] = {}
	tFebOffLineAct_Reward[3319365]["DeleteItem"][1] = {}
	tFebOffLineAct_Reward[3319365]["DeleteItem"][1]["Id"] = 3319365
	tFebOffLineAct_Reward[3319365]["RewardStrengthValue"] = {} 
	tFebOffLineAct_Reward[3319365]["RewardStrengthValue"]["Value"] = 5000
	tFebOffLineAct_Reward[3319365]["RewardEffect"] = {}
	tFebOffLineAct_Reward[3319365]["RewardEffect"]["Effect"] = "zf2-e128"
	tFebOffLineAct_Reward[3319365]["LogId"] = 12001274
	-- 修为值3000点
	tFebOffLineAct_Reward[3319366] = {}
	tFebOffLineAct_Reward[3319366]["DeleteItem"] = {}
	tFebOffLineAct_Reward[3319366]["DeleteItem"][1] = {}
	tFebOffLineAct_Reward[3319366]["DeleteItem"][1]["Id"] = 3319366
	tFebOffLineAct_Reward[3319366]["RewardRepairValue"] = {}
	tFebOffLineAct_Reward[3319366]["RewardRepairValue"]["Value"] = 3000
	tFebOffLineAct_Reward[3319366]["RewardEffect"] = {}
	tFebOffLineAct_Reward[3319366]["RewardEffect"]["Effect"] = "zf2-e128"
	tFebOffLineAct_Reward[3319366]["LogId"] = 12001274
	-- 大爆丹10颗
	tFebOffLineAct_Reward[3319367] = {}
	tFebOffLineAct_Reward[3319367]["DeleteItem"] = {}
	tFebOffLineAct_Reward[3319367]["DeleteItem"][1] = {}
	tFebOffLineAct_Reward[3319367]["DeleteItem"][1]["Id"] = 3319367
	tFebOffLineAct_Reward[3319367]["RewardItem"] = {}
	tFebOffLineAct_Reward[3319367]["RewardItem"][1] = {}
	tFebOffLineAct_Reward[3319367]["RewardItem"][1]["Id"] = 3003126
	tFebOffLineAct_Reward[3319367]["RewardItem"][1]["Attr"] = "0 10 3"
	tFebOffLineAct_Reward[3319367]["RewardEffect"] = {}
	tFebOffLineAct_Reward[3319367]["RewardEffect"]["Effect"] = "zf2-e128"
	tFebOffLineAct_Reward[3319367]["LogId"] = 12001274
	-- 强练丹50颗
	tFebOffLineAct_Reward[3319368] = {}
	tFebOffLineAct_Reward[3319368]["DeleteItem"] = {}
	tFebOffLineAct_Reward[3319368]["DeleteItem"][1] = {}
	tFebOffLineAct_Reward[3319368]["DeleteItem"][1]["Id"] = 3319368
	tFebOffLineAct_Reward[3319368]["RewardItem"] = {}
	tFebOffLineAct_Reward[3319368]["RewardItem"][1] = {}
	tFebOffLineAct_Reward[3319368]["RewardItem"][1]["Id"] = 3003124
	tFebOffLineAct_Reward[3319368]["RewardItem"][1]["Attr"] = "0 50 3"
	tFebOffLineAct_Reward[3319368]["RewardEffect"] = {}
	tFebOffLineAct_Reward[3319368]["RewardEffect"]["Effect"] = "zf2-e128"
	tFebOffLineAct_Reward[3319368]["LogId"] = 12001274
	-- 小爆丹50颗
	tFebOffLineAct_Reward[3319369] = {}
	tFebOffLineAct_Reward[3319369]["DeleteItem"] = {}
	tFebOffLineAct_Reward[3319369]["DeleteItem"][1] = {}
	tFebOffLineAct_Reward[3319369]["DeleteItem"][1]["Id"] = 3319369
	tFebOffLineAct_Reward[3319369]["RewardItem"] = {}
	tFebOffLineAct_Reward[3319369]["RewardItem"][1] = {}
	tFebOffLineAct_Reward[3319369]["RewardItem"][1]["Id"] = 3003125
	tFebOffLineAct_Reward[3319369]["RewardItem"][1]["Attr"] = "0 50 3"
	tFebOffLineAct_Reward[3319369]["RewardEffect"] = {}
	tFebOffLineAct_Reward[3319369]["RewardEffect"]["Effect"] = "zf2-e128"
	tFebOffLineAct_Reward[3319369]["LogId"] = 12001274
	-- 100,000气力值
	tFebOffLineAct_Reward[3319370] = {}
	tFebOffLineAct_Reward[3319370]["DeleteItem"] = {}
	tFebOffLineAct_Reward[3319370]["DeleteItem"][1] = {}
	tFebOffLineAct_Reward[3319370]["DeleteItem"][1]["Id"] = 3319370
	tFebOffLineAct_Reward[3319370]["RewardStrengthValue"] = {} 
	tFebOffLineAct_Reward[3319370]["RewardStrengthValue"]["Value"] = 100000
	tFebOffLineAct_Reward[3319370]["RewardEffect"] = {}
	tFebOffLineAct_Reward[3319370]["RewardEffect"]["Effect"] = "zf2-e128"
	tFebOffLineAct_Reward[3319370]["LogId"] = 12001274
	
	-- 蓝色可选包
	tFebOffLineAct_Reward[3319371] = {}
	tFebOffLineAct_Reward[3319371][4020101] = {}
	tFebOffLineAct_Reward[3319371][4020101]["LogId"] = 12001274
	tFebOffLineAct_Reward[3319371][4020101]["RewardNoNeedTip"] = 1 
	tFebOffLineAct_Reward[3319371][4020101]["DeleteItem"] = {}
	tFebOffLineAct_Reward[3319371][4020101]["DeleteItem"][1] = {}
	tFebOffLineAct_Reward[3319371][4020101]["DeleteItem"][1]["Id"] = 3319371
	tFebOffLineAct_Reward[3319371][4020101]["RewardEffect"] = {}
	tFebOffLineAct_Reward[3319371][4020101]["RewardEffect"]["Effect"] = "angelwing"
	tFebOffLineAct_Reward[3319371][4020101]["RewardItem"] = {}
	tFebOffLineAct_Reward[3319371][4020101]["RewardItem"][1] = {}
	tFebOffLineAct_Reward[3319371][4020101]["RewardItem"][1]["Id"] = 4020101
	tFebOffLineAct_Reward[3319371][4020101]["RewardItem"][1]["Attr"] = "0 1"
	
	tFebOffLineAct_Reward[3319371][4020201] = {}
	tFebOffLineAct_Reward[3319371][4020201]["LogId"] = 12001274
	tFebOffLineAct_Reward[3319371][4020201]["RewardNoNeedTip"] = 1 
	tFebOffLineAct_Reward[3319371][4020201]["DeleteItem"] = {}
	tFebOffLineAct_Reward[3319371][4020201]["DeleteItem"][1] = {}
	tFebOffLineAct_Reward[3319371][4020201]["DeleteItem"][1]["Id"] = 3319371
	tFebOffLineAct_Reward[3319371][4020201]["RewardEffect"] = {}
	tFebOffLineAct_Reward[3319371][4020201]["RewardEffect"]["Effect"] = "angelwing"
	tFebOffLineAct_Reward[3319371][4020201]["RewardItem"] = {}
	tFebOffLineAct_Reward[3319371][4020201]["RewardItem"][1] = {}
	tFebOffLineAct_Reward[3319371][4020201]["RewardItem"][1]["Id"] = 4020201
	tFebOffLineAct_Reward[3319371][4020201]["RewardItem"][1]["Attr"] = "0 1"
	
	tFebOffLineAct_Reward[3319371][4020301] = {}
	tFebOffLineAct_Reward[3319371][4020301]["LogId"] = 12001274
	tFebOffLineAct_Reward[3319371][4020301]["RewardNoNeedTip"] = 1 
	tFebOffLineAct_Reward[3319371][4020301]["DeleteItem"] = {}
	tFebOffLineAct_Reward[3319371][4020301]["DeleteItem"][1] = {}
	tFebOffLineAct_Reward[3319371][4020301]["DeleteItem"][1]["Id"] = 3319371
	tFebOffLineAct_Reward[3319371][4020301]["RewardEffect"] = {}
	tFebOffLineAct_Reward[3319371][4020301]["RewardEffect"]["Effect"] = "angelwing"
	tFebOffLineAct_Reward[3319371][4020301]["RewardItem"] = {}
	tFebOffLineAct_Reward[3319371][4020301]["RewardItem"][1] = {}
	tFebOffLineAct_Reward[3319371][4020301]["RewardItem"][1]["Id"] = 4020301
	tFebOffLineAct_Reward[3319371][4020301]["RewardItem"][1]["Attr"] = "0 1"
	
	tFebOffLineAct_Reward[3319371][4020401] = {}
	tFebOffLineAct_Reward[3319371][4020401]["LogId"] = 12001274
	tFebOffLineAct_Reward[3319371][4020401]["RewardNoNeedTip"] = 1 
	tFebOffLineAct_Reward[3319371][4020401]["DeleteItem"] = {}
	tFebOffLineAct_Reward[3319371][4020401]["DeleteItem"][1] = {}
	tFebOffLineAct_Reward[3319371][4020401]["DeleteItem"][1]["Id"] = 3319371
	tFebOffLineAct_Reward[3319371][4020401]["RewardEffect"] = {}
	tFebOffLineAct_Reward[3319371][4020401]["RewardEffect"]["Effect"] = "angelwing"
	tFebOffLineAct_Reward[3319371][4020401]["RewardItem"] = {}
	tFebOffLineAct_Reward[3319371][4020401]["RewardItem"][1] = {}
	tFebOffLineAct_Reward[3319371][4020401]["RewardItem"][1]["Id"] = 4020401
	tFebOffLineAct_Reward[3319371][4020401]["RewardItem"][1]["Attr"] = "0 1"
	
	tFebOffLineAct_Reward[3319371][4020501] = {}
	tFebOffLineAct_Reward[3319371][4020501]["LogId"] = 12001274
	tFebOffLineAct_Reward[3319371][4020501]["RewardNoNeedTip"] = 1 
	tFebOffLineAct_Reward[3319371][4020501]["DeleteItem"] = {}
	tFebOffLineAct_Reward[3319371][4020501]["DeleteItem"][1] = {}
	tFebOffLineAct_Reward[3319371][4020501]["DeleteItem"][1]["Id"] = 3319371
	tFebOffLineAct_Reward[3319371][4020501]["RewardEffect"] = {}
	tFebOffLineAct_Reward[3319371][4020501]["RewardEffect"]["Effect"] = "angelwing"
	tFebOffLineAct_Reward[3319371][4020501]["RewardItem"] = {}
	tFebOffLineAct_Reward[3319371][4020501]["RewardItem"][1] = {}
	tFebOffLineAct_Reward[3319371][4020501]["RewardItem"][1]["Id"] = 4020501
	tFebOffLineAct_Reward[3319371][4020501]["RewardItem"][1]["Attr"] = "0 1"
	
	tFebOffLineAct_Reward[3319371][4020601] = {}
	tFebOffLineAct_Reward[3319371][4020601]["LogId"] = 12001274
	tFebOffLineAct_Reward[3319371][4020601]["RewardNoNeedTip"] = 1 
	tFebOffLineAct_Reward[3319371][4020601]["DeleteItem"] = {}
	tFebOffLineAct_Reward[3319371][4020601]["DeleteItem"][1] = {}
	tFebOffLineAct_Reward[3319371][4020601]["DeleteItem"][1]["Id"] = 3319371
	tFebOffLineAct_Reward[3319371][4020601]["RewardEffect"] = {}
	tFebOffLineAct_Reward[3319371][4020601]["RewardEffect"]["Effect"] = "angelwing"
	tFebOffLineAct_Reward[3319371][4020601]["RewardItem"] = {}
	tFebOffLineAct_Reward[3319371][4020601]["RewardItem"][1] = {}
	tFebOffLineAct_Reward[3319371][4020601]["RewardItem"][1]["Id"] = 4020601
	tFebOffLineAct_Reward[3319371][4020601]["RewardItem"][1]["Attr"] = "0 1"
	
	tFebOffLineAct_Reward[3319371][4020701] = {}
	tFebOffLineAct_Reward[3319371][4020701]["LogId"] = 12001274
	tFebOffLineAct_Reward[3319371][4020701]["RewardNoNeedTip"] = 1 
	tFebOffLineAct_Reward[3319371][4020701]["DeleteItem"] = {}
	tFebOffLineAct_Reward[3319371][4020701]["DeleteItem"][1] = {}
	tFebOffLineAct_Reward[3319371][4020701]["DeleteItem"][1]["Id"] = 3319371
	tFebOffLineAct_Reward[3319371][4020701]["RewardEffect"] = {}
	tFebOffLineAct_Reward[3319371][4020701]["RewardEffect"]["Effect"] = "angelwing"
	tFebOffLineAct_Reward[3319371][4020701]["RewardItem"] = {}
	tFebOffLineAct_Reward[3319371][4020701]["RewardItem"][1] = {}
	tFebOffLineAct_Reward[3319371][4020701]["RewardItem"][1]["Id"] = 4020701
	tFebOffLineAct_Reward[3319371][4020701]["RewardItem"][1]["Attr"] = "0 1"
	
	tFebOffLineAct_Reward[3319371][4020801] = {}
	tFebOffLineAct_Reward[3319371][4020801]["LogId"] = 12001274
	tFebOffLineAct_Reward[3319371][4020801]["RewardNoNeedTip"] = 1 
	tFebOffLineAct_Reward[3319371][4020801]["DeleteItem"] = {}
	tFebOffLineAct_Reward[3319371][4020801]["DeleteItem"][1] = {}
	tFebOffLineAct_Reward[3319371][4020801]["DeleteItem"][1]["Id"] = 3319371
	tFebOffLineAct_Reward[3319371][4020801]["RewardEffect"] = {}
	tFebOffLineAct_Reward[3319371][4020801]["RewardEffect"]["Effect"] = "angelwing"
	tFebOffLineAct_Reward[3319371][4020801]["RewardItem"] = {}
	tFebOffLineAct_Reward[3319371][4020801]["RewardItem"][1] = {}
	tFebOffLineAct_Reward[3319371][4020801]["RewardItem"][1]["Id"] = 4020801
	tFebOffLineAct_Reward[3319371][4020801]["RewardItem"][1]["Attr"] = "0 1"
	
	tFebOffLineAct_Reward[3319371][4020901] = {}
	tFebOffLineAct_Reward[3319371][4020901]["LogId"] = 12001274
	tFebOffLineAct_Reward[3319371][4020901]["RewardNoNeedTip"] = 1 
	tFebOffLineAct_Reward[3319371][4020901]["DeleteItem"] = {}
	tFebOffLineAct_Reward[3319371][4020901]["DeleteItem"][1] = {}
	tFebOffLineAct_Reward[3319371][4020901]["DeleteItem"][1]["Id"] = 3319371
	tFebOffLineAct_Reward[3319371][4020901]["RewardEffect"] = {}
	tFebOffLineAct_Reward[3319371][4020901]["RewardEffect"]["Effect"] = "angelwing"
	tFebOffLineAct_Reward[3319371][4020901]["RewardItem"] = {}
	tFebOffLineAct_Reward[3319371][4020901]["RewardItem"][1] = {}
	tFebOffLineAct_Reward[3319371][4020901]["RewardItem"][1]["Id"] = 4020901
	tFebOffLineAct_Reward[3319371][4020901]["RewardItem"][1]["Attr"] = "0 1"
	
	tFebOffLineAct_Reward[3319371][4021001] = {}
	tFebOffLineAct_Reward[3319371][4021001]["LogId"] = 12001274
	tFebOffLineAct_Reward[3319371][4021001]["RewardNoNeedTip"] = 1 
	tFebOffLineAct_Reward[3319371][4021001]["DeleteItem"] = {}
	tFebOffLineAct_Reward[3319371][4021001]["DeleteItem"][1] = {}
	tFebOffLineAct_Reward[3319371][4021001]["DeleteItem"][1]["Id"] = 3319371
	tFebOffLineAct_Reward[3319371][4021001]["RewardEffect"] = {}
	tFebOffLineAct_Reward[3319371][4021001]["RewardEffect"]["Effect"] = "angelwing"
	tFebOffLineAct_Reward[3319371][4021001]["RewardItem"] = {}
	tFebOffLineAct_Reward[3319371][4021001]["RewardItem"][1] = {}
	tFebOffLineAct_Reward[3319371][4021001]["RewardItem"][1]["Id"] = 4021001
	tFebOffLineAct_Reward[3319371][4021001]["RewardItem"][1]["Attr"] = "0 1"
	
	tFebOffLineAct_Reward[3319371][4021901] = {}
	tFebOffLineAct_Reward[3319371][4021901]["LogId"] = 12001274
	tFebOffLineAct_Reward[3319371][4021901]["RewardNoNeedTip"] = 1 
	tFebOffLineAct_Reward[3319371][4021901]["DeleteItem"] = {}
	tFebOffLineAct_Reward[3319371][4021901]["DeleteItem"][1] = {}
	tFebOffLineAct_Reward[3319371][4021901]["DeleteItem"][1]["Id"] = 3319371
	tFebOffLineAct_Reward[3319371][4021901]["RewardEffect"] = {}
	tFebOffLineAct_Reward[3319371][4021901]["RewardEffect"]["Effect"] = "angelwing"
	tFebOffLineAct_Reward[3319371][4021901]["RewardItem"] = {}
	tFebOffLineAct_Reward[3319371][4021901]["RewardItem"][1] = {}
	tFebOffLineAct_Reward[3319371][4021901]["RewardItem"][1]["Id"] = 4021901
	tFebOffLineAct_Reward[3319371][4021901]["RewardItem"][1]["Attr"] = "0 1"
	
	tFebOffLineAct_Reward[3319371][4022001] = {}
	tFebOffLineAct_Reward[3319371][4022001]["LogId"] = 12001274
	tFebOffLineAct_Reward[3319371][4022001]["RewardNoNeedTip"] = 1 
	tFebOffLineAct_Reward[3319371][4022001]["DeleteItem"] = {}
	tFebOffLineAct_Reward[3319371][4022001]["DeleteItem"][1] = {}
	tFebOffLineAct_Reward[3319371][4022001]["DeleteItem"][1]["Id"] = 3319371
	tFebOffLineAct_Reward[3319371][4022001]["RewardEffect"] = {}
	tFebOffLineAct_Reward[3319371][4022001]["RewardEffect"]["Effect"] = "angelwing"
	tFebOffLineAct_Reward[3319371][4022001]["RewardItem"] = {}
	tFebOffLineAct_Reward[3319371][4022001]["RewardItem"][1] = {}
	tFebOffLineAct_Reward[3319371][4022001]["RewardItem"][1]["Id"] = 4022001
	tFebOffLineAct_Reward[3319371][4022001]["RewardItem"][1]["Attr"] = "0 1"
	
	tFebOffLineAct_Reward[3319371][4021501] = {}
	tFebOffLineAct_Reward[3319371][4021501]["LogId"] = 12001274
	tFebOffLineAct_Reward[3319371][4021501]["RewardNoNeedTip"] = 1 
	tFebOffLineAct_Reward[3319371][4021501]["DeleteItem"] = {}
	tFebOffLineAct_Reward[3319371][4021501]["DeleteItem"][1] = {}
	tFebOffLineAct_Reward[3319371][4021501]["DeleteItem"][1]["Id"] = 3319371
	tFebOffLineAct_Reward[3319371][4021501]["RewardEffect"] = {}
	tFebOffLineAct_Reward[3319371][4021501]["RewardEffect"]["Effect"] = "angelwing"
	tFebOffLineAct_Reward[3319371][4021501]["RewardItem"] = {}
	tFebOffLineAct_Reward[3319371][4021501]["RewardItem"][1] = {}
	tFebOffLineAct_Reward[3319371][4021501]["RewardItem"][1]["Id"] = 4021501
	tFebOffLineAct_Reward[3319371][4021501]["RewardItem"][1]["Attr"] = "0 1"
	
	tFebOffLineAct_Reward[3319371][4021601] = {}
	tFebOffLineAct_Reward[3319371][4021601]["LogId"] = 12001274
	tFebOffLineAct_Reward[3319371][4021601]["RewardNoNeedTip"] = 1 
	tFebOffLineAct_Reward[3319371][4021601]["DeleteItem"] = {}
	tFebOffLineAct_Reward[3319371][4021601]["DeleteItem"][1] = {}
	tFebOffLineAct_Reward[3319371][4021601]["DeleteItem"][1]["Id"] = 3319371
	tFebOffLineAct_Reward[3319371][4021601]["RewardEffect"] = {}
	tFebOffLineAct_Reward[3319371][4021601]["RewardEffect"]["Effect"] = "angelwing"
	tFebOffLineAct_Reward[3319371][4021601]["RewardItem"] = {}
	tFebOffLineAct_Reward[3319371][4021601]["RewardItem"][1] = {}
	tFebOffLineAct_Reward[3319371][4021601]["RewardItem"][1]["Id"] = 4021601
	tFebOffLineAct_Reward[3319371][4021601]["RewardItem"][1]["Attr"] = "0 1"
	
	tFebOffLineAct_Reward[3319371][4021301] = {}
	tFebOffLineAct_Reward[3319371][4021301]["LogId"] = 12001274
	tFebOffLineAct_Reward[3319371][4021301]["RewardNoNeedTip"] = 1 
	tFebOffLineAct_Reward[3319371][4021301]["DeleteItem"] = {}
	tFebOffLineAct_Reward[3319371][4021301]["DeleteItem"][1] = {}
	tFebOffLineAct_Reward[3319371][4021301]["DeleteItem"][1]["Id"] = 3319371
	tFebOffLineAct_Reward[3319371][4021301]["RewardEffect"] = {}
	tFebOffLineAct_Reward[3319371][4021301]["RewardEffect"]["Effect"] = "angelwing"
	tFebOffLineAct_Reward[3319371][4021301]["RewardItem"] = {}
	tFebOffLineAct_Reward[3319371][4021301]["RewardItem"][1] = {}
	tFebOffLineAct_Reward[3319371][4021301]["RewardItem"][1]["Id"] = 4021301
	tFebOffLineAct_Reward[3319371][4021301]["RewardItem"][1]["Attr"] = "0 1"
	
	tFebOffLineAct_Reward[3319371][4021101] = {}
	tFebOffLineAct_Reward[3319371][4021101]["LogId"] = 12001274
	tFebOffLineAct_Reward[3319371][4021101]["RewardNoNeedTip"] = 1 
	tFebOffLineAct_Reward[3319371][4021101]["DeleteItem"] = {}
	tFebOffLineAct_Reward[3319371][4021101]["DeleteItem"][1] = {}
	tFebOffLineAct_Reward[3319371][4021101]["DeleteItem"][1]["Id"] = 3319371
	tFebOffLineAct_Reward[3319371][4021101]["RewardEffect"] = {}
	tFebOffLineAct_Reward[3319371][4021101]["RewardEffect"]["Effect"] = "angelwing"
	tFebOffLineAct_Reward[3319371][4021101]["RewardItem"] = {}
	tFebOffLineAct_Reward[3319371][4021101]["RewardItem"][1] = {}
	tFebOffLineAct_Reward[3319371][4021101]["RewardItem"][1]["Id"] = 4021101
	tFebOffLineAct_Reward[3319371][4021101]["RewardItem"][1]["Attr"] = "0 1"
	
	tFebOffLineAct_Reward[3319371][4021701] = {}
	tFebOffLineAct_Reward[3319371][4021701]["LogId"] = 12001274
	tFebOffLineAct_Reward[3319371][4021701]["RewardNoNeedTip"] = 1 
	tFebOffLineAct_Reward[3319371][4021701]["DeleteItem"] = {}
	tFebOffLineAct_Reward[3319371][4021701]["DeleteItem"][1] = {}
	tFebOffLineAct_Reward[3319371][4021701]["DeleteItem"][1]["Id"] = 3319371
	tFebOffLineAct_Reward[3319371][4021701]["RewardEffect"] = {}
	tFebOffLineAct_Reward[3319371][4021701]["RewardEffect"]["Effect"] = "angelwing"
	tFebOffLineAct_Reward[3319371][4021701]["RewardItem"] = {}
	tFebOffLineAct_Reward[3319371][4021701]["RewardItem"][1] = {}
	tFebOffLineAct_Reward[3319371][4021701]["RewardItem"][1]["Id"] = 4021701
	tFebOffLineAct_Reward[3319371][4021701]["RewardItem"][1]["Attr"] = "0 1"
	
	tFebOffLineAct_Reward[3319371][4021801] = {}
	tFebOffLineAct_Reward[3319371][4021801]["LogId"] = 12001274
	tFebOffLineAct_Reward[3319371][4021801]["RewardNoNeedTip"] = 1 
	tFebOffLineAct_Reward[3319371][4021801]["DeleteItem"] = {}
	tFebOffLineAct_Reward[3319371][4021801]["DeleteItem"][1] = {}
	tFebOffLineAct_Reward[3319371][4021801]["DeleteItem"][1]["Id"] = 3319371
	tFebOffLineAct_Reward[3319371][4021801]["RewardEffect"] = {}
	tFebOffLineAct_Reward[3319371][4021801]["RewardEffect"]["Effect"] = "angelwing"
	tFebOffLineAct_Reward[3319371][4021801]["RewardItem"] = {}
	tFebOffLineAct_Reward[3319371][4021801]["RewardItem"][1] = {}
	tFebOffLineAct_Reward[3319371][4021801]["RewardItem"][1]["Id"] = 4021801
	tFebOffLineAct_Reward[3319371][4021801]["RewardItem"][1]["Attr"] = "0 1"
	
	tFebOffLineAct_Reward[3319371][4021401] = {}
	tFebOffLineAct_Reward[3319371][4021401]["LogId"] = 12001274
	tFebOffLineAct_Reward[3319371][4021401]["RewardNoNeedTip"] = 1 
	tFebOffLineAct_Reward[3319371][4021401]["DeleteItem"] = {}
	tFebOffLineAct_Reward[3319371][4021401]["DeleteItem"][1] = {}
	tFebOffLineAct_Reward[3319371][4021401]["DeleteItem"][1]["Id"] = 3319371
	tFebOffLineAct_Reward[3319371][4021401]["RewardEffect"] = {}
	tFebOffLineAct_Reward[3319371][4021401]["RewardEffect"]["Effect"] = "angelwing"
	tFebOffLineAct_Reward[3319371][4021401]["RewardItem"] = {}
	tFebOffLineAct_Reward[3319371][4021401]["RewardItem"][1] = {}
	tFebOffLineAct_Reward[3319371][4021401]["RewardItem"][1]["Id"] = 4021401
	tFebOffLineAct_Reward[3319371][4021401]["RewardItem"][1]["Attr"] = "0 1"
	
	tFebOffLineAct_Reward[3319371][4023001] = {}
	tFebOffLineAct_Reward[3319371][4023001]["LogId"] = 12001274
	tFebOffLineAct_Reward[3319371][4023001]["RewardNoNeedTip"] = 1 
	tFebOffLineAct_Reward[3319371][4023001]["DeleteItem"] = {}
	tFebOffLineAct_Reward[3319371][4023001]["DeleteItem"][1] = {}
	tFebOffLineAct_Reward[3319371][4023001]["DeleteItem"][1]["Id"] = 3319371
	tFebOffLineAct_Reward[3319371][4023001]["RewardEffect"] = {}
	tFebOffLineAct_Reward[3319371][4023001]["RewardEffect"]["Effect"] = "angelwing"
	tFebOffLineAct_Reward[3319371][4023001]["RewardItem"] = {}
	tFebOffLineAct_Reward[3319371][4023001]["RewardItem"][1] = {}
	tFebOffLineAct_Reward[3319371][4023001]["RewardItem"][1]["Id"] = 4023001
	tFebOffLineAct_Reward[3319371][4023001]["RewardItem"][1]["Attr"] = "0 1"
	
	tFebOffLineAct_Reward[3319371][4021201] = {}
	tFebOffLineAct_Reward[3319371][4021201]["LogId"] = 12001274
	tFebOffLineAct_Reward[3319371][4021201]["RewardNoNeedTip"] = 1 
	tFebOffLineAct_Reward[3319371][4021201]["DeleteItem"] = {}
	tFebOffLineAct_Reward[3319371][4021201]["DeleteItem"][1] = {}
	tFebOffLineAct_Reward[3319371][4021201]["DeleteItem"][1]["Id"] = 3319371
	tFebOffLineAct_Reward[3319371][4021201]["RewardEffect"] = {}
	tFebOffLineAct_Reward[3319371][4021201]["RewardEffect"]["Effect"] = "angelwing"
	tFebOffLineAct_Reward[3319371][4021201]["RewardItem"] = {}
	tFebOffLineAct_Reward[3319371][4021201]["RewardItem"][1] = {}
	tFebOffLineAct_Reward[3319371][4021201]["RewardItem"][1]["Id"] = 4021201
	tFebOffLineAct_Reward[3319371][4021201]["RewardItem"][1]["Attr"] = "0 1"
	
	--蓝色可选包（赠）
	tFebOffLineAct_Reward[3319372] = {}
	tFebOffLineAct_Reward[3319372][4020101] = {}
	tFebOffLineAct_Reward[3319372][4020101]["LogId"] = 12001274
	tFebOffLineAct_Reward[3319372][4020101]["RewardNoNeedTip"] = 1 
	tFebOffLineAct_Reward[3319372][4020101]["DeleteItem"] = {}
	tFebOffLineAct_Reward[3319372][4020101]["DeleteItem"][1] = {}
	tFebOffLineAct_Reward[3319372][4020101]["DeleteItem"][1]["Id"] = 3319372
	tFebOffLineAct_Reward[3319372][4020101]["RewardEffect"] = {}
	tFebOffLineAct_Reward[3319372][4020101]["RewardEffect"]["Effect"] = "angelwing"
	tFebOffLineAct_Reward[3319372][4020101]["RewardItem"] = {}
	tFebOffLineAct_Reward[3319372][4020101]["RewardItem"][1] = {}
	tFebOffLineAct_Reward[3319372][4020101]["RewardItem"][1]["Id"] = 4020101
	tFebOffLineAct_Reward[3319372][4020101]["RewardItem"][1]["Attr"] = "0 1 3"
	
	tFebOffLineAct_Reward[3319372][4020201] = {}
	tFebOffLineAct_Reward[3319372][4020201]["LogId"] = 12001274
	tFebOffLineAct_Reward[3319372][4020201]["RewardNoNeedTip"] = 1 
	tFebOffLineAct_Reward[3319372][4020201]["DeleteItem"] = {}
	tFebOffLineAct_Reward[3319372][4020201]["DeleteItem"][1] = {}
	tFebOffLineAct_Reward[3319372][4020201]["DeleteItem"][1]["Id"] = 3319372
	tFebOffLineAct_Reward[3319372][4020201]["RewardEffect"] = {}
	tFebOffLineAct_Reward[3319372][4020201]["RewardEffect"]["Effect"] = "angelwing"
	tFebOffLineAct_Reward[3319372][4020201]["RewardItem"] = {}
	tFebOffLineAct_Reward[3319372][4020201]["RewardItem"][1] = {}
	tFebOffLineAct_Reward[3319372][4020201]["RewardItem"][1]["Id"] = 4020201
	tFebOffLineAct_Reward[3319372][4020201]["RewardItem"][1]["Attr"] = "0 1 3"
	
	tFebOffLineAct_Reward[3319372][4020301] = {}
	tFebOffLineAct_Reward[3319372][4020301]["LogId"] = 12001274
	tFebOffLineAct_Reward[3319372][4020301]["RewardNoNeedTip"] = 1 
	tFebOffLineAct_Reward[3319372][4020301]["DeleteItem"] = {}
	tFebOffLineAct_Reward[3319372][4020301]["DeleteItem"][1] = {}
	tFebOffLineAct_Reward[3319372][4020301]["DeleteItem"][1]["Id"] = 3319372
	tFebOffLineAct_Reward[3319372][4020301]["RewardEffect"] = {}
	tFebOffLineAct_Reward[3319372][4020301]["RewardEffect"]["Effect"] = "angelwing"
	tFebOffLineAct_Reward[3319372][4020301]["RewardItem"] = {}
	tFebOffLineAct_Reward[3319372][4020301]["RewardItem"][1] = {}
	tFebOffLineAct_Reward[3319372][4020301]["RewardItem"][1]["Id"] = 4020301
	tFebOffLineAct_Reward[3319372][4020301]["RewardItem"][1]["Attr"] = "0 1 3"
	
	tFebOffLineAct_Reward[3319372][4020401] = {}
	tFebOffLineAct_Reward[3319372][4020401]["LogId"] = 12001274
	tFebOffLineAct_Reward[3319372][4020401]["RewardNoNeedTip"] = 1 
	tFebOffLineAct_Reward[3319372][4020401]["DeleteItem"] = {}
	tFebOffLineAct_Reward[3319372][4020401]["DeleteItem"][1] = {}
	tFebOffLineAct_Reward[3319372][4020401]["DeleteItem"][1]["Id"] = 3319372
	tFebOffLineAct_Reward[3319372][4020401]["RewardEffect"] = {}
	tFebOffLineAct_Reward[3319372][4020401]["RewardEffect"]["Effect"] = "angelwing"
	tFebOffLineAct_Reward[3319372][4020401]["RewardItem"] = {}
	tFebOffLineAct_Reward[3319372][4020401]["RewardItem"][1] = {}
	tFebOffLineAct_Reward[3319372][4020401]["RewardItem"][1]["Id"] = 4020401
	tFebOffLineAct_Reward[3319372][4020401]["RewardItem"][1]["Attr"] = "0 1 3"
	
	tFebOffLineAct_Reward[3319372][4020501] = {}
	tFebOffLineAct_Reward[3319372][4020501]["LogId"] = 12001274
	tFebOffLineAct_Reward[3319372][4020501]["RewardNoNeedTip"] = 1 
	tFebOffLineAct_Reward[3319372][4020501]["DeleteItem"] = {}
	tFebOffLineAct_Reward[3319372][4020501]["DeleteItem"][1] = {}
	tFebOffLineAct_Reward[3319372][4020501]["DeleteItem"][1]["Id"] = 3319372
	tFebOffLineAct_Reward[3319372][4020501]["RewardEffect"] = {}
	tFebOffLineAct_Reward[3319372][4020501]["RewardEffect"]["Effect"] = "angelwing"
	tFebOffLineAct_Reward[3319372][4020501]["RewardItem"] = {}
	tFebOffLineAct_Reward[3319372][4020501]["RewardItem"][1] = {}
	tFebOffLineAct_Reward[3319372][4020501]["RewardItem"][1]["Id"] = 4020501
	tFebOffLineAct_Reward[3319372][4020501]["RewardItem"][1]["Attr"] = "0 1 3"
	
	tFebOffLineAct_Reward[3319372][4020601] = {}
	tFebOffLineAct_Reward[3319372][4020601]["LogId"] = 12001274
	tFebOffLineAct_Reward[3319372][4020601]["RewardNoNeedTip"] = 1 
	tFebOffLineAct_Reward[3319372][4020601]["DeleteItem"] = {}
	tFebOffLineAct_Reward[3319372][4020601]["DeleteItem"][1] = {}
	tFebOffLineAct_Reward[3319372][4020601]["DeleteItem"][1]["Id"] = 3319372
	tFebOffLineAct_Reward[3319372][4020601]["RewardEffect"] = {}
	tFebOffLineAct_Reward[3319372][4020601]["RewardEffect"]["Effect"] = "angelwing"
	tFebOffLineAct_Reward[3319372][4020601]["RewardItem"] = {}
	tFebOffLineAct_Reward[3319372][4020601]["RewardItem"][1] = {}
	tFebOffLineAct_Reward[3319372][4020601]["RewardItem"][1]["Id"] = 4020601
	tFebOffLineAct_Reward[3319372][4020601]["RewardItem"][1]["Attr"] = "0 1 3"
	
	tFebOffLineAct_Reward[3319372][4020701] = {}
	tFebOffLineAct_Reward[3319372][4020701]["LogId"] = 12001274
	tFebOffLineAct_Reward[3319372][4020701]["RewardNoNeedTip"] = 1 
	tFebOffLineAct_Reward[3319372][4020701]["DeleteItem"] = {}
	tFebOffLineAct_Reward[3319372][4020701]["DeleteItem"][1] = {}
	tFebOffLineAct_Reward[3319372][4020701]["DeleteItem"][1]["Id"] = 3319372
	tFebOffLineAct_Reward[3319372][4020701]["RewardEffect"] = {}
	tFebOffLineAct_Reward[3319372][4020701]["RewardEffect"]["Effect"] = "angelwing"
	tFebOffLineAct_Reward[3319372][4020701]["RewardItem"] = {}
	tFebOffLineAct_Reward[3319372][4020701]["RewardItem"][1] = {}
	tFebOffLineAct_Reward[3319372][4020701]["RewardItem"][1]["Id"] = 4020701
	tFebOffLineAct_Reward[3319372][4020701]["RewardItem"][1]["Attr"] = "0 1 3"
	
	tFebOffLineAct_Reward[3319372][4020801] = {}
	tFebOffLineAct_Reward[3319372][4020801]["LogId"] = 12001274
	tFebOffLineAct_Reward[3319372][4020801]["RewardNoNeedTip"] = 1 
	tFebOffLineAct_Reward[3319372][4020801]["DeleteItem"] = {}
	tFebOffLineAct_Reward[3319372][4020801]["DeleteItem"][1] = {}
	tFebOffLineAct_Reward[3319372][4020801]["DeleteItem"][1]["Id"] = 3319372
	tFebOffLineAct_Reward[3319372][4020801]["RewardEffect"] = {}
	tFebOffLineAct_Reward[3319372][4020801]["RewardEffect"]["Effect"] = "angelwing"
	tFebOffLineAct_Reward[3319372][4020801]["RewardItem"] = {}
	tFebOffLineAct_Reward[3319372][4020801]["RewardItem"][1] = {}
	tFebOffLineAct_Reward[3319372][4020801]["RewardItem"][1]["Id"] = 4020801
	tFebOffLineAct_Reward[3319372][4020801]["RewardItem"][1]["Attr"] = "0 1 3"
	
	tFebOffLineAct_Reward[3319372][4020901] = {}
	tFebOffLineAct_Reward[3319372][4020901]["LogId"] = 12001274
	tFebOffLineAct_Reward[3319372][4020901]["RewardNoNeedTip"] = 1 
	tFebOffLineAct_Reward[3319372][4020901]["DeleteItem"] = {}
	tFebOffLineAct_Reward[3319372][4020901]["DeleteItem"][1] = {}
	tFebOffLineAct_Reward[3319372][4020901]["DeleteItem"][1]["Id"] = 3319372
	tFebOffLineAct_Reward[3319372][4020901]["RewardEffect"] = {}
	tFebOffLineAct_Reward[3319372][4020901]["RewardEffect"]["Effect"] = "angelwing"
	tFebOffLineAct_Reward[3319372][4020901]["RewardItem"] = {}
	tFebOffLineAct_Reward[3319372][4020901]["RewardItem"][1] = {}
	tFebOffLineAct_Reward[3319372][4020901]["RewardItem"][1]["Id"] = 4020901
	tFebOffLineAct_Reward[3319372][4020901]["RewardItem"][1]["Attr"] = "0 1 3"
	
	tFebOffLineAct_Reward[3319372][4021001] = {}
	tFebOffLineAct_Reward[3319372][4021001]["LogId"] = 12001274
	tFebOffLineAct_Reward[3319372][4021001]["RewardNoNeedTip"] = 1 
	tFebOffLineAct_Reward[3319372][4021001]["DeleteItem"] = {}
	tFebOffLineAct_Reward[3319372][4021001]["DeleteItem"][1] = {}
	tFebOffLineAct_Reward[3319372][4021001]["DeleteItem"][1]["Id"] = 3319372
	tFebOffLineAct_Reward[3319372][4021001]["RewardEffect"] = {}
	tFebOffLineAct_Reward[3319372][4021001]["RewardEffect"]["Effect"] = "angelwing"
	tFebOffLineAct_Reward[3319372][4021001]["RewardItem"] = {}
	tFebOffLineAct_Reward[3319372][4021001]["RewardItem"][1] = {}
	tFebOffLineAct_Reward[3319372][4021001]["RewardItem"][1]["Id"] = 4021001
	tFebOffLineAct_Reward[3319372][4021001]["RewardItem"][1]["Attr"] = "0 1 3"
	
	tFebOffLineAct_Reward[3319372][4021901] = {}
	tFebOffLineAct_Reward[3319372][4021901]["LogId"] = 12001274
	tFebOffLineAct_Reward[3319372][4021901]["RewardNoNeedTip"] = 1 
	tFebOffLineAct_Reward[3319372][4021901]["DeleteItem"] = {}
	tFebOffLineAct_Reward[3319372][4021901]["DeleteItem"][1] = {}
	tFebOffLineAct_Reward[3319372][4021901]["DeleteItem"][1]["Id"] = 3319372
	tFebOffLineAct_Reward[3319372][4021901]["RewardEffect"] = {}
	tFebOffLineAct_Reward[3319372][4021901]["RewardEffect"]["Effect"] = "angelwing"
	tFebOffLineAct_Reward[3319372][4021901]["RewardItem"] = {}
	tFebOffLineAct_Reward[3319372][4021901]["RewardItem"][1] = {}
	tFebOffLineAct_Reward[3319372][4021901]["RewardItem"][1]["Id"] = 4021901
	tFebOffLineAct_Reward[3319372][4021901]["RewardItem"][1]["Attr"] = "0 1 3"

	tFebOffLineAct_Reward[3319372][4022001] = {}
	tFebOffLineAct_Reward[3319372][4022001]["LogId"] = 12001274
	tFebOffLineAct_Reward[3319372][4022001]["RewardNoNeedTip"] = 1 
	tFebOffLineAct_Reward[3319372][4022001]["DeleteItem"] = {}
	tFebOffLineAct_Reward[3319372][4022001]["DeleteItem"][1] = {}
	tFebOffLineAct_Reward[3319372][4022001]["DeleteItem"][1]["Id"] = 3319372
	tFebOffLineAct_Reward[3319372][4022001]["RewardEffect"] = {}
	tFebOffLineAct_Reward[3319372][4022001]["RewardEffect"]["Effect"] = "angelwing"
	tFebOffLineAct_Reward[3319372][4022001]["RewardItem"] = {}
	tFebOffLineAct_Reward[3319372][4022001]["RewardItem"][1] = {}
	tFebOffLineAct_Reward[3319372][4022001]["RewardItem"][1]["Id"] = 4022001
	tFebOffLineAct_Reward[3319372][4022001]["RewardItem"][1]["Attr"] = "0 1 3"

	tFebOffLineAct_Reward[3319372][4021501] = {}
	tFebOffLineAct_Reward[3319372][4021501]["LogId"] = 12001274
	tFebOffLineAct_Reward[3319372][4021501]["RewardNoNeedTip"] = 1 
	tFebOffLineAct_Reward[3319372][4021501]["DeleteItem"] = {}
	tFebOffLineAct_Reward[3319372][4021501]["DeleteItem"][1] = {}
	tFebOffLineAct_Reward[3319372][4021501]["DeleteItem"][1]["Id"] = 3319372
	tFebOffLineAct_Reward[3319372][4021501]["RewardEffect"] = {}
	tFebOffLineAct_Reward[3319372][4021501]["RewardEffect"]["Effect"] = "angelwing"
	tFebOffLineAct_Reward[3319372][4021501]["RewardItem"] = {}
	tFebOffLineAct_Reward[3319372][4021501]["RewardItem"][1] = {}
	tFebOffLineAct_Reward[3319372][4021501]["RewardItem"][1]["Id"] = 4021501
	tFebOffLineAct_Reward[3319372][4021501]["RewardItem"][1]["Attr"] = "0 1 3"

	tFebOffLineAct_Reward[3319372][4021601] = {}
	tFebOffLineAct_Reward[3319372][4021601]["LogId"] = 12001274
	tFebOffLineAct_Reward[3319372][4021601]["RewardNoNeedTip"] = 1 
	tFebOffLineAct_Reward[3319372][4021601]["DeleteItem"] = {}
	tFebOffLineAct_Reward[3319372][4021601]["DeleteItem"][1] = {}
	tFebOffLineAct_Reward[3319372][4021601]["DeleteItem"][1]["Id"] = 3319372
	tFebOffLineAct_Reward[3319372][4021601]["RewardEffect"] = {}
	tFebOffLineAct_Reward[3319372][4021601]["RewardEffect"]["Effect"] = "angelwing"
	tFebOffLineAct_Reward[3319372][4021601]["RewardItem"] = {}
	tFebOffLineAct_Reward[3319372][4021601]["RewardItem"][1] = {}
	tFebOffLineAct_Reward[3319372][4021601]["RewardItem"][1]["Id"] = 4021601
	tFebOffLineAct_Reward[3319372][4021601]["RewardItem"][1]["Attr"] = "0 1 3"

	tFebOffLineAct_Reward[3319372][4021301] = {}
	tFebOffLineAct_Reward[3319372][4021301]["LogId"] = 12001274
	tFebOffLineAct_Reward[3319372][4021301]["RewardNoNeedTip"] = 1 
	tFebOffLineAct_Reward[3319372][4021301]["DeleteItem"] = {}
	tFebOffLineAct_Reward[3319372][4021301]["DeleteItem"][1] = {}
	tFebOffLineAct_Reward[3319372][4021301]["DeleteItem"][1]["Id"] = 3319372
	tFebOffLineAct_Reward[3319372][4021301]["RewardEffect"] = {}
	tFebOffLineAct_Reward[3319372][4021301]["RewardEffect"]["Effect"] = "angelwing"
	tFebOffLineAct_Reward[3319372][4021301]["RewardItem"] = {}
	tFebOffLineAct_Reward[3319372][4021301]["RewardItem"][1] = {}
	tFebOffLineAct_Reward[3319372][4021301]["RewardItem"][1]["Id"] = 4021301
	tFebOffLineAct_Reward[3319372][4021301]["RewardItem"][1]["Attr"] = "0 1 3"

	tFebOffLineAct_Reward[3319372][4021101] = {}
	tFebOffLineAct_Reward[3319372][4021101]["LogId"] = 12001274
	tFebOffLineAct_Reward[3319372][4021101]["RewardNoNeedTip"] = 1 
	tFebOffLineAct_Reward[3319372][4021101]["DeleteItem"] = {}
	tFebOffLineAct_Reward[3319372][4021101]["DeleteItem"][1] = {}
	tFebOffLineAct_Reward[3319372][4021101]["DeleteItem"][1]["Id"] = 3319372
	tFebOffLineAct_Reward[3319372][4021101]["RewardEffect"] = {}
	tFebOffLineAct_Reward[3319372][4021101]["RewardEffect"]["Effect"] = "angelwing"
	tFebOffLineAct_Reward[3319372][4021101]["RewardItem"] = {}
	tFebOffLineAct_Reward[3319372][4021101]["RewardItem"][1] = {}
	tFebOffLineAct_Reward[3319372][4021101]["RewardItem"][1]["Id"] = 4021101
	tFebOffLineAct_Reward[3319372][4021101]["RewardItem"][1]["Attr"] = "0 1 3"

	tFebOffLineAct_Reward[3319372][4021701] = {}
	tFebOffLineAct_Reward[3319372][4021701]["LogId"] = 12001274
	tFebOffLineAct_Reward[3319372][4021701]["RewardNoNeedTip"] = 1 
	tFebOffLineAct_Reward[3319372][4021701]["DeleteItem"] = {}
	tFebOffLineAct_Reward[3319372][4021701]["DeleteItem"][1] = {}
	tFebOffLineAct_Reward[3319372][4021701]["DeleteItem"][1]["Id"] = 3319372
	tFebOffLineAct_Reward[3319372][4021701]["RewardEffect"] = {}
	tFebOffLineAct_Reward[3319372][4021701]["RewardEffect"]["Effect"] = "angelwing"
	tFebOffLineAct_Reward[3319372][4021701]["RewardItem"] = {}
	tFebOffLineAct_Reward[3319372][4021701]["RewardItem"][1] = {}
	tFebOffLineAct_Reward[3319372][4021701]["RewardItem"][1]["Id"] = 4021701
	tFebOffLineAct_Reward[3319372][4021701]["RewardItem"][1]["Attr"] = "0 1 3"

	tFebOffLineAct_Reward[3319372][4021801] = {}
	tFebOffLineAct_Reward[3319372][4021801]["LogId"] = 12001274
	tFebOffLineAct_Reward[3319372][4021801]["RewardNoNeedTip"] = 1 
	tFebOffLineAct_Reward[3319372][4021801]["DeleteItem"] = {}
	tFebOffLineAct_Reward[3319372][4021801]["DeleteItem"][1] = {}
	tFebOffLineAct_Reward[3319372][4021801]["DeleteItem"][1]["Id"] = 3319372
	tFebOffLineAct_Reward[3319372][4021801]["RewardEffect"] = {}
	tFebOffLineAct_Reward[3319372][4021801]["RewardEffect"]["Effect"] = "angelwing"
	tFebOffLineAct_Reward[3319372][4021801]["RewardItem"] = {}
	tFebOffLineAct_Reward[3319372][4021801]["RewardItem"][1] = {}
	tFebOffLineAct_Reward[3319372][4021801]["RewardItem"][1]["Id"] = 4021801
	tFebOffLineAct_Reward[3319372][4021801]["RewardItem"][1]["Attr"] = "0 1 3"

	tFebOffLineAct_Reward[3319372][4021401] = {}
	tFebOffLineAct_Reward[3319372][4021401]["LogId"] = 12001274
	tFebOffLineAct_Reward[3319372][4021401]["RewardNoNeedTip"] = 1 
	tFebOffLineAct_Reward[3319372][4021401]["DeleteItem"] = {}
	tFebOffLineAct_Reward[3319372][4021401]["DeleteItem"][1] = {}
	tFebOffLineAct_Reward[3319372][4021401]["DeleteItem"][1]["Id"] = 3319372
	tFebOffLineAct_Reward[3319372][4021401]["RewardEffect"] = {}
	tFebOffLineAct_Reward[3319372][4021401]["RewardEffect"]["Effect"] = "angelwing"
	tFebOffLineAct_Reward[3319372][4021401]["RewardItem"] = {}
	tFebOffLineAct_Reward[3319372][4021401]["RewardItem"][1] = {}
	tFebOffLineAct_Reward[3319372][4021401]["RewardItem"][1]["Id"] = 4021401
	tFebOffLineAct_Reward[3319372][4021401]["RewardItem"][1]["Attr"] = "0 1 3"

	tFebOffLineAct_Reward[3319372][4023001] = {}
	tFebOffLineAct_Reward[3319372][4023001]["LogId"] = 12001274
	tFebOffLineAct_Reward[3319372][4023001]["RewardNoNeedTip"] = 1 
	tFebOffLineAct_Reward[3319372][4023001]["DeleteItem"] = {}
	tFebOffLineAct_Reward[3319372][4023001]["DeleteItem"][1] = {}
	tFebOffLineAct_Reward[3319372][4023001]["DeleteItem"][1]["Id"] = 3319372
	tFebOffLineAct_Reward[3319372][4023001]["RewardEffect"] = {}
	tFebOffLineAct_Reward[3319372][4023001]["RewardEffect"]["Effect"] = "angelwing"
	tFebOffLineAct_Reward[3319372][4023001]["RewardItem"] = {}
	tFebOffLineAct_Reward[3319372][4023001]["RewardItem"][1] = {}
	tFebOffLineAct_Reward[3319372][4023001]["RewardItem"][1]["Id"] = 4023001
	tFebOffLineAct_Reward[3319372][4023001]["RewardItem"][1]["Attr"] = "0 1 3"

	tFebOffLineAct_Reward[3319372][4021201] = {}
	tFebOffLineAct_Reward[3319372][4021201]["LogId"] = 12001274
	tFebOffLineAct_Reward[3319372][4021201]["RewardNoNeedTip"] = 1 
	tFebOffLineAct_Reward[3319372][4021201]["DeleteItem"] = {}
	tFebOffLineAct_Reward[3319372][4021201]["DeleteItem"][1] = {}
	tFebOffLineAct_Reward[3319372][4021201]["DeleteItem"][1]["Id"] = 3319372
	tFebOffLineAct_Reward[3319372][4021201]["RewardEffect"] = {}
	tFebOffLineAct_Reward[3319372][4021201]["RewardEffect"]["Effect"] = "angelwing"
	tFebOffLineAct_Reward[3319372][4021201]["RewardItem"] = {}
	tFebOffLineAct_Reward[3319372][4021201]["RewardItem"][1] = {}
	tFebOffLineAct_Reward[3319372][4021201]["RewardItem"][1]["Id"] = 4021201
	tFebOffLineAct_Reward[3319372][4021201]["RewardItem"][1]["Attr"] = "0 1 3"
	
	-- +7赤练石&99朵郁金香礼包
	tFebOffLineAct_Reward[3319373] = {}
	tFebOffLineAct_Reward[3319373]["DeleteItem"] = {}
	tFebOffLineAct_Reward[3319373]["DeleteItem"][1] = {}
	tFebOffLineAct_Reward[3319373]["DeleteItem"][1]["Id"] = 3319373
	tFebOffLineAct_Reward[3319373]["RewardItem"] = {}
	tFebOffLineAct_Reward[3319373]["RewardItem"][1] = {}
	tFebOffLineAct_Reward[3319373]["RewardItem"][1]["Id"] = 730007
	tFebOffLineAct_Reward[3319373]["RewardItem"][1]["Attr"] = "0 1"
	tFebOffLineAct_Reward[3319373]["RewardItem"][2] = {}
	tFebOffLineAct_Reward[3319373]["RewardItem"][2]["Id"] = 754099
	tFebOffLineAct_Reward[3319373]["RewardItem"][2]["Attr"] = "0 1"
	tFebOffLineAct_Reward[3319373]["RewardEffect"] = {}
	tFebOffLineAct_Reward[3319373]["RewardEffect"]["Effect"] = "zf2-e128"
	tFebOffLineAct_Reward[3319373]["LogId"] = 12001274
	-- +8赤练石&999朵玫瑰/兰花/百合可选包礼包
	tFebOffLineAct_Reward[3319374] = {}
	tFebOffLineAct_Reward[3319374]["DeleteItem"] = {}
	tFebOffLineAct_Reward[3319374]["DeleteItem"][1] = {}
	tFebOffLineAct_Reward[3319374]["DeleteItem"][1]["Id"] = 3319374
	tFebOffLineAct_Reward[3319374]["RewardItem"] = {}
	tFebOffLineAct_Reward[3319374]["RewardItem"][1] = {}
	tFebOffLineAct_Reward[3319374]["RewardItem"][1]["Id"] = 730008
	tFebOffLineAct_Reward[3319374]["RewardItem"][1]["Attr"] = "0 1"
	tFebOffLineAct_Reward[3319374]["RewardItem"][2] = {}
	tFebOffLineAct_Reward[3319374]["RewardItem"][2]["Id"] = 3304419
	tFebOffLineAct_Reward[3319374]["RewardItem"][2]["Attr"] = "0 1"
	tFebOffLineAct_Reward[3319374]["RewardEffect"] = {}
	tFebOffLineAct_Reward[3319374]["RewardEffect"]["Effect"] = "zf2-e128"
	tFebOffLineAct_Reward[3319374]["LogId"] = 12001274
	-- 璀璨星陨石*2&999朵玫瑰/兰花/百合可选包礼包
	tFebOffLineAct_Reward[3319375] = {}
	tFebOffLineAct_Reward[3319375]["DeleteItem"] = {}
	tFebOffLineAct_Reward[3319375]["DeleteItem"][1] = {}
	tFebOffLineAct_Reward[3319375]["DeleteItem"][1]["Id"] = 3319375
	tFebOffLineAct_Reward[3319375]["RewardItem"] = {}
	tFebOffLineAct_Reward[3319375]["RewardItem"][1] = {}
	tFebOffLineAct_Reward[3319375]["RewardItem"][1]["Id"] = 3009003
	tFebOffLineAct_Reward[3319375]["RewardItem"][1]["Attr"] = "0 2 0 2880 1"
	tFebOffLineAct_Reward[3319375]["RewardItem"][2] = {}
	tFebOffLineAct_Reward[3319375]["RewardItem"][2]["Id"] = 3304419
	tFebOffLineAct_Reward[3319375]["RewardItem"][2]["Attr"] = "0 1"
	tFebOffLineAct_Reward[3319375]["RewardEffect"] = {}
	tFebOffLineAct_Reward[3319375]["RewardEffect"]["Effect"] = "zf2-e128"
	tFebOffLineAct_Reward[3319375]["LogId"] = 12001274
	-- 大固化石*2&99朵郁金香礼包
	tFebOffLineAct_Reward[3319376] = {}
	tFebOffLineAct_Reward[3319376]["DeleteItem"] = {}
	tFebOffLineAct_Reward[3319376]["DeleteItem"][1] = {}
	tFebOffLineAct_Reward[3319376]["DeleteItem"][1]["Id"] = 3319376
	tFebOffLineAct_Reward[3319376]["RewardItem"] = {}
	tFebOffLineAct_Reward[3319376]["RewardItem"][1] = {}
	tFebOffLineAct_Reward[3319376]["RewardItem"][1]["Id"] = 723695
	tFebOffLineAct_Reward[3319376]["RewardItem"][1]["Attr"] = "0 2"
	tFebOffLineAct_Reward[3319376]["RewardItem"][2] = {}
	tFebOffLineAct_Reward[3319376]["RewardItem"][2]["Id"] = 754099
	tFebOffLineAct_Reward[3319376]["RewardItem"][2]["Attr"] = "0 1"
	tFebOffLineAct_Reward[3319376]["RewardEffect"] = {}
	tFebOffLineAct_Reward[3319376]["RewardEffect"]["Effect"] = "zf2-e128"
	tFebOffLineAct_Reward[3319376]["LogId"] = 12001274
	-- 200个万能神纹精粹大礼包
	tFebOffLineAct_Reward[3319377] = {}
	tFebOffLineAct_Reward[3319377]["DeleteItem"] = {}
	tFebOffLineAct_Reward[3319377]["DeleteItem"][1] = {}
	tFebOffLineAct_Reward[3319377]["DeleteItem"][1]["Id"] = 3319377
	tFebOffLineAct_Reward[3319377]["RewardItem"] = {}
	tFebOffLineAct_Reward[3319377]["RewardItem"][1] = {}
	tFebOffLineAct_Reward[3319377]["RewardItem"][1]["Id"] = 4060001
	tFebOffLineAct_Reward[3319377]["RewardItem"][1]["Attr"] = "0 200"
	tFebOffLineAct_Reward[3319377]["RewardEffect"] = {}
	tFebOffLineAct_Reward[3319377]["RewardEffect"]["Effect"] = "zf2-e128"
	tFebOffLineAct_Reward[3319377]["LogId"] = 12001274
	-- 50000赠品天石&999朵郁金香礼包
	tFebOffLineAct_Reward[3319378] = {}
	tFebOffLineAct_Reward[3319378]["DeleteItem"] = {}
	tFebOffLineAct_Reward[3319378]["DeleteItem"][1] = {}
	tFebOffLineAct_Reward[3319378]["DeleteItem"][1]["Id"] = 3319378
	tFebOffLineAct_Reward[3319378]["RewardEMoneyMono"] = {}
	tFebOffLineAct_Reward[3319378]["RewardEMoneyMono"]["Value"]= 50000
	tFebOffLineAct_Reward[3319378]["RewardItem"] = {}
	tFebOffLineAct_Reward[3319378]["RewardItem"][1] = {}
	tFebOffLineAct_Reward[3319378]["RewardItem"][1]["Id"] = 754999
	tFebOffLineAct_Reward[3319378]["RewardItem"][1]["Attr"] = "0 1"
	tFebOffLineAct_Reward[3319378]["RewardEffect"] = {}
	tFebOffLineAct_Reward[3319378]["RewardEffect"]["Effect"] = "zf2-e128"
	tFebOffLineAct_Reward[3319378]["LogId"] = 12001274
	tFebOffLineAct_Reward[3319378]["EmoneyLog"] = "10000	0137	0	0	50000	"
	
	
----------------------------------------逻辑部分------------------------------------
-- 可选包逻辑
function FebOffLineAct_Select(nItemId,nIndex)
	-- 检测物品是否存在
	if not Item_ChkItem(nItemId) then
		return false
	end
	
	-- 判断背包空间
	local nSpace = RewardTemplate_GetRewardSpace(tFebOffLineAct_Reward[nItemId][nIndex])
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(string.format(tFebOffLineAct_Text[105]["FullBag"],nSpace))
		return false
	end
	
	RewardTemplate_UseItemAndMsg(tFebOffLineAct_Reward[nItemId][nIndex])
	return true
end

-- 蓝色可选包·选择符文
function FebOffLineAct_BlueConfirm(nItemId,sIndex,nRuneId)
	tItem[nItemId]["OptionFunc121"] = "FebOffLineAct_GetRune</N>" .. nItemId .. "</N>" .. nRuneId .. "</S>" .. sIndex
	tItem[nItemId]["Text121"] = string.format(tFebOffLineAct_Text[nItemId]["Text121"],tFebOffLineAct_Text[nItemId][sIndex])
	tItem[nItemId]["Text122"] = string.format(tFebOffLineAct_Text[nItemId]["Text122"],tFebOffLineAct_Text["RuneEffect"][nRuneId])
	LinkItemGossipFunc_New(nItemId,"1-2")
	return true
end 

-- 蓝色可选包·获得符文
function FebOffLineAct_GetRune(nItemId,nRuneId,sIndex)
	if not Item_ChkItem(nItemId) then 
		return Sys_MsgBox(tFebOffLineAct_Text["SystemTips"][nItemId])
	end
	if RewardTemplate_UseItemAndMsg(tFebOffLineAct_Reward[nItemId][nRuneId]) then 
		local sText = string.format(tFebOffLineAct_Text["SystemTips"]["GetRune"],tFebOffLineAct_Text[nItemId][sIndex])
		User_TalkChannel2005(sText)
	end
end 


----------------------------------------模板部分-------------------------------------
-------------------------------物品模板
-- 极品天怒/地灵可选包
tItemFace[3319362] = 2073
tItem[3319362] = tItem[3319362] or {}
tItem[3319362]["DialogueText"] = tFebOffLineAct_Text[3319362]
tItem[3319362]["Text1-1"] = {111}
tItem[3319362]["tOption1-1"] = {111,112,113}
tItem[3319362]["OptionFunc111"] = "FebOffLineAct_Select</N>3319362</N>700103"
tItem[3319362]["OptionFunc112"] = "FebOffLineAct_Select</N>3319362</N>700123"

-- 蓝色神纹可选包
tItemFace[3319371] = 1098
tItem[3319371] = tItem[3319371] or {}
tItem[3319371]["DialogueText"] = tFebOffLineAct_Text[3319371]

tItem[3319371]["Text1-1"] = {111}
tItem[3319371]["tOption1-1"] = {111,112,113,114,115,116,117,118,119,1110,1111,1112,1113,1114,1115,1116,1117,1118,1119,1120,1121}
tItem[3319371]["OptionFunc111"] = "FebOffLineAct_BlueConfirm</N>3319371</S>Option111</N>4020101"
tItem[3319371]["OptionFunc112"] = "FebOffLineAct_BlueConfirm</N>3319371</S>Option112</N>4020201"
tItem[3319371]["OptionFunc113"] = "FebOffLineAct_BlueConfirm</N>3319371</S>Option113</N>4020301"
tItem[3319371]["OptionFunc114"] = "FebOffLineAct_BlueConfirm</N>3319371</S>Option114</N>4020401"
tItem[3319371]["OptionFunc115"] = "FebOffLineAct_BlueConfirm</N>3319371</S>Option115</N>4020501"
tItem[3319371]["OptionFunc116"] = "FebOffLineAct_BlueConfirm</N>3319371</S>Option116</N>4020601"
tItem[3319371]["OptionFunc117"] = "FebOffLineAct_BlueConfirm</N>3319371</S>Option117</N>4020701"
tItem[3319371]["OptionFunc118"] = "FebOffLineAct_BlueConfirm</N>3319371</S>Option118</N>4020801"
tItem[3319371]["OptionFunc119"] = "FebOffLineAct_BlueConfirm</N>3319371</S>Option119</N>4020901"
tItem[3319371]["OptionFunc1110"] = "FebOffLineAct_BlueConfirm</N>3319371</S>Option1110</N>4021001"
tItem[3319371]["OptionFunc1111"] = "FebOffLineAct_BlueConfirm</N>3319371</S>Option1111</N>4021901"
tItem[3319371]["OptionFunc1112"] = "FebOffLineAct_BlueConfirm</N>3319371</S>Option1112</N>4022001"
tItem[3319371]["OptionFunc1113"] = "FebOffLineAct_BlueConfirm</N>3319371</S>Option1113</N>4021501"
tItem[3319371]["OptionFunc1114"] = "FebOffLineAct_BlueConfirm</N>3319371</S>Option1114</N>4021601"
tItem[3319371]["OptionFunc1115"] = "FebOffLineAct_BlueConfirm</N>3319371</S>Option1115</N>4021301"
tItem[3319371]["OptionFunc1116"] = "FebOffLineAct_BlueConfirm</N>3319371</S>Option1116</N>4021101"
tItem[3319371]["OptionFunc1117"] = "FebOffLineAct_BlueConfirm</N>3319371</S>Option1117</N>4021701"
tItem[3319371]["OptionFunc1118"] = "FebOffLineAct_BlueConfirm</N>3319371</S>Option1118</N>4021801"
tItem[3319371]["OptionFunc1119"] = "FebOffLineAct_BlueConfirm</N>3319371</S>Option1119</N>4021401"
tItem[3319371]["OptionFunc1120"] = "FebOffLineAct_BlueConfirm</N>3319371</S>Option1120</N>4023001"
tItem[3319371]["OptionFunc1121"] = "FebOffLineAct_BlueConfirm</N>3319371</S>Option1121</N>4021201"

-- 二次确认
tItem[3319371]["Text1-2"] = {121,122}
tItem[3319371]["tOption1-2"] = {121,122}
tItem[3319371]["OptionPoint122"] = "1-1"


-- 蓝色神纹可选包（赠）
tItemFace[3319372] = 1098
tItem[3319372] = tItem[3319372] or {}
tItem[3319372]["DialogueText"] = tFebOffLineAct_Text[3319372]

tItem[3319372]["Text1-1"] = {111}
tItem[3319372]["tOption1-1"] = {111,112,113,114,115,116,117,118,119,1110,1111,1112,1113,1114,1115,1116,1117,1118,1119,1120,1121}
tItem[3319372]["OptionFunc111"] = "FebOffLineAct_BlueConfirm</N>3319372</S>Option111</N>4020101"
tItem[3319372]["OptionFunc112"] = "FebOffLineAct_BlueConfirm</N>3319372</S>Option112</N>4020201"
tItem[3319372]["OptionFunc113"] = "FebOffLineAct_BlueConfirm</N>3319372</S>Option113</N>4020301"
tItem[3319372]["OptionFunc114"] = "FebOffLineAct_BlueConfirm</N>3319372</S>Option114</N>4020401"
tItem[3319372]["OptionFunc115"] = "FebOffLineAct_BlueConfirm</N>3319372</S>Option115</N>4020501"
tItem[3319372]["OptionFunc116"] = "FebOffLineAct_BlueConfirm</N>3319372</S>Option116</N>4020601"
tItem[3319372]["OptionFunc117"] = "FebOffLineAct_BlueConfirm</N>3319372</S>Option117</N>4020701"
tItem[3319372]["OptionFunc118"] = "FebOffLineAct_BlueConfirm</N>3319372</S>Option118</N>4020801"
tItem[3319372]["OptionFunc119"] = "FebOffLineAct_BlueConfirm</N>3319372</S>Option119</N>4020901"
tItem[3319372]["OptionFunc1110"] = "FebOffLineAct_BlueConfirm</N>3319372</S>Option1110</N>4021001"
tItem[3319372]["OptionFunc1111"] = "FebOffLineAct_BlueConfirm</N>3319372</S>Option1111</N>4021901"
tItem[3319372]["OptionFunc1112"] = "FebOffLineAct_BlueConfirm</N>3319372</S>Option1112</N>4022001"
tItem[3319372]["OptionFunc1113"] = "FebOffLineAct_BlueConfirm</N>3319372</S>Option1113</N>4021501"
tItem[3319372]["OptionFunc1114"] = "FebOffLineAct_BlueConfirm</N>3319372</S>Option1114</N>4021601"
tItem[3319372]["OptionFunc1115"] = "FebOffLineAct_BlueConfirm</N>3319372</S>Option1115</N>4021301"
tItem[3319372]["OptionFunc1116"] = "FebOffLineAct_BlueConfirm</N>3319372</S>Option1116</N>4021101"
tItem[3319372]["OptionFunc1117"] = "FebOffLineAct_BlueConfirm</N>3319372</S>Option1117</N>4021701"
tItem[3319372]["OptionFunc1118"] = "FebOffLineAct_BlueConfirm</N>3319372</S>Option1118</N>4021801"
tItem[3319372]["OptionFunc1119"] = "FebOffLineAct_BlueConfirm</N>3319372</S>Option1119</N>4021401"
tItem[3319372]["OptionFunc1120"] = "FebOffLineAct_BlueConfirm</N>3319372</S>Option1120</N>4023001"
tItem[3319372]["OptionFunc1121"] = "FebOffLineAct_BlueConfirm</N>3319372</S>Option1121</N>4021201"

-- 二次确认
tItem[3319372]["Text1-2"] = {121,122}
tItem[3319372]["tOption1-2"] = {121,122}
tItem[3319372]["OptionPoint122"] = "1-1"


-- 小抽奖券礼包*100
tItem[3319363] = tItem[3319363] or {}
-- 100,000气力值赠
tItem[3319364] = tItem[3319363] or {}
-- 5000气力值赠
tItem[3319365] = tItem[3319363] or {}
-- 修为值3000点赠
tItem[3319366] = tItem[3319363] or {}
-- 大爆丹10颗
tItem[3319367] = tItem[3319363] or {}
-- 强练丹50颗
tItem[3319368] = tItem[3319363] or {}
-- 小爆丹50颗
tItem[3319369] = tItem[3319363] or {}
-- 100,000气力值赠
tItem[3319370] = tItem[3319363] or {}
-- +7赤练石&99朵郁金香礼包
tItem[3319373] = tItem[3319363] or {}
--  +8赤练石&999朵玫瑰/兰花/百合可选包礼包
tItem[3319374] = tItem[3319363] or {}
-- 璀璨星陨石*2&999朵玫瑰/兰花/百合可选包礼包
tItem[3319375] = tItem[3319363] or {}
-- 大固化石*2&99朵郁金香礼包
tItem[3319376] = tItem[3319363] or {}
-- 200个万能神纹精粹大礼包
tItem[3319377] = tItem[3319363] or {}
-- 50000赠品天石&999朵郁金香礼包
tItem[3319378] = tItem[3319363] or {}
tItem[3319363]["Function"] = function(nItemId,sItemName)
	local nUserId = Get_UserId()
	local bJudge = TermsOfUse_Main(nItemId,tFebOffLineAct_Reward[nItemId])
	
	if not bJudge then
		return
	end
	
	RewardTemplate_UseItemAndMsg(tFebOffLineAct_Reward[nItemId],nUserId,bJudge)
end


