------------------------------------------------------------------------------------
--Name：            190214[英文征服][活动脚本]金币礼包大促销（3.12-4.1）
--Creator:      杨艳
--Created:     2019/02/18
------------------------------------------------------------------------------------
--任务需求：



--命名规范： GoldBagPromotion_

--物品

-- logid: 12001300
-- 10000	0203
------------------------------------------------------------------------------------
	
--奖励	
local tGoldBagPromotion_Reward = {}

-- 3320196,'精致银两红包
-- 3320197,'豪华银两红包
-- 3320198,'至尊银两红包

	tGoldBagPromotion_Reward[3320196] = {}
	tGoldBagPromotion_Reward[3320196]["DeleteItem"] = {}
	tGoldBagPromotion_Reward[3320196]["DeleteItem"][1] = {}
	tGoldBagPromotion_Reward[3320196]["DeleteItem"][1]["Id"] = 3320196
	tGoldBagPromotion_Reward[3320196]["RewardMoney"] = {}
	tGoldBagPromotion_Reward[3320196]["RewardMoney"]["Value"] = 10000000
	tGoldBagPromotion_Reward[3320196]["EmoneyLog"] = "10000	0203	0	0	1	"
	tGoldBagPromotion_Reward[3320196]["LogId"] = 12001300
	tGoldBagPromotion_Reward[3320196]["RewardEffect"] = {}
	tGoldBagPromotion_Reward[3320196]["RewardEffect"]["SzObj"] = "self"
	tGoldBagPromotion_Reward[3320196]["RewardEffect"]["Effect"] = "NEW-flower-r-1"
	
	tGoldBagPromotion_Reward[3320197] = {}
	tGoldBagPromotion_Reward[3320197]["DeleteItem"] = {}
	tGoldBagPromotion_Reward[3320197]["DeleteItem"][1] = {}
	tGoldBagPromotion_Reward[3320197]["DeleteItem"][1]["Id"] = 3320197
	tGoldBagPromotion_Reward[3320197]["RewardMoney"] = {}
	tGoldBagPromotion_Reward[3320197]["RewardMoney"]["Value"] = 50000000
	tGoldBagPromotion_Reward[3320197]["EmoneyLog"] = "10000	0204	0	0	1	"
	tGoldBagPromotion_Reward[3320197]["LogId"] = 12001300
	tGoldBagPromotion_Reward[3320197]["RewardEffect"] = {}
	tGoldBagPromotion_Reward[3320197]["RewardEffect"]["SzObj"] = "self"
	tGoldBagPromotion_Reward[3320197]["RewardEffect"]["Effect"] = "NEW-flower-r-1"
	
	tGoldBagPromotion_Reward[3320198] = {}
	tGoldBagPromotion_Reward[3320198]["DeleteItem"] = {}
	tGoldBagPromotion_Reward[3320198]["DeleteItem"][1] = {}
	tGoldBagPromotion_Reward[3320198]["DeleteItem"][1]["Id"] = 3320198
	tGoldBagPromotion_Reward[3320198]["RewardMoney"] = {}
	tGoldBagPromotion_Reward[3320198]["RewardMoney"]["Value"] = 200000000
	tGoldBagPromotion_Reward[3320198]["EmoneyLog"] = "10000	0205	0	0	1	"
	tGoldBagPromotion_Reward[3320198]["LogId"] = 12001300
	tGoldBagPromotion_Reward[3320198]["RewardEffect"] = {}
	tGoldBagPromotion_Reward[3320198]["RewardEffect"]["SzObj"] = "self"
	tGoldBagPromotion_Reward[3320198]["RewardEffect"]["Effect"] = "NEW-flower-r-1"
	
----------------------------------逻辑部分-------------------------------------------
--打开天石商店
function GoldBagPromotion_OpenShop(nNpcId)
	if CommonFunc_GetBeforeActivityTime(tActivityTime["GoldBagPromotion"]["ActivityTime"]) then 
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end 
	if not Sys_ChkFullTime(tActivityTime["GoldBagPromotion"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end

	User_OpenDialog()

end	


-------------------------- npc部分------------------------
-- (23788,'财神',32,15420
tNpcFace[1542] = 247

tNpcGossip[23788] = tNpcGossip[23788] or DefaultNpc:new{}
tNpcGossip[23788]["OptionHidden"] = 1

--活动时间前
tNpcGossip[23788]["Text1-1"] = {111,112,113}
tNpcGossip[23788]["Text111"] = tGoldBagPromotion_Text[23788]["Text111"]
tNpcGossip[23788]["Text112"] = tGoldBagPromotion_Text[23788]["Text112"]
tNpcGossip[23788]["Text113"] = tGoldBagPromotion_Text[23788]["Text113"]
  
	       
tNpcGossip[23788]["tOption1-1"] = {111}                   
tNpcGossip[23788]["Option111"] = tGoldBagPromotion_Text[23788]["Option111"]
tNpcGossip[23788]["ChkFunc1-1"] = function()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["GoldBagPromotion"]["ActivityTime"])
end

--活动时间中
tNpcGossip[23788]["Text1-2"] = {121,122,123}
tNpcGossip[23788]["Text121"] = tGoldBagPromotion_Text[23788]["Text121"]
tNpcGossip[23788]["Text122"] = tGoldBagPromotion_Text[23788]["Text122"]
tNpcGossip[23788]["Text123"] = tGoldBagPromotion_Text[23788]["Text123"]

tNpcGossip[23788]["tOption1-2"] = {121,122}
tNpcGossip[23788]["Option121"] = tGoldBagPromotion_Text[23788]["Option121"] 
           
tNpcGossip[23788]["Option122"] = tGoldBagPromotion_Text[23788]["Option122"]
           
tNpcGossip[23788]["OptionFunc121"] = "GoldBagPromotion_OpenShop</N>23788"

            
tNpcGossip[23788]["ChkFunc1-2"] = function()
	return Sys_ChkFullTime(tActivityTime["GoldBagPromotion"]["ActivityTime"]) 
end

--活动时间后
tNpcGossip[23788]["Text1-3"] = {131}
tNpcGossip[23788]["Text131"] = tGoldBagPromotion_Text[23788]["Text131"]

           
tNpcGossip[23788]["tOption1-3"] = {131}
tNpcGossip[23788]["Option131"] = tGoldBagPromotion_Text[23788]["Option131"]
tNpcGossip[23788]["ChkFunc1-3"] = function()
	return not Sys_ChkFullTime(tActivityTime["GoldBagPromotion"]["ActivityTime"])
end



----------------------------------物品部分---------------------------------------------
-- tProbabil_Test["MonsterDrop"] = {}
-- tProbabil_Test["MonsterDrop"]["Table"] = tDoubleTwelve2018ProBags_RunReward
-- tProbabil_Test["MonsterDrop"]["Index"] = {3311828,3311829}
-- tProbabil_Test["MonsterDrop"]["Times"] = 100000
-- tProbabil_Test["MonsterDrop"]["LogName"] = "[Conquer][ActiveScript]DoubleTwelve2018ProBags.log"
-- /callluafunc </F>Probabil_Main</S>MonsterDrop

-- 3320196,'精致银两红包
-- 3320197,'豪华银两红包
-- 3320198,'至尊银两红包

tItem[3320196] = tItem[3320196] or {}
tItem[3320196]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tGoldBagPromotion_Reward[nItemId])	
end

tItem[3320197] = tItem[3320196] or {}
tItem[3320198] = tItem[3320196] or {}



