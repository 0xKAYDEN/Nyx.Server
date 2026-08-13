------------------------------------------------------------------------------------
--Name：            180130[简体征服][任务脚本]海盗史诗任务技能与陷阱制作
--Creator:      李甲
--Created:     2018/01/30
------------------------------------------------------------------------------------
--任务需求：

------------------------------------------------------------------------------------

----------------------------------表配置部分--------------------------------------------
local tPirateEpicMission_Const = {}
	tPirateEpicMission_Const["nProUp"] = 70
	tPirateEpicMission_Const["nProDown"] = 75

local tPirateEpicMission_SkillItem = {}

tPirateEpicMission_SkillItem[3307432] = {}
tPirateEpicMission_SkillItem[3307432]["NeedLevel"] = 15
tPirateEpicMission_SkillItem[3307432][1] = {}
tPirateEpicMission_SkillItem[3307432][1]["LogId"] = 12001005
tPirateEpicMission_SkillItem[3307432][1]["SzObj"] = "self"
tPirateEpicMission_SkillItem[3307432][1]["RewardEffect"] = {}
tPirateEpicMission_SkillItem[3307432][1]["RewardEffect"]["Effect"] = "zf2-e128"
tPirateEpicMission_SkillItem[3307432][1]["RewardMagic"] = {}
tPirateEpicMission_SkillItem[3307432][1]["RewardMagic"]["MagicType"] = 14680
tPirateEpicMission_SkillItem[3307432][1]["RewardMagic"]["LearnMagic"] = string.format(tPirateEpicMission_Text["LearningSuccess"],tPirateEpicMission_Text[3307432]["Name"])

tPirateEpicMission_SkillItem[3307433] = {}
tPirateEpicMission_SkillItem[3307433]["NeedLevel"] = 40
tPirateEpicMission_SkillItem[3307433][1] = {}
tPirateEpicMission_SkillItem[3307433][1]["LogId"] = 12001005
tPirateEpicMission_SkillItem[3307433][1]["SzObj"] = "self"
tPirateEpicMission_SkillItem[3307433][1]["RewardEffect"] = {}
tPirateEpicMission_SkillItem[3307433][1]["RewardEffect"]["Effect"] = "zf2-e128"
tPirateEpicMission_SkillItem[3307433][1]["RewardMagic"] = {}
tPirateEpicMission_SkillItem[3307433][1]["RewardMagic"]["MagicType"] = 14720
tPirateEpicMission_SkillItem[3307433][1]["RewardMagic"]["LearnMagic"] = string.format(tPirateEpicMission_Text["LearningSuccess"],tPirateEpicMission_Text[3307433]["Name"])

tPirateEpicMission_SkillItem[3307434] = {}
tPirateEpicMission_SkillItem[3307434]["NeedLevel"] = 70
tPirateEpicMission_SkillItem[3307434][1] = {}
tPirateEpicMission_SkillItem[3307434][1]["LogId"] = 12001005
tPirateEpicMission_SkillItem[3307434][1]["SzObj"] = "self"
tPirateEpicMission_SkillItem[3307434][1]["RewardEffect"] = {}
tPirateEpicMission_SkillItem[3307434][1]["RewardEffect"]["Effect"] = "zf2-e128"
tPirateEpicMission_SkillItem[3307434][1]["RewardMagic"] = {}
tPirateEpicMission_SkillItem[3307434][1]["RewardMagic"]["MagicType"] = 14710
tPirateEpicMission_SkillItem[3307434][1]["RewardMagic"]["LearnMagic"] = string.format(tPirateEpicMission_Text["LearningSuccess"],tPirateEpicMission_Text[3307434]["Name"])


local tPirateEpicMission_Rward = {}

--（20份不老泉）
	tPirateEpicMission_Rward[3307744] = {}
	tPirateEpicMission_Rward[3307744]["LogId"] = 12001005
	tPirateEpicMission_Rward[3307744]["SzObj"] = "self"
	tPirateEpicMission_Rward[3307744]["RewardEffect"] = {}
	tPirateEpicMission_Rward[3307744]["RewardEffect"]["Effect"] = "angelwing"
	tPirateEpicMission_Rward[3307744]["DeleteItem"] = {}
	tPirateEpicMission_Rward[3307744]["DeleteItem"][1] = {}
	tPirateEpicMission_Rward[3307744]["DeleteItem"][1]["Id"] = 3307744
	tPirateEpicMission_Rward[3307744]["RewardItem"] = {}
	tPirateEpicMission_Rward[3307744]["RewardItem"][1] = {}
	tPirateEpicMission_Rward[3307744]["RewardItem"][1]["Id"] = 3307450 --不老泉
	tPirateEpicMission_Rward[3307744]["RewardItem"][1]["Attr"] = "0 20"
	
