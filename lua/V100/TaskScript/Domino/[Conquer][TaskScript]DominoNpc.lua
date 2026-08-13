------------------------------------------------------------------------------------
--Name:		[征服][活动脚本]多米诺版本测试
--Purpose:	多米诺版本测试
--Creator: 	严振飞
--Created:	2017/11/06
------------------------------------------------------------------------------------
--命名规则
--DominoNpc_

--LogId: 18000167

-------------------------------------------基础数据--------------------------------------------
--stc掩码
local tDominoNpc_Stc = {}
	tDominoNpc_Stc[1] = {}
	tDominoNpc_Stc[1]["EventType"] = 169
	tDominoNpc_Stc[1]["DataType"] = 99

-- 基础数据
local tDominoNpc_Cnot = {}
	tDominoNpc_Cnot["ChgMap"] = {}
	tDominoNpc_Cnot["ChgMap"][1] = {1002,343,434} -- 返回双龙城
	tDominoNpc_Cnot["ChgMap"][2] = {3053,203,153} -- 进入德州地图
	tDominoNpc_Cnot["ChgMap"][3] = {3053,188,266} -- 进入多米诺地图
	tDominoNpc_Cnot["ChgMap"][4] = {1036,261,238} -- 激情服返回市场
	
	-- tDominoNpc_Cnot["NewChgMap"] = {}
	-- tDominoNpc_Cnot["NewChgMap"][1] = {1002,343,434} -- 返回双龙城
	-- tDominoNpc_Cnot["NewChgMap"][2] = {3053,203,153} -- 进入德州地图
	-- tDominoNpc_Cnot["NewChgMap"][3] = {3053,188,266} -- 进入多米诺地图
	-- 引导漫画
	tDominoNpc_Cnot["GuideTitle"] = 1025
	
	-- 网页
	tDominoNpc_Cnot["TheWeb"] = "http://co.99.com/guide/event/2017/pokerevent/client/"
	
	-- 打开内嵌网页（有时间限制）
	tDominoNpc_Cnot["WebPage"] = "http://co.99.com/guide/event/2017/dominoevent/client/"
	
	-- facebook
	tDominoNpc_Cnot["WinWeb"] = {}
	tDominoNpc_Cnot["WinWeb"][22378] = "https://payment.99.com/index/v2/code_credit/scratchcard.html"
	tDominoNpc_Cnot["WinWeb"][1] = "http://poll.99.com/survey.php?sv_id=869"
	tDominoNpc_Cnot["WinWeb"][2] = "http://arpoll.99.com/survey.php?sv_id=193"

	-- 打包需求空间
	tDominoNpc_Cnot["NeedSpace"] = 1
	
	-- 打包多米诺币数据
	tDominoNpc_Cnot["Pack"] = {}
	tDominoNpc_Cnot["Pack"]["poundage"] = 0 -- 手续费
	tDominoNpc_Cnot["Pack"][1] = 5000000
	tDominoNpc_Cnot["Pack"][2] = 50000000
	tDominoNpc_Cnot["Pack"][3] = 500000000

	tDominoNpc_Cnot["global"] = 51995

-- 打包数据
local tDominoNpc_Reward = {}
	-- 5KKDiamonoCoinsBag
	tDominoNpc_Reward[1] = {}
	tDominoNpc_Reward[1]["RewardItem"] = {}
	tDominoNpc_Reward[1]["RewardItem"][1] = {}
	tDominoNpc_Reward[1]["RewardItem"][1]["Id"] = 3390023 -- 5KKDiamonoCoinsBag
	tDominoNpc_Reward[1]["RewardItem"][1]["Attr"] = "0 1"
	tDominoNpc_Reward[1]["Log"] = "0,0,20,%d,18000167,2,3390023,1"

	-- 50KKDiamonoCoinsBag
	tDominoNpc_Reward[2] = {}
	tDominoNpc_Reward[2]["RewardItem"] = {}
	tDominoNpc_Reward[2]["RewardItem"][1] = {}
	tDominoNpc_Reward[2]["RewardItem"][1]["Id"] = 3390024 -- 50KKDiamonoCoinsBag
	tDominoNpc_Reward[2]["RewardItem"][1]["Attr"] = "0 1"
	tDominoNpc_Reward[2]["Log"] = "0,0,20,%d,18000167,2,3390024,1"

	-- 500KKDiamonoCoinsBag
	tDominoNpc_Reward[3] = {}
	tDominoNpc_Reward[3]["RewardItem"] = {}
	tDominoNpc_Reward[3]["RewardItem"][1] = {}
	tDominoNpc_Reward[3]["RewardItem"][1]["Id"] = 3390025 -- 500KKDiamonoCoinsBag
	tDominoNpc_Reward[3]["RewardItem"][1]["Attr"] = "0 1"
	tDominoNpc_Reward[3]["Log"] = "0,0,20,%d,18000167,2,3390025,1"

