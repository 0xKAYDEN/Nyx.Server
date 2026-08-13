------------------------------------------------------------------------------------
--Name:		180528[英文征服][活动脚本]6月以旧换新活动制作
--Purpose:	6月以旧换新活动制作
--Creator: 	傅伟龙
--Created:	2018/05/28
------------------------------------------------------------------------------------
-- 前缀OldForNewServiceAct_

-- logid：10002434

--掩码
-- 177 48 9朵郁金香/玫瑰/百合/兰花                      上交次数
-- 177 53 99朵郁金香/玫瑰/百合/兰花                     上交次数
-- 177 54 被偷走的马鞍20个                              上交次数
-- 177 55 1封情书                                       上交次数
-- 177 56 1个记忆宝珠                                   上交次数
-- 177 57 清心符                                        上交次数
-- 177 58 破城火雷                                      上交次数
-- 177 59 普通金鳞/青虹/惊鸿/龙恨/凤鸣/紫霞/明月5个     上交次数
-- 177 60 普通的天怒/地灵宝石                           上交次数
-- 177 61 上交500W金币                                  上交次数
-- 177 62 龙珠                                          上交次数

------------------------------------------------------------------------------------

local tOldForNewServiceAct_Cont = {}
--活动时间
tOldForNewServiceAct_Cont["BefTime"] = tActivityTime["OldForNewServiceAct"]["BefTime"]
tOldForNewServiceAct_Cont["ActTime"] = tActivityTime["OldForNewServiceAct"]["ActTime"]



tOldForNewServiceAct_Cont["Money"] = 5000000

local tOldForNewServiceAct_position ={}
tOldForNewServiceAct_position["NpcId"] = 22975
tOldForNewServiceAct_position["MapId"] = 1002
tOldForNewServiceAct_position["PosX"] = 376
tOldForNewServiceAct_position["PosY"] = 436

--掩码
local tOldForNewServiceAct_Stc = {}

tOldForNewServiceAct_Stc[1080001] = {}
tOldForNewServiceAct_Stc[1080001]["EventType"] = 177
tOldForNewServiceAct_Stc[1080001]["DataType"] = 48
tOldForNewServiceAct_Stc[1080001]["Data"] = 10


tOldForNewServiceAct_Stc[3302769] = {}
tOldForNewServiceAct_Stc[3302769]["EventType"] = 177
tOldForNewServiceAct_Stc[3302769]["DataType"] = 49
tOldForNewServiceAct_Stc[3302769]["Data"] = 10


tOldForNewServiceAct_Stc[751001] = {}
tOldForNewServiceAct_Stc[751001]["EventType"] = 177
tOldForNewServiceAct_Stc[751001]["DataType"] = 50
tOldForNewServiceAct_Stc[751001]["Data"] = 10


tOldForNewServiceAct_Stc[752001] = {}
tOldForNewServiceAct_Stc[752001]["EventType"] = 177
tOldForNewServiceAct_Stc[752001]["DataType"] = 50
tOldForNewServiceAct_Stc[752001]["Data"] = 10


tOldForNewServiceAct_Stc[753001] = {}
tOldForNewServiceAct_Stc[753001]["EventType"] = 177
tOldForNewServiceAct_Stc[753001]["DataType"] = 50
tOldForNewServiceAct_Stc[753001]["Data"] = 10


tOldForNewServiceAct_Stc[754001] = {}
tOldForNewServiceAct_Stc[754001]["EventType"] = 177
tOldForNewServiceAct_Stc[754001]["DataType"] = 50
tOldForNewServiceAct_Stc[754001]["Data"] = 10


tOldForNewServiceAct_Stc[751003] = {}
tOldForNewServiceAct_Stc[751003]["EventType"] = 177
tOldForNewServiceAct_Stc[751003]["DataType"] = 51
tOldForNewServiceAct_Stc[751003]["Data"] = 10


tOldForNewServiceAct_Stc[752003] = {}
tOldForNewServiceAct_Stc[752003]["EventType"] = 177
tOldForNewServiceAct_Stc[752003]["DataType"] = 51
tOldForNewServiceAct_Stc[752003]["Data"] = 10

tOldForNewServiceAct_Stc[753003] = {}
tOldForNewServiceAct_Stc[753003]["EventType"] = 177
tOldForNewServiceAct_Stc[753003]["DataType"] = 51
tOldForNewServiceAct_Stc[753003]["Data"] = 10

tOldForNewServiceAct_Stc[754003] = {}
tOldForNewServiceAct_Stc[754003]["EventType"] = 177
tOldForNewServiceAct_Stc[754003]["DataType"] = 51
tOldForNewServiceAct_Stc[754003]["Data"] = 10

tOldForNewServiceAct_Stc[751009] = {}
tOldForNewServiceAct_Stc[751009]["EventType"] = 177
tOldForNewServiceAct_Stc[751009]["DataType"] = 52
tOldForNewServiceAct_Stc[751009]["Data"] = 10

tOldForNewServiceAct_Stc[752009] = {}
tOldForNewServiceAct_Stc[752009]["EventType"] = 177
tOldForNewServiceAct_Stc[752009]["DataType"] = 52
tOldForNewServiceAct_Stc[752009]["Data"] = 10

tOldForNewServiceAct_Stc[753009] = {}
tOldForNewServiceAct_Stc[753009]["EventType"] = 177
tOldForNewServiceAct_Stc[753009]["DataType"] = 52
tOldForNewServiceAct_Stc[753009]["Data"] = 10

tOldForNewServiceAct_Stc[754009] = {}
tOldForNewServiceAct_Stc[754009]["EventType"] = 177
tOldForNewServiceAct_Stc[754009]["DataType"] = 52
tOldForNewServiceAct_Stc[754009]["Data"] = 10

tOldForNewServiceAct_Stc[751099] = {}
tOldForNewServiceAct_Stc[751099]["EventType"] = 177
tOldForNewServiceAct_Stc[751099]["DataType"] = 53
tOldForNewServiceAct_Stc[751099]["Data"] = 10

tOldForNewServiceAct_Stc[752099] = {}
tOldForNewServiceAct_Stc[752099]["EventType"] = 177
tOldForNewServiceAct_Stc[752099]["DataType"] = 53
tOldForNewServiceAct_Stc[752099]["Data"] = 10

tOldForNewServiceAct_Stc[753099] = {}
tOldForNewServiceAct_Stc[753099]["EventType"] = 177
tOldForNewServiceAct_Stc[753099]["DataType"] = 53
tOldForNewServiceAct_Stc[753099]["Data"] = 10

tOldForNewServiceAct_Stc[754099] = {}
tOldForNewServiceAct_Stc[754099]["EventType"] = 177
tOldForNewServiceAct_Stc[754099]["DataType"] = 53
tOldForNewServiceAct_Stc[754099]["Data"] = 10

tOldForNewServiceAct_Stc[723903] = {}
tOldForNewServiceAct_Stc[723903]["EventType"] = 177
tOldForNewServiceAct_Stc[723903]["DataType"] = 54
tOldForNewServiceAct_Stc[723903]["Data"] = 10

tOldForNewServiceAct_Stc[756001] = {}
tOldForNewServiceAct_Stc[756001]["EventType"] = 177
tOldForNewServiceAct_Stc[756001]["DataType"] = 55
tOldForNewServiceAct_Stc[756001]["Data"] = 10

tOldForNewServiceAct_Stc[720828] = {}
tOldForNewServiceAct_Stc[720828]["EventType"] = 177
tOldForNewServiceAct_Stc[720828]["DataType"] = 56
tOldForNewServiceAct_Stc[720828]["Data"] = 10

tOldForNewServiceAct_Stc[723727] = {}
tOldForNewServiceAct_Stc[723727]["EventType"] = 177
tOldForNewServiceAct_Stc[723727]["DataType"] = 57
tOldForNewServiceAct_Stc[723727]["Data"] = 10

tOldForNewServiceAct_Stc[721261] = {}
tOldForNewServiceAct_Stc[721261]["EventType"] = 177
tOldForNewServiceAct_Stc[721261]["DataType"] = 58
tOldForNewServiceAct_Stc[721261]["Data"] = 10

tOldForNewServiceAct_Stc[700001] = {}
tOldForNewServiceAct_Stc[700001]["EventType"] = 177
tOldForNewServiceAct_Stc[700001]["DataType"] = 59
tOldForNewServiceAct_Stc[700001]["Data"] = 20

tOldForNewServiceAct_Stc[700011] = {}
tOldForNewServiceAct_Stc[700011]["EventType"] = 177
tOldForNewServiceAct_Stc[700011]["DataType"] = 59
tOldForNewServiceAct_Stc[700011]["Data"] = 20

tOldForNewServiceAct_Stc[700021] = {}
tOldForNewServiceAct_Stc[700021]["EventType"] = 177
tOldForNewServiceAct_Stc[700021]["DataType"] = 59
tOldForNewServiceAct_Stc[700021]["Data"] = 20

tOldForNewServiceAct_Stc[700031] = {}
tOldForNewServiceAct_Stc[700031]["EventType"] = 177
tOldForNewServiceAct_Stc[700031]["DataType"] = 59
tOldForNewServiceAct_Stc[700031]["Data"] = 20

tOldForNewServiceAct_Stc[700041] = {}
tOldForNewServiceAct_Stc[700041]["EventType"] = 177
tOldForNewServiceAct_Stc[700041]["DataType"] = 59
tOldForNewServiceAct_Stc[700041]["Data"] = 20

tOldForNewServiceAct_Stc[700051] = {}
tOldForNewServiceAct_Stc[700051]["EventType"] = 177
tOldForNewServiceAct_Stc[700051]["DataType"] = 59
tOldForNewServiceAct_Stc[700051]["Data"] = 20

tOldForNewServiceAct_Stc[700061] = {}
tOldForNewServiceAct_Stc[700061]["EventType"] = 177
tOldForNewServiceAct_Stc[700061]["DataType"] = 59
tOldForNewServiceAct_Stc[700061]["Data"] = 20

tOldForNewServiceAct_Stc[700101] = {}
tOldForNewServiceAct_Stc[700101]["EventType"] = 177
tOldForNewServiceAct_Stc[700101]["DataType"] = 60
tOldForNewServiceAct_Stc[700101]["Data"] = 10

tOldForNewServiceAct_Stc[700121] = {}
tOldForNewServiceAct_Stc[700121]["EventType"] = 177
tOldForNewServiceAct_Stc[700121]["DataType"] = 60
tOldForNewServiceAct_Stc[700121]["Data"] = 10

tOldForNewServiceAct_Stc[1088000] = {}
tOldForNewServiceAct_Stc[1088000]["EventType"] = 177
tOldForNewServiceAct_Stc[1088000]["DataType"] = 61
tOldForNewServiceAct_Stc[1088000]["Data"] = 10

tOldForNewServiceAct_Stc[5000000] = {}
tOldForNewServiceAct_Stc[5000000]["EventType"] = 177
tOldForNewServiceAct_Stc[5000000]["DataType"] = 62
tOldForNewServiceAct_Stc[5000000]["Data"] = 50
-- 兑换数量
tOldForNewServiceAct_Cont["ItemNum"] = {}
tOldForNewServiceAct_Cont["ItemNum"][1080001] = 1
tOldForNewServiceAct_Cont["ItemNum"][3302769] = 5
tOldForNewServiceAct_Cont["ItemNum"][754001] = 1
tOldForNewServiceAct_Cont["ItemNum"][751001] = 1
tOldForNewServiceAct_Cont["ItemNum"][752001] = 1
tOldForNewServiceAct_Cont["ItemNum"][753001] = 1
tOldForNewServiceAct_Cont["ItemNum"][754003] = 3
tOldForNewServiceAct_Cont["ItemNum"][751003] = 3
tOldForNewServiceAct_Cont["ItemNum"][752003] = 3
tOldForNewServiceAct_Cont["ItemNum"][753003] = 3
tOldForNewServiceAct_Cont["ItemNum"][754009] = 9
tOldForNewServiceAct_Cont["ItemNum"][751009] = 9
tOldForNewServiceAct_Cont["ItemNum"][752009] = 9
tOldForNewServiceAct_Cont["ItemNum"][753009] = 9
tOldForNewServiceAct_Cont["ItemNum"][754099] = 25
tOldForNewServiceAct_Cont["ItemNum"][751099] = 25
tOldForNewServiceAct_Cont["ItemNum"][752099] = 25
tOldForNewServiceAct_Cont["ItemNum"][753099] = 25
tOldForNewServiceAct_Cont["ItemNum"][723903] = 1
tOldForNewServiceAct_Cont["ItemNum"][756001] = 1
tOldForNewServiceAct_Cont["ItemNum"][720828] = 1
tOldForNewServiceAct_Cont["ItemNum"][723727] = 2
tOldForNewServiceAct_Cont["ItemNum"][721261] = 1
tOldForNewServiceAct_Cont["ItemNum"][700001] = 1
tOldForNewServiceAct_Cont["ItemNum"][700011] = 1
tOldForNewServiceAct_Cont["ItemNum"][700021] = 1
tOldForNewServiceAct_Cont["ItemNum"][700031] = 1
tOldForNewServiceAct_Cont["ItemNum"][700041] = 1
tOldForNewServiceAct_Cont["ItemNum"][700051] = 1
tOldForNewServiceAct_Cont["ItemNum"][700061] = 1
tOldForNewServiceAct_Cont["ItemNum"][700101] = 2
tOldForNewServiceAct_Cont["ItemNum"][700121] = 2
tOldForNewServiceAct_Cont["ItemNum"][1088000] = 30
--上交5000000金币
tOldForNewServiceAct_Cont["ItemNum"][5000000] = 50

