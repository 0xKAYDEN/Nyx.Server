------------------------------------------------------------------------------------
--Name:		170815[英文征服][活动脚本]9月德州赛事新增
--Purpose:	德州扑克锦标赛事
--Creator: 	张磊
--Created:	2017/08/15
------------------------------------------------------------------------------------

----命名前缀
-- NewPoker_

----lua.ini
--40629

----log.id
-- 12000831


------------------------------------------------------------------------------------



---------------------------------------------------------------------------------------
local tNewPoker_Log = {}
	-- 意外log   一般不会发生  只是为了防止突发情况
	tNewPoker_Log["Accident"] = "0,0,%d,%d,12000831,1,%d,%d"
	-- 给随机奖励前删除礼包
	tNewPoker_Log["DelItemLog"] = "0,0,%d,%d,12000831,2,0,0"

local tNewPoker_Web = {}
	tNewPoker_Web[1] = "https://www.facebook.com/COPokerClub/"
	tNewPoker_Web[2] = "http://co.99.com/guide/event/2017/copokercarnival/"

local tNewPoker_Find = {}
	tNewPoker_Find[1] = {}
	tNewPoker_Find[1]["MapId"] = 3053
	tNewPoker_Find[1]["PosX"] = 202
	tNewPoker_Find[1]["PosY"] = 157
	tNewPoker_Find[1]["NpcId"] = 22065
	
	
