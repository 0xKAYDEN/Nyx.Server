------------------------------------------------------------------------------------
--Name:		160601[简体征服][活动脚本]2016奥运会活动之吉祥物赛跑
--Creator: 	兰瑞妹
--Created:	2016/06/10
------------------------------------------------------------------------------------

-- 命名前缀
-- OlympicGames_MascotGarden_

-- #stc 掩码说明 
-- #stc(146,65) 每日进入地图 ==1完成任务
-- #stc(146,66) 玩家积分 ==100才可以领奖
-- #stc(146,67) 记录领奖 ==1表示已经领奖
-- 
-- GlobalId 51272
-- 积分排行榜
-- 记录1,3,5,7,9,11,13,15,17,19,21
-- 玩家数据	data0	记录玩家ID			datastr0	玩家名称
		--  data1	记录玩家积分/时间	datastr1	玩家是否领奖 0 未领 1 已领
-- 记录2,4,6,8,10,12,14,16,18,20,22
-- 玩家数据	data2	记录玩家ID			datastr2	玩家名称
		--  data3	记录玩家积分/时间	datastr3	玩家是否领奖 0 未领 1 已领	
-- datastr5 记录本天清理
-- taskid 3702


-- 常量表
local tOlympicGames_MascotGarden_Count = {}
	-- 活动时间
	tOlympicGames_MascotGarden_Count["BeforeActivityTime"] = "2016-01-01 00:00 2016-08-04 23:59"
	tOlympicGames_MascotGarden_Count["ActivityTime"] = "2016-08-05 00:00 2016-08-22 23:59"
	-- 领取奖励
	tOlympicGames_MascotGarden_Count["AwardTime"] = "2016-08-06 00:00 2016-08-23 23:59"
	-- 清理时间s
	tOlympicGames_MascotGarden_Count["ClearGlobalTime"] = "2016-08-07 00:00 2016-08-24 23:59"
	
	tOlympicGames_MascotGarden_Count["ClearTime"] = "00:00 00:02"
	-- 玩家等级要求
	tOlympicGames_MascotGarden_Count["Metempsychosis"] = 0
	tOlympicGames_MascotGarden_Count["Level"] = 80
	
	-- 记录昨日排名和今日排名
	tOlympicGames_MascotGarden_Count["GlobalId"] = 51272
	
	--节日欢庆礼包
	tOlympicGames_MascotGarden_Count["FestivalId"] = 3706
	tOlympicGames_MascotGarden_Count["LogId"] = 12000442
	
	-- 陷阱的起始id
	tOlympicGames_MascotGarden_Count["TrapTypeId"] = 1450
	-- 陷阱分数
	tOlympicGames_MascotGarden_Count["GetScore"] = 10
	-- 倒计时
	tOlympicGames_MascotGarden_Count["TimeDelay"] = 30
	-- 陷阱间隔
	tOlympicGames_MascotGarden_Count["DisTrapIndex"] = 63
	
-- Log表
local tOlympicGames_MascotGarden_Log = {}
	-- 进入地图
	tOlympicGames_MascotGarden_Log["EnterGarden"] = "0,0,0,0,12000442,1[1],0,0"
	-- 完成任务
	tOlympicGames_MascotGarden_Log["FinishTask"] = "0,0,0,0,12000442,1[2],0,0"
	
-- stc掩码
local tOlympicGames_MascotGarden_Stc = {}
	-- 每日进入地图
	tOlympicGames_MascotGarden_Stc[1] = {}
	tOlympicGames_MascotGarden_Stc[1]["EventType"] = 146
	tOlympicGames_MascotGarden_Stc[1]["DataType"] = 65
	tOlympicGames_MascotGarden_Stc[1]["RewardData"] = 1
	-- 玩家积分
	tOlympicGames_MascotGarden_Stc[2] = {}
	tOlympicGames_MascotGarden_Stc[2]["EventType"] = 146
	tOlympicGames_MascotGarden_Stc[2]["DataType"] = 66
	tOlympicGames_MascotGarden_Stc[2]["RewardData"] = 100
	-- 记录领奖
	tOlympicGames_MascotGarden_Stc[3] = {}
	tOlympicGames_MascotGarden_Stc[3]["EventType"] = 146
	tOlympicGames_MascotGarden_Stc[3]["DataType"] = 67
	tOlympicGames_MascotGarden_Stc[3]["RewardData"] = 1
	
-- 特效
local tOlympicGames_MascotGarden_Effect = {}
	-- 进图
	tOlympicGames_MascotGarden_Effect[1] = {}
	tOlympicGames_MascotGarden_Effect[1]["EffectObj"] = "self"
	tOlympicGames_MascotGarden_Effect[1]["Effect"] = "moveback"
	-- 出图
	tOlympicGames_MascotGarden_Effect[2] = {}
	tOlympicGames_MascotGarden_Effect[2]["EffectObj"] = "self"
	tOlympicGames_MascotGarden_Effect[2]["Effect"] = "movego"
	-- 吃积分
	tOlympicGames_MascotGarden_Effect[3] = {}
	tOlympicGames_MascotGarden_Effect[3]["EffectObj"] = "self"
	tOlympicGames_MascotGarden_Effect[3]["Effect"] = "fam_gain"

-- 地图传送点
local tOlympicGames_MascotGarden_ChgMap = {}
	-- 吉祥物乐园
	tOlympicGames_MascotGarden_ChgMap[1] = {}
	tOlympicGames_MascotGarden_ChgMap[1]["MapId"] = 10027
	tOlympicGames_MascotGarden_ChgMap[1]["PosX"] = 146
	tOlympicGames_MascotGarden_ChgMap[1]["PosY"] = 75
	tOlympicGames_MascotGarden_ChgMap[1]["Range"] = 5
	tOlympicGames_MascotGarden_ChgMap[1]["Effect"] = 1
	tOlympicGames_MascotGarden_ChgMap[1]["MsgBox"] = "EnterGarden"
	-- 传送出去
	tOlympicGames_MascotGarden_ChgMap[2] = {}
	tOlympicGames_MascotGarden_ChgMap[2]["MapId"] = 1002
	tOlympicGames_MascotGarden_ChgMap[2]["PosX"] = 298
	tOlympicGames_MascotGarden_ChgMap[2]["PosY"] = 379
	tOlympicGames_MascotGarden_ChgMap[2]["Range"] = 5
	tOlympicGames_MascotGarden_ChgMap[2]["Effect"] = 2
	tOlympicGames_MascotGarden_ChgMap[2]["Talk"] = "TimeUp"
	
local tOlympicGames_MascotGarden_Form = {}
	tOlympicGames_MascotGarden_Form["SkillType"] = 12820
	tOlympicGames_MascotGarden_Form["SkillLevel"] = 0
	tOlympicGames_MascotGarden_Form["MonsterType"] = 2355
	
