------------------------------------------------------------------------------------
--Name：            180319[英文征服][活动脚本]海盗翻身Quiz任务制作
--Creator:      潘云锋
--Created:     2018/03/19
------------------------------------------------------------------------------------
--任务需求：
-- 请安排英文征服海盗翻身Quiz任务制作，具体活动内容见附件。
-- 更新范围：全区全服
-- 活动时间：4.12-4.30
-- 如有问题，请及时沟通，谢谢！备注：为了方便活动数据统计，
-- 部分 log 需要做成 emoney buy log，具体情况制作时再沟通下
-- ******************************************************************
-- *阮鑫(市场运营中心海外事业部英文市场二组)在2018-03-15 15:06修改任务(任务号：8514621)时补充了如下需求：
-- ******************************************************************
-- 由于版本更新时间提前，活动时间需要修改，请留意下，新时间：
 
-- 活动时间：4.05-4.23

-- stc
-- 175 26		成功掩码
-- 175 27		答对题数
-- 175 28		标记是否已领300赠点
-- 175 29		背包信
-- 175 48		标记今日是否已领转盘
-- 175 73		今日是否答过题
------------------------------------------------------------------------------------
-- 命名规范: PirateQuiz_
--	Logid:	10002432

----------------------------------表配置部分--------------------------------------------
local tPirateQuiz_Const = {}
	--活动时间
	tPirateQuiz_Const["BeforeTime"] = tActivityTime["PirateQuiz"]["BeforeTime"]
	tPirateQuiz_Const["ActivityTime"] = tActivityTime["PirateQuiz"]["ActivityTime"]
	--寻找海盗导师(现在改为下面的网页链接)
	tPirateQuiz_Const["PirateNpcId"] = 9391
	--海盗知识链接
	tPirateQuiz_Const["WebHttp"] = "http://co.99.com/news/2018-04-03/updated_information_about_surging_pirates_expansion.shtml"
	
	--答题总数
	tPirateQuiz_Const["QuizCount"] = 5
	--首次全对奖励赠点
	tPirateQuiz_Const["RewardEmoneyMono"] = 300

	tPirateQuiz_Const["Email"] = {}
	tPirateQuiz_Const["Email"]["ActionId"] = {}
	tPirateQuiz_Const["Email"]["ActionId"][1] = 94486057
	tPirateQuiz_Const["Email"]["ActionId"][2] = 94486058
	tPirateQuiz_Const["Email"]["ExistDay"] = 30
	
	tPirateQuiz_Const["EmoneyMonoLog"] = "0,0,0,0,10002432,2,3,300"
	tPirateQuiz_Const["RouletteLog"] = "0,0,0,0,10002432,2,3307820,1"
	--EMoneyLog
	tPirateQuiz_Const["EmoneyLog"] = {}
	tPirateQuiz_Const["EmoneyLog"]["JoinQuestion"] = "350	31274	0	0	1	"
	tPirateQuiz_Const["EmoneyLog"]["AllTrue"] = "350	31275	0	0	1	"
	tPirateQuiz_Const["EmoneyLog"]["GiveEMoneyMono"] = "350	31276	0	0	-300	"
	tPirateQuiz_Const["EmoneyLog"]["GiveWheel"] = "350	31277	0	0	1	"
	
	tPirateQuiz_Const["TaskId"] = 6871
	
