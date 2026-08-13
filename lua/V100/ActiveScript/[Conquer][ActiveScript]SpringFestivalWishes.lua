------------------------------------------------------------------------------------
--Name:			180124[简体征服][活动脚本]春节许愿活动
--Purpose:		春节许愿
--Creator:		wzh
--Created:		2018/01/27
------------------------------------------------------------------------------------
-- 前缀
-- SpringFestivalWishes_

-- LogId 12000996

-- stc掩码说明 
-- stc 172,92		背包信
-- stc 172,93		每日使用许愿签许愿的次数
-- stc 172,94		许愿所得赠天石
-- stc 172,95		许愿所得气力值
-- stc 172,96		许愿所得进度(领取奖励会减少)
-- stc 172,97		每日打怪掉落的许愿签数
-- stc 173,18		是否领取赠点
-- stc 173,19		是否领取气力值
-- stc 173,25		记录总进度值

-- 全局表说明
-- global 

---------------------------------------------常量配置部分---------------------------------------
-- 常量表
local tSpringFestivalWishes_Cont = {}
	tSpringFestivalWishes_Cont["Level"] = 80
	tSpringFestivalWishes_Cont["Metempsychosis"] = 0
	tSpringFestivalWishes_Cont["Effect"] = "zf2-e128"
	
	-- 物品
	tSpringFestivalWishes_Cont["Item"] = {}
	-- 许愿签
	tSpringFestivalWishes_Cont["Item"][1] = {}
	tSpringFestivalWishes_Cont["Item"][1]["Id"] = 3307393
	tSpringFestivalWishes_Cont["Item"][1]["Broadcast"] = {}			-- 出全服公告的值
	tSpringFestivalWishes_Cont["Item"][1]["Broadcast"]["EmoneyMono"] = 100
	tSpringFestivalWishes_Cont["Item"][1]["Broadcast"]["Strength"] = 200
	tSpringFestivalWishes_Cont["Item"][1]["Broadcast"]["ProgressBar"] = 80
	tSpringFestivalWishes_Cont["Item"][2] = {}
	tSpringFestivalWishes_Cont["Item"][2]["Id"] = 3307394
	tSpringFestivalWishes_Cont["Item"][2]["Broadcast"] = {}			-- 出全服公告的值
	tSpringFestivalWishes_Cont["Item"][2]["Broadcast"]["EmoneyMono"] = 100
	tSpringFestivalWishes_Cont["Item"][2]["Broadcast"]["Strength"] = 300
	tSpringFestivalWishes_Cont["Item"][2]["Broadcast"]["ProgressBar"] = 120
	tSpringFestivalWishes_Cont["Item"][3] = {}
	tSpringFestivalWishes_Cont["Item"][3]["Id"] = 3307395
	tSpringFestivalWishes_Cont["Item"][3]["Broadcast"] = {}			-- 出全服公告的值
	tSpringFestivalWishes_Cont["Item"][3]["Broadcast"]["EmoneyMono"] = 100
	tSpringFestivalWishes_Cont["Item"][3]["Broadcast"]["Strength"] = 500
	tSpringFestivalWishes_Cont["Item"][3]["Broadcast"]["ProgressBar"] = 200
	-- 星陨石ID
	tSpringFestivalWishes_Cont["Item"]["StarStone"] = {}
	tSpringFestivalWishes_Cont["Item"]["StarStone"][1] = {}
	tSpringFestivalWishes_Cont["Item"]["StarStone"][1]["Id"] = 3009000
	tSpringFestivalWishes_Cont["Item"]["StarStone"][1]["Cost"] = 10			-- 节后兑换微光星陨石所需进度值
	tSpringFestivalWishes_Cont["Item"]["StarStone"][2] = {}
	tSpringFestivalWishes_Cont["Item"]["StarStone"][2]["Id"] = 3009001
	tSpringFestivalWishes_Cont["Item"]["StarStone"][2]["Cost"] = 100		-- 节后兑换明亮星陨石所需进度值
	tSpringFestivalWishes_Cont["Item"]["StarStone"][3] = {}
	tSpringFestivalWishes_Cont["Item"]["StarStone"][3]["Id"] = 3009002
	tSpringFestivalWishes_Cont["Item"]["StarStone"][3]["Cost"] = 1000		-- 节后兑换晶莹星陨石所需进度值
	tSpringFestivalWishes_Cont["Item"]["StarStone"][4] = {}
	tSpringFestivalWishes_Cont["Item"]["StarStone"][4]["Id"] = 3009003
	tSpringFestivalWishes_Cont["Item"]["StarStone"][4]["Cost"] = 10000		-- 节后兑换璀璨星陨石所需进度值
	-- 赤炼石ID
	tSpringFestivalWishes_Cont["Item"]["Stone"] = {}
	tSpringFestivalWishes_Cont["Item"]["Stone"][1] = {}
	tSpringFestivalWishes_Cont["Item"]["Stone"][1]["Id"] = 730001
	tSpringFestivalWishes_Cont["Item"]["Stone"][2] = {}
	tSpringFestivalWishes_Cont["Item"]["Stone"][2]["Id"] = 730002
	tSpringFestivalWishes_Cont["Item"]["Stone"][3] = {}
	tSpringFestivalWishes_Cont["Item"]["Stone"][3]["Id"] = 730003
	tSpringFestivalWishes_Cont["Item"]["Stone"][4] = {}
	tSpringFestivalWishes_Cont["Item"]["Stone"][4]["Id"] = 730004
	tSpringFestivalWishes_Cont["Item"]["Stone"][5] = {}
	tSpringFestivalWishes_Cont["Item"]["Stone"][5]["Id"] = 730005
	
	-- 花费天石许愿
	tSpringFestivalWishes_Cont["Emoney"] = {}
	tSpringFestivalWishes_Cont["Emoney"][1] = {}
	tSpringFestivalWishes_Cont["Emoney"][1]["Cost"] = 10
	tSpringFestivalWishes_Cont["Emoney"][1]["Broadcast"] = 55			-- 出全服公告的值
	tSpringFestivalWishes_Cont["Emoney"][2] = {}
	tSpringFestivalWishes_Cont["Emoney"][2]["Cost"] = 100
	tSpringFestivalWishes_Cont["Emoney"][2]["Broadcast"] = 550			-- 出全服公告的值
	tSpringFestivalWishes_Cont["Emoney"][3] = {}
	tSpringFestivalWishes_Cont["Emoney"][3]["Cost"] = 500
	tSpringFestivalWishes_Cont["Emoney"][3]["Broadcast"] = 2750			-- 出全服公告的值
	
	-- 花费气力值许愿
	tSpringFestivalWishes_Cont["Strength"] = {}
	tSpringFestivalWishes_Cont["Strength"][1] = {}
	tSpringFestivalWishes_Cont["Strength"][1]["Cost"] = 100
	tSpringFestivalWishes_Cont["Strength"][1]["Broadcast"] = 700			-- 出全服公告的值
	tSpringFestivalWishes_Cont["Strength"][2] = {}
	tSpringFestivalWishes_Cont["Strength"][2]["Cost"] = 500
	tSpringFestivalWishes_Cont["Strength"][2]["Broadcast"] = 3500			-- 出全服公告的值
	tSpringFestivalWishes_Cont["Strength"][3] = {}
	tSpringFestivalWishes_Cont["Strength"][3]["Cost"] = 3000
	tSpringFestivalWishes_Cont["Strength"][3]["Broadcast"] = 21000			-- 出全服公告的值
	
	-- 花费星陨石许愿
	tSpringFestivalWishes_Cont["StarStone"] = {}
	tSpringFestivalWishes_Cont["StarStone"][1] = {}
	tSpringFestivalWishes_Cont["StarStone"][1]["Cost"] = 10		-- 星陨石等值的进度值
	tSpringFestivalWishes_Cont["StarStone"][1]["Broadcast"] = 30			-- 出全服公告的值
	tSpringFestivalWishes_Cont["StarStone"][2] = {}
	tSpringFestivalWishes_Cont["StarStone"][2]["Cost"] = 100	-- 星陨石等值的进度值
	tSpringFestivalWishes_Cont["StarStone"][2]["Broadcast"] = 300			-- 出全服公告的值
	tSpringFestivalWishes_Cont["StarStone"][3] = {}
	tSpringFestivalWishes_Cont["StarStone"][3]["Cost"] = 1000	-- 星陨石等值的进度值
	tSpringFestivalWishes_Cont["StarStone"][3]["Broadcast"] = 3000			-- 出全服公告的值
	tSpringFestivalWishes_Cont["StarStone"][4] = {}
	tSpringFestivalWishes_Cont["StarStone"][4]["Cost"] = 10000	-- 星陨石等值的进度值
	tSpringFestivalWishes_Cont["StarStone"][4]["Broadcast"] = 30000			-- 出全服公告的值
	
	-- 花费赤炼石许愿
	tSpringFestivalWishes_Cont["Stone"] = {}
	tSpringFestivalWishes_Cont["Stone"][1] = {}
	tSpringFestivalWishes_Cont["Stone"][1]["Cost"] = 10		-- 赤炼石等值的进度值
	tSpringFestivalWishes_Cont["Stone"][1]["Broadcast"] = 50			-- 出全服公告的值
	tSpringFestivalWishes_Cont["Stone"][2] = {}
	tSpringFestivalWishes_Cont["Stone"][2]["Cost"] = 40		-- 赤炼石等值的进度值
	tSpringFestivalWishes_Cont["Stone"][2]["Broadcast"] = 200			-- 出全服公告的值
	tSpringFestivalWishes_Cont["Stone"][3] = {}
	tSpringFestivalWishes_Cont["Stone"][3]["Cost"] = 120	-- 赤炼石等值的进度值
	tSpringFestivalWishes_Cont["Stone"][3]["Broadcast"] = 600			-- 出全服公告的值
	tSpringFestivalWishes_Cont["Stone"][4] = {}
	tSpringFestivalWishes_Cont["Stone"][4]["Cost"] = 360	-- 赤炼石等值的进度值
	tSpringFestivalWishes_Cont["Stone"][4]["Broadcast"] = 1800			-- 出全服公告的值
	tSpringFestivalWishes_Cont["Stone"][5] = {}
	tSpringFestivalWishes_Cont["Stone"][5]["Cost"] = 1080	-- 赤炼石等值的进度值
	tSpringFestivalWishes_Cont["Stone"][5]["Broadcast"] = 5400			-- 出全服公告的值
	
	
	-- 掩码序号
	tSpringFestivalWishes_Cont["StcIndex"] = {}
	tSpringFestivalWishes_Cont["StcIndex"][22621] = 2
	tSpringFestivalWishes_Cont["StcIndex"][22622] = 3
	tSpringFestivalWishes_Cont["StcIndex"][22623] = 4
	
	-- 单次许愿获得
	tSpringFestivalWishes_Cont["Reward"] = {}
	tSpringFestivalWishes_Cont["Reward"][22621] = "EmoneyMono"
	tSpringFestivalWishes_Cont["Reward"][22622] = "Strength"
	tSpringFestivalWishes_Cont["Reward"][22623] = "ProgressBar"
	
-- 掩码表
local tSpringFestivalWishes_Stc = {}
	-- 每日使用许愿签许愿的次数
	tSpringFestivalWishes_Stc[1] = {}
	tSpringFestivalWishes_Stc[1]["EventType"] = 172
	tSpringFestivalWishes_Stc[1]["DataType"] = 93
	tSpringFestivalWishes_Stc[1]["Limit"] = 10
	-- 许愿所得赠天石
	tSpringFestivalWishes_Stc[2] = {}
	tSpringFestivalWishes_Stc[2]["EventType"] = 172
	tSpringFestivalWishes_Stc[2]["DataType"] = 94
	tSpringFestivalWishes_Stc[2]["Limit"] = 100000
	-- 许愿所得气力值
	tSpringFestivalWishes_Stc[3] = {}
	tSpringFestivalWishes_Stc[3]["EventType"] = 172
	tSpringFestivalWishes_Stc[3]["DataType"] = 95
	tSpringFestivalWishes_Stc[3]["Limit"] = 100000
	-- 许愿所得进度
	tSpringFestivalWishes_Stc[4] = {}
	tSpringFestivalWishes_Stc[4]["EventType"] = 172
	tSpringFestivalWishes_Stc[4]["DataType"] = 96
	tSpringFestivalWishes_Stc[4]["Limit"] = 30000
	-- 每日打怪掉落的许愿签数
	tSpringFestivalWishes_Stc[5] = {}
	tSpringFestivalWishes_Stc[5]["EventType"] = 172
	tSpringFestivalWishes_Stc[5]["DataType"] = 97
	tSpringFestivalWishes_Stc[5]["Limit"] = 10
	-- 是否领取赠点
	tSpringFestivalWishes_Stc[6] = {}
	tSpringFestivalWishes_Stc[6]["EventType"] = 173
	tSpringFestivalWishes_Stc[6]["DataType"] = 18
	tSpringFestivalWishes_Stc[6]["Limit"] = 1
	-- 是否领取气力值
	tSpringFestivalWishes_Stc[7] = {}
	tSpringFestivalWishes_Stc[7]["EventType"] = 173
	tSpringFestivalWishes_Stc[7]["DataType"] = 19
	tSpringFestivalWishes_Stc[7]["Limit"] = 1
	-- 总进度值
	tSpringFestivalWishes_Stc[8] = {}
	tSpringFestivalWishes_Stc[8]["EventType"] = 173
	tSpringFestivalWishes_Stc[8]["DataType"] = 25
	
	
-- Log表
local tSpringFestivalWishes_Log = {}
	-- 过期删除
	tSpringFestivalWishes_Log["Delete"] = "0,0,%d,1,12000996,0,0,0"
	-- 许愿签许愿
	tSpringFestivalWishes_Log["WishByItem"] = "0,0,%d,1,12000996,1[1],%d,%d"
	-- 天石许愿
	tSpringFestivalWishes_Log["WishByEmoney"] = "0,0,2,%d,12000996,1[2],%d,%d"
	-- 气力值许愿
	tSpringFestivalWishes_Log["WishByStrength"] = "0,0,12,%d,12000996,1[3],%d,%d"
	-- 星陨石许愿
	tSpringFestivalWishes_Log["WishByStarStone"] = "0,0,%d,1,12000996,1[4],%d,%d"
	-- 赤练石许愿
	tSpringFestivalWishes_Log["WishByStone"] = "0,0,%d,1,12000996,1[5],%d,%d"
	
	-- emoneylog
	-- 花费天石
	tSpringFestivalWishes_Log["EmoneyLog"] = {}
	tSpringFestivalWishes_Log["EmoneyLog"][1] = "350	31286	%d	%d	1	"
	tSpringFestivalWishes_Log["EmoneyLog"][2] = "350	31288	%d	%d	1	"
	tSpringFestivalWishes_Log["EmoneyLog"][3] = "350	31290	%d	%d	1	"
	-- 许愿赠点天石领奖
	tSpringFestivalWishes_Log["EmoneyLog"][4] = "350	31304	0	0	1	"
	-- 许愿气力领奖
	tSpringFestivalWishes_Log["EmoneyLog"][5] = "350	31303	0	0	1	"
	-- 许愿星陨石领奖
	tSpringFestivalWishes_Log["EmoneyLog"][6] = "350	31305	0	0	1	"
	
	-- 许愿签许愿
	-- 钱多多
	tSpringFestivalWishes_Log["EmoneyLog"][22621] = {}
	-- 玩家使用一星水晶许愿赠点天石
	tSpringFestivalWishes_Log["EmoneyLog"][22621][1] = "350	31285	0	0	1	"
	-- 玩家使用二星水晶许愿赠点天石
	tSpringFestivalWishes_Log["EmoneyLog"][22621][2] = "350	31287	0	0	1	"
	-- 玩家使用三星水晶许愿赠点天石
	tSpringFestivalWishes_Log["EmoneyLog"][22621][3] = "350	31289	0	0	1	"
	-- 气多多
	tSpringFestivalWishes_Log["EmoneyLog"][22622] = {}
	-- 玩家使用一星水晶许愿气力
	tSpringFestivalWishes_Log["EmoneyLog"][22622][1] = "350	31279	0	0	1	"
	-- 玩家使用二星水晶许愿气力
	tSpringFestivalWishes_Log["EmoneyLog"][22622][2] = "350	31281	0	0	1	"
	-- 玩家使用三星水晶许愿气力
	tSpringFestivalWishes_Log["EmoneyLog"][22622][3] = "350	31283	0	0	1	"
	-- 星多多
	tSpringFestivalWishes_Log["EmoneyLog"][22623] = {}
	-- 玩家使用一星水晶许愿进度值
	tSpringFestivalWishes_Log["EmoneyLog"][22623][1] = "350	31291	0	0	1	"
	-- 玩家使用二星水晶许愿进度值
	tSpringFestivalWishes_Log["EmoneyLog"][22623][2] = "350	31292	0	0	1	"
	-- 玩家使用三星水晶许愿进度值
	tSpringFestivalWishes_Log["EmoneyLog"][22623][3] = "350	31293	0	0	1	"
	
	-- 气力值许愿
	tSpringFestivalWishes_Log["EmoneyLog"]["Chi"] = {}
	-- 玩家使用100气力值许愿气力
	tSpringFestivalWishes_Log["EmoneyLog"]["Chi"][1] = "350	31280	0	0	1	"
	-- 玩家使用500气力值许愿气力
	tSpringFestivalWishes_Log["EmoneyLog"]["Chi"][2] = "350	31282	0	0	1	"
	-- 玩家使用3000气力值许愿气力
	tSpringFestivalWishes_Log["EmoneyLog"]["Chi"][3] = "350	31284	0	0	1	"
	
	-- 星陨石许愿
	tSpringFestivalWishes_Log["EmoneyLog"]["StarStone"] = {}
	-- 玩家使用微光星陨石许愿进度值
	tSpringFestivalWishes_Log["EmoneyLog"]["StarStone"][1] = "350	31294	0	0	1	"
	-- 玩家使用明亮星陨石许愿进度值
	tSpringFestivalWishes_Log["EmoneyLog"]["StarStone"][2] = "350	31295	0	0	1	"
	-- 玩家使用晶莹星陨石许愿进度值
	tSpringFestivalWishes_Log["EmoneyLog"]["StarStone"][3] = "350	31296	0	0	1	"
	-- 玩家使用璀璨星陨石许愿进度值
	tSpringFestivalWishes_Log["EmoneyLog"]["StarStone"][4] = "350	31297	0	0	1	"
	
	-- 赤练石许愿
	tSpringFestivalWishes_Log["EmoneyLog"]["Stone"] = {}
	-- 玩家使用+1赤炼石许愿进度值
	tSpringFestivalWishes_Log["EmoneyLog"]["Stone"][1] = "350	31298	0	0	1	"
	-- 玩家使用+2赤炼石许愿进度值
	tSpringFestivalWishes_Log["EmoneyLog"]["Stone"][2] = "350	31299	0	0	1	"
	-- 玩家使用+3赤炼石许愿进度值
	tSpringFestivalWishes_Log["EmoneyLog"]["Stone"][3] = "350	31300	0	0	1	"
	-- 玩家使用+4赤炼石许愿进度值
	tSpringFestivalWishes_Log["EmoneyLog"]["Stone"][4] = "350	31301	0	0	1	"
	-- 玩家使用+5赤炼石许愿进度值
	tSpringFestivalWishes_Log["EmoneyLog"]["Stone"][5] = "350	31302	0	0	1	"
	
	

