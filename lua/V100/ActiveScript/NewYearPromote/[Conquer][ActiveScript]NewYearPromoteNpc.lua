--------------------------------------------------------------------------------
---Name:160725[英文征服][活动脚本]山中无老虎活动制作(8.25-9.07)
--Creator: 	许乐
--Created:	2016-07-25
--------------------------------------------------------------------------------
-- #安排山中无老虎活动制作，具体需求内容在附件中，如有问题，请及时沟通，谢谢！
-- #活动时间：2016.8.25-9.07
-- #为了方便活动数据统计，部分 log 需要做成 emoney buy log，具体情况见附件。
-- #备注：复用的简体链接里有年终促销的部分，这部分促销不做，具体情况和高威沟通过，如有问题，请及时沟通。
-- ##复用链接
--  http://nderp.99.com/Forum/TopicList-240569.aspx
--------------------------------------------------------------------------------
-- -- 修改内容
-- 1	过年促销礼包不上				
-- 2	放烟花去掉促销礼包				
-- 3	秒杀的3个促销礼包替换成3个红包				
-- 4	抽奖去掉促销礼包，概率加到其他道具上				
-- 5	合成面具的后面加赠字				
-- 6	促销的道具礼包，放到两个NPC身上卖，之前的春节促销专员不要了				
-- 7	背包信替换				
-- 8	坐骑碎片图标替换				
-- 9	普通表情道具可兑换成200气力值，高级表情道具可兑换成2000气力值。				
--------------------------------------------------------------------------------
---Name:160112[简体征服][活动脚本]年终大促及年兽促销活动Npc部分(02.01-02.29)
--Creator: 	范琼
--Created:	2016-01-19
--------------------------------------------------------------------------------
--logid:12000302，12000303
--stc 14177-14182
----stc掩码说明：
----ste(141,77)  :
		-- 记录喂香蕉的天数
		-- 
----ste(141,78)  :
		-- 0表示未领取，
		-- 1表示已领取烟花，但是没有燃放
		-- 2表示没有领取，但是燃放了
		-- 3表示领取过了也然放了
----ste(141,79) : 
		--0：表示未参加过秒杀，
		-- 1~7表示对应场次已秒杀过
----ste(141,80) : 
		-- 记录刷验证对应的场次；1~7对应7个场次
----ste(141,81) : 
		-- 记录获得过的8种不同坐骑外套
		-- 8位2进制数表示：0表示还没获得过，1表示获得过
----ste(141,82) : 
		--记录点击烟花物品的时间戳
		--烟花每次可点击的时间间隔为1分钟
--Global:51021 
----data0记录：龙珠剩余数；
----data1:记录红包剩余数；
----data2:记录时效促销包剩余数
--Global:51022
----data0记录分服id

--EmoneyLog:
-----2504000
-----2504001
--命名规范
--NewYearPromote_

----------------------------------------数据部分-------------------------------------------
--log表
local tNewYearPromote_Npc_Log = {}
	---香蕉抽奖log
	tNewYearPromote_Npc_Log["Bana"] = {}
	--1根香蕉抽奖
	tNewYearPromote_Npc_Log["Bana"][1] = "0,0,3008609,1,12000302,1[1],%d,%d"
	--10根香蕉抽奖
	tNewYearPromote_Npc_Log["Bana"][10] = "0,0,3008609,10,12000302,1[2],%d,%d"
	--消耗天石抽奖log
	tNewYearPromote_Npc_Log["Emoney"] = {}
	--消耗9天石，喂香蕉抽奖
	tNewYearPromote_Npc_Log["Emoney"][1] = "9,0,0,0,12000302,1[1],%d,%d"
	--消耗90天石，喂香蕉抽奖
	tNewYearPromote_Npc_Log["Emoney"][10] = "90,0,0,0,12000302,1[2],%d,%d"
	
	--参加5天或15天 获得呆萌猴
	tNewYearPromote_Npc_Log["TDailyLuckDraw"] = "0,0,0,0,12000302,1[15],200553,1"
	--获得烟花
	tNewYearPromote_Npc_Log["GetFireworks"] = "0,0,0,0,12000303,2,3008623,1"
	--使用烟花获得物品
	tNewYearPromote_Npc_Log["UseFirework"] = "0,0,3008623,1,12000303,2[1],%d,%d"
	--秒杀活动获得物品
	tNewYearPromote_Npc_Log["SecKillReward"] = "0,0,0,0,12000303,2[2],%d,%d"
	--打开红包获得赠品天石
	tNewYearPromote_Npc_Log["OpenRedBag"] = "0,0,0,0,12000303,2[3],3,%d"
	
local tNewYearPromote_Npc_EmoneyLog = {}
	--花9天石抽奖
	tNewYearPromote_Npc_EmoneyLog[1] =  "250	4000	9	9	1	"
	--花90天石抽奖
	tNewYearPromote_Npc_EmoneyLog[10] = "250	4001	90	90	1	"
	---香蕉抽奖log
	tNewYearPromote_Npc_EmoneyLog["Bana"] = {}
	--1根香蕉抽奖
	tNewYearPromote_Npc_EmoneyLog["Bana"][1] = "350	20266	0	0	1	"
	--10根香蕉抽奖
	tNewYearPromote_Npc_EmoneyLog["Bana"][10] = "350	20267	0	0	1	"
	--消耗天石抽奖log
	tNewYearPromote_Npc_EmoneyLog["Emoney"] = {}
	--消耗9天石，喂香蕉抽奖
	tNewYearPromote_Npc_EmoneyLog["Emoney"][1] = "250	4000	9	9	1	"
	--消耗90天石，喂香蕉抽奖
	tNewYearPromote_Npc_EmoneyLog["Emoney"][10] = "250	4001	90	90	1	"
	
	
local tNewYearPromote_ActivityData = {}
	--活动时间前
	tNewYearPromote_ActivityData["Beftime"]= "2016-01-01 00:00 2016-08-24 23:59"
	--活动时间
	tNewYearPromote_ActivityData["Now_Time"] = "2016-08-25 00:00 2016-09-07 23:59"
	
	--背包空格
	tNewYearPromote_ActivityData["Space"] = 1
	--背包空格2
	tNewYearPromote_ActivityData["SpaceTwo"] = 2
	--玩家等级要求
	tNewYearPromote_ActivityData["Metempsychosis"] = 0
	tNewYearPromote_ActivityData["Level"] = 80
	--全局表
	tNewYearPromote_ActivityData["Global"] = 51021
	
	--可以传送的地图id
	tNewYearPromote_ActivityData["MapCanTran"] = {}
	--双龙城/清风原
	tNewYearPromote_ActivityData["MapCanTran"][1] = 1002
	--云门关
	tNewYearPromote_ActivityData["MapCanTran"][2] = 1000
	--市场
	tNewYearPromote_ActivityData["MapCanTran"][3] = 1036
	--枫溪林
	tNewYearPromote_ActivityData["MapCanTran"][4] = 1011
	--芦花荡
	tNewYearPromote_ActivityData["MapCanTran"][5] = 1015
	--绝情谷
	tNewYearPromote_ActivityData["MapCanTran"][6] = 1020
	
	--传送到新年大使身边
	tNewYearPromote_ActivityData["MapCanTran"]["MapId"] = 1002
	tNewYearPromote_ActivityData["MapCanTran"]["Cellx"] = 259
	tNewYearPromote_ActivityData["MapCanTran"]["Celly"] = 229
	tNewYearPromote_ActivityData["MapCanTran"]["Range"] = 3
	tNewYearPromote_ActivityData["MapCanTran"]["NpcId"] = 19081
	
local tNewYearPromote_ItemData = {}
	--香蕉
	tNewYearPromote_ItemData["Banana"] = 3008609 
	--红包
	tNewYearPromote_ItemData["RedBag"] = 3008624 
	tNewYearPromote_ItemData["RedBagAttr"] = ""
	
	--特级烟花“窜天猴”
	tNewYearPromote_ItemData["Fireworks"] = {}
	tNewYearPromote_ItemData["Fireworks"]["ItemId"] = 3008623 
	tNewYearPromote_ItemData["Fireworks"]["Num"] = 1
	--烟花光效
	tNewYearPromote_ItemData["FireWorksEffec"] = {}
	tNewYearPromote_ItemData["FireWorksEffec"][1] = "FF12-01"
	tNewYearPromote_ItemData["FireWorksEffec"][2] = "FF13-01"
	tNewYearPromote_ItemData["FireWorksEffec"][3] = "FF14-01"	
	--参加5次或15次获得呆萌猴
	tNewYearPromote_ItemData["ExReward"] = {}
	tNewYearPromote_ItemData["ExReward"]["nItem"] = 200553
	tNewYearPromote_ItemData["ExReward"]["Zeng"] = 3
	tNewYearPromote_ItemData["ExReward"]["NAttr"] = "0 0 3 0 0 0 0 1"
	tNewYearPromote_ItemData["ExReward"]["Log"] = "350	20268	0	0	1	"

--花天石抽奖
local tNewYearPromote_Npc_TS = {
	[1] = 9,
	[10] = 90,
}
	
local tNewYearPromote_Npc_Stc = {}
--stc掩码
	tNewYearPromote_Npc_Stc["EventType"] = 141
	tNewYearPromote_Npc_Stc["DataType"] = {}
	--记录参加天数
	tNewYearPromote_Npc_Stc["DataType"][1] = 77
	--记录当天是否领取过烟花或已燃放烟花
	tNewYearPromote_Npc_Stc["DataType"][2] = 78
	--记录当前场次玩家是否秒杀过
	--0：表示未抽过，1~7表示对应场次已秒杀过
	tNewYearPromote_Npc_Stc["DataType"][3] = 79
	--记录刷验证对应的场次
	tNewYearPromote_Npc_Stc["DataType"][4] = 80
	--记录获得过的8种不同坐骑外套
	tNewYearPromote_Npc_Stc["DataType"][5] = 81
	--记录每次点击烟花的时间戳
	tNewYearPromote_Npc_Stc["DataType"][6] = 82
	
--任务状态标记
local tNewYearPromote_StateMark ={}
	--1表示已领取
	tNewYearPromote_StateMark["GetFireworks"] = 1
	--2表示已完成
	tNewYearPromote_StateMark["FinishFireworks"] = 2
	
--秒杀时间段(每场10分钟)
local tNewYearPromote_Npc_Times = {}
	tNewYearPromote_Npc_Times[1] = "10:00 10:10"
	tNewYearPromote_Npc_Times[2] = "12:00 12:10"
	tNewYearPromote_Npc_Times[3] = "14:00 14:10"
	tNewYearPromote_Npc_Times[4] = "16:00 16:10"
	tNewYearPromote_Npc_Times[5] = "18:00 18:10"
	tNewYearPromote_Npc_Times[6] = "20:00 20:10"
	tNewYearPromote_Npc_Times[7] = "22:00 22:10"

--非秒杀时间段
local tNewYearPromote_Npc_OutTimes = {}
	tNewYearPromote_Npc_OutTimes[1] = "00:00 09:59"
	tNewYearPromote_Npc_OutTimes[2] = "10:11 11:59"
	tNewYearPromote_Npc_OutTimes[3] = "12:11 13:59"
	tNewYearPromote_Npc_OutTimes[4] = "14:11 15:59"
	tNewYearPromote_Npc_OutTimes[5] = "16:11 17:59"
	tNewYearPromote_Npc_OutTimes[6] = "18:11 19:59"
	tNewYearPromote_Npc_OutTimes[7] = "20:11 21:59"
	
--秒杀结束时间
local tNewYearPromote_Npc_OverTime = "22:11 23:59"
	
-- 秒杀礼包
local tNewYearPromote_Npc_SecKillReward = {}
	--龙珠
	tNewYearPromote_Npc_SecKillReward[1] = {}
	tNewYearPromote_Npc_SecKillReward[1]["Item_1"] = 1088000
	
	--财运大红包
	tNewYearPromote_Npc_SecKillReward[2] = {}
	tNewYearPromote_Npc_SecKillReward[2]["Item_1"] = 3008624
	
	--促销包，标记
	-- 改为3个财运大红包
	tNewYearPromote_Npc_SecKillReward[3] = {}
	tNewYearPromote_Npc_SecKillReward[3]["Item_1"] = 3008624  -- 3
	