-- 陷阱每分钟刷新位置
local tOlympicGames_MascotGarden_TrapPos = {}
	tOlympicGames_MascotGarden_TrapPos[1] = {134,186}
	tOlympicGames_MascotGarden_TrapPos[2] = {143,185}
	tOlympicGames_MascotGarden_TrapPos[3] = {151,185}
	tOlympicGames_MascotGarden_TrapPos[4] = {160,186}
	tOlympicGames_MascotGarden_TrapPos[5] = {143,177}
	tOlympicGames_MascotGarden_TrapPos[6] = {135,175}
	tOlympicGames_MascotGarden_TrapPos[7] = {137,169}
	tOlympicGames_MascotGarden_TrapPos[8] = {145,168}
	tOlympicGames_MascotGarden_TrapPos[9] = {152,168}
	tOlympicGames_MascotGarden_TrapPos[10] = {158,167}
	tOlympicGames_MascotGarden_TrapPos[11] = {153,160}
	tOlympicGames_MascotGarden_TrapPos[12] = {144,073}
	tOlympicGames_MascotGarden_TrapPos[13] = {136,072}
	tOlympicGames_MascotGarden_TrapPos[14] = {137,066}
	tOlympicGames_MascotGarden_TrapPos[15] = {145,065}
	tOlympicGames_MascotGarden_TrapPos[16] = {151,064}
	tOlympicGames_MascotGarden_TrapPos[17] = {159,065}
	tOlympicGames_MascotGarden_TrapPos[18] = {133,087}
	tOlympicGames_MascotGarden_TrapPos[19] = {151,138}
	tOlympicGames_MascotGarden_TrapPos[20] = {144,136}
	tOlympicGames_MascotGarden_TrapPos[21] = {150,136}
	tOlympicGames_MascotGarden_TrapPos[22] = {158,138}
	tOlympicGames_MascotGarden_TrapPos[23] = {152,129}
	tOlympicGames_MascotGarden_TrapPos[24] = {143,127}
	tOlympicGames_MascotGarden_TrapPos[25] = {135,125}
	tOlympicGames_MascotGarden_TrapPos[26] = {137,121}
	tOlympicGames_MascotGarden_TrapPos[27] = {144,121}
	tOlympicGames_MascotGarden_TrapPos[28] = {154,121}
	tOlympicGames_MascotGarden_TrapPos[29] = {134,111}
	tOlympicGames_MascotGarden_TrapPos[30] = {141,111}
	tOlympicGames_MascotGarden_TrapPos[31] = {141,132}
	tOlympicGames_MascotGarden_TrapPos[32] = {144,147}
	tOlympicGames_MascotGarden_TrapPos[33] = {150,146}
	tOlympicGames_MascotGarden_TrapPos[34] = {158,147}
	tOlympicGames_MascotGarden_TrapPos[35] = {153,117}
	tOlympicGames_MascotGarden_TrapPos[36] = {146,116}
	tOlympicGames_MascotGarden_TrapPos[37] = {140,116}
	tOlympicGames_MascotGarden_TrapPos[38] = {134,116}
	tOlympicGames_MascotGarden_TrapPos[39] = {138,107}
	tOlympicGames_MascotGarden_TrapPos[40] = {147,107}
	tOlympicGames_MascotGarden_TrapPos[41] = {155,108}
	tOlympicGames_MascotGarden_TrapPos[42] = {154,100}
	tOlympicGames_MascotGarden_TrapPos[43] = {146,099}
	tOlympicGames_MascotGarden_TrapPos[44] = {138,098}
	tOlympicGames_MascotGarden_TrapPos[45] = {136,090}
	tOlympicGames_MascotGarden_TrapPos[46] = {143,090}
	tOlympicGames_MascotGarden_TrapPos[47] = {151,089}
	tOlympicGames_MascotGarden_TrapPos[48] = {158,090}
	tOlympicGames_MascotGarden_TrapPos[49] = {152,084}
	tOlympicGames_MascotGarden_TrapPos[50] = {144,082}
	tOlympicGames_MascotGarden_TrapPos[51] = {137,081}
	tOlympicGames_MascotGarden_TrapPos[52] = {138,075}
	tOlympicGames_MascotGarden_TrapPos[53] = {144,074}
	tOlympicGames_MascotGarden_TrapPos[54] = {151,074}
	tOlympicGames_MascotGarden_TrapPos[55] = {156,073}
	tOlympicGames_MascotGarden_TrapPos[56] = {152,066}
	tOlympicGames_MascotGarden_TrapPos[57] = {145,064}
	tOlympicGames_MascotGarden_TrapPos[58] = {138,062}
	tOlympicGames_MascotGarden_TrapPos[59] = {132,058}
	tOlympicGames_MascotGarden_TrapPos[60] = {132,050}
	tOlympicGames_MascotGarden_TrapPos[61] = {138,049}
	tOlympicGames_MascotGarden_TrapPos[62] = {145,040}
	tOlympicGames_MascotGarden_TrapPos[63] = {137,043}
	
	tOlympicGames_MascotGarden_TrapPos[64] = {147,110}
	tOlympicGames_MascotGarden_TrapPos[65] = {153,110}
	tOlympicGames_MascotGarden_TrapPos[66] = {156,104}
	tOlympicGames_MascotGarden_TrapPos[67] = {149,103}
	tOlympicGames_MascotGarden_TrapPos[68] = {141,102}
	tOlympicGames_MascotGarden_TrapPos[69] = {134,101}
	tOlympicGames_MascotGarden_TrapPos[70] = {136,096}
	tOlympicGames_MascotGarden_TrapPos[71] = {144,095}
	tOlympicGames_MascotGarden_TrapPos[72] = {153,096}
	tOlympicGames_MascotGarden_TrapPos[73] = {157,090}
	tOlympicGames_MascotGarden_TrapPos[74] = {149,089}
	tOlympicGames_MascotGarden_TrapPos[75] = {141,088}
	tOlympicGames_MascotGarden_TrapPos[76] = {138,137}
	tOlympicGames_MascotGarden_TrapPos[77] = {135,082}
	tOlympicGames_MascotGarden_TrapPos[78] = {143,081}
	tOlympicGames_MascotGarden_TrapPos[79] = {150,081}
	tOlympicGames_MascotGarden_TrapPos[80] = {158,082}
	tOlympicGames_MascotGarden_TrapPos[81] = {152,075}
	tOlympicGames_MascotGarden_TrapPos[82] = {135,132}
	tOlympicGames_MascotGarden_TrapPos[83] = {133,120}
	tOlympicGames_MascotGarden_TrapPos[84] = {141,117}
	tOlympicGames_MascotGarden_TrapPos[85] = {148,117}
	tOlympicGames_MascotGarden_TrapPos[86] = {155,117}
	tOlympicGames_MascotGarden_TrapPos[87] = {152,124}
	tOlympicGames_MascotGarden_TrapPos[88] = {152,057}
	tOlympicGames_MascotGarden_TrapPos[89] = {144,056}
	tOlympicGames_MascotGarden_TrapPos[90] = {136,054}
	tOlympicGames_MascotGarden_TrapPos[91] = {134,045}
	tOlympicGames_MascotGarden_TrapPos[92] = {140,048}
	tOlympicGames_MascotGarden_TrapPos[93] = {132,038}
	tOlympicGames_MascotGarden_TrapPos[94] = {138,191}
	tOlympicGames_MascotGarden_TrapPos[95] = {142,191}
	tOlympicGames_MascotGarden_TrapPos[96] = {147,191}
	tOlympicGames_MascotGarden_TrapPos[97] = {152,191}
	tOlympicGames_MascotGarden_TrapPos[98] = {157,191}
	tOlympicGames_MascotGarden_TrapPos[99] = {162,191}
	tOlympicGames_MascotGarden_TrapPos[100] = {157,186}
	tOlympicGames_MascotGarden_TrapPos[101] = {148,187}
	tOlympicGames_MascotGarden_TrapPos[102] = {140,187}
	tOlympicGames_MascotGarden_TrapPos[103] = {136,182}
	tOlympicGames_MascotGarden_TrapPos[104] = {141,181}
	tOlympicGames_MascotGarden_TrapPos[105] = {150,178}
	tOlympicGames_MascotGarden_TrapPos[106] = {155,182}
	tOlympicGames_MascotGarden_TrapPos[107] = {160,178}
	tOlympicGames_MascotGarden_TrapPos[108] = {152,174}
	tOlympicGames_MascotGarden_TrapPos[109] = {143,173}
	tOlympicGames_MascotGarden_TrapPos[110] = {138,164}
	tOlympicGames_MascotGarden_TrapPos[111] = {142,162}
	tOlympicGames_MascotGarden_TrapPos[112] = {148,164}
	tOlympicGames_MascotGarden_TrapPos[113] = {155,155}
	tOlympicGames_MascotGarden_TrapPos[114] = {148,153}
	tOlympicGames_MascotGarden_TrapPos[115] = {141,153}
	tOlympicGames_MascotGarden_TrapPos[116] = {133,153}
	tOlympicGames_MascotGarden_TrapPos[117] = {133,144}
	tOlympicGames_MascotGarden_TrapPos[118] = {139,143}
	tOlympicGames_MascotGarden_TrapPos[119] = {144,142}
	tOlympicGames_MascotGarden_TrapPos[120] = {150,142}
	tOlympicGames_MascotGarden_TrapPos[121] = {157,140}
	tOlympicGames_MascotGarden_TrapPos[122] = {148,133}
	tOlympicGames_MascotGarden_TrapPos[123] = {145,157}
	tOlympicGames_MascotGarden_TrapPos[124] = {136,155}
	tOlympicGames_MascotGarden_TrapPos[125] = {132,148}
	tOlympicGames_MascotGarden_TrapPos[126] = {138,147}

