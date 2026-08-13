------------------------------------------------------------------------------------
--Name：            180720[英文征服][活动脚本]8月金币冲爵位
--Creator:      蔡颖静
--Created:     2018/07/20
------------------------------------------------------------------------------------
--任务需求：

------------------------------------------------------------------------------------


----------------------------------表配置部分--------------------------------------------
local tAugustCoinDuck_Data={}
--活动时间
tAugustCoinDuck_Data["BeforeActiveTime"]=tActivityTime["AugustCoinDuck"]["BeforeTime"]
tAugustCoinDuck_Data["ActTime"]=tActivityTime["AugustCoinDuck"]["ActTime"]
tAugustCoinDuck_Data["AfterTime"]=tActivityTime["AugustCoinDuck"]["AfterTime"]

--跳转链接
tAugustCoinDuck_Data["Web"]="https://coevent.99.com/donation202008/"

--stc(179,77) 记录玩家上交天石数
tAugustCoinDuck_Data["Stc"]={}
tAugustCoinDuck_Data["Stc"]["EventType"]=179
tAugustCoinDuck_Data["Stc"]["DataType"]=77
tAugustCoinDuck_Data["Stc"]["Max"]=80000
--500天石兑换1500赠点
tAugustCoinDuck_Data[1]={}
tAugustCoinDuck_Data[1]["RewardNoNeedTip"] = 1 
tAugustCoinDuck_Data[1]["RewardEMoney"] = {}
tAugustCoinDuck_Data[1]["RewardEMoney"] ["Value"] = -500
tAugustCoinDuck_Data[1]["RewardEMoney"]["EmoneyLog"] = "350	21567	500	500	1	"
tAugustCoinDuck_Data[1]["RewardEMoneyMono"] = {}
tAugustCoinDuck_Data[1]["RewardEMoneyMono"] ["Value"] = 1500
--1000天石兑换3000赠点
tAugustCoinDuck_Data[2]={}
tAugustCoinDuck_Data[2]["RewardNoNeedTip"] = 1 
tAugustCoinDuck_Data[2]["RewardEMoney"] = {}
tAugustCoinDuck_Data[2]["RewardEMoney"] ["Value"] = -1000
tAugustCoinDuck_Data[2]["RewardEMoney"]["EmoneyLog"] = "350	21568	1000	1000	1	"
tAugustCoinDuck_Data[2]["RewardEMoneyMono"] = {}
tAugustCoinDuck_Data[2]["RewardEMoneyMono"] ["Value"] = 3000

--5000天石兑换15000赠点
tAugustCoinDuck_Data[3]={}
tAugustCoinDuck_Data[3]["RewardNoNeedTip"] = 1 
tAugustCoinDuck_Data[3]["RewardEMoney"] = {}
tAugustCoinDuck_Data[3]["RewardEMoney"] ["Value"] = -5000
tAugustCoinDuck_Data[3]["RewardEMoney"]["EmoneyLog"] = "350	21569	5000	5000	1	"
tAugustCoinDuck_Data[3]["RewardEMoneyMono"] = {}
tAugustCoinDuck_Data[3]["RewardEMoneyMono"] ["Value"] = 15000


tAugustCoinDuck_Data["EmoneyLog"]={}
tAugustCoinDuck_Data["EmoneyLog"][1]="1000	2076	0	0	-1500	"
tAugustCoinDuck_Data["EmoneyLog"][2]="1000	2077	0	0	-3000	"
tAugustCoinDuck_Data["EmoneyLog"][3]="1000	2078	0	0	-15000	"
----------------------------------逻辑部分---------------------------------------------
function AugustCoinDuck_ChkFunc(nNpcId,nHandInEMoney,nIndex)
--活动时间判断
	if not Sys_ChkFullTime(tAugustCoinDuck_Data["ActTime"])  then
		return
	end 
	local nUserEMoney = Get_UserEMoney()
--天石不足
	if nUserEMoney < nHandInEMoney then
		LinkNpcGossipFunc_New(nNpcId,"1-4")
		return
	end
