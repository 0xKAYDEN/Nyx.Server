------------------------------------------------------------------------------------
--Name：            180110[英文征服][活动脚本]老玩家回归福利活动礼包及发奖action
--Creator:      杨艳
--Created:     2018-01-10
------------------------------------------------------------------------------------

--命名前缀
--OldPlayerWelfarePackage_

--掩码说明
-- 17195   	记录礼包 NormalReturningBox 打开的次数
-- 17196   	记录礼包 EliteReturningBox 打开的次数
-- 17197	记录礼包 LuxuryReturningBox 打开的次数
-- 17198	记录礼包 SupremeReturningBox 打开的次数

--logid： 12000978

-- 物品id
-- 3307128,'NormalReturningBox'
-- 3307129,'EliteReturningBox',
-- 3307130,'LuxuryReturningBox'
-- 3307131,'SupremeReturningBox


--emoneylogid
 -- 29天石打开300-1000分礼包 350 21064
 -- 39天石打开1001-3000分礼包 350 21065
 -- 59天石打开3001-35000分礼包 350 21066
 -- 99天石打开6500分以上礼包 350 21067

-------------------------------------------数据部分-----------------------------------------
--掩码说明  
local tOldPlayerWelfarePackage_Stc = {}
	tOldPlayerWelfarePackage_Stc[3307128] = {}
	tOldPlayerWelfarePackage_Stc[3307128]["EventData"] = 171
    tOldPlayerWelfarePackage_Stc[3307128]["DataType"] = 95

	tOldPlayerWelfarePackage_Stc[3307129] = {}
	tOldPlayerWelfarePackage_Stc[3307129]["EventData"] = 171
	tOldPlayerWelfarePackage_Stc[3307129]["DataType"] = 96
	
	tOldPlayerWelfarePackage_Stc[3307130] = {}
	tOldPlayerWelfarePackage_Stc[3307130]["EventData"] = 171
	tOldPlayerWelfarePackage_Stc[3307130]["DataType"] = 97

	tOldPlayerWelfarePackage_Stc[3307131] = {}
	tOldPlayerWelfarePackage_Stc[3307131]["EventData"] = 171
	tOldPlayerWelfarePackage_Stc[3307131]["DataType"] = 98

