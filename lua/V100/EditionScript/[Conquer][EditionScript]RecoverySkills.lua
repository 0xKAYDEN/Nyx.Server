----------------------------------------------------------------------------
--Name:		[征服][功能脚本]恢复召唤技能.lua
--Purpose:	恢复召唤技能
--Creator: 	严振飞
--Created:	2018/01/31
----------------------------------------------------------------------------

-- 命名前缀词： 
-- RecoverySkills_
-- log 10003012
------------------------------------------数据部分配置------------------------------------------
local tRecoverySkills_Data = {}

	-- 说明
	-- tRecoverySkills_Data[14740] = {}
	-- tRecoverySkills_Data[14740]["AtcTime"] = tActivityTime["DogUpItem"]["LearnMagic"] 	-- 时间【必配】
	-- tRecoverySkills_Data[14740]["MagicType"] = 14740 									-- 技能类型【必配】
	-- tRecoverySkills_Data[14740]["ForeverLev"] = 5 										-- 永久技能等级
	-- tRecoverySkills_Data[14740]["IsLearn"] = {} 											-- 是否学过该技能【必配】
	-- tRecoverySkills_Data[14740]["IsLearn"]["EventType"] = 172
	-- tRecoverySkills_Data[14740]["IsLearn"]["DataType"] = 89
	-- tRecoverySkills_Data[14740]["MagicLev"] = {} 										-- 恢复技能等级【必配】
	-- tRecoverySkills_Data[14740]["MagicLev"]["EventType"] = 172
	-- tRecoverySkills_Data[14740]["MagicLev"]["DataType"] = 80
	-- tRecoverySkills_Data[14740]["MagicName"] = {} 										-- 技能名字【必配】
	-- tRecoverySkills_Data[14740]["MagicName"][0] = tDogUpItem_Text["MagicName"][14740][0]
	-- tRecoverySkills_Data[14740]["MagicName"][1] = tDogUpItem_Text["MagicName"][14740][1]
	-- tRecoverySkills_Data[14740]["MagicName"][2] = tDogUpItem_Text["MagicName"][14740][2]
	-- tRecoverySkills_Data[14740]["MagicName"][3] = tDogUpItem_Text["MagicName"][14740][3]
	-- tRecoverySkills_Data[14740]["MagicName"][4] = tDogUpItem_Text["MagicName"][14740][4]
	-- tRecoverySkills_Data[14740]["MagicName"][5] = tDogUpItem_Text["MagicName"][14740][5]
	-- tRecoverySkills_Data[14740]["MagicName"][6] = tDogUpItem_Text["MagicName"][14740][6]
