----------------------------------------------------------------------------
--Name:		[征服][基础数据]玩家死亡触发关联表.lua
--Purpose:	玩家死亡触发关联表
--Creator: 	郑江文
--Created:	2014/12/18
----------------------------------------------------------------------------
--玩家死亡触发关联表
tUserKilled = {}

--例：
--tUserKilled["tFunction"] = tUserKilled["tFunction"] or {}
--table.insert(tUserKilled["tFunction"],func)

-- 玩家复活触发关联表
tUserSave = {}
--例：
--tUserSave["tFunction"] = tUserSave["tFunction"] or {}
--table.insert(tUserSave["tFunction"],func)

-- 玩家锁魂触发关联表
tKeepGhost = {}
--例：
--tKeepGhost["tFunction"] = tKeepGhost["tFunction"] or {}
--table.insert(tKeepGhost["tFunction"],func)

-- 玩家解锁触发关联表
tClearKeepGhost = {}
--例：
--tClearKeepGhost["tFunction"] = tClearKeepGhost["tFunction"] or {}
--table.insert(tClearKeepGhost["tFunction"],func)

-- 个人排位赛：	赢场：
tArenicWins = {}
--例：
--tArenicWins["tFunction"] = tArenicWins["tFunction"] or {}
--table.insert(tArenicWins["tFunction"],func)

-- 个人排位赛：	参赛场
tArenicCompetes = {}
--例：
--tArenicCompetes["tFunction"] = tArenicCompetes["tFunction"] or {}
--table.insert(tArenicCompetes["tFunction"],func)

-- 组队排位赛：	赢场：
tTeamArenicWins = {}
--例：
--tTeamArenicWins["tFunction"] = tTeamArenicWins["tFunction"] or {}
--table.insert(tTeamArenicWins["tFunction"],func)

-- 组队排位赛：	参赛场
tTeamArenicCompetes = {}
--例：
--tTeamArenicCompetes["tFunction"] = tTeamArenicCompetes["tFunction"] or {}
--table.insert(tTeamArenicCompetes["tFunction"],func)

-- 骑宠，玩家冲过终点是触发
tRideArrive = {}
--例：
--tRideArrive["tFunction"] = tRideArrive["tFunction"] or {}
--table.insert(tRideArrive["tFunction"],func)

-- 武功，每次修炼时触发：
tTrainGongFu = {}
--例：
--tTrainGongFu["tFunction"] = tTrainGongFu["tFunction"] or {}
--table.insert(tTrainGongFu["tFunction"],func)

-- 服务器启动完成触发：
tServerStart = {}
--例：
--tServerStart["tFunction"] = tServerStart["tFunction"] or {}
--table.insert(tServerStart["tFunction"],func)

-- 添加内功转换
tStrengthExchange = {}
--例：
--tStrengthExchange["tFunction"] = tStrengthExchange["tFunction"] or {}
--table.insert(tStrengthExchange["tFunction"],func)

--放入外套到外套仓库调用的接口，玩家每次放物品到外套仓库时调用
tCheckInItemToCoatStorage = {}
--例：
--tCheckInItemToCoatStorage["tFunction"] = tCheckInItemToCoatStorage["tFunction"] or {}
--table.insert(tCheckInItemToCoatStorage["tFunction"],func)

--从外套仓库中取出外套调用的LUA接口，玩家每次从外套仓库中取出物品时调用
tCheckOutItemFromCoatStorage = {}
--例：
--tCheckOutItemFromCoatStorage["tFunction"] = tCheckOutItemFromCoatStorage["tFunction"] or {}
--table.insert(tCheckOutItemFromCoatStorage["tFunction"],func)

--服务端调用的lua接口
-- //练气成功后的操作
tProcessTrainingVitality = {}
--例：
--tProcessTrainingVitality["tFunction"] = tProcessTrainingVitality["tFunction"] or {}
--table.insert(tProcessTrainingVitality["tFunction"],func)

-- //修炼自创武功，替换属性后的操作
tReplaceGongfuValue = {}
--例：
--tReplaceGongfuValue["tFunction"] = tReplaceGongfuValue["tFunction"] or {}
--table.insert(tReplaceGongfuValue["tFunction"],func)

