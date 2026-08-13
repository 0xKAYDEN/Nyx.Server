------------------------------------------------------------------------------------
--Name：       190107[简体征服][活动脚本]2月情人节花魁赛活动
--Creator:     姚曦宇
--Created:     2019/01/07
------------------------------------------------------------------------------------
-- 任务需求：


------------------------------------------------------------------------------------
-- stc
-- 189 41 约会性别 
-- 189 42 约会对象类型 1玩家 2npc 189
-- 189 43 约会对象
-- 189 44 每日鲜花甜蜜值
-- 189 45 每日甜蜜值
-- 189 46 总甜蜜值
-- 189 47 每日约会地图
-- 189 58 每日首次进入地图
-- 189 65 气力值获取

------------------------------------------------------------------------------------
-- global

------------------------------------------------------------------------------------

------------------------------------------------------------------------------------
-- 前缀
-- ValentinesDay2019NPC_

-- LogId： 12001275
----------------------------------表配置部分--------------------------------------------
local tValentinesDay2019NPC_Cont = {}
	tValentinesDay2019NPC_Cont["ActivityTime"] = tActivityTime["ValentinesDay2019NPC"]["ActivityTime"]
	tValentinesDay2019NPC_Cont["RankTime"] = tActivityTime["ValentinesDay2019NPC"]["RankTime"]
	tValentinesDay2019NPC_Cont["DayTime"] = tActivityTime["ValentinesDay2019NPC"]["DayTime"]
	tValentinesDay2019NPC_Cont["DateMapRefresh"] = tActivityTime["ValentinesDay2019NPC"]["DateMapRefresh"]
	tValentinesDay2019NPC_Cont["StartTime"] = tActivityTime["ValentinesDay2019NPC"]["ActivityTime"]
	
	tValentinesDay2019NPC_Cont["Level"] = 80
	tValentinesDay2019NPC_Cont["Metem"] = 0
	
	tValentinesDay2019NPC_Cont["DailySubmitLimit"] = 10000
	
	tValentinesDay2019NPC_Cont["Seed"] = 3312027
	
	
	tValentinesDay2019NPC_Cont["RankIndex"] = 23682
	
	tValentinesDay2019NPC_Cont["AnotherRankIndex"] = {}
	tValentinesDay2019NPC_Cont["AnotherRankIndex"][236821] = 236822
	tValentinesDay2019NPC_Cont["AnotherRankIndex"][236822] = 236821
	
	
	tValentinesDay2019NPC_Cont["GoFindNpcBySex"] = {}
	tValentinesDay2019NPC_Cont["GoFindNpcBySex"][1] = {23687,23688}
	tValentinesDay2019NPC_Cont["GoFindNpcBySex"][2] = {23684,23685}
	
	
	
	tValentinesDay2019NPC_Cont["DateMapEffect"] = 2236
	
	tValentinesDay2019NPC_Cont["DesignNpc"] = 23689
	
	tValentinesDay2019NPC_Cont["NpcMap"] = 23710
	tValentinesDay2019NPC_Cont["PlayerMap"] = 23738
	
	tValentinesDay2019NPC_Cont["SeeRank"] = {}
	tValentinesDay2019NPC_Cont["SeeRank"][5] = 236821
	tValentinesDay2019NPC_Cont["SeeRank"][6] = 236822
	tValentinesDay2019NPC_Cont["SeeRank"][7] = 236822
	tValentinesDay2019NPC_Cont["SeeRank"][8] = 236821

	tValentinesDay2019NPC_Cont["WebLink"] = {}
	-- 约会攻略
	tValentinesDay2019NPC_Cont["WebLink"][1] = "https://co.99.com/guide/event/2019/valentine/guide/"
	-- 真爱值兑换鲜花细则
	tValentinesDay2019NPC_Cont["WebLink"][2] = ""
	-- 上线弹
	tValentinesDay2019NPC_Cont["WebLink"][3] = "https://co.99.com/guide/event/2019/valentine/client/"
	
	-- 限制物品
	tValentinesDay2019NPC_Cont["Flower"] = 754001
	
-- 返回主地图
local tValentinesDay2019NPC_TimeOutReturn = tNpcPos["ValentinesDay2019NPC"][23682]
--	local tValentinesDay2019NPC_TimeOutReturn_NoGift = tNpcPos_NoGift["ValentinesDay2019NPC"][23682]

local tValentinesDay2019NPC_CheckMapDoc = {10201,1738,4020,10281,3983,3851}

local tValentinesDay2019NPC_CheckMapSuperLink = {1002,1036,10364}




local tValentinesDay2019NPC_Log = {}
	tValentinesDay2019NPC_Log[1] = "0,0,0,0,12001275,1[1],0,1"
	tValentinesDay2019NPC_Log[2] = "0,0,0,0,12001275,1[2],0,1"
	tValentinesDay2019NPC_Log[3] = "0,0,0,0,12001275,1[3],0,1"
	-- tValentinesDay2019NPC_Log[4] = "0,0,0,0,12001275,1[4],0,1"
	tValentinesDay2019NPC_Log[5] = "0,0,0,0,12001275,1[5],0,%d"
	tValentinesDay2019NPC_Log["Delete"] = "0,0,%d,%d,12001275,2,0,0"

	
-- 甜蜜值阶段
local tValentinesDay2019NPC_SweetStep = {}	
	tValentinesDay2019NPC_SweetStep[1] = 500
	tValentinesDay2019NPC_SweetStep[2] = 3000
	tValentinesDay2019NPC_SweetStep[3] = 8000
	tValentinesDay2019NPC_SweetStep[4] = 15000
	
-- 甜蜜值阶段
local tValentinesDay2019NPC_EffectStep = {}	
	tValentinesDay2019NPC_EffectStep[1] = {2211,2212,2213,2214}
	tValentinesDay2019NPC_EffectStep[2] = {2215,2216,2217,2218}
	tValentinesDay2019NPC_EffectStep[3] = {2219,2220,2221,2222}
	tValentinesDay2019NPC_EffectStep[4] = {2223,2224,2225,2226}
	
-- 地图对应陷阱
local tValentinesDay2019NPC_InstancetypeToTraptype = {}
	tValentinesDay2019NPC_InstancetypeToTraptype[214] = 2228
	tValentinesDay2019NPC_InstancetypeToTraptype[215] = 2229
	tValentinesDay2019NPC_InstancetypeToTraptype[216] = 2230
	tValentinesDay2019NPC_InstancetypeToTraptype[217] = 2231
	tValentinesDay2019NPC_InstancetypeToTraptype[218] = 2232
	tValentinesDay2019NPC_InstancetypeToTraptype[219] = 2233
	
-- stc掩码
local tValentinesDay2019NPC_Stc = {}
	-- 上线弹网址 
	tValentinesDay2019NPC_Stc[1] = {}
	tValentinesDay2019NPC_Stc[1]["EventType"] = 189
	tValentinesDay2019NPC_Stc[1]["DataType"] = 41
	
	-- 玩家伴侣
	tValentinesDay2019NPC_Stc[2] = {}
	tValentinesDay2019NPC_Stc[2]["EventType"] = 189
	tValentinesDay2019NPC_Stc[2]["DataType"] = 42
	tValentinesDay2019NPC_Stc[2]["Clear"] = 1
	
	-- npc伴侣
	tValentinesDay2019NPC_Stc[3] = {}
	tValentinesDay2019NPC_Stc[3]["EventType"] = 189
	tValentinesDay2019NPC_Stc[3]["DataType"] = 43
	tValentinesDay2019NPC_Stc[3]["Clear"] = 1
	
	-- 每日鲜花甜蜜值
	tValentinesDay2019NPC_Stc[4] = {}
	tValentinesDay2019NPC_Stc[4]["EventType"] = 189
	tValentinesDay2019NPC_Stc[4]["DataType"] = 44
	tValentinesDay2019NPC_Stc[4]["Clear"] = 1
	
	-- 每日甜蜜值
	tValentinesDay2019NPC_Stc[5] = {}
	tValentinesDay2019NPC_Stc[5]["EventType"] = 189
	tValentinesDay2019NPC_Stc[5]["DataType"] = 45
	tValentinesDay2019NPC_Stc[5]["Clear"] = 1
	
	-- 总甜蜜值
	tValentinesDay2019NPC_Stc[6] = {}
	tValentinesDay2019NPC_Stc[6]["EventType"] = 189
	tValentinesDay2019NPC_Stc[6]["DataType"] = 46
	
	-- 每日约会地图
	tValentinesDay2019NPC_Stc[7] = {}
	tValentinesDay2019NPC_Stc[7]["EventType"] = 189
	tValentinesDay2019NPC_Stc[7]["DataType"] = 47
	tValentinesDay2019NPC_Stc[7]["Clear"] = 1
	
	-- 每日首次进入地图
	tValentinesDay2019NPC_Stc[8] = {}
	tValentinesDay2019NPC_Stc[8]["EventType"] = 189
	tValentinesDay2019NPC_Stc[8]["DataType"] = 58
	tValentinesDay2019NPC_Stc[8]["Clear"] = 1
	
	-- 气力值获取
	tValentinesDay2019NPC_Stc[9] = {}
	tValentinesDay2019NPC_Stc[9]["EventType"] = 189
	tValentinesDay2019NPC_Stc[9]["DataType"] = 65
	tValentinesDay2019NPC_Stc[9]["Clear"] = 1

	
-- 参与礼包
local tValentinesDay2019NPC_AwardItem = {}
	tValentinesDay2019NPC_AwardItem["LoveGift"] = {}
	tValentinesDay2019NPC_AwardItem["LoveGift"]["RewardItem"] = {}		
	tValentinesDay2019NPC_AwardItem["LoveGift"]["RewardItem"][1] = {}			
	tValentinesDay2019NPC_AwardItem["LoveGift"]["RewardItem"][1]["Id"] = 3312027	
    tValentinesDay2019NPC_AwardItem["LoveGift"]["RewardItem"][1]["Attr"] = "0 1"
	tValentinesDay2019NPC_AwardItem["LoveGift"]["RewardEffect"] = {}
	tValentinesDay2019NPC_AwardItem["LoveGift"]["RewardEffect"]["SzObj"] = "self" 
	tValentinesDay2019NPC_AwardItem["LoveGift"]["RewardEffect"]["Effect"] = "angelwing"
	tValentinesDay2019NPC_AwardItem["LoveGift"]["LogId"] = 12001275
	tValentinesDay2019NPC_AwardItem["LoveGift"]["LogStep"] = "1[4]"
	
	tValentinesDay2019NPC_AwardItem["Strength"] = {}
	tValentinesDay2019NPC_AwardItem["Strength"]["RewardStrengthValue"] = {}		
	tValentinesDay2019NPC_AwardItem["Strength"]["RewardStrengthValue"]["Value"]	= 100
	tValentinesDay2019NPC_AwardItem["Strength"]["RewardEffect"] = {}
	tValentinesDay2019NPC_AwardItem["Strength"]["RewardEffect"]["SzObj"] = "self" 
	tValentinesDay2019NPC_AwardItem["Strength"]["RewardEffect"]["Effect"] = "angelwing"
	tValentinesDay2019NPC_AwardItem["Strength"]["LogId"] = 12001275
	tValentinesDay2019NPC_AwardItem["Strength"]["LogStep"] = "1[6]"
	
	-- 每日参与奖 1000
	tValentinesDay2019NPC_AwardItem["DailyAward"] = {}
	tValentinesDay2019NPC_AwardItem["DailyAward"][1000] = {}
	tValentinesDay2019NPC_AwardItem["DailyAward"][1000]["RewardItem"] = {}		
	tValentinesDay2019NPC_AwardItem["DailyAward"][1000]["RewardItem"][1] = {}			
	tValentinesDay2019NPC_AwardItem["DailyAward"][1000]["RewardItem"][1]["Id"] = 3311977	
    tValentinesDay2019NPC_AwardItem["DailyAward"][1000]["RewardItem"][1]["Attr"] = "0 1"
	tValentinesDay2019NPC_AwardItem["DailyAward"][1000]["RewardEffect"] = {}
	tValentinesDay2019NPC_AwardItem["DailyAward"][1000]["RewardEffect"]["SzObj"] = "self" 
	tValentinesDay2019NPC_AwardItem["DailyAward"][1000]["RewardEffect"]["Effect"] = "angelwing"
	tValentinesDay2019NPC_AwardItem["DailyAward"][1000]["LogId"] = 12001275
	tValentinesDay2019NPC_AwardItem["DailyAward"][1000]["LogStep"] = "2"
	
	-- 每日参与奖 4000
	tValentinesDay2019NPC_AwardItem["DailyAward"][4000] = {}
	tValentinesDay2019NPC_AwardItem["DailyAward"][4000]["RewardItem"] = {}		
	tValentinesDay2019NPC_AwardItem["DailyAward"][4000]["RewardItem"][1] = {}			
	tValentinesDay2019NPC_AwardItem["DailyAward"][4000]["RewardItem"][1]["Id"] = 3311980	
    tValentinesDay2019NPC_AwardItem["DailyAward"][4000]["RewardItem"][1]["Attr"] = "0 1"
	tValentinesDay2019NPC_AwardItem["DailyAward"][4000]["RewardEffect"] = {}
	tValentinesDay2019NPC_AwardItem["DailyAward"][4000]["RewardEffect"]["SzObj"] = "self" 
	tValentinesDay2019NPC_AwardItem["DailyAward"][4000]["RewardEffect"]["Effect"] = "angelwing"
	tValentinesDay2019NPC_AwardItem["DailyAward"][4000]["LogId"] = 12001275
	tValentinesDay2019NPC_AwardItem["DailyAward"][4000]["LogStep"] = "2"
	
	-- 总奖励 10000
	tValentinesDay2019NPC_AwardItem["TotalAward"] = {}
	tValentinesDay2019NPC_AwardItem["TotalAward"][10000] = {}
	tValentinesDay2019NPC_AwardItem["TotalAward"][10000]["RewardItem"] = {}		
	tValentinesDay2019NPC_AwardItem["TotalAward"][10000]["RewardItem"][1] = {}			
	tValentinesDay2019NPC_AwardItem["TotalAward"][10000]["RewardItem"][1]["Id"] = 3311981	
    tValentinesDay2019NPC_AwardItem["TotalAward"][10000]["RewardItem"][1]["Attr"] = "0 1"
	tValentinesDay2019NPC_AwardItem["TotalAward"][10000]["RewardEffect"] = {}
	tValentinesDay2019NPC_AwardItem["TotalAward"][10000]["RewardEffect"]["SzObj"] = "self" 
	tValentinesDay2019NPC_AwardItem["TotalAward"][10000]["RewardEffect"]["Effect"] = "angelwing"
	tValentinesDay2019NPC_AwardItem["TotalAward"][10000]["LogId"] = 12001275
	tValentinesDay2019NPC_AwardItem["TotalAward"][10000]["LogStep"] = "2"
	
	-- 总奖励 20000
	tValentinesDay2019NPC_AwardItem["TotalAward"][20000] = {}
	tValentinesDay2019NPC_AwardItem["TotalAward"][20000]["RewardItem"] = {}		
	tValentinesDay2019NPC_AwardItem["TotalAward"][20000]["RewardItem"][1] = {}			
	tValentinesDay2019NPC_AwardItem["TotalAward"][20000]["RewardItem"][1]["Id"] = 3311982	
    tValentinesDay2019NPC_AwardItem["TotalAward"][20000]["RewardItem"][1]["Attr"] = "0 1"
	tValentinesDay2019NPC_AwardItem["TotalAward"][20000]["RewardEffect"] = {}
	tValentinesDay2019NPC_AwardItem["TotalAward"][20000]["RewardEffect"]["SzObj"] = "self" 
	tValentinesDay2019NPC_AwardItem["TotalAward"][20000]["RewardEffect"]["Effect"] = "angelwing"
	tValentinesDay2019NPC_AwardItem["TotalAward"][20000]["LogId"] = 12001275
	tValentinesDay2019NPC_AwardItem["TotalAward"][20000]["LogStep"] = "2"
	
	-- 总奖励 30000
	tValentinesDay2019NPC_AwardItem["TotalAward"][30000] = {}
	tValentinesDay2019NPC_AwardItem["TotalAward"][30000]["RewardItem"] = {}		
	tValentinesDay2019NPC_AwardItem["TotalAward"][30000]["RewardItem"][1] = {}			
	tValentinesDay2019NPC_AwardItem["TotalAward"][30000]["RewardItem"][1]["Id"] = 3311983
    tValentinesDay2019NPC_AwardItem["TotalAward"][30000]["RewardItem"][1]["Attr"] = "0 1"
	tValentinesDay2019NPC_AwardItem["TotalAward"][30000]["RewardEffect"] = {}
	tValentinesDay2019NPC_AwardItem["TotalAward"][30000]["RewardEffect"]["SzObj"] = "self" 
	tValentinesDay2019NPC_AwardItem["TotalAward"][30000]["RewardEffect"]["Effect"] = "angelwing"
	tValentinesDay2019NPC_AwardItem["TotalAward"][30000]["LogId"] = 12001275
	tValentinesDay2019NPC_AwardItem["TotalAward"][30000]["LogStep"] = "2"
	
	-- 总奖励 60000
	tValentinesDay2019NPC_AwardItem["TotalAward"][50000] = {}
	tValentinesDay2019NPC_AwardItem["TotalAward"][50000]["RewardItem"] = {}		
	tValentinesDay2019NPC_AwardItem["TotalAward"][50000]["RewardItem"][1] = {}			
	tValentinesDay2019NPC_AwardItem["TotalAward"][50000]["RewardItem"][1]["Id"] = 3311984
    tValentinesDay2019NPC_AwardItem["TotalAward"][50000]["RewardItem"][1]["Attr"] = "0 1"
	tValentinesDay2019NPC_AwardItem["TotalAward"][50000]["RewardEffect"] = {}
	tValentinesDay2019NPC_AwardItem["TotalAward"][50000]["RewardEffect"]["SzObj"] = "self" 
	tValentinesDay2019NPC_AwardItem["TotalAward"][50000]["RewardEffect"]["Effect"] = "angelwing"
	tValentinesDay2019NPC_AwardItem["TotalAward"][50000]["LogId"] = 12001275
	tValentinesDay2019NPC_AwardItem["TotalAward"][50000]["LogStep"] = "2"
	
	-- 总奖励 120000
	tValentinesDay2019NPC_AwardItem["TotalAward"][100000] = {}
	tValentinesDay2019NPC_AwardItem["TotalAward"][100000]["RewardItem"] = {}		
	tValentinesDay2019NPC_AwardItem["TotalAward"][100000]["RewardItem"][1] = {}			
	tValentinesDay2019NPC_AwardItem["TotalAward"][100000]["RewardItem"][1]["Id"] = 3311985
    tValentinesDay2019NPC_AwardItem["TotalAward"][100000]["RewardItem"][1]["Attr"] = "0 1"
	tValentinesDay2019NPC_AwardItem["TotalAward"][100000]["RewardEffect"] = {}
	tValentinesDay2019NPC_AwardItem["TotalAward"][100000]["RewardEffect"]["SzObj"] = "self" 
	tValentinesDay2019NPC_AwardItem["TotalAward"][100000]["RewardEffect"]["Effect"] = "angelwing"
	tValentinesDay2019NPC_AwardItem["TotalAward"][100000]["LogId"] = 12001275
	tValentinesDay2019NPC_AwardItem["TotalAward"][100000]["LogStep"] = "2"
	
	-- 总奖励 240000
	tValentinesDay2019NPC_AwardItem["TotalAward"][200000] = {}
	tValentinesDay2019NPC_AwardItem["TotalAward"][200000]["RewardItem"] = {}		
	tValentinesDay2019NPC_AwardItem["TotalAward"][200000]["RewardItem"][1] = {}			
	tValentinesDay2019NPC_AwardItem["TotalAward"][200000]["RewardItem"][1]["Id"] = 3311986
    tValentinesDay2019NPC_AwardItem["TotalAward"][200000]["RewardItem"][1]["Attr"] = "0 1"
	tValentinesDay2019NPC_AwardItem["TotalAward"][200000]["RewardEffect"] = {}
	tValentinesDay2019NPC_AwardItem["TotalAward"][200000]["RewardEffect"]["SzObj"] = "self" 
	tValentinesDay2019NPC_AwardItem["TotalAward"][200000]["RewardEffect"]["Effect"] = "angelwing"
	tValentinesDay2019NPC_AwardItem["TotalAward"][200000]["LogId"] = 12001275
	tValentinesDay2019NPC_AwardItem["TotalAward"][200000]["LogStep"] = "2"
	
	-- 总奖励 500000
	tValentinesDay2019NPC_AwardItem["TotalAward"][400000] = {}
	tValentinesDay2019NPC_AwardItem["TotalAward"][400000]["RewardItem"] = {}		
	tValentinesDay2019NPC_AwardItem["TotalAward"][400000]["RewardItem"][1] = {}			
	tValentinesDay2019NPC_AwardItem["TotalAward"][400000]["RewardItem"][1]["Id"] = 3311987
    tValentinesDay2019NPC_AwardItem["TotalAward"][400000]["RewardItem"][1]["Attr"] = "0 1"
	tValentinesDay2019NPC_AwardItem["TotalAward"][400000]["RewardEffect"] = {}
	tValentinesDay2019NPC_AwardItem["TotalAward"][400000]["RewardEffect"]["SzObj"] = "self" 
	tValentinesDay2019NPC_AwardItem["TotalAward"][400000]["RewardEffect"]["Effect"] = "angelwing"
	tValentinesDay2019NPC_AwardItem["TotalAward"][400000]["LogId"] = 12001275
	tValentinesDay2019NPC_AwardItem["TotalAward"][400000]["LogStep"] = "2"
	
	-- 总奖励 1000000
	tValentinesDay2019NPC_AwardItem["TotalAward"][600000] = {}
	tValentinesDay2019NPC_AwardItem["TotalAward"][600000]["RewardItem"] = {}		
	tValentinesDay2019NPC_AwardItem["TotalAward"][600000]["RewardItem"][1] = {}			
	tValentinesDay2019NPC_AwardItem["TotalAward"][600000]["RewardItem"][1]["Id"] = 3311988
    tValentinesDay2019NPC_AwardItem["TotalAward"][600000]["RewardItem"][1]["Attr"] = "0 1"
	tValentinesDay2019NPC_AwardItem["TotalAward"][600000]["RewardEffect"] = {}
	tValentinesDay2019NPC_AwardItem["TotalAward"][600000]["RewardEffect"]["SzObj"] = "self" 
	tValentinesDay2019NPC_AwardItem["TotalAward"][600000]["RewardEffect"]["Effect"] = "angelwing"
	tValentinesDay2019NPC_AwardItem["TotalAward"][600000]["LogId"] = 12001275
	tValentinesDay2019NPC_AwardItem["TotalAward"][600000]["LogStep"] = "2"
	
	
	-- 购买礼物
	tValentinesDay2019NPC_AwardItem["BuyGift"] = {}
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311971] = {}
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311971][1] = {}
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311971][1]["RewardItem"] = {}		
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311971][1]["RewardItem"][1] = {}			
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311971][1]["RewardItem"][1]["Id"] = 3311971
    tValentinesDay2019NPC_AwardItem["BuyGift"][3311971][1]["RewardItem"][1]["Attr"] = "0 1"
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311971][1]["RewardEffect"] = {}
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311971][1]["RewardEffect"]["SzObj"] = "self" 
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311971][1]["RewardEffect"]["Effect"] = "angelwing"
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311971][1]["LogId"] = 12001275
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311971][1]["LogStep"] = "2"
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311971][10] = {}
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311971][10]["RewardItem"] = {}		
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311971][10]["RewardItem"][1] = {}			
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311971][10]["RewardItem"][1]["Id"] = 3311971
    tValentinesDay2019NPC_AwardItem["BuyGift"][3311971][10]["RewardItem"][1]["Attr"] = "0 10"
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311971][10]["RewardEffect"] = {}
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311971][10]["RewardEffect"]["SzObj"] = "self" 
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311971][10]["RewardEffect"]["Effect"] = "angelwing"
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311971][10]["LogId"] = 12001275
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311971][10]["LogStep"] = "2"
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311971][100] = {}
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311971][100]["RewardItem"] = {}		
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311971][100]["RewardItem"][1] = {}			
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311971][100]["RewardItem"][1]["Id"] = 3311971
    tValentinesDay2019NPC_AwardItem["BuyGift"][3311971][100]["RewardItem"][1]["Attr"] = "0 100"
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311971][100]["RewardEffect"] = {}
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311971][100]["RewardEffect"]["SzObj"] = "self" 
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311971][100]["RewardEffect"]["Effect"] = "angelwing"
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311971][100]["LogId"] = 12001275
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311971][100]["LogStep"] = "2"
	

	tValentinesDay2019NPC_AwardItem["BuyGift"][3311974] = {}
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311974][1] = {}
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311974][1]["RewardItem"] = {}		
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311974][1]["RewardItem"][1] = {}			
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311974][1]["RewardItem"][1]["Id"] = 3311974
    tValentinesDay2019NPC_AwardItem["BuyGift"][3311974][1]["RewardItem"][1]["Attr"] = "0 1"
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311974][1]["RewardEffect"] = {}
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311974][1]["RewardEffect"]["SzObj"] = "self" 
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311974][1]["RewardEffect"]["Effect"] = "angelwing"
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311974][1]["LogId"] = 12001275
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311974][1]["LogStep"] = "2"
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311974][10] = {}
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311974][10]["RewardItem"] = {}		
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311974][10]["RewardItem"][1] = {}			
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311974][10]["RewardItem"][1]["Id"] = 3311974
    tValentinesDay2019NPC_AwardItem["BuyGift"][3311974][10]["RewardItem"][1]["Attr"] = "0 10"
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311974][10]["RewardEffect"] = {}
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311974][10]["RewardEffect"]["SzObj"] = "self" 
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311974][10]["RewardEffect"]["Effect"] = "angelwing"
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311974][10]["LogId"] = 12001275
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311974][10]["LogStep"] = "2"
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311974][100] = {}
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311974][100]["RewardItem"] = {}		
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311974][100]["RewardItem"][1] = {}			
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311974][100]["RewardItem"][1]["Id"] = 3311974
    tValentinesDay2019NPC_AwardItem["BuyGift"][3311974][100]["RewardItem"][1]["Attr"] = "0 100"
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311974][100]["RewardEffect"] = {}
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311974][100]["RewardEffect"]["SzObj"] = "self" 
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311974][100]["RewardEffect"]["Effect"] = "angelwing"
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311974][100]["LogId"] = 12001275
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311974][100]["LogStep"] = "2"
	

	tValentinesDay2019NPC_AwardItem["BuyGift"][3311975] = {}
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311975][1] = {}
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311975][1]["RewardItem"] = {}		
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311975][1]["RewardItem"][1] = {}			
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311975][1]["RewardItem"][1]["Id"] = 3311975
    tValentinesDay2019NPC_AwardItem["BuyGift"][3311975][1]["RewardItem"][1]["Attr"] = "0 1"
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311975][1]["RewardEffect"] = {}
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311975][1]["RewardEffect"]["SzObj"] = "self" 
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311975][1]["RewardEffect"]["Effect"] = "angelwing"
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311975][1]["LogId"] = 12001275
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311975][1]["LogStep"] = "2"
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311975][10] = {}
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311975][10]["RewardItem"] = {}		
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311975][10]["RewardItem"][1] = {}			
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311975][10]["RewardItem"][1]["Id"] = 3311975
    tValentinesDay2019NPC_AwardItem["BuyGift"][3311975][10]["RewardItem"][1]["Attr"] = "0 10"
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311975][10]["RewardEffect"] = {}
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311975][10]["RewardEffect"]["SzObj"] = "self" 
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311975][10]["RewardEffect"]["Effect"] = "angelwing"
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311975][10]["LogId"] = 12001275
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311975][10]["LogStep"] = "2"
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311975][100] = {}
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311975][100]["RewardItem"] = {}		
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311975][100]["RewardItem"][1] = {}			
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311975][100]["RewardItem"][1]["Id"] = 3311975
    tValentinesDay2019NPC_AwardItem["BuyGift"][3311975][100]["RewardItem"][1]["Attr"] = "0 100"
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311975][100]["RewardEffect"] = {}
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311975][100]["RewardEffect"]["SzObj"] = "self" 
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311975][100]["RewardEffect"]["Effect"] = "angelwing"
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311975][100]["LogId"] = 12001275
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311975][100]["LogStep"] = "2"
	

	tValentinesDay2019NPC_AwardItem["BuyGift"][3311976] = {}
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311976][1] = {}
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311976][1]["RewardItem"] = {}		
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311976][1]["RewardItem"][1] = {}			
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311976][1]["RewardItem"][1]["Id"] = 3311976
    tValentinesDay2019NPC_AwardItem["BuyGift"][3311976][1]["RewardItem"][1]["Attr"] = "0 1"
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311976][1]["RewardEffect"] = {}
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311976][1]["RewardEffect"]["SzObj"] = "self" 
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311976][1]["RewardEffect"]["Effect"] = "angelwing"
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311976][1]["LogId"] = 12001275
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311976][1]["LogStep"] = "2"
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311976][10] = {}
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311976][10]["RewardItem"] = {}		
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311976][10]["RewardItem"][1] = {}			
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311976][10]["RewardItem"][1]["Id"] = 3311976
    tValentinesDay2019NPC_AwardItem["BuyGift"][3311976][10]["RewardItem"][1]["Attr"] = "0 10"
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311976][10]["RewardEffect"] = {}
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311976][10]["RewardEffect"]["SzObj"] = "self" 
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311976][10]["RewardEffect"]["Effect"] = "angelwing"
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311976][10]["LogId"] = 12001275
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311976][10]["LogStep"] = "2"
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311976][100] = {}
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311976][100]["RewardItem"] = {}		
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311976][100]["RewardItem"][1] = {}			
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311976][100]["RewardItem"][1]["Id"] = 3311976
    tValentinesDay2019NPC_AwardItem["BuyGift"][3311976][100]["RewardItem"][1]["Attr"] = "0 100"
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311976][100]["RewardEffect"] = {}
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311976][100]["RewardEffect"]["SzObj"] = "self" 
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311976][100]["RewardEffect"]["Effect"] = "angelwing"
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311976][100]["LogId"] = 12001275
	tValentinesDay2019NPC_AwardItem["BuyGift"][3311976][100]["LogStep"] = "2"
	

	tValentinesDay2019NPC_AwardItem["BuyGift"][3310215] = {}
	tValentinesDay2019NPC_AwardItem["BuyGift"][3310215][1] = {}
	tValentinesDay2019NPC_AwardItem["BuyGift"][3310215][1]["RewardItem"] = {}		
	tValentinesDay2019NPC_AwardItem["BuyGift"][3310215][1]["RewardItem"][1] = {}			
	tValentinesDay2019NPC_AwardItem["BuyGift"][3310215][1]["RewardItem"][1]["Id"] = 3310215
    tValentinesDay2019NPC_AwardItem["BuyGift"][3310215][1]["RewardItem"][1]["Attr"] = "0 1"
	tValentinesDay2019NPC_AwardItem["BuyGift"][3310215][1]["RewardEffect"] = {}
	tValentinesDay2019NPC_AwardItem["BuyGift"][3310215][1]["RewardEffect"]["SzObj"] = "self" 
	tValentinesDay2019NPC_AwardItem["BuyGift"][3310215][1]["RewardEffect"]["Effect"] = "angelwing"
	tValentinesDay2019NPC_AwardItem["BuyGift"][3310215][1]["LogId"] = 12001275
	tValentinesDay2019NPC_AwardItem["BuyGift"][3310215][1]["LogStep"] = "2"
	tValentinesDay2019NPC_AwardItem["BuyGift"][3310215][10] = {}
	tValentinesDay2019NPC_AwardItem["BuyGift"][3310215][10]["RewardItem"] = {}		
	tValentinesDay2019NPC_AwardItem["BuyGift"][3310215][10]["RewardItem"][1] = {}			
	tValentinesDay2019NPC_AwardItem["BuyGift"][3310215][10]["RewardItem"][1]["Id"] = 3310215
    tValentinesDay2019NPC_AwardItem["BuyGift"][3310215][10]["RewardItem"][1]["Attr"] = "0 10"
	tValentinesDay2019NPC_AwardItem["BuyGift"][3310215][10]["RewardEffect"] = {}
	tValentinesDay2019NPC_AwardItem["BuyGift"][3310215][10]["RewardEffect"]["SzObj"] = "self" 
	tValentinesDay2019NPC_AwardItem["BuyGift"][3310215][10]["RewardEffect"]["Effect"] = "angelwing"
	tValentinesDay2019NPC_AwardItem["BuyGift"][3310215][10]["LogId"] = 12001275
	tValentinesDay2019NPC_AwardItem["BuyGift"][3310215][10]["LogStep"] = "2"
	tValentinesDay2019NPC_AwardItem["BuyGift"][3310215][100] = {}
	tValentinesDay2019NPC_AwardItem["BuyGift"][3310215][100]["RewardItem"] = {}		
	tValentinesDay2019NPC_AwardItem["BuyGift"][3310215][100]["RewardItem"][1] = {}			
	tValentinesDay2019NPC_AwardItem["BuyGift"][3310215][100]["RewardItem"][1]["Id"] = 3310215
    tValentinesDay2019NPC_AwardItem["BuyGift"][3310215][100]["RewardItem"][1]["Attr"] = "0 100"
	tValentinesDay2019NPC_AwardItem["BuyGift"][3310215][100]["RewardEffect"] = {}
	tValentinesDay2019NPC_AwardItem["BuyGift"][3310215][100]["RewardEffect"]["SzObj"] = "self" 
	tValentinesDay2019NPC_AwardItem["BuyGift"][3310215][100]["RewardEffect"]["Effect"] = "angelwing"
	tValentinesDay2019NPC_AwardItem["BuyGift"][3310215][100]["LogId"] = 12001275
	tValentinesDay2019NPC_AwardItem["BuyGift"][3310215][100]["LogStep"] = "2"
	

	tValentinesDay2019NPC_AwardItem["BuyGift"][3310216] = {}
	tValentinesDay2019NPC_AwardItem["BuyGift"][3310216][1] = {}
	tValentinesDay2019NPC_AwardItem["BuyGift"][3310216][1]["RewardItem"] = {}		
	tValentinesDay2019NPC_AwardItem["BuyGift"][3310216][1]["RewardItem"][1] = {}			
	tValentinesDay2019NPC_AwardItem["BuyGift"][3310216][1]["RewardItem"][1]["Id"] = 3310216
    tValentinesDay2019NPC_AwardItem["BuyGift"][3310216][1]["RewardItem"][1]["Attr"] = "0 1"
	tValentinesDay2019NPC_AwardItem["BuyGift"][3310216][1]["RewardEffect"] = {}
	tValentinesDay2019NPC_AwardItem["BuyGift"][3310216][1]["RewardEffect"]["SzObj"] = "self" 
	tValentinesDay2019NPC_AwardItem["BuyGift"][3310216][1]["RewardEffect"]["Effect"] = "angelwing"
	tValentinesDay2019NPC_AwardItem["BuyGift"][3310216][1]["LogId"] = 12001275
	tValentinesDay2019NPC_AwardItem["BuyGift"][3310216][1]["LogStep"] = "2"
	tValentinesDay2019NPC_AwardItem["BuyGift"][3310216][10] = {}
	tValentinesDay2019NPC_AwardItem["BuyGift"][3310216][10]["RewardItem"] = {}		
	tValentinesDay2019NPC_AwardItem["BuyGift"][3310216][10]["RewardItem"][1] = {}			
	tValentinesDay2019NPC_AwardItem["BuyGift"][3310216][10]["RewardItem"][1]["Id"] = 3310216
    tValentinesDay2019NPC_AwardItem["BuyGift"][3310216][10]["RewardItem"][1]["Attr"] = "0 10"
	tValentinesDay2019NPC_AwardItem["BuyGift"][3310216][10]["RewardEffect"] = {}
	tValentinesDay2019NPC_AwardItem["BuyGift"][3310216][10]["RewardEffect"]["SzObj"] = "self" 
	tValentinesDay2019NPC_AwardItem["BuyGift"][3310216][10]["RewardEffect"]["Effect"] = "angelwing"
	tValentinesDay2019NPC_AwardItem["BuyGift"][3310216][10]["LogId"] = 12001275
	tValentinesDay2019NPC_AwardItem["BuyGift"][3310216][10]["LogStep"] = "2"
	tValentinesDay2019NPC_AwardItem["BuyGift"][3310216][100] = {}
	tValentinesDay2019NPC_AwardItem["BuyGift"][3310216][100]["RewardItem"] = {}		
	tValentinesDay2019NPC_AwardItem["BuyGift"][3310216][100]["RewardItem"][1] = {}			
	tValentinesDay2019NPC_AwardItem["BuyGift"][3310216][100]["RewardItem"][1]["Id"] = 3310216
    tValentinesDay2019NPC_AwardItem["BuyGift"][3310216][100]["RewardItem"][1]["Attr"] = "0 100"
	tValentinesDay2019NPC_AwardItem["BuyGift"][3310216][100]["RewardEffect"] = {}
	tValentinesDay2019NPC_AwardItem["BuyGift"][3310216][100]["RewardEffect"]["SzObj"] = "self" 
	tValentinesDay2019NPC_AwardItem["BuyGift"][3310216][100]["RewardEffect"]["Effect"] = "angelwing"
	tValentinesDay2019NPC_AwardItem["BuyGift"][3310216][100]["LogId"] = 12001275
	tValentinesDay2019NPC_AwardItem["BuyGift"][3310216][100]["LogStep"] = "2"
	
