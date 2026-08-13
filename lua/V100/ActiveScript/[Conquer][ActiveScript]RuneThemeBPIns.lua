------------------------------------------------------------------------------------
--Name：       200726[英文征服][活动脚本]精炼神纹专题战令  
--Creator:      杨志翔
--Created:     
------------------------------------------------------------------------------------


-------------------------------------------数据部分-----------------------------------------


--基础数据
local tRuneThemeBPInc_Cont = {}
tRuneThemeBPInc_Cont["ActTime"] = tActivityTime["RuneThemeBPInc"]["ActivityTime"]
tRuneThemeBPInc_Cont["CleanTime"] = tActivityTime["RuneThemeBPInc"]["CleanTime"]
tRuneThemeBPInc_Cont["Quit"] = {
    [1] = {
        ["MapId"] = 1002,
        ["PosX"] = 330,
        ["PosY"] = 440,
    },
    [2] = {
        ["MapId"] = 1036,
        ["PosX"] = 236,
        ["PosY"] = 226,
    },
}
tRuneThemeBPInc_Cont["ScoreLog"] = "0,0,%d,%d,12002089,2,30,150"
--3个等级的副本通关礼包
tRuneThemeBPInc_Cont["KV"] = {
    [3332152] = 1,
    [3332153] = 2,
    [3332154] = 3,

}
tRuneThemeBPInc_Cont["Mail"] = {
    [1] = 578969,
    [2] = 578970,
    [3] = 578971,
}
tRuneThemeBPInc_Cont["BPScore"] = 150
tRuneThemeBPInc_Cont["Ins"] = {
    --本日是否完成了副本
    ["MapDoc"] = 10762,
    ["DailyStc"] = {
        ["Event"] = 226,
        ["Data"] = 16,
    },
    --记录层数的stc
    ["EnterStc"] = {
        ["Event"] = 226,
        ["Data"] = 17,
    },
	["MapId"] = 10921,
    ["GenId"] = 31525,
    ["PosX"] = 45,
    ["PosY"] = 45,
    [1] = {
        --副本id
        ["Id"] = 795,
        ["Monster"] = {
            [1] = {
                ["Id"] = 1383,
                ["Num"] = 1,
            },
            [2] = {
                ["Id"] = 1384,
                ["Num"] = 3,
            },
        },
        ["Reward"] = {},
        
    },
    [2] = {
        --两个boss 4个分身
        ["Id"] = 796,
        ["Monster"] = {
            [1] = {
                ["Id"] = 1383,
                ["Num"] = 1,
            },
            [2] = {
                ["Id"] = 1384,
                ["Num"] = 2,
            },
            [3] = {
                ["Id"] = 1373,
                ["Num"] = 1,
            },
            [4] = {
                ["Id"] = 1374,
                ["Num"] = 2,
            },
        },
        ["Reward"] = {},
        
    },
    [3] = {
        ["Id"] = 797,
        ["Monster"] = {
            [1] = {
                ["Id"] = 1373,
                ["Num"] = 1,
            },
            [3] = {
                ["Id"] = 1375,
                ["Num"] = 1,
            },
            [5] = {
                ["Id"] = 1383,
                ["Num"] = 1,
            },
        },
        ["Reward"] = {},
        
    },
}
tRuneThemeBPInc_Cont["Quest"] = {
    ["TaskId"] = 4527,
    ["MapDoc"] = 10504,
    --隔天自行清除task
    ["MapId"] = 10922,
    ["PosX"] = 196,
    ["PosY"] = 203,

    ["TaskReq"] = {
        [1] = {
            ["Data"] = 1,
            ["MonsterId"] = 1385,
        },
        [2] = {
            ["Data"] = 2,
            ["MonsterId"] = 1386,
        }
    },
}
tRuneThemeBPInc_Cont["Level"] = 80

