---Name:161025[简体征服][活动脚本]大型MMO活动制作-趣味积分活动部分
--Creator: 		杨晓晓
--Created:		2016-10-25
------------------------------------------------------------------------------------------
--命名前缀
--tInterestingPointsActivity_

-- 以每个4天石补齐合成+3赤炼石 350 20983
-- 以每个4天石补齐合成+5赤炼石 350 20985
-- 以每个4天石补齐合成+7赤炼石 350 20987
-- 以每个2天石补齐合成明亮星陨石 350 20988
-- 以每个2天石补齐合成晶莹星陨石 350 20989
-- 以每个2天石补齐合成璀璨星陨石 350 20990
-- 以每个5天石补齐合成300赠点天石 350 20991
-- 以每个5天石补齐合成1500赠点天石 350 20992
-- 以每个5天石补齐合成500气力值 350 20993
-- 以每个5天石补齐合成5000气力值 350 20994
-----------------------------------------------------
--常量表配置
local tInterestingPointsActivity_Cont = {}
	--活动时间
	-- tInterestingPointsActivity_Cont["ActivityTime"] = tActivityTime["LinLang"]["ActivityTime"]
	--修改碎片合成时间
	tInterestingPointsActivity_Cont["ActivityTime"] = tActivityTime["ServerTeamPk"]["UseTicket"]
	tInterestingPointsActivity_Cont["ChangeTime"] = tActivityTime["LinLang"]["ChangeTime"]
--XX结晶
local tInterestingPointsActivity_Item ={}
	tInterestingPointsActivity_Item[3301250] = {}
	tInterestingPointsActivity_Item[3301250]["Name"] = "+StoneEssence"
	tInterestingPointsActivity_Item[3301250]["nCount"] = 4   ---缺一份用4天石补齐
	tInterestingPointsActivity_Item[3301251] = {}
	tInterestingPointsActivity_Item[3301251]["Name"] = "StarStonePiece"
	tInterestingPointsActivity_Item[3301251]["nCount"] = 4   ---缺一份用4天石补齐
	tInterestingPointsActivity_Item[3301252] = {}
	tInterestingPointsActivity_Item[3301252]["Name"] = "BlazingCPSpirit"
	tInterestingPointsActivity_Item[3301252]["nCount"] = 5   ---缺一份用5天石补齐
	tInterestingPointsActivity_Item[3301253] = {}
	tInterestingPointsActivity_Item[3301253]["Name"] = "ChiDew"
	tInterestingPointsActivity_Item[3301253]["nCount"] = 5   ---缺一份用5天石补齐

--log
	-- tInterestingPointsActivity_Log  = {}
	-- tInterestingPointsActivity_Log["EmoneyLog"] = {}
	-- tInterestingPointsActivity_Log["EmoneyLog"][3301250] = "250	4072	%d	%d	1	"
	-- tInterestingPointsActivity_Log["EmoneyLog"][3301251] = "250	4069	%d	%d	1	"
	-- tInterestingPointsActivity_Log["EmoneyLog"][3301252] = "250	4070	%d	%d	1	"
	-- tInterestingPointsActivity_Log["EmoneyLog"][3301253] = "250	4071	%d	%d	1	"
