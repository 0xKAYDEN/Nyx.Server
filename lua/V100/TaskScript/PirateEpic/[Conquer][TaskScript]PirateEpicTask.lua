------------------------------------------------------------------------------------
--Name：            180129[简体征服][任务脚本]海盗史诗任务
--Creator:      游若楠
--Created:     2018/01/29
------------------------------------------------------------------------------------
--任务需求：

--STC掩码表：
--175 54	记录是否曾经学过星海湮灭
--175 55	记录是否曾经学过死亡绽放
--175 56	记录是否曾经学过海神之威
------------------------------------------------------------------------------------
--命名前缀：PirateEpicTask_

----------------------------------（数据）--------------------------------------------
------------------------------常量
local tPirateEpicTask_Cont = {}
	--角色参与条件
	tPirateEpicTask_Cont["UserJoinCond"] = {}
	tPirateEpicTask_Cont["UserJoinCond"]["Level"] = 70
	tPirateEpicTask_Cont["UserJoinCond"]["Metempsychosis"] = 2
	tPirateEpicTask_Cont["UserJoinCond"]["ProfessionMin"] = 70
	tPirateEpicTask_Cont["UserJoinCond"]["ProfessionMax"] = 75
	
	--出隐藏奖励表需要消费的天石数
	tPirateEpicTask_Cont["RewardChange"] = {}
	tPirateEpicTask_Cont["RewardChange"][1] = 13500
	tPirateEpicTask_Cont["RewardChange"][2] = 24300
	
	--可以用藏宝图的地图
	tPirateEpicTask_Cont["MapCanUseTreasureMap"] = {}
	tPirateEpicTask_Cont["MapCanUseTreasureMap"][1] = 1002  --双龙城
	tPirateEpicTask_Cont["MapCanUseTreasureMap"][2] = 10266
	tPirateEpicTask_Cont["MapCanUseTreasureMap"][3] = 10267
	tPirateEpicTask_Cont["MapCanUseTreasureMap"][4] = 10268
	tPirateEpicTask_Cont["MapCanUseTreasureMap"][5] = 10269
	tPirateEpicTask_Cont["MapCanUseTreasureMap"][6] = 10270
	tPirateEpicTask_Cont["MapCanUseTreasureMap"][7] = 10271
	tPirateEpicTask_Cont["MapCanUseTreasureMap"][8] = 1004  --职业大厅
	tPirateEpicTask_Cont["MapCanUseTreasureMap"][9] = 10386  --职业大厅
	
	--史诗武器类型编号
	tPirateEpicTask_Cont["SSWeaponSubType"] = {}
	tPirateEpicTask_Cont["SSWeaponSubType"]["RightHand"] = 671
	tPirateEpicTask_Cont["SSWeaponSubType"]["LeftHand"] = 670
	tPirateEpicTask_Cont["SSWeaponSubType"][4] = 671
	tPirateEpicTask_Cont["SSWeaponSubType"][5] = 670
	
	--史诗武器位置
	tPirateEpicTask_Cont["SSWeaponPos"] = {}
	tPirateEpicTask_Cont["SSWeaponPos"][1] = 4
	tPirateEpicTask_Cont["SSWeaponPos"][2] = 5
	
	--允许转的武器类型编号
	tPirateEpicTask_Cont["SubTypeAllowed"] = {}
	tPirateEpicTask_Cont["SubTypeAllowed"][1] = 611
	tPirateEpicTask_Cont["SubTypeAllowed"][2] = 612
	
	--Log
	tPirateEpicTask_Cont["Log"] = {}
	tPirateEpicTask_Cont["Log"]["TransformSucc"] = "0,0,%d,%d,18000170,1[7],%d,%d"
	
	--版本宣传图Id
	tPirateEpicTask_Cont["PicId"] = 1021
	
	
-----------光效
	tPirateEpicTask_Cont["Effect"] = {}
	--进入藏宝地图
	tPirateEpicTask_Cont["Effect"]["EnterMap"] = {}
	tPirateEpicTask_Cont["Effect"]["EnterMap"][10266] = "hdsshhyx"
	tPirateEpicTask_Cont["Effect"]["EnterMap"][10267] = "hdsslhex"
	tPirateEpicTask_Cont["Effect"]["EnterMap"][10268] = "hdssaqhsx"
	tPirateEpicTask_Cont["Effect"]["EnterMap"][10269] = "hdssdzhsx"
	tPirateEpicTask_Cont["Effect"]["EnterMap"][10270] = "hdssjlbhwx"
	
	tPirateEpicTask_Cont["Effect"]["FindTreasure"] = "hdssxhbz"
	
	
------------------------------NPC
--local tPirateEpicTask_NPC = {}


------------------------------物品
local tPirateEpicTask_Item = {}
-----------藏宝图
	--红海
	tPirateEpicTask_Item[3307443] = {}
	tPirateEpicTask_Item[3307443]["Star"] = 1
	tPirateEpicTask_Item[3307443]["MapTakeEffect"] = 10266
	tPirateEpicTask_Item[3307443]["MarkPoint"] = {}
	tPirateEpicTask_Item[3307443]["MarkPoint"][1] = {41,24}
	tPirateEpicTask_Item[3307443]["MarkPoint"][2] = {54,45}
	tPirateEpicTask_Item[3307443]["MarkPoint"][3] = {77,62}
	tPirateEpicTask_Item[3307443]["MarkPoint"][4] = {59,80}
	
	--里海
	tPirateEpicTask_Item[3307444] = {}
	tPirateEpicTask_Item[3307444]["Star"] = 2
	tPirateEpicTask_Item[3307444]["MapTakeEffect"] = 10267
	tPirateEpicTask_Item[3307444]["MarkPoint"] = {}
	tPirateEpicTask_Item[3307444]["MarkPoint"][1] = {53,37}
	tPirateEpicTask_Item[3307444]["MarkPoint"][2] = {36,54}
	tPirateEpicTask_Item[3307444]["MarkPoint"][3] = {61,53}
	tPirateEpicTask_Item[3307444]["MarkPoint"][4] = {49,74}
	
	--爱琴海
	tPirateEpicTask_Item[3307445] = {}
	tPirateEpicTask_Item[3307445]["Star"] = 3
	tPirateEpicTask_Item[3307445]["MapTakeEffect"] = 10268
	tPirateEpicTask_Item[3307445]["MarkPoint"] = {}
	tPirateEpicTask_Item[3307445]["MarkPoint"][1] = {51,25}
	tPirateEpicTask_Item[3307445]["MarkPoint"][2] = {41,35}
	tPirateEpicTask_Item[3307445]["MarkPoint"][3] = {67,59}
	tPirateEpicTask_Item[3307445]["MarkPoint"][4] = {65,74}
	tPirateEpicTask_Item[3307445]["MarkPoint"][5] = {42,78}
	
	--地中海
	tPirateEpicTask_Item[3307446] = {}
	tPirateEpicTask_Item[3307446]["Star"] = 4
	tPirateEpicTask_Item[3307446]["MapTakeEffect"] = 10269
	tPirateEpicTask_Item[3307446]["MarkPoint"] = {}
	tPirateEpicTask_Item[3307446]["MarkPoint"][1] = {57,80}
	tPirateEpicTask_Item[3307446]["MarkPoint"][2] = {38,64}
	tPirateEpicTask_Item[3307446]["MarkPoint"][3] = {43,41}
	tPirateEpicTask_Item[3307446]["MarkPoint"][4] = {36,24}
	
	--加勒比
	tPirateEpicTask_Item[3307447] = {}
	tPirateEpicTask_Item[3307447]["Star"] = 5
	tPirateEpicTask_Item[3307447]["MapTakeEffect"] = 10270
	tPirateEpicTask_Item[3307447]["MarkPoint"] = {}
	tPirateEpicTask_Item[3307447]["MarkPoint"][1] = {50,36}
	tPirateEpicTask_Item[3307447]["MarkPoint"][2] = {67,48}
	tPirateEpicTask_Item[3307447]["MarkPoint"][3] = {60,66}
	tPirateEpicTask_Item[3307447]["MarkPoint"][4] = {46,75}
	tPirateEpicTask_Item[3307447]["MarkPoint"][5] = {31,51}

-----------技能卷轴
	--火力压制
	tPirateEpicTask_Item[3307432] = {}
	tPirateEpicTask_Item[3307432]["SkillLevel"] = 15
	tPirateEpicTask_Item[3307432]["SkillType"] = 14680
	
	--死亡绽放
	tPirateEpicTask_Item[3307433] = {}
	tPirateEpicTask_Item[3307433]["SkillLevel"] = 40
	tPirateEpicTask_Item[3307433]["SkillType"] = 14720
	
	--哑火
	tPirateEpicTask_Item[3307434] = {}
	tPirateEpicTask_Item[3307434]["SkillLevel"] = 70
	tPirateEpicTask_Item[3307434]["SkillType"] = 14710

------------------------------地图
local tPirateEpicTask_Map = {}
	--红海
	tPirateEpicTask_Map[10266] = {}
	tPirateEpicTask_Map[10266]["ChgPX"] = 11
	tPirateEpicTask_Map[10266]["ChgPY"] = 46
	tPirateEpicTask_Map[10266]["DigPoint"] = tPirateEpicTask_Item[3307443]["MarkPoint"]
	tPirateEpicTask_Map[10266]["StcValue"] = 1  --表示来过的掩码，采用二进制位叠加，其他几张地图相同
	tPirateEpicTask_Map[10266]["PicId"] = 1032  --第一次来显示的图片ID，其他几张地图相同
	
	--里海
	tPirateEpicTask_Map[10267] = {}
	tPirateEpicTask_Map[10267]["ChgPX"] = 28
	tPirateEpicTask_Map[10267]["ChgPY"] = 27
	tPirateEpicTask_Map[10267]["DigPoint"] = tPirateEpicTask_Item[3307444]["MarkPoint"]
	tPirateEpicTask_Map[10267]["StcValue"] = 2
	tPirateEpicTask_Map[10267]["PicId"] = 1033
	
	--爱琴海
	tPirateEpicTask_Map[10268] = {}
	tPirateEpicTask_Map[10268]["ChgPX"] = 9
	tPirateEpicTask_Map[10268]["ChgPY"] = 45
	tPirateEpicTask_Map[10268]["DigPoint"] = tPirateEpicTask_Item[3307445]["MarkPoint"]
	tPirateEpicTask_Map[10268]["StcValue"] = 4
	tPirateEpicTask_Map[10268]["PicId"] = 1034
	
	--地中海
	tPirateEpicTask_Map[10269] = {}
	tPirateEpicTask_Map[10269]["ChgPX"] = 11
	tPirateEpicTask_Map[10269]["ChgPY"] = 47
	tPirateEpicTask_Map[10269]["DigPoint"] = tPirateEpicTask_Item[3307446]["MarkPoint"]
	tPirateEpicTask_Map[10269]["StcValue"] = 8
	tPirateEpicTask_Map[10269]["PicId"] = 1035
	
	--加勒比
	tPirateEpicTask_Map[10270] = {}
	tPirateEpicTask_Map[10270]["ChgPX"] = 17
	tPirateEpicTask_Map[10270]["ChgPY"] = 46
	tPirateEpicTask_Map[10270]["DigPoint"] = tPirateEpicTask_Item[3307447]["MarkPoint"]
	tPirateEpicTask_Map[10270]["StcValue"] = 16
	tPirateEpicTask_Map[10270]["PicId"] = 1036
	
	--狂怒之海
	tPirateEpicTask_Map[10271] = {}
	tPirateEpicTask_Map[10271]["EnterPX"] = 119
	tPirateEpicTask_Map[10271]["EnterPY"] = 186



------------------------------陷阱
-- local tPirateEpicTask_Trap = {}


------------------------------掩码
local tPirateEpicTask_Stc = {}
	--是否屏蔽了购买藏宝图的二次确认
	tPirateEpicTask_Stc["RemoveSecConf"] = {}
	tPirateEpicTask_Stc["RemoveSecConf"]["Event"] = 173
	tPirateEpicTask_Stc["RemoveSecConf"]["Type"] = 98
	
	--拿到背包信后是否使用了
	tPirateEpicTask_Stc["HaveUsedBackpackLetter"] = {}
	tPirateEpicTask_Stc["HaveUsedBackpackLetter"]["Event"] = 174
	tPirateEpicTask_Stc["HaveUsedBackpackLetter"]["Type"] = 01
	tPirateEpicTask_Stc["HaveUsedBackpackLetter"]["Data"] = 1
	
	--是否显示过地图宣传图(适用于五张藏宝地图，二进制位标记法)
	tPirateEpicTask_Stc["ShowAdvertisePic"] = {}
	tPirateEpicTask_Stc["ShowAdvertisePic"]["Event"] = 174
	tPirateEpicTask_Stc["ShowAdvertisePic"]["Type"] = 02
	
	--消费数额
	tPirateEpicTask_Stc["CostSum"] = {}
	tPirateEpicTask_Stc["CostSum"]["Event"] = 174
	tPirateEpicTask_Stc["CostSum"]["Type"] = 22
	
	--是否显示过版本宣传图
	tPirateEpicTask_Stc["ShowVersionPic"] = {}
	tPirateEpicTask_Stc["ShowVersionPic"]["Event"] = 175
	tPirateEpicTask_Stc["ShowVersionPic"]["Type"] = 39
	--记录曾经是否学过史诗技能（1：星海湮灭，2：死亡绽放，3：海神之威）
	tPirateEpicTask_Stc["EpicSkill"] = {}
	tPirateEpicTask_Stc["EpicSkill"][3307432] = {}
	tPirateEpicTask_Stc["EpicSkill"][3307432]["Event"] = 175
	tPirateEpicTask_Stc["EpicSkill"][3307432]["Type"] = 54
	tPirateEpicTask_Stc["EpicSkill"][3307433] = {}
	tPirateEpicTask_Stc["EpicSkill"][3307433]["Event"] = 175
	tPirateEpicTask_Stc["EpicSkill"][3307433]["Type"] = 55
	tPirateEpicTask_Stc["EpicSkill"][3307434] = {}
	tPirateEpicTask_Stc["EpicSkill"][3307434]["Event"] = 175
	tPirateEpicTask_Stc["EpicSkill"][3307434]["Type"] = 56