local tValentinesDay2019NPC_Prize = {}
	tValentinesDay2019NPC_Prize[3311971] = 99
	tValentinesDay2019NPC_Prize[3311974] = 12
	tValentinesDay2019NPC_Prize[3311975] = 54
	tValentinesDay2019NPC_Prize[3311976] = 99
	tValentinesDay2019NPC_Prize[3310215] = 45
	tValentinesDay2019NPC_Prize[3310216] = 449
	
local tValentinesDay2019NPC_EmoneyLog = {}
	tValentinesDay2019NPC_EmoneyLog[3311971] = "250	4042"
	tValentinesDay2019NPC_EmoneyLog[3311974] = "250	4043"
	tValentinesDay2019NPC_EmoneyLog[3311975] = "250	4044"
	tValentinesDay2019NPC_EmoneyLog[3311976] = "250	4045"
	tValentinesDay2019NPC_EmoneyLog[3310215] = "250	4046"
	tValentinesDay2019NPC_EmoneyLog[3310216] = "250	4047"
	
-- 约会npc
local tValentinesDay2019NPC_DateNpc = {}
	-- 古月哥欠
	tValentinesDay2019NPC_DateNpc[23683] = {}
	tValentinesDay2019NPC_DateNpc[23683]["Check"] = 1
	tValentinesDay2019NPC_DateNpc[23683]["Sex"] = 1
	tValentinesDay2019NPC_DateNpc[23683]["Lookface"] = 64537
	tValentinesDay2019NPC_DateNpc[23683]["Task0"] = 94487941
	tValentinesDay2019NPC_DateNpc[23683]["FindOtherNpc"] = {23686,23687,23688}

	tValentinesDay2019NPC_DateNpc[23683]["Pos"] = {}
	tValentinesDay2019NPC_DateNpc[23683]["Pos"][10201] = {235,97}
	tValentinesDay2019NPC_DateNpc[23683]["Pos"][1738] =  {90,91}
	tValentinesDay2019NPC_DateNpc[23683]["Pos"][4020] =  {81,69}
	tValentinesDay2019NPC_DateNpc[23683]["Pos"][10281] = {25,33}
	tValentinesDay2019NPC_DateNpc[23683]["Pos"][3983] =  {60,57}
	tValentinesDay2019NPC_DateNpc[23683]["Pos"][3851] = {29,32}

	-- 吴雁祖
	tValentinesDay2019NPC_DateNpc[23684] = {}
	tValentinesDay2019NPC_DateNpc[23684]["Check"] = 1
	tValentinesDay2019NPC_DateNpc[23684]["Sex"] = 1
	tValentinesDay2019NPC_DateNpc[23684]["Lookface"] = 64547
	tValentinesDay2019NPC_DateNpc[23684]["Task0"] = 94487942
	tValentinesDay2019NPC_DateNpc[23684]["FindOtherNpc"] = {23686,23687,23688}

	tValentinesDay2019NPC_DateNpc[23684]["Pos"] = {}
	tValentinesDay2019NPC_DateNpc[23684]["Pos"][10201] = {235,97}
	tValentinesDay2019NPC_DateNpc[23684]["Pos"][1738] =  {90,91}
	tValentinesDay2019NPC_DateNpc[23684]["Pos"][4020] =  {81,69}
	tValentinesDay2019NPC_DateNpc[23684]["Pos"][10281] = {25,33}
	tValentinesDay2019NPC_DateNpc[23684]["Pos"][3983] =  {60,57}
	tValentinesDay2019NPC_DateNpc[23684]["Pos"][3851] = {19,23}

	-- 彭宇晏
	tValentinesDay2019NPC_DateNpc[23685] = {}
	tValentinesDay2019NPC_DateNpc[23685]["Check"] = 1
	tValentinesDay2019NPC_DateNpc[23685]["Sex"] = 1
	tValentinesDay2019NPC_DateNpc[23685]["Lookface"] = 64557
	tValentinesDay2019NPC_DateNpc[23685]["Task0"] = 94487943
	tValentinesDay2019NPC_DateNpc[23685]["FindOtherNpc"] = {23686,23687,23688}

	tValentinesDay2019NPC_DateNpc[23685]["Pos"] = {}
	tValentinesDay2019NPC_DateNpc[23685]["Pos"][10201] = {235,97}
	tValentinesDay2019NPC_DateNpc[23685]["Pos"][1738] =  {90,91}
	tValentinesDay2019NPC_DateNpc[23685]["Pos"][4020] =  {81,69}
	tValentinesDay2019NPC_DateNpc[23685]["Pos"][10281] = {25,33}
	tValentinesDay2019NPC_DateNpc[23685]["Pos"][3983] =  {60,57}
	tValentinesDay2019NPC_DateNpc[23685]["Pos"][3851] = {29,32}

	-- 扬超越
	tValentinesDay2019NPC_DateNpc[23686] = {}
	tValentinesDay2019NPC_DateNpc[23686]["Check"] = 1
	tValentinesDay2019NPC_DateNpc[23686]["Sex"] = 2
	tValentinesDay2019NPC_DateNpc[23686]["Lookface"] = 64567
	tValentinesDay2019NPC_DateNpc[23686]["Task0"] = 94487944
	tValentinesDay2019NPC_DateNpc[23686]["FindOtherNpc"] = {23683,23684,23685}

	tValentinesDay2019NPC_DateNpc[23686]["Pos"] = {}
	tValentinesDay2019NPC_DateNpc[23686]["Pos"][10201] = {235,97}
	tValentinesDay2019NPC_DateNpc[23686]["Pos"][1738] =  {90,91}
	tValentinesDay2019NPC_DateNpc[23686]["Pos"][4020] =  {81,69}
	tValentinesDay2019NPC_DateNpc[23686]["Pos"][10281] = {25,33}
	tValentinesDay2019NPC_DateNpc[23686]["Pos"][3983] =  {60,57}
	tValentinesDay2019NPC_DateNpc[23686]["Pos"][3851] = {29,32}

	-- 柳妍
	tValentinesDay2019NPC_DateNpc[23687] = {}
	tValentinesDay2019NPC_DateNpc[23687]["Check"] = 1
	tValentinesDay2019NPC_DateNpc[23687]["Sex"] = 2
	tValentinesDay2019NPC_DateNpc[23687]["Lookface"] = 64577
	tValentinesDay2019NPC_DateNpc[23687]["Task0"] = 94487945
	tValentinesDay2019NPC_DateNpc[23687]["FindOtherNpc"] = {23683,23684,23685}

	tValentinesDay2019NPC_DateNpc[23687]["Pos"] = {}
	tValentinesDay2019NPC_DateNpc[23687]["Pos"][10201] = {235,97}
	tValentinesDay2019NPC_DateNpc[23687]["Pos"][1738] =  {90,91}
	tValentinesDay2019NPC_DateNpc[23687]["Pos"][4020] =  {81,69}
	tValentinesDay2019NPC_DateNpc[23687]["Pos"][10281] = {25,33}
	tValentinesDay2019NPC_DateNpc[23687]["Pos"][3983] =  {60,57}
	tValentinesDay2019NPC_DateNpc[23687]["Pos"][3851] = {29,32}

	-- 刘亦非
	tValentinesDay2019NPC_DateNpc[23688] = {}
	tValentinesDay2019NPC_DateNpc[23688]["Check"] = 1
	tValentinesDay2019NPC_DateNpc[23688]["Sex"] = 2
	tValentinesDay2019NPC_DateNpc[23688]["Lookface"] = 64587
	tValentinesDay2019NPC_DateNpc[23688]["Task0"] = 94487946
	tValentinesDay2019NPC_DateNpc[23688]["FindOtherNpc"] = {23683,23684,23685}

	tValentinesDay2019NPC_DateNpc[23688]["Pos"] = {}
	tValentinesDay2019NPC_DateNpc[23688]["Pos"][10201] = {235,97}
	tValentinesDay2019NPC_DateNpc[23688]["Pos"][1738] =  {90,91}
	tValentinesDay2019NPC_DateNpc[23688]["Pos"][4020] =  {81,69}
	tValentinesDay2019NPC_DateNpc[23688]["Pos"][10281] = {25,33}
	tValentinesDay2019NPC_DateNpc[23688]["Pos"][3983] =  {60,57}
	tValentinesDay2019NPC_DateNpc[23688]["Pos"][3851] = {29,32}
	
	-- 花仙子
	tValentinesDay2019NPC_DateNpc[23689] = {}
	tValentinesDay2019NPC_DateNpc[23689]["Lookface"] = 64597
	tValentinesDay2019NPC_DateNpc[23689]["Task0"] = 94488006
	tValentinesDay2019NPC_DateNpc[23689]["Traptype"] = 2236
	tValentinesDay2019NPC_DateNpc[23689]["Pos"] = {}
	tValentinesDay2019NPC_DateNpc[23689]["Pos"][10201] = {240,113}
	tValentinesDay2019NPC_DateNpc[23689]["Pos"][1738] =  {92,101}
	tValentinesDay2019NPC_DateNpc[23689]["Pos"][4020] =  {78,75}
	tValentinesDay2019NPC_DateNpc[23689]["Pos"][10281] = {12,31}
	tValentinesDay2019NPC_DateNpc[23689]["Pos"][3983] =  {54,61}
	tValentinesDay2019NPC_DateNpc[23689]["Pos"][3851] = {21,32}
	
	-- 真爱助理
	tValentinesDay2019NPC_DateNpc[23651] = {}
	tValentinesDay2019NPC_DateNpc[23651]["Lookface"] = 62637
	tValentinesDay2019NPC_DateNpc[23651]["Task0"] = 94488007
	tValentinesDay2019NPC_DateNpc[23651]["Traptype"] = 2274
	tValentinesDay2019NPC_DateNpc[23651]["Pos"] = {}
	tValentinesDay2019NPC_DateNpc[23651]["Pos"][10201] = {251,103}
	tValentinesDay2019NPC_DateNpc[23651]["Pos"][1738] =  {100,91}
	tValentinesDay2019NPC_DateNpc[23651]["Pos"][4020] =  {86,66}
	tValentinesDay2019NPC_DateNpc[23651]["Pos"][10281] = {13,20}
	tValentinesDay2019NPC_DateNpc[23651]["Pos"][3983] =  {72,67}
	tValentinesDay2019NPC_DateNpc[23651]["Pos"][3851] = {28,27}


	

	
-- 提交鲜花对应甜蜜值 
local tValentinesDay2019NPC_Submit = {}
	-- 1朵郁金香	
	tValentinesDay2019NPC_Submit[754001] = 10
	-- 3朵郁金香                           
	tValentinesDay2019NPC_Submit[754003] = 30
	-- 9朵郁金香                           
	tValentinesDay2019NPC_Submit[754009] = 90
	-- 99朵郁金香                          
	tValentinesDay2019NPC_Submit[754099] = 1000
	-- 999朵郁金香                          
	tValentinesDay2019NPC_Submit[754999] = 10000
	-- 1朵兰花	                           
	tValentinesDay2019NPC_Submit[753001] = 5
	-- 3朵兰花	                           
	tValentinesDay2019NPC_Submit[753003] = 15
	-- 9朵兰花	                           
	tValentinesDay2019NPC_Submit[753009] = 45
	-- 99朵兰花                            
	tValentinesDay2019NPC_Submit[753099] = 500
	-- 999朵兰花                           
	tValentinesDay2019NPC_Submit[753999] = 5000
	-- 1朵百合花                           
	tValentinesDay2019NPC_Submit[752001] = 5
	-- 3朵百合花                           
	tValentinesDay2019NPC_Submit[752003] = 15
	-- 9朵百合花                           
	tValentinesDay2019NPC_Submit[752009] = 45
	-- 99朵百合花                          
	tValentinesDay2019NPC_Submit[752099] = 500
	-- 999朵百合花                         
	tValentinesDay2019NPC_Submit[752999] = 5000
	-- 1朵红玫瑰                           
	tValentinesDay2019NPC_Submit[751001] = 5
	-- 3朵红玫瑰                           
	tValentinesDay2019NPC_Submit[751003] = 15
	-- 9朵红玫瑰                           
	tValentinesDay2019NPC_Submit[751009] = 45
	-- 99朵红玫瑰                          
	tValentinesDay2019NPC_Submit[751099] = 500
	-- 999朵红玫瑰                         
	tValentinesDay2019NPC_Submit[751999] = 5000
	

-- 提交兑换券和新增道具对应甜蜜值
local tValentinesDay2019NPC_SubmitNoLimit = {}
	-- 郁金香兑换券	
	tValentinesDay2019NPC_SubmitNoLimit[3304137] = 10
	-- 兰花兑换券	                           
	tValentinesDay2019NPC_SubmitNoLimit[3304135] = 5
	-- 百合兑换券                           
	tValentinesDay2019NPC_SubmitNoLimit[3304136] = 5
	-- 玫瑰兑换券                           
	tValentinesDay2019NPC_SubmitNoLimit[3304134] = 5
	-- 浪漫烛光                           
	tValentinesDay2019NPC_SubmitNoLimit[3311967] = 100
	-- 璀璨花火                           
	tValentinesDay2019NPC_SubmitNoLimit[3311969] = 500
	-- 贵族红酒                           
	tValentinesDay2019NPC_SubmitNoLimit[3311968] = 1000
	
local tValentinesDay2019NPC_Gift = {3311967,3311968,3311969}
local tValentinesDay2019NPC_FlowerTicket = {3304134,3304135,3304136,3304137}


-- 进入的约会地图开放日期
local tValentinesDay2019NPC_DatePlaceEnter = {}
	tValentinesDay2019NPC_DatePlaceEnter["AllOpenDay"] = 3
	tValentinesDay2019NPC_DatePlaceEnter["Data"] = {}
	tValentinesDay2019NPC_DatePlaceEnter["Data"][2228] = {}
	tValentinesDay2019NPC_DatePlaceEnter["Data"][2228]["DateMap"] = 10414
	tValentinesDay2019NPC_DatePlaceEnter["Data"][2228]["DateInstance"] = 214
	tValentinesDay2019NPC_DatePlaceEnter["Data"][2228]["OpenDay"] = 0
	tValentinesDay2019NPC_DatePlaceEnter["Data"][2229] = {}
	tValentinesDay2019NPC_DatePlaceEnter["Data"][2229]["DateMap"] = 10415
	tValentinesDay2019NPC_DatePlaceEnter["Data"][2229]["DateInstance"] = 215
	tValentinesDay2019NPC_DatePlaceEnter["Data"][2229]["OpenDay"] = 0
	tValentinesDay2019NPC_DatePlaceEnter["Data"][2230] = {}
	tValentinesDay2019NPC_DatePlaceEnter["Data"][2230]["DateMap"] = 10416
	tValentinesDay2019NPC_DatePlaceEnter["Data"][2230]["DateInstance"] = 216
	tValentinesDay2019NPC_DatePlaceEnter["Data"][2230]["OpenDay"] = 1
	tValentinesDay2019NPC_DatePlaceEnter["Data"][2231] = {}
	tValentinesDay2019NPC_DatePlaceEnter["Data"][2231]["DateMap"] = 10417
	tValentinesDay2019NPC_DatePlaceEnter["Data"][2231]["DateInstance"] = 217
	tValentinesDay2019NPC_DatePlaceEnter["Data"][2231]["OpenDay"] = 1
	tValentinesDay2019NPC_DatePlaceEnter["Data"][2232] = {}
	tValentinesDay2019NPC_DatePlaceEnter["Data"][2232]["DateMap"] = 10418
	tValentinesDay2019NPC_DatePlaceEnter["Data"][2232]["DateInstance"] = 218
	tValentinesDay2019NPC_DatePlaceEnter["Data"][2232]["OpenDay"] = 2
	tValentinesDay2019NPC_DatePlaceEnter["Data"][2233] = {}
	tValentinesDay2019NPC_DatePlaceEnter["Data"][2233]["DateMap"] = 10419
	tValentinesDay2019NPC_DatePlaceEnter["Data"][2233]["DateInstance"] = 219
	tValentinesDay2019NPC_DatePlaceEnter["Data"][2233]["OpenDay"] = 2
	

-- 约会临时数据
local tValentinesDay2019NPC_DateInfo = {}
	tValentinesDay2019NPC_DateInfo["Default"] = {}
	tValentinesDay2019NPC_DateInfo["Default"]["Left"] = {}
	tValentinesDay2019NPC_DateInfo["Default"]["Left"]["Limit"] = 0
	tValentinesDay2019NPC_DateInfo["Default"]["Left"]["NoLimit"] = 0
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"] = {}
	-- 流月城 用mapdoc做索引
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][10201] = {}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][10201][2211] = {234,108}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][10201][2212] = {258,109}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][10201][2213] = {244,96}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][10201][2214] = {246,119}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][10201][2215] = {232,113}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][10201][2216] = {229,97}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][10201][2217] = {235,91}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][10201][2218] = {249,94}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][10201][2219] = {240,123}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][10201][2220] = {255,121}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][10201][2221] = {260,115}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][10201][2222] = {261,104}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][10201][2223] = {232,124}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][10201][2224] = {253,131}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][10201][2225] = {269,114}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][10201][2226] = {259,95}
	-- 天空之城 用mapdoc做索引
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][1738] = {}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][1738][2211] = {97,107}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][1738][2212] = {84,93}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][1738][2213] = {91,85}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][1738][2214] = {106,97}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][1738][2215] = {84,99}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][1738][2216] = {97,84}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][1738][2217] = {97,113}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][1738][2218] = {111,98}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][1738][2219] = {83,111}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][1738][2220] = {95,120}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][1738][2221] = {115,99}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][1738][2222] = {105,85}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][1738][2223] = {114,109}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][1738][2224] = {105,115}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][1738][2225] = {76,92}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][1738][2226] = {91,77}
	-- 浪漫沙海 用mapdoc做索引
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][4020] = {}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][4020][2211] = {75,68}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][4020][2212] = {78,63}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][4020][2213] = {93,74}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][4020][2214] = {86,81}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][4020][2215] = {71,71}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][4020][2216] = {82,59}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][4020][2217] = {83,85}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][4020][2218] = {97,71}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][4020][2219] = {76,80}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][4020][2220] = {96,66}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][4020][2221] = {94,87}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][4020][2222] = {99,81}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][4020][2223] = {65,83}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][4020][2224] = {94,57}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][4020][2225] = {100,67}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][4020][2226] = {75,87}
	-- 萦梦溪 用mapdoc做索引
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][10281] = {}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][10281][2211] = {20,38}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][10281][2212] = {34,32}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][10281][2213] = {35,22}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][10281][2214] = {16,17}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][10281][2215] = {11,23}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][10281][2216] = {24,21}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][10281][2217] = {27,14}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][10281][2218] = {26,39}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][10281][2219] = {30,40}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][10281][2220] = {22,23}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][10281][2221] = {37,39}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][10281][2222] = {29,24}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][10281][2223] = {17,14}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][10281][2224] = {37,28}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][10281][2225] = {28,49}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][10281][2226] = {34,20}
	-- 忘尘谷 用mapdoc做索引
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][3983] = {}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][3983][2211] = {67,71}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][3983][2212] = {56,70}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][3983][2213] = {67,80}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][3983][2214] = {59,80}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][3983][2215] = {54,57}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][3983][2216] = {66,56}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][3983][2217] = {77,86}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][3983][2218] = {52,80}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][3983][2219] = {43,72}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][3983][2220] = {44,63}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][3983][2221] = {79,82}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][3983][2222] = {83,74}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][3983][2223] = {82,63}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][3983][2224] = {74,93}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][3983][2225] = {38,72}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][3983][2226] = {29,62}
	-- 凤火岛 用mapdoc做索引
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][3851] = {}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][3851][2211] = {24,22}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][3851][2212] = {38,23}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][3851][2213] = {21,36}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][3851][2214] = {12,26}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][3851][2215] = {33,35}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][3851][2216] = {28,20}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][3851][2217] = {27,39}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][3851][2218] = {37,29}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][3851][2219] = {35,47}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][3851][2220] = {42,42}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][3851][2221] = {45,36}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][3851][2222] = {40,24}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][3851][2223] = {35,54}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][3851][2224] = {42,49}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][3851][2225] = {47,29}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][3851][2226] = {32,35}


-- 临时队伍数据
local tValentinesDay2019NPC_Team = {}



