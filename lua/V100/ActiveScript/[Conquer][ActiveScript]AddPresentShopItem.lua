------------------------------------------------------------------------------------
--Name:		171219[英文征服][活动脚本]赠品商场添加道具
--Purpose:		赠品商场添加道具
--Creator:		傅伟龙
--Created:		2017/12/19
------------------------------------------------------------------------------------
-- 前缀
-- AddPresentShopItem_
--logid：12000968
-----------------------------------------------------------
-- EliteFistPack
local tAddPresentShopItem_RewandItem = {}
	tAddPresentShopItem_RewandItem[3307070]={}
	tAddPresentShopItem_RewandItem[3307070][1]={}
	tAddPresentShopItem_RewandItem[3307070][1]["LogId"] = 12000968
	tAddPresentShopItem_RewandItem[3307070][1]["DeleteItem"] = {}
	tAddPresentShopItem_RewandItem[3307070][1]["DeleteItem"][1] = {}
	tAddPresentShopItem_RewandItem[3307070][1]["DeleteItem"][1]["Id"] = 3307070
	tAddPresentShopItem_RewandItem[3307070][1]["RewardItem"] = {}
	tAddPresentShopItem_RewandItem[3307070][1]["RewardItem"][1] = {}
	tAddPresentShopItem_RewandItem[3307070][1]["RewardItem"][1]["Id"] = 624028
	tAddPresentShopItem_RewandItem[3307070][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tAddPresentShopItem_RewandItem[3307070][1]["RewardEffect"] = {}
	tAddPresentShopItem_RewandItem[3307070][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
--返还赠点
	tAddPresentShopItem_RewandItem["BackCP"]={}
	tAddPresentShopItem_RewandItem["BackCP"][3307070]={}
	tAddPresentShopItem_RewandItem["BackCP"][3307070]["LogId"]=12001174
	tAddPresentShopItem_RewandItem["BackCP"][3307070]["DeleteItem"] = {}
	tAddPresentShopItem_RewandItem["BackCP"][3307070]["DeleteItem"][1] = {}
	tAddPresentShopItem_RewandItem["BackCP"][3307070]["DeleteItem"][1]["Id"] = 3307070
	tAddPresentShopItem_RewandItem["BackCP"][3307070]["RewardEMoneyMono"] = {}
	tAddPresentShopItem_RewandItem["BackCP"][3307070]["RewardEMoneyMono"] ["Value"] = 30
	tAddPresentShopItem_RewandItem["BackCP"][3307070]["EmoneyLog"] = "10000	0069	1	1	30	"
--------------------------------物品逻辑---------------------------

function AddPresentShopItem_OpenRewardBag(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end 
	if SpecialServer_ChkNoGiftServer() then 
		tItem[nItemId]["OptionFunc1111"]="AddPresentShopItem_BackMoney</N>" .. nItemId
		return LinkItemGossipFunc_New(nItemId,"1-1")
	else
		RewardTemplate_UseItemAndMsg(tAddPresentShopItem_RewandItem[nItemId][1])
	end 
end

--返还赠点
function AddPresentShopItem_BackMoney(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end 
	-- 判断赠点上限
	local nUserId = Get_UserId()
	local nEmoney = Get_UserMonoEMoney(nUserId)
	local nAddEmoney = 30
	if nEmoney + nAddEmoney > G_User_MaxEmoneyMono then
		Sys_MsgBox(tBoundItemCheck_Text["EMonomoneyFull"])
		return
	end
	if RewardTemplate_UseItem(tAddPresentShopItem_RewandItem["BackCP"][nItemId]) then 
		return
	end 
end 

--------------------------------物品配置---------------------------
tItemFace[3307070] = 1943
tItem[3307070] = tItem[3307070] or {}
tItem[3307070]["Function"] = function(nItemId,sItemName)
	AddPresentShopItem_OpenRewardBag(nItemId)
end

--赠品服务器
tItem[3307070]["Text1-1"]={1111}
tItem[3307070]["Text1111"]=tBoundItemCheck_Text["NoBoundSever"]
tItem[3307070]["tOption1-1"]={1111}
tItem[3307070]["Option1111"]=tBoundItemCheck_Text["EMonomoneyBack"]