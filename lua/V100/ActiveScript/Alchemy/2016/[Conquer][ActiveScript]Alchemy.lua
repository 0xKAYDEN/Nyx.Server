------------------------------------------------------------------------------------
--Name:			151231[英文征服][活动脚本]炼金术活动(2.1-2.7)
--Purpose:		炼金术活动(2.1-2.7)
--Creator:		王倩娜
--Created:		2015-12-31
------------------------------------------------------------------------------------
--[[
命名前缀 Alchemy_


######掩码说明
#stc(141,26) 背包信
#
#stc(141,27) 免费次数 每日上限10次
#--花钱部分
#stc(141,28) 所有消费后的炼化次数，用来判断奖励次数
#stc(141,29) 付费激活成功的标志 1
#stc(141,30) 激活的交换次数 5次、6次、7次

#stc(142,23) 怪物掉落碎片，1天3个 0.2%且每人每天最多获得三个。

#logid 12000299

]]--
-------------------------------数据存储表------------------------
--天石检测。
function Alchemy_ChkEMoney(nNeedMoney)
	local nEmoney = Get_UserEMoney()
	nNeedMoney = math.abs(nNeedMoney)
	if nEmoney <  nNeedMoney then
		return false
	end
	return true
end


local tAlchemy_Cont = {}
	tAlchemy_Cont["BeforeTime"] = "2015-01-01 00:00 2016-02-17 23:59"
	tAlchemy_Cont["DuringTime"] = "2016-02-18 00:00 2016-02-29 23:59"

	tAlchemy_Cont["Metempsychosis"] = 0
	tAlchemy_Cont["Level"] = 80
	
	tAlchemy_Cont["Effect"] = {}
	tAlchemy_Cont["Effect"]["AlchSuccess"] = "fam_gain"
	tAlchemy_Cont["Effect"]["WashSuccess"] = "relive"
	--巨鲲觉醒
	tAlchemy_Cont["Effect"]["NpcWake"] = "changefig"
	--log
	tAlchemy_Cont["Log"] = {}
	tAlchemy_Cont["Log"][3008346] = "0,0,3008346,5,12000299,1[1],%d,1"	--宝矿碎片合成
	tAlchemy_Cont["Log"][3008351] = "0,0,3008351,15,12000299,1[14],%d,1"	--外套碎片合成
	
	tAlchemy_Cont["Log"]["WashAction"] = "0,0,3008352[%d],%d[1],12000299,1[12],%d,1" 	--洗赠成功
	tAlchemy_Cont["Log"]["AfterActivity"] = "0,0,3008352,1,12000299,1[15],12,500" 		--洗增过期获得500气力值

	tAlchemy_Cont["Log"]["OpenGift"] = {}		--开礼包系列
	tAlchemy_Cont["Log"]["OpenGift"][1] = "0,0,%d,1,12000299,1[16],%d,1"
	tAlchemy_Cont["Log"]["OpenGift"][2] = "0,0,%d,1,12000299,1[16],12,%d"


local tAlchemy_Stc = {}
	-- #stc(141,27) 免费次数 每日上限10次
		tAlchemy_Stc["FreeChange"] = {}
		tAlchemy_Stc["FreeChange"]["Event"] = 141
		tAlchemy_Stc["FreeChange"]["StcType"] = 27
		tAlchemy_Stc["FreeChange"]["Count"] = 10

	--花钱部分
		-- stc(141,28) 所有消费后的炼化次数，用来判断奖励次数
		tAlchemy_Stc["AllChance"] = {}
		tAlchemy_Stc["AllChance"]["Event"] = 141
		tAlchemy_Stc["AllChance"]["StcType"] = 28

		-- stc(141,30) 激活的交换次数 5次、6次、7次
		tAlchemy_Stc["ActivateChance"] = {}
		tAlchemy_Stc["ActivateChance"]["Event"] = 141
		tAlchemy_Stc["ActivateChance"]["StcType"] = 30
	
-- #stc(142,23) 怪物掉落碎片，1天3个 0.2%且每人每天最多获得三个。
		tAlchemy_Stc["FragmentGet"] = {}
		tAlchemy_Stc["FragmentGet"]["Event"] = 142
		tAlchemy_Stc["FragmentGet"]["StcType"] = 23
		tAlchemy_Stc["FragmentGet"]["Reward"] = 3
		
		tAlchemy_Stc["FragmentGet"]["ItemId"] = 3008346
		tAlchemy_Stc["FragmentGet"]["Log"] = "0,0,0,0,12000299,2,3008346,1"		--怪物掉落的碎片

-- 碎片合成表
local tAlchemy_Fragment = {}
	tAlchemy_Fragment["Space"] = 1
	
	tAlchemy_Fragment[3008346] = {}
	tAlchemy_Fragment[3008346]["EnoughNum"] = 5
	tAlchemy_Fragment[3008346]["NewItem"] = 3008353
	tAlchemy_Fragment[3008346]["Attr"] = ""
	tAlchemy_Fragment[3008346]["Effect"] = "zf2-e290"
	
	tAlchemy_Fragment[3008351] = {}
	tAlchemy_Fragment[3008351]["EnoughNum"] = 15
	tAlchemy_Fragment[3008351]["NewItem"] = {}
	tAlchemy_Fragment[3008351]["Attr"] = "0 0 3 0 0 0 0 1"
	tAlchemy_Fragment[3008351]["Effect"] = "born"

	--概率
	tAlchemy_Fragment["Reward"] = {}
	tAlchemy_Fragment["Reward"][1] = {}
	tAlchemy_Fragment["Reward"][1]["ItemChanceSum"] = 10000

	tAlchemy_Fragment["Reward"][1][1] = {}
	tAlchemy_Fragment["Reward"][1][1]["RandomItemChanceType"] = 2
	tAlchemy_Fragment["Reward"][1][1]["ItemChance"] = 3300
	tAlchemy_Fragment["Reward"][1][1]["Item_1"] = 184325

	tAlchemy_Fragment["Reward"][1][2] = {}
	tAlchemy_Fragment["Reward"][1][2]["RandomItemChanceType"] = 2
	tAlchemy_Fragment["Reward"][1][2]["ItemChance"] = 3300
	tAlchemy_Fragment["Reward"][1][2]["Item_1"] = 188175

	tAlchemy_Fragment["Reward"][1][3] = {}
	tAlchemy_Fragment["Reward"][1][3]["RandomItemChanceType"] = 2
	tAlchemy_Fragment["Reward"][1][3]["ItemChance"] = 2400
	tAlchemy_Fragment["Reward"][1][3]["Item_1"] = 188285

	tAlchemy_Fragment["Reward"][1][4] = {}
	tAlchemy_Fragment["Reward"][1][4]["RandomItemChanceType"] = 2
	tAlchemy_Fragment["Reward"][1][4]["ItemChance"] = 1000
	tAlchemy_Fragment["Reward"][1][4]["Item_1"] = 188575
	
-- 洗赠表
local tAlchemy_WashPresent = {}
	tAlchemy_WashPresent["AfterActivity"] = User_AddStrengthValue
	tAlchemy_WashPresent["StrengthValue"] = 500
	tAlchemy_WashPresent["NeedNum"] = {}
	tAlchemy_WashPresent["NeedNum"][188575] = 3
	tAlchemy_WashPresent["NeedNum"][184325] = 1
	tAlchemy_WashPresent["NeedNum"][188175] = 1
	tAlchemy_WashPresent["NeedNum"][188285] = 1
	
--开礼包表
local tAlchemy_CoatGiftOpen = {}
	tAlchemy_CoatGiftOpen[1] = {}
	tAlchemy_CoatGiftOpen[1]["Function"] = Item_AddNewItem
	tAlchemy_CoatGiftOpen[1]["Value"] = {}
	tAlchemy_CoatGiftOpen[1]["Value"][3008347] = 189215
	tAlchemy_CoatGiftOpen[1]["Value"][3008348] = 189235
	tAlchemy_CoatGiftOpen[1]["Value"][3008349] = 189225
	tAlchemy_CoatGiftOpen[1]["Value"][3008350] = 189245
	tAlchemy_CoatGiftOpen[1]["Attr"] = "0 0 3 1440 1"
	
	tAlchemy_CoatGiftOpen[2] = {}
	tAlchemy_CoatGiftOpen[2]["Function"] = User_AddStrengthValue
	tAlchemy_CoatGiftOpen[2]["Value"] = 50
	
--唤醒数据
local tAlchemy_WakeMonster = {}
	tAlchemy_WakeMonster[19030] = {}
	tAlchemy_WakeMonster[19030]["Opt"] = 3008353
	tAlchemy_WakeMonster[19030]["BeforChk"] = Item_ChkItem
	tAlchemy_WakeMonster[19030]["AfAction"] = Item_DelItem
	tAlchemy_WakeMonster[19030]["LAction"] = Sys_SaveActionFestivalLog
	tAlchemy_WakeMonster[19030]["Log"] = "0,0,3008353,1,12000299,1[13],0,0"

	tAlchemy_WakeMonster[19031]= {}
	tAlchemy_WakeMonster[19031]["Opt"] = -49
	tAlchemy_WakeMonster[19031]["BeforChk"] = Alchemy_ChkEMoney
	tAlchemy_WakeMonster[19031]["AfAction"] = User_AddEMoney
	tAlchemy_WakeMonster[19031]["LAction"] = Sys_SaveEmoneyBuy
	tAlchemy_WakeMonster[19031]["Log"] = "350	20937	49	49	1	"

