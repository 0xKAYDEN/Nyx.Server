--------------------------------------------------------------------------------------------------------
--name:170713[英文征服][活动脚本]8月老玩家回归礼包及发奖action制作
--by:魏贻逵
--date:2017-07-13
--------------------------------------------------------------------------------------------------------
-- 命名：AugustReturnoldplayersPack
-- LogId: 10002426
--掩码:
-- 16407 开启0-1500礼包2
-- 16408 开启1501-3000礼包2
-- 16409 开启3001-5000礼包礼包2
-- 16410 开启5001以上礼包2

--0-1000元礼包1
local	tAugustReturnoldplayersPack_Award = {} 
		tAugustReturnoldplayersPack_Award["Time"] = "2017-01-01 00:00 2017-10-08 23:59"

		tAugustReturnoldplayersPack_Award[3304063] = {} 
		tAugustReturnoldplayersPack_Award[3304063]["Reward"] = {}
		tAugustReturnoldplayersPack_Award[3304063]["LogId"] = 10002426
		tAugustReturnoldplayersPack_Award[3304063]["Space"] = 8

		tAugustReturnoldplayersPack_Award[3304063]["RewardItem"] = {}
		tAugustReturnoldplayersPack_Award[3304063]["RewardItem"][1] = {}
		tAugustReturnoldplayersPack_Award[3304063]["RewardItem"][1]["Id"] = 3009001
		tAugustReturnoldplayersPack_Award[3304063]["RewardItem"][1]["Attr"] = "0 5 0 2880 1"

		tAugustReturnoldplayersPack_Award[3304063]["RewardStrengthValue"] = {}
		tAugustReturnoldplayersPack_Award[3304063]["RewardStrengthValue"]["Value"] = 5000

		tAugustReturnoldplayersPack_Award[3304063]["RewardItem"][2] = {}
		tAugustReturnoldplayersPack_Award[3304063]["RewardItem"][2]["Id"] = 3001407
		tAugustReturnoldplayersPack_Award[3304063]["RewardItem"][2]["Attr"] = "0 1 3"

		tAugustReturnoldplayersPack_Award[3304063]["RewardItem"][3] = {}
		tAugustReturnoldplayersPack_Award[3304063]["RewardItem"][3]["Id"] = 3003124
		tAugustReturnoldplayersPack_Award[3304063]["RewardItem"][3]["Attr"] = "0 20 3"
		
		tAugustReturnoldplayersPack_Award[3304063]["RewardItem"][4] = {}
		tAugustReturnoldplayersPack_Award[3304063]["RewardItem"][4]["Id"] = 3003125
		tAugustReturnoldplayersPack_Award[3304063]["RewardItem"][4]["Attr"] = "0 50 3"

		tAugustReturnoldplayersPack_Award[3304063]["RewardItem"][5] = {}
		tAugustReturnoldplayersPack_Award[3304063]["RewardItem"][5]["Id"] = 188495
		tAugustReturnoldplayersPack_Award[3304063]["RewardItem"][5]["Attr"] = "0 1 3 43200 1 0 0 1"

--0-1000元礼包2
		tAugustReturnoldplayersPack_Award[3304064] = {} 
		tAugustReturnoldplayersPack_Award[3304064]["Reward"] = {}
		tAugustReturnoldplayersPack_Award[3304064]["LogId"] = 10002426
		tAugustReturnoldplayersPack_Award[3304064]["Space"] = 5
		tAugustReturnoldplayersPack_Award[3304064]["MonoEmoney"] = 100
		tAugustReturnoldplayersPack_Award[3304064]["EventType1"] = 164
		tAugustReturnoldplayersPack_Award[3304064]["DataType1"] = 07
		tAugustReturnoldplayersPack_Award[3304064]["NeedEmoney"] = 299

		tAugustReturnoldplayersPack_Award[3304064]["RewardItem"] = {}
		tAugustReturnoldplayersPack_Award[3304064]["RewardItem"][1] = {}
		tAugustReturnoldplayersPack_Award[3304064]["RewardItem"][1]["Id"] = 3009001
		tAugustReturnoldplayersPack_Award[3304064]["RewardItem"][1]["Attr"] = "0 3 0 2880 1"

		tAugustReturnoldplayersPack_Award[3304064]["RewardStrengthValue"] = {}
		tAugustReturnoldplayersPack_Award[3304064]["RewardStrengthValue"]["Value"] = 1000

		tAugustReturnoldplayersPack_Award[3304064]["RewardEMoneyMono"] = {}
		tAugustReturnoldplayersPack_Award[3304064]["RewardEMoneyMono"]["Value"] = 100

		tAugustReturnoldplayersPack_Award[3304064]["RewardItem"][2] = {}
		tAugustReturnoldplayersPack_Award[3304064]["RewardItem"][2]["Id"] = 3003124
		tAugustReturnoldplayersPack_Award[3304064]["RewardItem"][2]["Attr"] = "0 20 3"

		tAugustReturnoldplayersPack_Award[3304064]["RewardItem"][3] = {}
		tAugustReturnoldplayersPack_Award[3304064]["RewardItem"][3]["Id"] = 3003126
		tAugustReturnoldplayersPack_Award[3304064]["RewardItem"][3]["Attr"] = "0 5 3"