local tPirateQuiz_Stc = {}
	--成功掩码
	tPirateQuiz_Stc["Success"] = {}
	tPirateQuiz_Stc["Success"]["EventType"] = 175
	tPirateQuiz_Stc["Success"]["DataType"] = 26
	tPirateQuiz_Stc["Success"]["nMax"] = 1

	--答对题数掩码
	tPirateQuiz_Stc["TrueNum"] = {}
	tPirateQuiz_Stc["TrueNum"]["EventType"] = 175
	tPirateQuiz_Stc["TrueNum"]["DataType"] = 27
	tPirateQuiz_Stc["TrueNum"]["nAdd"] = 1
	tPirateQuiz_Stc["TrueNum"]["nMax"] = 5
	
	--领取赠点掩码
	tPirateQuiz_Stc["GiveEMoneyMono"] = {}
	tPirateQuiz_Stc["GiveEMoneyMono"]["EventType"] = 175
	tPirateQuiz_Stc["GiveEMoneyMono"]["DataType"] = 28
	tPirateQuiz_Stc["GiveEMoneyMono"]["nMax"] = 1
	
	--领取转盘掩码
	tPirateQuiz_Stc["GiveWheel"] = {}
	tPirateQuiz_Stc["GiveWheel"]["EventType"] = 175
	tPirateQuiz_Stc["GiveWheel"]["DataType"] = 48
	tPirateQuiz_Stc["GiveWheel"]["nMax"] = 1
	
	--今日是否答过题	175 73
	tPirateQuiz_Stc["AskQuestion"] = {}
	tPirateQuiz_Stc["AskQuestion"]["EventType"] = 175
	tPirateQuiz_Stc["AskQuestion"]["DataType"] = 73
	tPirateQuiz_Stc["AskQuestion"]["nMax"] = 1
	