--额度不足
	local nEvent = tAugustCoinDuck_Data["Stc"]["EventType"]
	local nType = tAugustCoinDuck_Data["Stc"]["DataType"]
	local nExchangedData = Get_UserStatisticValue(nEvent,nType)
	if nExchangedData + nHandInEMoney > tAugustCoinDuck_Data["Stc"]["Max"] then
		local nLeftEmoney=tAugustCoinDuck_Data["Stc"]["Max"]-nExchangedData
		if nLeftEmoney<= 0 then
			nLeftEmoney=0
		end
		tNpcGossip[23092]["Text162"]=string.format(tAugustCoinDuck_Text[23092]["Text162"],nLeftEmoney)
		LinkNpcGossipFunc_New(nNpcId,"1-6")
		return
	end
	-- 判断赠点上限
	local nUserId = Get_UserId()
	local nEmoney = Get_UserMonoEMoney(nUserId)
	local nAddEmoney = tAugustCoinDuck_Data[nIndex]["RewardEMoneyMono"]["Value"]
	if nEmoney + nAddEmoney > G_User_MaxEmoneyMono then
		Sys_MsgBox(tAugustCoinDuck_Text["EMoneyMono"])
		return
	end
--二次确认
	local nEmonoMoney=3*nHandInEMoney
	tNpcGossip[23092]["Text151"]=string.format(tAugustCoinDuck_Text[23092]["Text151"],nHandInEMoney,nEmonoMoney)
	tNpcGossip[23092]["OptionFunc8"]="AugustCoinDuck_Exchange</N>".. nIndex
	LinkNpcGossipFunc_New(nNpcId,"1-5")
end

--兑换
function AugustCoinDuck_Exchange(nIndex)
--活动时间判断
	if not Sys_ChkFullTime(tAugustCoinDuck_Data["ActTime"])  then
		return
	end 
--天石判断
	local nUserEMoney = Get_UserEMoney()
	local nCurrentHandInEmoney=-tAugustCoinDuck_Data[nIndex]["RewardEMoney"]["Value"]
	if nUserEMoney < nCurrentHandInEmoney then
		LinkNpcGossipFunc_New(23092,"1-4")
		return
	end
	-- 判断赠点上限
	local nUserId = Get_UserId()
	local nEmoney = Get_UserMonoEMoney(nUserId)
	local nAddEmoney = tAugustCoinDuck_Data[nIndex]["RewardEMoneyMono"]["Value"]
	if nEmoney + nAddEmoney > G_User_MaxEmoneyMono then
		Sys_MsgBox(tAugustCoinDuck_Text["EMoneyMono"])
		return
	end
--兑换成功
	if RewardTemplate_UseItem(tAugustCoinDuck_Data[nIndex]) then 
	--置掩码
		local nEvent = tAugustCoinDuck_Data["Stc"]["EventType"]
		local nType = tAugustCoinDuck_Data["Stc"]["DataType"]
		-- local nCurrentHandInEmoney=-tAugustCoinDuck_Data[nIndex]["RewardEMoney"]["Value"]
		Task_AddStatistic(nEvent,nType,nCurrentHandInEmoney,1)
		Task_SetStcTimestamp(nEvent,nType,0)
		tNpcGossip[23092]["Text173"]=string.format(tAugustCoinDuck_Text[23092]["Text173"],tAugustCoinDuck_Data[nIndex]["RewardEMoneyMono"] ["Value"])
		LinkNpcGossipFunc_New(23092,"1-7")
		Sys_SaveEmoneyBuy(tAugustCoinDuck_Data["EmoneyLog"][nIndex])
		return 
	end 
end

--链接跳转
function AugustCoinDuck_OpenPage()
	-- 判断时间
	if not Sys_ChkFullTime(tAugustCoinDuck_Data["ActTime"]) then
		return
	end
	local sWebPage = tAugustCoinDuck_Data["Web"]
	User_SendWebPage(sWebPage)
end


----------------------------------NPC部分---------------------------------------------
tNpcFace[6152] = 40
tNpcGossip[23092]= tNpcGossip[23092] or DefaultNpc:new{}
tNpcGossip[23092]["OptionHidden"] = 1
tNpcGossip[23092]["DialogueText"] = tAugustCoinDuck_Text[23092]
--活动前对白
tNpcGossip[23092]["Text1-1"] = {111}
tNpcGossip[23092]["ChkFunc1-1"]= function()
	return Sys_ChkFullTime(tAugustCoinDuck_Data["BeforeActiveTime"])
