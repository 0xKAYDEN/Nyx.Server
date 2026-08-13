------------------------------------------------------------------------------------
--Name:			[英文征服][活动脚本]10月赠品大狂欢
--Creator: 		翁清海
--Created:		2016/09/22
------------------------------------------------------------------------------------

--命名前缀
--Oct_Mono_Revel_

--常量
local tOct_Mono_Revel_Cont = {}
	tOct_Mono_Revel_Cont["Space"] = 1
	tOct_Mono_Revel_Cont["EMoney"] = 500
	tOct_Mono_Revel_Cont["Times"] = {}
	tOct_Mono_Revel_Cont["Times"][19522] = 0
	tOct_Mono_Revel_Cont["Times"][19523] = 3
	tOct_Mono_Revel_Cont["Times"][19524] = 9
	tOct_Mono_Revel_Cont["Times"][19525] = 19
	tOct_Mono_Revel_Cont["EMoneyMonoPrice"] = {}
	tOct_Mono_Revel_Cont["EMoneyMonoPrice"][3003124] = {}
	tOct_Mono_Revel_Cont["EMoneyMonoPrice"][3003124][19523] = 50
	tOct_Mono_Revel_Cont["EMoneyMonoPrice"][3003124][19524] = 60
	tOct_Mono_Revel_Cont["EMoneyMonoPrice"][3003124][19525] = 65
	tOct_Mono_Revel_Cont["EMoneyMonoPrice"][3009001] = {}
	tOct_Mono_Revel_Cont["EMoneyMonoPrice"][3009001][19523] = 55
	tOct_Mono_Revel_Cont["EMoneyMonoPrice"][3009001][19524] = 65
	tOct_Mono_Revel_Cont["EMoneyMonoPrice"][3009001][19525] = 75
	tOct_Mono_Revel_Cont["EMoneyMonoPrice"][730003] = {}
	tOct_Mono_Revel_Cont["EMoneyMonoPrice"][730003][19523] = 70
	tOct_Mono_Revel_Cont["EMoneyMonoPrice"][730003][19524] = 80
	tOct_Mono_Revel_Cont["EMoneyMonoPrice"][730003][19525] = 90
	tOct_Mono_Revel_Cont["EMoneyMonoPrice"][1088000] = {}
	tOct_Mono_Revel_Cont["EMoneyMonoPrice"][1088000][19523] = 90
	tOct_Mono_Revel_Cont["EMoneyMonoPrice"][1088000][19524] = 100
	tOct_Mono_Revel_Cont["EMoneyMonoPrice"][1088000][19525] = 110
	tOct_Mono_Revel_Cont["EMoneyMonoPrice"][3300470] = {}
	tOct_Mono_Revel_Cont["EMoneyMonoPrice"][3300470][19523] = 100
	tOct_Mono_Revel_Cont["EMoneyMonoPrice"][3300470][19524] = 110
	tOct_Mono_Revel_Cont["EMoneyMonoPrice"][3300470][19525] = 120
	tOct_Mono_Revel_Cont["EMoneyMonoPrice"][3001036] = {}
	tOct_Mono_Revel_Cont["EMoneyMonoPrice"][3001036][19523] = 110
	tOct_Mono_Revel_Cont["EMoneyMonoPrice"][3001036][19524] = 125
	tOct_Mono_Revel_Cont["EMoneyMonoPrice"][3001036][19525] = 135
	tOct_Mono_Revel_Cont["EMoneyMonoPrice"][3003126] = {}
	tOct_Mono_Revel_Cont["EMoneyMonoPrice"][3003126][19523] = 200
	tOct_Mono_Revel_Cont["EMoneyMonoPrice"][3003126][19524] = 210
	tOct_Mono_Revel_Cont["EMoneyMonoPrice"][3003126][19525] = 220
	tOct_Mono_Revel_Cont["EMoneyMonoPrice"][723694] = {}
	tOct_Mono_Revel_Cont["EMoneyMonoPrice"][723694][19523] = 365
	tOct_Mono_Revel_Cont["EMoneyMonoPrice"][723694][19524] = 375
	tOct_Mono_Revel_Cont["EMoneyMonoPrice"][723694][19525] = 385
	tOct_Mono_Revel_Cont["EMoneyMonoPrice"][1200005] = {}
	tOct_Mono_Revel_Cont["EMoneyMonoPrice"][1200005][19523] = 1650
	tOct_Mono_Revel_Cont["EMoneyMonoPrice"][1200005][19524] = 1700
	tOct_Mono_Revel_Cont["EMoneyMonoPrice"][1200005][19525] = 1750

--寻路地点
local tOct_Mono_Revel_Where = {}
	tOct_Mono_Revel_Where[19522] = {}
	tOct_Mono_Revel_Where[19522]["PosX"] = 310
	tOct_Mono_Revel_Where[19522]["PosY"] = 252
	tOct_Mono_Revel_Where[19522]["MapId"] = 1002
	tOct_Mono_Revel_Where[19522]["NpcId"] = 19523
	tOct_Mono_Revel_Where[19523] = {}
	tOct_Mono_Revel_Where[19523]["PosX"] = 305
	tOct_Mono_Revel_Where[19523]["PosY"] = 243
	tOct_Mono_Revel_Where[19523]["MapId"] = 1002
	tOct_Mono_Revel_Where[19523]["NpcId"] = 19524
	tOct_Mono_Revel_Where[19524] = {}
	tOct_Mono_Revel_Where[19524]["PosX"] = 310
	tOct_Mono_Revel_Where[19524]["PosY"] = 243
	tOct_Mono_Revel_Where[19524]["MapId"] = 1002
	tOct_Mono_Revel_Where[19524]["NpcId"] = 19525

--stc掩码
local tOct_Mono_Revel_Stc = {}
	tOct_Mono_Revel_Stc[19522] = {}
	tOct_Mono_Revel_Stc[19522][1] = {} --换购次数
	tOct_Mono_Revel_Stc[19522][1]["Event"] = 149
	tOct_Mono_Revel_Stc[19522][1]["Type"] = 52
	tOct_Mono_Revel_Stc[19522][1]["Save"] = 1
	tOct_Mono_Revel_Stc[19522][1]["Data"] = 3
	tOct_Mono_Revel_Stc[19522][2] = {} --额外福利次数
	tOct_Mono_Revel_Stc[19522][2]["Event"] = 149
	tOct_Mono_Revel_Stc[19522][2]["Type"] = 53
	tOct_Mono_Revel_Stc[19522][2]["Save"] = 1
	tOct_Mono_Revel_Stc[1] = {}
	tOct_Mono_Revel_Stc[1]["Event"] = 149
	tOct_Mono_Revel_Stc[1]["Type"] = 54
	tOct_Mono_Revel_Stc[1]["Save"] = 1
	tOct_Mono_Revel_Stc[2] = {}
	tOct_Mono_Revel_Stc[2]["Event"] = 149
	tOct_Mono_Revel_Stc[2]["Type"] = 55
	tOct_Mono_Revel_Stc[2]["Save"] = 1
	tOct_Mono_Revel_Stc[3] = {}
	tOct_Mono_Revel_Stc[3]["Event"] = 149
	tOct_Mono_Revel_Stc[3]["Type"] = 56
	tOct_Mono_Revel_Stc[3]["Save"] = 1
	tOct_Mono_Revel_Stc[4] = {}
	tOct_Mono_Revel_Stc[4]["Event"] = 149
	tOct_Mono_Revel_Stc[4]["Type"] = 57
	tOct_Mono_Revel_Stc[4]["Save"] = 1
	tOct_Mono_Revel_Stc[5] = {}
	tOct_Mono_Revel_Stc[5]["Event"] = 149
	tOct_Mono_Revel_Stc[5]["Type"] = 58
	tOct_Mono_Revel_Stc[5]["Save"] = 1
	tOct_Mono_Revel_Stc[6] = {}
	tOct_Mono_Revel_Stc[6]["Event"] = 149
	tOct_Mono_Revel_Stc[6]["Type"] = 59
	tOct_Mono_Revel_Stc[6]["Save"] = 1
	tOct_Mono_Revel_Stc[7] = {}
	tOct_Mono_Revel_Stc[7]["Event"] = 149
	tOct_Mono_Revel_Stc[7]["Type"] = 60
	tOct_Mono_Revel_Stc[7]["Save"] = 1
	tOct_Mono_Revel_Stc[8] = {}
	tOct_Mono_Revel_Stc[8]["Event"] = 149
	tOct_Mono_Revel_Stc[8]["Type"] = 61
	tOct_Mono_Revel_Stc[8]["Save"] = 1
	tOct_Mono_Revel_Stc[9] = {}
	tOct_Mono_Revel_Stc[9]["Event"] = 149
	tOct_Mono_Revel_Stc[9]["Type"] = 62
	tOct_Mono_Revel_Stc[9]["Save"] = 1

