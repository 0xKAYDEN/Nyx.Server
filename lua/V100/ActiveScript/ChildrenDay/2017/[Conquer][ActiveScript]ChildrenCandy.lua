------------------------------------------------------------------------------------
--Name:			180323[简体征服][活动脚本]2018儿童节小活动复用修改(5.31-6.6)
--Creator:		翁清海
--Created:		2018-03-23
------------------------------------------------------------------------------------

-- 前缀
-- ChildrenCandy_

-- ##stc 16001 打怪获得礼袋数量
-- ##stc 16002 礼物大使1获得礼袋
-- ##stc 16003 礼物大使2获得礼袋
-- ##stc 16004 礼物大使3获得礼袋
-- ##lua 40508
-- ##log 12000708
---------------------------------------------------------------
local tChildrenCandy_Cont = {}
	tChildrenCandy_Cont["BeforeActivity"] = tActivityTime["ChildrenCandy"]["BeforeActivity"]
	tChildrenCandy_Cont["Activity"] = tActivityTime["ChildrenCandy"]["Activity"]
	
	-- tChildrenCandy_Cont["BeforeActivity"] = "2015-10-27 00:00 2016-04-05 23:59"
	-- tChildrenCandy_Cont["Activity"] = "2016-04-06 00:00 2017-06-03 23:59"
	-- tChildrenCandy_Cont["MoveNpc"] = "00 04"
	
	--玩家等级要求
	tChildrenCandy_Cont["Metempsychosis"] = 0
	tChildrenCandy_Cont["Level"] = 80
	tChildrenCandy_Cont["DropProb"] = 300	--掉落概率3%，300/10000
	tChildrenCandy_Cont["DropTime"] = 20	--最大掉落：20
	tChildrenCandy_Cont["GiveMax"] = 100	--npc最多可以给100个
	tChildrenCandy_Cont["Limit"] = 88	--赠点包给的最大赠点数量

local tChildrenCandy_MoveNpc = {}
	tChildrenCandy_MoveNpc[20515] = {}
	tChildrenCandy_MoveNpc[20515][1] = {}
	tChildrenCandy_MoveNpc[20515][1]["NpcId"] = 20515
	tChildrenCandy_MoveNpc[20515][1]["ActivetyMapId"] = 1002
	tChildrenCandy_MoveNpc[20515][1]["ActivetyPosX"] = 368
	tChildrenCandy_MoveNpc[20515][1]["ActivetyPosY"] = 492
	tChildrenCandy_MoveNpc[20515][1]["AfterActivetyMapId"] = 5000
	tChildrenCandy_MoveNpc[20515][1]["AfterActivetyPosX"] = 100
	tChildrenCandy_MoveNpc[20515][1]["AfterActivetyPosY"] = 100

	tChildrenCandy_MoveNpc[20516] = {}
	tChildrenCandy_MoveNpc[20516][1] = {}
	tChildrenCandy_MoveNpc[20516][1]["NpcId"] = 20516
	tChildrenCandy_MoveNpc[20516][1]["ActivetyMapId"] = 1002
	tChildrenCandy_MoveNpc[20516][1]["ActivetyPosX"] = 372
	tChildrenCandy_MoveNpc[20516][1]["ActivetyPosY"] = 492
	tChildrenCandy_MoveNpc[20516][1]["AfterActivetyMapId"] = 5000
	tChildrenCandy_MoveNpc[20516][1]["AfterActivetyPosX"] = 100
	tChildrenCandy_MoveNpc[20516][1]["AfterActivetyPosY"] = 100	
	tChildrenCandy_MoveNpc[20517] = {}
	tChildrenCandy_MoveNpc[20517][1] = {}
	tChildrenCandy_MoveNpc[20517][1]["NpcId"] = 20516
	tChildrenCandy_MoveNpc[20517][1]["ActivetyMapId"] = 1002
	tChildrenCandy_MoveNpc[20517][1]["ActivetyPosX"] = 376
	tChildrenCandy_MoveNpc[20517][1]["ActivetyPosY"] = 492
	tChildrenCandy_MoveNpc[20517][1]["AfterActivetyMapId"] = 5000
	tChildrenCandy_MoveNpc[20517][1]["AfterActivetyPosX"] = 100
	tChildrenCandy_MoveNpc[20517][1]["AfterActivetyPosY"] = 100	
	
-- 激情服
	tChildrenCandy_MoveNpc[20515][2] = {}
	tChildrenCandy_MoveNpc[20515][2]["NpcId"] = 20515
	tChildrenCandy_MoveNpc[20515][2]["ActivetyMapId"] = 1036
	tChildrenCandy_MoveNpc[20515][2]["ActivetyPosX"] = 302
	tChildrenCandy_MoveNpc[20515][2]["ActivetyPosY"] = 200
	tChildrenCandy_MoveNpc[20515][2]["AfterActivetyMapId"] = 5000
	tChildrenCandy_MoveNpc[20515][2]["AfterActivetyPosX"] = 100
	tChildrenCandy_MoveNpc[20515][2]["AfterActivetyPosY"] = 100

	tChildrenCandy_MoveNpc[20516][2] = {}
	tChildrenCandy_MoveNpc[20516][2]["NpcId"] = 20516
	tChildrenCandy_MoveNpc[20516][2]["ActivetyMapId"] = 1036
	tChildrenCandy_MoveNpc[20516][2]["ActivetyPosX"] = 307
	tChildrenCandy_MoveNpc[20516][2]["ActivetyPosY"] = 200
	tChildrenCandy_MoveNpc[20516][2]["AfterActivetyMapId"] = 5000
	tChildrenCandy_MoveNpc[20516][2]["AfterActivetyPosX"] = 100
	tChildrenCandy_MoveNpc[20516][2]["AfterActivetyPosY"] = 100	
	tChildrenCandy_MoveNpc[20517][2] = {}
	tChildrenCandy_MoveNpc[20517][2]["NpcId"] = 20516
	tChildrenCandy_MoveNpc[20517][2]["ActivetyMapId"] = 1036
	tChildrenCandy_MoveNpc[20517][2]["ActivetyPosX"] = 312
	tChildrenCandy_MoveNpc[20517][2]["ActivetyPosY"] = 200
	tChildrenCandy_MoveNpc[20517][2]["AfterActivetyMapId"] = 5000
	tChildrenCandy_MoveNpc[20517][2]["AfterActivetyPosX"] = 100
	tChildrenCandy_MoveNpc[20517][2]["AfterActivetyPosY"] = 100	
	
local tChildrenCandy_ServerData = {}
	tChildrenCandy_ServerData["CommonServer"] = 1
	tChildrenCandy_ServerData["NoGiftServer"] = 2
	
local tChildrenCandy_Stc = {}
	tChildrenCandy_Stc["EventType"] = 160
	tChildrenCandy_Stc["DataType"] = {}
	tChildrenCandy_Stc["DataType"]["Drop"] = 01
	tChildrenCandy_Stc["DataType"][20515] =  02
	tChildrenCandy_Stc["DataType"][20516] =  03
	tChildrenCandy_Stc["DataType"][20517] =  04
	
	
local tChildrenCandy_GlobalData = {}
	tChildrenCandy_GlobalData["Id"] = 51383
	tChildrenCandy_GlobalData["Pos"] = {}
	tChildrenCandy_GlobalData["Pos"]["Flag"] =  0
	tChildrenCandy_GlobalData["Pos"][20515] =  1
	tChildrenCandy_GlobalData["Pos"][20516] =  2
	tChildrenCandy_GlobalData["Pos"][20517] =  3		

local tChildrenCandy_Log = {}
	tChildrenCandy_Log["LogId"] = 12000708
	tChildrenCandy_Log["DelItem"] = "0,0,%d,1,12000708,2,0,0"			--过期删除物品
	tChildrenCandy_Log["GetCandy"] = "0,0,0,0,12000708,1[1],3303141,1"		-- 获得糖果礼袋
	tChildrenCandy_Log["UseCandy"] = "0,0,3303141,1,12000708,1[2],0,0"		-- 打开糖果礼袋
	