-- 男神排行榜
	tRankingFunc_Info[236821] = {}
	tRankingFunc_Info[236821]["ActiveTime"] = tValentinesDay2019NPC_Cont["ActivityTime"]
	tRankingFunc_Info[236821]["DayTime"] = {}
	tRankingFunc_Info[236821]["DayTime"][1] = "01:00 23:59"
	tRankingFunc_Info[236821]["ResetTime"] = {}
	tRankingFunc_Info[236821]["ResetTime"][1] = "00:00 00:05"
	tRankingFunc_Info[236821]["Global"] = {53199,53200,53201,53202,53203}
	tRankingFunc_Info[236821]["RankNum"] = 15
	tRankingFunc_Info[236821]["RankMode"] = 3
	tRankingFunc_Info[236821]["Reset"] = 1
	
	tRankingFunc_Info[236821]["Mail"] = {}
	tRankingFunc_Info[236821]["Mail"]["ActiveTime"] = tValentinesDay2019NPC_Cont["RankTime"]
	tRankingFunc_Info[236821]["Mail"]["RewardTime"] = {}
	tRankingFunc_Info[236821]["Mail"]["RewardTime"][1] = "00:00 00:05"
	tRankingFunc_Info[236821]["Mail"]["HaveFunc"] = 1
	tRankingFunc_Info[236821]["Mail"]["Reward"] = {}
	tRankingFunc_Info[236821]["Mail"]["Reward"][1] = {}
	tRankingFunc_Info[236821]["Mail"]["Reward"][1]["RewardRank"] = 1
	tRankingFunc_Info[236821]["Mail"]["Reward"][1]["ActionId"] = 94487959
	tRankingFunc_Info[236821]["Mail"]["Reward"][1]["ExistDay"] = 7
	tRankingFunc_Info[236821]["Mail"]["Reward"][1]["Title"] = tValentinesDay2019NPC_Text["Mail"][236821]["Title"]
	tRankingFunc_Info[236821]["Mail"]["Reward"][1]["Sender"] = tValentinesDay2019NPC_Text["Mail"][236821]["Sender"]
	tRankingFunc_Info[236821]["Mail"]["Reward"][1]["Content"] = tValentinesDay2019NPC_Text["Mail"][236821]["Content"][1]
	tRankingFunc_Info[236821]["Mail"]["Reward"][2] = {}
	tRankingFunc_Info[236821]["Mail"]["Reward"][2]["RewardRank"] = 2
	tRankingFunc_Info[236821]["Mail"]["Reward"][2]["ActionId"] = 94487960
	tRankingFunc_Info[236821]["Mail"]["Reward"][2]["ExistDay"] = 7
	tRankingFunc_Info[236821]["Mail"]["Reward"][2]["Title"] = tValentinesDay2019NPC_Text["Mail"][236821]["Title"]
	tRankingFunc_Info[236821]["Mail"]["Reward"][2]["Sender"] = tValentinesDay2019NPC_Text["Mail"][236821]["Sender"]
	tRankingFunc_Info[236821]["Mail"]["Reward"][2]["Content"] = tValentinesDay2019NPC_Text["Mail"][236821]["Content"][2]
	tRankingFunc_Info[236821]["Mail"]["Reward"][3] = {}
	tRankingFunc_Info[236821]["Mail"]["Reward"][3]["RewardRank"] = 3
	tRankingFunc_Info[236821]["Mail"]["Reward"][3]["ActionId"] = 94487961
	tRankingFunc_Info[236821]["Mail"]["Reward"][3]["ExistDay"] = 7
	tRankingFunc_Info[236821]["Mail"]["Reward"][3]["Title"] = tValentinesDay2019NPC_Text["Mail"][236821]["Title"]
	tRankingFunc_Info[236821]["Mail"]["Reward"][3]["Sender"] = tValentinesDay2019NPC_Text["Mail"][236821]["Sender"]
	tRankingFunc_Info[236821]["Mail"]["Reward"][3]["Content"] = tValentinesDay2019NPC_Text["Mail"][236821]["Content"][3]
	tRankingFunc_Info[236821]["Mail"]["Reward"][4] = {}
	tRankingFunc_Info[236821]["Mail"]["Reward"][4]["RewardRank"] = 4
	tRankingFunc_Info[236821]["Mail"]["Reward"][4]["ActionId"] = 94487962
	tRankingFunc_Info[236821]["Mail"]["Reward"][4]["ExistDay"] = 7
	tRankingFunc_Info[236821]["Mail"]["Reward"][4]["Title"] = tValentinesDay2019NPC_Text["Mail"][236821]["Title"]
	tRankingFunc_Info[236821]["Mail"]["Reward"][4]["Sender"] = tValentinesDay2019NPC_Text["Mail"][236821]["Sender"]
	tRankingFunc_Info[236821]["Mail"]["Reward"][4]["Content"] = tValentinesDay2019NPC_Text["Mail"][236821]["Content"][4]
	tRankingFunc_Info[236821]["Mail"]["Reward"][5] = {}
	tRankingFunc_Info[236821]["Mail"]["Reward"][5]["RewardRank"] = 5
	tRankingFunc_Info[236821]["Mail"]["Reward"][5]["ActionId"] = 94487963
	tRankingFunc_Info[236821]["Mail"]["Reward"][5]["ExistDay"] = 7
	tRankingFunc_Info[236821]["Mail"]["Reward"][5]["Title"] = tValentinesDay2019NPC_Text["Mail"][236821]["Title"]
	tRankingFunc_Info[236821]["Mail"]["Reward"][5]["Sender"] = tValentinesDay2019NPC_Text["Mail"][236821]["Sender"]
	tRankingFunc_Info[236821]["Mail"]["Reward"][5]["Content"] = tValentinesDay2019NPC_Text["Mail"][236821]["Content"][5]
	tRankingFunc_Info[236821]["Mail"]["Reward"][6] = {}
	tRankingFunc_Info[236821]["Mail"]["Reward"][6]["RewardRank"] = 6
	tRankingFunc_Info[236821]["Mail"]["Reward"][6]["ActionId"] = 94487964
	tRankingFunc_Info[236821]["Mail"]["Reward"][6]["ExistDay"] = 7
	tRankingFunc_Info[236821]["Mail"]["Reward"][6]["Title"] = tValentinesDay2019NPC_Text["Mail"][236821]["Title"]
	tRankingFunc_Info[236821]["Mail"]["Reward"][6]["Sender"] = tValentinesDay2019NPC_Text["Mail"][236821]["Sender"]
	tRankingFunc_Info[236821]["Mail"]["Reward"][6]["Content"] = tValentinesDay2019NPC_Text["Mail"][236821]["Content"][6]
	tRankingFunc_Info[236821]["Mail"]["Reward"][7] = {}
	tRankingFunc_Info[236821]["Mail"]["Reward"][7]["RewardRank"] = 7
	tRankingFunc_Info[236821]["Mail"]["Reward"][7]["ActionId"] = 94487965
	tRankingFunc_Info[236821]["Mail"]["Reward"][7]["ExistDay"] = 7
	tRankingFunc_Info[236821]["Mail"]["Reward"][7]["Title"] = tValentinesDay2019NPC_Text["Mail"][236821]["Title"]
	tRankingFunc_Info[236821]["Mail"]["Reward"][7]["Sender"] = tValentinesDay2019NPC_Text["Mail"][236821]["Sender"]
	tRankingFunc_Info[236821]["Mail"]["Reward"][7]["Content"] = tValentinesDay2019NPC_Text["Mail"][236821]["Content"][7]
	tRankingFunc_Info[236821]["Mail"]["Reward"][8] = {}
	tRankingFunc_Info[236821]["Mail"]["Reward"][8]["RewardRank"] = 8
	tRankingFunc_Info[236821]["Mail"]["Reward"][8]["ActionId"] = 94487966
	tRankingFunc_Info[236821]["Mail"]["Reward"][8]["ExistDay"] = 7
	tRankingFunc_Info[236821]["Mail"]["Reward"][8]["Title"] = tValentinesDay2019NPC_Text["Mail"][236821]["Title"]
	tRankingFunc_Info[236821]["Mail"]["Reward"][8]["Sender"] = tValentinesDay2019NPC_Text["Mail"][236821]["Sender"]
	tRankingFunc_Info[236821]["Mail"]["Reward"][8]["Content"] = tValentinesDay2019NPC_Text["Mail"][236821]["Content"][8]
	tRankingFunc_Info[236821]["Mail"]["Reward"][9] = {}
	tRankingFunc_Info[236821]["Mail"]["Reward"][9]["RewardRank"] = 9
	tRankingFunc_Info[236821]["Mail"]["Reward"][9]["ActionId"] = 94487967
	tRankingFunc_Info[236821]["Mail"]["Reward"][9]["ExistDay"] = 7
	tRankingFunc_Info[236821]["Mail"]["Reward"][9]["Title"] = tValentinesDay2019NPC_Text["Mail"][236821]["Title"]
	tRankingFunc_Info[236821]["Mail"]["Reward"][9]["Sender"] = tValentinesDay2019NPC_Text["Mail"][236821]["Sender"]
	tRankingFunc_Info[236821]["Mail"]["Reward"][9]["Content"] = tValentinesDay2019NPC_Text["Mail"][236821]["Content"][9]
	tRankingFunc_Info[236821]["Mail"]["Reward"][10] = {}
	tRankingFunc_Info[236821]["Mail"]["Reward"][10]["RewardRank"] = 10
	tRankingFunc_Info[236821]["Mail"]["Reward"][10]["ActionId"] = 94487968
	tRankingFunc_Info[236821]["Mail"]["Reward"][10]["ExistDay"] = 7
	tRankingFunc_Info[236821]["Mail"]["Reward"][10]["Title"] = tValentinesDay2019NPC_Text["Mail"][236821]["Title"]
	tRankingFunc_Info[236821]["Mail"]["Reward"][10]["Sender"] = tValentinesDay2019NPC_Text["Mail"][236821]["Sender"]
	tRankingFunc_Info[236821]["Mail"]["Reward"][10]["Content"] = tValentinesDay2019NPC_Text["Mail"][236821]["Content"][10]

-- 女神排行榜	
	tRankingFunc_Info[236822] = {}
	tRankingFunc_Info[236822]["ActiveTime"] = tValentinesDay2019NPC_Cont["ActivityTime"]
	tRankingFunc_Info[236822]["DayTime"] = {}
	tRankingFunc_Info[236822]["DayTime"][1] = "01:00 23:59"
	tRankingFunc_Info[236822]["ResetTime"] = {}
	tRankingFunc_Info[236822]["ResetTime"][1] = "00:00 00:05"
	tRankingFunc_Info[236822]["Global"] = {53204,53205,53206,53207,53208}
	tRankingFunc_Info[236822]["RankNum"] = 15
	tRankingFunc_Info[236822]["RankMode"] = 3
	tRankingFunc_Info[236822]["Reset"] = 1
	
	tRankingFunc_Info[236822]["Mail"] = {}
	tRankingFunc_Info[236822]["Mail"]["ActiveTime"] = tValentinesDay2019NPC_Cont["RankTime"]
	tRankingFunc_Info[236822]["Mail"]["RewardTime"] = {}
	tRankingFunc_Info[236822]["Mail"]["RewardTime"][1] = "00:00 00:05"
	tRankingFunc_Info[236822]["Mail"]["HaveFunc"] = 1
	tRankingFunc_Info[236822]["Mail"]["Reward"] = {}
	tRankingFunc_Info[236822]["Mail"]["Reward"][1] = {}
	tRankingFunc_Info[236822]["Mail"]["Reward"][1]["RewardRank"] = 1
	tRankingFunc_Info[236822]["Mail"]["Reward"][1]["ActionId"] = 94487969
	tRankingFunc_Info[236822]["Mail"]["Reward"][1]["ExistDay"] = 7
	tRankingFunc_Info[236822]["Mail"]["Reward"][1]["Title"] = tValentinesDay2019NPC_Text["Mail"][236822]["Title"]
	tRankingFunc_Info[236822]["Mail"]["Reward"][1]["Sender"] = tValentinesDay2019NPC_Text["Mail"][236822]["Sender"]
	tRankingFunc_Info[236822]["Mail"]["Reward"][1]["Content"] = tValentinesDay2019NPC_Text["Mail"][236822]["Content"][1]
	tRankingFunc_Info[236822]["Mail"]["Reward"][2] = {}
	tRankingFunc_Info[236822]["Mail"]["Reward"][2]["RewardRank"] = 2
	tRankingFunc_Info[236822]["Mail"]["Reward"][2]["ActionId"] = 94487970
	tRankingFunc_Info[236822]["Mail"]["Reward"][2]["ExistDay"] = 7
	tRankingFunc_Info[236822]["Mail"]["Reward"][2]["Title"] = tValentinesDay2019NPC_Text["Mail"][236822]["Title"]
	tRankingFunc_Info[236822]["Mail"]["Reward"][2]["Sender"] = tValentinesDay2019NPC_Text["Mail"][236822]["Sender"]
	tRankingFunc_Info[236822]["Mail"]["Reward"][2]["Content"] = tValentinesDay2019NPC_Text["Mail"][236822]["Content"][2]
	tRankingFunc_Info[236822]["Mail"]["Reward"][3] = {}
	tRankingFunc_Info[236822]["Mail"]["Reward"][3]["RewardRank"] = 3
	tRankingFunc_Info[236822]["Mail"]["Reward"][3]["ActionId"] = 94487971
	tRankingFunc_Info[236822]["Mail"]["Reward"][3]["ExistDay"] = 7
	tRankingFunc_Info[236822]["Mail"]["Reward"][3]["Title"] = tValentinesDay2019NPC_Text["Mail"][236822]["Title"]
	tRankingFunc_Info[236822]["Mail"]["Reward"][3]["Sender"] = tValentinesDay2019NPC_Text["Mail"][236822]["Sender"]
	tRankingFunc_Info[236822]["Mail"]["Reward"][3]["Content"] = tValentinesDay2019NPC_Text["Mail"][236822]["Content"][3]
	tRankingFunc_Info[236822]["Mail"]["Reward"][4] = {}
	tRankingFunc_Info[236822]["Mail"]["Reward"][4]["RewardRank"] = 4
	tRankingFunc_Info[236822]["Mail"]["Reward"][4]["ActionId"] = 94487972
	tRankingFunc_Info[236822]["Mail"]["Reward"][4]["ExistDay"] = 7
	tRankingFunc_Info[236822]["Mail"]["Reward"][4]["Title"] = tValentinesDay2019NPC_Text["Mail"][236822]["Title"]
	tRankingFunc_Info[236822]["Mail"]["Reward"][4]["Sender"] = tValentinesDay2019NPC_Text["Mail"][236822]["Sender"]
	tRankingFunc_Info[236822]["Mail"]["Reward"][4]["Content"] = tValentinesDay2019NPC_Text["Mail"][236822]["Content"][4]
	tRankingFunc_Info[236822]["Mail"]["Reward"][5] = {}
	tRankingFunc_Info[236822]["Mail"]["Reward"][5]["RewardRank"] = 5
	tRankingFunc_Info[236822]["Mail"]["Reward"][5]["ActionId"] = 94487973
	tRankingFunc_Info[236822]["Mail"]["Reward"][5]["ExistDay"] = 7
	tRankingFunc_Info[236822]["Mail"]["Reward"][5]["Title"] = tValentinesDay2019NPC_Text["Mail"][236822]["Title"]
	tRankingFunc_Info[236822]["Mail"]["Reward"][5]["Sender"] = tValentinesDay2019NPC_Text["Mail"][236822]["Sender"]
	tRankingFunc_Info[236822]["Mail"]["Reward"][5]["Content"] = tValentinesDay2019NPC_Text["Mail"][236822]["Content"][5]
	tRankingFunc_Info[236822]["Mail"]["Reward"][6] = {}
	tRankingFunc_Info[236822]["Mail"]["Reward"][6]["RewardRank"] = 6
	tRankingFunc_Info[236822]["Mail"]["Reward"][6]["ActionId"] = 94487974
	tRankingFunc_Info[236822]["Mail"]["Reward"][6]["ExistDay"] = 7
	tRankingFunc_Info[236822]["Mail"]["Reward"][6]["Title"] = tValentinesDay2019NPC_Text["Mail"][236822]["Title"]
	tRankingFunc_Info[236822]["Mail"]["Reward"][6]["Sender"] = tValentinesDay2019NPC_Text["Mail"][236822]["Sender"]
	tRankingFunc_Info[236822]["Mail"]["Reward"][6]["Content"] = tValentinesDay2019NPC_Text["Mail"][236822]["Content"][6]
	tRankingFunc_Info[236822]["Mail"]["Reward"][7] = {}
	tRankingFunc_Info[236822]["Mail"]["Reward"][7]["RewardRank"] = 7
	tRankingFunc_Info[236822]["Mail"]["Reward"][7]["ActionId"] = 94487975
	tRankingFunc_Info[236822]["Mail"]["Reward"][7]["ExistDay"] = 7
	tRankingFunc_Info[236822]["Mail"]["Reward"][7]["Title"] = tValentinesDay2019NPC_Text["Mail"][236822]["Title"]
	tRankingFunc_Info[236822]["Mail"]["Reward"][7]["Sender"] = tValentinesDay2019NPC_Text["Mail"][236822]["Sender"]
	tRankingFunc_Info[236822]["Mail"]["Reward"][7]["Content"] = tValentinesDay2019NPC_Text["Mail"][236822]["Content"][7]
	tRankingFunc_Info[236822]["Mail"]["Reward"][8] = {}
	tRankingFunc_Info[236822]["Mail"]["Reward"][8]["RewardRank"] = 8
	tRankingFunc_Info[236822]["Mail"]["Reward"][8]["ActionId"] = 94487976
	tRankingFunc_Info[236822]["Mail"]["Reward"][8]["ExistDay"] = 7
	tRankingFunc_Info[236822]["Mail"]["Reward"][8]["Title"] = tValentinesDay2019NPC_Text["Mail"][236822]["Title"]
	tRankingFunc_Info[236822]["Mail"]["Reward"][8]["Sender"] = tValentinesDay2019NPC_Text["Mail"][236822]["Sender"]
	tRankingFunc_Info[236822]["Mail"]["Reward"][8]["Content"] = tValentinesDay2019NPC_Text["Mail"][236822]["Content"][8]
	tRankingFunc_Info[236822]["Mail"]["Reward"][9] = {}
	tRankingFunc_Info[236822]["Mail"]["Reward"][9]["RewardRank"] = 9
	tRankingFunc_Info[236822]["Mail"]["Reward"][9]["ActionId"] = 94487977
	tRankingFunc_Info[236822]["Mail"]["Reward"][9]["ExistDay"] = 7
	tRankingFunc_Info[236822]["Mail"]["Reward"][9]["Title"] = tValentinesDay2019NPC_Text["Mail"][236822]["Title"]
	tRankingFunc_Info[236822]["Mail"]["Reward"][9]["Sender"] = tValentinesDay2019NPC_Text["Mail"][236822]["Sender"]
	tRankingFunc_Info[236822]["Mail"]["Reward"][9]["Content"] = tValentinesDay2019NPC_Text["Mail"][236822]["Content"][9]
	tRankingFunc_Info[236822]["Mail"]["Reward"][10] = {}
	tRankingFunc_Info[236822]["Mail"]["Reward"][10]["RewardRank"] = 10
	tRankingFunc_Info[236822]["Mail"]["Reward"][10]["ActionId"] = 94487978
	tRankingFunc_Info[236822]["Mail"]["Reward"][10]["ExistDay"] = 7
	tRankingFunc_Info[236822]["Mail"]["Reward"][10]["Title"] = tValentinesDay2019NPC_Text["Mail"][236822]["Title"]
	tRankingFunc_Info[236822]["Mail"]["Reward"][10]["Sender"] = tValentinesDay2019NPC_Text["Mail"][236822]["Sender"]
	tRankingFunc_Info[236822]["Mail"]["Reward"][10]["Content"] = tValentinesDay2019NPC_Text["Mail"][236822]["Content"][10]

	
-- 每日奖励
local tValentinesDay2019NPC_DailyAward = {}
	tValentinesDay2019NPC_DailyAward[1000] = {}
	tValentinesDay2019NPC_DailyAward[1000]["ActionId"] = 94487996
	tValentinesDay2019NPC_DailyAward[1000]["ExistDay"] = 7
	tValentinesDay2019NPC_DailyAward[1000]["Title"] = tValentinesDay2019NPC_Text["Mail"]["DailyAward"]["Title"]
	tValentinesDay2019NPC_DailyAward[1000]["Sender"] = tValentinesDay2019NPC_Text["Mail"]["DailyAward"]["Sender"]
	tValentinesDay2019NPC_DailyAward[1000]["Content"] = tValentinesDay2019NPC_Text["Mail"]["DailyAward"]["Content"][1000]

	tValentinesDay2019NPC_DailyAward[4000] = {}
	tValentinesDay2019NPC_DailyAward[4000]["ActionId"] = 94487997
	tValentinesDay2019NPC_DailyAward[4000]["ExistDay"] = 7
	tValentinesDay2019NPC_DailyAward[4000]["Title"] = tValentinesDay2019NPC_Text["Mail"]["DailyAward"]["Title"]
	tValentinesDay2019NPC_DailyAward[4000]["Sender"] = tValentinesDay2019NPC_Text["Mail"]["DailyAward"]["Sender"]
	tValentinesDay2019NPC_DailyAward[4000]["Content"] = tValentinesDay2019NPC_Text["Mail"]["DailyAward"]["Content"][4000]

	
-- 总奖励
local tValentinesDay2019NPC_TotalAward = {}
	tValentinesDay2019NPC_TotalAward[10000] = {}
	tValentinesDay2019NPC_TotalAward[10000]["ActionId"] = 94487998
	tValentinesDay2019NPC_TotalAward[10000]["ExistDay"] = 7
	tValentinesDay2019NPC_TotalAward[10000]["Title"] = tValentinesDay2019NPC_Text["Mail"]["TotalAward"]["Title"]
	tValentinesDay2019NPC_TotalAward[10000]["Sender"] = tValentinesDay2019NPC_Text["Mail"]["TotalAward"]["Sender"]
	tValentinesDay2019NPC_TotalAward[10000]["Content"] = tValentinesDay2019NPC_Text["Mail"]["TotalAward"]["Content"][10000]

	tValentinesDay2019NPC_TotalAward[20000] = {}
	tValentinesDay2019NPC_TotalAward[20000]["ActionId"] = 94487999
	tValentinesDay2019NPC_TotalAward[20000]["ExistDay"] = 7
	tValentinesDay2019NPC_TotalAward[20000]["Title"] = tValentinesDay2019NPC_Text["Mail"]["TotalAward"]["Title"]
	tValentinesDay2019NPC_TotalAward[20000]["Sender"] = tValentinesDay2019NPC_Text["Mail"]["TotalAward"]["Sender"]
	tValentinesDay2019NPC_TotalAward[20000]["Content"] = tValentinesDay2019NPC_Text["Mail"]["TotalAward"]["Content"][20000]
	
	tValentinesDay2019NPC_TotalAward[30000] = {}
	tValentinesDay2019NPC_TotalAward[30000]["ActionId"] = 94488000
	tValentinesDay2019NPC_TotalAward[30000]["ExistDay"] = 7
	tValentinesDay2019NPC_TotalAward[30000]["Title"] = tValentinesDay2019NPC_Text["Mail"]["TotalAward"]["Title"]
	tValentinesDay2019NPC_TotalAward[30000]["Sender"] = tValentinesDay2019NPC_Text["Mail"]["TotalAward"]["Sender"]
	tValentinesDay2019NPC_TotalAward[30000]["Content"] = tValentinesDay2019NPC_Text["Mail"]["TotalAward"]["Content"][30000]
	
	tValentinesDay2019NPC_TotalAward[50000] = {}
	tValentinesDay2019NPC_TotalAward[50000]["ActionId"] = 94488001
	tValentinesDay2019NPC_TotalAward[50000]["ExistDay"] = 7
	tValentinesDay2019NPC_TotalAward[50000]["Title"] = tValentinesDay2019NPC_Text["Mail"]["TotalAward"]["Title"]
	tValentinesDay2019NPC_TotalAward[50000]["Sender"] = tValentinesDay2019NPC_Text["Mail"]["TotalAward"]["Sender"]
	tValentinesDay2019NPC_TotalAward[50000]["Content"] = tValentinesDay2019NPC_Text["Mail"]["TotalAward"]["Content"][50000]
	
	tValentinesDay2019NPC_TotalAward[100000] = {}
	tValentinesDay2019NPC_TotalAward[100000]["ActionId"] = 94488002
	tValentinesDay2019NPC_TotalAward[100000]["ExistDay"] = 7
	tValentinesDay2019NPC_TotalAward[100000]["Title"] = tValentinesDay2019NPC_Text["Mail"]["TotalAward"]["Title"]
	tValentinesDay2019NPC_TotalAward[100000]["Sender"] = tValentinesDay2019NPC_Text["Mail"]["TotalAward"]["Sender"]
	tValentinesDay2019NPC_TotalAward[100000]["Content"] = tValentinesDay2019NPC_Text["Mail"]["TotalAward"]["Content"][100000]
	
	tValentinesDay2019NPC_TotalAward[200000] = {}
	tValentinesDay2019NPC_TotalAward[200000]["ActionId"] = 94488003
	tValentinesDay2019NPC_TotalAward[200000]["ExistDay"] = 7
	tValentinesDay2019NPC_TotalAward[200000]["Title"] = tValentinesDay2019NPC_Text["Mail"]["TotalAward"]["Title"]
	tValentinesDay2019NPC_TotalAward[200000]["Sender"] = tValentinesDay2019NPC_Text["Mail"]["TotalAward"]["Sender"]
	tValentinesDay2019NPC_TotalAward[200000]["Content"] = tValentinesDay2019NPC_Text["Mail"]["TotalAward"]["Content"][200000]
	
	tValentinesDay2019NPC_TotalAward[400000] = {}
	tValentinesDay2019NPC_TotalAward[400000]["ActionId"] = 94488004
	tValentinesDay2019NPC_TotalAward[400000]["ExistDay"] = 7
	tValentinesDay2019NPC_TotalAward[400000]["Title"] = tValentinesDay2019NPC_Text["Mail"]["TotalAward"]["Title"]
	tValentinesDay2019NPC_TotalAward[400000]["Sender"] = tValentinesDay2019NPC_Text["Mail"]["TotalAward"]["Sender"]
	tValentinesDay2019NPC_TotalAward[400000]["Content"] = tValentinesDay2019NPC_Text["Mail"]["TotalAward"]["Content"][400000]
	
	tValentinesDay2019NPC_TotalAward[600000] = {}
	tValentinesDay2019NPC_TotalAward[600000]["ActionId"] = 94488005
	tValentinesDay2019NPC_TotalAward[600000]["ExistDay"] = 7
	tValentinesDay2019NPC_TotalAward[600000]["Title"] = tValentinesDay2019NPC_Text["Mail"]["TotalAward"]["Title"]
	tValentinesDay2019NPC_TotalAward[600000]["Sender"] = tValentinesDay2019NPC_Text["Mail"]["TotalAward"]["Sender"]
	tValentinesDay2019NPC_TotalAward[600000]["Content"] = tValentinesDay2019NPC_Text["Mail"]["TotalAward"]["Content"][600000]
	
	
local tValentinesDay2019NPC_Effect = {}
	tValentinesDay2019NPC_Effect["ConfirmDate"] = {}
	tValentinesDay2019NPC_Effect["ConfirmDate"]["Effect"] = "sen_gif_ful"
	tValentinesDay2019NPC_Effect["Submit"] = {}
	tValentinesDay2019NPC_Effect["Submit"]["Effect"] = "sen_gif_ful"
--------------------------------------- 逻辑部分 --------------------------------------------
-- 判断等级
function ValentinesDay2019NPC_JudgeLevel(nNowUserId)
	local nLevel = tValentinesDay2019NPC_Cont["Level"]
	local nMetem = tValentinesDay2019NPC_Cont["Metem"]
	local nUserId = nNowUserId or Get_UserId()
	return User_JudgeLevelAndMetempsychosis(nLevel,nMetem,nUserId)
end

-- 判断性别
function ValentinesDay2019NPC_IsBoy(nNpcId)
	if nNpcId == nil then
		local nUserId = Get_UserId()
		return Get_UserSex(nUserId) == 1
	else
		return tValentinesDay2019NPC_DateNpc[nNpcId]["Sex"] == 1
	end
end

-- 判断性别
function ValentinesDay2019NPC_IsGirl(nNpcId)
	if nNpcId == nil then
		local nUserId = Get_UserId()
		return Get_UserSex(nUserId) == 2
	else
		return tValentinesDay2019NPC_DateNpc[nNpcId]["Sex"] == 2
	end
end

-- 判断是否异性 
-- 参数1：玩家id  参数2：伴侣id  参数3：伴侣是否是npc
function ValentinesDay2019NPC_IsHeterosexuality(nUserId,nPartnerId,nIsNpc)
	local nUserSex = Get_UserSex(nUserId)
	local nPartnerSex
	if nIsNpc == nil then
		nPartnerSex = Get_UserSex(nPartnerId)
	else
		nPartnerSex = tValentinesDay2019NPC_DateNpc[nPartnerId]["Sex"]
	end
	return nUserSex ~= nPartnerSex
end