-- 奖励  
local tOldPlayerWelfarePackage_Award = {}
	
	-- 可选玫瑰风暴（1天）武器外套包 3307107  
	tOldPlayerWelfarePackage_Award[1] = {}
	
	-- 0-1000分
	tOldPlayerWelfarePackage_Award[1][3307128] = {}
	tOldPlayerWelfarePackage_Award[1][3307128]["Log"] = "0,0,0,0,12000978,2,3004582[3303399][3303400][3009000],1[1][1][5]"

	
	--500气力值
	tOldPlayerWelfarePackage_Award[1][3307128]["RewardItem"] = {}
	tOldPlayerWelfarePackage_Award[1][3307128]["RewardItem"][1] = {}
	tOldPlayerWelfarePackage_Award[1][3307128]["RewardItem"][1]["Id"] = 3004582
	tOldPlayerWelfarePackage_Award[1][3307128]["RewardItem"][1]["Attr"] = "0 1 3"
	
	--10颗强练丹赠
	tOldPlayerWelfarePackage_Award[1][3307128]["RewardItem"][2] = {}
	tOldPlayerWelfarePackage_Award[1][3307128]["RewardItem"][2]["Id"] = 3303399
	tOldPlayerWelfarePackage_Award[1][3307128]["RewardItem"][2]["Attr"] = "0 1 3"
	
	-- 10颗小爆丹赠
	tOldPlayerWelfarePackage_Award[1][3307128]["RewardItem"][3] = {}
	tOldPlayerWelfarePackage_Award[1][3307128]["RewardItem"][3]["Id"] = 3303400
	tOldPlayerWelfarePackage_Award[1][3307128]["RewardItem"][3]["Attr"] = "0 1 3"
	
	-- 微光星陨石赠*5
	tOldPlayerWelfarePackage_Award[1][3307128]["RewardItem"][4] = {}
	tOldPlayerWelfarePackage_Award[1][3307128]["RewardItem"][4]["Id"] = 3009000
	tOldPlayerWelfarePackage_Award[1][3307128]["RewardItem"][4]["Attr"] = "0 5 0 2880 1"
	
	
	--1001-3000分
	tOldPlayerWelfarePackage_Award[1][3307129] = {}
	tOldPlayerWelfarePackage_Award[1][3307129]["Log"] = "0,0,0,0,12000978,2,3004580[3001340][3303399][3008309][3009001],1[1][2][1][1]"

	
	--1000气力值
	tOldPlayerWelfarePackage_Award[1][3307129]["RewardItem"] = {}
	tOldPlayerWelfarePackage_Award[1][3307129]["RewardItem"][1] = {}
	tOldPlayerWelfarePackage_Award[1][3307129]["RewardItem"][1]["Id"] = 3004580
	tOldPlayerWelfarePackage_Award[1][3307129]["RewardItem"][1]["Attr"] = "0 1 3"
	
	--+2赤练石赠
	tOldPlayerWelfarePackage_Award[1][3307129]["RewardItem"][2] = {}
	tOldPlayerWelfarePackage_Award[1][3307129]["RewardItem"][2]["Id"] = 3001340
	tOldPlayerWelfarePackage_Award[1][3307129]["RewardItem"][2]["Attr"] = "0 1 3"
	
	-- 20颗强练丹赠
	tOldPlayerWelfarePackage_Award[1][3307129]["RewardItem"][3] = {}
	tOldPlayerWelfarePackage_Award[1][3307129]["RewardItem"][3]["Id"] = 3303399
	tOldPlayerWelfarePackage_Award[1][3307129]["RewardItem"][3]["Attr"] = "0 2 3"
	
	-- 10颗大爆丹赠
	tOldPlayerWelfarePackage_Award[1][3307129]["RewardItem"][4] = {}
	tOldPlayerWelfarePackage_Award[1][3307129]["RewardItem"][4]["Id"] = 3008309
	tOldPlayerWelfarePackage_Award[1][3307129]["RewardItem"][4]["Attr"] = "0 1 3"	
	
	-- 明亮星陨石赠*1
	tOldPlayerWelfarePackage_Award[1][3307129]["RewardItem"][5] = {}
	tOldPlayerWelfarePackage_Award[1][3307129]["RewardItem"][5]["Id"] = 3009001
	tOldPlayerWelfarePackage_Award[1][3307129]["RewardItem"][5]["Attr"] = "0 1 0 2880 1"	
	
	
	--3001-6500分
	tOldPlayerWelfarePackage_Award[1][3307130] = {}
	tOldPlayerWelfarePackage_Award[1][3307130]["Log"] = "0,0,0,0,12000978,2,3004580[3004582][3001340][3303399][3300723][3009001],1[1][1][3][1][2]"

	
	--1500气力值
	tOldPlayerWelfarePackage_Award[1][3307130]["RewardItem"] = {}
	tOldPlayerWelfarePackage_Award[1][3307130]["RewardItem"][1] = {}
	tOldPlayerWelfarePackage_Award[1][3307130]["RewardItem"][1]["Id"] = 3004580
	tOldPlayerWelfarePackage_Award[1][3307130]["RewardItem"][1]["Attr"] = "0 1 3"
	tOldPlayerWelfarePackage_Award[1][3307130]["RewardItem"][2] = {}
	tOldPlayerWelfarePackage_Award[1][3307130]["RewardItem"][2]["Id"] = 3004582
	tOldPlayerWelfarePackage_Award[1][3307130]["RewardItem"][2]["Attr"] = "0 1 3"
	
	--+2赤练石赠
	tOldPlayerWelfarePackage_Award[1][3307130]["RewardItem"][3] = {}
	tOldPlayerWelfarePackage_Award[1][3307130]["RewardItem"][3]["Id"] = 3001340
	tOldPlayerWelfarePackage_Award[1][3307130]["RewardItem"][3]["Attr"] = "0 1 3"
	
	-- 30颗强练丹赠
	tOldPlayerWelfarePackage_Award[1][3307130]["RewardItem"][4] = {}
	tOldPlayerWelfarePackage_Award[1][3307130]["RewardItem"][4]["Id"] = 3303399
	tOldPlayerWelfarePackage_Award[1][3307130]["RewardItem"][4]["Attr"] = "0 3 3"
	
	-- 30颗大爆丹赠
	tOldPlayerWelfarePackage_Award[1][3307130]["RewardItem"][5] = {}
	tOldPlayerWelfarePackage_Award[1][3307130]["RewardItem"][5]["Id"] = 3300723
	tOldPlayerWelfarePackage_Award[1][3307130]["RewardItem"][5]["Attr"] = "0 1 3"	
	
	-- 明亮星陨石赠*2
	tOldPlayerWelfarePackage_Award[1][3307130]["RewardItem"][6] = {}
	tOldPlayerWelfarePackage_Award[1][3307130]["RewardItem"][6]["Id"] = 3009001
	tOldPlayerWelfarePackage_Award[1][3307130]["RewardItem"][6]["Attr"] = "0 2 0 2880 1"	

	
	--6500分以上
	tOldPlayerWelfarePackage_Award[1][3307131] = {}
	tOldPlayerWelfarePackage_Award[1][3307131]["Log"] = "0,0,0,0,12000978,2,3306227[3100132][3303399][3304007][3009001],1[1][4][2][2]"

	
	--2500气力值
	tOldPlayerWelfarePackage_Award[1][3307131]["RewardItem"] = {}
	tOldPlayerWelfarePackage_Award[1][3307131]["RewardItem"][1] = {}
	tOldPlayerWelfarePackage_Award[1][3307131]["RewardItem"][1]["Id"] = 3306227
	tOldPlayerWelfarePackage_Award[1][3307131]["RewardItem"][1]["Attr"] = "0 1 3"
	
	--+2赤练石赠*2
	tOldPlayerWelfarePackage_Award[1][3307131]["RewardItem"][2] = {}
	tOldPlayerWelfarePackage_Award[1][3307131]["RewardItem"][2]["Id"] = 3100132
	tOldPlayerWelfarePackage_Award[1][3307131]["RewardItem"][2]["Attr"] = "0 1 3"
	
	-- 40颗强练丹赠
	tOldPlayerWelfarePackage_Award[1][3307131]["RewardItem"][3] = {}
	tOldPlayerWelfarePackage_Award[1][3307131]["RewardItem"][3]["Id"] = 3303399
	tOldPlayerWelfarePackage_Award[1][3307131]["RewardItem"][3]["Attr"] = "0 4 3"
	
	-- 40颗大爆丹赠
	tOldPlayerWelfarePackage_Award[1][3307131]["RewardItem"][4] = {}
	tOldPlayerWelfarePackage_Award[1][3307131]["RewardItem"][4]["Id"] = 3304007
	tOldPlayerWelfarePackage_Award[1][3307131]["RewardItem"][4]["Attr"] = "0 2 3"	
	
	-- 明亮星陨石赠*2
	tOldPlayerWelfarePackage_Award[1][3307131]["RewardItem"][5] = {}
	tOldPlayerWelfarePackage_Award[1][3307131]["RewardItem"][5]["Id"] = 3009001
	tOldPlayerWelfarePackage_Award[1][3307131]["RewardItem"][5]["Attr"] = "0 2 0 2880 1"	

	
	
	-- 支付天石获得双倍奖励 
	tOldPlayerWelfarePackage_Award[2] = {}
	
	-- 0-1000分
	tOldPlayerWelfarePackage_Award[2][3307128] = {}
	--支付29天石奖励两倍

	tOldPlayerWelfarePackage_Award[2][3307128]["Log"] = "29,0,0,0,12000978,2,3004582[3303399][3303400][3009000],2[2][2][10]"

	
	--500气力值
	tOldPlayerWelfarePackage_Award[2][3307128]["RewardItem"] = {}
	tOldPlayerWelfarePackage_Award[2][3307128]["RewardItem"][1] = {}
	tOldPlayerWelfarePackage_Award[2][3307128]["RewardItem"][1]["Id"] = 3004582
	tOldPlayerWelfarePackage_Award[2][3307128]["RewardItem"][1]["Attr"] = "0 2 3"
	
	--10颗强练丹赠
	tOldPlayerWelfarePackage_Award[2][3307128]["RewardItem"][2] = {}
	tOldPlayerWelfarePackage_Award[2][3307128]["RewardItem"][2]["Id"] = 3303399
	tOldPlayerWelfarePackage_Award[2][3307128]["RewardItem"][2]["Attr"] = "0 2 3"
	
	-- 10颗小爆丹赠
	tOldPlayerWelfarePackage_Award[2][3307128]["RewardItem"][3] = {}
	tOldPlayerWelfarePackage_Award[2][3307128]["RewardItem"][3]["Id"] = 3303400
	tOldPlayerWelfarePackage_Award[2][3307128]["RewardItem"][3]["Attr"] = "0 2 3"
	
	-- 微光星陨石赠*5
	tOldPlayerWelfarePackage_Award[2][3307128]["RewardItem"][4] = {}
	tOldPlayerWelfarePackage_Award[2][3307128]["RewardItem"][4]["Id"] = 3009000
	tOldPlayerWelfarePackage_Award[2][3307128]["RewardItem"][4]["Attr"] = "0 10 0 2880 1"
	
	
	--1001-3000分
	tOldPlayerWelfarePackage_Award[2][3307129] = {}
	tOldPlayerWelfarePackage_Award[2][3307129]["Log"] = "39,0,0,0,12000978,2,3004580[3001340][3303399][3008309][3009001],2[2][4][2][2]"

	
	--1000气力值
	tOldPlayerWelfarePackage_Award[2][3307129]["RewardItem"] = {}
	tOldPlayerWelfarePackage_Award[2][3307129]["RewardItem"][1] = {}
	tOldPlayerWelfarePackage_Award[2][3307129]["RewardItem"][1]["Id"] = 3004580
	tOldPlayerWelfarePackage_Award[2][3307129]["RewardItem"][1]["Attr"] = "0 2 3"
	
	--+2赤练石赠
	tOldPlayerWelfarePackage_Award[2][3307129]["RewardItem"][2] = {}
	tOldPlayerWelfarePackage_Award[2][3307129]["RewardItem"][2]["Id"] = 3001340
	tOldPlayerWelfarePackage_Award[2][3307129]["RewardItem"][2]["Attr"] = "0 2 3"
	
	-- 20颗强练丹赠
	tOldPlayerWelfarePackage_Award[2][3307129]["RewardItem"][3] = {}
	tOldPlayerWelfarePackage_Award[2][3307129]["RewardItem"][3]["Id"] = 3303399
	tOldPlayerWelfarePackage_Award[2][3307129]["RewardItem"][3]["Attr"] = "0 4 3"
	
	-- 10颗大爆丹赠
	tOldPlayerWelfarePackage_Award[2][3307129]["RewardItem"][4] = {}
	tOldPlayerWelfarePackage_Award[2][3307129]["RewardItem"][4]["Id"] = 3008309
	tOldPlayerWelfarePackage_Award[2][3307129]["RewardItem"][4]["Attr"] = "0 2 3"	
	
	-- 明亮星陨石赠*1
	tOldPlayerWelfarePackage_Award[2][3307129]["RewardItem"][5] = {}
	tOldPlayerWelfarePackage_Award[2][3307129]["RewardItem"][5]["Id"] = 3009001
	tOldPlayerWelfarePackage_Award[2][3307129]["RewardItem"][5]["Attr"] = "0 2 0 2880 1"	
	
	
	--3001-6500分
	tOldPlayerWelfarePackage_Award[2][3307130] = {}
	tOldPlayerWelfarePackage_Award[2][3307130]["Log"] = "59,0,0,0,12000978,2,3004580[3004582][3001340][3303399][3300723][3009001],2[2][2][6][2][4]"

	
	--1500气力值
	tOldPlayerWelfarePackage_Award[2][3307130]["RewardItem"] = {}
	tOldPlayerWelfarePackage_Award[2][3307130]["RewardItem"][1] = {}
	tOldPlayerWelfarePackage_Award[2][3307130]["RewardItem"][1]["Id"] = 3004580
	tOldPlayerWelfarePackage_Award[2][3307130]["RewardItem"][1]["Attr"] = "0 2 3"
	tOldPlayerWelfarePackage_Award[2][3307130]["RewardItem"][2] = {}
	tOldPlayerWelfarePackage_Award[2][3307130]["RewardItem"][2]["Id"] = 3004582
	tOldPlayerWelfarePackage_Award[2][3307130]["RewardItem"][2]["Attr"] = "0 2 3"
	
	--+2赤练石赠
	tOldPlayerWelfarePackage_Award[2][3307130]["RewardItem"][3] = {}
	tOldPlayerWelfarePackage_Award[2][3307130]["RewardItem"][3]["Id"] = 3001340
	tOldPlayerWelfarePackage_Award[2][3307130]["RewardItem"][3]["Attr"] = "0 2 3"
	
	-- 30颗强练丹赠
	tOldPlayerWelfarePackage_Award[2][3307130]["RewardItem"][4] = {}
	tOldPlayerWelfarePackage_Award[2][3307130]["RewardItem"][4]["Id"] = 3303399
	tOldPlayerWelfarePackage_Award[2][3307130]["RewardItem"][4]["Attr"] = "0 6 3"
	
	-- 30颗大爆丹赠
	tOldPlayerWelfarePackage_Award[2][3307130]["RewardItem"][5] = {}
	tOldPlayerWelfarePackage_Award[2][3307130]["RewardItem"][5]["Id"] = 3300723
	tOldPlayerWelfarePackage_Award[2][3307130]["RewardItem"][5]["Attr"] = "0 2 3"	
	
	-- 明亮星陨石赠*2
	tOldPlayerWelfarePackage_Award[2][3307130]["RewardItem"][6] = {}
	tOldPlayerWelfarePackage_Award[2][3307130]["RewardItem"][6]["Id"] = 3009001
	tOldPlayerWelfarePackage_Award[2][3307130]["RewardItem"][6]["Attr"] = "0 4 0 2880 1"	

	
	--6500分以上
	tOldPlayerWelfarePackage_Award[2][3307131] = {}
	tOldPlayerWelfarePackage_Award[2][3307131]["Log"] = "99,0,0,0,12000978,2,3306227[3100132][3303399][3304007][3009001],2[2][8][4][4]"


	
	--2500气力值
	tOldPlayerWelfarePackage_Award[2][3307131]["RewardItem"] = {}
	tOldPlayerWelfarePackage_Award[2][3307131]["RewardItem"][1] = {}
	tOldPlayerWelfarePackage_Award[2][3307131]["RewardItem"][1]["Id"] = 3306227
	tOldPlayerWelfarePackage_Award[2][3307131]["RewardItem"][1]["Attr"] = "0 2 3"
	
	--+2赤练石赠*2
	tOldPlayerWelfarePackage_Award[2][3307131]["RewardItem"][2] = {}
	tOldPlayerWelfarePackage_Award[2][3307131]["RewardItem"][2]["Id"] = 3100132
	tOldPlayerWelfarePackage_Award[2][3307131]["RewardItem"][2]["Attr"] = "0 2 3"
	
	-- 40颗强练丹赠
	tOldPlayerWelfarePackage_Award[2][3307131]["RewardItem"][3] = {}
	tOldPlayerWelfarePackage_Award[2][3307131]["RewardItem"][3]["Id"] = 3303399
	tOldPlayerWelfarePackage_Award[2][3307131]["RewardItem"][3]["Attr"] = "0 8 3"
	
	-- 40颗大爆丹赠
	tOldPlayerWelfarePackage_Award[2][3307131]["RewardItem"][4] = {}
	tOldPlayerWelfarePackage_Award[2][3307131]["RewardItem"][4]["Id"] = 3304007
	tOldPlayerWelfarePackage_Award[2][3307131]["RewardItem"][4]["Attr"] = "0 4 3"	
	
	-- 明亮星陨石赠*2
	tOldPlayerWelfarePackage_Award[2][3307131]["RewardItem"][5] = {}
	tOldPlayerWelfarePackage_Award[2][3307131]["RewardItem"][5]["Id"] = 3009001
	tOldPlayerWelfarePackage_Award[2][3307131]["RewardItem"][5]["Attr"] = "0 4 0 2880 1"	

	