end
tNpcGossip[23092]["tOption1-1"] = {1}
tNpcGossip[23092]["Option1"]=tAugustCoinDuck_Text[23092]["Option1"]

--活动后对白
tNpcGossip[23092]["Text1-2"] = {121}
tNpcGossip[23092]["ChkFunc1-2"]= function()
	return Sys_ChkFullTime(tAugustCoinDuck_Data["AfterTime"])
end
tNpcGossip[23092]["tOption1-2"] = {2}
tNpcGossip[23092]["Option2"]=tAugustCoinDuck_Text[23092]["Option2"]

--活动中对白
tNpcGossip[23092]["Text1-3"] = {131,132,133}
-- tNpcGossip[23092]["ChkFunc1-3"]= function()
--判断活动时间
	-- if not Sys_ChkFullTime(tAugustCoinDuck_Data["ActTime"])  then
		-- return false
	-- end 
	-- local nEvent = tAugustCoinDuck_Data["Stc"]["EventType"]
	-- local nType = tAugustCoinDuck_Data["Stc"]["DataType"]
	-- local nExchangedData = Get_UserStatisticValue(nEvent,nType)
	-- local nLeftEmoney=tAugustCoinDuck_Data["Stc"]["Max"]-nExchangedData
	-- if nLeftEmoney<=0 then 
		-- nLeftEmoney=0
	-- end
	-- tNpcGossip[23092]["Text134"]=string.format(tAugustCoinDuck_Text[23092]["Text134"],nLeftEmoney)
	-- return true
-- end
tNpcGossip[23092]["tOption1-3"] = {6}
-- tNpcGossip[23092]["Option3"]=tAugustCoinDuck_Text[23092]["Option3"]
-- tNpcGossip[23092]["OptionFunc3"]="AugustCoinDuck_ChkFunc</N>23092</N>500</N>1"
-- tNpcGossip[23092]["Option4"]=tAugustCoinDuck_Text[23092]["Option4"]
-- tNpcGossip[23092]["OptionFunc4"]="AugustCoinDuck_ChkFunc</N>23092</N>1000</N>2"
-- tNpcGossip[23092]["Option5"]=tAugustCoinDuck_Text[23092]["Option5"]
-- tNpcGossip[23092]["OptionFunc5"]="AugustCoinDuck_ChkFunc</N>23092</N>5000</N>3"
tNpcGossip[23092]["Option6"]=tAugustCoinDuck_Text[23092]["Option6"]
tNpcGossip[23092]["OptionFunc6"]="AugustCoinDuck_OpenPage"

--天石不足
tNpcGossip[23092]["Text1-4"] = {141}
tNpcGossip[23092]["tOption1-4"] = {7}
tNpcGossip[23092]["Option7"]=tAugustCoinDuck_Text[23092]["Option7"]

--二次确认
tNpcGossip[23092]["Text1-5"] = {151}
tNpcGossip[23092]["tOption1-5"] = {8,9}
tNpcGossip[23092]["Option8"]=tAugustCoinDuck_Text[23092]["Option8"]
tNpcGossip[23092]["Option9"]=tAugustCoinDuck_Text[23092]["Option9"]

--兑换额度不足
tNpcGossip[23092]["Text1-6"] = {161,162}
tNpcGossip[23092]["tOption1-6"] = {10}
tNpcGossip[23092]["Option10"]=tAugustCoinDuck_Text[23092]["Option10"]

--兑换成功
tNpcGossip[23092]["Text1-7"] = {171,172,173,174,175}
tNpcGossip[23092]["tOption1-7"] = {11,12}
tNpcGossip[23092]["Option11"]=tAugustCoinDuck_Text[23092]["Option11"]
tNpcGossip[23092]["OptionPoint11"] ="1-3"
tNpcGossip[23092]["Option12"]=tAugustCoinDuck_Text[23092]["Option12"]