--礼包奖励表
local tPirateQuiz_Reward = {}
	--免费强炼丹*10
	tPirateQuiz_Reward[3307821] = {}
	tPirateQuiz_Reward[3307821]["LogId"] = 10002432
	tPirateQuiz_Reward[3307821]["DeleteItem"] = {}
	tPirateQuiz_Reward[3307821]["DeleteItem"][1] = {}
	tPirateQuiz_Reward[3307821]["DeleteItem"][1]["Id"] = 3307821
	tPirateQuiz_Reward[3307821]["RewardItem"] = {}
	tPirateQuiz_Reward[3307821]["RewardItem"][1] = {}
	tPirateQuiz_Reward[3307821]["RewardItem"][1]["Id"] = 3003124
	tPirateQuiz_Reward[3307821]["RewardItem"][1]["Attr"] = "0 10 3"
	tPirateQuiz_Reward[3307821]["RewardEffect"]={}
	tPirateQuiz_Reward[3307821]["RewardEffect"]["Effect"] = "angelwing"
	--回气丹*1
	tPirateQuiz_Reward[3307822] = {}
	tPirateQuiz_Reward[3307822]["LogId"] = 10002432
	tPirateQuiz_Reward[3307822]["DeleteItem"] = {}
	tPirateQuiz_Reward[3307822]["DeleteItem"][1] = {}
	tPirateQuiz_Reward[3307822]["DeleteItem"][1]["Id"] = 3307822
	tPirateQuiz_Reward[3307822]["RewardItem"] = {}
	tPirateQuiz_Reward[3307822]["RewardItem"][1] = {}
	tPirateQuiz_Reward[3307822]["RewardItem"][1]["Id"] = 729242
	tPirateQuiz_Reward[3307822]["RewardItem"][1]["Attr"] = "0 1 3"
	tPirateQuiz_Reward[3307822]["RewardEffect"]={}
	tPirateQuiz_Reward[3307822]["RewardEffect"]["Effect"] = "angelwing"
	--明亮星陨石*1
	tPirateQuiz_Reward[3307823] = {}
	tPirateQuiz_Reward[3307823]["LogId"] = 10002432
	tPirateQuiz_Reward[3307823]["DeleteItem"] = {}
	tPirateQuiz_Reward[3307823]["DeleteItem"][1] = {}
	tPirateQuiz_Reward[3307823]["DeleteItem"][1]["Id"] = 3307823
	tPirateQuiz_Reward[3307823]["RewardItem"] = {}
	tPirateQuiz_Reward[3307823]["RewardItem"][1] = {}
	tPirateQuiz_Reward[3307823]["RewardItem"][1]["Id"] = 3009001
	tPirateQuiz_Reward[3307823]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tPirateQuiz_Reward[3307823]["RewardEffect"]={}
	tPirateQuiz_Reward[3307823]["RewardEffect"]["Effect"] = "angelwing"
	--强效护心丹*5
	tPirateQuiz_Reward[3307824] = {}
	tPirateQuiz_Reward[3307824]["LogId"] = 10002432
	tPirateQuiz_Reward[3307824]["DeleteItem"] = {}
	tPirateQuiz_Reward[3307824]["DeleteItem"][1] = {}
	tPirateQuiz_Reward[3307824]["DeleteItem"][1]["Id"] = 3307824
	tPirateQuiz_Reward[3307824]["RewardItem"] = {}
	tPirateQuiz_Reward[3307824]["RewardItem"][1] = {}
	tPirateQuiz_Reward[3307824]["RewardItem"][1]["Id"] = 3002030
	tPirateQuiz_Reward[3307824]["RewardItem"][1]["Attr"] = "0 5"
	tPirateQuiz_Reward[3307824]["RewardEffect"]={}
	tPirateQuiz_Reward[3307824]["RewardEffect"]["Effect"] = "angelwing"
	--通神丹*5
	tPirateQuiz_Reward[3307825] = {}
	tPirateQuiz_Reward[3307825]["LogId"] = 10002432
	tPirateQuiz_Reward[3307825]["DeleteItem"] = {}
	tPirateQuiz_Reward[3307825]["DeleteItem"][1] = {}
	tPirateQuiz_Reward[3307825]["DeleteItem"][1]["Id"] = 3307825
	tPirateQuiz_Reward[3307825]["RewardItem"] = {}
	tPirateQuiz_Reward[3307825]["RewardItem"][1] = {}
	tPirateQuiz_Reward[3307825]["RewardItem"][1]["Id"] = 3003125
	tPirateQuiz_Reward[3307825]["RewardItem"][1]["Attr"] = "0 5 3"
	tPirateQuiz_Reward[3307825]["RewardEffect"]={}
	tPirateQuiz_Reward[3307825]["RewardEffect"]["Effect"] = "angelwing"
	--龙珠*1
	tPirateQuiz_Reward[3307826] = {}
	tPirateQuiz_Reward[3307826]["LogId"] = 10002432
	tPirateQuiz_Reward[3307826]["DeleteItem"] = {}
	tPirateQuiz_Reward[3307826]["DeleteItem"][1] = {}
	tPirateQuiz_Reward[3307826]["DeleteItem"][1]["Id"] = 3307826
	tPirateQuiz_Reward[3307826]["RewardItem"] = {}
	tPirateQuiz_Reward[3307826]["RewardItem"][1] = {}
	tPirateQuiz_Reward[3307826]["RewardItem"][1]["Id"] = 1088000
	tPirateQuiz_Reward[3307826]["RewardItem"][1]["Attr"] = "0 1 3"
	tPirateQuiz_Reward[3307826]["RewardEffect"]={}
	tPirateQuiz_Reward[3307826]["RewardEffect"]["Effect"] = "angelwing"
	--黄色神纹精粹*10
	tPirateQuiz_Reward[3307827] = {}
	tPirateQuiz_Reward[3307827]["LogId"] = 10002432
	tPirateQuiz_Reward[3307827]["DeleteItem"] = {}
	tPirateQuiz_Reward[3307827]["DeleteItem"][1] = {}
	tPirateQuiz_Reward[3307827]["DeleteItem"][1]["Id"] = 3307827
	tPirateQuiz_Reward[3307827]["RewardItem"] = {}
	tPirateQuiz_Reward[3307827]["RewardItem"][1] = {}
	tPirateQuiz_Reward[3307827]["RewardItem"][1]["Id"] = 4050001
	tPirateQuiz_Reward[3307827]["RewardItem"][1]["Attr"] = "0 10 3"
	tPirateQuiz_Reward[3307827]["RewardEffect"]={}
	tPirateQuiz_Reward[3307827]["RewardEffect"]["Effect"] = "angelwing"
	--随机黄色神纹碎片*1
	tPirateQuiz_Reward[3307828] = {}
	tPirateQuiz_Reward[3307828]["LogId"] = 10002432
	tPirateQuiz_Reward[3307828]["DeleteItem"] = {}
	tPirateQuiz_Reward[3307828]["DeleteItem"][1] = {}
	tPirateQuiz_Reward[3307828]["DeleteItem"][1]["Id"] = 3307828
	tPirateQuiz_Reward[3307828]["RewardItem"] = {}
	tPirateQuiz_Reward[3307828]["RewardItem"][1] = {}
	tPirateQuiz_Reward[3307828]["RewardItem"][1]["Id"] = 3306370
	tPirateQuiz_Reward[3307828]["RewardItem"][1]["Attr"] = "0 1 3"
	tPirateQuiz_Reward[3307828]["RewardEffect"]={}
	tPirateQuiz_Reward[3307828]["RewardEffect"]["Effect"] = "angelwing"
	--发轮盘
	tPirateQuiz_Reward["RouletteReward"] = {}
	tPirateQuiz_Reward["RouletteReward"]["LogId"] = 10002432
	tPirateQuiz_Reward["RouletteReward"]["RewardItem"] = {}
	tPirateQuiz_Reward["RouletteReward"]["RewardItem"][1] = {}
	tPirateQuiz_Reward["RouletteReward"]["RewardItem"][1]["Id"] = 3307820
	tPirateQuiz_Reward["RouletteReward"]["RewardItem"][1]["Attr"] = "0 1"
	tPirateQuiz_Reward["RouletteReward"]["RewardEffect"]={}
	tPirateQuiz_Reward["RouletteReward"]["RewardEffect"]["Effect"] = "angelwing"
	--发赠点
	tPirateQuiz_Reward["EmoneyMonoReward"] = {}
	tPirateQuiz_Reward["EmoneyMonoReward"]["LogId"] = 10002432
	tPirateQuiz_Reward["EmoneyMonoReward"]["RewardEMoneyMono"] = {}
	tPirateQuiz_Reward["EmoneyMonoReward"]["RewardEMoneyMono"]["Value"] = 300
	tPirateQuiz_Reward["EmoneyMonoReward"]["RewardEffect"]={}
	tPirateQuiz_Reward["EmoneyMonoReward"]["RewardEffect"]["Effect"] = "angelwing"
	

	
