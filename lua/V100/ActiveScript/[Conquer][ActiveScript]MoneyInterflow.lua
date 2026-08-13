------------------------------------------------------------------------------------
--Name：            190524[英文征服][活动脚本]征服金币互通
--Creator:      蔡颖静
--Created:     2019/05/24
------------------------------------------------------------------------------------
--任务需求：

------------------------------------------------------------------------------------
--前缀：tMoneyInterflow_
--logid:12001434
--lua.ini:41312
--掩码
--上交金币数 stc(197,29)
--背包信 stc(197,30)
----------------------------------表配置部分--------------------------------------------
local tMoneyInterflow_Data={}

--掩码
--上交金币数 stc(197,29)
tMoneyInterflow_Data["Stc"]={}
tMoneyInterflow_Data["Stc"]["HandInEvent"]=197
tMoneyInterflow_Data["Stc"]["HandInType"]=29

--上交银两
tMoneyInterflow_Data["HandIn"]={}
--提交100万银两
tMoneyInterflow_Data["HandIn"][1000000]={}
tMoneyInterflow_Data["HandIn"][1000000]["LogId"] = 12001434
tMoneyInterflow_Data["HandIn"][1000000]["RewardMoney"] = {}
tMoneyInterflow_Data["HandIn"][1000000]["RewardMoney"]["Value"] = -1000000
tMoneyInterflow_Data["HandIn"][1000000]["RewardNoNeedTip"] = 1 

--提交500万银两
tMoneyInterflow_Data["HandIn"][5000000]={}
tMoneyInterflow_Data["HandIn"][5000000]["LogId"] = 12001434
tMoneyInterflow_Data["HandIn"][5000000]["RewardMoney"] = {}
tMoneyInterflow_Data["HandIn"][5000000]["RewardMoney"]["Value"] = -5000000
tMoneyInterflow_Data["HandIn"][5000000]["RewardNoNeedTip"] = 1 

--提交1000万银两
tMoneyInterflow_Data["HandIn"][10000000]={}
tMoneyInterflow_Data["HandIn"][10000000]["LogId"] = 12001434
tMoneyInterflow_Data["HandIn"][10000000]["RewardMoney"] = {}
tMoneyInterflow_Data["HandIn"][10000000]["RewardMoney"]["Value"] = -10000000
tMoneyInterflow_Data["HandIn"][10000000]["RewardNoNeedTip"] = 1 

--提交5000万银两
tMoneyInterflow_Data["HandIn"][50000000]={}
tMoneyInterflow_Data["HandIn"][50000000]["LogId"] = 12001434
tMoneyInterflow_Data["HandIn"][50000000]["RewardMoney"] = {}
tMoneyInterflow_Data["HandIn"][50000000]["RewardMoney"]["Value"] = -50000000
tMoneyInterflow_Data["HandIn"][50000000]["RewardNoNeedTip"] = 1 

--提交1亿银两
tMoneyInterflow_Data["HandIn"][100000000]={}
tMoneyInterflow_Data["HandIn"][100000000]["LogId"] = 12001434
tMoneyInterflow_Data["HandIn"][100000000]["RewardMoney"] = {}
tMoneyInterflow_Data["HandIn"][100000000]["RewardMoney"]["Value"] = -100000000
tMoneyInterflow_Data["HandIn"][100000000]["RewardNoNeedTip"] = 1 

--提交5亿银两
tMoneyInterflow_Data["HandIn"][500000000]={}
tMoneyInterflow_Data["HandIn"][500000000]["LogId"] = 12001434
tMoneyInterflow_Data["HandIn"][500000000]["RewardMoney"] = {}
tMoneyInterflow_Data["HandIn"][500000000]["RewardMoney"]["Value"] = -500000000
tMoneyInterflow_Data["HandIn"][500000000]["RewardNoNeedTip"] = 1 

--金币包
--100万银两包
tMoneyInterflow_Data[3321695] = {}
tMoneyInterflow_Data[3321695]["LogId"] = 12001434
tMoneyInterflow_Data[3321695]["DeleteItem"] = {}
tMoneyInterflow_Data[3321695]["DeleteItem"][1] = {}
tMoneyInterflow_Data[3321695]["DeleteItem"][1]["Id"] = 3321695
tMoneyInterflow_Data[3321695]["RewardMoney"] = {}
tMoneyInterflow_Data[3321695]["RewardMoney"]["Value"] = 1000000
tMoneyInterflow_Data[3321695]["RewardEffect"] = {}
tMoneyInterflow_Data[3321695]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tMoneyInterflow_Data[3321695]["RewardEffect"]["Effect"] = "angelwing"

