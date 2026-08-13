------------------------------------------------------------------------------------
--Name:			[征服][活动脚本]血炼大乱斗
--Creator: 		翁清海
--Created:		2018/05/29
------------------------------------------------------------------------------------
-- 40234
--命名：PkActivity
--掩码：
-- 14448 =1进入活动地图 =2领取奖励
-- 14449 记录分数
--动态存储表：
--51143~51162
--data0 玩家ID
--data1 分数
--data2 领奖情况 0没领奖 1领取奖励
--datastr0 玩家名字

local	tPkActivity_Cont = {}
		tPkActivity_Cont["Time"] = "19:30 19:45"
		tPkActivity_Cont["AwardTime"] = "19:46 23:59"
		tPkActivity_Cont["Level"] = 100
		tPkActivity_Cont["Metempsychosis"] = 0
		tPkActivity_Cont["MapId"] = 10007
		tPkActivity_Cont["MonsterId"] = 3825
		tPkActivity_Cont["Npc"] = 11015

		tPkActivity_Cont["MapId1"] = 1002

		tPkActivity_Cont["Center"] = {}
		tPkActivity_Cont["Center"]["Left"] = 6
		tPkActivity_Cont["Center"]["Middle"] = 28
		tPkActivity_Cont["Center"]["Right"] = 54
		tPkActivity_Cont["Center"]["Last"] = 73
		
		--光效配置
		tPkActivity_Cont["Effect"] = {}
		tPkActivity_Cont["Effect"]["SzObj"] = "self"
		tPkActivity_Cont["Effect"]["Effect"] = "zf2-e128"
		
		--邮件发奖
		tPkActivity_Cont["Mail"] = {}
		tPkActivity_Cont["Mail"]["ActionId"] = 569464
		tPkActivity_Cont["Mail"]["ExistDay"] = 7
		tPkActivity_Cont["Mail"]["ItemId"] = 3008187
		
		tPkActivity_Cont[3200285] = {}
		tPkActivity_Cont[3200285]["Item"] = 191405
		tPkActivity_Cont[3200285]["Attr"] = "0 0 0 10080 1 0 0 1"

		tPkActivity_Cont["Invite_Pos"] ={}
		tPkActivity_Cont["Invite_Pos"][1] = {}
		tPkActivity_Cont["Invite_Pos"][1]["X"] = 328
		tPkActivity_Cont["Invite_Pos"][1]["Y"] = 494
		
		tPkActivity_Cont["Invite_Pos"][2] = {}
		tPkActivity_Cont["Invite_Pos"][2]["X"] = 328
		tPkActivity_Cont["Invite_Pos"][2]["Y"] = 494
		
		tPkActivity_Cont["Invite_Pos"][3] = {}
		tPkActivity_Cont["Invite_Pos"][3]["X"] = 328
		tPkActivity_Cont["Invite_Pos"][3]["Y"] = 494
		
		tPkActivity_Cont["Invite_Pos"][4] = {}
		tPkActivity_Cont["Invite_Pos"][4]["X"] = 328
		tPkActivity_Cont["Invite_Pos"][4]["Y"] = 494
		
		tPkActivity_Cont["Invite_Pos"][5] = {}
		tPkActivity_Cont["Invite_Pos"][5]["X"] = 328
		tPkActivity_Cont["Invite_Pos"][5]["Y"] = 494
		
		tPkActivity_Cont["Invite_Pos"][6] = {}
		tPkActivity_Cont["Invite_Pos"][6]["X"] = 328
		tPkActivity_Cont["Invite_Pos"][6]["Y"] = 494
		
		tPkActivity_Cont["Invite_Pos"][7] = {}
		tPkActivity_Cont["Invite_Pos"][7]["X"] = 328
		tPkActivity_Cont["Invite_Pos"][7]["Y"] = 494
		
		tPkActivity_Cont["Invite_Pos"][8] = {}
		tPkActivity_Cont["Invite_Pos"][8]["X"] = 328
		tPkActivity_Cont["Invite_Pos"][8]["Y"] = 494
		
		tPkActivity_Cont["TwinCity"] = 1002
		tPkActivity_Cont["TwinCityPosX"] = 328
		tPkActivity_Cont["TwinCityPosY"] = 494
		
--战斗力小于300
		tPkActivity_Cont["Chgmap"] = {}
		tPkActivity_Cont["Chgmap"][1] = {}
		tPkActivity_Cont["Chgmap"][1][1] = {148,172}
		tPkActivity_Cont["Chgmap"][1][2] = {148,172}
		tPkActivity_Cont["Chgmap"][1][3] = {148,172}
		tPkActivity_Cont["Chgmap"][1][4] = {148,172}
		tPkActivity_Cont["Chgmap"][1][5] = {148,172}
		tPkActivity_Cont["Chgmap"][1][6] = {148,172}
		tPkActivity_Cont["Chgmap"][1][7] = {148,172}
		tPkActivity_Cont["Chgmap"][1][8] = {148,172}