----------------------------------逻辑部分---------------------------------------------
--开启答题页面
function PirateQuiz_StartQuiz(nNpcId)
	local nTrueEvent = tPirateQuiz_Stc["TrueNum"]["EventType"]
	local nTrueData = tPirateQuiz_Stc["TrueNum"]["DataType"]
	local nAskEvent = tPirateQuiz_Stc["AskQuestion"]["EventType"]
	local nAskData = tPirateQuiz_Stc["AskQuestion"]["DataType"]
	local nUserId = Get_UserId()
	
	if not Sys_ChkFullTime(tPirateQuiz_Const["ActivityTime"]) then
		User_TalkChannel2005(tPirateQuiz_Text["SysTip"]["TimeAfter"])
		return
	end
	--今日是否答题过
	if Task_ChkStcValue(nAskEvent,nAskData,">=",tPirateQuiz_Stc["AskQuestion"]["nMax"]) then
		User_TalkChannel2005(tPirateQuiz_Text["SysTip"]["AlreadyJoin"])
		return
	end
	
	--重置答对数量
	Task_SetStatistic(nTrueEvent,nTrueData,0,1,nUserId)
	Task_SetStcTimestamp(nTrueEvent,nTrueData,0,nUserId)
	
	--置今日答题掩码
	Task_SetStatistic(nAskEvent,nAskData,tPirateQuiz_Stc["AskQuestion"]["nMax"],1,nUserId)
	Task_SetStcTimestamp(nAskEvent,nAskData,0,nUserId)
	
	--记录emoneyLog
	Sys_SaveEmoneyBuy(tPirateQuiz_Const["EmoneyLog"]["JoinQuestion"])
	--启动答题
	Sys_BeginCompetion(nUserId)	
end

--寻找海盗NPC
function PirateQuiz_OpenWebDialog()
	--判断活动时间
	User_SendWebPage(tPirateQuiz_Const["WebHttp"])
end

--答对函数
function PirateQuiz_PersonalReward(nUserId,nRank)
	local nTrueEvent = tPirateQuiz_Stc["TrueNum"]["EventType"]
	local nTrueData = tPirateQuiz_Stc["TrueNum"]["DataType"]
	
	--答对
	Task_AddStatistic(nTrueEvent,nTrueData,1,1,nUserId)
	Task_SetStcTimestamp(nTrueEvent,nTrueData,0,nUserId)
	local nUserData = Get_UserStatisticValue(nTrueEvent,nTrueData,nUserId)
	
	--如果全对
	if nUserData == tPirateQuiz_Const["QuizCount"] then
		--记录emoneyLog
		Sys_SaveEmoneyBuy(tPirateQuiz_Const["EmoneyLog"]["AllTrue"],nUserId)
	
		PirateQuiz_AllTrue(nUserId)
	end
