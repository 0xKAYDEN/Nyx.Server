------------------------------------------------------------------------------------
--Name:		[征服][任务脚本]玄宝功能NPC制作
--Purpose:	玄宝功能NPC制作
--Creator: 	吴文鑫
--Created:	2018/01/05
------------------------------------------------------------------------------------

-- 命名前缀
--XuanBaoFuncNpc_
--12000977

-- 常量表
local tXuanBaoFuncNpc_Constant = {}
tXuanBaoFuncNpc_Constant["ShuXing"] = "http://co.99.com/guide/event/2018/relic/"

tXuanBaoFuncNpc_Constant["NeedSourceChip"] = 100
tXuanBaoFuncNpc_Constant["NeedSpace"] = 1

tXuanBaoFuncNpc_Constant["SourceChipId"] = 3306885
tXuanBaoFuncNpc_Constant["CastingEffect"] = "zf2-e128"
tXuanBaoFuncNpc_Constant["CastingEffect1"] = "task060"
tXuanBaoFuncNpc_Constant["CastingEffect2"] = "dgbos_addr"



tXuanBaoFuncNpc_Constant["Nine"] = 3303099
tXuanBaoFuncNpc_Constant["NeedNine"] = 30
tXuanBaoFuncNpc_Constant["Soul"] = 3307142
tXuanBaoFuncNpc_Constant["SoulSpace"] = 1

tXuanBaoFuncNpc_Constant["TaskId"] = {}
tXuanBaoFuncNpc_Constant["TaskId"][1] = 3943
tXuanBaoFuncNpc_Constant["TaskId"][2] = 3945


tXuanBaoFuncNpc_Constant["Log"] = {}
tXuanBaoFuncNpc_Constant["Log"]["GetXuanBao"] = "0,0,%d,%d,12000977,2,%s,1"
tXuanBaoFuncNpc_Constant["Log"]["DropXuanBao"] = "0,0,%d,1,12000977,2,%d,1"
tXuanBaoFuncNpc_Constant["Log"]["RepairXuanBao"] = "0,0,%d,%d,12000977,3,%d,%d"



local 	tXuanBaoFuncNpc_Stc = {}
	tXuanBaoFuncNpc_Stc["EventType"] = 172
	tXuanBaoFuncNpc_Stc["DataType"] = 03

--获得的属性条数
local tXuanBaoFuncNpc_Attr = {}
tXuanBaoFuncNpc_Attr[22569] = {}
tXuanBaoFuncNpc_Attr[22569]["AmountLimit"] = 0
tXuanBaoFuncNpc_Attr[22569]["AttributeNum"] = 0
tXuanBaoFuncNpc_Attr[22569]["MinNum"] = 3
tXuanBaoFuncNpc_Attr[22569]["MaxNum"] = 5

tXuanBaoFuncNpc_Attr[3307116] = {}
tXuanBaoFuncNpc_Attr[3307116]["NeedScrap"] = 3
tXuanBaoFuncNpc_Attr[3307116]["NeedSpace"] = 1
tXuanBaoFuncNpc_Attr[3307116]["XuanBaoId"] = 4100002
tXuanBaoFuncNpc_Attr[3307116]["Monopoly"] = 0
tXuanBaoFuncNpc_Attr[3307116]["AmountLimit"] = 0
tXuanBaoFuncNpc_Attr[3307116]["AttributeNum"] = 5

tXuanBaoFuncNpc_Attr[3992] = {}
tXuanBaoFuncNpc_Attr[3992]["AmountLimit"] = 0
tXuanBaoFuncNpc_Attr[3992]["AttributeNum"] = 0
tXuanBaoFuncNpc_Attr[3992]["MinNum"] = 3
tXuanBaoFuncNpc_Attr[3992]["MaxNum"] = 5

local tXuanBaoFuncNpc_UseItem = {}
tXuanBaoFuncNpc_UseItem[1] = {}
tXuanBaoFuncNpc_UseItem[1][1] = 720027
tXuanBaoFuncNpc_UseItem[1][2] = 3302769
-- tXuanBaoFuncNpc_UseItem[1][3] = 3304828


local tXuanBaoFuncNpc_Award = {}
	tXuanBaoFuncNpc_Award[22569] = {}
	tXuanBaoFuncNpc_Award[22569]["RewardItem"] = {}
	tXuanBaoFuncNpc_Award[22569]["RewardItem"][1] = {}
	tXuanBaoFuncNpc_Award[22569]["RewardItem"][1]["Id"] = tXuanBaoFuncNpc_Constant["Soul"]
	tXuanBaoFuncNpc_Award[22569]["RewardItem"][1]["Attr"] = "0 1"
	tXuanBaoFuncNpc_Award[22569]["LogId"] = 12000977
	tXuanBaoFuncNpc_Award[22569]["DeleteItem"]={}
	tXuanBaoFuncNpc_Award[22569]["DeleteItem"][1]={}
	tXuanBaoFuncNpc_Award[22569]["DeleteItem"][1]["Id"]=tXuanBaoFuncNpc_Constant["Nine"]
	tXuanBaoFuncNpc_Award[22569]["DeleteItem"][1]["ItemNum"] = tXuanBaoFuncNpc_Constant["NeedNine"]
	-- tXuanBaoFuncNpc_Award[22569]["RewardEffect"] = {}
	-- tXuanBaoFuncNpc_Award[22569]["RewardEffect"]["Effect"] = "WarFlagEscortBegin"
	tXuanBaoFuncNpc_Award[22569]["RewardNoNeedTip"] = 1
	
	
	tXuanBaoFuncNpc_Award[22569]["En"] = {}
	tXuanBaoFuncNpc_Award[22569]["En"]["RewardItem"] = {}
	tXuanBaoFuncNpc_Award[22569]["En"]["RewardItem"][1] = {}
	tXuanBaoFuncNpc_Award[22569]["En"]["RewardItem"][1]["Id"] = tXuanBaoFuncNpc_Constant["Soul"]
	tXuanBaoFuncNpc_Award[22569]["En"]["RewardItem"][1]["Attr"] = "0 1"
	tXuanBaoFuncNpc_Award[22569]["En"]["LogId"] = 12000977
	tXuanBaoFuncNpc_Award[22569]["En"]["UseSliver"] = 50000
	tXuanBaoFuncNpc_Award[22569]["En"]["RewardNoNeedTip"] = 1
	
	
	
	
	
	
	
	
	
	
	-- 1个大流星卷（100个流星）	
--                          720027	0	0		流星卷	
	tXuanBaoFuncNpc_Award[3307142] = {}
	tXuanBaoFuncNpc_Award[3307142][720027] = {}
	tXuanBaoFuncNpc_Award[3307142][720027]["RewardRXuanB"] = {}
	tXuanBaoFuncNpc_Award[3307142][720027]["RewardRXuanB"][1] = {}
	tXuanBaoFuncNpc_Award[3307142][720027]["RewardRXuanB"][1]["Id"] = 0
	tXuanBaoFuncNpc_Award[3307142][720027]["RewardRXuanB"][1]["Monopoly"] = 0
	tXuanBaoFuncNpc_Award[3307142][720027]["LogId"] = 12000977
	tXuanBaoFuncNpc_Award[3307142][720027]["DeleteItem"]={}
	tXuanBaoFuncNpc_Award[3307142][720027]["DeleteItem"][1]={}
	tXuanBaoFuncNpc_Award[3307142][720027]["DeleteItem"][1]["Id"]=720027
	tXuanBaoFuncNpc_Award[3307142][720027]["DeleteItem"][1]["ItemNum"] = 10
	tXuanBaoFuncNpc_Award[3307142][720027]["DeleteItem"][2]={}
	tXuanBaoFuncNpc_Award[3307142][720027]["DeleteItem"][2]["Id"]=3307142
	tXuanBaoFuncNpc_Award[3307142][720027]["DeleteItem"][2]["ItemNum"] = 1
	-- tXuanBaoFuncNpc_Award[3307142][720027]["RewardEffect"] = {}
	-- tXuanBaoFuncNpc_Award[3307142][720027]["RewardEffect"]["Effect"] = "WarFlagEscortBegin"
	tXuanBaoFuncNpc_Award[3307142][720027]["RewardNoNeedTip"] = 1
	