-- 获取stc值
function ValentinesDay2019NPC_GetStcValue(nIndex,nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nEvent = tValentinesDay2019NPC_Stc[nIndex]["EventType"]
	local nType = tValentinesDay2019NPC_Stc[nIndex]["DataType"]
	local nClear = tValentinesDay2019NPC_Stc[nIndex]["Clear"]
	
	if nClear ~= nil then
		if Task_StcInterval(nEvent,nType,1,4,nUserId) then
			Task_SetStatistic(nEvent,nType,0,1,nUserId)
			Task_SetStcTimestamp(nEvent,nType,0,nUserId)
		end
	end
	
	return Get_UserStatisticValue(nEvent,nType,nUserId)
end

-- 设置stc值
function ValentinesDay2019NPC_SetStcValue(nIndex,nData,nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nEvent = tValentinesDay2019NPC_Stc[nIndex]["EventType"]
	local nType = tValentinesDay2019NPC_Stc[nIndex]["DataType"]
	local nClear = tValentinesDay2019NPC_Stc[nIndex]["Clear"]
	
	if nClear ~= nil then
		if Task_StcInterval(nEvent,nType,1,4,nUserId) then
			Task_SetStatistic(nEvent,nType,0,1,nUserId)
			Task_SetStcTimestamp(nEvent,nType,0,nUserId)
		end
	end
	
	Task_SetStatistic(nEvent,nType,nData,1,nUserId)
	Task_SetStcTimestamp(nEvent,nType,0,nUserId)
end

-- 约会地图内男女神逻辑
function ValentinesDay2019NPC_DateNpcFunction(nNpcId)
	if not Sys_ChkFullTime(tValentinesDay2019NPC_Cont["ActivityTime"]) then
		ValentinesDay2019NPC_TimeOutReturn()
		return
	end
	if not Sys_ChkDayTime(tValentinesDay2019NPC_Cont["DayTime"]) then
		ValentinesDay2019NPC_TimeOutReturn()
		return
	end
	if not ValentinesDay2019NPC_ChkInMap() then
		return 
	end
	-- 判断是否已有伴侣
	local nUserId = Get_UserId()
	local nPartnerId = ValentinesDay2019NPC_GetStcValue(2,nUserId)
	local nNpcPartnerId = ValentinesDay2019NPC_GetStcValue(3,nUserId)

	if nPartnerId == 0 and nNpcPartnerId == 0 then
		ValentinesDay2019NPC_TimeOutReturn()
		return
	end
	
	local nStep = ValentinesDay2019NPC_GetStep()

	LinkNpcGossipFunc_New(nNpcId,"9-"..(nStep + 1))
end

-- 约会地图内真爱设计师逻辑
function ValentinesDay2019NPC_DesignNpcFunction(nNpcId)
	if not Sys_ChkFullTime(tValentinesDay2019NPC_Cont["ActivityTime"]) then
		ValentinesDay2019NPC_TimeOutReturn()
		return
	end
	if not Sys_ChkDayTime(tValentinesDay2019NPC_Cont["DayTime"]) then
		ValentinesDay2019NPC_TimeOutReturn()
		return
	end
	if not ValentinesDay2019NPC_ChkInMap() then
		return 
	end
	-- 判断是否已有伴侣
	local nUserId = Get_UserId()
	local nPartnerId = ValentinesDay2019NPC_GetStcValue(2,nUserId)
	local nNpcPartnerId = ValentinesDay2019NPC_GetStcValue(3,nUserId)

	if nPartnerId == 0 and nNpcPartnerId == 0 then
		ValentinesDay2019NPC_TimeOutReturn()
		return
	end
	LinkNpcGossipFunc_New(nNpcId,"1-4")
end

-- 约会地图内真爱助理逻辑
function ValentinesDay2019NPC_AssistantNpcFunction(nNpcId)
	if not Sys_ChkFullTime(tValentinesDay2019NPC_Cont["ActivityTime"]) then
		ValentinesDay2019NPC_TimeOutReturn()
		return
	end
	if not Sys_ChkDayTime(tValentinesDay2019NPC_Cont["DayTime"]) then
		ValentinesDay2019NPC_TimeOutReturn()
		return
	end
	if not ValentinesDay2019NPC_ChkInMap() then
		return 
	end
	-- 判断是否已有伴侣
	local nUserId = Get_UserId()
	local nPartnerId = ValentinesDay2019NPC_GetStcValue(2,nUserId)
	local nNpcPartnerId = ValentinesDay2019NPC_GetStcValue(3,nUserId)
	if nPartnerId == 0 and nNpcPartnerId == 0 then
		ValentinesDay2019NPC_TimeOutReturn()
		return
	end
	LinkNpcGossipFunc_New(nNpcId,"1-4")
end

-- 寻找约会对象
function ValentinesDay2019NPC_GoFindNpc()
	local nUserId = Get_UserId()

	local nSex = Get_UserSex(nUserId)
	local nIndex = math.random(1,#tValentinesDay2019NPC_Cont["GoFindNpcBySex"][nSex])
	local nFindNpcId = tValentinesDay2019NPC_Cont["GoFindNpcBySex"][nSex][nIndex]

	NpcPosition_PathFind(nFindNpcId)
end

-- 前往约会地点
function ValentinesDay2019NPC_GoDateMap(nFindNpcId,nNowUserId)
	NpcPosition_PathFind(nFindNpcId)
end

	
-- 和NPC约会
function ValentinesDay2019NPC_DateNpc(nNpcId)
	local nUserId = Get_UserId()
	-- 判断活动时间
	if not Sys_ChkFullTime(tValentinesDay2019NPC_Cont["ActivityTime"]) then
		Sys_MsgBox(tValentinesDay2019NPC_Text["MsgBox"]["NoActivityTime"],nil,nil,nUserId)
		return 
	end
	if not Sys_ChkDayTime(tValentinesDay2019NPC_Cont["DayTime"]) then
		Sys_MsgBox(tValentinesDay2019NPC_Text["MsgBox"]["NoDayTime"],nil,nil,nUserId)
		return 
	end
	
	
	
	local nPartnerId = nNpcId
	
	-- 设置约会对象id
	ValentinesDay2019NPC_SetStcValue(3,nPartnerId,nUserId)
	
	-- 打log
	Sys_SaveActionFestivalLog(tValentinesDay2019NPC_Log[1],nUserId)
	
	-- 通知寻路
	local sFunc = "ValentinesDay2019NPC_GoDateMap</N>" .. tValentinesDay2019NPC_Cont["NpcMap"] .. "</N>"
	local sNpcName = tValentinesDay2019NPC_Text["NpcName"][nPartnerId]
	Sys_MsgBox(string.format(tValentinesDay2019NPC_Text["MsgBox"]["DateSuccess"],sNpcName),sFunc..nUserId,nil,nUserId)
	
	-- 播放光效
	User_EffectAdd("self",tValentinesDay2019NPC_Effect["ConfirmDate"]["Effect"],nUserId)
end

-- 约会进入判断
function ValentinesDay2019NPC_JudgeTeamEnter()
	local nUserId = Get_UserId()
	-- 判断是否组队
	if Get_UserTeamNumbers(nUserId) <= 0 then
		local nUserSex = Get_UserSex(nUserId)
		local sPartnerSex = tValentinesDay2019NPC_Text["Sex"][nUserSex]
		Sys_MsgBox(string.format(tValentinesDay2019NPC_Text["MsgBox"]["NoTeam"],sPartnerSex),nil,nil,nUserId)

		return false
	end

	-- 判断队伍人数
	if Get_UserTeamNumbers(nUserId) ~= 2 then
		Sys_MsgBox(tValentinesDay2019NPC_Text["MsgBox"]["NoTwoTeamer"],nil,nil,nUserId)

		return false, 0
	end
	-- 初始化临时队伍数据
	tValentinesDay2019NPC_Team[nUserId] = {}
	tValentinesDay2019NPC_Team[nUserId]["Map"] = Get_UserMapId(nUserId)
	tValentinesDay2019NPC_Team[nUserId]["TeamLeaderId"] = nUserId
	tValentinesDay2019NPC_Team[nUserId]["LevelLimit"] = 0
	tValentinesDay2019NPC_Team[nUserId]["MapLimit"] = 0
	tValentinesDay2019NPC_Team[nUserId]["DateLimit"] = 0
	-- 队长触发队伍数据统计（是否同地图、是否等级达到要求）

	if not User_TeamExeFuncByTeamer(3,"ValentinesDay2019NPC_JudgeTeamEnterExeFunc</N>" .. nUserId,nUserId) then
		return false, 0
	end
	
	local nPartnerId = tValentinesDay2019NPC_Team[nUserId]["TeamerId"]
	
	-- 判断是否为异性
	if not ValentinesDay2019NPC_IsHeterosexuality(nUserId,nPartnerId) then
		Sys_MsgBox(tValentinesDay2019NPC_Text["MsgBox"]["NoHeterosexuality"],nil,nil,nUserId)
		return
	end
	
	-- 判断等级是否达标
	if tValentinesDay2019NPC_Team[nUserId]["LevelLimit"] ~= 2 then
		Sys_MsgBox(tValentinesDay2019NPC_Text["MsgBox"]["TeamLevel"],nil,nil,nUserId)
		return false, 0
	end
	-- 判断是否在同一地图
	if tValentinesDay2019NPC_Team[nUserId]["MapLimit"] ~= 2 then
		Sys_MsgBox(tValentinesDay2019NPC_Text["MsgBox"]["TeamMap"],nil,nil,nUserId)
		return false, 0
	end	

	return true, nPartnerId
end

-- 队伍信息记录
function ValentinesDay2019NPC_JudgeTeamEnterExeFunc(nLeaderUserId,nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	
	-- 判断队员等级
	if ValentinesDay2019NPC_JudgeLevel(nUserId) then
		tValentinesDay2019NPC_Team[nLeaderUserId]["LevelLimit"] = tValentinesDay2019NPC_Team[nLeaderUserId]["LevelLimit"] + 1
	end
	-- 判断所有队员是否在同一地图
	if Get_UserMapId(nUserId) == tValentinesDay2019NPC_Team[nLeaderUserId]["Map"] then
		tValentinesDay2019NPC_Team[nLeaderUserId]["MapLimit"] = tValentinesDay2019NPC_Team[nLeaderUserId]["MapLimit"] + 1
	end

	-- 记录队员id
	if nUserId ~= nLeaderUserId then
		tValentinesDay2019NPC_Team[nLeaderUserId]["TeamerId"] = nUserId
	end
end

-- 场景判断
function ValentinesDay2019NPC_ChkMap(nTraptype)
	-- 判断活动时间
	if not Sys_ChkFullTime(tValentinesDay2019NPC_Cont["ActivityTime"]) then
		return
	end
	local nAllOpenDay = tValentinesDay2019NPC_DatePlaceEnter["AllOpenDay"]
	local nNowDay = CommonFunc_DisActivityTime(tValentinesDay2019NPC_Cont["StartTime"])

	local nOpenDay = tValentinesDay2019NPC_DatePlaceEnter["Data"][nTraptype]["OpenDay"]
	if nNowDay >= nAllOpenDay or nNowDay >= nOpenDay then
		return true
	else
		return false
	end
end

-- 踩陷阱        nType：1和玩家约会 2和npc约会 
function ValentinesDay2019NPC_DateMapTrap(nType)
	local nUserId = Get_UserId()
	-- 判断活动时间
	if not Sys_ChkFullTime(tValentinesDay2019NPC_Cont["ActivityTime"]) then
		Sys_MsgBox(tValentinesDay2019NPC_Text["MsgBox"]["NoActivityTime"],nil,nil,nUserId)
		return
	end
	if not Sys_ChkDayTime(tValentinesDay2019NPC_Cont["DayTime"]) then
		Sys_MsgBox(tValentinesDay2019NPC_Text["MsgBox"]["NoDayTime"],nil,nil,nUserId)
		return 
	end
	-- 判断等级
	if not ValentinesDay2019NPC_JudgeLevel() then
		Sys_MsgBox(tValentinesDay2019NPC_Text["MsgBox"]["NoLevel"],nil,nil,nUserId)
		return 
	end
	
	local nNpcId = tValentinesDay2019NPC_Cont["TrapNpcId"]
	-- 对象是玩家
	if nType == 1 then
		local bJudge,nPartnerId = ValentinesDay2019NPC_JudgeTeamEnter()
		
		if not bJudge then
			return
		end
		
		LinkNpcGossipFunc_New(nNpcId,"2-1")
	else
		-- 判断是否组队
		if Get_UserTeamNumbers(nUserId) > 0 then
			Sys_MsgBox(tValentinesDay2019NPC_Text["MsgBox"]["TeamCannotInNpcMap"],nil,nil,nUserId)
			return false
		end
		
		-- 是否有对象
		local nPartnerId = ValentinesDay2019NPC_GetStcValue(3,nUserId)
		if nPartnerId == 0 then
			local sFunc = "ValentinesDay2019NPC_GoFindNpc"
			Sys_MsgBox(tValentinesDay2019NPC_Text["MsgBox"]["NoPartner"],sFunc,nil,nUserId)
			return
		end
		
		
		LinkNpcGossipFunc_New(nNpcId,"1-1")
	end

end

-- 进入地图 nInstanceType：副本类型  nType：约会地图类型 1和玩家约会 2和npc约会 
function ValentinesDay2019NPC_EnterMap(nTraptype,nType)
	local nUserId = Get_UserId()
	local nInstanceType = tValentinesDay2019NPC_DatePlaceEnter["Data"][nTraptype]["DateInstance"]
	-- 判断活动时间
	if not Sys_ChkFullTime(tValentinesDay2019NPC_Cont["ActivityTime"]) then
		Sys_MsgBox(tValentinesDay2019NPC_Text["MsgBox"]["NoActivityTime"],nil,nil,nUserId)
		return
	end
	if not Sys_ChkDayTime(tValentinesDay2019NPC_Cont["DayTime"]) then
		Sys_MsgBox(tValentinesDay2019NPC_Text["MsgBox"]["NoDayTime"],nil,nil,nUserId)
		return 
	end
	-- 判断等级
	if not ValentinesDay2019NPC_JudgeLevel() then
		Sys_MsgBox(tValentinesDay2019NPC_Text["MsgBox"]["NoLevel"],nil,nil,nUserId)
		return 
	end
	
	-- 判断地图是否已开放
	if not ValentinesDay2019NPC_ChkMap(nTraptype) then
		Sys_MsgBox(tValentinesDay2019NPC_Text["MsgBox"]["NoOpen"],nil,nil,nUserId)
		return 
	end		
	
	-- 对象是玩家
	if nType == 1 then
		local bJudge,nPartnerId = ValentinesDay2019NPC_JudgeTeamEnter()
		
		if not bJudge then
			return
		end
	else
		-- 判断是否组队
		if Get_UserTeamNumbers(nUserId) > 0 then
			Sys_MsgBox(tValentinesDay2019NPC_Text["MsgBox"]["TeamCannotInNpcMap"],nil,nil,nUserId)
			return false
		end
		
		-- 是否有对象
		local nPartnerId = ValentinesDay2019NPC_GetStcValue(3,nUserId)
		if nPartnerId == 0 then
			local sFunc = "ValentinesDay2019NPC_GoFindNpc"
			Sys_MsgBox(tValentinesDay2019NPC_Text["MsgBox"]["NoPartner"],sFunc,nil,nUserId)
			return
		end
	end
	
	-- 二次确认
	local sFunc = "ValentinesDay2019NPC_EnterDateMap</N>"..nInstanceType .. "</N>" .. nType
	local sMapName = tValentinesDay2019NPC_Text["MapName"][nInstanceType]
	Sys_MsgBox(string.format(tValentinesDay2019NPC_Text["MsgBox"]["Trap"],sMapName),sFunc,nil,nUserId)
end

-- 进入地图 nInstanceType：副本类型  nType：约会地图类型 1和玩家约会 2和npc约会 
function ValentinesDay2019NPC_EnterDateMap(nInstanceType,nType)
	local nUserId = Get_UserId()
	-- 判断活动时间
	if not Sys_ChkFullTime(tValentinesDay2019NPC_Cont["ActivityTime"]) then
		Sys_MsgBox(tValentinesDay2019NPC_Text["MsgBox"]["NoActivityTime"],nil,nil,nUserId)
		return
	end
	if not Sys_ChkDayTime(tValentinesDay2019NPC_Cont["DayTime"]) then
		Sys_MsgBox(tValentinesDay2019NPC_Text["MsgBox"]["NoDayTime"],nil,nil,nUserId)
		return 
	end
	-- 判断等级
	if not ValentinesDay2019NPC_JudgeLevel() then
		Sys_MsgBox(tValentinesDay2019NPC_Text["MsgBox"]["NoLevel"],nil,nil,nUserId)
		return 
	end
	
	-- 对象是玩家
	if nType == 1 then
		local bJudge,nPartnerId = ValentinesDay2019NPC_JudgeTeamEnter()
		
		if not bJudge then
			return
		end
		
		-- 记录当前约会对象
		ValentinesDay2019NPC_SetStcValue(2,nPartnerId,nUserId)
		ValentinesDay2019NPC_SetStcValue(2,nUserId,nPartnerId)
		
		-- 组队进入
		if not User_TeamExeFuncByTeamer(3,"ValentinesDay2019NPC_EnterInstance</N>2" .. "</N>" .. nInstanceType .. "</N>" .. nUserId,nUserId) then
			return
		end
	else
		-- 判断是否组队
		if Get_UserTeamNumbers(nUserId) > 0 then
			Sys_MsgBox(tValentinesDay2019NPC_Text["MsgBox"]["TeamCannotInNpcMap"],nil,nil,nUserId)
			return false
		end
		
		-- 是否有对象
		local nPartnerId = ValentinesDay2019NPC_GetStcValue(3,nUserId)
		if nPartnerId == 0 then
			local sFunc = "ValentinesDay2019NPC_GoFindNpc"
			Sys_MsgBox(tValentinesDay2019NPC_Text["MsgBox"]["NoPartner"],sFunc,nil,nUserId)
			return
		end
		
		ValentinesDay2019NPC_SetStcValue(2,0,nUserId)
		ValentinesDay2019NPC_EnterInstance(3,nInstanceType,nUserId,nUserId)
	end
end

-- 进入副本
function ValentinesDay2019NPC_EnterInstance(nLogIndex,nInstanceType,nLeaderUserId,nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	
	-- 进入副本
	if not User_EnterInstance(nInstanceType, 0, 0, 0, nUserId) then
		return
	end
	
	-- 通知
	local sMapName = tValentinesDay2019NPC_Text["MapName"][nInstanceType]
	local sFunc = "ValentinesDay2019NPC_FindSubmitNpc"
	Sys_MsgBox(string.format(tValentinesDay2019NPC_Text["MsgBox"]["Welcome"],sMapName),sFunc,nil,nUserId)

	
	-- 首次进入 礼包
	if ValentinesDay2019NPC_GetStcValue(8,nUserId) == 0 then
		ValentinesDay2019NPC_SetStcValue(8,1,nUserId)
		RewardTemplate_Reward(tValentinesDay2019NPC_AwardItem["LoveGift"],nUserId)
		
		local nItemtypeId = tValentinesDay2019NPC_Cont["Seed"]
		local sFunc = "FlowerChiefItem_AddSet</N>" .. nItemtypeId
		Sys_MsgBox(tValentinesDay2019NPC_Text["MsgBox"]["GetSeed"],sFunc,nil,nUserId)
	else
		local bHave = false
		for i,v in pairs(tValentinesDay2019NPC_Gift) do
			if Item_ChkItem(v,0,0,nUserId) then
				bHave = true
				local sFunc = "ValentinesDay2019NPC_UseGift</N>" .. v
				Sys_MsgBox(tValentinesDay2019NPC_Text["MsgBox"]["UseGift"],sFunc,nil,nUserId)
				break
			end
		end
		if not bHave then
			for i,v in pairs(tValentinesDay2019NPC_FlowerTicket) do
				if Item_ChkItem(v,0,0,nUserId) then
					local sFunc = "ValentinesDay2019NPC_UseFlowerTicket</N>" .. v
					Sys_MsgBox(tValentinesDay2019NPC_Text["MsgBox"]["UseGift"],sFunc,nil,nUserId)
					break
				end
			end	
		end
	end
	
	-- 进入副本后的数据配置
	if nLogIndex == 2 then
		if User_IsTeamLeader(nUserId) then
			-- 初始化约会地图数据
			ValentinesDay2019NPC_DateInfoInit(nUserId)
			ValentinesDay2019NPC_EffectInit(nUserId)
			ValentinesDay2019NPC_NpcInit(nUserId)
		end
	else
		-- 初始化约会地图数据
		ValentinesDay2019NPC_DateInfoInit(nUserId)
		ValentinesDay2019NPC_EffectInit(nUserId)
		ValentinesDay2019NPC_NpcInit(nUserId)
	end
	
	if nLogIndex == nil then
		return 
	end
	-- 打log
	Sys_SaveActionFestivalLog(tValentinesDay2019NPC_Log[nLogIndex],nUserId)
end


-- 使用浪漫礼物
function ValentinesDay2019NPC_UseGift(nItemtypeId,nNowUserId)
	-- 过期删除
	if not Sys_ChkFullTime(tValentinesDay2019NPC_Cont["ActivityTime"]) then
		local nItemNum = Get_CountItemType(nItemtypeId,0)
		if Item_DelMulItem(nItemtypeId,nItemtypeId,nItemNum) then
			Sys_SaveActionFestivalLog(string.format(tValentinesDay2019NPC_Log["Delete"],nItemtypeId,nItemNum))
			User_TalkChannel2005(tValentinesDay2019NPC_Text["Talk"]["TimeOverDelItem"])
		end
		return
	end
	-- 在副本内
	local nUserId = nNowUserId or Get_UserId()
	if ValentinesDay2019NPC_ChkInMap(nUserId) then
		LinkItemGossipFunc_New(nItemtypeId,"1-1")
		return
	else
		if Get_UserTeamNumbers(nUserId) == 2 then
			ValentinesDay2019NPC_GoDateMap(tValentinesDay2019NPC_Cont["PlayerMap"])
		else
			ValentinesDay2019NPC_GoDateMap(tValentinesDay2019NPC_Cont["NpcMap"])
		end
	end
end

-- 使用鲜花兑换券
function ValentinesDay2019NPC_UseFlowerTicket(nItemtypeId,nNowUserId)
	-- 过期
	if not Sys_ChkFullTime(tValentinesDay2019NPC_Cont["ActivityTime"]) then
		
		return
	end
	-- 在副本内
	local nUserId = nNowUserId or Get_UserId()
	if ValentinesDay2019NPC_ChkInMap(nUserId) then
		LinkItemGossipFunc_New(nItemtypeId,"5-1")
		return
	else
		-- if Get_UserTeamNumbers(nUserId) == 2 then
			-- ValentinesDay2019NPC_GoDateMap(tValentinesDay2019NPC_Cont["PlayerMap"])
		-- else
			-- ValentinesDay2019NPC_GoDateMap(tValentinesDay2019NPC_Cont["NpcMap"])
		-- end
		ChineseValentinesDay_FlowersCoupon(nItemtypeId)
	end
end


-- 寻路到提交npc
function ValentinesDay2019NPC_FindSubmitNpc(nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nMapId = Get_UserMapId(nUserId)
	local nMapDoc = Get_MapDoc(nMapId)
	local nNpcId = tValentinesDay2019NPC_Cont["DesignNpc"]
	if tValentinesDay2019NPC_DateNpc[nNpcId]["Pos"][nMapDoc] == nil then
		return
	end
	local nPosX = tValentinesDay2019NPC_DateNpc[nNpcId]["Pos"][nMapDoc][1]
	local nPosY = tValentinesDay2019NPC_DateNpc[nNpcId]["Pos"][nMapDoc][2]
	Sys_GotoSomeWhere(nPosX,nPosY,nMapId,0,nUserId)
end

-- 初始化约会地图数据
function ValentinesDay2019NPC_DateInfoInit(nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	-- 初始化约会数据
	if tValentinesDay2019NPC_DateInfo[nUserId] == nil then
		tValentinesDay2019NPC_DateInfo[nUserId] = CommonFunc_Copy(tValentinesDay2019NPC_DateInfo["Default"])
	end
	-- 伴侣数据同步
	local nPartnerId = ValentinesDay2019NPC_GetStcValue(2,nUserId)
	if nPartnerId ~= 0 then
		if tValentinesDay2019NPC_DateInfo[nPartnerId] == nil then
			tValentinesDay2019NPC_DateInfo[nPartnerId] = CommonFunc_Copy(tValentinesDay2019NPC_DateInfo["Default"])
		end
	end
end

-- 提交单个物品 二次确认
function ValentinesDay2019NPC_SubmitSingleItemConfirm(nNpcId,nItemtypeId,nNowUserId)
	-- 判断活动时间
	if not Sys_ChkFullTime(tValentinesDay2019NPC_Cont["ActivityTime"]) then
		ValentinesDay2019NPC_TimeOutReturn()
		return
	end
	if not Sys_ChkDayTime(tValentinesDay2019NPC_Cont["DayTime"]) then
		ValentinesDay2019NPC_TimeOutReturn()
		return 
	end
	if not ValentinesDay2019NPC_ChkInMap() then
		return 
	end

	-- 判断是否已有伴侣
	local nUserId = nNowUserId or Get_UserId()
	local nPartnerId = ValentinesDay2019NPC_GetStcValue(2,nUserId)
	local nNpcPartnerId = ValentinesDay2019NPC_GetStcValue(3,nUserId)

	-- 判断是否已有伴侣
	if nPartnerId == 0 and nNpcPartnerId == 0 then
		ValentinesDay2019NPC_TimeOutReturn()
		return
	end
	
	
	
	local sItemtypeName = Get_ItemtypeName(nItemtypeId)
	tNpcGossip[nNpcId]["Text521"] = string.format(tValentinesDay2019NPC_Text[23689]["Text521"],sItemtypeName)
	tNpcGossip[nNpcId]["OptionFunc521"] = string.format("ValentinesDay2019NPC_SubmitSingleItem</N>%d</N>%d",nItemtypeId,1)
	tNpcGossip[nNpcId]["OptionFunc522"] = string.format("ValentinesDay2019NPC_SubmitSingleItem</N>%d</N>%d",nItemtypeId,5)
	tNpcGossip[nNpcId]["OptionChkFunc522"] = function()
		return Item_ChkMulItem(nItemtypeId,nItemtypeId,5)
	end	
	tNpcGossip[nNpcId]["OptionFunc523"] = string.format("ValentinesDay2019NPC_SubmitSingleItem</N>%d",nItemtypeId)
	LinkNpcGossipFunc_New(nNpcId,"5-2")
end

-- 提交单个物品
function ValentinesDay2019NPC_SubmitSingleItem(nItemtypeId,nNum,nNowUserId)
	-- 判断活动时间
	if not Sys_ChkFullTime(tValentinesDay2019NPC_Cont["ActivityTime"]) then
		ValentinesDay2019NPC_TimeOutReturn()
		return
	end
	if not Sys_ChkDayTime(tValentinesDay2019NPC_Cont["DayTime"]) then
		ValentinesDay2019NPC_TimeOutReturn()
		return 
	end
	if not ValentinesDay2019NPC_ChkInMap() then
		return 
	end
	
	local nUserId = nNowUserId or Get_UserId()
	local nPartnerId = ValentinesDay2019NPC_GetStcValue(2,nUserId)
	local nNpcPartnerId = ValentinesDay2019NPC_GetStcValue(3,nUserId)

	-- 判断是否已有伴侣
	if nPartnerId == 0 and nNpcPartnerId == 0 then
		ValentinesDay2019NPC_TimeOutReturn()
		return
	end
	-- 对象在线
	if nPartnerId ~= 0 then
		if not ((Get_UserName(nPartnerId) ~= "null") and (Get_UserMapId(nUserId) == Get_UserMapId(nPartnerId))) then
			Sys_MsgBox(tValentinesDay2019NPC_Text["MsgBox"]["PartnerNoHere"],nil,nil,nUserId)
			return
		end
	end
	
	if nNum == nil then
		nNum = Get_CountItemType(nItemtypeId,0)
	end
	
	-- 增加甜蜜值
	local nAddNum = ValentinesDay2019NPC_AddSweetValue(nItemtypeId,nNum,nUserId)
	if nAddNum <= 0 then
		return
	end
	if nPartnerId ~= 0 then
		if User_IsTeamLeader(nUserId) then
			-- 初始化约会地图数据
			ValentinesDay2019NPC_DateInfoInit(nUserId)
			-- 地图光效
			ValentinesDay2019NPC_EffectInit(nUserId)
		end
	else
		-- 初始化约会地图数据
		ValentinesDay2019NPC_DateInfoInit(nUserId)
		-- 地图光效
		ValentinesDay2019NPC_EffectInit(nUserId)
	end
	
	-- 对象是玩家
	if nPartnerId ~= 0 then
		local sPartnerName = Get_UserName(nPartnerId)
		Sys_MsgBox(string.format(tValentinesDay2019NPC_Text["MsgBox"]["Submit"],sPartnerName,nAddNum),nil,nil,nUserId)
		User_TalkChannel2005(string.format(tValentinesDay2019NPC_Text["Talk"]["Submit"],nAddNum),nUserId)
		-- 共享
		ValentinesDay2019NPC_ShareSweetValue(nPartnerId)
		
		-- 播放光效
		User_EffectAdd("self",tValentinesDay2019NPC_Effect["Submit"]["Effect"],nUserId)
		User_EffectAdd("self",tValentinesDay2019NPC_Effect["Submit"]["Effect"],nPartnerId)
		
	else
		local sNpcName = tValentinesDay2019NPC_Text["NpcName"][nNpcPartnerId]
		local sFunc = "ValentinesDay2019NPC_SubmitReturnDialog</N>" .. nItemtypeId
		Sys_MsgBox(string.format(tValentinesDay2019NPC_Text["MsgBox"]["SubmitDouble"],sNpcName,nAddNum),sFunc,nil,nUserId)
		User_TalkChannel2005(string.format(tValentinesDay2019NPC_Text["Talk"]["Submit"],nAddNum),nUserId)
		
		-- 播放光效
		User_EffectAdd("self",tValentinesDay2019NPC_Effect["Submit"]["Effect"],nUserId)
		-- NPC播放光效
		local nMapId = Get_UserMapId(nUserId)
		local nMapDoc = Get_MapDoc(nMapId)
		local nPosX = tValentinesDay2019NPC_DateNpc[nNpcPartnerId]["Pos"][nMapDoc][1]
		local nPosY = tValentinesDay2019NPC_DateNpc[nNpcPartnerId]["Pos"][nMapDoc][2]
		Map_Effect(nMapId, nPosX, nPosY, tValentinesDay2019NPC_Effect["Submit"]["Effect"])
	end
end

-- 提交
function ValentinesDay2019NPC_SubmitFlower(nNpcId,nNowUserId)
	-- 判断活动时间
	if not Sys_ChkFullTime(tValentinesDay2019NPC_Cont["ActivityTime"]) then
		ValentinesDay2019NPC_TimeOutReturn()
		return
	end
	if not Sys_ChkDayTime(tValentinesDay2019NPC_Cont["DayTime"]) then
		ValentinesDay2019NPC_TimeOutReturn()
		return 
	end
	if not ValentinesDay2019NPC_ChkInMap() then
		return 
	end

	-- 判断是否有伴侣
	local nUserId = nNowUserId or Get_UserId()
	local nPartnerId = ValentinesDay2019NPC_GetStcValue(2,nUserId)
	local nNpcPartnerId = ValentinesDay2019NPC_GetStcValue(3,nUserId)
	if nPartnerId == 0 and nNpcPartnerId == 0 then
		ValentinesDay2019NPC_TimeOutReturn()
		return
	end
	
	-- 判断是否有物品
	if not ValentinesDay2019NPC_ChkActivityFlower() then
		LinkNpcGossipFunc_New(nNpcId,"4-2")
		return 
	end
	-- if ValentinesDay2019NPC_JudgeSubmitLimit() then
	if ValentinesDay2019NPC_GetStcValue(4,nUserId) < tValentinesDay2019NPC_Cont["DailySubmitLimit"] then
		LinkNpcGossipFunc_New(nNpcId,"4-1")
	else
		local sFunc = "ValentinesDay2019NPC_DesignNpcFunction</N>" .. nNpcId
		Sys_MsgBox(tValentinesDay2019NPC_Text["MsgBox"]["SubmitLimit"],sFunc,nil,nUserId)
	end
end

-- 提交所有 二次确认
function ValentinesDay2019NPC_SubmitAllGiftConfirm(nItemtypeId,nNowUserId)
	-- 判断活动时间
	if not Sys_ChkFullTime(tValentinesDay2019NPC_Cont["ActivityTime"]) then
		ValentinesDay2019NPC_TimeOutReturn()
		return
	end
	if not Sys_ChkDayTime(tValentinesDay2019NPC_Cont["DayTime"]) then
		ValentinesDay2019NPC_TimeOutReturn()
		return 
	end
	if not ValentinesDay2019NPC_ChkInMap() then
		return 
	end

	-- 判断是否有伴侣
	local nUserId = nNowUserId or Get_UserId()
	local nPartnerId = ValentinesDay2019NPC_GetStcValue(2,nUserId)
	local nNpcPartnerId = ValentinesDay2019NPC_GetStcValue(3,nUserId)
	if nPartnerId == 0 and nNpcPartnerId == 0 then
		ValentinesDay2019NPC_TimeOutReturn()
		return
	end
	-- 判断是否有物品
	if not ValentinesDay2019NPC_ChkActivityGift() then
		LinkItemGossipFunc_New(nItemtypeId,"3-1")
		return 
	end
	
	LinkItemGossipFunc_New(nItemtypeId,"4-1")
end

-- 提交所有 二次确认
function ValentinesDay2019NPC_SubmitAllFlowerConfirm(nNpcId,nNowUserId)
	-- 判断活动时间
	if not Sys_ChkFullTime(tValentinesDay2019NPC_Cont["ActivityTime"]) then
		ValentinesDay2019NPC_TimeOutReturn()
		return
	end
	if not Sys_ChkDayTime(tValentinesDay2019NPC_Cont["DayTime"]) then
		ValentinesDay2019NPC_TimeOutReturn()
		return 
	end
	if not ValentinesDay2019NPC_ChkInMap() then
		return 
	end

	-- 判断是否有伴侣
	local nUserId = nNowUserId or Get_UserId()
	local nPartnerId = ValentinesDay2019NPC_GetStcValue(2,nUserId)
	local nNpcPartnerId = ValentinesDay2019NPC_GetStcValue(3,nUserId)
	if nPartnerId == 0 and nNpcPartnerId == 0 then
		ValentinesDay2019NPC_TimeOutReturn()
		return
	end
	-- 判断是否有物品
	if not ValentinesDay2019NPC_ChkActivityFlower() then
		LinkNpcGossipFunc_New(nNpcId,"4-2")
		return 
	end
	
	LinkNpcGossipFunc_New(nNpcId,"5-4")
end

-- 提交所有
function ValentinesDay2019NPC_SubmitAllFlower(nNpcId,nNowUserId)
	-- 判断活动时间
	if not Sys_ChkFullTime(tValentinesDay2019NPC_Cont["ActivityTime"]) then
		ValentinesDay2019NPC_TimeOutReturn()
		return
	end
	if not Sys_ChkDayTime(tValentinesDay2019NPC_Cont["DayTime"]) then
		ValentinesDay2019NPC_TimeOutReturn()
		return 
	end
	-- 判断等级
	if not ValentinesDay2019NPC_JudgeLevel() then
		
		return 
	end
	if not ValentinesDay2019NPC_ChkInMap() then
		return 
	end
	
	local nUserId = nNowUserId or Get_UserId()
	local nPartnerId = ValentinesDay2019NPC_GetStcValue(2,nUserId)
	local nNpcPartnerId = ValentinesDay2019NPC_GetStcValue(3,nUserId)

	-- 判断是否已有伴侣
	if nPartnerId == 0 and nNpcPartnerId == 0 then
		ValentinesDay2019NPC_TimeOutReturn()
		return
	end
	-- 对象在线
	if nPartnerId ~= 0 then
		if not ((Get_UserName(nPartnerId) ~= "null") and (Get_UserMapId(nUserId) == Get_UserMapId(nPartnerId))) then
			Sys_MsgBox(tValentinesDay2019NPC_Text["MsgBox"]["PartnerNoHere"],nil,nil,nUserId)
			return
		end
	end
	
	-- 判断是否有物品
	if not ValentinesDay2019NPC_ChkActivityFlower() then
		LinkNpcGossipFunc_New(nNpcId,"4-2")
		return 
	end
	
	local nUserId = nNowUserId or Get_UserId()
	local nAddNum = 0
	local nShareNum = 0
	
	-- 限制物品
	for i,v in pairs(tValentinesDay2019NPC_Submit) do
		-- 增加甜蜜值
		if Item_ChkItem(i) then
			local nNum = ValentinesDay2019NPC_AddSweetValue(i,0,nUserId)
			if nNum > 0 then
				nAddNum = nAddNum + nNum
			end
		end
	end

	
	if nAddNum <= 0 then
		return
	end
	
	if nPartnerId ~= 0 then
		if User_IsTeamLeader(nUserId) then
			-- 初始化约会地图数据
			ValentinesDay2019NPC_DateInfoInit(nUserId)
			-- 地图光效
			ValentinesDay2019NPC_EffectInit(nUserId)
		end
	else
		-- 初始化约会地图数据
		ValentinesDay2019NPC_DateInfoInit(nUserId)
		-- 地图光效
		ValentinesDay2019NPC_EffectInit(nUserId)
	end
	
	-- 对象是玩家
	if nPartnerId ~= 0 then
		local sPartnerName = Get_UserName(nPartnerId)
		Sys_MsgBox(string.format(tValentinesDay2019NPC_Text["MsgBox"]["Submit"],sPartnerName,nAddNum),nil,nil,nUserId)
		User_TalkChannel2005(string.format(tValentinesDay2019NPC_Text["Talk"]["Submit"],nAddNum),nUserId)
		
		ValentinesDay2019NPC_ShareSweetValue(nPartnerId)
		
		-- 播放光效
		User_EffectAdd("self",tValentinesDay2019NPC_Effect["Submit"]["Effect"],nUserId)
		User_EffectAdd("self",tValentinesDay2019NPC_Effect["Submit"]["Effect"],nPartnerId)
		
		
	else
		local sNpcName = tValentinesDay2019NPC_Text["NpcName"][nNpcPartnerId]
		local sFunc = "ValentinesDay2019NPC_SubmitReturnDialog</N>" .. tValentinesDay2019NPC_Cont["Flower"]
		Sys_MsgBox(string.format(tValentinesDay2019NPC_Text["MsgBox"]["SubmitDouble"],sNpcName,nAddNum),sFunc,nil,nUserId)
		User_TalkChannel2005(string.format(tValentinesDay2019NPC_Text["Talk"]["Submit"],nAddNum),nUserId)
		
		-- 播放光效
		User_EffectAdd("self",tValentinesDay2019NPC_Effect["Submit"]["Effect"],nUserId)
		-- NPC播放光效
		local nMapId = Get_UserMapId(nUserId)
		local nMapDoc = Get_MapDoc(nMapId)
		local nPosX = tValentinesDay2019NPC_DateNpc[nNpcPartnerId]["Pos"][nMapDoc][1]
		local nPosY = tValentinesDay2019NPC_DateNpc[nNpcPartnerId]["Pos"][nMapDoc][2]
		Map_Effect(nMapId, nPosX, nPosY, tValentinesDay2019NPC_Effect["Submit"]["Effect"])
	end
end

-- 提交所有
function ValentinesDay2019NPC_SubmitAllGift(nItemtypeId,nNowUserId)
	-- 判断活动时间
	if not Sys_ChkFullTime(tValentinesDay2019NPC_Cont["ActivityTime"]) then
		ValentinesDay2019NPC_TimeOutReturn()
		return
	end
	if not Sys_ChkDayTime(tValentinesDay2019NPC_Cont["DayTime"]) then
		ValentinesDay2019NPC_TimeOutReturn()
		return 
	end
	-- 判断等级
	if not ValentinesDay2019NPC_JudgeLevel() then
		
		return 
	end
	if not ValentinesDay2019NPC_ChkInMap() then
		return 
	end
	
	local nUserId = nNowUserId or Get_UserId()
	local nPartnerId = ValentinesDay2019NPC_GetStcValue(2,nUserId)
	local nNpcPartnerId = ValentinesDay2019NPC_GetStcValue(3,nUserId)

	-- 判断是否已有伴侣
	if nPartnerId == 0 and nNpcPartnerId == 0 then
		ValentinesDay2019NPC_TimeOutReturn()
		return
	end
	-- 对象在线
	if nPartnerId ~= 0 then
		if not ((Get_UserName(nPartnerId) ~= "null") and (Get_UserMapId(nUserId) == Get_UserMapId(nPartnerId))) then
			Sys_MsgBox(tValentinesDay2019NPC_Text["MsgBox"]["PartnerNoHere"],nil,nil,nUserId)
			return
		end
	end
	
	-- 判断是否有物品
	if not ValentinesDay2019NPC_ChkActivityGift() then
		LinkItemGossipFunc_New(nItemtypeId,"3-1")
		return 
	end
	
	local nUserId = nNowUserId or Get_UserId()
	local nAddNum = 0
	local nShareNum = 0
	
	
	-- 无限制物品
	for i,v in pairs(tValentinesDay2019NPC_SubmitNoLimit) do
		-- 增加甜蜜值
		if Item_ChkItem(i) then
			local nNum = ValentinesDay2019NPC_AddSweetValue(i,0,nUserId)
			if nNum > 0 then
				nAddNum = nAddNum + nNum
			end
		end
	end
	
	if nAddNum <= 0 then
		return
	end
	
	if nPartnerId ~= 0 then
		if User_IsTeamLeader(nUserId) then
			-- 初始化约会地图数据
			ValentinesDay2019NPC_DateInfoInit(nUserId)
			-- 地图光效
			ValentinesDay2019NPC_EffectInit(nUserId)
		end
	else
		-- 初始化约会地图数据
		ValentinesDay2019NPC_DateInfoInit(nUserId)
		-- 地图光效
		ValentinesDay2019NPC_EffectInit(nUserId)
	end
	
	-- 对象是玩家
	if nPartnerId ~= 0 then
		local sPartnerName = Get_UserName(nPartnerId)
		Sys_MsgBox(string.format(tValentinesDay2019NPC_Text["MsgBox"]["Submit"],sPartnerName,nAddNum),nil,nil,nUserId)
		User_TalkChannel2005(string.format(tValentinesDay2019NPC_Text["Talk"]["Submit"],nAddNum),nUserId)
		
		ValentinesDay2019NPC_ShareSweetValue(nPartnerId)
		
		-- 播放光效
		User_EffectAdd("self",tValentinesDay2019NPC_Effect["Submit"]["Effect"],nUserId)
		User_EffectAdd("self",tValentinesDay2019NPC_Effect["Submit"]["Effect"],nPartnerId)
		
	else
		local sNpcName = tValentinesDay2019NPC_Text["NpcName"][nNpcPartnerId]
		local sFunc = "ValentinesDay2019NPC_SubmitReturnDialog</N>" .. nItemtypeId
		Sys_MsgBox(string.format(tValentinesDay2019NPC_Text["MsgBox"]["SubmitDouble"],sNpcName,nAddNum),sFunc,nil,nUserId)
		User_TalkChannel2005(string.format(tValentinesDay2019NPC_Text["Talk"]["Submit"],nAddNum),nUserId)
		
		-- 播放光效
		User_EffectAdd("self",tValentinesDay2019NPC_Effect["Submit"]["Effect"],nUserId)
		-- NPC播放光效
		local nMapId = Get_UserMapId(nUserId)
		local nMapDoc = Get_MapDoc(nMapId)
		local nPosX = tValentinesDay2019NPC_DateNpc[nNpcPartnerId]["Pos"][nMapDoc][1]
		local nPosY = tValentinesDay2019NPC_DateNpc[nNpcPartnerId]["Pos"][nMapDoc][2]
		Map_Effect(nMapId, nPosX, nPosY, tValentinesDay2019NPC_Effect["Submit"]["Effect"])
	end
end

-- 判断是否还能继续提交鲜花
function ValentinesDay2019NPC_JudgeSubmitLimit()
	local nMinAddNum = 0
	local nDouble = 1.5
	local nUserId = Get_UserId()
	local nPartnerId = ValentinesDay2019NPC_GetStcValue(2,nUserId)
	if nPartnerId == 0 then
		nDouble = 2
	end
	-- 判断增加的最小甜蜜值
	for i,v in pairs(tValentinesDay2019NPC_Submit) do
		if Item_ChkItem(i) then
			local nAddNum = math.floor(v * nDouble)
			if nMinAddNum == 0 then
				nMinAddNum = nAddNum
			end
			if nAddNum < nMinAddNum then
				nMinAddNum = nAddNum
			end
		end
	end
	
	-- 判断是否超过限制
	local nNowNum4 = ValentinesDay2019NPC_GetStcValue(4,nUserId)
	if nMinAddNum + nNowNum4 > tValentinesDay2019NPC_Cont["DailySubmitLimit"] then
		return false
	else
		return true
	end
end


-- 增加甜蜜值
function ValentinesDay2019NPC_AddSweetValue(nItemtypeId,nNum,nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nAddNum = tValentinesDay2019NPC_Submit[nItemtypeId]
	local nNowNum4 = ValentinesDay2019NPC_GetStcValue(4,nUserId)
	local bLimit = false
	local nDouble = 1.5
	local nItemNum
	if nNum > 0 then
		nItemNum = nNum
	else
		nItemNum = Get_CountItemType(nItemtypeId,0)
	end
	
	if nItemNum == 0 then
		return 0
	end
	
	if not Item_ChkMulItem(nItemtypeId,nItemtypeId,nItemNum) then
		Sys_MsgBox(string.format(tValentinesDay2019NPC_Text["MsgBox"]["NoItem"],Get_ItemtypeName(nItemtypeId)),nil,nil,nUserId)
		return 0
	end
	
	-- 对象是npc时 获得双倍
	if ValentinesDay2019NPC_GetStcValue(2,nUserId) == 0 then
		nDouble = 2
	end
	
	-- 判断是否为有限制物品
	if nAddNum ~= nil then
		local nLeft = tValentinesDay2019NPC_Cont["DailySubmitLimit"] - nNowNum4
		local nLeftSubmitNum = math.ceil(nLeft/(nAddNum * nDouble))
		if nLeftSubmitNum == 0 then
			local nNpcId = tValentinesDay2019NPC_Cont["DesignNpc"]
			local sFunc = "ValentinesDay2019NPC_DesignNpcFunction</N>" .. nNpcId
			Sys_MsgBox(tValentinesDay2019NPC_Text["MsgBox"]["SubmitLimit"],sFunc,nil,nUserId)
			return 0
		end
		if nLeftSubmitNum < nItemNum then
			nItemNum = nLeftSubmitNum
		end
		bLimit = true
	else
		nAddNum = tValentinesDay2019NPC_SubmitNoLimit[nItemtypeId]
		if nAddNum == nil then
			return 0
		end
	end
	if not Item_ChkMulItem(nItemtypeId,nItemtypeId,nItemNum) then
		Sys_MsgBox(string.format(tValentinesDay2019NPC_Text["MsgBox"]["NoItem"],Get_ItemtypeName(nItemtypeId)),nil,nil,nUserId)
		return 0
	end
	-- 删除物品
	if not Item_DelMulItem(nItemtypeId,nItemtypeId,nItemNum) then
		
		return 0
	end
	
	local nNowNum5 = ValentinesDay2019NPC_GetStcValue(5,nUserId)
	local nNowNum6 = ValentinesDay2019NPC_GetStcValue(6,nUserId)
	
	local nFinalAddNum = math.floor(nAddNum * nItemNum * nDouble)
	-- 掩码增加
	if bLimit then
		if nNowNum4 + nFinalAddNum > tValentinesDay2019NPC_Cont["DailySubmitLimit"] then
			nFinalAddNum = tValentinesDay2019NPC_Cont["DailySubmitLimit"] - nNowNum4
		end
		local nNewNum4 = nNowNum4 + nFinalAddNum
		ValentinesDay2019NPC_SetStcValue(4,nNewNum4,nUserId)
	end
	local nNewNum5 = nNowNum5 + nFinalAddNum
	ValentinesDay2019NPC_SetStcValue(5,nNewNum5,nUserId)
	local nNewNum6 = nNowNum6 + nFinalAddNum
	ValentinesDay2019NPC_SetStcValue(6,nNewNum6,nUserId)
	
	-- 阶段播报
	ValentinesDay2019NPC_StepBrodcast(nNowNum5,nNewNum5,nUserId)
	-- 每日奖励
	ValentinesDay2019NPC_DailyAward(nNowNum5,nNewNum5,nUserId)
	-- 总奖励
	ValentinesDay2019NPC_TotalAward(nNowNum6,nNewNum6,nUserId)
	
	-- 共享
	local nPartnerId = ValentinesDay2019NPC_GetStcValue(2,nUserId)
	if nPartnerId ~= 0 then
		-- 初始化约会地图数据
		ValentinesDay2019NPC_DateInfoInit(nUserId)
		
		if bLimit then
			tValentinesDay2019NPC_DateInfo[nPartnerId]["Left"]["Limit"] = tValentinesDay2019NPC_DateInfo[nPartnerId]["Left"]["Limit"] + nFinalAddNum
		else
			tValentinesDay2019NPC_DateInfo[nPartnerId]["Left"]["NoLimit"] = tValentinesDay2019NPC_DateInfo[nPartnerId]["Left"]["NoLimit"] + nFinalAddNum
		end
	end
	
	local sUserName = Get_UserName(nUserId)
	local nUserNowSex = Get_UserSex(nUserId)
	
	local nRankIndex = tValentinesDay2019NPC_Cont["RankIndex"] * 10 + nUserNowSex
	local nAnotherRankIndex = tValentinesDay2019NPC_Cont["AnotherRankIndex"][nRankIndex]
	
	-- 进入对应排行榜
	RankingFunc_SetInfo(nRankIndex,nNewNum6,nUserId,sUserName)
	RankingFunc_RestSortRankingList(nRankIndex)
	
	-- 清除性别不符的排行榜数据（防止玩家变性）
	if RankingFunc_GetUserInRank(nAnotherRankIndex,nUserId) ~= 0 then
		RankingFunc_SetInfo(nAnotherRankIndex,0,nUserId,sUserName)
		RankingFunc_RestSortRankingList(nAnotherRankIndex)
	end

	return nFinalAddNum
end

-- 
function ValentinesDay2019NPC_Rank(nNewNum6)
	local nUserId = Get_UserId()
	local sUserName = Get_UserName(nUserId)
	local nUserNowSex = Get_UserSex(nUserId)
	
	local nRankIndex = tValentinesDay2019NPC_Cont["RankIndex"] * 10 + nUserNowSex
	local nAnotherRankIndex = tValentinesDay2019NPC_Cont["AnotherRankIndex"][nRankIndex]
	
	-- 进入对应排行榜
	RankingFunc_SetInfo(nRankIndex,nNewNum6,nUserId,sUserName)
	RankingFunc_RestSortRankingList(nRankIndex)
	
	-- 清除性别不符的排行榜数据（防止玩家变性）
	if RankingFunc_GetUserInRank(nAnotherRankIndex,nUserId) ~= 0 then
		RankingFunc_SetInfo(nAnotherRankIndex,0,nUserId,sUserName)
		RankingFunc_RestSortRankingList(nAnotherRankIndex)
	end
end

-- 共享甜蜜值
function ValentinesDay2019NPC_ShareSweetValue(nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	
	-- 判断活动时间
	if not Sys_ChkFullTime(tValentinesDay2019NPC_Cont["ActivityTime"]) then
		ValentinesDay2019NPC_TimeOutReturn(nUserId)
		return 0
	end
	if not Sys_ChkDayTime(tValentinesDay2019NPC_Cont["DayTime"]) then
		ValentinesDay2019NPC_TimeOutReturn(nUserId)
		return 0
	end
	
	-- 判断是否有伴侣
	if ValentinesDay2019NPC_GetStcValue(2) == 0 then
		
		return 0 
	end
	
	-- 初始化约会地图数据
	ValentinesDay2019NPC_DateInfoInit(nUserId)
	
	local bChange = false
	local nNowNum4 = ValentinesDay2019NPC_GetStcValue(4,nUserId)
	local nLeftLimitNum = tValentinesDay2019NPC_Cont["DailySubmitLimit"] - nNowNum4
	local nAddLimitNum = tValentinesDay2019NPC_DateInfo[nUserId]["Left"]["Limit"]
	local nAddNoLimitNum = tValentinesDay2019NPC_DateInfo[nUserId]["Left"]["NoLimit"]
	
	if nLeftLimitNum < 0 then
		nLeftLimitNum = 0
	end
	if nAddLimitNum > nLeftLimitNum then
		nAddLimitNum = nLeftLimitNum
	end
	
	local nOldNum4 = ValentinesDay2019NPC_GetStcValue(4,nUserId)
	local nOldNum5 = ValentinesDay2019NPC_GetStcValue(5,nUserId)
	local nOldNum6 = ValentinesDay2019NPC_GetStcValue(6,nUserId)
	local nNewNum4 = nOldNum4
	local nNewNum5 = nOldNum5
	local nNewNum6 = nOldNum6
	
	
	if nAddLimitNum > 0 then
		nNewNum4 = nNewNum4 + nAddLimitNum
		nNewNum5 = nNewNum5 + nAddLimitNum
		nNewNum6 = nNewNum6 + nAddLimitNum
		bChange = true
	end
	
	if nAddNoLimitNum > 0 then
		nNewNum5 = nNewNum5 + nAddNoLimitNum
		nNewNum6 = nNewNum6 + nAddNoLimitNum
		bChange = true
	end
	
	if not bChange then
		return 0
	end
	
	ValentinesDay2019NPC_SetStcValue(4,nNewNum4,nUserId)
	tValentinesDay2019NPC_DateInfo[nUserId]["Left"]["Limit"] = 0
	ValentinesDay2019NPC_SetStcValue(5,nNewNum5,nUserId)
	ValentinesDay2019NPC_SetStcValue(6,nNewNum6,nUserId)
	tValentinesDay2019NPC_DateInfo[nUserId]["Left"]["NoLimit"] = 0
	
	-- 阶段播报
	ValentinesDay2019NPC_StepBrodcast(nOldNum5,nNewNum5,nUserId)
	-- 每日奖励
	ValentinesDay2019NPC_DailyAward(nOldNum5,nNewNum5,nUserId)
	-- 总奖励
	ValentinesDay2019NPC_TotalAward(nOldNum6,nNewNum6,nUserId)
	
	
	local sUserName = Get_UserName(nUserId)

	local nUserNowSex = Get_UserSex(nUserId)
	local nRankIndex = tValentinesDay2019NPC_Cont["RankIndex"] * 10 + nUserNowSex
	local nAnotherRankIndex = tValentinesDay2019NPC_Cont["AnotherRankIndex"][nRankIndex]
	
	-- 进入对应排行榜
	local nNowNum6 = ValentinesDay2019NPC_GetStcValue(6,nUserId)
	
	RankingFunc_SetInfo(nRankIndex,nNowNum6,nUserId,sUserName)
	RankingFunc_RestSortRankingList(nRankIndex)
	-- 清除性别不符的排行榜数据（防止玩家变性）
	if RankingFunc_GetUserInRank(nAnotherRankIndex,nUserId) ~= 0 then
		RankingFunc_SetInfo(nAnotherRankIndex,0,nUserId,sUserName)
		RankingFunc_RestSortRankingList(nAnotherRankIndex)
	end
	
	-- 系统通知
	User_TalkChannel2005(string.format(tValentinesDay2019NPC_Text["Talk"]["Share"],nAddLimitNum + nAddNoLimitNum),nUserId)
	return nAddLimitNum + nAddNoLimitNum
end

-- 获得当前甜蜜值阶段
function ValentinesDay2019NPC_GetStep(nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nPartnerId = ValentinesDay2019NPC_GetStcValue(2,nUserId)
	local nNpcPartnerId = ValentinesDay2019NPC_GetStcValue(3,nUserId)

	-- 判断是否已有伴侣
	if nPartnerId == 0 and nNpcPartnerId == 0 then
		return 0
	end
	-- 对象在线
	local nSetUserId = nUserId
	if nPartnerId ~= 0 then
		if Get_UserName(nPartnerId) == "null" then  
			return 0
		end

		if not User_IsTeamLeader(nUserId) then
			nSetUserId = nPartnerId
		end
	end
	
	local nNum = ValentinesDay2019NPC_GetStcValue(5,nSetUserId)
	if nNum >= tValentinesDay2019NPC_SweetStep[1] and nNum < tValentinesDay2019NPC_SweetStep[2] then
		return 1
	end
	if nNum >= tValentinesDay2019NPC_SweetStep[2] and nNum < tValentinesDay2019NPC_SweetStep[3] then
		return 2
	end
	if nNum >= tValentinesDay2019NPC_SweetStep[3] and nNum < tValentinesDay2019NPC_SweetStep[4] then
		return 3
	end
	if nNum >= tValentinesDay2019NPC_SweetStep[4] then
		return 4
	end
	return 0
end
	

-- 地图光效初始化
function ValentinesDay2019NPC_EffectInit(nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nMapId = Get_UserMapId(nUserId)

	local nMapDoc = Get_MapDoc(nMapId)
	local nStep = ValentinesDay2019NPC_GetStep(nUserId)
	
	for i,v in pairs(tValentinesDay2019NPC_EffectStep) do
		for ii,vv in pairs(v) do
			Trap_DelMapTrap(nMapId,vv)	
			if i <= nStep then
				local nPosX = tValentinesDay2019NPC_DateInfo[nUserId]["Effect"][nMapDoc][vv][1]
				local nPosY = tValentinesDay2019NPC_DateInfo[nUserId]["Effect"][nMapDoc][vv][2]
				Trap_CreateMapTrap(vv,vv,0,nMapId,nPosX,nPosY,5,5)
			end
		end
	end
end

-- 提交后跳转回对白
function ValentinesDay2019NPC_SubmitReturnDialog(nItemtypeId)
	local nUserId = Get_UserId()
	local bLimit = false
	-- 是否在副本内
	if not ValentinesDay2019NPC_ChkInMap(nUserId) then
		return
	end
	-- 限制物品
	for i,v in pairs(tValentinesDay2019NPC_Submit) do
		if nItemtypeId == i then
			bLimit = true
			break
		end
	end
	
	if bLimit then
		for i,v in pairs(tValentinesDay2019NPC_Submit) do
			if Item_ChkItem(i) then
				local nNpcId = tValentinesDay2019NPC_Cont["DesignNpc"]
				ValentinesDay2019NPC_DesignNpcFunction(nNpcId)
				break
			end
		end
	else
		local bHave = false
		for i,v in pairs(tValentinesDay2019NPC_Gift) do
			if Item_ChkItem(v) then
				bHave = true
				ValentinesDay2019NPC_UseGift(v)
				break
			end
		end
		if not bHave then
			for i,v in pairs(tValentinesDay2019NPC_FlowerTicket) do
				if Item_ChkItem(v) then
					ValentinesDay2019NPC_UseFlowerTicket(v)
					break
				end
			end	
		end
	end
end

-- 约会地图内npc初始化
function ValentinesDay2019NPC_NpcInit(nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	
	local nMapId = Get_UserMapId(nUserId)
	local nMapDoc = Get_MapDoc(nMapId)
	
	for i,v in pairs(tValentinesDay2019NPC_DateNpc) do 
		local bCreate = true
		if v["Check"] ~= nil then
			if ValentinesDay2019NPC_GetStcValue(3,nUserId) ~= i then
				bCreate = false
			end
			if ValentinesDay2019NPC_GetStcValue(2,nUserId) ~= 0 then
				bCreate = false
			end
		end
		if bCreate then
			local sName = tValentinesDay2019NPC_Text["NpcName"][i]
			local nLookface = v["Lookface"]
			local tPos = v["Pos"][nMapDoc]
			local nTask0 = v["Task0"]
			local nTraptype = v["Traptype"]
			local nIsDateNpc = v["IsDateNpc"]

			Npc_CreateDynaNpc(sName,2,0,nLookface,0,0,nMapId,tPos[1],tPos[2],0,0,0,nTask0)
			if nTraptype ~= nil then
				Trap_CreateMapTrap(nTraptype,nTraptype,0,nMapId,tPos[1],tPos[2],0,0)
			end
		end
	end
	
end

-- 阶段播报
function ValentinesDay2019NPC_StepBrodcast(nOldNum,nNewNum,nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local sUserName = Get_UserName(nUserId)
	for i,v in pairs(tValentinesDay2019NPC_SweetStep) do 
		if v > nOldNum and v <= nNewNum then
			ValentinesDay2019NPC_SetStcValue(9,0)
			Sys_SystemBroadcast(string.format(tValentinesDay2019NPC_Text["Brodcast"]["Step"][v],sUserName))
		end
	end
end

-- 每日奖励
function ValentinesDay2019NPC_DailyAward(nOldNum,nNewNum,nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local sUserName = Get_UserName(nUserId)
	for i,v in pairs(tValentinesDay2019NPC_DailyAward) do 
		if i > nOldNum and i <= nNewNum then
			local nSpace = RewardTemplate_GetRewardSpace(tValentinesDay2019NPC_AwardItem["DailyAward"][i],nUserId)
			if User_CheckLeftSpace(nSpace,nUserId) then
				RewardTemplate_UseItemAndMsg(tValentinesDay2019NPC_AwardItem["DailyAward"][i],nUserId)
				Sys_MsgBox(tValentinesDay2019NPC_Text["MsgBox"]["DailyAward"][i],nil,nil,nUserId)
			else
				local nActionId = v["ActionId"]
				local nExistDay = v["ExistDay"]
				local sTitle = v["Title"]
				local sSender = v["Sender"]
				local sContent = v["Content"]
				Sys_SendMail(nUserId,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent)
			end
			

		end
	end
end


-- 总奖励
function ValentinesDay2019NPC_TotalAward(nOldNum,nNewNum,nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local sUserName = Get_UserName(nUserId)
	for i,v in pairs(tValentinesDay2019NPC_TotalAward) do 
		if i > nOldNum and i <= nNewNum then
			local nSpace = RewardTemplate_GetRewardSpace(tValentinesDay2019NPC_AwardItem["TotalAward"][i],nUserId)
			if User_CheckLeftSpace(nSpace,nUserId) then
				RewardTemplate_UseItemAndMsg(tValentinesDay2019NPC_AwardItem["TotalAward"][i],nUserId)
				Sys_MsgBox(tValentinesDay2019NPC_Text["MsgBox"]["TotalAward"][i],nil,nil,nUserId)
			else
				local nActionId = v["ActionId"]
				local nExistDay = v["ExistDay"]
				local sTitle = v["Title"]
				local sSender = v["Sender"]
				local sContent = v["Content"]
				Sys_SendMail(nUserId,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent)
			end
			
			Sys_SystemBroadcast(string.format(tValentinesDay2019NPC_Text["Brodcast"]["TotalAward"][i],sUserName))
			-- 打log
			Sys_SaveActionFestivalLog(string.format(tValentinesDay2019NPC_Log[5],i),nUserId)	
		end
	end
end

	
-- 时间转文字
function ValentinesDay2019NPC_TimeToText(sText,sTime)
	local _1,sBeginMonth,sBeginDay,_2,_3,_4,sEndMonth,sEndDay,_5,_6 = CommonFunc_AnalysisActivityTime(sTime)
	local sNewText = string.format(sText,sBeginMonth,sBeginDay,sEndMonth,sEndDay)
	return sNewText
end

-- 查看排行榜
function ValentinesDay2019NPC_SeeRank(nNpcId,nIndex)
	local nUserId = Get_UserId()
	local nRankIndex = tValentinesDay2019NPC_Cont["SeeRank"][nIndex]
	
	-- 初始化数据
	local sUserName = Get_UserName(nUserId)
	local nUserNowSex = Get_UserSex(nUserId)
	local nNowNum6 = ValentinesDay2019NPC_GetStcValue(6,nUserId)
	
	local nInitRankIndex = tValentinesDay2019NPC_Cont["RankIndex"] * 10 + nUserNowSex
	local nAnotherRankIndex = tValentinesDay2019NPC_Cont["AnotherRankIndex"][nInitRankIndex]
	
	-- 进入对应排行榜
	RankingFunc_SetInfo(nInitRankIndex,nNowNum6,nUserId,sUserName)
	RankingFunc_RestSortRankingList(nInitRankIndex)
	
	
	-- 清除性别不符的排行榜数据（防止玩家变性）
	if RankingFunc_GetUserInRank(nAnotherRankIndex,nUserId) ~= 0 then
		RankingFunc_SetInfo(nAnotherRankIndex,0,nUserId,sUserName)
		RankingFunc_RestSortRankingList(nAnotherRankIndex)
	end
	
	
	RankingFunc_RestSortRankingList(nRankIndex)
	local tRank = RankingFunc_GetNowData(nRankIndex)
	for i = 1,10 do
		local sText = "Text4" .. nIndex .. (i + 3)
		local nNum
		local sUserName
		if tRank == nil or tRank[i] == nil or tRank[i]["Score"] == 0 then
			nNum = 0
			sUserName = tValentinesDay2019NPC_Text["NoBody"]
		else
			nNum = tRank[i]["Score"]
			sUserName = tRank[i]["UserName"]
		end
		
		--名字处理
		sUserName = string.gsub(sUserName, "<", " ")
		sUserName = string.gsub(sUserName, ">", " ")
		
		tNpcGossip[nNpcId][sText] = string.format(tValentinesDay2019NPC_Text[nNpcId][sText],Sys_CenterAline(sUserName,8,tostring(nNum),23))
	end
	
	LinkNpcGossipFunc_New(nNpcId,"4-" .. nIndex)
end
	
-- 判断背包里有没有任务物品
function ValentinesDay2019NPC_ChkActivityGift()
	local nUserId = Get_UserId()
	local bHave = false
	for i,v in pairs(tValentinesDay2019NPC_SubmitNoLimit) do
		if Item_ChkItem(i) then
			bHave = true
			break
		end
	end
	return bHave
end

-- 判断背包里有没有任务物品--花
function ValentinesDay2019NPC_ChkActivityFlower()
	local nUserId = Get_UserId()
	local bHave = false
	for i,v in pairs(tValentinesDay2019NPC_Submit) do
		if Item_ChkItem(i) then
			bHave = true
			break
		end
	end
	return bHave
end

-- 指向改变位置
function ValentinesDay2019NPC_LinkToChangePos(nNpcId)
	local nUserId = Get_UserId()
	local nPartnerId = ValentinesDay2019NPC_GetStcValue(2,nUserId)
	local nNpcPartnerId = ValentinesDay2019NPC_GetStcValue(3,nUserId)
	
	if not ValentinesDay2019NPC_ChkInMap() then
		return 
	end
	
	-- 判断是否已有伴侣
	if nPartnerId == 0 and nNpcPartnerId == 0 then
		ValentinesDay2019NPC_TimeOutReturn()
		return
	end
	
	-- 对象在线
	if nPartnerId ~= 0 then
		if not ((Get_UserName(nPartnerId) ~= "null") and (Get_UserMapId(nUserId) == Get_UserMapId(nPartnerId))) then
			Sys_MsgBox(tValentinesDay2019NPC_Text["MsgBox"]["PartnerNoHereForMove"],nil,nil,nUserId)
			return
		end
	end
	
	if ValentinesDay2019NPC_GetStep() == 0 then
		LinkNpcGossipFunc_New(nNpcId,"4-3")
		return
	end
	LinkNpcGossipFunc_New(nNpcId,"4-2")
end

-- 改变光效位置对白
function ValentinesDay2019NPC_ChangePosDialog(nNpcId,nTraptype)
	local nUserId = Get_UserId()
	-- 判断活动时间
	if not Sys_ChkFullTime(tValentinesDay2019NPC_Cont["ActivityTime"]) then
		ValentinesDay2019NPC_TimeOutReturn(nUserId)
		return 0
	end
	if not Sys_ChkDayTime(tValentinesDay2019NPC_Cont["DayTime"]) then
		ValentinesDay2019NPC_TimeOutReturn(nUserId)
		return 0
	end
	
	if not ValentinesDay2019NPC_ChkInMap() then
		return 0
	end
	
	local nPartnerId = ValentinesDay2019NPC_GetStcValue(2,nUserId)
	local nNpcPartnerId = ValentinesDay2019NPC_GetStcValue(3,nUserId)
	
	-- 判断是否已有伴侣
	if nPartnerId == 0 and nNpcPartnerId == 0 then
		ValentinesDay2019NPC_TimeOutReturn()
		return
	end
	
	-- 对象在线
	if nPartnerId ~= 0 then
		if not ((Get_UserName(nPartnerId) ~= "null") and (Get_UserMapId(nUserId) == Get_UserMapId(nPartnerId))) then
			Sys_MsgBox(tValentinesDay2019NPC_Text["MsgBox"]["PartnerNoHereForMove"],nil,nil,nUserId)
			return
		end
	end
	
	local sTraptypeName = tValentinesDay2019NPC_Text["TraptypeName"][nTraptype]
	local nSetUserId = nUserId
	if nPartnerId ~= 0 then
		if not User_IsTeamLeader(nUserId) then
			nSetUserId = nPartnerId
		end
	end
	local nMapId = Get_UserMapId(nSetUserId)
	local nMapDoc = Get_MapDoc(nMapId)
	local nPosX = tValentinesDay2019NPC_DateInfo[nSetUserId]["Effect"][nMapDoc][nTraptype][1]
	local nPosY = tValentinesDay2019NPC_DateInfo[nSetUserId]["Effect"][nMapDoc][nTraptype][2]
	Sys_DialogText(string.format(tValentinesDay2019NPC_Text[nNpcId]["Text441"],sTraptypeName,sTraptypeName,nPosX,nPosY))
	Sys_DialogOptEdit(" ",10,string.format("ValentinesDay2019NPC_ChangePos</N>%d</N>%d",nNpcId,nTraptype))
	Sys_DialogFace(nNpcId)
	Sys_DialogEnd()
end
	
-- 改变光效位置
function ValentinesDay2019NPC_ChangePos(nNpcId,nTraptype)
	local nUserId = Get_UserId()
	-- 判断活动时间
	if not Sys_ChkFullTime(tValentinesDay2019NPC_Cont["ActivityTime"]) then
		ValentinesDay2019NPC_TimeOutReturn(nUserId)
		return 0
	end
	if not Sys_ChkDayTime(tValentinesDay2019NPC_Cont["DayTime"]) then
		ValentinesDay2019NPC_TimeOutReturn(nUserId)
		return 0
	end
	if not ValentinesDay2019NPC_ChkInMap() then
		return 0
	end
	
	local nPartnerId = ValentinesDay2019NPC_GetStcValue(2,nUserId)
	local nNpcPartnerId = ValentinesDay2019NPC_GetStcValue(3,nUserId)

	-- 判断是否已有伴侣
	if nPartnerId == 0 and nNpcPartnerId == 0 then
		ValentinesDay2019NPC_TimeOutReturn()
		return
	end
	
	-- 对象在线
	if nPartnerId ~= 0 then
		if not ((Get_UserName(nPartnerId) ~= "null") and (Get_UserMapId(nUserId) == Get_UserMapId(nPartnerId))) then
			Sys_MsgBox(tValentinesDay2019NPC_Text["MsgBox"]["PartnerNoHereForMove"],nil,nil,nUserId)
			return
		end
	end
	
	local nMapId = Get_UserMapId(nUserId)
	local nMapDoc = Get_MapDoc(nMapId)
	-- 判断输入格式
	local sInput = Get_SysAcceptStr()
	local nPosX,nPosY = string.match(sInput,"x(%d+)y(%d+)")
	local nPosX = tonumber(nPosX)
	local nPosY = tonumber(nPosY)
	if nPosX == nil or nPosY == nil then
		local sFunc = string.format("ValentinesDay2019NPC_ChangePosDialog</N>%d</N>%d",nNpcId,nTraptype)
		Sys_MsgBox(tValentinesDay2019NPC_Text["MsgBox"]["InputError"],sFunc,nil,nUserId)
		return
	end
	
	
	-- 初始化约会地图数据
	ValentinesDay2019NPC_DateInfoInit(nUserId)
	
	-- 更改光效坐标并生效
	local nSetUserId = nUserId
	if nPartnerId ~= 0 then
		if not User_IsTeamLeader(nUserId) then
			nSetUserId = nPartnerId
		end
	end
	tValentinesDay2019NPC_DateInfo[nSetUserId]["Effect"][nMapDoc][nTraptype] = {nPosX,nPosY}
	
	ValentinesDay2019NPC_EffectInit(nSetUserId)
	
	-- 提示
	local sTraptypeName = tValentinesDay2019NPC_Text["TraptypeName"][nTraptype]
	Sys_MsgBox(string.format(tValentinesDay2019NPC_Text["MsgBox"]["ChangePos"],sTraptypeName,nPosX,nPosY),nil,nil,nUserId)
end

-- 指向网址
function ValentinesDay2019NPC_LinkToWeb(nIndex)
	local sLink = tValentinesDay2019NPC_Cont["WebLink"][nIndex]
	local nUserId = Get_UserId()
	User_SendWebDialog(sLink,nUserId)
end

-- 上线弹网址
function ValentinesDay2019NPC_LoginInWeb()
	-- 判断活动时间
	if not Sys_ChkFullTime(tValentinesDay2019NPC_Cont["ActivityTime"]) then
		return
	end
	
	if ValentinesDay2019NPC_GetStcValue(1) > 0 then
		return
	end
	
	ValentinesDay2019NPC_SetStcValue(1,1)
	ValentinesDay2019NPC_LinkToWeb(3)
end

-- 传送出地图
function ValentinesDay2019NPC_TimeOutReturn(nNowUserId)
	local tTable = tValentinesDay2019NPC_TimeOutReturn
	-- 激情服判断
	--	if SpecialServer_ChkNoGiftServer() then
	--		tTable = tValentinesDay2019NPC_TimeOutReturn_NoGift
	--	end
	local nUserId = nNowUserId or Get_UserId()
	
	if ValentinesDay2019NPC_ChkInMap(nUserId) then
		if User_UserRandBoundTrans(tTable[1],tTable[2],tTable[3],5,5,1,nUserId) then
			User_TalkChannel2005(string.format(tValentinesDay2019NPC_Text["Talk"]["TimeOutReturn"],Get_MapName(tTable[1])),nUserId)
		end
	end
end

-- 传送出地图 二次确认
function ValentinesDay2019NPC_TimeOutReturnConfirm()
	local nUserId = Get_UserId()
	local sFunc = "ValentinesDay2019NPC_TimeOutReturn</N>" .. nUserId
	Sys_MsgBox(tValentinesDay2019NPC_Text["MsgBox"]["TimeOutReturnConfirm"],sFunc,nil,nUserId)
end

-- 判断是否在副本地图内
function ValentinesDay2019NPC_ChkInMap(nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nMapId = Get_UserMapId(nUserId)
	local nMapDoc = Get_MapDoc(nMapId)
	local bIn = false
	for i,v in pairs(tValentinesDay2019NPC_CheckMapDoc) do
		if nMapDoc == v then
			bIn = true
			break
		end
	end
	return bIn
end



-- 获得气力值
function ValentinesDay2019NPC_GetStrength()
	local nNum = ValentinesDay2019NPC_GetStcValue(9)
	if nNum > 0 then
		return
	end
	ValentinesDay2019NPC_SetStcValue(9,1)
	RewardTemplate_UseItemAndMsg(tValentinesDay2019NPC_AwardItem["Strength"])
end

-- 数据清理
function ValentinesDay2019NPC_DataClear()
	tValentinesDay2019NPC_DateInfo = {}
	tValentinesDay2019NPC_DateInfo["Default"] = {}
	tValentinesDay2019NPC_DateInfo["Default"]["Left"] = {}
	tValentinesDay2019NPC_DateInfo["Default"]["Left"]["Limit"] = 0
	tValentinesDay2019NPC_DateInfo["Default"]["Left"]["NoLimit"] = 0
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"] = {}
	-- 流月城 用mapdoc做索引
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][10201] = {}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][10201][2211] = {234,108}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][10201][2212] = {258,109}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][10201][2213] = {244,96}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][10201][2214] = {246,119}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][10201][2215] = {232,113}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][10201][2216] = {229,97}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][10201][2217] = {235,91}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][10201][2218] = {249,94}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][10201][2219] = {240,123}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][10201][2220] = {255,121}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][10201][2221] = {260,115}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][10201][2222] = {261,104}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][10201][2223] = {232,124}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][10201][2224] = {253,131}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][10201][2225] = {269,114}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][10201][2226] = {259,95}
	-- 天空之城 用mapdoc做索引
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][1738] = {}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][1738][2211] = {97,107}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][1738][2212] = {84,93}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][1738][2213] = {91,85}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][1738][2214] = {106,97}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][1738][2215] = {84,99}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][1738][2216] = {97,84}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][1738][2217] = {97,113}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][1738][2218] = {111,98}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][1738][2219] = {83,111}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][1738][2220] = {95,120}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][1738][2221] = {115,99}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][1738][2222] = {105,85}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][1738][2223] = {114,109}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][1738][2224] = {105,115}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][1738][2225] = {76,92}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][1738][2226] = {91,77}
	-- 浪漫沙海 用mapdoc做索引
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][4020] = {}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][4020][2211] = {75,68}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][4020][2212] = {78,63}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][4020][2213] = {93,74}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][4020][2214] = {86,81}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][4020][2215] = {71,71}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][4020][2216] = {82,59}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][4020][2217] = {83,85}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][4020][2218] = {97,71}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][4020][2219] = {76,80}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][4020][2220] = {96,66}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][4020][2221] = {94,87}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][4020][2222] = {99,81}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][4020][2223] = {65,83}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][4020][2224] = {94,57}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][4020][2225] = {100,67}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][4020][2226] = {75,87}
	-- 萦梦溪 用mapdoc做索引
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][10281] = {}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][10281][2211] = {20,38}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][10281][2212] = {34,32}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][10281][2213] = {35,22}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][10281][2214] = {16,17}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][10281][2215] = {11,23}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][10281][2216] = {24,21}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][10281][2217] = {27,14}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][10281][2218] = {26,39}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][10281][2219] = {30,40}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][10281][2220] = {22,23}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][10281][2221] = {37,39}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][10281][2222] = {29,24}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][10281][2223] = {17,14}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][10281][2224] = {37,28}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][10281][2225] = {28,49}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][10281][2226] = {34,20}
	-- 忘尘谷 用mapdoc做索引
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][3983] = {}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][3983][2211] = {67,71}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][3983][2212] = {56,70}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][3983][2213] = {67,80}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][3983][2214] = {59,80}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][3983][2215] = {54,57}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][3983][2216] = {66,56}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][3983][2217] = {77,86}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][3983][2218] = {52,80}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][3983][2219] = {43,72}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][3983][2220] = {44,63}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][3983][2221] = {79,82}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][3983][2222] = {83,74}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][3983][2223] = {82,63}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][3983][2224] = {74,93}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][3983][2225] = {38,72}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][3983][2226] = {29,62}
	-- 凤火岛 用mapdoc做索引
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][3851] = {}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][3851][2211] = {24,22}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][3851][2212] = {38,23}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][3851][2213] = {21,36}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][3851][2214] = {12,26}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][3851][2215] = {33,35}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][3851][2216] = {28,20}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][3851][2217] = {27,39}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][3851][2218] = {37,29}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][3851][2219] = {35,47}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][3851][2220] = {42,42}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][3851][2221] = {45,36}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][3851][2222] = {40,24}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][3851][2223] = {35,54}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][3851][2224] = {42,49}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][3851][2225] = {47,29}
	tValentinesDay2019NPC_DateInfo["Default"]["Effect"][3851][2226] = {32,35}
