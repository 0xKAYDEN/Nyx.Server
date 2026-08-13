------------------------------------------------------------------------------------
--Name：            180314[英文征服][活动脚本]海盗翻身版本上线礼包制作
--Creator:      杨艳
--Created:     2018/03/14
------------------------------------------------------------------------------------
--任务需求：

-- 活动时间：
-- 4.19-4.30

-- 活动说明：
-- 版本更新上线后，玩家上线可以获得一个礼包，直接发到玩家背包。礼包不可丢弃存仓交易，打开礼包先介绍版本大致更新内容，然后介绍奖励。
-- 在4.19-4.30活动期间，每天都可以打开3次礼包，第一次 与 第二次 打开需间隔 30分钟，第二次与第三次打开需间隔 60 分钟，礼包在 2018.5.01  00:00 过期作废。
-- 礼包分成二转以下和二转以上两种，需求在玩家打开礼包的当时判断玩家的转世情况，给予对应奖励。

--命名规范： PirateOnlinePackage_

--掩码说明
-- 17540-17542
-- 17540 记录玩家是否领取礼包
-- 17541 记录玩家领取海神精装礼包了几次
-- 17542 记录玩家领取海神尊享礼包了几次
-- 17543 记录玩家领取海神精装礼包的时间间隔
-- 17544 记录玩家领取海神尊享礼包的时间间隔

-- 3004259,'海神精装礼包
-- 3004259,'海神尊享礼包
-- 3307885,'100StudyPointsPack'
-- 3307886,'300StudyPointsPack'


--logid: 12001037

-- 2转以下玩家每天第一次打开礼包 350 31268
-- 2转以下玩家每天第二次打开礼包 350 31269
-- 2转以下玩家每天第三次打开礼包 350 31270
-- 2转以上玩家每天第一次打开礼包 350 31271
-- 2转以上玩家每天第二次打开礼包 350 31272
-- 2转以上玩家每天第三次打开礼包 350 31273

------------------------------------------------------------------------------------


--数据部分
local tPirateOnlinePackage_Cont = {}
	--等级
	tPirateOnlinePackage_Cont["Level"] = 15
	tPirateOnlinePackage_Cont["Mete"] = 2
	
	--礼包种类
	tPirateOnlinePackage_Cont[1] = 3307817
	tPirateOnlinePackage_Cont[2] = 3307818

--掩码
local tPirateOnlinePackage_Stc = {}

	tPirateOnlinePackage_Stc["EventType"] = {}
	tPirateOnlinePackage_Stc["DataType"] = {}
	
	--记录忘记是否领取礼包
	tPirateOnlinePackage_Stc["EventType"][1] = 175
	tPirateOnlinePackage_Stc["DataType"][1]= 40
	
	--记录玩家领取了几次
	tPirateOnlinePackage_Stc[3307817] = {}
	tPirateOnlinePackage_Stc[3307817]["EventType"] = {}
	tPirateOnlinePackage_Stc[3307817]["DataType"] = {}
	tPirateOnlinePackage_Stc[3307817]["EventType"][2] = 175
	tPirateOnlinePackage_Stc[3307817]["DataType"][2]= 41
	
	tPirateOnlinePackage_Stc[3307818] = {}
	tPirateOnlinePackage_Stc[3307818]["EventType"] = {}
	tPirateOnlinePackage_Stc[3307818]["DataType"] = {}
	tPirateOnlinePackage_Stc[3307818]["EventType"][2] = 175
	tPirateOnlinePackage_Stc[3307818]["DataType"][2]= 42
	
	-- 记录玩家是否超过30分钟和60分钟
	tPirateOnlinePackage_Stc[3307817]["EventType"][3] = 175
	tPirateOnlinePackage_Stc[3307817]["DataType"][3]= 43
	
	tPirateOnlinePackage_Stc[3307818]["EventType"][3] = 175
	tPirateOnlinePackage_Stc[3307818]["DataType"][3]= 44
	

--奖励	
local tPirateOnlinePackage_Reward = {}
--给礼包
	tPirateOnlinePackage_Reward[3307817] = {}
	tPirateOnlinePackage_Reward[3307817]["RewardItem"] = {}
	tPirateOnlinePackage_Reward[3307817]["RewardItem"][1] = {}
	tPirateOnlinePackage_Reward[3307817]["RewardItem"][1]["Id"] = 3307817
	tPirateOnlinePackage_Reward[3307817]["RewardItem"][1]["Attr"] = "0 1 3"
	tPirateOnlinePackage_Reward[3307817]["Log"] = "0,0,0,0,12001037,2,3307817,1"
	
	tPirateOnlinePackage_Reward[3307818] = {}
	tPirateOnlinePackage_Reward[3307818]["RewardItem"] = {}
	tPirateOnlinePackage_Reward[3307818]["RewardItem"][1] = {}
	tPirateOnlinePackage_Reward[3307818]["RewardItem"][1]["Id"] = 3307818
	tPirateOnlinePackage_Reward[3307818]["RewardItem"][1]["Attr"] = "0 1 3"
	tPirateOnlinePackage_Reward[3307818]["Log"] = "0,0,0,0,12001037,2,3307818,1"