--玩家消耗天石数量
local tOldPlayerWelfarePackage_Money = {}
	tOldPlayerWelfarePackage_Money[3307128] = -29
	tOldPlayerWelfarePackage_Money[3307129] = -39
	tOldPlayerWelfarePackage_Money[3307130] = -59
	tOldPlayerWelfarePackage_Money[3307131] = -99
	
--log表
local tOldPlayerWelfarePackage_Log = {}
	tOldPlayerWelfarePackage_Log["DelItem"] = "0,0,%d,1,12000978,3,0,0" --删除任务物品
	tOldPlayerWelfarePackage_Log["EmoneyLog"] = {}
	tOldPlayerWelfarePackage_Log["EmoneyLog"][3307128] = "350	21064	29	29	1	"
	tOldPlayerWelfarePackage_Log["EmoneyLog"][3307129] = "350	21065	39	39	1	"
	tOldPlayerWelfarePackage_Log["EmoneyLog"][3307130] = "350	21066	59	59	1	"
	tOldPlayerWelfarePackage_Log["EmoneyLog"][3307131] = "350	21067	99	99	1	"
	
---------------------------------逻辑部分---------------------------------------------
--礼包可选
function OldPlayerWelfarePackage_Option(Times,nItemId)
	local nUserId = Get_UserId()
	--时间
	if  CommonFunc_GetBeforeActivityTime(tActivityTime["OldPlayerWelfarePackage"]["ActivityTime"]) then
		return
	end

	if not Sys_ChkFullTime(tActivityTime["OldPlayerWelfarePackage"]["ActivityTime"]) then
		if Item_ChkItem(nItemId) then
			if Item_DelItem(nItemId) then
				local sDelItemLog = string.format(tOldPlayerWelfarePackage_Log["DelItem"],nItemId)
				Sys_SaveActionFestivalLog(sDelItemLog)
				User_TalkChannel2005(tOldPlayerWelfarePackage_Text["OverTime"])
			end
		end	
		return
	end
	--物品
	if not Item_ChkItem(nItemId) then
		return
	end	

	local nEvent = tOldPlayerWelfarePackage_Stc[nItemId]["EventData"]
	local nType =  tOldPlayerWelfarePackage_Stc[nItemId]["DataType"]

	-- 判断是否领取
	if not Task_StcInterval(nEvent,nType,1,4,nUserId) then
		User_TalkChannel2005(tOldPlayerWelfarePackage_Text["GetAward"])
		return
	end

	local nData = Get_UserStatisticValue(nEvent,nType,nUserId)
	
	if nData > 29 then
		if Item_ChkItem(nItemId) then
			if Item_DelItem(nItemId) then
				local sDelItemLog = string.format(tOldPlayerWelfarePackage_Log["DelItem"],nItemId)
				Sys_SaveActionFestivalLog(sDelItemLog)
				User_TalkChannel2005(tOldPlayerWelfarePackage_Text["NoTurn"])
			end
		end	
		
		return
	end
	--背包
	if not User_CheckLeftSpace(RewardTemplate_GetRewardSpace(tOldPlayerWelfarePackage_Award[Times][nItemId])) then 		
		local nSpace = RewardTemplate_GetRewardSpace(tOldPlayerWelfarePackage_Award[Times][nItemId])
		User_TalkChannel2005(string.format(tOldPlayerWelfarePackage_Text["BagFull"],nSpace))
		return
	end 

	--判断天石数量
	if Times == 2 then
		if Get_UserEMoney(nUserId) < math.abs(tOldPlayerWelfarePackage_Money[nItemId]) then
			User_TalkChannel2005(tOldPlayerWelfarePackage_Text["NoMoney"])
			return
		end

		User_AddEMoney(tOldPlayerWelfarePackage_Money[nItemId],nUserId)
		Sys_SaveEmoneyBuy(tOldPlayerWelfarePackage_Log["EmoneyLog"][nItemId])
	end
	
	--只能打开30次 
	if nData==29 then
		if Item_ChkItem(nItemId) then
			if Item_DelItem(nItemId) then		
				local sDelItemLog = string.format(tOldPlayerWelfarePackage_Log["DelItem"],nItemId)
				Sys_SaveActionFestivalLog(sDelItemLog)
				Task_AddStatistic(nEvent,nType,1,1,0)
				Task_SetStcTimestamp(nEvent,nType,0,nUserId)
				RewardTemplate_UseItem(tOldPlayerWelfarePackage_Award[Times][nItemId])
				return
			end
		end		 
	end 

	--置掩码
	Task_AddStatistic(nEvent,nType,1,1,0)
	Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	RewardTemplate_UseItem(tOldPlayerWelfarePackage_Award[Times][nItemId])