local tOlympicGames_MascotGarden_TrapMsg = {}
	tOlympicGames_MascotGarden_TrapMsg["MapID"] = 10027
	tOlympicGames_MascotGarden_TrapMsg["Look"] = 1451
	tOlympicGames_MascotGarden_TrapMsg["TrapID"] = 1451
	tOlympicGames_MascotGarden_TrapMsg["PosCX"] = 1
	tOlympicGames_MascotGarden_TrapMsg["PosCY"] = 1
	
-- 玩家进入地图随机点
local tOlympicGames_MascotGarden_RandomPos = {}
	tOlympicGames_MascotGarden_RandomPos[1] = {146,075}
	tOlympicGames_MascotGarden_RandomPos[2] = {146,101}
	tOlympicGames_MascotGarden_RandomPos[3] = {146,131}
	tOlympicGames_MascotGarden_RandomPos[4] = {146,161}

local tOlympicGames_MascotGarden_Status = {}
	-- xp状态
	tOlympicGames_MascotGarden_Status["Status"] = 18
	tOlympicGames_MascotGarden_Status["Power"] = 100
	tOlympicGames_MascotGarden_Status["Secs"] = 30
	tOlympicGames_MascotGarden_Status["Times"] = 1
	tOlympicGames_MascotGarden_Status["RemainTime"] = 30
	tOlympicGames_MascotGarden_Status["EndTime"] = 1
	tOlympicGames_MascotGarden_Status["Recordable"] = 0
	
-- 奖励表
local tOlympicGames_MascotGarden_Reward = {}
	-- 领取奖品
	tOlympicGames_MascotGarden_Reward[1] = {}
	tOlympicGames_MascotGarden_Reward[1]["Log"] = "0,0,0,0,12000442,2,3200573,3"
	tOlympicGames_MascotGarden_Reward[1]["RewardNoNeedTip"] = 1
	tOlympicGames_MascotGarden_Reward[1]["RewardItem"] = {}				--物品属性
	tOlympicGames_MascotGarden_Reward[1]["RewardItem"][1] = {}				--物品属性
	tOlympicGames_MascotGarden_Reward[1]["RewardItem"][1]["Id"] = 3200573		--物品Id
	tOlympicGames_MascotGarden_Reward[1]["RewardItem"][1]["Attr"] = "0 3"		--物品属性
	tOlympicGames_MascotGarden_Reward[1]["RewardEffect"] = {}
	tOlympicGames_MascotGarden_Reward[1]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 昨日第一名
	tOlympicGames_MascotGarden_Reward[2] = {}
	tOlympicGames_MascotGarden_Reward[2]["Log"] = "0,0,0,0,12000442,2,1088000[720027],1[2]"
	tOlympicGames_MascotGarden_Reward[2]["RewardNoNeedTip"] = 1
	tOlympicGames_MascotGarden_Reward[2]["RewardItem"] = {}				--物品属性
	tOlympicGames_MascotGarden_Reward[2]["RewardItem"][1] = {}				--物品属性
	tOlympicGames_MascotGarden_Reward[2]["RewardItem"][1]["Id"] = 1088000		--物品Id
	tOlympicGames_MascotGarden_Reward[2]["RewardItem"][1]["Attr"] = "0 1"		--物品属性
	tOlympicGames_MascotGarden_Reward[2]["RewardItem"][2] = {}				--物品属性
	tOlympicGames_MascotGarden_Reward[2]["RewardItem"][2]["Id"] = 720027		--物品Id
	tOlympicGames_MascotGarden_Reward[2]["RewardItem"][2]["Attr"] = "0 2"		--物品属性
	tOlympicGames_MascotGarden_Reward[2]["RewardEffect"] = {}
	tOlympicGames_MascotGarden_Reward[2]["RewardEffect"]["Effect"] = "zf2-e128"
	
--------------------------------------逻辑部分-------------------------------------------
-- 隔天清理掩码
function OlympicGames_MascotGarden_ClearRewardStc(nNowUserId)
	nNowUserId = nNowUserId or Get_UserId()
	-- 领奖
	local nEvent = tOlympicGames_MascotGarden_Stc[3]["EventType"]
	local nType = tOlympicGames_MascotGarden_Stc[3]["DataType"]
	-- 积分
	local nScoreEvent = tOlympicGames_MascotGarden_Stc[2]["EventType"]
	local nScoreType = tOlympicGames_MascotGarden_Stc[2]["DataType"]
	-- 地图
	local nMapEvent = tOlympicGames_MascotGarden_Stc[1]["EventType"]
	local nMapType = tOlympicGames_MascotGarden_Stc[1]["DataType"]
	
	if Task_StcInterval(nMapEvent,nMapType,1,4,nNowUserId) then
		Task_SetStatistic(nEvent,nType,0,1,nNowUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nNowUserId)
		
		Task_SetStatistic(nScoreEvent,nScoreType,0,1,nNowUserId)
		Task_SetStcTimestamp(nScoreEvent,nScoreType,0,nNowUserId)
		
		Task_SetStatistic(nMapEvent,nMapType,0,1,nNowUserId)
		Task_SetStcTimestamp(nMapEvent,nMapType,0,nNowUserId)
	end