end

--使用轮盘
function PirateQuiz_UseRoulette(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
	--活动过期
	if not Sys_ChkFullTime(tPirateQuiz_Const["ActivityTime"]) then
		if Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tPirateQuiz_Text["Item"]["TimeOut"])
			return
		end
	end
	RouletteMould_Main(tPirateQuiz_Const["TaskId"])
end
--使用物品
function PirateQuiz_UsePackage(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
	--活动过期
	if not Sys_ChkFullTime(tPirateQuiz_Const["ActivityTime"]) then
		if Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tPirateQuiz_Text["Item"]["TimeOut"])
			return
		end
	end
	RewardTemplate_UseItem(tPirateQuiz_Reward[nItemId])
end
----------------------------------通用接口---------------------------------------------
--全对
function PirateQuiz_AllTrue(nUserId)
	local nEvent = tPirateQuiz_Stc["Success"]["EventType"]
	local nData = tPirateQuiz_Stc["Success"]["DataType"]
	
	--若已经成功过，则返回
	if Task_ChkStcValue(nEvent,nData,">=",tPirateQuiz_Stc["Success"]["nMax"],nUserId) then
		User_TalkChannel2005(tPirateQuiz_Text["SysTip"]["AlreadyJoin"],nUserId)
		return
	end
	--置掩码
	Task_SetStatistic(nEvent,nData,tPirateQuiz_Stc["Success"]["nMax"],1,nUserId)
	Task_SetStcTimestamp(nEvent,nData,0,nUserId)
end
--选项获取转盘
function PirateQuiz_RewardWheel(nNpcId)
	local nEvent = tPirateQuiz_Stc["Success"]["EventType"]
	local nData = tPirateQuiz_Stc["Success"]["DataType"]
	local nWheelEvent = tPirateQuiz_Stc["GiveWheel"]["EventType"]
	local nWheelData = tPirateQuiz_Stc["GiveWheel"]["DataType"]
	
	if not Sys_ChkFullTime(tPirateQuiz_Const["ActivityTime"]) then
		User_TalkChannel2005(tPirateQuiz_Text["SysTip"]["TimeAfter"])
		return
	end
	
	--没有全对
	if not Task_ChkStcValue(nEvent,nData,">=",tPirateQuiz_Stc["Success"]["nMax"]) then
		return
	end
	
	--今日已领
	if Task_ChkStcValue(nWheelEvent,nWheelData,">=",tPirateQuiz_Stc["GiveWheel"]["nMax"]) then
		LinkNpcGossipFunc_New(nNpcId,"2-4")
		return
	end
	
	--打掩码
	Task_SetStatistic(nWheelEvent,nWheelData,tPirateQuiz_Stc["GiveWheel"]["nMax"],1)
	Task_SetStcTimestamp(nWheelEvent,nWheelData,0)
	
	if not RewardTemplate_CheckSpace(tPirateQuiz_Reward["RouletteReward"]) then
		PirateQuiz_MailSendReward(2)
		Sys_MsgBox(tPirateQuiz_Text["MsgTip"]["NoSpace"],"NULL","NULL")
		--记录log
		Sys_SaveActionFestivalLog(tPirateQuiz_Const["RouletteLog"])
	else
	
		RewardTemplate_UseItem(tPirateQuiz_Reward["RouletteReward"])
		
	end
	Sys_SaveEmoneyBuy(tPirateQuiz_Const["EmoneyLog"]["GiveWheel"])
	LinkNpcGossipFunc_New(nNpcId,"2-3")
