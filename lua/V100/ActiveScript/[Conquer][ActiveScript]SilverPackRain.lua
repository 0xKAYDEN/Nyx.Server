------------------------------------------------------------------------------------
--Name：	190725[英文征服][活动脚本]德州礼物雨
--Creator:	洪聪敏
--Created:	2019/07/25
------------------------------------------------------------------------------------
--命名前缀：SilverPackRain_
--logid：12001640
--luaini：41520

--STC：204,77 记录玩家每天打开礼盒数量

------------------------------------------------------------------------------------

	local tSilverPackRain_Cont = {}
	tSilverPackRain_Cont["GlobalId"] = 53525
	
	--刷新金币地点
	tSilverPackRain_Cont["DroItem"] = {}
	tSilverPackRain_Cont["DroItem"]["MapId"] = 3053
	tSilverPackRain_Cont["DroItem"]["PosX"] = 206 
	tSilverPackRain_Cont["DroItem"]["PosY"] = 202 
	tSilverPackRain_Cont["DroItem"]["Cellx"] = 80
	tSilverPackRain_Cont["DroItem"]["Celly"] = 80
	tSilverPackRain_Cont["DroItem"]["ExistTime"] = 600
	--9月金币雨礼盒ID
	-- tSilverPackRain_Cont["ItemId"] = 3313761
	--11月门票雨礼盒ID
	tSilverPackRain_Cont["ItemId"] = 3314138
	tSilverPackRain_Cont["DroNum"] = 100
	
	tSilverPackRain_Cont["CoinMax"] = 200000
	
	
	
	local tSilverPackRain_Stc = {}
	tSilverPackRain_Stc["EventType"] = 204
	tSilverPackRain_Stc["DataType"] =77
	
	
--全服邀请设置
local tSilverPackRain_Invite = {}
	tSilverPackRain_Invite["MapId"] = 3053
	tSilverPackRain_Invite["Activity_InviteId"] = 2
	tSilverPackRain_Invite["Invite_Lev"] = "level >= 1"
	--全服邀请任意8个点
	tSilverPackRain_Invite["Invite_Pos"] ={}
	tSilverPackRain_Invite["Invite_Pos"][1] = {}
	tSilverPackRain_Invite["Invite_Pos"][1]["X"] = 250
	tSilverPackRain_Invite["Invite_Pos"][1]["Y"] = 217
	tSilverPackRain_Invite["Invite_Pos"][2] = {}
	tSilverPackRain_Invite["Invite_Pos"][2]["X"] = 252
	tSilverPackRain_Invite["Invite_Pos"][2]["Y"] = 232
	tSilverPackRain_Invite["Invite_Pos"][3] = {}
	tSilverPackRain_Invite["Invite_Pos"][3]["X"] = 252
	tSilverPackRain_Invite["Invite_Pos"][3]["Y"] = 246
	tSilverPackRain_Invite["Invite_Pos"][4] = {}
	tSilverPackRain_Invite["Invite_Pos"][4]["X"] = 254
	tSilverPackRain_Invite["Invite_Pos"][4]["Y"] = 246
	tSilverPackRain_Invite["Invite_Pos"][5] = {}
	tSilverPackRain_Invite["Invite_Pos"][5]["X"] = 243
	tSilverPackRain_Invite["Invite_Pos"][5]["Y"] = 256
	tSilverPackRain_Invite["Invite_Pos"][6] = {}
	tSilverPackRain_Invite["Invite_Pos"][6]["X"] = 231
	tSilverPackRain_Invite["Invite_Pos"][6]["Y"] = 250
	tSilverPackRain_Invite["Invite_Pos"][7] = {}
	tSilverPackRain_Invite["Invite_Pos"][7]["X"] = 221
	tSilverPackRain_Invite["Invite_Pos"][7]["Y"] = 233
	tSilverPackRain_Invite["Invite_Pos"][8] = {}
	tSilverPackRain_Invite["Invite_Pos"][8]["X"] = 218
	tSilverPackRain_Invite["Invite_Pos"][8]["Y"] = 216
	--全服邀请对白
	tSilverPackRain_Invite["InviteSendId"] = 10598
	tSilverPackRain_Invite["InviteSendOkId"] = 10599
	--全服邀请倒计时
	tSilverPackRain_Invite["InviteCountDown"] = 30
	
	
