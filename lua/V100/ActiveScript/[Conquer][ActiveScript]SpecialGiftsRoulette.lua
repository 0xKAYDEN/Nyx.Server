------------------------------------------------------------------------------------
--Name:		190227[简体征服]超值好礼抽奖功能制作
--Purpose:	超值好礼抽奖功能制作
--Creator: 	傅伟龙
--Created:	2019/02/27
------------------------------------------------------------------------------------
--SpecialGiftsRoulette

--logId:10002449



-----------------------------------数据部分配置--------------------------------------

local tSpecialGiftsRoulette_Reward = {}
	-- ===5分钟经验包
	-- ===索引: 3320537
	-- ===删除:3320537
	-- ===
	tSpecialGiftsRoulette_Reward[3320537] = {}
	tSpecialGiftsRoulette_Reward[3320537]["LogId"] = 10002449
	tSpecialGiftsRoulette_Reward[3320537]["DeleteItem"] = {}
	tSpecialGiftsRoulette_Reward[3320537]["DeleteItem"][1] = {}
	tSpecialGiftsRoulette_Reward[3320537]["DeleteItem"][1]["Id"] = 3320537 -- 【库】 3320537 【cnzf库里没有该物品】[属性:]
	tSpecialGiftsRoulette_Reward[3320537]["RewardExpTime"] = {}
	tSpecialGiftsRoulette_Reward[3320537]["RewardExpTime"]["Value"] = 5 -- 分钟经验
	tSpecialGiftsRoulette_Reward[3320537]["RewardExpTime"]["FullIndex"] = "RewardCultivation"
	tSpecialGiftsRoulette_Reward[3320537]["RewardExpTime"]["FullValue"] = 5
	tSpecialGiftsRoulette_Reward[3320537]["RewardEffect"] = {}
	tSpecialGiftsRoulette_Reward[3320537]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpecialGiftsRoulette_Reward[3320537]["RewardEffect"]["Effect"] = "angelwing"


	-- ===10分钟经验包
	-- ===索引: 3320538
	-- ===删除:3320538
	-- ===
	tSpecialGiftsRoulette_Reward[3320538] = {}
	tSpecialGiftsRoulette_Reward[3320538]["LogId"] = 10002449
	tSpecialGiftsRoulette_Reward[3320538]["DeleteItem"] = {}
	tSpecialGiftsRoulette_Reward[3320538]["DeleteItem"][1] = {}
	tSpecialGiftsRoulette_Reward[3320538]["DeleteItem"][1]["Id"] = 3320538 -- 【库】 3320538 【cnzf库里没有该物品】[属性:]
	tSpecialGiftsRoulette_Reward[3320538]["RewardExpTime"] = {}
	tSpecialGiftsRoulette_Reward[3320538]["RewardExpTime"]["Value"] = 10 -- 分钟经验
	tSpecialGiftsRoulette_Reward[3320538]["RewardExpTime"]["FullIndex"] = "RewardCultivation"
	tSpecialGiftsRoulette_Reward[3320538]["RewardExpTime"]["FullValue"] = 10
	tSpecialGiftsRoulette_Reward[3320538]["RewardEffect"] = {}
	tSpecialGiftsRoulette_Reward[3320538]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpecialGiftsRoulette_Reward[3320538]["RewardEffect"]["Effect"] = "angelwing"


	-- ===20分钟经验包
	-- ===索引: 3320539
	-- ===删除:3320539
	-- ===
	tSpecialGiftsRoulette_Reward[3320539] = {}
	tSpecialGiftsRoulette_Reward[3320539]["LogId"] = 10002449
	tSpecialGiftsRoulette_Reward[3320539]["DeleteItem"] = {}
	tSpecialGiftsRoulette_Reward[3320539]["DeleteItem"][1] = {}
	tSpecialGiftsRoulette_Reward[3320539]["DeleteItem"][1]["Id"] = 3320539 -- 【库】 3320539 【cnzf库里没有该物品】[属性:]
	tSpecialGiftsRoulette_Reward[3320539]["RewardExpTime"] = {}
	tSpecialGiftsRoulette_Reward[3320539]["RewardExpTime"]["Value"] = 20 -- 分钟经验
	tSpecialGiftsRoulette_Reward[3320539]["RewardExpTime"]["FullIndex"] = "RewardCultivation"
	tSpecialGiftsRoulette_Reward[3320539]["RewardExpTime"]["FullValue"] = 20
	tSpecialGiftsRoulette_Reward[3320539]["RewardEffect"] = {}
	tSpecialGiftsRoulette_Reward[3320539]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpecialGiftsRoulette_Reward[3320539]["RewardEffect"]["Effect"] = "angelwing"


	-- ===30分钟经验气力值可选包
	-- ===索引: 3320540
	-- ===删除:3320540
	-- ===
	tSpecialGiftsRoulette_Reward[3320540] = {}
	tSpecialGiftsRoulette_Reward[3320540]["LogId"] = 10002449
	tSpecialGiftsRoulette_Reward[3320540]["DeleteItem"] = {}
	tSpecialGiftsRoulette_Reward[3320540]["DeleteItem"][1] = {}
	tSpecialGiftsRoulette_Reward[3320540]["DeleteItem"][1]["Id"] = 3320540 -- 【库】 3320540 【cnzf库里没有该物品】[属性:]
	tSpecialGiftsRoulette_Reward[3320540]["RewardExpTime"] = {}
	tSpecialGiftsRoulette_Reward[3320540]["RewardExpTime"]["Value"] = 30 -- 分钟经验
	tSpecialGiftsRoulette_Reward[3320540]["RewardExpTime"]["FullIndex"] = "RewardCultivation"
	tSpecialGiftsRoulette_Reward[3320540]["RewardExpTime"]["FullValue"] = 30
	tSpecialGiftsRoulette_Reward[3320540]["RewardEffect"] = {}
	tSpecialGiftsRoulette_Reward[3320540]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpecialGiftsRoulette_Reward[3320540]["RewardEffect"]["Effect"] = "angelwing"


	-- ===1天祝福时间包
	-- ===索引: 3320541
	-- ===删除:3320541
	tSpecialGiftsRoulette_Reward[3320541] = {}
	tSpecialGiftsRoulette_Reward[3320541]["LogId"] = 10002449
	tSpecialGiftsRoulette_Reward[3320541]["DeleteItem"] = {}
	tSpecialGiftsRoulette_Reward[3320541]["DeleteItem"][1] = {}
	tSpecialGiftsRoulette_Reward[3320541]["DeleteItem"][1]["Id"] = 3320541 -- 【库】 3320541 【cnzf库里没有该物品】[属性:]
	tSpecialGiftsRoulette_Reward[3320541]["RewardBless"] = {}
	tSpecialGiftsRoulette_Reward[3320541]["RewardBless"]["Value"] = 1*24 -- 祝福时间
	tSpecialGiftsRoulette_Reward[3320541]["RewardEffect"] = {}
	tSpecialGiftsRoulette_Reward[3320541]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpecialGiftsRoulette_Reward[3320541]["RewardEffect"]["Effect"] = "angelwing"


	-- ===3天祝福时间包
	-- ===索引: 3320542
	-- ===删除:3320542
	tSpecialGiftsRoulette_Reward[3320542] = {}
	tSpecialGiftsRoulette_Reward[3320542]["LogId"] = 10002449
	tSpecialGiftsRoulette_Reward[3320542]["DeleteItem"] = {}
	tSpecialGiftsRoulette_Reward[3320542]["DeleteItem"][1] = {}
	tSpecialGiftsRoulette_Reward[3320542]["DeleteItem"][1]["Id"] = 3320542 -- 【库】 3320542 【cnzf库里没有该物品】[属性:]
	tSpecialGiftsRoulette_Reward[3320542]["RewardBless"] = {}
	tSpecialGiftsRoulette_Reward[3320542]["RewardBless"]["Value"] = 3*24 -- 祝福时间
	tSpecialGiftsRoulette_Reward[3320542]["RewardEffect"] = {}
	tSpecialGiftsRoulette_Reward[3320542]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpecialGiftsRoulette_Reward[3320542]["RewardEffect"]["Effect"] = "angelwing"


	-- ===7天祝福时间包
	-- ===索引: 3320543
	-- ===删除:3320543
	tSpecialGiftsRoulette_Reward[3320543] = {}
	tSpecialGiftsRoulette_Reward[3320543]["LogId"] = 10002449
	tSpecialGiftsRoulette_Reward[3320543]["DeleteItem"] = {}
	tSpecialGiftsRoulette_Reward[3320543]["DeleteItem"][1] = {}
	tSpecialGiftsRoulette_Reward[3320543]["DeleteItem"][1]["Id"] = 3320543 -- 【库】 3320543 【cnzf库里没有该物品】[属性:]
	tSpecialGiftsRoulette_Reward[3320543]["RewardBless"] = {}
	tSpecialGiftsRoulette_Reward[3320543]["RewardBless"]["Value"] = 7*24 -- 祝福时间
	tSpecialGiftsRoulette_Reward[3320543]["RewardEffect"] = {}
	tSpecialGiftsRoulette_Reward[3320543]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpecialGiftsRoulette_Reward[3320543]["RewardEffect"]["Effect"] = "angelwing"


	-- ===6颗回气丹礼包（赠）
	-- ===索引: 3320544
	-- ===删除:3320544
	tSpecialGiftsRoulette_Reward[3320544] = {}
	tSpecialGiftsRoulette_Reward[3320544]["LogId"] = 10002449
	tSpecialGiftsRoulette_Reward[3320544]["DeleteItem"] = {}
	tSpecialGiftsRoulette_Reward[3320544]["DeleteItem"][1] = {}
	tSpecialGiftsRoulette_Reward[3320544]["DeleteItem"][1]["Id"] = 3320544 -- 【库】 3320544 【cnzf库里没有该物品】[属性:]
	tSpecialGiftsRoulette_Reward[3320544]["RewardItem"] = {}
	tSpecialGiftsRoulette_Reward[3320544]["RewardItem"][1] = {}
	tSpecialGiftsRoulette_Reward[3320544]["RewardItem"][1]["Id"] = 729242 -- 【库】回气丹[属性:0]【表格】6颗回气丹礼包（赠）
	tSpecialGiftsRoulette_Reward[3320544]["RewardItem"][1]["Attr"] = "0 6 3" -- 回气丹(赠)*6
	tSpecialGiftsRoulette_Reward[3320544]["RewardEffect"] = {}
	tSpecialGiftsRoulette_Reward[3320544]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpecialGiftsRoulette_Reward[3320544]["RewardEffect"]["Effect"] = "angelwing"


	-- ===永久1%神佑学院派套装（赠）包
	-- ===索引: 3320545
	-- ===删除:3320545
	tSpecialGiftsRoulette_Reward[3320545] = {}
	tSpecialGiftsRoulette_Reward[3320545]["LogId"] = 10002449
	tSpecialGiftsRoulette_Reward[3320545]["DeleteItem"] = {}
	tSpecialGiftsRoulette_Reward[3320545]["DeleteItem"][1] = {}
	tSpecialGiftsRoulette_Reward[3320545]["DeleteItem"][1]["Id"] = 3320545 -- 【库】 3320545 【cnzf库里没有该物品】[属性:]
	tSpecialGiftsRoulette_Reward[3320545]["RewardItem"] = {}
	tSpecialGiftsRoulette_Reward[3320545]["RewardItem"][1] = {}
	tSpecialGiftsRoulette_Reward[3320545]["RewardItem"][1]["Id"] = 194300 -- 【库】学院派套装[属性:0]【表格】永久1%神佑学院派套装（赠）
	tSpecialGiftsRoulette_Reward[3320545]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑学院派套装(赠)*1
	tSpecialGiftsRoulette_Reward[3320545]["RewardEffect"] = {}
	tSpecialGiftsRoulette_Reward[3320545]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpecialGiftsRoulette_Reward[3320545]["RewardEffect"]["Effect"] = "angelwing"


	-- ===极品+1风雷翅（赠)
	-- ===索引: 3320720
	-- ===删除:3320720
	tSpecialGiftsRoulette_Reward[3320720] = {}
	tSpecialGiftsRoulette_Reward[3320720]["LogId"] = 10002449
	tSpecialGiftsRoulette_Reward[3320720]["DeleteItem"] = {}
	tSpecialGiftsRoulette_Reward[3320720]["DeleteItem"][1] = {}
	tSpecialGiftsRoulette_Reward[3320720]["DeleteItem"][1]["Id"] = 3320720 -- 【库】 3320720 【cnzf库里没有该物品】[属性:]
	tSpecialGiftsRoulette_Reward[3320720]["RewardItem"] = {}
	tSpecialGiftsRoulette_Reward[3320720]["RewardItem"][1] = {}
	tSpecialGiftsRoulette_Reward[3320720]["RewardItem"][1]["Id"] = 204009 -- 【库】风雷翅[属性:0]【表格】极品+1风雷翅（赠)
	tSpecialGiftsRoulette_Reward[3320720]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 1" -- (追加+1)风雷翅(赠)*1
	tSpecialGiftsRoulette_Reward[3320720]["RewardEffect"] = {}
	tSpecialGiftsRoulette_Reward[3320720]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpecialGiftsRoulette_Reward[3320720]["RewardEffect"]["Effect"] = "angelwing"