-- 							3302769	0	10000	流星卷大礼包		礼品	精美的礼包，内有10个流星卷，点击右键打开。
	tXuanBaoFuncNpc_Award[3307142][3302769] = {}
	tXuanBaoFuncNpc_Award[3307142][3302769]["RewardRXuanB"] = {}
	tXuanBaoFuncNpc_Award[3307142][3302769]["RewardRXuanB"][1] = {}
	tXuanBaoFuncNpc_Award[3307142][3302769]["RewardRXuanB"][1]["Id"] = 0
	tXuanBaoFuncNpc_Award[3307142][3302769]["RewardRXuanB"][1]["Monopoly"] = 0
	tXuanBaoFuncNpc_Award[3307142][3302769]["LogId"] = 12000977
	tXuanBaoFuncNpc_Award[3307142][3302769]["DeleteItem"]={}
	tXuanBaoFuncNpc_Award[3307142][3302769]["DeleteItem"][1]={}
	tXuanBaoFuncNpc_Award[3307142][3302769]["DeleteItem"][1]["Id"]=3302769
	tXuanBaoFuncNpc_Award[3307142][3302769]["DeleteItem"][1]["ItemNum"] = 1
	tXuanBaoFuncNpc_Award[3307142][3302769]["DeleteItem"][2]={}
	tXuanBaoFuncNpc_Award[3307142][3302769]["DeleteItem"][2]["Id"]=3307142
	tXuanBaoFuncNpc_Award[3307142][3302769]["DeleteItem"][2]["ItemNum"] = 1
	-- tXuanBaoFuncNpc_Award[3307142][3302769]["RewardEffect"] = {}
	-- tXuanBaoFuncNpc_Award[3307142][3302769]["RewardEffect"]["Effect"] = "WarFlagEscortBegin"
	tXuanBaoFuncNpc_Award[3307142][3302769]["RewardNoNeedTip"] = 1
	
-- 							3304828	9	10000	流星卷大礼包		礼品	精美的礼包，内有10个流星卷，点击右键打开。
	tXuanBaoFuncNpc_Award[3307142][3304828] = {}
	tXuanBaoFuncNpc_Award[3307142][3304828]["RewardRXuanB"] = {}
	tXuanBaoFuncNpc_Award[3307142][3304828]["RewardRXuanB"][1] = {}
	tXuanBaoFuncNpc_Award[3307142][3304828]["RewardRXuanB"][1]["Id"] = 0
	tXuanBaoFuncNpc_Award[3307142][3304828]["RewardRXuanB"][1]["Monopoly"] = 0
	tXuanBaoFuncNpc_Award[3307142][3304828]["LogId"] = 12000977
	tXuanBaoFuncNpc_Award[3307142][3304828]["DeleteItem"]={}
	tXuanBaoFuncNpc_Award[3307142][3304828]["DeleteItem"][1]={}
	tXuanBaoFuncNpc_Award[3307142][3304828]["DeleteItem"][1]["Id"]=3304828
	tXuanBaoFuncNpc_Award[3307142][3304828]["DeleteItem"][1]["ItemNum"] = 1
	tXuanBaoFuncNpc_Award[3307142][3304828]["DeleteItem"][2]={}
	tXuanBaoFuncNpc_Award[3307142][3304828]["DeleteItem"][2]["Id"]=3307142
	tXuanBaoFuncNpc_Award[3307142][3304828]["DeleteItem"][2]["ItemNum"] = 1
	-- tXuanBaoFuncNpc_Award[3307142][3304828]["RewardEffect"] = {}
	-- tXuanBaoFuncNpc_Award[3307142][3304828]["RewardEffect"]["Effect"] = "WarFlagEscortBegin"
	tXuanBaoFuncNpc_Award[3307142][3304828]["RewardNoNeedTip"] = 1
	
-- 1个龙珠					1088000	0	0		龙珠
	tXuanBaoFuncNpc_Award[3307142][1088000] = {}
	tXuanBaoFuncNpc_Award[3307142][1088000]["RewardRXuanB"] = {}
	tXuanBaoFuncNpc_Award[3307142][1088000]["RewardRXuanB"][1] = {}
	tXuanBaoFuncNpc_Award[3307142][1088000]["RewardRXuanB"][1]["Id"] = 0
	tXuanBaoFuncNpc_Award[3307142][1088000]["RewardRXuanB"][1]["Monopoly"] = 0
	tXuanBaoFuncNpc_Award[3307142][1088000]["LogId"] = 12000977
	tXuanBaoFuncNpc_Award[3307142][1088000]["DeleteItem"]={}
	tXuanBaoFuncNpc_Award[3307142][1088000]["DeleteItem"][1]={}
	tXuanBaoFuncNpc_Award[3307142][1088000]["DeleteItem"][1]["Id"]=1088000
	tXuanBaoFuncNpc_Award[3307142][1088000]["DeleteItem"][1]["ItemNum"] = 1
	tXuanBaoFuncNpc_Award[3307142][1088000]["DeleteItem"][2]={}
	tXuanBaoFuncNpc_Award[3307142][1088000]["DeleteItem"][2]["Id"]=3307142
	tXuanBaoFuncNpc_Award[3307142][1088000]["DeleteItem"][2]["ItemNum"] = 1
	-- tXuanBaoFuncNpc_Award[3307142][1088000]["RewardEffect"] = {}
	-- tXuanBaoFuncNpc_Award[3307142][1088000]["RewardEffect"]["Effect"] = "WarFlagEscortBegin"
	tXuanBaoFuncNpc_Award[3307142][1088000]["RewardNoNeedTip"] = 1	
	
-- 30个经验复原丹			3302881	0	10000	经验复原丹
	tXuanBaoFuncNpc_Award[3307142][3302881] = {}
	tXuanBaoFuncNpc_Award[3307142][3302881]["RewardRXuanB"] = {}
	tXuanBaoFuncNpc_Award[3307142][3302881]["RewardRXuanB"][1] = {}
	tXuanBaoFuncNpc_Award[3307142][3302881]["RewardRXuanB"][1]["Id"] = 0
	tXuanBaoFuncNpc_Award[3307142][3302881]["RewardRXuanB"][1]["Monopoly"] = 0
	tXuanBaoFuncNpc_Award[3307142][3302881]["LogId"] = 12000977
	tXuanBaoFuncNpc_Award[3307142][3302881]["DeleteItem"]={}
	tXuanBaoFuncNpc_Award[3307142][3302881]["DeleteItem"][1]={}
	tXuanBaoFuncNpc_Award[3307142][3302881]["DeleteItem"][1]["Id"]=3302881
	tXuanBaoFuncNpc_Award[3307142][3302881]["DeleteItem"][1]["ItemNum"] = 30
	tXuanBaoFuncNpc_Award[3307142][3302881]["DeleteItem"][2]={}
	tXuanBaoFuncNpc_Award[3307142][3302881]["DeleteItem"][2]["Id"]=3307142
	tXuanBaoFuncNpc_Award[3307142][3302881]["DeleteItem"][2]["ItemNum"] = 1
	-- tXuanBaoFuncNpc_Award[3307142][3302881]["RewardEffect"] = {}
	-- tXuanBaoFuncNpc_Award[3307142][3302881]["RewardEffect"]["Effect"] = "WarFlagEscortBegin"
	tXuanBaoFuncNpc_Award[3307142][3302881]["RewardNoNeedTip"] = 1	
-- 10个强效护心丹			3002030	9	10000	强效护心丹
	tXuanBaoFuncNpc_Award[3307142][3002030] = {}
	tXuanBaoFuncNpc_Award[3307142][3002030]["RewardRXuanB"] = {}
	tXuanBaoFuncNpc_Award[3307142][3002030]["RewardRXuanB"][1] = {}
	tXuanBaoFuncNpc_Award[3307142][3002030]["RewardRXuanB"][1]["Id"] = 0
	tXuanBaoFuncNpc_Award[3307142][3002030]["RewardRXuanB"][1]["Monopoly"] = 0
	tXuanBaoFuncNpc_Award[3307142][3002030]["LogId"] = 12000977
	tXuanBaoFuncNpc_Award[3307142][3002030]["DeleteItem"]={}
	tXuanBaoFuncNpc_Award[3307142][3002030]["DeleteItem"][1]={}
	tXuanBaoFuncNpc_Award[3307142][3002030]["DeleteItem"][1]["Id"]=3002030
	tXuanBaoFuncNpc_Award[3307142][3002030]["DeleteItem"][1]["ItemNum"] = 10
	tXuanBaoFuncNpc_Award[3307142][3002030]["DeleteItem"][2]={}
	tXuanBaoFuncNpc_Award[3307142][3002030]["DeleteItem"][2]["Id"]=3307142
	tXuanBaoFuncNpc_Award[3307142][3002030]["DeleteItem"][2]["ItemNum"] = 1
	-- tXuanBaoFuncNpc_Award[3307142][3002030]["RewardEffect"] = {}
	-- tXuanBaoFuncNpc_Award[3307142][3002030]["RewardEffect"]["Effect"] = "WarFlagEscortBegin"
	tXuanBaoFuncNpc_Award[3307142][3002030]["RewardNoNeedTip"] = 1	
