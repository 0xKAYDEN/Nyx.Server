------------------------------------------------------------------------------------
--Name：            191011[英文征服][活动脚本]11月感恩宴会厅(11.5-12.2)
--Creator:      蔡颖静
--Created:     2019/10/11
------------------------------------------------------------------------------------
--任务需求：

------------------------------------------------------------------------------------
--logid:12001678
--lua.ini:41556
--mapdoc:宴会厅 10088  九宫格：1005 
----------------------------------表配置部分--------------------------------------------
local tThanksGiving2019Dinner_Data={}

--掩码
tThanksGiving2019Dinner_Data["Stc"]={}
--今天是否跳过舞stc(207,28)
tThanksGiving2019Dinner_Data["Stc"]["DanceEvent"]=207
tThanksGiving2019Dinner_Data["Stc"]["DanceType"]=28

--今天踩火鸡次数stc(207,29)
tThanksGiving2019Dinner_Data["Stc"]["TurkeyEvent"]=207
tThanksGiving2019Dinner_Data["Stc"]["TurkeyType"]=29

--踩火鸡游戏进程stc(207,30)
tThanksGiving2019Dinner_Data["Stc"]["TurkeyProcessEvent"]=207
tThanksGiving2019Dinner_Data["Stc"]["TurkeyProcessType"]=30

--踩正确陷阱数stc(207,31)
tThanksGiving2019Dinner_Data["Stc"]["TrapNumEvent"]=207
tThanksGiving2019Dinner_Data["Stc"]["TrapNumType"]=31

--杀怪数stc(207,32)
tThanksGiving2019Dinner_Data["Stc"]["MonsterEvent"]=207
tThanksGiving2019Dinner_Data["Stc"]["MonsterType"]=32

tThanksGiving2019Dinner_Data["Stc"]["Trap"]={}
tThanksGiving2019Dinner_Data["Stc"]["Trap"]["Event"]=207
tThanksGiving2019Dinner_Data["Stc"]["Trap"]["Type"]={}
tThanksGiving2019Dinner_Data["Stc"]["Trap"]["Type"][2482]=33
tThanksGiving2019Dinner_Data["Stc"]["Trap"]["Type"][2483]=34
tThanksGiving2019Dinner_Data["Stc"]["Trap"]["Type"][2484]=35
tThanksGiving2019Dinner_Data["Stc"]["Trap"]["Type"][2485]=36
tThanksGiving2019Dinner_Data["Stc"]["Trap"]["Type"][2486]=37
tThanksGiving2019Dinner_Data["Stc"]["Trap"]["Type"][2487]=38
tThanksGiving2019Dinner_Data["Stc"]["Trap"]["Type"][2488]=39
tThanksGiving2019Dinner_Data["Stc"]["Trap"]["Type"][2489]=40
tThanksGiving2019Dinner_Data["Stc"]["Trap"]["Type"][2490]=41

--兑换商店
tThanksGiving2019Dinner_Data["ExchangeShop"]=25044

--传送坐标
tThanksGiving2019Dinner_Data["Trans"]={}
tThanksGiving2019Dinner_Data["Trans"][10700]={}
tThanksGiving2019Dinner_Data["Trans"][10700]["PosX"]=128
tThanksGiving2019Dinner_Data["Trans"][10700]["PosY"]=127

tThanksGiving2019Dinner_Data["Trans"][10699]={}
tThanksGiving2019Dinner_Data["Trans"][10699]["PosX"]=52
tThanksGiving2019Dinner_Data["Trans"][10699]["PosY"]=69

tThanksGiving2019Dinner_Data["Trans"][1002]={}
tThanksGiving2019Dinner_Data["Trans"][1002]["PosX"]=343
tThanksGiving2019Dinner_Data["Trans"][1002]["PosY"]=459

tThanksGiving2019Dinner_Data["Trans"][1036]={}
tThanksGiving2019Dinner_Data["Trans"][1036]["PosX"]=188
tThanksGiving2019Dinner_Data["Trans"][1036]["PosY"]=186

tThanksGiving2019Dinner_Data["Loading"]={}
tThanksGiving2019Dinner_Data["Loading"]["Secs"] = 2
tThanksGiving2019Dinner_Data["Loading"]["ActionId"] = 1