end 


--物品无对白检测时间
function OldPlayerWelfarePackage_CheckTime(nItemId)
	if  CommonFunc_GetBeforeActivityTime(tActivityTime["OldPlayerWelfarePackage"]["ActivityTime"]) then
		return
	end
	if not Sys_ChkFullTime(tActivityTime["OldPlayerWelfarePackage"]["ActivityTime"]) then
		if Item_ChkItem(nItemId) then
			if Item_DelItem(nItemId) then
				local sDelItemLog = string.format(tOldPlayerWelfarePackage_Log["DelItem"],nItemId)
				Sys_SaveActionFestivalLog(sDelItemLog)
				User_TalkChannel2005(tOldPlayerWelfarePackage_Text["OverTime"])
			end
		end	
		return 
	end

	local nEvent = tOldPlayerWelfarePackage_Stc[nItemId]["EventData"]
	local nType =  tOldPlayerWelfarePackage_Stc[nItemId]["DataType"]
	local nDataTime =  Get_UserStatisticValue(nEvent,nType)
	if nDataTime >29 then
		if Item_ChkItem(nItemId) then
			if Item_DelItem(nItemId) then		
				local sDelItemLog = string.format(tOldPlayerWelfarePackage_Log["DelItem"],nItemId)
				Sys_SaveActionFestivalLog(sDelItemLog)
				User_TalkChannel2005(tOldPlayerWelfarePackage_Text["NoTurn"])
			end
		end	
		return 
	end
	
	LinkItemGossipFunc_New(nItemId,"1-1")