local tChildrenCandy_GiftPack = {}
	tChildrenCandy_GiftPack[3303141] = {}
	tChildrenCandy_GiftPack[3303141][1] = {}
	tChildrenCandy_GiftPack[3303141][1]["ItemChanceSum"] = 10000
	tChildrenCandy_GiftPack[3303141][1][1] = {}
	tChildrenCandy_GiftPack[3303141][1][1]["RandomItemChanceType"] = 2
	tChildrenCandy_GiftPack[3303141][1][1]["ItemChance"] = 3200
	tChildrenCandy_GiftPack[3303141][1][1]["Item_1"] = 1
	tChildrenCandy_GiftPack[3303141][1][2] = {}
	tChildrenCandy_GiftPack[3303141][1][2]["RandomItemChanceType"] = 2
	tChildrenCandy_GiftPack[3303141][1][2]["ItemChance"] = 2000
	tChildrenCandy_GiftPack[3303141][1][2]["Item_1"] = 2
	tChildrenCandy_GiftPack[3303141][1][3] = {}
	tChildrenCandy_GiftPack[3303141][1][3]["RandomItemChanceType"] = 2
	tChildrenCandy_GiftPack[3303141][1][3]["ItemChance"] = 1500
	tChildrenCandy_GiftPack[3303141][1][3]["Item_1"] = 3
	tChildrenCandy_GiftPack[3303141][1][4] = {}
	tChildrenCandy_GiftPack[3303141][1][4]["RandomItemChanceType"] = 2
	tChildrenCandy_GiftPack[3303141][1][4]["ItemChance"] = 800
	tChildrenCandy_GiftPack[3303141][1][4]["Item_1"] = 4
	tChildrenCandy_GiftPack[3303141][1][5] = {}
	tChildrenCandy_GiftPack[3303141][1][5]["RandomItemChanceType"] = 2
	tChildrenCandy_GiftPack[3303141][1][5]["ItemChance"] = 1700
	tChildrenCandy_GiftPack[3303141][1][5]["Item_1"] = 5
	tChildrenCandy_GiftPack[3303141][1][6] = {}
	tChildrenCandy_GiftPack[3303141][1][6]["RandomItemChanceType"] = 2
	tChildrenCandy_GiftPack[3303141][1][6]["ItemChance"] = 800
	tChildrenCandy_GiftPack[3303141][1][6]["Item_1"] = 6	
	
	tChildrenCandy_GiftPack["Prize"] = {}
	tChildrenCandy_GiftPack["Prize"][1] = {}
	tChildrenCandy_GiftPack["Prize"][1]["LogId"] = 12000708
	tChildrenCandy_GiftPack["Prize"][1]["RewardEffect"] = {}
	tChildrenCandy_GiftPack["Prize"][1]["RewardEffect"]["SzObj"] = "self"
	tChildrenCandy_GiftPack["Prize"][1]["RewardEffect"]["Effect"] = "zf2-e128"
	tChildrenCandy_GiftPack["Prize"][1]["RewardItem"] = {}
	tChildrenCandy_GiftPack["Prize"][1]["RewardItem"][1] = {}
	tChildrenCandy_GiftPack["Prize"][1]["RewardItem"][1]["Id"] = 3303142
	tChildrenCandy_GiftPack["Prize"][1]["RewardItem"][1]["Attr"] = "0 3"
	tChildrenCandy_GiftPack["Prize"][1]["DeleteItem"] = {}
	tChildrenCandy_GiftPack["Prize"][1]["DeleteItem"][1] = {}
	tChildrenCandy_GiftPack["Prize"][1]["DeleteItem"][1]["Id"] = 3303141	
	
	tChildrenCandy_GiftPack["Prize"][2] = {}
	tChildrenCandy_GiftPack["Prize"][2]["LogId"] = 12000708
	tChildrenCandy_GiftPack["Prize"][2]["RewardEffect"] = {}
	tChildrenCandy_GiftPack["Prize"][2]["RewardEffect"]["SzObj"] = "self"
	tChildrenCandy_GiftPack["Prize"][2]["RewardEffect"]["Effect"] = "zf2-e128"
	tChildrenCandy_GiftPack["Prize"][2]["RewardItem"] = {}
	tChildrenCandy_GiftPack["Prize"][2]["RewardItem"][1] = {}
	tChildrenCandy_GiftPack["Prize"][2]["RewardItem"][1]["Id"] = 3303142
	tChildrenCandy_GiftPack["Prize"][2]["RewardItem"][1]["Attr"] = "0 5"
	tChildrenCandy_GiftPack["Prize"][2]["DeleteItem"] = {}
	tChildrenCandy_GiftPack["Prize"][2]["DeleteItem"][1] = {}
	tChildrenCandy_GiftPack["Prize"][2]["DeleteItem"][1]["Id"] = 3303141		
	
	tChildrenCandy_GiftPack["Prize"][3] = {}
	tChildrenCandy_GiftPack["Prize"][3]["LogId"] = 12000708
	tChildrenCandy_GiftPack["Prize"][3]["RewardEffect"] = {}
	tChildrenCandy_GiftPack["Prize"][3]["RewardEffect"]["SzObj"] = "self"
	tChildrenCandy_GiftPack["Prize"][3]["RewardEffect"]["Effect"] = "zf2-e128"
	tChildrenCandy_GiftPack["Prize"][3]["RewardItem"] = {}
	tChildrenCandy_GiftPack["Prize"][3]["RewardItem"][1] = {}
	tChildrenCandy_GiftPack["Prize"][3]["RewardItem"][1]["Id"] = 3303142
	tChildrenCandy_GiftPack["Prize"][3]["RewardItem"][1]["Attr"] = "0 8"
	tChildrenCandy_GiftPack["Prize"][3]["DeleteItem"] = {}
	tChildrenCandy_GiftPack["Prize"][3]["DeleteItem"][1] = {}
	tChildrenCandy_GiftPack["Prize"][3]["DeleteItem"][1]["Id"] = 3303141			
	
	tChildrenCandy_GiftPack["Prize"][4] = {}
	tChildrenCandy_GiftPack["Prize"][4]["LogId"] = 12000708
	tChildrenCandy_GiftPack["Prize"][4]["RewardEffect"] = {}
	tChildrenCandy_GiftPack["Prize"][4]["RewardEffect"]["SzObj"] = "self"
	tChildrenCandy_GiftPack["Prize"][4]["RewardEffect"]["Effect"] = "zf2-e128"
	tChildrenCandy_GiftPack["Prize"][4]["RewardItem"] = {}
	tChildrenCandy_GiftPack["Prize"][4]["RewardItem"][1] = {}
	tChildrenCandy_GiftPack["Prize"][4]["RewardItem"][1]["Id"] = 3303142
	tChildrenCandy_GiftPack["Prize"][4]["RewardItem"][1]["Attr"] = "0 10"
	tChildrenCandy_GiftPack["Prize"][4]["DeleteItem"] = {}
	tChildrenCandy_GiftPack["Prize"][4]["DeleteItem"][1] = {}
	tChildrenCandy_GiftPack["Prize"][4]["DeleteItem"][1]["Id"] = 3303141
	
	tChildrenCandy_GiftPack["Prize"][5] = {}
	tChildrenCandy_GiftPack["Prize"][5]["LogId"] = 12000708
	tChildrenCandy_GiftPack["Prize"][5]["RewardEffect"] = {}
	tChildrenCandy_GiftPack["Prize"][5]["RewardEffect"]["SzObj"] = "self"
	tChildrenCandy_GiftPack["Prize"][5]["RewardEffect"]["Effect"] = "zf2-e128"
	tChildrenCandy_GiftPack["Prize"][5]["RewardEMoneyMono"] = {}
	tChildrenCandy_GiftPack["Prize"][5]["RewardEMoneyMono"]["Value"] = 5
	tChildrenCandy_GiftPack["Prize"][5]["DeleteItem"] = {}
	tChildrenCandy_GiftPack["Prize"][5]["DeleteItem"][1] = {}
	tChildrenCandy_GiftPack["Prize"][5]["DeleteItem"][1]["Id"] = 3303141	

	tChildrenCandy_GiftPack["Prize"][6] = {}
	tChildrenCandy_GiftPack["Prize"][6]["LogId"] = 12000708
	tChildrenCandy_GiftPack["Prize"][6]["RewardEffect"] = {}
	tChildrenCandy_GiftPack["Prize"][6]["RewardEffect"]["SzObj"] = "self"
	tChildrenCandy_GiftPack["Prize"][6]["RewardEffect"]["Effect"] = "zf2-e128"
	tChildrenCandy_GiftPack["Prize"][6]["RewardEMoneyMono"] = {}
	tChildrenCandy_GiftPack["Prize"][6]["RewardEMoneyMono"]["Value"] = 10
	tChildrenCandy_GiftPack["Prize"][6]["DeleteItem"] = {}
	tChildrenCandy_GiftPack["Prize"][6]["DeleteItem"][1] = {}
	tChildrenCandy_GiftPack["Prize"][6]["DeleteItem"][1]["Id"] = 3303141		
	
	--气力值礼包
	-- tChildrenCandy_GiftPack["Prize"][3303137] = {}
	-- tChildrenCandy_GiftPack["Prize"][3303137]["LogId"] = 12000582
	-- tChildrenCandy_GiftPack["Prize"][3303137]["DeleteItem"] = {}
	-- tChildrenCandy_GiftPack["Prize"][3303137]["DeleteItem"][1] = {}
	-- tChildrenCandy_GiftPack["Prize"][3303137]["DeleteItem"][1]["Id"] = 3303137
	-- tChildrenCandy_GiftPack["Prize"][3303137]["RewardStrengthValue"] = {}
	-- tChildrenCandy_GiftPack["Prize"][3303137]["RewardStrengthValue"]["Value"] = 200
	
	--微光星陨石礼盒
	-- tChildrenCandy_GiftPack["Prize"][3303138] = {}
	-- tChildrenCandy_GiftPack["Prize"][3303138]["LogId"] = 12000582
	-- tChildrenCandy_GiftPack["Prize"][3303138]["DeleteItem"] = {}
	-- tChildrenCandy_GiftPack["Prize"][3303138]["DeleteItem"][1] = {}
	-- tChildrenCandy_GiftPack["Prize"][3303138]["DeleteItem"][1]["Id"] = 3303138
	-- tChildrenCandy_GiftPack["Prize"][3303138]["RewardItem"] = {}
	-- tChildrenCandy_GiftPack["Prize"][3303138]["RewardItem"][1] = {}
	-- tChildrenCandy_GiftPack["Prize"][3303138]["RewardItem"][1]["Id"] = 3009000
	-- tChildrenCandy_GiftPack["Prize"][3303138]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	
	--明亮星陨石礼盒
	-- tChildrenCandy_GiftPack["Prize"][3303139] = {}
	-- tChildrenCandy_GiftPack["Prize"][3303139]["LogId"] = 12000582
	-- tChildrenCandy_GiftPack["Prize"][3303139]["DeleteItem"] = {}
	-- tChildrenCandy_GiftPack["Prize"][3303139]["DeleteItem"][1] = {}
	-- tChildrenCandy_GiftPack["Prize"][3303139]["DeleteItem"][1]["Id"] = 3303139
	-- tChildrenCandy_GiftPack["Prize"][3303139]["RewardItem"] = {}
	-- tChildrenCandy_GiftPack["Prize"][3303139]["RewardItem"][1] = {}
	-- tChildrenCandy_GiftPack["Prize"][3303139]["RewardItem"][1]["Id"] = 3009001
	-- tChildrenCandy_GiftPack["Prize"][3303139]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"

	--明亮星陨石礼盒
	tChildrenCandy_GiftPack["Prize"][3303142] = {}
	tChildrenCandy_GiftPack["Prize"][3303142]["LogId"] = 12000582
	tChildrenCandy_GiftPack["Prize"][3303142]["DeleteItem"] = {}
	tChildrenCandy_GiftPack["Prize"][3303142]["DeleteItem"][1] = {}
	tChildrenCandy_GiftPack["Prize"][3303142]["DeleteItem"][1]["Id"] = 3303142
	tChildrenCandy_GiftPack["Prize"][3303142]["DeleteItem"][1]["ItemNum"] = 1
	tChildrenCandy_GiftPack["Prize"][3303142]["RewardItem"] = {}
	tChildrenCandy_GiftPack["Prize"][3303142]["RewardItem"][1] = {}
	tChildrenCandy_GiftPack["Prize"][3303142]["RewardItem"][1]["Id"] = 3301454
	tChildrenCandy_GiftPack["Prize"][3303142]["RewardItem"][1]["Attr"] = "0 1"
	
	--30天时效酒仙熊猫外套礼包
	tChildrenCandy_GiftPack["Prize"][3307913] = {}
	tChildrenCandy_GiftPack["Prize"][3307913]["LogId"] = 12000582
	tChildrenCandy_GiftPack["Prize"][3307913]["DeleteItem"] = {}
	tChildrenCandy_GiftPack["Prize"][3307913]["DeleteItem"][1] = {}
	tChildrenCandy_GiftPack["Prize"][3307913]["DeleteItem"][1]["Id"] = 3307913
	tChildrenCandy_GiftPack["Prize"][3307913]["RewardItem"] = {}
	tChildrenCandy_GiftPack["Prize"][3307913]["RewardItem"][1] = {}
	tChildrenCandy_GiftPack["Prize"][3307913]["RewardItem"][1]["Id"] = 200443
	tChildrenCandy_GiftPack["Prize"][3307913]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	--7天时效小羊驼外套礼包
	tChildrenCandy_GiftPack["Prize"][3307914] = {}
	tChildrenCandy_GiftPack["Prize"][3307914]["LogId"] = 12000582
	tChildrenCandy_GiftPack["Prize"][3307914]["DeleteItem"] = {}
	tChildrenCandy_GiftPack["Prize"][3307914]["DeleteItem"][1] = {}
	tChildrenCandy_GiftPack["Prize"][3307914]["DeleteItem"][1]["Id"] = 3307914
	tChildrenCandy_GiftPack["Prize"][3307914]["RewardItem"] = {}
	tChildrenCandy_GiftPack["Prize"][3307914]["RewardItem"][1] = {}
	tChildrenCandy_GiftPack["Prize"][3307914]["RewardItem"][1]["Id"] = 200419
	tChildrenCandy_GiftPack["Prize"][3307914]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1"
	--30天时效圣灵玉兔外套礼包
	tChildrenCandy_GiftPack["Prize"][3307915] = {}
	tChildrenCandy_GiftPack["Prize"][3307915]["LogId"] = 12000582
	tChildrenCandy_GiftPack["Prize"][3307915]["DeleteItem"] = {}
	tChildrenCandy_GiftPack["Prize"][3307915]["DeleteItem"][1] = {}
	tChildrenCandy_GiftPack["Prize"][3307915]["DeleteItem"][1]["Id"] = 3307915
	tChildrenCandy_GiftPack["Prize"][3307915]["RewardItem"] = {}
	tChildrenCandy_GiftPack["Prize"][3307915]["RewardItem"][1] = {}
	tChildrenCandy_GiftPack["Prize"][3307915]["RewardItem"][1]["Id"] = 200407
	tChildrenCandy_GiftPack["Prize"][3307915]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	
