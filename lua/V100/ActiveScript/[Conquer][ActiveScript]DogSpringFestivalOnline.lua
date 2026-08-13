---------------------------------------------------------------------------------------------------
-- Name:				[简体征服][活动脚本]戊戌狗年春节线上促销活动
-- Purpose:			戊戌狗年春节线上促销活动
-- Creator: 			郑鋆
-- Created:			2018/01/19
------------------------------------------------------------------------------------------------------

-- 命名前缀
-- DogSpringFestivalOnline_

local tDogSpringFestivalOnline_Reward = {}
	-- 晶莹星陨石超值包	晶莹星陨石*30、黄色神纹随机包*1
	tDogSpringFestivalOnline_Reward[3307214] = {}
	tDogSpringFestivalOnline_Reward[3307214]["LogId"] = 12000986
	tDogSpringFestivalOnline_Reward[3307214]["DeleteItem"] = {}
	tDogSpringFestivalOnline_Reward[3307214]["DeleteItem"][1] = {}
	tDogSpringFestivalOnline_Reward[3307214]["DeleteItem"][1]["Id"] = 3307214
	tDogSpringFestivalOnline_Reward[3307214]["RewardItem"] = {}
	tDogSpringFestivalOnline_Reward[3307214]["RewardItem"][1] = {}
	tDogSpringFestivalOnline_Reward[3307214]["RewardItem"][1]["Id"] = 3307242
	tDogSpringFestivalOnline_Reward[3307214]["RewardItem"][1]["Attr"] = "0 3 0 2880 1"
	tDogSpringFestivalOnline_Reward[3307214]["RewardItem"][2] = {}
	tDogSpringFestivalOnline_Reward[3307214]["RewardItem"][2]["Id"] = 3306507
	tDogSpringFestivalOnline_Reward[3307214]["RewardItem"][2]["Attr"] = "0 1"
	tDogSpringFestivalOnline_Reward[3307214]["RewardEffect"] = {}
	tDogSpringFestivalOnline_Reward[3307214]["RewardEffect"]["Effect"] = "angelwing"

	-- 明亮星陨石超值包	明亮星陨石*30、黄色神纹碎片随机包*1
	tDogSpringFestivalOnline_Reward[3307216] = {}
	tDogSpringFestivalOnline_Reward[3307216]["LogId"] = 12000986
	tDogSpringFestivalOnline_Reward[3307216]["DeleteItem"] = {}
	tDogSpringFestivalOnline_Reward[3307216]["DeleteItem"][1] = {}
	tDogSpringFestivalOnline_Reward[3307216]["DeleteItem"][1]["Id"] = 3307216
	tDogSpringFestivalOnline_Reward[3307216]["RewardItem"] = {}
	tDogSpringFestivalOnline_Reward[3307216]["RewardItem"][1] = {}
	tDogSpringFestivalOnline_Reward[3307216]["RewardItem"][1]["Id"] = 3307243
	tDogSpringFestivalOnline_Reward[3307216]["RewardItem"][1]["Attr"] = "0 3 0 2880 1"
	tDogSpringFestivalOnline_Reward[3307216]["RewardItem"][2] = {}
	tDogSpringFestivalOnline_Reward[3307216]["RewardItem"][2]["Id"] = 3306367
	tDogSpringFestivalOnline_Reward[3307216]["RewardItem"][2]["Attr"] = "0 1"
	tDogSpringFestivalOnline_Reward[3307216]["RewardEffect"] = {}
	tDogSpringFestivalOnline_Reward[3307216]["RewardEffect"]["Effect"] = "angelwing"

	--璀璨星陨石特惠包 3307220
	tDogSpringFestivalOnline_Reward[3307220] = {}
	tDogSpringFestivalOnline_Reward[3307220]["LogId"] = 12000986
	tDogSpringFestivalOnline_Reward[3307220]["DeleteItem"] = {}
	tDogSpringFestivalOnline_Reward[3307220]["DeleteItem"][1] = {}
	tDogSpringFestivalOnline_Reward[3307220]["DeleteItem"][1]["Id"] = 3307220
	tDogSpringFestivalOnline_Reward[3307220]["RewardItem"] = {}
	tDogSpringFestivalOnline_Reward[3307220]["RewardItem"][1] = {}
	tDogSpringFestivalOnline_Reward[3307220]["RewardItem"][1]["Id"] = 3009003
	tDogSpringFestivalOnline_Reward[3307220]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tDogSpringFestivalOnline_Reward[3307220]["RewardItem"][2] = {}
	tDogSpringFestivalOnline_Reward[3307220]["RewardItem"][2]["Id"] = 3306367
	tDogSpringFestivalOnline_Reward[3307220]["RewardItem"][2]["Attr"] = "0 10"
	tDogSpringFestivalOnline_Reward[3307220]["RewardEffect"]={}
	tDogSpringFestivalOnline_Reward[3307220]["RewardEffect"]["Effect"] = "angelwing"
	
	--金刚坚钻特惠包 3307221
	tDogSpringFestivalOnline_Reward[3307221] = {}
	tDogSpringFestivalOnline_Reward[3307221]["LogId"] = 12000986
	tDogSpringFestivalOnline_Reward[3307221]["DeleteItem"] = {}
	tDogSpringFestivalOnline_Reward[3307221]["DeleteItem"][1] = {}
	tDogSpringFestivalOnline_Reward[3307221]["DeleteItem"][1]["Id"] = 3307221
	tDogSpringFestivalOnline_Reward[3307221]["RewardItem"] = {}
	tDogSpringFestivalOnline_Reward[3307221]["RewardItem"][1] = {}
	tDogSpringFestivalOnline_Reward[3307221]["RewardItem"][1]["Id"] = 1200005
	tDogSpringFestivalOnline_Reward[3307221]["RewardItem"][1]["Attr"] = "0 5"
	tDogSpringFestivalOnline_Reward[3307221]["RewardItem"][2] = {}
	tDogSpringFestivalOnline_Reward[3307221]["RewardItem"][2]["Id"] = 3306507
	tDogSpringFestivalOnline_Reward[3307221]["RewardItem"][2]["Attr"] = "0 1"
	tDogSpringFestivalOnline_Reward[3307221]["RewardEffect"]={}
	tDogSpringFestivalOnline_Reward[3307221]["RewardEffect"]["Effect"] = "angelwing"
		
	-- 清心符超值包
	tDogSpringFestivalOnline_Reward[3307223] = {}
	tDogSpringFestivalOnline_Reward[3307223]["DeleteItem"] = {}
	tDogSpringFestivalOnline_Reward[3307223]["DeleteItem"][1] = {}
	tDogSpringFestivalOnline_Reward[3307223]["DeleteItem"][1]["Id"] = 3307223
	tDogSpringFestivalOnline_Reward[3307223]["RewardItem"]={}
	tDogSpringFestivalOnline_Reward[3307223]["RewardItem"][1]={}
	tDogSpringFestivalOnline_Reward[3307223]["RewardItem"][1]["Id"]= 720128 -- 清心符（赠）*100个
	tDogSpringFestivalOnline_Reward[3307223]["RewardItem"][1]["Attr"]= "0 100 3"
	tDogSpringFestivalOnline_Reward[3307223]["RewardItem"][2]={}
	tDogSpringFestivalOnline_Reward[3307223]["RewardItem"][2]["Id"]= 3306367 -- 黄色神纹碎片随机包*1
	tDogSpringFestivalOnline_Reward[3307223]["RewardItem"][2]["Attr"]= "0 1"
	tDogSpringFestivalOnline_Reward[3307223]["LogId"] = 12000986
	tDogSpringFestivalOnline_Reward[3307223]["RewardEffect"] = {}
	tDogSpringFestivalOnline_Reward[3307223]["RewardEffect"]["Effect"] = "angelwing"

	-- 25000点气力值特惠包
	tDogSpringFestivalOnline_Reward[3307225] = {}
	tDogSpringFestivalOnline_Reward[3307225]["DeleteItem"] = {}
	tDogSpringFestivalOnline_Reward[3307225]["DeleteItem"][1] = {}
	tDogSpringFestivalOnline_Reward[3307225]["DeleteItem"][1]["Id"] = 3307225
	tDogSpringFestivalOnline_Reward[3307225]["RewardStrengthValue"] = {}
	tDogSpringFestivalOnline_Reward[3307225]["RewardStrengthValue"]["Value"] = 25000 -- 25000点气力值
	tDogSpringFestivalOnline_Reward[3307225]["RewardItem"]={}
	tDogSpringFestivalOnline_Reward[3307225]["RewardItem"][1]={}
	tDogSpringFestivalOnline_Reward[3307225]["RewardItem"][1]["Id"]= 3306367 -- 黄色神纹碎片随机包*10
	tDogSpringFestivalOnline_Reward[3307225]["RewardItem"][1]["Attr"]= "0 10"
	tDogSpringFestivalOnline_Reward[3307225]["LogId"] = 12000986
	tDogSpringFestivalOnline_Reward[3307225]["RewardEffect"] = {}
	tDogSpringFestivalOnline_Reward[3307225]["RewardEffect"]["Effect"] = "angelwing"

	-- +6变幻骑宠特惠包
	tDogSpringFestivalOnline_Reward[3307226] = {}
	tDogSpringFestivalOnline_Reward[3307226]["DeleteItem"] = {}
	tDogSpringFestivalOnline_Reward[3307226]["DeleteItem"][1] = {}
	tDogSpringFestivalOnline_Reward[3307226]["DeleteItem"][1]["Id"] = 3307226
	tDogSpringFestivalOnline_Reward[3307226]["RewardItem"]={}
	tDogSpringFestivalOnline_Reward[3307226]["RewardItem"][1]={}
	tDogSpringFestivalOnline_Reward[3307226]["RewardItem"][1]["Id"]= 720049	-- +6变幻骑宠礼包
	tDogSpringFestivalOnline_Reward[3307226]["RewardItem"][1]["Attr"]= "0 1"
	tDogSpringFestivalOnline_Reward[3307226]["RewardItem"][2]={}
	tDogSpringFestivalOnline_Reward[3307226]["RewardItem"][2]["Id"]= 3306367 -- 黄色神纹碎片随机包*10
	tDogSpringFestivalOnline_Reward[3307226]["RewardItem"][2]["Attr"]= "0 10"
	tDogSpringFestivalOnline_Reward[3307226]["LogId"] = 12000986
	tDogSpringFestivalOnline_Reward[3307226]["RewardEffect"] = {}
	tDogSpringFestivalOnline_Reward[3307226]["RewardEffect"]["Effect"] = "angelwing"

	-- 秘制免费修炼丹特惠包
	tDogSpringFestivalOnline_Reward[3307228] = {}
	tDogSpringFestivalOnline_Reward[3307228]["RewardItem"] = {}
	tDogSpringFestivalOnline_Reward[3307228]["RewardItem"][1] = {}
	tDogSpringFestivalOnline_Reward[3307228]["RewardItem"][1]["Id"] = 3306367
	tDogSpringFestivalOnline_Reward[3307228]["RewardItem"][1]["Attr"] = "0 10"
	tDogSpringFestivalOnline_Reward[3307228]["RewardItem"][2] = {}
	tDogSpringFestivalOnline_Reward[3307228]["RewardItem"][2]["Id"] = 3002926
	tDogSpringFestivalOnline_Reward[3307228]["RewardItem"][2]["Attr"] = "0 100"
	tDogSpringFestivalOnline_Reward[3307228]["LogId"] = 12000986
	tDogSpringFestivalOnline_Reward[3307228]["DeleteItem"] = {}
	tDogSpringFestivalOnline_Reward[3307228]["DeleteItem"][1] = {}
	tDogSpringFestivalOnline_Reward[3307228]["DeleteItem"][1]["Id"] = 3307228
	
	-- 免费强炼丹特惠包
	tDogSpringFestivalOnline_Reward[3307229] = {}
	tDogSpringFestivalOnline_Reward[3307229]["RewardItem"] = {}
	tDogSpringFestivalOnline_Reward[3307229]["RewardItem"][1] = {}
	tDogSpringFestivalOnline_Reward[3307229]["RewardItem"][1]["Id"] = 3306367
	tDogSpringFestivalOnline_Reward[3307229]["RewardItem"][1]["Attr"] = "0 1"
	tDogSpringFestivalOnline_Reward[3307229]["RewardItem"][2] = {}
	tDogSpringFestivalOnline_Reward[3307229]["RewardItem"][2]["Id"] = 3003124
	tDogSpringFestivalOnline_Reward[3307229]["RewardItem"][2]["Attr"] = "0 100 3"
	tDogSpringFestivalOnline_Reward[3307229]["LogId"] = 12000986
	tDogSpringFestivalOnline_Reward[3307229]["DeleteItem"] = {}
	tDogSpringFestivalOnline_Reward[3307229]["DeleteItem"][1] = {}
	tDogSpringFestivalOnline_Reward[3307229]["DeleteItem"][1]["Id"] = 3307229
	
	-- 究极通神丹特惠包
	tDogSpringFestivalOnline_Reward[3307230] = {}
	tDogSpringFestivalOnline_Reward[3307230]["RewardItem"] = {}
	tDogSpringFestivalOnline_Reward[3307230]["RewardItem"][1] = {}
	tDogSpringFestivalOnline_Reward[3307230]["RewardItem"][1]["Id"] = 3306367
	tDogSpringFestivalOnline_Reward[3307230]["RewardItem"][1]["Attr"] = "0 1"
	tDogSpringFestivalOnline_Reward[3307230]["RewardItem"][2] = {}
	tDogSpringFestivalOnline_Reward[3307230]["RewardItem"][2]["Id"] = 3003126
	tDogSpringFestivalOnline_Reward[3307230]["RewardItem"][2]["Attr"] = "0 10 3"
	tDogSpringFestivalOnline_Reward[3307230]["LogId"] = 12000986
	tDogSpringFestivalOnline_Reward[3307230]["DeleteItem"] = {}
	tDogSpringFestivalOnline_Reward[3307230]["DeleteItem"][1] = {}
	tDogSpringFestivalOnline_Reward[3307230]["DeleteItem"][1]["Id"] = 3307230
	
	-- 桃源灵玉特惠包
	tDogSpringFestivalOnline_Reward[3307231] = {}
	tDogSpringFestivalOnline_Reward[3307231]["RewardItem"] = {}
	tDogSpringFestivalOnline_Reward[3307231]["RewardItem"][1] = {}
	tDogSpringFestivalOnline_Reward[3307231]["RewardItem"][1]["Id"] = 3306367
	tDogSpringFestivalOnline_Reward[3307231]["RewardItem"][1]["Attr"] = "0 3"
	tDogSpringFestivalOnline_Reward[3307231]["RewardItem"][2] = {}
	tDogSpringFestivalOnline_Reward[3307231]["RewardItem"][2]["Id"] = 711504
	tDogSpringFestivalOnline_Reward[3307231]["RewardItem"][2]["Attr"] = "0 100"
	tDogSpringFestivalOnline_Reward[3307231]["LogId"] = 12000986
	tDogSpringFestivalOnline_Reward[3307231]["DeleteItem"] = {}
	tDogSpringFestivalOnline_Reward[3307231]["DeleteItem"][1] = {}
	tDogSpringFestivalOnline_Reward[3307231]["DeleteItem"][1]["Id"] = 3307231
	
	--超大固化石超值包
	tDogSpringFestivalOnline_Reward[3307232] = {}
	tDogSpringFestivalOnline_Reward[3307232]["RewardItem"] = {}
	tDogSpringFestivalOnline_Reward[3307232]["RewardItem"][1] = {}
	tDogSpringFestivalOnline_Reward[3307232]["RewardItem"][1]["Id"] = 3306507
	tDogSpringFestivalOnline_Reward[3307232]["RewardItem"][1]["Attr"] = "0 1"
	tDogSpringFestivalOnline_Reward[3307232]["RewardItem"][2] = {}
	tDogSpringFestivalOnline_Reward[3307232]["RewardItem"][2]["Id"] = 723695
	tDogSpringFestivalOnline_Reward[3307232]["RewardItem"][2]["Attr"] = "0 1"
	tDogSpringFestivalOnline_Reward[3307232]["LogId"] = 12000986
	tDogSpringFestivalOnline_Reward[3307232]["DeleteItem"] = {}
	tDogSpringFestivalOnline_Reward[3307232]["DeleteItem"][1] = {}
	tDogSpringFestivalOnline_Reward[3307232]["DeleteItem"][1]["Id"] = 3307232
	
	-- 晶莹星陨石精巧包
	tDogSpringFestivalOnline_Reward[3307242] = {}
	tDogSpringFestivalOnline_Reward[3307242]["LogId"] = 12000986
	tDogSpringFestivalOnline_Reward[3307242]["DeleteItem"] = {}
	tDogSpringFestivalOnline_Reward[3307242]["DeleteItem"][1] = {}
	tDogSpringFestivalOnline_Reward[3307242]["DeleteItem"][1]["Id"] = 3307242
	tDogSpringFestivalOnline_Reward[3307242]["RewardItem"] = {}
	tDogSpringFestivalOnline_Reward[3307242]["RewardItem"][1] = {}
	tDogSpringFestivalOnline_Reward[3307242]["RewardItem"][1]["Id"] = 3009002
	tDogSpringFestivalOnline_Reward[3307242]["RewardItem"][1]["Attr"] = "0 10 0 2880 1"
	tDogSpringFestivalOnline_Reward[3307242]["RewardEffect"] = {}
	tDogSpringFestivalOnline_Reward[3307242]["RewardEffect"]["Effect"] = "angelwing"

	-- 明亮星陨石精巧包
	tDogSpringFestivalOnline_Reward[3307243] = {}
	tDogSpringFestivalOnline_Reward[3307243]["LogId"] = 12000986
	tDogSpringFestivalOnline_Reward[3307243]["DeleteItem"] = {}
	tDogSpringFestivalOnline_Reward[3307243]["DeleteItem"][1] = {}
	tDogSpringFestivalOnline_Reward[3307243]["DeleteItem"][1]["Id"] = 3307243
	tDogSpringFestivalOnline_Reward[3307243]["RewardItem"] = {}
	tDogSpringFestivalOnline_Reward[3307243]["RewardItem"][1] = {}
	tDogSpringFestivalOnline_Reward[3307243]["RewardItem"][1]["Id"] = 3009001
	tDogSpringFestivalOnline_Reward[3307243]["RewardItem"][1]["Attr"] = "0 10 0 2880 1"
	tDogSpringFestivalOnline_Reward[3307243]["RewardEffect"] = {}
	tDogSpringFestivalOnline_Reward[3307243]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 明亮星陨石特惠包	明亮星陨石*5
	tDogSpringFestivalOnline_Reward[3307215] = {}
	tDogSpringFestivalOnline_Reward[3307215]["LogId"] = 12000986
	tDogSpringFestivalOnline_Reward[3307215]["DeleteItem"] = {}
	tDogSpringFestivalOnline_Reward[3307215]["DeleteItem"][1] = {}
	tDogSpringFestivalOnline_Reward[3307215]["DeleteItem"][1]["Id"] = 3307215
	tDogSpringFestivalOnline_Reward[3307215]["RewardItem"] = {}
	tDogSpringFestivalOnline_Reward[3307215]["RewardItem"][1] = {}
	tDogSpringFestivalOnline_Reward[3307215]["RewardItem"][1]["Id"] = 3009001
	tDogSpringFestivalOnline_Reward[3307215]["RewardItem"][1]["Attr"] = "0 5 0 2880 1"
	tDogSpringFestivalOnline_Reward[3307215]["RewardEffect"] = {}
	tDogSpringFestivalOnline_Reward[3307215]["RewardEffect"]["Effect"] = "angelwing"

--------------------------------------------------------------------------------------------------------------------------------------------------------------	
-- 物品使用
function DogSpringFestivalOnline_UseItem(nItemId)	
	RewardTemplate_UseItemAndMsg(tDogSpringFestivalOnline_Reward[nItemId])
end

--------------------------------------------------------------------------------------------------------------------------------------------------------------	
tItem[3307214] = tItem[3307214] or {}
tItem[3307214]["Function"] = function(nItemId,sItemName)
	DogSpringFestivalOnline_UseItem(nItemId)
end

tItem[3307216] = tItem[3307214]
tItem[3307220] = tItem[3307214]
tItem[3307221] = tItem[3307214]
tItem[3307223] = tItem[3307214]
tItem[3307225] = tItem[3307214]
tItem[3307226] = tItem[3307214]
tItem[3307228] = tItem[3307214]
tItem[3307229] = tItem[3307214] 
tItem[3307230] = tItem[3307214] 
tItem[3307231] = tItem[3307214] 
tItem[3307232] = tItem[3307214] 
tItem[3307242] = tItem[3307214] 
tItem[3307243] = tItem[3307214] 

tItem[3307215] = tItem[3307214]
