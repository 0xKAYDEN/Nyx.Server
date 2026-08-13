-----------------------------------------------------------------------------------------------------
--Name:		161128[移动端征服][活动脚本]新服升级礼包
--Purpose:	新服升级礼包
--Creator: 	陈琳
--Created:	2016/11/28
-----------------------------------------------------------------------------------------------------
-- 命名规范
-- NewServerUpdatePack_

-- 物品
-- 3301700

-- log
-- 12000592

-- 掩码
-- stc(153,51) 记录礼包打开情况
----------------------------------------数据部分-------------------------------------------
-- 掩码
local tNewServerUpdatePack_Stc = {}
	tNewServerUpdatePack_Stc["Open"] = {}
	tNewServerUpdatePack_Stc["Open"]["EventType"] = 153
	tNewServerUpdatePack_Stc["Open"]["DataType"] = 51
	
-- 礼包
local tNewServerUpdatePack_Reward = {}
	-- 20级可以打开获得	小祈愿石	PrayingStone(S)	1200000	1
	tNewServerUpdatePack_Reward[20] = {}
	tNewServerUpdatePack_Reward[20][3301700] = {}
	tNewServerUpdatePack_Reward[20][3301700]["RewardItem"] = {}
	tNewServerUpdatePack_Reward[20][3301700]["RewardItem"][1] = {}
	tNewServerUpdatePack_Reward[20][3301700]["RewardItem"][1]["Id"] = 1200000
	tNewServerUpdatePack_Reward[20][3301700]["RewardItem"][1]["Attr"] = "0 1 3"
	tNewServerUpdatePack_Reward[20][3301700]["Log"] = "0,0,0,0,12000592,2,1200000,1"
	tNewServerUpdatePack_Reward[20][3301700]["RewardEffect"] = {}
	tNewServerUpdatePack_Reward[20][3301700]["RewardEffect"]["Effect"] = "zf2-e128"
	-- 30级可以打开获得	+2赤练石	+2Stone	730002	2
	tNewServerUpdatePack_Reward[30] = {}
	tNewServerUpdatePack_Reward[30][3301700] = {}
	tNewServerUpdatePack_Reward[30][3301700]["RewardItem"] = {}
	tNewServerUpdatePack_Reward[30][3301700]["RewardItem"][1] = {}
	tNewServerUpdatePack_Reward[30][3301700]["RewardItem"][1]["Id"] = 730002
	tNewServerUpdatePack_Reward[30][3301700]["RewardItem"][1]["Attr"] = "0 2 3"
	tNewServerUpdatePack_Reward[30][3301700]["Log"] = "0,0,0,0,12000592,2,730002,2"
	tNewServerUpdatePack_Reward[30][3301700]["RewardEffect"] = {}
	tNewServerUpdatePack_Reward[30][3301700]["RewardEffect"]["Effect"] = "zf2-e128"
	-- 40级可以打开获得	昆仑雪水	ExpPotion	723017	3
	tNewServerUpdatePack_Reward[40] = {}
	tNewServerUpdatePack_Reward[40][3301700] = {}
	tNewServerUpdatePack_Reward[40][3301700]["RewardItem"] = {}
	tNewServerUpdatePack_Reward[40][3301700]["RewardItem"][1] = {}
	tNewServerUpdatePack_Reward[40][3301700]["RewardItem"][1]["Id"] = 723017
	tNewServerUpdatePack_Reward[40][3301700]["RewardItem"][1]["Attr"] = "0 3 3"
	tNewServerUpdatePack_Reward[40][3301700]["Log"] = "0,0,0,0,12000592,2,723017,3"
	tNewServerUpdatePack_Reward[40][3301700]["RewardEffect"] = {}
	tNewServerUpdatePack_Reward[40][3301700]["RewardEffect"]["Effect"] = "zf2-e128"
	-- 50级可以打开获得	良品龙恨宝石	DragonGem	700012	2
	tNewServerUpdatePack_Reward[50] = {}
	tNewServerUpdatePack_Reward[50][3301700] = {}
	tNewServerUpdatePack_Reward[50][3301700]["RewardItem"] = {}
	tNewServerUpdatePack_Reward[50][3301700]["RewardItem"][1] = {}
	tNewServerUpdatePack_Reward[50][3301700]["RewardItem"][1]["Id"] = 700012
	tNewServerUpdatePack_Reward[50][3301700]["RewardItem"][1]["Attr"] = "0 2 3"
	tNewServerUpdatePack_Reward[50][3301700]["Log"] = "0,0,0,0,12000592,2,700012,2"
	tNewServerUpdatePack_Reward[50][3301700]["RewardEffect"] = {}
	tNewServerUpdatePack_Reward[50][3301700]["RewardEffect"]["Effect"] = "zf2-e128"
	-- 60级可以打开获得	+2赤练石	+2Stone	730002	5
	tNewServerUpdatePack_Reward[60] = {}
	tNewServerUpdatePack_Reward[60][3301700] = {}
	tNewServerUpdatePack_Reward[60][3301700]["RewardItem"] = {}
	tNewServerUpdatePack_Reward[60][3301700]["RewardItem"][1] = {}
	tNewServerUpdatePack_Reward[60][3301700]["RewardItem"][1]["Id"] = 730002
	tNewServerUpdatePack_Reward[60][3301700]["RewardItem"][1]["Attr"] = "0 5 3"
	tNewServerUpdatePack_Reward[60][3301700]["Log"] = "0,0,0,0,12000592,2,730002,5"
	tNewServerUpdatePack_Reward[60][3301700]["RewardEffect"] = {}
	tNewServerUpdatePack_Reward[60][3301700]["RewardEffect"]["Effect"] = "zf2-e128"
	-- 70级可以打开获得	+3赤练石	+3Stone	730003	2
	tNewServerUpdatePack_Reward[70] = {}
	tNewServerUpdatePack_Reward[70][3301700] = {}
	tNewServerUpdatePack_Reward[70][3301700]["RewardItem"] = {}
	tNewServerUpdatePack_Reward[70][3301700]["RewardItem"][1] = {}
	tNewServerUpdatePack_Reward[70][3301700]["RewardItem"][1]["Id"] = 730003
	tNewServerUpdatePack_Reward[70][3301700]["RewardItem"][1]["Attr"] = "0 2 3"
	tNewServerUpdatePack_Reward[70][3301700]["Log"] = "0,0,0,0,12000592,2,730003,2"
	tNewServerUpdatePack_Reward[70][3301700]["RewardEffect"] = {}
	tNewServerUpdatePack_Reward[70][3301700]["RewardEffect"]["Effect"] = "zf2-e128"
	-- 80级可以打开获得	天道酬勤券	EndeavorScroll	3001407	2
	tNewServerUpdatePack_Reward[80] = {}
	tNewServerUpdatePack_Reward[80][3301700] = {}
	tNewServerUpdatePack_Reward[80][3301700]["RewardItem"] = {}
	tNewServerUpdatePack_Reward[80][3301700]["RewardItem"][1] = {}
	tNewServerUpdatePack_Reward[80][3301700]["RewardItem"][1]["Id"] = 3001407
	tNewServerUpdatePack_Reward[80][3301700]["RewardItem"][1]["Attr"] = "0 2 3"
	tNewServerUpdatePack_Reward[80][3301700]["Log"] = "0,0,0,0,12000592,2,3001407,2"
	tNewServerUpdatePack_Reward[80][3301700]["RewardEffect"] = {}
	tNewServerUpdatePack_Reward[80][3301700]["RewardEffect"]["Effect"] = "zf2-e128"
	-- 90级可以打开获得	+3赤练石	+3Stone	730003	3
	tNewServerUpdatePack_Reward[90] = {}
	tNewServerUpdatePack_Reward[90][3301700] = {}
	tNewServerUpdatePack_Reward[90][3301700]["RewardItem"] = {}
	tNewServerUpdatePack_Reward[90][3301700]["RewardItem"][1] = {}
	tNewServerUpdatePack_Reward[90][3301700]["RewardItem"][1]["Id"] = 730003
	tNewServerUpdatePack_Reward[90][3301700]["RewardItem"][1]["Attr"] = "0 3 3"
	tNewServerUpdatePack_Reward[90][3301700]["Log"] = "0,0,0,0,12000592,2,730003,3"
	tNewServerUpdatePack_Reward[90][3301700]["RewardEffect"] = {}
	tNewServerUpdatePack_Reward[90][3301700]["RewardEffect"]["Effect"] = "zf2-e128"
	-- 100级可以打开获得	2000点气力值	ChiPointPack(2000)	3001499	1
	tNewServerUpdatePack_Reward[100] = {}
	tNewServerUpdatePack_Reward[100][3301700] = {}
	tNewServerUpdatePack_Reward[100][3301700]["RewardItem"] = {}
	tNewServerUpdatePack_Reward[100][3301700]["RewardItem"][1] = {}
	tNewServerUpdatePack_Reward[100][3301700]["RewardItem"][1]["Id"] = 3001499
	tNewServerUpdatePack_Reward[100][3301700]["RewardItem"][1]["Attr"] = "0 1 3"
	tNewServerUpdatePack_Reward[100][3301700]["Log"] = "0,0,0,0,12000592,2,3001499,1"
	tNewServerUpdatePack_Reward[100][3301700]["RewardEffect"] = {}
	tNewServerUpdatePack_Reward[100][3301700]["RewardEffect"]["Effect"] = "zf2-e128"
	-- 105级可以打开获得	流星卷	MeteorScroll	3006277	3
	tNewServerUpdatePack_Reward[105] = {}
	tNewServerUpdatePack_Reward[105][3301700] = {}
	tNewServerUpdatePack_Reward[105][3301700]["RewardItem"] = {}
	tNewServerUpdatePack_Reward[105][3301700]["RewardItem"][1] = {}
	tNewServerUpdatePack_Reward[105][3301700]["RewardItem"][1]["Id"] = 3006277
	tNewServerUpdatePack_Reward[105][3301700]["RewardItem"][1]["Attr"] = "0 3 3"
	tNewServerUpdatePack_Reward[105][3301700]["Log"] = "0,0,0,0,12000592,2,3006277,3"
	tNewServerUpdatePack_Reward[105][3301700]["RewardEffect"] = {}
	tNewServerUpdatePack_Reward[105][3301700]["RewardEffect"]["Effect"] = "zf2-e128"
	-- 110级可以打开获得	5000点气力值	ChiPointPack(5000)	3001035	1
	tNewServerUpdatePack_Reward[110] = {}
	tNewServerUpdatePack_Reward[110][3301700] = {}
	tNewServerUpdatePack_Reward[110][3301700]["RewardItem"] = {}
	tNewServerUpdatePack_Reward[110][3301700]["RewardItem"][1] = {}
	tNewServerUpdatePack_Reward[110][3301700]["RewardItem"][1]["Id"] = 3001035
	tNewServerUpdatePack_Reward[110][3301700]["RewardItem"][1]["Attr"] = "0 1 3"
	tNewServerUpdatePack_Reward[110][3301700]["Log"] = "0,0,0,0,12000592,2,3001035,1"
	tNewServerUpdatePack_Reward[110][3301700]["RewardEffect"] = {}
	tNewServerUpdatePack_Reward[110][3301700]["RewardEffect"]["Effect"] = "zf2-e128"
	-- 115级可以打开获得	龙珠	DragonBall	1088000	3
	tNewServerUpdatePack_Reward[115] = {}
	tNewServerUpdatePack_Reward[115][3301700] = {}
	tNewServerUpdatePack_Reward[115][3301700]["RewardItem"] = {}
	tNewServerUpdatePack_Reward[115][3301700]["RewardItem"][1] = {}
	tNewServerUpdatePack_Reward[115][3301700]["RewardItem"][1]["Id"] = 1088000
	tNewServerUpdatePack_Reward[115][3301700]["RewardItem"][1]["Attr"] = "0 3 3"
	tNewServerUpdatePack_Reward[115][3301700]["Log"] = "0,0,0,0,12000592,2,1088000,3"
	tNewServerUpdatePack_Reward[115][3301700]["RewardEffect"] = {}
	tNewServerUpdatePack_Reward[115][3301700]["RewardEffect"]["Effect"] = "zf2-e128"
	-- 120级可以打开获得	强练丹（100）	FavoredTrainingPack(100)	3003124	100
	tNewServerUpdatePack_Reward[120] = {}
	tNewServerUpdatePack_Reward[120][3301700] = {}
	tNewServerUpdatePack_Reward[120][3301700]["RewardItem"] = {}
	tNewServerUpdatePack_Reward[120][3301700]["RewardItem"][1] = {}
	tNewServerUpdatePack_Reward[120][3301700]["RewardItem"][1]["Id"] = 3003124
	tNewServerUpdatePack_Reward[120][3301700]["RewardItem"][1]["Attr"] = "0 100 3"
	tNewServerUpdatePack_Reward[120][3301700]["Log"] = "0,0,0,0,12000592,2,3003124,100"
	tNewServerUpdatePack_Reward[120][3301700]["RewardEffect"] = {}
	tNewServerUpdatePack_Reward[120][3301700]["RewardEffect"]["Effect"] = "zf2-e128"
	-- 125级可以打开获得	大爆丹（20）	SpecialTrainingPack(20)	3003126	20
	tNewServerUpdatePack_Reward[125] = {}
	tNewServerUpdatePack_Reward[125][3301700] = {}
	tNewServerUpdatePack_Reward[125][3301700]["RewardItem"] = {}
	tNewServerUpdatePack_Reward[125][3301700]["RewardItem"][1] = {}
	tNewServerUpdatePack_Reward[125][3301700]["RewardItem"][1]["Id"] = 3003126
	tNewServerUpdatePack_Reward[125][3301700]["RewardItem"][1]["Attr"] = "0 20 3"
	tNewServerUpdatePack_Reward[125][3301700]["Log"] = "0,0,0,0,12000592,2,3003126,20"
	tNewServerUpdatePack_Reward[125][3301700]["RewardEffect"] = {}
	tNewServerUpdatePack_Reward[125][3301700]["RewardEffect"]["Effect"] = "zf2-e128"
	-- 130级可以打开获得	1000点赠品天石
	tNewServerUpdatePack_Reward[130] = {}
	tNewServerUpdatePack_Reward[130][3301700] = {}
	tNewServerUpdatePack_Reward[130][3301700]["RewardEMoneyMono"] = {}
	tNewServerUpdatePack_Reward[130][3301700]["RewardEMoneyMono"]["Value"] = 1000
	tNewServerUpdatePack_Reward[130][3301700]["Log"] = "0,0,0,0,12000592,2,3,1000"
	tNewServerUpdatePack_Reward[130][3301700]["EmoneyLog"] = "350	20771	0	0	-1000	"
	tNewServerUpdatePack_Reward[130][3301700]["RewardEffect"] = {}
	tNewServerUpdatePack_Reward[130][3301700]["RewardEffect"]["Effect"] = "zf2-e128"
	-- 135级可以打开获得	龙珠	DragonBall	1088000	1
	tNewServerUpdatePack_Reward[135] = {}
	tNewServerUpdatePack_Reward[135][3301700] = {}
	tNewServerUpdatePack_Reward[135][3301700]["RewardItem"] = {}
	tNewServerUpdatePack_Reward[135][3301700]["RewardItem"][1] = {}
	tNewServerUpdatePack_Reward[135][3301700]["RewardItem"][1]["Id"] = 1088000
	tNewServerUpdatePack_Reward[135][3301700]["RewardItem"][1]["Attr"] = "0 1 3"
	tNewServerUpdatePack_Reward[135][3301700]["Log"] = "0,0,0,0,12000592,2,1088000,1"
	tNewServerUpdatePack_Reward[135][3301700]["RewardEffect"] = {}
	tNewServerUpdatePack_Reward[135][3301700]["RewardEffect"]["Effect"] = "zf2-e128"
	-- 136级可以打开获得	小固化石	PermanentStone	723694	1
	tNewServerUpdatePack_Reward[136] = {}
	tNewServerUpdatePack_Reward[136][3301700] = {}
	tNewServerUpdatePack_Reward[136][3301700]["RewardItem"] = {}
	tNewServerUpdatePack_Reward[136][3301700]["RewardItem"][1] = {}
	tNewServerUpdatePack_Reward[136][3301700]["RewardItem"][1]["Id"] = 723694
	tNewServerUpdatePack_Reward[136][3301700]["RewardItem"][1]["Attr"] = "0 1 3"
	tNewServerUpdatePack_Reward[136][3301700]["Log"] = "0,0,0,0,12000592,2,723694,1"
	tNewServerUpdatePack_Reward[136][3301700]["RewardEffect"] = {}
	tNewServerUpdatePack_Reward[136][3301700]["RewardEffect"]["Effect"] = "zf2-e128"
	-- 137级可以打开获得	超级经验丹	PowerEXPBall	723744	1
	tNewServerUpdatePack_Reward[137] = {}
	tNewServerUpdatePack_Reward[137][3301700] = {}
	tNewServerUpdatePack_Reward[137][3301700]["RewardItem"] = {}
	tNewServerUpdatePack_Reward[137][3301700]["RewardItem"][1] = {}
	tNewServerUpdatePack_Reward[137][3301700]["RewardItem"][1]["Id"] = 723744
	tNewServerUpdatePack_Reward[137][3301700]["RewardItem"][1]["Attr"] = "0 1 3"
	tNewServerUpdatePack_Reward[137][3301700]["Log"] = "0,0,0,0,12000592,2,723744,1"
	tNewServerUpdatePack_Reward[137][3301700]["RewardEffect"] = {}
	tNewServerUpdatePack_Reward[137][3301700]["RewardEffect"]["Effect"] = "zf2-e128"
	-- 138级可以打开获得	+5赤练石	+5Stone	730005	1	+5马匹	+5WhiteSteedPack	300000
	tNewServerUpdatePack_Reward[138] = {}
	tNewServerUpdatePack_Reward[138][3301700] = {}
	tNewServerUpdatePack_Reward[138][3301700]["RewardItem"] = {}
	tNewServerUpdatePack_Reward[138][3301700]["RewardItem"][1] = {}
	tNewServerUpdatePack_Reward[138][3301700]["RewardItem"][1]["Id"] = 730005
	tNewServerUpdatePack_Reward[138][3301700]["RewardItem"][1]["Attr"] = "0 1 3"
	tNewServerUpdatePack_Reward[138][3301700]["RewardItem"][2] = {}
	tNewServerUpdatePack_Reward[138][3301700]["RewardItem"][2]["Id"] = 300000
	tNewServerUpdatePack_Reward[138][3301700]["RewardItem"][2]["Attr"] = "0 1 3 0 0 0 16750080 255 150 0 5"
	tNewServerUpdatePack_Reward[138][3301700]["Log"] = "0,0,0,0,12000592,2,730005[300000],1[1]"
	tNewServerUpdatePack_Reward[138][3301700]["RewardEffect"] = {}
	tNewServerUpdatePack_Reward[138][3301700]["RewardEffect"]["Effect"] = "zf2-e128"
	-- 139级可以打开获得	金刚尖钻	ToughDrill	1200005	1
	tNewServerUpdatePack_Reward[139] = {}
	tNewServerUpdatePack_Reward[139][3301700] = {}
	tNewServerUpdatePack_Reward[139][3301700]["RewardItem"] = {}
	tNewServerUpdatePack_Reward[139][3301700]["RewardItem"][1] = {}
	tNewServerUpdatePack_Reward[139][3301700]["RewardItem"][1]["Id"] = 1200005
	tNewServerUpdatePack_Reward[139][3301700]["RewardItem"][1]["Attr"] = "0 1 3"
	tNewServerUpdatePack_Reward[139][3301700]["Log"] = "0,0,0,0,12000592,2,1200005,1"
	tNewServerUpdatePack_Reward[139][3301700]["RewardEffect"] = {}
	tNewServerUpdatePack_Reward[139][3301700]["RewardEffect"]["Effect"] = "zf2-e128"
	-- 140级可以打开获得	3000点赠品天石
	tNewServerUpdatePack_Reward[140] = {}
	tNewServerUpdatePack_Reward[140][3301700] = {}
	tNewServerUpdatePack_Reward[140][3301700]["RewardEMoneyMono"] = {}
	tNewServerUpdatePack_Reward[140][3301700]["RewardEMoneyMono"]["Value"] = 3000
	tNewServerUpdatePack_Reward[140][3301700]["DeleteItem"] = {}
	tNewServerUpdatePack_Reward[140][3301700]["DeleteItem"][1] = {}
	tNewServerUpdatePack_Reward[140][3301700]["DeleteItem"][1]["Id"] = 3301700
	tNewServerUpdatePack_Reward[140][3301700]["Log"] = "0,0,0,0,12000592,2,3,3000"
	tNewServerUpdatePack_Reward[140][3301700]["EmoneyLog"] = "350	20771	0	0	-3000	"
	tNewServerUpdatePack_Reward[140][3301700]["RewardEffect"] = {}
	tNewServerUpdatePack_Reward[140][3301700]["RewardEffect"]["Effect"] = "zf2-e128"
	