-- 15个通神丹				3003125	0	10000	通神丹
	tXuanBaoFuncNpc_Award[3307142][3003125] = {}
	tXuanBaoFuncNpc_Award[3307142][3003125]["RewardRXuanB"] = {}
	tXuanBaoFuncNpc_Award[3307142][3003125]["RewardRXuanB"][1] = {}
	tXuanBaoFuncNpc_Award[3307142][3003125]["RewardRXuanB"][1]["Id"] = 0
	tXuanBaoFuncNpc_Award[3307142][3003125]["RewardRXuanB"][1]["Monopoly"] = 0
	tXuanBaoFuncNpc_Award[3307142][3003125]["LogId"] = 12000977
	tXuanBaoFuncNpc_Award[3307142][3003125]["DeleteItem"]={}
	tXuanBaoFuncNpc_Award[3307142][3003125]["DeleteItem"][1]={}
	tXuanBaoFuncNpc_Award[3307142][3003125]["DeleteItem"][1]["Id"]=3003125
	tXuanBaoFuncNpc_Award[3307142][3003125]["DeleteItem"][1]["ItemNum"] = 15
	tXuanBaoFuncNpc_Award[3307142][3003125]["DeleteItem"][2]={}
	tXuanBaoFuncNpc_Award[3307142][3003125]["DeleteItem"][2]["Id"]=3307142
	tXuanBaoFuncNpc_Award[3307142][3003125]["DeleteItem"][2]["ItemNum"] = 1
	-- tXuanBaoFuncNpc_Award[3307142][3003125]["RewardEffect"] = {}
	-- tXuanBaoFuncNpc_Award[3307142][3003125]["RewardEffect"]["Effect"] = "WarFlagEscortBegin"
	tXuanBaoFuncNpc_Award[3307142][3003125]["RewardNoNeedTip"] = 1	
-- 15个免费强炼丹			3003124	0	10000	免费强炼丹
	tXuanBaoFuncNpc_Award[3307142][3003124] = {}
	tXuanBaoFuncNpc_Award[3307142][3003124]["RewardRXuanB"] = {}
	tXuanBaoFuncNpc_Award[3307142][3003124]["RewardRXuanB"][1] = {}
	tXuanBaoFuncNpc_Award[3307142][3003124]["RewardRXuanB"][1]["Id"] = 0
	tXuanBaoFuncNpc_Award[3307142][3003124]["RewardRXuanB"][1]["Monopoly"] = 0
	tXuanBaoFuncNpc_Award[3307142][3003124]["LogId"] = 12000977
	tXuanBaoFuncNpc_Award[3307142][3003124]["DeleteItem"]={}
	tXuanBaoFuncNpc_Award[3307142][3003124]["DeleteItem"][1]={}
	tXuanBaoFuncNpc_Award[3307142][3003124]["DeleteItem"][1]["Id"]=3003124
	tXuanBaoFuncNpc_Award[3307142][3003124]["DeleteItem"][1]["ItemNum"] = 15
	tXuanBaoFuncNpc_Award[3307142][3003124]["DeleteItem"][2]={}
	tXuanBaoFuncNpc_Award[3307142][3003124]["DeleteItem"][2]["Id"]=3307142
	tXuanBaoFuncNpc_Award[3307142][3003124]["DeleteItem"][2]["ItemNum"] = 1
	-- tXuanBaoFuncNpc_Award[3307142][3003124]["RewardEffect"] = {}
	-- tXuanBaoFuncNpc_Award[3307142][3003124]["RewardEffect"]["Effect"] = "WarFlagEscortBegin"
	tXuanBaoFuncNpc_Award[3307142][3003124]["RewardNoNeedTip"] = 1	
-- 3个究极通神丹			3003126	0	10000	究极通神丹
	tXuanBaoFuncNpc_Award[3307142][3003126] = {}
	tXuanBaoFuncNpc_Award[3307142][3003126]["RewardRXuanB"] = {}
	tXuanBaoFuncNpc_Award[3307142][3003126]["RewardRXuanB"][1] = {}
	tXuanBaoFuncNpc_Award[3307142][3003126]["RewardRXuanB"][1]["Id"] = 0
	tXuanBaoFuncNpc_Award[3307142][3003126]["RewardRXuanB"][1]["Monopoly"] = 0
	tXuanBaoFuncNpc_Award[3307142][3003126]["LogId"] = 12000977
	tXuanBaoFuncNpc_Award[3307142][3003126]["DeleteItem"]={}
	tXuanBaoFuncNpc_Award[3307142][3003126]["DeleteItem"][1]={}
	tXuanBaoFuncNpc_Award[3307142][3003126]["DeleteItem"][1]["Id"]=3003126
	tXuanBaoFuncNpc_Award[3307142][3003126]["DeleteItem"][1]["ItemNum"] = 3
	tXuanBaoFuncNpc_Award[3307142][3003126]["DeleteItem"][2]={}
	tXuanBaoFuncNpc_Award[3307142][3003126]["DeleteItem"][2]["Id"]=3307142
	tXuanBaoFuncNpc_Award[3307142][3003126]["DeleteItem"][2]["ItemNum"] = 1
	-- tXuanBaoFuncNpc_Award[3307142][3003126]["RewardEffect"] = {}
	-- tXuanBaoFuncNpc_Award[3307142][3003126]["RewardEffect"]["Effect"] = "WarFlagEscortBegin"
	tXuanBaoFuncNpc_Award[3307142][3003126]["RewardNoNeedTip"] = 1
-- 3个秘制免费修炼丹		3002926	11	10000	秘制免费修炼丹
	tXuanBaoFuncNpc_Award[3307142][3002926] = {}
	tXuanBaoFuncNpc_Award[3307142][3002926]["RewardRXuanB"] = {}
	tXuanBaoFuncNpc_Award[3307142][3002926]["RewardRXuanB"][1] = {}
	tXuanBaoFuncNpc_Award[3307142][3002926]["RewardRXuanB"][1]["Id"] = 0
	tXuanBaoFuncNpc_Award[3307142][3002926]["RewardRXuanB"][1]["Monopoly"] = 0
	tXuanBaoFuncNpc_Award[3307142][3002926]["LogId"] = 12000977
	tXuanBaoFuncNpc_Award[3307142][3002926]["DeleteItem"]={}
	tXuanBaoFuncNpc_Award[3307142][3002926]["DeleteItem"][1]={}
	tXuanBaoFuncNpc_Award[3307142][3002926]["DeleteItem"][1]["Id"]=3002926
	tXuanBaoFuncNpc_Award[3307142][3002926]["DeleteItem"][1]["ItemNum"] = 3
	tXuanBaoFuncNpc_Award[3307142][3002926]["DeleteItem"][2]={}
	tXuanBaoFuncNpc_Award[3307142][3002926]["DeleteItem"][2]["Id"]=3307142
	tXuanBaoFuncNpc_Award[3307142][3002926]["DeleteItem"][2]["ItemNum"] = 1
	-- tXuanBaoFuncNpc_Award[3307142][3002926]["RewardEffect"] = {}
	-- tXuanBaoFuncNpc_Award[3307142][3002926]["RewardEffect"]["Effect"] = "WarFlagEscortBegin"
	tXuanBaoFuncNpc_Award[3307142][3002926]["RewardNoNeedTip"] = 1
-- 1个百炼天机果			3001044	9	0		百炼天机果
	tXuanBaoFuncNpc_Award[3307142][3001044] = {}
	tXuanBaoFuncNpc_Award[3307142][3001044]["RewardRXuanB"] = {}
	tXuanBaoFuncNpc_Award[3307142][3001044]["RewardRXuanB"][1] = {}
	tXuanBaoFuncNpc_Award[3307142][3001044]["RewardRXuanB"][1]["Id"] = 0
	tXuanBaoFuncNpc_Award[3307142][3001044]["RewardRXuanB"][1]["Monopoly"] = 0
	tXuanBaoFuncNpc_Award[3307142][3001044]["LogId"] = 12000977
	tXuanBaoFuncNpc_Award[3307142][3001044]["DeleteItem"]={}
	tXuanBaoFuncNpc_Award[3307142][3001044]["DeleteItem"][1]={}
	tXuanBaoFuncNpc_Award[3307142][3001044]["DeleteItem"][1]["Id"]=3001044
	tXuanBaoFuncNpc_Award[3307142][3001044]["DeleteItem"][1]["ItemNum"] = 1
	tXuanBaoFuncNpc_Award[3307142][3001044]["DeleteItem"][2]={}
	tXuanBaoFuncNpc_Award[3307142][3001044]["DeleteItem"][2]["Id"]=3307142
	tXuanBaoFuncNpc_Award[3307142][3001044]["DeleteItem"][2]["ItemNum"] = 1
	-- tXuanBaoFuncNpc_Award[3307142][3001044]["RewardEffect"] = {}
	-- tXuanBaoFuncNpc_Award[3307142][3001044]["RewardEffect"]["Effect"] = "WarFlagEscortBegin"
	tXuanBaoFuncNpc_Award[3307142][3001044]["RewardNoNeedTip"] = 1
