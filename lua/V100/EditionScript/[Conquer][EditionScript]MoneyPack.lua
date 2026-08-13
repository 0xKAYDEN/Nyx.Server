------------------------------------------------------------------------------------
--Name：            180222[英文征服][功能脚本]新金币包制作
--Creator:      潘云锋
--Created:     2018/02/22
------------------------------------------------------------------------------------
--任务需求：

--2018-02-22 根据需求，新增13个金币包
--id：3390029 - 3390058

------------------------------------------------------------------------------------
-- 命名前缀
-- MoneyPack_

----------------------------------表配置部分--------------------------------------------
local tMoneyPack_Reward = {}
	--1000银两礼包
	tMoneyPack_Reward[3390029] = {}
	tMoneyPack_Reward[3390029]["LogId"] = 12001008
	tMoneyPack_Reward[3390029]["DeleteItem"] = {}
	tMoneyPack_Reward[3390029]["DeleteItem"][1] = {}
	tMoneyPack_Reward[3390029]["DeleteItem"][1]["Id"] = 3390029
	tMoneyPack_Reward[3390029]["RewardMoney"] = {}
	tMoneyPack_Reward[3390029]["RewardMoney"]["Value"] = 1000	
	tMoneyPack_Reward[3390029]["RewardEffect"]={}
	tMoneyPack_Reward[3390029]["RewardEffect"]["Effect"] = "zf2-e128"
	--5000银两礼包
	tMoneyPack_Reward[3390030] = {}
	tMoneyPack_Reward[3390030]["LogId"] = 12001008
	tMoneyPack_Reward[3390030]["DeleteItem"] = {}
	tMoneyPack_Reward[3390030]["DeleteItem"][1] = {}
	tMoneyPack_Reward[3390030]["DeleteItem"][1]["Id"] = 3390030
	tMoneyPack_Reward[3390030]["RewardMoney"] = {}
	tMoneyPack_Reward[3390030]["RewardMoney"]["Value"] = 5000	
	tMoneyPack_Reward[3390030]["RewardEffect"]={}
	tMoneyPack_Reward[3390030]["RewardEffect"]["Effect"] = "zf2-e128"
	--1万银两礼包
	tMoneyPack_Reward[3390031] = {}
	tMoneyPack_Reward[3390031]["LogId"] = 12001008
	tMoneyPack_Reward[3390031]["DeleteItem"] = {}
	tMoneyPack_Reward[3390031]["DeleteItem"][1] = {}
	tMoneyPack_Reward[3390031]["DeleteItem"][1]["Id"] = 3390031
	tMoneyPack_Reward[3390031]["RewardMoney"] = {}
	tMoneyPack_Reward[3390031]["RewardMoney"]["Value"] = 10000	
	tMoneyPack_Reward[3390031]["RewardEffect"]={}
	tMoneyPack_Reward[3390031]["RewardEffect"]["Effect"] = "zf2-e128"
	--5万银两礼包
	tMoneyPack_Reward[3390032] = {}
	tMoneyPack_Reward[3390032]["LogId"] = 12001008
	tMoneyPack_Reward[3390032]["DeleteItem"] = {}
	tMoneyPack_Reward[3390032]["DeleteItem"][1] = {}
	tMoneyPack_Reward[3390032]["DeleteItem"][1]["Id"] = 3390032
	tMoneyPack_Reward[3390032]["RewardMoney"] = {}
	tMoneyPack_Reward[3390032]["RewardMoney"]["Value"] = 50000	
	tMoneyPack_Reward[3390032]["RewardEffect"]={}
	tMoneyPack_Reward[3390032]["RewardEffect"]["Effect"] = "zf2-e128"
	--10万银两礼包
	tMoneyPack_Reward[3390033] = {}
	tMoneyPack_Reward[3390033]["LogId"] = 12001008
	tMoneyPack_Reward[3390033]["DeleteItem"] = {}
	tMoneyPack_Reward[3390033]["DeleteItem"][1] = {}
	tMoneyPack_Reward[3390033]["DeleteItem"][1]["Id"] = 3390033
	tMoneyPack_Reward[3390033]["RewardMoney"] = {}
	tMoneyPack_Reward[3390033]["RewardMoney"]["Value"] = 100000
	tMoneyPack_Reward[3390033]["RewardEffect"]={}
	tMoneyPack_Reward[3390033]["RewardEffect"]["Effect"] = "zf2-e128"
	--50万银两礼包
	tMoneyPack_Reward[3390034] = {}
	tMoneyPack_Reward[3390034]["LogId"] = 12001008
	tMoneyPack_Reward[3390034]["DeleteItem"] = {}
	tMoneyPack_Reward[3390034]["DeleteItem"][1] = {}
	tMoneyPack_Reward[3390034]["DeleteItem"][1]["Id"] = 3390034
	tMoneyPack_Reward[3390034]["RewardMoney"] = {}
	tMoneyPack_Reward[3390034]["RewardMoney"]["Value"] = 500000	
	tMoneyPack_Reward[3390034]["Gold"] = true	--新增金币服标识
	tMoneyPack_Reward[3390034]["RewardEffect"]={}
	tMoneyPack_Reward[3390034]["RewardEffect"]["Effect"] = "zf2-e128"
	--100万银两礼包
	tMoneyPack_Reward[3390035] = {}
	tMoneyPack_Reward[3390035]["LogId"] = 12001008
	tMoneyPack_Reward[3390035]["DeleteItem"] = {}
	tMoneyPack_Reward[3390035]["DeleteItem"][1] = {}
	tMoneyPack_Reward[3390035]["DeleteItem"][1]["Id"] = 3390035
	tMoneyPack_Reward[3390035]["RewardMoney"] = {}
	tMoneyPack_Reward[3390035]["RewardMoney"]["Value"] = 1000000	
	tMoneyPack_Reward[3390035]["Gold"] = true	--新增金币服标识
	tMoneyPack_Reward[3390035]["RewardEffect"]={}
	tMoneyPack_Reward[3390035]["RewardEffect"]["Effect"] = "zf2-e128"
	--500万银两礼包
	tMoneyPack_Reward[3390036] = {}
	tMoneyPack_Reward[3390036]["LogId"] = 12001008
	tMoneyPack_Reward[3390036]["DeleteItem"] = {}
	tMoneyPack_Reward[3390036]["DeleteItem"][1] = {}
	tMoneyPack_Reward[3390036]["DeleteItem"][1]["Id"] = 3390036
	tMoneyPack_Reward[3390036]["RewardMoney"] = {}
	tMoneyPack_Reward[3390036]["RewardMoney"]["Value"] = 5000000	
	tMoneyPack_Reward[3390036]["Gold"] = true	--新增金币服标识
	tMoneyPack_Reward[3390036]["RewardEffect"]={}
	tMoneyPack_Reward[3390036]["RewardEffect"]["Effect"] = "zf2-e128"
	--1千万银两礼包
	tMoneyPack_Reward[3390037] = {}
	tMoneyPack_Reward[3390037]["LogId"] = 12001008
	tMoneyPack_Reward[3390037]["DeleteItem"] = {}
	tMoneyPack_Reward[3390037]["DeleteItem"][1] = {}
	tMoneyPack_Reward[3390037]["DeleteItem"][1]["Id"] = 3390037
	tMoneyPack_Reward[3390037]["RewardMoney"] = {}
	tMoneyPack_Reward[3390037]["RewardMoney"]["Value"] = 10000000	
	tMoneyPack_Reward[3390037]["Gold"] = true	--新增金币服标识
	tMoneyPack_Reward[3390037]["RewardEffect"]={}
	tMoneyPack_Reward[3390037]["RewardEffect"]["Effect"] = "zf2-e128"
	--5千万银两礼包
	tMoneyPack_Reward[3390038] = {}
	tMoneyPack_Reward[3390038]["LogId"] = 12001008
	tMoneyPack_Reward[3390038]["DeleteItem"] = {}
	tMoneyPack_Reward[3390038]["DeleteItem"][1] = {}
	tMoneyPack_Reward[3390038]["DeleteItem"][1]["Id"] = 3390038
	tMoneyPack_Reward[3390038]["RewardMoney"] = {}
	tMoneyPack_Reward[3390038]["RewardMoney"]["Value"] = 50000000	
	tMoneyPack_Reward[3390038]["Gold"] = true	--新增金币服标识
	tMoneyPack_Reward[3390038]["RewardEffect"]={}
	tMoneyPack_Reward[3390038]["RewardEffect"]["Effect"] = "zf2-e128"
	--1亿银两礼包
	tMoneyPack_Reward[3390039] = {}
	tMoneyPack_Reward[3390039]["LogId"] = 12001008
	tMoneyPack_Reward[3390039]["DeleteItem"] = {}
	tMoneyPack_Reward[3390039]["DeleteItem"][1] = {}
	tMoneyPack_Reward[3390039]["DeleteItem"][1]["Id"] = 3390039
	tMoneyPack_Reward[3390039]["RewardMoney"] = {}
	tMoneyPack_Reward[3390039]["RewardMoney"]["Value"] = 100000000	
	tMoneyPack_Reward[3390039]["Gold"] = true	--新增金币服标识
	tMoneyPack_Reward[3390039]["RewardEffect"]={}
	tMoneyPack_Reward[3390039]["RewardEffect"]["Effect"] = "zf2-e128"
	--5亿银两礼包
	tMoneyPack_Reward[3390040] = {}
	tMoneyPack_Reward[3390040]["LogId"] = 12001008
	tMoneyPack_Reward[3390040]["DeleteItem"] = {}
	tMoneyPack_Reward[3390040]["DeleteItem"][1] = {}
	tMoneyPack_Reward[3390040]["DeleteItem"][1]["Id"] = 3390040
	tMoneyPack_Reward[3390040]["RewardMoney"] = {}
	tMoneyPack_Reward[3390040]["RewardMoney"]["Value"] = 500000000
	tMoneyPack_Reward[3390040]["RewardEffect"]={}
	tMoneyPack_Reward[3390040]["RewardEffect"]["Effect"] = "zf2-e128"
	--10亿银两礼包
	tMoneyPack_Reward[3390041] = {}
	tMoneyPack_Reward[3390041]["LogId"] = 12001008
	tMoneyPack_Reward[3390041]["DeleteItem"] = {}
	tMoneyPack_Reward[3390041]["DeleteItem"][1] = {}
	tMoneyPack_Reward[3390041]["DeleteItem"][1]["Id"] = 3390041
	tMoneyPack_Reward[3390041]["RewardMoney"] = {}
	tMoneyPack_Reward[3390041]["RewardMoney"]["Value"] = 1000000000
	tMoneyPack_Reward[3390041]["Gold"] = true	--新增金币服标识
	tMoneyPack_Reward[3390041]["RewardEffect"]={}
	tMoneyPack_Reward[3390041]["RewardEffect"]["Effect"] = "zf2-e128"
	
