------------------------------------------------------------------------------------
--Name：            200315[简体征服][活动脚本]周年庆预热其他
--Creator:      杨志翔
--Created:     2020-03-15
------------------------------------------------------------------------------------
--任务需求：
--前缀 Anni17PreheatMap
--mapdoc 
--npclookface 2418
--npcid 26066
--monsterid 1291
--npc写死在地图上
------------------------------------------------------------------------------------


----------------------------------表配置部分--------------------------------------------
local tAnni17PreheatMap_Cont = {}
tAnni17PreheatMap_Cont["ActTime"] = tActivityTime["PrayForKirin"]["ActivityTime"] 
--杀怪领取奖励 
tAnni17PreheatMap_Cont["Event"] = 217
tAnni17PreheatMap_Cont["Data"] = 55
--杀怪进度
tAnni17PreheatMap_Cont["KillEvent"] = 217
tAnni17PreheatMap_Cont["KillData"] = 62
tAnni17PreheatMap_Cont["DropEvent"] = 217
tAnni17PreheatMap_Cont["DropData"] = 66
tAnni17PreheatMap_Cont["DropItem"] = 3315792
tAnni17PreheatMap_Cont["DropRate"] = 2
tAnni17PreheatMap_Cont["DropMax"] = 100
tAnni17PreheatMap_Cont["Map"] = 10800
tAnni17PreheatMap_Cont["MapX"] = 220
tAnni17PreheatMap_Cont["MapY"] = 222
tAnni17PreheatMap_Cont["Back"] = {}
tAnni17PreheatMap_Cont["Back"][1] = {}
tAnni17PreheatMap_Cont["Back"][1]["Map"] = 1002
tAnni17PreheatMap_Cont["Back"][1]["X"] = 373
tAnni17PreheatMap_Cont["Back"][1]["Y"] = 442
tAnni17PreheatMap_Cont["Back"][2] = {}
tAnni17PreheatMap_Cont["Back"][2]["Map"] = 1036
tAnni17PreheatMap_Cont["Back"][2]["X"] = 265
tAnni17PreheatMap_Cont["Back"][2]["Y"] = 262
tAnni17PreheatMap_Cont["EnterLog"] = "0,0,0,0,12001915,3[2],0,0"

local tAnni17PreheatMap_Reward = {}
	-- ===掉落
	-- ===索引:tAnni17PreheatMap_Reward
	-- ===LogStep: 3[1]
	tAnni17PreheatMap_Reward["LogId"] = 12001915
	tAnni17PreheatMap_Reward["LogStep"] = "3[1]"
	tAnni17PreheatMap_Reward["RewardItem"] = {}
	tAnni17PreheatMap_Reward["RewardItem"][1] = {}
	tAnni17PreheatMap_Reward["RewardItem"][1]["Id"] = 3315792 --  3315792 【库里没有该物品】, 【表格】祈福碎片
	tAnni17PreheatMap_Reward["RewardItem"][1]["Attr"] = "0 1" --  3315792 【库里没有该物品】*1


