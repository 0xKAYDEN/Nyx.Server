------------------------------------------------------------------------------------
--Name：         191118[简体征服][活动脚本]全球万圣节气氛布置下架&线下部分奖励发放
--Creator:      耿力兀
--Created:     2019-11-18
------------------------------------------------------------------------------------
--任务需求：
--3313823,全球万圣氛围冠军礼盒 发奖action 574819  1
--3313824,全球万圣氛围亚军礼盒 发奖action 574820  2
--3313825,全球万圣氛围季军礼盒 发奖action 574821  3
--3313826,全球万圣氛围强者礼盒 发奖action 574822  4-6
--3313827,全球万圣氛围精英礼盒 发奖action 574823  7-10
--3313828,全球万圣氛围参与礼盒 发奖action 574824  未进前10

--简体服务器：
--第一大区	  1	    碧海情天   第2名
--第十六大区 126	龙腾虎跃	第4名

--英文服务器
--Nature	23	Lightning  第一名
--Wild Kingdom	2	Phoenix/StatueOfZeus  第三名
--Elements	85	Storm/Pishu_EU   第5名
--Dreams	18	Faith		第6名
--Galaxy	34	Uranus		第7名
--Galaxy	35	Neptune/Pluto/Jupiter		第8名
--Dreams	15	Honor/Justice		第9名
--FairyTales	67	WildSwan/FrogPrince/Bluebird/BeautyandBeast		第10名

------------------------------------------------------------------------------------
--前缀：HalloweenAction_
--stc掩码：209 91 是否领奖
----------------------------------表配置部分--------------------------------------------
local tHalloweenAction_Date = {}
	tHalloweenAction_Date[23] = 574819
	tHalloweenAction_Date[2] = 574821
	tHalloweenAction_Date[85] = 574822
	tHalloweenAction_Date[18] = 574822
	tHalloweenAction_Date[34] = 574823
	tHalloweenAction_Date[35] = 574823
	tHalloweenAction_Date[15] = 574823
	tHalloweenAction_Date[67] = 574823
	tHalloweenAction_Date["ActionId"] = 574824
	tHalloweenAction_Date["EventType"] = 209
	tHalloweenAction_Date["DataType"] = 91
	tHalloweenAction_Date["ExistDay"] = 7
	tHalloweenAction_Date["NumEventType"] = 206
	tHalloweenAction_Date["NumDataType"] = 0
----------------------------------逻辑部分---------------------------------------------
function HalloweenAction_Email()
	local nUserId = Get_UserId()
	if not Sys_ChkFullTime(tActivityTime["HalloweenAction"]["ActivityTime"]) then
		return 
	end 
	
	--变身数量小于20的不给
	local nNumEvent = tHalloweenAction_Date["NumEventType"]
	local nNumType = tHalloweenAction_Date["NumDataType"]
	local nNumDate = Get_UserStatisticValue(nNumEvent,nNumType)
	if nNumDate < 20 then 
		return 
	end 
	
	local nEvent = tHalloweenAction_Date["EventType"]
	local nType = tHalloweenAction_Date["DataType"]
	
	--是否领取
	local nDate = Get_UserStatisticValue(nEvent,nType)
	if nDate >0 then 
		return 
	end 
	Task_SetStatistic(nEvent,nType,1,1) 
	Task_SetStcTimestamp(nEvent, nType,0)
	-- 发奖
	local nExistDay =tHalloweenAction_Date["ExistDay"]
	local sSender = tHalloweenAction_Text["Sender"]
	local sTitle = tHalloweenAction_Text["Title"]
	local nServerId = Get_UserServerId(nUserId)
	--判断是否是获取名次的服务器
	if tHalloweenAction_Date[nServerId] ~=nil  then 
		Sys_SendMail(nUserId,0,0,tHalloweenAction_Date[nServerId],0,nExistDay,sSender,sTitle,tHalloweenAction_Text["Content"][nServerId]) 
	else 
		--参与奖
		Sys_SendMail(nUserId,0,0,tHalloweenAction_Date["ActionId"],0,nExistDay,sSender,sTitle,tHalloweenAction_Text["Content"]["Join"])
	end 
end 

--上线触发
tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
table.insert(tSystem_PlayLogin_Func,HalloweenAction_Email)