-- 1个乾坤袋（小）			1100003	9	0		乾坤袋(小)
	tXuanBaoFuncNpc_Award[3307142][1100003] = {}
	tXuanBaoFuncNpc_Award[3307142][1100003]["RewardRXuanB"] = {}
	tXuanBaoFuncNpc_Award[3307142][1100003]["RewardRXuanB"][1] = {}
	tXuanBaoFuncNpc_Award[3307142][1100003]["RewardRXuanB"][1]["Id"] = 0
	tXuanBaoFuncNpc_Award[3307142][1100003]["RewardRXuanB"][1]["Monopoly"] = 0
	tXuanBaoFuncNpc_Award[3307142][1100003]["LogId"] = 12000977
	tXuanBaoFuncNpc_Award[3307142][1100003]["DeleteItem"]={}
	tXuanBaoFuncNpc_Award[3307142][1100003]["DeleteItem"][1]={}
	tXuanBaoFuncNpc_Award[3307142][1100003]["DeleteItem"][1]["Id"]=1100003
	tXuanBaoFuncNpc_Award[3307142][1100003]["DeleteItem"][1]["ItemNum"] = 1
	tXuanBaoFuncNpc_Award[3307142][1100003]["DeleteItem"][2]={}
	tXuanBaoFuncNpc_Award[3307142][1100003]["DeleteItem"][2]["Id"]=3307142
	tXuanBaoFuncNpc_Award[3307142][1100003]["DeleteItem"][2]["ItemNum"] = 1
	-- tXuanBaoFuncNpc_Award[3307142][1100003]["RewardEffect"] = {}
	-- tXuanBaoFuncNpc_Award[3307142][1100003]["RewardEffect"]["Effect"] = "WarFlagEscortBegin"
	tXuanBaoFuncNpc_Award[3307142][1100003]["RewardNoNeedTip"] = 1
	

local tXuanBaoFuncNpc_RandomDrop = {}
tXuanBaoFuncNpc_RandomDrop["Monster"] = {}
-- 3973,3974,3975,4709
-- 小怪1 1/800 2 1/700 3 1/600 4 1/550
tXuanBaoFuncNpc_RandomDrop["Monster"][3973]={}
tXuanBaoFuncNpc_RandomDrop["Monster"][3973]["ItemChanceSum"]=150000

tXuanBaoFuncNpc_RandomDrop["Monster"][3973][1] = {}
tXuanBaoFuncNpc_RandomDrop["Monster"][3973][1]["RandomItemChanceType"] = 2
tXuanBaoFuncNpc_RandomDrop["Monster"][3973][1]["ItemChance"] = 100
tXuanBaoFuncNpc_RandomDrop["Monster"][3973][1]["Item_1"] = 1 

tXuanBaoFuncNpc_RandomDrop["Monster"][3973][2] = {}
tXuanBaoFuncNpc_RandomDrop["Monster"][3973][2]["RandomItemChanceType"] = 2
tXuanBaoFuncNpc_RandomDrop["Monster"][3973][2]["ItemChance"] = 149900
tXuanBaoFuncNpc_RandomDrop["Monster"][3973][2]["Item_1"] = 0

tXuanBaoFuncNpc_RandomDrop["Monster"][3974]={}
tXuanBaoFuncNpc_RandomDrop["Monster"][3974]["ItemChanceSum"]=150000

tXuanBaoFuncNpc_RandomDrop["Monster"][3974][1] = {}
tXuanBaoFuncNpc_RandomDrop["Monster"][3974][1]["RandomItemChanceType"] = 2
tXuanBaoFuncNpc_RandomDrop["Monster"][3974][1]["ItemChance"] = 100
tXuanBaoFuncNpc_RandomDrop["Monster"][3974][1]["Item_1"] = 1 

tXuanBaoFuncNpc_RandomDrop["Monster"][3974][2] = {}
tXuanBaoFuncNpc_RandomDrop["Monster"][3974][2]["RandomItemChanceType"] = 2
tXuanBaoFuncNpc_RandomDrop["Monster"][3974][2]["ItemChance"] = 149900
tXuanBaoFuncNpc_RandomDrop["Monster"][3974][2]["Item_1"] = 0

tXuanBaoFuncNpc_RandomDrop["Monster"][3975]={}
tXuanBaoFuncNpc_RandomDrop["Monster"][3975]["ItemChanceSum"]=150000

tXuanBaoFuncNpc_RandomDrop["Monster"][3975][1] = {}
tXuanBaoFuncNpc_RandomDrop["Monster"][3975][1]["RandomItemChanceType"] = 2
tXuanBaoFuncNpc_RandomDrop["Monster"][3975][1]["ItemChance"] = 100
tXuanBaoFuncNpc_RandomDrop["Monster"][3975][1]["Item_1"] = 1 

tXuanBaoFuncNpc_RandomDrop["Monster"][3975][2] = {}
tXuanBaoFuncNpc_RandomDrop["Monster"][3975][2]["RandomItemChanceType"] = 2
tXuanBaoFuncNpc_RandomDrop["Monster"][3975][2]["ItemChance"] = 149900
tXuanBaoFuncNpc_RandomDrop["Monster"][3975][2]["Item_1"] = 0

tXuanBaoFuncNpc_RandomDrop["Monster"][4709]={}
tXuanBaoFuncNpc_RandomDrop["Monster"][4709]["ItemChanceSum"]=150000

tXuanBaoFuncNpc_RandomDrop["Monster"][4709][1] = {}
tXuanBaoFuncNpc_RandomDrop["Monster"][4709][1]["RandomItemChanceType"] = 2
tXuanBaoFuncNpc_RandomDrop["Monster"][4709][1]["ItemChance"] = 100
tXuanBaoFuncNpc_RandomDrop["Monster"][4709][1]["Item_1"] = 1 

tXuanBaoFuncNpc_RandomDrop["Monster"][4709][2] = {}
tXuanBaoFuncNpc_RandomDrop["Monster"][4709][2]["RandomItemChanceType"] = 2
tXuanBaoFuncNpc_RandomDrop["Monster"][4709][2]["ItemChance"] = 149900
tXuanBaoFuncNpc_RandomDrop["Monster"][4709][2]["Item_1"] = 0

tXuanBaoFuncNpc_RandomDrop["Monster"][4720]={}
tXuanBaoFuncNpc_RandomDrop["Monster"][4720]["ItemChanceSum"]=150000

tXuanBaoFuncNpc_RandomDrop["Monster"][4720][1] = {}
tXuanBaoFuncNpc_RandomDrop["Monster"][4720][1]["RandomItemChanceType"] = 2
tXuanBaoFuncNpc_RandomDrop["Monster"][4720][1]["ItemChance"] = 100
tXuanBaoFuncNpc_RandomDrop["Monster"][4720][1]["Item_1"] = 1 

tXuanBaoFuncNpc_RandomDrop["Monster"][4720][2] = {}
tXuanBaoFuncNpc_RandomDrop["Monster"][4720][2]["RandomItemChanceType"] = 2
tXuanBaoFuncNpc_RandomDrop["Monster"][4720][2]["ItemChance"] = 149900
tXuanBaoFuncNpc_RandomDrop["Monster"][4720][2]["Item_1"] = 0

tXuanBaoFuncNpc_RandomDrop["Monster"][2]={}
tXuanBaoFuncNpc_RandomDrop["Monster"][2]["ItemChanceSum"]=30000
tXuanBaoFuncNpc_RandomDrop["Monster"][2]["LogId"] = 12000948
tXuanBaoFuncNpc_RandomDrop["Monster"][2]["NeedLevel"]=120
tXuanBaoFuncNpc_RandomDrop["Monster"][2]["NeedMetempsychosis"] = 2