--1501-3000礼包1
		tAugustReturnoldplayersPack_Award[3304065] = {} 
		tAugustReturnoldplayersPack_Award[3304065]["Reward"] = {}
		tAugustReturnoldplayersPack_Award[3304065]["LogId"] = 10002426
		tAugustReturnoldplayersPack_Award[3304065]["Space"] = 15

		tAugustReturnoldplayersPack_Award[3304065]["RewardItem"] = {}
		tAugustReturnoldplayersPack_Award[3304065]["RewardItem"][1] = {}
		tAugustReturnoldplayersPack_Award[3304065]["RewardItem"][1]["Id"] = 3009001
		tAugustReturnoldplayersPack_Award[3304065]["RewardItem"][1]["Attr"] = "0 10 0 2880 1"

		tAugustReturnoldplayersPack_Award[3304065]["RewardStrengthValue"] = {}
		tAugustReturnoldplayersPack_Award[3304065]["RewardStrengthValue"]["Value"] = 10000

		tAugustReturnoldplayersPack_Award[3304065]["RewardItem"][2] = {}
		tAugustReturnoldplayersPack_Award[3304065]["RewardItem"][2]["Id"] = 3001407
		tAugustReturnoldplayersPack_Award[3304065]["RewardItem"][2]["Attr"] = "0 2 3"

		tAugustReturnoldplayersPack_Award[3304065]["RewardItem"][3] = {}
		tAugustReturnoldplayersPack_Award[3304065]["RewardItem"][3]["Id"] = 3003124
		tAugustReturnoldplayersPack_Award[3304065]["RewardItem"][3]["Attr"] = "0 30 3"

		tAugustReturnoldplayersPack_Award[3304065]["RewardItem"][4] = {}
		tAugustReturnoldplayersPack_Award[3304065]["RewardItem"][4]["Id"] = 3003125
		tAugustReturnoldplayersPack_Award[3304065]["RewardItem"][4]["Attr"] = "0 50 3"

		tAugustReturnoldplayersPack_Award[3304065]["RewardItem"][5] = {}
		tAugustReturnoldplayersPack_Award[3304065]["RewardItem"][5]["Id"] = 188495
		tAugustReturnoldplayersPack_Award[3304065]["RewardItem"][5]["Attr"] = "0 1 3 43200 1 0 0 1"

		tAugustReturnoldplayersPack_Award[3304065]["RewardItem"][6] = {}
		tAugustReturnoldplayersPack_Award[3304065]["RewardItem"][6]["Id"] = 200403
		tAugustReturnoldplayersPack_Award[3304065]["RewardItem"][6]["Attr"] = "0 1 3 21600 1"

