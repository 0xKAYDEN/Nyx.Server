----------------------------------------------------------------------------
--Name:		[征服][公用函数]程序触发.lua
--Purpose:	程序触发
--Creator: 	郑江文
--Created:	2014/12/18

--玩家杀人触发
-- 参数1：玩家id
-- 参数2：目标玩家id
function Event_Kill_User(nUserId,nTargetId)
	-- local nKillerId = Get_UserId()

	--各自活动有需求死亡的逻辑封装成函数插入表中。
	local nEvent_Loop = 0
	if type(tUserKilled["tFunction"]) == "table" then
		for _,func in ipairs(tUserKilled["tFunction"]) do
			if nEvent_Loop > G_CalculateLoop then
				Sys_SaveAbnormalLog("函数 Event_Kill_User 中 [for]循环超过1000次！")
				break
			end
			nEvent_Loop = nEvent_Loop + 1
			if func ~= nil and type(func) == "function" then
				func(nUserId,nTargetId)
			end
		end
	end
end

-- 玩家使用复活触发
-- 参数1：玩家id
-- 参数2：目标玩家id
function Event_Save_User(nUserId,nTargetId)
	local nEvent_Loop = 0
	if type(tUserSave["tFunction"]) == "table" then
		for _,func in ipairs(tUserSave["tFunction"]) do
			if nEvent_Loop > G_CalculateLoop then
				Sys_SaveAbnormalLog("函数 Event_Save_User 中 [for]循环超过1000次！")
				break
			end
			nEvent_Loop = nEvent_Loop + 1
			if func ~= nil and type(func) == "function" then
				func(nUserId,nTargetId)
			end
		end
	end
end

-- 玩家使用锁人触发
-- 参数1：施放者id
-- 参数2：目标id
function Event_KeepGhost(nUserId,nTargetId)
	local nEvent_Loop = 0
	if type(tKeepGhost["tFunction"]) == "table" then
		for _,func in ipairs(tKeepGhost["tFunction"]) do
			if nEvent_Loop > G_CalculateLoop then
				Sys_SaveAbnormalLog("函数 Event_KeepGhost 中 [for]循环超过1000次！")
				break
			end
			nEvent_Loop = nEvent_Loop + 1
			if func ~= nil and type(func) == "function" then
				func(nUserId,nTargetId)
			end
		end
	end
end

-- 玩家使用解锁
-- 参数1：玩家id
-- 参数2：目标玩家id
function Event_ClearKeepGhost(nUserId,nTargetId)
	local nEvent_Loop = 0
	if type(tClearKeepGhost["tFunction"]) == "table" then
		for _,func in ipairs(tClearKeepGhost["tFunction"]) do
			if nEvent_Loop > G_CalculateLoop then
				Sys_SaveAbnormalLog("函数 Event_ClearKeepGhost 中 [for]循环超过1000次！")
				break
			end
			nEvent_Loop = nEvent_Loop + 1
			if func ~= nil and type(func) == "function" then
				func(nUserId,nTargetId)
			end
		end
	end
end

-- 个人排位赛：	赢场：
-- 参1，玩家id，参2，场数
function UserArenicWins(nUserId,nFieldNum)
	local nEvent_Loop = 0
	if type(tArenicWins["tFunction"]) == "table" then
		for _,func in ipairs(tArenicWins["tFunction"]) do
			if nEvent_Loop > G_CalculateLoop then
				Sys_SaveAbnormalLog("函数 UserArenicWins 中 [for]循环超过1000次！")
				break
			end
			nEvent_Loop = nEvent_Loop + 1
			if func ~= nil and type(func) == "function" then
				func(nUserId,nFieldNum)
			end
		end
	end
end

-- 个人排位赛：	参赛场：
-- 参1，玩家id，参2，场数
function UserArenicCompetes(nUserId,nFieldNum)
	local nEvent_Loop = 0
	if type(tArenicCompetes["tFunction"]) == "table" then
		for _,func in ipairs(tArenicCompetes["tFunction"]) do
			if nEvent_Loop > G_CalculateLoop then
				Sys_SaveAbnormalLog("函数 UserArenicCompetes 中 [for]循环超过1000次！")
				break
			end
			nEvent_Loop = nEvent_Loop + 1
			if func ~= nil and type(func) == "function" then
				func(nUserId,nFieldNum)
			end
		end
	end
end

-- 组队排位赛：	赢场：
-- 参1，玩家id，参2，场数
function TeamArenicWins(nUserId,nFieldNum)
	local nEvent_Loop = 0
	if type(tTeamArenicWins["tFunction"]) == "table" then
		for _,func in ipairs(tTeamArenicWins["tFunction"]) do
			if nEvent_Loop > G_CalculateLoop then
				Sys_SaveAbnormalLog("函数 TeamArenicWins 中 [for]循环超过1000次！")
				break
			end
			nEvent_Loop = nEvent_Loop + 1
			if func ~= nil and type(func) == "function" then
				func(nUserId,nFieldNum)
			end
		end
	end
end

-- 组队排位赛：	参赛场：
-- 参1，玩家id，参2，场数
function TeamArenicCompetes(nUserId,nFieldNum)
	local nEvent_Loop = 0
	if type(tTeamArenicCompetes["tFunction"]) == "table" then
		for _,func in ipairs(tTeamArenicCompetes["tFunction"]) do
			if nEvent_Loop > G_CalculateLoop then
				Sys_SaveAbnormalLog("函数 TeamArenicCompetes 中 [for]循环超过1000次！")
				break
			end
			nEvent_Loop = nEvent_Loop + 1
			if func ~= nil and type(func) == "function" then
				func(nUserId,nFieldNum)
			end
		end
	end
end

-- 骑宠，玩家冲过终点是触发
-- 参数1，玩家ID
function RideArriveTerminal(nUserId)
	local nEvent_Loop = 0
	if type(tRideArrive["tFunction"]) == "table" then
		for _,func in ipairs(tRideArrive["tFunction"]) do
			if nEvent_Loop > G_CalculateLoop then
				Sys_SaveAbnormalLog("函数 RideArriveTerminal 中 [for]循环超过1000次！")
				break
			end
			nEvent_Loop = nEvent_Loop + 1
			if func ~= nil and type(func) == "function" then
				func(nUserId)
			end
		end
	end
end

-- 武功，每次修炼时触发：
-- 参数1：玩家id 参数2：玩家当日修炼次数
function TrainingGongfu(nUserId,nTrainNum)
	local nEvent_Loop = 0
	if type(tTrainGongFu["tFunction"]) == "table" then
		for _,func in ipairs(tTrainGongFu["tFunction"]) do
			if nEvent_Loop > G_CalculateLoop then
				Sys_SaveAbnormalLog("函数 TrainingGongfu 中 [for]循环超过1000次！")
				break
			end
			nEvent_Loop = nEvent_Loop + 1
			if func ~= nil and type(func) == "function" then
				func(nUserId,nTrainNum)
			end
		end
	end
end

-- 服务端启动触发
function Event_Server_Start()
	local nEvent_Loop = 0
	if type(tServerStart["tFunction"]) == "table" then
		for _,func in ipairs(tServerStart["tFunction"]) do
			if nEvent_Loop > G_CalculateLoop then
				Sys_SaveAbnormalLog("函数 Event_Server_Start 中 [for]循环超过1000次！")
				break
			end
			nEvent_Loop = nEvent_Loop + 1
			if func ~= nil and type(func) == "function" then
				func()
			end
		end
	end
end

-- 添加内功转换
-- 第一个参数是目标玩家ID
function InnerStrength_Exchange(nChangeUserId,nUserId)
	-- local nUserId = Get_UserId()
	local nEvent_Loop = 0
	if type(tStrengthExchange["tFunction"]) == "table" then
		for _,func in ipairs(tStrengthExchange["tFunction"]) do
			if nEvent_Loop > G_CalculateLoop then
				Sys_SaveAbnormalLog("函数 InnerStrength_Exchange 中 [for]循环超过1000次！")
				break
			end
			nEvent_Loop = nEvent_Loop + 1
			if func ~= nil and type(func) == "function" then
				func(nUserId,nChangeUserId)
			end
		end
	end
end

-- 2016.01.07 添加外套仓库类函数
-- 放入外套到外套仓库调用的接口，玩家每次放物品到外套仓库时调用
function UserCheckInItemToCoatStorage(nUserId,nFlag)
	local nEvent_Loop = 0
	if type(tCheckInItemToCoatStorage["tFunction"]) == "table" then
		for _,func in ipairs(tCheckInItemToCoatStorage["tFunction"]) do
			if nEvent_Loop > G_CalculateLoop then
				Sys_SaveAbnormalLog("函数 UserCheckInItemToCoatStorage 中 [for]循环超过1000次！")
				break
			end
			nEvent_Loop = nEvent_Loop + 1
			if func ~= nil and type(func) == "function" then
				func(nUserId,nFlag)
			end
		end
	end