---上交香蕉随机获得碎片
 local tNewYearPromote_Npc_RewardItem = {}
	--------1根香蕉奖励
	tNewYearPromote_Npc_RewardItem[1] = {}
	tNewYearPromote_Npc_RewardItem[1][1] = {}
	tNewYearPromote_Npc_RewardItem[1][1]["ItemChanceSum"] = 10000
	--永久呆萌猴坐骑碎片 3.00%
	tNewYearPromote_Npc_RewardItem[1][1][1] = {}
	tNewYearPromote_Npc_RewardItem[1][1][1]["RandomItemChanceType"] = 2
	tNewYearPromote_Npc_RewardItem[1][1][1]["ItemChance"] = 300
	tNewYearPromote_Npc_RewardItem[1][1][1]["Item_1"] = 3008588
	
	--极品灵猴面具碎片0.6%             
	tNewYearPromote_Npc_RewardItem[1][1][2] = {}
	tNewYearPromote_Npc_RewardItem[1][1][2]["RandomItemChanceType"] = 2
	tNewYearPromote_Npc_RewardItem[1][1][2]["ItemChance"] = 60
	tNewYearPromote_Npc_RewardItem[1][1][2]["Item_1"] = 3008589

	--普通灵猴面具碎片35%           
	tNewYearPromote_Npc_RewardItem[1][1][3] = {}
	tNewYearPromote_Npc_RewardItem[1][1][3]["RandomItemChanceType"] = 2
	tNewYearPromote_Npc_RewardItem[1][1][3]["ItemChance"] = 3500
	tNewYearPromote_Npc_RewardItem[1][1][3]["Item_1"] = 3008590

	--1天时效呆盟猴（赠）5%          
	tNewYearPromote_Npc_RewardItem[1][1][4] = {}
	tNewYearPromote_Npc_RewardItem[1][1][4]["RandomItemChanceType"] = 2
	tNewYearPromote_Npc_RewardItem[1][1][4]["ItemChance"] = 500
	tNewYearPromote_Npc_RewardItem[1][1][4]["Item_1"] = 200553
	tNewYearPromote_Npc_RewardItem[1][1][4]["Zeng"] = 3
	tNewYearPromote_Npc_RewardItem[1][1][4]["Day"] = 1
	tNewYearPromote_Npc_RewardItem[1][1][4]["NAttr"] = "0 0 3 1440 1 0 0 1"

	--1天时效嘻哈猴（赠）5%          
	tNewYearPromote_Npc_RewardItem[1][1][5] = {}
	tNewYearPromote_Npc_RewardItem[1][1][5]["RandomItemChanceType"] = 2
	tNewYearPromote_Npc_RewardItem[1][1][5]["ItemChance"] = 500
	tNewYearPromote_Npc_RewardItem[1][1][5]["Item_1"] = 200554
	tNewYearPromote_Npc_RewardItem[1][1][5]["Zeng"] = 3
	tNewYearPromote_Npc_RewardItem[1][1][5]["Day"] = 1
	tNewYearPromote_Npc_RewardItem[1][1][5]["NAttr"] = "0 0 3 1440 1 0 0 1"

	--1天时效俏皮猴（赠）5%          
	tNewYearPromote_Npc_RewardItem[1][1][6] = {}
	tNewYearPromote_Npc_RewardItem[1][1][6]["RandomItemChanceType"] = 2
	tNewYearPromote_Npc_RewardItem[1][1][6]["ItemChance"] = 500
	tNewYearPromote_Npc_RewardItem[1][1][6]["Item_1"] = 200555
	tNewYearPromote_Npc_RewardItem[1][1][6]["Zeng"] = 3
	tNewYearPromote_Npc_RewardItem[1][1][6]["Day"] = 1
	tNewYearPromote_Npc_RewardItem[1][1][6]["NAttr"] = "0 0 3 1440 1 0 0 1"

	--1天时效开心猴（赠）5%          
	tNewYearPromote_Npc_RewardItem[1][1][7] = {}
	tNewYearPromote_Npc_RewardItem[1][1][7]["RandomItemChanceType"] = 2
	tNewYearPromote_Npc_RewardItem[1][1][7]["ItemChance"] = 500
	tNewYearPromote_Npc_RewardItem[1][1][7]["Item_1"] = 200556
	tNewYearPromote_Npc_RewardItem[1][1][7]["Zeng"] = 3
	tNewYearPromote_Npc_RewardItem[1][1][7]["Day"] = 1
	tNewYearPromote_Npc_RewardItem[1][1][7]["NAttr"] = "0 0 3 1440 1 0 0 1"

	--1天时效逗比猴（赠）5%          
	tNewYearPromote_Npc_RewardItem[1][1][8] = {}
	tNewYearPromote_Npc_RewardItem[1][1][8]["RandomItemChanceType"] = 2
	tNewYearPromote_Npc_RewardItem[1][1][8]["ItemChance"] = 500
	tNewYearPromote_Npc_RewardItem[1][1][8]["Item_1"] = 200557
	tNewYearPromote_Npc_RewardItem[1][1][8]["Zeng"] = 3
	tNewYearPromote_Npc_RewardItem[1][1][8]["Day"] = 1
	tNewYearPromote_Npc_RewardItem[1][1][8]["NAttr"] = "0 0 3 1440 1 0 0 1"

	--1天时效娇媚猴（赠）5%          
	tNewYearPromote_Npc_RewardItem[1][1][9] = {}
	tNewYearPromote_Npc_RewardItem[1][1][9]["RandomItemChanceType"] = 2
	tNewYearPromote_Npc_RewardItem[1][1][9]["ItemChance"] = 500
	tNewYearPromote_Npc_RewardItem[1][1][9]["Item_1"] = 200558
	tNewYearPromote_Npc_RewardItem[1][1][9]["Zeng"] = 3
	tNewYearPromote_Npc_RewardItem[1][1][9]["Day"] = 1
	tNewYearPromote_Npc_RewardItem[1][1][9]["NAttr"] = "0 0 3 1440 1 0 0 1"

	--1天时效猴王天天（赠）4%        
	tNewYearPromote_Npc_RewardItem[1][1][10] = {}
	tNewYearPromote_Npc_RewardItem[1][1][10]["RandomItemChanceType"] = 2
	tNewYearPromote_Npc_RewardItem[1][1][10]["ItemChance"] = 400
	tNewYearPromote_Npc_RewardItem[1][1][10]["Item_1"] = 200559
	tNewYearPromote_Npc_RewardItem[1][1][10]["Zeng"] = 3
	tNewYearPromote_Npc_RewardItem[1][1][10]["Day"] = 1
	tNewYearPromote_Npc_RewardItem[1][1][10]["NAttr"] = "0 0 3 1440 1 0 0 1"

	--1天时效猴王西西（赠）4%        
	tNewYearPromote_Npc_RewardItem[1][1][11] = {}
	tNewYearPromote_Npc_RewardItem[1][1][11]["RandomItemChanceType"] = 2
	tNewYearPromote_Npc_RewardItem[1][1][11]["ItemChance"] = 400
	tNewYearPromote_Npc_RewardItem[1][1][11]["Item_1"] = 200560
	tNewYearPromote_Npc_RewardItem[1][1][11]["Zeng"] = 3
	tNewYearPromote_Npc_RewardItem[1][1][11]["Day"] = 1
	tNewYearPromote_Npc_RewardItem[1][1][11]["NAttr"] = "0 0 3 1440 1 0 0 1"

	-- 改为 3002029	护心丹  4.50%
	tNewYearPromote_Npc_RewardItem[1][1][12] = {}
	tNewYearPromote_Npc_RewardItem[1][1][12]["RandomItemChanceType"] = 2
	tNewYearPromote_Npc_RewardItem[1][1][12]["ItemChance"] = 450
	tNewYearPromote_Npc_RewardItem[1][1][12]["Item_1"] = 3002029
	tNewYearPromote_Npc_RewardItem[1][1][12]["NAttr"] = "0 0 0 2880 1"

	-- 改为 3006542	真气礼包		4.90%
	tNewYearPromote_Npc_RewardItem[1][1][13] = {}
	tNewYearPromote_Npc_RewardItem[1][1][13]["RandomItemChanceType"] = 2
	tNewYearPromote_Npc_RewardItem[1][1][13]["ItemChance"] = 490
	tNewYearPromote_Npc_RewardItem[1][1][13]["Item_1"] = 3006542

	-- 改为 3006543	修炼礼包		4.00%
	tNewYearPromote_Npc_RewardItem[1][1][14] = {}
	tNewYearPromote_Npc_RewardItem[1][1][14]["RandomItemChanceType"] = 2
	tNewYearPromote_Npc_RewardItem[1][1][14]["ItemChance"] = 400
	tNewYearPromote_Npc_RewardItem[1][1][14]["Item_1"] = 3006543

	-- 改为 729252	龙虎回力丸(10点气力)		5.00%
	tNewYearPromote_Npc_RewardItem[1][1][15] = {}
	tNewYearPromote_Npc_RewardItem[1][1][15]["RandomItemChanceType"] = 2
	tNewYearPromote_Npc_RewardItem[1][1][15]["ItemChance"] = 500
	tNewYearPromote_Npc_RewardItem[1][1][15]["Item_1"] = 729252

	-- 改为 723341	玄灵秘录		5.00%
	tNewYearPromote_Npc_RewardItem[1][1][16] = {}
	tNewYearPromote_Npc_RewardItem[1][1][16]["RandomItemChanceType"] = 2
	tNewYearPromote_Npc_RewardItem[1][1][16]["ItemChance"] = 500
	tNewYearPromote_Npc_RewardItem[1][1][16]["Item_1"] = 723341

--------------10根香蕉奖励
	tNewYearPromote_Npc_RewardItem[10] = {}
	tNewYearPromote_Npc_RewardItem[10][1] = {}
	tNewYearPromote_Npc_RewardItem[10][1]["ItemChanceSum"] = 10000
	-- 永久悠嘻猴坐骑碎片	29.50%   
	tNewYearPromote_Npc_RewardItem[10][1][1] = {}
	tNewYearPromote_Npc_RewardItem[10][1][1]["RandomItemChanceType"] = 2
	tNewYearPromote_Npc_RewardItem[10][1][1]["ItemChance"] = 2950
	tNewYearPromote_Npc_RewardItem[10][1][1]["Item_1"] = 3008588

	-- 极品灵猴面具碎片	6.00%       
	tNewYearPromote_Npc_RewardItem[10][1][2] = {}
	tNewYearPromote_Npc_RewardItem[10][1][2]["RandomItemChanceType"] = 2
	tNewYearPromote_Npc_RewardItem[10][1][2]["ItemChance"] = 600
	tNewYearPromote_Npc_RewardItem[10][1][2]["Item_1"] = 3008589

	-- 呆萌猴面具		7.00%     
	tNewYearPromote_Npc_RewardItem[10][1][3] = {}
	tNewYearPromote_Npc_RewardItem[10][1][3]["RandomItemChanceType"] = 2
	tNewYearPromote_Npc_RewardItem[10][1][3]["ItemChance"] = 700
	tNewYearPromote_Npc_RewardItem[10][1][3]["Item_1"] = 3008593

	-- 嘻哈猴面具		11.50%      
	tNewYearPromote_Npc_RewardItem[10][1][4] = {}
	tNewYearPromote_Npc_RewardItem[10][1][4]["RandomItemChanceType"] = 2
	tNewYearPromote_Npc_RewardItem[10][1][4]["ItemChance"] = 1150
	tNewYearPromote_Npc_RewardItem[10][1][4]["Item_1"] = 3008594

	-- 俏皮猴面具		11.50%          
	tNewYearPromote_Npc_RewardItem[10][1][5] = {}
	tNewYearPromote_Npc_RewardItem[10][1][5]["RandomItemChanceType"] = 2
	tNewYearPromote_Npc_RewardItem[10][1][5]["ItemChance"] = 1150
	tNewYearPromote_Npc_RewardItem[10][1][5]["Item_1"] = 3008595

	-- 开心猴面具		11.50%          
	tNewYearPromote_Npc_RewardItem[10][1][6] = {}
	tNewYearPromote_Npc_RewardItem[10][1][6]["RandomItemChanceType"] = 2
	tNewYearPromote_Npc_RewardItem[10][1][6]["ItemChance"] = 1150
	tNewYearPromote_Npc_RewardItem[10][1][6]["Item_1"] = 3008596

	-- 逗比猴面具		11.50%         
	tNewYearPromote_Npc_RewardItem[10][1][7] = {}
	tNewYearPromote_Npc_RewardItem[10][1][7]["RandomItemChanceType"] = 2
	tNewYearPromote_Npc_RewardItem[10][1][7]["ItemChance"] =1150
	tNewYearPromote_Npc_RewardItem[10][1][7]["Item_1"] = 3008597

	-- 娇媚猴面具		11.50%        
	tNewYearPromote_Npc_RewardItem[10][1][8] = {}
	tNewYearPromote_Npc_RewardItem[10][1][8]["RandomItemChanceType"] = 2
	tNewYearPromote_Npc_RewardItem[10][1][8]["ItemChance"] = 1150
	tNewYearPromote_Npc_RewardItem[10][1][8]["Item_1"] = 3008598

