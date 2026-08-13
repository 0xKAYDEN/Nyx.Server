------------------------------------------------------------------------------------
--Name：180913[简体征服][活动脚本]无赠品服务器制作-地图刷怪和掉落
--Creator:兰冬梅
--Created:2018-09-13
------------------------------------------------------------------------------------
--tNoGiftMonster

--logId:12001168
--lua.ini:41002

--限量部分：
--53001
--data0：史诗武器碎片限量，每天限量5个（暂时屏蔽）
--data1：1500气力值限量，每小时限量5个（暂时屏蔽）
--data2：第一种奖池的龙珠限量（15分钟清，限量1）
--data3:第二种奖池的龙珠限量（每天清，限量1）



-----------------------------------数据部分配置--------------------------------------

local tNoGiftMonster_Cont={}
	--2转
	tNoGiftMonster_Cont["Metempsychosis"] = 2
	--敦煌
	tNoGiftMonster_Cont["Underground"] =10369
	--差距
	tNoGiftMonster_Cont["Range"] = 5
	tNoGiftMonster_Cont["MonsterRange"] = 2
	--背包
	tNoGiftMonster_Cont["Space"] = 1
	--排行榜
	tNoGiftMonster_Cont["Rank"] = 10
	--龙珠
	tNoGiftMonster_Cont["Dragon"] = 1088000
	--二转金牌
	tNoGiftMonster_Cont["MeteItem"] = 3310808
	--碧玉龙鳞
	tNoGiftMonster_Cont["LastItem"] = 3310807
	--青龙神兽
	tNoGiftMonster_Cont["MeteBoss"] = 3506
	--读条
	tNoGiftMonster_Cont["Seconds"] = 1
	tNoGiftMonster_Cont["Action"] = 100
	--存在时间
	tNoGiftMonster_Cont["ExistTime"] = 60
	--天机道长
	tNoGiftMonster_Cont["Tianji"] = 300500
	--固定翻倍时间
	tNoGiftMonster_Cont["DoubleTime"] ="19:00 20:00"
	--地图最多存在怪物数量
	tNoGiftMonster_Cont["MonsterNum"] =5
	
	
	tNoGiftMonster_Cont["Small"]={}
	tNoGiftMonster_Cont["Small"][1]=1
	tNoGiftMonster_Cont["Small"][2]=5
	
	tNoGiftMonster_Cont["More"]={}
	tNoGiftMonster_Cont["More"][1]=3
	tNoGiftMonster_Cont["More"][2]=12
	
	tNoGiftMonster_Cont["Money"]={}
	tNoGiftMonster_Cont["Money"]["Value"]=50--初始值
	tNoGiftMonster_Cont["Money"]["AddValue"]=50--每10级增加
	
	--邮件数据
local tNoGiftMonster_Mail={}
	tNoGiftMonster_Mail["Mail"]={}
	tNoGiftMonster_Mail["Mail"]["ExistDay"]=30
	tNoGiftMonster_Mail["Mail"]["ActionId"]={}
	tNoGiftMonster_Mail["Mail"]["ActionId"][3504]=569929
	tNoGiftMonster_Mail["Mail"]["ActionId"][3505]=569930
	tNoGiftMonster_Mail["Mail"]["ActionId"][3506]=569931
	--boss
	tNoGiftMonster_Mail[4907]={}
	tNoGiftMonster_Mail[4907]["ExistDay"]=30
	tNoGiftMonster_Mail[4907]["ActionAll"]=569962
	tNoGiftMonster_Mail[4907]["ActionId"]={}
	tNoGiftMonster_Mail[4907]["ActionId"][1]=569952
	tNoGiftMonster_Mail[4907]["ActionId"][2]=569953
	tNoGiftMonster_Mail[4907]["ActionId"][3]=569954
	tNoGiftMonster_Mail[4907]["ActionId"][4]=569955
	tNoGiftMonster_Mail[4907]["ActionId"][5]=569956
	tNoGiftMonster_Mail[4907]["ActionId"][6]=569957
	tNoGiftMonster_Mail[4907]["ActionId"][7]=569958
	tNoGiftMonster_Mail[4907]["ActionId"][8]=569959
	tNoGiftMonster_Mail[4907]["ActionId"][9]=569960
	tNoGiftMonster_Mail[4907]["ActionId"][10]=569961
	
	tNoGiftMonster_Mail[4908]={}
	tNoGiftMonster_Mail[4908]["ExistDay"]=30
	tNoGiftMonster_Mail[4908]["ActionAll"]=569971
	tNoGiftMonster_Mail[4908]["ActionId"]={}
	tNoGiftMonster_Mail[4908]["ActionId"][1]=569965
	tNoGiftMonster_Mail[4908]["ActionId"][2]=569966
	tNoGiftMonster_Mail[4908]["ActionId"][3]=569967
	tNoGiftMonster_Mail[4908]["ActionId"][4]=569968
	tNoGiftMonster_Mail[4908]["ActionId"][5]=569969
	tNoGiftMonster_Mail[4908]["ActionId"][6]=569970
	tNoGiftMonster_Mail[4908]["ActionId"][7]=569970
	tNoGiftMonster_Mail[4908]["ActionId"][8]=569971
	tNoGiftMonster_Mail[4908]["ActionId"][9]=569971
	tNoGiftMonster_Mail[4908]["ActionId"][10]=569971
	
	tNoGiftMonster_Mail[4909]={}
	tNoGiftMonster_Mail[4909]["ExistDay"]=30
	tNoGiftMonster_Mail[4909]["ActionAll"]=569971
	tNoGiftMonster_Mail[4909]["ActionId"]={}
	tNoGiftMonster_Mail[4909]["ActionId"][1]=569964
	tNoGiftMonster_Mail[4909]["ActionId"][2]=569965
	tNoGiftMonster_Mail[4909]["ActionId"][3]=569966
	tNoGiftMonster_Mail[4909]["ActionId"][4]=569967
	tNoGiftMonster_Mail[4909]["ActionId"][5]=569968
	tNoGiftMonster_Mail[4909]["ActionId"][6]=569969
	tNoGiftMonster_Mail[4909]["ActionId"][7]=569969
	tNoGiftMonster_Mail[4909]["ActionId"][8]=569970
	tNoGiftMonster_Mail[4909]["ActionId"][9]=569970
	tNoGiftMonster_Mail[4909]["ActionId"][10]=569970

	tNoGiftMonster_Mail[4910]={}
	tNoGiftMonster_Mail[4910]["ExistDay"]=30
	tNoGiftMonster_Mail[4910]["ActionAll"]=569971
	tNoGiftMonster_Mail[4910]["ActionId"]={}
	tNoGiftMonster_Mail[4910]["ActionId"][1]=569963
	tNoGiftMonster_Mail[4910]["ActionId"][2]=569964
	tNoGiftMonster_Mail[4910]["ActionId"][3]=569965
	tNoGiftMonster_Mail[4910]["ActionId"][4]=569966
	tNoGiftMonster_Mail[4910]["ActionId"][5]=569967
	tNoGiftMonster_Mail[4910]["ActionId"][6]=569968
	tNoGiftMonster_Mail[4910]["ActionId"][7]=569968
	tNoGiftMonster_Mail[4910]["ActionId"][8]=569969
	tNoGiftMonster_Mail[4910]["ActionId"][9]=569969
	tNoGiftMonster_Mail[4910]["ActionId"][10]=569969

	
local tNoGiftMonster_Global={}
	--史诗武器碎片
	tNoGiftMonster_Global["Fragment"]={}
	tNoGiftMonster_Global["Fragment"]["Global"]=53001
	tNoGiftMonster_Global["Fragment"]["Pos"]=0
	tNoGiftMonster_Global["Fragment"]["Limit"]=5
	--1500气力值(每小时清)
	tNoGiftMonster_Global[3304331]={}
	tNoGiftMonster_Global[3304331]["Global"]=53001
	tNoGiftMonster_Global[3304331]["Pos"]=1
	tNoGiftMonster_Global[3304331]["Limit"]=5
	
	--龙珠限量
	tNoGiftMonster_Global[1088000]={}
	tNoGiftMonster_Global[1088000][1]={}
	tNoGiftMonster_Global[1088000][1]["Global"]=53001
	tNoGiftMonster_Global[1088000][1]["Pos"]=2
	tNoGiftMonster_Global[1088000][1]["Limit"]=1--第一种奖池（每15分钟清）
	tNoGiftMonster_Global[1088000][1]["ItemId"]=1088001
	tNoGiftMonster_Global[1088000][2]={}
	tNoGiftMonster_Global[1088000][2]["Global"]=53001
	tNoGiftMonster_Global[1088000][2]["Pos"]=3
	tNoGiftMonster_Global[1088000][2]["Limit"]=1--第二种奖池（每天清）
	tNoGiftMonster_Global[1088000][2]["ItemId"]=1088001
	
	--翻倍时间
	tNoGiftMonster_Global["Double"]={}
	tNoGiftMonster_Global["Double"]["Global"]=53001
	tNoGiftMonster_Global["Double"]["Pos"]=0
	
--怪物id区分
local tNoGiftMonster_MonsterId = {}
	tNoGiftMonster_MonsterId["Xiaoguai"]={}
	tNoGiftMonster_MonsterId["Xiaoguai"][1]={4833,4834,4835,4836}
	tNoGiftMonster_MonsterId["Xiaoguai"][2]={4838,4839,4840,4841,4868}
	tNoGiftMonster_MonsterId["Xiaoguai"][3]={4842,4843,4844,4845,4869,4870}
	tNoGiftMonster_MonsterId["Xiaoguai"][4]={4846,4847,4848,4849,4871}
	tNoGiftMonster_MonsterId["Xiaoguai"][5]={4850,4851,4852,4853,4854,4872,4874}
	tNoGiftMonster_MonsterId["Xiaoguai"][6]={4855,4856,4857,4858,4873,4875,4876,4877,4878,4879}
	tNoGiftMonster_MonsterId["Xiaoguai"][7]={4859,4860,4862,4863}
	tNoGiftMonster_MonsterId["Xiaoguai"][8]={4865}
	tNoGiftMonster_MonsterId["Xiaoguai"][9]={4867}
	
	tNoGiftMonster_MonsterId["Elite"]={}
	tNoGiftMonster_MonsterId["Elite"][4880]={4880,4881}
	tNoGiftMonster_MonsterId["Elite"][4882]={4882}
	tNoGiftMonster_MonsterId["Elite"][4883]={4883,4884,4885}
	tNoGiftMonster_MonsterId["Elite"][4886]={4886,4887,4888}
	tNoGiftMonster_MonsterId["Elite"][4889]={4889,4890}
	tNoGiftMonster_MonsterId["Elite"][4891]={4891,4892,4893}
	tNoGiftMonster_MonsterId["Elite"][4894]={4894,4895}
	tNoGiftMonster_MonsterId["Elite"][4896]={4896}
	tNoGiftMonster_MonsterId["Elite"][4897]={4897}
	--大boss
	tNoGiftMonster_MonsterId["BigBoss"]={4907,4907,4909,4910}
--log记录
local tNoGiftMonster_Log= {}

	tNoGiftMonster_Log["All"]="0,0,0,%d,12001168,2[1],%d,%d"--通用掉落
	tNoGiftMonster_Log["AllOne"]="0,0,0,%d,12001168,2[1],%d,1"--通用掉落单个
	
	tNoGiftMonster_Log["AllLimit"]="0,0,0,%d,12001168,2[2],%d,%d"--限量通用掉落
	
	tNoGiftMonster_Log[1088000]={}
	tNoGiftMonster_Log[1088000][1]="0,0,0,%d,12001168,1[1],%d,%d"
	tNoGiftMonster_Log[1088000][2]="0,0,0,%d,12001168,1[2],%d,%d"
	tNoGiftMonster_Log["fail"]="0,0,0,%d,12001168,2[3],%d,%d"--生成怪物失败返还物品

local tNoGiftMonster_PassData={}
	--敦煌通行证
	tNoGiftMonster_PassData[3310800]={}
	tNoGiftMonster_PassData[3310800]["NpcId"]=23270
	tNoGiftMonster_PassData[3310800]["MapId"]=10369
	tNoGiftMonster_PassData[3310800]["Cellx"]=312
	tNoGiftMonster_PassData[3310800]["Celly"]=646
	tNoGiftMonster_PassData[3310800]["Switch"]=3310999
	tNoGiftMonster_PassData[3310800]["RewardItem"]={}
	tNoGiftMonster_PassData[3310800]["RewardItem"][1]={}
	tNoGiftMonster_PassData[3310800]["RewardItem"][1]["Id"]=3310999
	tNoGiftMonster_PassData[3310800]["RewardItem"][1]["Attr"]="0 1 0 1440 1"
	tNoGiftMonster_PassData[3310800]["DeleteItem"]={}
	tNoGiftMonster_PassData[3310800]["DeleteItem"][1]={}
	tNoGiftMonster_PassData[3310800]["DeleteItem"][1]["Id"]=3310800
	tNoGiftMonster_PassData[3310800]["LogId"]=12001168
	tNoGiftMonster_PassData[3310800]["RewardNoNeedTip"]=1
	
	tNoGiftMonster_PassData[3310999]={}
	tNoGiftMonster_PassData[3310999]["NpcId"]=23270
	
	--冰封地穴一层通行令
	tNoGiftMonster_PassData[3310801]={}
	tNoGiftMonster_PassData[3310801]["NpcId"]=23271
	tNoGiftMonster_PassData[3310801]["MapId"]=10370
	tNoGiftMonster_PassData[3310801]["Cellx"]=330
	tNoGiftMonster_PassData[3310801]["Celly"]=355
	tNoGiftMonster_PassData[3310801]["Switch"]=3311000
	tNoGiftMonster_PassData[3310801]["RewardItem"]={}
	tNoGiftMonster_PassData[3310801]["RewardItem"][1]={}
	tNoGiftMonster_PassData[3310801]["RewardItem"][1]["Id"]=3311000
	tNoGiftMonster_PassData[3310801]["RewardItem"][1]["Attr"]="0 1 0 1440 1"
	tNoGiftMonster_PassData[3310801]["DeleteItem"]={}
	tNoGiftMonster_PassData[3310801]["DeleteItem"][1]={}
	tNoGiftMonster_PassData[3310801]["DeleteItem"][1]["Id"]=3310801
	tNoGiftMonster_PassData[3310801]["LogId"]=12001168
	tNoGiftMonster_PassData[3310801]["RewardNoNeedTip"]=1
	
	tNoGiftMonster_PassData[3311000]={}
	tNoGiftMonster_PassData[3311000]["NpcId"]=23271
	
	--冰封地穴二层通行令
	tNoGiftMonster_PassData[3310802]={}
	tNoGiftMonster_PassData[3310802]["NpcId"]=23272
	tNoGiftMonster_PassData[3310802]["MapId"]=10371
	tNoGiftMonster_PassData[3310802]["Cellx"]=644
	tNoGiftMonster_PassData[3310802]["Celly"]=333
	tNoGiftMonster_PassData[3310802]["Switch"]=3311001
	tNoGiftMonster_PassData[3310802]["RewardItem"]={}
	tNoGiftMonster_PassData[3310802]["RewardItem"][1]={}
	tNoGiftMonster_PassData[3310802]["RewardItem"][1]["Id"]=3311001
	tNoGiftMonster_PassData[3310802]["RewardItem"][1]["Attr"]="0 1 0 1440 1"
	tNoGiftMonster_PassData[3310802]["DeleteItem"]={}
	tNoGiftMonster_PassData[3310802]["DeleteItem"][1]={}
	tNoGiftMonster_PassData[3310802]["DeleteItem"][1]["Id"]=3310802
	tNoGiftMonster_PassData[3310802]["LogId"]=12001168
	tNoGiftMonster_PassData[3310802]["RewardNoNeedTip"]=1
	
	tNoGiftMonster_PassData[3311001]={}
	tNoGiftMonster_PassData[3311001]["NpcId"]=23272

	--冰封地穴三层通行令
	tNoGiftMonster_PassData[3310803]={}
	tNoGiftMonster_PassData[3310803]["NpcId"]=23273
	tNoGiftMonster_PassData[3310803]["MapId"]=10372
	tNoGiftMonster_PassData[3310803]["Cellx"]=142
	tNoGiftMonster_PassData[3310803]["Celly"]=220
	tNoGiftMonster_PassData[3310803]["Switch"]=3311002
	tNoGiftMonster_PassData[3310803]["RewardItem"]={}
	tNoGiftMonster_PassData[3310803]["RewardItem"][1]={}
	tNoGiftMonster_PassData[3310803]["RewardItem"][1]["Id"]=3311002
	tNoGiftMonster_PassData[3310803]["RewardItem"][1]["Attr"]="0 1 0 1440 1"
	tNoGiftMonster_PassData[3310803]["DeleteItem"]={}
	tNoGiftMonster_PassData[3310803]["DeleteItem"][1]={}
	tNoGiftMonster_PassData[3310803]["DeleteItem"][1]["Id"]=3310803
	tNoGiftMonster_PassData[3310803]["LogId"]=12001168
	tNoGiftMonster_PassData[3310803]["RewardNoNeedTip"]=1
	
	
	tNoGiftMonster_PassData[3311002]={}
	tNoGiftMonster_PassData[3311002]["NpcId"]=23273
	
	--二转金牌
	tNoGiftMonster_PassData[3310808]={}
	tNoGiftMonster_PassData[3310808]["NpcId"]=300500
	
	--江湖豪侠令
	tNoGiftMonster_PassData[3310804]={}
	tNoGiftMonster_PassData[3310804]["NpcId"]=23021
	
local tNoGiftMonster_AreaData={}
	tNoGiftMonster_AreaData[1]={}
	tNoGiftMonster_AreaData[1]["MapId"]=10365
	tNoGiftMonster_AreaData[1]["Cellx"]=12
	tNoGiftMonster_AreaData[1]["Celly"]=378
	tNoGiftMonster_AreaData[2]={}
	tNoGiftMonster_AreaData[2]["MapId"]=10366
	tNoGiftMonster_AreaData[2]["Cellx"]=381
	tNoGiftMonster_AreaData[2]["Celly"]=12
	tNoGiftMonster_AreaData[3]={}
	tNoGiftMonster_AreaData[3]["MapId"]=10367
	tNoGiftMonster_AreaData[3]["Cellx"]=971
	tNoGiftMonster_AreaData[3]["Celly"]=667
	tNoGiftMonster_AreaData[4]={}
	tNoGiftMonster_AreaData[4]["MapId"]=10368
	tNoGiftMonster_AreaData[4]["Cellx"]=1010
	tNoGiftMonster_AreaData[4]["Celly"]=708
	tNoGiftMonster_AreaData[5]={}
	tNoGiftMonster_AreaData[5]["NpcId"]=23270
	tNoGiftMonster_AreaData[5]["MapId"]=10367
	tNoGiftMonster_AreaData[5]["Cellx"]=77
	tNoGiftMonster_AreaData[5]["Celly"]=319
	tNoGiftMonster_AreaData[6]={}
	tNoGiftMonster_AreaData[6]["NpcId"]=23271
	tNoGiftMonster_AreaData[6]["MapId"]=10367
	tNoGiftMonster_AreaData[6]["Cellx"]=470
	tNoGiftMonster_AreaData[6]["Celly"]=643
local tNoGiftMonster_DropData={}
	--小爆
	tNoGiftMonster_DropData["Small"]={}
	tNoGiftMonster_DropData["Small"][1]=100
	tNoGiftMonster_DropData["Small"][2]=100
	tNoGiftMonster_DropData["Small"][3]=120
	tNoGiftMonster_DropData["Small"][4]=140
	tNoGiftMonster_DropData["Small"][5]=160
	tNoGiftMonster_DropData["Small"][6]=170
	tNoGiftMonster_DropData["Small"][7]=180
	tNoGiftMonster_DropData["Small"][8]=190
	tNoGiftMonster_DropData["Small"][9]=190
	tNoGiftMonster_DropData["Small"][4880]=2000
	--tNoGiftMonster_DropData["Small"][]=2500
	tNoGiftMonster_DropData["Small"][4883]=3000
	tNoGiftMonster_DropData["Small"][4886]=3500
	tNoGiftMonster_DropData["Small"][4889]=4000
	tNoGiftMonster_DropData["Small"][4891]=4000
	tNoGiftMonster_DropData["Small"][4894]=4000
	tNoGiftMonster_DropData["Small"][4896]=4000
	tNoGiftMonster_DropData["Small"][4897]=4000
	tNoGiftMonster_DropData["Small"][4882]=150
	--大爆
	tNoGiftMonster_DropData["More"]={}
	tNoGiftMonster_DropData["More"][1]=2
	tNoGiftMonster_DropData["More"][2]=2
	tNoGiftMonster_DropData["More"][3]=2
	tNoGiftMonster_DropData["More"][4]=3
	tNoGiftMonster_DropData["More"][5]=3
	tNoGiftMonster_DropData["More"][6]=4
	tNoGiftMonster_DropData["More"][7]=4
	tNoGiftMonster_DropData["More"][8]=5
	tNoGiftMonster_DropData["More"][9]=5
	tNoGiftMonster_DropData["More"][4880]=100
	--tNoGiftMonster_DropData["More"][]=110
	tNoGiftMonster_DropData["More"][4883]=120
	tNoGiftMonster_DropData["More"][4886]=130
	tNoGiftMonster_DropData["More"][4889]=140
	tNoGiftMonster_DropData["More"][4891]=150
	tNoGiftMonster_DropData["More"][4894]=150
	tNoGiftMonster_DropData["More"][4896]=150
	tNoGiftMonster_DropData["More"][4897]=150
	tNoGiftMonster_DropData["More"][4882]=10
	--Money
	tNoGiftMonster_DropData["Gold"]={}
	tNoGiftMonster_DropData["Gold"][1]={}
	tNoGiftMonster_DropData["Gold"][1]["StartNum"]=1
	tNoGiftMonster_DropData["Gold"][1]["EndNum"]=20
	tNoGiftMonster_DropData["Gold"][2]={}
	tNoGiftMonster_DropData["Gold"][2]["StartNum"]=20
	tNoGiftMonster_DropData["Gold"][2]["EndNum"]=99
	tNoGiftMonster_DropData["Gold"][3]={}
	tNoGiftMonster_DropData["Gold"][3]["StartNum"]=100
	tNoGiftMonster_DropData["Gold"][3]["EndNum"]=1000
	tNoGiftMonster_DropData["Gold"][4]={}
	tNoGiftMonster_DropData["Gold"][4]["StartNum"]=1000
	tNoGiftMonster_DropData["Gold"][4]["EndNum"]=5000
	
	
