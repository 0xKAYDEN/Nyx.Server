------------------------------------------------------------------------------------
--Name：            190226[英文征服][活动脚本]游戏日常维护相关发奖action制作
--Creator:      叶方琪
--Created:     2019/02/26
------------------------------------------------------------------------------------
--任务需求
--掩码：

--logid 12001322

--命名前缀
--	ArtifactGift_
----------------------------------表配置部分--------------------------------------------

local tArtifactGift_Const = {}	

local tArtifactGift_Attr = {}
	tArtifactGift_Attr[3320461] = {}
	tArtifactGift_Attr[3320461]["Monopoly"] = 0
	tArtifactGift_Attr[3320461]["AttributeNum"] = 5
	tArtifactGift_Attr[3320461]["ItemChanceSum"] = 10000
	tArtifactGift_Attr[3320461]["ItemId"] = 4100001
	tArtifactGift_Attr[3320461][1] = {}
	tArtifactGift_Attr[3320461][1]["RandomItemChanceType"] = 2
	tArtifactGift_Attr[3320461][1]["ItemChance"] = 9005
	tArtifactGift_Attr[3320461][1]["Item_1"] = 3 --实际为黄金属性保底数量
	tArtifactGift_Attr[3320461][2] = {}
	tArtifactGift_Attr[3320461][2]["RandomItemChanceType"] = 2
	tArtifactGift_Attr[3320461][2]["ItemChance"] = 980
	tArtifactGift_Attr[3320461][2]["Item_1"] = 4 
	tArtifactGift_Attr[3320461][3] = {}
	tArtifactGift_Attr[3320461][3]["RandomItemChanceType"] = 2
	tArtifactGift_Attr[3320461][3]["ItemChance"] = 15
	tArtifactGift_Attr[3320461][3]["Item_1"] = 5 
	
	tArtifactGift_Attr[3320462] = {}
	tArtifactGift_Attr[3320462]["Monopoly"] = 0
	tArtifactGift_Attr[3320462]["AttributeNum"] = 5
	tArtifactGift_Attr[3320462]["ItemChanceSum"] = 10000
	tArtifactGift_Attr[3320462]["ItemId"] = 4100002
	tArtifactGift_Attr[3320462][1] = {}
	tArtifactGift_Attr[3320462][1]["RandomItemChanceType"] = 2
	tArtifactGift_Attr[3320462][1]["ItemChance"] = 9005
	tArtifactGift_Attr[3320462][1]["Item_1"] = 3 --实际为黄金属性保底数量
	tArtifactGift_Attr[3320462][2] = {}
	tArtifactGift_Attr[3320462][2]["RandomItemChanceType"] = 2
	tArtifactGift_Attr[3320462][2]["ItemChance"] = 980
	tArtifactGift_Attr[3320462][2]["Item_1"] = 4 
	tArtifactGift_Attr[3320462][3] = {}
	tArtifactGift_Attr[3320462][3]["RandomItemChanceType"] = 2
	tArtifactGift_Attr[3320462][3]["ItemChance"] = 15
	tArtifactGift_Attr[3320462][3]["Item_1"] = 5
	
	tArtifactGift_Attr[3320463] = {}
	tArtifactGift_Attr[3320463]["Monopoly"] = 0
	tArtifactGift_Attr[3320463]["AttributeNum"] = 5
	tArtifactGift_Attr[3320463]["ItemChanceSum"] = 10000
	tArtifactGift_Attr[3320463]["ItemId"] = 4100003
	tArtifactGift_Attr[3320463][1] = {}
	tArtifactGift_Attr[3320463][1]["RandomItemChanceType"] = 2
	tArtifactGift_Attr[3320463][1]["ItemChance"] = 9005
	tArtifactGift_Attr[3320463][1]["Item_1"] = 3 --实际为黄金属性保底数量
	tArtifactGift_Attr[3320463][2] = {}
	tArtifactGift_Attr[3320463][2]["RandomItemChanceType"] = 2
	tArtifactGift_Attr[3320463][2]["ItemChance"] = 980
	tArtifactGift_Attr[3320463][2]["Item_1"] = 4 
	tArtifactGift_Attr[3320463][3] = {}
	tArtifactGift_Attr[3320463][3]["RandomItemChanceType"] = 2
	tArtifactGift_Attr[3320463][3]["ItemChance"] = 15
	tArtifactGift_Attr[3320463][3]["Item_1"] = 5
	
	tArtifactGift_Attr[3320464] = {}
	tArtifactGift_Attr[3320464]["Monopoly"] = 0
	tArtifactGift_Attr[3320464]["AttributeNum"] = 5
	tArtifactGift_Attr[3320464]["ItemChanceSum"] = 10000
	tArtifactGift_Attr[3320464]["ItemId"] = 4100004
	tArtifactGift_Attr[3320464][1] = {}
	tArtifactGift_Attr[3320464][1]["RandomItemChanceType"] = 2
	tArtifactGift_Attr[3320464][1]["ItemChance"] = 9005
	tArtifactGift_Attr[3320464][1]["Item_1"] = 3 --实际为黄金属性保底数量
	tArtifactGift_Attr[3320464][2] = {}
	tArtifactGift_Attr[3320464][2]["RandomItemChanceType"] = 2
	tArtifactGift_Attr[3320464][2]["ItemChance"] = 980
	tArtifactGift_Attr[3320464][2]["Item_1"] = 4 
	tArtifactGift_Attr[3320464][3] = {}
	tArtifactGift_Attr[3320464][3]["RandomItemChanceType"] = 2
	tArtifactGift_Attr[3320464][3]["ItemChance"] = 15
	tArtifactGift_Attr[3320464][3]["Item_1"] = 5
	
	tArtifactGift_Attr[3320465] = {}
	tArtifactGift_Attr[3320465]["Monopoly"] = 0
	tArtifactGift_Attr[3320465]["AttributeNum"] = 5
	tArtifactGift_Attr[3320465]["ItemChanceSum"] = 10000
	tArtifactGift_Attr[3320465]["ItemId"] = 4100005
	tArtifactGift_Attr[3320465][1] = {}
	tArtifactGift_Attr[3320465][1]["RandomItemChanceType"] = 2
	tArtifactGift_Attr[3320465][1]["ItemChance"] = 9005
	tArtifactGift_Attr[3320465][1]["Item_1"] = 3 --实际为黄金属性保底数量
	tArtifactGift_Attr[3320465][2] = {}
	tArtifactGift_Attr[3320465][2]["RandomItemChanceType"] = 2
	tArtifactGift_Attr[3320465][2]["ItemChance"] = 980
	tArtifactGift_Attr[3320465][2]["Item_1"] = 4 
	tArtifactGift_Attr[3320465][3] = {}
	tArtifactGift_Attr[3320465][3]["RandomItemChanceType"] = 2
	tArtifactGift_Attr[3320465][3]["ItemChance"] = 15
	tArtifactGift_Attr[3320465][3]["Item_1"] = 5