end

-- 2、从外套仓库中取出外套调用的LUA接口，玩家每次从外套仓库中取出物品时调用
function UserCheckOutItemFromCoatStorage(nUserId,nFlag)
	local nEvent_Loop = 0
	if type(tCheckOutItemFromCoatStorage["tFunction"]) == "table" then
		for _,func in ipairs(tCheckOutItemFromCoatStorage["tFunction"]) do
			if nEvent_Loop > G_CalculateLoop then
				Sys_SaveAbnormalLog("函数 UserCheckOutItemFromCoatStorage 中 [for]循环超过1000次！")
				break
			end
			nEvent_Loop = nEvent_Loop + 1
			if func ~= nil and type(func) == "function" then
				func(nUserId,nFlag)
			end
		end
	end
end

-- 服务端调用的lua接口
--//练气成功后的操作
-- 函数名：ProcessAfterTrainingVitality
-- 参数1：玩家id

function ProcessAfterTrainingVitality(nUserId)
	local nEvent_Loop = 0
	if type(tProcessTrainingVitality["tFunction"]) == "table" then
		for _,func in ipairs(tProcessTrainingVitality["tFunction"]) do
			if nEvent_Loop > G_CalculateLoop then
				Sys_SaveAbnormalLog("函数 ProcessAfterTrainingVitality 中 [for]循环超过1000次！")
				break
			end
			nEvent_Loop = nEvent_Loop + 1
			if func ~= nil and type(func) == "function" then
				func(nUserId)
			end
		end
	end
end

-- //修炼自创武功，替换属性后的操作
-- 函数名：ProcessAfterReplaceGongfuValue
-- 参数1：玩家id
-- 参数2：属性是否变化

function ProcessAfterReplaceGongfuValue(nUserId,nFlag)
	local nEvent_Loop = 0
	if type(tReplaceGongfuValue["tFunction"]) == "table" then
		for _,func in ipairs(tReplaceGongfuValue["tFunction"]) do
			if nEvent_Loop > G_CalculateLoop then
				Sys_SaveAbnormalLog("函数 ProcessAfterReplaceGongfuValue 中 [for]循环超过1000次！")
				break
			end
			nEvent_Loop = nEvent_Loop + 1
			if func ~= nil and type(func) == "function" then
				func(nUserId,nFlag)
			end
		end
	end
end

-- //战旗赛结束后的操作
-- 函数名：ProcessAfterVexillum
-- 无参数：
function ProcessAfterVexillum()
	local nEvent_Loop = 0
	if type(tAfterVexillum["tFunction"]) == "table" then
		for _,func in ipairs(tAfterVexillum["tFunction"]) do
			if nEvent_Loop > G_CalculateLoop then
				Sys_SaveAbnormalLog("函数 ProcessAfterVexillum 中 [for]循环超过1000次！")
				break
			end
			nEvent_Loop = nEvent_Loop + 1
			if func ~= nil and type(func) == "function" then
				func()
			end
		end
	end
end

-- //跨服战旗赛结束后的操作
-- 函数名：ProcessAfterCrossVexillum
-- 无参数：
function ProcessAfterCrossVexillum()
	local nEvent_Loop = 0
	if type(tAfterCrossVexillum["tFunction"]) == "table" then
		for _,func in ipairs(tAfterCrossVexillum["tFunction"]) do
			if nEvent_Loop > G_CalculateLoop then
				Sys_SaveAbnormalLog("函数 ProcessAfterCrossVexillum 中 [for]循环超过1000次！")
				break
			end
			nEvent_Loop = nEvent_Loop + 1
			if func ~= nil and type(func) == "function" then
				func()
			end
		end
	end
end

-- 玩家每次获得成就，调用LUA接口UserAchivementCount，参数传入玩家当前拥有的成就数量。
-- UserAchivementCount函数由任务部实现，功能如下：
-- 判断玩家成就数量是否超过一定值，若超过，获得称号（调用AwardTitle）

function UserAchivementCount(nAchivementNum,nUserId)
	local nEvent_Loop = 0
	if type(tAchivementCount["tFunction"]) == "table" then
		for _,func in ipairs(tAchivementCount["tFunction"]) do
			if nEvent_Loop > G_CalculateLoop then
				Sys_SaveAbnormalLog("函数 UserAchivementCount 中 [for]循环超过1000次！")
				break
			end
			nEvent_Loop = nEvent_Loop + 1
			if func ~= nil and type(func) == "function" then
				func(nAchivementNum,nUserId)
			end
		end
	end
end

-- 2016.02.16
-- 外套仓库内删除外套时触发。例如：时效外套到期后消失
function DelUserItemFromCoatStorage(nUserId,nFlag)
	local nEvent_Loop = 0
	if type(tDelUserItemFromCoatStorage["tFunction"]) == "table" then
		for _,func in ipairs(tDelUserItemFromCoatStorage["tFunction"]) do
			if nEvent_Loop > G_CalculateLoop then
				Sys_SaveAbnormalLog("函数 DelUserItemFromCoatStorage 中 [for]循环超过1000次！")
				break
			end
			nEvent_Loop = nEvent_Loop + 1
			if func ~= nil and type(func) == "function" then
				func(nUserId,nFlag)
			end
		end
	end
end

-- 2016.05.17  战士翻身
-- 发奖调用的lua接口：(备注：此接口请尽量只做通过发邮件lua接口发送奖励的操作)
-- 智力竞赛个人奖励：
-- QuizPersonalReward(idUser)

function QuizPersonalReward(nUserId)
	local nEvent_Loop = 0
	if type(tQuizPersonalReward["tFunction"]) == "table" then
		for _,func in ipairs(tQuizPersonalReward["tFunction"]) do
			if nEvent_Loop > G_CalculateLoop then
				Sys_SaveAbnormalLog("函数 QuizPersonalReward 中 [for]循环超过1000次！")
				break
			end
			nEvent_Loop = nEvent_Loop + 1
			if func ~= nil and type(func) == "function" then
				func(nUserId)
			end
		end
	end
end

-- 智力竞赛排行奖励：
-- QuizRankingsReward(idUser, nRank)
function QuizRankingsReward(nUserId,nRank)
	local nEvent_Loop = 0
	if type(tQuizRankingsReward["tFunction"]) == "table" then
		for _,func in ipairs(tQuizRankingsReward["tFunction"]) do
			if nEvent_Loop > G_CalculateLoop then
				Sys_SaveAbnormalLog("函数 QuizRankingsReward 中 [for]循环超过1000次！")
				break
			end
			nEvent_Loop = nEvent_Loop + 1
			if func ~= nil and type(func) == "function" then
				func(nUserId,nRank)
			end
		end
	end
end

---------------------函数封装
-- BossRewardEnd 保底奖励
-- BossRewardEnd(server_id, user_id, rank, dmg, monster_id)
function BossRewardEnd(nServerId,nUserId,nRank,nDmg,nMonsterId)
	local nMonsterType = Get_MonsterType(nMonsterId)
	local nEvent_Loop = 0
	
	if tBossRewardEnd[nMonsterType] == nil then
		return
	end
	
	if type(tBossRewardEnd[nMonsterType]["tFunction"]) == "table" then
		for _,func in ipairs(tBossRewardEnd[nMonsterType]["tFunction"]) do
			if nEvent_Loop > G_CalculateLoop then
				Sys_SaveAbnormalLog("函数 BossRewardEnd 中 [for]循环超过1000次！")
				break
			end
			nEvent_Loop = nEvent_Loop + 1
			if func ~= nil and type(func) == "function" then
				func(nServerId,nUserId,nRank,nDmg,nMonsterType)
			end
		end
	end
end

-- BossDamageBonus 伤害排名奖励
--BossDamageBonus(server_id, user_id, rank, dmg, monster_id)
function BossDamageBonus(nServerId,nUserId,nRank,nDmg,nMonsterId)
	local nMonsterType = Get_MonsterType(nMonsterId)
	local nEvent_Loop = 0
	
	if tBossDamageBonus[nMonsterType] == nil then
		return
	end
	
	if type(tBossDamageBonus[nMonsterType]["tFunction"]) == "table" then
		for _,func in ipairs(tBossDamageBonus[nMonsterType]["tFunction"]) do
			if nEvent_Loop > G_CalculateLoop then
				Sys_SaveAbnormalLog("函数 BossDamageBonus 中 [for]循环超过1000次！")
				break
			end
			nEvent_Loop = nEvent_Loop + 1
			if func ~= nil and type(func) == "function" then
				func(nServerId,nUserId,nRank,nDmg,nMonsterType)
			end
		end
	end
end

