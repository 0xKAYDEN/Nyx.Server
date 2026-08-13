------------------------------------------------------------------------------------
--Name：            200303[简体征服][活动脚本]全球愚人节活动-跨服漂流瓶
--Creator:      林嘉鑫
--Created:     2020-03-03
------------------------------------------------------------------------------------
--任务需求：

------------------------------------------------------------------------------------


----------------------------------表配置部分--------------------------------------------
local tAprilFoolsDay2020Bottle_Data = {}
	-- 等级限制
	tAprilFoolsDay2020Bottle_Data["Level"] = 80
	tAprilFoolsDay2020Bottle_Data["Metempsychosis"] = 0
	-- 漂流瓶ID
	tAprilFoolsDay2020Bottle_Data["ItemId"] = 3330026
	-- 主NPC
	tAprilFoolsDay2020Bottle_Data["MainNPCId"] = 26014
	-- 入口NPC
	tAprilFoolsDay2020Bottle_Data["EnterNPCId"] = 26041
	-- 漂流瓶NPC
	tAprilFoolsDay2020Bottle_Data["NPCId"] = 26042
	-- 限量GlobalId
	tAprilFoolsDay2020Bottle_Data["GlobalId"] = 54293
	-- 全球服ServerId
	tAprilFoolsDay2020Bottle_Data["GlobalServerId"] = 998
	-- 跨服Data
	tAprilFoolsDay2020Bottle_Data["ConfigData1"] = 165
	-- 光效
	tAprilFoolsDay2020Bottle_Data["Effect"] = "zf2-e128"
	-- 普通服坐标
	tAprilFoolsDay2020Bottle_Data[1] = {}
	tAprilFoolsDay2020Bottle_Data[1]["MapId"] = 1002
	tAprilFoolsDay2020Bottle_Data[1]["PosX"] = 374
	tAprilFoolsDay2020Bottle_Data[1]["PosY"] = 449
	-- 激情服坐标
	tAprilFoolsDay2020Bottle_Data[2] = {}
	tAprilFoolsDay2020Bottle_Data[2]["MapId"] = 1036
	tAprilFoolsDay2020Bottle_Data[2]["PosX"] = 286
	tAprilFoolsDay2020Bottle_Data[2]["PosY"] = 225
	-- 本服活动地图坐标
	tAprilFoolsDay2020Bottle_Data["Activity"] = {}
	tAprilFoolsDay2020Bottle_Data["Activity"]["MapId"] = 10792
	tAprilFoolsDay2020Bottle_Data["Activity"]["PosX"] = 295
	tAprilFoolsDay2020Bottle_Data["Activity"]["PosY"] = 330
	-- BOSS位置
	tAprilFoolsDay2020Bottle_Data["BOSS"] = {}
	tAprilFoolsDay2020Bottle_Data["BOSS"]["Map"] = {}
	tAprilFoolsDay2020Bottle_Data["BOSS"]["Map"][1] = 10792
	tAprilFoolsDay2020Bottle_Data["BOSS"]["Map"][2] = 10793
	tAprilFoolsDay2020Bottle_Data["BOSS"]["MapDoc"] = 10792
	tAprilFoolsDay2020Bottle_Data["BOSS"]["Id"] = 6301
	tAprilFoolsDay2020Bottle_Data["BOSS"][1] = {}
	tAprilFoolsDay2020Bottle_Data["BOSS"][1]["PosX"] = 226
	tAprilFoolsDay2020Bottle_Data["BOSS"][1]["PosY"] = 281
	tAprilFoolsDay2020Bottle_Data["BOSS"][1]["Gen"] = 30729
	tAprilFoolsDay2020Bottle_Data["BOSS"][2] = {}
	tAprilFoolsDay2020Bottle_Data["BOSS"][2]["PosX"] = 326
	tAprilFoolsDay2020Bottle_Data["BOSS"][2]["PosY"] = 238
	tAprilFoolsDay2020Bottle_Data["BOSS"][2]["Gen"] = 30730
	tAprilFoolsDay2020Bottle_Data["BOSS"][3] = {}
	tAprilFoolsDay2020Bottle_Data["BOSS"][3]["PosX"] = 263
	tAprilFoolsDay2020Bottle_Data["BOSS"][3]["PosY"] = 409
	tAprilFoolsDay2020Bottle_Data["BOSS"][3]["Gen"] = 30731
	tAprilFoolsDay2020Bottle_Data["BOSS"][4] = {}
	tAprilFoolsDay2020Bottle_Data["BOSS"][4]["PosX"] = 351
	tAprilFoolsDay2020Bottle_Data["BOSS"][4]["PosY"] = 353
	tAprilFoolsDay2020Bottle_Data["BOSS"][4]["Gen"] = 30732
	tAprilFoolsDay2020Bottle_Data["BOSS"][5] = {}
	tAprilFoolsDay2020Bottle_Data["BOSS"][5]["PosX"] = 417
	tAprilFoolsDay2020Bottle_Data["BOSS"][5]["PosY"] = 294
	tAprilFoolsDay2020Bottle_Data["BOSS"][5]["Gen"] = 30733
	
local tAprilFoolsDay2020Bottle_Stc = {}
	-- 隔天判断掩码
	tAprilFoolsDay2020Bottle_Stc["Day"] = {}
	tAprilFoolsDay2020Bottle_Stc["Day"]["EvnetType"] = 216
	tAprilFoolsDay2020Bottle_Stc["Day"]["DataType"] = 73
	-- 提交数量掩码
	tAprilFoolsDay2020Bottle_Stc["Num"] = {}
	tAprilFoolsDay2020Bottle_Stc["Num"]["EvnetType"] = 216
	tAprilFoolsDay2020Bottle_Stc["Num"]["DataType"] = 74
	-- 引导判断掩码
	tAprilFoolsDay2020Bottle_Stc["Guide"] = {}
	tAprilFoolsDay2020Bottle_Stc["Guide"]["EvnetType"] = 217
	tAprilFoolsDay2020Bottle_Stc["Guide"]["DataType"] = 31

local tAprilFoolsDay2020Bottle_Log = {}
	tAprilFoolsDay2020Bottle_Log["DelItem"] = "0,0,%d,%d,12001894,2[1],0,0" -- 删除任务物品