end

-- 返回日期
function ValentinesDay2019NPC_ReturnDate(nNeedDay)
	local nNowDay = CommonFunc_DisActivityTime(tValentinesDay2019NPC_Cont["ActivityTime"])
	if nNowDay >= nNeedDay then
		return tValentinesDay2019NPC_Text["HaveOpen"]
	else
		local nOpenTime = os.time() + (nNeedDay - nNowDay) * 86400
		local tDate = os.date("*t",nOpenTime)
		return string.format(tValentinesDay2019NPC_Text["NoOpen"],tonumber(tDate["month"]),tonumber(tDate["day"]))
	end
end

-- 购买浪漫礼物
function ValentinesDay2019NPC_BuyGift(nNpcId,nItemtypeId)
	-- 判断活动时间
	if not Sys_ChkFullTime(tValentinesDay2019NPC_Cont["ActivityTime"]) then
		ValentinesDay2019NPC_TimeOutReturn()
		return 0
	end
	if not Sys_ChkDayTime(tValentinesDay2019NPC_Cont["DayTime"]) then
		ValentinesDay2019NPC_TimeOutReturn()
		return 0
	end
	if not ValentinesDay2019NPC_ChkInMap() then
		return 0
	end
	
	local nPrize = tValentinesDay2019NPC_Prize[nItemtypeId]
	local sItemtypeName = Get_ItemtypeName(nItemtypeId)
	local sItemtypeNameWithDesc = string.format(tValentinesDay2019NPC_Text["ItemDesc"][nItemtypeId],sItemtypeName)
	tNpcGossip[nNpcId]["Text621"] = string.format(tValentinesDay2019NPC_Text[nNpcId]["Text621"],sItemtypeNameWithDesc)
	tNpcGossip[nNpcId]["Option621"] = string.format(tValentinesDay2019NPC_Text[nNpcId]["Option621"],nPrize)
	tNpcGossip[nNpcId]["Option622"] = string.format(tValentinesDay2019NPC_Text[nNpcId]["Option622"],nPrize*10)
	-- tNpcGossip[nNpcId]["Option623"] = string.format(tValentinesDay2019NPC_Text[nNpcId]["Option623"],nPrize*100)
	
	tNpcGossip[nNpcId]["OptionFunc621"] = string.format("ValentinesDay2019NPC_BuyGiftConfirm</N>%d</N>%d</N>%d",nNpcId,nItemtypeId,1)
	tNpcGossip[nNpcId]["OptionFunc622"] = string.format("ValentinesDay2019NPC_BuyGiftConfirm</N>%d</N>%d</N>%d",nNpcId,nItemtypeId,10)
	-- tNpcGossip[nNpcId]["OptionFunc623"] = string.format("ValentinesDay2019NPC_BuyGiftConfirm</N>%d</N>%d</N>%d",nNpcId,nItemtypeId,100)
	
	LinkNpcGossipFunc_New(nNpcId,"6-2")