local tChildrenCandy_Probability = {}
	tChildrenCandy_Probability[3303140] = {} 
	tChildrenCandy_Probability[3303140]["Reward"] = {}
	tChildrenCandy_Probability[3303140]["Reward"][1] = {}
	tChildrenCandy_Probability[3303140]["Reward"][1]["ItemChanceSum"] = 10000

	tChildrenCandy_Probability[3303140]["Reward"][1][1] = {}
	tChildrenCandy_Probability[3303140]["Reward"][1][1]["RandomItemChanceType"] = 2
	tChildrenCandy_Probability[3303140]["Reward"][1][1]["ItemChance"] = 500
	tChildrenCandy_Probability[3303140]["Reward"][1][1]["Item_1"] = 1
	tChildrenCandy_Probability[3303140]["Reward"][1][1]["Start"] = 1
	tChildrenCandy_Probability[3303140]["Reward"][1][1]["End"] = 10

	tChildrenCandy_Probability[3303140]["Reward"][1][2] = {}
	tChildrenCandy_Probability[3303140]["Reward"][1][2]["RandomItemChanceType"] = 2
	tChildrenCandy_Probability[3303140]["Reward"][1][2]["ItemChance"] = 2500
	tChildrenCandy_Probability[3303140]["Reward"][1][2]["Item_1"] = 2
	tChildrenCandy_Probability[3303140]["Reward"][1][2]["Start"] = 11
	tChildrenCandy_Probability[3303140]["Reward"][1][2]["End"] = 20

	tChildrenCandy_Probability[3303140]["Reward"][1][3] = {}
	tChildrenCandy_Probability[3303140]["Reward"][1][3]["RandomItemChanceType"] = 2
	tChildrenCandy_Probability[3303140]["Reward"][1][3]["ItemChance"] = 3500
	tChildrenCandy_Probability[3303140]["Reward"][1][3]["Item_1"] = 3
	tChildrenCandy_Probability[3303140]["Reward"][1][3]["Start"] = 21
	tChildrenCandy_Probability[3303140]["Reward"][1][3]["End"] = 30

	tChildrenCandy_Probability[3303140]["Reward"][1][4] = {}
	tChildrenCandy_Probability[3303140]["Reward"][1][4]["RandomItemChanceType"] = 2
	tChildrenCandy_Probability[3303140]["Reward"][1][4]["ItemChance"] = 1800
	tChildrenCandy_Probability[3303140]["Reward"][1][4]["Item_1"] = 4
	tChildrenCandy_Probability[3303140]["Reward"][1][4]["Start"] = 31
	tChildrenCandy_Probability[3303140]["Reward"][1][4]["End"] = 40
	
	tChildrenCandy_Probability[3303140]["Reward"][1][5] = {}
	tChildrenCandy_Probability[3303140]["Reward"][1][5]["RandomItemChanceType"] = 2
	tChildrenCandy_Probability[3303140]["Reward"][1][5]["ItemChance"] = 1200
	tChildrenCandy_Probability[3303140]["Reward"][1][5]["Item_1"] = 5
	tChildrenCandy_Probability[3303140]["Reward"][1][5]["Start"] = 41
	tChildrenCandy_Probability[3303140]["Reward"][1][5]["End"] = 50
	
	tChildrenCandy_Probability[3303140]["Reward"][1][6] = {}
	tChildrenCandy_Probability[3303140]["Reward"][1][6]["RandomItemChanceType"] = 2
	tChildrenCandy_Probability[3303140]["Reward"][1][6]["ItemChance"] = 400
	tChildrenCandy_Probability[3303140]["Reward"][1][6]["Item_1"] = 6
	tChildrenCandy_Probability[3303140]["Reward"][1][6]["Start"] = 51
	tChildrenCandy_Probability[3303140]["Reward"][1][6]["End"] = 60

	tChildrenCandy_Probability[3303140]["Reward"][1][7] = {}
	tChildrenCandy_Probability[3303140]["Reward"][1][7]["RandomItemChanceType"] = 2
	tChildrenCandy_Probability[3303140]["Reward"][1][7]["ItemChance"] = 100
	tChildrenCandy_Probability[3303140]["Reward"][1][7]["Item_1"] = 7
	tChildrenCandy_Probability[3303140]["Reward"][1][7]["Start"] = 61
	tChildrenCandy_Probability[3303140]["Reward"][1][7]["End"] = 88	
	
	
	
------------------------------------------------逻辑部分-------------------------------------------------
function ChildrenCandy_ChkServer()
	if SpecialServer_ChkNoGiftServer() then
		return tChildrenCandy_ServerData["NoGiftServer"]
	else
		return tChildrenCandy_ServerData["CommonServer"]
	end
end