tXuanBaoFuncNpc_RandomDrop["Monster"][2][1] = {}
tXuanBaoFuncNpc_RandomDrop["Monster"][2][1]["RandomItemChanceType"] = 2
tXuanBaoFuncNpc_RandomDrop["Monster"][2][1]["ItemChance"] = 0
tXuanBaoFuncNpc_RandomDrop["Monster"][2][1]["RewardItem"] = {}
tXuanBaoFuncNpc_RandomDrop["Monster"][2][1]["RewardItem"][1] = {}
tXuanBaoFuncNpc_RandomDrop["Monster"][2][1]["RewardItem"][1]["Id"] = 3306885
tXuanBaoFuncNpc_RandomDrop["Monster"][2][1]["RewardItem"][1]["Attr"] = "0 1"

tXuanBaoFuncNpc_RandomDrop["Monster"][2][2] = {}
tXuanBaoFuncNpc_RandomDrop["Monster"][2][2]["RandomItemChanceType"] = 2
tXuanBaoFuncNpc_RandomDrop["Monster"][2][2]["ItemChance"] = 30000

tXuanBaoFuncNpc_RandomDrop["Monster"][3]={}
tXuanBaoFuncNpc_RandomDrop["Monster"][3]["ItemChanceSum"]=30000
tXuanBaoFuncNpc_RandomDrop["Monster"][3]["LogId"] = 12000948
tXuanBaoFuncNpc_RandomDrop["Monster"][3]["NeedLevel"]=120
tXuanBaoFuncNpc_RandomDrop["Monster"][3]["NeedMetempsychosis"] = 2

tXuanBaoFuncNpc_RandomDrop["Monster"][3][1] = {}
tXuanBaoFuncNpc_RandomDrop["Monster"][3][1]["RandomItemChanceType"] = 2
tXuanBaoFuncNpc_RandomDrop["Monster"][3][1]["ItemChance"] = 0
tXuanBaoFuncNpc_RandomDrop["Monster"][3][1]["RewardItem"] = {}
tXuanBaoFuncNpc_RandomDrop["Monster"][3][1]["RewardItem"][1] = {}
tXuanBaoFuncNpc_RandomDrop["Monster"][3][1]["RewardItem"][1]["Id"] = 3306885
tXuanBaoFuncNpc_RandomDrop["Monster"][3][1]["RewardItem"][1]["Attr"] = "0 1"

tXuanBaoFuncNpc_RandomDrop["Monster"][3][2] = {}
tXuanBaoFuncNpc_RandomDrop["Monster"][3][2]["RandomItemChanceType"] = 2
tXuanBaoFuncNpc_RandomDrop["Monster"][3][2]["ItemChance"] = 30000



-- 1个大流星卷（100个流星）	
-- 							3302769	0	10000	流星卷大礼包		礼品	精美的礼包，内有10个流星卷，点击右键打开。
-- 							3304828	9	10000	流星卷大礼包		礼品	精美的礼包，内有10个流星卷，点击右键打开。
--                          720027	0	0		流星卷
-- 1个龙珠					1088000	0	0		龙珠
-- 30个经验复原丹			3302881	0	10000	经验复原丹
-- 10个强效护心丹			3002030	9	10000	强效护心丹
-- 15个通神丹				3003125	0	10000	通神丹
-- 15个免费强炼丹			3003124	0	10000	免费强炼丹
-- 3个究极通神丹			3003126	0	10000	究极通神丹
-- 3个秘制免费修炼丹		3002926	11	10000	秘制免费修炼丹
-- 1个百炼天机果			3001044	9	0		百炼天机果
-- 1个乾坤袋（小）			1100003	9	0		乾坤袋(小)







-------------------------------------------------函数
function XuanBaoFuncNpc_FenJie()
	User_OpenDialog(904)
	XuanBaoFuncNpc_CompleteTask(2)
end





--判断铸造神奇的条件是否满足
function XuanBaoFuncNpc_CastingCheck(nNowNpcId)
	local nNpcId = nNowNpcId or Get_NpcId()
	local nItemId = tXuanBaoFuncNpc_Constant["SourceChipId"]
	local nItemNum = tXuanBaoFuncNpc_Constant["NeedSourceChip"]
	if not Item_ChkMulItem(nItemId,nItemId,nItemNum) then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return false
	end
	
	--判断背包空间
	if not User_CheckLeftSpace(tXuanBaoFuncNpc_Constant["NeedSpace"]) then
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return false
	end

	return true
end

--铸造神器
function XuanBaoFuncNpc_Casting(nNowNpcId)
	local nNpcId = nNowNpcId or Get_NpcId()
	if XuanBaoFuncNpc_CastingCheck(nNpcId) then 
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return
	end
end

function XuanBaoFuncNpc_CastingConfirm(nNowNpcId)
	local nNpcId = nNowNpcId or Get_NpcId()
	if XuanBaoFuncNpc_CastingCheck(nNpcId) then 
		local nAmountLimit = tXuanBaoFuncNpc_Attr[22569]["AmountLimit"]
		local nAttributeNum = tXuanBaoFuncNpc_Attr[22569]["AttributeNum"]
		local nMinNum = tXuanBaoFuncNpc_Attr[22569]["MinNum"]
		local nMaxNum = tXuanBaoFuncNpc_Attr[22569]["MaxNum"]
		local nItemId = tXuanBaoFuncNpc_Constant["SourceChipId"]
		local nItemNum = tXuanBaoFuncNpc_Constant["NeedSourceChip"]
		if Item_ChkMulItem(nItemId,nItemId,nItemNum) and Item_DelMulItem(nItemId,nItemId,nItemNum) then
			local nXuanBaoId,nItem = Xuanbao_Reward(0,0,10,nAmountLimit,0,nAttributeNum,nMinNum,nMaxNum)
			if nXuanBaoId ~= 0 then
				local sItemName = Get_ItemtypeName(nXuanBaoId)
				local sContent = string.format(tXuanBaoFuncNpc_Text[22569]["GetXuanBao"],sItemName)
				User_TalkChannel2005(sContent)
				
				local sStr1 = Get_ItemData1(nItem)
				local sStr2 = Get_ItemData2(nItem)
				local sStr3 = Get_ItemData3(nItem)
				local sStr4 = Get_ItemData4(nItem)
				local sStr5 = Get_ItemData5(nItem)
				local sAttr = nXuanBaoId .. "{" .. sStr1 .. "&" .. sStr2 .. "&" .. sStr3 .. "&" .. sStr4 .. "&" .. sStr5 .. "}"
				local sLog = string.format(tXuanBaoFuncNpc_Constant["Log"]["GetXuanBao"],nItemId,nItemNum,sAttr)
				Sys_SaveActionFestivalLog(sLog)
				User_EffectAdd("self",tXuanBaoFuncNpc_Constant["CastingEffect1"])
				User_EffectAdd("self",tXuanBaoFuncNpc_Constant["CastingEffect2"])
			end
		end
	end
end


--神器属性一览，打开对应网页
function XuanBaoFuncNpc_OpenWeb()
	local nUserId = Get_UserId()
	local sWeb = tXuanBaoFuncNpc_Constant["ShuXing"]
	User_SendWebDialog(sWeb,nUserId)
end

function XuanBaoFuncNpc_NineToSoulChk(nNpcId,nSpace)
	local nItemId = tXuanBaoFuncNpc_Constant["Nine"]
	local nItemNum = tXuanBaoFuncNpc_Constant["NeedNine"]
	local nHaveNum = Get_CountItemType(nItemId,0)
	
	if not Item_ChkMulItem(nItemId,nItemId,nItemNum) then
		LinkNpcGossipFunc_New(nNpcId,"5-1")
		return false
	end
	
	local nSoulNum = math.floor(nHaveNum/nItemNum)
	local nNeedSpace = nSpace or math.ceil(nSoulNum/Get_ItemtypeAccumulateLimit(tXuanBaoFuncNpc_Constant["Soul"]))
	--判断背包空间
	if not User_CheckLeftSpace(nNeedSpace) then
		tNpcGossip[nNpcId]["Text521"] = string.format(tXuanBaoFuncNpc_Text[22569]["Text521"],nNeedSpace)
		LinkNpcGossipFunc_New(nNpcId,"5-2")
		return false
	end

	return nSoulNum,nHaveNum
end

function XuanBaoFuncNpc_NineToSoul(nNowNpcId)
	local nNpcId = nNowNpcId or Get_NpcId()
	local nSoulNum,nHaveNum = XuanBaoFuncNpc_NineToSoulChk(nNpcId,1)
	if nSoulNum then 
		tNpcGossip[nNpcId]["Text613"] = string.format(tXuanBaoFuncNpc_Text[22569]["Text613"],nHaveNum)
		tNpcGossip[nNpcId]["Text614"] = string.format(tXuanBaoFuncNpc_Text[22569]["Text614"],nSoulNum)
		LinkNpcGossipFunc_New(nNpcId,"6-1")
		return
	end
