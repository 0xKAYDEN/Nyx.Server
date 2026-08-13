------------------------------------------------------------------------------------
--Name：            180313[简体征服][活动脚本]神器重铸活动
--Creator:      李甲
--Created:     2018/03/13
------------------------------------------------------------------------------------
--任务需求：

------------------------------------------------------------------------------------

----------------------------------表配置部分--------------------------------------------
local tNormalXuanBao_Const = {}
	tNormalXuanBao_Const["Spend"] = {}
	tNormalXuanBao_Const["Spend"][1] = 100 --普通重铸所需神器源晶
	tNormalXuanBao_Const["Spend"][2] = 777 --高级重铸所需神器源晶
	tNormalXuanBao_Const["SpendItemId"] = 3306885 --神器源晶
	tNormalXuanBao_Const["NeedSpace"] = 1
	tNormalXuanBao_Const["Level"] = 120
	tNormalXuanBao_Const["Metempsychosis"] = 2
	tNormalXuanBao_Const["ActivityTime"] = tActivityTime["tNormalXuanBaoActivity"]["ActivityTime"]
	tNormalXuanBao_Const["Web"] = "https://coevent.99.com/201909relicrank/"

--普通锻造的属性条数
local tNormalXuanBao_AttributeNum = {}
	--普通重铸
	tNormalXuanBao_AttributeNum[21453] = {}
	tNormalXuanBao_AttributeNum[21453][1] = {}
	tNormalXuanBao_AttributeNum[21453][1]["ItemChanceSum"] = 10000
	tNormalXuanBao_AttributeNum[21453][1][1] = {}
	tNormalXuanBao_AttributeNum[21453][1][1]["RandomItemChanceType"] = 2
	tNormalXuanBao_AttributeNum[21453][1][1]["ItemChance"] = 5000
	tNormalXuanBao_AttributeNum[21453][1][1]["Item_1"] = 3 
	tNormalXuanBao_AttributeNum[21453][1][2] = {}
	tNormalXuanBao_AttributeNum[21453][1][2]["RandomItemChanceType"] = 2
	tNormalXuanBao_AttributeNum[21453][1][2]["ItemChance"] = 4000
	tNormalXuanBao_AttributeNum[21453][1][2]["Item_1"] = 4 
	tNormalXuanBao_AttributeNum[21453][1][3] = {}
	tNormalXuanBao_AttributeNum[21453][1][3]["RandomItemChanceType"] = 2
	tNormalXuanBao_AttributeNum[21453][1][3]["ItemChance"] = 1000
	tNormalXuanBao_AttributeNum[21453][1][3]["Item_1"] = 5 
	--特殊重铸
	tNormalXuanBao_AttributeNum[21453][2] = {}
	tNormalXuanBao_AttributeNum[21453][2]["ItemChanceSum"] = 10000
	tNormalXuanBao_AttributeNum[21453][2][1] = {}
	tNormalXuanBao_AttributeNum[21453][2][1]["RandomItemChanceType"] = 2
	tNormalXuanBao_AttributeNum[21453][2][1]["ItemChance"] = 8000
	tNormalXuanBao_AttributeNum[21453][2][1]["Item_1"] = 4 
	tNormalXuanBao_AttributeNum[21453][2][2] = {}
	tNormalXuanBao_AttributeNum[21453][2][2]["RandomItemChanceType"] = 2
	tNormalXuanBao_AttributeNum[21453][2][2]["ItemChance"] = 2000
	tNormalXuanBao_AttributeNum[21453][2][2]["Item_1"] = 5 
	