--活动时间
local tOct_Mono_Revel_Time = {}
	tOct_Mono_Revel_Time["Activity"] = {}
	tOct_Mono_Revel_Time["Activity"]["Before"]= "2016-01-01 00:00 2016-10-12 23:59"
	tOct_Mono_Revel_Time["Activity"]["Ing"]= "2016-10-13 00:00 2016-10-26 23:59"

--物品
local tOct_Mono_Revel_Item = {}
	tOct_Mono_Revel_Item[3300175] = {}
	tOct_Mono_Revel_Item[3300175]["Id"] = 3300175
	tOct_Mono_Revel_Item[3300175]["Attr"] = "0 1"
	tOct_Mono_Revel_Item[3200027] = {}
	tOct_Mono_Revel_Item[3200027]["Id"] = 3200027
	tOct_Mono_Revel_Item[3200027]["Attr"] = "0 1"
	tOct_Mono_Revel_Item[3003124] = {}
	tOct_Mono_Revel_Item[3003124]["Id"] = 3003124
	tOct_Mono_Revel_Item[3003124]["Attr"] = "0 10 3"
	tOct_Mono_Revel_Item[3003124]["StcIndex"] = 1
	tOct_Mono_Revel_Item[3003124]["Num"] = 10
	tOct_Mono_Revel_Item[3009001] = {}
	tOct_Mono_Revel_Item[3009001]["Id"] = 3009001
	tOct_Mono_Revel_Item[3009001]["Attr"] = "0 1 0 2880 1"
	tOct_Mono_Revel_Item[3009001]["StcIndex"] = 2
	tOct_Mono_Revel_Item[3009001]["Num"] = 1
	tOct_Mono_Revel_Item[730003] = {}
	tOct_Mono_Revel_Item[730003]["Id"] = 730003
	tOct_Mono_Revel_Item[730003]["Attr"] = "0 1 3"
	tOct_Mono_Revel_Item[730003]["StcIndex"] = 3
	tOct_Mono_Revel_Item[730003]["Num"] = 1
	tOct_Mono_Revel_Item[1088000] = {}
	tOct_Mono_Revel_Item[1088000]["Id"] = 1088000
	tOct_Mono_Revel_Item[1088000]["Attr"] = "0 1 3"
	tOct_Mono_Revel_Item[1088000]["StcIndex"] = 4
	tOct_Mono_Revel_Item[1088000]["Num"] = 1
	tOct_Mono_Revel_Item[3300470] = {}
	tOct_Mono_Revel_Item[3300470]["Id"] = 3300470
	tOct_Mono_Revel_Item[3300470]["Attr"] = "0 1 3"
	tOct_Mono_Revel_Item[3300470]["StcIndex"] = 5
	tOct_Mono_Revel_Item[3300470]["Num"] = 1
	tOct_Mono_Revel_Item[3001036] = {}
	tOct_Mono_Revel_Item[3001036]["Id"] = 3001036
	tOct_Mono_Revel_Item[3001036]["Attr"] = "0 1 3"
	tOct_Mono_Revel_Item[3001036]["StcIndex"] = 6
	tOct_Mono_Revel_Item[3001036]["Num"] = 1
	tOct_Mono_Revel_Item[3003126] = {}
	tOct_Mono_Revel_Item[3003126]["Id"] = 3003126
	tOct_Mono_Revel_Item[3003126]["Attr"] = "0 10 3"
	tOct_Mono_Revel_Item[3003126]["StcIndex"] = 7
	tOct_Mono_Revel_Item[3003126]["Num"] = 10
	tOct_Mono_Revel_Item[723694] = {}
	tOct_Mono_Revel_Item[723694]["Id"] = 723694
	tOct_Mono_Revel_Item[723694]["Attr"] = "0 1 3"
	tOct_Mono_Revel_Item[723694]["StcIndex"] = 8
	tOct_Mono_Revel_Item[723694]["Num"] = 1
	tOct_Mono_Revel_Item[1200005] = {}
	tOct_Mono_Revel_Item[1200005]["Id"] = 1200005
	tOct_Mono_Revel_Item[1200005]["Attr"] = "0 1 3"
	tOct_Mono_Revel_Item[1200005]["StcIndex"] = 9
	tOct_Mono_Revel_Item[1200005]["Num"] = 1

--log
local tOct_Mono_Revel_Log = {}
	tOct_Mono_Revel_Log["UserEMoney"] = "0,0,2,500,12000523,2,3300175,1"
	tOct_Mono_Revel_Log["GetEMoneyMono"] = "0,0,0,0,12000523,2,3200027,1"
	tOct_Mono_Revel_Log["UserEMoneyMono"] = "0,0,3,%d,12000523,2,%d,%d"