--每日任务抽奖数据
local tNewYearPromote_DailyRewardItem = {}
	tNewYearPromote_DailyRewardItem[1] = {}
	tNewYearPromote_DailyRewardItem[1]["ItemChanceSum"] = 10000

-- 永久赠品悠嘻猴坐骑碎片1个		50%  永久呆萌猴坐骑碎片
	tNewYearPromote_DailyRewardItem[1][1] = {}
	tNewYearPromote_DailyRewardItem[1][1]["RandomItemChanceType"] = 2
	tNewYearPromote_DailyRewardItem[1][1]["ItemChance"] = 5000
	tNewYearPromote_DailyRewardItem[1][1]["Item_1"] = 3008588

-- 永久赠品悠嘻猴坐骑碎片1个+1普通		30%  普通灵猴面具碎片
	tNewYearPromote_DailyRewardItem[1][2] = {}
	tNewYearPromote_DailyRewardItem[1][2]["RandomItemChanceType"] = 2
	tNewYearPromote_DailyRewardItem[1][2]["ItemChance"] = 3000
	tNewYearPromote_DailyRewardItem[1][2]["Item_1"] = 3008590
	
-- 永久赠品悠嘻猴坐骑碎片1个+1高级		10%  极品灵猴面具碎片
	tNewYearPromote_DailyRewardItem[1][3] = {}
	tNewYearPromote_DailyRewardItem[1][3]["RandomItemChanceType"] = 2
	tNewYearPromote_DailyRewardItem[1][3]["ItemChance"] = 1000
	tNewYearPromote_DailyRewardItem[1][3]["Item_1"] = 3008589
	
-- 永久赠品悠嘻猴坐骑碎片2个		10% 永久呆萌猴坐骑碎片
	tNewYearPromote_DailyRewardItem[1][4] = {}
	tNewYearPromote_DailyRewardItem[1][4]["RandomItemChanceType"] = 2
	tNewYearPromote_DailyRewardItem[1][4]["ItemChance"] = 1000
	tNewYearPromote_DailyRewardItem[1][4]["Item_1"] = 3008589
	tNewYearPromote_DailyRewardItem[1][4]["Num"] = 2
	tNewYearPromote_DailyRewardItem[1][4]["NAttr"] = "0 2"

------物品使用数据
local tNewYearPromote_Npc_UseItemData = {}
	--红包
	tNewYearPromote_Npc_UseItemData[3008624] = {}
	tNewYearPromote_Npc_UseItemData[3008624]["Min"] = 1
	tNewYearPromote_Npc_UseItemData[3008624]["Max"] = 88
	
	--8种猴坐骑外套
	tNewYearPromote_Npc_UseItemData["MonkeyData"] = {}
	tNewYearPromote_Npc_UseItemData["MonkeyData"][200553] = 1 
	tNewYearPromote_Npc_UseItemData["MonkeyData"][200554] = 2 
	tNewYearPromote_Npc_UseItemData["MonkeyData"][200555] = 3
	tNewYearPromote_Npc_UseItemData["MonkeyData"][200556] = 4
	tNewYearPromote_Npc_UseItemData["MonkeyData"][200557] = 5
	tNewYearPromote_Npc_UseItemData["MonkeyData"][200558] = 6
	tNewYearPromote_Npc_UseItemData["MonkeyData"][200559] = 7 --天天
	tNewYearPromote_Npc_UseItemData["MonkeyData"][200560] = 8 --西西
	
	tNewYearPromote_Npc_UseItemData["CoatTitleOne"] = {2013,14,0} --山中无老虎
	tNewYearPromote_Npc_UseItemData["CoatTitleTwo"] = {2015,16,0} --一路向西
	tNewYearPromote_Npc_UseItemData["CoatTitleThree"] = {2014,15,0} --骑天大圣
	tNewYearPromote_Npc_UseItemData["CoatTitleFour"] = {2016,17,0} --猴赛雷
	
	
-- 增加猴子标示表
local tNewYearPromote_Npc_CoatFlag = {}
	tNewYearPromote_Npc_CoatFlag[1] = 120
	tNewYearPromote_Npc_CoatFlag[2] = 84
	tNewYearPromote_Npc_CoatFlag[3] = 85
	tNewYearPromote_Npc_CoatFlag[4] = 86
	tNewYearPromote_Npc_CoatFlag[5] = 87
	tNewYearPromote_Npc_CoatFlag[6] = 88
	tNewYearPromote_Npc_CoatFlag[7] = 89
	tNewYearPromote_Npc_CoatFlag[8] = 90
	
	--通用光效
local tNewYearPromote_Npc_Effect = "angelwing"
	--追加赠品属性
local tNewYearPromote_DataZeng = 3
local tNewYearPromote_nMarketMap = 1002

-----------------------------------------------逻辑部分-------------------------------------------
--检测当前时间是否是秒杀场次
--返回场次，或false
function NewYearPromote_Npc_GetNowSecKillRace(tDataTime) 
	for i,v in pairs(tDataTime) do
		if Sys_ChkDayTime(v) then
			return i
		end	
	end
	return false
end

--抽奖逻辑
function NewYearPromote_Npc_GetItem_useBana(nNpcId,nBananaNum,sLogMark)
	local sLog = ""
	local sAwardTip = ""
	local sStips = ""
	local sAwardItemName = ""
	--随机给每日任务奖励
	if tNewYearPromote_Npc_RewardItem[nBananaNum] and tNewYearPromote_Npc_RewardItem[nBananaNum] then
		local flat,tItemTable = Probabil_RandomAward(tNewYearPromote_Npc_RewardItem[nBananaNum],1)
		local nItemId = tItemTable[1]["tAward"][1]["Item_1"]
		local nZeng = tItemTable[1]["tAward"][1]["Zeng"] or 0
		local nNum =  tItemTable[1]["tAward"][1]["Num"] or 1
		local sAttr = tItemTable[1]["tAward"][1]["NAttr"] or ""
		local nDay = tItemTable[1]["tAward"][1]["Day"] or 0
		sAwardItemName = Get_ItemtypeName(nItemId)
		--追加赠品属性
		if nZeng == tNewYearPromote_DataZeng then
			sAwardItemName= sAwardItemName..tNewYearPromote_Npc_Text["ItemZeng"]
		end
		--追加时效属性
		if nDay > 0 then
			sAwardItemName= string.format(tNewYearPromote_Npc_Text["ItemTimeTip"],tonumber(nDay))..sAwardItemName
		end
		--添加物品
		if not Item_AddNewItem(nItemId,sAttr) then
			return
		end
		--2005提示
		-- sAwardTip = string.format(tNewYearPromote_Npc_Text["RewardTips"][nBananaNum],tostring(sAwardItemName))
		-- User_TalkChannel2005(sAwardTip)
		--获得物品打log
		if tNewYearPromote_Npc_Log[sLogMark] and tNewYearPromote_Npc_Log[sLogMark][nBananaNum] then
			sLog = string.format(tNewYearPromote_Npc_Log[sLogMark][nBananaNum],tonumber(nItemId),tonumber(nNum))
			Sys_SaveActionFestivalLog(sLog)
		end
		
		if tNewYearPromote_Npc_EmoneyLog[sLogMark] and tNewYearPromote_Npc_EmoneyLog[sLogMark][nBananaNum] then
			Sys_SaveEmoneyBuy(tNewYearPromote_Npc_EmoneyLog[sLogMark][nBananaNum])
		end
		
		local nEvent = tNewYearPromote_Npc_Stc["EventType"]
		local nType = tNewYearPromote_Npc_Stc["DataType"][1]
		--检测是否是今天第一次交,且15天之前
		
			if Task_StcInterval(nEvent,nType,1,4) and Get_UserStatisticValue(nEvent,nType) <= 15 then
				--上交香蕉成功，掩码+1
				Task_AddStatistic(nEvent,nType,1,1)
				Task_SetStcTimestamp(nEvent,nType,0,0)
				--获取上交香蕉天数
				local nSendTimes = Get_UserStatisticValue(nEvent,nType)
				--是否参加5次或15次任务
				if nSendTimes == 5 or nSendTimes == 14 then
					--给永久呆萌猴坐骑（赠）
					Item_AddNewItem(tNewYearPromote_ItemData["ExReward"]["nItem"],tNewYearPromote_ItemData["ExReward"]["NAttr"]) 
					-- --是否获得称号
					-- NewYearPromote_Npc_GetTiTle(tNewYearPromote_ItemData["ExReward"]["nItem"])
					local sNameTips = Get_ItemtypeName(tNewYearPromote_ItemData["ExReward"]["nItem"])
					if tNewYearPromote_ItemData["ExReward"]["Zeng"] == 3 then
						sNameTips = sNameTips .. tNewYearPromote_Npc_Text["ItemZeng"]
					end
					Sys_SaveEmoneyBuy(tNewYearPromote_ItemData["ExReward"]["Log"])
					Sys_SaveActionFestivalLog(tNewYearPromote_Npc_Log["TDailyLuckDraw"])
					sStips = string.format(tNewYearPromote_Npc_Text["GetItemTips"],sNameTips)	
					User_TalkChannel2005(sStips)
				end
			end
		--播放光效
		User_EffectAdd("self",tNewYearPromote_Npc_Effect)
		--2005提示
		sStips = string.format(tNewYearPromote_Npc_Text[nBananaNum]["SendBunanaTipsFive"],sAwardItemName)	
		User_TalkChannel2005(sStips)
		--留在当前对白层
		LinkNpcGossipFunc_New(nNpcId,"2-3")
	end
	
end

--送香蕉
function NewYearPromote_SendBanana(nNpcId,nBananaNum)
	
	--是否在活动时间内
	if not Sys_ChkFullTime(tNewYearPromote_ActivityData["Now_Time"]) then
		return 
	end
	
	local nLevel = tNewYearPromote_ActivityData["Level"]
	local nMetempsychosis = tNewYearPromote_ActivityData["Metempsychosis"]
	--检测玩家等级，等级条件不满足不显示
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMetempsychosis) then
		return 	
	end
	
	--判断背包空间
	if not User_CheckLeftSpace(tNewYearPromote_ActivityData["SpaceTwo"]) then
		--接背包空间不足提示
		tNpcGossip[19080]["Text221"] = string.format(tNewYearPromote_Npc_Text[19080]["Text221"],tNewYearPromote_ActivityData["SpaceTwo"])
		--LinkNpcGossipFunc_New(nNpcId,"2-2")
		-- 2005提示		
		User_TalkChannel2005(string.format(tNewYearPromote_Npc_Text["MonkeyBagFull"],tNewYearPromote_ActivityData["SpaceTwo"]))
		return
	end	
	
	--检测物品，删除物品
	if Item_ChkMulItem(tNewYearPromote_ItemData["Banana"],tNewYearPromote_ItemData["Banana"],nBananaNum) and Item_DelMulItem(tNewYearPromote_ItemData["Banana"],tNewYearPromote_ItemData["Banana"],nBananaNum) then	
		--走抽奖
		NewYearPromote_Npc_GetItem_useBana(nNpcId,nBananaNum,"Bana")
	else
		--删除失败对白
		local sStipMark = {}
		sStipMark[1] = "3-1"
		sStipMark[10] = "3-2"
		LinkNpcGossipFunc_New(nNpcId,sStipMark[nBananaNum])
	end
end

--用天石抽奖
function NewYearPromote_Npc_UseTS(nNpcId,nBananaNum)
	--是否在活动时间内
	if not Sys_ChkFullTime(tNewYearPromote_ActivityData["Now_Time"]) then
		return 
	end
	
	--判断背包空间
	if not User_CheckLeftSpace(tNewYearPromote_ActivityData["SpaceTwo"]) then
		--接背包空间不足提示
		tNpcGossip[19080]["Text221"] = string.format(tNewYearPromote_Npc_Text[19080]["Text221"],tNewYearPromote_ActivityData["SpaceTwo"])
		-- 2005提示		
		User_TalkChannel2005(string.format(tNewYearPromote_Npc_Text["MonkeyBagFull"],tNewYearPromote_ActivityData["SpaceTwo"]))
		return
	end	
	
	--检测玩家是否有足够天石
	if tNewYearPromote_Npc_TS[nBananaNum] then	
		local nEmoney = Get_UserEMoney()
		--天石不足
		if nEmoney < tNewYearPromote_Npc_TS[nBananaNum] then			
			--2005提示
			User_TalkChannel2005(string.format(tNewYearPromote_Npc_Text["LessOfTS"],tNewYearPromote_Npc_TS[nBananaNum]))
			return
		else
			--扣天石
			if User_AddEMoney(-tNewYearPromote_Npc_TS[nBananaNum]) then
				-- --打EmoneyLog
				-- if tNewYearPromote_Npc_EmoneyLog[nBananaNum] then
					-- Sys_SaveEmoneyBuy(tNewYearPromote_Npc_EmoneyLog[nBananaNum])
				-- end
				--走抽奖
				NewYearPromote_Npc_GetItem_useBana(nNpcId,nBananaNum,"Emoney")
			else
				--2005提示
				User_TalkChannel2005(string.format(tNewYearPromote_Npc_Text["LessOfTS"],tNewYearPromote_Npc_TS[nBananaNum]))		
			end
		end
	end