--普通锻造的黄金属性条数
local tNormalXuanBao_GoldAttributeNum = {}
	--普通重铸
	tNormalXuanBao_GoldAttributeNum[1] = {}
	tNormalXuanBao_GoldAttributeNum[1]["GivenNum"] = 0
	tNormalXuanBao_GoldAttributeNum[1]["NeedEmoney"] = 50
	tNormalXuanBao_GoldAttributeNum[1][5] = {} --此处5代表随机出来的属性条数
	tNormalXuanBao_GoldAttributeNum[1][5]["ItemChanceSum"] = 1000000
	tNormalXuanBao_GoldAttributeNum[1][5][1] = {}
	tNormalXuanBao_GoldAttributeNum[1][5][1]["RandomItemChanceType"] = 2
	tNormalXuanBao_GoldAttributeNum[1][5][1]["ItemChance"] = 445
	tNormalXuanBao_GoldAttributeNum[1][5][1]["Item_1"] = 5 
	tNormalXuanBao_GoldAttributeNum[1][5][2] = {}
	tNormalXuanBao_GoldAttributeNum[1][5][2]["RandomItemChanceType"] = 2
	tNormalXuanBao_GoldAttributeNum[1][5][2]["ItemChance"] = 27955
	tNormalXuanBao_GoldAttributeNum[1][5][2]["Item_1"] = 4 
	tNormalXuanBao_GoldAttributeNum[1][5][3] = {}
	tNormalXuanBao_GoldAttributeNum[1][5][3]["RandomItemChanceType"] = 2
	tNormalXuanBao_GoldAttributeNum[1][5][3]["ItemChance"] = 256900
	tNormalXuanBao_GoldAttributeNum[1][5][3]["Item_1"] = 3 
	tNormalXuanBao_GoldAttributeNum[1][5][4] = {}
	tNormalXuanBao_GoldAttributeNum[1][5][4]["RandomItemChanceType"] = 2
	tNormalXuanBao_GoldAttributeNum[1][5][4]["ItemChance"] = 519000
	tNormalXuanBao_GoldAttributeNum[1][5][4]["Item_1"] = 2 
	tNormalXuanBao_GoldAttributeNum[1][5][5] = {}
	tNormalXuanBao_GoldAttributeNum[1][5][5]["RandomItemChanceType"] = 2
	tNormalXuanBao_GoldAttributeNum[1][5][5]["ItemChance"] = 195700
	tNormalXuanBao_GoldAttributeNum[1][5][5]["Item_1"] = 1 
	
	tNormalXuanBao_GoldAttributeNum[1][4] = {} --此处4代表随机出来的属性条数
	tNormalXuanBao_GoldAttributeNum[1][4]["ItemChanceSum"] = 100000
	tNormalXuanBao_GoldAttributeNum[1][4][1] = {}
	tNormalXuanBao_GoldAttributeNum[1][4][1]["RandomItemChanceType"] = 2
	tNormalXuanBao_GoldAttributeNum[1][4][1]["ItemChance"] = 479
	tNormalXuanBao_GoldAttributeNum[1][4][1]["Item_1"] = 4 
	tNormalXuanBao_GoldAttributeNum[1][4][2] = {}
	tNormalXuanBao_GoldAttributeNum[1][4][2]["RandomItemChanceType"] = 2
	tNormalXuanBao_GoldAttributeNum[1][4][2]["ItemChance"] = 10690
	tNormalXuanBao_GoldAttributeNum[1][4][2]["Item_1"] = 3 
	tNormalXuanBao_GoldAttributeNum[1][4][3] = {}
	tNormalXuanBao_GoldAttributeNum[1][4][3]["RandomItemChanceType"] = 2
	tNormalXuanBao_GoldAttributeNum[1][4][3]["ItemChance"] = 43940
	tNormalXuanBao_GoldAttributeNum[1][4][3]["Item_1"] = 2 
	tNormalXuanBao_GoldAttributeNum[1][4][4] = {}
	tNormalXuanBao_GoldAttributeNum[1][4][4]["RandomItemChanceType"] = 2
	tNormalXuanBao_GoldAttributeNum[1][4][4]["ItemChance"] = 39590
	tNormalXuanBao_GoldAttributeNum[1][4][4]["Item_1"] = 1 
	tNormalXuanBao_GoldAttributeNum[1][4][5] = {}
	tNormalXuanBao_GoldAttributeNum[1][4][5]["RandomItemChanceType"] = 2
	tNormalXuanBao_GoldAttributeNum[1][4][5]["ItemChance"] = 5301
	tNormalXuanBao_GoldAttributeNum[1][4][5]["Item_1"] = 0 
	
	tNormalXuanBao_GoldAttributeNum[1][3] = {} --此处3代表随机出来的属性条数
	tNormalXuanBao_GoldAttributeNum[1][3]["ItemChanceSum"] = 100000
	tNormalXuanBao_GoldAttributeNum[1][3][1] = {}
	tNormalXuanBao_GoldAttributeNum[1][3][1]["RandomItemChanceType"] = 2
	tNormalXuanBao_GoldAttributeNum[1][3][1]["ItemChance"] = 2730
	tNormalXuanBao_GoldAttributeNum[1][3][1]["Item_1"] = 3 
	tNormalXuanBao_GoldAttributeNum[1][3][2] = {}
	tNormalXuanBao_GoldAttributeNum[1][3][2]["RandomItemChanceType"] = 2
	tNormalXuanBao_GoldAttributeNum[1][3][2]["ItemChance"] = 27810
	tNormalXuanBao_GoldAttributeNum[1][3][2]["Item_1"] = 2 
	tNormalXuanBao_GoldAttributeNum[1][3][3] = {}
	tNormalXuanBao_GoldAttributeNum[1][3][3]["RandomItemChanceType"] = 2
	tNormalXuanBao_GoldAttributeNum[1][3][3]["ItemChance"] = 52250
	tNormalXuanBao_GoldAttributeNum[1][3][3]["Item_1"] = 1 
	tNormalXuanBao_GoldAttributeNum[1][3][4] = {}
	tNormalXuanBao_GoldAttributeNum[1][3][4]["RandomItemChanceType"] = 2
	tNormalXuanBao_GoldAttributeNum[1][3][4]["ItemChance"] = 17210
	tNormalXuanBao_GoldAttributeNum[1][3][4]["Item_1"] = 0 
	--特殊重铸
	tNormalXuanBao_GoldAttributeNum[2] = {}
	tNormalXuanBao_GoldAttributeNum[2]["GivenNum"] = 1
	tNormalXuanBao_GoldAttributeNum[2]["NeedEmoney"] = 388
	tNormalXuanBao_GoldAttributeNum[2][5] = {} --此处5代表随机出来的属性条数
	tNormalXuanBao_GoldAttributeNum[2][5]["ItemChanceSum"] = 1000000
	tNormalXuanBao_GoldAttributeNum[2][5][1] = {}
	tNormalXuanBao_GoldAttributeNum[2][5][1]["RandomItemChanceType"] = 2
	tNormalXuanBao_GoldAttributeNum[2][5][1]["ItemChance"] = 1720
	tNormalXuanBao_GoldAttributeNum[2][5][1]["Item_1"] = 5 
	tNormalXuanBao_GoldAttributeNum[2][5][2] = {}
	tNormalXuanBao_GoldAttributeNum[2][5][2]["RandomItemChanceType"] = 2
	tNormalXuanBao_GoldAttributeNum[2][5][2]["ItemChance"] = 107821
	tNormalXuanBao_GoldAttributeNum[2][5][2]["Item_1"] = 4 
	tNormalXuanBao_GoldAttributeNum[2][5][3] = {}
	tNormalXuanBao_GoldAttributeNum[2][5][3]["RandomItemChanceType"] = 2
	tNormalXuanBao_GoldAttributeNum[2][5][3]["ItemChance"] = 600000
	tNormalXuanBao_GoldAttributeNum[2][5][3]["Item_1"] = 3 
	tNormalXuanBao_GoldAttributeNum[2][5][4] = {}
	tNormalXuanBao_GoldAttributeNum[2][5][4]["RandomItemChanceType"] = 2
	tNormalXuanBao_GoldAttributeNum[2][5][4]["ItemChance"] = 200000
	tNormalXuanBao_GoldAttributeNum[2][5][4]["Item_1"] = 2 
	tNormalXuanBao_GoldAttributeNum[2][5][5] = {}
	tNormalXuanBao_GoldAttributeNum[2][5][5]["RandomItemChanceType"] = 2
	tNormalXuanBao_GoldAttributeNum[2][5][5]["ItemChance"] = 90459
	tNormalXuanBao_GoldAttributeNum[2][5][5]["Item_1"] = 1 
	
	tNormalXuanBao_GoldAttributeNum[2][4] = {} --此处4代表随机出来的属性条数
	tNormalXuanBao_GoldAttributeNum[2][4]["ItemChanceSum"] = 100000
	tNormalXuanBao_GoldAttributeNum[2][4][1] = {}
	tNormalXuanBao_GoldAttributeNum[2][4][1]["RandomItemChanceType"] = 2
	tNormalXuanBao_GoldAttributeNum[2][4][1]["ItemChance"] = 1860
	tNormalXuanBao_GoldAttributeNum[2][4][1]["Item_1"] = 4 
	tNormalXuanBao_GoldAttributeNum[2][4][2] = {}
	tNormalXuanBao_GoldAttributeNum[2][4][2]["RandomItemChanceType"] = 2
	tNormalXuanBao_GoldAttributeNum[2][4][2]["ItemChance"] = 30000
	tNormalXuanBao_GoldAttributeNum[2][4][2]["Item_1"] = 3 
	tNormalXuanBao_GoldAttributeNum[2][4][3] = {}
	tNormalXuanBao_GoldAttributeNum[2][4][3]["RandomItemChanceType"] = 2
	tNormalXuanBao_GoldAttributeNum[2][4][3]["ItemChance"] = 46240
	tNormalXuanBao_GoldAttributeNum[2][4][3]["Item_1"] = 2 
	tNormalXuanBao_GoldAttributeNum[2][4][4] = {}
	tNormalXuanBao_GoldAttributeNum[2][4][4]["RandomItemChanceType"] = 2
	tNormalXuanBao_GoldAttributeNum[2][4][4]["ItemChance"] = 21900
	tNormalXuanBao_GoldAttributeNum[2][4][4]["Item_1"] = 1 
	
	
	
	--%d = 1 代表锻造类型为普通锻造 =2代表锻造类型为高级锻造，s% = 0 代表花费神器源晶  其他代表玩家花费的天石数