end


function XuanBaoFuncNpc_ChangeSoul(nNowNpcId,nChNum)
	local nNpcId = nNowNpcId or Get_NpcId()
	local nSoulNum,nHaveNum = XuanBaoFuncNpc_NineToSoulChk(nNpcId,1)
	local nDelNine = 0
	local tReward1 = CommonFunc_Copy(tXuanBaoFuncNpc_Award[22569])
	local nGetNum = 0
	if nSoulNum then  
		if not nChNum then
			nDelNine = tXuanBaoFuncNpc_Constant["NeedNine"]*nSoulNum
			tReward1["RewardItem"][1]["Attr"] = "0 " .. nSoulNum
			tReward1["DeleteItem"][1]["ItemNum"] = nDelNine
			nGetNum = nSoulNum
		else
			nDelNine = tXuanBaoFuncNpc_Constant["NeedNine"]*nChNum
			nGetNum = 1
		end
		RewardTemplate_UseItemAndMsg(tReward1)
		XuanBaoFuncNpc_CompleteTask(1)
		
		
		
		local sContent = string.format(tXuanBaoFuncNpc_Text["NineChangeSoul"],nDelNine,nGetNum)
		User_TalkChannel2005(sContent)
		User_EffectAdd("self",tXuanBaoFuncNpc_Constant["CastingEffect"])
	end
end


--5w换器之灵
function XuanBaoFuncNpc_MoneyToSoul(nNowNpcId)
	local nNpcId = nNowNpcId or Get_NpcId()
	if not User_CheckLeftSpace(1) then
		tNpcGossip[nNpcId]["Text521"] = string.format(tXuanBaoFuncNpc_Text[22569]["Text521"],1)
		LinkNpcGossipFunc_New(nNpcId,"5-2")
		return false
	end
	
	local nMoney = tXuanBaoFuncNpc_Award[22569]["En"]["UseSliver"]
	if User_CanPutMoney2Bag(-nMoney)and User_AddMoney(-nMoney) then
		RewardTemplate_UseItemAndMsg(tXuanBaoFuncNpc_Award[22569]["En"])
		XuanBaoFuncNpc_CompleteTask(1)	
		User_TalkChannel2005(tXuanBaoFuncNpc_Text["NineChangeSoul11"])
		User_EffectAdd("self",tXuanBaoFuncNpc_Constant["CastingEffect"])
	else
	
		User_TalkChannel2005(tXuanBaoFuncNpc_Text["CostMoney"])
	end
end



--检查玄宝是否需要修复
function XuanBaoFuncNpc_RepairCheck(nItemId)
	local nDurLoss,nXuanBaoId = Item_XuanBaoDurChk()
	-- local nItemNum = tXuanBaoFuncNpc_Constant["NeedSourceChip"]
	if nDurLoss then
		if nDurLoss <= 0 then
			LinkItemGossipFunc_New(nItemId,"2-2")
			return false
		end
		if not Item_ChkMulItem(nItemId,nItemId,nDurLoss) then
			local sItemName = Get_ItemtypeName(nXuanBaoId)
			tItem[nItemId]["Text211"] = string.format(tXuanBaoFuncNpc_Text[nItemId]["Text211"],sItemName,nDurLoss)
			LinkItemGossipFunc_New(nItemId,"2-1")
			return false
		else
			return nDurLoss,nXuanBaoId
		end
	else
		LinkItemGossipFunc_New(nItemId,"2-3")
		return false
	end
end
	

--修复玄宝
function XuanBaoFuncNpc_Repair(nItemId)
	local nDurLoss,nXuanBaoId = XuanBaoFuncNpc_RepairCheck(nItemId)
	if nDurLoss then
		local sItemName = Get_ItemtypeName(nXuanBaoId)
		local nHaveNum = Get_CountItemType(nItemId,0)
		tItem[nItemId]["Text313"] = string.format(tXuanBaoFuncNpc_Text[nItemId]["Text313"],sItemName)
		tItem[nItemId]["Text314"] = string.format(tXuanBaoFuncNpc_Text[nItemId]["Text314"],nDurLoss)
		tItem[nItemId]["Text315"] = string.format(tXuanBaoFuncNpc_Text[nItemId]["Text315"],nHaveNum)
		LinkItemGossipFunc_New(nItemId,"3-1")
	end
end
	
	
--确认修复
function XuanBaoFuncNpc_RepairConfirm(nItemId)
	local nDurLoss,nXuanBaoId = XuanBaoFuncNpc_RepairCheck(nItemId)

	if nDurLoss then
		if Item_ChkMulItem(nItemId,nItemId,nDurLoss) and Item_DelMulItem(nItemId,nItemId,nDurLoss) then
			local sItemName = Get_ItemtypeName(nXuanBaoId)
			if Item_ItemRepairXuanBao() then
				local sLog = string.format(tXuanBaoFuncNpc_Constant["Log"]["RepairXuanBao"],nItemId,nDurLoss,nXuanBaoId,nDurLoss)
				local sContent = string.format(tXuanBaoFuncNpc_Text[nItemId]["RepairXuanBao"],sItemName)
				Sys_SaveActionFestivalLog(sLog)
				User_TalkChannel2005(sContent)
				User_EffectAdd("self",tXuanBaoFuncNpc_Constant["CastingEffect"])
			end
		end
	end
end
	
--生命神器碎片使用逻辑
function XuanBaoFuncNpc_UseItem(nItemId)
	if not User_CheckLeftSpace(tXuanBaoFuncNpc_Attr[nItemId]["NeedSpace"]) then
		User_TalkChannel2005(tXuanBaoFuncNpc_Text[nItemId]["NeedSpace"])
		return false
	end
	local nNeedScrap = tXuanBaoFuncNpc_Attr[nItemId]["NeedScrap"]
	if Item_ChkMulItem(nItemId,nItemId,nNeedScrap) and Item_DelMulItem(nItemId,nItemId,nNeedScrap) then
		local nXuanBaoId = tXuanBaoFuncNpc_Attr[nItemId]["XuanBaoId"]
		local nMonopoly = tXuanBaoFuncNpc_Attr[nItemId]["Monopoly"]
		local sItemName = Get_ItemtypeName(nXuanBaoId)
		local nAmountLimit = tXuanBaoFuncNpc_Attr[nItemId]["AmountLimit"]
		local nAttributeNum = tXuanBaoFuncNpc_Attr[nItemId]["AttributeNum"]
		local nItemType,nItem = Xuanbao_Reward(nXuanBaoId,nMonopoly,10,nAmountLimit,0,nAttributeNum)
		
		
		local sStr1 = Get_ItemData1(nItem)
		local sStr2 = Get_ItemData2(nItem)
		local sStr3 = Get_ItemData3(nItem)
		local sStr4 = Get_ItemData4(nItem)
		local sStr5 = Get_ItemData5(nItem)
		local sAttr = nXuanBaoId .. "{" .. sStr1 .. "&" .. sStr2 .. "&" .. sStr3 .. "&" .. sStr4 .. "&" .. sStr5 .. "}"
		local sLog = string.format(tXuanBaoFuncNpc_Constant["Log"]["GetXuanBao"],nItemId,nNeedScrap,sAttr)
		Sys_SaveActionFestivalLog(sLog)
		local sContent = string.format(tXuanBaoFuncNpc_Text[nItemId]["GetXuanBao"],sItemName)
		User_TalkChannel2005(sContent)
		User_EffectAdd("self",tXuanBaoFuncNpc_Constant["CastingEffect"])
	else
		User_TalkChannel2005(tXuanBaoFuncNpc_Text[nItemId]["NoScrap"])
	end
end
	
function XuanBaoFuncNpc_UseSoulChk(nItemId,nPos)
	local nEvent = tXuanBaoFuncNpc_Stc["EventType"]
	local nData = tXuanBaoFuncNpc_Stc["DataType"]
	if Task_ChkStcValue(nEvent,nData,"~=",0) then
		if Task_StcInterval(nEvent,nData,1,4) then
			Task_SetStatistic(nEvent,nData,0,1)
			Task_SetStcTimestamp(nEvent,nData,0)
		else
			Sys_MsgBox(tXuanBaoFuncNpc_Text[nItemId]["NoUse"])
			return false
		end
	end
	
	if nPos then
		LinkItemGossipFunc_New(nItemId,"1-1")
	end
	return true
end