end

-- 购买浪漫礼物
function ValentinesDay2019NPC_BuyGiftConfirm(nNpcId,nItemtypeId,nNum)
	-- 判断活动时间
	if not Sys_ChkFullTime(tValentinesDay2019NPC_Cont["ActivityTime"]) then
		ValentinesDay2019NPC_TimeOutReturn()
		return 0
	end
	if not Sys_ChkDayTime(tValentinesDay2019NPC_Cont["DayTime"]) then
		ValentinesDay2019NPC_TimeOutReturn()
		return 0
	end
	
	if not ValentinesDay2019NPC_ChkInMap() then
		return 0
	end
	
	local nUserId = Get_UserId()
	local nPrize = tValentinesDay2019NPC_Prize[nItemtypeId] * nNum
	
	-- 判断天石
	if Get_UserEMoney(nUserId) < nPrize then
		Sys_MsgBox(tValentinesDay2019NPC_Text["MsgBox"]["NoEMoney"],nil,nil,nUserId)
		return
	end
	
	-- 判断背包空间
	local tReward = tValentinesDay2019NPC_AwardItem["BuyGift"][nItemtypeId][nNum]
	if not RewardTemplate_CheckSpace(tReward,nUserId) then
		return
	end
	
	local sItemtypeName = Get_ItemtypeName(nItemtypeId)
	local sItemtypeNameWithDesc = string.format(tValentinesDay2019NPC_Text["ItemDesc"][nItemtypeId],sItemtypeName)
	
	tNpcGossip[nNpcId]["Text631"] = string.format(tValentinesDay2019NPC_Text[nNpcId]["Text631"],nPrize,nNum,sItemtypeNameWithDesc)
	tNpcGossip[nNpcId]["OptionFunc631"] = string.format("ValentinesDay2019NPC_BuyGiftConfirmConfirm</N>%d</N>%d</N>%d",nNpcId,nItemtypeId,nNum)
	
	LinkNpcGossipFunc_New(nNpcId,"6-3")
end

-- 购买浪漫礼物
function ValentinesDay2019NPC_BuyGiftConfirmConfirm(nNpcId,nItemtypeId,nNum)
	-- 判断活动时间
	if not Sys_ChkFullTime(tValentinesDay2019NPC_Cont["ActivityTime"]) then
		ValentinesDay2019NPC_TimeOutReturn()
		return 0
	end
	if not Sys_ChkDayTime(tValentinesDay2019NPC_Cont["DayTime"]) then
		ValentinesDay2019NPC_TimeOutReturn()
		return 0
	end
	if not ValentinesDay2019NPC_ChkInMap() then
		return 0
	end
	
	local nUserId = Get_UserId()
	local nPrize = tValentinesDay2019NPC_Prize[nItemtypeId] * nNum
	
	-- 判断天石
	if Get_UserEMoney(nUserId) < nPrize then
		Sys_MsgBox(tValentinesDay2019NPC_Text["MsgBox"]["NoEMoney"],nil,nil,nUserId)
		return
	end
	
	-- 判断背包空间
	local tReward = tValentinesDay2019NPC_AwardItem["BuyGift"][nItemtypeId][nNum]
	if not RewardTemplate_CheckSpace(tReward,nUserId) then
		return
	end
	
	-- 扣除天石
	local sEmoneyBuyLog = tValentinesDay2019NPC_EmoneyLog[nItemtypeId]
	if not User_AddEMoney(-1*nPrize,nUserId,sEmoneyBuyLog) then
		return
	end
	
	RewardTemplate_UseItemAndMsg(tReward,nUserId)
	
	LinkNpcGossipFunc_New(nNpcId,"6-1")
end

function ValentinesDay2019NPC_SuperLink(nNpcId)
	local nUserId = Get_UserId()
	local nMapId = Get_UserMapId(nUserId)
	local bIn = false
	for i,v in pairs(tValentinesDay2019NPC_CheckMapSuperLink) do
		if nMapId == v then
			bIn = true
			break
		end
	end
	if bIn then
		NpcPosition_PathFind(nNpcId)
	else
		local nNpcMapId,nNpcPosX,nNpcPosY = NpcPosition_Get(nNpcId)
		local sMapName = Get_MapName(nNpcMapId)
		local sNpcName = Get_NpcName(nNpcId)
		Sys_MsgBox(string.format(tValentinesDay2019NPC_Text["MsgBox"]["LearnAboutFromNpc"],sMapName,nNpcPosX,nNpcPosY,sNpcName),nil,nil,nUserId)
	end
end