-- BossLastKnifeAward 最后一刀奖励
--BossLastKnifeAward(server_id, user_id, monster_id)
function BossLastKnifeAward(nServerId,nUserId,nMonsterId)
	local nMonsterType = Get_MonsterType(nMonsterId)
	local nEvent_Loop = 0
	
	if tBossLastKnifeAward[nMonsterType] == nil then
		return
	end
	
	if type(tBossLastKnifeAward[nMonsterType]["tFunction"]) == "table" then
		for _,func in ipairs(tBossLastKnifeAward[nMonsterType]["tFunction"]) do
			if nEvent_Loop > G_CalculateLoop then
				Sys_SaveAbnormalLog("函数 BossLastKnifeAward 中 [for]循环超过1000次！")
				break
			end
			nEvent_Loop = nEvent_Loop + 1
			if func ~= nil and type(func) == "function" then
				func(nServerId,nUserId,nMonsterType)
			end
		end
	end
end

--跨服马赛发奖
function AwardHorseRace(nUserId,nRank)
	local nEvent_Loop = 0
	if type(tAwardHorseRace["tFunction"]) == "table" then
		for _,func in ipairs(tAwardHorseRace["tFunction"]) do
			if nEvent_Loop > G_CalculateLoop then
				Sys_SaveAbnormalLog("函数 AwardHorseRace 中 [for]循环超过1000次！")
				break
			end
			nEvent_Loop = nEvent_Loop + 1
			if func ~= nil and type(func) == "function" then
				func(nUserId,nRank)
			end
		end
	end
end


-- //创建邀请 (调用InviteFilter创建邀请) 无参数 返回：成功返回true，失败false （对应原action 类型129）
-- SetInviteFilter
function SetInviteFilter()
	local nEvent_Loop = 0
	if type(tSetInviteFilter["tFunction"]) == "table" then
		for _,func in ipairs(tSetInviteFilter["tFunction"]) do
			if nEvent_Loop > G_CalculateLoop then
				Sys_SaveAbnormalLog("函数 SetInviteFilter 中 [for]循环超过1000次！")
				break
			end
			nEvent_Loop = nEvent_Loop + 1
			if func ~= nil and type(func) == "function" then
				func()
			end
		end
	end
end

-- //发出邀请 (调用InviteTrans发出邀请) 无参数 返回：成功返回true，失败false（对应原action 类型130）
-- SendInvite
function SendInvite()
	local nEvent_Loop = 0
	if type(tSendInvite["tFunction"]) == "table" then
		for _,func in ipairs(tSendInvite["tFunction"]) do
			if nEvent_Loop > G_CalculateLoop then
				Sys_SaveAbnormalLog("函数 SendInvite 中 [for]循环超过1000次！")
				break
			end
			nEvent_Loop = nEvent_Loop + 1
			if func ~= nil and type(func) == "function" then
				func()
			end
		end
	end
end

-- const char STR_LUA_FUNCTION_USER_AWARD_CROSS_ELITE_PRIZE[] = "</F>UserAwardCrossElitePrize</N>%lu</N>%d</N>%d";
-- 通过邮件发奖，玩家可能不在线， 第一个参数为玩家ID，第二个参数为组别，第三个参数为排名
function UserAwardCrossElitePrize(nUserId,nGroup,nRank)
	local nEvent_Loop = 0
	if type(tAwardCrossElite["tFunction"]) == "table" then
		for _,func in ipairs(tAwardCrossElite["tFunction"]) do
			if nEvent_Loop > G_CalculateLoop then
				Sys_SaveAbnormalLog("函数 UserAwardCrossElitePrize 中 [for]循环超过1000次！")
				break
			end
			nEvent_Loop = nEvent_Loop + 1
			if func ~= nil and type(func) == "function" then
				func(nUserId,nGroup,nRank)
			end
		end
	end
end

-- // 玩家点再次重新，参1：idUser表示玩家ID，参2：nType表示节拍器类型，成功返回true，失败返回false
-- bool CardsLotteryAgainCost(OBJID idUser, int nType);
-- 注：此接口函数由脚本实现，内部扣除再次重新的物品，内部自行判断扣除成功后，再调用CardsLotteryBegin接口实现打开抽奖界面。

function CardsLotteryAgainCost(nUserId,nType)

	if tCardsLotteryAgainCost[nType] == nil then
		return
	end
	
	local nEvent_Loop = 0
	if type(tCardsLotteryAgainCost[nType]["tFunction"]) == "table" then
		for _,func in ipairs(tCardsLotteryAgainCost[nType]["tFunction"]) do
			if nEvent_Loop > G_CalculateLoop then
				Sys_SaveAbnormalLog("函数 CardsLotteryAgainCost 中 [for]循环超过1000次！")
				break
			end
			nEvent_Loop = nEvent_Loop + 1
			if func ~= nil and type(func) == "function" then
				func(nUserId,nType)
			end
		end
	end
end

--2016 11 10
-- #服务端补丁：zfbug7367-89.1-qcs-rc2.diff
-- #lua脚本需新增函数供服务端调用：
-- #SendDivorceMail(idReciever)
-- #参数1：邮件接收者

function SendDivorceMail(idReciever)
	local nEvent_Loop = 0
	if type(tSendDivorceMail["tFunction"]) == "table" then
		for _,func in ipairs(tSendDivorceMail["tFunction"]) do
			if nEvent_Loop > G_CalculateLoop then
				Sys_SaveAbnormalLog("函数 SendDivorceMail 中 [for]循环超过1000次！")
				break
			end
			nEvent_Loop = nEvent_Loop + 1
			if func ~= nil and type(func) == "function" then
				func(idReciever)
			end
		end
	end
end

-- 处理非玩家杀死怪物
-- ProcessMonsterDie(idMonster)
function ProcessMonsterDie(idMonster)
	local nEvent_Loop = 0
	if type(tProcessMonsterDie["tFunction"]) == "table" then
		for _,func in ipairs(tProcessMonsterDie["tFunction"]) do
			if nEvent_Loop > G_CalculateLoop then
				Sys_SaveAbnormalLog("函数 ProcessMonsterDie 中 [for]循环超过1000次！")
				break
			end
			nEvent_Loop = nEvent_Loop + 1
			if func ~= nil and type(func) == "function" then
				func(idMonster)
			end
		end
	end
end


--------------2017.1.3
------首次触发翻牌器
-- // idUser表示玩家ID， nType表示抽奖类型, nCostType表示消耗类型, nCostValue1、nCostValue2表示消耗值
-- CardsLotteryRecordCost(OBJID idUser, int nType, int nCostType, int nCostValue1, int nCostValue2);
-- nCostType:
-- 1表示天石 (nCostValue1表示消耗值)
-- 2表示赠天石(赠不够，扣非赠) (nCostValue1表示扣的赠天石值, nCostValue2表示扣的非赠天石值)
-- 3表示金币 (nCostValue1表示消耗值)
-- 4表示骑马积分 (nCostValue1表示消耗值)
-- 5表示黄金联赛积分 (nCostValue1表示消耗值)
-- 6表示气力值 (nCostValue1表示消耗值)
-- 7表示赠物品 (nCostValue1表示消耗值,nCostValue2表示消耗的物品ID)
-- 8表示非赠物品 (nCostValue1表示消耗值,nCostValue2表示消耗的物品ID)
-- 9表示先扣赠再扣非赠物品 (nCostValue1表示消耗值,nCostValue2表示消耗的物品ID)

function CardsLotteryRecordCost(nUserId,nType,nCostType,nCostValue1,nCostValue2)
	if tCardsLotteryRecordCost[nType] == nil then
		return
	end

	local nEvent_Loop = 0
	if type(tCardsLotteryRecordCost[nType]["tFunction"]) == "table" then
		for _,func in ipairs(tCardsLotteryRecordCost[nType]["tFunction"]) do
			if nEvent_Loop > G_CalculateLoop then
				Sys_SaveAbnormalLog("函数 CardsLotteryRecordCost 中 [for]循环超过1000次！")
				break
			end
			nEvent_Loop = nEvent_Loop + 1
			if func ~= nil and type(func) == "function" then
				func(nUserId,nType,nCostType,nCostValue1,nCostValue2)
			end
		end
	end
end

--------------2017.4.10
-- // 全服抽奖消耗lua接口；参数1：idUser表示玩家ID，参数2：nType表示抽奖类型，参数3：nCostType表示消耗类型，参数4：nMonopoly表示赠与非赠，参数5：nCostValue1表示消耗值1，参数6：nCostValue2表示消耗值2
-- void GlobalLotteryRecordCost(OBJID idUser, int nType, int nCostType,  int nMonopoly, int nCostValue1, int nCostValue2)

-- 注：
-- a、nCostType如果是物品时，nCostValue1值为定值1恒定消耗1个，nCostValue2表示物品类型即cq_itemtype表里的id
-- b、nCostType如果是天石， nMonopoly为0时，nCostValue1表示扣的赠品天石, nCostValue2表示扣的非赠品天石

-- nMonopoly值定义：
-- 0表示先扣赠再扣非赠
-- 1表示只扣赠
-- 2表示只扣非赠