--天石log
local tOct_Mono_Revel_EMoneyLog = {}
	tOct_Mono_Revel_EMoneyLog["EmoneyLog"] = "350	20319	500	500	1	"
	tOct_Mono_Revel_EMoneyLog["EmoneyMonoLog"] = {}
	tOct_Mono_Revel_EMoneyLog["EmoneyMonoLog"]["Mono"] = "350	20320	0	0	500	"
	tOct_Mono_Revel_EMoneyLog["EmoneyMonoLog"][3003124] = {}
	tOct_Mono_Revel_EMoneyLog["EmoneyMonoLog"][3003124][19523] = "350	20327	0	0	50	"
	tOct_Mono_Revel_EMoneyLog["EmoneyMonoLog"][3003124][19524] = "350	20336	0	0	60	"
	tOct_Mono_Revel_EMoneyLog["EmoneyMonoLog"][3003124][19525] = "350	20345	0	0	65	"
	tOct_Mono_Revel_EMoneyLog["EmoneyMonoLog"][3009001] = {}
	tOct_Mono_Revel_EMoneyLog["EmoneyMonoLog"][3009001][19523] = "350	20328	0	0	55	"
	tOct_Mono_Revel_EMoneyLog["EmoneyMonoLog"][3009001][19524] = "350	20337	0	0	65	"
	tOct_Mono_Revel_EMoneyLog["EmoneyMonoLog"][3009001][19525] = "350	20346	0	0	75	"
	tOct_Mono_Revel_EMoneyLog["EmoneyMonoLog"][730003] = {}
	tOct_Mono_Revel_EMoneyLog["EmoneyMonoLog"][730003][19523] = "350	20322	0	0	70	"
	tOct_Mono_Revel_EMoneyLog["EmoneyMonoLog"][730003][19524] = "350	20331	0	0	80	"
	tOct_Mono_Revel_EMoneyLog["EmoneyMonoLog"][730003][19525] = "350	20340	0	0	90	"
	tOct_Mono_Revel_EMoneyLog["EmoneyMonoLog"][1088000] = {}
	tOct_Mono_Revel_EMoneyLog["EmoneyMonoLog"][1088000][19523] = "350	20321	0	0	90	"
	tOct_Mono_Revel_EMoneyLog["EmoneyMonoLog"][1088000][19524] = "350	20330	0	0	100	"
	tOct_Mono_Revel_EMoneyLog["EmoneyMonoLog"][1088000][19525] = "350	20339	0	0	110	"
	tOct_Mono_Revel_EMoneyLog["EmoneyMonoLog"][3300470] = {}
	tOct_Mono_Revel_EMoneyLog["EmoneyMonoLog"][3300470][19523] = "350	20329	0	0	100	"
	tOct_Mono_Revel_EMoneyLog["EmoneyMonoLog"][3300470][19524] = "350	20338	0	0	110	"
	tOct_Mono_Revel_EMoneyLog["EmoneyMonoLog"][3300470][19525] = "350	20347	0	0	120	"
	tOct_Mono_Revel_EMoneyLog["EmoneyMonoLog"][3001036] = {}
	tOct_Mono_Revel_EMoneyLog["EmoneyMonoLog"][3001036][19523] = "350	20325	0	0	110	"
	tOct_Mono_Revel_EMoneyLog["EmoneyMonoLog"][3001036][19524] = "350	20334	0	0	125	"
	tOct_Mono_Revel_EMoneyLog["EmoneyMonoLog"][3001036][19525] = "350	20343	0	0	135	"
	tOct_Mono_Revel_EMoneyLog["EmoneyMonoLog"][3003126] = {}
	tOct_Mono_Revel_EMoneyLog["EmoneyMonoLog"][3003126][19523] = "350	20326	0	0	200	"
	tOct_Mono_Revel_EMoneyLog["EmoneyMonoLog"][3003126][19524] = "350	20335	0	0	210	"
	tOct_Mono_Revel_EMoneyLog["EmoneyMonoLog"][3003126][19525] = "350	20344	0	0	220	"
	tOct_Mono_Revel_EMoneyLog["EmoneyMonoLog"][723694] = {}
	tOct_Mono_Revel_EMoneyLog["EmoneyMonoLog"][723694][19523] = "350	20324	0	0	365	"
	tOct_Mono_Revel_EMoneyLog["EmoneyMonoLog"][723694][19524] = "350	20333	0	0	375	"
	tOct_Mono_Revel_EMoneyLog["EmoneyMonoLog"][723694][19525] = "350	20342	0	0	385	"
	tOct_Mono_Revel_EMoneyLog["EmoneyMonoLog"][1200005] = {}
	tOct_Mono_Revel_EMoneyLog["EmoneyMonoLog"][1200005][19523] = "350	20323	0	0	1650	"
	tOct_Mono_Revel_EMoneyLog["EmoneyMonoLog"][1200005][19524] = "350	20332	0	0	1700	"
	tOct_Mono_Revel_EMoneyLog["EmoneyMonoLog"][1200005][19525] = "350	20341	0	0	1750	"


--------------------------------------逻辑模块-------------------------------------------
function Oct_Mono_Revel_ChkExchangeTimes()
	local nUserId = Get_UserId()
	local nEvent = tOct_Mono_Revel_Stc[19522][1]["Event"]
	local nType = tOct_Mono_Revel_Stc[19522][1]["Type"]
	local nSave = tOct_Mono_Revel_Stc[19522][1]["Save"]
	local nEventAdd = tOct_Mono_Revel_Stc[19522][2]["Event"]
	local nTypeAdd = tOct_Mono_Revel_Stc[19522][2]["Type"]
	
	if not Task_ChkStatistic(nEvent,nType,nUserId) then
		Task_SetStatistic(nEvent,nType,tOct_Mono_Revel_Stc[19522][1]["Data"],nSave,nUserId)
	end
	
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId)
	local nDataAdd = Get_UserStatisticValue(nEventAdd,nTypeAdd,nUserId)
	
	if Sys_ChkFullTime(tOct_Mono_Revel_Time["Activity"]["Ing"]) then
		tNpcGossip[19522]["Option2"] = string.format(tOct_Mono_Revel_Text[19522]["Option2"], nData)
		tNpcGossip[19522]["Option3"] = string.format(tOct_Mono_Revel_Text[19522]["Option3"], nDataAdd)
		return true
	else
		return false
	end
end

function Oct_Mono_Revel_LinkExchange(nNpcId)
	local nUserId = Get_UserId()
	local nEMoney = Get_UserEMoney(nUserId)
	local nEvent = tOct_Mono_Revel_Stc[19522][1]["Event"]
	local nType = tOct_Mono_Revel_Stc[19522][1]["Type"]
	
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId)
	
	--兑换次数判断
	if nData <= 0 then
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end
	
	--天石判断
	if nEMoney < tOct_Mono_Revel_Cont["EMoney"] then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	
	--背包空间检查
	if not User_CheckLeftSpace(tOct_Mono_Revel_Cont["Space"],nUserId) then
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return
	end
	
	--活动时间检查
	if not Sys_ChkFullTime(tOct_Mono_Revel_Time["Activity"]["Ing"]) then
		LinkNpcGossipFunc_New(nNpcId,"2-4")
		return
	end
	
	--接兑换选项
	LinkNpcGossipFunc_New(nNpcId,"2-5")
end

function Oct_Mono_Revel_ExchangeMono(nNpcId)
	local nUserId = Get_UserId()
	local nEMoney = Get_UserEMoney(nUserId)
	local nEvent = tOct_Mono_Revel_Stc[19522][1]["Event"]
	local nType = tOct_Mono_Revel_Stc[19522][1]["Type"]
	local nSave = tOct_Mono_Revel_Stc[19522][1]["Save"]
	local nEventAdd = tOct_Mono_Revel_Stc[19522][2]["Event"]
	local nTypeAdd = tOct_Mono_Revel_Stc[19522][2]["Type"]
	local nSaveAdd = tOct_Mono_Revel_Stc[19522][2]["Save"]
	
	--天石判断
	if nEMoney < tOct_Mono_Revel_Cont["EMoney"] then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	
	--背包空间检查
	if not User_CheckLeftSpace(tOct_Mono_Revel_Cont["Space"],nUserId) then
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return
	end
	
	--活动时间检查
	if not Sys_ChkFullTime(tOct_Mono_Revel_Time["Activity"]["Ing"]) then
		LinkNpcGossipFunc_New(nNpcId,"2-4")
		return
	end
	
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId)
	local nDataAdd = Get_UserStatisticValue(nEventAdd,nTypeAdd,nUserId)
	
	--扣除天石
	User_AddEMoney((-1) * tOct_Mono_Revel_Cont["EMoney"],nUserId)
	--设置掩码
	Task_SetStatistic(nEvent,nType,nData - 1,nSave,nUserId)
	Task_SetStatistic(nEventAdd,nTypeAdd,nDataAdd + 1,nSaveAdd,nUserId)
	--给1500天石（赠）礼包
	Item_AddNewItem(tOct_Mono_Revel_Item[3300175]["Id"],tOct_Mono_Revel_Item[3300175]["Attr"],nUserId) 
	--打log
	Sys_SaveActionFestivalLog(tOct_Mono_Revel_Log["UserEMoney"])
	--打天石log
	Sys_SaveEmoneyBuy(tOct_Mono_Revel_EMoneyLog["EmoneyLog"])
	
	--接兑换成功选项
	LinkNpcGossipFunc_New(nNpcId,"3-1")
end