end



---------------------------------物品部分---------------------------------------------
--物品头像
tItemFace[3307128] = 1259
tItemFace[3307129] = 1260
tItemFace[3307130] = 1261
tItemFace[3307131] = 505


tItem[3307128] = tItem[3307128] or {}
tItem[3307128]["Function"] = function(nItemId,sItemName)
	OldPlayerWelfarePackage_CheckTime(nItemId)
end

-- 名士回归普通礼盒
-- tItemFace[3307128] = 976
tItem[3307128] = tItem[3307128] or {}
tItem[3307128]["Text1-1"] = {111,112}
tItem[3307128]["Text111"] = tOldPlayerWelfarePackage_Text[3307128]["Text111"]
tItem[3307128]["Text112"] = tOldPlayerWelfarePackage_Text[3307128]["Text112"]
tItem[3307128]["tOption1-1"] = {111, 112}
tItem[3307128]["Option111"] = tOldPlayerWelfarePackage_Text[3307128]["Option111"]
tItem[3307128]["OptionPoint111"] = "1-2"
tItem[3307128]["Option112"] = tOldPlayerWelfarePackage_Text[3307128]["Option112"]
tItem[3307128]["OptionFunc112"] = "OldPlayerWelfarePackage_Option</N>1</N>3307128"
tItem[3307128]["ChkFunc1-1"] = function()	
	if not Sys_ChkFullTime(tActivityTime["OldPlayerWelfarePackage"]["ActivityTime"]) then
		return false
	end
	
	local nEvent = tOldPlayerWelfarePackage_Stc[3307128]["EventData"]
	local nType =  tOldPlayerWelfarePackage_Stc[3307128]["DataType"]
	local nTimes =  Get_UserStatisticValue(nEvent,nType)
	if  Task_StcInterval(nEvent,nType,1,4,nUserId) then
		nTimes = nTimes+1
	end

	tItem[3307128]["Text111"] = string.format(tOldPlayerWelfarePackage_Text[3307128]["Text111"],nTimes)
	return  true