local tNewPoker_Reward = {}
	--物品  3304688  500K门票碎片  25万银两 升级为500K门票	3304693
	tNewPoker_Reward[3304688] = {}
	tNewPoker_Reward[3304688]["DelCont"] = {250000,3304688}
	-- 获得奖励
	tNewPoker_Reward[3304688]["RewardMsg"] = {}
	tNewPoker_Reward[3304688]["RewardMsg"]["Log"] = "0,0,3304688[1],1[250000],12000831,2,3304693,1" 
	tNewPoker_Reward[3304688]["RewardMsg"]["RewardNoNeedTip"] = 1
	tNewPoker_Reward[3304688]["RewardMsg"]["DeleteItem"] = {}
	tNewPoker_Reward[3304688]["RewardMsg"]["DeleteItem"][1] = {}
	tNewPoker_Reward[3304688]["RewardMsg"]["DeleteItem"][1]["Id"] = 3304688
	tNewPoker_Reward[3304688]["RewardMsg"]["DeleteItem"][1]["ItemNum"] = 1	
	tNewPoker_Reward[3304688]["RewardMsg"]["RewardItem"] = {}
	tNewPoker_Reward[3304688]["RewardMsg"]["RewardItem"][1] = {}
	tNewPoker_Reward[3304688]["RewardMsg"]["RewardItem"][1]["Id"] = 3304693
	tNewPoker_Reward[3304688]["RewardMsg"]["RewardItem"][1]["Attr"] = "0 1 0 64800 1"
	
	
	tNewPoker_Reward[3304688]["DelItem"] = {}
	tNewPoker_Reward[3304688]["DelItem"]["Log"] = "0,0,3304688,1,12000831,2,0,0" 
	tNewPoker_Reward[3304688]["DelItem"]["RewardNoNeedTip"] = 1
	tNewPoker_Reward[3304688]["DelItem"]["DeleteItem"] = {}
	tNewPoker_Reward[3304688]["DelItem"]["DeleteItem"][1] = {}
	tNewPoker_Reward[3304688]["DelItem"]["DeleteItem"][1]["Id"] = 3304688
	tNewPoker_Reward[3304688]["DelItem"]["DeleteItem"][1]["ItemNum"] = 1	
	
	
	--物品  3304689  1KK门票碎片  50万银 升级为1KK门票	3304694
	tNewPoker_Reward[3304689] = {}
	tNewPoker_Reward[3304689]["DelCont"] = {500000,3304689}
	-- 获得奖励
	tNewPoker_Reward[3304689]["RewardMsg"] = {}
	tNewPoker_Reward[3304689]["RewardMsg"]["Log"] = "0,0,3304689[1],1[500000],12000831,2,3304694,1" 
	tNewPoker_Reward[3304689]["RewardMsg"]["RewardNoNeedTip"] = 1
	tNewPoker_Reward[3304689]["RewardMsg"]["DeleteItem"] = {}
	tNewPoker_Reward[3304689]["RewardMsg"]["DeleteItem"][1] = {}
	tNewPoker_Reward[3304689]["RewardMsg"]["DeleteItem"][1]["Id"] = 3304689
	tNewPoker_Reward[3304689]["RewardMsg"]["DeleteItem"][1]["ItemNum"] = 1	
	tNewPoker_Reward[3304689]["RewardMsg"]["RewardItem"] = {}
	tNewPoker_Reward[3304689]["RewardMsg"]["RewardItem"][1] = {}
	tNewPoker_Reward[3304689]["RewardMsg"]["RewardItem"][1]["Id"] = 3304694
	tNewPoker_Reward[3304689]["RewardMsg"]["RewardItem"][1]["Attr"] = "0 1 0 64800 1"
	
	tNewPoker_Reward[3304689]["DelItem"] = {}
	tNewPoker_Reward[3304689]["DelItem"]["Log"] = "0,0,3304689,1,12000831,2,0,0" 
	tNewPoker_Reward[3304689]["DelItem"]["RewardNoNeedTip"] = 1
	tNewPoker_Reward[3304689]["DelItem"]["DeleteItem"] = {}
	tNewPoker_Reward[3304689]["DelItem"]["DeleteItem"][1] = {}
	tNewPoker_Reward[3304689]["DelItem"]["DeleteItem"][1]["Id"] = 3304689
	tNewPoker_Reward[3304689]["DelItem"]["DeleteItem"][1]["ItemNum"] = 1

	--物品  3304690  5KK门票碎片  250万银 升级为5KK门票	3304695
	tNewPoker_Reward[3304690] = {}
	tNewPoker_Reward[3304690]["DelCont"] = {2500000,3304690}
	-- 获得奖励
	tNewPoker_Reward[3304690]["RewardMsg"] = {}
	tNewPoker_Reward[3304690]["RewardMsg"]["Log"] = "0,0,3304690[1],1[2500000],12000831,2,3304695,1" 
	tNewPoker_Reward[3304690]["RewardMsg"]["RewardNoNeedTip"] = 1
	tNewPoker_Reward[3304690]["RewardMsg"]["DeleteItem"] = {}
	tNewPoker_Reward[3304690]["RewardMsg"]["DeleteItem"][1] = {}
	tNewPoker_Reward[3304690]["RewardMsg"]["DeleteItem"][1]["Id"] = 3304690
	tNewPoker_Reward[3304690]["RewardMsg"]["DeleteItem"][1]["ItemNum"] = 1	
	tNewPoker_Reward[3304690]["RewardMsg"]["RewardItem"] = {}
	tNewPoker_Reward[3304690]["RewardMsg"]["RewardItem"][1] = {}
	tNewPoker_Reward[3304690]["RewardMsg"]["RewardItem"][1]["Id"] = 3304695
	tNewPoker_Reward[3304690]["RewardMsg"]["RewardItem"][1]["Attr"] = "0 1 0 64800 1"
	
	tNewPoker_Reward[3304690]["DelItem"] = {}
	tNewPoker_Reward[3304690]["DelItem"]["Log"] = "0,0,3304690,1,12000831,2,0,0" 
	tNewPoker_Reward[3304690]["DelItem"]["RewardNoNeedTip"] = 1
	tNewPoker_Reward[3304690]["DelItem"]["DeleteItem"] = {}
	tNewPoker_Reward[3304690]["DelItem"]["DeleteItem"][1] = {}
	tNewPoker_Reward[3304690]["DelItem"]["DeleteItem"][1]["Id"] = 3304690
	tNewPoker_Reward[3304690]["DelItem"]["DeleteItem"][1]["ItemNum"] = 1


	--物品  3304691  10KK门票碎片  500万银 升级为10KK门票	3304696
	tNewPoker_Reward[3304691] = {}
	tNewPoker_Reward[3304691]["DelCont"] = {5000000,3304691}
	-- 获得奖励
	tNewPoker_Reward[3304691]["RewardMsg"] = {}
	tNewPoker_Reward[3304691]["RewardMsg"]["Log"] = "0,0,3304691[1],1[5000000],12000831,2,3304696,1" 
	tNewPoker_Reward[3304691]["RewardMsg"]["RewardNoNeedTip"] = 1
	tNewPoker_Reward[3304691]["RewardMsg"]["DeleteItem"] = {}
	tNewPoker_Reward[3304691]["RewardMsg"]["DeleteItem"][1] = {}
	tNewPoker_Reward[3304691]["RewardMsg"]["DeleteItem"][1]["Id"] = 3304691
	tNewPoker_Reward[3304691]["RewardMsg"]["DeleteItem"][1]["ItemNum"] = 1	
	tNewPoker_Reward[3304691]["RewardMsg"]["RewardItem"] = {}
	tNewPoker_Reward[3304691]["RewardMsg"]["RewardItem"][1] = {}
	tNewPoker_Reward[3304691]["RewardMsg"]["RewardItem"][1]["Id"] = 3304696
	tNewPoker_Reward[3304691]["RewardMsg"]["RewardItem"][1]["Attr"] = "0 1 0 64800 1"

	tNewPoker_Reward[3304691]["DelItem"] = {}
	tNewPoker_Reward[3304691]["DelItem"]["Log"] = "0,0,3304691,1,12000831,2,0,0" 
	tNewPoker_Reward[3304691]["DelItem"]["RewardNoNeedTip"] = 1
	tNewPoker_Reward[3304691]["DelItem"]["DeleteItem"] = {}
	tNewPoker_Reward[3304691]["DelItem"]["DeleteItem"][1] = {}
	tNewPoker_Reward[3304691]["DelItem"]["DeleteItem"][1]["Id"] = 3304691
	tNewPoker_Reward[3304691]["DelItem"]["DeleteItem"][1]["ItemNum"] = 1

	--物品  3304692  50KK门票碎片  2500万银 升级为50KK门票	3304697
	tNewPoker_Reward[3304692] = {}
	tNewPoker_Reward[3304692]["DelCont"] = {25000000,3304692}
	-- 获得奖励
	tNewPoker_Reward[3304692]["RewardMsg"] = {}
	tNewPoker_Reward[3304692]["RewardMsg"]["Log"] = "0,0,3304692[1],1[25000000],12000831,2,3304697,1"
	tNewPoker_Reward[3304692]["RewardMsg"]["RewardNoNeedTip"] = 1
	tNewPoker_Reward[3304692]["RewardMsg"]["DeleteItem"] = {}
	tNewPoker_Reward[3304692]["RewardMsg"]["DeleteItem"][1] = {}
	tNewPoker_Reward[3304692]["RewardMsg"]["DeleteItem"][1]["Id"] = 3304692
	tNewPoker_Reward[3304692]["RewardMsg"]["DeleteItem"][1]["ItemNum"] = 1	
	tNewPoker_Reward[3304692]["RewardMsg"]["RewardItem"] = {}
	tNewPoker_Reward[3304692]["RewardMsg"]["RewardItem"][1] = {}
	tNewPoker_Reward[3304692]["RewardMsg"]["RewardItem"][1]["Id"] = 3304697
	tNewPoker_Reward[3304692]["RewardMsg"]["RewardItem"][1]["Attr"] = "0 1 0 64800 1"

	tNewPoker_Reward[3304692]["DelItem"] = {}
	tNewPoker_Reward[3304692]["DelItem"]["Log"] = "0,0,3304692,1,12000831,2,0,0" 
	tNewPoker_Reward[3304692]["DelItem"]["RewardNoNeedTip"] = 1
	tNewPoker_Reward[3304692]["DelItem"]["DeleteItem"] = {}
	tNewPoker_Reward[3304692]["DelItem"]["DeleteItem"][1] = {}
	tNewPoker_Reward[3304692]["DelItem"]["DeleteItem"][1]["Id"] = 3304692
	tNewPoker_Reward[3304692]["DelItem"]["DeleteItem"][1]["ItemNum"] = 1	
	--过期删除
	-- 3304693,'500K门票
	tNewPoker_Reward[3304693] = {}
	tNewPoker_Reward[3304693]["DeleteItem"] = {}
	tNewPoker_Reward[3304693]["DeleteItem"][1] = {}
	tNewPoker_Reward[3304693]["DeleteItem"][1]["Id"] = 3304693
	tNewPoker_Reward[3304693]["DeleteItem"][1]["ItemNum"] = 1
	tNewPoker_Reward[3304693]["Log"] = "0,0,3304693,1,12000831,2,0,0" 
	tNewPoker_Reward[3304693]["RewardNoNeedTip"] = 1
	
	-- 3304694,'1KK门票
	tNewPoker_Reward[3304694] = {}
	tNewPoker_Reward[3304694]["DeleteItem"] = {}
	tNewPoker_Reward[3304694]["DeleteItem"][1] = {}
	tNewPoker_Reward[3304694]["DeleteItem"][1]["Id"] = 3304694
	tNewPoker_Reward[3304694]["DeleteItem"][1]["ItemNum"] = 1
	tNewPoker_Reward[3304694]["Log"] = "0,0,3304694,1,12000831,2,0,0" 
	tNewPoker_Reward[3304694]["RewardNoNeedTip"] = 1	

	-- 3304695,'5KK门票
	tNewPoker_Reward[3304695] = {}
	tNewPoker_Reward[3304695]["DeleteItem"] = {}
	tNewPoker_Reward[3304695]["DeleteItem"][1] = {}
	tNewPoker_Reward[3304695]["DeleteItem"][1]["Id"] = 3304695
	tNewPoker_Reward[3304695]["DeleteItem"][1]["ItemNum"] = 1
	tNewPoker_Reward[3304695]["Log"] = "0,0,3304695,1,12000831,2,0,0" 
	tNewPoker_Reward[3304695]["RewardNoNeedTip"] = 1	

	-- 3304696,'10KK门票
	tNewPoker_Reward[3304696] = {}
	tNewPoker_Reward[3304696]["DeleteItem"] = {}
	tNewPoker_Reward[3304696]["DeleteItem"][1] = {}
	tNewPoker_Reward[3304696]["DeleteItem"][1]["Id"] = 3304696
	tNewPoker_Reward[3304696]["DeleteItem"][1]["ItemNum"] = 1
	tNewPoker_Reward[3304696]["Log"] = "0,0,3304696,1,12000831,2,0,0" 
	tNewPoker_Reward[3304696]["RewardNoNeedTip"] = 1	

	--3304697,'50KK门票'
	tNewPoker_Reward[3304697] = {}
	tNewPoker_Reward[3304697]["DeleteItem"] = {}
	tNewPoker_Reward[3304697]["DeleteItem"][1] = {}
	tNewPoker_Reward[3304697]["DeleteItem"][1]["Id"] = 3304697
	tNewPoker_Reward[3304697]["DeleteItem"][1]["ItemNum"] = 1
	tNewPoker_Reward[3304697]["Log"] = "0,0,3304697,1,12000831,2,0,0" 
	tNewPoker_Reward[3304697]["RewardNoNeedTip"] = 1

	--3304698,'实物大奖赛门票'
	tNewPoker_Reward[3304698] = {}
	tNewPoker_Reward[3304698]["DeleteItem"] = {}
	tNewPoker_Reward[3304698]["DeleteItem"][1] = {}
	tNewPoker_Reward[3304698]["DeleteItem"][1]["Id"] = 3304698
	tNewPoker_Reward[3304698]["DeleteItem"][1]["ItemNum"] = 1
	tNewPoker_Reward[3304698]["Log"] = "0,0,3304698,1,12000831,2,0,0" 
	tNewPoker_Reward[3304698]["RewardNoNeedTip"] = 1

	--3304699,'500K锦标赛增购券'
	tNewPoker_Reward[3304699] = {}
	tNewPoker_Reward[3304699]["DeleteItem"] = {}
	tNewPoker_Reward[3304699]["DeleteItem"][1] = {}
	tNewPoker_Reward[3304699]["DeleteItem"][1]["Id"] = 3304699
	tNewPoker_Reward[3304699]["DeleteItem"][1]["ItemNum"] = 1
	tNewPoker_Reward[3304699]["Log"] = "0,0,3304699,1,12000831,2,0,0" 
	tNewPoker_Reward[3304699]["RewardNoNeedTip"] = 1

	--3304700,'1KK锦标赛增购券'
	tNewPoker_Reward[3304700] = {}
	tNewPoker_Reward[3304700]["DeleteItem"] = {}
	tNewPoker_Reward[3304700]["DeleteItem"][1] = {}
	tNewPoker_Reward[3304700]["DeleteItem"][1]["Id"] = 3304700
	tNewPoker_Reward[3304700]["DeleteItem"][1]["ItemNum"] = 1
	tNewPoker_Reward[3304700]["Log"] = "0,0,3304700,1,12000831,2,0,0" 
	tNewPoker_Reward[3304700]["RewardNoNeedTip"] = 1

	--3304701,'5KK锦标赛增购券'
	tNewPoker_Reward[3304701] = {}
	tNewPoker_Reward[3304701]["DeleteItem"] = {}
	tNewPoker_Reward[3304701]["DeleteItem"][1] = {}
	tNewPoker_Reward[3304701]["DeleteItem"][1]["Id"] = 3304701
	tNewPoker_Reward[3304701]["DeleteItem"][1]["ItemNum"] = 1
	tNewPoker_Reward[3304701]["Log"] = "0,0,3304701,1,12000831,2,0,0" 
	tNewPoker_Reward[3304701]["RewardNoNeedTip"] = 1

	--3304702,'10KK锦标赛增购券'
	tNewPoker_Reward[3304702] = {}
	tNewPoker_Reward[3304702]["DeleteItem"] = {}
	tNewPoker_Reward[3304702]["DeleteItem"][1] = {}
	tNewPoker_Reward[3304702]["DeleteItem"][1]["Id"] = 3304702
	tNewPoker_Reward[3304702]["DeleteItem"][1]["ItemNum"] = 1
	tNewPoker_Reward[3304702]["Log"] = "0,0,3304702,1,12000831,2,0,0" 
	tNewPoker_Reward[3304702]["RewardNoNeedTip"] = 1

	--3304703,'50KK锦标赛增购券'
	tNewPoker_Reward[3304703] = {}
	tNewPoker_Reward[3304703]["DeleteItem"] = {}
	tNewPoker_Reward[3304703]["DeleteItem"][1] = {}
	tNewPoker_Reward[3304703]["DeleteItem"][1]["Id"] = 3304703
	tNewPoker_Reward[3304703]["DeleteItem"][1]["ItemNum"] = 1
	tNewPoker_Reward[3304703]["Log"] = "0,0,3304703,1,12000831,2,0,0" 
	tNewPoker_Reward[3304703]["RewardNoNeedTip"] = 1

	--3304704,'实物大奖赛增购券'
	tNewPoker_Reward[3304704] = {}
	tNewPoker_Reward[3304704]["DeleteItem"] = {}
	tNewPoker_Reward[3304704]["DeleteItem"][1] = {}
	tNewPoker_Reward[3304704]["DeleteItem"][1]["Id"] = 3304704
	tNewPoker_Reward[3304704]["DeleteItem"][1]["ItemNum"] = 1
	tNewPoker_Reward[3304704]["Log"] = "0,0,3304704,1,12000831,2,0,0" 
	tNewPoker_Reward[3304704]["RewardNoNeedTip"] = 1

	--3304705,'500K锦标赛重购券'
	tNewPoker_Reward[3304705] = {}
	tNewPoker_Reward[3304705]["DeleteItem"] = {}
	tNewPoker_Reward[3304705]["DeleteItem"][1] = {}
	tNewPoker_Reward[3304705]["DeleteItem"][1]["Id"] = 3304705
	tNewPoker_Reward[3304705]["DeleteItem"][1]["ItemNum"] = 1
	tNewPoker_Reward[3304705]["Log"] = "0,0,3304705,1,12000831,2,0,0"
	tNewPoker_Reward[3304705]["RewardNoNeedTip"] = 1

	--3304706,'1KK锦标赛重购券'
	tNewPoker_Reward[3304706] = {}
	tNewPoker_Reward[3304706]["DeleteItem"] = {}
	tNewPoker_Reward[3304706]["DeleteItem"][1] = {}
	tNewPoker_Reward[3304706]["DeleteItem"][1]["Id"] = 3304706
	tNewPoker_Reward[3304706]["DeleteItem"][1]["ItemNum"] = 1
	tNewPoker_Reward[3304706]["Log"] = "0,0,3304706,1,12000831,2,0,0"
	tNewPoker_Reward[3304706]["RewardNoNeedTip"] = 1

	--3304707,'5KK锦标赛重购券'
	tNewPoker_Reward[3304707] = {}
	tNewPoker_Reward[3304707]["DeleteItem"] = {}
	tNewPoker_Reward[3304707]["DeleteItem"][1] = {}
	tNewPoker_Reward[3304707]["DeleteItem"][1]["Id"] = 3304707
	tNewPoker_Reward[3304707]["DeleteItem"][1]["ItemNum"] = 1
	tNewPoker_Reward[3304707]["Log"] = "0,0,3304707,1,12000831,2,0,0"
	tNewPoker_Reward[3304707]["RewardNoNeedTip"] = 1

	--3304708,'10KK锦标赛重购券'
	tNewPoker_Reward[3304708] = {}
	tNewPoker_Reward[3304708]["DeleteItem"] = {}
	tNewPoker_Reward[3304708]["DeleteItem"][1] = {}
	tNewPoker_Reward[3304708]["DeleteItem"][1]["Id"] = 3304708
	tNewPoker_Reward[3304708]["DeleteItem"][1]["ItemNum"] = 1
	tNewPoker_Reward[3304708]["Log"] = "0,0,3304708,1,12000831,2,0,0"
	tNewPoker_Reward[3304708]["RewardNoNeedTip"] = 1

	--3304709,'50KK锦标赛重购券'
	tNewPoker_Reward[3304709] = {}
	tNewPoker_Reward[3304709]["DeleteItem"] = {}
	tNewPoker_Reward[3304709]["DeleteItem"][1] = {}
	tNewPoker_Reward[3304709]["DeleteItem"][1]["Id"] = 3304709
	tNewPoker_Reward[3304709]["DeleteItem"][1]["ItemNum"] = 1
	tNewPoker_Reward[3304709]["Log"] = "0,0,3304709,1,12000831,2,0,0"
	tNewPoker_Reward[3304709]["RewardNoNeedTip"] = 1

	--3304710,'实物大奖赛重购券'
	tNewPoker_Reward[3304710] = {}
	tNewPoker_Reward[3304710]["DeleteItem"] = {}
	tNewPoker_Reward[3304710]["DeleteItem"][1] = {}
	tNewPoker_Reward[3304710]["DeleteItem"][1]["Id"] = 3304710
	tNewPoker_Reward[3304710]["DeleteItem"][1]["ItemNum"] = 1
	tNewPoker_Reward[3304710]["Log"] = "0,0,3304710,1,12000831,2,0,0"
	tNewPoker_Reward[3304710]["RewardNoNeedTip"] = 1
	

	--随机礼包打开
	tNewPoker_Reward["Random"] = {}
	-- 3304711,'锦标赛门票碎片初级礼盒'
	
	tNewPoker_Reward["Random"][3304711] = {}	
	tNewPoker_Reward["Random"][3304711][1] = {}
	tNewPoker_Reward["Random"][3304711][1]["LogId"] = 12000831
	tNewPoker_Reward["Random"][3304711][1]["ItemChanceSum"] = 10000
	
	-- 绑定500K门票碎片（时效）  3304688	68%
	tNewPoker_Reward["Random"][3304711][1][1] = {}
	tNewPoker_Reward["Random"][3304711][1][1]["RandomItemChanceType"] = 2
	tNewPoker_Reward["Random"][3304711][1][1]["ItemChance"] = 6800
	tNewPoker_Reward["Random"][3304711][1][1]["RewardItem"] = {}
	tNewPoker_Reward["Random"][3304711][1][1]["RewardItem"][1] = {}
	tNewPoker_Reward["Random"][3304711][1][1]["RewardItem"][1]["Id"] = 3304688
	tNewPoker_Reward["Random"][3304711][1][1]["RewardItem"][1]["Attr"] = "0 1"
	
	-- 绑定1KK门票碎片（时效）  3304689	16%
	tNewPoker_Reward["Random"][3304711][1][2] = {}
	tNewPoker_Reward["Random"][3304711][1][2]["RandomItemChanceType"] = 2
	tNewPoker_Reward["Random"][3304711][1][2]["ItemChance"] = 1600
	tNewPoker_Reward["Random"][3304711][1][2]["RewardItem"] = {}
	tNewPoker_Reward["Random"][3304711][1][2]["RewardItem"][1] = {}
	tNewPoker_Reward["Random"][3304711][1][2]["RewardItem"][1]["Id"] = 3304689
	tNewPoker_Reward["Random"][3304711][1][2]["RewardItem"][1]["Attr"] = "0 1"
	
	-- 绑定5KK门票碎片（时效）  3304690	10%
	tNewPoker_Reward["Random"][3304711][1][3] = {}
	tNewPoker_Reward["Random"][3304711][1][3]["RandomItemChanceType"] = 2
	tNewPoker_Reward["Random"][3304711][1][3]["ItemChance"] = 1000
	tNewPoker_Reward["Random"][3304711][1][3]["RewardItem"] = {}
	tNewPoker_Reward["Random"][3304711][1][3]["RewardItem"][1] = {}
	tNewPoker_Reward["Random"][3304711][1][3]["RewardItem"][1]["Id"] = 3304690
	tNewPoker_Reward["Random"][3304711][1][3]["RewardItem"][1]["Attr"] = "0 1"
	
	-- 绑定10KK门票碎片（时效）  3304691	5%
	tNewPoker_Reward["Random"][3304711][1][4] = {}
	tNewPoker_Reward["Random"][3304711][1][4]["RandomItemChanceType"] = 2
	tNewPoker_Reward["Random"][3304711][1][4]["ItemChance"] = 500
	tNewPoker_Reward["Random"][3304711][1][4]["RewardItem"] = {}
	tNewPoker_Reward["Random"][3304711][1][4]["RewardItem"][1] = {}
	tNewPoker_Reward["Random"][3304711][1][4]["RewardItem"][1]["Id"] = 3304691
	tNewPoker_Reward["Random"][3304711][1][4]["RewardItem"][1]["Attr"] = "0 1"
	
	-- 绑定50KK门票碎片（时效）  3304692	1%
	tNewPoker_Reward["Random"][3304711][1][5] = {}
	tNewPoker_Reward["Random"][3304711][1][5]["RandomItemChanceType"] = 2
	tNewPoker_Reward["Random"][3304711][1][5]["ItemChance"] = 100
	tNewPoker_Reward["Random"][3304711][1][5]["RewardItem"] = {}
	tNewPoker_Reward["Random"][3304711][1][5]["RewardItem"][1] = {}
	tNewPoker_Reward["Random"][3304711][1][5]["RewardItem"][1]["Id"] = 3304692
	tNewPoker_Reward["Random"][3304711][1][5]["RewardItem"][1]["Attr"] = "0 1"
	
	-- 过期走2
	tNewPoker_Reward["Random"][3304711][2] = {}
	tNewPoker_Reward["Random"][3304711][2]["Log"] = "0,0,3304711,1,12000831,2,0,0"
	tNewPoker_Reward["Random"][3304711][2]["DeleteItem"] = {}
	tNewPoker_Reward["Random"][3304711][2]["DeleteItem"][1] = {}
	tNewPoker_Reward["Random"][3304711][2]["DeleteItem"][1]["Id"] = 3304711
	
	-- 3304712,'锦标赛门票初级礼盒'
	tNewPoker_Reward["Random"][3304712] = {}	
	tNewPoker_Reward["Random"][3304712][1] = {}
	tNewPoker_Reward["Random"][3304712][1]["LogId"] = 12000831
	tNewPoker_Reward["Random"][3304712][1]["ItemChanceSum"] = 10000
	
	-- 绑定500K门票（时效）  3304693	67%
	tNewPoker_Reward["Random"][3304712][1][1] = {}
	tNewPoker_Reward["Random"][3304712][1][1]["RandomItemChanceType"] = 2
	tNewPoker_Reward["Random"][3304712][1][1]["ItemChance"] = 6700
	tNewPoker_Reward["Random"][3304712][1][1]["RewardItem"] = {}
	tNewPoker_Reward["Random"][3304712][1][1]["RewardItem"][1] = {}
	tNewPoker_Reward["Random"][3304712][1][1]["RewardItem"][1]["Id"] = 3304693
	tNewPoker_Reward["Random"][3304712][1][1]["RewardItem"][1]["Attr"] = "0 1 0 64800 1"
	
	-- 绑定1KK门票（时效）  3304694	26.4%
	tNewPoker_Reward["Random"][3304712][1][2] = {}
	tNewPoker_Reward["Random"][3304712][1][2]["RandomItemChanceType"] = 2
	tNewPoker_Reward["Random"][3304712][1][2]["ItemChance"] = 2640
	tNewPoker_Reward["Random"][3304712][1][2]["RewardItem"] = {}
	tNewPoker_Reward["Random"][3304712][1][2]["RewardItem"][1] = {}
	tNewPoker_Reward["Random"][3304712][1][2]["RewardItem"][1]["Id"] = 3304694
	tNewPoker_Reward["Random"][3304712][1][2]["RewardItem"][1]["Attr"] = "0 1 0 64800 1"
	
	-- 绑定5KK门票（时效）  3304695	1%
	tNewPoker_Reward["Random"][3304712][1][3] = {}
	tNewPoker_Reward["Random"][3304712][1][3]["RandomItemChanceType"] = 2
	tNewPoker_Reward["Random"][3304712][1][3]["ItemChance"] = 100
	tNewPoker_Reward["Random"][3304712][1][3]["RewardItem"] = {}
	tNewPoker_Reward["Random"][3304712][1][3]["RewardItem"][1] = {}
	tNewPoker_Reward["Random"][3304712][1][3]["RewardItem"][1]["Id"] = 3304695
	tNewPoker_Reward["Random"][3304712][1][3]["RewardItem"][1]["Attr"] = "0 1 0 64800 1"
	
	-- 绑定10KK门票（时效）  3304696	0.5%
	tNewPoker_Reward["Random"][3304712][1][4] = {}
	tNewPoker_Reward["Random"][3304712][1][4]["RandomItemChanceType"] = 2
	tNewPoker_Reward["Random"][3304712][1][4]["ItemChance"] = 50
	tNewPoker_Reward["Random"][3304712][1][4]["RewardItem"] = {}
	tNewPoker_Reward["Random"][3304712][1][4]["RewardItem"][1] = {}
	tNewPoker_Reward["Random"][3304712][1][4]["RewardItem"][1]["Id"] = 3304696
	tNewPoker_Reward["Random"][3304712][1][4]["RewardItem"][1]["Attr"] = "0 1 0 64800 1"
	
	-- 绑定50KK门票（时效）  3304697	0.1%
	tNewPoker_Reward["Random"][3304712][1][5] = {}
	tNewPoker_Reward["Random"][3304712][1][5]["RandomItemChanceType"] = 2
	tNewPoker_Reward["Random"][3304712][1][5]["ItemChance"] = 10
	tNewPoker_Reward["Random"][3304712][1][5]["RewardItem"] = {}
	tNewPoker_Reward["Random"][3304712][1][5]["RewardItem"][1] = {}
	tNewPoker_Reward["Random"][3304712][1][5]["RewardItem"][1]["Id"] = 3304697
	tNewPoker_Reward["Random"][3304712][1][5]["RewardItem"][1]["Attr"] = "0 1 0 64800 1"

	-- 实物大奖赛门票（时效）  3304698	5%
	tNewPoker_Reward["Random"][3304712][1][6] = {}
	tNewPoker_Reward["Random"][3304712][1][6]["RandomItemChanceType"] = 2
	tNewPoker_Reward["Random"][3304712][1][6]["ItemChance"] = 500
	tNewPoker_Reward["Random"][3304712][1][6]["RewardItem"] = {}
	tNewPoker_Reward["Random"][3304712][1][6]["RewardItem"][1] = {}
	tNewPoker_Reward["Random"][3304712][1][6]["RewardItem"][1]["Id"] = 3304698
	tNewPoker_Reward["Random"][3304712][1][6]["RewardItem"][1]["Attr"] = "0 1 0 64800 1"
	
	-- 过期走2
	tNewPoker_Reward["Random"][3304712][2] = {}
	tNewPoker_Reward["Random"][3304712][2]["Log"] = "0,0,3304712,1,12000831,2,0,0"
	tNewPoker_Reward["Random"][3304712][2]["DeleteItem"] = {}
	tNewPoker_Reward["Random"][3304712][2]["DeleteItem"][1] = {}
	tNewPoker_Reward["Random"][3304712][2]["DeleteItem"][1]["Id"] = 3304712
	