--洗点信息表
local tAlchemy_AboutTable = {}
	-- 免费
	tAlchemy_AboutTable[27] = {}
	tAlchemy_AboutTable[27]["NoChance"] = 10
	tAlchemy_AboutTable[27]["Repair"] = 1
	-- 付费
	tAlchemy_AboutTable[30] = {}
	tAlchemy_AboutTable[30]["NoChance"] = 0
	tAlchemy_AboutTable[30]["Repair"] = -1
	tAlchemy_AboutTable[30]["AllChance"] = 1
	-- 免费良品要有一格空间检测
	tAlchemy_AboutTable["Space"] = {}
	tAlchemy_AboutTable["Space"][27] = {}
	tAlchemy_AboutTable["Space"][27][2] = 1
	tAlchemy_AboutTable["Space"][30] = {}
	

	tAlchemy_AboutTable["GetReward"] = {}
	tAlchemy_AboutTable["GetReward"][1] = Item_AddNewItem		--给物品
	tAlchemy_AboutTable["GetReward"][2] = User_AddExpTime		--给经验
	tAlchemy_AboutTable["GetReward"][3] = User_AddCultivation 	--给修行值
	tAlchemy_AboutTable["GetReward"][4] = User_AddStrengthValue	--给气力值
	
	tAlchemy_AboutTable["Log"] = {}
	tAlchemy_AboutTable["Log"]["GetReward"] = {}
	tAlchemy_AboutTable["Log"]["GetReward"][2] = 4
	tAlchemy_AboutTable["Log"]["GetReward"][3] = 6
	tAlchemy_AboutTable["Log"]["GetReward"][4] = 12
	
	tAlchemy_AboutTable["Log"][3008346] = "0,0,%d,1,12000299,1[5],3008346,1" 		--获得奇石碎片
	tAlchemy_AboutTable["Log"][3008352] = "0,0,%d,1,12000299,1[11],3008352,1" 		--获得洗赠道具
	tAlchemy_AboutTable["Log"][3008351] = "0,0,%d,1,12000299,1[6],3008351,1"		--获得外套碎片
	
	tAlchemy_AboutTable["Log"][27] = {}
	tAlchemy_AboutTable["Log"][27][1] = "0,0,%d,1,12000299,1[2],%d,%d" 						--免费炼化普通宝石
	tAlchemy_AboutTable["Log"][27][2] = "0,0,%d,1,12000299,1[3],%d,%d" 						--免费炼化良品宝石
	tAlchemy_AboutTable["Log"][27][3] = "0,0,%d,1,12000299,1[4],%d,%d" 						--免费炼化优质宝石
	
	tAlchemy_AboutTable["Log"][30] = {}
	tAlchemy_AboutTable["Log"][30][1] = "0,0,%d,1,12000299,1[7],%d,%d" 						--付费炼化普通宝石
	tAlchemy_AboutTable["Log"][30][2] = "0,0,%d,1,12000299,1[8],%d,%d" 						--付费炼化良品宝石
	tAlchemy_AboutTable["Log"][30][3] ="0,0,%d,1,12000299,1[9],%d,%d" 						--付费炼化优质宝石

	
	--洗点概率表
