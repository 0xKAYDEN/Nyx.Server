------------------------------------------------------------------------------------
--Name:		200117[简体征服][活动脚本]百鬼夜行活动制作
--Purpose:	百鬼新功能活动
--Creator: 	黄啸
--Created:	2020/01/17
------------------------------------------------------------------------------------
--前缀HundredMonsterGo_
--lua.ini，41704
--logid:12001840

----------------------------------数据部分配置----------------------------------

local tHundredMonsterGo_Time = {}
tHundredMonsterGo_Time["Before"] = tActivityTime["HundredMonsterGo"]["BeforActivity"]
tHundredMonsterGo_Time["Active"] = tActivityTime["HundredMonsterGo"]["NowActivity"]

local tHundredMonsterGo_MoneyAll = {}
tHundredMonsterGo_MoneyAll["Money"] = {}
--金币
tHundredMonsterGo_MoneyAll["Money"][1] = 100000
tHundredMonsterGo_MoneyAll["Money"][2] = 1000000
--赠点
tHundredMonsterGo_MoneyAll["Money"][3] = 500
--天石
tHundredMonsterGo_MoneyAll["Money"][4] = 200

tHundredMonsterGo_MoneyAll["LogId"] = {}
tHundredMonsterGo_MoneyAll["LogId"][1] = "0,0,1[1],%d,12001840,1,0,0"
tHundredMonsterGo_MoneyAll["LogId"][2] = "0,0,1[2],%d,12001840,1,0,0"
tHundredMonsterGo_MoneyAll["LogId"][3] = "0,0,1[3],%d,12001840,1,0,0"

--礼包打开
local tHundredMonsterGo_AwardItem = {}

	-- ===5-starMountSelectionPack（赠）
	-- ===索引: tHundredMonsterGo_AwardItem[3316031]
	-- ===删除: 3316031,1