function GlobalLotteryRecordCost(nUserId,nType,nCostType,nMonopoly,nCostValue1,nCostValue2)
	if tGlobalLotteryRecordCost[nType] == nil then
		return
	end

	local nEvent_Loop = 0
	if type(tGlobalLotteryRecordCost[nType]["tFunction"]) == "table" then
		for _,func in ipairs(tGlobalLotteryRecordCost[nType]["tFunction"]) do
			if nEvent_Loop > G_CalculateLoop then
				Sys_SaveAbnormalLog("函数 GlobalLotteryRecordCost 中 [for]循环超过1000次！")
				break
			end
			nEvent_Loop = nEvent_Loop + 1
			if func ~= nil and type(func) == "function" then
				func(nUserId,nType,nCostType,nMonopoly,nCostValue1,nCostValue2)
			end
		end
	end
end

---------------2017.4.27
-- // UserAwardCrossClanPKPrize(OBJID idGSLeader, int nGroup, int nRank) Group:0(0, 100) 1[100, 120) 2[120, 130) 3[130, 无穷大)；Rank：1: 冠军 2: 亚军 3: 季军 4: 四强, 8:入围
-- const char STR_LUA_FUNCTION_USER_AWARD_CROSS_CLAN_PK_PRIZE[] = "</F>UserAwardCrossClanPKPrize</N>%lu</N>%d</N>%d";

function UserAwardCrossClanPKPrize(nUserId,nGroup,nRank)
	local nEvent_Loop = 0
	if type(tUserAwardCrossClanPKPrize["tFunction"]) == "table" then
		for _,func in ipairs(tUserAwardCrossClanPKPrize["tFunction"]) do
			if nEvent_Loop > G_CalculateLoop then
				Sys_SaveAbnormalLog("函数 UserAwardCrossClanPKPrize 中 [for]循环超过1000次！")
				break
			end
			nEvent_Loop = nEvent_Loop + 1
			if func ~= nil and type(func) == "function" then
				func(nUserId,nGroup,nRank)
			end
		end
	end
end




-- 脚本需新增LUA函数BloodTriggerLua供服务端调用，该函数接收3个参数，
-- 参数1：怪物ID，参数2：上次触发LUA函数血量占最大血量的百分比，参数3：当前血量占最大血量的百分比。
-- 这里的百分比均是乘以100后的结果，如参数值为80表示最大血量的80%。
function BloodTriggerLua(nMonsterId,nLastBloodPercent,nCurrentBloodPercent)
	local nMonsterType = Get_MonsterType(nMonsterId)
	if tBloodTriggerLua[nMonsterType] == nil then
		return
	end
	
	local nEvent_Loop = 0
	if type(tBloodTriggerLua[nMonsterType]["tFunction"]) == "table" then
		for _,func in ipairs(tBloodTriggerLua[nMonsterType]["tFunction"]) do
			if nEvent_Loop > G_CalculateLoop then
				Sys_SaveAbnormalLog("函数 BloodTriggerLua 中 [for]循环超过1000次！")
				break
			end
			nEvent_Loop = nEvent_Loop + 1
			if func ~= nil and type(func) == "function" then
				func(nMonsterType,nLastBloodPercent,nCurrentBloodPercent)
			end
		end
	end
end


----2018.1.26
-- // 统计红包lua接口(任务实现)
-- StatisticRedEnvelops(idUser, nSendType, nMoneyType, nMoney, nPassword)
-- idUser：不为0表示玩家发送的红包，为0表示系统发送的红包。
-- nSendType：发送的范围
-- 1：家庭
-- 2：帮派
-- 3：联盟
-- 4：世界
-- 5：好友
-- nMoneyType：红包类型
-- 1：天石
-- 2：金币
-- 3：赠点
-- nMoney：金额总额
-- nPassword：是否是口令红包
-- 0：不是口令红包
-- 1：是口令红包
function StatisticRedEnvelops(nUserId, nSendType, nMoneyType, nMoney, nPassword)	
	local nEvent_Loop = 0
	if type(tStatisticRedEnvelops["tFunction"]) == "table" then
		for _,func in ipairs(tStatisticRedEnvelops["tFunction"]) do
			if nEvent_Loop > G_CalculateLoop then
				Sys_SaveAbnormalLog("函数 StatisticRedEnvelops 中 [for]循环超过1000次！")
				break
			end
			nEvent_Loop = nEvent_Loop + 1
			if func ~= nil and type(func) == "function" then
				func(nUserId, nSendType, nMoneyType, nMoney, nPassword)
			end
		end
	end
end

-- 脚本需要实现的lua函数：
-- // 移除脚本中管理的副本ID
-- ProcessDelInstance(OBJID idInstance);
-- 注：del  l是小写的， Instance中的I是大写的。
function ProcessDelInstance(idInstance)
	local nEvent_Loop = 0
	if type(tProcessDelInstance["tFunction"]) == "table" then
		for _,func in ipairs(tProcessDelInstance["tFunction"]) do
			if nEvent_Loop > G_CalculateLoop then
				Sys_SaveAbnormalLog("函数 ProcessDelInstance 中 [for]循环超过1000次！")
				break
			end
			nEvent_Loop = nEvent_Loop + 1
			if func ~= nil and type(func) == "function" then
				func(idInstance)
			end
		end
	end
end

-- 大都市新功能 发奖
-- 目前仅用于大都市，征服只同步接口
-- </F>GetBonusByAction</N>%lu</N>%lu
-- 后面两参数代表玩家ID和actionID
-- GetBonusByAction
function GetKOKBonusByAction(nUserId,nActionId)
	local nEvent_Loop = 0
	if type(tGetKOKBonusByAction["tFunction"]) == "table" then
		for _,func in ipairs(tGetKOKBonusByAction["tFunction"]) do
			if nEvent_Loop > G_CalculateLoop then
				Sys_SaveAbnormalLog("函数 GetKOKBonusByAction 中 [for]循环超过1000次！")
				break
			end
			nEvent_Loop = nEvent_Loop + 1
			if func ~= nil and type(func) == "function" then
				func(nUserId,nActionId)
			end
		end
	end
end


----2018.8.22
--熔炼炉单抽
--参1：玩家ID，参2：奖励类型，参3：数值(type=物品时, 表示itemtype)，参4：是否赠品(0表示非赠, 1表示赠)
function Melter(nUserId, nCostType, nValue, nMonopoly)
	if tMelter["Function"] ~= nil and type(tMelter["Function"]) == "function" then
		tMelter["Function"](nUserId, nCostType, nValue, nMonopoly)
	end
end

--熔炼炉十连抽
--参1：玩家ID，参2：奖励类型，参3：数值(type=物品时, 表示itemtype)，参4：是否赠品(0表示非赠, 1表示赠)
function TenMelter(nUserId, nCostType, nValue, nMonopoly)
	if tTenMelter["Function"] ~= nil and type(tTenMelter["Function"]) == "function" then
		tTenMelter["Function"](nUserId, nCostType, nValue, nMonopoly)
	end
end


--符文背包中的符文在分解时，删除由程序主动删，然后调用lua给碎片，再给精粹
--idItemType表示符文, nMonopoly是否赠品,nRuneExp符文追加经验
--RuneDecompose(OBJID idItemType, int nMonopoly，int nRuneExp);
function RuneDecompose(nUserId, idItemType, nMonopoly,nRuneExp)
	local nEvent_Loop = 0
	if type(tRuneDecompose["tFunction"]) == "table" then
		for _,func in ipairs(tRuneDecompose["tFunction"]) do
			if nEvent_Loop > G_CalculateLoop then
				Sys_SaveAbnormalLog("函数 RuneDecompose 中 [for]循环超过1000次！")
				break
			end
			nEvent_Loop = nEvent_Loop + 1
			if func ~= nil and type(func) == "function" then
				func(nUserId, idItemType, nMonopoly,nRuneExp)
			end
		end
	end
end

--符文仓库分数变化触发接口
--idUser表示玩家ID，n64Score表示符文仓库积分，nRank表示排名（-1表示未入榜）
--void RuneStorageScoreRank(OBJID idUser, int64 n64Score, int nRank);
function RuneStorageScoreRank(nUserId, nScore, nRank)
	local nEvent_Loop = 0
	if type(tRuneStorageScoreRank["tFunction"]) == "table" then
		for _,func in ipairs(tRuneStorageScoreRank["tFunction"]) do
			if nEvent_Loop > G_CalculateLoop then
				Sys_SaveAbnormalLog("函数 RuneStorageScoreRank 中 [for]循环超过1000次！")
				break
			end
			nEvent_Loop = nEvent_Loop + 1
			if func ~= nil and type(func) == "function" then
				func(nUserId, nScore, nRank)
			end
		end
	end
end