--记录玩家补齐结晶消耗的天石数量
local tInterestingPointsActivity_Num = {}
--记录玩家兑换合成选项
local tInterestingPointsActivity_Choose = {}
--玩家拥有XX结晶数量
local tInterestingPointsActivity_ItemNum = {}
--结晶数量足够奖励模板
local tInterestingPointsActivity_Reward = {}
	--赤炼石结晶数量足够，合成赤炼石
	tInterestingPointsActivity_Reward[3301250] = {}
	tInterestingPointsActivity_Reward[3301250][1] = {}
	tInterestingPointsActivity_Reward[3301250][1]["DeleteItem"] = {}
	tInterestingPointsActivity_Reward[3301250][1]["DeleteItem"][1] = {}
	tInterestingPointsActivity_Reward[3301250][1]["DeleteItem"][1]["Id"] = 3301250
	tInterestingPointsActivity_Reward[3301250][1]["DeleteItem"][1]["ItemNum"] = 12
	tInterestingPointsActivity_Reward[3301250][1]["RewardItem"] = {}
	tInterestingPointsActivity_Reward[3301250][1]["RewardItem"][1] = {}
	tInterestingPointsActivity_Reward[3301250][1]["RewardItem"][1]["Id"] = 730003--合成+3赤炼石
	tInterestingPointsActivity_Reward[3301250][1]["RewardItem"][1]["Attr"] = "0 1 3 2880 1"
	tInterestingPointsActivity_Reward[3301250][1]["Log"] = "0,0,0,0,12000543,2,730003,1"
	tInterestingPointsActivity_Reward[3301250][2] = {}
	tInterestingPointsActivity_Reward[3301250][2]["DeleteItem"] = {}
	tInterestingPointsActivity_Reward[3301250][2]["DeleteItem"][1] = {}
	tInterestingPointsActivity_Reward[3301250][2]["DeleteItem"][1]["Id"] = 3301250
	tInterestingPointsActivity_Reward[3301250][2]["DeleteItem"][1]["ItemNum"] = 108
	tInterestingPointsActivity_Reward[3301250][2]["RewardItem"] = {}
	tInterestingPointsActivity_Reward[3301250][2]["RewardItem"][1] = {}
	tInterestingPointsActivity_Reward[3301250][2]["RewardItem"][1]["Id"] = 730005--合成+5赤炼石
	tInterestingPointsActivity_Reward[3301250][2]["RewardItem"][1]["Attr"] = "0 1 3 2880 1"
	tInterestingPointsActivity_Reward[3301250][2]["Log"] = "0,0,0,0,12000543,2,730005,1"
	tInterestingPointsActivity_Reward[3301250][3] = {}
	tInterestingPointsActivity_Reward[3301250][3]["DeleteItem"] = {}
	tInterestingPointsActivity_Reward[3301250][3]["DeleteItem"][1] = {}
	tInterestingPointsActivity_Reward[3301250][3]["DeleteItem"][1]["Id"] = 3301250
	tInterestingPointsActivity_Reward[3301250][3]["DeleteItem"][1]["ItemNum"] = 972
	tInterestingPointsActivity_Reward[3301250][3]["RewardItem"] = {}
	tInterestingPointsActivity_Reward[3301250][3]["RewardItem"][1] = {}
	tInterestingPointsActivity_Reward[3301250][3]["RewardItem"][1]["Id"] = 730007--合成+7赤炼石
	tInterestingPointsActivity_Reward[3301250][3]["RewardItem"][1]["Attr"] = "0 1 3 2880 1"
	tInterestingPointsActivity_Reward[3301250][3]["Log"] = "0,0,0,0,12000543,2,730007,1"
	--星陨石结晶数量足够，合成星陨石
	tInterestingPointsActivity_Reward[3301251] = {}
	tInterestingPointsActivity_Reward[3301251][1] = {}
	tInterestingPointsActivity_Reward[3301251][1]["DeleteItem"] = {}
	tInterestingPointsActivity_Reward[3301251][1]["DeleteItem"][1] = {}
	tInterestingPointsActivity_Reward[3301251][1]["DeleteItem"][1]["Id"] = 3301251
	tInterestingPointsActivity_Reward[3301251][1]["DeleteItem"][1]["ItemNum"] = 10
	tInterestingPointsActivity_Reward[3301251][1]["RewardItem"] = {}
	tInterestingPointsActivity_Reward[3301251][1]["RewardItem"][1] = {}
	tInterestingPointsActivity_Reward[3301251][1]["RewardItem"][1]["Id"] = 3009001--合成明亮星陨石
	tInterestingPointsActivity_Reward[3301251][1]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tInterestingPointsActivity_Reward[3301251][1]["Log"] = "0,0,0,0,12000543,2,3009001,1"
	tInterestingPointsActivity_Reward[3301251][2] = {}
	tInterestingPointsActivity_Reward[3301251][2]["DeleteItem"] = {}
	tInterestingPointsActivity_Reward[3301251][2]["DeleteItem"][1] = {}
	tInterestingPointsActivity_Reward[3301251][2]["DeleteItem"][1]["Id"] = 3301251
	tInterestingPointsActivity_Reward[3301251][2]["DeleteItem"][1]["ItemNum"] = 100
	tInterestingPointsActivity_Reward[3301251][2]["RewardItem"] = {}
	tInterestingPointsActivity_Reward[3301251][2]["RewardItem"][1] = {}
	tInterestingPointsActivity_Reward[3301251][2]["RewardItem"][1]["Id"] = 3009002--合成晶莹星陨石
	tInterestingPointsActivity_Reward[3301251][2]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tInterestingPointsActivity_Reward[3301251][2]["Log"] = "0,0,0,0,12000543,2,3009002,1"
	tInterestingPointsActivity_Reward[3301251][3] = {}
	tInterestingPointsActivity_Reward[3301251][3]["DeleteItem"] = {}
	tInterestingPointsActivity_Reward[3301251][3]["DeleteItem"][1] = {}
	tInterestingPointsActivity_Reward[3301251][3]["DeleteItem"][1]["Id"] = 3301251
	tInterestingPointsActivity_Reward[3301251][3]["DeleteItem"][1]["ItemNum"] = 1000
	tInterestingPointsActivity_Reward[3301251][3]["RewardItem"] = {}
	tInterestingPointsActivity_Reward[3301251][3]["RewardItem"][1] = {}
	tInterestingPointsActivity_Reward[3301251][3]["RewardItem"][1]["Id"] = 3009003--合成璀璨星陨石
	tInterestingPointsActivity_Reward[3301251][3]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tInterestingPointsActivity_Reward[3301251][3]["Log"] = "0,0,0,0,12000543,2,3009003,1"
	--赠点结晶数量足够，合成增点
	tInterestingPointsActivity_Reward[3301252] = {}
	tInterestingPointsActivity_Reward[3301252][1] = {}
	tInterestingPointsActivity_Reward[3301252][1]["DeleteItem"] = {}
	tInterestingPointsActivity_Reward[3301252][1]["DeleteItem"][1] = {}
	tInterestingPointsActivity_Reward[3301252][1]["DeleteItem"][1]["Id"] = 3301252
	tInterestingPointsActivity_Reward[3301252][1]["DeleteItem"][1]["ItemNum"] = 20
	tInterestingPointsActivity_Reward[3301252][1]["RewardEMoneyMono"] = {}
	tInterestingPointsActivity_Reward[3301252][1]["RewardEMoneyMono"]["Value"] = 300--合成300赠点
	tInterestingPointsActivity_Reward[3301252][1]["Log"] = "0,0,0,0,12000543,2,3,300"
	tInterestingPointsActivity_Reward[3301252][2] = {}
	tInterestingPointsActivity_Reward[3301252][2]["DeleteItem"] = {}
	tInterestingPointsActivity_Reward[3301252][2]["DeleteItem"][1] = {}
	tInterestingPointsActivity_Reward[3301252][2]["DeleteItem"][1]["Id"] = 3301252
	tInterestingPointsActivity_Reward[3301252][2]["DeleteItem"][1]["ItemNum"] = 100
	tInterestingPointsActivity_Reward[3301252][2]["RewardEMoneyMono"] = {}
	tInterestingPointsActivity_Reward[3301252][2]["RewardEMoneyMono"]["Value"] = 1500--合成1500赠点
	tInterestingPointsActivity_Reward[3301252][2]["Log"] = "0,0,0,0,12000543,2,3,1500"
	--气力结晶数量足够，合成气力值
	tInterestingPointsActivity_Reward[3301253] = {}
	tInterestingPointsActivity_Reward[3301253][1] = {}
	tInterestingPointsActivity_Reward[3301253][1]["DeleteItem"] = {}
	tInterestingPointsActivity_Reward[3301253][1]["DeleteItem"][1] = {}
	tInterestingPointsActivity_Reward[3301253][1]["DeleteItem"][1]["Id"] = 3301253
	tInterestingPointsActivity_Reward[3301253][1]["DeleteItem"][1]["ItemNum"] = 10
	tInterestingPointsActivity_Reward[3301253][1]["RewardStrengthValue"] = {}
	tInterestingPointsActivity_Reward[3301253][1]["RewardStrengthValue"]["Value"] = 500--合成500气力值
	tInterestingPointsActivity_Reward[3301253][1]["Log"] = "0,0,0,0,12000543,2,12,500"
	tInterestingPointsActivity_Reward[3301253][2] = {}
	tInterestingPointsActivity_Reward[3301253][2]["LogId"] = 12000543
	tInterestingPointsActivity_Reward[3301253][2]["DeleteItem"] = {}
	tInterestingPointsActivity_Reward[3301253][2]["DeleteItem"][1] = {}
	tInterestingPointsActivity_Reward[3301253][2]["DeleteItem"][1]["Id"] = 3301253
	tInterestingPointsActivity_Reward[3301253][2]["DeleteItem"][1]["ItemNum"] = 100
	tInterestingPointsActivity_Reward[3301253][2]["RewardStrengthValue"] = {}
	tInterestingPointsActivity_Reward[3301253][2]["RewardStrengthValue"]["Value"] = 5000--合成5000气力值
	tInterestingPointsActivity_Reward[3301253][2]["Log"] = "0,0,0,0,12000543,2,12,5000"