-- 3304713,'锦标赛增购券初级礼盒'
	tNewPoker_Reward["Random"][3304713] = {}	
	tNewPoker_Reward["Random"][3304713][1] = {}
	tNewPoker_Reward["Random"][3304713][1]["LogId"] = 12000831
	tNewPoker_Reward["Random"][3304713][1]["ItemChanceSum"] = 10000
	
	-- 绑定500K锦标赛增购券（时效）  3304699	67%
	tNewPoker_Reward["Random"][3304713][1][1] = {}
	tNewPoker_Reward["Random"][3304713][1][1]["RandomItemChanceType"] = 2
	tNewPoker_Reward["Random"][3304713][1][1]["ItemChance"] = 6700
	tNewPoker_Reward["Random"][3304713][1][1]["RewardItem"] = {}
	tNewPoker_Reward["Random"][3304713][1][1]["RewardItem"][1] = {}
	tNewPoker_Reward["Random"][3304713][1][1]["RewardItem"][1]["Id"] = 3304699
	tNewPoker_Reward["Random"][3304713][1][1]["RewardItem"][1]["Attr"] = "0 1 0 64800 1"
	
	-- 绑定1KK锦标赛增购券（时效）  3304700	26.4%
	tNewPoker_Reward["Random"][3304713][1][2] = {}
	tNewPoker_Reward["Random"][3304713][1][2]["RandomItemChanceType"] = 2
	tNewPoker_Reward["Random"][3304713][1][2]["ItemChance"] = 2640
	tNewPoker_Reward["Random"][3304713][1][2]["RewardItem"] = {}
	tNewPoker_Reward["Random"][3304713][1][2]["RewardItem"][1] = {}
	tNewPoker_Reward["Random"][3304713][1][2]["RewardItem"][1]["Id"] = 3304700
	tNewPoker_Reward["Random"][3304713][1][2]["RewardItem"][1]["Attr"] = "0 1 0 64800 1"
	
	-- 绑定5KK锦标赛增购券（时效）  3304701	1%
	tNewPoker_Reward["Random"][3304713][1][3] = {}
	tNewPoker_Reward["Random"][3304713][1][3]["RandomItemChanceType"] = 2
	tNewPoker_Reward["Random"][3304713][1][3]["ItemChance"] = 100
	tNewPoker_Reward["Random"][3304713][1][3]["RewardItem"] = {}
	tNewPoker_Reward["Random"][3304713][1][3]["RewardItem"][1] = {}
	tNewPoker_Reward["Random"][3304713][1][3]["RewardItem"][1]["Id"] = 3304701
	tNewPoker_Reward["Random"][3304713][1][3]["RewardItem"][1]["Attr"] = "0 1 0 64800 1"
	
	-- 绑定10KKK锦标赛增购券（时效）  3304702	0.5%
	tNewPoker_Reward["Random"][3304713][1][4] = {}
	tNewPoker_Reward["Random"][3304713][1][4]["RandomItemChanceType"] = 2
	tNewPoker_Reward["Random"][3304713][1][4]["ItemChance"] = 50
	tNewPoker_Reward["Random"][3304713][1][4]["RewardItem"] = {}
	tNewPoker_Reward["Random"][3304713][1][4]["RewardItem"][1] = {}
	tNewPoker_Reward["Random"][3304713][1][4]["RewardItem"][1]["Id"] = 3304702
	tNewPoker_Reward["Random"][3304713][1][4]["RewardItem"][1]["Attr"] = "0 1 0 64800 1"
	
	-- 绑定50KK锦标赛增购券（时效）  3304703	0.1%
	tNewPoker_Reward["Random"][3304713][1][5] = {}
	tNewPoker_Reward["Random"][3304713][1][5]["RandomItemChanceType"] = 2
	tNewPoker_Reward["Random"][3304713][1][5]["ItemChance"] = 10
	tNewPoker_Reward["Random"][3304713][1][5]["RewardItem"] = {}
	tNewPoker_Reward["Random"][3304713][1][5]["RewardItem"][1] = {}
	tNewPoker_Reward["Random"][3304713][1][5]["RewardItem"][1]["Id"] = 3304703
	tNewPoker_Reward["Random"][3304713][1][5]["RewardItem"][1]["Attr"] = "0 1 0 64800 1"

	-- 绑定实物大奖增购券（时效）  3304704	5%
	tNewPoker_Reward["Random"][3304713][1][6] = {}
	tNewPoker_Reward["Random"][3304713][1][6]["RandomItemChanceType"] = 2
	tNewPoker_Reward["Random"][3304713][1][6]["ItemChance"] = 500
	tNewPoker_Reward["Random"][3304713][1][6]["RewardItem"] = {}
	tNewPoker_Reward["Random"][3304713][1][6]["RewardItem"][1] = {}
	tNewPoker_Reward["Random"][3304713][1][6]["RewardItem"][1]["Id"] = 3304704
	tNewPoker_Reward["Random"][3304713][1][6]["RewardItem"][1]["Attr"] = "0 1 0 64800 1"
	
	-- 过期走2
	tNewPoker_Reward["Random"][3304713][2] = {}
	tNewPoker_Reward["Random"][3304713][2]["Log"] = "0,0,3304713,1,12000831,2,0,0"
	tNewPoker_Reward["Random"][3304713][2]["DeleteItem"] = {}
	tNewPoker_Reward["Random"][3304713][2]["DeleteItem"][1] = {}
	tNewPoker_Reward["Random"][3304713][2]["DeleteItem"][1]["Id"] = 3304713
	
	-- 3304714,'锦标赛重购券初级礼盒'
	tNewPoker_Reward["Random"][3304714] = {}	
	tNewPoker_Reward["Random"][3304714][1] = {}
	tNewPoker_Reward["Random"][3304714][1]["LogId"] = 12000831
	tNewPoker_Reward["Random"][3304714][1]["ItemChanceSum"] = 10000
	
	-- 绑定500K锦标赛重购券（时效）  3304705	67%
	tNewPoker_Reward["Random"][3304714][1][1] = {}
	tNewPoker_Reward["Random"][3304714][1][1]["RandomItemChanceType"] = 2
	tNewPoker_Reward["Random"][3304714][1][1]["ItemChance"] = 6700
	tNewPoker_Reward["Random"][3304714][1][1]["RewardItem"] = {}
	tNewPoker_Reward["Random"][3304714][1][1]["RewardItem"][1] = {}
	tNewPoker_Reward["Random"][3304714][1][1]["RewardItem"][1]["Id"] = 3304705
	tNewPoker_Reward["Random"][3304714][1][1]["RewardItem"][1]["Attr"] = "0 1 0 64800 1"
	
	-- 绑定1KK锦标赛重购券（时效）  3304706	26.4%
	tNewPoker_Reward["Random"][3304714][1][2] = {}
	tNewPoker_Reward["Random"][3304714][1][2]["RandomItemChanceType"] = 2
	tNewPoker_Reward["Random"][3304714][1][2]["ItemChance"] = 2640
	tNewPoker_Reward["Random"][3304714][1][2]["RewardItem"] = {}
	tNewPoker_Reward["Random"][3304714][1][2]["RewardItem"][1] = {}
	tNewPoker_Reward["Random"][3304714][1][2]["RewardItem"][1]["Id"] = 3304706
	tNewPoker_Reward["Random"][3304714][1][2]["RewardItem"][1]["Attr"] = "0 1 0 64800 1"
	
	-- 绑定5KK锦标赛重购券（时效）  3304707	1%
	tNewPoker_Reward["Random"][3304714][1][3] = {}
	tNewPoker_Reward["Random"][3304714][1][3]["RandomItemChanceType"] = 2
	tNewPoker_Reward["Random"][3304714][1][3]["ItemChance"] = 100
	tNewPoker_Reward["Random"][3304714][1][3]["RewardItem"] = {}
	tNewPoker_Reward["Random"][3304714][1][3]["RewardItem"][1] = {}
	tNewPoker_Reward["Random"][3304714][1][3]["RewardItem"][1]["Id"] = 3304707
	tNewPoker_Reward["Random"][3304714][1][3]["RewardItem"][1]["Attr"] = "0 1 0 64800 1"
	
	-- 绑定10KKK锦标赛重购券（时效）  3304708	0.5%
	tNewPoker_Reward["Random"][3304714][1][4] = {}
	tNewPoker_Reward["Random"][3304714][1][4]["RandomItemChanceType"] = 2
	tNewPoker_Reward["Random"][3304714][1][4]["ItemChance"] = 50
	tNewPoker_Reward["Random"][3304714][1][4]["RewardItem"] = {}
	tNewPoker_Reward["Random"][3304714][1][4]["RewardItem"][1] = {}
	tNewPoker_Reward["Random"][3304714][1][4]["RewardItem"][1]["Id"] = 3304708
	tNewPoker_Reward["Random"][3304714][1][4]["RewardItem"][1]["Attr"] = "0 1 0 64800 1"
	
	-- 绑定50KK锦标赛重购券（时效）  3304709	0.1%
	tNewPoker_Reward["Random"][3304714][1][5] = {}
	tNewPoker_Reward["Random"][3304714][1][5]["RandomItemChanceType"] = 2
	tNewPoker_Reward["Random"][3304714][1][5]["ItemChance"] = 10
	tNewPoker_Reward["Random"][3304714][1][5]["RewardItem"] = {}
	tNewPoker_Reward["Random"][3304714][1][5]["RewardItem"][1] = {}
	tNewPoker_Reward["Random"][3304714][1][5]["RewardItem"][1]["Id"] = 3304709
	tNewPoker_Reward["Random"][3304714][1][5]["RewardItem"][1]["Attr"] = "0 1 0 64800 1"

	-- 绑定实物大奖重购券（时效）  3304710	5%
	tNewPoker_Reward["Random"][3304714][1][6] = {}
	tNewPoker_Reward["Random"][3304714][1][6]["RandomItemChanceType"] = 2
	tNewPoker_Reward["Random"][3304714][1][6]["ItemChance"] = 500
	tNewPoker_Reward["Random"][3304714][1][6]["RewardItem"] = {}
	tNewPoker_Reward["Random"][3304714][1][6]["RewardItem"][1] = {}
	tNewPoker_Reward["Random"][3304714][1][6]["RewardItem"][1]["Id"] = 3304710
	tNewPoker_Reward["Random"][3304714][1][6]["RewardItem"][1]["Attr"] = "0 1 0 64800 1"
	
	-- 过期走2
	tNewPoker_Reward["Random"][3304714][2] = {}
	tNewPoker_Reward["Random"][3304714][2]["Log"] = "0,0,3304714,1,12000831,2,0,0"
	tNewPoker_Reward["Random"][3304714][2]["DeleteItem"] = {}
	tNewPoker_Reward["Random"][3304714][2]["DeleteItem"][1] = {}
	tNewPoker_Reward["Random"][3304714][2]["DeleteItem"][1]["Id"] = 3304714
	
	
	-- 3304715,'锦标赛门票碎片高级礼盒'
	tNewPoker_Reward["Random"][3304715] = {}	
	tNewPoker_Reward["Random"][3304715][1] = {}
	tNewPoker_Reward["Random"][3304715][1]["LogId"] = 12000831
	tNewPoker_Reward["Random"][3304715][1]["ItemChanceSum"] = 10000
	
	-- 绑定5KK门票碎片（时效）  3304690	10%
	tNewPoker_Reward["Random"][3304715][1][1] = {}
	tNewPoker_Reward["Random"][3304715][1][1]["RandomItemChanceType"] = 2
	tNewPoker_Reward["Random"][3304715][1][1]["ItemChance"] = 1000
	tNewPoker_Reward["Random"][3304715][1][1]["RewardItem"] = {}
	tNewPoker_Reward["Random"][3304715][1][1]["RewardItem"][1] = {}
	tNewPoker_Reward["Random"][3304715][1][1]["RewardItem"][1]["Id"] = 3304690
	tNewPoker_Reward["Random"][3304715][1][1]["RewardItem"][1]["Attr"] = "0 1"
	
	-- 绑定10KK门票碎片（时效）  3304691	30%
	tNewPoker_Reward["Random"][3304715][1][2] = {}
	tNewPoker_Reward["Random"][3304715][1][2]["RandomItemChanceType"] = 2
	tNewPoker_Reward["Random"][3304715][1][2]["ItemChance"] = 3000
	tNewPoker_Reward["Random"][3304715][1][2]["RewardItem"] = {}
	tNewPoker_Reward["Random"][3304715][1][2]["RewardItem"][1] = {}
	tNewPoker_Reward["Random"][3304715][1][2]["RewardItem"][1]["Id"] = 3304691
	tNewPoker_Reward["Random"][3304715][1][2]["RewardItem"][1]["Attr"] = "0 1"
	
	-- 绑定50KK门票碎片（时效）  3304692	60%
	tNewPoker_Reward["Random"][3304715][1][3] = {}
	tNewPoker_Reward["Random"][3304715][1][3]["RandomItemChanceType"] = 2
	tNewPoker_Reward["Random"][3304715][1][3]["ItemChance"] = 6000
	tNewPoker_Reward["Random"][3304715][1][3]["RewardItem"] = {}
	tNewPoker_Reward["Random"][3304715][1][3]["RewardItem"][1] = {}
	tNewPoker_Reward["Random"][3304715][1][3]["RewardItem"][1]["Id"] = 3304692
	tNewPoker_Reward["Random"][3304715][1][3]["RewardItem"][1]["Attr"] = "0 1"
	
	-- 过期走2
	tNewPoker_Reward["Random"][3304715][2] = {}
	tNewPoker_Reward["Random"][3304715][2]["Log"] = "0,0,3304715,1,12000831,2,0,0"
	tNewPoker_Reward["Random"][3304715][2]["DeleteItem"] = {}
	tNewPoker_Reward["Random"][3304715][2]["DeleteItem"][1] = {}
	tNewPoker_Reward["Random"][3304715][2]["DeleteItem"][1]["Id"] = 3304715
	
	
	-- 3304716,'锦标赛门票高级礼盒'
	tNewPoker_Reward["Random"][3304716] = {}	
	tNewPoker_Reward["Random"][3304716][1] = {}
	tNewPoker_Reward["Random"][3304716][1]["LogId"] = 12000831
	tNewPoker_Reward["Random"][3304716][1]["ItemChanceSum"] = 10000
	
	-- 绑定5KK门票（时效）  3304693	25%
	tNewPoker_Reward["Random"][3304716][1][1] = {}
	tNewPoker_Reward["Random"][3304716][1][1]["RandomItemChanceType"] = 2
	tNewPoker_Reward["Random"][3304716][1][1]["ItemChance"] = 2500
	tNewPoker_Reward["Random"][3304716][1][1]["RewardItem"] = {}
	tNewPoker_Reward["Random"][3304716][1][1]["RewardItem"][1] = {}
	tNewPoker_Reward["Random"][3304716][1][1]["RewardItem"][1]["Id"] = 3304695
	tNewPoker_Reward["Random"][3304716][1][1]["RewardItem"][1]["Attr"] = "0 1 0 64800 1"
	
	-- 绑定10KK门票（时效）  3304696	35%
	tNewPoker_Reward["Random"][3304716][1][2] = {}
	tNewPoker_Reward["Random"][3304716][1][2]["RandomItemChanceType"] = 2
	tNewPoker_Reward["Random"][3304716][1][2]["ItemChance"] = 3500
	tNewPoker_Reward["Random"][3304716][1][2]["RewardItem"] = {}
	tNewPoker_Reward["Random"][3304716][1][2]["RewardItem"][1] = {}
	tNewPoker_Reward["Random"][3304716][1][2]["RewardItem"][1]["Id"] = 3304696
	tNewPoker_Reward["Random"][3304716][1][2]["RewardItem"][1]["Attr"] = "0 1 0 64800 1"
	
	-- 绑定50KK门票（时效）  3304697	15%
	tNewPoker_Reward["Random"][3304716][1][3] = {}
	tNewPoker_Reward["Random"][3304716][1][3]["RandomItemChanceType"] = 2
	tNewPoker_Reward["Random"][3304716][1][3]["ItemChance"] = 1500
	tNewPoker_Reward["Random"][3304716][1][3]["RewardItem"] = {}
	tNewPoker_Reward["Random"][3304716][1][3]["RewardItem"][1] = {}
	tNewPoker_Reward["Random"][3304716][1][3]["RewardItem"][1]["Id"] = 3304697
	tNewPoker_Reward["Random"][3304716][1][3]["RewardItem"][1]["Attr"] = "0 1 0 64800 1"

	-- 绑定实物大奖赛门票（时效）  3304698	25%
	tNewPoker_Reward["Random"][3304716][1][4] = {}
	tNewPoker_Reward["Random"][3304716][1][4]["RandomItemChanceType"] = 2
	tNewPoker_Reward["Random"][3304716][1][4]["ItemChance"] = 2500
	tNewPoker_Reward["Random"][3304716][1][4]["RewardItem"] = {}
	tNewPoker_Reward["Random"][3304716][1][4]["RewardItem"][1] = {}
	tNewPoker_Reward["Random"][3304716][1][4]["RewardItem"][1]["Id"] = 3304698
	tNewPoker_Reward["Random"][3304716][1][4]["RewardItem"][1]["Attr"] = "0 1 0 64800 1"
	
	-- 过期走2
	tNewPoker_Reward["Random"][3304716][2] = {}
	tNewPoker_Reward["Random"][3304716][2]["Log"] = "0,0,3304716,1,12000831,2,0,0"
	tNewPoker_Reward["Random"][3304716][2]["DeleteItem"] = {}
	tNewPoker_Reward["Random"][3304716][2]["DeleteItem"][1] = {}
	tNewPoker_Reward["Random"][3304716][2]["DeleteItem"][1]["Id"] = 3304716
	
	-- 3304717,'锦标赛增购券高级礼盒'
	tNewPoker_Reward["Random"][3304717] = {}	
	tNewPoker_Reward["Random"][3304717][1] = {}
	tNewPoker_Reward["Random"][3304717][1]["LogId"] = 12000831
	tNewPoker_Reward["Random"][3304717][1]["ItemChanceSum"] = 10000
	
	-- 绑定5KK锦标赛增购券（时效）  3304701	10%
	tNewPoker_Reward["Random"][3304717][1][1] = {}
	tNewPoker_Reward["Random"][3304717][1][1]["RandomItemChanceType"] = 2
	tNewPoker_Reward["Random"][3304717][1][1]["ItemChance"] = 1000
	tNewPoker_Reward["Random"][3304717][1][1]["RewardItem"] = {}
	tNewPoker_Reward["Random"][3304717][1][1]["RewardItem"][1] = {}
	tNewPoker_Reward["Random"][3304717][1][1]["RewardItem"][1]["Id"] = 3304701
	tNewPoker_Reward["Random"][3304717][1][1]["RewardItem"][1]["Attr"] = "0 1 0 64800 1"
	
	-- 绑定10KK锦标赛增购券（时效）  3304702	30%
	tNewPoker_Reward["Random"][3304717][1][2] = {}
	tNewPoker_Reward["Random"][3304717][1][2]["RandomItemChanceType"] = 2
	tNewPoker_Reward["Random"][3304717][1][2]["ItemChance"] = 3000
	tNewPoker_Reward["Random"][3304717][1][2]["RewardItem"] = {}
	tNewPoker_Reward["Random"][3304717][1][2]["RewardItem"][1] = {}
	tNewPoker_Reward["Random"][3304717][1][2]["RewardItem"][1]["Id"] = 3304702
	tNewPoker_Reward["Random"][3304717][1][2]["RewardItem"][1]["Attr"] = "0 1 0 64800 1"
	
	-- 绑定50KK锦标赛增购券（时效）  3304703	50%
	tNewPoker_Reward["Random"][3304717][1][3] = {}
	tNewPoker_Reward["Random"][3304717][1][3]["RandomItemChanceType"] = 2
	tNewPoker_Reward["Random"][3304717][1][3]["ItemChance"] = 5000
	tNewPoker_Reward["Random"][3304717][1][3]["RewardItem"] = {}
	tNewPoker_Reward["Random"][3304717][1][3]["RewardItem"][1] = {}
	tNewPoker_Reward["Random"][3304717][1][3]["RewardItem"][1]["Id"] = 3304703
	tNewPoker_Reward["Random"][3304717][1][3]["RewardItem"][1]["Attr"] = "0 1 0 64800 1"

	-- 绑定实物大奖增购券（时效）  3304704	10%
	tNewPoker_Reward["Random"][3304717][1][4] = {}
	tNewPoker_Reward["Random"][3304717][1][4]["RandomItemChanceType"] = 2
	tNewPoker_Reward["Random"][3304717][1][4]["ItemChance"] = 1000
	tNewPoker_Reward["Random"][3304717][1][4]["RewardItem"] = {}
	tNewPoker_Reward["Random"][3304717][1][4]["RewardItem"][1] = {}
	tNewPoker_Reward["Random"][3304717][1][4]["RewardItem"][1]["Id"] = 3304704
	tNewPoker_Reward["Random"][3304717][1][4]["RewardItem"][1]["Attr"] = "0 1 0 64800 1"
	
	-- 过期走2
	tNewPoker_Reward["Random"][3304717][2] = {}
	tNewPoker_Reward["Random"][3304717][2]["Log"] = "0,0,3304717,1,12000831,2,0,0"
	tNewPoker_Reward["Random"][3304717][2]["DeleteItem"] = {}
	tNewPoker_Reward["Random"][3304717][2]["DeleteItem"][1] = {}
	tNewPoker_Reward["Random"][3304717][2]["DeleteItem"][1]["Id"] = 3304717
	
	-- 3304718,'锦标赛重购券高级礼盒'
	tNewPoker_Reward["Random"][3304718] = {}	
	tNewPoker_Reward["Random"][3304718][1] = {}
	tNewPoker_Reward["Random"][3304718][1]["LogId"] = 12000831
	tNewPoker_Reward["Random"][3304718][1]["ItemChanceSum"] = 10000
	
	-- 绑定5KK锦标赛重购券（时效）  3304707	10%
	tNewPoker_Reward["Random"][3304718][1][1] = {}
	tNewPoker_Reward["Random"][3304718][1][1]["RandomItemChanceType"] = 2
	tNewPoker_Reward["Random"][3304718][1][1]["ItemChance"] = 1000
	tNewPoker_Reward["Random"][3304718][1][1]["RewardItem"] = {}
	tNewPoker_Reward["Random"][3304718][1][1]["RewardItem"][1] = {}
	tNewPoker_Reward["Random"][3304718][1][1]["RewardItem"][1]["Id"] = 3304707
	tNewPoker_Reward["Random"][3304718][1][1]["RewardItem"][1]["Attr"] = "0 1 0 64800 1"
	
	-- 绑定10KK锦标赛重购券（时效）  3304708	30%
	tNewPoker_Reward["Random"][3304718][1][2] = {}
	tNewPoker_Reward["Random"][3304718][1][2]["RandomItemChanceType"] = 2
	tNewPoker_Reward["Random"][3304718][1][2]["ItemChance"] = 3000
	tNewPoker_Reward["Random"][3304718][1][2]["RewardItem"] = {}
	tNewPoker_Reward["Random"][3304718][1][2]["RewardItem"][1] = {}
	tNewPoker_Reward["Random"][3304718][1][2]["RewardItem"][1]["Id"] = 3304708
	tNewPoker_Reward["Random"][3304718][1][2]["RewardItem"][1]["Attr"] = "0 1 0 64800 1"
	
	-- 绑定50KK锦标赛重购券（时效）  3304709	50%
	tNewPoker_Reward["Random"][3304718][1][3] = {}
	tNewPoker_Reward["Random"][3304718][1][3]["RandomItemChanceType"] = 2
	tNewPoker_Reward["Random"][3304718][1][3]["ItemChance"] = 5000
	tNewPoker_Reward["Random"][3304718][1][3]["RewardItem"] = {}
	tNewPoker_Reward["Random"][3304718][1][3]["RewardItem"][1] = {}
	tNewPoker_Reward["Random"][3304718][1][3]["RewardItem"][1]["Id"] = 3304709
	tNewPoker_Reward["Random"][3304718][1][3]["RewardItem"][1]["Attr"] = "0 1 0 64800 1"

	-- 绑定实物大奖重购券（时效）  3304710	10%
	tNewPoker_Reward["Random"][3304718][1][4] = {}
	tNewPoker_Reward["Random"][3304718][1][4]["RandomItemChanceType"] = 2
	tNewPoker_Reward["Random"][3304718][1][4]["ItemChance"] = 1000
	tNewPoker_Reward["Random"][3304718][1][4]["RewardItem"] = {}
	tNewPoker_Reward["Random"][3304718][1][4]["RewardItem"][1] = {}
	tNewPoker_Reward["Random"][3304718][1][4]["RewardItem"][1]["Id"] = 3304710
	tNewPoker_Reward["Random"][3304718][1][4]["RewardItem"][1]["Attr"] = "0 1 0 64800 1"
	
	-- 过期走2
	tNewPoker_Reward["Random"][3304718][2] = {}
	tNewPoker_Reward["Random"][3304718][2]["Log"] = "0,0,3304718,1,12000831,2,0,0"
	tNewPoker_Reward["Random"][3304718][2]["DeleteItem"] = {}
	tNewPoker_Reward["Random"][3304718][2]["DeleteItem"][1] = {}
	tNewPoker_Reward["Random"][3304718][2]["DeleteItem"][1]["Id"] = 3304718

	
	tNewPoker_Reward["Cps"] = {}
	-- 3390003 100CPsBag
	tNewPoker_Reward["Cps"][3390003] = {}
	tNewPoker_Reward["Cps"][3390003]["DeleteItem"] = {}
	tNewPoker_Reward["Cps"][3390003]["DeleteItem"][1] = {}
	tNewPoker_Reward["Cps"][3390003]["DeleteItem"][1]["Id"] = 3390003
	tNewPoker_Reward["Cps"][3390003]["RewardEMoney"] = {}
	tNewPoker_Reward["Cps"][3390003]["RewardEMoney"]["Value"] = 100
	tNewPoker_Reward["Cps"][3390003]["RewardEMoney"]["EmoneyLog"] = "350	20738	-100	-100	1	"
	tNewPoker_Reward["Cps"][3390003]["Log"] = "0,0,3390003,1,12000530,2,2,100"

	
	--3390004 500CPsBag
	tNewPoker_Reward["Cps"][3390004] = {}
	tNewPoker_Reward["Cps"][3390004]["DeleteItem"] = {}
	tNewPoker_Reward["Cps"][3390004]["DeleteItem"][1] = {}
	tNewPoker_Reward["Cps"][3390004]["DeleteItem"][1]["Id"] = 3390004
	tNewPoker_Reward["Cps"][3390004]["RewardEMoney"] = {}
	tNewPoker_Reward["Cps"][3390004]["RewardEMoney"]["Value"] = 500
	tNewPoker_Reward["Cps"][3390004]["RewardEMoney"]["EmoneyLog"] = "350	20739	-500	-500	1	"
	tNewPoker_Reward["Cps"][3390004]["Log"] = "0,0,3390004,1,12000530,2,2,500"
		
	tNewPoker_Reward["Coat"] = {}
	-- 3390002	FlushofHeartsPack
	tNewPoker_Reward["Coat"][3390002] = {}
	tNewPoker_Reward["Coat"][3390002]["Log"] = "0,0,3390002,1,12000831,2,3302899,1"
	tNewPoker_Reward["Coat"][3390002]["DeleteItem"] = {}
	tNewPoker_Reward["Coat"][3390002]["DeleteItem"][1] = {}
	tNewPoker_Reward["Coat"][3390002]["DeleteItem"][1]["Id"] = 3390002
	tNewPoker_Reward["Coat"][3390002]["RewardItem"] = {}
	tNewPoker_Reward["Coat"][3390002]["RewardItem"][1] = {}
	tNewPoker_Reward["Coat"][3390002]["RewardItem"][1]["Id"] = 193715
	tNewPoker_Reward["Coat"][3390002]["RewardItem"][1]["Attr"] = "0 1 3 1440 1"
	
