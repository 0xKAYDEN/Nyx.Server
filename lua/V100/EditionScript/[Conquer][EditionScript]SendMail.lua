----------------------------------------------------------------------------
--Name:		[征服][功能脚本]发送邮件功能.lua
--Purpose:	发送邮件功能
--Creator: 	郑鋆
--Created:	2016/06/14
----------------------------------------------------------------------------

-- 命名前缀
-- SendMail_

local tSendMail_Reward = {}
	tSendMail_Reward[90123300] = {}
	tSendMail_Reward[90123300]["Space"] = 1
	tSendMail_Reward[90123300]["ActionId"] = 563999
	tSendMail_Reward[90123300]["ExistDay"] = 30
	tSendMail_Reward[90123300]["RewardItem"] = {}
	tSendMail_Reward[90123300]["RewardItem"][1] = {}
	tSendMail_Reward[90123300]["RewardItem"][1]["Id"] = 3100013
	tSendMail_Reward[90123300]["RewardItem"][1]["Attr"] = "0 1 0 1440 1"
	tSendMail_Reward[90123300]["Talk"] = tSendMail_Text[90123300]["Talk"]

	tSendMail_Reward[90123301] = {}
	tSendMail_Reward[90123301]["Space"] = 1
	tSendMail_Reward[90123301]["ActionId"] = 564000
	tSendMail_Reward[90123301]["ExistDay"] = 30
	tSendMail_Reward[90123301]["RewardItem"] = {}
	tSendMail_Reward[90123301]["RewardItem"][1] = {}
	tSendMail_Reward[90123301]["RewardItem"][1]["Id"] = 3100014
	tSendMail_Reward[90123301]["RewardItem"][1]["Attr"] = "0 1 0 1440 1"
	tSendMail_Reward[90123301]["Talk"] = tSendMail_Text[90123301]["Talk"]

	tSendMail_Reward[90123302] = {}
	tSendMail_Reward[90123302]["Space"] = 1
	tSendMail_Reward[90123302]["ActionId"] = 564001
	tSendMail_Reward[90123302]["ExistDay"] = 30
	tSendMail_Reward[90123302]["RewardItem"] = {}
	tSendMail_Reward[90123302]["RewardItem"][1] = {}
	tSendMail_Reward[90123302]["RewardItem"][1]["Id"] = 3100015
	tSendMail_Reward[90123302]["RewardItem"][1]["Attr"] = "0 1 0 1440 1"
	tSendMail_Reward[90123302]["Talk"] = tSendMail_Text[90123302]["Talk"]

	tSendMail_Reward[90123303] = {}
	tSendMail_Reward[90123303]["Space"] = 1
	tSendMail_Reward[90123303]["ActionId"] = 564002
	tSendMail_Reward[90123303]["ExistDay"] = 30
	tSendMail_Reward[90123303]["RewardItem"] = {}
	tSendMail_Reward[90123303]["RewardItem"][1] = {}
	tSendMail_Reward[90123303]["RewardItem"][1]["Id"] = 3100016
	tSendMail_Reward[90123303]["RewardItem"][1]["Attr"] = "0 1 0 1440 1"
	tSendMail_Reward[90123303]["Talk"] = tSendMail_Text[90123303]["Talk"]

	tSendMail_Reward[90123304] = {}
	tSendMail_Reward[90123304]["Space"] = 1
	tSendMail_Reward[90123304]["ActionId"] = 564003
	tSendMail_Reward[90123304]["ExistDay"] = 30
	tSendMail_Reward[90123304]["RewardItem"] = {}
	tSendMail_Reward[90123304]["RewardItem"][1] = {}
	tSendMail_Reward[90123304]["RewardItem"][1]["Id"] = 3100017
	tSendMail_Reward[90123304]["RewardItem"][1]["Attr"] = "0 1 0 1440 1"
	tSendMail_Reward[90123304]["Talk"] = tSendMail_Text[90123304]["Talk"]

function SendMail_Main(nIndex,nNowUserId)
	if tSendMail_Reward[nIndex] == nil then
		return
	end
	
	local nUserId = nNowUserId or Get_UserId()
	local nSpace = tSendMail_Reward[nIndex]["Space"]

	-- 判断背包空间(背包满用邮件发送)
	if nSpace ~= nil and (not User_CheckLeftSpace(nSpace,nUserId)) then
		local nMoney = tSendMail_Reward[nIndex]["RewardMoney"] or 0
		local nEmoney = tSendMail_Reward[nIndex]["RewardEMoney"] or 0
		local nActionId = tSendMail_Reward[nIndex]["ActionId"] or 0
		local nEmoneyType = tSendMail_Reward[nIndex]["EmoneyType"] or 0
		local nExistDay = tSendMail_Reward[nIndex]["ExistDay"] or 0
		local sSender = tSendMail_Text[nIndex]["Sender"]
		local sTitle = tSendMail_Text[nIndex]["Title"]
		local sContent = tSendMail_Text[nIndex]["Content"]

		if Sys_SendMail(nUserId,nMoney,nEmoney,nActionId,nEmoneyType,nExistDay,sSender,sTitle,sContent) then
			User_TalkChannel2005(tSendMail_Text[nIndex]["Talk"],nUserId)
		end
	else
		RewardTemplate_Reward(tSendMail_Reward[nIndex],nUserId)
	end
end

-- 程序提供的发邮件函数SendMail
-- 1.玩家ID
-- 2 金币
-- 3 天石
-- 4 尼玛
-- 5 邮件有效天数
-- 6 发送者名称
-- 7 标题
-- 8 内容
-- 返回值：成功返回true，否则返回false

-- cq_bonus表nActionId的说明
-- 首位数 ==1表示金币，  ==2表示天石， ==3表示筹码
-- 剩余的数值为对应类型的 发放金额

function SendMail_GetBonusByAction(nUserId,nActionId)
	if nActionId <= 0 or nActionId == nil then
		return
	end

	local sStr = tostring(nActionId)
	local nLength = string.len(sStr)
	
	local nDis = "1"
	for i = 1,nLength-1 do
		nDis = nDis .. 0
	end
	nDis = tonumber(nDis)
	local nType = math.floor(nActionId/nDis)
	local nNum = nActionId%nDis
	local nExistDay = 30
	
	if nType == 1 then
		-- 给金币
		Sys_SendKOKMail(nUserId,nNum,0,0,nExistDay,tSendMail_Text["Mail"]["Sender"],tSendMail_Text["Mail"]["Title"],string.format(tSendMail_Text["Mail"]["Content"][1],nNum))
	elseif nType == 2 then
		-- 给天石
		Sys_SendKOKMail(nUserId,0,nNum,0,nExistDay,tSendMail_Text["Mail"]["Sender"],tSendMail_Text["Mail"]["Title"],string.format(tSendMail_Text["Mail"]["Content"][2],nNum))
	elseif nType == 3 then
		-- 给筹码
		Sys_SendKOKMail(nUserId,0,0,nNum,nExistDay,tSendMail_Text["Mail"]["Sender"],tSendMail_Text["Mail"]["Title"],string.format(tSendMail_Text["Mail"]["Content"][3],nNum))
	else
		return
	end
end


-- 发奖触发
tGetKOKBonusByAction["tFunction"] = tGetKOKBonusByAction["tFunction"] or {}
table.insert(tGetKOKBonusByAction["tFunction"],SendMail_GetBonusByAction)