-- 选项赋值
tOldForNewServiceAct_Cont["Option"] = {}
tOldForNewServiceAct_Cont["Option"][1080001] = 137 
tOldForNewServiceAct_Cont["Option"][3302769] = 138  
tOldForNewServiceAct_Cont["Option"][754001] = 131  
tOldForNewServiceAct_Cont["Option"][751001] = 131  
tOldForNewServiceAct_Cont["Option"][752001] = 131  
tOldForNewServiceAct_Cont["Option"][753001] = 131  
tOldForNewServiceAct_Cont["Option"][754003] = 132  
tOldForNewServiceAct_Cont["Option"][751003] = 132  
tOldForNewServiceAct_Cont["Option"][752003] = 132  
tOldForNewServiceAct_Cont["Option"][753003] = 132  
tOldForNewServiceAct_Cont["Option"][754009] = 133  
tOldForNewServiceAct_Cont["Option"][751009] = 133  
tOldForNewServiceAct_Cont["Option"][752009] = 133  
tOldForNewServiceAct_Cont["Option"][753009] = 133  
tOldForNewServiceAct_Cont["Option"][754099] = 134  
tOldForNewServiceAct_Cont["Option"][751099] = 134  
tOldForNewServiceAct_Cont["Option"][752099] = 134  
tOldForNewServiceAct_Cont["Option"][753099] = 134  
tOldForNewServiceAct_Cont["Option"][723903] = 139  
tOldForNewServiceAct_Cont["Option"][756001] = 1310  
tOldForNewServiceAct_Cont["Option"][720828] = 1311  
tOldForNewServiceAct_Cont["Option"][723727] = 1312  
tOldForNewServiceAct_Cont["Option"][721261] = 1313  
tOldForNewServiceAct_Cont["Option"][700001] = 136  
tOldForNewServiceAct_Cont["Option"][700011] = 136  
tOldForNewServiceAct_Cont["Option"][700021] = 136  
tOldForNewServiceAct_Cont["Option"][700031] = 136  
tOldForNewServiceAct_Cont["Option"][700041] = 136  
tOldForNewServiceAct_Cont["Option"][700051] = 136  
tOldForNewServiceAct_Cont["Option"][700061] = 136  
tOldForNewServiceAct_Cont["Option"][700101] = 135  
tOldForNewServiceAct_Cont["Option"][700121] = 135  
tOldForNewServiceAct_Cont["Option"][1088000] = 1315  
tOldForNewServiceAct_Cont["Option"][5000000] = 1314   