local tNewPoker_Exchange = {}
	-- 3304695,'5KK门票
	tNewPoker_Exchange[3304695] = {}
	tNewPoker_Exchange[3304695]["DeleteItem"] = {}
	tNewPoker_Exchange[3304695]["DeleteItem"][1] = {}
	tNewPoker_Exchange[3304695]["DeleteItem"][1]["Id"] = 3304695
	tNewPoker_Exchange[3304695]["DeleteItem"][1]["ItemNum"] = 1
	tNewPoker_Exchange[3304695]["RewardItem"] = {}
	tNewPoker_Exchange[3304695]["RewardItem"][1] = {}
	tNewPoker_Exchange[3304695]["RewardItem"][1]["Id"] = 3305478
	tNewPoker_Exchange[3304695]["RewardItem"][1]["Attr"] = "0 1 0 64800 1"
	tNewPoker_Exchange[3304695]["Log"] = "0,0,3304695,1,12000831,2,3305478,1" 

	
	
-----------------------------------------------------------------------------------
-- 相关条件判断function
function NewPoker_UpChk(nItemId)
	if(tNewPoker_Reward[nItemId]["DelCont"] ~= nil) then
		if not User_CanPutMoney2Bag(-tNewPoker_Reward[nItemId]["DelCont"][1]) then
			return 1
		elseif not Item_ChkItem(nItemId) then
			return 2
		elseif not User_CheckLeftSpace(RewardTemplate_GetRewardSpace(tNewPoker_Reward[nItemId]["RewardMsg"])) then
			return 3
		else
			return 0
		end			
	else
		return 100
	end