end
--选项获得赠点
function PirateQuiz_RewardCpB(nNpcId)
	local nEvent = tPirateQuiz_Stc["Success"]["EventType"]
	local nData = tPirateQuiz_Stc["Success"]["DataType"]
	local nMonoEvent = tPirateQuiz_Stc["GiveEMoneyMono"]["EventType"]
	local nMonoData = tPirateQuiz_Stc["GiveEMoneyMono"]["DataType"]
	
	if not Sys_ChkFullTime(tPirateQuiz_Const["ActivityTime"]) then
		User_TalkChannel2005(tPirateQuiz_Text["SysTip"]["TimeAfter"])
		return
	end
	
	--没有全对
	if not Task_ChkStcValue(nEvent,nData,">=",tPirateQuiz_Stc["Success"]["nMax"]) then
		return
	end
	
	--今日已领
	if Task_ChkStcValue(nMonoEvent,nMonoData,">=",tPirateQuiz_Stc["GiveEMoneyMono"]["nMax"]) then
		LinkNpcGossipFunc_New(nNpcId,"2-4")
		return
	end
	
	--打掩码
	Task_SetStatistic(nMonoEvent,nMonoData,tPirateQuiz_Stc["GiveEMoneyMono"]["nMax"],1)
	Task_SetStcTimestamp(nMonoEvent,nMonoData,0)
	
	--判断赠点上限
	if Get_UserMonoEMoney() + tPirateQuiz_Const["RewardEmoneyMono"] > G_User_MaxEmoneyMono then
		PirateQuiz_MailSendReward(1)
		Sys_MsgBox(tPirateQuiz_Text["MsgTip"]["CpBFull"],"NULL","NULL")
		--记录log
		Sys_SaveActionFestivalLog(tPirateQuiz_Const["EmoneyMonoLog"])
	else
	
		RewardTemplate_UseItem(tPirateQuiz_Reward["EmoneyMonoReward"])
		
	end
	Sys_SaveEmoneyBuy(tPirateQuiz_Const["EmoneyLog"]["GiveEMoneyMono"])
	LinkNpcGossipFunc_New(nNpcId,"2-2")
end
--邮件发奖方法
function PirateQuiz_MailSendReward(nIndex)
	local nUserId = Get_UserId()
	local nActionId = tPirateQuiz_Const["Email"]["ActionId"][nIndex]
	local nExistDay = tPirateQuiz_Const["Email"]["ExistDay"]
	local sSender = tPirateQuiz_Text["Email"]["Sender"]
	local sTitle = tPirateQuiz_Text["Email"]["Title"]
	local sContent = tPirateQuiz_Text["Email"]["Content"]
	Sys_SendMail(nUserId,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent)
end

--隔天重置
function PirateQuiz_ResetStc()
	local nEvent = tPirateQuiz_Stc["Success"]["EventType"]
	local nData = tPirateQuiz_Stc["Success"]["DataType"]
	local nWheelEvent = tPirateQuiz_Stc["GiveWheel"]["EventType"]
	local nWheelData = tPirateQuiz_Stc["GiveWheel"]["DataType"]
	local nAskEvent = tPirateQuiz_Stc["AskQuestion"]["EventType"]
	local nAskData = tPirateQuiz_Stc["AskQuestion"]["DataType"]
	
	if Task_StcInterval(nEvent,nData,1,4) then
		Task_SetStatistic(nEvent,nData,0,1)
		Task_SetStcTimestamp(nEvent,nData,0)
		Task_SetStatistic(nWheelEvent,nWheelData,0,1)
		Task_SetStcTimestamp(nWheelEvent,nWheelData,0)
		Task_SetStatistic(nAskEvent,nAskData,0,1)
		Task_SetStcTimestamp(nAskEvent,nAskData,0)
	end
end

--选项显示
function PirateQuiz_OptionShowFunc()
	local nAskEvent = tPirateQuiz_Stc["AskQuestion"]["EventType"]
	local nAskData = tPirateQuiz_Stc["AskQuestion"]["DataType"]
	
	if Task_ChkStcValue(nAskEvent,nAskData,">=",tPirateQuiz_Stc["AskQuestion"]["nMax"]) then
		return false
	else
		return true
	end
end
--领奖按钮显示
function PirateQuiz_RewardOptionShowFunc(nEvent,nData,nNeed)
	--若全对，并且没领过
	if Task_ChkStcValue(tPirateQuiz_Stc["Success"]["EventType"],tPirateQuiz_Stc["Success"]["DataType"],">=",1) then
		if Task_ChkStcValue(nEvent,nData,"<",nNeed) then
			return true
		else
			return false
		end
	end
end