local tNormalXuanBao_Log = {}
	tNormalXuanBao_Log["Log"] = "0,0,%d,1,12001028,2,%s,1"
	tNormalXuanBao_Log["EmoneyLog"] = "250	4014	%d	%d	1	"
	
local tNormalXuanBao_Stc = {}
	tNormalXuanBao_Stc[1] = {}
	tNormalXuanBao_Stc[1]["EventType"] = 174
	tNormalXuanBao_Stc[1]["DataType"] = 93
	tNormalXuanBao_Stc[2] = {}
	tNormalXuanBao_Stc[2]["EventType"] = 175
	tNormalXuanBao_Stc[2]["DataType"] = 49
	
local tNormalXuanBao_Award = {}

	-- 3322773		ClassicRelicBox
	tNormalXuanBao_Award[3322773] = {}
	tNormalXuanBao_Award[3322773]["NeedPrice"] = 800000
	tNormalXuanBao_Award[3322773]["RewardItem"] = {}
	tNormalXuanBao_Award[3322773]["RewardItem"][1] = {}
	tNormalXuanBao_Award[3322773]["RewardItem"][1]["Id"] = 3322773
	tNormalXuanBao_Award[3322773]["RewardItem"][1]["Attr"] = "0 1"
	tNormalXuanBao_Award[3322773]["LogId"] = 12001028
	tNormalXuanBao_Award[3322773]["EmoneyLog"] = "350	22677	0	0	1	"
	tNormalXuanBao_Award[3322773]["RewardEffect"] = {}
	tNormalXuanBao_Award[3322773]["RewardEffect"]["SzObj"] = "self"
	tNormalXuanBao_Award[3322773]["RewardEffect"]["Effect"] = "angelwing"		
	
	-- 3322219		LuxuryRelicChest
	tNormalXuanBao_Award[3322219] = {}
	tNormalXuanBao_Award[3322219]["NeedPrice"] = 2000000
	tNormalXuanBao_Award[3322219]["RewardItem"] = {}
	tNormalXuanBao_Award[3322219]["RewardItem"][1] = {}
	tNormalXuanBao_Award[3322219]["RewardItem"][1]["Id"] = 3322219
	tNormalXuanBao_Award[3322219]["RewardItem"][1]["Attr"] = "0 1"
	tNormalXuanBao_Award[3322219]["LogId"] = 12001028
	tNormalXuanBao_Award[3322219]["EmoneyLog"] = "350	22678	0	0	1	"
	tNormalXuanBao_Award[3322219]["RewardEffect"] = {}
	tNormalXuanBao_Award[3322219]["RewardEffect"]["SzObj"] = "self"
	tNormalXuanBao_Award[3322219]["RewardEffect"]["Effect"] = "angelwing"		
	