--其他XX结晶数量不够，使用天石后奖励模板
local tInterestingPointsActivity_Reward1 = {}
	--星陨石结晶天石补齐后合成奖励
	tInterestingPointsActivity_Reward1[3301251] = {}
	tInterestingPointsActivity_Reward1[3301251][1] = {}
	tInterestingPointsActivity_Reward1[3301251][1]["RewardItem"] = {}
	tInterestingPointsActivity_Reward1[3301251][1]["RewardItem"][1] = {}
	tInterestingPointsActivity_Reward1[3301251][1]["RewardItem"][1]["Id"] = 3009001--合成明亮星陨石
	tInterestingPointsActivity_Reward1[3301251][1]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tInterestingPointsActivity_Reward1[3301251][1]["Log"] = "0,0,0,0,12000543,2,3009001,1"
	tInterestingPointsActivity_Reward1[3301251][1]["EmoneyLog"] = "350	20988	%d	%d	1	"
	tInterestingPointsActivity_Reward1[3301251][2] = {}
	tInterestingPointsActivity_Reward1[3301251][2]["RewardItem"] = {}
	tInterestingPointsActivity_Reward1[3301251][2]["RewardItem"][1] = {}
	tInterestingPointsActivity_Reward1[3301251][2]["RewardItem"][1]["Id"] = 3009002--合成晶莹星陨石
	tInterestingPointsActivity_Reward1[3301251][2]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tInterestingPointsActivity_Reward1[3301251][2]["Log"] = "0,0,0,0,12000543,2,3009002,1"
	tInterestingPointsActivity_Reward1[3301251][2]["EmoneyLog"] = "350	20989	%d	%d	1	"
	tInterestingPointsActivity_Reward1[3301251][3] = {}
	tInterestingPointsActivity_Reward1[3301251][3]["RewardItem"] = {}
	tInterestingPointsActivity_Reward1[3301251][3]["RewardItem"][1] = {}
	tInterestingPointsActivity_Reward1[3301251][3]["RewardItem"][1]["Id"] = 3009003--合成璀璨星陨石
	tInterestingPointsActivity_Reward1[3301251][3]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tInterestingPointsActivity_Reward1[3301251][3]["Log"] = "0,0,0,0,12000543,2,3009003,1"
	tInterestingPointsActivity_Reward1[3301251][3]["EmoneyLog"] = "350	20990	%d	%d	1	"
	--赠点结晶天石补齐后合成奖励
	tInterestingPointsActivity_Reward1[3301252] = {}
	tInterestingPointsActivity_Reward1[3301252][1] = {}
	tInterestingPointsActivity_Reward1[3301252][1]["RewardEMoneyMono"] = {}
	tInterestingPointsActivity_Reward1[3301252][1]["RewardEMoneyMono"]["Value"] = 300--合成300赠点
	tInterestingPointsActivity_Reward1[3301252][1]["Log"] = "0,0,0,0,12000543,2,3,300"
	tInterestingPointsActivity_Reward1[3301252][1]["EmoneyLog"] = "350	20991	%d	%d	1	"
	tInterestingPointsActivity_Reward1[3301252][2] = {}
	tInterestingPointsActivity_Reward1[3301252][2]["RewardEMoneyMono"] = {}
	tInterestingPointsActivity_Reward1[3301252][2]["RewardEMoneyMono"]["Value"] = 1500--合成1500赠点
	tInterestingPointsActivity_Reward1[3301252][2]["Log"] = "0,0,0,0,12000543,2,3,1500"
	tInterestingPointsActivity_Reward1[3301252][2]["EmoneyLog"] = "350	20992	%d	%d	1	"
	--气力结晶天石补齐后合成奖励
	tInterestingPointsActivity_Reward1[3301253] = {}
	tInterestingPointsActivity_Reward1[3301253][1] = {}
	tInterestingPointsActivity_Reward1[3301253][1]["RewardStrengthValue"] = {}
	tInterestingPointsActivity_Reward1[3301253][1]["RewardStrengthValue"]["Value"] = 500--合成500气力值
	tInterestingPointsActivity_Reward1[3301253][1]["Log"] = "0,0,0,0,12000543,2,12,500"
	tInterestingPointsActivity_Reward1[3301253][1]["EmoneyLog"] = "350	20993	%d	%d	1	"
	tInterestingPointsActivity_Reward1[3301253][2] = {}
	tInterestingPointsActivity_Reward1[3301253][2]["RewardStrengthValue"] = {}
	tInterestingPointsActivity_Reward1[3301253][2]["RewardStrengthValue"]["Value"] = 5000--合成5000气力值
	tInterestingPointsActivity_Reward1[3301253][2]["Log"] = "0,0,0,0,12000543,2,12,5000"
	tInterestingPointsActivity_Reward1[3301253][2]["EmoneyLog"] = "350	20994	%d	%d	1	"
	