end

--补领取烟花
function NewYearPromote_Re_GetFireworks(nNpcId)
	--是否在活动时间内
	if not Sys_ChkFullTime(tNewYearPromote_ActivityData["Now_Time"]) then
		return false
	end
	
	local nLevel = tNewYearPromote_ActivityData["Level"]
	local nMetempsychosis = tNewYearPromote_ActivityData["Metempsychosis"]
	--检测玩家等级，等级条件不满足不显示
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMetempsychosis) then
		return 	
	end
	
	local nEvent = tNewYearPromote_Npc_Stc["EventType"]
	local nType = tNewYearPromote_Npc_Stc["DataType"][2]
	--当天是否已完成
	if Task_ChkStcValue(nEvent,nType,"==",tNewYearPromote_StateMark["FinishFireworks"]) then
		return
	end
	--检测是否已有烟花
	if Item_ChkItem(tNewYearPromote_ItemData["Fireworks"]["ItemId"]) then
		--失败、已有烟花
		LinkNpcGossipFunc_New(nNpcId,"2-4")
		return
	end

	--检测背包空间
	if not User_CheckLeftSpace(tNewYearPromote_ActivityData["Space"]) then
		--接背包空间不足对白
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return
	end	
	--添加烟花
	if Item_AddItem(tNewYearPromote_ItemData["Fireworks"]["ItemId"]) then
		--2005提示
		User_TalkChannel2005(tNewYearPromote_Npc_Text["GetFireworks"])
		--log记录
		local sLog = tNewYearPromote_Npc_Log["GetFireworks"] 
		Sys_SaveActionFestivalLog(sLog)
		--接领取成功对白 2-5
		LinkNpcGossipFunc_New(nNpcId,"2-5")
	end	
end

--我要燃放烟花
function NewYearPromote_AskFireworks(nNpcId)
	--是否在活动时间内
	if not Sys_ChkFullTime(tNewYearPromote_ActivityData["Now_Time"]) then
		return false
	end
	
	local nLevel = tNewYearPromote_ActivityData["Level"]
	local nMetempsychosis = tNewYearPromote_ActivityData["Metempsychosis"]
	--检测玩家等级，等级条件不满足不显示
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMetempsychosis) then
		return 	
	end
	
	local nEvent = tNewYearPromote_Npc_Stc["EventType"]
	local nType = tNewYearPromote_Npc_Stc["DataType"][2]
	--隔天清掩码
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1,0)
		Task_SetStcTimestamp(nEvent,nType,0,0)
	end
	--当天是否领取过烟花且放过烟花
	if Task_ChkStcValue(nEvent,nType,"==",1)  then
		--领过没有放
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	elseif  Task_ChkStcValue(nEvent,nType,"==",3) then
		--领取过且已放烟花对白
		LinkNpcGossipFunc_New(nNpcId,"3-8")
		return
	end
	--检测背包空间
	if not User_CheckLeftSpace(tNewYearPromote_ActivityData["Space"]) then
		--接背包空间不足对白
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return
	end	
	
	if Task_ChkStcValue(nEvent,nType,"==",0)  then
		--没有领取也没有放过烟花
		--设置掩码-领取
		Task_SetStatistic(nEvent,nType,1,1,0)
		Task_SetStcTimestamp(nEvent,nType,0,0)
	elseif Task_ChkStcValue(nEvent,nType,"==",2)  then
		--未领取烟花，但是放过烟花
		--设置掩码-领取且放过
		Task_SetStatistic(nEvent,nType,3,1,0)
		Task_SetStcTimestamp(nEvent,nType,0,0)
	end
	--添加烟花
	if Item_AddItem(tNewYearPromote_ItemData["Fireworks"]["ItemId"]) then
		--2005提示
		User_TalkChannel2005(tNewYearPromote_Npc_Text["GetFireworks"])
		--log记录
		local sLog = tNewYearPromote_Npc_Log["GetFireworks"] 
		Sys_SaveActionFestivalLog(sLog)
		--播放光效
		User_EffectAdd("self",tNewYearPromote_Npc_Effect)
		--接领取成功对白
		LinkNpcGossipFunc_New(nNpcId,"2-1")
	end	
end

--秒杀好礼
function NewYearPromote_SeckillGoods(nNpcId)
	--是否在活动时间内
	if not Sys_ChkFullTime(tNewYearPromote_ActivityData["Now_Time"]) then
		return 
	end
	
	local nLevel = tNewYearPromote_ActivityData["Level"]
	local nMetempsychosis = tNewYearPromote_ActivityData["Metempsychosis"]
	--检测玩家等级，等级条件不满足不显示
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMetempsychosis) then
		return 	
	end
	
	--当日秒杀是否结束
	if Sys_ChkDayTime(tNewYearPromote_Npc_OverTime) then
		LinkNpcGossipFunc_New(nNpcId,"2-9")
		return 
	end
	
	--获取当前场次
	local nNowRace = NewYearPromote_Npc_GetNowSecKillRace(tNewYearPromote_Npc_Times)
	--检测是否在秒杀场次时间内
	if  not nNowRace then
		--接时间未到对白
		--获取下一场次时间
		local nNextRace = NewYearPromote_Npc_GetNowSecKillRace(tNewYearPromote_Npc_OutTimes)
		if nNextRace then
			local sTime = string.match(tNewYearPromote_Npc_Times[nNextRace],"%d+%p+%d+")
			tNpcGossip[19081]["Text271"] = string.format(tNewYearPromote_Npc_Text[19081]["Text271"],sTime)
		end
		LinkNpcGossipFunc_New(nNpcId,"2-7")
		return 
	end
	
	local nEvent = tNewYearPromote_Npc_Stc["EventType"]
	local nType = tNewYearPromote_Npc_Stc["DataType"][3]
	--隔天清掩码
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1,0)
		Task_SetStcTimestamp(nEvent,nType,0,0)
	end
	
	--检测玩家当前场次是否已秒杀过
	if Task_ChkStcValue(nEvent,nType,"==",nNowRace) then
		--已参加过当前秒杀
		LinkNpcGossipFunc_New(nNpcId,"2-10")
		return
	end
	
	--检测当前场次是否还有剩余名额
	local nGlobal = tNewYearPromote_ActivityData["Global"]
	if (Get_SysDynaGlobalData0(nGlobal) <= 0) and (Get_SysDynaGlobalData1(nGlobal) <= 0) and (Get_SysDynaGlobalData2(nGlobal) <= 0) then
		--本轮奖励已被秒光
		LinkNpcGossipFunc_New(nNpcId,"2-8")
		return
	end
	
	--随机产生一个数字 100000-999999）6位数作为验证码
	local nRandNum = math.random(100000,999999)
	
	User_SetVarData(1,nRandNum)
	
	--记录验证码场次
	local nNumEvent = tNewYearPromote_Npc_Stc["EventType"]
	local nNumType = tNewYearPromote_Npc_Stc["DataType"][4]
	Task_SetStatistic(nNumEvent,nNumType,nNowRace,1,0)
	Task_SetStcTimestamp(nNumEvent,nNumType,0,0)
	
	
	-- 对白
	local sStr = ""
	local sText = tNewYearPromote_Npc_Text["EnterNum"]
	sStr = string.format(tNewYearPromote_Npc_Text[19081]["Text501"],Get_UserVarData(1))
	
	Sys_DialogText(sStr)
	Sys_DialogOptEdit(sText,6,string.format("NewYearPromote_SeckillGoods_chkPsw</N>19081</N>%d",nRandNum))
	Sys_DialogFace(19081)
	Sys_DialogEnd()
	
end

--判断验证码是否正确
function NewYearPromote_SeckillGoods_chkPsw(nNpcId,nRandNum)
	--是否在活动时间内
	if not Sys_ChkFullTime(tNewYearPromote_ActivityData["Now_Time"]) then
		return 
	end
	
	--获取当前场次
	local nNowRace = NewYearPromote_Npc_GetNowSecKillRace(tNewYearPromote_Npc_Times)
	--检测是否在秒杀场次时间内，验证码超时
	if  not nNowRace then
		--接时间未到对白
		LinkNpcGossipFunc_New(nNpcId,"3-7")
		return 
	end
	
	--是否上当前的验证码，检测验证码刷新时间是否超过10分钟
	local nNumEvent = tNewYearPromote_Npc_Stc["EventType"]
	local nNumType = tNewYearPromote_Npc_Stc["DataType"][4]
	if Task_StcInterval(nNumEvent,nNumType,1,4) then
		--验证码是昨天刷的 无效
		LinkNpcGossipFunc_New(nNpcId,"3-7")
		return
	end
	
	--检测验证码场次 和 当前时间场次是否一致
	if not Task_ChkStcValue(nNumEvent,nNumType,"==",nNowRace) then
		--场次不一致 无效
		LinkNpcGossipFunc_New(nNpcId,"3-7")
		return
	end
	
	--检测当前场次是否还有剩余名额
	local nGlobal = tNewYearPromote_ActivityData["Global"]
	if (Get_SysDynaGlobalData0(nGlobal) <= 0) and (Get_SysDynaGlobalData1(nGlobal) <= 0) and (Get_SysDynaGlobalData2(nGlobal) <= 0) then
		--本轮奖励已被秒光
		LinkNpcGossipFunc_New(nNpcId,"3-6")
		return
	end
	
	--检测背包空间
	if not User_CheckLeftSpace(tNewYearPromote_ActivityData["Space"]) then
		--接背包空间不足对白
		LinkNpcGossipFunc_New(nNpcId,"3-4")
		return
	end	
	
	-- 输入的密码是否正确
	if tonumber(Get_SysAcceptStr()) ~= nRandNum then
		LinkNpcGossipFunc_New(nNpcId,"3-5")
		return
	end
	
	--奖励数据	 
	local nflag = 0
	if  Get_SysDynaGlobalData0(nGlobal) > 0 then
		--第一个秒杀奖励：龙珠
		--全局表，龙珠数量-1
		local nGlobalData = Get_SysDynaGlobalData0(nGlobal) - 1
		Sys_SetSynaGlobalData0(nGlobal,nGlobalData)	
		nflag =1
	elseif Get_SysDynaGlobalData1(nGlobal) > 0 then
		--第2，第3个秒杀奖励：红包
		--全局表，红包数量-1
		local nGlobalData = Get_SysDynaGlobalData1(nGlobal) - 1
		Sys_SetSynaGlobalData1(nGlobal,nGlobalData)	
		nflag =2
	elseif Get_SysDynaGlobalData2(nGlobal) > 0 then
		--第4，第5,第6个秒杀奖励：春节促销包
		--全局表，春节促销包数量-1
		local nGlobalData = Get_SysDynaGlobalData2(nGlobal) - 1
		Sys_SetSynaGlobalData2(nGlobal,nGlobalData)	
		nflag =3
	end
	
	-- tNewYearPromote_Npc_SecKillReward[1]["Item_1"]
	local flat,tItemTable 
	local nItemId = 0
	local nZeng = 0
	local nNum  = 1
	local sAttr = ""
	if tNewYearPromote_Npc_SecKillReward[nflag] then
		nItemId = tNewYearPromote_Npc_SecKillReward[nflag]["Item_1"] 
		nZeng = tNewYearPromote_Npc_SecKillReward[nflag]["Zeng"] or 0
		nNum  = tNewYearPromote_Npc_SecKillReward[nflag]["Num"] or 1
		sAttr = tNewYearPromote_Npc_SecKillReward[nflag]["NAttr"] or ""	
	else
		return 
	end
	
	--掩码设置，记录已抽场次
	local nEvent = tNewYearPromote_Npc_Stc["EventType"]
	local nType = tNewYearPromote_Npc_Stc["DataType"][3]
	Task_SetStatistic(nEvent,nType,nNowRace,1,0)
	Task_SetStcTimestamp(nEvent,nType,0,0)
	
	local sAwardItemName = Get_ItemtypeName(nItemId)
	--添加物品
	if not Item_AddNewItem(nItemId,sAttr) then
		return
	end
	
	local sAwardTip = ""
	local sLog = ""
	--2005提示
	sAwardTip = string.format(tNewYearPromote_Npc_Text["GetItemTips"],tostring(sAwardItemName))
	User_TalkChannel2005(sAwardTip)
	--获得物品打log
	sLog = string.format(tNewYearPromote_Npc_Log["SecKillReward"],tonumber(nItemId),tonumber(nNum))
	Sys_SaveActionFestivalLog(sLog)
	
	--播放光效
	User_EffectAdd("self",tNewYearPromote_Npc_Effect)
	--龙珠，世界广播
	if nflag == 1 then
		local sPlayerName = Get_UserName()
		Sys_SystemBroadcast(string.format(tNewYearPromote_Npc_Text["DrogenTip"],sPlayerName))
	end
	--接主对白
	tNpcGossip[19081]["Text331"] = string.format(tNewYearPromote_Npc_Text[19081]["Text331"],sAwardItemName)
	LinkNpcGossipFunc_New(nNpcId,"3-3")