end

tItem[3307128]["Text1-2"] = {121}
tItem[3307128]["Text121"] = tOldPlayerWelfarePackage_Text[3307128]["Text121"]
tItem[3307128]["tOption1-2"] = {121, 122}
tItem[3307128]["Option121"] = tOldPlayerWelfarePackage_Text[3307128]["Option121"]
tItem[3307128]["OptionFunc121"] = "OldPlayerWelfarePackage_Option</N>2</N>3307128"
tItem[3307128]["Option122"] = tOldPlayerWelfarePackage_Text[3307128]["Option122"]


tItem[3307129] = tItem[3307129] or {}
tItem[3307129]["Function"] = function(nItemId,sItemName)
	OldPlayerWelfarePackage_CheckTime(nItemId)
end

--名士回归精装礼盒
tItem[3307129] = tItem[3307129] or {}
tItem[3307129]["Text1-1"] = {111,112}
tItem[3307129]["Text111"] = tOldPlayerWelfarePackage_Text[3307129]["Text111"]
tItem[3307129]["Text112"] = tOldPlayerWelfarePackage_Text[3307129]["Text112"]
tItem[3307129]["tOption1-1"] = {111, 112}
tItem[3307129]["Option111"] = tOldPlayerWelfarePackage_Text[3307129]["Option111"]
tItem[3307129]["OptionPoint111"] = "1-2"
tItem[3307129]["Option112"] = tOldPlayerWelfarePackage_Text[3307129]["Option112"]
tItem[3307129]["OptionFunc112"] = "OldPlayerWelfarePackage_Option</N>1</N>3307129"
tItem[3307129]["ChkFunc1-1"] = function()	
	if not Sys_ChkFullTime(tActivityTime["OldPlayerWelfarePackage"]["ActivityTime"]) then
		return false
	end
	
	local nEvent = tOldPlayerWelfarePackage_Stc[3307129]["EventData"]
	local nType =  tOldPlayerWelfarePackage_Stc[3307129]["DataType"]
	local nTimes =  Get_UserStatisticValue(nEvent,nType)
	if  Task_StcInterval(nEvent,nType,1,4,nUserId) then
		nTimes = nTimes+1
	end

	tItem[3307129]["Text111"] = string.format(tOldPlayerWelfarePackage_Text[3307129]["Text111"],nTimes)
	return  true