end

-- 地图传送
function OlympicGames_MascotGarden_TransPos(nIndex,nNowUserId)
	nIndex = nIndex or 2
	nNowUserId = nNowUserId or Get_UserId()
	local nMapId = tOlympicGames_MascotGarden_ChgMap[nIndex]["MapId"]
	local nPosX = tOlympicGames_MascotGarden_ChgMap[nIndex]["PosX"]
	local nPosY = tOlympicGames_MascotGarden_ChgMap[nIndex]["PosY"]
	local nRange = tOlympicGames_MascotGarden_ChgMap[nIndex]["Range"]
	local nEvent = tOlympicGames_MascotGarden_ChgMap[nIndex]["Effect"]
	local sUserTalk = tOlympicGames_MascotGarden_ChgMap[nIndex]["Talk"]
	local sUserMsg = tOlympicGames_MascotGarden_ChgMap[nIndex]["MsgBox"]

	if nIndex == 1 then
		local nRealIndex = math.random(1,4)
		nPosX = tOlympicGames_MascotGarden_RandomPos[nRealIndex][1]
		nPosY = tOlympicGames_MascotGarden_RandomPos[nRealIndex][2]
	end
	
	User_UserRandBoundTrans(nMapId,nPosX,nPosY,nRange,nRange,0,nNowUserId)
	if sUserTalk ~= nil then
		User_TalkChannel2005(tOlympicGames_MascotGarden_Text[sUserTalk],nNowUserId)
	end
	if sUserMsg ~= nil then
		Sys_MsgBox(tOlympicGames_MascotGarden_Text[sUserMsg],nil,nil,nNowUserId)
	end
	User_EffectAdd(tOlympicGames_MascotGarden_Effect[nEvent]["EffectObj"],tOlympicGames_MascotGarden_Effect[nEvent]["Effect"],nNowUserId)
end