-- 拆分数据
local tDominoNpc_UnPack = {}
	-- 500W多米诺币钱箱拆分为10个50W多米诺币钱箱
	tDominoNpc_UnPack[1] = {}
	tDominoNpc_UnPack[1]["DeleteItem"] = {}
	tDominoNpc_UnPack[1]["DeleteItem"][1] = {}
	tDominoNpc_UnPack[1]["DeleteItem"][1]["Id"] = 3390023 -- 5KKDiamonoCoinsBag
	tDominoNpc_UnPack[1]["RewardItem"] = {}
	tDominoNpc_UnPack[1]["RewardItem"][1] = {}
	tDominoNpc_UnPack[1]["RewardItem"][1]["Id"] = 3390022 -- 500KDiamonoCoinsBag
	tDominoNpc_UnPack[1]["RewardItem"][1]["Attr"] = "0 10"
	tDominoNpc_UnPack[1]["Log"] = "0,0,3390023,1,18000167,2,3390022,10"

	-- 5000W多米诺币钱箱拆分为10个500W多米诺币钱箱
	tDominoNpc_UnPack[2] = {}
	tDominoNpc_UnPack[2]["DeleteItem"] = {}
	tDominoNpc_UnPack[2]["DeleteItem"][1] = {}
	tDominoNpc_UnPack[2]["DeleteItem"][1]["Id"] = 3390024 -- 50KKDiamonoCoinsBag
	tDominoNpc_UnPack[2]["RewardItem"] = {}
	tDominoNpc_UnPack[2]["RewardItem"][1] = {}
	tDominoNpc_UnPack[2]["RewardItem"][1]["Id"] = 3390023 -- 500KDiamonoCoinsBag
	tDominoNpc_UnPack[2]["RewardItem"][1]["Attr"] = "0 10"
	tDominoNpc_UnPack[2]["Log"] = "0,0,3390024,1,18000167,2,3390023,10"

	-- 5亿多米诺币钱箱拆分为10个5000W多米诺币钱箱
	tDominoNpc_UnPack[3] = {}
	tDominoNpc_UnPack[3]["DeleteItem"] = {}
	tDominoNpc_UnPack[3]["DeleteItem"][1] = {}
	tDominoNpc_UnPack[3]["DeleteItem"][1]["Id"] = 3390025 -- 50KKDiamonoCoinsBag
	tDominoNpc_UnPack[3]["RewardItem"] = {}
	tDominoNpc_UnPack[3]["RewardItem"][1] = {}
	tDominoNpc_UnPack[3]["RewardItem"][1]["Id"] = 3390024 -- 500KDiamonoCoinsBag
	tDominoNpc_UnPack[3]["RewardItem"][1]["Attr"] = "0 10"
	tDominoNpc_UnPack[3]["Log"] = "0,0,3390025,1,18000167,2,3390024,10"

	
-------------------------------------------函数配置--------------------------------------------
-- 上线触发
function DominoNpc_Login()
	local tDoSend = {}
	-- 活动时间
	for nType,sTime in ipairs(tActivityTime["DominoNpc"]["WebTime"]) do
		if Sys_ChkFullTime(sTime) then
			tDoSend[nType] = true
		end
	end
	
	-- 时间外退出
	if next(tDoSend) == nil then
		return
	end
	
	-- 是否已推送
	local nEvent = tDominoNpc_Stc[1]["EventType"]
	local nType = tDominoNpc_Stc[1]["DataType"]
	if not Task_ChkStcValue(nEvent,nType,"==",0) then
		if not Task_StcInterval(nEvent,nType,1,4) then
			return
		end
	end
	
	-- 置掩码
	Task_SetStatistic(nEvent,nType,1,1)
	Task_SetStcTimestamp(nEvent,nType,0)

	-- 图片推送
	if tDoSend[1] then
		local nTitleId = tDominoNpc_Cnot["GuideTitle"]
		User_NoviceTeaching(nTitleId)
	end
	
	
	-- 网页弹窗
	if tDoSend[2] then
		local sPszParam = tDominoNpc_Cnot["WebPage"]
		User_SendWebDialog(sPszParam)
	end
end


-- 开启多米诺兑换商店
function DominoNpc_OpenShop()
	User_OpenDialog(835)
	User_OpenDialog(860)