end

--活动面板寻路到npc
function NewYearPromote_NpcJoinGame()
	--是否在活动时间内
	if not Sys_ChkFullTime(tNewYearPromote_ActivityData["Now_Time"]) then
		return 
	end
	
	local nUserMapId =Get_UserMapId()
	
	local bInCity = false
	--在主城和市场
	for i=1,6 do
		if nUserMapId == tNewYearPromote_ActivityData["MapCanTran"][i] then
			bInCity = true
			break
		end
	end
	
	local nMapId = tNewYearPromote_ActivityData["MapCanTran"]["MapId"]
	local nCellx = tNewYearPromote_ActivityData["MapCanTran"]["Cellx"]
	local nCelly = tNewYearPromote_ActivityData["MapCanTran"]["Celly"]
	local nRange = tNewYearPromote_ActivityData["MapCanTran"]["Range"]
	local nNpcId = tNewYearPromote_ActivityData["MapCanTran"]["NpcId"]
	
	--在各大主城，则自动寻路
	if bInCity == true then
		Sys_GotoSomeWhere(nCellx,nCelly,nMapId,nNpcId)
	else
		--1010提示
		User_TalkChannel2005(tNewYearPromote_Npc_Text["NotFindWay"])
	end

end

----时间自检，重置秒杀奖励剩余数
function NewYearPromote_SecKillTimeReSet()
	--是否在活动时间内
	if not Sys_ChkFullTime(tNewYearPromote_ActivityData["Now_Time"]) then
		return 
	end
	
	local nGlobal = tNewYearPromote_ActivityData["Global"]
	--全局表，龙珠数量设1
	Sys_SetSynaGlobalData0(nGlobal,1)	
	--全局表，红包数量设2
	Sys_SetSynaGlobalData1(nGlobal,2)	
	--全局表，促销包数量设3
	Sys_SetSynaGlobalData2(nGlobal,3)
	
	--广播提示活动
	Sys_SystemBroadcast(tNewYearPromote_Npc_Text["SeckillTip"])
end

----------------------------------------------物品逻辑----------------------------------------------------
----打开红包
function tNewYearPromote_Npc_OpenRedBag(nItemId)
	--是否在活动时间内
	if not Sys_ChkFullTime(tNewYearPromote_ActivityData["Now_Time"]) then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		---活动过期删除物品
			User_TalkChannel2005(string.format(tNewYearPromote_Npc_Text["OutOfTIme"],Get_ItemtypeName(nItemId)))
		end
		return 
	end

	--打开可获得赠点天石（在1-88之间随机）
	local nMin = tNewYearPromote_Npc_UseItemData[3008624]["Min"]
	local nMax = tNewYearPromote_Npc_UseItemData[3008624]["Max"]
	
	local nRandom = math.random(nMin,nMax)
	
	--检测玩家赠品天石上限
	if  Get_UserMonoEMoney() + nRandom > G_User_MaxEmoneyMono then	
		User_TalkChannel2005(tNewYearPromote_Npc_Text["EMoneyFull"])
		return
	end
	
	--物品检测
	if not Item_ChkItem(nItemId) then
		return		
	end
	--删除物品
	if not Item_DelItem(nItemId) then
		return		
	end
	
	User_AddEMoneyMono(nRandom)
	local sLog = tNewYearPromote_Npc_Log["OpenRedBag"]
	sLog = string.format(sLog,tonumber(nRandom))
	
	Sys_SaveActionFestivalLog(sLog)
	--2005提示
	User_TalkChannel2005(string.format(tNewYearPromote_Npc_Text["GetMonoMoeny"],nRandom))
	--播放光效
	User_EffectAdd("self",tNewYearPromote_Npc_Effect)
end

--使用烟花
function tNewYearPromote_Npc_OpenFireWork(nItemId)
	--是否在活动时间内
	if not Sys_ChkFullTime(tNewYearPromote_ActivityData["Now_Time"]) then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		---活动过期删除物品
			User_TalkChannel2005(string.format(tNewYearPromote_Npc_Text["OutOfTIme"],Get_ItemtypeName(nItemId)))
		end
		return 
	end
	
	--地图判断，只有在市场内可用
	local nUserMapId = Get_UserMapId()
	if nUserMapId ~= tNewYearPromote_nMarketMap then
		--2005提示
		User_TalkChannel2005(tNewYearPromote_Npc_Text["OutOfMarket"])
		return
	end

	--检测上一次使用是否超过1分钟
	local nEvent = tNewYearPromote_Npc_Stc["EventType"]
	local nType = tNewYearPromote_Npc_Stc["DataType"][6]
	--判断掩码存在
	if Task_ChkStatistic(nEvent,nType) then
		if not Task_StcInterval(nEvent,nType,1,1) then
			--2005提示
			User_TalkChannel2005(tNewYearPromote_Npc_Text["NOUseFire"])
			return	
		end
	end
	
	--设置时间戳
	Task_SetStatistic(nEvent,nType,0,1,0)
	Task_SetStcTimestamp(nEvent,nType,0,0)
	--判断背包空间
	if not User_CheckLeftSpace(tNewYearPromote_ActivityData["Space"]) then
		--接背包空间不足
		User_TalkChannel2005(string.format(tNewYearPromote_Npc_Text["BagFull"],tNewYearPromote_ActivityData["Space"]))
		return
	end
	
	--物品检测
	if not Item_ChkItem(nItemId) then
		return		
	end
	
	--读条
	User_SetExplore(9,tNewYearPromote_Npc_Text["FireWorking"],100,"NewYearPromote_Npc_SuccesFire")
	--第一次播放烟花光效
	local EffecId = math.random(1,3)
	User_EffectAdd("self",tNewYearPromote_ItemData["FireWorksEffec"][EffecId])
	--设置定时器3秒后播下2次光效
	User_SetTimer(3,"NewYearPromote_Npc_DisplayFireEffec2",0)
	--设置定时器6秒后播下3次光效
	User_SetTimer(6,"NewYearPromote_Npc_DisplayFireEffec2",0)
end

--第2次播放烟花光效
function NewYearPromote_Npc_DisplayFireEffec2(nUserId)
	local EffecId = math.random(1,3)
	User_EffectAdd("self",tNewYearPromote_ItemData["FireWorksEffec"][EffecId],nUserId)
end

--读条成功,获取奖励
function NewYearPromote_Npc_SuccesFire(nUserId)
	--判断背包空间
	if not User_CheckLeftSpace(tNewYearPromote_ActivityData["Space"],nUserId) then
		--接背包空间不足
		User_TalkChannel2005(string.format(tNewYearPromote_Npc_Text["BagFull"],tNewYearPromote_ActivityData["Space"]),nUserId)
		return
	end
	
	
	--检测物品，删除物品烟花
	if Item_ChkItem(tNewYearPromote_ItemData["Fireworks"]["ItemId"],1,0,nUserId) and Item_DelItem(tNewYearPromote_ItemData["Fireworks"]["ItemId"],1,0,nUserId) then
		local sAwardItemName = ""
		local nEvent = tNewYearPromote_Npc_Stc["EventType"]
		local nType = tNewYearPromote_Npc_Stc["DataType"][2]
		
		--隔天清掩码
		if Task_StcInterval(nEvent,nType,1,4,nUserId) then
			Task_SetStatistic(nEvent,nType,0,1,nUserId)
			Task_SetStcTimestamp(nEvent,nType,0,nUserId)
		end
		
		if Task_ChkStcValue(nEvent,nType,"==",0,nUserId)  then
			--没有领取也没有放过烟花
			--设置掩码-放烟花，没领取
			Task_SetStatistic(nEvent,nType,2,1,nUserId)
			Task_SetStcTimestamp(nEvent,nType,0,nUserId)
		elseif Task_ChkStcValue(nEvent,nType,"==",1,nUserId)  then
			--领取烟花，但是放过烟花
			--设置掩码-领取且放过
			Task_SetStatistic(nEvent,nType,3,1,nUserId)
			Task_SetStcTimestamp(nEvent,nType,0,nUserId)
		end
		
		-- 给1个红包
		sAwardItemName = Get_ItemtypeName(tNewYearPromote_ItemData["RedBag"]).."*1"
		Item_AddNewItem(tNewYearPromote_ItemData["RedBag"],tNewYearPromote_ItemData["RedBagAttr"],nUserId) 
		User_TalkChannel2005(string.format(tNewYearPromote_Npc_Text["GetItemTips"],sAwardItemName),nUserId)
		--打log
		local sLog = string.format(tNewYearPromote_Npc_Log["UseFirework"],tonumber(tNewYearPromote_ItemData["RedBag"]),1)
		Sys_SaveActionFestivalLog(sLog,nUserId)
	end
end

--将数字转换成8位字符串，前面补0
function NewYearPromote_Npc_Eight_string(nData)
	local sData = tostring(math.floor(nData))
	local nLen = string.len(sData)
	for i=1,8-nLen do
		sData = "0"..sData
	end
	return sData
end

----欢喜过猴年称号接口
function NewYearPromote_Npc_GetTiTle(nItemId)
	--记录获得过的8种不同坐骑外套
	local nEvent = tNewYearPromote_Npc_Stc["EventType"]
	local nType = tNewYearPromote_Npc_Stc["DataType"][5]
	local nData = Get_UserStatisticValue(nEvent,nType)
	
	--检测活动时间
	if not Sys_ChkFullTime(tNewYearPromote_ActivityData["Now_Time"]) then
		return 
	end
	
	local nPos = tNewYearPromote_Npc_UseItemData["MonkeyData"][nItemId]
	--8种外套打掩码记录
	if nPos then
		--检测对应外套是否已获得过，
		local sData = NewYearPromote_Npc_Eight_string(nData)
		local sMake = tonumber(string.sub(sData,9-nPos,9-nPos))
		if sMake and tonumber(sMake) == 0 then
			--打掩码
			nData = math.floor(nData + 10^(nPos-1)) 	
			Task_SetStatistic(nEvent,nType,nData,1,0)
			Task_SetStcTimestamp(nEvent,nType,0,0)
		else
			return
		end
		
		--检测可获得的外套称号
		--山中无老虎
		if not User_CheckTitle(tNewYearPromote_Npc_UseItemData["CoatTitleOne"][1],tNewYearPromote_Npc_UseItemData["CoatTitleOne"][2]) then
			User_AwardTitle(tNewYearPromote_Npc_UseItemData["CoatTitleOne"][1],tNewYearPromote_Npc_UseItemData["CoatTitleOne"][2],43200)
			User_TalkChannel2005(string.format(tNewYearPromote_Npc_Text["GetTitleTips"],tNewYearPromote_Npc_Text["TitleOne"]))
		end
		if nPos == 8 then
			--检测是否已获得一路向西称号
			if not User_CheckTitle(tNewYearPromote_Npc_UseItemData["CoatTitleTwo"][1],tNewYearPromote_Npc_UseItemData["CoatTitleTwo"][2]) then
				User_AwardTitle(tNewYearPromote_Npc_UseItemData["CoatTitleTwo"][1],tNewYearPromote_Npc_UseItemData["CoatTitleTwo"][2],43200)
				User_TalkChannel2005(string.format(tNewYearPromote_Npc_Text["GetTitleTips"],tNewYearPromote_Npc_Text["TitleTwo"]))
			end
		end
		if nPos == 7 then
			--检测是否已获得骑天大圣称号
			if not User_CheckTitle(tNewYearPromote_Npc_UseItemData["CoatTitleThree"][1],tNewYearPromote_Npc_UseItemData["CoatTitleThree"][2]) then
				User_AwardTitle(tNewYearPromote_Npc_UseItemData["CoatTitleThree"][1],tNewYearPromote_Npc_UseItemData["CoatTitleThree"][2],43200)
				User_TalkChannel2005(string.format(tNewYearPromote_Npc_Text["GetTitleTips"],tNewYearPromote_Npc_Text["TitleThree"]))
			end
		end
		--检测是否集齐8只
		local sData = NewYearPromote_Npc_Eight_string(nData)
		for i = 1,8 do
			local sMake = tonumber(string.sub(sData,i,i))
			if tonumber(sMake) == 0 then
				--未集齐8只
				return
			end
		end
		--检测是否已获得猴赛雷称号
		if not User_CheckTitle(tNewYearPromote_Npc_UseItemData["CoatTitleFour"][1],tNewYearPromote_Npc_UseItemData["CoatTitleFour"][2]) then
			User_AwardTitle(tNewYearPromote_Npc_UseItemData["CoatTitleFour"][1],tNewYearPromote_Npc_UseItemData["CoatTitleFour"][2],43200)
			User_TalkChannel2005(string.format(tNewYearPromote_Npc_Text["GetTitleTips"],tNewYearPromote_Npc_Text["TitleFour"]))
		end
		
	end