------------------------------随机表
local tPirateEpicTask_Prob = {}
	--随机地图挖掘点
	tPirateEpicTask_Prob[3307443] = {}
	tPirateEpicTask_Prob[3307443]["ItemChanceSum"] = 9999
	tPirateEpicTask_Prob[3307443][1] = {}
	tPirateEpicTask_Prob[3307443][1]["RandomItemChanceType"] = 2
	tPirateEpicTask_Prob[3307443][1]["ItemChance"] = 3333
	tPirateEpicTask_Prob[3307443][1]["nIndex"] = 1
	tPirateEpicTask_Prob[3307443][2] = {}
	tPirateEpicTask_Prob[3307443][2]["RandomItemChanceType"] = 2
	tPirateEpicTask_Prob[3307443][2]["ItemChance"] = 3333
	tPirateEpicTask_Prob[3307443][2]["nIndex"] = 2
	tPirateEpicTask_Prob[3307443][3] = {}
	tPirateEpicTask_Prob[3307443][3]["RandomItemChanceType"] = 2
	tPirateEpicTask_Prob[3307443][3]["ItemChance"] = 3333
	tPirateEpicTask_Prob[3307443][3]["nIndex"] = 3
	
	tPirateEpicTask_Prob[3307444] = {}
	tPirateEpicTask_Prob[3307444]["ItemChanceSum"] = 10000
	tPirateEpicTask_Prob[3307444][1] = {}
	tPirateEpicTask_Prob[3307444][1]["RandomItemChanceType"] = 2
	tPirateEpicTask_Prob[3307444][1]["ItemChance"] = 2500
	tPirateEpicTask_Prob[3307444][1]["nIndex"] = 1
	tPirateEpicTask_Prob[3307444][2] = {}
	tPirateEpicTask_Prob[3307444][2]["RandomItemChanceType"] = 2
	tPirateEpicTask_Prob[3307444][2]["ItemChance"] = 2500
	tPirateEpicTask_Prob[3307444][2]["nIndex"] = 2
	tPirateEpicTask_Prob[3307444][3] = {}
	tPirateEpicTask_Prob[3307444][3]["RandomItemChanceType"] = 2
	tPirateEpicTask_Prob[3307444][3]["ItemChance"] = 2500
	tPirateEpicTask_Prob[3307444][3]["nIndex"] = 3
	tPirateEpicTask_Prob[3307444][4] = {}
	tPirateEpicTask_Prob[3307444][4]["RandomItemChanceType"] = 2
	tPirateEpicTask_Prob[3307444][4]["ItemChance"] = 2500
	tPirateEpicTask_Prob[3307444][4]["nIndex"] = 4
	
	tPirateEpicTask_Prob[3307445] = {}
	tPirateEpicTask_Prob[3307445]["ItemChanceSum"] = 10000
	tPirateEpicTask_Prob[3307445][1] = {}
	tPirateEpicTask_Prob[3307445][1]["RandomItemChanceType"] = 2
	tPirateEpicTask_Prob[3307445][1]["ItemChance"] = 2000
	tPirateEpicTask_Prob[3307445][1]["nIndex"] = 1
	tPirateEpicTask_Prob[3307445][2] = {}
	tPirateEpicTask_Prob[3307445][2]["RandomItemChanceType"] = 2
	tPirateEpicTask_Prob[3307445][2]["ItemChance"] = 2000
	tPirateEpicTask_Prob[3307445][2]["nIndex"] = 2
	tPirateEpicTask_Prob[3307445][3] = {}
	tPirateEpicTask_Prob[3307445][3]["RandomItemChanceType"] = 2
	tPirateEpicTask_Prob[3307445][3]["ItemChance"] = 2000
	tPirateEpicTask_Prob[3307445][3]["nIndex"] = 3
	tPirateEpicTask_Prob[3307445][4] = {}
	tPirateEpicTask_Prob[3307445][4]["RandomItemChanceType"] = 2
	tPirateEpicTask_Prob[3307445][4]["ItemChance"] = 2000
	tPirateEpicTask_Prob[3307445][4]["nIndex"] = 4
	tPirateEpicTask_Prob[3307445][5] = {}
	tPirateEpicTask_Prob[3307445][5]["RandomItemChanceType"] = 2
	tPirateEpicTask_Prob[3307445][5]["ItemChance"] = 2000
	tPirateEpicTask_Prob[3307445][5]["nIndex"] = 5
	
	tPirateEpicTask_Prob[3307446] = {}
	tPirateEpicTask_Prob[3307446]["ItemChanceSum"] = 10000
	tPirateEpicTask_Prob[3307446][1] = {}
	tPirateEpicTask_Prob[3307446][1]["RandomItemChanceType"] = 2
	tPirateEpicTask_Prob[3307446][1]["ItemChance"] = 2500
	tPirateEpicTask_Prob[3307446][1]["nIndex"] = 1
	tPirateEpicTask_Prob[3307446][2] = {}
	tPirateEpicTask_Prob[3307446][2]["RandomItemChanceType"] = 2
	tPirateEpicTask_Prob[3307446][2]["ItemChance"] = 2500
	tPirateEpicTask_Prob[3307446][2]["nIndex"] = 2
	tPirateEpicTask_Prob[3307446][3] = {}
	tPirateEpicTask_Prob[3307446][3]["RandomItemChanceType"] = 2
	tPirateEpicTask_Prob[3307446][3]["ItemChance"] = 2500
	tPirateEpicTask_Prob[3307446][3]["nIndex"] = 3
	tPirateEpicTask_Prob[3307446][4] = {}
	tPirateEpicTask_Prob[3307446][4]["RandomItemChanceType"] = 2
	tPirateEpicTask_Prob[3307446][4]["ItemChance"] = 2500
	tPirateEpicTask_Prob[3307446][4]["nIndex"] = 4

	tPirateEpicTask_Prob[3307447] = {}
	tPirateEpicTask_Prob[3307447]["ItemChanceSum"] = 10000
	tPirateEpicTask_Prob[3307447][1] = {}
	tPirateEpicTask_Prob[3307447][1]["RandomItemChanceType"] = 2
	tPirateEpicTask_Prob[3307447][1]["ItemChance"] = 2000
	tPirateEpicTask_Prob[3307447][1]["nIndex"] = 1
	tPirateEpicTask_Prob[3307447][2] = {}
	tPirateEpicTask_Prob[3307447][2]["RandomItemChanceType"] = 2
	tPirateEpicTask_Prob[3307447][2]["ItemChance"] = 2000
	tPirateEpicTask_Prob[3307447][2]["nIndex"] = 2
	tPirateEpicTask_Prob[3307447][3] = {}
	tPirateEpicTask_Prob[3307447][3]["RandomItemChanceType"] = 2
	tPirateEpicTask_Prob[3307447][3]["ItemChance"] = 2000
	tPirateEpicTask_Prob[3307447][3]["nIndex"] = 3
	tPirateEpicTask_Prob[3307447][4] = {}
	tPirateEpicTask_Prob[3307447][4]["RandomItemChanceType"] = 2
	tPirateEpicTask_Prob[3307447][4]["ItemChance"] = 2000
	tPirateEpicTask_Prob[3307447][4]["nIndex"] = 4
	tPirateEpicTask_Prob[3307447][5] = {}
	tPirateEpicTask_Prob[3307447][5]["RandomItemChanceType"] = 2
	tPirateEpicTask_Prob[3307447][5]["ItemChance"] = 2000
	tPirateEpicTask_Prob[3307447][5]["nIndex"] = 5


------------------------------奖励表
local tPirateEpicTask_Reward = {}
-----------兑换漂流瓶
	tPirateEpicTask_Reward["ExchangeBottle"] = {}
	tPirateEpicTask_Reward["ExchangeBottle"]["LogId"] = 18000170
	tPirateEpicTask_Reward["ExchangeBottle"]["RewardEffect"] = {}
	tPirateEpicTask_Reward["ExchangeBottle"]["RewardEffect"]["SzObj"] = "self"
	tPirateEpicTask_Reward["ExchangeBottle"]["RewardEffect"]["Effect"] = "angelwing"
	
	tPirateEpicTask_Reward["ExchangeBottle"]["DeleteItem"] = {}
	tPirateEpicTask_Reward["ExchangeBottle"]["DeleteItem"][1] = {}
	tPirateEpicTask_Reward["ExchangeBottle"]["DeleteItem"][1]["Id"] = 722732  --红色恶之花
	tPirateEpicTask_Reward["ExchangeBottle"]["DeleteItem"][1]["ItemNum"] = 3
	tPirateEpicTask_Reward["ExchangeBottle"]["DeleteItem"][2] = {}
	tPirateEpicTask_Reward["ExchangeBottle"]["DeleteItem"][2]["Id"] = 722736  --白色恶之花
	tPirateEpicTask_Reward["ExchangeBottle"]["DeleteItem"][2]["ItemNum"] = 3

	tPirateEpicTask_Reward["ExchangeBottle"]["RewardItem"] = {}
	tPirateEpicTask_Reward["ExchangeBottle"]["RewardItem"][1] = {}
	tPirateEpicTask_Reward["ExchangeBottle"]["RewardItem"][1]["Id"] = 3307448
	tPirateEpicTask_Reward["ExchangeBottle"]["RewardItem"][1]["Attr"] = "0 1"
	-- 【STC掩码配置】
	tPirateEpicTask_Reward["ExchangeBottle"]["EventType"] = 173
	tPirateEpicTask_Reward["ExchangeBottle"]["DataType"] = 01
	tPirateEpicTask_Reward["ExchangeBottle"]["RewardData"] = 1
	tPirateEpicTask_Reward["ExchangeBottle"]["RewardDelay"] = 1
	tPirateEpicTask_Reward["ExchangeBottle"]["RewardTimeType"] = 4


-----------兑换漂流瓶2(砸钱)
	tPirateEpicTask_Reward["ExchangeBottle2"] = {}
	tPirateEpicTask_Reward["ExchangeBottle2"]["LogId"] = 18000170
	tPirateEpicTask_Reward["ExchangeBottle2"]["RewardEffect"] = {}
	tPirateEpicTask_Reward["ExchangeBottle2"]["RewardEffect"]["SzObj"] = "self"
	tPirateEpicTask_Reward["ExchangeBottle2"]["RewardEffect"]["Effect"] = "angelwing"

	tPirateEpicTask_Reward["ExchangeBottle2"]["RewardEMoney"] = {}
	tPirateEpicTask_Reward["ExchangeBottle2"]["RewardEMoney"]["Value"] = -27
	tPirateEpicTask_Reward["ExchangeBottle2"]["RewardItem"] = {}
	tPirateEpicTask_Reward["ExchangeBottle2"]["RewardItem"][1] = {}
	tPirateEpicTask_Reward["ExchangeBottle2"]["RewardItem"][1]["Id"] = 3307448
	tPirateEpicTask_Reward["ExchangeBottle2"]["RewardItem"][1]["Attr"] = "0 1"
	-- 【STC掩码配置】
	tPirateEpicTask_Reward["ExchangeBottle2"]["EventType"] = 173
	tPirateEpicTask_Reward["ExchangeBottle2"]["DataType"] = 01
	tPirateEpicTask_Reward["ExchangeBottle2"]["RewardData"] = 1
	tPirateEpicTask_Reward["ExchangeBottle2"]["RewardDelay"] = 1
	tPirateEpicTask_Reward["ExchangeBottle2"]["RewardTimeType"] = 4

	tPirateEpicTask_Reward["ExchangeBottle2"]["RewardNoNeedTip"] = 1


-----------买一张藏宝图
	tPirateEpicTask_Reward["BuyOneMap"] = {}
	tPirateEpicTask_Reward["BuyOneMap"]["LogId"] = 18000170
	tPirateEpicTask_Reward["BuyOneMap"]["RewardEffect"] = {}
	tPirateEpicTask_Reward["BuyOneMap"]["RewardEffect"]["SzObj"] = "self"
	tPirateEpicTask_Reward["BuyOneMap"]["RewardEffect"]["Effect"] = "angelwing"

	tPirateEpicTask_Reward["BuyOneMap"]["RewardItem"] = {}
	tPirateEpicTask_Reward["BuyOneMap"]["RewardItem"][1] = {}
	tPirateEpicTask_Reward["BuyOneMap"]["RewardItem"][1]["Id"] = 3307443
	tPirateEpicTask_Reward["BuyOneMap"]["RewardItem"][1]["Attr"] = "0 1"

	tPirateEpicTask_Reward["BuyOneMap"]["RewardEMoney"] = {}
	tPirateEpicTask_Reward["BuyOneMap"]["RewardEMoney"]["Value"] = -27

	tPirateEpicTask_Reward["BuyOneMap"]["RewardNoNeedTip"] = 1

-----------买十张藏宝图
	tPirateEpicTask_Reward["BuyTenMaps"] = {}
	tPirateEpicTask_Reward["BuyTenMaps"]["LogId"] = 18000170
	tPirateEpicTask_Reward["BuyTenMaps"]["RewardEffect"] = {}
	tPirateEpicTask_Reward["BuyTenMaps"]["RewardEffect"]["SzObj"] = "self"
	tPirateEpicTask_Reward["BuyTenMaps"]["RewardEffect"]["Effect"] = "angelwing"

	tPirateEpicTask_Reward["BuyTenMaps"]["RewardItem"] = {}
	tPirateEpicTask_Reward["BuyTenMaps"]["RewardItem"][1] = {}
	tPirateEpicTask_Reward["BuyTenMaps"]["RewardItem"][1]["Id"] = 3307443
	tPirateEpicTask_Reward["BuyTenMaps"]["RewardItem"][1]["Attr"] = "0 10"

	tPirateEpicTask_Reward["BuyTenMaps"]["RewardEMoney"] = {}
	tPirateEpicTask_Reward["BuyTenMaps"]["RewardEMoney"]["Value"] = -270

	tPirateEpicTask_Reward["BuyTenMaps"]["RewardNoNeedTip"] = 1

-----------使用漂流瓶
	tPirateEpicTask_Reward[3307448] = {}
	tPirateEpicTask_Reward[3307448]["ItemChanceSum"]=10000
	tPirateEpicTask_Reward[3307448]["DeleteItem"] = {}
	tPirateEpicTask_Reward[3307448]["DeleteItem"][1] = {}
	tPirateEpicTask_Reward[3307448]["DeleteItem"][1]["Id"] = 3307448
	tPirateEpicTask_Reward[3307448][1]={}
	tPirateEpicTask_Reward[3307448][1]["RandomItemChanceType"]=2
	tPirateEpicTask_Reward[3307448][1]["ItemChance"]=8450
	tPirateEpicTask_Reward[3307448][1]["RewardItem"]={}
	tPirateEpicTask_Reward[3307448][1]["RewardItem"][1]={}
	tPirateEpicTask_Reward[3307448][1]["RewardItem"][1]["Id"]=3307443
	tPirateEpicTask_Reward[3307448][1]["RewardItem"][1]["Attr"]="0 1"
	tPirateEpicTask_Reward[3307448][1]["LogId"] = 18000170
	tPirateEpicTask_Reward[3307448][1]["LogStep"] = "1[1]"
	tPirateEpicTask_Reward[3307448][1]["RewardEffect"] = {}
	tPirateEpicTask_Reward[3307448][1]["RewardEffect"]["SzObj"] = "self"
	tPirateEpicTask_Reward[3307448][1]["RewardEffect"]["Effect"] = "angelwing"
	tPirateEpicTask_Reward[3307448][2]={}
	tPirateEpicTask_Reward[3307448][2]["RandomItemChanceType"]=2
	tPirateEpicTask_Reward[3307448][2]["ItemChance"]=1500
	tPirateEpicTask_Reward[3307448][2]["RewardItem"]={}
	tPirateEpicTask_Reward[3307448][2]["RewardItem"][1]={}
	tPirateEpicTask_Reward[3307448][2]["RewardItem"][1]["Id"]=3307444
	tPirateEpicTask_Reward[3307448][2]["RewardItem"][1]["Attr"]="0 1"
	tPirateEpicTask_Reward[3307448][2]["LogId"] = 18000170
	tPirateEpicTask_Reward[3307448][2]["LogStep"] = "1[1]"
	tPirateEpicTask_Reward[3307448][2]["RewardEffect"] = {}
	tPirateEpicTask_Reward[3307448][2]["RewardEffect"]["SzObj"] = "self"
	tPirateEpicTask_Reward[3307448][2]["RewardEffect"]["Effect"] = "angelwing"
	tPirateEpicTask_Reward[3307448][3]={}
	tPirateEpicTask_Reward[3307448][3]["RandomItemChanceType"]=2
	tPirateEpicTask_Reward[3307448][3]["ItemChance"]=50
	tPirateEpicTask_Reward[3307448][3]["RewardItem"]={}
	tPirateEpicTask_Reward[3307448][3]["RewardItem"][1]={}
	tPirateEpicTask_Reward[3307448][3]["RewardItem"][1]["Id"]=3307445
	tPirateEpicTask_Reward[3307448][3]["RewardItem"][1]["Attr"]="0 1"
	tPirateEpicTask_Reward[3307448][3]["LogId"] = 18000170
	tPirateEpicTask_Reward[3307448][3]["LogStep"] = "1[1]"
	tPirateEpicTask_Reward[3307448][3]["RewardEffect"] = {}
	tPirateEpicTask_Reward[3307448][3]["RewardEffect"]["SzObj"] = "self"
	tPirateEpicTask_Reward[3307448][3]["RewardEffect"]["Effect"] = "angelwing"
	
	