end


tItem[3307129]["Text1-2"] = {121}
tItem[3307129]["Text121"] = tOldPlayerWelfarePackage_Text[3307129]["Text121"]
tItem[3307129]["tOption1-2"] = {121, 122}
tItem[3307129]["Option121"] = tOldPlayerWelfarePackage_Text[3307129]["Option121"]
tItem[3307129]["OptionFunc121"] = "OldPlayerWelfarePackage_Option</N>2</N>3307129"
tItem[3307129]["Option122"] = tOldPlayerWelfarePackage_Text[3307129]["Option122"]

tItem[3307130] = tItem[3307130] or {}
tItem[3307130]["Function"] = function(nItemId,sItemName)
	OldPlayerWelfarePackage_CheckTime(nItemId)
end

--名士回归豪华礼盒
tItem[3307130] = tItem[3307130] or {}
tItem[3307130]["Text1-1"] = {111,112}
tItem[3307130]["Text111"] = tOldPlayerWelfarePackage_Text[3307130]["Text111"]
tItem[3307130]["Text112"] = tOldPlayerWelfarePackage_Text[3307130]["Text112"]
tItem[3307130]["tOption1-1"] = {111, 112}
tItem[3307130]["Option111"] = tOldPlayerWelfarePackage_Text[3307130]["Option111"]
tItem[3307130]["OptionPoint111"] = "1-2"
tItem[3307130]["Option112"] = tOldPlayerWelfarePackage_Text[3307130]["Option112"]
tItem[3307130]["OptionFunc112"] = "OldPlayerWelfarePackage_Option</N>1</N>3307130"
tItem[3307130]["ChkFunc1-1"] = function()	
	if not Sys_ChkFullTime(tActivityTime["OldPlayerWelfarePackage"]["ActivityTime"]) then
		return false
	end
	
	local nEvent = tOldPlayerWelfarePackage_Stc[3307130]["EventData"]
	local nType =  tOldPlayerWelfarePackage_Stc[3307130]["DataType"]
	local nTimes =  Get_UserStatisticValue(nEvent,nType)
	if  Task_StcInterval(nEvent,nType,1,4,nUserId) then
		nTimes = nTimes+1
	end

	tItem[3307130]["Text111"] = string.format(tOldPlayerWelfarePackage_Text[3307130]["Text111"],nTimes)
	return  true