function Oct_Mono_Revel_GetMono(nNpcId)
	local nUserId = Get_UserId()
	local nEventAdd = tOct_Mono_Revel_Stc[19522][2]["Event"]
	local nTypeAdd = tOct_Mono_Revel_Stc[19522][2]["Type"]
	local nSaveAdd = tOct_Mono_Revel_Stc[19522][2]["Save"]
	local nDataAdd = Get_UserStatisticValue(nEventAdd,nTypeAdd,nUserId)

	--可领取额外奖励次数
	if nDataAdd <= 0 then
		LinkNpcGossipFunc_New(nNpcId,"2-6")
		return
	end

	--背包空间检查
	if not User_CheckLeftSpace(tOct_Mono_Revel_Cont["Space"],nUserId) then
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return
	end
	
	--活动时间检查
	if not Sys_ChkFullTime(tOct_Mono_Revel_Time["Activity"]["Ing"]) then
		LinkNpcGossipFunc_New(nNpcId,"2-4")
		return
	end
	
	--设置掩码
	Task_SetStatistic(nEventAdd,nTypeAdd,nDataAdd - 1,nSaveAdd,nUserId)
	--给500天石（赠）礼包
	Item_AddNewItem(tOct_Mono_Revel_Item[3200027]["Id"],tOct_Mono_Revel_Item[3200027]["Attr"],nUserId) 
	--打log
	Sys_SaveActionFestivalLog(tOct_Mono_Revel_Log["GetEMoneyMono"])
	
	--打天石log
	Sys_SaveEmoneyBuy(tOct_Mono_Revel_EMoneyLog["EmoneyMonoLog"]["Mono"])
	
	--接换购成功选项
	LinkNpcGossipFunc_New(nNpcId,"2-7")
end

--寻路
function Oct_Mono_Revel_GotoShop(nNpcId)
	local nUserId = Get_UserId()
	local nPosX = tOct_Mono_Revel_Where[nNpcId]["PosX"]
	local nPosY = tOct_Mono_Revel_Where[nNpcId]["PosY"]
	local nMapId = tOct_Mono_Revel_Where[nNpcId]["MapId"]
	local nNpcId = tOct_Mono_Revel_Where[nNpcId]["NpcId"]
	
	Sys_GotoSomeWhere(nPosX,nPosY,nMapId,nNpcId,nUserId)

end

function Oct_Mono_Revel_ChkRemainBuyTimes(nNpcId)
	local nUserId = Get_UserId()
	local nEvent = 0
	local nType = 0
	local nData = 0
	
	tNpcGossip[nNpcId]["tOption1-2"] = {}
	
	for i = 1, 9 do
		nEvent = tOct_Mono_Revel_Stc[i]["Event"]
		nType = tOct_Mono_Revel_Stc[i]["Type"]
		nData = Get_UserStatisticValue(nEvent,nType,nUserId)
		
		if nData < tOct_Mono_Revel_Cont["Times"][nNpcId] then
			table.insert(tNpcGossip[nNpcId]["tOption1-2"], i)
		end
	end
	
	table.insert(tNpcGossip[nNpcId]["tOption1-2"], 10)
	
	if Sys_ChkFullTime(tOct_Mono_Revel_Time["Activity"]["Ing"]) then
		if #tNpcGossip[nNpcId]["tOption1-2"] <= 1 then
			LinkNpcGossipFunc_New(nNpcId,"1-4")
			return false
		end
		return true
	else
		return false
	end
end

--买促销商品接第二层对白
function Oct_Mono_Revel_BuySomeThing(nNpcId, nItemId)
	local nUserId = Get_UserId()
	local nStcIndex = tOct_Mono_Revel_Item[nItemId]["StcIndex"]
	local nEvent = tOct_Mono_Revel_Stc[nStcIndex]["Event"]
	local nType = tOct_Mono_Revel_Stc[nStcIndex]["Type"]
	local nEMoneyMono = Get_UserMonoEMoney(nUserId)
	
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId)
	local nRemainNum = 0
	--计算库存
	if nData < tOct_Mono_Revel_Cont["Times"][nNpcId - 1] then
		nRemainNum = tOct_Mono_Revel_Cont["Times"][nNpcId]- tOct_Mono_Revel_Cont["Times"][nNpcId - 1]
	elseif nData > tOct_Mono_Revel_Cont["Times"][nNpcId] then
		nRemainNum = 0
	else
		nRemainNum = tOct_Mono_Revel_Cont["Times"][nNpcId] - nData
	end
	nRemainNum = nRemainNum * tOct_Mono_Revel_Item[nItemId]["Num"]
	
	--上上档NPC对应物品没有卖完
	if tOct_Mono_Revel_Cont["Times"][nNpcId - 2] ==nil then
		tOct_Mono_Revel_Cont["Times"][nNpcId - 2] = 0
	end
	if nData < tOct_Mono_Revel_Cont["Times"][nNpcId - 2] then
		tNpcGossip[nNpcId]["Text261"] = string.format(tOct_Mono_Revel_Text[nNpcId]["Text261"], Get_ItemtypeName(nItemId))
		LinkNpcGossipFunc_New(nNpcId,"2-6")
		return
	end
	
	--上一档NPC对应物品没有卖完
	if nData < tOct_Mono_Revel_Cont["Times"][nNpcId - 1] then
		tNpcGossip[nNpcId]["Text251"] = string.format(tOct_Mono_Revel_Text[nNpcId]["Text251"], Get_ItemtypeName(nItemId))
		LinkNpcGossipFunc_New(nNpcId,"2-5")
		return
	end
	
	--已无库存
	if nData >= tOct_Mono_Revel_Cont["Times"][nNpcId] then
		tNpcGossip[nNpcId]["Text211"] = string.format(tOct_Mono_Revel_Text[nNpcId]["Text211"], Get_ItemtypeName(nItemId))
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	
	--天石赠检查
	if nEMoneyMono < tOct_Mono_Revel_Cont["EMoneyMonoPrice"][nItemId][nNpcId] then
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end
	
	--背包空间检查
	if not User_CheckLeftSpace(tOct_Mono_Revel_Cont["Space"],nUserId) then
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return
	end
	
	--活动时间检查
	if not Sys_ChkFullTime(tOct_Mono_Revel_Time["Activity"]["Ing"]) then
		LinkNpcGossipFunc_New(nNpcId,"2-4")
		return
	end
	
	tNpcGossip[nNpcId]["Text311"] = string.format(tOct_Mono_Revel_Text[nNpcId]["Text311"], tOct_Mono_Revel_Cont["EMoneyMonoPrice"][nItemId][nNpcId], tOct_Mono_Revel_Item[nItemId]["Num"], Get_ItemtypeName(nItemId))
	tNpcGossip[nNpcId]["Text312"] = string.format(tOct_Mono_Revel_Text[nNpcId]["Text312"], Get_ItemtypeName(nItemId), nRemainNum)
	tNpcGossip[nNpcId]["OptionFunc21"] = string.format("Oct_Mono_Revel_BuySomeThingConfirm</N>%d</N>%d", nNpcId, nItemId)
	LinkNpcGossipFunc_New(nNpcId,"3-1")
end