local tSilverPackRain_Reward = {}
	-- ===金币礼包
	-- ===索引: tSilverPackRain_Reward[3313761][1]
	-- ===LogStep: 1[1]
	tSilverPackRain_Reward[3313761] = {}
	tSilverPackRain_Reward[3313761][1] = {}
	tSilverPackRain_Reward[3313761][1]["ItemChanceSum"] = 10000
	tSilverPackRain_Reward[3313761][1]["LogId"] = 12001640
	tSilverPackRain_Reward[3313761][1]["LogStep"] = " 1[1]"
	-- 1W金币 - 30.00%
	tSilverPackRain_Reward[3313761][1][1] = {}
	tSilverPackRain_Reward[3313761][1][1]["RandomItemChanceType"] = 2
	tSilverPackRain_Reward[3313761][1][1]["ItemChance"] = 3000
	tSilverPackRain_Reward[3313761][1][1]["RewardMoney"] = {}
	tSilverPackRain_Reward[3313761][1][1]["RewardMoney"]["Value"] = 10000 -- 金币, 【需求】1W金币
	tSilverPackRain_Reward[3313761][1][1]["EmoneyLog"] = "350	22531	0	0	1	"
	tSilverPackRain_Reward[3313761][1][1]["RewardEffect"] = {}
	tSilverPackRain_Reward[3313761][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSilverPackRain_Reward[3313761][1][1]["RewardEffect"]["Effect"] = "angelwing"
	tSilverPackRain_Reward[3313761][1][1]["Broadcast"] = 0
	-- 2W金币 - 25.00%
	tSilverPackRain_Reward[3313761][1][2] = {}
	tSilverPackRain_Reward[3313761][1][2]["RandomItemChanceType"] = 2
	tSilverPackRain_Reward[3313761][1][2]["ItemChance"] = 2500
	tSilverPackRain_Reward[3313761][1][2]["RewardMoney"] = {}
	tSilverPackRain_Reward[3313761][1][2]["RewardMoney"]["Value"] = 20000 -- 金币, 【需求】2W金币
	tSilverPackRain_Reward[3313761][1][2]["EmoneyLog"] = "350	22532	0	0	1	"
	tSilverPackRain_Reward[3313761][1][2]["RewardEffect"] = {}
	tSilverPackRain_Reward[3313761][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSilverPackRain_Reward[3313761][1][2]["RewardEffect"]["Effect"] = "angelwing"
	tSilverPackRain_Reward[3313761][1][2]["Broadcast"] = 0
	
	-- 5W金币 - 20.00%
	tSilverPackRain_Reward[3313761][1][3] = {}
	tSilverPackRain_Reward[3313761][1][3]["RandomItemChanceType"] = 2
	tSilverPackRain_Reward[3313761][1][3]["ItemChance"] = 2000
	tSilverPackRain_Reward[3313761][1][3]["RewardMoney"] = {}
	tSilverPackRain_Reward[3313761][1][3]["RewardMoney"]["Value"] = 50000 -- 金币, 【需求】5W金币
	tSilverPackRain_Reward[3313761][1][3]["EmoneyLog"] = "350	22533	0	0	1	"
	tSilverPackRain_Reward[3313761][1][3]["RewardEffect"] = {}
	tSilverPackRain_Reward[3313761][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSilverPackRain_Reward[3313761][1][3]["RewardEffect"]["Effect"] = "angelwing"
	tSilverPackRain_Reward[3313761][1][3]["Broadcast"] = 0
	-- 10W金币 - 10.00%
	tSilverPackRain_Reward[3313761][1][4] = {}
	tSilverPackRain_Reward[3313761][1][4]["RandomItemChanceType"] = 2
	tSilverPackRain_Reward[3313761][1][4]["ItemChance"] = 1000
	tSilverPackRain_Reward[3313761][1][4]["RewardMoney"] = {}
	tSilverPackRain_Reward[3313761][1][4]["RewardMoney"]["Value"] = 100000 -- 金币, 【需求】10W金币
	tSilverPackRain_Reward[3313761][1][4]["EmoneyLog"] = "350	22534	0	0	1	"
	tSilverPackRain_Reward[3313761][1][4]["RewardEffect"] = {}
	tSilverPackRain_Reward[3313761][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSilverPackRain_Reward[3313761][1][4]["RewardEffect"]["Effect"] = "angelwing"
	tSilverPackRain_Reward[3313761][1][4]["Broadcast"] = 0
	
	-- 20W金币 - 5.00%
	tSilverPackRain_Reward[3313761][1][5] = {}
	tSilverPackRain_Reward[3313761][1][5]["RandomItemChanceType"] = 2
	tSilverPackRain_Reward[3313761][1][5]["ItemChance"] = 500
	tSilverPackRain_Reward[3313761][1][5]["RewardMoney"] = {}
	tSilverPackRain_Reward[3313761][1][5]["RewardMoney"]["Value"] = 200000 -- 金币, 【需求】20W金币
	tSilverPackRain_Reward[3313761][1][5]["EmoneyLog"] = "350	22535	0	0	1	"
	tSilverPackRain_Reward[3313761][1][5]["RewardEffect"] = {}
	tSilverPackRain_Reward[3313761][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSilverPackRain_Reward[3313761][1][5]["RewardEffect"]["Effect"] = "angelwing"
	tSilverPackRain_Reward[3313761][1][5]["Broadcast"] = tSilverPackRain_Text["BroadCast"][1]
	-- 10W锦标赛门票 - 10.00%
	tSilverPackRain_Reward[3313761][1][6] = {}
	tSilverPackRain_Reward[3313761][1][6]["RandomItemChanceType"] = 2
	tSilverPackRain_Reward[3313761][1][6]["ItemChance"] = 1000
	tSilverPackRain_Reward[3313761][1][6]["RewardItem"] = {}
	tSilverPackRain_Reward[3313761][1][6]["RewardItem"][1] = {}
	tSilverPackRain_Reward[3313761][1][6]["RewardItem"][1]["Id"] = 3307119 -- 【库】100KTicket[属性:9], 【表格】10W锦标赛门票
	tSilverPackRain_Reward[3313761][1][6]["RewardItem"][1]["Attr"] = "0 1" -- 100KTicket*1
	tSilverPackRain_Reward[3313761][1][6]["EmoneyLog"] = "350	22536	0	0	1	"
	tSilverPackRain_Reward[3313761][1][6]["RewardEffect"] = {}
	tSilverPackRain_Reward[3313761][1][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSilverPackRain_Reward[3313761][1][6]["RewardEffect"]["Effect"] = "angelwing"
	tSilverPackRain_Reward[3313761][1][6]["Broadcast"] = tSilverPackRain_Text["BroadCast"][2]

------------------------------------------------------
	-- ===金币门票礼包
	-- ===索引: tSilverPackRain_Reward[3314138][1]
	-- ===LogStep: 1[1]
	tSilverPackRain_Reward[3314138] = {}
	tSilverPackRain_Reward[3314138][1] = {}
	tSilverPackRain_Reward[3314138][1]["ItemChanceSum"] = 10000
	tSilverPackRain_Reward[3314138][1]["LogId"] = 12001640
	tSilverPackRain_Reward[3314138][1]["LogStep"] = " 1[1]"
	-- 1W金币 - 40%
	tSilverPackRain_Reward[3314138][1][1] = {}
	tSilverPackRain_Reward[3314138][1][1]["RandomItemChanceType"] = 2
	tSilverPackRain_Reward[3314138][1][1]["ItemChance"] = 4000
	tSilverPackRain_Reward[3314138][1][1]["RewardMoney"] = {}
	tSilverPackRain_Reward[3314138][1][1]["RewardMoney"]["Value"] = 10000 -- 金币, 【需求】1W金币
	tSilverPackRain_Reward[3314138][1][1]["EmoneyLog"] = "350	22531	0	0	1	"
	tSilverPackRain_Reward[3314138][1][1]["RewardEffect"] = {}
	tSilverPackRain_Reward[3314138][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSilverPackRain_Reward[3314138][1][1]["RewardEffect"]["Effect"] = "angelwing"
	tSilverPackRain_Reward[3314138][1][1]["Broadcast"] = 0
	-- 5W金币 - 25%
	tSilverPackRain_Reward[3314138][1][2] = {}
	tSilverPackRain_Reward[3314138][1][2]["RandomItemChanceType"] = 2
	tSilverPackRain_Reward[3314138][1][2]["ItemChance"] = 2500
	tSilverPackRain_Reward[3314138][1][2]["RewardMoney"] = {}
	tSilverPackRain_Reward[3314138][1][2]["RewardMoney"]["Value"] = 50000 -- 金币, 【需求】5W金币
	tSilverPackRain_Reward[3314138][1][2]["EmoneyLog"] = "350	22532	0	0	1	"
	tSilverPackRain_Reward[3314138][1][2]["RewardEffect"] = {}
	tSilverPackRain_Reward[3314138][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSilverPackRain_Reward[3314138][1][2]["RewardEffect"]["Effect"] = "angelwing"
	tSilverPackRain_Reward[3314138][1][2]["Broadcast"] = 0
	-- 10W金币 - 10%
	tSilverPackRain_Reward[3314138][1][3] = {}
	tSilverPackRain_Reward[3314138][1][3]["RandomItemChanceType"] = 2
	tSilverPackRain_Reward[3314138][1][3]["ItemChance"] = 1000
	tSilverPackRain_Reward[3314138][1][3]["RewardMoney"] = {}
	tSilverPackRain_Reward[3314138][1][3]["RewardMoney"]["Value"] = 100000 -- 金币, 【需求】10W金币
	tSilverPackRain_Reward[3314138][1][3]["EmoneyLog"] = "350	22533	0	0	1	"
	tSilverPackRain_Reward[3314138][1][3]["RewardEffect"] = {}
	tSilverPackRain_Reward[3314138][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSilverPackRain_Reward[3314138][1][3]["RewardEffect"]["Effect"] = "angelwing"
	tSilverPackRain_Reward[3314138][1][3]["Broadcast"] = 0
	-- 10W锦标赛门票 - 10%
	tSilverPackRain_Reward[3314138][1][4] = {}
	tSilverPackRain_Reward[3314138][1][4]["RandomItemChanceType"] = 2
	tSilverPackRain_Reward[3314138][1][4]["ItemChance"] = 1000
	tSilverPackRain_Reward[3314138][1][4]["RewardItem"] = {}
	tSilverPackRain_Reward[3314138][1][4]["RewardItem"][1] = {}
	tSilverPackRain_Reward[3314138][1][4]["RewardItem"][1]["Id"] = 3307119 -- 100KTicket[3307119][属性:9][叠加:0][金币:0], 【表格】10W锦标赛门票
	tSilverPackRain_Reward[3314138][1][4]["RewardItem"][1]["Attr"] = "0 1" -- 100KTicket*1
	tSilverPackRain_Reward[3314138][1][4]["EmoneyLog"] = "350	22534	0	0	1	"
	tSilverPackRain_Reward[3314138][1][4]["RewardEffect"] = {}
	tSilverPackRain_Reward[3314138][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSilverPackRain_Reward[3314138][1][4]["RewardEffect"]["Effect"] = "angelwing"
	tSilverPackRain_Reward[3314138][1][4]["Broadcast"] = tSilverPackRain_Text["BroadCast"][2]
	-- 50W锦标赛门票 - 10%
	tSilverPackRain_Reward[3314138][1][5] = {}
	tSilverPackRain_Reward[3314138][1][5]["RandomItemChanceType"] = 2
	tSilverPackRain_Reward[3314138][1][5]["ItemChance"] = 1000
	tSilverPackRain_Reward[3314138][1][5]["RewardItem"] = {}
	tSilverPackRain_Reward[3314138][1][5]["RewardItem"][1] = {}
	tSilverPackRain_Reward[3314138][1][5]["RewardItem"][1]["Id"] = 3307120 -- 500KTicket[3307120][属性:9][叠加:0][金币:0], 【表格】50W锦标赛门票
	tSilverPackRain_Reward[3314138][1][5]["RewardItem"][1]["Attr"] = "0 1" -- 500KTicket*1
	tSilverPackRain_Reward[3314138][1][5]["EmoneyLog"] = "350	22535	0	0	1	"
	tSilverPackRain_Reward[3314138][1][5]["RewardEffect"] = {}
	tSilverPackRain_Reward[3314138][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSilverPackRain_Reward[3314138][1][5]["RewardEffect"]["Effect"] = "angelwing"
	tSilverPackRain_Reward[3314138][1][5]["Broadcast"] = tSilverPackRain_Text["BroadCast"][3]
	-- 100W锦标赛门票 - 5%
	tSilverPackRain_Reward[3314138][1][6] = {}
	tSilverPackRain_Reward[3314138][1][6]["RandomItemChanceType"] = 2
	tSilverPackRain_Reward[3314138][1][6]["ItemChance"] = 500
	tSilverPackRain_Reward[3314138][1][6]["RewardItem"] = {}
	tSilverPackRain_Reward[3314138][1][6]["RewardItem"][1] = {}
	tSilverPackRain_Reward[3314138][1][6]["RewardItem"][1]["Id"] = 3307121 -- 1KKTicket[3307121][属性:9][叠加:0][金币:0], 【表格】100W锦标赛门票
	tSilverPackRain_Reward[3314138][1][6]["RewardItem"][1]["Attr"] = "0 1" -- 1KKTicket*1
	tSilverPackRain_Reward[3314138][1][6]["EmoneyLog"] = "350	22536	0	0	1	"
	tSilverPackRain_Reward[3314138][1][6]["RewardEffect"] = {}
	tSilverPackRain_Reward[3314138][1][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSilverPackRain_Reward[3314138][1][6]["RewardEffect"]["Effect"] = "angelwing"
	tSilverPackRain_Reward[3314138][1][6]["Broadcast"] = tSilverPackRain_Text["BroadCast"][4]

	local tSilverPackRain_Log = {}
	--删除物品log
	tSilverPackRain_Log["DelItem"] = "0,0,3313761,%d,12001640,2,0,0"
	--捡物品log
	tSilverPackRain_Log["PickItem"] = "350	22530	0	0	1	"
-----------------------------------------------------------------------------------------
--全服邀请
function SilverPackRain_Invite()
	local nGlobalId = tSilverPackRain_Cont["GlobalId"]
	local nServerData = Get_SysDynaGlobalData(nGlobalId,2)
	
	-- 时间外
	if not Sys_ChkFullTime(tActivityTime["SilverPackRain"]["ActivityTime"]) then
		return
	end
	
	--服务器标识  1:开金币雨 0：不开金币雨
	if nServerData <= 0 then
		return
	end
	
	
		-- 全服邀请
	local nMapId = tSilverPackRain_Invite["MapId"]
	local nInviteId = tSilverPackRain_Invite["Activity_InviteId"]
	local sInviteLev = tSilverPackRain_Invite["Invite_Lev"]
	local nStrSendInviteId = tSilverPackRain_Invite["InviteSendId"]
	local nStrTransOKId = tSilverPackRain_Invite["InviteSendOkId"]
	local nCloseSecs = tSilverPackRain_Invite["InviteCountDown"]
	
	Sys_InviteFilter(nInviteId,sInviteLev)
	Sys_InviteTrans(nMapId,tSilverPackRain_Invite["Invite_Pos"],nStrSendInviteId,nStrTransOKId,nInviteId,nCloseSecs)
end
--生成物品
function SilverPackRain_DropItem()
	-- 地图批量产生指定物品
	local nMapId = tSilverPackRain_Cont["DroItem"]["MapId"]
	local nPosX = tSilverPackRain_Cont["DroItem"]["PosX"]
	local nPosY = tSilverPackRain_Cont["DroItem"]["PosY"]
	local nCellx = tSilverPackRain_Cont["DroItem"]["Cellx"]
	local nCelly = tSilverPackRain_Cont["DroItem"]["Celly"]
	local nExistTime = tSilverPackRain_Cont["DroItem"]["ExistTime"]
	local nDroItemId = tSilverPackRain_Cont["ItemId"]
	local nDroItemNum = tSilverPackRain_Cont["DroNum"]

	local nGlobalId = tSilverPackRain_Cont["GlobalId"]
	local nServerData = Get_SysDynaGlobalData(nGlobalId,2)
	


	-- 时间外
	if not Sys_ChkFullTime(tActivityTime["SilverPackRain"]["ActivityTime"]) then
		return
	end

	--服务器标识  1:开金币雨 0：不开金币雨
	if nServerData <= 0 then
		return
	end
	
	
	
	Map_DropMultiItems(nMapId, nDroItemId, nPosX, nPosY, nCellx, nCelly, nDroItemNum, nExistTime)
	
end
--礼包打开
function SilverPackRain_OpenPack(nItemId)
	local nUserId = Get_UserId()
	local nEvent = tSilverPackRain_Stc["EventType"]
	local nType = tSilverPackRain_Stc["DataType"]
	local nNum = Get_CountItemType(nItemId,0)
	local sUserName = Get_UserName(nUserId)
	-- 时间外
	if not Sys_ChkFullTime(tActivityTime["SilverPackRain"]["ActivityTime"]) then
		if Item_ChkMulItem(nItemId,nItemId,nNum) and Item_DelMulItem(nItemId,nItemId,nNum) then
			Sys_MsgBox(tSilverPackRain_Text["TimeOut"],nil,nil,nUserId)
		end
		return
	end
	
	-- 金币上限
	local nBagMoneyNum = tSilverPackRain_Cont["CoinMax"]
	if not User_CanPutMoney2Bag(nBagMoneyNum,nUserId) then
		Sys_MsgBox(tRewardTemplate_Text["Money"])
		return
	end
	
	
	--隔天清零
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	end
	
	-- --打开超过3个
	if Task_ChkStcValue(nEvent,nType,">=",3,nUserId) then
		if Item_ChkMulItem(nItemId,nItemId,nNum) and Item_DelMulItem(nItemId,nItemId,nNum) then
			--打log
			local sLog = string.format(tSilverPackRain_Log["DelItem"],nNum)
			Sys_SaveActionFestivalLog(sLog)
			--出提示
			Sys_MsgBox(tSilverPackRain_Text["OpenLimit"],nil,nil,nUserId)
		end
	end
	
	--背包空间检查
	local nSpace = RewardTemplate_GetRandomSpace(tSilverPackRain_Reward[nItemId],1,nUserId)
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(string.format(tSilverPackRain_Text["NoSpace"],nSpace),nil,nil,nUserId)
		return
	end
	
	--打掩码，给奖励
	if Task_AddStatistic(nEvent,nType,1,1,nUserId) and Task_SetStcTimestamp(nEvent,nType,0,nUserId) then
		if Item_ChkMulItem(nItemId,nItemId,1) and Item_DelMulItem(nItemId,nItemId,1) then
			local tReward,sRewardStr = RewardTemplate_NewRandomNoTip(tSilverPackRain_Reward[nItemId],1,nUserId)
			if tReward[1]["tAward"][1]["Broadcast"] ~= nil and tReward[1]["tAward"][1]["Broadcast"] ~= 0 then
				Sys_SystemBroadcast(string.format(tReward[1]["tAward"][1]["Broadcast"],sUserName),nUserId)
			end
		end
	end
end
--捡物品触发
function SilverPackRain_PickMapItem(nUserId,nItemtypeId)
	-- 时间外
	if not Sys_ChkFullTime(tActivityTime["SilverPackRain"]["ActivityTime"]) then
		return
	end
	if nItemtypeId ~=nil and nItemtypeId == tSilverPackRain_Cont["ItemId"] then
		Sys_SaveEmoneyBuy(tSilverPackRain_Log["PickItem"],nUserId)
	end
end
----------------------------------------物品模板----------------------------------------

tItem[3313761]=tItem[3313761]or{}
tItem[3313761]["Function"]=function(nItemId,sItemName)
	SilverPackRain_OpenPack(nItemId)
end
tItem[3314138]=tItem[3313761]



----------------------------------------时间自检----------------------------------------

local tSilverPackRain_OnTime = {}
-- 固定时间，生成金币礼包
	tSilverPackRain_OnTime[1] = {}
	tSilverPackRain_OnTime[1]["ActivityTime"] = tActivityTime["SilverPackRain"]["ActivityTime"]
	tSilverPackRain_OnTime[1]["Type"] = 1
	tSilverPackRain_OnTime[1]["TimeType"] = 4
	tSilverPackRain_OnTime[1]["Multiple"] = {}
	tSilverPackRain_OnTime[1]["Multiple"][1]  = "11:00 11:00"
	tSilverPackRain_OnTime[1]["Multiple"][2]  = "11:10 11:10"
	tSilverPackRain_OnTime[1]["Multiple"][3]  = "11:20 11:20"
	tSilverPackRain_OnTime[1]["Multiple"][4]  = "11:30 11:30"
	tSilverPackRain_OnTime[1]["Multiple"][5]  = "11:40 11:40"
	tSilverPackRain_OnTime[1]["Multiple"][6]  = "12:00 12:00"
	tSilverPackRain_OnTime[1]["Multiple"][7]  = "12:10 12:10"
	tSilverPackRain_OnTime[1]["Multiple"][8]  = "12:20 12:20"
	tSilverPackRain_OnTime[1]["Multiple"][9]  = "12:30 12:30"
	tSilverPackRain_OnTime[1]["Multiple"][10] = "12:40 12:40"
	tSilverPackRain_OnTime[1]["Multiple"][11] = "13:00 13:00"
	tSilverPackRain_OnTime[1]["Multiple"][12] = "13:10 13:10"
	tSilverPackRain_OnTime[1]["Multiple"][13] = "13:20 13:20"
	tSilverPackRain_OnTime[1]["Multiple"][14] = "13:30 13:30"
	tSilverPackRain_OnTime[1]["Multiple"][15] = "13:40 13:40"
	tSilverPackRain_OnTime[1]["Func"] = SilverPackRain_DropItem
-- 美服时间10:59，11:59，12:59 全服邀请
	tSilverPackRain_OnTime[2] = {}
	tSilverPackRain_OnTime[2]["ActivityTime"] = tActivityTime["SilverPackRain"]["ActivityTime"]
	tSilverPackRain_OnTime[2]["Type"] = 1
	tSilverPackRain_OnTime[2]["TimeType"] = 4
	tSilverPackRain_OnTime[2]["Multiple"] = {}
	tSilverPackRain_OnTime[2]["Multiple"][1]  = "10:59 10:59"
	tSilverPackRain_OnTime[2]["Multiple"][2]  = "11:59 11:59"
	tSilverPackRain_OnTime[2]["Multiple"][3]  = "12:59 12:59"
	tSilverPackRain_OnTime[2]["Func"] = SilverPackRain_Invite


table.insert(tSystemTime_InitialData,tSilverPackRain_OnTime[1])
table.insert(tSystemTime_InitialData,tSilverPackRain_OnTime[2])


-------------------------------------------------------------------------------------------------------------
--捡物品触发
tPickMapItem["tFunction"] = tPickMapItem["tFunction"] or {}
table.insert(tPickMapItem["tFunction"],SilverPackRain_PickMapItem)