--(3307817,'海神精装礼包' （玩家等级2转15-）
	tPirateOnlinePackage_Reward[3307817][1] = {}
	tPirateOnlinePackage_Reward[3307817][1]["RewardItem"] = {}
	tPirateOnlinePackage_Reward[3307817][1]["RewardItem"][1] = {}
	tPirateOnlinePackage_Reward[3307817][1]["RewardItem"][1]["Id"] = 723700
	tPirateOnlinePackage_Reward[3307817][1]["RewardItem"][1]["Attr"] = "0 2 3"
	
	tPirateOnlinePackage_Reward[3307817][1]["RewardItem"][2] = {}
	tPirateOnlinePackage_Reward[3307817][1]["RewardItem"][2]["Id"] = 3301827
	tPirateOnlinePackage_Reward[3307817][1]["RewardItem"][2]["Attr"] = "0 1"
	
	tPirateOnlinePackage_Reward[3307817][1]["RewardItem"][3] = {}
	tPirateOnlinePackage_Reward[3307817][1]["RewardItem"][3]["Id"] = 730001
	tPirateOnlinePackage_Reward[3307817][1]["RewardItem"][3]["Attr"] = "0 2 3 10080 1"
	tPirateOnlinePackage_Reward[3307817][1]["Log"] = "0,0,0,0,12001037,2,723700[3301827][730001],2[1][2]"
	
	tPirateOnlinePackage_Reward[3307817][2] = {}
	tPirateOnlinePackage_Reward[3307817][2]["RewardItem"] = {}
	tPirateOnlinePackage_Reward[3307817][2]["RewardItem"][1] = {}
	tPirateOnlinePackage_Reward[3307817][2]["RewardItem"][1]["Id"] = 723700
	tPirateOnlinePackage_Reward[3307817][2]["RewardItem"][1]["Attr"] = "0 3 3"
	
	tPirateOnlinePackage_Reward[3307817][2]["RewardItem"][2] = {}
	tPirateOnlinePackage_Reward[3307817][2]["RewardItem"][2]["Id"] = 1200000
	tPirateOnlinePackage_Reward[3307817][2]["RewardItem"][2]["Attr"] = "0 1 3"
	
	tPirateOnlinePackage_Reward[3307817][2]["RewardItem"][3] = {}
	tPirateOnlinePackage_Reward[3307817][2]["RewardItem"][3]["Id"] = 730002
	tPirateOnlinePackage_Reward[3307817][2]["RewardItem"][3]["Attr"] = "0 1 3 10080 1"
	--修行值 3307885
	tPirateOnlinePackage_Reward[3307817][2]["RewardItem"][4] = {}
	tPirateOnlinePackage_Reward[3307817][2]["RewardItem"][4]["Id"] = 3307885
	tPirateOnlinePackage_Reward[3307817][2]["RewardItem"][4]["Attr"] = "0 1 3"
	tPirateOnlinePackage_Reward[3307817][2]["Log"] = "0,0,0,0,12001037,2,723700[1200000][730002][3307885],3[1][1][1]"
	
	tPirateOnlinePackage_Reward[3307817][3] = {}
	tPirateOnlinePackage_Reward[3307817][3]["RewardItem"] = {}
	--给修行值 3307886
	tPirateOnlinePackage_Reward[3307817][3]["RewardItem"][1] = {}
	tPirateOnlinePackage_Reward[3307817][3]["RewardItem"][1]["Id"] = 3307886
	tPirateOnlinePackage_Reward[3307817][3]["RewardItem"][1]["Attr"] = "0 1 3"
	
	tPirateOnlinePackage_Reward[3307817][3]["RewardItem"][2] = {}
	tPirateOnlinePackage_Reward[3307817][3]["RewardItem"][2]["Id"] = 730003
	tPirateOnlinePackage_Reward[3307817][3]["RewardItem"][2]["Attr"] = "0 1 3 10080 1"
	                            
	tPirateOnlinePackage_Reward[3307817][3]["RewardItem"][3] = {}
	tPirateOnlinePackage_Reward[3307817][3]["RewardItem"][3]["Id"] = 3301827
	tPirateOnlinePackage_Reward[3307817][3]["RewardItem"][3]["Attr"] = "0 3"
	
	tPirateOnlinePackage_Reward[3307817][3]["RewardItem"][4] = {}
	tPirateOnlinePackage_Reward[3307817][3]["RewardItem"][4]["Id"] = 723017
	tPirateOnlinePackage_Reward[3307817][3]["RewardItem"][4]["Attr"] = "0 5 3"
	
	tPirateOnlinePackage_Reward[3307817][3]["RewardItem"][5] = {}
	tPirateOnlinePackage_Reward[3307817][3]["RewardItem"][5]["Id"] = 1200001
	tPirateOnlinePackage_Reward[3307817][3]["RewardItem"][5]["Attr"] = "0 1 3"
	tPirateOnlinePackage_Reward[3307817][3]["Log"] = "0,0,0,0,12001037,2,3307886[730003][3301827][723017][1200001],1[1][3][5][1]"
	
	

--(3307818,'海神尊享礼包' （玩家2转15+）
	tPirateOnlinePackage_Reward[3307818][1] = {}
	tPirateOnlinePackage_Reward[3307818][1]["RewardItem"] = {}
	tPirateOnlinePackage_Reward[3307818][1]["RewardItem"][1] = {}
	tPirateOnlinePackage_Reward[3307818][1]["RewardItem"][1]["Id"] = 3003124
	tPirateOnlinePackage_Reward[3307818][1]["RewardItem"][1]["Attr"] = "0 5 3"
	                           
	tPirateOnlinePackage_Reward[3307818][1]["RewardItem"][2] = {}
	tPirateOnlinePackage_Reward[3307818][1]["RewardItem"][2]["Id"] = 3002030
	tPirateOnlinePackage_Reward[3307818][1]["RewardItem"][2]["Attr"] = "0 2 3"
	                          
	tPirateOnlinePackage_Reward[3307818][1]["RewardItem"][3] = {}
	tPirateOnlinePackage_Reward[3307818][1]["RewardItem"][3]["Id"] = 3003125
	tPirateOnlinePackage_Reward[3307818][1]["RewardItem"][3]["Attr"] = "0 2 3"
	tPirateOnlinePackage_Reward[3307818][1]["Log"] = "0,0,0,0,12001037,2,3003124[3002030][3003125],5[2][2]"
	                      
	tPirateOnlinePackage_Reward[3307818][2] = {}
	tPirateOnlinePackage_Reward[3307818][2]["RewardItem"] = {}
	tPirateOnlinePackage_Reward[3307818][2]["RewardItem"][1] = {}
	tPirateOnlinePackage_Reward[3307818][2]["RewardItem"][1]["Id"] = 729242
	tPirateOnlinePackage_Reward[3307818][2]["RewardItem"][1]["Attr"] = "0 1 3"
	                          
	tPirateOnlinePackage_Reward[3307818][2]["RewardItem"][2] = {}
	tPirateOnlinePackage_Reward[3307818][2]["RewardItem"][2]["Id"] = 3009001
	tPirateOnlinePackage_Reward[3307818][2]["RewardItem"][2]["Attr"] = "0 1 0 2880 1"
	                        
	tPirateOnlinePackage_Reward[3307818][2]["RewardItem"][3] = {}
	tPirateOnlinePackage_Reward[3307818][2]["RewardItem"][3]["Id"] = 730003
	tPirateOnlinePackage_Reward[3307818][2]["RewardItem"][3]["Attr"] = "0 1 3 10080 1"
	
	tPirateOnlinePackage_Reward[3307818][2]["RewardItem"][4] = {}
	tPirateOnlinePackage_Reward[3307818][2]["RewardItem"][4]["Id"] = 3303085
	tPirateOnlinePackage_Reward[3307818][2]["RewardItem"][4]["Attr"] = "0 1"                            
	tPirateOnlinePackage_Reward[3307818][2]["Log"] = "0,0,0,0,12001037,2,729242[3009001][730003][3303085],1[1][1][1]"
	                                           
	tPirateOnlinePackage_Reward[3307818][3] = {}
	tPirateOnlinePackage_Reward[3307818][3]["RewardItem"] = {}
	           
	tPirateOnlinePackage_Reward[3307818][3]["RewardItem"][1] = {}
	tPirateOnlinePackage_Reward[3307818][3]["RewardItem"][1]["Id"] = 3306370
	tPirateOnlinePackage_Reward[3307818][3]["RewardItem"][1]["Attr"] = "0 1 3"
	                        
	tPirateOnlinePackage_Reward[3307818][3]["RewardItem"][2] = {}
	tPirateOnlinePackage_Reward[3307818][3]["RewardItem"][2]["Id"] = 4050001
	tPirateOnlinePackage_Reward[3307818][3]["RewardItem"][2]["Attr"] = "0 10 3"
	                          
	tPirateOnlinePackage_Reward[3307818][3]["RewardItem"][3] = {}
	tPirateOnlinePackage_Reward[3307818][3]["RewardItem"][3]["Id"] = 729242
	tPirateOnlinePackage_Reward[3307818][3]["RewardItem"][3]["Attr"] = "0 5 3"
	                       
	tPirateOnlinePackage_Reward[3307818][3]["RewardItem"][4] = {}
	tPirateOnlinePackage_Reward[3307818][3]["RewardItem"][4]["Id"] = 3007284
	tPirateOnlinePackage_Reward[3307818][3]["RewardItem"][4]["Attr"] = "0 1 3"
	                       
	tPirateOnlinePackage_Reward[3307818][3]["RewardItem"][5] = {}
	tPirateOnlinePackage_Reward[3307818][3]["RewardItem"][5]["Id"] = 720128
	tPirateOnlinePackage_Reward[3307818][3]["RewardItem"][5]["Attr"] = "0 2 3"
	tPirateOnlinePackage_Reward[3307818][3]["Log"] = "0,0,0,0,12001037,2,3306370[4050001][729242][3007284][720128],1[10][5][1][2]"
	
	--修行值礼包
	-- 3307885,'100StudyPointsPack'
	tPirateOnlinePackage_Reward[3307885] = {}
	tPirateOnlinePackage_Reward[3307885]["DeleteItem"] = {}
	tPirateOnlinePackage_Reward[3307885]["DeleteItem"][1] = {}
	tPirateOnlinePackage_Reward[3307885]["DeleteItem"][1]["Id"] = 3307885
	tPirateOnlinePackage_Reward[3307885]["RewardCultivation"] = {}
	tPirateOnlinePackage_Reward[3307885]["RewardCultivation"]["Value"] = 100
	tPirateOnlinePackage_Reward[3307885]["Log"] = "0,0,3307885,1,12001037,2,6,100"
	
	-- 3307886,'300StudyPointsPack'
	tPirateOnlinePackage_Reward[3307886] = {}
	tPirateOnlinePackage_Reward[3307886]["DeleteItem"] = {}
	tPirateOnlinePackage_Reward[3307886]["DeleteItem"][1] = {}
	tPirateOnlinePackage_Reward[3307886]["DeleteItem"][1]["Id"] = 3307886
	tPirateOnlinePackage_Reward[3307886]["RewardCultivation"] = {}
	tPirateOnlinePackage_Reward[3307886]["RewardCultivation"]["Value"] = 300
	tPirateOnlinePackage_Reward[3307886]["Log"] = "0,0,3307886,1,12001037,2,6,300"
	
--随机奖励
	tPirateOnlinePackage_RunReward = {}
	--第一次
	tPirateOnlinePackage_RunReward[1] = {}
	tPirateOnlinePackage_RunReward[1]["ItemChanceSum"] = 10000
                                   
	--流星卷（赠）*2 3301827 45%     
	tPirateOnlinePackage_RunReward[1][1] = {}
	tPirateOnlinePackage_RunReward[1][1]["RandomItemChanceType"] = 2
	tPirateOnlinePackage_RunReward[1][1]["ItemChance"] = 4500
	tPirateOnlinePackage_RunReward[1][1]["RewardItem"] = {}
	tPirateOnlinePackage_RunReward[1][1]["RewardItem"][1] = {}
	tPirateOnlinePackage_RunReward[1][1]["RewardItem"][1]["Id"] = 3301827
	tPirateOnlinePackage_RunReward[1][1]["RewardItem"][1]["Attr"] = "0 2"
	tPirateOnlinePackage_RunReward[1][1]["Log"] = "0,0,0,0,12001037,2,3301827,2"
	
	--经验保护丹（赠）*3 3002559 10%
	tPirateOnlinePackage_RunReward[1][2] = {}
	tPirateOnlinePackage_RunReward[1][2]["RandomItemChanceType"] = 2
	tPirateOnlinePackage_RunReward[1][2]["ItemChance"] = 1000
	tPirateOnlinePackage_RunReward[1][2]["RewardItem"] = {}
	tPirateOnlinePackage_RunReward[1][2]["RewardItem"][1] = {}
	tPirateOnlinePackage_RunReward[1][2]["RewardItem"][1]["Id"] = 3002559
	tPirateOnlinePackage_RunReward[1][2]["RewardItem"][1]["Attr"] = "0 3 3"
	tPirateOnlinePackage_RunReward[1][2]["Log"] = "0,0,0,0,12001037,2,3002559,3"
	
	--日常任务完成令（赠）*1 3303084 45%
	tPirateOnlinePackage_RunReward[1][3] = {}
	tPirateOnlinePackage_RunReward[1][3]["RandomItemChanceType"] = 2
	tPirateOnlinePackage_RunReward[1][3]["ItemChance"] = 4500
	tPirateOnlinePackage_RunReward[1][3]["RewardItem"] = {}
	tPirateOnlinePackage_RunReward[1][3]["RewardItem"][1] = {}
	tPirateOnlinePackage_RunReward[1][3]["RewardItem"][1]["Id"] = 3303084
	tPirateOnlinePackage_RunReward[1][3]["RewardItem"][1]["Attr"] = "0 1"
	tPirateOnlinePackage_RunReward[1][3]["Log"] = "0,0,0,0,12001037,2,3002559,1"
	
	--第二次
	tPirateOnlinePackage_RunReward[2] = {}
	tPirateOnlinePackage_RunReward[2]["ItemChanceSum"] = 10000
                                   
	--'+4马匹（赠）*1 3303532 5%     
	tPirateOnlinePackage_RunReward[2][1] = {}
	tPirateOnlinePackage_RunReward[2][1]["RandomItemChanceType"] = 2
	tPirateOnlinePackage_RunReward[2][1]["ItemChance"] = 500
	tPirateOnlinePackage_RunReward[2][1]["RewardItem"] = {}
	tPirateOnlinePackage_RunReward[2][1]["RewardItem"][1] = {}
	tPirateOnlinePackage_RunReward[2][1]["RewardItem"][1]["Id"] = 3303532
	tPirateOnlinePackage_RunReward[2][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tPirateOnlinePackage_RunReward[2][1]["Log"] = "0,0,0,0,12001037,2,3303532,2"
	
	--真气满盈礼包（赠）*2 3007386 15%
	tPirateOnlinePackage_RunReward[2][2] = {}
	tPirateOnlinePackage_RunReward[2][2]["RandomItemChanceType"] = 2
	tPirateOnlinePackage_RunReward[2][2]["ItemChance"] = 1500
	tPirateOnlinePackage_RunReward[2][2]["RewardItem"] = {}
	tPirateOnlinePackage_RunReward[2][2]["RewardItem"][1] = {}
	tPirateOnlinePackage_RunReward[2][2]["RewardItem"][1]["Id"] = 3007386
	tPirateOnlinePackage_RunReward[2][2]["RewardItem"][1]["Attr"] = "0 2 3"
	tPirateOnlinePackage_RunReward[2][2]["Log"] = "0,0,0,0,12001037,2,3007386,2"
	
	--秘制免费强炼丹（赠）*5 3002926 40%
	tPirateOnlinePackage_RunReward[2][3] = {}
	tPirateOnlinePackage_RunReward[2][3]["RandomItemChanceType"] = 2
	tPirateOnlinePackage_RunReward[2][3]["ItemChance"] = 4000
	tPirateOnlinePackage_RunReward[2][3]["RewardItem"] = {}
	tPirateOnlinePackage_RunReward[2][3]["RewardItem"][1] = {}
	tPirateOnlinePackage_RunReward[2][3]["RewardItem"][1]["Id"] = 3002926
	tPirateOnlinePackage_RunReward[2][3]["RewardItem"][1]["Attr"] = "0 5"
	tPirateOnlinePackage_RunReward[2][3]["Log"] = "0,0,0,0,12001037,2,3002926,5"
	
	--造化天书（赠）*2 723342 40%
	tPirateOnlinePackage_RunReward[2][4] = {}
	tPirateOnlinePackage_RunReward[2][4]["RandomItemChanceType"] = 2
	tPirateOnlinePackage_RunReward[2][4]["ItemChance"] = 4000
	tPirateOnlinePackage_RunReward[2][4]["RewardItem"] = {}
	tPirateOnlinePackage_RunReward[2][4]["RewardItem"][1] = {}
	tPirateOnlinePackage_RunReward[2][4]["RewardItem"][1]["Id"] = 723342
	tPirateOnlinePackage_RunReward[2][4]["RewardItem"][1]["Attr"] = "0 2 3"
	tPirateOnlinePackage_RunReward[2][4]["Log"] = "0,0,0,0,12001037,2,723342,2"
	
	--第三次
	tPirateOnlinePackage_RunReward[3] = {}
	tPirateOnlinePackage_RunReward[3]["ItemChanceSum"] = 10000
                                   
	--'赠真气礼包*5 3006542 20%     
	tPirateOnlinePackage_RunReward[3][1] = {}
	tPirateOnlinePackage_RunReward[3][1]["RandomItemChanceType"] = 2
	tPirateOnlinePackage_RunReward[3][1]["ItemChance"] = 2000
	tPirateOnlinePackage_RunReward[3][1]["RewardItem"] = {}
	tPirateOnlinePackage_RunReward[3][1]["RewardItem"][1] = {}
	tPirateOnlinePackage_RunReward[3][1]["RewardItem"][1]["Id"] = 3006542
	tPirateOnlinePackage_RunReward[3][1]["RewardItem"][1]["Attr"] = "0 5 3"
	tPirateOnlinePackage_RunReward[3][1]["Log"] = "0,0,0,0,12001037,2,3006542,5"
	
	--明亮星陨石*3 3009001 20%
	tPirateOnlinePackage_RunReward[3][2] = {}
	tPirateOnlinePackage_RunReward[3][2]["RandomItemChanceType"] = 2
	tPirateOnlinePackage_RunReward[3][2]["ItemChance"] = 2000
	tPirateOnlinePackage_RunReward[3][2]["RewardItem"] = {}
	tPirateOnlinePackage_RunReward[3][2]["RewardItem"][1] = {}
	tPirateOnlinePackage_RunReward[3][2]["RewardItem"][1]["Id"] = 3009001
	tPirateOnlinePackage_RunReward[3][2]["RewardItem"][1]["Attr"] = "0 3 0 2880 1"
	tPirateOnlinePackage_RunReward[3][2]["Log"] = "0,0,0,0,12001037,2,3009001,3"
	
	--清心符（赠，不能兑换天石）*2 720128 20%
	tPirateOnlinePackage_RunReward[3][3] = {}
	tPirateOnlinePackage_RunReward[3][3]["RandomItemChanceType"] = 2
	tPirateOnlinePackage_RunReward[3][3]["ItemChance"] = 2000
	tPirateOnlinePackage_RunReward[3][3]["RewardItem"] = {}
	tPirateOnlinePackage_RunReward[3][3]["RewardItem"][1] = {}
	tPirateOnlinePackage_RunReward[3][3]["RewardItem"][1]["Id"] = 720128
	tPirateOnlinePackage_RunReward[3][3]["RewardItem"][1]["Attr"] = "0 2 3"
	tPirateOnlinePackage_RunReward[3][3]["Log"] = "0,0,0,0,12001037,2,720128,2"
	
	--日常任务完成令（赠）*1 3303084 20%
	tPirateOnlinePackage_RunReward[3][4] = {}
	tPirateOnlinePackage_RunReward[3][4]["RandomItemChanceType"] = 2
	tPirateOnlinePackage_RunReward[3][4]["ItemChance"] = 2000
	tPirateOnlinePackage_RunReward[3][4]["RewardItem"] = {}
	tPirateOnlinePackage_RunReward[3][4]["RewardItem"][1] = {}
	tPirateOnlinePackage_RunReward[3][4]["RewardItem"][1]["Id"] = 3303084
	tPirateOnlinePackage_RunReward[3][4]["RewardItem"][1]["Attr"] = "0 1"
	tPirateOnlinePackage_RunReward[3][4]["Log"] = "0,0,0,0,12001037,2,3303084,1"

	--国境任务完成令（赠）*1 3303085 20%
	tPirateOnlinePackage_RunReward[3][5] = {}
	tPirateOnlinePackage_RunReward[3][5]["RandomItemChanceType"] = 2
	tPirateOnlinePackage_RunReward[3][5]["ItemChance"] = 2000
	tPirateOnlinePackage_RunReward[3][5]["RewardItem"] = {}
	tPirateOnlinePackage_RunReward[3][5]["RewardItem"][1] = {}
	tPirateOnlinePackage_RunReward[3][5]["RewardItem"][1]["Id"] = 3303085
	tPirateOnlinePackage_RunReward[3][5]["RewardItem"][1]["Attr"] = "0 1"
	tPirateOnlinePackage_RunReward[3][5]["Log"] = "0,0,0,0,12001037,2,3303085,1"
	
	
	
--log表
local tPirateOnlinePackage_Log = {}
	tPirateOnlinePackage_Log["DelItem"] = "0,0,%d,1,12001037,3,0,0" --删除任务物品	
	
	tPirateOnlinePackage_Log["EmoneyLog"] ={}
	tPirateOnlinePackage_Log["EmoneyLog"][3307817] = {}                 
	tPirateOnlinePackage_Log["EmoneyLog"][3307817][1] = "350	31268	0	0	1	"
	tPirateOnlinePackage_Log["EmoneyLog"][3307817][2] = "350	31269	0	0	1	"  
	tPirateOnlinePackage_Log["EmoneyLog"][3307817][3] = "350	31270	0	0	1	"
	                                                                            
	tPirateOnlinePackage_Log["EmoneyLog"][3307818] = {}                         
	tPirateOnlinePackage_Log["EmoneyLog"][3307818][1] = "350	31271	0	0	1	"
	tPirateOnlinePackage_Log["EmoneyLog"][3307818][2] = "350	31272	0	0	1	"
	tPirateOnlinePackage_Log["EmoneyLog"][3307818][3] = "350	31273	0	0	1	" 

----------------------------------逻辑部分-------------------------------------------
--上线自检等级给礼包
function PirateOnlinePackage_OnLine()

	local nUserId = Get_UserId()
	--时间判断
	if not Sys_ChkFullTime(tActivityTime["PirateOnlinePackage"]["ActivityTime"]) then
		return
	end
	local nFlag = 0

	--等级判断
	if  User_JudgeLevelAndMetempsychosis(tPirateOnlinePackage_Cont["Level"],tPirateOnlinePackage_Cont["Mete"],nUserId)	then 
		nFlag = tPirateOnlinePackage_Cont[2]
	else 
		nFlag = tPirateOnlinePackage_Cont[1]
	end

	if nFlag == 0 then
		return
	end 	

	--掩码判断
	local nEvent = tPirateOnlinePackage_Stc["EventType"][1]
	local nType = tPirateOnlinePackage_Stc["DataType"][1]

	if Task_ChkStcValue(nEvent,nType,">",0) then
		return
	end

	--背包空间判断
	if not  RewardTemplate_CheckSpace(tPirateOnlinePackage_Reward[nFlag],nUserId) then 
		User_TalkChannel2005(tPirateOnlinePackage_Text[nFlag]["LoginBagFull"])
		return
	end 

	--置掩码 给礼包
	Task_SetStatistic(nEvent,nType,nFlag,1,nUserId)
	Task_SetStcTimestamp(nEvent,nType,0,nUserId)

	RewardTemplate_UseItem(tPirateOnlinePackage_Reward[nFlag])

end 
	

--领取奖励
function PirateOnlinePackage__OpenPackage(nItemId)

	local nUserId = Get_UserId()
	--判断时间
	if  CommonFunc_GetBeforeActivityTime(tActivityTime["PirateOnlinePackage"]["ActivityTime"]) then
		return
	end
	
	if not Sys_ChkFullTime(tActivityTime["PirateOnlinePackage"]["ActivityTime"]) then
		if Item_ChkItem(nItemId) then
			if Item_DelItem(nItemId) then
				local sDelItemLog = string.format(tDailyPackge_Log["DelItem"],nItemId)
				Sys_SaveActionFestivalLog(sDelItemLog)
				User_TalkChannel2005(tPirateOnlinePackage_Text["Sys"]["OverTime"])
			end
		end	
		return
	end

	--判断物品
	if not Item_ChkItem(nItemId) then
		return	
	end	

	--领取次数
	local nEventTime = tPirateOnlinePackage_Stc[nItemId]["EventType"][2]
	local nTypeTime = tPirateOnlinePackage_Stc[nItemId]["DataType"][2]
	

	-- 判断是否隔天
	if Task_StcInterval(nEventTime, nTypeTime, 1, 4) then
		Task_SetStatistic(nEventTime, nTypeTime, 0, 1)
		Task_SetStcTimestamp(nEventTime, nTypeTime, 0)
	end

	local nDataTime =  Get_UserStatisticValue(nEventTime,nTypeTime)

	local nEventFirst = tPirateOnlinePackage_Stc[nItemId]["EventType"][3]
	local nTypeFirst = tPirateOnlinePackage_Stc[nItemId]["DataType"][3]
	
	if nDataTime == 1 then 

		--领取距离30分钟
		if not Task_StcInterval(nEventFirst,nTypeFirst,30,1) then  --判断是否隔了30分钟
			User_TalkChannel2005(tPirateOnlinePackage_Text["Sys"]["FirstTime"])
			return
		end
		
	elseif nDataTime == 2 then

		--领取距离60分钟
		if not Task_StcInterval(nEventFirst,nTypeFirst,60,1) then  --判断是否隔了30分钟
			User_TalkChannel2005(tPirateOnlinePackage_Text["Sys"]["SecondTime"])
			return
		end
	 
	elseif nDataTime > 2 then
		User_TalkChannel2005(tPirateOnlinePackage_Text["Sys"]["NoTimes"])
		return
	end
	

	local nTimes = nDataTime + 1
	--背包空间判断
	local nSpaceSum = RewardTemplate_GetRewardSpace(tPirateOnlinePackage_Reward[nItemId][nTimes],nUserId) 
	local nSpaceRun = 0

	if nItemId == 3307818 then 

		nSpaceRun = RewardTemplate_GetRandomSpace(tPirateOnlinePackage_RunReward,nTimes,nUserId)
		nSpaceSum = nSpaceSum + nSpaceRun

	end

	if not User_CheckLeftSpace(nSpaceSum,nUserId) then
	
		local sSay = string.format(tPirateOnlinePackage_Text["Sys"]["NoSpace"],nSpaceSum)
		User_TalkChannel2005(sSay)
		return
	end

	--置掩码
	Task_AddStatistic(nEventTime,nTypeTime,1,1,nUserId)
	Task_SetStcTimestamp(nEventTime,nTypeTime,0,nUserId)

	local nTime = os.time()
	Task_SetStatistic(nEventFirst,nTypeFirst,nTime,1,nUserId)
	Task_SetStcTimestamp(nEventFirst,nTypeFirst,0,nUserId)

	sEmoneyLog =tPirateOnlinePackage_Log["EmoneyLog"][nItemId][nTimes]
	Sys_SaveEmoneyBuy(sEmoneyLog)  --emoneylog

	if nItemId == 3307818 then 

		RewardTemplate_NewRandom(tPirateOnlinePackage_RunReward,nTimes,nUserId)	
	end
	
	RewardTemplate_UseItem(tPirateOnlinePackage_Reward[nItemId][nTimes])

end


--物品无对白检测时间
function PirateOnlinePackage_CheckTime(nItemId)

	local nEvent = tPirateOnlinePackage_Stc[nItemId]["EventType"][2]
	local nType = tPirateOnlinePackage_Stc[nItemId]["DataType"][2] 
	local nDataTime =  Get_UserStatisticValue(nEvent,nType)
	
	if not Sys_ChkFullTime(tActivityTime["PirateOnlinePackage"]["ActivityTime"]) then
		if Item_ChkItem(nItemId) then
			if Item_DelItem(nItemId) then
				local sDelItemLog = string.format(tPirateOnlinePackage_Log["DelItem"],nItemId)
				Sys_SaveActionFestivalLog(sDelItemLog)
				User_TalkChannel2005(tPirateOnlinePackage_Text["Sys"]["OverTime"])
				return 
			end
		end	
		return
	end
	if Task_StcInterval(nEvent, nType, 1, 4) then
		Task_SetStatistic(nEvent, nType, 0, 1)
		Task_SetStcTimestamp(nEvent, nType, 0)
	end
	
	if nDataTime > 2 then

		User_TalkChannel2005(tPirateOnlinePackage_Text["Sys"]["NoTimes"])
		return
	end
	
	LinkItemGossipFunc_New(nItemId,"1-1")
end


--修行值礼包
function PirateOnlinePackage_UsePackage(nItemId)
	
		RewardTemplate_UseItem(tPirateOnlinePackage_Reward[nItemId])
	
end

----------------------------------物品部分---------------------------------------------
-- 100StudyPointsPack
tItem[3307885] = tItem[3307885] or {}
tItem[3307885]["Function"] = function(nItemId,sItemName)
	PirateOnlinePackage_UsePackage(nItemId)
end


-- 3307886,'300StudyPointsPack
tItem[3307886] = tItem[3307886] or {}
tItem[3307886]["Function"] = function(nItemId,sItemName)
	PirateOnlinePackage_UsePackage(nItemId)
end


tItem[3307817] = tItem[3307817] or {}
tItem[3307817]["Function"] = function(nItemId,sItemName)
	PirateOnlinePackage_CheckTime(nItemId)
end

tItemFace[3307817] = 1102
tItem[3307817]["Text1-1"] = {111, 112, 113, 114, 115, 116,117}
tItem[3307817]["Text111"] = tPirateOnlinePackage_Text[3307817]["Text111"]
tItem[3307817]["Text112"] = tPirateOnlinePackage_Text[3307817]["Text112"]
tItem[3307817]["Text113"] = tPirateOnlinePackage_Text[3307817]["Text113"]
tItem[3307817]["Text114"] = tPirateOnlinePackage_Text[3307817]["Text114"]
tItem[3307817]["Text115"] = tPirateOnlinePackage_Text[3307817]["Text115"]
tItem[3307817]["Text116"] = tPirateOnlinePackage_Text[3307817]["Text116"]
tItem[3307817]["Text117"] = tPirateOnlinePackage_Text[3307817]["Text117"]

tItem[3307817]["ChkFunc1-1"] = function ()
	
	
	local nEventFirst = tPirateOnlinePackage_Stc[3307817]["EventType"][3]
	local nTypeFirst = tPirateOnlinePackage_Stc[3307817]["DataType"][3]
	local nTime = Get_UserStatisticValue(nEventFirst,nTypeFirst)
	local nNowTime = os.time()
	
	local nTimeStemp = math.floor((nNowTime - nTime)/60)
	--领取次数
	local nEventTime = tPirateOnlinePackage_Stc[3307817]["EventType"][2]
	local nTypeTime = tPirateOnlinePackage_Stc[3307817]["DataType"][2]
	local nDataTime = Get_UserStatisticValue(nEventTime,nTypeTime)
	
	-- 判断是否隔天
	if Task_StcInterval(nEventTime, nTypeTime, 1, 4) or nDataTime == 0 then
		Task_SetStatistic(nEventTime, nTypeTime, 0, 1)
		Task_SetStcTimestamp(nEventTime, nTypeTime, 0)
		tItem[3307817]["Text117"] = tPirateOnlinePackage_Text[3307817]["Text117"]
		return true
	end
	local nNeedTime 
	if nDataTime == 1 then
		nNeedTime = 30 - nTimeStemp
	elseif nDataTime == 2 then
		nNeedTime = 60 - nTimeStemp
	elseif nDataTime > 2 then
		
	end
	if nNeedTime <= 0 then
		tItem[3307817]["Text117"] = tPirateOnlinePackage_Text[3307817]["Text117"]
		return true
	end
	tItem[3307817]["Text117"] = string.format(tPirateOnlinePackage_Text[3307817]["Text1171"],nNeedTime)
	return true 
end

tItem[3307817]["tOption1-1"] = {111, 112}
tItem[3307817]["Option111"] = tPirateOnlinePackage_Text[3307817]["Option111"]
tItem[3307817]["Option112"] = tPirateOnlinePackage_Text[3307817]["Option112"]
tItem[3307817]["OptionFunc111"] = "PirateOnlinePackage__OpenPackage</N>3307817"



tItem[3307818] = tItem[3307818] or {}
tItem[3307818]["Function"] = function(nItemId,sItemName)
	PirateOnlinePackage_CheckTime(nItemId)
end


tItemFace[3307818] = 1403
tItem[3307818]["Text1-1"] = {111, 112, 113, 114, 115, 116, 117, 118}
tItem[3307818]["Text111"] = tPirateOnlinePackage_Text[3307818]["Text111"]
tItem[3307818]["Text112"] = tPirateOnlinePackage_Text[3307818]["Text112"]
tItem[3307818]["Text113"] = tPirateOnlinePackage_Text[3307818]["Text113"]
tItem[3307818]["Text114"] = tPirateOnlinePackage_Text[3307818]["Text114"]
tItem[3307818]["Text115"] = tPirateOnlinePackage_Text[3307818]["Text115"]
tItem[3307818]["Text116"] = tPirateOnlinePackage_Text[3307818]["Text116"]
tItem[3307818]["Text117"] = tPirateOnlinePackage_Text[3307818]["Text117"]
tItem[3307818]["Text118"] = tPirateOnlinePackage_Text[3307818]["Text118"]

tItem[3307818]["ChkFunc1-1"] = function ()

	local nEventFirst = tPirateOnlinePackage_Stc[3307818]["EventType"][3]
	local nTypeFirst = tPirateOnlinePackage_Stc[3307818]["DataType"][3]
	local nTime = Get_UserStatisticValue(nEventFirst,nTypeFirst)
	local nNowTime = os.time()
	local nTimeStemp = math.floor((nNowTime - nTime)/60)
	--领取次数
	local nEventTime = tPirateOnlinePackage_Stc[3307818]["EventType"][2]
	local nTypeTime = tPirateOnlinePackage_Stc[3307818]["DataType"][2]
	local nDataTime = Get_UserStatisticValue(nEventTime,nTypeTime)
	
	-- 判断是否隔天
	if Task_StcInterval(nEventTime, nTypeTime, 1, 4) or nDataTime == 0 then
		Task_SetStatistic(nEventTime, nTypeTime, 0, 1)
		Task_SetStcTimestamp(nEventTime, nTypeTime, 0)
		tItem[3307818]["Text117"] = tPirateOnlinePackage_Text[3307818]["Text117"]
		return true
	end
	
	local nNeedTime 
	if nDataTime == 1 then
		nNeedTime = 30 - nTimeStemp
	elseif nDataTime == 2 then
		nNeedTime = 60 - nTimeStemp
	end
	
	if nNeedTime <= 0 then
		tItem[3307818]["Text117"] = tPirateOnlinePackage_Text[3307818]["Text117"]
		return true
	end
	tItem[3307818]["Text117"] = string.format(tPirateOnlinePackage_Text[3307818]["Text1171"],nNeedTime)
	return true 

end

tItem[3307818]["tOption1-1"] = {111, 112}
tItem[3307818]["Option111"] = tPirateOnlinePackage_Text[3307818]["Option111"]
tItem[3307818]["Option112"] = tPirateOnlinePackage_Text[3307818]["Option112"]
tItem[3307818]["OptionFunc111"] = "PirateOnlinePackage__OpenPackage</N>3307818"


table.insert(tSystem_PlayLogin_Func,PirateOnlinePackage_OnLine)