-- 背包空间
local tNewServerUpdatePack_Space = {}
	tNewServerUpdatePack_Space[20] = 1
	tNewServerUpdatePack_Space[30] = 2
	tNewServerUpdatePack_Space[40] = 1
	tNewServerUpdatePack_Space[50] = 2
	tNewServerUpdatePack_Space[60] = 5
	tNewServerUpdatePack_Space[70] = 2
	tNewServerUpdatePack_Space[80] = 2
	tNewServerUpdatePack_Space[90] = 3
	tNewServerUpdatePack_Space[100] = 1
	tNewServerUpdatePack_Space[105] = 3
	tNewServerUpdatePack_Space[110] = 1
	tNewServerUpdatePack_Space[115] = 3
	tNewServerUpdatePack_Space[120] = 1
	tNewServerUpdatePack_Space[125] = 1
	tNewServerUpdatePack_Space[130] = 0
	tNewServerUpdatePack_Space[135] = 1
	tNewServerUpdatePack_Space[136] = 1
	tNewServerUpdatePack_Space[137] = 1
	tNewServerUpdatePack_Space[138] = 2
	tNewServerUpdatePack_Space[139] = 1
	tNewServerUpdatePack_Space[140] = 0
-- 等级
local tNewServerUpdatePack_Level = {20,30,40,50,60,70,80,90,100,105,110,115,120,125,130,135,136,137,138,139,140}