----------------------------------NPC部分---------------------------------------------
tNpcFace[5991] = 237
tNpcGossip[22716]= tNpcGossip[22716] or DefaultNpc:new{}
tNpcGossip[22716]["OptionHidden"] = 1
--活动前 1-1
tNpcGossip[22716]["Text1-1"] = {111,112,113,114}
tNpcGossip[22716]["Text111"] = tPirateQuiz_Text[22716]["Text111"]
tNpcGossip[22716]["Text112"] = tPirateQuiz_Text[22716]["Text112"]
tNpcGossip[22716]["Text113"] = tPirateQuiz_Text[22716]["Text113"]
tNpcGossip[22716]["Text114"] = tPirateQuiz_Text[22716]["Text114"]
tNpcGossip[22716]["ChkFunc1-1"]= function()
	return Sys_ChkFullTime(tPirateQuiz_Const["BeforeTime"])
end
tNpcGossip[22716]["tOption1-1"] = {111}
tNpcGossip[22716]["Option111"] = tPirateQuiz_Text[22716]["Option111"]
--活动中 1-2
tNpcGossip[22716]["Text1-2"] = {121,122,123,124}
tNpcGossip[22716]["Text121"] = tPirateQuiz_Text[22716]["Text121"]
tNpcGossip[22716]["Text122"] = tPirateQuiz_Text[22716]["Text122"]
tNpcGossip[22716]["Text123"] = tPirateQuiz_Text[22716]["Text123"]
tNpcGossip[22716]["Text124"] = tPirateQuiz_Text[22716]["Text124"]
tNpcGossip[22716]["ChkFunc1-2"]= function()
	PirateQuiz_ResetStc()
	return Sys_ChkFullTime(tPirateQuiz_Const["ActivityTime"])
end
tNpcGossip[22716]["tOption1-2"] = {121,122,123,124,125,126}
tNpcGossip[22716]["Option121"] = tPirateQuiz_Text[22716]["Option121"]
tNpcGossip[22716]["OptionFunc121"] = "PirateQuiz_StartQuiz</N>22716"
tNpcGossip[22716]["OptionChkFunc121"] = function ()
	--判断今日是否答题完成 未完成显示
	return PirateQuiz_OptionShowFunc()
end
tNpcGossip[22716]["Option122"] = tPirateQuiz_Text[22716]["Option122"]
tNpcGossip[22716]["OptionPoint122"] = "2-4"
tNpcGossip[22716]["OptionChkFunc122"] = function ()
	--判断今日是否答题完成 已完成显示
	return not PirateQuiz_OptionShowFunc()
end
tNpcGossip[22716]["Option123"] = tPirateQuiz_Text[22716]["Option123"]
tNpcGossip[22716]["OptionFunc123"] = "PirateQuiz_OpenWebDialog"
tNpcGossip[22716]["Option124"] = tPirateQuiz_Text[22716]["Option124"]
tNpcGossip[22716]["OptionFunc124"] = "PirateQuiz_RewardWheel</N>22716"  -- 领取转盘
tNpcGossip[22716]["OptionChkFunc124"] = function ()
	local nWheelEvent = tPirateQuiz_Stc["GiveWheel"]["EventType"]
	local nWheelData = tPirateQuiz_Stc["GiveWheel"]["DataType"]
	local nMax = tPirateQuiz_Stc["GiveWheel"]["nMax"]
	return PirateQuiz_RewardOptionShowFunc(nWheelEvent,nWheelData,nMax)
end
tNpcGossip[22716]["Option125"] = tPirateQuiz_Text[22716]["Option125"]
tNpcGossip[22716]["OptionFunc125"] = "PirateQuiz_RewardCpB</N>22716" -- 领取赠点
tNpcGossip[22716]["OptionChkFunc125"] = function ()
	local nMonoEvent = tPirateQuiz_Stc["GiveEMoneyMono"]["EventType"]
	local nMonoData = tPirateQuiz_Stc["GiveEMoneyMono"]["DataType"]
	local nMax = tPirateQuiz_Stc["GiveEMoneyMono"]["nMax"]
	return PirateQuiz_RewardOptionShowFunc(nMonoEvent,nMonoData,nMax)
end
tNpcGossip[22716]["Option126"] = tPirateQuiz_Text[22716]["Option126"]