--3001-5000礼包1
		tAugustReturnoldplayersPack_Award[3304067] = {} 
		tAugustReturnoldplayersPack_Award[3304067]["Reward"] = {}
		tAugustReturnoldplayersPack_Award[3304067]["LogId"] = 10002426
		tAugustReturnoldplayersPack_Award[3304067]["Space"] = 9

		tAugustReturnoldplayersPack_Award[3304067]["RewardItem"] = {}
		tAugustReturnoldplayersPack_Award[3304067]["RewardItem"][1] = {}
		tAugustReturnoldplayersPack_Award[3304067]["RewardItem"][1]["Id"] = 3009002
		tAugustReturnoldplayersPack_Award[3304067]["RewardItem"][1]["Attr"] = "0 3 0 2880 1"

		tAugustReturnoldplayersPack_Award[3304067]["RewardStrengthValue"] = {}
		tAugustReturnoldplayersPack_Award[3304067]["RewardStrengthValue"]["Value"] = 15000

		tAugustReturnoldplayersPack_Award[3304067]["RewardItem"][2] = {}
		tAugustReturnoldplayersPack_Award[3304067]["RewardItem"][2]["Id"] = 3001407
		tAugustReturnoldplayersPack_Award[3304067]["RewardItem"][2]["Attr"] = "0 3 3"

		tAugustReturnoldplayersPack_Award[3304067]["RewardItem"][3] = {}
		tAugustReturnoldplayersPack_Award[3304067]["RewardItem"][3]["Id"] = 3003124
		tAugustReturnoldplayersPack_Award[3304067]["RewardItem"][3]["Attr"] = "0 50 3"

		tAugustReturnoldplayersPack_Award[3304067]["RewardItem"][4] = {}
		tAugustReturnoldplayersPack_Award[3304067]["RewardItem"][4]["Id"] = 3003126
		tAugustReturnoldplayersPack_Award[3304067]["RewardItem"][4]["Attr"] = "0 30 3"

		tAugustReturnoldplayersPack_Award[3304067]["RewardItem"][5] = {}
		tAugustReturnoldplayersPack_Award[3304067]["RewardItem"][5]["Id"] = 188495
		tAugustReturnoldplayersPack_Award[3304067]["RewardItem"][5]["Attr"] = "0 1 3 43200 1 0 0 1"

		tAugustReturnoldplayersPack_Award[3304067]["RewardItem"][6] = {}
		tAugustReturnoldplayersPack_Award[3304067]["RewardItem"][6]["Id"] = 200413
		tAugustReturnoldplayersPack_Award[3304067]["RewardItem"][6]["Attr"] = "0 1 3 21600 1"

--3001-5000礼包2
		tAugustReturnoldplayersPack_Award[3304068] = {} 
		tAugustReturnoldplayersPack_Award[3304068]["Reward"] = {}
		tAugustReturnoldplayersPack_Award[3304068]["LogId"] = 10002426
		tAugustReturnoldplayersPack_Award[3304068]["Space"] = 4
		tAugustReturnoldplayersPack_Award[3304068]["EventType1"] = 164
		tAugustReturnoldplayersPack_Award[3304068]["DataType1"] = 09
		tAugustReturnoldplayersPack_Award[3304068]["NeedEmoney"] = 1299

		tAugustReturnoldplayersPack_Award[3304068]["RewardItem"] = {}
		tAugustReturnoldplayersPack_Award[3304068]["RewardItem"][1] = {}
		tAugustReturnoldplayersPack_Award[3304068]["RewardItem"][1]["Id"] = 3009002
		tAugustReturnoldplayersPack_Award[3304068]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"

		tAugustReturnoldplayersPack_Award[3304068]["RewardStrengthValue"] = {}
		tAugustReturnoldplayersPack_Award[3304068]["RewardStrengthValue"]["Value"] = 2000

		tAugustReturnoldplayersPack_Award[3304068]["RewardItem"][2] = {}
		tAugustReturnoldplayersPack_Award[3304068]["RewardItem"][2]["Id"] = 3304071
		tAugustReturnoldplayersPack_Award[3304068]["RewardItem"][2]["Attr"] = "0 1 3"

		tAugustReturnoldplayersPack_Award[3304068]["RewardItem"][3] = {}
		tAugustReturnoldplayersPack_Award[3304068]["RewardItem"][3]["Id"] = 3003124
		tAugustReturnoldplayersPack_Award[3304068]["RewardItem"][3]["Attr"] = "0 30 3"

		tAugustReturnoldplayersPack_Award[3304068]["RewardItem"][4] = {}
		tAugustReturnoldplayersPack_Award[3304068]["RewardItem"][4]["Id"] = 3003126
		tAugustReturnoldplayersPack_Award[3304068]["RewardItem"][4]["Attr"] = "0 10 3"