-- 给赠点天石的等级和数量
local tNewServerUpdatePack_EMoneyMono = {}
	tNewServerUpdatePack_EMoneyMono[130] = 1000
	tNewServerUpdatePack_EMoneyMono[140] = 3000
--------------------------------------物品逻辑-------------------------------------------
function NewServerUpdatePack_TryToOpen(nItemId)
	local nUserId = Get_UserId()
	local nUserLevel = Get_UserLevel(nUserId)
	
	for i = 1,#tNewServerUpdatePack_Level do
		local nLevel = tNewServerUpdatePack_Level[i]
		local sRewardItemName = tNewServerUpdatePack_Text[nLevel]
		local nSpace = tNewServerUpdatePack_Space[nLevel]
		
		-- 判断玩家已领奖励的级数
		local nEventData = tNewServerUpdatePack_Stc["Open"]["EventType"]
		local nDataType = tNewServerUpdatePack_Stc["Open"]["DataType"]
		if Task_ChkStcValue(nEventData,nDataType,"<",nLevel) then
			-- 玩家等级比已领奖励的级数低时提示返回
			if nUserLevel < nLevel then
				tItem[3301700]["Text113"] = string.format(tNewServerUpdatePack_Text[3301700]["Text113"],nLevel,sRewardItemName)
				LinkItemGossipFunc_New(nItemId,"1-3")
				return
			end
			
			-- 玩家等级比已领奖励的级数高时进行给奖处理，140级以下
			if tNewServerUpdatePack_Level[i] < 140 then
				local nNextLevel = tNewServerUpdatePack_Level[i+1]
				local sNextItemName = tNewServerUpdatePack_Text[nNextLevel]
				tItem[3301700]["Text111"] = string.format(tNewServerUpdatePack_Text[3301700]["Text111"],sRewardItemName,sNextItemName)
				tItem[3301700]["Text112"] = string.format(tNewServerUpdatePack_Text[3301700]["Text112"],sRewardItemName,nNextLevel,sNextItemName)
				tItem[3301700]["OptionFunc1"] = string.format("NewServerUpdatePack_GetReward</N>%d</N>%d</N>%d",nItemId,nSpace,nLevel)
				LinkItemGossipFunc_New(nItemId,"1-1")
				return
			end
			
			-- 玩家等级比已领奖励的级数高时进行给奖处理，140级
			if tNewServerUpdatePack_Level[i] == 140 then
				NewServerUpdatePack_GetReward(nItemId,nSpace,nLevel)
			end
			
			break
		end
	end