--瀚海气力包
	tPirateEpicMission_Rward[3307739] = {}
	tPirateEpicMission_Rward[3307739]["LogId"] = 12001005
	tPirateEpicMission_Rward[3307739]["SzObj"] = "self"
	tPirateEpicMission_Rward[3307739]["RewardEffect"] = {}
	tPirateEpicMission_Rward[3307739]["RewardEffect"]["Effect"] = "angelwing"
	tPirateEpicMission_Rward[3307739]["DeleteItem"] = {}
	tPirateEpicMission_Rward[3307739]["DeleteItem"][1] = {}
	tPirateEpicMission_Rward[3307739]["DeleteItem"][1]["Id"] = 3307739
	tPirateEpicMission_Rward[3307739]["RewardStrengthValue"] = {}
	tPirateEpicMission_Rward[3307739]["RewardStrengthValue"]["Value"] = 1200 --1200气力值
	
--瀚海修炼包
	tPirateEpicMission_Rward[3307740] = {}
	tPirateEpicMission_Rward[3307740]["LogId"] = 12001005
	tPirateEpicMission_Rward[3307740]["SzObj"] = "self"
	tPirateEpicMission_Rward[3307740]["RewardEffect"] = {}
	tPirateEpicMission_Rward[3307740]["RewardEffect"]["Effect"] = "angelwing"
	tPirateEpicMission_Rward[3307740]["DeleteItem"] = {}
	tPirateEpicMission_Rward[3307740]["DeleteItem"][1] = {}
	tPirateEpicMission_Rward[3307740]["DeleteItem"][1]["Id"] = 3307740
	tPirateEpicMission_Rward[3307740]["RewardItem"] = {}
	tPirateEpicMission_Rward[3307740]["RewardItem"][1] = {}
	tPirateEpicMission_Rward[3307740]["RewardItem"][1]["Id"] = 3006543 --10次免费修炼次数
	tPirateEpicMission_Rward[3307740]["RewardItem"][1]["Attr"] = "0 10"
	
--瀚海护心包
	tPirateEpicMission_Rward[3307741] = {}
	tPirateEpicMission_Rward[3307741]["LogId"] = 12001005
	tPirateEpicMission_Rward[3307741]["SzObj"] = "self"
	tPirateEpicMission_Rward[3307741]["RewardEffect"] = {}
	tPirateEpicMission_Rward[3307741]["RewardEffect"]["Effect"] = "angelwing"
	tPirateEpicMission_Rward[3307741]["DeleteItem"] = {}
	tPirateEpicMission_Rward[3307741]["DeleteItem"][1] = {}
	tPirateEpicMission_Rward[3307741]["DeleteItem"][1]["Id"] = 3307741
	tPirateEpicMission_Rward[3307741]["RewardItem"] = {}
	tPirateEpicMission_Rward[3307741]["RewardItem"][1] = {}
	tPirateEpicMission_Rward[3307741]["RewardItem"][1]["Id"] = 3002030 --强效护心丹
	tPirateEpicMission_Rward[3307741]["RewardItem"][1]["Attr"] = "0 3"
	