function Oct_Mono_Revel_BuySomeThingConfirm(nNpcId, nItemId)
	local nUserId = Get_UserId()
	local nStcIndex = tOct_Mono_Revel_Item[nItemId]["StcIndex"]
	local nEvent = tOct_Mono_Revel_Stc[nStcIndex]["Event"]
	local nType = tOct_Mono_Revel_Stc[nStcIndex]["Type"]
	local nSave = tOct_Mono_Revel_Stc[nStcIndex]["Save"]
	local nEMoneyMono = Get_UserMonoEMoney(nUserId)
	
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId)
	
	--已无库存
	if nData >= tOct_Mono_Revel_Cont["Times"][nNpcId] then
		tNpcGossip[nNpcId]["Text211"] = string.format(tOct_Mono_Revel_Text[nNpcId]["Text211"], Get_ItemtypeName(nItemId))
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	
	--天石赠检查
	if nEMoneyMono < tOct_Mono_Revel_Cont["EMoneyMonoPrice"][nItemId][nNpcId] then
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end
	
	--背包空间检查
	if not User_CheckLeftSpace(tOct_Mono_Revel_Cont["Space"],nUserId) then
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return
	end
	
	--活动时间检查
	if not Sys_ChkFullTime(tOct_Mono_Revel_Time["Activity"]["Ing"]) then
		LinkNpcGossipFunc_New(nNpcId,"2-4")
		return
	end

	--扣除天石赠
	User_AddEMoneyMono((-1) * tOct_Mono_Revel_Cont["EMoneyMonoPrice"][nItemId][nNpcId],nUserId)
	--设置掩码
	Task_SetStatistic(nEvent,nType,nData + 1,nSave,nUserId)
	--给物品
	Item_AddNewItem(tOct_Mono_Revel_Item[nItemId]["Id"],tOct_Mono_Revel_Item[nItemId]["Attr"],nUserId) 
	--打log
	local sLog = string.format(tOct_Mono_Revel_Log["UserEMoneyMono"], tOct_Mono_Revel_Cont["EMoneyMonoPrice"][nItemId][nNpcId], tOct_Mono_Revel_Item[nItemId]["Id"], tOct_Mono_Revel_Item[nItemId]["Num"])
	Sys_SaveActionFestivalLog(sLog)
	--打天石log
	Sys_SaveEmoneyBuy(tOct_Mono_Revel_EMoneyLog["EmoneyMonoLog"][nItemId][nNpcId])
	
	local sTalk = string.format(tOct_Mono_Revel_Text["Channel2005"]["BuySomeThing"], tOct_Mono_Revel_Cont["EMoneyMonoPrice"][nItemId][nNpcId], tOct_Mono_Revel_Item[nItemId]["Num"], Get_ItemtypeName(nItemId))
	User_TalkChannel2005(sTalk)
end

--------------------------------------NPC模块--------------------------------------------
--天石换购大使
tNpcFace[4365] = 1
tNpcGossip[19522] = tNpcGossip[19522] or DefaultNpc:new{}
tNpcGossip[19522]["OptionHidden"] = 1

tNpcGossip[19522]["Text1-1"] = {111,112,113,114}
tNpcGossip[19522]["Text111"] = tOct_Mono_Revel_Text[19522]["Text111"]
tNpcGossip[19522]["Text112"] = tOct_Mono_Revel_Text[19522]["Text112"]
tNpcGossip[19522]["Text113"] = tOct_Mono_Revel_Text[19522]["Text113"]
tNpcGossip[19522]["Text114"] = tOct_Mono_Revel_Text[19522]["Text114"]
tNpcGossip[19522]["tOption1-1"] = {1}

tNpcGossip[19522]["ChkFunc1-1"] = function ()
	if Sys_ChkFullTime(tOct_Mono_Revel_Time["Activity"]["Before"]) then
		return true
	else
		return false
	end
end
tNpcGossip[19522]["Option1"] = tOct_Mono_Revel_Text[19522]["Option1"]

tNpcGossip[19522]["Text1-2"] = {121,122,123,124}
tNpcGossip[19522]["Text121"] = tOct_Mono_Revel_Text[19522]["Text121"]
tNpcGossip[19522]["Text122"] = tOct_Mono_Revel_Text[19522]["Text122"]
tNpcGossip[19522]["Text123"] = tOct_Mono_Revel_Text[19522]["Text123"]
tNpcGossip[19522]["Text124"] = tOct_Mono_Revel_Text[19522]["Text124"]
tNpcGossip[19522]["tOption1-2"] = {2,3,4,5}

tNpcGossip[19522]["ChkFunc1-2"] = function ()
	return Oct_Mono_Revel_ChkExchangeTimes()
end

tNpcGossip[19522]["Option4"] = tOct_Mono_Revel_Text[19522]["Option4"]
tNpcGossip[19522]["Option5"] = tOct_Mono_Revel_Text[19522]["Option5"]
tNpcGossip[19522]["OptionFunc2"] = "Oct_Mono_Revel_LinkExchange</N>19522"
tNpcGossip[19522]["OptionFunc3"] = "Oct_Mono_Revel_GetMono</N>19522"
tNpcGossip[19522]["OptionFunc4"] = "Oct_Mono_Revel_GotoShop</N>19522"

tNpcGossip[19522]["Text1-3"] = {131}
tNpcGossip[19522]["Text131"] = tOct_Mono_Revel_Text[19522]["Text131"]
tNpcGossip[19522]["tOption1-3"] = {6}

tNpcGossip[19522]["ChkFunc1-3"] = function ()
	if not (Sys_ChkFullTime(tOct_Mono_Revel_Time["Activity"]["Before"]) or Sys_ChkFullTime(tOct_Mono_Revel_Time["Activity"]["Ing"])) then
		return true
	else
		return false
	end
end

tNpcGossip[19522]["Option6"] = tOct_Mono_Revel_Text[19522]["Option6"]

tNpcGossip[19522]["Text2-1"] = {211}
tNpcGossip[19522]["Text211"] = tOct_Mono_Revel_Text[19522]["Text211"]
tNpcGossip[19522]["tOption2-1"] = {7}
tNpcGossip[19522]["Option7"] = tOct_Mono_Revel_Text[19522]["Option7"]

tNpcGossip[19522]["Text2-2"] = {221,222}
tNpcGossip[19522]["Text221"] = tOct_Mono_Revel_Text[19522]["Text221"]
tNpcGossip[19522]["Text222"] = tOct_Mono_Revel_Text[19522]["Text222"]
tNpcGossip[19522]["tOption2-2"] = {8}
tNpcGossip[19522]["Option8"] = tOct_Mono_Revel_Text[19522]["Option8"]

tNpcGossip[19522]["Text2-3"] = {231}
tNpcGossip[19522]["Text231"] = tOct_Mono_Revel_Text[19522]["Text231"]
tNpcGossip[19522]["tOption2-3"] = {9}
tNpcGossip[19522]["Option9"] = tOct_Mono_Revel_Text[19522]["Option9"]

tNpcGossip[19522]["Text2-4"] = {241}
tNpcGossip[19522]["Text241"] = tOct_Mono_Revel_Text[19522]["Text241"]
tNpcGossip[19522]["tOption2-4"] = {10}
tNpcGossip[19522]["Option10"] = tOct_Mono_Revel_Text[19522]["Option10"]

tNpcGossip[19522]["Text2-5"] = {251,252}
tNpcGossip[19522]["Text251"] = tOct_Mono_Revel_Text[19522]["Text251"]
tNpcGossip[19522]["Text252"] = tOct_Mono_Revel_Text[19522]["Text252"]
tNpcGossip[19522]["tOption2-5"] = {11,12}
tNpcGossip[19522]["Option11"] = tOct_Mono_Revel_Text[19522]["Option11"]
tNpcGossip[19522]["Option12"] = tOct_Mono_Revel_Text[19522]["Option12"]
tNpcGossip[19522]["OptionFunc11"] = "Oct_Mono_Revel_ExchangeMono</N>19522"

tNpcGossip[19522]["Text2-6"] = {261,262}
tNpcGossip[19522]["Text261"] = tOct_Mono_Revel_Text[19522]["Text261"]
tNpcGossip[19522]["Text262"] = tOct_Mono_Revel_Text[19522]["Text262"]
tNpcGossip[19522]["tOption2-6"] = {13}
tNpcGossip[19522]["Option13"] = tOct_Mono_Revel_Text[19522]["Option13"]

tNpcGossip[19522]["Text2-7"] = {271}
tNpcGossip[19522]["Text271"] = tOct_Mono_Revel_Text[19522]["Text271"]
tNpcGossip[19522]["tOption2-7"] = {14}
tNpcGossip[19522]["Option14"] = tOct_Mono_Revel_Text[19522]["Option14"]