--战斗力高于300
		tPkActivity_Cont["Chgmap"][2] = {}
		tPkActivity_Cont["Chgmap"][2][1] = {148,172}
		tPkActivity_Cont["Chgmap"][2][2] = {148,172}
		tPkActivity_Cont["Chgmap"][2][3] = {148,172}
		tPkActivity_Cont["Chgmap"][2][4] = {148,172}
		tPkActivity_Cont["Chgmap"][2][5] = {148,172}
		tPkActivity_Cont["Chgmap"][2][6] = {148,172}
		tPkActivity_Cont["Chgmap"][2][7] = {148,172}
		tPkActivity_Cont["Chgmap"][2][8] = {148,172}

		tPkActivity_Cont["MonsterPos"] = {}
		tPkActivity_Cont["MonsterPos"]["MinPosX"] = 127
		tPkActivity_Cont["MonsterPos"]["MaxPosX"] = 201
		tPkActivity_Cont["MonsterPos"]["MinPosY"] = 136
		tPkActivity_Cont["MonsterPos"]["MaxPosY"] = 209
		
		tPkActivity_Cont["Drop"] = {}
		tPkActivity_Cont["Drop"]["Id"] = {}
		tPkActivity_Cont["Drop"]["Id"][1] = 1000
		tPkActivity_Cont["Drop"]["Id"][2] = 10000
		tPkActivity_Cont["Drop"]["Id"][3] = 3002926
		tPkActivity_Cont["Drop"]["Id"][4] = 3006915
		tPkActivity_Cont["Drop"]["Id"][5] = 1088001
		tPkActivity_Cont["Drop"]["Id"][6] = 3307483
		tPkActivity_Cont["Drop"]["Id"][7] = 3304295
		tPkActivity_Cont["Drop"]["Id"][8] = 3008223
		
		tPkActivity_Cont["Drop"]["Num"] = {}
		tPkActivity_Cont["Drop"]["Num"][1] = 10
		tPkActivity_Cont["Drop"]["Num"][2] = 3
		tPkActivity_Cont["Drop"]["Num"][3] = 5
		tPkActivity_Cont["Drop"]["Num"][4] = 5
		tPkActivity_Cont["Drop"]["Num"][5] = 5
		tPkActivity_Cont["Drop"]["Num"][6] = 5
		tPkActivity_Cont["Drop"]["Num"][7] = 5
		tPkActivity_Cont["Drop"]["Num"][8] = 1
		
		tPkActivity_Cont["Drop"]["Pos"] = {}
		tPkActivity_Cont["Drop"]["Pos"][1] = {0,-3}
		tPkActivity_Cont["Drop"]["Pos"][2] = {-3,0}
		tPkActivity_Cont["Drop"]["Pos"][3] = {-3,-3}
		tPkActivity_Cont["Drop"]["Pos"][4] = {0,3}
		tPkActivity_Cont["Drop"]["Pos"][5] = {3,0}
		tPkActivity_Cont["Drop"]["Pos"][6] = {3,3}
		tPkActivity_Cont["Drop"]["Pos"][7] = {3,-3}
		tPkActivity_Cont["Drop"]["Pos"][8] = {-3,3}
		tPkActivity_Cont["Drop"]["Pos"][9] = {0,-6}
		tPkActivity_Cont["Drop"]["Pos"][10] = {-6,0}
		tPkActivity_Cont["Drop"]["Pos"][11] = {-3,-6}
		tPkActivity_Cont["Drop"]["Pos"][12] = {-6,-3}
		tPkActivity_Cont["Drop"]["Pos"][13] = {-6,-6}
		tPkActivity_Cont["Drop"]["Pos"][14] = {-3,6}
		tPkActivity_Cont["Drop"]["Pos"][15] = {-6,3}
		tPkActivity_Cont["Drop"]["Pos"][16] = {3,6}
		tPkActivity_Cont["Drop"]["Pos"][17] = {6,3}
		tPkActivity_Cont["Drop"]["Pos"][18] = {6,6}
		tPkActivity_Cont["Drop"]["Pos"][19] = {0,6}
		tPkActivity_Cont["Drop"]["Pos"][20] = {6,0}
		tPkActivity_Cont["Drop"]["Pos"][21] = {3,-6}
		tPkActivity_Cont["Drop"]["Pos"][22] = {6,-6}
		tPkActivity_Cont["Drop"]["Pos"][23] = {6,-3}
		tPkActivity_Cont["Drop"]["Pos"][24] = {-6,6}
		tPkActivity_Cont["Drop"]["Pos"][25] = {0,0}

local	tPkActivity_Stc = {}
		tPkActivity_Stc[1] = {}
		tPkActivity_Stc[1]["EventType"] = 144
		tPkActivity_Stc[1]["DataType"] = 48

		tPkActivity_Stc[2] = {}
		tPkActivity_Stc[2]["EventType"] = 144
		tPkActivity_Stc[2]["DataType"] = 49
		
		-- 15119血炼大乱斗玩家被传送出来时加30点血炼值
		-- 记录 清场被传送出来是否有加过血炼值
		tPkActivity_Stc["Extra"] = {}
		tPkActivity_Stc["Extra"]["EventType"] = 151
		tPkActivity_Stc["Extra"]["DataType"] = 19
		
		-- 记录玩家进入地图是否已经发放补给
		tPkActivity_Stc["IntoAward"] = {}
		tPkActivity_Stc["IntoAward"]["EventType"] = 178
		tPkActivity_Stc["IntoAward"]["DataType"] = 67
		
local	tPkActivity_Award = {}
		tPkActivity_Award[1] = {}
		tPkActivity_Award[1]["AddStc"] = 2
		tPkActivity_Award[1]["Data"] = 10
		tPkActivity_Award[1]["RewardItem"] = {}
		tPkActivity_Award[1]["RewardItem"][1] = {}
		tPkActivity_Award[1]["RewardItem"][1]["Id"] = 3008187
		tPkActivity_Award[1]["RewardItem"][1]["Attr"] = "0 1"
		tPkActivity_Award[1]["RewardEffect"] = {}
		tPkActivity_Award[1]["RewardEffect"]["SzObj"] = "self"
		tPkActivity_Award[1]["RewardEffect"]["Effect"] = "zf2-e128"
		tPkActivity_Award[1]["LogId"] =12000367

		tPkActivity_Award[2] = {}
		tPkActivity_Award[2]["AddStc"] = 4
		tPkActivity_Award[2]["Data"] = 20
		tPkActivity_Award[2]["RewardItem"] = {}
		tPkActivity_Award[2]["RewardItem"][1] = {}
		tPkActivity_Award[2]["RewardItem"][1]["Id"] = 3009001
		tPkActivity_Award[2]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
		tPkActivity_Award[2]["RewardEffect"] = {}
		tPkActivity_Award[2]["RewardEffect"]["SzObj"] = "self"
		tPkActivity_Award[2]["RewardEffect"]["Effect"] = "zf2-e128"
		tPkActivity_Award[2]["LogId"] = 12000367

		tPkActivity_Award[3] = {}
		tPkActivity_Award[3]["AddStc"] = 8
		tPkActivity_Award[3]["Data"] = 50
		tPkActivity_Award[3]["RewardItem"] = {}
		tPkActivity_Award[3]["RewardItem"][1] = {}
		tPkActivity_Award[3]["RewardItem"][1]["Id"] = 3304328
		tPkActivity_Award[3]["RewardItem"][1]["Attr"] = "0 1"
		tPkActivity_Award[3]["RewardEffect"] = {}
		tPkActivity_Award[3]["RewardEffect"]["SzObj"] = "self"
		tPkActivity_Award[3]["RewardEffect"]["Effect"] = "zf2-e128"
		tPkActivity_Award[3]["LogId"] =12000367