end

function NewServerUpdatePack_GetReward(nItemId,nSpace,nLevel)
	-- 判断背包空间
	if nLevel ~= 130 and nLevel ~= 140 then
		if not User_CheckLeftSpace(nSpace) then
			local str = string.format(tNewServerUpdatePack_Text["Msg"]["NoSpace"],nSpace)
			Sys_MsgBox(str)
			return
		end
	end

	-- 判断赠点天石上限
	for i,v in ipairs(tNewServerUpdatePack_EMoneyMono) do
		if nLevel == i then
			if Get_UserMonoEMoney() + v > G_User_MaxEmoneyMono then
				Sys_MsgBox(tNewServerUpdatePack_Text["Msg"]["MaxEMoneyMono"])
				return
			end
		end
	end

	-- 判断背包里是否有礼包
	if not Item_ChkItem(nItemId) then
		return
	end
	
	-- 置掩码，给奖励，出提示
	local nEventData = tNewServerUpdatePack_Stc["Open"]["EventType"]
	local nDataType = tNewServerUpdatePack_Stc["Open"]["DataType"]
	Task_SetStatistic(nEventData,nDataType,nLevel,1)
	RewardTemplate_UseItem(tNewServerUpdatePack_Reward[nLevel][nItemId])
	if nLevel < 140 then
		LinkItemGossipFunc_New(nItemId,"1-2")
	else
		Sys_MsgBox(tNewServerUpdatePack_Text["Msg"]["LastOne"])
	end
end
--------------------------------------物品配置-------------------------------------------
tItem[3301700] = tItem[3301700] or {}
tItem[3301700]["DialogueText"] = tNewServerUpdatePack_Text[3301700]
tItem[3301700]["Function"] = function(nItemId,sItemName)
	NewServerUpdatePack_TryToOpen(nItemId)
end

tItem[3301700]["Text1-1"] = {111}
tItem[3301700]["tOption1-1"] = {1,2}

tItem[3301700]["Text1-2"] = {112}
tItem[3301700]["tOption1-2"] = {3}

tItem[3301700]["Text1-3"] = {113}
tItem[3301700]["tOption1-3"] = {3}