-- 奖励表
local tSpringFestivalWishes_Reward = {}
	-- 领取许愿奖励（赠天石）
	tSpringFestivalWishes_Reward[1] = {}
	tSpringFestivalWishes_Reward[1]["RewardEMoneyMono"] = {}
	tSpringFestivalWishes_Reward[1]["RewardEMoneyMono"]["Value"] = 0
	tSpringFestivalWishes_Reward[1]["RewardEffect"] = {}
	tSpringFestivalWishes_Reward[1]["RewardEffect"]["Effect"] = "zf2-e285"
	tSpringFestivalWishes_Reward[1]["Talk"] = tSpringFestivalWishes_Text[2005]["GetEmoneyMono"]
	tSpringFestivalWishes_Reward[1]["LogId"] = 12000996
	tSpringFestivalWishes_Reward[1]["LogStep"] = "1[6]"
	-- 领取许愿奖励（气力值）
	tSpringFestivalWishes_Reward[2] = {}
	tSpringFestivalWishes_Reward[2]["RewardStrengthValue"] = {}
	tSpringFestivalWishes_Reward[2]["RewardStrengthValue"]["Value"] = 0
	tSpringFestivalWishes_Reward[2]["RewardEffect"] = {}
	tSpringFestivalWishes_Reward[2]["RewardEffect"]["Effect"] = "zf2-e285"
	tSpringFestivalWishes_Reward[2]["Talk"] = tSpringFestivalWishes_Text[2005]["GetStrength"]
	tSpringFestivalWishes_Reward[2]["LogId"] = 12000996
	tSpringFestivalWishes_Reward[2]["LogStep"] = "1[6]"
	-- 领取许愿奖励（星陨石）
	tSpringFestivalWishes_Reward[3] = {}
	tSpringFestivalWishes_Reward[3]["RewardItem"] = {}
	tSpringFestivalWishes_Reward[3]["RewardItem"][1] = {}
	tSpringFestivalWishes_Reward[3]["RewardItem"][1]["Id"] = 3009000
	tSpringFestivalWishes_Reward[3]["RewardItem"][1]["Attr"] = "0 1"
	tSpringFestivalWishes_Reward[3]["RewardEffect"] = {}
	tSpringFestivalWishes_Reward[3]["RewardEffect"]["Effect"] = "zf2-e285"
	tSpringFestivalWishes_Reward[3]["Talk"] = tSpringFestivalWishes_Text[2005]["GetReward"]
	tSpringFestivalWishes_Reward[3]["LogId"] = 12000996
	tSpringFestivalWishes_Reward[3]["LogStep"] = "1[6]"
	-- 掉落许愿签
	tSpringFestivalWishes_Reward[4] = {}
	tSpringFestivalWishes_Reward[4]["RewardItem"] = {}
	tSpringFestivalWishes_Reward[4]["RewardItem"][1] = {}
	tSpringFestivalWishes_Reward[4]["RewardItem"][1]["Id"] = 3307393
	tSpringFestivalWishes_Reward[4]["RewardItem"][1]["Attr"] = "0 1"
	tSpringFestivalWishes_Reward[4]["Talk"] = tSpringFestivalWishes_Text[2005]["GetItem"][3307393]
	tSpringFestivalWishes_Reward[4]["LogId"] = 12000996
	
	