--赤练石结晶数量不够，使用天石后奖励模板
local tInterestingPointsActivity_Reward2 = {}
	--12个赤练石结晶天石补齐后合成奖励
	tInterestingPointsActivity_Reward2[3301250] = {}
	tInterestingPointsActivity_Reward2[3301250][1] = {}
	tInterestingPointsActivity_Reward2[3301250][1]["ItemChanceSum"] = 108
	tInterestingPointsActivity_Reward2[3301250][1][1] = {} 
	tInterestingPointsActivity_Reward2[3301250][1][1]["RandomItemChanceType"] = 2
	tInterestingPointsActivity_Reward2[3301250][1][1]["ItemChance"] = 108
	tInterestingPointsActivity_Reward2[3301250][1][1]["RewardItem"] = {}
	tInterestingPointsActivity_Reward2[3301250][1][1]["RewardItem"][1] = {}
	tInterestingPointsActivity_Reward2[3301250][1][1]["RewardItem"][1]["Id"] = 730003--合成+3赤炼石
	tInterestingPointsActivity_Reward2[3301250][1][1]["RewardItem"][1]["Attr"] = "0 1 3 2880 1" 
  	tInterestingPointsActivity_Reward2[3301250][1][1]["Log"] = "0,0,0,0,12000543,2,730003,1"
	tInterestingPointsActivity_Reward2[3301250][1][1]["EmoneyLog"] = "350	20983	%d	%d	1	"
	tInterestingPointsActivity_Reward2[3301250][1][2] = {} 
	tInterestingPointsActivity_Reward2[3301250][1][2]["RandomItemChanceType"] = 2
	tInterestingPointsActivity_Reward2[3301250][1][2]["ItemChance"] = 0
	tInterestingPointsActivity_Reward2[3301250][1][2]["RewardItem"] = {}
	tInterestingPointsActivity_Reward2[3301250][1][2]["RewardItem"][1] = {}
	tInterestingPointsActivity_Reward2[3301250][1][2]["RewardItem"][1]["Id"] = 730003--合成+3赤炼石(非赠)
	tInterestingPointsActivity_Reward2[3301250][1][2]["RewardItem"][1]["Attr"] = "0 1" 
 	tInterestingPointsActivity_Reward2[3301250][1][2]["Log"] = "0,0,0,0,12000543,2,730003,1"
	tInterestingPointsActivity_Reward2[3301250][1][2]["EmoneyLog"] = "350	20983	%d	%d	1	"
	--108个赤练石结晶天石补齐后合成奖励
	tInterestingPointsActivity_Reward2[3301250][2] = {}
	tInterestingPointsActivity_Reward2[3301250][2]["ItemChanceSum"] = 972
	tInterestingPointsActivity_Reward2[3301250][2][1] = {} 
	tInterestingPointsActivity_Reward2[3301250][2][1]["RandomItemChanceType"] = 2
	tInterestingPointsActivity_Reward2[3301250][2][1]["ItemChance"] = 972
	tInterestingPointsActivity_Reward2[3301250][2][1]["RewardItem"] = {}
	tInterestingPointsActivity_Reward2[3301250][2][1]["RewardItem"][1] = {}
	tInterestingPointsActivity_Reward2[3301250][2][1]["RewardItem"][1]["Id"] = 730005--合成+5赤炼石
	tInterestingPointsActivity_Reward2[3301250][2][1]["RewardItem"][1]["Attr"] = "0 1 3 2880 1" 
	tInterestingPointsActivity_Reward2[3301250][2][1]["Log"] = "0,0,0,0,12000543,2,730005,1"
	tInterestingPointsActivity_Reward2[3301250][2][1]["EmoneyLog"] = "350	20985	%d	%d	1	"
	tInterestingPointsActivity_Reward2[3301250][2][2] = {} 
	tInterestingPointsActivity_Reward2[3301250][2][2]["RandomItemChanceType"] = 2
	tInterestingPointsActivity_Reward2[3301250][2][2]["ItemChance"] = 0
	tInterestingPointsActivity_Reward2[3301250][2][2]["RewardItem"] = {}
	tInterestingPointsActivity_Reward2[3301250][2][2]["RewardItem"][1] = {}
	tInterestingPointsActivity_Reward2[3301250][2][2]["RewardItem"][1]["Id"] = 730005--合成+5赤炼石(非赠)
	tInterestingPointsActivity_Reward2[3301250][2][2]["RewardItem"][1]["Attr"] = "0 1" 
	tInterestingPointsActivity_Reward2[3301250][2][2]["Log"] = "0,0,0,0,12000543,2,730005,1"
	tInterestingPointsActivity_Reward2[3301250][2][2]["EmoneyLog"] = "350	20985	%d	%d	1	"
	--972个赤练石结晶天石补齐后合成奖励
	tInterestingPointsActivity_Reward2[3301250][3] = {}
	tInterestingPointsActivity_Reward2[3301250][3]["ItemChanceSum"] = 8748
	tInterestingPointsActivity_Reward2[3301250][3][1] = {} 
	tInterestingPointsActivity_Reward2[3301250][3][1]["RandomItemChanceType"] = 2
	tInterestingPointsActivity_Reward2[3301250][3][1]["ItemChance"] = 8748
	tInterestingPointsActivity_Reward2[3301250][3][1]["RewardItem"] = {}
	tInterestingPointsActivity_Reward2[3301250][3][1]["RewardItem"][1] = {}
	tInterestingPointsActivity_Reward2[3301250][3][1]["RewardItem"][1]["Id"] = 730007--合成+7赤炼石
	tInterestingPointsActivity_Reward2[3301250][3][1]["RewardItem"][1]["Attr"] = "0 1 3 2880 1" 
	tInterestingPointsActivity_Reward2[3301250][3][1]["Log"] = "0,0,0,0,12000543,2,730007,1"
	tInterestingPointsActivity_Reward2[3301250][3][1]["EmoneyLog"] = "350	20987	%d	%d	1	"
	tInterestingPointsActivity_Reward2[3301250][3][2] = {} 
	tInterestingPointsActivity_Reward2[3301250][3][2]["RandomItemChanceType"] = 2
	tInterestingPointsActivity_Reward2[3301250][3][2]["ItemChance"] = 0
	tInterestingPointsActivity_Reward2[3301250][3][2]["RewardItem"] = {}
	tInterestingPointsActivity_Reward2[3301250][3][2]["RewardItem"][1] = {}
	tInterestingPointsActivity_Reward2[3301250][3][2]["RewardItem"][1]["Id"] = 730007--合成+7赤炼石(非赠)
	tInterestingPointsActivity_Reward2[3301250][3][2]["RewardItem"][1]["Attr"] = "0 1" 
	tInterestingPointsActivity_Reward2[3301250][3][2]["Log"] = "0,0,0,0,12000543,2,730007,1"
	tInterestingPointsActivity_Reward2[3301250][3][2]["EmoneyLog"] = "350	20987	%d	%d	1	"
