------------------------------------------------------------------------------------
--Name：            180427[简体征服][活动脚本]奋斗服片区任务改版--礼包
--Creator:      杨艳
--Created:     2018-04-27
------------------------------------------------------------------------------------

--命名前缀
--StruggleUpPack_

--logid： 12001075

-- 物品id
-- 3308658	新升级礼包 （永久时效）
-- 3308659	新服礼包	（时效60天，每天可开启1次）	达到等级的奖励可一键全部领取 即2转120可以领全部奖励，特转也视为2转120

--stc掩码
-- 17673	记录奋斗成长大礼包
-- 17674	记录征程再起大礼包
-- 17675	记录上线是否获得两个礼包

-------------------------------------------数据部分-----------------------------------------

--基本数据
local tStruggleUpPack_Data = {}

	-- tStruggleUpPack_Data["Emoney"] = 20
	--限制次数
	tStruggleUpPack_Data["LimitNum"] = {}
	tStruggleUpPack_Data["LimitNum"][3308658] = 33
	tStruggleUpPack_Data["NoGiftLimitNum"] = {}
	tStruggleUpPack_Data["NoGiftLimitNum"][3308658] = 36
	
	--globalid :
	tStruggleUpPack_Data["GlobalId"] = 52689 --新奋斗服标识
	
	tStruggleUpPack_Data["GlobalId1"] = 51131 --普通新服标识
	--礼包种类
	tStruggleUpPack_Data[1] = 3308658
	
	--等级
	tStruggleUpPack_Data["Level"] = {}
	tStruggleUpPack_Data["Level"][3308658] = {}
	tStruggleUpPack_Data["Level"][3308658][1] = 10 
	tStruggleUpPack_Data["Level"][3308658][2] = 20 
	tStruggleUpPack_Data["Level"][3308658][3] = 30 
	tStruggleUpPack_Data["Level"][3308658][4] = 40 
	tStruggleUpPack_Data["Level"][3308658][5] = 50 
	tStruggleUpPack_Data["Level"][3308658][6] = 60 
	tStruggleUpPack_Data["Level"][3308658][7] = 70 
	tStruggleUpPack_Data["Level"][3308658][8] = 80 
	tStruggleUpPack_Data["Level"][3308658][9] = 90 
	tStruggleUpPack_Data["Level"][3308658][10] = 100
	tStruggleUpPack_Data["Level"][3308658][11] = 110
	tStruggleUpPack_Data["Level"][3308658][12] = 120
	
	tStruggleUpPack_Data["Level"][3308658][13] = 20 
	tStruggleUpPack_Data["Level"][3308658][14] = 30 
	tStruggleUpPack_Data["Level"][3308658][15] = 40 
	tStruggleUpPack_Data["Level"][3308658][16] = 50 
	tStruggleUpPack_Data["Level"][3308658][17] = 60 
	tStruggleUpPack_Data["Level"][3308658][18] = 70 
	tStruggleUpPack_Data["Level"][3308658][19] = 80 
	tStruggleUpPack_Data["Level"][3308658][20] = 90 
	tStruggleUpPack_Data["Level"][3308658][21] = 100
	tStruggleUpPack_Data["Level"][3308658][22] = 110
	tStruggleUpPack_Data["Level"][3308658][23] = 120

	
	tStruggleUpPack_Data["Level"][3308658][24] = 20 
	tStruggleUpPack_Data["Level"][3308658][25] = 30 
	tStruggleUpPack_Data["Level"][3308658][26] = 40 
	tStruggleUpPack_Data["Level"][3308658][27] = 50 
	tStruggleUpPack_Data["Level"][3308658][28] = 60 
	tStruggleUpPack_Data["Level"][3308658][29] = 70 
	tStruggleUpPack_Data["Level"][3308658][30] = 80 
	tStruggleUpPack_Data["Level"][3308658][31] = 90 
	tStruggleUpPack_Data["Level"][3308658][32] = 100
	tStruggleUpPack_Data["Level"][3308658][33] = 110
	tStruggleUpPack_Data["Level"][3308658][34] = 120
	
	tStruggleUpPack_Data["Level"][3308659] = {}
	tStruggleUpPack_Data["Level"][3308659][1] = 1
	tStruggleUpPack_Data["Level"][3308659][2] = 60
	tStruggleUpPack_Data["Level"][3308659][3] = 100
	                             
	tStruggleUpPack_Data["Level"][3308659][4] = 60
	tStruggleUpPack_Data["Level"][3308659][5] = 120
	                       
	tStruggleUpPack_Data["Level"][3308659][6] = 30
	tStruggleUpPack_Data["Level"][3308659][7] = 60
	tStruggleUpPack_Data["Level"][3308659][8] = 120

	tStruggleUpPack_Data["NoGiftLevel"] = {}
	tStruggleUpPack_Data["NoGiftLevel"][3308658] = {}
	tStruggleUpPack_Data["NoGiftLevel"][3308658][1] = 10 
	tStruggleUpPack_Data["NoGiftLevel"][3308658][2] = 20 
	tStruggleUpPack_Data["NoGiftLevel"][3308658][3] = 30 
	tStruggleUpPack_Data["NoGiftLevel"][3308658][4] = 40 
	tStruggleUpPack_Data["NoGiftLevel"][3308658][5] = 50 
	tStruggleUpPack_Data["NoGiftLevel"][3308658][6] = 60 
	tStruggleUpPack_Data["NoGiftLevel"][3308658][7] = 65 
	tStruggleUpPack_Data["NoGiftLevel"][3308658][8] = 70 
	tStruggleUpPack_Data["NoGiftLevel"][3308658][9] = 75 
	tStruggleUpPack_Data["NoGiftLevel"][3308658][10] = 80 
	tStruggleUpPack_Data["NoGiftLevel"][3308658][11] = 85 
	tStruggleUpPack_Data["NoGiftLevel"][3308658][12] = 90 
	tStruggleUpPack_Data["NoGiftLevel"][3308658][13] = 100
	tStruggleUpPack_Data["NoGiftLevel"][3308658][14] = 110
	tStruggleUpPack_Data["NoGiftLevel"][3308658][15] = 120
	
	tStruggleUpPack_Data["NoGiftLevel"][3308658][16] = 20 
	tStruggleUpPack_Data["NoGiftLevel"][3308658][17] = 30 
	tStruggleUpPack_Data["NoGiftLevel"][3308658][18] = 40 
	tStruggleUpPack_Data["NoGiftLevel"][3308658][19] = 50 
	tStruggleUpPack_Data["NoGiftLevel"][3308658][20] = 60 
	tStruggleUpPack_Data["NoGiftLevel"][3308658][21] = 70 
	tStruggleUpPack_Data["NoGiftLevel"][3308658][22] = 80 
	tStruggleUpPack_Data["NoGiftLevel"][3308658][23] = 90 
	tStruggleUpPack_Data["NoGiftLevel"][3308658][24] = 100
	tStruggleUpPack_Data["NoGiftLevel"][3308658][25] = 110
	tStruggleUpPack_Data["NoGiftLevel"][3308658][26] = 120
	
	tStruggleUpPack_Data["NoGiftLevel"][3308658][27] = 20 
	tStruggleUpPack_Data["NoGiftLevel"][3308658][28] = 30 
	tStruggleUpPack_Data["NoGiftLevel"][3308658][29] = 40 
	tStruggleUpPack_Data["NoGiftLevel"][3308658][30] = 50 
	tStruggleUpPack_Data["NoGiftLevel"][3308658][31] = 60 
	tStruggleUpPack_Data["NoGiftLevel"][3308658][32] = 70 
	tStruggleUpPack_Data["NoGiftLevel"][3308658][33] = 80 
	tStruggleUpPack_Data["NoGiftLevel"][3308658][34] = 90 
	tStruggleUpPack_Data["NoGiftLevel"][3308658][35] = 100
	tStruggleUpPack_Data["NoGiftLevel"][3308658][36] = 110
	tStruggleUpPack_Data["NoGiftLevel"][3308658][37] = 120
	
	
	tStruggleUpPack_Data["Metempsychosis"] = {}
	tStruggleUpPack_Data["Metempsychosis"][3308658] = {}
	tStruggleUpPack_Data["Metempsychosis"][3308658][1] = 0
	tStruggleUpPack_Data["Metempsychosis"][3308658][2] = 0
	tStruggleUpPack_Data["Metempsychosis"][3308658][3] = 0
	tStruggleUpPack_Data["Metempsychosis"][3308658][4] = 0
	tStruggleUpPack_Data["Metempsychosis"][3308658][5] = 0
	tStruggleUpPack_Data["Metempsychosis"][3308658][6] = 0
	tStruggleUpPack_Data["Metempsychosis"][3308658][7] = 0
	tStruggleUpPack_Data["Metempsychosis"][3308658][8] = 0
	tStruggleUpPack_Data["Metempsychosis"][3308658][9] = 0
	tStruggleUpPack_Data["Metempsychosis"][3308658][10] = 0
	tStruggleUpPack_Data["Metempsychosis"][3308658][11] = 0
	tStruggleUpPack_Data["Metempsychosis"][3308658][12] = 0
	                
	tStruggleUpPack_Data["Metempsychosis"][3308658][13] = 1
	tStruggleUpPack_Data["Metempsychosis"][3308658][14] = 1
	tStruggleUpPack_Data["Metempsychosis"][3308658][15] = 1
	tStruggleUpPack_Data["Metempsychosis"][3308658][16] = 1
	tStruggleUpPack_Data["Metempsychosis"][3308658][17] = 1
	tStruggleUpPack_Data["Metempsychosis"][3308658][18] = 1
	tStruggleUpPack_Data["Metempsychosis"][3308658][19] = 1
	tStruggleUpPack_Data["Metempsychosis"][3308658][20] = 1
	tStruggleUpPack_Data["Metempsychosis"][3308658][21] = 1
	tStruggleUpPack_Data["Metempsychosis"][3308658][22] = 1
	tStruggleUpPack_Data["Metempsychosis"][3308658][23] = 1
	                   
	tStruggleUpPack_Data["Metempsychosis"][3308658][24] = 2
	tStruggleUpPack_Data["Metempsychosis"][3308658][25] = 2
	tStruggleUpPack_Data["Metempsychosis"][3308658][26] = 2
	tStruggleUpPack_Data["Metempsychosis"][3308658][27] = 2
	tStruggleUpPack_Data["Metempsychosis"][3308658][28] = 2
	tStruggleUpPack_Data["Metempsychosis"][3308658][29] = 2
	tStruggleUpPack_Data["Metempsychosis"][3308658][30] = 2
	tStruggleUpPack_Data["Metempsychosis"][3308658][31] = 2
	tStruggleUpPack_Data["Metempsychosis"][3308658][32] = 2
	tStruggleUpPack_Data["Metempsychosis"][3308658][33] = 2
	tStruggleUpPack_Data["Metempsychosis"][3308658][34] = 2
	
	tStruggleUpPack_Data["Metempsychosis"][3308659] = {}
	tStruggleUpPack_Data["Metempsychosis"][3308659][1] = 0
	tStruggleUpPack_Data["Metempsychosis"][3308659][2] = 0
	tStruggleUpPack_Data["Metempsychosis"][3308659][3] = 0

	tStruggleUpPack_Data["Metempsychosis"][3308659][4] = 1
	tStruggleUpPack_Data["Metempsychosis"][3308659][5] = 1
                                          
	tStruggleUpPack_Data["Metempsychosis"][3308659][6] = 2
	tStruggleUpPack_Data["Metempsychosis"][3308659][7] = 2
	tStruggleUpPack_Data["Metempsychosis"][3308659][8] = 2
	
	tStruggleUpPack_Data["NoGiftMetempsychosis"] = {}
	tStruggleUpPack_Data["NoGiftMetempsychosis"][3308658] = {}
	tStruggleUpPack_Data["NoGiftMetempsychosis"][3308658][1] = 0
	tStruggleUpPack_Data["NoGiftMetempsychosis"][3308658][2] = 0
	tStruggleUpPack_Data["NoGiftMetempsychosis"][3308658][3] = 0
	tStruggleUpPack_Data["NoGiftMetempsychosis"][3308658][4] = 0
	tStruggleUpPack_Data["NoGiftMetempsychosis"][3308658][5] = 0
	tStruggleUpPack_Data["NoGiftMetempsychosis"][3308658][6] = 0
	tStruggleUpPack_Data["NoGiftMetempsychosis"][3308658][7] = 0
	tStruggleUpPack_Data["NoGiftMetempsychosis"][3308658][8] = 0
	tStruggleUpPack_Data["NoGiftMetempsychosis"][3308658][9] = 0
	tStruggleUpPack_Data["NoGiftMetempsychosis"][3308658][10] = 0
	tStruggleUpPack_Data["NoGiftMetempsychosis"][3308658][11] = 0
	tStruggleUpPack_Data["NoGiftMetempsychosis"][3308658][12] = 0
	tStruggleUpPack_Data["NoGiftMetempsychosis"][3308658][13] = 0
	tStruggleUpPack_Data["NoGiftMetempsychosis"][3308658][14] = 0
	tStruggleUpPack_Data["NoGiftMetempsychosis"][3308658][15] = 0
	                
	tStruggleUpPack_Data["NoGiftMetempsychosis"][3308658][16] = 1
	tStruggleUpPack_Data["NoGiftMetempsychosis"][3308658][17] = 1
	tStruggleUpPack_Data["NoGiftMetempsychosis"][3308658][18] = 1
	tStruggleUpPack_Data["NoGiftMetempsychosis"][3308658][19] = 1
	tStruggleUpPack_Data["NoGiftMetempsychosis"][3308658][20] = 1
	tStruggleUpPack_Data["NoGiftMetempsychosis"][3308658][21] = 1
	tStruggleUpPack_Data["NoGiftMetempsychosis"][3308658][22] = 1
	tStruggleUpPack_Data["NoGiftMetempsychosis"][3308658][23] = 1
	tStruggleUpPack_Data["NoGiftMetempsychosis"][3308658][24] = 1
	tStruggleUpPack_Data["NoGiftMetempsychosis"][3308658][25] = 1
	tStruggleUpPack_Data["NoGiftMetempsychosis"][3308658][26] = 1
	                   
	tStruggleUpPack_Data["NoGiftMetempsychosis"][3308658][27] = 2
	tStruggleUpPack_Data["NoGiftMetempsychosis"][3308658][28] = 2
	tStruggleUpPack_Data["NoGiftMetempsychosis"][3308658][29] = 2
	tStruggleUpPack_Data["NoGiftMetempsychosis"][3308658][30] = 2
	tStruggleUpPack_Data["NoGiftMetempsychosis"][3308658][31] = 2
	tStruggleUpPack_Data["NoGiftMetempsychosis"][3308658][32] = 2
	tStruggleUpPack_Data["NoGiftMetempsychosis"][3308658][33] = 2
	tStruggleUpPack_Data["NoGiftMetempsychosis"][3308658][34] = 2
	tStruggleUpPack_Data["NoGiftMetempsychosis"][3308658][35] = 2
	tStruggleUpPack_Data["NoGiftMetempsychosis"][3308658][36] = 2
	tStruggleUpPack_Data["NoGiftMetempsychosis"][3308658][37] = 2
	
-- 奖励  
local tStruggleUpPack_Award = {}

-- 涅槃灵石包奖励
	tStruggleUpPack_Award[3308815] = {}
	tStruggleUpPack_Award[3308815]["LogId"] = 12001075
	tStruggleUpPack_Award[3308815]["RewardItem"] = {}
	tStruggleUpPack_Award[3308815]["RewardItem"][1] = {}
	tStruggleUpPack_Award[3308815]["RewardItem"][1]["Id"] = 721259
	tStruggleUpPack_Award[3308815]["RewardItem"][1]["Attr"] = "0 1"

-- 新升级礼包		
-- 10	良品鞋子（赠）、1天祝福时间
	tStruggleUpPack_Award[1] = {}
	tStruggleUpPack_Award[1]["LogId"] = 12001075
	tStruggleUpPack_Award[1]["RewardItem"] = {}
	tStruggleUpPack_Award[1]["RewardItem"][1] = {}
	tStruggleUpPack_Award[1]["RewardItem"][1]["Id"] = 160016
	tStruggleUpPack_Award[1]["RewardItem"][1]["Attr"] = "0 1"
	tStruggleUpPack_Award[1]["RewardBless"] = {}
	tStruggleUpPack_Award[1]["RewardBless"]["Value"] = (1*24)  --1天祝福时间
	
-- 20	良品武器（赠）
	--  战士
	tStruggleUpPack_Award[2] = {}
	tStruggleUpPack_Award[2]["LogId"] = 12001075
	tStruggleUpPack_Award[2]["RewardProItem"] = {}
	tStruggleUpPack_Award[2]["RewardProItem"][1] = {}
	tStruggleUpPack_Award[2]["RewardProItem"][1]["Pro"] = {{20,25}}                    
	tStruggleUpPack_Award[2]["RewardProItem"][1]["Item"] = {}
	tStruggleUpPack_Award[2]["RewardProItem"][1]["Item"][1] = {}
	tStruggleUpPack_Award[2]["RewardProItem"][1]["Item"][1]["Id"] = 561036
	tStruggleUpPack_Award[2]["RewardProItem"][1]["Item"][1]["Attr"] = "0 1 3"
	
	--  勇士
	tStruggleUpPack_Award[2]["RewardProItem"][2] = {}
	tStruggleUpPack_Award[2]["RewardProItem"][2]["Pro"] = {{10,15}}                    
	tStruggleUpPack_Award[2]["RewardProItem"][2]["Item"] = {}
	tStruggleUpPack_Award[2]["RewardProItem"][2]["Item"][1] = {}
	tStruggleUpPack_Award[2]["RewardProItem"][2]["Item"][1]["Id"] = 420036
	tStruggleUpPack_Award[2]["RewardProItem"][2]["Item"][1]["Attr"] = "0 1 3"
	
	--  忍者
	tStruggleUpPack_Award[2]["RewardProItem"][3] = {}
	tStruggleUpPack_Award[2]["RewardProItem"][3]["Pro"] = {{50,55}}                    
	tStruggleUpPack_Award[2]["RewardProItem"][3]["Item"] = {}
	tStruggleUpPack_Award[2]["RewardProItem"][3]["Item"][1] = {}
	tStruggleUpPack_Award[2]["RewardProItem"][3]["Item"][1]["Id"] = 601036
	tStruggleUpPack_Award[2]["RewardProItem"][3]["Item"][1]["Attr"] = "0 1 3"
	
	--  武僧
	tStruggleUpPack_Award[2]["RewardProItem"][4] = {}
	tStruggleUpPack_Award[2]["RewardProItem"][4]["Pro"] = {{60,65}}                    
	tStruggleUpPack_Award[2]["RewardProItem"][4]["Item"] = {}
	tStruggleUpPack_Award[2]["RewardProItem"][4]["Item"][1] = {}
	tStruggleUpPack_Award[2]["RewardProItem"][4]["Item"][1]["Id"] = 610036
	tStruggleUpPack_Award[2]["RewardProItem"][4]["Item"][1]["Attr"] = "0 1 3"
	
	--  海盗
	tStruggleUpPack_Award[2]["RewardProItem"][5] = {}
	tStruggleUpPack_Award[2]["RewardProItem"][5]["Pro"] = {{70,75}}                    
	tStruggleUpPack_Award[2]["RewardProItem"][5]["Item"] = {}
	tStruggleUpPack_Award[2]["RewardProItem"][5]["Item"][1] = {}
	tStruggleUpPack_Award[2]["RewardProItem"][5]["Item"][1]["Id"] = 611036
	tStruggleUpPack_Award[2]["RewardProItem"][5]["Item"][1]["Attr"] = "0 1 3"
	
	--  弓手
	tStruggleUpPack_Award[2]["RewardProItem"][6] = {}
	tStruggleUpPack_Award[2]["RewardProItem"][6]["Pro"] = {{40,45}}                    
	tStruggleUpPack_Award[2]["RewardProItem"][6]["Item"] = {}
	tStruggleUpPack_Award[2]["RewardProItem"][6]["Item"][1] = {}
	tStruggleUpPack_Award[2]["RewardProItem"][6]["Item"][1]["Id"] = 613026
	tStruggleUpPack_Award[2]["RewardProItem"][6]["Item"][1]["Attr"] = "0 1 3"
	
	--  道士
	tStruggleUpPack_Award[2]["RewardProItem"][7] = {}
	tStruggleUpPack_Award[2]["RewardProItem"][7]["Pro"] = {{100,145}}                    
	tStruggleUpPack_Award[2]["RewardProItem"][7]["Item"] = {}
	tStruggleUpPack_Award[2]["RewardProItem"][7]["Item"][1] = {}
	tStruggleUpPack_Award[2]["RewardProItem"][7]["Item"][1]["Id"] = 421026
	tStruggleUpPack_Award[2]["RewardProItem"][7]["Item"][1]["Attr"] = "0 1 3"
	
	--  铁扇门（160-165）
	tStruggleUpPack_Award[2]["RewardProItem"][8] = {}
	tStruggleUpPack_Award[2]["RewardProItem"][8]["Pro"] = {{160,165}}                    
	tStruggleUpPack_Award[2]["RewardProItem"][8]["Item"] = {}
	tStruggleUpPack_Award[2]["RewardProItem"][8]["Item"][1] = {}
	tStruggleUpPack_Award[2]["RewardProItem"][8]["Item"][1]["Id"] = 626036
	tStruggleUpPack_Award[2]["RewardProItem"][8]["Item"][1]["Attr"] = "0 1 3"
	
	--  拳师
	tStruggleUpPack_Award[2]["RewardProItem"][9] = {}
	tStruggleUpPack_Award[2]["RewardProItem"][9]["Pro"] = {{80,85}}                    
	tStruggleUpPack_Award[2]["RewardProItem"][9]["Item"] = {}
	tStruggleUpPack_Award[2]["RewardProItem"][9]["Item"][1] = {}
	tStruggleUpPack_Award[2]["RewardProItem"][9]["Item"][1]["Id"] = 617036
	tStruggleUpPack_Award[2]["RewardProItem"][9]["Item"][1]["Attr"] = "0 1 3"
	
	--  雷神（90-95）
	tStruggleUpPack_Award[2]["RewardProItem"][10] = {}
	tStruggleUpPack_Award[2]["RewardProItem"][10]["Pro"] = {{90,95}}                    
	tStruggleUpPack_Award[2]["RewardProItem"][10]["Item"] = {}
	tStruggleUpPack_Award[2]["RewardProItem"][10]["Item"][1] = {}
	tStruggleUpPack_Award[2]["RewardProItem"][10]["Item"][1]["Id"] = 681036
	tStruggleUpPack_Award[2]["RewardProItem"][10]["Item"][1]["Attr"] = "0 1 3"

-- 30	良品马鞭（赠）、骑术秘籍（赠）
	tStruggleUpPack_Award[3] = {}
	tStruggleUpPack_Award[3]["LogId"] = 12001075
	tStruggleUpPack_Award[3]["RewardItem"] = {}
	tStruggleUpPack_Award[3]["RewardItem"][1] = {}
	tStruggleUpPack_Award[3]["RewardItem"][1]["Id"] = 203006
	tStruggleUpPack_Award[3]["RewardItem"][1]["Attr"] = "0 1 3"
	tStruggleUpPack_Award[3]["RewardItem"][2] = {}
	tStruggleUpPack_Award[3]["RewardItem"][2]["Id"] = 728009
	tStruggleUpPack_Award[3]["RewardItem"][2]["Attr"] = "0 1 3"

-- 40	上品衣服
	--  战士
	tStruggleUpPack_Award[4] = {}
	tStruggleUpPack_Award[4]["LogId"] = 12001075
	tStruggleUpPack_Award[4]["RewardProItem"] = {}
	tStruggleUpPack_Award[4]["RewardProItem"][1] = {}
	tStruggleUpPack_Award[4]["RewardProItem"][1]["Pro"] = {{20,25}}                    
	tStruggleUpPack_Award[4]["RewardProItem"][1]["Item"] = {}
	tStruggleUpPack_Award[4]["RewardProItem"][1]["Item"][1] = {}
	tStruggleUpPack_Award[4]["RewardProItem"][1]["Item"][1]["Id"] = 131037
	tStruggleUpPack_Award[4]["RewardProItem"][1]["Item"][1]["Attr"] = "0 1"
	
	--  勇士
	tStruggleUpPack_Award[4]["RewardProItem"][2] = {}
	tStruggleUpPack_Award[4]["RewardProItem"][2]["Pro"] = {{10,15}}                    
	tStruggleUpPack_Award[4]["RewardProItem"][2]["Item"] = {}
	tStruggleUpPack_Award[4]["RewardProItem"][2]["Item"][1] = {}
	tStruggleUpPack_Award[4]["RewardProItem"][2]["Item"][1]["Id"] = 130037
	tStruggleUpPack_Award[4]["RewardProItem"][2]["Item"][1]["Attr"] = "0 1"
	
	--  忍者
	tStruggleUpPack_Award[4]["RewardProItem"][3] = {}
	tStruggleUpPack_Award[4]["RewardProItem"][3]["Pro"] = {{50,55}}                    
	tStruggleUpPack_Award[4]["RewardProItem"][3]["Item"] = {}
	tStruggleUpPack_Award[4]["RewardProItem"][3]["Item"][1] = {}
	tStruggleUpPack_Award[4]["RewardProItem"][3]["Item"][1]["Id"] = 135037
	tStruggleUpPack_Award[4]["RewardProItem"][3]["Item"][1]["Attr"] = "0 1"
	
	--  武僧
	tStruggleUpPack_Award[4]["RewardProItem"][4] = {}
	tStruggleUpPack_Award[4]["RewardProItem"][4]["Pro"] = {{60,65}}                    
	tStruggleUpPack_Award[4]["RewardProItem"][4]["Item"] = {}
	tStruggleUpPack_Award[4]["RewardProItem"][4]["Item"][1] = {}
	tStruggleUpPack_Award[4]["RewardProItem"][4]["Item"][1]["Id"] = 136037
	tStruggleUpPack_Award[4]["RewardProItem"][4]["Item"][1]["Attr"] = "0 1"
	
	--  海盗
	tStruggleUpPack_Award[4]["RewardProItem"][5] = {}
	tStruggleUpPack_Award[4]["RewardProItem"][5]["Pro"] = {{70,75}}                    
	tStruggleUpPack_Award[4]["RewardProItem"][5]["Item"] = {}
	tStruggleUpPack_Award[4]["RewardProItem"][5]["Item"][1] = {}
	tStruggleUpPack_Award[4]["RewardProItem"][5]["Item"][1]["Id"] = 139037
	tStruggleUpPack_Award[4]["RewardProItem"][5]["Item"][1]["Attr"] = "0 1"
	
	--  弓手
	tStruggleUpPack_Award[4]["RewardProItem"][6] = {}
	tStruggleUpPack_Award[4]["RewardProItem"][6]["Pro"] = {{40,45}}                    
	tStruggleUpPack_Award[4]["RewardProItem"][6]["Item"] = {}
	tStruggleUpPack_Award[4]["RewardProItem"][6]["Item"][1] = {}
	tStruggleUpPack_Award[4]["RewardProItem"][6]["Item"][1]["Id"] = 133027
	tStruggleUpPack_Award[4]["RewardProItem"][6]["Item"][1]["Attr"] = "0 1"
	
	--  道士
	tStruggleUpPack_Award[4]["RewardProItem"][7] = {}
	tStruggleUpPack_Award[4]["RewardProItem"][7]["Pro"] = {{100,145}}                    
	tStruggleUpPack_Award[4]["RewardProItem"][7]["Item"] = {}
	tStruggleUpPack_Award[4]["RewardProItem"][7]["Item"][1] = {}
	tStruggleUpPack_Award[4]["RewardProItem"][7]["Item"][1]["Id"] = 134037
	tStruggleUpPack_Award[4]["RewardProItem"][7]["Item"][1]["Attr"] = "0 1"
	
	--  铁扇门（160-165）
	tStruggleUpPack_Award[4]["RewardProItem"][8] = {}
	tStruggleUpPack_Award[4]["RewardProItem"][8]["Pro"] = {{160,165}}                    
	tStruggleUpPack_Award[4]["RewardProItem"][8]["Item"] = {}
	tStruggleUpPack_Award[4]["RewardProItem"][8]["Item"][1] = {}
	tStruggleUpPack_Award[4]["RewardProItem"][8]["Item"][1]["Id"] = 101037
	tStruggleUpPack_Award[4]["RewardProItem"][8]["Item"][1]["Attr"] = "0 1"
	
	--  拳师
	tStruggleUpPack_Award[4]["RewardProItem"][9] = {}
	tStruggleUpPack_Award[4]["RewardProItem"][9]["Pro"] = {{80,85}}                    
	tStruggleUpPack_Award[4]["RewardProItem"][9]["Item"] = {}
	tStruggleUpPack_Award[4]["RewardProItem"][9]["Item"][1] = {}
	tStruggleUpPack_Award[4]["RewardProItem"][9]["Item"][1]["Id"] = 138037
	tStruggleUpPack_Award[4]["RewardProItem"][9]["Item"][1]["Attr"] = "0 1"
	--  雷神
	tStruggleUpPack_Award[4]["RewardProItem"][10] = {}
	tStruggleUpPack_Award[4]["RewardProItem"][10]["Pro"] = {{90,95}}                    
	tStruggleUpPack_Award[4]["RewardProItem"][10]["Item"] = {}
	tStruggleUpPack_Award[4]["RewardProItem"][10]["Item"][1] = {}
	tStruggleUpPack_Award[4]["RewardProItem"][10]["Item"][1]["Id"] = 102037
	tStruggleUpPack_Award[4]["RewardProItem"][10]["Item"][1]["Attr"] = "0 1"
-- 50	上品武器、日常任务引导书
	tStruggleUpPack_Award[5] = {}
	tStruggleUpPack_Award[5]["LogId"] = 12001075
	tStruggleUpPack_Award[5]["RewardItem"] = {}
	tStruggleUpPack_Award[5]["RewardItem"][1] = {}
	tStruggleUpPack_Award[5]["RewardItem"][1]["Id"] = 3001263
	tStruggleUpPack_Award[5]["RewardItem"][1]["Attr"] = "0 1 3"
	
	--  战士
	tStruggleUpPack_Award[5]["RewardProItem"] = {}
	tStruggleUpPack_Award[5]["RewardProItem"][1] = {}
	tStruggleUpPack_Award[5]["RewardProItem"][1]["Pro"] = {{20,25}}                    
	tStruggleUpPack_Award[5]["RewardProItem"][1]["Item"] = {}
	tStruggleUpPack_Award[5]["RewardProItem"][1]["Item"][1] = {}
	tStruggleUpPack_Award[5]["RewardProItem"][1]["Item"][1]["Id"] = 561097
	tStruggleUpPack_Award[5]["RewardProItem"][1]["Item"][1]["Attr"] = "0 1 3"
	
	--  勇士
	tStruggleUpPack_Award[5]["RewardProItem"][2] = {}
	tStruggleUpPack_Award[5]["RewardProItem"][2]["Pro"] = {{10,15}}                    
	tStruggleUpPack_Award[5]["RewardProItem"][2]["Item"] = {}
	tStruggleUpPack_Award[5]["RewardProItem"][2]["Item"][1] = {}
	tStruggleUpPack_Award[5]["RewardProItem"][2]["Item"][1]["Id"] = 420097
	tStruggleUpPack_Award[5]["RewardProItem"][2]["Item"][1]["Attr"] = "0 1 3"
	
	--  忍者
	tStruggleUpPack_Award[5]["RewardProItem"][3] = {}
	tStruggleUpPack_Award[5]["RewardProItem"][3]["Pro"] = {{50,55}}                    
	tStruggleUpPack_Award[5]["RewardProItem"][3]["Item"] = {}
	tStruggleUpPack_Award[5]["RewardProItem"][3]["Item"][1] = {}
	tStruggleUpPack_Award[5]["RewardProItem"][3]["Item"][1]["Id"] = 601097
	tStruggleUpPack_Award[5]["RewardProItem"][3]["Item"][1]["Attr"] = "0 1 3"
	
	--  武僧
	tStruggleUpPack_Award[5]["RewardProItem"][4] = {}
	tStruggleUpPack_Award[5]["RewardProItem"][4]["Pro"] = {{60,65}}                    
	tStruggleUpPack_Award[5]["RewardProItem"][4]["Item"] = {}
	tStruggleUpPack_Award[5]["RewardProItem"][4]["Item"][1] = {}
	tStruggleUpPack_Award[5]["RewardProItem"][4]["Item"][1]["Id"] = 610097
	tStruggleUpPack_Award[5]["RewardProItem"][4]["Item"][1]["Attr"] = "0 1 3"
	
	--  海盗
	tStruggleUpPack_Award[5]["RewardProItem"][5] = {}
	tStruggleUpPack_Award[5]["RewardProItem"][5]["Pro"] = {{70,75}}                    
	tStruggleUpPack_Award[5]["RewardProItem"][5]["Item"] = {}
	tStruggleUpPack_Award[5]["RewardProItem"][5]["Item"][1] = {}
	tStruggleUpPack_Award[5]["RewardProItem"][5]["Item"][1]["Id"] = 611097
	tStruggleUpPack_Award[5]["RewardProItem"][5]["Item"][1]["Attr"] = "0 1 3"
	
	--  弓手
	tStruggleUpPack_Award[5]["RewardProItem"][6] = {}
	tStruggleUpPack_Award[5]["RewardProItem"][6]["Pro"] = {{40,45}}                    
	tStruggleUpPack_Award[5]["RewardProItem"][6]["Item"] = {}
	tStruggleUpPack_Award[5]["RewardProItem"][6]["Item"][1] = {}
	tStruggleUpPack_Award[5]["RewardProItem"][6]["Item"][1]["Id"] = 613087
	tStruggleUpPack_Award[5]["RewardProItem"][6]["Item"][1]["Attr"] = "0 1 3"
	
	--  道士
	tStruggleUpPack_Award[5]["RewardProItem"][7] = {}
	tStruggleUpPack_Award[5]["RewardProItem"][7]["Pro"] = {{100,145}}                    
	tStruggleUpPack_Award[5]["RewardProItem"][7]["Item"] = {}
	tStruggleUpPack_Award[5]["RewardProItem"][7]["Item"][1] = {}
	tStruggleUpPack_Award[5]["RewardProItem"][7]["Item"][1]["Id"] = 421087
	tStruggleUpPack_Award[5]["RewardProItem"][7]["Item"][1]["Attr"] = "0 1 3"
	
	--  铁扇门（160-165）
	tStruggleUpPack_Award[5]["RewardProItem"][8] = {}
	tStruggleUpPack_Award[5]["RewardProItem"][8]["Pro"] = {{160,165}}                    
	tStruggleUpPack_Award[5]["RewardProItem"][8]["Item"] = {}
	tStruggleUpPack_Award[5]["RewardProItem"][8]["Item"][1] = {}
	tStruggleUpPack_Award[5]["RewardProItem"][8]["Item"][1]["Id"] = 626097
	tStruggleUpPack_Award[5]["RewardProItem"][8]["Item"][1]["Attr"] = "0 1 3"
	
	--  拳师
	tStruggleUpPack_Award[5]["RewardProItem"][9] = {}
	tStruggleUpPack_Award[5]["RewardProItem"][9]["Pro"] = {{80,85}}                    
	tStruggleUpPack_Award[5]["RewardProItem"][9]["Item"] = {}
	tStruggleUpPack_Award[5]["RewardProItem"][9]["Item"][1] = {}
	tStruggleUpPack_Award[5]["RewardProItem"][9]["Item"][1]["Id"] =  617097
	tStruggleUpPack_Award[5]["RewardProItem"][9]["Item"][1]["Attr"] = "0 1 3"
	--  雷神
	tStruggleUpPack_Award[5]["RewardProItem"][10] = {}
	tStruggleUpPack_Award[5]["RewardProItem"][10]["Pro"] = {{90,95}}                   
	tStruggleUpPack_Award[5]["RewardProItem"][10]["Item"] = {}
	tStruggleUpPack_Award[5]["RewardProItem"][10]["Item"][1] = {}
	tStruggleUpPack_Award[5]["RewardProItem"][10]["Item"][1]["Id"] =  680097
	tStruggleUpPack_Award[5]["RewardProItem"][10]["Item"][1]["Attr"] = "0 1 3"

-- 60	上品帽子
	tStruggleUpPack_Award[6] = {}
	tStruggleUpPack_Award[6]["LogId"] = 12001075
	--  战士
	tStruggleUpPack_Award[6]["RewardProItem"] = {}
	tStruggleUpPack_Award[6]["RewardProItem"][1] = {}
	tStruggleUpPack_Award[6]["RewardProItem"][1]["Pro"] = {{20,25}}                    
	tStruggleUpPack_Award[6]["RewardProItem"][1]["Item"] = {}
	tStruggleUpPack_Award[6]["RewardProItem"][1]["Item"][1] = {}
	tStruggleUpPack_Award[6]["RewardProItem"][1]["Item"][1]["Id"] = 111057
	tStruggleUpPack_Award[6]["RewardProItem"][1]["Item"][1]["Attr"] = "0 1"
	
	--  勇士
	tStruggleUpPack_Award[6]["RewardProItem"][2] = {}
	tStruggleUpPack_Award[6]["RewardProItem"][2]["Pro"] = {{10,15}}                    
	tStruggleUpPack_Award[6]["RewardProItem"][2]["Item"] = {}
	tStruggleUpPack_Award[6]["RewardProItem"][2]["Item"][1] = {}
	tStruggleUpPack_Award[6]["RewardProItem"][2]["Item"][1]["Id"] = 118057
	tStruggleUpPack_Award[6]["RewardProItem"][2]["Item"][1]["Attr"] = "0 1"
	
	--  忍者
	tStruggleUpPack_Award[6]["RewardProItem"][3] = {}
	tStruggleUpPack_Award[6]["RewardProItem"][3]["Pro"] = {{50,55}}                    
	tStruggleUpPack_Award[6]["RewardProItem"][3]["Item"] = {}
	tStruggleUpPack_Award[6]["RewardProItem"][3]["Item"][1] = {}
	tStruggleUpPack_Award[6]["RewardProItem"][3]["Item"][1]["Id"] = 123057
	tStruggleUpPack_Award[6]["RewardProItem"][3]["Item"][1]["Attr"] = "0 1"
	
	--  武僧
	tStruggleUpPack_Award[6]["RewardProItem"][4] = {}
	tStruggleUpPack_Award[6]["RewardProItem"][4]["Pro"] = {{60,65}}                    
	tStruggleUpPack_Award[6]["RewardProItem"][4]["Item"] = {}
	tStruggleUpPack_Award[6]["RewardProItem"][4]["Item"][1] = {}
	tStruggleUpPack_Award[6]["RewardProItem"][4]["Item"][1]["Id"] = 143057
	tStruggleUpPack_Award[6]["RewardProItem"][4]["Item"][1]["Attr"] = "0 1"
	
	--  海盗
	tStruggleUpPack_Award[6]["RewardProItem"][5] = {}
	tStruggleUpPack_Award[6]["RewardProItem"][5]["Pro"] = {{70,75}}                    
	tStruggleUpPack_Award[6]["RewardProItem"][5]["Item"] = {}
	tStruggleUpPack_Award[6]["RewardProItem"][5]["Item"][1] = {}
	tStruggleUpPack_Award[6]["RewardProItem"][5]["Item"][1]["Id"] = 144057
	tStruggleUpPack_Award[6]["RewardProItem"][5]["Item"][1]["Attr"] = "0 1"
	
	--  弓手
	tStruggleUpPack_Award[6]["RewardProItem"][6] = {}
	tStruggleUpPack_Award[6]["RewardProItem"][6]["Pro"] = {{40,45}}                    
	tStruggleUpPack_Award[6]["RewardProItem"][6]["Item"] = {}
	tStruggleUpPack_Award[6]["RewardProItem"][6]["Item"][1] = {}
	tStruggleUpPack_Award[6]["RewardProItem"][6]["Item"][1]["Id"] =  113027
	tStruggleUpPack_Award[6]["RewardProItem"][6]["Item"][1]["Attr"] = "0 1"
	
	--  道士
	tStruggleUpPack_Award[6]["RewardProItem"][7] = {}
	tStruggleUpPack_Award[6]["RewardProItem"][7]["Pro"] = {{100,145}}                    
	tStruggleUpPack_Award[6]["RewardProItem"][7]["Item"] = {}
	tStruggleUpPack_Award[6]["RewardProItem"][7]["Item"][1] = {}
	tStruggleUpPack_Award[6]["RewardProItem"][7]["Item"][1]["Id"] = 114057
	tStruggleUpPack_Award[6]["RewardProItem"][7]["Item"][1]["Attr"] = "0 1"
	
	--  铁扇门（160-165）
	tStruggleUpPack_Award[6]["RewardProItem"][8] = {}
	tStruggleUpPack_Award[6]["RewardProItem"][8]["Pro"] = {{160,165}}                    
	tStruggleUpPack_Award[6]["RewardProItem"][8]["Item"] = {}
	tStruggleUpPack_Award[6]["RewardProItem"][8]["Item"][1] = {}
	tStruggleUpPack_Award[6]["RewardProItem"][8]["Item"][1]["Id"] = 170057
	tStruggleUpPack_Award[6]["RewardProItem"][8]["Item"][1]["Attr"] = "0 1"
	
	--  拳师
	tStruggleUpPack_Award[6]["RewardProItem"][9] = {}
	tStruggleUpPack_Award[6]["RewardProItem"][9]["Pro"] = {{80,85}}                    
	tStruggleUpPack_Award[6]["RewardProItem"][9]["Item"] = {}
	tStruggleUpPack_Award[6]["RewardProItem"][9]["Item"][1] = {}
	tStruggleUpPack_Award[6]["RewardProItem"][9]["Item"][1]["Id"] = 148057
	tStruggleUpPack_Award[6]["RewardProItem"][9]["Item"][1]["Attr"] = "0 1"
	--    雷神（90-95）
	tStruggleUpPack_Award[6]["RewardProItem"][10] = {}
	tStruggleUpPack_Award[6]["RewardProItem"][10]["Pro"] = {{90,95}}                   
	tStruggleUpPack_Award[6]["RewardProItem"][10]["Item"] = {}
	tStruggleUpPack_Award[6]["RewardProItem"][10]["Item"][1] = {}
	tStruggleUpPack_Award[6]["RewardProItem"][10]["Item"][1]["Id"] = 146057
	tStruggleUpPack_Award[6]["RewardProItem"][10]["Item"][1]["Attr"] = "0 1"
-- 70	炫舞者就职公文（赠）
	tStruggleUpPack_Award[7] = {}
	tStruggleUpPack_Award[7]["LogId"] = 12001075
	tStruggleUpPack_Award[7]["RewardItem"] = {}
	tStruggleUpPack_Award[7]["RewardItem"][1] = {}
	tStruggleUpPack_Award[7]["RewardItem"][1]["Id"] = 711679
	tStruggleUpPack_Award[7]["RewardItem"][1]["Attr"] = "0 1 3"

-- 80	上品鞋子
	tStruggleUpPack_Award[8] = {}
	tStruggleUpPack_Award[8]["LogId"] = 12001075
	tStruggleUpPack_Award[8]["RewardItem"] = {}
	tStruggleUpPack_Award[8]["RewardItem"][1] = {}
	tStruggleUpPack_Award[8]["RewardItem"][1]["Id"] = 160157
	tStruggleUpPack_Award[8]["RewardItem"][1]["Attr"] = "0 1"


-- 90	上品戒指（赠）
	tStruggleUpPack_Award[9] = {}
	tStruggleUpPack_Award[9]["LogId"] = 12001075
	-- tStruggleUpPack_Award[9]["RewardItem"] = {}
	-- tStruggleUpPack_Award[9]["RewardItem"][1] = {}
	-- tStruggleUpPack_Award[9]["RewardItem"][1]["Id"] = 150177
	-- tStruggleUpPack_Award[9]["RewardItem"][1]["Attr"] = "0 1"
	
	tStruggleUpPack_Award[9]["RewardProItem"] = {}
	tStruggleUpPack_Award[9]["RewardProItem"][1] = {}
	tStruggleUpPack_Award[9]["RewardProItem"][1]["Pro"] = {{100,145}}                    
	tStruggleUpPack_Award[9]["RewardProItem"][1]["Item"] = {}
	tStruggleUpPack_Award[9]["RewardProItem"][1]["Item"][1] = {}
	tStruggleUpPack_Award[9]["RewardProItem"][1]["Item"][1]["Id"] = 152167
	tStruggleUpPack_Award[9]["RewardProItem"][1]["Item"][1]["Attr"] = "0 1"

	tStruggleUpPack_Award[9]["RewardProItem"][2] = {}
	tStruggleUpPack_Award[9]["RewardProItem"][2]["Pro"] = {{10,95},{160,165}}                    
	tStruggleUpPack_Award[9]["RewardProItem"][2]["Item"] = {}
	tStruggleUpPack_Award[9]["RewardProItem"][2]["Item"][1] = {}
	tStruggleUpPack_Award[9]["RewardProItem"][2]["Item"][1]["Id"] = 150177
	tStruggleUpPack_Award[9]["RewardProItem"][2]["Item"][1]["Attr"] = "0 1"
	
	

-- 100	上品扇子（赠）、3个法宝挑战令（扇、塔、翅）
	tStruggleUpPack_Award[10] = {}
	tStruggleUpPack_Award[10]["LogId"] = 12001075
	tStruggleUpPack_Award[10]["RewardItem"] = {}
	tStruggleUpPack_Award[10]["RewardItem"][1] = {}
	tStruggleUpPack_Award[10]["RewardItem"][1]["Id"] = 201007
	tStruggleUpPack_Award[10]["RewardItem"][1]["Attr"] = "0 1 3"
	tStruggleUpPack_Award[10]["RewardItem"][2] = {}
	tStruggleUpPack_Award[10]["RewardItem"][2]["Id"] = 3308809 
	tStruggleUpPack_Award[10]["RewardItem"][2]["Attr"] = "0 1"
	tStruggleUpPack_Award[10]["RewardItem"][3] = {}
	tStruggleUpPack_Award[10]["RewardItem"][3]["Id"] = 3308810 
	tStruggleUpPack_Award[10]["RewardItem"][3]["Attr"] = "0 1"
	tStruggleUpPack_Award[10]["RewardItem"][4] = {}
	tStruggleUpPack_Award[10]["RewardItem"][4]["Id"] = 3308811 
	tStruggleUpPack_Award[10]["RewardItem"][4]["Attr"] = "0 1"

-- 110	精品衣服
	tStruggleUpPack_Award[11] = {}
	tStruggleUpPack_Award[11]["LogId"] = 12001075
	--  战士
	tStruggleUpPack_Award[11]["RewardProItem"] = {}
	tStruggleUpPack_Award[11]["RewardProItem"][1] = {}
	tStruggleUpPack_Award[11]["RewardProItem"][1]["Pro"] = {{20,25}}                    
	tStruggleUpPack_Award[11]["RewardProItem"][1]["Item"] = {}
	tStruggleUpPack_Award[11]["RewardProItem"][1]["Item"][1] = {}
	tStruggleUpPack_Award[11]["RewardProItem"][1]["Item"][1]["Id"] = 131098
	tStruggleUpPack_Award[11]["RewardProItem"][1]["Item"][1]["Attr"] = "0 1"
	
	--  勇士
	tStruggleUpPack_Award[11]["RewardProItem"][2] = {}
	tStruggleUpPack_Award[11]["RewardProItem"][2]["Pro"] = {{10,15}}                    
	tStruggleUpPack_Award[11]["RewardProItem"][2]["Item"] = {}
	tStruggleUpPack_Award[11]["RewardProItem"][2]["Item"][1] = {}
	tStruggleUpPack_Award[11]["RewardProItem"][2]["Item"][1]["Id"] = 130098
	tStruggleUpPack_Award[11]["RewardProItem"][2]["Item"][1]["Attr"] = "0 1"
	
	--  忍者
	tStruggleUpPack_Award[11]["RewardProItem"][3] = {}
	tStruggleUpPack_Award[11]["RewardProItem"][3]["Pro"] = {{50,55}}                    
	tStruggleUpPack_Award[11]["RewardProItem"][3]["Item"] = {}
	tStruggleUpPack_Award[11]["RewardProItem"][3]["Item"][1] = {}
	tStruggleUpPack_Award[11]["RewardProItem"][3]["Item"][1]["Id"] = 135098
	tStruggleUpPack_Award[11]["RewardProItem"][3]["Item"][1]["Attr"] = "0 1"
	
	--  武僧
	tStruggleUpPack_Award[11]["RewardProItem"][4] = {}
	tStruggleUpPack_Award[11]["RewardProItem"][4]["Pro"] = {{60,65}}                    
	tStruggleUpPack_Award[11]["RewardProItem"][4]["Item"] = {}
	tStruggleUpPack_Award[11]["RewardProItem"][4]["Item"][1] = {}
	tStruggleUpPack_Award[11]["RewardProItem"][4]["Item"][1]["Id"] = 136098
	tStruggleUpPack_Award[11]["RewardProItem"][4]["Item"][1]["Attr"] = "0 1"
	                      
	--  海盗              
	tStruggleUpPack_Award[11]["RewardProItem"][5] = {}
	tStruggleUpPack_Award[11]["RewardProItem"][5]["Pro"] = {{70,75}}                    
	tStruggleUpPack_Award[11]["RewardProItem"][5]["Item"] = {}
	tStruggleUpPack_Award[11]["RewardProItem"][5]["Item"][1] = {}
	tStruggleUpPack_Award[11]["RewardProItem"][5]["Item"][1]["Id"] = 139098
	tStruggleUpPack_Award[11]["RewardProItem"][5]["Item"][1]["Attr"] = "0 1"
	                      
	--  弓手              
	tStruggleUpPack_Award[11]["RewardProItem"][6] = {}
	tStruggleUpPack_Award[11]["RewardProItem"][6]["Pro"] = {{40,45}}                    
	tStruggleUpPack_Award[11]["RewardProItem"][6]["Item"] = {}
	tStruggleUpPack_Award[11]["RewardProItem"][6]["Item"][1] = {}
	tStruggleUpPack_Award[11]["RewardProItem"][6]["Item"][1]["Id"] =  133088
	tStruggleUpPack_Award[11]["RewardProItem"][6]["Item"][1]["Attr"] = "0 1"
	                      
	--  道士              
	tStruggleUpPack_Award[11]["RewardProItem"][7] = {}
	tStruggleUpPack_Award[11]["RewardProItem"][7]["Pro"] = {{100,145}}                    
	tStruggleUpPack_Award[11]["RewardProItem"][7]["Item"] = {}
	tStruggleUpPack_Award[11]["RewardProItem"][7]["Item"][1] = {}
	tStruggleUpPack_Award[11]["RewardProItem"][7]["Item"][1]["Id"] = 134098
	tStruggleUpPack_Award[11]["RewardProItem"][7]["Item"][1]["Attr"] = "0 1"
	                      
	--  铁扇门（160-165） 
	tStruggleUpPack_Award[11]["RewardProItem"][8] = {}
	tStruggleUpPack_Award[11]["RewardProItem"][8]["Pro"] = {{160,165}}                    
	tStruggleUpPack_Award[11]["RewardProItem"][8]["Item"] = {}
	tStruggleUpPack_Award[11]["RewardProItem"][8]["Item"][1] = {}
	tStruggleUpPack_Award[11]["RewardProItem"][8]["Item"][1]["Id"] = 101098
	tStruggleUpPack_Award[11]["RewardProItem"][8]["Item"][1]["Attr"] = "0 1"
	                      
	--  拳师              
	tStruggleUpPack_Award[11]["RewardProItem"][9] = {}
	tStruggleUpPack_Award[11]["RewardProItem"][9]["Pro"] = {{80,85}}                    
	tStruggleUpPack_Award[11]["RewardProItem"][9]["Item"] = {}
	tStruggleUpPack_Award[11]["RewardProItem"][9]["Item"][1] = {}
	tStruggleUpPack_Award[11]["RewardProItem"][9]["Item"][1]["Id"] = 138098
	tStruggleUpPack_Award[11]["RewardProItem"][9]["Item"][1]["Attr"] = "0 1"
	--  雷神              
	tStruggleUpPack_Award[11]["RewardProItem"][10] = {}
	tStruggleUpPack_Award[11]["RewardProItem"][10]["Pro"] = {{90,95}}                    
	tStruggleUpPack_Award[11]["RewardProItem"][10]["Item"] = {}
	tStruggleUpPack_Award[11]["RewardProItem"][10]["Item"][1] = {}
	tStruggleUpPack_Award[11]["RewardProItem"][10]["Item"][1]["Id"] = 102098
	tStruggleUpPack_Award[11]["RewardProItem"][10]["Item"][1]["Attr"] = "0 1"

-- 120	精品武器（赠）、涅槃灵石礼包（20T开启）7天时效
	tStruggleUpPack_Award[12] = {}
	tStruggleUpPack_Award[12]["LogId"] = 12001075
	tStruggleUpPack_Award[12]["RewardItem"] = {}
	tStruggleUpPack_Award[12]["RewardItem"][1] = {}
	tStruggleUpPack_Award[12]["RewardItem"][1]["Id"] = 3007432
	tStruggleUpPack_Award[12]["RewardItem"][1]["Attr"] = "0 1 0 10080 1"
	
	--  战士
	tStruggleUpPack_Award[12]["RewardProItem"] = {}
	tStruggleUpPack_Award[12]["RewardProItem"][1] = {}
	tStruggleUpPack_Award[12]["RewardProItem"][1]["Pro"] = {{20,25}}                    
	tStruggleUpPack_Award[12]["RewardProItem"][1]["Item"] = {}
	tStruggleUpPack_Award[12]["RewardProItem"][1]["Item"][1] = {}
	tStruggleUpPack_Award[12]["RewardProItem"][1]["Item"][1]["Id"] = 561238
	tStruggleUpPack_Award[12]["RewardProItem"][1]["Item"][1]["Attr"] = "0 1 3"
	
	--  勇士
	tStruggleUpPack_Award[12]["RewardProItem"][2] = {}
	tStruggleUpPack_Award[12]["RewardProItem"][2]["Pro"] = {{10,15}}                    
	tStruggleUpPack_Award[12]["RewardProItem"][2]["Item"] = {}
	tStruggleUpPack_Award[12]["RewardProItem"][2]["Item"][1] = {}
	tStruggleUpPack_Award[12]["RewardProItem"][2]["Item"][1]["Id"] = 420238
	tStruggleUpPack_Award[12]["RewardProItem"][2]["Item"][1]["Attr"] = "0 1 3"
	
	--  忍者
	tStruggleUpPack_Award[12]["RewardProItem"][3] = {}
	tStruggleUpPack_Award[12]["RewardProItem"][3]["Pro"] = {{50,55}}                    
	tStruggleUpPack_Award[12]["RewardProItem"][3]["Item"] = {}
	tStruggleUpPack_Award[12]["RewardProItem"][3]["Item"][1] = {}
	tStruggleUpPack_Award[12]["RewardProItem"][3]["Item"][1]["Id"] = 601238
	tStruggleUpPack_Award[12]["RewardProItem"][3]["Item"][1]["Attr"] = "0 1 3"
	
	--  武僧
	tStruggleUpPack_Award[12]["RewardProItem"][4] = {}
	tStruggleUpPack_Award[12]["RewardProItem"][4]["Pro"] = {{60,65}}                    
	tStruggleUpPack_Award[12]["RewardProItem"][4]["Item"] = {}
	tStruggleUpPack_Award[12]["RewardProItem"][4]["Item"][1] = {}
	tStruggleUpPack_Award[12]["RewardProItem"][4]["Item"][1]["Id"] = 610238
	tStruggleUpPack_Award[12]["RewardProItem"][4]["Item"][1]["Attr"] = "0 1 3"
	
	--  海盗
	tStruggleUpPack_Award[12]["RewardProItem"][5] = {}
	tStruggleUpPack_Award[12]["RewardProItem"][5]["Pro"] = {{70,75}}                    
	tStruggleUpPack_Award[12]["RewardProItem"][5]["Item"] = {}
	tStruggleUpPack_Award[12]["RewardProItem"][5]["Item"][1] = {}
	tStruggleUpPack_Award[12]["RewardProItem"][5]["Item"][1]["Id"] =  611238
	tStruggleUpPack_Award[12]["RewardProItem"][5]["Item"][1]["Attr"] = "0 1 3"
	
	--  弓手
	tStruggleUpPack_Award[12]["RewardProItem"][6] = {}
	tStruggleUpPack_Award[12]["RewardProItem"][6]["Pro"] = {{40,45}}                    
	tStruggleUpPack_Award[12]["RewardProItem"][6]["Item"] = {}
	tStruggleUpPack_Award[12]["RewardProItem"][6]["Item"][1] = {}
	tStruggleUpPack_Award[12]["RewardProItem"][6]["Item"][1]["Id"] = 613228
	tStruggleUpPack_Award[12]["RewardProItem"][6]["Item"][1]["Attr"] = "0 1 3"
	
	--  道士
	tStruggleUpPack_Award[12]["RewardProItem"][7] = {}
	tStruggleUpPack_Award[12]["RewardProItem"][7]["Pro"] = {{100,145}}                    
	tStruggleUpPack_Award[12]["RewardProItem"][7]["Item"] = {}
	tStruggleUpPack_Award[12]["RewardProItem"][7]["Item"][1] = {}
	tStruggleUpPack_Award[12]["RewardProItem"][7]["Item"][1]["Id"] = 421238
	tStruggleUpPack_Award[12]["RewardProItem"][7]["Item"][1]["Attr"] = "0 1 3"
	
	--  铁扇门（160-165）
	tStruggleUpPack_Award[12]["RewardProItem"][8] = {}
	tStruggleUpPack_Award[12]["RewardProItem"][8]["Pro"] = {{160,165}}                    
	tStruggleUpPack_Award[12]["RewardProItem"][8]["Item"] = {}
	tStruggleUpPack_Award[12]["RewardProItem"][8]["Item"][1] = {}
	tStruggleUpPack_Award[12]["RewardProItem"][8]["Item"][1]["Id"] =  626238
	tStruggleUpPack_Award[12]["RewardProItem"][8]["Item"][1]["Attr"] = "0 1 3"
	
	--  拳师
	tStruggleUpPack_Award[12]["RewardProItem"][9] = {}
	tStruggleUpPack_Award[12]["RewardProItem"][9]["Pro"] = {{80,85}}                    
	tStruggleUpPack_Award[12]["RewardProItem"][9]["Item"] = {}
	tStruggleUpPack_Award[12]["RewardProItem"][9]["Item"][1] = {}
	tStruggleUpPack_Award[12]["RewardProItem"][9]["Item"][1]["Id"] =  617238
	tStruggleUpPack_Award[12]["RewardProItem"][9]["Item"][1]["Attr"] = "0 1 3"
	
	--  雷神
	tStruggleUpPack_Award[12]["RewardProItem"][10] = {}
	tStruggleUpPack_Award[12]["RewardProItem"][10]["Pro"] = {{90,95}}                    
	tStruggleUpPack_Award[12]["RewardProItem"][10]["Item"] = {}
	tStruggleUpPack_Award[12]["RewardProItem"][10]["Item"][1] = {}
	tStruggleUpPack_Award[12]["RewardProItem"][10]["Item"][1]["Id"] =  681238
	tStruggleUpPack_Award[12]["RewardProItem"][10]["Item"][1]["Attr"] = "0 1 3"
-- 1转20	上品衣服、1天祝福时间
	tStruggleUpPack_Award[13] = {}
	tStruggleUpPack_Award[13]["LogId"] = 12001075
	
	tStruggleUpPack_Award[13]["RewardBless"] = {}
	tStruggleUpPack_Award[13]["RewardBless"]["Value"] = (1*24)  --1天祝福时间
	
	--  战士
	tStruggleUpPack_Award[13]["RewardProItem"] = {}
	tStruggleUpPack_Award[13]["RewardProItem"][1] = {}
	tStruggleUpPack_Award[13]["RewardProItem"][1]["Pro"] = {{20,25}}                    
	tStruggleUpPack_Award[13]["RewardProItem"][1]["Item"] = {}
	tStruggleUpPack_Award[13]["RewardProItem"][1]["Item"][1] = {}
	tStruggleUpPack_Award[13]["RewardProItem"][1]["Item"][1]["Id"] = 131017
	tStruggleUpPack_Award[13]["RewardProItem"][1]["Item"][1]["Attr"] = "0 1"
	                      
	--  勇士              
	tStruggleUpPack_Award[13]["RewardProItem"][2] = {}
	tStruggleUpPack_Award[13]["RewardProItem"][2]["Pro"] = {{10,15}}                    
	tStruggleUpPack_Award[13]["RewardProItem"][2]["Item"] = {}
	tStruggleUpPack_Award[13]["RewardProItem"][2]["Item"][1] = {}
	tStruggleUpPack_Award[13]["RewardProItem"][2]["Item"][1]["Id"] = 130017
	tStruggleUpPack_Award[13]["RewardProItem"][2]["Item"][1]["Attr"] = "0 1"
	                      
	--  忍者             
	tStruggleUpPack_Award[13]["RewardProItem"][3] = {}
	tStruggleUpPack_Award[13]["RewardProItem"][3]["Pro"] = {{50,55}}                    
	tStruggleUpPack_Award[13]["RewardProItem"][3]["Item"] = {}
	tStruggleUpPack_Award[13]["RewardProItem"][3]["Item"][1] = {}
	tStruggleUpPack_Award[13]["RewardProItem"][3]["Item"][1]["Id"] = 135017
	tStruggleUpPack_Award[13]["RewardProItem"][3]["Item"][1]["Attr"] = "0 1"
	                      
	--  武僧              
	tStruggleUpPack_Award[13]["RewardProItem"][4] = {}
	tStruggleUpPack_Award[13]["RewardProItem"][4]["Pro"] = {{60,65}}                    
	tStruggleUpPack_Award[13]["RewardProItem"][4]["Item"] = {}
	tStruggleUpPack_Award[13]["RewardProItem"][4]["Item"][1] = {}
	tStruggleUpPack_Award[13]["RewardProItem"][4]["Item"][1]["Id"] = 136017
	tStruggleUpPack_Award[13]["RewardProItem"][4]["Item"][1]["Attr"] = "0 1"
	                      
	--  海盗              
	tStruggleUpPack_Award[13]["RewardProItem"][5] = {}
	tStruggleUpPack_Award[13]["RewardProItem"][5]["Pro"] = {{70,75}}                    
	tStruggleUpPack_Award[13]["RewardProItem"][5]["Item"] = {}
	tStruggleUpPack_Award[13]["RewardProItem"][5]["Item"][1] = {}
	tStruggleUpPack_Award[13]["RewardProItem"][5]["Item"][1]["Id"] = 139017
	tStruggleUpPack_Award[13]["RewardProItem"][5]["Item"][1]["Attr"] = "0 1"
	                      
	--  弓手              
	tStruggleUpPack_Award[13]["RewardProItem"][6] = {}
	tStruggleUpPack_Award[13]["RewardProItem"][6]["Pro"] = {{40,45}}                    
	tStruggleUpPack_Award[13]["RewardProItem"][6]["Item"] = {}
	tStruggleUpPack_Award[13]["RewardProItem"][6]["Item"][1] = {}
	tStruggleUpPack_Award[13]["RewardProItem"][6]["Item"][1]["Id"] =  133017
	tStruggleUpPack_Award[13]["RewardProItem"][6]["Item"][1]["Attr"] = "0 1"
	                      
	--  道士              
	tStruggleUpPack_Award[13]["RewardProItem"][7] = {}
	tStruggleUpPack_Award[13]["RewardProItem"][7]["Pro"] = {{100,145}}                    
	tStruggleUpPack_Award[13]["RewardProItem"][7]["Item"] = {}
	tStruggleUpPack_Award[13]["RewardProItem"][7]["Item"][1] = {}
	tStruggleUpPack_Award[13]["RewardProItem"][7]["Item"][1]["Id"] = 134017
	tStruggleUpPack_Award[13]["RewardProItem"][7]["Item"][1]["Attr"] = "0 1"
	                      
	--  铁扇门（160-165） 
	tStruggleUpPack_Award[13]["RewardProItem"][8] = {}
	tStruggleUpPack_Award[13]["RewardProItem"][8]["Pro"] = {{160,165}}                    
	tStruggleUpPack_Award[13]["RewardProItem"][8]["Item"] = {}
	tStruggleUpPack_Award[13]["RewardProItem"][8]["Item"][1] = {}
	tStruggleUpPack_Award[13]["RewardProItem"][8]["Item"][1]["Id"] = 101017
	tStruggleUpPack_Award[13]["RewardProItem"][8]["Item"][1]["Attr"] = "0 1"
	                      
	--  拳师              
	tStruggleUpPack_Award[13]["RewardProItem"][9] = {}
	tStruggleUpPack_Award[13]["RewardProItem"][9]["Pro"] = {{80,85}}                    
	tStruggleUpPack_Award[13]["RewardProItem"][9]["Item"] = {}
	tStruggleUpPack_Award[13]["RewardProItem"][9]["Item"][1] = {}
	tStruggleUpPack_Award[13]["RewardProItem"][9]["Item"][1]["Id"] = 138017
	tStruggleUpPack_Award[13]["RewardProItem"][9]["Item"][1]["Attr"] = "0 1"

	--  雷神              
	tStruggleUpPack_Award[13]["RewardProItem"][10] = {}
	tStruggleUpPack_Award[13]["RewardProItem"][10]["Pro"] = {{90,95}}                    
	tStruggleUpPack_Award[13]["RewardProItem"][10]["Item"] = {}
	tStruggleUpPack_Award[13]["RewardProItem"][10]["Item"][1] = {}
	tStruggleUpPack_Award[13]["RewardProItem"][10]["Item"][1]["Id"] = 102017
	tStruggleUpPack_Award[13]["RewardProItem"][10]["Item"][1]["Attr"] = "0 1"
-- 1转30	上品武器（赠）
	tStruggleUpPack_Award[14] = {}
	tStruggleUpPack_Award[14]["LogId"] = 12001075
	--  战士
	tStruggleUpPack_Award[14]["RewardProItem"] = {}
	tStruggleUpPack_Award[14]["RewardProItem"][1] = {}
	tStruggleUpPack_Award[14]["RewardProItem"][1]["Pro"] = {{20,25}}                    
	tStruggleUpPack_Award[14]["RewardProItem"][1]["Item"] = {}
	tStruggleUpPack_Award[14]["RewardProItem"][1]["Item"][1] = {}
	tStruggleUpPack_Award[14]["RewardProItem"][1]["Item"][1]["Id"] = 561057
	tStruggleUpPack_Award[14]["RewardProItem"][1]["Item"][1]["Attr"] = "0 1 3"
	                      
	--  勇士              
	tStruggleUpPack_Award[14]["RewardProItem"][2] = {}
	tStruggleUpPack_Award[14]["RewardProItem"][2]["Pro"] = {{10,15}}                    
	tStruggleUpPack_Award[14]["RewardProItem"][2]["Item"] = {}
	tStruggleUpPack_Award[14]["RewardProItem"][2]["Item"][1] = {}
	tStruggleUpPack_Award[14]["RewardProItem"][2]["Item"][1]["Id"] = 420057
	tStruggleUpPack_Award[14]["RewardProItem"][2]["Item"][1]["Attr"] = "0 1 3"
	                      
	--  忍者              
	tStruggleUpPack_Award[14]["RewardProItem"][3] = {}
	tStruggleUpPack_Award[14]["RewardProItem"][3]["Pro"] = {{50,55}}                    
	tStruggleUpPack_Award[14]["RewardProItem"][3]["Item"] = {}
	tStruggleUpPack_Award[14]["RewardProItem"][3]["Item"][1] = {}
	tStruggleUpPack_Award[14]["RewardProItem"][3]["Item"][1]["Id"] = 601057
	tStruggleUpPack_Award[14]["RewardProItem"][3]["Item"][1]["Attr"] = "0 1 3"
	                      
	--  武僧              
	tStruggleUpPack_Award[14]["RewardProItem"][4] = {}
	tStruggleUpPack_Award[14]["RewardProItem"][4]["Pro"] = {{60,65}}                    
	tStruggleUpPack_Award[14]["RewardProItem"][4]["Item"] = {}
	tStruggleUpPack_Award[14]["RewardProItem"][4]["Item"][1] = {}
	tStruggleUpPack_Award[14]["RewardProItem"][4]["Item"][1]["Id"] = 610057
	tStruggleUpPack_Award[14]["RewardProItem"][4]["Item"][1]["Attr"] = "0 1 3"
	                      
	--  海盗              
	tStruggleUpPack_Award[14]["RewardProItem"][5] = {}
	tStruggleUpPack_Award[14]["RewardProItem"][5]["Pro"] = {{70,75}}                    
	tStruggleUpPack_Award[14]["RewardProItem"][5]["Item"] = {}
	tStruggleUpPack_Award[14]["RewardProItem"][5]["Item"][1] = {}
	tStruggleUpPack_Award[14]["RewardProItem"][5]["Item"][1]["Id"] =  611057
	tStruggleUpPack_Award[14]["RewardProItem"][5]["Item"][1]["Attr"] = "0 1 3"
	                      
	--  弓手              
	tStruggleUpPack_Award[14]["RewardProItem"][6] = {}
	tStruggleUpPack_Award[14]["RewardProItem"][6]["Pro"] = {{40,45}}                    
	tStruggleUpPack_Award[14]["RewardProItem"][6]["Item"] = {}
	tStruggleUpPack_Award[14]["RewardProItem"][6]["Item"][1] = {}
	tStruggleUpPack_Award[14]["RewardProItem"][6]["Item"][1]["Id"] = 613047
	tStruggleUpPack_Award[14]["RewardProItem"][6]["Item"][1]["Attr"] = "0 1 3"
	                      
	--  道士              
	tStruggleUpPack_Award[14]["RewardProItem"][7] = {}
	tStruggleUpPack_Award[14]["RewardProItem"][7]["Pro"] = {{100,145}}                    
	tStruggleUpPack_Award[14]["RewardProItem"][7]["Item"] = {}
	tStruggleUpPack_Award[14]["RewardProItem"][7]["Item"][1] = {}
	tStruggleUpPack_Award[14]["RewardProItem"][7]["Item"][1]["Id"] = 421047
	tStruggleUpPack_Award[14]["RewardProItem"][7]["Item"][1]["Attr"] = "0 1 3"
	                      
	--  铁扇门（160-165） 
	tStruggleUpPack_Award[14]["RewardProItem"][8] = {}
	tStruggleUpPack_Award[14]["RewardProItem"][8]["Pro"] = {{160,165}}                    
	tStruggleUpPack_Award[14]["RewardProItem"][8]["Item"] = {}
	tStruggleUpPack_Award[14]["RewardProItem"][8]["Item"][1] = {}
	tStruggleUpPack_Award[14]["RewardProItem"][8]["Item"][1]["Id"] = 626057
	tStruggleUpPack_Award[14]["RewardProItem"][8]["Item"][1]["Attr"] = "0 1 3"
	                      
	--  拳师              
	tStruggleUpPack_Award[14]["RewardProItem"][9] = {}
	tStruggleUpPack_Award[14]["RewardProItem"][9]["Pro"] = {{80,85}}                    
	tStruggleUpPack_Award[14]["RewardProItem"][9]["Item"] = {}
	tStruggleUpPack_Award[14]["RewardProItem"][9]["Item"][1] = {}
	tStruggleUpPack_Award[14]["RewardProItem"][9]["Item"][1]["Id"] =  617057
	tStruggleUpPack_Award[14]["RewardProItem"][9]["Item"][1]["Attr"] = "0 1 3"
	--  雷神              
	tStruggleUpPack_Award[14]["RewardProItem"][10] = {}
	tStruggleUpPack_Award[14]["RewardProItem"][10]["Pro"] = {{90,95}}                    
	tStruggleUpPack_Award[14]["RewardProItem"][10]["Item"] = {}
	tStruggleUpPack_Award[14]["RewardProItem"][10]["Item"][1] = {}
	tStruggleUpPack_Award[14]["RewardProItem"][10]["Item"][1]["Id"] = 681057
	tStruggleUpPack_Award[14]["RewardProItem"][10]["Item"][1]["Attr"] = "0 1 3"
-- 1转40	上品帽子、3个赤炼石+1（赠）  
	tStruggleUpPack_Award[15] = {}
	tStruggleUpPack_Award[15]["LogId"] = 12001075
	tStruggleUpPack_Award[15]["RewardItem"] = {}
	tStruggleUpPack_Award[15]["RewardItem"][1] = {}
	tStruggleUpPack_Award[15]["RewardItem"][1]["Id"] = 730001
	tStruggleUpPack_Award[15]["RewardItem"][1]["Attr"] = "0 3 3 10080 1"

	--  战士
	tStruggleUpPack_Award[15]["RewardProItem"] = {}
	tStruggleUpPack_Award[15]["RewardProItem"][1] = {}
	tStruggleUpPack_Award[15]["RewardProItem"][1]["Pro"] = {{20,25}}                    
	tStruggleUpPack_Award[15]["RewardProItem"][1]["Item"] = {}
	tStruggleUpPack_Award[15]["RewardProItem"][1]["Item"][1] = {}
	tStruggleUpPack_Award[15]["RewardProItem"][1]["Item"][1]["Id"] = 111037
	tStruggleUpPack_Award[15]["RewardProItem"][1]["Item"][1]["Attr"] = "0 1"
	                      
	--  勇士              
	tStruggleUpPack_Award[15]["RewardProItem"][2] = {}
	tStruggleUpPack_Award[15]["RewardProItem"][2]["Pro"] = {{10,15}}                    
	tStruggleUpPack_Award[15]["RewardProItem"][2]["Item"] = {}
	tStruggleUpPack_Award[15]["RewardProItem"][2]["Item"][1] = {}
	tStruggleUpPack_Award[15]["RewardProItem"][2]["Item"][1]["Id"] = 118037
	tStruggleUpPack_Award[15]["RewardProItem"][2]["Item"][1]["Attr"] = "0 1"
	                      
	--  忍者              
	tStruggleUpPack_Award[15]["RewardProItem"][3] = {}
	tStruggleUpPack_Award[15]["RewardProItem"][3]["Pro"] = {{50,55}}                    
	tStruggleUpPack_Award[15]["RewardProItem"][3]["Item"] = {}
	tStruggleUpPack_Award[15]["RewardProItem"][3]["Item"][1] = {}
	tStruggleUpPack_Award[15]["RewardProItem"][3]["Item"][1]["Id"] = 123037
	tStruggleUpPack_Award[15]["RewardProItem"][3]["Item"][1]["Attr"] = "0 1"
	                      
	--  武僧              
	tStruggleUpPack_Award[15]["RewardProItem"][4] = {}
	tStruggleUpPack_Award[15]["RewardProItem"][4]["Pro"] = {{60,65}}                    
	tStruggleUpPack_Award[15]["RewardProItem"][4]["Item"] = {}
	tStruggleUpPack_Award[15]["RewardProItem"][4]["Item"][1] = {}
	tStruggleUpPack_Award[15]["RewardProItem"][4]["Item"][1]["Id"] = 143037
	tStruggleUpPack_Award[15]["RewardProItem"][4]["Item"][1]["Attr"] = "0 1"
	                      
	--  海盗              
	tStruggleUpPack_Award[15]["RewardProItem"][5] = {}
	tStruggleUpPack_Award[15]["RewardProItem"][5]["Pro"] = {{70,75}}                    
	tStruggleUpPack_Award[15]["RewardProItem"][5]["Item"] = {}
	tStruggleUpPack_Award[15]["RewardProItem"][5]["Item"][1] = {}
	tStruggleUpPack_Award[15]["RewardProItem"][5]["Item"][1]["Id"] = 144037
	tStruggleUpPack_Award[15]["RewardProItem"][5]["Item"][1]["Attr"] = "0 1"
	                      
	--  弓手              
	tStruggleUpPack_Award[15]["RewardProItem"][6] = {}
	tStruggleUpPack_Award[15]["RewardProItem"][6]["Pro"] = {{40,45}}                    
	tStruggleUpPack_Award[15]["RewardProItem"][6]["Item"] = {}
	tStruggleUpPack_Award[15]["RewardProItem"][6]["Item"][1] = {}
	tStruggleUpPack_Award[15]["RewardProItem"][6]["Item"][1]["Id"] =  113017
	tStruggleUpPack_Award[15]["RewardProItem"][6]["Item"][1]["Attr"] = "0 1"
	                      
	--  道士              
	tStruggleUpPack_Award[15]["RewardProItem"][7] = {}
	tStruggleUpPack_Award[15]["RewardProItem"][7]["Pro"] = {{100,145}}                    
	tStruggleUpPack_Award[15]["RewardProItem"][7]["Item"] = {}
	tStruggleUpPack_Award[15]["RewardProItem"][7]["Item"][1] = {}
	tStruggleUpPack_Award[15]["RewardProItem"][7]["Item"][1]["Id"] = 114037
	tStruggleUpPack_Award[15]["RewardProItem"][7]["Item"][1]["Attr"] = "0 1"
	                      
	--  铁扇门（160-165） 
	tStruggleUpPack_Award[15]["RewardProItem"][8] = {}
	tStruggleUpPack_Award[15]["RewardProItem"][8]["Pro"] = {{160,165}}                    
	tStruggleUpPack_Award[15]["RewardProItem"][8]["Item"] = {}
	tStruggleUpPack_Award[15]["RewardProItem"][8]["Item"][1] = {}
	tStruggleUpPack_Award[15]["RewardProItem"][8]["Item"][1]["Id"] = 170037
	tStruggleUpPack_Award[15]["RewardProItem"][8]["Item"][1]["Attr"] = "0 1"
	                      
	--  拳师              
	tStruggleUpPack_Award[15]["RewardProItem"][9] = {}
	tStruggleUpPack_Award[15]["RewardProItem"][9]["Pro"] = {{80,85}}                    
	tStruggleUpPack_Award[15]["RewardProItem"][9]["Item"] = {}
	tStruggleUpPack_Award[15]["RewardProItem"][9]["Item"][1] = {}
	tStruggleUpPack_Award[15]["RewardProItem"][9]["Item"][1]["Id"] = 148037
	tStruggleUpPack_Award[15]["RewardProItem"][9]["Item"][1]["Attr"] = "0 1"
	--  雷神              
	tStruggleUpPack_Award[15]["RewardProItem"][10] = {}
	tStruggleUpPack_Award[15]["RewardProItem"][10]["Pro"] = {{90,95}}                    
	tStruggleUpPack_Award[15]["RewardProItem"][10]["Item"] = {}
	tStruggleUpPack_Award[15]["RewardProItem"][10]["Item"][1] = {}
	tStruggleUpPack_Award[15]["RewardProItem"][10]["Item"][1]["Id"] = 146037
	tStruggleUpPack_Award[15]["RewardProItem"][10]["Item"][1]["Attr"] = "0 1"
-- 1转50	上品项链
	tStruggleUpPack_Award[16] = {}
	tStruggleUpPack_Award[16]["LogId"] = 12001075
	-- tStruggleUpPack_Award[16]["RewardItem"] = {}
	-- tStruggleUpPack_Award[16]["RewardItem"][1] = {}
	-- tStruggleUpPack_Award[16]["RewardItem"][1]["Id"] = 120097
	-- tStruggleUpPack_Award[16]["RewardItem"][1]["Attr"] = "0 1"
	
	tStruggleUpPack_Award[16]["RewardProItem"] = {}
	tStruggleUpPack_Award[16]["RewardProItem"][1] = {}
	tStruggleUpPack_Award[16]["RewardProItem"][1]["Pro"] = {{100,145}}                    
	tStruggleUpPack_Award[16]["RewardProItem"][1]["Item"] = {}
	tStruggleUpPack_Award[16]["RewardProItem"][1]["Item"][1] = {}
	tStruggleUpPack_Award[16]["RewardProItem"][1]["Item"][1]["Id"] = 121087
	tStruggleUpPack_Award[16]["RewardProItem"][1]["Item"][1]["Attr"] = "0 1"
                          
	tStruggleUpPack_Award[16]["RewardProItem"][2] = {}
	tStruggleUpPack_Award[16]["RewardProItem"][2]["Pro"] = {{10,95},{160,165}}                    
	tStruggleUpPack_Award[16]["RewardProItem"][2]["Item"] = {}
	tStruggleUpPack_Award[16]["RewardProItem"][2]["Item"][1] = {}
	tStruggleUpPack_Award[16]["RewardProItem"][2]["Item"][1]["Id"] = 120097
	tStruggleUpPack_Award[16]["RewardProItem"][2]["Item"][1]["Attr"] = "0 1"
	

-- 1转60	上品武器（赠）、1个赤炼石+2（赠）
	tStruggleUpPack_Award[17] = {}
	tStruggleUpPack_Award[17]["LogId"] = 12001075
	tStruggleUpPack_Award[17]["RewardItem"] = {}
	tStruggleUpPack_Award[17]["RewardItem"][1] = {}
	tStruggleUpPack_Award[17]["RewardItem"][1]["Id"] = 730002
	tStruggleUpPack_Award[17]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
 
 	--  战士
	tStruggleUpPack_Award[17]["RewardProItem"] = {}
	tStruggleUpPack_Award[17]["RewardProItem"][1] = {}
	tStruggleUpPack_Award[17]["RewardProItem"][1]["Pro"] = {{20,25}}                    
	tStruggleUpPack_Award[17]["RewardProItem"][1]["Item"] = {}
	tStruggleUpPack_Award[17]["RewardProItem"][1]["Item"][1] = {}
	tStruggleUpPack_Award[17]["RewardProItem"][1]["Item"][1]["Id"] = 561117
	tStruggleUpPack_Award[17]["RewardProItem"][1]["Item"][1]["Attr"] = "0 1 3"
	                      
	--  勇士              17
	tStruggleUpPack_Award[17]["RewardProItem"][2] = {}
	tStruggleUpPack_Award[17]["RewardProItem"][2]["Pro"] = {{10,15}}                    
	tStruggleUpPack_Award[17]["RewardProItem"][2]["Item"] = {}
	tStruggleUpPack_Award[17]["RewardProItem"][2]["Item"][1] = {}
	tStruggleUpPack_Award[17]["RewardProItem"][2]["Item"][1]["Id"] = 420117
	tStruggleUpPack_Award[17]["RewardProItem"][2]["Item"][1]["Attr"] = "0 1 3"
	                      
	--  忍者              17
	tStruggleUpPack_Award[17]["RewardProItem"][3] = {}
	tStruggleUpPack_Award[17]["RewardProItem"][3]["Pro"] = {{50,55}}                    
	tStruggleUpPack_Award[17]["RewardProItem"][3]["Item"] = {}
	tStruggleUpPack_Award[17]["RewardProItem"][3]["Item"][1] = {}
	tStruggleUpPack_Award[17]["RewardProItem"][3]["Item"][1]["Id"] =  601117
	tStruggleUpPack_Award[17]["RewardProItem"][3]["Item"][1]["Attr"] = "0 1 3"
	                      
	--  武僧              17
	tStruggleUpPack_Award[17]["RewardProItem"][4] = {}
	tStruggleUpPack_Award[17]["RewardProItem"][4]["Pro"] = {{60,65}}                    
	tStruggleUpPack_Award[17]["RewardProItem"][4]["Item"] = {}
	tStruggleUpPack_Award[17]["RewardProItem"][4]["Item"][1] = {}
	tStruggleUpPack_Award[17]["RewardProItem"][4]["Item"][1]["Id"] = 610117
	tStruggleUpPack_Award[17]["RewardProItem"][4]["Item"][1]["Attr"] = "0 1 3"
	                      
	--  海盗              17
	tStruggleUpPack_Award[17]["RewardProItem"][5] = {}
	tStruggleUpPack_Award[17]["RewardProItem"][5]["Pro"] = {{70,75}}                    
	tStruggleUpPack_Award[17]["RewardProItem"][5]["Item"] = {}
	tStruggleUpPack_Award[17]["RewardProItem"][5]["Item"][1] = {}
	tStruggleUpPack_Award[17]["RewardProItem"][5]["Item"][1]["Id"] =  611117
	tStruggleUpPack_Award[17]["RewardProItem"][5]["Item"][1]["Attr"] = "0 1 3"
	                      
	--  弓手              17
	tStruggleUpPack_Award[17]["RewardProItem"][6] = {}
	tStruggleUpPack_Award[17]["RewardProItem"][6]["Pro"] = {{40,45}}                    
	tStruggleUpPack_Award[17]["RewardProItem"][6]["Item"] = {}
	tStruggleUpPack_Award[17]["RewardProItem"][6]["Item"][1] = {}
	tStruggleUpPack_Award[17]["RewardProItem"][6]["Item"][1]["Id"] = 613107
	tStruggleUpPack_Award[17]["RewardProItem"][6]["Item"][1]["Attr"] = "0 1 3"
	                      
	--  道士              17
	tStruggleUpPack_Award[17]["RewardProItem"][7] = {}
	tStruggleUpPack_Award[17]["RewardProItem"][7]["Pro"] = {{100,145}}                    
	tStruggleUpPack_Award[17]["RewardProItem"][7]["Item"] = {}
	tStruggleUpPack_Award[17]["RewardProItem"][7]["Item"][1] = {}
	tStruggleUpPack_Award[17]["RewardProItem"][7]["Item"][1]["Id"] = 421107
	tStruggleUpPack_Award[17]["RewardProItem"][7]["Item"][1]["Attr"] = "0 1 3"
	                      
	--  铁扇门（160-165） 17
	tStruggleUpPack_Award[17]["RewardProItem"][8] = {}
	tStruggleUpPack_Award[17]["RewardProItem"][8]["Pro"] = {{160,165}}                    
	tStruggleUpPack_Award[17]["RewardProItem"][8]["Item"] = {}
	tStruggleUpPack_Award[17]["RewardProItem"][8]["Item"][1] = {}
	tStruggleUpPack_Award[17]["RewardProItem"][8]["Item"][1]["Id"] =  626117
	tStruggleUpPack_Award[17]["RewardProItem"][8]["Item"][1]["Attr"] = "0 1 3"
	                      
	--  拳师              17
	tStruggleUpPack_Award[17]["RewardProItem"][9] = {}
	tStruggleUpPack_Award[17]["RewardProItem"][9]["Pro"] = {{80,85}}                    
	tStruggleUpPack_Award[17]["RewardProItem"][9]["Item"] = {}
	tStruggleUpPack_Award[17]["RewardProItem"][9]["Item"][1] = {}
	tStruggleUpPack_Award[17]["RewardProItem"][9]["Item"][1]["Id"] =   617117
	tStruggleUpPack_Award[17]["RewardProItem"][9]["Item"][1]["Attr"] = "0 1 3"
	--  雷神              
	tStruggleUpPack_Award[17]["RewardProItem"][10] = {}
	tStruggleUpPack_Award[17]["RewardProItem"][10]["Pro"] = {{90,95}}                    
	tStruggleUpPack_Award[17]["RewardProItem"][10]["Item"] = {}
	tStruggleUpPack_Award[17]["RewardProItem"][10]["Item"][1] = {}
	tStruggleUpPack_Award[17]["RewardProItem"][10]["Item"][1]["Id"] = 680117
	tStruggleUpPack_Award[17]["RewardProItem"][10]["Item"][1]["Attr"] = "0 1 3"

-- 1转70	1个流星卷（赠）
	tStruggleUpPack_Award[18] = {}
	tStruggleUpPack_Award[18]["LogId"] = 12001075
	tStruggleUpPack_Award[18]["RewardItem"] = {}
	tStruggleUpPack_Award[18]["RewardItem"][1] = {}
	tStruggleUpPack_Award[18]["RewardItem"][1]["Id"] = 3001269
	tStruggleUpPack_Award[18]["RewardItem"][1]["Attr"] = "0 1 3"

-- 1转80	精品衣服（赠）、2个赤练石+2（赠）
	tStruggleUpPack_Award[19] = {}
	tStruggleUpPack_Award[19]["LogId"] = 12001075
	tStruggleUpPack_Award[19]["RewardItem"] = {}
	tStruggleUpPack_Award[19]["RewardItem"][1] = {}
	tStruggleUpPack_Award[19]["RewardItem"][1]["Id"] = 730002
	tStruggleUpPack_Award[19]["RewardItem"][1]["Attr"] = "0 2 3 10080 1"
	     
	--  战士
	tStruggleUpPack_Award[19]["RewardProItem"] = {}
	tStruggleUpPack_Award[19]["RewardProItem"][1] = {}
	tStruggleUpPack_Award[19]["RewardProItem"][1]["Pro"] = {{20,25}}                    
	tStruggleUpPack_Award[19]["RewardProItem"][1]["Item"] = {}
	tStruggleUpPack_Award[19]["RewardProItem"][1]["Item"][1] = {}
	tStruggleUpPack_Award[19]["RewardProItem"][1]["Item"][1]["Id"] = 131078
	tStruggleUpPack_Award[19]["RewardProItem"][1]["Item"][1]["Attr"] = "0 1"
	                      
	--  勇士              19
	tStruggleUpPack_Award[19]["RewardProItem"][2] = {}
	tStruggleUpPack_Award[19]["RewardProItem"][2]["Pro"] = {{10,15}}                    
	tStruggleUpPack_Award[19]["RewardProItem"][2]["Item"] = {}
	tStruggleUpPack_Award[19]["RewardProItem"][2]["Item"][1] = {}
	tStruggleUpPack_Award[19]["RewardProItem"][2]["Item"][1]["Id"] = 130078
	tStruggleUpPack_Award[19]["RewardProItem"][2]["Item"][1]["Attr"] = "0 1"
	                      
	--  忍者              19
	tStruggleUpPack_Award[19]["RewardProItem"][3] = {}
	tStruggleUpPack_Award[19]["RewardProItem"][3]["Pro"] = {{50,55}}                    
	tStruggleUpPack_Award[19]["RewardProItem"][3]["Item"] = {}
	tStruggleUpPack_Award[19]["RewardProItem"][3]["Item"][1] = {}
	tStruggleUpPack_Award[19]["RewardProItem"][3]["Item"][1]["Id"] = 135078
	tStruggleUpPack_Award[19]["RewardProItem"][3]["Item"][1]["Attr"] = "0 1"
	                      
	--  武僧              19
	tStruggleUpPack_Award[19]["RewardProItem"][4] = {}
	tStruggleUpPack_Award[19]["RewardProItem"][4]["Pro"] = {{60,65}}                    
	tStruggleUpPack_Award[19]["RewardProItem"][4]["Item"] = {}
	tStruggleUpPack_Award[19]["RewardProItem"][4]["Item"][1] = {}
	tStruggleUpPack_Award[19]["RewardProItem"][4]["Item"][1]["Id"] = 136078
	tStruggleUpPack_Award[19]["RewardProItem"][4]["Item"][1]["Attr"] = "0 1"
	                      
	--  海盗              19
	tStruggleUpPack_Award[19]["RewardProItem"][5] = {}
	tStruggleUpPack_Award[19]["RewardProItem"][5]["Pro"] = {{70,75}}                    
	tStruggleUpPack_Award[19]["RewardProItem"][5]["Item"] = {}
	tStruggleUpPack_Award[19]["RewardProItem"][5]["Item"][1] = {}
	tStruggleUpPack_Award[19]["RewardProItem"][5]["Item"][1]["Id"] = 139078
	tStruggleUpPack_Award[19]["RewardProItem"][5]["Item"][1]["Attr"] = "0 1"
	                      
	--  弓手              19
	tStruggleUpPack_Award[19]["RewardProItem"][6] = {}
	tStruggleUpPack_Award[19]["RewardProItem"][6]["Pro"] = {{40,45}}                    
	tStruggleUpPack_Award[19]["RewardProItem"][6]["Item"] = {}
	tStruggleUpPack_Award[19]["RewardProItem"][6]["Item"][1] = {}
	tStruggleUpPack_Award[19]["RewardProItem"][6]["Item"][1]["Id"] = 133058
	tStruggleUpPack_Award[19]["RewardProItem"][6]["Item"][1]["Attr"] = "0 1"
	                      
	--  道士              19
	tStruggleUpPack_Award[19]["RewardProItem"][7] = {}
	tStruggleUpPack_Award[19]["RewardProItem"][7]["Pro"] = {{100,145}}                    
	tStruggleUpPack_Award[19]["RewardProItem"][7]["Item"] = {}
	tStruggleUpPack_Award[19]["RewardProItem"][7]["Item"][1] = {}
	tStruggleUpPack_Award[19]["RewardProItem"][7]["Item"][1]["Id"] = 134078
	tStruggleUpPack_Award[19]["RewardProItem"][7]["Item"][1]["Attr"] = "0 1"
	                      
	--  铁扇门（160-165） 19
	tStruggleUpPack_Award[19]["RewardProItem"][8] = {}
	tStruggleUpPack_Award[19]["RewardProItem"][8]["Pro"] = {{160,165}}                    
	tStruggleUpPack_Award[19]["RewardProItem"][8]["Item"] = {}
	tStruggleUpPack_Award[19]["RewardProItem"][8]["Item"][1] = {}
	tStruggleUpPack_Award[19]["RewardProItem"][8]["Item"][1]["Id"] = 101078
	tStruggleUpPack_Award[19]["RewardProItem"][8]["Item"][1]["Attr"] = "0 1"
	                      
	--  拳师              19
	tStruggleUpPack_Award[19]["RewardProItem"][9] = {}
	tStruggleUpPack_Award[19]["RewardProItem"][9]["Pro"] = {{80,85}}                    
	tStruggleUpPack_Award[19]["RewardProItem"][9]["Item"] = {}
	tStruggleUpPack_Award[19]["RewardProItem"][9]["Item"][1] = {}
	tStruggleUpPack_Award[19]["RewardProItem"][9]["Item"][1]["Id"] = 138078
	tStruggleUpPack_Award[19]["RewardProItem"][9]["Item"][1]["Attr"] = "0 1"
	--  雷神              
	tStruggleUpPack_Award[19]["RewardProItem"][10] = {}
	tStruggleUpPack_Award[19]["RewardProItem"][10]["Pro"] = {{90,95}}                    
	tStruggleUpPack_Award[19]["RewardProItem"][10]["Item"] = {}
	tStruggleUpPack_Award[19]["RewardProItem"][10]["Item"][1] = {}
	tStruggleUpPack_Award[19]["RewardProItem"][10]["Item"][1]["Id"] = 102078
	tStruggleUpPack_Award[19]["RewardProItem"][10]["Item"][1]["Attr"] = "0 1"
-- 1转90	2个流星卷（赠）
	tStruggleUpPack_Award[20] = {}
	tStruggleUpPack_Award[20]["LogId"] = 12001075
	tStruggleUpPack_Award[20]["RewardItem"] = {}
	tStruggleUpPack_Award[20]["RewardItem"][1] = {}
	tStruggleUpPack_Award[20]["RewardItem"][1]["Id"] = 3001269
	tStruggleUpPack_Award[20]["RewardItem"][1]["Attr"] = "0 2 3"
	
-- 1转100	精品鞋子、1个赤练石+3（赠）
	tStruggleUpPack_Award[21] = {}
	tStruggleUpPack_Award[21]["LogId"] = 12001075
	tStruggleUpPack_Award[21]["RewardItem"] = {}
	tStruggleUpPack_Award[21]["RewardItem"][1] = {}
	tStruggleUpPack_Award[21]["RewardItem"][1]["Id"] = 160198
	tStruggleUpPack_Award[21]["RewardItem"][1]["Attr"] = "0 1"
	tStruggleUpPack_Award[21]["RewardItem"][2] = {}
	tStruggleUpPack_Award[21]["RewardItem"][2]["Id"] = 730003
	tStruggleUpPack_Award[21]["RewardItem"][2]["Attr"] = "0 1 3 10080 1"

-- 1转110	3个流星卷（赠）
	tStruggleUpPack_Award[22] = {}
	tStruggleUpPack_Award[22]["LogId"] = 12001075
	tStruggleUpPack_Award[22]["RewardItem"] = {}
	tStruggleUpPack_Award[22]["RewardItem"][1] = {}
	tStruggleUpPack_Award[22]["RewardItem"][1]["Id"] = 3001269
	tStruggleUpPack_Award[22]["RewardItem"][1]["Attr"] = "0 3 3"

-- 1转120	1个龙珠（赠）、2个赤炼石+3（赠）
	tStruggleUpPack_Award[23] = {}
	tStruggleUpPack_Award[23]["LogId"] = 12001075
	tStruggleUpPack_Award[23]["RewardItem"] = {}
	tStruggleUpPack_Award[23]["RewardItem"][1] = {}
	tStruggleUpPack_Award[23]["RewardItem"][1]["Id"] = 1088000
	tStruggleUpPack_Award[23]["RewardItem"][1]["Attr"] = "0 1 3"
	tStruggleUpPack_Award[23]["RewardItem"][2] = {}
	tStruggleUpPack_Award[23]["RewardItem"][2]["Id"] = 730003
	tStruggleUpPack_Award[23]["RewardItem"][2]["Attr"] = "0 2 3 10080 1"
	
-- 2转20	精品衣服（赠）+精品衣服淬炼（赠）
	tStruggleUpPack_Award[24] = {}
	tStruggleUpPack_Award[24]["LogId"] = 12001075
	tStruggleUpPack_Award[24]["RewardItem"] = {}
	tStruggleUpPack_Award[24]["RewardItem"][1] = {}
	tStruggleUpPack_Award[24]["RewardItem"][1]["Id"] = 724476
	tStruggleUpPack_Award[24]["RewardItem"][1]["Attr"] = "0 1 3"
	
	--  战士
	tStruggleUpPack_Award[24]["RewardProItem"] = {}
	tStruggleUpPack_Award[24]["RewardProItem"][1] = {}
	tStruggleUpPack_Award[24]["RewardProItem"][1]["Pro"] = {{20,25}}                    
	tStruggleUpPack_Award[24]["RewardProItem"][1]["Item"] = {}
	tStruggleUpPack_Award[24]["RewardProItem"][1]["Item"][1] = {}
	tStruggleUpPack_Award[24]["RewardProItem"][1]["Item"][1]["Id"] = 131018
	tStruggleUpPack_Award[24]["RewardProItem"][1]["Item"][1]["Attr"] = "0 1"
	                      
	--  勇士              24
	tStruggleUpPack_Award[24]["RewardProItem"][2] = {}
	tStruggleUpPack_Award[24]["RewardProItem"][2]["Pro"] = {{10,15}}                    
	tStruggleUpPack_Award[24]["RewardProItem"][2]["Item"] = {}
	tStruggleUpPack_Award[24]["RewardProItem"][2]["Item"][1] = {}
	tStruggleUpPack_Award[24]["RewardProItem"][2]["Item"][1]["Id"] = 130018
	tStruggleUpPack_Award[24]["RewardProItem"][2]["Item"][1]["Attr"] = "0 1"
	                      
	--  忍者              24
	tStruggleUpPack_Award[24]["RewardProItem"][3] = {}
	tStruggleUpPack_Award[24]["RewardProItem"][3]["Pro"] = {{50,55}}                    
	tStruggleUpPack_Award[24]["RewardProItem"][3]["Item"] = {}
	tStruggleUpPack_Award[24]["RewardProItem"][3]["Item"][1] = {}
	tStruggleUpPack_Award[24]["RewardProItem"][3]["Item"][1]["Id"] = 135018
	tStruggleUpPack_Award[24]["RewardProItem"][3]["Item"][1]["Attr"] = "0 1"
	                      
	--  武僧              24
	tStruggleUpPack_Award[24]["RewardProItem"][4] = {}
	tStruggleUpPack_Award[24]["RewardProItem"][4]["Pro"] = {{60,65}}                    
	tStruggleUpPack_Award[24]["RewardProItem"][4]["Item"] = {}
	tStruggleUpPack_Award[24]["RewardProItem"][4]["Item"][1] = {}
	tStruggleUpPack_Award[24]["RewardProItem"][4]["Item"][1]["Id"] = 136018
	tStruggleUpPack_Award[24]["RewardProItem"][4]["Item"][1]["Attr"] = "0 1"
	                      
	--  海盗              24
	tStruggleUpPack_Award[24]["RewardProItem"][5] = {}
	tStruggleUpPack_Award[24]["RewardProItem"][5]["Pro"] = {{70,75}}                    
	tStruggleUpPack_Award[24]["RewardProItem"][5]["Item"] = {}
	tStruggleUpPack_Award[24]["RewardProItem"][5]["Item"][1] = {}
	tStruggleUpPack_Award[24]["RewardProItem"][5]["Item"][1]["Id"] = 139018
	tStruggleUpPack_Award[24]["RewardProItem"][5]["Item"][1]["Attr"] = "0 1"
	                      
	--  弓手              24
	tStruggleUpPack_Award[24]["RewardProItem"][6] = {}
	tStruggleUpPack_Award[24]["RewardProItem"][6]["Pro"] = {{40,45}}                    
	tStruggleUpPack_Award[24]["RewardProItem"][6]["Item"] = {}
	tStruggleUpPack_Award[24]["RewardProItem"][6]["Item"][1] = {}
	tStruggleUpPack_Award[24]["RewardProItem"][6]["Item"][1]["Id"] = 133018
	tStruggleUpPack_Award[24]["RewardProItem"][6]["Item"][1]["Attr"] = "0 1"
	                      
	--  道士              24
	tStruggleUpPack_Award[24]["RewardProItem"][7] = {}
	tStruggleUpPack_Award[24]["RewardProItem"][7]["Pro"] = {{100,145}}                    
	tStruggleUpPack_Award[24]["RewardProItem"][7]["Item"] = {}
	tStruggleUpPack_Award[24]["RewardProItem"][7]["Item"][1] = {}
	tStruggleUpPack_Award[24]["RewardProItem"][7]["Item"][1]["Id"] = 134018
	tStruggleUpPack_Award[24]["RewardProItem"][7]["Item"][1]["Attr"] = "0 1"
	                      
	--  铁扇门（160-165） 24
	tStruggleUpPack_Award[24]["RewardProItem"][8] = {}
	tStruggleUpPack_Award[24]["RewardProItem"][8]["Pro"] = {{160,165}}                    
	tStruggleUpPack_Award[24]["RewardProItem"][8]["Item"] = {}
	tStruggleUpPack_Award[24]["RewardProItem"][8]["Item"][1] = {}
	tStruggleUpPack_Award[24]["RewardProItem"][8]["Item"][1]["Id"] = 101018
	tStruggleUpPack_Award[24]["RewardProItem"][8]["Item"][1]["Attr"] = "0 1"
	                      
	--  拳师              24
	tStruggleUpPack_Award[24]["RewardProItem"][9] = {}
	tStruggleUpPack_Award[24]["RewardProItem"][9]["Pro"] = {{80,85}}                    
	tStruggleUpPack_Award[24]["RewardProItem"][9]["Item"] = {}
	tStruggleUpPack_Award[24]["RewardProItem"][9]["Item"][1] = {}
	tStruggleUpPack_Award[24]["RewardProItem"][9]["Item"][1]["Id"] = 138018
	tStruggleUpPack_Award[24]["RewardProItem"][9]["Item"][1]["Attr"] = "0 1"
	--  雷神              
	tStruggleUpPack_Award[24]["RewardProItem"][10] = {}
	tStruggleUpPack_Award[24]["RewardProItem"][10]["Pro"] = {{90,95}}                    
	tStruggleUpPack_Award[24]["RewardProItem"][10]["Item"] = {}
	tStruggleUpPack_Award[24]["RewardProItem"][10]["Item"][1] = {}
	tStruggleUpPack_Award[24]["RewardProItem"][10]["Item"][1]["Id"] = 102018
	tStruggleUpPack_Award[24]["RewardProItem"][10]["Item"][1]["Attr"] = "0 1"
-- 2转30	精品武器（赠）+精品武器淬炼（赠）
	tStruggleUpPack_Award[25] = {}
	tStruggleUpPack_Award[25]["LogId"] = 12001075
	
	 --  战士
	tStruggleUpPack_Award[25]["RewardProItem"] = {}
	tStruggleUpPack_Award[25]["RewardProItem"][1] = {}
	tStruggleUpPack_Award[25]["RewardProItem"][1]["Pro"] = {{20,25}}                    
	tStruggleUpPack_Award[25]["RewardProItem"][1]["Item"] = {}
	tStruggleUpPack_Award[25]["RewardProItem"][1]["Item"][1] = {}
	tStruggleUpPack_Award[25]["RewardProItem"][1]["Item"][1]["Id"] = 561058
	tStruggleUpPack_Award[25]["RewardProItem"][1]["Item"][1]["Attr"] = "0 1 3"
	tStruggleUpPack_Award[25]["RewardProItem"][1]["Item"][2] = {}
	tStruggleUpPack_Award[25]["RewardProItem"][1]["Item"][2]["Id"] = 721413
	tStruggleUpPack_Award[25]["RewardProItem"][1]["Item"][2]["Attr"] = "0 1 3"  
	  
	--  勇士              25
	tStruggleUpPack_Award[25]["RewardProItem"][2] = {}
	tStruggleUpPack_Award[25]["RewardProItem"][2]["Pro"] = {{10,15}}                    
	tStruggleUpPack_Award[25]["RewardProItem"][2]["Item"] = {}
	tStruggleUpPack_Award[25]["RewardProItem"][2]["Item"][1] = {}
	tStruggleUpPack_Award[25]["RewardProItem"][2]["Item"][1]["Id"] = 420058
	tStruggleUpPack_Award[25]["RewardProItem"][2]["Item"][1]["Attr"] = "0 1 3"
	tStruggleUpPack_Award[25]["RewardProItem"][2]["Item"][2] = {}
	tStruggleUpPack_Award[25]["RewardProItem"][2]["Item"][2]["Id"] = 721408
	tStruggleUpPack_Award[25]["RewardProItem"][2]["Item"][2]["Attr"] = "0 1 3"
	                      
	--  忍者              25
	tStruggleUpPack_Award[25]["RewardProItem"][3] = {}
	tStruggleUpPack_Award[25]["RewardProItem"][3]["Pro"] = {{50,55}}                    
	tStruggleUpPack_Award[25]["RewardProItem"][3]["Item"] = {}
	tStruggleUpPack_Award[25]["RewardProItem"][3]["Item"][1] = {}
	tStruggleUpPack_Award[25]["RewardProItem"][3]["Item"][1]["Id"] =  601058
	tStruggleUpPack_Award[25]["RewardProItem"][3]["Item"][1]["Attr"] = "0 1 3"
	tStruggleUpPack_Award[25]["RewardProItem"][3]["Item"][2] = {}
	tStruggleUpPack_Award[25]["RewardProItem"][3]["Item"][2]["Id"] =  721408
	tStruggleUpPack_Award[25]["RewardProItem"][3]["Item"][2]["Attr"] = "0 1 3"
	                      
	--  武僧              25
	tStruggleUpPack_Award[25]["RewardProItem"][4] = {}
	tStruggleUpPack_Award[25]["RewardProItem"][4]["Pro"] = {{60,65}}                    
	tStruggleUpPack_Award[25]["RewardProItem"][4]["Item"] = {}
	tStruggleUpPack_Award[25]["RewardProItem"][4]["Item"][1] = {}
	tStruggleUpPack_Award[25]["RewardProItem"][4]["Item"][1]["Id"] = 610058
	tStruggleUpPack_Award[25]["RewardProItem"][4]["Item"][1]["Attr"] = "0 1 3"
	tStruggleUpPack_Award[25]["RewardProItem"][4]["Item"][2] = {}
	tStruggleUpPack_Award[25]["RewardProItem"][4]["Item"][2]["Id"] = 721408
	tStruggleUpPack_Award[25]["RewardProItem"][4]["Item"][2]["Attr"] = "0 1 3"
	                      
	--  海盗              25
	tStruggleUpPack_Award[25]["RewardProItem"][5] = {}
	tStruggleUpPack_Award[25]["RewardProItem"][5]["Pro"] = {{70,75}}                    
	tStruggleUpPack_Award[25]["RewardProItem"][5]["Item"] = {}
	tStruggleUpPack_Award[25]["RewardProItem"][5]["Item"][1] = {}
	tStruggleUpPack_Award[25]["RewardProItem"][5]["Item"][1]["Id"] = 611058
	tStruggleUpPack_Award[25]["RewardProItem"][5]["Item"][1]["Attr"] = "0 1 3"
	tStruggleUpPack_Award[25]["RewardProItem"][5]["Item"][2] = {}
	tStruggleUpPack_Award[25]["RewardProItem"][5]["Item"][2]["Id"] = 721408
	tStruggleUpPack_Award[25]["RewardProItem"][5]["Item"][2]["Attr"] = "0 1 3"
	                      
	--  弓手              25
	tStruggleUpPack_Award[25]["RewardProItem"][6] = {}
	tStruggleUpPack_Award[25]["RewardProItem"][6]["Pro"] = {{40,45}}                    
	tStruggleUpPack_Award[25]["RewardProItem"][6]["Item"] = {}
	tStruggleUpPack_Award[25]["RewardProItem"][6]["Item"][1] = {}
	tStruggleUpPack_Award[25]["RewardProItem"][6]["Item"][1]["Id"] = 613048
	tStruggleUpPack_Award[25]["RewardProItem"][6]["Item"][1]["Attr"] = "0 1 3"
	tStruggleUpPack_Award[25]["RewardProItem"][6]["Item"][2] = {}
	tStruggleUpPack_Award[25]["RewardProItem"][6]["Item"][2]["Id"] = 721408
	tStruggleUpPack_Award[25]["RewardProItem"][6]["Item"][2]["Attr"] = "0 1 3"
	                      
	--  道士              25
	tStruggleUpPack_Award[25]["RewardProItem"][7] = {}
	tStruggleUpPack_Award[25]["RewardProItem"][7]["Pro"] = {{100,145}}                    
	tStruggleUpPack_Award[25]["RewardProItem"][7]["Item"] = {}
	tStruggleUpPack_Award[25]["RewardProItem"][7]["Item"][1] = {}
	tStruggleUpPack_Award[25]["RewardProItem"][7]["Item"][1]["Id"] = 421048
	tStruggleUpPack_Award[25]["RewardProItem"][7]["Item"][1]["Attr"] = "0 1 3"
	tStruggleUpPack_Award[25]["RewardProItem"][7]["Item"][2] = {}
	tStruggleUpPack_Award[25]["RewardProItem"][7]["Item"][2]["Id"] = 721423
	tStruggleUpPack_Award[25]["RewardProItem"][7]["Item"][2]["Attr"] = "0 1 3"
	                      
	--  铁扇门（160-165） 25
	tStruggleUpPack_Award[25]["RewardProItem"][8] = {}
	tStruggleUpPack_Award[25]["RewardProItem"][8]["Pro"] = {{160,165}}                    
	tStruggleUpPack_Award[25]["RewardProItem"][8]["Item"] = {}
	tStruggleUpPack_Award[25]["RewardProItem"][8]["Item"][1] = {}
	tStruggleUpPack_Award[25]["RewardProItem"][8]["Item"][1]["Id"] =  626058
	tStruggleUpPack_Award[25]["RewardProItem"][8]["Item"][1]["Attr"] = "0 1 3"
	tStruggleUpPack_Award[25]["RewardProItem"][8]["Item"][2] = {}
	tStruggleUpPack_Award[25]["RewardProItem"][8]["Item"][2]["Id"] =  721408
	tStruggleUpPack_Award[25]["RewardProItem"][8]["Item"][2]["Attr"] = "0 1 3"
	                      
	--  拳师              25
	tStruggleUpPack_Award[25]["RewardProItem"][9] = {}
	tStruggleUpPack_Award[25]["RewardProItem"][9]["Pro"] = {{80,85}}                    
	tStruggleUpPack_Award[25]["RewardProItem"][9]["Item"] = {}
	tStruggleUpPack_Award[25]["RewardProItem"][9]["Item"][1] = {}
	tStruggleUpPack_Award[25]["RewardProItem"][9]["Item"][1]["Id"] =   617058
	tStruggleUpPack_Award[25]["RewardProItem"][9]["Item"][1]["Attr"] = "0 1 3"
	tStruggleUpPack_Award[25]["RewardProItem"][9]["Item"][2] = {}
	tStruggleUpPack_Award[25]["RewardProItem"][9]["Item"][2]["Id"] =   721408
	tStruggleUpPack_Award[25]["RewardProItem"][9]["Item"][2]["Attr"] = "0 1 3"
	--  雷神              
	tStruggleUpPack_Award[25]["RewardProItem"][10] = {}
	tStruggleUpPack_Award[25]["RewardProItem"][10]["Pro"] = {{90,95}}                    
	tStruggleUpPack_Award[25]["RewardProItem"][10]["Item"] = {}
	tStruggleUpPack_Award[25]["RewardProItem"][10]["Item"][1] = {}
	tStruggleUpPack_Award[25]["RewardProItem"][10]["Item"][1]["Id"] =   681058
	tStruggleUpPack_Award[25]["RewardProItem"][10]["Item"][1]["Attr"] = "0 1 3"
	tStruggleUpPack_Award[25]["RewardProItem"][10]["Item"][2] = {}
	tStruggleUpPack_Award[25]["RewardProItem"][10]["Item"][2]["Id"] =   721408
	tStruggleUpPack_Award[25]["RewardProItem"][10]["Item"][2]["Attr"] = "0 1 3"
	
-- 2转40	精品帽子（赠）+精品帽子淬炼（赠）
	tStruggleUpPack_Award[26] = {}
	tStruggleUpPack_Award[26]["LogId"] = 12001075
	tStruggleUpPack_Award[26]["RewardItem"] = {}
	tStruggleUpPack_Award[26]["RewardItem"][1] = {}
	tStruggleUpPack_Award[26]["RewardItem"][1]["Id"] = 724443
	tStruggleUpPack_Award[26]["RewardItem"][1]["Attr"] = "0 1 3"
	
	--  战士
	tStruggleUpPack_Award[26]["RewardProItem"] = {}
	tStruggleUpPack_Award[26]["RewardProItem"][1] = {}
	tStruggleUpPack_Award[26]["RewardProItem"][1]["Pro"] = {{20,25}}                    
	tStruggleUpPack_Award[26]["RewardProItem"][1]["Item"] = {}
	tStruggleUpPack_Award[26]["RewardProItem"][1]["Item"][1] = {}
	tStruggleUpPack_Award[26]["RewardProItem"][1]["Item"][1]["Id"] = 111038
	tStruggleUpPack_Award[26]["RewardProItem"][1]["Item"][1]["Attr"] = "0 1"
	                      
	--  勇士              26
	tStruggleUpPack_Award[26]["RewardProItem"][2] = {}
	tStruggleUpPack_Award[26]["RewardProItem"][2]["Pro"] = {{10,15}}                    
	tStruggleUpPack_Award[26]["RewardProItem"][2]["Item"] = {}
	tStruggleUpPack_Award[26]["RewardProItem"][2]["Item"][1] = {}
	tStruggleUpPack_Award[26]["RewardProItem"][2]["Item"][1]["Id"] = 118038
	tStruggleUpPack_Award[26]["RewardProItem"][2]["Item"][1]["Attr"] = "0 1"
	                      
	--  忍者              26
	tStruggleUpPack_Award[26]["RewardProItem"][3] = {}
	tStruggleUpPack_Award[26]["RewardProItem"][3]["Pro"] = {{50,55}}                    
	tStruggleUpPack_Award[26]["RewardProItem"][3]["Item"] = {}
	tStruggleUpPack_Award[26]["RewardProItem"][3]["Item"][1] = {}
	tStruggleUpPack_Award[26]["RewardProItem"][3]["Item"][1]["Id"] = 123038
	tStruggleUpPack_Award[26]["RewardProItem"][3]["Item"][1]["Attr"] = "0 1"
	                      
	--  武僧              26
	tStruggleUpPack_Award[26]["RewardProItem"][4] = {}
	tStruggleUpPack_Award[26]["RewardProItem"][4]["Pro"] = {{60,65}}                    
	tStruggleUpPack_Award[26]["RewardProItem"][4]["Item"] = {}
	tStruggleUpPack_Award[26]["RewardProItem"][4]["Item"][1] = {}
	tStruggleUpPack_Award[26]["RewardProItem"][4]["Item"][1]["Id"] = 143038
	tStruggleUpPack_Award[26]["RewardProItem"][4]["Item"][1]["Attr"] = "0 1"
	                      
	--  海盗              26
	tStruggleUpPack_Award[26]["RewardProItem"][5] = {}
	tStruggleUpPack_Award[26]["RewardProItem"][5]["Pro"] = {{70,75}}                    
	tStruggleUpPack_Award[26]["RewardProItem"][5]["Item"] = {}
	tStruggleUpPack_Award[26]["RewardProItem"][5]["Item"][1] = {}
	tStruggleUpPack_Award[26]["RewardProItem"][5]["Item"][1]["Id"] = 144038
	tStruggleUpPack_Award[26]["RewardProItem"][5]["Item"][1]["Attr"] = "0 1"
	                      
	--  弓手              26
	tStruggleUpPack_Award[26]["RewardProItem"][6] = {}
	tStruggleUpPack_Award[26]["RewardProItem"][6]["Pro"] = {{40,45}}                    
	tStruggleUpPack_Award[26]["RewardProItem"][6]["Item"] = {}
	tStruggleUpPack_Award[26]["RewardProItem"][6]["Item"][1] = {}
	tStruggleUpPack_Award[26]["RewardProItem"][6]["Item"][1]["Id"] = 113018
	tStruggleUpPack_Award[26]["RewardProItem"][6]["Item"][1]["Attr"] = "0 1"
	                      
	--  道士              26
	tStruggleUpPack_Award[26]["RewardProItem"][7] = {}
	tStruggleUpPack_Award[26]["RewardProItem"][7]["Pro"] = {{100,145}}                    
	tStruggleUpPack_Award[26]["RewardProItem"][7]["Item"] = {}
	tStruggleUpPack_Award[26]["RewardProItem"][7]["Item"][1] = {}
	tStruggleUpPack_Award[26]["RewardProItem"][7]["Item"][1]["Id"] = 114038
	tStruggleUpPack_Award[26]["RewardProItem"][7]["Item"][1]["Attr"] = "0 1"
	                      
	--  铁扇门（160-165） 26
	tStruggleUpPack_Award[26]["RewardProItem"][8] = {}
	tStruggleUpPack_Award[26]["RewardProItem"][8]["Pro"] = {{160,165}}                    
	tStruggleUpPack_Award[26]["RewardProItem"][8]["Item"] = {}
	tStruggleUpPack_Award[26]["RewardProItem"][8]["Item"][1] = {}
	tStruggleUpPack_Award[26]["RewardProItem"][8]["Item"][1]["Id"] = 170038
	tStruggleUpPack_Award[26]["RewardProItem"][8]["Item"][1]["Attr"] = "0 1"
	                      
	--  拳师              26
	tStruggleUpPack_Award[26]["RewardProItem"][9] = {}
	tStruggleUpPack_Award[26]["RewardProItem"][9]["Pro"] = {{80,85}}                    
	tStruggleUpPack_Award[26]["RewardProItem"][9]["Item"] = {}
	tStruggleUpPack_Award[26]["RewardProItem"][9]["Item"][1] = {}
	tStruggleUpPack_Award[26]["RewardProItem"][9]["Item"][1]["Id"] = 148038
	tStruggleUpPack_Award[26]["RewardProItem"][9]["Item"][1]["Attr"] = "0 1"
	--  雷神              26
	tStruggleUpPack_Award[26]["RewardProItem"][10] = {}
	tStruggleUpPack_Award[26]["RewardProItem"][10]["Pro"] = {{90,95}}                    
	tStruggleUpPack_Award[26]["RewardProItem"][10]["Item"] = {}
	tStruggleUpPack_Award[26]["RewardProItem"][10]["Item"][1] = {}
	tStruggleUpPack_Award[26]["RewardProItem"][10]["Item"][1]["Id"] = 146038
	tStruggleUpPack_Award[26]["RewardProItem"][10]["Item"][1]["Attr"] = "0 1"


-- 2转50	精品鞋子+精品鞋子淬炼（赠）
	tStruggleUpPack_Award[27] = {}
	tStruggleUpPack_Award[27]["LogId"] = 12001075
	tStruggleUpPack_Award[27]["RewardItem"] = {}
	tStruggleUpPack_Award[27]["RewardItem"][1] = {}
	tStruggleUpPack_Award[27]["RewardItem"][1]["Id"] = 160098
	tStruggleUpPack_Award[27]["RewardItem"][1]["Attr"] = "0 1"
	tStruggleUpPack_Award[27]["RewardItem"][2] = {}
	tStruggleUpPack_Award[27]["RewardItem"][2]["Id"] = 724438
	tStruggleUpPack_Award[27]["RewardItem"][2]["Attr"] = "0 1 3"

-- 2转60	精品戒指+精品戒指淬炼（赠）
	tStruggleUpPack_Award[28] = {}
	tStruggleUpPack_Award[28]["LogId"] = 12001075
	-- tStruggleUpPack_Award[28]["RewardItem"] = {}
	-- tStruggleUpPack_Award[28]["RewardItem"][1] = {}
	-- tStruggleUpPack_Award[28]["RewardItem"][1]["Id"] = 150118
	-- tStruggleUpPack_Award[28]["RewardItem"][1]["Attr"] = "0 1"
	-- tStruggleUpPack_Award[28]["RewardItem"][2] = {}
	-- tStruggleUpPack_Award[28]["RewardItem"][2]["Id"] = 724471
	-- tStruggleUpPack_Award[28]["RewardItem"][2]["Attr"] = "0 1 3"
	
	tStruggleUpPack_Award[28]["RewardProItem"] = {}
	tStruggleUpPack_Award[28]["RewardProItem"][1] = {}
	tStruggleUpPack_Award[28]["RewardProItem"][1]["Pro"] = {{100,145}}                    
	tStruggleUpPack_Award[28]["RewardProItem"][1]["Item"] = {}
	tStruggleUpPack_Award[28]["RewardProItem"][1]["Item"][1] = {}
	tStruggleUpPack_Award[28]["RewardProItem"][1]["Item"][1]["Id"] = 152108
	tStruggleUpPack_Award[28]["RewardProItem"][1]["Item"][1]["Attr"] = "0 1"
	tStruggleUpPack_Award[28]["RewardProItem"][1]["Item"][2] = {}
	tStruggleUpPack_Award[28]["RewardProItem"][1]["Item"][2]["Id"] = 725205
	tStruggleUpPack_Award[28]["RewardProItem"][1]["Item"][2]["Attr"] = "0 1 3"
                          
	tStruggleUpPack_Award[28]["RewardProItem"][2] = {}
	tStruggleUpPack_Award[28]["RewardProItem"][2]["Pro"] = {{10,95},{160,165}}                    
	tStruggleUpPack_Award[28]["RewardProItem"][2]["Item"] = {}
	tStruggleUpPack_Award[28]["RewardProItem"][2]["Item"][1] = {}
	tStruggleUpPack_Award[28]["RewardProItem"][2]["Item"][1]["Id"] = 150118
	tStruggleUpPack_Award[28]["RewardProItem"][2]["Item"][1]["Attr"] = "0 1"
	tStruggleUpPack_Award[28]["RewardProItem"][2]["Item"][2] = {}
	tStruggleUpPack_Award[28]["RewardProItem"][2]["Item"][2]["Id"] = 724471
	tStruggleUpPack_Award[28]["RewardProItem"][2]["Item"][2]["Attr"] = "0 1 3"
	
	
-- 2转70	精品项链（赠）+精品项链淬炼（赠）
	tStruggleUpPack_Award[29] = {}
	tStruggleUpPack_Award[29]["LogId"] = 12001075
	-- tStruggleUpPack_Award[29]["RewardItem"] = {}
	-- tStruggleUpPack_Award[29]["RewardItem"][1] = {}
	-- tStruggleUpPack_Award[29]["RewardItem"][1]["Id"] = 120128
	-- tStruggleUpPack_Award[29]["RewardItem"][1]["Attr"] = "0 1"
	-- tStruggleUpPack_Award[29]["RewardItem"][2] = {}
	-- tStruggleUpPack_Award[29]["RewardItem"][2]["Id"] = 724481
	-- tStruggleUpPack_Award[29]["RewardItem"][2]["Attr"] = "0 1 3"

	tStruggleUpPack_Award[29]["RewardProItem"] = {}
	tStruggleUpPack_Award[29]["RewardProItem"][1] = {}
	tStruggleUpPack_Award[29]["RewardProItem"][1]["Pro"] = {{100,145}}                    
	tStruggleUpPack_Award[29]["RewardProItem"][1]["Item"] = {}
	tStruggleUpPack_Award[29]["RewardProItem"][1]["Item"][1] = {}
	tStruggleUpPack_Award[29]["RewardProItem"][1]["Item"][1]["Id"] = 121128
	tStruggleUpPack_Award[29]["RewardProItem"][1]["Item"][1]["Attr"] = "0 1"
	tStruggleUpPack_Award[29]["RewardProItem"][1]["Item"][2] = {}
	tStruggleUpPack_Award[29]["RewardProItem"][1]["Item"][2]["Id"] = 724388
	tStruggleUpPack_Award[29]["RewardProItem"][1]["Item"][2]["Attr"] = "0 1 3"
                          
	tStruggleUpPack_Award[29]["RewardProItem"][2] = {}
	tStruggleUpPack_Award[29]["RewardProItem"][2]["Pro"] = {{10,95},{160,165}}                    
	tStruggleUpPack_Award[29]["RewardProItem"][2]["Item"] = {}
	tStruggleUpPack_Award[29]["RewardProItem"][2]["Item"][1] = {}
	tStruggleUpPack_Award[29]["RewardProItem"][2]["Item"][1]["Id"] = 120128
	tStruggleUpPack_Award[29]["RewardProItem"][2]["Item"][1]["Attr"] = "0 1"
	tStruggleUpPack_Award[29]["RewardProItem"][2]["Item"][2] = {}
	tStruggleUpPack_Award[29]["RewardProItem"][2]["Item"][2]["Id"] = 724481
	tStruggleUpPack_Award[29]["RewardProItem"][2]["Item"][2]["Attr"] = "0 1 3"
	
	
	
-- 2转80	通神丹（赠）*30
	tStruggleUpPack_Award[30] = {}
	tStruggleUpPack_Award[30]["LogId"] = 12001075
	tStruggleUpPack_Award[30]["RewardItem"] = {}
	tStruggleUpPack_Award[30]["RewardItem"][1] = {}
	tStruggleUpPack_Award[30]["RewardItem"][1]["Id"] = 3003125
	tStruggleUpPack_Award[30]["RewardItem"][1]["Attr"] = "0 30 3"


-- 2转90	免费强炼丹（赠）*30
	tStruggleUpPack_Award[31] = {}
	tStruggleUpPack_Award[31]["LogId"] = 12001075
	tStruggleUpPack_Award[31]["RewardItem"] = {}
	tStruggleUpPack_Award[31]["RewardItem"][1] = {}
	tStruggleUpPack_Award[31]["RewardItem"][1]["Id"] = 3003124
	tStruggleUpPack_Award[31]["RewardItem"][1]["Attr"] = "0 30 3"


-- 2转100	300天石（赠）
	tStruggleUpPack_Award[32] = {}
	tStruggleUpPack_Award[32]["LogId"] = 12001075
	tStruggleUpPack_Award[32]["RewardItem"] = {}
	tStruggleUpPack_Award[32]["RewardItem"][1] = {}
	tStruggleUpPack_Award[32]["RewardItem"][1]["Id"] = 3006436
	tStruggleUpPack_Award[32]["RewardItem"][1]["Attr"] = "0 1"


-- 2转110	六阳聚神丹（赠）
	tStruggleUpPack_Award[33] = {}
	tStruggleUpPack_Award[33]["LogId"] = 12001075
	tStruggleUpPack_Award[33]["RewardItem"] = {}
	tStruggleUpPack_Award[33]["RewardItem"][1] = {}
	tStruggleUpPack_Award[33]["RewardItem"][1]["Id"] = 3303100
	tStruggleUpPack_Award[33]["RewardItem"][1]["Attr"] = "0 1 3"

	
-- 2转120	全套3阶神魂（赠）
	tStruggleUpPack_Award[34] = {}
	tStruggleUpPack_Award[34]["LogId"] = 12001075
	 --  战士
	tStruggleUpPack_Award[34]["RewardProItem"] = {}
	tStruggleUpPack_Award[34]["RewardProItem"][1] = {}
	tStruggleUpPack_Award[34]["RewardProItem"][1]["Pro"] = {{20,25}}                    
	tStruggleUpPack_Award[34]["RewardProItem"][1]["Item"] = {}
	tStruggleUpPack_Award[34]["RewardProItem"][1]["Item"][1] = {}
	tStruggleUpPack_Award[34]["RewardProItem"][1]["Item"][1]["Id"] = 800230
	tStruggleUpPack_Award[34]["RewardProItem"][1]["Item"][1]["Attr"] = "0 1 3"
	
	tStruggleUpPack_Award[34]["RewardProItem"][1]["Item"][2] = {}
	tStruggleUpPack_Award[34]["RewardProItem"][1]["Item"][2]["Id"] = 820052
	tStruggleUpPack_Award[34]["RewardProItem"][1]["Item"][2]["Attr"] = "0 1 3"
	tStruggleUpPack_Award[34]["RewardProItem"][1]["Item"][3] = {}
	tStruggleUpPack_Award[34]["RewardProItem"][1]["Item"][3]["Id"] = 821027
	tStruggleUpPack_Award[34]["RewardProItem"][1]["Item"][3]["Attr"] = "0 1 3"
	tStruggleUpPack_Award[34]["RewardProItem"][1]["Item"][4] = {}
	tStruggleUpPack_Award[34]["RewardProItem"][1]["Item"][4]["Id"] = 822056
	tStruggleUpPack_Award[34]["RewardProItem"][1]["Item"][4]["Attr"] = "0 1 3"
	tStruggleUpPack_Award[34]["RewardProItem"][1]["Item"][5] = {}
	tStruggleUpPack_Award[34]["RewardProItem"][1]["Item"][5]["Id"] = 823041
	tStruggleUpPack_Award[34]["RewardProItem"][1]["Item"][5]["Attr"] = "0 1 3"
	tStruggleUpPack_Award[34]["RewardProItem"][1]["Item"][6] = {}
	tStruggleUpPack_Award[34]["RewardProItem"][1]["Item"][6]["Id"] = 824016
	tStruggleUpPack_Award[34]["RewardProItem"][1]["Item"][6]["Attr"] = "0 1 3"
	                      
	--  勇士              34
	tStruggleUpPack_Award[34]["RewardProItem"][2] = {}
	tStruggleUpPack_Award[34]["RewardProItem"][2]["Pro"] = {{10,15}}                    
	tStruggleUpPack_Award[34]["RewardProItem"][2]["Item"] = {}
	tStruggleUpPack_Award[34]["RewardProItem"][2]["Item"][1] = {}
	tStruggleUpPack_Award[34]["RewardProItem"][2]["Item"][1]["Id"] = 800050
	tStruggleUpPack_Award[34]["RewardProItem"][2]["Item"][1]["Attr"] = "0 1 3"
		
	tStruggleUpPack_Award[34]["RewardProItem"][2]["Item"][2] = {}
	tStruggleUpPack_Award[34]["RewardProItem"][2]["Item"][2]["Id"] = 820052
	tStruggleUpPack_Award[34]["RewardProItem"][2]["Item"][2]["Attr"] = "0 1 3"
	tStruggleUpPack_Award[34]["RewardProItem"][2]["Item"][3] = {}
	tStruggleUpPack_Award[34]["RewardProItem"][2]["Item"][3]["Id"] = 821027
	tStruggleUpPack_Award[34]["RewardProItem"][2]["Item"][3]["Attr"] = "0 1 3"
	tStruggleUpPack_Award[34]["RewardProItem"][2]["Item"][4] = {}
	tStruggleUpPack_Award[34]["RewardProItem"][2]["Item"][4]["Id"] = 822056
	tStruggleUpPack_Award[34]["RewardProItem"][2]["Item"][4]["Attr"] = "0 1 3"
	tStruggleUpPack_Award[34]["RewardProItem"][2]["Item"][5] = {}
	tStruggleUpPack_Award[34]["RewardProItem"][2]["Item"][5]["Id"] = 823041
	tStruggleUpPack_Award[34]["RewardProItem"][2]["Item"][5]["Attr"] = "0 1 3"
	tStruggleUpPack_Award[34]["RewardProItem"][2]["Item"][6] = {}
	tStruggleUpPack_Award[34]["RewardProItem"][2]["Item"][6]["Id"] = 824016
	tStruggleUpPack_Award[34]["RewardProItem"][2]["Item"][6]["Attr"] = "0 1 3"
	
	--  忍者              34
	tStruggleUpPack_Award[34]["RewardProItem"][3] = {}
	tStruggleUpPack_Award[34]["RewardProItem"][3]["Pro"] = {{50,55}}                    
	tStruggleUpPack_Award[34]["RewardProItem"][3]["Item"] = {}
	tStruggleUpPack_Award[34]["RewardProItem"][3]["Item"][1] = {}
	tStruggleUpPack_Award[34]["RewardProItem"][3]["Item"][1]["Id"] =  800141
	tStruggleUpPack_Award[34]["RewardProItem"][3]["Item"][1]["Attr"] = "0 1 3"         
	tStruggleUpPack_Award[34]["RewardProItem"][3]["Item"][2] = {}
	tStruggleUpPack_Award[34]["RewardProItem"][3]["Item"][2]["Id"] = 820052
	tStruggleUpPack_Award[34]["RewardProItem"][3]["Item"][2]["Attr"] = "0 1 3"
	tStruggleUpPack_Award[34]["RewardProItem"][3]["Item"][3] = {}
	tStruggleUpPack_Award[34]["RewardProItem"][3]["Item"][3]["Id"] = 821027
	tStruggleUpPack_Award[34]["RewardProItem"][3]["Item"][3]["Attr"] = "0 1 3"
	tStruggleUpPack_Award[34]["RewardProItem"][3]["Item"][4] = {}
	tStruggleUpPack_Award[34]["RewardProItem"][3]["Item"][4]["Id"] = 822056
	tStruggleUpPack_Award[34]["RewardProItem"][3]["Item"][4]["Attr"] = "0 1 3"
	tStruggleUpPack_Award[34]["RewardProItem"][3]["Item"][5] = {}
	tStruggleUpPack_Award[34]["RewardProItem"][3]["Item"][5]["Id"] = 823041
	tStruggleUpPack_Award[34]["RewardProItem"][3]["Item"][5]["Attr"] = "0 1 3"
	tStruggleUpPack_Award[34]["RewardProItem"][3]["Item"][6] = {}
	tStruggleUpPack_Award[34]["RewardProItem"][3]["Item"][6]["Id"] = 824016
	tStruggleUpPack_Award[34]["RewardProItem"][3]["Item"][6]["Attr"] = "0 1 3"
	
	--  武僧              34
	tStruggleUpPack_Award[34]["RewardProItem"][4] = {}
	tStruggleUpPack_Award[34]["RewardProItem"][4]["Pro"] = {{60,65}}                    
	tStruggleUpPack_Award[34]["RewardProItem"][4]["Item"] = {}
	tStruggleUpPack_Award[34]["RewardProItem"][4]["Item"][1] = {}
	tStruggleUpPack_Award[34]["RewardProItem"][4]["Item"][1]["Id"] = 800724
	tStruggleUpPack_Award[34]["RewardProItem"][4]["Item"][1]["Attr"] = "0 1 3"
	tStruggleUpPack_Award[34]["RewardProItem"][4]["Item"][2] = {}
	tStruggleUpPack_Award[34]["RewardProItem"][4]["Item"][2]["Id"] = 820052
	tStruggleUpPack_Award[34]["RewardProItem"][4]["Item"][2]["Attr"] = "0 1 3"
	tStruggleUpPack_Award[34]["RewardProItem"][4]["Item"][3] = {}
	tStruggleUpPack_Award[34]["RewardProItem"][4]["Item"][3]["Id"] = 821027
	tStruggleUpPack_Award[34]["RewardProItem"][4]["Item"][3]["Attr"] = "0 1 3"
	tStruggleUpPack_Award[34]["RewardProItem"][4]["Item"][4] = {}
	tStruggleUpPack_Award[34]["RewardProItem"][4]["Item"][4]["Id"] = 822056
	tStruggleUpPack_Award[34]["RewardProItem"][4]["Item"][4]["Attr"] = "0 1 3"
	tStruggleUpPack_Award[34]["RewardProItem"][4]["Item"][5] = {}
	tStruggleUpPack_Award[34]["RewardProItem"][4]["Item"][5]["Id"] = 823041
	tStruggleUpPack_Award[34]["RewardProItem"][4]["Item"][5]["Attr"] = "0 1 3"
	tStruggleUpPack_Award[34]["RewardProItem"][4]["Item"][6] = {}
	tStruggleUpPack_Award[34]["RewardProItem"][4]["Item"][6]["Id"] = 824016
	tStruggleUpPack_Award[34]["RewardProItem"][4]["Item"][6]["Attr"] = "0 1 3"
	                      
	--  海盗              34
	tStruggleUpPack_Award[34]["RewardProItem"][5] = {}
	tStruggleUpPack_Award[34]["RewardProItem"][5]["Pro"] = {{70,75}}                    
	tStruggleUpPack_Award[34]["RewardProItem"][5]["Item"] = {}
	tStruggleUpPack_Award[34]["RewardProItem"][5]["Item"][1] = {}
	tStruggleUpPack_Award[34]["RewardProItem"][5]["Item"][1]["Id"] = 800807
	tStruggleUpPack_Award[34]["RewardProItem"][5]["Item"][1]["Attr"] = "0 1 3"
	tStruggleUpPack_Award[34]["RewardProItem"][5]["Item"][2] = {}
	tStruggleUpPack_Award[34]["RewardProItem"][5]["Item"][2]["Id"] = 820052
	tStruggleUpPack_Award[34]["RewardProItem"][5]["Item"][2]["Attr"] = "0 1 3"
	tStruggleUpPack_Award[34]["RewardProItem"][5]["Item"][3] = {}
	tStruggleUpPack_Award[34]["RewardProItem"][5]["Item"][3]["Id"] = 821027
	tStruggleUpPack_Award[34]["RewardProItem"][5]["Item"][3]["Attr"] = "0 1 3"
	tStruggleUpPack_Award[34]["RewardProItem"][5]["Item"][4] = {}
	tStruggleUpPack_Award[34]["RewardProItem"][5]["Item"][4]["Id"] = 822056
	tStruggleUpPack_Award[34]["RewardProItem"][5]["Item"][4]["Attr"] = "0 1 3"
	tStruggleUpPack_Award[34]["RewardProItem"][5]["Item"][5] = {}
	tStruggleUpPack_Award[34]["RewardProItem"][5]["Item"][5]["Id"] = 823041
	tStruggleUpPack_Award[34]["RewardProItem"][5]["Item"][5]["Attr"] = "0 1 3"
	tStruggleUpPack_Award[34]["RewardProItem"][5]["Item"][6] = {}
	tStruggleUpPack_Award[34]["RewardProItem"][5]["Item"][6]["Id"] = 824016
	tStruggleUpPack_Award[34]["RewardProItem"][5]["Item"][6]["Attr"] = "0 1 3"
	
	--  弓手              34
	tStruggleUpPack_Award[34]["RewardProItem"][6] = {}
	tStruggleUpPack_Award[34]["RewardProItem"][6]["Pro"] = {{40,45}}                    
	tStruggleUpPack_Award[34]["RewardProItem"][6]["Item"] = {}
	tStruggleUpPack_Award[34]["RewardProItem"][6]["Item"][1] = {}
	tStruggleUpPack_Award[34]["RewardProItem"][6]["Item"][1]["Id"] = 800915
	tStruggleUpPack_Award[34]["RewardProItem"][6]["Item"][1]["Attr"] = "0 1 3"                    
	tStruggleUpPack_Award[34]["RewardProItem"][6]["Item"][2] = {}
	tStruggleUpPack_Award[34]["RewardProItem"][6]["Item"][2]["Id"] = 820052
	tStruggleUpPack_Award[34]["RewardProItem"][6]["Item"][2]["Attr"] = "0 1 3"
	tStruggleUpPack_Award[34]["RewardProItem"][6]["Item"][3] = {}
	tStruggleUpPack_Award[34]["RewardProItem"][6]["Item"][3]["Id"] = 821027
	tStruggleUpPack_Award[34]["RewardProItem"][6]["Item"][3]["Attr"] = "0 1 3"
	tStruggleUpPack_Award[34]["RewardProItem"][6]["Item"][4] = {}
	tStruggleUpPack_Award[34]["RewardProItem"][6]["Item"][4]["Id"] = 822056
	tStruggleUpPack_Award[34]["RewardProItem"][6]["Item"][4]["Attr"] = "0 1 3"
	tStruggleUpPack_Award[34]["RewardProItem"][6]["Item"][5] = {}
	tStruggleUpPack_Award[34]["RewardProItem"][6]["Item"][5]["Id"] = 823041
	tStruggleUpPack_Award[34]["RewardProItem"][6]["Item"][5]["Attr"] = "0 1 3"
	tStruggleUpPack_Award[34]["RewardProItem"][6]["Item"][6] = {}
	tStruggleUpPack_Award[34]["RewardProItem"][6]["Item"][6]["Id"] = 824016
	tStruggleUpPack_Award[34]["RewardProItem"][6]["Item"][6]["Attr"] = "0 1 3"
	
	--  道士              34
	tStruggleUpPack_Award[34]["RewardProItem"][7] = {}
	tStruggleUpPack_Award[34]["RewardProItem"][7]["Pro"] = {{100,145}}                    
	tStruggleUpPack_Award[34]["RewardProItem"][7]["Item"] = {}
	tStruggleUpPack_Award[34]["RewardProItem"][7]["Item"][1] = {}
	tStruggleUpPack_Award[34]["RewardProItem"][7]["Item"][1]["Id"] = 800521
	tStruggleUpPack_Award[34]["RewardProItem"][7]["Item"][1]["Attr"] = "0 1 3"
	tStruggleUpPack_Award[34]["RewardProItem"][7]["Item"][2] = {}
	tStruggleUpPack_Award[34]["RewardProItem"][7]["Item"][2]["Id"] = 824016
	tStruggleUpPack_Award[34]["RewardProItem"][7]["Item"][2]["Attr"] = "0 1 3"
	tStruggleUpPack_Award[34]["RewardProItem"][7]["Item"][3] = {}
	tStruggleUpPack_Award[34]["RewardProItem"][7]["Item"][3]["Id"] = 820053
	tStruggleUpPack_Award[34]["RewardProItem"][7]["Item"][3]["Attr"] = "0 1 3"
	tStruggleUpPack_Award[34]["RewardProItem"][7]["Item"][4] = {}
	tStruggleUpPack_Award[34]["RewardProItem"][7]["Item"][4]["Id"] = 821029
	tStruggleUpPack_Award[34]["RewardProItem"][7]["Item"][4]["Attr"] = "0 1 3"
	tStruggleUpPack_Award[34]["RewardProItem"][7]["Item"][5] = {}
	tStruggleUpPack_Award[34]["RewardProItem"][7]["Item"][5]["Id"] = 822057
	tStruggleUpPack_Award[34]["RewardProItem"][7]["Item"][5]["Attr"] = "0 1 3"
	tStruggleUpPack_Award[34]["RewardProItem"][7]["Item"][6] = {}
	tStruggleUpPack_Award[34]["RewardProItem"][7]["Item"][6]["Id"] = 823043
	tStruggleUpPack_Award[34]["RewardProItem"][7]["Item"][6]["Attr"] = "0 1 3"
	
	--  铁扇门（160-165） 34
	tStruggleUpPack_Award[34]["RewardProItem"][8] = {}
	tStruggleUpPack_Award[34]["RewardProItem"][8]["Pro"] = {{160,165}}                    
	tStruggleUpPack_Award[34]["RewardProItem"][8]["Item"] = {}
	tStruggleUpPack_Award[34]["RewardProItem"][8]["Item"][1] = {}
	tStruggleUpPack_Award[34]["RewardProItem"][8]["Item"][1]["Id"] =  801302
	tStruggleUpPack_Award[34]["RewardProItem"][8]["Item"][1]["Attr"] = "0 1 3"
	tStruggleUpPack_Award[34]["RewardProItem"][8]["Item"][2] = {}
	tStruggleUpPack_Award[34]["RewardProItem"][8]["Item"][2]["Id"] = 820052
	tStruggleUpPack_Award[34]["RewardProItem"][8]["Item"][2]["Attr"] = "0 1 3"
	tStruggleUpPack_Award[34]["RewardProItem"][8]["Item"][3] = {}
	tStruggleUpPack_Award[34]["RewardProItem"][8]["Item"][3]["Id"] = 821027
	tStruggleUpPack_Award[34]["RewardProItem"][8]["Item"][3]["Attr"] = "0 1 3"
	tStruggleUpPack_Award[34]["RewardProItem"][8]["Item"][4] = {}
	tStruggleUpPack_Award[34]["RewardProItem"][8]["Item"][4]["Id"] = 822056
	tStruggleUpPack_Award[34]["RewardProItem"][8]["Item"][4]["Attr"] = "0 1 3"
	tStruggleUpPack_Award[34]["RewardProItem"][8]["Item"][5] = {}
	tStruggleUpPack_Award[34]["RewardProItem"][8]["Item"][5]["Id"] = 823041
	tStruggleUpPack_Award[34]["RewardProItem"][8]["Item"][5]["Attr"] = "0 1 3"
	tStruggleUpPack_Award[34]["RewardProItem"][8]["Item"][6] = {}
	tStruggleUpPack_Award[34]["RewardProItem"][8]["Item"][6]["Id"] = 824016
	tStruggleUpPack_Award[34]["RewardProItem"][8]["Item"][6]["Attr"] = "0 1 3"
	                      
	--  拳师              34
	tStruggleUpPack_Award[34]["RewardProItem"][9] = {}
	tStruggleUpPack_Award[34]["RewardProItem"][9]["Pro"] = {{80,85}}                    
	tStruggleUpPack_Award[34]["RewardProItem"][9]["Item"] = {}
	tStruggleUpPack_Award[34]["RewardProItem"][9]["Item"][1] = {}
	tStruggleUpPack_Award[34]["RewardProItem"][9]["Item"][1]["Id"] =   801001
	tStruggleUpPack_Award[34]["RewardProItem"][9]["Item"][1]["Attr"] = "0 1 3"
	tStruggleUpPack_Award[34]["RewardProItem"][9]["Item"][2] = {}
	tStruggleUpPack_Award[34]["RewardProItem"][9]["Item"][2]["Id"] = 820052
	tStruggleUpPack_Award[34]["RewardProItem"][9]["Item"][2]["Attr"] = "0 1 3"
	tStruggleUpPack_Award[34]["RewardProItem"][9]["Item"][3] = {}
	tStruggleUpPack_Award[34]["RewardProItem"][9]["Item"][3]["Id"] = 821027
	tStruggleUpPack_Award[34]["RewardProItem"][9]["Item"][3]["Attr"] = "0 1 3"
	tStruggleUpPack_Award[34]["RewardProItem"][9]["Item"][4] = {}
	tStruggleUpPack_Award[34]["RewardProItem"][9]["Item"][4]["Id"] = 822056
	tStruggleUpPack_Award[34]["RewardProItem"][9]["Item"][4]["Attr"] = "0 1 3"
	tStruggleUpPack_Award[34]["RewardProItem"][9]["Item"][5] = {}
	tStruggleUpPack_Award[34]["RewardProItem"][9]["Item"][5]["Id"] = 823041
	tStruggleUpPack_Award[34]["RewardProItem"][9]["Item"][5]["Attr"] = "0 1 3"
	tStruggleUpPack_Award[34]["RewardProItem"][9]["Item"][6] = {}
	tStruggleUpPack_Award[34]["RewardProItem"][9]["Item"][6]["Id"] = 824016
	tStruggleUpPack_Award[34]["RewardProItem"][9]["Item"][6]["Attr"] = "0 1 3"
	--  雷神              34
	tStruggleUpPack_Award[34]["RewardProItem"][10] = {}
	tStruggleUpPack_Award[34]["RewardProItem"][10]["Pro"] = {{90,95}}                    
	tStruggleUpPack_Award[34]["RewardProItem"][10]["Item"] = {}
	tStruggleUpPack_Award[34]["RewardProItem"][10]["Item"][1] = {}
	tStruggleUpPack_Award[34]["RewardProItem"][10]["Item"][1]["Id"] =   827002
	tStruggleUpPack_Award[34]["RewardProItem"][10]["Item"][1]["Attr"] = "0 1 3"
	tStruggleUpPack_Award[34]["RewardProItem"][10]["Item"][2] = {}
	tStruggleUpPack_Award[34]["RewardProItem"][10]["Item"][2]["Id"] = 820052
	tStruggleUpPack_Award[34]["RewardProItem"][10]["Item"][2]["Attr"] = "0 1 3"
	tStruggleUpPack_Award[34]["RewardProItem"][10]["Item"][3] = {}
	tStruggleUpPack_Award[34]["RewardProItem"][10]["Item"][3]["Id"] = 821027
	tStruggleUpPack_Award[34]["RewardProItem"][10]["Item"][3]["Attr"] = "0 1 3"
	tStruggleUpPack_Award[34]["RewardProItem"][10]["Item"][4] = {}
	tStruggleUpPack_Award[34]["RewardProItem"][10]["Item"][4]["Id"] = 822056
	tStruggleUpPack_Award[34]["RewardProItem"][10]["Item"][4]["Attr"] = "0 1 3"
	tStruggleUpPack_Award[34]["RewardProItem"][10]["Item"][5] = {}
	tStruggleUpPack_Award[34]["RewardProItem"][10]["Item"][5]["Id"] = 823041
	tStruggleUpPack_Award[34]["RewardProItem"][10]["Item"][5]["Attr"] = "0 1 3"
	tStruggleUpPack_Award[34]["RewardProItem"][10]["Item"][6] = {}
	tStruggleUpPack_Award[34]["RewardProItem"][10]["Item"][6]["Id"] = 824016
	tStruggleUpPack_Award[34]["RewardProItem"][10]["Item"][6]["Attr"] = "0 1 3"
	tStruggleUpPack_Award[34]["RewardProItem"][10]["Item"][7] = {}
	tStruggleUpPack_Award[34]["RewardProItem"][10]["Item"][7]["Id"] = 827003
	tStruggleUpPack_Award[34]["RewardProItem"][10]["Item"][7]["Attr"] = "0 1 3"
-- 无赠品服务器修改部分为非赠
local tStruggleUpPack_NoGiftServerAward = {}
-- 10	良品鞋子（赠）、1天祝福时间
	tStruggleUpPack_NoGiftServerAward[1] = {}
	tStruggleUpPack_NoGiftServerAward[1]["LogId"] = 12001075
	tStruggleUpPack_NoGiftServerAward[1]["RewardItem"] = {}
	tStruggleUpPack_NoGiftServerAward[1]["RewardItem"][1] = {}
	tStruggleUpPack_NoGiftServerAward[1]["RewardItem"][1]["Id"] = 160016
	tStruggleUpPack_NoGiftServerAward[1]["RewardItem"][1]["Attr"] = "0 1"
	tStruggleUpPack_NoGiftServerAward[1]["RewardBless"] = {}
	tStruggleUpPack_NoGiftServerAward[1]["RewardBless"]["Value"] = (1*24)  --1天祝福时间
-- 20	良品武器
	--  战士
	tStruggleUpPack_NoGiftServerAward[2] = {}
	tStruggleUpPack_NoGiftServerAward[2]["LogId"] = 12001075
	tStruggleUpPack_NoGiftServerAward[2]["RewardProItem"] = {}
	tStruggleUpPack_NoGiftServerAward[2]["RewardProItem"][1] = {}
	tStruggleUpPack_NoGiftServerAward[2]["RewardProItem"][1]["Pro"] = {{20,25}}                    
	tStruggleUpPack_NoGiftServerAward[2]["RewardProItem"][1]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[2]["RewardProItem"][1]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[2]["RewardProItem"][1]["Item"][1]["Id"] = 561036
	tStruggleUpPack_NoGiftServerAward[2]["RewardProItem"][1]["Item"][1]["Attr"] = "0 1"
	--  勇士
	tStruggleUpPack_NoGiftServerAward[2]["RewardProItem"][2] = {}
	tStruggleUpPack_NoGiftServerAward[2]["RewardProItem"][2]["Pro"] = {{10,15}}                    
	tStruggleUpPack_NoGiftServerAward[2]["RewardProItem"][2]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[2]["RewardProItem"][2]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[2]["RewardProItem"][2]["Item"][1]["Id"] = 420036
	tStruggleUpPack_NoGiftServerAward[2]["RewardProItem"][2]["Item"][1]["Attr"] = "0 1"
	--  忍者
	tStruggleUpPack_NoGiftServerAward[2]["RewardProItem"][3] = {}
	tStruggleUpPack_NoGiftServerAward[2]["RewardProItem"][3]["Pro"] = {{50,55}}                    
	tStruggleUpPack_NoGiftServerAward[2]["RewardProItem"][3]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[2]["RewardProItem"][3]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[2]["RewardProItem"][3]["Item"][1]["Id"] = 601036
	tStruggleUpPack_NoGiftServerAward[2]["RewardProItem"][3]["Item"][1]["Attr"] = "0 1"
	--  武僧
	tStruggleUpPack_NoGiftServerAward[2]["RewardProItem"][4] = {}
	tStruggleUpPack_NoGiftServerAward[2]["RewardProItem"][4]["Pro"] = {{60,65}}                    
	tStruggleUpPack_NoGiftServerAward[2]["RewardProItem"][4]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[2]["RewardProItem"][4]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[2]["RewardProItem"][4]["Item"][1]["Id"] = 610036
	tStruggleUpPack_NoGiftServerAward[2]["RewardProItem"][4]["Item"][1]["Attr"] = "0 1"
	--  海盗
	tStruggleUpPack_NoGiftServerAward[2]["RewardProItem"][5] = {}
	tStruggleUpPack_NoGiftServerAward[2]["RewardProItem"][5]["Pro"] = {{70,75}}                    
	tStruggleUpPack_NoGiftServerAward[2]["RewardProItem"][5]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[2]["RewardProItem"][5]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[2]["RewardProItem"][5]["Item"][1]["Id"] = 611036
	tStruggleUpPack_NoGiftServerAward[2]["RewardProItem"][5]["Item"][1]["Attr"] = "0 1"
	--  弓手
	tStruggleUpPack_NoGiftServerAward[2]["RewardProItem"][6] = {}
	tStruggleUpPack_NoGiftServerAward[2]["RewardProItem"][6]["Pro"] = {{40,45}}                    
	tStruggleUpPack_NoGiftServerAward[2]["RewardProItem"][6]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[2]["RewardProItem"][6]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[2]["RewardProItem"][6]["Item"][1]["Id"] = 613026
	tStruggleUpPack_NoGiftServerAward[2]["RewardProItem"][6]["Item"][1]["Attr"] = "0 1"
	--  道士
	tStruggleUpPack_NoGiftServerAward[2]["RewardProItem"][7] = {}
	tStruggleUpPack_NoGiftServerAward[2]["RewardProItem"][7]["Pro"] = {{100,145}}                    
	tStruggleUpPack_NoGiftServerAward[2]["RewardProItem"][7]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[2]["RewardProItem"][7]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[2]["RewardProItem"][7]["Item"][1]["Id"] = 421026
	tStruggleUpPack_NoGiftServerAward[2]["RewardProItem"][7]["Item"][1]["Attr"] = "0 1"
	--  铁扇门（160-165）
	tStruggleUpPack_NoGiftServerAward[2]["RewardProItem"][8] = {}
	tStruggleUpPack_NoGiftServerAward[2]["RewardProItem"][8]["Pro"] = {{160,165}}                    
	tStruggleUpPack_NoGiftServerAward[2]["RewardProItem"][8]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[2]["RewardProItem"][8]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[2]["RewardProItem"][8]["Item"][1]["Id"] = 626036
	tStruggleUpPack_NoGiftServerAward[2]["RewardProItem"][8]["Item"][1]["Attr"] = "0 1"
	--  拳师
	tStruggleUpPack_NoGiftServerAward[2]["RewardProItem"][9] = {}
	tStruggleUpPack_NoGiftServerAward[2]["RewardProItem"][9]["Pro"] = {{80,85}}                    
	tStruggleUpPack_NoGiftServerAward[2]["RewardProItem"][9]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[2]["RewardProItem"][9]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[2]["RewardProItem"][9]["Item"][1]["Id"] = 617036
	tStruggleUpPack_NoGiftServerAward[2]["RewardProItem"][9]["Item"][1]["Attr"] = "0 1"
	--  雷神（90-95）
	tStruggleUpPack_NoGiftServerAward[2]["RewardProItem"][10] = {}
	tStruggleUpPack_NoGiftServerAward[2]["RewardProItem"][10]["Pro"] = {{90,95}}                    
	tStruggleUpPack_NoGiftServerAward[2]["RewardProItem"][10]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[2]["RewardProItem"][10]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[2]["RewardProItem"][10]["Item"][1]["Id"] = 681036
	tStruggleUpPack_NoGiftServerAward[2]["RewardProItem"][10]["Item"][1]["Attr"] = "0 1"
-- 30	良品武器、良品马鞭（赠）、骑术秘籍（赠）
	
	tStruggleUpPack_NoGiftServerAward[3] = {}
	tStruggleUpPack_NoGiftServerAward[3]["RewardItem"] = {}
	tStruggleUpPack_NoGiftServerAward[3]["RewardItem"][1] = {}
	tStruggleUpPack_NoGiftServerAward[3]["RewardItem"][1]["Id"] = 203006
	tStruggleUpPack_NoGiftServerAward[3]["RewardItem"][1]["Attr"] = "0 1 3"
	tStruggleUpPack_NoGiftServerAward[3]["RewardItem"][2] = {}
	tStruggleUpPack_NoGiftServerAward[3]["RewardItem"][2]["Id"] = 728009
	tStruggleUpPack_NoGiftServerAward[3]["RewardItem"][2]["Attr"] = "0 1 3"
	--  战士
	tStruggleUpPack_NoGiftServerAward[3]["LogId"] = 12001075
	tStruggleUpPack_NoGiftServerAward[3]["RewardProItem"] = {}
	tStruggleUpPack_NoGiftServerAward[3]["RewardProItem"][1] = {}
	tStruggleUpPack_NoGiftServerAward[3]["RewardProItem"][1]["Pro"] = {{20,25}}                    
	tStruggleUpPack_NoGiftServerAward[3]["RewardProItem"][1]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[3]["RewardProItem"][1]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[3]["RewardProItem"][1]["Item"][1]["Id"] = 561056
	tStruggleUpPack_NoGiftServerAward[3]["RewardProItem"][1]["Item"][1]["Attr"] = "0 1"
	--  勇士
	tStruggleUpPack_NoGiftServerAward[3]["RewardProItem"][2] = {}
	tStruggleUpPack_NoGiftServerAward[3]["RewardProItem"][2]["Pro"] = {{10,15}}                    
	tStruggleUpPack_NoGiftServerAward[3]["RewardProItem"][2]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[3]["RewardProItem"][2]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[3]["RewardProItem"][2]["Item"][1]["Id"] = 420056
	tStruggleUpPack_NoGiftServerAward[3]["RewardProItem"][2]["Item"][1]["Attr"] = "0 1"
	--  忍者
	tStruggleUpPack_NoGiftServerAward[3]["RewardProItem"][3] = {}
	tStruggleUpPack_NoGiftServerAward[3]["RewardProItem"][3]["Pro"] = {{50,55}}                    
	tStruggleUpPack_NoGiftServerAward[3]["RewardProItem"][3]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[3]["RewardProItem"][3]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[3]["RewardProItem"][3]["Item"][1]["Id"] = 601056
	tStruggleUpPack_NoGiftServerAward[3]["RewardProItem"][3]["Item"][1]["Attr"] = "0 1"
	--  武僧
	tStruggleUpPack_NoGiftServerAward[3]["RewardProItem"][4] = {}
	tStruggleUpPack_NoGiftServerAward[3]["RewardProItem"][4]["Pro"] = {{60,65}}                    
	tStruggleUpPack_NoGiftServerAward[3]["RewardProItem"][4]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[3]["RewardProItem"][4]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[3]["RewardProItem"][4]["Item"][1]["Id"] = 610056
	tStruggleUpPack_NoGiftServerAward[3]["RewardProItem"][4]["Item"][1]["Attr"] = "0 1"
	--  海盗
	tStruggleUpPack_NoGiftServerAward[3]["RewardProItem"][5] = {}
	tStruggleUpPack_NoGiftServerAward[3]["RewardProItem"][5]["Pro"] = {{70,75}}                    
	tStruggleUpPack_NoGiftServerAward[3]["RewardProItem"][5]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[3]["RewardProItem"][5]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[3]["RewardProItem"][5]["Item"][1]["Id"] = 611056
	tStruggleUpPack_NoGiftServerAward[3]["RewardProItem"][5]["Item"][1]["Attr"] = "0 1"
	--  弓手
	tStruggleUpPack_NoGiftServerAward[3]["RewardProItem"][6] = {}
	tStruggleUpPack_NoGiftServerAward[3]["RewardProItem"][6]["Pro"] = {{40,45}}                    
	tStruggleUpPack_NoGiftServerAward[3]["RewardProItem"][6]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[3]["RewardProItem"][6]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[3]["RewardProItem"][6]["Item"][1]["Id"] = 613046
	tStruggleUpPack_NoGiftServerAward[3]["RewardProItem"][6]["Item"][1]["Attr"] = "0 1"
	--  道士
	tStruggleUpPack_NoGiftServerAward[3]["RewardProItem"][7] = {}
	tStruggleUpPack_NoGiftServerAward[3]["RewardProItem"][7]["Pro"] = {{100,145}}                    
	tStruggleUpPack_NoGiftServerAward[3]["RewardProItem"][7]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[3]["RewardProItem"][7]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[3]["RewardProItem"][7]["Item"][1]["Id"] = 421046
	tStruggleUpPack_NoGiftServerAward[3]["RewardProItem"][7]["Item"][1]["Attr"] = "0 1"
	--  铁扇门（160-165）
	tStruggleUpPack_NoGiftServerAward[3]["RewardProItem"][8] = {}
	tStruggleUpPack_NoGiftServerAward[3]["RewardProItem"][8]["Pro"] = {{160,165}}                    
	tStruggleUpPack_NoGiftServerAward[3]["RewardProItem"][8]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[3]["RewardProItem"][8]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[3]["RewardProItem"][8]["Item"][1]["Id"] = 626046
	tStruggleUpPack_NoGiftServerAward[3]["RewardProItem"][8]["Item"][1]["Attr"] = "0 1"
	--  拳师
	tStruggleUpPack_NoGiftServerAward[3]["RewardProItem"][9] = {}
	tStruggleUpPack_NoGiftServerAward[3]["RewardProItem"][9]["Pro"] = {{80,85}}                    
	tStruggleUpPack_NoGiftServerAward[3]["RewardProItem"][9]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[3]["RewardProItem"][9]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[3]["RewardProItem"][9]["Item"][1]["Id"] = 617056
	tStruggleUpPack_NoGiftServerAward[3]["RewardProItem"][9]["Item"][1]["Attr"] = "0 1"
	--  雷神（90-95）
	tStruggleUpPack_NoGiftServerAward[3]["RewardProItem"][10] = {}
	tStruggleUpPack_NoGiftServerAward[3]["RewardProItem"][10]["Pro"] = {{90,95}}                    
	tStruggleUpPack_NoGiftServerAward[3]["RewardProItem"][10]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[3]["RewardProItem"][10]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[3]["RewardProItem"][10]["Item"][1]["Id"] = 681056
	tStruggleUpPack_NoGiftServerAward[3]["RewardProItem"][10]["Item"][1]["Attr"] = "0 1"

	-- 40	良品武器、上品衣服
	--  战士
	tStruggleUpPack_NoGiftServerAward[4] = {}
	tStruggleUpPack_NoGiftServerAward[4]["LogId"] = 12001075
	tStruggleUpPack_NoGiftServerAward[4]["RewardProItem"] = {}
	tStruggleUpPack_NoGiftServerAward[4]["RewardProItem"][1] = {}
	tStruggleUpPack_NoGiftServerAward[4]["RewardProItem"][1]["Pro"] = {{20,25}}                    
	tStruggleUpPack_NoGiftServerAward[4]["RewardProItem"][1]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[4]["RewardProItem"][1]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[4]["RewardProItem"][1]["Item"][1]["Id"] = 131037
	tStruggleUpPack_NoGiftServerAward[4]["RewardProItem"][1]["Item"][1]["Attr"] = "0 1"
	tStruggleUpPack_NoGiftServerAward[4]["RewardProItem"][1]["Item"][2] = {}
	tStruggleUpPack_NoGiftServerAward[4]["RewardProItem"][1]["Item"][2]["Id"] = 561076
	tStruggleUpPack_NoGiftServerAward[4]["RewardProItem"][1]["Item"][2]["Attr"] = "0 1"
	
	--  勇士
	tStruggleUpPack_NoGiftServerAward[4]["RewardProItem"][2] = {}
	tStruggleUpPack_NoGiftServerAward[4]["RewardProItem"][2]["Pro"] = {{10,15}}                    
	tStruggleUpPack_NoGiftServerAward[4]["RewardProItem"][2]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[4]["RewardProItem"][2]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[4]["RewardProItem"][2]["Item"][1]["Id"] = 130037
	tStruggleUpPack_NoGiftServerAward[4]["RewardProItem"][2]["Item"][1]["Attr"] = "0 1"
	tStruggleUpPack_NoGiftServerAward[4]["RewardProItem"][2]["Item"][2] = {}
	tStruggleUpPack_NoGiftServerAward[4]["RewardProItem"][2]["Item"][2]["Id"] = 420076
	tStruggleUpPack_NoGiftServerAward[4]["RewardProItem"][2]["Item"][2]["Attr"] = "0 1"
	
	--  忍者
	tStruggleUpPack_NoGiftServerAward[4]["RewardProItem"][3] = {}
	tStruggleUpPack_NoGiftServerAward[4]["RewardProItem"][3]["Pro"] = {{50,55}}                    
	tStruggleUpPack_NoGiftServerAward[4]["RewardProItem"][3]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[4]["RewardProItem"][3]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[4]["RewardProItem"][3]["Item"][1]["Id"] = 135037
	tStruggleUpPack_NoGiftServerAward[4]["RewardProItem"][3]["Item"][1]["Attr"] = "0 1"
	tStruggleUpPack_NoGiftServerAward[4]["RewardProItem"][3]["Item"][2] = {}
	tStruggleUpPack_NoGiftServerAward[4]["RewardProItem"][3]["Item"][2]["Id"] = 601076
	tStruggleUpPack_NoGiftServerAward[4]["RewardProItem"][3]["Item"][2]["Attr"] = "0 1"
	
	--  武僧
	tStruggleUpPack_NoGiftServerAward[4]["RewardProItem"][4] = {}
	tStruggleUpPack_NoGiftServerAward[4]["RewardProItem"][4]["Pro"] = {{60,65}}                    
	tStruggleUpPack_NoGiftServerAward[4]["RewardProItem"][4]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[4]["RewardProItem"][4]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[4]["RewardProItem"][4]["Item"][1]["Id"] = 136037
	tStruggleUpPack_NoGiftServerAward[4]["RewardProItem"][4]["Item"][1]["Attr"] = "0 1"
	tStruggleUpPack_NoGiftServerAward[4]["RewardProItem"][4]["Item"][2] = {}
	tStruggleUpPack_NoGiftServerAward[4]["RewardProItem"][4]["Item"][2]["Id"] = 610076
	tStruggleUpPack_NoGiftServerAward[4]["RewardProItem"][4]["Item"][2]["Attr"] = "0 1"
	
	--  海盗
	tStruggleUpPack_NoGiftServerAward[4]["RewardProItem"][5] = {}
	tStruggleUpPack_NoGiftServerAward[4]["RewardProItem"][5]["Pro"] = {{70,75}}                    
	tStruggleUpPack_NoGiftServerAward[4]["RewardProItem"][5]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[4]["RewardProItem"][5]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[4]["RewardProItem"][5]["Item"][1]["Id"] = 139037
	tStruggleUpPack_NoGiftServerAward[4]["RewardProItem"][5]["Item"][1]["Attr"] = "0 1"
	tStruggleUpPack_NoGiftServerAward[4]["RewardProItem"][5]["Item"][2] = {}
	tStruggleUpPack_NoGiftServerAward[4]["RewardProItem"][5]["Item"][2]["Id"] = 611076
	tStruggleUpPack_NoGiftServerAward[4]["RewardProItem"][5]["Item"][2]["Attr"] = "0 1"
	
	--  弓手
	tStruggleUpPack_NoGiftServerAward[4]["RewardProItem"][6] = {}
	tStruggleUpPack_NoGiftServerAward[4]["RewardProItem"][6]["Pro"] = {{40,45}}                    
	tStruggleUpPack_NoGiftServerAward[4]["RewardProItem"][6]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[4]["RewardProItem"][6]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[4]["RewardProItem"][6]["Item"][1]["Id"] = 133027
	tStruggleUpPack_NoGiftServerAward[4]["RewardProItem"][6]["Item"][1]["Attr"] = "0 1"
	tStruggleUpPack_NoGiftServerAward[4]["RewardProItem"][6]["Item"][2] = {}
	tStruggleUpPack_NoGiftServerAward[4]["RewardProItem"][6]["Item"][2]["Id"] = 613066
	tStruggleUpPack_NoGiftServerAward[4]["RewardProItem"][6]["Item"][2]["Attr"] = "0 1"
	
	--  道士
	tStruggleUpPack_NoGiftServerAward[4]["RewardProItem"][7] = {}
	tStruggleUpPack_NoGiftServerAward[4]["RewardProItem"][7]["Pro"] = {{100,145}}                    
	tStruggleUpPack_NoGiftServerAward[4]["RewardProItem"][7]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[4]["RewardProItem"][7]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[4]["RewardProItem"][7]["Item"][1]["Id"] = 134037
	tStruggleUpPack_NoGiftServerAward[4]["RewardProItem"][7]["Item"][1]["Attr"] = "0 1"
	tStruggleUpPack_NoGiftServerAward[4]["RewardProItem"][7]["Item"][2] = {}
	tStruggleUpPack_NoGiftServerAward[4]["RewardProItem"][7]["Item"][2]["Id"] = 421076
	tStruggleUpPack_NoGiftServerAward[4]["RewardProItem"][7]["Item"][2]["Attr"] = "0 1"
	
	--  铁扇门（160-165）
	tStruggleUpPack_NoGiftServerAward[4]["RewardProItem"][8] = {}
	tStruggleUpPack_NoGiftServerAward[4]["RewardProItem"][8]["Pro"] = {{160,165}}                    
	tStruggleUpPack_NoGiftServerAward[4]["RewardProItem"][8]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[4]["RewardProItem"][8]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[4]["RewardProItem"][8]["Item"][1]["Id"] = 101037
	tStruggleUpPack_NoGiftServerAward[4]["RewardProItem"][8]["Item"][1]["Attr"] = "0 1"
	tStruggleUpPack_NoGiftServerAward[4]["RewardProItem"][8]["Item"][2] = {}
	tStruggleUpPack_NoGiftServerAward[4]["RewardProItem"][8]["Item"][2]["Id"] = 626076
	tStruggleUpPack_NoGiftServerAward[4]["RewardProItem"][8]["Item"][2]["Attr"] = "0 1"
	
	--  拳师
	tStruggleUpPack_NoGiftServerAward[4]["RewardProItem"][9] = {}
	tStruggleUpPack_NoGiftServerAward[4]["RewardProItem"][9]["Pro"] = {{80,85}}                    
	tStruggleUpPack_NoGiftServerAward[4]["RewardProItem"][9]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[4]["RewardProItem"][9]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[4]["RewardProItem"][9]["Item"][1]["Id"] = 138037
	tStruggleUpPack_NoGiftServerAward[4]["RewardProItem"][9]["Item"][1]["Attr"] = "0 1"
	tStruggleUpPack_NoGiftServerAward[4]["RewardProItem"][9]["Item"][2] = {}
	tStruggleUpPack_NoGiftServerAward[4]["RewardProItem"][9]["Item"][2]["Id"] = 617076
	tStruggleUpPack_NoGiftServerAward[4]["RewardProItem"][9]["Item"][2]["Attr"] = "0 1"
	--  雷神
	tStruggleUpPack_NoGiftServerAward[4]["RewardProItem"][10] = {}
	tStruggleUpPack_NoGiftServerAward[4]["RewardProItem"][10]["Pro"] = {{90,95}}                    
	tStruggleUpPack_NoGiftServerAward[4]["RewardProItem"][10]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[4]["RewardProItem"][10]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[4]["RewardProItem"][10]["Item"][1]["Id"] = 102037
	tStruggleUpPack_NoGiftServerAward[4]["RewardProItem"][10]["Item"][1]["Attr"] = "0 1"
	tStruggleUpPack_NoGiftServerAward[4]["RewardProItem"][10]["Item"][2] = {}
	tStruggleUpPack_NoGiftServerAward[4]["RewardProItem"][10]["Item"][2]["Id"] = 681076
	tStruggleUpPack_NoGiftServerAward[4]["RewardProItem"][10]["Item"][2]["Attr"] = "0 1"
-- 50	上品武器、日常任务引导书	  武器改成非赠,删除日常任务引导书
	tStruggleUpPack_NoGiftServerAward[5] = {}
	tStruggleUpPack_NoGiftServerAward[5]["LogId"] = 12001075
	
	--  战士
	tStruggleUpPack_NoGiftServerAward[5]["RewardProItem"] = {}
	tStruggleUpPack_NoGiftServerAward[5]["RewardProItem"][1] = {}
	tStruggleUpPack_NoGiftServerAward[5]["RewardProItem"][1]["Pro"] = {{20,25}}                    
	tStruggleUpPack_NoGiftServerAward[5]["RewardProItem"][1]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[5]["RewardProItem"][1]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[5]["RewardProItem"][1]["Item"][1]["Id"] = 561097
	tStruggleUpPack_NoGiftServerAward[5]["RewardProItem"][1]["Item"][1]["Attr"] = "0 1"
	
	--  勇士
	tStruggleUpPack_NoGiftServerAward[5]["RewardProItem"][2] = {}
	tStruggleUpPack_NoGiftServerAward[5]["RewardProItem"][2]["Pro"] = {{10,15}}                    
	tStruggleUpPack_NoGiftServerAward[5]["RewardProItem"][2]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[5]["RewardProItem"][2]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[5]["RewardProItem"][2]["Item"][1]["Id"] = 420097
	tStruggleUpPack_NoGiftServerAward[5]["RewardProItem"][2]["Item"][1]["Attr"] = "0 1"
	
	--  忍者
	tStruggleUpPack_NoGiftServerAward[5]["RewardProItem"][3] = {}
	tStruggleUpPack_NoGiftServerAward[5]["RewardProItem"][3]["Pro"] = {{50,55}}                    
	tStruggleUpPack_NoGiftServerAward[5]["RewardProItem"][3]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[5]["RewardProItem"][3]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[5]["RewardProItem"][3]["Item"][1]["Id"] = 601097
	tStruggleUpPack_NoGiftServerAward[5]["RewardProItem"][3]["Item"][1]["Attr"] = "0 1"
	
	--  武僧
	tStruggleUpPack_NoGiftServerAward[5]["RewardProItem"][4] = {}
	tStruggleUpPack_NoGiftServerAward[5]["RewardProItem"][4]["Pro"] = {{60,65}}                    
	tStruggleUpPack_NoGiftServerAward[5]["RewardProItem"][4]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[5]["RewardProItem"][4]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[5]["RewardProItem"][4]["Item"][1]["Id"] = 610097
	tStruggleUpPack_NoGiftServerAward[5]["RewardProItem"][4]["Item"][1]["Attr"] = "0 1"
	
	--  海盗
	tStruggleUpPack_NoGiftServerAward[5]["RewardProItem"][5] = {}
	tStruggleUpPack_NoGiftServerAward[5]["RewardProItem"][5]["Pro"] = {{70,75}}                    
	tStruggleUpPack_NoGiftServerAward[5]["RewardProItem"][5]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[5]["RewardProItem"][5]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[5]["RewardProItem"][5]["Item"][1]["Id"] = 611097
	tStruggleUpPack_NoGiftServerAward[5]["RewardProItem"][5]["Item"][1]["Attr"] = "0 1"
	
	--  弓手
	tStruggleUpPack_NoGiftServerAward[5]["RewardProItem"][6] = {}
	tStruggleUpPack_NoGiftServerAward[5]["RewardProItem"][6]["Pro"] = {{40,45}}                    
	tStruggleUpPack_NoGiftServerAward[5]["RewardProItem"][6]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[5]["RewardProItem"][6]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[5]["RewardProItem"][6]["Item"][1]["Id"] = 613087
	tStruggleUpPack_NoGiftServerAward[5]["RewardProItem"][6]["Item"][1]["Attr"] = "0 1"
	
	--  道士
	tStruggleUpPack_NoGiftServerAward[5]["RewardProItem"][7] = {}
	tStruggleUpPack_NoGiftServerAward[5]["RewardProItem"][7]["Pro"] = {{100,145}}                    
	tStruggleUpPack_NoGiftServerAward[5]["RewardProItem"][7]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[5]["RewardProItem"][7]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[5]["RewardProItem"][7]["Item"][1]["Id"] = 421087
	tStruggleUpPack_NoGiftServerAward[5]["RewardProItem"][7]["Item"][1]["Attr"] = "0 1"
	
	--  铁扇门（160-165）
	tStruggleUpPack_NoGiftServerAward[5]["RewardProItem"][8] = {}
	tStruggleUpPack_NoGiftServerAward[5]["RewardProItem"][8]["Pro"] = {{160,165}}                    
	tStruggleUpPack_NoGiftServerAward[5]["RewardProItem"][8]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[5]["RewardProItem"][8]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[5]["RewardProItem"][8]["Item"][1]["Id"] = 626097
	tStruggleUpPack_NoGiftServerAward[5]["RewardProItem"][8]["Item"][1]["Attr"] = "0 1"
	
	--  拳师
	tStruggleUpPack_NoGiftServerAward[5]["RewardProItem"][9] = {}
	tStruggleUpPack_NoGiftServerAward[5]["RewardProItem"][9]["Pro"] = {{80,85}}                    
	tStruggleUpPack_NoGiftServerAward[5]["RewardProItem"][9]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[5]["RewardProItem"][9]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[5]["RewardProItem"][9]["Item"][1]["Id"] =  617097
	tStruggleUpPack_NoGiftServerAward[5]["RewardProItem"][9]["Item"][1]["Attr"] = "0 1"
	--  雷神
	tStruggleUpPack_NoGiftServerAward[5]["RewardProItem"][10] = {}
	tStruggleUpPack_NoGiftServerAward[5]["RewardProItem"][10]["Pro"] = {{90,95}}                   
	tStruggleUpPack_NoGiftServerAward[5]["RewardProItem"][10]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[5]["RewardProItem"][10]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[5]["RewardProItem"][10]["Item"][1]["Id"] =  680097
	tStruggleUpPack_NoGiftServerAward[5]["RewardProItem"][10]["Item"][1]["Attr"] = "0 1"
	-- 60	上品武器、上品帽子
	tStruggleUpPack_NoGiftServerAward[6] = {}
	tStruggleUpPack_NoGiftServerAward[6]["LogId"] = 12001075
	--  战士
	tStruggleUpPack_NoGiftServerAward[6]["RewardProItem"] = {}
	tStruggleUpPack_NoGiftServerAward[6]["RewardProItem"][1] = {}
	tStruggleUpPack_NoGiftServerAward[6]["RewardProItem"][1]["Pro"] = {{20,25}}                    
	tStruggleUpPack_NoGiftServerAward[6]["RewardProItem"][1]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[6]["RewardProItem"][1]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[6]["RewardProItem"][1]["Item"][1]["Id"] = 111057
	tStruggleUpPack_NoGiftServerAward[6]["RewardProItem"][1]["Item"][1]["Attr"] = "0 1"
	tStruggleUpPack_NoGiftServerAward[6]["RewardProItem"][1]["Item"][2] = {}
	tStruggleUpPack_NoGiftServerAward[6]["RewardProItem"][1]["Item"][2]["Id"] = 561117
	tStruggleUpPack_NoGiftServerAward[6]["RewardProItem"][1]["Item"][2]["Attr"] = "0 1"
	
	--  勇士
	tStruggleUpPack_NoGiftServerAward[6]["RewardProItem"][2] = {}
	tStruggleUpPack_NoGiftServerAward[6]["RewardProItem"][2]["Pro"] = {{10,15}}                    
	tStruggleUpPack_NoGiftServerAward[6]["RewardProItem"][2]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[6]["RewardProItem"][2]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[6]["RewardProItem"][2]["Item"][1]["Id"] = 118057
	tStruggleUpPack_NoGiftServerAward[6]["RewardProItem"][2]["Item"][1]["Attr"] = "0 1"
	tStruggleUpPack_NoGiftServerAward[6]["RewardProItem"][2]["Item"][2] = {}
	tStruggleUpPack_NoGiftServerAward[6]["RewardProItem"][2]["Item"][2]["Id"] = 420117
	tStruggleUpPack_NoGiftServerAward[6]["RewardProItem"][2]["Item"][2]["Attr"] = "0 1"
	
	--  忍者
	tStruggleUpPack_NoGiftServerAward[6]["RewardProItem"][3] = {}
	tStruggleUpPack_NoGiftServerAward[6]["RewardProItem"][3]["Pro"] = {{50,55}}                    
	tStruggleUpPack_NoGiftServerAward[6]["RewardProItem"][3]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[6]["RewardProItem"][3]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[6]["RewardProItem"][3]["Item"][1]["Id"] = 123057
	tStruggleUpPack_NoGiftServerAward[6]["RewardProItem"][3]["Item"][1]["Attr"] = "0 1"
	tStruggleUpPack_NoGiftServerAward[6]["RewardProItem"][3]["Item"][2] = {}
	tStruggleUpPack_NoGiftServerAward[6]["RewardProItem"][3]["Item"][2]["Id"] = 601117
	tStruggleUpPack_NoGiftServerAward[6]["RewardProItem"][3]["Item"][2]["Attr"] = "0 1"
	
	--  武僧
	tStruggleUpPack_NoGiftServerAward[6]["RewardProItem"][4] = {}
	tStruggleUpPack_NoGiftServerAward[6]["RewardProItem"][4]["Pro"] = {{60,65}}                    
	tStruggleUpPack_NoGiftServerAward[6]["RewardProItem"][4]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[6]["RewardProItem"][4]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[6]["RewardProItem"][4]["Item"][1]["Id"] = 143057
	tStruggleUpPack_NoGiftServerAward[6]["RewardProItem"][4]["Item"][1]["Attr"] = "0 1"
	tStruggleUpPack_NoGiftServerAward[6]["RewardProItem"][4]["Item"][2] = {}
	tStruggleUpPack_NoGiftServerAward[6]["RewardProItem"][4]["Item"][2]["Id"] = 610117
	tStruggleUpPack_NoGiftServerAward[6]["RewardProItem"][4]["Item"][2]["Attr"] = "0 1"
	
	--  海盗
	tStruggleUpPack_NoGiftServerAward[6]["RewardProItem"][5] = {}
	tStruggleUpPack_NoGiftServerAward[6]["RewardProItem"][5]["Pro"] = {{70,75}}                    
	tStruggleUpPack_NoGiftServerAward[6]["RewardProItem"][5]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[6]["RewardProItem"][5]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[6]["RewardProItem"][5]["Item"][1]["Id"] = 144057
	tStruggleUpPack_NoGiftServerAward[6]["RewardProItem"][5]["Item"][1]["Attr"] = "0 1"
	tStruggleUpPack_NoGiftServerAward[6]["RewardProItem"][5]["Item"][2] = {}
	tStruggleUpPack_NoGiftServerAward[6]["RewardProItem"][5]["Item"][2]["Id"] = 611117
	tStruggleUpPack_NoGiftServerAward[6]["RewardProItem"][5]["Item"][2]["Attr"] = "0 1"
	
	--  弓手
	tStruggleUpPack_NoGiftServerAward[6]["RewardProItem"][6] = {}
	tStruggleUpPack_NoGiftServerAward[6]["RewardProItem"][6]["Pro"] = {{40,45}}                    
	tStruggleUpPack_NoGiftServerAward[6]["RewardProItem"][6]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[6]["RewardProItem"][6]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[6]["RewardProItem"][6]["Item"][1]["Id"] =  113027
	tStruggleUpPack_NoGiftServerAward[6]["RewardProItem"][6]["Item"][1]["Attr"] = "0 1"
	tStruggleUpPack_NoGiftServerAward[6]["RewardProItem"][6]["Item"][2] = {}
	tStruggleUpPack_NoGiftServerAward[6]["RewardProItem"][6]["Item"][2]["Id"] =  613107
	tStruggleUpPack_NoGiftServerAward[6]["RewardProItem"][6]["Item"][2]["Attr"] = "0 1"
	
	--  道士
	tStruggleUpPack_NoGiftServerAward[6]["RewardProItem"][7] = {}
	tStruggleUpPack_NoGiftServerAward[6]["RewardProItem"][7]["Pro"] = {{100,145}}                    
	tStruggleUpPack_NoGiftServerAward[6]["RewardProItem"][7]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[6]["RewardProItem"][7]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[6]["RewardProItem"][7]["Item"][1]["Id"] = 114057
	tStruggleUpPack_NoGiftServerAward[6]["RewardProItem"][7]["Item"][1]["Attr"] = "0 1"
	tStruggleUpPack_NoGiftServerAward[6]["RewardProItem"][7]["Item"][2] = {}
	tStruggleUpPack_NoGiftServerAward[6]["RewardProItem"][7]["Item"][2]["Id"] = 421107
	tStruggleUpPack_NoGiftServerAward[6]["RewardProItem"][7]["Item"][2]["Attr"] = "0 1"
	
	--  铁扇门（160-165）
	tStruggleUpPack_NoGiftServerAward[6]["RewardProItem"][8] = {}
	tStruggleUpPack_NoGiftServerAward[6]["RewardProItem"][8]["Pro"] = {{160,165}}                    
	tStruggleUpPack_NoGiftServerAward[6]["RewardProItem"][8]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[6]["RewardProItem"][8]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[6]["RewardProItem"][8]["Item"][1]["Id"] = 170057
	tStruggleUpPack_NoGiftServerAward[6]["RewardProItem"][8]["Item"][1]["Attr"] = "0 1"
	tStruggleUpPack_NoGiftServerAward[6]["RewardProItem"][8]["Item"][2] = {}
	tStruggleUpPack_NoGiftServerAward[6]["RewardProItem"][8]["Item"][2]["Id"] = 626117
	tStruggleUpPack_NoGiftServerAward[6]["RewardProItem"][8]["Item"][2]["Attr"] = "0 1"
	
	--  拳师
	tStruggleUpPack_NoGiftServerAward[6]["RewardProItem"][9] = {}
	tStruggleUpPack_NoGiftServerAward[6]["RewardProItem"][9]["Pro"] = {{80,85}}                    
	tStruggleUpPack_NoGiftServerAward[6]["RewardProItem"][9]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[6]["RewardProItem"][9]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[6]["RewardProItem"][9]["Item"][1]["Id"] = 148057
	tStruggleUpPack_NoGiftServerAward[6]["RewardProItem"][9]["Item"][1]["Attr"] = "0 1"
	tStruggleUpPack_NoGiftServerAward[6]["RewardProItem"][9]["Item"][2] = {}
	tStruggleUpPack_NoGiftServerAward[6]["RewardProItem"][9]["Item"][2]["Id"] = 617117
	tStruggleUpPack_NoGiftServerAward[6]["RewardProItem"][9]["Item"][2]["Attr"] = "0 1"
	--    雷神（90-95）
	tStruggleUpPack_NoGiftServerAward[6]["RewardProItem"][10] = {}
	tStruggleUpPack_NoGiftServerAward[6]["RewardProItem"][10]["Pro"] = {{90,95}}                   
	tStruggleUpPack_NoGiftServerAward[6]["RewardProItem"][10]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[6]["RewardProItem"][10]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[6]["RewardProItem"][10]["Item"][1]["Id"] = 146057
	tStruggleUpPack_NoGiftServerAward[6]["RewardProItem"][10]["Item"][1]["Attr"] = "0 1"
	tStruggleUpPack_NoGiftServerAward[6]["RewardProItem"][10]["Item"][2] = {}
	tStruggleUpPack_NoGiftServerAward[6]["RewardProItem"][10]["Item"][2]["Id"] = 681117
	tStruggleUpPack_NoGiftServerAward[6]["RewardProItem"][10]["Item"][2]["Attr"] = "0 1"
	-- 65	上品武器
	tStruggleUpPack_NoGiftServerAward[7] = {}
	tStruggleUpPack_NoGiftServerAward[7]["LogId"] = 12001075
	--  战士
	tStruggleUpPack_NoGiftServerAward[7]["RewardProItem"] = {}
	tStruggleUpPack_NoGiftServerAward[7]["RewardProItem"][1] = {}
	tStruggleUpPack_NoGiftServerAward[7]["RewardProItem"][1]["Pro"] = {{20,25}}                    
	tStruggleUpPack_NoGiftServerAward[7]["RewardProItem"][1]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[7]["RewardProItem"][1]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[7]["RewardProItem"][1]["Item"][1]["Id"] = 561127
	tStruggleUpPack_NoGiftServerAward[7]["RewardProItem"][1]["Item"][1]["Attr"] = "0 1"
	
	--  勇士
	tStruggleUpPack_NoGiftServerAward[7]["RewardProItem"][2] = {}
	tStruggleUpPack_NoGiftServerAward[7]["RewardProItem"][2]["Pro"] = {{10,15}}                    
	tStruggleUpPack_NoGiftServerAward[7]["RewardProItem"][2]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[7]["RewardProItem"][2]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[7]["RewardProItem"][2]["Item"][1]["Id"] = 420127
	tStruggleUpPack_NoGiftServerAward[7]["RewardProItem"][2]["Item"][1]["Attr"] = "0 1"
	
	--  忍者
	tStruggleUpPack_NoGiftServerAward[7]["RewardProItem"][3] = {}
	tStruggleUpPack_NoGiftServerAward[7]["RewardProItem"][3]["Pro"] = {{50,55}}                    
	tStruggleUpPack_NoGiftServerAward[7]["RewardProItem"][3]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[7]["RewardProItem"][3]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[7]["RewardProItem"][3]["Item"][1]["Id"] = 601127
	tStruggleUpPack_NoGiftServerAward[7]["RewardProItem"][3]["Item"][1]["Attr"] = "0 1"
	
	--  武僧
	tStruggleUpPack_NoGiftServerAward[7]["RewardProItem"][4] = {}
	tStruggleUpPack_NoGiftServerAward[7]["RewardProItem"][4]["Pro"] = {{60,65}}                    
	tStruggleUpPack_NoGiftServerAward[7]["RewardProItem"][4]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[7]["RewardProItem"][4]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[7]["RewardProItem"][4]["Item"][1]["Id"] = 610127
	tStruggleUpPack_NoGiftServerAward[7]["RewardProItem"][4]["Item"][1]["Attr"] = "0 1"
	
	--  海盗
	tStruggleUpPack_NoGiftServerAward[7]["RewardProItem"][5] = {}
	tStruggleUpPack_NoGiftServerAward[7]["RewardProItem"][5]["Pro"] = {{70,75}}                    
	tStruggleUpPack_NoGiftServerAward[7]["RewardProItem"][5]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[7]["RewardProItem"][5]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[7]["RewardProItem"][5]["Item"][1]["Id"] = 611127
	tStruggleUpPack_NoGiftServerAward[7]["RewardProItem"][5]["Item"][1]["Attr"] = "0 1"
	
	--  弓手
	tStruggleUpPack_NoGiftServerAward[7]["RewardProItem"][6] = {}
	tStruggleUpPack_NoGiftServerAward[7]["RewardProItem"][6]["Pro"] = {{40,45}}                    
	tStruggleUpPack_NoGiftServerAward[7]["RewardProItem"][6]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[7]["RewardProItem"][6]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[7]["RewardProItem"][6]["Item"][1]["Id"] =  613117
	tStruggleUpPack_NoGiftServerAward[7]["RewardProItem"][6]["Item"][1]["Attr"] = "0 1"
	
	--  道士
	tStruggleUpPack_NoGiftServerAward[7]["RewardProItem"][7] = {}
	tStruggleUpPack_NoGiftServerAward[7]["RewardProItem"][7]["Pro"] = {{100,145}}                    
	tStruggleUpPack_NoGiftServerAward[7]["RewardProItem"][7]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[7]["RewardProItem"][7]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[7]["RewardProItem"][7]["Item"][1]["Id"] = 421127
	tStruggleUpPack_NoGiftServerAward[7]["RewardProItem"][7]["Item"][1]["Attr"] = "0 1"
	
	--  铁扇门（160-165）
	tStruggleUpPack_NoGiftServerAward[7]["RewardProItem"][8] = {}
	tStruggleUpPack_NoGiftServerAward[7]["RewardProItem"][8]["Pro"] = {{160,165}}                    
	tStruggleUpPack_NoGiftServerAward[7]["RewardProItem"][8]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[7]["RewardProItem"][8]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[7]["RewardProItem"][8]["Item"][1]["Id"] = 626127
	tStruggleUpPack_NoGiftServerAward[7]["RewardProItem"][8]["Item"][1]["Attr"] = "0 1"
	
	--  拳师
	tStruggleUpPack_NoGiftServerAward[7]["RewardProItem"][9] = {}
	tStruggleUpPack_NoGiftServerAward[7]["RewardProItem"][9]["Pro"] = {{80,85}}                    
	tStruggleUpPack_NoGiftServerAward[7]["RewardProItem"][9]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[7]["RewardProItem"][9]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[7]["RewardProItem"][9]["Item"][1]["Id"] = 617127
	tStruggleUpPack_NoGiftServerAward[7]["RewardProItem"][9]["Item"][1]["Attr"] = "0 1"
	--    雷神（90-95）
	tStruggleUpPack_NoGiftServerAward[7]["RewardProItem"][10] = {}
	tStruggleUpPack_NoGiftServerAward[7]["RewardProItem"][10]["Pro"] = {{90,95}}                   
	tStruggleUpPack_NoGiftServerAward[7]["RewardProItem"][10]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[7]["RewardProItem"][10]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[7]["RewardProItem"][10]["Item"][1]["Id"] = 681127
	tStruggleUpPack_NoGiftServerAward[7]["RewardProItem"][10]["Item"][1]["Attr"] = "0 1"
	
	
	-- 70	上品武器、上品项链
	tStruggleUpPack_NoGiftServerAward[8] = {}
	tStruggleUpPack_NoGiftServerAward[8]["LogId"] = 12001075
	tStruggleUpPack_NoGiftServerAward[8]["RewardItem"] = {}
	tStruggleUpPack_NoGiftServerAward[8]["RewardItem"][1] = {}
	tStruggleUpPack_NoGiftServerAward[8]["RewardItem"][1]["Id"] = 120127
	tStruggleUpPack_NoGiftServerAward[8]["RewardItem"][1]["Attr"] = "0 1"
	--  战士
	tStruggleUpPack_NoGiftServerAward[8]["RewardProItem"] = {}
	tStruggleUpPack_NoGiftServerAward[8]["RewardProItem"][1] = {}
	tStruggleUpPack_NoGiftServerAward[8]["RewardProItem"][1]["Pro"] = {{20,25}}                    
	tStruggleUpPack_NoGiftServerAward[8]["RewardProItem"][1]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[8]["RewardProItem"][1]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[8]["RewardProItem"][1]["Item"][1]["Id"] = 561137
	tStruggleUpPack_NoGiftServerAward[8]["RewardProItem"][1]["Item"][1]["Attr"] = "0 1"
	
	--  勇士
	tStruggleUpPack_NoGiftServerAward[8]["RewardProItem"][2] = {}
	tStruggleUpPack_NoGiftServerAward[8]["RewardProItem"][2]["Pro"] = {{10,15}}                    
	tStruggleUpPack_NoGiftServerAward[8]["RewardProItem"][2]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[8]["RewardProItem"][2]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[8]["RewardProItem"][2]["Item"][1]["Id"] = 420137
	tStruggleUpPack_NoGiftServerAward[8]["RewardProItem"][2]["Item"][1]["Attr"] = "0 1"
	
	--  忍者
	tStruggleUpPack_NoGiftServerAward[8]["RewardProItem"][3] = {}
	tStruggleUpPack_NoGiftServerAward[8]["RewardProItem"][3]["Pro"] = {{50,55}}                    
	tStruggleUpPack_NoGiftServerAward[8]["RewardProItem"][3]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[8]["RewardProItem"][3]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[8]["RewardProItem"][3]["Item"][1]["Id"] = 601137
	tStruggleUpPack_NoGiftServerAward[8]["RewardProItem"][3]["Item"][1]["Attr"] = "0 1"
	
	--  武僧
	tStruggleUpPack_NoGiftServerAward[8]["RewardProItem"][4] = {}
	tStruggleUpPack_NoGiftServerAward[8]["RewardProItem"][4]["Pro"] = {{60,65}}                    
	tStruggleUpPack_NoGiftServerAward[8]["RewardProItem"][4]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[8]["RewardProItem"][4]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[8]["RewardProItem"][4]["Item"][1]["Id"] = 610137
	tStruggleUpPack_NoGiftServerAward[8]["RewardProItem"][4]["Item"][1]["Attr"] = "0 1"
	
	--  海盗
	tStruggleUpPack_NoGiftServerAward[8]["RewardProItem"][5] = {}
	tStruggleUpPack_NoGiftServerAward[8]["RewardProItem"][5]["Pro"] = {{70,75}}                    
	tStruggleUpPack_NoGiftServerAward[8]["RewardProItem"][5]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[8]["RewardProItem"][5]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[8]["RewardProItem"][5]["Item"][1]["Id"] = 611137
	tStruggleUpPack_NoGiftServerAward[8]["RewardProItem"][5]["Item"][1]["Attr"] = "0 1"
	
	--  弓手
	tStruggleUpPack_NoGiftServerAward[8]["RewardProItem"][6] = {}
	tStruggleUpPack_NoGiftServerAward[8]["RewardProItem"][6]["Pro"] = {{40,45}}                    
	tStruggleUpPack_NoGiftServerAward[8]["RewardProItem"][6]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[8]["RewardProItem"][6]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[8]["RewardProItem"][6]["Item"][1]["Id"] =  613127
	tStruggleUpPack_NoGiftServerAward[8]["RewardProItem"][6]["Item"][1]["Attr"] = "0 1"
	
	--  道士
	tStruggleUpPack_NoGiftServerAward[8]["RewardProItem"][7] = {}
	tStruggleUpPack_NoGiftServerAward[8]["RewardProItem"][7]["Pro"] = {{100,145}}                    
	tStruggleUpPack_NoGiftServerAward[8]["RewardProItem"][7]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[8]["RewardProItem"][7]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[8]["RewardProItem"][7]["Item"][1]["Id"] = 421137
	tStruggleUpPack_NoGiftServerAward[8]["RewardProItem"][7]["Item"][1]["Attr"] = "0 1"
	
	--  铁扇门（160-165）
	tStruggleUpPack_NoGiftServerAward[8]["RewardProItem"][8] = {}
	tStruggleUpPack_NoGiftServerAward[8]["RewardProItem"][8]["Pro"] = {{160,165}}                    
	tStruggleUpPack_NoGiftServerAward[8]["RewardProItem"][8]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[8]["RewardProItem"][8]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[8]["RewardProItem"][8]["Item"][1]["Id"] = 626137
	tStruggleUpPack_NoGiftServerAward[8]["RewardProItem"][8]["Item"][1]["Attr"] = "0 1"
	
	--  拳师
	tStruggleUpPack_NoGiftServerAward[8]["RewardProItem"][9] = {}
	tStruggleUpPack_NoGiftServerAward[8]["RewardProItem"][9]["Pro"] = {{80,85}}                    
	tStruggleUpPack_NoGiftServerAward[8]["RewardProItem"][9]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[8]["RewardProItem"][9]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[8]["RewardProItem"][9]["Item"][1]["Id"] = 617137
	tStruggleUpPack_NoGiftServerAward[8]["RewardProItem"][9]["Item"][1]["Attr"] = "0 1"
	--    雷神（90-95）
	tStruggleUpPack_NoGiftServerAward[8]["RewardProItem"][10] = {}
	tStruggleUpPack_NoGiftServerAward[8]["RewardProItem"][10]["Pro"] = {{90,95}}                   
	tStruggleUpPack_NoGiftServerAward[8]["RewardProItem"][10]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[8]["RewardProItem"][10]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[8]["RewardProItem"][10]["Item"][1]["Id"] = 681137
	tStruggleUpPack_NoGiftServerAward[8]["RewardProItem"][10]["Item"][1]["Attr"] = "0 1"
	
	-- 75	上品武器
	tStruggleUpPack_NoGiftServerAward[9] = {}
	tStruggleUpPack_NoGiftServerAward[9]["LogId"] = 12001075
	--  战士
	tStruggleUpPack_NoGiftServerAward[9]["RewardProItem"] = {}
	tStruggleUpPack_NoGiftServerAward[9]["RewardProItem"][1] = {}
	tStruggleUpPack_NoGiftServerAward[9]["RewardProItem"][1]["Pro"] = {{20,25}}                    
	tStruggleUpPack_NoGiftServerAward[9]["RewardProItem"][1]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[9]["RewardProItem"][1]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[9]["RewardProItem"][1]["Item"][1]["Id"] = 561147
	tStruggleUpPack_NoGiftServerAward[9]["RewardProItem"][1]["Item"][1]["Attr"] = "0 1"
	
	--  勇士
	tStruggleUpPack_NoGiftServerAward[9]["RewardProItem"][2] = {}
	tStruggleUpPack_NoGiftServerAward[9]["RewardProItem"][2]["Pro"] = {{10,15}}                    
	tStruggleUpPack_NoGiftServerAward[9]["RewardProItem"][2]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[9]["RewardProItem"][2]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[9]["RewardProItem"][2]["Item"][1]["Id"] = 420147
	tStruggleUpPack_NoGiftServerAward[9]["RewardProItem"][2]["Item"][1]["Attr"] = "0 1"
	
	--  忍者
	tStruggleUpPack_NoGiftServerAward[9]["RewardProItem"][3] = {}
	tStruggleUpPack_NoGiftServerAward[9]["RewardProItem"][3]["Pro"] = {{50,55}}                    
	tStruggleUpPack_NoGiftServerAward[9]["RewardProItem"][3]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[9]["RewardProItem"][3]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[9]["RewardProItem"][3]["Item"][1]["Id"] = 601147
	tStruggleUpPack_NoGiftServerAward[9]["RewardProItem"][3]["Item"][1]["Attr"] = "0 1"
	
	--  武僧
	tStruggleUpPack_NoGiftServerAward[9]["RewardProItem"][4] = {}
	tStruggleUpPack_NoGiftServerAward[9]["RewardProItem"][4]["Pro"] = {{60,65}}                    
	tStruggleUpPack_NoGiftServerAward[9]["RewardProItem"][4]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[9]["RewardProItem"][4]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[9]["RewardProItem"][4]["Item"][1]["Id"] = 610147
	tStruggleUpPack_NoGiftServerAward[9]["RewardProItem"][4]["Item"][1]["Attr"] = "0 1"
	
	--  海盗
	tStruggleUpPack_NoGiftServerAward[9]["RewardProItem"][5] = {}
	tStruggleUpPack_NoGiftServerAward[9]["RewardProItem"][5]["Pro"] = {{70,75}}                    
	tStruggleUpPack_NoGiftServerAward[9]["RewardProItem"][5]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[9]["RewardProItem"][5]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[9]["RewardProItem"][5]["Item"][1]["Id"] = 611147
	tStruggleUpPack_NoGiftServerAward[9]["RewardProItem"][5]["Item"][1]["Attr"] = "0 1"
	
	--  弓手
	tStruggleUpPack_NoGiftServerAward[9]["RewardProItem"][6] = {}
	tStruggleUpPack_NoGiftServerAward[9]["RewardProItem"][6]["Pro"] = {{40,45}}                    
	tStruggleUpPack_NoGiftServerAward[9]["RewardProItem"][6]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[9]["RewardProItem"][6]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[9]["RewardProItem"][6]["Item"][1]["Id"] =  613137
	tStruggleUpPack_NoGiftServerAward[9]["RewardProItem"][6]["Item"][1]["Attr"] = "0 1"
	
	--  道士
	tStruggleUpPack_NoGiftServerAward[9]["RewardProItem"][7] = {}
	tStruggleUpPack_NoGiftServerAward[9]["RewardProItem"][7]["Pro"] = {{100,145}}                    
	tStruggleUpPack_NoGiftServerAward[9]["RewardProItem"][7]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[9]["RewardProItem"][7]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[9]["RewardProItem"][7]["Item"][1]["Id"] = 421147
	tStruggleUpPack_NoGiftServerAward[9]["RewardProItem"][7]["Item"][1]["Attr"] = "0 1"
	
	--  铁扇门（160-165）
	tStruggleUpPack_NoGiftServerAward[9]["RewardProItem"][8] = {}
	tStruggleUpPack_NoGiftServerAward[9]["RewardProItem"][8]["Pro"] = {{160,165}}                    
	tStruggleUpPack_NoGiftServerAward[9]["RewardProItem"][8]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[9]["RewardProItem"][8]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[9]["RewardProItem"][8]["Item"][1]["Id"] = 626147
	tStruggleUpPack_NoGiftServerAward[9]["RewardProItem"][8]["Item"][1]["Attr"] = "0 1"
	
	--  拳师
	tStruggleUpPack_NoGiftServerAward[9]["RewardProItem"][9] = {}
	tStruggleUpPack_NoGiftServerAward[9]["RewardProItem"][9]["Pro"] = {{80,85}}                    
	tStruggleUpPack_NoGiftServerAward[9]["RewardProItem"][9]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[9]["RewardProItem"][9]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[9]["RewardProItem"][9]["Item"][1]["Id"] = 617147
	tStruggleUpPack_NoGiftServerAward[9]["RewardProItem"][9]["Item"][1]["Attr"] = "0 1"
	--    雷神（90-95）
	tStruggleUpPack_NoGiftServerAward[9]["RewardProItem"][10] = {}
	tStruggleUpPack_NoGiftServerAward[9]["RewardProItem"][10]["Pro"] = {{90,95}}                   
	tStruggleUpPack_NoGiftServerAward[9]["RewardProItem"][10]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[9]["RewardProItem"][10]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[9]["RewardProItem"][10]["Item"][1]["Id"] = 681147
	tStruggleUpPack_NoGiftServerAward[9]["RewardProItem"][10]["Item"][1]["Attr"] = "0 1"
	
	-- 80	上品武器、上品鞋子
	tStruggleUpPack_NoGiftServerAward[10] = {}
	tStruggleUpPack_NoGiftServerAward[10]["LogId"] = 12001075
	tStruggleUpPack_NoGiftServerAward[10]["RewardItem"] = {}
	tStruggleUpPack_NoGiftServerAward[10]["RewardItem"][1] = {}
	tStruggleUpPack_NoGiftServerAward[10]["RewardItem"][1]["Id"] = 160157
	tStruggleUpPack_NoGiftServerAward[10]["RewardItem"][1]["Attr"] = "0 1"
	--  战士
	tStruggleUpPack_NoGiftServerAward[10]["RewardProItem"] = {}
	tStruggleUpPack_NoGiftServerAward[10]["RewardProItem"][1] = {}
	tStruggleUpPack_NoGiftServerAward[10]["RewardProItem"][1]["Pro"] = {{20,25}}                    
	tStruggleUpPack_NoGiftServerAward[10]["RewardProItem"][1]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[10]["RewardProItem"][1]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[10]["RewardProItem"][1]["Item"][1]["Id"] = 561157
	tStruggleUpPack_NoGiftServerAward[10]["RewardProItem"][1]["Item"][1]["Attr"] = "0 1"
	
	--  勇士
	tStruggleUpPack_NoGiftServerAward[10]["RewardProItem"][2] = {}
	tStruggleUpPack_NoGiftServerAward[10]["RewardProItem"][2]["Pro"] = {{10,15}}                    
	tStruggleUpPack_NoGiftServerAward[10]["RewardProItem"][2]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[10]["RewardProItem"][2]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[10]["RewardProItem"][2]["Item"][1]["Id"] = 420157
	tStruggleUpPack_NoGiftServerAward[10]["RewardProItem"][2]["Item"][1]["Attr"] = "0 1"
	
	--  忍者
	tStruggleUpPack_NoGiftServerAward[10]["RewardProItem"][3] = {}
	tStruggleUpPack_NoGiftServerAward[10]["RewardProItem"][3]["Pro"] = {{50,55}}                    
	tStruggleUpPack_NoGiftServerAward[10]["RewardProItem"][3]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[10]["RewardProItem"][3]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[10]["RewardProItem"][3]["Item"][1]["Id"] = 601157
	tStruggleUpPack_NoGiftServerAward[10]["RewardProItem"][3]["Item"][1]["Attr"] = "0 1"
	
	--  武僧
	tStruggleUpPack_NoGiftServerAward[10]["RewardProItem"][4] = {}
	tStruggleUpPack_NoGiftServerAward[10]["RewardProItem"][4]["Pro"] = {{60,65}}                    
	tStruggleUpPack_NoGiftServerAward[10]["RewardProItem"][4]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[10]["RewardProItem"][4]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[10]["RewardProItem"][4]["Item"][1]["Id"] = 610157
	tStruggleUpPack_NoGiftServerAward[10]["RewardProItem"][4]["Item"][1]["Attr"] = "0 1"
	
	--  海盗
	tStruggleUpPack_NoGiftServerAward[10]["RewardProItem"][5] = {}
	tStruggleUpPack_NoGiftServerAward[10]["RewardProItem"][5]["Pro"] = {{70,75}}                    
	tStruggleUpPack_NoGiftServerAward[10]["RewardProItem"][5]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[10]["RewardProItem"][5]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[10]["RewardProItem"][5]["Item"][1]["Id"] = 611157
	tStruggleUpPack_NoGiftServerAward[10]["RewardProItem"][5]["Item"][1]["Attr"] = "0 1"
	
	--  弓手
	tStruggleUpPack_NoGiftServerAward[10]["RewardProItem"][6] = {}
	tStruggleUpPack_NoGiftServerAward[10]["RewardProItem"][6]["Pro"] = {{40,45}}                    
	tStruggleUpPack_NoGiftServerAward[10]["RewardProItem"][6]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[10]["RewardProItem"][6]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[10]["RewardProItem"][6]["Item"][1]["Id"] =  613147
	tStruggleUpPack_NoGiftServerAward[10]["RewardProItem"][6]["Item"][1]["Attr"] = "0 1"
	
	--  道士
	tStruggleUpPack_NoGiftServerAward[10]["RewardProItem"][7] = {}
	tStruggleUpPack_NoGiftServerAward[10]["RewardProItem"][7]["Pro"] = {{100,145}}                    
	tStruggleUpPack_NoGiftServerAward[10]["RewardProItem"][7]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[10]["RewardProItem"][7]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[10]["RewardProItem"][7]["Item"][1]["Id"] = 421157
	tStruggleUpPack_NoGiftServerAward[10]["RewardProItem"][7]["Item"][1]["Attr"] = "0 1"
	
	--  铁扇门（160-165）
	tStruggleUpPack_NoGiftServerAward[10]["RewardProItem"][8] = {}
	tStruggleUpPack_NoGiftServerAward[10]["RewardProItem"][8]["Pro"] = {{160,165}}                    
	tStruggleUpPack_NoGiftServerAward[10]["RewardProItem"][8]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[10]["RewardProItem"][8]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[10]["RewardProItem"][8]["Item"][1]["Id"] = 626157
	tStruggleUpPack_NoGiftServerAward[10]["RewardProItem"][8]["Item"][1]["Attr"] = "0 1"
	
	--  拳师
	tStruggleUpPack_NoGiftServerAward[10]["RewardProItem"][9] = {}
	tStruggleUpPack_NoGiftServerAward[10]["RewardProItem"][9]["Pro"] = {{80,85}}                    
	tStruggleUpPack_NoGiftServerAward[10]["RewardProItem"][9]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[10]["RewardProItem"][9]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[10]["RewardProItem"][9]["Item"][1]["Id"] = 617157
	tStruggleUpPack_NoGiftServerAward[10]["RewardProItem"][9]["Item"][1]["Attr"] = "0 1"
	--    雷神（90-95）
	tStruggleUpPack_NoGiftServerAward[10]["RewardProItem"][10] = {}
	tStruggleUpPack_NoGiftServerAward[10]["RewardProItem"][10]["Pro"] = {{90,95}}                   
	tStruggleUpPack_NoGiftServerAward[10]["RewardProItem"][10]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[10]["RewardProItem"][10]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[10]["RewardProItem"][10]["Item"][1]["Id"] = 681157
	tStruggleUpPack_NoGiftServerAward[10]["RewardProItem"][10]["Item"][1]["Attr"] = "0 1"
	
	-- 85	上品武器
	tStruggleUpPack_NoGiftServerAward[11] = {}
	tStruggleUpPack_NoGiftServerAward[11]["LogId"] = 12001075
	--  战士
	tStruggleUpPack_NoGiftServerAward[11]["RewardProItem"] = {}
	tStruggleUpPack_NoGiftServerAward[11]["RewardProItem"][1] = {}
	tStruggleUpPack_NoGiftServerAward[11]["RewardProItem"][1]["Pro"] = {{20,25}}                    
	tStruggleUpPack_NoGiftServerAward[11]["RewardProItem"][1]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[11]["RewardProItem"][1]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[11]["RewardProItem"][1]["Item"][1]["Id"] = 561167
	tStruggleUpPack_NoGiftServerAward[11]["RewardProItem"][1]["Item"][1]["Attr"] = "0 1"
	
	--  勇士
	tStruggleUpPack_NoGiftServerAward[11]["RewardProItem"][2] = {}
	tStruggleUpPack_NoGiftServerAward[11]["RewardProItem"][2]["Pro"] = {{10,15}}                    
	tStruggleUpPack_NoGiftServerAward[11]["RewardProItem"][2]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[11]["RewardProItem"][2]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[11]["RewardProItem"][2]["Item"][1]["Id"] = 420167
	tStruggleUpPack_NoGiftServerAward[11]["RewardProItem"][2]["Item"][1]["Attr"] = "0 1"
	
	--  忍者
	tStruggleUpPack_NoGiftServerAward[11]["RewardProItem"][3] = {}
	tStruggleUpPack_NoGiftServerAward[11]["RewardProItem"][3]["Pro"] = {{50,55}}                    
	tStruggleUpPack_NoGiftServerAward[11]["RewardProItem"][3]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[11]["RewardProItem"][3]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[11]["RewardProItem"][3]["Item"][1]["Id"] = 601167
	tStruggleUpPack_NoGiftServerAward[11]["RewardProItem"][3]["Item"][1]["Attr"] = "0 1"
	
	--  武僧
	tStruggleUpPack_NoGiftServerAward[11]["RewardProItem"][4] = {}
	tStruggleUpPack_NoGiftServerAward[11]["RewardProItem"][4]["Pro"] = {{60,65}}                    
	tStruggleUpPack_NoGiftServerAward[11]["RewardProItem"][4]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[11]["RewardProItem"][4]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[11]["RewardProItem"][4]["Item"][1]["Id"] = 610167
	tStruggleUpPack_NoGiftServerAward[11]["RewardProItem"][4]["Item"][1]["Attr"] = "0 1"
	
	--  海盗
	tStruggleUpPack_NoGiftServerAward[11]["RewardProItem"][5] = {}
	tStruggleUpPack_NoGiftServerAward[11]["RewardProItem"][5]["Pro"] = {{70,75}}                    
	tStruggleUpPack_NoGiftServerAward[11]["RewardProItem"][5]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[11]["RewardProItem"][5]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[11]["RewardProItem"][5]["Item"][1]["Id"] = 611167
	tStruggleUpPack_NoGiftServerAward[11]["RewardProItem"][5]["Item"][1]["Attr"] = "0 1"
	
	--  弓手
	tStruggleUpPack_NoGiftServerAward[11]["RewardProItem"][6] = {}
	tStruggleUpPack_NoGiftServerAward[11]["RewardProItem"][6]["Pro"] = {{40,45}}                    
	tStruggleUpPack_NoGiftServerAward[11]["RewardProItem"][6]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[11]["RewardProItem"][6]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[11]["RewardProItem"][6]["Item"][1]["Id"] =  613157
	tStruggleUpPack_NoGiftServerAward[11]["RewardProItem"][6]["Item"][1]["Attr"] = "0 1"
	
	--  道士
	tStruggleUpPack_NoGiftServerAward[11]["RewardProItem"][7] = {}
	tStruggleUpPack_NoGiftServerAward[11]["RewardProItem"][7]["Pro"] = {{100,145}}                    
	tStruggleUpPack_NoGiftServerAward[11]["RewardProItem"][7]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[11]["RewardProItem"][7]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[11]["RewardProItem"][7]["Item"][1]["Id"] = 421167
	tStruggleUpPack_NoGiftServerAward[11]["RewardProItem"][7]["Item"][1]["Attr"] = "0 1"
	
	--  铁扇门（160-165）
	tStruggleUpPack_NoGiftServerAward[11]["RewardProItem"][8] = {}
	tStruggleUpPack_NoGiftServerAward[11]["RewardProItem"][8]["Pro"] = {{160,165}}                    
	tStruggleUpPack_NoGiftServerAward[11]["RewardProItem"][8]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[11]["RewardProItem"][8]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[11]["RewardProItem"][8]["Item"][1]["Id"] = 626167
	tStruggleUpPack_NoGiftServerAward[11]["RewardProItem"][8]["Item"][1]["Attr"] = "0 1"
	
	--  拳师
	tStruggleUpPack_NoGiftServerAward[11]["RewardProItem"][9] = {}
	tStruggleUpPack_NoGiftServerAward[11]["RewardProItem"][9]["Pro"] = {{80,85}}                    
	tStruggleUpPack_NoGiftServerAward[11]["RewardProItem"][9]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[11]["RewardProItem"][9]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[11]["RewardProItem"][9]["Item"][1]["Id"] = 617167
	tStruggleUpPack_NoGiftServerAward[11]["RewardProItem"][9]["Item"][1]["Attr"] = "0 1"
	--    雷神（90-95）
	tStruggleUpPack_NoGiftServerAward[11]["RewardProItem"][10] = {}
	tStruggleUpPack_NoGiftServerAward[11]["RewardProItem"][10]["Pro"] = {{90,95}}                   
	tStruggleUpPack_NoGiftServerAward[11]["RewardProItem"][10]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[11]["RewardProItem"][10]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[11]["RewardProItem"][10]["Item"][1]["Id"] = 681167
	tStruggleUpPack_NoGiftServerAward[11]["RewardProItem"][10]["Item"][1]["Attr"] = "0 1"
	
	-- 90	上品武器、上品戒指
	tStruggleUpPack_NoGiftServerAward[12] = {}
	tStruggleUpPack_NoGiftServerAward[12]["LogId"] = 12001075
	
	--  战士
	tStruggleUpPack_NoGiftServerAward[12]["RewardProItem"] = {}
	tStruggleUpPack_NoGiftServerAward[12]["RewardProItem"][1] = {}
	tStruggleUpPack_NoGiftServerAward[12]["RewardProItem"][1]["Pro"] = {{20,25}}                    
	tStruggleUpPack_NoGiftServerAward[12]["RewardProItem"][1]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[12]["RewardProItem"][1]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[12]["RewardProItem"][1]["Item"][1]["Id"] = 561177
	tStruggleUpPack_NoGiftServerAward[12]["RewardProItem"][1]["Item"][1]["Attr"] = "0 1"
	tStruggleUpPack_NoGiftServerAward[12]["RewardProItem"][1]["Item"][2] = {}
	tStruggleUpPack_NoGiftServerAward[12]["RewardProItem"][1]["Item"][2]["Id"] = 150177
	tStruggleUpPack_NoGiftServerAward[12]["RewardProItem"][1]["Item"][2]["Attr"] = "0 1"
	
	--  勇士
	tStruggleUpPack_NoGiftServerAward[12]["RewardProItem"][2] = {}
	tStruggleUpPack_NoGiftServerAward[12]["RewardProItem"][2]["Pro"] = {{10,15}}                    
	tStruggleUpPack_NoGiftServerAward[12]["RewardProItem"][2]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[12]["RewardProItem"][2]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[12]["RewardProItem"][2]["Item"][1]["Id"] = 420177
	tStruggleUpPack_NoGiftServerAward[12]["RewardProItem"][2]["Item"][1]["Attr"] = "0 1"
	tStruggleUpPack_NoGiftServerAward[12]["RewardProItem"][2]["Item"][2] = {}
	tStruggleUpPack_NoGiftServerAward[12]["RewardProItem"][2]["Item"][2]["Id"] = 150177
	tStruggleUpPack_NoGiftServerAward[12]["RewardProItem"][2]["Item"][2]["Attr"] = "0 1"
	
	--  忍者
	tStruggleUpPack_NoGiftServerAward[12]["RewardProItem"][3] = {}
	tStruggleUpPack_NoGiftServerAward[12]["RewardProItem"][3]["Pro"] = {{50,55}}                    
	tStruggleUpPack_NoGiftServerAward[12]["RewardProItem"][3]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[12]["RewardProItem"][3]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[12]["RewardProItem"][3]["Item"][1]["Id"] = 601177
	tStruggleUpPack_NoGiftServerAward[12]["RewardProItem"][3]["Item"][1]["Attr"] = "0 1"
	tStruggleUpPack_NoGiftServerAward[12]["RewardProItem"][3]["Item"][2] = {}
	tStruggleUpPack_NoGiftServerAward[12]["RewardProItem"][3]["Item"][2]["Id"] = 150177
	tStruggleUpPack_NoGiftServerAward[12]["RewardProItem"][3]["Item"][2]["Attr"] = "0 1"
	
	--  武僧
	tStruggleUpPack_NoGiftServerAward[12]["RewardProItem"][4] = {}
	tStruggleUpPack_NoGiftServerAward[12]["RewardProItem"][4]["Pro"] = {{60,65}}                    
	tStruggleUpPack_NoGiftServerAward[12]["RewardProItem"][4]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[12]["RewardProItem"][4]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[12]["RewardProItem"][4]["Item"][1]["Id"] = 610177
	tStruggleUpPack_NoGiftServerAward[12]["RewardProItem"][4]["Item"][1]["Attr"] = "0 1"
	tStruggleUpPack_NoGiftServerAward[12]["RewardProItem"][4]["Item"][2] = {}
	tStruggleUpPack_NoGiftServerAward[12]["RewardProItem"][4]["Item"][2]["Id"] = 150177
	tStruggleUpPack_NoGiftServerAward[12]["RewardProItem"][4]["Item"][2]["Attr"] = "0 1"
	
	--  海盗
	tStruggleUpPack_NoGiftServerAward[12]["RewardProItem"][5] = {}
	tStruggleUpPack_NoGiftServerAward[12]["RewardProItem"][5]["Pro"] = {{70,75}}                    
	tStruggleUpPack_NoGiftServerAward[12]["RewardProItem"][5]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[12]["RewardProItem"][5]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[12]["RewardProItem"][5]["Item"][1]["Id"] = 611177
	tStruggleUpPack_NoGiftServerAward[12]["RewardProItem"][5]["Item"][1]["Attr"] = "0 1"
	tStruggleUpPack_NoGiftServerAward[12]["RewardProItem"][5]["Item"][2] = {}
	tStruggleUpPack_NoGiftServerAward[12]["RewardProItem"][5]["Item"][2]["Id"] = 150177
	tStruggleUpPack_NoGiftServerAward[12]["RewardProItem"][5]["Item"][2]["Attr"] = "0 1"
	
	--  弓手
	tStruggleUpPack_NoGiftServerAward[12]["RewardProItem"][6] = {}
	tStruggleUpPack_NoGiftServerAward[12]["RewardProItem"][6]["Pro"] = {{40,45}}                    
	tStruggleUpPack_NoGiftServerAward[12]["RewardProItem"][6]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[12]["RewardProItem"][6]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[12]["RewardProItem"][6]["Item"][1]["Id"] =  613167
	tStruggleUpPack_NoGiftServerAward[12]["RewardProItem"][6]["Item"][1]["Attr"] = "0 1"
	tStruggleUpPack_NoGiftServerAward[12]["RewardProItem"][6]["Item"][2] = {}
	tStruggleUpPack_NoGiftServerAward[12]["RewardProItem"][6]["Item"][2]["Id"] =  150177
	tStruggleUpPack_NoGiftServerAward[12]["RewardProItem"][6]["Item"][2]["Attr"] = "0 1"
	
	--  道士
	tStruggleUpPack_NoGiftServerAward[12]["RewardProItem"][7] = {}
	tStruggleUpPack_NoGiftServerAward[12]["RewardProItem"][7]["Pro"] = {{100,145}}                    
	tStruggleUpPack_NoGiftServerAward[12]["RewardProItem"][7]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[12]["RewardProItem"][7]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[12]["RewardProItem"][7]["Item"][1]["Id"] = 421177
	tStruggleUpPack_NoGiftServerAward[12]["RewardProItem"][7]["Item"][1]["Attr"] = "0 1"
	tStruggleUpPack_NoGiftServerAward[12]["RewardProItem"][7]["Item"][2] = {}
	tStruggleUpPack_NoGiftServerAward[12]["RewardProItem"][7]["Item"][2]["Id"] = 152167
	tStruggleUpPack_NoGiftServerAward[12]["RewardProItem"][7]["Item"][2]["Attr"] = "0 1"
	
	--  铁扇门（160-165）
	tStruggleUpPack_NoGiftServerAward[12]["RewardProItem"][8] = {}
	tStruggleUpPack_NoGiftServerAward[12]["RewardProItem"][8]["Pro"] = {{160,165}}                    
	tStruggleUpPack_NoGiftServerAward[12]["RewardProItem"][8]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[12]["RewardProItem"][8]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[12]["RewardProItem"][8]["Item"][1]["Id"] = 626177
	tStruggleUpPack_NoGiftServerAward[12]["RewardProItem"][8]["Item"][1]["Attr"] = "0 1"
	tStruggleUpPack_NoGiftServerAward[12]["RewardProItem"][8]["Item"][2] = {}
	tStruggleUpPack_NoGiftServerAward[12]["RewardProItem"][8]["Item"][2]["Id"] = 150177
	tStruggleUpPack_NoGiftServerAward[12]["RewardProItem"][8]["Item"][2]["Attr"] = "0 1"
	
	--  拳师
	tStruggleUpPack_NoGiftServerAward[12]["RewardProItem"][9] = {}
	tStruggleUpPack_NoGiftServerAward[12]["RewardProItem"][9]["Pro"] = {{80,85}}                    
	tStruggleUpPack_NoGiftServerAward[12]["RewardProItem"][9]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[12]["RewardProItem"][9]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[12]["RewardProItem"][9]["Item"][1]["Id"] = 617177
	tStruggleUpPack_NoGiftServerAward[12]["RewardProItem"][9]["Item"][1]["Attr"] = "0 1"
	tStruggleUpPack_NoGiftServerAward[12]["RewardProItem"][9]["Item"][2] = {}
	tStruggleUpPack_NoGiftServerAward[12]["RewardProItem"][9]["Item"][2]["Id"] = 150177
	tStruggleUpPack_NoGiftServerAward[12]["RewardProItem"][9]["Item"][2]["Attr"] = "0 1"
	--    雷神（90-95）
	tStruggleUpPack_NoGiftServerAward[12]["RewardProItem"][10] = {}
	tStruggleUpPack_NoGiftServerAward[12]["RewardProItem"][10]["Pro"] = {{90,95}}                   
	tStruggleUpPack_NoGiftServerAward[12]["RewardProItem"][10]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[12]["RewardProItem"][10]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[12]["RewardProItem"][10]["Item"][1]["Id"] = 681177
	tStruggleUpPack_NoGiftServerAward[12]["RewardProItem"][10]["Item"][1]["Attr"] = "0 1"
	tStruggleUpPack_NoGiftServerAward[12]["RewardProItem"][10]["Item"][2] = {}
	tStruggleUpPack_NoGiftServerAward[12]["RewardProItem"][10]["Item"][2]["Id"] = 150177
	tStruggleUpPack_NoGiftServerAward[12]["RewardProItem"][10]["Item"][2]["Attr"] = "0 1"
	
	
	-- 100	上品扇子（赠）、3个法宝挑战令（扇、塔、翅）		挑战令去掉，改成直接给精品扇子(赠）、宝塔(赠）201008、202008
	tStruggleUpPack_NoGiftServerAward[13] = {}
	tStruggleUpPack_NoGiftServerAward[13]["LogId"] = 12001075
	tStruggleUpPack_NoGiftServerAward[13]["RewardItem"] = {}
	tStruggleUpPack_NoGiftServerAward[13]["RewardItem"][1] = {}
	tStruggleUpPack_NoGiftServerAward[13]["RewardItem"][1]["Id"] = 201008
	tStruggleUpPack_NoGiftServerAward[13]["RewardItem"][1]["Attr"] = "0 1 3"
	tStruggleUpPack_NoGiftServerAward[13]["RewardItem"][2] = {}
	tStruggleUpPack_NoGiftServerAward[13]["RewardItem"][2]["Id"] = 202008 
	tStruggleUpPack_NoGiftServerAward[13]["RewardItem"][2]["Attr"] = "0 1 3"
	
	
-- 110	精品衣服		加一个精品翅膀(赠）204008
	tStruggleUpPack_NoGiftServerAward[14] = {}
	tStruggleUpPack_NoGiftServerAward[14]["LogId"] = 12001075
	tStruggleUpPack_NoGiftServerAward[14]["RewardItem"] = {}
	tStruggleUpPack_NoGiftServerAward[14]["RewardItem"][1] = {}
	tStruggleUpPack_NoGiftServerAward[14]["RewardItem"][1]["Id"] = 204008
	tStruggleUpPack_NoGiftServerAward[14]["RewardItem"][1]["Attr"] = "0 1 3"
	--  战士
	tStruggleUpPack_NoGiftServerAward[14]["RewardProItem"] = {}
	tStruggleUpPack_NoGiftServerAward[14]["RewardProItem"][1] = {}
	tStruggleUpPack_NoGiftServerAward[14]["RewardProItem"][1]["Pro"] = {{20,25}}                    
	tStruggleUpPack_NoGiftServerAward[14]["RewardProItem"][1]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[14]["RewardProItem"][1]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[14]["RewardProItem"][1]["Item"][1]["Id"] = 131098
	tStruggleUpPack_NoGiftServerAward[14]["RewardProItem"][1]["Item"][1]["Attr"] = "0 1"
	
	--  勇士
	tStruggleUpPack_NoGiftServerAward[14]["RewardProItem"][2] = {}
	tStruggleUpPack_NoGiftServerAward[14]["RewardProItem"][2]["Pro"] = {{10,15}}                    
	tStruggleUpPack_NoGiftServerAward[14]["RewardProItem"][2]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[14]["RewardProItem"][2]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[14]["RewardProItem"][2]["Item"][1]["Id"] = 130098
	tStruggleUpPack_NoGiftServerAward[14]["RewardProItem"][2]["Item"][1]["Attr"] = "0 1"
	
	--  忍者
	tStruggleUpPack_NoGiftServerAward[14]["RewardProItem"][3] = {}
	tStruggleUpPack_NoGiftServerAward[14]["RewardProItem"][3]["Pro"] = {{50,55}}                    
	tStruggleUpPack_NoGiftServerAward[14]["RewardProItem"][3]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[14]["RewardProItem"][3]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[14]["RewardProItem"][3]["Item"][1]["Id"] = 135098
	tStruggleUpPack_NoGiftServerAward[14]["RewardProItem"][3]["Item"][1]["Attr"] = "0 1"
	
	--  武僧
	tStruggleUpPack_NoGiftServerAward[14]["RewardProItem"][4] = {}
	tStruggleUpPack_NoGiftServerAward[14]["RewardProItem"][4]["Pro"] = {{60,65}}                    
	tStruggleUpPack_NoGiftServerAward[14]["RewardProItem"][4]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[14]["RewardProItem"][4]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[14]["RewardProItem"][4]["Item"][1]["Id"] = 136098
	tStruggleUpPack_NoGiftServerAward[14]["RewardProItem"][4]["Item"][1]["Attr"] = "0 1"
	                      
	--  海盗              
	tStruggleUpPack_NoGiftServerAward[14]["RewardProItem"][5] = {}
	tStruggleUpPack_NoGiftServerAward[14]["RewardProItem"][5]["Pro"] = {{70,75}}                    
	tStruggleUpPack_NoGiftServerAward[14]["RewardProItem"][5]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[14]["RewardProItem"][5]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[14]["RewardProItem"][5]["Item"][1]["Id"] = 139098
	tStruggleUpPack_NoGiftServerAward[14]["RewardProItem"][5]["Item"][1]["Attr"] = "0 1"
	                      
	--  弓手              
	tStruggleUpPack_NoGiftServerAward[14]["RewardProItem"][6] = {}
	tStruggleUpPack_NoGiftServerAward[14]["RewardProItem"][6]["Pro"] = {{40,45}}                    
	tStruggleUpPack_NoGiftServerAward[14]["RewardProItem"][6]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[14]["RewardProItem"][6]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[14]["RewardProItem"][6]["Item"][1]["Id"] =  133088
	tStruggleUpPack_NoGiftServerAward[14]["RewardProItem"][6]["Item"][1]["Attr"] = "0 1"
	                      
	--  道士              
	tStruggleUpPack_NoGiftServerAward[14]["RewardProItem"][7] = {}
	tStruggleUpPack_NoGiftServerAward[14]["RewardProItem"][7]["Pro"] = {{100,145}}                    
	tStruggleUpPack_NoGiftServerAward[14]["RewardProItem"][7]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[14]["RewardProItem"][7]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[14]["RewardProItem"][7]["Item"][1]["Id"] = 134098
	tStruggleUpPack_NoGiftServerAward[14]["RewardProItem"][7]["Item"][1]["Attr"] = "0 1"
	                      
	--  铁扇门（160-165） 
	tStruggleUpPack_NoGiftServerAward[14]["RewardProItem"][8] = {}
	tStruggleUpPack_NoGiftServerAward[14]["RewardProItem"][8]["Pro"] = {{160,165}}                    
	tStruggleUpPack_NoGiftServerAward[14]["RewardProItem"][8]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[14]["RewardProItem"][8]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[14]["RewardProItem"][8]["Item"][1]["Id"] = 101098
	tStruggleUpPack_NoGiftServerAward[14]["RewardProItem"][8]["Item"][1]["Attr"] = "0 1"
	                      
	--  拳师              
	tStruggleUpPack_NoGiftServerAward[14]["RewardProItem"][9] = {}
	tStruggleUpPack_NoGiftServerAward[14]["RewardProItem"][9]["Pro"] = {{80,85}}                    
	tStruggleUpPack_NoGiftServerAward[14]["RewardProItem"][9]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[14]["RewardProItem"][9]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[14]["RewardProItem"][9]["Item"][1]["Id"] = 138098
	tStruggleUpPack_NoGiftServerAward[14]["RewardProItem"][9]["Item"][1]["Attr"] = "0 1"
	--  雷神              
	tStruggleUpPack_NoGiftServerAward[14]["RewardProItem"][10] = {}
	tStruggleUpPack_NoGiftServerAward[14]["RewardProItem"][10]["Pro"] = {{90,95}}                    
	tStruggleUpPack_NoGiftServerAward[14]["RewardProItem"][10]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[14]["RewardProItem"][10]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[14]["RewardProItem"][10]["Item"][1]["Id"] = 102098
	tStruggleUpPack_NoGiftServerAward[14]["RewardProItem"][10]["Item"][1]["Attr"] = "0 1"


-- 120	精品武器（赠）、涅槃灵石礼包（20T开启）7天时效		武器改成非赠，涅槃灵石礼包去掉
	tStruggleUpPack_NoGiftServerAward[15] = {}
	tStruggleUpPack_NoGiftServerAward[15]["LogId"] = 12001075
	
	--  战士
	tStruggleUpPack_NoGiftServerAward[15]["RewardProItem"] = {}
	tStruggleUpPack_NoGiftServerAward[15]["RewardProItem"][1] = {}
	tStruggleUpPack_NoGiftServerAward[15]["RewardProItem"][1]["Pro"] = {{20,25}}                    
	tStruggleUpPack_NoGiftServerAward[15]["RewardProItem"][1]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[15]["RewardProItem"][1]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[15]["RewardProItem"][1]["Item"][1]["Id"] = 561238
	tStruggleUpPack_NoGiftServerAward[15]["RewardProItem"][1]["Item"][1]["Attr"] = "0 1"
	
	--  勇士
	tStruggleUpPack_NoGiftServerAward[15]["RewardProItem"][2] = {}
	tStruggleUpPack_NoGiftServerAward[15]["RewardProItem"][2]["Pro"] = {{10,15}}                    
	tStruggleUpPack_NoGiftServerAward[15]["RewardProItem"][2]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[15]["RewardProItem"][2]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[15]["RewardProItem"][2]["Item"][1]["Id"] = 420238
	tStruggleUpPack_NoGiftServerAward[15]["RewardProItem"][2]["Item"][1]["Attr"] = "0 1"
	
	--  忍者
	tStruggleUpPack_NoGiftServerAward[15]["RewardProItem"][3] = {}
	tStruggleUpPack_NoGiftServerAward[15]["RewardProItem"][3]["Pro"] = {{50,55}}                    
	tStruggleUpPack_NoGiftServerAward[15]["RewardProItem"][3]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[15]["RewardProItem"][3]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[15]["RewardProItem"][3]["Item"][1]["Id"] = 601238
	tStruggleUpPack_NoGiftServerAward[15]["RewardProItem"][3]["Item"][1]["Attr"] = "0 1"
	
	--  武僧
	tStruggleUpPack_NoGiftServerAward[15]["RewardProItem"][4] = {}
	tStruggleUpPack_NoGiftServerAward[15]["RewardProItem"][4]["Pro"] = {{60,65}}                    
	tStruggleUpPack_NoGiftServerAward[15]["RewardProItem"][4]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[15]["RewardProItem"][4]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[15]["RewardProItem"][4]["Item"][1]["Id"] = 610238
	tStruggleUpPack_NoGiftServerAward[15]["RewardProItem"][4]["Item"][1]["Attr"] = "0 1"
	
	--  海盗
	tStruggleUpPack_NoGiftServerAward[15]["RewardProItem"][5] = {}
	tStruggleUpPack_NoGiftServerAward[15]["RewardProItem"][5]["Pro"] = {{70,75}}                    
	tStruggleUpPack_NoGiftServerAward[15]["RewardProItem"][5]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[15]["RewardProItem"][5]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[15]["RewardProItem"][5]["Item"][1]["Id"] =  611238
	tStruggleUpPack_NoGiftServerAward[15]["RewardProItem"][5]["Item"][1]["Attr"] = "0 1"
	
	--  弓手
	tStruggleUpPack_NoGiftServerAward[15]["RewardProItem"][6] = {}
	tStruggleUpPack_NoGiftServerAward[15]["RewardProItem"][6]["Pro"] = {{40,45}}                    
	tStruggleUpPack_NoGiftServerAward[15]["RewardProItem"][6]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[15]["RewardProItem"][6]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[15]["RewardProItem"][6]["Item"][1]["Id"] = 613228
	tStruggleUpPack_NoGiftServerAward[15]["RewardProItem"][6]["Item"][1]["Attr"] = "0 1"
	
	--  道士
	tStruggleUpPack_NoGiftServerAward[15]["RewardProItem"][7] = {}
	tStruggleUpPack_NoGiftServerAward[15]["RewardProItem"][7]["Pro"] = {{100,145}}                    
	tStruggleUpPack_NoGiftServerAward[15]["RewardProItem"][7]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[15]["RewardProItem"][7]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[15]["RewardProItem"][7]["Item"][1]["Id"] = 421238
	tStruggleUpPack_NoGiftServerAward[15]["RewardProItem"][7]["Item"][1]["Attr"] = "0 1"
	
	--  铁扇门（160-165）
	tStruggleUpPack_NoGiftServerAward[15]["RewardProItem"][8] = {}
	tStruggleUpPack_NoGiftServerAward[15]["RewardProItem"][8]["Pro"] = {{160,165}}                    
	tStruggleUpPack_NoGiftServerAward[15]["RewardProItem"][8]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[15]["RewardProItem"][8]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[15]["RewardProItem"][8]["Item"][1]["Id"] =  626238
	tStruggleUpPack_NoGiftServerAward[15]["RewardProItem"][8]["Item"][1]["Attr"] = "0 1"
	
	--  拳师
	tStruggleUpPack_NoGiftServerAward[15]["RewardProItem"][9] = {}
	tStruggleUpPack_NoGiftServerAward[15]["RewardProItem"][9]["Pro"] = {{80,85}}                    
	tStruggleUpPack_NoGiftServerAward[15]["RewardProItem"][9]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[15]["RewardProItem"][9]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[15]["RewardProItem"][9]["Item"][1]["Id"] =  617238
	tStruggleUpPack_NoGiftServerAward[15]["RewardProItem"][9]["Item"][1]["Attr"] = "0 1"
	
	--  雷神
	tStruggleUpPack_NoGiftServerAward[15]["RewardProItem"][10] = {}
	tStruggleUpPack_NoGiftServerAward[15]["RewardProItem"][10]["Pro"] = {{90,95}}                    
	tStruggleUpPack_NoGiftServerAward[15]["RewardProItem"][10]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[15]["RewardProItem"][10]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[15]["RewardProItem"][10]["Item"][1]["Id"] =  681238
	tStruggleUpPack_NoGiftServerAward[15]["RewardProItem"][10]["Item"][1]["Attr"] = "0 1"

-- 1转20	上品衣服、1天祝福时间
	tStruggleUpPack_NoGiftServerAward[16] = {}
	tStruggleUpPack_NoGiftServerAward[16]["LogId"] = 12001075
	
	tStruggleUpPack_NoGiftServerAward[16]["RewardBless"] = {}
	tStruggleUpPack_NoGiftServerAward[16]["RewardBless"]["Value"] = (1*24)  --1天祝福时间
	
	--  战士
	tStruggleUpPack_NoGiftServerAward[16]["RewardProItem"] = {}
	tStruggleUpPack_NoGiftServerAward[16]["RewardProItem"][1] = {}
	tStruggleUpPack_NoGiftServerAward[16]["RewardProItem"][1]["Pro"] = {{20,25}}                    
	tStruggleUpPack_NoGiftServerAward[16]["RewardProItem"][1]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[16]["RewardProItem"][1]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[16]["RewardProItem"][1]["Item"][1]["Id"] = 131017
	tStruggleUpPack_NoGiftServerAward[16]["RewardProItem"][1]["Item"][1]["Attr"] = "0 1"
	                      
	--  勇士              
	tStruggleUpPack_NoGiftServerAward[16]["RewardProItem"][2] = {}
	tStruggleUpPack_NoGiftServerAward[16]["RewardProItem"][2]["Pro"] = {{10,15}}                    
	tStruggleUpPack_NoGiftServerAward[16]["RewardProItem"][2]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[16]["RewardProItem"][2]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[16]["RewardProItem"][2]["Item"][1]["Id"] = 130017
	tStruggleUpPack_NoGiftServerAward[16]["RewardProItem"][2]["Item"][1]["Attr"] = "0 1"
	                      
	--  忍者             
	tStruggleUpPack_NoGiftServerAward[16]["RewardProItem"][3] = {}
	tStruggleUpPack_NoGiftServerAward[16]["RewardProItem"][3]["Pro"] = {{50,55}}                    
	tStruggleUpPack_NoGiftServerAward[16]["RewardProItem"][3]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[16]["RewardProItem"][3]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[16]["RewardProItem"][3]["Item"][1]["Id"] = 135017
	tStruggleUpPack_NoGiftServerAward[16]["RewardProItem"][3]["Item"][1]["Attr"] = "0 1"
	                      
	--  武僧              
	tStruggleUpPack_NoGiftServerAward[16]["RewardProItem"][4] = {}
	tStruggleUpPack_NoGiftServerAward[16]["RewardProItem"][4]["Pro"] = {{60,65}}                    
	tStruggleUpPack_NoGiftServerAward[16]["RewardProItem"][4]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[16]["RewardProItem"][4]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[16]["RewardProItem"][4]["Item"][1]["Id"] = 136017
	tStruggleUpPack_NoGiftServerAward[16]["RewardProItem"][4]["Item"][1]["Attr"] = "0 1"
	                      
	--  海盗              
	tStruggleUpPack_NoGiftServerAward[16]["RewardProItem"][5] = {}
	tStruggleUpPack_NoGiftServerAward[16]["RewardProItem"][5]["Pro"] = {{70,75}}                    
	tStruggleUpPack_NoGiftServerAward[16]["RewardProItem"][5]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[16]["RewardProItem"][5]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[16]["RewardProItem"][5]["Item"][1]["Id"] = 139017
	tStruggleUpPack_NoGiftServerAward[16]["RewardProItem"][5]["Item"][1]["Attr"] = "0 1"
	                      
	--  弓手              
	tStruggleUpPack_NoGiftServerAward[16]["RewardProItem"][6] = {}
	tStruggleUpPack_NoGiftServerAward[16]["RewardProItem"][6]["Pro"] = {{40,45}}                    
	tStruggleUpPack_NoGiftServerAward[16]["RewardProItem"][6]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[16]["RewardProItem"][6]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[16]["RewardProItem"][6]["Item"][1]["Id"] =  133017
	tStruggleUpPack_NoGiftServerAward[16]["RewardProItem"][6]["Item"][1]["Attr"] = "0 1"
	                      
	--  道士              
	tStruggleUpPack_NoGiftServerAward[16]["RewardProItem"][7] = {}
	tStruggleUpPack_NoGiftServerAward[16]["RewardProItem"][7]["Pro"] = {{100,145}}                    
	tStruggleUpPack_NoGiftServerAward[16]["RewardProItem"][7]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[16]["RewardProItem"][7]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[16]["RewardProItem"][7]["Item"][1]["Id"] = 134017
	tStruggleUpPack_NoGiftServerAward[16]["RewardProItem"][7]["Item"][1]["Attr"] = "0 1"
	                      
	--  铁扇门（160-165） 
	tStruggleUpPack_NoGiftServerAward[16]["RewardProItem"][8] = {}
	tStruggleUpPack_NoGiftServerAward[16]["RewardProItem"][8]["Pro"] = {{160,165}}                    
	tStruggleUpPack_NoGiftServerAward[16]["RewardProItem"][8]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[16]["RewardProItem"][8]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[16]["RewardProItem"][8]["Item"][1]["Id"] = 101017
	tStruggleUpPack_NoGiftServerAward[16]["RewardProItem"][8]["Item"][1]["Attr"] = "0 1"
	                      
	--  拳师              
	tStruggleUpPack_NoGiftServerAward[16]["RewardProItem"][9] = {}
	tStruggleUpPack_NoGiftServerAward[16]["RewardProItem"][9]["Pro"] = {{80,85}}                    
	tStruggleUpPack_NoGiftServerAward[16]["RewardProItem"][9]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[16]["RewardProItem"][9]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[16]["RewardProItem"][9]["Item"][1]["Id"] = 138017
	tStruggleUpPack_NoGiftServerAward[16]["RewardProItem"][9]["Item"][1]["Attr"] = "0 1"

	--  雷神              
	tStruggleUpPack_NoGiftServerAward[16]["RewardProItem"][10] = {}
	tStruggleUpPack_NoGiftServerAward[16]["RewardProItem"][10]["Pro"] = {{90,95}}                    
	tStruggleUpPack_NoGiftServerAward[16]["RewardProItem"][10]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[16]["RewardProItem"][10]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[16]["RewardProItem"][10]["Item"][1]["Id"] = 102017
	tStruggleUpPack_NoGiftServerAward[16]["RewardProItem"][10]["Item"][1]["Attr"] = "0 1"
-- 1转30	上品武器（赠）		改成非赠的
	tStruggleUpPack_NoGiftServerAward[17] = {}
	tStruggleUpPack_NoGiftServerAward[17]["LogId"] = 12001075
	--  战士
	tStruggleUpPack_NoGiftServerAward[17]["RewardProItem"] = {}
	tStruggleUpPack_NoGiftServerAward[17]["RewardProItem"][1] = {}
	tStruggleUpPack_NoGiftServerAward[17]["RewardProItem"][1]["Pro"] = {{20,25}}                    
	tStruggleUpPack_NoGiftServerAward[17]["RewardProItem"][1]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[17]["RewardProItem"][1]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[17]["RewardProItem"][1]["Item"][1]["Id"] = 561057
	tStruggleUpPack_NoGiftServerAward[17]["RewardProItem"][1]["Item"][1]["Attr"] = "0 1"
	                      
	--  勇士              
	tStruggleUpPack_NoGiftServerAward[17]["RewardProItem"][2] = {}
	tStruggleUpPack_NoGiftServerAward[17]["RewardProItem"][2]["Pro"] = {{10,15}}                    
	tStruggleUpPack_NoGiftServerAward[17]["RewardProItem"][2]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[17]["RewardProItem"][2]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[17]["RewardProItem"][2]["Item"][1]["Id"] = 420057
	tStruggleUpPack_NoGiftServerAward[17]["RewardProItem"][2]["Item"][1]["Attr"] = "0 1"
	                      
	--  忍者              
	tStruggleUpPack_NoGiftServerAward[17]["RewardProItem"][3] = {}
	tStruggleUpPack_NoGiftServerAward[17]["RewardProItem"][3]["Pro"] = {{50,55}}                    
	tStruggleUpPack_NoGiftServerAward[17]["RewardProItem"][3]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[17]["RewardProItem"][3]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[17]["RewardProItem"][3]["Item"][1]["Id"] = 601057
	tStruggleUpPack_NoGiftServerAward[17]["RewardProItem"][3]["Item"][1]["Attr"] = "0 1"
	                      
	--  武僧              
	tStruggleUpPack_NoGiftServerAward[17]["RewardProItem"][4] = {}
	tStruggleUpPack_NoGiftServerAward[17]["RewardProItem"][4]["Pro"] = {{60,65}}                    
	tStruggleUpPack_NoGiftServerAward[17]["RewardProItem"][4]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[17]["RewardProItem"][4]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[17]["RewardProItem"][4]["Item"][1]["Id"] = 610057
	tStruggleUpPack_NoGiftServerAward[17]["RewardProItem"][4]["Item"][1]["Attr"] = "0 1"
	                      
	--  海盗              
	tStruggleUpPack_NoGiftServerAward[17]["RewardProItem"][5] = {}
	tStruggleUpPack_NoGiftServerAward[17]["RewardProItem"][5]["Pro"] = {{70,75}}                    
	tStruggleUpPack_NoGiftServerAward[17]["RewardProItem"][5]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[17]["RewardProItem"][5]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[17]["RewardProItem"][5]["Item"][1]["Id"] =  611057
	tStruggleUpPack_NoGiftServerAward[17]["RewardProItem"][5]["Item"][1]["Attr"] = "0 1"
	                      
	--  弓手              
	tStruggleUpPack_NoGiftServerAward[17]["RewardProItem"][6] = {}
	tStruggleUpPack_NoGiftServerAward[17]["RewardProItem"][6]["Pro"] = {{40,45}}                    
	tStruggleUpPack_NoGiftServerAward[17]["RewardProItem"][6]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[17]["RewardProItem"][6]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[17]["RewardProItem"][6]["Item"][1]["Id"] = 613047
	tStruggleUpPack_NoGiftServerAward[17]["RewardProItem"][6]["Item"][1]["Attr"] = "0 1"
	                      
	--  道士              
	tStruggleUpPack_NoGiftServerAward[17]["RewardProItem"][7] = {}
	tStruggleUpPack_NoGiftServerAward[17]["RewardProItem"][7]["Pro"] = {{100,145}}                    
	tStruggleUpPack_NoGiftServerAward[17]["RewardProItem"][7]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[17]["RewardProItem"][7]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[17]["RewardProItem"][7]["Item"][1]["Id"] = 421047
	tStruggleUpPack_NoGiftServerAward[17]["RewardProItem"][7]["Item"][1]["Attr"] = "0 1"
	                      
	--  铁扇门（160-165） 
	tStruggleUpPack_NoGiftServerAward[17]["RewardProItem"][8] = {}
	tStruggleUpPack_NoGiftServerAward[17]["RewardProItem"][8]["Pro"] = {{160,165}}                    
	tStruggleUpPack_NoGiftServerAward[17]["RewardProItem"][8]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[17]["RewardProItem"][8]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[17]["RewardProItem"][8]["Item"][1]["Id"] = 626057
	tStruggleUpPack_NoGiftServerAward[17]["RewardProItem"][8]["Item"][1]["Attr"] = "0 1"
	                      
	--  拳师              
	tStruggleUpPack_NoGiftServerAward[17]["RewardProItem"][9] = {}
	tStruggleUpPack_NoGiftServerAward[17]["RewardProItem"][9]["Pro"] = {{80,85}}                    
	tStruggleUpPack_NoGiftServerAward[17]["RewardProItem"][9]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[17]["RewardProItem"][9]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[17]["RewardProItem"][9]["Item"][1]["Id"] =  617057
	tStruggleUpPack_NoGiftServerAward[17]["RewardProItem"][9]["Item"][1]["Attr"] = "0 1"
	--  雷神              
	tStruggleUpPack_NoGiftServerAward[17]["RewardProItem"][10] = {}
	tStruggleUpPack_NoGiftServerAward[17]["RewardProItem"][10]["Pro"] = {{90,95}}                    
	tStruggleUpPack_NoGiftServerAward[17]["RewardProItem"][10]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[17]["RewardProItem"][10]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[17]["RewardProItem"][10]["Item"][1]["Id"] = 681057
	tStruggleUpPack_NoGiftServerAward[17]["RewardProItem"][10]["Item"][1]["Attr"] = "0 1"
-- 1转40	上品帽子、3个赤炼石+1（赠）  		赤炼石都改成非赠的
	tStruggleUpPack_NoGiftServerAward[18] = {}
	tStruggleUpPack_NoGiftServerAward[18]["LogId"] = 12001075
	tStruggleUpPack_NoGiftServerAward[18]["RewardItem"] = {}
	tStruggleUpPack_NoGiftServerAward[18]["RewardItem"][1] = {}
	tStruggleUpPack_NoGiftServerAward[18]["RewardItem"][1]["Id"] = 730001
	tStruggleUpPack_NoGiftServerAward[18]["RewardItem"][1]["Attr"] = "0 3 0 10080 1"

	--  战士
	tStruggleUpPack_NoGiftServerAward[18]["RewardProItem"] = {}
	tStruggleUpPack_NoGiftServerAward[18]["RewardProItem"][1] = {}
	tStruggleUpPack_NoGiftServerAward[18]["RewardProItem"][1]["Pro"] = {{20,25}}                    
	tStruggleUpPack_NoGiftServerAward[18]["RewardProItem"][1]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[18]["RewardProItem"][1]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[18]["RewardProItem"][1]["Item"][1]["Id"] = 111037
	tStruggleUpPack_NoGiftServerAward[18]["RewardProItem"][1]["Item"][1]["Attr"] = "0 1"
	                      
	--  勇士              
	tStruggleUpPack_NoGiftServerAward[18]["RewardProItem"][2] = {}
	tStruggleUpPack_NoGiftServerAward[18]["RewardProItem"][2]["Pro"] = {{10,15}}                    
	tStruggleUpPack_NoGiftServerAward[18]["RewardProItem"][2]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[18]["RewardProItem"][2]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[18]["RewardProItem"][2]["Item"][1]["Id"] = 118037
	tStruggleUpPack_NoGiftServerAward[18]["RewardProItem"][2]["Item"][1]["Attr"] = "0 1"
	                      
	--  忍者              
	tStruggleUpPack_NoGiftServerAward[18]["RewardProItem"][3] = {}
	tStruggleUpPack_NoGiftServerAward[18]["RewardProItem"][3]["Pro"] = {{50,55}}                    
	tStruggleUpPack_NoGiftServerAward[18]["RewardProItem"][3]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[18]["RewardProItem"][3]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[18]["RewardProItem"][3]["Item"][1]["Id"] = 123037
	tStruggleUpPack_NoGiftServerAward[18]["RewardProItem"][3]["Item"][1]["Attr"] = "0 1"
	                      
	--  武僧              
	tStruggleUpPack_NoGiftServerAward[18]["RewardProItem"][4] = {}
	tStruggleUpPack_NoGiftServerAward[18]["RewardProItem"][4]["Pro"] = {{60,65}}                    
	tStruggleUpPack_NoGiftServerAward[18]["RewardProItem"][4]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[18]["RewardProItem"][4]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[18]["RewardProItem"][4]["Item"][1]["Id"] = 143037
	tStruggleUpPack_NoGiftServerAward[18]["RewardProItem"][4]["Item"][1]["Attr"] = "0 1"
	                      
	--  海盗              
	tStruggleUpPack_NoGiftServerAward[18]["RewardProItem"][5] = {}
	tStruggleUpPack_NoGiftServerAward[18]["RewardProItem"][5]["Pro"] = {{70,75}}                    
	tStruggleUpPack_NoGiftServerAward[18]["RewardProItem"][5]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[18]["RewardProItem"][5]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[18]["RewardProItem"][5]["Item"][1]["Id"] = 144037
	tStruggleUpPack_NoGiftServerAward[18]["RewardProItem"][5]["Item"][1]["Attr"] = "0 1"
	                      
	--  弓手              
	tStruggleUpPack_NoGiftServerAward[18]["RewardProItem"][6] = {}
	tStruggleUpPack_NoGiftServerAward[18]["RewardProItem"][6]["Pro"] = {{40,45}}                    
	tStruggleUpPack_NoGiftServerAward[18]["RewardProItem"][6]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[18]["RewardProItem"][6]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[18]["RewardProItem"][6]["Item"][1]["Id"] =  113017
	tStruggleUpPack_NoGiftServerAward[18]["RewardProItem"][6]["Item"][1]["Attr"] = "0 1"
	                      
	--  道士              
	tStruggleUpPack_NoGiftServerAward[18]["RewardProItem"][7] = {}
	tStruggleUpPack_NoGiftServerAward[18]["RewardProItem"][7]["Pro"] = {{100,145}}                    
	tStruggleUpPack_NoGiftServerAward[18]["RewardProItem"][7]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[18]["RewardProItem"][7]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[18]["RewardProItem"][7]["Item"][1]["Id"] = 114037
	tStruggleUpPack_NoGiftServerAward[18]["RewardProItem"][7]["Item"][1]["Attr"] = "0 1"
	                      
	--  铁扇门（160-165） 
	tStruggleUpPack_NoGiftServerAward[18]["RewardProItem"][8] = {}
	tStruggleUpPack_NoGiftServerAward[18]["RewardProItem"][8]["Pro"] = {{160,165}}                    
	tStruggleUpPack_NoGiftServerAward[18]["RewardProItem"][8]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[18]["RewardProItem"][8]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[18]["RewardProItem"][8]["Item"][1]["Id"] = 170037
	tStruggleUpPack_NoGiftServerAward[18]["RewardProItem"][8]["Item"][1]["Attr"] = "0 1"
	                      
	--  拳师              
	tStruggleUpPack_NoGiftServerAward[18]["RewardProItem"][9] = {}
	tStruggleUpPack_NoGiftServerAward[18]["RewardProItem"][9]["Pro"] = {{80,85}}                    
	tStruggleUpPack_NoGiftServerAward[18]["RewardProItem"][9]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[18]["RewardProItem"][9]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[18]["RewardProItem"][9]["Item"][1]["Id"] = 148037
	tStruggleUpPack_NoGiftServerAward[18]["RewardProItem"][9]["Item"][1]["Attr"] = "0 1"
	--  雷神              
	tStruggleUpPack_NoGiftServerAward[18]["RewardProItem"][10] = {}
	tStruggleUpPack_NoGiftServerAward[18]["RewardProItem"][10]["Pro"] = {{90,95}}                    
	tStruggleUpPack_NoGiftServerAward[18]["RewardProItem"][10]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[18]["RewardProItem"][10]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[18]["RewardProItem"][10]["Item"][1]["Id"] = 146037
	tStruggleUpPack_NoGiftServerAward[18]["RewardProItem"][10]["Item"][1]["Attr"] = "0 1"
-- 1转50	上品项链
	-- tStruggleUpPack_NoGiftServerAward[16] = {}
	-- tStruggleUpPack_NoGiftServerAward[16]["LogId"] = 12001075
	-- tStruggleUpPack_NoGiftServerAward[16]["RewardItem"] = {}
	-- tStruggleUpPack_NoGiftServerAward[16]["RewardItem"][1] = {}
	-- tStruggleUpPack_NoGiftServerAward[16]["RewardItem"][1]["Id"] = 120097
	-- tStruggleUpPack_NoGiftServerAward[16]["RewardItem"][1]["Attr"] = "0 1"
	
	tStruggleUpPack_NoGiftServerAward[19] ={}
	tStruggleUpPack_NoGiftServerAward[19]["RewardProItem"] = {}
	tStruggleUpPack_NoGiftServerAward[19]["RewardProItem"][1] = {}
	tStruggleUpPack_NoGiftServerAward[19]["RewardProItem"][1]["Pro"] = {{100,145}}                    
	tStruggleUpPack_NoGiftServerAward[19]["RewardProItem"][1]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[19]["RewardProItem"][1]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[19]["RewardProItem"][1]["Item"][1]["Id"] = 121087
	tStruggleUpPack_NoGiftServerAward[19]["RewardProItem"][1]["Item"][1]["Attr"] = "0 1"
                          
	tStruggleUpPack_NoGiftServerAward[19]["RewardProItem"][2] = {}
	tStruggleUpPack_NoGiftServerAward[19]["RewardProItem"][2]["Pro"] = {{10,95},{160,165}}                    
	tStruggleUpPack_NoGiftServerAward[19]["RewardProItem"][2]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[19]["RewardProItem"][2]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[19]["RewardProItem"][2]["Item"][1]["Id"] = 120097
	tStruggleUpPack_NoGiftServerAward[19]["RewardProItem"][2]["Item"][1]["Attr"] = "0 1"
	

-- 1转60	上品武器（赠）、1个赤炼石+2（赠）		改成非赠的赤炼石都改成非赠的
	tStruggleUpPack_NoGiftServerAward[20] = {}
	tStruggleUpPack_NoGiftServerAward[20]["LogId"] = 12001075
	tStruggleUpPack_NoGiftServerAward[20]["RewardItem"] = {}
	tStruggleUpPack_NoGiftServerAward[20]["RewardItem"][1] = {}
	tStruggleUpPack_NoGiftServerAward[20]["RewardItem"][1]["Id"] = 730002
	tStruggleUpPack_NoGiftServerAward[20]["RewardItem"][1]["Attr"] = "0 1 0 10080 1"
 
 	--  战士
	tStruggleUpPack_NoGiftServerAward[20]["RewardProItem"] = {}
	tStruggleUpPack_NoGiftServerAward[20]["RewardProItem"][1] = {}
	tStruggleUpPack_NoGiftServerAward[20]["RewardProItem"][1]["Pro"] = {{20,25}}                    
	tStruggleUpPack_NoGiftServerAward[20]["RewardProItem"][1]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[20]["RewardProItem"][1]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[20]["RewardProItem"][1]["Item"][1]["Id"] = 561117
	tStruggleUpPack_NoGiftServerAward[20]["RewardProItem"][1]["Item"][1]["Attr"] = "0 1"
	                      
	--  勇士              17
	tStruggleUpPack_NoGiftServerAward[20]["RewardProItem"][2] = {}
	tStruggleUpPack_NoGiftServerAward[20]["RewardProItem"][2]["Pro"] = {{10,15}}                    
	tStruggleUpPack_NoGiftServerAward[20]["RewardProItem"][2]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[20]["RewardProItem"][2]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[20]["RewardProItem"][2]["Item"][1]["Id"] = 420117
	tStruggleUpPack_NoGiftServerAward[20]["RewardProItem"][2]["Item"][1]["Attr"] = "0 1"
	                      
	--  忍者              17
	tStruggleUpPack_NoGiftServerAward[20]["RewardProItem"][3] = {}
	tStruggleUpPack_NoGiftServerAward[20]["RewardProItem"][3]["Pro"] = {{50,55}}                    
	tStruggleUpPack_NoGiftServerAward[20]["RewardProItem"][3]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[20]["RewardProItem"][3]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[20]["RewardProItem"][3]["Item"][1]["Id"] =  601117
	tStruggleUpPack_NoGiftServerAward[20]["RewardProItem"][3]["Item"][1]["Attr"] = "0 1"
	                      
	--  武僧              17
	tStruggleUpPack_NoGiftServerAward[20]["RewardProItem"][4] = {}
	tStruggleUpPack_NoGiftServerAward[20]["RewardProItem"][4]["Pro"] = {{60,65}}                    
	tStruggleUpPack_NoGiftServerAward[20]["RewardProItem"][4]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[20]["RewardProItem"][4]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[20]["RewardProItem"][4]["Item"][1]["Id"] = 610117
	tStruggleUpPack_NoGiftServerAward[20]["RewardProItem"][4]["Item"][1]["Attr"] = "0 1"
	                      
	--  海盗              17
	tStruggleUpPack_NoGiftServerAward[20]["RewardProItem"][5] = {}
	tStruggleUpPack_NoGiftServerAward[20]["RewardProItem"][5]["Pro"] = {{70,75}}                    
	tStruggleUpPack_NoGiftServerAward[20]["RewardProItem"][5]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[20]["RewardProItem"][5]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[20]["RewardProItem"][5]["Item"][1]["Id"] =  611117
	tStruggleUpPack_NoGiftServerAward[20]["RewardProItem"][5]["Item"][1]["Attr"] = "0 1"
	                      
	--  弓手              17
	tStruggleUpPack_NoGiftServerAward[20]["RewardProItem"][6] = {}
	tStruggleUpPack_NoGiftServerAward[20]["RewardProItem"][6]["Pro"] = {{40,45}}                    
	tStruggleUpPack_NoGiftServerAward[20]["RewardProItem"][6]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[20]["RewardProItem"][6]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[20]["RewardProItem"][6]["Item"][1]["Id"] = 613107
	tStruggleUpPack_NoGiftServerAward[20]["RewardProItem"][6]["Item"][1]["Attr"] = "0 1"
	                      
	--  道士              17
	tStruggleUpPack_NoGiftServerAward[20]["RewardProItem"][7] = {}
	tStruggleUpPack_NoGiftServerAward[20]["RewardProItem"][7]["Pro"] = {{100,145}}                    
	tStruggleUpPack_NoGiftServerAward[20]["RewardProItem"][7]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[20]["RewardProItem"][7]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[20]["RewardProItem"][7]["Item"][1]["Id"] = 421107
	tStruggleUpPack_NoGiftServerAward[20]["RewardProItem"][7]["Item"][1]["Attr"] = "0 1"
	                      
	--  铁扇门（160-165） 17
	tStruggleUpPack_NoGiftServerAward[20]["RewardProItem"][8] = {}
	tStruggleUpPack_NoGiftServerAward[20]["RewardProItem"][8]["Pro"] = {{160,165}}                    
	tStruggleUpPack_NoGiftServerAward[20]["RewardProItem"][8]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[20]["RewardProItem"][8]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[20]["RewardProItem"][8]["Item"][1]["Id"] =  626117
	tStruggleUpPack_NoGiftServerAward[20]["RewardProItem"][8]["Item"][1]["Attr"] = "0 1"
	                      
	--  拳师              17
	tStruggleUpPack_NoGiftServerAward[20]["RewardProItem"][9] = {}
	tStruggleUpPack_NoGiftServerAward[20]["RewardProItem"][9]["Pro"] = {{80,85}}                    
	tStruggleUpPack_NoGiftServerAward[20]["RewardProItem"][9]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[20]["RewardProItem"][9]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[20]["RewardProItem"][9]["Item"][1]["Id"] =   617117
	tStruggleUpPack_NoGiftServerAward[20]["RewardProItem"][9]["Item"][1]["Attr"] = "0 1"
	--  雷神              
	tStruggleUpPack_NoGiftServerAward[20]["RewardProItem"][10] = {}
	tStruggleUpPack_NoGiftServerAward[20]["RewardProItem"][10]["Pro"] = {{90,95}}                    
	tStruggleUpPack_NoGiftServerAward[20]["RewardProItem"][10]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[20]["RewardProItem"][10]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[20]["RewardProItem"][10]["Item"][1]["Id"] = 680117
	tStruggleUpPack_NoGiftServerAward[20]["RewardProItem"][10]["Item"][1]["Attr"] = "0 1"


-- 1转70	1个流星卷（赠）		改成非赠的
	tStruggleUpPack_NoGiftServerAward[21] = {}
	tStruggleUpPack_NoGiftServerAward[21]["LogId"] = 12001075
	tStruggleUpPack_NoGiftServerAward[21]["RewardItem"] = {}
	tStruggleUpPack_NoGiftServerAward[21]["RewardItem"][1] = {}
	tStruggleUpPack_NoGiftServerAward[21]["RewardItem"][1]["Id"] = 720027
	tStruggleUpPack_NoGiftServerAward[21]["RewardItem"][1]["Attr"] = "0 1"

-- 1转80	精品衣服、2个赤练石+2（赠）		改成非赠的
	tStruggleUpPack_NoGiftServerAward[22] = {}
	tStruggleUpPack_NoGiftServerAward[22]["LogId"] = 12001075
	tStruggleUpPack_NoGiftServerAward[22]["RewardItem"] = {}
	tStruggleUpPack_NoGiftServerAward[22]["RewardItem"][1] = {}
	tStruggleUpPack_NoGiftServerAward[22]["RewardItem"][1]["Id"] = 730002
	tStruggleUpPack_NoGiftServerAward[22]["RewardItem"][1]["Attr"] = "0 2 0 10080 1"
	     
	--  战士
	tStruggleUpPack_NoGiftServerAward[22]["RewardProItem"] = {}
	tStruggleUpPack_NoGiftServerAward[22]["RewardProItem"][1] = {}
	tStruggleUpPack_NoGiftServerAward[22]["RewardProItem"][1]["Pro"] = {{20,25}}                    
	tStruggleUpPack_NoGiftServerAward[22]["RewardProItem"][1]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[22]["RewardProItem"][1]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[22]["RewardProItem"][1]["Item"][1]["Id"] = 131078
	tStruggleUpPack_NoGiftServerAward[22]["RewardProItem"][1]["Item"][1]["Attr"] = "0 1"
	                      
	--  勇士              19
	tStruggleUpPack_NoGiftServerAward[22]["RewardProItem"][2] = {}
	tStruggleUpPack_NoGiftServerAward[22]["RewardProItem"][2]["Pro"] = {{10,15}}                    
	tStruggleUpPack_NoGiftServerAward[22]["RewardProItem"][2]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[22]["RewardProItem"][2]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[22]["RewardProItem"][2]["Item"][1]["Id"] = 130078
	tStruggleUpPack_NoGiftServerAward[22]["RewardProItem"][2]["Item"][1]["Attr"] = "0 1"
	                      
	--  忍者              19
	tStruggleUpPack_NoGiftServerAward[22]["RewardProItem"][3] = {}
	tStruggleUpPack_NoGiftServerAward[22]["RewardProItem"][3]["Pro"] = {{50,55}}                    
	tStruggleUpPack_NoGiftServerAward[22]["RewardProItem"][3]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[22]["RewardProItem"][3]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[22]["RewardProItem"][3]["Item"][1]["Id"] = 135078
	tStruggleUpPack_NoGiftServerAward[22]["RewardProItem"][3]["Item"][1]["Attr"] = "0 1"
	                      
	--  武僧              19
	tStruggleUpPack_NoGiftServerAward[22]["RewardProItem"][4] = {}
	tStruggleUpPack_NoGiftServerAward[22]["RewardProItem"][4]["Pro"] = {{60,65}}                    
	tStruggleUpPack_NoGiftServerAward[22]["RewardProItem"][4]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[22]["RewardProItem"][4]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[22]["RewardProItem"][4]["Item"][1]["Id"] = 136078
	tStruggleUpPack_NoGiftServerAward[22]["RewardProItem"][4]["Item"][1]["Attr"] = "0 1"
	                      
	--  海盗              19
	tStruggleUpPack_NoGiftServerAward[22]["RewardProItem"][5] = {}
	tStruggleUpPack_NoGiftServerAward[22]["RewardProItem"][5]["Pro"] = {{70,75}}                    
	tStruggleUpPack_NoGiftServerAward[22]["RewardProItem"][5]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[22]["RewardProItem"][5]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[22]["RewardProItem"][5]["Item"][1]["Id"] = 139078
	tStruggleUpPack_NoGiftServerAward[22]["RewardProItem"][5]["Item"][1]["Attr"] = "0 1"
	                      
	--  弓手              19
	tStruggleUpPack_NoGiftServerAward[22]["RewardProItem"][6] = {}
	tStruggleUpPack_NoGiftServerAward[22]["RewardProItem"][6]["Pro"] = {{40,45}}                    
	tStruggleUpPack_NoGiftServerAward[22]["RewardProItem"][6]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[22]["RewardProItem"][6]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[22]["RewardProItem"][6]["Item"][1]["Id"] = 133058
	tStruggleUpPack_NoGiftServerAward[22]["RewardProItem"][6]["Item"][1]["Attr"] = "0 1"
	                      
	--  道士              19
	tStruggleUpPack_NoGiftServerAward[22]["RewardProItem"][7] = {}
	tStruggleUpPack_NoGiftServerAward[22]["RewardProItem"][7]["Pro"] = {{100,145}}                    
	tStruggleUpPack_NoGiftServerAward[22]["RewardProItem"][7]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[22]["RewardProItem"][7]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[22]["RewardProItem"][7]["Item"][1]["Id"] = 134078
	tStruggleUpPack_NoGiftServerAward[22]["RewardProItem"][7]["Item"][1]["Attr"] = "0 1"
	                      
	--  铁扇门（160-165） 19
	tStruggleUpPack_NoGiftServerAward[22]["RewardProItem"][8] = {}
	tStruggleUpPack_NoGiftServerAward[22]["RewardProItem"][8]["Pro"] = {{160,165}}                    
	tStruggleUpPack_NoGiftServerAward[22]["RewardProItem"][8]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[22]["RewardProItem"][8]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[22]["RewardProItem"][8]["Item"][1]["Id"] = 101078
	tStruggleUpPack_NoGiftServerAward[22]["RewardProItem"][8]["Item"][1]["Attr"] = "0 1"
	                      
	--  拳师              19
	tStruggleUpPack_NoGiftServerAward[22]["RewardProItem"][9] = {}
	tStruggleUpPack_NoGiftServerAward[22]["RewardProItem"][9]["Pro"] = {{80,85}}                    
	tStruggleUpPack_NoGiftServerAward[22]["RewardProItem"][9]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[22]["RewardProItem"][9]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[22]["RewardProItem"][9]["Item"][1]["Id"] = 138078
	tStruggleUpPack_NoGiftServerAward[22]["RewardProItem"][9]["Item"][1]["Attr"] = "0 1"
	--  雷神              
	tStruggleUpPack_NoGiftServerAward[22]["RewardProItem"][10] = {}
	tStruggleUpPack_NoGiftServerAward[22]["RewardProItem"][10]["Pro"] = {{90,95}}                    
	tStruggleUpPack_NoGiftServerAward[22]["RewardProItem"][10]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[22]["RewardProItem"][10]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[22]["RewardProItem"][10]["Item"][1]["Id"] = 102078
	tStruggleUpPack_NoGiftServerAward[22]["RewardProItem"][10]["Item"][1]["Attr"] = "0 1"
-- 1转90	2个流星卷（赠）		改成非赠的
	tStruggleUpPack_NoGiftServerAward[23] = {}
	tStruggleUpPack_NoGiftServerAward[23]["LogId"] = 12001075
	tStruggleUpPack_NoGiftServerAward[23]["RewardItem"] = {}
	tStruggleUpPack_NoGiftServerAward[23]["RewardItem"][1] = {}
	tStruggleUpPack_NoGiftServerAward[23]["RewardItem"][1]["Id"] = 720027
	tStruggleUpPack_NoGiftServerAward[23]["RewardItem"][1]["Attr"] = "0 2"
	
-- 1转100	精品鞋子、1个赤练石+3（赠）		改成非赠的
	tStruggleUpPack_NoGiftServerAward[24] = {}
	tStruggleUpPack_NoGiftServerAward[24]["LogId"] = 12001075
	tStruggleUpPack_NoGiftServerAward[24]["RewardItem"] = {}
	tStruggleUpPack_NoGiftServerAward[24]["RewardItem"][1] = {}
	tStruggleUpPack_NoGiftServerAward[24]["RewardItem"][1]["Id"] = 160198
	tStruggleUpPack_NoGiftServerAward[24]["RewardItem"][1]["Attr"] = "0 1"
	tStruggleUpPack_NoGiftServerAward[24]["RewardItem"][2] = {}
	tStruggleUpPack_NoGiftServerAward[24]["RewardItem"][2]["Id"] = 730003
	tStruggleUpPack_NoGiftServerAward[24]["RewardItem"][2]["Attr"] = "0 1 0 10080 1"

-- 1转110	3个流星卷（赠）		改成非赠的
	tStruggleUpPack_NoGiftServerAward[25] = {}
	tStruggleUpPack_NoGiftServerAward[25]["LogId"] = 12001075
	tStruggleUpPack_NoGiftServerAward[25]["RewardItem"] = {}
	tStruggleUpPack_NoGiftServerAward[25]["RewardItem"][1] = {}
	tStruggleUpPack_NoGiftServerAward[25]["RewardItem"][1]["Id"] = 720027
	tStruggleUpPack_NoGiftServerAward[25]["RewardItem"][1]["Attr"] = "0 3"

-- 1转120	1个龙珠（赠）、2个赤炼石+3（赠）		改成非赠的、龙珠还是赠的
	tStruggleUpPack_NoGiftServerAward[26] = {}
	tStruggleUpPack_NoGiftServerAward[26]["LogId"] = 12001075
	tStruggleUpPack_NoGiftServerAward[26]["RewardItem"] = {}
	tStruggleUpPack_NoGiftServerAward[26]["RewardItem"][1] = {}
	tStruggleUpPack_NoGiftServerAward[26]["RewardItem"][1]["Id"] = 1088000
	tStruggleUpPack_NoGiftServerAward[26]["RewardItem"][1]["Attr"] = "0 1 3"
	tStruggleUpPack_NoGiftServerAward[26]["RewardItem"][2] = {}
	tStruggleUpPack_NoGiftServerAward[26]["RewardItem"][2]["Id"] = 730003
	tStruggleUpPack_NoGiftServerAward[26]["RewardItem"][2]["Attr"] = "0 2 0 10080 1"
	
-- 2转20	精品衣服（赠）+精品衣服淬炼（赠）
	tStruggleUpPack_NoGiftServerAward[27] = {}
	tStruggleUpPack_NoGiftServerAward[27]["LogId"] = 12001075
	tStruggleUpPack_NoGiftServerAward[27]["RewardItem"] = {}
	tStruggleUpPack_NoGiftServerAward[27]["RewardItem"][1] = {}
	tStruggleUpPack_NoGiftServerAward[27]["RewardItem"][1]["Id"] = 724476
	tStruggleUpPack_NoGiftServerAward[27]["RewardItem"][1]["Attr"] = "0 1 3"
	
	--  战士
	tStruggleUpPack_NoGiftServerAward[27]["RewardProItem"] = {}
	tStruggleUpPack_NoGiftServerAward[27]["RewardProItem"][1] = {}
	tStruggleUpPack_NoGiftServerAward[27]["RewardProItem"][1]["Pro"] = {{20,25}}                    
	tStruggleUpPack_NoGiftServerAward[27]["RewardProItem"][1]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[27]["RewardProItem"][1]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[27]["RewardProItem"][1]["Item"][1]["Id"] = 131018
	tStruggleUpPack_NoGiftServerAward[27]["RewardProItem"][1]["Item"][1]["Attr"] = "0 1"
	                      
	--  勇士              24
	tStruggleUpPack_NoGiftServerAward[27]["RewardProItem"][2] = {}
	tStruggleUpPack_NoGiftServerAward[27]["RewardProItem"][2]["Pro"] = {{10,15}}                    
	tStruggleUpPack_NoGiftServerAward[27]["RewardProItem"][2]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[27]["RewardProItem"][2]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[27]["RewardProItem"][2]["Item"][1]["Id"] = 130018
	tStruggleUpPack_NoGiftServerAward[27]["RewardProItem"][2]["Item"][1]["Attr"] = "0 1"
	                      
	--  忍者              24
	tStruggleUpPack_NoGiftServerAward[27]["RewardProItem"][3] = {}
	tStruggleUpPack_NoGiftServerAward[27]["RewardProItem"][3]["Pro"] = {{50,55}}                    
	tStruggleUpPack_NoGiftServerAward[27]["RewardProItem"][3]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[27]["RewardProItem"][3]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[27]["RewardProItem"][3]["Item"][1]["Id"] = 135018
	tStruggleUpPack_NoGiftServerAward[27]["RewardProItem"][3]["Item"][1]["Attr"] = "0 1"
	                      
	--  武僧              24
	tStruggleUpPack_NoGiftServerAward[27]["RewardProItem"][4] = {}
	tStruggleUpPack_NoGiftServerAward[27]["RewardProItem"][4]["Pro"] = {{60,65}}                    
	tStruggleUpPack_NoGiftServerAward[27]["RewardProItem"][4]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[27]["RewardProItem"][4]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[27]["RewardProItem"][4]["Item"][1]["Id"] = 136018
	tStruggleUpPack_NoGiftServerAward[27]["RewardProItem"][4]["Item"][1]["Attr"] = "0 1"
	                      
	--  海盗              24
	tStruggleUpPack_NoGiftServerAward[27]["RewardProItem"][5] = {}
	tStruggleUpPack_NoGiftServerAward[27]["RewardProItem"][5]["Pro"] = {{70,75}}                    
	tStruggleUpPack_NoGiftServerAward[27]["RewardProItem"][5]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[27]["RewardProItem"][5]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[27]["RewardProItem"][5]["Item"][1]["Id"] = 139018
	tStruggleUpPack_NoGiftServerAward[27]["RewardProItem"][5]["Item"][1]["Attr"] = "0 1"
	                      
	--  弓手              24
	tStruggleUpPack_NoGiftServerAward[27]["RewardProItem"][6] = {}
	tStruggleUpPack_NoGiftServerAward[27]["RewardProItem"][6]["Pro"] = {{40,45}}                    
	tStruggleUpPack_NoGiftServerAward[27]["RewardProItem"][6]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[27]["RewardProItem"][6]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[27]["RewardProItem"][6]["Item"][1]["Id"] = 133018
	tStruggleUpPack_NoGiftServerAward[27]["RewardProItem"][6]["Item"][1]["Attr"] = "0 1"
	                      
	--  道士              24
	tStruggleUpPack_NoGiftServerAward[27]["RewardProItem"][7] = {}
	tStruggleUpPack_NoGiftServerAward[27]["RewardProItem"][7]["Pro"] = {{100,145}}                    
	tStruggleUpPack_NoGiftServerAward[27]["RewardProItem"][7]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[27]["RewardProItem"][7]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[27]["RewardProItem"][7]["Item"][1]["Id"] = 134018
	tStruggleUpPack_NoGiftServerAward[27]["RewardProItem"][7]["Item"][1]["Attr"] = "0 1"
	                      
	--  铁扇门（160-165） 24
	tStruggleUpPack_NoGiftServerAward[27]["RewardProItem"][8] = {}
	tStruggleUpPack_NoGiftServerAward[27]["RewardProItem"][8]["Pro"] = {{160,165}}                    
	tStruggleUpPack_NoGiftServerAward[27]["RewardProItem"][8]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[27]["RewardProItem"][8]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[27]["RewardProItem"][8]["Item"][1]["Id"] = 101018
	tStruggleUpPack_NoGiftServerAward[27]["RewardProItem"][8]["Item"][1]["Attr"] = "0 1"
	                      
	--  拳师              24
	tStruggleUpPack_NoGiftServerAward[27]["RewardProItem"][9] = {}
	tStruggleUpPack_NoGiftServerAward[27]["RewardProItem"][9]["Pro"] = {{80,85}}                    
	tStruggleUpPack_NoGiftServerAward[27]["RewardProItem"][9]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[27]["RewardProItem"][9]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[27]["RewardProItem"][9]["Item"][1]["Id"] = 138018
	tStruggleUpPack_NoGiftServerAward[27]["RewardProItem"][9]["Item"][1]["Attr"] = "0 1"
	--  雷神              
	tStruggleUpPack_NoGiftServerAward[27]["RewardProItem"][10] = {}
	tStruggleUpPack_NoGiftServerAward[27]["RewardProItem"][10]["Pro"] = {{90,95}}                    
	tStruggleUpPack_NoGiftServerAward[27]["RewardProItem"][10]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[27]["RewardProItem"][10]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[27]["RewardProItem"][10]["Item"][1]["Id"] = 102018
	tStruggleUpPack_NoGiftServerAward[27]["RewardProItem"][10]["Item"][1]["Attr"] = "0 1"
-- 2转30	精品武器（赠）+精品武器淬炼（赠）		武器改成非赠
	tStruggleUpPack_NoGiftServerAward[28] = {}
	tStruggleUpPack_NoGiftServerAward[28]["LogId"] = 12001075
	
	 --  战士
	tStruggleUpPack_NoGiftServerAward[28]["RewardProItem"] = {}
	tStruggleUpPack_NoGiftServerAward[28]["RewardProItem"][1] = {}
	tStruggleUpPack_NoGiftServerAward[28]["RewardProItem"][1]["Pro"] = {{20,25}}                    
	tStruggleUpPack_NoGiftServerAward[28]["RewardProItem"][1]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[28]["RewardProItem"][1]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[28]["RewardProItem"][1]["Item"][1]["Id"] = 561058
	tStruggleUpPack_NoGiftServerAward[28]["RewardProItem"][1]["Item"][1]["Attr"] = "0 1"
	tStruggleUpPack_NoGiftServerAward[28]["RewardProItem"][1]["Item"][2] = {}
	tStruggleUpPack_NoGiftServerAward[28]["RewardProItem"][1]["Item"][2]["Id"] = 721413
	tStruggleUpPack_NoGiftServerAward[28]["RewardProItem"][1]["Item"][2]["Attr"] = "0 1 3"  
	  
	--  勇士              25
	tStruggleUpPack_NoGiftServerAward[28]["RewardProItem"][2] = {}
	tStruggleUpPack_NoGiftServerAward[28]["RewardProItem"][2]["Pro"] = {{10,15}}                    
	tStruggleUpPack_NoGiftServerAward[28]["RewardProItem"][2]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[28]["RewardProItem"][2]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[28]["RewardProItem"][2]["Item"][1]["Id"] = 420058
	tStruggleUpPack_NoGiftServerAward[28]["RewardProItem"][2]["Item"][1]["Attr"] = "0 1"
	tStruggleUpPack_NoGiftServerAward[28]["RewardProItem"][2]["Item"][2] = {}
	tStruggleUpPack_NoGiftServerAward[28]["RewardProItem"][2]["Item"][2]["Id"] = 721408
	tStruggleUpPack_NoGiftServerAward[28]["RewardProItem"][2]["Item"][2]["Attr"] = "0 1 3"
	                      
	--  忍者              25
	tStruggleUpPack_NoGiftServerAward[28]["RewardProItem"][3] = {}
	tStruggleUpPack_NoGiftServerAward[28]["RewardProItem"][3]["Pro"] = {{50,55}}                    
	tStruggleUpPack_NoGiftServerAward[28]["RewardProItem"][3]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[28]["RewardProItem"][3]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[28]["RewardProItem"][3]["Item"][1]["Id"] =  601058
	tStruggleUpPack_NoGiftServerAward[28]["RewardProItem"][3]["Item"][1]["Attr"] = "0 1"
	tStruggleUpPack_NoGiftServerAward[28]["RewardProItem"][3]["Item"][2] = {}
	tStruggleUpPack_NoGiftServerAward[28]["RewardProItem"][3]["Item"][2]["Id"] =  721408
	tStruggleUpPack_NoGiftServerAward[28]["RewardProItem"][3]["Item"][2]["Attr"] = "0 1 3"
	                      
	--  武僧              25
	tStruggleUpPack_NoGiftServerAward[28]["RewardProItem"][4] = {}
	tStruggleUpPack_NoGiftServerAward[28]["RewardProItem"][4]["Pro"] = {{60,65}}                    
	tStruggleUpPack_NoGiftServerAward[28]["RewardProItem"][4]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[28]["RewardProItem"][4]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[28]["RewardProItem"][4]["Item"][1]["Id"] = 610058
	tStruggleUpPack_NoGiftServerAward[28]["RewardProItem"][4]["Item"][1]["Attr"] = "0 1"
	tStruggleUpPack_NoGiftServerAward[28]["RewardProItem"][4]["Item"][2] = {}
	tStruggleUpPack_NoGiftServerAward[28]["RewardProItem"][4]["Item"][2]["Id"] = 721408
	tStruggleUpPack_NoGiftServerAward[28]["RewardProItem"][4]["Item"][2]["Attr"] = "0 1 3"
	                      
	--  海盗              25
	tStruggleUpPack_NoGiftServerAward[28]["RewardProItem"][5] = {}
	tStruggleUpPack_NoGiftServerAward[28]["RewardProItem"][5]["Pro"] = {{70,75}}                    
	tStruggleUpPack_NoGiftServerAward[28]["RewardProItem"][5]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[28]["RewardProItem"][5]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[28]["RewardProItem"][5]["Item"][1]["Id"] = 611058
	tStruggleUpPack_NoGiftServerAward[28]["RewardProItem"][5]["Item"][1]["Attr"] = "0 1"
	tStruggleUpPack_NoGiftServerAward[28]["RewardProItem"][5]["Item"][2] = {}
	tStruggleUpPack_NoGiftServerAward[28]["RewardProItem"][5]["Item"][2]["Id"] = 721408
	tStruggleUpPack_NoGiftServerAward[28]["RewardProItem"][5]["Item"][2]["Attr"] = "0 1 3"
	                      
	--  弓手              25
	tStruggleUpPack_NoGiftServerAward[28]["RewardProItem"][6] = {}
	tStruggleUpPack_NoGiftServerAward[28]["RewardProItem"][6]["Pro"] = {{40,45}}                    
	tStruggleUpPack_NoGiftServerAward[28]["RewardProItem"][6]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[28]["RewardProItem"][6]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[28]["RewardProItem"][6]["Item"][1]["Id"] = 613048
	tStruggleUpPack_NoGiftServerAward[28]["RewardProItem"][6]["Item"][1]["Attr"] = "0 1"
	tStruggleUpPack_NoGiftServerAward[28]["RewardProItem"][6]["Item"][2] = {}
	tStruggleUpPack_NoGiftServerAward[28]["RewardProItem"][6]["Item"][2]["Id"] = 721408
	tStruggleUpPack_NoGiftServerAward[28]["RewardProItem"][6]["Item"][2]["Attr"] = "0 1 3"
	                      
	--  道士              25
	tStruggleUpPack_NoGiftServerAward[28]["RewardProItem"][7] = {}
	tStruggleUpPack_NoGiftServerAward[28]["RewardProItem"][7]["Pro"] = {{100,145}}                    
	tStruggleUpPack_NoGiftServerAward[28]["RewardProItem"][7]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[28]["RewardProItem"][7]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[28]["RewardProItem"][7]["Item"][1]["Id"] = 421048
	tStruggleUpPack_NoGiftServerAward[28]["RewardProItem"][7]["Item"][1]["Attr"] = "0 1"
	tStruggleUpPack_NoGiftServerAward[28]["RewardProItem"][7]["Item"][2] = {}
	tStruggleUpPack_NoGiftServerAward[28]["RewardProItem"][7]["Item"][2]["Id"] = 721423
	tStruggleUpPack_NoGiftServerAward[28]["RewardProItem"][7]["Item"][2]["Attr"] = "0 1 3"
	                      
	--  铁扇门（160-165） 25
	tStruggleUpPack_NoGiftServerAward[28]["RewardProItem"][8] = {}
	tStruggleUpPack_NoGiftServerAward[28]["RewardProItem"][8]["Pro"] = {{160,165}}                    
	tStruggleUpPack_NoGiftServerAward[28]["RewardProItem"][8]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[28]["RewardProItem"][8]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[28]["RewardProItem"][8]["Item"][1]["Id"] =  626058
	tStruggleUpPack_NoGiftServerAward[28]["RewardProItem"][8]["Item"][1]["Attr"] = "0 1"
	tStruggleUpPack_NoGiftServerAward[28]["RewardProItem"][8]["Item"][2] = {}
	tStruggleUpPack_NoGiftServerAward[28]["RewardProItem"][8]["Item"][2]["Id"] =  721408
	tStruggleUpPack_NoGiftServerAward[28]["RewardProItem"][8]["Item"][2]["Attr"] = "0 1 3"
	                      
	--  拳师              25
	tStruggleUpPack_NoGiftServerAward[28]["RewardProItem"][9] = {}
	tStruggleUpPack_NoGiftServerAward[28]["RewardProItem"][9]["Pro"] = {{80,85}}                    
	tStruggleUpPack_NoGiftServerAward[28]["RewardProItem"][9]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[28]["RewardProItem"][9]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[28]["RewardProItem"][9]["Item"][1]["Id"] =   617058
	tStruggleUpPack_NoGiftServerAward[28]["RewardProItem"][9]["Item"][1]["Attr"] = "0 1"
	tStruggleUpPack_NoGiftServerAward[28]["RewardProItem"][9]["Item"][2] = {}
	tStruggleUpPack_NoGiftServerAward[28]["RewardProItem"][9]["Item"][2]["Id"] =   721408
	tStruggleUpPack_NoGiftServerAward[28]["RewardProItem"][9]["Item"][2]["Attr"] = "0 1 3"
	--  雷神              
	tStruggleUpPack_NoGiftServerAward[28]["RewardProItem"][10] = {}
	tStruggleUpPack_NoGiftServerAward[28]["RewardProItem"][10]["Pro"] = {{90,95}}                    
	tStruggleUpPack_NoGiftServerAward[28]["RewardProItem"][10]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[28]["RewardProItem"][10]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[28]["RewardProItem"][10]["Item"][1]["Id"] =   681058
	tStruggleUpPack_NoGiftServerAward[28]["RewardProItem"][10]["Item"][1]["Attr"] = "0 1"
	tStruggleUpPack_NoGiftServerAward[28]["RewardProItem"][10]["Item"][2] = {}
	tStruggleUpPack_NoGiftServerAward[28]["RewardProItem"][10]["Item"][2]["Id"] =   721408
	tStruggleUpPack_NoGiftServerAward[28]["RewardProItem"][10]["Item"][2]["Attr"] = "0 1 3"
	
-- 2转40	精品帽子（赠）+精品帽子淬炼（赠）
	tStruggleUpPack_NoGiftServerAward[29] = {}
	tStruggleUpPack_NoGiftServerAward[29]["LogId"] = 12001075
	tStruggleUpPack_NoGiftServerAward[29]["RewardItem"] = {}
	tStruggleUpPack_NoGiftServerAward[29]["RewardItem"][1] = {}
	tStruggleUpPack_NoGiftServerAward[29]["RewardItem"][1]["Id"] = 724443
	tStruggleUpPack_NoGiftServerAward[29]["RewardItem"][1]["Attr"] = "0 1 3"
	
	--  战士
	tStruggleUpPack_NoGiftServerAward[29]["RewardProItem"] = {}
	tStruggleUpPack_NoGiftServerAward[29]["RewardProItem"][1] = {}
	tStruggleUpPack_NoGiftServerAward[29]["RewardProItem"][1]["Pro"] = {{20,25}}                    
	tStruggleUpPack_NoGiftServerAward[29]["RewardProItem"][1]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[29]["RewardProItem"][1]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[29]["RewardProItem"][1]["Item"][1]["Id"] = 111038
	tStruggleUpPack_NoGiftServerAward[29]["RewardProItem"][1]["Item"][1]["Attr"] = "0 1"
	                      
	--  勇士              26
	tStruggleUpPack_NoGiftServerAward[29]["RewardProItem"][2] = {}
	tStruggleUpPack_NoGiftServerAward[29]["RewardProItem"][2]["Pro"] = {{10,15}}                    
	tStruggleUpPack_NoGiftServerAward[29]["RewardProItem"][2]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[29]["RewardProItem"][2]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[29]["RewardProItem"][2]["Item"][1]["Id"] = 118038
	tStruggleUpPack_NoGiftServerAward[29]["RewardProItem"][2]["Item"][1]["Attr"] = "0 1"
	                      
	--  忍者              26
	tStruggleUpPack_NoGiftServerAward[29]["RewardProItem"][3] = {}
	tStruggleUpPack_NoGiftServerAward[29]["RewardProItem"][3]["Pro"] = {{50,55}}                    
	tStruggleUpPack_NoGiftServerAward[29]["RewardProItem"][3]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[29]["RewardProItem"][3]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[29]["RewardProItem"][3]["Item"][1]["Id"] = 123038
	tStruggleUpPack_NoGiftServerAward[29]["RewardProItem"][3]["Item"][1]["Attr"] = "0 1"
	                      
	--  武僧              26
	tStruggleUpPack_NoGiftServerAward[29]["RewardProItem"][4] = {}
	tStruggleUpPack_NoGiftServerAward[29]["RewardProItem"][4]["Pro"] = {{60,65}}                    
	tStruggleUpPack_NoGiftServerAward[29]["RewardProItem"][4]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[29]["RewardProItem"][4]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[29]["RewardProItem"][4]["Item"][1]["Id"] = 143038
	tStruggleUpPack_NoGiftServerAward[29]["RewardProItem"][4]["Item"][1]["Attr"] = "0 1"
	                      
	--  海盗              26
	tStruggleUpPack_NoGiftServerAward[29]["RewardProItem"][5] = {}
	tStruggleUpPack_NoGiftServerAward[29]["RewardProItem"][5]["Pro"] = {{70,75}}                    
	tStruggleUpPack_NoGiftServerAward[29]["RewardProItem"][5]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[29]["RewardProItem"][5]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[29]["RewardProItem"][5]["Item"][1]["Id"] = 144038
	tStruggleUpPack_NoGiftServerAward[29]["RewardProItem"][5]["Item"][1]["Attr"] = "0 1"
	                      
	--  弓手              26
	tStruggleUpPack_NoGiftServerAward[29]["RewardProItem"][6] = {}
	tStruggleUpPack_NoGiftServerAward[29]["RewardProItem"][6]["Pro"] = {{40,45}}                    
	tStruggleUpPack_NoGiftServerAward[29]["RewardProItem"][6]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[29]["RewardProItem"][6]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[29]["RewardProItem"][6]["Item"][1]["Id"] = 113018
	tStruggleUpPack_NoGiftServerAward[29]["RewardProItem"][6]["Item"][1]["Attr"] = "0 1"
	                      
	--  道士              26
	tStruggleUpPack_NoGiftServerAward[29]["RewardProItem"][7] = {}
	tStruggleUpPack_NoGiftServerAward[29]["RewardProItem"][7]["Pro"] = {{100,145}}                    
	tStruggleUpPack_NoGiftServerAward[29]["RewardProItem"][7]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[29]["RewardProItem"][7]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[29]["RewardProItem"][7]["Item"][1]["Id"] = 114038
	tStruggleUpPack_NoGiftServerAward[29]["RewardProItem"][7]["Item"][1]["Attr"] = "0 1"
	                      
	--  铁扇门（160-165） 26
	tStruggleUpPack_NoGiftServerAward[29]["RewardProItem"][8] = {}
	tStruggleUpPack_NoGiftServerAward[29]["RewardProItem"][8]["Pro"] = {{160,165}}                    
	tStruggleUpPack_NoGiftServerAward[29]["RewardProItem"][8]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[29]["RewardProItem"][8]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[29]["RewardProItem"][8]["Item"][1]["Id"] = 170038
	tStruggleUpPack_NoGiftServerAward[29]["RewardProItem"][8]["Item"][1]["Attr"] = "0 1"
	                      
	--  拳师              26
	tStruggleUpPack_NoGiftServerAward[29]["RewardProItem"][9] = {}
	tStruggleUpPack_NoGiftServerAward[29]["RewardProItem"][9]["Pro"] = {{80,85}}                    
	tStruggleUpPack_NoGiftServerAward[29]["RewardProItem"][9]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[29]["RewardProItem"][9]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[29]["RewardProItem"][9]["Item"][1]["Id"] = 148038
	tStruggleUpPack_NoGiftServerAward[29]["RewardProItem"][9]["Item"][1]["Attr"] = "0 1"
	--  雷神              26
	tStruggleUpPack_NoGiftServerAward[29]["RewardProItem"][10] = {}
	tStruggleUpPack_NoGiftServerAward[29]["RewardProItem"][10]["Pro"] = {{90,95}}                    
	tStruggleUpPack_NoGiftServerAward[29]["RewardProItem"][10]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[29]["RewardProItem"][10]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[29]["RewardProItem"][10]["Item"][1]["Id"] = 146038
	tStruggleUpPack_NoGiftServerAward[29]["RewardProItem"][10]["Item"][1]["Attr"] = "0 1"


-- 2转50	精品鞋子+精品鞋子淬炼（赠）
	tStruggleUpPack_NoGiftServerAward[30] = {}
	tStruggleUpPack_NoGiftServerAward[30]["LogId"] = 12001075
	tStruggleUpPack_NoGiftServerAward[30]["RewardItem"] = {}
	tStruggleUpPack_NoGiftServerAward[30]["RewardItem"][1] = {}
	tStruggleUpPack_NoGiftServerAward[30]["RewardItem"][1]["Id"] = 160098
	tStruggleUpPack_NoGiftServerAward[30]["RewardItem"][1]["Attr"] = "0 1"
	tStruggleUpPack_NoGiftServerAward[30]["RewardItem"][2] = {}
	tStruggleUpPack_NoGiftServerAward[30]["RewardItem"][2]["Id"] = 724438
	tStruggleUpPack_NoGiftServerAward[30]["RewardItem"][2]["Attr"] = "0 1 3"

-- 2转60	精品戒指+精品戒指淬炼（赠）
	tStruggleUpPack_NoGiftServerAward[31] = {}
	tStruggleUpPack_NoGiftServerAward[31]["LogId"] = 12001075
	-- tStruggleUpPack_NoGiftServerAward[31]["RewardItem"] = {}
	-- tStruggleUpPack_NoGiftServerAward[31]["RewardItem"][1] = {}
	-- tStruggleUpPack_NoGiftServerAward[31]["RewardItem"][1]["Id"] = 150118
	-- tStruggleUpPack_NoGiftServerAward[31]["RewardItem"][1]["Attr"] = "0 1"
	-- tStruggleUpPack_NoGiftServerAward[31]["RewardItem"][2] = {}
	-- tStruggleUpPack_NoGiftServerAward[31]["RewardItem"][2]["Id"] = 724471
	-- tStruggleUpPack_NoGiftServerAward[31]["RewardItem"][2]["Attr"] = "0 1 3"
	
	tStruggleUpPack_NoGiftServerAward[31]["RewardProItem"] = {}
	tStruggleUpPack_NoGiftServerAward[31]["RewardProItem"][1] = {}
	tStruggleUpPack_NoGiftServerAward[31]["RewardProItem"][1]["Pro"] = {{100,145}}                    
	tStruggleUpPack_NoGiftServerAward[31]["RewardProItem"][1]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[31]["RewardProItem"][1]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[31]["RewardProItem"][1]["Item"][1]["Id"] = 152108
	tStruggleUpPack_NoGiftServerAward[31]["RewardProItem"][1]["Item"][1]["Attr"] = "0 1"
	tStruggleUpPack_NoGiftServerAward[31]["RewardProItem"][1]["Item"][2] = {}
	tStruggleUpPack_NoGiftServerAward[31]["RewardProItem"][1]["Item"][2]["Id"] = 725205
	tStruggleUpPack_NoGiftServerAward[31]["RewardProItem"][1]["Item"][2]["Attr"] = "0 1 3"
                          
	tStruggleUpPack_NoGiftServerAward[31]["RewardProItem"][2] = {}
	tStruggleUpPack_NoGiftServerAward[31]["RewardProItem"][2]["Pro"] = {{10,95},{160,165}}                    
	tStruggleUpPack_NoGiftServerAward[31]["RewardProItem"][2]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[31]["RewardProItem"][2]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[31]["RewardProItem"][2]["Item"][1]["Id"] = 150118
	tStruggleUpPack_NoGiftServerAward[31]["RewardProItem"][2]["Item"][1]["Attr"] = "0 1"
	tStruggleUpPack_NoGiftServerAward[31]["RewardProItem"][2]["Item"][2] = {}
	tStruggleUpPack_NoGiftServerAward[31]["RewardProItem"][2]["Item"][2]["Id"] = 724471
	tStruggleUpPack_NoGiftServerAward[31]["RewardProItem"][2]["Item"][2]["Attr"] = "0 1 3"
	
	
-- 2转70	精品项链（赠）+精品项链淬炼（赠）
	tStruggleUpPack_NoGiftServerAward[32] = {}
	tStruggleUpPack_NoGiftServerAward[32]["LogId"] = 12001075
	-- tStruggleUpPack_NoGiftServerAward[32]["RewardItem"] = {}
	-- tStruggleUpPack_NoGiftServerAward[32]["RewardItem"][1] = {}
	-- tStruggleUpPack_NoGiftServerAward[32]["RewardItem"][1]["Id"] = 120128
	-- tStruggleUpPack_NoGiftServerAward[32]["RewardItem"][1]["Attr"] = "0 1"
	-- tStruggleUpPack_NoGiftServerAward[32]["RewardItem"][2] = {}
	-- tStruggleUpPack_NoGiftServerAward[32]["RewardItem"][2]["Id"] = 724481
	-- tStruggleUpPack_NoGiftServerAward[32]["RewardItem"][2]["Attr"] = "0 1 3"

	tStruggleUpPack_NoGiftServerAward[32]["RewardProItem"] = {}
	tStruggleUpPack_NoGiftServerAward[32]["RewardProItem"][1] = {}
	tStruggleUpPack_NoGiftServerAward[32]["RewardProItem"][1]["Pro"] = {{100,145}}                    
	tStruggleUpPack_NoGiftServerAward[32]["RewardProItem"][1]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[32]["RewardProItem"][1]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[32]["RewardProItem"][1]["Item"][1]["Id"] = 121128
	tStruggleUpPack_NoGiftServerAward[32]["RewardProItem"][1]["Item"][1]["Attr"] = "0 1"
	tStruggleUpPack_NoGiftServerAward[32]["RewardProItem"][1]["Item"][2] = {}
	tStruggleUpPack_NoGiftServerAward[32]["RewardProItem"][1]["Item"][2]["Id"] = 724388
	tStruggleUpPack_NoGiftServerAward[32]["RewardProItem"][1]["Item"][2]["Attr"] = "0 1 3"
                          
	tStruggleUpPack_NoGiftServerAward[32]["RewardProItem"][2] = {}
	tStruggleUpPack_NoGiftServerAward[32]["RewardProItem"][2]["Pro"] = {{10,95},{160,165}}                    
	tStruggleUpPack_NoGiftServerAward[32]["RewardProItem"][2]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[32]["RewardProItem"][2]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[32]["RewardProItem"][2]["Item"][1]["Id"] = 120128
	tStruggleUpPack_NoGiftServerAward[32]["RewardProItem"][2]["Item"][1]["Attr"] = "0 1"
	tStruggleUpPack_NoGiftServerAward[32]["RewardProItem"][2]["Item"][2] = {}
	tStruggleUpPack_NoGiftServerAward[32]["RewardProItem"][2]["Item"][2]["Id"] = 724481
	tStruggleUpPack_NoGiftServerAward[32]["RewardProItem"][2]["Item"][2]["Attr"] = "0 1 3"
	
	
	
-- 2转80	通神丹（赠）*30
	tStruggleUpPack_NoGiftServerAward[33] = {}
	tStruggleUpPack_NoGiftServerAward[33]["LogId"] = 12001075
	tStruggleUpPack_NoGiftServerAward[33]["RewardItem"] = {}
	tStruggleUpPack_NoGiftServerAward[33]["RewardItem"][1] = {}
	tStruggleUpPack_NoGiftServerAward[33]["RewardItem"][1]["Id"] = 3003125
	tStruggleUpPack_NoGiftServerAward[33]["RewardItem"][1]["Attr"] = "0 30 3"


-- 2转90	免费强炼丹（赠）*30
	tStruggleUpPack_NoGiftServerAward[34] = {}
	tStruggleUpPack_NoGiftServerAward[34]["LogId"] = 12001075
	tStruggleUpPack_NoGiftServerAward[34]["RewardItem"] = {}
	tStruggleUpPack_NoGiftServerAward[34]["RewardItem"][1] = {}
	tStruggleUpPack_NoGiftServerAward[34]["RewardItem"][1]["Id"] = 3003124
	tStruggleUpPack_NoGiftServerAward[34]["RewardItem"][1]["Attr"] = "0 30 3"


-- 2转100	300天石（赠）
	tStruggleUpPack_NoGiftServerAward[35] = {}
	tStruggleUpPack_NoGiftServerAward[35]["LogId"] = 12001075
	tStruggleUpPack_NoGiftServerAward[35]["RewardItem"] = {}
	tStruggleUpPack_NoGiftServerAward[35]["RewardItem"][1] = {}
	tStruggleUpPack_NoGiftServerAward[35]["RewardItem"][1]["Id"] = 3006436
	tStruggleUpPack_NoGiftServerAward[35]["RewardItem"][1]["Attr"] = "0 1"


-- 2转110	六阳聚神丹（赠）
	tStruggleUpPack_NoGiftServerAward[36] = {}
	tStruggleUpPack_NoGiftServerAward[36]["LogId"] = 12001075
	tStruggleUpPack_NoGiftServerAward[36]["RewardItem"] = {}
	tStruggleUpPack_NoGiftServerAward[36]["RewardItem"][1] = {}
	tStruggleUpPack_NoGiftServerAward[36]["RewardItem"][1]["Id"] = 3303100
	tStruggleUpPack_NoGiftServerAward[36]["RewardItem"][1]["Attr"] = "0 1 3"

	
-- 2转120	全套3阶神魂（赠）
	tStruggleUpPack_NoGiftServerAward[37] = {}
	tStruggleUpPack_NoGiftServerAward[37]["LogId"] = 12001075
	 --  战士
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"] = {}
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][1] = {}
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][1]["Pro"] = {{20,25}}                    
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][1]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][1]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][1]["Item"][1]["Id"] = 800230
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][1]["Item"][1]["Attr"] = "0 1 3"
	
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][1]["Item"][2] = {}
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][1]["Item"][2]["Id"] = 820052
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][1]["Item"][2]["Attr"] = "0 1 3"
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][1]["Item"][3] = {}
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][1]["Item"][3]["Id"] = 821027
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][1]["Item"][3]["Attr"] = "0 1 3"
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][1]["Item"][4] = {}
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][1]["Item"][4]["Id"] = 822056
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][1]["Item"][4]["Attr"] = "0 1 3"
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][1]["Item"][5] = {}
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][1]["Item"][5]["Id"] = 823041
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][1]["Item"][5]["Attr"] = "0 1 3"
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][1]["Item"][6] = {}
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][1]["Item"][6]["Id"] = 824016
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][1]["Item"][6]["Attr"] = "0 1 3"
	                      
	--  勇士              34
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][2] = {}
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][2]["Pro"] = {{10,15}}                    
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][2]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][2]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][2]["Item"][1]["Id"] = 800050
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][2]["Item"][1]["Attr"] = "0 1 3"
		
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][2]["Item"][2] = {}
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][2]["Item"][2]["Id"] = 820052
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][2]["Item"][2]["Attr"] = "0 1 3"
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][2]["Item"][3] = {}
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][2]["Item"][3]["Id"] = 821027
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][2]["Item"][3]["Attr"] = "0 1 3"
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][2]["Item"][4] = {}
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][2]["Item"][4]["Id"] = 822056
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][2]["Item"][4]["Attr"] = "0 1 3"
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][2]["Item"][5] = {}
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][2]["Item"][5]["Id"] = 823041
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][2]["Item"][5]["Attr"] = "0 1 3"
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][2]["Item"][6] = {}
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][2]["Item"][6]["Id"] = 824016
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][2]["Item"][6]["Attr"] = "0 1 3"
	
	--  忍者              34
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][3] = {}
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][3]["Pro"] = {{50,55}}                    
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][3]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][3]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][3]["Item"][1]["Id"] =  800141
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][3]["Item"][1]["Attr"] = "0 1 3"         
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][3]["Item"][2] = {}
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][3]["Item"][2]["Id"] = 820052
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][3]["Item"][2]["Attr"] = "0 1 3"
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][3]["Item"][3] = {}
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][3]["Item"][3]["Id"] = 821027
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][3]["Item"][3]["Attr"] = "0 1 3"
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][3]["Item"][4] = {}
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][3]["Item"][4]["Id"] = 822056
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][3]["Item"][4]["Attr"] = "0 1 3"
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][3]["Item"][5] = {}
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][3]["Item"][5]["Id"] = 823041
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][3]["Item"][5]["Attr"] = "0 1 3"
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][3]["Item"][6] = {}
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][3]["Item"][6]["Id"] = 824016
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][3]["Item"][6]["Attr"] = "0 1 3"
	
	--  武僧              34
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][4] = {}
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][4]["Pro"] = {{60,65}}                    
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][4]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][4]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][4]["Item"][1]["Id"] = 800724
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][4]["Item"][1]["Attr"] = "0 1 3"
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][4]["Item"][2] = {}
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][4]["Item"][2]["Id"] = 820052
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][4]["Item"][2]["Attr"] = "0 1 3"
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][4]["Item"][3] = {}
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][4]["Item"][3]["Id"] = 821027
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][4]["Item"][3]["Attr"] = "0 1 3"
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][4]["Item"][4] = {}
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][4]["Item"][4]["Id"] = 822056
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][4]["Item"][4]["Attr"] = "0 1 3"
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][4]["Item"][5] = {}
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][4]["Item"][5]["Id"] = 823041
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][4]["Item"][5]["Attr"] = "0 1 3"
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][4]["Item"][6] = {}
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][4]["Item"][6]["Id"] = 824016
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][4]["Item"][6]["Attr"] = "0 1 3"
	                      
	--  海盗              34
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][5] = {}
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][5]["Pro"] = {{70,75}}                    
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][5]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][5]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][5]["Item"][1]["Id"] = 800807
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][5]["Item"][1]["Attr"] = "0 1 3"
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][5]["Item"][2] = {}
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][5]["Item"][2]["Id"] = 820052
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][5]["Item"][2]["Attr"] = "0 1 3"
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][5]["Item"][3] = {}
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][5]["Item"][3]["Id"] = 821027
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][5]["Item"][3]["Attr"] = "0 1 3"
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][5]["Item"][4] = {}
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][5]["Item"][4]["Id"] = 822056
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][5]["Item"][4]["Attr"] = "0 1 3"
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][5]["Item"][5] = {}
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][5]["Item"][5]["Id"] = 823041
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][5]["Item"][5]["Attr"] = "0 1 3"
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][5]["Item"][6] = {}
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][5]["Item"][6]["Id"] = 824016
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][5]["Item"][6]["Attr"] = "0 1 3"
	
	--  弓手              34
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][6] = {}
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][6]["Pro"] = {{40,45}}                    
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][6]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][6]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][6]["Item"][1]["Id"] = 800915
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][6]["Item"][1]["Attr"] = "0 1 3"                    
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][6]["Item"][2] = {}
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][6]["Item"][2]["Id"] = 820052
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][6]["Item"][2]["Attr"] = "0 1 3"
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][6]["Item"][3] = {}
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][6]["Item"][3]["Id"] = 821027
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][6]["Item"][3]["Attr"] = "0 1 3"
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][6]["Item"][4] = {}
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][6]["Item"][4]["Id"] = 822056
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][6]["Item"][4]["Attr"] = "0 1 3"
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][6]["Item"][5] = {}
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][6]["Item"][5]["Id"] = 823041
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][6]["Item"][5]["Attr"] = "0 1 3"
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][6]["Item"][6] = {}
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][6]["Item"][6]["Id"] = 824016
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][6]["Item"][6]["Attr"] = "0 1 3"
	
	--  道士              34
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][7] = {}
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][7]["Pro"] = {{100,145}}                    
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][7]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][7]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][7]["Item"][1]["Id"] = 800521
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][7]["Item"][1]["Attr"] = "0 1 3"
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][7]["Item"][2] = {}
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][7]["Item"][2]["Id"] = 824016
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][7]["Item"][2]["Attr"] = "0 1 3"
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][7]["Item"][3] = {}
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][7]["Item"][3]["Id"] = 820053
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][7]["Item"][3]["Attr"] = "0 1 3"
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][7]["Item"][4] = {}
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][7]["Item"][4]["Id"] = 821029
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][7]["Item"][4]["Attr"] = "0 1 3"
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][7]["Item"][5] = {}
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][7]["Item"][5]["Id"] = 822057
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][7]["Item"][5]["Attr"] = "0 1 3"
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][7]["Item"][6] = {}
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][7]["Item"][6]["Id"] = 823043
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][7]["Item"][6]["Attr"] = "0 1 3"
	
	--  铁扇门（160-165） 34
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][8] = {}
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][8]["Pro"] = {{160,165}}                    
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][8]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][8]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][8]["Item"][1]["Id"] =  801302
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][8]["Item"][1]["Attr"] = "0 1 3"
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][8]["Item"][2] = {}
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][8]["Item"][2]["Id"] = 820052
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][8]["Item"][2]["Attr"] = "0 1 3"
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][8]["Item"][3] = {}
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][8]["Item"][3]["Id"] = 821027
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][8]["Item"][3]["Attr"] = "0 1 3"
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][8]["Item"][4] = {}
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][8]["Item"][4]["Id"] = 822056
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][8]["Item"][4]["Attr"] = "0 1 3"
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][8]["Item"][5] = {}
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][8]["Item"][5]["Id"] = 823041
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][8]["Item"][5]["Attr"] = "0 1 3"
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][8]["Item"][6] = {}
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][8]["Item"][6]["Id"] = 824016
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][8]["Item"][6]["Attr"] = "0 1 3"
	                      
	--  拳师              34
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][9] = {}
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][9]["Pro"] = {{80,85}}                    
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][9]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][9]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][9]["Item"][1]["Id"] =   801001
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][9]["Item"][1]["Attr"] = "0 1 3"
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][9]["Item"][2] = {}
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][9]["Item"][2]["Id"] = 820052
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][9]["Item"][2]["Attr"] = "0 1 3"
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][9]["Item"][3] = {}
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][9]["Item"][3]["Id"] = 821027
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][9]["Item"][3]["Attr"] = "0 1 3"
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][9]["Item"][4] = {}
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][9]["Item"][4]["Id"] = 822056
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][9]["Item"][4]["Attr"] = "0 1 3"
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][9]["Item"][5] = {}
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][9]["Item"][5]["Id"] = 823041
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][9]["Item"][5]["Attr"] = "0 1 3"
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][9]["Item"][6] = {}
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][9]["Item"][6]["Id"] = 824016
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][9]["Item"][6]["Attr"] = "0 1 3"
	--  雷神              34
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][10] = {}
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][10]["Pro"] = {{90,95}}                    
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][10]["Item"] = {}
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][10]["Item"][1] = {}
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][10]["Item"][1]["Id"] =   827002
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][10]["Item"][1]["Attr"] = "0 1 3"
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][10]["Item"][2] = {}
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][10]["Item"][2]["Id"] = 820052
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][10]["Item"][2]["Attr"] = "0 1 3"
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][10]["Item"][3] = {}
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][10]["Item"][3]["Id"] = 821027
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][10]["Item"][3]["Attr"] = "0 1 3"
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][10]["Item"][4] = {}
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][10]["Item"][4]["Id"] = 822056
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][10]["Item"][4]["Attr"] = "0 1 3"
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][10]["Item"][5] = {}
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][10]["Item"][5]["Id"] = 823041
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][10]["Item"][5]["Attr"] = "0 1 3"
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][10]["Item"][6] = {}
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][10]["Item"][6]["Id"] = 824016
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][10]["Item"][6]["Attr"] = "0 1 3"
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][10]["Item"][7] = {}
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][10]["Item"][7]["Id"] = 827003
	tStruggleUpPack_NoGiftServerAward[37]["RewardProItem"][10]["Item"][7]["Attr"] = "0 1 3"
	
	
-- 新服礼包
local	tStruggleUpPack_NewPackAward = {}
	
-- 1	60分钟双倍经验时间
	tStruggleUpPack_NewPackAward[1] = {}
	tStruggleUpPack_NewPackAward[1]["LogId"] = 12001075
	tStruggleUpPack_NewPackAward[1]["RewardItem"] = {}
	tStruggleUpPack_NewPackAward[1]["RewardItem"][1] = {}
	tStruggleUpPack_NewPackAward[1]["RewardItem"][1]["Id"] = 723017
	tStruggleUpPack_NewPackAward[1]["RewardItem"][1]["Attr"] = "0 1 3"

	
-- 60	300分钟经验
	tStruggleUpPack_NewPackAward[2] = {}
	tStruggleUpPack_NewPackAward[2]["LogId"] = 12001075
	tStruggleUpPack_NewPackAward[2]["RewardItem"] = {}
	tStruggleUpPack_NewPackAward[2]["RewardItem"][1] = {}
	tStruggleUpPack_NewPackAward[2]["RewardItem"][1]["Id"] = 723017
	tStruggleUpPack_NewPackAward[2]["RewardItem"][1]["Attr"] = "0 1 3"
	tStruggleUpPack_NewPackAward[2]["RewardItem"][2] = {}
	tStruggleUpPack_NewPackAward[2]["RewardItem"][2]["Id"] = 3200334
	tStruggleUpPack_NewPackAward[2]["RewardItem"][2]["Attr"] = "0 1"
		
	
-- 100	200修行值
	tStruggleUpPack_NewPackAward[3] = {}
	tStruggleUpPack_NewPackAward[3]["LogId"] = 12001075
	tStruggleUpPack_NewPackAward[3]["RewardItem"] = {}
	tStruggleUpPack_NewPackAward[3]["RewardItem"][1] = {}
	tStruggleUpPack_NewPackAward[3]["RewardItem"][1]["Id"] = 723017
	tStruggleUpPack_NewPackAward[3]["RewardItem"][1]["Attr"] = "0 1 3"
	tStruggleUpPack_NewPackAward[3]["RewardItem"][2] = {}
	tStruggleUpPack_NewPackAward[3]["RewardItem"][2]["Id"] = 3200334
	tStruggleUpPack_NewPackAward[3]["RewardItem"][2]["Attr"] = "0 1"
	tStruggleUpPack_NewPackAward[3]["RewardItem"][3] = {}
	tStruggleUpPack_NewPackAward[3]["RewardItem"][3]["Id"] = 3005123
	tStruggleUpPack_NewPackAward[3]["RewardItem"][3]["Attr"] = "0 1"

-- 1转60	1天时效天道酬勤卷轴（赠）
	tStruggleUpPack_NewPackAward[4] = {}
	tStruggleUpPack_NewPackAward[4]["LogId"] = 12001075
	tStruggleUpPack_NewPackAward[4]["RewardItem"] = {}
	tStruggleUpPack_NewPackAward[4]["RewardItem"][1] = {}
	tStruggleUpPack_NewPackAward[4]["RewardItem"][1]["Id"] = 723017
	tStruggleUpPack_NewPackAward[4]["RewardItem"][1]["Attr"] = "0 1 3"
	tStruggleUpPack_NewPackAward[4]["RewardItem"][2] = {}
	tStruggleUpPack_NewPackAward[4]["RewardItem"][2]["Id"] = 3200334
	tStruggleUpPack_NewPackAward[4]["RewardItem"][2]["Attr"] = "0 1"
	tStruggleUpPack_NewPackAward[4]["RewardItem"][3] = {}
	tStruggleUpPack_NewPackAward[4]["RewardItem"][3]["Id"] = 3005123
	tStruggleUpPack_NewPackAward[4]["RewardItem"][3]["Attr"] = "0 1"
	tStruggleUpPack_NewPackAward[4]["RewardItem"][4] = {}
	tStruggleUpPack_NewPackAward[4]["RewardItem"][4]["Id"] = 3001407
	tStruggleUpPack_NewPackAward[4]["RewardItem"][4]["Attr"] = "0 1 3 1440 1"
	
-- 1转120	7天时效赤炼石+3（赠）
	tStruggleUpPack_NewPackAward[5] = {}
	tStruggleUpPack_NewPackAward[5]["LogId"] = 12001075
	tStruggleUpPack_NewPackAward[5]["RewardItem"] = {}
	tStruggleUpPack_NewPackAward[5]["RewardItem"][1] = {}
	tStruggleUpPack_NewPackAward[5]["RewardItem"][1]["Id"] = 723017
	tStruggleUpPack_NewPackAward[5]["RewardItem"][1]["Attr"] = "0 1 3"
	tStruggleUpPack_NewPackAward[5]["RewardItem"][2] = {}
	tStruggleUpPack_NewPackAward[5]["RewardItem"][2]["Id"] = 3200334
	tStruggleUpPack_NewPackAward[5]["RewardItem"][2]["Attr"] = "0 1"
	tStruggleUpPack_NewPackAward[5]["RewardItem"][3] = {}
	tStruggleUpPack_NewPackAward[5]["RewardItem"][3]["Id"] = 3005123
	tStruggleUpPack_NewPackAward[5]["RewardItem"][3]["Attr"] = "0 1"
	tStruggleUpPack_NewPackAward[5]["RewardItem"][4] = {}
	tStruggleUpPack_NewPackAward[5]["RewardItem"][4]["Id"] = 3001407
	tStruggleUpPack_NewPackAward[5]["RewardItem"][4]["Attr"] = "0 1 3 1440 1"
	tStruggleUpPack_NewPackAward[5]["RewardItem"][5] = {}
	tStruggleUpPack_NewPackAward[5]["RewardItem"][5]["Id"] = 730003
	tStruggleUpPack_NewPackAward[5]["RewardItem"][5]["Attr"] = "0 1 3 10080 1"

-- 2转30	秘制免费修炼丹*15
	tStruggleUpPack_NewPackAward[6] = {}
	tStruggleUpPack_NewPackAward[6]["LogId"] = 12001075
	tStruggleUpPack_NewPackAward[6]["RewardItem"] = {}
	tStruggleUpPack_NewPackAward[6]["RewardItem"][1] = {}
	tStruggleUpPack_NewPackAward[6]["RewardItem"][1]["Id"] = 723017
	tStruggleUpPack_NewPackAward[6]["RewardItem"][1]["Attr"] = "0 1 3"
	tStruggleUpPack_NewPackAward[6]["RewardItem"][2] = {}
	tStruggleUpPack_NewPackAward[6]["RewardItem"][2]["Id"] = 3200334
	tStruggleUpPack_NewPackAward[6]["RewardItem"][2]["Attr"] = "0 1"
	tStruggleUpPack_NewPackAward[6]["RewardItem"][3] = {}
	tStruggleUpPack_NewPackAward[6]["RewardItem"][3]["Id"] = 3005123
	tStruggleUpPack_NewPackAward[6]["RewardItem"][3]["Attr"] = "0 1"
	tStruggleUpPack_NewPackAward[6]["RewardItem"][4] = {}
	tStruggleUpPack_NewPackAward[6]["RewardItem"][4]["Id"] = 3001407
	tStruggleUpPack_NewPackAward[6]["RewardItem"][4]["Attr"] = "0 1 3 1440 1"
	tStruggleUpPack_NewPackAward[6]["RewardItem"][5] = {}
	tStruggleUpPack_NewPackAward[6]["RewardItem"][5]["Id"] = 730003
	tStruggleUpPack_NewPackAward[6]["RewardItem"][5]["Attr"] = "0 1 3 10080 1"
	tStruggleUpPack_NewPackAward[6]["RewardItem"][6] = {}
	tStruggleUpPack_NewPackAward[6]["RewardItem"][6]["Id"] = 3002926
	tStruggleUpPack_NewPackAward[6]["RewardItem"][6]["Attr"] = "0 15"

-- 2转60	2天时效明亮星陨石
	tStruggleUpPack_NewPackAward[7] = {}
	tStruggleUpPack_NewPackAward[7]["LogId"] = 12001075
	tStruggleUpPack_NewPackAward[7]["RewardItem"] = {}
	tStruggleUpPack_NewPackAward[7]["RewardItem"][1] = {}
	tStruggleUpPack_NewPackAward[7]["RewardItem"][1]["Id"] = 723017
	tStruggleUpPack_NewPackAward[7]["RewardItem"][1]["Attr"] = "0 1 3"
	tStruggleUpPack_NewPackAward[7]["RewardItem"][2] = {}
	tStruggleUpPack_NewPackAward[7]["RewardItem"][2]["Id"] = 3200334
	tStruggleUpPack_NewPackAward[7]["RewardItem"][2]["Attr"] = "0 1"
	tStruggleUpPack_NewPackAward[7]["RewardItem"][3] = {}
	tStruggleUpPack_NewPackAward[7]["RewardItem"][3]["Id"] = 3005123
	tStruggleUpPack_NewPackAward[7]["RewardItem"][3]["Attr"] = "0 1"
	tStruggleUpPack_NewPackAward[7]["RewardItem"][4] = {}
	tStruggleUpPack_NewPackAward[7]["RewardItem"][4]["Id"] = 3001407
	tStruggleUpPack_NewPackAward[7]["RewardItem"][4]["Attr"] = "0 1 3 1440 1"
	tStruggleUpPack_NewPackAward[7]["RewardItem"][5] = {}
	tStruggleUpPack_NewPackAward[7]["RewardItem"][5]["Id"] = 730003
	tStruggleUpPack_NewPackAward[7]["RewardItem"][5]["Attr"] = "0 1 3 10080 1"
	tStruggleUpPack_NewPackAward[7]["RewardItem"][6] = {}
	tStruggleUpPack_NewPackAward[7]["RewardItem"][6]["Id"] = 3002926
	tStruggleUpPack_NewPackAward[7]["RewardItem"][6]["Attr"] = "0 15"
	tStruggleUpPack_NewPackAward[7]["RewardItem"][7] = {}
	tStruggleUpPack_NewPackAward[7]["RewardItem"][7]["Id"] = 3009001
	tStruggleUpPack_NewPackAward[7]["RewardItem"][7]["Attr"] = "0 1 0 2880 1"
	
-- 2转120	1000点气力值
	tStruggleUpPack_NewPackAward[8] = {}
	tStruggleUpPack_NewPackAward[8]["LogId"] = 12001075
	tStruggleUpPack_NewPackAward[8]["RewardItem"] = {}
	tStruggleUpPack_NewPackAward[8]["RewardItem"][1] = {}
	tStruggleUpPack_NewPackAward[8]["RewardItem"][1]["Id"] = 723017
	tStruggleUpPack_NewPackAward[8]["RewardItem"][1]["Attr"] = "0 1 3"
	tStruggleUpPack_NewPackAward[8]["RewardItem"][2] = {}
	tStruggleUpPack_NewPackAward[8]["RewardItem"][2]["Id"] = 3200334
	tStruggleUpPack_NewPackAward[8]["RewardItem"][2]["Attr"] = "0 1"
	tStruggleUpPack_NewPackAward[8]["RewardItem"][3] = {}
	tStruggleUpPack_NewPackAward[8]["RewardItem"][3]["Id"] = 3005123
	tStruggleUpPack_NewPackAward[8]["RewardItem"][3]["Attr"] = "0 1"
	tStruggleUpPack_NewPackAward[8]["RewardItem"][4] = {}
	tStruggleUpPack_NewPackAward[8]["RewardItem"][4]["Id"] = 3001407
	tStruggleUpPack_NewPackAward[8]["RewardItem"][4]["Attr"] = "0 1 3 1440 1"
	tStruggleUpPack_NewPackAward[8]["RewardItem"][5] = {}
	tStruggleUpPack_NewPackAward[8]["RewardItem"][5]["Id"] = 730003
	tStruggleUpPack_NewPackAward[8]["RewardItem"][5]["Attr"] = "0 1 3 10080 1"
	tStruggleUpPack_NewPackAward[8]["RewardItem"][6] = {}
	tStruggleUpPack_NewPackAward[8]["RewardItem"][6]["Id"] = 3002926
	tStruggleUpPack_NewPackAward[8]["RewardItem"][6]["Attr"] = "0 15"
	tStruggleUpPack_NewPackAward[8]["RewardItem"][7] = {}
	tStruggleUpPack_NewPackAward[8]["RewardItem"][7]["Id"] = 3009001
	tStruggleUpPack_NewPackAward[8]["RewardItem"][7]["Attr"] = "0 1 0 2880 1"
	tStruggleUpPack_NewPackAward[8]["RewardItem"][8] = {}
	tStruggleUpPack_NewPackAward[8]["RewardItem"][8]["Id"] = 3008193
	tStruggleUpPack_NewPackAward[8]["RewardItem"][8]["Attr"] = "0 1"
	
--上线获得礼包
local tStruggleUpPack_Online = {}
	tStruggleUpPack_Online[1] = {}
	tStruggleUpPack_Online[1]["LogId"] = 12001075
	tStruggleUpPack_Online[1]["RewardItem"] = {}
	tStruggleUpPack_Online[1]["RewardItem"][1] = {}
	tStruggleUpPack_Online[1]["RewardItem"][1]["Id"] = 3308659
	tStruggleUpPack_Online[1]["RewardItem"][1]["Attr"] = "0 1 0 86400 1"
	
	tStruggleUpPack_Online[2] = {}
	tStruggleUpPack_Online[2]["LogId"] = 18000074 --使用新服爽肤礼包历史log
	tStruggleUpPack_Online[2]["RewardItem"] = {}
	tStruggleUpPack_Online[2]["RewardItem"][1] = {}
	tStruggleUpPack_Online[2]["RewardItem"][1]["Id"] = 3007426
	tStruggleUpPack_Online[2]["RewardItem"][1]["Attr"] = "0 1 0 4320 1"


	
--掩码表
local tStruggleUpPack_Stc = {}
	tStruggleUpPack_Stc["EventType"] = {}
	tStruggleUpPack_Stc["DataType"] = {}
	
	--记录奋斗成长大礼包
	tStruggleUpPack_Stc["EventType"][3308658] = 176
	tStruggleUpPack_Stc["DataType"][3308658] = 73

	-- 记录征程再起大礼包
	tStruggleUpPack_Stc["EventType"][3308659] = 176
	tStruggleUpPack_Stc["DataType"][3308659] = 74
	
	-- 记录上线是否获得两个礼包
	tStruggleUpPack_Stc["EventType"][1] = 176
	tStruggleUpPack_Stc["DataType"][1] = 75
	
	--记录新服爽肤礼包
	tStruggleUpPack_Stc["EventType"][2] = 137
	tStruggleUpPack_Stc["DataType"][2] = 86
	
--log表
local tStruggleUpPack_Log = {}	
	tStruggleUpPack_Log["DelItem"] = "0,0,%d,0,12001075,2,0,0"	

--玩家等级标识表
local tStruggleUpPack_Flag = {
	{60,0,1},
	{100,0,2},
	{60,1,3},
	{120,1,4},
	{30,2,5},
	{60,2,6},
	{120,2,7}	
}	


---------------------------------逻辑部分--------------------------------------------- 
--上线自检等级给礼包
function StruggleUpPack_OnLine()

	local nUserId = Get_UserId()
	local nGlobalId = tStruggleUpPack_Data["GlobalId"]
	local sActivityTime = Get_SysDynaGlobalDataStr0(nGlobalId)
	if sActivityTime == '' or sActivityTime == nil then
		sActivityTime = tActivityTime["StruggleUpPack"]["ActivityTime"]
	end
	--判断时间
	if not Sys_ChkFullTime(sActivityTime) then
		return
	end
	
	--普通新服标识 51131
	local nNewGlobalId = tStruggleUpPack_Data["GlobalId1"]
	local nNewData0 = Get_SysDynaGlobalData0(nNewGlobalId)
	
	--不是新服直接return
	if nNewData0 ~= 1 then
		return
	end 
	
	--爽肤礼包掩码判断 
	local nNewEventType = tStruggleUpPack_Stc["EventType"][2]
	local nNewDataType = tStruggleUpPack_Stc["DataType"][2]
	local nNewData = Get_UserStatisticValue(nNewEventType,nNewDataType)
	
	if nNewData > 0 then
		return
	end
	--新奋斗服礼包掩码判断 
	local nEventType = tStruggleUpPack_Stc["EventType"][1]
	local nDataType = tStruggleUpPack_Stc["DataType"][1]
	local nData = Get_UserStatisticValue(nEventType,nDataType)
	
	if nData > 0 then
		return
	end
	
	--新奋斗服标识
	local nData0 = Get_SysDynaGlobalData0(nGlobalId)
	local nSpace = RewardTemplate_GetRewardSpace(tStruggleUpPack_Online[1])
	--背包空间判断
	if not User_CheckLeftSpace(nSpace) then 		
		User_TalkChannel2005(string.format(tStruggleUpPack_Text["Sys"]["OnlineBagFull"],nSpace))
		return
	end
	
	--新奋斗服标识  
	if nData0 == 1 then 
		--置掩码 给礼包
		Task_SetStatistic(nEventType,nDataType,1,1,nUserId)
		Task_SetStcTimestamp(nEventType,nDataType,0,nUserId)
		RewardTemplate_UseItemAndMsg(tStruggleUpPack_Online[1])
		return
	end
	--普通新服给爽肤礼包
	Task_SetStatistic(nNewEventType,nNewDataType,1,1,nUserId)
	Task_SetStcTimestamp(nNewEventType,nNewDataType,0,nUserId)
	RewardTemplate_UseItemAndMsg(tStruggleUpPack_Online[2])

end 

function StruggleUpPack_OpenPackge(nItemId)
	
	local nUserId = Get_UserId()
	--判断物品
	if not Item_ChkItem(nItemId) then
		User_TalkChannel2005(tStruggleUpPack_Text["Sys"]["NoItem"])
		return	
	end	
	
	local nEventType = tStruggleUpPack_Stc["EventType"][nItemId]
	local nDataType = tStruggleUpPack_Stc["DataType"][nItemId]
	
	local nData = Get_UserStatisticValue(nEventType,nDataType)
	
	local sLimitIndex = "LimitNum"
	
	if SpecialServer_ChkNoGiftServer() then
		sLimitIndex = "NoGiftLimitNum"
	end
	
	if nData > tStruggleUpPack_Data[sLimitIndex][nItemId]  then
		if Item_DelItem(nItemId) then
			local sDelItemLog = string.format(tStruggleUpPack_Log["DelItem"],nItemId)
			Sys_SaveActionFestivalLog(sDelItemLog)
			User_TalkChannel2005(tStruggleUpPack_Text["Sys"]["Nomore"][nItemId])
		end
		return
	end
	
	local nNeedLev = tStruggleUpPack_Data["Level"][nItemId][nData+1]
	local nNeedMet = tStruggleUpPack_Data["Metempsychosis"][nItemId][nData+1]

	--激情服
	if SpecialServer_ChkNoGiftServer() then
		nNeedLev = tStruggleUpPack_Data["NoGiftLevel"][nItemId][nData+1]
		nNeedMet = tStruggleUpPack_Data["NoGiftMetempsychosis"][nItemId][nData+1]
	end
	
	--判断等级
	if not User_JudgeLevelAndMetempsychosis(nNeedLev, nNeedMet) then
		
		User_TalkChannel2005(tStruggleUpPack_Text["Sys"]["NoLev"])
		return
	end
	local nSpace = 0
	-- 判断无赠品服务器
	local tRewardTable = tStruggleUpPack_Award
	if SpecialServer_ChkNoGiftServer() then
		-- 判断是否需要变化奖励
		-- if tStruggleUpPack_NoGiftServerAward[nData + 1] ~= nil then
			tRewardTable = tStruggleUpPack_NoGiftServerAward
		-- end
	end
	if nItemId == tStruggleUpPack_Data[1] then
		nSpace = RewardTemplate_GetRewardSpace(tRewardTable[nData+1])
	else
		nSpace = RewardTemplate_GetRewardSpace(tStruggleUpPack_NewPackAward[nData+1])
	end
	if not User_CheckLeftSpace(nSpace) then 			
		User_TalkChannel2005(string.format(tStruggleUpPack_Text["Sys"]["BagFull"],nSpace))
		return
	end
	--最后一次删除给奖励
	if nData == tStruggleUpPack_Data[sLimitIndex][nItemId] then
		Task_AddStatistic(nEventType,nDataType,1,1)
		Task_SetStcTimestamp(nEventType,nDataType,0)
		if Item_DelItem(nItemId) then
			local sDelItemLog = string.format(tStruggleUpPack_Log["DelItem"],nItemId)
			Sys_SaveActionFestivalLog(sDelItemLog)
			
			if nItemId == tStruggleUpPack_Data[1] then
				RewardTemplate_UseItemAndMsg(tRewardTable[nData+1])
			else
				RewardTemplate_UseItemAndMsg(tStruggleUpPack_NewPackAward[nData+1])
			end
		end
		
		return
	end 
	
	Task_AddStatistic(nEventType,nDataType,1,1)
	Task_SetStcTimestamp(nEventType,nDataType,0)
	
	if nItemId == tStruggleUpPack_Data[1] then
		RewardTemplate_UseItemAndMsg(tRewardTable[nData+1])
	else
		RewardTemplate_UseItemAndMsg(tStruggleUpPack_NewPackAward[nData+1])
	end

	LinkItemGossipFunc_New(nItemId,"2-1")

end 


--启程礼包
function StruggleUpPack_OpenMorePack(nItemId)
	local nUserId = Get_UserId()
	--判断物品
	if not Item_ChkItem(nItemId) then
		User_TalkChannel2005(tStruggleUpPack_Text["Sys"]["NoItem"])
		return	
	end	
	
	local nEventType = tStruggleUpPack_Stc["EventType"][nItemId]
	local nDataType = tStruggleUpPack_Stc["DataType"][nItemId]
	
	-- 判断是否隔天
	if Task_StcInterval(nEventType, nDataType, 1, 4) then
		Task_SetStatistic(nEventType, nDataType, 0, 1)
		Task_SetStcTimestamp(nEventType, nDataType, 0)
	end
	
	local nData = Get_UserStatisticValue(nEventType,nDataType)
	if nData > 0 then
		User_TalkChannel2005(tStruggleUpPack_Text["Sys"]["NoTime"])
		return 
	end 
	
	local nFlag = Get_Flag()

	local nSpace = RewardTemplate_GetRewardSpace(tStruggleUpPack_NewPackAward[nFlag])
	
	if not User_CheckLeftSpace(nSpace) then 			
		User_TalkChannel2005(string.format(tStruggleUpPack_Text["Sys"]["BagFull"],nSpace))
		return
	end
	
	Task_AddStatistic(nEventType,nDataType,1,1)
	Task_SetStcTimestamp(nEventType,nDataType,0)
	
	RewardTemplate_UseItemAndMsg(tStruggleUpPack_NewPackAward[nFlag])
	

end

	
--获取玩家等级标识
function Get_Flag()
	local nFlag = 0
	for k,v in ipairs(tStruggleUpPack_Flag) do 
		if not User_JudgeLevelAndMetempsychosis(v[1],v[2]) then
			nFlag = v[3]
			break
		end
	end
	
	if nFlag == 0 then
		nFlag = #tStruggleUpPack_Flag+1
	end
	
	return nFlag
end

---------------------------------物品部分---------------------------------------------
-- 3308658,'奋斗成长大礼包'
tItemFace[3308658] = 833
tItem[3308658] = tItem[3308658] or {}

tItem[3308658]["Text1-1"] = {111,112}
tItem[3308658]["Text111"] = tStruggleUpPack_Text[3308658]["Text111"]
tItem[3308658]["Text112"] = tStruggleUpPack_Text[3308658]["Text112"]

tItem[3308658]["ChkFunc1-1"] = function()

	local nUserId = Get_UserId()
	local nEventType = tStruggleUpPack_Stc["EventType"][3308658]
	local nDataType = tStruggleUpPack_Stc["DataType"][3308658]

	local nTime = Get_UserStatisticValue(nEventType,nDataType)
	
	local nTotalTimes = tStruggleUpPack_Data["LimitNum"][3308658]
	
	if SpecialServer_ChkNoGiftServer() then
		nTotalTimes = tStruggleUpPack_Data["NoGiftLimitNum"][3308658]
	end
	
	if nTime > nTotalTimes then 
		return false
	end

	local tTextData = tStruggleUpPack_TextData
	
	-- 判断无赠品服务器
	if SpecialServer_ChkNoGiftServer() then
		-- 判断是否需要变化奖励
		-- if tStruggleUpPack_NewTextData[nTime + 1] ~= nil then
			tTextData = tStruggleUpPack_NewTextData
		-- end
	end
	
	if tTextData[3308658][nTime+1] == nil then
		return false
	end

	if tTextData[nTime+1] == nil then
		return false
	end

	local sLevel = tTextData[3308658][nTime+1]

	local nUserPro = Get_UserProfession(nUserId)
	local nFlagPro = math.modf(nUserPro / 10)
	
	tItem[3308658]["Text111"] =	string.format(tStruggleUpPack_Text[3308658]["Text111"],sLevel)
	
	
	if #tTextData[nTime+1] == 1 then
		tItem[3308658]["Text112"] =	string.format(tStruggleUpPack_Text[3308658]["Text112"],tTextData[nTime+1][1])
	else
		tItem[3308658]["Text112"] =	string.format(tStruggleUpPack_Text[3308658]["Text112"],tTextData[nTime+1][nFlagPro])
	end
	return true
end

tItem[3308658]["tOption1-1"] = {111,112}
tItem[3308658]["Option111"] = tStruggleUpPack_Text[3308658]["Option111"]
tItem[3308658]["OptionFunc111"] = "StruggleUpPack_OpenPackge</N>3308658"
    
tItem[3308658]["Option112"] = tStruggleUpPack_Text[3308658]["Option112"]
tItem[3308658]["OptionChkFunc111"] = function()
	
	return true
end

--领取成功
tItem[3308658]["Text2-1"] = {211,212}
tItem[3308658]["Text211"] = tStruggleUpPack_Text[3308658]["Text211"]
tItem[3308658]["Text212"] = tStruggleUpPack_Text[3308658]["Text212"]

tItem[3308658]["ChkFunc2-1"] = function()

	local nUserId = Get_UserId()
	local nEventType = tStruggleUpPack_Stc["EventType"][3308658]
	local nDataType = tStruggleUpPack_Stc["DataType"][3308658]
	
	local nUserPro = Get_UserProfession(nUserId)
	local nFlagPro = math.modf(nUserPro / 10)	
	local nTime = Get_UserStatisticValue(nEventType,nDataType)
	local sLevel = tStruggleUpPack_TextData[3308658][nTime+1]
	-- 判断无赠品服务器
	local tTextData = tStruggleUpPack_TextData
	local nMaxTime = tStruggleUpPack_Data["LimitNum"][3308658]
	if SpecialServer_ChkNoGiftServer() then
		-- 判断是否需要变化奖励
		if tStruggleUpPack_NewTextData[nTime + 1] ~= nil then
			tTextData = tStruggleUpPack_NewTextData
		end
		sLevel = tStruggleUpPack_NewTextData[3308658][nTime+1]
		nMaxTime = tStruggleUpPack_Data["NoGiftLimitNum"][3308658]
	end
	if nTime > nMaxTime then
		return false
	end 
	if tTextData[3308658][nTime+1] == nil then
		return false
	end
	if tTextData[nTime+1] == nil then
		return false
	end

	tItem[3308658]["Text211"] =	string.format(tStruggleUpPack_Text[3308658]["Text211"],sLevel)
	if #tTextData[nTime+1] == 1 then
		tItem[3308658]["Text212"] =	string.format(tStruggleUpPack_Text[3308658]["Text212"],tTextData[nTime+1][1])
	else
		tItem[3308658]["Text212"] =	string.format(tStruggleUpPack_Text[3308658]["Text212"],tTextData[nTime+1][nFlagPro])
	end

	return true
end

tItem[3308658]["tOption2-1"] = {211}
tItem[3308658]["Option211"] = tStruggleUpPack_Text[3308658]["Option211"]

-- 3308659,'征程再起大礼包'
tItemFace[3308659] = 1475
tItem[3308659] = tItem[3308659] or {}

tItem[3308659]["Text1-1"] = {110,1101,111,112,113,114,115,116,117,118,119,1199}
tItem[3308659]["Text110"] = tStruggleUpPack_Text[3308659]["Text110"]
tItem[3308659]["Text1101"] = tStruggleUpPack_Text[3308659]["Text1101"]
tItem[3308659]["Text111"] = tStruggleUpPack_Text[3308659]["Text111"]
tItem[3308659]["Text112"] = tStruggleUpPack_Text[3308659]["Text112"]
tItem[3308659]["Text113"] = tStruggleUpPack_Text[3308659]["Text113"]
tItem[3308659]["Text114"] = tStruggleUpPack_Text[3308659]["Text114"]
tItem[3308659]["Text115"] = tStruggleUpPack_Text[3308659]["Text115"]
tItem[3308659]["Text116"] = tStruggleUpPack_Text[3308659]["Text116"]
tItem[3308659]["Text117"] = tStruggleUpPack_Text[3308659]["Text117"]
tItem[3308659]["Text118"] = tStruggleUpPack_Text[3308659]["Text118"]
tItem[3308659]["Text119"] = tStruggleUpPack_Text[3308659]["Text119"]
tItem[3308659]["Text1199"] = tStruggleUpPack_Text[3308659]["Text1199"]

  
tItem[3308659]["ChkFunc1-1"] = function()
	-- local nUserId = Get_UserId()
	-- local nFlag = Get_Flag()
	-- tItem[3308659]["Text111"] = string.format(tStruggleUpPack_Text[3308659]["Text111"],tStruggleUpPack_TextData["RewardText"][nFlag])
	-- if nFlag == 8 then 
		-- tItem[3308659]["Text113"] = ""
		-- return true
	-- end
	-- local sLevel = tStruggleUpPack_TextData[3308659][nFlag+1]
	-- tItem[3308659]["Text113"] = string.format(tStruggleUpPack_Text[3308659]["Text113"],sLevel)
	
	
	for i=1,8 do
		tItem[3308659]["Text11"..i] = tStruggleUpPack_Text[3308659]["Text11"..i]	
	end
	
	local nFlag = Get_Flag()
	for i=1,nFlag do
		tItem[3308659]["Text11"..i] = tStruggleUpPack_Text[3308659]["Text11"..i..i]	
	end
	
	local nEventType = tStruggleUpPack_Stc["EventType"][3308659]
	local nDataType = tStruggleUpPack_Stc["DataType"][3308659]
	-- 判断是否隔天
	if Task_StcInterval(nEventType, nDataType, 1, 4)  then
		Task_SetStatistic(nEventType, nDataType, 0, 1)
		Task_SetStcTimestamp(nEventType, nDataType, 0)
		tItem[3308659]["Option111"] =  tStruggleUpPack_Text[3308659]["Option111"]
	end
	
	local nData = Get_UserStatisticValue(nEventType,nDataType)
	if nData > 0 then
		tItem[3308659]["Option111"] =  tStruggleUpPack_Text[3308659]["Option1111"]
	else 
		tItem[3308659]["Option111"] =  tStruggleUpPack_Text[3308659]["Option111"]
	end 
	
	return true
end

tItem[3308659]["tOption1-1"] = {111,112}
tItem[3308659]["Option111"] = tStruggleUpPack_Text[3308659]["Option111"]
tItem[3308659]["OptionFunc111"] = "StruggleUpPack_OpenMorePack</N>3308659"
    
tItem[3308659]["Option112"] = tStruggleUpPack_Text[3308659]["Option112"]
tItem[3308659]["OptionChkFunc111"] = function()
	
	return true
end


table.insert(tSystem_PlayLogin_Func,StruggleUpPack_OnLine)








