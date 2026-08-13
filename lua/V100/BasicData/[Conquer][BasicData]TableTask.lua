-------------------------------------------------------------------------------------------------------------------
--Name:		[征服][基础数据]任务需求表.lua
--Purpose:	任务需求表
--Creator: 	林静、郑鋆、严振飞、王倩娜、郑江文
--Created:	2015/05/13
-------------------------------------------------------------------------------------------------------------------
--任务需求表
--定义
tTaskTemplate = {}
tTaskMonster = {}		--怪物关联的任务表
tTaskAcceptNpc = {}		--接任务NPC的任务ID表
tTaskHandOverNpc = {}	--交任务NPC的任务ID表



-- 例子
--[[
taskDetail的配置索引用任务ID，stc掩码配置索引用100+stc掩码，例如stc掩码127,35的话，这边索引就是10012735

tTaskTemplate[1] = {}
tTaskTemplate[1]["ActivityType"] = 1												--任务类型
tTaskTemplate[1]["Title"] = {}														--任务标题
tTaskTemplate[1]["ActiveTime"] = {}													--任务活动时间
tTaskTemplate[1]["ActiveTimeType"] = {}												--任务活动时间格式（=1 完整的时间格式，=2 年某天时间，=3 月某天时间，=4 周某天时间，=5 日时间，=6 小时时间）

tTaskTemplate[1]["BeginNpcId"] = {}													--接任务NPC的ID
tTaskTemplate[1]["EndNpcId"] = {}													--交任务NPC的ID

-- 接受任务相关配置
tTaskTemplate[1]["IsReceived"] = {1，5}												--任务接受任务条件判断表
tTaskTemplate[1]["RevMinLevel"] = 80												--接任务需要的最低等级
tTaskTemplate[1]["RevMinMetempsychosis"] = 1										--接任务需要的最低转世
tTaskTemplate[1]["RevMaxLevel"] = 80												--接任务需要的最高等级
tTaskTemplate[1]["RevMaxMetempsychosis"] = 1										--接任务需要的最高转世
tTaskTemplate[1]["TaskId"] = 1														--任务ID（taskDetail的ID）
tTaskTemplate[1]["RevEventType"] = 1												--接受任务stc掩码
tTaskTemplate[1]["RevDataType"] = 1													--接受任务stc掩码
tTaskTemplate[1]["RevData"] = 1														--接受任务stc掩码值
tTaskTemplate[1]["FrontTask"] = 1													--前置任务ID（taskDetail的ID）
tTaskTemplate[1]["FrontEventType"] = 1												--前置任务stc掩码
tTaskTemplate[1]["FrontDataType"] = 1												--前置任务stc掩码
tTaskTemplate[1]["FrontData"] = 1													--前置任务stc掩码值
tTaskTemplate[1]["RevFunc"] = 1														--其它自己写的判断条件（这边参数类型为函数类型，记住该函数要在表配置的上面，要不然索引不到）
tTaskTemplate[1]["RevMap"] = 1														--允许做该任务的地图
tTaskTemplate[1]["RevMinCellX"] = 1													--允许做该任务的地图坐标范围
tTaskTemplate[1]["RevMaxCellX"] = 1													--允许做该任务的地图坐标范围
tTaskTemplate[1]["RevMinCellY"] = 1													--允许做该任务的地图坐标范围
tTaskTemplate[1]["RevMaxCellY"] = 1													--允许做该任务的地图坐标范围
tTaskTemplate[1]["RevMinPro"] = 1													--允许做该任务的职业范围
tTaskTemplate[1]["RevMaxPro"] = 1													--允许做该任务的职业范围
tTaskTemplate[1]["RevGang"] = 1														--允许做该任务的帮派
tTaskTemplate[1]["RevGangRank"] = 1													--允许做该任务的帮派职位
tTaskTemplate[1]["RevItem"] = 1														--持有接任务所必须的物品
tTaskTemplate[1]["RevMoney"] = 1													--持有接任务所必须的金币
tTaskTemplate[1]["RevEMoney"] = 1													--持有接任务所必须的天石
tTaskTemplate[1]["RevMonoEMoney"] = 1												--持有接任务所必须的赠品天石
tTaskTemplate[1]["RevVip"] = 1														--持有接任务所必须的VIP等级
tTaskTemplate[1]["RevTransform"] = 1												--变身状态检测
tTaskTemplate[1]["RevMinTeamNum"] = 1												--接任务要求的最少队伍人数
tTaskTemplate[1]["RevMaxTeamNum"] = 1												--接任务要求的最多队伍人数
tTaskTemplate[1]["RevSpace"] = 1													--接任务要求的背包空间

tTaskTemplate[1]["AcceptTask"] = {1}												--任务接受任务配置表
tTaskTemplate[1]["GetItemId1"] = 0													--必给的任务物品ID1
tTaskTemplate[1]["GetItemAttr1"] = ""												--必给的任务物品1属性
tTaskTemplate[1]["GetItemId2"] = 0													--必给的任务物品ID2
tTaskTemplate[1]["GetItemAttr2"] = ""												--必给的任务物品2属性
tTaskTemplate[1]["GetItemId3"] = 0													--必给的任务物品ID3
tTaskTemplate[1]["GetItemAttr3"] = ""												--必给的任务物品3属性
tTaskTemplate[1]["GetItemId4"] = 0													--必给的任务物品ID4
tTaskTemplate[1]["GetItemAttr4"] = ""												--必给的任务物品4属性
tTaskTemplate[1]["GetItemId5"] = 0													--必给的任务物品ID5
tTaskTemplate[1]["GetItemAttr5"] = ""												--必给的任务物品5属性
tTaskTemplate[1]["GetItemId6"] = 0													--必给的任务物品ID6
tTaskTemplate[1]["GetItemAttr6"] = ""												--必给的任务物品6属性
tTaskTemplate[1]["RevEffect"] = "angle"												--接任务播放的光效
tTaskTemplate[1]["RevLog"] = ""														--接任务打的log
tTaskTemplate[1]["AcceptFunc"] = ""													--接任务后自己写的函数

tTaskTemplate[1]["IsHandOver"] = {1}												--任务交任务条件配置表
tTaskTemplate[1]["RewFunc"] = 1														--其它自己写的判断条件（这边参数类型为函数类型，记住该函数要在表配置的上面，要不然索引不到）

tTaskTemplate[1]["ReqItemId1"] = 0													--交任务需要的物品1Id
tTaskTemplate[1]["ReqItemCount1"] = 1												--交任务需要的物品1数量(默认1个)
tTaskTemplate[1]["ReqItemId2"] = 0													--交任务需要的物品2Id
tTaskTemplate[1]["ReqItemCount2"] = 1												--交任务需要的物品2数量(默认1个)
tTaskTemplate[1]["ReqItemId3"] = 0													--交任务需要的物品3Id
tTaskTemplate[1]["ReqItemCount3"] = 1												--交任务需要的物品3数量(默认1个)
tTaskTemplate[1]["ReqItemId4"] = 0													--交任务需要的物品4Id
tTaskTemplate[1]["ReqItemCount4"] = 1												--交任务需要的物品4数量(默认1个)
tTaskTemplate[1]["ReqItemId5"] = 0													--交任务需要的物品5Id
tTaskTemplate[1]["ReqItemCount5"] = 1												--交任务需要的物品5数量(默认1个)
tTaskTemplate[1]["ReqItemId6"] = 0													--交任务需要的物品6Id
tTaskTemplate[1]["ReqItemCount6"] = 1												--交任务需要的物品6数量(默认1个)

tTaskTemplate[1]["ReqEventType1"] = {}												--交任务需要的stc掩码1的EventType取值表,需要和DataType部分一起使用--例如Task_ChkStatistic(nEventType,nDataType,0)
tTaskTemplate[1]["ReqDataType1"] = {}												--交任务需要的stc掩码1的DataType取值表,需要和EventType部分一起使用
tTaskTemplate[1]["ReqData1"] = {}													--交任务需要的stc掩码1的取值--例如:Task_ChkStcValue(nEventType,nDataType,"==",tTaskTemplate[1]["ReqData1"],0)
tTaskTemplate[1]["ReqEventType2"] = {}												--交任务需要的stc掩码2的EventType取值表
tTaskTemplate[1]["ReqDataType2"] = {}												--交任务需要的stc掩码2的DataType取值表
tTaskTemplate[1]["ReqData2"] = {}													--交任务需要的stc掩码2的取值
tTaskTemplate[1]["ReqEventType3"] = {}												--交任务需要的stc掩码3的EventType取值表
tTaskTemplate[1]["ReqDataType3"] = {}												--交任务需要的stc掩码3的DataType取值表
tTaskTemplate[1]["ReqData3"] = {}													--交任务需要的stc掩码3的取值
tTaskTemplate[1]["ReqEventType4"] = {}												--交任务需要的stc掩码4的EventType取值表
tTaskTemplate[1]["ReqDataType4"] = {}												--交任务需要的stc掩码4的DataType取值表
tTaskTemplate[1]["ReqData4"] = {}													--交任务需要的stc掩码4的取值
tTaskTemplate[1]["ReqEventType5"] = {}												--交任务需要的stc掩码5的EventType取值表
tTaskTemplate[1]["ReqDataType5"] = {}												--交任务需要的stc掩码5的DataType取值表
tTaskTemplate[1]["ReqData5"] = {}													--交任务需要的stc掩码5的取值
tTaskTemplate[1]["ReqEventType6"] = {}												--交任务需要的stc掩码6的EventType取值表
tTaskTemplate[1]["ReqDataType6"] = {}												--交任务需要的stc掩码6的DataType取值表
tTaskTemplate[1]["ReqData6"] = {}													--交任务需要的stc掩码6的取值

tTaskTemplate[1]["ReqMonsterId1"] = 1												--交任务需要的怪物1的怪物ID
tTaskTemplate[1]["ReqMonsterCount1"] = 1											--交任务需要的怪物1的怪物数量
tTaskTemplate[1]["ReqMonsterPos1"] = {}												--交任务需要的怪物1的taskdetai对应的data位
tTaskTemplate[1]["ReqMonsterId2"] = {}												--交任务需要的怪物2的怪物ID
tTaskTemplate[1]["ReqMonsterCount2"] = {}											--交任务需要的怪物2的怪物数量
tTaskTemplate[1]["ReqMonsterPos2"] = {}												--交任务需要的怪物2的taskdetai对应的data位
tTaskTemplate[1]["ReqMonsterId3"] = {}												--交任务需要的怪物3的怪物ID
tTaskTemplate[1]["ReqMonsterCount3"] = {}											--交任务需要的怪物3的怪物数量
tTaskTemplate[1]["ReqMonsterPos3"] = {}												--交任务需要的怪物3的taskdetai对应的data位
tTaskTemplate[1]["ReqMonsterId4"] = {}												--交任务需要的怪物4的怪物ID
tTaskTemplate[1]["ReqMonsterCount4"] = {}											--交任务需要的怪物4的怪物数量
tTaskTemplate[1]["ReqMonsterPos4"] = {}												--交任务需要的怪物4的taskdetai对应的data位
tTaskTemplate[1]["ReqMonsterId5"] = {}												--交任务需要的怪物5的怪物ID
tTaskTemplate[1]["ReqMonsterCount5"] = {}											--交任务需要的怪物5的怪物数量
tTaskTemplate[1]["ReqMonsterPos5"] = {}												--交任务需要的怪物5的taskdetai对应的data位
tTaskTemplate[1]["ReqMonsterId6"] = {}												--交任务需要的怪物6的怪物ID
tTaskTemplate[1]["ReqMonsterCount6"] = {}											--交任务需要的怪物6的怪物数量
tTaskTemplate[1]["ReqMonsterPos6"] = {}												--交任务需要的怪物6的taskdetai对应的data位


tTaskTemplate[1]["RewMoney"] = 0													--正数：奖励的金钱数，负数：完成任务需要交的金钱数
tTaskTemplate[1]["RewEMoney"] = 0													--正数：奖励的天石数，负数：完成任务需要交的天石数
tTaskTemplate[1]["RewMonoEMoney"] = 0												--正数：奖励的赠品天石数，负数：完成任务需要交的赠品天石数
tTaskTemplate[1]["RewSpace"] = 0													--完成任务需要的背包空间
tTaskTemplate[1]["RewExp"] = 0														--奖励的经验
tTaskTemplate[1]["RewExpTime"] = 0			 										--奖励的分钟经验
tTaskTemplate[1]["RewardEffect"] = 0			 									--领取奖励成功时的光效
tTaskTemplate[1]["RewCultivation"] = 0												--任务奖励的修行值
tTaskTemplate[1]["RewStrengthValue"] = 0											--任务奖励的气力值
tTaskTemplate[1]["RewardZhenQi"] = 0											--任务奖励的气力值
tTaskTemplate[1]["RewardRandom"] = {}											--任务奖励的真气值

tTaskTemplate[1]["RewItemId1"] = 0													--必给的奖励物品ID1
tTaskTemplate[1]["RewItemAttr1"] = 0												--必给的奖励物品ID1的属性
tTaskTemplate[1]["RewItemId2"] = 0													--必给的奖励物品ID2
tTaskTemplate[1]["RewItemAttr2"] = 0												--必给的奖励物品ID2的属性
tTaskTemplate[1]["RewItemId3"] = 0 													--必给的奖励物品ID3
tTaskTemplate[1]["RewItemAttr3"] = 0												--必给的奖励物品ID3的属性
tTaskTemplate[1]["RewItemId4"] = 0 													--必给的奖励物品ID4
tTaskTemplate[1]["RewItemAttr4"] = 0												--必给的奖励物品ID4的属性
tTaskTemplate[1]["RewItemId5"] = 0 													--必给的奖励物品ID5
tTaskTemplate[1]["RewItemAttr5"] = 0												--必给的奖励物品ID5的属性
tTaskTemplate[1]["RewItemId6"] = 0 													--必给的奖励物品ID6
tTaskTemplate[1]["RewItemAttr6"] = 0												--必给的奖励物品ID6的属性

tTaskTemplate[1]["RewEventType"] = 0												--领取任务奖励的stc掩码的EventType取值表
tTaskTemplate[1]["RewDataType"] = 0													--领取任务奖励的stc掩码的DataType取值表
tTaskTemplate[1]["RewData"] = 0														--领取任务奖励的stc掩码的取值
tTaskTemplate[1]["HandOverTask"] = 0												--交任务的奖励表
tTaskTemplate[1]["HandOverFunc"] = 0												--自己写的交任务函数

tTaskTemplate[1]["PostTaskId"] = 0													--后置任务ID
tTaskTemplate[1]["PostNpcId"] = 0													--后置接任务NPCID


tTaskTemplate[1]["NotActiveTime"] = "1-1"											--不在活动时间内的提示
tTaskTemplate[1]["NotLevel"] = "1-1"												--不满足等级要求提示
tTaskTemplate[1]["NotLevel"] = "1-1"												--不满足等级要求提示
tTaskTemplate[1]["MeetSex"] = "1-1"													--不满足性别要求提示
tTaskTemplate[1]["MeetTask"] = "1-1"												--不满足taskDetail任务掩码检测
tTaskTemplate[1]["MeetStc"] = "1-1"													--不满足stc任务掩码检测
tTaskTemplate[1]["MeetSpace"] = "1-1"												--背包空间不够的提示
tTaskTemplate[1]["MeetFrontTask"] = "1-1"											--不满足前置任务检测
tTaskTemplate[1]["MeetFrontStc"] = "1-1"											--不满足前置Stc检测
tTaskTemplate[1]["MeetMap"] = "1-1"													--不满足接受任务的地图坐标
tTaskTemplate[1]["MeetPro"] = "1-1"													--不满足职业要求的
tTaskTemplate[1]["MeetGang"] = "1-1"												--不满足帮派要求的
tTaskTemplate[1]["MeetGangRank"] = "1-1"											--不满足帮派职位要求的
tTaskTemplate[1]["MeetItem"] = "1-1"												--不满足持有接任务所必须的物品
tTaskTemplate[1]["MeetMoney"] = "1-1"												--不满足接任务所需要的足够的游戏币
tTaskTemplate[1]["MeetEMoney"] = "1-1"												--不满足接任务所需要的足够的天石
tTaskTemplate[1]["MeetMonoEMoney"] = "1-1"											--不满足接任务所需要的足够的赠品天石
tTaskTemplate[1]["MeetVIP"] = "1-1"													--不满足接任务所需要的足够的VIP等级
tTaskTemplate[1]["MeetTransform"] = "1-1"											--判断是否变身状态下
tTaskTemplate[1]["MeetAccept"] = "1-1"												--接任务对白

tTaskTemplate[1]["HandOverItem"] = "1-1"											--交任务时没有满足交任务的物品需求
tTaskTemplate[1]["HandOverMonster"] = "1-1"											--交任务时没有满足交任务的怪物数量需求
tTaskTemplate[1]["HandOverMoney"] = "1-1"											--交任务需求金币上限
tTaskTemplate[1]["HandOverEMoney"] = "1-1"											--交任务需求天石上限
tTaskTemplate[1]["HandOverMonoEMoney"] = "1-1"										--交任务需求赠品天石上限
tTaskTemplate[1]["HandOverSpace"] = "1-1"											--交任务需求背包空间
tTaskTemplate[1]["HandOverStc"] = "1-1"												--交任务需求stc掩码不符合

--------------------------------------------------任务怪相关的配置--------------------------
tTaskTemplate[1]["MonsterTask"] = {1}												--任务怪物的表现判断表
tTaskTemplate[1]["MonsterFunc"] = 0													--自己写的任务怪物函数
tTaskTemplate[1]["IsShare"] = 0														--是否是组队共享怪
tTaskTemplate[1]["MustSpace"] = 0													--怪物掉落需要的背包空间

tTaskTemplate[1]["NeedItemId1"] = 0													--杀怪需要的任务物品ID1（对应需要的怪物1）
tTaskTemplate[1]["NeedItemId2"] = 0													--杀怪需要的任务物品ID2（对应需要的怪物2）
tTaskTemplate[1]["NeedItemId3"] = 0													--杀怪需要的任务物品ID3（对应需要的怪物3）
tTaskTemplate[1]["NeedItemId4"] = 0													--杀怪需要的任务物品ID4（对应需要的怪物4）
tTaskTemplate[1]["NeedItemId5"] = 0													--杀怪需要的任务物品ID5（对应需要的怪物5）
tTaskTemplate[1]["NeedItemId6"] = 0													--杀怪需要的任务物品ID6（对应需要的怪物6）

tTaskTemplate[1]["NeedEffect1"] = ""												--杀怪1播放的光效
tTaskTemplate[1]["NeedEffect2"] = ""												--杀怪2播放的光效
tTaskTemplate[1]["NeedEffect3"] = ""												--杀怪3播放的光效
tTaskTemplate[1]["NeedEffect4"] = ""												--杀怪4播放的光效
tTaskTemplate[1]["NeedEffect5"] = ""												--杀怪5播放的光效
tTaskTemplate[1]["NeedEffect6"] = ""												--杀怪6播放的光效

tTaskTemplate[1]["MustFallItemId1"] = {}											--杀怪1必定掉落的任务物品1
tTaskTemplate[1]["MustFallItemId1"][1] = {}											--杀怪1必定掉落的任务物品1
tTaskTemplate[1]["MustFallItemId1"][1]["ItemId"] = {}								--杀怪1必定掉落的任务物品1的id
tTaskTemplate[1]["MustFallItemId1"][1]["ItemAttr"] = {}								--杀怪1必定掉落的任务物品1的属性
tTaskTemplate[1]["MustFallItemId1"][1]["ItemLimit"] = {}								--杀怪1必定掉落的任务物品1的数量限制
tTaskTemplate[1]["MustDropMode1"] = 1												--杀怪1必定掉落的任务物品的掉落方式（=1 怪物死亡掉落actionType801,=2 掉落在背包中）

tTaskTemplate[1]["Demand1"] = 1														--杀怪1需要的数量才能掉落任务物品
tTaskTemplate[1]["SpecificDropItemId1"] = {}										--杀怪1需要的数量才能掉落的任务物品
tTaskTemplate[1]["SpecificDropItemId1"][1] = {}										--杀怪1需要的数量才能掉落的任务物品
tTaskTemplate[1]["SpecificDropItemId1"][1]["ItemId"] = {}							--杀怪1需要的数量才能掉落的任务物品
tTaskTemplate[1]["SpecificDropItemId1"][1]["ItemAttr"] = {}							--杀怪1需要的数量才能掉落的任务物品
tTaskTemplate[1]["SpecificDropItemId1"][1]["ItemLimit"] = {}						--杀怪1需要的数量才能掉落的任务物品
tTaskTemplate[1]["SpecificDropMode1"] = 1											--杀怪1需要的数量才能掉落的任务物品的掉落方式（=1 怪物死亡掉落actionType801,=2 掉落在背包中）

tTaskTemplate[1]["ProbabilityDropItem1"] = {}										--杀怪1有概率的掉落任务物品的概率表	
tTaskTemplate[1]["ProbabilityDropIndex1"] = 1										--杀怪1有概率的掉落任务物品的概率表的索引	
tTaskTemplate[1]["ProbabilityDropMode1"] = 1										--杀怪1有概率的掉落任务物品的任务物品的掉落方式（=1 怪物死亡掉落actionType801,=2 掉落在背包中）
tTaskTemplate[1]["ProbabilityDropLimit1"] = 1										--杀怪1有概率的掉落任务物品的数量


tTaskTemplate[1]["NoNeedItemId1"] = "提示"											--没有相关任务物品1的提示
tTaskTemplate[1]["NoNeedItemId2"] = "提示"											--没有相关任务物品2的提示
tTaskTemplate[1]["NoNeedItemId3"] = "提示"											--没有相关任务物品3的提示
tTaskTemplate[1]["NoNeedItemId4"] = "提示"											--没有相关任务物品4的提示
tTaskTemplate[1]["NoNeedItemId5"] = "提示"											--没有相关任务物品5的提示
tTaskTemplate[1]["NoNeedItemId6"] = "提示"											--没有相关任务物品6的提示
tTaskTemplate[1]["NoMustSpace"] = "提示"											--没有满足怪物掉落需要的背包空间


-------------2015.10.17添加
tTaskTemplate[1]["RewardProItem"] = {}												--给职业装备奖励
tTaskTemplate[1]["RewardProItem"][1] = {}											--给职业装备奖励
tTaskTemplate[1]["RewardProItem"][1]["MinPro"] = 10									--给该职业装备奖励的最小职业ID
tTaskTemplate[1]["RewardProItem"][1]["MaxPro"] = 15									--给该职业装备奖励的最大职业ID
tTaskTemplate[1]["RewardProItem"][1]["ProItem"] = {}								--职业装备奖励表
tTaskTemplate[1]["RewardProItem"][1]["ProItem"][1] = {}								--职业装备奖励表
tTaskTemplate[1]["RewardProItem"][1]["ProItem"][1]["Id"] = {}						--职业装备的物品ID
tTaskTemplate[1]["RewardProItem"][1]["ProItem"][1]["Attr"] = {}						--职业装备的物品属性

tTaskTemplate[1]["RevPosX"] = 10													--接受任务后自动寻路的坐标
tTaskTemplate[1]["RevPosY"] = 10													--接受任务后自动寻路的坐标
tTaskTemplate[1]["RevMapId"] = 1002													--接受任务后自动寻路的地图
tTaskTemplate[1]["RevNpcId"] = 1002													--接受任务后自动寻路的NPCID

tTaskTemplate[1]["Data1"] = 1														--交任务时检测taskdetail的DATA1的值
tTaskTemplate[1]["Data2"] = 1														--交任务时检测taskdetail的DATA2的值
tTaskTemplate[1]["Data3"] = 1														--交任务时检测taskdetail的DATA3的值
tTaskTemplate[1]["Data4"] = 1														--交任务时检测taskdetail的DATA4的值
tTaskTemplate[1]["Data5"] = 1														--交任务时检测taskdetail的DATA5的值
tTaskTemplate[1]["Data6"] = 1														--交任务时检测taskdetail的DATA6的值

tTaskTemplate[1]["KillMonsterFunc"] = function										--杀怪满足交任务时怪物数量弹出提示
tTaskTemplate[1]["ReqItemFunc"] = function											--杀怪满足交任务时物品数量弹出提示

tTaskTemplate[1]["RewLog"] = ""														--交任务时打的log

----------转世等级等于配置的需要判断人物等级，转世等级大于配置的不用判断人物等级
tTaskTemplate[1]["RevLevel"] = 1													--接任务需要的最高转世
tTaskTemplate[1]["RevMetempsychosis"] = 1											--接任务需要的最高转世

--]]