------------------------------------------------------------------------------------
--Name：           171009[英文征服][活动脚本]转职圣殿礼包及action制作
--Creator:      杨艳
--Created:     2017/10/09
------------------------------------------------------------------------------------
-- #任务需求:
-- 英文征服转职圣殿礼包及action制作

-- 更新时间：
-- 2017年10月19日（周四）例行维护

-- 任务概述：
-- 制作转职圣殿礼包及发奖action，具体详见附件。

--奖励内容
-- 大圣魔铠 189685 （赠品，神佑1%，时效30天）	新制作	1	直接发	赠	激活后30天时效
-- 25000气力	新制作	1	直接发	赠	永久
-- 晶莹星陨石*20	3009002	20	直接发	不可交易	两天内激活有效
-- 清心符*40	720128	40	直接发	赠，不能兑换天石	永久
-- 强练丹*100	3003124	100	直接发	赠	永久
-- 大爆丹*20	3003126	20	直接发	赠	永久
-- 强效护心丹  *50	3002029	50	直接发	赠	永久
-- 武器外套可选包*2（赠，时效30天）	3005833	2	直接发	赠	激活后30天时效
-- 转装备的道具凭证*4 3305644	新制作	4	直接发	赠	永久

------------------------------------------------------------------------------------
--命名前缀
--ChangeJobsGift_
------------------------------------------------------------------------------------
--转职大礼包
local tChangeJobsGift_GiftType = {}
	-- 3305643 转职大礼包
	tChangeJobsGift_GiftType[3305643] = {}
	tChangeJobsGift_GiftType[3305643]["Log"] = "0,0,3305643,1,12000895,2,189685[12][3009002][720128][3003124][3003126][3002030][3306725][3305644],1[25000][20][40][100][20][50][2][4]"
	
	tChangeJobsGift_GiftType[3305643]["DeleteItem"] = {}
	tChangeJobsGift_GiftType[3305643]["DeleteItem"][1] = {}
	tChangeJobsGift_GiftType[3305643]["DeleteItem"][1]["Id"] = 3305643
   
	tChangeJobsGift_GiftType[3305643]["RewardItem"] = {}
	tChangeJobsGift_GiftType[3305643]["RewardItem"][1] = {}
	tChangeJobsGift_GiftType[3305643]["RewardItem"][1]["Id"] = 189685
	tChangeJobsGift_GiftType[3305643]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
   
	tChangeJobsGift_GiftType[3305643]["RewardItem"][2] = {}
	tChangeJobsGift_GiftType[3305643]["RewardItem"][2]["Id"] = 720128
	tChangeJobsGift_GiftType[3305643]["RewardItem"][2]["Attr"] = "0 40 3"

	tChangeJobsGift_GiftType[3305643]["RewardItem"][3] = {}
	tChangeJobsGift_GiftType[3305643]["RewardItem"][3]["Id"] = 3009002
	tChangeJobsGift_GiftType[3305643]["RewardItem"][3]["Attr"] = "0 20 0 2880 1"
	
	tChangeJobsGift_GiftType[3305643]["RewardItem"][4] = {}
	tChangeJobsGift_GiftType[3305643]["RewardItem"][4]["Id"] = 3003124
	tChangeJobsGift_GiftType[3305643]["RewardItem"][4]["Attr"] = "0 100 3"
	
	tChangeJobsGift_GiftType[3305643]["RewardItem"][5] = {}
	tChangeJobsGift_GiftType[3305643]["RewardItem"][5]["Id"] = 3003126
	tChangeJobsGift_GiftType[3305643]["RewardItem"][5]["Attr"] = "0 20 3"
	
	tChangeJobsGift_GiftType[3305643]["RewardItem"][6] = {}
	tChangeJobsGift_GiftType[3305643]["RewardItem"][6]["Id"] = 3002030
	tChangeJobsGift_GiftType[3305643]["RewardItem"][6]["Attr"] = "0 50"
	
	tChangeJobsGift_GiftType[3305643]["RewardItem"][7] = {}
	tChangeJobsGift_GiftType[3305643]["RewardItem"][7]["Id"] = 3306725 --改成新制作武器可选包
	tChangeJobsGift_GiftType[3305643]["RewardItem"][7]["Attr"] = "0 2 3 43200 1"
	
	tChangeJobsGift_GiftType[3305643]["RewardItem"][8] = {}
	tChangeJobsGift_GiftType[3305643]["RewardItem"][8]["Id"] = 3305644
	tChangeJobsGift_GiftType[3305643]["RewardItem"][8]["Attr"] = "0 4 3"
	
	
	--给力气值
	tChangeJobsGift_GiftType[3305643]["RewardStrengthValue"] = {}
	tChangeJobsGift_GiftType[3305643]["RewardStrengthValue"]["Value"] = 25000
    



-- 武器外套包可选
	--短武1 360149
	tChangeJobsGift_GiftType[360149] = {}
	tChangeJobsGift_GiftType[360149]["Log"] = "0,0,3306725,1,12000895,2,360149,1"
	tChangeJobsGift_GiftType[360149]["DeleteItem"] = {}
	tChangeJobsGift_GiftType[360149]["DeleteItem"][1] = {}
	tChangeJobsGift_GiftType[360149]["DeleteItem"][1]["Id"] = 3306725
	
	tChangeJobsGift_GiftType[360149]["RewardItem"] = {}
	tChangeJobsGift_GiftType[360149]["RewardItem"][1] = {}
	tChangeJobsGift_GiftType[360149]["RewardItem"][1]["Id"] = 360149
	tChangeJobsGift_GiftType[360149]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	
	-- 短武2-360004
	tChangeJobsGift_GiftType[350079] = {}
	tChangeJobsGift_GiftType[350079]["Log"] = "0,0,3306725,1,12000895,2,350079,1"
	tChangeJobsGift_GiftType[350079]["DeleteItem"] = {}
	tChangeJobsGift_GiftType[350079]["DeleteItem"][1] = {}
	tChangeJobsGift_GiftType[350079]["DeleteItem"][1]["Id"] = 3306725
	                             
	tChangeJobsGift_GiftType[350079]["RewardItem"] = {}
	tChangeJobsGift_GiftType[350079]["RewardItem"][1] = {}
	tChangeJobsGift_GiftType[350079]["RewardItem"][1]["Id"] = 350079
	tChangeJobsGift_GiftType[350079]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	
	

 
---------------------------------逻辑部分-------------------------------------------

function ChangeJobsGift_Option(nItemId)
	RewardTemplate_UseItemAndMsg(tChangeJobsGift_GiftType[nItemId])
end 

---------------------------------物品部分---------------------------------------------
--------物品无对白模板
tItem[3305643] = tItem[3305643] or {}
tItem[3305643]["Function"] = function(nItemId)
	RewardTemplate_UseItemAndMsg(tChangeJobsGift_GiftType[nItemId])
end	



-- 可选精装武器外套包 3306166  
tItem[3306725] = tItem[3306725] or {}
tItem[3306725]["Text1-1"] = {111}
tItem[3306725]["Text111"] = tChangeJobsGift_Text[3306725]["Text111"]
tItem[3306725]["tOption1-1"] = {111, 112}
tItem[3306725]["Option111"] = tChangeJobsGift_Text[3306725]["Option111"]
tItem[3306725]["OptionFunc111"] = "ChangeJobsGift_Option</N>360149"
tItem[3306725]["Option112"] = tChangeJobsGift_Text[3306725]["Option112"]
tItem[3306725]["OptionFunc112"] = "ChangeJobsGift_Option</N>350079"