end

--仓库放进,取出，外套过时，时调用
function NewYearPromote_Npc_CheckItemToCoat(nUserId,nFlag)

	local nCoatType = 2 	--坐骑外套
	local nOneFlag = false 	--一件外套标识
	local nAllFlag = true	--8件外套标识
	local nTTFlag = false 	--天天外套标识
	local nXXFlag = false 	--西西外套标识
	
	-- --时间判断（活动时间之后才走该接口）
	-- if Sys_ChkFullTime(tNewYearPromote_ActivityData["Now_Time"]) then
		-- return 
	-- end
	
	--检测猴年外套
	-- for i = 83 ,90 do
		-- 检测是否有某个ID的外套
		-- if User_ChkStorageCoat(nCoatType,i,nUserId) then
			-- nOneFlag = true
			-- if i == 89 then  --天天外套		
				-- nTTFlag = true
			-- end
			-- if i == 90 then  --西西外套	
				-- nXXFlag = true
			-- end
		-- else
			-- nAllFlag = false
		-- end
	-- end
	
	for k,v in ipairs(tNewYearPromote_Npc_CoatFlag) do
		
		if User_ChkStorageCoat(nCoatType,v,nUserId) then
			nOneFlag = true
			if v == 89 then  --天天外套	
				nTTFlag = true
			end
			if v == 90 then  --西西外套	
				nXXFlag = true
			end
		else
			nAllFlag = false
		end
	end
	
	
	if nOneFlag then  --有1件外套
		if User_CheckTitle(tNewYearPromote_Npc_UseItemData["CoatTitleOne"][1],tNewYearPromote_Npc_UseItemData["CoatTitleOne"][2],nUserId) then
			--先删除
			-- User_DeleteTitle(tNewYearPromote_Npc_UseItemData["CoatTitleOne"][1],tNewYearPromote_Npc_UseItemData["CoatTitleOne"][2],nUserId)
		else
			User_AwardTitle(tNewYearPromote_Npc_UseItemData["CoatTitleOne"][1],tNewYearPromote_Npc_UseItemData["CoatTitleOne"][2],0,nUserId)
			User_TalkChannel2005(string.format(tNewYearPromote_Npc_Text["GetTitleTips"],tNewYearPromote_Npc_Text["TitleOne"]),nUserId)	
		end
	else
		if User_CheckTitle(tNewYearPromote_Npc_UseItemData["CoatTitleOne"][1],tNewYearPromote_Npc_UseItemData["CoatTitleOne"][2],nUserId) then
			User_DeleteTitle(tNewYearPromote_Npc_UseItemData["CoatTitleOne"][1],tNewYearPromote_Npc_UseItemData["CoatTitleOne"][2],nUserId)
		end
	end
	
	if nXXFlag then  --西西外套	
		--检测是否有一路向西
		if User_CheckTitle(tNewYearPromote_Npc_UseItemData["CoatTitleTwo"][1],tNewYearPromote_Npc_UseItemData["CoatTitleTwo"][2],nUserId) then
			--先删除
			-- User_DeleteTitle(tNewYearPromote_Npc_UseItemData["CoatTitleTwo"][1],tNewYearPromote_Npc_UseItemData["CoatTitleTwo"][2],nUserId)
		else
		--再添加
			User_AwardTitle(tNewYearPromote_Npc_UseItemData["CoatTitleTwo"][1],tNewYearPromote_Npc_UseItemData["CoatTitleTwo"][2],0,nUserId)
			User_TalkChannel2005(string.format(tNewYearPromote_Npc_Text["GetTitleTips"],tNewYearPromote_Npc_Text["TitleTwo"]),nUserId)	
		end
	else
		--检测是否有一路向西
		if User_CheckTitle(tNewYearPromote_Npc_UseItemData["CoatTitleTwo"][1],tNewYearPromote_Npc_UseItemData["CoatTitleTwo"][2],nUserId) then
			User_DeleteTitle(tNewYearPromote_Npc_UseItemData["CoatTitleTwo"][1],tNewYearPromote_Npc_UseItemData["CoatTitleTwo"][2],nUserId)
		end 
	end
	
	if nTTFlag then
		--检测是否有骑天大圣称号
		if User_CheckTitle(tNewYearPromote_Npc_UseItemData["CoatTitleThree"][1],tNewYearPromote_Npc_UseItemData["CoatTitleThree"][2],nUserId) then
			--先删除
			-- User_DeleteTitle(tNewYearPromote_Npc_UseItemData["CoatTitleThree"][1],tNewYearPromote_Npc_UseItemData["CoatTitleThree"][2],nUserId)
		else 
		--再添加
			User_AwardTitle(tNewYearPromote_Npc_UseItemData["CoatTitleThree"][1],tNewYearPromote_Npc_UseItemData["CoatTitleThree"][2],0,nUserId)
			User_TalkChannel2005(string.format(tNewYearPromote_Npc_Text["GetTitleTips"],tNewYearPromote_Npc_Text["TitleThree"]),nUserId)	
		end
	else
		--检测是否有骑天大圣称号
		if User_CheckTitle(tNewYearPromote_Npc_UseItemData["CoatTitleThree"][1],tNewYearPromote_Npc_UseItemData["CoatTitleThree"][2],nUserId) then
			User_DeleteTitle(tNewYearPromote_Npc_UseItemData["CoatTitleThree"][1],tNewYearPromote_Npc_UseItemData["CoatTitleThree"][2],nUserId)
		end 
	end

	if nAllFlag then  --有8件外套
	
		--检测是否已获得猴赛雷称号
		if User_CheckTitle(tNewYearPromote_Npc_UseItemData["CoatTitleFour"][1],tNewYearPromote_Npc_UseItemData["CoatTitleFour"][2],nUserId) then
			--先删除
			-- User_DeleteTitle(tNewYearPromote_Npc_UseItemData["CoatTitleFour"][1],tNewYearPromote_Npc_UseItemData["CoatTitleFour"][2],nUserId)
		else
			User_AwardTitle(tNewYearPromote_Npc_UseItemData["CoatTitleFour"][1],tNewYearPromote_Npc_UseItemData["CoatTitleFour"][2],0,nUserId)
			User_TalkChannel2005(string.format(tNewYearPromote_Npc_Text["GetTitleTips"],tNewYearPromote_Npc_Text["TitleFour"]),nUserId)
		end
	else
		--检测是否已获得猴赛雷称号
		if User_CheckTitle(tNewYearPromote_Npc_UseItemData["CoatTitleFour"][1],tNewYearPromote_Npc_UseItemData["CoatTitleFour"][2],nUserId) then
			User_DeleteTitle(tNewYearPromote_Npc_UseItemData["CoatTitleFour"][1],tNewYearPromote_Npc_UseItemData["CoatTitleFour"][2],nUserId)
		end
	end
end

--放进外套
tCheckInItemToCoatStorage["tFunction"] = tCheckInItemToCoatStorage["tFunction"] or {}
table.insert(tCheckInItemToCoatStorage["tFunction"],NewYearPromote_Npc_CheckItemToCoat)
--取出外套
tCheckOutItemFromCoatStorage["tFunction"] = tCheckOutItemFromCoatStorage["tFunction"] or {}
table.insert(tCheckOutItemFromCoatStorage["tFunction"],NewYearPromote_Npc_CheckItemToCoat)
--外套过时
tDelUserItemFromCoatStorage["tFunction"] = tDelUserItemFromCoatStorage["tFunction"] or {}
table.insert(tDelUserItemFromCoatStorage["tFunction"],NewYearPromote_Npc_CheckItemToCoat)

-----------------------------------------------npc模板----------------------------------------------
--================灵猴齐小圣 19080 临时资源
---NPC头像
tNpcFace[3993] = 313

tNpcGossip[19080] = tNpcGossip[19080] or DefaultNpc:new{}
tNpcGossip[19080]["OptionHidden"] = 1

-- 活动时间前
tNpcGossip[19080]["Text1-1"] = {111,112,113,114}
tNpcGossip[19080]["Text111"] = tNewYearPromote_Npc_Text[19080]["Text111"]
tNpcGossip[19080]["Text112"] = tNewYearPromote_Npc_Text[19080]["Text112"]
tNpcGossip[19080]["Text113"] = tNewYearPromote_Npc_Text[19080]["Text113"]
tNpcGossip[19080]["Text114"] = tNewYearPromote_Npc_Text[19080]["Text114"]
--是否在活动时间前
tNpcGossip[19080]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tNewYearPromote_ActivityData["Beftime"])
end

--选项：是你嘴馋了吧！
tNpcGossip[19080]["tOption1-1"] = {1}
tNpcGossip[19080]["Option1"] = tNewYearPromote_Npc_Text[19080]["Option1"]

-- 背包空间不足
tNpcGossip[19080]["Text2-2"] = {221}
tNpcGossip[19080]["Text221"] = tNewYearPromote_Npc_Text[19080]["Text221"]
tNpcGossip[19080]["tOption2-2"] = {7}
tNpcGossip[19080]["Option7"] = tNewYearPromote_Npc_Text[19080]["Option7"]
------------------------------------------------------------------------------------
tNpcGossip[19080]["Text1-2"] = {121}
tNpcGossip[19080]["ChkFunc1-2"] = function ()
	return false
end
--活动时间
tNpcGossip[19080]["Text1-3"] = {131,132,133,134,135}
tNpcGossip[19080]["Text131"] = tNewYearPromote_Npc_Text[19080]["Text131"]
tNpcGossip[19080]["Text132"] = tNewYearPromote_Npc_Text[19080]["Text132"]
tNpcGossip[19080]["Text133"] = tNewYearPromote_Npc_Text[19080]["Text133"]
tNpcGossip[19080]["Text134"] = tNewYearPromote_Npc_Text[19080]["Text134"]
tNpcGossip[19080]["Text135"] = tNewYearPromote_Npc_Text[19080]["Text135"]
tNpcGossip[19080]["tOption1-3"] = {2,3,4,5,10}
--是否在活动时间内
tNpcGossip[19080]["ChkFunc1-3"] = function ()
	--不在活动时间内
	if not Sys_ChkFullTime(tNewYearPromote_ActivityData["Now_Time"]) then
		return false
	end
	
	--检测等级条件
	local nLevel = tNewYearPromote_ActivityData["Level"]
	local nMetempsychosis = tNewYearPromote_ActivityData["Metempsychosis"]
	if User_JudgeLevelAndMetempsychosis(nLevel,nMetempsychosis) then
		tNpcGossip[19080]["Text1-3"] = {131,132,133,135}
	else
		tNpcGossip[19080]["Text1-3"] = {131,132,133,134,135}
	end
	return true
end

----喂你绝味香蕉。
tNpcGossip[19080]["Option3"] = tNewYearPromote_Npc_Text[19080]["Option8"]
tNpcGossip[19080]["OptionPoint3"]="2-3"
----了解活动详情。
tNpcGossip[19080]["Option4"] = tNewYearPromote_Npc_Text[19080]["Option9"]
tNpcGossip[19080]["OptionPoint4"] = "2-4"
----C、	怎样获得称号？
tNpcGossip[19080]["Option5"] = tNewYearPromote_Npc_Text[19080]["Option5"]
tNpcGossip[19080]["OptionPoint5"] = "3-6"
----你可真够贪吃的。
tNpcGossip[19080]["Option10"] = tNewYearPromote_Npc_Text[19080]["Option10"]
----让你贪玩，活该！
tNpcGossip[19080]["Option2"] = tNewYearPromote_Npc_Text[19080]["Option2"]


--检测玩家等级是否显示选项
tNpcGossip[19080]["OptionChkFunc2"] = function ()
	local nLevel = tNewYearPromote_ActivityData["Level"]
	local nMetempsychosis = tNewYearPromote_ActivityData["Metempsychosis"]
	return not User_JudgeLevelAndMetempsychosis(nLevel,nMetempsychosis)
end