--5001以上礼包1
		tAugustReturnoldplayersPack_Award[3304069] = {} 
		tAugustReturnoldplayersPack_Award[3304069]["Reward"] = {}
		tAugustReturnoldplayersPack_Award[3304069]["LogId"] = 10002426
		tAugustReturnoldplayersPack_Award[3304069]["Space"] = 13

		tAugustReturnoldplayersPack_Award[3304069]["RewardItem"] = {}
		tAugustReturnoldplayersPack_Award[3304069]["RewardItem"][1] = {}
		tAugustReturnoldplayersPack_Award[3304069]["RewardItem"][1]["Id"] = 3009002
		tAugustReturnoldplayersPack_Award[3304069]["RewardItem"][1]["Attr"] = "0 5 0 2880 1"

		tAugustReturnoldplayersPack_Award[3304069]["RewardStrengthValue"] = {}
		tAugustReturnoldplayersPack_Award[3304069]["RewardStrengthValue"]["Value"] = 30000

		tAugustReturnoldplayersPack_Award[3304069]["RewardItem"][2] = {}
		tAugustReturnoldplayersPack_Award[3304069]["RewardItem"][2]["Id"] = 3001407
		tAugustReturnoldplayersPack_Award[3304069]["RewardItem"][2]["Attr"] = "0 5 3"

		tAugustReturnoldplayersPack_Award[3304069]["RewardItem"][3] = {}
		tAugustReturnoldplayersPack_Award[3304069]["RewardItem"][3]["Id"] = 3003124
		tAugustReturnoldplayersPack_Award[3304069]["RewardItem"][3]["Attr"] = "0 100 3"

		tAugustReturnoldplayersPack_Award[3304069]["RewardItem"][4] = {}
		tAugustReturnoldplayersPack_Award[3304069]["RewardItem"][4]["Id"] = 3003126
		tAugustReturnoldplayersPack_Award[3304069]["RewardItem"][4]["Attr"] = "0 50 3"

		tAugustReturnoldplayersPack_Award[3304069]["RewardItem"][5] = {}
		tAugustReturnoldplayersPack_Award[3304069]["RewardItem"][5]["Id"] = 188495
		tAugustReturnoldplayersPack_Award[3304069]["RewardItem"][5]["Attr"] = "0 1 3 43200 1 0 0 1"

		tAugustReturnoldplayersPack_Award[3304069]["RewardItem"][6] = {}
		tAugustReturnoldplayersPack_Award[3304069]["RewardItem"][6]["Id"] = 200495
		tAugustReturnoldplayersPack_Award[3304069]["RewardItem"][6]["Attr"] = "0 1 3 21600 1"

--5001以上礼包2
		tAugustReturnoldplayersPack_Award[3304070] = {} 
		tAugustReturnoldplayersPack_Award[3304070]["Reward"] = {}
		tAugustReturnoldplayersPack_Award[3304070]["LogId"] = 10002426
		tAugustReturnoldplayersPack_Award[3304070]["Space"] = 5
		tAugustReturnoldplayersPack_Award[3304070]["EventType1"] = 164
		tAugustReturnoldplayersPack_Award[3304070]["DataType1"] = 10
		tAugustReturnoldplayersPack_Award[3304070]["NeedEmoney"] = 3799

		tAugustReturnoldplayersPack_Award[3304070]["RewardItem"] = {}
		tAugustReturnoldplayersPack_Award[3304070]["RewardItem"][1] = {}
		tAugustReturnoldplayersPack_Award[3304070]["RewardItem"][1]["Id"] = 3009002
		tAugustReturnoldplayersPack_Award[3304070]["RewardItem"][1]["Attr"] = "0 2 0 2880 1"

		tAugustReturnoldplayersPack_Award[3304070]["RewardStrengthValue"] = {}
		tAugustReturnoldplayersPack_Award[3304070]["RewardStrengthValue"]["Value"] = 300

		tAugustReturnoldplayersPack_Award[3304070]["RewardItem"][2] = {}
		tAugustReturnoldplayersPack_Award[3304070]["RewardItem"][2]["Id"] = 3304072
		tAugustReturnoldplayersPack_Award[3304070]["RewardItem"][2]["Attr"] = "0 1 3"

		tAugustReturnoldplayersPack_Award[3304070]["RewardItem"][3] = {}
		tAugustReturnoldplayersPack_Award[3304070]["RewardItem"][3]["Id"] = 3003124
		tAugustReturnoldplayersPack_Award[3304070]["RewardItem"][3]["Attr"] = "0 50 3"

		tAugustReturnoldplayersPack_Award[3304070]["RewardItem"][4] = {}
		tAugustReturnoldplayersPack_Award[3304070]["RewardItem"][4]["Id"] = 3003126
		tAugustReturnoldplayersPack_Award[3304070]["RewardItem"][4]["Attr"] = "0 20 3"