local tAlchemy_Gem = {}
	-- 免费洗点
	tAlchemy_Gem[27] = {}
	--免费普通
	tAlchemy_Gem[27][1] = {}
	tAlchemy_Gem[27][1]["Reward"] = {}
	tAlchemy_Gem[27][1]["Reward"][1] = {}
	tAlchemy_Gem[27][1]["Reward"][1]["ItemChanceSum"] = 10000

	tAlchemy_Gem[27][1]["Reward"][1][1] = {}
	tAlchemy_Gem[27][1]["Reward"][1][1]["RandomItemChanceType"] = 2
	tAlchemy_Gem[27][1]["Reward"][1][1]["ItemChance"] = 1700
	tAlchemy_Gem[27][1]["Reward"][1][1]["Item_1"] = {1,3002029,'0 1 0 0 1'}	--护心丹

	tAlchemy_Gem[27][1]["Reward"][1][2] = {}
	tAlchemy_Gem[27][1]["Reward"][1][2]["RandomItemChanceType"] = 2
	tAlchemy_Gem[27][1]["Reward"][1][2]["ItemChance"] = 2200
	tAlchemy_Gem[27][1]["Reward"][1][2]["Item_1"] = {2,30,0} --30分钟经验

	tAlchemy_Gem[27][1]["Reward"][1][3] = {}
	tAlchemy_Gem[27][1]["Reward"][1][3]["RandomItemChanceType"] = 2
	tAlchemy_Gem[27][1]["Reward"][1][3]["ItemChance"] = 2200
	tAlchemy_Gem[27][1]["Reward"][1][3]["Item_1"] = {3,15,0} --15修行值

	tAlchemy_Gem[27][1]["Reward"][1][4] = {}
	tAlchemy_Gem[27][1]["Reward"][1][4]["RandomItemChanceType"] = 2
	tAlchemy_Gem[27][1]["Reward"][1][4]["ItemChance"] = 2600
	tAlchemy_Gem[27][1]["Reward"][1][4]["Item_1"] = {1,3004245,''} --神品淬炼礼包碎片

	tAlchemy_Gem[27][1]["Reward"][1][5] = {}
	tAlchemy_Gem[27][1]["Reward"][1][5]["RandomItemChanceType"] = 2
	tAlchemy_Gem[27][1]["Reward"][1][5]["ItemChance"] = 500
	tAlchemy_Gem[27][1]["Reward"][1][5]["Item_1"] = {1,3008347,''} --1天时效Evernight包
	
	tAlchemy_Gem[27][1]["Reward"][1][6] = {}
	tAlchemy_Gem[27][1]["Reward"][1][6]["RandomItemChanceType"] = 2
	tAlchemy_Gem[27][1]["Reward"][1][6]["ItemChance"] = 500
	tAlchemy_Gem[27][1]["Reward"][1][6]["Item_1"] = {1,3008349,''} --1天时效IvoryRobe包
	
	tAlchemy_Gem[27][1]["Reward"][1][7] = {}
	tAlchemy_Gem[27][1]["Reward"][1][7]["RandomItemChanceType"] = 2
	tAlchemy_Gem[27][1]["Reward"][1][7]["ItemChance"] = 300
	tAlchemy_Gem[27][1]["Reward"][1][7]["Item_1"] = {1,3008348,''} --1天时效DancingDress包

	--免费良品
	tAlchemy_Gem[27][2] = {}
	tAlchemy_Gem[27][2]["Reward"] = {}
	tAlchemy_Gem[27][2]["Reward"][1] = {}
	tAlchemy_Gem[27][2]["Reward"][1]["ItemChanceSum"] = 10000

	tAlchemy_Gem[27][2]["Reward"][1][1] = {}
	tAlchemy_Gem[27][2]["Reward"][1][1]["RandomItemChanceType"] = 2
	tAlchemy_Gem[27][2]["Reward"][1][1]["ItemChance"] = 2100
	tAlchemy_Gem[27][2]["Reward"][1][1]["Item_1"] = {1,3002029,'0 2 0 0 1'} --护心丹x2

	tAlchemy_Gem[27][2]["Reward"][1][2] = {}
	tAlchemy_Gem[27][2]["Reward"][1][2]["RandomItemChanceType"] = 2
	tAlchemy_Gem[27][2]["Reward"][1][2]["ItemChance"] = 1500
	tAlchemy_Gem[27][2]["Reward"][1][2]["Item_1"] = {2,60,0} --60分钟经验
	
	tAlchemy_Gem[27][2]["Reward"][1][3] = {}
	tAlchemy_Gem[27][2]["Reward"][1][3]["RandomItemChanceType"] = 2
	tAlchemy_Gem[27][2]["Reward"][1][3]["ItemChance"] = 1500
	tAlchemy_Gem[27][2]["Reward"][1][3]["Item_1"] = {3,30,0} -- 30修行值

	tAlchemy_Gem[27][2]["Reward"][1][4] = {}
	tAlchemy_Gem[27][2]["Reward"][1][4]["RandomItemChanceType"] = 2
	tAlchemy_Gem[27][2]["Reward"][1][4]["ItemChance"] = 1400
	tAlchemy_Gem[27][2]["Reward"][1][4]["Item_1"] = {1,3003124,'0 2'} --免费强炼丹x2

	tAlchemy_Gem[27][2]["Reward"][1][5] = {}
	tAlchemy_Gem[27][2]["Reward"][1][5]["RandomItemChanceType"] = 2
	tAlchemy_Gem[27][2]["Reward"][1][5]["ItemChance"] = 1700
	tAlchemy_Gem[27][2]["Reward"][1][5]["Item_1"] = {1,3004245,'0 2'} --神品淬炼礼包碎片x2

	tAlchemy_Gem[27][2]["Reward"][1][6] = {}
	tAlchemy_Gem[27][2]["Reward"][1][6]["RandomItemChanceType"] = 2
	tAlchemy_Gem[27][2]["Reward"][1][6]["ItemChance"] = 150
	tAlchemy_Gem[27][2]["Reward"][1][6]["Item_1"] = {1,3008346,''} --奇石宝矿碎片
	
	tAlchemy_Gem[27][2]["Reward"][1][7] = {}
	tAlchemy_Gem[27][2]["Reward"][1][7]["RandomItemChanceType"] = 2
	tAlchemy_Gem[27][2]["Reward"][1][7]["ItemChance"] = 400
	tAlchemy_Gem[27][2]["Reward"][1][7]["Item_1"] = {1,3008347,''} --1天时效Evernight包
	
	tAlchemy_Gem[27][2]["Reward"][1][8] = {}
	tAlchemy_Gem[27][2]["Reward"][1][8]["RandomItemChanceType"] = 2
	tAlchemy_Gem[27][2]["Reward"][1][8]["ItemChance"] = 400
	tAlchemy_Gem[27][2]["Reward"][1][8]["Item_1"] = {1,3008348,''} --1天时效IvoryRobe包

	tAlchemy_Gem[27][2]["Reward"][1][9] = {}
	tAlchemy_Gem[27][2]["Reward"][1][9]["RandomItemChanceType"] = 2
	tAlchemy_Gem[27][2]["Reward"][1][9]["ItemChance"] = 400
	tAlchemy_Gem[27][2]["Reward"][1][9]["Item_1"] = {1,3008349,''} --1天时效DancingDress包

	tAlchemy_Gem[27][2]["Reward"][1][10] = {}
	tAlchemy_Gem[27][2]["Reward"][1][10]["RandomItemChanceType"] = 2
	tAlchemy_Gem[27][2]["Reward"][1][10]["ItemChance"] = 400
	tAlchemy_Gem[27][2]["Reward"][1][10]["Item_1"] = {1,3008350,''} --1天时效夜舞未央包

	tAlchemy_Gem[27][2]["Reward"][1][11] = {}
	tAlchemy_Gem[27][2]["Reward"][1][11]["RandomItemChanceType"] = 2
	tAlchemy_Gem[27][2]["Reward"][1][11]["ItemChance"] = 50
	tAlchemy_Gem[27][2]["Reward"][1][11]["Item_1"] = {1,3008351,''} --永久赠品外套碎片


	-- 免费优质
	tAlchemy_Gem[27][3] = {}
	tAlchemy_Gem[27][3]["Reward"] = {}
	tAlchemy_Gem[27][3]["Reward"][1] = {}
	tAlchemy_Gem[27][3]["Reward"][1]["ItemChanceSum"] = 10000

	tAlchemy_Gem[27][3]["Reward"][1][1] = {}
	tAlchemy_Gem[27][3]["Reward"][1][1]["RandomItemChanceType"] = 2
	tAlchemy_Gem[27][3]["Reward"][1][1]["ItemChance"] = 1400
	tAlchemy_Gem[27][3]["Reward"][1][1]["Item_1"] = {1,3003124,'0 6'} --免费强炼丹x6

	tAlchemy_Gem[27][3]["Reward"][1][2] = {}
	tAlchemy_Gem[27][3]["Reward"][1][2]["RandomItemChanceType"] = 2
	tAlchemy_Gem[27][3]["Reward"][1][2]["ItemChance"] = 1500
	tAlchemy_Gem[27][3]["Reward"][1][2]["Item_1"] = {1,3003125,'0 2'} --通神丹x2

	tAlchemy_Gem[27][3]["Reward"][1][3] = {}
	tAlchemy_Gem[27][3]["Reward"][1][3]["RandomItemChanceType"] = 2
	tAlchemy_Gem[27][3]["Reward"][1][3]["ItemChance"] = 3000
	tAlchemy_Gem[27][3]["Reward"][1][3]["Item_1"] = {4,150,0} --150气力值

	tAlchemy_Gem[27][3]["Reward"][1][4] = {}
	tAlchemy_Gem[27][3]["Reward"][1][4]["RandomItemChanceType"] = 2
	tAlchemy_Gem[27][3]["Reward"][1][4]["ItemChance"] = 300
	tAlchemy_Gem[27][3]["Reward"][1][4]["Item_1"] = {1,1100003,''} --小乾坤袋（每天限量）

	tAlchemy_Gem[27][3]["Reward"][1][5] = {}
	tAlchemy_Gem[27][3]["Reward"][1][5]["RandomItemChanceType"] = 2
	tAlchemy_Gem[27][3]["Reward"][1][5]["ItemChance"] = 2000
	tAlchemy_Gem[27][3]["Reward"][1][5]["Item_1"] = {1,3004245,'0 4'} --神品淬炼礼包碎片x4

	tAlchemy_Gem[27][3]["Reward"][1][6] = {}
	tAlchemy_Gem[27][3]["Reward"][1][6]["RandomItemChanceType"] = 2
	tAlchemy_Gem[27][3]["Reward"][1][6]["ItemChance"] = 200
	tAlchemy_Gem[27][3]["Reward"][1][6]["Item_1"] = {1,3008346,''} --奇石宝矿碎片

	tAlchemy_Gem[27][3]["Reward"][1][7] = {}
	tAlchemy_Gem[27][3]["Reward"][1][7]["RandomItemChanceType"] = 2
	tAlchemy_Gem[27][3]["Reward"][1][7]["ItemChance"] = 300
	tAlchemy_Gem[27][3]["Reward"][1][7]["Item_1"] = {1,3008347,''} --1天时效Evernight包

	tAlchemy_Gem[27][3]["Reward"][1][8] = {}
	tAlchemy_Gem[27][3]["Reward"][1][8]["RandomItemChanceType"] = 2
	tAlchemy_Gem[27][3]["Reward"][1][8]["ItemChance"] = 300
	tAlchemy_Gem[27][3]["Reward"][1][8]["Item_1"] = {1,3008348,''} --1天时效IvoryRobe包

	tAlchemy_Gem[27][3]["Reward"][1][9] = {}
	tAlchemy_Gem[27][3]["Reward"][1][9]["RandomItemChanceType"] = 2
	tAlchemy_Gem[27][3]["Reward"][1][9]["ItemChance"] = 300
	tAlchemy_Gem[27][3]["Reward"][1][9]["Item_1"] = {1,3008349,''} --1天时效DancingDress包

	tAlchemy_Gem[27][3]["Reward"][1][10] = {}
	tAlchemy_Gem[27][3]["Reward"][1][10]["RandomItemChanceType"] = 2
	tAlchemy_Gem[27][3]["Reward"][1][10]["ItemChance"] = 200
	tAlchemy_Gem[27][3]["Reward"][1][10]["Item_1"] = {1,3008350,''} --1天时效夜舞未央包

	tAlchemy_Gem[27][3]["Reward"][1][11] = {}
	tAlchemy_Gem[27][3]["Reward"][1][11]["RandomItemChanceType"] = 2
	tAlchemy_Gem[27][3]["Reward"][1][11]["ItemChance"] = 500
	tAlchemy_Gem[27][3]["Reward"][1][11]["Item_1"] = {1,3008351,''} --永久赠品外套碎片
	-- 付费普通
	tAlchemy_Gem[30] = {}
	tAlchemy_Gem[30][1] = {}
	tAlchemy_Gem[30][1]["Reward"] = {}
	tAlchemy_Gem[30][1]["Reward"][1] = {}
	tAlchemy_Gem[30][1]["Reward"][1]["ItemChanceSum"] = 10000

	tAlchemy_Gem[30][1]["Reward"][1][1] = {}
	tAlchemy_Gem[30][1]["Reward"][1][1]["RandomItemChanceType"] = 2
	tAlchemy_Gem[30][1]["Reward"][1][1]["ItemChance"] = 2000
	tAlchemy_Gem[30][1]["Reward"][1][1]["Item_1"] = {1,3003124,'0 3'} --免费强炼丹x3
	
	tAlchemy_Gem[30][1]["Reward"][1][2] = {}
	tAlchemy_Gem[30][1]["Reward"][1][2]["RandomItemChanceType"] = 2
	tAlchemy_Gem[30][1]["Reward"][1][2]["ItemChance"] = 1700
	tAlchemy_Gem[30][1]["Reward"][1][2]["Item_1"] = {1,3003125,''} --通神丹x1

	tAlchemy_Gem[30][1]["Reward"][1][3] = {}
	tAlchemy_Gem[30][1]["Reward"][1][3]["RandomItemChanceType"] = 2
	tAlchemy_Gem[30][1]["Reward"][1][3]["ItemChance"] = 2400
	tAlchemy_Gem[30][1]["Reward"][1][3]["Item_1"] = {4,50,0} --50气力值

	tAlchemy_Gem[30][1]["Reward"][1][4] = {}
	tAlchemy_Gem[30][1]["Reward"][1][4]["RandomItemChanceType"] = 2
	tAlchemy_Gem[30][1]["Reward"][1][4]["ItemChance"] = 2000
	tAlchemy_Gem[30][1]["Reward"][1][4]["Item_1"] = {1,3004245,'0 3'} --神品淬炼礼包碎片x3

	tAlchemy_Gem[30][1]["Reward"][1][5] = {}
	tAlchemy_Gem[30][1]["Reward"][1][5]["RandomItemChanceType"] = 2
	tAlchemy_Gem[30][1]["Reward"][1][5]["ItemChance"] = 400
	tAlchemy_Gem[30][1]["Reward"][1][5]["Item_1"] = {1,3008347,''} --1天时效Evernight包

	tAlchemy_Gem[30][1]["Reward"][1][6] = {}
	tAlchemy_Gem[30][1]["Reward"][1][6]["RandomItemChanceType"] = 2
	tAlchemy_Gem[30][1]["Reward"][1][6]["ItemChance"] = 400
	tAlchemy_Gem[30][1]["Reward"][1][6]["Item_1"] = {1,3008348,''} --1天时效IvoryRobe包

	tAlchemy_Gem[30][1]["Reward"][1][7] = {}
	tAlchemy_Gem[30][1]["Reward"][1][7]["RandomItemChanceType"] = 2
	tAlchemy_Gem[30][1]["Reward"][1][7]["ItemChance"] = 400
	tAlchemy_Gem[30][1]["Reward"][1][7]["Item_1"] = {1,3008349,''} --1天时效DancingDress包

	tAlchemy_Gem[30][1]["Reward"][1][8] = {}
	tAlchemy_Gem[30][1]["Reward"][1][8]["RandomItemChanceType"] = 2
	tAlchemy_Gem[30][1]["Reward"][1][8]["ItemChance"] = 400
	tAlchemy_Gem[30][1]["Reward"][1][8]["Item_1"] = {1,3008350,''} --1天时效夜舞未央包

	tAlchemy_Gem[30][1]["Reward"][1][9] = {}
	tAlchemy_Gem[30][1]["Reward"][1][9]["RandomItemChanceType"] = 2
	tAlchemy_Gem[30][1]["Reward"][1][9]["ItemChance"] = 250
	tAlchemy_Gem[30][1]["Reward"][1][9]["Item_1"] = {1,3008351,''} --永久赠品外套碎片

	tAlchemy_Gem[30][1]["Reward"][1][10] = {}
	tAlchemy_Gem[30][1]["Reward"][1][10]["RandomItemChanceType"] = 2
	tAlchemy_Gem[30][1]["Reward"][1][10]["ItemChance"] = 50
	tAlchemy_Gem[30][1]["Reward"][1][10]["Item_1"] = {1,3008352,''} --洗赠道具

	tAlchemy_Gem[30][2] = {}
	tAlchemy_Gem[30][2]["Reward"] = {}
	tAlchemy_Gem[30][2]["Reward"][1] = {}
	tAlchemy_Gem[30][2]["Reward"][1]["ItemChanceSum"] = 10000

	tAlchemy_Gem[30][2]["Reward"][1][1] = {}
	tAlchemy_Gem[30][2]["Reward"][1][1]["RandomItemChanceType"] = 2
	tAlchemy_Gem[30][2]["Reward"][1][1]["ItemChance"] = 1100
	tAlchemy_Gem[30][2]["Reward"][1][1]["Item_1"] = {1,3003124,'0 5'} --免费强炼丹x5

	tAlchemy_Gem[30][2]["Reward"][1][2] = {}
	tAlchemy_Gem[30][2]["Reward"][1][2]["RandomItemChanceType"] = 2
	tAlchemy_Gem[30][2]["Reward"][1][2]["ItemChance"] = 800
	tAlchemy_Gem[30][2]["Reward"][1][2]["Item_1"] = {1,3003125,'0 2'} --通神丹x2

	tAlchemy_Gem[30][2]["Reward"][1][3] = {}
	tAlchemy_Gem[30][2]["Reward"][1][3]["RandomItemChanceType"] = 2
	tAlchemy_Gem[30][2]["Reward"][1][3]["ItemChance"] = 700
	tAlchemy_Gem[30][2]["Reward"][1][3]["Item_1"] = {1,3003126,''} --究极通神丹

	tAlchemy_Gem[30][2]["Reward"][1][4] = {}
	tAlchemy_Gem[30][2]["Reward"][1][4]["RandomItemChanceType"] = 2
	tAlchemy_Gem[30][2]["Reward"][1][4]["ItemChance"] = 2000
	tAlchemy_Gem[30][2]["Reward"][1][4]["Item_1"] = {4,100,0} --100气力值

	tAlchemy_Gem[30][2]["Reward"][1][5] = {}
	tAlchemy_Gem[30][2]["Reward"][1][5]["RandomItemChanceType"] = 2
	tAlchemy_Gem[30][2]["Reward"][1][5]["ItemChance"] = 2100
	tAlchemy_Gem[30][2]["Reward"][1][5]["Item_1"] = {1,3004245,'0 3'} --神品淬炼礼包碎片x3

	tAlchemy_Gem[30][2]["Reward"][1][6] = {}
	tAlchemy_Gem[30][2]["Reward"][1][6]["RandomItemChanceType"] = 2
	tAlchemy_Gem[30][2]["Reward"][1][6]["ItemChance"] = 1500
	tAlchemy_Gem[30][2]["Reward"][1][6]["Item_1"] = {1,3004245,'0 4'} --神品淬炼礼包碎片x4

	tAlchemy_Gem[30][2]["Reward"][1][7] = {}
	tAlchemy_Gem[30][2]["Reward"][1][7]["RandomItemChanceType"] = 2
	tAlchemy_Gem[30][2]["Reward"][1][7]["ItemChance"] = 300
	tAlchemy_Gem[30][2]["Reward"][1][7]["Item_1"] = {1,3008347,''} --1天时效Evernight包

	tAlchemy_Gem[30][2]["Reward"][1][8] = {}
	tAlchemy_Gem[30][2]["Reward"][1][8]["RandomItemChanceType"] = 2
	tAlchemy_Gem[30][2]["Reward"][1][8]["ItemChance"] = 300
	tAlchemy_Gem[30][2]["Reward"][1][8]["Item_1"] = {1,3008348,''} --1天时效IvoryRobe包

	tAlchemy_Gem[30][2]["Reward"][1][9] = {}
	tAlchemy_Gem[30][2]["Reward"][1][9]["RandomItemChanceType"] = 2
	tAlchemy_Gem[30][2]["Reward"][1][9]["ItemChance"] = 300
	tAlchemy_Gem[30][2]["Reward"][1][9]["Item_1"] = {1,3008349,''} --1天时效DancingDress包

	tAlchemy_Gem[30][2]["Reward"][1][10] = {}
	tAlchemy_Gem[30][2]["Reward"][1][10]["RandomItemChanceType"] = 2
	tAlchemy_Gem[30][2]["Reward"][1][10]["ItemChance"] = 300
	tAlchemy_Gem[30][2]["Reward"][1][10]["Item_1"] = {1,3008350,''} --1天时效夜舞未央包

	tAlchemy_Gem[30][2]["Reward"][1][11] = {}
	tAlchemy_Gem[30][2]["Reward"][1][11]["RandomItemChanceType"] = 2
	tAlchemy_Gem[30][2]["Reward"][1][11]["ItemChance"] = 500
	tAlchemy_Gem[30][2]["Reward"][1][11]["Item_1"] = {1,3008351,''} --永久赠品外套碎片

	tAlchemy_Gem[30][2]["Reward"][1][12] = {}
	tAlchemy_Gem[30][2]["Reward"][1][12]["RandomItemChanceType"] = 2
	tAlchemy_Gem[30][2]["Reward"][1][12]["ItemChance"] = 100
	tAlchemy_Gem[30][2]["Reward"][1][12]["Item_1"] = {1,3008352,''} --洗赠道具

	tAlchemy_Gem[30][3] = {}
	tAlchemy_Gem[30][3]["Reward"] = {}
	tAlchemy_Gem[30][3]["Reward"][1] = {}
	tAlchemy_Gem[30][3]["Reward"][1]["ItemChanceSum"] = 10000

	tAlchemy_Gem[30][3]["Reward"][1][1] = {}
	tAlchemy_Gem[30][3]["Reward"][1][1]["RandomItemChanceType"] = 2
	tAlchemy_Gem[30][3]["Reward"][1][1]["ItemChance"] = 1300
	tAlchemy_Gem[30][3]["Reward"][1][1]["Item_1"] = {1,3003124,'0 5'} --免费强炼丹x5

	tAlchemy_Gem[30][3]["Reward"][1][2] = {}
	tAlchemy_Gem[30][3]["Reward"][1][2]["RandomItemChanceType"] = 2
	tAlchemy_Gem[30][3]["Reward"][1][2]["ItemChance"] = 800
	tAlchemy_Gem[30][3]["Reward"][1][2]["Item_1"] = {1,3003125,'0 3'} --通神丹x3

	tAlchemy_Gem[30][3]["Reward"][1][3] = {}
	tAlchemy_Gem[30][3]["Reward"][1][3]["RandomItemChanceType"] = 2
	tAlchemy_Gem[30][3]["Reward"][1][3]["ItemChance"] = 800
	tAlchemy_Gem[30][3]["Reward"][1][3]["Item_1"] = {1,3003126,'0 2'} --究极通神丹x2

	tAlchemy_Gem[30][3]["Reward"][1][4] = {}
	tAlchemy_Gem[30][3]["Reward"][1][4]["RandomItemChanceType"] = 2
	tAlchemy_Gem[30][3]["Reward"][1][4]["ItemChance"] = 1600
	tAlchemy_Gem[30][3]["Reward"][1][4]["Item_1"] = {4,150,0} --150点气力值

	tAlchemy_Gem[30][3]["Reward"][1][5] = {}
	tAlchemy_Gem[30][3]["Reward"][1][5]["RandomItemChanceType"] = 2
	tAlchemy_Gem[30][3]["Reward"][1][5]["ItemChance"] = 300
	tAlchemy_Gem[30][3]["Reward"][1][5]["Item_1"] = {1,1100003,''} --小乾坤袋（每天限量）

	tAlchemy_Gem[30][3]["Reward"][1][6] = {}
	tAlchemy_Gem[30][3]["Reward"][1][6]["RandomItemChanceType"] = 2
	tAlchemy_Gem[30][3]["Reward"][1][6]["ItemChance"] = 2000
	tAlchemy_Gem[30][3]["Reward"][1][6]["Item_1"] = {1,3004245,'0 5'} --神品淬炼礼包碎片x5

	tAlchemy_Gem[30][3]["Reward"][1][7] = {}
	tAlchemy_Gem[30][3]["Reward"][1][7]["RandomItemChanceType"] = 2
	tAlchemy_Gem[30][3]["Reward"][1][7]["ItemChance"] = 300
	tAlchemy_Gem[30][3]["Reward"][1][7]["Item_1"] = {1,3008347,''} --1天时效Evernight包

	tAlchemy_Gem[30][3]["Reward"][1][8] = {}
	tAlchemy_Gem[30][3]["Reward"][1][8]["RandomItemChanceType"] = 2
	tAlchemy_Gem[30][3]["Reward"][1][8]["ItemChance"] = 300
	tAlchemy_Gem[30][3]["Reward"][1][8]["Item_1"] = {1,3008348,''} --1天时效IvoryRobe包

	tAlchemy_Gem[30][3]["Reward"][1][9] = {}
	tAlchemy_Gem[30][3]["Reward"][1][9]["RandomItemChanceType"] = 2
	tAlchemy_Gem[30][3]["Reward"][1][9]["ItemChance"] = 300
	tAlchemy_Gem[30][3]["Reward"][1][9]["Item_1"] = {1,3008349,''} --1天时效DancingDress包

	tAlchemy_Gem[30][3]["Reward"][1][10] = {}
	tAlchemy_Gem[30][3]["Reward"][1][10]["RandomItemChanceType"] = 2
	tAlchemy_Gem[30][3]["Reward"][1][10]["ItemChance"] = 300
	tAlchemy_Gem[30][3]["Reward"][1][10]["Item_1"] = {1,3008350,''} --1天时效夜舞未央包

	tAlchemy_Gem[30][3]["Reward"][1][11] = {}
	tAlchemy_Gem[30][3]["Reward"][1][11]["RandomItemChanceType"] = 2
	tAlchemy_Gem[30][3]["Reward"][1][11]["ItemChance"] = 1700
	tAlchemy_Gem[30][3]["Reward"][1][11]["Item_1"] = {1,3008351,''} --永久赠品外套碎片

	tAlchemy_Gem[30][3]["Reward"][1][12] = {}
	tAlchemy_Gem[30][3]["Reward"][1][12]["RandomItemChanceType"] = 2
	tAlchemy_Gem[30][3]["Reward"][1][12]["ItemChance"] = 300
	tAlchemy_Gem[30][3]["Reward"][1][12]["Item_1"] = {1,3008352,''} --洗赠道具