local tOldForNewServiceAct_RewandItem = {}
	
	--
	tOldForNewServiceAct_RewandItem[3309112]={}
	tOldForNewServiceAct_RewandItem[3309112][1]={}
	tOldForNewServiceAct_RewandItem[3309112][1]["LogId"] = 10002434
	tOldForNewServiceAct_RewandItem[3309112][1]["DeleteItem"] = {}
	tOldForNewServiceAct_RewandItem[3309112][1]["DeleteItem"][1] = {}
	tOldForNewServiceAct_RewandItem[3309112][1]["DeleteItem"][1]["Id"] = 3309112
	tOldForNewServiceAct_RewandItem[3309112][1]["RewardNoNeedTip"] = 1 
	tOldForNewServiceAct_RewandItem[3309112][1]["RewardStrengthValue"] = {}
	tOldForNewServiceAct_RewandItem[3309112][1]["RewardStrengthValue"]["Value"] = 5
	tOldForNewServiceAct_RewandItem[3309112][1]["RewardEffect"] = {}
	tOldForNewServiceAct_RewandItem[3309112][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	
	--+1赤炼石（赠）*1礼包
	tOldForNewServiceAct_RewandItem[3309117]={}
	tOldForNewServiceAct_RewandItem[3309117][1]={}
	tOldForNewServiceAct_RewandItem[3309117][1]["LogId"] = 10002434
	tOldForNewServiceAct_RewandItem[3309117][1]["DeleteItem"] = {}
	tOldForNewServiceAct_RewandItem[3309117][1]["DeleteItem"][1] = {}
	tOldForNewServiceAct_RewandItem[3309117][1]["DeleteItem"][1]["Id"] = 3309117
	tOldForNewServiceAct_RewandItem[3309117][1]["RewardItem"] = {}
	tOldForNewServiceAct_RewandItem[3309117][1]["RewardItem"][1] = {}
	tOldForNewServiceAct_RewandItem[3309117][1]["RewardItem"][1]["Id"] = 730001
	tOldForNewServiceAct_RewandItem[3309117][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tOldForNewServiceAct_RewandItem[3309117][1]["RewardEffect"] = {}
	tOldForNewServiceAct_RewandItem[3309117][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	--+1赤炼石（赠）*2礼包
	tOldForNewServiceAct_RewandItem[3309118]={}
	tOldForNewServiceAct_RewandItem[3309118][1]={}
	tOldForNewServiceAct_RewandItem[3309118][1]["LogId"] = 10002434
	tOldForNewServiceAct_RewandItem[3309118][1]["DeleteItem"] = {}
	tOldForNewServiceAct_RewandItem[3309118][1]["DeleteItem"][1] = {}
	tOldForNewServiceAct_RewandItem[3309118][1]["DeleteItem"][1]["Id"] = 3309118
	tOldForNewServiceAct_RewandItem[3309118][1]["RewardItem"] = {}
	tOldForNewServiceAct_RewandItem[3309118][1]["RewardItem"][1] = {}
	tOldForNewServiceAct_RewandItem[3309118][1]["RewardItem"][1]["Id"] = 730001
	tOldForNewServiceAct_RewandItem[3309118][1]["RewardItem"][1]["Attr"] = "0 2 3"
	tOldForNewServiceAct_RewandItem[3309118][1]["RewardEffect"] = {}
	tOldForNewServiceAct_RewandItem[3309118][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	--+1赤炼石（赠）*3礼包
	tOldForNewServiceAct_RewandItem[3309119]={}
	tOldForNewServiceAct_RewandItem[3309119][1]={}
	tOldForNewServiceAct_RewandItem[3309119][1]["LogId"] = 10002434
	tOldForNewServiceAct_RewandItem[3309119][1]["DeleteItem"] = {}
	tOldForNewServiceAct_RewandItem[3309119][1]["DeleteItem"][1] = {}
	tOldForNewServiceAct_RewandItem[3309119][1]["DeleteItem"][1]["Id"] = 3309119
	tOldForNewServiceAct_RewandItem[3309119][1]["RewardItem"] = {}
	tOldForNewServiceAct_RewandItem[3309119][1]["RewardItem"][1] = {}
	tOldForNewServiceAct_RewandItem[3309119][1]["RewardItem"][1]["Id"] = 730001
	tOldForNewServiceAct_RewandItem[3309119][1]["RewardItem"][1]["Attr"] = "0 3 3"
	tOldForNewServiceAct_RewandItem[3309119][1]["RewardEffect"] = {}
	tOldForNewServiceAct_RewandItem[3309119][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	
	--+1赤炼石（赠）*4礼包
	tOldForNewServiceAct_RewandItem[3309120]={}
	tOldForNewServiceAct_RewandItem[3309120][1]={}
	tOldForNewServiceAct_RewandItem[3309120][1]["LogId"] = 10002434
	tOldForNewServiceAct_RewandItem[3309120][1]["DeleteItem"] = {}
	tOldForNewServiceAct_RewandItem[3309120][1]["DeleteItem"][1] = {}
	tOldForNewServiceAct_RewandItem[3309120][1]["DeleteItem"][1]["Id"] = 3309120
	tOldForNewServiceAct_RewandItem[3309120][1]["RewardItem"] = {}
	tOldForNewServiceAct_RewandItem[3309120][1]["RewardItem"][1] = {}
	tOldForNewServiceAct_RewandItem[3309120][1]["RewardItem"][1]["Id"] = 730001
	tOldForNewServiceAct_RewandItem[3309120][1]["RewardItem"][1]["Attr"] = "0 4 3"
	tOldForNewServiceAct_RewandItem[3309120][1]["RewardEffect"] = {}
	tOldForNewServiceAct_RewandItem[3309120][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	--+1赤炼石（赠）*5礼包
	tOldForNewServiceAct_RewandItem[3309121]={}
	tOldForNewServiceAct_RewandItem[3309121][1]={}
	tOldForNewServiceAct_RewandItem[3309121][1]["LogId"] = 10002434
	tOldForNewServiceAct_RewandItem[3309121][1]["DeleteItem"] = {}
	tOldForNewServiceAct_RewandItem[3309121][1]["DeleteItem"][1] = {}
	tOldForNewServiceAct_RewandItem[3309121][1]["DeleteItem"][1]["Id"] = 3309121
	tOldForNewServiceAct_RewandItem[3309121][1]["RewardItem"] = {}
	tOldForNewServiceAct_RewandItem[3309121][1]["RewardItem"][1] = {}
	tOldForNewServiceAct_RewandItem[3309121][1]["RewardItem"][1]["Id"] = 730001
	tOldForNewServiceAct_RewandItem[3309121][1]["RewardItem"][1]["Attr"] = "0 5 3"
	tOldForNewServiceAct_RewandItem[3309121][1]["RewardEffect"] = {}
	tOldForNewServiceAct_RewandItem[3309121][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	--+1赤炼石（赠）*6礼包
	tOldForNewServiceAct_RewandItem[3309122]={}
	tOldForNewServiceAct_RewandItem[3309122][1]={}
	tOldForNewServiceAct_RewandItem[3309122][1]["LogId"] = 10002434
	tOldForNewServiceAct_RewandItem[3309122][1]["DeleteItem"] = {}
	tOldForNewServiceAct_RewandItem[3309122][1]["DeleteItem"][1] = {}
	tOldForNewServiceAct_RewandItem[3309122][1]["DeleteItem"][1]["Id"] = 3309122
	tOldForNewServiceAct_RewandItem[3309122][1]["RewardItem"] = {}
	tOldForNewServiceAct_RewandItem[3309122][1]["RewardItem"][1] = {}
	tOldForNewServiceAct_RewandItem[3309122][1]["RewardItem"][1]["Id"] = 730001
	tOldForNewServiceAct_RewandItem[3309122][1]["RewardItem"][1]["Attr"] = "0 6 3"
	tOldForNewServiceAct_RewandItem[3309122][1]["RewardEffect"] = {}
	tOldForNewServiceAct_RewandItem[3309122][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	--+5赤炼石（赠）*1礼包
	tOldForNewServiceAct_RewandItem[3309123]={}
	tOldForNewServiceAct_RewandItem[3309123][1]={}
	tOldForNewServiceAct_RewandItem[3309123][1]["LogId"] = 10002434
	tOldForNewServiceAct_RewandItem[3309123][1]["DeleteItem"] = {}
	tOldForNewServiceAct_RewandItem[3309123][1]["DeleteItem"][1] = {}
	tOldForNewServiceAct_RewandItem[3309123][1]["DeleteItem"][1]["Id"] = 3309123
	tOldForNewServiceAct_RewandItem[3309123][1]["RewardItem"] = {}
	tOldForNewServiceAct_RewandItem[3309123][1]["RewardItem"][1] = {}
	tOldForNewServiceAct_RewandItem[3309123][1]["RewardItem"][1]["Id"] = 730005
	tOldForNewServiceAct_RewandItem[3309123][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tOldForNewServiceAct_RewandItem[3309123][1]["RewardEffect"] = {}
	tOldForNewServiceAct_RewandItem[3309123][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	--+6赤炼石（赠）*1礼包
	tOldForNewServiceAct_RewandItem[3309124]={}
	tOldForNewServiceAct_RewandItem[3309124][1]={}
	tOldForNewServiceAct_RewandItem[3309124][1]["LogId"] = 10002434
	tOldForNewServiceAct_RewandItem[3309124][1]["DeleteItem"] = {}
	tOldForNewServiceAct_RewandItem[3309124][1]["DeleteItem"][1] = {}
	tOldForNewServiceAct_RewandItem[3309124][1]["DeleteItem"][1]["Id"] = 3309124
	tOldForNewServiceAct_RewandItem[3309124][1]["RewardItem"] = {}
	tOldForNewServiceAct_RewandItem[3309124][1]["RewardItem"][1] = {}
	tOldForNewServiceAct_RewandItem[3309124][1]["RewardItem"][1]["Id"] = 730006
	tOldForNewServiceAct_RewandItem[3309124][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tOldForNewServiceAct_RewandItem[3309124][1]["RewardEffect"] = {}
	tOldForNewServiceAct_RewandItem[3309124][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	
	--微光星陨石*3礼包
	tOldForNewServiceAct_RewandItem[3309125]={}
	tOldForNewServiceAct_RewandItem[3309125][1]={}
	tOldForNewServiceAct_RewandItem[3309125][1]["LogId"] = 10002434
	tOldForNewServiceAct_RewandItem[3309125][1]["DeleteItem"] = {}
	tOldForNewServiceAct_RewandItem[3309125][1]["DeleteItem"][1] = {}
	tOldForNewServiceAct_RewandItem[3309125][1]["DeleteItem"][1]["Id"] = 3309125
	tOldForNewServiceAct_RewandItem[3309125][1]["RewardItem"] = {}
	tOldForNewServiceAct_RewandItem[3309125][1]["RewardItem"][1] = {}
	tOldForNewServiceAct_RewandItem[3309125][1]["RewardItem"][1]["Id"] = 3009000
	tOldForNewServiceAct_RewandItem[3309125][1]["RewardItem"][1]["Attr"] = "0 3"
	tOldForNewServiceAct_RewandItem[3309125][1]["RewardEffect"] = {}
	tOldForNewServiceAct_RewandItem[3309125][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	--微光星陨石*5礼包
	tOldForNewServiceAct_RewandItem[3309126]={}
	tOldForNewServiceAct_RewandItem[3309126][1]={}
	tOldForNewServiceAct_RewandItem[3309126][1]["LogId"] = 10002434
	tOldForNewServiceAct_RewandItem[3309126][1]["DeleteItem"] = {}
	tOldForNewServiceAct_RewandItem[3309126][1]["DeleteItem"][1] = {}
	tOldForNewServiceAct_RewandItem[3309126][1]["DeleteItem"][1]["Id"] = 3309126
	tOldForNewServiceAct_RewandItem[3309126][1]["RewardItem"] = {}
	tOldForNewServiceAct_RewandItem[3309126][1]["RewardItem"][1] = {}
	tOldForNewServiceAct_RewandItem[3309126][1]["RewardItem"][1]["Id"] = 3009000
	tOldForNewServiceAct_RewandItem[3309126][1]["RewardItem"][1]["Attr"] = "0 5"
	tOldForNewServiceAct_RewandItem[3309126][1]["RewardEffect"] = {}
	tOldForNewServiceAct_RewandItem[3309126][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	--微光星陨石*8礼包
	tOldForNewServiceAct_RewandItem[3309127]={}
	tOldForNewServiceAct_RewandItem[3309127][1]={}
	tOldForNewServiceAct_RewandItem[3309127][1]["LogId"] = 10002434
	tOldForNewServiceAct_RewandItem[3309127][1]["DeleteItem"] = {}
	tOldForNewServiceAct_RewandItem[3309127][1]["DeleteItem"][1] = {}
	tOldForNewServiceAct_RewandItem[3309127][1]["DeleteItem"][1]["Id"] = 3309127
	tOldForNewServiceAct_RewandItem[3309127][1]["RewardItem"] = {}
	tOldForNewServiceAct_RewandItem[3309127][1]["RewardItem"][1] = {}
	tOldForNewServiceAct_RewandItem[3309127][1]["RewardItem"][1]["Id"] = 3009000
	tOldForNewServiceAct_RewandItem[3309127][1]["RewardItem"][1]["Attr"] = "0 8"
	tOldForNewServiceAct_RewandItem[3309127][1]["RewardEffect"] = {}
	tOldForNewServiceAct_RewandItem[3309127][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	--明亮星陨石*1礼包
	tOldForNewServiceAct_RewandItem[3309128]={}
	tOldForNewServiceAct_RewandItem[3309128][1]={}
	tOldForNewServiceAct_RewandItem[3309128][1]["LogId"] = 10002434
	tOldForNewServiceAct_RewandItem[3309128][1]["DeleteItem"] = {}
	tOldForNewServiceAct_RewandItem[3309128][1]["DeleteItem"][1] = {}
	tOldForNewServiceAct_RewandItem[3309128][1]["DeleteItem"][1]["Id"] = 3309128
	tOldForNewServiceAct_RewandItem[3309128][1]["RewardItem"] = {}
	tOldForNewServiceAct_RewandItem[3309128][1]["RewardItem"][1] = {}
	tOldForNewServiceAct_RewandItem[3309128][1]["RewardItem"][1]["Id"] = 3009001
	tOldForNewServiceAct_RewandItem[3309128][1]["RewardItem"][1]["Attr"] = "0 1"
	tOldForNewServiceAct_RewandItem[3309128][1]["RewardEffect"] = {}
	tOldForNewServiceAct_RewandItem[3309128][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	--明亮星陨石*2礼包
	tOldForNewServiceAct_RewandItem[3309129]={}
	tOldForNewServiceAct_RewandItem[3309129][1]={}
	tOldForNewServiceAct_RewandItem[3309129][1]["LogId"] = 10002434
	tOldForNewServiceAct_RewandItem[3309129][1]["DeleteItem"] = {}
	tOldForNewServiceAct_RewandItem[3309129][1]["DeleteItem"][1] = {}
	tOldForNewServiceAct_RewandItem[3309129][1]["DeleteItem"][1]["Id"] = 3309129
	tOldForNewServiceAct_RewandItem[3309129][1]["RewardItem"] = {}
	tOldForNewServiceAct_RewandItem[3309129][1]["RewardItem"][1] = {}
	tOldForNewServiceAct_RewandItem[3309129][1]["RewardItem"][1]["Id"] = 3009001
	tOldForNewServiceAct_RewandItem[3309129][1]["RewardItem"][1]["Attr"] = "0 2"
	tOldForNewServiceAct_RewandItem[3309129][1]["RewardEffect"] = {}
	tOldForNewServiceAct_RewandItem[3309129][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	--明亮星陨石*3礼包
	tOldForNewServiceAct_RewandItem[3309130]={}
	tOldForNewServiceAct_RewandItem[3309130][1]={}
	tOldForNewServiceAct_RewandItem[3309130][1]["LogId"] = 10002434
	tOldForNewServiceAct_RewandItem[3309130][1]["DeleteItem"] = {}
	tOldForNewServiceAct_RewandItem[3309130][1]["DeleteItem"][1] = {}
	tOldForNewServiceAct_RewandItem[3309130][1]["DeleteItem"][1]["Id"] = 3309130
	tOldForNewServiceAct_RewandItem[3309130][1]["RewardItem"] = {}
	tOldForNewServiceAct_RewandItem[3309130][1]["RewardItem"][1] = {}
	tOldForNewServiceAct_RewandItem[3309130][1]["RewardItem"][1]["Id"] = 3009001
	tOldForNewServiceAct_RewandItem[3309130][1]["RewardItem"][1]["Attr"] = "0 3"
	tOldForNewServiceAct_RewandItem[3309130][1]["RewardEffect"] = {}
	tOldForNewServiceAct_RewandItem[3309130][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	--明亮星陨石*5礼包
	tOldForNewServiceAct_RewandItem[3309131]={}
	tOldForNewServiceAct_RewandItem[3309131][1]={}
	tOldForNewServiceAct_RewandItem[3309131][1]["LogId"] = 10002434
	tOldForNewServiceAct_RewandItem[3309131][1]["DeleteItem"] = {}
	tOldForNewServiceAct_RewandItem[3309131][1]["DeleteItem"][1] = {}
	tOldForNewServiceAct_RewandItem[3309131][1]["DeleteItem"][1]["Id"] = 3309131
	tOldForNewServiceAct_RewandItem[3309131][1]["RewardItem"] = {}
	tOldForNewServiceAct_RewandItem[3309131][1]["RewardItem"][1] = {}
	tOldForNewServiceAct_RewandItem[3309131][1]["RewardItem"][1]["Id"] = 3009001
	tOldForNewServiceAct_RewandItem[3309131][1]["RewardItem"][1]["Attr"] = "0 5"
	tOldForNewServiceAct_RewandItem[3309131][1]["RewardEffect"] = {}
	tOldForNewServiceAct_RewandItem[3309131][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	--晶莹星陨石*1礼包
	tOldForNewServiceAct_RewandItem[3309132]={}
	tOldForNewServiceAct_RewandItem[3309132][1]={}
	tOldForNewServiceAct_RewandItem[3309132][1]["LogId"] = 10002434
	tOldForNewServiceAct_RewandItem[3309132][1]["DeleteItem"] = {}
	tOldForNewServiceAct_RewandItem[3309132][1]["DeleteItem"][1] = {}
	tOldForNewServiceAct_RewandItem[3309132][1]["DeleteItem"][1]["Id"] = 3309132
	tOldForNewServiceAct_RewandItem[3309132][1]["RewardItem"] = {}
	tOldForNewServiceAct_RewandItem[3309132][1]["RewardItem"][1] = {}
	tOldForNewServiceAct_RewandItem[3309132][1]["RewardItem"][1]["Id"] = 3009002
	tOldForNewServiceAct_RewandItem[3309132][1]["RewardItem"][1]["Attr"] = "0 1"
	tOldForNewServiceAct_RewandItem[3309132][1]["RewardEffect"] = {}
	tOldForNewServiceAct_RewandItem[3309132][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
-- 换取兑换券物品奖励表
local tOldForNewServiceAct_ConvertItem ={}
	--上交祖母绿
	tOldForNewServiceAct_ConvertItem[1080001]={}
	tOldForNewServiceAct_ConvertItem[1080001]["LogId"] =10002434
	tOldForNewServiceAct_ConvertItem[1080001]["EmoneyLog"] = "350	21446	0	0	1	"
	tOldForNewServiceAct_ConvertItem[1080001]["RewardEffect"]={}
	tOldForNewServiceAct_ConvertItem[1080001]["RewardEffect"]["Effect"] = "zf2-e128"
	tOldForNewServiceAct_ConvertItem[1080001]["DeleteItem"] = {}
	tOldForNewServiceAct_ConvertItem[1080001]["DeleteItem"][1]={}
	tOldForNewServiceAct_ConvertItem[1080001]["DeleteItem"][1]["Id"]=1080001
	tOldForNewServiceAct_ConvertItem[1080001]["DeleteItem"][1]["ItemNum"]=1
	tOldForNewServiceAct_ConvertItem[1080001]["DeleteItem"][1]["Monopoly"] =0
	tOldForNewServiceAct_ConvertItem[1080001]["RewardItem"] = {}
	tOldForNewServiceAct_ConvertItem[1080001]["RewardItem"][1]={}
	tOldForNewServiceAct_ConvertItem[1080001]["RewardItem"][1]["Id"]=3309112
	tOldForNewServiceAct_ConvertItem[1080001]["RewardItem"][1]["Attr"] ="0 1"
	
	--上交流星卷大礼包
	tOldForNewServiceAct_ConvertItem[3302769]={}
	tOldForNewServiceAct_ConvertItem[3302769]["LogId"] =10002434
	tOldForNewServiceAct_ConvertItem[3302769]["EmoneyLog"] = "350	21447	0	0	1	"
	tOldForNewServiceAct_ConvertItem[3302769]["RewardEffect"]={}
	tOldForNewServiceAct_ConvertItem[3302769]["RewardEffect"]["Effect"] = "zf2-e128"
	tOldForNewServiceAct_ConvertItem[3302769]["DeleteItem"] = {}
	tOldForNewServiceAct_ConvertItem[3302769]["DeleteItem"][1]={}
	tOldForNewServiceAct_ConvertItem[3302769]["DeleteItem"][1]["Id"]=3302769
	tOldForNewServiceAct_ConvertItem[3302769]["DeleteItem"][1]["ItemNum"]=1
	tOldForNewServiceAct_ConvertItem[3302769]["DeleteItem"][1]["Monopoly"] =0
	tOldForNewServiceAct_ConvertItem[3302769]["RewardItem"] = {}
	tOldForNewServiceAct_ConvertItem[3302769]["RewardItem"][1]={}
	tOldForNewServiceAct_ConvertItem[3302769]["RewardItem"][1]["Id"]=3309112
	tOldForNewServiceAct_ConvertItem[3302769]["RewardItem"][1]["Attr"] ="0 5"
	
	--1朵郁金香
	tOldForNewServiceAct_ConvertItem[754001]={}
	tOldForNewServiceAct_ConvertItem[754001]["LogId"] =10002434
	tOldForNewServiceAct_ConvertItem[754001]["EmoneyLog"] = "350	21448	0	0	1	"
	tOldForNewServiceAct_ConvertItem[754001]["RewardEffect"]={}
	tOldForNewServiceAct_ConvertItem[754001]["RewardEffect"]["Effect"] = "zf2-e128"
	tOldForNewServiceAct_ConvertItem[754001]["DeleteItem"] = {}
	tOldForNewServiceAct_ConvertItem[754001]["DeleteItem"][1]={}
	tOldForNewServiceAct_ConvertItem[754001]["DeleteItem"][1]["Id"]=754001
	tOldForNewServiceAct_ConvertItem[754001]["DeleteItem"][1]["ItemNum"]=1
	tOldForNewServiceAct_ConvertItem[754001]["DeleteItem"][1]["Monopoly"] =0
	tOldForNewServiceAct_ConvertItem[754001]["RewardItem"] = {}
	tOldForNewServiceAct_ConvertItem[754001]["RewardItem"][1]={}
	tOldForNewServiceAct_ConvertItem[754001]["RewardItem"][1]["Id"]=3309112
	tOldForNewServiceAct_ConvertItem[754001]["RewardItem"][1]["Attr"] ="0 1"
	
	--1朵玫瑰
	tOldForNewServiceAct_ConvertItem[751001]={}
	tOldForNewServiceAct_ConvertItem[751001]["LogId"] =10002434
	tOldForNewServiceAct_ConvertItem[751001]["EmoneyLog"] = "350	21448	0	0	1	"
	tOldForNewServiceAct_ConvertItem[751001]["RewardEffect"]={}
	tOldForNewServiceAct_ConvertItem[751001]["RewardEffect"]["Effect"] = "zf2-e128"
	tOldForNewServiceAct_ConvertItem[751001]["DeleteItem"] = {}
	tOldForNewServiceAct_ConvertItem[751001]["DeleteItem"][1]={}
	tOldForNewServiceAct_ConvertItem[751001]["DeleteItem"][1]["Id"]=751001
	tOldForNewServiceAct_ConvertItem[751001]["DeleteItem"][1]["ItemNum"]=1
	tOldForNewServiceAct_ConvertItem[751001]["DeleteItem"][1]["Monopoly"] =0
	tOldForNewServiceAct_ConvertItem[751001]["RewardItem"] = {}
	tOldForNewServiceAct_ConvertItem[751001]["RewardItem"][1]={}
	tOldForNewServiceAct_ConvertItem[751001]["RewardItem"][1]["Id"]=3309112
	tOldForNewServiceAct_ConvertItem[751001]["RewardItem"][1]["Attr"] ="0 1"
	
	--1朵百合
	tOldForNewServiceAct_ConvertItem[752001]={}
	tOldForNewServiceAct_ConvertItem[752001]["LogId"] =10002434
	tOldForNewServiceAct_ConvertItem[752001]["EmoneyLog"] = "350	21448	0	0	1	"
	tOldForNewServiceAct_ConvertItem[752001]["RewardEffect"]={}
	tOldForNewServiceAct_ConvertItem[752001]["RewardEffect"]["Effect"] = "zf2-e128"
	tOldForNewServiceAct_ConvertItem[752001]["DeleteItem"] = {}
	tOldForNewServiceAct_ConvertItem[752001]["DeleteItem"][1]={}
	tOldForNewServiceAct_ConvertItem[752001]["DeleteItem"][1]["Id"]=752001
	tOldForNewServiceAct_ConvertItem[752001]["DeleteItem"][1]["ItemNum"]=1
	tOldForNewServiceAct_ConvertItem[752001]["DeleteItem"][1]["Monopoly"] =0
	tOldForNewServiceAct_ConvertItem[752001]["RewardItem"] = {}
	tOldForNewServiceAct_ConvertItem[752001]["RewardItem"][1]={}
	tOldForNewServiceAct_ConvertItem[752001]["RewardItem"][1]["Id"]=3309112
	tOldForNewServiceAct_ConvertItem[752001]["RewardItem"][1]["Attr"] ="0 1"
	
	--1朵兰花
	tOldForNewServiceAct_ConvertItem[753001]={}
	tOldForNewServiceAct_ConvertItem[753001]["LogId"] =10002434
	tOldForNewServiceAct_ConvertItem[753001]["EmoneyLog"] = "350	21448	0	0	1	"
	tOldForNewServiceAct_ConvertItem[753001]["RewardEffect"]={}
	tOldForNewServiceAct_ConvertItem[753001]["RewardEffect"]["Effect"] = "zf2-e128"
	tOldForNewServiceAct_ConvertItem[753001]["DeleteItem"] = {}
	tOldForNewServiceAct_ConvertItem[753001]["DeleteItem"][1]={}
	tOldForNewServiceAct_ConvertItem[753001]["DeleteItem"][1]["Id"]=753001
	tOldForNewServiceAct_ConvertItem[753001]["DeleteItem"][1]["ItemNum"]=1
	tOldForNewServiceAct_ConvertItem[753001]["DeleteItem"][1]["Monopoly"] =0
	tOldForNewServiceAct_ConvertItem[753001]["RewardItem"] = {}
	tOldForNewServiceAct_ConvertItem[753001]["RewardItem"][1]={}
	tOldForNewServiceAct_ConvertItem[753001]["RewardItem"][1]["Id"]=3309112
	tOldForNewServiceAct_ConvertItem[753001]["RewardItem"][1]["Attr"] ="0 1"
	
	--3朵郁金香
	tOldForNewServiceAct_ConvertItem[754003]={}
	tOldForNewServiceAct_ConvertItem[754003]["LogId"] =10002434
	tOldForNewServiceAct_ConvertItem[754003]["EmoneyLog"] = "350	21449	0	0	1	"
	tOldForNewServiceAct_ConvertItem[754003]["RewardEffect"]={}
	tOldForNewServiceAct_ConvertItem[754003]["RewardEffect"]["Effect"] = "zf2-e128"
	tOldForNewServiceAct_ConvertItem[754003]["DeleteItem"] = {}
	tOldForNewServiceAct_ConvertItem[754003]["DeleteItem"][1]={}
	tOldForNewServiceAct_ConvertItem[754003]["DeleteItem"][1]["Id"]=754003
	tOldForNewServiceAct_ConvertItem[754003]["DeleteItem"][1]["ItemNum"]=1
	tOldForNewServiceAct_ConvertItem[754003]["DeleteItem"][1]["Monopoly"] =0
	tOldForNewServiceAct_ConvertItem[754003]["RewardItem"] = {}
	tOldForNewServiceAct_ConvertItem[754003]["RewardItem"][1]={}
	tOldForNewServiceAct_ConvertItem[754003]["RewardItem"][1]["Id"]=3309112
	tOldForNewServiceAct_ConvertItem[754003]["RewardItem"][1]["Attr"] ="0 3"
	
	--3朵玫瑰
	tOldForNewServiceAct_ConvertItem[751003]={}
	tOldForNewServiceAct_ConvertItem[751003]["LogId"] =10002434
	tOldForNewServiceAct_ConvertItem[751003]["EmoneyLog"] = "350	21449	0	0	1	"
	tOldForNewServiceAct_ConvertItem[751003]["RewardEffect"]={}
	tOldForNewServiceAct_ConvertItem[751003]["RewardEffect"]["Effect"] = "zf2-e128"
	tOldForNewServiceAct_ConvertItem[751003]["DeleteItem"] = {}
	tOldForNewServiceAct_ConvertItem[751003]["DeleteItem"][1]={}
	tOldForNewServiceAct_ConvertItem[751003]["DeleteItem"][1]["Id"]=751003
	tOldForNewServiceAct_ConvertItem[751003]["DeleteItem"][1]["ItemNum"]=1
	tOldForNewServiceAct_ConvertItem[751003]["DeleteItem"][1]["Monopoly"] =0
	tOldForNewServiceAct_ConvertItem[751003]["RewardItem"] = {}
	tOldForNewServiceAct_ConvertItem[751003]["RewardItem"][1]={}
	tOldForNewServiceAct_ConvertItem[751003]["RewardItem"][1]["Id"]=3309112
	tOldForNewServiceAct_ConvertItem[751003]["RewardItem"][1]["Attr"] ="0 3"
	
	--3朵百合
	tOldForNewServiceAct_ConvertItem[752003]={}
	tOldForNewServiceAct_ConvertItem[752003]["LogId"] =10002434
	tOldForNewServiceAct_ConvertItem[752003]["EmoneyLog"] = "350	21449	0	0	1	"
	tOldForNewServiceAct_ConvertItem[752003]["RewardEffect"]={}
	tOldForNewServiceAct_ConvertItem[752003]["RewardEffect"]["Effect"] = "zf2-e128"
	tOldForNewServiceAct_ConvertItem[752003]["DeleteItem"] = {}
	tOldForNewServiceAct_ConvertItem[752003]["DeleteItem"][1]={}
	tOldForNewServiceAct_ConvertItem[752003]["DeleteItem"][1]["Id"]=752003
	tOldForNewServiceAct_ConvertItem[752003]["DeleteItem"][1]["ItemNum"]=1
	tOldForNewServiceAct_ConvertItem[752003]["DeleteItem"][1]["Monopoly"] =0
	tOldForNewServiceAct_ConvertItem[752003]["RewardItem"] = {}
	tOldForNewServiceAct_ConvertItem[752003]["RewardItem"][1]={}
	tOldForNewServiceAct_ConvertItem[752003]["RewardItem"][1]["Id"]=3309112
	tOldForNewServiceAct_ConvertItem[752003]["RewardItem"][1]["Attr"] ="0 3"
	
	--3朵兰花
	tOldForNewServiceAct_ConvertItem[753003]={}
	tOldForNewServiceAct_ConvertItem[753003]["LogId"] =10002434
	tOldForNewServiceAct_ConvertItem[753003]["EmoneyLog"] = "350	21449	0	0	1	"
	tOldForNewServiceAct_ConvertItem[753003]["RewardEffect"]={}
	tOldForNewServiceAct_ConvertItem[753003]["RewardEffect"]["Effect"] = "zf2-e128"
	tOldForNewServiceAct_ConvertItem[753003]["DeleteItem"] = {}
	tOldForNewServiceAct_ConvertItem[753003]["DeleteItem"][1]={}
	tOldForNewServiceAct_ConvertItem[753003]["DeleteItem"][1]["Id"]=753003
	tOldForNewServiceAct_ConvertItem[753003]["DeleteItem"][1]["ItemNum"]=1
	tOldForNewServiceAct_ConvertItem[753003]["DeleteItem"][1]["Monopoly"] =0
	tOldForNewServiceAct_ConvertItem[753003]["RewardItem"] = {}
	tOldForNewServiceAct_ConvertItem[753003]["RewardItem"][1]={}
	tOldForNewServiceAct_ConvertItem[753003]["RewardItem"][1]["Id"]=3309112
	tOldForNewServiceAct_ConvertItem[753003]["RewardItem"][1]["Attr"] ="0 3"
	
	
	--9朵郁金香
	tOldForNewServiceAct_ConvertItem[754009]={}
	tOldForNewServiceAct_ConvertItem[754009]["LogId"] =10002434
	tOldForNewServiceAct_ConvertItem[754009]["EmoneyLog"] = "350	21450	0	0	1	"
	tOldForNewServiceAct_ConvertItem[754009]["RewardEffect"]={}
	tOldForNewServiceAct_ConvertItem[754009]["RewardEffect"]["Effect"] = "zf2-e128"
	tOldForNewServiceAct_ConvertItem[754009]["DeleteItem"] = {}
	tOldForNewServiceAct_ConvertItem[754009]["DeleteItem"][1]={}
	tOldForNewServiceAct_ConvertItem[754009]["DeleteItem"][1]["Id"]=754009
	tOldForNewServiceAct_ConvertItem[754009]["DeleteItem"][1]["ItemNum"]=1
	tOldForNewServiceAct_ConvertItem[754009]["DeleteItem"][1]["Monopoly"] =0
	tOldForNewServiceAct_ConvertItem[754009]["RewardItem"] = {}
	tOldForNewServiceAct_ConvertItem[754009]["RewardItem"][1]={}
	tOldForNewServiceAct_ConvertItem[754009]["RewardItem"][1]["Id"]=3309112
	tOldForNewServiceAct_ConvertItem[754009]["RewardItem"][1]["Attr"] ="0 9"
	
	--9朵玫瑰
	tOldForNewServiceAct_ConvertItem[751009]={}
	tOldForNewServiceAct_ConvertItem[751009]["LogId"] =10002434
	tOldForNewServiceAct_ConvertItem[751009]["EmoneyLog"] = "350	21450	0	0	1	"
	tOldForNewServiceAct_ConvertItem[751009]["RewardEffect"]={}
	tOldForNewServiceAct_ConvertItem[751009]["RewardEffect"]["Effect"] = "zf2-e128"
	tOldForNewServiceAct_ConvertItem[751009]["DeleteItem"] = {}
	tOldForNewServiceAct_ConvertItem[751009]["DeleteItem"][1]={}
	tOldForNewServiceAct_ConvertItem[751009]["DeleteItem"][1]["Id"]=751009
	tOldForNewServiceAct_ConvertItem[751009]["DeleteItem"][1]["ItemNum"]=1
	tOldForNewServiceAct_ConvertItem[751009]["DeleteItem"][1]["Monopoly"] =0
	tOldForNewServiceAct_ConvertItem[751009]["RewardItem"] = {}
	tOldForNewServiceAct_ConvertItem[751009]["RewardItem"][1]={}
	tOldForNewServiceAct_ConvertItem[751009]["RewardItem"][1]["Id"]=3309112
	tOldForNewServiceAct_ConvertItem[751009]["RewardItem"][1]["Attr"] ="0 9"
	
	--9朵百合
	tOldForNewServiceAct_ConvertItem[752009]={}
	tOldForNewServiceAct_ConvertItem[752009]["LogId"] =10002434
	tOldForNewServiceAct_ConvertItem[752009]["EmoneyLog"] = "350	21450	0	0	1	"
	tOldForNewServiceAct_ConvertItem[752009]["RewardEffect"]={}
	tOldForNewServiceAct_ConvertItem[752009]["RewardEffect"]["Effect"] = "zf2-e128"
	tOldForNewServiceAct_ConvertItem[752009]["DeleteItem"] = {}
	tOldForNewServiceAct_ConvertItem[752009]["DeleteItem"][1]={}
	tOldForNewServiceAct_ConvertItem[752009]["DeleteItem"][1]["Id"]=752009
	tOldForNewServiceAct_ConvertItem[752009]["DeleteItem"][1]["ItemNum"]=1
	tOldForNewServiceAct_ConvertItem[752009]["DeleteItem"][1]["Monopoly"] =0
	tOldForNewServiceAct_ConvertItem[752009]["RewardItem"] = {}
	tOldForNewServiceAct_ConvertItem[752009]["RewardItem"][1]={}
	tOldForNewServiceAct_ConvertItem[752009]["RewardItem"][1]["Id"]=3309112
	tOldForNewServiceAct_ConvertItem[752009]["RewardItem"][1]["Attr"] ="0 9"
	
	--9朵兰花
	tOldForNewServiceAct_ConvertItem[753009]={}
	tOldForNewServiceAct_ConvertItem[753009]["LogId"] =10002434
	tOldForNewServiceAct_ConvertItem[753009]["EmoneyLog"] = "350	21450	0	0	1	"
	tOldForNewServiceAct_ConvertItem[753009]["RewardEffect"]={}
	tOldForNewServiceAct_ConvertItem[753009]["RewardEffect"]["Effect"] = "zf2-e128"
	tOldForNewServiceAct_ConvertItem[753009]["DeleteItem"] = {}
	tOldForNewServiceAct_ConvertItem[753009]["DeleteItem"][1]={}
	tOldForNewServiceAct_ConvertItem[753009]["DeleteItem"][1]["Id"]=753009
	tOldForNewServiceAct_ConvertItem[753009]["DeleteItem"][1]["ItemNum"]=1
	tOldForNewServiceAct_ConvertItem[753009]["DeleteItem"][1]["Monopoly"] =0
	tOldForNewServiceAct_ConvertItem[753009]["RewardItem"] = {}
	tOldForNewServiceAct_ConvertItem[753009]["RewardItem"][1]={}
	tOldForNewServiceAct_ConvertItem[753009]["RewardItem"][1]["Id"]=3309112
	tOldForNewServiceAct_ConvertItem[753009]["RewardItem"][1]["Attr"] ="0 9"
	
	--99朵郁金香
	tOldForNewServiceAct_ConvertItem[754099]={}
	tOldForNewServiceAct_ConvertItem[754099]["LogId"] =10002434
	tOldForNewServiceAct_ConvertItem[754099]["EmoneyLog"] = "350	21451	0	0	1	"
	tOldForNewServiceAct_ConvertItem[754099]["RewardEffect"]={}
	tOldForNewServiceAct_ConvertItem[754099]["RewardEffect"]["Effect"] = "zf2-e128"
	tOldForNewServiceAct_ConvertItem[754099]["DeleteItem"] = {}
	tOldForNewServiceAct_ConvertItem[754099]["DeleteItem"][1]={}
	tOldForNewServiceAct_ConvertItem[754099]["DeleteItem"][1]["Id"]=754099
	tOldForNewServiceAct_ConvertItem[754099]["DeleteItem"][1]["ItemNum"]=1
	tOldForNewServiceAct_ConvertItem[754099]["DeleteItem"][1]["Monopoly"] =0
	tOldForNewServiceAct_ConvertItem[754099]["RewardItem"] = {}
	tOldForNewServiceAct_ConvertItem[754099]["RewardItem"][1]={}
	tOldForNewServiceAct_ConvertItem[754099]["RewardItem"][1]["Id"]=3309112
	tOldForNewServiceAct_ConvertItem[754099]["RewardItem"][1]["Attr"] ="0 25"
	
	--99朵玫瑰
	tOldForNewServiceAct_ConvertItem[751099]={}
	tOldForNewServiceAct_ConvertItem[751099]["LogId"] =10002434
	tOldForNewServiceAct_ConvertItem[751099]["EmoneyLog"] = "350	21451	0	0	1	"
	tOldForNewServiceAct_ConvertItem[751099]["RewardEffect"]={}
	tOldForNewServiceAct_ConvertItem[751099]["RewardEffect"]["Effect"] = "zf2-e128"
	tOldForNewServiceAct_ConvertItem[751099]["DeleteItem"] = {}
	tOldForNewServiceAct_ConvertItem[751099]["DeleteItem"][1]={}
	tOldForNewServiceAct_ConvertItem[751099]["DeleteItem"][1]["Id"]=751099
	tOldForNewServiceAct_ConvertItem[751099]["DeleteItem"][1]["ItemNum"]=1
	tOldForNewServiceAct_ConvertItem[751099]["DeleteItem"][1]["Monopoly"] =0
	tOldForNewServiceAct_ConvertItem[751099]["RewardItem"] = {}
	tOldForNewServiceAct_ConvertItem[751099]["RewardItem"][1]={}
	tOldForNewServiceAct_ConvertItem[751099]["RewardItem"][1]["Id"]=3309112
	tOldForNewServiceAct_ConvertItem[751099]["RewardItem"][1]["Attr"] ="0 25"
	
	--99朵百合
	tOldForNewServiceAct_ConvertItem[752099]={}
	tOldForNewServiceAct_ConvertItem[752099]["LogId"] =10002434
	tOldForNewServiceAct_ConvertItem[752099]["EmoneyLog"] = "350	21451	0	0	1	"
	tOldForNewServiceAct_ConvertItem[752099]["RewardEffect"]={}
	tOldForNewServiceAct_ConvertItem[752099]["RewardEffect"]["Effect"] = "zf2-e128"
	tOldForNewServiceAct_ConvertItem[752099]["DeleteItem"] = {}
	tOldForNewServiceAct_ConvertItem[752099]["DeleteItem"][1]={}
	tOldForNewServiceAct_ConvertItem[752099]["DeleteItem"][1]["Id"]=752099
	tOldForNewServiceAct_ConvertItem[752099]["DeleteItem"][1]["ItemNum"]=1
	tOldForNewServiceAct_ConvertItem[752099]["DeleteItem"][1]["Monopoly"] =0
	tOldForNewServiceAct_ConvertItem[752099]["RewardItem"] = {}
	tOldForNewServiceAct_ConvertItem[752099]["RewardItem"][1]={}
	tOldForNewServiceAct_ConvertItem[752099]["RewardItem"][1]["Id"]=3309112
	tOldForNewServiceAct_ConvertItem[752099]["RewardItem"][1]["Attr"] ="0 25"
	
	--99朵兰花
	tOldForNewServiceAct_ConvertItem[753099]={}
	tOldForNewServiceAct_ConvertItem[753099]["LogId"] =10002434
	tOldForNewServiceAct_ConvertItem[753099]["EmoneyLog"] = "350	21451	0	0	1	"
	tOldForNewServiceAct_ConvertItem[753099]["RewardEffect"]={}
	tOldForNewServiceAct_ConvertItem[753099]["RewardEffect"]["Effect"] = "zf2-e128"
	tOldForNewServiceAct_ConvertItem[753099]["DeleteItem"] = {}
	tOldForNewServiceAct_ConvertItem[753099]["DeleteItem"][1]={}
	tOldForNewServiceAct_ConvertItem[753099]["DeleteItem"][1]["Id"]=753099
	tOldForNewServiceAct_ConvertItem[753099]["DeleteItem"][1]["ItemNum"]=1
	tOldForNewServiceAct_ConvertItem[753099]["DeleteItem"][1]["Monopoly"] =0
	tOldForNewServiceAct_ConvertItem[753099]["RewardItem"] = {}
	tOldForNewServiceAct_ConvertItem[753099]["RewardItem"][1]={}
	tOldForNewServiceAct_ConvertItem[753099]["RewardItem"][1]["Id"]=3309112
	tOldForNewServiceAct_ConvertItem[753099]["RewardItem"][1]["Attr"] ="0 25"
	
	--被偷走的马鞍20个
	tOldForNewServiceAct_ConvertItem[723903]={}
	tOldForNewServiceAct_ConvertItem[723903]["LogId"] =10002434
	tOldForNewServiceAct_ConvertItem[723903]["EmoneyLog"] = "350	21452	0	0	1	"
	tOldForNewServiceAct_ConvertItem[723903]["RewardEffect"]={}
	tOldForNewServiceAct_ConvertItem[723903]["RewardEffect"]["Effect"] = "zf2-e128"
	tOldForNewServiceAct_ConvertItem[723903]["DeleteItem"] = {}
	tOldForNewServiceAct_ConvertItem[723903]["DeleteItem"][1]={}
	tOldForNewServiceAct_ConvertItem[723903]["DeleteItem"][1]["Id"]=723903
	tOldForNewServiceAct_ConvertItem[723903]["DeleteItem"][1]["ItemNum"]=20
	tOldForNewServiceAct_ConvertItem[723903]["DeleteItem"][1]["Monopoly"] =0
	tOldForNewServiceAct_ConvertItem[723903]["RewardItem"] = {}
	tOldForNewServiceAct_ConvertItem[723903]["RewardItem"][1]={}
	tOldForNewServiceAct_ConvertItem[723903]["RewardItem"][1]["Id"]=3309112
	tOldForNewServiceAct_ConvertItem[723903]["RewardItem"][1]["Attr"] ="0 1"
	
	--1封情书
	tOldForNewServiceAct_ConvertItem[756001]={}
	tOldForNewServiceAct_ConvertItem[756001]["LogId"] =10002434
	tOldForNewServiceAct_ConvertItem[756001]["EmoneyLog"] = "350	21453	0	0	1	"
	tOldForNewServiceAct_ConvertItem[756001]["RewardEffect"]={}
	tOldForNewServiceAct_ConvertItem[756001]["RewardEffect"]["Effect"] = "zf2-e128"
	tOldForNewServiceAct_ConvertItem[756001]["DeleteItem"] = {}
	tOldForNewServiceAct_ConvertItem[756001]["DeleteItem"][1]={}
	tOldForNewServiceAct_ConvertItem[756001]["DeleteItem"][1]["Id"]=756001
	tOldForNewServiceAct_ConvertItem[756001]["DeleteItem"][1]["ItemNum"]=1
	tOldForNewServiceAct_ConvertItem[756001]["DeleteItem"][1]["Monopoly"] =0
	tOldForNewServiceAct_ConvertItem[756001]["RewardItem"] = {}
	tOldForNewServiceAct_ConvertItem[756001]["RewardItem"][1]={}
	tOldForNewServiceAct_ConvertItem[756001]["RewardItem"][1]["Id"]=3309112
	tOldForNewServiceAct_ConvertItem[756001]["RewardItem"][1]["Attr"] ="0 1"
	
	--1个记忆宝珠
	tOldForNewServiceAct_ConvertItem[720828]={}
	tOldForNewServiceAct_ConvertItem[720828]["LogId"] =10002434
	tOldForNewServiceAct_ConvertItem[720828]["EmoneyLog"] = "350	21454	0	0	1	"
	tOldForNewServiceAct_ConvertItem[720828]["RewardEffect"]={}
	tOldForNewServiceAct_ConvertItem[720828]["RewardEffect"]["Effect"] = "zf2-e128"
	tOldForNewServiceAct_ConvertItem[720828]["DeleteItem"] = {}
	tOldForNewServiceAct_ConvertItem[720828]["DeleteItem"][1]={}
	tOldForNewServiceAct_ConvertItem[720828]["DeleteItem"][1]["Id"]=720828
	tOldForNewServiceAct_ConvertItem[720828]["DeleteItem"][1]["ItemNum"]=1
	tOldForNewServiceAct_ConvertItem[720828]["DeleteItem"][1]["Monopoly"] =0
	tOldForNewServiceAct_ConvertItem[720828]["RewardItem"] = {}
	tOldForNewServiceAct_ConvertItem[720828]["RewardItem"][1]={}
	tOldForNewServiceAct_ConvertItem[720828]["RewardItem"][1]["Id"]=3309112
	tOldForNewServiceAct_ConvertItem[720828]["RewardItem"][1]["Attr"] ="0 1"
	
	--1个清心符
	tOldForNewServiceAct_ConvertItem[723727]={}
	tOldForNewServiceAct_ConvertItem[723727]["LogId"] =10002434
	tOldForNewServiceAct_ConvertItem[723727]["EmoneyLog"] = "350	21455	0	0	1	"
	tOldForNewServiceAct_ConvertItem[723727]["RewardEffect"]={}
	tOldForNewServiceAct_ConvertItem[723727]["RewardEffect"]["Effect"] = "zf2-e128"
	tOldForNewServiceAct_ConvertItem[723727]["DeleteItem"] = {}
	tOldForNewServiceAct_ConvertItem[723727]["DeleteItem"][1]={}
	tOldForNewServiceAct_ConvertItem[723727]["DeleteItem"][1]["Id"]=723727
	tOldForNewServiceAct_ConvertItem[723727]["DeleteItem"][1]["ItemNum"]=1
	tOldForNewServiceAct_ConvertItem[723727]["DeleteItem"][1]["Monopoly"] =0
	tOldForNewServiceAct_ConvertItem[723727]["RewardItem"] = {}
	tOldForNewServiceAct_ConvertItem[723727]["RewardItem"][1]={}
	tOldForNewServiceAct_ConvertItem[723727]["RewardItem"][1]["Id"]=3309112
	tOldForNewServiceAct_ConvertItem[723727]["RewardItem"][1]["Attr"] ="0 2"
	
	--1个破城火雷
	tOldForNewServiceAct_ConvertItem[721261]={}
	tOldForNewServiceAct_ConvertItem[721261]["LogId"] =10002434
	tOldForNewServiceAct_ConvertItem[721261]["EmoneyLog"] = "350	21456	0	0	1	"
	tOldForNewServiceAct_ConvertItem[721261]["RewardEffect"]={}
	tOldForNewServiceAct_ConvertItem[721261]["RewardEffect"]["Effect"] = "zf2-e128"
	tOldForNewServiceAct_ConvertItem[721261]["DeleteItem"] = {}
	tOldForNewServiceAct_ConvertItem[721261]["DeleteItem"][1]={}
	tOldForNewServiceAct_ConvertItem[721261]["DeleteItem"][1]["Id"]=721261
	tOldForNewServiceAct_ConvertItem[721261]["DeleteItem"][1]["ItemNum"]=1
	tOldForNewServiceAct_ConvertItem[721261]["DeleteItem"][1]["Monopoly"] =0
	tOldForNewServiceAct_ConvertItem[721261]["RewardItem"] = {}
	tOldForNewServiceAct_ConvertItem[721261]["RewardItem"][1]={}
	tOldForNewServiceAct_ConvertItem[721261]["RewardItem"][1]["Id"]=3309112
	tOldForNewServiceAct_ConvertItem[721261]["RewardItem"][1]["Attr"] ="0 1"
	
	--5个凤鸣宝石
	tOldForNewServiceAct_ConvertItem[700001]={}
	tOldForNewServiceAct_ConvertItem[700001]["LogId"] =10002434
	tOldForNewServiceAct_ConvertItem[700001]["EmoneyLog"] = "350	21457	0	0	1	"
	tOldForNewServiceAct_ConvertItem[700001]["RewardEffect"]={}
	tOldForNewServiceAct_ConvertItem[700001]["RewardEffect"]["Effect"] = "zf2-e128"
	tOldForNewServiceAct_ConvertItem[700001]["DeleteItem"] = {}
	tOldForNewServiceAct_ConvertItem[700001]["DeleteItem"][1]={}
	tOldForNewServiceAct_ConvertItem[700001]["DeleteItem"][1]["Id"]=700001
	tOldForNewServiceAct_ConvertItem[700001]["DeleteItem"][1]["ItemNum"]=5
	tOldForNewServiceAct_ConvertItem[700001]["DeleteItem"][1]["Monopoly"] =0
	tOldForNewServiceAct_ConvertItem[700001]["RewardItem"] = {}
	tOldForNewServiceAct_ConvertItem[700001]["RewardItem"][1]={}
	tOldForNewServiceAct_ConvertItem[700001]["RewardItem"][1]["Id"]=3309112
	tOldForNewServiceAct_ConvertItem[700001]["RewardItem"][1]["Attr"] ="0 1"
	
	--5个龙恨宝石
	tOldForNewServiceAct_ConvertItem[700011]={}
	tOldForNewServiceAct_ConvertItem[700011]["LogId"] =10002434
	tOldForNewServiceAct_ConvertItem[700011]["EmoneyLog"] = "350	21457	0	0	1	"
	tOldForNewServiceAct_ConvertItem[700011]["RewardEffect"]={}
	tOldForNewServiceAct_ConvertItem[700011]["RewardEffect"]["Effect"] = "zf2-e128"
	tOldForNewServiceAct_ConvertItem[700011]["DeleteItem"] = {}
	tOldForNewServiceAct_ConvertItem[700011]["DeleteItem"][1]={}
	tOldForNewServiceAct_ConvertItem[700011]["DeleteItem"][1]["Id"]=700011
	tOldForNewServiceAct_ConvertItem[700011]["DeleteItem"][1]["ItemNum"]=5
	tOldForNewServiceAct_ConvertItem[700011]["DeleteItem"][1]["Monopoly"] =0
	tOldForNewServiceAct_ConvertItem[700011]["RewardItem"] = {}
	tOldForNewServiceAct_ConvertItem[700011]["RewardItem"][1]={}
	tOldForNewServiceAct_ConvertItem[700011]["RewardItem"][1]["Id"]=3309112
	tOldForNewServiceAct_ConvertItem[700011]["RewardItem"][1]["Attr"] ="0 1"
	
	--5个惊鸿宝石
	tOldForNewServiceAct_ConvertItem[700021]={}
	tOldForNewServiceAct_ConvertItem[700021]["LogId"] =10002434
	tOldForNewServiceAct_ConvertItem[700021]["EmoneyLog"] = "350	21457	0	0	1	"
	tOldForNewServiceAct_ConvertItem[700021]["RewardEffect"]={}
	tOldForNewServiceAct_ConvertItem[700021]["RewardEffect"]["Effect"] = "zf2-e128"
	tOldForNewServiceAct_ConvertItem[700021]["DeleteItem"] = {}
	tOldForNewServiceAct_ConvertItem[700021]["DeleteItem"][1]={}
	tOldForNewServiceAct_ConvertItem[700021]["DeleteItem"][1]["Id"]=700021
	tOldForNewServiceAct_ConvertItem[700021]["DeleteItem"][1]["ItemNum"]=5
	tOldForNewServiceAct_ConvertItem[700021]["DeleteItem"][1]["Monopoly"] =0
	tOldForNewServiceAct_ConvertItem[700021]["RewardItem"] = {}
	tOldForNewServiceAct_ConvertItem[700021]["RewardItem"][1]={}
	tOldForNewServiceAct_ConvertItem[700021]["RewardItem"][1]["Id"]=3309112
	tOldForNewServiceAct_ConvertItem[700021]["RewardItem"][1]["Attr"] ="0 1"
	
	--5个青虹宝石
	tOldForNewServiceAct_ConvertItem[700031]={}
	tOldForNewServiceAct_ConvertItem[700031]["LogId"] =10002434
	tOldForNewServiceAct_ConvertItem[700031]["EmoneyLog"] = "350	21457	0	0	1	"
	tOldForNewServiceAct_ConvertItem[700031]["RewardEffect"]={}
	tOldForNewServiceAct_ConvertItem[700031]["RewardEffect"]["Effect"] = "zf2-e128"
	tOldForNewServiceAct_ConvertItem[700031]["DeleteItem"] = {}
	tOldForNewServiceAct_ConvertItem[700031]["DeleteItem"][1]={}
	tOldForNewServiceAct_ConvertItem[700031]["DeleteItem"][1]["Id"]=700031
	tOldForNewServiceAct_ConvertItem[700031]["DeleteItem"][1]["ItemNum"]=5
	tOldForNewServiceAct_ConvertItem[700031]["DeleteItem"][1]["Monopoly"] =0
	tOldForNewServiceAct_ConvertItem[700031]["RewardItem"] = {}
	tOldForNewServiceAct_ConvertItem[700031]["RewardItem"][1]={}
	tOldForNewServiceAct_ConvertItem[700031]["RewardItem"][1]["Id"]=3309112
	tOldForNewServiceAct_ConvertItem[700031]["RewardItem"][1]["Attr"] ="0 1"
	
	--5个金鳞宝石
	tOldForNewServiceAct_ConvertItem[700041]={}
	tOldForNewServiceAct_ConvertItem[700041]["LogId"] =10002434
	tOldForNewServiceAct_ConvertItem[700041]["EmoneyLog"] = "350	21457	0	0	1	"
	tOldForNewServiceAct_ConvertItem[700041]["RewardEffect"]={}
	tOldForNewServiceAct_ConvertItem[700041]["RewardEffect"]["Effect"] = "zf2-e128"
	tOldForNewServiceAct_ConvertItem[700041]["DeleteItem"] = {}
	tOldForNewServiceAct_ConvertItem[700041]["DeleteItem"][1]={}
	tOldForNewServiceAct_ConvertItem[700041]["DeleteItem"][1]["Id"]=700041
	tOldForNewServiceAct_ConvertItem[700041]["DeleteItem"][1]["ItemNum"]=5
	tOldForNewServiceAct_ConvertItem[700041]["DeleteItem"][1]["Monopoly"] =0
	tOldForNewServiceAct_ConvertItem[700041]["RewardItem"] = {}
	tOldForNewServiceAct_ConvertItem[700041]["RewardItem"][1]={}
	tOldForNewServiceAct_ConvertItem[700041]["RewardItem"][1]["Id"]=3309112
	tOldForNewServiceAct_ConvertItem[700041]["RewardItem"][1]["Attr"] ="0 1"
	
	--5个紫霞宝石
	tOldForNewServiceAct_ConvertItem[700051]={}
	tOldForNewServiceAct_ConvertItem[700051]["LogId"] =10002434
	tOldForNewServiceAct_ConvertItem[700051]["EmoneyLog"] = "350	21457	0	0	1	"
	tOldForNewServiceAct_ConvertItem[700051]["RewardEffect"]={}
	tOldForNewServiceAct_ConvertItem[700051]["RewardEffect"]["Effect"] = "zf2-e128"
	tOldForNewServiceAct_ConvertItem[700051]["DeleteItem"] = {}
	tOldForNewServiceAct_ConvertItem[700051]["DeleteItem"][1]={}
	tOldForNewServiceAct_ConvertItem[700051]["DeleteItem"][1]["Id"]=700051
	tOldForNewServiceAct_ConvertItem[700051]["DeleteItem"][1]["ItemNum"]=5
	tOldForNewServiceAct_ConvertItem[700051]["DeleteItem"][1]["Monopoly"] =0
	tOldForNewServiceAct_ConvertItem[700051]["RewardItem"] = {}
	tOldForNewServiceAct_ConvertItem[700051]["RewardItem"][1]={}
	tOldForNewServiceAct_ConvertItem[700051]["RewardItem"][1]["Id"]=3309112
	tOldForNewServiceAct_ConvertItem[700051]["RewardItem"][1]["Attr"] ="0 1"
	
	--5个明月宝石
	tOldForNewServiceAct_ConvertItem[700061]={}
	tOldForNewServiceAct_ConvertItem[700061]["LogId"] =10002434
	tOldForNewServiceAct_ConvertItem[700061]["EmoneyLog"] = "350	21457	0	0	1	"
	tOldForNewServiceAct_ConvertItem[700061]["RewardEffect"]={}
	tOldForNewServiceAct_ConvertItem[700061]["RewardEffect"]["Effect"] = "zf2-e128"
	tOldForNewServiceAct_ConvertItem[700061]["DeleteItem"] = {}
	tOldForNewServiceAct_ConvertItem[700061]["DeleteItem"][1]={}
	tOldForNewServiceAct_ConvertItem[700061]["DeleteItem"][1]["Id"]=700061
	tOldForNewServiceAct_ConvertItem[700061]["DeleteItem"][1]["ItemNum"]=5
	tOldForNewServiceAct_ConvertItem[700061]["DeleteItem"][1]["Monopoly"] =0
	tOldForNewServiceAct_ConvertItem[700061]["RewardItem"] = {}
	tOldForNewServiceAct_ConvertItem[700061]["RewardItem"][1]={}
	tOldForNewServiceAct_ConvertItem[700061]["RewardItem"][1]["Id"]=3309112
	tOldForNewServiceAct_ConvertItem[700061]["RewardItem"][1]["Attr"] ="0 1"
	
	--1个天怒宝石
	tOldForNewServiceAct_ConvertItem[700101]={}
	tOldForNewServiceAct_ConvertItem[700101]["LogId"] =10002434
	tOldForNewServiceAct_ConvertItem[700101]["EmoneyLog"] = "350	21458	0	0	1	"
	tOldForNewServiceAct_ConvertItem[700101]["RewardEffect"]={}
	tOldForNewServiceAct_ConvertItem[700101]["RewardEffect"]["Effect"] = "zf2-e128"
	tOldForNewServiceAct_ConvertItem[700101]["DeleteItem"] = {}
	tOldForNewServiceAct_ConvertItem[700101]["DeleteItem"][1]={}
	tOldForNewServiceAct_ConvertItem[700101]["DeleteItem"][1]["Id"]=700101
	tOldForNewServiceAct_ConvertItem[700101]["DeleteItem"][1]["ItemNum"]=1
	tOldForNewServiceAct_ConvertItem[700101]["DeleteItem"][1]["Monopoly"] =0
	tOldForNewServiceAct_ConvertItem[700101]["RewardItem"] = {}
	tOldForNewServiceAct_ConvertItem[700101]["RewardItem"][1]={}
	tOldForNewServiceAct_ConvertItem[700101]["RewardItem"][1]["Id"]=3309112
	tOldForNewServiceAct_ConvertItem[700101]["RewardItem"][1]["Attr"] ="0 2"
	
	--1个地灵宝石
	tOldForNewServiceAct_ConvertItem[700121]={}
	tOldForNewServiceAct_ConvertItem[700121]["LogId"] =10002434
	tOldForNewServiceAct_ConvertItem[700121]["EmoneyLog"] = "350	21458	0	0	1	"
	tOldForNewServiceAct_ConvertItem[700121]["RewardEffect"]={}
	tOldForNewServiceAct_ConvertItem[700121]["RewardEffect"]["Effect"] = "zf2-e128"
	tOldForNewServiceAct_ConvertItem[700121]["DeleteItem"] = {}
	tOldForNewServiceAct_ConvertItem[700121]["DeleteItem"][1]={}
	tOldForNewServiceAct_ConvertItem[700121]["DeleteItem"][1]["Id"]=700121
	tOldForNewServiceAct_ConvertItem[700121]["DeleteItem"][1]["ItemNum"]=1
	tOldForNewServiceAct_ConvertItem[700121]["DeleteItem"][1]["Monopoly"] =0
	tOldForNewServiceAct_ConvertItem[700121]["RewardItem"] = {}
	tOldForNewServiceAct_ConvertItem[700121]["RewardItem"][1]={}
	tOldForNewServiceAct_ConvertItem[700121]["RewardItem"][1]["Id"]=3309112
	tOldForNewServiceAct_ConvertItem[700121]["RewardItem"][1]["Attr"] ="0 2"
	
	--1个龙珠
	tOldForNewServiceAct_ConvertItem[1088000]={}
	tOldForNewServiceAct_ConvertItem[1088000]["LogId"] =10002434
	tOldForNewServiceAct_ConvertItem[1088000]["EmoneyLog"] = "350	21460	0	0	1	"
	tOldForNewServiceAct_ConvertItem[1088000]["RewardEffect"]={}
	tOldForNewServiceAct_ConvertItem[1088000]["RewardEffect"]["Effect"] = "zf2-e128"
	tOldForNewServiceAct_ConvertItem[1088000]["DeleteItem"] = {}
	tOldForNewServiceAct_ConvertItem[1088000]["DeleteItem"][1]={}
	tOldForNewServiceAct_ConvertItem[1088000]["DeleteItem"][1]["Id"]=1088000
	tOldForNewServiceAct_ConvertItem[1088000]["DeleteItem"][1]["ItemNum"]=1
	tOldForNewServiceAct_ConvertItem[1088000]["DeleteItem"][1]["Monopoly"] =0
	tOldForNewServiceAct_ConvertItem[1088000]["RewardItem"] = {}
	tOldForNewServiceAct_ConvertItem[1088000]["RewardItem"][1]={}
	tOldForNewServiceAct_ConvertItem[1088000]["RewardItem"][1]["Id"]=3309112
	tOldForNewServiceAct_ConvertItem[1088000]["RewardItem"][1]["Attr"] ="0 30"
	
	--金币兑换
	--500w
	tOldForNewServiceAct_ConvertItem[5000000]={}
	-- tOldForNewServiceAct_ConvertItem[5000000][1]={}
	tOldForNewServiceAct_ConvertItem[5000000]["LogId"] =10002434
	tOldForNewServiceAct_ConvertItem[5000000]["EmoneyLog"] = "350	21459	0	0	1	"
	tOldForNewServiceAct_ConvertItem[5000000]["RewardEffect"]={}
	tOldForNewServiceAct_ConvertItem[5000000]["RewardEffect"]["Effect"] = "zf2-e128"
	tOldForNewServiceAct_ConvertItem[5000000]["RewardNoNeedTip"] = 1 
	tOldForNewServiceAct_ConvertItem[5000000]["RewardMoney"] = {}
	tOldForNewServiceAct_ConvertItem[5000000]["RewardMoney"]["Value"]=-5000000
	tOldForNewServiceAct_ConvertItem[5000000]["RewardItem"] = {}
	tOldForNewServiceAct_ConvertItem[5000000]["RewardItem"][1]={}
	tOldForNewServiceAct_ConvertItem[5000000]["RewardItem"][1]["Id"]=3309112
	tOldForNewServiceAct_ConvertItem[5000000]["RewardItem"][1]["Attr"] ="0 50"
---------------------------------------NPC逻辑---------------------------------------------
-- 检测物品数量是否满足
function OldForNewServiceAct_ChkNpcOption(nItemId,nNum)
	
	--检查物品是否存在
	if not Item_ChkMulItem(nItemId,nItemId,nNum,0) then
		return false
	end
	
	--剩余次数
	local nEvent = tOldForNewServiceAct_Stc[nItemId]["EventType"]
	local nType = tOldForNewServiceAct_Stc[nItemId]["DataType"]
	local nMaxData= tOldForNewServiceAct_Stc[nItemId]["Data"]
	
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	end
	
	local nData = Get_UserStatisticValue(nEvent,nType)
	local nOption = tOldForNewServiceAct_Cont["Option"][nItemId] 
	local nNum = nMaxData - nData
	tNpcGossip[22975]["Option"..nOption] = string.format(tOldForNewServiceAct_Text[22975]["Option"..nOption],nNum)
	
	return true
	-- local nItemIdNum = Get_CountItemType(nItemId,0,0)
	-- if nItemIdNum >= nNum then
		-- return true
	-- else
		-- return false
	-- end
end
-- 检测银两是否满足
function OldForNewServiceAct_ChkNpcOptionMoney()
	local nUseMoney = tOldForNewServiceAct_Cont["Money"]
	if not User_CanPutMoney2Bag(-nUseMoney) then
		
		return false
	end
	
	local nEvent = tOldForNewServiceAct_Stc[5000000]["EventType"]
	local nType = tOldForNewServiceAct_Stc[5000000]["DataType"]
	local nMaxData= tOldForNewServiceAct_Stc[5000000]["Data"]
	
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	end
	
	local nData = Get_UserStatisticValue(nEvent,nType)
	local nOption = tOldForNewServiceAct_Cont["Option"][5000000] 
	local nNum = nMaxData - nData
	tNpcGossip[22975]["Option"..nOption] = string.format(tOldForNewServiceAct_Text[22975]["Option"..nOption],nNum)
	
	return true
end
--提交物品
function OldForNewServiceAct_HandInItem(nItemId,nNum)
	
	--活动过期
	if not Sys_ChkFullTime(tOldForNewServiceAct_Cont["ActTime"]) then
		return
	end
	
	local nEvent = tOldForNewServiceAct_Stc[nItemId]["EventType"]
	local nType = tOldForNewServiceAct_Stc[nItemId]["DataType"]
	local nMaxData= tOldForNewServiceAct_Stc[nItemId]["Data"]
	
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	end
	--是否
	if Get_UserStatisticValue(nEvent,nType) >= nMaxData then
		return 
	end
	
	--检查物品是否存在
	if not Item_ChkMulItem(nItemId,nItemId,nNum,0) then
		return 
	end
	
	
	
	--检测背包空间
	-- if not RewardTemplate_CheckSpace(tOldForNewServiceAct_ConvertItem[nItemId]) then
		-- User_TalkChannel2005(tOldForNewServiceAct_Text["MsgNoSpace"])
		-- return
	-- end
	
	if RewardTemplate_UseItem(tOldForNewServiceAct_ConvertItem[nItemId]) then 
		--打掩码
		Task_AddStatistic(nEvent,nType,1,1)
		Task_SetStcTimestamp(nEvent,nType,0)
		
		local nRewardNum = tOldForNewServiceAct_Cont["ItemNum"][nItemId]
		local sItemName = Get_ItemtypeName(nItemId)
		local sText=string.format(tOldForNewServiceAct_Text["TalkReward"],sItemName,nRewardNum)
		User_TalkChannel2005(sText)
	end 
	LinkNpcGossipFunc_New(22975,"1-3")
	
end
--提交金币
function OldForNewServiceAct_HandInMoney()
	--活动过期
	if not Sys_ChkFullTime(tOldForNewServiceAct_Cont["ActTime"]) then
		return
	end
	
	--金币判断
	local nUseMoney = tOldForNewServiceAct_Cont["Money"]
	if not User_CanPutMoney2Bag(-nUseMoney) then 
		-- User_TalkChannel2005(tThanksGivingExchange_Text["MoneyNotEnough"])
		return 
	end
	
	-- if not RewardTemplate_CheckSpace(tOldForNewServiceAct_ConvertItem[5000000]) then
		-- User_TalkChannel2005(tOldForNewServiceAct_Text["MsgNoSpace"])
		-- return
	-- end
	
	local nEvent = tOldForNewServiceAct_Stc[5000000]["EventType"]
	local nType = tOldForNewServiceAct_Stc[5000000]["DataType"]
	local nMaxData= tOldForNewServiceAct_Stc[5000000]["Data"]
	
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	end
	--是否
	if Get_UserStatisticValue(nEvent,nType) >= nMaxData then
		return 
	end
	
	
	
	
	if RewardTemplate_UseItem(tOldForNewServiceAct_ConvertItem[5000000]) then 
		--打掩码
		Task_AddStatistic(nEvent,nType,1,1)
		Task_SetStcTimestamp(nEvent,nType,0)
		
		local nRewardNum = tOldForNewServiceAct_Cont["ItemNum"][5000000]
		local sItemName = tOldForNewServiceAct_Text["Money"] 
		local sText=string.format(tOldForNewServiceAct_Text["TalkReward"],sItemName,nRewardNum)
		User_TalkChannel2005(sText)
		LinkNpcGossipFunc_New(22975,"1-3")
	end
	
	
	
end

--2-1参数
function OldForNewServiceAct_ArgumentNum(nNpcId,nItemId1,nItemId2,nItemId3,nItemId4,nNum)
	--活动过期
	if not Sys_ChkFullTime(tOldForNewServiceAct_Cont["ActTime"]) then
		return
	end
	
	-- tNpcGossip[nNpcId]["Text221"] = string.format(tOldForNewServiceAct_Text[nNpcId]["Text211"],nNum)
	
	tNpcGossip[nNpcId]["OptionFunc211"] = "OldForNewServiceAct_HandInItem</N>"..nItemId1.."</N>"..nNum
	tNpcGossip[nNpcId]["OptionFunc212"] = "OldForNewServiceAct_HandInItem</N>"..nItemId2.."</N>"..nNum
	tNpcGossip[nNpcId]["OptionFunc213"] = "OldForNewServiceAct_HandInItem</N>"..nItemId3.."</N>"..nNum
	tNpcGossip[nNpcId]["OptionFunc214"] = "OldForNewServiceAct_HandInItem</N>"..nItemId4.."</N>"..nNum
	tNpcGossip[nNpcId]["OptionPoint215"] = "1-3"
	tNpcGossip[nNpcId]["OptionChkFunc211"] = function ()
		return OldForNewServiceAct_ChkNpcOption(nItemId1,nNum) 
	end
	tNpcGossip[nNpcId]["OptionChkFunc212"] = function ()
		return OldForNewServiceAct_ChkNpcOption(nItemId2,nNum)
	end
	tNpcGossip[nNpcId]["OptionChkFunc213"] = function ()
		return OldForNewServiceAct_ChkNpcOption(nItemId3,nNum) 
	end
	tNpcGossip[nNpcId]["OptionChkFunc214"] = function ()
		return OldForNewServiceAct_ChkNpcOption(nItemId4,nNum) 
	end
	
	LinkNpcGossipFunc_New(nNpcId,"2-1")
	
end

function OldForNewServiceAct_NpcMain(nNpcId)

	--活动前
	if Sys_ChkFullTime(tOldForNewServiceAct_Cont["BefTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end
	
	
	--活动后
	if not Sys_ChkFullTime(tOldForNewServiceAct_Cont["ActTime"])then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end


	User_OpenExchangeShop(nNpcId)
end

---------------------------------------物品逻辑---------------------------------------------
--过期删除物品
function OldForNewServiceAct_UseDeletItem(nItemId)

	if not Sys_ChkFullTime(tOldForNewServiceAct_Cont["ActTime"]) then
		local nItemNum = Get_CountItemType(nItemId,0)
		for i = 1,nItemNum do
			RewardTemplate_UseItem(tOldForNewServiceAct_RewandItem[nItemId][1])
		end
		
		User_TalkChannel2005(string.format(tOldForNewServiceAct_Text["TimeOutChi"],nItemNum,nItemNum*5))
		return
	end
	
	local nMapId = tOldForNewServiceAct_position["MapId"]
	local nPosX = tOldForNewServiceAct_position["PosX"]
	local nPosY = tOldForNewServiceAct_position["PosY"]
	local nGotoNpcId = tOldForNewServiceAct_position["NpcId"]
	Sys_GotoSomeWhere(nPosX,nPosY,nMapId,nGotoNpcId)
	
end
---------------------------------------NPC配置---------------------------------------------
-- 里克斯
tNpcFace[1173] = 34
tNpcFace[1174] = 129
tNpcGossip[22975] = tNpcGossip[22975] or DefaultNpc:new{}
tNpcGossip[22975]["OptionHidden"] = 1
tNpcGossip[22975]["DialogueText"] = tOldForNewServiceAct_Text[22975]

--活动前
tNpcGossip[22975]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[22975]["tOption1-1"] = {111}
tNpcGossip[22975]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tOldForNewServiceAct_Cont["BefTime"])
end

--活动后
tNpcGossip[22975]["Text1-2"] = {121}
tNpcGossip[22975]["tOption1-2"] = {121}
tNpcGossip[22975]["ChkFunc1-2"] = function ()
	
	return not Sys_ChkFullTime(tOldForNewServiceAct_Cont["ActTime"])
end

--活动中
tNpcGossip[22975]["Text1-3"] = {131,132,133,134,135,136,137,138,139,1310,1311,1312,1313,1314,1315,1316}
tNpcGossip[22975]["tOption1-3"] = {131,132,133,134,135,136,137,138,139,1310,1311,1312,1313,1314,1315,1316}
tNpcGossip[22975]["OptionFunc131"] = "OldForNewServiceAct_ArgumentNum</N>22975</N>754001</N>751001</N>752001</N>753001</N>1"
tNpcGossip[22975]["OptionFunc132"] = "OldForNewServiceAct_ArgumentNum</N>22975</N>754003</N>751003</N>752003</N>753003</N>1"
tNpcGossip[22975]["OptionFunc133"] = "OldForNewServiceAct_ArgumentNum</N>22975</N>754009</N>751009</N>752009</N>753009</N>1"
tNpcGossip[22975]["OptionFunc134"] = "OldForNewServiceAct_ArgumentNum</N>22975</N>754099</N>751099</N>752099</N>753099</N>1"
-- tNpcGossip[22975]["OptionFunc135"] = "OldForNewServiceAct_HandInItem</N>22975</N>5"
-- tNpcGossip[22975]["OptionFunc136"] = "OldForNewServiceAct_HandInItem</N>22975</N>6"
tNpcGossip[22975]["OptionPoint135"] = "2-2"
tNpcGossip[22975]["OptionPoint136"] = "2-3"

tNpcGossip[22975]["OptionFunc137"] = "OldForNewServiceAct_HandInItem</N>1080001</N>1"
tNpcGossip[22975]["OptionFunc138"] = "OldForNewServiceAct_HandInItem</N>3302769</N>1"
tNpcGossip[22975]["OptionFunc139"] = "OldForNewServiceAct_HandInItem</N>723903</N>20"
tNpcGossip[22975]["OptionFunc1310"] = "OldForNewServiceAct_HandInItem</N>756001</N>1"
tNpcGossip[22975]["OptionFunc1311"] = "OldForNewServiceAct_HandInItem</N>720828</N>1"
tNpcGossip[22975]["OptionFunc1312"] = "OldForNewServiceAct_HandInItem</N>723727</N>1"
tNpcGossip[22975]["OptionFunc1313"] = "OldForNewServiceAct_HandInItem</N>721261</N>1"
tNpcGossip[22975]["OptionFunc1314"] = "OldForNewServiceAct_HandInMoney"
tNpcGossip[22975]["OptionFunc1315"] = "OldForNewServiceAct_HandInItem</N>1088000</N>1"
tNpcGossip[22975]["OptionChkFunc131"] = function ()
	if OldForNewServiceAct_ChkNpcOption(754001,1) then
		
		return true
	end
	if OldForNewServiceAct_ChkNpcOption(751001,1) then
		return true
	end
	if OldForNewServiceAct_ChkNpcOption(752001,1) then
		return true
	end
	if OldForNewServiceAct_ChkNpcOption(753001,1) then
		return true
	end
	return false
end
tNpcGossip[22975]["OptionChkFunc132"] = function ()
	
	if OldForNewServiceAct_ChkNpcOption(754003,1) then
		return true
	end
	if OldForNewServiceAct_ChkNpcOption(751003,1) then
		return true
	end
	if OldForNewServiceAct_ChkNpcOption(752003,1) then
		return true
	end
	if OldForNewServiceAct_ChkNpcOption(753003,1) then
		return true
	end
	return false
end
tNpcGossip[22975]["OptionChkFunc133"] = function ()
	if OldForNewServiceAct_ChkNpcOption(754009,1) then
		return true
	end
	if OldForNewServiceAct_ChkNpcOption(751009,1) then
		return true
	end
	if OldForNewServiceAct_ChkNpcOption(752009,1) then
		return true
	end
	if OldForNewServiceAct_ChkNpcOption(753009,1) then
		return true
	end
	return false
end
tNpcGossip[22975]["OptionChkFunc134"] = function ()
	if OldForNewServiceAct_ChkNpcOption(754099,1) then
		return true
	end
	if OldForNewServiceAct_ChkNpcOption(751099,1) then
		return true
	end
	if OldForNewServiceAct_ChkNpcOption(752099,1) then
		return true
	end
	if OldForNewServiceAct_ChkNpcOption(753099,1) then
		return true
	end
	return false
end
tNpcGossip[22975]["OptionChkFunc135"] = function ()
	
	if OldForNewServiceAct_ChkNpcOption(700101,1) then
		return true
	end
	if OldForNewServiceAct_ChkNpcOption(700121,1) then
		return true
	end
	return false
	
	
end

tNpcGossip[22975]["OptionChkFunc136"] = function ()

	if OldForNewServiceAct_ChkNpcOption(700001,5) then
		return true
	end
	if OldForNewServiceAct_ChkNpcOption(700011,5) then
		return true
	end
	if OldForNewServiceAct_ChkNpcOption(700021,5) then
		return true
	end
	if OldForNewServiceAct_ChkNpcOption(700031,5) then
		return true
	end
	if OldForNewServiceAct_ChkNpcOption(700041,5) then
		return true
	end
	if OldForNewServiceAct_ChkNpcOption(700051,5) then
		return true
	end
	if OldForNewServiceAct_ChkNpcOption(700061,5) then
		return true
	end

	return false
end

tNpcGossip[22975]["OptionChkFunc137"] = function ()
	return OldForNewServiceAct_ChkNpcOption(1080001,1)
end
tNpcGossip[22975]["OptionChkFunc138"] = function ()
	return OldForNewServiceAct_ChkNpcOption(3302769,1)
end
tNpcGossip[22975]["OptionChkFunc139"] = function ()
	return OldForNewServiceAct_ChkNpcOption(723903,20)
end
tNpcGossip[22975]["OptionChkFunc1310"] = function ()
	return OldForNewServiceAct_ChkNpcOption(756001,1)
end
tNpcGossip[22975]["OptionChkFunc1311"] = function ()
	return OldForNewServiceAct_ChkNpcOption(720828,1)
end
tNpcGossip[22975]["OptionChkFunc1312"] = function ()
	return OldForNewServiceAct_ChkNpcOption(723727,1)
end
tNpcGossip[22975]["OptionChkFunc1313"] = function ()
	return OldForNewServiceAct_ChkNpcOption(721261,1)
end
tNpcGossip[22975]["OptionChkFunc1314"] = function ()
	
	return OldForNewServiceAct_ChkNpcOptionMoney()
end
tNpcGossip[22975]["OptionChkFunc1315"] = function ()
	return OldForNewServiceAct_ChkNpcOption(1088000,1)
end

tNpcGossip[22975]["ChkFunc1-3"] = function ()
	return Sys_ChkFullTime(tOldForNewServiceAct_Cont["ActTime"])
end


tNpcGossip[22975]["Text2-1"] = {211}
tNpcGossip[22975]["tOption2-1"] = {211,212,213,214,215}
-- tNpcGossip[22975]["OptionFunc211"] = "OldForNewServiceAct_ArgumentNum</N>754001</N>1"
-- tNpcGossip[22975]["OptionFunc212"] = "OldForNewServiceAct_ArgumentNum</N>751001</N>1"
-- tNpcGossip[22975]["OptionFunc213"] = "OldForNewServiceAct_ArgumentNum</N>752001</N>1"
-- tNpcGossip[22975]["OptionFunc214"] = "OldForNewServiceAct_ArgumentNum</N>753001</N>1"
-- tNpcGossip[22975]["OptionPoint215"] = "1-1"
-- tNpcGossip[22975]["OptionChkFunc211"] = function ()
	-- return OldForNewServiceAct_ChkNpcOption(754001,1) 
-- end
-- tNpcGossip[22975]["OptionChkFunc212"] = function ()
	-- return OldForNewServiceAct_ChkNpcOption(751001,1)
-- end
-- tNpcGossip[22975]["OptionChkFunc213"] = function ()
	-- return OldForNewServiceAct_ChkNpcOption(752001,1) 
-- end
-- tNpcGossip[22975]["OptionChkFunc214"] = function ()
	-- return OldForNewServiceAct_ChkNpcOption(753001,1) 
-- end

tNpcGossip[22975]["Text2-2"] = {221}
tNpcGossip[22975]["tOption2-2"] = {221,222,223,224,225}
tNpcGossip[22975]["OptionFunc221"] = "OldForNewServiceAct_HandInItem</N>700101</N>1"
tNpcGossip[22975]["OptionFunc222"] = "OldForNewServiceAct_HandInItem</N>700121</N>1"
tNpcGossip[22975]["OptionPoint223"] = "1-1"
tNpcGossip[22975]["OptionChkFunc221"] = function ()
	return OldForNewServiceAct_ChkNpcOption(700101,1) 
end
tNpcGossip[22975]["OptionChkFunc222"] = function ()
	return OldForNewServiceAct_ChkNpcOption(700121,1)
end

tNpcGossip[22975]["Text2-3"] = {231}
tNpcGossip[22975]["tOption2-3"] = {231,232,233,234,235,236,237,238}
tNpcGossip[22975]["OptionFunc231"] = "OldForNewServiceAct_HandInItem</N>700041</N>5"
tNpcGossip[22975]["OptionFunc232"] = "OldForNewServiceAct_HandInItem</N>700031</N>5"
tNpcGossip[22975]["OptionFunc233"] = "OldForNewServiceAct_HandInItem</N>700021</N>5"
tNpcGossip[22975]["OptionFunc234"] = "OldForNewServiceAct_HandInItem</N>700011</N>5"
tNpcGossip[22975]["OptionFunc235"] = "OldForNewServiceAct_HandInItem</N>700001</N>5"
tNpcGossip[22975]["OptionFunc236"] = "OldForNewServiceAct_HandInItem</N>700051</N>5"
tNpcGossip[22975]["OptionFunc237"] = "OldForNewServiceAct_HandInItem</N>700061</N>5"
tNpcGossip[22975]["OptionPoint238"] = "1-1"
tNpcGossip[22975]["OptionChkFunc231"] = function ()
	return OldForNewServiceAct_ChkNpcOption(700041,5) 
end
tNpcGossip[22975]["OptionChkFunc232"] = function ()
	return OldForNewServiceAct_ChkNpcOption(700031,5)
end
tNpcGossip[22975]["OptionChkFunc233"] = function ()
	return OldForNewServiceAct_ChkNpcOption(700021,5) 
end
tNpcGossip[22975]["OptionChkFunc234"] = function ()
	return OldForNewServiceAct_ChkNpcOption(700011,5)
end
tNpcGossip[22975]["OptionChkFunc235"] = function ()
	return OldForNewServiceAct_ChkNpcOption(700001,5) 
end
tNpcGossip[22975]["OptionChkFunc236"] = function ()
	return OldForNewServiceAct_ChkNpcOption(700051,5)
end
tNpcGossip[22975]["OptionChkFunc237"] = function ()
	return OldForNewServiceAct_ChkNpcOption(700061,5)
end

tNpcGossip[22976] = tNpcGossip[22976] or DefaultNpc:new{}
tNpcGossip[22976]["OptionHidden"] = 1
tNpcGossip[22976]["DialogueText"] = tOldForNewServiceAct_Text[22976]

--活动前
tNpcGossip[22976]["Text1-1"] = {111,112,113}
tNpcGossip[22976]["tOption1-1"] = {111}


--活动后
tNpcGossip[22976]["Text1-2"] = {121}
tNpcGossip[22976]["tOption1-2"] = {121}


--------------------------------物品模板--------------------------------------
tItemFace[3309111] = 1592

tItem[3309112] = tItem[3309112] or {}
tItem[3309112]["Function"] = function(nItemId,sItemName)
	OldForNewServiceAct_UseDeletItem(nItemId)
end

tItem[3309117] = tItem[3309117] or {}
tItem[3309117]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItem(tOldForNewServiceAct_RewandItem[nItemId][1])
end

tItem[3309118] = tItem[3309117] or {}
tItem[3309119] = tItem[3309117] or {}
tItem[3309120] = tItem[3309117] or {}
tItem[3309121] = tItem[3309117] or {}
tItem[3309122] = tItem[3309117] or {}
tItem[3309123] = tItem[3309117] or {}
tItem[3309124] = tItem[3309117] or {}
tItem[3309125] = tItem[3309117] or {}
tItem[3309126] = tItem[3309117] or {}
tItem[3309127] = tItem[3309117] or {}
tItem[3309128] = tItem[3309117] or {}
tItem[3309129] = tItem[3309117] or {}
tItem[3309130] = tItem[3309117] or {}
tItem[3309131] = tItem[3309117] or {}
tItem[3309132] = tItem[3309117] or {}



tItem[3309113] = tItem[3309113] or {}
tItem[3309113]["Function"] = function (nItemId,sItemName)
	RouletteMould_Main(3982)
end

tItem[3309114] = tItem[3309114] or {}
tItem[3309114]["Function"] = function (nItemId,sItemName)
	RouletteMould_Main(3983)
end

tItem[3309115] = tItem[3309115] or {}
tItem[3309115]["Function"] = function (nItemId,sItemName)
	RouletteMould_Main(3984)
end

tItem[3309116] = tItem[3309116] or {}
tItem[3309116]["Function"] = function (nItemId,sItemName)
	RouletteMould_Main(3985)
end