--检测玩家等级是否显示选项
tNpcGossip[19080]["OptionChkFunc3"] = function ()
	local nLevel = tNewYearPromote_ActivityData["Level"]
	local nMetempsychosis = tNewYearPromote_ActivityData["Metempsychosis"]
	return User_JudgeLevelAndMetempsychosis(nLevel,nMetempsychosis)
end
tNpcGossip[19080]["OptionChkFunc4"] = tNpcGossip[19080]["OptionChkFunc3"] 
tNpcGossip[19080]["OptionChkFunc5"] = tNpcGossip[19080]["OptionChkFunc3"] 
tNpcGossip[19080]["OptionChkFunc10"] = tNpcGossip[19080]["OptionChkFunc3"] 

--喂你绝味香蕉对白
tNpcGossip[19080]["Text2-3"] = {231,232,233,234}
tNpcGossip[19080]["Text231"] = tNewYearPromote_Npc_Text[19080]["Text231"]
tNpcGossip[19080]["Text232"] = tNewYearPromote_Npc_Text[19080]["Text232"]
tNpcGossip[19080]["Text233"] = tNewYearPromote_Npc_Text[19080]["Text233"]
tNpcGossip[19080]["Text234"] = tNewYearPromote_Npc_Text[19080]["Text234"]
tNpcGossip[19080]["tOption2-3"] = {11,12,13}
--a、	喂你1根绝味香蕉
tNpcGossip[19080]["Option11"] = tNewYearPromote_Npc_Text[19080]["Option11"]
--b、	喂你10根绝味香蕉。
tNpcGossip[19080]["Option12"] = tNewYearPromote_Npc_Text[19080]["Option12"]
tNpcGossip[19080]["Option13"] = tNewYearPromote_Npc_Text[19080]["Option13"]

tNpcGossip[19080]["OptionFunc11"]="NewYearPromote_SendBanana</N>19080</N>1"
tNpcGossip[19080]["OptionFunc12"]="NewYearPromote_SendBanana</N>19080</N>10"

tNpcGossip[19080]["ChkFunc2-3"] = function ()
	local nEvent = tNewYearPromote_Npc_Stc["EventType"]
	local nType = tNewYearPromote_Npc_Stc["DataType"][1]
	--获取累计喂香蕉天数
	local nSendTimes = Get_UserStatisticValue(nEvent,nType)
	tNpcGossip[19080]["Text233"] = string.format(tNewYearPromote_Npc_Text[19080]["Text233"],tonumber(nSendTimes))
	return true
end

--喂你1根绝味香蕉失败对白
tNpcGossip[19080]["Text3-1"] = {311}
tNpcGossip[19080]["Text311"] = tNewYearPromote_Npc_Text[19080]["Text311"]
tNpcGossip[19080]["tOption3-1"] = {14,50}
tNpcGossip[19080]["Option14"] = tNewYearPromote_Npc_Text[19080]["Option14"]
tNpcGossip[19080]["Option50"] = tNewYearPromote_Npc_Text[19080]["Option50"]
--给你天石
tNpcGossip[19080]["OptionPoint14"] = "4-1"

--给你9天石->2次确认对白
tNpcGossip[19080]["Text4-1"] = {411}
tNpcGossip[19080]["Text411"] = tNewYearPromote_Npc_Text[19080]["Text411"]
tNpcGossip[19080]["tOption4-1"] = {51,52}
tNpcGossip[19080]["Option51"] = tNewYearPromote_Npc_Text[19080]["Option51"]
tNpcGossip[19080]["Option52"] = tNewYearPromote_Npc_Text[19080]["Option52"]
--确定
tNpcGossip[19080]["OptionFunc51"]="NewYearPromote_Npc_UseTS</N>19080</N>1"

--喂你10根绝味香蕉失败对白
tNpcGossip[19080]["Text3-2"] = {321}
tNpcGossip[19080]["Text321"] = tNewYearPromote_Npc_Text[19080]["Text321"]
tNpcGossip[19080]["tOption3-2"] = {15,60}
--给天石
tNpcGossip[19080]["Option15"] = tNewYearPromote_Npc_Text[19080]["Option15"]
tNpcGossip[19080]["Option60"] = tNewYearPromote_Npc_Text[19080]["Option60"]

tNpcGossip[19080]["OptionPoint15"] = "4-2"

--给你90天石->2次确认对白
tNpcGossip[19080]["Text4-2"] = {421}
tNpcGossip[19080]["Text421"] = tNewYearPromote_Npc_Text[19080]["Text421"]
tNpcGossip[19080]["tOption4-2"] = {61,62}
tNpcGossip[19080]["Option61"] = tNewYearPromote_Npc_Text[19080]["Option61"]
tNpcGossip[19080]["Option62"] = tNewYearPromote_Npc_Text[19080]["Option62"]
--确定
tNpcGossip[19080]["OptionFunc61"]="NewYearPromote_Npc_UseTS</N>19080</N>10"



--活动详情对白
tNpcGossip[19080]["Text2-4"] = {241,242,243}
tNpcGossip[19080]["Text241"] = tNewYearPromote_Npc_Text[19080]["Text241"]
tNpcGossip[19080]["Text242"] = tNewYearPromote_Npc_Text[19080]["Text242"]
tNpcGossip[19080]["Text243"] = tNewYearPromote_Npc_Text[19080]["Text243"]
tNpcGossip[19080]["tOption2-4"] = {16,17}
--该怎么获得香蕉呢？
tNpcGossip[19080]["Option16"] = tNewYearPromote_Npc_Text[19080]["Option16"]
--离开
tNpcGossip[19080]["Option17"] = tNewYearPromote_Npc_Text[19080]["Option17"]
tNpcGossip[19080]["OptionPoint16"]="3-3"

--获得香蕉详情对白
tNpcGossip[19080]["Text3-3"] = {331,332,333}
tNpcGossip[19080]["Text331"] = tNewYearPromote_Npc_Text[19080]["Text331"]
tNpcGossip[19080]["Text332"] = tNewYearPromote_Npc_Text[19080]["Text332"]
tNpcGossip[19080]["Text333"] = tNewYearPromote_Npc_Text[19080]["Text333"]
tNpcGossip[19080]["tOption3-3"] = {18}
tNpcGossip[19080]["Option18"] = tNewYearPromote_Npc_Text[19080]["Option18"]

--了解如何获得称号
tNpcGossip[19080]["Text3-6"] = {361,362,363,364,365}
tNpcGossip[19080]["Text361"] = tNewYearPromote_Npc_Text[19080]["Text361"]
tNpcGossip[19080]["Text362"] = tNewYearPromote_Npc_Text[19080]["Text362"]
tNpcGossip[19080]["Text363"] = tNewYearPromote_Npc_Text[19080]["Text363"]
tNpcGossip[19080]["Text364"] = tNewYearPromote_Npc_Text[19080]["Text364"]
tNpcGossip[19080]["Text365"] = tNewYearPromote_Npc_Text[19080]["Text365"]
tNpcGossip[19080]["tOption3-6"] = {22}
--知道了。
tNpcGossip[19080]["Option22"] = tNewYearPromote_Npc_Text[19080]["Option22"]
-- tNpcGossip[19080]["OptionPoint22"] = "3-7"

--还有什么要注意的吗->对白
tNpcGossip[19080]["Text3-7"] = {371,372}
tNpcGossip[19080]["Text371"] = tNewYearPromote_Npc_Text[19080]["Text371"]
tNpcGossip[19080]["Text372"] = tNewYearPromote_Npc_Text[19080]["Text372"]
tNpcGossip[19080]["tOption3-7"] = {23}
tNpcGossip[19080]["Option23"] = tNewYearPromote_Npc_Text[19080]["Option23"]

--活动时间后
tNpcGossip[19080]["Text1-4"] = {141,142}
tNpcGossip[19080]["Text141"] = tNewYearPromote_Npc_Text[19080]["Text141"]
tNpcGossip[19080]["Text142"] = tNewYearPromote_Npc_Text[19080]["Text142"]
tNpcGossip[19080]["tOption1-4"] = {21}
--是否在活动时间内
tNpcGossip[19080]["ChkFunc1-4"] = function ()
	--不在活动时间前 也不在活动时间后
	if not Sys_ChkFullTime(tNewYearPromote_ActivityData["Beftime"]) and not Sys_ChkFullTime(tNewYearPromote_ActivityData["Now_Time"]) then
		return true
	else
		return false
	end
	
end

tNpcGossip[19080]["Option21"] = tNewYearPromote_Npc_Text[19080]["Option21"]



--=============新年大使侯有财 19081
---NPC头像
tNpcFace[3994] = 81

tNpcGossip[19081] = tNpcGossip[19081] or DefaultNpc:new{}
tNpcGossip[19081]["OptionHidden"] = 1

-- 活动时间前
tNpcGossip[19081]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[19081]["Text111"] = tNewYearPromote_Npc_Text[19081]["Text111"]
tNpcGossip[19081]["Text112"] = tNewYearPromote_Npc_Text[19081]["Text112"]
tNpcGossip[19081]["Text113"] = tNewYearPromote_Npc_Text[19081]["Text113"]
tNpcGossip[19081]["Text114"] = tNewYearPromote_Npc_Text[19081]["Text114"]
tNpcGossip[19081]["Text115"] = tNewYearPromote_Npc_Text[19081]["Text115"]
--检测是否在活动时间前
tNpcGossip[19081]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tNewYearPromote_ActivityData["Beftime"])
end

tNpcGossip[19081]["tOption1-1"] = {1}
tNpcGossip[19081]["Option1"] = tNewYearPromote_Npc_Text[19081]["Option1"]

--活动时间后
tNpcGossip[19081]["Text1-2"] = {121,122}
tNpcGossip[19081]["Text121"] = tNewYearPromote_Npc_Text[19081]["Text121"]
tNpcGossip[19081]["Text122"] = tNewYearPromote_Npc_Text[19081]["Text122"]
--检测是否在活动时间后
tNpcGossip[19081]["ChkFunc1-2"] = function ()
	--不在活动时间前 也不在活动时间后
	if not Sys_ChkFullTime(tNewYearPromote_ActivityData["Beftime"]) and not Sys_ChkFullTime(tNewYearPromote_ActivityData["Now_Time"]) then
		return true
	else
		return false
	end
end

tNpcGossip[19081]["tOption1-2"] = {2}
tNpcGossip[19081]["Option2"] = tNewYearPromote_Npc_Text[19081]["Option2"]

--活动中
tNpcGossip[19081]["Text1-3"] = {131,132,133,134,135,136}
tNpcGossip[19081]["Text131"] = tNewYearPromote_Npc_Text[19081]["Text131"]
tNpcGossip[19081]["Text132"] = tNewYearPromote_Npc_Text[19081]["Text132"]
tNpcGossip[19081]["Text133"] = tNewYearPromote_Npc_Text[19081]["Text133"]
tNpcGossip[19081]["Text134"] = tNewYearPromote_Npc_Text[19081]["Text134"]
tNpcGossip[19081]["Text135"] = tNewYearPromote_Npc_Text[19081]["Text135"]
tNpcGossip[19081]["Text136"] = tNewYearPromote_Npc_Text[19081]["Text136"]
tNpcGossip[19081]["ChkFunc1-3"] = function ()
	--检测等级条件
	local nLevel = tNewYearPromote_ActivityData["Level"]
	local nMetempsychosis = tNewYearPromote_ActivityData["Metempsychosis"]
	if User_JudgeLevelAndMetempsychosis(nLevel,nMetempsychosis) then
		tNpcGossip[19081]["Text1-3"] = {131,132,133,134,136}
	else
		tNpcGossip[19081]["Text1-3"] = {131,132,133,134,135,136}
	end
	return Sys_ChkFullTime(tNewYearPromote_ActivityData["Now_Time"])
end


tNpcGossip[19081]["tOption1-3"] = {3,5,6,7}
--我要燃放烟花。
tNpcGossip[19081]["Option3"] = tNewYearPromote_Npc_Text[19081]["Option3"]
--补领烟花。（接受任务后出现该选项，完成任务后屏蔽该选项）
-- tNpcGossip[19081]["Option4"] = tNewYearPromote_Npc_Text[19081]["Option4"]
--秒杀好礼。
tNpcGossip[19081]["Option5"] = tNewYearPromote_Npc_Text[19081]["Option5"]
--了解活动详情。
tNpcGossip[19081]["Option6"] = tNewYearPromote_Npc_Text[19081]["Option6"]
--好像很好玩呢。
tNpcGossip[19081]["Option7"] = tNewYearPromote_Npc_Text[19081]["Option7"]