--不老泉精装包
	tPirateEpicMission_Rward[3307742] = {}
	tPirateEpicMission_Rward[3307742]["LogId"] = 12001005
	tPirateEpicMission_Rward[3307742]["SzObj"] = "self"
	tPirateEpicMission_Rward[3307742]["RewardEffect"] = {}
	tPirateEpicMission_Rward[3307742]["RewardEffect"]["Effect"] = "angelwing"
	tPirateEpicMission_Rward[3307742]["DeleteItem"] = {}
	tPirateEpicMission_Rward[3307742]["DeleteItem"][1] = {}
	tPirateEpicMission_Rward[3307742]["DeleteItem"][1]["Id"] = 3307742
	tPirateEpicMission_Rward[3307742]["RewardItem"] = {}
	tPirateEpicMission_Rward[3307742]["RewardItem"][1] = {}
	tPirateEpicMission_Rward[3307742]["RewardItem"][1]["Id"] = 3307450 --不老泉
	tPirateEpicMission_Rward[3307742]["RewardItem"][1]["Attr"] = "0 5"
	
	--不老泉豪华包
	tPirateEpicMission_Rward[3307743] = {}
	tPirateEpicMission_Rward[3307743]["LogId"] = 12001005
	tPirateEpicMission_Rward[3307743]["SzObj"] = "self"
	tPirateEpicMission_Rward[3307743]["RewardEffect"] = {}
	tPirateEpicMission_Rward[3307743]["RewardEffect"]["Effect"] = "angelwing"
	tPirateEpicMission_Rward[3307743]["DeleteItem"] = {}
	tPirateEpicMission_Rward[3307743]["DeleteItem"][1] = {}
	tPirateEpicMission_Rward[3307743]["DeleteItem"][1]["Id"] = 3307743
	tPirateEpicMission_Rward[3307743]["RewardItem"] = {}
	tPirateEpicMission_Rward[3307743]["RewardItem"][1] = {}
	tPirateEpicMission_Rward[3307743]["RewardItem"][1]["Id"] = 3307450 --不老泉
	tPirateEpicMission_Rward[3307743]["RewardItem"][1]["Attr"] = "0 10"

-- stc掩码
local tPirateEpicMission_Stc = {}
	tPirateEpicMission_Stc["EventType"] = 174
	tPirateEpicMission_Stc["DataType"] = 01
	
	--记录曾经是否学过史诗技能（1：星海湮灭，2：死亡绽放，3：海神之威）
	tPirateEpicMission_Stc["EpicSkill"] = {}
	tPirateEpicMission_Stc["EpicSkill"][3307432] = {}
	tPirateEpicMission_Stc["EpicSkill"][3307432]["Event"] = 175
	tPirateEpicMission_Stc["EpicSkill"][3307432]["Type"] = 54
	tPirateEpicMission_Stc["EpicSkill"][3307433] = {}
	tPirateEpicMission_Stc["EpicSkill"][3307433]["Event"] = 175
	tPirateEpicMission_Stc["EpicSkill"][3307433]["Type"] = 55
	tPirateEpicMission_Stc["EpicSkill"][3307434] = {}
	tPirateEpicMission_Stc["EpicSkill"][3307434]["Event"] = 175
	tPirateEpicMission_Stc["EpicSkill"][3307434]["Type"] = 56
--寻路传送
local tPirateEpicMission_FindMain = {}
	tPirateEpicMission_FindMain["MapId"] = 10271 
	tPirateEpicMission_FindMain["CellX"] = 119
	tPirateEpicMission_FindMain["CellY"] = 186
	tPirateEpicMission_FindMain[3307451] = {}
	tPirateEpicMission_FindMain[3307451]["PosX"] = 58
	tPirateEpicMission_FindMain[3307451]["PosY"] = 32
	tPirateEpicMission_FindMain[3307451]["MapId"] = 1004
	tPirateEpicMission_FindMain[3307451]["NotGiftMapId"] = 10386
	tPirateEpicMission_FindMain[3307451]["NpcId"] = 9391
----------------------------------逻辑部分---------------------------------------------
--传送
function PirateEpicMission_SendMap()
	local nMapId = tPirateEpicMission_FindMain["MapId"]
	local nCellX = tPirateEpicMission_FindMain["CellX"]
	local nCellY = tPirateEpicMission_FindMain["CellY"]
	User_ChgMap(nMapId,nCellX,nCellY,0)
end

-- 兑换商店
function PirateEpicMission_Exchange(nNpcId)
	
	User_OpenExchangeShop(nNpcId)
end
--打开礼包
function PirateEpicMission_GetRward(nItemId)
	local nUserId = Get_UserId()
	if not RewardTemplate_CheckSpace(tPirateEpicMission_Rward[nItemId],nUserId) then --提示玩家背包空间不足
		Sys_MsgBox(tPirateEpicMission_Text["BagFull"])
		return 
	end
	RewardTemplate_UseItem(tPirateEpicMission_Rward[nItemId])
end