local tArtifactGift_Log = {}
	tArtifactGift_Log["Log"] = {}
	tArtifactGift_Log["Log"]["GetXuanBao"] = "0,0,%d,1,12001322,2,%s,1"


----------------------------------逻辑部分---------------------------------------------

-- 获取获得的玄宝黄金属性数量
function ArtifactGift_GetAttrNum(nItemId)
	local nFlag,tReward = Probabil_RandomAward(tArtifactGift_Attr,nItemId)
	
	return tReward[1]["tAward"][1]["Item_1"]
end

-- 获得玄宝
function ArtifactGift_GetXuanBao(nItemId)
	local nAttrNum = ArtifactGift_GetAttrNum(nItemId)
	local nMonopoly = tArtifactGift_Attr[nItemId]["Monopoly"]
	local nAttributeNum = tArtifactGift_Attr[nItemId]["AttributeNum"]
	local nWardItem = tArtifactGift_Attr[nItemId]["ItemId"]
	
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId)then
		local nXuanBaoId,nItem = Xuanbao_Reward(nWardItem,nMonopoly,10,0,0,nAttributeNum,0,0,nAttrNum)
		if nXuanBaoId ~= 0 then
			local sItemName = Get_ItemtypeName(nXuanBaoId)
			local sContent = string.format(tKingsOfTheFlag_Text["GetXuanBao"],sItemName)
			User_TalkChannel2005(sContent)
			
			local sStr1 = Get_ItemData1(nItem)
			local sStr2 = Get_ItemData2(nItem)
			local sStr3 = Get_ItemData3(nItem)
			local sStr4 = Get_ItemData4(nItem)
			local sStr5 = Get_ItemData5(nItem)
			local sAttr = nXuanBaoId .. "{" .. sStr1 .. "&" .. sStr2 .. "&" .. sStr3 .. "&" .. sStr4 .. "&" .. sStr5 .. "}"
			local sLog = string.format(tArtifactGift_Log["Log"]["GetXuanBao"],nItemId,sAttr)
			Sys_SaveActionFestivalLog(sLog)
			User_EffectAdd("self","zf2-e128")
		end
	end
end

---------------------------------物品部分---------------------------------------------
--------物品无对白模板
tItem[3320461] = tItem[3320461] or {}
tItem[3320461]["Function"] = function(nItemId,sItemName)
	ArtifactGift_GetXuanBao(nItemId)
end
tItem[3320462] = tItem[3320461]
tItem[3320463] = tItem[3320461]
tItem[3320464] = tItem[3320461]
tItem[3320465] = tItem[3320461]