----------------------------------逻辑部分---------------------------------------------
-- 获取获得的玄宝属性数量
function NormalXuanBao_GetAttrNum(nIndex)
	local nFlag,tReward = Probabil_RandomAward(tNormalXuanBao_AttributeNum[21453],nIndex)
	
	return tReward[1]["tAward"][1]["Item_1"]
end
-- 获取获得的玄宝黄金属性数量
function NormalXuanBao_GetGoldAttrNum(nIndex,nAttributeNum)
	local nFlag,tReward = Probabil_RandomAward(tNormalXuanBao_GoldAttributeNum[nIndex],nAttributeNum)
	
	return tReward[1]["tAward"][1]["Item_1"]
end
--神器源晶数量是否足够
function NormalXuanBao_IsRelicCrystal(nIndex)
	local nSpendItemId = tNormalXuanBao_Const["SpendItemId"]
	local nNeedSpendNum = tNormalXuanBao_Const["Spend"][nIndex]
	local nNowItemNum = Get_CountItemType(nSpendItemId,0)
	--判断神器源晶数量
	if nNowItemNum < nNeedSpendNum then
		return false
	else
		return true
	end
end
--
--获得玄宝
function NormalXuanBao_GetXuanBao(nItemId,nIndex)
	local nNeedEmoney = tNormalXuanBao_GoldAttributeNum[nIndex]["NeedEmoney"]
	local nAttributeNum = NormalXuanBao_GetAttrNum(nIndex)
	local nGoldAttrNum = NormalXuanBao_GetGoldAttrNum(nIndex,nAttributeNum)
	local nSpendItemId = tNormalXuanBao_Const["SpendItemId"]
	local nNeedSpendNum = tNormalXuanBao_Const["Spend"][nIndex]
	local sXuanBaoType = tNormalXuanBao_Text["GetType"][nIndex]
	local nGivenNum = tNormalXuanBao_GoldAttributeNum[nIndex]["GivenNum"]
	local nUserId = Get_UserId()
	local nUserEMoney = Get_UserEMoney(nUserId)
	--判断背包空间
	if not User_CheckLeftSpace(tNormalXuanBao_Const["NeedSpace"]) then
		Sys_MsgBox(tNormalXuanBao_Text["BagFull"])
		return 
	end
	--获得
	if NormalXuanBao_IsRelicCrystal(nIndex) then
		if Item_DelMulItem(nSpendItemId,nSpendItemId,nNeedSpendNum)then
			NormalXuanBao_RwardXuanBao(nItemId,nAttributeNum,nGoldAttrNum,nGivenNum,sXuanBaoType,nIndex,0)
		end
	else
		if nUserEMoney < nNeedEmoney then
			Sys_MsgBox(string.format(tNormalXuanBao_Text["NoEMoney"],sXuanBaoType))
			return
		else
			if User_AddEMoney(-nNeedEmoney,nUserId) then
				Sys_SaveEmoneyBuy(string.format(tNormalXuanBao_Log["EmoneyLog"],nNeedEmoney,nNeedEmoney))
				NormalXuanBao_RwardXuanBao(nItemId,nAttributeNum,nGoldAttrNum,nGivenNum,sXuanBaoType,nIndex,nNeedEmoney)
			end
		end
	end