-- 概率表
local tSpringFestivalWishes_Random = {}
	------ 许愿签随机赠点
	tSpringFestivalWishes_Random["EmoneyMono"] = {}
	---- 一星许愿签
	tSpringFestivalWishes_Random["EmoneyMono"][1] = {}
	tSpringFestivalWishes_Random["EmoneyMono"][1]["ItemChanceSum"] = 10000
	-- 5赠点               
	tSpringFestivalWishes_Random["EmoneyMono"][1][1] = {}
	tSpringFestivalWishes_Random["EmoneyMono"][1][1]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["EmoneyMono"][1][1]["ItemChance"] = 5000
	tSpringFestivalWishes_Random["EmoneyMono"][1][1]["Num"] = 5
	-- 10赠点                 
	tSpringFestivalWishes_Random["EmoneyMono"][1][2] = {}
	tSpringFestivalWishes_Random["EmoneyMono"][1][2]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["EmoneyMono"][1][2]["ItemChance"] = 1800
	tSpringFestivalWishes_Random["EmoneyMono"][1][2]["Num"] = 10
	-- 15赠点          
	tSpringFestivalWishes_Random["EmoneyMono"][1][3] = {}
	tSpringFestivalWishes_Random["EmoneyMono"][1][3]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["EmoneyMono"][1][3]["ItemChance"] = 1200
	tSpringFestivalWishes_Random["EmoneyMono"][1][3]["Num"] = 15
	-- 20赠点                  
	tSpringFestivalWishes_Random["EmoneyMono"][1][4] = {}
	tSpringFestivalWishes_Random["EmoneyMono"][1][4]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["EmoneyMono"][1][4]["ItemChance"] = 1000
	tSpringFestivalWishes_Random["EmoneyMono"][1][4]["Num"] = 20
	-- 30赠点                  
	tSpringFestivalWishes_Random["EmoneyMono"][1][5] = {}
	tSpringFestivalWishes_Random["EmoneyMono"][1][5]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["EmoneyMono"][1][5]["ItemChance"] = 600
	tSpringFestivalWishes_Random["EmoneyMono"][1][5]["Num"] = 30
	-- 40赠点                  
	tSpringFestivalWishes_Random["EmoneyMono"][1][6] = {}
	tSpringFestivalWishes_Random["EmoneyMono"][1][6]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["EmoneyMono"][1][6]["ItemChance"] = 250
	tSpringFestivalWishes_Random["EmoneyMono"][1][6]["Num"] = 40
	-- 80赠点                  
	tSpringFestivalWishes_Random["EmoneyMono"][1][7] = {}
	tSpringFestivalWishes_Random["EmoneyMono"][1][7]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["EmoneyMono"][1][7]["ItemChance"] = 140
	tSpringFestivalWishes_Random["EmoneyMono"][1][7]["Num"] = 80
	-- 100赠点                  
	tSpringFestivalWishes_Random["EmoneyMono"][1][8] = {}
	tSpringFestivalWishes_Random["EmoneyMono"][1][8]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["EmoneyMono"][1][8]["ItemChance"] = 10
	tSpringFestivalWishes_Random["EmoneyMono"][1][8]["Num"] = 100
	
	---- 二星许愿签
	tSpringFestivalWishes_Random["EmoneyMono"][2] = {}
	tSpringFestivalWishes_Random["EmoneyMono"][2]["ItemChanceSum"] = 10000
	-- 10赠点                     
	tSpringFestivalWishes_Random["EmoneyMono"][2][1] = {}
	tSpringFestivalWishes_Random["EmoneyMono"][2][1]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["EmoneyMono"][2][1]["ItemChance"] = 5000
	tSpringFestivalWishes_Random["EmoneyMono"][2][1]["Num"] = 10
	-- 15赠点                    
	tSpringFestivalWishes_Random["EmoneyMono"][2][2] = {}
	tSpringFestivalWishes_Random["EmoneyMono"][2][2]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["EmoneyMono"][2][2]["ItemChance"] = 1800
	tSpringFestivalWishes_Random["EmoneyMono"][2][2]["Num"] = 15
	-- 30赠点                    
	tSpringFestivalWishes_Random["EmoneyMono"][2][3] = {}
	tSpringFestivalWishes_Random["EmoneyMono"][2][3]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["EmoneyMono"][2][3]["ItemChance"] = 1200
	tSpringFestivalWishes_Random["EmoneyMono"][2][3]["Num"] = 30
	-- 45赠点                    
	tSpringFestivalWishes_Random["EmoneyMono"][2][4] = {}
	tSpringFestivalWishes_Random["EmoneyMono"][2][4]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["EmoneyMono"][2][4]["ItemChance"] = 1000
	tSpringFestivalWishes_Random["EmoneyMono"][2][4]["Num"] = 45
	-- 60赠点                    
	tSpringFestivalWishes_Random["EmoneyMono"][2][5] = {}
	tSpringFestivalWishes_Random["EmoneyMono"][2][5]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["EmoneyMono"][2][5]["ItemChance"] = 600
	tSpringFestivalWishes_Random["EmoneyMono"][2][5]["Num"] = 60
	-- 80赠点                    
	tSpringFestivalWishes_Random["EmoneyMono"][2][6] = {}
	tSpringFestivalWishes_Random["EmoneyMono"][2][6]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["EmoneyMono"][2][6]["ItemChance"] = 250
	tSpringFestivalWishes_Random["EmoneyMono"][2][6]["Num"] = 80
	-- 150赠点                   
	tSpringFestivalWishes_Random["EmoneyMono"][2][7] = {}
	tSpringFestivalWishes_Random["EmoneyMono"][2][7]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["EmoneyMono"][2][7]["ItemChance"] = 140
	tSpringFestivalWishes_Random["EmoneyMono"][2][7]["Num"] = 150
	-- 300赠点                   
	tSpringFestivalWishes_Random["EmoneyMono"][2][8] = {}
	tSpringFestivalWishes_Random["EmoneyMono"][2][8]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["EmoneyMono"][2][8]["ItemChance"] = 10
	tSpringFestivalWishes_Random["EmoneyMono"][2][8]["Num"] = 300
	
	---- 三星许愿签
	tSpringFestivalWishes_Random["EmoneyMono"][3] = {}
	tSpringFestivalWishes_Random["EmoneyMono"][3]["ItemChanceSum"] = 10000
	-- 20赠点                            
	tSpringFestivalWishes_Random["EmoneyMono"][3][1] = {}
	tSpringFestivalWishes_Random["EmoneyMono"][3][1]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["EmoneyMono"][3][1]["ItemChance"] = 5000
	tSpringFestivalWishes_Random["EmoneyMono"][3][1]["Num"] = 20
	-- 30赠点                            
	tSpringFestivalWishes_Random["EmoneyMono"][3][2] = {}
	tSpringFestivalWishes_Random["EmoneyMono"][3][2]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["EmoneyMono"][3][2]["ItemChance"] = 2200
	tSpringFestivalWishes_Random["EmoneyMono"][3][2]["Num"] = 30
	-- 50赠点                            
	tSpringFestivalWishes_Random["EmoneyMono"][3][3] = {}
	tSpringFestivalWishes_Random["EmoneyMono"][3][3]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["EmoneyMono"][3][3]["ItemChance"] = 1200
	tSpringFestivalWishes_Random["EmoneyMono"][3][3]["Num"] = 50
	-- 65赠点                            
	tSpringFestivalWishes_Random["EmoneyMono"][3][4] = {}
	tSpringFestivalWishes_Random["EmoneyMono"][3][4]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["EmoneyMono"][3][4]["ItemChance"] = 900
	tSpringFestivalWishes_Random["EmoneyMono"][3][4]["Num"] = 65
	-- 80赠点                           
	tSpringFestivalWishes_Random["EmoneyMono"][3][5] = {}
	tSpringFestivalWishes_Random["EmoneyMono"][3][5]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["EmoneyMono"][3][5]["ItemChance"] = 500
	tSpringFestivalWishes_Random["EmoneyMono"][3][5]["Num"] = 80
	-- 100赠点                           
	tSpringFestivalWishes_Random["EmoneyMono"][3][6] = {}
	tSpringFestivalWishes_Random["EmoneyMono"][3][6]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["EmoneyMono"][3][6]["ItemChance"] = 150
	tSpringFestivalWishes_Random["EmoneyMono"][3][6]["Num"] = 100
	-- 300赠点                           
	tSpringFestivalWishes_Random["EmoneyMono"][3][7] = {}
	tSpringFestivalWishes_Random["EmoneyMono"][3][7]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["EmoneyMono"][3][7]["ItemChance"] = 40
	tSpringFestivalWishes_Random["EmoneyMono"][3][7]["Num"] = 300
	-- 500赠点                           
	tSpringFestivalWishes_Random["EmoneyMono"][3][8] = {}
	tSpringFestivalWishes_Random["EmoneyMono"][3][8]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["EmoneyMono"][3][8]["ItemChance"] = 10
	tSpringFestivalWishes_Random["EmoneyMono"][3][8]["Num"] = 500
	
	------ 许愿签随机气力
	tSpringFestivalWishes_Random["Strength"] = {}
	---- 一星许愿签
	tSpringFestivalWishes_Random["Strength"][1] = {}
	tSpringFestivalWishes_Random["Strength"][1]["ItemChanceSum"] = 10000
	-- 30气力值               
	tSpringFestivalWishes_Random["Strength"][1][1] = {}
	tSpringFestivalWishes_Random["Strength"][1][1]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["Strength"][1][1]["ItemChance"] = 5000
	tSpringFestivalWishes_Random["Strength"][1][1]["Num"] = 30
	-- 40气力值                 
	tSpringFestivalWishes_Random["Strength"][1][2] = {}
	tSpringFestivalWishes_Random["Strength"][1][2]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["Strength"][1][2]["ItemChance"] = 2000
	tSpringFestivalWishes_Random["Strength"][1][2]["Num"] = 40
	-- 60气力值          
	tSpringFestivalWishes_Random["Strength"][1][3] = {}
	tSpringFestivalWishes_Random["Strength"][1][3]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["Strength"][1][3]["ItemChance"] = 1200
	tSpringFestivalWishes_Random["Strength"][1][3]["Num"] = 60
	-- 80气力值                  
	tSpringFestivalWishes_Random["Strength"][1][4] = {}
	tSpringFestivalWishes_Random["Strength"][1][4]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["Strength"][1][4]["ItemChance"] = 800
	tSpringFestivalWishes_Random["Strength"][1][4]["Num"] = 80
	-- 150气力值                  
	tSpringFestivalWishes_Random["Strength"][1][5] = {}
	tSpringFestivalWishes_Random["Strength"][1][5]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["Strength"][1][5]["ItemChance"] = 600
	tSpringFestivalWishes_Random["Strength"][1][5]["Num"] = 150
	-- 200气力值                  
	tSpringFestivalWishes_Random["Strength"][1][6] = {}
	tSpringFestivalWishes_Random["Strength"][1][6]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["Strength"][1][6]["ItemChance"] = 250
	tSpringFestivalWishes_Random["Strength"][1][6]["Num"] = 200
	-- 300气力值                  
	tSpringFestivalWishes_Random["Strength"][1][7] = {}
	tSpringFestivalWishes_Random["Strength"][1][7]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["Strength"][1][7]["ItemChance"] = 140
	tSpringFestivalWishes_Random["Strength"][1][7]["Num"] = 300
	-- 400气力值                 
	tSpringFestivalWishes_Random["Strength"][1][8] = {}
	tSpringFestivalWishes_Random["Strength"][1][8]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["Strength"][1][8]["ItemChance"] = 10
	tSpringFestivalWishes_Random["Strength"][1][8]["Num"] = 400
	
	---- 二星许愿签
	tSpringFestivalWishes_Random["Strength"][2] = {}
	tSpringFestivalWishes_Random["Strength"][2]["ItemChanceSum"] = 10000
	-- 50气力值                     
	tSpringFestivalWishes_Random["Strength"][2][1] = {}
	tSpringFestivalWishes_Random["Strength"][2][1]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["Strength"][2][1]["ItemChance"] = 5000
	tSpringFestivalWishes_Random["Strength"][2][1]["Num"] = 50
	-- 100气力值                    
	tSpringFestivalWishes_Random["Strength"][2][2] = {}
	tSpringFestivalWishes_Random["Strength"][2][2]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["Strength"][2][2]["ItemChance"] = 2000
	tSpringFestivalWishes_Random["Strength"][2][2]["Num"] = 100
	-- 150气力值                    
	tSpringFestivalWishes_Random["Strength"][2][3] = {}
	tSpringFestivalWishes_Random["Strength"][2][3]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["Strength"][2][3]["ItemChance"] = 1200
	tSpringFestivalWishes_Random["Strength"][2][3]["Num"] = 150
	-- 200气力值                    
	tSpringFestivalWishes_Random["Strength"][2][4] = {}
	tSpringFestivalWishes_Random["Strength"][2][4]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["Strength"][2][4]["ItemChance"] = 800
	tSpringFestivalWishes_Random["Strength"][2][4]["Num"] = 200
	-- 250气力值                    
	tSpringFestivalWishes_Random["Strength"][2][5] = {}
	tSpringFestivalWishes_Random["Strength"][2][5]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["Strength"][2][5]["ItemChance"] = 600
	tSpringFestivalWishes_Random["Strength"][2][5]["Num"] = 250
	-- 300气力值                    
	tSpringFestivalWishes_Random["Strength"][2][6] = {}
	tSpringFestivalWishes_Random["Strength"][2][6]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["Strength"][2][6]["ItemChance"] = 250
	tSpringFestivalWishes_Random["Strength"][2][6]["Num"] = 300
	-- 400气力值                   
	tSpringFestivalWishes_Random["Strength"][2][7] = {}
	tSpringFestivalWishes_Random["Strength"][2][7]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["Strength"][2][7]["ItemChance"] = 140
	tSpringFestivalWishes_Random["Strength"][2][7]["Num"] = 400
	-- 600气力值                   
	tSpringFestivalWishes_Random["Strength"][2][8] = {}
	tSpringFestivalWishes_Random["Strength"][2][8]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["Strength"][2][8]["ItemChance"] = 10
	tSpringFestivalWishes_Random["Strength"][2][8]["Num"] = 600
	
	---- 三星许愿签
	tSpringFestivalWishes_Random["Strength"][3] = {}
	tSpringFestivalWishes_Random["Strength"][3]["ItemChanceSum"] = 10000
	-- 100气力值                            
	tSpringFestivalWishes_Random["Strength"][3][1] = {}
	tSpringFestivalWishes_Random["Strength"][3][1]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["Strength"][3][1]["ItemChance"] = 5000
	tSpringFestivalWishes_Random["Strength"][3][1]["Num"] = 100
	-- 120气力值                            
	tSpringFestivalWishes_Random["Strength"][3][2] = {}
	tSpringFestivalWishes_Random["Strength"][3][2]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["Strength"][3][2]["ItemChance"] = 2000
	tSpringFestivalWishes_Random["Strength"][3][2]["Num"] = 120
	-- 150气力值                            
	tSpringFestivalWishes_Random["Strength"][3][3] = {}
	tSpringFestivalWishes_Random["Strength"][3][3]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["Strength"][3][3]["ItemChance"] = 1200
	tSpringFestivalWishes_Random["Strength"][3][3]["Num"] = 150
	-- 200气力值                            
	tSpringFestivalWishes_Random["Strength"][3][4] = {}
	tSpringFestivalWishes_Random["Strength"][3][4]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["Strength"][3][4]["ItemChance"] = 800
	tSpringFestivalWishes_Random["Strength"][3][4]["Num"] = 200
	-- 300气力值                           
	tSpringFestivalWishes_Random["Strength"][3][5] = {}
	tSpringFestivalWishes_Random["Strength"][3][5]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["Strength"][3][5]["ItemChance"] = 600
	tSpringFestivalWishes_Random["Strength"][3][5]["Num"] = 300
	-- 500气力值                           
	tSpringFestivalWishes_Random["Strength"][3][6] = {}
	tSpringFestivalWishes_Random["Strength"][3][6]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["Strength"][3][6]["ItemChance"] = 250
	tSpringFestivalWishes_Random["Strength"][3][6]["Num"] = 500
	-- 800气力值                           
	tSpringFestivalWishes_Random["Strength"][3][7] = {}
	tSpringFestivalWishes_Random["Strength"][3][7]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["Strength"][3][7]["ItemChance"] = 140
	tSpringFestivalWishes_Random["Strength"][3][7]["Num"] = 800
	-- 1000气力值                           
	tSpringFestivalWishes_Random["Strength"][3][8] = {}
	tSpringFestivalWishes_Random["Strength"][3][8]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["Strength"][3][8]["ItemChance"] = 10
	tSpringFestivalWishes_Random["Strength"][3][8]["Num"] = 1000
	
	------ 许愿签随机进度值
	tSpringFestivalWishes_Random["ProgressBar"] = {}
	---- 一星许愿签
	tSpringFestivalWishes_Random["ProgressBar"][1] = {}
	tSpringFestivalWishes_Random["ProgressBar"][1]["ItemChanceSum"] = 10000
	-- 10进度值               
	tSpringFestivalWishes_Random["ProgressBar"][1][1] = {}
	tSpringFestivalWishes_Random["ProgressBar"][1][1]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["ProgressBar"][1][1]["ItemChance"] = 3000
	tSpringFestivalWishes_Random["ProgressBar"][1][1]["Num"] = 10
	-- 20进度值                 
	tSpringFestivalWishes_Random["ProgressBar"][1][2] = {}
	tSpringFestivalWishes_Random["ProgressBar"][1][2]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["ProgressBar"][1][2]["ItemChance"] = 2000
	tSpringFestivalWishes_Random["ProgressBar"][1][2]["Num"] = 20
	-- 30进度值          
	tSpringFestivalWishes_Random["ProgressBar"][1][3] = {}
	tSpringFestivalWishes_Random["ProgressBar"][1][3]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["ProgressBar"][1][3]["ItemChance"] = 1800
	tSpringFestivalWishes_Random["ProgressBar"][1][3]["Num"] = 30
	-- 40进度值                 
	tSpringFestivalWishes_Random["ProgressBar"][1][4] = {}
	tSpringFestivalWishes_Random["ProgressBar"][1][4]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["ProgressBar"][1][4]["ItemChance"] = 1200
	tSpringFestivalWishes_Random["ProgressBar"][1][4]["Num"] = 40
	-- 50进度值                  
	tSpringFestivalWishes_Random["ProgressBar"][1][5] = {}
	tSpringFestivalWishes_Random["ProgressBar"][1][5]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["ProgressBar"][1][5]["ItemChance"] = 1000
	tSpringFestivalWishes_Random["ProgressBar"][1][5]["Num"] = 50
	-- 60进度值                  
	tSpringFestivalWishes_Random["ProgressBar"][1][6] = {}
	tSpringFestivalWishes_Random["ProgressBar"][1][6]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["ProgressBar"][1][6]["ItemChance"] = 600
	tSpringFestivalWishes_Random["ProgressBar"][1][6]["Num"] = 60
	-- 70进度值                  
	tSpringFestivalWishes_Random["ProgressBar"][1][7] = {}
	tSpringFestivalWishes_Random["ProgressBar"][1][7]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["ProgressBar"][1][7]["ItemChance"] = 250
	tSpringFestivalWishes_Random["ProgressBar"][1][7]["Num"] = 70
	-- 80进度值                 
	tSpringFestivalWishes_Random["ProgressBar"][1][8] = {}
	tSpringFestivalWishes_Random["ProgressBar"][1][8]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["ProgressBar"][1][8]["ItemChance"] = 140
	tSpringFestivalWishes_Random["ProgressBar"][1][8]["Num"] = 80
	-- 100进度值                 
	tSpringFestivalWishes_Random["ProgressBar"][1][9] = {}
	tSpringFestivalWishes_Random["ProgressBar"][1][9]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["ProgressBar"][1][9]["ItemChance"] = 10
	tSpringFestivalWishes_Random["ProgressBar"][1][9]["Num"] = 100
	
	---- 二星许愿签
	tSpringFestivalWishes_Random["ProgressBar"][2] = {}
	tSpringFestivalWishes_Random["ProgressBar"][2]["ItemChanceSum"] = 10000
	-- 20进度值
	tSpringFestivalWishes_Random["ProgressBar"][2][1] = {}
	tSpringFestivalWishes_Random["ProgressBar"][2][1]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["ProgressBar"][2][1]["ItemChance"] = 3000
	tSpringFestivalWishes_Random["ProgressBar"][2][1]["Num"] = 20
	-- 40进度值
	tSpringFestivalWishes_Random["ProgressBar"][2][2] = {}
	tSpringFestivalWishes_Random["ProgressBar"][2][2]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["ProgressBar"][2][2]["ItemChance"] = 2000
	tSpringFestivalWishes_Random["ProgressBar"][2][2]["Num"] = 40
	-- 60进度值
	tSpringFestivalWishes_Random["ProgressBar"][2][3] = {}
	tSpringFestivalWishes_Random["ProgressBar"][2][3]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["ProgressBar"][2][3]["ItemChance"] = 1800
	tSpringFestivalWishes_Random["ProgressBar"][2][3]["Num"] = 60
	-- 80进度值
	tSpringFestivalWishes_Random["ProgressBar"][2][4] = {}
	tSpringFestivalWishes_Random["ProgressBar"][2][4]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["ProgressBar"][2][4]["ItemChance"] = 1200
	tSpringFestivalWishes_Random["ProgressBar"][2][4]["Num"] = 80
	-- 100进度值
	tSpringFestivalWishes_Random["ProgressBar"][2][5] = {}
	tSpringFestivalWishes_Random["ProgressBar"][2][5]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["ProgressBar"][2][5]["ItemChance"] = 1000
	tSpringFestivalWishes_Random["ProgressBar"][2][5]["Num"] = 100
	-- 120进度值
	tSpringFestivalWishes_Random["ProgressBar"][2][6] = {}
	tSpringFestivalWishes_Random["ProgressBar"][2][6]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["ProgressBar"][2][6]["ItemChance"] = 600
	tSpringFestivalWishes_Random["ProgressBar"][2][6]["Num"] = 120
	-- 150进度值                   
	tSpringFestivalWishes_Random["ProgressBar"][2][7] = {}
	tSpringFestivalWishes_Random["ProgressBar"][2][7]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["ProgressBar"][2][7]["ItemChance"] = 250
	tSpringFestivalWishes_Random["ProgressBar"][2][7]["Num"] = 150
	-- 200进度值                   
	tSpringFestivalWishes_Random["ProgressBar"][2][8] = {}
	tSpringFestivalWishes_Random["ProgressBar"][2][8]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["ProgressBar"][2][8]["ItemChance"] = 140
	tSpringFestivalWishes_Random["ProgressBar"][2][8]["Num"] = 200
	-- 300进度值                   
	tSpringFestivalWishes_Random["ProgressBar"][2][9] = {}
	tSpringFestivalWishes_Random["ProgressBar"][2][9]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["ProgressBar"][2][9]["ItemChance"] = 10
	tSpringFestivalWishes_Random["ProgressBar"][2][9]["Num"] = 300
	
	---- 三星许愿签
	tSpringFestivalWishes_Random["ProgressBar"][3] = {}
	tSpringFestivalWishes_Random["ProgressBar"][3]["ItemChanceSum"] = 10000
	-- 40进度值
	tSpringFestivalWishes_Random["ProgressBar"][3][1] = {}
	tSpringFestivalWishes_Random["ProgressBar"][3][1]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["ProgressBar"][3][1]["ItemChance"] = 3500
	tSpringFestivalWishes_Random["ProgressBar"][3][1]["Num"] = 40
	-- 60进度值
	tSpringFestivalWishes_Random["ProgressBar"][3][2] = {}
	tSpringFestivalWishes_Random["ProgressBar"][3][2]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["ProgressBar"][3][2]["ItemChance"] = 2000
	tSpringFestivalWishes_Random["ProgressBar"][3][2]["Num"] = 60
	-- 80进度值
	tSpringFestivalWishes_Random["ProgressBar"][3][3] = {}
	tSpringFestivalWishes_Random["ProgressBar"][3][3]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["ProgressBar"][3][3]["ItemChance"] = 1500
	tSpringFestivalWishes_Random["ProgressBar"][3][3]["Num"] = 80
	-- 100进度值
	tSpringFestivalWishes_Random["ProgressBar"][3][4] = {}
	tSpringFestivalWishes_Random["ProgressBar"][3][4]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["ProgressBar"][3][4]["ItemChance"] = 1100
	tSpringFestivalWishes_Random["ProgressBar"][3][4]["Num"] = 100
	-- 150进度值
	tSpringFestivalWishes_Random["ProgressBar"][3][5] = {}
	tSpringFestivalWishes_Random["ProgressBar"][3][5]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["ProgressBar"][3][5]["ItemChance"] = 900
	tSpringFestivalWishes_Random["ProgressBar"][3][5]["Num"] = 150
	-- 200进度值
	tSpringFestivalWishes_Random["ProgressBar"][3][6] = {}
	tSpringFestivalWishes_Random["ProgressBar"][3][6]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["ProgressBar"][3][6]["ItemChance"] = 600
	tSpringFestivalWishes_Random["ProgressBar"][3][6]["Num"] = 200
	-- 250进度值
	tSpringFestivalWishes_Random["ProgressBar"][3][7] = {}
	tSpringFestivalWishes_Random["ProgressBar"][3][7]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["ProgressBar"][3][7]["ItemChance"] = 250
	tSpringFestivalWishes_Random["ProgressBar"][3][7]["Num"] = 250
	-- 300进度值
	tSpringFestivalWishes_Random["ProgressBar"][3][8] = {}
	tSpringFestivalWishes_Random["ProgressBar"][3][8]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["ProgressBar"][3][8]["ItemChance"] = 140
	tSpringFestivalWishes_Random["ProgressBar"][3][8]["Num"] = 300
	-- 500进度值
	tSpringFestivalWishes_Random["ProgressBar"][3][9] = {}
	tSpringFestivalWishes_Random["ProgressBar"][3][9]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["ProgressBar"][3][9]["ItemChance"] = 10
	tSpringFestivalWishes_Random["ProgressBar"][3][9]["Num"] = 500
	
	------ 天石随机赠点
	tSpringFestivalWishes_Random["ByEmoney"] = {}
	---- 10天石(基础表，100天石和500天石按倍数乘)
	tSpringFestivalWishes_Random["ByEmoney"][1] = {}
	tSpringFestivalWishes_Random["ByEmoney"][1]["ItemChanceSum"] = 10000
	-- 20赠点
	tSpringFestivalWishes_Random["ByEmoney"][1][1] = {}
	tSpringFestivalWishes_Random["ByEmoney"][1][1]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["ByEmoney"][1][1]["ItemChance"] = 4000
	tSpringFestivalWishes_Random["ByEmoney"][1][1]["Num"] = 20
	-- 25赠点
	tSpringFestivalWishes_Random["ByEmoney"][1][2] = {}
	tSpringFestivalWishes_Random["ByEmoney"][1][2]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["ByEmoney"][1][2]["ItemChance"] = 2000
	tSpringFestivalWishes_Random["ByEmoney"][1][2]["Num"] = 25
	-- 27赠点
	tSpringFestivalWishes_Random["ByEmoney"][1][3] = {}
	tSpringFestivalWishes_Random["ByEmoney"][1][3]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["ByEmoney"][1][3]["ItemChance"] = 1800
	tSpringFestivalWishes_Random["ByEmoney"][1][3]["Num"] = 27
	-- 35赠点
	tSpringFestivalWishes_Random["ByEmoney"][1][4] = {}
	tSpringFestivalWishes_Random["ByEmoney"][1][4]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["ByEmoney"][1][4]["ItemChance"] = 1200
	tSpringFestivalWishes_Random["ByEmoney"][1][4]["Num"] = 35
	-- 55赠点
	tSpringFestivalWishes_Random["ByEmoney"][1][5] = {}
	tSpringFestivalWishes_Random["ByEmoney"][1][5]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["ByEmoney"][1][5]["ItemChance"] = 400
	tSpringFestivalWishes_Random["ByEmoney"][1][5]["Num"] = 55
	-- 65赠点
	tSpringFestivalWishes_Random["ByEmoney"][1][6] = {}
	tSpringFestivalWishes_Random["ByEmoney"][1][6]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["ByEmoney"][1][6]["ItemChance"] = 300
	tSpringFestivalWishes_Random["ByEmoney"][1][6]["Num"] = 65
	-- 80赠点
	tSpringFestivalWishes_Random["ByEmoney"][1][7] = {}
	tSpringFestivalWishes_Random["ByEmoney"][1][7]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["ByEmoney"][1][7]["ItemChance"] = 190
	tSpringFestivalWishes_Random["ByEmoney"][1][7]["Num"] = 80
	-- 100赠点
	tSpringFestivalWishes_Random["ByEmoney"][1][8] = {}
	tSpringFestivalWishes_Random["ByEmoney"][1][8]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["ByEmoney"][1][8]["ItemChance"] = 100
	tSpringFestivalWishes_Random["ByEmoney"][1][8]["Num"] = 100
	-- 200赠点
	tSpringFestivalWishes_Random["ByEmoney"][1][9] = {}
	tSpringFestivalWishes_Random["ByEmoney"][1][9]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["ByEmoney"][1][9]["ItemChance"] = 10
	tSpringFestivalWishes_Random["ByEmoney"][1][9]["Num"] = 200
	
	------ 气力值随机气力值
	tSpringFestivalWishes_Random["ByStrength"] = {}
	---- 100气力值(基础表，500气力值和3000气力按倍数乘)
	tSpringFestivalWishes_Random["ByStrength"][1] = {}
	tSpringFestivalWishes_Random["ByStrength"][1]["ItemChanceSum"] = 10000
	-- 120气力值
	tSpringFestivalWishes_Random["ByStrength"][1][1] = {}
	tSpringFestivalWishes_Random["ByStrength"][1][1]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["ByStrength"][1][1]["ItemChance"] = 4000
	tSpringFestivalWishes_Random["ByStrength"][1][1]["Num"] = 120
	-- 150气力值
	tSpringFestivalWishes_Random["ByStrength"][1][2] = {}
	tSpringFestivalWishes_Random["ByStrength"][1][2]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["ByStrength"][1][2]["ItemChance"] = 2000
	tSpringFestivalWishes_Random["ByStrength"][1][2]["Num"] = 150
	-- 180气力值
	tSpringFestivalWishes_Random["ByStrength"][1][3] = {}
	tSpringFestivalWishes_Random["ByStrength"][1][3]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["ByStrength"][1][3]["ItemChance"] = 1800
	tSpringFestivalWishes_Random["ByStrength"][1][3]["Num"] = 180
	-- 200气力值
	tSpringFestivalWishes_Random["ByStrength"][1][4] = {}
	tSpringFestivalWishes_Random["ByStrength"][1][4]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["ByStrength"][1][4]["ItemChance"] = 1200
	tSpringFestivalWishes_Random["ByStrength"][1][4]["Num"] = 200
	-- 300气力值
	tSpringFestivalWishes_Random["ByStrength"][1][5] = {}
	tSpringFestivalWishes_Random["ByStrength"][1][5]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["ByStrength"][1][5]["ItemChance"] = 700
	tSpringFestivalWishes_Random["ByStrength"][1][5]["Num"] = 300
	-- 700气力值
	tSpringFestivalWishes_Random["ByStrength"][1][6] = {}
	tSpringFestivalWishes_Random["ByStrength"][1][6]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["ByStrength"][1][6]["ItemChance"] = 190
	tSpringFestivalWishes_Random["ByStrength"][1][6]["Num"] = 700
	-- 1000气力值
	tSpringFestivalWishes_Random["ByStrength"][1][7] = {}
	tSpringFestivalWishes_Random["ByStrength"][1][7]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["ByStrength"][1][7]["ItemChance"] = 100
	tSpringFestivalWishes_Random["ByStrength"][1][7]["Num"] = 1000
	-- 1200气力值
	tSpringFestivalWishes_Random["ByStrength"][1][8] = {}
	tSpringFestivalWishes_Random["ByStrength"][1][8]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["ByStrength"][1][8]["ItemChance"] = 10
	tSpringFestivalWishes_Random["ByStrength"][1][8]["Num"] = 1200
	
	------ 星陨石随机进度值
	tSpringFestivalWishes_Random["ByStarStone"] = {}
	---- 微光星陨石-基数为10(基础表，其他星陨石按倍数乘)
	tSpringFestivalWishes_Random["ByStarStone"][1] = {}
	tSpringFestivalWishes_Random["ByStarStone"][1]["ItemChanceSum"] = 10000
	-- 11进度值
	tSpringFestivalWishes_Random["ByStarStone"][1][1] = {}
	tSpringFestivalWishes_Random["ByStarStone"][1][1]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["ByStarStone"][1][1]["ItemChance"] = 4000
	tSpringFestivalWishes_Random["ByStarStone"][1][1]["Num"] = 11
	-- 12进度值
	tSpringFestivalWishes_Random["ByStarStone"][1][2] = {}
	tSpringFestivalWishes_Random["ByStarStone"][1][2]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["ByStarStone"][1][2]["ItemChance"] = 2000
	tSpringFestivalWishes_Random["ByStarStone"][1][2]["Num"] = 12
	-- 15进度值
	tSpringFestivalWishes_Random["ByStarStone"][1][3] = {}
	tSpringFestivalWishes_Random["ByStarStone"][1][3]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["ByStarStone"][1][3]["ItemChance"] = 1800
	tSpringFestivalWishes_Random["ByStarStone"][1][3]["Num"] = 15
	-- 20进度值
	tSpringFestivalWishes_Random["ByStarStone"][1][4] = {}
	tSpringFestivalWishes_Random["ByStarStone"][1][4]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["ByStarStone"][1][4]["ItemChance"] = 1200
	tSpringFestivalWishes_Random["ByStarStone"][1][4]["Num"] = 20
	-- 25进度值
	tSpringFestivalWishes_Random["ByStarStone"][1][5] = {}
	tSpringFestivalWishes_Random["ByStarStone"][1][5]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["ByStarStone"][1][5]["ItemChance"] = 400
	tSpringFestivalWishes_Random["ByStarStone"][1][5]["Num"] = 25
	-- 30进度值
	tSpringFestivalWishes_Random["ByStarStone"][1][6] = {}
	tSpringFestivalWishes_Random["ByStarStone"][1][6]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["ByStarStone"][1][6]["ItemChance"] = 300
	tSpringFestivalWishes_Random["ByStarStone"][1][6]["Num"] = 30
	-- 35进度值
	tSpringFestivalWishes_Random["ByStarStone"][1][7] = {}
	tSpringFestivalWishes_Random["ByStarStone"][1][7]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["ByStarStone"][1][7]["ItemChance"] = 190
	tSpringFestivalWishes_Random["ByStarStone"][1][7]["Num"] = 35
	-- 40进度值
	tSpringFestivalWishes_Random["ByStarStone"][1][8] = {}
	tSpringFestivalWishes_Random["ByStarStone"][1][8]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["ByStarStone"][1][8]["ItemChance"] = 100
	tSpringFestivalWishes_Random["ByStarStone"][1][8]["Num"] = 40
	-- 100进度值
	tSpringFestivalWishes_Random["ByStarStone"][1][9] = {}
	tSpringFestivalWishes_Random["ByStarStone"][1][9]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["ByStarStone"][1][9]["ItemChance"] = 10
	tSpringFestivalWishes_Random["ByStarStone"][1][9]["Num"] = 100
	
	------ 赤炼石随机进度值
	tSpringFestivalWishes_Random["ByStone"] = {}
	---- 赤炼石+1-基数为10(基础表，其他赤炼石按倍数乘)
	tSpringFestivalWishes_Random["ByStone"][1] = {}
	tSpringFestivalWishes_Random["ByStone"][1]["ItemChanceSum"] = 10000
	-- 15进度值
	tSpringFestivalWishes_Random["ByStone"][1][1] = {}
	tSpringFestivalWishes_Random["ByStone"][1][1]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["ByStone"][1][1]["ItemChance"] = 4000
	tSpringFestivalWishes_Random["ByStone"][1][1]["Num"] = 15
	-- 18进度值
	tSpringFestivalWishes_Random["ByStone"][1][2] = {}
	tSpringFestivalWishes_Random["ByStone"][1][2]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["ByStone"][1][2]["ItemChance"] = 2000
	tSpringFestivalWishes_Random["ByStone"][1][2]["Num"] = 18
	-- 20进度值
	tSpringFestivalWishes_Random["ByStone"][1][3] = {}
	tSpringFestivalWishes_Random["ByStone"][1][3]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["ByStone"][1][3]["ItemChance"] = 1800
	tSpringFestivalWishes_Random["ByStone"][1][3]["Num"] = 20
	-- 30进度值
	tSpringFestivalWishes_Random["ByStone"][1][4] = {}
	tSpringFestivalWishes_Random["ByStone"][1][4]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["ByStone"][1][4]["ItemChance"] = 1200
	tSpringFestivalWishes_Random["ByStone"][1][4]["Num"] = 30
	-- 40进度值
	tSpringFestivalWishes_Random["ByStone"][1][5] = {}
	tSpringFestivalWishes_Random["ByStone"][1][5]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["ByStone"][1][5]["ItemChance"] = 400
	tSpringFestivalWishes_Random["ByStone"][1][5]["Num"] = 40
	-- 50进度值
	tSpringFestivalWishes_Random["ByStone"][1][6] = {}
	tSpringFestivalWishes_Random["ByStone"][1][6]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["ByStone"][1][6]["ItemChance"] = 300
	tSpringFestivalWishes_Random["ByStone"][1][6]["Num"] = 50
	-- 60进度值
	tSpringFestivalWishes_Random["ByStone"][1][7] = {}
	tSpringFestivalWishes_Random["ByStone"][1][7]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["ByStone"][1][7]["ItemChance"] = 190
	tSpringFestivalWishes_Random["ByStone"][1][7]["Num"] = 60
	-- 80进度值
	tSpringFestivalWishes_Random["ByStone"][1][8] = {}
	tSpringFestivalWishes_Random["ByStone"][1][8]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["ByStone"][1][8]["ItemChance"] = 100
	tSpringFestivalWishes_Random["ByStone"][1][8]["Num"] = 80
	-- 150进度值
	tSpringFestivalWishes_Random["ByStone"][1][9] = {}
	tSpringFestivalWishes_Random["ByStone"][1][9]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["ByStone"][1][9]["ItemChance"] = 10
	tSpringFestivalWishes_Random["ByStone"][1][9]["Num"] = 150
	
	-- 怪物随机掉落
	tSpringFestivalWishes_Random["MonsterDrop"] = {}
	-- 片区和地宫
	tSpringFestivalWishes_Random["MonsterDrop"][1] = {}
	tSpringFestivalWishes_Random["MonsterDrop"][1]["ItemChanceSum"] = 10000
	-- 1星许愿签
	tSpringFestivalWishes_Random["MonsterDrop"][1][1] = {}
	tSpringFestivalWishes_Random["MonsterDrop"][1][1]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["MonsterDrop"][1][1]["ItemChance"] = 300
	tSpringFestivalWishes_Random["MonsterDrop"][1][1]["Item"] = 3307393
	-- 2星许愿签
	tSpringFestivalWishes_Random["MonsterDrop"][1][2] = {}
	tSpringFestivalWishes_Random["MonsterDrop"][1][2]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["MonsterDrop"][1][2]["ItemChance"] = 150
	tSpringFestivalWishes_Random["MonsterDrop"][1][2]["Item"] = 3307394
	-- 3星许愿签
	tSpringFestivalWishes_Random["MonsterDrop"][1][3] = {}
	tSpringFestivalWishes_Random["MonsterDrop"][1][3]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["MonsterDrop"][1][3]["ItemChance"] = 50
	tSpringFestivalWishes_Random["MonsterDrop"][1][3]["Item"] = 3307395
	-- 无掉落
	tSpringFestivalWishes_Random["MonsterDrop"][1][4] = {}
	tSpringFestivalWishes_Random["MonsterDrop"][1][4]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["MonsterDrop"][1][4]["ItemChance"] = 9500
	tSpringFestivalWishes_Random["MonsterDrop"][1][4]["Item"] = 0
	-- 古神灵境
	tSpringFestivalWishes_Random["MonsterDrop"][2] = {}
	tSpringFestivalWishes_Random["MonsterDrop"][2]["ItemChanceSum"] = 10000
	-- 1星许愿签                                
	tSpringFestivalWishes_Random["MonsterDrop"][2][1] = {}
	tSpringFestivalWishes_Random["MonsterDrop"][2][1]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["MonsterDrop"][2][1]["ItemChance"] = 600
	tSpringFestivalWishes_Random["MonsterDrop"][2][1]["Item"] = 3307393
	-- 2星许愿签                                
	tSpringFestivalWishes_Random["MonsterDrop"][2][2] = {}
	tSpringFestivalWishes_Random["MonsterDrop"][2][2]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["MonsterDrop"][2][2]["ItemChance"] = 300
	tSpringFestivalWishes_Random["MonsterDrop"][2][2]["Item"] = 3307394
	-- 3星许愿签                                
	tSpringFestivalWishes_Random["MonsterDrop"][2][3] = {}
	tSpringFestivalWishes_Random["MonsterDrop"][2][3]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["MonsterDrop"][2][3]["ItemChance"] = 100
	tSpringFestivalWishes_Random["MonsterDrop"][2][3]["Item"] = 3307395
	-- 无掉落                                   
	tSpringFestivalWishes_Random["MonsterDrop"][2][4] = {}
	tSpringFestivalWishes_Random["MonsterDrop"][2][4]["RandomItemChanceType"] = 2
	tSpringFestivalWishes_Random["MonsterDrop"][2][4]["ItemChance"] = 9000
	tSpringFestivalWishes_Random["MonsterDrop"][2][4]["Item"] = 0
	
	
	