----------------------------------逻辑部分---------------------------------------------
--怪物死亡
function Anni17PreheatMap_Monster(nMonId)
    local nEvent = tAnni17PreheatMap_Cont["Event"]
    local nType = tAnni17PreheatMap_Cont["Data"]
    local nKillEvent = tAnni17PreheatMap_Cont["KillEvent"]
    local nKillData = tAnni17PreheatMap_Cont["KillData"]
    local nDropEvent = tAnni17PreheatMap_Cont["DropEvent"]
    local nDropData = tAnni17PreheatMap_Cont["DropData"]
    if not Sys_ChkFullTime(tAnni17PreheatMap_Cont["ActTime"]) then
        return
    end
    Task_StcReset(nKillEvent,nKillData)
    Task_StcReset(nDropEvent,nDropData)
    local nAnni17PreheatMap_Time = Get_UserStatisticValue(nEvent,nType)
    --判断奖励是否领取过或者隔天
    if ( nAnni17PreheatMap_Time < 1) or Task_StcInterval(nEvent,nType,1,4) then
        local nAnni17PreheatMap_MonNum = Get_UserStatisticValue(nKillEvent,nKillData)
        if nAnni17PreheatMap_MonNum < 200 then
            if nAnni17PreheatMap_MonNum == 199 then
                --击杀到200只时弹出完成任务105并回城
                Sys_MsgBox(tAnni17PreheatMap_Text["MsgBox"]["KillFull"],"Anni17PreheatMap_Leave")
            end
			PrayForKirin_AddTask(2)
            Task_AddStatistic(nKillEvent,nKillData,1,1)
            Task_SetStcTimestamp(nKillEvent,nKillData,0)
        end
    end
    local nAnni17PreheatMap_Get =  Get_UserStatisticValue(nDropEvent,nDropData)
    --走每日杀怪掉落逻辑
    if nAnni17PreheatMap_Get < tAnni17PreheatMap_Cont["DropMax"] then
        if Sys_Random(tAnni17PreheatMap_Cont["DropRate"],100) then
            if not TermsOfUse_Main(tAnni17PreheatMap_Cont["DropItem"],tAnni17PreheatMap_Reward)then
                return
            end
            if not RewardTemplate_UseItemAndMsg(tAnni17PreheatMap_Reward) then
                return
            end
            --打上掩码 如果达到每日限量数量后105
            Task_AddStatistic(nDropEvent,nDropData,1,1)
            Task_SetStcTimestamp(nDropEvent,nDropData,0)
            if nAnni17PreheatMap_Get == 99 then
                --阁下今日已经通过击杀火羽获得了100枚碎片，无法获得更多。
                Sys_MsgBox(tAnni17PreheatMap_Text["MsgBox"]["DropFull"])
            end
        end
    end
end

--到点清场
function Anni17PreheatMap_Clean()
    if not CommonFunc_GetAfterActivityTime(tAnni17PreheatMap_Cont["ActTime"]) then
        return
    end
    local nMapId = tAnni17PreheatMap_Cont["Map"]
    Map_UserExeFunc(nMapId,-1,"Anni17PreheatMap_Leave")
end

--离开地图
function Anni17PreheatMap_Leave(nUserId)
    local nAnni17PreheatMap_UserId = nUserId or Get_UserId()
    local nMapId = tAnni17PreheatMap_Cont["Back"][1]["Map"]
    local nPosx = tAnni17PreheatMap_Cont["Back"][1]["X"]
    local nPosy = tAnni17PreheatMap_Cont["Back"][1]["Y"]
    if SpecialServer_ChkNoGiftServer() then
        nMapId = tAnni17PreheatMap_Cont["Back"][2]["Map"]
        nPosx = tAnni17PreheatMap_Cont["Back"][2]["X"]
        nPosy = tAnni17PreheatMap_Cont["Back"][2]["Y"]
    end
    User_UserRandBoundTrans(nMapId,nPosx,nPosy,2,2,1,nAnni17PreheatMap_UserId)
    local sContent = tAnni17PreheatMap_Text["MsgBox"]["Leave"]
    User_TalkChannel2005(sContent,nAnni17PreheatMap_UserId)
end

function Anni17PreheatMap_Enter()
    --进入活动地图
    local nMapId = tAnni17PreheatMap_Cont["Map"]
    local nCellx = tAnni17PreheatMap_Cont["MapX"]
    local nCelly = tAnni17PreheatMap_Cont["MapY"]
    if User_UserRandBoundTrans(nMapId,nCellx,nCelly,2,2,1) then
        --阁下进入了庆典福地，快去消灭火羽收集灵珠碎片吧！
        Sys_MsgBox(tAnni17PreheatMap_Text["MsgBox"]["Enter"])
        User_TalkChannel2005(tAnni17PreheatMap_Text["MsgBox"]["Enter"])
        local nUserId = Get_UserId()
        Sys_SaveActionFestivalLog(tAnni17PreheatMap_Cont["EnterLog"],nUserId)
    end