--掉率翻倍时间
local tNoGiftMonster_DoubleRate={}
	tNoGiftMonster_DoubleRate["Double"]={}
	tNoGiftMonster_DoubleRate["Double"]["ItemChanceSum"] = 10000
	tNoGiftMonster_DoubleRate["Double"][1]={}
	tNoGiftMonster_DoubleRate["Double"][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_DoubleRate["Double"][1]["ItemChance"] =500
	tNoGiftMonster_DoubleRate["Double"][1]["Item_1"] = 09
	tNoGiftMonster_DoubleRate["Double"][2]={}
	tNoGiftMonster_DoubleRate["Double"][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_DoubleRate["Double"][2]["ItemChance"] =1000
	tNoGiftMonster_DoubleRate["Double"][2]["Item_1"] = 10
	tNoGiftMonster_DoubleRate["Double"][3]={}
	tNoGiftMonster_DoubleRate["Double"][3]["RandomItemChanceType"] = 2
	tNoGiftMonster_DoubleRate["Double"][3]["ItemChance"] =500
	tNoGiftMonster_DoubleRate["Double"][3]["Item_1"] = 11
	tNoGiftMonster_DoubleRate["Double"][4]={}
	tNoGiftMonster_DoubleRate["Double"][4]["RandomItemChanceType"] = 2
	tNoGiftMonster_DoubleRate["Double"][4]["ItemChance"] =500
	tNoGiftMonster_DoubleRate["Double"][4]["Item_1"] = 12
	tNoGiftMonster_DoubleRate["Double"][5]={}
	tNoGiftMonster_DoubleRate["Double"][5]["RandomItemChanceType"] = 2
	tNoGiftMonster_DoubleRate["Double"][5]["ItemChance"] =500
	tNoGiftMonster_DoubleRate["Double"][5]["Item_1"] = 13
	tNoGiftMonster_DoubleRate["Double"][6]={}
	tNoGiftMonster_DoubleRate["Double"][6]["RandomItemChanceType"] = 2
	tNoGiftMonster_DoubleRate["Double"][6]["ItemChance"] =1500
	tNoGiftMonster_DoubleRate["Double"][6]["Item_1"] = 14
	tNoGiftMonster_DoubleRate["Double"][7]={}
	tNoGiftMonster_DoubleRate["Double"][7]["RandomItemChanceType"] = 2
	tNoGiftMonster_DoubleRate["Double"][7]["ItemChance"] =1000
	tNoGiftMonster_DoubleRate["Double"][7]["Item_1"] = 15
	tNoGiftMonster_DoubleRate["Double"][8]={}
	tNoGiftMonster_DoubleRate["Double"][8]["RandomItemChanceType"] = 2
	tNoGiftMonster_DoubleRate["Double"][8]["ItemChance"] =1000
	tNoGiftMonster_DoubleRate["Double"][8]["Item_1"] = 16
	tNoGiftMonster_DoubleRate["Double"][9]={}
	tNoGiftMonster_DoubleRate["Double"][9]["RandomItemChanceType"] = 2
	tNoGiftMonster_DoubleRate["Double"][9]["ItemChance"] =500
	tNoGiftMonster_DoubleRate["Double"][9]["Item_1"] = 17
	tNoGiftMonster_DoubleRate["Double"][10]={}
	tNoGiftMonster_DoubleRate["Double"][10]["RandomItemChanceType"] = 2
	tNoGiftMonster_DoubleRate["Double"][10]["ItemChance"] =500
	tNoGiftMonster_DoubleRate["Double"][10]["Item_1"] = 18
	tNoGiftMonster_DoubleRate["Double"][11]={}
	tNoGiftMonster_DoubleRate["Double"][11]["RandomItemChanceType"] = 2
	tNoGiftMonster_DoubleRate["Double"][11]["ItemChance"] =0
	tNoGiftMonster_DoubleRate["Double"][11]["Item_1"] = 19
	tNoGiftMonster_DoubleRate["Double"][12]={}
	tNoGiftMonster_DoubleRate["Double"][12]["RandomItemChanceType"] = 2
	tNoGiftMonster_DoubleRate["Double"][12]["ItemChance"] =500
	tNoGiftMonster_DoubleRate["Double"][12]["Item_1"] = 20
	tNoGiftMonster_DoubleRate["Double"][13]={}
	tNoGiftMonster_DoubleRate["Double"][13]["RandomItemChanceType"] = 2
	tNoGiftMonster_DoubleRate["Double"][13]["ItemChance"] =1000
	tNoGiftMonster_DoubleRate["Double"][13]["Item_1"] = 21
	tNoGiftMonster_DoubleRate["Double"][14]={}
	tNoGiftMonster_DoubleRate["Double"][14]["RandomItemChanceType"] = 2
	tNoGiftMonster_DoubleRate["Double"][14]["ItemChance"] =500
	tNoGiftMonster_DoubleRate["Double"][14]["Item_1"] = 22
	tNoGiftMonster_DoubleRate["Double"][15]={}
	tNoGiftMonster_DoubleRate["Double"][15]["RandomItemChanceType"] = 2
	tNoGiftMonster_DoubleRate["Double"][15]["ItemChance"] =500
	tNoGiftMonster_DoubleRate["Double"][15]["Item_1"] = 23
--初始大小爆模板
local tNoGiftMonster_Data={}
------小怪
	--小爆
	tNoGiftMonster_Data["Monster"]={}
	tNoGiftMonster_Data["Monster"][1]={}
	tNoGiftMonster_Data["Monster"][1]["ItemChanceSum"] = 100000
	tNoGiftMonster_Data["Monster"][1][1]={}
	tNoGiftMonster_Data["Monster"][1][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Data["Monster"][1][1]["ItemChance"] =0
	tNoGiftMonster_Data["Monster"][1][1]["Item_1"] = "Small"
	tNoGiftMonster_Data["Monster"][1][1]["Times"] = 1
	tNoGiftMonster_Data["Monster"][1][2]={}
	tNoGiftMonster_Data["Monster"][1][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Data["Monster"][1][2]["ItemChance"] = 100000
	tNoGiftMonster_Data["Monster"][1][2]["Item_1"] = 0
	--大爆
	tNoGiftMonster_Data["Monster"][2]={}
	tNoGiftMonster_Data["Monster"][2]["ItemChanceSum"] = 100000
	tNoGiftMonster_Data["Monster"][2][1]={}
	tNoGiftMonster_Data["Monster"][2][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Data["Monster"][2][1]["ItemChance"] =0
	tNoGiftMonster_Data["Monster"][2][1]["Item_1"] = "More"
	tNoGiftMonster_Data["Monster"][2][1]["Times"] = 3
	tNoGiftMonster_Data["Monster"][2][2]={}
	tNoGiftMonster_Data["Monster"][2][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Data["Monster"][2][2]["ItemChance"] = 100000
	tNoGiftMonster_Data["Monster"][2][2]["Item_1"] = 0

local tNoGiftMonster_Drop={}
------------小怪掉落----------
--双龙城
	tNoGiftMonster_Drop[1]={}
	tNoGiftMonster_Drop[1]["RandomSum"]=1000000
	tNoGiftMonster_Drop[1]["Random"]={}
	tNoGiftMonster_Drop[1]["Random"][3311719]=100--鸿运金钥
	--刷新宝箱
	tNoGiftMonster_Drop[1][1] ={}
	tNoGiftMonster_Drop[1][1]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[1][1][1]={}
	tNoGiftMonster_Drop[1][1][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[1][1][1]["ItemChance"] =1
	tNoGiftMonster_Drop[1][1][1]["Item_1"] = "movebox"
	tNoGiftMonster_Drop[1][1][2]={}
	tNoGiftMonster_Drop[1][1][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[1][1][2]["ItemChance"] =9999
	tNoGiftMonster_Drop[1][1][2]["Item_1"] = 0
--枫溪林
	tNoGiftMonster_Drop[2]={}
	tNoGiftMonster_Drop[2]["RandomSum"]=1000000
	tNoGiftMonster_Drop[2]["Random"]={}
	tNoGiftMonster_Drop[2]["Random"][723903]=100--被偷走的马鞍
	tNoGiftMonster_Drop[2]["Random"][3311719]=100--鸿运金钥
	--刷新宝箱
	tNoGiftMonster_Drop[2][1] ={}
	tNoGiftMonster_Drop[2][1]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[2][1][1]={}
	tNoGiftMonster_Drop[2][1][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[2][1][1]["ItemChance"] = 1
	tNoGiftMonster_Drop[2][1][1]["Item_1"] = "movebox"
	tNoGiftMonster_Drop[2][1][2]={}
	tNoGiftMonster_Drop[2][1][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[2][1][2]["ItemChance"] = 9999
	tNoGiftMonster_Drop[2][1][2]["Item_1"] = 0
--绝情谷
	tNoGiftMonster_Drop[3]={}
	tNoGiftMonster_Drop[3]["RandomSum"]=1000000
	tNoGiftMonster_Drop[3]["Random"]={}
	tNoGiftMonster_Drop[3]["Random"][1088001] = 300--流星
	tNoGiftMonster_Drop[3]["Random"][3311720]=500--鸿运灵石
	tNoGiftMonster_Drop[3]["Random"][3311719]=100--鸿运金钥
	--酒
	tNoGiftMonster_Drop[3][1] ={}
	tNoGiftMonster_Drop[3][1]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[3][1][1]={}
	tNoGiftMonster_Drop[3][1][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[3][1][1]["ItemChance"] = 2
	tNoGiftMonster_Drop[3][1][1]["Item_1"] = "Wine"
	tNoGiftMonster_Drop[3][1][2]={}
	tNoGiftMonster_Drop[3][1][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[3][1][2]["ItemChance"] = 9998
	tNoGiftMonster_Drop[3][1][2]["Item_1"] = 0
	
	--刷新宝箱
	tNoGiftMonster_Drop[3][2] ={}
	tNoGiftMonster_Drop[3][2]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[3][2][1]={}
	tNoGiftMonster_Drop[3][2][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[3][2][1]["ItemChance"] = 2
	tNoGiftMonster_Drop[3][2][1]["Item_1"] = "movebox"
	tNoGiftMonster_Drop[3][2][2]={}
	tNoGiftMonster_Drop[3][2][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[3][2][2]["ItemChance"] = 9998
	tNoGiftMonster_Drop[3][2][2]["Item_1"] = 0
--大漠
	tNoGiftMonster_Drop[4]={}
	
	tNoGiftMonster_Drop[4]={}
	tNoGiftMonster_Drop[4]["RandomSum"]=1000000
	tNoGiftMonster_Drop[4]["Random"]={}
	tNoGiftMonster_Drop[4]["Random"][3311720]=700--鸿运灵石
	tNoGiftMonster_Drop[4]["Random"][3311719]=100--鸿运金钥
	--宝石
	tNoGiftMonster_Drop[4][1] ={}
	tNoGiftMonster_Drop[4][1]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[4][1][1]={}
	tNoGiftMonster_Drop[4][1][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4][1][1]["ItemChance"] = 3
	tNoGiftMonster_Drop[4][1][1]["Item_1"] = "Gem"
	tNoGiftMonster_Drop[4][1][2]={}
	tNoGiftMonster_Drop[4][1][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4][1][2]["ItemChance"] = 9997
	tNoGiftMonster_Drop[4][1][2]["Item_1"] = 0
	--酒
	tNoGiftMonster_Drop[4][2] ={}
	tNoGiftMonster_Drop[4][2]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[4][2][1]={}
	tNoGiftMonster_Drop[4][2][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4][2][1]["ItemChance"] = 3
	tNoGiftMonster_Drop[4][2][1]["Item_1"] = "Wine"
	tNoGiftMonster_Drop[4][2][2]={}
	tNoGiftMonster_Drop[4][2][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4][2][2]["ItemChance"] = 9997
	tNoGiftMonster_Drop[4][2][2]["Item_1"] = 0
	
	--刷新宝箱
	tNoGiftMonster_Drop[4][3] ={}
	tNoGiftMonster_Drop[4][3]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[4][3][1]={}
	tNoGiftMonster_Drop[4][3][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4][3][1]["ItemChance"] = 2
	tNoGiftMonster_Drop[4][3][1]["Item_1"] = "movebox"
	tNoGiftMonster_Drop[4][3][2]={}
	tNoGiftMonster_Drop[4][3][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4][3][2]["ItemChance"] = 9998
	tNoGiftMonster_Drop[4][3][2]["Item_1"] = 0
--芦花荡
	tNoGiftMonster_Drop[5]={}
	tNoGiftMonster_Drop[5]["RandomSum"]=1000000
	tNoGiftMonster_Drop[5]["Random"]={}
	tNoGiftMonster_Drop[5]["Random"][3310800]=100--敦煌通行令
	tNoGiftMonster_Drop[5]["Random"][3311720]=900--鸿运灵石
	tNoGiftMonster_Drop[5]["Random"][3311719]=100--鸿运金钥
	--属性令/洗点丹
	tNoGiftMonster_Drop[5][1]={}
	tNoGiftMonster_Drop[5][1]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[5][1][1]={}
	tNoGiftMonster_Drop[5][1][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[5][1][1]["ItemChance"] = 3
	tNoGiftMonster_Drop[5][1][1]["Item_1"] = "Token"
	tNoGiftMonster_Drop[5][1][2]={}
	tNoGiftMonster_Drop[5][1][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[5][1][2]["ItemChance"] =9997
	tNoGiftMonster_Drop[5][1][2]["Item_1"] = 0
	--酒
	tNoGiftMonster_Drop[5][2] ={}
	tNoGiftMonster_Drop[5][2]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[5][2][1]={}
	tNoGiftMonster_Drop[5][2][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[5][2][1]["ItemChance"] = 4
	tNoGiftMonster_Drop[5][2][1]["Item_1"] = "Wine"
	tNoGiftMonster_Drop[5][2][2]={}
	tNoGiftMonster_Drop[5][2][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[5][2][2]["ItemChance"] = 9996
	tNoGiftMonster_Drop[5][2][2]["Item_1"] = 0
	
	--刷新宝箱
	tNoGiftMonster_Drop[5][3] ={}
	tNoGiftMonster_Drop[5][3]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[5][3][1]={}
	tNoGiftMonster_Drop[5][3][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[5][3][1]["ItemChance"] = 2
	tNoGiftMonster_Drop[5][3][1]["Item_1"] = "movebox"
	tNoGiftMonster_Drop[5][3][2]={}
	tNoGiftMonster_Drop[5][3][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[5][3][2]["ItemChance"] = 9998
	tNoGiftMonster_Drop[5][3][2]["Item_1"] = 0
--敦煌地宫
	tNoGiftMonster_Drop[6]={}
	tNoGiftMonster_Drop[6]["RandomSum"]=1000000
	tNoGiftMonster_Drop[6]["Random"]={}
	tNoGiftMonster_Drop[6]["Random"][1088001]=100--流星
	tNoGiftMonster_Drop[6]["Random"][3310801]=100--冰封1层通行证
	tNoGiftMonster_Drop[6]["Random"][3100046]=100--房屋设计图
	tNoGiftMonster_Drop[6]["Random"][3311720]=1200--鸿运灵石
	tNoGiftMonster_Drop[6]["Random"][3311719]=100--鸿运金钥
	--宝石
	tNoGiftMonster_Drop[6][1]={}
	tNoGiftMonster_Drop[6][1]["ItemChanceSum"] =10000
	tNoGiftMonster_Drop[6][1][1]={}
	tNoGiftMonster_Drop[6][1][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[6][1][1]["ItemChance"] = 1
	tNoGiftMonster_Drop[6][1][1]["Item_1"] ="Gem"
	tNoGiftMonster_Drop[6][1][2]={}
	tNoGiftMonster_Drop[6][1][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[6][1][2]["ItemChance"] = 9999
	tNoGiftMonster_Drop[6][1][2]["Item_1"] = 0
	--属性令/洗点丹
	tNoGiftMonster_Drop[6][2]={}
	tNoGiftMonster_Drop[6][2]["ItemChanceSum"] =10000
	tNoGiftMonster_Drop[6][2][1]={}
	tNoGiftMonster_Drop[6][2][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[6][2][1]["ItemChance"] = 1
	tNoGiftMonster_Drop[6][2][1]["Item_1"] ="Token"
	tNoGiftMonster_Drop[6][2][2]={}
	tNoGiftMonster_Drop[6][2][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[6][2][2]["ItemChance"] = 9999
	tNoGiftMonster_Drop[6][2][2]["Item_1"] = 0
	--练功
	tNoGiftMonster_Drop[6][3]={}
	tNoGiftMonster_Drop[6][3]["ItemChanceSum"] =10000
	tNoGiftMonster_Drop[6][3][1]={}
	tNoGiftMonster_Drop[6][3][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[6][3][1]["ItemChance"] =40
	tNoGiftMonster_Drop[6][3][1]["Item_1"] ="Pill"
	tNoGiftMonster_Drop[6][3][2]={}
	tNoGiftMonster_Drop[6][3][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[6][3][2]["ItemChance"] = 9960
	tNoGiftMonster_Drop[6][3][2]["Item_1"] = 0
	--内功
	tNoGiftMonster_Drop[6][4]={}
	tNoGiftMonster_Drop[6][4]["ItemChanceSum"] =10000
	tNoGiftMonster_Drop[6][4][1]={}
	tNoGiftMonster_Drop[6][4][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[6][4][1]["ItemChance"] = 1
	tNoGiftMonster_Drop[6][4][1]["Item_1"] ="Culture"
	tNoGiftMonster_Drop[6][4][2]={}
	tNoGiftMonster_Drop[6][4][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[6][4][2]["ItemChance"] = 9999
	tNoGiftMonster_Drop[6][4][2]["Item_1"] = 0
	--神器
	tNoGiftMonster_Drop[6][5]={}
	tNoGiftMonster_Drop[6][5]["ItemChanceSum"] =10000
	tNoGiftMonster_Drop[6][5][1]={}
	tNoGiftMonster_Drop[6][5][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[6][5][1]["ItemChance"] = 1
	tNoGiftMonster_Drop[6][5][1]["Item_1"] ="Xuanbao"
	tNoGiftMonster_Drop[6][5][2]={}
	tNoGiftMonster_Drop[6][5][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[6][5][2]["ItemChance"] = 9999
	tNoGiftMonster_Drop[6][5][2]["Item_1"] = 0
	--2转道具
	tNoGiftMonster_Drop[6][6]={}
	tNoGiftMonster_Drop[6][6]["ItemChanceSum"] =10000
	tNoGiftMonster_Drop[6][6][1]={}
	tNoGiftMonster_Drop[6][6][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[6][6][1]["ItemChance"] = 40
	tNoGiftMonster_Drop[6][6][1]["Item_1"] ="MeteProp"
	tNoGiftMonster_Drop[6][6][2]={}
	tNoGiftMonster_Drop[6][6][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[6][6][2]["ItemChance"] = 9960
	tNoGiftMonster_Drop[6][6][2]["Item_1"] = 0
	--酒
	tNoGiftMonster_Drop[6][7] ={}
	tNoGiftMonster_Drop[6][7]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[6][7][1]={}
	tNoGiftMonster_Drop[6][7][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[6][7][1]["ItemChance"] = 5
	tNoGiftMonster_Drop[6][7][1]["Item_1"] = "Wine"
	tNoGiftMonster_Drop[6][7][2]={}
	tNoGiftMonster_Drop[6][7][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[6][7][2]["ItemChance"] = 9995
	tNoGiftMonster_Drop[6][7][2]["Item_1"] = 0
	
	--刷新宝箱
	tNoGiftMonster_Drop[6][8] ={}
	tNoGiftMonster_Drop[6][8]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[6][8][1]={}
	tNoGiftMonster_Drop[6][8][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[6][8][1]["ItemChance"] = 3
	tNoGiftMonster_Drop[6][8][1]["Item_1"] = "movebox"
	tNoGiftMonster_Drop[6][8][2]={}
	tNoGiftMonster_Drop[6][8][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[6][8][2]["ItemChance"] = 9997
	tNoGiftMonster_Drop[6][8][2]["Item_1"] = 0
	--冰封第1层地宫
	tNoGiftMonster_Drop[7]={}
	tNoGiftMonster_Drop[7]["RandomSum"]=1000000
	tNoGiftMonster_Drop[7]["Random"]={}
	tNoGiftMonster_Drop[7]["Random"][1088001]=100--流星
	tNoGiftMonster_Drop[7]["Random"][3310802]=100--冰封2层通行证
	tNoGiftMonster_Drop[7]["Random"][3008221]=100--岫山玉
	tNoGiftMonster_Drop[7]["Random"][3100046]=100--房屋设计图
	tNoGiftMonster_Drop[7]["Random"][3311720]=1500--鸿运灵石
	tNoGiftMonster_Drop[7]["Random"][3311719]=200--鸿运金钥
	--宝石
	tNoGiftMonster_Drop[7][1] = {}
	tNoGiftMonster_Drop[7][1]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[7][1][1]={}
	tNoGiftMonster_Drop[7][1][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[7][1][1]["ItemChance"] =1
	tNoGiftMonster_Drop[7][1][1]["Item_1"] ="Gem"
	tNoGiftMonster_Drop[7][1][2]={}
	tNoGiftMonster_Drop[7][1][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[7][1][2]["ItemChance"] =9999
	tNoGiftMonster_Drop[7][1][2]["Item_1"] =0
	--属性令/洗点丹
	tNoGiftMonster_Drop[7][2] = {}
	tNoGiftMonster_Drop[7][2]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[7][2][1]={}
	tNoGiftMonster_Drop[7][2][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[7][2][1]["ItemChance"] =1
	tNoGiftMonster_Drop[7][2][1]["Item_1"] ="Token"
	tNoGiftMonster_Drop[7][2][2]={}
	tNoGiftMonster_Drop[7][2][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[7][2][2]["ItemChance"] = 9999
	tNoGiftMonster_Drop[7][2][2]["Item_1"] =0
	--赤炼石
	tNoGiftMonster_Drop[7][3] = {}
	tNoGiftMonster_Drop[7][3]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[7][3][1]={}
	tNoGiftMonster_Drop[7][3][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[7][3][1]["ItemChance"] =6
	tNoGiftMonster_Drop[7][3][1]["Item_1"] ="Stone"
	tNoGiftMonster_Drop[7][3][2]={}
	tNoGiftMonster_Drop[7][3][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[7][3][2]["ItemChance"] = 9994
	tNoGiftMonster_Drop[7][3][2]["Item_1"] =0
	--神纹
	tNoGiftMonster_Drop[7][4] = {}
	tNoGiftMonster_Drop[7][4]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[7][4][1]={}
	tNoGiftMonster_Drop[7][4][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[7][4][1]["ItemChance"] = 6
	tNoGiftMonster_Drop[7][4][1]["Item_1"] ="Rune"
	tNoGiftMonster_Drop[7][4][2]={}
	tNoGiftMonster_Drop[7][4][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[7][4][2]["ItemChance"] =9994
	tNoGiftMonster_Drop[7][4][2]["Item_1"] =0
	--气力值
	tNoGiftMonster_Drop[7][5] = {}
	tNoGiftMonster_Drop[7][5]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[7][5][1]={}
	tNoGiftMonster_Drop[7][5][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[7][5][1]["ItemChance"] = 50
	tNoGiftMonster_Drop[7][5][1]["Item_1"] ="Strength"
	tNoGiftMonster_Drop[7][5][2]={}
	tNoGiftMonster_Drop[7][5][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[7][5][2]["ItemChance"] = 9950
	tNoGiftMonster_Drop[7][5][2]["Item_1"] =0
	--内功
	tNoGiftMonster_Drop[7][6] = {}
	tNoGiftMonster_Drop[7][6]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[7][6][1]={}
	tNoGiftMonster_Drop[7][6][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[7][6][1]["ItemChance"] =2
	tNoGiftMonster_Drop[7][6][1]["Item_1"] ="Culture"
	tNoGiftMonster_Drop[7][6][2]={}
	tNoGiftMonster_Drop[7][6][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[7][6][2]["ItemChance"] = 9998
	tNoGiftMonster_Drop[7][6][2]["Item_1"] =0
	--神器
	tNoGiftMonster_Drop[7][7] = {}
	tNoGiftMonster_Drop[7][7]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[7][7][1]={}
	tNoGiftMonster_Drop[7][7][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[7][7][1]["ItemChance"] = 2
	tNoGiftMonster_Drop[7][7][1]["Item_1"] ="Xuanbao"
	tNoGiftMonster_Drop[7][7][2]={}
	tNoGiftMonster_Drop[7][7][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[7][7][2]["ItemChance"] =9998
	tNoGiftMonster_Drop[7][7][2]["Item_1"] =0
	--酒
	tNoGiftMonster_Drop[7][8] ={}
	tNoGiftMonster_Drop[7][8]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[7][8][1]={}
	tNoGiftMonster_Drop[7][8][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[7][8][1]["ItemChance"] = 5
	tNoGiftMonster_Drop[7][8][1]["Item_1"] = "Wine"
	tNoGiftMonster_Drop[7][8][2]={}
	tNoGiftMonster_Drop[7][8][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[7][8][2]["ItemChance"] = 9995
	tNoGiftMonster_Drop[7][8][2]["Item_1"] = 0
	
	--刷新宝箱
	tNoGiftMonster_Drop[7][9] ={}
	tNoGiftMonster_Drop[7][9]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[7][9][1]={}
	tNoGiftMonster_Drop[7][9][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[7][9][1]["ItemChance"] = 3
	tNoGiftMonster_Drop[7][9][1]["Item_1"] = "movebox"
	tNoGiftMonster_Drop[7][9][2]={}
	tNoGiftMonster_Drop[7][9][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[7][9][2]["ItemChance"] = 9997
	tNoGiftMonster_Drop[7][9][2]["Item_1"] = 0
	--冰封第2层地宫
	tNoGiftMonster_Drop[8]={}
	tNoGiftMonster_Drop[8]["RandomSum"]=1000000
	tNoGiftMonster_Drop[8]["Random"]={}
	tNoGiftMonster_Drop[8]["Random"][3310803]=100--冰封3层通行证
	tNoGiftMonster_Drop[8]["Random"][1088001]=100--流星
	tNoGiftMonster_Drop[8]["Random"][3008221]=100--岫山玉
	tNoGiftMonster_Drop[8]["Random"][3100046]=100--房屋设计图
	tNoGiftMonster_Drop[8]["Random"][3311720]=1800--鸿运灵石
	tNoGiftMonster_Drop[8]["Random"][3311719]=200--鸿运金钥
	--宝石
	tNoGiftMonster_Drop[8][1] = {}
	tNoGiftMonster_Drop[8][1]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[8][1][1]={}
	tNoGiftMonster_Drop[8][1][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[8][1][1]["ItemChance"] =1
	tNoGiftMonster_Drop[8][1][1]["Item_1"] ="Gem"
	tNoGiftMonster_Drop[8][1][2]={}
	tNoGiftMonster_Drop[8][1][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[8][1][2]["ItemChance"] = 9999
	tNoGiftMonster_Drop[8][1][2]["Item_1"] =0
	--属性令/洗点丹
	tNoGiftMonster_Drop[8][2] = {}
	tNoGiftMonster_Drop[8][2]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[8][2][1]={}
	tNoGiftMonster_Drop[8][2][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[8][2][1]["ItemChance"] =1
	tNoGiftMonster_Drop[8][2][1]["Item_1"] ="Token"
	tNoGiftMonster_Drop[8][2][2]={}
	tNoGiftMonster_Drop[8][2][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[8][2][2]["ItemChance"] =9999
	tNoGiftMonster_Drop[8][2][2]["Item_1"] =0
	--赤炼石
	tNoGiftMonster_Drop[8][3] = {}
	tNoGiftMonster_Drop[8][3]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[8][3][1]={}
	tNoGiftMonster_Drop[8][3][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[8][3][1]["ItemChance"] =7
	tNoGiftMonster_Drop[8][3][1]["Item_1"] ="Stone"
	tNoGiftMonster_Drop[8][3][2]={}
	tNoGiftMonster_Drop[8][3][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[8][3][2]["ItemChance"] =9993
	tNoGiftMonster_Drop[8][3][2]["Item_1"] =0
	--神纹
	tNoGiftMonster_Drop[8][4] = {}
	tNoGiftMonster_Drop[8][4]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[8][4][1]={}
	tNoGiftMonster_Drop[8][4][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[8][4][1]["ItemChance"] =7
	tNoGiftMonster_Drop[8][4][1]["Item_1"] ="Rune"
	tNoGiftMonster_Drop[8][4][2]={}
	tNoGiftMonster_Drop[8][4][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[8][4][2]["ItemChance"] =9993
	tNoGiftMonster_Drop[8][4][2]["Item_1"] =0
	--气力值
	tNoGiftMonster_Drop[8][5] = {}
	tNoGiftMonster_Drop[8][5]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[8][5][1]={}
	tNoGiftMonster_Drop[8][5][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[8][5][1]["ItemChance"] =55
	tNoGiftMonster_Drop[8][5][1]["Item_1"] ="Strength"
	tNoGiftMonster_Drop[8][5][2]={}
	tNoGiftMonster_Drop[8][5][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[8][5][2]["ItemChance"] =9945
	tNoGiftMonster_Drop[8][5][2]["Item_1"] =0
	--内功
	tNoGiftMonster_Drop[8][6] = {}
	tNoGiftMonster_Drop[8][6]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[8][6][1]={}
	tNoGiftMonster_Drop[8][6][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[8][6][1]["ItemChance"] =2
	tNoGiftMonster_Drop[8][6][1]["Item_1"] ="Culture"
	tNoGiftMonster_Drop[8][6][2]={}
	tNoGiftMonster_Drop[8][6][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[8][6][2]["ItemChance"] = 9998
	tNoGiftMonster_Drop[8][6][2]["Item_1"] =0
	--神器
	tNoGiftMonster_Drop[8][7] = {}
	tNoGiftMonster_Drop[8][7]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[8][7][1]={}
	tNoGiftMonster_Drop[8][7][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[8][7][1]["ItemChance"] =2
	tNoGiftMonster_Drop[8][7][1]["Item_1"] ="Xuanbao"
	tNoGiftMonster_Drop[8][7][2]={}
	tNoGiftMonster_Drop[8][7][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[8][7][2]["ItemChance"] =9998
	tNoGiftMonster_Drop[8][7][2]["Item_1"] =0
	
	--酒
	tNoGiftMonster_Drop[8][8] ={}
	tNoGiftMonster_Drop[8][8]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[8][8][1]={}
	tNoGiftMonster_Drop[8][8][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[8][8][1]["ItemChance"] = 5
	tNoGiftMonster_Drop[8][8][1]["Item_1"] = "Wine"
	tNoGiftMonster_Drop[8][8][2]={}
	tNoGiftMonster_Drop[8][8][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[8][8][2]["ItemChance"] = 9995
	tNoGiftMonster_Drop[8][8][2]["Item_1"] = 0
	
	--刷新宝箱
	tNoGiftMonster_Drop[8][9] ={}
	tNoGiftMonster_Drop[8][9]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[8][9][1]={}
	tNoGiftMonster_Drop[8][9][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[8][9][1]["ItemChance"] = 3
	tNoGiftMonster_Drop[8][9][1]["Item_1"] = "movebox"
	tNoGiftMonster_Drop[8][9][2]={}
	tNoGiftMonster_Drop[8][9][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[8][9][2]["ItemChance"] = 9997
	tNoGiftMonster_Drop[8][9][2]["Item_1"] = 0
	--冰封第3层地宫
	tNoGiftMonster_Drop[9]={}
	tNoGiftMonster_Drop[9]["RandomSum"]=1000000
	tNoGiftMonster_Drop[9]["Random"]={}
	tNoGiftMonster_Drop[9]["Random"][1088001]=100--流星
	tNoGiftMonster_Drop[9]["Random"][3008221]=100--岫山玉
	tNoGiftMonster_Drop[9]["Random"][3100046]=100--房屋设计图
	tNoGiftMonster_Drop[9]["Random"][3311720]=2000--鸿运灵石
	tNoGiftMonster_Drop[9]["Random"][3311719]=200--鸿运金钥
	--宝石
	tNoGiftMonster_Drop[9][1] = {}
	tNoGiftMonster_Drop[9][1]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[9][1][1]={}
	tNoGiftMonster_Drop[9][1][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[9][1][1]["ItemChance"] =1
	tNoGiftMonster_Drop[9][1][1]["Item_1"] ="Gem"
	tNoGiftMonster_Drop[9][1][2]={}
	tNoGiftMonster_Drop[9][1][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[9][1][2]["ItemChance"] =9999
	tNoGiftMonster_Drop[9][1][2]["Item_1"] =0
	--属性令/洗点丹
	tNoGiftMonster_Drop[9][2] = {}
	tNoGiftMonster_Drop[9][2]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[9][2][1]={}
	tNoGiftMonster_Drop[9][2][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[9][2][1]["ItemChance"] =1
	tNoGiftMonster_Drop[9][2][1]["Item_1"] ="Token"
	tNoGiftMonster_Drop[9][2][2]={}
	tNoGiftMonster_Drop[9][2][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[9][2][2]["ItemChance"] =9999
	tNoGiftMonster_Drop[9][2][2]["Item_1"] =0
	--赤炼石
	tNoGiftMonster_Drop[9][3] = {}
	tNoGiftMonster_Drop[9][3]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[9][3][1]={}
	tNoGiftMonster_Drop[9][3][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[9][3][1]["ItemChance"] = 8
	tNoGiftMonster_Drop[9][3][1]["Item_1"] ="Stone"
	tNoGiftMonster_Drop[9][3][2]={}
	tNoGiftMonster_Drop[9][3][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[9][3][2]["ItemChance"] =9992
	tNoGiftMonster_Drop[9][3][2]["Item_1"] =0
	--神纹
	tNoGiftMonster_Drop[9][4] = {}
	tNoGiftMonster_Drop[9][4]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[9][4][1]={}
	tNoGiftMonster_Drop[9][4][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[9][4][1]["ItemChance"] =8
	tNoGiftMonster_Drop[9][4][1]["Item_1"] ="Rune"
	tNoGiftMonster_Drop[9][4][2]={}
	tNoGiftMonster_Drop[9][4][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[9][4][2]["ItemChance"] = 9992
	tNoGiftMonster_Drop[9][4][2]["Item_1"] =0
	--气力值
	tNoGiftMonster_Drop[9][5] = {}
	tNoGiftMonster_Drop[9][5]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[9][5][1]={}
	tNoGiftMonster_Drop[9][5][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[9][5][1]["ItemChance"] =60
	tNoGiftMonster_Drop[9][5][1]["Item_1"] ="Strength"
	tNoGiftMonster_Drop[9][5][2]={}
	tNoGiftMonster_Drop[9][5][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[9][5][2]["ItemChance"] = 9940
	tNoGiftMonster_Drop[9][5][2]["Item_1"] =0
	--内功
	tNoGiftMonster_Drop[9][6] = {}
	tNoGiftMonster_Drop[9][6]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[9][6][1]={}
	tNoGiftMonster_Drop[9][6][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[9][6][1]["ItemChance"] = 2
	tNoGiftMonster_Drop[9][6][1]["Item_1"] ="Culture"
	tNoGiftMonster_Drop[9][6][2]={}
	tNoGiftMonster_Drop[9][6][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[9][6][2]["ItemChance"] = 9998
	tNoGiftMonster_Drop[9][6][2]["Item_1"] =0
	--神器
	tNoGiftMonster_Drop[9][7] = {}
	tNoGiftMonster_Drop[9][7]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[9][7][1]={}
	tNoGiftMonster_Drop[9][7][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[9][7][1]["ItemChance"] = 2
	tNoGiftMonster_Drop[9][7][1]["Item_1"] ="Xuanbao"
	tNoGiftMonster_Drop[9][7][2]={}
	tNoGiftMonster_Drop[9][7][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[9][7][2]["ItemChance"] =9998
	tNoGiftMonster_Drop[9][7][2]["Item_1"] =0
	--酒
	tNoGiftMonster_Drop[9][8] ={}
	tNoGiftMonster_Drop[9][8]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[9][8][1]={}
	tNoGiftMonster_Drop[9][8][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[9][8][1]["ItemChance"] = 5
	tNoGiftMonster_Drop[9][8][1]["Item_1"] = "Wine"
	tNoGiftMonster_Drop[9][8][2]={}
	tNoGiftMonster_Drop[9][8][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[9][8][2]["ItemChance"] = 9995
	tNoGiftMonster_Drop[9][8][2]["Item_1"] = 0
	
	--刷新宝箱
	tNoGiftMonster_Drop[9][9] ={}
	tNoGiftMonster_Drop[9][9]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[9][9][1]={}
	tNoGiftMonster_Drop[9][9][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[9][9][1]["ItemChance"] = 3
	tNoGiftMonster_Drop[9][9][1]["Item_1"] = "movebox"
	tNoGiftMonster_Drop[9][9][2]={}
	tNoGiftMonster_Drop[9][9][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[9][9][2]["ItemChance"] = 9997
	tNoGiftMonster_Drop[9][9][2]["Item_1"] = 0

----------精英怪掉落-----------
	--双龙城
	tNoGiftMonster_Drop[4880]={}
	tNoGiftMonster_Drop[4880]["RandomSum"]=1000000
	tNoGiftMonster_Drop[4880]["Random"]={}
	tNoGiftMonster_Drop[4880]["Random"][723340]=500000--奇门秘籍
	tNoGiftMonster_Drop[4880]["Random"][3311719]=5000--鸿运金钥
	--银两
	tNoGiftMonster_Drop[4880][1]={}
	tNoGiftMonster_Drop[4880][1]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[4880][1][1]={}
	tNoGiftMonster_Drop[4880][1][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4880][1][1]["ItemChance"] = 5000
	tNoGiftMonster_Drop[4880][1][1]["Item_1"] = "Gold"
	tNoGiftMonster_Drop[4880][1][2]={}
	tNoGiftMonster_Drop[4880][1][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4880][1][2]["ItemChance"] = 5000
	tNoGiftMonster_Drop[4880][1][2]["Item_1"] = 0
	
	--刷新宝箱
	tNoGiftMonster_Drop[4880][2] ={}
	tNoGiftMonster_Drop[4880][2]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[4880][2][1]={}
	tNoGiftMonster_Drop[4880][2][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4880][2][1]["ItemChance"] = 50
	tNoGiftMonster_Drop[4880][2][1]["Item_1"] = "movebox"
	tNoGiftMonster_Drop[4880][2][2]={}
	tNoGiftMonster_Drop[4880][2][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4880][2][2]["ItemChance"] = 9950
	tNoGiftMonster_Drop[4880][2][2]["Item_1"] = 0

	--绝情谷
	tNoGiftMonster_Drop[4883]={}
	tNoGiftMonster_Drop[4883]={}
	tNoGiftMonster_Drop[4883]["RandomSum"]=1000000
	tNoGiftMonster_Drop[4883]["Random"]={}
	tNoGiftMonster_Drop[4883]["Random"][3311720]=50000--鸿运灵石
	tNoGiftMonster_Drop[4883]["Random"][3311719]=5000--鸿运金钥
	--必掉
	tNoGiftMonster_Drop[4883]["Must"]={}
	tNoGiftMonster_Drop[4883]["Must"]["Item"]={}
	tNoGiftMonster_Drop[4883]["Must"]["Item"][1]={1088001,1}--流星
	--银两
	tNoGiftMonster_Drop[4883][1]={}
	tNoGiftMonster_Drop[4883][1]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[4883][1][1]={}
	tNoGiftMonster_Drop[4883][1][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4883][1][1]["ItemChance"] = 10000
	tNoGiftMonster_Drop[4883][1][1]["Item_1"] = "Gold"
	--酒
	tNoGiftMonster_Drop[4883][2]={}
	tNoGiftMonster_Drop[4883][2]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[4883][2][1]={}
	tNoGiftMonster_Drop[4883][2][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4883][2][1]["ItemChance"] = 1000
	tNoGiftMonster_Drop[4883][2][1]["Item_1"] ="Wine"
	tNoGiftMonster_Drop[4883][2][2]={}
	tNoGiftMonster_Drop[4883][2][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4883][2][2]["ItemChance"] = 9000
	tNoGiftMonster_Drop[4883][2][2]["Item_1"] =0
	
	--刷新宝箱
	tNoGiftMonster_Drop[4883][3] ={}
	tNoGiftMonster_Drop[4883][3]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[4883][3][1]={}
	tNoGiftMonster_Drop[4883][3][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4883][3][1]["ItemChance"] = 50
	tNoGiftMonster_Drop[4883][3][1]["Item_1"] = "movebox"
	tNoGiftMonster_Drop[4883][3][2]={}
	tNoGiftMonster_Drop[4883][3][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4883][3][2]["ItemChance"] = 9950
	tNoGiftMonster_Drop[4883][3][2]["Item_1"] = 0

	--大漠
	tNoGiftMonster_Drop[4886]={}
	
	tNoGiftMonster_Drop[4886]={}
	tNoGiftMonster_Drop[4886]["RandomSum"]=1000000
	tNoGiftMonster_Drop[4886]["Random"]={}
	tNoGiftMonster_Drop[4886]["Random"][3311720]=70000--鸿运灵石
	tNoGiftMonster_Drop[4886]["Random"][3311719]=5000--鸿运金钥
	--银两
	tNoGiftMonster_Drop[4886][1]={}
	tNoGiftMonster_Drop[4886][1]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[4886][1][1]={}
	tNoGiftMonster_Drop[4886][1][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4886][1][1]["ItemChance"] = 10000
	tNoGiftMonster_Drop[4886][1][1]["Item_1"] = "Gold"
	--宝石
	tNoGiftMonster_Drop[4886][2]={}
	tNoGiftMonster_Drop[4886][2]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[4886][2][1]={}
	tNoGiftMonster_Drop[4886][2][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4886][2][1]["ItemChance"] = 10000
	tNoGiftMonster_Drop[4886][2][1]["Item_1"] = "Gem"
	--酒
	tNoGiftMonster_Drop[4886][3]={}
	tNoGiftMonster_Drop[4886][3]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[4886][3][1]={}
	tNoGiftMonster_Drop[4886][3][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4886][3][1]["ItemChance"] = 1000
	tNoGiftMonster_Drop[4886][3][1]["Item_1"] ="Wine"
	tNoGiftMonster_Drop[4886][3][2]={}
	tNoGiftMonster_Drop[4886][3][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4886][3][2]["ItemChance"] = 9000
	tNoGiftMonster_Drop[4886][3][2]["Item_1"] =0
	
	--刷新宝箱
	tNoGiftMonster_Drop[4886][4] ={}
	tNoGiftMonster_Drop[4886][4]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[4886][4][1]={}
	tNoGiftMonster_Drop[4886][4][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4886][4][1]["ItemChance"] = 50
	tNoGiftMonster_Drop[4886][4][1]["Item_1"] = "movebox"
	tNoGiftMonster_Drop[4886][4][2]={}
	tNoGiftMonster_Drop[4886][4][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4886][4][2]["ItemChance"] = 9950
	tNoGiftMonster_Drop[4886][4][2]["Item_1"] = 0
	--芦花荡
	tNoGiftMonster_Drop[4889]={}
	--必掉
	tNoGiftMonster_Drop[4889]["RandomSum"]=1000000
	tNoGiftMonster_Drop[4889]["Random"]={}
	tNoGiftMonster_Drop[4889]["Random"][3310800]=20000--敦煌通行令
	tNoGiftMonster_Drop[4889]["Random"][3311720]=90000--鸿运灵石
	tNoGiftMonster_Drop[4889]["Random"][3311719]=5000--鸿运金钥

	--银两
	tNoGiftMonster_Drop[4889][1]={}
	tNoGiftMonster_Drop[4889][1]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[4889][1][1]={}
	tNoGiftMonster_Drop[4889][1][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4889][1][1]["ItemChance"] = 10000
	tNoGiftMonster_Drop[4889][1][1]["Item_1"] = "Gold"
	--属性令/洗点丹
	tNoGiftMonster_Drop[4889][2]={}
	tNoGiftMonster_Drop[4889][2]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[4889][2][1]={}
	tNoGiftMonster_Drop[4889][2][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4889][2][1]["ItemChance"] = 10000
	tNoGiftMonster_Drop[4889][2][1]["Item_1"] ="Token"
	--酒
	tNoGiftMonster_Drop[4889][3]={}
	tNoGiftMonster_Drop[4889][3]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[4889][3][1]={}
	tNoGiftMonster_Drop[4889][3][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4889][3][1]["ItemChance"] = 1000
	tNoGiftMonster_Drop[4889][3][1]["Item_1"] ="Wine"
	tNoGiftMonster_Drop[4889][3][2]={}
	tNoGiftMonster_Drop[4889][3][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4889][3][2]["ItemChance"] = 9000
	tNoGiftMonster_Drop[4889][3][2]["Item_1"] =0
	
	--刷新宝箱
	tNoGiftMonster_Drop[4889][4] ={}
	tNoGiftMonster_Drop[4889][4]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[4889][4][1]={}
	tNoGiftMonster_Drop[4889][4][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4889][4][1]["ItemChance"] = 50
	tNoGiftMonster_Drop[4889][4][1]["Item_1"] = "movebox"
	tNoGiftMonster_Drop[4889][4][2]={}
	tNoGiftMonster_Drop[4889][4][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4889][4][2]["ItemChance"] = 9950
	tNoGiftMonster_Drop[4889][4][2]["Item_1"] = 0
	--敦煌地宫
	tNoGiftMonster_Drop[4891]={}
	tNoGiftMonster_Drop[4891]["RandomSum"]=1000000
	tNoGiftMonster_Drop[4891]["Random"]={}
	tNoGiftMonster_Drop[4891]["Random"][3310801]=20000--冰封1层通行证
	tNoGiftMonster_Drop[4891]["Random"][1088001]=30000--流星
	tNoGiftMonster_Drop[4891]["Random"][1088000]=3000--龙珠
	tNoGiftMonster_Drop[4891]["Random"][3100046]=15000--房屋设计图
	tNoGiftMonster_Drop[4891]["Random"][3311720]=120000--鸿运灵石
	tNoGiftMonster_Drop[4891]["Random"][3311719]=6000--鸿运金钥
	--银两
	tNoGiftMonster_Drop[4891][1]={}
	tNoGiftMonster_Drop[4891][1]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[4891][1][1]={}
	tNoGiftMonster_Drop[4891][1][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4891][1][1]["ItemChance"] = 10000
	tNoGiftMonster_Drop[4891][1][1]["Item_1"] = "Gold"
	--宝石
	tNoGiftMonster_Drop[4891][2]={}
	tNoGiftMonster_Drop[4891][2]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[4891][2][1]={}
	tNoGiftMonster_Drop[4891][2][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4891][2][1]["ItemChance"] = 300
	tNoGiftMonster_Drop[4891][2][1]["Item_1"] ="Gem"
	tNoGiftMonster_Drop[4891][2][2]={}
	tNoGiftMonster_Drop[4891][2][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4891][2][2]["ItemChance"] = 9700
	tNoGiftMonster_Drop[4891][2][2]["Item_1"] =0
	--属性令/洗点丹
	tNoGiftMonster_Drop[4891][3]={}
	tNoGiftMonster_Drop[4891][3]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[4891][3][1]={}
	tNoGiftMonster_Drop[4891][3][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4891][3][1]["ItemChance"] = 300
	tNoGiftMonster_Drop[4891][3][1]["Item_1"] ="Token"
	tNoGiftMonster_Drop[4891][3][2]={}
	tNoGiftMonster_Drop[4891][3][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4891][3][2]["ItemChance"] = 9700
	tNoGiftMonster_Drop[4891][3][2]["Item_1"] =0
	--练功
	tNoGiftMonster_Drop[4891][4]={}
	tNoGiftMonster_Drop[4891][4]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[4891][4][1]={}
	tNoGiftMonster_Drop[4891][4][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4891][4][1]["ItemChance"] = 10000
	tNoGiftMonster_Drop[4891][4][1]["Item_1"] ="Pill"
	--内功
	tNoGiftMonster_Drop[4891][5]={}
	tNoGiftMonster_Drop[4891][5]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[4891][5][1]={}
	tNoGiftMonster_Drop[4891][5][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4891][5][1]["ItemChance"] = 200
	tNoGiftMonster_Drop[4891][5][1]["Item_1"] ="Culture"
	tNoGiftMonster_Drop[4891][5][2]={}
	tNoGiftMonster_Drop[4891][5][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4891][5][2]["ItemChance"] = 9800
	tNoGiftMonster_Drop[4891][5][2]["Item_1"] =0
	--神器
	tNoGiftMonster_Drop[4891][6]={}
	tNoGiftMonster_Drop[4891][6]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[4891][6][1]={}
	tNoGiftMonster_Drop[4891][6][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4891][6][1]["ItemChance"] = 200
	tNoGiftMonster_Drop[4891][6][1]["Item_1"] ="Xuanbao"
	tNoGiftMonster_Drop[4891][6][2]={}
	tNoGiftMonster_Drop[4891][6][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4891][6][2]["ItemChance"] = 9800
	tNoGiftMonster_Drop[4891][6][2]["Item_1"] =0
	--2转道具
	tNoGiftMonster_Drop[4891][7]={}
	tNoGiftMonster_Drop[4891][7]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[4891][7][1]={}
	tNoGiftMonster_Drop[4891][7][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4891][7][1]["ItemChance"] = 10000
	tNoGiftMonster_Drop[4891][7][1]["Item_1"] ="MeteProp"
	--酒
	tNoGiftMonster_Drop[4891][8]={}
	tNoGiftMonster_Drop[4891][8]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[4891][8][1]={}
	tNoGiftMonster_Drop[4891][8][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4891][8][1]["ItemChance"] = 1000
	tNoGiftMonster_Drop[4891][8][1]["Item_1"] ="Wine"
	tNoGiftMonster_Drop[4891][8][2]={}
	tNoGiftMonster_Drop[4891][8][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4891][8][2]["ItemChance"] = 9000
	tNoGiftMonster_Drop[4891][8][2]["Item_1"] =0
	
	--刷新宝箱
	tNoGiftMonster_Drop[4891][9] ={}
	tNoGiftMonster_Drop[4891][9]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[4891][9][1]={}
	tNoGiftMonster_Drop[4891][9][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4891][9][1]["ItemChance"] = 60
	tNoGiftMonster_Drop[4891][9][1]["Item_1"] = "movebox"
	tNoGiftMonster_Drop[4891][9][2]={}
	tNoGiftMonster_Drop[4891][9][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4891][9][2]["ItemChance"] = 9940
	tNoGiftMonster_Drop[4891][9][2]["Item_1"] = 0
	--冰封第1层地宫
	tNoGiftMonster_Drop[4894]={}
	tNoGiftMonster_Drop[4894]["RandomSum"]=1000000
	tNoGiftMonster_Drop[4894]["Random"]={}
	tNoGiftMonster_Drop[4894]["Random"][3310802]=20000--冰封2层通行证
	tNoGiftMonster_Drop[4894]["Random"][1088001]=30000--流星
	tNoGiftMonster_Drop[4894]["Random"][1088000] = 3500--龙珠
	tNoGiftMonster_Drop[4894]["Random"][3100046]=15000--房屋设计图
	tNoGiftMonster_Drop[4894]["Random"][3008221]=15000--岫山玉
	tNoGiftMonster_Drop[4894]["Random"][3311720]=150000--鸿运灵石
	tNoGiftMonster_Drop[4894]["Random"][3311719]=6000--鸿运金钥
	--银两
	tNoGiftMonster_Drop[4894][1]={}
	tNoGiftMonster_Drop[4894][1]["ItemChanceSum"] = 100
	tNoGiftMonster_Drop[4894][1][1]={}
	tNoGiftMonster_Drop[4894][1][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4894][1][1]["ItemChance"] = 100
	tNoGiftMonster_Drop[4894][1][1]["Item_1"] = "Gold"
	--宝石
	tNoGiftMonster_Drop[4894][2]={}
	tNoGiftMonster_Drop[4894][2]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[4894][2][1]={}
	tNoGiftMonster_Drop[4894][2][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4894][2][1]["ItemChance"] = 300
	tNoGiftMonster_Drop[4894][2][1]["Item_1"] ="Gem"
	tNoGiftMonster_Drop[4894][2][2]={}
	tNoGiftMonster_Drop[4894][2][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4894][2][2]["ItemChance"] = 9700
	tNoGiftMonster_Drop[4894][2][2]["Item_1"] =0
	--属性令/洗点丹
	tNoGiftMonster_Drop[4894][3]={}
	tNoGiftMonster_Drop[4894][3]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[4894][3][1]={}
	tNoGiftMonster_Drop[4894][3][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4894][3][1]["ItemChance"] = 300
	tNoGiftMonster_Drop[4894][3][1]["Item_1"] ="Token"
	tNoGiftMonster_Drop[4894][3][2]={}
	tNoGiftMonster_Drop[4894][3][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4894][3][2]["ItemChance"] = 9700
	tNoGiftMonster_Drop[4894][3][2]["Item_1"] =0
	--赤炼石
	tNoGiftMonster_Drop[4894][4]={}
	tNoGiftMonster_Drop[4894][4]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[4894][4][1]={}
	tNoGiftMonster_Drop[4894][4][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4894][4][1]["ItemChance"] = 800
	tNoGiftMonster_Drop[4894][4][1]["Item_1"] ="Stone"
	tNoGiftMonster_Drop[4894][4][2]={}
	tNoGiftMonster_Drop[4894][4][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4894][4][2]["ItemChance"] = 9200
	tNoGiftMonster_Drop[4894][4][2]["Item_1"] =0
	--神纹
	tNoGiftMonster_Drop[4894][5]={}
	tNoGiftMonster_Drop[4894][5]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[4894][5][1]={}
	tNoGiftMonster_Drop[4894][5][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4894][5][1]["ItemChance"] = 800
	tNoGiftMonster_Drop[4894][5][1]["Item_1"] ="Rune"
	tNoGiftMonster_Drop[4894][5][2]={}
	tNoGiftMonster_Drop[4894][5][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4894][5][2]["ItemChance"] = 9200
	tNoGiftMonster_Drop[4894][5][2]["Item_1"] =0
	--气力
	tNoGiftMonster_Drop[4894][6]={}
	tNoGiftMonster_Drop[4894][6]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[4894][6][1]={}
	tNoGiftMonster_Drop[4894][6][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4894][6][1]["ItemChance"] = 10000
	tNoGiftMonster_Drop[4894][6][1]["Item_1"] ="Strength"
	--内功
	tNoGiftMonster_Drop[4894][7]={}
	tNoGiftMonster_Drop[4894][7]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[4894][7][1]={}
	tNoGiftMonster_Drop[4894][7][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4894][7][1]["ItemChance"] = 300
	tNoGiftMonster_Drop[4894][7][1]["Item_1"] ="Culture"
	tNoGiftMonster_Drop[4894][7][2]={}
	tNoGiftMonster_Drop[4894][7][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4894][7][2]["ItemChance"] = 9700
	tNoGiftMonster_Drop[4894][7][2]["Item_1"] =0
	--神器
	tNoGiftMonster_Drop[4894][8]={}
	tNoGiftMonster_Drop[4894][8]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[4894][8][1]={}
	tNoGiftMonster_Drop[4894][8][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4894][8][1]["ItemChance"] = 300
	tNoGiftMonster_Drop[4894][8][1]["Item_1"] ="Xuanbao"
	tNoGiftMonster_Drop[4894][8][2]={}
	tNoGiftMonster_Drop[4894][8][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4894][8][2]["ItemChance"] = 9700
	tNoGiftMonster_Drop[4894][8][2]["Item_1"] =0
	--史诗武器碎片
	tNoGiftMonster_Drop[4894][9]={}
	tNoGiftMonster_Drop[4894][9]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[4894][9][1]={}
	tNoGiftMonster_Drop[4894][9][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4894][9][1]["ItemChance"] = 35
	tNoGiftMonster_Drop[4894][9][1]["Item_1"] ="Fragment"
	tNoGiftMonster_Drop[4894][9][2]={}
	tNoGiftMonster_Drop[4894][9][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4894][9][2]["ItemChance"] = 9965
	tNoGiftMonster_Drop[4894][9][2]["Item_1"] =0
	--酒
	tNoGiftMonster_Drop[4894][10]={}
	tNoGiftMonster_Drop[4894][10]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[4894][10][1]={}
	tNoGiftMonster_Drop[4894][10][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4894][10][1]["ItemChance"] = 1000
	tNoGiftMonster_Drop[4894][10][1]["Item_1"] ="Wine"
	tNoGiftMonster_Drop[4894][10][2]={}
	tNoGiftMonster_Drop[4894][10][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4894][10][2]["ItemChance"] = 9000
	tNoGiftMonster_Drop[4894][10][2]["Item_1"] =0
	
	tNoGiftMonster_Drop[4894][11] ={}
	tNoGiftMonster_Drop[4894][11]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[4894][11][1]={}
	tNoGiftMonster_Drop[4894][11][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4894][11][1]["ItemChance"] = 60
	tNoGiftMonster_Drop[4894][11][1]["Item_1"] = "movebox"
	tNoGiftMonster_Drop[4894][11][2]={}
	tNoGiftMonster_Drop[4894][11][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4894][11][2]["ItemChance"] = 9940
	tNoGiftMonster_Drop[4894][11][2]["Item_1"] = 0
	--冰封第2层地宫
	tNoGiftMonster_Drop[4896]={}
	tNoGiftMonster_Drop[4896]["RandomSum"]=1000000
	tNoGiftMonster_Drop[4896]["Random"]={}
	tNoGiftMonster_Drop[4896]["Random"][3310803]=20000--冰封3层通行证
	tNoGiftMonster_Drop[4896]["Random"][1088001]=30000--流星
	tNoGiftMonster_Drop[4896]["Random"][1088000] = 4000--龙珠
	tNoGiftMonster_Drop[4896]["Random"][3100046]=15000--房屋设计图
	tNoGiftMonster_Drop[4896]["Random"][3008221]=15000--岫山玉
	tNoGiftMonster_Drop[4896]["Random"][3311720]=180000--鸿运灵石
	tNoGiftMonster_Drop[4896]["Random"][3311719]=6000--鸿运金钥
	
	--银两
	tNoGiftMonster_Drop[4896][1]={}
	tNoGiftMonster_Drop[4896][1]["ItemChanceSum"] = 100
	tNoGiftMonster_Drop[4896][1][1]={}
	tNoGiftMonster_Drop[4896][1][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4896][1][1]["ItemChance"] = 100
	tNoGiftMonster_Drop[4896][1][1]["Item_1"] = "Gold"
	--宝石
	tNoGiftMonster_Drop[4896][2]={}
	tNoGiftMonster_Drop[4896][2]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[4896][2][1]={}
	tNoGiftMonster_Drop[4896][2][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4896][2][1]["ItemChance"] = 300
	tNoGiftMonster_Drop[4896][2][1]["Item_1"] ="Gem"
	tNoGiftMonster_Drop[4896][2][2]={}
	tNoGiftMonster_Drop[4896][2][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4896][2][2]["ItemChance"] = 9700
	tNoGiftMonster_Drop[4896][2][2]["Item_1"] =0
	--属性令/洗点丹
	tNoGiftMonster_Drop[4896][3]={}
	tNoGiftMonster_Drop[4896][3]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[4896][3][1]={}
	tNoGiftMonster_Drop[4896][3][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4896][3][1]["ItemChance"] = 300
	tNoGiftMonster_Drop[4896][3][1]["Item_1"] ="Token"
	tNoGiftMonster_Drop[4896][3][2]={}
	tNoGiftMonster_Drop[4896][3][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4896][3][2]["ItemChance"] = 9700
	tNoGiftMonster_Drop[4896][3][2]["Item_1"] =0
	--赤炼石
	tNoGiftMonster_Drop[4896][4]={}
	tNoGiftMonster_Drop[4896][4]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[4896][4][1]={}
	tNoGiftMonster_Drop[4896][4][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4896][4][1]["ItemChance"] = 1000
	tNoGiftMonster_Drop[4896][4][1]["Item_1"] ="Stone"
	tNoGiftMonster_Drop[4896][4][2]={}
	tNoGiftMonster_Drop[4896][4][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4896][4][2]["ItemChance"] = 9000
	tNoGiftMonster_Drop[4896][4][2]["Item_1"] =0
	--神纹
	tNoGiftMonster_Drop[4896][5]={}
	tNoGiftMonster_Drop[4896][5]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[4896][5][1]={}
	tNoGiftMonster_Drop[4896][5][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4896][5][1]["ItemChance"] = 1000
	tNoGiftMonster_Drop[4896][5][1]["Item_1"] ="Rune"
	tNoGiftMonster_Drop[4896][5][2]={}
	tNoGiftMonster_Drop[4896][5][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4896][5][2]["ItemChance"] = 9000
	tNoGiftMonster_Drop[4896][5][2]["Item_1"] =0
	--气力
	tNoGiftMonster_Drop[4896][6]={}
	tNoGiftMonster_Drop[4896][6]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[4896][6][1]={}
	tNoGiftMonster_Drop[4896][6][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4896][6][1]["ItemChance"] = 10000
	tNoGiftMonster_Drop[4896][6][1]["Item_1"] ="Strength"
	--内功
	tNoGiftMonster_Drop[4896][7]={}
	tNoGiftMonster_Drop[4896][7]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[4896][7][1]={}
	tNoGiftMonster_Drop[4896][7][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4896][7][1]["ItemChance"] = 300
	tNoGiftMonster_Drop[4896][7][1]["Item_1"] ="Culture"
	tNoGiftMonster_Drop[4896][7][2]={}
	tNoGiftMonster_Drop[4896][7][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4896][7][2]["ItemChance"] = 9700
	tNoGiftMonster_Drop[4896][7][2]["Item_1"] =0
	--神器
	tNoGiftMonster_Drop[4896][8]={}
	tNoGiftMonster_Drop[4896][8]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[4896][8][1]={}
	tNoGiftMonster_Drop[4896][8][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4896][8][1]["ItemChance"] = 300
	tNoGiftMonster_Drop[4896][8][1]["Item_1"] ="Xuanbao"
	tNoGiftMonster_Drop[4896][8][2]={}
	tNoGiftMonster_Drop[4896][8][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4896][8][2]["ItemChance"] = 9700
	tNoGiftMonster_Drop[4896][8][2]["Item_1"] =0
	--史诗武器碎片
	tNoGiftMonster_Drop[4896][9]={}
	tNoGiftMonster_Drop[4896][9]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[4896][9][1]={}
	tNoGiftMonster_Drop[4896][9][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4896][9][1]["ItemChance"] = 40
	tNoGiftMonster_Drop[4896][9][1]["Item_1"] ="Fragment"
	tNoGiftMonster_Drop[4896][9][2]={}
	tNoGiftMonster_Drop[4896][9][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4896][9][2]["ItemChance"] = 9960
	tNoGiftMonster_Drop[4896][9][2]["Item_1"] =0
	--酒
	tNoGiftMonster_Drop[4896][10]={}
	tNoGiftMonster_Drop[4896][10]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[4896][10][1]={}
	tNoGiftMonster_Drop[4896][10][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4896][10][1]["ItemChance"] = 1000
	tNoGiftMonster_Drop[4896][10][1]["Item_1"] ="Wine"
	tNoGiftMonster_Drop[4896][10][2]={}
	tNoGiftMonster_Drop[4896][10][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4896][10][2]["ItemChance"] = 9000
	tNoGiftMonster_Drop[4896][10][2]["Item_1"] =0
	--冰封第3层地宫
	tNoGiftMonster_Drop[4897]={}
	tNoGiftMonster_Drop[4897]["RandomSum"]=1000000
	tNoGiftMonster_Drop[4897]["Random"]={}
	tNoGiftMonster_Drop[4897]["Random"][1088001]=30000--流星
	tNoGiftMonster_Drop[4897]["Random"][1088000] = 4500--龙珠
	tNoGiftMonster_Drop[4897]["Random"][3100046]=15000--房屋设计图
	tNoGiftMonster_Drop[4897]["Random"][3008221]=15000--岫山玉
	tNoGiftMonster_Drop[4897]["Random"][3311720]=200000--鸿运灵石
	tNoGiftMonster_Drop[4897]["Random"][3311719]=6000--鸿运金钥
	--银两
	tNoGiftMonster_Drop[4897][1]={}
	tNoGiftMonster_Drop[4897][1]["ItemChanceSum"] = 100
	tNoGiftMonster_Drop[4897][1][1]={}
	tNoGiftMonster_Drop[4897][1][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4897][1][1]["ItemChance"] = 100
	tNoGiftMonster_Drop[4897][1][1]["Item_1"] = "Gold"
	--宝石
	tNoGiftMonster_Drop[4897][2]={}
	tNoGiftMonster_Drop[4897][2]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[4897][2][1]={}
	tNoGiftMonster_Drop[4897][2][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4897][2][1]["ItemChance"] = 300
	tNoGiftMonster_Drop[4897][2][1]["Item_1"] ="Gem"
	tNoGiftMonster_Drop[4897][2][2]={}
	tNoGiftMonster_Drop[4897][2][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4897][2][2]["ItemChance"] = 9700
	tNoGiftMonster_Drop[4897][2][2]["Item_1"] =0
	--属性令/洗点丹
	tNoGiftMonster_Drop[4897][3]={}
	tNoGiftMonster_Drop[4897][3]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[4897][3][1]={}
	tNoGiftMonster_Drop[4897][3][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4897][3][1]["ItemChance"] = 300
	tNoGiftMonster_Drop[4897][3][1]["Item_1"] ="Token"
	tNoGiftMonster_Drop[4897][3][2]={}
	tNoGiftMonster_Drop[4897][3][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4897][3][2]["ItemChance"] = 9700
	tNoGiftMonster_Drop[4897][3][2]["Item_1"] =0
	--赤炼石
	tNoGiftMonster_Drop[4897][4]={}
	tNoGiftMonster_Drop[4897][4]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[4897][4][1]={}
	tNoGiftMonster_Drop[4897][4][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4897][4][1]["ItemChance"] = 1200
	tNoGiftMonster_Drop[4897][4][1]["Item_1"] ="Stone"
	tNoGiftMonster_Drop[4897][4][2]={}
	tNoGiftMonster_Drop[4897][4][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4897][4][2]["ItemChance"] = 8800
	tNoGiftMonster_Drop[4897][4][2]["Item_1"] =0
	--神纹
	tNoGiftMonster_Drop[4897][5]={}
	tNoGiftMonster_Drop[4897][5]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[4897][5][1]={}
	tNoGiftMonster_Drop[4897][5][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4897][5][1]["ItemChance"] = 1200
	tNoGiftMonster_Drop[4897][5][1]["Item_1"] ="Rune"
	tNoGiftMonster_Drop[4897][5][2]={}
	tNoGiftMonster_Drop[4897][5][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4897][5][2]["ItemChance"] = 8800
	tNoGiftMonster_Drop[4897][5][2]["Item_1"] =0
	--气力
	tNoGiftMonster_Drop[4897][6]={}
	tNoGiftMonster_Drop[4897][6]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[4897][6][1]={}
	tNoGiftMonster_Drop[4897][6][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4897][6][1]["ItemChance"] = 10000
	tNoGiftMonster_Drop[4897][6][1]["Item_1"] ="Strength"
	--内功
	tNoGiftMonster_Drop[4897][7]={}
	tNoGiftMonster_Drop[4897][7]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[4897][7][1]={}
	tNoGiftMonster_Drop[4897][7][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4897][7][1]["ItemChance"] = 300
	tNoGiftMonster_Drop[4897][7][1]["Item_1"] ="Culture"
	tNoGiftMonster_Drop[4897][7][2]={}
	tNoGiftMonster_Drop[4897][7][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4897][7][2]["ItemChance"] = 9700
	tNoGiftMonster_Drop[4897][7][2]["Item_1"] =0
	--神器
	tNoGiftMonster_Drop[4897][8]={}
	tNoGiftMonster_Drop[4897][8]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[4897][8][1]={}
	tNoGiftMonster_Drop[4897][8][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4897][8][1]["ItemChance"] = 300
	tNoGiftMonster_Drop[4897][8][1]["Item_1"] ="Xuanbao"
	tNoGiftMonster_Drop[4897][8][2]={}
	tNoGiftMonster_Drop[4897][8][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4897][8][2]["ItemChance"] = 9700
	tNoGiftMonster_Drop[4897][8][2]["Item_1"] =0
	--史诗武器碎片
	tNoGiftMonster_Drop[4897][9]={}
	tNoGiftMonster_Drop[4897][9]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[4897][9][1]={}
	tNoGiftMonster_Drop[4897][9][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4897][9][1]["ItemChance"] = 45
	tNoGiftMonster_Drop[4897][9][1]["Item_1"] ="Fragment"
	tNoGiftMonster_Drop[4897][9][2]={}
	tNoGiftMonster_Drop[4897][9][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4897][9][2]["ItemChance"] = 9955
	tNoGiftMonster_Drop[4897][9][2]["Item_1"] =0
	--酒
	tNoGiftMonster_Drop[4897][10]={}
	tNoGiftMonster_Drop[4897][10]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[4897][10][1]={}
	tNoGiftMonster_Drop[4897][10][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4897][10][1]["ItemChance"] = 1000
	tNoGiftMonster_Drop[4897][10][1]["Item_1"] ="Wine"
	tNoGiftMonster_Drop[4897][10][2]={}
	tNoGiftMonster_Drop[4897][10][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4897][10][2]["ItemChance"] = 9000
	tNoGiftMonster_Drop[4897][10][2]["Item_1"] =0
	
	tNoGiftMonster_Drop[4897][11] ={}
	tNoGiftMonster_Drop[4897][11]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[4897][11][1]={}
	tNoGiftMonster_Drop[4897][11][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4897][11][1]["ItemChance"] = 60
	tNoGiftMonster_Drop[4897][11][1]["Item_1"] = "movebox"
	tNoGiftMonster_Drop[4897][11][2]={}
	tNoGiftMonster_Drop[4897][11][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4897][11][2]["ItemChance"] = 9940
	tNoGiftMonster_Drop[4897][11][2]["Item_1"] = 0
	--马贼
	tNoGiftMonster_Drop[4882]={}
	tNoGiftMonster_Drop[4882]["RandomSum"]=1000000
	tNoGiftMonster_Drop[4882]["Random"]={}
	tNoGiftMonster_Drop[4882]["Random"][3311719]=100--鸿运金钥
	
	tNoGiftMonster_Drop[4882][1]={}
	tNoGiftMonster_Drop[4882][1]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[4882][1][1]={}
	tNoGiftMonster_Drop[4882][1][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4882][1][1]["ItemChance"] = 3000
	tNoGiftMonster_Drop[4882][1][1]["Item_1"] = "Gold"
	tNoGiftMonster_Drop[4882][1][2]={}
	tNoGiftMonster_Drop[4882][1][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4882][1][2]["ItemChance"] = 6000
	tNoGiftMonster_Drop[4882][1][2]["Item_1"] = 723340
	tNoGiftMonster_Drop[4882][1][3]={}
	tNoGiftMonster_Drop[4882][1][3]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4882][1][3]["ItemChance"] = 1000
	tNoGiftMonster_Drop[4882][1][3]["Item_1"] = 723903
	
	tNoGiftMonster_Drop[4882][2] ={}
	tNoGiftMonster_Drop[4882][2]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[4882][2][1]={}
	tNoGiftMonster_Drop[4882][2][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4882][2][1]["ItemChance"] = 60
	tNoGiftMonster_Drop[4882][2][1]["Item_1"] = "movebox"
	tNoGiftMonster_Drop[4882][2][2]={}
	tNoGiftMonster_Drop[4882][2][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4882][2][2]["ItemChance"] = 9940
	tNoGiftMonster_Drop[4882][2][2]["Item_1"] = 0
------------boss掉落-----------
	--双龙城
	tNoGiftMonster_Drop[4898]={}
	tNoGiftMonster_Drop[4898]["Must"]={}
	tNoGiftMonster_Drop[4898]["Must"]["Money"]={}
	tNoGiftMonster_Drop[4898]["Must"]["Money"]["Value"]=1000
	tNoGiftMonster_Drop[4898]["Must"]["Item"]={}
	tNoGiftMonster_Drop[4898]["Must"]["Item"][1]={1088001,1}--流星
	--大小爆
	tNoGiftMonster_Drop[4898][1]={}
	tNoGiftMonster_Drop[4898][1]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[4898][1][1] = {}
	tNoGiftMonster_Drop[4898][1][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4898][1][1]["ItemChance"] = 9000
	tNoGiftMonster_Drop[4898][1][1]["Item_1"] ="Small"
	tNoGiftMonster_Drop[4898][1][2]={}
	tNoGiftMonster_Drop[4898][1][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4898][1][2]["ItemChance"] =1000
	tNoGiftMonster_Drop[4898][1][2]["Item_1"] = "More"
	--概率掉
	tNoGiftMonster_Drop[4898][2]={}
	tNoGiftMonster_Drop[4898][2]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[4898][2][1] = {}
	tNoGiftMonster_Drop[4898][2][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4898][2][1]["ItemChance"] = 2600
	tNoGiftMonster_Drop[4898][2][1]["Item_1"] ="Money"
	tNoGiftMonster_Drop[4898][2][1]["Value"] =2000
	tNoGiftMonster_Drop[4898][2][2]={}
	tNoGiftMonster_Drop[4898][2][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4898][2][2]["ItemChance"] =2500
	tNoGiftMonster_Drop[4898][2][2]["Item_1"] = 723341
	tNoGiftMonster_Drop[4898][2][3]={}
	tNoGiftMonster_Drop[4898][2][3]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4898][2][3]["ItemChance"] =1000
	tNoGiftMonster_Drop[4898][2][3]["Item_1"] = 3314900
	tNoGiftMonster_Drop[4898][2][4]={}
	tNoGiftMonster_Drop[4898][2][4]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4898][2][4]["ItemChance"] =1500
	tNoGiftMonster_Drop[4898][2][4]["Item_1"] = 700011
	tNoGiftMonster_Drop[4898][2][5]={}
	tNoGiftMonster_Drop[4898][2][5]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4898][2][5]["ItemChance"] =400
	tNoGiftMonster_Drop[4898][2][5]["Item_1"] = 700101
	tNoGiftMonster_Drop[4898][2][6]={}
	tNoGiftMonster_Drop[4898][2][6]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4898][2][6]["ItemChance"] =400
	tNoGiftMonster_Drop[4898][2][6]["Item_1"] = 700121
	tNoGiftMonster_Drop[4898][2][7]={}
	tNoGiftMonster_Drop[4898][2][7]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4898][2][7]["ItemChance"] =1500
	tNoGiftMonster_Drop[4898][2][7]["Item_1"] = 1088001
	tNoGiftMonster_Drop[4898][2][8]={}
	tNoGiftMonster_Drop[4898][2][8]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4898][2][8]["ItemChance"] =100
	tNoGiftMonster_Drop[4898][2][8]["Item_1"] = 1088000

	--枫溪林
	tNoGiftMonster_Drop[4899]={}
	tNoGiftMonster_Drop[4899]["Must"]={}
	tNoGiftMonster_Drop[4899]["Must"]["Money"]={}
	tNoGiftMonster_Drop[4899]["Must"]["Money"]["Value"]=2000
	--大小爆
	tNoGiftMonster_Drop[4899][1]={}
	tNoGiftMonster_Drop[4899][1]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[4899][1][1] = {}
	tNoGiftMonster_Drop[4899][1][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4899][1][1]["ItemChance"] = 9000
	tNoGiftMonster_Drop[4899][1][1]["Item_1"] ="Small"
	tNoGiftMonster_Drop[4899][1][2]={}
	tNoGiftMonster_Drop[4899][1][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4899][1][2]["ItemChance"] =1000
	tNoGiftMonster_Drop[4899][1][2]["Item_1"] = "More"
	--马
	tNoGiftMonster_Drop[4899][2]={}
	tNoGiftMonster_Drop[4899][2]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[4899][2][1] = {}
	tNoGiftMonster_Drop[4899][2][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4899][2][1]["ItemChance"] = 4000
	tNoGiftMonster_Drop[4899][2][1]["Item_1"] =723855
	tNoGiftMonster_Drop[4899][2][2]={}
	tNoGiftMonster_Drop[4899][2][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4899][2][2]["ItemChance"] =3000
	tNoGiftMonster_Drop[4899][2][2]["Item_1"] = 723856
	tNoGiftMonster_Drop[4899][2][3]={}
	tNoGiftMonster_Drop[4899][2][3]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4899][2][3]["ItemChance"] =3000
	tNoGiftMonster_Drop[4899][2][3]["Item_1"] =723859
	--概率掉
	tNoGiftMonster_Drop[4899][3]={}
	tNoGiftMonster_Drop[4899][3]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[4899][3][1] = {}
	tNoGiftMonster_Drop[4899][3][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4899][3][1]["ItemChance"] = 2300
	tNoGiftMonster_Drop[4899][3][1]["Item_1"] ="Money"
	tNoGiftMonster_Drop[4899][3][1]["Value"] =3000
	tNoGiftMonster_Drop[4899][3][2]={}
	tNoGiftMonster_Drop[4899][3][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4899][3][2]["ItemChance"] =1500
	tNoGiftMonster_Drop[4899][3][2]["Item_1"] = 723341
	tNoGiftMonster_Drop[4899][3][3]={}
	tNoGiftMonster_Drop[4899][3][3]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4899][3][3]["ItemChance"] =1500
	tNoGiftMonster_Drop[4899][3][3]["Item_1"] = 700011
	tNoGiftMonster_Drop[4899][3][4]={}
	tNoGiftMonster_Drop[4899][3][4]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4899][3][4]["ItemChance"] =400
	tNoGiftMonster_Drop[4899][3][4]["Item_1"] = 700101
	tNoGiftMonster_Drop[4899][3][5]={}
	tNoGiftMonster_Drop[4899][3][5]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4899][3][5]["ItemChance"] =400
	tNoGiftMonster_Drop[4899][3][5]["Item_1"] = 700121
	tNoGiftMonster_Drop[4899][3][6]={}
	tNoGiftMonster_Drop[4899][3][6]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4899][3][6]["ItemChance"] =1000
	tNoGiftMonster_Drop[4899][3][6]["Item_1"] = 3310810
	tNoGiftMonster_Drop[4899][3][7]={}
	tNoGiftMonster_Drop[4899][3][7]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4899][3][7]["ItemChance"] =900
	tNoGiftMonster_Drop[4899][3][7]["Item_1"] = 3310809
	tNoGiftMonster_Drop[4899][3][8]={}
	tNoGiftMonster_Drop[4899][3][8]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4899][3][8]["ItemChance"] =0
	tNoGiftMonster_Drop[4899][3][8]["Item_1"] = 0
	tNoGiftMonster_Drop[4899][3][9]={}
	tNoGiftMonster_Drop[4899][3][9]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4899][3][9]["ItemChance"] =100
	tNoGiftMonster_Drop[4899][3][9]["Item_1"] = 3310811
	tNoGiftMonster_Drop[4899][3][10]={}
	tNoGiftMonster_Drop[4899][3][10]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4899][3][10]["ItemChance"] =1700
	tNoGiftMonster_Drop[4899][3][10]["Item_1"] = 1088001
	tNoGiftMonster_Drop[4899][3][11]={}
	tNoGiftMonster_Drop[4899][3][11]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4899][3][11]["ItemChance"] =100
	tNoGiftMonster_Drop[4899][3][11]["Item_1"] = 1088000
	tNoGiftMonster_Drop[4899][3][12]={}
	tNoGiftMonster_Drop[4899][3][12]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4899][3][12]["ItemChance"] =100
	tNoGiftMonster_Drop[4899][3][12]["Item_1"] = 3303159

	--绝情谷
	tNoGiftMonster_Drop[4900]={}
	tNoGiftMonster_Drop[4900]["Must"]={}
	tNoGiftMonster_Drop[4900]["Must"]["Money"]={}
	tNoGiftMonster_Drop[4900]["Must"]["Money"]["Value"]=3000
	tNoGiftMonster_Drop[4900]["Must"]["Item"]={}
	tNoGiftMonster_Drop[4900]["Must"]["Item"][1]={1088001,8}
	--大小爆
	tNoGiftMonster_Drop[4900][1]={}
	tNoGiftMonster_Drop[4900][1]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[4900][1][1] = {}
	tNoGiftMonster_Drop[4900][1][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4900][1][1]["ItemChance"] = 9000
	tNoGiftMonster_Drop[4900][1][1]["Item_1"] ="Small"
	tNoGiftMonster_Drop[4900][1][2]={}
	tNoGiftMonster_Drop[4900][1][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4900][1][2]["ItemChance"] =1000
	tNoGiftMonster_Drop[4900][1][2]["Item_1"] = "More"
	--概率掉
	tNoGiftMonster_Drop[4900][2]={}
	tNoGiftMonster_Drop[4900][2]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[4900][2][1] = {}
	tNoGiftMonster_Drop[4900][2][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4900][2][1]["ItemChance"] = 2300
	tNoGiftMonster_Drop[4900][2][1]["Item_1"] ="Money"
	tNoGiftMonster_Drop[4900][2][1]["Value"] =5000
	tNoGiftMonster_Drop[4900][2][2]={}
	tNoGiftMonster_Drop[4900][2][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4900][2][2]["ItemChance"] =1200
	tNoGiftMonster_Drop[4900][2][2]["Item_1"] = 723341
	tNoGiftMonster_Drop[4900][2][3]={}
	tNoGiftMonster_Drop[4900][2][3]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4900][2][3]["ItemChance"] =600
	tNoGiftMonster_Drop[4900][2][3]["Item_1"] = 700011
	tNoGiftMonster_Drop[4900][2][4]={}
	tNoGiftMonster_Drop[4900][2][4]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4900][2][4]["ItemChance"] =200
	tNoGiftMonster_Drop[4900][2][4]["Item_1"] = 700101
	tNoGiftMonster_Drop[4900][2][5]={}
	tNoGiftMonster_Drop[4900][2][5]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4900][2][5]["ItemChance"] =200
	tNoGiftMonster_Drop[4900][2][5]["Item_1"] = 700121
	tNoGiftMonster_Drop[4900][2][6]={}
	tNoGiftMonster_Drop[4900][2][6]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4900][2][6]["ItemChance"] =1000
	tNoGiftMonster_Drop[4900][2][6]["Item_1"] = 3310810
	tNoGiftMonster_Drop[4900][2][7]={}
	tNoGiftMonster_Drop[4900][2][7]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4900][2][7]["ItemChance"] =700
	tNoGiftMonster_Drop[4900][2][7]["Item_1"] = 3310809
	tNoGiftMonster_Drop[4900][2][8]={}
	tNoGiftMonster_Drop[4900][2][8]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4900][2][8]["ItemChance"] =0
	tNoGiftMonster_Drop[4900][2][8]["Item_1"] = 0
	tNoGiftMonster_Drop[4900][2][9]={}
	tNoGiftMonster_Drop[4900][2][9]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4900][2][9]["ItemChance"] =300
	tNoGiftMonster_Drop[4900][2][9]["Item_1"] = 3310811
	tNoGiftMonster_Drop[4900][2][10]={}
	tNoGiftMonster_Drop[4900][2][10]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4900][2][10]["ItemChance"] =2000
	tNoGiftMonster_Drop[4900][2][10]["Item_1"] = 1088001
	tNoGiftMonster_Drop[4900][2][11]={}
	tNoGiftMonster_Drop[4900][2][11]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4900][2][11]["ItemChance"] =600
	tNoGiftMonster_Drop[4900][2][11]["Item_1"] = 1088002
	tNoGiftMonster_Drop[4900][2][12]={}
	tNoGiftMonster_Drop[4900][2][12]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4900][2][12]["ItemChance"] =300
	tNoGiftMonster_Drop[4900][2][12]["Item_1"] = 720027
	tNoGiftMonster_Drop[4900][2][13]={}
	tNoGiftMonster_Drop[4900][2][13]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4900][2][13]["ItemChance"] =120
	tNoGiftMonster_Drop[4900][2][13]["Item_1"] = 1088000
	tNoGiftMonster_Drop[4900][2][14]={}
	tNoGiftMonster_Drop[4900][2][14]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4900][2][14]["ItemChance"] =480
	tNoGiftMonster_Drop[4900][2][14]["Item_1"] = 723087

	--大漠
	tNoGiftMonster_Drop[4901]={}
	tNoGiftMonster_Drop[4901]["Must"]={}
	tNoGiftMonster_Drop[4901]["Must"]["Money"]={}
	tNoGiftMonster_Drop[4901]["Must"]["Money"]["Value"]=5000
	--大小爆
	tNoGiftMonster_Drop[4901][1]={}
	tNoGiftMonster_Drop[4901][1]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[4901][1][1] = {}
	tNoGiftMonster_Drop[4901][1][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4901][1][1]["ItemChance"] = 9000
	tNoGiftMonster_Drop[4901][1][1]["Item_1"] ="Small"
	tNoGiftMonster_Drop[4901][1][2]={}
	tNoGiftMonster_Drop[4901][1][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4901][1][2]["ItemChance"] =1000
	tNoGiftMonster_Drop[4901][1][2]["Item_1"] = "More"
	--宝石
	tNoGiftMonster_Drop[4901][2]={}
	tNoGiftMonster_Drop[4901][2]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[4901][2][1] = {}
	tNoGiftMonster_Drop[4901][2][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4901][2][1]["ItemChance"] = 1450
	tNoGiftMonster_Drop[4901][2][1]["Item_1"] =700042
	tNoGiftMonster_Drop[4901][2][2]={}
	tNoGiftMonster_Drop[4901][2][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4901][2][2]["ItemChance"] =1450
	tNoGiftMonster_Drop[4901][2][2]["Item_1"] = 700032
	tNoGiftMonster_Drop[4901][2][3]={}
	tNoGiftMonster_Drop[4901][2][3]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4901][2][3]["ItemChance"] =1450
	tNoGiftMonster_Drop[4901][2][3]["Item_1"] =700022
	tNoGiftMonster_Drop[4901][2][4]={}
	tNoGiftMonster_Drop[4901][2][4]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4901][2][4]["ItemChance"] =1300
	tNoGiftMonster_Drop[4901][2][4]["Item_1"] =700012
	tNoGiftMonster_Drop[4901][2][5]={}
	tNoGiftMonster_Drop[4901][2][5]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4901][2][5]["ItemChance"] =1450
	tNoGiftMonster_Drop[4901][2][5]["Item_1"] =700002
	tNoGiftMonster_Drop[4901][2][6]={}
	tNoGiftMonster_Drop[4901][2][6]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4901][2][6]["ItemChance"] =1450
	tNoGiftMonster_Drop[4901][2][6]["Item_1"] =700052
	tNoGiftMonster_Drop[4901][2][7]={}
	tNoGiftMonster_Drop[4901][2][7]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4901][2][7]["ItemChance"] =1450
	tNoGiftMonster_Drop[4901][2][7]["Item_1"] =700062
	--概率掉
	tNoGiftMonster_Drop[4901][3]={}
	tNoGiftMonster_Drop[4901][3]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[4901][3][1] = {}
	tNoGiftMonster_Drop[4901][3][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4901][3][1]["ItemChance"] = 2000
	tNoGiftMonster_Drop[4901][3][1]["Item_1"] ="Money"
	tNoGiftMonster_Drop[4901][3][1]["Value"] =5000
	tNoGiftMonster_Drop[4901][3][1]["Num"] = 2
	tNoGiftMonster_Drop[4901][3][2]={}
	tNoGiftMonster_Drop[4901][3][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4901][3][2]["ItemChance"] =1000
	tNoGiftMonster_Drop[4901][3][2]["Item_1"] = 723341
	tNoGiftMonster_Drop[4901][3][2]["Num"] = 2
	tNoGiftMonster_Drop[4901][3][3]={}
	tNoGiftMonster_Drop[4901][3][3]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4901][3][3]["ItemChance"] =1600
	tNoGiftMonster_Drop[4901][3][3]["Item_1"] = 700011
	tNoGiftMonster_Drop[4901][3][3]["Num"] = 2
	tNoGiftMonster_Drop[4901][3][4]={}
	tNoGiftMonster_Drop[4901][3][4]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4901][3][4]["ItemChance"] =400
	tNoGiftMonster_Drop[4901][3][4]["Item_1"] = 700101
	tNoGiftMonster_Drop[4901][3][4]["Num"] = 2
	tNoGiftMonster_Drop[4901][3][5]={}
	tNoGiftMonster_Drop[4901][3][5]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4901][3][5]["ItemChance"] =400
	tNoGiftMonster_Drop[4901][3][5]["Item_1"] = 700121
	tNoGiftMonster_Drop[4901][3][5]["Num"] = 2
	tNoGiftMonster_Drop[4901][3][6]={}
	tNoGiftMonster_Drop[4901][3][6]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4901][3][6]["ItemChance"] =900
	tNoGiftMonster_Drop[4901][3][6]["Item_1"] = 3310810
	tNoGiftMonster_Drop[4901][3][7]={}
	tNoGiftMonster_Drop[4901][3][7]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4901][3][7]["ItemChance"] =600
	tNoGiftMonster_Drop[4901][3][7]["Item_1"] = 3310809
	tNoGiftMonster_Drop[4901][3][8]={}
	tNoGiftMonster_Drop[4901][3][8]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4901][3][8]["ItemChance"] =0
	tNoGiftMonster_Drop[4901][3][8]["Item_1"] = 0
	tNoGiftMonster_Drop[4901][3][9]={}
	tNoGiftMonster_Drop[4901][3][9]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4901][3][9]["ItemChance"] =500
	tNoGiftMonster_Drop[4901][3][9]["Item_1"] = 3310811
	tNoGiftMonster_Drop[4901][3][10]={}
	tNoGiftMonster_Drop[4901][3][10]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4901][3][10]["ItemChance"] =1600
	tNoGiftMonster_Drop[4901][3][10]["Item_1"] = 1088001
	tNoGiftMonster_Drop[4901][3][10]["Num"] = 2
	tNoGiftMonster_Drop[4901][3][11]={}
	tNoGiftMonster_Drop[4901][3][11]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4901][3][11]["ItemChance"] =150
	tNoGiftMonster_Drop[4901][3][11]["Item_1"] = 1088000
	tNoGiftMonster_Drop[4901][3][12]={}
	tNoGiftMonster_Drop[4901][3][12]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4901][3][12]["ItemChance"] =150
	tNoGiftMonster_Drop[4901][3][12]["Item_1"] = 3303159
	tNoGiftMonster_Drop[4901][3][13]={}
	tNoGiftMonster_Drop[4901][3][13]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4901][3][13]["ItemChance"] =100
	tNoGiftMonster_Drop[4901][3][13]["Item_1"] = 711188
	tNoGiftMonster_Drop[4901][3][14]={}
	tNoGiftMonster_Drop[4901][3][14]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4901][3][14]["ItemChance"] =600
	tNoGiftMonster_Drop[4901][3][14]["Item_1"] = 721261

	--芦花荡
	tNoGiftMonster_Drop[4902]={}
	tNoGiftMonster_Drop[4902]["Must"]={}
	tNoGiftMonster_Drop[4902]["Must"]["Money"]={}
	tNoGiftMonster_Drop[4902]["Must"]["Money"]["Value"]=7500
	tNoGiftMonster_Drop[4902]["Must"]["Item"]={}
	tNoGiftMonster_Drop[4902]["Must"]["Item"][1]={721258,1}
	--大小爆
	tNoGiftMonster_Drop[4902][1]={}
	tNoGiftMonster_Drop[4902][1]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[4902][1][1] = {}
	tNoGiftMonster_Drop[4902][1][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4902][1][1]["ItemChance"] = 9000
	tNoGiftMonster_Drop[4902][1][1]["Item_1"] ="Small"
	tNoGiftMonster_Drop[4902][1][2]={}
	tNoGiftMonster_Drop[4902][1][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4902][1][2]["ItemChance"] =1000
	tNoGiftMonster_Drop[4902][1][2]["Item_1"] = "More"
	--概率掉
	tNoGiftMonster_Drop[4902][2]={}
	tNoGiftMonster_Drop[4902][2]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[4902][2][1] = {}
	tNoGiftMonster_Drop[4902][2][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4902][2][1]["ItemChance"] = 2000
	tNoGiftMonster_Drop[4902][2][1]["Item_1"] ="Money"
	tNoGiftMonster_Drop[4902][2][1]["Value"] =5000
	tNoGiftMonster_Drop[4902][2][1]["Num"] =3
	tNoGiftMonster_Drop[4902][2][2]={}
	tNoGiftMonster_Drop[4902][2][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4902][2][2]["ItemChance"] =1000
	tNoGiftMonster_Drop[4902][2][2]["Item_1"] = 723341
	tNoGiftMonster_Drop[4902][2][2]["Num"] =3
	tNoGiftMonster_Drop[4902][2][3]={}
	tNoGiftMonster_Drop[4902][2][3]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4902][2][3]["ItemChance"] =1500
	tNoGiftMonster_Drop[4902][2][3]["Item_1"] = 700011
	tNoGiftMonster_Drop[4902][2][3]["Num"] =3
	tNoGiftMonster_Drop[4902][2][4]={}
	tNoGiftMonster_Drop[4902][2][4]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4902][2][4]["ItemChance"] =400
	tNoGiftMonster_Drop[4902][2][4]["Item_1"] = 700101
	tNoGiftMonster_Drop[4902][2][4]["Num"] =3
	tNoGiftMonster_Drop[4902][2][5]={}
	tNoGiftMonster_Drop[4902][2][5]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4902][2][5]["ItemChance"] =400
	tNoGiftMonster_Drop[4902][2][5]["Item_1"] = 700121
	tNoGiftMonster_Drop[4902][2][3]["Num"] =3
	tNoGiftMonster_Drop[4902][2][6]={}
	tNoGiftMonster_Drop[4902][2][6]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4902][2][6]["ItemChance"] =1000
	tNoGiftMonster_Drop[4902][2][6]["Item_1"] = 3310814
	tNoGiftMonster_Drop[4902][2][7]={}
	tNoGiftMonster_Drop[4902][2][7]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4902][2][7]["ItemChance"] =1000
	tNoGiftMonster_Drop[4902][2][7]["Item_1"] = 3310813
	tNoGiftMonster_Drop[4902][2][8]={}
	tNoGiftMonster_Drop[4902][2][8]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4902][2][8]["ItemChance"] =1600
	tNoGiftMonster_Drop[4902][2][8]["Item_1"] = 1088001
	tNoGiftMonster_Drop[4902][2][8]["Num"] = 3
	tNoGiftMonster_Drop[4902][2][9]={}
	tNoGiftMonster_Drop[4902][2][9]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4902][2][9]["ItemChance"] =200
	tNoGiftMonster_Drop[4902][2][9]["Item_1"] = 1088000
	tNoGiftMonster_Drop[4902][2][10]={}
	tNoGiftMonster_Drop[4902][2][10]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4902][2][10]["ItemChance"] =500
	tNoGiftMonster_Drop[4902][2][10]["Item_1"] = 753001
	tNoGiftMonster_Drop[4902][2][11]={}
	tNoGiftMonster_Drop[4902][2][11]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4902][2][11]["ItemChance"] =300
	tNoGiftMonster_Drop[4902][2][11]["Item_1"] = 751001
	tNoGiftMonster_Drop[4902][2][12]={}
	tNoGiftMonster_Drop[4902][2][12]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4902][2][12]["ItemChance"] =100
	tNoGiftMonster_Drop[4902][2][12]["Item_1"] = 754001


	--敦煌地宫
	--boss
	tNoGiftMonster_Drop[4903]={}
	tNoGiftMonster_Drop[4903]["Must"]={}
	tNoGiftMonster_Drop[4903]["Must"]["Money"]={}
	tNoGiftMonster_Drop[4903]["Must"]["Money"]["Value"]=10000
	tNoGiftMonster_Drop[4903]["Must"]["Item"]={}
	tNoGiftMonster_Drop[4903]["Must"]["Item"][1]={3002926,1}--秘制免费修炼丹
	--大小爆
	tNoGiftMonster_Drop[4903][1]={}
	tNoGiftMonster_Drop[4903][1]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[4903][1][1] = {}
	tNoGiftMonster_Drop[4903][1][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4903][1][1]["ItemChance"] = 9000
	tNoGiftMonster_Drop[4903][1][1]["Item_1"] ="Small"
	tNoGiftMonster_Drop[4903][1][2]={}
	tNoGiftMonster_Drop[4903][1][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4903][1][2]["ItemChance"] =1000
	tNoGiftMonster_Drop[4903][1][2]["Item_1"] = "More"
	--概率掉
	tNoGiftMonster_Drop[4903][2]={}
	tNoGiftMonster_Drop[4903][2]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[4903][2][1] = {}
	tNoGiftMonster_Drop[4903][2][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4903][2][1]["ItemChance"] = 2000
	tNoGiftMonster_Drop[4903][2][1]["Item_1"] ="Money"
	tNoGiftMonster_Drop[4903][2][1]["Value"] =6000
	tNoGiftMonster_Drop[4903][2][1]["Num"] =3
	tNoGiftMonster_Drop[4903][2][2]={}
	tNoGiftMonster_Drop[4903][2][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4903][2][2]["ItemChance"] =1000
	tNoGiftMonster_Drop[4903][2][2]["Item_1"] = 723341
	tNoGiftMonster_Drop[4903][2][2]["Num"] =3
	tNoGiftMonster_Drop[4903][2][3]={}
	tNoGiftMonster_Drop[4903][2][3]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4903][2][3]["ItemChance"] =1800
	tNoGiftMonster_Drop[4903][2][3]["Item_1"] = 3003124
	tNoGiftMonster_Drop[4903][2][3]["Num"] =3
	tNoGiftMonster_Drop[4903][2][4]={}
	tNoGiftMonster_Drop[4903][2][4]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4903][2][4]["ItemChance"] =1000
	tNoGiftMonster_Drop[4903][2][4]["Item_1"] = 3002029
	tNoGiftMonster_Drop[4903][2][4]["Num"] =3
	tNoGiftMonster_Drop[4903][2][5]={}
	tNoGiftMonster_Drop[4903][2][5]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4903][2][5]["ItemChance"] =600
	tNoGiftMonster_Drop[4903][2][5]["Item_1"] = 3003125
	tNoGiftMonster_Drop[4903][2][3]["Num"] =3
	tNoGiftMonster_Drop[4903][2][6]={}
	tNoGiftMonster_Drop[4903][2][6]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4903][2][6]["ItemChance"] =100
	tNoGiftMonster_Drop[4903][2][6]["Item_1"] = 3003126
	tNoGiftMonster_Drop[4903][2][6]["Num"] =2
	tNoGiftMonster_Drop[4903][2][7]={}
	tNoGiftMonster_Drop[4903][2][7]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4903][2][7]["ItemChance"] =800
	tNoGiftMonster_Drop[4903][2][7]["Item_1"] = 3310816
	tNoGiftMonster_Drop[4903][2][8]={}
	tNoGiftMonster_Drop[4903][2][8]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4903][2][8]["ItemChance"] =800
	tNoGiftMonster_Drop[4903][2][8]["Item_1"] = 3310813
	tNoGiftMonster_Drop[4903][2][9]={}
	tNoGiftMonster_Drop[4903][2][9]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4903][2][9]["ItemChance"] =1600
	tNoGiftMonster_Drop[4903][2][9]["Item_1"] = 1088001
	tNoGiftMonster_Drop[4903][2][9]["Num"] =3
	tNoGiftMonster_Drop[4903][2][10]={}
	tNoGiftMonster_Drop[4903][2][10]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4903][2][10]["ItemChance"] =300
	tNoGiftMonster_Drop[4903][2][10]["Item_1"] = 1088000
	--大boss
	tNoGiftMonster_Drop[4907]={}
	tNoGiftMonster_Drop[4907]["Must"]={}
	tNoGiftMonster_Drop[4907]["Must"]["Money"]={}
	tNoGiftMonster_Drop[4907]["Must"]["Money"]["Value"]=10000
	tNoGiftMonster_Drop[4907]["Must"]["Money"]["Times"]=5
	tNoGiftMonster_Drop[4907]["Must"]["Item"]={}
	tNoGiftMonster_Drop[4907]["Must"]["Item"][1]={3002926,3}--秘制免费修炼丹
	--大小爆
	tNoGiftMonster_Drop[4907][1]={}
	tNoGiftMonster_Drop[4907][1]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[4907][1][1] = {}
	tNoGiftMonster_Drop[4907][1][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4907][1][1]["ItemChance"] = 0
	tNoGiftMonster_Drop[4907][1][1]["Item_1"] ="Small"
	tNoGiftMonster_Drop[4907][1][2]={}
	tNoGiftMonster_Drop[4907][1][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4907][1][2]["ItemChance"] =10000
	tNoGiftMonster_Drop[4907][1][2]["Item_1"] = "More"
	--概率掉
	tNoGiftMonster_Drop[4907][2]={}
	tNoGiftMonster_Drop[4907][2]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[4907][2][1] = {}
	tNoGiftMonster_Drop[4907][2][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4907][2][1]["ItemChance"] = 2000
	tNoGiftMonster_Drop[4907][2][1]["Item_1"] ="Money"
	tNoGiftMonster_Drop[4907][2][1]["Value"] =20000
	tNoGiftMonster_Drop[4907][2][1]["Num"] =2
	tNoGiftMonster_Drop[4907][2][2]={}
	tNoGiftMonster_Drop[4907][2][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4907][2][2]["ItemChance"] =1600
	tNoGiftMonster_Drop[4907][2][2]["Item_1"] = 3003124
	tNoGiftMonster_Drop[4907][2][2]["Num"] =8
	tNoGiftMonster_Drop[4907][2][3]={}
	tNoGiftMonster_Drop[4907][2][3]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4907][2][3]["ItemChance"] =1300
	tNoGiftMonster_Drop[4907][2][3]["Item_1"] = 3002029
	tNoGiftMonster_Drop[4907][2][3]["Num"] =8
	tNoGiftMonster_Drop[4907][2][4]={}
	tNoGiftMonster_Drop[4907][2][4]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4907][2][4]["ItemChance"] =1100
	tNoGiftMonster_Drop[4907][2][4]["Item_1"] = 3003125
	tNoGiftMonster_Drop[4907][2][4]["Num"] =8
	tNoGiftMonster_Drop[4907][2][5]={}
	tNoGiftMonster_Drop[4907][2][5]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4907][2][5]["ItemChance"] =100
	tNoGiftMonster_Drop[4907][2][5]["Item_1"] = 3003126
	tNoGiftMonster_Drop[4907][2][3]["Num"] =4
	tNoGiftMonster_Drop[4907][2][6]={}
	tNoGiftMonster_Drop[4907][2][6]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4907][2][6]["ItemChance"] =800
	tNoGiftMonster_Drop[4907][2][6]["Item_1"] = 3310816
	tNoGiftMonster_Drop[4907][2][6]["Num"] =2
	tNoGiftMonster_Drop[4907][2][7]={}
	tNoGiftMonster_Drop[4907][2][7]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4907][2][7]["ItemChance"] =800
	tNoGiftMonster_Drop[4907][2][7]["Item_1"] = 3310813
	tNoGiftMonster_Drop[4907][2][7]["Num"] =2
	tNoGiftMonster_Drop[4907][2][8]={}
	tNoGiftMonster_Drop[4907][2][8]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4907][2][8]["ItemChance"] =800
	tNoGiftMonster_Drop[4907][2][8]["Item_1"] = 720027
	tNoGiftMonster_Drop[4907][2][9]={}
	tNoGiftMonster_Drop[4907][2][9]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4907][2][9]["ItemChance"] =1500
	tNoGiftMonster_Drop[4907][2][9]["Item_1"] = 1088000

	--冰封第1层地宫
	--小boss
	tNoGiftMonster_Drop[4904]={}
	tNoGiftMonster_Drop[4904]["Must"]={}
	tNoGiftMonster_Drop[4904]["Must"]["Money"]={}
	tNoGiftMonster_Drop[4904]["Must"]["Money"]["Value"]=10000
	tNoGiftMonster_Drop[4904]["Must"]["Money"]["Times"]=2
	tNoGiftMonster_Drop[4904]["Must"]["Item"]={}
	tNoGiftMonster_Drop[4904]["Must"]["Item"][1]={3000063,1}
	--大小爆
	tNoGiftMonster_Drop[4904][1]={}
	tNoGiftMonster_Drop[4904][1]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[4904][1][1] = {}
	tNoGiftMonster_Drop[4904][1][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4904][1][1]["ItemChance"] = 9000
	tNoGiftMonster_Drop[4904][1][1]["Item_1"] ="Small"
	tNoGiftMonster_Drop[4904][1][2]={}
	tNoGiftMonster_Drop[4904][1][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4904][1][2]["ItemChance"] =1000
	tNoGiftMonster_Drop[4904][1][2]["Item_1"] = "More"
	--概率掉
	tNoGiftMonster_Drop[4904][2]={}
	tNoGiftMonster_Drop[4904][2]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[4904][2][1] = {}
	tNoGiftMonster_Drop[4904][2][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4904][2][1]["ItemChance"] = 2200
	tNoGiftMonster_Drop[4904][2][1]["Item_1"] ="Money"
	tNoGiftMonster_Drop[4904][2][1]["Value"] =10000
	tNoGiftMonster_Drop[4904][2][1]["Num"] =3
	tNoGiftMonster_Drop[4904][2][2]={}
	tNoGiftMonster_Drop[4904][2][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4904][2][2]["ItemChance"] =1000
	tNoGiftMonster_Drop[4904][2][2]["Item_1"] = 3321034
	tNoGiftMonster_Drop[4904][2][3]={}
	tNoGiftMonster_Drop[4904][2][3]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4904][2][3]["ItemChance"] =300
	tNoGiftMonster_Drop[4904][2][3]["Item_1"] = 3321035
	tNoGiftMonster_Drop[4904][2][4]={}
	tNoGiftMonster_Drop[4904][2][4]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4904][2][4]["ItemChance"] =100
	tNoGiftMonster_Drop[4904][2][4]["Item_1"] = 3321036
	tNoGiftMonster_Drop[4904][2][5]={}
	tNoGiftMonster_Drop[4904][2][5]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4904][2][5]["ItemChance"] =1000
	tNoGiftMonster_Drop[4904][2][5]["Item_1"] = 3314253
	tNoGiftMonster_Drop[4904][2][6]={}
	tNoGiftMonster_Drop[4904][2][6]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4904][2][6]["ItemChance"] =1000
	tNoGiftMonster_Drop[4904][2][6]["Item_1"] = 3001410
	tNoGiftMonster_Drop[4904][2][7]={}
	tNoGiftMonster_Drop[4904][2][7]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4904][2][7]["ItemChance"] =300
	tNoGiftMonster_Drop[4904][2][7]["Item_1"] = 3001411
	tNoGiftMonster_Drop[4904][2][8]={}
	tNoGiftMonster_Drop[4904][2][8]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4904][2][8]["ItemChance"] =100
	tNoGiftMonster_Drop[4904][2][8]["Item_1"] = 3001413
	tNoGiftMonster_Drop[4904][2][9]={}
	tNoGiftMonster_Drop[4904][2][9]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4904][2][9]["ItemChance"] =500
	tNoGiftMonster_Drop[4904][2][9]["Item_1"] = 3307146
	tNoGiftMonster_Drop[4904][2][10]={}
	tNoGiftMonster_Drop[4904][2][10]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4904][2][10]["ItemChance"] =800
	tNoGiftMonster_Drop[4904][2][10]["Item_1"] = 3310816
	tNoGiftMonster_Drop[4904][2][11]={}
	tNoGiftMonster_Drop[4904][2][11]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4904][2][11]["ItemChance"] =700
	tNoGiftMonster_Drop[4904][2][11]["Item_1"] = 3310813
	tNoGiftMonster_Drop[4904][2][12]={}
	tNoGiftMonster_Drop[4904][2][12]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4904][2][12]["ItemChance"] =100
	tNoGiftMonster_Drop[4904][2][12]["Item_1"] = 3310817
	tNoGiftMonster_Drop[4904][2][13]={}
	tNoGiftMonster_Drop[4904][2][13]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4904][2][13]["ItemChance"] =1600
	tNoGiftMonster_Drop[4904][2][13]["Item_1"] = 1088001
	tNoGiftMonster_Drop[4904][2][13]["Num"] =3
	tNoGiftMonster_Drop[4904][2][14]={}
	tNoGiftMonster_Drop[4904][2][14]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4904][2][14]["ItemChance"] =300
	tNoGiftMonster_Drop[4904][2][14]["Item_1"] = 1088000

	--大boss
	tNoGiftMonster_Drop[4908]={}
	tNoGiftMonster_Drop[4908]["Must"]={}
	tNoGiftMonster_Drop[4908]["Must"]["Money"]={}
	tNoGiftMonster_Drop[4908]["Must"]["Money"]["Value"]=20000
	tNoGiftMonster_Drop[4908]["Must"]["Money"]["Times"]=5
	tNoGiftMonster_Drop[4908]["Must"]["Item"]={}
	tNoGiftMonster_Drop[4908]["Must"]["Item"][1]={3000063,3}
	--大小爆
	tNoGiftMonster_Drop[4908][1]={}
	tNoGiftMonster_Drop[4908][1]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[4908][1][1] = {}
	tNoGiftMonster_Drop[4908][1][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4908][1][1]["ItemChance"] = 0
	tNoGiftMonster_Drop[4908][1][1]["Item_1"] ="Small"
	tNoGiftMonster_Drop[4908][1][2]={}
	tNoGiftMonster_Drop[4908][1][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4908][1][2]["ItemChance"] =10000
	tNoGiftMonster_Drop[4908][1][2]["Item_1"] = "More"
	--概率掉
	tNoGiftMonster_Drop[4908][2]={}
	tNoGiftMonster_Drop[4908][2]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[4908][2][1] = {}
	tNoGiftMonster_Drop[4908][2][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4908][2][1]["ItemChance"] = 1200
	tNoGiftMonster_Drop[4908][2][1]["Item_1"] ="Money"
	tNoGiftMonster_Drop[4908][2][1]["Value"] =25000
	tNoGiftMonster_Drop[4908][2][1]["Num"] =2
	tNoGiftMonster_Drop[4908][2][2]={}
	tNoGiftMonster_Drop[4908][2][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4908][2][2]["ItemChance"] =600
	tNoGiftMonster_Drop[4908][2][2]["Item_1"] = 3321034
	tNoGiftMonster_Drop[4908][2][2]["Num"] =2
	tNoGiftMonster_Drop[4908][2][3]={}
	tNoGiftMonster_Drop[4908][2][3]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4908][2][3]["ItemChance"] =500
	tNoGiftMonster_Drop[4908][2][3]["Item_1"] = 3321035
	tNoGiftMonster_Drop[4908][2][4]={}
	tNoGiftMonster_Drop[4908][2][4]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4908][2][4]["ItemChance"] =300
	tNoGiftMonster_Drop[4908][2][4]["Item_1"] = 3321036
	tNoGiftMonster_Drop[4908][2][5]={}
	tNoGiftMonster_Drop[4908][2][5]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4908][2][5]["ItemChance"] =1000
	tNoGiftMonster_Drop[4908][2][5]["Item_1"] = 3314253
	tNoGiftMonster_Drop[4908][2][5]["Num"] =3
	tNoGiftMonster_Drop[4908][2][6]={}
	tNoGiftMonster_Drop[4908][2][6]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4908][2][6]["ItemChance"] =1200
	tNoGiftMonster_Drop[4908][2][6]["Item_1"] = 3001410
	tNoGiftMonster_Drop[4908][2][6]["Num"] =5
	tNoGiftMonster_Drop[4908][2][7]={}
	tNoGiftMonster_Drop[4908][2][7]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4908][2][7]["ItemChance"] =500
	tNoGiftMonster_Drop[4908][2][7]["Item_1"] = 3001411
	tNoGiftMonster_Drop[4908][2][7]["Num"] =3
	tNoGiftMonster_Drop[4908][2][8]={}
	tNoGiftMonster_Drop[4908][2][8]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4908][2][8]["ItemChance"] =100
	tNoGiftMonster_Drop[4908][2][8]["Item_1"] = 3001413
	tNoGiftMonster_Drop[4908][2][8]["Num"] =2
	tNoGiftMonster_Drop[4908][2][9]={}
	tNoGiftMonster_Drop[4908][2][9]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4908][2][9]["ItemChance"] =700
	tNoGiftMonster_Drop[4908][2][9]["Item_1"] = 3307146
	tNoGiftMonster_Drop[4908][2][9]["Num"] =3
	tNoGiftMonster_Drop[4908][2][10]={}
	tNoGiftMonster_Drop[4908][2][10]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4908][2][10]["ItemChance"] =1000
	tNoGiftMonster_Drop[4908][2][10]["Item_1"] = 3310816
	tNoGiftMonster_Drop[4908][2][11]={}
	tNoGiftMonster_Drop[4908][2][11]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4908][2][11]["ItemChance"] =600
	tNoGiftMonster_Drop[4908][2][11]["Item_1"] = 3310817
	tNoGiftMonster_Drop[4908][2][12]={}
	tNoGiftMonster_Drop[4908][2][12]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4908][2][12]["ItemChance"] =800
	tNoGiftMonster_Drop[4908][2][12]["Item_1"] = 720027
	tNoGiftMonster_Drop[4908][2][13]={}
	tNoGiftMonster_Drop[4908][2][13]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4908][2][13]["ItemChance"] =1500
	tNoGiftMonster_Drop[4908][2][13]["Item_1"] = 1088000

	--冰封第2层地宫
	--小boss
	tNoGiftMonster_Drop[4905]={}
	tNoGiftMonster_Drop[4905]["Must"]={}
	tNoGiftMonster_Drop[4905]["Must"]["Money"]={}
	tNoGiftMonster_Drop[4905]["Must"]["Money"]["Value"]=10000
	tNoGiftMonster_Drop[4905]["Must"]["Money"]["Times"]=2
	tNoGiftMonster_Drop[4905]["Must"]["Item"]={}
	tNoGiftMonster_Drop[4905]["Must"]["Item"][1]={3001411,1}
	--大小爆
	tNoGiftMonster_Drop[4905][1]={}
	tNoGiftMonster_Drop[4905][1]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[4905][1][1] = {}
	tNoGiftMonster_Drop[4905][1][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4905][1][1]["ItemChance"] = 9000
	tNoGiftMonster_Drop[4905][1][1]["Item_1"] ="Small"
	tNoGiftMonster_Drop[4905][1][2]={}
	tNoGiftMonster_Drop[4905][1][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4905][1][2]["ItemChance"] =1000
	tNoGiftMonster_Drop[4905][1][2]["Item_1"] = "More"
	--概率掉
	tNoGiftMonster_Drop[4905][2]={}
	tNoGiftMonster_Drop[4905][2]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[4905][2][1] = {}
	tNoGiftMonster_Drop[4905][2][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4905][2][1]["ItemChance"] = 2200
	tNoGiftMonster_Drop[4905][2][1]["Item_1"] ="Money"
	tNoGiftMonster_Drop[4905][2][1]["Value"] =10000
	tNoGiftMonster_Drop[4905][2][1]["Num"] =3
	tNoGiftMonster_Drop[4905][2][2]={}
	tNoGiftMonster_Drop[4905][2][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4905][2][2]["ItemChance"] =1000
	tNoGiftMonster_Drop[4905][2][2]["Item_1"] = 3321034
	tNoGiftMonster_Drop[4905][2][3]={}
	tNoGiftMonster_Drop[4905][2][3]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4905][2][3]["ItemChance"] =300
	tNoGiftMonster_Drop[4905][2][3]["Item_1"] = 3321035
	tNoGiftMonster_Drop[4905][2][4]={}
	tNoGiftMonster_Drop[4905][2][4]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4905][2][4]["ItemChance"] =100
	tNoGiftMonster_Drop[4905][2][4]["Item_1"] = 3321036
	tNoGiftMonster_Drop[4905][2][5]={}
	tNoGiftMonster_Drop[4905][2][5]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4905][2][5]["ItemChance"] =1000
	tNoGiftMonster_Drop[4905][2][5]["Item_1"] = 3314253
	tNoGiftMonster_Drop[4905][2][6]={}
	tNoGiftMonster_Drop[4905][2][6]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4905][2][6]["ItemChance"] =1000
	tNoGiftMonster_Drop[4905][2][6]["Item_1"] = 3001410
	tNoGiftMonster_Drop[4905][2][7]={}
	tNoGiftMonster_Drop[4905][2][7]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4905][2][7]["ItemChance"] =300
	tNoGiftMonster_Drop[4905][2][7]["Item_1"] = 3001411
	tNoGiftMonster_Drop[4905][2][8]={}
	tNoGiftMonster_Drop[4905][2][8]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4905][2][8]["ItemChance"] =100
	tNoGiftMonster_Drop[4905][2][8]["Item_1"] = 3001413
	tNoGiftMonster_Drop[4905][2][9]={}
	tNoGiftMonster_Drop[4905][2][9]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4905][2][9]["ItemChance"] =500
	tNoGiftMonster_Drop[4905][2][9]["Item_1"] = 3307146
	tNoGiftMonster_Drop[4905][2][10]={}
	tNoGiftMonster_Drop[4905][2][10]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4905][2][10]["ItemChance"] =900
	tNoGiftMonster_Drop[4905][2][10]["Item_1"] = 3004260
	tNoGiftMonster_Drop[4905][2][11]={}
	tNoGiftMonster_Drop[4905][2][11]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4905][2][11]["ItemChance"] =300
	tNoGiftMonster_Drop[4905][2][11]["Item_1"] = 3310816
	tNoGiftMonster_Drop[4905][2][12]={}
	tNoGiftMonster_Drop[4905][2][12]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4905][2][12]["ItemChance"] =300
	tNoGiftMonster_Drop[4905][2][12]["Item_1"] = 3310817
	tNoGiftMonster_Drop[4905][2][13]={}
	tNoGiftMonster_Drop[4905][2][13]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4905][2][13]["ItemChance"] =50
	tNoGiftMonster_Drop[4905][2][13]["Item_1"] = 3310820
	tNoGiftMonster_Drop[4905][2][14]={}
	tNoGiftMonster_Drop[4905][2][14]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4905][2][14]["ItemChance"] =50
	tNoGiftMonster_Drop[4905][2][14]["Item_1"] = 3310819
	tNoGiftMonster_Drop[4905][2][15]={}
	tNoGiftMonster_Drop[4905][2][15]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4905][2][15]["ItemChance"] =1600
	tNoGiftMonster_Drop[4905][2][15]["Item_1"] = 1088001
	tNoGiftMonster_Drop[4905][2][15]["Num"] =3
	tNoGiftMonster_Drop[4905][2][16]={}
	tNoGiftMonster_Drop[4905][2][16]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4905][2][16]["ItemChance"] =300
	tNoGiftMonster_Drop[4905][2][16]["Item_1"] = 1088000
	--大boss
	tNoGiftMonster_Drop[4909]={}
	tNoGiftMonster_Drop[4909]["Must"]={}
	tNoGiftMonster_Drop[4909]["Must"]["Money"]={}
	tNoGiftMonster_Drop[4909]["Must"]["Money"]["Value"]=20000
	tNoGiftMonster_Drop[4909]["Must"]["Money"]["Times"]=5
	tNoGiftMonster_Drop[4909]["Must"]["Item"]={}
	tNoGiftMonster_Drop[4909]["Must"]["Item"][1]={3001411,3}
	--大小爆
	tNoGiftMonster_Drop[4909][1]={}
	tNoGiftMonster_Drop[4909][1]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[4909][1][1] = {}
	tNoGiftMonster_Drop[4909][1][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4909][1][1]["ItemChance"] = 0
	tNoGiftMonster_Drop[4909][1][1]["Item_1"] ="Small"
	tNoGiftMonster_Drop[4909][1][2]={}
	tNoGiftMonster_Drop[4909][1][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4909][1][2]["ItemChance"] =10000
	tNoGiftMonster_Drop[4909][1][2]["Item_1"] = "More"
	--概率掉
	tNoGiftMonster_Drop[4909][2]={}
	tNoGiftMonster_Drop[4909][2]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[4909][2][1] = {}
	tNoGiftMonster_Drop[4909][2][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4909][2][1]["ItemChance"] = 1200
	tNoGiftMonster_Drop[4909][2][1]["Item_1"] ="Money"
	tNoGiftMonster_Drop[4909][2][1]["Value"] =30000
	tNoGiftMonster_Drop[4909][2][1]["Num"] =3
	tNoGiftMonster_Drop[4909][2][2]={}
	tNoGiftMonster_Drop[4909][2][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4909][2][2]["ItemChance"] =600
	tNoGiftMonster_Drop[4909][2][2]["Item_1"] = 3321034
	tNoGiftMonster_Drop[4909][2][2]["Num"] =2
	tNoGiftMonster_Drop[4909][2][3]={}
	tNoGiftMonster_Drop[4909][2][3]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4909][2][3]["ItemChance"] =500
	tNoGiftMonster_Drop[4909][2][3]["Item_1"] = 3321035
	tNoGiftMonster_Drop[4909][2][4]={}
	tNoGiftMonster_Drop[4909][2][4]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4909][2][4]["ItemChance"] =300
	tNoGiftMonster_Drop[4909][2][4]["Item_1"] = 3321036
	tNoGiftMonster_Drop[4909][2][5]={}
	tNoGiftMonster_Drop[4909][2][5]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4909][2][5]["ItemChance"] =1000
	tNoGiftMonster_Drop[4909][2][5]["Item_1"] = 3314253
	tNoGiftMonster_Drop[4909][2][5]["Num"] =3
	tNoGiftMonster_Drop[4909][2][6]={}
	tNoGiftMonster_Drop[4909][2][6]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4909][2][6]["ItemChance"] =900
	tNoGiftMonster_Drop[4909][2][6]["Item_1"] = 3001410
	tNoGiftMonster_Drop[4909][2][6]["Num"] =5
	tNoGiftMonster_Drop[4909][2][7]={}
	tNoGiftMonster_Drop[4909][2][7]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4909][2][7]["ItemChance"] =300
	tNoGiftMonster_Drop[4909][2][7]["Item_1"] = 3001411
	tNoGiftMonster_Drop[4909][2][7]["Num"] =3
	tNoGiftMonster_Drop[4909][2][8]={}
	tNoGiftMonster_Drop[4909][2][8]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4909][2][8]["ItemChance"] =100
	tNoGiftMonster_Drop[4909][2][8]["Item_1"] = 3001413
	tNoGiftMonster_Drop[4909][2][8]["Num"] =2
	tNoGiftMonster_Drop[4909][2][9]={}
	tNoGiftMonster_Drop[4909][2][9]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4909][2][9]["ItemChance"] =700
	tNoGiftMonster_Drop[4909][2][9]["Item_1"] = 3307146
	tNoGiftMonster_Drop[4909][2][9]["Num"] =3
	tNoGiftMonster_Drop[4909][2][10]={}
	tNoGiftMonster_Drop[4909][2][10]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4909][2][10]["ItemChance"] =800
	tNoGiftMonster_Drop[4909][2][10]["Item_1"] = 3004260
	tNoGiftMonster_Drop[4909][2][10]["Num"] =5
	tNoGiftMonster_Drop[4909][2][11]={}
	tNoGiftMonster_Drop[4909][2][11]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4909][2][11]["ItemChance"] =600
	tNoGiftMonster_Drop[4909][2][11]["Item_1"] = 3310816
	tNoGiftMonster_Drop[4909][2][12]={}
	tNoGiftMonster_Drop[4909][2][12]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4909][2][12]["ItemChance"] =600
	tNoGiftMonster_Drop[4909][2][12]["Item_1"] = 3310817
	tNoGiftMonster_Drop[4909][2][13]={}
	tNoGiftMonster_Drop[4909][2][13]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4909][2][13]["ItemChance"] =200
	tNoGiftMonster_Drop[4909][2][13]["Item_1"] = 3310820
	tNoGiftMonster_Drop[4909][2][14]={}
	tNoGiftMonster_Drop[4909][2][14]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4909][2][14]["ItemChance"] =200
	tNoGiftMonster_Drop[4909][2][14]["Item_1"] = 3310819
	tNoGiftMonster_Drop[4909][2][15]={}
	tNoGiftMonster_Drop[4909][2][15]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4909][2][15]["ItemChance"] =800
	tNoGiftMonster_Drop[4909][2][15]["Item_1"] = 720027
	tNoGiftMonster_Drop[4909][2][16]={}
	tNoGiftMonster_Drop[4909][2][16]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4909][2][16]["ItemChance"] =1200
	tNoGiftMonster_Drop[4909][2][16]["Item_1"] = 1088000

	--冰封第3层地宫
	--小boss
	tNoGiftMonster_Drop[4906]={}
	tNoGiftMonster_Drop[4906]["Must"]={}
	tNoGiftMonster_Drop[4906]["Must"]["Money"]={}
	tNoGiftMonster_Drop[4906]["Must"]["Money"]["Value"]=10000
	tNoGiftMonster_Drop[4906]["Must"]["Money"]["Times"]=2
	tNoGiftMonster_Drop[4906]["Must"]["Item"]={}
	tNoGiftMonster_Drop[4906]["Must"]["Item"][1]={3001411,1}
	--大小爆
	tNoGiftMonster_Drop[4906][1]={}
	tNoGiftMonster_Drop[4906][1]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[4906][1][1] = {}
	tNoGiftMonster_Drop[4906][1][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4906][1][1]["ItemChance"] = 9000
	tNoGiftMonster_Drop[4906][1][1]["Item_1"] ="Small"
	tNoGiftMonster_Drop[4906][1][2]={}
	tNoGiftMonster_Drop[4906][1][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4906][1][2]["ItemChance"] =1000
	tNoGiftMonster_Drop[4906][1][2]["Item_1"] = "More"
	--概率掉
	tNoGiftMonster_Drop[4906][2]={}
	tNoGiftMonster_Drop[4906][2]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[4906][2][1] = {}
	tNoGiftMonster_Drop[4906][2][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4906][2][1]["ItemChance"] = 2200
	tNoGiftMonster_Drop[4906][2][1]["Item_1"] ="Money"
	tNoGiftMonster_Drop[4906][2][1]["Value"] =10000
	tNoGiftMonster_Drop[4906][2][1]["Num"] =3
	tNoGiftMonster_Drop[4906][2][2]={}
	tNoGiftMonster_Drop[4906][2][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4906][2][2]["ItemChance"] =1000
	tNoGiftMonster_Drop[4906][2][2]["Item_1"] = 3321034
	tNoGiftMonster_Drop[4906][2][3]={}
	tNoGiftMonster_Drop[4906][2][3]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4906][2][3]["ItemChance"] =300
	tNoGiftMonster_Drop[4906][2][3]["Item_1"] = 3321035
	tNoGiftMonster_Drop[4906][2][4]={}
	tNoGiftMonster_Drop[4906][2][4]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4906][2][4]["ItemChance"] =100
	tNoGiftMonster_Drop[4906][2][4]["Item_1"] = 3321036
	tNoGiftMonster_Drop[4906][2][5]={}
	tNoGiftMonster_Drop[4906][2][5]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4906][2][5]["ItemChance"] =1000
	tNoGiftMonster_Drop[4906][2][5]["Item_1"] = 3314253
	tNoGiftMonster_Drop[4906][2][6]={}
	tNoGiftMonster_Drop[4906][2][6]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4906][2][6]["ItemChance"] =1000
	tNoGiftMonster_Drop[4906][2][6]["Item_1"] = 3001410
	tNoGiftMonster_Drop[4906][2][7]={}
	tNoGiftMonster_Drop[4906][2][7]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4906][2][7]["ItemChance"] =300
	tNoGiftMonster_Drop[4906][2][7]["Item_1"] = 3001411
	tNoGiftMonster_Drop[4906][2][8]={}
	tNoGiftMonster_Drop[4906][2][8]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4906][2][8]["ItemChance"] =100
	tNoGiftMonster_Drop[4906][2][8]["Item_1"] = 3001413
	tNoGiftMonster_Drop[4906][2][9]={}
	tNoGiftMonster_Drop[4906][2][9]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4906][2][9]["ItemChance"] =500
	tNoGiftMonster_Drop[4906][2][9]["Item_1"] = 3307146
	tNoGiftMonster_Drop[4906][2][10]={}
	tNoGiftMonster_Drop[4906][2][10]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4906][2][10]["ItemChance"] =1000
	tNoGiftMonster_Drop[4906][2][10]["Item_1"] = 3004260
	tNoGiftMonster_Drop[4906][2][11]={}
	tNoGiftMonster_Drop[4906][2][11]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4906][2][11]["ItemChance"] =150
	tNoGiftMonster_Drop[4906][2][11]["Item_1"] = 3310820
	tNoGiftMonster_Drop[4906][2][12]={}
	tNoGiftMonster_Drop[4906][2][12]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4906][2][12]["ItemChance"] =150
	tNoGiftMonster_Drop[4906][2][12]["Item_1"] = 3310819
	tNoGiftMonster_Drop[4906][2][13]={}
	tNoGiftMonster_Drop[4906][2][13]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4906][2][13]["ItemChance"] =150
	tNoGiftMonster_Drop[4906][2][13]["Item_1"] = 3315497
	tNoGiftMonster_Drop[4906][2][14]={}
	tNoGiftMonster_Drop[4906][2][14]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4906][2][14]["ItemChance"] =150
	tNoGiftMonster_Drop[4906][2][14]["Item_1"] = 3315498
	tNoGiftMonster_Drop[4906][2][15]={}
	tNoGiftMonster_Drop[4906][2][15]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4906][2][15]["ItemChance"] =1600
	tNoGiftMonster_Drop[4906][2][15]["Item_1"] = 1088001
	tNoGiftMonster_Drop[4906][2][15]["Num"] =3
	tNoGiftMonster_Drop[4906][2][16]={}
	tNoGiftMonster_Drop[4906][2][16]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4906][2][16]["ItemChance"] =300
	tNoGiftMonster_Drop[4906][2][16]["Item_1"] = 1088000
	--大boss
	tNoGiftMonster_Drop[4910]={}
	tNoGiftMonster_Drop[4910]["Must"]={}
	tNoGiftMonster_Drop[4910]["Must"]["Money"]={}
	tNoGiftMonster_Drop[4910]["Must"]["Money"]["Value"]=20000
	tNoGiftMonster_Drop[4910]["Must"]["Money"]["Times"]=5
	tNoGiftMonster_Drop[4910]["Must"]["Item"]={}
	tNoGiftMonster_Drop[4910]["Must"]["Item"][1]={3001411,3}
	--大小爆
	tNoGiftMonster_Drop[4910][1]={}
	tNoGiftMonster_Drop[4910][1]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[4910][1][1] = {}
	tNoGiftMonster_Drop[4910][1][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4910][1][1]["ItemChance"] = 0
	tNoGiftMonster_Drop[4910][1][1]["Item_1"] ="Small"
	tNoGiftMonster_Drop[4910][1][2]={}
	tNoGiftMonster_Drop[4910][1][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4910][1][2]["ItemChance"] =10000
	tNoGiftMonster_Drop[4910][1][2]["Item_1"] = "More"
	--概率掉
	tNoGiftMonster_Drop[4910][2]={}
	tNoGiftMonster_Drop[4910][2]["ItemChanceSum"] = 10000
	tNoGiftMonster_Drop[4910][2][1] = {}
	tNoGiftMonster_Drop[4910][2][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4910][2][1]["ItemChance"] = 1000
	tNoGiftMonster_Drop[4910][2][1]["Item_1"] ="Money"
	tNoGiftMonster_Drop[4910][2][1]["Value"] =30000
	tNoGiftMonster_Drop[4910][2][1]["Num"] =3
	tNoGiftMonster_Drop[4910][2][2]={}
	tNoGiftMonster_Drop[4910][2][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4910][2][2]["ItemChance"] =600
	tNoGiftMonster_Drop[4910][2][2]["Item_1"] = 3321034
	tNoGiftMonster_Drop[4910][2][2]["Num"] =2
	tNoGiftMonster_Drop[4910][2][3]={}
	tNoGiftMonster_Drop[4910][2][3]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4910][2][3]["ItemChance"] =500
	tNoGiftMonster_Drop[4910][2][3]["Item_1"] = 3321035
	tNoGiftMonster_Drop[4910][2][4]={}
	tNoGiftMonster_Drop[4910][2][4]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4910][2][4]["ItemChance"] =300
	tNoGiftMonster_Drop[4910][2][4]["Item_1"] = 3321036
	tNoGiftMonster_Drop[4910][2][5]={}
	tNoGiftMonster_Drop[4910][2][5]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4910][2][5]["ItemChance"] =900
	tNoGiftMonster_Drop[4910][2][5]["Item_1"] = 3314253
	tNoGiftMonster_Drop[4910][2][5]["Num"] =3
	tNoGiftMonster_Drop[4910][2][6]={}
	tNoGiftMonster_Drop[4910][2][6]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4910][2][6]["ItemChance"] =1000
	tNoGiftMonster_Drop[4910][2][6]["Item_1"] = 3001410
	tNoGiftMonster_Drop[4910][2][6]["Num"] =5
	tNoGiftMonster_Drop[4910][2][7]={}
	tNoGiftMonster_Drop[4910][2][7]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4910][2][7]["ItemChance"] =300
	tNoGiftMonster_Drop[4910][2][7]["Item_1"] = 3001411
	tNoGiftMonster_Drop[4910][2][7]["Num"] =3
	tNoGiftMonster_Drop[4910][2][8]={}
	tNoGiftMonster_Drop[4910][2][8]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4910][2][8]["ItemChance"] =100
	tNoGiftMonster_Drop[4910][2][8]["Item_1"] = 3001413
	tNoGiftMonster_Drop[4910][2][8]["Num"] =2
	tNoGiftMonster_Drop[4910][2][9]={}
	tNoGiftMonster_Drop[4910][2][9]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4910][2][9]["ItemChance"] =700
	tNoGiftMonster_Drop[4910][2][9]["Item_1"] = 3307146
	tNoGiftMonster_Drop[4910][2][9]["Num"] =3
	tNoGiftMonster_Drop[4910][2][10]={}
	tNoGiftMonster_Drop[4910][2][10]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4910][2][10]["ItemChance"] =800
	tNoGiftMonster_Drop[4910][2][10]["Item_1"] = 3004260
	tNoGiftMonster_Drop[4910][2][10]["Num"] =5
	tNoGiftMonster_Drop[4910][2][11]={}
	tNoGiftMonster_Drop[4910][2][11]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4910][2][11]["ItemChance"] =400
	tNoGiftMonster_Drop[4910][2][11]["Item_1"] = 3310820
	tNoGiftMonster_Drop[4910][2][12]={}
	tNoGiftMonster_Drop[4910][2][12]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4910][2][12]["ItemChance"] =400
	tNoGiftMonster_Drop[4910][2][12]["Item_1"] = 3310819
	tNoGiftMonster_Drop[4910][2][13]={}
	tNoGiftMonster_Drop[4910][2][13]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4910][2][13]["ItemChance"] =400
	tNoGiftMonster_Drop[4910][2][13]["Item_1"] = 3315497
	tNoGiftMonster_Drop[4910][2][14]={}
	tNoGiftMonster_Drop[4910][2][14]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4910][2][14]["ItemChance"] =400
	tNoGiftMonster_Drop[4910][2][14]["Item_1"] = 3315498
	tNoGiftMonster_Drop[4910][2][15]={}
	tNoGiftMonster_Drop[4910][2][15]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4910][2][15]["ItemChance"] =800
	tNoGiftMonster_Drop[4910][2][15]["Item_1"] = 720027
	tNoGiftMonster_Drop[4910][2][16]={}
	tNoGiftMonster_Drop[4910][2][16]["RandomItemChanceType"] = 2
	tNoGiftMonster_Drop[4910][2][16]["ItemChance"] =1400
	tNoGiftMonster_Drop[4910][2][16]["Item_1"] = 1088000
	
	--梦灵兽
	tNoGiftMonster_Drop[3504]={}
	tNoGiftMonster_Drop[3504]["RewardItem"]={}
	tNoGiftMonster_Drop[3504]["RewardItem"][1]={}
	tNoGiftMonster_Drop[3504]["RewardItem"][1]["Id"]=3310806
	tNoGiftMonster_Drop[3504]["RewardItem"][1]["Attr"]="0 1"
	
	--青龙幻影
	tNoGiftMonster_Drop[3505]={}
	tNoGiftMonster_Drop[3505]["RewardItem"]={}
	tNoGiftMonster_Drop[3505]["RewardItem"][1]={}
	tNoGiftMonster_Drop[3505]["RewardItem"][1]["Id"]=3310807
	tNoGiftMonster_Drop[3505]["RewardItem"][1]["Attr"]="0 1"
	--青龙神兽
	tNoGiftMonster_Drop[3506]={}
	tNoGiftMonster_Drop[3506]["RewardItem"]={}
	tNoGiftMonster_Drop[3506]["RewardItem"][1]={}
	tNoGiftMonster_Drop[3506]["RewardItem"][1]["Id"]=3310808
	tNoGiftMonster_Drop[3506]["RewardItem"][1]["Attr"]="0 1"