function ChildrenCandy_Candy(nItemId)
	-- 判断时间
	if not Sys_ChkFullTime(tChildrenCandy_Cont["Activity"]) then
		Sys_MsgBox(tChildrenCandy_Text["Msg"]["TimeOver"])
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			Sys_SaveActionFestivalLog(string.format(tChildrenCandy_Log["DelItem"],nItemId))
		end
		return
	end
	--判断赠点上限
	if Get_UserMonoEMoney() + tChildrenCandy_GiftPack["Prize"][6]["RewardEMoneyMono"]["Value"] > G_User_MaxEmoneyMono then
		User_TalkChannel2005(tChildrenCandy_Text["Msg"]["CPMono"])
		return
	end	
	
	--判断背包上限
	if not RewardTemplate_CheckSpace(tChildrenCandy_GiftPack["Prize"][4]) then
		return
	end
	
	local flat,tTable = Probabil_RandomAward(tChildrenCandy_GiftPack[nItemId],1)
	local nItem_1 = tTable[1]["tAward"][1]["Item_1"]
	
	local sLog = tChildrenCandy_Log["UseCandy"]
	RewardTemplate_UseItemAndMsg(tChildrenCandy_GiftPack["Prize"][nItem_1])
	Sys_SaveActionFestivalLog(sLog)

end

function ChildrenCandy_GiftPack(nItemId)
	if not Sys_ChkFullTime(tChildrenCandy_Cont["Activity"]) then
		Sys_MsgBox(tChildrenCandy_Text["Msg"]["PackTimeOver"])
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			Sys_SaveActionFestivalLog(string.format(tChildrenCandy_Log["DelItem"],nItemId))
		end
		return
	end
	RewardTemplate_UseItemAndMsg(tChildrenCandy_GiftPack["Prize"][nItemId])
end

function ChildrenCandy_GiftEmoney(nItemId)
	-- 判断时间
	if not Sys_ChkFullTime(tChildrenCandy_Cont["Activity"]) then
		Sys_MsgBox(tChildrenCandy_Text["Msg"]["TimeOver"])
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			Sys_SaveActionFestivalLog(string.format(tChildrenCandy_Log["DelItem"],nItemId))
		end
		return
	end
	
	--判断赠点上限
	if Get_UserMonoEMoney() + tChildrenCandy_Cont["Limit"] > G_User_MaxEmoneyMono then
		User_TalkChannel2005(tChildrenCandy_Text["Msg"]["CPMono1"])
		return
	end
--给赠点
	if Item_ChkItem(nItemId) then
		local flat,tNum = Probabil_RandomAward(tChildrenCandy_Probability[nItemId]["Reward"],1)
		local nStart = tNum[1]["tAward"][1]["Start"]
		local nEnd = tNum[1]["tAward"][1]["End"]
		local nCp = math.random(nStart,nEnd)
		local tReward = {}
		tReward["LogId"] = tChildrenCandy_Log["LogId"]
		tReward["RewardEMoneyMono"] = {}
		tReward["RewardEMoneyMono"]["Value"] = nCp
		tReward["DeleteItem"] = {}
		tReward["DeleteItem"][1] = {}
		tReward["DeleteItem"][1]["Id"] = nItemId
		-- tReward["RewardEMoneyMono"]["EmoneyLog"] = "250	4079	0	0	"..nCp.."	"
		
		RewardTemplate_UseItemAndMsg(tReward)
	end
end

--棒棒糖
function ChildrenCandy_Lollipop(nItemId)
	if not Sys_ChkFullTime(tChildrenCandy_Cont["Activity"]) then
		local tAward = CommonFunc_Copy(tChildrenCandy_GiftPack["Prize"][nItemId])
		
		local nNum = Get_CountItemType(nItemId,0)
		
		tAward["DeleteItem"][1]["ItemNum"] = nNum
		tAward["RewardItem"][1]["Attr"] = "0 "..nNum
		
		RewardTemplate_UseItemAndMsg(tAward)
	else
		NpcPosition_PathFind(20514)
	end
end

--儿童节武器外套包
function ChildrenCandy_Item3303143(nItemId)
	if not Sys_ChkFullTime(tChildrenCandy_Cont["Activity"]) then
		Sys_MsgBox(tChildrenCandy_Text["Msg"]["PackTimeOver"])
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			Sys_SaveActionFestivalLog(string.format(tChildrenCandy_Log["DelItem"],nItemId))
		end
		return
	end
--出对话
	LinkItemGossipFunc_New(nItemId,"1-1")
end

function ChildrenCandy_Item3303143_1(nItemId,nSelect)
	tItem[3303143]["Text121"] =  string.format(tChildrenCandy_Text[3303143]["Text121"],Get_ItemtypeName(nSelect))
	tItem[3303143]["OptionFunc8"] = "ChildrenCandy_Item3303143_2</N>3303143</N>"..nSelect

--出对话
	LinkItemGossipFunc_New(nItemId,"1-2")
end