end
--获得玄宝
function NormalXuanBao_RwardXuanBao(nItemId,nAttributeNum,nGoldAttrNum,nGivenNum,sXuanBaoType,nIndex,nNeedEmoney)
	local nXuanBaoId,nItem = Xuanbao_Reward(nItemId,0,10,0,0,nAttributeNum,0,0,nGoldAttrNum,nGivenNum)
	local sUserName = Get_UserName(nUserId)
	local sItemQuality = tNormalXuanBao_Text["Quality"][nGoldAttrNum]
	local sFunc = "LinkNpcGossipFunc_New</N>21453</S>1-1"
	if nXuanBaoId ~= 0 then
		local sItemName = Get_ItemtypeName(nXuanBaoId)
		User_TalkChannel2005(string.format(tNormalXuanBao_Text["GetXuanBao"],sItemName))
		if nGoldAttrNum < 3 then
			Sys_MsgBox(string.format(tNormalXuanBao_Text["GetNormalXuanBao"],sXuanBaoType,sItemQuality,sItemName),sFunc)
		else
			Sys_MsgBox(string.format(tNormalXuanBao_Text["GetNormalXuanBao"],sXuanBaoType,sItemQuality,sItemName),sFunc)
			Sys_SystemBroadcast(string.format(tNormalXuanBao_Text["Notice"],sUserName,sItemName))
		end
		-- local sStr1 = Get_ItemData1(nItem)
		-- local sStr2 = Get_ItemData2(nItem) 
		-- local sStr3 = Get_ItemData3(nItem)
		-- local sStr4 = Get_ItemData4(nItem)
		-- local sStr5 = Get_ItemData5(nItem)
		-- local sAttr = nXuanBaoId .. "{" .. sStr1 .. "&" .. sStr2 .. "&" .. sStr3 .. "&" .. sStr4 .. "&" .. sStr5 .. "}"
		local sLog = string.format(tNormalXuanBao_Log["Log"],nIndex,nNeedEmoney)
		Sys_SaveActionFestivalLog(sLog)
		if nIndex == 1 then 
			User_EffectAdd("self","task073")
		else
			User_EffectAdd("self","task074")
		end
	end