-----------------------------------------------------------------------------------------------------
--Name:		180126[简体征服][活动脚本]狗年年兽活动-跟随技能相关
--Creator: 	严振飞
--Created:	2018/01/26
------------------------------------------------------------------------------------------------------
	-- 召唤黑狗
	tRecoverySkills_Data[14740] = {}
	tRecoverySkills_Data[14740]["AtcTime"] = tActivityTime["DogUpItem"]["LearnMagic"]
	tRecoverySkills_Data[14740]["MagicType"] = 14740
	tRecoverySkills_Data[14740]["ForeverLev"] = 5
	tRecoverySkills_Data[14740]["IsLearn"] = {}
	tRecoverySkills_Data[14740]["IsLearn"]["EventType"] = 172
	tRecoverySkills_Data[14740]["IsLearn"]["DataType"] = 89
	tRecoverySkills_Data[14740]["MagicLev"] = {}
	tRecoverySkills_Data[14740]["MagicLev"]["EventType"] = 172
	tRecoverySkills_Data[14740]["MagicLev"]["DataType"] = 80
	tRecoverySkills_Data[14740]["MagicName"] = {}
	tRecoverySkills_Data[14740]["MagicName"][0] = tDogUpItem_Text["MagicName"][14740][0]
	tRecoverySkills_Data[14740]["MagicName"][1] = tDogUpItem_Text["MagicName"][14740][1]
	tRecoverySkills_Data[14740]["MagicName"][2] = tDogUpItem_Text["MagicName"][14740][2]
	tRecoverySkills_Data[14740]["MagicName"][3] = tDogUpItem_Text["MagicName"][14740][3]
	tRecoverySkills_Data[14740]["MagicName"][4] = tDogUpItem_Text["MagicName"][14740][4]
	tRecoverySkills_Data[14740]["MagicName"][5] = tDogUpItem_Text["MagicName"][14740][5]
	tRecoverySkills_Data[14740]["MagicName"][6] = tDogUpItem_Text["MagicName"][14740][6]
	-- 召唤白狗
	tRecoverySkills_Data[14750] = {}
	tRecoverySkills_Data[14750]["AtcTime"] = tActivityTime["DogUpItem"]["LearnMagic"]
	tRecoverySkills_Data[14750]["MagicType"] = 14750
	tRecoverySkills_Data[14750]["ForeverLev"] = 5
	tRecoverySkills_Data[14750]["IsLearn"] = {}
	tRecoverySkills_Data[14750]["IsLearn"]["EventType"] = 172
	tRecoverySkills_Data[14750]["IsLearn"]["DataType"] = 90
	tRecoverySkills_Data[14750]["MagicLev"] = {}
	tRecoverySkills_Data[14750]["MagicLev"]["EventType"] = 172
	tRecoverySkills_Data[14750]["MagicLev"]["DataType"] = 82
	tRecoverySkills_Data[14750]["MagicName"] = {}
	tRecoverySkills_Data[14750]["MagicName"][0] = tDogUpItem_Text["MagicName"][14750][0]
	tRecoverySkills_Data[14750]["MagicName"][1] = tDogUpItem_Text["MagicName"][14750][1]
	tRecoverySkills_Data[14750]["MagicName"][2] = tDogUpItem_Text["MagicName"][14750][2]
	tRecoverySkills_Data[14750]["MagicName"][3] = tDogUpItem_Text["MagicName"][14750][3]
	tRecoverySkills_Data[14750]["MagicName"][4] = tDogUpItem_Text["MagicName"][14750][4]
	tRecoverySkills_Data[14750]["MagicName"][5] = tDogUpItem_Text["MagicName"][14750][5]
	tRecoverySkills_Data[14750]["MagicName"][6] = tDogUpItem_Text["MagicName"][14750][6]

	-- 召唤金狗
	tRecoverySkills_Data[14760] = {}
	tRecoverySkills_Data[14760]["AtcTime"] = tActivityTime["DogUpItem"]["LearnMagic"]
	tRecoverySkills_Data[14760]["MagicType"] = 14760
	tRecoverySkills_Data[14760]["ForeverLev"] = 5
	tRecoverySkills_Data[14760]["IsLearn"] = {}
	tRecoverySkills_Data[14760]["IsLearn"]["EventType"] = 172
	tRecoverySkills_Data[14760]["IsLearn"]["DataType"] = 91
	tRecoverySkills_Data[14760]["MagicLev"] = {}
	tRecoverySkills_Data[14760]["MagicLev"]["EventType"] = 172
	tRecoverySkills_Data[14760]["MagicLev"]["DataType"] = 84
	tRecoverySkills_Data[14760]["MagicName"] = {}
	tRecoverySkills_Data[14760]["MagicName"][0] = tDogUpItem_Text["MagicName"][14760][0]
	tRecoverySkills_Data[14760]["MagicName"][1] = tDogUpItem_Text["MagicName"][14760][1]
	tRecoverySkills_Data[14760]["MagicName"][2] = tDogUpItem_Text["MagicName"][14760][2]
	tRecoverySkills_Data[14760]["MagicName"][3] = tDogUpItem_Text["MagicName"][14760][3]
	tRecoverySkills_Data[14760]["MagicName"][4] = tDogUpItem_Text["MagicName"][14760][4]
	tRecoverySkills_Data[14760]["MagicName"][5] = tDogUpItem_Text["MagicName"][14760][5]
	tRecoverySkills_Data[14760]["MagicName"][6] = tDogUpItem_Text["MagicName"][14760][6]

	-- 召唤火云神狮
	tRecoverySkills_Data[16110] = {}
	tRecoverySkills_Data[16110]["MagicType"] = 16110
	tRecoverySkills_Data[16110]["ForeverLev"] = 0
	tRecoverySkills_Data[16110]["IsLearn"] = {}
	tRecoverySkills_Data[16110]["IsLearn"]["EventType"] = 212
	tRecoverySkills_Data[16110]["IsLearn"]["DataType"] = 13
	tRecoverySkills_Data[16110]["MagicLev"] = {}
	tRecoverySkills_Data[16110]["MagicLev"]["EventType"] = 214
	tRecoverySkills_Data[16110]["MagicLev"]["DataType"] = 63
	tRecoverySkills_Data[16110]["MagicName"] = {}
	tRecoverySkills_Data[16110]["MagicName"][0] = tDogUpItem_Text["MagicName"][16110][0]


	