-- 寻路位置
local tInterestingPointsActivity_FindWay = {}
	-- 寻路到主NPC处
	tInterestingPointsActivity_FindWay[19980] = {}
	tInterestingPointsActivity_FindWay[19980]["MapId"] = 1002
	tInterestingPointsActivity_FindWay[19980]["PosX"] = 356
	tInterestingPointsActivity_FindWay[19980]["PosY"] = 421

--------------------------------------逻辑模块-------------------------------------------
--XX结晶合成条件判断
function InterestingPointsActivity_ChkCrystalSynthesis(nItemId,nNum,nIndex,sRewardItemName)
	local nUserId =Get_UserId()
	local nCount = Get_CountItemType(nItemId,0,1)
	tInterestingPointsActivity_Num[nUserId] = 0
	tInterestingPointsActivity_Choose[nUserId] = 0
	tInterestingPointsActivity_ItemNum[nUserId] = 0
	--判断活动时间
		 if not Sys_ChkFullTime(tInterestingPointsActivity_Cont["ActivityTime"] ) then
			if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId,nUserId) then
				User_TalkChannel2005(tInterestingPointsActivity_Text["OutTime"])
			end
		return true
	 end
	--检查物品
	if not Item_ChkItem(nItemId) then
		User_TalkChannel2005(tInterestingPointsActivity_Text["NoNumItem"])
		return
	end 
	--结晶数量足够
	if Item_ChkMulItem(nItemId,nItemId,nNum) then 
		--XX结晶合成
		RewardTemplate_UseItemAndMsg(tInterestingPointsActivity_Reward[nItemId][nIndex])
		return true
	end
	--结晶数量不足
	local nCount1 = nNum - nCount 
	local nPrice = tInterestingPointsActivity_Item[nItemId]["nCount"] * nCount1
	tInterestingPointsActivity_Num[nUserId] = nPrice
	tInterestingPointsActivity_Choose[nUserId] = nIndex
	tInterestingPointsActivity_ItemNum[nUserId] = nCount
	if nItemId == 3301250 then 
		tItem[nItemId]["Text211"]  = string.format(tInterestingPointsActivity_Text["Text211"] ,nCount,tInterestingPointsActivity_Item[nItemId]["Name"],tInterestingPointsActivity_Item[nItemId]["nCount"],tInterestingPointsActivity_Text["Index"][nIndex])
	else 
		tItem[nItemId]["Text211"]  = string.format(tInterestingPointsActivity_Text["Text211"] ,nCount,tInterestingPointsActivity_Item[nItemId]["Name"],tInterestingPointsActivity_Item[nItemId]["nCount"],"")
	end 
	tItem[nItemId]["Option5"] = string.format(tInterestingPointsActivity_Text["Option5"],nPrice)
	if nItemId == 3301250 then 
		tItem[nItemId]["Text221"]  = string.format(tInterestingPointsActivity_Text["Text221"] ,nPrice,nCount1,tInterestingPointsActivity_Item[nItemId]["Name"],sRewardItemName,tInterestingPointsActivity_Text["Index"][nIndex])
	else 
		tItem[nItemId]["Text221"]  = string.format(tInterestingPointsActivity_Text["Text221"] ,nPrice,nCount1,tInterestingPointsActivity_Item[nItemId]["Name"],sRewardItemName,"")
	end 
	tItem[nItemId]["Option7"] = string.format(tInterestingPointsActivity_Text["Option7"],nPrice)
	tInterestingPointsActivity_Text["NoEmoney2"] =string.format(tInterestingPointsActivity_Text["NoEmoney"],nPrice,sRewardItemName)
	LinkItemGossipFunc_New(nItemId,"2-1")