local	tPkActivity_TopAward = {}
		tPkActivity_TopAward[1] = 3000
		tPkActivity_TopAward[2] = 2000
		tPkActivity_TopAward[3] = 1500
		tPkActivity_TopAward[4] = 1200
		tPkActivity_TopAward[5] = 1200
		tPkActivity_TopAward[6] = 1000
		tPkActivity_TopAward[7] = 1000
		tPkActivity_TopAward[8] = 1000
		tPkActivity_TopAward[9] = 1000
		tPkActivity_TopAward[10] = 1000
		tPkActivity_TopAward[11] = 800
		tPkActivity_TopAward[12] = 800
		tPkActivity_TopAward[13] = 800
		tPkActivity_TopAward[14] = 800
		tPkActivity_TopAward[15] = 800
		tPkActivity_TopAward[16] = 800
		tPkActivity_TopAward[17] = 800
		tPkActivity_TopAward[18] = 800
		tPkActivity_TopAward[19] = 800
		tPkActivity_TopAward[20] = 800

local	tPkActivity_Monster = {}
		tPkActivity_Monster[3824] = {}
		tPkActivity_Monster[3824]["Data"] = 1

		tPkActivity_Monster[3825] = {}
		tPkActivity_Monster[3825]["Data"] = 100
		
		tPkActivity_Monster[4757] = {}
		tPkActivity_Monster[4757]["Data"] = 1


local	tPkActivity_Status = {}
		tPkActivity_Status[1] = {} --最终物理伤害加成 +1000
		tPkActivity_Status[1]["Id"] = 143
		tPkActivity_Status[1]["Power"] = 1000

		tPkActivity_Status[2] = {} --最终法术伤害加成 +1000
		tPkActivity_Status[2]["Id"] = 144
		tPkActivity_Status[2]["Power"] = 1000

		tPkActivity_Status[3] = {} --最终物理伤害减免 +1000
		tPkActivity_Status[3]["Id"] = 141
		tPkActivity_Status[3]["Power"] = 1000

		tPkActivity_Status[4] = {} --最终法术伤害减免 +1000
		tPkActivity_Status[4]["Id"] = 142
		tPkActivity_Status[4]["Power"] = 1000

		tPkActivity_Status[5] = {} --物理暴击 +10%
		tPkActivity_Status[5]["Id"] = 133
		tPkActivity_Status[5]["Power"] = 10

		tPkActivity_Status[6] = {} --法术暴击 +10%
		tPkActivity_Status[6]["Id"] = 134
		tPkActivity_Status[6]["Power"] = 10

local	tPkActivity_Log = {}
		tPkActivity_Log["Join"] = "0,0,0,0,12000367,1[1],0,0" --进场log
		-- tPkActivity_Log["Exp"] = "0,0,0,0,12000367,2[1],4,60" --领取60分钟经验
		-- tPkActivity_Log["Cultivation"] = "0,0,0,0,12000367,2[1],6,300" --领取300修行值
		-- tPkActivity_Log["StrengthValue"] = "0,0,0,0,12000367,2[1],12,500" --领取500气力值
		tPkActivity_Log["TopAward"] = "0,0,0,0,12000367,2[2],12,%s" --领取排名奖励
		tPkActivity_Log["AddValue"] = "0,0,0,0,12000367,3,%s,0" --打怪增加分数
		tPkActivity_Log["AddItem"] = "0,0,3200285,1,12000367,2,191405,1" --打开礼包
		tPkActivity_Log["IntoAward"] = "0,0,0,0,12000367,1[2],%d,1" --进入获得补给
		tPkActivity_Log["KillBoss"] = "0,0,0,0,12000367,1[3],0,0" --杀死BOSS

local tPkActivity_ELog = {}
	tPkActivity_ELog["Into"] = "350	21711	0	0	1	"
	
--隔天清掩码
function PkActivity_Nextday()
	for i = 1,2 do
		if Task_StcInterval(tPkActivity_Stc[i]["EventType"],tPkActivity_Stc[i]["DataType"],1,4) then
			Task_SetStatistic(tPkActivity_Stc[i]["EventType"],tPkActivity_Stc[i]["DataType"],0,1)
			Task_SetStcTimestamp(tPkActivity_Stc[i]["EventType"],tPkActivity_Stc[i]["DataType"],0)
		end
	end
end

--进入修罗场。
function PkActivity_Option1_11015(nNpcId)
	if not Sys_ChkFullTime(tActivityTime["PkActivity"]) then
		User_TalkChannel2005(tPkActivity_Text["End"])
		return
	end
	
	--判断等级
	if not User_JudgeLevelAndMetempsychosis(tPkActivity_Cont["Level"],tPkActivity_Cont["Metempsychosis"],nUserId) then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
--判断活动时间
	if not Sys_ChkDayTime(tPkActivity_Cont["Time"]) then
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end
--判断组队
	if Get_UserTeamNumbers() >= 2 then
		Sys_MsgBox(tPkActivity_Text["Team"])
		return
	end
--进活动地图
	PkActivity_Nextday()
	if Task_ChkStcValue(tPkActivity_Stc[1]["EventType"],tPkActivity_Stc[1]["DataType"],"==",0) then
		Task_SetStatistic(tPkActivity_Stc[1]["EventType"],tPkActivity_Stc[1]["DataType"],1,1)
		Task_SetStcTimestamp(tPkActivity_Stc[1]["EventType"],tPkActivity_Stc[1]["DataType"],0)
		Sys_SaveActionFestivalLog(tPkActivity_Log["Join"])
		Sys_SaveEmoneyBuy(tPkActivity_ELog["Into"])
	end
	User_TalkChannel2005(tPkActivity_Text[nNpcId][1])
	local nFlag = 1
	local nNum = math.random(1,8)
	if Get_UserBattleLevel() >= 300 then
		nFlag = 2
	end
	User_UserRandBoundTrans(tPkActivity_Cont["MapId"],tPkActivity_Cont["Chgmap"][nFlag][nNum][1],tPkActivity_Cont["Chgmap"][nFlag][nNum][2],5,5)
	
	PkActivity_Mail()
end