----------------------------------------逻辑部分------------------------------------
-- 使用许愿签
function SpringFestivalWishes_UseItem(nItemId)
	-- 检测物品是否存在
	if not Item_ChkItem(nItemId) then
		return false
	end
	
	-- 活动时间检测
	if not Sys_ChkFullTime(tActivityTime["SpringFestivalWishes"]["ActivityTime"][2]) then 
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			-- 记录删除log
			local sLog = string.format(tSpringFestivalWishes_Log["Delete"],nItemId)
			Sys_SaveActionFestivalLog(sLog)
			
			User_TalkChannel2005(tSpringFestivalWishes_Text[2005]["OutTime"])
		end
		return false
	end
	
	NpcPosition_PathFind(22622)
end

-- 检测是否许愿
function SpringFestivalWishes_CheckWish(nNpcId)
	local nIndex = tSpringFestivalWishes_Cont["StcIndex"][nNpcId]
	local nEvent = tSpringFestivalWishes_Stc[nIndex]["EventType"]
	local nType = tSpringFestivalWishes_Stc[nIndex]["DataType"]
	local nData = Get_UserStatisticValue(nEvent,nType)
	
	if nData == 0 or nData == nil then
		return false
	else
		return true
	end
end

-- 许愿签许愿检测
function SpringFestivalWishes_CheckItem(nNpcId)
	local nOption = 0
	local tTable = {}
	local nIndex = tSpringFestivalWishes_Cont["StcIndex"][nNpcId]
	
	local nEvent = tSpringFestivalWishes_Stc[nIndex]["EventType"]
	local nType = tSpringFestivalWishes_Stc[nIndex]["DataType"]
	local nLimit = tSpringFestivalWishes_Stc[nIndex]["Limit"]
	local nData = Get_UserStatisticValue(nEvent,nType)
	
	local nEvent_1 = tSpringFestivalWishes_Stc[1]["EventType"]
	local nType_1 = tSpringFestivalWishes_Stc[1]["DataType"]
	local nLimit_1 = tSpringFestivalWishes_Stc[1]["Limit"]
	local nData_1 = Get_UserStatisticValue(nEvent_1,nType_1)
	
	-- 许愿所得的上限判断（赠点，气力，进度值）
	if nData >= nLimit then
		Sys_MsgBox(tSpringFestivalWishes_Text[105]["Limit"][nNpcId])
		return
	end
	
	-- 检测次数是否用完
	if nData_1 >= nLimit_1 then			-- 用许愿签许愿的次数用完
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end
	
	-- 检测物品是否存在
	for i,v in ipairs(tSpringFestivalWishes_Cont["Item"]) do 
		-- 背包有许愿签才显示选项
		if Item_ChkItem(v["Id"]) then
			nOption = 230 + i
			table.insert(tTable,nOption)
		end
	end
	
	if nOption == 0 then			-- 无许愿签
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	else							-- 至少有一个许愿签
		table.insert(tTable,234)
		tNpcGossip[nNpcId]["tOption2-3"] = tTable
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return
	end