end


-- 碎片礼包第一层对白
function NewPoker_UpSub(nItemId)
	if CommonFunc_GetAfterActivityTime(tActivityTime["NewPoker"]["ActTime"]) then
		RewardTemplate_UseItemAndMsg(tNewPoker_Reward[nItemId]["DelItem"])
		Sys_SaveActionRewardLog(tNewPoker_Reward[nItemId]["DelItem"]["Log"])
		User_TalkChannel2005(tNewPoker_Text["ItemMsg"][6])
		return
	end
	
	if (NewPoker_UpChk(nItemId) > 3) or (NewPoker_UpChk(nItemId) < 0) then
		--说明出现了不合理错误
		--记录一个不合理的LOG
			Sys_SaveActionRewardLog(string.format(tNewPoker_Log["Accident"],nItemId,nItemId,nItemId,nItemId))
		--直接return
		return
	end
	
	if NewPoker_UpChk(nItemId) == 0 then
		-- 说明条件满足
		LinkItemGossipFunc_New(nItemId,"2-1")
	elseif NewPoker_UpChk(nItemId) == 1 then
		-- 不满足条件给提示
		User_TalkChannel2005(tNewPoker_Text["ItemMsg"][1])
	elseif NewPoker_UpChk(nItemId) == 2 then
		User_TalkChannel2005(string.format(tNewPoker_Text["ItemMsg"][2],Get_ItemName(nItemId)))
	elseif NewPoker_UpChk(nItemId) == 3 then
		User_TalkChannel2005(tNewPoker_Text["ItemMsg"][3])
	end