--活动中 1-3
tNpcGossip[22716]["Text1-3"] = {131}
tNpcGossip[22716]["Text131"] = tPirateQuiz_Text[22716]["Text131"]
tNpcGossip[22716]["ChkFunc1-3"]= function()
	return not Sys_ChkFullTime(tPirateQuiz_Const["ActivityTime"])
end
tNpcGossip[22716]["tOption1-3"] = {131}
tNpcGossip[22716]["Option131"] = tPirateQuiz_Text[22716]["Option131"]

--第三次答题错误 2-1
tNpcGossip[22716]["Text2-1"] = {211}
tNpcGossip[22716]["Text211"] = tPirateQuiz_Text[22716]["Text211"]
tNpcGossip[22716]["tOption2-1"] = {211}
tNpcGossip[22716]["Option211"] = tPirateQuiz_Text[22716]["Option211"]

--首次全对 2-2
tNpcGossip[22716]["Text2-2"] = {221}
tNpcGossip[22716]["Text221"] = tPirateQuiz_Text[22716]["Text221"]
tNpcGossip[22716]["tOption2-2"] = {221}
tNpcGossip[22716]["Option221"] = tPirateQuiz_Text[22716]["Option221"]

--首次之外，首次答对给转盘 2-3
tNpcGossip[22716]["Text2-3"] = {231}
tNpcGossip[22716]["Text231"] = tPirateQuiz_Text[22716]["Text231"]
tNpcGossip[22716]["tOption2-3"] = {231}
tNpcGossip[22716]["Option231"] = tPirateQuiz_Text[22716]["Option231"]

--已经答题过 2-4
tNpcGossip[22716]["Text2-4"] = {241}
tNpcGossip[22716]["Text241"] = tPirateQuiz_Text[22716]["Text241"]
tNpcGossip[22716]["tOption2-4"] = {241}
tNpcGossip[22716]["Option241"] = tPirateQuiz_Text[22716]["Option241"]

---------------------------------物品部分---------------------------------------------
tItemFace[3307829] = 1397
--轮盘
tItem[3307820] = tItem[3307820] or {}
tItem[3307820]["Function"] = function(nItemId,sItemName)
	PirateQuiz_UseRoulette(nItemId)
end
--免费强炼丹礼包
tItem[3307821] = tItem[3307821] or {}
tItem[3307821]["Function"] = function(nItemId,sItemName)
	PirateQuiz_UsePackage(nItemId)
end
-- 回气丹礼包
tItem[3307822] = tItem[3307822] or {}
tItem[3307822]["Function"] = function(nItemId,sItemName)
	PirateQuiz_UsePackage(nItemId)
end
-- 明亮星陨石礼包
tItem[3307823] = tItem[3307823] or {}
tItem[3307823]["Function"] = function(nItemId,sItemName)
	PirateQuiz_UsePackage(nItemId)
end
-- 强效护心丹礼包
tItem[3307824] = tItem[3307824] or {}
tItem[3307824]["Function"] = function(nItemId,sItemName)
	PirateQuiz_UsePackage(nItemId)
end
-- 通神丹礼包
tItem[3307825] = tItem[3307825] or {}
tItem[3307825]["Function"] = function(nItemId,sItemName)
	PirateQuiz_UsePackage(nItemId)
end
-- 龙珠礼包
tItem[3307826] = tItem[3307826] or {}
tItem[3307826]["Function"] = function(nItemId,sItemName)
	PirateQuiz_UsePackage(nItemId)
end
-- 黄色神纹精粹礼包
tItem[3307827] = tItem[3307827] or {}
tItem[3307827]["Function"] = function(nItemId,sItemName)
	PirateQuiz_UsePackage(nItemId)
end
-- 随机黄色神纹碎片礼包
tItem[3307828] = tItem[3307828] or {}
tItem[3307828]["Function"] = function(nItemId,sItemName)
	PirateQuiz_UsePackage(nItemId)
end


--答对函数
-- tQuizPersonalReward = tQuizPersonalReward or {}
-- tQuizPersonalReward["tFunction"] = tQuizPersonalReward["tFunction"] or {}
-- table.insert(tQuizPersonalReward["tFunction"],PirateQuiz_PersonalReward)