-----------使用藏宝图
	tPirateEpicTask_Reward[1] = {}
	--1星
	tPirateEpicTask_Reward[1][3307443] = {}
	tPirateEpicTask_Reward[1][3307443]["ItemChanceSum"]=10000
	tPirateEpicTask_Reward[1][3307443]["DeleteItem"] = {}
	tPirateEpicTask_Reward[1][3307443]["DeleteItem"][1] = {}
	tPirateEpicTask_Reward[1][3307443]["DeleteItem"][1]["Id"] = 3307443
	tPirateEpicTask_Reward[1][3307443][1]={}
	tPirateEpicTask_Reward[1][3307443][1]["RandomItemChanceType"]=2
	tPirateEpicTask_Reward[1][3307443][1]["ItemChance"]=1100
	tPirateEpicTask_Reward[1][3307443][1]["RewardItem"]={}
	tPirateEpicTask_Reward[1][3307443][1]["RewardItem"][1]={}
	tPirateEpicTask_Reward[1][3307443][1]["RewardItem"][1]["Id"]=3307443
	tPirateEpicTask_Reward[1][3307443][1]["RewardItem"][1]["Attr"]="0 1"
	tPirateEpicTask_Reward[1][3307443][1]["LogId"] = 18000170
	tPirateEpicTask_Reward[1][3307443][1]["LogStep"] = "1[2]"
	tPirateEpicTask_Reward[1][3307443][2]={}
	tPirateEpicTask_Reward[1][3307443][2]["RandomItemChanceType"]=2
	tPirateEpicTask_Reward[1][3307443][2]["ItemChance"]=1850
	tPirateEpicTask_Reward[1][3307443][2]["RewardItem"]={}
	tPirateEpicTask_Reward[1][3307443][2]["RewardItem"][1]={}
	tPirateEpicTask_Reward[1][3307443][2]["RewardItem"][1]["Id"]=3307444
	tPirateEpicTask_Reward[1][3307443][2]["RewardItem"][1]["Attr"]="0 1"
	tPirateEpicTask_Reward[1][3307443][2]["LogId"] = 18000170
	tPirateEpicTask_Reward[1][3307443][2]["LogStep"] = "1[2]"
	tPirateEpicTask_Reward[1][3307443][3]={}
	tPirateEpicTask_Reward[1][3307443][3]["RandomItemChanceType"]=2
	tPirateEpicTask_Reward[1][3307443][3]["ItemChance"]=40
	tPirateEpicTask_Reward[1][3307443][3]["RewardItem"]={}
	tPirateEpicTask_Reward[1][3307443][3]["RewardItem"][1]={}
	tPirateEpicTask_Reward[1][3307443][3]["RewardItem"][1]["Id"]=3307445
	tPirateEpicTask_Reward[1][3307443][3]["RewardItem"][1]["Attr"]="0 1"
	tPirateEpicTask_Reward[1][3307443][3]["LogId"] = 18000170
	tPirateEpicTask_Reward[1][3307443][3]["LogStep"] = "1[2]"
	tPirateEpicTask_Reward[1][3307443][4]={}
	tPirateEpicTask_Reward[1][3307443][4]["RandomItemChanceType"]=2
	tPirateEpicTask_Reward[1][3307443][4]["ItemChance"]=10
	tPirateEpicTask_Reward[1][3307443][4]["RewardItem"]={}
	tPirateEpicTask_Reward[1][3307443][4]["RewardItem"][1]={}
	tPirateEpicTask_Reward[1][3307443][4]["RewardItem"][1]["Id"]=3307446
	tPirateEpicTask_Reward[1][3307443][4]["RewardItem"][1]["Attr"]="0 1"
	tPirateEpicTask_Reward[1][3307443][4]["LogId"] = 18000170
	tPirateEpicTask_Reward[1][3307443][4]["LogStep"] = "1[2]"
	tPirateEpicTask_Reward[1][3307443][5]={}
	tPirateEpicTask_Reward[1][3307443][5]["RandomItemChanceType"]=2
	tPirateEpicTask_Reward[1][3307443][5]["ItemChance"]=4000
	tPirateEpicTask_Reward[1][3307443][5]["RewardItem"]={}
	tPirateEpicTask_Reward[1][3307443][5]["RewardItem"][1]={}
	tPirateEpicTask_Reward[1][3307443][5]["RewardItem"][1]["Id"]=3002030
	tPirateEpicTask_Reward[1][3307443][5]["RewardItem"][1]["Attr"]="0 1"
	tPirateEpicTask_Reward[1][3307443][5]["LogId"] = 18000170
	tPirateEpicTask_Reward[1][3307443][5]["LogStep"] = "1[2]"
	tPirateEpicTask_Reward[1][3307443][6]={}
	tPirateEpicTask_Reward[1][3307443][6]["RandomItemChanceType"]=2
	tPirateEpicTask_Reward[1][3307443][6]["ItemChance"]=500
	tPirateEpicTask_Reward[1][3307443][6]["RewardItem"]={}
	tPirateEpicTask_Reward[1][3307443][6]["RewardItem"][1]={}
	tPirateEpicTask_Reward[1][3307443][6]["RewardItem"][1]["Id"]=3004466
	tPirateEpicTask_Reward[1][3307443][6]["RewardItem"][1]["Attr"]="0 1"
	tPirateEpicTask_Reward[1][3307443][6]["LogId"] = 18000170
	tPirateEpicTask_Reward[1][3307443][6]["LogStep"] = "1[2]"
	tPirateEpicTask_Reward[1][3307443][7]={}
	tPirateEpicTask_Reward[1][3307443][7]["RandomItemChanceType"]=2
	tPirateEpicTask_Reward[1][3307443][7]["ItemChance"]=500
	tPirateEpicTask_Reward[1][3307443][7]["RewardItem"]={}
	tPirateEpicTask_Reward[1][3307443][7]["RewardItem"][1]={}
	tPirateEpicTask_Reward[1][3307443][7]["RewardItem"][1]["Id"]=3004467
	tPirateEpicTask_Reward[1][3307443][7]["RewardItem"][1]["Attr"]="0 1"
	tPirateEpicTask_Reward[1][3307443][7]["LogId"] = 18000170
	tPirateEpicTask_Reward[1][3307443][7]["LogStep"] = "1[2]"
	tPirateEpicTask_Reward[1][3307443][8]={}
	tPirateEpicTask_Reward[1][3307443][8]["RandomItemChanceType"]=2
	tPirateEpicTask_Reward[1][3307443][8]["ItemChance"]=2000
	tPirateEpicTask_Reward[1][3307443][8]["RewardItem"]={}
	tPirateEpicTask_Reward[1][3307443][8]["RewardItem"][1]={}
	tPirateEpicTask_Reward[1][3307443][8]["RewardItem"][1]["Id"]=3008186
	tPirateEpicTask_Reward[1][3307443][8]["RewardItem"][1]["Attr"]="0 1"
	tPirateEpicTask_Reward[1][3307443][8]["LogId"] = 18000170
	tPirateEpicTask_Reward[1][3307443][8]["LogStep"] = "1[2]"

	--2星
	tPirateEpicTask_Reward[1][3307444] = {}
	tPirateEpicTask_Reward[1][3307444]["ItemChanceSum"]=10000
	tPirateEpicTask_Reward[1][3307444]["DeleteItem"] = {}
	tPirateEpicTask_Reward[1][3307444]["DeleteItem"][1] = {}
	tPirateEpicTask_Reward[1][3307444]["DeleteItem"][1]["Id"] = 3307444
	tPirateEpicTask_Reward[1][3307444][1]={}
	tPirateEpicTask_Reward[1][3307444][1]["RandomItemChanceType"]=2
	tPirateEpicTask_Reward[1][3307444][1]["ItemChance"]=1050
	tPirateEpicTask_Reward[1][3307444][1]["RewardItem"]={}
	tPirateEpicTask_Reward[1][3307444][1]["RewardItem"][1]={}
	tPirateEpicTask_Reward[1][3307444][1]["RewardItem"][1]["Id"]=3307444
	tPirateEpicTask_Reward[1][3307444][1]["RewardItem"][1]["Attr"]="0 1"
	tPirateEpicTask_Reward[1][3307444][1]["LogId"] = 18000170
	tPirateEpicTask_Reward[1][3307444][1]["LogStep"] = "1[3]"
	tPirateEpicTask_Reward[1][3307444][2]={}
	tPirateEpicTask_Reward[1][3307444][2]["RandomItemChanceType"]=2
	tPirateEpicTask_Reward[1][3307444][2]["ItemChance"]=1400
	tPirateEpicTask_Reward[1][3307444][2]["RewardItem"]={}
	tPirateEpicTask_Reward[1][3307444][2]["RewardItem"][1]={}
	tPirateEpicTask_Reward[1][3307444][2]["RewardItem"][1]["Id"]=3307445
	tPirateEpicTask_Reward[1][3307444][2]["RewardItem"][1]["Attr"]="0 1"
	tPirateEpicTask_Reward[1][3307444][2]["LogId"] = 18000170
	tPirateEpicTask_Reward[1][3307444][2]["LogStep"] = "1[3]"
	tPirateEpicTask_Reward[1][3307444][3]={}
	tPirateEpicTask_Reward[1][3307444][3]["RandomItemChanceType"]=2
	tPirateEpicTask_Reward[1][3307444][3]["ItemChance"]=50
	tPirateEpicTask_Reward[1][3307444][3]["RewardItem"]={}
	tPirateEpicTask_Reward[1][3307444][3]["RewardItem"][1]={}
	tPirateEpicTask_Reward[1][3307444][3]["RewardItem"][1]["Id"]=3307446
	tPirateEpicTask_Reward[1][3307444][3]["RewardItem"][1]["Attr"]="0 1"
	tPirateEpicTask_Reward[1][3307444][3]["LogId"] = 18000170
	tPirateEpicTask_Reward[1][3307444][3]["LogStep"] = "1[3]"
	tPirateEpicTask_Reward[1][3307444][4]={}
	tPirateEpicTask_Reward[1][3307444][4]["RandomItemChanceType"]=2
	tPirateEpicTask_Reward[1][3307444][4]["ItemChance"]=0
	tPirateEpicTask_Reward[1][3307444][4]["RewardItem"]={}
	tPirateEpicTask_Reward[1][3307444][4]["RewardItem"][1]={}
	tPirateEpicTask_Reward[1][3307444][4]["RewardItem"][1]["Id"]=3307447
	tPirateEpicTask_Reward[1][3307444][4]["RewardItem"][1]["Attr"]="0 1"
	tPirateEpicTask_Reward[1][3307444][4]["LogId"] = 18000170
	tPirateEpicTask_Reward[1][3307444][4]["LogStep"] = "1[3]"
	tPirateEpicTask_Reward[1][3307444][5]={}
	tPirateEpicTask_Reward[1][3307444][5]["RandomItemChanceType"]=2
	tPirateEpicTask_Reward[1][3307444][5]["ItemChance"]=7500
	tPirateEpicTask_Reward[1][3307444][5]["RewardItem"]={}
	tPirateEpicTask_Reward[1][3307444][5]["RewardItem"][1]={}
	tPirateEpicTask_Reward[1][3307444][5]["RewardItem"][1]["Id"]=3307450
	tPirateEpicTask_Reward[1][3307444][5]["RewardItem"][1]["Attr"]="0 1"
	tPirateEpicTask_Reward[1][3307444][5]["LogId"] = 18000170
	tPirateEpicTask_Reward[1][3307444][5]["LogStep"] = "1[3]"
	
	--3星
	tPirateEpicTask_Reward[1][3307445] = {}
	tPirateEpicTask_Reward[1][3307445]["ItemChanceSum"]=10000
	tPirateEpicTask_Reward[1][3307445]["DeleteItem"] = {}
	tPirateEpicTask_Reward[1][3307445]["DeleteItem"][1] = {}
	tPirateEpicTask_Reward[1][3307445]["DeleteItem"][1]["Id"] = 3307445
	tPirateEpicTask_Reward[1][3307445][1]={}
	tPirateEpicTask_Reward[1][3307445][1]["RandomItemChanceType"]=2
	tPirateEpicTask_Reward[1][3307445][1]["ItemChance"]=1000
	tPirateEpicTask_Reward[1][3307445][1]["RewardItem"]={}
	tPirateEpicTask_Reward[1][3307445][1]["RewardItem"][1]={}
	tPirateEpicTask_Reward[1][3307445][1]["RewardItem"][1]["Id"]=3307445
	tPirateEpicTask_Reward[1][3307445][1]["RewardItem"][1]["Attr"]="0 1"
	tPirateEpicTask_Reward[1][3307445][1]["LogId"] = 18000170
	tPirateEpicTask_Reward[1][3307445][1]["LogStep"] = "1[4]"
	tPirateEpicTask_Reward[1][3307445][2]={}
	tPirateEpicTask_Reward[1][3307445][2]["RandomItemChanceType"]=2
	tPirateEpicTask_Reward[1][3307445][2]["ItemChance"]=1000
	tPirateEpicTask_Reward[1][3307445][2]["RewardItem"]={}
	tPirateEpicTask_Reward[1][3307445][2]["RewardItem"][1]={}
	tPirateEpicTask_Reward[1][3307445][2]["RewardItem"][1]["Id"]=3307446
	tPirateEpicTask_Reward[1][3307445][2]["RewardItem"][1]["Attr"]="0 1"
	tPirateEpicTask_Reward[1][3307445][2]["LogId"] = 18000170
	tPirateEpicTask_Reward[1][3307445][2]["LogStep"] = "1[4]"
	tPirateEpicTask_Reward[1][3307445][3]={}
	tPirateEpicTask_Reward[1][3307445][3]["RandomItemChanceType"]=2
	tPirateEpicTask_Reward[1][3307445][3]["ItemChance"]=0
	tPirateEpicTask_Reward[1][3307445][3]["RewardItem"]={}
	tPirateEpicTask_Reward[1][3307445][3]["RewardItem"][1]={}
	tPirateEpicTask_Reward[1][3307445][3]["RewardItem"][1]["Id"]=3307447
	tPirateEpicTask_Reward[1][3307445][3]["RewardItem"][1]["Attr"]="0 1"
	tPirateEpicTask_Reward[1][3307445][3]["LogId"] = 18000170
	tPirateEpicTask_Reward[1][3307445][3]["LogStep"] = "1[4]"
	tPirateEpicTask_Reward[1][3307445][4]={}
	tPirateEpicTask_Reward[1][3307445][4]["RandomItemChanceType"]=2
	tPirateEpicTask_Reward[1][3307445][4]["ItemChance"]=8000
	tPirateEpicTask_Reward[1][3307445][4]["RewardItem"]={}
	tPirateEpicTask_Reward[1][3307445][4]["RewardItem"][1]={}
	tPirateEpicTask_Reward[1][3307445][4]["RewardItem"][1]["Id"]=3307450
	tPirateEpicTask_Reward[1][3307445][4]["RewardItem"][1]["Attr"]="0 2"
	tPirateEpicTask_Reward[1][3307445][4]["LogId"] = 18000170
	tPirateEpicTask_Reward[1][3307445][4]["LogStep"] = "1[4]"
	
	--4星
	tPirateEpicTask_Reward[1][3307446] = {}
	tPirateEpicTask_Reward[1][3307446]["ItemChanceSum"]=10000
	tPirateEpicTask_Reward[1][3307446]["DeleteItem"] = {}
	tPirateEpicTask_Reward[1][3307446]["DeleteItem"][1] = {}
	tPirateEpicTask_Reward[1][3307446]["DeleteItem"][1]["Id"] = 3307446
	tPirateEpicTask_Reward[1][3307446][1]={}
	tPirateEpicTask_Reward[1][3307446][1]["RandomItemChanceType"]=2
	tPirateEpicTask_Reward[1][3307446][1]["ItemChance"]=1000
	tPirateEpicTask_Reward[1][3307446][1]["RewardItem"]={}
	tPirateEpicTask_Reward[1][3307446][1]["RewardItem"][1]={}
	tPirateEpicTask_Reward[1][3307446][1]["RewardItem"][1]["Id"]=3307446
	tPirateEpicTask_Reward[1][3307446][1]["RewardItem"][1]["Attr"]="0 1"
	tPirateEpicTask_Reward[1][3307446][1]["LogId"] = 18000170
	tPirateEpicTask_Reward[1][3307446][1]["LogStep"] = "1[5]"
	tPirateEpicTask_Reward[1][3307446][2]={}
	tPirateEpicTask_Reward[1][3307446][2]["RandomItemChanceType"]=2
	tPirateEpicTask_Reward[1][3307446][2]["ItemChance"]=400
	tPirateEpicTask_Reward[1][3307446][2]["RewardItem"]={}
	tPirateEpicTask_Reward[1][3307446][2]["RewardItem"][1]={}
	tPirateEpicTask_Reward[1][3307446][2]["RewardItem"][1]["Id"]=3307447
	tPirateEpicTask_Reward[1][3307446][2]["RewardItem"][1]["Attr"]="0 1"
	tPirateEpicTask_Reward[1][3307446][2]["LogId"] = 18000170
	tPirateEpicTask_Reward[1][3307446][2]["LogStep"] = "1[5]"
	tPirateEpicTask_Reward[1][3307446][3]={}
	tPirateEpicTask_Reward[1][3307446][3]["RandomItemChanceType"]=2
	tPirateEpicTask_Reward[1][3307446][3]["ItemChance"]=8600
	tPirateEpicTask_Reward[1][3307446][3]["RewardItem"]={}
	tPirateEpicTask_Reward[1][3307446][3]["RewardItem"][1]={}
	tPirateEpicTask_Reward[1][3307446][3]["RewardItem"][1]["Id"]=3307450
	tPirateEpicTask_Reward[1][3307446][3]["RewardItem"][1]["Attr"]="0 3"
	tPirateEpicTask_Reward[1][3307446][3]["LogId"] = 18000170
	tPirateEpicTask_Reward[1][3307446][3]["LogStep"] = "1[5]"
	
	--5星藏宝图
	tPirateEpicTask_Reward[3307447] = {}
	tPirateEpicTask_Reward[3307447]["LogId"] = 18000170
	tPirateEpicTask_Reward[3307447]["LogStep"] = "1[6]"
	
	tPirateEpicTask_Reward[3307447]["DeleteItem"]={}
	tPirateEpicTask_Reward[3307447]["DeleteItem"][1]={}
	tPirateEpicTask_Reward[3307447]["DeleteItem"][1]["Id"]=3307447
	
	tPirateEpicTask_Reward[3307447]["RewardItem"] = {}
	tPirateEpicTask_Reward[3307447]["RewardItem"][1] = {}
	tPirateEpicTask_Reward[3307447]["RewardItem"][1]["Id"] = 3307449
	tPirateEpicTask_Reward[3307447]["RewardItem"][1]["Attr"] = "0 1"
	
	tPirateEpicTask_Reward[3307447]["RewardEffect"] = {}
	tPirateEpicTask_Reward[3307447]["RewardEffect"]["SzObj"] = "self"
	tPirateEpicTask_Reward[3307447]["RewardEffect"]["Effect"] = tPirateEpicTask_Cont["Effect"]["FindTreasure"]
	