--500万银两包
tMoneyInterflow_Data[3321696] = {}
tMoneyInterflow_Data[3321696]["LogId"] = 12001434
tMoneyInterflow_Data[3321696]["DeleteItem"] = {}
tMoneyInterflow_Data[3321696]["DeleteItem"][1] = {}
tMoneyInterflow_Data[3321696]["DeleteItem"][1]["Id"] = 3321696
tMoneyInterflow_Data[3321696]["RewardMoney"] = {}
tMoneyInterflow_Data[3321696]["RewardMoney"]["Value"] = 5000000
tMoneyInterflow_Data[3321696]["RewardEffect"] = {}
tMoneyInterflow_Data[3321696]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tMoneyInterflow_Data[3321696]["RewardEffect"]["Effect"] = "angelwing"

--1000万银两包
tMoneyInterflow_Data[3321697] = {}
tMoneyInterflow_Data[3321697]["LogId"] = 12001434
tMoneyInterflow_Data[3321697]["DeleteItem"] = {}
tMoneyInterflow_Data[3321697]["DeleteItem"][1] = {}
tMoneyInterflow_Data[3321697]["DeleteItem"][1]["Id"] = 3321697
tMoneyInterflow_Data[3321697]["RewardMoney"] = {}
tMoneyInterflow_Data[3321697]["RewardMoney"]["Value"] = 10000000
tMoneyInterflow_Data[3321697]["RewardEffect"] = {}
tMoneyInterflow_Data[3321697]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tMoneyInterflow_Data[3321697]["RewardEffect"]["Effect"] = "angelwing"

--5000万银两包
tMoneyInterflow_Data[3321698] = {}
tMoneyInterflow_Data[3321698]["LogId"] = 12001434
tMoneyInterflow_Data[3321698]["DeleteItem"] = {}
tMoneyInterflow_Data[3321698]["DeleteItem"][1] = {}
tMoneyInterflow_Data[3321698]["DeleteItem"][1]["Id"] = 3321698
tMoneyInterflow_Data[3321698]["RewardMoney"] = {}
tMoneyInterflow_Data[3321698]["RewardMoney"]["Value"] = 50000000
tMoneyInterflow_Data[3321698]["RewardEffect"] = {}
tMoneyInterflow_Data[3321698]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tMoneyInterflow_Data[3321698]["RewardEffect"]["Effect"] = "angelwing"

--1亿银两包
tMoneyInterflow_Data[3321699] = {}
tMoneyInterflow_Data[3321699]["LogId"] = 12001434
tMoneyInterflow_Data[3321699]["DeleteItem"] = {}
tMoneyInterflow_Data[3321699]["DeleteItem"][1] = {}
tMoneyInterflow_Data[3321699]["DeleteItem"][1]["Id"] =3321699
tMoneyInterflow_Data[3321699]["RewardMoney"] = {}
tMoneyInterflow_Data[3321699]["RewardMoney"]["Value"] = 100000000
tMoneyInterflow_Data[3321699]["Gold"] = true	--新增金币服标识
tMoneyInterflow_Data[3321699]["RewardEffect"] = {}
tMoneyInterflow_Data[3321699]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tMoneyInterflow_Data[3321699]["RewardEffect"]["Effect"] = "angelwing"

--5亿银两包
tMoneyInterflow_Data[3321700] = {}
tMoneyInterflow_Data[3321700]["LogId"] = 12001434
tMoneyInterflow_Data[3321700]["DeleteItem"] = {}
tMoneyInterflow_Data[3321700]["DeleteItem"][1] = {}
tMoneyInterflow_Data[3321700]["DeleteItem"][1]["Id"] =3321700
tMoneyInterflow_Data[3321700]["RewardMoney"] = {}
tMoneyInterflow_Data[3321700]["RewardMoney"]["Value"] = 500000000
tMoneyInterflow_Data[3321700]["RewardEffect"] = {}
tMoneyInterflow_Data[3321700]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tMoneyInterflow_Data[3321700]["RewardEffect"]["Effect"] = "angelwing"

--线下链接
tMoneyInterflow_Data["Web"]="https://coevent.99.com/silvertransfer/"
----------------------------------逻辑部分---------------------------------------------
--提交银两 二次确认
function MoneyInterflow_HandInCheck(nNum)
--判断活动时间
	if not Sys_ChkFullTime(tActivityTime["MoneyInterflow"]["ActTime"])  then
		return 
	end
	
--判断金币充不充足
	if not User_CanPutMoney2Bag(-nNum) then
		User_TalkChannel2005(tMoneyInterflow_Text["Systemtip"]["NoMoney"])
		return LinkNpcGossipFunc_New(24301,"3-2")
	end
	
	local sHandIn=tMoneyInterflow_Text["Money"][nNum]
	tNpcGossip[24301]["Text221"]=string.format(tMoneyInterflow_Text[24301]["Text221"],sHandIn)
	tNpcGossip[24301]["OptionFunc221"]="MoneyInterflow_HandIn</N>" .. nNum
	LinkNpcGossipFunc_New(24301,"2-2")