--领奖
function PkActivity_GetAward(nNpcId)
	if not Sys_ChkFullTime(tActivityTime["PkActivity"]) then
		User_TalkChannel2005(tPkActivity_Text["End"])
		return
	end
	
	--判断领奖时间
	if Sys_ChkDayTime(tPkActivity_Cont["Time"]) then
		LinkNpcGossipFunc_New(nNpcId,"4-2")
		return
	end
	
	local nUserId = Get_UserId()
	
	local nStc = Get_UserStatisticValue(tPkActivity_Stc[2]["EventType"],tPkActivity_Stc[2]["DataType"])
	local nGetStc = Get_UserStatisticValue(tPkActivity_Stc[1]["EventType"],tPkActivity_Stc[1]["DataType"])
	
	local bFlag = false
	
	local nSpace = 0
	
	--保存可以领取奖励的索引
	local tIndex = {}
	
	for i = 1, 3 do
		local nAddStc = tPkActivity_Award[i]["AddStc"]
		local nData = tPkActivity_Award[i]["Data"]
		if not Sys_ParseNumbersContain(nAddStc,nGetStc) and nStc >= nData then
			bFlag = true
			nSpace = nSpace + RewardTemplate_GetRewardSpace(tPkActivity_Award[i])
			table.insert(tIndex, i)
		end
	end
	
	--没可以领取的奖励
	if not bFlag then
		Sys_MsgBox(tPkActivity_Text[nNpcId][7])
		return
	end
	
	--判断背包空间
	if nSpace > 0 and (not User_CheckLeftSpace(nSpace,nUserId)) then
		Sys_MsgBox(string.format(tPkActivity_Text[nNpcId][8], nSpace))
		return
	end
	
	--打掩码给奖励
	for k,v in pairs(tIndex) do
		Task_AddStatistic(tPkActivity_Stc[1]["EventType"],tPkActivity_Stc[1]["DataType"],tPkActivity_Award[v]["AddStc"],1)
		Task_SetStcTimestamp(tPkActivity_Stc[1]["EventType"],tPkActivity_Stc[1]["DataType"],0)
		
		RewardTemplate_UseItemAndMsg(tPkActivity_Award[v])
	end
end

--领奖
function PkActivity_Option20_11015(nNpcId,nOption)
--判断领奖时间
	if Sys_ChkDayTime(tPkActivity_Cont["Time"]) then
		LinkNpcGossipFunc_New(nNpcId,"4-2")
		return
	end
--判断是否领奖
	PkActivity_Nextday()
	local nStc = Get_UserStatisticValue(tPkActivity_Stc[1]["EventType"],tPkActivity_Stc[1]["DataType"])
	if Sys_ParseNumbersContain(tPkActivity_Award[nOption]["AddStc"],nStc) then
		Sys_MsgBox(tPkActivity_Text[nNpcId][2])
		return
	end

--判断分数够不够
	local nStc = Get_UserStatisticValue(tPkActivity_Stc[2]["EventType"],tPkActivity_Stc[2]["DataType"])
	local nData = tPkActivity_Award[nOption]["Data"]
	if nStc < nData then
		local sText = string.format(tPkActivity_Text[nNpcId][3],nData)
		Sys_MsgBox(sText)
		return
	end
	
	--判断背包空间
	if not RewardTemplate_CheckSpace(tPkActivity_Award[nOption]) then
		return
	end
	
--打掩码给奖励
	Task_AddStatistic(tPkActivity_Stc[1]["EventType"],tPkActivity_Stc[1]["DataType"],tPkActivity_Award[nOption]["AddStc"],1)
	Task_SetStcTimestamp(tPkActivity_Stc[1]["EventType"],tPkActivity_Stc[1]["DataType"],0)
	
	RewardTemplate_UseItemAndMsg(tPkActivity_Award[nOption])
end

--点击确定
function PkActivity_Award(nNpcId)
	LinkNpcGossipFunc_New(nNpcId,"3-1")
end

--点击已领奖
function PkActivity_Option23_11015(nNpcId)
	Sys_MsgBox(tPkActivity_Text[nNpcId][2])
end