------使用藏宝图2
	tPirateEpicTask_Reward[2] = {}
	--1星
	tPirateEpicTask_Reward[2][3307443] = tPirateEpicTask_Reward[1][3307443]
	--2星
	tPirateEpicTask_Reward[2][3307444] = {}
	tPirateEpicTask_Reward[2][3307444]["ItemChanceSum"]=10000
	tPirateEpicTask_Reward[2][3307444]["DeleteItem"] = {}
	tPirateEpicTask_Reward[2][3307444]["DeleteItem"][1] = {}
	tPirateEpicTask_Reward[2][3307444]["DeleteItem"][1]["Id"] = 3307444
	tPirateEpicTask_Reward[2][3307444][1]={}
	tPirateEpicTask_Reward[2][3307444][1]["RandomItemChanceType"]=2
	tPirateEpicTask_Reward[2][3307444][1]["ItemChance"]=1050
	tPirateEpicTask_Reward[2][3307444][1]["RewardItem"]={}
	tPirateEpicTask_Reward[2][3307444][1]["RewardItem"][1]={}
	tPirateEpicTask_Reward[2][3307444][1]["RewardItem"][1]["Id"]=3307444
	tPirateEpicTask_Reward[2][3307444][1]["RewardItem"][1]["Attr"]="0 1"
	tPirateEpicTask_Reward[2][3307444][1]["LogId"] = 18000170
	tPirateEpicTask_Reward[2][3307444][1]["LogStep"] = "1[3]"
	tPirateEpicTask_Reward[2][3307444][2]={}
	tPirateEpicTask_Reward[2][3307444][2]["RandomItemChanceType"]=2
	tPirateEpicTask_Reward[2][3307444][2]["ItemChance"]=1400
	tPirateEpicTask_Reward[2][3307444][2]["RewardItem"]={}
	tPirateEpicTask_Reward[2][3307444][2]["RewardItem"][1]={}
	tPirateEpicTask_Reward[2][3307444][2]["RewardItem"][1]["Id"]=3307445
	tPirateEpicTask_Reward[2][3307444][2]["RewardItem"][1]["Attr"]="0 1"
	tPirateEpicTask_Reward[2][3307444][2]["LogId"] = 18000170
	tPirateEpicTask_Reward[2][3307444][2]["LogStep"] = "1[3]"
	tPirateEpicTask_Reward[2][3307444][3]={}
	tPirateEpicTask_Reward[2][3307444][3]["RandomItemChanceType"]=2
	tPirateEpicTask_Reward[2][3307444][3]["ItemChance"]=40
	tPirateEpicTask_Reward[2][3307444][3]["RewardItem"]={}
	tPirateEpicTask_Reward[2][3307444][3]["RewardItem"][1]={}
	tPirateEpicTask_Reward[2][3307444][3]["RewardItem"][1]["Id"]=3307446
	tPirateEpicTask_Reward[2][3307444][3]["RewardItem"][1]["Attr"]="0 1"
	tPirateEpicTask_Reward[2][3307444][3]["LogId"] = 18000170
	tPirateEpicTask_Reward[2][3307444][3]["LogStep"] = "1[3]"
	tPirateEpicTask_Reward[2][3307444][4]={}
	tPirateEpicTask_Reward[2][3307444][4]["RandomItemChanceType"]=2
	tPirateEpicTask_Reward[2][3307444][4]["ItemChance"]=10
	tPirateEpicTask_Reward[2][3307444][4]["RewardItem"]={}
	tPirateEpicTask_Reward[2][3307444][4]["RewardItem"][1]={}
	tPirateEpicTask_Reward[2][3307444][4]["RewardItem"][1]["Id"]=3307447
	tPirateEpicTask_Reward[2][3307444][4]["RewardItem"][1]["Attr"]="0 1"
	tPirateEpicTask_Reward[2][3307444][4]["LogId"] = 18000170
	tPirateEpicTask_Reward[2][3307444][4]["LogStep"] = "1[3]"
	tPirateEpicTask_Reward[2][3307444][5]={}
	tPirateEpicTask_Reward[2][3307444][5]["RandomItemChanceType"]=2
	tPirateEpicTask_Reward[2][3307444][5]["ItemChance"]=7500
	tPirateEpicTask_Reward[2][3307444][5]["RewardItem"]={}
	tPirateEpicTask_Reward[2][3307444][5]["RewardItem"][1]={}
	tPirateEpicTask_Reward[2][3307444][5]["RewardItem"][1]["Id"]=3307450
	tPirateEpicTask_Reward[2][3307444][5]["RewardItem"][1]["Attr"]="0 1"
	tPirateEpicTask_Reward[2][3307444][5]["LogId"] = 18000170
	tPirateEpicTask_Reward[2][3307444][5]["LogStep"] = "1[3]"
	--3星
	tPirateEpicTask_Reward[2][3307445] = {}
	tPirateEpicTask_Reward[2][3307445]["ItemChanceSum"]=10000
	tPirateEpicTask_Reward[2][3307445]["DeleteItem"] = {}
	tPirateEpicTask_Reward[2][3307445]["DeleteItem"][1] = {}
	tPirateEpicTask_Reward[2][3307445]["DeleteItem"][1]["Id"] = 3307445
	tPirateEpicTask_Reward[2][3307445][1]={}
	tPirateEpicTask_Reward[2][3307445][1]["RandomItemChanceType"]=2
	tPirateEpicTask_Reward[2][3307445][1]["ItemChance"]=950
	tPirateEpicTask_Reward[2][3307445][1]["RewardItem"]={}
	tPirateEpicTask_Reward[2][3307445][1]["RewardItem"][1]={}
	tPirateEpicTask_Reward[2][3307445][1]["RewardItem"][1]["Id"]=3307445
	tPirateEpicTask_Reward[2][3307445][1]["RewardItem"][1]["Attr"]="0 1"
	tPirateEpicTask_Reward[2][3307445][1]["LogId"] = 18000170
	tPirateEpicTask_Reward[2][3307445][1]["LogStep"] = "1[4]"
	tPirateEpicTask_Reward[2][3307445][2]={}
	tPirateEpicTask_Reward[2][3307445][2]["RandomItemChanceType"]=2
	tPirateEpicTask_Reward[2][3307445][2]["ItemChance"]=1000
	tPirateEpicTask_Reward[2][3307445][2]["RewardItem"]={}
	tPirateEpicTask_Reward[2][3307445][2]["RewardItem"][1]={}
	tPirateEpicTask_Reward[2][3307445][2]["RewardItem"][1]["Id"]=3307446
	tPirateEpicTask_Reward[2][3307445][2]["RewardItem"][1]["Attr"]="0 1"
	tPirateEpicTask_Reward[2][3307445][2]["LogId"] = 18000170
	tPirateEpicTask_Reward[2][3307445][2]["LogStep"] = "1[4]"
	tPirateEpicTask_Reward[2][3307445][3]={}
	tPirateEpicTask_Reward[2][3307445][3]["RandomItemChanceType"]=2
	tPirateEpicTask_Reward[2][3307445][3]["ItemChance"]=50
	tPirateEpicTask_Reward[2][3307445][3]["RewardItem"]={}
	tPirateEpicTask_Reward[2][3307445][3]["RewardItem"][1]={}
	tPirateEpicTask_Reward[2][3307445][3]["RewardItem"][1]["Id"]=3307447
	tPirateEpicTask_Reward[2][3307445][3]["RewardItem"][1]["Attr"]="0 1"
	tPirateEpicTask_Reward[2][3307445][3]["LogId"] = 18000170
	tPirateEpicTask_Reward[2][3307445][3]["LogStep"] = "1[4]"
	tPirateEpicTask_Reward[2][3307445][4]={}
	tPirateEpicTask_Reward[2][3307445][4]["RandomItemChanceType"]=2
	tPirateEpicTask_Reward[2][3307445][4]["ItemChance"]=8000
	tPirateEpicTask_Reward[2][3307445][4]["RewardItem"]={}
	tPirateEpicTask_Reward[2][3307445][4]["RewardItem"][1]={}
	tPirateEpicTask_Reward[2][3307445][4]["RewardItem"][1]["Id"]=3307450
	tPirateEpicTask_Reward[2][3307445][4]["RewardItem"][1]["Attr"]="0 2"
	tPirateEpicTask_Reward[2][3307445][4]["LogId"] = 18000170
	tPirateEpicTask_Reward[2][3307445][4]["LogStep"] = "1[4]"
	--4星
	tPirateEpicTask_Reward[2][3307446] = {}
	tPirateEpicTask_Reward[2][3307446]["ItemChanceSum"]=10000
	tPirateEpicTask_Reward[2][3307446]["DeleteItem"] = {}
	tPirateEpicTask_Reward[2][3307446]["DeleteItem"][1] = {}
	tPirateEpicTask_Reward[2][3307446]["DeleteItem"][1]["Id"] = 3307446
	tPirateEpicTask_Reward[2][3307446][1]={}
	tPirateEpicTask_Reward[2][3307446][1]["RandomItemChanceType"]=2
	tPirateEpicTask_Reward[2][3307446][1]["ItemChance"]=1000
	tPirateEpicTask_Reward[2][3307446][1]["RewardItem"]={}
	tPirateEpicTask_Reward[2][3307446][1]["RewardItem"][1]={}
	tPirateEpicTask_Reward[2][3307446][1]["RewardItem"][1]["Id"]=3307446
	tPirateEpicTask_Reward[2][3307446][1]["RewardItem"][1]["Attr"]="0 1"
	tPirateEpicTask_Reward[2][3307446][1]["LogId"] = 18000170
	tPirateEpicTask_Reward[2][3307446][1]["LogStep"] = "1[5]"
	tPirateEpicTask_Reward[2][3307446][2]={}
	tPirateEpicTask_Reward[2][3307446][2]["RandomItemChanceType"]=2
	tPirateEpicTask_Reward[2][3307446][2]["ItemChance"]=1500
	tPirateEpicTask_Reward[2][3307446][2]["RewardItem"]={}
	tPirateEpicTask_Reward[2][3307446][2]["RewardItem"][1]={}
	tPirateEpicTask_Reward[2][3307446][2]["RewardItem"][1]["Id"]=3307447
	tPirateEpicTask_Reward[2][3307446][2]["RewardItem"][1]["Attr"]="0 1"
	tPirateEpicTask_Reward[2][3307446][2]["LogId"] = 18000170
	tPirateEpicTask_Reward[2][3307446][2]["LogStep"] = "1[5]"
	tPirateEpicTask_Reward[2][3307446][3]={}
	tPirateEpicTask_Reward[2][3307446][3]["RandomItemChanceType"]=2
	tPirateEpicTask_Reward[2][3307446][3]["ItemChance"]=7500
	tPirateEpicTask_Reward[2][3307446][3]["RewardItem"]={}
	tPirateEpicTask_Reward[2][3307446][3]["RewardItem"][1]={}
	tPirateEpicTask_Reward[2][3307446][3]["RewardItem"][1]["Id"]=3307450
	tPirateEpicTask_Reward[2][3307446][3]["RewardItem"][1]["Attr"]="0 3"
	tPirateEpicTask_Reward[2][3307446][3]["LogId"] = 18000170
	tPirateEpicTask_Reward[2][3307446][3]["LogStep"] = "1[5]"
	
------使用藏宝图3
	tPirateEpicTask_Reward[3] = {}
	--1星
	tPirateEpicTask_Reward[3][3307443] = tPirateEpicTask_Reward[1][3307443]
	--2星
	tPirateEpicTask_Reward[3][3307444] = tPirateEpicTask_Reward[2][3307444]

	--3星
	tPirateEpicTask_Reward[3][3307445] = tPirateEpicTask_Reward[2][3307445]

	--4星
	tPirateEpicTask_Reward[3][3307446] = {}
	tPirateEpicTask_Reward[3][3307446]["ItemChanceSum"]=10000
	tPirateEpicTask_Reward[3][3307446]["DeleteItem"] = {}
	tPirateEpicTask_Reward[3][3307446]["DeleteItem"][1] = {}
	tPirateEpicTask_Reward[3][3307446]["DeleteItem"][1]["Id"] = 3307446
	tPirateEpicTask_Reward[3][3307446][1]={}
	tPirateEpicTask_Reward[3][3307446][1]["RandomItemChanceType"]=2
	tPirateEpicTask_Reward[3][3307446][1]["ItemChance"]=400
	tPirateEpicTask_Reward[3][3307446][1]["RewardItem"]={}
	tPirateEpicTask_Reward[3][3307446][1]["RewardItem"][1]={}
	tPirateEpicTask_Reward[3][3307446][1]["RewardItem"][1]["Id"]=3307446
	tPirateEpicTask_Reward[3][3307446][1]["RewardItem"][1]["Attr"]="0 1"
	tPirateEpicTask_Reward[3][3307446][1]["LogId"] = 18000170
	tPirateEpicTask_Reward[3][3307446][1]["LogStep"] = "1[5]"
	tPirateEpicTask_Reward[3][3307446][2]={}
	tPirateEpicTask_Reward[3][3307446][2]["RandomItemChanceType"]=2
	tPirateEpicTask_Reward[3][3307446][2]["ItemChance"]=2600
	tPirateEpicTask_Reward[3][3307446][2]["RewardItem"]={}
	tPirateEpicTask_Reward[3][3307446][2]["RewardItem"][1]={}
	tPirateEpicTask_Reward[3][3307446][2]["RewardItem"][1]["Id"]=3307447
	tPirateEpicTask_Reward[3][3307446][2]["RewardItem"][1]["Attr"]="0 1"
	tPirateEpicTask_Reward[3][3307446][2]["LogId"] = 18000170
	tPirateEpicTask_Reward[3][3307446][2]["LogStep"] = "1[5]"
	tPirateEpicTask_Reward[3][3307446][3]={}
	tPirateEpicTask_Reward[3][3307446][3]["RandomItemChanceType"]=2
	tPirateEpicTask_Reward[3][3307446][3]["ItemChance"]=7000
	tPirateEpicTask_Reward[3][3307446][3]["RewardItem"]={}
	tPirateEpicTask_Reward[3][3307446][3]["RewardItem"][1]={}
	tPirateEpicTask_Reward[3][3307446][3]["RewardItem"][1]["Id"]=3307450
	tPirateEpicTask_Reward[3][3307446][3]["RewardItem"][1]["Attr"]="0 3"
	tPirateEpicTask_Reward[3][3307446][3]["LogId"] = 18000170
	tPirateEpicTask_Reward[3][3307446][3]["LogStep"] = "1[5]"


--连挖奖励记录
local tMultiDigReward = {}


----------------------------------（逻辑）---------------------------------------------
----------------------------------通用
--由一个索引数字得出下一个索引
--比如全部索引为{1,2,3}，传入2，则通过该函数将得到3；传入3，得到1
--nTotal为全部索引数量
function PirateEpicTask_NextIndex(nTotal,nIndex)
	local nNewIndex

	if nIndex >= nTotal then
		nNewIndex = 1
	else
		nNewIndex = nIndex + 1
	end
	
	return nNewIndex
end

--如果第一次来五大地图，显示宣传图
function PirateEpicTask_ShowAdvertisePic(nMapId)
	local nEvent = tPirateEpicTask_Stc["ShowAdvertisePic"]["Event"]
	local nType = tPirateEpicTask_Stc["ShowAdvertisePic"]["Type"]
	local nConNum = tPirateEpicTask_Map[nMapId]["StcValue"]
	local nPicId = tPirateEpicTask_Map[nMapId]["PicId"]
	if Task_ChkStatistic(nEvent,nType) then
		local nValue = Get_UserStatisticValue(nEvent,nType)
		if not Sys_ParseNumbersContain(nConNum,nValue) then
			Task_AddStatistic(nEvent,nType,nConNum,1)
			User_NoviceTeaching(nPicId)
		end
	else
		Task_AddStatistic(nEvent,nType,nConNum,1)
		User_NoviceTeaching(nPicId)
	end
end

--1-4星藏宝图检查走哪张奖励表
function PirateEpicTask_TreasureMap_ChkWhichReward()
	local nEvent = tPirateEpicTask_Stc["CostSum"]["Event"]
	local nType = tPirateEpicTask_Stc["CostSum"]["Type"]
	local j
	if Get_UserStatisticValue(nEvent,nType) >= tPirateEpicTask_Cont["RewardChange"][2] then
		j = 3
	elseif Get_UserStatisticValue(nEvent,nType) >= tPirateEpicTask_Cont["RewardChange"][1] then
		j = 2
	else
		j = 1
	end
	return j
end

---------------------------------四海盗帅对白选项(原sqlNPC，故对白、头像要自己配)
--点击学习史诗技能
function PirateEpicTask_NPCClick_LearnEpicSkill(nItemId)
	local nNpcId = 9391
	local nSkillName = tPirateEpicTask_Text[nItemId]["SkillName"]
	local nSkillType = tPirateEpicTask_Item[nItemId]["SkillType"]
	
	--检查等级
	local nNeedLv = tPirateEpicTask_Item[nItemId]["SkillLevel"]
	if Get_UserLevel() < nNeedLv then
		Sys_DialogText(string.format(tPirateEpicTask_Text[nNpcId]["LearnEpicSkill"]["LvNotEnough"],nNeedLv))
		Sys_DialogOption(tPirateEpicTask_Text[nNpcId]["LearnEpicSkill"]["IKnow"])
		Sys_DialogFace(nNpcId)
		Sys_DialogEnd()
		return
	end
	
	--检查是否学过
	 if Magic_ChkType(nSkillType) then
		Sys_DialogText(string.format(tPirateEpicTask_Text[nNpcId]["LearnEpicSkill"]["EverLearned"],nSkillName))
		Sys_DialogOption(tPirateEpicTask_Text[nNpcId]["LearnEpicSkill"]["IKnow"])
		Sys_DialogFace(nNpcId)
		Sys_DialogEnd()
		return
	end
	
	--判断特转或转世之前，是否已经学过了。如果已经学过了，则让他直接学  -modify by pyf
	local nEpicEvent = tPirateEpicTask_Stc["EpicSkill"][nItemId]["Event"]
	local nEpicType = tPirateEpicTask_Stc["EpicSkill"][nItemId]["Type"]
	if not Task_ChkStcValue(nEpicEvent,nEpicType,">=",1) then
	--检查是否有技能书
	if not Item_ChkItem(nItemId) then
		Sys_DialogText(string.format(tPirateEpicTask_Text[nNpcId]["LearnEpicSkill"]["NoBook"],nSkillName))
		Sys_DialogOption(tPirateEpicTask_Text[nNpcId]["LearnEpicSkill"]["IKnow"])
		Sys_DialogFace(nNpcId)
		Sys_DialogEnd()
		return
		end
	end
	
	--学技能
	if PirateEpicMission_GetSkills(nItemId) then
		Sys_MsgBox(string.format(tPirateEpicTask_Text[nNpcId]["LearnEpicSkill"]["SuccTip"],nSkillName))
	end
	
end

--点击去找杰克斯派洛
function PirateEpicTask_NPCClick_GoFindJack()
	local sFunc = "NpcPosition_PathFind</N>21427"
	Sys_MsgBox(tPirateEpicTask_Text[9391]["GoFindJack"]["Tip"],sFunc,nil)
end