------------------------------逻辑部分---------------------------
----------------公用------------------------
--每天清理免费次数
function Alchemy_ClearFreeStc()
	local nFreeEvent = tAlchemy_Stc["FreeChange"]["Event"]
	local nFreeType  = tAlchemy_Stc["FreeChange"]["StcType"]

	if Task_ChkStcValue(nFreeEvent,nFreeType,">=",1) and Task_StcInterval(nFreeEvent,nFreeType,1,4) then
		Task_SetStatistic(nFreeEvent,nFreeType,0,1)
		Task_SetStcTimestamp(nFreeEvent,nFreeType,0)
	end
	return nFreeEvent,nFreeType
end
--免费次数和付费次数已用完
function Alchemy_CheckTimeFinsh()
	-- 考虑免费清理
	local nFreeEvent,nFreeType = Alchemy_ClearFreeStc()
	local nFreeCount = tAlchemy_Stc["FreeChange"]["Count"]
	
	--付费机会的先使用掉无
	local nActiEvent = tAlchemy_Stc["ActivateChance"]["Event"]
	local nActiStype = tAlchemy_Stc["ActivateChance"]["StcType"]

	-- 免费未使用完
	if Task_ChkStcValue(nFreeEvent,nFreeType,"<",nFreeCount) then
		-- User_TalkChannel2005("Free"..tostring(Get_UserStatisticValue(nFreeEvent,nFreeType)))
		return false
	end
	if Task_ChkStcValue(nActiEvent,nActiStype,">",0) then
		-- User_TalkChannel2005("Act"..tostring(Get_UserStatisticValue(nActiEvent,nActiStype)))
		return false
	end	
	
	-- User_TalkChannel2005(tostring(Get_UserStatisticValue(nFreeEvent,nFreeType))..",".. tostring(Get_UserStatisticValue(nFreeEvent,nFreeType)))
	return true