----------------------------------逻辑部分---------------------------------------------
--打开正常礼包
function MoneyPack_UseItem(nItemId)
	--物品存在确认
	if not Item_ChkItem(nItemId) then
		return
	end
	RewardTemplate_UseItem(tMoneyPack_Reward[nItemId])
end


---------------------------------物品部分---------------------------------------------
tItem[3390029] = tItem[3390029] or {}
tItem[3390029]["Function"] = function(nItemId,sItemName)
	MoneyPack_UseItem(nItemId)
end
tItem[3390030] = tItem[3390030] or {}
tItem[3390030]["Function"] = function(nItemId,sItemName)
	MoneyPack_UseItem(nItemId)
end
tItem[3390031] = tItem[3390031] or {}
tItem[3390031]["Function"] = function(nItemId,sItemName)
	MoneyPack_UseItem(nItemId)
end
tItem[3390032] = tItem[3390032] or {}
tItem[3390032]["Function"] = function(nItemId,sItemName)
	MoneyPack_UseItem(nItemId)
end
tItem[3390033] = tItem[3390033] or {}
tItem[3390033]["Function"] = function(nItemId,sItemName)
	MoneyPack_UseItem(nItemId)
end
tItem[3390034] = tItem[3390034] or {}
tItem[3390034]["Function"] = function(nItemId,sItemName)
	MoneyPack_UseItem(nItemId)