-- ===杀怪掉落
-- ===索引: tThanksGiving2019Dinner_Data["MonsterDrop"][1]
-- ===
-- ===
tThanksGiving2019Dinner_Data["MonsterDrop"] = {}
tThanksGiving2019Dinner_Data["MonsterDrop"][1] = {}
tThanksGiving2019Dinner_Data["MonsterDrop"][1]["ItemChanceSum"] = 10000
tThanksGiving2019Dinner_Data["MonsterDrop"][1]["LogId"] = 12001678
-- 感恩节纪念币 - 1%
tThanksGiving2019Dinner_Data["MonsterDrop"][1][1] = {}
tThanksGiving2019Dinner_Data["MonsterDrop"][1][1]["RandomItemChanceType"] = 2
tThanksGiving2019Dinner_Data["MonsterDrop"][1][1]["ItemChance"] = 100
tThanksGiving2019Dinner_Data["MonsterDrop"][1][1]["RewardItem"] = {}
tThanksGiving2019Dinner_Data["MonsterDrop"][1][1]["RewardItem"][1] = {}
tThanksGiving2019Dinner_Data["MonsterDrop"][1][1]["RewardItem"][1]["Id"] = 3326532 --  3326532 【库里没有该物品】, 【表格】感恩节纪念币
tThanksGiving2019Dinner_Data["MonsterDrop"][1][1]["RewardItem"][1]["Attr"] = "0 1" --  3326532 【库里没有该物品】*1
tThanksGiving2019Dinner_Data["MonsterDrop"][1][1]["RewardEffect"] = {}
tThanksGiving2019Dinner_Data["MonsterDrop"][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tThanksGiving2019Dinner_Data["MonsterDrop"][1][1]["RewardEffect"]["Effect"] = "angelwing"
		-- 【stc（199,1）】1天（零点重置）100个
tThanksGiving2019Dinner_Data["MonsterDrop"][1][1]["EventType"] = 207
tThanksGiving2019Dinner_Data["MonsterDrop"][1][1]["DataType"] = 32
tThanksGiving2019Dinner_Data["MonsterDrop"][1][1]["RewardDelay"] = 1
tThanksGiving2019Dinner_Data["MonsterDrop"][1][1]["RewardTimeType"] = 4
tThanksGiving2019Dinner_Data["MonsterDrop"][1][1]["RewardData"] = 100
-- 无 - 99%
tThanksGiving2019Dinner_Data["MonsterDrop"][1][2] = {}
tThanksGiving2019Dinner_Data["MonsterDrop"][1][2]["RandomItemChanceType"] = 2
tThanksGiving2019Dinner_Data["MonsterDrop"][1][2]["ItemChance"] = 9900
tThanksGiving2019Dinner_Data["MonsterDrop"][1][2]["RewardEffect"] = {}
tThanksGiving2019Dinner_Data["MonsterDrop"][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tThanksGiving2019Dinner_Data["MonsterDrop"][1][2]["RewardEffect"]["Effect"] = "angelwing"


tThanksGiving2019Dinner_Data[3326533] = {}
-- ===黄色神纹精粹（赠）*10礼盒
-- ===索引: tThanksGiving2019Dinner_Data[3326533]
-- ===删除: 3326533,1
-- ===
-- ===

--普通服
tThanksGiving2019Dinner_Data[3326533][1] = {}
tThanksGiving2019Dinner_Data[3326533][1]["LogId"] = 12001678
tThanksGiving2019Dinner_Data[3326533][1]["DeleteItem"] = {}
tThanksGiving2019Dinner_Data[3326533][1]["DeleteItem"][1] = {}
tThanksGiving2019Dinner_Data[3326533][1]["DeleteItem"][1]["Id"] = 3326533 -- 【库】 3326533 【库里没有该物品】[属性:]
tThanksGiving2019Dinner_Data[3326533][1]["RewardItem"] = {}
tThanksGiving2019Dinner_Data[3326533][1]["RewardItem"][1] = {}
tThanksGiving2019Dinner_Data[3326533][1]["RewardItem"][1]["Id"] = 4050001 -- YellowRuneEssence[4050001][属性:9][叠加:10000][金币:0], 【表格】黄色神纹精粹（赠）*10
tThanksGiving2019Dinner_Data[3326533][1]["RewardItem"][1]["Attr"] = "0 10 3" -- YellowRuneEssence（赠）*10
tThanksGiving2019Dinner_Data[3326533][1]["RewardEffect"] = {}
tThanksGiving2019Dinner_Data[3326533][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tThanksGiving2019Dinner_Data[3326533][1]["RewardEffect"]["Effect"] = "angelwing"

--激情服
tThanksGiving2019Dinner_Data[3326533][2] = {}
tThanksGiving2019Dinner_Data[3326533][2]["LogId"] = 12001678
tThanksGiving2019Dinner_Data[3326533][2]["DeleteItem"] = {}
tThanksGiving2019Dinner_Data[3326533][2]["DeleteItem"][1] = {}
tThanksGiving2019Dinner_Data[3326533][2]["DeleteItem"][1]["Id"] = 3326533 -- 【库】 3326533 【库里没有该物品】[属性:]
tThanksGiving2019Dinner_Data[3326533][2]["RewardItem"] = {}
tThanksGiving2019Dinner_Data[3326533][2]["RewardItem"][1] = {}
tThanksGiving2019Dinner_Data[3326533][2]["RewardItem"][1]["Id"] = 4050001 -- YellowRuneEssence[4050001][属性:9][叠加:10000][金币:0], 【表格】黄色神纹精粹（赠）*10
tThanksGiving2019Dinner_Data[3326533][2]["RewardItem"][1]["Attr"] = "0 10" -- YellowRuneEssence（赠）*10
tThanksGiving2019Dinner_Data[3326533][2]["RewardEffect"] = {}
tThanksGiving2019Dinner_Data[3326533][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tThanksGiving2019Dinner_Data[3326533][2]["RewardEffect"]["Effect"] = "angelwing"

tThanksGiving2019Dinner_Data[3326534] = {}
-- ===FavoredTrainingPill（赠）*10礼盒
-- ===索引: tThanksGiving2019Dinner_Data[3326534]
-- ===删除: 3326534,1
-- ===
-- ===
--普通服
tThanksGiving2019Dinner_Data[3326534][1] = {}
tThanksGiving2019Dinner_Data[3326534][1]["LogId"] = 12001678
tThanksGiving2019Dinner_Data[3326534][1]["DeleteItem"] = {}
tThanksGiving2019Dinner_Data[3326534][1]["DeleteItem"][1] = {}
tThanksGiving2019Dinner_Data[3326534][1]["DeleteItem"][1]["Id"] = 3326534 -- 【库】 3326534 【库里没有该物品】[属性:]
tThanksGiving2019Dinner_Data[3326534][1]["RewardItem"] = {}
tThanksGiving2019Dinner_Data[3326534][1]["RewardItem"][1] = {}
tThanksGiving2019Dinner_Data[3326534][1]["RewardItem"][1]["Id"] = 3003124 -- FavoredTrainingPill[3003124][属性:0][叠加:10000][金币:0], 【表格】FavoredTrainingPill（赠）*10
tThanksGiving2019Dinner_Data[3326534][1]["RewardItem"][1]["Attr"] = "0 10 3" -- FavoredTrainingPill（赠）*10
tThanksGiving2019Dinner_Data[3326534][1]["RewardEffect"] = {}
tThanksGiving2019Dinner_Data[3326534][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tThanksGiving2019Dinner_Data[3326534][1]["RewardEffect"]["Effect"] = "angelwing"

--激情服
tThanksGiving2019Dinner_Data[3326534][2] = {}
tThanksGiving2019Dinner_Data[3326534][2]["LogId"] = 12001678
tThanksGiving2019Dinner_Data[3326534][2]["DeleteItem"] = {}
tThanksGiving2019Dinner_Data[3326534][2]["DeleteItem"][1] = {}
tThanksGiving2019Dinner_Data[3326534][2]["DeleteItem"][1]["Id"] = 3326534 -- 【库】 3326534 【库里没有该物品】[属性:]
tThanksGiving2019Dinner_Data[3326534][2]["RewardItem"] = {}
tThanksGiving2019Dinner_Data[3326534][2]["RewardItem"][1] = {}
tThanksGiving2019Dinner_Data[3326534][2]["RewardItem"][1]["Id"] = 3003124 -- FavoredTrainingPill[3003124][属性:0][叠加:10000][金币:0], 【表格】FavoredTrainingPill（赠）*10
tThanksGiving2019Dinner_Data[3326534][2]["RewardItem"][1]["Attr"] = "0 10" -- FavoredTrainingPill（赠）*10
tThanksGiving2019Dinner_Data[3326534][2]["RewardEffect"] = {}
tThanksGiving2019Dinner_Data[3326534][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tThanksGiving2019Dinner_Data[3326534][2]["RewardEffect"]["Effect"] = "angelwing"




tThanksGiving2019Dinner_Data[3326535] = {}
-- ===90天时效-FlamingWarrior（赠）礼盒
-- ===索引: tThanksGiving2019Dinner_Data[3326535]
-- ===删除: 3326535,1
-- ===
-- ===
tThanksGiving2019Dinner_Data[3326535]["LogId"] = 12001678
tThanksGiving2019Dinner_Data[3326535]["DeleteItem"] = {}
tThanksGiving2019Dinner_Data[3326535]["DeleteItem"][1] = {}
tThanksGiving2019Dinner_Data[3326535]["DeleteItem"][1]["Id"] = 3326535 -- 【库】 3326535 【库里没有该物品】[属性:]
tThanksGiving2019Dinner_Data[3326535]["RewardItem"] = {}
tThanksGiving2019Dinner_Data[3326535]["RewardItem"][1] = {}
tThanksGiving2019Dinner_Data[3326535]["RewardItem"][1]["Id"] = 195725 -- FlamingWarrior[195725][属性:0][叠加:0][金币:0], 【表格】90天时效-FlamingWarrior
tThanksGiving2019Dinner_Data[3326535]["RewardItem"][1]["Attr"] = "0 1 3 129600 1 0 0 1" -- 90天时效(激活)的1%神佑FlamingWarrior（赠）*1
tThanksGiving2019Dinner_Data[3326535]["RewardEffect"] = {}
tThanksGiving2019Dinner_Data[3326535]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tThanksGiving2019Dinner_Data[3326535]["RewardEffect"]["Effect"] = "angelwing"

tThanksGiving2019Dinner_Data[3326532] = {}
-- ===感恩纪念币
-- ===索引: tThanksGiving2019Dinner_Data[3326532]
-- ===删除: 3326532,1
-- ===
-- ===
tThanksGiving2019Dinner_Data[3326532]["LogId"] = 12001678
tThanksGiving2019Dinner_Data[3326532]["RewardItem"] = {}
tThanksGiving2019Dinner_Data[3326532]["RewardItem"][1] = {}
tThanksGiving2019Dinner_Data[3326532]["RewardItem"][1]["Id"] = 3301454 -- FortuneCoin[3301454][属性:9][叠加:10000][金币:0], 【表格】年运通宝
tThanksGiving2019Dinner_Data[3326532]["RewardItem"][1]["Attr"] = "0 %d" -- FortuneCoin*1
tThanksGiving2019Dinner_Data[3326532]["RewardEffect"] = {}
tThanksGiving2019Dinner_Data[3326532]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tThanksGiving2019Dinner_Data[3326532]["RewardEffect"]["Effect"] = "angelwing"

--九空格
tThanksGiving2019Dinner_Data["TurkeyTrap"]={995881,995882,995883,995884,995885,995886,995887,995888,995889}

tThanksGiving2019Dinner_Data["TurkeyTrapPos"]={}

tThanksGiving2019Dinner_Data["TurkeyTrapPos"][1]={}
tThanksGiving2019Dinner_Data["TurkeyTrapPos"][1]["MapID"]=10699
tThanksGiving2019Dinner_Data["TurkeyTrapPos"][1]["PosX"]=46
tThanksGiving2019Dinner_Data["TurkeyTrapPos"][1]["PosY"]=46
tThanksGiving2019Dinner_Data["TurkeyTrapPos"][1]["TrapType"]=2482

tThanksGiving2019Dinner_Data["TurkeyTrapPos"][2]={}
tThanksGiving2019Dinner_Data["TurkeyTrapPos"][2]["MapID"]=10699
tThanksGiving2019Dinner_Data["TurkeyTrapPos"][2]["PosX"]=50
tThanksGiving2019Dinner_Data["TurkeyTrapPos"][2]["PosY"]=46
tThanksGiving2019Dinner_Data["TurkeyTrapPos"][2]["TrapType"]=2483

tThanksGiving2019Dinner_Data["TurkeyTrapPos"][3]={}
tThanksGiving2019Dinner_Data["TurkeyTrapPos"][3]["MapID"]=10699
tThanksGiving2019Dinner_Data["TurkeyTrapPos"][3]["PosX"]=54
tThanksGiving2019Dinner_Data["TurkeyTrapPos"][3]["PosY"]=46
tThanksGiving2019Dinner_Data["TurkeyTrapPos"][3]["TrapType"]=2484

tThanksGiving2019Dinner_Data["TurkeyTrapPos"][4]={}
tThanksGiving2019Dinner_Data["TurkeyTrapPos"][4]["MapID"]=10699
tThanksGiving2019Dinner_Data["TurkeyTrapPos"][4]["PosX"]=54
tThanksGiving2019Dinner_Data["TurkeyTrapPos"][4]["PosY"]=50
tThanksGiving2019Dinner_Data["TurkeyTrapPos"][4]["TrapType"]=2485

tThanksGiving2019Dinner_Data["TurkeyTrapPos"][5]={}
tThanksGiving2019Dinner_Data["TurkeyTrapPos"][5]["MapID"]=10699
tThanksGiving2019Dinner_Data["TurkeyTrapPos"][5]["PosX"]=50
tThanksGiving2019Dinner_Data["TurkeyTrapPos"][5]["PosY"]=50
tThanksGiving2019Dinner_Data["TurkeyTrapPos"][5]["TrapType"]=2486

tThanksGiving2019Dinner_Data["TurkeyTrapPos"][6]={}
tThanksGiving2019Dinner_Data["TurkeyTrapPos"][6]["MapID"]=10699
tThanksGiving2019Dinner_Data["TurkeyTrapPos"][6]["PosX"]=46
tThanksGiving2019Dinner_Data["TurkeyTrapPos"][6]["PosY"]=50
tThanksGiving2019Dinner_Data["TurkeyTrapPos"][6]["TrapType"]=2487

tThanksGiving2019Dinner_Data["TurkeyTrapPos"][7]={}
tThanksGiving2019Dinner_Data["TurkeyTrapPos"][7]["MapID"]=10699
tThanksGiving2019Dinner_Data["TurkeyTrapPos"][7]["PosX"]=46
tThanksGiving2019Dinner_Data["TurkeyTrapPos"][7]["PosY"]=54
tThanksGiving2019Dinner_Data["TurkeyTrapPos"][7]["TrapType"]=2488

tThanksGiving2019Dinner_Data["TurkeyTrapPos"][8]={}
tThanksGiving2019Dinner_Data["TurkeyTrapPos"][8]["MapID"]=10699
tThanksGiving2019Dinner_Data["TurkeyTrapPos"][8]["PosX"]=50
tThanksGiving2019Dinner_Data["TurkeyTrapPos"][8]["PosY"]=54
tThanksGiving2019Dinner_Data["TurkeyTrapPos"][8]["TrapType"]=2489

tThanksGiving2019Dinner_Data["TurkeyTrapPos"][9]={}
tThanksGiving2019Dinner_Data["TurkeyTrapPos"][9]["MapID"]=10699
tThanksGiving2019Dinner_Data["TurkeyTrapPos"][9]["PosX"]=54
tThanksGiving2019Dinner_Data["TurkeyTrapPos"][9]["PosY"]=54
tThanksGiving2019Dinner_Data["TurkeyTrapPos"][9]["TrapType"]=2490

--陷阱临时表
local tTargetTrap={}


tThanksGiving2019Dinner_Data["RewardActionId"]={}
tThanksGiving2019Dinner_Data["RewardActionId"][1]=574915
tThanksGiving2019Dinner_Data["RewardActionId"][2]=574916
tThanksGiving2019Dinner_Data["RewardActionId"][3]=574917

tThanksGiving2019Dinner_Data["RewardNum"]={}
tThanksGiving2019Dinner_Data["RewardNum"][1]=10
tThanksGiving2019Dinner_Data["RewardNum"][2]=20
tThanksGiving2019Dinner_Data["RewardNum"][3]=15


tThanksGiving2019Dinner_Data["TurkeyEffect"]="task011"
tThanksGiving2019Dinner_Data["InstanceId"]=345

tThanksGiving2019Dinner_Data["Log"]={}
tThanksGiving2019Dinner_Data["Log"]["Overdue"]="0,0,%d,%d,12001678,2,0,0"
----------------------------------逻辑部分---------------------------------------------
--与npc共舞
function ThanksGiving2019Dinner_Dance()
	if not Sys_ChkFullTime(tActivityTime["ThanksGiving2019Dinner"]["ActTime"])  then
		return 
	end 

	--今日是否已经跳过舞
	local nDanceEvent=tThanksGiving2019Dinner_Data["Stc"]["DanceEvent"]
	local nDanceType=tThanksGiving2019Dinner_Data["Stc"]["DanceType"]
	
	--隔天清掩码
	Task_StcReset(nDanceEvent,nDanceType)
	
	
	if Get_UserStatisticValue(nDanceEvent,nDanceType) >= 1 then 
		return 
	end
	
	--读条
	local nUserId = Get_UserId()
	local nSecs = tThanksGiving2019Dinner_Data["Loading"]["Secs"]
	local sContent = tThanksGiving2019Dinner_Text["SystemTips"]["LoadingContent"]
	local nActionId = tThanksGiving2019Dinner_Data["Loading"]["ActionId"]
	local sFunc = "ThanksGiving2019Dinner_DanceLoading</N>" .. nUserId
	User_SetExplore(nSecs,sContent,nActionId,sFunc,nil,nUserId)
end 

--跳舞读条
function ThanksGiving2019Dinner_DanceLoading(nUserId)
	if not Sys_ChkFullTime(tActivityTime["ThanksGiving2019Dinner"]["ActTime"])  then
		return 
	end 
	
	--今日是否已经跳过舞
	local nDanceEvent=tThanksGiving2019Dinner_Data["Stc"]["DanceEvent"]
	local nDanceType=tThanksGiving2019Dinner_Data["Stc"]["DanceType"]
	
	--隔天清掩码
	Task_StcReset(nDanceEvent,nDanceType,nUserId)
	
	if Get_UserStatisticValue(nDanceEvent,nDanceType,nUserId) >= 1 then 
		return 
	end
	
	
	--判断是否在翻倍时间段内
	local nIndex=1 
	for i = 1, 4 do 
		if Sys_ChkDayTime(tActivityTime["ThanksGiving2019Dinner"]["DayTime"][i]) then 
			nIndex=2
		end 
	end 
	
	--加掩码
	Task_AddStatistic(nDanceEvent,nDanceType,1,1,nUserId)
	Task_SetStcTimestamp(nDanceEvent,nDanceType,0,nUserId)
	
	--邮件发奖
	ThanksGiving2019Dinner_SendEmail(nUserId,nIndex)
	
	Sys_MsgBox(string.format(tThanksGiving2019Dinner_Text["SystemTips"]["Dance"],tThanksGiving2019Dinner_Data["RewardNum"][nIndex]),nil,nil,nUserId)
	
end 
	
function ThanksGiving2019Dinner_OpenExchangeShop()
	if not Sys_ChkFullTime(tActivityTime["ThanksGiving2019Dinner"]["ActTime"])  then
		return 
	end 
	
	
	User_OpenExchangeShop(tThanksGiving2019Dinner_Data["ExchangeShop"])
end 

--传送
function ThanksGiving2019Dinner_Back(nMapId)
	if not Sys_ChkFullTime(tActivityTime["ThanksGiving2019Dinner"]["ActTime"])  then
		return 
	end 
	
	if nMapId==1002 then 
		--判断激情服
		if SpecialServer_ChkNoGiftServer() then
			nMapId=1036
		end
	end
	
	
	local nPosX=tThanksGiving2019Dinner_Data["Trans"][nMapId]["PosX"]
	local nPosY=tThanksGiving2019Dinner_Data["Trans"][nMapId]["PosY"]
	local nUserId = Get_UserId()
	
	--传送进地图
	User_UserRandBoundTrans(nMapId,nPosX,nPosY,3,3,1,nUserId)
end 


--踩火鸡游戏
function ThanksGiving2019Dinner_TurkeyGame(nNpcId)
	if not Sys_ChkFullTime(tActivityTime["ThanksGiving2019Dinner"]["ActTime"])  then
		return 
	end 
	
	local nTurkeyEvent=tThanksGiving2019Dinner_Data["Stc"]["TurkeyEvent"]
	local nTurkeyType=tThanksGiving2019Dinner_Data["Stc"]["TurkeyType"]
	
	local nTurkeyProcessEvent=tThanksGiving2019Dinner_Data["Stc"]["TurkeyProcessEvent"]
	local nTurkeyProcessType=tThanksGiving2019Dinner_Data["Stc"]["TurkeyProcessType"]
	
	if Get_UserStatisticValue(nTurkeyEvent,nTurkeyType)>=10 then 
		return LinkNpcGossipFunc_New(nNpcId,"2-1")
	end 
	
	local nUserId = Get_UserId()
	
	--设置开始掩码 data=1
	Task_AddStatistic(nTurkeyProcessEvent,nTurkeyProcessType,1,1,nUserId)
	Task_SetStcTimestamp(nTurkeyProcessEvent,nTurkeyProcessType,0,nUserId)
	
	tTargetTrap[nUserId]={}
	
	--随机5个位置播放火鸡光效
	local tRefresh = {}
	for i=1,5 do
		local nIndex = ThanksGiving2019Dinner_RandomCoordinatePos(tRefresh)
		
		local nTrapType = tThanksGiving2019Dinner_Data["TurkeyTrapPos"][nIndex]["TrapType"]
		local nPosX=tThanksGiving2019Dinner_Data["TurkeyTrapPos"][nIndex]["PosX"]
		local nPosY=tThanksGiving2019Dinner_Data["TurkeyTrapPos"][nIndex]["PosY"]
		local nMapId=Get_UserMapId(nUserId)
		
		-- 播放光效
		Map_Effect(nMapId,nPosX,nPosY,tThanksGiving2019Dinner_Data["TurkeyEffect"])
		
		tRefresh[#tRefresh+1] = nIndex
		
		tTargetTrap[nUserId][i]=nTrapType

	end 
	
	--设置定时器1秒后设置开始游戏掩码
	User_SetTimer(1,"ThanksGiving2019Dinner_TurkeyGameStart",0)
	--设置定时器31秒后结束此次游戏
	User_SetTimer(30,"ThanksGiving2019Dinner_TurkeyTimeEnd",1)
end 

--设置游戏开始掩码
function ThanksGiving2019Dinner_TurkeyGameStart(nUserId)
	if not Sys_ChkFullTime(tActivityTime["ThanksGiving2019Dinner"]["ActTime"])  then
		return 
	end 
	
	--设置开始掩码
	local nTurkeyProcessEvent=tThanksGiving2019Dinner_Data["Stc"]["TurkeyProcessEvent"]
	local nTurkeyProcessType=tThanksGiving2019Dinner_Data["Stc"]["TurkeyProcessType"]
		
	--data=2可以开始踩 
	Task_AddStatistic(nTurkeyProcessEvent,nTurkeyProcessType,1,1,nUserId)
	Task_SetStcTimestamp(nTurkeyProcessEvent,nTurkeyProcessType,0,nUserId)
	
	--删除光效
	if tTargetTrap[nUserId]~=nil then 
		for i,v in ipairs(tTargetTrap[nUserId]) do 
		
			local nPosX,nPosY=ThanksGiving2019Dinner_TrapPos(v)
			local nMapId=Get_UserMapId(nUserId)
		
			Map_Effect(nMapId,nPosX,nPosY,tThanksGiving2019Dinner_Data["TurkeyEffect"],1)
		end 
	end 
	
end 


--时间结束
function ThanksGiving2019Dinner_TurkeyTimeEnd(nUserId)

	ThanksGiving2019Dinner_TurkeyEndGame(nUserId)

	local nTurkeyEvent=tThanksGiving2019Dinner_Data["Stc"]["TurkeyEvent"]
	local nTurkeyType=tThanksGiving2019Dinner_Data["Stc"]["TurkeyType"]
	
	local nTurkeyProcessEvent=tThanksGiving2019Dinner_Data["Stc"]["TurkeyProcessEvent"]
	local nTurkeyProcessType=tThanksGiving2019Dinner_Data["Stc"]["TurkeyProcessType"]
	
	Task_StcReset(nTurkeyEvent,nTurkeyType,nUserId)
	
	--清游戏进度掩码
	Task_SetStatistic(nTurkeyProcessEvent,nTurkeyProcessType,0,1,nUserId)
	Task_SetStcTimestamp(nTurkeyProcessEvent,nTurkeyProcessType,0,nUserId)
	
	--今日游戏次数+1
	-- Task_AddStatistic(nTurkeyEvent,nTurkeyType,1,1,nUserId)
	-- Task_SetStcTimestamp(nTurkeyEvent,nTurkeyType,0,nUserId)
end 

	

--游戏结束清空掩码
function ThanksGiving2019Dinner_TurkeyEndGame(nUserId)
	if not Sys_ChkFullTime(tActivityTime["ThanksGiving2019Dinner"]["ActTime"])  then
		return 
	end 

	local nTrapNumEvent=tThanksGiving2019Dinner_Data["Stc"]["TrapNumEvent"]
	local nTrapNumType=tThanksGiving2019Dinner_Data["Stc"]["TrapNumType"]
	
	local nTurkeyEvent=tThanksGiving2019Dinner_Data["Stc"]["TurkeyEvent"]
	local nTurkeyType=tThanksGiving2019Dinner_Data["Stc"]["TurkeyType"]
	
	Task_StcReset(nTurkeyEvent,nTurkeyType,nUserId)
	
	--清踩正确陷阱数掩码
	Task_SetStatistic(nTrapNumEvent,nTrapNumType,0,1,nUserId)
	Task_SetStcTimestamp(nTrapNumEvent,nTrapNumType,0,nUserId)
	
	for i=2482,2490 do 
		local nTrapEvent=tThanksGiving2019Dinner_Data["Stc"]["Trap"]["Event"]
		local nTrapType=tThanksGiving2019Dinner_Data["Stc"]["Trap"]["Type"][i]
		
		--清陷阱掩码
		Task_SetStatistic(nTrapEvent,nTrapType,0,1,nUserId)
		Task_SetStcTimestamp(nTrapEvent,nTrapType,0,nUserId)
	end 
	 
	--删除光效
	if tTargetTrap[nUserId]~=nil then 
		for i,v in ipairs(tTargetTrap[nUserId]) do 
		
			local nPosX,nPosY=ThanksGiving2019Dinner_TrapPos(v)
			local nMapId=Get_UserMapId(nUserId)
		
			Map_Effect(nMapId,nPosX,nPosY,tThanksGiving2019Dinner_Data["TurkeyEffect"],1)
		end 
	end 
	 
	--清空临时表
	tTargetTrap[nUserId]={}
end
	

--随机5个位置
function ThanksGiving2019Dinner_RandomCoordinatePos(tRefresh)
	local nLen = #tThanksGiving2019Dinner_Data["TurkeyTrap"]
	local nRandomNum = math.random(1,nLen)
	
	if #tRefresh > 0 then
		for i=1, #tRefresh do
			if tRefresh[i] == nRandomNum then
				nRandomNum = ThanksGiving2019Dinner_RandomCoordinatePos(tRefresh)
			end
		end
	end
	
	return nRandomNum
end 	


--陷阱触发
function ThanksGiving2019Dinner_TrapJudge(nTrapId,nTrapType)
	if not Sys_ChkFullTime(tActivityTime["ThanksGiving2019Dinner"]["ActTime"])  then
		return 
	end 
	
	local nTurkeyProcessEvent=tThanksGiving2019Dinner_Data["Stc"]["TurkeyProcessEvent"]
	local nTurkeyProcessType=tThanksGiving2019Dinner_Data["Stc"]["TurkeyProcessType"]
	
	
	local nTrapEvent1=tThanksGiving2019Dinner_Data["Stc"]["Trap"]["Event"]
	local nTrapType1=tThanksGiving2019Dinner_Data["Stc"]["Trap"]["Type"][nTrapType]
	
	
	local nTrapNumEvent=tThanksGiving2019Dinner_Data["Stc"]["TrapNumEvent"]
	local nTrapNumType=tThanksGiving2019Dinner_Data["Stc"]["TrapNumType"]
	
	
	local nTurkeyEvent=tThanksGiving2019Dinner_Data["Stc"]["TurkeyEvent"]
	local nTurkeyType=tThanksGiving2019Dinner_Data["Stc"]["TurkeyType"]
	

	local nUserId = Get_UserId()
	
	
	Task_StcReset(nTurkeyEvent,nTurkeyType)
	
	--还没开始/本轮游戏结束不触发陷阱
	if Get_UserStatisticValue(nTurkeyProcessEvent,nTurkeyProcessType) <= 1 or Get_UserStatisticValue(nTurkeyProcessEvent,nTurkeyProcessType) >= 3 then 
		return 
	end 

	if Get_UserStatisticValue(nTrapEvent1,nTrapType1) == 1 then 
		return 
	end 
	
	local nFlag=0
	
	
	if  tTargetTrap[nUserId]~=nil then 
		for i , v in ipairs(tTargetTrap[nUserId]) do 
			if v == nTrapType then 
			
				nFlag = 1
				--设置当前陷阱掩码
				Task_AddStatistic(nTrapEvent1,nTrapType1,1,1)
				Task_SetStcTimestamp(nTrapEvent1,nTrapType1,0)
				
				--设置进度
				Task_AddStatistic(nTrapNumEvent,nTrapNumType,1,1)
				Task_SetStcTimestamp(nTrapNumEvent,nTrapNumType,0)
				
				--播放光效
				local nPosX,nPosY=ThanksGiving2019Dinner_TrapPos(nTrapType)
				
				local nUserMap = Get_UserMapId(nUserId)
				
				Map_Effect(nUserMap,nPosX,nPosY,tThanksGiving2019Dinner_Data["TurkeyEffect"])
				
				--判断是否通关
				if Get_UserStatisticValue(nTrapNumEvent,nTrapNumType)>=5 then 
					--给奖励
					ThanksGiving2019Dinner_SendEmail(nUserId,3)
					Sys_MsgBox(string.format(tThanksGiving2019Dinner_Text["SystemTips"]["Turkey"],tThanksGiving2019Dinner_Data["RewardNum"][3]))
					--结束掩码
					Task_AddStatistic(nTurkeyProcessEvent,nTurkeyProcessType,1,1,nUserId)
					Task_SetStcTimestamp(nTurkeyProcessEvent,nTurkeyProcessType,0,nUserId)
					--今日游戏次数+1
					Task_AddStatistic(nTurkeyEvent,nTurkeyType,1,1,nUserId)
					Task_SetStcTimestamp(nTurkeyEvent,nTurkeyType,0,nUserId)
					return
				end
			end
		end
	end 
	
	if nFlag == 0 then 
		--结束掩码
		-- ThanksGiving2019Dinner_TurkeyEndGame(nUserId)
		--结束掩码
		Task_AddStatistic(nTurkeyProcessEvent,nTurkeyProcessType,1,1,nUserId)
		Task_SetStcTimestamp(nTurkeyProcessEvent,nTurkeyProcessType,0,nUserId)
		
		--今日游戏次数+1
		Task_AddStatistic(nTurkeyEvent,nTurkeyType,1,1,nUserId)
		Task_SetStcTimestamp(nTurkeyEvent,nTurkeyType,0,nUserId)
		
		Sys_MsgBox(tThanksGiving2019Dinner_Text["SystemTips"]["Fail"])
	end 
end

--获取陷阱坐标
function ThanksGiving2019Dinner_TrapPos(nTrapType)
	local nPosX=0
	local nPosY=0
	local nMapId=0
	for i =1,9 do 
		if tThanksGiving2019Dinner_Data["TurkeyTrapPos"][i]["TrapType"] == nTrapType then 
			nPosX=tThanksGiving2019Dinner_Data["TurkeyTrapPos"][i]["PosX"]
			nPosY=tThanksGiving2019Dinner_Data["TurkeyTrapPos"][i]["PosY"]
			nMapId=tThanksGiving2019Dinner_Data["TurkeyTrapPos"][i]["MapID"]
		end 
	end 
	return nPosX,nPosY
end 
			
--邮件发奖
function ThanksGiving2019Dinner_SendEmail(nUserId,nIndex)
	if not Sys_ChkFullTime(tActivityTime["ThanksGiving2019Dinner"]["ActTime"])  then
		return 
	end 		

	local sSender = tThanksGiving2019Dinner_Text["SendEmail"]["Sender"]
	local sTitle = tThanksGiving2019Dinner_Text["SendEmail"]["Title"]
	local sContent = tThanksGiving2019Dinner_Text["SendEmail"]["Content"][nIndex]
	local nExistDay = 30
	local nActionId = tThanksGiving2019Dinner_Data["RewardActionId"][nIndex]
	
	Sys_SendMail(nUserId,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent)
end


--怪物掉落
function ThanksGiving2019Dinner_MonsterDrop(nMonsterId)
	--绿色服不触发
	if SpecialServer_ChkGreenServer() then
		return 
	end 

	if not Sys_ChkFullTime(tActivityTime["ThanksGiving2019Dinner"]["ActTime"])  then
		return 
	end 	

	local nUserId = Get_UserId()
	
	--每日掉落满
	local nMonsterEvent=tThanksGiving2019Dinner_Data["Stc"]["MonsterEvent"]
	local nMonsterType=tThanksGiving2019Dinner_Data["Stc"]["MonsterType"]
	
	--隔天清掩码
	Task_StcReset(nMonsterEvent,nMonsterType)
	
	if Get_UserStatisticValue(nMonsterEvent,nMonsterType)>=100 then 
		return 
	end 
	
	
	--背包空间判断
	local nSpace = RewardTemplate_GetRandomSpace(tThanksGiving2019Dinner_Data["MonsterDrop"],1,nUserId)
	
	if nSpace > 0 and (not User_CheckLeftSpace(nSpace,nUserId)) then
		return
	end
	
	--给奖励
	if RewardTemplate_NewRandom(tThanksGiving2019Dinner_Data["MonsterDrop"],1,nUserId) then 
		if Get_UserStatisticValue(nMonsterEvent,nMonsterType)==100 then 
			return Sys_MsgBox(tThanksGiving2019Dinner_Text["SystemTips"]["MonsterDrop"])
		end
	end 
end

--进入踩火鸡副本
function ThanksGiving2019Dinner_EnterTurkeyInstance()
	if not Sys_ChkFullTime(tActivityTime["ThanksGiving2019Dinner"]["ActTime"])  then
		return 
	end 
	-- 组队不能进入
	if Get_UserTeamNumbers() >= 2 then
		return 
	end
	
	local nUserId = Get_UserId()
	ThanksGiving2019Dinner_TurkeyTimeEnd(nUserId)
	
	local nInstanceId = tThanksGiving2019Dinner_Data["InstanceId"]
	
	User_EnterInstance(nInstanceId,0,0,0)
end


----------------------------------NPC部分---------------------------------------------
--宴会主管
tNpcFace[5180] = 49
tNpcGossip[25042]= tNpcGossip[25042] or DefaultNpc:new{}
tNpcGossip[25042]["OptionHidden"] = 1
tNpcGossip[25042]["DialogueText"] = tThanksGiving2019Dinner_Text[25042]

--活动前
tNpcGossip[25042]["Text1-1"] = {111,112,113,114}
tNpcGossip[25042]["tOption1-1"] = {111}
tNpcGossip[25042]["ChkFunc1-1"] = function()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["ThanksGiving2019Dinner"]["ActTime"])
end


--活动后
tNpcGossip[25042]["Text1-2"] = {121}
tNpcGossip[25042]["tOption1-2"] = {121}
tNpcGossip[25042]["ChkFunc1-2"] = function()
	return CommonFunc_GetAfterActivityTime(tActivityTime["ThanksGiving2019Dinner"]["ActTime"])
end

--活动中
tNpcGossip[25042]["Text1-3"] = {131,132,133,134}
tNpcGossip[25042]["tOption1-3"] = {131,132}
tNpcGossip[25042]["ChkFunc1-3"] = function()
	if not Sys_ChkFullTime(tActivityTime["ThanksGiving2019Dinner"]["ActTime"])  then
		return false
	else
		return true
	end 
end

tNpcGossip[25042]["OptionFunc131"] = "ThanksGiving2019Dinner_Back</N>10700"

--动感女郎
tNpcFace[5181] = 1
tNpcGossip[25043]= tNpcGossip[25043] or DefaultNpc:new{}
tNpcGossip[25043]["OptionHidden"] = 1
tNpcGossip[25043]["DialogueText"] = tThanksGiving2019Dinner_Text[25043]

--活动中
tNpcGossip[25043]["Text1-1"] = {111,112}
tNpcGossip[25043]["tOption1-1"] = {111,112}
tNpcGossip[25043]["ChkFunc1-1"] = function()
	if not Sys_ChkFullTime(tActivityTime["ThanksGiving2019Dinner"]["ActTime"])  then
		return false
	else
		local nDanceEvent=tThanksGiving2019Dinner_Data["Stc"]["DanceEvent"]
		local nDanceType=tThanksGiving2019Dinner_Data["Stc"]["DanceType"]
		
		--隔天清掩码
		Task_StcReset(nDanceEvent,nDanceType)
		
		if Get_UserStatisticValue(nDanceEvent,nDanceType) >= 1 then 
			return false
		else
			return true
		end 
	end 
end

tNpcGossip[25043]["OptionFunc111"] = "ThanksGiving2019Dinner_Dance"


--今日已经跳舞，或者活动时间结束
tNpcGossip[25043]["Text1-2"] = {121,122}
tNpcGossip[25043]["tOption1-2"] = {121}
tNpcGossip[25043]["ChkFunc1-2"] = function()
	if CommonFunc_GetAfterActivityTime(tActivityTime["ThanksGiving2019Dinner"]["ActTime"]) then 
		return true
	else
		--已经跳过舞
		local nDanceEvent=tThanksGiving2019Dinner_Data["Stc"]["DanceEvent"]
		local nDanceType=tThanksGiving2019Dinner_Data["Stc"]["DanceType"]
		
		if Get_UserStatisticValue(nDanceEvent,nDanceType) >= 1 then 
			return true
		else
			return false
		end 
	end 
end



--【踩火鸡】阿熊

tNpcFace[4509] = 50
tNpcGossip[25045]= tNpcGossip[25045] or DefaultNpc:new{}
tNpcGossip[25045]["OptionHidden"] = 1
tNpcGossip[25045]["DialogueText"] = tThanksGiving2019Dinner_Text[25045]

--活动中
tNpcGossip[25045]["Text1-1"] = {111,112}
tNpcGossip[25045]["tOption1-1"] = {111,112}
tNpcGossip[25045]["ChkFunc1-1"] = function()
	if not Sys_ChkFullTime(tActivityTime["ThanksGiving2019Dinner"]["ActTime"])  then
		return false
	else
		local nTurkeyEvent=tThanksGiving2019Dinner_Data["Stc"]["TurkeyEvent"]
		local nTurkeyType=tThanksGiving2019Dinner_Data["Stc"]["TurkeyType"]
		
		--隔天清掩码
		Task_StcReset(nTurkeyEvent,nTurkeyType)
		
		if Get_UserStatisticValue(nTurkeyEvent,nTurkeyType) >= 10 then 
			return false
		else
			return true
		end 
	end 
end

tNpcGossip[25045]["OptionFunc111"] = "ThanksGiving2019Dinner_EnterTurkeyInstance"

tNpcGossip[25045]["Text1-2"] = {121}
tNpcGossip[25045]["tOption1-2"] = {121}
tNpcGossip[25045]["ChkFunc1-2"] = function()
	if not Sys_ChkFullTime(tActivityTime["ThanksGiving2019Dinner"]["ActTime"])  then
		return false
	else
		local nTurkeyEvent=tThanksGiving2019Dinner_Data["Stc"]["TurkeyEvent"]
		local nTurkeyType=tThanksGiving2019Dinner_Data["Stc"]["TurkeyType"]
		
		--隔天清掩码
		Task_StcReset(nTurkeyEvent,nTurkeyType)
		
		if Get_UserStatisticValue(nTurkeyEvent,nTurkeyType) >= 10 then 
			return true
		else
			return false
		end 
	end 
end

--活动时间结束
tNpcGossip[25045]["Text1-3"] = {131}
tNpcGossip[25045]["tOption1-3"] = {131}
tNpcGossip[25045]["ChkFunc1-3"] = function()
	return CommonFunc_GetAfterActivityTime(tActivityTime["ThanksGiving2019Dinner"]["ActTime"]) 
end 


--阿熊 副本内
tNpcFace[4509] = 50
tNpcGossip[25047]= tNpcGossip[25047] or DefaultNpc:new{}
tNpcGossip[25047]["OptionHidden"] = 1
tNpcGossip[25047]["DialogueText"] = tThanksGiving2019Dinner_Text[25047]

--活动中
tNpcGossip[25047]["Text1-1"] = {111,112}
tNpcGossip[25047]["tOption1-1"] = {111,112}
tNpcGossip[25047]["ChkFunc1-1"] = function()
	if not Sys_ChkFullTime(tActivityTime["ThanksGiving2019Dinner"]["ActTime"])  then
		return false
	else
		local nTurkeyEvent=tThanksGiving2019Dinner_Data["Stc"]["TurkeyEvent"]
		local nTurkeyType=tThanksGiving2019Dinner_Data["Stc"]["TurkeyType"]
		local nTurkeyProcessEvent=tThanksGiving2019Dinner_Data["Stc"]["TurkeyProcessEvent"]
		local nTurkeyProcessType=tThanksGiving2019Dinner_Data["Stc"]["TurkeyProcessType"]
		
		--隔天清掩码
		Task_StcReset(nTurkeyEvent,nTurkeyType)
		if Get_UserStatisticValue(nTurkeyEvent,nTurkeyType) >= 10 then 
			return false
		else
			if Get_UserStatisticValue(nTurkeyProcessEvent,nTurkeyProcessType)>=1 then 
				return false
			else
				return true
			end 
		end 
	end 
end

tNpcGossip[25047]["OptionFunc111"] = "ThanksGiving2019Dinner_TurkeyGame</N>25047"
tNpcGossip[25047]["OptionFunc112"] = "ThanksGiving2019Dinner_Back</N>10700"

tNpcGossip[25047]["Text1-2"] = {121}
tNpcGossip[25047]["tOption1-2"] = {121}
tNpcGossip[25047]["ChkFunc1-2"] = function()
	if not Sys_ChkFullTime(tActivityTime["ThanksGiving2019Dinner"]["ActTime"])  then
		return false
	else
		local nTurkeyEvent=tThanksGiving2019Dinner_Data["Stc"]["TurkeyEvent"]
		local nTurkeyType=tThanksGiving2019Dinner_Data["Stc"]["TurkeyType"]
		
		if Get_UserStatisticValue(nTurkeyEvent,nTurkeyType) >= 10 then 
			return true
		else
			return false
		end 
	end 
end
tNpcGossip[25047]["OptionFunc121"] = "ThanksGiving2019Dinner_Back</N>10700"

--活动时间结束
tNpcGossip[25047]["Text1-3"] = {131} 
tNpcGossip[25047]["tOption1-3"] = {131}
tNpcGossip[25047]["ChkFunc1-3"] = function()
	return CommonFunc_GetAfterActivityTime(tActivityTime["ThanksGiving2019Dinner"]["ActTime"]) 
end 
tNpcGossip[25047]["OptionFunc131"] = "ThanksGiving2019Dinner_Back</N>10700"


--成功/失败倒计时未结束对白
tNpcGossip[25047]["Text1-4"] = {211}
tNpcGossip[25047]["tOption1-4"] = {211}
tNpcGossip[25047]["ChkFunc1-4"] = function()
	if not Sys_ChkFullTime(tActivityTime["ThanksGiving2019Dinner"]["ActTime"])  then
		return false
	else
		local nTurkeyEvent=tThanksGiving2019Dinner_Data["Stc"]["TurkeyEvent"]
		local nTurkeyType=tThanksGiving2019Dinner_Data["Stc"]["TurkeyType"]
		
		local nTurkeyProcessEvent=tThanksGiving2019Dinner_Data["Stc"]["TurkeyProcessEvent"]
		local nTurkeyProcessType=tThanksGiving2019Dinner_Data["Stc"]["TurkeyProcessType"]

		if Get_UserStatisticValue(nTurkeyEvent,nTurkeyType) >= 10 then 
			return false
		else
			if Get_UserStatisticValue(nTurkeyProcessEvent,nTurkeyProcessType)>=3 then 
				return true
			else
				return false
			end 
		end 
	end 
end 

tNpcGossip[25047]["Text1-5"] = {221}
tNpcGossip[25047]["tOption1-5"] = {221}
tNpcGossip[25047]["ChkFunc1-5"] = function()
	if not Sys_ChkFullTime(tActivityTime["ThanksGiving2019Dinner"]["ActTime"])  then
		return false
	else
		local nTurkeyEvent=tThanksGiving2019Dinner_Data["Stc"]["TurkeyEvent"]
		local nTurkeyType=tThanksGiving2019Dinner_Data["Stc"]["TurkeyType"]
		
		local nTurkeyProcessEvent=tThanksGiving2019Dinner_Data["Stc"]["TurkeyProcessEvent"]
		local nTurkeyProcessType=tThanksGiving2019Dinner_Data["Stc"]["TurkeyProcessType"]

		if Get_UserStatisticValue(nTurkeyEvent,nTurkeyType) >= 10 then 
			return false
		else
			if Get_UserStatisticValue(nTurkeyProcessEvent,nTurkeyProcessType)>0 and Get_UserStatisticValue(nTurkeyProcessEvent,nTurkeyProcessType)<3 then 
				return true
			else
				return false
			end 
		end 
	end 
end 

---------------------------------物品部分---------------------------------------------
tItem[3326535] = tItem[3326535] or {}
tItem[3326535]["Function"] = function(nItemId,sItemName)
	local nUserId = Get_UserId()
	local bJudge = TermsOfUse_Main(nItemId,tThanksGiving2019Dinner_Data[nItemId])
	
	if not bJudge then
		return
	end
	
	RewardTemplate_UseItemAndMsg(tThanksGiving2019Dinner_Data[nItemId],nUserId,bJudge)
end


tItem[3326533] = tItem[3326533] or {}
tItem[3326533]["Function"] = function(nItemId,sItemName)

	--判断激情服
	local nIndex=1
	if SpecialServer_ChkNoGiftServer() then
		nIndex=2
	end 

	local nUserId = Get_UserId()
	local bJudge = TermsOfUse_Main(nItemId,tThanksGiving2019Dinner_Data[nItemId][nIndex])
	
	if not bJudge then
		return
	end
	
	RewardTemplate_UseItemAndMsg(tThanksGiving2019Dinner_Data[nItemId][nIndex],nUserId,bJudge)
	
	
end
tItem[3326534] = tItem[3326533]



tItem[3326532] = tItem[3326532] or {}
tItem[3326532]["Function"] = function(nItemId,sItemName)
	if CommonFunc_GetAfterActivityTime(tActivityTime["ThanksGiving2019Dinner"]["ActTime"]) then 
		
		local nNum = Get_CountItemType(nItemId,0)
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId)  then 
		
			local tReward = CommonFunc_Copy(tThanksGiving2019Dinner_Data[nItemId])
			tReward["RewardItem"][1]["Attr"]=string.format(tThanksGiving2019Dinner_Data[3326532]["RewardItem"][1]["Attr"],nNum)
			RewardTemplate_UseItem(tReward)
			
			local sLog=string.format(tThanksGiving2019Dinner_Data["Log"]["Overdue"],nItemId,nNum)
			Sys_SaveActionFestivalLog(sLog)
		end 	
	else
		NpcPosition_PathFind(25042)
	end 
end


---------------------------------陷阱部分---------------------------------------------
tTrap[2481] = tTrap[2481] or {}
tTrap[2481]["Function"] = function(nTrapId,nTrapType)
	ThanksGiving2019Dinner_Back(1002)
end

--九宫格陷阱
tTrap[2482] = tTrap[2482] or {}
tTrap[2482]["Function"] = function(nTrapId,nTrapType)
	ThanksGiving2019Dinner_TrapJudge(nTrapId,nTrapType)
end

tTrap[2483] = tTrap[2482]
tTrap[2484] = tTrap[2482]
tTrap[2485] = tTrap[2482]
tTrap[2486] = tTrap[2482]
tTrap[2487] = tTrap[2482]
tTrap[2488] = tTrap[2482]
tTrap[2489] = tTrap[2482]
tTrap[2490] = tTrap[2482]

tTrap[2493] = tTrap[2493] or {}
tTrap[2493]["Function"] = function(nTrapId,nTrapType)
	ThanksGiving2019Dinner_Back(10700)
end
---------------------------------怪物部分---------------------------------------------

--全片区怪物
local tThanksGiving2019Dinner_Monster = {}
tThanksGiving2019Dinner_Monster["ActivityTime"] = tActivityTime["ThanksGiving2019Dinner"]["ActTime"]
tThanksGiving2019Dinner_Monster["Function"] = ThanksGiving2019Dinner_MonsterDrop

table.insert(tMonsterDrop_AreaLoad,tThanksGiving2019Dinner_Monster)