------------------------------------------------------------------------------------
---------------------------------模板配置部分---------------------------------------
------------------------------------------------------------------------------------
local tRecoverySkills_LearnMagic = {}
	-- 学初级技能
	tRecoverySkills_LearnMagic["RewardMagic"] = {}
	tRecoverySkills_LearnMagic["RewardMagic"]["MagicType"] = 14740
	tRecoverySkills_LearnMagic["RewardMagic"]["LearnMagic"] = tRecoverySkills_Text["LearnMagic"] 
	tRecoverySkills_LearnMagic["RewardEffect"] = {}
	tRecoverySkills_LearnMagic["RewardEffect"]["Effect"] = "angelwing"

local tRecoverySkills_UpMagic = {}
	tRecoverySkills_UpMagic["RewardMagic"] = {}
	tRecoverySkills_UpMagic["RewardMagic"]["MagicType"] = 14740
	tRecoverySkills_UpMagic["RewardMagic"]["MagicUp"] = 1
	tRecoverySkills_UpMagic["RewardMagic"]["Times"] = 1
	tRecoverySkills_UpMagic["RewardMagic"]["UpMagic"] = tRecoverySkills_Text["LearnMagic"] 
	tRecoverySkills_UpMagic["RewardEffect"] = {}
	tRecoverySkills_UpMagic["RewardEffect"]["Effect"] = "angelwing"
local tRecoverySkills_Log = "0,0,0,0,10003012,2[%d],%d,%d"

------------------------------------------逻辑部分配置------------------------------------------
-- 主函数
function RecoverySkills_Main(nNpcId)
	local nLearnNum = 0
	for i,v in pairs(tRecoverySkills_Data) do
		if RecoverySkills_Recovery(v,nNpcId) then
			nLearnNum = nLearnNum + 1
		end
	end
	if Aniversary2020Dragon_GetMagic() then
		nLearnNum = nLearnNum + 1
	end
	-- 无技能可学
	if nLearnNum == 0 then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	
	-- 学到技能
	LinkNpcGossipFunc_New(nNpcId,"2-2")
end

-- 获取技能等级
function RecoverySkills_GetMagicLev(nMagicType,nMaxLev,nUserId)
	local nUserId = nUserId or Get_UserId()
	local nMagicLev = 0
	
	for nLev = 0, nMaxLev do
		if Magic_ChkLev(nMagicType,nLev,nUserId) then
			nMagicLev = nLev
			break
		end
	end
	
	return nMagicLev
end

-- 是否学过该技能
function RecoverySkills_ChkLearn(nMagicType)
	-- 未配置数据
	if tRecoverySkills_Data[nMagicType] == nil then
		return false
	end
	
	local tMagic = tRecoverySkills_Data[nMagicType]
	-- 未配置学过技能stc
	if tMagic["IsLearn"] == nil or tMagic["IsLearn"]["EventType"] == nil or tMagic["IsLearn"]["DataType"] == nil then
		return false
	end

	-- 是否学过该技能
	local nIsLearnEvent = tMagic["IsLearn"]["EventType"]
	local nIsLearnType = tMagic["IsLearn"]["DataType"]
	if Task_ChkStcValue(nIsLearnEvent,nIsLearnType,"==",0) then
		return false
	end

	return true
end