-- 尾兽满级后，每升一星调用的lua，参1：玩家ID
-- ProcessBeastsUpLev(OBJID idUser);
function ProcessBeastsUpLev(nUserId)
	local nEvent_Loop = 0
	if type(tProcessBeastsUpLev["tFunction"]) == "table" then
		for _,func in ipairs(tProcessBeastsUpLev["tFunction"]) do
			if nEvent_Loop > G_CalculateLoop then
				Sys_SaveAbnormalLog("函数 ProcessBeastsUpLev 中 [for]循环超过1000次！")
				break
			end
			nEvent_Loop = nEvent_Loop + 1
			if func ~= nil and type(func) == "function" then
				func(nUserId)
			end
		end
	end
end

-- 播放视频结束调用任务接口：LuaEffectEnd，参数1：玩家id，参数2：视频编号，参数3：播放状态 （ESC结束:0 、正常结束：1）
function LuaEffectEnd(nUserId,nPlayId,nPlayStatus)
	local nEvent_Loop = 0
	if type(tLuaEffectEnd["tFunction"]) == "table" then
		for _,func in ipairs(tLuaEffectEnd["tFunction"]) do
			if nEvent_Loop > G_CalculateLoop then
				Sys_SaveAbnormalLog("函数 LuaEffectEnd 中 [for]循环超过1000次！")
				break
			end
			nEvent_Loop = nEvent_Loop + 1
			if func ~= nil and type(func) == "function" then
				func(nUserId,nPlayId,nPlayStatus)
			end
		end
	end
end
--练气惊喜表触发接口
--idUser表示玩家ID，nTaskId表示任务ID
function GetFateTaskReward(nUserId,nTaskId)
	local nEvent_Loop = 0
	if type(tGetFateTaskReward["tFunction"]) == "table" then
		for _,func in ipairs(tGetFateTaskReward["tFunction"]) do
			if nEvent_Loop > G_CalculateLoop then
				Sys_SaveAbnormalLog("函数 GetFateTaskReward 中 [for]循环超过1000次！")
				break
			end
			nEvent_Loop = nEvent_Loop + 1
			if func ~= nil and type(func) == "function" then
				func(nUserId,nTaskId)
			end
		end
	end
end

-- // 精英PK赛发奖, 参1:玩家id, 参2:PK赛类型, 参3:nFlag不为0表示胜利方, 为0表示失败方.
-- void ProcessElitePkArenic(int nGroup, OBJID idUser, int nFlag);
-- nGroup定义：
-- 0：99级以下组(包括99级)
-- 1：100-119级组
-- 2：120-129级组
-- 3：130级以上组
function ProcessElitePkArenic(nGroup,nUserId,nFlag)
	local nEvent_Loop = 0
	if type(tElitePkArenic["tFunction"]) == "table" then
		for _,func in ipairs(tElitePkArenic["tFunction"]) do
			if nEvent_Loop > G_CalculateLoop then
				Sys_SaveAbnormalLog("函数 ProcessElitePkArenic 中 [for]循环超过1000次！")
				break
			end
			nEvent_Loop = nEvent_Loop + 1
			if func ~= nil and type(func) == "function" then
				func(nGroup,nUserId,nFlag)
			end
		end
	end
end

-- // 队里的每个成员都会调用
-- // 组队PK赛发奖, 参1:玩家id, 参2:PK赛类型, 参3:nFlag不为0表示胜利方, 为0表示失败方.
-- void ProcessClanPkArenic(int nGroup, OBJID idUser, int nFlag);
-- nGroup定义：
-- 0：99级以下组(包括99级)
-- 1：100-119级组
-- 2：120-129级组
-- 3：130级以上组
function ProcessClanPkArenic(nGroup,nUserId,nFlag)
	local nEvent_Loop = 0
	if type(tClanPkArenic["tFunction"]) == "table" then
		for _,func in ipairs(tClanPkArenic["tFunction"]) do
			if nEvent_Loop > G_CalculateLoop then
				Sys_SaveAbnormalLog("函数 ProcessClanPkArenic 中 [for]循环超过1000次！")
				break
			end
			nEvent_Loop = nEvent_Loop + 1
			if func ~= nil and type(func) == "function" then
				func(nGroup,nUserId,nFlag)
			end
		end
	end
end

-- // 队里的每个成员都会调用
-- // 组队大众PK赛发奖, 参1:玩家id, 参2:PK赛类型, 参3:nFlag不为0表示胜利方, 为0表示失败方.
-- void ProcessPopPkArenic(int nGroup, OBJID idUser, int nFlag);
-- nGroup定义：
-- 0：99级以下组(包括99级)
-- 1：100-119级组
-- 2：120-129级组
-- 3：130级以上组
function ProcessPopPkArenic(nGroup,nUserId,nFlag)
	local nEvent_Loop = 0
	if type(tPopPkArenic["tFunction"]) == "table" then
		for _,func in ipairs(tPopPkArenic["tFunction"]) do
			if nEvent_Loop > G_CalculateLoop then
				Sys_SaveAbnormalLog("函数 ProcessPopPkArenic 中 [for]循环超过1000次！")
				break
			end
			nEvent_Loop = nEvent_Loop + 1
			if func ~= nil and type(func) == "function" then
				func(nGroup,nUserId,nFlag)
			end
		end
	end
end

-- TrainingVitalityExpOverMax%lu%lu // 玩家ID，第几门（从1开始）
function TrainingVitalityExpOverMax(nUserId,nType)
	local nEvent_Loop = 0
	if type(tTrainingVitalityExpOverMax["tFunction"]) == "table" then
		for _,func in ipairs(tTrainingVitalityExpOverMax["tFunction"]) do
			if nEvent_Loop > G_CalculateLoop then
				Sys_SaveAbnormalLog("函数 TrainingVitalityExpOverMax 中 [for]循环超过1000次！")
				break
			end
			nEvent_Loop = nEvent_Loop + 1
			if func ~= nil and type(func) == "function" then
				func(nUserId,nType)
			end
		end
	end
end

-- // 百兵谱武器升星, 参1:玩家id, 参2:武器类型, 参3:武器等级
-- void HundredWeaponUpLev(OBJID idUser, USHORT usType, UCHAR ucLev);
function HundredWeaponUpLev(nUserId,nType,nLev)
	local nEvent_Loop = 0
	if type(tHundredWeaponUpLev["tFunction"]) == "table" then
		for _,func in ipairs(tHundredWeaponUpLev["tFunction"]) do
			if nEvent_Loop > G_CalculateLoop then
				Sys_SaveAbnormalLog("函数 HundredWeaponUpLev 中 [for]循环超过1000次！")
				break
			end
			nEvent_Loop = nEvent_Loop + 1
			if func ~= nil and type(func) == "function" then
				func(nUserId,nType,nLev)
			end
		end
	end
end

-- GetProfLevUpReward 参1传玩家ID 参数2传玩家当前职业(例如水真人13005)
function GetProfLevUpReward(nUserId,nPro)
	local nEvent_Loop = 0
	if type(tGetProfLevUpReward["tFunction"]) == "table" then
		for _,func in ipairs(tGetProfLevUpReward["tFunction"]) do
			if nEvent_Loop > G_CalculateLoop then
				Sys_SaveAbnormalLog("函数 GetProfLevUpReward 中 [for]循环超过1000次！")
				break
			end
			nEvent_Loop = nEvent_Loop + 1
			if func ~= nil and type(func) == "function" then
				func(nUserId,nPro)
			end
		end
	end
end



-- UserHasNosuchOnAuction(idUser, idFunction, nCount)
-- 这个回调，你一定要弹框或者系统消息
function UserHasNosuchOnAuction(nUserId,nCount)
	local nEvent_Loop = 0
	if type(tUserHasNosuchOnAuction["tFunction"]) == "table" then
		for _,func in ipairs(tUserHasNosuchOnAuction["tFunction"]) do
			if nEvent_Loop > G_CalculateLoop then
				Sys_SaveAbnormalLog("函数 UserHasNosuchOnAuction 中 [for]循环超过1000次！")
				break
			end
			nEvent_Loop = nEvent_Loop + 1
			if func ~= nil and type(func) == "function" then
				func(nUserId,nCount)
			end
		end
	end
end

-- 新增LUA拾取物品触发函数
-- ProcessPickMapItem(idUser, idItemType)
-- idUser为拾取物品玩家
-- idItemType为拾取物品的类型ID
function ProcessPickMapItem(nUserId,nItemtypeId)
	local nEvent_Loop = 0
	if type(tPickMapItem["tFunction"]) == "table" then
		for _,func in ipairs(tPickMapItem["tFunction"]) do
			if nEvent_Loop > G_CalculateLoop then
				Sys_SaveAbnormalLog("函数 ProcessPickMapItem 中 [for]循环超过1000次！")
				break
			end
			nEvent_Loop = nEvent_Loop + 1
			if func ~= nil and type(func) == "function" then
				func(nUserId,nItemtypeId)
			end
		end
	end
