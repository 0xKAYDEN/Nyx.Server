------------------------------------------------------------------------------------
--Name：            191113[英文征服][活动脚本]12月新服专属金币促销（12.17-长期）
--Creator:      冯子鑫
--Created:     2019/11/13
------------------------------------------------------------------------------------
--任务需求：
-- 在双龙城市场明显位置增加一个NPC，出售金币包


--前缀 GoldSalesPromotion_
-- logid: 12001740
-- 500W金币包 3326971
-- 1亿金币包 3326972
-- 10亿金币包 3326973
-- 41623 = V100\ActiveScript\[Conquer][ActiveScript]GoldSalesPromotion.lua
-- 41623 = V100\活动脚本\[征服][活动脚本]12月新服专属金币促销（12.17-长期）.lua



----------------------------------表配置部分--------------------------------------------

local tGoldSalesPromotion_Data = {}
	-- ===500W金币包
	-- ===索引: tGoldSalesPromotion_Data["Reward"][3326971]
	-- ===删除: 3326971,1
	tGoldSalesPromotion_Data["Reward"] = {}
	tGoldSalesPromotion_Data["Reward"][3326971] = {}
	tGoldSalesPromotion_Data["Reward"][3326971]["LogId"] = 12001740
	tGoldSalesPromotion_Data["Reward"][3326971]["DeleteItem"] = {}
	tGoldSalesPromotion_Data["Reward"][3326971]["DeleteItem"][1] = {}
	tGoldSalesPromotion_Data["Reward"][3326971]["DeleteItem"][1]["Id"] = 3326971 -- 【库】5KKSilverBag[属性:8]
	tGoldSalesPromotion_Data["Reward"][3326971]["RewardMoney"] = {}
	tGoldSalesPromotion_Data["Reward"][3326971]["RewardMoney"]["Value"] = 5000000 -- 金币, 【需求】500W金币
	tGoldSalesPromotion_Data["Reward"][3326971]["RewardEffect"] = {}
	tGoldSalesPromotion_Data["Reward"][3326971]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGoldSalesPromotion_Data["Reward"][3326971]["RewardEffect"]["Effect"] = "angelwing"
	tGoldSalesPromotion_Data["Reward"][3326971]["Gold"] = true


	tGoldSalesPromotion_Data["Reward"][3326972] = {}
	-- ===1亿金币包
	-- ===索引: tGoldSalesPromotion_Data["Reward"][3326972]
	-- ===删除: 3326972,1
	tGoldSalesPromotion_Data["Reward"][3326972]["LogId"] = 12001740
	tGoldSalesPromotion_Data["Reward"][3326972]["DeleteItem"] = {}
	tGoldSalesPromotion_Data["Reward"][3326972]["DeleteItem"][1] = {}
	tGoldSalesPromotion_Data["Reward"][3326972]["DeleteItem"][1]["Id"] = 3326972 -- 【库】100KKSilverBag[属性:8]
	tGoldSalesPromotion_Data["Reward"][3326972]["RewardMoney"] = {}
	tGoldSalesPromotion_Data["Reward"][3326972]["RewardMoney"]["Value"] = 100000000 -- 金币, 【需求】1亿金币
	tGoldSalesPromotion_Data["Reward"][3326972]["RewardEffect"] = {}
	tGoldSalesPromotion_Data["Reward"][3326972]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGoldSalesPromotion_Data["Reward"][3326972]["RewardEffect"]["Effect"] = "angelwing"
	tGoldSalesPromotion_Data["Reward"][3326972]["Gold"] = true


	tGoldSalesPromotion_Data["Reward"][3326973] = {}
	-- ===10亿金币包
	-- ===索引: tGoldSalesPromotion_Data["Reward"][3326973]
	-- ===删除: 3326973,1
	tGoldSalesPromotion_Data["Reward"][3326973]["LogId"] = 12001740
	tGoldSalesPromotion_Data["Reward"][3326973]["DeleteItem"] = {}
	tGoldSalesPromotion_Data["Reward"][3326973]["DeleteItem"][1] = {}
	tGoldSalesPromotion_Data["Reward"][3326973]["DeleteItem"][1]["Id"] = 3326973 -- 【库】1KKKSilverBag[属性:8]
	tGoldSalesPromotion_Data["Reward"][3326973]["RewardMoney"] = {}
	tGoldSalesPromotion_Data["Reward"][3326973]["RewardMoney"]["Value"] = 1000000000 -- 金币, 【需求】10亿金币
	tGoldSalesPromotion_Data["Reward"][3326973]["RewardEffect"] = {}
	tGoldSalesPromotion_Data["Reward"][3326973]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGoldSalesPromotion_Data["Reward"][3326973]["RewardEffect"]["Effect"] = "angelwing"
	tGoldSalesPromotion_Data["Reward"][3326973]["Gold"] = true
	
	
	
----------------------物品部分-----------------------------


tItem[3326971] = tItem[3326971] or {}
tItem[3326971]["Function"] = function(nItemId,sItemName)
	local nUserId = Get_UserId()
	local bJudge = TermsOfUse_Main(nItemId,tGoldSalesPromotion_Data["Reward"][nItemId])
	
	if not bJudge then
		return
	end
	
	
	RewardTemplate_UseItemAndMsg(tGoldSalesPromotion_Data["Reward"][nItemId],nUserId,bJudge)
end
tItem[3326972] = tItem[3326971]
tItem[3326973] = tItem[3326971]