end

-- 碎片礼包二次确认
function NewPoker_UpSubSure(nItemId)

	if CommonFunc_GetAfterActivityTime(tActivityTime["NewPoker"]["ActTime"]) then
		RewardTemplate_UseItemAndMsg(tNewPoker_Reward[nItemId]["DelItem"])
		Sys_SaveActionRewardLog(tNewPoker_Reward[nItemId]["DelItem"]["Log"])
		User_TalkChannel2005(tNewPoker_Text["ItemMsg"][6])
		return
	end


	if (NewPoker_UpChk(nItemId) > 3) or (NewPoker_UpChk(nItemId) < 0) then
		--说明出现了不合理错误
		--记录一个不合理的LOG
			Sys_SaveActionRewardLog(string.format(tNewPoker_Log["Accident"],nItemId,nItemId,nItemId,nItemId))
		--直接return
		return
	end
	
	if NewPoker_UpChk(nItemId) == 0 then
		-- 说明条件满足
		-- 删除银两 和 物品  获得奖励
		
		--
		if User_AddMoneyNew(-tNewPoker_Reward[nItemId]["DelCont"][1],12000831) then
			-- 给奖励
			
			RewardTemplate_UseItemAndMsg(tNewPoker_Reward[nItemId]["RewardMsg"])
		end
	elseif NewPoker_UpChk(nItemId) == 1 then
		-- 不满足条件给提示
		User_TalkChannel2005(tNewPoker_Text["ItemMsg"][1])
	elseif NewPoker_UpChk(nItemId) == 2 then
		User_TalkChannel2005(string.format(tNewPoker_Text["ItemMsg"][2],Get_ItemName(nItemId)))
	elseif NewPoker_UpChk(nItemId) == 3 then
		User_TalkChannel2005(tNewPoker_Text["ItemMsg"][3])
	end	