function ChildrenCandy_Item3303143_2(nItemId,nSelect)
	if not Sys_ChkFullTime(tChildrenCandy_Cont["Activity"]) then
		Sys_MsgBox(tChildrenCandy_Text["Msg"]["PackTimeOver"])
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			Sys_SaveActionFestivalLog(string.format(tChildrenCandy_Log["DelItem"],nItemId))
		end
		return
	end
	tReward = {}
	tReward["LogId"] = 12000708
	tReward["RewardEffect"] = {}
	tReward["RewardEffect"]["SzObj"] = "self"
	tReward["RewardEffect"]["Effect"] = "zf2-e128"
	tReward["RewardItem"] = {}
	tReward["RewardItem"][1] = {}
	tReward["RewardItem"][1]["Id"] = nSelect
	tReward["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1"
	tReward["DeleteItem"] = {}
	tReward["DeleteItem"][1] = {}
	tReward["DeleteItem"][1]["Id"] = nItemId
	RewardTemplate_UseItemAndMsg(tReward)
end

function ChildrenCandy_Monster(nMonsterId)
	if not Sys_ChkFullTime(tChildrenCandy_Cont["Activity"]) then
		return
	end
	if not Sys_Random(tChildrenCandy_Cont["DropProb"],10000) then
		return
	end
	local nEvent = tChildrenCandy_Stc["EventType"]
	local nType =tChildrenCandy_Stc["DataType"]["Drop"]
	Task_StcReset(nEvent,nType)
	if Task_ChkStcValue(nEvent,nType,">=",tChildrenCandy_Cont["DropTime"]) then
		if Task_ChkStcValue(nEvent,nType,"==",tChildrenCandy_Cont["DropTime"]) then
			Task_AddStatistic(nEvent,nType,1,1)
			Sys_MsgBox(tChildrenCandy_Text["Msg"]["KillMax"])
		end
		return
	end
	
	if not User_CheckLeftSpace(1) then
		return
	end	
	
	Task_AddStatistic(nEvent,nType,1,1)
	Task_SetStcTimestamp(nEvent,nType,0)
	tReward = {}
	tReward["LogId"] = 12000708
	tReward["RewardEffect"] = {}
	tReward["RewardEffect"]["SzObj"] = "self"
	tReward["RewardEffect"]["Effect"] = "angelwing"
	tReward["RewardItem"] = {}
	tReward["RewardItem"][1] = {}
	tReward["RewardItem"][1]["Id"] = 3303141
	tReward["RewardItem"][1]["Attr"] = "0 1"
	RewardTemplate_UseItemAndMsg(tReward)	
	Sys_SaveActionFestivalLog(tChildrenCandy_Log["GetCandy"])
end

--兑换商店
function ChildrenCandy_ExchangeShop(nNpcId)
	if not Sys_ChkFullTime(tChildrenCandy_Cont["Activity"]) then
		return LinkNpcGossipFunc_New(nNpcId,"1-2")
	end
	User_OpenExchangeShop(nNpcId)
end

--领取糖果
function ChildrenCandy_GetCandy(nNpcId)
	if not Sys_ChkFullTime(tChildrenCandy_Cont["Activity"]) then
		return LinkNpcGossipFunc_New(nNpcId,"1-2")
	end
	local nEvent = tChildrenCandy_Stc["EventType"]
	local nType = tChildrenCandy_Stc["DataType"][nNpcId]
	Task_StcReset(nEvent,nType)

	if not Task_ChkStcValue(nEvent,nType,"==",0) then
		return LinkNpcGossipFunc_New(nNpcId,"2-1")
	end

	if not User_CheckLeftSpace(1) then
		return LinkNpcGossipFunc_New(nNpcId,"2-2")
	end	
	
	local nSysDyGlobId = tChildrenCandy_GlobalData["Id"]
	local nPos = tChildrenCandy_GlobalData["Pos"][nNpcId]
	local nData = Get_SysDynaGlobalData(nSysDyGlobId,nPos) or 0

	if Get_SysDynaGlobalData(nSysDyGlobId,nPos) >= tChildrenCandy_Cont["GiveMax"] then
		return LinkNpcGossipFunc_New(nNpcId,"2-3")
	end
	--总数量+1
	Sys_SetSynaGlobalData(nSysDyGlobId,nPos,nData+1)
	
	Task_AddStatistic(nEvent,nType,1,1)
	Task_SetStcTimestamp(nEvent,nType,0)
	
	
	tReward = {}
	tReward["LogId"] = 12000708
	tReward["RewardEffect"] = {}
	tReward["RewardEffect"]["SzObj"] = "self"
	tReward["RewardEffect"]["Effect"] = "angelwing"
	tReward["RewardItem"] = {}
	tReward["RewardItem"][1] = {}
	tReward["RewardItem"][1]["Id"] = 3303141
	tReward["RewardItem"][1]["Attr"] = "0 1"
	RewardTemplate_UseItemAndMsg(tReward)	
	Sys_SaveActionFestivalLog(tChildrenCandy_Log["GetCandy"])
	LinkNpcGossipFunc_New(nNpcId,"2-4")
end

local tChildrenCandy_GlobalData = {}
	tChildrenCandy_GlobalData["Id"] = 51383
	tChildrenCandy_GlobalData["Pos"] = {}
	tChildrenCandy_GlobalData["Pos"]["Flag"] =  0
	tChildrenCandy_GlobalData["Pos"][20515] =  1
	tChildrenCandy_GlobalData["Pos"][20516] =  2
	tChildrenCandy_GlobalData["Pos"][20517] =  3
	
function ChildrenCandy_GlobIdReset()
	if not Sys_ChkFullTime(tChildrenCandy_Cont["Activity"]) then
		return
	end

	if Get_SysDynaGlobalData(tChildrenCandy_GlobalData["Id"],tChildrenCandy_GlobalData["Pos"]["Flag"]) == 0 then
		Sys_SetSynaGlobalData(tChildrenCandy_GlobalData["Id"],tChildrenCandy_GlobalData["Pos"][20515],0)
		Sys_SetSynaGlobalData(tChildrenCandy_GlobalData["Id"],tChildrenCandy_GlobalData["Pos"][20516],0)
		Sys_SetSynaGlobalData(tChildrenCandy_GlobalData["Id"],tChildrenCandy_GlobalData["Pos"][20517],0)
		
		Sys_SetSynaGlobalData(tChildrenCandy_GlobalData["Id"],tChildrenCandy_GlobalData["Pos"]["Flag"],1)
	end	
end

function ChildrenCandy_GlobIdResetFlag()
	if not Sys_ChkFullTime(tChildrenCandy_Cont["Activity"]) then
		return
	end
	if Get_SysDynaGlobalData(tChildrenCandy_GlobalData["Id"],tChildrenCandy_GlobalData["Pos"]["Flag"]) >= 1 then
		Sys_SetSynaGlobalData(tChildrenCandy_GlobalData["Id"],tChildrenCandy_GlobalData["Pos"]["Flag"],0)
	end	
end

function ChildrenCandy_MoveNpc()
	if not Sys_ChkFullTime(tChildrenCandy_Cont["Activity"]) then
		Npc_MoveNpcPos(tChildrenCandy_MoveNpc[20515]["NpcId"],tChildrenCandy_MoveNpc[20515]["AfterActivetyMapId"],tChildrenCandy_MoveNpc[20515]["AfterActivetyPosX"],tChildrenCandy_MoveNpc[20515]["AfterActivetyPosY"])
		Npc_MoveNpcPos(tChildrenCandy_MoveNpc[20516]["NpcId"],tChildrenCandy_MoveNpc[20516]["AfterActivetyMapId"],tChildrenCandy_MoveNpc[20516]["AfterActivetyPosX"],tChildrenCandy_MoveNpc[20516]["AfterActivetyPosY"])
		return
	end
	if Sys_ChkMinute(tChildrenCandy_Cont["MoveNpc"]) then
		Npc_MoveNpcPos(tChildrenCandy_MoveNpc[20515]["NpcId"],tChildrenCandy_MoveNpc[20515]["ActivetyMapId"],tChildrenCandy_MoveNpc[20515]["ActivetyPosX"],tChildrenCandy_MoveNpc[20515]["ActivetyPosY"])
		Npc_MoveNpcPos(tChildrenCandy_MoveNpc[20516]["NpcId"],tChildrenCandy_MoveNpc[20516]["ActivetyMapId"],tChildrenCandy_MoveNpc[20516]["ActivetyPosX"],tChildrenCandy_MoveNpc[20516]["ActivetyPosY"])
	else
		Npc_MoveNpcPos(tChildrenCandy_MoveNpc[20515]["NpcId"],tChildrenCandy_MoveNpc[20515]["AfterActivetyMapId"],tChildrenCandy_MoveNpc[20515]["AfterActivetyPosX"],tChildrenCandy_MoveNpc[20515]["AfterActivetyPosY"])
		Npc_MoveNpcPos(tChildrenCandy_MoveNpc[20516]["NpcId"],tChildrenCandy_MoveNpc[20516]["AfterActivetyMapId"],tChildrenCandy_MoveNpc[20516]["AfterActivetyPosX"],tChildrenCandy_MoveNpc[20516]["AfterActivetyPosY"])
	end

end

--移动NPC至活动地图
function ChildrenCandy_MoveNpcOut(nNpcId)
	
	local nNum = ChildrenCandy_ChkServer()
	local nNpcMapId = Get_NpcMapID(nNpcId)
	local nActivetyMapId = tChildrenCandy_MoveNpc[nNpcId][nNum]["ActivetyMapId"]
	local nActivetyPosX = tChildrenCandy_MoveNpc[nNpcId][nNum]["ActivetyPosX"]
	local nActivetyPosY = tChildrenCandy_MoveNpc[nNpcId][nNum]["ActivetyPosY"]
	if Sys_ChkFullTime(tChildrenCandy_Cont["Activity"]) then
		if nNpcMapId ~= nActivetyMapId then
			Npc_MoveNpcPos(nNpcId,nActivetyMapId,nActivetyPosX,nActivetyPosY)
		end
	end
end
--移动NPC至集中营
function ChildrenCandy_MoveNpcIn(nNpcId)
	local nNum = ChildrenCandy_ChkServer()
	local nNpcMapId = Get_NpcMapID(nNpcId)
	local nAfterActivetyMapId = tChildrenCandy_MoveNpc[nNpcId][nNum]["AfterActivetyMapId"]
	local nAfterActivetyPosX = tChildrenCandy_MoveNpc[nNpcId][nNum]["AfterActivetyPosX"]
	local nAfterActivetyPosY = tChildrenCandy_MoveNpc[nNpcId][nNum]["AfterActivetyPosY"]
	if nNpcMapId ~= nActivetyMapId then
		Npc_MoveNpcPos(nNpcId,nAfterActivetyMapId,nAfterActivetyPosX,nAfterActivetyPosY)
	end
end
function ChildrenCandy_MoveNpcOutConfirm()
	ChildrenCandy_MoveNpcOut(20515)
	ChildrenCandy_MoveNpcOut(20516)
	ChildrenCandy_MoveNpcOut(20517)
end
function ChildrenCandy_MoveNpcInConfirm()
	ChildrenCandy_MoveNpcIn(20515)
	ChildrenCandy_MoveNpcIn(20516)
	ChildrenCandy_MoveNpcIn(20517)
end
------------------------------------------------NPC模块--------------------------------------------------
tNpcFace[4760] = 68
tNpcFace[4761] = 527
tNpcFace[4762] = 528
tNpcFace[4763] = 529

tNpcGossip[20514] = tNpcGossip[20514] or DefaultNpc:new{}
tNpcGossip[20515] = tNpcGossip[20515] or DefaultNpc:new{}
tNpcGossip[20516] = tNpcGossip[20516] or DefaultNpc:new{}
tNpcGossip[20517] = tNpcGossip[20517] or DefaultNpc:new{}
tNpcGossip[20514]["OptionHidden"] = 1
tNpcGossip[20515]["OptionHidden"] = 1
tNpcGossip[20516]["OptionHidden"] = 1
tNpcGossip[20517]["OptionHidden"] = 1

--糖果大使马小跳-活动前
tNpcGossip[20514]["Text1-1"] = {111,112,113,114,115,116}
tNpcGossip[20514]["tOption1-1"] = {111}
tNpcGossip[20514]["Text111"] = tChildrenCandy_Text[20514]["Text111"]
tNpcGossip[20514]["Text112"] = tChildrenCandy_Text[20514]["Text112"]
tNpcGossip[20514]["Text113"] = tChildrenCandy_Text[20514]["Text113"]
tNpcGossip[20514]["Text114"] = tChildrenCandy_Text[20514]["Text114"]
tNpcGossip[20514]["Text115"] = tChildrenCandy_Text[20514]["Text115"]
tNpcGossip[20514]["Text116"] = tChildrenCandy_Text[20514]["Text116"]
tNpcGossip[20514]["Option111"] = tChildrenCandy_Text[20514]["Option111"]
tNpcGossip[20514]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tChildrenCandy_Cont["BeforeActivity"])
end

--糖果大使马小跳-活动后
tNpcGossip[20514]["Text1-2"] = {121,122,123,124}
tNpcGossip[20514]["tOption1-2"] = {121}
tNpcGossip[20514]["Text121"] = tChildrenCandy_Text[20514]["Text121"]
tNpcGossip[20514]["Text122"] = tChildrenCandy_Text[20514]["Text122"]
tNpcGossip[20514]["Text123"] = tChildrenCandy_Text[20514]["Text123"]
tNpcGossip[20514]["Text124"] = tChildrenCandy_Text[20514]["Text124"]
tNpcGossip[20514]["Option121"] = tChildrenCandy_Text[20514]["Option121"]
tNpcGossip[20514]["ChkFunc1-2"] = function ()
	return not Sys_ChkFullTime(tChildrenCandy_Cont["Activity"])
end