end

-- 开启网页
function DominoNpc_OpenWeb()
	User_SendWebDialog(tDominoNpc_Cnot["TheWeb"])
end

-- 开启内嵌网页
function DominoNpc_OpenWinWeb(nNpcId)
	User_SendWebPage(tDominoNpc_Cnot["WinWeb"][nNpcId])
end

-- 传送函数
function DominoNpc_ChgMap(nType)
	-- local nGlobalId = tDominoNpc_Cnot["global"]
	-- local nData0 = Get_SysDynaGlobalData0(nGlobalId)
	-- if nData0 == 1 then
		-- -- 获取传送信息
		-- local nMapId = tDominoNpc_Cnot["NewChgMap"][nType][1]
		-- local nCellx = tDominoNpc_Cnot["NewChgMap"][nType][2]
		-- local nCelly = tDominoNpc_Cnot["NewChgMap"][nType][3]
		
		-- if Get_NpcMapID() ~= Get_UserMapId() then
			-- User_TalkChannel2005(tTransferFail_Text["MsgTip"])
			-- return
		-- end
		
		-- -- 回双龙城需要记录坐标点
		-- if nMapId == 1002 then
			-- User_RecordPoint(nMapId,nCellx,nCelly)
		-- end
		
		-- -- 传送
		-- User_UserRandBoundTrans(nMapId,nCellx,nCelly,1,1)
		-- User_TalkChannel2007(tDominoNpc_Text["Talk2007"][nType])
		-- return
	-- end

	-- 判断激情服
	if SpecialServer_ChkNoGiftServer() and nType == 1 then
		nType = 4
	end
	
	-- 获取传送信息
	local nMapId = tDominoNpc_Cnot["ChgMap"][nType][1]
	local nCellx = tDominoNpc_Cnot["ChgMap"][nType][2]
	local nCelly = tDominoNpc_Cnot["ChgMap"][nType][3]
	
	if Get_NpcMapID() ~= Get_UserMapId() then
		User_TalkChannel2005(tTransferFail_Text["MsgTip"])
		return
	end
	
	-- 回双龙城需要记录坐标点
	if nMapId == 1002 or nMapId == 1036 then
		User_RecordPoint(nMapId,nCellx,nCelly)
	end
	
	-- 传送
	User_UserRandBoundTrans(nMapId,nCellx,nCelly,1,1)
	User_TalkChannel2007(tDominoNpc_Text["Talk2007"][nType])
end


-------------------------------------------
-- 多米诺币不足
function DominoNpc_NoDominoCoin(nNpcId,nType)
	-- 初始化对白
	local nText = tonumber(22 .. nType)
	tNpcGossip[nNpcId]["Text2-2"] = {nText}
	
	-- 出对白
	LinkNpcGossipFunc_New(nNpcId,"2-2")
end


-- 打包二次确认
function DominoNpc_IsPack(nNpcId,nType)
	-- local nNpcId = Get_NpcId()
	local nBeansNum = tDominoNpc_Cnot["Pack"][nType] + tDominoNpc_Cnot["Pack"]["poundage"]
	-- 多米诺币不足
	-- if not User_CanPutBeans2Bag(-nBeansNum) then
		-- DominoNpc_NoDominoCoin(nNpcId,nType)
		-- return
	-- end
	
	-- 背包空间
	if not User_CheckLeftSpace(tDominoNpc_Cnot["NeedSpace"]) then
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return
	end
	
	-- 初始化对白
	local nText = tonumber(31 .. nType)
	tNpcGossip[nNpcId]["Text3-1"] = {nText}

	-- 确认选项功能
	tNpcGossip[nNpcId]["OptionFunc311"] = string.format("DominoNpc_DoPack</N>%d</N>%d",nNpcId,nType)
	
	-- 出对白
	LinkNpcGossipFunc_New(nNpcId,"3-1")
end


-- 打包多米诺币
function DominoNpc_DoPack(nNpcId,nType)
	local nBeansNum = tDominoNpc_Cnot["Pack"][nType] + tDominoNpc_Cnot["Pack"]["poundage"]
	-- 多米诺币不足
	-- if not User_CanPutBeans2Bag(-nBeansNum) then
		-- DominoNpc_NoDominoCoin(nNpcId,nType)
		-- return
	-- end
	
	-- 背包空间
	if not User_CheckLeftSpace(tDominoNpc_Cnot["NeedSpace"]) then
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return
	end
	
	-- 扣除多米诺币，给礼包
	if User_AddBeans(-nBeansNum) then
		local tTemp = CommonFunc_Copy(tDominoNpc_Reward[nType])
		tTemp["Log"] = string.format(tTemp["Log"],nBeansNum)
		RewardTemplate_UseItem(tTemp)
		
		-- 对白
		LinkNpcGossipFunc_New(nNpcId,"3-2")
	end