--//战旗赛结束后的操作
tAfterVexillum = {}
--例：
--tAfterVexillum["tFunction"] = tAfterVexillum["tFunction"] or {}
--table.insert(tAfterVexillum["tFunction"],func)

--//跨服战旗赛结束后的操作
tAfterCrossVexillum = {}
--例：
--tAfterCrossVexillum["tFunction"] = tAfterCrossVexillum["tFunction"] or {}
--table.insert(tAfterCrossVexillum["tFunction"],func)

-- 玩家每次获得成就，调用LUA接口UserAchivementCount，参数传入玩家当前拥有的成就数量。
tAchivementCount = {}
--例：
--tAchivementCount["tFunction"] = tAchivementCount["tFunction"] or {}
--table.insert(tAchivementCount["tFunction"],func)

-- 外套仓库外套消失时调用
tDelUserItemFromCoatStorage = {}
--例：
--tDelUserItemFromCoatStorage = tDelUserItemFromCoatStorage["tFunction"] or {}
--table.insert(tDelUserItemFromCoatStorage["tFunction"],func)

-- 智力竞赛个人奖励
tQuizPersonalReward = {}
--例：
--tQuizPersonalReward = tQuizPersonalReward["tFunction"] or {}
--table.insert(tQuizPersonalReward["tFunction"],func)

-- 智力竞赛排行奖励：
tQuizRankingsReward = {}
--例：
--tQuizRankingsReward = tQuizRankingsReward["tFunction"] or {}
--table.insert(tQuizRankingsReward["tFunction"],func)

-- BossRewardEnd 保底奖励
tBossRewardEnd = {}

-- BossDamageBonus 伤害排名奖励
tBossDamageBonus = {}

-- BossLastKnifeAward 最后一刀奖励
tBossLastKnifeAward ={}

--跨服马赛发奖
tAwardHorseRace = {}

-- //创建邀请 (调用InviteFilter创建邀请) 无参数 返回：成功返回true，失败false （对应原action 类型129）
-- SetInviteFilter
tSetInviteFilter = {}

-- //发出邀请 (调用InviteTrans发出邀请) 无参数 返回：成功返回true，失败false（对应原action 类型130）
-- SendInvite
tSendInvite = {}

-- 跨服精英PK赛奖励
tAwardCrossElite = {}


-- 节拍器重抽表
tCardsLotteryAgainCost = {}

-- 离婚触发表
tSendDivorceMail = {}

-- 怪物死亡非玩家杀死表
tProcessMonsterDie = {}

-- 节拍器首次表
tCardsLotteryRecordCost = {}

-- 全服抽奖消耗
tGlobalLotteryRecordCost = {}

-- 跨服组队PK赛奖励
tUserAwardCrossClanPKPrize = {}

-- 怪物血量分阶段触发LUA接口
tBloodTriggerLua = {}
-- 移除脚本中管理的副本ID
tProcessDelInstance = {}

-- 大都市新功能 发奖
-- 目前仅用于大都市，征服只同步接口
-- </F>GetBonusByAction</N>%lu</N>%lu
-- 后面两参数代表玩家ID和actionID
-- GetBonusByAction
tGetKOKBonusByAction = {}

--熔炼炉单抽
tMelter = {}
--熔炼炉十连抽
tTenMelter = {}

--分解符文
tRuneDecompose = {}
--符文仓库分数变化触发接口
tRuneStorageScoreRank = {}

--尾兽满级后，每升一星调用的lua
tProcessBeastsUpLev = {}


-- 播放视频结束调用任务接口
tLuaEffectEnd = {}
tLuaEffectEnd["tFunction"] = {}

--练气惊喜表触发接口
tGetFateTaskReward = {}


-- 精英PK赛发奖
tElitePkArenic = {}
tElitePkArenic["tFunction"] = {}

-- 组队PK赛发奖
tClanPkArenic = {}
tClanPkArenic["tFunction"] = {}

-- 组队大众PK赛发奖
tPopPkArenic = {}
tPopPkArenic["tFunction"] = {}

-- 炼气优化
tTrainingVitalityExpOverMax = {}
tTrainingVitalityExpOverMax["tFunction"] = {}
-- 百兵谱武器升星
tHundredWeaponUpLev = {}
tHundredWeaponUpLev["tFunction"] = {}
tGetProfLevUpReward = {}
tGetProfLevUpReward["tFunction"] = {}
-- 跨服拍卖行
tUserHasNosuchOnAuction = {}
tUserHasNosuchOnAuction["tFunction"] = {}