-- 重学函数
function RecoverySkills_Recovery(v,nNpcId)
	-- 必填数据是否填了
	if v["MagicType"] == nil or v["IsLearn"] == nil or v["MagicLev"] == nil then
		return false
	end

	-- 未配是否学习stc
	if v["IsLearn"]["EventType"] == nil or v["IsLearn"]["DataType"] == nil then
		return false
	end
	-- 未配技能等级stc
	if v["MagicLev"]["EventType"] == nil or v["MagicLev"]["DataType"] == nil then
		return false
	end
	
	local nMagicType = v["MagicType"]
	-- 技能等级
	local nMagicLevEvent = v["MagicLev"]["EventType"]
	local nMagicLevType = v["MagicLev"]["DataType"]
	local nNowLev = Get_UserStatisticValue(nMagicLevEvent,nMagicLevType)

	-- 是否已有该技能
	if Magic_ChkType(nMagicType) then
		-- 该技能等级是否与stc一致
		local nStcLev = RecoverySkills_GetMagicLev(nMagicType,#v["MagicName"])
		if nNowLev == nStcLev then
			return false
		end
	end
	
	-- 是否学过该技能
	local nIsLearnEvent = v["IsLearn"]["EventType"]
	local nIsLearnType = v["IsLearn"]["DataType"]
	if Task_ChkStcValue(nIsLearnEvent,nIsLearnType,"==",0) then
		return false
	end

	-- 是永久技能
	if v["ForeverLev"] ~= nil then
		-- 玩家技能等级，大于永久等级
		if nNowLev >= v["ForeverLev"] then
			RecoverySkills_Magic(nMagicType,nNowLev,nNpcId)
			return true
		end
	end
	
	-- 非永久的，是否活动时间
	if v["AtcTime"] ~= nil then
		if Sys_ChkFullTime(v["AtcTime"]) then
			RecoverySkills_Magic(nMagicType,nNowLev,nNpcId)
			return true
		end
	end
	
	-- 不能学
	return false
end


-- 学技能
function RecoverySkills_Magic(nMagicType,nNowLev,nNpcId)
	local sMagicName = tRecoverySkills_Data[nMagicType]["MagicName"][nNowLev]

	-- 学初级技能
	if nNowLev == 0 then
		local tLearnMagic = CommonFunc_Copy(tRecoverySkills_LearnMagic)
		tLearnMagic["RewardMagic"]["MagicType"] = nMagicType
		tLearnMagic["RewardMagic"]["LearnMagic"] = string.format(tLearnMagic["RewardMagic"]["LearnMagic"],sMagicName)
		
		if RewardTemplate_UseItemAndMsg(tLearnMagic) then
			Sys_SaveActionFuncLog(string.format(tRecoverySkills_Log,nNpcId,nMagicType,nNowLev))
		end
	-- 非初级技能
	else
		local tUpMagic = CommonFunc_Copy(tRecoverySkills_UpMagic)
		tUpMagic["RewardMagic"]["MagicType"] = nMagicType
		tUpMagic["RewardMagic"]["Times"] = nNowLev
		tUpMagic["RewardMagic"]["UpMagic"] = string.format(tUpMagic["RewardMagic"]["UpMagic"],sMagicName)

		if RewardTemplate_UseItemAndMsg(tUpMagic) then
			Sys_SaveActionFuncLog(string.format(tRecoverySkills_Log,nNpcId,nMagicType,nNowLev))
		end
	end
end


------------------------------------------
-- 在活动内学技能，学过stc设值
function RecoverySkills_SetStc(nMagicType)
	local bDoSet = false
	local nIsLearnEvent = 0
	local nIsLearnType = 0
	for i,v in pairs(tRecoverySkills_Data) do
		if nMagicType == v["MagicType"] then
			-- 活动外
			if v["AtcTime"] ~= nil then
				if not Sys_ChkFullTime(v["AtcTime"]) then
					bDoSet = false
				end
			end
			-- 未配是否学习stc
			if v["IsLearn"]["EventType"] == nil and v["IsLearn"]["DataType"] == nil then
				bDoSet = false
			end
			-- 满足条件
			nIsLearnEvent = v["IsLearn"]["EventType"]
			nIsLearnType = v["IsLearn"]["DataType"]
			bDoSet = true
			break
		end
	end
	-- 不存在
	if not bDoSet then
		return
	end
	-- 设值
	Task_SetStatistic(nIsLearnEvent,nIsLearnType,1,1)
	return
end

------------------------------------------模块部分配置------------------------------------------
tNpcFace[5962]=206
tNpcGossip[22626]=tNpcGossip[22626] or DefaultNpc:new{}
tNpcGossip[22626]["OptionHidden"]=1
tNpcGossip[22626]["DialogueText"]= tRecoverySkills_Text[22626]

-- 主对白
tNpcGossip[22626]["Text1-1"]={111,112,113,114,115}
tNpcGossip[22626]["tOption1-1"]={111}
tNpcGossip[22626]["OptionFunc111"] = "RecoverySkills_Main</N>22626"
-- 无技能可学
tNpcGossip[22626]["Text2-1"]={211}
tNpcGossip[22626]["tOption2-1"]={211}
-- 学到技能
tNpcGossip[22626]["Text2-2"]={221}
tNpcGossip[22626]["tOption2-2"]={221}