local tAprilFoolsDay2020Bottle_Reward = {}
	-- ===漂流瓶奖励
	tAprilFoolsDay2020Bottle_Reward["Reward"] = {}
	tAprilFoolsDay2020Bottle_Reward["Reward"]["LogId"] = 12001894
	tAprilFoolsDay2020Bottle_Reward["Reward"]["LogStep"] = "2[2]"
	tAprilFoolsDay2020Bottle_Reward["Reward"]["RewardItem"] = {}
	tAprilFoolsDay2020Bottle_Reward["Reward"]["RewardItem"][1] = {}
	tAprilFoolsDay2020Bottle_Reward["Reward"]["RewardItem"][1]["Id"] = 3330383
	tAprilFoolsDay2020Bottle_Reward["Reward"]["RewardItem"][1]["Attr"] = "0 1"
	tAprilFoolsDay2020Bottle_Reward["Reward"]["RewardEffect"] = {}
	tAprilFoolsDay2020Bottle_Reward["Reward"]["RewardEffect"]["SzObj"] = "self"
	tAprilFoolsDay2020Bottle_Reward["Reward"]["RewardEffect"]["Effect"] = "angelwing"
	-- ===漂流瓶回礼礼包
	-- ===索引: tAprilFoolsDay2020Bottle_Reward[3330383]
	-- ===删除: 3330383,1
	tAprilFoolsDay2020Bottle_Reward[3330383] = {}
	tAprilFoolsDay2020Bottle_Reward[3330383]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tAprilFoolsDay2020Bottle_Reward[3330383]["DeleteItem"] = {}
	tAprilFoolsDay2020Bottle_Reward[3330383]["DeleteItem"][1] = {}
	tAprilFoolsDay2020Bottle_Reward[3330383]["DeleteItem"][1]["Id"] = 3330383
	tAprilFoolsDay2020Bottle_Reward[3330383]["LogId"] = 12001894
	tAprilFoolsDay2020Bottle_Reward[3330383]["LogStep"] = "2[3]"
	-- 1000万爵位勋章 - 10%
	tAprilFoolsDay2020Bottle_Reward[3330383][1] = {}
	tAprilFoolsDay2020Bottle_Reward[3330383][1]["RandomItemChanceType"] = 2
	tAprilFoolsDay2020Bottle_Reward[3330383][1]["ItemChance"] = 1000
	tAprilFoolsDay2020Bottle_Reward[3330383][1]["RewardItem"] = {}
	tAprilFoolsDay2020Bottle_Reward[3330383][1]["RewardItem"][1] = {}
	tAprilFoolsDay2020Bottle_Reward[3330383][1]["RewardItem"][1]["Id"] = 3322762 -- 1000万爵位勋章[3322762][属性:8][叠加:1][金币:0], 【表格】1000万爵位勋章
	tAprilFoolsDay2020Bottle_Reward[3330383][1]["RewardItem"][1]["Attr"] = "0 1 3" -- 1000万爵位勋章（赠）*1
	tAprilFoolsDay2020Bottle_Reward[3330383][1]["RewardEffect"] = {}
	tAprilFoolsDay2020Bottle_Reward[3330383][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprilFoolsDay2020Bottle_Reward[3330383][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 3阶灵珠 - 5%
	tAprilFoolsDay2020Bottle_Reward[3330383][2] = {}
	tAprilFoolsDay2020Bottle_Reward[3330383][2]["RandomItemChanceType"] = 2
	tAprilFoolsDay2020Bottle_Reward[3330383][2]["ItemChance"] = 500
	tAprilFoolsDay2020Bottle_Reward[3330383][2]["GlobalId"] = 54293
	tAprilFoolsDay2020Bottle_Reward[3330383][2]["MaxData"] = 1
	tAprilFoolsDay2020Bottle_Reward[3330383][2]["FullIndex"] = 8
	tAprilFoolsDay2020Bottle_Reward[3330383][2]["Pos"] = 1
	tAprilFoolsDay2020Bottle_Reward[3330383][2]["RewardItem"] = {}
	tAprilFoolsDay2020Bottle_Reward[3330383][2]["RewardItem"][1] = {}
	tAprilFoolsDay2020Bottle_Reward[3330383][2]["RewardItem"][1]["Id"] = 4200003 -- 3阶灵珠[4200003][属性:72][叠加:99][金币:0], 【表格】3阶灵珠
	tAprilFoolsDay2020Bottle_Reward[3330383][2]["RewardItem"][1]["Attr"] = "0 1" -- 3阶灵珠*1
	tAprilFoolsDay2020Bottle_Reward[3330383][2]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tAprilFoolsDay2020Bottle_Reward[3330383][2]["RewardEffect"] = {}
	tAprilFoolsDay2020Bottle_Reward[3330383][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprilFoolsDay2020Bottle_Reward[3330383][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤炼石+4 - 9%
	tAprilFoolsDay2020Bottle_Reward[3330383][3] = {}
	tAprilFoolsDay2020Bottle_Reward[3330383][3]["RandomItemChanceType"] = 2
	tAprilFoolsDay2020Bottle_Reward[3330383][3]["ItemChance"] = 900
	tAprilFoolsDay2020Bottle_Reward[3330383][3]["RewardItem"] = {}
	tAprilFoolsDay2020Bottle_Reward[3330383][3]["RewardItem"][1] = {}
	tAprilFoolsDay2020Bottle_Reward[3330383][3]["RewardItem"][1]["Id"] = 730004 -- +4赤炼石[730004][属性:0][叠加:0][金币:0], 【表格】赤炼石+4
	tAprilFoolsDay2020Bottle_Reward[3330383][3]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+4赤炼石（赠）*1
	tAprilFoolsDay2020Bottle_Reward[3330383][3]["RewardEffect"] = {}
	tAprilFoolsDay2020Bottle_Reward[3330383][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprilFoolsDay2020Bottle_Reward[3330383][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 明亮星陨石 - 12%
	tAprilFoolsDay2020Bottle_Reward[3330383][4] = {}
	tAprilFoolsDay2020Bottle_Reward[3330383][4]["RandomItemChanceType"] = 2
	tAprilFoolsDay2020Bottle_Reward[3330383][4]["ItemChance"] = 1200
	tAprilFoolsDay2020Bottle_Reward[3330383][4]["RewardItem"] = {}
	tAprilFoolsDay2020Bottle_Reward[3330383][4]["RewardItem"][1] = {}
	tAprilFoolsDay2020Bottle_Reward[3330383][4]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石
	tAprilFoolsDay2020Bottle_Reward[3330383][4]["RewardItem"][1]["Attr"] = "0 4 0 2880 1" -- 2天时效(激活)的明亮星陨石*4
	tAprilFoolsDay2020Bottle_Reward[3330383][4]["RewardEffect"] = {}
	tAprilFoolsDay2020Bottle_Reward[3330383][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprilFoolsDay2020Bottle_Reward[3330383][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 万能神纹精粹 - 15%
	tAprilFoolsDay2020Bottle_Reward[3330383][5] = {}
	tAprilFoolsDay2020Bottle_Reward[3330383][5]["RandomItemChanceType"] = 2
	tAprilFoolsDay2020Bottle_Reward[3330383][5]["ItemChance"] = 1500
	tAprilFoolsDay2020Bottle_Reward[3330383][5]["RewardItem"] = {}
	tAprilFoolsDay2020Bottle_Reward[3330383][5]["RewardItem"][1] = {}
	tAprilFoolsDay2020Bottle_Reward[3330383][5]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tAprilFoolsDay2020Bottle_Reward[3330383][5]["RewardItem"][1]["Attr"] = "0 30 3" -- 万能神纹精粹*30
	tAprilFoolsDay2020Bottle_Reward[3330383][5]["RewardEffect"] = {}
	tAprilFoolsDay2020Bottle_Reward[3330383][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprilFoolsDay2020Bottle_Reward[3330383][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 魔武通玄丹 - 13%
	tAprilFoolsDay2020Bottle_Reward[3330383][6] = {}
	tAprilFoolsDay2020Bottle_Reward[3330383][6]["RandomItemChanceType"] = 2
	tAprilFoolsDay2020Bottle_Reward[3330383][6]["ItemChance"] = 1300
	tAprilFoolsDay2020Bottle_Reward[3330383][6]["RewardItem"] = {}
	tAprilFoolsDay2020Bottle_Reward[3330383][6]["RewardItem"][1] = {}
	tAprilFoolsDay2020Bottle_Reward[3330383][6]["RewardItem"][1]["Id"] = 3303373 -- 魔武通玄丹[3303373][属性:9][叠加:10000][金币:0], 【表格】魔武通玄丹
	tAprilFoolsDay2020Bottle_Reward[3330383][6]["RewardItem"][1]["Attr"] = "0 3" -- 魔武通玄丹*3
	tAprilFoolsDay2020Bottle_Reward[3330383][6]["RewardEffect"] = {}
	tAprilFoolsDay2020Bottle_Reward[3330383][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprilFoolsDay2020Bottle_Reward[3330383][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 龙鳞果 - 13%
	tAprilFoolsDay2020Bottle_Reward[3330383][7] = {}
	tAprilFoolsDay2020Bottle_Reward[3330383][7]["RandomItemChanceType"] = 2
	tAprilFoolsDay2020Bottle_Reward[3330383][7]["ItemChance"] = 1300
	tAprilFoolsDay2020Bottle_Reward[3330383][7]["RewardItem"] = {}
	tAprilFoolsDay2020Bottle_Reward[3330383][7]["RewardItem"][1] = {}
	tAprilFoolsDay2020Bottle_Reward[3330383][7]["RewardItem"][1]["Id"] = 3009101 -- 龙鳞果[3009101][属性:9][叠加:10000][金币:0], 【表格】龙鳞果
	tAprilFoolsDay2020Bottle_Reward[3330383][7]["RewardItem"][1]["Attr"] = "0 3" -- 龙鳞果*3
	tAprilFoolsDay2020Bottle_Reward[3330383][7]["RewardEffect"] = {}
	tAprilFoolsDay2020Bottle_Reward[3330383][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprilFoolsDay2020Bottle_Reward[3330383][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 气力值 - 23%
	tAprilFoolsDay2020Bottle_Reward[3330383][8] = {}
	tAprilFoolsDay2020Bottle_Reward[3330383][8]["RandomItemChanceType"] = 2
	tAprilFoolsDay2020Bottle_Reward[3330383][8]["ItemChance"] = 2300
	tAprilFoolsDay2020Bottle_Reward[3330383][8]["RewardStrengthValue"] = {}
	tAprilFoolsDay2020Bottle_Reward[3330383][8]["RewardStrengthValue"]["Value"] = 1200 -- 气力值, 【需求】气力值
	tAprilFoolsDay2020Bottle_Reward[3330383][8]["RewardEffect"] = {}
	tAprilFoolsDay2020Bottle_Reward[3330383][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprilFoolsDay2020Bottle_Reward[3330383][8]["RewardEffect"]["Effect"] = "angelwing"

----------------------------------逻辑部分---------------------------------------------
-- 进入全球服
function AprilFoolsDay2020Bottle_EnterGlobalServer()
	local nAprilFoolsDay2020Bottle_UserId = Get_UserId()
	
	-- 不在活动时间内
	if not Sys_ChkFullTime(tActivityTime["AprilFoolsDay"]["EnterActivityTime"] ) then
		Sys_MsgBox(tAprilFoolsDay2020Bottle_Text["Msg"]["TimeLimit"])
		return false
	end
	
	local nAprilFoolsDay2020Bottle_ConfigData1 = tAprilFoolsDay2020Bottle_Data["ConfigData1"]
	-- local nAprilFoolsDay2020Bottle_ServerId = Get_FrontierServerID() -- 内服测试用ServerId
	local nAprilFoolsDay2020Bottle_ServerId = tAprilFoolsDay2020Bottle_Data["GlobalServerId"]
	-- 进入跨服时记录玩家id
	AprilFoolsDayAtmosphere_SetUserId()
	--进入跨国
	if Sys_EnterServer(nAprilFoolsDay2020Bottle_ServerId,12,nAprilFoolsDay2020Bottle_UserId,nAprilFoolsDay2020Bottle_ConfigData1) then
		-- 提示
		Sys_MsgBox(tAprilFoolsDay2020Bottle_Text["Msg"]["Map"])
		return true
	end
end

-- 回到本服
function AprilFoolsDay2020Bottle_LeaveGlobalServer()
	local nAprilFoolsDay2020Bottle_UserId = Get_UserId()
	Sys_ExitOS(nAprilFoolsDay2020Bottle_UserId)
end

-- 返回双龙城
function AprilFoolsDay2020Bottle_BackCity()
	local nAprilFoolsDay2020Bottle_UserId = Get_UserId()
	-- 普通服
	local nAprilFoolsDay2020Bottle_Special = 1
	if SpecialServer_ChkNoGiftServer() then
		nAprilFoolsDay2020Bottle_Special = 2
	end
	local nAprilFoolsDay2020Bottle_MapId = tAprilFoolsDay2020Bottle_Data[nAprilFoolsDay2020Bottle_Special]["MapId"]
	local nAprilFoolsDay2020Bottle_PosX = tAprilFoolsDay2020Bottle_Data[nAprilFoolsDay2020Bottle_Special]["PosX"]
	local nAprilFoolsDay2020Bottle_PosY = tAprilFoolsDay2020Bottle_Data[nAprilFoolsDay2020Bottle_Special]["PosY"]
	User_UserRandBoundTrans(nAprilFoolsDay2020Bottle_MapId,nAprilFoolsDay2020Bottle_PosX,nAprilFoolsDay2020Bottle_PosY,2,2,nil,nAprilFoolsDay2020Bottle_UserId)
end

-- 进入本服活动地图
function AprilFoolsDay2020Bottle_EnterMap()
	local nAprilFoolsDay2020Bottle_UserId = Get_UserId()
	local nAprilFoolsDay2020Bottle_MapId = tAprilFoolsDay2020Bottle_Data["Activity"]["MapId"]
	local nAprilFoolsDay2020Bottle_PosX = tAprilFoolsDay2020Bottle_Data["Activity"]["PosX"]
	local nAprilFoolsDay2020Bottle_PosY = tAprilFoolsDay2020Bottle_Data["Activity"]["PosY"]
	User_UserRandBoundTrans(nAprilFoolsDay2020Bottle_MapId,nAprilFoolsDay2020Bottle_PosX,nAprilFoolsDay2020Bottle_PosY,2,2,nil,nAprilFoolsDay2020Bottle_UserId)
	Sys_MsgBox(tAprilFoolsDay2020Bottle_Text["Msg"]["Map"])
end

-- 进入入口
function AprilFoolsDay2020Bottle_Enter()
	if not Sys_ChkFullTime(tActivityTime["AprilFoolsDay"]["ActivityTime"]) then
		Sys_MsgBox(tAprilFoolsDay2020Bottle_Text["Msg"]["TimeLimit"])
		return
	end
	if not User_JudgeLevelAndMetempsychosis(tAprilFoolsDay2020Bottle_Data["Level"], tAprilFoolsDay2020Bottle_Data["Metempsychosis"]) then
		Sys_MsgBox(tAprilFoolsDay2020Bottle_Text["Msg"]["LevelLimit"])
		return
	end
	-- 引导完成判断
	local nAprilFoolsDay2020Bottle_GuideEvent = tAprilFoolsDay2020Bottle_Stc["Guide"]["EvnetType"]
	local nAprilFoolsDay2020Bottle_GuideType = tAprilFoolsDay2020Bottle_Stc["Guide"]["DataType"]
	local nAprilFoolsDay2020Bottle_GuideData = Get_UserStatisticValue(nAprilFoolsDay2020Bottle_GuideEvent,nAprilFoolsDay2020Bottle_GuideType) or 0
	if nAprilFoolsDay2020Bottle_GuideData == 0 then
		local sAprilFoolsDay2020Bottle_BackFunc = "NpcPosition_PathFind</N>"..tAprilFoolsDay2020Bottle_Data["MainNPCId"]
		Sys_MsgBox(tAprilFoolsDay2020Bottle_Text["Msg"]["GuideNotComplete"],sAprilFoolsDay2020Bottle_BackFunc)
		return
	end
	local sAprilFoolsDay2020Bottle_Func = "AprilFoolsDay2020Bottle_EnterMap"
	Sys_MsgBox(tAprilFoolsDay2020Bottle_Text["Msg"]["Enter"],sAprilFoolsDay2020Bottle_Func)
end

-- 准备寄信
function AprilFoolsDay2020Bottle_SendReady(nAprilFoolsDay2020Bottle_NpcId)
	local nAprilFoolsDay2020Bottle_ItemId = tAprilFoolsDay2020Bottle_Data["ItemId"]
	if not Item_ChkItem(nAprilFoolsDay2020Bottle_ItemId) then
		Sys_MsgBox(tAprilFoolsDay2020Bottle_Text["Msg"]["NoSend"])
		return
	end
	local nAprilFoolsDay2020Bottle_Num = Get_CountItemType(nAprilFoolsDay2020Bottle_ItemId,0)
	if nAprilFoolsDay2020Bottle_Num > 1 then
		tNpcGossip[nAprilFoolsDay2020Bottle_NpcId]["Text321"] = string.format(tAprilFoolsDay2020Bottle_Text[nAprilFoolsDay2020Bottle_NpcId]["Text321"],nAprilFoolsDay2020Bottle_Num)
		LinkNpcGossipFunc_New(nAprilFoolsDay2020Bottle_NpcId,"3-2")
	else
		LinkNpcGossipFunc_New(nAprilFoolsDay2020Bottle_NpcId,"3-1")
	end
end

-- 选择全部
function AprilFoolsDay2020Bottle_Choose(nAprilFoolsDay2020Bottle_NpcId,nAprilFoolsDay2020Bottle_Choose)
	if nAprilFoolsDay2020Bottle_Choose == 2 then
		tNpcGossip[nAprilFoolsDay2020Bottle_NpcId]["tOption4-1"] = {411,413}
		tNpcGossip[nAprilFoolsDay2020Bottle_NpcId]["tOption4-2"] = {421,423}
		tNpcGossip[nAprilFoolsDay2020Bottle_NpcId]["tOption4-3"] = {431,433}
	else
		tNpcGossip[nAprilFoolsDay2020Bottle_NpcId]["tOption4-1"] = {412,413}
		tNpcGossip[nAprilFoolsDay2020Bottle_NpcId]["tOption4-2"] = {422,423}
		tNpcGossip[nAprilFoolsDay2020Bottle_NpcId]["tOption4-3"] = {432,433}
	end
	LinkNpcGossipFunc_New(nAprilFoolsDay2020Bottle_NpcId,"3-1")
end

-- 寄出漂流信
function AprilFoolsDay2020Bottle_Send(nAprilFoolsDay2020Bottle_Num)
	local nAprilFoolsDay2020Bottle_UserId = Get_UserId()
	local nAprilFoolsDay2020Bottle_ItemId = tAprilFoolsDay2020Bottle_Data["ItemId"]
	if not Item_ChkItem(nAprilFoolsDay2020Bottle_ItemId) then
		Sys_MsgBox(tAprilFoolsDay2020Bottle_Text["Msg"]["NoSend"])
		return false
	end
	if nAprilFoolsDay2020Bottle_Num == 2 then
		nAprilFoolsDay2020Bottle_Num = Get_CountItemType(nAprilFoolsDay2020Bottle_ItemId,0)
	end
	if Item_ChkItem(nAprilFoolsDay2020Bottle_ItemId) and Item_DelMulItem(nAprilFoolsDay2020Bottle_ItemId,nAprilFoolsDay2020Bottle_ItemId,nAprilFoolsDay2020Bottle_Num) then
		local nAprilFoolsDay2020Bottle_NumEvent = tAprilFoolsDay2020Bottle_Stc["Num"]["EvnetType"]
		local nAprilFoolsDay2020Bottle_NumType = tAprilFoolsDay2020Bottle_Stc["Num"]["DataType"]
		local nAprilFoolsDay2020Bottle_NumData = Get_UserStatisticValue(nAprilFoolsDay2020Bottle_NumEvent,nAprilFoolsDay2020Bottle_NumType) or 0
		Task_AddStatistic(nAprilFoolsDay2020Bottle_NumEvent,nAprilFoolsDay2020Bottle_NumType,nAprilFoolsDay2020Bottle_Num,1,nAprilFoolsDay2020Bottle_UserId)
		Task_SetStcTimestamp(nAprilFoolsDay2020Bottle_NumEvent,nAprilFoolsDay2020Bottle_NumType,0,nAprilFoolsDay2020Bottle_UserId)
		local nAprilFoolsDay2020Bottle_DayEvent = tAprilFoolsDay2020Bottle_Stc["Day"]["EvnetType"]
		local nAprilFoolsDay2020Bottle_DayType = tAprilFoolsDay2020Bottle_Stc["Day"]["DataType"]
		Task_SetStatistic(nAprilFoolsDay2020Bottle_DayEvent,nAprilFoolsDay2020Bottle_DayType,0,1,nAprilFoolsDay2020Bottle_UserId)
		Task_SetStcTimestamp(nAprilFoolsDay2020Bottle_DayEvent,nAprilFoolsDay2020Bottle_DayType,0,nAprilFoolsDay2020Bottle_UserId)
		local sAprilFoolsDay2020Bottle_DelItemLog = string.format(tAprilFoolsDay2020Bottle_Log["DelItem"],nAprilFoolsDay2020Bottle_ItemId,nAprilFoolsDay2020Bottle_Num)
		Sys_SaveActionFestivalLog(sAprilFoolsDay2020Bottle_DelItemLog)
		Sys_MsgBox(string.format(tAprilFoolsDay2020Bottle_Text["Msg"]["Send"],nAprilFoolsDay2020Bottle_Num))
		User_EffectAdd("self",tAprilFoolsDay2020Bottle_Data["Effect"])
	end
end

-- 读取漂流信
function AprilFoolsDay2020Bottle_Read(nAprilFoolsDay2020Bottle_NpcId)
	local nAprilFoolsDay2020Bottle_UserId = Get_UserId()
	local nAprilFoolsDay2020Bottle_NumEvent = tAprilFoolsDay2020Bottle_Stc["Num"]["EvnetType"]
	local nAprilFoolsDay2020Bottle_NumType = tAprilFoolsDay2020Bottle_Stc["Num"]["DataType"]
	local nAprilFoolsDay2020Bottle_NumData = Get_UserStatisticValue(nAprilFoolsDay2020Bottle_NumEvent,nAprilFoolsDay2020Bottle_NumType) or 0
	if not (nAprilFoolsDay2020Bottle_NumData > 0) then
		return false
	end
	-- 背包空间判断
	local nAprilFoolsDay2020Bottle_Space = RewardTemplate_GetRewardSpace(tAprilFoolsDay2020Bottle_Reward["Reward"])
	if not User_CheckLeftSpace(nAprilFoolsDay2020Bottle_Space) then
		Sys_MsgBox(tAprilFoolsDay2020Bottle_Text["Msg"]["NoSpace"])
		return
	end
	-- 打掩码给奖励出对白
	if Task_AddStatistic(nAprilFoolsDay2020Bottle_NumEvent,nAprilFoolsDay2020Bottle_NumType,-1,1,nAprilFoolsDay2020Bottle_UserId) then
		RewardTemplate_UseItemAndMsg(tAprilFoolsDay2020Bottle_Reward["Reward"])
	end
	if Sys_Random(10,100) then
		AprilFoolsDay2020Bottle_BossBorn()
	end
	
	local nAprilFoolsDay2020Bottle_Index = math.random(1,5)
	if nAprilFoolsDay2020Bottle_NumData - 1 > 0 then
		tNpcGossip[nAprilFoolsDay2020Bottle_NpcId]["tOption2-"..nAprilFoolsDay2020Bottle_Index] = {2 ..nAprilFoolsDay2020Bottle_Index.. 1,2 ..nAprilFoolsDay2020Bottle_Index.. 2}
		tNpcGossip[nAprilFoolsDay2020Bottle_NpcId]["OptionFunc2"..nAprilFoolsDay2020Bottle_Index.."1"] = "AprilFoolsDay2020Bottle_Read</N>"..nAprilFoolsDay2020Bottle_NpcId
	else
		local nAprilFoolsDay2020Bottle_DayEvent = tAprilFoolsDay2020Bottle_Stc["Day"]["EvnetType"]
		local nAprilFoolsDay2020Bottle_DayType = tAprilFoolsDay2020Bottle_Stc["Day"]["DataType"]
		Task_SetStatistic(nAprilFoolsDay2020Bottle_DayEvent,nAprilFoolsDay2020Bottle_DayType,0,1,nAprilFoolsDay2020Bottle_UserId)
		Task_SetStcTimestamp(nAprilFoolsDay2020Bottle_DayEvent,nAprilFoolsDay2020Bottle_DayType,0,nAprilFoolsDay2020Bottle_UserId)
		tNpcGossip[nAprilFoolsDay2020Bottle_NpcId]["tOption2-"..nAprilFoolsDay2020Bottle_Index] = {2 ..nAprilFoolsDay2020Bottle_Index.. 2}
	end
	LinkNpcGossipFunc_New(nAprilFoolsDay2020Bottle_NpcId,"2-"..nAprilFoolsDay2020Bottle_Index)
end

--刷BOSS
function AprilFoolsDay2020Bottle_BossBorn()
	local nAprilFoolsDay2020Bottle_GlobalId = tAprilFoolsDay2020Bottle_Data["GlobalId"]
	local nAprilFoolsDay2020Bottle_MapId = Get_UserMapId()
	local nAprilFoolsDay2020Bottle_MapDoc = Get_MapDoc(nAprilFoolsDay2020Bottle_MapId)
	if nAprilFoolsDay2020Bottle_MapDoc ~= tAprilFoolsDay2020Bottle_Data["BOSS"]["MapDoc"] then
		return
	end
	--global 不为0 则为已刷新
	if (Get_SysDynaGlobalData2(nAprilFoolsDay2020Bottle_GlobalId) ~= 0) then
		return
	end
	--删除上一个BOSS
	Monster_DelMonster(nAprilFoolsDay2020Bottle_MapId, tAprilFoolsDay2020Bottle_Data["BOSS"]["Id"])
	
	local nAprilFoolsDay2020Bottle_Index = math.random(1,5)
	local nAprilFoolsDay2020Bottle_PosX = tAprilFoolsDay2020Bottle_Data["BOSS"][nAprilFoolsDay2020Bottle_Index]["PosX"]
	local nAprilFoolsDay2020Bottle_PosY = tAprilFoolsDay2020Bottle_Data["BOSS"][nAprilFoolsDay2020Bottle_Index]["PosY"]
	local nAprilFoolsDay2020Bottle_Gen = tAprilFoolsDay2020Bottle_Data["BOSS"][nAprilFoolsDay2020Bottle_Index]["Gen"]
	Monster_AddMonster(nAprilFoolsDay2020Bottle_MapId, nAprilFoolsDay2020Bottle_PosX, nAprilFoolsDay2020Bottle_PosY, nAprilFoolsDay2020Bottle_Gen, tAprilFoolsDay2020Bottle_Data["BOSS"]["Id"])
	local sAprilFoolsDay2020Bottle_Func = "Sys_GotoSomeWhere</N>"..nAprilFoolsDay2020Bottle_PosX.."</N>"..nAprilFoolsDay2020Bottle_PosY.."</N>"..nAprilFoolsDay2020Bottle_MapId
	Sys_MsgBox(string.format(tAprilFoolsDay2020Bottle_Text["Msg"]["Monster"], tAprilFoolsDay2020Bottle_Text["Msg"]["MonsterType"][nAprilFoolsDay2020Bottle_Index]),sAprilFoolsDay2020Bottle_Func)
	--记录已刷新
	Sys_SetSynaGlobalData2(nAprilFoolsDay2020Bottle_GlobalId, 1)
end

-- 限量重置
function AprilFoolsDay2020Bottle_ClearGlobalId1()
	-- 活动时间
	if not Sys_ChkFullTime(tActivityTime["AprilFoolsDay"]["ActivityTime"]) then
		return
	end
	local nAprilFoolsDay2020Bottle_GlobalId = tAprilFoolsDay2020Bottle_Data["GlobalId"]
	Sys_SetSynaGlobalData1(nAprilFoolsDay2020Bottle_GlobalId,0)
end

-- 限量重置
function AprilFoolsDay2020Bottle_ClearGlobalId2()
	-- 活动时间
	if not Sys_ChkFullTime(tActivityTime["AprilFoolsDay"]["ActivityTime"]) then
		return
	end
	local nAprilFoolsDay2020Bottle_GlobalId = tAprilFoolsDay2020Bottle_Data["GlobalId"]
	Sys_SetSynaGlobalData2(nAprilFoolsDay2020Bottle_GlobalId,0)
end
----------------------------------NPC部分---------------------------------------------
-- 本服 会场NPC
tNpcFace[1801] = 832
tNpcGossip[26039]= tNpcGossip[26039] or DefaultNpc:new{}
tNpcGossip[26039]["OptionHidden"] = 1
tNpcGossip[26039]["DialogueText"] = tAprilFoolsDay2020Bottle_Text[26039]
tNpcGossip[26039]["Text1-1"] = {111,112,113}
tNpcGossip[26039]["ChkFunc1-1"]= function()
	return true
end
tNpcGossip[26039]["tOption1-1"] = {111,112,113}
-- tNpcGossip[26039]["tOption1-1"] = {112,113}
tNpcGossip[26039]["OptionFunc111"] = "AprilFoolsDay2020Bottle_EnterGlobalServer"
tNpcGossip[26039]["OptionFunc112"] = "AprilFoolsDay2020Bottle_BackCity"

-- 跨国 会场NPC
tNpcFace[1802] = 832
tNpcGossip[26040]= tNpcGossip[26040] or DefaultNpc:new{}
tNpcGossip[26040]["OptionHidden"] = 1
tNpcGossip[26040]["DialogueText"] = tAprilFoolsDay2020Bottle_Text[26040]
tNpcGossip[26040]["Text1-1"] = {111,112,113}
tNpcGossip[26040]["ChkFunc1-1"]= function()
	return true
end
tNpcGossip[26040]["tOption1-1"] = {111,112}
tNpcGossip[26040]["OptionFunc111"] = "AprilFoolsDay2020Bottle_LeaveGlobalServer"

-- 漂流瓶NPC
tNpcFace[1804] = 193
tNpcGossip[26042]= tNpcGossip[26042] or DefaultNpc:new{}
tNpcGossip[26042]["OptionHidden"] = 1
tNpcGossip[26042]["DialogueText"] = tAprilFoolsDay2020Bottle_Text[26042]
-- 没有漂流瓶
tNpcGossip[26042]["Text1-1"] = {111,112,113,114,115,116,117}
tNpcGossip[26042]["ChkFunc1-1"]= function()
	local nAprilFoolsDay2020Bottle_UserId = Get_UserId()
	-- 隔天判断
	local nAprilFoolsDay2020Bottle_DayEvent = tAprilFoolsDay2020Bottle_Stc["Day"]["EvnetType"]
	local nAprilFoolsDay2020Bottle_DayType = tAprilFoolsDay2020Bottle_Stc["Day"]["DataType"]
	if Task_StcInterval(nAprilFoolsDay2020Bottle_DayEvent, nAprilFoolsDay2020Bottle_DayType, 1, 4, nAprilFoolsDay2020Bottle_UserId) then
		Task_SetStatistic(nAprilFoolsDay2020Bottle_DayEvent,nAprilFoolsDay2020Bottle_DayType,1,1,nAprilFoolsDay2020Bottle_UserId)
		Task_SetStcTimestamp(nAprilFoolsDay2020Bottle_DayEvent,nAprilFoolsDay2020Bottle_DayType,0,nAprilFoolsDay2020Bottle_UserId)
	end
	-- 寄信数量
	local nAprilFoolsDay2020Bottle_DayData = Get_UserStatisticValue(nAprilFoolsDay2020Bottle_DayEvent,nAprilFoolsDay2020Bottle_DayType) or 0
	local nAprilFoolsDay2020Bottle_NumEvent = tAprilFoolsDay2020Bottle_Stc["Num"]["EvnetType"]
	local nAprilFoolsDay2020Bottle_NumType = tAprilFoolsDay2020Bottle_Stc["Num"]["DataType"]
	local nAprilFoolsDay2020Bottle_NumData = Get_UserStatisticValue(nAprilFoolsDay2020Bottle_NumEvent,nAprilFoolsDay2020Bottle_NumType) or 0
	tNpcGossip[26042]["Text115"] = string.format(tAprilFoolsDay2020Bottle_Text[26042]["Text115"],nAprilFoolsDay2020Bottle_NumData)
	if nAprilFoolsDay2020Bottle_NumData == 0 then
		return true
	elseif nAprilFoolsDay2020Bottle_DayData == 0 then
		return true
	else
		return false
	end
end
tNpcGossip[26042]["tOption1-1"] = {111,112}
tNpcGossip[26042]["OptionFunc111"] = "AprilFoolsDay2020Bottle_SendReady</N>26042"
-- 收到漂流瓶
tNpcGossip[26042]["Text1-2"] = {121,122,123,124}
tNpcGossip[26042]["ChkFunc1-2"]= function()
	local nAprilFoolsDay2020Bottle_UserId = Get_UserId()
	local nAprilFoolsDay2020Bottle_DayEvent = tAprilFoolsDay2020Bottle_Stc["Day"]["EvnetType"]
	local nAprilFoolsDay2020Bottle_DayType = tAprilFoolsDay2020Bottle_Stc["Day"]["DataType"]
	if Task_StcInterval(nAprilFoolsDay2020Bottle_DayEvent, nAprilFoolsDay2020Bottle_DayType, 1, 4, nAprilFoolsDay2020Bottle_UserId) then
		Task_SetStatistic(nAprilFoolsDay2020Bottle_DayEvent,nAprilFoolsDay2020Bottle_DayType,1,1,nAprilFoolsDay2020Bottle_UserId)
		Task_SetStcTimestamp(nAprilFoolsDay2020Bottle_DayEvent,nAprilFoolsDay2020Bottle_DayType,0,nAprilFoolsDay2020Bottle_UserId)
	end
	local nAprilFoolsDay2020Bottle_DayData = Get_UserStatisticValue(nAprilFoolsDay2020Bottle_DayEvent,nAprilFoolsDay2020Bottle_DayType) or 0
	local nAprilFoolsDay2020Bottle_NumEvent = tAprilFoolsDay2020Bottle_Stc["Num"]["EvnetType"]
	local nAprilFoolsDay2020Bottle_NumType = tAprilFoolsDay2020Bottle_Stc["Num"]["DataType"]
	local nAprilFoolsDay2020Bottle_NumData = Get_UserStatisticValue(nAprilFoolsDay2020Bottle_NumEvent,nAprilFoolsDay2020Bottle_NumType) or 0
	if nAprilFoolsDay2020Bottle_NumData == 0 then
		return false
	elseif nAprilFoolsDay2020Bottle_DayData == 0 then
		return false
	else
		tNpcGossip[26042]["Text122"] = string.format(tAprilFoolsDay2020Bottle_Text[26042]["Text122"],nAprilFoolsDay2020Bottle_NumData)
		return true
	end
end
tNpcGossip[26042]["tOption1-2"] = {121,122}
tNpcGossip[26042]["OptionFunc121"] = "AprilFoolsDay2020Bottle_Read</N>26042"
-- 随机信件1
tNpcGossip[26042]["Text2-1"] = {211,212}
tNpcGossip[26042]["tOption2-1"] = {211,212}
tNpcGossip[26042]["ChkFunc2-1"] = function ()
	return true
end
-- 随机信件2
tNpcGossip[26042]["Text2-2"] = {221,222}
tNpcGossip[26042]["tOption2-2"] = {221,222}
tNpcGossip[26042]["ChkFunc2-2"] = function ()
	return true
end
-- 随机信件3
tNpcGossip[26042]["Text2-3"] = {231,232}
tNpcGossip[26042]["tOption2-3"] = {231,232}
tNpcGossip[26042]["ChkFunc2-3"] = function ()
	return true
end
-- 随机信件4
tNpcGossip[26042]["Text2-4"] = {241,242}
tNpcGossip[26042]["tOption2-4"] = {241,242}
tNpcGossip[26042]["ChkFunc2-4"] = function ()
	return true
end
-- 随机信件5
tNpcGossip[26042]["Text2-5"] = {251,252}
tNpcGossip[26042]["tOption2-5"] = {251,252}
tNpcGossip[26042]["ChkFunc2-5"] = function ()
	return true
end
-- 寄出漂流瓶
tNpcGossip[26042]["Text3-1"] = {311,312,313,314,315,316,317}
tNpcGossip[26042]["tOption3-1"] = {311,312,313}
tNpcGossip[26042]["ChkFunc3-1"] = function ()
	return true
end
tNpcGossip[26042]["OptionPoint311"] = "4-1"
tNpcGossip[26042]["OptionPoint312"] = "4-2"
tNpcGossip[26042]["OptionPoint313"] = "4-3"
-- 寄出全部漂流瓶
tNpcGossip[26042]["Text3-2"] = {321}
tNpcGossip[26042]["tOption3-2"] = {321,322}
tNpcGossip[26042]["ChkFunc3-2"] = function ()
	return true
end
tNpcGossip[26042]["OptionFunc321"] = "AprilFoolsDay2020Bottle_Choose</N>26042</N>1"
tNpcGossip[26042]["OptionFunc322"] = "AprilFoolsDay2020Bottle_Choose</N>26042</N>2"
-- 挑选漂流瓶1
tNpcGossip[26042]["Text4-1"] = {411,412}
tNpcGossip[26042]["tOption4-1"] = {411,412,413}
tNpcGossip[26042]["ChkFunc4-1"] = function ()
	return true
end
tNpcGossip[26042]["OptionFunc411"] = "AprilFoolsDay2020Bottle_Send</N>1"
tNpcGossip[26042]["OptionFunc412"] = "AprilFoolsDay2020Bottle_Send</N>2"
tNpcGossip[26042]["OptionPoint413"] = "3-1"
-- 挑选漂流瓶2
tNpcGossip[26042]["Text4-2"] = {421,422}
tNpcGossip[26042]["tOption4-2"] = {421,422,423}
tNpcGossip[26042]["ChkFunc4-2"] = function ()
	return true
end
tNpcGossip[26042]["OptionFunc421"] = "AprilFoolsDay2020Bottle_Send</N>1"
tNpcGossip[26042]["OptionFunc422"] = "AprilFoolsDay2020Bottle_Send</N>2"
tNpcGossip[26042]["OptionPoint423"] = "3-1"
-- 挑选漂流瓶3
tNpcGossip[26042]["Text4-3"] = {431,432}
tNpcGossip[26042]["tOption4-3"] = {431,432,433}
tNpcGossip[26042]["ChkFunc4-3"] = function ()
	return true
end
tNpcGossip[26042]["OptionFunc431"] = "AprilFoolsDay2020Bottle_Send</N>1"
tNpcGossip[26042]["OptionFunc432"] = "AprilFoolsDay2020Bottle_Send</N>2"
tNpcGossip[26042]["OptionPoint433"] = "3-1"


---------------------------------物品部分---------------------------------------------
--------物品无对白模板
tItem[3330026] = tItem[3330026] or {}
tItem[3330026]["Function"] = function(nAprilFoolsDay2020Bottle_ItemId,sAprilFoolsDay2020Bottle_ItemName)
	-- 过期删除
	if not Sys_ChkFullTime(tActivityTime["AprilFoolsDay"]["ActivityTime"]) then
		local nItemNum = Get_CountItemType(nAprilFoolsDay2020Bottle_ItemId,0)
		if Item_ChkItem(nAprilFoolsDay2020Bottle_ItemId) and Item_DelAllItemByType(nAprilFoolsDay2020Bottle_ItemId) then
			User_TalkChannel2005(tAprilFoolsDay2020Bottle_Text["Msg"]["ItemLimit"])
			local sAprilFoolsDay2020Bottle_Log = tAprilFoolsDay2020Bottle_Log["DelItem"]
			Sys_SaveActionFestivalLog(string.format(sAprilFoolsDay2020Bottle_Log,nAprilFoolsDay2020Bottle_ItemId,nItemNum))
 		end
		return
	end
	-- 普通服
	local nAprilFoolsDay2020Bottle_Special = 1
	if SpecialServer_ChkNoGiftServer() then
		nAprilFoolsDay2020Bottle_Special = 2
	end
	-- 导航
	local nAprilFoolsDay2020Bottle_UserId = Get_UserId()
	local nAprilFoolsDay2020Bottle_UserMapId = Get_UserMapId(nAprilFoolsDay2020Bottle_UserId)
	local sAprilFoolsDay2020Bottle_Func = "NpcPosition_PathFind</N>"..tAprilFoolsDay2020Bottle_Data["NPCId"]
	if nAprilFoolsDay2020Bottle_UserMapId == tAprilFoolsDay2020Bottle_Data[nAprilFoolsDay2020Bottle_Special]["MapId"] then
		 sAprilFoolsDay2020Bottle_Func = "NpcPosition_PathFind</N>"..tAprilFoolsDay2020Bottle_Data["EnterNPCId"]
	end
	Sys_MsgBox(tAprilFoolsDay2020Bottle_Text["Msg"]["BottleGuide"],sAprilFoolsDay2020Bottle_Func)
end
-- 漂流瓶回礼
tItem[3330383] = tItem[3330383] or {}
tItem[3330383]["Function"] = function(nAprilFoolsDay2020Bottle_ItemId,sAprilFoolsDay2020Bottle_ItemName)
	RewardTemplate_RandomReward(tAprilFoolsDay2020Bottle_Reward,nAprilFoolsDay2020Bottle_ItemId)
end
---------------------------------时间自检---------------------------------------------
-- 每小时全服限量1
local tAprilFoolsDay2020Bottle_TimeChk = {}
	tAprilFoolsDay2020Bottle_TimeChk[1] = {}
	tAprilFoolsDay2020Bottle_TimeChk[1]["ActivityTime"] = tActivityTime["AprilFoolsDay"]["ActivityTime"]
	tAprilFoolsDay2020Bottle_TimeChk[1]["Type"] = 2
	tAprilFoolsDay2020Bottle_TimeChk[1]["TimeType"] = 5  --每小时
	tAprilFoolsDay2020Bottle_TimeChk[1]["Multiple"] = {}
	tAprilFoolsDay2020Bottle_TimeChk[1]["Multiple"][1]  = "00 00"
	tAprilFoolsDay2020Bottle_TimeChk[1]["Func"] = AprilFoolsDay2020Bottle_ClearGlobalId1
	
	tAprilFoolsDay2020Bottle_TimeChk[2] = {}
	tAprilFoolsDay2020Bottle_TimeChk[2]["ActivityTime"] = tActivityTime["AprilFoolsDay"]["ActivityTime"]
	tAprilFoolsDay2020Bottle_TimeChk[2]["Type"] = 2
	tAprilFoolsDay2020Bottle_TimeChk[2]["TimeType"] = 5  --每小时
	tAprilFoolsDay2020Bottle_TimeChk[2]["Multiple"] = {}
	tAprilFoolsDay2020Bottle_TimeChk[2]["Multiple"][1]  = "00 00"
	tAprilFoolsDay2020Bottle_TimeChk[2]["Multiple"][2]  = "10 10"
	tAprilFoolsDay2020Bottle_TimeChk[2]["Multiple"][3]  = "20 20"
	tAprilFoolsDay2020Bottle_TimeChk[2]["Multiple"][4]  = "30 30"
	tAprilFoolsDay2020Bottle_TimeChk[2]["Multiple"][5]  = "40 40"
	tAprilFoolsDay2020Bottle_TimeChk[2]["Multiple"][6]  = "50 50"
	tAprilFoolsDay2020Bottle_TimeChk[2]["Func"] = AprilFoolsDay2020Bottle_ClearGlobalId2
table.insert(tSystemTime_InitialData,tAprilFoolsDay2020Bottle_TimeChk[1])
table.insert(tSystemTime_InitialData,tAprilFoolsDay2020Bottle_TimeChk[2])