end

function Anni17PreheatMap_Login()
    if not Sys_ChkFullTime(tAnni17PreheatMap_Cont["ActTime"]) then
        return
    end
    local nUserId = Get_UserId()
    --重置杀怪数量与掉落
    local nKillEvent = tAnni17PreheatMap_Cont["KillEvent"]
    local nKillData = tAnni17PreheatMap_Cont["KillData"]
    local nDropEvent = tAnni17PreheatMap_Cont["DropEvent"]
    local nDropData = tAnni17PreheatMap_Cont["DropData"]
    Task_StcReset(nKillEvent,nKillData,nUserId)
    Task_StcReset(nDropEvent,nDropData,nUserId)
end
----------------------------------NPC部分---------------------------------------------
tNpcFace[2418] = 158
tNpcGossip[26066]= tNpcGossip[26066] or DefaultNpc:new{}
tNpcGossip[26066]["DialogueText"] = tAnni17PreheatMap_Text[26066]
tNpcGossip[26066]["OptionHidden"] = 1

tNpcGossip[26066]["Text1-1"] = {111,112}
tNpcGossip[26066]["ChkFunc1-1"] = function()
    if SpecialServer_ChkNoGiftServer() then
        tNpcGossip[26066]["Text112"] = tAnni17PreheatMap_Text[26066]["Text1121"]
    end
    return true  
end
tNpcGossip[26066]["tOption1-1"] = {111,112} 
 --返回双龙城
tNpcGossip[26066]["OptionFunc111"] = "Anni17PreheatMap_Leave"
 
--传送陷阱
--tTrap[2571] = tTrap[2571] or {}--
--tTrap[2571]["Function"] = function(nTrapId,nTrapType)
--    local nAnni17PreheatMap_UserId = nUserId or Get_UserId()
--    local nMapId = tAnni17PreheatMap_Cont["Back"][1]["Map"]
--    local nPosx = tAnni17PreheatMap_Cont["Back"][1]["X"]
--    local nPosy = tAnni17PreheatMap_Cont["Back"][1]["Y"]
--    if SpecialServer_ChkNoGiftServer() then
--        nMapId = tAnni17PreheatMap_Cont["Back"][2]["Map"]
--        nPosx = tAnni17PreheatMap_Cont["Back"][2]["X"]
--        nPosy = tAnni17PreheatMap_Cont["Back"][2]["Y"]
--    end
--    User_UserRandBoundTrans(nMapId,nPosx,nPosy,2,2,1,nAnni17PreheatMap_UserId)
--    local sContent = 
--    User_TalkChannel2005(sContent,nAnni17PreheatMap_UserId)
--end
--插入怪物
local tAnni17PreheatMap_Kill = {}
tAnni17PreheatMap_Kill["ActivityTime"] = tAnni17PreheatMap_Cont["ActTime"]
tAnni17PreheatMap_Kill["Function"] = Anni17PreheatMap_Monster
tAnni17PreheatMap_Kill["MonsterId"] = {1291}
table.insert(tMonsterDrop_AreaLoad,tAnni17PreheatMap_Kill)

--登录清stc
tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
table.insert(tSystem_PlayLogin_Func,Anni17PreheatMap_Login)

--时间自检清场
local tAnni17PreheatMap_Kick = {}
tAnni17PreheatMap_Kick["ActivityTime"] = tActivityTime["PrayForKirin"]["CleanTime"] 
tAnni17PreheatMap_Kick["Type"] = 4
tAnni17PreheatMap_Kick["TimeType"] = 1
tAnni17PreheatMap_Kick["Time"] = "04-21 00:00 04-21 00:03"
tAnni17PreheatMap_Kick["Func"] = Anni17PreheatMap_Clean
table.insert(tSystemTime_InitialData,tAnni17PreheatMap_Kick)