end
--更新神器源晶不足的文字
function NormalXuanBao_ShowRelicCrystalLess(nItemId,nIndex)
	local sXuanBaoType = tNormalXuanBao_Text["GetType"][nIndex]
	local sItemName = Get_ItemtypeName(nItemId)
	local nNeedEmoney = tNormalXuanBao_GoldAttributeNum[nIndex]["NeedEmoney"]
	if NormalXuanBao_CheckNotarize(2) and not NormalXuanBao_IsRelicCrystal(nIndex) then
		tNpcGossip[21453]["Text411"] = string.format(tNormalXuanBao_Text[21453]["Text411"],sXuanBaoType)
		tNpcGossip[21453]["Text412"] = string.format(tNormalXuanBao_Text[21453]["Text412"],nNeedEmoney,sItemName)
		tNpcGossip[21453]["Option411"] = string.format(tNormalXuanBao_Text[21453]["Option411"],nNeedEmoney)
		tNpcGossip[21453]["OptionFunc411"] = "NormalXuanBao_GetXuanBao</N>"..nItemId.."</N>"..nIndex
		LinkNpcGossipFunc_New(21453,"4-1")
	else
		NormalXuanBao_GetXuanBao(nItemId,nIndex)
	end
end
--选择神器
function NormalXuanBao_SelectItem(nItemId,nIndex)
	local nNeedSpendNum = tNormalXuanBao_Const["Spend"][nIndex]
	local sItemName = Get_ItemtypeName(nItemId)
	local sXuanBaoType = tNormalXuanBao_Text["GetType"][nIndex]
	if NormalXuanBao_IsRelicCrystal(nIndex) and NormalXuanBao_CheckNotarize(1) then
		tNpcGossip[21453]["Text311"] = string.format(tNormalXuanBao_Text[21453]["Text311"],nNeedSpendNum,sXuanBaoType,sItemName)
		tNpcGossip[21453]["OptionFunc311"] = "NormalXuanBao_GetXuanBao</N>"..nItemId.."</N>"..nIndex
		LinkNpcGossipFunc_New(21453,"3-1")
	else 
		NormalXuanBao_ShowRelicCrystalLess(nItemId,nIndex)
	end