-- Get_ItemtypeAccumulateLimit(tXuanBaoFuncNpc_Constant["Soul"])
function XuanBaoFuncNpc_UseSoul(nItemId,nUseItemId)
	if XuanBaoFuncNpc_UseSoulChk(nItemId) then
		local nHaveNum = 0
		local nNeedNum = 0
		if nUseItemId == 1 then
			for k,v in ipairs (tXuanBaoFuncNpc_UseItem[nUseItemId]) do
				nHaveNum = Get_CountItemType(v,0)
				nNeedNum = tXuanBaoFuncNpc_Award[nItemId][v]["DeleteItem"][1]["ItemNum"]
				if nHaveNum >= nNeedNum then
					nUseItemId = v
					break
				end	
			end
		else
			nHaveNum = Get_CountItemType(nUseItemId,0)
			nNeedNum = tXuanBaoFuncNpc_Award[nItemId][nUseItemId]["DeleteItem"][1]["ItemNum"] 
		end
		local sItemName = ""
		
		if nUseItemId > 1 then
			sItemName = Get_ItemtypeName(nUseItemId)
		end
		
		if (nUseItemId == 1) or (nHaveNum < nNeedNum)then	
			if sItemName == "" then
				sItemName = Get_ItemtypeName(tXuanBaoFuncNpc_UseItem[nUseItemId][1])
			end
			
			tItem[nItemId]["Text211"] = string.format(tXuanBaoFuncNpc_Text[nItemId]["Text211"],sItemName)
			LinkItemGossipFunc_New(nItemId,"2-1")
			return
		end
		
		
		if Get_ItemtypeAccumulateLimit(nUseItemId) > nNeedNum then
			if not User_CheckLeftSpace(tXuanBaoFuncNpc_Constant["SoulSpace"]) then
				User_TalkChannel2005(tXuanBaoFuncNpc_Text[nItemId]["NoSpace"])
				return
			end
		end
		local nEvent = tXuanBaoFuncNpc_Stc["EventType"]
		local nData = tXuanBaoFuncNpc_Stc["DataType"]
		local nFlag,sRewardStr = RewardTemplate_UseItemAndMsg(tXuanBaoFuncNpc_Award[nItemId][nUseItemId])
		Task_SetStatistic(nEvent,nData,1,1)
		Task_SetStcTimestamp(nEvent,nData,0)
		local sContent = string.format(tXuanBaoFuncNpc_Text[3307142]["GetXuanBao"],sItemName,sRewardStr)
		User_TalkChannel2005(sContent)
		User_EffectAdd("self",tXuanBaoFuncNpc_Constant["CastingEffect1"])
		User_EffectAdd("self",tXuanBaoFuncNpc_Constant["CastingEffect2"])
	end
end
	

function XuanBaoFuncNpc_RefeshName()
	local nUserId = Get_UserId()
	if User_UpdateEquipingAndBagRefineName(nUserId) then
		Sys_MsgBox(tXuanBaoFuncNpc_Text[22559]["Msg"])
	end
end
	
	
	
	
------------打宝区小怪逻辑
function XuanBaoFuncNpc_MonsterDieTipLog(nMonsterId,nItemId)
	local sXuanBao = Get_ItemtypeName(nItemId)
	local sLog = string.format(tXuanBaoFuncNpc_Constant["Log"]["DropXuanBao"],nMonsterId,nItemId)
	Sys_SaveActionFestivalLog(sLog)
	local sContent = string.format(tXuanBaoFuncNpc_Text["MontDrop"],sXuanBao)
	User_TalkChannel2005(sContent)
end


function XuanBaoFuncNpc_MonsterDie()
	local nMonsterId = Get_MonsterType()
	local nFlag,tReward = Probabil_RandomAward(tXuanBaoFuncNpc_RandomDrop["Monster"],nMonsterId)
	local nAwardFlag = tReward[1]["tAward"][1]["Item_1"]
	if nAwardFlag == 1 then
		local nItemId = Monster_SysDropRandomXuanbao()
		XuanBaoFuncNpc_MonsterDieTipLog(nMonsterId,nItemId)
	end
end



------------打宝区大BOSS逻辑
function XuanBaoFuncNpc_BossDie()
	local nMonsterId = Get_MonsterType()
	local nItemId = Monster_SysDropRandomXuanbao()
	XuanBaoFuncNpc_MonsterDieTipLog(nMonsterId,nItemId)
end


---------盗宝小妖神器逻辑
function XuanBaoFuncNpc_XuanBaoBossDie()
	local nMonsterId = Get_MonsterType()
	local nAmountLimit = tXuanBaoFuncNpc_Attr[nMonsterId]["AmountLimit"]
	local nAttributeNum = tXuanBaoFuncNpc_Attr[nMonsterId]["AttributeNum"]
	local nMinNum = tXuanBaoFuncNpc_Attr[nMonsterId]["MinNum"]
	local nMaxNum = tXuanBaoFuncNpc_Attr[nMonsterId]["MaxNum"]
	local nItemId = Xuanbao_MonsterDrop(0,1,nAmountLimit,0,nAttributeNum,nMinNum,nMaxNum)
	XuanBaoFuncNpc_MonsterDieTipLog(nMonsterId,nItemId)
end

--全片区怪物掉落
function XuanBaoFuncNpc_AllAreaBossDrop()
	local nMonsterId = Get_MonsterType()
	local nLevel = tXuanBaoFuncNpc_RandomDrop["Monster"][2]["NeedLevel"]
	local nMetempsychosis = tXuanBaoFuncNpc_RandomDrop["Monster"][2]["NeedMetempsychosis"]
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMetempsychosis) then
		return
	end
	
	if not RewardTemplate_ChkRandomSpace(tXuanBaoFuncNpc_RandomDrop["Monster"],2) then
		User_TalkChannel2005(tXuanBaoFuncNpc_Text["NeedSpace"])
		return
	end
	-- 3967,3968,3969
	local nItemId = 0
	if nMonsterId == 3967 or nMonsterId == 3968 or nMonsterId == 3969 then
		RewardTemplate_NewRandom(tXuanBaoFuncNpc_RandomDrop["Monster"],3)
		-- local tNewReward,sRewardStr = RewardTemplate_NewRandom(tXuanBaoFuncNpc_RandomDrop["Monster"],3)
		-- if next(tNewReward[1]["tAward"][1]) ~= nil and tNewReward[1]["tAward"][1]["RewardItem"] ~= nil then
			-- nItemId = tNewReward[1]["tAward"][1]["RewardItem"][1]["Id"]
			-- if nItemId == 3306885 then
				-- User_TalkChannel2005(tNormalXuanBao_Text["KillTips"])
			-- end
		-- end
	else
		RewardTemplate_NewRandom(tXuanBaoFuncNpc_RandomDrop["Monster"],2)
		-- local tNewReward,sRewardStr = RewardTemplate_NewRandom(tXuanBaoFuncNpc_RandomDrop["Monster"],2)
		-- if next(tNewReward[1]["tAward"][1]) ~= nil and tNewReward[1]["tAward"][1]["RewardItem"] ~= nil then
			-- nItemId = tNewReward[1]["tAward"][1]["RewardItem"][1]["Id"]
			-- if nItemId == 3306885 then
				-- User_TalkChannel2005(tNormalXuanBao_Text["KillTips"])
			-- end
		-- end
	end
	
end

--接受任务逻辑 3943
function XuanBaoFuncNpc_AcceptTask(nIndex)
		if nIndex == nil then
			nIndex = 1
		end
		local nTaskId = tXuanBaoFuncNpc_Constant["TaskId"][nIndex]
		--任务面板显示
		if not Task_ChkTaskDetail(nTaskId) then
			Task_AddTaskDetail(nTaskId)
		end
		
		if not Task_ChkTaskDetailValue(nTaskId,"CompleteFlag",">=",1) then
			Task_SetTaskDetailData1(nTaskId,0)
			Task_SetTaskDetailCompleteFlag(nTaskId,0)
		end

end

--完成任务
function XuanBaoFuncNpc_CompleteTask(nIndex)
	local nTaskId = tXuanBaoFuncNpc_Constant["TaskId"][nIndex]
	--任务面板显示
	if not Task_ChkTaskDetail(nTaskId) then
		Task_AddTaskDetail(nTaskId)
	end
	
	if not Task_ChkTaskDetailValue(nTaskId,"CompleteFlag",">=",1) then
		Task_SetTaskDetailData1(nTaskId,1)
		Task_SetTaskDetailCompleteFlag(nTaskId,1)
		if nIndex == 1 then 
			XuanBaoFuncNpc_AcceptTask(2)
		end
	end
end