end


--用天石补齐结晶，再合成
function InterestingPointsActivity_UseTianShi(nItemId)
	local nUserId =Get_UserId()
	local nUserEMoney = Get_UserEMoney()
	local nPrice = tInterestingPointsActivity_Num[nUserId]
	local nIndex = tInterestingPointsActivity_Choose[nUserId]
	local nCount = tInterestingPointsActivity_ItemNum[nUserId]
	--判断活动时间
	if not Sys_ChkFullTime(tInterestingPointsActivity_Cont["ActivityTime"] ) then
			if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId,nUserId) then
				User_TalkChannel2005(tInterestingPointsActivity_Text["OutTime"])
			end
		return true
	 end
	--检查物品
	if not Item_ChkMulItem(nItemId,nItemId,nCount) then
		User_TalkChannel2005(tInterestingPointsActivity_Text["NoNumItem"])
		return true
		end 
	--判断天石是否足够
	if nUserEMoney < nPrice then
		User_TalkChannel2005(tInterestingPointsActivity_Text["NoEmoney2"])
		return true
	end
	--扣天石
	if not User_AddEMoney(-nPrice) then
		return false
	end
	-- Sys_SaveEmoneyBuy(string.format(tInterestingPointsActivity_Log["EmoneyLog"][nItemId],nPrice,nPrice))
	--删物品
	Item_DelAllItemByType(nItemId,nUserId)
	--赤练石结晶合成
	if nItemId == 3301250 then
		local nDate1 = tInterestingPointsActivity_Reward2[nItemId][nIndex]["ItemChanceSum"]  - nPrice
		local tRandomReward = CommonFunc_Copy(tInterestingPointsActivity_Reward2[nItemId])
		tRandomReward[nIndex][1]["ItemChance"] = nDate1
		tRandomReward[nIndex][1]["EmoneyLog"] = string.format(tInterestingPointsActivity_Reward2[nItemId][nIndex][1]["EmoneyLog"], nPrice, nPrice)
		tRandomReward[nIndex][2]["ItemChance"] = nPrice
		tRandomReward[nIndex][2]["EmoneyLog"] = string.format(tInterestingPointsActivity_Reward2[nItemId][nIndex][2]["EmoneyLog"], nPrice, nPrice)
		Sys_SaveEmoneyBuy(tRandomReward[nIndex][1]["EmoneyLog"])
		RewardTemplate_NewRandom(tRandomReward,nIndex)
		return true
	end
	--其他XX结晶合成
	local tReward = CommonFunc_Copy(tInterestingPointsActivity_Reward1[nItemId][nIndex])
	tReward["EmoneyLog"] = string.format(tInterestingPointsActivity_Reward1[nItemId][nIndex]["EmoneyLog"], nPrice, nPrice)
	RewardTemplate_UseItemAndMsg(tReward)