---------------------------------------------物品逻辑---------------------------------------
function SpecialGiftsRoulette_UseItem(nItemId,nIndex)
	RewardTemplate_UseItem(tSpecialGiftsRoulette_Reward[nItemId][nIndex])
end


-------------------------------------------物品模板------------------------------------
-- tItemFace[3320537] = 931
-- tItemFace[3320538] = 932
-- tItemFace[3320539] = 1263
-- tItemFace[3320540] = 1791


-- tItem[3320537] = tItem[3320537] or {}
-- tItem[3320537]["DialogueText"] =tSpecialGiftsRoulette_Reward_Text[3320537]
-- tItem[3320537]["Text1-1"] = {111}
-- tItem[3320537]["tOption1-1"] = {111,112}
-- tItem[3320537]["OptionFunc111"]="SpecialGiftsRoulette_UseItem</N>3320537</N>1"
-- tItem[3320537]["OptionFunc112"]="SpecialGiftsRoulette_UseItem</N>3320537</N>2"

-- tItem[3320538] = tItem[3320538] or {}
-- tItem[3320538]["DialogueText"] =tSpecialGiftsRoulette_Reward_Text[3320538]
-- tItem[3320538]["Text1-1"] = {111}
-- tItem[3320538]["tOption1-1"] = {111,112}
-- tItem[3320538]["OptionFunc111"]="SpecialGiftsRoulette_UseItem</N>3320538</N>1"
-- tItem[3320538]["OptionFunc112"]="SpecialGiftsRoulette_UseItem</N>3320538</N>2"