end


--主要是二次确认
function Alchemy_BeforeAwake(nNpcId)
	if not Sys_ChkFullTime(tAlchemy_Cont["DuringTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-4")
		return
	end
	-- 还有机会
	if not Alchemy_CheckTimeFinsh() then
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return
	end

	LinkNpcGossipFunc_New(nNpcId,"3-5")

end
--唤醒操作，加付费次数
function Alchemy_WakeTheMonster(nNpcId)
	if not Sys_ChkFullTime(tAlchemy_Cont["DuringTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-4")
		return
	end
	-- 还有机会
	if not Alchemy_CheckTimeFinsh() then
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return
	end
	-- 前置检测
	local BeforChk = tAlchemy_WakeMonster[nNpcId]["BeforChk"]
	local Opt = tAlchemy_WakeMonster[nNpcId]["Opt"]
	if type(BeforChk) == "function" then
		if not BeforChk(Opt) then
			LinkNpcGossipFunc_New(nNpcId,"3-4")
			return
		end
	end
	--删除或扣天石
	local fAction = tAlchemy_WakeMonster[nNpcId]["AfAction"]
	if (type(fAction) == "function") and fAction(Opt) then
		local nAllEvent = tAlchemy_Stc["AllChance"]["Event"]
		local nAllType  = tAlchemy_Stc["AllChance"]["StcType"]
		if Task_ChkStcValue(nAllEvent,nAllType,">=",1) and Task_StcInterval(nAllEvent,nAllType,1,4) then
			Task_SetStatistic(nAllEvent,nAllType,0,1)
			Task_SetStcTimestamp(nAllEvent,nAllType,0)
		end
		
		local nNewTimes = Get_UserStatisticValue(nAllEvent,nAllType)
		local nNewCashTime = 5

		-- 当天累计付费炼化20次，此后每次付费可炼化7次，且读条时间减少。
		-- 当天累计付费炼化10次后（即付费两次），每次付费可炼化6次。
		if nNewTimes >= 20 then
			nNewCashTime = 7
			-- 读条时间减少
		elseif 	nNewTimes >= 10 then
			nNewCashTime = 6
		end
		--赋值最新的付费次数
		local nActiEvent = tAlchemy_Stc["ActivateChance"]["Event"]
		local nActiStype = tAlchemy_Stc["ActivateChance"]["StcType"]
				
		if nNewCashTime and Task_SetStatistic(nActiEvent,nActiStype,nNewCashTime,1) then
		
			local fLogFunc = tAlchemy_WakeMonster[nNpcId]["LAction"]
			local sAttr = tAlchemy_WakeMonster[nNpcId]["Log"]
			
			if type(fLogFunc) == "function" and sAttr then
				fLogFunc(sAttr)
			end
			
			User_EffectAdd("self",tAlchemy_Cont["Effect"]["NpcWake"])
			
			tNpcGossip[nNpcId]["Text331"] =string.format(tAlchemy_Text[nNpcId]["Text331"],nNewCashTime)
			LinkNpcGossipFunc_New(nNpcId,"3-3")
		end
	end
end

--敬献宝石
function Alchemy_SubmitToMonster(nNpcId)
	if not Sys_ChkFullTime(tAlchemy_Cont["DuringTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-4")
		return
	end
	--没用完
	if Alchemy_CheckTimeFinsh() then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	
	LinkNpcGossipFunc_New(nNpcId,"2-2")
end

--具体宝石选项
function Alchemy_ChangeGem(nNpcId,nItemId)
	if not Sys_ChkFullTime(tAlchemy_Cont["DuringTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-4")
		return
	end
	
	if not Item_ChkItem(nItemId,0) then
		LinkNpcGossipFunc_New(nNpcId,"2-9")
		return
	end
	
	-- 考虑免费使用
	local nFreeEvent,nFreeType,nFreeCount = tAlchemy_Stc["FreeChange"]["Event"],tAlchemy_Stc["FreeChange"]["StcType"],tAlchemy_Stc["FreeChange"]["Count"]
	local nActiEvent,nActiType = tAlchemy_Stc["ActivateChance"]["Event"],tAlchemy_Stc["ActivateChance"]["StcType"]
	local nLastEvent,nLastType = tAlchemy_Stc["ActivateChance"]["Event"],0
	
	if Task_ChkStcValue(nFreeEvent,nFreeType,"<",nFreeCount) then
		nLastType = nFreeType
	elseif Task_ChkStcValue(nActiEvent,nActiType,">=",0) then
		nLastType = nActiType
	end
	Alchemy_AlchemyFirstChk(nItemId,nLastEvent,nLastType)
end

	
-- 根据nLastType写检测表及赋值表
function Alchemy_AlchemyFirstChk(nItemId,nLastEvent,nLastType)
	if Task_ChkStcValue(nLastEvent,nLastType,"==",tAlchemy_AboutTable[nLastType]["NoChance"]) then
		return
	end
	
	local nQuality = tonumber(string.sub(nItemId,-1))
	if tAlchemy_AboutTable["Space"][nLastType][nQuality] then
		if not User_CheckLeftSpace(tAlchemy_AboutTable["Space"][nLastType][nQuality]) then
			Sys_MsgBox(tAlchemy_Text["Space"])
			return
		end
	end

	if Item_ChkItem(nItemId,0) and Item_DelItem(nItemId,0) then
		--扣掉次数
		local nTemp = Get_UserStatisticValue(nLastEvent,nLastType) + tAlchemy_AboutTable[nLastType]["Repair"]
		Task_SetStatistic(nLastEvent,nLastType,nTemp,1)
		Task_SetStcTimestamp(nLastEvent,nLastType,0)
		-- 如果是付费要加入全部付费次数中
		if tAlchemy_AboutTable[nLastType]["AllChance"] then
			local nAllEvent = tAlchemy_Stc["AllChance"]["Event"]
			local nAllType  = tAlchemy_Stc["AllChance"]["StcType"]
			if Task_ChkStcValue(nAllEvent,nAllType,">=",1) and Task_StcInterval(nAllEvent,nAllType,1,4) then
				Task_SetStatistic(nAllEvent,nAllType,0,1)
				Task_SetStcTimestamp(nAllEvent,nAllType,0)
			end
			Task_AddStatistic(nAllEvent,nAllType,tAlchemy_AboutTable[nLastType]["AllChance"],1)
		end
		
		-- 检测品种
		Alchemy_AlchemyAction(nLastType,nQuality,nItemId)
	end
end

-- 具体洗点啦
function Alchemy_AlchemyAction(nLastType,nQuality,nItemId)
	local flat,tAlchemyReward = Probabil_RandomAward(tAlchemy_Gem[nLastType][nQuality]["Reward"],1)  
	local tReward = tAlchemyReward[1]["tAward"][1]["Item_1"]
	--处理下给经验满级情况,将编号赋值3，改成给修行值,对应数值直接减半
	if (tReward[1]) and (tReward[1] == 2) and (Get_UserLevel() >= G_User_MaxLev) then
		tReward[1] = 3
		tReward[2] = math.ceil(tReward[2] / 2)
	end
	
	local func = tAlchemy_AboutTable["GetReward"][tReward[1]]
	if  type(func) == "function" and tReward[2] and tReward[3] then
		--给奖励
		func(tReward[2],tReward[3])
		
		local nLogReward,nLogReNum = tReward[2],0
		
		--经验修行值气力值log
		if tAlchemy_AboutTable["Log"]["GetReward"][tReward[1]] then
			nLogReward = tAlchemy_AboutTable["Log"]["GetReward"][tReward[1]]
			nLogReNum = tReward[2]
		end	
		-- 物品的个数
		if nLogReNum == 0 then
			if tReward[3] == "" then
				nLogReNum = 1
			else
				nLogReNum = tonumber(string.sub(tReward[3],3,3))
			end
		end
		
		local sLog = string.format(tAlchemy_AboutTable["Log"][nLastType][nQuality],nItemId,nLogReward,nLogReNum) --炼化操作log
		Sys_SaveActionFestivalLog(sLog)
		if tAlchemy_AboutTable["Log"][nLogReward] then
			Sys_SaveActionFestivalLog(string.format(tAlchemy_AboutTable["Log"][nLogReward],nItemId))
		end
		
		local sText = ""
		if tReward[1] == 1 then
			local sItemName = Get_ItemtypeName(tReward[2])
			sText = string.format(tAlchemy_Text["GetReward"][tReward[1]],nLogReNum,sItemName)
		else
			sText = string.format(tAlchemy_Text["GetReward"][tReward[1]],tReward[2])
		end
		
		User_EffectAdd("self",tAlchemy_Cont["Effect"]["AlchSuccess"])
		
		local nNpcId = Get_NpcId()
		tNpcGossip[nNpcId]["Text411"] = sText
		LinkNpcGossipFunc_New(nNpcId,"4-1")
	end
end




----------------------------物品逻辑-------------------------
--碎片合成
function Alchemy_FragmentCompose(nItemId)
	if not Sys_ChkFullTime(tAlchemy_Cont["DuringTime"]) then
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then 
			User_TalkChannel2005(tAlchemy_Text["Fragment"]["AfterActivity"])
		end
		return
	end
		
	local nEnoughNum = tAlchemy_Fragment[nItemId]["EnoughNum"]
	--数量够
	if not Item_ChkMulItem(nItemId,nItemId,nEnoughNum) then
		Sys_MsgBox(tAlchemy_Text[nItemId]["NoEnough"])
		return
	end
	
	--获得奖励的id
	local nNewItem = 0
	if tAlchemy_Fragment[nItemId]["NewItem"] == nil  then
		return 
	end
	if type(tAlchemy_Fragment[nItemId]["NewItem"]) == "number" then
		nNewItem = tAlchemy_Fragment[nItemId]["NewItem"]
	end
	if type(tAlchemy_Fragment[nItemId]["NewItem"]) == "table" then
		local flat,tCoatFragment = Probabil_RandomAward(tAlchemy_Fragment["Reward"],1)  
		nNewItem = tCoatFragment[1]["tAward"][1]["Item_1"]
	end
	
	local sAttr = tAlchemy_Fragment[nItemId]["Attr"]
	--删除给新物品
	local sItemName = Get_ItemtypeName(nNewItem)
	if (nEnoughNum >= 1) and Item_DelMulItem(nItemId,nItemId,nEnoughNum) then
		Item_AddNewItem(nNewItem,sAttr)
		Sys_SaveActionFestivalLog(string.format(tAlchemy_Cont["Log"][nItemId],nNewItem))
		User_EffectAdd("self",tAlchemy_Fragment[nItemId]["Effect"])
		Sys_MsgBox(string.format(tAlchemy_Text[nItemId]["Compose"],sItemName))
	end
	
end

--洗赠
function Alchemy_WaskPresent(nRewardId,nItemId)
	-- 洗赠道具过期后使用，获得500气力值
	if not Sys_ChkFullTime(tAlchemy_Cont["DuringTime"]) then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then 
			if tAlchemy_WashPresent["StrengthValue"] then
				local func = tAlchemy_WashPresent["AfterActivity"]
				if type(func) == "function" then
					func(tAlchemy_WashPresent["StrengthValue"])
					Sys_SaveActionFestivalLog(tAlchemy_Cont["Log"]["AfterActivity"])
					User_TalkChannel2005(tAlchemy_Text[nItemId]["AfterActivity"])
				end
			end
		end
		return
	end
	
	-- 根据id检测物品及需要的符数量
	if  not Item_ChkMulItem(nRewardId,nRewardId,1,2,0,0,0) then--必须赠品。
		Sys_MsgBox(tAlchemy_Text[nItemId]["NoEnough"][1])
		return
	end

	local nNeedNum = tAlchemy_WashPresent["NeedNum"][nRewardId]
	if not Item_ChkMulItem(nItemId,nItemId,nNeedNum) then
		Sys_MsgBox(tAlchemy_Text[nItemId]["NoEnough"][2])
		return
	end

	--删除id和符数量

	local sWashLog = string.format(tAlchemy_Cont["Log"]["WashAction"],nRewardId,nNeedNum,nRewardId)
	local sItemName = Get_ItemtypeName(nRewardId)
	local sWashMsg = string.format(tAlchemy_Text[nItemId]["Compose"],nNeedNum,sItemName)

	if Item_DelMulItem(nItemId,nItemId,nNeedNum) and Item_DelMulItem(nRewardId,nRewardId,1,2,0,0,0) then

		Item_AddNewItem(nRewardId,"0 0 0 0 0 0 0 1")
		Sys_SaveActionFestivalLog(sWashLog)
		User_EffectAdd("self",tAlchemy_Cont["Effect"]["WashSuccess"])
		Sys_MsgBox(sWashMsg)
	end
end


--礼包打开
function Alchemy_OpenTheCoatGift(nItemId)
	-- 时效外套礼包过期直接删除
	if not Sys_ChkFullTime(tAlchemy_Cont["DuringTime"]) then
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then 
			Sys_SaveActionFestivalLog(tAlchemy_Cont["Log"]["AfterActivity"])
			User_TalkChannel2005(tAlchemy_Text["CoatGift"]["AfterActivity"])
		end
		return
	end
	
	-- 对话框
	local sItemName = Get_ItemtypeName(tAlchemy_CoatGiftOpen[1]["Value"][nItemId])
	local sOption = string.format(tAlchemy_Text["CoatGift"]["Option1"],sItemName)
	Sys_DialogText(tAlchemy_Text["CoatGift"]["Text111"])
	Sys_DialogOption(sOption,"</F>Alchemy_Confirm</N>1</N>" .. nItemId)
	Sys_DialogOption(tAlchemy_Text["CoatGift"]["Option2"],"</F>Alchemy_Confirm</N>2</N>" .. nItemId)
	Sys_DialogEnd()
end
function Alchemy_Confirm(nType,nItemId)
	local sItemName = Get_ItemtypeName(tAlchemy_CoatGiftOpen[1]["Value"][nItemId])
	Sys_DialogText(string.format(tAlchemy_Text["CoatGift"]["Text12"..nType],sItemName))
	Sys_DialogOption(tAlchemy_Text["CoatGift"]["Option3"],"</F>Alchemy_GetPresent</N>".. nType .."</N>" .. nItemId)
	Sys_DialogOption(tAlchemy_Text["CoatGift"]["Option4"],"</F>NULL")
	Sys_DialogEnd()
end
function Alchemy_GetPresent(nRewardType,nItemId)
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then 
		local func = tAlchemy_CoatGiftOpen[nRewardType]["Function"]
		-- 第一参数
		local nValue = 0
		if type(tAlchemy_CoatGiftOpen[nRewardType]["Value"]) == "table" then
			nValue = tAlchemy_CoatGiftOpen[nRewardType]["Value"][nItemId]
		else
			nValue = tAlchemy_CoatGiftOpen[nRewardType]["Value"]
		end
		-- 第二参数
		local nAttr = tAlchemy_CoatGiftOpen[nRewardType]["Attr"]
		if nAttr == nil then
			nAttr = 0
		end
		-- 确定函数
		if type(func) == "function" then
			func(nValue,nAttr)
		end
		--log
		local sLog = ""
		if nRewardType == 1 then
			sLog = string.format(tAlchemy_Cont["Log"]["OpenGift"][nRewardType],nItemId,nValue)
		else
			sLog = string.format(tAlchemy_Cont["Log"]["OpenGift"][nRewardType],nItemId,nValue)
		end
		Sys_SaveActionFestivalLog(sLog)
		--提示
		if nRewardType == 2 then
			Sys_MsgBox(tAlchemy_Text["CoatGift"]["GetStre"])
		else
			local sItemName = Get_ItemtypeName(nValue)
			local sMsg = string.format(tAlchemy_Text["CoatGift"]["GetCoat"],sItemName)
			Sys_MsgBox(sMsg)
		end
	end
end


-- ?	片区怪有几率产出奇石宝矿碎片，概率为0.2%且每人每天最多获得三个。

function Alchemy_KillMonster()

	if not Sys_ChkFullTime(tAlchemy_Cont["DuringTime"]) then
		return
	end

	local nEventType = tAlchemy_Stc["FragmentGet"]["Event"]
	local nDataType = tAlchemy_Stc["FragmentGet"]["StcType"]
	local nRewardData = tAlchemy_Stc["FragmentGet"]["Reward"]
	
	-- #stc(142,23) 怪物掉落碎片，1天3个 0.2%且每人每天最多获得三个。
	if Task_ChkStcValue(nEventType,nDataType,">=",1) and  Task_StcInterval(nEventType,nDataType,1,4) then
		Task_SetStatistic(nEventType,nDataType,0,1)
		Task_SetStcTimestamp(nEventType,nDataType,0)
	end
	

	if Task_ChkStcValue(nEventType,nDataType,">=",nRewardData) then
		return
	end

	if not User_CheckLeftSpace(tAlchemy_Fragment["Space"]) then
		return
	end
	
	if not User_JudgeLevelAndMetempsychosis(tAlchemy_Cont["Level"],tAlchemy_Cont["Metempsychosis"]) then
		return
	end

	if Sys_Random(2,1000) then
		-- 打掩码给东西
		local nItemId = tAlchemy_Stc["FragmentGet"]["ItemId"]
		Task_AddStatistic(nEventType,nDataType,1,1)
		Task_SetStcTimestamp(nEventType,nDataType,0)
		Item_AddItem(nItemId)
			
		Sys_SaveActionFestivalLog(tAlchemy_Stc["FragmentGet"]["Log"])
		Sys_MsgBox(tAlchemy_Text["GetReward"][nItemId])
	end
end

local tAlchemy_MonsterTemplate = {}
tAlchemy_MonsterTemplate["ActivityTime"] = "2016-02-17 00:00 2016-02-29 23:59"
tAlchemy_MonsterTemplate["Function"] = Alchemy_KillMonster
tAlchemy_MonsterTemplate["Area"] = {1,2,3,5,4}

------------------------------Npc模版部分------------------------
--19030	南华真人
tNpcFace[3932] = 6

tNpcGossip[19030] = tNpcGossip[19030] or DefaultNpc:new{}
tNpcGossip[19030]["OptionHidden"] = 1
	--活动前对话
	tNpcGossip[19030]["Text1-1"] = {111,112,113,114,115}
	tNpcGossip[19030]["Text111"] = tAlchemy_Text[19030]["Text111"]
	tNpcGossip[19030]["Text112"] = tAlchemy_Text[19030]["Text112"]
	tNpcGossip[19030]["Text113"] = tAlchemy_Text[19030]["Text113"]
	tNpcGossip[19030]["Text114"] = tAlchemy_Text[19030]["Text114"]
	tNpcGossip[19030]["Text115"] = tAlchemy_Text[19030]["Text115"]
	tNpcGossip[19030]["tOption1-1"] = {1}
	tNpcGossip[19030]["ChkFunc1-1"] = function()
		return Sys_ChkFullTime(tAlchemy_Cont["BeforeTime"])
	end
	tNpcGossip[19030]["Option1"] = tAlchemy_Text[19030]["Option1"]
	
	-- 等级：
	tNpcGossip[19030]["Text1-2"] = {121,122,123,124,125,126}
	tNpcGossip[19030]["Text121"] = tAlchemy_Text[19030]["Text121"]
	tNpcGossip[19030]["Text122"] = tAlchemy_Text[19030]["Text122"]
	tNpcGossip[19030]["Text123"] = tAlchemy_Text[19030]["Text123"]
	tNpcGossip[19030]["Text124"] = tAlchemy_Text[19030]["Text124"]
	tNpcGossip[19030]["Text125"] = tAlchemy_Text[19030]["Text125"]
	tNpcGossip[19030]["Text126"] = tAlchemy_Text[19030]["Text126"]
	tNpcGossip[19030]["tOption1-2"] = {6}
	tNpcGossip[19030]["ChkFunc1-2"] = function()
		return not User_JudgeLevelAndMetempsychosis(tAlchemy_Cont["Level"],tAlchemy_Cont["Metempsychosis"])
	end
	tNpcGossip[19030]["Option6"] = tAlchemy_Text[19030]["Option6"]
	
	--中
	tNpcGossip[19030]["Text1-3"] = {121,122,123,124,125,126}
	tNpcGossip[19030]["tOption1-3"] = {2,3,4}
	tNpcGossip[19030]["ChkFunc1-3"] = function()
		return Sys_ChkFullTime(tAlchemy_Cont["DuringTime"]) 
	end
	tNpcGossip[19030]["Option2"] = tAlchemy_Text[19030]["Option2"]
	tNpcGossip[19030]["OptionFunc2"]="Alchemy_WakeTheMonster</N>19030"
	tNpcGossip[19030]["Option3"] = tAlchemy_Text[19030]["Option3"]
	tNpcGossip[19030]["OptionPoint3"]="2-1"
	tNpcGossip[19030]["Option4"] = tAlchemy_Text[19030]["Option4"]

	-- 后
	tNpcGossip[19030]["Text1-4"] = {141,142}
	tNpcGossip[19030]["Text141"] = tAlchemy_Text[19030]["Text141"]
	tNpcGossip[19030]["Text142"] = tAlchemy_Text[19030]["Text142"]
	tNpcGossip[19030]["tOption1-4"] = {5}
	tNpcGossip[19030]["Option5"] = tAlchemy_Text[19030]["Option5"]
	-- 详情
	tNpcGossip[19030]["Text2-1"] = {211,212,213,214,215}
	tNpcGossip[19030]["Text211"] = tAlchemy_Text[19030]["Text211"]
	tNpcGossip[19030]["Text212"] = tAlchemy_Text[19030]["Text212"]
	tNpcGossip[19030]["Text213"] = tAlchemy_Text[19030]["Text213"]
	tNpcGossip[19030]["Text214"] = tAlchemy_Text[19030]["Text214"]
	tNpcGossip[19030]["Text215"] = tAlchemy_Text[19030]["Text215"]
	tNpcGossip[19030]["tOption2-1"] = {7}
	tNpcGossip[19030]["Option7"] = tAlchemy_Text[19030]["Option7"]
	-- 成功
	tNpcGossip[19030]["Text3-3"] = {331}
	tNpcGossip[19030]["Text331"] = tAlchemy_Text[19030]["Text331"]
	tNpcGossip[19030]["tOption2-2"] = {8}
	tNpcGossip[19030]["Option8"] = tAlchemy_Text[19030]["Option8"]
	-- 免费交易次数未用完
	tNpcGossip[19030]["Text3-1"] = {311}
	tNpcGossip[19030]["Text311"] = tAlchemy_Text[19030]["Text311"]
	tNpcGossip[19030]["tOption3-1"] = {9}
	tNpcGossip[19030]["Option9"] = tAlchemy_Text[19030]["Option9"]
	-- 没有宝矿
	tNpcGossip[19030]["Text3-4"] = {341}
	tNpcGossip[19030]["Text341"] = tAlchemy_Text[19030]["Text341"]
	tNpcGossip[19030]["tOption3-4"] = {10}
	tNpcGossip[19030]["Option10"] = tAlchemy_Text[19030]["Option10"]
	
--19031	北冥巨鲲
tNpcFace[3933] = 0

tNpcGossip[19031] = tNpcGossip[19031] or DefaultNpc:new{}
tNpcGossip[19031]["OptionHidden"] = 1
	--活动前对话
	tNpcGossip[19031]["Text1-1"] = {111,112,113,114}
	tNpcGossip[19031]["Text111"] = tAlchemy_Text[19031]["Text111"]
	tNpcGossip[19031]["Text112"] = tAlchemy_Text[19031]["Text112"]
	tNpcGossip[19031]["Text113"] = tAlchemy_Text[19031]["Text113"]
	tNpcGossip[19031]["Text114"] = tAlchemy_Text[19031]["Text114"]
	tNpcGossip[19031]["tOption1-1"] = {1}
	tNpcGossip[19031]["ChkFunc1-1"] = function()
		return Sys_ChkFullTime(tAlchemy_Cont["BeforeTime"])
	end
	tNpcGossip[19031]["Option1"] = tAlchemy_Text[19031]["Option1"]
	
	-- 等级：
	tNpcGossip[19031]["Text1-2"] = {121,122,123,124}
	tNpcGossip[19031]["Text121"] = tAlchemy_Text[19031]["Text121"]
	tNpcGossip[19031]["Text122"] = tAlchemy_Text[19031]["Text122"]
	tNpcGossip[19031]["Text123"] = tAlchemy_Text[19031]["Text123"]
	tNpcGossip[19031]["Text124"] = tAlchemy_Text[19031]["Text124"]
	tNpcGossip[19031]["tOption1-2"] = {6}
	tNpcGossip[19031]["ChkFunc1-2"] = function()
		return not User_JudgeLevelAndMetempsychosis(tAlchemy_Cont["Level"],tAlchemy_Cont["Metempsychosis"])
	end
	tNpcGossip[19031]["Option6"] = tAlchemy_Text[19031]["Option6"]
	
	--中
	tNpcGossip[19031]["Text1-3"] = {121,122,123,124,125,126}
	tNpcGossip[19031]["tOption1-3"] = {2,3,4}
	tNpcGossip[19031]["ChkFunc1-3"] = function()
		return Sys_ChkFullTime(tAlchemy_Cont["DuringTime"]) 
	end
	tNpcGossip[19031]["Option2"] = tAlchemy_Text[19031]["Option2"]
	tNpcGossip[19031]["OptionFunc2"]="Alchemy_SubmitToMonster</N>19031"
	tNpcGossip[19031]["Option3"] = tAlchemy_Text[19031]["Option3"]
	tNpcGossip[19031]["OptionFunc3"]="Alchemy_BeforeAwake</N>19031"
	tNpcGossip[19031]["Option4"] = tAlchemy_Text[19031]["Option4"]

	-- 后
	tNpcGossip[19031]["Text1-4"] = {141,142}
	tNpcGossip[19031]["Text141"] = tAlchemy_Text[19031]["Text141"]
	tNpcGossip[19031]["Text142"] = tAlchemy_Text[19031]["Text142"]
	tNpcGossip[19031]["tOption1-4"] = {5}
	tNpcGossip[19031]["Option5"] = tAlchemy_Text[19031]["Option5"]
	
	--~~~~~~~~~~~~~~敬献操作~~~~~~~~~~~~~
	-- 无敬献次数
	tNpcGossip[19031]["Text2-1"] = {211}
	tNpcGossip[19031]["Text211"] = tAlchemy_Text[19031]["Text211"]
	tNpcGossip[19031]["tOption2-1"] = {7}
	tNpcGossip[19031]["Option7"] = tAlchemy_Text[19031]["Option7"]

	-- 二级选项
	tNpcGossip[19031]["Text2-2"] = {221}
	tNpcGossip[19031]["Text221"] = tAlchemy_Text[19031]["Text221"]
	tNpcGossip[19031]["tOption2-2"] = {8,9,10,11}
	tNpcGossip[19031]["Option8"] = tAlchemy_Text[19031]["Option8"]
	tNpcGossip[19031]["Option9"] = tAlchemy_Text[19031]["Option9"]
	tNpcGossip[19031]["Option10"] = tAlchemy_Text[19031]["Option10"]
	tNpcGossip[19031]["Option11"] = tAlchemy_Text[19031]["Option11"]
	tNpcGossip[19031]["OptionPoint8"]="2-3"
	tNpcGossip[19031]["OptionPoint9"]="2-5"
	tNpcGossip[19031]["OptionPoint10"]="2-7"

	-- 三级普通-选项*2
	tNpcGossip[19031]["Text2-3"] = {231}
	tNpcGossip[19031]["Text231"] = tAlchemy_Text[19031]["Text231"]
	tNpcGossip[19031]["tOption2-3"] = {12,13,14,15,17}
	tNpcGossip[19031]["Option12"] = tAlchemy_Text[19031]["Option12"]
	tNpcGossip[19031]["Option13"] = tAlchemy_Text[19031]["Option13"]
	tNpcGossip[19031]["Option14"] = tAlchemy_Text[19031]["Option14"]
	tNpcGossip[19031]["Option15"] = tAlchemy_Text[19031]["Option15"]
	tNpcGossip[19031]["Option16"] = tAlchemy_Text[19031]["Option16"]
	tNpcGossip[19031]["Option17"] = tAlchemy_Text[19031]["Option17"]
	tNpcGossip[19031]["OptionPoint17"]="2-4"
	
	tNpcGossip[19031]["Text2-4"] = {241}
	tNpcGossip[19031]["Text241"] = tAlchemy_Text[19031]["Text231"]
	tNpcGossip[19031]["tOption2-4"] = {16,18,19,22,23}
	tNpcGossip[19031]["Option18"] = tAlchemy_Text[19031]["Option18"]
	tNpcGossip[19031]["Option19"] = tAlchemy_Text[19031]["Option19"]
	-- tNpcGossip[19031]["Option20"] = tAlchemy_Text[19031]["Option20"]
	-- tNpcGossip[19031]["Option21"] = tAlchemy_Text[19031]["Option21"]
	tNpcGossip[19031]["Option22"] = tAlchemy_Text[19031]["Option22"]
	tNpcGossip[19031]["Option23"] = tAlchemy_Text[19031]["Option23"]
	tNpcGossip[19031]["OptionPoint22"]="2-3"

	tNpcGossip[19031]["OptionFunc12"]="Alchemy_ChangeGem</N>19031</N>700001"
	tNpcGossip[19031]["OptionFunc13"]="Alchemy_ChangeGem</N>19031</N>700011"
	tNpcGossip[19031]["OptionFunc14"]="Alchemy_ChangeGem</N>19031</N>700021"
	tNpcGossip[19031]["OptionFunc15"]="Alchemy_ChangeGem</N>19031</N>700031"
	tNpcGossip[19031]["OptionFunc16"]="Alchemy_ChangeGem</N>19031</N>700041"
	tNpcGossip[19031]["OptionFunc18"]="Alchemy_ChangeGem</N>19031</N>700051"
	tNpcGossip[19031]["OptionFunc19"]="Alchemy_ChangeGem</N>19031</N>700061"
	-- tNpcGossip[19031]["OptionFunc20"]="Alchemy_ChangeGem</N>19031</N>700101"
	-- tNpcGossip[19031]["OptionFunc21"]="Alchemy_ChangeGem</N>19031</N>700121"

	-- 三级良品-选项*2
	tNpcGossip[19031]["Text2-5"] = {251}
	tNpcGossip[19031]["Text251"] = tAlchemy_Text[19031]["Text231"]
	tNpcGossip[19031]["tOption2-5"] = {24,25,26,27,29}
	tNpcGossip[19031]["Option24"] = tAlchemy_Text[19031]["Option24"]
	tNpcGossip[19031]["Option25"] = tAlchemy_Text[19031]["Option25"]
	tNpcGossip[19031]["Option26"] = tAlchemy_Text[19031]["Option26"]
	tNpcGossip[19031]["Option27"] = tAlchemy_Text[19031]["Option27"]
	tNpcGossip[19031]["Option28"] = tAlchemy_Text[19031]["Option28"]
	tNpcGossip[19031]["Option29"] = tAlchemy_Text[19031]["Option17"]
	tNpcGossip[19031]["OptionPoint29"]="2-6"
	
	tNpcGossip[19031]["Text2-6"] = {261}
	tNpcGossip[19031]["Text261"] = tAlchemy_Text[19031]["Text231"]
	tNpcGossip[19031]["tOption2-6"] = {28,30,31,34,23}
	tNpcGossip[19031]["Option30"] = tAlchemy_Text[19031]["Option30"]
	tNpcGossip[19031]["Option31"] = tAlchemy_Text[19031]["Option31"]
	-- tNpcGossip[19031]["Option32"] = tAlchemy_Text[19031]["Option32"]
	-- tNpcGossip[19031]["Option33"] = tAlchemy_Text[19031]["Option33"]
	tNpcGossip[19031]["Option34"] = tAlchemy_Text[19031]["Option22"]
	tNpcGossip[19031]["OptionPoint34"]="2-5"

	tNpcGossip[19031]["OptionFunc24"]="Alchemy_ChangeGem</N>19031</N>700002"
	tNpcGossip[19031]["OptionFunc25"]="Alchemy_ChangeGem</N>19031</N>700012"
	tNpcGossip[19031]["OptionFunc26"]="Alchemy_ChangeGem</N>19031</N>700022"
	tNpcGossip[19031]["OptionFunc27"]="Alchemy_ChangeGem</N>19031</N>700032"
	tNpcGossip[19031]["OptionFunc28"]="Alchemy_ChangeGem</N>19031</N>700042"
	tNpcGossip[19031]["OptionFunc30"]="Alchemy_ChangeGem</N>19031</N>700052"
	tNpcGossip[19031]["OptionFunc31"]="Alchemy_ChangeGem</N>19031</N>700062"
	-- tNpcGossip[19031]["OptionFunc32"]="Alchemy_ChangeGem</N>19031</N>700102"
	-- tNpcGossip[19031]["OptionFunc33"]="Alchemy_ChangeGem</N>19031</N>700122"

	-- 三级优质-选项*2
	tNpcGossip[19031]["Text2-7"] = {271}
	tNpcGossip[19031]["Text271"] = tAlchemy_Text[19031]["Text231"]
	tNpcGossip[19031]["tOption2-7"] = {35,36,37,38,40}
	tNpcGossip[19031]["Option35"] = tAlchemy_Text[19031]["Option35"]
	tNpcGossip[19031]["Option36"] = tAlchemy_Text[19031]["Option36"]
	tNpcGossip[19031]["Option37"] = tAlchemy_Text[19031]["Option37"]
	tNpcGossip[19031]["Option38"] = tAlchemy_Text[19031]["Option38"]
	tNpcGossip[19031]["Option39"] = tAlchemy_Text[19031]["Option39"]
	tNpcGossip[19031]["Option40"] = tAlchemy_Text[19031]["Option17"]
	tNpcGossip[19031]["OptionPoint40"]="2-8"
	
	tNpcGossip[19031]["Text2-8"] = {281}
	tNpcGossip[19031]["Text281"] = tAlchemy_Text[19031]["Text231"]
	tNpcGossip[19031]["tOption2-8"] = {39,41,42,45,23}
	tNpcGossip[19031]["Option41"] = tAlchemy_Text[19031]["Option41"]
	tNpcGossip[19031]["Option42"] = tAlchemy_Text[19031]["Option42"]
	-- tNpcGossip[19031]["Option43"] = tAlchemy_Text[19031]["Option43"]
	-- tNpcGossip[19031]["Option44"] = tAlchemy_Text[19031]["Option44"]
	tNpcGossip[19031]["Option45"] = tAlchemy_Text[19031]["Option22"]
	tNpcGossip[19031]["OptionPoint45"]="2-7"

	tNpcGossip[19031]["OptionFunc35"]="Alchemy_ChangeGem</N>19031</N>700003"
	tNpcGossip[19031]["OptionFunc36"]="Alchemy_ChangeGem</N>19031</N>700013"
	tNpcGossip[19031]["OptionFunc37"]="Alchemy_ChangeGem</N>19031</N>700023"
	tNpcGossip[19031]["OptionFunc38"]="Alchemy_ChangeGem</N>19031</N>700033"
	tNpcGossip[19031]["OptionFunc39"]="Alchemy_ChangeGem</N>19031</N>700043"
	tNpcGossip[19031]["OptionFunc41"]="Alchemy_ChangeGem</N>19031</N>700053"
	tNpcGossip[19031]["OptionFunc42"]="Alchemy_ChangeGem</N>19031</N>700063"
	-- tNpcGossip[19031]["OptionFunc43"]="Alchemy_ChangeGem</N>19031</N>700103"
	-- tNpcGossip[19031]["OptionFunc44"]="Alchemy_ChangeGem</N>19031</N>700123"
	
	-- 没宝石
	tNpcGossip[19031]["Text2-9"] = {291}
	tNpcGossip[19031]["Text291"] = tAlchemy_Text[19031]["Text291"]
	tNpcGossip[19031]["tOption2-9"] = {46}
	tNpcGossip[19031]["Option46"] = tAlchemy_Text[19031]["Option46"]

	--~~~~~~~~~~~~~~唤醒操作~~~~~~~~~~~~~
	-- 免费敬献次数未用完
	tNpcGossip[19031]["Text3-1"] = {311}
	tNpcGossip[19031]["Text311"] = tAlchemy_Text[19031]["Text311"]
	tNpcGossip[19031]["tOption3-1"] = {47}
	tNpcGossip[19031]["Option47"] = tAlchemy_Text[19031]["Option47"]
	-- 二次确认
	tNpcGossip[19031]["Text3-5"] = {351}
	tNpcGossip[19031]["Text351"] = tAlchemy_Text[19031]["Text351"]
	tNpcGossip[19031]["tOption3-5"] = {48,51}
	tNpcGossip[19031]["Option48"] = tAlchemy_Text[19031]["Option48"]
	tNpcGossip[19031]["OptionFunc48"]="Alchemy_WakeTheMonster</N>19031"
	tNpcGossip[19031]["Option51"] = tAlchemy_Text[19031]["Option51"]
	-- 成功
	tNpcGossip[19031]["Text3-3"] = {331}
	tNpcGossip[19031]["Text331"] = tAlchemy_Text[19031]["Text331"]
	tNpcGossip[19031]["tOption3-3"] = {49}
	tNpcGossip[19031]["Option49"] = tAlchemy_Text[19031]["Option49"]
	-- 天石不足
	tNpcGossip[19031]["Text3-4"] = {341}
	tNpcGossip[19031]["Text341"] = tAlchemy_Text[19031]["Text341"]
	tNpcGossip[19031]["tOption3-4"] = {50}
	tNpcGossip[19031]["Option50"] = tAlchemy_Text[19031]["Option50"]
	-- 接回交宝石
	tNpcGossip[19031]["Text4-1"] = {411}
	tNpcGossip[19031]["Text411"] = tAlchemy_Text["GetReward"][1]
	tNpcGossip[19031]["tOption4-1"] = {52,53}
	tNpcGossip[19031]["Option52"] = tAlchemy_Text["GetReward"]["Option1"]
	tNpcGossip[19031]["OptionFunc52"]="Alchemy_SubmitToMonster</N>19031"
	tNpcGossip[19031]["Option53"] = tAlchemy_Text["GetReward"]["Option2"]

	--混沌神符	
	tItem[3008352] = tItem[3008352] or {}

	tItem[3008352]["Text1-1"] = {111,112,113,114}
	tItem[3008352]["Text111"] = tAlchemy_Text[3008352]["Text111"] 
	tItem[3008352]["Text112"] = tAlchemy_Text[3008352]["Text112"] 
	tItem[3008352]["Text113"] = tAlchemy_Text[3008352]["Text113"] 
	tItem[3008352]["Text114"] = tAlchemy_Text[3008352]["Text114"] 
	tItem[3008352]["tOption1-1"] = {1,2,3,4,5}
	tItem[3008352]["Option1"] = tAlchemy_Text[3008352]["Option1"]
	tItem[3008352]["Option2"] = tAlchemy_Text[3008352]["Option2"]
	tItem[3008352]["Option3"] = tAlchemy_Text[3008352]["Option3"]
	tItem[3008352]["Option4"] = tAlchemy_Text[3008352]["Option4"]
	tItem[3008352]["Option5"] = tAlchemy_Text[3008352]["Option5"]
	
	tItem[3008352]["OptionFunc1"]="Alchemy_WaskPresent</N>184325</N>3008352"
	tItem[3008352]["OptionFunc2"]="Alchemy_WaskPresent</N>188175</N>3008352"
	tItem[3008352]["OptionFunc3"]="Alchemy_WaskPresent</N>188285</N>3008352"
	tItem[3008352]["OptionFunc4"]="Alchemy_WaskPresent</N>188575</N>3008352"


	--碎片
	tItem[3008346] = tItem[3008346] or {}
	tItem[3008346]["Function"] = function(nItemId,sItemName)
		Alchemy_FragmentCompose(nItemId)
	end
	
	tItem[3008351] = tItem[3008346]
	
	--礼包
	tItem[3008347] = tItem[3008347] or {}
	tItem[3008347]["Function"] = function(nItemId,sItemName)
		Alchemy_OpenTheCoatGift(nItemId)
	end
	
	tItem[3008348] = tItem[3008347]
	tItem[3008349] = tItem[3008347]
	tItem[3008350] = tItem[3008347]

--怪物掉落
-- table.insert(tMonsterDrop_AreaLoad,tAlchemy_MonsterTemplate)