end
--重置点击神器选项触发函数
function NormalXuanBao_SelectIndex(nIndex)
	tNpcGossip[21453]["Text223"] = string.format(tNormalXuanBao_Text[21453]["Text223"],tNormalXuanBao_Text["GetType"][nIndex])
	tNpcGossip[21453]["OptionFunc211"] = "NormalXuanBao_SelectItem</N>4100005</N>"..nIndex
	tNpcGossip[21453]["OptionFunc212"] = "NormalXuanBao_SelectItem</N>4100002</N>"..nIndex
	tNpcGossip[21453]["OptionFunc213"] = "NormalXuanBao_SelectItem</N>4100004</N>"..nIndex
	tNpcGossip[21453]["OptionFunc214"] = "NormalXuanBao_SelectItem</N>4100001</N>"..nIndex
	tNpcGossip[21453]["OptionFunc215"] = "NormalXuanBao_SelectItem</N>4100003</N>"..nIndex
	LinkNpcGossipFunc_New(21453,"2-1")
end

--隔日掩码清零
function NormalXuanBao_ClearStc()
	
	local nUserId = Get_UserId()
	--隔天清零
	for i = 1,2 do
		local nEvent = tNormalXuanBao_Stc[i]["EventType"]
		local nType = tNormalXuanBao_Stc[i]["DataType"]
		if Task_StcInterval(nEvent,nType,1,4) and Task_ChkStcValue(nEvent,nType,">",0,nUserId) then
			Task_SetStatistic(nEvent,nType,0,1,nUserId)
			Task_SetStcTimestamp(nEvent,nType,0,nUserId)
		end
	end
end

--取消二次确认
function NormalXuanBao_OffNotarize(nIndex)
	local nEvent = tNormalXuanBao_Stc[nIndex]["EventType"]
	local nType = tNormalXuanBao_Stc[nIndex]["DataType"]
	local nUserId = Get_UserId()
	--置掩码
	Task_AddStatistic(nEvent,nType,1,1)
	Task_SetStcTimestamp(nEvent,nType,0)
	LinkNpcGossipFunc_New(21453,"2-1")
end
--是否有二次确认
function NormalXuanBao_CheckNotarize(nIndex)
	local nEvent = tNormalXuanBao_Stc[nIndex]["EventType"]
	local nType = tNormalXuanBao_Stc[nIndex]["DataType"]
	local nUserId = Get_UserId()
	if Task_ChkStcValue(nEvent,nType,">",0,nUserId) then
		return false 
	else 
		return true
	end
end

function NormalXuanBao_OpenURL()
	User_SendWebDialog(tNormalXuanBao_Const["Web"])
end

--新增选项购买礼包
function NormalXuanBao_BuyBox(nItemId,nNpcId)
	local nPrice = tNormalXuanBao_Award[nItemId]["NeedPrice"]
	local sName = Get_ItemtypeName(nItemId)

	Sys_DialogText(string.format(tNormalXuanBao_Text[21453]["Str"]["Test111"],nPrice,sName))
	Sys_DialogOption(tNormalXuanBao_Text[21453]["Option"]["Option111"],"</F>NormalXuanBao_BuyBoxSure</N>"..nItemId.."</N>"..nPrice.."</S>"..sName)
	
	Sys_DialogOption(tNormalXuanBao_Text[21453]["Option"]["Option112"],"</F>NULL")
	Sys_DialogFace(nNpcId)
	Sys_DialogEnd()
	
end 

--确认购买
function NormalXuanBao_BuyBoxSure(nItemId,nPrice,sName)
	if not Sys_ChkFullTime(tNormalXuanBao_Const["ActivityTime"]) then 
		return
	end 
	
	--判断金币
	if not User_CanPutMoney2Bag(-nPrice) then
		Sys_MsgBox(tNormalXuanBao_Text[21453]["Str"]["Test112"])
		return
	end
	
	--减少玩家金币
	if User_AddMoney(-nPrice) then 
		
		RewardTemplate_UseItemAndMsg(tNormalXuanBao_Award[nItemId])
		
	end 
	