end


-- 成长基金，升级或者收到充值消息后触发，脚本给奖励
-- UserUpLevWebBonus(OBJID idUser, int metempsy, int nLev)
-- const char STR_LUA_FUNCTION_USER_UPLEV_WEB_BONUS[] = "</F>UserUpLevWebBonus</N>%lu</N>%d</N>%d";
-- 参1：玩家id，参2：转世次数，参3：等级
function UserUpLevWebBonus(nUserId, nMetempsychosis, nLevel)
	local nEvent_Loop = 0
	if type(tUserUpLevWebBonus["tFunction"]) == "table" then
		for _,func in ipairs(tUserUpLevWebBonus["tFunction"]) do
			if nEvent_Loop > G_CalculateLoop then
				Sys_SaveAbnormalLog("函数 UserUpLevWebBonus 中 [for]循环超过1000次！")
				break
			end
			nEvent_Loop = nEvent_Loop + 1
			if func ~= nil and type(func) == "function" then
				func(nUserId ,nMetempsychosis, nLevel)
			end
		end
	end
end

-- lua新增函数SetRank1Name
-- 参数1：排行榜类型，参数2：玩家名字，
-- 功能：设置各榜发奖时的第一名玩家名字，榜类型填在cq_dyna_global_data表的data字段，玩家名字填在对应的datastr字段。
-- #53572存实力评分80000000，等级30001000，内功70000000，自创武功1
-- #53576存60000001~60000004四个炼气榜的第一名
-- #60000001-60000004对应炼气门 青龙、朱雀、白虎、玄武
function SetRank1Name(nRankType, sUserName)
	local nEvent_Loop = 0
	if type(tSetRank1Name["tFunction"]) == "table" then
		for _,func in ipairs(tSetRank1Name["tFunction"]) do
			if nEvent_Loop > G_CalculateLoop then
				Sys_SaveAbnormalLog("函数 SetRank1Name 中 [for]循环超过1000次！")
				break
			end
			nEvent_Loop = nEvent_Loop + 1
			if func ~= nil and type(func) == "function" then
				func(nRankType, sUserName)
			end
		end
	end
end

-- 万圣节互动
function ProcessInteract(idUser,idTarget,nMainType,nSubType)
	local nEvent_Loop = 0
	if type(tProcessInteract["tFunction"]) == "table" then
		for _,func in ipairs(tProcessInteract["tFunction"]) do
			if nEvent_Loop > G_CalculateLoop then
				Sys_SaveAbnormalLog("函数 ProcessInteract 中 [for]循环超过1000次！")
				break
			end
			nEvent_Loop = nEvent_Loop + 1
			if func ~= nil and type(func) == "function" then
				func(idUser,idTarget,nMainType,nSubType)
			end
		end
	end
end

-- lua需提供接口ProcessPrizeBroadcast供服务端调用，参数1：玩家名字，参数2：中奖主类型，参数3：中奖子类型，参数4：数据1，参数5：数据2
-- 中奖主类型：
    -- 1：灵珠；2：德州；3：智取威虎山；4：桃源灵玉；5：天降福禄 6：表示果园狂欢 7果园狂欢boss击杀
-- 中奖子类型，数据1，数据2由各功能自行确定。
-- 当消息要本服世界广播时，需调用BrocastMsg接口，参数4传0表示消息不需要滚屏，1表示需要
-- 当消息要本组服务器广播时，需调用BroadcastTalkMsgToAllServer接口，参数4传0表示消息不需要滚屏，1表示需要
-- 中奖频道广播</S>szUserName</N>unMainType</N>unSubType</N>nData1</N>nData2</S>szParam 新增一个szParam参数

-- nMainType为6果园狂欢时，nSubType为下注类型 1:金币 2:天石 3:物品， 
-- nData1为玩家下注总金额， nData2为玩家赢的金额，下注物品时表示下注的所有物品数量和赢到的物品总数
-- sParam为玩家赢的物品列表(仅当nSubType为下注类型为3:物品时此参数有意义)。
-- sParam的格式为
-- 物品类型ID_1:物品个数_1,物品类型ID_2:物品个数_2,物品类型ID_3:物品个数_3  ... ,物品类型ID_8:物品个数_8
-- 具体物品类型可以为0到8个
-- nMainType为 7果园狂欢boss击杀 时
-- unSubType为下注类型 1:金币 2:天石 3:物品， nData1为奖励数量， nData2为物品类型ID（只有 unsubtype为3时有效）

function ProcessPrizeBroadcast(nUserName,nMainType,nSubType,nData1,nData2,sParam)
	local nEvent_Loop = 0
	if type(tProcessPrizeBroadcast["tFunction"]) == "table" then
		for _,func in ipairs(tProcessPrizeBroadcast["tFunction"]) do
			if nEvent_Loop > G_CalculateLoop then
				Sys_SaveAbnormalLog("函数 ProcessPrizeBroadcast 中 [for]循环超过1000次！")
				break
			end
			nEvent_Loop = nEvent_Loop + 1
			if func ~= nil and type(func) == "function" then
				func(nUserName,nMainType,nSubType,nData1,nData2,sParam)
			end
		end
	end
end



-- 新增接口ProcessAfterCreateInstance，
-- 参1：副本表ID，
-- 参2：副本动态地图ID
-- 参3：玩家ID
function ProcessAfterCreateInstance(nInstancetype,nInstancetypeMapId,nUserId)
	local nEvent_Loop = 0
	if type(tProcessAfterCreateInstance["tFunction"]) == "table" then
		for _,func in ipairs(tProcessAfterCreateInstance["tFunction"]) do
			if nEvent_Loop > G_CalculateLoop then
				Sys_SaveAbnormalLog("函数 ProcessAfterCreateInstance 中 [for]循环超过1000次！")
				break
			end
			nEvent_Loop = nEvent_Loop + 1
			if func ~= nil and type(func) == "function" then
				func(nInstancetype,nInstancetypeMapId,nUserId)
			end
		end
	end
end

-- 异步添加物品(贵重物品)成功后的处理
function AddAsynOSItemRet(nServerId,nUserId,nItemId,nMonopoly,nNum,nSerial,nRet)
	local nEvent_Loop = 0
	if type(tAddAsynOSItemRet["tFunction"]) == "table" then
		for _,func in ipairs(tAddAsynOSItemRet["tFunction"]) do
			if nEvent_Loop > G_CalculateLoop then
				Sys_SaveAbnormalLog("函数 AddAsynOSItemRet 中 [for]循环超过1000次！")
				break
			end
			nEvent_Loop = nEvent_Loop + 1
			if func ~= nil and type(func) == "function" then
				func(nServerId,nUserId,nItemId,nMonopoly,nNum,nSerial,nRet)
			end
		end
	end
end

-- 异步删除物品(贵重物品)成功后的处理
function DelAsynOSItemRet(nServerId,nUserId,nItemId,nMonopoly,nNum,nSerial,nRet)
	local nEvent_Loop = 0
	if type(tDelAsynOSItemRet["tFunction"]) == "table" then
		for _,func in ipairs(tDelAsynOSItemRet["tFunction"]) do
			if nEvent_Loop > G_CalculateLoop then
				Sys_SaveAbnormalLog("函数 DelAsynOSItemRet 中 [for]循环超过1000次！")
				break
			end
			nEvent_Loop = nEvent_Loop + 1
			if func ~= nil and type(func) == "function" then
				func(nServerId,nUserId,nItemId,nMonopoly,nNum,nSerial,nRet)
			end
		end
	end
end

------2019.12.5
-- const char STR_LUA_FUNCTION_STC_ACTIVE_PROCESS[] = "</F>ProcessUserSTCActive</N>%lu</N>%d</N>%I64d";			
-- // 活动统计数据处理请求</N>idUser</N>nProcess</N>n64Data
-- n64Data形式	ABBBCC
function ProcessUserSTCActive(nUserId,nProcess,nIndex64)
	local nEvent_Loop = 0
	if type(tProcessUserSTCActive["tFunction"]) == "table" then
		local nActiveType = math.floor(nIndex64/100000)
		local nEventType = math.floor((nIndex64%100000)/100)
		local nStep = nIndex64%100
		
		for _,func in ipairs(tProcessUserSTCActive["tFunction"]) do
			if nEvent_Loop > G_CalculateLoop then
				Sys_SaveAbnormalLog("函数 ProcessUserSTCActive 中 [for]循环超过1000次！")
				break
			end
			nEvent_Loop = nEvent_Loop + 1
			if func ~= nil and type(func) == "function" then
				func(nUserId,nProcess,nActiveType,nEventType,nStep)
			end
		end
	end
end