tNpcGossip[19522]["Text3-1"] = {311}
tNpcGossip[19522]["Text311"] = tOct_Mono_Revel_Text[19522]["Text311"]
tNpcGossip[19522]["tOption3-1"] = {15}
tNpcGossip[19522]["Option15"] = tOct_Mono_Revel_Text[19522]["Option7"]

--一号赠品促销商
tNpcFace[4366] = 15
tNpcGossip[19523] = tNpcGossip[19523] or DefaultNpc:new{}
tNpcGossip[19523]["OptionHidden"] = 1

tNpcGossip[19523]["Text1-1"] = {111,112,113}
tNpcGossip[19523]["Text111"] = tOct_Mono_Revel_Text[19523]["Text111"]
tNpcGossip[19523]["Text112"] = tOct_Mono_Revel_Text[19523]["Text112"]
tNpcGossip[19523]["Text113"] = tOct_Mono_Revel_Text[19523]["Text113"]
tNpcGossip[19523]["tOption1-1"] = {11}

tNpcGossip[19523]["ChkFunc1-1"] = function ()
	if Sys_ChkFullTime(tOct_Mono_Revel_Time["Activity"]["Before"]) then
		return true
	else
		return false
	end
end
tNpcGossip[19523]["Option11"] = tOct_Mono_Revel_Text[19523]["Option11"]

tNpcGossip[19523]["Text1-2"] = {121,122,123,124}
tNpcGossip[19523]["Text121"] = tOct_Mono_Revel_Text[19523]["Text121"]
tNpcGossip[19523]["Text122"] = tOct_Mono_Revel_Text[19523]["Text122"]
tNpcGossip[19523]["Text123"] = tOct_Mono_Revel_Text[19523]["Text123"]
tNpcGossip[19523]["Text124"] = tOct_Mono_Revel_Text[19523]["Text124"]

tNpcGossip[19523]["ChkFunc1-2"] = function()
	return Oct_Mono_Revel_ChkRemainBuyTimes(19523)
end

tNpcGossip[19523]["Option1"] = tOct_Mono_Revel_Text[19523]["Option1"]
tNpcGossip[19523]["Option2"] = tOct_Mono_Revel_Text[19523]["Option2"]
tNpcGossip[19523]["Option3"] = tOct_Mono_Revel_Text[19523]["Option3"]
tNpcGossip[19523]["Option4"] = tOct_Mono_Revel_Text[19523]["Option4"]
tNpcGossip[19523]["Option5"] = tOct_Mono_Revel_Text[19523]["Option5"]
tNpcGossip[19523]["Option6"] = tOct_Mono_Revel_Text[19523]["Option6"]
tNpcGossip[19523]["Option7"] = tOct_Mono_Revel_Text[19523]["Option7"]
tNpcGossip[19523]["Option8"] = tOct_Mono_Revel_Text[19523]["Option8"]
tNpcGossip[19523]["Option9"] = tOct_Mono_Revel_Text[19523]["Option9"]
tNpcGossip[19523]["Option10"] = tOct_Mono_Revel_Text[19523]["Option10"]
tNpcGossip[19523]["OptionFunc1"] = "Oct_Mono_Revel_BuySomeThing</N>19523</N>3003124"
tNpcGossip[19523]["OptionFunc2"] = "Oct_Mono_Revel_BuySomeThing</N>19523</N>3009001"
tNpcGossip[19523]["OptionFunc3"] = "Oct_Mono_Revel_BuySomeThing</N>19523</N>730003"
tNpcGossip[19523]["OptionFunc4"] = "Oct_Mono_Revel_BuySomeThing</N>19523</N>1088000"
tNpcGossip[19523]["OptionFunc5"] = "Oct_Mono_Revel_BuySomeThing</N>19523</N>3300470"
tNpcGossip[19523]["OptionFunc6"] = "Oct_Mono_Revel_BuySomeThing</N>19523</N>3001036"
tNpcGossip[19523]["OptionFunc7"] = "Oct_Mono_Revel_BuySomeThing</N>19523</N>3003126"
tNpcGossip[19523]["OptionFunc8"] = "Oct_Mono_Revel_BuySomeThing</N>19523</N>723694"
tNpcGossip[19523]["OptionFunc9"] = "Oct_Mono_Revel_BuySomeThing</N>19523</N>1200005"

tNpcGossip[19523]["Text1-3"] = {131}
tNpcGossip[19523]["Text131"] = tOct_Mono_Revel_Text[19523]["Text131"]
tNpcGossip[19523]["tOption1-3"] = {12}

tNpcGossip[19523]["ChkFunc1-3"] = function ()
	if not (Sys_ChkFullTime(tOct_Mono_Revel_Time["Activity"]["Before"]) or Sys_ChkFullTime(tOct_Mono_Revel_Time["Activity"]["Ing"])) then
		return true
	else
		return false
	end
end

tNpcGossip[19523]["Option12"] = tOct_Mono_Revel_Text[19523]["Option12"]

tNpcGossip[19523]["Text1-4"] = {141}
tNpcGossip[19523]["Text141"] = tOct_Mono_Revel_Text[19523]["Text141"]
tNpcGossip[19523]["tOption1-4"] = {13,14}
tNpcGossip[19523]["Option13"] = tOct_Mono_Revel_Text[19523]["Option13"]
tNpcGossip[19523]["Option14"] = tOct_Mono_Revel_Text[19523]["Option10"]
tNpcGossip[19523]["OptionFunc13"] = "Oct_Mono_Revel_GotoShop</N>19523"

tNpcGossip[19523]["Text2-1"] = {211}
tNpcGossip[19523]["tOption2-1"] = {15,16,17}
tNpcGossip[19523]["Option15"] = tOct_Mono_Revel_Text[19523]["Option13"]
tNpcGossip[19523]["Option16"] = tOct_Mono_Revel_Text[19523]["Option16"]
tNpcGossip[19523]["Option17"] = tOct_Mono_Revel_Text[19523]["Option10"]
tNpcGossip[19523]["OptionFunc15"] = "Oct_Mono_Revel_GotoShop</N>19523"
tNpcGossip[19523]["OptionPoint16"]="1-2"

tNpcGossip[19523]["Text2-2"] = {221}
tNpcGossip[19523]["Text221"] = tOct_Mono_Revel_Text[19523]["Text221"]
tNpcGossip[19523]["tOption2-2"] = {18}
tNpcGossip[19523]["Option18"] = tOct_Mono_Revel_Text[19523]["Option18"]

tNpcGossip[19523]["Text2-3"] = {231}
tNpcGossip[19523]["Text231"] = tOct_Mono_Revel_Text[19523]["Text231"]
tNpcGossip[19523]["tOption2-3"] = {19}
tNpcGossip[19523]["Option19"] = tOct_Mono_Revel_Text[19523]["Option19"]

tNpcGossip[19523]["Text2-4"] = {241}
tNpcGossip[19523]["Text241"] = tOct_Mono_Revel_Text[19523]["Text241"]
tNpcGossip[19523]["tOption2-4"] = {20}
tNpcGossip[19523]["Option20"] = tOct_Mono_Revel_Text[19523]["Option20"]

tNpcGossip[19523]["Text3-1"] = {311,312}
tNpcGossip[19523]["tOption3-1"] = {21,22}
tNpcGossip[19523]["Option21"] = tOct_Mono_Revel_Text[19523]["Option21"]
tNpcGossip[19523]["Option22"] = tOct_Mono_Revel_Text[19523]["Option16"]
tNpcGossip[19523]["OptionPoint22"]="1-2"

--二号赠品促销商
tNpcFace[4367] =22
tNpcGossip[19524] = tNpcGossip[19524] or DefaultNpc:new{}
tNpcGossip[19524]["OptionHidden"] = 1