-------------------------------------npc逻辑---------------------------------------
-- 23683	古月哥欠
-- 23684	吴雁祖
-- 23685	彭宇晏
-- 23686	扬超越
-- 23687	柳妍
-- 23688	刘亦非
tNpcFace[6453] = 1719
tNpcFace[6454] = 1720
tNpcFace[6455] = 1721
tNpcFace[6456] = 1722
tNpcFace[6457] = 1723
tNpcFace[6458] = 1724
for nNpcId = 23683,23688 do

	tNpcGossip[nNpcId] = tNpcGossip[nNpcId] or DefaultNpc:new{}
	tNpcGossip[nNpcId]["OptionHidden"] = 1
	tNpcGossip[nNpcId]["DialogueText"] = tValentinesDay2019NPC_Text[nNpcId]	
	-- 活动前
	tNpcGossip[nNpcId]["Text1-1"] = {111,112}
	tNpcGossip[nNpcId]["tOption1-1"] = {111}
	tNpcGossip[nNpcId]["ChkFunc1-1"] = function ()

		return CommonFunc_GetBeforeActivityTime(tValentinesDay2019NPC_Cont["ActivityTime"])
	end
	
	-- 活动后 同性
	tNpcGossip[nNpcId]["Text1-2"] = {121,122}
	tNpcGossip[nNpcId]["tOption1-2"] = {121}
	tNpcGossip[nNpcId]["ChkFunc1-2"] = function ()
		local nUserId = Get_UserId()
		if CommonFunc_GetAfterActivityTime(tValentinesDay2019NPC_Cont["ActivityTime"]) and Get_UserSex(nUserId) == tValentinesDay2019NPC_DateNpc[nNpcId]["Sex"] then
			return true
		else
			return false
		end
	end
	
	-- 活动后 异性
	tNpcGossip[nNpcId]["Text1-3"] = {131,132}
	tNpcGossip[nNpcId]["tOption1-3"] = {131}
	tNpcGossip[nNpcId]["ChkFunc1-3"] = function ()
		local nUserId = Get_UserId()
		if CommonFunc_GetAfterActivityTime(tValentinesDay2019NPC_Cont["ActivityTime"]) and Get_UserSex(nUserId) ~= tValentinesDay2019NPC_DateNpc[nNpcId]["Sex"] then
			return true
		else
			return false
		end
	end
	
	-- 活动中 等级不足

	tNpcGossip[nNpcId]["Text1-4"] = {141,142}
	tNpcGossip[nNpcId]["tOption1-4"] = {141}
	tNpcGossip[nNpcId]["ChkFunc1-4"] = function ()
		local nUserId = Get_UserId()
		if Sys_ChkFullTime(tValentinesDay2019NPC_Cont["ActivityTime"]) and (not ValentinesDay2019NPC_JudgeLevel(nUserId)) then

			return true
		else
			return false
		end
	end
	
	-- 活动中 等级达到 未组队 同性

	tNpcGossip[nNpcId]["Text1-5"] = {151,152}
	tNpcGossip[nNpcId]["tOption1-5"] = {151}
	tNpcGossip[nNpcId]["ChkFunc1-5"] = function ()

		return false
	end
	tNpcGossip[nNpcId]["OptionFunc151"] = "ValentinesDay2019NPC_GoFindNpc"
	
	
	-- 活动中 等级达到 已组队

	tNpcGossip[nNpcId]["Text1-6"] = {161,162}
	tNpcGossip[nNpcId]["tOption1-6"] = {161}
	tNpcGossip[nNpcId]["ChkFunc1-6"] = function ()
		local nUserId = Get_UserId()
		
		if Sys_ChkFullTime(tValentinesDay2019NPC_Cont["ActivityTime"]) and ValentinesDay2019NPC_JudgeLevel(nUserId) then
			if Get_UserTeamNumbers(nUserId) == 2 then
				return true
			else
				return false
			end
		else
			return false
		end
	end
	tNpcGossip[nNpcId]["OptionFunc161"] = "ValentinesDay2019NPC_GoDateMap</N>" .. tValentinesDay2019NPC_Cont["PlayerMap"]
	
	-- 活动中 等级达到 未组队 已和ta约会

	tNpcGossip[nNpcId]["Text1-7"] = {171,172}
	tNpcGossip[nNpcId]["tOption1-7"] = {171}
	tNpcGossip[nNpcId]["ChkFunc1-7"] = function ()
		local nUserId = Get_UserId()
		
		if Sys_ChkFullTime(tValentinesDay2019NPC_Cont["ActivityTime"]) and ValentinesDay2019NPC_JudgeLevel(nUserId) then
			if Get_UserTeamNumbers(nUserId) ~= 2 then
				local nPartnerId = ValentinesDay2019NPC_GetStcValue(3,nUserId)
				if nPartnerId == nNpcId then
					return true
				else
					return false
				end
			else
				return false
			end
		else
			return false
		end
	end
	tNpcGossip[nNpcId]["OptionFunc171"] = "ValentinesDay2019NPC_GoDateMap</N>" .. tValentinesDay2019NPC_Cont["NpcMap"]
	
	-- 活动中 等级达到 未组队 可以约ta
	tNpcGossip[nNpcId]["Text1-8"] = {181,182}
	tNpcGossip[nNpcId]["tOption1-8"] = {181}
	tNpcGossip[nNpcId]["ChkFunc1-8"] = function ()
		local nUserId = Get_UserId()
		
		if Sys_ChkFullTime(tValentinesDay2019NPC_Cont["ActivityTime"]) and ValentinesDay2019NPC_JudgeLevel(nUserId) then
			if Get_UserTeamNumbers(nUserId) ~= 2 then
				local nPartnerId = ValentinesDay2019NPC_GetStcValue(3,nUserId)
				if nPartnerId ~= nNpcId then
					return true
				else
					return false
				end
			else
				return false
			end
		else
			return false
		end
	end
	tNpcGossip[nNpcId]["OptionFunc181"] = "ValentinesDay2019NPC_DateNpc</N>" .. nNpcId
	
		
	-- 约会地图内 0阶段
	tNpcGossip[nNpcId]["Text9-1"] = {911,912}
	tNpcGossip[nNpcId]["tOption9-1"] = {911,912}
	tNpcGossip[nNpcId]["OptionFunc912"] = "ValentinesDay2019NPC_TimeOutReturn"
	
	-- 约会地图内 1阶段
	tNpcGossip[nNpcId]["Text9-2"] = {921,922}
	tNpcGossip[nNpcId]["tOption9-2"] = {921,922}
	tNpcGossip[nNpcId]["OptionFunc922"] = "ValentinesDay2019NPC_TimeOutReturn"
	
	-- 约会地图内 2阶段
	tNpcGossip[nNpcId]["Text9-3"] = {931,932}
	tNpcGossip[nNpcId]["tOption9-3"] = {931,932}
	tNpcGossip[nNpcId]["OptionFunc932"] = "ValentinesDay2019NPC_TimeOutReturn"
	
	-- 约会地图内 3阶段
	tNpcGossip[nNpcId]["Text9-4"] = {941,942}
	tNpcGossip[nNpcId]["tOption9-4"] = {941,942}
	tNpcGossip[nNpcId]["OptionFunc942"] = "ValentinesDay2019NPC_TimeOutReturn"	
	
	-- 约会地图内 4阶段
	tNpcGossip[nNpcId]["Text9-5"] = {951,952}
	tNpcGossip[nNpcId]["tOption9-5"] = {951,952}	
	tNpcGossip[nNpcId]["OptionFunc952"] = "ValentinesDay2019NPC_TimeOutReturn"
end

-- 孟飞
tNpcFace[6452] = 1971
tNpcGossip[23682] = tNpcGossip[23682] or DefaultNpc:new{}
tNpcGossip[23682]["OptionHidden"] = 1
tNpcGossip[23682]["DialogueText"] = tValentinesDay2019NPC_Text[23682]	
-- 活动前
tNpcGossip[23682]["Text1-1"] = {111,112,113,114,115,116,117,118}
tNpcGossip[23682]["tOption1-1"] = {111}
tNpcGossip[23682]["ChkFunc1-1"] = function ()
	local nUserId = Get_UserId()
	local nUserSex = Get_UserSex(nUserId)
	local sSex = tValentinesDay2019NPC_Text["Sex"][nUserSex]
	tNpcGossip[23682]["Text113"] = string.format(tValentinesDay2019NPC_Text[23682]["Text113"],sSex)
	-- 时间显示
	tNpcGossip[23682]["Text116"] = ValentinesDay2019NPC_TimeToText(tValentinesDay2019NPC_Text[23682]["Text116"],tValentinesDay2019NPC_Cont["ActivityTime"])
	-- 等级显示
	if ValentinesDay2019NPC_JudgeLevel() then
		tNpcGossip[23682]["Text117"] = ""
	else
		tNpcGossip[23682]["Text117"] = string.format(tValentinesDay2019NPC_Text[23682]["Text117"],tValentinesDay2019NPC_Cont["Level"])
	end
	return CommonFunc_GetBeforeActivityTime(tValentinesDay2019NPC_Cont["ActivityTime"])
end

-- 活动后
tNpcGossip[23682]["Text1-2"] = {121,122}
tNpcGossip[23682]["tOption1-2"] = {121}
tNpcGossip[23682]["ChkFunc1-2"] = function ()
	return CommonFunc_GetAfterActivityTime(tValentinesDay2019NPC_Cont["ActivityTime"])
end

-- 活动中 等级不足
tNpcGossip[23682]["Text1-3"] = {131,132,133,134,135,136,137,139,1310,1311,1312,1313,1314}
tNpcGossip[23682]["tOption1-3"] = {131}
tNpcGossip[23682]["ChkFunc1-3"] = function ()
	if Sys_ChkFullTime(tValentinesDay2019NPC_Cont["ActivityTime"]) and (not ValentinesDay2019NPC_JudgeLevel()) then

		local nUserId = Get_UserId()
		local nUserSex = Get_UserSex(nUserId)
		local sSex = tValentinesDay2019NPC_Text["Sex"][nUserSex]
		tNpcGossip[23682]["Text133"] = string.format(tValentinesDay2019NPC_Text[23682]["Text133"],sSex)

		-- 时间显示
		tNpcGossip[23682]["Text1312"] = ValentinesDay2019NPC_TimeToText(tValentinesDay2019NPC_Text[23682]["Text1312"],tValentinesDay2019NPC_Cont["ActivityTime"])
		-- 等级显示
		tNpcGossip[23682]["Text1313"] = string.format(tValentinesDay2019NPC_Text[23682]["Text1313"],tValentinesDay2019NPC_Cont["Level"])
		return true
	else
		return false
	end
end

-- 活动中 等级达到
tNpcGossip[23682]["Text1-4"] = {141,142,143,144,145,146,147,149,1410,1411,1412,1413}
tNpcGossip[23682]["tOption1-4"] = {145,142,143,144}
tNpcGossip[23682]["ChkFunc1-4"] = function ()
	if Sys_ChkFullTime(tValentinesDay2019NPC_Cont["ActivityTime"]) and ValentinesDay2019NPC_JudgeLevel() then
		local nUserId = Get_UserId()
		local nUserSex = Get_UserSex(nUserId)
		local sSex = tValentinesDay2019NPC_Text["Sex"][nUserSex]
		tNpcGossip[23682]["Text143"] = string.format(tValentinesDay2019NPC_Text[23682]["Text143"],sSex)
		local nNum5 = ValentinesDay2019NPC_GetStcValue(5,nUserId)
		local nNum6 = ValentinesDay2019NPC_GetStcValue(6,nUserId)
		-- 时间显示
		tNpcGossip[23682]["Text1412"] = ValentinesDay2019NPC_TimeToText(tValentinesDay2019NPC_Text[23682]["Text1412"],tValentinesDay2019NPC_Cont["ActivityTime"])
		return true
	else
		return false
	end
end
-- 开始约会
-- tNpcGossip[23682]["OptionFunc141"] = "ValentinesDay2019NPC_BeginDate</N>23682"
-- 查看真爱值奖励
tNpcGossip[23682]["OptionPoint142"] = "4-4"
-- 查看真爱男神榜
tNpcGossip[23682]["OptionFunc143"] = "ValentinesDay2019NPC_SeeRank</N>23682</N>5"

-- 查看真爱女神榜
tNpcGossip[23682]["OptionFunc144"] = "ValentinesDay2019NPC_SeeRank</N>23682</N>7"

-- 约会攻略
tNpcGossip[23682]["OptionFunc145"] = "ValentinesDay2019NPC_LinkToWeb</N>1"

-- 活动中 等级达到 没有组队或没有约会的NPC
tNpcGossip[23682]["Text4-2"] = {421}
tNpcGossip[23682]["tOption4-2"] = {421}
tNpcGossip[23682]["OptionFunc421"] = "ValentinesDay2019NPC_GoFindNpc"
	
-- 活动中 等级达到 没有组队或没有约会的NPC
tNpcGossip[23682]["Text4-3"] = {431}
tNpcGossip[23682]["tOption4-3"] = {431}
tNpcGossip[23682]["OptionFunc431"] = "ValentinesDay2019NPC_DatePlayer"

-- 活动中 等级达到 查看真爱值奖励
tNpcGossip[23682]["Text4-4"] = {441,442,443,444,445,446,447,448,449,4410,4411,4412,4413,4414}
tNpcGossip[23682]["tOption4-4"] = {441}
tNpcGossip[23682]["ChkFunc4-4"] = function ()
	local nUserId = Get_UserId()
	local nNum5 = ValentinesDay2019NPC_GetStcValue(5,nUserId)
	local nNum6 = ValentinesDay2019NPC_GetStcValue(6,nUserId)
	tNpcGossip[23682]["Text4413"] = string.format(tValentinesDay2019NPC_Text[23682]["Text4413"],nNum5,nNum6)
	return true
end
tNpcGossip[23682]["OptionFunc441"] = "LinkNpcMain"

-- 活动中 等级达到 查看真爱男神榜
tNpcGossip[23682]["Text4-5"] = {451,452,453,454,455,456,457,458,459,4510,4511,4512,4513,4514}
tNpcGossip[23682]["tOption4-5"] = {451,452}
tNpcGossip[23682]["OptionFunc451"] = "ValentinesDay2019NPC_SeeRank</N>23682</N>6"
tNpcGossip[23682]["OptionPoint452"] = "7-1"

-- 活动中 等级达到 查看真爱男神榜 查看真爱女神榜
tNpcGossip[23682]["Text4-6"] = {461,462,463,464,465,466,467,468,469,4610,4611,4612,4613,4614}
tNpcGossip[23682]["tOption4-6"] = {461}
tNpcGossip[23682]["OptionFunc461"] = "LinkNpcMain"

-- 活动中 等级达到 查看真爱女神榜
tNpcGossip[23682]["Text4-7"] = {471,472,473,474,475,476,477,478,479,4710,4711,4712,4713,4714}
tNpcGossip[23682]["tOption4-7"] = {471,472}
tNpcGossip[23682]["OptionFunc471"] = "ValentinesDay2019NPC_SeeRank</N>23682</N>8"
tNpcGossip[23682]["OptionPoint472"] = "7-1"

-- 活动中 等级达到 查看真爱女神榜 查看真爱男神榜
tNpcGossip[23682]["Text4-8"] = {481,482,483,484,485,486,487,488,489,4810,4811,4812,4813,4814}
tNpcGossip[23682]["tOption4-8"] = {481}
tNpcGossip[23682]["OptionFunc481"] = "LinkNpcMain"

-- 真爱值兑换鲜花细则
tNpcGossip[23682]["Text7-1"] = {711,712,713,714,715,716,717,718,719}
tNpcGossip[23682]["tOption7-1"] = {711}
tNpcGossip[23682]["OptionFunc711"] = "LinkNpcMain"


-- 花仙子
tNpcFace[6459] = 246
tNpcGossip[23689] = tNpcGossip[23689] or DefaultNpc:new{}
tNpcGossip[23689]["OptionHidden"] = 1
tNpcGossip[23689]["DialogueText"] = tValentinesDay2019NPC_Text[23689]	
-- 活动前
tNpcGossip[23689]["Text1-1"] = {111,112,113,114,115,116}
tNpcGossip[23689]["tOption1-1"] = {111}
tNpcGossip[23689]["ChkFunc1-1"] = function ()
	if CommonFunc_GetBeforeActivityTime(tValentinesDay2019NPC_Cont["ActivityTime"]) then
		local nUserId = Get_UserId()
		-- 时间显示
		tNpcGossip[23689]["Text114"] = ValentinesDay2019NPC_TimeToText(tValentinesDay2019NPC_Text[23689]["Text114"],tValentinesDay2019NPC_Cont["ActivityTime"])
		-- 等级显示
		if ValentinesDay2019NPC_JudgeLevel() then
			tNpcGossip[23689]["Text115"] = ""
		else
			tNpcGossip[23689]["Text115"] = string.format(tValentinesDay2019NPC_Text[23689]["Text115"],tValentinesDay2019NPC_Cont["Level"])
		end
	
		return true
	else
		return false
	end
end

-- 活动后
tNpcGossip[23689]["Text1-2"] = {121,122}
tNpcGossip[23689]["tOption1-2"] = {121}
tNpcGossip[23689]["ChkFunc1-2"] = function ()
	if CommonFunc_GetAfterActivityTime(tValentinesDay2019NPC_Cont["ActivityTime"]) then
		return true
	else
		return false
	end
end

-- 活动中 等级不足
tNpcGossip[23689]["Text1-3"] = {131,132,133,134,135,136}
tNpcGossip[23689]["tOption1-3"] = {131}
tNpcGossip[23689]["ChkFunc1-3"] = function ()
	if Sys_ChkFullTime(tValentinesDay2019NPC_Cont["ActivityTime"]) and (not ValentinesDay2019NPC_JudgeLevel()) then
		local nUserId = Get_UserId()
		-- 时间显示
		tNpcGossip[23689]["Text134"] = ValentinesDay2019NPC_TimeToText(tValentinesDay2019NPC_Text[23689]["Text134"],tValentinesDay2019NPC_Cont["ActivityTime"])
		-- 等级显示
		tNpcGossip[23689]["Text135"] = string.format(tValentinesDay2019NPC_Text[23689]["Text135"],tValentinesDay2019NPC_Cont["Level"])
		return true
	else
		return false
	end
end

-- 活动中 等级足够 背包里没有物品
tNpcGossip[23689]["Text1-4"] = {141,142,143,144,145,146,147,148,149,1410,1411,1412}
tNpcGossip[23689]["tOption1-4"] = {141,146,142}
tNpcGossip[23689]["ChkFunc1-4"] = function ()
	if Sys_ChkFullTime(tValentinesDay2019NPC_Cont["ActivityTime"]) and ValentinesDay2019NPC_JudgeLevel() then
		local nUserId = Get_UserId()
		local nUserSex = Get_UserSex(nUserId)
		-- 今日提交鲜花的真爱值
		local nNum4 = ValentinesDay2019NPC_GetStcValue(4,nUserId)
		local nNum5 = ValentinesDay2019NPC_GetStcValue(5,nUserId)
		local nNum6 = ValentinesDay2019NPC_GetStcValue(6,nUserId)
		tNpcGossip[23689]["Text1411"] = string.format(tValentinesDay2019NPC_Text[23689]["Text1411"],nNum4)
		tNpcGossip[23689]["Text1412"] = string.format(tValentinesDay2019NPC_Text[23689]["Text1412"],nNum5,nNum6)
		return true
	else
		return false
	end
end
-- 提交浪漫礼物
tNpcGossip[23689]["OptionFunc141"] = "ValentinesDay2019NPC_SubmitFlower</N>23689"
-- 真爱值兑换鲜花细则
tNpcGossip[23689]["OptionPoint142"] = "7-1"
-- 查看真爱男神榜
tNpcGossip[23689]["OptionFunc143"] = "ValentinesDay2019NPC_SeeRank</N>23689</N>5"
tNpcGossip[23689]["OptionChkFunc143"] = function()
	local nUserId = Get_UserId()
	return Get_UserSex(nUserId) == 1
end
-- 查看真爱女神榜
tNpcGossip[23689]["OptionFunc144"] = "ValentinesDay2019NPC_SeeRank</N>23689</N>7"
tNpcGossip[23689]["OptionChkFunc144"] = function()
	local nUserId = Get_UserId()
	return Get_UserSex(nUserId) == 2
end	
-- 回到双龙城
tNpcGossip[23689]["OptionFunc145"] = "ValentinesDay2019NPC_TimeOutReturn"
-- 购买浪漫礼物
tNpcGossip[23689]["OptionPoint146"] = "6-1"

-- 活动中 等级足够 背包里有物品
tNpcGossip[23689]["Text4-1"] = {411,412,413,414,415,416,417,418,419,4110,4111,4112}
tNpcGossip[23689]["tOption4-1"] = {411,415,416,417,418,419,4111,4112,4113,4114,4115,4127,4117,4118,4119,4120,4122,4123,4124,4125,4128}
tNpcGossip[23689]["ChkFunc4-1"] = function ()
	local nUserId = Get_UserId()
	local nUserSex = Get_UserSex(nUserId)
	-- 今日提交鲜花的真爱值
	local nNum4 = ValentinesDay2019NPC_GetStcValue(4,nUserId)
	local nNum5 = ValentinesDay2019NPC_GetStcValue(5,nUserId)
	local nNum6 = ValentinesDay2019NPC_GetStcValue(6,nUserId)
	tNpcGossip[23689]["Text4111"] = string.format(tValentinesDay2019NPC_Text[23689]["Text4111"],nNum4)
	tNpcGossip[23689]["Text4112"] = string.format(tValentinesDay2019NPC_Text[23689]["Text4112"],nNum5,nNum6)
	return true
end

-- 提交浪漫礼物
tNpcGossip[23689]["OptionFunc411"] = "ValentinesDay2019NPC_SubmitAllFlowerConfirm</N>23689"
-- 浪漫香烛
tNpcGossip[23689]["OptionFunc412"] = "ValentinesDay2019NPC_SubmitSingleItemConfirm</N>23689</N>3311967"
tNpcGossip[23689]["OptionChkFunc412"] = function()
	return Item_ChkItem(3311967)
end	
-- 璀璨烟花
tNpcGossip[23689]["OptionFunc413"] = "ValentinesDay2019NPC_SubmitSingleItemConfirm</N>23689</N>3311969"
tNpcGossip[23689]["OptionChkFunc413"] = function()
	return Item_ChkItem(3311969)
end	
-- 拉菲红酒
tNpcGossip[23689]["OptionFunc414"] = "ValentinesDay2019NPC_SubmitSingleItemConfirm</N>23689</N>3311968"
tNpcGossip[23689]["OptionChkFunc414"] = function()
	return Item_ChkItem(3311968)
end	
-- 1朵兰花
tNpcGossip[23689]["OptionFunc415"] = "ValentinesDay2019NPC_SubmitSingleItemConfirm</N>23689</N>753001"
tNpcGossip[23689]["OptionChkFunc415"] = function()
	-- return Item_ChkItem(753001) and (ValentinesDay2019NPC_GetStcValue(4) + tValentinesDay2019NPC_Submit[753001] <= tValentinesDay2019NPC_Cont["DailySubmitLimit"])
	return Item_ChkItem(753001) and (ValentinesDay2019NPC_GetStcValue(4) < tValentinesDay2019NPC_Cont["DailySubmitLimit"])
end	
-- 3朵兰花
tNpcGossip[23689]["OptionFunc416"] = "ValentinesDay2019NPC_SubmitSingleItemConfirm</N>23689</N>753003"
tNpcGossip[23689]["OptionChkFunc416"] = function()
	-- return Item_ChkItem(753003) and (ValentinesDay2019NPC_GetStcValue(4) + tValentinesDay2019NPC_Submit[753003] <= tValentinesDay2019NPC_Cont["DailySubmitLimit"])
	return Item_ChkItem(753003) and (ValentinesDay2019NPC_GetStcValue(4) < tValentinesDay2019NPC_Cont["DailySubmitLimit"])
end	
-- 9朵兰花
tNpcGossip[23689]["OptionFunc417"] = "ValentinesDay2019NPC_SubmitSingleItemConfirm</N>23689</N>753009"
tNpcGossip[23689]["OptionChkFunc417"] = function()
	-- return Item_ChkItem(753009) and (ValentinesDay2019NPC_GetStcValue(4) + tValentinesDay2019NPC_Submit[753009] <= tValentinesDay2019NPC_Cont["DailySubmitLimit"])
	return Item_ChkItem(753009) and (ValentinesDay2019NPC_GetStcValue(4) < tValentinesDay2019NPC_Cont["DailySubmitLimit"])
end	
-- 99朵兰花
tNpcGossip[23689]["OptionFunc418"] = "ValentinesDay2019NPC_SubmitSingleItemConfirm</N>23689</N>753099"
tNpcGossip[23689]["OptionChkFunc418"] = function()
	-- return Item_ChkItem(753099) and (ValentinesDay2019NPC_GetStcValue(4) + tValentinesDay2019NPC_Submit[753099] <= tValentinesDay2019NPC_Cont["DailySubmitLimit"])
	return Item_ChkItem(753099) and (ValentinesDay2019NPC_GetStcValue(4) < tValentinesDay2019NPC_Cont["DailySubmitLimit"])
end	
-- 999朵兰花
tNpcGossip[23689]["OptionFunc419"] = "ValentinesDay2019NPC_SubmitSingleItemConfirm</N>23689</N>753999"
tNpcGossip[23689]["OptionChkFunc419"] = function()
	-- return Item_ChkItem(753999) and (ValentinesDay2019NPC_GetStcValue(4) + tValentinesDay2019NPC_Submit[753999] <= tValentinesDay2019NPC_Cont["DailySubmitLimit"])
	return Item_ChkItem(753999) and (ValentinesDay2019NPC_GetStcValue(4) < tValentinesDay2019NPC_Cont["DailySubmitLimit"])
end	
-- 兰花兑换券
tNpcGossip[23689]["OptionFunc4110"] = "ValentinesDay2019NPC_SubmitSingleItemConfirm</N>23689</N>3304135"
tNpcGossip[23689]["OptionChkFunc4110"] = function()
	return Item_ChkItem(3304135)
end	
-- 1朵玫瑰
tNpcGossip[23689]["OptionFunc4111"] = "ValentinesDay2019NPC_SubmitSingleItemConfirm</N>23689</N>751001"
tNpcGossip[23689]["OptionChkFunc4111"] = function()
	-- return Item_ChkItem(751001) and (ValentinesDay2019NPC_GetStcValue(4) + tValentinesDay2019NPC_Submit[751001] <= tValentinesDay2019NPC_Cont["DailySubmitLimit"])
	return Item_ChkItem(751001) and (ValentinesDay2019NPC_GetStcValue(4) < tValentinesDay2019NPC_Cont["DailySubmitLimit"])
end	
-- 3朵玫瑰
tNpcGossip[23689]["OptionFunc4112"] = "ValentinesDay2019NPC_SubmitSingleItemConfirm</N>23689</N>751003"
tNpcGossip[23689]["OptionChkFunc4112"] = function()
	-- return Item_ChkItem(751003) and (ValentinesDay2019NPC_GetStcValue(4) + tValentinesDay2019NPC_Submit[751003] <= tValentinesDay2019NPC_Cont["DailySubmitLimit"])
	return Item_ChkItem(751003) and (ValentinesDay2019NPC_GetStcValue(4) < tValentinesDay2019NPC_Cont["DailySubmitLimit"])
end	
-- 9朵玫瑰
tNpcGossip[23689]["OptionFunc4113"] = "ValentinesDay2019NPC_SubmitSingleItemConfirm</N>23689</N>751009"
tNpcGossip[23689]["OptionChkFunc4113"] = function()
	-- return Item_ChkItem(751009) and (ValentinesDay2019NPC_GetStcValue(4) + tValentinesDay2019NPC_Submit[751009] <= tValentinesDay2019NPC_Cont["DailySubmitLimit"])
	return Item_ChkItem(751009) and (ValentinesDay2019NPC_GetStcValue(4) < tValentinesDay2019NPC_Cont["DailySubmitLimit"])
end	
-- 99朵玫瑰
tNpcGossip[23689]["OptionFunc4114"] = "ValentinesDay2019NPC_SubmitSingleItemConfirm</N>23689</N>751099"
tNpcGossip[23689]["OptionChkFunc4114"] = function()
	-- return Item_ChkItem(751099) and (ValentinesDay2019NPC_GetStcValue(4) + tValentinesDay2019NPC_Submit[751099] <= tValentinesDay2019NPC_Cont["DailySubmitLimit"])
	return Item_ChkItem(751099) and (ValentinesDay2019NPC_GetStcValue(4) < tValentinesDay2019NPC_Cont["DailySubmitLimit"])
end	
-- 999朵玫瑰
tNpcGossip[23689]["OptionFunc4115"] = "ValentinesDay2019NPC_SubmitSingleItemConfirm</N>23689</N>751999"
tNpcGossip[23689]["OptionChkFunc4115"] = function()
	-- return Item_ChkItem(751999) and (ValentinesDay2019NPC_GetStcValue(4) + tValentinesDay2019NPC_Submit[751999] <= tValentinesDay2019NPC_Cont["DailySubmitLimit"])
	return Item_ChkItem(751999) and (ValentinesDay2019NPC_GetStcValue(4) < tValentinesDay2019NPC_Cont["DailySubmitLimit"])
end	
-- 玫瑰兑换券
tNpcGossip[23689]["OptionFunc4116"] = "ValentinesDay2019NPC_SubmitSingleItemConfirm</N>23689</N>3304134"
tNpcGossip[23689]["OptionChkFunc4116"] = function()
	return Item_ChkItem(3304134)
end	
-- 1朵百合
tNpcGossip[23689]["OptionFunc4127"] = "ValentinesDay2019NPC_SubmitSingleItemConfirm</N>23689</N>752001"
tNpcGossip[23689]["OptionChkFunc4127"] = function()
	-- return Item_ChkItem(752001) and (ValentinesDay2019NPC_GetStcValue(4) + tValentinesDay2019NPC_Submit[752001] <= tValentinesDay2019NPC_Cont["DailySubmitLimit"])
	return Item_ChkItem(752001) and (ValentinesDay2019NPC_GetStcValue(4) < tValentinesDay2019NPC_Cont["DailySubmitLimit"])