-- 升级灵珠
-- nDragonSoulId	放入的灵珠ID
-- nMaxLev	升级的最大阶数
-- nAllLev	升级的总阶数
function ProcessUserSTCActiveUplevSpirit(nUserId,nDragonSoulId,nMaxLev,nAllLev,nBag)
	local nEvent_Loop = 0
	if type(tProcessUserSTCActiveUplevSpirit["tFunction"]) == "table" then
		for _,func in ipairs(tProcessUserSTCActiveUplevSpirit["tFunction"]) do
			if nEvent_Loop > G_CalculateLoop then
				Sys_SaveAbnormalLog("函数 ProcessUserSTCActiveUplevSpirit 中 [for]循环超过1000次！")
				break
			end
			nEvent_Loop = nEvent_Loop + 1
			if func ~= nil and type(func) == "function" then
				func(nUserId,nDragonSoulId,nMaxLev,nAllLev,nBag)
			end
		end
	end
end

-- 在跨服调用User_AddSTCActiveData的接口，程序会返回本服回调下面这个函数
function ProcessOSUserSTCActiveDataOnGS(nUserId,nActiveType,nEventType,nData,nEndTime,nNotify)
	local nEvent_Loop = 0
	if type(tProcessOSUserSTCActiveDataOnGS["tFunction"]) == "table" then
		for _,func in ipairs(tProcessOSUserSTCActiveDataOnGS["tFunction"]) do
			if nEvent_Loop > G_CalculateLoop then
				Sys_SaveAbnormalLog("函数 ProcessOSUserSTCActiveDataOnGS 中 [for]循环超过1000次！")
				break
			end
			nEvent_Loop = nEvent_Loop + 1
			if func ~= nil and type(func) == "function" then
				func(nUserId,nActiveType,nEventType,nData,nEndTime,nNotify)
			end
		end
	end
end

-- 3.增加程序调用LUA接口
-- const char STR_LUA_FUNCTION_LUA_SPEND_OS_MONEY[] = "ProcessLuaUserSpendOSMoney%lu%lu%d%I64d%d%d";    
-- // LUA跨服扣钱回调idServer idGSUser nMoneyType n64Amount idFunc SerialdwData
function ProcessLuaUserSpendOSMoney(nServerId,nUserId,nMoneyType,nAmount,nIndex,nData)
	local nEvent_Loop = 0
	if type(tProcessLuaUserSpendOSMoney["tFunction"]) == "table" then
		for _,func in ipairs(tProcessLuaUserSpendOSMoney["tFunction"]) do
			if nEvent_Loop > G_CalculateLoop then
				Sys_SaveAbnormalLog("函数 ProcessLuaUserSpendOSMoney 中 [for]循环超过1000次！")
				break
			end
			nEvent_Loop = nEvent_Loop + 1
			if func ~= nil and type(func) == "function" then
				func(nServerId,nUserId,nMoneyType,nAmount,nIndex,nData)
			end
		end
	end
end

-- 程序调用LUA接口 观看视频完成后发奖励调用接口
-- AwardAfterWatchVideo // 客户端观看视频领奖励玩家ID
function AwardAfterWatchVideo(nUserId)

	local nEvent_Loop = 0
	if type(tAwardAfterWatchVideo["tFunction"]) == "table" then
		for _,func in ipairs(tAwardAfterWatchVideo["tFunction"]) do
			if nEvent_Loop > G_CalculateLoop then
				Sys_SaveAbnormalLog("函数 AwardAfterWatchVideo 中 [for]循环超过1000次！")
				break
			end
			nEvent_Loop = nEvent_Loop + 1
			if func ~= nil and type(func) == "function" then
				func(nUserId)
			end
		end
	end
end


-- 程序调用LUA接口 地宫成功破禁时调用
function ProcessUserSTCActiveSealTreasure(nUserId,nGroup,nFloor,nType)
	local nEvent_Loop = 0
	if type(tProcessUserSTCActiveSealTreasure["tFunction"]) == "table" then
		for _,func in ipairs(tProcessUserSTCActiveSealTreasure["tFunction"]) do
			if nEvent_Loop > G_CalculateLoop then
				Sys_SaveAbnormalLog("函数 ProcessUserSTCActiveSealTreasure 中 [for]循环超过1000次！")
				break
			end
			nEvent_Loop = nEvent_Loop + 1
			if func ~= nil and type(func) == "function" then
				func(nUserId,nGroup,nFloor,nType)
			end
		end
	end
end

-- tProcessUserSTCActiveSealTreasure["tFunction"] = tProcessUserSTCActiveSealTreasure["tFunction"] or {}
table.insert(tProcessUserSTCActiveSealTreasure["tFunction"],Sys_SaveSealTreasureLog)

-- 程序调用LUA接口 完成任务集会所任务调动
-- GetTaskPrize 参数1：玩家ID，参数2：任务ID
function GetTaskPrize(nUserId,nTaskId)
	local nEvent_Loop = 0
	if type(tGetTaskPrize["tFunction"]) == "table" then
		for _,func in ipairs(tGetTaskPrize["tFunction"]) do
			if nEvent_Loop > G_CalculateLoop then
				Sys_SaveAbnormalLog("函数 GetTaskPrize 中 [for]循环超过1000次！")
				break
			end
			nEvent_Loop = nEvent_Loop + 1
			if func ~= nil and type(func) == "function" then
				func(nUserId,nTaskId)
			end
		end
	end
end

-- lua需新增接口SendGouyuAptitude供服务器调用，
-- 玩家洗练完，保存洗练出的属性的时候调用
-- 参1：玩家ID，参2：火资质，参3：水资质，参4：土资质，参5：风资质，参6：雷资质，参7：火精修，参8：水精修，参9：土精修，参10：风精修，参11：雷精修
function SendGouyuAptitude(nUserId,nFire,nWater,nSoil,nWind,nThunder,nFireJingxiu,nWaterJingxiu,nSoilJingxiu,nWindJingxiu,nThunderJingxiu)
	local nEvent_Loop = 0
	if type(tSendGouyuAptitude["tFunction"]) == "table" then
		for _,func in ipairs(tSendGouyuAptitude["tFunction"]) do
			if nEvent_Loop > G_CalculateLoop then
				Sys_SaveAbnormalLog("函数 SendGouyuAptitude 中 [for]循环超过1000次！")
				break
			end
			nEvent_Loop = nEvent_Loop + 1
			if func ~= nil and type(func) == "function" then
				func(nUserId,nFire,nWater,nSoil,nWind,nThunder,nFireJingxiu,nWaterJingxiu,nSoilJingxiu,nWindJingxiu,nThunderJingxiu)
			end
		end
	end
end

-- 勾玉分解时调用该接口通知任务分解的勾玉类型：
-- GouYuResolve%lu%d
-- 参1：玩家ID，参2：勾玉类型
function GouYuResolve(nUserId,nType)
	local nEvent_Loop = 0
	if type(tGouYuResolve["tFunction"]) == "table" then
		for _,func in ipairs(tGouYuResolve["tFunction"]) do
			if nEvent_Loop > G_CalculateLoop then
				Sys_SaveAbnormalLog("函数 GouYuResolve 中 [for]循环超过1000次！")
				break
			end
			nEvent_Loop = nEvent_Loop + 1
			if func ~= nil and type(func) == "function" then
				func(nUserId,nType)
			end
		end
	end
end

-- 程序调用LUA接口 获得地宫奖励时调用
function GiveSealedTreasureReward(nUserId,nGroupId,nItemtypeid)
	local nEvent_Loop = 0
	if type(tGiveSealedTreasureReward["tFunction"]) == "table" then
		for _,func in ipairs(tGiveSealedTreasureReward["tFunction"]) do
			if nEvent_Loop > G_CalculateLoop then
				Sys_SaveAbnormalLog("函数 GiveSealedTreasureReward 中 [for]循环超过1000次！")
				break
			end
			nEvent_Loop = nEvent_Loop + 1
			if func ~= nil and type(func) == "function" then
				func(nUserId,nGroupId,nItemtypeid)
			end
		end
	end
end

--  爵位变化 触发 </N>idUser</N>旧爵位</N>新爵位
function PeerageRank_Change(nUserId,nOldNum,nNewNum)
	local nEvent_Loop = 0
	if type(tPeerageRank_Change["tFunction"]) == "table" then
		for _,func in ipairs(tPeerageRank_Change["tFunction"]) do
			if nEvent_Loop > G_CalculateLoop then
				Sys_SaveAbnormalLog("函数 PeerageRank_Change 中 [for]循环超过1000次！")
				break
			end
			nEvent_Loop = nEvent_Loop + 1
			if func ~= nil and type(func) == "function" then
				func(nUserId,nOldNum,nNewNum)
			end
		end
	end
end

--升级勾玉触发
--  lua需新增接口GouYuUpLev供服务端调用，参1：玩家ID，参2：勾玉类型，参3：勾玉当前等级
function GouYuUpLev(nUserId,nType,nLev)
	local nEvent_Loop = 0
	if type(tGouYuUpLev["tFunction"]) == "table" then
		for _,func in ipairs(tGouYuUpLev["tFunction"]) do
			if nEvent_Loop > G_CalculateLoop then
				Sys_SaveAbnormalLog("函数 GouYuUpLev 中 [for]循环超过1000次！")
				break
			end
			nEvent_Loop = nEvent_Loop + 1
			if func ~= nil and type(func) == "function" then
				func(nUserId,nType,nLev)
			end
		end
	end