end

--活动时间外出提示、删物品
function InterestingPointsActivity_Judge(nItemId)
	  if CommonFunc_GetAfterActivityTime(tInterestingPointsActivity_Cont["ActivityTime"] ) then
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId,nUserId) then
			User_TalkChannel2005(tInterestingPointsActivity_Text["OutTime"])
		end
		return true
	 end
 	LinkItemGossipFunc_New(nItemId,"1-2")
end

--自动寻路位置
function  InterestingPointsActivity_Goto(nNpcId)
local PoxX = tInterestingPointsActivity_FindWay[19980]["PosX"]
local PosY = tInterestingPointsActivity_FindWay[19980]["PosY"]
local MapId = tInterestingPointsActivity_FindWay[19980]["MapId"]
Sys_GotoSomeWhere(PoxX,PosY,MapId,19980)
end

--------------------------------------------------------------物品配置----------------------------------------------------------------
--赤炼石结晶
tItem[3301250] = tItem[3301250] or {}
tItem[3301250]["DialogueText"] = tInterestingPointsActivity_Text[3301250]
tItem[3301250]["Function"] = function(nItemId)
	 InterestingPointsActivity_Judge(nItemId)
end
--在活动时间内
tItem[3301250]["Text1-2"] = {121,122}
tItem[3301250]["tOption1-2"] = {1,2,3,4}
--用天石补齐赤炼石结晶
tItem[3301250]["Text2-1"] = {211}
tItem[3301250]["tOption2-1"] = {5,6}
--二次确认
tItem[3301250]["Text2-2"] = {221}
tItem[3301250]["tOption2-2"] = {7,8}
--赤炼石结晶选项
tItem[3301250]["OptionFunc1"] = "InterestingPointsActivity_ChkCrystalSynthesis</N>3301250</N>12</N>1</S>" .. tInterestingPointsActivity_Text[3301250]["ItemName1"]
tItem[3301250]["OptionFunc2"] = "InterestingPointsActivity_ChkCrystalSynthesis</N>3301250</N>108</N>2</S>" .. tInterestingPointsActivity_Text[3301250]["ItemName2"]
tItem[3301250]["OptionFunc3"] = "InterestingPointsActivity_ChkCrystalSynthesis</N>3301250</N>972</N>3</S>" .. tInterestingPointsActivity_Text[3301250]["ItemName3"]
tItem[3301250]["OptionPoint5"] = "2-2"
tItem[3301250]["OptionPoint6"] = "1-2"
tItem[3301250]["OptionFunc7"] = "InterestingPointsActivity_UseTianShi</N>3301250"