end

-- 领取许愿奖励（赠天石）
function SpringFestivalWishes_RewardEmoneyMono(nNpcId)
	-- 时间检测
	if Sys_ChkFullTime(tActivityTime["SpringFestivalWishes"]["AfterTime"]) then
		return
	end
	
	local nEvent_2 = tSpringFestivalWishes_Stc[2]["EventType"]
	local nType_2 = tSpringFestivalWishes_Stc[2]["DataType"]
	local nData_2 = Get_UserStatisticValue(nEvent_2,nType_2)
	
	local nEvent_6 = tSpringFestivalWishes_Stc[6]["EventType"]
	local nType_6 = tSpringFestivalWishes_Stc[6]["DataType"]
	local nData_6 = Get_UserStatisticValue(nEvent_6,nType_6)
	
	-- 是否已领取
	if nData_6 > 0 then
		return
	end
	
	-- 判断赠点上限
	local nNowEmoneyMono = Get_UserMonoEMoney()
	if nNowEmoneyMono + nData_2 > G_User_MaxEmoneyMono then
		LinkNpcGossipFunc_New(nNpcId,"2-6")
		return
	end
	
	-- 给赠点
	local tReward = CommonFunc_Copy(tSpringFestivalWishes_Reward[1])
	tReward["RewardEMoneyMono"]["Value"] = nData_2
	tReward["Talk"] = string.format(tSpringFestivalWishes_Text[2005]["GetEmoneyMono"],nData_2)
	
	Task_SetStatistic(nEvent_6,nType_6,1,1)
	
	RewardTemplate_UseItem(tReward)
	
	-- 全服公告
	if nData_2 > 100 then 
		local sUserName = Get_UserName()
		local nRandomNum = math.random(1,3)
		local sReward = string.format(tSpringFestivalWishes_Text["RewardEmoneyMono"],nData_2)
		local sText = string.format(tSpringFestivalWishes_Text["Broadcast"]["Reward"][nRandomNum],sUserName,sReward)
		Sys_SystemBroadcast(sText)
	end
	
	Sys_SaveEmoneyBuy(tSpringFestivalWishes_Log["EmoneyLog"][4])
	
	return
end

-- 领取许愿奖励（气力值）
function SpringFestivalWishes_RewardStrength(nNpcId)
	-- 时间检测
	if Sys_ChkFullTime(tActivityTime["SpringFestivalWishes"]["AfterTime"]) then
		return
	end
	
	local nEvent_3 = tSpringFestivalWishes_Stc[3]["EventType"]
	local nType_3 = tSpringFestivalWishes_Stc[3]["DataType"]
	local nData_3 = Get_UserStatisticValue(nEvent_3,nType_3)
	
	local nEvent_7 = tSpringFestivalWishes_Stc[7]["EventType"]
	local nType_7 = tSpringFestivalWishes_Stc[7]["DataType"]
	local nData_7 = Get_UserStatisticValue(nEvent_7,nType_7)
	
	-- 是否已领取
	if nData_7 > 0 then
		return
	end
	
	-- 给气力值
	local tReward = CommonFunc_Copy(tSpringFestivalWishes_Reward[2])
	tReward["RewardStrengthValue"]["Value"] = nData_3
	tReward["Talk"] = string.format(tSpringFestivalWishes_Text[2005]["GetStrength"],nData_3)
	
	Task_SetStatistic(nEvent_7,nType_7,1,1)
	
	RewardTemplate_UseItem(tReward)
	
	-- 全服公告
	if nData_3 > 1000 then 
		local sUserName = Get_UserName()
		local nRandomNum = math.random(1,3)
		local sReward = string.format(tSpringFestivalWishes_Text["RewardStrength"],nData_3)
		local sText = string.format(tSpringFestivalWishes_Text["Broadcast"]["Reward"][nRandomNum],sUserName,sReward)
		Sys_SystemBroadcast(sText)
	end
	
	Sys_SaveEmoneyBuy(tSpringFestivalWishes_Log["EmoneyLog"][5])
	
	return
end

-- 领取许愿奖励（星陨石）
function SpringFestivalWishes_RewardStarStone(nNpcId,nIndex)
	-- 时间检测
	if Sys_ChkFullTime(tActivityTime["SpringFestivalWishes"]["AfterTime"]) then
		return
	end
	
	local nEvent_4 = tSpringFestivalWishes_Stc[4]["EventType"]
	local nType_4 = tSpringFestivalWishes_Stc[4]["DataType"]
	local nData_4 = Get_UserStatisticValue(nEvent_4,nType_4)
	
	-- 判断进度值是否充足
	local nCost = tSpringFestivalWishes_Cont["Item"]["StarStone"][nIndex]["Cost"]
	if nData_4 < nCost then
		return
	end
	
	local tReward = CommonFunc_Copy(tSpringFestivalWishes_Reward[3])
	-- 判断背包空间
	local nSpace = RewardTemplate_GetRewardSpace(tReward)
	if not User_CheckLeftSpace(nSpace) then
		LinkNpcGossipFunc_New(nNpcId,"2-7")
		return
	end
	
	-- 给星陨石
	local sReward = tSpringFestivalWishes_Text["ItemName"]["StarStone"][nIndex]
	tReward["RewardItem"][1]["Id"] = tSpringFestivalWishes_Cont["Item"]["StarStone"][nIndex]["Id"]
	tReward["Talk"] = string.format(tSpringFestivalWishes_Text[2005]["GetReward"],sReward)
	
	Task_AddStatistic(nEvent_4,nType_4,-nCost,1)
	Task_SetStcTimestamp(nEvent_4,nType_4,0)
	
	RewardTemplate_UseItem(tReward)
	
	-- 全服公告
	if nIndex >= 3 then 
		local sUserName = Get_UserName()
		local nRandomNum = math.random(1,3)
		local sText = string.format(tSpringFestivalWishes_Text["Broadcast"]["Reward"][nRandomNum],sUserName,sReward)
		Sys_SystemBroadcast(sText)
	end
	
	Sys_SaveEmoneyBuy(tSpringFestivalWishes_Log["EmoneyLog"][6])
	
	if nData_4 - nCost < 10 then
		LinkNpcGossipFunc_New(nNpcId,"1-7")
	else
		LinkNpcGossipFunc_New(nNpcId,"1-8")
	end
	return
end