--糖果大使马小跳-活动
tNpcGossip[20514]["Text1-3"] = {131,132,133,134,135,136,137}
tNpcGossip[20514]["tOption1-3"] = {131}
tNpcGossip[20514]["Text131"] = tChildrenCandy_Text[20514]["Text131"]
tNpcGossip[20514]["Text132"] = tChildrenCandy_Text[20514]["Text132"]
tNpcGossip[20514]["Text133"] = tChildrenCandy_Text[20514]["Text133"]
tNpcGossip[20514]["Text134"] = tChildrenCandy_Text[20514]["Text134"]
tNpcGossip[20514]["Text135"] = tChildrenCandy_Text[20514]["Text135"]
tNpcGossip[20514]["Text136"] = tChildrenCandy_Text[20514]["Text136"]
tNpcGossip[20514]["Text137"] = tChildrenCandy_Text[20514]["Text137"]
tNpcGossip[20514]["Option131"] = tChildrenCandy_Text[20514]["Option131"]
tNpcGossip[20514]["ChkFunc1-3"] = function ()
	return Sys_ChkFullTime(tChildrenCandy_Cont["Activity"]) and (not User_JudgeLevelAndMetempsychosis(tChildrenCandy_Cont["Level"],tChildrenCandy_Cont["Metempsychosis"]))
end
--糖果大使马小跳-活动
tNpcGossip[20514]["Text1-4"] = {141,142,143,144,145,146,147}
tNpcGossip[20514]["tOption1-4"] = {141,142,143}
tNpcGossip[20514]["Text141"] = tChildrenCandy_Text[20514]["Text141"]
tNpcGossip[20514]["Text142"] = tChildrenCandy_Text[20514]["Text142"]
tNpcGossip[20514]["Text143"] = tChildrenCandy_Text[20514]["Text143"]
tNpcGossip[20514]["Text144"] = tChildrenCandy_Text[20514]["Text144"]
tNpcGossip[20514]["Text145"] = tChildrenCandy_Text[20514]["Text145"]
tNpcGossip[20514]["Text146"] = tChildrenCandy_Text[20514]["Text146"]
tNpcGossip[20514]["Text147"] = tChildrenCandy_Text[20514]["Text147"]
tNpcGossip[20514]["Option141"] = tChildrenCandy_Text[20514]["Option141"]
tNpcGossip[20514]["Option142"] = tChildrenCandy_Text[20514]["Option142"]
tNpcGossip[20514]["Option143"] = tChildrenCandy_Text[20514]["Option143"]
tNpcGossip[20514]["OptionFunc141"] = "ChildrenCandy_ExchangeShop</N>20514"
tNpcGossip[20514]["OptionPoint142"] = "1-5"
tNpcGossip[20514]["ChkFunc1-4"] = function ()
	return true
end

--糖果大使马小跳-活动规则
tNpcGossip[20514]["Text1-5"] = {151,152,153,154,155,156,157}
tNpcGossip[20514]["tOption1-5"] = {151}
tNpcGossip[20514]["Text151"] = tChildrenCandy_Text[20514]["Text151"]
tNpcGossip[20514]["Text152"] = tChildrenCandy_Text[20514]["Text152"]
tNpcGossip[20514]["Text153"] = tChildrenCandy_Text[20514]["Text153"]
tNpcGossip[20514]["Text154"] = tChildrenCandy_Text[20514]["Text154"]
tNpcGossip[20514]["Text155"] = tChildrenCandy_Text[20514]["Text155"]
tNpcGossip[20514]["Text156"] = tChildrenCandy_Text[20514]["Text156"]
tNpcGossip[20514]["Text157"] = tChildrenCandy_Text[20514]["Text157"]
tNpcGossip[20514]["Option151"] = tChildrenCandy_Text[20514]["Option151"]
tNpcGossip[20514]["OptionFunc151"] = "LinkNpcMain"

--礼物大使小红帽-活动前
tNpcGossip[20515]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[20515]["tOption1-1"] = {111}
tNpcGossip[20515]["Text111"] = tChildrenCandy_Text[20515]["Text111"]
tNpcGossip[20515]["Text112"] = tChildrenCandy_Text[20515]["Text112"]
tNpcGossip[20515]["Text113"] = tChildrenCandy_Text[20515]["Text113"]
tNpcGossip[20515]["Text114"] = tChildrenCandy_Text[20515]["Text114"]
tNpcGossip[20515]["Text115"] = tChildrenCandy_Text[20515]["Text115"]
tNpcGossip[20515]["Option111"] = tChildrenCandy_Text[20515]["Option111"]
tNpcGossip[20515]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tChildrenCandy_Cont["BeforeActivity"])
end

--礼物大使小红帽-活动后
tNpcGossip[20515]["Text1-2"] = {121,122}
tNpcGossip[20515]["tOption1-2"] = {121}
tNpcGossip[20515]["Text121"] = tChildrenCandy_Text[20515]["Text121"]
tNpcGossip[20515]["Text122"] = tChildrenCandy_Text[20515]["Text122"]
tNpcGossip[20515]["Option121"] = tChildrenCandy_Text[20515]["Option121"]
tNpcGossip[20515]["ChkFunc1-2"] = function ()
	return not Sys_ChkFullTime(tChildrenCandy_Cont["Activity"])
end

--礼物大使小红帽-等级不满足条件
tNpcGossip[20515]["Text1-3"] = {131,132,133,134,135}
tNpcGossip[20515]["tOption1-3"] = {131}
tNpcGossip[20515]["Text131"] = tChildrenCandy_Text[20515]["Text131"]
tNpcGossip[20515]["Text132"] = tChildrenCandy_Text[20515]["Text132"]
tNpcGossip[20515]["Text133"] = tChildrenCandy_Text[20515]["Text133"]
tNpcGossip[20515]["Text134"] = tChildrenCandy_Text[20515]["Text134"]
tNpcGossip[20515]["Text135"] = tChildrenCandy_Text[20515]["Text135"]
tNpcGossip[20515]["Option131"] = tChildrenCandy_Text[20515]["Option131"]
tNpcGossip[20515]["ChkFunc1-3"] = function ()
	return Sys_ChkFullTime(tChildrenCandy_Cont["Activity"]) and (not User_JudgeLevelAndMetempsychosis(tChildrenCandy_Cont["Level"],tChildrenCandy_Cont["Metempsychosis"]))
end
--礼物大使小红帽-等级满足条件
tNpcGossip[20515]["Text1-4"] = {141,142}
tNpcGossip[20515]["tOption1-4"] = {141,142}
tNpcGossip[20515]["Text141"] = tChildrenCandy_Text[20515]["Text141"]
tNpcGossip[20515]["Text142"] = tChildrenCandy_Text[20515]["Text142"]
tNpcGossip[20515]["Option141"] = tChildrenCandy_Text[20515]["Option141"]
tNpcGossip[20515]["Option142"] = tChildrenCandy_Text[20515]["Option142"]
tNpcGossip[20515]["OptionFunc141"] = "ChildrenCandy_GetCandy</N>20515"

tNpcGossip[20515]["Text2-1"] = {211,212}
tNpcGossip[20515]["tOption2-1"] = {211}
tNpcGossip[20515]["Text211"] = tChildrenCandy_Text[20515]["Text211"]
tNpcGossip[20515]["Text212"] = tChildrenCandy_Text[20515]["Text212"]
tNpcGossip[20515]["Option211"] = tChildrenCandy_Text[20515]["Option211"]

tNpcGossip[20515]["Text2-2"] = {221,222}
tNpcGossip[20515]["tOption2-2"] = {221}
tNpcGossip[20515]["Text221"] = tChildrenCandy_Text[20515]["Text221"]
tNpcGossip[20515]["Text222"] = tChildrenCandy_Text[20515]["Text222"]
tNpcGossip[20515]["Option221"] = tChildrenCandy_Text[20515]["Option221"]

tNpcGossip[20515]["Text2-3"] = {231,232}
tNpcGossip[20515]["tOption2-3"] = {231}
tNpcGossip[20515]["Text231"] = tChildrenCandy_Text[20515]["Text231"]
tNpcGossip[20515]["Text232"] = tChildrenCandy_Text[20515]["Text232"]
tNpcGossip[20515]["Option231"] = tChildrenCandy_Text[20515]["Option231"]

tNpcGossip[20515]["Text2-4"] = {241,242}
tNpcGossip[20515]["tOption2-4"] = {241}
tNpcGossip[20515]["Text241"] = tChildrenCandy_Text[20515]["Text241"]
tNpcGossip[20515]["Text242"] = tChildrenCandy_Text[20515]["Text242"]
tNpcGossip[20515]["Option241"] = tChildrenCandy_Text[20515]["Option241"]

--礼物大使兔斯基-活动前
tNpcGossip[20516]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[20516]["tOption1-1"] = {111}
tNpcGossip[20516]["Text111"] = tChildrenCandy_Text[20516]["Text111"]
tNpcGossip[20516]["Text112"] = tChildrenCandy_Text[20516]["Text112"]
tNpcGossip[20516]["Text113"] = tChildrenCandy_Text[20516]["Text113"]
tNpcGossip[20516]["Text114"] = tChildrenCandy_Text[20516]["Text114"]
tNpcGossip[20516]["Text115"] = tChildrenCandy_Text[20516]["Text115"]
tNpcGossip[20516]["Option111"] = tChildrenCandy_Text[20516]["Option111"]
tNpcGossip[20516]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tChildrenCandy_Cont["BeforeActivity"])
end