------------奖池表配置---------
local tNoGiftMonster_Reward={}
	--大小爆奖池
	tNoGiftMonster_Reward["Reward"]={}
	--第一种
	tNoGiftMonster_Reward["Reward"][1]={}
	tNoGiftMonster_Reward["Reward"][1]["ItemChanceSum"] = 10000
	--玄灵秘录
	tNoGiftMonster_Reward["Reward"][1][1]={}
	tNoGiftMonster_Reward["Reward"][1][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Reward"][1][1]["ItemChance"] = 2250
	tNoGiftMonster_Reward["Reward"][1][1]["Item_1"] =723341
	--流星
	tNoGiftMonster_Reward["Reward"][1][2]={}
	tNoGiftMonster_Reward["Reward"][1][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Reward"][1][2]["ItemChance"] = 1200
	tNoGiftMonster_Reward["Reward"][1][2]["Item_1"] =1088001
	--龙珠
	tNoGiftMonster_Reward["Reward"][1][3]={}
	tNoGiftMonster_Reward["Reward"][1][3]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Reward"][1][3]["ItemChance"] =100
	tNoGiftMonster_Reward["Reward"][1][3]["Item_1"] =1088000
	--赤炼石+1
	tNoGiftMonster_Reward["Reward"][1][4]={}
	tNoGiftMonster_Reward["Reward"][1][4]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Reward"][1][4]["ItemChance"] =800
	tNoGiftMonster_Reward["Reward"][1][4]["Item_1"] =3321034
	--宝石
	tNoGiftMonster_Reward["Reward"][1][5]={}
	tNoGiftMonster_Reward["Reward"][1][5]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Reward"][1][5]["ItemChance"] =3400
	tNoGiftMonster_Reward["Reward"][1][5]["Item_1"] ="Gem"
	--上古神器风云礼盒
	tNoGiftMonster_Reward["Reward"][1][6]={}
	tNoGiftMonster_Reward["Reward"][1][6]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Reward"][1][6]["ItemChance"] =50
	tNoGiftMonster_Reward["Reward"][1][6]["Item_1"] =3307146
	--力量密令
	tNoGiftMonster_Reward["Reward"][1][7]={}
	tNoGiftMonster_Reward["Reward"][1][7]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Reward"][1][7]["ItemChance"] =50
	tNoGiftMonster_Reward["Reward"][1][7]["Item_1"] =3004895
	--灵巧密令
	tNoGiftMonster_Reward["Reward"][1][8]={}
	tNoGiftMonster_Reward["Reward"][1][8]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Reward"][1][8]["ItemChance"] =50
	tNoGiftMonster_Reward["Reward"][1][8]["Item_1"] =3004898
	--精神秘令
	tNoGiftMonster_Reward["Reward"][1][9]={}
	tNoGiftMonster_Reward["Reward"][1][9]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Reward"][1][9]["ItemChance"] =50
	tNoGiftMonster_Reward["Reward"][1][9]["Item_1"] =3004896
	--体质秘令
	tNoGiftMonster_Reward["Reward"][1][10]={}
	tNoGiftMonster_Reward["Reward"][1][10]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Reward"][1][10]["ItemChance"] =50
	tNoGiftMonster_Reward["Reward"][1][10]["Item_1"] =3004897
	--力量洗点丹
	tNoGiftMonster_Reward["Reward"][1][11]={}
	tNoGiftMonster_Reward["Reward"][1][11]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Reward"][1][11]["ItemChance"] =450
	tNoGiftMonster_Reward["Reward"][1][11]["Item_1"] =3006288
	--灵巧洗点丹
	tNoGiftMonster_Reward["Reward"][1][12]={}
	tNoGiftMonster_Reward["Reward"][1][12]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Reward"][1][12]["ItemChance"] =450
	tNoGiftMonster_Reward["Reward"][1][12]["Item_1"] =3006289
	--体质洗点丹
	tNoGiftMonster_Reward["Reward"][1][13]={}
	tNoGiftMonster_Reward["Reward"][1][13]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Reward"][1][13]["ItemChance"] =450
	tNoGiftMonster_Reward["Reward"][1][13]["Item_1"] =3006322
	--精神洗点丹
	tNoGiftMonster_Reward["Reward"][1][14]={}
	tNoGiftMonster_Reward["Reward"][1][14]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Reward"][1][14]["ItemChance"] =450
	tNoGiftMonster_Reward["Reward"][1][14]["Item_1"] =3006323
	--赤炼石+2
	tNoGiftMonster_Reward["Reward"][1][15]={}
	tNoGiftMonster_Reward["Reward"][1][15]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Reward"][1][15]["ItemChance"] =180
	tNoGiftMonster_Reward["Reward"][1][15]["Item_1"] =3321035
	--赤炼石+3
	tNoGiftMonster_Reward["Reward"][1][16]={}
	tNoGiftMonster_Reward["Reward"][1][16]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Reward"][1][16]["ItemChance"] =20
	tNoGiftMonster_Reward["Reward"][1][16]["Item_1"] =3321036
	--第二种
	tNoGiftMonster_Reward["Reward"][2]={}
	tNoGiftMonster_Reward["Reward"][2]["ItemChanceSum"] = 10000
	--金币
	tNoGiftMonster_Reward["Reward"][2][1]={}
	tNoGiftMonster_Reward["Reward"][2][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Reward"][2][1]["ItemChance"] = 6250
	tNoGiftMonster_Reward["Reward"][2][1]["Item_1"] ="Money"--数量需要逻辑重写
	--玄灵秘录
	tNoGiftMonster_Reward["Reward"][2][2]={}
	tNoGiftMonster_Reward["Reward"][2][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Reward"][2][2]["ItemChance"] =800
	tNoGiftMonster_Reward["Reward"][2][2]["Item_1"] =723341
	--流星
	tNoGiftMonster_Reward["Reward"][2][3]={}
	tNoGiftMonster_Reward["Reward"][2][3]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Reward"][2][3]["ItemChance"] = 450
	tNoGiftMonster_Reward["Reward"][2][3]["Item_1"] =1088001
	--龙珠
	tNoGiftMonster_Reward["Reward"][2][4]={}
	tNoGiftMonster_Reward["Reward"][2][4]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Reward"][2][4]["ItemChance"] =10
	tNoGiftMonster_Reward["Reward"][2][4]["Item_1"] =1088000
	--赤炼石+1
	tNoGiftMonster_Reward["Reward"][2][5]={}
	tNoGiftMonster_Reward["Reward"][2][5]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Reward"][2][5]["ItemChance"] =310
	tNoGiftMonster_Reward["Reward"][2][5]["Item_1"] =3321034
	--宝石
	tNoGiftMonster_Reward["Reward"][2][6]={}
	tNoGiftMonster_Reward["Reward"][2][6]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Reward"][2][6]["ItemChance"] =1500
	tNoGiftMonster_Reward["Reward"][2][6]["Item_1"] ="Gem"
	--上古神器风云礼盒
	tNoGiftMonster_Reward["Reward"][2][7]={}
	tNoGiftMonster_Reward["Reward"][2][7]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Reward"][2][7]["ItemChance"] =10
	tNoGiftMonster_Reward["Reward"][2][7]["Item_1"] =3307146
	--力量密令
	tNoGiftMonster_Reward["Reward"][2][8]={}
	tNoGiftMonster_Reward["Reward"][2][8]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Reward"][2][8]["ItemChance"] =10
	tNoGiftMonster_Reward["Reward"][2][8]["Item_1"] =3004895
	--灵巧密令
	tNoGiftMonster_Reward["Reward"][2][9]={}
	tNoGiftMonster_Reward["Reward"][2][9]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Reward"][2][9]["ItemChance"] =10
	tNoGiftMonster_Reward["Reward"][2][9]["Item_1"] =3004898
	--精神秘令
	tNoGiftMonster_Reward["Reward"][2][10]={}
	tNoGiftMonster_Reward["Reward"][2][10]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Reward"][2][10]["ItemChance"] =10
	tNoGiftMonster_Reward["Reward"][2][10]["Item_1"] =3004896
	--体质秘令
	tNoGiftMonster_Reward["Reward"][2][11]={}
	tNoGiftMonster_Reward["Reward"][2][11]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Reward"][2][11]["ItemChance"] =10
	tNoGiftMonster_Reward["Reward"][2][11]["Item_1"] =3004897
	--力量洗点丹
	tNoGiftMonster_Reward["Reward"][2][12]={}
	tNoGiftMonster_Reward["Reward"][2][12]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Reward"][2][12]["ItemChance"] =150
	tNoGiftMonster_Reward["Reward"][2][12]["Item_1"] =3006288
	--灵巧洗点丹
	tNoGiftMonster_Reward["Reward"][2][13]={}
	tNoGiftMonster_Reward["Reward"][2][13]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Reward"][2][13]["ItemChance"] =150
	tNoGiftMonster_Reward["Reward"][2][13]["Item_1"] =3006289
	--体质洗点丹
	tNoGiftMonster_Reward["Reward"][2][14]={}
	tNoGiftMonster_Reward["Reward"][2][14]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Reward"][2][14]["ItemChance"] =150
	tNoGiftMonster_Reward["Reward"][2][14]["Item_1"] =3006322
	--精神洗点丹
	tNoGiftMonster_Reward["Reward"][2][15]={}
	tNoGiftMonster_Reward["Reward"][2][15]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Reward"][2][15]["ItemChance"] =150
	tNoGiftMonster_Reward["Reward"][2][15]["Item_1"] =3006323
	--赤炼石+2
	tNoGiftMonster_Reward["Reward"][2][16]={}
	tNoGiftMonster_Reward["Reward"][2][16]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Reward"][2][16]["ItemChance"] =27
	tNoGiftMonster_Reward["Reward"][2][16]["Item_1"] =3321035
	--赤炼石+3
	tNoGiftMonster_Reward["Reward"][2][17]={}
	tNoGiftMonster_Reward["Reward"][2][17]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Reward"][2][17]["ItemChance"] =3
	tNoGiftMonster_Reward["Reward"][2][17]["Item_1"] =3321036
--宝石
	tNoGiftMonster_Reward["Gem"]={}
	tNoGiftMonster_Reward["Gem"]["ItemChanceSum"] = 10000
	--普通地灵宝石
	tNoGiftMonster_Reward["Gem"][1]={}
	tNoGiftMonster_Reward["Gem"][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Gem"][1]["ItemChance"] =260
	tNoGiftMonster_Reward["Gem"][1]["Item_1"] =700121
	--普通天怒宝石
	tNoGiftMonster_Reward["Gem"][2]={}
	tNoGiftMonster_Reward["Gem"][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Gem"][2]["ItemChance"] =260
	tNoGiftMonster_Reward["Gem"][2]["Item_1"] =700101
	--普通金麟宝石
	tNoGiftMonster_Reward["Gem"][3]={}
	tNoGiftMonster_Reward["Gem"][3]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Gem"][3]["ItemChance"] =1330
	tNoGiftMonster_Reward["Gem"][3]["Item_1"] =700041
	--普通青虹宝石
	tNoGiftMonster_Reward["Gem"][4]={}
	tNoGiftMonster_Reward["Gem"][4]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Gem"][4]["ItemChance"] =1330
	tNoGiftMonster_Reward["Gem"][4]["Item_1"] =700031
	--普通惊鸿宝石
	tNoGiftMonster_Reward["Gem"][5]={}
	tNoGiftMonster_Reward["Gem"][5]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Gem"][5]["ItemChance"] =1330
	tNoGiftMonster_Reward["Gem"][5]["Item_1"] =700021
	--普通龙恨宝石
	tNoGiftMonster_Reward["Gem"][6]={}
	tNoGiftMonster_Reward["Gem"][6]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Gem"][6]["ItemChance"] =1000
	tNoGiftMonster_Reward["Gem"][6]["Item_1"] =700011
	--普通凤吟宝石
	tNoGiftMonster_Reward["Gem"][7]={}
	tNoGiftMonster_Reward["Gem"][7]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Gem"][7]["ItemChance"] =1330
	tNoGiftMonster_Reward["Gem"][7]["Item_1"] =700001
	--普通紫霞宝石
	tNoGiftMonster_Reward["Gem"][8]={}
	tNoGiftMonster_Reward["Gem"][8]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Gem"][8]["ItemChance"] =1330
	tNoGiftMonster_Reward["Gem"][8]["Item_1"] =700051
	--普通明月宝石
	tNoGiftMonster_Reward["Gem"][9]={}
	tNoGiftMonster_Reward["Gem"][9]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Gem"][9]["ItemChance"] =1330
	tNoGiftMonster_Reward["Gem"][9]["Item_1"] =700061
	--良品金麟宝石
	tNoGiftMonster_Reward["Gem"][10]={}
	tNoGiftMonster_Reward["Gem"][10]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Gem"][10]["ItemChance"] =80
	tNoGiftMonster_Reward["Gem"][10]["Item_1"] =700042
	--良品青虹宝石
	tNoGiftMonster_Reward["Gem"][11]={}
	tNoGiftMonster_Reward["Gem"][11]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Gem"][11]["ItemChance"] =80
	tNoGiftMonster_Reward["Gem"][11]["Item_1"] =700032
	--良品惊鸿宝石
	tNoGiftMonster_Reward["Gem"][12]={}
	tNoGiftMonster_Reward["Gem"][12]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Gem"][12]["ItemChance"] =80
	tNoGiftMonster_Reward["Gem"][12]["Item_1"] =700022
	--良品龙恨宝石
	tNoGiftMonster_Reward["Gem"][13]={}
	tNoGiftMonster_Reward["Gem"][13]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Gem"][13]["ItemChance"] =20
	tNoGiftMonster_Reward["Gem"][13]["Item_1"] =700012
	--良品凤吟宝石
	tNoGiftMonster_Reward["Gem"][14]={}
	tNoGiftMonster_Reward["Gem"][14]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Gem"][14]["ItemChance"] =80
	tNoGiftMonster_Reward["Gem"][14]["Item_1"] =700002
	--良品紫霞宝石
	tNoGiftMonster_Reward["Gem"][15]={}
	tNoGiftMonster_Reward["Gem"][15]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Gem"][15]["ItemChance"] =80
	tNoGiftMonster_Reward["Gem"][15]["Item_1"] =700052
	--良品明月宝石
	tNoGiftMonster_Reward["Gem"][16]={}
	tNoGiftMonster_Reward["Gem"][16]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Gem"][16]["ItemChance"] =80
	tNoGiftMonster_Reward["Gem"][16]["Item_1"] =700062
	--赤炼石
	tNoGiftMonster_Reward["Stone"]={}
	tNoGiftMonster_Reward["Stone"]["ItemChanceSum"] = 10000
	--赤炼石+1
	tNoGiftMonster_Reward["Stone"][1]={}
	tNoGiftMonster_Reward["Stone"][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Stone"][1]["ItemChance"] =9300
	tNoGiftMonster_Reward["Stone"][1]["Item_1"] =3321034
	--赤炼石+2
	tNoGiftMonster_Reward["Stone"][2]={}
	tNoGiftMonster_Reward["Stone"][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Stone"][2]["ItemChance"] =600
	tNoGiftMonster_Reward["Stone"][2]["Item_1"] =3321035
	--赤炼石+3
	tNoGiftMonster_Reward["Stone"][3]={}
	tNoGiftMonster_Reward["Stone"][3]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Stone"][3]["ItemChance"] =90
	tNoGiftMonster_Reward["Stone"][3]["Item_1"] =3321036
	--赤炼石+5
	tNoGiftMonster_Reward["Stone"][4]={}
	tNoGiftMonster_Reward["Stone"][4]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Stone"][4]["ItemChance"] = 10
	tNoGiftMonster_Reward["Stone"][4]["Item_1"] =3321038
	
	--史诗武器碎片
	tNoGiftMonster_Reward["Fragment"]={}
	tNoGiftMonster_Reward["Fragment"]["ItemChanceSum"] = 10000
	--轮回之眼碎片
	tNoGiftMonster_Reward["Fragment"][1]={}
	tNoGiftMonster_Reward["Fragment"][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Fragment"][1]["ItemChance"] =2000
	tNoGiftMonster_Reward["Fragment"][1]["Item_1"] =3310823
	--圣灵木碎片
	tNoGiftMonster_Reward["Fragment"][2]={}
	tNoGiftMonster_Reward["Fragment"][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Fragment"][2]["ItemChance"] =2400
	tNoGiftMonster_Reward["Fragment"][2]["Item_1"] =3310825
	--神宝仙丹碎片
	tNoGiftMonster_Reward["Fragment"][3]={}
	tNoGiftMonster_Reward["Fragment"][3]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Fragment"][3]["ItemChance"] =1500
	tNoGiftMonster_Reward["Fragment"][3]["Item_1"] =3310824
	--空灵佛心碎片
	tNoGiftMonster_Reward["Fragment"][4]={}
	tNoGiftMonster_Reward["Fragment"][4]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Fragment"][4]["ItemChance"] =2300
	tNoGiftMonster_Reward["Fragment"][4]["Item_1"] =3310826
	--海盗武器碎片
	tNoGiftMonster_Reward["Fragment"][5]={}
	tNoGiftMonster_Reward["Fragment"][5]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Fragment"][5]["ItemChance"] =1800
	tNoGiftMonster_Reward["Fragment"][5]["Item_1"] =3310827
	
	--属性令/洗点丹
	tNoGiftMonster_Reward["Token"]={}
	tNoGiftMonster_Reward["Token"]["ItemChanceSum"] = 10000
	--力量密令
	tNoGiftMonster_Reward["Token"][1]={}
	tNoGiftMonster_Reward["Token"][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Token"][1]["ItemChance"] =500
	tNoGiftMonster_Reward["Token"][1]["Item_1"] =3004895
	--灵巧密令
	tNoGiftMonster_Reward["Token"][2]={}
	tNoGiftMonster_Reward["Token"][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Token"][2]["ItemChance"] =500
	tNoGiftMonster_Reward["Token"][2]["Item_1"] =3004898
	--精神秘令
	tNoGiftMonster_Reward["Token"][3]={}
	tNoGiftMonster_Reward["Token"][3]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Token"][3]["ItemChance"] =500
	tNoGiftMonster_Reward["Token"][3]["Item_1"] =3004896
	--体质秘令
	tNoGiftMonster_Reward["Token"][4]={}
	tNoGiftMonster_Reward["Token"][4]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Token"][4]["ItemChance"] =500
	tNoGiftMonster_Reward["Token"][4]["Item_1"] =3004897
	--力量洗点丹
	tNoGiftMonster_Reward["Token"][5]={}
	tNoGiftMonster_Reward["Token"][5]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Token"][5]["ItemChance"] =2000
	tNoGiftMonster_Reward["Token"][5]["Item_1"] =3006288
	--灵巧洗点丹
	tNoGiftMonster_Reward["Token"][6]={}
	tNoGiftMonster_Reward["Token"][6]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Token"][6]["ItemChance"] =2000
	tNoGiftMonster_Reward["Token"][6]["Item_1"] =3006289
	--体质洗点丹
	tNoGiftMonster_Reward["Token"][7]={}
	tNoGiftMonster_Reward["Token"][7]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Token"][7]["ItemChance"] =2000
	tNoGiftMonster_Reward["Token"][7]["Item_1"] =3006322
	--精神洗点丹
	tNoGiftMonster_Reward["Token"][8]={}
	tNoGiftMonster_Reward["Token"][8]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Token"][8]["ItemChance"] =2000
	tNoGiftMonster_Reward["Token"][8]["Item_1"] =3006323
	--练功
	tNoGiftMonster_Reward["Pill"]={}
	tNoGiftMonster_Reward["Pill"]["Mete"]=1
	tNoGiftMonster_Reward["Pill"]["ItemChanceSum"] = 10000
	--通神丹
	tNoGiftMonster_Reward["Pill"][1]={}
	tNoGiftMonster_Reward["Pill"][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Pill"][1]["ItemChance"] =700
	tNoGiftMonster_Reward["Pill"][1]["Item_1"] =3003125
	--究极通神丹
	tNoGiftMonster_Reward["Pill"][2]={}
	tNoGiftMonster_Reward["Pill"][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Pill"][2]["ItemChance"] =300
	tNoGiftMonster_Reward["Pill"][2]["Item_1"] =3003126
	--免费强炼丹
	tNoGiftMonster_Reward["Pill"][3]={}
	tNoGiftMonster_Reward["Pill"][3]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Pill"][3]["ItemChance"] =2500
	tNoGiftMonster_Reward["Pill"][3]["Item_1"] =3003124
	--秘制免费修炼丹
	tNoGiftMonster_Reward["Pill"][4]={}
	tNoGiftMonster_Reward["Pill"][4]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Pill"][4]["ItemChance"] =2000
	tNoGiftMonster_Reward["Pill"][4]["Item_1"] =3002029
	--真气礼包
	tNoGiftMonster_Reward["Pill"][5]={}
	tNoGiftMonster_Reward["Pill"][5]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Pill"][5]["ItemChance"] =2000
	tNoGiftMonster_Reward["Pill"][5]["Item_1"] =3314911
	--修炼次数礼包
	tNoGiftMonster_Reward["Pill"][6]={}
	tNoGiftMonster_Reward["Pill"][6]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Pill"][6]["ItemChance"] =2000
	tNoGiftMonster_Reward["Pill"][6]["Item_1"] =3314912
	--强效护心丹
	tNoGiftMonster_Reward["Pill"][7]={}
	tNoGiftMonster_Reward["Pill"][7]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Pill"][7]["ItemChance"] =500
	tNoGiftMonster_Reward["Pill"][7]["Item_1"] =3002029
	--内功
	tNoGiftMonster_Reward["Culture"]={}
	tNoGiftMonster_Reward["Culture"]["ItemChanceSum"] = 10000
	--国家降魔令（改名）
	tNoGiftMonster_Reward["Culture"][1]={}
	tNoGiftMonster_Reward["Culture"][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Culture"][1]["ItemChance"] =5000
	tNoGiftMonster_Reward["Culture"][1]["Item_1"] =3310804
	--50修为值
	tNoGiftMonster_Reward["Culture"][2]={}
	tNoGiftMonster_Reward["Culture"][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Culture"][2]["ItemChance"] =3500
	tNoGiftMonster_Reward["Culture"][2]["Item_1"] =3310995
	--100修为值
	tNoGiftMonster_Reward["Culture"][3]={}
	tNoGiftMonster_Reward["Culture"][3]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Culture"][3]["ItemChance"] =1200
	tNoGiftMonster_Reward["Culture"][3]["Item_1"] =3310996
	--300修为值
	tNoGiftMonster_Reward["Culture"][4]={}
	tNoGiftMonster_Reward["Culture"][4]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Culture"][4]["ItemChance"] =250
	tNoGiftMonster_Reward["Culture"][4]["Item_1"] =3310997
	--1000修为值
	tNoGiftMonster_Reward["Culture"][5]={}
	tNoGiftMonster_Reward["Culture"][5]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Culture"][5]["ItemChance"] =50
	tNoGiftMonster_Reward["Culture"][5]["Item_1"] =3310998

	--气力
	tNoGiftMonster_Reward["Strength"]={}
	tNoGiftMonster_Reward["Strength"]["ItemChanceSum"] = 10000
	--50气力值
	tNoGiftMonster_Reward["Strength"][1]={}
	tNoGiftMonster_Reward["Strength"][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Strength"][1]["ItemChance"] =7000
	tNoGiftMonster_Reward["Strength"][1]["Item_1"] =3304321
	--100气力值
	tNoGiftMonster_Reward["Strength"][2]={}
	tNoGiftMonster_Reward["Strength"][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Strength"][2]["ItemChance"] =2400
	tNoGiftMonster_Reward["Strength"][2]["Item_1"] =3304324
	--300气力值
	tNoGiftMonster_Reward["Strength"][3]={}
	tNoGiftMonster_Reward["Strength"][3]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Strength"][3]["ItemChance"] =500
	tNoGiftMonster_Reward["Strength"][3]["Item_1"] =3304327
	--1000气力值
	tNoGiftMonster_Reward["Strength"][4]={}
	tNoGiftMonster_Reward["Strength"][4]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Strength"][4]["ItemChance"] =100
	tNoGiftMonster_Reward["Strength"][4]["Item_1"] =3304331
	--神纹
	tNoGiftMonster_Reward["Rune"]={}
	tNoGiftMonster_Reward["Rune"]["ItemChanceSum"] = 10000
	--蓝色神纹碎片
	tNoGiftMonster_Reward["Rune"][1]={}
	tNoGiftMonster_Reward["Rune"][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Rune"][1]["ItemChance"] =2000
	tNoGiftMonster_Reward["Rune"][1]["Item_1"] =3306371
	--黄色神纹碎片
	tNoGiftMonster_Reward["Rune"][2]={}
	tNoGiftMonster_Reward["Rune"][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Rune"][2]["ItemChance"] =1000
	tNoGiftMonster_Reward["Rune"][2]["Item_1"] =3306370
	--红色神纹碎片
	tNoGiftMonster_Reward["Rune"][3]={}
	tNoGiftMonster_Reward["Rune"][3]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Rune"][3]["ItemChance"] =2000
	tNoGiftMonster_Reward["Rune"][3]["Item_1"] =3306369
	--万能神纹精粹
	tNoGiftMonster_Reward["Rune"][4]={}
	tNoGiftMonster_Reward["Rune"][4]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Rune"][4]["ItemChance"] =5000
	tNoGiftMonster_Reward["Rune"][4]["Item_1"] =4060001
	--2转道具
	tNoGiftMonster_Reward["MeteProp"]={}
	tNoGiftMonster_Reward["MeteProp"]["NoMete"]=1
	tNoGiftMonster_Reward["MeteProp"]["ItemChanceSum"] = 10000
	--2转道具1
	tNoGiftMonster_Reward["MeteProp"][1]={}
	tNoGiftMonster_Reward["MeteProp"][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["MeteProp"][1]["ItemChance"] =9200
	tNoGiftMonster_Reward["MeteProp"][1]["Item_1"] =3310805
	--2转道具2
	tNoGiftMonster_Reward["MeteProp"][2]={}
	tNoGiftMonster_Reward["MeteProp"][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["MeteProp"][2]["ItemChance"] =800
	tNoGiftMonster_Reward["MeteProp"][2]["Item_1"] =3310806

	--银两(精英怪)
	tNoGiftMonster_Reward["Gold"]={}
	--双龙城
	tNoGiftMonster_Reward["Gold"][4880]={}
	tNoGiftMonster_Reward["Gold"][4880]["ItemChanceSum"] = 10000
	tNoGiftMonster_Reward["Gold"][4880][1]={}
	tNoGiftMonster_Reward["Gold"][4880][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Gold"][4880][1]["ItemChance"] =7000
	tNoGiftMonster_Reward["Gold"][4880][1]["Item_1"] =2
	tNoGiftMonster_Reward["Gold"][4880][2]={}
	tNoGiftMonster_Reward["Gold"][4880][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Gold"][4880][2]["ItemChance"] =3000
	tNoGiftMonster_Reward["Gold"][4880][2]["Item_1"] =3
	--绝情谷
	tNoGiftMonster_Reward["Gold"][4883]={}
	tNoGiftMonster_Reward["Gold"][4883]["ItemChanceSum"] = 10000
	tNoGiftMonster_Reward["Gold"][4883][1]={}
	tNoGiftMonster_Reward["Gold"][4883][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Gold"][4883][1]["ItemChance"] =6000
	tNoGiftMonster_Reward["Gold"][4883][1]["Item_1"] =2
	tNoGiftMonster_Reward["Gold"][4883][2]={}
	tNoGiftMonster_Reward["Gold"][4883][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Gold"][4883][2]["ItemChance"] =4000
	tNoGiftMonster_Reward["Gold"][4883][2]["Item_1"] =3
	--大漠
	tNoGiftMonster_Reward["Gold"][4886]={}
	tNoGiftMonster_Reward["Gold"][4886]["ItemChanceSum"] = 10000
	tNoGiftMonster_Reward["Gold"][4886][1]={}
	tNoGiftMonster_Reward["Gold"][4886][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Gold"][4886][1]["ItemChance"] =4000
	tNoGiftMonster_Reward["Gold"][4886][1]["Item_1"] =2
	tNoGiftMonster_Reward["Gold"][4886][2]={}
	tNoGiftMonster_Reward["Gold"][4886][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Gold"][4886][2]["ItemChance"] =5000
	tNoGiftMonster_Reward["Gold"][4886][2]["Item_1"] =3
	tNoGiftMonster_Reward["Gold"][4886][3]={}
	tNoGiftMonster_Reward["Gold"][4886][3]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Gold"][4886][3]["ItemChance"] =1000
	tNoGiftMonster_Reward["Gold"][4886][3]["Item_1"] =4
	--芦花荡
	tNoGiftMonster_Reward["Gold"][4889]={}
	tNoGiftMonster_Reward["Gold"][4889]["ItemChanceSum"] = 10000
	tNoGiftMonster_Reward["Gold"][4889][1]={}
	tNoGiftMonster_Reward["Gold"][4889][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Gold"][4889][1]["ItemChance"] =3000
	tNoGiftMonster_Reward["Gold"][4889][1]["Item_1"] =2
	tNoGiftMonster_Reward["Gold"][4889][2]={}
	tNoGiftMonster_Reward["Gold"][4889][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Gold"][4889][2]["ItemChance"] =5500
	tNoGiftMonster_Reward["Gold"][4889][2]["Item_1"] =3
	tNoGiftMonster_Reward["Gold"][4889][3]={}
	tNoGiftMonster_Reward["Gold"][4889][3]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Gold"][4889][3]["ItemChance"] =1500
	tNoGiftMonster_Reward["Gold"][4889][3]["Item_1"] =4
	--敦煌
	tNoGiftMonster_Reward["Gold"][4891]={}
	tNoGiftMonster_Reward["Gold"][4891]["ItemChanceSum"] = 10000
	tNoGiftMonster_Reward["Gold"][4891][1]={}
	tNoGiftMonster_Reward["Gold"][4891][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Gold"][4891][1]["ItemChance"] =2000
	tNoGiftMonster_Reward["Gold"][4891][1]["Item_1"] =2
	tNoGiftMonster_Reward["Gold"][4891][2]={}
	tNoGiftMonster_Reward["Gold"][4891][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Gold"][4891][2]["ItemChance"] =6500
	tNoGiftMonster_Reward["Gold"][4891][2]["Item_1"] =3
	tNoGiftMonster_Reward["Gold"][4891][3]={}
	tNoGiftMonster_Reward["Gold"][4891][3]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Gold"][4891][3]["ItemChance"] =1500
	tNoGiftMonster_Reward["Gold"][4891][3]["Item_1"] =4
	--冰封1
	tNoGiftMonster_Reward["Gold"][4894]={}
	tNoGiftMonster_Reward["Gold"][4894]["ItemChanceSum"] = 10000
	tNoGiftMonster_Reward["Gold"][4894][1]={}
	tNoGiftMonster_Reward["Gold"][4894][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Gold"][4894][1]["ItemChance"] =8500
	tNoGiftMonster_Reward["Gold"][4894][1]["Item_1"] =3
	tNoGiftMonster_Reward["Gold"][4894][2]={}
	tNoGiftMonster_Reward["Gold"][4894][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Gold"][4894][2]["ItemChance"] =1500
	tNoGiftMonster_Reward["Gold"][4894][2]["Item_1"] =4
	--冰封2
	tNoGiftMonster_Reward["Gold"][4896]={}
	tNoGiftMonster_Reward["Gold"][4896]["ItemChanceSum"] = 10000
	tNoGiftMonster_Reward["Gold"][4896][1]={}
	tNoGiftMonster_Reward["Gold"][4896][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Gold"][4896][1]["ItemChance"] =8000
	tNoGiftMonster_Reward["Gold"][4896][1]["Item_1"] =3
	tNoGiftMonster_Reward["Gold"][4896][2]={}
	tNoGiftMonster_Reward["Gold"][4896][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Gold"][4896][2]["ItemChance"] =2000
	tNoGiftMonster_Reward["Gold"][4896][2]["Item_1"] =4
	--冰封3
	tNoGiftMonster_Reward["Gold"][4897]={}
	tNoGiftMonster_Reward["Gold"][4897]["ItemChanceSum"] = 10000
	tNoGiftMonster_Reward["Gold"][4897][1]={}
	tNoGiftMonster_Reward["Gold"][4897][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Gold"][4897][1]["ItemChance"] =7500
	tNoGiftMonster_Reward["Gold"][4897][1]["Item_1"] =3
	tNoGiftMonster_Reward["Gold"][4897][2]={}
	tNoGiftMonster_Reward["Gold"][4897][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Gold"][4897][2]["ItemChance"] =2500
	tNoGiftMonster_Reward["Gold"][4897][2]["Item_1"] =4
	--马贼
	tNoGiftMonster_Reward["Gold"][4882]={}
	tNoGiftMonster_Reward["Gold"][4882]["ItemChanceSum"] = 10000
	tNoGiftMonster_Reward["Gold"][4882][1]={}
	tNoGiftMonster_Reward["Gold"][4882][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Gold"][4882][1]["ItemChance"] =1000
	tNoGiftMonster_Reward["Gold"][4882][1]["Item_1"] =1
	tNoGiftMonster_Reward["Gold"][4882][2]={}
	tNoGiftMonster_Reward["Gold"][4882][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Gold"][4882][2]["ItemChance"] =8000
	tNoGiftMonster_Reward["Gold"][4882][2]["Item_1"] =2
	tNoGiftMonster_Reward["Gold"][4882][3]={}
	tNoGiftMonster_Reward["Gold"][4882][3]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Gold"][4882][3]["ItemChance"] =1000
	tNoGiftMonster_Reward["Gold"][4882][3]["Item_1"] =3
	
	--酒
	tNoGiftMonster_Reward["Wine"]={}
	tNoGiftMonster_Reward["Wine"]["ItemChanceSum"] = 10000
	tNoGiftMonster_Reward["Wine"][1]={}
	tNoGiftMonster_Reward["Wine"][1]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Wine"][1]["ItemChance"] =7700
	tNoGiftMonster_Reward["Wine"][1]["Item_1"] =3311066
	tNoGiftMonster_Reward["Wine"][2]={}
	tNoGiftMonster_Reward["Wine"][2]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Wine"][2]["ItemChance"] =1530
	tNoGiftMonster_Reward["Wine"][2]["Item_1"] =3311067
	tNoGiftMonster_Reward["Wine"][3]={}
	tNoGiftMonster_Reward["Wine"][3]["RandomItemChanceType"] = 2
	tNoGiftMonster_Reward["Wine"][3]["ItemChance"] =770
	tNoGiftMonster_Reward["Wine"][3]["Item_1"] =3311068
------------------物品部分
local tNoGiftMonster_ItemAward={}
	--幽梦草
	tNoGiftMonster_ItemAward[3310805]={}
	tNoGiftMonster_ItemAward[3310805]["ItemNum"]=10
	tNoGiftMonster_ItemAward[3310805]["Monster"]=3504
	tNoGiftMonster_ItemAward[3310805]["GenId"]=26135
	tNoGiftMonster_ItemAward[3310805]["NoItem"]=tNoGiftMonster_Text[3310805]["NoItem"]
	tNoGiftMonster_ItemAward[3310805]["Talk"]=tNoGiftMonster_Text[3310805]["Talk"]
	--凝魂香
	tNoGiftMonster_ItemAward[3310806]={}
	tNoGiftMonster_ItemAward[3310806]["ItemNum"]=10
	tNoGiftMonster_ItemAward[3310806]["Monster"]=3505
	tNoGiftMonster_ItemAward[3310806]["GenId"]=26135
	tNoGiftMonster_ItemAward[3310806]["NoItem"]=tNoGiftMonster_Text[3310806]["NoItem"]
	tNoGiftMonster_ItemAward[3310806]["Talk"]=tNoGiftMonster_Text[3310806]["Talk"]
	--碧玉龙鳞
	tNoGiftMonster_ItemAward[3310807]={}
	tNoGiftMonster_ItemAward[3310807]["ItemNum"]=10
	tNoGiftMonster_ItemAward[3310807]["Monster"]=3506
	tNoGiftMonster_ItemAward[3310807]["GenId"]=26135
	tNoGiftMonster_ItemAward[3310807]["Stc"]={}
	tNoGiftMonster_ItemAward[3310807]["Stc"]["EventType"]=185
	tNoGiftMonster_ItemAward[3310807]["Stc"]["DataType"]=98
	tNoGiftMonster_ItemAward[3310807]["NoItem"]=tNoGiftMonster_Text[3310807]["NoItem"]
	tNoGiftMonster_ItemAward[3310807]["Talk"]=tNoGiftMonster_Text[3310807]["Talk"]
	--轮回之眼碎片
	tNoGiftMonster_ItemAward[3310823]={}
	tNoGiftMonster_ItemAward[3310823]["DeleteItem"]={}
	tNoGiftMonster_ItemAward[3310823]["DeleteItem"][1]={}
	tNoGiftMonster_ItemAward[3310823]["DeleteItem"][1]["Id"]=3310823
	tNoGiftMonster_ItemAward[3310823]["DeleteItem"][1]["ItemNum"]=50
	tNoGiftMonster_ItemAward[3310823]["DeleteItem"][1]["NoItem"]=tNoGiftMonster_Text[3310823]["NoItem"]
	tNoGiftMonster_ItemAward[3310823]["RewardItem"] = {}
	tNoGiftMonster_ItemAward[3310823]["RewardItem"][1] = {}
	tNoGiftMonster_ItemAward[3310823]["RewardItem"][1]["Id"] = 3004464 --轮回之眼
	tNoGiftMonster_ItemAward[3310823]["RewardItem"][1]["Attr"] = "0 1"
	tNoGiftMonster_ItemAward[3310823]["LogId"] =12001168
	--神宝仙丹碎片
	tNoGiftMonster_ItemAward[3310824]={}
	tNoGiftMonster_ItemAward[3310824]["DeleteItem"]={}
	tNoGiftMonster_ItemAward[3310824]["DeleteItem"][1]={}
	tNoGiftMonster_ItemAward[3310824]["DeleteItem"][1]["Id"]=3310824
	tNoGiftMonster_ItemAward[3310824]["DeleteItem"][1]["ItemNum"]=50
	tNoGiftMonster_ItemAward[3310824]["DeleteItem"][1]["NoItem"]=tNoGiftMonster_Text[3310824]["NoItem"]
	tNoGiftMonster_ItemAward[3310824]["RewardItem"] = {}
	tNoGiftMonster_ItemAward[3310824]["RewardItem"][1] = {}
	tNoGiftMonster_ItemAward[3310824]["RewardItem"][1]["Id"] = 3006016 --神宝仙丹
	tNoGiftMonster_ItemAward[3310824]["RewardItem"][1]["Attr"] = "0 1"
	tNoGiftMonster_ItemAward[3310824]["LogId"] =12001168
	--圣灵神木碎片
	tNoGiftMonster_ItemAward[3310825]={}
	tNoGiftMonster_ItemAward[3310825]["DeleteItem"]={}
	tNoGiftMonster_ItemAward[3310825]["DeleteItem"][1]={}
	tNoGiftMonster_ItemAward[3310825]["DeleteItem"][1]["Id"]=3310825
	tNoGiftMonster_ItemAward[3310825]["DeleteItem"][1]["ItemNum"]=50
	tNoGiftMonster_ItemAward[3310825]["DeleteItem"][1]["NoItem"]=tNoGiftMonster_Text[3310825]["NoItem"]
	tNoGiftMonster_ItemAward[3310825]["RewardItem"] = {}
	tNoGiftMonster_ItemAward[3310825]["RewardItem"][1] = {}
	tNoGiftMonster_ItemAward[3310825]["RewardItem"][1]["Id"] =3003660  --圣灵神木
	tNoGiftMonster_ItemAward[3310825]["RewardItem"][1]["Attr"] = "0 1"
	tNoGiftMonster_ItemAward[3310825]["LogId"] =12001168
	--空灵佛心碎片
	tNoGiftMonster_ItemAward[3310826]={}
	tNoGiftMonster_ItemAward[3310826]["DeleteItem"]={}
	tNoGiftMonster_ItemAward[3310826]["DeleteItem"][1]={}
	tNoGiftMonster_ItemAward[3310826]["DeleteItem"][1]["Id"]=3310826
	tNoGiftMonster_ItemAward[3310826]["DeleteItem"][1]["ItemNum"]=50
	tNoGiftMonster_ItemAward[3310826]["DeleteItem"][1]["NoItem"]=tNoGiftMonster_Text[3310826]["NoItem"]
	tNoGiftMonster_ItemAward[3310826]["RewardItem"] = {}
	tNoGiftMonster_ItemAward[3310826]["RewardItem"][1] = {}
	tNoGiftMonster_ItemAward[3310826]["RewardItem"][1]["Id"] =3007564  --空灵佛心
	tNoGiftMonster_ItemAward[3310826]["RewardItem"][1]["Attr"] = "0 1"
	tNoGiftMonster_ItemAward[3310826]["LogId"] =12001168
	--海之心碎片
	tNoGiftMonster_ItemAward[3310827]={}
	tNoGiftMonster_ItemAward[3310827]["DeleteItem"]={}
	tNoGiftMonster_ItemAward[3310827]["DeleteItem"][1]={}
	tNoGiftMonster_ItemAward[3310827]["DeleteItem"][1]["Id"]=3310827
	tNoGiftMonster_ItemAward[3310827]["DeleteItem"][1]["ItemNum"]=50
	tNoGiftMonster_ItemAward[3310827]["DeleteItem"][1]["NoItem"]=tNoGiftMonster_Text[3310827]["NoItem"]
	tNoGiftMonster_ItemAward[3310827]["RewardItem"] = {}
	tNoGiftMonster_ItemAward[3310827]["RewardItem"][1] = {}
	tNoGiftMonster_ItemAward[3310827]["RewardItem"][1]["Id"] = 3307449 --海之心
	tNoGiftMonster_ItemAward[3310827]["RewardItem"][1]["Attr"] = "0 1"
	tNoGiftMonster_ItemAward[3310827]["LogId"] =12001168
	--50点修为值礼包
	tNoGiftMonster_ItemAward[3310995] = {}
	tNoGiftMonster_ItemAward[3310995]["RewardRepairValue"] = {}
	tNoGiftMonster_ItemAward[3310995]["RewardRepairValue"]["Value"] = 50
	tNoGiftMonster_ItemAward[3310995]["DeleteItem"] = {}
	tNoGiftMonster_ItemAward[3310995]["DeleteItem"][1] = {}
	tNoGiftMonster_ItemAward[3310995]["DeleteItem"][1]["Id"] = 3310995
	tNoGiftMonster_ItemAward[3310995]["LogId"] = 12001168
	--100点修为值礼包
	tNoGiftMonster_ItemAward[3310996] = {}
	tNoGiftMonster_ItemAward[3310996]["RewardRepairValue"] = {}
	tNoGiftMonster_ItemAward[3310996]["RewardRepairValue"]["Value"] = 100
	tNoGiftMonster_ItemAward[3310996]["DeleteItem"] = {}
	tNoGiftMonster_ItemAward[3310996]["DeleteItem"][1] = {}
	tNoGiftMonster_ItemAward[3310996]["DeleteItem"][1]["Id"] = 3310996
	tNoGiftMonster_ItemAward[3310996]["LogId"] = 12001168
	--300点修为值礼包
	tNoGiftMonster_ItemAward[3310997] = {}
	tNoGiftMonster_ItemAward[3310997]["RewardRepairValue"] = {}
	tNoGiftMonster_ItemAward[3310997]["RewardRepairValue"]["Value"] = 300
	tNoGiftMonster_ItemAward[3310997]["DeleteItem"] = {}
	tNoGiftMonster_ItemAward[3310997]["DeleteItem"][1] = {}
	tNoGiftMonster_ItemAward[3310997]["DeleteItem"][1]["Id"] = 3310997
	tNoGiftMonster_ItemAward[3310997]["LogId"] = 12001168
	--1000点修为值礼包
	tNoGiftMonster_ItemAward[3310998] = {}
	tNoGiftMonster_ItemAward[3310998]["RewardRepairValue"] = {}
	tNoGiftMonster_ItemAward[3310998]["RewardRepairValue"]["Value"] = 1000
	tNoGiftMonster_ItemAward[3310998]["DeleteItem"] = {}
	tNoGiftMonster_ItemAward[3310998]["DeleteItem"][1] = {}
	tNoGiftMonster_ItemAward[3310998]["DeleteItem"][1]["Id"] = 3310998
	tNoGiftMonster_ItemAward[3310998]["LogId"] = 12001168
	--一阶防具神魂（未鉴定）
	tNoGiftMonster_ItemAward[3310809]={}
	tNoGiftMonster_ItemAward[3310809]["Attr"]="0 1 0 10080 1"
	tNoGiftMonster_ItemAward[3310809]["NewAttr"]="0 1 3 10080 1"
	tNoGiftMonster_ItemAward[3310809]["RewardId"]={}
	tNoGiftMonster_ItemAward[3310809]["RewardId"][1]=800401
	tNoGiftMonster_ItemAward[3310809]["RewardId"][2]=800413
	tNoGiftMonster_ItemAward[3310809]["RewardId"][3]=824001
	tNoGiftMonster_ItemAward[3310809]["RewardId"][4]=822001
	tNoGiftMonster_ItemAward[3310809]["RewardId"][5]=820001
	tNoGiftMonster_ItemAward[3310809]["RewardId"][6]=823040
	tNoGiftMonster_ItemAward[3310809]["RewardId"][7]=823042
	tNoGiftMonster_ItemAward[3310809]["RewardId"][8]=823044
	tNoGiftMonster_ItemAward[3310809]["RewardId"][9]=823046
	tNoGiftMonster_ItemAward[3310809]["RewardId"][10]=823048
	tNoGiftMonster_ItemAward[3310809]["RewardId"][11]=823050
	--一阶武器神魂（未鉴定）
	tNoGiftMonster_ItemAward[3310810]={}
	tNoGiftMonster_ItemAward[3310810]["Attr"]="0 1 0 10080 1"
	tNoGiftMonster_ItemAward[3310810]["NewAttr"]="0 1 3 10080 1"
	tNoGiftMonster_ItemAward[3310810]["RewardId"]={}
	tNoGiftMonster_ItemAward[3310810]["RewardId"][1]=800130
	tNoGiftMonster_ItemAward[3310810]["RewardId"][2]=800514
	tNoGiftMonster_ItemAward[3310810]["RewardId"][3]=800721
	tNoGiftMonster_ItemAward[3310810]["RewardId"][4]=800800
	tNoGiftMonster_ItemAward[3310810]["RewardId"][5]=800805
	tNoGiftMonster_ItemAward[3310810]["RewardId"][6]=800251
	tNoGiftMonster_ItemAward[3310810]["RewardId"][7]=800914
	tNoGiftMonster_ItemAward[3310810]["RewardId"][8]=801100
	tNoGiftMonster_ItemAward[3310810]["RewardId"][9]=801200
	tNoGiftMonster_ItemAward[3310810]["RewardId"][10]=801202
	tNoGiftMonster_ItemAward[3310810]["RewardId"][11]= 801300
	tNoGiftMonster_ItemAward[3310810]["RewardId"][12]= 827000
	tNoGiftMonster_ItemAward[3310810]["RewardId"][13]= 827001

	--二阶防具神魂（未鉴定）
	tNoGiftMonster_ItemAward[3310811]={}
	tNoGiftMonster_ItemAward[3310811]["Attr"]="0 1 0 10080 1"
	tNoGiftMonster_ItemAward[3310811]["NewAttr"]="0 1 3 10080 1"
	tNoGiftMonster_ItemAward[3310811]["RewardId"]={}
	tNoGiftMonster_ItemAward[3310811]["RewardId"][1]=822052
	tNoGiftMonster_ItemAward[3310811]["RewardId"][2]=822054
	tNoGiftMonster_ItemAward[3310811]["RewardId"][3]=820054
	tNoGiftMonster_ItemAward[3310811]["RewardId"][4]=820055
	tNoGiftMonster_ItemAward[3310811]["RewardId"][5]=800420
	tNoGiftMonster_ItemAward[3310811]["RewardId"][6]=823047
	tNoGiftMonster_ItemAward[3310811]["RewardId"][7]=823049
	tNoGiftMonster_ItemAward[3310811]["RewardId"][8]=823051
	--三阶防具神魂（未鉴定）
	tNoGiftMonster_ItemAward[3310813]={}
	tNoGiftMonster_ItemAward[3310813]["Attr"]="0 1 0 10080 1"
	tNoGiftMonster_ItemAward[3310813]["NewAttr"]="0 1 3 10080 1"
	tNoGiftMonster_ItemAward[3310813]["RewardId"]={}
	tNoGiftMonster_ItemAward[3310813]["RewardId"][1]=820052
	tNoGiftMonster_ItemAward[3310813]["RewardId"][2]=820053
	tNoGiftMonster_ItemAward[3310813]["RewardId"][3]=800414
	tNoGiftMonster_ItemAward[3310813]["RewardId"][4]=823041
	tNoGiftMonster_ItemAward[3310813]["RewardId"][5]=823043
	tNoGiftMonster_ItemAward[3310813]["RewardId"][6]=823045
	tNoGiftMonster_ItemAward[3310813]["RewardId"][7]=822056
	tNoGiftMonster_ItemAward[3310813]["RewardId"][8]=822057
	tNoGiftMonster_ItemAward[3310813]["RewardId"][9]=824016
	tNoGiftMonster_ItemAward[3310813]["RewardId"][10]=821027
	tNoGiftMonster_ItemAward[3310813]["RewardId"][11]=821029
	--三阶武器神魂（未鉴定）
	tNoGiftMonster_ItemAward[3310814]={}
	tNoGiftMonster_ItemAward[3310814]["Attr"]="0 1 0 10080 1"
	tNoGiftMonster_ItemAward[3310814]["NewAttr"]="0 1 3 10080 1"
	tNoGiftMonster_ItemAward[3310814]["RewardId"]={}
	tNoGiftMonster_ItemAward[3310814]["RewardId"][1]=800141
	tNoGiftMonster_ItemAward[3310814]["RewardId"][2]=800200
	tNoGiftMonster_ItemAward[3310814]["RewardId"][3]=800521
	tNoGiftMonster_ItemAward[3310814]["RewardId"][4]=800723
	tNoGiftMonster_ItemAward[3310814]["RewardId"][5]=800724
	tNoGiftMonster_ItemAward[3310814]["RewardId"][6]=800140
	tNoGiftMonster_ItemAward[3310814]["RewardId"][7]=800520
	tNoGiftMonster_ItemAward[3310814]["RewardId"][8]=800801
	tNoGiftMonster_ItemAward[3310814]["RewardId"][9]= 800802
	tNoGiftMonster_ItemAward[3310814]["RewardId"][10]=800806
	tNoGiftMonster_ItemAward[3310814]["RewardId"][11]=800807
	tNoGiftMonster_ItemAward[3310814]["RewardId"][12]=800252
	tNoGiftMonster_ItemAward[3310814]["RewardId"][13]=800915
	tNoGiftMonster_ItemAward[3310814]["RewardId"][14]=801101
	tNoGiftMonster_ItemAward[3310814]["RewardId"][15]=801204
	tNoGiftMonster_ItemAward[3310814]["RewardId"][16]=801206
	tNoGiftMonster_ItemAward[3310814]["RewardId"][17]=801302
	tNoGiftMonster_ItemAward[3310814]["RewardId"][18]=827002
	tNoGiftMonster_ItemAward[3310814]["RewardId"][19]=827003
	--四阶武器神魂（未鉴定）
	tNoGiftMonster_ItemAward[3310816]={}
	tNoGiftMonster_ItemAward[3310816]["Attr"]="0 1 0 10080 1"
	tNoGiftMonster_ItemAward[3310816]["NewAttr"]="0 1 3 10080 1"
	tNoGiftMonster_ItemAward[3310816]["RewardId"]={}
	tNoGiftMonster_ItemAward[3310816]["RewardId"][1]=800016
	tNoGiftMonster_ItemAward[3310816]["RewardId"][2]=800214
	tNoGiftMonster_ItemAward[3310816]["RewardId"][3]=800512
	tNoGiftMonster_ItemAward[3310816]["RewardId"][4]=800720
	tNoGiftMonster_ItemAward[3310816]["RewardId"][5]=800803
	tNoGiftMonster_ItemAward[3310816]["RewardId"][6]=800808
	tNoGiftMonster_ItemAward[3310816]["RewardId"][7]=800253
	tNoGiftMonster_ItemAward[3310816]["RewardId"][8]=800913
	tNoGiftMonster_ItemAward[3310816]["RewardId"][9]=801102
	tNoGiftMonster_ItemAward[3310816]["RewardId"][10]=801208
	tNoGiftMonster_ItemAward[3310816]["RewardId"][11]=801210
	tNoGiftMonster_ItemAward[3310816]["RewardId"][12]=801304
	tNoGiftMonster_ItemAward[3310816]["RewardId"][13]=827004
	tNoGiftMonster_ItemAward[3310816]["RewardId"][14]=827005
	--五阶防具神魂（未鉴定）
	tNoGiftMonster_ItemAward[3310817]={}
	tNoGiftMonster_ItemAward[3310817]["Attr"]="0 1 0 10080 1"
	tNoGiftMonster_ItemAward[3310817]["NewAttr"]="0 1 3 10080 1"
	tNoGiftMonster_ItemAward[3310817]["RewardId"]={}
	tNoGiftMonster_ItemAward[3310817]["RewardId"][1]=820056
	tNoGiftMonster_ItemAward[3310817]["RewardId"][2]=820057
	tNoGiftMonster_ItemAward[3310817]["RewardId"][3]=800415
	tNoGiftMonster_ItemAward[3310817]["RewardId"][4]=821028
	tNoGiftMonster_ItemAward[3310817]["RewardId"][5]=821030
	--六阶防具神魂（未鉴定）
	tNoGiftMonster_ItemAward[3310819]={}
	tNoGiftMonster_ItemAward[3310819]["Attr"]="0 1 0 10080 1"
	tNoGiftMonster_ItemAward[3310819]["NewAttr"]="0 1 3 10080 1"
	tNoGiftMonster_ItemAward[3310819]["RewardId"]={}
	tNoGiftMonster_ItemAward[3310819]["RewardId"][1]=822053
	tNoGiftMonster_ItemAward[3310819]["RewardId"][2]=822055
	tNoGiftMonster_ItemAward[3310819]["RewardId"][3]=820071
	tNoGiftMonster_ItemAward[3310819]["RewardId"][4]=820072
	tNoGiftMonster_ItemAward[3310819]["RewardId"][5]=824017
	tNoGiftMonster_ItemAward[3310819]["RewardId"][6]=823055
	tNoGiftMonster_ItemAward[3310819]["RewardId"][7]=823057
	tNoGiftMonster_ItemAward[3310819]["RewardId"][8]=823056
	tNoGiftMonster_ItemAward[3310819]["RewardId"][9]=821032
	tNoGiftMonster_ItemAward[3310819]["RewardId"][10]=821031
	--六阶武器神魂（未鉴定）
	tNoGiftMonster_ItemAward[3310820]={}
	tNoGiftMonster_ItemAward[3310820]["Attr"]="0 1 0 10080 1"
	tNoGiftMonster_ItemAward[3310820]["NewAttr"]="0 1 3 10080 1"
	tNoGiftMonster_ItemAward[3310820]["RewardId"]={}
	tNoGiftMonster_ItemAward[3310820]["RewardId"][1]=800000
	tNoGiftMonster_ItemAward[3310820]["RewardId"][2]=800110
	tNoGiftMonster_ItemAward[3310820]["RewardId"][3]=800320
	tNoGiftMonster_ItemAward[3310820]["RewardId"][4]=800616
	tNoGiftMonster_ItemAward[3310820]["RewardId"][5]=800916
	tNoGiftMonster_ItemAward[3310820]["RewardId"][6]=800809
	tNoGiftMonster_ItemAward[3310820]["RewardId"][7]=800804
	tNoGiftMonster_ItemAward[3310820]["RewardId"][8]=800722
	tNoGiftMonster_ItemAward[3310820]["RewardId"][9]=800017
	tNoGiftMonster_ItemAward[3310820]["RewardId"][10]=800254
	tNoGiftMonster_ItemAward[3310820]["RewardId"][11]=800513
	tNoGiftMonster_ItemAward[3310820]["RewardId"][12]=800421
	tNoGiftMonster_ItemAward[3310820]["RewardId"][13]=801003
	tNoGiftMonster_ItemAward[3310820]["RewardId"][14]=801103
	tNoGiftMonster_ItemAward[3310820]["RewardId"][15]=801212
	tNoGiftMonster_ItemAward[3310820]["RewardId"][16]=801214
	tNoGiftMonster_ItemAward[3310820]["RewardId"][17]=801306
	tNoGiftMonster_ItemAward[3310820]["RewardId"][18]=827006
	tNoGiftMonster_ItemAward[3310820]["RewardId"][19]=827007
	tNoGiftMonster_ItemAward[3310820]["RewardId"][20]=827008
	tNoGiftMonster_ItemAward[3310820]["RewardId"][21]=827009
	--七阶防具神魂（未鉴定）
	tNoGiftMonster_ItemAward[3310821]={}
	tNoGiftMonster_ItemAward[3310821]["Attr"]="0 1 0 10080 1"
	tNoGiftMonster_ItemAward[3310821]["NewAttr"]="0 1 3 10080 1"
	tNoGiftMonster_ItemAward[3310821]["RewardId"]={}
	tNoGiftMonster_ItemAward[3310821]["RewardId"][1]=820073
	tNoGiftMonster_ItemAward[3310821]["RewardId"][2]=820074
	tNoGiftMonster_ItemAward[3310821]["RewardId"][3]=820075
	tNoGiftMonster_ItemAward[3310821]["RewardId"][4]=820076
	tNoGiftMonster_ItemAward[3310821]["RewardId"][5]=822071
	tNoGiftMonster_ItemAward[3310821]["RewardId"][6]=822072
	tNoGiftMonster_ItemAward[3310821]["RewardId"][7]=821034
	tNoGiftMonster_ItemAward[3310821]["RewardId"][8]=821033
	tNoGiftMonster_ItemAward[3310821]["RewardId"][9]=823058
	tNoGiftMonster_ItemAward[3310821]["RewardId"][10]=823059
	tNoGiftMonster_ItemAward[3310821]["RewardId"][11]=823061
	tNoGiftMonster_ItemAward[3310821]["RewardId"][12]=823062
	tNoGiftMonster_ItemAward[3310821]["RewardId"][13]=823060
	tNoGiftMonster_ItemAward[3310821]["RewardId"][14]=824018
	tNoGiftMonster_ItemAward[3310821]["RewardId"][15]=824019
	tNoGiftMonster_ItemAward[3310821]["RewardId"][16]=824020
	--七阶武器神魂（未鉴定）
	tNoGiftMonster_ItemAward[3310822]={}
	tNoGiftMonster_ItemAward[3310822]["Attr"]="0 1 0 10080 1"
	tNoGiftMonster_ItemAward[3310822]["NewAttr"]="0 1 3 10080 1"
	tNoGiftMonster_ItemAward[3310822]["RewardId"]={}
	tNoGiftMonster_ItemAward[3310822]["RewardId"][1]=800020
	tNoGiftMonster_ItemAward[3310822]["RewardId"][2]=800111
	tNoGiftMonster_ItemAward[3310822]["RewardId"][3]=800215
	tNoGiftMonster_ItemAward[3310822]["RewardId"][4]=800811
	tNoGiftMonster_ItemAward[3310822]["RewardId"][5]=800810
	tNoGiftMonster_ItemAward[3310822]["RewardId"][6]=800142
	tNoGiftMonster_ItemAward[3310822]["RewardId"][7]=800917
	tNoGiftMonster_ItemAward[3310822]["RewardId"][8]=800255
	tNoGiftMonster_ItemAward[3310822]["RewardId"][9]=800422
	tNoGiftMonster_ItemAward[3310822]["RewardId"][10]=800522
	tNoGiftMonster_ItemAward[3310822]["RewardId"][11]=800618
	tNoGiftMonster_ItemAward[3310822]["RewardId"][12]=800725
	tNoGiftMonster_ItemAward[3310822]["RewardId"][13]=801004
	tNoGiftMonster_ItemAward[3310822]["RewardId"][14]=801104
	tNoGiftMonster_ItemAward[3310822]["RewardId"][15]=801216
	tNoGiftMonster_ItemAward[3310822]["RewardId"][16]=801218
	tNoGiftMonster_ItemAward[3310822]["RewardId"][17]=801308
	tNoGiftMonster_ItemAward[3310822]["RewardId"][18]=827010
	tNoGiftMonster_ItemAward[3310822]["RewardId"][19]=827011
	tNoGiftMonster_ItemAward[3310822]["RewardId"][20]=827012
	tNoGiftMonster_ItemAward[3310822]["RewardId"][21]=827013
	
local tNoGiftMonster_FailAward={}
	tNoGiftMonster_FailAward["RewardItem"] = {}
	tNoGiftMonster_FailAward["RewardItem"][1] = {}
	tNoGiftMonster_FailAward["RewardItem"][1]["Id"] = 3310805	--逻辑重写
	tNoGiftMonster_FailAward["RewardItem"][1]["Attr"] = "0 "	--逻辑重写
	tNoGiftMonster_FailAward["LogId"] =12001168
	tNoGiftMonster_FailAward["RewardNoNeedTip"] = 1 	

	
-- local tNoGiftMonster_MonsterDrop=CommonFunc_Copy(tNoGiftMonster_Drop)
	-- for i,v in pairs(tNoGiftMonster_MonsterDrop) do
		-- if i == 4882 then
			-- v[1]["Times"] =2
		-- else
			-- for j=1,#v do
				-- if v[j]["ItemChanceSum"] == v[j][1]["ItemChance"] then
					-- v[j]["Times"] =2
				-- else
					-- v[j][1]["ItemChance"] = v[j][1]["ItemChance"] *2
					-- v[j][2]["ItemChance"] = v[j]["ItemChanceSum"] -v[j][1]["ItemChance"]
				-- end
			-- end
		-- end
	-- end

local tNoGiftMonster_NewData={}
local tNoGiftMonster_NewDoubleData={}
local tNoGiftMonster_MonstArea = {}
	
-----------------------------------逻辑部分配置--------------------------------------
-- 服务器启动时配置
function NoGiftMonster_Server()
	--区分片区
	for i,v in ipairs(tNoGiftMonster_MonsterId["Xiaoguai"]) do
		for j, nData in ipairs(v) do
			tNoGiftMonster_MonstArea[nData] = i
		end
	end
	
	for i,v in pairs(tNoGiftMonster_MonsterId["Elite"]) do
		for j,nData in ipairs(v) do
			tNoGiftMonster_MonstArea[nData] = i
		end
	end
	
	-- 定义打爆小爆的概率
	for i,v in pairs(tNoGiftMonster_DropData["Small"]) do
		tNoGiftMonster_NewData[i] = {}
		tNoGiftMonster_NewData[i][1]={}
		tNoGiftMonster_NewData[i][1]["ItemChanceSum"] = 100000
		tNoGiftMonster_NewData[i][1][1]={}
		tNoGiftMonster_NewData[i][1][1]["RandomItemChanceType"] = 2
		tNoGiftMonster_NewData[i][1][1]["ItemChance"] = v
		tNoGiftMonster_NewData[i][1][1]["Item_1"] = "Small"
		tNoGiftMonster_NewData[i][1][1]["Times"] = 1
		tNoGiftMonster_NewData[i][1][2]={}
		tNoGiftMonster_NewData[i][1][2]["RandomItemChanceType"] = 2
		tNoGiftMonster_NewData[i][1][2]["ItemChance"] = 100000 - v
		tNoGiftMonster_NewData[i][1][2]["Item_1"] = 0
		
		tNoGiftMonster_NewDoubleData[i] = {}
		tNoGiftMonster_NewDoubleData[i][1]={}
		tNoGiftMonster_NewDoubleData[i][1]["ItemChanceSum"] = 100000
		tNoGiftMonster_NewDoubleData[i][1][1]={}
		tNoGiftMonster_NewDoubleData[i][1][1]["RandomItemChanceType"] = 2
		tNoGiftMonster_NewDoubleData[i][1][1]["ItemChance"] = v*2
		tNoGiftMonster_NewDoubleData[i][1][1]["Item_1"] = "Small"
		tNoGiftMonster_NewDoubleData[i][1][1]["Times"] = 1
		tNoGiftMonster_NewDoubleData[i][1][2]={}
		tNoGiftMonster_NewDoubleData[i][1][2]["RandomItemChanceType"] = 2
		tNoGiftMonster_NewDoubleData[i][1][2]["ItemChance"] = 100000 - v*2
		tNoGiftMonster_NewDoubleData[i][1][2]["Item_1"] = 0
	end
	
	for i,v in pairs(tNoGiftMonster_DropData["More"]) do
		tNoGiftMonster_NewData[i][2]={}
		tNoGiftMonster_NewData[i][2]["ItemChanceSum"] = 100000
		tNoGiftMonster_NewData[i][2][1]={}
		tNoGiftMonster_NewData[i][2][1]["RandomItemChanceType"] = 2
		tNoGiftMonster_NewData[i][2][1]["ItemChance"] = v
		tNoGiftMonster_NewData[i][2][1]["Item_1"] = "More"
		tNoGiftMonster_NewData[i][2][1]["Times"] = 1
		tNoGiftMonster_NewData[i][2][2]={}
		tNoGiftMonster_NewData[i][2][2]["RandomItemChanceType"] = 2
		tNoGiftMonster_NewData[i][2][2]["ItemChance"] = 100000 - v
		tNoGiftMonster_NewData[i][2][2]["Item_1"] = 0
		
		tNoGiftMonster_NewDoubleData[i][2]={}
		tNoGiftMonster_NewDoubleData[i][2]["ItemChanceSum"] = 100000
		tNoGiftMonster_NewDoubleData[i][2][1]={}
		tNoGiftMonster_NewDoubleData[i][2][1]["RandomItemChanceType"] = 2
		tNoGiftMonster_NewDoubleData[i][2][1]["ItemChance"] = v*2
		tNoGiftMonster_NewDoubleData[i][2][1]["Item_1"] = "More"
		tNoGiftMonster_NewDoubleData[i][2][1]["Times"] = 1
		tNoGiftMonster_NewDoubleData[i][2][2]={}
		tNoGiftMonster_NewDoubleData[i][2][2]["RandomItemChanceType"] = 2
		tNoGiftMonster_NewDoubleData[i][2][2]["ItemChance"] = 100000 - v*2
		tNoGiftMonster_NewDoubleData[i][2][2]["Item_1"] = 0
	end
end

--片区怪区分片区
function NoGiftMonster_KillMonster(nMonsterId)
	if not SpecialServer_ChkNoGiftServer() then
		return
	end

	local nArea = tNoGiftMonster_MonstArea[nMonsterId]
	
	if nArea == nil or nArea == 0 then
		return
	end
	--大小爆重写
	NoGiftMonster_RewriteMonster(nArea)
	--概率奖励
	NoGiftMonster_MonsterDie(nArea)
end

--精英怪
function NoGiftMonster_KillElite(nMonsterId)
	if not SpecialServer_ChkNoGiftServer() then
		return
	end

	local nMainId = tNoGiftMonster_MonstArea[nMonsterId]

	if nMainId == nil or nMainId == 0 then
		return
	end
	
	NoGiftMonster_RewriteMonster(nMainId)
	NoGiftMonster_MonsterDie(nMainId)
end

--boss死亡
function NoGiftMonster_KillBoss(nMonsterId)
	 if not SpecialServer_ChkNoGiftServer() then
		return
	end
	local nMapId = Get_UserMapId()
	Monster_Death(nMonsterId,nMapId)
	NoGiftMonster_MonsterDie(nMonsterId,1)
end

--判断是否翻倍时间
function NoGiftMonster_ChkDoubleTime()
	--固定翻倍时间
	if Sys_ChkDayTime(tNoGiftMonster_Cont["DoubleTime"]) then
		return true
	end
	
	-- --随机翻倍时间
	-- local nGlobalId = tNoGiftMonster_Global["Double"]["Global"]
	-- local nPos = tNoGiftMonster_Global["Double"]["Pos"]
	-- local sDoubleTime = Get_SysDynaGlobalDataStr(nGlobalId,nPos)
	
	-- if sDoubleTime == "" then
		-- return
	-- end
	
	-- if Sys_ChkDayTime(sDoubleTime) then
		-- return true
	-- end
	
	return false
end

--重写大小爆表掉落
function NoGiftMonster_RewriteMonster(nMonsterId)
	local tReward = tNoGiftMonster_NewData[nMonsterId]
	-- local tReward = tNoGiftMonster_Data["Monster"]
	-- local nSmallData = tNoGiftMonster_DropData["Small"][nMonsterId]
	-- local nMoreData = tNoGiftMonster_DropData["More"][nMonsterId]
	
	--翻倍时间，掉率翻倍
	if NoGiftMonster_ChkDoubleTime() then
		-- nSmallData = tNoGiftMonster_DropData["Small"][nMonsterId] *2
		-- nMoreData = tNoGiftMonster_DropData["More"][nMonsterId] *2
		tReward = tNoGiftMonster_NewDoubleData[nMonsterId]
	end

	-- tReward[1][1]["ItemChance"] = nSmallData
	-- tReward[1][2]["ItemChance"] = tReward[1]["ItemChanceSum"] - nSmallData
	-- tReward[2][1]["ItemChance"] = nMoreData
	-- tReward[2][2]["ItemChance"] = tReward[2]["ItemChanceSum"] - nMoreData
	
	--大小爆
	for i =1 ,#tReward do
		local flat,tAward =Probabil_RandomAward(tReward,i)
		local sDropType = tAward[1]["tAward"][1]["Item_1"]
		if sDropType ~= 0 then
			local nTimes = tAward[1]["tAward"][1]["Times"]
			--大小爆奖池
			NoGiftMonster_BoomTimesDrop(sDropType,nMonsterId)
			--循环奖励
			for j=1,nTimes do
				NoGiftMonster_MonsterDie(nMonsterId)
			end
		end
	end
end

-- 必掉奖励
function NoGiftMonster_MustReward(nMonsterId,nRandomTimes)
	local tMonsterMust = tNoGiftMonster_Drop[nMonsterId]["Must"]
	
	--存在必掉情况
	if tMonsterMust == nil then
		return
	end
	
	--必掉银两(boss才有)
	if tMonsterMust["Money"] ~= nil then
		local nDropMoney = tMonsterMust["Money"]["Value"]
		local nMoneyTimes = 1

		--多堆
		if tMonsterMust["Money"]["Times"] ~= nil then
			nMoneyTimes = tMonsterMust["Money"]["Times"]
		end
		
		for i=1,nMoneyTimes do
			Monster_SysDropMoney(nDropMoney)
		end
		
		local nDisplayMoney = nDropMoney*nMoneyTimes
		local sMoneyText = string.format(tNoGiftMonster_Text["Money"],nDisplayMoney)
		User_TalkChannel2005(string.format(tNoGiftMonster_Text["AllTips"],sMoneyText))
	end
	-- 必掉物品
	if tMonsterMust["Item"] ~= nil then
		for i,v in pairs(tMonsterMust["Item"]) do
			local nItemNum = v[2]*nRandomTimes
			
			for j =1 ,nItemNum do
				Monster_SysDropItem(v[1])
			end
			
			Sys_SaveActionFestivalLog(string.format(tNoGiftMonster_Log["All"],Get_MonsterType(),v[1],nItemNum))
			User_TalkChannel2005(string.format(tNoGiftMonster_Text["AllTips"],Get_ItemtypeName(v[1])))
		end
	end
end

-- 概率掉落单个物品（片区怪和精英怪）
function NoGiftMonster_ProbabilityDrop(nMonsterId,nRandomTimes)
	local tMonsterDrop = tNoGiftMonster_Drop[nMonsterId]
	
	if tMonsterDrop["RandomSum"] == nil or tMonsterDrop["Random"] == nil then
		return
	end
	
	local nRandomSum = tMonsterDrop["RandomSum"]
	
	for i ,v in pairs(tMonsterDrop["Random"]) do
		if Sys_Random(v,nRandomSum) then
			for nRandom=1,nRandomTimes do
				Monster_SysDropItem(i)
			end
			Sys_SaveActionFestivalLog(string.format(tNoGiftMonster_Log["All"],Get_MonsterType(),i,nRandomTimes))
			User_TalkChannel2005(string.format(tNoGiftMonster_Text["AllTips"],Get_ItemtypeName(i)))
		end
	end
end

--第一层
function NoGiftMonster_MonsterDie(nMonsterId,nBoss)
	local tMonsterDrop = tNoGiftMonster_Drop[nMonsterId]
	local nRandomTimes = 1
	
	if NoGiftMonster_ChkDoubleTime() and (nBoss ~= 1)then
		nRandomTimes = 2
	end
	
	--存在必掉情况
	NoGiftMonster_MustReward(nMonsterId,nRandomTimes)
	--概率掉落单个物品（片区怪和精英怪）
	NoGiftMonster_ProbabilityDrop(nMonsterId,nRandomTimes)

	--长度为0，返回
	if #tMonsterDrop <= 0 then
		return
	end
	--概率掉落(走子表)
	for i,v in ipairs (tMonsterDrop) do
		NoGiftMonster_MonsterDrop(nMonsterId,i,nBoss)
	end
end

--概率掉落
function NoGiftMonster_MonsterDrop(nMonsterId,nIndex,nBoss,nDouble)
	local tNoGiftMonsterDrop = tNoGiftMonster_Drop[nMonsterId]
	local sBossText=""
	local nTimes = nDouble
	local nMonTypeId = Get_MonsterType()
	
	if nTimes == nil then
		nTimes = 1
		
		--翻倍时间
		if NoGiftMonster_ChkDoubleTime() and (nBoss ~= 1)then
			nTimes = 2
		end
	end

	local flat,tAward = Probabil_RandomAward(tNoGiftMonsterDrop,nIndex)
	local nItemType = tAward[1]["tAward"][1]["Item_1"]
	
	--走表掉落
	if type(nItemType) == "string" then
		--boss大小爆
		if nItemType == "Small" or nItemType == "More" then
			NoGiftMonster_BoomTimesDrop(nItemType,nMonsterId)
		--精英怪银两
		elseif nItemType == "Gold" then
			NoGiftMonster_EliteDropGold(nMonsterId,nTimes)
		elseif nItemType == "Xuanbao" then
			for j=1,nTimes do
				local nDropId = Monster_SysDropRandomXuanbao()
				Sys_SaveActionFestivalLog(string.format(tNoGiftMonster_Log["AllOne"],nMonTypeId,nDropId))
				User_TalkChannel2005(string.format(tNoGiftMonster_Text["AllTips"],Get_ItemtypeName(nDropId)))
			end
		--刷新宝箱
		elseif nItemType == "movebox" then
			SmallBestDrop_MoveBox(nMonTypeId)
		--boss掉银两
		elseif nItemType == "Money" then
			local nMoneyValue = tAward[1]["tAward"][1]["Value"]
			local nMoneyTimes = 1
			if tAward[1]["tAward"][1]["Num"] ~= nil then
				nMoneyTimes = tAward[1]["tAward"][1]["Num"]
			end
			for i=1,nMoneyTimes do
				Monster_SysDropMoney(nMoneyValue)
			end
			sBossText = string.format(tNoGiftMonster_Text["Money"],nMoneyTimes*nMoneyValue)
			User_TalkChannel2005(string.format(tNoGiftMonster_Text["AllTips"],sBossText))
		else
			NoGiftMonster_DropItem(nItemType,nMonsterId,nTimes)
		end
	--直接是物品
	elseif nItemType ~= 0 then
		if tAward[1]["tAward"][1]["Num"] ~= nil then
			local nItemTimes = tAward[1]["tAward"][1]["Num"]
			local nMapId= Get_MonsterMapID()
			local nPosX = Get_MonsterPosX()
			local nPosY = Get_MonsterPosY()
			local nRange = tNoGiftMonster_Cont["Range"]
			local nExistTime = tNoGiftMonster_Cont["ExistTime"]
			Map_DropMultiItems(nMapId,nItemType,nPosX,nPosY,nRange,nRange,nItemTimes,nExistTime)
			Sys_SaveActionFestivalLog(string.format(tNoGiftMonster_Log["All"],nMonTypeId,nItemType,nItemTimes))
			sBossText=string.format(tNoGiftMonster_Text["Reward"],nItemTimes,Get_ItemtypeName(nItemType))
		else
			for k=1,nTimes do
				Monster_SysDropItem(nItemType)
			end
			sBossText=Get_ItemtypeName(nItemType)
			Sys_SaveActionFestivalLog(string.format(tNoGiftMonster_Log["All"],nMonTypeId,nItemType,nTimes))
		end
		User_TalkChannel2005(string.format(tNoGiftMonster_Text["AllTips"],Get_ItemtypeName(nItemType)))
	end

	--击杀boss全服公告
	if nBoss ~= nil and (nIndex == #tNoGiftMonsterDrop)then
		local sMonsterName = tNoGiftMonster_Text["BossName"][nMonsterId]
		local sRareText = string.format(tNoGiftMonster_Text["RareBoss"][nMonsterId],sBossText)
		local sContent = string.format(tNoGiftMonster_Text["KillRareBoss"],Get_UserName(),sMonsterName,sRareText)
		Sys_SystemBroadcast(sContent)
		Sys_TalkBroadcast(sContent)
	end
end



--精英怪掉金币
function NoGiftMonster_EliteDropGold(nMonsterId,nTimes)
	local flat,tAward = Probabil_RandomAward(tNoGiftMonster_Reward["Gold"],nMonsterId)
	local nValue = tAward[1]["tAward"][1]["Item_1"]
	
	local nStartNum = tNoGiftMonster_DropData["Gold"][nValue]["StartNum"]
	local nEndNum = tNoGiftMonster_DropData["Gold"][nValue]["EndNum"]
	local nMoney = math.random(nStartNum,nEndNum)
	for i=1,nTimes do
		Monster_SysDropMoney(nMoney)
	end
	local sMoneyText = string.format(tNoGiftMonster_Text["Money"],nMoney*nTimes)
	User_TalkChannel2005(string.format(tNoGiftMonster_Text["AllTips"],sMoneyText))
end

--子表物品掉落
function NoGiftMonster_DropItem(sItemType,nMonsterId,nTimes)
	local tMonsterReward = tNoGiftMonster_Reward
	local nTimeValue = nTimes or 1
	--练功（2转才掉）
	if tMonsterReward[sItemType]["Mete"] ~= nil then
		if not NoGiftMonster_ChkUserMete() then
			return
		end
	--2转道具（2转后不掉）
	elseif tMonsterReward[sItemType]["NoMete"] ~= nil then
		if NoGiftMonster_ChkUserMete() then
			return
		end
	end
	
	-- local nGlobalId,nPos = 0,0
	-- local nLimit = 0
	-- --史诗武器碎片
	-- if sItemType == "Fragment" then
		-- nGlobalId = tNoGiftMonster_Global[sItemType]["Global"]
		-- nPos = tNoGiftMonster_Global[sItemType]["Pos"]
		-- nLimit = tNoGiftMonster_Global[sItemType]["Limit"]
		-- if Get_SysDynaGlobalData(nGlobalId,nPos) >= nLimit then 
			-- return
		-- end
	-- end
	
	local flat,tAward = Probabil_RandomAward(tMonsterReward,sItemType)
	local nItemId = tAward[1]["tAward"][1]["Item_1"]

	-- --1500气力限量
	-- if nItemId == 3304331 then
		-- nGlobalId = tNoGiftMonster_Global[nItemId]["Global"]
		-- nPos = tNoGiftMonster_Global[nItemId]["Pos"]
		-- nLimit = tNoGiftMonster_Global[nItemId]["Limit"]
		-- if Get_SysDynaGlobalData(nGlobalId,nPos) >= nLimit then 
			-- return
		-- end
	-- end

	for i = 1 ,nTimeValue do
		Monster_SysDropItem(nItemId)
	end
	Sys_SaveActionFestivalLog(string.format(tNoGiftMonster_Log["All"],Get_MonsterType(),nItemId,nTimeValue))
	User_TalkChannel2005(string.format(tNoGiftMonster_Text["AllTips"],Get_ItemtypeName(nItemId)))
	-- --限量
	-- if sItemType == "Fragment" or nItemId == 3304331 then
		-- local nValue = Get_SysDynaGlobalData(nGlobalId,nPos)
		-- Sys_SetSynaGlobalData(nGlobalId,nPos,nValue+nTimeValue)
		-- Sys_SaveActionFestivalLog(string.format(tNoGiftMonster_Log["AllLimit"],nMonsterId,nItemId,nTimeValue))
	-- end

end

-- 第一片区赤炼石掉落改玄灵秘录
function NoGiftMonster_FirstAreaStone(nMonsterType,nItemId)
	if (nMonsterType >=4833 and nMonsterType<=4837) or (nMonsterType >=4880 and nMonsterType<=4881) then
		if nItemId >= 3321034 and nItemId <= 3321036 then
		-- 玄灵秘录
			nItemId = 723341
		end
	end
	return nItemId
end

--大小爆掉落
function NoGiftMonster_BoomTimesDrop(sBoomType,nMonsterId)
	local nMonsterType = Get_MonsterType()
	
	--第一种
	local nOneTime = tNoGiftMonster_Cont[sBoomType][1]
	for i = 1,nOneTime do
		local flat,tAward = Probabil_RandomAward(tNoGiftMonster_Reward["Reward"],1)
		local nItemId = tAward[1]["tAward"][1]["Item_1"]
		if type(nItemId) == "string" then
			NoGiftMonster_DropItem(nItemId,nMonsterId)
	--龙珠额外处理
		elseif nItemId == tNoGiftMonster_Cont["Dragon"] then
			NoGiftMonster_DropDragonLimit(nItemId,1)
		else
			nItemId = NoGiftMonster_FirstAreaStone(nMonsterType,nItemId)
			Monster_SysDropItem(nItemId)
			Sys_SaveActionFestivalLog(string.format(tNoGiftMonster_Log["AllOne"],nMonsterType,nItemId))
			User_TalkChannel2005(string.format(tNoGiftMonster_Text["AllTips"],Get_ItemtypeName(nItemId)))
		end
	end
	
	--第二种
	local nSecTime = tNoGiftMonster_Cont[sBoomType][2]
	local flat_1,tAward_1 = Probabil_RandomAward(tNoGiftMonster_Reward["Reward"],2)
	local nItemType = tAward_1[1]["tAward"][1]["Item_1"]
	if type(nItemType) == "string" then
		if nItemType == "Money" then
			NoGiftMonster_DropMoney(nSecTime)
		else
			--走子表掉落
			NoGiftMonster_DropItem(nItemType,nMonsterId,nSecTime)
		end
	elseif nItemType == tNoGiftMonster_Cont["Dragon"] then
		NoGiftMonster_DropDragonLimit(nItemType,2,nSecTime,nMonsterId)
	else
		nItemType = NoGiftMonster_FirstAreaStone(nMonsterType,nItemType)
		for j = 1,nSecTime do
			Monster_SysDropItem(nItemType)
		end
		Sys_SaveActionFestivalLog(string.format(tNoGiftMonster_Log["All"],nMonsterType,nItemType,nSecTime))
		User_TalkChannel2005(string.format(tNoGiftMonster_Text["AllTips"],Get_ItemtypeName(nItemType)))
	end
	local sContent=string.format(tNoGiftMonster_Text["System"][sBoomType],Get_UserName(),Get_MonsterName())
	--大小爆提示
	if sBoomType == "Small" then
		local nMapId = Get_UserMapId()
		Map_SendBroadcastMsg(nMapId,sContent)
	elseif sBoomType == "More" then
		Sys_SystemBroadcast(sContent)
		Sys_TalkBroadcast(sContent)
	end
end

--龙珠限量处理
function NoGiftMonster_DropDragonLimit(nItemId,Index,nSecTime,nMonsterId)
	local nTimes = nSecTime or 1
	local nMonsterId = Get_MonsterType()
	local nGlobalId = tNoGiftMonster_Global[nItemId][Index]["Global"]
	local nPos = tNoGiftMonster_Global[nItemId][Index]["Pos"]
	local nLimit =tNoGiftMonster_Global[nItemId][Index]["Limit"]
	local nNowValue = Get_SysDynaGlobalData(nGlobalId,nPos)
	--达到限量
	if Get_SysDynaGlobalData(nGlobalId,nPos) >= nLimit then
		local nItemtypeId = tNoGiftMonster_Global[nItemId][Index]["ItemId"]
		for i= 1,nTimes do
			Monster_SysDropItem(nItemtypeId)
		end
		Sys_SaveActionFestivalLog(string.format(tNoGiftMonster_Log[nItemId][Index],nMonsterId,nItemtypeId,nTimes))
		User_TalkChannel2005(string.format(tNoGiftMonster_Text["AllTips"],Get_ItemtypeName(nItemtypeId)))
	else
		for i= 1,nTimes do
			Monster_SysDropItem(nItemId)
		end
		Sys_SetSynaGlobalData(nGlobalId,nPos,nNowValue+1)
		Sys_SaveActionFestivalLog(string.format(tNoGiftMonster_Log["AllLimit"],nMonsterId,nItemId,nTimes))
		User_TalkChannel2005(string.format(tNoGiftMonster_Text["AllTips"],Get_ItemtypeName(nItemId)))
	end
end

--银两掉落
function NoGiftMonster_DropMoney(nSecTime)
	local nMonsterLevel =Get_MonsterLevel()
	local nValue = math.modf(nMonsterLevel/10)
	local nAddMoney = tNoGiftMonster_Cont["Money"]["AddValue"]
	local nMoney = tNoGiftMonster_Cont["Money"]["Value"]
	if nValue > 0 then
		nMoney = tNoGiftMonster_Cont["Money"]["Value"] + nAddMoney * (nValue-1)
	end
	--循环数量
	for i =1 ,nSecTime do
		Monster_SysDropMoney(nMoney)
	end
	local sMoneyText = string.format(tNoGiftMonster_Text["Money"],nSecTime*nMoney)
	User_TalkChannel2005(string.format(tNoGiftMonster_Text["AllTips"],sMoneyText))
end

--boss伤害排行榜
function NoGiftMonster_KillHurtRank(nServerId,nUserId,nRank,nDmg,nMonsterId)
	local nRankTotal = tNoGiftMonster_Cont["Rank"]
	local nExistDay =tNoGiftMonster_Mail[nMonsterId]["ExistDay"]
	local sMonsterName = tNoGiftMonster_Text["BossName"][nMonsterId]
	local sSender =tNoGiftMonster_Text["Boss"]["Rank"]["Sender"]
	local sTitle = string.format(tNoGiftMonster_Text["Boss"]["Rank"]["Title"],sMonsterName)
	
	for i=1,nRankTotal do
		if i == nRank then
			local nActionId = tNoGiftMonster_Mail[nMonsterId]["ActionId"][nRank]
			local sContent = string.format(tNoGiftMonster_Text["Boss"]["Rank"]["Content"],sMonsterName,nRank)
			Sys_SendMail(nUserId,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent,nServerId)
		end
	end
end

--boss伤害参与奖
function NoGiftMonster_KillHurtAll(nServerId,nUserId,nRank,nDmg,nMonsterId)
	-- 发邮件
	local nActionId = tNoGiftMonster_Mail[nMonsterId]["ActionAll"]
	local sMonsterName = tNoGiftMonster_Text["BossName"][nMonsterId]
	local nExistDay = tNoGiftMonster_Mail[nMonsterId]["ExistDay"]
	local sSender = tNoGiftMonster_Text["Boss"]["Join"]["Sender"]
	local sTitle = string.format(tNoGiftMonster_Text["Boss"]["Join"]["Title"],sMonsterName)
	local sContent = string.format(tNoGiftMonster_Text["Boss"]["Join"]["Content"],sMonsterName)
	Sys_SendMail(nUserId,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent,nServerId)
end

--判断是否大boss
function NoGiftMonster_ChkBigBoss(nMonsterId)
	for i,v in ipairs(tNoGiftMonster_MonsterId["BigBoss"]) do
		if nMonsterId == v then
			return true
		end
	end
	return false
end

--判断是否2转
function NoGiftMonster_ChkUserMete()
	--未2转
	local nMete = tNoGiftMonster_Cont["Metempsychosis"]
	if Get_UserMetempsychosis() < nMete then
		return false
	end
	return true
end


--2转道具使用
function NoGiftMonster_CallMonster(nItemId)
	local nItemNum = tNoGiftMonster_ItemAward[nItemId]["ItemNum"]
	--数量不足
	if not Item_ChkMulItem(nItemId,nItemId,nItemNum) then
		User_TalkChannel2005(tNoGiftMonster_ItemAward[nItemId]["NoItem"])
		return
	end
	
	local nMapId = Get_UserMapId()
	local nMonsterId = tNoGiftMonster_ItemAward[nItemId]["Monster"]
	local bCall = false
	--只能在敦煌和地宫召唤
	-- for i,v in ipairs(tNoGiftMonster_Cont["Underground"]) do
		-- if nMapId == v then
			-- bCall = true
			-- break
		-- end
	-- end
	
	--只能在敦煌使用
	if nMapId ~= tNoGiftMonster_Cont["Underground"] then
		Sys_MsgBox(string.format(tNoGiftMonster_Text["Pass"],tNoGiftMonster_Text["BossName"][nMonsterId]))
		return
	end
	--碧玉龙鳞
	if nItemId == tNoGiftMonster_Cont["LastItem"] then
		--地图上已经存在5只
		if Get_SysTempData(1,nMapId,nMonsterId) >= tNoGiftMonster_Cont["MonsterNum"] then
			Sys_MsgBox(tNoGiftMonster_Text[nItemId]["ExistNum"])
			return
		end
		--距离上一次召唤不足5分钟
		local nEventType = tNoGiftMonster_ItemAward[nItemId]["Stc"]["EventType"]
		local nDataType = tNoGiftMonster_ItemAward[nItemId]["Stc"]["DataType"]
		
		if Task_ChkStcValue(nEventType,nDataType,">=",1) then
			if not Task_StcInterval(nEventType,nDataType,5,1) then
				Sys_MsgBox(tNoGiftMonster_Text[nItemId]["Minutes"])
				return
			end
		end
		
		if Item_ChkMulItem(nItemId,nItemId,nItemNum) then
			local nGenId = tNoGiftMonster_ItemAward[nItemId]["GenId"]
			local nRange = tNoGiftMonster_Cont["Range"]
			local nCellx = Get_UserPositionX()+math.random(-nRange,nRange)
			local nCelly = Get_UserPositionY()+math.random(-nRange,nRange)
			if Monster_AddAndCount(nMapId,nCellx,nCelly,nGenId,nMonsterId) then 
				Sys_SaveActionFestivalLog(string.format(tNoGiftMonster_Log["All"],nMonsterId,nItemId,nItemNum))
				User_TalkChannel2005(tNoGiftMonster_ItemAward[nItemId]["Talk"])
				Task_SetStatistic(nEventType,nDataType,1,1,nUserId)
				Task_SetStcTimestamp(nEventType,nDataType,0)
			else 
				User_TalkChannel2005(tNoGiftMonster_Text["fail"])
			end 
		end
		return
	end
	--刷怪
	if Item_ChkMulItem(nItemId,nItemId,nItemNum) and Item_DelMulItem(nItemId,nItemId,nItemNum) then
		local nGenId = tNoGiftMonster_ItemAward[nItemId]["GenId"]
		local nRange = tNoGiftMonster_Cont["MonsterRange"]
		local nCellx = Get_UserPositionX()+math.random(-nRange,nRange)
		local nCelly = Get_UserPositionY()+math.random(-nRange,nRange)
		if Monster_AddMonster(nMapId,nCellx,nCelly,nGenId,nMonsterId) then 
			Sys_SaveActionFestivalLog(string.format(tNoGiftMonster_Log["All"],nMonsterId,nItemId,nItemNum))
			User_TalkChannel2005(tNoGiftMonster_ItemAward[nItemId]["Talk"])
		else 
			-- 返回物品数据重写
			tNoGiftMonster_FailAward["RewardItem"][1]["Id"] = nItemId
			tNoGiftMonster_FailAward["RewardItem"][1]["Attr"] = "0 ".. nItemNum
			RewardTemplate_UseItemAndMsg(tNoGiftMonster_FailAward)
			Sys_SaveActionFestivalLog(string.format(tNoGiftMonster_Log["fail"],nMonsterId,nItemId,nItemNum))
			User_TalkChannel2005(tNoGiftMonster_Text["fail"])
		end 
	end
end



--召唤兽死亡
function NoGiftMonster_DropMeteItem(nMonsterId)
	local nMapId = Get_UserMapId()
	Monster_Death(nMonsterId,nMapId)
	local nUserId = Get_UserId()
	local nSpace = tNoGiftMonster_Cont["Space"]
	--如果是最后一层boss
	if nMonsterId == tNoGiftMonster_Cont["MeteBoss"] then
		local nItemId = tNoGiftMonster_Cont["LastItem"]
		local nItemNum = tNoGiftMonster_ItemAward[nItemId]["ItemNum"]
		if not Item_ChkMulItem(nItemId,nItemId,nItemNum) or (not Item_DelMulItem(nItemId,nItemId,nItemNum)) then
			User_TalkChannel2005(tNoGiftMonster_Text[nItemId]["NoItemNum"])
			return
		end
	end

	if User_CheckLeftSpace(nSpace) then
		RewardTemplate_UseItemAndMsg(tNoGiftMonster_Drop[nMonsterId])
	else
		local sTitle = tNoGiftMonster_Text["Title"]
		local sSender = tNoGiftMonster_Text["Sender"]
		local sContent = string.format(tNoGiftMonster_Text["Content"],Get_MonsterName())
		
		local nExistDay = tNoGiftMonster_Mail["Mail"]["ExistDay"]
		local nActionId = tNoGiftMonster_Mail["Mail"]["ActionId"][nMonsterId]
		
		Sys_SendMail(nUserId,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent)
	end
end

--进入地宫
function NoGiftMonster_EnterMap(nItemId)
	local nNpcId = Get_NpcId()
	local nStwitchId = tNoGiftMonster_PassData[nItemId]["Switch"]
	--没有通行证
	if not Item_ChkItem(nItemId) and not Item_ChkItem(nStwitchId) then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	local nMapId = tNoGiftMonster_PassData[nItemId]["MapId"]
	local nCellx = tNoGiftMonster_PassData[nItemId]["Cellx"]
	local nCelly = tNoGiftMonster_PassData[nItemId]["Celly"]
	--存在
	if Item_ChkItem(nStwitchId) then
		User_ChgMap(nMapId,nCellx,nCelly,1)
		NewQuestAreaBingfeng1_EnterMap(nItemId)
		if nItemId == 3310802 then
			NewQuestAreaBingfeng2_Enter2th()
		end
		
		return
	end
	
	--给激活时效的物品
	if Item_ChkItem(nItemId) then
		RewardTemplate_UseItem(tNoGiftMonster_PassData[nItemId])
		User_ChgMap(nMapId,nCellx,nCelly,1)
		NewQuestAreaBingfeng1_EnterMap(nItemId)
		if nItemId == 3310802 then
			NewQuestAreaBingfeng2_Enter2th()
		end
	end
end

--读条操作
function NoGiftMonster_SoulPacktExplore(nItemId,nItemMonopoly)
	local nUserId = Get_UserId()
	local nSecs = tNoGiftMonster_Cont["Seconds"]
	local nActionId = tNoGiftMonster_Cont["Action"]
	local sFunc = string.format("</F>NoGiftMonster_UseSoulPack</N>%d</N>%d</N>%d",nItemId,nItemMonopoly,nUserId)
	User_SetExplore(nSecs,tNoGiftMonster_Text["Reading"],nActionId,sFunc,nil,nUserId)
end

--神魂包使用
function NoGiftMonster_UseSoulPack(nItemId,nItemMonopoly,nUserId)
	if Item_ChkItem(nItemId,nItemMonopoly,0,nUserId) and Item_DelItem(nItemId,nItemMonopoly,0,nUserId) then
		local sAttr = tNoGiftMonster_ItemAward[nItemId]["Attr"]
		local sTip = tNoGiftMonster_Text["SoulPack"]
		if nItemMonopoly == 2 then
			sAttr = tNoGiftMonster_ItemAward[nItemId]["NewAttr"]
			sTip = tNoGiftMonster_Text["NewSoulPack"]
		end
		local nValue = math.random(1,#tNoGiftMonster_ItemAward[nItemId]["RewardId"])
		local nAddItem = tNoGiftMonster_ItemAward[nItemId]["RewardId"][nValue]
		Item_AddNewItemAndMsg(nAddItem,sAttr,nUserId)
		Sys_MsgBox(string.format(sTip,Get_ItemtypeName(nAddItem)),"NULL","NULL",nUserId)
	end
end

--通行证，自动寻路
function NoGiftMonster_GotoNpc(nItemId)
	local nUserMap = Get_UserMapId()
	local nNpcId = tNoGiftMonster_PassData[nItemId]["NpcId"]
	local nNpcMap = Get_NpcMapID(nNpcId)
	if nUserMap == nNpcMap then
		NpcPosition_PathFind(nNpcId)
	else
		local nCellx = Get_NpcPositionX(nNpcId)
		local nCelly = Get_NpcPositionY(nNpcId)
		local sMapName = tNoGiftMonster_Text["MapName"][nNpcMap]
		local sText = tNoGiftMonster_Text["FindNpc"]
		--二转金牌
		if nItemId == tNoGiftMonster_Cont["MeteItem"] then
			sText = tNoGiftMonster_Text["FindMete"]
		end
		User_TalkChannel2005(string.format(sText,sMapName,nCellx,nCelly,Get_NpcName(nNpcId)))
	end
end

--每小时清理气力值掩码
function NoGiftMonster_ClearGlobal()
	local nGlobalId = tNoGiftMonster_Global[3304331]["Global"]
	local nPos = tNoGiftMonster_Global[3304331]["Pos"]
	Sys_SetSynaGlobalData(nGlobalId,nPos,0)
end

--每15分钟清第一种奖池的龙珠限量
function NoGiftMonster_ClearDragon()
	local nGlobalId = tNoGiftMonster_Global[1088000][1]["Global"]
	local nPos = tNoGiftMonster_Global[1088000][1]["Pos"]
	Sys_SetSynaGlobalData(nGlobalId,nPos,0)
end

--每天0点清
function NoGiftMonster_ClearAllGlobal()
	local nGlobalId = tNoGiftMonster_Global["Fragment"]["Global"]
	Sys_ResetAllSynaGlobalData(nGlobalId)
	--随机翻倍时间
	--NoGiftMonster_RandomDoubleTime()
end

--每天0点随机翻倍时间
function NoGiftMonster_RandomDoubleTime()
	local flat,tAward = Probabil_RandomAward(tNoGiftMonster_DoubleRate,"Double")
	local nFirst = tAward[1]["tAward"][1]["Item_1"]
	local nEnd = nFirst + 1
	local sDoubleTime=nFirst ..":00 "..nEnd..":00"
	
	if nFirst == 23 then
		sDoubleTime = nFirst ..":00 "..nFirst..":59"
	end
	

	--动态表
	local nGlobalId = tNoGiftMonster_Global["Double"]["Global"]
	local nPos = tNoGiftMonster_Global["Double"]["Pos"]
	Sys_SetSynaGlobalDataStr(nGlobalId,nPos,sDoubleTime)
end

--每天19点为固定时间
function NoGiftMonster_FixedDouble()
	local sDoubleTime =tNoGiftMonster_Cont["DoubleTime"]
	local sBeginTime = string.sub(sDoubleTime,1,5)
	local sEndTime = string.sub(sDoubleTime,7,11)
	Sys_SystemBroadcast(string.format(tNoGiftMonster_Text["DoubleTime"],sBeginTime,sEndTime))
end

--随机翻倍时间播报
function NoGiftMonster_RandomBroast()
	local nGlobalId = tNoGiftMonster_Global["Double"]["Global"]
	local nPos = tNoGiftMonster_Global["Double"]["Pos"]
	local sDoubleTime = Get_SysDynaGlobalDataStr(nGlobalId,nPos)
	
	if sDoubleTime == "" then
		return
	end
	
	local sBeginTime = string.sub(sDoubleTime,1,5)
	local sEndTime = string.sub(sDoubleTime,7,11)

	if tonumber(os.date("%H")) == tonumber(string.sub(sDoubleTime,1,2)) then
		Sys_SystemBroadcast(string.format(tNoGiftMonster_Text["DoubleTime"],sBeginTime,sEndTime))
	end
end

--天机道长
function NoGiftMonster_TwoRebirth()
	local nNpcId=tNoGiftMonster_Cont["Tianji"]
	LinkNpcGossipFunc_New(nNpcId,"10-1")
end


--自动寻路
function NoGiftMonster_GotoArea(nIndex)
	local nMapId = tNoGiftMonster_AreaData[nIndex]["MapId"]
	local nCellx = tNoGiftMonster_AreaData[nIndex]["Cellx"]
	local nCelly = tNoGiftMonster_AreaData[nIndex]["Celly"]
	local nNpcId = 0
	if tNoGiftMonster_AreaData[nIndex]["NpcId"] ~= nil then
		nNpcId=tNoGiftMonster_AreaData[nIndex]["NpcId"]
	end
	Sys_GotoSomeWhere(nCellx,nCelly,nMapId,0)
end
-----------------------------------模块部分配置--------------------------------------
--npc部分
--敦煌地宫守将
tNpcFace[1411]= 91
tNpcGossip[23270]= tNpcGossip[23270] or DefaultNpc:new{}
tNpcGossip[23270]["OptionHidden"] = 1
tNpcGossip[23270]["DialogueText"] = tNoGiftMonster_Text[23270]

tNpcGossip[23270]["Text1-1"] = {111,112,113,114,115,116,117}
tNpcGossip[23270]["tOption1-1"] = {111,112}
tNpcGossip[23270]["OptionFunc111"] = "NoGiftMonster_EnterMap</N>3310800"
tNpcGossip[23270]["OptionPoint112"]="3-1"

tNpcGossip[23270]["Text2-1"] = {211,212}
tNpcGossip[23270]["tOption2-1"] = {211}

tNpcGossip[23270]["Text3-1"] = {311,312,313,314,315,316,317}
tNpcGossip[23270]["tOption3-1"] = {311}

--冰封地穴一层传送使
tNpcFace[1412]= 27
tNpcGossip[23271]= tNpcGossip[23271] or DefaultNpc:new{}
tNpcGossip[23271]["OptionHidden"] = 1
tNpcGossip[23271]["DialogueText"] = tNoGiftMonster_Text[23271]

tNpcGossip[23271]["Text1-1"] = {111,112,113,114,115,116,117}
tNpcGossip[23271]["tOption1-1"] = {111,112}
tNpcGossip[23271]["OptionFunc111"] = "NoGiftMonster_EnterMap</N>3310801"

tNpcGossip[23271]["Text2-1"] = {211,212}
tNpcGossip[23271]["tOption2-1"] = {211}

--冰封地穴二层传送使
tNpcFace[1413]= 85
tNpcGossip[23272]= tNpcGossip[23272] or DefaultNpc:new{}
tNpcGossip[23272]["OptionHidden"] = 1
tNpcGossip[23272]["DialogueText"] = tNoGiftMonster_Text[23272]

tNpcGossip[23272]["Text1-1"] = {111,112,113,114,115,116,117}
tNpcGossip[23272]["tOption1-1"] = {111,112}
tNpcGossip[23272]["OptionFunc111"] = "NoGiftMonster_EnterMap</N>3310802"

tNpcGossip[23272]["Text2-1"] = {211,212}
tNpcGossip[23272]["tOption2-1"] = {211}

--冰封地穴三层传送使
tNpcFace[1414]= 43
tNpcGossip[23273]= tNpcGossip[23273] or DefaultNpc:new{}
tNpcGossip[23273]["OptionHidden"] = 1
tNpcGossip[23273]["DialogueText"] = tNoGiftMonster_Text[23273]

tNpcGossip[23273]["Text1-1"] = {111,112,113,114,115,116,117}
tNpcGossip[23273]["tOption1-1"] = {111,112}
tNpcGossip[23273]["OptionFunc111"] = "NoGiftMonster_EnterMap</N>3310803"

tNpcGossip[23273]["Text2-1"] = {211,212}
tNpcGossip[23273]["tOption2-1"] = {211}

-- --天机道长
-- tNpcGossip[300500]["Text10-1"] ={1011,1012,1013,1014,1015,1016,1017}
-- tNpcGossip[300500]["tOption10-1"] = {10111}
-- tNpcGossip[300500]["Text1011"] = tNoGiftMonster_Text[23270]["Text311"]
-- tNpcGossip[300500]["Text1012"] = tNoGiftMonster_Text[23270]["Text312"]
-- tNpcGossip[300500]["Text1013"] = tNoGiftMonster_Text[23270]["Text313"]
-- tNpcGossip[300500]["Text1014"] = tNoGiftMonster_Text[23270]["Text314"]
-- tNpcGossip[300500]["Text1015"] = tNoGiftMonster_Text[23270]["Text315"]
-- tNpcGossip[300500]["Text1016"] = tNoGiftMonster_Text[23270]["Text316"]
-- tNpcGossip[300500]["Text1017"] = tNoGiftMonster_Text[23270]["Text317"]
-- tNpcGossip[300500]["Option10111"] =tNoGiftMonster_Text[23270]["Option311"]


--除妖夺宝
tNpcFace[1420]= 30
tNpcGossip[23507]= tNpcGossip[23507] or DefaultNpc:new{}
tNpcGossip[23507]["OptionHidden"] = 1
tNpcGossip[23507]["DialogueText"] = tNoGiftMonster_Text[23507]


tNpcGossip[23507]["Text1-1"] = {111,112,113,114,115,116,117,118,119,1110,1111,1112,1113,1114}
tNpcGossip[23507]["tOption1-1"] = {111,112,113,114,115,116}
tNpcGossip[23507]["OptionFunc111"] = "NoGiftMonster_GotoArea</N>1"
tNpcGossip[23507]["OptionFunc112"] = "NoGiftMonster_GotoArea</N>2"
tNpcGossip[23507]["OptionFunc113"] = "NoGiftMonster_GotoArea</N>3"
tNpcGossip[23507]["OptionFunc114"] = "NoGiftMonster_GotoArea</N>4"
tNpcGossip[23507]["OptionFunc115"] = "NoGiftMonster_GotoArea</N>5"
tNpcGossip[23507]["OptionFunc116"] = "NoGiftMonster_GotoArea</N>6"





--物品部分配置
--2转道具
tItem[3310805] = tItem[3310805] or {}
tItem[3310805]["Function"] = function(nItemId,sItemName)
	NoGiftMonster_CallMonster(nItemId)
end
tItem[3310806] = tItem[3310805]
--tItem[3310807] = tItem[3310805]

tItemFace[3310807] = 1933

tItem[3310807] = tItem[3310807] or {}
tItem[3310807]["DialogueText"] = tNoGiftMonster_Text[3310807]

tItem[3310807]["Text1-1"] = {111}
tItem[3310807]["tOption1-1"] = {111,112}
tItem[3310807]["OptionFunc111"] = "NoGiftMonster_CallMonster</N>3310807"


--碎片
tItem[3310823] = tItem[3310823] or {}
tItem[3310823]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItem(tNoGiftMonster_ItemAward[nItemId])
end
tItem[3310824] = tItem[3310823]
tItem[3310825] = tItem[3310823]
tItem[3310826] = tItem[3310823]
tItem[3310827] = tItem[3310823]

--神魂包
tItem[3310809] = tItem[3310809] or {}
tItem[3310809]["Function"] = function(nItemId,sItemName)
	-- 赠品继承
	local nMonopoly = Get_ItemMonopoly()
	local nItemMonopoly = 0
	if nMonopoly == 3 then
		nItemMonopoly = 2
	end
	NoGiftMonster_SoulPacktExplore(nItemId,nItemMonopoly)
end
tItem[3310810] = tItem[3310809]
tItem[3310811] = tItem[3310809]
tItem[3310813] = tItem[3310809]
tItem[3310814] = tItem[3310809]
tItem[3310816] = tItem[3310809]
tItem[3310817] = tItem[3310809]
tItem[3310819] = tItem[3310809]
tItem[3310820] = tItem[3310809]
tItem[3310821] = tItem[3310809]
tItem[3310822] = tItem[3310809]

tItem[3310995] = tItem[3310995] or {}
tItem[3310995]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tNoGiftMonster_ItemAward[nItemId])
end
tItem[3310996] = tItem[3310995]
tItem[3310997] = tItem[3310995]
tItem[3310998] = tItem[3310995]

--通行证
tItem[3310800] = tItem[3310800] or {}
tItem[3310800]["Function"] = function(nItemId,sItemName)
	NoGiftMonster_GotoNpc(nItemId)
end
tItem[3310801] = tItem[3310800]
tItem[3310802] = tItem[3310800]
tItem[3310803] = tItem[3310800]
tItem[3310999] = tItem[3310800]
tItem[3311000] = tItem[3310800]
tItem[3311001] = tItem[3310800]
tItem[3311002] = tItem[3310800]
tItem[3310808] = tItem[3310800]
tItem[3310804] = tItem[3310800]


------怪物掉落-----
local tNoGiftMonster_Monst={}
	--小怪
	tNoGiftMonster_Monst[1] = {}
	tNoGiftMonster_Monst[1]["Function"] = NoGiftMonster_KillMonster
	tNoGiftMonster_Monst[1]["MonsterId"]={4833,4834,4835,4836,4838,4839,4840,4841,4868,4842,4843,4844,4845,4869,4870,4846,4847,4848,4849,4871,
	4850,4851,4852,4853,4854,4872,4874,4855,4856,4857,4858,4873,4875,4876,4877,4878,4879,4859,4860,4862,4863,4865,4867}
	table.insert(tMonsterDrop_AreaLoad_NoGift,tNoGiftMonster_Monst[1])
	
	--精英怪
	tNoGiftMonster_Monst[2] = {}
	tNoGiftMonster_Monst[2]["Function"] = NoGiftMonster_KillElite
	tNoGiftMonster_Monst[2]["MonsterId"] = {4880,4881,4883,4884,4885,4886,4887,4888,4889,4890,4891,4892,4893,4894,4895,4896,4897}
	table.insert(tMonsterDrop_AreaLoad_NoGift,tNoGiftMonster_Monst[2])
	
	--boss
	tNoGiftMonster_Monst[3] = {}
	tNoGiftMonster_Monst[3]["Function"] = NoGiftMonster_KillBoss
	tNoGiftMonster_Monst[3]["MonsterId"] = {4898,4899,4900,4901,4902,4903,4904,4905,4906,4907,4908,4909,4910}
	table.insert(tMonsterDrop_AreaLoad_NoGift,tNoGiftMonster_Monst[3])
	
	--马贼
	tNoGiftMonster_Monst[4] = {}
	tNoGiftMonster_Monst[4]["Function"] = NoGiftMonster_KillElite
	tNoGiftMonster_Monst[4]["MonsterId"] = {4882}
	table.insert(tMonsterDrop_AreaLoad_NoGift,tNoGiftMonster_Monst[4])
	
	--梦灵兽、青龙幻影、青龙神兽
	tNoGiftMonster_Monst[5] = {}
	tNoGiftMonster_Monst[5]["Function"] = NoGiftMonster_DropMeteItem
	tNoGiftMonster_Monst[5]["MonsterId"] = {3504,3505,3506}
	table.insert(tMonsterDrop_AreaLoad_NoGift,tNoGiftMonster_Monst[5])
	
	--boss伤害排行榜
	tBossDamageBonus[4907] = tBossDamageBonus[4907] or {}
	tBossDamageBonus[4907]["tFunction"] = tBossDamageBonus[4907]["tFunction"] or {}
	table.insert(tBossDamageBonus[4907]["tFunction"],NoGiftMonster_KillHurtRank)
	
	tBossDamageBonus[4908] = tBossDamageBonus[4908] or {}
	tBossDamageBonus[4908]["tFunction"] = tBossDamageBonus[4908]["tFunction"] or {}
	table.insert(tBossDamageBonus[4908]["tFunction"],NoGiftMonster_KillHurtRank)
	
	tBossDamageBonus[4909] = tBossDamageBonus[4909] or {}
	tBossDamageBonus[4909]["tFunction"] = tBossDamageBonus[4909]["tFunction"] or {}
	table.insert(tBossDamageBonus[4909]["tFunction"],NoGiftMonster_KillHurtRank)
	
	tBossDamageBonus[4910] = tBossDamageBonus[4910] or {}
	tBossDamageBonus[4910]["tFunction"] = tBossDamageBonus[4910]["tFunction"] or {}
	table.insert(tBossDamageBonus[4910]["tFunction"],NoGiftMonster_KillHurtRank)
	
	--boss伤害参与
	tBossRewardEnd[4907] = tBossRewardEnd[4907] or {}
	tBossRewardEnd[4907]["tFunction"] = tBossRewardEnd[4907]["tFunction"] or {}
	table.insert(tBossRewardEnd[4907]["tFunction"],NoGiftMonster_KillHurtAll)
	
	tBossRewardEnd[4908] = tBossRewardEnd[4908] or {}
	tBossRewardEnd[4908]["tFunction"] = tBossRewardEnd[4908]["tFunction"] or {}
	table.insert(tBossRewardEnd[4908]["tFunction"],NoGiftMonster_KillHurtAll)
	
	tBossRewardEnd[4909] = tBossRewardEnd[4909] or {}
	tBossRewardEnd[4909]["tFunction"] = tBossRewardEnd[4909]["tFunction"] or {}
	table.insert(tBossRewardEnd[4909]["tFunction"],NoGiftMonster_KillHurtAll)
	
	tBossRewardEnd[4910] = tBossRewardEnd[4910] or {}
	tBossRewardEnd[4910]["tFunction"] = tBossRewardEnd[4910]["tFunction"] or {}
	table.insert(tBossRewardEnd[4910]["tFunction"],NoGiftMonster_KillHurtAll)
-------时间自检
local tNoGiftMonster_ClearGlobal= {}
	--每小时清理气力值掩码
	tNoGiftMonster_ClearGlobal[1] = {}
	tNoGiftMonster_ClearGlobal[1]["Type"] = 2
	tNoGiftMonster_ClearGlobal[1]["TimeType"] = 5
	tNoGiftMonster_ClearGlobal[1]["Time"] = "00 00"
	tNoGiftMonster_ClearGlobal[1]["Func"] = NoGiftMonster_ClearGlobal
	
	--每天0点清理史诗武器碎片、第二种奖池的龙珠限量
	tNoGiftMonster_ClearGlobal[2] = {}
	tNoGiftMonster_ClearGlobal[2]["Type"] = 2
	tNoGiftMonster_ClearGlobal[2]["TimeType"] = 4
	tNoGiftMonster_ClearGlobal[2]["Time"] = "00:00 00:00"
	tNoGiftMonster_ClearGlobal[2]["Func"] = NoGiftMonster_ClearAllGlobal
	
	--每20分钟清第一种奖池的龙珠限量
	tNoGiftMonster_ClearGlobal[3] = {}
	tNoGiftMonster_ClearGlobal[3]["Type"] = 2
	tNoGiftMonster_ClearGlobal[3]["TimeType"] = 5
	tNoGiftMonster_ClearGlobal[3]["Multiple"] = {}
	tNoGiftMonster_ClearGlobal[3]["Multiple"][1] = "00 00"
	tNoGiftMonster_ClearGlobal[3]["Multiple"][2] = "20 20"
	tNoGiftMonster_ClearGlobal[3]["Multiple"][3] = "40 40"
	tNoGiftMonster_ClearGlobal[3]["Func"] = NoGiftMonster_ClearDragon
	
	--每天19点为固定时间
	tNoGiftMonster_ClearGlobal[4] = {}
	tNoGiftMonster_ClearGlobal[4]["Type"] = 6
	tNoGiftMonster_ClearGlobal[4]["TimeType"] = 4
	tNoGiftMonster_ClearGlobal[4]["Time"] = "19:00 19:00"
	tNoGiftMonster_ClearGlobal[4]["Func"] = NoGiftMonster_FixedDouble

	--随机时间
	tNoGiftMonster_ClearGlobal[5] = {}
	tNoGiftMonster_ClearGlobal[5]["Type"] = 6
	tNoGiftMonster_ClearGlobal[5]["TimeType"] = 4
	tNoGiftMonster_ClearGlobal[5]["Multiple"] = {}
	tNoGiftMonster_ClearGlobal[5]["Multiple"][1] ="09:00 09:00"
	tNoGiftMonster_ClearGlobal[5]["Multiple"][2] ="10:00 10:00"
	tNoGiftMonster_ClearGlobal[5]["Multiple"][3] ="11:00 11:00"
	tNoGiftMonster_ClearGlobal[5]["Multiple"][4] ="12:00 12:00"
	tNoGiftMonster_ClearGlobal[5]["Multiple"][5] ="13:00 13:00"
	tNoGiftMonster_ClearGlobal[5]["Multiple"][6] ="14:00 14:00"
	tNoGiftMonster_ClearGlobal[5]["Multiple"][7] ="15:00 15:00"
	tNoGiftMonster_ClearGlobal[5]["Multiple"][8] ="16:00 16:00"
	tNoGiftMonster_ClearGlobal[5]["Multiple"][9] ="17:00 17:00"
	tNoGiftMonster_ClearGlobal[5]["Multiple"][10] ="18:00 18:00"
	tNoGiftMonster_ClearGlobal[5]["Multiple"][11] ="20:00 20:00"
	tNoGiftMonster_ClearGlobal[5]["Multiple"][12] ="21:00 21:00"
	tNoGiftMonster_ClearGlobal[5]["Multiple"][13] ="22:00 22:00"
	tNoGiftMonster_ClearGlobal[5]["Multiple"][14] ="23:00 23:00"
	tNoGiftMonster_ClearGlobal[5]["Func"] = NoGiftMonster_RandomBroast
	
	--table.insert(tSystemTime_InitialData_NoGift,tNoGiftMonster_ClearGlobal[1])
	table.insert(tSystemTime_InitialData_NoGift,tNoGiftMonster_ClearGlobal[2])
	table.insert(tSystemTime_InitialData_NoGift,tNoGiftMonster_ClearGlobal[3])
	table.insert(tSystemTime_InitialData_NoGift,tNoGiftMonster_ClearGlobal[4])
	--table.insert(tSystemTime_InitialData_NoGift,tNoGiftMonster_ClearGlobal[5])

-- 服务器启动触发
tServerStart["tFunction"] = tServerStart["tFunction"] or {}
table.insert(tServerStart["tFunction"],NoGiftMonster_Server)