-- 使用许愿签许愿（赠天石，气力值，进度值）
function SpringFestivalWishes_WishByItem(nNpcId,nIndex)			-- nIndex 代表许愿签星级
	local nEvent_1 = tSpringFestivalWishes_Stc[1]["EventType"]
	local nType_1 = tSpringFestivalWishes_Stc[1]["DataType"]
	local nLimit_1 = tSpringFestivalWishes_Stc[1]["Limit"]
	local nData_1 = Get_UserStatisticValue(nEvent_1,nType_1)
	-- 三个npc分别用不同的掩码记录数值
	local nStcIndex = tSpringFestivalWishes_Cont["StcIndex"][nNpcId]
	local nEvent = tSpringFestivalWishes_Stc[nStcIndex]["EventType"]
	local nType = tSpringFestivalWishes_Stc[nStcIndex]["DataType"]
	local nLimit = tSpringFestivalWishes_Stc[nStcIndex]["Limit"]
	local nData = Get_UserStatisticValue(nEvent,nType)
	local sReward = tSpringFestivalWishes_Cont["Reward"][nNpcId]
	
	-- 时间检测
	if Sys_ChkFullTime(tActivityTime["SpringFestivalWishes"]["AfterTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return
	end
	
	-- 许愿所得的上限判断（赠点，气力，进度值）
	if nData >= nLimit then
		Sys_MsgBox(tSpringFestivalWishes_Text[105]["Limit"][nNpcId])
		return
	end
	
	-- 检测次数是否用完
	if nData_1 >= nLimit_1 then			-- 用许愿签许愿的次数用完
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end
	
	-- 检测物品是否存在
	local nItemId = tSpringFestivalWishes_Cont["Item"][nIndex]["Id"]
	if not Item_ChkItem(nItemId) then
		tNpcGossip[nNpcId]["Text371"] = string.format(tSpringFestivalWishes_Text[nNpcId]["Text371"],nIndex)
		LinkNpcGossipFunc_New(nNpcId,"3-7")
		return
	end
	
	-- 随机增加数值
	local nFlag,tAward = Probabil_RandomAward(tSpringFestivalWishes_Random[sReward],nIndex)
	local nAddNumber = tAward[1]["tAward"][1]["Num"]
	
	local nNowNumber = nData + nAddNumber
	
	tNpcGossip[nNpcId]["Text314"] = string.format(tSpringFestivalWishes_Text[nNpcId]["Text314"],nAddNumber,nNowNumber)
	
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		-- 设置掩码
		Task_AddStatistic(nEvent_1,nType_1,1,1)
		Task_SetStcTimestamp(nEvent_1,nType_1,0)
		Task_SetStatistic(nEvent,nType,nNowNumber,1)
		Task_SetStcTimestamp(nEvent,nType,0)
		
		if nStcIndex == 4 then
			local nEvent_8 = tSpringFestivalWishes_Stc[8]["EventType"]
			local nType_8 = tSpringFestivalWishes_Stc[8]["DataType"]
			Task_SetStatistic(nEvent_8,nType_8,nNowNumber,1)
			Task_SetStcTimestamp(nEvent_8,nType_8,0)
		end
		
		-- 全服公告
		-- 祝福语
		local sUserName = Get_UserName()
		local nRandomNum = math.random(1,5)
		Sys_SystemBroadcast(string.format(tSpringFestivalWishes_Text["Broadcast"]["Wish"][nRandomNum],sUserName))
		-- 许愿随机到较大数值
		if nAddNumber >= tSpringFestivalWishes_Cont["Item"][nIndex]["Broadcast"][sReward] then
			Sys_TalkBroadcast(string.format(tSpringFestivalWishes_Text["Broadcast"][sReward][1],sUserName,nIndex,nAddNumber))
		end
		
		-- 许愿光效
		User_EffectAdd("self",tSpringFestivalWishes_Cont["Effect"])
		-- 打log
		local sLog = string.format(tSpringFestivalWishes_Log["WishByItem"],nItemId,nNpcId,nAddNumber)
		Sys_SaveActionFestivalLog(sLog)
		Sys_SaveEmoneyBuy(tSpringFestivalWishes_Log["EmoneyLog"][nNpcId][nIndex])
		
		LinkNpcGossipFunc_New(nNpcId,"3-1")
	end
end

-- 用天石许愿赠天石检测
function SpringFestivalWishes_WishByEmoney(nNpcId,nIndex)
	-- 时间检测
	if Sys_ChkFullTime(tActivityTime["SpringFestivalWishes"]["AfterTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return
	end
	
	-- 许愿所得赠天石的上限判断
	local nEvent_2 = tSpringFestivalWishes_Stc[2]["EventType"]
	local nType_2 = tSpringFestivalWishes_Stc[2]["DataType"]
	local nLimit_2 = tSpringFestivalWishes_Stc[2]["Limit"]
	local nData_2 = Get_UserStatisticValue(nEvent_2,nType_2)
	
	if nData_2 >= nLimit_2 then
		Sys_MsgBox(tSpringFestivalWishes_Text[105]["Limit"][nNpcId])
		return
	end
	
	-- 检测天石数
	local nNowEmoney = Get_UserEMoney()
	local nCost = tSpringFestivalWishes_Cont["Emoney"][nIndex]["Cost"]
	if nNowEmoney < nCost then
		LinkNpcGossipFunc_New(nNpcId,"3-3")
		return
	end
	
	local nMinEmoneyMono = nCost/10 * tSpringFestivalWishes_Random["ByEmoney"][1][1]["Num"]
	local nMaxEmoneyMono = nCost/10 * tSpringFestivalWishes_Random["ByEmoney"][1][9]["Num"]
	
	-- 天石充足，二次确认
	Sys_DialogText(string.format(tSpringFestivalWishes_Text[nNpcId]["Text341"],nCost,nMinEmoneyMono,nMaxEmoneyMono))
	-- Sys_DialogText(tSpringFestivalWishes_Text[nNpcId]["Text342"])
	Sys_DialogOption(tSpringFestivalWishes_Text[nNpcId]["Option341"],"</F>SpringFestivalWishes_WishByEmoneyConfirm</N>" .. nNpcId .. "</N>" .. nIndex)
	Sys_DialogOption(tSpringFestivalWishes_Text[nNpcId]["Option342"],nil)
	Sys_DialogFace(nNpcId)
	Sys_DialogEnd()
end

-- 确认使用天石许愿
function SpringFestivalWishes_WishByEmoneyConfirm(nNpcId,nIndex)
	local nEvent_2 = tSpringFestivalWishes_Stc[2]["EventType"]
	local nType_2 = tSpringFestivalWishes_Stc[2]["DataType"]
	local nData_2 = Get_UserStatisticValue(nEvent_2,nType_2)
	local nCost = tSpringFestivalWishes_Cont["Emoney"][nIndex]["Cost"]
	
	-- 时间检测
	if Sys_ChkFullTime(tActivityTime["SpringFestivalWishes"]["AfterTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return
	end
	
	-- 随机赠点
	local nFlag,tAward = Probabil_RandomAward(tSpringFestivalWishes_Random["ByEmoney"],1)
	local nBasicAddEmoneyMono = tAward[1]["tAward"][1]["Num"]
	local nAddEmoneyMono = nCost/10 * nBasicAddEmoneyMono
	
	local nEmoneyMonoNum = nData_2 + nAddEmoneyMono
	
	tNpcGossip[nNpcId]["Text414"] = string.format(tSpringFestivalWishes_Text[nNpcId]["Text414"],nAddEmoneyMono,nEmoneyMonoNum)
	
	-- 扣天石
	local nNowEmoney = Get_UserEMoney()
	if nNowEmoney < nCost then
		return
	end
	User_AddEMoney(-nCost)
	
	Sys_SaveEmoneyBuy(string.format(tSpringFestivalWishes_Log["EmoneyLog"][nIndex],nCost,nCost))
	
	-- 设置掩码
	Task_SetStatistic(nEvent_2,nType_2,nEmoneyMonoNum,1)
	Task_SetStcTimestamp(nEvent_2,nType_2,0)
	
	-- 全服公告
	-- 祝福语
	local sUserName = Get_UserName()
	local nRandomNum = math.random(1,5)
	Sys_SystemBroadcast(string.format(tSpringFestivalWishes_Text["Broadcast"]["Wish"][nRandomNum],sUserName))
	-- 天石许愿获得赠点
	if nAddEmoneyMono >= tSpringFestivalWishes_Cont["Emoney"][nIndex]["Broadcast"]then
		Sys_TalkBroadcast(string.format(tSpringFestivalWishes_Text["Broadcast"]["EmoneyMono"][2],sUserName,nCost,nAddEmoneyMono))
	end
	
	-- 许愿光效
	User_EffectAdd("self",tSpringFestivalWishes_Cont["Effect"])
	-- 打log
	local sLog = string.format(tSpringFestivalWishes_Log["WishByEmoney"],nCost,nNpcId,nAddEmoneyMono)
	Sys_SaveActionFestivalLog(sLog)
	
	LinkNpcGossipFunc_New(nNpcId,"4-1")
end

-- 用气力值许愿气力值
function SpringFestivalWishes_WishByStrength(nNpcId,nIndex)
	-- 时间检测
	if Sys_ChkFullTime(tActivityTime["SpringFestivalWishes"]["AfterTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return
	end
	
	-- 许愿所得赠天石的上限判断
	local nEvent_3 = tSpringFestivalWishes_Stc[3]["EventType"]
	local nType_3 = tSpringFestivalWishes_Stc[3]["DataType"]
	local nLimit_3 = tSpringFestivalWishes_Stc[3]["Limit"]
	local nData_3 = Get_UserStatisticValue(nEvent_3,nType_3)
	
	if nData_3 >= nLimit_3 then
		Sys_MsgBox(tSpringFestivalWishes_Text[105]["Limit"][nNpcId])
		return
	end
	
	-- 检测气力值
	local nNowStrength = Get_UserStrengthValue()
	local nCost = tSpringFestivalWishes_Cont["Strength"][nIndex]["Cost"]
	if nNowStrength < nCost then
		LinkNpcGossipFunc_New(nNpcId,"3-3")
		return
	end
	
	-- 随机气力值
	local nFlag,tAward = Probabil_RandomAward(tSpringFestivalWishes_Random["ByStrength"],1)
	local nBasicAddStrength = tAward[1]["tAward"][1]["Num"]
	local nAddStrength = nCost/100 * nBasicAddStrength
	
	local nStrengthNum = nData_3 + nAddStrength
	
	tNpcGossip[nNpcId]["Text344"] = string.format(tSpringFestivalWishes_Text[nNpcId]["Text344"],nAddStrength,nStrengthNum)
	
	-- 扣气力值
	User_AddStrengthValue(-nCost)
	
	-- 设置掩码
	Task_SetStatistic(nEvent_3,nType_3,nStrengthNum,1)
	Task_SetStcTimestamp(nEvent_3,nType_3,0)
	
	-- 全服公告
	-- 祝福语
	local sUserName = Get_UserName()
	local nRandomNum = math.random(1,5)
	Sys_SystemBroadcast(string.format(tSpringFestivalWishes_Text["Broadcast"]["Wish"][nRandomNum],sUserName))
	-- 用气力值许愿获得气力值
	if nAddStrength >= tSpringFestivalWishes_Cont["Strength"][nIndex]["Broadcast"]then
		Sys_TalkBroadcast(string.format(tSpringFestivalWishes_Text["Broadcast"]["Strength"][2],sUserName,nCost,nAddStrength))
	end
	
	-- 许愿光效
	User_EffectAdd("self",tSpringFestivalWishes_Cont["Effect"])
	-- 打log
	local sLog = string.format(tSpringFestivalWishes_Log["WishByStrength"],nCost,nNpcId,nAddStrength)
	Sys_SaveActionFestivalLog(sLog)
	Sys_SaveEmoneyBuy(tSpringFestivalWishes_Log["EmoneyLog"]["Chi"][nIndex])
	
	LinkNpcGossipFunc_New(nNpcId,"3-4")
end

-- 用星陨石许愿星陨石
function SpringFestivalWishes_WishByStarStone(nNpcId,nIndex)
	-- 时间检测
	if Sys_ChkFullTime(tActivityTime["SpringFestivalWishes"]["AfterTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return
	end
	
	-- 许愿所得进度值的上限判断
	local nEvent_4 = tSpringFestivalWishes_Stc[4]["EventType"]
	local nType_4 = tSpringFestivalWishes_Stc[4]["DataType"]
	local nLimit_4 = tSpringFestivalWishes_Stc[4]["Limit"]
	local nData_4 = Get_UserStatisticValue(nEvent_4,nType_4)
	
	if nData_4 >= nLimit_4 then
		Sys_MsgBox(tSpringFestivalWishes_Text[105]["Limit"][nNpcId])
		return
	end
	
	-- 检测物品是否存在
	local nItemId = tSpringFestivalWishes_Cont["Item"]["StarStone"][nIndex]["Id"]
	local sItemName = tSpringFestivalWishes_Text["ItemName"]["StarStone"][nIndex]
	if not Item_ChkItem(nItemId) then
		tNpcGossip[nNpcId]["Text331"] = string.format(tSpringFestivalWishes_Text[nNpcId]["Text331"],sItemName)
		LinkNpcGossipFunc_New(nNpcId,"3-3")
		return
	end
	
	-- 随机进度值
	local nFlag,tAward = Probabil_RandomAward(tSpringFestivalWishes_Random["ByStarStone"],1)
	local nBasicAddProgressBar = tAward[1]["tAward"][1]["Num"]
	local nAddProgressBar = tSpringFestivalWishes_Cont["StarStone"][nIndex]["Cost"]/10 * nBasicAddProgressBar
	
	local nNowProgressBar = nData_4 + nAddProgressBar
	
	tNpcGossip[nNpcId]["Text344"] = string.format(tSpringFestivalWishes_Text[nNpcId]["Text344"],nAddProgressBar,nNowProgressBar)
	
	-- 删除物品
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		-- 设置掩码
		Task_SetStatistic(nEvent_4,nType_4,nNowProgressBar,1)
		Task_SetStcTimestamp(nEvent_4,nType_4,0)
		
		local nEvent_8 = tSpringFestivalWishes_Stc[8]["EventType"]
		local nType_8 = tSpringFestivalWishes_Stc[8]["DataType"]
		local nData_8 = Get_UserStatisticValue(nEvent_8,nType_8)
		Task_SetStatistic(nEvent_8,nType_8,nNowProgressBar,1)
		Task_SetStcTimestamp(nEvent_8,nType_8,0)
		
		-- 全服公告
		-- 祝福语
		local sUserName = Get_UserName()
		local nRandomNum = math.random(1,5)
		Sys_SystemBroadcast(string.format(tSpringFestivalWishes_Text["Broadcast"]["Wish"][nRandomNum],sUserName))
		-- 用星陨石许愿获得进度值
		if nAddProgressBar >= tSpringFestivalWishes_Cont["StarStone"][nIndex]["Broadcast"] then
			Sys_TalkBroadcast(string.format(tSpringFestivalWishes_Text["Broadcast"]["ProgressBar"][2],sUserName,sItemName,nAddProgressBar))
		end
		
		-- 许愿光效
		User_EffectAdd("self",tSpringFestivalWishes_Cont["Effect"])
		-- 打log
		local sLog = string.format(tSpringFestivalWishes_Log["WishByStarStone"],nItemId,nNpcId,nAddProgressBar)
		Sys_SaveActionFestivalLog(sLog)
		Sys_SaveEmoneyBuy(tSpringFestivalWishes_Log["EmoneyLog"]["StarStone"][nIndex])
		
		LinkNpcGossipFunc_New(nNpcId,"3-4")
	end
end

-- 用赤炼石许愿星陨石
function SpringFestivalWishes_WishByStone(nNpcId,nIndex)
	-- 时间检测
	if Sys_ChkFullTime(tActivityTime["SpringFestivalWishes"]["AfterTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return
	end
	
	-- 许愿所得进度值的上限判断
	local nEvent_4 = tSpringFestivalWishes_Stc[4]["EventType"]
	local nType_4 = tSpringFestivalWishes_Stc[4]["DataType"]
	local nLimit_4 = tSpringFestivalWishes_Stc[4]["Limit"]
	local nData_4 = Get_UserStatisticValue(nEvent_4,nType_4)
	
	if nData_4 >= nLimit_4 then
		Sys_MsgBox(tSpringFestivalWishes_Text[105]["Limit"][nNpcId])
		return
	end
	
	-- 检测物品是否存在
	local nItemId = tSpringFestivalWishes_Cont["Item"]["Stone"][nIndex]["Id"]
	local sItemName = tSpringFestivalWishes_Text["ItemName"]["Stone"][nIndex]
	if not Item_ChkItem(nItemId,0) then
		tNpcGossip[nNpcId]["Text351"] = string.format(tSpringFestivalWishes_Text[nNpcId]["Text351"],sItemName)
		LinkNpcGossipFunc_New(nNpcId,"3-5")
		return
	end
	
	-- 随机进度值
	local nFlag,tAward = Probabil_RandomAward(tSpringFestivalWishes_Random["ByStone"],1)
	local nBasicAddProgressBar = tAward[1]["tAward"][1]["Num"]
	local nAddProgressBar = tSpringFestivalWishes_Cont["Stone"][nIndex]["Cost"]/10 * nBasicAddProgressBar
	
	local nNowProgressBar = nData_4 + nAddProgressBar
	
	tNpcGossip[nNpcId]["Text364"] = string.format(tSpringFestivalWishes_Text[nNpcId]["Text364"],nAddProgressBar,nNowProgressBar)
	
	-- 删除物品
	if Item_ChkItem(nItemId,0) and Item_DelItem(nItemId,0) then
		-- 设置掩码
		Task_SetStatistic(nEvent_4,nType_4,nNowProgressBar,1)
		Task_SetStcTimestamp(nEvent_4,nType_4,0)
		
		local nEvent_8 = tSpringFestivalWishes_Stc[8]["EventType"]
		local nType_8 = tSpringFestivalWishes_Stc[8]["DataType"]
		local nData_8 = Get_UserStatisticValue(nEvent_8,nType_8)
		Task_SetStatistic(nEvent_8,nType_8,nNowProgressBar,1)
		Task_SetStcTimestamp(nEvent_8,nType_8,0)
		
		-- 全服公告
		-- 祝福语
		local sUserName = Get_UserName()
		local nRandomNum = math.random(1,5)
		Sys_SystemBroadcast(string.format(tSpringFestivalWishes_Text["Broadcast"]["Wish"][nRandomNum],sUserName))
		-- 用星陨石许愿获得进度值
		if nAddProgressBar >= tSpringFestivalWishes_Cont["Stone"][nIndex]["Broadcast"] then
			Sys_TalkBroadcast(string.format(tSpringFestivalWishes_Text["Broadcast"]["ProgressBar"][3],sUserName,sItemName,nAddProgressBar))
		end
		
		-- 许愿光效
		User_EffectAdd("self",tSpringFestivalWishes_Cont["Effect"])
		-- 打log
		local sLog = string.format(tSpringFestivalWishes_Log["WishByStone"],nItemId,nNpcId,nAddProgressBar)
		Sys_SaveActionFestivalLog(sLog)
		Sys_SaveEmoneyBuy(tSpringFestivalWishes_Log["EmoneyLog"]["Stone"][nIndex])
		
		LinkNpcGossipFunc_New(nNpcId,"3-6")
	end
end

-- 怪物掉落
function SpringFestivalWishes_MonsterDrop(nIndex)
	-- 检测活动时间
	if not Sys_ChkFullTime(tActivityTime["SpringFestivalWishes"]["ActivityTime"][2]) then 
		return false
	end
	
	-- 检测等级
	if not User_JudgeLevelAndMetempsychosis(tSpringFestivalWishes_Cont["Level"],tSpringFestivalWishes_Cont["Metempsychosis"]) then
	 return false
	end
	
	local nEvent_5 = tSpringFestivalWishes_Stc[5]["EventType"]
	local nType_5 = tSpringFestivalWishes_Stc[5]["DataType"]
	local nLimit_5 = tSpringFestivalWishes_Stc[5]["Limit"]
	local nData_5 = Get_UserStatisticValue(nEvent_5,nType_5)
	
	-- 隔天清掩码
	if Task_StcInterval(nEvent_5,nType_5,1,4) then
		Task_SetStatistic(nEvent_5,nType_5,0,1)
		Task_SetStcTimestamp(nEvent_5,nType_5,0)
	end
	
	-- 出过提示
	if nData_5 >= nLimit_5 + 1 then
		return false
	end
	
	-- 每日限量掉落15个(出一次提示)
	if nData_5 == nLimit_5 then
		Task_AddStatistic(nEvent_5,nType_5,1,1)
		Task_SetStcTimestamp(nEvent_5,nType_5,0)
		
		Sys_MsgBox(tSpringFestivalWishes_Text[2005]["Limit"])
		return false
	end
	
	-- 随机掉落
	local nFlag,tAward = Probabil_RandomAward(tSpringFestivalWishes_Random["MonsterDrop"],nIndex)
	local nDropItemId = tAward[1]["tAward"][1]["Item"]
	if nDropItemId == 0 then
		return false
	end
	
	local tReward = CommonFunc_Copy(tSpringFestivalWishes_Reward[4])
	tReward["RewardItem"][1]["Id"] = nDropItemId
	tReward["Talk"] = tSpringFestivalWishes_Text[2005]["GetItem"][nDropItemId]
	
	Task_AddStatistic(nEvent_5,nType_5,1,1)
	Task_SetStcTimestamp(nEvent_5,nType_5,0)
	
	RewardTemplate_UseItem(tReward)
	
	return true
end

-- 片区和地宫掉落
function SpringFestivalWishes_MonsterDrop1()
	SpringFestivalWishes_MonsterDrop(1)
end

-- 古神灵境掉落
function SpringFestivalWishes_MonsterDrop2()
	SpringFestivalWishes_MonsterDrop(2)
end

-- 超链接触发
function SpringFestivalWishes_TakePartIn(nNpcId)
	local nUserMapId = Get_UserMapId()
	-- 判断是否在双龙城
	if nUserMapId == 1002 then
		NpcPosition_PathFind(nNpcId)
	else
		Sys_MsgBox(tSpringFestivalWishes_Text[105]["FindNpc"])
	end
	
	return
end

----------------------------------------模板部分-------------------------------------
----------------------------NPC模板
-- 钱多多 22621
tNpcFace[2017] = 156
tNpcGossip[22621] = tNpcGossip[22621] or DefaultNpc:new{}
tNpcGossip[22621]["OptionHidden"] = 1
tNpcGossip[22621]["DialogueText"] = tSpringFestivalWishes_Text[22621]
-- 活动前
tNpcGossip[22621]["Text1-1"] = {111,112,113,114,115,116,117}
tNpcGossip[22621]["tOption1-1"] = {111}
tNpcGossip[22621]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tActivityTime["SpringFestivalWishes"]["BeforeTime"])
end

-- 活动后
tNpcGossip[22621]["Text1-2"] = {121,122,123}
tNpcGossip[22621]["tOption1-2"] = {121}
tNpcGossip[22621]["ChkFunc1-2"] = function ()
	return Sys_ChkFullTime(tActivityTime["SpringFestivalWishes"]["AfterTime"])
end

-- 活动中（2月6日至2月14日）（等级未到）
tNpcGossip[22621]["Text1-3"] = {131,132,133,134,135,136,137,138}
tNpcGossip[22621]["tOption1-3"] = {131}
tNpcGossip[22621]["ChkFunc1-3"] = function ()
	return Sys_ChkFullTime(tActivityTime["SpringFestivalWishes"]["ActivityTime"][2]) and not User_JudgeLevelAndMetempsychosis(tSpringFestivalWishes_Cont["Level"],tSpringFestivalWishes_Cont["Metempsychosis"])
end

-- 活动中（2月6日至2月14日）（等级达到）
tNpcGossip[22621]["Text1-4"] = {141,142,143,144,145,146,147}
-- tNpcGossip[22621]["tOption1-4"] = {141,142,143}
tNpcGossip[22621]["tOption1-4"] = {141,142}
tNpcGossip[22621]["ChkFunc1-4"] = function ()
	-- 活动时间与等级判断
	if Sys_ChkFullTime(tActivityTime["SpringFestivalWishes"]["ActivityTime"][2]) and User_JudgeLevelAndMetempsychosis(tSpringFestivalWishes_Cont["Level"],tSpringFestivalWishes_Cont["Metempsychosis"]) then
		local nEvent_1 = tSpringFestivalWishes_Stc[1]["EventType"]
		local nType_1 = tSpringFestivalWishes_Stc[1]["DataType"]
		local nLimit_1 = tSpringFestivalWishes_Stc[1]["Limit"]
		
		-- 判断隔天
		if Task_StcInterval(nEvent_1,nType_1,1,4) then
			Task_SetStatistic(nEvent_1,nType_1,0,1)
			Task_SetStcTimestamp(nEvent_1,nType_1,0)
		end
		
		local nData_1 = Get_UserStatisticValue(nEvent_1,nType_1)
		local nNum = 0
		if nData_1 <= nLimit_1 then
			nNum = nLimit_1 - nData_1
		end
		
		tNpcGossip[22621]["Option141"] = string.format(tSpringFestivalWishes_Text[22621]["Option141"],nNum)
		return true 
	end
	
	return false
end

-- 活动中（2月15日至2月21日）（玩家未许愿）
tNpcGossip[22621]["Text1-5"] = {151,152,153,154}
tNpcGossip[22621]["tOption1-5"] = {151}
tNpcGossip[22621]["ChkFunc1-5"] = function ()
	-- 检测活动时间与是否许愿
	if not SpringFestivalWishes_CheckWish(22621) and Sys_ChkFullTime(tActivityTime["SpringFestivalWishes"]["ActivityTime"][3])then
		return true
	else
		return false
	end
end

-- 活动中（2月15日至2月21日）（玩家许愿过）
tNpcGossip[22621]["Text1-6"] = {161,162,163,164}
tNpcGossip[22621]["tOption1-6"] = {161}
tNpcGossip[22621]["ChkFunc1-6"] = function ()
	-- 检测活动时间与是否许愿
	if SpringFestivalWishes_CheckWish(22621) and Sys_ChkFullTime(tActivityTime["SpringFestivalWishes"]["ActivityTime"][3])then
		local nEvent_2 = tSpringFestivalWishes_Stc[2]["EventType"]
		local nType_2 = tSpringFestivalWishes_Stc[2]["DataType"]
		local nData_2 = Get_UserStatisticValue(nEvent_2,nType_2)
		
		tNpcGossip[22621]["Text163"] = string.format(tSpringFestivalWishes_Text[22621]["Text163"],nData_2)
		return true
	else
		return false
	end
end

-- 活动中（2月22日至3月7日）（玩家未许愿）
tNpcGossip[22621]["Text1-7"] = {171,172,173,174}
tNpcGossip[22621]["tOption1-7"] = {171}
tNpcGossip[22621]["ChkFunc1-7"] = function ()
	-- 检测活动时间与是否许愿
	if not SpringFestivalWishes_CheckWish(22621) and Sys_ChkFullTime(tActivityTime["SpringFestivalWishes"]["ActivityTime"][4]) then
		return true
	end
	
	local nEvent_6 = tSpringFestivalWishes_Stc[6]["EventType"]
	local nType_6 = tSpringFestivalWishes_Stc[6]["DataType"]
	local nData_6 = Get_UserStatisticValue(nEvent_6,nType_6)
	
	-- 已领取奖励也跳转到这
	if nData_6 > 0 then
		return true
	end
	
	return false
end

-- 活动中（2月22日至3月7日）（玩家许愿过）
tNpcGossip[22621]["Text1-8"] = {181,182,183,184}
tNpcGossip[22621]["tOption1-8"] = {181}
tNpcGossip[22621]["ChkFunc1-8"] = function ()
	-- 检测活动时间与是否许愿
	if SpringFestivalWishes_CheckWish(22621) and Sys_ChkFullTime(tActivityTime["SpringFestivalWishes"]["ActivityTime"][4]) then
		local nEvent_2 = tSpringFestivalWishes_Stc[2]["EventType"]
		local nType_2 = tSpringFestivalWishes_Stc[2]["DataType"]
		local nData_2 = Get_UserStatisticValue(nEvent_2,nType_2)
		
		tNpcGossip[22621]["Text181"] = string.format(tSpringFestivalWishes_Text[22621]["Text181"],nData_2)
		
		return true
	end
	
	return false
end

-- tNpcGossip[22621]["OptionFunc141"] = "SpringFestivalWishes_CheckItem</N>22621" 
tNpcGossip[22621]["OptionPoint141"] = "2-3"
tNpcGossip[22621]["OptionPoint142"] = "2-4"
-- tNpcGossip[22621]["OptionPoint143"] = "2-5"
tNpcGossip[22621]["OptionFunc181"] = "SpringFestivalWishes_RewardEmoneyMono</N>22621" 

-- 无许愿签
-- tNpcGossip[22621]["Text2-1"] = {211,212}
-- tNpcGossip[22621]["tOption2-1"] = {211}

-- 有许愿签，今日次数用完
tNpcGossip[22621]["Text2-2"] = {221}
tNpcGossip[22621]["tOption2-2"] = {221}

-- 有许愿签
tNpcGossip[22621]["Text2-3"] = {231,232,233,234,235,236,237,238,239}
tNpcGossip[22621]["tOption2-3"] = {231,232,233,234}
tNpcGossip[22621]["ChkFunc2-3"] = function ()
	local nEvent_2 = tSpringFestivalWishes_Stc[2]["EventType"]
	local nType_2 = tSpringFestivalWishes_Stc[2]["DataType"]
	local nData_2 = Get_UserStatisticValue(nEvent_2,nType_2)
	
	tNpcGossip[22621]["Text238"] = string.format(tSpringFestivalWishes_Text[22621]["Text238"],nData_2)
	return true
end

-- 天石许愿
tNpcGossip[22621]["Text2-4"] = {241,242,243,244,245,246,247,248,249}
tNpcGossip[22621]["tOption2-4"] = {241,242,243,244}
tNpcGossip[22621]["ChkFunc2-4"] = function ()
	local nEvent_2 = tSpringFestivalWishes_Stc[2]["EventType"]
	local nType_2 = tSpringFestivalWishes_Stc[2]["DataType"]
	local nData_2 = Get_UserStatisticValue(nEvent_2,nType_2)
	
	tNpcGossip[22621]["Text248"] = string.format(tSpringFestivalWishes_Text[22621]["Text248"],nData_2)
	return true
end

-- 许愿指南
-- tNpcGossip[22621]["Text2-5"] = {251,252,253,254,255,256}
-- tNpcGossip[22621]["tOption2-5"] = {251}

-- 活动中（2月22日至3月7日）领取赠点（赠点满）
tNpcGossip[22621]["Text2-6"] = {261}
tNpcGossip[22621]["tOption2-6"] = {261}

tNpcGossip[22621]["OptionFunc231"] = "SpringFestivalWishes_WishByItem</N>22621</N>1" 
tNpcGossip[22621]["OptionFunc232"] = "SpringFestivalWishes_WishByItem</N>22621</N>2" 
tNpcGossip[22621]["OptionFunc233"] = "SpringFestivalWishes_WishByItem</N>22621</N>3" 
tNpcGossip[22621]["OptionPoint234"] = "1-4"
tNpcGossip[22621]["OptionFunc241"] = "SpringFestivalWishes_WishByEmoney</N>22621</N>1" 
tNpcGossip[22621]["OptionFunc242"] = "SpringFestivalWishes_WishByEmoney</N>22621</N>2" 
tNpcGossip[22621]["OptionFunc243"] = "SpringFestivalWishes_WishByEmoney</N>22621</N>3" 
tNpcGossip[22621]["OptionPoint244"] = "1-4"

-- 许愿签许愿成功
-- tNpcGossip[22621]["Text3-1"] = {311,312}
tNpcGossip[22621]["Text3-1"] = {311,312,313,314}
tNpcGossip[22621]["tOption3-1"] = {311}

-- 点击时许愿时间结束
tNpcGossip[22621]["Text3-2"] = {321}
tNpcGossip[22621]["tOption3-2"] = {321}

-- 天石不足
tNpcGossip[22621]["Text3-3"] = {331}
tNpcGossip[22621]["tOption3-3"] = {331}

-- 许愿签不足
tNpcGossip[22621]["Text3-7"] = {371,372}
tNpcGossip[22621]["tOption3-7"] = {371}

-- 天石许愿成功
-- tNpcGossip[22621]["Text4-1"] = {411,412}
tNpcGossip[22621]["Text4-1"] = {411,412,413,414}
tNpcGossip[22621]["tOption4-1"] = {411}

-- tNpcGossip[22621]["OptionFunc311"] = "SpringFestivalWishes_CheckItem</N>22621" 
tNpcGossip[22621]["OptionPoint311"] = "2-3"
tNpcGossip[22621]["OptionPoint331"] = "1-4"
tNpcGossip[22621]["OptionPoint371"] = "1-4"
tNpcGossip[22621]["OptionPoint411"] = "2-4"


-- 气多多 22622
tNpcFace[2018] = 155
tNpcGossip[22622] = tNpcGossip[22622] or DefaultNpc:new{}
tNpcGossip[22622]["OptionHidden"] = 1
tNpcGossip[22622]["DialogueText"] = tSpringFestivalWishes_Text[22622]
-- 活动前
tNpcGossip[22622]["Text1-1"] = {111,112,113,114,115,116,117}
tNpcGossip[22622]["tOption1-1"] = {111}
tNpcGossip[22622]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tActivityTime["SpringFestivalWishes"]["BeforeTime"])
end

-- 活动后
tNpcGossip[22622]["Text1-2"] = {121,122,123}
tNpcGossip[22622]["tOption1-2"] = {121}
tNpcGossip[22622]["ChkFunc1-2"] = function ()
	return Sys_ChkFullTime(tActivityTime["SpringFestivalWishes"]["AfterTime"])
end

-- 活动中（2月6日至2月14日）（等级未到）
tNpcGossip[22622]["Text1-3"] = {131,132,133,134,135,136,137,138}
tNpcGossip[22622]["tOption1-3"] = {131}
tNpcGossip[22622]["ChkFunc1-3"] = function ()
	return Sys_ChkFullTime(tActivityTime["SpringFestivalWishes"]["ActivityTime"][2]) and not User_JudgeLevelAndMetempsychosis(tSpringFestivalWishes_Cont["Level"],tSpringFestivalWishes_Cont["Metempsychosis"])
end

-- 活动中（2月6日至2月14日）（等级达到）
tNpcGossip[22622]["Text1-4"] = {141,142,143,144,145,146,147}
-- tNpcGossip[22622]["tOption1-4"] = {141,142,143}
tNpcGossip[22622]["tOption1-4"] = {141,142}
tNpcGossip[22622]["ChkFunc1-4"] = function ()
	-- 活动时间与等级判断
	if Sys_ChkFullTime(tActivityTime["SpringFestivalWishes"]["ActivityTime"][2]) and User_JudgeLevelAndMetempsychosis(tSpringFestivalWishes_Cont["Level"],tSpringFestivalWishes_Cont["Metempsychosis"]) then
		local nEvent_1 = tSpringFestivalWishes_Stc[1]["EventType"]
		local nType_1 = tSpringFestivalWishes_Stc[1]["DataType"]
		local nLimit_1 = tSpringFestivalWishes_Stc[1]["Limit"]
		
		-- 判断隔天
		if Task_StcInterval(nEvent_1,nType_1,1,4) then
			Task_SetStatistic(nEvent_1,nType_1,0,1)
			Task_SetStcTimestamp(nEvent_1,nType_1,0)
		end
		
		local nData_1 = Get_UserStatisticValue(nEvent_1,nType_1)
		
		local nNum = 0
		if nData_1 <= nLimit_1 then
			nNum = nLimit_1 - nData_1
		end
		
		tNpcGossip[22622]["Option141"] = string.format(tSpringFestivalWishes_Text[22622]["Option141"],nNum)
		return true 
	end
	
	return false
end

-- 活动中（2月15日至2月21日）（玩家未许愿）
tNpcGossip[22622]["Text1-5"] = {151,152,153}
tNpcGossip[22622]["tOption1-5"] = {151}
tNpcGossip[22622]["ChkFunc1-5"] = function ()
	-- 检测活动时间与是否许愿
	if not SpringFestivalWishes_CheckWish(22622) and Sys_ChkFullTime(tActivityTime["SpringFestivalWishes"]["ActivityTime"][3]) then
		return true
	end
	
	return false
end

-- 活动中（2月15日至2月21日）（玩家许愿过）
tNpcGossip[22622]["Text1-6"] = {161,162,163,164}
tNpcGossip[22622]["tOption1-6"] = {161}
tNpcGossip[22622]["ChkFunc1-6"] = function ()
	-- 检测活动时间与是否许愿
	if SpringFestivalWishes_CheckWish(22622) and Sys_ChkFullTime(tActivityTime["SpringFestivalWishes"]["ActivityTime"][3]) then
		local nEvent_3 = tSpringFestivalWishes_Stc[3]["EventType"]
		local nType_3 = tSpringFestivalWishes_Stc[3]["DataType"]
		local nData_3 = Get_UserStatisticValue(nEvent_3,nType_3)
		
		tNpcGossip[22622]["Text163"] = string.format(tSpringFestivalWishes_Text[22622]["Text163"],nData_3)
		return true
	end
	
	return false
end

-- 活动中（2月22日至3月7日）（玩家未许愿）
tNpcGossip[22622]["Text1-7"] = {171,172,173}
tNpcGossip[22622]["tOption1-7"] = {171}
tNpcGossip[22622]["ChkFunc1-7"] = function ()
	-- 检测活动时间与是否许愿
	if not SpringFestivalWishes_CheckWish(22622) and Sys_ChkFullTime(tActivityTime["SpringFestivalWishes"]["ActivityTime"][4]) then
		return true
	end
	
	local nEvent_7 = tSpringFestivalWishes_Stc[7]["EventType"]
	local nType_7 = tSpringFestivalWishes_Stc[7]["DataType"]
	local nData_7 = Get_UserStatisticValue(nEvent_7,nType_7)
	
	-- 已领取奖励也跳转到这
	if nData_7 > 0 then
		return true
	end
	
	return false
end

-- 活动中（2月22日至3月7日）（玩家许愿过）
tNpcGossip[22622]["Text1-8"] = {181,182,183,184}
tNpcGossip[22622]["tOption1-8"] = {181}
tNpcGossip[22622]["ChkFunc1-8"] = function ()
	-- 检测活动时间与是否许愿
	if SpringFestivalWishes_CheckWish(22622) and Sys_ChkFullTime(tActivityTime["SpringFestivalWishes"]["ActivityTime"][4]) then
		local nEvent_3 = tSpringFestivalWishes_Stc[3]["EventType"]
		local nType_3 = tSpringFestivalWishes_Stc[3]["DataType"]
		local nData_3 = Get_UserStatisticValue(nEvent_3,nType_3)
		
		tNpcGossip[22622]["Text183"] = string.format(tSpringFestivalWishes_Text[22622]["Text183"],nData_3)
		return true
	end
	
	return false
end

-- tNpcGossip[22622]["OptionFunc141"] = "SpringFestivalWishes_CheckItem</N>22622" 
tNpcGossip[22622]["OptionPoint141"] = "2-3"
tNpcGossip[22622]["OptionPoint142"] = "2-4"
-- tNpcGossip[22622]["OptionPoint143"] = "2-5"
tNpcGossip[22622]["OptionFunc181"] = "SpringFestivalWishes_RewardStrength</N>22622" 

-- 无许愿签
-- tNpcGossip[22622]["Text2-1"] = {211,212}
-- tNpcGossip[22622]["tOption2-1"] = {211}

-- 有许愿签，今日次数用完
tNpcGossip[22622]["Text2-2"] = {221}
tNpcGossip[22622]["tOption2-2"] = {221}

-- 有许愿签
tNpcGossip[22622]["Text2-3"] = {231,232,233,234,235,236,237,238,239}
tNpcGossip[22622]["tOption2-3"] = {231,232,233,234}
tNpcGossip[22622]["ChkFunc2-3"] = function ()
	local nEvent_3 = tSpringFestivalWishes_Stc[3]["EventType"]
	local nType_3 = tSpringFestivalWishes_Stc[3]["DataType"]
	local nData_3 = Get_UserStatisticValue(nEvent_3,nType_3)
	
	tNpcGossip[22622]["Text238"] = string.format(tSpringFestivalWishes_Text[22622]["Text238"],nData_3)
	return true
end

-- 天石许愿
tNpcGossip[22622]["Text2-4"] = {241,242,243,244,245,246,247,248,249}
tNpcGossip[22622]["tOption2-4"] = {241,242,243,244}
tNpcGossip[22622]["ChkFunc2-4"] = function ()
	local nEvent_3 = tSpringFestivalWishes_Stc[3]["EventType"]
	local nType_3 = tSpringFestivalWishes_Stc[3]["DataType"]
	local nData_3 = Get_UserStatisticValue(nEvent_3,nType_3)
	
	tNpcGossip[22622]["Text248"] = string.format(tSpringFestivalWishes_Text[22622]["Text248"],nData_3)
	return true
end

-- 许愿指南
-- tNpcGossip[22622]["Text2-5"] = {251,252,253,254,255,256}
-- tNpcGossip[22622]["tOption2-5"] = {251}

tNpcGossip[22622]["OptionFunc231"] = "SpringFestivalWishes_WishByItem</N>22622</N>1" 
tNpcGossip[22622]["OptionFunc232"] = "SpringFestivalWishes_WishByItem</N>22622</N>2" 
tNpcGossip[22622]["OptionFunc233"] = "SpringFestivalWishes_WishByItem</N>22622</N>3" 
tNpcGossip[22622]["OptionPoint234"] = "1-4"
tNpcGossip[22622]["OptionFunc241"] = "SpringFestivalWishes_WishByStrength</N>22622</N>1" 
tNpcGossip[22622]["OptionFunc242"] = "SpringFestivalWishes_WishByStrength</N>22622</N>2" 
tNpcGossip[22622]["OptionFunc243"] = "SpringFestivalWishes_WishByStrength</N>22622</N>3" 
tNpcGossip[22622]["OptionPoint244"] = "1-4"

-- 许愿签许愿成功
-- tNpcGossip[22622]["Text3-1"] = {311,312}
tNpcGossip[22622]["Text3-1"] = {311,312,313,314}
tNpcGossip[22622]["tOption3-1"] = {311}

-- 点击时许愿时间结束
tNpcGossip[22622]["Text3-2"] = {321}
tNpcGossip[22622]["tOption3-2"] = {321}

-- 气力值不足
tNpcGossip[22622]["Text3-3"] = {331}
tNpcGossip[22622]["tOption3-3"] = {331}

-- 气力值许愿成功
-- tNpcGossip[22622]["Text3-4"] = {341,342}
tNpcGossip[22622]["Text3-4"] = {341,342,343,344}
tNpcGossip[22622]["tOption3-4"] = {341}

-- 许愿签不足
tNpcGossip[22622]["Text3-7"] = {371,372}
tNpcGossip[22622]["tOption3-7"] = {371}

-- tNpcGossip[22622]["OptionFunc311"] = "SpringFestivalWishes_CheckItem</N>22622" 
tNpcGossip[22622]["OptionPoint311"] = "2-3"
tNpcGossip[22622]["OptionPoint331"] = "1-4"
tNpcGossip[22622]["OptionPoint341"] = "2-4"
tNpcGossip[22622]["OptionPoint371"] = "1-4"


-- 星多多 22623
tNpcFace[2019] = 157
tNpcGossip[22623] = tNpcGossip[22623] or DefaultNpc:new{}
tNpcGossip[22623]["OptionHidden"] = 1
tNpcGossip[22623]["DialogueText"] = tSpringFestivalWishes_Text[22623]
-- 活动前
tNpcGossip[22623]["Text1-1"] = {111,112,113,114,115,116,117}
tNpcGossip[22623]["tOption1-1"] = {111}
tNpcGossip[22623]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tActivityTime["SpringFestivalWishes"]["BeforeTime"])
end

-- 活动后
tNpcGossip[22623]["Text1-2"] = {121,122,123}
tNpcGossip[22623]["tOption1-2"] = {121}
tNpcGossip[22623]["ChkFunc1-2"] = function ()
	return Sys_ChkFullTime(tActivityTime["SpringFestivalWishes"]["AfterTime"])
end

-- 活动中（2月6日至2月14日）（等级未到）
tNpcGossip[22623]["Text1-3"] = {131,132,133,134,135,136,137,138}
tNpcGossip[22623]["tOption1-3"] = {131}
tNpcGossip[22623]["ChkFunc1-3"] = function ()
	return Sys_ChkFullTime(tActivityTime["SpringFestivalWishes"]["ActivityTime"][2]) and not User_JudgeLevelAndMetempsychosis(tSpringFestivalWishes_Cont["Level"],tSpringFestivalWishes_Cont["Metempsychosis"])
end

-- 活动中（2月6日至2月14日）（等级达到）
tNpcGossip[22623]["Text1-4"] = {141,142,143,144,145,146,147}
-- tNpcGossip[22623]["tOption1-4"] = {141,142,143,144}
tNpcGossip[22623]["tOption1-4"] = {141,142,143}
tNpcGossip[22623]["ChkFunc1-4"] = function ()
	-- 活动时间与等级判断
	if Sys_ChkFullTime(tActivityTime["SpringFestivalWishes"]["ActivityTime"][2]) and User_JudgeLevelAndMetempsychosis(tSpringFestivalWishes_Cont["Level"],tSpringFestivalWishes_Cont["Metempsychosis"]) then
		local nEvent_1 = tSpringFestivalWishes_Stc[1]["EventType"]
		local nType_1 = tSpringFestivalWishes_Stc[1]["DataType"]
		local nLimit_1 = tSpringFestivalWishes_Stc[1]["Limit"]
		
		-- 判断隔天
		if Task_StcInterval(nEvent_1,nType_1,1,4) then
			Task_SetStatistic(nEvent_1,nType_1,0,1)
			Task_SetStcTimestamp(nEvent_1,nType_1,0)
		end
		
		local nData_1 = Get_UserStatisticValue(nEvent_1,nType_1)
		
		local nNum = 0
		if nData_1 <= nLimit_1 then
			nNum = nLimit_1 - nData_1
		end
		
		tNpcGossip[22623]["Option141"] = string.format(tSpringFestivalWishes_Text[22623]["Option141"],nNum)
		return true 
	end
	
	return false
end

-- 活动中（2月15日至2月21日）（玩家未许愿）
tNpcGossip[22623]["Text1-5"] = {151,152,153}
tNpcGossip[22623]["tOption1-5"] = {151}
tNpcGossip[22623]["ChkFunc1-5"] = function ()
	-- 检测活动时间与是否许愿
	if not SpringFestivalWishes_CheckWish(22623) and Sys_ChkFullTime(tActivityTime["SpringFestivalWishes"]["ActivityTime"][3]) then
		return true
	end
	
	return false
end

-- 活动中（2月15日至2月21日）（玩家许愿过）
tNpcGossip[22623]["Text1-6"] = {161,162,163,164}
tNpcGossip[22623]["tOption1-6"] = {161}
tNpcGossip[22623]["ChkFunc1-6"] = function ()
	-- 检测活动时间与是否许愿
	if SpringFestivalWishes_CheckWish(22623) and Sys_ChkFullTime(tActivityTime["SpringFestivalWishes"]["ActivityTime"][3]) then
		local nEvent_4 = tSpringFestivalWishes_Stc[4]["EventType"]
		local nType_4 = tSpringFestivalWishes_Stc[4]["DataType"]
		local nData_4 = Get_UserStatisticValue(nEvent_4,nType_4)
		
		tNpcGossip[22623]["Text163"] = string.format(tSpringFestivalWishes_Text[22623]["Text163"],nData_4)
		return true
	end
	
	return false
end

-- 活动中（2月22日至3月7日）（玩家未许愿）
tNpcGossip[22623]["Text1-7"] = {171,172,173,174}
tNpcGossip[22623]["tOption1-7"] = {171}
tNpcGossip[22623]["ChkFunc1-7"] = function ()
	-- 检测活动时间与是否许愿
	if not SpringFestivalWishes_CheckWish(22623) and Sys_ChkFullTime(tActivityTime["SpringFestivalWishes"]["ActivityTime"][4]) then
		return true
	end
	
	-- 添加特殊情况（剩个位数进度值无法领奖时也跳到这个对白）
	if SpringFestivalWishes_CheckWish(22623) and Sys_ChkFullTime(tActivityTime["SpringFestivalWishes"]["ActivityTime"][4]) then
		local nEvent_4 = tSpringFestivalWishes_Stc[4]["EventType"]
		local nType_4 = tSpringFestivalWishes_Stc[4]["DataType"]
		local nData_4 = Get_UserStatisticValue(nEvent_4,nType_4)
		
		if nData_4 < 10 then
			return true
		end
	end
	
	return false
end

-- 活动中（2月22日至3月7日）（玩家许愿过）
-- tNpcGossip[22623]["Text1-8"] = {181,182,183,184}
tNpcGossip[22623]["Text1-8"] = {181,182,183}
tNpcGossip[22623]["tOption1-8"] = {181,182,183,184}
tNpcGossip[22623]["ChkFunc1-8"] = function ()
	-- 检测活动时间与是否许愿
	if SpringFestivalWishes_CheckWish(22623) and Sys_ChkFullTime(tActivityTime["SpringFestivalWishes"]["ActivityTime"][4]) then
		local nEvent_4 = tSpringFestivalWishes_Stc[4]["EventType"]
		local nType_4 = tSpringFestivalWishes_Stc[4]["DataType"]
		local nData_4 = Get_UserStatisticValue(nEvent_4,nType_4)
		local nEvent_8 = tSpringFestivalWishes_Stc[8]["EventType"]
		local nType_8 = tSpringFestivalWishes_Stc[8]["DataType"]
		local nData_8 = Get_UserStatisticValue(nEvent_8,nType_8)
		
		tNpcGossip[22623]["Text183"] = string.format(tSpringFestivalWishes_Text[22623]["Text183"],nData_8,nData_4)
		
		if nData_4 >= 10000 then
			tNpcGossip[22623]["tOption1-8"] = {181,182,183,184}
		elseif nData_4 >= 1000 then 
			tNpcGossip[22623]["tOption1-8"] = {181,182,183}
		elseif nData_4 >= 100 then 
			tNpcGossip[22623]["tOption1-8"] = {181,182}
		elseif nData_4 >= 10 then 
			tNpcGossip[22623]["tOption1-8"] = {181}
		end
		
		return true
	end
	
	return false
end

-- tNpcGossip[22623]["OptionFunc141"] = "SpringFestivalWishes_CheckItem</N>22623" 
tNpcGossip[22623]["OptionPoint141"] = "2-3"
tNpcGossip[22623]["OptionPoint142"] = "2-4"
tNpcGossip[22623]["OptionPoint143"] = "2-5"
-- tNpcGossip[22623]["OptionPoint144"] = "2-6"
tNpcGossip[22623]["OptionFunc181"] = "SpringFestivalWishes_RewardStarStone</N>22623</N>1" 
tNpcGossip[22623]["OptionFunc182"] = "SpringFestivalWishes_RewardStarStone</N>22623</N>2" 
tNpcGossip[22623]["OptionFunc183"] = "SpringFestivalWishes_RewardStarStone</N>22623</N>3" 
tNpcGossip[22623]["OptionFunc184"] = "SpringFestivalWishes_RewardStarStone</N>22623</N>4" 

-- 无许愿签
-- tNpcGossip[22623]["Text2-1"] = {211,212}
-- tNpcGossip[22623]["tOption2-1"] = {211}

-- 有许愿签，今日次数用完
tNpcGossip[22623]["Text2-2"] = {221}
tNpcGossip[22623]["tOption2-2"] = {221}

-- 有许愿签
tNpcGossip[22623]["Text2-3"] = {231,232,233,234,235,236,237,238,239}
tNpcGossip[22623]["tOption2-3"] = {231,232,233,234}
tNpcGossip[22623]["ChkFunc2-3"] = function ()
	local nEvent_4 = tSpringFestivalWishes_Stc[4]["EventType"]
	local nType_4 = tSpringFestivalWishes_Stc[4]["DataType"]
	local nData_4 = Get_UserStatisticValue(nEvent_4,nType_4)
	
	tNpcGossip[22623]["Text238"] = string.format(tSpringFestivalWishes_Text[22623]["Text238"],nData_4)
	return true
end

-- 星陨石许愿
-- tNpcGossip[22623]["Text2-4"] = {241,242,243,244,245,246,247,248,249,2410}
tNpcGossip[22623]["Text2-4"] = {241,242,243,244,245,246,248,249,2410}
-- tNpcGossip[22623]["tOption2-4"] = {241,242,243,244,245}
tNpcGossip[22623]["tOption2-4"] = {241,242,243,245}
tNpcGossip[22623]["ChkFunc2-4"] = function ()
	local nEvent_4 = tSpringFestivalWishes_Stc[4]["EventType"]
	local nType_4 = tSpringFestivalWishes_Stc[4]["DataType"]
	local nData_4 = Get_UserStatisticValue(nEvent_4,nType_4)
	
	tNpcGossip[22623]["Text249"] = string.format(tSpringFestivalWishes_Text[22623]["Text249"],nData_4)
	return true
end

-- 赤练石许愿
tNpcGossip[22623]["Text2-5"] = {251,252,253,254,255,256,257,258,259,2510,2511}
tNpcGossip[22623]["tOption2-5"] = {251,252,253,254,255,256}
tNpcGossip[22623]["ChkFunc2-5"] = function ()
	local nEvent_4 = tSpringFestivalWishes_Stc[4]["EventType"]
	local nType_4 = tSpringFestivalWishes_Stc[4]["DataType"]
	local nData_4 = Get_UserStatisticValue(nEvent_4,nType_4)
	
	tNpcGossip[22623]["Text2510"] = string.format(tSpringFestivalWishes_Text[22623]["Text2510"],nData_4)
	return true
end

-- 许愿指南
-- tNpcGossip[22623]["Text2-6"] = {261,262,263,264,265,266}
-- tNpcGossip[22623]["tOption2-6"] = {261}

-- 活动中（2月22日至3月7日）领取奖励 背包满
tNpcGossip[22623]["Text2-7"] = {271}
tNpcGossip[22623]["tOption2-7"] = {271}

tNpcGossip[22623]["OptionFunc231"] = "SpringFestivalWishes_WishByItem</N>22623</N>1" 
tNpcGossip[22623]["OptionFunc232"] = "SpringFestivalWishes_WishByItem</N>22623</N>2" 
tNpcGossip[22623]["OptionFunc233"] = "SpringFestivalWishes_WishByItem</N>22623</N>3" 
tNpcGossip[22623]["OptionPoint234"] = "1-4"
tNpcGossip[22623]["OptionFunc241"] = "SpringFestivalWishes_WishByStarStone</N>22623</N>1" 
tNpcGossip[22623]["OptionFunc242"] = "SpringFestivalWishes_WishByStarStone</N>22623</N>2" 
tNpcGossip[22623]["OptionFunc243"] = "SpringFestivalWishes_WishByStarStone</N>22623</N>3" 
-- tNpcGossip[22623]["OptionFunc244"] = "SpringFestivalWishes_WishByStarStone</N>22623</N>4" 
tNpcGossip[22623]["OptionPoint245"] = "1-4"
tNpcGossip[22623]["OptionFunc251"] = "SpringFestivalWishes_WishByStone</N>22623</N>1" 
tNpcGossip[22623]["OptionFunc252"] = "SpringFestivalWishes_WishByStone</N>22623</N>2" 
tNpcGossip[22623]["OptionFunc253"] = "SpringFestivalWishes_WishByStone</N>22623</N>3" 
tNpcGossip[22623]["OptionFunc254"] = "SpringFestivalWishes_WishByStone</N>22623</N>4" 
tNpcGossip[22623]["OptionFunc255"] = "SpringFestivalWishes_WishByStone</N>22623</N>5" 
tNpcGossip[22623]["OptionPoint256"] = "1-4"

-- 许愿签许愿成功
-- tNpcGossip[22623]["Text3-1"] = {311,312}
tNpcGossip[22623]["Text3-1"] = {311,312,313,314}
tNpcGossip[22623]["tOption3-1"] = {311}

-- 点击时许愿时间结束
tNpcGossip[22623]["Text3-2"] = {321}
tNpcGossip[22623]["tOption3-2"] = {321}

-- 星陨石不足
tNpcGossip[22623]["Text3-3"] = {331}
tNpcGossip[22623]["tOption3-3"] = {331}

-- 星陨石许愿成功
-- tNpcGossip[22623]["Text3-4"] = {341,342}
tNpcGossip[22623]["Text3-4"] = {341,342,343,344}
tNpcGossip[22623]["tOption3-4"] = {341}

-- 赤练石不足
tNpcGossip[22623]["Text3-5"] = {351,352}
tNpcGossip[22623]["tOption3-5"] = {351}

-- 赤练石许愿成功
-- tNpcGossip[22623]["Text3-6"] = {361,362}
tNpcGossip[22623]["Text3-6"] = {361,362,363,364}
tNpcGossip[22623]["tOption3-6"] = {361}

-- 许愿签不足
tNpcGossip[22623]["Text3-7"] = {371,372}
tNpcGossip[22623]["tOption3-7"] = {371}

-- tNpcGossip[22623]["OptionFunc311"] = "SpringFestivalWishes_CheckItem</N>22623" 
tNpcGossip[22623]["OptionPoint311"] = "2-3"
tNpcGossip[22623]["OptionPoint331"] = "1-4"
tNpcGossip[22623]["OptionPoint341"] = "2-4"
tNpcGossip[22623]["OptionPoint351"] = "1-4"
tNpcGossip[22623]["OptionPoint361"] = "2-5"
tNpcGossip[22623]["OptionPoint371"] = "1-4"


-------------------------------物品模板
-- 物品头像
tItemFace[3307392] = 1311
tItemFace[3307393] = 1302
tItemFace[3307394] = 1303
tItemFace[3307395] = 1304

-- 许愿签
tItem[3307393] = tItem[3307393] or {}
tItem[3307394] = tItem[3307393] or {}
tItem[3307395] = tItem[3307393] or {}
tItem[3307393]["Function"] = function(nItemId,sItemName)
	SpringFestivalWishes_UseItem(nItemId)
end


-------------------------------怪物掉落
-- local tSpringFestivalWishes_Monster = {}
	-- -- 片区和地宫
	-- tSpringFestivalWishes_Monster[1] = {}
	-- tSpringFestivalWishes_Monster[1]["Function"] = SpringFestivalWishes_MonsterDrop1
	-- tSpringFestivalWishes_Monster[1]["Area"] = {1,2,3,4,5,6,7,8,9,10,11}
	-- table.insert(tMonsterDrop_AreaLoad,tSpringFestivalWishes_Monster[1])
	-- -- 古神灵境
	-- tSpringFestivalWishes_Monster[2] = {}
	-- tSpringFestivalWishes_Monster[2]["Function"] = SpringFestivalWishes_MonsterDrop2
	-- tSpringFestivalWishes_Monster[2]["MonsterId"] = {3973,3974,3975,4709,4710,4711,4712,4713,4720}
	-- table.insert(tMonsterDrop_AreaLoad,tSpringFestivalWishes_Monster[2])
	