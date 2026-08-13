------------------------------------------------------------------------------------
--Name：            190617[英文征服][活动脚本]6月月度首充包
--Creator:      蔡颖静
--Created:     2019/06/17
------------------------------------------------------------------------------------
--任务需求：

------------------------------------------------------------------------------------
--前缀：tJuneRebateGift_
--LogId：12001466
--stc（198,57）打开赠点包
--stc（198,58）每日弹窗与发邮件一次
--lua.ini : 41348
----------------------------------表配置部分--------------------------------------------
local tJuneRebateGift_Data={}

--每天50赠点，连续一百天
	tJuneRebateGift_Data[3322076] = {}
	tJuneRebateGift_Data[3322076][1] = {}
	tJuneRebateGift_Data[3322076][1]["LogId"] = 12001466
	tJuneRebateGift_Data[3322076][1]["RewardEMoneyMono"] = {}
	tJuneRebateGift_Data[3322076][1]["RewardEMoneyMono"]["Value"] = 50
	tJuneRebateGift_Data[3322076][1]["EventType"] = 198
	tJuneRebateGift_Data[3322076][1]["DataType"] = 57
	tJuneRebateGift_Data[3322076][1]["RewardDelay"] = 1
	tJuneRebateGift_Data[3322076][1]["RewardTimeType"] = 4
	tJuneRebateGift_Data[3322076][1]["RewardTotalData"] = 100
	tJuneRebateGift_Data[3322076][1]["DeleteItem"] = {}
	tJuneRebateGift_Data[3322076][1]["DeleteItem"][1] = {}
	tJuneRebateGift_Data[3322076][1]["DeleteItem"][1]["Id"] = 3322076
	tJuneRebateGift_Data[3322076][1]["EmoneyLog"] = "10000	0525	0	0	-50	"
	tJuneRebateGift_Data[3322076][1]["RewardEffect"] = {}
	tJuneRebateGift_Data[3322076][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneRebateGift_Data[3322076][1]["RewardEffect"]["Effect"] = "angelwing"
	
--外套可选包
	tJuneRebateGift_Data[3322077] = {}
	-- 永久赠品CeletialFox神佑-1	200595	1	赠品		1%
	tJuneRebateGift_Data[3322077][1] = {}
	tJuneRebateGift_Data[3322077][1]["LogId"] = 12001466
	tJuneRebateGift_Data[3322077][1]["DeleteItem"] = {}
	tJuneRebateGift_Data[3322077][1]["DeleteItem"][1] = {}
	tJuneRebateGift_Data[3322077][1]["DeleteItem"][1]["Id"] = 3322077 -- 【库】 1 【enzf库里没有该物品】[属性:]
	tJuneRebateGift_Data[3322077][1]["RewardItem"] = {}
	tJuneRebateGift_Data[3322077][1]["RewardItem"][1] = {}
	tJuneRebateGift_Data[3322077][1]["RewardItem"][1]["Id"] = 200595
	tJuneRebateGift_Data[3322077][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tJuneRebateGift_Data[3322077][1]["RewardEffect"] = {}
	tJuneRebateGift_Data[3322077][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneRebateGift_Data[3322077][1]["RewardEffect"]["Effect"] = "angelwing"


	-- 永久赠品RockinRomance神佑-1	195595	1	赠品		1%
	tJuneRebateGift_Data[3322077][2] = {}
	tJuneRebateGift_Data[3322077][2]["LogId"] = 12001466
	tJuneRebateGift_Data[3322077][2]["DeleteItem"] = {}
	tJuneRebateGift_Data[3322077][2]["DeleteItem"][1] = {}
	tJuneRebateGift_Data[3322077][2]["DeleteItem"][1]["Id"] = 3322077 -- 【库】 2 【enzf库里没有该物品】[属性:]
	tJuneRebateGift_Data[3322077][2]["RewardItem"] = {}
	tJuneRebateGift_Data[3322077][2]["RewardItem"][1] = {}
	tJuneRebateGift_Data[3322077][2]["RewardItem"][1]["Id"] = 195595 
	tJuneRebateGift_Data[3322077][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tJuneRebateGift_Data[3322077][2]["RewardEffect"] = {}
	tJuneRebateGift_Data[3322077][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneRebateGift_Data[3322077][2]["RewardEffect"]["Effect"] = "angelwing"
	
	
--18阶龙之咆哮抽奖包，0%机会抽到18阶龙之咆哮,100%给日常任务重置符赠*2
	tJuneRebateGift_Data[3322078] = {}
	tJuneRebateGift_Data[3322078]["LogId"] = 12001466
	tJuneRebateGift_Data[3322078]["DeleteItem"] = {}
	tJuneRebateGift_Data[3322078]["DeleteItem"][1] = {}
	tJuneRebateGift_Data[3322078]["DeleteItem"][1]["Id"] = 3322078 -- 【库】 1 【enzf库里没有该物品】[属性:]
	tJuneRebateGift_Data[3322078]["RewardItem"] = {}
	tJuneRebateGift_Data[3322078]["RewardItem"][1] = {}
	tJuneRebateGift_Data[3322078]["RewardItem"][1]["Id"] = 3001407
	tJuneRebateGift_Data[3322078]["RewardItem"][1]["Attr"] = "0 2 3"
	tJuneRebateGift_Data[3322078]["RewardEffect"] = {}
	tJuneRebateGift_Data[3322078]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneRebateGift_Data[3322078]["RewardEffect"]["Effect"] = "angelwing"
	
--首充礼包
	tJuneRebateGift_Data[3322079] = {}
	tJuneRebateGift_Data[3322079]["LogId"] = 12001466
	tJuneRebateGift_Data[3322079]["DeleteItem"] = {}
	tJuneRebateGift_Data[3322079]["DeleteItem"][1] = {}
	tJuneRebateGift_Data[3322079]["DeleteItem"][1]["Id"] = 3322079 -- 【库】 1 【enzf库里没有该物品】[属性:]
	tJuneRebateGift_Data[3322079]["RewardItem"] = {}
	tJuneRebateGift_Data[3322079]["RewardItem"][1] = {}
	tJuneRebateGift_Data[3322079]["RewardItem"][1]["Id"] = 3322076
	tJuneRebateGift_Data[3322079]["RewardItem"][1]["Attr"] = "0 1"
	tJuneRebateGift_Data[3322079]["RewardItem"][2] = {}
	tJuneRebateGift_Data[3322079]["RewardItem"][2]["Id"] = 3322077
	tJuneRebateGift_Data[3322079]["RewardItem"][2]["Attr"] = "0 1"
	tJuneRebateGift_Data[3322079]["RewardItem"][3] = {}
	tJuneRebateGift_Data[3322079]["RewardItem"][3]["Id"] = 3009001
	tJuneRebateGift_Data[3322079]["RewardItem"][3]["Attr"] ="0 5 0 2880 1"
	tJuneRebateGift_Data[3322079]["RewardItem"][4] = {}
	tJuneRebateGift_Data[3322079]["RewardItem"][4]["Id"] = 730004
	tJuneRebateGift_Data[3322079]["RewardItem"][4]["Attr"] ="0 1 3"
	tJuneRebateGift_Data[3322079]["RewardItem"][5] = {}
	tJuneRebateGift_Data[3322079]["RewardItem"][5]["Id"] = 3320689
	tJuneRebateGift_Data[3322079]["RewardItem"][5]["Attr"] ="0 1"
	tJuneRebateGift_Data[3322079]["RewardItem"][6] = {}
	tJuneRebateGift_Data[3322079]["RewardItem"][6]["Id"] = 1088000
	tJuneRebateGift_Data[3322079]["RewardItem"][6]["Attr"] ="0 1 3"
	tJuneRebateGift_Data[3322079]["RewardItem"][7] = {}
	tJuneRebateGift_Data[3322079]["RewardItem"][7]["Id"] = 3001044
	tJuneRebateGift_Data[3322079]["RewardItem"][7]["Attr"] ="0 3"
	tJuneRebateGift_Data[3322079]["RewardItem"][8] = {}
	tJuneRebateGift_Data[3322079]["RewardItem"][8]["Id"] = 3322078
	tJuneRebateGift_Data[3322079]["RewardItem"][8]["Attr"] ="0 1"
	tJuneRebateGift_Data[3322079]["RewardStrengthValue"] = {}
	tJuneRebateGift_Data[3322079]["RewardStrengthValue"]["Value"] = 10000 -- 气力值
	tJuneRebateGift_Data[3322079]["RewardEffect"] = {}
	tJuneRebateGift_Data[3322079]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneRebateGift_Data[3322079]["RewardEffect"]["Effect"] = "angelwing"

	--网页链接
	tJuneRebateGift_Data["PicId"]=1052
	
	--掩码
	tJuneRebateGift_Data["Stc"]={}
	tJuneRebateGift_Data["Stc"]["LoginEvent"]=198
	tJuneRebateGift_Data["Stc"]["LoginType"]=58
----------------------------------逻辑部分---------------------------------------------
--可选包 二次确认
function JuneRebateGift_SelectPack(nItemId,nIndex)
	-- 检测物品是否存在
	if not Item_ChkMulItem(nItemId,nItemId,1) then
		return 
	end
	-- 判断背包空间
	local nGetRewardSpace = RewardTemplate_GetRewardSpace(tJuneRebateGift_Data[nItemId][nIndex])
	local nDelRewardSpace = RewardTemplate_GetDelSpace(tJuneRebateGift_Data[nItemId][nIndex])
	local nSpace = nGetRewardSpace - nDelRewardSpace
	if not User_CheckLeftSpace(nSpace) then
		local sMsg=string.format(tJuneRebateGift_Text["SystemTips"]["NoSpace"],nSpace)
		Sys_MsgBox(sMsg)
		return
	end
	
	--二次确认
	local sChooseName=tJuneRebateGift_Text["ItemName"][nItemId][nIndex]
	tItem[nItemId]["Text121"]=string.format(tJuneRebateGift_Text[nItemId]["Text121"],sChooseName)
	tItem[nItemId]["OptionFunc4"]="JuneRebateGift_OpenSelectPack</N>".. nItemId .."</N>" .. nIndex
	LinkItemGossipFunc_New(nItemId,"1-2")
end

--打开可选包
function JuneRebateGift_OpenSelectPack(nItemId,nIndex)
	local nUserId = Get_UserId()
	local bJudge = TermsOfUse_Main(nItemId,tJuneRebateGift_Data[nItemId][nIndex])
	if not bJudge then
		return
	end
	RewardTemplate_UseItemAndMsg(tJuneRebateGift_Data[nItemId][nIndex],nUserId,bJudge)
end 


--打开链接
function JuneRebateGift_Link()
	--活动时间判断
	if not Sys_ChkFullTime(tActivityTime["JuneRebateGift"]["ActivityTime"])  then
		return
	end
	
	--判断是否是激情服
	if SpecialServer_ChkNoGiftServer() then
		return
	end
	
	local nLoginEvent=tJuneRebateGift_Data["Stc"]["LoginEvent"]
	local nLoginType=tJuneRebateGift_Data["Stc"]["LoginType"]
	
	--隔天清掩码
	Task_StcReset(nLoginEvent,nLoginType)
	
	if Task_ChkStcValue(nLoginEvent,nLoginType,"==",0) then
		--加掩码
		Task_AddStatistic(nLoginEvent,nLoginType,1,1)
		Task_SetStcTimestamp(nLoginEvent,nLoginType,0)
		
		
		User_NoviceTeaching(tJuneRebateGift_Data["PicId"])
		
		--发送邮件提示
		JuneRebateGift_SendMail()
	end 
end

--发送邮件提示
function JuneRebateGift_SendMail()
--活动时间判断
	if not Sys_ChkFullTime(tActivityTime["JuneRebateGift"]["ActivityTime"]) then
		return
	end 
	
	local sSender = tJuneRebateGift_Text["SendMail"]["Sender"] 
	local sTitle = tJuneRebateGift_Text["SendMail"]["Title"]
	local sContent = tJuneRebateGift_Text["SendMail"]["Content"]
	local nExistDay = 15
	local nUserId = Get_UserId()
	Sys_SendMail(nUserId,0,0,0,0,nExistDay,sSender,sTitle,sContent)
end
---------------------------------物品部分---------------------------------------------
--外套（赠）可选包
tItemFace[3322077] = 1952
tItem[3322077] = tItem[3322077] or {}
tItem[3322077]["DialogueText"] = tJuneRebateGift_Text[3322077]
tItem[3322077]["Text1-1"] = {111}
tItem[3322077]["tOption1-1"] = {1,2}
tItem[3322077]["OptionFunc1"] = "JuneRebateGift_SelectPack</N>3322077</N>1"
tItem[3322077]["OptionFunc2"] = "JuneRebateGift_SelectPack</N>3322077</N>2"

tItem[3322077]["Text1-2"] = {121}
tItem[3322077]["tOption1-2"] = {4,5}

--打开普通礼包
tItem[3322078] = tItem[3322078] or {}
tItem[3322078]["Function"] = function(nItemId,sItemName)
	local nUserId = Get_UserId()
	local bJudge = TermsOfUse_Main(nItemId,tJuneRebateGift_Data[nItemId])
	
	if not bJudge then
		return
	end
	
	RewardTemplate_UseItemAndMsg(tJuneRebateGift_Data[nItemId],nUserId,bJudge)
end

tItem[3322079] = tItem[3322078]

--打开赠点包
tItem[3322076] = tItem[3322076] or {}
tItem[3322076]["Function"] = function(nItemId,sItemName)
	JuneRebateGift_OpenSelectPack(nItemId,1)
end

-------------------------------------上线触发-------------------------------------------------------
table.insert(tSystem_PlayLogin_Func,JuneRebateGift_Link)