--学习技能
function PirateEpicMission_GetSkills(nItemId)
	local nProUp = tPirateEpicMission_Const["nProUp"]
	local nProDown = tPirateEpicMission_Const["nProDown"]
	local nNeedLevel = tPirateEpicMission_SkillItem[nItemId]["NeedLevel"]
	local nUserProgress = Get_UserProfession()
	local nUerLevel = Get_UserLevel()
	local nSkillType = tPirateEpicMission_SkillItem[nItemId][1]["RewardMagic"]["MagicType"]

	local nEpicEvent = tPirateEpicMission_Stc["EpicSkill"][nItemId]["Event"]
	local nEpicType = tPirateEpicMission_Stc["EpicSkill"][nItemId]["Type"]

	--判断是否是海盗职业
	if nUserProgress < nProUp or nUserProgress > nProDown then
		Sys_MsgBox(tPirateEpicMission_Text["NotPro"])
		return false
	end
	--判断等级
	if nUerLevel < nNeedLevel then
		Sys_MsgBox(tPirateEpicMission_Text["NotLevel"])
		return false
	end
	--判断是否学过改技能
	if Magic_ChkType(nSkillType) then 
		--LinkItemGossipFunc_New(nItemId,"1-2")
		Sys_MsgBox(tPirateEpicMission_Text[nItemId]["Text121"])
		return false
	end
	--判断特转或转世之前，是否已经学过了。如果已经学过了，则让跳过物品判断  -modify by pyf
	if not Task_ChkStcValue(nEpicEvent,nEpicType,">=",1) then
		--二次检测
		if not Item_ChkItem(nItemId) then
			Sys_MsgBox(tPirateEpicMission_Text["NotSkillItem"])
			return false
		end
		if not Item_DelItem(nItemId) then
			return false
		end
	end
	--打掩码
	Task_SetStatistic(nEpicEvent,nEpicType,1,1)
	Task_SetStcTimestamp(nEpicEvent,nEpicType,0)
	RewardTemplate_UseItemAndMsg(tPirateEpicMission_SkillItem[nItemId][1])
end
-- 背包信使用
function PirateEpicMission_UseBackpackLetter(nItemId)
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		local nEventType = tPirateEpicMission_Stc["EventType"]
		local nDataType = tPirateEpicMission_Stc["DataType"]
		Task_SetStatistic(nEventType,nDataType,1,1)
		-- 给修行值
		User_AddCultivation(30)
		Sys_SaveActionFestivalLog(string.format("0,0,%d,1,12000106,2,6,%d",nItemId,30))
		local str = tBackpackLetter_Text[nItemId]["Cultivation"]
		User_TalkChannel2005(str)
		--自动寻路
		local nPosX = tPirateEpicMission_FindMain[nItemId]["PosX"]
		local nPosY = tPirateEpicMission_FindMain[nItemId]["PosY"]
		local nMapId = tPirateEpicMission_FindMain[nItemId]["MapId"]
		-- 判断激情服
		if SpecialServer_ChkNoGiftServer() then
			nMapId = tPirateEpicMission_FindMain[nItemId]["NotGiftMapId"]
		end
		local nNpcId = tPirateEpicMission_FindMain[nItemId]["NpcId"]
		Sys_GotoSomeWhere(nPosX,nPosY,nMapId,nNpcId)
	end
end
----------------------------------NPC部分---------------------------------------------
tNpcFace[618] = 246
tNpcGossip[21426]= tNpcGossip[21426] or DefaultNpc:new{}
tNpcGossip[21426]["OptionHidden"] = 1

tNpcGossip[21426]["Text1-1"] = {111,112,113}
tNpcGossip[21426]["Text111"] =tPirateEpicMission_Text[21426]["Text111"]
tNpcGossip[21426]["Text112"] =tPirateEpicMission_Text[21426]["Text112"]
tNpcGossip[21426]["Text113"] =tPirateEpicMission_Text[21426]["Text113"]
tNpcGossip[21426]["tOption1-1"] = {111}
tNpcGossip[21426]["Option111"] =tPirateEpicMission_Text[21426]["Option111"]
tNpcGossip[21426]["OptionFunc111"] = "PirateEpicMission_Exchange</N>21426"


---------------------------------物品部分---------------------------------------------
tItemFace[3307451] = 1355
tItemFace[3307432] = 1356
tItemFace[3307433] = 1357
tItemFace[3307434] = 1358