---------------------------------杰克斯派洛对白选项
--点击"兑换漂流瓶"(一天只能换一次)
function PirateEpicTask_NPCClick_ExchangeBottle()
	local nNpcId = 21427
	--检查恶之花
	local nNeedItem1 = tPirateEpicTask_Reward["ExchangeBottle"]["DeleteItem"][1]["Id"]
	local nNeedItem2 = tPirateEpicTask_Reward["ExchangeBottle"]["DeleteItem"][2]["Id"]
	if not (Item_ChkMulItem(nNeedItem1,nNeedItem1,3) and Item_ChkMulItem(nNeedItem2,nNeedItem2,3)) then
		Sys_DialogText(tPirateEpicTask_Text[nNpcId]["ExchangeBottle"]["NoNeedItem"])
		Sys_DialogOption(tPirateEpicTask_Text[nNpcId]["ExchangeBottle"]["GoPreparing"],"</F>LinkNpcGossipFunc_New</N>" .. nNpcId .. "</S>1-1")
		--Sys_DialogOption(tPirateEpicTask_Text[21427]["ExchangeBottle"]["NoNeedItemOp2"],"</F>PirateEpicTask_NPCClick_ExchangeBottle_UseEMoneySecConf")  --天石抵扣恶之花
		Sys_DialogFace(nNpcId)
		Sys_DialogEnd()
		return
	end

	--检查背包
	if not RewardTemplate_CheckSpace(tPirateEpicTask_Reward["ExchangeBottle"]) then
		Sys_DialogText(tPirateEpicTask_Text[nNpcId]["ExchangeBottle"]["NoSpace"])
		Sys_DialogOption(tPirateEpicTask_Text[nNpcId]["ExchangeBottle"]["GoClearing"])
		Sys_DialogFace(nNpcId)
		Sys_DialogEnd()
		return
	end
	
	if not RewardTemplate_UseItem(tPirateEpicTask_Reward["ExchangeBottle"]) then
		Sys_MsgBox(tPirateEpicTask_Text[nNpcId]["ExchangeBottle"]["Failed"])
		return
	end
	
	local nItemId = Get_ItemLastAdd()
	local nItemTypeId = Get_ItemType(nItemId)
	local sText = tPirateEpicTask_Text[nNpcId]["ExchangeBottle"]["ImmediaUse"]
	Item_Dialog(nItemId,sText,"</F>PirateEpicTask_ItemUseInItemDialog_Bottle</N>" .. nItemTypeId,"NULL")
end

--兑换漂流瓶采用天石抵扣二次确认对白
function PirateEpicTask_NPCClick_ExchangeBottle_UseEMoneySecConf()
	local nNpcId = 21427
	Sys_DialogText(tPirateEpicTask_Text[nNpcId]["ExchangeBottle"]["IfUseEMoney"])
	Sys_DialogOption(tPirateEpicTask_Text[nNpcId]["ExchangeBottle"]["UseEMoney"],"</F>PirateEpicTask_NPCClick_ExchangeBottle_UseEMoneyConf")
	Sys_DialogOption(tPirateEpicTask_Text[nNpcId]["ExchangeBottle"]["NotNow"])
	Sys_DialogFace(nNpcId)
	Sys_DialogEnd()
end

--兑换漂流瓶确认抵扣
function PirateEpicTask_NPCClick_ExchangeBottle_UseEMoneyConf()
	local nNpcId = 21427
	local nUserId = Get_UserId()
	
	--检查天石
	local nEMoney = Get_UserEMoney(nUserId)
	local nNeedMoney = 0
	nNeedMoney = -tPirateEpicTask_Reward["ExchangeBottle2"]["RewardEMoney"]["Value"]
	if nEMoney - nNeedMoney < 0 then
		Sys_DialogText(tPirateEpicTask_Text[21427]["ExchangeBottle"]["NoEMoney"])
		Sys_DialogOption(tPirateEpicTask_Text[21427]["ExchangeBottle"]["IKnow"])
		Sys_DialogFace(nNpcId)
		Sys_DialogEnd()
		return
	end

	--检查背包
	if not RewardTemplate_CheckSpace(tPirateEpicTask_Reward["ExchangeBottle2"]) then
		Sys_DialogText(tPirateEpicTask_Text[nNpcId]["ExchangeBottle"]["NoSpace"])
		Sys_DialogOption(tPirateEpicTask_Text[nNpcId]["ExchangeBottle"]["GoClearing"])
		Sys_DialogFace(nNpcId)
		Sys_DialogEnd()
		return
	end

	if not RewardTemplate_UseItem(tPirateEpicTask_Reward["ExchangeBottle2"]) then
		Sys_MsgBox(tPirateEpicTask_Text[nNpcId]["ExchangeBottle"]["Failed"])
		return
	end
	
	--抵扣成功记录消费金额
	local nEvent = tPirateEpicTask_Stc["CostSum"]["Event"]
	local nType = tPirateEpicTask_Stc["CostSum"]["Type"]
	Task_AddStatistic(nEvent,nType,nNeedMoney,1)
	
	User_TalkChannel2005(tPirateEpicTask_Text[nNpcId]["ExchangeBottle"]["UseEMoneySucc"],nUserId)
	
	local nItemId = Get_ItemLastAdd()
	local nItemTypeId = Get_ItemType(nItemId)
	local sText = tPirateEpicTask_Text[nNpcId]["ExchangeBottle"]["ImmediaUse"]
	Item_Dialog(nItemId,sText,"</F>PirateEpicTask_ItemUseInItemDialog_Bottle</N>" .. nItemTypeId,"NULL")
end

--道具小界面使用漂流瓶
function PirateEpicTask_ItemUseInItemDialog_Bottle(nItemTypeId)
	if not PirateEpicTask_ItemUse_Bottle_ChkCond(nItemTypeId) then
		return
	end
	
	local tReward = RewardTemplate_NewRandom(tPirateEpicTask_Reward,nItemTypeId)

	--获取漂流瓶开出的地图后再直接使用
	local nMapItemType = tReward[1]["tAward"][1]["RewardItem"][1]["Id"]
	PirateEpicTask_ItemUse_TreasureMap(nMapItemType)
end