----我要燃放烟花。（完成任务后屏蔽该选项）
--检测玩家等级是否显示选项
tNpcGossip[19081]["OptionChkFunc3"] = function ()
	--不在活动时间内
	if not Sys_ChkFullTime(tNewYearPromote_ActivityData["Now_Time"]) then
		return false
	end
	local nLevel = tNewYearPromote_ActivityData["Level"]
	local nMetempsychosis = tNewYearPromote_ActivityData["Metempsychosis"]
	--检测玩家等级，条件不满足不显示
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMetempsychosis) then
		return false	
	end
	return true
end

--秒杀好礼。
tNpcGossip[19081]["OptionChkFunc5"] = tNpcGossip[19081]["OptionChkFunc3"] 

--了解活动详情选项判断。
tNpcGossip[19081]["OptionChkFunc6"] = tNpcGossip[19081]["OptionChkFunc3"] 

--我要燃放烟花接对白
tNpcGossip[19081]["OptionFunc3"]="NewYearPromote_AskFireworks</N>19081"
--补领烟花
-- tNpcGossip[19081]["OptionFunc4"]="NewYearPromote_Re_GetFireworks</N>19081"
--秒杀好礼
tNpcGossip[19081]["OptionFunc5"]="NewYearPromote_SeckillGoods</N>19081"
--了解活动详情
tNpcGossip[19081]["OptionPoint6"]="2-6"

--领取烟花成功对白 2-1
tNpcGossip[19081]["Text2-1"] = {211,212}
tNpcGossip[19081]["Text211"] = tNewYearPromote_Npc_Text[19081]["Text211"]
tNpcGossip[19081]["Text212"] = tNewYearPromote_Npc_Text[19081]["Text212"]
tNpcGossip[19081]["tOption2-1"] = {8}
tNpcGossip[19081]["Option8"] = tNewYearPromote_Npc_Text[19081]["Option8"]

--领取烟花失败--已领取任务对白 2-2
tNpcGossip[19081]["Text2-2"] = {221}
tNpcGossip[19081]["Text221"] = tNewYearPromote_Npc_Text[19081]["Text221"]
tNpcGossip[19081]["tOption2-2"] = {9}
tNpcGossip[19081]["Option9"] = tNewYearPromote_Npc_Text[19081]["Option9"]

--领取烟花失败--背包空间不足 2-3
tNpcGossip[19081]["Text2-3"] = {231}
tNpcGossip[19081]["Text231"] = tNewYearPromote_Npc_Text[19081]["Text231"]
tNpcGossip[19081]["tOption2-3"] = {10}
tNpcGossip[19081]["Option10"] = tNewYearPromote_Npc_Text[19081]["Option10"]

--补领烟花失败（物品存在）对白 2-4
tNpcGossip[19081]["Text2-4"] = {241}
tNpcGossip[19081]["Text241"] = tNewYearPromote_Npc_Text[19081]["Text241"]
tNpcGossip[19081]["tOption2-4"] = {11}
tNpcGossip[19081]["Option11"] = tNewYearPromote_Npc_Text[19081]["Option11"]
--补领烟花失败（背包空间不足）对白 
--用2-3

--补领烟花成功对白 2-5
tNpcGossip[19081]["Text2-5"] = {251}
tNpcGossip[19081]["Text251"] = tNewYearPromote_Npc_Text[19081]["Text251"]
tNpcGossip[19081]["tOption2-5"] = {12}
tNpcGossip[19081]["Option12"] = tNewYearPromote_Npc_Text[19081]["Option12"]

--了解活动详情对白 2-6
tNpcGossip[19081]["Text2-6"] = {261,262}
tNpcGossip[19081]["Text261"] = tNewYearPromote_Npc_Text[19081]["Text261"]
tNpcGossip[19081]["Text262"] = tNewYearPromote_Npc_Text[19081]["Text262"]
tNpcGossip[19081]["tOption2-6"] = {13,14,15}
tNpcGossip[19081]["Option13"] = tNewYearPromote_Npc_Text[19081]["Option13"]
tNpcGossip[19081]["Option14"] = tNewYearPromote_Npc_Text[19081]["Option14"]
tNpcGossip[19081]["Option15"] = tNewYearPromote_Npc_Text[19081]["Option15"]

--说说燃放烟花的事情。
tNpcGossip[19081]["OptionPoint13"]="3-1"
--说说秒杀好礼的事情。
tNpcGossip[19081]["OptionPoint14"]="3-2"

--说说燃放烟花的事情下层对白 3-1
tNpcGossip[19081]["Text3-1"] = {311,312}
tNpcGossip[19081]["Text311"] = tNewYearPromote_Npc_Text[19081]["Text311"]
tNpcGossip[19081]["Text312"] = tNewYearPromote_Npc_Text[19081]["Text312"]
tNpcGossip[19081]["tOption3-1"] = {16}
tNpcGossip[19081]["Option16"] = tNewYearPromote_Npc_Text[19081]["Option16"]

--说说秒杀好礼的事情下层对白 3-2
tNpcGossip[19081]["Text3-2"] = {321,322,323}
tNpcGossip[19081]["Text321"] = tNewYearPromote_Npc_Text[19081]["Text321"]
tNpcGossip[19081]["Text322"] = tNewYearPromote_Npc_Text[19081]["Text322"]
tNpcGossip[19081]["Text323"] = tNewYearPromote_Npc_Text[19081]["Text323"]
tNpcGossip[19081]["tOption3-2"] = {17}
tNpcGossip[19081]["Option17"] = tNewYearPromote_Npc_Text[19081]["Option17"]

--秒杀好礼失败-时间未到对白 2-7
tNpcGossip[19081]["Text2-7"] = {271}
tNpcGossip[19081]["Text271"] = tNewYearPromote_Npc_Text[19081]["Text271"]
tNpcGossip[19081]["tOption2-7"] = {18}
tNpcGossip[19081]["Option18"] = tNewYearPromote_Npc_Text[19081]["Option18"]

--秒杀好礼失败--本轮奖励已被秒光对白（22点前） 2-8
tNpcGossip[19081]["Text2-8"] = {281}
tNpcGossip[19081]["Text281"] = tNewYearPromote_Npc_Text[19081]["Text281"]
tNpcGossip[19081]["tOption2-8"] = {19}
tNpcGossip[19081]["Option19"] = tNewYearPromote_Npc_Text[19081]["Option19"]

--秒杀好礼失败--当日秒杀活动结束对白（22点后） 2-9
tNpcGossip[19081]["Text2-9"] = {291}
tNpcGossip[19081]["Text291"] = tNewYearPromote_Npc_Text[19081]["Text291"]
tNpcGossip[19081]["tOption2-9"] = {20}
tNpcGossip[19081]["Option20"] = tNewYearPromote_Npc_Text[19081]["Option20"]

--秒杀好礼失败--当前场次秒杀已参加对白 2-10
tNpcGossip[19081]["Text2-10"] = {601}
tNpcGossip[19081]["Text601"] = tNewYearPromote_Npc_Text[19081]["Text601"]
tNpcGossip[19081]["tOption2-10"] = {25}
tNpcGossip[19081]["Option25"] = tNewYearPromote_Npc_Text[19081]["Option25"]


--秒杀好礼对白 2-10


--秒杀成功下层对白 3-3
tNpcGossip[19081]["Text3-3"] = {331}
tNpcGossip[19081]["Text331"] = tNewYearPromote_Npc_Text[19081]["Text331"]
tNpcGossip[19081]["tOption3-3"] = {21}
tNpcGossip[19081]["Option21"] = tNewYearPromote_Npc_Text[19081]["Option21"]

--秒杀失败-背包空间不足 下层对白 3-4
tNpcGossip[19081]["Text3-4"] = {341,342}
tNpcGossip[19081]["Text341"] = tNewYearPromote_Npc_Text[19081]["Text341"]
tNpcGossip[19081]["Text342"] = tNewYearPromote_Npc_Text[19081]["Text342"]
tNpcGossip[19081]["tOption3-4"] = {22}
tNpcGossip[19081]["Option22"] = tNewYearPromote_Npc_Text[19081]["Option22"]

--秒杀失败-输错验证码 下层对白 3-5 
tNpcGossip[19081]["Text3-5"] = {351,352}
tNpcGossip[19081]["Text351"] = tNewYearPromote_Npc_Text[19081]["Text351"]
tNpcGossip[19081]["Text352"] = tNewYearPromote_Npc_Text[19081]["Text352"]
tNpcGossip[19081]["tOption3-5"] = {23}
--重新输入验证码。 (返回上一页) 
tNpcGossip[19081]["Option23"] = tNewYearPromote_Npc_Text[19081]["Option23"]
tNpcGossip[19081]["OptionFunc23"]="NewYearPromote_SeckillGoods</N>19081"

--秒杀失败-礼物已被秒光 下手却太晚 3-6
tNpcGossip[19081]["Text3-6"] = {361}
tNpcGossip[19081]["Text361"] = tNewYearPromote_Npc_Text[19081]["Text361"]
tNpcGossip[19081]["tOption3-6"] = {24}
tNpcGossip[19081]["Option24"] = tNewYearPromote_Npc_Text[19081]["Option24"]

--秒杀失败-验证码超时  3-7
tNpcGossip[19081]["Text3-7"] = {371}
tNpcGossip[19081]["Text371"] = tNewYearPromote_Npc_Text[19081]["Text371"]
tNpcGossip[19081]["tOption3-7"] = {26}
tNpcGossip[19081]["Option26"] = tNewYearPromote_Npc_Text[19081]["Option26"]

--已放烟花 3-8
tNpcGossip[19081]["Text3-8"] = {381}
tNpcGossip[19081]["Text381"] = tNewYearPromote_Npc_Text[19081]["Text381"]
tNpcGossip[19081]["tOption3-8"] = {70}
tNpcGossip[19081]["Option70"] = tNewYearPromote_Npc_Text[19081]["Option70"]

---============猴王西西天天
---NPC头像
tNpcFace[4003] = 305

tNpcGossip[19118] = tNpcGossip[19118] or DefaultNpc:new{}
tNpcGossip[19118]["OptionHidden"] = 1

tNpcGossip[19118]["Text1-1"] = {111,112}
tNpcGossip[19118]["Text111"] = tNewYearPromote_Npc_Text[19118]["Text111"]
tNpcGossip[19118]["Text112"] = tNewYearPromote_Npc_Text[19118]["Text112"]

--检测是否在活动时间前
tNpcGossip[19118]["ChkFunc1-1"] = function ()
	return true
end

tNpcGossip[19118]["tOption1-1"] = {1}
tNpcGossip[19118]["Option1"] = tNewYearPromote_Npc_Text[19118]["Option1"]

---NPC头像
tNpcFace[4004] = 304
tNpcGossip[19119] = tNpcGossip[19119] or tNpcGossip[19118]

--------------------------------------物品模板----------------------------------------------
-- 3008623 特级烟花“窜天猴”
tItem[3008623] = tItem[3008623] or {}
tItem[3008623]["Function"] = function(nItemId,sItemName)
	tNewYearPromote_Npc_OpenFireWork(nItemId)
end

-- 3008624 财运大红包
tItem[3008624] = tItem[3008624] or {}
tItem[3008624]["Function"] = function(nItemId,sItemName)
	tNewYearPromote_Npc_OpenRedBag(nItemId)
end

-- ----------------------------------------------时间自检-------------------------------------------
-- -- 重置秒杀奖励物品数量,+广播提示活动
-- -- 10点场次
-- tOntimerMin_HM[0957] = tOntimerMin_HM[0957] or {}
-- table.insert(tOntimerMin_HM[0957],NewYearPromote_SecKillTimeReSet)
-- -- 12点场次
-- tOntimerMin_HM[1157] = tOntimerMin_HM[1157] or {}
-- table.insert(tOntimerMin_HM[1157],NewYearPromote_SecKillTimeReSet)
-- -- 14点场次
-- tOntimerMin_HM[1357] = tOntimerMin_HM[1357] or {}
-- table.insert(tOntimerMin_HM[1357],NewYearPromote_SecKillTimeReSet)
-- -- 16点场次
-- tOntimerMin_HM[1557] = tOntimerMin_HM[1557] or {}
-- table.insert(tOntimerMin_HM[1557],NewYearPromote_SecKillTimeReSet)
-- -- 18点场次
-- tOntimerMin_HM[1757] = tOntimerMin_HM[1757] or {}
-- table.insert(tOntimerMin_HM[1757],NewYearPromote_SecKillTimeReSet)
-- -- 20点场次
-- tOntimerMin_HM[1957] = tOntimerMin_HM[1957] or {}
-- table.insert(tOntimerMin_HM[1957],NewYearPromote_SecKillTimeReSet)
-- -- 22点场次
-- tOntimerMin_HM[2157] = tOntimerMin_HM[2157] or {}
-- table.insert(tOntimerMin_HM[2157],NewYearPromote_SecKillTimeReSet)