end	
-- 3朵百合
tNpcGossip[23689]["OptionFunc4117"] = "ValentinesDay2019NPC_SubmitSingleItemConfirm</N>23689</N>752003"
tNpcGossip[23689]["OptionChkFunc4117"] = function()
	-- return Item_ChkItem(752003) and (ValentinesDay2019NPC_GetStcValue(4) + tValentinesDay2019NPC_Submit[752003] <= tValentinesDay2019NPC_Cont["DailySubmitLimit"])
	return Item_ChkItem(752003) and (ValentinesDay2019NPC_GetStcValue(4) < tValentinesDay2019NPC_Cont["DailySubmitLimit"])
end	
-- 9朵百合
tNpcGossip[23689]["OptionFunc4118"] = "ValentinesDay2019NPC_SubmitSingleItemConfirm</N>23689</N>752009"
tNpcGossip[23689]["OptionChkFunc4118"] = function()
	-- return Item_ChkItem(752009) and (ValentinesDay2019NPC_GetStcValue(4) + tValentinesDay2019NPC_Submit[752009] <= tValentinesDay2019NPC_Cont["DailySubmitLimit"])
	return Item_ChkItem(752009) and (ValentinesDay2019NPC_GetStcValue(4) < tValentinesDay2019NPC_Cont["DailySubmitLimit"])
end	
-- 99朵百合
tNpcGossip[23689]["OptionFunc4119"] = "ValentinesDay2019NPC_SubmitSingleItemConfirm</N>23689</N>752099"
tNpcGossip[23689]["OptionChkFunc4119"] = function()
	-- return Item_ChkItem(752099) and (ValentinesDay2019NPC_GetStcValue(4) + tValentinesDay2019NPC_Submit[752099] <= tValentinesDay2019NPC_Cont["DailySubmitLimit"])
	return Item_ChkItem(752099) and (ValentinesDay2019NPC_GetStcValue(4) < tValentinesDay2019NPC_Cont["DailySubmitLimit"])
end	
-- 999朵百合
tNpcGossip[23689]["OptionFunc4120"] = "ValentinesDay2019NPC_SubmitSingleItemConfirm</N>23689</N>752999"
tNpcGossip[23689]["OptionChkFunc4120"] = function()
	-- return Item_ChkItem(752999) and (ValentinesDay2019NPC_GetStcValue(4) + tValentinesDay2019NPC_Submit[752999] <= tValentinesDay2019NPC_Cont["DailySubmitLimit"])
	return Item_ChkItem(752999) and (ValentinesDay2019NPC_GetStcValue(4) < tValentinesDay2019NPC_Cont["DailySubmitLimit"])
end	
-- 百合兑换券
tNpcGossip[23689]["OptionFunc4121"] = "ValentinesDay2019NPC_SubmitSingleItemConfirm</N>23689</N>3304136"
tNpcGossip[23689]["OptionChkFunc4121"] = function()
	return Item_ChkItem(3304136)
end	
-- 1朵郁金香
tNpcGossip[23689]["OptionFunc4122"] = "ValentinesDay2019NPC_SubmitSingleItemConfirm</N>23689</N>754001"
tNpcGossip[23689]["OptionChkFunc4122"] = function()
	-- return Item_ChkItem(754001) and (ValentinesDay2019NPC_GetStcValue(4) + tValentinesDay2019NPC_Submit[754001] <= tValentinesDay2019NPC_Cont["DailySubmitLimit"])
	return Item_ChkItem(754001) and (ValentinesDay2019NPC_GetStcValue(4) < tValentinesDay2019NPC_Cont["DailySubmitLimit"])
end	
-- 3朵郁金香
tNpcGossip[23689]["OptionFunc4123"] = "ValentinesDay2019NPC_SubmitSingleItemConfirm</N>23689</N>754003"
tNpcGossip[23689]["OptionChkFunc4123"] = function()
	-- return Item_ChkItem(754003) and (ValentinesDay2019NPC_GetStcValue(4) + tValentinesDay2019NPC_Submit[754003] <= tValentinesDay2019NPC_Cont["DailySubmitLimit"])
	return Item_ChkItem(754003) and (ValentinesDay2019NPC_GetStcValue(4) < tValentinesDay2019NPC_Cont["DailySubmitLimit"])
end	
-- 9朵郁金香
tNpcGossip[23689]["OptionFunc4124"] = "ValentinesDay2019NPC_SubmitSingleItemConfirm</N>23689</N>754009"
tNpcGossip[23689]["OptionChkFunc4124"] = function()
	-- return Item_ChkItem(754009) and (ValentinesDay2019NPC_GetStcValue(4) + tValentinesDay2019NPC_Submit[754009] <= tValentinesDay2019NPC_Cont["DailySubmitLimit"])
	return Item_ChkItem(754009) and (ValentinesDay2019NPC_GetStcValue(4) < tValentinesDay2019NPC_Cont["DailySubmitLimit"])
end	
-- 99朵郁金香
tNpcGossip[23689]["OptionFunc4125"] = "ValentinesDay2019NPC_SubmitSingleItemConfirm</N>23689</N>754099"
tNpcGossip[23689]["OptionChkFunc4125"] = function()
	-- return Item_ChkItem(754099) and (ValentinesDay2019NPC_GetStcValue(4) + tValentinesDay2019NPC_Submit[754099] <= tValentinesDay2019NPC_Cont["DailySubmitLimit"])
	return Item_ChkItem(754099) and (ValentinesDay2019NPC_GetStcValue(4) < tValentinesDay2019NPC_Cont["DailySubmitLimit"])
end	
-- 999朵郁金香
tNpcGossip[23689]["OptionFunc4128"] = "ValentinesDay2019NPC_SubmitSingleItemConfirm</N>23689</N>754999"
tNpcGossip[23689]["OptionChkFunc4128"] = function()
	-- return Item_ChkItem(754999) and (ValentinesDay2019NPC_GetStcValue(4) + tValentinesDay2019NPC_Submit[754999] <= tValentinesDay2019NPC_Cont["DailySubmitLimit"])
	return Item_ChkItem(754999) and (ValentinesDay2019NPC_GetStcValue(4) < tValentinesDay2019NPC_Cont["DailySubmitLimit"])
end	
-- 郁金香兑换券
tNpcGossip[23689]["OptionFunc4126"] = "ValentinesDay2019NPC_SubmitSingleItemConfirm</N>23689</N>3304137"
tNpcGossip[23689]["OptionChkFunc4126"] = function()
	return Item_ChkItem(3304137)
end	


-- 没有物品
tNpcGossip[23689]["Text4-2"] = {421}
tNpcGossip[23689]["tOption4-2"] = {421}
tNpcGossip[23689]["OptionFunc421"] = "ValentinesDay2019NPC_DesignNpcFunction</N>23689"

-- 活动中 等级达到 查看真爱男神榜
tNpcGossip[23689]["Text4-5"] = {451,452,453,454,455,456,457,458,459,4510,4511,4512,4513,4514}
tNpcGossip[23689]["tOption4-5"] = {451}
tNpcGossip[23689]["OptionFunc451"] = "ValentinesDay2019NPC_SeeRank</N>23689</N>6"

-- 活动中 等级达到 查看真爱男神榜 查看真爱女神榜
tNpcGossip[23689]["Text4-6"] = {461,462,463,464,465,466,467,468,469,4610,4611,4612,4613,4614}
tNpcGossip[23689]["tOption4-6"] = {461}
tNpcGossip[23689]["OptionFunc461"] = "ValentinesDay2019NPC_DesignNpcFunction</N>23689"

-- 活动中 等级达到 查看真爱女神榜
tNpcGossip[23689]["Text4-7"] = {471,472,473,474,475,476,477,478,479,4710,4711,4712,4713,4714}
tNpcGossip[23689]["tOption4-7"] = {471}
tNpcGossip[23689]["OptionFunc471"] = "ValentinesDay2019NPC_SeeRank</N>23689</N>8"

-- 活动中 等级达到 查看真爱女神榜 查看真爱男神榜
tNpcGossip[23689]["Text4-8"] = {481,482,483,484,485,486,487,488,489,4810,4811,4812,4813,4814}
tNpcGossip[23689]["tOption4-8"] = {481}
tNpcGossip[23689]["OptionFunc481"] = "ValentinesDay2019NPC_DesignNpcFunction</N>23689"

-- 单个全部提交
tNpcGossip[23689]["Text5-2"] = {521}
tNpcGossip[23689]["tOption5-2"] = {521,522,523}

-- 装扮成功
tNpcGossip[23689]["Text5-3"] = {531}
tNpcGossip[23689]["tOption5-3"] = {531}


-- 全部提交
tNpcGossip[23689]["Text5-4"] = {541}
tNpcGossip[23689]["tOption5-4"] = {541,542}
tNpcGossip[23689]["OptionFunc541"] = "ValentinesDay2019NPC_SubmitAllFlower</N>23689"
tNpcGossip[23689]["OptionFunc542"] = "ValentinesDay2019NPC_DesignNpcFunction</N>23689"

-- 购买礼物
tNpcGossip[23689]["Text6-1"] = {611}
tNpcGossip[23689]["tOption6-1"] = {611,612,613,614,615,616}
tNpcGossip[23689]["ChkFunc6-1"] = function ()
	tNpcGossip[23689]["Option611"] = string.format(tValentinesDay2019NPC_Text[23689]["Option611"],tValentinesDay2019NPC_Prize[3311971])
	tNpcGossip[23689]["Option612"] = string.format(tValentinesDay2019NPC_Text[23689]["Option612"],tValentinesDay2019NPC_Prize[3311974])
	tNpcGossip[23689]["Option613"] = string.format(tValentinesDay2019NPC_Text[23689]["Option613"],tValentinesDay2019NPC_Prize[3311975])
	tNpcGossip[23689]["Option614"] = string.format(tValentinesDay2019NPC_Text[23689]["Option614"],tValentinesDay2019NPC_Prize[3311976])
	tNpcGossip[23689]["Option615"] = string.format(tValentinesDay2019NPC_Text[23689]["Option615"],tValentinesDay2019NPC_Prize[3310215])
	tNpcGossip[23689]["Option616"] = string.format(tValentinesDay2019NPC_Text[23689]["Option616"],tValentinesDay2019NPC_Prize[3310216])
	return true
end
tNpcGossip[23689]["OptionFunc611"] = "ValentinesDay2019NPC_BuyGift</N>23689</N>3311971"
tNpcGossip[23689]["OptionFunc612"] = "ValentinesDay2019NPC_BuyGift</N>23689</N>3311974"
tNpcGossip[23689]["OptionFunc613"] = "ValentinesDay2019NPC_BuyGift</N>23689</N>3311975"
tNpcGossip[23689]["OptionFunc614"] = "ValentinesDay2019NPC_BuyGift</N>23689</N>3311976"
tNpcGossip[23689]["OptionFunc615"] = "ValentinesDay2019NPC_BuyGift</N>23689</N>3310215"
tNpcGossip[23689]["OptionFunc616"] = "ValentinesDay2019NPC_BuyGift</N>23689</N>3310216"

tNpcGossip[23689]["Text6-2"] = {621}
-- tNpcGossip[23689]["tOption6-2"] = {621,622,623}
tNpcGossip[23689]["tOption6-2"] = {621,622}

tNpcGossip[23689]["Text6-3"] = {631}
tNpcGossip[23689]["tOption6-3"] = {631}

-- 真爱值兑换鲜花细则
tNpcGossip[23689]["Text7-1"] = {711,712,713,714,715,716,717,718,719}
tNpcGossip[23689]["tOption7-1"] = {711}
tNpcGossip[23689]["OptionFunc711"] = "ValentinesDay2019NPC_DesignNpcFunction</N>23689"

	
-- 真爱设计师
tNpcFace[6263] = 120
tNpcGossip[23651] = tNpcGossip[23651] or DefaultNpc:new{}
tNpcGossip[23651]["OptionHidden"] = 1
tNpcGossip[23651]["DialogueText"] = tValentinesDay2019NPC_Text[23651]	
-- 活动前
tNpcGossip[23651]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[23651]["tOption1-1"] = {111}
tNpcGossip[23651]["ChkFunc1-1"] = function ()
	-- 时间显示
	tNpcGossip[23651]["Text113"] = ValentinesDay2019NPC_TimeToText(tValentinesDay2019NPC_Text[23651]["Text113"],tValentinesDay2019NPC_Cont["ActivityTime"])
	-- 等级显示
	tNpcGossip[23651]["Text114"] = string.format(tValentinesDay2019NPC_Text[23651]["Text114"],tValentinesDay2019NPC_Cont["Level"])

	return CommonFunc_GetBeforeActivityTime(tValentinesDay2019NPC_Cont["ActivityTime"])
end

-- 活动后
tNpcGossip[23651]["Text1-2"] = {121,122}
tNpcGossip[23651]["tOption1-2"] = {121}
tNpcGossip[23651]["ChkFunc1-2"] = function ()
	return CommonFunc_GetAfterActivityTime(tValentinesDay2019NPC_Cont["ActivityTime"])
end

-- 活动中 等级不足
tNpcGossip[23651]["Text1-3"] = {131,132,133,134,135}
tNpcGossip[23651]["tOption1-3"] = {131}
tNpcGossip[23651]["ChkFunc1-3"] = function ()
	if Sys_ChkFullTime(tValentinesDay2019NPC_Cont["ActivityTime"]) and (not ValentinesDay2019NPC_JudgeLevel()) then
		-- 时间显示
		tNpcGossip[23651]["Text133"] = ValentinesDay2019NPC_TimeToText(tValentinesDay2019NPC_Text[23651]["Text133"],tValentinesDay2019NPC_Cont["ActivityTime"])
		-- 等级显示
		tNpcGossip[23651]["Text134"] = string.format(tValentinesDay2019NPC_Text[23651]["Text134"],tValentinesDay2019NPC_Cont["Level"])
		return true
	else
		return false
	end
end

-- 活动中 等级足够
tNpcGossip[23651]["Text1-4"] = {141,142}
tNpcGossip[23651]["tOption1-4"] = {141,142}
tNpcGossip[23651]["ChkFunc1-4"] = function ()
	if Sys_ChkFullTime(tValentinesDay2019NPC_Cont["ActivityTime"]) and ValentinesDay2019NPC_JudgeLevel() then
		return true
	else
		return false
	end
end
-- 点缀装饰
tNpcGossip[23651]["OptionFunc141"] = "ValentinesDay2019NPC_LinkToChangePos</N>23651"

-- 点缀装饰
tNpcGossip[23651]["Text4-2"] = {421}
tNpcGossip[23651]["tOption4-2"] = {421,422,423,424,425,426,427,428,429,4210,4211,4212,4213,4214,4215,4216}

-- 星星气球
tNpcGossip[23651]["OptionFunc421"] = "ValentinesDay2019NPC_ChangePosDialog</N>23651</N>2211"
tNpcGossip[23651]["OptionChkFunc421"] = function()
	return ValentinesDay2019NPC_GetStep() >= 1
end	
-- 闪耀气球
tNpcGossip[23651]["OptionFunc422"] = "ValentinesDay2019NPC_ChangePosDialog</N>23651</N>2212"
tNpcGossip[23651]["OptionChkFunc422"] = function()
	return ValentinesDay2019NPC_GetStep() >= 1
end	
-- 告白气球
tNpcGossip[23651]["OptionFunc423"] = "ValentinesDay2019NPC_ChangePosDialog</N>23651</N>2213"
tNpcGossip[23651]["OptionChkFunc423"] = function()
	return ValentinesDay2019NPC_GetStep() >= 1
end	
-- 微笑气球
tNpcGossip[23651]["OptionFunc424"] = "ValentinesDay2019NPC_ChangePosDialog</N>23651</N>2214"
tNpcGossip[23651]["OptionChkFunc424"] = function()
	return ValentinesDay2019NPC_GetStep() >= 1
end	

-- 落樱缤纷
tNpcGossip[23651]["OptionFunc425"] = "ValentinesDay2019NPC_ChangePosDialog</N>23651</N>2215"
tNpcGossip[23651]["OptionChkFunc425"] = function()
	return ValentinesDay2019NPC_GetStep() >= 2
end	
-- 甜蜜爱心
tNpcGossip[23651]["OptionFunc426"] = "ValentinesDay2019NPC_ChangePosDialog</N>23651</N>2216"
tNpcGossip[23651]["OptionChkFunc426"] = function()
	return ValentinesDay2019NPC_GetStep() >= 2
end	
-- 漫天花雨
tNpcGossip[23651]["OptionFunc427"] = "ValentinesDay2019NPC_ChangePosDialog</N>23651</N>2217"
tNpcGossip[23651]["OptionChkFunc427"] = function()
	return ValentinesDay2019NPC_GetStep() >= 2
end	
-- 银河之光
tNpcGossip[23651]["OptionFunc428"] = "ValentinesDay2019NPC_ChangePosDialog</N>23651</N>2218"
tNpcGossip[23651]["OptionChkFunc428"] = function()
	return ValentinesDay2019NPC_GetStep() >= 2
end	

-- 落花戏蝶
tNpcGossip[23651]["OptionFunc429"] = "ValentinesDay2019NPC_ChangePosDialog</N>23651</N>2219"
tNpcGossip[23651]["OptionChkFunc429"] = function()
	return ValentinesDay2019NPC_GetStep() >= 3
end	
-- 魅蓝蝶舞
tNpcGossip[23651]["OptionFunc4210"] = "ValentinesDay2019NPC_ChangePosDialog</N>23651</N>2220"
tNpcGossip[23651]["OptionChkFunc4210"] = function()
	return ValentinesDay2019NPC_GetStep() >= 3
end	
-- 彩蝶翩飞
tNpcGossip[23651]["OptionFunc4211"] = "ValentinesDay2019NPC_ChangePosDialog</N>23651</N>2221"
tNpcGossip[23651]["OptionChkFunc4211"] = function()
	return ValentinesDay2019NPC_GetStep() >= 3
end	
-- 紫蝶蹁跹
tNpcGossip[23651]["OptionFunc4212"] = "ValentinesDay2019NPC_ChangePosDialog</N>23651</N>2222"
tNpcGossip[23651]["OptionChkFunc4212"] = function()
	return ValentinesDay2019NPC_GetStep() >= 3
end	

-- 粉蝶入尘
tNpcGossip[23651]["OptionFunc4213"] = "ValentinesDay2019NPC_ChangePosDialog</N>23651</N>2223"
tNpcGossip[23651]["OptionChkFunc4213"] = function()
	return ValentinesDay2019NPC_GetStep() >= 4
end	
-- 流光幻蝶
tNpcGossip[23651]["OptionFunc4214"] = "ValentinesDay2019NPC_ChangePosDialog</N>23651</N>2224"
tNpcGossip[23651]["OptionChkFunc4214"] = function()
	return ValentinesDay2019NPC_GetStep() >= 4
end	
-- 群星璀璨
tNpcGossip[23651]["OptionFunc4215"] = "ValentinesDay2019NPC_ChangePosDialog</N>23651</N>2225"
tNpcGossip[23651]["OptionChkFunc4215"] = function()
	return ValentinesDay2019NPC_GetStep() >= 4
end	
-- 心花怒放
tNpcGossip[23651]["OptionFunc4216"] = "ValentinesDay2019NPC_ChangePosDialog</N>23651</N>2226"
tNpcGossip[23651]["OptionChkFunc4216"] = function()
	return ValentinesDay2019NPC_GetStep() >= 4
end	

tNpcGossip[23651]["Text4-3"] = {431}
tNpcGossip[23651]["tOption4-3"] = {431}


-- 约会场景
tNpcFace[2236] = 1808
tNpcGossip[23710] = tNpcGossip[23710] or DefaultNpc:new{}
tNpcGossip[23710]["OptionHidden"] = 1
tNpcGossip[23710]["DialogueText"] = tValentinesDay2019NPC_Text[23710]	
-- 普通场景
tNpcGossip[23710]["Text1-1"] = {111,112,113,114,115,116}
tNpcGossip[23710]["tOption1-1"] = {111,112,113,114,115,116}
tNpcGossip[23710]["ChkFunc1-1"] = function ()
	-- 界面初始化
	local nUserId = Get_UserId()
	local nUserSex = Get_UserSex(nUserId)
	local sNpcShowSex = tValentinesDay2019NPC_Text["NpcShowSex"][nUserSex]
	tNpcGossip[23710]["Text111"] = string.format(tValentinesDay2019NPC_Text[23710]["Text111"],sNpcShowSex)
	-- 开放时间
	local sOpenTime1 = ValentinesDay2019NPC_ReturnDate(0)
	local sOpenTime2 = ValentinesDay2019NPC_ReturnDate(1)
	local sOpenTime3 = ValentinesDay2019NPC_ReturnDate(2)
	tNpcGossip[23710]["Text113"] = string.format(tValentinesDay2019NPC_Text[23710]["Text113"],sOpenTime1,sOpenTime1)
	tNpcGossip[23710]["Text114"] = string.format(tValentinesDay2019NPC_Text[23710]["Text114"],sOpenTime2,sOpenTime2)
	tNpcGossip[23710]["Text115"] = string.format(tValentinesDay2019NPC_Text[23710]["Text115"],sOpenTime3,sOpenTime3)
	return true
end
-- 前往流月城
tNpcGossip[23710]["OptionFunc111"] = "ValentinesDay2019NPC_EnterMap</N>2228</N>2"
tNpcGossip[23710]["OptionChkFunc111"] = function()
	return ValentinesDay2019NPC_ChkMap(2228)
end	
-- 前往天空之城
tNpcGossip[23710]["OptionFunc112"] = "ValentinesDay2019NPC_EnterMap</N>2229</N>2"
tNpcGossip[23710]["OptionChkFunc112"] = function()
	return ValentinesDay2019NPC_ChkMap(2229)
end	
-- 前往浪漫沙海
tNpcGossip[23710]["OptionFunc113"] = "ValentinesDay2019NPC_EnterMap</N>2230</N>2"
tNpcGossip[23710]["OptionChkFunc113"] = function()
	return ValentinesDay2019NPC_ChkMap(2230)
end	
-- 前往萦梦溪
tNpcGossip[23710]["OptionFunc114"] = "ValentinesDay2019NPC_EnterMap</N>2231</N>2"
tNpcGossip[23710]["OptionChkFunc114"] = function()
	return ValentinesDay2019NPC_ChkMap(2231)
end	
-- 前往忘尘谷
tNpcGossip[23710]["OptionFunc115"] = "ValentinesDay2019NPC_EnterMap</N>2232</N>2"
tNpcGossip[23710]["OptionChkFunc115"] = function()
	return ValentinesDay2019NPC_ChkMap(2232)
end	
-- 前往凤火岛
tNpcGossip[23710]["OptionFunc116"] = "ValentinesDay2019NPC_EnterMap</N>2233</N>2"
tNpcGossip[23710]["OptionChkFunc116"] = function()
	return ValentinesDay2019NPC_ChkMap(2233)
end	

-- 特别场景
tNpcFace[2237] = 1995
tNpcGossip[23738] = tNpcGossip[23738] or DefaultNpc:new{}
tNpcGossip[23738]["OptionHidden"] = 1
tNpcGossip[23738]["DialogueText"] = tValentinesDay2019NPC_Text[23738]	
tNpcGossip[23738]["Text1-1"] = {111,112,113,114,115,116}
tNpcGossip[23738]["tOption1-1"] = {111,112,113,114,115,116}
tNpcGossip[23738]["ChkFunc1-1"] = function ()
	-- 界面初始化
	local nUserId = Get_UserId()
	local nUserSex = Get_UserSex(nUserId)
	local sNpcShowSex = tValentinesDay2019NPC_Text["Sex"][nUserSex]
	tNpcGossip[23738]["Text111"] = string.format(tValentinesDay2019NPC_Text[23738]["Text111"],sNpcShowSex)
	-- 开放时间
	local sOpenTime1 = ValentinesDay2019NPC_ReturnDate(0)
	local sOpenTime2 = ValentinesDay2019NPC_ReturnDate(1)
	local sOpenTime3 = ValentinesDay2019NPC_ReturnDate(2)
	tNpcGossip[23738]["Text113"] = string.format(tValentinesDay2019NPC_Text[23738]["Text113"],sOpenTime1,sOpenTime1)
	tNpcGossip[23738]["Text114"] = string.format(tValentinesDay2019NPC_Text[23738]["Text114"],sOpenTime2,sOpenTime2)
	tNpcGossip[23738]["Text115"] = string.format(tValentinesDay2019NPC_Text[23738]["Text115"],sOpenTime3,sOpenTime3)
	return true
end
-- 前往流月城
tNpcGossip[23738]["OptionFunc111"] = "ValentinesDay2019NPC_EnterMap</N>2228</N>1"
tNpcGossip[23738]["OptionChkFunc111"] = function()
	return ValentinesDay2019NPC_ChkMap(2228)
end	
-- 前往天空之城
tNpcGossip[23738]["OptionFunc112"] = "ValentinesDay2019NPC_EnterMap</N>2229</N>1"
tNpcGossip[23738]["OptionChkFunc112"] = function()
	return ValentinesDay2019NPC_ChkMap(2229)
end	
-- 前往浪漫沙海
tNpcGossip[23738]["OptionFunc113"] = "ValentinesDay2019NPC_EnterMap</N>2230</N>1"
tNpcGossip[23738]["OptionChkFunc113"] = function()
	return ValentinesDay2019NPC_ChkMap(2230)
end	
-- 前往萦梦溪
tNpcGossip[23738]["OptionFunc114"] = "ValentinesDay2019NPC_EnterMap</N>2231</N>1"
tNpcGossip[23738]["OptionChkFunc114"] = function()
	return ValentinesDay2019NPC_ChkMap(2231)
end	
-- 前往忘尘谷
tNpcGossip[23738]["OptionFunc115"] = "ValentinesDay2019NPC_EnterMap</N>2232</N>1"
tNpcGossip[23738]["OptionChkFunc115"] = function()
	return ValentinesDay2019NPC_ChkMap(2232)
end	
-- 前往凤火岛
tNpcGossip[23738]["OptionFunc116"] = "ValentinesDay2019NPC_EnterMap</N>2233</N>1"
tNpcGossip[23738]["OptionChkFunc116"] = function()
	return ValentinesDay2019NPC_ChkMap(2233)
end	




---------------------------------------------------------------------------------------------

-- 浪漫香烛
tItemFace[3311967] = 1972
-- 拉菲红酒
tItemFace[3311968] = 1973
-- 璀璨烟花
tItemFace[3311969] = 1974

for nItemtypeId = 3311967,3311969 do 
	tItem[nItemtypeId] = tItem[nItemtypeId] or {}
	tItem[nItemtypeId]["Function"] = function()

		ValentinesDay2019NPC_UseGift(nItemtypeId)
	end
	
	
	tItem[nItemtypeId]["DialogueText"] = tValentinesDay2019NPC_Text[nItemtypeId]
	tItem[nItemtypeId]["Text1-1"] = {111,112,113,114,115,116,117,118,119,1110,1111,1112,1113,1114}
	tItem[nItemtypeId]["tOption1-1"] = {111,112,113}
	
	tItem[nItemtypeId]["OptionFunc111"] = string.format("ValentinesDay2019NPC_SubmitSingleItem</N>%d</N>1",nItemtypeId)
	tItem[nItemtypeId]["OptionFunc112"] = string.format("ValentinesDay2019NPC_SubmitSingleItem</N>%d</N>5",nItemtypeId)
	tItem[nItemtypeId]["OptionChkFunc112"] = function()
		return Item_ChkMulItem(nItemtypeId,nItemtypeId,5)
	end	
	tItem[nItemtypeId]["OptionFunc113"] = "ValentinesDay2019NPC_SubmitSingleItem</N>" .. nItemtypeId
	-- tItem[nItemtypeId]["OptionFunc114"] = "ValentinesDay2019NPC_SubmitAllGiftConfirm</N>" .. nItemtypeId
	
	tItem[nItemtypeId]["Text3-1"] = {311}
	tItem[nItemtypeId]["tOption3-1"] = {311}
	
	tItem[nItemtypeId]["Text4-1"] = {411}
	tItem[nItemtypeId]["tOption4-1"] = {411,412}
	tItem[nItemtypeId]["OptionFunc411"] = "ValentinesDay2019NPC_SubmitAllGift</N>" .. nItemtypeId
end


-----------------------------------------陷阱触发--------------------------------------------
-- 离开副本
tTrap[2229] = tTrap[2229] or {}
tTrap[2229]["Function"] = function()
	ValentinesDay2019NPC_TimeOutReturnConfirm()
end

---------------------------------------------系统自检---------------------------------------------
-- 约会数据初始化
local tValentinesDay2019NPC_OnTime = {}
	tValentinesDay2019NPC_OnTime[1] = {}
	tValentinesDay2019NPC_OnTime[1]["Activity"] = tValentinesDay2019NPC_Cont["ActivityTime"]
	tValentinesDay2019NPC_OnTime[1]["Type"] = 6
	tValentinesDay2019NPC_OnTime[1]["TimeType"] = 4
	tValentinesDay2019NPC_OnTime[1]["Time"] = tValentinesDay2019NPC_Cont["DateMapRefresh"]
	tValentinesDay2019NPC_OnTime[1]["Func"] = ValentinesDay2019NPC_DataClear

table.insert(tSystemTime_InitialData,tValentinesDay2019NPC_OnTime[1])


---------------------------------------------上线触发---------------------------------------------
tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
table.insert(tSystem_PlayLogin_Func,ValentinesDay2019NPC_LoginInWeb)