--礼物大使兔斯基-活动后
tNpcGossip[20516]["Text1-2"] = {121,122}
tNpcGossip[20516]["tOption1-2"] = {121}
tNpcGossip[20516]["Text121"] = tChildrenCandy_Text[20516]["Text121"]
tNpcGossip[20516]["Text122"] = tChildrenCandy_Text[20516]["Text122"]
tNpcGossip[20516]["Option121"] = tChildrenCandy_Text[20516]["Option121"]
tNpcGossip[20516]["ChkFunc1-2"] = function ()
	return not Sys_ChkFullTime(tChildrenCandy_Cont["Activity"])
end

--礼物大使兔斯基-等级不满足条件
tNpcGossip[20516]["Text1-3"] = {131,132,133,134,135}
tNpcGossip[20516]["tOption1-3"] = {131}
tNpcGossip[20516]["Text131"] = tChildrenCandy_Text[20516]["Text131"]
tNpcGossip[20516]["Text132"] = tChildrenCandy_Text[20516]["Text132"]
tNpcGossip[20516]["Text133"] = tChildrenCandy_Text[20516]["Text133"]
tNpcGossip[20516]["Text134"] = tChildrenCandy_Text[20516]["Text134"]
tNpcGossip[20516]["Text135"] = tChildrenCandy_Text[20516]["Text135"]
tNpcGossip[20516]["Option131"] = tChildrenCandy_Text[20516]["Option131"]
tNpcGossip[20516]["ChkFunc1-3"] = function ()
	return Sys_ChkFullTime(tChildrenCandy_Cont["Activity"]) and (not User_JudgeLevelAndMetempsychosis(tChildrenCandy_Cont["Level"],tChildrenCandy_Cont["Metempsychosis"]))
end
--礼物大使兔斯基-等级满足条件
tNpcGossip[20516]["Text1-4"] = {141,142}
tNpcGossip[20516]["tOption1-4"] = {141,142}
tNpcGossip[20516]["Text141"] = tChildrenCandy_Text[20516]["Text141"]
tNpcGossip[20516]["Text142"] = tChildrenCandy_Text[20516]["Text142"]
tNpcGossip[20516]["Option141"] = tChildrenCandy_Text[20516]["Option141"]
tNpcGossip[20516]["Option142"] = tChildrenCandy_Text[20516]["Option142"]
tNpcGossip[20516]["OptionFunc141"] = "ChildrenCandy_GetCandy</N>20516"

tNpcGossip[20516]["Text2-1"] = {211,212}
tNpcGossip[20516]["tOption2-1"] = {211}
tNpcGossip[20516]["Text211"] = tChildrenCandy_Text[20516]["Text211"]
tNpcGossip[20516]["Text212"] = tChildrenCandy_Text[20516]["Text212"]
tNpcGossip[20516]["Option211"] = tChildrenCandy_Text[20516]["Option211"]

tNpcGossip[20516]["Text2-2"] = {221,222}
tNpcGossip[20516]["tOption2-2"] = {221}
tNpcGossip[20516]["Text221"] = tChildrenCandy_Text[20516]["Text221"]
tNpcGossip[20516]["Text222"] = tChildrenCandy_Text[20516]["Text222"]
tNpcGossip[20516]["Option221"] = tChildrenCandy_Text[20516]["Option221"]

tNpcGossip[20516]["Text2-3"] = {231,232}
tNpcGossip[20516]["tOption2-3"] = {231}
tNpcGossip[20516]["Text231"] = tChildrenCandy_Text[20516]["Text231"]
tNpcGossip[20516]["Text232"] = tChildrenCandy_Text[20516]["Text232"]
tNpcGossip[20516]["Option231"] = tChildrenCandy_Text[20516]["Option231"]

tNpcGossip[20516]["Text2-4"] = {241,242}
tNpcGossip[20516]["tOption2-4"] = {241}
tNpcGossip[20516]["Text241"] = tChildrenCandy_Text[20516]["Text241"]
tNpcGossip[20516]["Text242"] = tChildrenCandy_Text[20516]["Text242"]
tNpcGossip[20516]["Option241"] = tChildrenCandy_Text[20516]["Option241"]

--礼物大使小空空-活动前
tNpcGossip[20517]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[20517]["tOption1-1"] = {111}
tNpcGossip[20517]["Text111"] = tChildrenCandy_Text[20517]["Text111"]
tNpcGossip[20517]["Text112"] = tChildrenCandy_Text[20517]["Text112"]
tNpcGossip[20517]["Text113"] = tChildrenCandy_Text[20517]["Text113"]
tNpcGossip[20517]["Text114"] = tChildrenCandy_Text[20517]["Text114"]
tNpcGossip[20517]["Text115"] = tChildrenCandy_Text[20517]["Text115"]
tNpcGossip[20517]["Option111"] = tChildrenCandy_Text[20517]["Option111"]
tNpcGossip[20517]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tChildrenCandy_Cont["BeforeActivity"])
end

--礼物大使小空空-活动后
tNpcGossip[20517]["Text1-2"] = {121,122}
tNpcGossip[20517]["tOption1-2"] = {121}
tNpcGossip[20517]["Text121"] = tChildrenCandy_Text[20517]["Text121"]
tNpcGossip[20517]["Text122"] = tChildrenCandy_Text[20517]["Text122"]
tNpcGossip[20517]["Option121"] = tChildrenCandy_Text[20517]["Option121"]
tNpcGossip[20517]["ChkFunc1-2"] = function ()
	return not Sys_ChkFullTime(tChildrenCandy_Cont["Activity"])
end

--礼物大使小空空-等级不满足条件
tNpcGossip[20517]["Text1-3"] = {131,132,133,134,135}
tNpcGossip[20517]["tOption1-3"] = {131}
tNpcGossip[20517]["Text131"] = tChildrenCandy_Text[20517]["Text131"]
tNpcGossip[20517]["Text132"] = tChildrenCandy_Text[20517]["Text132"]
tNpcGossip[20517]["Text133"] = tChildrenCandy_Text[20517]["Text133"]
tNpcGossip[20517]["Text134"] = tChildrenCandy_Text[20517]["Text134"]
tNpcGossip[20517]["Text135"] = tChildrenCandy_Text[20517]["Text135"]
tNpcGossip[20517]["Option131"] = tChildrenCandy_Text[20517]["Option131"]
tNpcGossip[20517]["ChkFunc1-3"] = function ()
	return Sys_ChkFullTime(tChildrenCandy_Cont["Activity"]) and (not User_JudgeLevelAndMetempsychosis(tChildrenCandy_Cont["Level"],tChildrenCandy_Cont["Metempsychosis"]))
end
--礼物大使小空空-等级满足条件
tNpcGossip[20517]["Text1-4"] = {141,142}
tNpcGossip[20517]["tOption1-4"] = {141,142}
tNpcGossip[20517]["Text141"] = tChildrenCandy_Text[20517]["Text141"]
tNpcGossip[20517]["Text142"] = tChildrenCandy_Text[20517]["Text142"]
tNpcGossip[20517]["Option141"] = tChildrenCandy_Text[20517]["Option141"]
tNpcGossip[20517]["Option142"] = tChildrenCandy_Text[20517]["Option142"]
tNpcGossip[20517]["OptionFunc141"] = "ChildrenCandy_GetCandy</N>20517"

tNpcGossip[20517]["Text2-1"] = {211,212}
tNpcGossip[20517]["tOption2-1"] = {211}
tNpcGossip[20517]["Text211"] = tChildrenCandy_Text[20517]["Text211"]
tNpcGossip[20517]["Text212"] = tChildrenCandy_Text[20517]["Text212"]
tNpcGossip[20517]["Option211"] = tChildrenCandy_Text[20517]["Option211"]

tNpcGossip[20517]["Text2-2"] = {221,222}
tNpcGossip[20517]["tOption2-2"] = {221}
tNpcGossip[20517]["Text221"] = tChildrenCandy_Text[20517]["Text221"]
tNpcGossip[20517]["Text222"] = tChildrenCandy_Text[20517]["Text222"]
tNpcGossip[20517]["Option221"] = tChildrenCandy_Text[20517]["Option221"]

tNpcGossip[20517]["Text2-3"] = {231,232}
tNpcGossip[20517]["tOption2-3"] = {231}
tNpcGossip[20517]["Text231"] = tChildrenCandy_Text[20517]["Text231"]
tNpcGossip[20517]["Text232"] = tChildrenCandy_Text[20517]["Text232"]
tNpcGossip[20517]["Option231"] = tChildrenCandy_Text[20517]["Option231"]

tNpcGossip[20517]["Text2-4"] = {241,242}
tNpcGossip[20517]["tOption2-4"] = {241}
tNpcGossip[20517]["Text241"] = tChildrenCandy_Text[20517]["Text241"]
tNpcGossip[20517]["Text242"] = tChildrenCandy_Text[20517]["Text242"]
tNpcGossip[20517]["Option241"] = tChildrenCandy_Text[20517]["Option241"]



------------------------------------------------itemtype模块--------------------------------------------------
tItemFace[3307912] = 1423
tItem[3303141] = tItem[3303141] or {}
tItem[3303141]["Function"] = function(nItemId,sItemName)
	ChildrenCandy_Candy(nItemId)
end

tItem[3303140] = tItem[3303140] or {}
tItem[3303140]["Function"] = function(nItemId,sItemName)
	ChildrenCandy_GiftEmoney(nItemId)