end 

----------------------------------NPC部分---------------------------------------------
tNpcFace[4935] = 12
tNpcGossip[21453]= tNpcGossip[21453] or DefaultNpc:new{}
tNpcGossip[21453]["OptionHidden"] = 1
tNpcGossip[21453]["DialogueText"] = tNormalXuanBao_Text[21453]

tNpcGossip[21453]["Text1-1"] = {111,112,113,114,116}

tNpcGossip[21453]["ChkFunc1-1"]= function()
	NormalXuanBao_ClearStc()
	return User_JudgeLevelAndMetempsychosis(tNormalXuanBao_Const["Level"],tNormalXuanBao_Const["Metempsychosis"]) and Sys_ChkFullTime(tNormalXuanBao_Const["ActivityTime"])
end
tNpcGossip[21453]["tOption1-1"] = {111,112,113,114,115}

tNpcGossip[21453]["OptionFunc111"] = "NormalXuanBao_SelectIndex</N>1"
tNpcGossip[21453]["OptionFunc112"] = "NormalXuanBao_SelectIndex</N>2"
tNpcGossip[21453]["OptionFunc113"] = "NormalXuanBao_OpenURL"
tNpcGossip[21453]["OptionFunc114"] = "NormalXuanBao_BuyBox</N>3322773</N>21453"
tNpcGossip[21453]["OptionFunc115"] = "NormalXuanBao_BuyBox</N>3322219</N>21453"

--不满足条件
tNpcGossip[21453]["Text1-2"] = {121,122,123,124,125,126}

tNpcGossip[21453]["ChkFunc1-2"]= function()
	return not User_JudgeLevelAndMetempsychosis(tNormalXuanBao_Const["Level"],tNormalXuanBao_Const["Metempsychosis"]) and Sys_ChkFullTime(tNormalXuanBao_Const["ActivityTime"])
end
tNpcGossip[21453]["tOption1-2"] = {121,122,123}
tNpcGossip[21453]["OptionFunc122"] = "NormalXuanBao_BuyBox</N>3322773</N>21453"
tNpcGossip[21453]["OptionFunc123"] = "NormalXuanBao_BuyBox</N>3322219</N>21453"

--打造
-- tNpcGossip[21453]["Text2-1"] = {211,212,213,214,215,216,217,218,219,220,221,222,223}
tNpcGossip[21453]["Text2-1"] = {211,212,213,214,215,222,223}
tNpcGossip[21453]["tOption2-1"] = {211,212,213,214,215,216}

tNpcGossip[21453]["OptionPoint216"] = "1-1"

--消耗源晶二次确认
tNpcGossip[21453]["Text3-1"] = {311}

tNpcGossip[21453]["tOption3-1"] = {311,312,313}
tNpcGossip[21453]["OptionFunc312"] = "NormalXuanBao_OffNotarize</N>1"
tNpcGossip[21453]["OptionPoint313"] = "2-1"
--消耗天石二次确认
tNpcGossip[21453]["Text4-1"] = {411,412}

tNpcGossip[21453]["tOption4-1"] = {411,412,413}
tNpcGossip[21453]["OptionFunc412"] = "NormalXuanBao_OffNotarize</N>2"
tNpcGossip[21453]["OptionPoint413"] = "2-1"


--活动前
tNpcGossip[21453]["Text1-3"] = {131,132}
tNpcGossip[21453]["ChkFunc1-3"]= function()
	return CommonFunc_GetBeforeActivityTime(tNormalXuanBao_Const["ActivityTime"])
end
tNpcGossip[21453]["tOption1-3"] = {131}

--活动后
tNpcGossip[21453]["Text1-4"] = {141,142}

tNpcGossip[21453]["ChkFunc1-4"]= function()
	return CommonFunc_GetAfterActivityTime(tNormalXuanBao_Const["ActivityTime"])
end
tNpcGossip[21453]["tOption1-4"] = {141}
--分解神器NPC哪吒
tNpcFace[4932] = 1244
tNpcGossip[21454] = tNpcGossip[22568]