end
tItem[3390035] = tItem[3390035] or {}
tItem[3390035]["Function"] = function(nItemId,sItemName)
	MoneyPack_UseItem(nItemId)
end
tItem[3390036] = tItem[3390036] or {}
tItem[3390036]["Function"] = function(nItemId,sItemName)
	MoneyPack_UseItem(nItemId)
end
tItem[3390037] = tItem[3390037] or {}
tItem[3390037]["Function"] = function(nItemId,sItemName)
	MoneyPack_UseItem(nItemId)
end
tItem[3390038] = tItem[3390038] or {}
tItem[3390038]["Function"] = function(nItemId,sItemName)
	MoneyPack_UseItem(nItemId)
end
tItem[3390039] = tItem[3390039] or {}
tItem[3390039]["Function"] = function(nItemId,sItemName)
	--新增判断是否在德州
	local nUserId = Get_UserId()
	if User_IsUserInGame(nUserId) then
		return
	end
	MoneyPack_UseItem(nItemId)
end
tItem[3390040] = tItem[3390040] or {}
tItem[3390040]["Function"] = function(nItemId,sItemName)
	MoneyPack_UseItem(nItemId)
end
tItem[3390041] = tItem[3390041] or {}
tItem[3390041]["Function"] = function(nItemId,sItemName)
	--新增判断是否在德州
	local nUserId = Get_UserId()
	if User_IsUserInGame(nUserId) then
		return
	end
	MoneyPack_UseItem(nItemId)
end