end


-------------------------------------------
-- 拆分二次确认
function DominoNpc_IsUnPack(nNpcId,nType)
	-- local nNpcId = Get_NpcId()
	local nItemId = tDominoNpc_UnPack[nType]["DeleteItem"][1]["Id"]
	-- 没有可拆分礼包
	if not Item_ChkItem(nItemId) then
		local sItemName = Get_ItemtypeName(nItemId)
		tNpcGossip[nNpcId]["Text421"] = string.format(tDominoNpc_Text[nNpcId]["Text421"],sItemName)
		LinkNpcGossipFunc_New(nNpcId,"4-2")
		return
	end

	-- 背包空间
	if not User_CheckLeftSpace(tDominoNpc_Cnot["NeedSpace"]) then
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return
	end
	
	local tTemp = CommonFunc_Copy(tDominoNpc_UnPack[nType])
	local sDelItemName = Get_ItemtypeName(tTemp["DeleteItem"][1]["Id"])
	local sNewItemName = Get_ItemtypeName(tTemp["RewardItem"][1]["Id"])
	local tItemAttr = Sys_Split(tTemp["RewardItem"][1]["Attr"]," ")
	local nNewItemNum = tItemAttr[2]
	tNpcGossip[nNpcId]["Text431"] = string.format(tDominoNpc_Text[nNpcId]["Text431"],sDelItemName,nNewItemNum,sNewItemName)
	tNpcGossip[nNpcId]["OptionFunc431"] = string.format("DominoNpc_DoUnPack</N>%d</N>%d",nNpcId,nType)
	LinkNpcGossipFunc_New(nNpcId,"4-3")
end

-- 执行拆分
function DominoNpc_DoUnPack(nNpcId,nType)
	local nItemId = tDominoNpc_Reward[nType]["RewardItem"][1]["Id"]
	-- 没有可拆分礼包
	if not Item_ChkItem(nItemId) then
		local sItemName = Get_ItemtypeName(nItemId)
		tNpcGossip[nNpcId]["Text421"] = string.format(tDominoNpc_Text[nNpcId]["Text421"],sItemName)
		LinkNpcGossipFunc_New(nNpcId,"4-2")
		return
	end
	
	-- 背包空间
	if not User_CheckLeftSpace(tDominoNpc_Cnot["NeedSpace"]) then
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return
	end
	
	local tTemp = CommonFunc_Copy(tDominoNpc_UnPack[nType])
	if RewardTemplate_UseItem(tTemp) then
		LinkNpcGossipFunc_New(nNpcId,"4-4")
	end
end



-------------------------------------------NPC配置--------------------------------------------
-- 双龙城NPC【DominoManager】
tNpcFace[4816] = 175
tNpcGossip[19370] = tNpcGossip[19370] or DefaultNpc:new{}
tNpcGossip[22373] = tNpcGossip[19370] or DefaultNpc:new{}
tNpcGossip[19370]["OptionHidden"] = 1
tNpcGossip[19370]["DialogueText"] = tDominoNpc_Text[19370]

-- 活动对白
tNpcGossip[19370]["Text1-1"] = {111,112}
tNpcGossip[19370]["tOption1-1"] = {111,112,113}
tNpcGossip[19370]["OptionFunc111"] = "DominoNpc_ChgMap</N>3"
tNpcGossip[19370]["OptionFunc112"] = "DominoNpc_OpenShop"

------------------------------------------
-- 多米诺地图内NPC【GameManager】
tNpcFace[297] = 175
tNpcGossip[22351] = tNpcGossip[22351] or DefaultNpc:new{}
tNpcGossip[22351]["OptionHidden"] = 1
tNpcGossip[22351]["DialogueText"] = tDominoNpc_Text[22351]

-- 活动对白
tNpcGossip[22351]["Text1-1"] = {111,112,113}
tNpcGossip[22351]["tOption1-1"] = {111,112,113}
tNpcGossip[22351]["OptionFunc111"] = "DominoNpc_ChgMap</N>1"
tNpcGossip[22351]["OptionFunc112"] = "DominoNpc_ChgMap</N>2"