end

-- tItem[3303137] = tItem[3303137] or {}
-- tItem[3303137]["Function"] = function(nItemId,sItemName)
	-- ChildrenCandy_GiftPack(nItemId)
-- end
-- tItem[3303138] = tItem[3303138] or {}
-- tItem[3303138]["Function"] = function(nItemId,sItemName)
	-- ChildrenCandy_GiftPack(nItemId)
-- end
-- tItem[3303139] = tItem[3303139] or {}
-- tItem[3303139]["Function"] = function(nItemId,sItemName)
	-- ChildrenCandy_GiftPack(nItemId)
-- end

tItem[3303142] = tItem[3303142] or {}
tItem[3303142]["Function"] = function(nItemId,sItemName)
	ChildrenCandy_Lollipop(nItemId)
end

tItemFace[3303143] = 611
tItem[3303143] = tItem[3303143] or {}
tItem[3303143]["Function"] = function(nItemId,sItemName)
	ChildrenCandy_Item3303143(nItemId)
end

tItem[3303143]["Text1-1"] = {111}
tItem[3303143]["Text111"] =  tChildrenCandy_Text[3303143]["Text111"]
tItem[3303143]["tOption1-1"] = {1,2,3,4,5,6,7}
tItem[3303143]["Option1"] = tChildrenCandy_Text[3303143]["Option1"]
tItem[3303143]["Option2"] = tChildrenCandy_Text[3303143]["Option2"]
tItem[3303143]["Option3"] = tChildrenCandy_Text[3303143]["Option3"]
tItem[3303143]["Option4"] = tChildrenCandy_Text[3303143]["Option4"]
tItem[3303143]["Option5"] = tChildrenCandy_Text[3303143]["Option5"]
tItem[3303143]["Option6"] = tChildrenCandy_Text[3303143]["Option6"]
tItem[3303143]["Option7"] = tChildrenCandy_Text[3303143]["Option7"]

tItem[3303143]["OptionFunc1"] = "ChildrenCandy_Item3303143_1</N>3303143</N>350009"
tItem[3303143]["OptionFunc2"] = "ChildrenCandy_Item3303143_1</N>3303143</N>350010"
tItem[3303143]["OptionFunc3"] = "ChildrenCandy_Item3303143_1</N>3303143</N>360007"
tItem[3303143]["OptionFunc4"] = "ChildrenCandy_Item3303143_1</N>3303143</N>360014"
tItem[3303143]["OptionFunc5"] = "ChildrenCandy_Item3303143_1</N>3303143</N>360013"
tItem[3303143]["OptionFunc6"] = "ChildrenCandy_Item3303143_1</N>3303143</N>360002"
tItem[3303143]["OptionFunc7"] = "ChildrenCandy_Item3303143_1</N>3303143</N>360009"

tItem[3303143]["Text1-2"] = {121}
tItem[3303143]["Text121"] =  tChildrenCandy_Text[3303143]["Text121"]
tItem[3303143]["tOption1-2"] = {8,9}
tItem[3303143]["Option8"] = tChildrenCandy_Text[3303143]["Option8"]
tItem[3303143]["Option9"] = tChildrenCandy_Text[3303143]["Option9"]
tItem[3303143]["OptionFunc8"] = "ChildrenCandy_Item3303143_2</N>3303143</N>"
tItem[3303143]["OptionFunc9"] = "ChildrenCandy_Item3303143</N>3303143"

--3307913 3307914 3307915
for i = 3307913, 3307915 do
	tItem[i] = tItem[i] or {}
	tItem[i]["Function"] = function(nItemId,sItemName)
		ChildrenCandy_GiftPack(nItemId)
	end
end

local	tChildrenCandy_Monster = {}
	tChildrenCandy_Monster["ActivityTime"] = tChildrenCandy_Cont["Activity"]
	tChildrenCandy_Monster["Function"] = ChildrenCandy_Monster
	tChildrenCandy_Monster["Area"] = {1,2,3,4,5,6,7,8,9,10,11}
	table.insert(tMonsterDrop_AreaLoad,tChildrenCandy_Monster)
	
-- 激情服 击杀片区妖匪 概率得 糖果礼包
local tChildrenCandy_Monster_NoGift = {}
tChildrenCandy_Monster_NoGift["ActivityTime"] = tChildrenCandy_Cont["Activity"]
tChildrenCandy_Monster_NoGift["Function"]= ChildrenCandy_Monster
tChildrenCandy_Monster_NoGift["MonsterId"]= {4833,4834,4835,4836,4838,4839,4840,4841,4868,4842,4843,4844,4845,4869,4870,4846,4847,4848,4849,4871,
	4850,4851,4852,4853,4854,4872,4874,4855,4856,4857,4858,4873,4875,4876,4877,4878,4879,4859,4860,4862,4863,4865,4867}
table.insert(tMonsterDrop_AreaLoad_NoGift,tChildrenCandy_Monster_NoGift)
	
	
--时间函数触发
-- tOntimerMin_HM[0000] = tOntimerMin_HM[0000] or {}
-- table.insert(tOntimerMin_HM[0000],ChildrenCandy_GlobIdReset)
-- tOntimerMin_HM[0001] = tOntimerMin_HM[0001] or {}
-- table.insert(tOntimerMin_HM[0001],ChildrenCandy_GlobIdReset)
-- tOntimerMin_HM[0002] = tOntimerMin_HM[0002] or {}
-- table.insert(tOntimerMin_HM[0002],ChildrenCandy_GlobIdResetFlag)
-- tOntimerMin_HM[0003] = tOntimerMin_HM[0003] or {}
-- table.insert(tOntimerMin_HM[0003],ChildrenCandy_GlobIdResetFlag)	



-- 时间函数触发
-- tOntimerMin_M[00] = tOntimerMin_M[00] or {}
-- tOntimerMin_M[01] = tOntimerMin_M[01] or {}
-- tOntimerMin_M[02] = tOntimerMin_M[02] or {}
-- tOntimerMin_M[03] = tOntimerMin_M[03] or {}
-- tOntimerMin_M[04] = tOntimerMin_M[04] or {}
-- tOntimerMin_M[05] = tOntimerMin_M[05] or {}
-- tOntimerMin_M[06] = tOntimerMin_M[06] or {}
-- tOntimerMin_M[07] = tOntimerMin_M[07] or {}
-- tOntimerMin_M[08] = tOntimerMin_M[08] or {}
-- tOntimerMin_M[09] = tOntimerMin_M[09] or {}

-- table.insert(tOntimerMin_M[00],ChildrenCandy_MoveNpc)	
-- table.insert(tOntimerMin_M[01],ChildrenCandy_MoveNpc)	
-- table.insert(tOntimerMin_M[02],ChildrenCandy_MoveNpc)	
-- table.insert(tOntimerMin_M[03],ChildrenCandy_MoveNpc)	
-- table.insert(tOntimerMin_M[04],ChildrenCandy_MoveNpc)	
-- table.insert(tOntimerMin_M[05],ChildrenCandy_MoveNpc)	
-- table.insert(tOntimerMin_M[06],ChildrenCandy_MoveNpc)	
-- table.insert(tOntimerMin_M[07],ChildrenCandy_MoveNpc)	
-- table.insert(tOntimerMin_M[08],ChildrenCandy_MoveNpc)	
-- table.insert(tOntimerMin_M[09],ChildrenCandy_MoveNpc)	

local tFChildrenCandy_OnTime = {}
	--移出NPC
	tFChildrenCandy_OnTime[1] = {}
	tFChildrenCandy_OnTime[1]["Type"] = 1
	tFChildrenCandy_OnTime[1]["TimeType"] = 5
	tFChildrenCandy_OnTime[1]["Time"] = "00 04"
	tFChildrenCandy_OnTime[1]["Func"] = ChildrenCandy_MoveNpcOutConfirm
	--移入NPC
	tFChildrenCandy_OnTime[2] = {}
	tFChildrenCandy_OnTime[2]["Type"] = 1
	tFChildrenCandy_OnTime[2]["TimeType"] = 5
	tFChildrenCandy_OnTime[2]["Time"] = "05 09"
	tFChildrenCandy_OnTime[2]["Func"] = ChildrenCandy_MoveNpcInConfirm
	--重置动态码
	tFChildrenCandy_OnTime[3] = {}
	tFChildrenCandy_OnTime[3]["Type"] = 2
	tFChildrenCandy_OnTime[3]["TimeType"] = 4
	tFChildrenCandy_OnTime[3]["Time"] = "00:00 00:01"
	tFChildrenCandy_OnTime[3]["Func"] = ChildrenCandy_GlobIdReset
	--重置动态码
	tFChildrenCandy_OnTime[4] = {}
	tFChildrenCandy_OnTime[4]["Type"] = 2
	tFChildrenCandy_OnTime[4]["TimeType"] = 4
	tFChildrenCandy_OnTime[4]["Time"] = "00:02 00:03"
	tFChildrenCandy_OnTime[4]["Func"] = ChildrenCandy_GlobIdResetFlag
table.insert(tSystemTime_InitialData,tFChildrenCandy_OnTime[1])
table.insert(tSystemTime_InitialData,tFChildrenCandy_OnTime[2])
table.insert(tSystemTime_InitialData,tFChildrenCandy_OnTime[3])
table.insert(tSystemTime_InitialData,tFChildrenCandy_OnTime[4])