end

--装备开洞触发
--  LUA接口： OnEquipmentHoldNumChange
-- 参数1：玩家ID        (OBJID)
-- 参数2：装备TYPE  (int)
-- 参数3：装备孔数    (int)
function OnEquipmentHoldNumChange(nUserId,nType,nNum)
	local nEvent_Loop = 0
	if type(tOnEquipmentHoldNumChange["tFunction"]) == "table" then
		for _,func in ipairs(tOnEquipmentHoldNumChange["tFunction"]) do
			if nEvent_Loop > G_CalculateLoop then
				Sys_SaveAbnormalLog("函数 OnEquipmentHoldNumChange 中 [for]循环超过1000次！")
				break
			end
			nEvent_Loop = nEvent_Loop + 1
			if func ~= nil and type(func) == "function" then
				func(nUserId,nType,nNum)
			end
		end
	end
end


-- // 重铸器灵, 参1：玩家id，参2：器灵类型
-- bool RecastSpirit(OBJID idUser, OBJID idItemType)
function RecastSpirit(nUserId,nItemId)
	local nEvent_Loop = 0
	if type(tRecastSpirit["tFunction"]) == "table" then
		for _,func in ipairs(tRecastSpirit["tFunction"]) do
			if nEvent_Loop > G_CalculateLoop then
				Sys_SaveAbnormalLog("函数 RecastSpirit 中 [for]循环超过1000次！")
				break
			end
			nEvent_Loop = nEvent_Loop + 1
			if func ~= nil and type(func) == "function" then
				func(nUserId,nItemId)
			end
		end
	end
end

-- 新增转服失败触发LUA
-- ProcessChangeServerFail: 带两个参数 参数1：转服失败的玩家ID， 参数2：回调参数，其值等于调用UserChangeServer 时指定的参数5的值。
-- 注意如果UserChangeServer 返回false 则不会再另外调用ProcessChangeServerFail。只有在UserChangeServer 返回true的情况下，后续流程中（比如检查发现目标服该账户有角色）失败的情况下才会调用ProcessChangeServerFail
function ProcessChangeServerFail(nUserId,nCallback)
	if type(tChangeServerFail["tFunction"]) == "table" then
		local func = tChangeServerFail["tFunction"][nCallback]
		if func ~= nil and type(func) == "function" then
			func(nUserId,nCallback)
		end
	end
end

-- 	// 百兵谱铸灵触发LUA
--  lua需新增接口 HWCompose 供服务端调用，参1：玩家ID，参2：武器TYPE，参3：武器当前等级
function HWCompose(nUserId,nType,nLev)
	local nEvent_Loop = 0
	if type(tHWCompose["tFunction"]) == "table" then
		for _,func in ipairs(tHWCompose["tFunction"]) do
			if nEvent_Loop > G_CalculateLoop then
				Sys_SaveAbnormalLog("函数 HWCompose 中 [for]循环超过1000次！")
				break
			end
			nEvent_Loop = nEvent_Loop + 1
			if func ~= nil and type(func) == "function" then
				func(nUserId,nType,nLev)
			end
		end
	end
end

-- 	// 百兵谱炼魂触发LUA
--  lua需新增接口 HWBaptize 供服务端调用，参1：玩家ID，参2：武器TYPE，参3：旧有实力评分
function HWBaptize(nUserId,nType,nOldScore)
	local nEvent_Loop = 0
	if type(tHWBaptize["tFunction"]) == "table" then
		for _,func in ipairs(tHWBaptize["tFunction"]) do
			if nEvent_Loop > G_CalculateLoop then
				Sys_SaveAbnormalLog("函数 HWBaptize 中 [for]循环超过1000次！")
				break
			end
			nEvent_Loop = nEvent_Loop + 1
			if func ~= nil and type(func) == "function" then
				func(nUserId,nType,nOldScore)
			end
		end
	end
end

-- 	 // 百兵谱炼魂确认触发LUA
--  lua需新增接口 HWBaptizeConfirm 供服务端调用，参1：玩家ID，参2：武器TYPE，参3：当前实力评分
function HWBaptizeConfirm(nUserId,nType,nNowScore)
	local nEvent_Loop = 0
	if type(tHWBaptizeConfirm["tFunction"]) == "table" then
		for _,func in ipairs(tHWBaptizeConfirm["tFunction"]) do
			if nEvent_Loop > G_CalculateLoop then
				Sys_SaveAbnormalLog("函数 HWBaptizeConfirm 中 [for]循环超过1000次！")
				break
			end
			nEvent_Loop = nEvent_Loop + 1
			if func ~= nil and type(func) == "function" then
				func(nUserId,nType,nNowScore)
			end
		end
	end
end

--  获得玩家追加结果
--  LUA接口：OnComposeLua 参数1：玩家ID 参数2：追加装备的ID（cq_item里面的ID） 参数3：追加装备的追加等级 参数4：追加结果（主要是用于立马追加 0 失败 1 成功）
function OnComposeLua(nUserId,nAddItemId,nAddLev,nAddResult)
	local nEvent_Loop = 0
	if type(tOnComposeLua["tFunction"]) == "table" then
		for _,func in ipairs(tOnComposeLua["tFunction"]) do
			if nEvent_Loop > G_CalculateLoop then
				Sys_SaveAbnormalLog("函数 OnComposeLua 中 [for]循环超过1000次！")
				break
			end
			nEvent_Loop = nEvent_Loop + 1
			if func ~= nil and type(func) == "function" then
				func(nUserId,nAddItemId,nAddLev,nAddResult)
			end
		end
	end
end

--  获得玩家爵位捐献
--  LUA接口： OnPeerageDonate
-- 参数1：玩家ID
-- 参数2：单次捐献的钱
-- 参数3：钱的类型（0:金币 1：天石 2：绑定天石 ）
-- （注意当类型不是0时，存在1:50000的转化关系。即我参数2发的3000000金币，但是我用天石抵扣，那我实际消耗的天石是60）
-- 参数4：玩家的总捐献值
-- 参数5：玩家当前的捐献星级
function OnPeerageDonate(nUserId,nDonateNum,nDonateType,nDonateSum,nDonateLel)
	local nEvent_Loop = 0
	if type(tOnPeerageDonate["tFunction"]) == "table" then
		for _,func in ipairs(tOnPeerageDonate["tFunction"]) do
			if nEvent_Loop > G_CalculateLoop then
				Sys_SaveAbnormalLog("函数 OnPeerageDonate 中 [for]循环超过1000次！")
				break
			end
			nEvent_Loop = nEvent_Loop + 1
			if func ~= nil and type(func) == "function" then
				func(nUserId,nDonateNum,nDonateType,nDonateSum,nDonateLel)
			end
		end
	end
end

--  获得玩家神器融合结果
--  新增LUA： ComposeXuanBao
--  参数1：用户ID
--  参数2：融合神器(玄宝)1的ID（cq_item的id）
--  参数3：融合神器(玄宝)2的ID（cq_item的id）
function ComposeXuanBao(nUserId,nXuanBaoId1,nXuanBaoId2)
	local nEvent_Loop = 0
	if type(tComposeXuanBao["tFunction"]) == "table" then
		for _,func in ipairs(tComposeXuanBao["tFunction"]) do
			if nEvent_Loop > G_CalculateLoop then
				Sys_SaveAbnormalLog("函数 ComposeXuanBao 中 [for]循环超过1000次！")
				break
			end
			nEvent_Loop = nEvent_Loop + 1
			if func ~= nil and type(func) == "function" then
				func(nUserId,nXuanBaoId1,nXuanBaoId2)
			end
		end
	end
end

--  玩家每次玩威虎山触发
--  新增LUA： ProcessNewSlot
--  参数1：服务器ID
--  参数2：玩家id
--  参数3：NPCID
--  参数4：金币0天石1
--  参数5：下注金额 下注金额可能为0  为0表示这是一次免费的威虎山

function ProcessNewSlot(nServerId,nUserId,nNpcId,nType,nNum)
	local nEvent_Loop = 0
	if type(tProcessNewSlot["tFunction"]) == "table" then
		for _,func in ipairs(tProcessNewSlot["tFunction"]) do
			if nEvent_Loop > G_CalculateLoop then
				Sys_SaveAbnormalLog("函数 ProcessNewSlot 中 [for]循环超过1000次！")
				break
			end
			nEvent_Loop = nEvent_Loop + 1
			if func ~= nil and type(func) == "function" then
				func(nServerId,nUserId,nNpcId,nType,nNum)
			end
		end
	end
end