tNpcGossip[19524]["Text1-1"] = {111,112,113}
tNpcGossip[19524]["Text111"] = tOct_Mono_Revel_Text[19524]["Text111"]
tNpcGossip[19524]["Text112"] = tOct_Mono_Revel_Text[19524]["Text112"]
tNpcGossip[19524]["Text113"] = tOct_Mono_Revel_Text[19524]["Text113"]
tNpcGossip[19524]["tOption1-1"] = {11}

tNpcGossip[19524]["ChkFunc1-1"] = function ()
	if Sys_ChkFullTime(tOct_Mono_Revel_Time["Activity"]["Before"]) then
		return true
	else
		return false
	end
end
tNpcGossip[19524]["Option11"] = tOct_Mono_Revel_Text[19524]["Option11"]

tNpcGossip[19524]["Text1-2"] = {121,122,123,124}
tNpcGossip[19524]["Text121"] = tOct_Mono_Revel_Text[19524]["Text121"]
tNpcGossip[19524]["Text122"] = tOct_Mono_Revel_Text[19524]["Text122"]
tNpcGossip[19524]["Text123"] = tOct_Mono_Revel_Text[19524]["Text123"]
tNpcGossip[19524]["Text124"] = tOct_Mono_Revel_Text[19524]["Text124"]

tNpcGossip[19524]["ChkFunc1-2"] = function()
	return Oct_Mono_Revel_ChkRemainBuyTimes(19524)
end

tNpcGossip[19524]["Option1"] = tOct_Mono_Revel_Text[19524]["Option1"]
tNpcGossip[19524]["Option2"] = tOct_Mono_Revel_Text[19524]["Option2"]
tNpcGossip[19524]["Option3"] = tOct_Mono_Revel_Text[19524]["Option3"]
tNpcGossip[19524]["Option4"] = tOct_Mono_Revel_Text[19524]["Option4"]
tNpcGossip[19524]["Option5"] = tOct_Mono_Revel_Text[19524]["Option5"]
tNpcGossip[19524]["Option6"] = tOct_Mono_Revel_Text[19524]["Option6"]
tNpcGossip[19524]["Option7"] = tOct_Mono_Revel_Text[19524]["Option7"]
tNpcGossip[19524]["Option8"] = tOct_Mono_Revel_Text[19524]["Option8"]
tNpcGossip[19524]["Option9"] = tOct_Mono_Revel_Text[19524]["Option9"]
tNpcGossip[19524]["Option10"] = tOct_Mono_Revel_Text[19524]["Option10"]
tNpcGossip[19524]["OptionFunc1"] = "Oct_Mono_Revel_BuySomeThing</N>19524</N>3003124"
tNpcGossip[19524]["OptionFunc2"] = "Oct_Mono_Revel_BuySomeThing</N>19524</N>3009001"
tNpcGossip[19524]["OptionFunc3"] = "Oct_Mono_Revel_BuySomeThing</N>19524</N>730003"
tNpcGossip[19524]["OptionFunc4"] = "Oct_Mono_Revel_BuySomeThing</N>19524</N>1088000"
tNpcGossip[19524]["OptionFunc5"] = "Oct_Mono_Revel_BuySomeThing</N>19524</N>3300470"
tNpcGossip[19524]["OptionFunc6"] = "Oct_Mono_Revel_BuySomeThing</N>19524</N>3001036"
tNpcGossip[19524]["OptionFunc7"] = "Oct_Mono_Revel_BuySomeThing</N>19524</N>3003126"
tNpcGossip[19524]["OptionFunc8"] = "Oct_Mono_Revel_BuySomeThing</N>19524</N>723694"
tNpcGossip[19524]["OptionFunc9"] = "Oct_Mono_Revel_BuySomeThing</N>19524</N>1200005"

tNpcGossip[19524]["Text1-3"] = {131}
tNpcGossip[19524]["Text131"] = tOct_Mono_Revel_Text[19524]["Text131"]
tNpcGossip[19524]["tOption1-3"] = {12}

tNpcGossip[19524]["ChkFunc1-3"] = function ()
	if not (Sys_ChkFullTime(tOct_Mono_Revel_Time["Activity"]["Before"]) or Sys_ChkFullTime(tOct_Mono_Revel_Time["Activity"]["Ing"])) then
		return true
	else
		return false
	end
end

tNpcGossip[19524]["Option12"] = tOct_Mono_Revel_Text[19524]["Option12"]

tNpcGossip[19524]["Text1-4"] = {141}
tNpcGossip[19524]["Text141"] = tOct_Mono_Revel_Text[19524]["Text141"]
tNpcGossip[19524]["tOption1-4"] = {13,14}
tNpcGossip[19524]["Option13"] = tOct_Mono_Revel_Text[19524]["Option13"]
tNpcGossip[19524]["Option14"] = tOct_Mono_Revel_Text[19524]["Option10"]
tNpcGossip[19524]["OptionFunc13"] = "Oct_Mono_Revel_GotoShop</N>19524"

tNpcGossip[19524]["Text2-1"] = {211}
tNpcGossip[19524]["tOption2-1"] = {15,16,17}
tNpcGossip[19524]["Option15"] = tOct_Mono_Revel_Text[19524]["Option13"]
tNpcGossip[19524]["Option16"] = tOct_Mono_Revel_Text[19524]["Option16"]
tNpcGossip[19524]["Option17"] = tOct_Mono_Revel_Text[19524]["Option10"]
tNpcGossip[19524]["OptionFunc15"] = "Oct_Mono_Revel_GotoShop</N>19524"
tNpcGossip[19524]["OptionPoint16"]="1-2"

tNpcGossip[19524]["Text2-2"] = {221}
tNpcGossip[19524]["Text221"] = tOct_Mono_Revel_Text[19524]["Text221"]
tNpcGossip[19524]["tOption2-2"] = {18}
tNpcGossip[19524]["Option18"] = tOct_Mono_Revel_Text[19524]["Option18"]

tNpcGossip[19524]["Text2-3"] = {231}
tNpcGossip[19524]["Text231"] = tOct_Mono_Revel_Text[19524]["Text231"]
tNpcGossip[19524]["tOption2-3"] = {19}
tNpcGossip[19524]["Option19"] = tOct_Mono_Revel_Text[19524]["Option19"]

tNpcGossip[19524]["Text2-4"] = {241}
tNpcGossip[19524]["Text241"] = tOct_Mono_Revel_Text[19524]["Text241"]
tNpcGossip[19524]["tOption2-4"] = {20}
tNpcGossip[19524]["Option20"] = tOct_Mono_Revel_Text[19524]["Option20"]

tNpcGossip[19524]["Text2-5"] = {251}
tNpcGossip[19524]["tOption2-5"] = {23,24,25}
tNpcGossip[19524]["Option23"] = tOct_Mono_Revel_Text[19524]["Option23"]
tNpcGossip[19524]["Option24"] = tOct_Mono_Revel_Text[19524]["Option16"]
tNpcGossip[19524]["Option25"] = tOct_Mono_Revel_Text[19524]["Option10"]
tNpcGossip[19524]["OptionFunc23"] = "Oct_Mono_Revel_GotoShop</N>19522"
tNpcGossip[19524]["OptionPoint24"]="1-2"

tNpcGossip[19524]["Text3-1"] = {311,312}
tNpcGossip[19524]["tOption3-1"] = {21,22}
tNpcGossip[19524]["Option21"] = tOct_Mono_Revel_Text[19524]["Option21"]
tNpcGossip[19524]["Option22"] = tOct_Mono_Revel_Text[19524]["Option16"]
tNpcGossip[19524]["OptionPoint22"]="1-2"

--三号赠品促销商
tNpcFace[4368] =28
tNpcGossip[19525] = tNpcGossip[19525] or DefaultNpc:new{}
tNpcGossip[19525]["OptionHidden"] = 1