--星陨石结晶
tItem[3301251] = tItem[3301251] or {}
tItem[3301251]["DialogueText"] = tInterestingPointsActivity_Text[3301251]
tItem[3301251]["Function"] = function(nItemId)
	 InterestingPointsActivity_Judge(nItemId)
end
--在活动时间内
tItem[3301251]["Text1-2"] = {121}
tItem[3301251]["tOption1-2"] = {1,2,3,4}
--用天石补齐星陨石结晶
tItem[3301251]["Text2-1"] = {211}
tItem[3301251]["tOption2-1"] = {5,6}
--二次确认
tItem[3301251]["Text2-2"] = {221}
tItem[3301251]["tOption2-2"] = {7,8}
--星陨石结晶选项
tItem[3301251]["OptionFunc1"] = "InterestingPointsActivity_ChkCrystalSynthesis</N>3301251</N>10</N>1</S>" .. tInterestingPointsActivity_Text[3301251]["ItemName1"]
tItem[3301251]["OptionFunc2"] = "InterestingPointsActivity_ChkCrystalSynthesis</N>3301251</N>100</N>2</S>" .. tInterestingPointsActivity_Text[3301251]["ItemName2"]
tItem[3301251]["OptionFunc3"] = "InterestingPointsActivity_ChkCrystalSynthesis</N>3301251</N>1000</N>3</S>" .. tInterestingPointsActivity_Text[3301251]["ItemName3"]
tItem[3301251]["OptionPoint5"] = "2-2"
tItem[3301251]["OptionPoint6"] = "1-2"
tItem[3301251]["OptionFunc7"] = "InterestingPointsActivity_UseTianShi</N>3301251"

--增点结晶
tItem[3301252] = tItem[3301252] or {}
tItem[3301252]["DialogueText"] =tInterestingPointsActivity_Text[3301252]
tItem[3301252]["Function"] = function(nItemId)
	 InterestingPointsActivity_Judge(nItemId)
end
--在活动时间内
tItem[3301252]["Text1-2"] = {121,122}
tItem[3301252]["tOption1-2"] = {1,2,3}
--用天石补齐增点结晶
tItem[3301252]["Text2-1"] = {211}
tItem[3301252]["tOption2-1"] = {5,6}
--二次确认
tItem[3301252]["Text2-2"] = {221}
tItem[3301252]["tOption2-2"] = {7,8}
--赠点结晶选项
tItem[3301252]["OptionFunc1"] = "InterestingPointsActivity_ChkCrystalSynthesis</N>3301252</N>20</N>1</S>" .. tInterestingPointsActivity_Text[3301252]["ItemName1"] 
tItem[3301252]["OptionFunc2"] = "InterestingPointsActivity_ChkCrystalSynthesis</N>3301252</N>100</N>2</S>" .. tInterestingPointsActivity_Text[3301252]["ItemName2"] 
tItem[3301252]["OptionPoint5"] = "2-2"
tItem[3301252]["OptionPoint6"] = "1-2"
tItem[3301252]["OptionFunc7"] = "InterestingPointsActivity_UseTianShi</N>3301252"

--气力结晶
tItem[3301253] = tItem[3301253] or {}
tItem[3301253]["DialogueText"] =tInterestingPointsActivity_Text[3301253]
tItem[3301253]["Function"] = function(nItemId)
	 InterestingPointsActivity_Judge(nItemId)
end
--在活动时间内
tItem[3301253]["Text1-2"] = {121,122}
tItem[3301253]["tOption1-2"] = {1,2,3}
--用天石补齐气力结晶
tItem[3301253]["Text2-1"] = {211}
tItem[3301253]["tOption2-1"] = {5,6}
--二次确认
tItem[3301253]["Text2-2"] = {221}
tItem[3301253]["tOption2-2"] = {7,8}
--气力结晶选项
tItem[3301253]["OptionFunc1"] = "InterestingPointsActivity_ChkCrystalSynthesis</N>3301253</N>10</N>1</S>" .. tInterestingPointsActivity_Text[3301253]["ItemName1"] 
tItem[3301253]["OptionFunc2"] = "InterestingPointsActivity_ChkCrystalSynthesis</N>3301253</N>100</N>2</S>" .. tInterestingPointsActivity_Text[3301253]["ItemName2"] 
tItem[3301253]["OptionPoint5"] = "2-2"
tItem[3301253]["OptionPoint6"] = "1-2"
tItem[3301253]["OptionFunc7"] = "InterestingPointsActivity_UseTianShi</N>3301253"

--琳琅积分券
tItem[3301255] = tItem[3301255] or {}
tItem[3301255]["Function"] = function(nItemId,sItemName)
	if not Sys_ChkFullTime(tInterestingPointsActivity_Cont["ChangeTime"]) then
		if  Item_ChkItem(nItemId)then
			Item_DelAllItemByType(nItemId)
			Sys_MsgBox(tInterestingPointsActivity_Text["OutTime"])
			return
		end
	end
	 InterestingPointsActivity_Goto()
end