--非赠+4赤练石或赠品+5赤练石可选包
		tAugustReturnoldplayersPack_Award[3304071] = {} 
		tAugustReturnoldplayersPack_Award[3304071][1] = {} 
		tAugustReturnoldplayersPack_Award[3304071][1]["RewardItem"] = {}
		tAugustReturnoldplayersPack_Award[3304071][1]["RewardItem"][1] = {}
		tAugustReturnoldplayersPack_Award[3304071][1]["RewardItem"][1]["Id"] = 730004
		tAugustReturnoldplayersPack_Award[3304071][1]["RewardItem"][1]["Attr"] = "0 1"
		
		tAugustReturnoldplayersPack_Award[3304071][2] = {} 
		tAugustReturnoldplayersPack_Award[3304071][2]["RewardItem"] = {}
		tAugustReturnoldplayersPack_Award[3304071][2]["RewardItem"][1] = {}
		tAugustReturnoldplayersPack_Award[3304071][2]["RewardItem"][1]["Id"] = 730005
		tAugustReturnoldplayersPack_Award[3304071][2]["RewardItem"][1]["Attr"] = "0 1 3"

--非赠+5赤练石或赠品+6赤练石可选包
		tAugustReturnoldplayersPack_Award[3304072] = {} 
		tAugustReturnoldplayersPack_Award[3304072][1] = {} 
		tAugustReturnoldplayersPack_Award[3304072][1]["RewardItem"] = {}
		tAugustReturnoldplayersPack_Award[3304072][1]["RewardItem"][1] = {}
		tAugustReturnoldplayersPack_Award[3304072][1]["RewardItem"][1]["Id"] = 730005
		tAugustReturnoldplayersPack_Award[3304072][1]["RewardItem"][1]["Attr"] = "0 1"

		tAugustReturnoldplayersPack_Award[3304072][2] = {} 
		tAugustReturnoldplayersPack_Award[3304072][2]["RewardItem"] = {}
		tAugustReturnoldplayersPack_Award[3304072][2]["RewardItem"][1] = {}
		tAugustReturnoldplayersPack_Award[3304072][2]["RewardItem"][1]["Id"] = 730006
		tAugustReturnoldplayersPack_Award[3304072][2]["RewardItem"][1]["Attr"] = "0 1 3"

--------------------------------------------------------------------------------------------------------
--礼包开启条件检查
function AugustReturnoldplayersPack_Chk(nItemId)
	local nMonoEmoney = tAugustReturnoldplayersPack_Award[nItemId]["MonoEmoney"]
	local nUserMonoEmoney = Get_UserMonoEMoney()
	local nSpace = tAugustReturnoldplayersPack_Award[nItemId]["Space"]

--判断赠点上限
	if nMonoEmoney ~= nil then
		if nMonoEmoney + nUserMonoEmoney > G_User_MaxEmoneyMono then
			User_TalkChannel2005(tAugustReturnoldplayersPack_Text["MonoEmoneyFull"])
			return false
		end
	end

--判断背包空间
	if not User_CheckLeftSpace(nSpace) then
		User_TalkChannel2005(string.format(tAugustReturnoldplayersPack_Text["NoSpace"],nSpace))
		return false
	end
	return true
end


--直接获得
function AugustReturnoldplayersPack_Item1(nItemId)
	if AugustReturnoldplayersPack_Chk(nItemId) then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			RewardTemplate_UseItem(tAugustReturnoldplayersPack_Award[nItemId])
		end
	end
end

--7日礼包
function AugustReturnoldplayersPack_Item2(nItemId)
--加个时间限制 10.8号前使用
	if not Sys_ChkFullTime(tAugustReturnoldplayersPack_Award["Time"]) then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			User_TalkChannel2005(tAugustReturnoldplayersPack_Text["TimeOut"])
		end
		return
	end

	local nEventType = tAugustReturnoldplayersPack_Award[nItemId]["EventType1"]
	local nDataType = tAugustReturnoldplayersPack_Award[nItemId]["DataType1"]
	local nData = Get_UserStatisticValue(nEventType,nDataType)
	
--首次打开
	if nData == 0 then
		LinkItemGossipFunc_New(nItemId,"1-1")
		return
	end