end 

--提交银两 
function MoneyInterflow_HandIn(nNum)
--判断活动时间
	if not Sys_ChkFullTime(tActivityTime["MoneyInterflow"]["ActTime"])  then
		return 
	end
	
--判断金币充不充足
	if not User_CanPutMoney2Bag(-nNum) then
		User_TalkChannel2005(tMoneyInterflow_Text["Systemtip"]["NoMoney"])
		return LinkNpcGossipFunc_New(24301,"3-2")
	end
	
	local nHandInEvent=tMoneyInterflow_Data["Stc"]["HandInEvent"]
	local nHandInType=tMoneyInterflow_Data["Stc"]["HandInType"]
	
	--扣除银两
	if RewardTemplate_UseItem(tMoneyInterflow_Data["HandIn"][nNum]) then 
		--增加掩码
		Task_AddStatistic(nHandInEvent,nHandInType,nNum/1000000,1)
		Task_SetStcTimestamp(nHandInEvent,nHandInType,0)
		
		--跳转成功对白
		local sHandIn=tMoneyInterflow_Text["Money"][nNum]
		tNpcGossip[24301]["Text311"]=string.format(tMoneyInterflow_Text[24301]["Text311"],sHandIn)
		tNpcGossip[24301]["OptionFunc311"]="MoneyInterflow_Link"
		LinkNpcGossipFunc_New(24301,"3-1")
		return 
	end 
end

--跳转链接
function MoneyInterflow_Link()
	--活动时间判断
	if not Sys_ChkFullTime(tActivityTime["MoneyInterflow"]["ActTime"])  then
		return
	end
	local sWebPage = tMoneyInterflow_Data["Web"]
	User_SendWebPage(sWebPage)
end


----------------------------------NPC部分---------------------------------------------
tNpcFace[6426] = 95
tNpcGossip[24301]= tNpcGossip[24301] or DefaultNpc:new{}
tNpcGossip[24301]["OptionHidden"] = 1
tNpcGossip[24301]["DialogueText"] = tMoneyInterflow_Text[24301]

--活动前
tNpcGossip[24301]["Text1-1"] = {111,112,113}
tNpcGossip[24301]["tOption1-1"] = {111}
tNpcGossip[24301]["ChkFunc1-1"] = function()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["MoneyInterflow"]["ActTime"])
end

--活动中
--活动中
tNpcGossip[24301]["Text1-2"] = {121,122}
tNpcGossip[24301]["tOption1-2"] = {121,122}
tNpcGossip[24301]["ChkFunc1-2"]= function()
--判断活动时间
	if not Sys_ChkFullTime(tActivityTime["MoneyInterflow"]["ActTime"])  then
		return false
	else
		return true
	end 
end
tNpcGossip[24301]["OptionPoint121"]= "2-1"
tNpcGossip[24301]["OptionFunc122"]="MoneyInterflow_Link"

--提交银两
tNpcGossip[24301]["Text2-1"] = {211}
tNpcGossip[24301]["tOption2-1"] = {211,212,213,214,215,216}
tNpcGossip[24301]["OptionFunc211"]="MoneyInterflow_HandInCheck</N>1000000"
tNpcGossip[24301]["OptionFunc212"]="MoneyInterflow_HandInCheck</N>5000000"
tNpcGossip[24301]["OptionFunc213"]="MoneyInterflow_HandInCheck</N>10000000"
tNpcGossip[24301]["OptionFunc214"]="MoneyInterflow_HandInCheck</N>50000000"
tNpcGossip[24301]["OptionFunc215"]="MoneyInterflow_HandInCheck</N>100000000"
tNpcGossip[24301]["OptionFunc216"]="MoneyInterflow_HandInCheck</N>500000000"

--二次确认
tNpcGossip[24301]["Text2-2"] = {221}
tNpcGossip[24301]["tOption2-2"] = {221,222}

--成功
tNpcGossip[24301]["Text3-1"] = {311}
tNpcGossip[24301]["tOption3-1"] = {311,312}

--失败，银两不足
tNpcGossip[24301]["Text3-2"] = {321}
tNpcGossip[24301]["tOption3-2"] = {321}

----------------------物品部分-----------------------------
tItem[3321695] = tItem[3321695] or {}
tItem[3321695]["Function"] = function(nItemId,sItemName)
	local nUserId = Get_UserId()
	local bJudge = TermsOfUse_Main(nItemId,tMoneyInterflow_Data[nItemId])
	
	if not bJudge then
		return
	end
	
	
	RewardTemplate_UseItemAndMsg(tMoneyInterflow_Data[nItemId],nUserId,bJudge)
end
tItem[3321696] = tItem[3321695]
tItem[3321697] = tItem[3321695]
tItem[3321698] = tItem[3321695]
tItem[3321699] = tItem[3321695]
tItem[3321700] = tItem[3321695]