end


function NewPokerOpenWeb(nFlag)
	User_SendWebPage(tNewPoker_Web[nFlag])
end

function NewPokerOpenExchangeShop()
	local nNpcId = Get_NpcId()
	User_OpenExchangeShop(nNpcId)
end


-----------------------------------------物品使用模板---------------------------------
-- 3304688	500K门票碎片
tItemFace[3304688] = 790
tItem[3304688] = tItem[3304688] or {}
tItem[3304688]["Function"] = function(nItemId,sItemName)
	if CommonFunc_GetAfterActivityTime(tActivityTime["NewPoker"]["ActTime"]) then
		RewardTemplate_UseItemAndMsg(tNewPoker_Reward[nItemId]["DelItem"])
		Sys_SaveActionRewardLog(tNewPoker_Reward[nItemId]["DelItem"]["Log"])
		User_TalkChannel2005(tNewPoker_Text["ItemMsg"][6])
	else
		LinkItemGossipFunc_New(nItemId,"1-1")
	end
end

tItem[3304688]["DialogueText"] = tNewPoker_Text[3304688]
tItem[3304688]["Text1-1"] = {111}
tItem[3304688]["tOption1-1"] = {111,112}
tItem[3304688]["OptionFunc111"] = "NewPoker_UpSub</N>3304688"
-- 二次确认
tItem[3304688]["Text2-1"] = {211}
tItem[3304688]["tOption2-1"] = {211,112}
tItem[3304688]["OptionFunc211"] = "NewPoker_UpSubSure</N>3304688"