--判断是否隔天
	if not Task_StcInterval(nEventType,nDataType,1,4) then
		User_TalkChannel2005(tAugustReturnoldplayersPack_Text["OpenLimit"])
		return
	end

	if AugustReturnoldplayersPack_Chk(nItemId) then
		if nData >= 6 then
			if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
				Task_SetStatistic(nEventType,nDataType,0,1)
				Task_SetStcTimestamp(nEventType,nDataType,0)
				RewardTemplate_UseItem(tAugustReturnoldplayersPack_Award[nItemId])
			end
		else
			Task_AddStatistic(nEventType,nDataType,1,1)
			Task_SetStcTimestamp(nEventType,nDataType,0)
			RewardTemplate_UseItem(tAugustReturnoldplayersPack_Award[nItemId])
		end
	end
end

--打开礼包
function AugustReturnoldplayersPack_OpenPack(nItemId)
--加个时间限制 10.8号前使用
	if not Sys_ChkFullTime(tAugustReturnoldplayersPack_Award["Time"]) then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			User_TalkChannel2005(tAugustReturnoldplayersPack_Text["TimeOut"])
		end
		return
	end

	local nEMoney = tAugustReturnoldplayersPack_Award[nItemId]["NeedEmoney"]
	local nUserEMoney = Get_UserEMoney()
	local nEventType = tAugustReturnoldplayersPack_Award[nItemId]["EventType1"]
	local nDataType = tAugustReturnoldplayersPack_Award[nItemId]["DataType1"]

	if nUserEMoney < nEMoney then
		User_TalkChannel2005(tAugustReturnoldplayersPack_Text["NoEMoney"])
		return
	end

	if AugustReturnoldplayersPack_Chk(nItemId) and User_AddEMoney(-nEMoney) then
		Task_AddStatistic(nEventType,nDataType,1,1)
		Task_SetStcTimestamp(nEventType,nDataType,0)
		RewardTemplate_UseItem(tAugustReturnoldplayersPack_Award[nItemId])
	end
end

--赤炼石可选包
function AugustReturnoldplayersPack_Item3(nItemId,nOption)
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		RewardTemplate_UseItem(tAugustReturnoldplayersPack_Award[nItemId][nOption])
	end
end


--------------------------------------------------------------------------------------------------------
tItem[3304063] = tItem[3304063] or {}
tItem[3304063]["Function"] = function(nItemId,sItemName)
	AugustReturnoldplayersPack_Item1(nItemId,sItemName)
end

tItem[3304065] = tItem[3304063]
tItem[3304067] = tItem[3304063]
tItem[3304069] = tItem[3304063]

tItem[3304064] = tItem[3304064] or {}
tItem[3304064]["Function"] = function(nItemId,sItemName)
	AugustReturnoldplayersPack_Item2(nItemId,sItemName)
end

tItem[3304064]["Text1-1"] = {111}
tItem[3304064]["tOption1-1"] = {1,2}
tItem[3304064]["ChkFunc1-1"] = function ()
	local nItemId = Get_ItemType()
	tItem[nItemId]["Text111"] = tAugustReturnoldplayersPack_Text[nItemId]["Text111"]
	tItem[nItemId]["Option1"] = tAugustReturnoldplayersPack_Text[nItemId]["Option1"]
	tItem[nItemId]["Option2"] = tAugustReturnoldplayersPack_Text[nItemId]["Option2"]
	tItem[nItemId]["OptionFunc1"]="AugustReturnoldplayersPack_OpenPack</N>"..nItemId
	return true
end

tItem[3304068] = tItem[3304064]
tItem[3304070] = tItem[3304064]

tItem[3304071] = tItem[3304071] or {}
tItem[3304071]["Text1-1"] = {111}
tItem[3304071]["tOption1-1"] = {1,2}
tItem[3304071]["ChkFunc1-1"] = function ()
	local nItemId = Get_ItemType()
	tItem[nItemId]["Text111"] = tAugustReturnoldplayersPack_Text[nItemId]["Text111"]
	tItem[nItemId]["Option1"] = tAugustReturnoldplayersPack_Text[nItemId]["Option1"]
	tItem[nItemId]["Option2"] = tAugustReturnoldplayersPack_Text[nItemId]["Option2"]
	tItem[nItemId]["OptionFunc1"]="AugustReturnoldplayersPack_Item3</N>"..nItemId.."</N>1"
	tItem[nItemId]["OptionFunc2"]="AugustReturnoldplayersPack_Item3</N>"..nItemId.."</N>2"
	return true
end

tItem[3304072] = tItem[3304071]