tNpcGossip[19525]["Text1-1"] = {111,112,113,114}
tNpcGossip[19525]["Text111"] = tOct_Mono_Revel_Text[19525]["Text111"]
tNpcGossip[19525]["Text112"] = tOct_Mono_Revel_Text[19525]["Text112"]
tNpcGossip[19525]["Text113"] = tOct_Mono_Revel_Text[19525]["Text113"]
tNpcGossip[19525]["Text114"] = tOct_Mono_Revel_Text[19525]["Text114"]
tNpcGossip[19525]["tOption1-1"] = {11}

tNpcGossip[19525]["ChkFunc1-1"] = function ()
	if Sys_ChkFullTime(tOct_Mono_Revel_Time["Activity"]["Before"]) then
		return true
	else
		return false
	end
end
tNpcGossip[19525]["Option11"] = tOct_Mono_Revel_Text[19525]["Option11"]

tNpcGossip[19525]["Text1-2"] = {121,122,123}
tNpcGossip[19525]["Text121"] = tOct_Mono_Revel_Text[19525]["Text121"]
tNpcGossip[19525]["Text122"] = tOct_Mono_Revel_Text[19525]["Text122"]
tNpcGossip[19525]["Text123"] = tOct_Mono_Revel_Text[19525]["Text123"]

tNpcGossip[19525]["ChkFunc1-2"] = function()
	return Oct_Mono_Revel_ChkRemainBuyTimes(19525)
end

tNpcGossip[19525]["Option1"] = tOct_Mono_Revel_Text[19525]["Option1"]
tNpcGossip[19525]["Option2"] = tOct_Mono_Revel_Text[19525]["Option2"]
tNpcGossip[19525]["Option3"] = tOct_Mono_Revel_Text[19525]["Option3"]
tNpcGossip[19525]["Option4"] = tOct_Mono_Revel_Text[19525]["Option4"]
tNpcGossip[19525]["Option5"] = tOct_Mono_Revel_Text[19525]["Option5"]
tNpcGossip[19525]["Option6"] = tOct_Mono_Revel_Text[19525]["Option6"]
tNpcGossip[19525]["Option7"] = tOct_Mono_Revel_Text[19525]["Option7"]
tNpcGossip[19525]["Option8"] = tOct_Mono_Revel_Text[19525]["Option8"]
tNpcGossip[19525]["Option9"] = tOct_Mono_Revel_Text[19525]["Option9"]
tNpcGossip[19525]["Option10"] = tOct_Mono_Revel_Text[19525]["Option10"]
tNpcGossip[19525]["OptionFunc1"] = "Oct_Mono_Revel_BuySomeThing</N>19525</N>3003124"
tNpcGossip[19525]["OptionFunc2"] = "Oct_Mono_Revel_BuySomeThing</N>19525</N>3009001"
tNpcGossip[19525]["OptionFunc3"] = "Oct_Mono_Revel_BuySomeThing</N>19525</N>730003"
tNpcGossip[19525]["OptionFunc4"] = "Oct_Mono_Revel_BuySomeThing</N>19525</N>1088000"
tNpcGossip[19525]["OptionFunc5"] = "Oct_Mono_Revel_BuySomeThing</N>19525</N>3300470"
tNpcGossip[19525]["OptionFunc6"] = "Oct_Mono_Revel_BuySomeThing</N>19525</N>3001036"
tNpcGossip[19525]["OptionFunc7"] = "Oct_Mono_Revel_BuySomeThing</N>19525</N>3003126"
tNpcGossip[19525]["OptionFunc8"] = "Oct_Mono_Revel_BuySomeThing</N>19525</N>723694"
tNpcGossip[19525]["OptionFunc9"] = "Oct_Mono_Revel_BuySomeThing</N>19525</N>1200005"

tNpcGossip[19525]["Text1-3"] = {131}
tNpcGossip[19525]["Text131"] = tOct_Mono_Revel_Text[19525]["Text131"]
tNpcGossip[19525]["tOption1-3"] = {12}

tNpcGossip[19525]["ChkFunc1-3"] = function ()
	if not (Sys_ChkFullTime(tOct_Mono_Revel_Time["Activity"]["Before"]) or Sys_ChkFullTime(tOct_Mono_Revel_Time["Activity"]["Ing"])) then
		return true
	else
		return false
	end
end

tNpcGossip[19525]["Option12"] = tOct_Mono_Revel_Text[19525]["Option12"]

tNpcGossip[19525]["Text1-4"] = {141}
tNpcGossip[19525]["Text141"] = tOct_Mono_Revel_Text[19525]["Text141"]
tNpcGossip[19525]["tOption1-4"] = {13}
tNpcGossip[19525]["Option13"] = tOct_Mono_Revel_Text[19525]["Option13"]

tNpcGossip[19525]["Text2-1"] = {211}
tNpcGossip[19525]["tOption2-1"] = {15}
tNpcGossip[19525]["Option15"] = tOct_Mono_Revel_Text[19525]["Option20"]

tNpcGossip[19525]["Text2-2"] = {221}
tNpcGossip[19525]["Text221"] = tOct_Mono_Revel_Text[19525]["Text221"]
tNpcGossip[19525]["tOption2-2"] = {18}
tNpcGossip[19525]["Option18"] = tOct_Mono_Revel_Text[19525]["Option18"]

tNpcGossip[19525]["Text2-3"] = {231}
tNpcGossip[19525]["Text231"] = tOct_Mono_Revel_Text[19525]["Text231"]
tNpcGossip[19525]["tOption2-3"] = {19}
tNpcGossip[19525]["Option19"] = tOct_Mono_Revel_Text[19525]["Option19"]

tNpcGossip[19525]["Text2-4"] = {241}
tNpcGossip[19525]["Text241"] = tOct_Mono_Revel_Text[19525]["Text241"]
tNpcGossip[19525]["tOption2-4"] = {20}
tNpcGossip[19525]["Option20"] = tOct_Mono_Revel_Text[19525]["Option20"]

tNpcGossip[19525]["Text2-5"] = {251}
tNpcGossip[19525]["tOption2-5"] = {23,24,25}
tNpcGossip[19525]["Option23"] = tOct_Mono_Revel_Text[19525]["Option23"]
tNpcGossip[19525]["Option24"] = tOct_Mono_Revel_Text[19525]["Option16"]
tNpcGossip[19525]["Option25"] = tOct_Mono_Revel_Text[19525]["Option10"]
tNpcGossip[19525]["OptionFunc23"] = "Oct_Mono_Revel_GotoShop</N>19523"
tNpcGossip[19525]["OptionPoint24"]="1-2"

tNpcGossip[19525]["Text2-6"] = {261}
tNpcGossip[19525]["tOption2-6"] = {26,27,28}
tNpcGossip[19525]["Option26"] = tOct_Mono_Revel_Text[19525]["Option26"]
tNpcGossip[19525]["Option27"] = tOct_Mono_Revel_Text[19525]["Option16"]
tNpcGossip[19525]["Option28"] = tOct_Mono_Revel_Text[19525]["Option10"]
tNpcGossip[19525]["OptionFunc26"] = "Oct_Mono_Revel_GotoShop</N>19522"
tNpcGossip[19525]["OptionPoint27"]="1-2"

tNpcGossip[19525]["Text3-1"] = {311,312}
tNpcGossip[19525]["tOption3-1"] = {21,22}
tNpcGossip[19525]["Option21"] = tOct_Mono_Revel_Text[19525]["Option21"]
tNpcGossip[19525]["Option22"] = tOct_Mono_Revel_Text[19525]["Option16"]
tNpcGossip[19525]["OptionPoint22"]="1-2"

--------------------------------------物品模块--------------------------------------------
--10月赠品狂欢邀请函
tItem[3300714] = tItem[3300714] or {}
tItem[3300714]["tOption1-1"] = {1,2}
tItem[3300714]["Option2"] = tOct_Mono_Revel_Text[3300714]["Option2"]