--点击"买藏宝图"
function PirateEpicTask_NPCClick_BuyMaps(sNum)  --sNum表示买几张（1 or 10）
	local nNpcId = 21427
	--检查天石
	if not PirateEpicTask_NPCClick_BuyMaps_ChkEMoney(sNum) then
		return
	end
	
	--检查背包
	if not PirateEpicTask_NPCClick_BuyMaps_ChkSpace(sNum) then
		return
	end
	
	--检查是否屏蔽了二次确认
	local nEvent = tPirateEpicTask_Stc["RemoveSecConf"]["Event"]
	local nType = tPirateEpicTask_Stc["RemoveSecConf"]["Type"]
	if Task_StcInterval(nEvent,nType,1,4) then  --隔天重置
		Task_SetStatistic(nEvent,nType,0,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	end
	if Get_UserStatisticValue(nEvent,nType) == 0 then
		--二次确认对白
		PirateEpicTask_NPCClick_BuyMaps_SecondConfirm(sNum)
	else
		--直接买
		PirateEpicTask_NPCClick_BuyMaps_Confirm(sNum)
	end
end

--买藏宝图二次确认对白
function PirateEpicTask_NPCClick_BuyMaps_SecondConfirm(sNum)
	local nNpcId = 21427
	Sys_DialogText(tPirateEpicTask_Text[nNpcId][sNum]["SecondConfirm"])
	Sys_DialogOption(tPirateEpicTask_Text[nNpcId][sNum]["Confirm"],"</F>PirateEpicTask_NPCClick_BuyMaps_Confirm</S>" .. sNum)
	Sys_DialogOption(tPirateEpicTask_Text[nNpcId][sNum]["RemoveSecConf"],"</F>PirateEpicTask_NPCClick_BuyMaps_RemoveSecConf")
	Sys_DialogOption(tPirateEpicTask_Text[nNpcId][sNum]["NoConfirm"])
	Sys_DialogFace(nNpcId)
	Sys_DialogEnd()
end

--买藏宝图屏蔽二次确认
function PirateEpicTask_NPCClick_BuyMaps_RemoveSecConf()
	local nEvent = tPirateEpicTask_Stc["RemoveSecConf"]["Event"]
	local nType = tPirateEpicTask_Stc["RemoveSecConf"]["Type"]
	
	Task_SetStatistic(nEvent,nType,1,1)
	Task_SetStcTimestamp(nEvent,nType,0)
	
	LinkNpcGossipFunc_New(21427,"3-1")
end

--买藏宝图检查天石
function PirateEpicTask_NPCClick_BuyMaps_ChkEMoney(sNum)
	local nNpcId = 21427
	local nUserId = Get_UserId()
	local nEMoney = Get_UserEMoney(nUserId)
	local nNeedMoney = 0
	nNeedMoney = -tPirateEpicTask_Reward[sNum]["RewardEMoney"]["Value"]
	if nEMoney - nNeedMoney < 0 then
		Sys_DialogText(tPirateEpicTask_Text[nNpcId][sNum]["NoEMoney"])
		Sys_DialogOption(tPirateEpicTask_Text[nNpcId]["ExchangeBottle"]["GoPreparing"])
		Sys_DialogFace(nNpcId)
		Sys_DialogEnd()
		
		return
	end
	
	return true
end

--买藏宝图检查背包
function PirateEpicTask_NPCClick_BuyMaps_ChkSpace(sNum)
	local nNpcId = 21427
	if not RewardTemplate_CheckSpace(tPirateEpicTask_Reward[sNum]) then
		Sys_DialogText(tPirateEpicTask_Text[nNpcId][sNum]["NoSpace"])
		Sys_DialogOption(tPirateEpicTask_Text[nNpcId]["ExchangeBottle"]["GoClearing"])
		Sys_DialogFace(nNpcId)
		Sys_DialogEnd()
		return
	end
	
	return true
end

--买藏宝图点二次确认
function PirateEpicTask_NPCClick_BuyMaps_Confirm(sNum)
	local nNpcId = 21427
	--检查天石
	if not PirateEpicTask_NPCClick_BuyMaps_ChkEMoney(sNum) then
		return
	end

	--检查背包
	if not PirateEpicTask_NPCClick_BuyMaps_ChkSpace(sNum) then
		return
	end
	
	if RewardTemplate_UseItem(tPirateEpicTask_Reward[sNum]) then
		--购买成功记录消费金额
		local nNeedMoney = -tPirateEpicTask_Reward[sNum]["RewardEMoney"]["Value"]
		local nEvent = tPirateEpicTask_Stc["CostSum"]["Event"]
		local nType = tPirateEpicTask_Stc["CostSum"]["Type"]
		Task_AddStatistic(nEvent,nType,nNeedMoney,1)
		
		Sys_DialogText(tPirateEpicTask_Text[nNpcId][sNum]["GoHuntingTreasure"])
		Sys_DialogOption(tPirateEpicTask_Text[nNpcId][sNum]["GoNow"],"</F>PirateEpicTask_NPCClick_BuyMaps_Confirm_GoXunBao")
		Sys_DialogOption(tPirateEpicTask_Text[nNpcId][sNum]["BuyAgain"],"</F>PirateEpicTask_NPCClick_BuyMaps</S>" .. sNum)
		Sys_DialogFace(nNpcId)
		Sys_DialogEnd()
	end
end

--买藏宝图二次确认完出发寻宝
function PirateEpicTask_NPCClick_BuyMaps_Confirm_GoXunBao()
	local nMapIdTakeEffect = tPirateEpicTask_Item[3307443]["MapTakeEffect"]
	
	local nFlat,tProb = Probabil_RandomAward(tPirateEpicTask_Prob,3307443)
	local nRandomDigIndex = tProb[1]["tAward"][1]["nIndex"]
	
	local nPXTakeEffect = tPirateEpicTask_Item[3307443]["MarkPoint"][nRandomDigIndex][1]
	local nPYTakeEffect = tPirateEpicTask_Item[3307443]["MarkPoint"][nRandomDigIndex][2]
	
	User_UserRandBoundTrans(nMapIdTakeEffect,nPXTakeEffect,nPYTakeEffect,1,1,1)  --先飞过去
	
	--如果第一次来，显示宣传图
	PirateEpicTask_ShowAdvertisePic(nMapIdTakeEffect)
	
	PirateEpicTask_ItemUse_TreasureMap(3307443)  --接到藏宝图主函数
end


---------------------------------路飞对白选项
--点击寻宝(1/5/10次)（不适用于五星藏宝图）
function PirateEpicTask_NPCClick_DirectXunBao(nItemId,nTimes)
	local nUserId = Get_UserId()
	
	local nCaller = 2  --调用者标记，区分提示
	local tGetReward = PirateEpicTask_ItemUse_TreasureMap_Dig_ExploreFunc_GetAward(nItemId,nTimes,nCaller,nUserId)
	
	if not tGetReward then  --说明不符合条件
		return
	end

	if nTimes > 1 then
		Sys_DialogText(tPirateEpicTask_Text[21449]["DirectXunBao"]["Line1"])
		Sys_DialogText(tPirateEpicTask_Text[21449]["DirectXunBao"]["Line2"])
		for i = 1 ,nTimes do
			local nRewardId
			local sRewardName
			local nNum
			if tGetReward[i][1]["tAward"][1]["RewardItem"] ~= nil then
				nRewardId = tGetReward[i][1]["tAward"][1]["RewardItem"][1]["Id"]
				sRewardName = Get_ItemtypeName(nRewardId)
				nNum = tonumber(string.sub(tGetReward[i][1]["tAward"][1]["RewardItem"][1]["Attr"],3,3))
			elseif tGetReward[i][1]["tAward"][1]["RewardStrengthValue"] ~= nil then
				sRewardName = tPirateEpicTask_Text["StrengthValue"]
				nNum = tGetReward[i][1]["tAward"][1]["RewardStrengthValue"]["Value"]
			end
			
			if nNum > 1 then
				Sys_DialogText(string.format(tPirateEpicTask_Text["UseTreasureMap"]["ExploreFunc"]["MiddleLine"],i,sRewardName,"*",nNum))
			else
				Sys_DialogText(string.format(tPirateEpicTask_Text["UseTreasureMap"]["ExploreFunc"]["MiddleLine"],i,sRewardName," "," "))
			end
		end
		Sys_DialogText(tPirateEpicTask_Text["UseTreasureMap"]["ExploreFunc"]["LineEnd"])
		if nItemId == 3307443 then
			Sys_DialogOption(tPirateEpicTask_Text["UseTreasureMap"]["ExploreFunc"]["Option1"],"</F>PirateEpicTask_NPCClick_DirectXunBao_MultiContinue</N>" .. nItemId .. "</N>" .. nTimes)
		else
			Sys_DialogOption(tPirateEpicTask_Text["UseTreasureMap"]["ExploreFunc"]["Option2"],"</F>PirateEpicTask_NPCClick_DirectXunBao_MultiContinue</N>" .. nItemId .. "</N>" .. nTimes)
		end
		
		Sys_DialogFace(21449)
		Sys_DialogEnd()
	elseif nTimes == 1 then
		local nRewardId
		local sRewardName
		local nNum
		if tGetReward[1][1]["tAward"][1]["RewardItem"] ~= nil then
			nRewardId = tGetReward[1][1]["tAward"][1]["RewardItem"][1]["Id"]
			sRewardName = Get_ItemtypeName(nRewardId)
			nNum = tonumber(string.sub(tGetReward[1][1]["tAward"][1]["RewardItem"][1]["Attr"],3,3))
		elseif tGetReward[1][1]["tAward"][1]["RewardStrengthValue"] ~= nil then
			sRewardName = tPirateEpicTask_Text["StrengthValue"]
			nNum = tGetReward[1][1]["tAward"][1]["RewardStrengthValue"]["Value"]
		end
		
		if nNum > 1 then
			tNpcGossip[21449]["Text713"] = string.format(tPirateEpicTask_Text[21449]["Text713"],sRewardName,"*",nNum)
		else
			tNpcGossip[21449]["Text713"] = string.format(tPirateEpicTask_Text[21449]["Text713"],sRewardName," "," ")
		end

		tNpcGossip[21449]["OptionFunc711"] = "PirateEpicTask_NPCClick_DirectXunBao</N>" .. nItemId .. "</N>1"
		
		LinkNpcGossipFunc_New(21449,"7-1")
	end
	
	User_EffectAdd("self",tPirateEpicTask_Cont["Effect"]["FindTreasure"],nUserId)
end

--寻宝多次后点继续寻宝
function PirateEpicTask_NPCClick_DirectXunBao_MultiContinue(nItemId,nTimes)
	local nUserId = Get_UserId()
	local sItemName = Get_ItemtypeName(nItemId)
	if Item_ChkMulItem(nItemId,nItemId,nTimes,1,0,nUserId) then
		PirateEpicTask_NPCClick_DirectXunBao(nItemId,nTimes)
	else
		local sFunc = "LinkNpcGossipFunc_New</N>21449</S>1-1"
		Sys_MsgBox(string.format(tPirateEpicTask_Text[21449]["DirectXunBao"]["NoEnoughTreasureMapTip"],nTimes),sFunc,nil,nUserId)
	end
end

--点击寻宝（仅适用于五星藏宝图）
function PirateEpicTask_NPCClick_DirectXunBao2(nItemId)
	local nUserId = Get_UserId()

	--针对五星藏宝图挖掘的检查
	if not PirateEpicTask_ItemUse_TreasureMap_Dig_FiveStarChk(nItemId,nUserId) then
		return
	end

	if RewardTemplate_UseItem(tPirateEpicTask_Reward[nItemId],nUserId) then
		--挖完
		Sys_SystemBroadcast(string.format(tPirateEpicTask_Text["UseTreasureMap"]["ClickGoDig"]["GetEpicItemBroad"],Get_UserName(nUserId)))
		
		LinkNpcGossipFunc_New(21449,"6-1")
	end
end


---------------------------------物品使用
---------------漂流瓶
--漂流瓶主函数，只能用于点击使用漂流瓶
function PirateEpicTask_ItemUse_Bottle(nItemId,sItemName)
	if not PirateEpicTask_ItemUse_Bottle_ChkCond(nItemId) then
		return
	end
	
	RewardTemplate_NewRandom(tPirateEpicTask_Reward,nItemId)
end

--使用漂流瓶的检查
function PirateEpicTask_ItemUse_Bottle_ChkCond(nItemId)
	local bMark,nSpace = RewardTemplate_ChkRandomSpace(tPirateEpicTask_Reward,nItemId)
	
	if not bMark then
		Sys_MsgBox(tPirateEpicTask_Text[nItemId]["NoSpace"],nil,nil)
		return
	end
	
	if not (Item_ChkItem(nItemId,1,0) and Item_DelItem(nItemId,1,0)) then
		return
	end

	return true
end

---------------不老泉
function PirateEpicTask_ItemUse_TuckEverlasting(nItemId,sItemName)
	NpcPosition_PathFind(21426)
end

---------------藏宝图
--主函数（出对白）
function PirateEpicTask_ItemUse_TreasureMap(nItemId)
	local nUserId = Get_UserId()
	
	LinkItemGossipFunc_New(nItemId,"1-1")
end

--点击前往寻宝(1/5/10次)
function PirateEpicTask_ItemUse_TreasureMap_ClickGoDig(nItemId,nTimes)
	local nUserId = Get_UserId()
	local nUserMapId  = Get_UserMapId(nUserId)
	local nTimes = nTimes or 1
	
	--检查寻宝多次条件
	if nTimes > 1 then
		local sFailFunc = "</F>PirateEpicTask_ItemUse_TreasureMap</N>" .. nItemId
	
		--检查首充VIP
		local nVIP = Get_UserVip()
		local bFirstRecharge = User_TestUserFlag(1)
		if not (nVIP >= 3 or bFirstRecharge) then
			Sys_DialogText(string.format(tPirateEpicTask_Text["UseTreasureMap"]["NotVIP3"],nTimes))
			Sys_DialogOption(tPirateEpicTask_Text["UseTreasureMap"]["NotVIP3Option"],sFailFunc)
			Sys_DialogItemFace(nItemId)
			Sys_DialogEnd()
			return
		end
	
		--检查数量是否足够
		if not Item_ChkMulItem(nItemId,nItemId,nTimes,1,0,nUserId) then
			local sItemName = Get_ItemtypeName(nItemId)
			Sys_DialogText(string.format(tPirateEpicTask_Text["UseTreasureMap"]["NoEnoughTreasureMap"],nTimes,sItemName))
			Sys_DialogOption(tPirateEpicTask_Text["UseTreasureMap"]["NoEnoughTreasureMapOp"],sFailFunc)
			Sys_DialogItemFace(nItemId)
			Sys_DialogEnd()
			return
		end
	end
	
	--检查地图
	local bMapCanUse = false
	for i,v in pairs(tPirateEpicTask_Cont["MapCanUseTreasureMap"]) do
		if nUserMapId == v then
			bMapCanUse =true
			break
		end
	end
	if not bMapCanUse then
		Sys_MsgBox(tPirateEpicTask_Text["UseTreasureMap"]["NotRightPlace"])
		return
	end

	local nMapIdTakeEffect = tPirateEpicTask_Item[nItemId]["MapTakeEffect"]
	
	local nFlat,tProb = Probabil_RandomAward(tPirateEpicTask_Prob,nItemId)
	local nRandomDigIndex = tProb[1]["tAward"][1]["nIndex"]
	
	local nPXTakeEffect = tPirateEpicTask_Item[nItemId]["MarkPoint"][nRandomDigIndex][1]
	local nPYTakeEffect = tPirateEpicTask_Item[nItemId]["MarkPoint"][nRandomDigIndex][2]
	
	--检查新挖掘点是否在附近，在的话强行换位置
	local nUserPX = Get_UserPositionX(nUserId)
	local nUserPY = Get_UserPositionY(nUserId)
	if math.abs(nUserPX - nPXTakeEffect) <= 10 and math.abs(nUserPY - nPYTakeEffect) <= 10 and nUserMapId == nMapIdTakeEffect then
		
		local nTotal = #tPirateEpicTask_Prob[nItemId]
		nRandomDigIndex = PirateEpicTask_NextIndex(nTotal,nRandomDigIndex)
		nPXTakeEffect = tPirateEpicTask_Item[nItemId]["MarkPoint"][nRandomDigIndex][1]
		nPYTakeEffect = tPirateEpicTask_Item[nItemId]["MarkPoint"][nRandomDigIndex][2]
		
	end
	
	--不在挖掘点附近且非同地图
	-- if nUserMapId ~= nMapIdTakeEffect then
		-- User_UserRandBoundTrans(nMapIdTakeEffect,nPXTakeEffect,nPYTakeEffect,1,1,1,nUserId)
		-- PirateEpicTask_ItemUse_TreasureMap_Dig(nItemId,nTimes)  --挖掘读条
		-- return
	-- end
	
	--同地图但不在挖掘点附近
	--由于以上两种情况屏蔽，修改后变成无论位置先传送再挖
	User_UserRandBoundTrans(1004,62,44,1,1,1)  --本地图传送接读条会没反应，先传其他地图中转
	User_UserRandBoundTrans(nMapIdTakeEffect,nPXTakeEffect,nPYTakeEffect,1,1,1,nUserId)
	
	--如果第一次来，显示宣传图
	PirateEpicTask_ShowAdvertisePic(nMapIdTakeEffect)
	
	User_EffectAdd("self",tPirateEpicTask_Cont["Effect"]["EnterMap"][nMapIdTakeEffect],nUserId)
	PirateEpicTask_ItemUse_TreasureMap_Dig(nItemId,nTimes)  --挖掘读条
end

--开始挖掘(读条)
function PirateEpicTask_ItemUse_TreasureMap_Dig(nItemId,nTimes)
	local nUserId = Get_UserId()
	local j = PirateEpicTask_TreasureMap_ChkWhichReward()
	
	--读条前的判断
	if nItemId == 3307447 then
		if not PirateEpicTask_ItemUse_TreasureMap_Dig_FiveStarChk(nItemId) then
			return
		end
	else
		--检查背包
		local bMark,nSpace = RewardTemplate_ChkRandomSpace(tPirateEpicTask_Reward[j],nItemId,nUserId)
		nSpace = nTimes * nSpace
		if not User_CheckLeftSpace(nSpace,nUserId) then
			Sys_MsgBox(string.format(tPirateEpicTask_Text["UseTreasureMap"]["NoSpace"],nSpace),nil,nil,nUserId)
			return
		end
		
		--检查物品
		if nTimes > 1 then
			if not Item_ChkMulItem(nItemId,nItemId,nTimes,1,0,nUserId) then
				Sys_MsgBox(string.format(tPirateEpicTask_Text["UseTreasureMap"]["NoEnoughTreasureMapTip"],nTimes,nTimes),nil,nil,nUserId)
				return
			end
		elseif nTimes == 1 then
			if not Item_ChkItem(nItemId,1,0,nUserId) then
				Sys_MsgBox(tPirateEpicTask_Text["UseTreasureMap"]["NoTreasureMap"],nil,nil,nUserId)
				return
			end
		end
	end

	local sContent = tPirateEpicTask_Text["SetExploreContent"]
	local sExlporeFunc = "PirateEpicTask_ItemUse_TreasureMap_Dig_ExploreFunc</N>" .. nItemId .. "</N>" .. nTimes
	User_SetExplore(1,sContent,100,sExlporeFunc)
end

--针对五星藏宝图挖掘的检查
function PirateEpicTask_ItemUse_TreasureMap_Dig_FiveStarChk(nItemId,nUserId)
	local nUserId = nUserId or Get_UserId()
	
	--检查背包
	if not RewardTemplate_CheckSpace(tPirateEpicTask_Reward[nItemId],nUserId) then
		Sys_MsgBox(tPirateEpicTask_Text["UseTreasureMap"]["ClickGoDig"]["NoSpace"],nil,nil,nUserId)
		return
	end

	--检查物品
	if not Item_ChkItem(nItemId,1,0,nUserId) then
		Sys_MsgBox(tPirateEpicTask_Text["UseTreasureMap"]["NoTreasureMap"],nil,nil,nUserId)
		return
	end

	return true
end

--挖掘读条成功的寻宝部分(新增参数nCaller表示调用处，区分提示，目前2处)
function PirateEpicTask_ItemUse_TreasureMap_Dig_ExploreFunc_GetAward(nItemId,nTimes,nCaller,nUserId)
	local nUserId = nUserId or Get_UserId()
	local nMapIdTakeEffect = tPirateEpicTask_Item[nItemId]["MapTakeEffect"]
	
	--先判断是否是5星藏宝图
	if nItemId == 3307447 then
		--针对五星藏宝图挖掘的检查
		if not PirateEpicTask_ItemUse_TreasureMap_Dig_FiveStarChk(nItemId,nUserId) then
			return
		end

		if RewardTemplate_UseItem(tPirateEpicTask_Reward[nItemId],nUserId) then
			--挖完
			local sGetEpicItemTipFunc = "User_UserRandBoundTrans</N>10271</N>" .. tPirateEpicTask_Map[10271]["EnterPX"] .. "</N>" .. tPirateEpicTask_Map[10271]["EnterPY"] .. "</N>1</N>1</N>1</N>" .. nUserId
			Sys_MsgBox(tPirateEpicTask_Text["UseTreasureMap"]["ClickGoDig"]["GetEpicItem"],sGetEpicItemTipFunc,nil,nUserId)
			Sys_SystemBroadcast(string.format(tPirateEpicTask_Text["UseTreasureMap"]["ClickGoDig"]["GetEpicItemBroad"],Get_UserName(nUserId)))
		end
		return
	end

	--检查背包(假概率表的背包要求一样，姑且用1判断)
	local bMark,nSpace = RewardTemplate_ChkRandomSpace(tPirateEpicTask_Reward[1],nItemId,nUserId)
	nSpace = nTimes * nSpace
	if not User_CheckLeftSpace(nSpace,nUserId) then
		Sys_MsgBox(string.format(tPirateEpicTask_Text["UseTreasureMap"]["NoSpace"],nSpace),nil,nil,nUserId)
		return
	end
	
	--检查物品
	if nTimes > 1 then
		if not Item_ChkMulItem(nItemId,nItemId,nTimes,1,0,nUserId) then
			Sys_MsgBox(string.format(tPirateEpicTask_Text["UseTreasureMap"]["NoEnoughTreasureMapTip"],nTimes,nTimes),nil,nil,nUserId)
			return
		end
	elseif nTimes == 1 then
		if not Item_ChkItem(nItemId,1,0,nUserId) then
			if nCaller == 1 then
				Sys_MsgBox(tPirateEpicTask_Text["UseTreasureMap"]["NoTreasureMap"],nil,nil,nUserId)
			elseif nCaller == 2 then
				local nStar = tPirateEpicTask_Item[nItemId]["Star"]
				local sFunc = "LinkNpcGossipFunc_New</N>21449</S>1-1"
				Sys_MsgBox(string.format(tPirateEpicTask_Text[21449]["DirectXunBao"]["NoTreasureMapTip"],nStar),sFunc,nil,nUserId)
			end
			return
		end
	end
	
	local tGetReward = {}  --挖到的东西
	
	local nEvent = tPirateEpicTask_Stc["CostSum"]["Event"]
	local nType = tPirateEpicTask_Stc["CostSum"]["Type"]
	
	--删一个挖一次
	local j = 1  --用来判断走哪个假概率奖励表
	for i = 1 ,nTimes do 
		if Item_DelItem(nItemId,1,0,nUserId) then
			j = PirateEpicTask_TreasureMap_ChkWhichReward()
			
			tGetReward[i] = RewardTemplate_NewRandom(tPirateEpicTask_Reward[j],nItemId,nUserId)
			local nRewardId
			if tGetReward[i][1]["tAward"][1]["RewardItem"] then
				nRewardId = tGetReward[i][1]["tAward"][1]["RewardItem"][1]["Id"]
			end

			--抽中加勒比，充值累计值清零
			if nRewardId ~= nil and nRewardId == 3307447 then
				Task_SetStatistic(nEvent,nType,0,1,nUserId)
			end
		end
	end
				
	return tGetReward
end

--挖掘读条成功
function PirateEpicTask_ItemUse_TreasureMap_Dig_ExploreFunc(nItemId,nTimes,nUserId)
	--获得奖励
	local nCaller = 1  --调用者标记，区分提示
	local tGetReward = PirateEpicTask_ItemUse_TreasureMap_Dig_ExploreFunc_GetAward(nItemId,nTimes,nCaller,nUserId)
	
	if not tGetReward then  --说明是五星藏宝图或者不符合条件(背包满，物品数量不足)
		return
	end

	--各种提示逻辑
	local sRewardTipFunc = "PirateEpicTask_PirateEpicTask_ItemUse_TreasureMap_Dig_ExploreFunc_SuccTip</N>" .. nItemId .. "</N>" .. nUserId  --挖完提示函数
	local sRewardTipFunc_Continue = "PirateEpicTask_ItemUse_TreasureMap_ClickGoDig</N>" .. nItemId .. "</N>" .. nTimes  --有藏宝图点继续
	local sRewardTipFunc_Continue2 = "PirateEpicTask_RewardTipFunc_Continue2</N>" .. nItemId .. "</N>" .. nUserId  --无藏宝图点继续
	if nTimes == 1 then
		local nRewardId
		local sRewardName
		local nNum
		if tGetReward[1][1]["tAward"][1]["RewardItem"] ~= nil then
			nRewardId = tGetReward[1][1]["tAward"][1]["RewardItem"][1]["Id"]
			sRewardName = Get_ItemtypeName(nRewardId)
			nNum = tonumber(string.sub(tGetReward[1][1]["tAward"][1]["RewardItem"][1]["Attr"],3,3))
		elseif tGetReward[1][1]["tAward"][1]["RewardStrengthValue"] ~= nil then
			sRewardName = tPirateEpicTask_Text["StrengthValue"]
			nNum = tGetReward[1][1]["tAward"][1]["RewardStrengthValue"]["Value"]
		end
		
		local nTipMark = 1
		local sRewardTip
		if Item_ChkItem(nItemId,1,0,nUserId) then
			nTipMark = 1
			if nNum > 1 then
				sRewardTip = string.format(tPirateEpicTask_Text["UseTreasureMap"]["ExploreFunc"]["LineStart"],sRewardName,"*",nNum,tPirateEpicTask_Text["UseTreasureMap"]["ExploreFunc"]["LineEnd" .. nTipMark])
			else
				sRewardTip = string.format(tPirateEpicTask_Text["UseTreasureMap"]["ExploreFunc"]["LineStart"],sRewardName," "," ",tPirateEpicTask_Text["UseTreasureMap"]["ExploreFunc"]["LineEnd" .. nTipMark])
			end
			Sys_MsgBox(sRewardTip,sRewardTipFunc_Continue,nil,nUserId)
		else
			nTipMark = 2
			if nNum > 1 then
				sRewardTip = string.format(tPirateEpicTask_Text["UseTreasureMap"]["ExploreFunc"]["LineStart"],sRewardName,"*",nNum,tPirateEpicTask_Text["UseTreasureMap"]["ExploreFunc"]["LineEnd" .. nTipMark])
			else
				sRewardTip = string.format(tPirateEpicTask_Text["UseTreasureMap"]["ExploreFunc"]["LineStart"],sRewardName," "," ",tPirateEpicTask_Text["UseTreasureMap"]["ExploreFunc"]["LineEnd" .. nTipMark])
			end
			Sys_MsgBox(sRewardTip,sRewardTipFunc_Continue2,nil,nUserId)
		end
	elseif nTimes > 1 then
		tMultiDigReward[nUserId] = tGetReward
		local sMultiRewardTipFunc = "PirateEpicTask_MultiRewardTipFunc</N>" .. nItemId .. "</N>" .. nTimes .. "</N>" .. nUserId
		Sys_MsgBox(string.format(tPirateEpicTask_Text["UseTreasureMap"]["ExploreFunc"]["IfChkReward"],nTimes),sMultiRewardTipFunc,sRewardTipFunc,nUserId)
	end
	User_EffectAdd("self",tPirateEpicTask_Cont["Effect"]["FindTreasure"],nUserId)  --由于存在多次走奖励模板情况，为了防止光效一直出,故手动给光效
end

--单次挖完没藏宝图点继续跳的提示
function PirateEpicTask_RewardTipFunc_Continue2(nItemId,nUserId)
	local sItemName = Get_ItemtypeName(nItemId)
	local sReturnTip = string.format(tPirateEpicTask_Text["UseTreasureMap"]["ExploreFunc"]["ReturnTip"],sItemName)
	local sRewardTipFunc_Return = "User_UserRandBoundTrans</N>10271</N>" .. tPirateEpicTask_Map[10271]["EnterPX"] .. "</N>" .. tPirateEpicTask_Map[10271]["EnterPY"] .. "</N>1</N>1</N>1</N>" .. nUserId
	Sys_MsgBox(sReturnTip,sRewardTipFunc_Return,nil,nUserId)
end

--多次挖奖成功提示函数(可以选择不看)
function PirateEpicTask_MultiRewardTipFunc(nItemId,nTimes,nUserId)
	--挖到的东西
	local tGetReward = tMultiDigReward[nUserId]
	--出结果对白
	local nMapId = tPirateEpicTask_Item[nItemId]["MapTakeEffect"]
	local sMapName = tPirateEpicTask_Text[nMapId]["Name"]
	Sys_DialogText(string.format(tPirateEpicTask_Text["UseTreasureMap"]["ExploreFunc"]["Line1"],sMapName))
	Sys_DialogText(tPirateEpicTask_Text["UseTreasureMap"]["ExploreFunc"]["Line2"])
	for i = 1 ,nTimes do
		local nRewardId
		local sRewardName
		local nNum
		if tGetReward[i][1]["tAward"][1]["RewardItem"] ~= nil then
			nRewardId = tGetReward[i][1]["tAward"][1]["RewardItem"][1]["Id"]
			sRewardName = Get_ItemtypeName(nRewardId)
			nNum = tonumber(string.sub(tGetReward[i][1]["tAward"][1]["RewardItem"][1]["Attr"],3,3))
		elseif tGetReward[i][1]["tAward"][1]["RewardStrengthValue"] ~= nil then
			sRewardName = tPirateEpicTask_Text["StrengthValue"]
			nNum = tGetReward[i][1]["tAward"][1]["RewardStrengthValue"]["Value"]
		end
		
		if nNum > 1 then
			Sys_DialogText(string.format(tPirateEpicTask_Text["UseTreasureMap"]["ExploreFunc"]["MiddleLine"],i,sRewardName,"*",nNum))
		else
			Sys_DialogText(string.format(tPirateEpicTask_Text["UseTreasureMap"]["ExploreFunc"]["MiddleLine"],i,sRewardName," "," "))
		end
	end
	Sys_DialogText(tPirateEpicTask_Text["UseTreasureMap"]["ExploreFunc"]["LineEnd"])
	if nItemId == 3307443 then
		Sys_DialogOption(tPirateEpicTask_Text["UseTreasureMap"]["ExploreFunc"]["Option1"],"</F>PirateEpicTask_MultiRewardTipFunc_ClickContinue</N>" .. nItemId .. "</N>" .. nTimes)
	else
		Sys_DialogOption(tPirateEpicTask_Text["UseTreasureMap"]["ExploreFunc"]["Option2"],"</F>PirateEpicTask_MultiRewardTipFunc_ClickContinue</N>" .. nItemId .. "</N>" .. nTimes)
	end
	Sys_DialogOption(tPirateEpicTask_Text["UseTreasureMap"]["ExploreFunc"]["Option3"],"</F>User_UserRandBoundTrans</N>10271</N>" .. tPirateEpicTask_Map[10271]["EnterPX"] .. "</N>" .. tPirateEpicTask_Map[10271]["EnterPY"] .. "</N>1</N>1</N>1")
	
	Sys_DialogItemFace(nItemId)
	Sys_DialogEnd()
	
	if tMultiDigReward[nUserId] then
		tMultiDigReward[nUserId] = nil
	end
end

--查看完奖励点继续寻宝
function PirateEpicTask_MultiRewardTipFunc_ClickContinue(nItemId,nTimes)
	local nUserId = Get_UserId()
	local sItemName = Get_ItemtypeName(nItemId)
	if Item_ChkItem(nItemId,1,0,nUserId) then
		PirateEpicTask_ItemUse_TreasureMap_ClickGoDig(nItemId,nTimes)
	else
		Sys_DialogText(string.format(tPirateEpicTask_Text["UseTreasureMap"]["MultiRewardTipFunc"]["IfReturn"],sItemName))
		Sys_DialogOption(tPirateEpicTask_Text["UseTreasureMap"]["MultiRewardTipFunc"]["IfReturnOption"],"</F>User_UserRandBoundTrans</N>10271</N>" .. tPirateEpicTask_Map[10271]["EnterPX"] .. "</N>" .. tPirateEpicTask_Map[10271]["EnterPY"] .. "</N>1</N>1</N>1</N>" .. nUserId)
		Sys_DialogItemFace(nItemId)
		Sys_DialogEnd()
	end
end

--挖完并不看奖励的提示
function PirateEpicTask_PirateEpicTask_ItemUse_TreasureMap_Dig_ExploreFunc_SuccTip(nItemId,nUserId)
	--挖过之后
	local sSuccTipFunc
	if Item_ChkItem(nItemId,1,0,nUserId) then
		sSuccTipFunc = "PirateEpicTask_ItemUse_TreasureMap</N>" .. nItemId  --父函数
		Sys_MsgBox(tPirateEpicTask_Text["UseTreasureMap"]["AfterDig"][1],sSuccTipFunc,nil,nUserId)
	else
		-- sMsgBoxFunc = "Sys_GotoSomeWhere</N>" .. tPirateEpicTask_Map[nMapIdTakeEffect]["ChgPX"] .. "</N>" ..tPirateEpicTask_Map[nMapIdTakeEffect]["ChgPX"] .. "</N>" ..nMapIdTakeEffect .. "</N>" .. 0 .. "</N>" .. nUserId  --寻路到切屏点
		sSuccTipFunc = "User_UserRandBoundTrans</N>10271</N>" .. tPirateEpicTask_Map[10271]["EnterPX"] .. "</N>" .. tPirateEpicTask_Map[10271]["EnterPY"] .. "</N>1</N>1</N>1</N>" .. nUserId
		Sys_MsgBox(tPirateEpicTask_Text["UseTreasureMap"]["AfterDig"][2],sSuccTipFunc,nil,nUserId)
	end
end


---------------史诗武器转换道具
--点击使用海之心
--使用史诗武器道具 转化成史诗武器
function PirateEpicTask_ItemUse_SSWeaponTransformer(nItemTypeId)
	local nWeaponSubType = tPirateEpicTask_Cont["SSWeaponSubType"]
	
	--检查职业
	local nPro = Get_UserProfession()
	if not (nPro >= tPirateEpicTask_Cont["UserJoinCond"]["ProfessionMin"] 
		and nPro <= tPirateEpicTask_Cont["UserJoinCond"]["ProfessionMax"]) then
		--非本职业
		Sys_MsgBox(tPirateEpicTask_Text["UseSSWeaponTransformer"]["Failed4"])
		return false
	end
	
	--检查是否满足条件
	local nPos1 = tPirateEpicTask_Cont["SSWeaponPos"][1]
	local nPos2 = tPirateEpicTask_Cont["SSWeaponPos"][2]
	local nNeedSubType1 = tPirateEpicTask_Cont["SubTypeAllowed"][1]
	local nNeedSubType2 = tPirateEpicTask_Cont["SubTypeAllowed"][2]
	local SSType1 = tPirateEpicTask_Cont["SSWeaponSubType"]["RightHand"]
	local SSType2 = tPirateEpicTask_Cont["SSWeaponSubType"]["LeftHand"]
	if User_EquipCheck(nPos1,SSType1) then
		if User_EquipCheck(nPos2,SSType2) then
			Sys_MsgBox(tPirateEpicTask_Text["UseSSWeaponTransformer"]["Failed3"])
			return
		end
	
		if not User_EquipCheck(nPos2,nNeedSubType2) then
			Sys_MsgBox(tPirateEpicTask_Text["UseSSWeaponTransformer"]["Failed2"])
			return
		end
	end
	
	--返回可以转的Pos
	local nPos = PirateEpicTask_ChkConditionAndPos()
	if not nPos then
		Sys_MsgBox(tPirateEpicTask_Text["UseSSWeaponTransformer"]["Failed"])
		return
	end
	
	--检查物品 转换为史诗武器 打log
	if Item_ChkItem(nItemTypeId) and Item_DelItem(nItemTypeId) then
		if Item_WeaponChangeSubtype(nPos,nWeaponSubType[nPos]) then
			User_EffectAdd("self","zf2-e128")
		
			local nWeaponItemId = Get_EquipIDByPos(nPos)
			local nWeaponItemTypeId = Get_ItemType(nWeaponItemId)
			Sys_DialogText(string.format(tPirateEpicTask_Text["UseSSWeaponTransformer"]["Succ"],tPirateEpicTask_Text["UseSSWeaponTransformer"]["SuccPos" .. nPos]))
			Sys_DialogOption(tPirateEpicTask_Text["UseSSWeaponTransformer"]["SuccOption"])
			Sys_DialogItemFace(nItemTypeId)
			Sys_DialogEnd()
			Sys_SaveActionFestivalLog(string.format(tPirateEpicTask_Cont["Log"]["TransformSucc"],nItemTypeId,1,nWeaponItemTypeId,1))
		end
	end
end

--检查是否满足使用史诗武器道具条件 返回满足条件的武器位
function PirateEpicTask_ChkConditionAndPos()
	local nPos1 = tPirateEpicTask_Cont["SSWeaponPos"][1]
	local nPos2 = tPirateEpicTask_Cont["SSWeaponPos"][2]
	
	local nSubType1 = tPirateEpicTask_Cont["SubTypeAllowed"][1]
	local nSubType2 = tPirateEpicTask_Cont["SubTypeAllowed"][2]
	
	--先检查主手再检查副手
	if User_EquipCheck(nPos1,nSubType1) then
		return nPos1
	elseif User_EquipCheck(nPos2,nSubType2) then
		return nPos2
	end
	
	return false
end

---------------------------------陷阱触发
---------------狂怒之海切屏点
--离开狂怒之海
function PirateEpicTask_Exit()
	local nMapId = 1004
	-- 判断激情服
	if SpecialServer_ChkNoGiftServer() then
		nMapId = 10386
	end
	
	User_UserRandBoundTrans(nMapId,62,44,1,1,1)
end


-----------------------------------（模板）---------------------------------------------
---------------------------------NPC
-------------四海盗帅
tNpcFace[5007] = 234


-------------杰克斯派洛
tNpcFace[5983] = 236
-- tNpcGossip = {}
-- tNpcGossip[21427] = {}
tNpcGossip[21427]= tNpcGossip[21427] or DefaultNpc:new{}
tNpcGossip[21427]["OptionHidden"] = 1
--主对白
tNpcGossip[21427]["Text1-1"] = {111,112,113,114,115,116,117,118,119,1110,1111,1112,1113}
tNpcGossip[21427]["Text111"] = tPirateEpicTask_Text[21427]["Text111"]
tNpcGossip[21427]["Text112"] = tPirateEpicTask_Text[21427]["Text112"]
tNpcGossip[21427]["Text113"] = tPirateEpicTask_Text[21427]["Text113"]
tNpcGossip[21427]["Text114"] = tPirateEpicTask_Text[21427]["Text114"]
tNpcGossip[21427]["Text115"] = tPirateEpicTask_Text[21427]["Text212"]
tNpcGossip[21427]["Text116"] = tPirateEpicTask_Text[21427]["Text213"]
tNpcGossip[21427]["Text117"] = tPirateEpicTask_Text[21427]["Text214"]
tNpcGossip[21427]["Text118"] = tPirateEpicTask_Text[21427]["Text215"]
tNpcGossip[21427]["Text119"] = tPirateEpicTask_Text[21427]["Text216"]
tNpcGossip[21427]["Text1110"] = tPirateEpicTask_Text[21427]["Text217"]
tNpcGossip[21427]["Text1111"] = tPirateEpicTask_Text[21427]["Text218"]
tNpcGossip[21427]["Text1112"] = tPirateEpicTask_Text[21427]["Text219"]
tNpcGossip[21427]["Text1113"] = tPirateEpicTask_Text[21427]["Text2110"]
tNpcGossip[21427]["tOption1-1"] = {112,113,114}
--tNpcGossip[21427]["Option111"] = tPirateEpicTask_Text[21427]["Option111"]  --"如何找回“海之心”"
tNpcGossip[21427]["Option112"] = tPirateEpicTask_Text[21427]["Option112"]  --"恶之花兑换1星藏宝图"
tNpcGossip[21427]["Option113"] = tPirateEpicTask_Text[21427]["Option113"]  --"购买1星藏宝图"
tNpcGossip[21427]["Option114"] = tPirateEpicTask_Text[21427]["Option114"]  --天石抵扣恶之花
tNpcGossip[21427]["OptionChkFunc112"] = function()
	local nEvent = tPirateEpicTask_Reward["ExchangeBottle"]["EventType"]
	local nType = tPirateEpicTask_Reward["ExchangeBottle"]["DataType"]
	
	--掩码隔天
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	end
	
	local nValue = Get_UserStatisticValue(nEvent,nType)
	
	if nValue == 0 then
		return true
	end
	
	return
end
tNpcGossip[21427]["OptionChkFunc113"] = function()
	local nEvent = tPirateEpicTask_Reward["ExchangeBottle"]["EventType"]
	local nType = tPirateEpicTask_Reward["ExchangeBottle"]["DataType"]
	
	--掩码隔天
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	end
	
	local nValue = Get_UserStatisticValue(nEvent,nType)
	
	if nValue == 0 then
		return false
	end
	
	return true
end
tNpcGossip[21427]["OptionChkFunc114"] = function()
	local nEvent = tPirateEpicTask_Reward["ExchangeBottle"]["EventType"]
	local nType = tPirateEpicTask_Reward["ExchangeBottle"]["DataType"]
	
	--掩码隔天
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	end
	
	local nValue = Get_UserStatisticValue(nEvent,nType)
	
	--检查两种恶之花(够的话就不显示了)
	local nChkItem1 = tPirateEpicTask_Reward["ExchangeBottle"]["DeleteItem"][1]["Id"]
	local nChkItem2 = tPirateEpicTask_Reward["ExchangeBottle"]["DeleteItem"][2]["Id"]
	local nNum = tPirateEpicTask_Reward["ExchangeBottle"]["DeleteItem"][1]["ItemNum"]
	if Item_ChkMulItem(nChkItem1,nChkItem1,nNum) and Item_ChkMulItem(nChkItem2,nChkItem2,nNum) then
		return
	end
	
	if nValue == 0 then
		return true
	end
	
	return
end
tNpcGossip[21427]["ChkFunc1-1"]= function()
	return true
end
--点如何找回"海之心"
-- tNpcGossip[21427]["OptionPoint111"]="2-1"
-- tNpcGossip[21427]["Text2-1"] = {211,212,213,214,215,216,217,218,219,2110,2111}
-- tNpcGossip[21427]["Text211"] = tPirateEpicTask_Text[21427]["Text211"]
-- tNpcGossip[21427]["Text212"] = tPirateEpicTask_Text[21427]["Text212"]
-- tNpcGossip[21427]["Text213"] = tPirateEpicTask_Text[21427]["Text213"]
-- tNpcGossip[21427]["Text214"] = tPirateEpicTask_Text[21427]["Text214"]
-- tNpcGossip[21427]["Text215"] = tPirateEpicTask_Text[21427]["Text215"]
-- tNpcGossip[21427]["Text216"] = tPirateEpicTask_Text[21427]["Text216"]
-- tNpcGossip[21427]["Text217"] = tPirateEpicTask_Text[21427]["Text217"]
-- tNpcGossip[21427]["Text218"] = tPirateEpicTask_Text[21427]["Text218"]
-- tNpcGossip[21427]["Text219"] = tPirateEpicTask_Text[21427]["Text219"]
-- tNpcGossip[21427]["Text2110"] = tPirateEpicTask_Text[21427]["Text2110"]
-- tNpcGossip[21427]["Text2111"] = tPirateEpicTask_Text[21427]["Text2111"]
-- tNpcGossip[21427]["tOption2-1"] = {211}
-- tNpcGossip[21427]["Option211"] = tPirateEpicTask_Text[21427]["Option211"]
-- tNpcGossip[21427]["OptionPoint211"] = "1-1"
--点恶之花兑换1星藏宝图
tNpcGossip[21427]["OptionFunc112"]="PirateEpicTask_NPCClick_ExchangeBottle"
--点击购买1星藏宝图
tNpcGossip[21427]["OptionPoint113"] = "3-1"
tNpcGossip[21427]["Text3-1"] = {311,312}
tNpcGossip[21427]["Text311"] = tPirateEpicTask_Text[21427]["Text311"]
tNpcGossip[21427]["Text312"] = tPirateEpicTask_Text[21427]["Text312"]
tNpcGossip[21427]["tOption3-1"] = {311,312}
tNpcGossip[21427]["Option311"] = tPirateEpicTask_Text[21427]["Option311"]
tNpcGossip[21427]["Option312"] = tPirateEpicTask_Text[21427]["Option312"]
tNpcGossip[21427]["OptionChkFunc312"] = function()
	local nVIP = Get_UserVip()
	local bFirstRecharge = User_TestUserFlag(1)
	return (nVIP >= 3 or bFirstRecharge)
	-- return true
end
tNpcGossip[21427]["OptionFunc311"]="PirateEpicTask_NPCClick_BuyMaps</S>BuyOneMap"
tNpcGossip[21427]["OptionFunc312"]="PirateEpicTask_NPCClick_BuyMaps</S>BuyTenMaps"
--点使用27天石代替恶之花
tNpcGossip[21427]["OptionFunc114"]="PirateEpicTask_NPCClick_ExchangeBottle_UseEMoneySecConf"

-------------路飞
tNpcFace[5981] = 237
tNpcGossip[21449]= tNpcGossip[21449] or DefaultNpc:new{}
tNpcGossip[21449]["OptionHidden"] = 1
--主对白
tNpcGossip[21449]["Text1-1"] = {111,112,113}
tNpcGossip[21449]["Text111"] = tPirateEpicTask_Text[21449]["Text111"]
tNpcGossip[21449]["Text112"] = tPirateEpicTask_Text[21449]["Text112"]
tNpcGossip[21449]["Text113"] = tPirateEpicTask_Text[21449]["Text113"]
tNpcGossip[21449]["tOption1-1"] = {111,112,113,114,115,116}
tNpcGossip[21449]["Option111"] = tPirateEpicTask_Text[21449]["Option111"]
tNpcGossip[21449]["Option112"] = tPirateEpicTask_Text[21449]["Option112"]
tNpcGossip[21449]["Option113"] = tPirateEpicTask_Text[21449]["Option113"]
tNpcGossip[21449]["Option114"] = tPirateEpicTask_Text[21449]["Option114"]
tNpcGossip[21449]["Option115"] = tPirateEpicTask_Text[21449]["Option115"]
tNpcGossip[21449]["Option116"] = tPirateEpicTask_Text[21449]["Option116"]
tNpcGossip[21449]["OptionChkFunc111"] = function()
	return Item_ChkItem(3307443)
end
tNpcGossip[21449]["OptionChkFunc112"] = function()
	return Item_ChkItem(3307444)
end
tNpcGossip[21449]["OptionChkFunc113"] = function()
	return Item_ChkItem(3307445)
end
tNpcGossip[21449]["OptionChkFunc114"] = function()
	return Item_ChkItem(3307446)
end
tNpcGossip[21449]["OptionChkFunc115"] = function()
	return Item_ChkItem(3307447)
end
tNpcGossip[21449]["OptionChkFunc116"] = function()
	for nItemId = 3307443,3307447 do
		if Item_ChkItem(nItemId) then
			return
		end
	end
	
	return true
end
tNpcGossip[21449]["OptionPoint111"] = "2-1"
tNpcGossip[21449]["OptionPoint112"] = "3-1"
tNpcGossip[21449]["OptionPoint113"] = "4-1"
tNpcGossip[21449]["OptionPoint114"] = "5-1"
tNpcGossip[21449]["OptionFunc115"] = "PirateEpicTask_NPCClick_DirectXunBao2</N>3307447"
--1星寻宝
tNpcGossip[21449]["Text2-1"] = {211}
tNpcGossip[21449]["Text211"] = tPirateEpicTask_Text[21449]["Text211"]
tNpcGossip[21449]["tOption2-1"] = {211,212}
tNpcGossip[21449]["Option211"] = tPirateEpicTask_Text[3307443]["Option111"]
tNpcGossip[21449]["Option212"] = tPirateEpicTask_Text[3307443]["Option112"]
tNpcGossip[21449]["OptionChkFunc212"] = function()
	local nVIP = Get_UserVip()
	local bFirstRecharge = User_TestUserFlag(1)
	return (nVIP >= 3 or bFirstRecharge)
	-- return true
end
tNpcGossip[21449]["OptionFunc211"]="PirateEpicTask_NPCClick_DirectXunBao</N>3307443</N>1"
tNpcGossip[21449]["OptionFunc212"]="PirateEpicTask_NPCClick_DirectXunBao</N>3307443</N>10"

--2星寻宝
tNpcGossip[21449]["Text3-1"] = {311}
tNpcGossip[21449]["Text311"] = tPirateEpicTask_Text[21449]["Text311"]
tNpcGossip[21449]["tOption3-1"] = {311,312}
tNpcGossip[21449]["Option311"] = tPirateEpicTask_Text[3307444]["Option111"]
tNpcGossip[21449]["Option312"] = tPirateEpicTask_Text[3307444]["Option112"]
tNpcGossip[21449]["OptionChkFunc312"] = function()
	local nVIP = Get_UserVip()
	local bFirstRecharge = User_TestUserFlag(1)
	return (nVIP >= 3 or bFirstRecharge)
	-- return true
end
tNpcGossip[21449]["OptionFunc311"]="PirateEpicTask_NPCClick_DirectXunBao</N>3307444</N>1"
tNpcGossip[21449]["OptionFunc312"]="PirateEpicTask_NPCClick_DirectXunBao</N>3307444</N>5"

--3星寻宝
tNpcGossip[21449]["Text4-1"] = {411}
tNpcGossip[21449]["Text411"] = tPirateEpicTask_Text[21449]["Text411"]
tNpcGossip[21449]["tOption4-1"] = {411,412}
tNpcGossip[21449]["Option411"] = tPirateEpicTask_Text[3307445]["Option111"]
tNpcGossip[21449]["Option412"] = tPirateEpicTask_Text[3307445]["Option112"]
tNpcGossip[21449]["OptionChkFunc412"] = function()
	local nVIP = Get_UserVip()
	local bFirstRecharge = User_TestUserFlag(1)
	return (nVIP >= 3 or bFirstRecharge)
	-- return true
end
tNpcGossip[21449]["OptionFunc411"]="PirateEpicTask_NPCClick_DirectXunBao</N>3307445</N>1"
tNpcGossip[21449]["OptionFunc412"]="PirateEpicTask_NPCClick_DirectXunBao</N>3307445</N>5"

--4星寻宝
tNpcGossip[21449]["Text5-1"] = {511}
tNpcGossip[21449]["Text511"] = tPirateEpicTask_Text[21449]["Text511"]
tNpcGossip[21449]["tOption5-1"] = {511,512}
tNpcGossip[21449]["Option511"] = tPirateEpicTask_Text[3307446]["Option111"]
tNpcGossip[21449]["Option512"] = tPirateEpicTask_Text[3307446]["Option112"]
tNpcGossip[21449]["OptionChkFunc512"] = function()
	local nVIP = Get_UserVip()
	local bFirstRecharge = User_TestUserFlag(1)
	return (nVIP >= 3 or bFirstRecharge)
	-- return true
end
tNpcGossip[21449]["OptionFunc511"]="PirateEpicTask_NPCClick_DirectXunBao</N>3307446</N>1"
tNpcGossip[21449]["OptionFunc512"]="PirateEpicTask_NPCClick_DirectXunBao</N>3307446</N>5"

--5星寻宝
tNpcGossip[21449]["Text6-1"] = {611,612}
tNpcGossip[21449]["Text611"] = tPirateEpicTask_Text[21449]["Text611"]
tNpcGossip[21449]["Text612"] = tPirateEpicTask_Text[21449]["Text612"]
tNpcGossip[21449]["tOption6-1"] = {611}
tNpcGossip[21449]["Option611"] = tPirateEpicTask_Text[21449]["Option611"]

--1-4星完成单次寻宝
tNpcGossip[21449]["Text7-1"] = {711,712,713,714}
tNpcGossip[21449]["Text711"] = tPirateEpicTask_Text[21449]["Text711"]
tNpcGossip[21449]["Text712"] = tPirateEpicTask_Text[21449]["Text712"]
tNpcGossip[21449]["Text713"] = tPirateEpicTask_Text[21449]["Text713"]
tNpcGossip[21449]["Text714"] = tPirateEpicTask_Text[21449]["Text714"]
tNpcGossip[21449]["tOption7-1"] = {711}
tNpcGossip[21449]["Option711"] = tPirateEpicTask_Text[21449]["Option711"]
--tNpcGossip[21449]["OptionFunc711"] = "PirateEpicTask_NPCClick_DirectXunBao</N>3307443</N>1"

---------------------------------物品
----------------藏宝图
--红海
tItemFace[3307443] = 1360
tItem[3307443] = tItem[3307443] or {}
tItem[3307443]["Function"] = function(nItemId,sItemName)
	PirateEpicTask_ItemUse_TreasureMap(nItemId,sItemName)
end
tItem[3307443]["Text1-1"] = {111}
tItem[3307443]["Text111"] = tPirateEpicTask_Text[3307443]["Text111"]
tItem[3307443]["tOption1-1"] = {111,112,113}
tItem[3307443]["Option111"] = tPirateEpicTask_Text[3307443]["Option111"]
tItem[3307443]["Option112"] = tPirateEpicTask_Text[3307443]["Option112"]
tItem[3307443]["Option113"] = tPirateEpicTask_Text[3307443]["Option113"]
tItem[3307443]["OptionFunc111"]="PirateEpicTask_ItemUse_TreasureMap_ClickGoDig</N>3307443</N>1"
tItem[3307443]["OptionFunc112"] = "PirateEpicTask_ItemUse_TreasureMap_ClickGoDig</N>3307443</N>10"
tItem[3307443]["OptionFunc113"] = "User_UserRandBoundTrans</N>10271</N>" .. tPirateEpicTask_Map[10271]["EnterPX"] .. "</N>" .. tPirateEpicTask_Map[10271]["EnterPY"] .. "</N>1</N>1</N>1"
tItem[3307443]["OptionChkFunc112"] = function()
	local nVIP = Get_UserVip()
	local bFirstRecharge = User_TestUserFlag(1)
	return (nVIP >= 3 or bFirstRecharge)
	-- return true
end
tItem[3307443]["OptionChkFunc113"] = function()
	local nUserId = Get_UserId()
	local nUserMapId  = Get_UserMapId(nUserId)
	
	--排除双龙城和职业大厅以及狂怒之海
	if nUserMapId == 1002 or nUserMapId == 1004 or nUserMapId == 10271 or nUserMapId == 10386 then
		return false
	end
	
	local bMapCanReturn = false
	for i,v in pairs(tPirateEpicTask_Cont["MapCanUseTreasureMap"]) do
		if nUserMapId == v then
			bMapCanReturn =true
			break
		end
	end
	
	return bMapCanReturn
end

--里海
tItemFace[3307444] = 1361
tItem[3307444] = tItem[3307444] or {}
tItem[3307444]["Function"] = function(nItemId,sItemName)
	PirateEpicTask_ItemUse_TreasureMap(nItemId,sItemName)
end
tItem[3307444]["Text1-1"] = {111}
tItem[3307444]["Text111"] = tPirateEpicTask_Text[3307444]["Text111"]
tItem[3307444]["tOption1-1"] = {111,112,113}
tItem[3307444]["Option111"] = tPirateEpicTask_Text[3307444]["Option111"]
tItem[3307444]["Option112"] = tPirateEpicTask_Text[3307444]["Option112"]
tItem[3307444]["Option113"] = tPirateEpicTask_Text[3307444]["Option113"]
tItem[3307444]["OptionFunc111"]="PirateEpicTask_ItemUse_TreasureMap_ClickGoDig</N>3307444</N>1"
tItem[3307444]["OptionFunc112"] = "PirateEpicTask_ItemUse_TreasureMap_ClickGoDig</N>3307444</N>5"
tItem[3307444]["OptionFunc113"] = "User_UserRandBoundTrans</N>10271</N>" .. tPirateEpicTask_Map[10271]["EnterPX"] .. "</N>" .. tPirateEpicTask_Map[10271]["EnterPY"] .. "</N>1</N>1</N>1"
tItem[3307444]["OptionChkFunc112"] = function()
	local nVIP = Get_UserVip()
	local bFirstRecharge = User_TestUserFlag(1)
	return (nVIP >= 3 or bFirstRecharge)
	-- return true
end
tItem[3307444]["OptionChkFunc113"] = function()
	local nUserId = Get_UserId()
	local nUserMapId  = Get_UserMapId(nUserId)
	
	--排除双龙城和职业大厅以及狂怒之海
	if nUserMapId == 1002 or nUserMapId == 1004 or nUserMapId == 10271 or nUserMapId == 10386 then
		return false
	end
	
	local bMapCanReturn = false
	for i,v in pairs(tPirateEpicTask_Cont["MapCanUseTreasureMap"]) do
		if nUserMapId == v then
			bMapCanReturn =true
			break
		end
	end
	
	return bMapCanReturn
end

--爱琴海
tItemFace[3307445] = 1362
tItem[3307445] = tItem[3307445] or {}
tItem[3307445]["Function"] = function(nItemId,sItemName)
	PirateEpicTask_ItemUse_TreasureMap(nItemId,sItemName)
end
tItem[3307445]["Text1-1"] = {111}
tItem[3307445]["Text111"] = tPirateEpicTask_Text[3307445]["Text111"]
tItem[3307445]["tOption1-1"] = {111,112,113}
tItem[3307445]["Option111"] = tPirateEpicTask_Text[3307445]["Option111"]
tItem[3307445]["Option112"] = tPirateEpicTask_Text[3307445]["Option112"]
tItem[3307445]["Option113"] = tPirateEpicTask_Text[3307445]["Option113"]
tItem[3307445]["OptionFunc111"]="PirateEpicTask_ItemUse_TreasureMap_ClickGoDig</N>3307445</N>1"
tItem[3307445]["OptionFunc112"]="PirateEpicTask_ItemUse_TreasureMap_ClickGoDig</N>3307445</N>5"
tItem[3307445]["OptionFunc113"] = "User_UserRandBoundTrans</N>10271</N>" .. tPirateEpicTask_Map[10271]["EnterPX"] .. "</N>" .. tPirateEpicTask_Map[10271]["EnterPY"] .. "</N>1</N>1</N>1"
tItem[3307445]["OptionChkFunc112"] = function()
	local nVIP = Get_UserVip()
	local bFirstRecharge = User_TestUserFlag(1)
	return (nVIP >= 3 or bFirstRecharge)
	-- return true
end
tItem[3307445]["OptionChkFunc113"] = function()
	local nUserId = Get_UserId()
	local nUserMapId  = Get_UserMapId(nUserId)
	
	--排除双龙城和职业大厅以及狂怒之海
	if nUserMapId == 1002 or nUserMapId == 1004 or nUserMapId == 10271 or nUserMapId == 10386 then
		return false
	end
	
	local bMapCanReturn = false
	for i,v in pairs(tPirateEpicTask_Cont["MapCanUseTreasureMap"]) do
		if nUserMapId == v then
			bMapCanReturn =true
			break
		end
	end
	
	return bMapCanReturn
end

--地中海
tItemFace[3307446] = 1363
tItem[3307446] = tItem[3307446] or {}
tItem[3307446]["Function"] = function(nItemId,sItemName)
	PirateEpicTask_ItemUse_TreasureMap(nItemId,sItemName)
end
tItem[3307446]["Text1-1"] = {111}
tItem[3307446]["Text111"] = tPirateEpicTask_Text[3307446]["Text111"]
tItem[3307446]["tOption1-1"] = {111,112,113}
tItem[3307446]["Option111"] = tPirateEpicTask_Text[3307446]["Option111"]
tItem[3307446]["Option112"] = tPirateEpicTask_Text[3307446]["Option112"]
tItem[3307446]["Option113"] = tPirateEpicTask_Text[3307446]["Option113"]
tItem[3307446]["OptionFunc111"]="PirateEpicTask_ItemUse_TreasureMap_ClickGoDig</N>3307446</N>1"
tItem[3307446]["OptionFunc112"]="PirateEpicTask_ItemUse_TreasureMap_ClickGoDig</N>3307446</N>5"
tItem[3307446]["OptionFunc113"] = "User_UserRandBoundTrans</N>10271</N>" .. tPirateEpicTask_Map[10271]["EnterPX"] .. "</N>" .. tPirateEpicTask_Map[10271]["EnterPY"] .. "</N>1</N>1</N>1"
tItem[3307446]["OptionChkFunc112"] = function()
	local nVIP = Get_UserVip()
	local bFirstRecharge = User_TestUserFlag(1)
	return (nVIP >= 3 or bFirstRecharge)
	-- return true
end
tItem[3307446]["OptionChkFunc113"] = function()
	local nUserId = Get_UserId()
	local nUserMapId  = Get_UserMapId(nUserId)
	
	--排除双龙城和职业大厅以及狂怒之海
	if nUserMapId == 1002 or nUserMapId == 1004 or nUserMapId == 10271 or nUserMapId == 10386 then
		return false
	end
	
	local bMapCanReturn = false
	for i,v in pairs(tPirateEpicTask_Cont["MapCanUseTreasureMap"]) do
		if nUserMapId == v then
			bMapCanReturn =true
			break
		end
	end
	
	return bMapCanReturn
end

--加勒比
tItemFace[3307447] = 1364
tItem[3307447] = tItem[3307447] or {}
tItem[3307447]["Function"] = function(nItemId,sItemName)
	PirateEpicTask_ItemUse_TreasureMap_ClickGoDig(nItemId)
end
-- tItem[3307447]["Text1-1"] = {111}
-- tItem[3307447]["Text111"] = "    使用这张藏宝图可前往加勒比海寻宝，必可获得凝聚着海神之力的至宝“海之心”。"
-- tItem[3307447]["tOption1-1"] = {111}
-- tItem[3307447]["Option111"] = "前往寻宝"
-- tItem[3307447]["OptionFunc111"]="PirateEpicTask_ItemUse_TreasureMap_ClickGoDig</N>3307447"

----------------漂流瓶
tItem[3307448] = tItem[3307448] or {}
tItem[3307448]["Function"] = function(nItemId,sItemName)
	PirateEpicTask_ItemUse_Bottle(nItemId,sItemName)
end

----------------史诗武器转换道具,海之心
tItemFace[3307449] = 1365
tItem[3307449] = tItem[3307449] or {}
tItem[3307449]["Text1-1"] = {111,112,113}
tItem[3307449]["Text111"] = tPirateEpicTask_Text[3307449]["Text111"]
tItem[3307449]["Text112"] = tPirateEpicTask_Text[3307449]["Text112"]
tItem[3307449]["Text113"] = tPirateEpicTask_Text[3307449]["Text113"]
tItem[3307449]["ChkFunc1-1"] = function()
	return true
end
tItem[3307449]["tOption1-1"] = {111,112}
tItem[3307449]["Option111"] = tPirateEpicTask_Text[3307449]["Option111"]
tItem[3307449]["OptionFunc111"]="PirateEpicTask_ItemUse_SSWeaponTransformer</N>3307449"
tItem[3307449]["Option112"] = tPirateEpicTask_Text[3307449]["Option112"]


----------------不老泉
tItem[3307450] = tItem[3307450] or {}
tItem[3307450]["Function"] = function(nItemId,sItemName)
	PirateEpicTask_ItemUse_TuckEverlasting(nItemId,sItemName)
end


---------------------------------陷阱
--狂怒之海切屏点
tTrap[1904] = tTrap[1904] or {}
tTrap[1904]["Function"] = function(nTrapId,nTrapType)
	PirateEpicTask_Exit()
end

--------------------------------------测试首充接口
-- function PirateEpicTask_Test()
	-- local nUserId = Get_UserId()
	-- if User_TestUserFlag(1,nUserId) then
		-- Sys_MsgBox("1")
		-- return true
	-- else
		-- Sys_MsgBox("2")
		-- return false
	-- end
-- end