--------------------------------------------------NPC配置
tNpcFace[4910] = 1244
tNpcGossip[22568] = tNpcGossip[22568] or DefaultNpc:new{}
tNpcGossip[22568]["OptionHidden"] = 1
tNpcGossip[22568]["DialogueText"] = tXuanBaoFuncNpc_Text[22568]
tNpcGossip[22568]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[22568]["tOption1-1"] = {111}
tNpcGossip[22568]["OptionFunc111"] = "XuanBaoFuncNpc_FenJie"
-- tNpcGossip[22568]["OptionFunc111"] = "User_OpenDialog</N>904"


-- tNpcGossip[22568]["OptionPoint112"]="2-1"
-- 22578	哪吒  岛上
tNpcGossip[22578] = tNpcGossip[22568]


tNpcFace[4911] = 1245
tNpcGossip[22569] = tNpcGossip[22569] or DefaultNpc:new{}
tNpcGossip[22569]["OptionHidden"] = 1
tNpcGossip[22569]["DialogueText"] = tXuanBaoFuncNpc_Text[22569]
tNpcGossip[22569]["Text1-1"] = {111,112,113,114,115,116,117,118}
tNpcGossip[22569]["tOption1-1"] = {114,111,112}
tNpcGossip[22569]["OptionFunc111"] = "XuanBaoFuncNpc_Casting</N>22569"
tNpcGossip[22569]["OptionFunc113"] = "XuanBaoFuncNpc_NineToSoul</N>22569"

tNpcGossip[22569]["OptionFunc114"] = "XuanBaoFuncNpc_MoneyToSoul</N>22569"




tNpcGossip[22569]["OptionPoint112"]="4-1"

tNpcGossip[22569]["Text2-1"] = {211}
tNpcGossip[22569]["tOption2-1"] = {211}

tNpcGossip[22569]["Text2-2"] = {221}
tNpcGossip[22569]["tOption2-2"] = {221}

tNpcGossip[22569]["Text3-1"] = {311,312,313,314,315}
tNpcGossip[22569]["tOption3-1"] = {311,312}
tNpcGossip[22569]["OptionFunc311"] = "XuanBaoFuncNpc_CastingConfirm</N>22569"

tNpcGossip[22569]["Text4-1"] = {411,412,413,414,415,416}
tNpcGossip[22569]["tOption4-1"] = {411,412}
tNpcGossip[22569]["OptionFunc411"] = "XuanBaoFuncNpc_OpenWeb"
tNpcGossip[22569]["OptionPoint412"]="7-1"

tNpcGossip[22569]["Text7-1"] = {711,712,713,714,715,716}
tNpcGossip[22569]["tOption7-1"] = {711}

tNpcGossip[22569]["Text5-1"] = {511}
tNpcGossip[22569]["tOption5-1"] = {511}

tNpcGossip[22569]["Text5-2"] = {521}
tNpcGossip[22569]["tOption5-2"] = {521}

tNpcGossip[22569]["Text6-1"] = {611,612,613,614,615}
tNpcGossip[22569]["tOption6-1"] = {611,612}
tNpcGossip[22569]["OptionFunc611"] = "XuanBaoFuncNpc_ChangeSoul</N>22569</N>1"
tNpcGossip[22569]["OptionFunc612"] = "XuanBaoFuncNpc_ChangeSoul</N>22569"
-- 22579	太乙真人  岛上
tNpcGossip[22579] = tNpcGossip[22569]


tNpcFace[4120] = 28
tNpcGossip[22559] = tNpcGossip[22559] or DefaultNpc:new{}
tNpcGossip[22559]["OptionHidden"] = 1
tNpcGossip[22559]["DialogueText"] = tXuanBaoFuncNpc_Text[22559]
tNpcGossip[22559]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[22559]["tOption1-1"] = {111}
tNpcGossip[22559]["OptionFunc111"] = "XuanBaoFuncNpc_RefeshName"





-----------------------------------------------------礼包配置
-- 3306885,'神器源晶
tItemFace[3306885] = 1246
tItem[3306885] = tItem[3306885] or {}
tItem[3306885]["DialogueText"] =tXuanBaoFuncNpc_Text[3306885]
tItem[3306885]["Text1-1"] = {111}
tItem[3306885]["tOption1-1"] = {111,112}
tItem[3306885]["OptionFunc111"] = "XuanBaoFuncNpc_Repair</N>3306885"
tItem[3306885]["OptionFunc112"] = "NpcPosition_PathFind</N>22569"

tItem[3306885]["Text2-1"] = {211}
tItem[3306885]["tOption2-1"] = {211}

tItem[3306885]["Text2-2"] = {221}
tItem[3306885]["tOption2-2"] = {221}

tItem[3306885]["Text2-3"] = {231}
tItem[3306885]["tOption2-3"] = {231}


tItem[3306885]["Text3-1"] = {311,312,313,314,315,316,317}
tItem[3306885]["tOption3-1"] = {311}
tItem[3306885]["OptionFunc311"] = "XuanBaoFuncNpc_RepairConfirm</N>3306885"


tItem[3307116] = tItem[3307116] or {}
tItem[3307116]["Function"] = function(nItemId,sItemName)
	XuanBaoFuncNpc_UseItem(nItemId)
end

-- 3307142,'器之灵'
tItemFace[3307142] = 1257
tItem[3307142] = tItem[3307142] or {}
tItem[3307142]["DialogueText"] =tXuanBaoFuncNpc_Text[3307142]
tItem[3307142]["Function"] = function (nItemId,sItemName)
	XuanBaoFuncNpc_UseSoulChk(nItemId,1)
end

tItem[3307142]["Text1-1"] = {111,112,113,114,115,116}
tItem[3307142]["tOption1-1"] = {111,112,114,115,116,117,118,119,1110}
tItem[3307142]["OptionFunc111"] = "XuanBaoFuncNpc_UseSoul</N>3307142</N>1"
tItem[3307142]["OptionFunc112"] = "XuanBaoFuncNpc_UseSoul</N>3307142</N>1088000"
tItem[3307142]["OptionFunc113"] = "XuanBaoFuncNpc_UseSoul</N>3307142</N>3302881"
tItem[3307142]["OptionFunc114"] = "XuanBaoFuncNpc_UseSoul</N>3307142</N>3002030"
tItem[3307142]["OptionFunc115"] = "XuanBaoFuncNpc_UseSoul</N>3307142</N>3003125"
tItem[3307142]["OptionFunc116"] = "XuanBaoFuncNpc_UseSoul</N>3307142</N>3003124"
tItem[3307142]["OptionFunc117"] = "XuanBaoFuncNpc_UseSoul</N>3307142</N>3003126"
tItem[3307142]["OptionFunc118"] = "XuanBaoFuncNpc_UseSoul</N>3307142</N>3002926"
tItem[3307142]["OptionFunc119"] = "XuanBaoFuncNpc_UseSoul</N>3307142</N>3001044"
tItem[3307142]["OptionFunc1110"] = "XuanBaoFuncNpc_UseSoul</N>3307142</N>1100003"

tItem[3307142]["Text2-1"] = {211}
tItem[3307142]["tOption2-1"] = {211}





-------------------------------------------------怪物掉落
local tXuanBaoFuncNpc_MonsterDrop = {}
	tXuanBaoFuncNpc_MonsterDrop["Function"] = XuanBaoFuncNpc_MonsterDie
	tXuanBaoFuncNpc_MonsterDrop["MonsterId"] = {3973,3974,3975,4709}
table.insert(tMonsterDrop_AreaLoad,tXuanBaoFuncNpc_MonsterDrop)


local tXuanBaoFuncNpc_BossDrop = {}
	tXuanBaoFuncNpc_BossDrop["Function"] = XuanBaoFuncNpc_BossDie
	tXuanBaoFuncNpc_BossDrop["MonsterId"] = {3970,3971,3976,3977}
table.insert(tMonsterDrop_AreaLoad,tXuanBaoFuncNpc_BossDrop)


local tXuanBaoFuncNpc_XuanBaoBossDrop = {}
	tXuanBaoFuncNpc_XuanBaoBossDrop["Function"] = XuanBaoFuncNpc_XuanBaoBossDie
	tXuanBaoFuncNpc_XuanBaoBossDrop["MonsterId"] = {3992}
table.insert(tMonsterDrop_AreaLoad,tXuanBaoFuncNpc_XuanBaoBossDrop)


-- 全片区怪物掉落
local tXuanBaoFuncNpc_AllAreaBossDrop = {}
	tXuanBaoFuncNpc_AllAreaBossDrop["Function"] = XuanBaoFuncNpc_AllAreaBossDrop
table.insert(tMonsterDrop_AreaLoad,tXuanBaoFuncNpc_AllAreaBossDrop)