--排名表 格式为{玩家名字,分数,玩家ID,领奖情况,动态存储表ID}
function PkActivity_Top()
	local t = {}
	for i = 51143,51162 do
		local sName = Get_SysDynaGlobalDataStr0(i)
		local nData = Get_SysDynaGlobalData1(i)
		local nPlayId = Get_SysDynaGlobalData0(i)
		local nAward = Get_SysDynaGlobalData2(i)
		if nData > 0 then
			t[#t+1] ={sName,nData,nPlayId,nAward,i}
		end
	end
	table.sort(t,function(a,b) return a[2] > b[2] end)
	return t
end

--查看血炼龙虎榜
function PkActivity_Option3_11015(nNpcId,nFlag)
	local tTop = PkActivity_Top()
	if #tTop < 1 then
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return
	end

	local bFlag = false
	
--出对话
	Sys_DialogText(tPkActivity_Text[nNpcId]["Text331"])
	Sys_DialogText(tPkActivity_Text[nNpcId]["Text332"])
	Sys_DialogText(tPkActivity_Text[nNpcId]["Text333"])
	Sys_DialogText(tPkActivity_Text[nNpcId]["Text334"])
	local nNum = 0
	for i = nFlag,#tTop do
		local sLeft = string.format(tPkActivity_Text["Top"],i)
		local sMiddle = tTop[i][1]
		local sRight = tostring(tTop[i][2])
		local sLast = string.format(tPkActivity_Text["Award"] ,tPkActivity_TopAward[i])
		local nLeft = tPkActivity_Cont["Center"]["Left"]
		local nMiddle = tPkActivity_Cont["Center"]["Middle"]
		local nRight = tPkActivity_Cont["Center"]["Right"]
		local nLast = tPkActivity_Cont["Center"]["Last"]
		
		local sCenter = Sys_CenterAline(sLeft,nLeft,sMiddle,nMiddle,sRight,nRight,sLast,nLast)
		
		local sText = string.format(tPkActivity_Text[nNpcId]["Text335"],sCenter)
		Sys_DialogText(sText)
		nNum = nNum + 1
		if nNum >= 10 and nFlag <= 1 then
			break
		end
	end
	
	Sys_DialogText(tPkActivity_Text[nNpcId]["Text336"])
	
	if nNum >= 10 and nFlag <= 1 then
		Sys_DialogOption(tPkActivity_Text[nNpcId]["Option332"],"</F>PkActivity_Option3_11015</N>11015</N>11")
		bFlag = true
	end
	
	if nFlag >= 11 then
		Sys_DialogOption(tPkActivity_Text[nNpcId]["Option331"],"</F>PkActivity_Option3_11015</N>11015</N>1")
		bFlag = true
	end
	if Task_ChkStcValue(tPkActivity_Stc[1]["EventType"],tPkActivity_Stc[1]["DataType"],">",0) and Sys_ChkDayTime(tPkActivity_Cont["AwardTime"]) then
		Sys_DialogOption(tPkActivity_Text[nNpcId]["Option333"],"</F>PkActivity_Option40_11015</N>11015")
		bFlag = true
	end
	
	if not bFlag then
		Sys_DialogOption(tPkActivity_Text[nNpcId]["Option334"])
	end
	
	Sys_DialogFace(nNpcId)
	Sys_DialogEnd()

end

--领取龙虎榜大赏。
function PkActivity_Option33_11015(nNpcId)
	LinkNpcGossipFunc_New(nNpcId,"4-1")
end

--领取奖赏
function PkActivity_Option40_11015(nNpcId)
	if not Sys_ChkDayTime(tPkActivity_Cont["AwardTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"4-2")
		return
	end
	local tTop = PkActivity_Top()
	local nUserId = Get_UserId()
	for i = 1,#tTop do
		if nUserId == tTop[i][3] then
			if tTop[i][4] == 1 then
				LinkNpcGossipFunc_New(nNpcId,"4-3")
			else
				local nStrengthValue = tPkActivity_TopAward[i]
				local sText = string.format(tPkActivity_Text[nNpcId][5],nStrengthValue)
				local sLog = string.format(tPkActivity_Log["TopAward"],nStrengthValue)
				local sName = tTop[i][1]
				local sBroadcast = string.format(tPkActivity_Text[nNpcId][6],sName,i)
				Sys_SetSynaGlobalData2(tTop[i][5],1)
				User_AddStrengthValue(nStrengthValue)
				Sys_SaveActionFestivalLog(sLog)
				Sys_MsgBox(sText)
				Sys_GmBroadcast(sBroadcast)
				User_EffectAdd(tPkActivity_Cont["Effect"]["SzObj"],tPkActivity_Cont["Effect"]["Effect"])
			end
			return
		end
	end
	LinkNpcGossipFunc_New(nNpcId,"4-4")
end

--璇玑宝箱
function PkActivity_Box()
	local nUserId = Get_UserId()
	if Npc_DelDynaByID() then
		local nStatus = 18
		local nPower = 200
		
		if Sys_Random(600,1000) then
			local nNum = math.random(1,6)
			nStatus = tPkActivity_Status[nNum]["Id"]
			nPower = tPkActivity_Status[nNum]["Power"]
		end
		
		User_AddRoleStatus(nStatus,nPower,30,1,30,1,0,0,0,nUserId)
		
		User_TalkChannel2005(tPkActivity_Text["Status"][nStatus])
	end
end

----------------------------------------------------------------------
--排行榜操作
function PkActivity_Rank(nStc,nUserId)
--已在排行榜内，直接加分数
	for i = 51143,51162 do
		if nUserId == Get_SysDynaGlobalData0(i) then
			Sys_SetSynaGlobalData1(i,nStc)
			return
		end
	end

--排行榜人数未满，数据插入空位
	for i = 51143,51162 do
		if Get_SysDynaGlobalData1(i) == 0 then
			Sys_SetSynaGlobalData0(i,nUserId)
			Sys_SetSynaGlobalData1(i,nStc)
			Sys_SetSynaGlobalDataStr0(i,Get_UserName(nUserId))
			return
		end
	end

--排行榜人数已满，把分数最低的盖掉
	local tTop = PkActivity_Top()
	if nStc > tTop[#tTop][2] then
		Sys_SetSynaGlobalData0(tTop[#tTop][5],nUserId)
		Sys_SetSynaGlobalData1(tTop[#tTop][5],nStc)
		Sys_SetSynaGlobalDataStr0(tTop[#tTop][5],Get_UserName(nUserId))
		return
	end
end

--怪物掉落坐标调整
function PkActivity_PositionAdjustment(nNowPosX, nNowPosY)
	local nPosX = nNowPosX
	local nPosY = nNowPosY
	
	local nMinPosX = tPkActivity_Cont["MonsterPos"]["MinPosX"]
	local nMaxPosX =tPkActivity_Cont["MonsterPos"]["MaxPosX"]
	local nMinPosY = tPkActivity_Cont["MonsterPos"]["MinPosY"]
	local nMaxPosY= tPkActivity_Cont["MonsterPos"]["MaxPosY"]
	
	if nPosX > nMaxPosX then
		nPosX = nMaxPosX
	end
	
	if nPosX < nMinPosX then
		nPosX = nMinPosX
	end
	
	if nPosY > nMaxPosY then
		nPosY = nMaxPosY
	end
	
	if nPosY < nMinPosY then
		nPosY = nMinPosY
	end
	
	return nPosX, nPosY
end

--怪物
function PkActivity_Monster(nMonsterTypeId)
	--判断活动时间
	if not Sys_ChkFullTime(tActivityTime["PkActivity"]) then
		return
	end
	
	if not Sys_ChkDayTime(tPkActivity_Cont["Time"]) then
		return
	end
	local nEventType = tPkActivity_Stc[2]["EventType"]
	local nDataType = tPkActivity_Stc[2]["DataType"]
	local nData = tPkActivity_Monster[nMonsterTypeId]["Data"]
	local nStc = Get_UserStatisticValue(nEventType,nDataType) + nData
	local sLog = string.format(tPkActivity_Log["AddValue"],nData)
	local nUserId = Get_UserId()
	local nMapId = Get_UserMapId()
	local nPosX = Get_UserPositionX() - 1
	local nPosY = Get_UserPositionY() - 1
	Task_SetStatistic(nEventType,nDataType,nStc,1)
	Task_SetStcTimestamp(nEventType,nDataType,0)
	Sys_SaveActionFestivalLog(sLog)
	User_TalkChannel2005(string.format(tPkActivity_Text[nMonsterTypeId][1], nStc))
--1.5%概率刷出宝箱
	if nMonsterTypeId == 3824 or nMonsterTypeId == 4757 then
		if Sys_Random(15,1000) then
			if Get_NpcCountByName(tPkActivity_Text["NpcName"]) < 1 then
				Npc_CreateDynaNpc(tPkActivity_Text["NpcName"],2,1,40940,0,0,nMapId,nPosX,nPosY,0,0,0,94474201)
			end
		end
	end
	if nMonsterTypeId == 3825 then
		
		--随机排序
		local tTemp = {}
		local tRandom = {}
		for k,v in pairs(tPkActivity_Cont["Drop"]["Pos"]) do
			table.insert(tTemp, k)
		end
		
		for k,v in pairs(tPkActivity_Cont["Drop"]["Pos"]) do
			local nNum = math.random(1,#tTemp)
			table.insert(tRandom,tTemp[nNum])
			table.remove(tTemp,nNum)
		end
		
		local nMonsterPosX = Get_MonsterPosX()
		local nMonsterPosY = Get_MonsterPosY()
		
		nMonsterPosX, nMonsterPosY = PkActivity_PositionAdjustment(nMonsterPosX, nMonsterPosY)
		
		local nCount = 0
		
		for i = 1, #tPkActivity_Cont["Drop"]["Id"] do
			for j = 1, tPkActivity_Cont["Drop"]["Num"][i] do
				if i == 8 then
					if Sys_Random(100,10000) then
						Monster_SysDropItem(tPkActivity_Cont["Drop"]["Id"][i])
					end
				elseif i >= 3 then
					nCount = nCount + 1
					
					local nIndex = tRandom[nCount]
					local nPosX = nMonsterPosX + tPkActivity_Cont["Drop"]["Pos"][nIndex][1]
					local nPosY = nMonsterPosY + tPkActivity_Cont["Drop"]["Pos"][nIndex][2]
					
					Map_DropMultiItems(nMapId,tPkActivity_Cont["Drop"]["Id"][i],nPosX, nPosY,1,1,1,60)
				else
					--Monster_SysDropMoney(tPkActivity_Cont["Drop"]["Id"][i])
				end
			end
		end
		
		Sys_SaveActionRewardLog(tPkActivity_Log["KillBoss"])
	end
	
	PkActivity_Rank(nStc,nUserId)
end

--杀人触发
function PkActivity_PkUser(nUserId,nTargetId)
--判断时间和地点
	if not Sys_ChkDayTime(tPkActivity_Cont["Time"]) or not Sys_ChkFullTime(tActivityTime["PkActivity"]) or Get_UserMapId(nUserId) ~= tPkActivity_Cont["MapId"] then
		return
	end
	local nEventType = tPkActivity_Stc[2]["EventType"]
	local nDataType = tPkActivity_Stc[2]["DataType"]
	
	--杀人者
	local nData = 10
	local nStc = Get_UserStatisticValue(nEventType,nDataType,nUserId) + nData
	local sLog = string.format(tPkActivity_Log["AddValue"],nData)
	Task_SetStatistic(nEventType,nDataType,nStc,1,nUserId)
	Task_SetStcTimestamp(nEventType,nDataType,0,nUserId)
	Sys_SaveActionFestivalLog(sLog,nUserId)
	User_TalkChannel2005(tPkActivity_Text["PkUser"],nUserId)
	PkActivity_Rank(nStc,nUserId)
	
	--被杀者
	Task_AddStatistic(nEventType,nDataType,3,1,nTargetId)
	Task_SetStcTimestamp(nEventType,nDataType,0,nTargetId)
	sLog = string.format(tPkActivity_Log["AddValue"],3)
	Sys_SaveActionFestivalLog(sLog,nTargetId)
	User_TalkChannel2005(tPkActivity_Text["PkBeKill"],nTargetId)
	PkActivity_Rank(Get_UserStatisticValue(nEventType,nDataType,nTargetId),nTargetId)
end

--清动态存储表数据
function PkActivity_Timechk()
	for i = 51143,51162 do
		Sys_ResetAllSynaGlobalData(i)
		Sys_ResetAllSynaGlobalDataStr(i)
	end
end

--清场
function PkActivity_Clean()
	Map_SendBroadcastMsg(tPkActivity_Cont["MapId"],tPkActivity_Text["Clean"])
	Map_UserExeFunc(tPkActivity_Cont["MapId"],-1,"PkActivity_CleanChgMap")
	
	local nMonsterNum = Get_SysTempData(1,tPkActivity_Cont["MapId"],tPkActivity_Cont["MonsterId"])
	
	if nMonsterNum >= 1 then
		Monster_DelMonster(tPkActivity_Cont["MapId"],tPkActivity_Cont["MonsterId"])
		Sys_SetTempData(1,tPkActivity_Cont["MapId"],tPkActivity_Cont["MonsterId"],0)
	end
end

-- 清场回到双龙城
function PkActivity_CleanChgMap(nNowUserId)
	local nNowUserId = nNowUserId or Get_UserId()
	if Get_UserMapId(nNowUserId) ~= tPkActivity_Cont["MapId"] then
		return
	end
	
	User_UserRandBoundTrans(tPkActivity_Cont["TwinCity"],tPkActivity_Cont["TwinCityPosX"],tPkActivity_Cont["TwinCityPosY"],10,10,0,nNowUserId)
	local sFunc = "PkActivity_ChgToCity"
	Sys_MsgBox(tPkActivity_Text["ChangeMap"],sFunc,nil,nNowUserId)
	
	-- 血炼大乱斗玩家被传送出来时加30点血炼值
	-- 在修罗场内坚持到战斗结束的侠士可得30点血炼值。
	-- 15119记录 清场被传送出来是否有加过血炼值
	local nEvent = tPkActivity_Stc["Extra"]["EventType"]
	local nType = tPkActivity_Stc["Extra"]["DataType"]
	if Task_StcInterval(nEvent,nType,1,4,nNowUserId) then
		Task_SetStatistic(nEvent,nType,0,1,nNowUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nNowUserId)
	end
	
	if Task_ChkStcValue(nEvent,nType,">=",1,nNowUserId) then
		return
	end
	
	local nEventType = tPkActivity_Stc[2]["EventType"]
	local nDataType = tPkActivity_Stc[2]["DataType"]
	local nData = 30
	local nStc = Get_UserStatisticValue(nEventType,nDataType,nNowUserId) + nData
	
	Task_SetStatistic(nEvent,nType,1,1,nNowUserId)
	Task_SetStcTimestamp(nEvent,nType,0,nNowUserId)
	
	Task_SetStatistic(nEventType,nDataType,nStc,1,nNowUserId)
	Task_SetStcTimestamp(nEventType,nDataType,0,nNowUserId)
	
	local sLog = string.format(tPkActivity_Log["AddValue"],nData)
	Sys_SaveActionFestivalLog(sLog,nNowUserId)
	
	User_TalkChannel2005(tPkActivity_Text["Extra"],nNowUserId)
	PkActivity_Rank(nStc,nNowUserId)
	
end

function PkActivity_Clean_2(nNowUserId)
	if Get_UserMapId(nNowUserId) ~= tPkActivity_Cont["MapId"] then
		return
	end
	local nNum = math.random(1,8)
	User_UserRandBoundTrans(tPkActivity_Cont["MapId1"],tPkActivity_Cont["Invite_Pos"][nNum]["X"],tPkActivity_Cont["Invite_Pos"][nNum]["Y"],10,10,0,nNowUserId)
end

-- 回到双龙城
function PkActivity_ChgMap(nNowUserId)
	nNowUserId = nNowUserId or Get_UserId()
	if Get_UserMapId(nNowUserId) ~= tPkActivity_Cont["MapId"] then
		return
	end
	
	User_UserRandBoundTrans(tPkActivity_Cont["TwinCity"],tPkActivity_Cont["TwinCityPosX"],tPkActivity_Cont["TwinCityPosY"],10,10,0,nNowUserId)
	
end

-- 寻路到npc
function PkActivity_ChgToCity(nNowUserId)
	if Get_UserMapId(nNowUserId) ~= tPkActivity_Cont["TwinCity"] then
		return
	end
	
	NpcPosition_PathFind(11015)
end

--动态刷boss
function PkActivity_AddMonster()

	Monster_DelMonster(tPkActivity_Cont["MapId"],3825)
	Monster_AddAndCount(tPkActivity_Cont["MapId"],166,175,18900,3825)
	Map_SendBroadcastMsg(tPkActivity_Cont["MapId"],tPkActivity_Text["Boss"])

end

--全服公告
function PkActivity_Broadcast()
	local nNpcId = tPkActivity_Cont["Npc"]
	local nPosX = Get_NpcPositionX(nNpcId)
	local nPosY = Get_NpcPositionY(nNpcId)
	local sName = Get_NpcName(nNpcId)
	
	Sys_GmBroadcast(string.format(tPkActivity_Text["Broadcast"], sName, nPosX, nPosY))
	Sys_InviteFilter(2,"level >= 100")
	Sys_InviteTrans(tPkActivity_Cont["MapId1"],tPkActivity_Cont["Invite_Pos"],10579,10580,2,30)
end

--打开礼包
function PkActivity__Item3200285(nItemId,sItemName)
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		Item_AddNewItem(tPkActivity_Cont[nItemId]["Item"],tPkActivity_Cont[nItemId]["Attr"])
		User_TalkChannel2005(tPkActivity_Text[nItemId][1])
		Sys_SaveActionFestivalLog(tPkActivity_Log["AddItem"])
	end
end

--邮件发奖
function PkActivity_Mail(nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	
	local nEvent = tPkActivity_Stc["IntoAward"]["EventType"]
	local nType = tPkActivity_Stc["IntoAward"]["DataType"]
	
	--隔天清零
	Task_StcReset(nEvent,nType,nUserId)
	
	--判断是否已发
	if Task_ChkStcValue(nEvent,nType,">=",1,nUserId) then
		return
	end
	
	local nExistDay = tPkActivity_Cont["Mail"]["ExistDay"]
	local nActionId = tPkActivity_Cont["Mail"]["ActionId"]
	local nItemId = tPkActivity_Cont["Mail"]["ItemId"]
	local sSender = tPkActivity_Text["Mail"]["Sender"]
	local sTitle = tPkActivity_Text["Mail"]["Title"]
	local sContent = tPkActivity_Text["Mail"]["Content"]
	
	Task_AddStatistic(nEvent,nType,1,1,nUserId)
	
	--发邮件
	Sys_SendMail(nUserId,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent)
	
	Sys_SaveActionRewardLog(string.format(tPkActivity_Log["IntoAward"], nItemId),nUserId)
end

----------------------------------------------------------------------
--精武大侠
tNpcFace[6096] = 52
tNpcGossip[11015] = tNpcGossip[11015] or DefaultNpc:new{}
tNpcGossip[11015]["DialogueText"] = tPkActivity_Text[11015]
tNpcGossip[11015]["OptionHidden"] = 1

--精武大侠()传送
tNpcGossip[11016] = tNpcGossip[11016] or DefaultNpc:new{}
tNpcGossip[11016]["DialogueText"] = tPkActivity_Text[11016]
tNpcGossip[11016]["OptionHidden"] = 1

--主对白
tNpcGossip[11015]["Text1-1"] = {111,112,113,114,115,116,117,118,119,1110}
tNpcGossip[11015]["tOption1-1"] = {111,112,113,114,115,116}

tNpcGossip[11015]["ChkFunc1-1"] = function ()
	if not Sys_ChkDayTime(tPkActivity_Cont["Time"]) and not Sys_ChkDayTime(tPkActivity_Cont["AwardTime"]) then
		tNpcGossip[11015]["Text1-1"] = {111,112,114,115,116,117,118,119,1110}
	else
		tNpcGossip[11015]["Text1-1"] = {111,113,114,115,116,117,118,119,1110}
	end
	
	if User_JudgeLevelAndMetempsychosis(tPkActivity_Cont["Level"],tPkActivity_Cont["Metempsychosis"]) then
		table.remove(tNpcGossip[11015]["Text1-1"], 7)
	end
	
	return true
end
tNpcGossip[11015]["OptionFunc113"]="PkActivity_Option1_11015</N>11015"
tNpcGossip[11015]["OptionPoint114"]="3-1"
tNpcGossip[11015]["OptionFunc115"]="PkActivity_Option3_11015</N>11015</N>1"
tNpcGossip[11015]["OptionPoint116"]="5-1"

tNpcGossip[11015]["OptionChkFunc111"] = function ()
	return not Sys_ChkDayTime(tPkActivity_Cont["Time"]) and not Sys_ChkDayTime(tPkActivity_Cont["AwardTime"])
end
tNpcGossip[11015]["OptionChkFunc112"] = function ()
	return Sys_ChkDayTime(tPkActivity_Cont["Time"]) and not User_JudgeLevelAndMetempsychosis(tPkActivity_Cont["Level"],tPkActivity_Cont["Metempsychosis"])
end
tNpcGossip[11015]["OptionChkFunc113"] = function ()
	return Sys_ChkDayTime(tPkActivity_Cont["Time"]) and User_JudgeLevelAndMetempsychosis(tPkActivity_Cont["Level"],tPkActivity_Cont["Metempsychosis"])
end
tNpcGossip[11015]["OptionChkFunc114"] = function ()
	PkActivity_Nextday()
	return Sys_ChkDayTime(tPkActivity_Cont["AwardTime"]) and User_JudgeLevelAndMetempsychosis(tPkActivity_Cont["Level"],tPkActivity_Cont["Metempsychosis"]) and Task_ChkStcValue(tPkActivity_Stc[1]["EventType"],tPkActivity_Stc[1]["DataType"],">",0)
end
tNpcGossip[11015]["OptionChkFunc115"] = function ()
	return Sys_ChkDayTime(tPkActivity_Cont["AwardTime"]) and User_JudgeLevelAndMetempsychosis(tPkActivity_Cont["Level"],tPkActivity_Cont["Metempsychosis"])
end
tNpcGossip[11015]["OptionChkFunc116"] = function ()
	return Sys_ChkDayTime(tPkActivity_Cont["Time"]) and User_JudgeLevelAndMetempsychosis(tPkActivity_Cont["Level"],tPkActivity_Cont["Metempsychosis"])
end

--等级不够
tNpcGossip[11015]["Text2-1"] = {211}
tNpcGossip[11015]["tOption2-1"] = {211}

--领取大奖
tNpcGossip[11015]["Text3-1"] = {311,312,313,314,315,316,317,318}
tNpcGossip[11015]["ChkFunc3-1"] = function ()
	local nStc = Get_UserStatisticValue(tPkActivity_Stc[2]["EventType"],tPkActivity_Stc[2]["DataType"])
	tNpcGossip[11015]["Text318"] = string.format(tPkActivity_Text[11015]["Text318"],nStc)
	
	local nGetStc = Get_UserStatisticValue(tPkActivity_Stc[1]["EventType"],tPkActivity_Stc[1]["DataType"])
	
	local bFlag = false
	
	for i = 1, 3 do
		local nAddStc = tPkActivity_Award[i]["AddStc"]
		local nData = tPkActivity_Award[i]["Data"]
		local sText = ""
		if Sys_ParseNumbersContain(nAddStc,nGetStc) then
			sText = tPkActivity_Text["Get"]["Already"]
		elseif nStc >= nData then
			sText = tPkActivity_Text["Get"]["NotGet"]
			bFlag = true
		else
			sText = tPkActivity_Text["Get"]["Not"]
		end
		
		tNpcGossip[11015]["Text31"..(i + 3)] = string.format(tPkActivity_Text[11015]["Text31"..(i + 3)], sText)
	end
	
	if bFlag then
		tNpcGossip[11015]["tOption3-1"] = {311}
	else
		tNpcGossip[11015]["tOption3-1"] = {312}
	end
	
	return true
end
tNpcGossip[11015]["tOption3-1"] = {311,312}
tNpcGossip[11015]["OptionFunc311"]="PkActivity_GetAward</N>11015"


--查看血炼龙虎榜
tNpcGossip[11015]["Text3-2"] = {321}
tNpcGossip[11015]["tOption3-2"] = {321}

--龙虎榜大赏
-- tNpcGossip[11015]["Text4-1"] = {411,412,413,414,415,416,417,418,419,4110,4111}
-- tNpcGossip[11015]["tOption4-1"] = {411}
-- tNpcGossip[11015]["OptionFunc411"]="PkActivity_Option40_11015</N>11015"

--不在领奖时间内
tNpcGossip[11015]["Text4-2"] = {421}
tNpcGossip[11015]["tOption4-2"] = {421}

--已领奖
tNpcGossip[11015]["Text4-3"] = {431}
tNpcGossip[11015]["tOption4-3"] = {431}

--没有名次
tNpcGossip[11015]["Text4-4"] = {441}
tNpcGossip[11015]["tOption4-4"] = {441}

--了解详情
tNpcGossip[11015]["Text5-1"] = {511,512,513,514,515,516,517,518}
tNpcGossip[11015]["tOption5-1"] = {511}

--传送npc
--主对白
tNpcGossip[11016]["Text1-1"] = {111,112,113,114,115,116,117,118,119}
tNpcGossip[11016]["tOption1-1"] = {111,112}

tNpcGossip[11016]["ChkFunc1-1"] = function ()
	PkActivity_Nextday()
	local nStc = Get_UserStatisticValue(tPkActivity_Stc[2]["EventType"],tPkActivity_Stc[2]["DataType"])
	tNpcGossip[11016]["Text119"] = string.format(tPkActivity_Text[11016]["Text119"],nStc)
	return true
end
tNpcGossip[11016]["OptionFunc111"]="PkActivity_ChgMap</N>0"
tNpcGossip[11016]["OptionFunc112"]="PkActivity_Option3_11015</N>11015</N>1"

--杀人触发
tUserKilled["tFunction"] = tUserKilled["tFunction"] or {}
table.insert(tUserKilled["tFunction"],PkActivity_PkUser)

--物品
tItem[3200285] = tItem[3200285] or {}
tItem[3200285]["Function"] = function(nItemId,sItemName)
	PkActivity__Item3200285(nItemId,sItemName)
end

---------------------------------------------怪物模块---------------------------------------------

-- local tPkActivity_KillMonster = {}
	-- tPkActivity_KillMonster["Function"] = PkActivity_Monster
	-- tPkActivity_KillMonster["MonsterId"] = {3824,3825,4757}

-- table.insert(tMonsterDrop_AreaLoad,tPkActivity_KillMonster)

---------------------------------------------时间自检---------------------------------------------

-- local tPkActivity_TimeChk = {}
	-- --清排行榜数据
	-- tPkActivity_TimeChk[1] = {}
	-- tPkActivity_TimeChk[1]["ActivityTime"] = tActivityTime["PkActivity"]
	-- tPkActivity_TimeChk[1]["TimeType"] = 4
	-- tPkActivity_TimeChk[1]["Time"] = "00:00 00:02"
	-- tPkActivity_TimeChk[1]["Func"] = PkActivity_Timechk
-- table.insert(tSystemTime_InitialData,tPkActivity_TimeChk[1])
	-- --清场
	-- tPkActivity_TimeChk[2] = {}
	-- tPkActivity_TimeChk[2]["ActivityTime"] = tActivityTime["PkActivity"]
	-- tPkActivity_TimeChk[2]["TimeType"] = 4
	-- tPkActivity_TimeChk[2]["Time"] = "19:46 19:48"
	-- tPkActivity_TimeChk[2]["Func"] = PkActivity_Clean
-- table.insert(tSystemTime_InitialData,tPkActivity_TimeChk[2])
	-- --动态刷怪
	-- tPkActivity_TimeChk[3] = {}
	-- tPkActivity_TimeChk[3]["ActivityTime"] = tActivityTime["PkActivity"]
	-- tPkActivity_TimeChk[3]["TimeType"] = 4
	-- tPkActivity_TimeChk[3]["Multiple"] = {}
	-- tPkActivity_TimeChk[3]["Multiple"][1]  = "19:30 19:30"
	-- tPkActivity_TimeChk[3]["Multiple"][2] = "19:35 19:35"
	-- tPkActivity_TimeChk[3]["Multiple"][3] = "19:40 19:40"
	-- tPkActivity_TimeChk[3]["Func"] = PkActivity_AddMonster
-- table.insert(tSystemTime_InitialData,tPkActivity_TimeChk[3])
	-- --全服公告
	-- tPkActivity_TimeChk[4] = {}
	-- tPkActivity_TimeChk[4]["ActivityTime"] = tActivityTime["PkActivity"]
	-- tPkActivity_TimeChk[4]["TimeType"] = 4
	-- tPkActivity_TimeChk[4]["Time"] = "19:29 19:29"
	-- tPkActivity_TimeChk[4]["Func"] = PkActivity_Broadcast
-- table.insert(tSystemTime_InitialData,tPkActivity_TimeChk[4])