end

tItem[3307130]["Text1-2"] = {121}
tItem[3307130]["Text121"] = tOldPlayerWelfarePackage_Text[3307130]["Text121"]
tItem[3307130]["tOption1-2"] = {121, 122}
tItem[3307130]["Option121"] = tOldPlayerWelfarePackage_Text[3307130]["Option121"]
tItem[3307130]["OptionFunc121"] = "OldPlayerWelfarePackage_Option</N>2</N>3307130"
tItem[3307130]["Option122"] = tOldPlayerWelfarePackage_Text[3307130]["Option122"]

tItem[3307131] = tItem[3307131] or {}
tItem[3307131]["Function"] = function(nItemId,sItemName)
	OldPlayerWelfarePackage_CheckTime(nItemId)
end

--名士回归尊享礼盒
tItem[3307131] = tItem[3307131] or {}
tItem[3307131]["Text1-1"] = {111,112}
tItem[3307131]["Text111"] = tOldPlayerWelfarePackage_Text[3307131]["Text111"]
tItem[3307131]["Text112"] = tOldPlayerWelfarePackage_Text[3307131]["Text112"]
tItem[3307131]["tOption1-1"] = {111, 112}
tItem[3307131]["Option111"] = tOldPlayerWelfarePackage_Text[3307131]["Option111"]
tItem[3307131]["OptionPoint111"] = "1-2"
tItem[3307131]["Option112"] = tOldPlayerWelfarePackage_Text[3307131]["Option112"]
tItem[3307131]["OptionFunc112"] = "OldPlayerWelfarePackage_Option</N>1</N>3307131"
tItem[3307131]["ChkFunc1-1"] = function()	
	if not Sys_ChkFullTime(tActivityTime["OldPlayerWelfarePackage"]["ActivityTime"]) then
		return false
	end
	
	local nEvent = tOldPlayerWelfarePackage_Stc[3307131]["EventData"]
	local nType =  tOldPlayerWelfarePackage_Stc[3307131]["DataType"]
	local nTimes =  Get_UserStatisticValue(nEvent,nType)
	if  Task_StcInterval(nEvent,nType,1,4,nUserId) then
		nTimes = nTimes+1
	end

	tItem[3307131]["Text111"] = string.format(tOldPlayerWelfarePackage_Text[3307131]["Text111"],nTimes)
	return  true
end

tItem[3307131]["Text1-2"] = {121}
tItem[3307131]["Text121"] = tOldPlayerWelfarePackage_Text[3307131]["Text121"]
tItem[3307131]["tOption1-2"] = {121, 122}
tItem[3307131]["Option121"] = tOldPlayerWelfarePackage_Text[3307131]["Option121"]
tItem[3307131]["OptionFunc121"] = "OldPlayerWelfarePackage_Option</N>2</N>3307131"
tItem[3307131]["Option122"] = tOldPlayerWelfarePackage_Text[3307131]["Option122"]