--火力压制技能卷轴
tItem[3307432] = tItem[3307432] or {}
tItem[3307432]["Text1-1"] = {111}
tItem[3307432]["Text111"] = tPirateEpicMission_Text[3307432]["Text111"]
tItem[3307432]["tOption1-1"] = {1,2}
tItem[3307432]["Option1"] = tPirateEpicMission_Text[3307432]["Option1"]
tItem[3307432]["Option2"] = tPirateEpicMission_Text[3307432]["Option2"]
tItem[3307432]["OptionFunc1"] = "PirateEpicMission_GetSkills</N>3307432"
tItem[3307432]["Text1-2"] = {121}
tItem[3307432]["Text121"] = tPirateEpicMission_Text[3307432]["Text121"]
tItem[3307432]["tOption1-2"] = {3}
tItem[3307432]["Option3"] = tPirateEpicMission_Text[3307432]["Option3"]
-- tItem[3307432]["Function"] = function(nItemId,sItemName)
	-- PirateEpicMission_GetSkills(nItemId)
-- end
--死亡绽放技能卷轴
tItem[3307433] = tItem[3307433] or {}
tItem[3307433]["Text1-1"] = {111}
tItem[3307433]["Text111"] = tPirateEpicMission_Text[3307433]["Text111"]
tItem[3307433]["tOption1-1"] = {1,2}
tItem[3307433]["Option1"] = tPirateEpicMission_Text[3307433]["Option1"]
tItem[3307433]["Option2"] = tPirateEpicMission_Text[3307433]["Option2"]
tItem[3307433]["OptionFunc1"] = "PirateEpicMission_GetSkills</N>3307433"
tItem[3307433]["Text1-2"] = {121}
tItem[3307433]["Text121"] = tPirateEpicMission_Text[3307433]["Text121"]
tItem[3307433]["tOption1-2"] = {3}
tItem[3307433]["Option3"] = tPirateEpicMission_Text[3307433]["Option3"]
-- tItem[3307433]["Function"] = function(nItemId,sItemName)
	-- PirateEpicMission_GetSkills(nItemId)
-- end
--哑火技能卷轴
tItem[3307434] = tItem[3307434] or {}
tItem[3307434]["Text1-1"] = {111}
tItem[3307434]["Text111"] = tPirateEpicMission_Text[3307434]["Text111"]
tItem[3307434]["tOption1-1"] = {1,2}
tItem[3307434]["Option1"] = tPirateEpicMission_Text[3307434]["Option1"]
tItem[3307434]["Option2"] = tPirateEpicMission_Text[3307434]["Option2"]
tItem[3307434]["OptionFunc1"] = "PirateEpicMission_GetSkills</N>3307434"
-- tItem[3307434]["Function"] = function(nItemId,sItemName)
	-- PirateEpicMission_GetSkills(nItemId)
-- end
tItem[3307434]["Text1-2"] = {121}
tItem[3307434]["Text121"] = tPirateEpicMission_Text[3307434]["Text121"]
tItem[3307434]["tOption1-2"] = {3}
tItem[3307434]["Option3"] = tPirateEpicMission_Text[3307434]["Option3"]

--背包信
tItem[3307451] = tItem[3307451] or {}
tItem[3307451]["Text1-1"] = {111,112}
tItem[3307451]["Text111"] = tPirateEpicMission_Text[3307451]["Text111"]
tItem[3307451]["Text112"] = tPirateEpicMission_Text[3307451]["Text112"]
tItem[3307451]["tOption1-1"] = {1}
tItem[3307451]["Option1"] = tPirateEpicMission_Text[3307451]["Option1"]
tItem[3307451]["OptionFunc1"] = "PirateEpicMission_UseBackpackLetter</N>3307451"


--------物品无对白模板
tItem[3307739] = tItem[3307739] or {}
tItem[3307739]["Function"] = function(nItemId,sItemName)
	PirateEpicMission_GetRward(nItemId)
end
tItem[3307740] = tItem[3307739]
tItem[3307741] = tItem[3307739]
tItem[3307742] = tItem[3307739]
tItem[3307743] = tItem[3307739]
tItem[3307744] = tItem[3307739]


---------------------------------陷阱部分---------------------------------------------
tTrap[1869] = tTrap[1869] or {}--1869为cq_traptype的id
tTrap[1869]["Function"] = function(nTrapId,nTrapType)
	PirateEpicMission_SendMap()
end

