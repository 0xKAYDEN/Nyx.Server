---------------------------------------------------------------------------------------------------
--Name:			170123[英文征服][活动脚本]2月充值有礼礼包及发奖action
--Purpose:		2月充值有礼礼包及发奖action
--Creator: 		杨晓晓
--Created:		2017/01/23
------------------------------------------------------------------------------------------------------
--命名前缀
--FebruaryPack_
-----------------------------------------------------------------------------------------------------
--logid :12000638

--常量配置表
local tFebruaryPack_Cont = {}
	--背包空间
	tFebruaryPack_Cont["NoBagSpace"] =1
	tFebruaryPack_Cont["LackBagSpace"] =3
	--二、三阶礼盒ID
	tFebruaryPack_Cont["ThirdItemID"] =3302173
	tFebruaryPack_Cont["SecItemID"] = 3302172
	--动态码
	tFebruaryPack_Cont["nGlobal"] = 51442
	tFebruaryPack_Cont["nDate"] = "00:00 00:03"
--配置奖励表
local	tFebruaryPack_Reward = {}
	--玲珑百宝袋:打开后可在Stone(+3)*1、1000ChiPoints、60CPs这3种奖励中任选其一。
	tFebruaryPack_Reward[3302176] = {}
	tFebruaryPack_Reward[3302176][1] = {}
	tFebruaryPack_Reward[3302176][1]["DeleteItem"] = {} 
	tFebruaryPack_Reward[3302176][1]["DeleteItem"][1] = {}
	tFebruaryPack_Reward[3302176][1]["DeleteItem"][1]["Id"] = 3302176
	tFebruaryPack_Reward[3302176][1]["RewardItem"] = {} 
	tFebruaryPack_Reward[3302176][1]["RewardItem"][1] = {}
	tFebruaryPack_Reward[3302176][1]["RewardItem"][1]["Id"] = 730003
	tFebruaryPack_Reward[3302176][1]["RewardItem"][1]["Attr"] = "0 1" 
	tFebruaryPack_Reward[3302176][1]["LogId"] = 12000638
	tFebruaryPack_Reward[3302176][1]["RewardEffect"] = {}
	tFebruaryPack_Reward[3302176][1]["RewardEffect"]["SzObj"] = "self"
	tFebruaryPack_Reward[3302176][1]["RewardEffect"]["Effect"] = "zf2-e280"
	tFebruaryPack_Reward[3302176][2] = {}
	tFebruaryPack_Reward[3302176][2]["DeleteItem"] = {} 
	tFebruaryPack_Reward[3302176][2]["DeleteItem"][1] = {}
	tFebruaryPack_Reward[3302176][2]["DeleteItem"][1]["Id"] = 3302176
	tFebruaryPack_Reward[3302176][2]["RewardItem"] = {} 
	tFebruaryPack_Reward[3302176][2]["RewardItem"][1] = {}
	tFebruaryPack_Reward[3302176][2]["RewardItem"][1]["Id"] = 3004580
	tFebruaryPack_Reward[3302176][2]["RewardItem"][1]["Attr"] = "0 1" 
	tFebruaryPack_Reward[3302176][2]["LogId"] = 12000638
	tFebruaryPack_Reward[3302176][2]["RewardEffect"] = {}
	tFebruaryPack_Reward[3302176][2]["RewardEffect"]["SzObj"] = "self"
	tFebruaryPack_Reward[3302176][2]["RewardEffect"]["Effect"] = "zf2-e280"
	tFebruaryPack_Reward[3302176][3] = {}
	tFebruaryPack_Reward[3302176][3]["DeleteItem"] = {} 
	tFebruaryPack_Reward[3302176][3]["DeleteItem"][1] = {}
	tFebruaryPack_Reward[3302176][3]["DeleteItem"][1]["Id"] = 3302176
	tFebruaryPack_Reward[3302176][3]["RewardItem"] = {} 
	tFebruaryPack_Reward[3302176][3]["RewardItem"][1] = {}
	tFebruaryPack_Reward[3302176][3]["RewardItem"][1]["Id"] = 3008927
	tFebruaryPack_Reward[3302176][3]["RewardItem"][1]["Attr"] = "0 1" 
	tFebruaryPack_Reward[3302176][3]["LogId"] = 12000638
	tFebruaryPack_Reward[3302176][3]["RewardEffect"] = {}
	tFebruaryPack_Reward[3302176][3]["RewardEffect"]["SzObj"] = "self"
	tFebruaryPack_Reward[3302176][3]["RewardEffect"]["Effect"] = "zf2-e280"

	--精致百宝袋:打开后可在Stone(+4)&Stone(+3)、4000ChiPoints、200CPs这3种奖励中任选其一。
	tFebruaryPack_Reward[3302177] = {}
	tFebruaryPack_Reward[3302177][1] = {}
	tFebruaryPack_Reward[3302177][1]["DeleteItem"] = {} 
	tFebruaryPack_Reward[3302177][1]["DeleteItem"][1] = {}
	tFebruaryPack_Reward[3302177][1]["DeleteItem"][1]["Id"] = 3302177
	tFebruaryPack_Reward[3302177][1]["RewardItem"] = {} 
	tFebruaryPack_Reward[3302177][1]["RewardItem"][1] = {}
	tFebruaryPack_Reward[3302177][1]["RewardItem"][1]["Id"] = 3006028
	tFebruaryPack_Reward[3302177][1]["RewardItem"][1]["Attr"] = "0 1" 
	tFebruaryPack_Reward[3302177][1]["LogId"] = 12000638
	tFebruaryPack_Reward[3302177][1]["RewardEffect"] = {}
	tFebruaryPack_Reward[3302177][1]["RewardEffect"]["SzObj"] = "self"
	tFebruaryPack_Reward[3302177][1]["RewardEffect"]["Effect"] = "zf2-e280"
	tFebruaryPack_Reward[3302177][2] = {}
	tFebruaryPack_Reward[3302177][2]["DeleteItem"] = {} 
	tFebruaryPack_Reward[3302177][2]["DeleteItem"][1] = {}
	tFebruaryPack_Reward[3302177][2]["DeleteItem"][1]["Id"] = 3302177
	tFebruaryPack_Reward[3302177][2]["RewardItem"] = {} 
	tFebruaryPack_Reward[3302177][2]["RewardItem"][1] = {}
	tFebruaryPack_Reward[3302177][2]["RewardItem"][1]["Id"] = 3008199
	tFebruaryPack_Reward[3302177][2]["RewardItem"][1]["Attr"] = "0 1" 
	tFebruaryPack_Reward[3302177][2]["LogId"] = 12000638
	tFebruaryPack_Reward[3302177][2]["RewardEffect"] = {}
	tFebruaryPack_Reward[3302177][2]["RewardEffect"]["SzObj"] = "self"
	tFebruaryPack_Reward[3302177][2]["RewardEffect"]["Effect"] = "zf2-e280"
	tFebruaryPack_Reward[3302177][3] = {}
	tFebruaryPack_Reward[3302177][3]["DeleteItem"] = {} 
	tFebruaryPack_Reward[3302177][3]["DeleteItem"][1] = {}
	tFebruaryPack_Reward[3302177][3]["DeleteItem"][1]["Id"] = 3302177
	tFebruaryPack_Reward[3302177][3]["RewardItem"] = {} 
	tFebruaryPack_Reward[3302177][3]["RewardItem"][1] = {} 
	tFebruaryPack_Reward[3302177][3]["RewardItem"][1]["Id"] = 3005646
	tFebruaryPack_Reward[3302177][3]["RewardItem"][1]["Attr"] = "0 1" 
	tFebruaryPack_Reward[3302177][3]["LogId"] = 12000638
	tFebruaryPack_Reward[3302177][3]["RewardEffect"] = {}
	tFebruaryPack_Reward[3302177][3]["RewardEffect"]["SzObj"] = "self"
	tFebruaryPack_Reward[3302177][3]["RewardEffect"]["Effect"] = "zf2-e280"

	--豪华百宝袋:打开后可在Stone(+5)*1、10000ChiPoints、500CPs这3种奖励中任选其一。
	tFebruaryPack_Reward[3302178] = {}
	tFebruaryPack_Reward[3302178][1] = {}
	tFebruaryPack_Reward[3302178][1]["DeleteItem"] = {} 
	tFebruaryPack_Reward[3302178][1]["DeleteItem"][1] = {}
	tFebruaryPack_Reward[3302178][1]["DeleteItem"][1]["Id"] = 3302178
	tFebruaryPack_Reward[3302178][1]["RewardItem"] = {} 
	tFebruaryPack_Reward[3302178][1]["RewardItem"][1] = {}
	tFebruaryPack_Reward[3302178][1]["RewardItem"][1]["Id"] = 730005
	tFebruaryPack_Reward[3302178][1]["RewardItem"][1]["Attr"] = "0 1" 
	tFebruaryPack_Reward[3302178][1]["LogId"] = 12000638
	tFebruaryPack_Reward[3302178][1]["RewardEffect"] = {}
	tFebruaryPack_Reward[3302178][1]["RewardEffect"]["SzObj"] = "self"
	tFebruaryPack_Reward[3302178][1]["RewardEffect"]["Effect"] = "zf2-e280"
	tFebruaryPack_Reward[3302178][2] = {}
	tFebruaryPack_Reward[3302178][2]["DeleteItem"] = {} 
	tFebruaryPack_Reward[3302178][2]["DeleteItem"][1] = {}
	tFebruaryPack_Reward[3302178][2]["DeleteItem"][1]["Id"] = 3302178
	tFebruaryPack_Reward[3302178][2]["RewardItem"] = {} 
	tFebruaryPack_Reward[3302178][2]["RewardItem"][1] = {}
	tFebruaryPack_Reward[3302178][2]["RewardItem"][1]["Id"] = 3200706
	tFebruaryPack_Reward[3302178][2]["RewardItem"][1]["Attr"] = "0 1" 
	tFebruaryPack_Reward[3302178][2]["LogId"] = 12000638
	tFebruaryPack_Reward[3302178][2]["RewardEffect"] = {}
	tFebruaryPack_Reward[3302178][2]["RewardEffect"]["SzObj"] = "self"
	tFebruaryPack_Reward[3302178][2]["RewardEffect"]["Effect"] = "zf2-e280"
	tFebruaryPack_Reward[3302178][3] = {}
	tFebruaryPack_Reward[3302178][3]["DeleteItem"] = {} 
	tFebruaryPack_Reward[3302178][3]["DeleteItem"][1] = {}
	tFebruaryPack_Reward[3302178][3]["DeleteItem"][1]["Id"] = 3302178
	tFebruaryPack_Reward[3302178][3]["RewardItem"] = {} 
	tFebruaryPack_Reward[3302178][3]["RewardItem"][1] = {}
	tFebruaryPack_Reward[3302178][3]["RewardItem"][1]["Id"] = 3005648
	tFebruaryPack_Reward[3302178][3]["RewardItem"][1]["Attr"] = "0 1" 
	tFebruaryPack_Reward[3302178][3]["LogId"] = 12000638
	tFebruaryPack_Reward[3302178][3]["RewardEffect"] = {}
	tFebruaryPack_Reward[3302178][3]["RewardEffect"]["SzObj"] = "self"
	tFebruaryPack_Reward[3302178][3]["RewardEffect"]["Effect"] = "zf2-e280"

	--至尊百宝袋:打开后可在Stone(+6)&Stone(+5)、25000ChiPoints和1500CPs这3种奖励中任选其一。
	tFebruaryPack_Reward[3302179] = {}
	tFebruaryPack_Reward[3302179][1] = {}
	tFebruaryPack_Reward[3302179][1]["DeleteItem"] = {} 
	tFebruaryPack_Reward[3302179][1]["DeleteItem"][1] = {}
	tFebruaryPack_Reward[3302179][1]["DeleteItem"][1]["Id"] = 3302179
	tFebruaryPack_Reward[3302179][1]["RewardItem"] = {} 
	tFebruaryPack_Reward[3302179][1]["RewardItem"][1] = {}
	tFebruaryPack_Reward[3302179][1]["RewardItem"][1]["Id"] = 3006030
	tFebruaryPack_Reward[3302179][1]["RewardItem"][1]["Attr"] = "0 1" 
	tFebruaryPack_Reward[3302179][1]["LogId"] = 12000638
	tFebruaryPack_Reward[3302179][1]["RewardEffect"] = {}
	tFebruaryPack_Reward[3302179][1]["RewardEffect"]["SzObj"] = "self"
	tFebruaryPack_Reward[3302179][1]["RewardEffect"]["Effect"] = "zf2-e280"
	tFebruaryPack_Reward[3302179][2] = {}
	tFebruaryPack_Reward[3302179][2]["DeleteItem"] = {} 
	tFebruaryPack_Reward[3302179][2]["DeleteItem"][1] = {}
	tFebruaryPack_Reward[3302179][2]["DeleteItem"][1]["Id"] = 3302179
	tFebruaryPack_Reward[3302179][2]["RewardItem"] = {} 
	tFebruaryPack_Reward[3302179][2]["RewardItem"][1] = {}
	tFebruaryPack_Reward[3302179][2]["RewardItem"][1]["Id"] = 3200350
	tFebruaryPack_Reward[3302179][2]["RewardItem"][1]["Attr"] = "0 1" 
	tFebruaryPack_Reward[3302179][2]["LogId"] = 12000638
	tFebruaryPack_Reward[3302179][2]["RewardEffect"] = {}
	tFebruaryPack_Reward[3302179][2]["RewardEffect"]["SzObj"] = "self"
	tFebruaryPack_Reward[3302179][2]["RewardEffect"]["Effect"] = "zf2-e280"
	tFebruaryPack_Reward[3302179][3] = {}
	tFebruaryPack_Reward[3302179][3]["DeleteItem"] = {} 
	tFebruaryPack_Reward[3302179][3]["DeleteItem"][1] = {}
	tFebruaryPack_Reward[3302179][3]["DeleteItem"][1]["Id"] = 3302179
	tFebruaryPack_Reward[3302179][3]["RewardItem"] = {} 
	tFebruaryPack_Reward[3302179][3]["RewardItem"][1] = {}
	tFebruaryPack_Reward[3302179][3]["RewardItem"][1]["Id"] = 3300233
	tFebruaryPack_Reward[3302179][3]["RewardItem"][1]["Attr"] = "0 1" 
	tFebruaryPack_Reward[3302179][3]["LogId"] = 12000638
	tFebruaryPack_Reward[3302179][3]["RewardEffect"] = {}
	tFebruaryPack_Reward[3302179][3]["RewardEffect"]["SzObj"] = "self"
	tFebruaryPack_Reward[3302179][3]["RewardEffect"]["Effect"] = "zf2-e280"

	--华丽外套礼盒 :打开后可在至善神羚【羊年绝版】和PrideofTriumph这2件1%神佑外套中任选其一。
	tFebruaryPack_Reward[3302175] = {}
	tFebruaryPack_Reward[3302175][1] = {}
	tFebruaryPack_Reward[3302175][1]["DeleteItem"] = {} 
	tFebruaryPack_Reward[3302175][1]["DeleteItem"][1] = {}
	tFebruaryPack_Reward[3302175][1]["DeleteItem"][1]["Id"] = 3302175
	tFebruaryPack_Reward[3302175][1]["RewardItem"] = {} 
	tFebruaryPack_Reward[3302175][1]["RewardItem"][1] = {}
	tFebruaryPack_Reward[3302175][1]["RewardItem"][1]["Id"] = 200524
	tFebruaryPack_Reward[3302175][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" 
	tFebruaryPack_Reward[3302175][1]["LogId"] = 12000638
	tFebruaryPack_Reward[3302175][1]["RewardEffect"] = {}
	tFebruaryPack_Reward[3302175][1]["RewardEffect"]["SzObj"] = "self"
	tFebruaryPack_Reward[3302175][1]["RewardEffect"]["Effect"] = "zf2-e280"
	tFebruaryPack_Reward[3302175][2] = {}
	tFebruaryPack_Reward[3302175][2]["DeleteItem"] = {} 
	tFebruaryPack_Reward[3302175][2]["DeleteItem"][1] = {}
	tFebruaryPack_Reward[3302175][2]["DeleteItem"][1]["Id"] = 3302175
	tFebruaryPack_Reward[3302175][2]["RewardItem"] = {} 
	tFebruaryPack_Reward[3302175][2]["RewardItem"][1] = {}
	tFebruaryPack_Reward[3302175][2]["RewardItem"][1]["Id"] = 193205
	tFebruaryPack_Reward[3302175][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" 
	tFebruaryPack_Reward[3302175][2]["LogId"] = 12000638
	tFebruaryPack_Reward[3302175][2]["RewardEffect"] = {}
	tFebruaryPack_Reward[3302175][2]["RewardEffect"]["SzObj"] = "self"
	tFebruaryPack_Reward[3302175][2]["RewardEffect"]["Effect"] = "zf2-e280"

	-- 一阶珍宝礼盒
	-- 100点赠品天石, 玲珑百宝袋:43%
	tFebruaryPack_Reward[3302171] = {}
	tFebruaryPack_Reward[3302171]["ItemChanceSum"] = 10000
	tFebruaryPack_Reward[3302171][1] = {}
	tFebruaryPack_Reward[3302171][1]["RandomItemChanceType"] = 2
	tFebruaryPack_Reward[3302171][1]["ItemChance"] = 4300
	tFebruaryPack_Reward[3302171][1]["RewardItem"] = {}
	tFebruaryPack_Reward[3302171][1]["RewardItem"][1] = {}
	tFebruaryPack_Reward[3302171][1]["RewardItem"][1]["Id"] = 3302176
	tFebruaryPack_Reward[3302171][1]["RewardItem"][1]["Attr"] = "0 1"
	tFebruaryPack_Reward[3302171][1]["RewardItem"][2] = {}
	tFebruaryPack_Reward[3302171][1]["RewardItem"][2]["Id"] = 3200026
	tFebruaryPack_Reward[3302171][1]["RewardItem"][2]["Attr"] = "0 1" 
	tFebruaryPack_Reward[3302171][1]["LogId"] = 12000638
	tFebruaryPack_Reward[3302171][1]["RewardEffect"] = {}
	tFebruaryPack_Reward[3302171][1]["RewardEffect"]["SzObj"] = "self"
	tFebruaryPack_Reward[3302171][1]["RewardEffect"]["Effect"] = "zf2-e280"
	-- 明亮星陨石*1 玲珑百宝袋 45% 
	tFebruaryPack_Reward[3302171][2] = {}
	tFebruaryPack_Reward[3302171][2]["RandomItemChanceType"] = 2
	tFebruaryPack_Reward[3302171][2]["ItemChance"] = 4500
	tFebruaryPack_Reward[3302171][2]["RewardItem"] = {}
	tFebruaryPack_Reward[3302171][2]["RewardItem"][1] = {}
	tFebruaryPack_Reward[3302171][2]["RewardItem"][1]["Id"] = 3302176
	tFebruaryPack_Reward[3302171][2]["RewardItem"][1]["Attr"] = "0 1"
	tFebruaryPack_Reward[3302171][2]["RewardItem"][2] = {}
	tFebruaryPack_Reward[3302171][2]["RewardItem"][2]["Id"] = 3009001
	tFebruaryPack_Reward[3302171][2]["RewardItem"][2]["Attr"] = "0 1 0 2880 1" 
	tFebruaryPack_Reward[3302171][2]["LogId"] = 12000638
	tFebruaryPack_Reward[3302171][2]["RewardEffect"] = {}
	tFebruaryPack_Reward[3302171][2]["RewardEffect"]["SzObj"] = "self"
	tFebruaryPack_Reward[3302171][2]["RewardEffect"]["Effect"] = "zf2-e280"
	-- 小抽奖券礼包*3 玲珑百宝袋 10% 
	tFebruaryPack_Reward[3302171][3] = {}
	tFebruaryPack_Reward[3302171][3]["RandomItemChanceType"] = 2
	tFebruaryPack_Reward[3302171][3]["ItemChance"] = 1000
	tFebruaryPack_Reward[3302171][3]["RewardItem"] = {}
	tFebruaryPack_Reward[3302171][3]["RewardItem"][1] = {}
	tFebruaryPack_Reward[3302171][3]["RewardItem"][1]["Id"] = 3302176
	tFebruaryPack_Reward[3302171][3]["RewardItem"][1]["Attr"] = "0 1"
	tFebruaryPack_Reward[3302171][3]["RewardItem"][2] = {}
	tFebruaryPack_Reward[3302171][3]["RewardItem"][2]["Id"] = 729139
	tFebruaryPack_Reward[3302171][3]["RewardItem"][2]["Attr"] = "0 1" 
	tFebruaryPack_Reward[3302171][3]["LogId"] = 12000638
	tFebruaryPack_Reward[3302171][3]["RewardEffect"] = {}
	tFebruaryPack_Reward[3302171][3]["RewardEffect"]["SzObj"] = "self"
	tFebruaryPack_Reward[3302171][3]["RewardEffect"]["Effect"] = "zf2-e280"
	-- 小固化石*1 玲珑百宝袋 2%  
	tFebruaryPack_Reward[3302171][4] = {}
	tFebruaryPack_Reward[3302171][4]["RandomItemChanceType"] = 2
	tFebruaryPack_Reward[3302171][4]["ItemChance"] = 200
	tFebruaryPack_Reward[3302171][4]["RewardItem"] = {}
	tFebruaryPack_Reward[3302171][4]["RewardItem"][1] = {}
	tFebruaryPack_Reward[3302171][4]["RewardItem"][1]["Id"] = 3302176
	tFebruaryPack_Reward[3302171][4]["RewardItem"][1]["Attr"] = "0 1"
	tFebruaryPack_Reward[3302171][4]["RewardItem"][2] = {}
	tFebruaryPack_Reward[3302171][4]["RewardItem"][2]["Id"] = 723694
	tFebruaryPack_Reward[3302171][4]["RewardItem"][2]["Attr"] = "0 1" 
	tFebruaryPack_Reward[3302171][4]["LogId"] = 12000638
	tFebruaryPack_Reward[3302171][4]["RewardEffect"] = {}
	tFebruaryPack_Reward[3302171][4]["RewardEffect"]["SzObj"] = "self"
	tFebruaryPack_Reward[3302171][4]["RewardEffect"]["Effect"] = "zf2-e280"

	-- 二阶珍宝礼盒
	-- 500点赠品天石 精致百宝袋 36%
	tFebruaryPack_Reward[3302172] = {}
	tFebruaryPack_Reward[3302172]["ItemChanceSum"] = 10000
	tFebruaryPack_Reward[3302172][1] = {}
	tFebruaryPack_Reward[3302172][1]["RandomItemChanceType"] = 2
	tFebruaryPack_Reward[3302172][1]["ItemChance"] = 3600
	tFebruaryPack_Reward[3302172][1]["RewardItem"] = {}
	tFebruaryPack_Reward[3302172][1]["RewardItem"][1] = {}
	tFebruaryPack_Reward[3302172][1]["RewardItem"][1]["Id"] = 3302177
	tFebruaryPack_Reward[3302172][1]["RewardItem"][1]["Attr"] = "0 1"
	tFebruaryPack_Reward[3302172][1]["RewardItem"][2] = {}
	tFebruaryPack_Reward[3302172][1]["RewardItem"][2]["Id"] = 3300762
	tFebruaryPack_Reward[3302172][1]["RewardItem"][2]["Attr"] = "0 1" 
	tFebruaryPack_Reward[3302172][1]["LogId"] = 12000638
	tFebruaryPack_Reward[3302172][1]["RewardEffect"] = {}
	tFebruaryPack_Reward[3302172][1]["RewardEffect"]["SzObj"] = "self"
	tFebruaryPack_Reward[3302172][1]["RewardEffect"]["Effect"] = "zf2-e280"
	-- 2000点气力值 精致百宝袋 35% 
	tFebruaryPack_Reward[3302172][2] = {}
	tFebruaryPack_Reward[3302172][2]["RandomItemChanceType"] = 2
	tFebruaryPack_Reward[3302172][2]["ItemChance"] = 3500
	tFebruaryPack_Reward[3302172][2]["RewardItem"] = {}
	tFebruaryPack_Reward[3302172][2]["RewardItem"][1] = {}
	tFebruaryPack_Reward[3302172][2]["RewardItem"][1]["Id"] = 3302177
	tFebruaryPack_Reward[3302172][2]["RewardItem"][1]["Attr"] = "0 1"
	tFebruaryPack_Reward[3302172][2]["RewardItem"][2] = {}
	tFebruaryPack_Reward[3302172][2]["RewardItem"][2]["Id"] = 3001844
	tFebruaryPack_Reward[3302172][2]["RewardItem"][2]["Attr"] = "0 1" 
	tFebruaryPack_Reward[3302172][2]["LogId"] = 12000638
	tFebruaryPack_Reward[3302172][2]["RewardEffect"] = {}
	tFebruaryPack_Reward[3302172][2]["RewardEffect"]["SzObj"] = "self"
	tFebruaryPack_Reward[3302172][2]["RewardEffect"]["Effect"] = "zf2-e280"
	-- 明亮星陨石*3 精致百宝袋 27% 
	tFebruaryPack_Reward[3302172][3] = {}
	tFebruaryPack_Reward[3302172][3]["RandomItemChanceType"] = 2
	tFebruaryPack_Reward[3302172][3]["ItemChance"] = 2700
	tFebruaryPack_Reward[3302172][3]["RewardItem"] = {}
	tFebruaryPack_Reward[3302172][3]["RewardItem"][1] = {}
	tFebruaryPack_Reward[3302172][3]["RewardItem"][1]["Id"] = 3302177
	tFebruaryPack_Reward[3302172][3]["RewardItem"][1]["Attr"] = "0 1"
	tFebruaryPack_Reward[3302172][3]["RewardItem"][2] = {}
	tFebruaryPack_Reward[3302172][3]["RewardItem"][2]["Id"] = 3009001
	tFebruaryPack_Reward[3302172][3]["RewardItem"][2]["Attr"] = "0 3 0 2880 1" 
	tFebruaryPack_Reward[3302172][3]["LogId"] = 12000638
	tFebruaryPack_Reward[3302172][3]["RewardEffect"] = {}
	tFebruaryPack_Reward[3302172][3]["RewardEffect"]["SzObj"] = "self"
	tFebruaryPack_Reward[3302172][3]["RewardEffect"]["Effect"] = "zf2-e280"
	-- 金钢坚钻*1 精致百宝袋 2%  
	tFebruaryPack_Reward[3302172][4] = {}
	tFebruaryPack_Reward[3302172][4]["RandomItemChanceType"] = 2
	tFebruaryPack_Reward[3302172][4]["ItemChance"] = 200
	tFebruaryPack_Reward[3302172][4]["GlobalId"] = 51442
	tFebruaryPack_Reward[3302172][4]["Pos"] = 1 
	tFebruaryPack_Reward[3302172][4]["MaxData"] = 10 
	tFebruaryPack_Reward[3302172][4]["FullIndex"] = 3
	tFebruaryPack_Reward[3302172][4]["RewardItem"] = {}
	tFebruaryPack_Reward[3302172][4]["RewardItem"][1] = {}
	tFebruaryPack_Reward[3302172][4]["RewardItem"][1]["Id"] = 3302177
	tFebruaryPack_Reward[3302172][4]["RewardItem"][1]["Attr"] = "0 1"
	tFebruaryPack_Reward[3302172][4]["RewardItem"][2] = {}
	tFebruaryPack_Reward[3302172][4]["RewardItem"][2]["Id"] = 1200005
	tFebruaryPack_Reward[3302172][4]["RewardItem"][2]["Attr"] = "0 1" 
	tFebruaryPack_Reward[3302172][4]["LogId"] = 12000638
	tFebruaryPack_Reward[3302172][4]["RewardEffect"] = {}
	tFebruaryPack_Reward[3302172][4]["RewardEffect"]["SzObj"] = "self"
	tFebruaryPack_Reward[3302172][4]["RewardEffect"]["Effect"] = "zf2-e280"

	-- 三阶珍宝礼盒
	-- 1500点赠品天石 豪华百宝袋 33%
	tFebruaryPack_Reward[3302173] = {}
	tFebruaryPack_Reward[3302173]["ItemChanceSum"] = 10000
	tFebruaryPack_Reward[3302173][1] = {}
	tFebruaryPack_Reward[3302173][1]["RandomItemChanceType"] = 2
	tFebruaryPack_Reward[3302173][1]["ItemChance"] = 3300
	tFebruaryPack_Reward[3302173][1]["RewardItem"] = {}
	tFebruaryPack_Reward[3302173][1]["RewardItem"][1] = {}
	tFebruaryPack_Reward[3302173][1]["RewardItem"][1]["Id"] = 3302178
	tFebruaryPack_Reward[3302173][1]["RewardItem"][1]["Attr"] = "0 1"
	tFebruaryPack_Reward[3302173][1]["RewardItem"][2] = {}
	tFebruaryPack_Reward[3302173][1]["RewardItem"][2]["Id"] = 3200569
	tFebruaryPack_Reward[3302173][1]["RewardItem"][2]["Attr"] = "0 1" 
	tFebruaryPack_Reward[3302173][1]["LogId"] = 12000638
	tFebruaryPack_Reward[3302173][1]["RewardEffect"] = {}
	tFebruaryPack_Reward[3302173][1]["RewardEffect"]["SzObj"] = "self"
	tFebruaryPack_Reward[3302173][1]["RewardEffect"]["Effect"] = "zf2-e280"
	-- 5000点气力值 豪华百宝袋 31% 
	tFebruaryPack_Reward[3302173][2] = {}
	tFebruaryPack_Reward[3302173][2]["RandomItemChanceType"] = 2
	tFebruaryPack_Reward[3302173][2]["ItemChance"] = 3100
	tFebruaryPack_Reward[3302173][2]["RewardItem"] = {}
	tFebruaryPack_Reward[3302173][2]["RewardItem"][1] = {}
	tFebruaryPack_Reward[3302173][2]["RewardItem"][1]["Id"] = 3302178
	tFebruaryPack_Reward[3302173][2]["RewardItem"][1]["Attr"] = "0 1"
	tFebruaryPack_Reward[3302173][2]["RewardItem"][2] = {}
	tFebruaryPack_Reward[3302173][2]["RewardItem"][2]["Id"] = 3004581
	tFebruaryPack_Reward[3302173][2]["RewardItem"][2]["Attr"] = "0 1" 
	tFebruaryPack_Reward[3302173][2]["LogId"] = 12000638
	tFebruaryPack_Reward[3302173][2]["RewardEffect"] = {}
	tFebruaryPack_Reward[3302173][2]["RewardEffect"]["SzObj"] = "self"
	tFebruaryPack_Reward[3302173][2]["RewardEffect"]["Effect"] = "zf2-e280"
	-- 晶莹星陨石*3 豪华百宝袋 35% 
	tFebruaryPack_Reward[3302173][3] = {}
	tFebruaryPack_Reward[3302173][3]["RandomItemChanceType"] = 2
	tFebruaryPack_Reward[3302173][3]["ItemChance"] = 3500
	tFebruaryPack_Reward[3302173][3]["RewardItem"] = {}
	tFebruaryPack_Reward[3302173][3]["RewardItem"][1] = {}
	tFebruaryPack_Reward[3302173][3]["RewardItem"][1]["Id"] = 3302178
	tFebruaryPack_Reward[3302173][3]["RewardItem"][1]["Attr"] = "0 1"
	tFebruaryPack_Reward[3302173][3]["RewardItem"][2] = {}
	tFebruaryPack_Reward[3302173][3]["RewardItem"][2]["Id"] = 3009002
	tFebruaryPack_Reward[3302173][3]["RewardItem"][2]["Attr"] = "0 3 0 2880 1" 
	tFebruaryPack_Reward[3302173][3]["LogId"] = 12000638
	tFebruaryPack_Reward[3302173][3]["RewardEffect"] = {}
	tFebruaryPack_Reward[3302173][3]["RewardEffect"]["SzObj"] = "self"
	tFebruaryPack_Reward[3302173][3]["RewardEffect"]["Effect"] = "zf2-e280"
	-- 大固化石*1 豪华百宝袋 1%  
	tFebruaryPack_Reward[3302173][4] = {}
	tFebruaryPack_Reward[3302173][4]["RandomItemChanceType"] = 2
	tFebruaryPack_Reward[3302173][4]["ItemChance"] = 100
	tFebruaryPack_Reward[3302173][4]["GlobalId"] = 51442
	tFebruaryPack_Reward[3302173][4]["Pos"] = 2 
	tFebruaryPack_Reward[3302173][4]["MaxData"] = 3
	tFebruaryPack_Reward[3302173][4]["FullIndex"] = 3
	tFebruaryPack_Reward[3302173][4]["RewardItem"] = {}
	tFebruaryPack_Reward[3302173][4]["RewardItem"][1] = {}
	tFebruaryPack_Reward[3302173][4]["RewardItem"][1]["Id"] = 3302178
	tFebruaryPack_Reward[3302173][4]["RewardItem"][1]["Attr"] = "0 1"
	tFebruaryPack_Reward[3302173][4]["RewardItem"][2] = {}
	tFebruaryPack_Reward[3302173][4]["RewardItem"][2]["Id"] = 723695
	tFebruaryPack_Reward[3302173][4]["RewardItem"][2]["Attr"] = "0 1" 
	tFebruaryPack_Reward[3302173][4]["LogId"] = 12000638
	tFebruaryPack_Reward[3302173][4]["RewardEffect"] = {}
	tFebruaryPack_Reward[3302173][4]["RewardEffect"]["SzObj"] = "self"
	tFebruaryPack_Reward[3302173][4]["RewardEffect"]["Effect"] = "zf2-e280"

	-- 四阶珍宝礼盒
	--3000点赠品天石 至尊百宝袋 27.5%
	tFebruaryPack_Reward[3302174] = {}
	tFebruaryPack_Reward[3302174]["ItemChanceSum"] = 10000
	tFebruaryPack_Reward[3302174][1] = {}
	tFebruaryPack_Reward[3302174][1]["RandomItemChanceType"] = 2
	tFebruaryPack_Reward[3302174][1]["ItemChance"] = 2750
	tFebruaryPack_Reward[3302174][1]["RewardItem"] = {}
	tFebruaryPack_Reward[3302174][1]["RewardItem"][1] = {}
	tFebruaryPack_Reward[3302174][1]["RewardItem"][1]["Id"] = 3302179
	tFebruaryPack_Reward[3302174][1]["RewardItem"][1]["Attr"] = "0 1"
	tFebruaryPack_Reward[3302174][1]["RewardItem"][2] = {}
	tFebruaryPack_Reward[3302174][1]["RewardItem"][2]["Id"] = 3300364
	tFebruaryPack_Reward[3302174][1]["RewardItem"][2]["Attr"] = "0 1" 
	tFebruaryPack_Reward[3302174][1]["LogId"] = 12000638
	tFebruaryPack_Reward[3302174][1]["RewardEffect"] = {}
	tFebruaryPack_Reward[3302174][1]["RewardEffect"]["SzObj"] = "self"
	tFebruaryPack_Reward[3302174][1]["RewardEffect"]["Effect"] = "zf2-e280"
	-- 20000点气力值 至尊百宝袋 36% 
	tFebruaryPack_Reward[3302174][2] = {}
	tFebruaryPack_Reward[3302174][2]["RandomItemChanceType"] = 2
	tFebruaryPack_Reward[3302174][2]["ItemChance"] = 3600
	tFebruaryPack_Reward[3302174][2]["RewardItem"] = {}
	tFebruaryPack_Reward[3302174][2]["RewardItem"][1] = {}
	tFebruaryPack_Reward[3302174][2]["RewardItem"][1]["Id"] = 3302179
	tFebruaryPack_Reward[3302174][2]["RewardItem"][1]["Attr"] = "0 1"
	tFebruaryPack_Reward[3302174][2]["RewardItem"][2] = {}
	tFebruaryPack_Reward[3302174][2]["RewardItem"][2]["Id"] = 3300137
	tFebruaryPack_Reward[3302174][2]["RewardItem"][2]["Attr"] = "0 1" 
	tFebruaryPack_Reward[3302174][2]["LogId"] = 12000638
	tFebruaryPack_Reward[3302174][2]["RewardEffect"] = {}
	tFebruaryPack_Reward[3302174][2]["RewardEffect"]["SzObj"] = "self"
	tFebruaryPack_Reward[3302174][2]["RewardEffect"]["Effect"] = "zf2-e280"
	-- 晶莹星陨石*5 至尊百宝袋 36% 
	tFebruaryPack_Reward[3302174][3] = {}
	tFebruaryPack_Reward[3302174][3]["RandomItemChanceType"] = 2
	tFebruaryPack_Reward[3302174][3]["ItemChance"] = 3600
	tFebruaryPack_Reward[3302174][3]["RewardItem"] = {}
	tFebruaryPack_Reward[3302174][3]["RewardItem"][1] = {}
	tFebruaryPack_Reward[3302174][3]["RewardItem"][1]["Id"] = 3302179
	tFebruaryPack_Reward[3302174][3]["RewardItem"][1]["Attr"] = "0 1"
	tFebruaryPack_Reward[3302174][3]["RewardItem"][2] = {}
	tFebruaryPack_Reward[3302174][3]["RewardItem"][2]["Id"] = 3300246
	tFebruaryPack_Reward[3302174][3]["RewardItem"][2]["Attr"] = "0 1" 
	tFebruaryPack_Reward[3302174][3]["LogId"] = 12000638
	tFebruaryPack_Reward[3302174][3]["RewardEffect"] = {}
	tFebruaryPack_Reward[3302174][3]["RewardEffect"]["SzObj"] = "self"
	tFebruaryPack_Reward[3302174][3]["RewardEffect"]["Effect"] = "zf2-e280"
	-- 10000点天石 至尊百宝袋 0.5%  
	tFebruaryPack_Reward[3302174][4] = {}
	tFebruaryPack_Reward[3302174][4]["RandomItemChanceType"] = 2
	tFebruaryPack_Reward[3302174][4]["ItemChance"] = 50
	tFebruaryPack_Reward[3302174][4]["GlobalId"] = 51442
	tFebruaryPack_Reward[3302174][4]["Pos"] = 3 
	tFebruaryPack_Reward[3302174][4]["MaxData"] = 1
	tFebruaryPack_Reward[3302174][4]["FullIndex"] = 3
	tFebruaryPack_Reward[3302174][4]["RewardItem"] = {}
	tFebruaryPack_Reward[3302174][4]["RewardItem"][1] = {}
	tFebruaryPack_Reward[3302174][4]["RewardItem"][1]["Id"] = 3302179
	tFebruaryPack_Reward[3302174][4]["RewardItem"][1]["Attr"] = "0 1"
	tFebruaryPack_Reward[3302174][4]["RewardItem"][2] = {}
	tFebruaryPack_Reward[3302174][4]["RewardItem"][2]["Id"] = 3005652
	tFebruaryPack_Reward[3302174][4]["RewardItem"][2]["Attr"] = "0 1" 
	tFebruaryPack_Reward[3302174][4]["LogId"] = 12000638
	tFebruaryPack_Reward[3302174][4]["RewardEffect"] = {}
	tFebruaryPack_Reward[3302174][4]["RewardEffect"]["SzObj"] = "self"
	tFebruaryPack_Reward[3302174][4]["RewardEffect"]["Effect"] = "zf2-e280"
------------------------------------------逻辑部分---------------------------------------------------
--打开可选礼包
function FebruaryPack_ChooseOpen(nItemId,nIndex)
	 RewardTemplate_UseItemAndMsg(tFebruaryPack_Reward[nItemId][nIndex])
end

--打开随机礼包
function FebruaryPack_Open(nItemId)
	--二、三阶礼盒背包空间判断
	if nItemId == tFebruaryPack_Cont["ThirdItemID"] or nItemId ==tFebruaryPack_Cont["SecItemID"] then 
		if not User_CheckLeftSpace(tFebruaryPack_Cont["LackBagSpace"]) then
			Sys_MsgBox(tFebruaryPack_Text["LackSpace"])
			return
		end 
	end
	--一阶和四阶礼盒背包空间判断
	if not User_CheckLeftSpace(tFebruaryPack_Cont["NoBagSpace"]) then
		Sys_MsgBox(tFebruaryPack_Text["NoSpace"])
		return
	end
	-- 随机几等奖
	 if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		RewardTemplate_NewRandom(tFebruaryPack_Reward,nItemId)
	end
end

--礼包限制
function FebruaryPack_ClearGlobal()
	local nGlobal = tFebruaryPack_Cont["nGlobal"] 
	local nData5 = Get_SysDynaGlobalData(nGlobal,5)
	-- 重置限制判断
	if Sys_ChkDayTime(tFebruaryPack_Cont["nDate"]) then
		if nData5 == 0 then 
		-- 重置目前存储表
			Sys_SetSynaGlobalData1(nGlobal,0)
			Sys_SetSynaGlobalData2(nGlobal,0)
		-- 自检限制
			Sys_SetSynaGlobalData5(nGlobal,1)
		end
	else
		if nData5==1 then
		Sys_SetSynaGlobalData5(nGlobal,0)
		end
	end 
end
------------------------------------------物品部分---------------------------------------------------
--玲珑百宝袋
tItem[3302176] = tItem[3302176] or {}
tItem[3302176]["DialogueText"] =tFebruaryPack_Text[3302176]
tItem[3302176]["Text1-1"] = {111}
tItem[3302176]["tOption1-1"] = {1,2,3,4}
tItem[3302176]["OptionFunc1"] = "FebruaryPack_ChooseOpen</N>3302176</N>1"
tItem[3302176]["OptionFunc2"] = "FebruaryPack_ChooseOpen</N>3302176</N>2"
tItem[3302176]["OptionFunc3"] = "FebruaryPack_ChooseOpen</N>3302176</N>3"

--精致百宝袋
tItem[3302177] = tItem[3302177] or {}
tItem[3302177]["DialogueText"] =tFebruaryPack_Text[3302177]
tItem[3302177]["Text1-1"] = {111}
tItem[3302177]["tOption1-1"] = {1,2,3,4}
tItem[3302177]["OptionFunc1"] = "FebruaryPack_ChooseOpen</N>3302177</N>1"
tItem[3302177]["OptionFunc2"] = "FebruaryPack_ChooseOpen</N>3302177</N>2"
tItem[3302177]["OptionFunc3"] = "FebruaryPack_ChooseOpen</N>3302177</N>3"

--豪华百宝袋
tItem[3302178] = tItem[3302178] or {}
tItem[3302178]["DialogueText"] =tFebruaryPack_Text[3302178]
tItem[3302178]["Text1-1"] = {111}
tItem[3302178]["tOption1-1"] = {1,2,3,4}
tItem[3302178]["OptionFunc1"] = "FebruaryPack_ChooseOpen</N>3302178</N>1"
tItem[3302178]["OptionFunc2"] = "FebruaryPack_ChooseOpen</N>3302178</N>2"
tItem[3302178]["OptionFunc3"] = "FebruaryPack_ChooseOpen</N>3302178</N>3"

--至尊百宝袋
tItem[3302179] = tItem[3302179] or {}
tItem[3302179]["DialogueText"] =tFebruaryPack_Text[3302179]
tItem[3302179]["Text1-1"] = {111}
tItem[3302179]["tOption1-1"] = {1,2,3,4}
tItem[3302179]["OptionFunc1"] = "FebruaryPack_ChooseOpen</N>3302179</N>1"
tItem[3302179]["OptionFunc2"] = "FebruaryPack_ChooseOpen</N>3302179</N>2"
tItem[3302179]["OptionFunc3"] = "FebruaryPack_ChooseOpen</N>3302179</N>3"

--华丽外套礼盒
tItem[3302175] = tItem[3302175] or {}
tItem[3302175]["DialogueText"] =tFebruaryPack_Text[3302175]
tItem[3302175]["Text1-1"] = {111}
tItem[3302175]["tOption1-1"] = {1,2,3,4}
tItem[3302175]["OptionFunc1"] = "FebruaryPack_ChooseOpen</N>3302175</N>1"
tItem[3302175]["OptionFunc2"] = "FebruaryPack_ChooseOpen</N>3302175</N>2"

--一阶珍宝礼盒
tItem[3302171] = tItem[3302171] or {}
tItem[3302171]["Function"] = function(nItemId,sItemName)
	FebruaryPack_Open(nItemId)
end
--二阶珍宝礼盒
tItem[3302172] = tItem[3302172] or {}
tItem[3302172]["Function"] = function(nItemId,sItemName)
	FebruaryPack_Open(nItemId)
end
--三阶珍宝礼盒
tItem[3302173] = tItem[3302173] or {}
tItem[3302173]["Function"] = function(nItemId,sItemName)
	FebruaryPack_Open(nItemId)
end
--四阶珍宝礼盒
tItem[3302174] = tItem[3302174] or {}
tItem[3302174]["Function"] = function(nItemId,sItemName)
	FebruaryPack_Open(nItemId)
end

--时间自检触发
--'00:00 00:05'
tOntimerMin_HM[0000] = tOntimerMin_HM[0000] or {}
table.insert(tOntimerMin_HM[0000],FebruaryPack_ClearGlobal)
tOntimerMin_HM[0001] = tOntimerMin_HM[0001] or {}
table.insert(tOntimerMin_HM[0001],FebruaryPack_ClearGlobal)
tOntimerMin_HM[0002] = tOntimerMin_HM[0002] or {}
table.insert(tOntimerMin_HM[0002],FebruaryPack_ClearGlobal)
tOntimerMin_HM[0003] = tOntimerMin_HM[0003] or {}
table.insert(tOntimerMin_HM[0003],FebruaryPack_ClearGlobal)
tOntimerMin_HM[0004] = tOntimerMin_HM[0004] or {}
table.insert(tOntimerMin_HM[0004],FebruaryPack_ClearGlobal)
tOntimerMin_HM[0005] = tOntimerMin_HM[0005] or {}
table.insert(tOntimerMin_HM[0005],FebruaryPack_ClearGlobal)