-- 多米诺地图内NPC【MillionaireLee】
tNpcFace[300] = 7
tNpcGossip[22377] = tNpcGossip[22377] or DefaultNpc:new{}
tNpcGossip[22377]["OptionHidden"] = 1
tNpcGossip[22377]["DialogueText"] = tDominoNpc_Text[22377]
-- 活动对白
tNpcGossip[22377]["Text1-1"] = {111,112}
tNpcGossip[22377]["tOption1-1"] = {111,112,113}
tNpcGossip[22377]["OptionPoint111"] = "2-1"
tNpcGossip[22377]["OptionPoint112"] = "4-1"

-- 打包选择对白
tNpcGossip[22377]["Text2-1"] = {211,212,213,214}
tNpcGossip[22377]["tOption2-1"] = {211,212,213,214}
tNpcGossip[22377]["OptionFunc211"] = "DominoNpc_IsPack</N>22377</N>1"
tNpcGossip[22377]["OptionFunc212"] = "DominoNpc_IsPack</N>22377</N>2"
tNpcGossip[22377]["OptionFunc213"] = "DominoNpc_IsPack</N>22377</N>3"
-- 多米诺币不足
tNpcGossip[22377]["Text2-2"] = {221,222,223}
tNpcGossip[22377]["tOption2-2"] = {221}
-- 背包满
tNpcGossip[22377]["Text2-3"] = {231}
tNpcGossip[22377]["tOption2-3"] = {231}
-- 二次确认
tNpcGossip[22377]["Text3-1"] = {311,312,313}
tNpcGossip[22377]["tOption3-1"] = {311,312}
tNpcGossip[22377]["OptionFunc311"] = "DominoNpc_DoPack</N>1"
-- 完成打包
tNpcGossip[22377]["Text3-2"] = {321}
tNpcGossip[22377]["tOption3-2"] = {321}

-- 拆分选项对白
tNpcGossip[22377]["Text4-1"] = {411,412,413,414}
tNpcGossip[22377]["tOption4-1"] = {411,412,413,414}
tNpcGossip[22377]["OptionFunc411"] = "DominoNpc_IsUnPack</N>22377</N>1"
tNpcGossip[22377]["OptionFunc412"] = "DominoNpc_IsUnPack</N>22377</N>2"
tNpcGossip[22377]["OptionFunc413"] = "DominoNpc_IsUnPack</N>22377</N>3"
-- 没有可拆分礼包
tNpcGossip[22377]["Text4-2"] = {421}
tNpcGossip[22377]["tOption4-2"] = {421}
-- 二次确认
tNpcGossip[22377]["Text4-3"] = {431}
tNpcGossip[22377]["tOption4-3"] = {431,432}
tNpcGossip[22377]["OptionFunc431"] = "DominoNpc_DoUnPack</N>1</N>22377"
-- 完成拆分
tNpcGossip[22377]["Text4-4"] = {441}
tNpcGossip[22377]["tOption4-4"] = {441}

-- 复制一个打包NPC
-- tNpcGossip[22375] = tNpcGossip[22377] or DefaultNpc:new{}

------------------------------------------
-- 多米诺地图内NPC【DominoCoinSeller】
tNpcFace[5906] = 26
tNpcGossip[22378] = tNpcGossip[22378] or DefaultNpc:new{}
tNpcGossip[22378]["OptionHidden"] = 1
tNpcGossip[22378]["DialogueText"] = tDominoNpc_Text[22378]

tNpcGossip[22378]["Text1-1"] = {111}
tNpcGossip[22378]["tOption1-1"] = {111,112}
tNpcGossip[22378]["OptionFunc111"] = "DominoNpc_OpenWinWeb</N>22378"

------------------------------------------
-- 新增问券NPC
tNpcFace[344] = 119
tNpcGossip[22401] = tNpcGossip[22401] or DefaultNpc:new{}
tNpcGossip[22401]["OptionHidden"] = 1
tNpcGossip[22401]["DialogueText"] = tDominoNpc_Text[22401]

tNpcGossip[22401]["Text1-1"] = {111,112}
tNpcGossip[22401]["tOption1-1"] = {111,112}
tNpcGossip[22401]["OptionFunc111"] = "DominoNpc_OpenWinWeb</N>1"
tNpcGossip[22401]["OptionFunc112"] = "DominoNpc_OpenWinWeb</N>2"

tNpcGossip[22402] = tNpcGossip[22401] or DefaultNpc:new{}
tNpcGossip[22403] = tNpcGossip[22401] or DefaultNpc:new{}

----------------------------------------------------------------------------
-- 上线触发
-- table.insert(tSystem_PlayLogin_Func,DominoNpc_Login)