-- 3304689	1KK门票碎片
tItemFace[3304689] = 791
tItem[3304689] = tItem[3304689] or {}
tItem[3304689]["Function"] = function(nItemId,sItemName)
	if CommonFunc_GetAfterActivityTime(tActivityTime["NewPoker"]["ActTime"]) then
		RewardTemplate_UseItemAndMsg(tNewPoker_Reward[nItemId]["DelItem"])
		Sys_SaveActionRewardLog(tNewPoker_Reward[nItemId]["DelItem"]["Log"])
		User_TalkChannel2005(tNewPoker_Text["ItemMsg"][6])
	else
		LinkItemGossipFunc_New(nItemId,"1-1")
	end
end
tItem[3304689]["DialogueText"] = tNewPoker_Text[3304689]
tItem[3304689]["Text1-1"] = {111}
tItem[3304689]["tOption1-1"] = {111,112}
tItem[3304689]["OptionFunc111"] = "NewPoker_UpSub</N>3304689"
-- 二次确认
tItem[3304689]["Text2-1"] = {211}
tItem[3304689]["tOption2-1"] = {211,112}
tItem[3304689]["OptionFunc211"] = "NewPoker_UpSubSure</N>3304689"

-- 3304690	5KK门票碎片
tItemFace[3304690] = 792
tItem[3304690] = tItem[3304690] or {}
tItem[3304690]["Function"] = function(nItemId,sItemName)
	if CommonFunc_GetAfterActivityTime(tActivityTime["NewPoker"]["ActTime"]) then
		RewardTemplate_UseItemAndMsg(tNewPoker_Reward[nItemId]["DelItem"])
		Sys_SaveActionRewardLog(tNewPoker_Reward[nItemId]["DelItem"]["Log"])
		User_TalkChannel2005(tNewPoker_Text["ItemMsg"][6])
	else
		LinkItemGossipFunc_New(nItemId,"1-1")
	end
end
tItem[3304690]["DialogueText"] = tNewPoker_Text[3304690]
tItem[3304690]["Text1-1"] = {111}
tItem[3304690]["tOption1-1"] = {111,112}
tItem[3304690]["OptionFunc111"] = "NewPoker_UpSub</N>3304690"
-- 二次确认
tItem[3304690]["Text2-1"] = {211}
tItem[3304690]["tOption2-1"] = {211,112}
tItem[3304690]["OptionFunc211"] = "NewPoker_UpSubSure</N>3304690"

-- 3304691	10KK门票碎片
tItemFace[3304691] = 793
tItem[3304691] = tItem[3304691] or {}
tItem[3304691]["Function"] = function(nItemId,sItemName)
	if CommonFunc_GetAfterActivityTime(tActivityTime["NewPoker"]["ActTime"]) then
		RewardTemplate_UseItemAndMsg(tNewPoker_Reward[nItemId]["DelItem"])
		Sys_SaveActionRewardLog(tNewPoker_Reward[nItemId]["DelItem"]["Log"])
		User_TalkChannel2005(tNewPoker_Text["ItemMsg"][6])
	else
		LinkItemGossipFunc_New(nItemId,"1-1")
	end
end
tItem[3304691]["DialogueText"] = tNewPoker_Text[3304691]
tItem[3304691]["Text1-1"] = {111}
tItem[3304691]["tOption1-1"] = {111,112}
tItem[3304691]["OptionFunc111"] = "NewPoker_UpSub</N>3304691"
-- 二次确认
tItem[3304691]["Text2-1"] = {211}
tItem[3304691]["tOption2-1"] = {211,112}
tItem[3304691]["OptionFunc211"] = "NewPoker_UpSubSure</N>3304691"

-- 3304692	50KK门票碎片
tItemFace[3304692] = 794
tItem[3304692] = tItem[3304692] or {}
tItem[3304692]["Function"] = function(nItemId,sItemName)
	if CommonFunc_GetAfterActivityTime(tActivityTime["NewPoker"]["ActTime"]) then
		RewardTemplate_UseItemAndMsg(tNewPoker_Reward[nItemId]["DelItem"])
		Sys_SaveActionRewardLog(tNewPoker_Reward[nItemId]["DelItem"]["Log"])
		User_TalkChannel2005(tNewPoker_Text["ItemMsg"][6])
	else
		LinkItemGossipFunc_New(nItemId,"1-1")
	end
end
tItem[3304692]["DialogueText"] = tNewPoker_Text[3304692]
tItem[3304692]["Text1-1"] = {111}
tItem[3304692]["tOption1-1"] = {111,112}
tItem[3304692]["OptionFunc111"] = "NewPoker_UpSub</N>3304692"
-- 二次确认
tItem[3304692]["Text2-1"] = {211}
tItem[3304692]["tOption2-1"] = {211,112}
tItem[3304692]["OptionFunc211"] = "NewPoker_UpSubSure</N>3304692"

-- 所有的增购重购券以及门票

tItem[3304693] = tItem[3304693] or {}
tItem[3304693]["Function"] = function(nItemId,sItemName)
	if CommonFunc_GetAfterActivityTime(tActivityTime["NewPoker"]["ActTime"]) then
		RewardTemplate_UseItemAndMsg(tNewPoker_Reward[nItemId])
		Sys_SaveActionRewardLog(tNewPoker_Reward[nItemId]["Log"])
		User_TalkChannel2005(tNewPoker_Text["ItemMsg"][6])
	end
end

tItem[3304694] = tItem[3304693]
-- tItem[3304695] = tItem[3304693]
tItem[3304696] = tItem[3304693]
tItem[3304697] = tItem[3304693]
tItem[3304698] = tItem[3304693]
tItem[3304699] = tItem[3304693]
tItem[3304700] = tItem[3304693]
tItem[3304701] = tItem[3304693]
tItem[3304702] = tItem[3304693]
tItem[3304703] = tItem[3304693]
tItem[3304704] = tItem[3304693]
tItem[3304705] = tItem[3304693]
tItem[3304706] = tItem[3304693]
tItem[3304707] = tItem[3304693]
tItem[3304708] = tItem[3304693]
tItem[3304709] = tItem[3304693]
tItem[3304710] = tItem[3304693]

tItem[3304695] = tItem[3304695] or {}
tItem[3304695]["Function"] = function(nItemId,sItemName)
	if CommonFunc_GetAfterActivityTime(tActivityTime["NewPoker"]["ActTime1"]) then
		RewardTemplate_UseItemAndMsg(tNewPoker_Reward[nItemId])
		Sys_SaveActionRewardLog(tNewPoker_Reward[nItemId]["Log"])
		User_TalkChannel2005(tNewPoker_Text["ItemMsg"][6])
		return
	end
	RewardTemplate_UseItemAndMsg(tNewPoker_Exchange[nItemId])
end


--其他礼盒的使用
tItem[3304711] = tItem[3304711] or {}
tItem[3304711]["Function"] = function(nItemId,sItemName)
	if CommonFunc_GetAfterActivityTime(tActivityTime["NewPoker"]["ActTime"]) then
		--在时间外则直接删除
		RewardTemplate_UseItemAndMsg(tNewPoker_Reward["Random"][nItemId][2])
		Sys_SaveActionRewardLog(tNewPoker_Reward["Random"][nItemId][2]["Log"])
		User_TalkChannel2005(tNewPoker_Text["ItemMsg"][6])
	else
		-- 礼包不可叠加 不用判断背包
		-- 直接删除给随机奖励即可
		if Item_DelItem(nItemId) then
			--删除成功 记录log
			Sys_SaveActionRewardLog(string.format(tNewPoker_Log["DelItemLog"],nItemId,1))
			RewardTemplate_NewRandom(tNewPoker_Reward["Random"][nItemId],1)
		end		
	end
end

tItem[3304712] = tItem[3304711]
tItem[3304713] = tItem[3304711]
tItem[3304714] = tItem[3304711]
tItem[3304715] = tItem[3304711]
tItem[3304716] = tItem[3304711]
tItem[3304717] = tItem[3304711]
tItem[3304718] = tItem[3304711]


tItem[3390003] = tItem[3390003] or {}
tItem[3390003]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tNewPoker_Reward["Cps"][nItemId])
end
tItem[3390004] = tItem[3390003]

tItem[3390002] = tItem[3390002] or {}
tItem[3390002]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tNewPoker_Reward["Coat"][nItemId])
end

tItem[3304719] = tItem[3304719] or {}
tItem[3304719]["Function"] = function(nItemId,sItemName)
	Sys_GotoSomeWhere(tNewPoker_Find[1]["PosX"],tNewPoker_Find[1]["PosY"],tNewPoker_Find[1]["MapId"],tNewPoker_Find[1]["NpcId"])
end

--npc模板

tNpcFace[5752] = 4
tNpcGossip[22066] = tNpcGossip[22066] or DefaultNpc:new{}
tNpcGossip[22066]["OptionHidden"] = 1

tNpcGossip[22066]["Text1-1"] = {111,112}
tNpcGossip[22066]["Text111"] = tNewPoker_Text[22066]["Text111"]
tNpcGossip[22066]["Text112"] = tNewPoker_Text[22066]["Text112"]

tNpcGossip[22066]["Option111"] = tNewPoker_Text[22066]["Option111"]
tNpcGossip[22066]["Option112"] = tNewPoker_Text[22066]["Option112"]
tNpcGossip[22066]["Option113"] = tNewPoker_Text[22066]["Option113"]


tNpcGossip[22066]["tOption1-1"] = {111,112,113}
tNpcGossip[22066]["ChkFunc1-1"] = function()
	return Sys_ChkFullTime(tActivityTime["NewPoker"]["ActTimeDilog"])
end



tNpcGossip[22066]["OptionFunc111"] = "NewPokerOpenWeb</N>1"
tNpcGossip[22066]["OptionFunc112"] = "NewPokerOpenWeb</N>2"
tNpcGossip[22066]["OptionFunc113"] = "NewPokerOpenExchangeShop"

tNpcGossip[22067] = tNpcGossip[22066]
tNpcGossip[22068] = tNpcGossip[22066]