-- 活动时间和等级检测
function OlympicGames_MascotGarden_ChkTimeLevel(nNpcId)
	-- 活动后
	if not Sys_ChkFullTime(tOlympicGames_MascotGarden_Count["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return false
	end
	
	if not User_JudgeLevelAndMetempsychosis(tOlympicGames_MascotGarden_Count["Level"],tOlympicGames_MascotGarden_Count["Metempsychosis"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return false
	end
	
	return true
end

-- 进入吉祥物乐园
function OlympicGames_MascotGarden_EnterGarden(nNpcId)
	-- 活动时间和等级检测
	if not OlympicGames_MascotGarden_ChkTimeLevel(nNpcId) then
		return
	end
	
	local nEvent = tOlympicGames_MascotGarden_Stc[1]["EventType"]
	local nType = tOlympicGames_MascotGarden_Stc[1]["DataType"]
	local nScoreEvent = tOlympicGames_MascotGarden_Stc[2]["EventType"]
	local nScoreType = tOlympicGames_MascotGarden_Stc[2]["DataType"]
	OlympicGames_MascotGarden_ClearRewardStc()
	
	-- 玩家领过奖励
	local nRewardEvent = tOlympicGames_MascotGarden_Stc[3]["EventType"]
	local nRewardType = tOlympicGames_MascotGarden_Stc[3]["DataType"]
	-- 今日已经领奖
	if Task_ChkStcValue(nRewardEvent,nRewardType,">=",1) then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	
	-- 玩家积分够了
	if Task_ChkStcValue(nScoreEvent,nScoreType,">=",tOlympicGames_MascotGarden_Stc[2]["RewardData"]) then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	
	-- 今天已经进入过
	local nMaxTime = tOlympicGames_MascotGarden_Count["TimeDelay"]
	
	local nNowUserId = Get_UserId()
	local nMapId = Get_UserMapId(nNowUserId)
	
	if nMapId ~= tOlympicGames_MascotGarden_ChgMap[2]["MapId"] then
		return
	end
	
	if not Task_ChkStcValue(nEvent,nType,">=",1) then
		--第一次进入参加log
		Sys_SaveActionFestivalLog(tOlympicGames_MascotGarden_Log["EnterGarden"],nNowUserId)
	end
	Task_AddStatistic(nEvent,nType,1,1,nNowUserId)
	Task_SetStcTimestamp(nEvent,nType,0,nNowUserId)
	
	-- 积分清理
	Task_SetStatistic(nScoreEvent,nScoreType,0,1,nNowUserId)
	Task_SetStcTimestamp(nScoreEvent,nScoreType,0,nNowUserId)
	
	OlympicGames_MascotGarden_TransPos(1,nNowUserId)
	
	-- 变身
	OlympicGames_MascotGarden_TransFrom(nNowUserId)
	
	local nStatus = tOlympicGames_MascotGarden_Status["Status"]
	local nPower = tOlympicGames_MascotGarden_Status["Power"]
	local nSecs = tOlympicGames_MascotGarden_Status["Secs"]
	local nTimes = tOlympicGames_MascotGarden_Status["Times"]
	local nRemainTime = tOlympicGames_MascotGarden_Status["RemainTime"]
	local nEndTime = tOlympicGames_MascotGarden_Status["EndTime"]
	local nRecordable = tOlympicGames_MascotGarden_Status["Recordable"]
	User_AddRoleStatus(nStatus,nPower,nSecs,nTimes,nRemainTime,nEndTime,nRecordable,0,0,nNowUserId)
	
	-- 客户端显示倒计时
	User_SetTimer(nMaxTime,"OlympicGames_MascotGarden_Countdown",1,nNowUserId)
end

function OlympicGames_MascotGarden_TransFrom(nNowUserId)
	nNowUserId = nNowUserId or Get_UserId()
	local nSkillType = tOlympicGames_MascotGarden_Form["SkillType"]
	local nSkillLevel = tOlympicGames_MascotGarden_Form["SkillLevel"]
	local nMonsterType = tOlympicGames_MascotGarden_Form["MonsterType"]
	local nTime = tOlympicGames_MascotGarden_Count["TimeDelay"]
	User_TransForm(nSkillType,nSkillLevel,nMonsterType,nTime,nNowUserId)
end

-- 倒计时
function OlympicGames_MascotGarden_Countdown(nNowUserId)
	nNowUserId = nNowUserId or Get_UserId()
	-- 传回双龙城
	OlympicGames_MascotGarden_TransPos(2,nNowUserId)
end

-- 领取奖品
function OlympicGames_MascotGarden_RewardToday(nNpcId)
	-- 活动时间和等级检测
	if not OlympicGames_MascotGarden_ChkTimeLevel(nNpcId) then
		return
	end
	
	local nRewardEvent = tOlympicGames_MascotGarden_Stc[3]["EventType"]
	local nRewardType = tOlympicGames_MascotGarden_Stc[3]["DataType"]
	-- 隔天清除
	OlympicGames_MascotGarden_ClearRewardStc()
	-- 今日已经领奖
	if Task_ChkStcValue(nRewardEvent,nRewardType,">=",1) then
		LinkNpcGossipFunc_New(nNpcId,"2-4")
		return
	end
	
	-- 积分个数
	local nEvent = tOlympicGames_MascotGarden_Stc[2]["EventType"]
	local nType = tOlympicGames_MascotGarden_Stc[2]["DataType"]
	-- 领取奖品，积分不足
	if Task_ChkStcValue(nEvent,nType,"<",tOlympicGames_MascotGarden_Stc[2]["RewardData"]) then
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end
	
	-- 背包没有足够空间
	if not User_CheckLeftSpace(2) then
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return
	end
	
	-- 一领奖
	Task_SetStatistic(nRewardEvent,nRewardType,1,1)
	Task_SetStcTimestamp(nRewardEvent,nRewardType,0)
	
	-- 给奖励
	RewardTemplate_UseItem(tOlympicGames_MascotGarden_Reward[1])
	FestivalGeneralPackage_GetGift(tOlympicGames_MascotGarden_Count["FestivalId"],tOlympicGames_MascotGarden_Count["LogId"])
	
	-- 获得奖励提示
	Sys_MsgBox(tOlympicGames_MascotGarden_Text["RewardToday"])
	
	--完成log
	Sys_SaveActionFestivalLog(tOlympicGames_MascotGarden_Log["FinishTask"])
end

-- 领取昨日冠军奖励
function OlympicGames_MascotGarden_LastReward(nNpcId)
	local nGlobalId = tOlympicGames_MascotGarden_Count["GlobalId"]
	local nTodayPos,nLastPos = OlympicGames_MascotGarden_GetPos()
	local nRewardUserId = Get_SysDynaGlobalData(nGlobalId,nLastPos)
	local sRewardMask = Get_SysDynaGlobalDataStr(nGlobalId,nLastPos+1)
	local nNowUserId = Get_UserId()
	
	-- 领取昨日冠军奖励，不是你
	if nNowUserId ~= nRewardUserId then
		LinkNpcGossipFunc_New(nNpcId,"2-5")
		return
	end
	
	-- 已经领取奖励
	if sRewardMask == "1" then
		LinkNpcGossipFunc_New(nNpcId,"2-6")
		return
	end
	
	-- 背包空间不足
	if not User_CheckLeftSpace(3) then
		LinkNpcGossipFunc_New(nNpcId,"2-7")
		return
	end
	
	-- 设置领奖掩码
	Sys_SetSynaGlobalDataStr(nGlobalId,nLastPos+1,"1")
	
	-- 领取奖励
	RewardTemplate_UseItem(tOlympicGames_MascotGarden_Reward[2])
	
	-- 提示
	Sys_MsgBox(tOlympicGames_MascotGarden_Text["RewardLast"])
end

function OlympicGames_MascotGarden_StartTrap()
	local nMapId = tOlympicGames_MascotGarden_TrapMsg["MapID"]
	local nLook = tOlympicGames_MascotGarden_TrapMsg["Look"]
	local nTrapId = tOlympicGames_MascotGarden_TrapMsg["TrapID"]
	local nPosCX = tOlympicGames_MascotGarden_TrapMsg["PosCX"]
	local nPosCY = tOlympicGames_MascotGarden_TrapMsg["PosCY"]
	
	if not Trap_DelMapTrap(nMapId,nTrapId) then
		return
	end
	local nDis = tOlympicGames_MascotGarden_Count["DisTrapIndex"]
	for i=1,nDis do
		local nPosX = tOlympicGames_MascotGarden_TrapPos[i][1]
		local nPosY = tOlympicGames_MascotGarden_TrapPos[i][2]
		Trap_CreateMapTrap(nTrapId,nLook,0,nMapId,nPosX,nPosY,nPosCX,nPosCY)
	end
end

-- 新陷阱
function OlympicGames_MascotGarden_NewTrap(nTrapId,nTrapType)
	local nPosX = Get_TrapPosX(nTrapId)
	local nPosY = Get_TrapPosY(nTrapId)
	
	local nOldPos = 0
	for i,v in pairs(tOlympicGames_MascotGarden_TrapPos) do
		if nPosX == v[1] and nPosY == v[2] then
			nOldPos = i
			break
		end
	end
	
	local nDis = tOlympicGames_MascotGarden_Count["DisTrapIndex"]
	if nOldPos <= nDis then
		nOldPos = nOldPos + nDis
	else
		nOldPos = nOldPos - nDis
	end
	local nMapId = tOlympicGames_MascotGarden_TrapMsg["MapID"]
	local nPosCX = tOlympicGames_MascotGarden_TrapMsg["PosCX"]
	local nPosCY = tOlympicGames_MascotGarden_TrapMsg["PosCY"]
	local nLook = tOlympicGames_MascotGarden_TrapMsg["Look"]
	if Trap_EraseMapTrap(nTrapId) then
		local nNewPosX = tOlympicGames_MascotGarden_TrapPos[nOldPos][1]
		local nNewPosY = tOlympicGames_MascotGarden_TrapPos[nOldPos][2]
		if Trap_CreateMapTrap(nTrapType,nLook,0,nMapId,nNewPosX,nNewPosY,nPosCX,nPosCY) then
			return true
		end
		return false
	end
	return false
end

-- 陷阱触发
function OlympicGames_MascotGarden_Trap(nTrapId,nTrapType)
	-- 活动后
	if not Sys_ChkFullTime(tOlympicGames_MascotGarden_Count["ActivityTime"]) then
		return
	end
	
	if not User_JudgeLevelAndMetempsychosis(tOlympicGames_MascotGarden_Count["Level"],tOlympicGames_MascotGarden_Count["Metempsychosis"]) then
		return
	end
	
	local nNowUserId = Get_UserId()
	-- 生成新的陷阱
	if not OlympicGames_MascotGarden_NewTrap(nTrapId,nTrapType) then
		return false
	end
	
	local nEvent = tOlympicGames_MascotGarden_Stc[1]["EventType"]
	local nType = tOlympicGames_MascotGarden_Stc[1]["DataType"]
	local nMaxTime = tOlympicGames_MascotGarden_Count["TimeDelay"]
	if Task_StcInterval(nEvent,nType,1,4,nNowUserId) or Task_StcInterval(nEvent,nType,nMaxTime,0,nNowUserId) then
		OlympicGames_MascotGarden_TransPos(2,nNowUserId)
		return
	end
	
	-- 判断变身
	if not (Get_UserTransformId() >= 0) then
		Sys_MsgBox(tOlympicGames_MascotGarden_Text["Forming"],nil,nil,nNowUserId)
		local sContent = tOlympicGames_MascotGarden_Text["TansForm"]
		local sFunc = "OlympicGames_MascotGarden_MewTransForm"
		User_SetExplore(3,sContent,100,sFunc,nil,nNowUserId)
	else
		-- 加积分
		OlympicGames_MascotGarden_AddScore(nNowUserId)
	end
end

-- 新的变身
function OlympicGames_MascotGarden_MewTransForm(nNowUserId)
	nNowUserId = nNowUserId or Get_UserId()
	-- 变身
	OlympicGames_MascotGarden_TransFrom(nNowUserId)
	
	-- 加积分
	OlympicGames_MascotGarden_AddScore(nNowUserId)
end

-- 加积分
function OlympicGames_MascotGarden_AddScore(nNowUserId)
	nNowUserId = nNowUserId or Get_UserId()
	local nEvent = tOlympicGames_MascotGarden_Stc[2]["EventType"]
	local nType = tOlympicGames_MascotGarden_Stc[2]["DataType"]
	local nScore = tOlympicGames_MascotGarden_Count["GetScore"]
	Task_AddStatistic(nEvent,nType,nScore,1,nNowUserId)
	Task_SetStcTimestamp(nEvent,nType,0,nNowUserId)
	User_EffectAdd(tOlympicGames_MascotGarden_Effect[3]["EffectObj"],tOlympicGames_MascotGarden_Effect[3]["Effect"],nNowUserId)
	
	-- 刷新排行榜
	OlympicGames_MascotGarden_RefreshRanking(nNowUserId)
	
	local nAllScore = Get_UserStatisticValue(nEvent,nType,nNowUserId)
	local sTip = tOlympicGames_MascotGarden_Text["GetScore"]
	User_TalkChannel2005(string.format(sTip,nAllScore),nNowUserId)
end

-- 刷新排行榜
function OlympicGames_MascotGarden_RefreshRanking(nNowUserId)
	nNowUserId = nNowUserId or Get_UserId()
	local nTodayPos,nLastPos = OlympicGames_MascotGarden_GetPos()
	local nGlobalId = tOlympicGames_MascotGarden_Count["GlobalId"]
	-- 最高分
	local nHighScore = Get_SysDynaGlobalData(nGlobalId,nTodayPos+1)
	
	local nEvent = tOlympicGames_MascotGarden_Stc[2]["EventType"]
	local nType = tOlympicGames_MascotGarden_Stc[2]["DataType"]
	local nUserScore = Get_UserStatisticValue(nEvent,nType,nNowUserId)
	if nUserScore > nHighScore then
		-- 刷新动态表
		OlympicGames_MascotGarden_RefreshGlobal(nNowUserId,nGlobalId,nUserScore,nTodayPos)
	end
end

function OlympicGames_MascotGarden_RefreshGlobal(nNowUserId,nGlobalId,nScore,nPos)
	local sUserName = Get_UserName(nNowUserId)
	Sys_SetSynaGlobalData(nGlobalId,nPos,nNowUserId)
	Sys_SetSynaGlobalDataStr(nGlobalId,nPos,sUserName)
	Sys_SetSynaGlobalData(nGlobalId,nPos+1,nScore)
	Sys_SetSynaGlobalDataStr(nGlobalId,nPos+1,"0")
end

-- 存位和清理的位
function OlympicGames_MascotGarden_GetPos()
	local nPosIndex = CommonFunc_DisActivityTime(tOlympicGames_MascotGarden_Count["ActivityTime"])%2
	local nTodayPos,nLastPos = 0,0
	if nPosIndex == 0 then
		nTodayPos = 0
		nLastPos = 2
	elseif nPosIndex == 1 then
		nTodayPos = 2
		nLastPos = 0
	end 
	return nTodayPos,nLastPos
end

-- 动态掩码清理
function OlympicGames_MascotGarden_ClearGlobalData()
	local nGlobalId = tOlympicGames_MascotGarden_Count["GlobalId"]
	local sDataStr5 = Get_SysDynaGlobalDataStr5(nGlobalId)
	local nTodayPos,nLastPos = OlympicGames_MascotGarden_GetPos()
	
	if Sys_ChkFullTime(tOlympicGames_MascotGarden_Count["ClearGlobalTime"]) then
		if Sys_ChkDayTime(tOlympicGames_MascotGarden_Count["ClearTime"]) then 
			if not (sDataStr5 == "1") then
				Sys_SetSynaGlobalDataStr5(nGlobalId,"1")
				if nTodayPos == 0 then
					Sys_SetSynaGlobalData0(nGlobalId,0)
					Sys_SetSynaGlobalData1(nGlobalId,0)
					Sys_SetSynaGlobalDataStr0(nGlobalId,"0")
					Sys_SetSynaGlobalDataStr1(nGlobalId,"0")
				else
					Sys_SetSynaGlobalData2(nGlobalId,0)
					Sys_SetSynaGlobalData3(nGlobalId,0)
					Sys_SetSynaGlobalDataStr2(nGlobalId,"0")
					Sys_SetSynaGlobalDataStr3(nGlobalId,"0")
				end
			end
		else
			if sDataStr5 == "1" then
				Sys_SetSynaGlobalDataStr5(nGlobalId,"0")
			end
		end
	end
end
--------------------------------------NPC模块-------------------------------------------
-- 【小魔术师】尼克狐
tNpcFace[4241] = 401
tNpcGossip[19351] = tNpcGossip[19351] or DefaultNpc:new{}
tNpcGossip[19351]["OptionHidden"] = 1
-- tNpcGossip[19351]["DialogueText"] = tOlympicGames_MascotGarden_Text[19351]
-- 活动前
tNpcGossip[19351]["Text1-1"] = {111,112,113,114}
tNpcGossip[19351]["Text111"] = tOlympicGames_MascotGarden_Text[19351]["Text111"]
tNpcGossip[19351]["Text112"] = tOlympicGames_MascotGarden_Text[19351]["Text112"]
tNpcGossip[19351]["Text113"] = tOlympicGames_MascotGarden_Text[19351]["Text113"]
tNpcGossip[19351]["Text114"] = tOlympicGames_MascotGarden_Text[19351]["Text114"]
tNpcGossip[19351]["tOption1-1"] = {1}
tNpcGossip[19351]["ChkFunc1-1"] = function()
	return Sys_ChkFullTime(tOlympicGames_MascotGarden_Count["BeforeActivityTime"])
end
tNpcGossip[19351]["Option1"] = tOlympicGames_MascotGarden_Text[19351]["Option1"]

-- 活动后
tNpcGossip[19351]["Text1-2"] = {121}
tNpcGossip[19351]["Text121"] = tOlympicGames_MascotGarden_Text[19351]["Text121"]
tNpcGossip[19351]["tOption1-2"] = {2,3,4}
tNpcGossip[19351]["ChkFunc1-2"] = function()
	OlympicGames_MascotGarden_ClearRewardStc()
	return not Sys_ChkFullTime(tOlympicGames_MascotGarden_Count["ActivityTime"])
end
-- 领取昨日冠军奖励。
tNpcGossip[19351]["Option2"] = tOlympicGames_MascotGarden_Text[19351]["Option2"]
tNpcGossip[19351]["OptionChkFunc2"] = function()
	if not Sys_ChkFullTime(tOlympicGames_MascotGarden_Count["AwardTime"]) then
		return false
	end
	return true
end
tNpcGossip[19351]["OptionFunc2"] = "OlympicGames_MascotGarden_LastReward</N>19351"
-- 查看冠军榜。
tNpcGossip[19351]["Option3"] = tOlympicGames_MascotGarden_Text[19351]["Option3"]
tNpcGossip[19351]["OptionChkFunc3"] = function()
	if not Sys_ChkFullTime(tOlympicGames_MascotGarden_Count["AwardTime"]) then
		return false
	end
	return true
end
tNpcGossip[19351]["OptionPoint3"] = "3-3"
tNpcGossip[19351]["Option4"] = tOlympicGames_MascotGarden_Text[19351]["Option4"]

-- 活动中等级不足
tNpcGossip[19351]["Text1-3"] = {131,132,133,134,135}
tNpcGossip[19351]["Text131"] = tOlympicGames_MascotGarden_Text[19351]["Text131"]
tNpcGossip[19351]["Text132"] = tOlympicGames_MascotGarden_Text[19351]["Text132"]
tNpcGossip[19351]["Text133"] = tOlympicGames_MascotGarden_Text[19351]["Text133"]
tNpcGossip[19351]["Text134"] = tOlympicGames_MascotGarden_Text[19351]["Text134"]
tNpcGossip[19351]["Text135"] = tOlympicGames_MascotGarden_Text[19351]["Text135"]
tNpcGossip[19351]["tOption1-3"] = {5}
tNpcGossip[19351]["ChkFunc1-3"] = function()
	return not User_JudgeLevelAndMetempsychosis(tOlympicGames_MascotGarden_Count["Level"],tOlympicGames_MascotGarden_Count["Metempsychosis"])
end
tNpcGossip[19351]["Option5"] = tOlympicGames_MascotGarden_Text[19351]["Option5"]

-- 活动中
tNpcGossip[19351]["Text1-4"] = {141,142,143,144}
tNpcGossip[19351]["Text141"] = tOlympicGames_MascotGarden_Text[19351]["Text141"]
tNpcGossip[19351]["Text142"] = tOlympicGames_MascotGarden_Text[19351]["Text142"]
tNpcGossip[19351]["Text143"] = tOlympicGames_MascotGarden_Text[19351]["Text143"]
tNpcGossip[19351]["Text144"] = tOlympicGames_MascotGarden_Text[19351]["Text144"]
tNpcGossip[19351]["tOption1-4"] = {6,7,9,11}
tNpcGossip[19351]["ChkFunc1-4"] = function()
	OlympicGames_MascotGarden_ClearRewardStc()
	return true
end
-- 进入吉祥物乐园。
tNpcGossip[19351]["Option6"] = tOlympicGames_MascotGarden_Text[19351]["Option6"]
tNpcGossip[19351]["OptionFunc6"] = "OlympicGames_MascotGarden_EnterGarden</N>19351"
-- 领取奖品
tNpcGossip[19351]["Option7"] = tOlympicGames_MascotGarden_Text[19351]["Option7"]
tNpcGossip[19351]["OptionFunc7"] = "OlympicGames_MascotGarden_RewardToday</N>19351"
-- 领取昨日冠军奖励(第一天)
tNpcGossip[19351]["Option8"] = tOlympicGames_MascotGarden_Text[19351]["Option8"]
tNpcGossip[19351]["OptionFunc8"] = "OlympicGames_MascotGarden_LastReward</N>19351"
tNpcGossip[19351]["OptionChkFunc8"] = function()
	if not Sys_ChkFullTime(tOlympicGames_MascotGarden_Count["AwardTime"]) then
		return false
	end
	return true
end
-- 查看冠军榜。
tNpcGossip[19351]["OptionPoint9"] = "3-1"
tNpcGossip[19351]["Option9"] = tOlympicGames_MascotGarden_Text[19351]["Option9"]
-- 查看领奖规则。
tNpcGossip[19351]["Option10"] = tOlympicGames_MascotGarden_Text[19351]["Option10"]
tNpcGossip[19351]["OptionPoint10"] = "3-2"
tNpcGossip[19351]["Option11"] = tOlympicGames_MascotGarden_Text[19351]["Option11"]

-- 进入吉祥物乐园，失败
tNpcGossip[19351]["Text2-1"] = {211}
tNpcGossip[19351]["Text211"] = tOlympicGames_MascotGarden_Text[19351]["Text211"]
tNpcGossip[19351]["tOption2-1"] = {12}
tNpcGossip[19351]["Option12"] = tOlympicGames_MascotGarden_Text[19351]["Option12"]

-- 领取奖品积分不足
tNpcGossip[19351]["Text2-2"] = {221}
tNpcGossip[19351]["Text221"] = tOlympicGames_MascotGarden_Text[19351]["Text221"]
tNpcGossip[19351]["tOption2-2"] = {13}
tNpcGossip[19351]["Option13"] = tOlympicGames_MascotGarden_Text[19351]["Option13"]

-- 领取背包不足
tNpcGossip[19351]["Text2-3"] = {231}
tNpcGossip[19351]["Text231"] = tOlympicGames_MascotGarden_Text[19351]["Text231"]
tNpcGossip[19351]["tOption2-3"] = {14}
tNpcGossip[19351]["Option14"] = tOlympicGames_MascotGarden_Text[19351]["Option14"]

-- 领取奖品已领过
tNpcGossip[19351]["Text2-4"] = {241}
tNpcGossip[19351]["Text241"] = tOlympicGames_MascotGarden_Text[19351]["Text241"]
tNpcGossip[19351]["tOption2-4"] = {15}
tNpcGossip[19351]["Option15"] = tOlympicGames_MascotGarden_Text[19351]["Option15"]

-- 领取昨日冠军奖励不是你
tNpcGossip[19351]["Text2-5"] = {251}
tNpcGossip[19351]["Text251"] = tOlympicGames_MascotGarden_Text[19351]["Text251"]
tNpcGossip[19351]["tOption2-5"] = {16}
tNpcGossip[19351]["Option16"] = tOlympicGames_MascotGarden_Text[19351]["Option16"]

-- 领取昨日冠军奖励领过
tNpcGossip[19351]["Text2-6"] = {261}
tNpcGossip[19351]["Text261"] = tOlympicGames_MascotGarden_Text[19351]["Text261"]
tNpcGossip[19351]["tOption2-6"] = {17}
tNpcGossip[19351]["Option17"] = tOlympicGames_MascotGarden_Text[19351]["Option17"]

-- 领取昨日冠军奖励背包
tNpcGossip[19351]["Text2-7"] = {271}
tNpcGossip[19351]["Text271"] = tOlympicGames_MascotGarden_Text[19351]["Text271"]
tNpcGossip[19351]["tOption2-7"] = {18}
tNpcGossip[19351]["Option18"] = tOlympicGames_MascotGarden_Text[19351]["Option18"]

-- 查看冠军榜
tNpcGossip[19351]["Text3-1"] = {311,312,313,314,315,316}
tNpcGossip[19351]["Text311"] = tOlympicGames_MascotGarden_Text[19351]["Text311"]
tNpcGossip[19351]["Text312"] = tOlympicGames_MascotGarden_Text[19351]["Text312"]
tNpcGossip[19351]["Text313"] = tOlympicGames_MascotGarden_Text[19351]["Text313"]
tNpcGossip[19351]["Text314"] = tOlympicGames_MascotGarden_Text[19351]["Text314"]
tNpcGossip[19351]["Text315"] = tOlympicGames_MascotGarden_Text[19351]["Text315"]
tNpcGossip[19351]["Text316"] = tOlympicGames_MascotGarden_Text[19351]["Text316"]
tNpcGossip[19351]["tOption3-1"] = {8,19}
tNpcGossip[19351]["ChkFunc3-1"] = function()
	local nTodayPos,nLastPos = OlympicGames_MascotGarden_GetPos()
	local nGlobalId = tOlympicGames_MascotGarden_Count["GlobalId"]
	local nTodayScore = Get_SysDynaGlobalData(nGlobalId,nTodayPos+1)
	local nLastScore = Get_SysDynaGlobalData(nGlobalId,nLastPos+1)
	local nTodayUserId = Get_SysDynaGlobalData(nGlobalId,nTodayPos)
	local nLastUserId = Get_SysDynaGlobalData(nGlobalId,nLastPos)
	local sUserName = Get_SysDynaGlobalDataStr(nGlobalId,nLastPos)
	local sTodayUserName = Get_SysDynaGlobalDataStr(nGlobalId,nTodayPos)
	
	if nTodayUserId > 0 then
		sTodayUserName = "["..sTodayUserName.."]"
	else
		sTodayUserName = ""
	end
	
	if nLastUserId > 0 then
		sUserName = "["..sUserName.."]"
	else
		sUserName = ""
	end
	
	local nEvent = tOlympicGames_MascotGarden_Stc[2]["EventType"]
	local nType = tOlympicGames_MascotGarden_Stc[2]["DataType"]
	local nScore = Get_UserStatisticValue(nEvent,nType)
	-- 昨日冠军
	local sLastText = tOlympicGames_MascotGarden_Text[19351]["Text313"]
	tNpcGossip[19351]["Text313"] = string.format(sLastText,sUserName,nLastScore)
	-- 今日冠军
	local sTodayText = tOlympicGames_MascotGarden_Text[19351]["Text314"]
	tNpcGossip[19351]["Text314"] = string.format(sTodayText,sTodayUserName,nTodayScore)
	
	-- 我的分数
	local sMyText = tOlympicGames_MascotGarden_Text[19351]["Text315"]
	tNpcGossip[19351]["Text315"] = string.format(sMyText,nScore)
	
	return true
end
tNpcGossip[19351]["Option19"] = tOlympicGames_MascotGarden_Text[19351]["Option19"]
tNpcGossip[19351]["OptionPoint19"] = "1"

-- 查看领奖规则
tNpcGossip[19351]["Text3-2"] = {321,322,323}
tNpcGossip[19351]["Text321"] = tOlympicGames_MascotGarden_Text[19351]["Text321"]
tNpcGossip[19351]["Text322"] = tOlympicGames_MascotGarden_Text[19351]["Text322"]
tNpcGossip[19351]["Text323"] = tOlympicGames_MascotGarden_Text[19351]["Text323"]
tNpcGossip[19351]["tOption3-2"] = {20}
tNpcGossip[19351]["Option20"] = tOlympicGames_MascotGarden_Text[19351]["Option20"]
tNpcGossip[19351]["OptionPoint20"] = 1

-- 活动后查看冠军榜
tNpcGossip[19351]["Text3-3"] = {331,332,333,334}
tNpcGossip[19351]["Text331"] = tOlympicGames_MascotGarden_Text[19351]["Text331"]
tNpcGossip[19351]["Text332"] = tOlympicGames_MascotGarden_Text[19351]["Text332"]
tNpcGossip[19351]["Text333"] = tOlympicGames_MascotGarden_Text[19351]["Text333"]
tNpcGossip[19351]["Text334"] = tOlympicGames_MascotGarden_Text[19351]["Text334"]
tNpcGossip[19351]["tOption3-3"] = {21}
tNpcGossip[19351]["ChkFunc3-3"] = function()
	local nTodayPos,nLastPos = OlympicGames_MascotGarden_GetPos()
	local nGlobalId = tOlympicGames_MascotGarden_Count["GlobalId"]
	local nLastScore = Get_SysDynaGlobalData(nGlobalId,nLastPos+1)
	local sUserName = Get_SysDynaGlobalDataStr(nGlobalId,nLastPos)
	local nLastUserId = Get_SysDynaGlobalData(nGlobalId,nLastPos)
	if nLastUserId > 0 then
		sUserName = "["..sUserName.."]"
	else
		sUserName = ""
	end
	
	-- 昨日冠军
	local sLastText = tOlympicGames_MascotGarden_Text[19351]["Text333"]
	tNpcGossip[19351]["Text333"] = string.format(sLastText,sUserName,nLastScore)
	
	return true
end
tNpcGossip[19351]["Option21"] = tOlympicGames_MascotGarden_Text[19351]["Option21"]
tNpcGossip[19351]["OptionPoint21"] = "1"

--------------------------------------陷阱模块-------------------------------------------
-- 金币陷阱
tTrap[1451] = tTrap[1451] or {}
tTrap[1451]["Function"] = function(nTrapId,nTrapType)
	OlympicGames_MascotGarden_Trap(nTrapId,nTrapType)
end

--------------------------------------服务器启动------------------------------------------
-- 服务器启动获得刷30个陷阱
-- tServerStart["tFunction"] = tServerStart["tFunction"] or {}
-- table.insert(tServerStart["tFunction"],OlympicGames_MascotGarden_StartTrap)

--tOntimerMin_HM	小时/分钟（每天的00点00分到00点02分执行）
--'00:00-00:02'
-- tOntimerMin_HM[0000] = tOntimerMin_HM[0000] or {}
-- table.insert(tOntimerMin_HM[0000],OlympicGames_MascotGarden_ClearGlobalData)
-- tOntimerMin_HM[0001] = tOntimerMin_HM[0001] or {}
-- table.insert(tOntimerMin_HM[0001],OlympicGames_MascotGarden_ClearGlobalData)
-- tOntimerMin_HM[0002] = tOntimerMin_HM[0002] or {}
-- table.insert(tOntimerMin_HM[0002],OlympicGames_MascotGarden_ClearGlobalData)
-- tOntimerMin_HM[0003] = tOntimerMin_HM[0003] or {}
-- table.insert(tOntimerMin_HM[0003],OlympicGames_MascotGarden_ClearGlobalData)
-- tOntimerMin_HM[0004] = tOntimerMin_HM[0004] or {}
-- table.insert(tOntimerMin_HM[0004],OlympicGames_MascotGarden_ClearGlobalData)