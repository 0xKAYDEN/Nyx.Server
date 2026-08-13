------------------------------------------------------------------------------------
--Name：            190327[简体征服][活动脚本]熔炼炉优化版本上线相关修改
--Creator:      叶方琪
--Created:     2019/03/27
------------------------------------------------------------------------------------
--任务需求：

------------------------------------------------------------------------------------
-- 前缀
--SmeltingFurnaceOptimization

--掩码 背包信 记录上线领取
--192-76 
--192-83
--logid 12001342

------------------------------------------------------------------------------------


----------------------------------表配置部分--------------------------------------------
local tSmeltingFurnaceOptimization_Reward = {}
	-- ===全新稀有神纹福利包
	-- ===索引: 3320804,1
	-- ===删除: 3320804,1
	tSmeltingFurnaceOptimization_Reward[3320804] = {}
	tSmeltingFurnaceOptimization_Reward[3320804][1] = {}
	tSmeltingFurnaceOptimization_Reward[3320804][1]["LogId"] = 12001342
	tSmeltingFurnaceOptimization_Reward[3320804][1]["DeleteItem"] = {}
	tSmeltingFurnaceOptimization_Reward[3320804][1]["DeleteItem"][1] = {}
	tSmeltingFurnaceOptimization_Reward[3320804][1]["DeleteItem"][1]["Id"] = 3320804 -- 【库】全新稀有神纹福利包[属性:9]
	tSmeltingFurnaceOptimization_Reward[3320804][1]["RewardItem"] = {}
	tSmeltingFurnaceOptimization_Reward[3320804][1]["RewardItem"][1] = {}
	tSmeltingFurnaceOptimization_Reward[3320804][1]["RewardItem"][1]["Id"] = 4032901 -- 【库】 4032901 【cnzf库里没有该物品】[属性:]【表格】百发百中（赠）神纹
	tSmeltingFurnaceOptimization_Reward[3320804][1]["RewardItem"][1]["Attr"] = "0 1 3" --  4032901 【cnzf库里没有该物品】(赠)*1
	tSmeltingFurnaceOptimization_Reward[3320804][1]["RewardItem"][2] = {}
	tSmeltingFurnaceOptimization_Reward[3320804][1]["RewardItem"][2]["Id"] = 4011401 -- 【库】连环风暴）--英文修改为不屈印记（赠）--fwl
	tSmeltingFurnaceOptimization_Reward[3320804][1]["RewardItem"][2]["Attr"] = "0 1 3" -- 连环风暴(赠)*1
	
	-- ===新神纹福利包
	-- ===索引: 3320831
	-- ===删除: 3320831,1
	-- ===
	tSmeltingFurnaceOptimization_Reward[3320831] = {}
	tSmeltingFurnaceOptimization_Reward[3320831]["LogId"] = 12001342
	tSmeltingFurnaceOptimization_Reward[3320831]["DeleteItem"] = {}
	tSmeltingFurnaceOptimization_Reward[3320831]["DeleteItem"][1] = {}
	tSmeltingFurnaceOptimization_Reward[3320831]["DeleteItem"][1]["Id"] = 3320831 -- 【库】新神纹福利包[属性:9]
	tSmeltingFurnaceOptimization_Reward[3320831]["RewardItem"] = {}
	tSmeltingFurnaceOptimization_Reward[3320831]["RewardItem"][1] = {}
	tSmeltingFurnaceOptimization_Reward[3320831]["RewardItem"][1]["Id"] = 4011401 -- 【库】 4011401 【cnzf库里没有该物品】[属性:]【表格】不屈印记（赠）
	tSmeltingFurnaceOptimization_Reward[3320831]["RewardItem"][1]["Attr"] = "0 1 3" --  4011401 【cnzf库里没有该物品】(赠)*1
	tSmeltingFurnaceOptimization_Reward[3320831]["RewardItem"][2] = {}
	tSmeltingFurnaceOptimization_Reward[3320831]["RewardItem"][2]["Id"] = 4033601 -- 【库】狂暴净化(+1)[属性:8]【表格】赠品 狂暴净化(+1)
	tSmeltingFurnaceOptimization_Reward[3320831]["RewardItem"][2]["Attr"] = "0 1 3" -- 狂暴净化(+1)(赠)*1


----------------------------------逻辑部分---------------------------------------------

--全新稀有神纹福利包
function SmeltingFurnaceOptimization_UsePack(nItemId)
	RewardTemplate_UseItemAndMsg(tSmeltingFurnaceOptimization_Reward[nItemId][1])
end

---------------------------------物品部分---------------------------------------------
tItemFace[3320804] = 2159
tItem[3320804] = tItem[3320804] or {}
tItem[3320804]["DialogueText"] = tSmeltingFurnaceOptimization_Text[3320804]
tItem[3320804]["Text1-1"] ={111,112,113,114,115,116,117,118,119,1110,1111,1112,1113,1114}
tItem[3320804]["tOption1-1"] = {111,112}
tItem[3320804]["OptionFunc111"] ="SmeltingFurnaceOptimization_UsePack</N>3320804"

tItem[3320831] = tItem[3320831] or {}
tItem[3320831]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tSmeltingFurnaceOptimization_Reward[nItemId])
end