tRuneThemeBPInc_Cont["Ins"][1]["Reward"]["LogId"] = 12002089
tRuneThemeBPInc_Cont["Ins"][1]["Reward"]["RewardItem"] = {}
tRuneThemeBPInc_Cont["Ins"][1]["Reward"]["RewardItem"][1] = {}
tRuneThemeBPInc_Cont["Ins"][1]["Reward"]["RewardItem"][1]["Id"] = 3332152 -- 
tRuneThemeBPInc_Cont["Ins"][1]["Reward"]["RewardItem"][1]["Attr"] = "0 1" -- 
tRuneThemeBPInc_Cont["Ins"][1]["Reward"]["RewardEffect"] = {}
tRuneThemeBPInc_Cont["Ins"][1]["Reward"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tRuneThemeBPInc_Cont["Ins"][1]["Reward"]["RewardEffect"]["Effect"] = "angelwing"

tRuneThemeBPInc_Cont["Ins"][2]["Reward"]["LogId"] = 12002089
tRuneThemeBPInc_Cont["Ins"][2]["Reward"]["RewardItem"] = {}
tRuneThemeBPInc_Cont["Ins"][2]["Reward"]["RewardItem"][1] = {}
tRuneThemeBPInc_Cont["Ins"][2]["Reward"]["RewardItem"][1]["Id"] = 3332153 -- 
tRuneThemeBPInc_Cont["Ins"][2]["Reward"]["RewardItem"][1]["Attr"] = "0 1" -- 
tRuneThemeBPInc_Cont["Ins"][2]["Reward"]["RewardEffect"] = {}
tRuneThemeBPInc_Cont["Ins"][2]["Reward"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tRuneThemeBPInc_Cont["Ins"][2]["Reward"]["RewardEffect"]["Effect"] = "angelwing"

tRuneThemeBPInc_Cont["Ins"][3]["Reward"]["LogId"] = 12002089
tRuneThemeBPInc_Cont["Ins"][3]["Reward"]["RewardItem"] = {}
tRuneThemeBPInc_Cont["Ins"][3]["Reward"]["RewardItem"][1] = {}
tRuneThemeBPInc_Cont["Ins"][3]["Reward"]["RewardItem"][1]["Id"] = 3332154 -- 
tRuneThemeBPInc_Cont["Ins"][3]["Reward"]["RewardItem"][1]["Attr"] = "0 1" -- 
tRuneThemeBPInc_Cont["Ins"][3]["Reward"]["RewardEffect"] = {}
tRuneThemeBPInc_Cont["Ins"][3]["Reward"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tRuneThemeBPInc_Cont["Ins"][3]["Reward"]["RewardEffect"]["Effect"] = "angelwing"


tRuneThemeBPInc_Cont["Reward"] = {}
tRuneThemeBPInc_Cont["Reward"][3332152] = {}
tRuneThemeBPInc_Cont["Reward"][3332152]["LogId"] = 12002089
tRuneThemeBPInc_Cont["Reward"][3332152]["DeleteItem"] = {}
tRuneThemeBPInc_Cont["Reward"][3332152]["DeleteItem"][1] = {}
tRuneThemeBPInc_Cont["Reward"][3332152]["DeleteItem"][1]["Id"] = 3332152
tRuneThemeBPInc_Cont["Reward"][3332152]["RewardItem"] = {}
tRuneThemeBPInc_Cont["Reward"][3332152]["RewardItem"][1] = {}
tRuneThemeBPInc_Cont["Reward"][3332152]["RewardItem"][1]["Id"] = 3009000 -- 
tRuneThemeBPInc_Cont["Reward"][3332152]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 
tRuneThemeBPInc_Cont["Reward"][3332152]["RewardStrengthValue"] = {}
tRuneThemeBPInc_Cont["Reward"][3332152]["RewardStrengthValue"]["Value"] = 30
tRuneThemeBPInc_Cont["Reward"][3332152]["RewardEffect"] = {}
tRuneThemeBPInc_Cont["Reward"][3332152]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tRuneThemeBPInc_Cont["Reward"][3332152]["RewardEffect"]["Effect"] = "angelwing"

tRuneThemeBPInc_Cont["Reward"][3332153] = {}
tRuneThemeBPInc_Cont["Reward"][3332153]["LogId"] = 12002089
tRuneThemeBPInc_Cont["Reward"][3332153]["DeleteItem"] = {}
tRuneThemeBPInc_Cont["Reward"][3332153]["DeleteItem"][1] = {}
tRuneThemeBPInc_Cont["Reward"][3332153]["DeleteItem"][1]["Id"] = 3332153
tRuneThemeBPInc_Cont["Reward"][3332153]["RewardItem"] = {}
tRuneThemeBPInc_Cont["Reward"][3332153]["RewardItem"][1] = {}
tRuneThemeBPInc_Cont["Reward"][3332153]["RewardItem"][1]["Id"] = 3009000 -- 
tRuneThemeBPInc_Cont["Reward"][3332153]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 
tRuneThemeBPInc_Cont["Reward"][3332153]["RewardStrengthValue"] = {}
tRuneThemeBPInc_Cont["Reward"][3332153]["RewardStrengthValue"]["Value"] = 50
tRuneThemeBPInc_Cont["Reward"][3332153]["RewardEffect"] = {}
tRuneThemeBPInc_Cont["Reward"][3332153]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tRuneThemeBPInc_Cont["Reward"][3332153]["RewardEffect"]["Effect"] = "angelwing"

tRuneThemeBPInc_Cont["Reward"][3332154] = {}
tRuneThemeBPInc_Cont["Reward"][3332154]["LogId"] = 12002089
tRuneThemeBPInc_Cont["Reward"][3332154]["DeleteItem"] = {}
tRuneThemeBPInc_Cont["Reward"][3332154]["DeleteItem"][1] = {}
tRuneThemeBPInc_Cont["Reward"][3332154]["DeleteItem"][1]["Id"] = 3332154
tRuneThemeBPInc_Cont["Reward"][3332154]["RewardItem"] = {}
tRuneThemeBPInc_Cont["Reward"][3332154]["RewardItem"][1] = {}
tRuneThemeBPInc_Cont["Reward"][3332154]["RewardItem"][1]["Id"] = 3009000 -- 
tRuneThemeBPInc_Cont["Reward"][3332154]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 
tRuneThemeBPInc_Cont["Reward"][3332154]["RewardStrengthValue"] = {}
tRuneThemeBPInc_Cont["Reward"][3332154]["RewardStrengthValue"]["Value"] = 80
tRuneThemeBPInc_Cont["Reward"][3332154]["RewardEffect"] = {}
tRuneThemeBPInc_Cont["Reward"][3332154]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tRuneThemeBPInc_Cont["Reward"][3332154]["RewardEffect"]["Effect"] = "angelwing"
--------------------------------------------------------------------------------------------------
--每日清除副本的stc以及剿灭任务的task
function RuneThemeBPInc_DailyChk(nUserId)
    local nEvent = tRuneThemeBPInc_Cont["Ins"]["DailyStc"]["Event"] 
    local nData = tRuneThemeBPInc_Cont["Ins"]["DailyStc"]["Data"] 
    Task_StcReset(nEvent,nData,nUserId)
    local nTaskId = tRuneThemeBPInc_Cont["Quest"]["TaskId"]
    if Task_ChkTaskDetail(nTaskId,nUserId) then
        if Task_DetailInterval(nTaskId,1,4,nUserId) then
            if Sys_ChkFullTime(tRuneThemeBPInc_Cont["ActTime"]) then
                Task_SetTaskDetailCompleteFlag(nTaskId,0,nUserId)
                Task_SetTaskDetailData1(nTaskId,0,nUserId)
                Task_SetTaskDetailData2(nTaskId,0,nUserId)
            else
                Task_DelTaskDetail(nTaskId,nUserId)
            end
        end
    elseif Sys_ChkFullTime(tRuneThemeBPInc_Cont["ActTime"]) then
        Task_AddTaskDetail(nTaskId,0,nUserId)
    end
end

--进入副本
function RuneThemeBPInc_EnterIns(nIndex)
    if not Sys_ChkFullTime(tRuneThemeBPInc_Cont["ActTime"]) then
        return
    end
    --无法进入副本条件检测
    local nUserId = Get_UserId()
    RuneThemeBPInc_DailyChk(nUserId)
    local nEvent = tRuneThemeBPInc_Cont["Ins"]["DailyStc"]["Event"] 
    local nData = tRuneThemeBPInc_Cont["Ins"]["DailyStc"]["Data"] 
    --已完成过
    if Get_UserStatisticValue(nEvent,nData,nUserId) > 0 then
        Sys_MsgBox(tRuneThemeBPInc_Text["Completed"])
        return
    end
    --组队下不进入
    if Get_UserTeamNumbers(nUserId) > 1 then
        Sys_MsgBox(tRuneThemeBPInc_Text["Team"])
        return
    end
    if Get_UserCrimeTime(nUserId) >= 1 then
        Sys_MsgBox(tRuneThemeBPInc_Text["Crime"])
        return
    end
    --进入副本
    if User_EnterInstance(tRuneThemeBPInc_Cont["Ins"][nIndex]["Id"],0,0,0,nUserId,0) then
        --召怪
        local nMapId = Get_UserMapId()
        --遍历怪物表
        local nPosX = tRuneThemeBPInc_Cont["Ins"]["PosX"]
        local nPosY = tRuneThemeBPInc_Cont["Ins"]["PosY"]
        local nEnterEvent = tRuneThemeBPInc_Cont["Ins"]["EnterStc"]["Event"] 
        local nEnterData = tRuneThemeBPInc_Cont["Ins"]["EnterStc"]["Data"] 
        local nGenId = tRuneThemeBPInc_Cont["Ins"]["GenId"]
        Task_SetStatistic(nEnterEvent,nEnterData,nIndex,1,nUserId)
        for i,j in pairs(tRuneThemeBPInc_Cont["Ins"][nIndex]["Monster"]) do
            local nMonsterId = j["Id"]
            --召回复数的怪物
            Monster_CreateMonsterRange(0,0,nMapId,nPosX,nPosY,nGenId,nMonsterId,0,"",0,5,5,j["Num"],0)
            --精英怪增加tempdata
            if i%2 == 1 then
                Sys_SetTempData(1,nMapId,nMonsterId,j["Num"])
            end
        end
        local nMsg = string.format(tRuneThemeBPInc_Text["EnterInc"],nIndex)
        Sys_MsgBox(nMsg)
    end
end
--返回
function RuneThemeBPInc_Quit(nUserId) 
    local nNowUserId = nUserId or Get_UserId()
    local nMapId = tRuneThemeBPInc_Cont["Quit"][1]["MapId"]
    local nPosX = tRuneThemeBPInc_Cont["Quit"][1]["PosX"]
    local nPosY = tRuneThemeBPInc_Cont["Quit"][1]["PosY"]
    if SpecialServer_ChkNoGiftServer() then
        nMapId = tRuneThemeBPInc_Cont["Quit"][2]["MapId"]
        nPosX = tRuneThemeBPInc_Cont["Quit"][2]["PosX"]
        nPosY = tRuneThemeBPInc_Cont["Quit"][2]["PosY"]
    end
    User_UserRandBoundTrans(nMapId,nPosX,nPosY,5,5,1,nNowUserId)
end

--进入剿灭地图
function RuneThemeBPInc_EnterMap()
    if not Sys_ChkFullTime(tRuneThemeBPInc_Cont["ActTime"]) then
        return
    end
    local nUserId = Get_UserId()
    RuneThemeBPInc_DailyChk(nUserId)
    local nTaskId = tRuneThemeBPInc_Cont["Quest"]["TaskId"]
    --已完成
    if Task_ChkTaskDetail(nTaskId,nUserId) then
        if Get_TaskDetailCompleteFlag(nTaskId,nUserId) >= 1 then
            Sys_MsgBox(tRuneThemeBPInc_Text["Completed"])
            return
        end
    else
        Task_AddTaskDetail(nTaskId,0,nUserId)
    end
    local nMapId = tRuneThemeBPInc_Cont["Quest"]["MapId"]
    local nPosX = tRuneThemeBPInc_Cont["Quest"]["PosX"]
    local nPosY = tRuneThemeBPInc_Cont["Quest"]["PosY"]
    --传送进地图
    if User_UserRandBoundTrans(nMapId,nPosX,nPosY,5,5) then
        --成功传送
        Sys_MsgBox(tRuneThemeBPInc_Text["EnterMap"])
    end
end
--判断副本完成情况
function RuneThemeBPInc_ChkInsComplete(nUserId,nMapId,nLevel)
    if nLevel == 1 then
        return (Get_SysTempData(1,nMapId,tRuneThemeBPInc_Cont["Ins"][1]["Monster"][1]["Id"]) == 0)
    elseif nLevel == 2 then
        local nMonsterNum1 = Get_SysTempData(1,nMapId,tRuneThemeBPInc_Cont["Ins"][2]["Monster"][1]["Id"])
        local nMonsterNum2 = Get_SysTempData(1,nMapId,tRuneThemeBPInc_Cont["Ins"][2]["Monster"][3]["Id"])
        return ((nMonsterNum1+nMonsterNum2) == 0)
    else
        local nMonsterNum1 = Get_SysTempData(1,nMapId,tRuneThemeBPInc_Cont["Ins"][3]["Monster"][1]["Id"])
        local nMonsterNum2 = Get_SysTempData(1,nMapId,tRuneThemeBPInc_Cont["Ins"][3]["Monster"][3]["Id"])
        local nMonsterNum3 = Get_SysTempData(1,nMapId,tRuneThemeBPInc_Cont["Ins"][3]["Monster"][5]["Id"])
        return ((nMonsterNum1+nMonsterNum2+nMonsterNum3) == 0)
    end
end
function RuneThemeBPInc_InsKill(nMonsterId)
    if not Sys_ChkFullTime(tRuneThemeBPInc_Cont["ActTime"]) then
        return
    end
    local nUserId = Get_UserId()
    local nMapId = Get_UserMapId(nUserId)
    Monster_Death(nMonsterId,nMapId)
    local nEnterEvent = tRuneThemeBPInc_Cont["Ins"]["EnterStc"]["Event"] 
    local nEnterData = tRuneThemeBPInc_Cont["Ins"]["EnterStc"]["Data"] 
    local nLevel = Get_UserStatisticValue(nEnterEvent,nEnterData,nUserId)
    local nEvent = tRuneThemeBPInc_Cont["Ins"]["DailyStc"]["Event"] 
    local nData = tRuneThemeBPInc_Cont["Ins"]["DailyStc"]["Data"] 
    --已击杀所有的心魔
    if RuneThemeBPInc_ChkInsComplete(nUserId,nMapId,nLevel) then
        --完成任务
        Task_AddStatistic(nEvent,nData,1,1,nUserId)
        Task_SetStcTimestamp(nEvent,nData,0,nUserId)
        --增加积分
        --User_AddUserSeasonScore(tRuneThemeBPInc_Cont["BPScore"])
        --获取奖励积分
        if not RewardTemplate_CheckSpace(tRuneThemeBPInc_Cont["Ins"][nLevel]["Reward"]) then
            --空间不足就发邮件
            --
            local sSender = tRuneThemeBPInc_Text["Sender"]
            local sTitle = tRuneThemeBPInc_Text["Title"]
            local sContent = tRuneThemeBPInc_Text["Content"]
            Sys_SendMail(nUserId,0,0,tRuneThemeBPInc_Cont["Mail"][nLevel],0,3,sSender,sTitle,sContent)
            Sys_MsgBox(tRuneThemeBPInc_Text["RewardMail"])
        else
            --直接发包
            RewardTemplate_UseItemAndMsg(tRuneThemeBPInc_Cont["Ins"][nLevel]["Reward"])
            Sys_MsgBox(tRuneThemeBPInc_Text["Reward"])
        end
        BattlePassTaskTest_CompleteInstance(33,nUserId)
        RuneThemeBPInc_Quit()
    end
end

--剿灭击杀
function RuneThemeBPInc_MapKill(nMonsterId)
    if not Sys_ChkFullTime(tRuneThemeBPInc_Cont["ActTime"]) then
        return
    end
    --
    local nTaskId = tRuneThemeBPInc_Cont["Quest"]["TaskId"]
    local nUserId = Get_UserId()
    --隔天检测
    RuneThemeBPInc_DailyChk(nUserId)
    local nData1 = Get_TaskDetailData1(nTaskId,nUserId)
    local nData2 = Get_TaskDetailData2(nTaskId,nUserId)
    --本日已完成过
    if Get_TaskDetailCompleteFlag(nTaskId,nUserId) > 0 then
        return
    end
    Task_SetTaskDetailData7(nTaskId,os.time(),nUserId)
    if nMonsterId == tRuneThemeBPInc_Cont["Quest"]["TaskReq"][1]["MonsterId"] then
        if nData1 < 50 then 
            Task_SetTaskDetailData1(nTaskId,nData1+1,nUserId)
        end
    else
        if nData2 < 5 then 
            Task_SetTaskDetailData2(nTaskId,nData2+1,nUserId)
        end
    end
    --检测是否完成
    --重新赋值
    --检测完成 
    nData1 = Get_TaskDetailData1(nTaskId,nUserId)
    nData2 = Get_TaskDetailData2(nTaskId,nUserId)
    if nData1 >= 50 and nData2 >= 5 then
        Task_SetTaskDetailCompleteFlag(nTaskId,1,nUserId)
		BattlePassTaskTest_CompleteInstance(34,nUserId)
            --savelog 
        local sLog = string.format(tRuneThemeBPInc_Cont["ScoreLog"],0,0)
        Sys_SaveActionRewardLog(sLog)
        Sys_MsgBox(tRuneThemeBPInc_Text["ScoreReward"])
        --接上任务界面的完成接口
        
        RuneThemeBPInc_Quit()
    end
end

function RuneThemeBPInc_JudgeDialogue(nNpcId)
    if not Sys_ChkFullTime(tRuneThemeBPInc_Cont["ActTime"]) then
        return false
    end
	if Get_UserStatisticValue(tRuneThemeBPInc_Cont["Ins"]["DailyStc"]["Event"],tRuneThemeBPInc_Cont["Ins"]["DailyStc"]["Data"]) > 0 then
        Sys_MsgBox(tRuneThemeBPInc_Text["Completed"])
        return 
    end
	local nStc = Get_UserStatisticValue(tRuneThemeBPInc_Cont["Ins"]["EnterStc"]["Event"],tRuneThemeBPInc_Cont["Ins"]["EnterStc"]["Data"])
    if nStc > 0 then
        RuneThemeBPInc_EnterIns(nStc)
        return 
    end
    LinkNpcGossipFunc_New(nNpcId,"2-1")
end

function RuneThemeBPInc_RecordLevel(nIndex,nNpcId)
    if not Sys_ChkFullTime(tRuneThemeBPInc_Cont["ActTime"]) then
        return false
    end
    Task_SetStatistic(tRuneThemeBPInc_Cont["Ins"]["EnterStc"]["Event"],tRuneThemeBPInc_Cont["Ins"]["EnterStc"]["Data"],nIndex,1)
    Task_SetStcTimestamp(tRuneThemeBPInc_Cont["Ins"]["EnterStc"]["Event"],tRuneThemeBPInc_Cont["Ins"]["EnterStc"]["Data"],0)
    LinkNpcGossipFunc_New(nNpcId,"3-1")
end
function RuneThemeBPInc_Clean()
    if not Sys_ChkFullTime(tRuneThemeBPInc_Cont["CleanTime"]) then
        return
    end
    --副本触发不了 用自带的清场
    local nMapId = tRuneThemeBPInc_Cont["Quest"]["MapId"]
    Map_UserExeFunc(nMapId,-1,"RuneThemeBPInc_Quit")
end

--------------------------------------------------------------------
--副本npc
tNpcFace[5018] = 35
tNpcGossip[27027] = tNpcGossip[27027] or DefaultNpc:new{}
tNpcGossip[27027]["OptionHidden"] = 1

--活动前
tNpcGossip[27027]["DialogueText"] = tRuneThemeBPInc_Text[27027]
tNpcGossip[27027]["Text1-1"] = {111,112,113,114}
tNpcGossip[27027]["tOption1-1"] = {111}
tNpcGossip[27027]["ChkFunc1-1"] = function()
    return CommonFunc_GetBeforeActivityTime(tRuneThemeBPInc_Cont["ActTime"]) 
end
--活动后
tNpcGossip[27027]["Text1-2"] = {111,112,113,114}
tNpcGossip[27027]["tOption1-2"] = {121}
tNpcGossip[27027]["ChkFunc1-2"] = function()
    return CommonFunc_GetAfterActivityTime(tRuneThemeBPInc_Cont["ActTime"]) 
end
--等级不足
tNpcGossip[27027]["Text1-3"] = {111,112,113,114}
tNpcGossip[27027]["tOption1-3"] = {131}
tNpcGossip[27027]["ChkFunc1-3"] = function()
    return (not User_JudgeLevelAndMetempsychosis(tRuneThemeBPInc_Cont["Level"],0)) and Sys_ChkFullTime(tRuneThemeBPInc_Cont["ActTime"])
end
--等级不足
tNpcGossip[27027]["Text1-4"] = {111,112,113,114}
tNpcGossip[27027]["tOption1-4"] = {141,142,143}
tNpcGossip[27027]["ChkFunc1-4"] = function()
    if not Sys_ChkFullTime(tRuneThemeBPInc_Cont["ActTime"]) then
        return false
    end
    --重置每日完成
    Task_StcReset(tRuneThemeBPInc_Cont["Ins"]["DailyStc"]["Event"],tRuneThemeBPInc_Cont["Ins"]["DailyStc"]["Data"])
	Task_StcReset(tRuneThemeBPInc_Cont["Ins"]["EnterStc"]["Event"],tRuneThemeBPInc_Cont["Ins"]["EnterStc"]["Data"])
    --重置选择层次  每次都可重复选择
    --Task_SetStatistic(tRuneThemeBPInc_Cont["Ins"]["EnterStc"]["Event"],tRuneThemeBPInc_Cont["Ins"]["EnterStc"]["Data"],0,1)
    if Get_UserStatisticValue(tRuneThemeBPInc_Cont["Ins"]["DailyStc"]["Event"],tRuneThemeBPInc_Cont["Ins"]["DailyStc"]["Data"]) > 0 then
        --已完成
        tNpcGossip[27027]["Option141"] = tRuneThemeBPInc_Text[27027]["Option144"]
    else
        tNpcGossip[27027]["Option141"] = tRuneThemeBPInc_Text[27027]["Option141"]
    end
    return true
end
tNpcGossip[27027]["OptionFunc141"] = "RuneThemeBPInc_JudgeDialogue</N>27027"
tNpcGossip[27027]["OptionPoint142"] = "3-2"
tNpcGossip[27027]["OptionPoint143"] = "3-3"
--选择等级
tNpcGossip[27027]["Text2-1"] = {211}
tNpcGossip[27027]["tOption2-1"] = {211,212,213}
tNpcGossip[27027]["OptionFunc211"] = "RuneThemeBPInc_RecordLevel</N>1</N>27027"
tNpcGossip[27027]["OptionFunc212"] = "RuneThemeBPInc_RecordLevel</N>2</N>27027"
tNpcGossip[27027]["OptionFunc213"] = "RuneThemeBPInc_RecordLevel</N>3</N>27027"
--确认进入
tNpcGossip[27027]["Text3-1"] = {311}
tNpcGossip[27027]["tOption3-1"] = {311,312}
tNpcGossip[27027]["ChkFunc3-1"] = function()
    if not Sys_ChkFullTime(tRuneThemeBPInc_Cont["ActTime"]) then
        return false
    end
    local nStc = Get_UserStatisticValue(tRuneThemeBPInc_Cont["Ins"]["EnterStc"]["Event"],tRuneThemeBPInc_Cont["Ins"]["EnterStc"]["Data"])
    tNpcGossip[27027]["Text311"] = string.format(tRuneThemeBPInc_Text[27027]["Text311"],nStc)
    tNpcGossip[27027]["OptionFunc311"] = string.format("RuneThemeBPInc_EnterIns</N>%d",nStc)
    return true
end
tNpcGossip[27027]["OptionFunc311"] = ""

tNpcGossip[27027]["Text3-2"] = {321,322,323,324,325,326}
tNpcGossip[27027]["tOption3-2"] = {321}
tNpcGossip[27027]["OptionPoint321"] = "1-4"

tNpcGossip[27027]["Text3-3"] = {331,332,333,334,335,336}
tNpcGossip[27027]["tOption3-3"] = {331}
tNpcGossip[27027]["OptionPoint331"] = "1-4"


--剿灭npc
tNpcFace[5852] = 35
tNpcGossip[27028] = tNpcGossip[27028] or DefaultNpc:new{}
tNpcGossip[27028]["OptionHidden"] = 1

--活动前
tNpcGossip[27028]["DialogueText"] = tRuneThemeBPInc_Text[27028]
tNpcGossip[27028]["Text1-1"] = {111,112,113,114}
tNpcGossip[27028]["tOption1-1"] = {111}
tNpcGossip[27028]["ChkFunc1-1"] = function()
    return CommonFunc_GetBeforeActivityTime(tRuneThemeBPInc_Cont["ActTime"]) 
end
--活动后
tNpcGossip[27028]["Text1-2"] = {111,112,113,114}
tNpcGossip[27028]["tOption1-2"] = {121}
tNpcGossip[27028]["ChkFunc1-2"] = function()
    return CommonFunc_GetAfterActivityTime(tRuneThemeBPInc_Cont["ActTime"]) 
end
--等级不足
tNpcGossip[27028]["Text1-3"] = {111,112,113,114}
tNpcGossip[27028]["tOption1-3"] = {131}
tNpcGossip[27028]["ChkFunc1-3"] = function()
    return (not User_JudgeLevelAndMetempsychosis(tRuneThemeBPInc_Cont["Level"],0)) and Sys_ChkFullTime(tRuneThemeBPInc_Cont["ActTime"])
end

tNpcGossip[27028]["Text1-4"] = {111,112,113,114}
tNpcGossip[27028]["tOption1-4"] = {141,142}
tNpcGossip[27028]["ChkFunc1-4"] = function()
    if not Sys_ChkFullTime(tRuneThemeBPInc_Cont["ActTime"]) then
        return false
    end
    --是否完成]
    local nTaskId = tRuneThemeBPInc_Cont["Quest"]["TaskId"]
    local nUserId = Get_UserId()
    RuneThemeBPInc_DailyChk(nUserId)
    if Task_ChkTaskDetail(nTaskId,nUserId) then
        if (Get_TaskDetailCompleteFlag(nTaskId,nUserId) > 0) then
            tNpcGossip[27028]["Option141"] = tRuneThemeBPInc_Text[27028]["Option143"]
        else
            tNpcGossip[27028]["Option141"] = tRuneThemeBPInc_Text[27028]["Option144"]
        end
    else

        tNpcGossip[27028]["Option141"] = tRuneThemeBPInc_Text[27028]["Option141"]
    end
    return true
end
tNpcGossip[27028]["OptionFunc141"] = "RuneThemeBPInc_EnterMap"
tNpcGossip[27028]["OptionPoint142"] = "2-1"



tNpcGossip[27028]["Text2-1"] = {211,212,213,214,215,216}
tNpcGossip[27028]["tOption2-1"] = {211}
tNpcGossip[27028]["OptionPoint321"] = "1-4"


--------------------------------------------------------------------
tItem[3332152] = tItem[3332152] or {}
tItem[3332152]["Function"] = function(nItemId)
    --链接到item对应的索引
    --过期删除
    if not Sys_ChkFullTime(tRuneThemeBPInc_Cont["ActTime"]) then
        Item_DelAllItemByType(nItemId)
        Sys_MsgBox(tRuneThemeBPInc_Text["TimeOut"])
        return
    end
    local nUserId = Get_UserId()
    if RewardTemplate_UseItemAndMsg(tRuneThemeBPInc_Cont["Reward"][nItemId]) then
		--增加积分
 
        --local sLog = string.format(tRuneThemeBPInc_Cont["ScoreLog"],nItemId,1)
        --Sys_SaveActionRewardLog(sLog)
        --Sys_MsgBox(tRuneThemeBPInc_Text["Score"])
    end
end
tItem[3332153] = tItem[3332152]
tItem[3332154] = tItem[3332152]

--201 209 10922
--63 63
--996049 996050
tTrap[2618] = tTrap[2618] or {}
tTrap[2618]["Function"] = function()
	local nUserId = Get_UserId()
	Sys_MsgBox(tRuneThemeBPInc_Text["Quit"],"RuneThemeBPInc_Quit",nil,nUserId)
end



------------------------------------------------------------------------
--副本怪物
local tRuneThemeBPInc_IncMonster = {}
tRuneThemeBPInc_IncMonster["ActivityTime"] = tRuneThemeBPInc_Cont["ActTime"]
tRuneThemeBPInc_IncMonster["Function"] = RuneThemeBPInc_InsKill
tRuneThemeBPInc_IncMonster["MonsterId"] = {1383,1373,1375}
--剿灭
local tRuneThemeBPInc_MapMonster = {}
tRuneThemeBPInc_MapMonster["ActivityTime"] = tRuneThemeBPInc_Cont["ActTime"]
tRuneThemeBPInc_MapMonster["Function"] = RuneThemeBPInc_MapKill
tRuneThemeBPInc_MapMonster["MonsterId"] = {1385,1386}

table.insert(tMonsterDrop_AreaLoad,tRuneThemeBPInc_IncMonster)
table.insert(tMonsterDrop_AreaLoad,tRuneThemeBPInc_MapMonster)


--活动结束后踢人 
local tRuneThemeBPInc_KickTable = {}
tRuneThemeBPInc_KickTable["ActivityTime"] = tActivityTime["RuneThemeBPInc"]["CleanTime"]
tRuneThemeBPInc_KickTable["Type"] = 4
tRuneThemeBPInc_KickTable["TimeType"] = 4
tRuneThemeBPInc_KickTable["Multiple"] = {}
tRuneThemeBPInc_KickTable["Multiple"][1]  = "00:00 00:05"
tRuneThemeBPInc_KickTable["Func"] = RuneThemeBPInc_Clean

table.insert(tSystemTime_InitialData,tRuneThemeBPInc_KickTable)