-- LUA拾取物品触发函数
tPickMapItem = {}
tPickMapItem["tFunction"] = {}


-- 成长基金,升级或者受到充值消息后触发
tUserUpLevWebBonus = {}
tUserUpLevWebBonus["tFunction"] = {}

-- 设置各榜发奖时的第一名玩家名字，
-- 榜类型填在cq_dyna_global_data表的data字段，玩家名字填在对应的datastr字段。
tSetRank1Name = {}
tSetRank1Name["tFunction"] = {}

--万圣节互动
tProcessInteract = {}
tProcessInteract["tFunction"] = {}

--灵珠触发
tProcessPrizeBroadcast = {}
tProcessPrizeBroadcast["tFunction"] = {}

-- 请求创建副本后触发
tProcessAfterCreateInstance = {}
tProcessAfterCreateInstance["tFunction"] = {}

--异步添加物品(贵重物品)成功后的处理
tAddAsynOSItemRet = {}

--异步删除物品(贵重物品)成功后的处理
tDelAsynOSItemRet = {}

-- 活动统计数据处理请求
tProcessUserSTCActive = {}
tProcessUserSTCActive["tFunction"] = {}

-- 升级龙灵
tProcessUserSTCActiveUplevSpirit = {}
tProcessUserSTCActiveUplevSpirit["tFunction"] = {}

-- 在跨服调用User_AddSTCActiveData的接口，程序会返回本服回调下面这个函数
tProcessOSUserSTCActiveDataOnGS = {}
tProcessOSUserSTCActiveDataOnGS["tFunction"] = {}

-- LUA跨服扣钱回调
tProcessLuaUserSpendOSMoney = {}
tProcessLuaUserSpendOSMoney["tFunction"] = {}

-- LUA观看视频后发奖
tAwardAfterWatchVideo = {}
tAwardAfterWatchVideo["tFunction"] = {}

-- 地宫成功破禁时程序调用
tProcessUserSTCActiveSealTreasure = {}
tProcessUserSTCActiveSealTreasure["tFunction"] = {}

-- 完成任务集会所任务调动
tGetTaskPrize = {}
tGetTaskPrize["tFunction"] = {}

-- 玩家洗练完，保存洗练出的属性的时候调用
tSendGouyuAptitude = {}
tSendGouyuAptitude["tFunction"] = {}

-- 勾玉分解时调用该接口通知任务分解的勾玉类型
tGouYuResolve = {}
tGouYuResolve["tFunction"] = {}

-- 获得地宫奖励时程序调用
tGiveSealedTreasureReward = {}
tGiveSealedTreasureReward["tFunction"] = {}

-- // 爵位变化 触发
tPeerageRank_Change = {}
tPeerageRank_Change["tFunction"] = {}

-- // 升级勾玉 触发
tGouYuUpLev = {}
tGouYuUpLev["tFunction"] = {}

-- // 装备开洞触发
tOnEquipmentHoldNumChange = {}
tOnEquipmentHoldNumChange["tFunction"] = {}


-- // 重铸触发
tRecastSpirit = {}
tRecastSpirit["tFunction"] = {}

-- 转服失败触发
tChangeServerFail = {}
tChangeServerFail["tFunction"] = {}


-- 	// 百兵谱铸灵触发LUA
tHWCompose = {}
tHWCompose["tFunction"] = {}

-- 	// 百兵谱炼魂触发LUA
tHWBaptize = {}
tHWBaptize["tFunction"] = {}

-- 	// 百兵谱炼魂确认触发LUA
tHWBaptizeConfirm = {}
tHWBaptizeConfirm["tFunction"] = {}

--获得玩家追加结果
tOnComposeLua = {}
tOnComposeLua["tFunction"] = {}

--获得玩家爵位捐献
tOnPeerageDonate = {}
tOnPeerageDonate["tFunction"] = {}

--获得玩家神器融合结果
tComposeXuanBao = {}
tComposeXuanBao["tFunction"] = {}

--获得玩家可以进行游玩的次数
tProcessNewSlot = {}
tProcessNewSlot["tFunction"] = {}