-- tItem[3320539] = tItem[3320539] or {}
-- tItem[3320539]["DialogueText"] =tSpecialGiftsRoulette_Reward_Text[3320539]
-- tItem[3320539]["Text1-1"] = {111}
-- tItem[3320539]["tOption1-1"] = {111,112}
-- tItem[3320539]["OptionFunc111"]="SpecialGiftsRoulette_UseItem</N>3320539</N>1"
-- tItem[3320539]["OptionFunc112"]="SpecialGiftsRoulette_UseItem</N>3320539</N>2"

-- tItem[3320540] = tItem[3320540] or {}
-- tItem[3320540]["DialogueText"] =tSpecialGiftsRoulette_Reward_Text[3320540]
-- tItem[3320540]["Text1-1"] = {111}
-- tItem[3320540]["tOption1-1"] = {111,112}
-- tItem[3320540]["OptionFunc111"]="SpecialGiftsRoulette_UseItem</N>3320540</N>1"
-- tItem[3320540]["OptionFunc112"]="SpecialGiftsRoulette_UseItem</N>3320540</N>2"


tItem[3320541] = tItem[3320541] or {}
tItem[3320541]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItem(tSpecialGiftsRoulette_Reward[nItemId])
end

tItem[3320542] = tItem[3320541] or {}
tItem[3320543] = tItem[3320541] or {}
tItem[3320544] = tItem[3320541] or {}
tItem[3320545] = tItem[3320541] or {}
tItem[3320720] = tItem[3320541] or {}

tItem[3320537] = tItem[3320541] or {}
tItem[3320538] = tItem[3320541] or {}
tItem[3320539] = tItem[3320541] or {}
tItem[3320540] = tItem[3320541] or {}