tHundredMonsterGo_AwardItem[3316031] = {}
tHundredMonsterGo_AwardItem[3316031][1] = {}
tHundredMonsterGo_AwardItem[3316031][1]["DeleteItem"] = {}
tHundredMonsterGo_AwardItem[3316031][1]["DeleteItem"][1] = {}
tHundredMonsterGo_AwardItem[3316031][1]["DeleteItem"][1]["Id"] = 3316031  -- 【库】5-starMountSelectionPack[属性:9]
tHundredMonsterGo_AwardItem[3316031][1]["RewardItem"] = {}
tHundredMonsterGo_AwardItem[3316031][1]["RewardItem"][1] = {} 
tHundredMonsterGo_AwardItem[3316031][1]["RewardItem"][1]["Id"] = 200626  -- GiantFish(Ripple)[200626][属性:8][叠加:0][金币:0], 【表格】GiantFish(Ripple)（赠）
tHundredMonsterGo_AwardItem[3316031][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
tHundredMonsterGo_AwardItem[3316031][1]["RewardEffect"] = {}
tHundredMonsterGo_AwardItem[3316031][1]["RewardEffect"]["Effect"] = "angelwing"
tHundredMonsterGo_AwardItem[3316031][1]["LogId"] = 12001840
tHundredMonsterGo_AwardItem[3316031][2] = {}
tHundredMonsterGo_AwardItem[3316031][2]["DeleteItem"] = {}
tHundredMonsterGo_AwardItem[3316031][2]["DeleteItem"][1] = {}
tHundredMonsterGo_AwardItem[3316031][2]["DeleteItem"][1]["Id"] = 3316031 -- 【库】5-starMountSelectionPack[属性:9]
tHundredMonsterGo_AwardItem[3316031][2]["RewardItem"] = {}
tHundredMonsterGo_AwardItem[3316031][2]["RewardItem"][1] = {} 
tHundredMonsterGo_AwardItem[3316031][2]["RewardItem"][1]["Id"] = 200596 -- CelestialFox(Fantasy)[200596][属性:8][叠加:0][金币:0], 【表格】CelestialFox(Fantasy)（赠）
tHundredMonsterGo_AwardItem[3316031][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
tHundredMonsterGo_AwardItem[3316031][2]["RewardEffect"] = {}
tHundredMonsterGo_AwardItem[3316031][2]["RewardEffect"]["Effect"] = "angelwing"
tHundredMonsterGo_AwardItem[3316031][2]["LogId"] = 12001840
tHundredMonsterGo_AwardItem[3316031][3] = {}
tHundredMonsterGo_AwardItem[3316031][3]["DeleteItem"] = {}
tHundredMonsterGo_AwardItem[3316031][3]["DeleteItem"][1] = {}
tHundredMonsterGo_AwardItem[3316031][3]["DeleteItem"][1]["Id"] = 3316031 -- 【库】5-starMountSelectionPack[属性:9]
tHundredMonsterGo_AwardItem[3316031][3]["RewardItem"] = {}
tHundredMonsterGo_AwardItem[3316031][3]["RewardItem"][1] = {} 
tHundredMonsterGo_AwardItem[3316031][3]["RewardItem"][1]["Id"] = 200580 -- MythicBeast[200580][属性:8][叠加:0][金币:0], 【表格】MythicBeast（赠）
tHundredMonsterGo_AwardItem[3316031][3]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
tHundredMonsterGo_AwardItem[3316031][3]["RewardEffect"] = {}
tHundredMonsterGo_AwardItem[3316031][3]["RewardEffect"]["Effect"] = "angelwing"
tHundredMonsterGo_AwardItem[3316031][3]["LogId"] = 12001840

--GhostSpirit和GhostBreath礼包打开

	-- ===5GhostSpiritsPack
	-- ===索引: tHundredMonsterGo_AwardItem[3316034]
	-- ===删除: 3316034,1

tHundredMonsterGo_AwardItem[3316034] = {}
tHundredMonsterGo_AwardItem[3316034]["DeleteItem"] = {}
tHundredMonsterGo_AwardItem[3316034]["DeleteItem"][1] = {}
tHundredMonsterGo_AwardItem[3316034]["DeleteItem"][1]["Id"] = 3316034 -- 【库】5GhostSpiritsPack[属性:8]
tHundredMonsterGo_AwardItem[3316034]["RewardItem"] = {}
tHundredMonsterGo_AwardItem[3316034]["RewardItem"][1] = {} 
tHundredMonsterGo_AwardItem[3316034]["RewardItem"][1]["Id"] = 3316032 -- GhostSpirit[3316032][属性:8][叠加:10000][金币:0], 【表格】GhostSpirit
tHundredMonsterGo_AwardItem[3316034]["RewardItem"][1]["Attr"] = "0 5"
tHundredMonsterGo_AwardItem[3316034]["RewardEffect"] = {}
tHundredMonsterGo_AwardItem[3316034]["RewardEffect"]["Effect"] = "angelwing"
tHundredMonsterGo_AwardItem[3316034]["LogId"] = 12001840

	-- ===10GhostSpiritsPack
	-- ===索引: tHundredMonsterGo_AwardItem[3316035]
	-- ===删除: 3316035,1

tHundredMonsterGo_AwardItem[3316035] = {}
tHundredMonsterGo_AwardItem[3316035]["DeleteItem"] = {}
tHundredMonsterGo_AwardItem[3316035]["DeleteItem"][1] = {}
tHundredMonsterGo_AwardItem[3316035]["DeleteItem"][1]["Id"] = 3316035 -- 【库】10GhostSpiritsPack[属性:8]
tHundredMonsterGo_AwardItem[3316035]["RewardItem"] = {}
tHundredMonsterGo_AwardItem[3316035]["RewardItem"][1] = {} 
tHundredMonsterGo_AwardItem[3316035]["RewardItem"][1]["Id"] = 3316032 -- GhostSpirit[3316032][属性:8][叠加:10000[金币:0], 【表格】GhostSpirit
tHundredMonsterGo_AwardItem[3316035]["RewardItem"][1]["Attr"] = "0 10"
tHundredMonsterGo_AwardItem[3316035]["RewardEffect"] = {}
tHundredMonsterGo_AwardItem[3316035]["RewardEffect"]["Effect"] = "angelwing"
tHundredMonsterGo_AwardItem[3316035]["LogId"] = 12001840

	-- ===5GhostBreathsPack
	-- ===索引: tHundredMonsterGo_AwardItem[3316036]
	-- ===删除: 3316036,1

tHundredMonsterGo_AwardItem[3316036] = {}
tHundredMonsterGo_AwardItem[3316036]["DeleteItem"] = {}
tHundredMonsterGo_AwardItem[3316036]["DeleteItem"][1] = {}
tHundredMonsterGo_AwardItem[3316036]["DeleteItem"][1]["Id"] = 3316036 -- 【库】5GhostBreathsPack[属性:9]
tHundredMonsterGo_AwardItem[3316036]["RewardItem"] = {}
tHundredMonsterGo_AwardItem[3316036]["RewardItem"][1] = {} 
tHundredMonsterGo_AwardItem[3316036]["RewardItem"][1]["Id"] = 3316033 -- GhostBreath[3316033][属性:9][叠加:10000[金币:0], 【表格】GhostBreath
tHundredMonsterGo_AwardItem[3316036]["RewardItem"][1]["Attr"] = "0 5"
tHundredMonsterGo_AwardItem[3316036]["RewardEffect"] = {}
tHundredMonsterGo_AwardItem[3316036]["RewardEffect"]["Effect"] = "angelwing"
tHundredMonsterGo_AwardItem[3316036]["LogId"] = 12001840

	-- ===10GhostSpiritsPack
	-- ===索引: tHundredMonsterGo_AwardItem[3316037]
	-- ===删除: 3316037,1

tHundredMonsterGo_AwardItem[3316037] = {}
tHundredMonsterGo_AwardItem[3316037]["DeleteItem"] = {}
tHundredMonsterGo_AwardItem[3316037]["DeleteItem"][1] = {}
tHundredMonsterGo_AwardItem[3316037]["DeleteItem"][1]["Id"] = 3316037 -- 【库】10GhostBreathsPack[属性:9]
tHundredMonsterGo_AwardItem[3316037]["RewardItem"] = {}
tHundredMonsterGo_AwardItem[3316037]["RewardItem"][1] = {} 
tHundredMonsterGo_AwardItem[3316037]["RewardItem"][1]["Id"] = 3316033 -- GhostBreath[3316033][属性:9][叠加:10000[金币:0], 【表格】GhostBreath
tHundredMonsterGo_AwardItem[3316037]["RewardItem"][1]["Attr"] = "0 10"
tHundredMonsterGo_AwardItem[3316037]["RewardEffect"] = {}
tHundredMonsterGo_AwardItem[3316037]["RewardEffect"]["Effect"] = "angelwing"
tHundredMonsterGo_AwardItem[3316037]["LogId"] = 12001840

--天石赠点礼包打开获得
-- #5  赠点
tHundredMonsterGo_AwardItem[3316154] = {}
tHundredMonsterGo_AwardItem[3316154]["DeleteItem"] = {}
tHundredMonsterGo_AwardItem[3316154]["DeleteItem"][1] = {}
tHundredMonsterGo_AwardItem[3316154]["DeleteItem"][1]["Id"] = 3316154 -- 【库】5CPs(B)Pack[属性:9]
tHundredMonsterGo_AwardItem[3316154]["DeleteItem"][1]["ItemNum"] = 1
tHundredMonsterGo_AwardItem[3316154]["LogId"] = 12001840
tHundredMonsterGo_AwardItem[3316154]["RewardEMoneyMono"] = {}
tHundredMonsterGo_AwardItem[3316154]["RewardEMoneyMono"]["Value"] = 5
tHundredMonsterGo_AwardItem[3316154]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	1790"
tHundredMonsterGo_AwardItem[3316154]["RewardEffect"] = {}
tHundredMonsterGo_AwardItem[3316154]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tHundredMonsterGo_AwardItem[3316154]["RewardEffect"]["Effect"] = "angelwing"
tHundredMonsterGo_AwardItem[3316154]["Tip"] = 1

-- #10 赠点
tHundredMonsterGo_AwardItem[3316155] = {}
tHundredMonsterGo_AwardItem[3316155]["DeleteItem"] = {}
tHundredMonsterGo_AwardItem[3316155]["DeleteItem"][1] = {}
tHundredMonsterGo_AwardItem[3316155]["DeleteItem"][1]["Id"] = 3316155 -- 【库】10CPs(B)Pack[属性:9]
tHundredMonsterGo_AwardItem[3316155]["DeleteItem"][1]["ItemNum"] = 1
tHundredMonsterGo_AwardItem[3316155]["LogId"] = 12001840
tHundredMonsterGo_AwardItem[3316155]["RewardEMoneyMono"] = {}
tHundredMonsterGo_AwardItem[3316155]["RewardEMoneyMono"]["Value"] = 10
tHundredMonsterGo_AwardItem[3316155]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	1790"
tHundredMonsterGo_AwardItem[3316155]["RewardEffect"] = {}
tHundredMonsterGo_AwardItem[3316155]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tHundredMonsterGo_AwardItem[3316155]["RewardEffect"]["Effect"] = "angelwing"
tHundredMonsterGo_AwardItem[3316155]["Tip"] = 1

-- #20 赠点
tHundredMonsterGo_AwardItem[3316156] = {}
tHundredMonsterGo_AwardItem[3316156]["DeleteItem"] = {}
tHundredMonsterGo_AwardItem[3316156]["DeleteItem"][1] = {}
tHundredMonsterGo_AwardItem[3316156]["DeleteItem"][1]["Id"] = 3316156 -- 【库】20CPs(B)Pack[属性:9]
tHundredMonsterGo_AwardItem[3316156]["DeleteItem"][1]["ItemNum"] = 1
tHundredMonsterGo_AwardItem[3316156]["LogId"] = 12001840
tHundredMonsterGo_AwardItem[3316156]["RewardEMoneyMono"] = {}
tHundredMonsterGo_AwardItem[3316156]["RewardEMoneyMono"]["Value"] = 20
tHundredMonsterGo_AwardItem[3316156]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	1790"
tHundredMonsterGo_AwardItem[3316156]["RewardEffect"] = {}
tHundredMonsterGo_AwardItem[3316156]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tHundredMonsterGo_AwardItem[3316156]["RewardEffect"]["Effect"] = "angelwing"
tHundredMonsterGo_AwardItem[3316156]["Tip"] = 1

-- #50 赠点
tHundredMonsterGo_AwardItem[3316157] = {}
tHundredMonsterGo_AwardItem[3316157]["DeleteItem"] = {}
tHundredMonsterGo_AwardItem[3316157]["DeleteItem"][1] = {}
tHundredMonsterGo_AwardItem[3316157]["DeleteItem"][1]["Id"] = 3316157 -- 【库】50CPs(B)Pack[属性:9]
tHundredMonsterGo_AwardItem[3316157]["DeleteItem"][1]["ItemNum"] = 1
tHundredMonsterGo_AwardItem[3316157]["LogId"] = 12001840
tHundredMonsterGo_AwardItem[3316157]["RewardEMoneyMono"] = {}
tHundredMonsterGo_AwardItem[3316157]["RewardEMoneyMono"]["Value"] = 50
tHundredMonsterGo_AwardItem[3316157]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	1790"
tHundredMonsterGo_AwardItem[3316157]["RewardEffect"] = {}
tHundredMonsterGo_AwardItem[3316157]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tHundredMonsterGo_AwardItem[3316157]["RewardEffect"]["Effect"] = "angelwing"
tHundredMonsterGo_AwardItem[3316157]["Tip"] = 1

-- #2 天石
tHundredMonsterGo_AwardItem[3316158] = {}
tHundredMonsterGo_AwardItem[3316158]["DeleteItem"] = {}
tHundredMonsterGo_AwardItem[3316158]["DeleteItem"][1] = {}
tHundredMonsterGo_AwardItem[3316158]["DeleteItem"][1]["Id"] = 3316158 -- 【库】5CPs(B)Pack[属性:9]
tHundredMonsterGo_AwardItem[3316158]["DeleteItem"][1]["ItemNum"] = 1
tHundredMonsterGo_AwardItem[3316158]["LogId"] = 12001840
tHundredMonsterGo_AwardItem[3316158]["RewardEMoney"] = {}
tHundredMonsterGo_AwardItem[3316158]["RewardEMoney"]["Value"] = 2
tHundredMonsterGo_AwardItem[3316158]["RewardEMoney"]["NewEmoneyLog"] = "10000	1790"
tHundredMonsterGo_AwardItem[3316158]["RewardEffect"] = {}
tHundredMonsterGo_AwardItem[3316158]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tHundredMonsterGo_AwardItem[3316158]["RewardEffect"]["Effect"] = "angelwing"
tHundredMonsterGo_AwardItem[3316158]["Tip"] = 2

-- #5 天石
tHundredMonsterGo_AwardItem[3316159] = {}
tHundredMonsterGo_AwardItem[3316159]["DeleteItem"] = {}
tHundredMonsterGo_AwardItem[3316159]["DeleteItem"][1] = {}
tHundredMonsterGo_AwardItem[3316159]["DeleteItem"][1]["Id"] = 3316159 -- 【库】10CPs(B)Pack[属性:9]
tHundredMonsterGo_AwardItem[3316159]["DeleteItem"][1]["ItemNum"] = 1
tHundredMonsterGo_AwardItem[3316159]["LogId"] = 12001840
tHundredMonsterGo_AwardItem[3316159]["RewardEMoney"] = {}
tHundredMonsterGo_AwardItem[3316159]["RewardEMoney"]["Value"] = 5
tHundredMonsterGo_AwardItem[3316159]["RewardEMoney"]["NewEmoneyLog"] = "10000	1790"
tHundredMonsterGo_AwardItem[3316159]["RewardEffect"] = {}
tHundredMonsterGo_AwardItem[3316159]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tHundredMonsterGo_AwardItem[3316159]["RewardEffect"]["Effect"] = "angelwing"
tHundredMonsterGo_AwardItem[3316159]["Tip"] = 2

-- #10 天石
tHundredMonsterGo_AwardItem[3316160] = {}
tHundredMonsterGo_AwardItem[3316160]["DeleteItem"] = {}
tHundredMonsterGo_AwardItem[3316160]["DeleteItem"][1] = {}
tHundredMonsterGo_AwardItem[3316160]["DeleteItem"][1]["Id"] = 3316160 -- 【库】20CPs(B)Pack[属性:9]
tHundredMonsterGo_AwardItem[3316160]["DeleteItem"][1]["ItemNum"] = 1
tHundredMonsterGo_AwardItem[3316160]["LogId"] = 12001840
tHundredMonsterGo_AwardItem[3316160]["RewardEMoney"] = {}
tHundredMonsterGo_AwardItem[3316160]["RewardEMoney"]["Value"] = 10
tHundredMonsterGo_AwardItem[3316160]["RewardEMoney"]["NewEmoneyLog"] = "10000	1790"
tHundredMonsterGo_AwardItem[3316160]["RewardEffect"] = {}
tHundredMonsterGo_AwardItem[3316160]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tHundredMonsterGo_AwardItem[3316160]["RewardEffect"]["Effect"] = "angelwing"
tHundredMonsterGo_AwardItem[3316160]["Tip"] = 2

-- #20 天石
tHundredMonsterGo_AwardItem[3316161] = {}
tHundredMonsterGo_AwardItem[3316161]["DeleteItem"] = {}
tHundredMonsterGo_AwardItem[3316161]["DeleteItem"][1] = {}
tHundredMonsterGo_AwardItem[3316161]["DeleteItem"][1]["Id"] = 3316161 -- 【库】50CPs(B)Pack[属性:9]
tHundredMonsterGo_AwardItem[3316161]["DeleteItem"][1]["ItemNum"] = 1
tHundredMonsterGo_AwardItem[3316161]["LogId"] = 12001840
tHundredMonsterGo_AwardItem[3316161]["RewardEMoney"] = {}
tHundredMonsterGo_AwardItem[3316161]["RewardEMoney"]["Value"] = 20
tHundredMonsterGo_AwardItem[3316161]["RewardEMoney"]["NewEmoneyLog"] = "10000	1790"
tHundredMonsterGo_AwardItem[3316161]["RewardEffect"] = {}
tHundredMonsterGo_AwardItem[3316161]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tHundredMonsterGo_AwardItem[3316161]["RewardEffect"]["Effect"] = "angelwing"
tHundredMonsterGo_AwardItem[3316161]["Tip"] = 2


--兑换物品具体得到
local tHundredMonsterGo_NewCharge = {}
tHundredMonsterGo_NewCharge[3316032] = {}
tHundredMonsterGo_NewCharge[3316032]["DeleteItem"] = {}
tHundredMonsterGo_NewCharge[3316032]["DeleteItem"][1] = {}
tHundredMonsterGo_NewCharge[3316032]["DeleteItem"][1]["Id"] = 3316032
tHundredMonsterGo_NewCharge[3316032]["DeleteItem"][1]["ItemNum"] = 1
tHundredMonsterGo_NewCharge[3316032]["RewardItem"] = {}
tHundredMonsterGo_NewCharge[3316032]["RewardItem"][1] = {} 
tHundredMonsterGo_NewCharge[3316032]["RewardItem"][1]["Id"] = 3316033
tHundredMonsterGo_NewCharge[3316032]["RewardItem"][1]["Attr"] = "0 1"
tHundredMonsterGo_NewCharge[3316032]["RewardItem"][1]["PreciousType"] = 307
tHundredMonsterGo_NewCharge[3316032]["RewardEffect"] = {}
tHundredMonsterGo_NewCharge[3316032]["RewardEffect"]["Effect"] = "angelwing"
tHundredMonsterGo_NewCharge[3316032]["LogId"] = 12001840

--兑换具体表
local tHundredMonsterGo_ChargeBiao = {}
--需要兑换卷数量	限量个数	globalid	pos位置	option位置	得到的物品具体属性
tHundredMonsterGo_ChargeBiao[1]  = {1,99999,0,0,400,"0 1",3316033}
tHundredMonsterGo_ChargeBiao[2]  = {5000,200,54414,0,401,"0 1 3",730008}
tHundredMonsterGo_ChargeBiao[3]  = {5120,20 ,54414,1,402,"0 1",4200011}
tHundredMonsterGo_ChargeBiao[4]  = {80000,3 ,54414,2,403,"0 1",711903}
tHundredMonsterGo_ChargeBiao[5]  = {10240,15,54414,3,404,"0 1",4200012}
tHundredMonsterGo_ChargeBiao[6]  = {20000,10,54414,4,405,"0 1",3322092}
tHundredMonsterGo_ChargeBiao[7]  = {40000,10,54414,5,406,"0 1",3316031}
tHundredMonsterGo_ChargeBiao[8]  = {20000,30,54415,0,407,"0 1 3",4034801}
tHundredMonsterGo_ChargeBiao[9]  = {20000,30,54415,1,408,"0 1 3",4034501}
tHundredMonsterGo_ChargeBiao[10] = {20000,30,54415,2,409,"0 1 3",4034401}
tHundredMonsterGo_ChargeBiao[11] = {20000,30,54415,3,410,"0 1 3",4034701}
tHundredMonsterGo_ChargeBiao[12] = {20000,30,54415,4,411,"0 1 3",4034601}
tHundredMonsterGo_ChargeBiao[13] = {20000,30,54415,5,412,"0 1 3",4034201}
tHundredMonsterGo_ChargeBiao[14] = {20000,30,54416,0,413,"0 1 3",4032401}
tHundredMonsterGo_ChargeBiao[15] = {20000,30,54416,1,414,"0 1 3",4032501}
tHundredMonsterGo_ChargeBiao[16] = {20000,30,54416,2,415,"0 1 3",4032701}
tHundredMonsterGo_ChargeBiao[17] = {20000,30,54416,3,416,"0 1 3",4031601}
tHundredMonsterGo_ChargeBiao[18] = {20000,30,54416,4,417,"0 1 3",4034301}
tHundredMonsterGo_ChargeBiao[19] = {20000,30,54416,5,418,"0 1 3",4035201}
tHundredMonsterGo_ChargeBiao[20] = {20000,30,54417,0,419,"0 1 3",4035101}


--掩码限制，10W场金币
local tHundredMonsterGo_Stc = {}
tHundredMonsterGo_Stc[1] = {219,85}

--emoneylog打上
local tHundredMonsterGo_Emoneylog = {}
tHundredMonsterGo_Emoneylog[1] = "10000	01785	0	0	500	"
tHundredMonsterGo_Emoneylog[2] = "10000	01786	200	200	1	"
----------------------------------逻辑部分配置----------------------------------
--物品寻路
function HundredMonsterGo_Lookface(nItemId)
	if Sys_ChkFullTime(tHundredMonsterGo_Time["Active"]) then
		NpcPosition_PathFind(25828)
	end
end


--直接使用金币参加
function HundredMonsterGo_DifficultChang(nHundredMonsterGo_NpcId,nHundredMonsterGo_Tip,sHundredMonsterGo_Location)
	
	if not Sys_ChkFullTime(tHundredMonsterGo_Time["Active"]) then
		LinkNpcGossipFunc_New(nHundredMonsterGo_NpcId,"1-2")
		return
	end
	
	local nHundredMonsterGo_Money = tHundredMonsterGo_MoneyAll["Money"][nHundredMonsterGo_Tip]
	--花费金币购买
	if nHundredMonsterGo_Tip == 1 or nHundredMonsterGo_Tip == 2 then
		if not User_CanPutMoney2Bag(-nHundredMonsterGo_Money) then
			--银两不足
			LinkNpcGossipFunc_New(nHundredMonsterGo_NpcId,"2-1")
			return
		end

	end
	
	--花费赠点购买
	if nHundredMonsterGo_Tip == 3 then
		local nHundredMonsterGo_UserE = Get_UserMonoEMoney()
		if nHundredMonsterGo_UserE < nHundredMonsterGo_Money then
			-- 赠点天石不足
			LinkNpcGossipFunc_New(nHundredMonsterGo_NpcId,"9-1")
			return
		end

	end
	
	--花费天石购买
	if nHundredMonsterGo_Tip == 4 then
		local nHundredMonsterGo_UserE = Get_UserEMoney()
		if nHundredMonsterGo_UserE < nHundredMonsterGo_Money then
			-- 赠点天石不足
			LinkNpcGossipFunc_New(nHundredMonsterGo_NpcId,"8-1")
			return
		end
	end
	
	-- 参加百鬼，二次确认
	LinkNpcGossipFunc_New(nHundredMonsterGo_NpcId,sHundredMonsterGo_Location)
	
end

--二次确认购买
function HundredMonsterGo_MoneyBuy(nHundredMonsterGo_NpcId,nHundredMonsterGo_Tip)
	
	if not Sys_ChkFullTime(tHundredMonsterGo_Time["Active"]) then
		LinkNpcGossipFunc_New(nHundredMonsterGo_NpcId,"1-2")
		return
	end
	
	local nHundredMonsterGo_UserId = Get_UserId()
	local nHundredMonsterGo_Money = tHundredMonsterGo_MoneyAll["Money"][nHundredMonsterGo_Tip]
	
	--扣除金币
	if nHundredMonsterGo_Tip == 1 or nHundredMonsterGo_Tip == 2 then
		if not User_CanPutMoney2Bag(-nHundredMonsterGo_Money) then
			--银两不足
			LinkNpcGossipFunc_New(nHundredMonsterGo_NpcId,"2-1")
			return
		end
		
		--扣除金币，参加百鬼活动
		if User_AddMoney(-nHundredMonsterGo_Money,nHundredMonsterGo_UserId) then
			
			--若是10w场次，则打掩码
			if nHundredMonsterGo_Tip == 1 then
				local nHundredMonsterGo_Event = tHundredMonsterGo_Stc[1][1]
				local nHundredMonsterGo_Data = tHundredMonsterGo_Stc[1][2]
				
				Task_SetStatistic(nHundredMonsterGo_Event,nHundredMonsterGo_Data,1,1,nHundredMonsterGo_UserId)
				Task_SetStcTimestamp(nHundredMonsterGo_Event,nHundredMonsterGo_Data,0,nHundredMonsterGo_UserId)
				
			end
			
			Sys_SaveActionFestivalLog(string.format(tHundredMonsterGo_MoneyAll["LogId"][1],nHundredMonsterGo_Money))
			User_OpenShootGame(nHundredMonsterGo_Tip)
		end
	end
	
	
	-- 扣除赠点
	if nHundredMonsterGo_Tip == 3 then
		local nHundredMonsterGo_UserE = Get_UserMonoEMoney()
		if nHundredMonsterGo_UserE < nHundredMonsterGo_Money then
			-- 赠点天石不足
			LinkNpcGossipFunc_New(nHundredMonsterGo_NpcId,"9-1")
			return
		end
		
		--扣除赠点，参加百鬼活动
		if User_AddEMoneyMono(-nHundredMonsterGo_Money) then
			Sys_SaveEmoneyBuy(tHundredMonsterGo_Emoneylog[1])
			Sys_SaveActionFestivalLog(string.format(tHundredMonsterGo_MoneyAll["LogId"][2],nHundredMonsterGo_Money))
			User_OpenShootGame(nHundredMonsterGo_Tip)
		end
	end
	
	-- 扣除天石
	if nHundredMonsterGo_Tip == 4 then
		local nHundredMonsterGo_UserE = Get_UserEMoney()
		if nHundredMonsterGo_UserE < nHundredMonsterGo_Money then
			-- 赠点天石不足
			LinkNpcGossipFunc_New(nHundredMonsterGo_NpcId,"8-1")
			return
		end
		
		--扣除赠点，参加百鬼活动
		if User_AddEMoney(-nHundredMonsterGo_Money) then
			Sys_SaveEmoneyBuy(tHundredMonsterGo_Emoneylog[2])
			Sys_SaveActionFestivalLog(string.format(tHundredMonsterGo_MoneyAll["LogId"][3],nHundredMonsterGo_Money))
			User_OpenShootGame(nHundredMonsterGo_Tip)
		end
	end
	
end

--可选礼包打开
function HundredMonsterGo_ChoiceItem(nItemId,nTip)
	RewardTemplate_UseItemAndMsg(tHundredMonsterGo_AwardItem[nItemId][nTip])
end

--选项里面对白赋值
function HundredMonsterGo_OnceSure(nHundredMonsterGo_NpcId)
	
	local nHundredMonsterGo_Tip = 400
	for i,v in pairs(tHundredMonsterGo_ChargeBiao) do
		
		
		local nHundredMonsterGo_Globalid = v[3]
		local nHundredMonsterGo_Pos= v[4]
		local nHundredMonsterGo_NeedNum = v[1]
		local nHundredMonsterGo_SumNum = v[2]
		
		if nHundredMonsterGo_Globalid ~= 0 then
			local nHundredMonsterGo_HaveUse = Get_SysDynaGlobalData(nHundredMonsterGo_Globalid,nHundredMonsterGo_Pos)
			local nHundredMonsterGo_Left = nHundredMonsterGo_SumNum - nHundredMonsterGo_HaveUse
			
			tNpcGossip[nHundredMonsterGo_NpcId]["Option"..nHundredMonsterGo_Tip] = string.format(tHundredMonsterGo_Text[nHundredMonsterGo_NpcId]["Option"..nHundredMonsterGo_Tip],
			nHundredMonsterGo_NeedNum,nHundredMonsterGo_Left)
		else
			tNpcGossip[nHundredMonsterGo_NpcId]["Option"..nHundredMonsterGo_Tip] = string.format(tHundredMonsterGo_Text[nHundredMonsterGo_NpcId]["Option"..nHundredMonsterGo_Tip],
			nHundredMonsterGo_NeedNum)
		end
		nHundredMonsterGo_Tip = nHundredMonsterGo_Tip + 1
		
	end
	return true
end

--二次确认兑换物品
function HundredMonsterGo_TwiceSure(nHundredMonsterGo_NpcId,nItemId)
	
	if not Sys_ChkFullTime(tHundredMonsterGo_Time["Active"]) then
		LinkNpcGossipFunc_New(nHundredMonsterGo_NpcId,"1-2")
		return
	end
	
	--若是3316033气息则跳转另外一个购买多个物品对吧
	if nItemId == 3316033 then
		HundredMonsterGo_SpecalTwiceSure(nHundredMonsterGo_NpcId,nItemId)
		-- LinkNpcGossipFunc_New(nHundredMonsterGo_NpcId,"12-1") 
		return
	end
	
	--判断玩家是否到达单服限量
	local nHundredMonsterGo_Tip
	for i,v in pairs(tHundredMonsterGo_ChargeBiao) do
		if v[7] == nItemId then
			nHundredMonsterGo_Tip = i
		end
	end
	local nHundredMonsterGo_Option = tHundredMonsterGo_ChargeBiao[nHundredMonsterGo_Tip][5]
	local nHundredMonsterGo_NeedNum = tHundredMonsterGo_ChargeBiao[nHundredMonsterGo_Tip][1]
	local nHundredMonsterGo_GlobalId = tHundredMonsterGo_ChargeBiao[nHundredMonsterGo_Tip][3]
	local nHundredMonsterGo_Pos = tHundredMonsterGo_ChargeBiao[nHundredMonsterGo_Tip][4]
	
	local nHundredMonsterGo_Usered = 0
	if nItemId ~= 3316033 then
		nHundredMonsterGo_Usered = Get_SysDynaGlobalData(nHundredMonsterGo_GlobalId,nHundredMonsterGo_Pos)
	end
	
	local nHundredMonsterGo_Max = tHundredMonsterGo_ChargeBiao[nHundredMonsterGo_Tip][2]
	local nHundredMonsterGo_ItemName = tHundredMonsterGo_Text["Name"][nItemId]
	local nHundredMonsterGo_Attr = tHundredMonsterGo_ChargeBiao[nHundredMonsterGo_Tip][6]
	
	--到达最大限量值
	if nHundredMonsterGo_Max <= nHundredMonsterGo_Usered  then
		Sys_MsgBox(tHundredMonsterGo_Text[nHundredMonsterGo_NpcId]["Text316"])
		User_TalkChannel2005(tHundredMonsterGo_Text[nHundredMonsterGo_NpcId]["Text316"])
		return
	end
	
	--玩家身上的兑换卷不足
	local nItemJuan = tHundredMonsterGo_NewCharge[3316032]["DeleteItem"][1]["Id"]
	if not Item_ChkMulItem(nItemJuan,nItemJuan,nHundredMonsterGo_NeedNum) then
		Sys_MsgBox(tHundredMonsterGo_Text[nHundredMonsterGo_NpcId]["Text314"])
		User_TalkChannel2005(tHundredMonsterGo_Text[nHundredMonsterGo_NpcId]["Text314"])
		return
	end
	
	
	local tHundredMonsterGo_AwardItem = CommonFunc_Copy(tHundredMonsterGo_NewCharge[3316032])
	tHundredMonsterGo_AwardItem["DeleteItem"][1]["ItemNum"] = nHundredMonsterGo_NeedNum
	tHundredMonsterGo_AwardItem["RewardItem"][1]["Id"] = nItemId
	tHundredMonsterGo_AwardItem["RewardItem"][1]["Attr"] = nHundredMonsterGo_Attr
	if nItemId ~= 4200011 then
		tHundredMonsterGo_AwardItem["RewardItem"][1]["PreciousType"] = nil
	end
	
	local nHundredMonsterGo_Space = RewardTemplate_GetRewardSpace(tHundredMonsterGo_AwardItem)
	--玩家背包空间不足
	if not User_CheckLeftSpace(nHundredMonsterGo_Space) then
		Sys_MsgBox(string.format(tHundredMonsterGo_Text[25828]["Text315"],nHundredMonsterGo_Space))
		User_TalkChannel2005(string.format(tHundredMonsterGo_Text[25828]["Text315"],nHundredMonsterGo_Space))
		return
	end
	
	--成功，跳转到二次确认界面
	tNpcGossip[nHundredMonsterGo_NpcId]["Text313"] = string.format(tHundredMonsterGo_Text[nHundredMonsterGo_NpcId]["Text313"],nHundredMonsterGo_NeedNum,1,nHundredMonsterGo_ItemName)
	tNpcGossip[nHundredMonsterGo_NpcId]["OptionFunc312"] = "HundredMonsterGo_LastSure</N>"..nHundredMonsterGo_NpcId.."</N>"..nItemId
	
	LinkNpcGossipFunc_New(nHundredMonsterGo_NpcId,"11-1")
	return true
end

--气息对白购买
function HundredMonsterGo_SpecalTwiceSure(nNpcId,nItemId)

	if not Sys_ChkFullTime(tHundredMonsterGo_Time["Active"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end

	Sys_DialogText(tHundredMonsterGo_Text[nNpcId]["Text1211"])
	Sys_DialogText(tHundredMonsterGo_Text[nNpcId]["Text1212"])
	Sys_DialogText(tHundredMonsterGo_Text[nNpcId]["Text1213"])
	Sys_DialogOptEdit(tHundredMonsterGo_Text[nNpcId]["Input"],15,"HundredMonsterGo_SpecalTwiceSureSend</N>"..nNpcId.."</N>"..nItemId)
	Sys_DialogFace(nNpcId)
	Sys_DialogEnd()
	
end

--二次确认数量具体
function HundredMonsterGo_SpecalTwiceSureSend(nHundredMonsterGo_NpcId,nItemId)
	

	if not Sys_ChkFullTime(tHundredMonsterGo_Time["Active"]) then
		LinkNpcGossipFunc_New(nHundredMonsterGo_NpcId,"1-2")
		return
	end
	
	
	local nNumber = tonumber(Get_SysAcceptStr())
	--格式不正确
	if nNumber == nil or type(nNumber) ~= "number" or nNumber%1 ~= 0 or nNumber <= 0 or nNumber > 9999 then
		User_TalkChannel2005(tHundredMonsterGo_Text[nHundredMonsterGo_NpcId]["Text1214"])
		Sys_MsgBox(tHundredMonsterGo_Text[nHundredMonsterGo_NpcId]["Text1214"])
		return
	end
	
	--兑换卷数量不足
	local nWasateId = tHundredMonsterGo_AwardItem[3316035]["RewardItem"][1]["Id"]
	if not Item_ChkMulItem(nWasateId,nWasateId,nNumber) then
		User_TalkChannel2005(tHundredMonsterGo_Text[nHundredMonsterGo_NpcId]["Text314"])
		Sys_MsgBox(tHundredMonsterGo_Text[nHundredMonsterGo_NpcId]["Text314"])
		return
	end
	
	local nHundredMonsterGo_NeedNum = tHundredMonsterGo_ChargeBiao[1][1]
	local nHundredMonsterGo_ItemName = tHundredMonsterGo_Text["Name"][nItemId]
	tNpcGossip[nHundredMonsterGo_NpcId]["Text1215"] = string.format(tHundredMonsterGo_Text[nHundredMonsterGo_NpcId]["Text313"],nNumber,nNumber,nHundredMonsterGo_ItemName)
	tNpcGossip[nHundredMonsterGo_NpcId]["OptionFunc122"] = "HundredMonsterGo_MountLastSure</N>"..nHundredMonsterGo_NpcId.."</N>"..nItemId.."</N>"..nNumber
	
	LinkNpcGossipFunc_New(nHundredMonsterGo_NpcId,"13-1")
	
end

--多个数量购买
function HundredMonsterGo_MountLastSure(nHundredMonsterGo_NpcId,nItemId,nNumber)

	if not Sys_ChkFullTime(tHundredMonsterGo_Time["Active"]) then
		LinkNpcGossipFunc_New(nHundredMonsterGo_NpcId,"1-2")
		return
	end

	local tHundredMonsterGo_AwardItem = CommonFunc_Copy(tHundredMonsterGo_NewCharge[3316032])
	tHundredMonsterGo_AwardItem["DeleteItem"][1]["ItemNum"] = nNumber
	tHundredMonsterGo_AwardItem["RewardItem"][1]["Id"] = nItemId
	tHundredMonsterGo_AwardItem["RewardItem"][1]["Attr"] = "0 "..nNumber

	local nHundredMonsterGo_Space = RewardTemplate_GetRewardSpace(tHundredMonsterGo_AwardItem)
	--玩家背包空间不足
	if not User_CheckLeftSpace(nHundredMonsterGo_Space) then
		Sys_MsgBox(string.format(tHundredMonsterGo_Text[nHundredMonsterGo_NpcId]["Text315"],nHundredMonsterGo_Space))
		User_TalkChannel2005(string.format(tHundredMonsterGo_Text[nHundredMonsterGo_NpcId]["Text315"],nHundredMonsterGo_Space))
		return
	end
	
	--获得相关奖励
	RewardTemplate_UseItemAndMsg(tHundredMonsterGo_AwardItem)

end

function HundredMonsterGo_LastSure(nHundredMonsterGo_NpcId,nItemId)
	--判断玩家是否到达单服限量
	local nHundredMonsterGo_Tip
	for i,v in pairs(tHundredMonsterGo_ChargeBiao) do
		if v[7] == nItemId then
			nHundredMonsterGo_Tip = i
		end
	end
	local nHundredMonsterGo_Option = tHundredMonsterGo_ChargeBiao[nHundredMonsterGo_Tip][5]
	local nHundredMonsterGo_NeedNum = tHundredMonsterGo_ChargeBiao[nHundredMonsterGo_Tip][1]
	
	local nHundredMonsterGo_GlobalId = tHundredMonsterGo_ChargeBiao[nHundredMonsterGo_Tip][3]
	local nHundredMonsterGo_Pos = tHundredMonsterGo_ChargeBiao[nHundredMonsterGo_Tip][4]
	
	local nHundredMonsterGo_Remained = 0
	if nItemId ~= 3316033 then
		nHundredMonsterGo_Remained = Get_SysDynaGlobalData(nHundredMonsterGo_GlobalId,nHundredMonsterGo_Pos)
	end
	
	local nHundredMonsterGo_Max = tHundredMonsterGo_ChargeBiao[nHundredMonsterGo_Tip][2]
	local nHundredMonsterGo_ItemName = tHundredMonsterGo_Text["Name"][nItemId]
	local nHundredMonsterGo_Attr = tHundredMonsterGo_ChargeBiao[nHundredMonsterGo_Tip][6]
	
	--到达最大限量值
	if nHundredMonsterGo_Max <= nHundredMonsterGo_Remained then
		Sys_MsgBox(tHundredMonsterGo_Text[nHundredMonsterGo_NpcId]["Text316"])
		User_TalkChannel2005(tHundredMonsterGo_Text[nHundredMonsterGo_NpcId]["Text316"])
		return
	end
	
	--玩家身上的兑换卷不足
	local nItemJuan = tHundredMonsterGo_NewCharge[3316032]["DeleteItem"][1]["Id"]
	if not Item_ChkMulItem(nItemJuan,nItemJuan,nHundredMonsterGo_NeedNum) then
		Sys_MsgBox(tHundredMonsterGo_Text[nHundredMonsterGo_NpcId]["Text314"])
		User_TalkChannel2005(tHundredMonsterGo_Text[nHundredMonsterGo_NpcId]["Text314"])
		return
	end
	
	
	local tHundredMonsterGo_AwardItem = CommonFunc_Copy(tHundredMonsterGo_NewCharge[3316032])
	tHundredMonsterGo_AwardItem["DeleteItem"][1]["ItemNum"] = nHundredMonsterGo_NeedNum
	tHundredMonsterGo_AwardItem["RewardItem"][1]["Id"] = nItemId
	tHundredMonsterGo_AwardItem["RewardItem"][1]["Attr"] = nHundredMonsterGo_Attr
	if nItemId ~= 4200011 then
		tHundredMonsterGo_AwardItem["RewardItem"][1]["PreciousType"] = nil
	end
	
	local nHundredMonsterGo_Space = RewardTemplate_GetRewardSpace(tHundredMonsterGo_AwardItem)
	--玩家背包空间不足
	if not User_CheckLeftSpace(nHundredMonsterGo_Space) then
		Sys_MsgBox(string.format(tHundredMonsterGo_Text[25828]["Text315"],nHundredMonsterGo_Space))
		User_TalkChannel2005(string.format(tHundredMonsterGo_Text[25828]["Text315"],nHundredMonsterGo_Space))
		return
	end
	
	--修改动态码
	if nItemId ~= 3316033 then
		local nHundredMonsterGo_Newincrease =  nHundredMonsterGo_Remained + 1
		Sys_SetSynaGlobalData(nHundredMonsterGo_GlobalId,nHundredMonsterGo_Pos,nHundredMonsterGo_Newincrease)
	end
	
	--获得相关奖励
	RewardTemplate_UseItemAndMsg(tHundredMonsterGo_AwardItem)
end

function HundredMonsterGo_BagOpen(nItemId)
	RewardTemplate_UseItemAndMsg(tHundredMonsterGo_AwardItem[nItemId])
end
----------------------------------模块部分配置----------------------------------


--年爷爷
tNpcFace[5327] = 122
tNpcGossip[25828] = tNpcGossip[25828] or DefaultNpc:new{}
tNpcGossip[25828]["OptionHidden"] = 1
tNpcGossip[25828]["DialogueText"] = tHundredMonsterGo_Text[25828]

--活动前
tNpcGossip[25828]["Text1-1"] = {119,120,121,122}
tNpcGossip[25828]["tOption1-1"] = {9}
tNpcGossip[25828]["ChkFunc1-1"] = function()
	return Sys_ChkFullTime(tHundredMonsterGo_Time["Before"])
end

--活动后
tNpcGossip[25828]["Text1-2"] = {114}
tNpcGossip[25828]["tOption1-2"] = {4}
tNpcGossip[25828]["ChkFunc1-2"] = function()
	return not Sys_ChkFullTime(tHundredMonsterGo_Time["Active"])
end


--活动中
tNpcGossip[25828]["Text1-3"] = {111,112,113,1131}
tNpcGossip[25828]["tOption1-3"] = {11,12,13}
tNpcGossip[25828]["OptionPoint11"] = "6-1"
--打开兑换商店
tNpcGossip[25828]["OptionPoint12"] = "10-1"
tNpcGossip[25828]["OptionFunc13"] = "User_OpenExchangeShop</N>25828"

--具体购买界面
tNpcGossip[25828]["Text6-1"] = {123,124}
tNpcGossip[25828]["tOption6-1"] = {1,2,3,31}
tNpcGossip[25828]["OptionFunc1"] = "HundredMonsterGo_DifficultChang</N>25828</N>1</S>3-1"
tNpcGossip[25828]["OptionFunc2"] = "HundredMonsterGo_DifficultChang</N>25828</N>2</S>4-1"
tNpcGossip[25828]["OptionFunc3"] = "HundredMonsterGo_DifficultChang</N>25828</N>3</S>5-1"
tNpcGossip[25828]["OptionFunc31"] = "HundredMonsterGo_DifficultChang</N>25828</N>4</S>7-1"
tNpcGossip[25828]["OptionChkFunc1"] = function()
	local nUserId = Get_UserId()
	local nHundredMonsterGo_Event = tHundredMonsterGo_Stc[1][1]
	local nHundredMonsterGo_Data = tHundredMonsterGo_Stc[1][2]
	
	if Task_ChkStcValue(nHundredMonsterGo_Event,nHundredMonsterGo_Data,"==",0,nUserId) then
		return true
	end
	
	return false
end

--金币不足
tNpcGossip[25828]["Text2-1"] = {118}
tNpcGossip[25828]["tOption2-1"] = {8}

--赠点不足
tNpcGossip[25828]["Text8-1"] = {1181}
tNpcGossip[25828]["tOption8-1"] = {8}

--天石不足
tNpcGossip[25828]["Text9-1"] = {1182}
tNpcGossip[25828]["tOption9-1"] = {8}

--对白兑换物品
tNpcGossip[25828]["Text10-1"] = {311,312}
tNpcGossip[25828]["tOption10-1"] = {400,401,402,403,404,405,406,407,408,409,410,411,412,413,414,415,416,417,418,419}
tNpcGossip[25828]["OptionFunc400"] = "HundredMonsterGo_TwiceSure</N>25828</N>3316033"
tNpcGossip[25828]["OptionFunc401"] = "HundredMonsterGo_TwiceSure</N>25828</N>730008 "
tNpcGossip[25828]["OptionFunc402"] = "HundredMonsterGo_TwiceSure</N>25828</N>4200011"
tNpcGossip[25828]["OptionFunc403"] = "HundredMonsterGo_TwiceSure</N>25828</N>711903 "
tNpcGossip[25828]["OptionFunc404"] = "HundredMonsterGo_TwiceSure</N>25828</N>4200012"
tNpcGossip[25828]["OptionFunc405"] = "HundredMonsterGo_TwiceSure</N>25828</N>3322092"
tNpcGossip[25828]["OptionFunc406"] = "HundredMonsterGo_TwiceSure</N>25828</N>3316031"
tNpcGossip[25828]["OptionFunc407"] = "HundredMonsterGo_TwiceSure</N>25828</N>4034801"
tNpcGossip[25828]["OptionFunc408"] = "HundredMonsterGo_TwiceSure</N>25828</N>4034501"
tNpcGossip[25828]["OptionFunc409"] = "HundredMonsterGo_TwiceSure</N>25828</N>4034401"
tNpcGossip[25828]["OptionFunc410"] = "HundredMonsterGo_TwiceSure</N>25828</N>4034701"
tNpcGossip[25828]["OptionFunc411"] = "HundredMonsterGo_TwiceSure</N>25828</N>4034601"
tNpcGossip[25828]["OptionFunc412"] = "HundredMonsterGo_TwiceSure</N>25828</N>4034201"
tNpcGossip[25828]["OptionFunc413"] = "HundredMonsterGo_TwiceSure</N>25828</N>4032401"
tNpcGossip[25828]["OptionFunc414"] = "HundredMonsterGo_TwiceSure</N>25828</N>4032501"
tNpcGossip[25828]["OptionFunc415"] = "HundredMonsterGo_TwiceSure</N>25828</N>4032701"
tNpcGossip[25828]["OptionFunc416"] = "HundredMonsterGo_TwiceSure</N>25828</N>4031601"
tNpcGossip[25828]["OptionFunc417"] = "HundredMonsterGo_TwiceSure</N>25828</N>4034301"
tNpcGossip[25828]["OptionFunc418"] = "HundredMonsterGo_TwiceSure</N>25828</N>4035201"
tNpcGossip[25828]["OptionFunc419"] = "HundredMonsterGo_TwiceSure</N>25828</N>4035101"
tNpcGossip[25828]["ChkFunc10-1"] = function()
	return HundredMonsterGo_OnceSure(25828)
end



--兑换气息
-- tNpcGossip[25828]["Text12-1"] = {1211,1212,1213}
-- tNpcGossip[25828]["tOption12-1"] = {121}
-- tNpcGossip[25828]["OptionFunc121"] = "HundredMonsterGo_SpecalTwiceSure</N>25828</N>3316033"

--兑换气息二次确认
tNpcGossip[25828]["Text13-1"] = {1215}
tNpcGossip[25828]["tOption13-1"] = {122,123}
tNpcGossip[25828]["OptionPoint123"] = "1"


--二次确认兑换
tNpcGossip[25828]["Text11-1"] = {313}
tNpcGossip[25828]["tOption11-1"] = {312,313}
tNpcGossip[25828]["OptionPoint313"] = "1"



--二次确认购买
tNpcGossip[25828]["Text3-1"] = {115}
tNpcGossip[25828]["tOption3-1"] = {5}
tNpcGossip[25828]["OptionFunc5"] = "HundredMonsterGo_MoneyBuy</N>25828</N>1"

tNpcGossip[25828]["Text4-1"] = {116}
tNpcGossip[25828]["tOption4-1"] = {6}
tNpcGossip[25828]["OptionFunc6"] = "HundredMonsterGo_MoneyBuy</N>25828</N>2"

tNpcGossip[25828]["Text5-1"] = {117}
tNpcGossip[25828]["tOption5-1"] = {7}
tNpcGossip[25828]["OptionFunc7"] = "HundredMonsterGo_MoneyBuy</N>25828</N>3"

tNpcGossip[25828]["Text7-1"] = {1171}
tNpcGossip[25828]["tOption7-1"] = {71}
tNpcGossip[25828]["OptionFunc71"] = "HundredMonsterGo_MoneyBuy</N>25828</N>4"




----------------------------------物品配置----------------------------------
tItemFace[3316031] = 2904
tItem[3316031] = tItem[3316031] or {}
tItem[3316031]["DialogueText"] = tHundredMonsterGo_Text[3316031]
tItem[3316031]["Text1-1"] = {111}
tItem[3316031]["tOption1-1"] = {1,2,3}
tItem[3316031]["OptionPoint1"] = "2-1"
tItem[3316031]["OptionPoint2"] = "3-1"
tItem[3316031]["OptionPoint3"] = "4-1"

tItem[3316031]["Text2-1"] = {112}
tItem[3316031]["tOption2-1"] = {5,4}
tItem[3316031]["OptionFunc5"] = "HundredMonsterGo_ChoiceItem</N>3316031</N>1"
tItem[3316031]["OptionPoint4"] = "1"

tItem[3316031]["Text3-1"] = {113}
tItem[3316031]["tOption3-1"] = {6,4}
tItem[3316031]["OptionFunc6"] = "HundredMonsterGo_ChoiceItem</N>3316031</N>2"

tItem[3316031]["Text4-1"] = {114}
tItem[3316031]["tOption4-1"] = {7,4}
tItem[3316031]["OptionFunc7"] = "HundredMonsterGo_ChoiceItem</N>3316031</N>3"

-- GhostSpirit和GhostBreath礼包
tItem[3316034] = tItem[3316034] or {}
tItem[3316034]["Function"] = function(nItemId,sItemName)
	HundredMonsterGo_BagOpen(nItemId)
end

tItem[3316035] = tItem[3316034] or {}
tItem[3316036] = tItem[3316034] or {}
tItem[3316037] = tItem[3316034] or {}

--兑换卷寻路到npc
tItem[3316032] = tItem[3316032] or {}
tItem[3316032]["Function"] = function(nItemId,sItemName)
	HundredMonsterGo_Lookface(nItemId)
end

tItem[3316033] = tItem[3316032] or {}


--天石赠点礼包打开获得
tItem[3316154] = tItem[3316154] or {}
tItem[3316154]["Function"] = function(nItemId,sItemName)
	
	--批量开启
	local nNum = Get_CountItemType(nItemId,0)
	if Item_ChkMulItem(nItemId,nItemId,nNum) then
		local tTabel = CommonFunc_Copy(tHundredMonsterGo_AwardItem[nItemId])
		local nTip = tTabel["Tip"]
		tTabel["DeleteItem"][1]["ItemNum"] = nNum
		if nTip == 2 then
			tTabel["RewardEMoney"]["Value"] = tTabel["RewardEMoney"]["Value"] * nNum
		else
			tTabel["RewardEMoneyMono"]["Value"] = tTabel["RewardEMoneyMono"]["Value"] * nNum
		end
		
		-- 上限以及背包判断
		if not TermsOfUse_Main(nItemId,tTabel) then
			return
		end

		RewardTemplate_UseItemAndMsg(tTabel)
	end
end

tItem[3316155] = tItem[3316154] or {}
tItem[3316156] = tItem[3316154] or {}
tItem[3316157] = tItem[3316154] or {}
tItem[3316158] = tItem[3316154] or {}
tItem[3316159] = tItem[3316154] or {}
tItem[3316160] = tItem[3316154] or {}
tItem[3316161] = tItem[3316154] or {}


