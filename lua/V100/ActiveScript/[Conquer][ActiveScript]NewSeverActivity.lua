------------------------------------------------------------------------------------
--Name:			170325[简体征服][活动脚本]新服主题周活动制作 --物品部分
--Purpose:		新服主题周活动制作 ---物品部分
--Creator:		杨晓晓
--Created:		2017/03/25
------------------------------------------------------------------------------------
--命名前缀
--tNewSeverActivity_
-----------------------------------------------------

--logid ：12000686

-- 掩码说明：
--- stc(157,81)，记录玩家打开经验礼盒的次数，总共打开三次，一天一次
--- stc(157,92)，记录玩家获得背包信

--常量表
	tNewSeverActivity_Stc = {}
	--第三次打开经验礼包掩码值
	tNewSeverActivity_Stc["StcValue"] = 30001
	
--矿洞礼包合成和决战冥城  每周额外产出奖励
local tNewSeverActivity_Ward= {}
	--矿洞部分  index =1
	tNewSeverActivity_Ward[1]= {}
	tNewSeverActivity_Ward[1][1]= {}
	tNewSeverActivity_Ward[1][1]["LogId"] = 12000686
	tNewSeverActivity_Ward[1][1]["NeedSpace"] = 2
	tNewSeverActivity_Ward[1][1]["RewardItem"] = {}
	tNewSeverActivity_Ward[1][1]["RewardItem"][1] = {}
	tNewSeverActivity_Ward[1][1]["RewardItem"][1]["Id"] = 3302782 --第1周 经验礼盒
	tNewSeverActivity_Ward[1][1]["RewardItem"][1]["Attr"] = "0 1"
	tNewSeverActivity_Ward[1][1]["RewardItem"][2] = {}
	tNewSeverActivity_Ward[1][1]["RewardItem"][2]["Id"] = 3302783 --第1周 赠品龙珠礼包
	tNewSeverActivity_Ward[1][1]["RewardItem"][2]["Attr"] = "0 1"
	
	tNewSeverActivity_Ward[1][2]= {}
	tNewSeverActivity_Ward[1][2]["LogId"] = 12000686
	tNewSeverActivity_Ward[1][2]["NeedSpace"] = 2
	tNewSeverActivity_Ward[1][2]["RewardItem"] = {}
	tNewSeverActivity_Ward[1][2]["RewardItem"][1] = {}
	tNewSeverActivity_Ward[1][2]["RewardItem"][1]["Id"] = 3003124 --第2周 5个免费强炼丹(赠）
	tNewSeverActivity_Ward[1][2]["RewardItem"][1]["Attr"] = "0 5 3"
	tNewSeverActivity_Ward[1][2]["RewardItem"][2] = {}
	tNewSeverActivity_Ward[1][2]["RewardItem"][2]["Id"] = 3002030 --第2周 5个强效护心丹(赠）
	tNewSeverActivity_Ward[1][2]["RewardItem"][2]["Attr"] = "0 5"
	
	tNewSeverActivity_Ward[1][3]= {}
	tNewSeverActivity_Ward[1][3]["LogId"] = 12000686
	tNewSeverActivity_Ward[1][3]["NeedSpace"] = 1
	tNewSeverActivity_Ward[1][3]["RewardItem"] = {}
	tNewSeverActivity_Ward[1][3]["RewardItem"][1] = {}
	tNewSeverActivity_Ward[1][3]["RewardItem"][1]["Id"] = 3302795 --第3周 400气力值礼包（赠）
	tNewSeverActivity_Ward[1][3]["RewardItem"][1]["Attr"] = "0 1"
	
	tNewSeverActivity_Ward[1][4]= {}
	tNewSeverActivity_Ward[1][4]["LogId"] = 12000686
	tNewSeverActivity_Ward[1][4]["NeedSpace"] = 1
	tNewSeverActivity_Ward[1][4]["RewardItem"] = {}
	tNewSeverActivity_Ward[1][4]["RewardItem"][1] = {}
	tNewSeverActivity_Ward[1][4]["RewardItem"][1]["Id"] = 3009001 --第4周 明亮星陨石（2天时效）
	tNewSeverActivity_Ward[1][4]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	--决战冥城 index =2
	tNewSeverActivity_Ward[2]= {}
	tNewSeverActivity_Ward[2][1]= {}
	tNewSeverActivity_Ward[2][1]["LogId"] = 12000686
	tNewSeverActivity_Ward[2][1]["NeedSpace"] = 2
	tNewSeverActivity_Ward[2][1]["RewardItem"] = {}
	tNewSeverActivity_Ward[2][1]["RewardItem"][1] = {}
	tNewSeverActivity_Ward[2][1]["RewardItem"][1]["Id"] = 3302782 --第1周 经验礼盒
	tNewSeverActivity_Ward[2][1]["RewardItem"][1]["Attr"] = "0 1"
	tNewSeverActivity_Ward[2][1]["RewardItem"][2] = {}
	tNewSeverActivity_Ward[2][1]["RewardItem"][2]["Id"] = 3302784  --第1周 赠品流星卷礼包
	tNewSeverActivity_Ward[2][1]["RewardItem"][2]["Attr"] = "0 1"
	
	tNewSeverActivity_Ward[2][2]= {}
	tNewSeverActivity_Ward[2][2]["LogId"] = 12000686
	tNewSeverActivity_Ward[2][2]["NeedSpace"] = 2
	tNewSeverActivity_Ward[2][2]["RewardItem"] = {}
	tNewSeverActivity_Ward[2][2]["RewardItem"][1] = {}
	tNewSeverActivity_Ward[2][2]["RewardItem"][1]["Id"] = 3003124 --第2周 20个免费强炼丹(赠）
	tNewSeverActivity_Ward[2][2]["RewardItem"][1]["Attr"] = "0 20 3"
	tNewSeverActivity_Ward[2][2]["RewardItem"][2] = {}
	tNewSeverActivity_Ward[2][2]["RewardItem"][2]["Id"] = 3002030 --第2周 10个强效护心丹(赠）
	tNewSeverActivity_Ward[2][2]["RewardItem"][2]["Attr"] = "0 10"
	
	tNewSeverActivity_Ward[2][3]= {}
	tNewSeverActivity_Ward[2][3]["LogId"] = 12000686
	tNewSeverActivity_Ward[2][3]["NeedSpace"] = 1
	tNewSeverActivity_Ward[2][3]["RewardItem"] = {}
	tNewSeverActivity_Ward[2][3]["RewardItem"][1] = {}
	tNewSeverActivity_Ward[2][3]["RewardItem"][1] = {}
	tNewSeverActivity_Ward[2][3]["RewardItem"][1]["Id"] = 3302797  --第4周 800气力值礼包（赠）
	tNewSeverActivity_Ward[2][3]["RewardItem"][1]["Attr"] = "0 1"
	
	tNewSeverActivity_Ward[2][4]= {}
	tNewSeverActivity_Ward[2][4]["LogId"] = 12000686
	tNewSeverActivity_Ward[2][4]["NeedSpace"] = 1
	tNewSeverActivity_Ward[2][4]["RewardItem"] = {}
	tNewSeverActivity_Ward[2][4]["RewardItem"][1] = {}
	tNewSeverActivity_Ward[2][4]["RewardItem"][1]["Id"] = 3009001 --第4周 明亮星陨石（2天时效）
	tNewSeverActivity_Ward[2][4]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	
---奖励配置
tNewSeverActivity_Reward = {}
	--飞升丹
	--小于130级升一级
	tNewSeverActivity_Reward[3302781]  = {}
	tNewSeverActivity_Reward[3302781][1] = {}
	tNewSeverActivity_Reward[3302781][1]["LogId"] = 12000686
	tNewSeverActivity_Reward[3302781][1]["RewardExpPercent"] = {}
	tNewSeverActivity_Reward[3302781][1]["RewardExpPercent"]["Value"] = 100
	tNewSeverActivity_Reward[3302781][1]["DeleteItem"] = {}
	tNewSeverActivity_Reward[3302781][1]["DeleteItem"][1] = {}
	tNewSeverActivity_Reward[3302781][1]["DeleteItem"][1]["Id"] = 3302781
	tNewSeverActivity_Reward[3302781][1]["RewardEffect"] = {}
	tNewSeverActivity_Reward[3302781][1]["RewardEffect"]["SzObj"] = "self"
	tNewSeverActivity_Reward[3302781][1]["RewardEffect"]["Effect"] = "angelwing"
	--大于130级300分钟经验，满级150气力值
	tNewSeverActivity_Reward[3302781][2] = {}
	tNewSeverActivity_Reward[3302781][2]["LogId"] = 12000686
	tNewSeverActivity_Reward[3302781][2]["RewardExpTime"] = {}
	tNewSeverActivity_Reward[3302781][2]["RewardExpTime"]["Value"] = 300
	tNewSeverActivity_Reward[3302781][2]["RewardExpTime"]["FullIndex"] = "RewardStrengthValue"
	tNewSeverActivity_Reward[3302781][2]["RewardExpTime"]["FullValue"] = 150
	tNewSeverActivity_Reward[3302781][2]["RewardExpTime"]["FullLog"] = "0,0,3302781,1,12000686,2,12,150"
	tNewSeverActivity_Reward[3302781][2]["DeleteItem"] = {}
	tNewSeverActivity_Reward[3302781][2]["DeleteItem"][1] = {}
	tNewSeverActivity_Reward[3302781][2]["DeleteItem"][1]["Id"] = 3302781
	tNewSeverActivity_Reward[3302781][2]["RewardEffect"] = {}
	tNewSeverActivity_Reward[3302781][2]["RewardEffect"]["SzObj"] = "self"
	tNewSeverActivity_Reward[3302781][2]["RewardEffect"]["Effect"] = "angelwing"
	
	--经验礼包
	tNewSeverActivity_Reward[3302782] = {}
	tNewSeverActivity_Reward[3302782]["LogId"] = 12000686
	tNewSeverActivity_Reward[3302782]["LogStep"] = "3[1]"
	tNewSeverActivity_Reward[3302782]["EventType"] = 157
	tNewSeverActivity_Reward[3302782]["DataType"] = 81
	tNewSeverActivity_Reward[3302782]["RewardDelay"] = 1
	tNewSeverActivity_Reward[3302782]["RewardTimeType"] = 4
	tNewSeverActivity_Reward[3302782]["RewardData"] = 1
	tNewSeverActivity_Reward[3302782]["RewardTotalData"] = 3
	tNewSeverActivity_Reward[3302782]["RewardExpTime"] = {}
	tNewSeverActivity_Reward[3302782]["RewardExpTime"]["Value"] = 300
	tNewSeverActivity_Reward[3302782]["RewardExpTime"]["FullIndex"] = "RewardCultivation"
	tNewSeverActivity_Reward[3302782]["RewardExpTime"]["FullValue"] = 150
	tNewSeverActivity_Reward[3302782]["RewardExpTime"]["FullLog"] = "0,0,3302782,1,12000686,2,6,150"
	tNewSeverActivity_Reward[3302782]["DeleteItem"] = {}
	tNewSeverActivity_Reward[3302782]["DeleteItem"][1] = {}
	tNewSeverActivity_Reward[3302782]["DeleteItem"][1]["Id"] = 3302782
	tNewSeverActivity_Reward[3302782]["HaveReceive"] = tNewSeverActivity_Text["HaveReceive"]  ----当天再次开启时提示
	tNewSeverActivity_Reward[3302782]["RewardEffect"] = {}
	tNewSeverActivity_Reward[3302782]["RewardEffect"]["SzObj"] = "self"
	tNewSeverActivity_Reward[3302782]["RewardEffect"]["Effect"] = "angelwing"
	
	--龙珠礼包
	tNewSeverActivity_Reward[3302783] = {}
	tNewSeverActivity_Reward[3302783][1] = {}
	tNewSeverActivity_Reward[3302783][1][1]= {}
	tNewSeverActivity_Reward[3302783][1][1]["LogId"] = 12000686
	tNewSeverActivity_Reward[3302783][1][1]["LogStep"] = "4[1]"
	tNewSeverActivity_Reward[3302783][1][1]["RewardItem"] = {}
	tNewSeverActivity_Reward[3302783][1][1]["RewardItem"][1] = {}
	tNewSeverActivity_Reward[3302783][1][1]["RewardItem"][1]["Id"] = 1088000
	tNewSeverActivity_Reward[3302783][1][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tNewSeverActivity_Reward[3302783][1][1]["DeleteItem"] = {}
	tNewSeverActivity_Reward[3302783][1][1]["DeleteItem"][1] = {}
	tNewSeverActivity_Reward[3302783][1][1]["DeleteItem"][1]["Id"] = 3302783
	tNewSeverActivity_Reward[3302783][1][1]["RewardEffect"] = {}
	tNewSeverActivity_Reward[3302783][1][1]["RewardEffect"]["SzObj"] = "self"
	tNewSeverActivity_Reward[3302783][1][1]["RewardEffect"]["Effect"] = "angelwing"
	tNewSeverActivity_Reward[3302783][2]= {}
	tNewSeverActivity_Reward[3302783][2][1] = {}
	tNewSeverActivity_Reward[3302783][2][1]["LogId"] = 12000686
	tNewSeverActivity_Reward[3302783][2][1]["LogStep"] = "4[1]"
	tNewSeverActivity_Reward[3302783][2][1]["RewardStrengthValue"] = {}
	tNewSeverActivity_Reward[3302783][2][1]["RewardStrengthValue"]["Value"] = 200
	tNewSeverActivity_Reward[3302783][2][1]["DeleteItem"] = {} 
	tNewSeverActivity_Reward[3302783][2][1]["DeleteItem"][1] = {}
	tNewSeverActivity_Reward[3302783][2][1]["DeleteItem"][1]["Id"] = 3302783
	tNewSeverActivity_Reward[3302783][2][1]["RewardEffect"] = {}
	tNewSeverActivity_Reward[3302783][2][1]["RewardEffect"]["SzObj"] = "self"
	tNewSeverActivity_Reward[3302783][2][1]["RewardEffect"]["Effect"] = "angelwing"
	
	--流星卷礼包
	tNewSeverActivity_Reward[3302784] = {}
	tNewSeverActivity_Reward[3302784][1] = {}
	tNewSeverActivity_Reward[3302784][1][1]= {}
	tNewSeverActivity_Reward[3302784][1][1]["LogId"] = 12000686
	tNewSeverActivity_Reward[3302784][1][1]["LogStep"] = "4[2]"
	tNewSeverActivity_Reward[3302784][1][1]["RewardItem"] = {}
	tNewSeverActivity_Reward[3302784][1][1]["RewardItem"][1] = {}
	tNewSeverActivity_Reward[3302784][1][1]["RewardItem"][1]["Id"] = 720027
	tNewSeverActivity_Reward[3302784][1][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tNewSeverActivity_Reward[3302784][1][1]["DeleteItem"] = {}
	tNewSeverActivity_Reward[3302784][1][1]["DeleteItem"][1] = {}
	tNewSeverActivity_Reward[3302784][1][1]["DeleteItem"][1]["Id"] = 3302784
	tNewSeverActivity_Reward[3302784][1][1]["RewardEffect"] = {}
	tNewSeverActivity_Reward[3302784][1][1]["RewardEffect"]["SzObj"] = "self"
	tNewSeverActivity_Reward[3302784][1][1]["RewardEffect"]["Effect"] = "angelwing"
	tNewSeverActivity_Reward[3302784][2]= {}
	tNewSeverActivity_Reward[3302784][2][1] = {}
	tNewSeverActivity_Reward[3302784][2][1]["LogId"] = 12000686
	tNewSeverActivity_Reward[3302784][2][1]["LogStep"] = "4[2]"
	tNewSeverActivity_Reward[3302784][2][1]["RewardStrengthValue"] = {} 
	tNewSeverActivity_Reward[3302784][2][1]["RewardStrengthValue"]["Value"] = 50
	tNewSeverActivity_Reward[3302784][2][1]["DeleteItem"] = {} 
	tNewSeverActivity_Reward[3302784][2][1]["DeleteItem"][1] = {}
	tNewSeverActivity_Reward[3302784][2][1]["DeleteItem"][1]["Id"] = 3302784
	tNewSeverActivity_Reward[3302784][2][1]["RewardEffect"] = {}
	tNewSeverActivity_Reward[3302784][2][1]["RewardEffect"]["SzObj"] = "self"
	tNewSeverActivity_Reward[3302784][2][1]["RewardEffect"]["Effect"] = "angelwing"
	
	--优质宝石礼包
	tNewSeverActivity_Reward[3302785] = {}
	tNewSeverActivity_Reward[3302785][1] = {}
	tNewSeverActivity_Reward[3302785][1][1]= {}
	tNewSeverActivity_Reward[3302785][1][1]["LogId"] = 12000686
	tNewSeverActivity_Reward[3302785][1][1]["LogStep"] = "4[3]"
	tNewSeverActivity_Reward[3302785][1][1]["RewardItem"] = {}
	tNewSeverActivity_Reward[3302785][1][1]["RewardItem"][1] = {}
	tNewSeverActivity_Reward[3302785][1][1]["RewardItem"][1]["Id"] = 700043 --优质金鳞宝石
	tNewSeverActivity_Reward[3302785][1][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tNewSeverActivity_Reward[3302785][1][1]["DeleteItem"] = {}
	tNewSeverActivity_Reward[3302785][1][1]["DeleteItem"][1] = {}
	tNewSeverActivity_Reward[3302785][1][1]["DeleteItem"][1]["Id"] = 3302785
	tNewSeverActivity_Reward[3302785][1][1]["RewardEffect"] = {}
	tNewSeverActivity_Reward[3302785][1][1]["RewardEffect"]["SzObj"] = "self"
	tNewSeverActivity_Reward[3302785][1][1]["RewardEffect"]["Effect"] = "angelwing"
	tNewSeverActivity_Reward[3302785][1][2]= {}
	tNewSeverActivity_Reward[3302785][1][2]["LogId"] = 12000686
	tNewSeverActivity_Reward[3302785][1][2]["LogStep"] = "4[3]"
	tNewSeverActivity_Reward[3302785][1][2]["RewardItem"] = {}
	tNewSeverActivity_Reward[3302785][1][2]["RewardItem"][1] = {}
	tNewSeverActivity_Reward[3302785][1][2]["RewardItem"][1]["Id"] = 700033 --优质青虹宝石
	tNewSeverActivity_Reward[3302785][1][2]["RewardItem"][1]["Attr"] = "0 1 3"
	tNewSeverActivity_Reward[3302785][1][2]["DeleteItem"] = {}
	tNewSeverActivity_Reward[3302785][1][2]["DeleteItem"][1] = {}
	tNewSeverActivity_Reward[3302785][1][2]["DeleteItem"][1]["Id"] = 3302785
	tNewSeverActivity_Reward[3302785][1][2]["RewardEffect"] = {}
	tNewSeverActivity_Reward[3302785][1][2]["RewardEffect"]["SzObj"] = "self"
	tNewSeverActivity_Reward[3302785][1][2]["RewardEffect"]["Effect"] = "angelwing"
	tNewSeverActivity_Reward[3302785][1][3]= {}
	tNewSeverActivity_Reward[3302785][1][3]["LogId"] = 12000686
	tNewSeverActivity_Reward[3302785][1][3]["LogStep"] = "4[3]"
	tNewSeverActivity_Reward[3302785][1][3]["RewardItem"] = {}
	tNewSeverActivity_Reward[3302785][1][3]["RewardItem"][1] = {}
	tNewSeverActivity_Reward[3302785][1][3]["RewardItem"][1]["Id"] = 700023 --优质惊鸿宝石
	tNewSeverActivity_Reward[3302785][1][3]["RewardItem"][1]["Attr"] = "0 1 3"
	tNewSeverActivity_Reward[3302785][1][3]["DeleteItem"] = {}
	tNewSeverActivity_Reward[3302785][1][3]["DeleteItem"][1] = {}
	tNewSeverActivity_Reward[3302785][1][3]["DeleteItem"][1]["Id"] = 3302785
	tNewSeverActivity_Reward[3302785][1][3]["RewardEffect"] = {}
	tNewSeverActivity_Reward[3302785][1][3]["RewardEffect"]["SzObj"] = "self"
	tNewSeverActivity_Reward[3302785][1][3]["RewardEffect"]["Effect"] = "angelwing"
	tNewSeverActivity_Reward[3302785][1][4]= {}
	tNewSeverActivity_Reward[3302785][1][4]["LogId"] = 12000686
	tNewSeverActivity_Reward[3302785][1][4]["LogStep"] = "4[3]"
	tNewSeverActivity_Reward[3302785][1][4]["RewardItem"] = {}
	tNewSeverActivity_Reward[3302785][1][4]["RewardItem"][1] = {}
	tNewSeverActivity_Reward[3302785][1][4]["RewardItem"][1]["Id"] = 700013 --优质龙恨宝石
	tNewSeverActivity_Reward[3302785][1][4]["RewardItem"][1]["Attr"] = "0 1 3"
	tNewSeverActivity_Reward[3302785][1][4]["DeleteItem"] = {}
	tNewSeverActivity_Reward[3302785][1][4]["DeleteItem"][1] = {}
	tNewSeverActivity_Reward[3302785][1][4]["DeleteItem"][1]["Id"] = 3302785
	tNewSeverActivity_Reward[3302785][1][4]["RewardEffect"] = {}
	tNewSeverActivity_Reward[3302785][1][4]["RewardEffect"]["SzObj"] = "self"
	tNewSeverActivity_Reward[3302785][1][4]["RewardEffect"]["Effect"] = "angelwing"
	tNewSeverActivity_Reward[3302785][1][5]= {}
	tNewSeverActivity_Reward[3302785][1][5]["LogId"] = 12000686
	tNewSeverActivity_Reward[3302785][1][5]["LogStep"] = "4[3]"
	tNewSeverActivity_Reward[3302785][1][5]["RewardItem"] = {}
	tNewSeverActivity_Reward[3302785][1][5]["RewardItem"][1] = {}
	tNewSeverActivity_Reward[3302785][1][5]["RewardItem"][1]["Id"] = 700003 --优质凤吟宝石
	tNewSeverActivity_Reward[3302785][1][5]["RewardItem"][1]["Attr"] = "0 1 3"
	tNewSeverActivity_Reward[3302785][1][5]["DeleteItem"] = {}
	tNewSeverActivity_Reward[3302785][1][5]["DeleteItem"][1] = {}
	tNewSeverActivity_Reward[3302785][1][5]["DeleteItem"][1]["Id"] = 3302785
	tNewSeverActivity_Reward[3302785][1][5]["RewardEffect"] = {}
	tNewSeverActivity_Reward[3302785][1][5]["RewardEffect"]["SzObj"] = "self"
	tNewSeverActivity_Reward[3302785][1][5]["RewardEffect"]["Effect"] = "angelwing"
	tNewSeverActivity_Reward[3302785][1][6]= {}
	tNewSeverActivity_Reward[3302785][1][6]["LogId"] = 12000686
	tNewSeverActivity_Reward[3302785][1][6]["LogStep"] = "4[3]"
	tNewSeverActivity_Reward[3302785][1][6]["RewardItem"] = {}
	tNewSeverActivity_Reward[3302785][1][6]["RewardItem"][1] = {}
	tNewSeverActivity_Reward[3302785][1][6]["RewardItem"][1]["Id"] = 700053 --优质紫霞宝石
	tNewSeverActivity_Reward[3302785][1][6]["RewardItem"][1]["Attr"] = "0 1 3"
	tNewSeverActivity_Reward[3302785][1][6]["DeleteItem"] = {}
	tNewSeverActivity_Reward[3302785][1][6]["DeleteItem"][1] = {}
	tNewSeverActivity_Reward[3302785][1][6]["DeleteItem"][1]["Id"] = 3302785
	tNewSeverActivity_Reward[3302785][1][6]["RewardEffect"] = {}
	tNewSeverActivity_Reward[3302785][1][6]["RewardEffect"]["SzObj"] = "self"
	tNewSeverActivity_Reward[3302785][1][6]["RewardEffect"]["Effect"] = "angelwing"
	tNewSeverActivity_Reward[3302785][1][7]= {}
	tNewSeverActivity_Reward[3302785][1][7]["LogId"] = 12000686
	tNewSeverActivity_Reward[3302785][1][7]["LogStep"] = "4[3]"
	tNewSeverActivity_Reward[3302785][1][7]["RewardItem"] = {}
	tNewSeverActivity_Reward[3302785][1][7]["RewardItem"][1] = {}
	tNewSeverActivity_Reward[3302785][1][7]["RewardItem"][1]["Id"] = 700063 --优质明月宝石
	tNewSeverActivity_Reward[3302785][1][7]["RewardItem"][1]["Attr"] = "0 1 3"
	tNewSeverActivity_Reward[3302785][1][7]["DeleteItem"] = {}
	tNewSeverActivity_Reward[3302785][1][7]["DeleteItem"][1] = {}
	tNewSeverActivity_Reward[3302785][1][7]["DeleteItem"][1]["Id"] = 3302785
	tNewSeverActivity_Reward[3302785][1][7]["RewardEffect"] = {}
	tNewSeverActivity_Reward[3302785][1][7]["RewardEffect"]["SzObj"] = "self"
	tNewSeverActivity_Reward[3302785][1][7]["RewardEffect"]["Effect"] = "angelwing"
	tNewSeverActivity_Reward[3302785][2] = {}
	tNewSeverActivity_Reward[3302785][2][1]= {}
	tNewSeverActivity_Reward[3302785][2][1]["LogId"] = 12000686
	tNewSeverActivity_Reward[3302785][2][1]["LogStep"] = "4[2]"
	tNewSeverActivity_Reward[3302785][2][1]["RewardStrengthValue"] = {} 
	tNewSeverActivity_Reward[3302785][2][1]["RewardStrengthValue"]["Value"] = 100
	tNewSeverActivity_Reward[3302785][2][1]["DeleteItem"] = {} 
	tNewSeverActivity_Reward[3302785][2][1]["DeleteItem"][1] = {}
	tNewSeverActivity_Reward[3302785][2][1]["DeleteItem"][1]["Id"] = 3302785
	tNewSeverActivity_Reward[3302785][2][1]["RewardEffect"] = {}
	tNewSeverActivity_Reward[3302785][2][1]["RewardEffect"]["SzObj"] = "self"
	tNewSeverActivity_Reward[3302785][2][1]["RewardEffect"]["Effect"] = "angelwing"
	
	--金刚坚钻礼包
	tNewSeverActivity_Reward[3302786] = {}
	tNewSeverActivity_Reward[3302786][1] = {}
	tNewSeverActivity_Reward[3302786][1][1]= {}
	tNewSeverActivity_Reward[3302786][1][1]["LogId"] = 12000686
	tNewSeverActivity_Reward[3302786][1][1]["LogStep"] = "4[4]"
	tNewSeverActivity_Reward[3302786][1][1]["RewardItem"] = {}
	tNewSeverActivity_Reward[3302786][1][1]["RewardItem"][1] = {}
	tNewSeverActivity_Reward[3302786][1][1]["RewardItem"][1]["Id"] = 1200005
	tNewSeverActivity_Reward[3302786][1][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tNewSeverActivity_Reward[3302786][1][1]["DeleteItem"] = {}
	tNewSeverActivity_Reward[3302786][1][1]["DeleteItem"][1] = {}
	tNewSeverActivity_Reward[3302786][1][1]["DeleteItem"][1]["Id"] = 3302786
	tNewSeverActivity_Reward[3302786][1][1]["RewardEffect"] = {}
	tNewSeverActivity_Reward[3302786][1][1]["RewardEffect"]["SzObj"] = "self"
	tNewSeverActivity_Reward[3302786][1][1]["RewardEffect"]["Effect"] = "angelwing"
	tNewSeverActivity_Reward[3302786][2] = {}
	tNewSeverActivity_Reward[3302786][2][1] = {}
	tNewSeverActivity_Reward[3302786][2][1]["LogId"] = 12000686
	tNewSeverActivity_Reward[3302786][2][1]["LogStep"] = "4[4]"
	tNewSeverActivity_Reward[3302786][2][1]["RewardStrengthValue"] = {} 
	tNewSeverActivity_Reward[3302786][2][1]["RewardStrengthValue"]["Value"] = 7000
	tNewSeverActivity_Reward[3302786][2][1]["DeleteItem"] = {} 
	tNewSeverActivity_Reward[3302786][2][1]["DeleteItem"][1] = {}
	tNewSeverActivity_Reward[3302786][2][1]["DeleteItem"][1]["Id"] = 3302786
	tNewSeverActivity_Reward[3302786][2][1]["RewardEffect"] = {}
	tNewSeverActivity_Reward[3302786][2][1]["RewardEffect"]["SzObj"] = "self"
	tNewSeverActivity_Reward[3302786][2][1]["RewardEffect"]["Effect"] = "angelwing"


	--10气力值
	tNewSeverActivity_Reward[3302791] = {}
	tNewSeverActivity_Reward[3302791]["LogId"] = 12000686
	tNewSeverActivity_Reward[3302791]["LogStep"] = "5[1]"
	tNewSeverActivity_Reward[3302791]["RewardStrengthValue"] = {} 
	tNewSeverActivity_Reward[3302791]["RewardStrengthValue"]["Value"] = 10
	tNewSeverActivity_Reward[3302791]["DeleteItem"] = {}
	tNewSeverActivity_Reward[3302791]["DeleteItem"][1] = {}
	tNewSeverActivity_Reward[3302791]["DeleteItem"][1]["Id"] = 3302791
	tNewSeverActivity_Reward[3302791]["RewardEffect"] = {}
	tNewSeverActivity_Reward[3302791]["RewardEffect"]["SzObj"] = "self"
	tNewSeverActivity_Reward[3302791]["RewardEffect"]["Effect"] = "angelwing"
	
	--20气力值
	tNewSeverActivity_Reward[3302792] = {}
	tNewSeverActivity_Reward[3302792]["LogId"] = 12000686
	tNewSeverActivity_Reward[3302792]["LogStep"] = "5[2]"
	tNewSeverActivity_Reward[3302792]["RewardStrengthValue"] = {} 
	tNewSeverActivity_Reward[3302792]["RewardStrengthValue"]["Value"] = 20
	tNewSeverActivity_Reward[3302792]["DeleteItem"] = {}
	tNewSeverActivity_Reward[3302792]["DeleteItem"][1] = {}
	tNewSeverActivity_Reward[3302792]["DeleteItem"][1]["Id"] = 3302792
	tNewSeverActivity_Reward[3302792]["RewardEffect"] = {}
	tNewSeverActivity_Reward[3302792]["RewardEffect"]["SzObj"] = "self"
	tNewSeverActivity_Reward[3302792]["RewardEffect"]["Effect"] = "angelwing"
	
	--50气力值
	tNewSeverActivity_Reward[3302793] = {}
	tNewSeverActivity_Reward[3302793]["LogId"] = 12000686
	tNewSeverActivity_Reward[3302793]["LogStep"] = "5[3]"
	tNewSeverActivity_Reward[3302793]["RewardStrengthValue"] = {} 
	tNewSeverActivity_Reward[3302793]["RewardStrengthValue"]["Value"] =50
	tNewSeverActivity_Reward[3302793]["DeleteItem"] = {}
	tNewSeverActivity_Reward[3302793]["DeleteItem"][1] = {}
	tNewSeverActivity_Reward[3302793]["DeleteItem"][1]["Id"] = 3302793
	tNewSeverActivity_Reward[3302793]["RewardEffect"] = {}
	tNewSeverActivity_Reward[3302793]["RewardEffect"]["SzObj"] = "self"
	tNewSeverActivity_Reward[3302793]["RewardEffect"]["Effect"] = "angelwing"
	
	--100气力值
	tNewSeverActivity_Reward[3302794] = {}
	tNewSeverActivity_Reward[3302794]["LogId"] = 12000686
	tNewSeverActivity_Reward[3302794]["LogStep"] = "5[4]"
	tNewSeverActivity_Reward[3302794]["RewardStrengthValue"] = {} 
	tNewSeverActivity_Reward[3302794]["RewardStrengthValue"]["Value"] =100
	tNewSeverActivity_Reward[3302794]["DeleteItem"] = {}
	tNewSeverActivity_Reward[3302794]["DeleteItem"][1] = {}
	tNewSeverActivity_Reward[3302794]["DeleteItem"][1]["Id"] = 3302794
	tNewSeverActivity_Reward[3302794]["RewardEffect"] = {}
	tNewSeverActivity_Reward[3302794]["RewardEffect"]["SzObj"] = "self"
	tNewSeverActivity_Reward[3302794]["RewardEffect"]["Effect"] = "angelwing"
	
	--400气力值
	tNewSeverActivity_Reward[3302795] = {}
	tNewSeverActivity_Reward[3302795]["LogId"] = 12000686
	tNewSeverActivity_Reward[3302795]["LogStep"] = "5[5]"
	tNewSeverActivity_Reward[3302795]["RewardStrengthValue"] = {} 
	tNewSeverActivity_Reward[3302795]["RewardStrengthValue"]["Value"] =400
	tNewSeverActivity_Reward[3302795]["DeleteItem"] = {}
	tNewSeverActivity_Reward[3302795]["DeleteItem"][1] = {}
	tNewSeverActivity_Reward[3302795]["DeleteItem"][1]["Id"] = 3302795
	tNewSeverActivity_Reward[3302795]["RewardEffect"] = {}
	tNewSeverActivity_Reward[3302795]["RewardEffect"]["SzObj"] = "self"
	tNewSeverActivity_Reward[3302795]["RewardEffect"]["Effect"] = "angelwing"
	
	--500气力值
	tNewSeverActivity_Reward[3302796] = {}
	tNewSeverActivity_Reward[3302796]["LogId"] = 12000686
	tNewSeverActivity_Reward[3302796]["LogStep"] = "5[6]"
	tNewSeverActivity_Reward[3302796]["RewardStrengthValue"] = {} 
	tNewSeverActivity_Reward[3302796]["RewardStrengthValue"]["Value"] =500
	tNewSeverActivity_Reward[3302796]["DeleteItem"] = {}
	tNewSeverActivity_Reward[3302796]["DeleteItem"][1] = {}
	tNewSeverActivity_Reward[3302796]["DeleteItem"][1]["Id"] = 3302796
	tNewSeverActivity_Reward[3302796]["RewardEffect"] = {}
	tNewSeverActivity_Reward[3302796]["RewardEffect"]["SzObj"] = "self"
	tNewSeverActivity_Reward[3302796]["RewardEffect"]["Effect"] = "angelwing"
	
	--800气力值
	tNewSeverActivity_Reward[3302797] = {}
	tNewSeverActivity_Reward[3302797]["LogId"] = 12000686
	tNewSeverActivity_Reward[3302797]["LogStep"] = "5[7]"
	tNewSeverActivity_Reward[3302797]["RewardStrengthValue"] = {} 
	tNewSeverActivity_Reward[3302797]["RewardStrengthValue"]["Value"] =800
	tNewSeverActivity_Reward[3302797]["DeleteItem"] = {}
	tNewSeverActivity_Reward[3302797]["DeleteItem"][1] = {}
	tNewSeverActivity_Reward[3302797]["DeleteItem"][1]["Id"] = 3302797
	tNewSeverActivity_Reward[3302797]["RewardEffect"] = {}
	tNewSeverActivity_Reward[3302797]["RewardEffect"]["SzObj"] = "self"
	tNewSeverActivity_Reward[3302797]["RewardEffect"]["Effect"] = "angelwing"
	
--log	
	tNewSeverActivity_Log = {}
	tNewSeverActivity_Log[3302781] ="0,0,3302781,1,12000686,2,%d,%d"
------------------------逻辑----------------------------------
--打开可选礼包
function tNewSeverActivity_ChooseOpen(nItemId,nChoose,nIndex)
	 RewardTemplate_UseItemAndMsg(tNewSeverActivity_Reward[nItemId][nChoose][nIndex])
end

--矿洞礼包合成和决战冥城  每周额外产出部分
function tNewSeverActivity_GetAward(nIndex) --1:矿洞礼包合成 2:决战冥城
-- 新服活动周给新产出
	if not NewServerWeeks_ChkNewService() then
		return
	end
	--判断第一周时间
	if Sys_ChkFullTime(NewServerWeeks_GetActTime(1)) then
		RewardTemplate_UseItemAndMsg(tNewSeverActivity_Ward[nIndex][1])
	end
	--判断第二周时间
		if Sys_ChkFullTime(NewServerWeeks_GetActTime(2)) then
		RewardTemplate_UseItemAndMsg(tNewSeverActivity_Ward[nIndex][2])
	end
	--判断第三周时间
		if Sys_ChkFullTime(NewServerWeeks_GetActTime(3)) then
		RewardTemplate_UseItemAndMsg(tNewSeverActivity_Ward[nIndex][3])
	end
	--判断第四周时间
		if Sys_ChkFullTime(NewServerWeeks_GetActTime(4)) then
		RewardTemplate_UseItemAndMsg(tNewSeverActivity_Ward[nIndex][4])
	end
end

--新服经验礼盒打开
function tNewSeverActivity_Open(nItemId,nEvent,nType)
	local nData = Get_UserStatisticValue(nEvent,nType)
	--第三次后再打开
	if nData == tNewSeverActivity_Stc["StcValue"] then
		--未隔天
		if not Task_StcInterval(nEvent,nType,1,4) then
			User_TalkChannel2005(tNewSeverActivity_Text["HaveReceive"])
			return
		end
		Task_SetStatistic(nEvent,nType,0,1)
	end
	--隔天
	RewardTemplate_UseItemAndMsg(tNewSeverActivity_Reward[nItemId])
end

-- 矿洞冒险需要背包空间
function tNewSeverActivity_GetActSpace(nAct,nWeek)
	return tNewSeverActivity_Ward[nAct][nWeek]["NeedSpace"]
end


-----------------------------------物品部分-------------------------------------------
----飞升丹
tItem[3302781] = tItem[3302781] or {}
tItem[3302781]["Function"] = function(nItemId,sItemName)
	if Get_UserLevel() < 130 then 
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then 
			User_AddLevel(1)
			local sLog = string.format(tNewSeverActivity_Log[nItemId],Get_UserLevel()-1,Get_UserLevel())
			Sys_SaveActionFestivalLog(sLog)
			User_EffectAdd(tNewSeverActivity_Reward[nItemId][1]["RewardEffect"]["SzObj"],tNewSeverActivity_Reward[nItemId][1]["RewardEffect"]["Effect"])
		end 	
	else 
		RewardTemplate_UseItemAndMsg(tNewSeverActivity_Reward[3302781][2])
	end 
end

--经验礼盒
tItem[3302782] = tItem[3302782] or {}
tItem[3302782]["Function"] = function(nItemId,nEvent,nType)
	tNewSeverActivity_Open(3302782,157,81)
end

--龙珠礼包
tItem[3302783] = tItem[3302783] or {}
tItem[3302783]["DialogueText"] =tNewSeverActivity_Text[3302783]
tItem[3302783]["Text1-1"] = {111}
tItem[3302783]["tOption1-1"] = {1,2}
tItem[3302783]["OptionFunc1"] = "tNewSeverActivity_ChooseOpen</N>3302783</N>1</N>1"
tItem[3302783]["OptionFunc2"] = "tNewSeverActivity_ChooseOpen</N>3302783</N>2</N>1"

--流星卷礼包
tItem[3302784] = tItem[3302784] or {}
tItem[3302784]["DialogueText"] =tNewSeverActivity_Text[3302784]
tItem[3302784]["Text1-1"] = {111}
tItem[3302784]["tOption1-1"] = {1,2}
tItem[3302784]["OptionFunc1"] = "tNewSeverActivity_ChooseOpen</N>3302784</N>1</N>1"
tItem[3302784]["OptionFunc2"] = "tNewSeverActivity_ChooseOpen</N>3302784</N>2</N>1"

--优质宝石礼包
tItem[3302785] = tItem[3302785] or {}
tItem[3302785]["DialogueText"] =tNewSeverActivity_Text[3302785]
tItem[3302785]["Text1-1"] = {111}
tItem[3302785]["tOption1-1"] = {1,2}
tItem[3302785]["OptionFunc2"] = "tNewSeverActivity_ChooseOpen</N>3302785</N>2</N>1"
tItem[3302785]["OptionPoint1"] = "2-1"
tItem[3302785]["Text2-1"] = {211}
tItem[3302785]["tOption2-1"] = {3,4,5,6,7,8,9}
tItem[3302785]["OptionFunc3"] = "tNewSeverActivity_ChooseOpen</N>3302785</N>1</N>1"
tItem[3302785]["OptionFunc4"] = "tNewSeverActivity_ChooseOpen</N>3302785</N>1</N>2"
tItem[3302785]["OptionFunc5"] = "tNewSeverActivity_ChooseOpen</N>3302785</N>1</N>3"
tItem[3302785]["OptionFunc6"] = "tNewSeverActivity_ChooseOpen</N>3302785</N>1</N>4"
tItem[3302785]["OptionFunc7"] = "tNewSeverActivity_ChooseOpen</N>3302785</N>1</N>5"
tItem[3302785]["OptionFunc8"] = "tNewSeverActivity_ChooseOpen</N>3302785</N>1</N>6"
tItem[3302785]["OptionFunc9"] = "tNewSeverActivity_ChooseOpen</N>3302785</N>1</N>7"


--金刚坚钻礼包
tItem[3302786] = tItem[3302786] or {}
tItem[3302786]["DialogueText"] =tNewSeverActivity_Text[3302786]
tItem[3302786]["Text1-1"] = {111}
tItem[3302786]["tOption1-1"] = {1,2,3}
tItem[3302786]["OptionFunc1"] = "tNewSeverActivity_ChooseOpen</N>3302786</N>1</N>1"
tItem[3302786]["OptionFunc2"] = "tNewSeverActivity_ChooseOpen</N>3302786</N>2</N>1"

--10气力值礼包
tItem[3302791] = tItem[3302791] or {}
tItem[3302791]["Function"] = function(nItemId,sItemName)
	--大于8000 使用失败
	if Get_UserStrengthValue() >= 8000 then 
		Sys_MsgBox(tNewSeverActivity_Text["FullStrength"])
		return
	end
	RewardTemplate_UseItemAndMsg(tNewSeverActivity_Reward[nItemId])
end
-- 20气力值礼包
tItem[3302792] = tItem[3302791]
-- 50气力值礼包
tItem[3302793] = tItem[3302791]
-- 100气力值礼包
tItem[3302794] = tItem[3302791]
-- 400气力值礼包
tItem[3302795] = tItem[3302791]
-- 500气力值礼包
tItem[3302796] = tItem[3302791]
-- 800气力值礼包
tItem[3302797] = tItem[3302791]

--背包信
tItemFace[3302780] = 495
--流星卷礼券
tItemFace[3302787] = 496
--龙珠礼券
tItemFace[3302788] = 497
--优质宝石礼券
tItemFace[3302789] = 498
--金钢坚钻礼券
tItemFace[3302790] = 499
--龙珠新服包
tItemFace[3302783] = 500
--流星卷新服包
tItemFace[3302784] = 501
--优质宝石新服包
tItemFace[3302785] = 502
--金钢坚钻新服包
tItemFace[3302786] = 503

