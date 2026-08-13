------------------------------------------------------------------------------------
--Name：            171106[英文征服][活动脚本]12月圣诞充值礼包及发奖action制作
--Creator:      杨艳
--Created:     2017/11/06
------------------------------------------------------------------------------------
--命名规范  DecChristmasPackge_

--logid 12000932
-------------------------------------------------------------------------------------
local tDecChristmasPackge_Reward = {}

    --圣诞气力狂欢包 3306475
	tDecChristmasPackge_Reward[3306475] = {}
	tDecChristmasPackge_Reward[3306475]["ItemChanceSum"] = 10000

	--35% 800力气值
	tDecChristmasPackge_Reward[3306475][1] = {}
	tDecChristmasPackge_Reward[3306475][1]["RandomItemChanceType"] = 2
	tDecChristmasPackge_Reward[3306475][1]["ItemChance"] = 3500
	
	tDecChristmasPackge_Reward[3306475][1]["RewardStrengthValue"] = {}
    tDecChristmasPackge_Reward[3306475][1]["RewardStrengthValue"]["Value"] = 800
	tDecChristmasPackge_Reward[3306475][1]["Log"] = "0,0,3306475,1,12000932,2,12,800"
	
	--45% 1500力气值
	tDecChristmasPackge_Reward[3306475][2] = {}
	tDecChristmasPackge_Reward[3306475][2]["RandomItemChanceType"] = 2
	tDecChristmasPackge_Reward[3306475][2]["ItemChance"] = 4500
	
	tDecChristmasPackge_Reward[3306475][2]["RewardStrengthValue"] = {}
    tDecChristmasPackge_Reward[3306475][2]["RewardStrengthValue"]["Value"] = 1500
	tDecChristmasPackge_Reward[3306475][2]["Log"] = "0,0,3306475,1,12000932,2,12,1500"
	
	--20% 2000力气值
	tDecChristmasPackge_Reward[3306475][3] = {}
	tDecChristmasPackge_Reward[3306475][3]["RandomItemChanceType"] = 2
	tDecChristmasPackge_Reward[3306475][3]["ItemChance"] = 2000
	
	tDecChristmasPackge_Reward[3306475][3]["RewardStrengthValue"] = {}
    tDecChristmasPackge_Reward[3306475][3]["RewardStrengthValue"]["Value"] = 2000
	tDecChristmasPackge_Reward[3306475][3]["Log"] = "0,0,3306475,1,12000932,2,12,2000"

	-- 圣诞星陨石狂欢包    3306476
	tDecChristmasPackge_Reward[3306476] = {}
	tDecChristmasPackge_Reward[3306476]["ItemChanceSum"] = 10000
	
	--35% 明亮星陨石*2
	tDecChristmasPackge_Reward[3306476][1] = {}
	tDecChristmasPackge_Reward[3306476][1]["RandomItemChanceType"] = 2
	tDecChristmasPackge_Reward[3306476][1]["ItemChance"] = 3500

	tDecChristmasPackge_Reward[3306476][1]["RewardItem"] = {}
	tDecChristmasPackge_Reward[3306476][1]["RewardItem"][1] = {}
	tDecChristmasPackge_Reward[3306476][1]["RewardItem"][1]["Id"] = 3009001
	tDecChristmasPackge_Reward[3306476][1]["RewardItem"][1]["Attr"] = "0 2 0 2880 1"
	tDecChristmasPackge_Reward[3306476][1]["Log"] = "0,0,3306476,1,12000932,2,3009001,2"
	
	--45% 明亮星陨石*4
	tDecChristmasPackge_Reward[3306476][2] = {}
	tDecChristmasPackge_Reward[3306476][2]["RandomItemChanceType"] = 2
	tDecChristmasPackge_Reward[3306476][2]["ItemChance"] = 4500
	
	tDecChristmasPackge_Reward[3306476][2]["RewardItem"] = {}
	tDecChristmasPackge_Reward[3306476][2]["RewardItem"][1] = {}
	tDecChristmasPackge_Reward[3306476][2]["RewardItem"][1]["Id"] = 3009001
	tDecChristmasPackge_Reward[3306476][2]["RewardItem"][1]["Attr"] = "0 4 0 2880 1"
	tDecChristmasPackge_Reward[3306476][2]["Log"] = "0,0,3306476,1,12000932,2,3009001,4"
	
	--20% 明亮星陨石*8
	tDecChristmasPackge_Reward[3306476][3] = {}
	tDecChristmasPackge_Reward[3306476][3]["RandomItemChanceType"] = 2
	tDecChristmasPackge_Reward[3306476][3]["ItemChance"] = 2000
	
	tDecChristmasPackge_Reward[3306476][3]["RewardItem"] = {}
	tDecChristmasPackge_Reward[3306476][3]["RewardItem"][1] = {}
	tDecChristmasPackge_Reward[3306476][3]["RewardItem"][1]["Id"] = 3009001
	tDecChristmasPackge_Reward[3306476][3]["RewardItem"][1]["Attr"] = "0 8 0 2880 1"
	tDecChristmasPackge_Reward[3306476][3]["Log"] = "0,0,3306476,1,12000932,2,3009001,8"	
	
	
	-- 圣诞赤炼石狂欢包    3306477
	tDecChristmasPackge_Reward[3306477] = {}
	tDecChristmasPackge_Reward[3306477]["ItemChanceSum"] = 10000
	
	--35% +3赤练石
	tDecChristmasPackge_Reward[3306477][1] = {}
	tDecChristmasPackge_Reward[3306477][1]["RandomItemChanceType"] = 2
	tDecChristmasPackge_Reward[3306477][1]["ItemChance"] = 3500
		
	tDecChristmasPackge_Reward[3306477][1]["RewardItem"] = {}
	tDecChristmasPackge_Reward[3306477][1]["RewardItem"][1] = {}
	tDecChristmasPackge_Reward[3306477][1]["RewardItem"][1]["Id"] = 730003
	tDecChristmasPackge_Reward[3306477][1]["RewardItem"][1]["Attr"] = "0 1 0"
	tDecChristmasPackge_Reward[3306477][1]["Log"] = "0,0,3306477,1,12000932,2,730003,1"
	
	--45% +3赤练石*2
	tDecChristmasPackge_Reward[3306477][2] = {}
	tDecChristmasPackge_Reward[3306477][2]["RandomItemChanceType"] = 2
	tDecChristmasPackge_Reward[3306477][2]["ItemChance"] = 4500
		
	tDecChristmasPackge_Reward[3306477][2]["RewardItem"] = {}
	tDecChristmasPackge_Reward[3306477][2]["RewardItem"][1] = {}
	tDecChristmasPackge_Reward[3306477][2]["RewardItem"][1]["Id"] = 730003
	tDecChristmasPackge_Reward[3306477][2]["RewardItem"][1]["Attr"] = "0 2 0"
	tDecChristmasPackge_Reward[3306477][2]["Log"] = "0,0,3306477,1,12000932,2,730003,2"
	
	--20% +4赤练石
	tDecChristmasPackge_Reward[3306477][3] = {}
	tDecChristmasPackge_Reward[3306477][3]["RandomItemChanceType"] = 2
	tDecChristmasPackge_Reward[3306477][3]["ItemChance"] = 2000
	
	tDecChristmasPackge_Reward[3306477][3]["RewardItem"] = {}
	tDecChristmasPackge_Reward[3306477][3]["RewardItem"][1] = {}
	tDecChristmasPackge_Reward[3306477][3]["RewardItem"][1]["Id"] = 730004
	tDecChristmasPackge_Reward[3306477][3]["RewardItem"][1]["Attr"] = "0 1 0"
	tDecChristmasPackge_Reward[3306477][3]["Log"] = "0,0,3306477,1,12000932,2,730004,1"	
	
	
    -- 圣诞赠点狂欢包	     3306478
	tDecChristmasPackge_Reward[3306478] = {}
	tDecChristmasPackge_Reward[3306478]["ItemChanceSum"] = 10000
	
	--45% 300赠点
	tDecChristmasPackge_Reward[3306478][1] = {}
	tDecChristmasPackge_Reward[3306478][1]["RandomItemChanceType"] = 2
	tDecChristmasPackge_Reward[3306478][1]["ItemChance"] = 4500
	
	tDecChristmasPackge_Reward[3306478][1]["RewardEMoneyMono"] = {}
	tDecChristmasPackge_Reward[3306478][1]["RewardEMoneyMono"]["Value"] = 300
	tDecChristmasPackge_Reward[3306478][1]["Log"] = "0,0,3306478,1,12000932,2,3,300"
	
	--45% 500赠点
	tDecChristmasPackge_Reward[3306478][2] = {}
	tDecChristmasPackge_Reward[3306478][2]["RandomItemChanceType"] = 2
	tDecChristmasPackge_Reward[3306478][2]["ItemChance"] = 4500
	
	tDecChristmasPackge_Reward[3306478][2]["RewardEMoneyMono"] = {}
	tDecChristmasPackge_Reward[3306478][2]["RewardEMoneyMono"]["Value"] = 500
	tDecChristmasPackge_Reward[3306478][2]["Log"] = "0,0,3306478,1,12000932,2,3,500"
	
	--10% 1000赠点
	tDecChristmasPackge_Reward[3306478][3] = {}
	tDecChristmasPackge_Reward[3306478][3]["RandomItemChanceType"] = 2
	tDecChristmasPackge_Reward[3306478][3]["ItemChance"] = 1000
	
	tDecChristmasPackge_Reward[3306478][3]["RewardEMoneyMono"] = {}
	tDecChristmasPackge_Reward[3306478][3]["RewardEMoneyMono"]["Value"] = 1000
	tDecChristmasPackge_Reward[3306478][3]["Log"] = "0,0,3306478,1,12000932,2,3,1000"	
	
	-- 圣诞天石狂欢包	     3306479
	tDecChristmasPackge_Reward[3306479] = {}
	tDecChristmasPackge_Reward[3306479]["ItemChanceSum"] = 10000
	
	--45% 100天石
	tDecChristmasPackge_Reward[3306479][1] = {}
	tDecChristmasPackge_Reward[3306479][1]["RandomItemChanceType"] = 2
	tDecChristmasPackge_Reward[3306479][1]["ItemChance"] = 4500
	
	tDecChristmasPackge_Reward[3306479][1]["RewardEMoney"] = {}
	tDecChristmasPackge_Reward[3306479][1]["RewardEMoney"]["Value"] = 100
	tDecChristmasPackge_Reward[3306479][1]["Log"] = "0,0,3306479,1,12000932,2,2,100"
	
	--45% 150天石
	tDecChristmasPackge_Reward[3306479][2] = {}
	tDecChristmasPackge_Reward[3306479][2]["RandomItemChanceType"] = 2
	tDecChristmasPackge_Reward[3306479][2]["ItemChance"] = 4500
	
	tDecChristmasPackge_Reward[3306479][2]["RewardEMoney"] = {}
	tDecChristmasPackge_Reward[3306479][2]["RewardEMoney"]["Value"] = 150
	tDecChristmasPackge_Reward[3306479][2]["Log"] = "0,0,3306479,1,12000932,2,2,150"
	
	--10% 200天石
	tDecChristmasPackge_Reward[3306479][3] = {}
	tDecChristmasPackge_Reward[3306479][3]["RandomItemChanceType"] = 2
	tDecChristmasPackge_Reward[3306479][3]["ItemChance"] = 1000
		
	tDecChristmasPackge_Reward[3306479][3]["RewardEMoney"] = {}
	tDecChristmasPackge_Reward[3306479][3]["RewardEMoney"]["Value"] = 200
	tDecChristmasPackge_Reward[3306479][3]["Log"] = "0,0,3306479,1,12000932,2,2,200"		
	
	-- 圣诞幸运大礼盒	     3306480
	tDecChristmasPackge_Reward[3306480] = {}
	tDecChristmasPackge_Reward[3306480]["ItemChanceSum"] = 10000
	
	--35% 小固化石
	tDecChristmasPackge_Reward[3306480][1] = {}
	tDecChristmasPackge_Reward[3306480][1]["RandomItemChanceType"] = 2
	tDecChristmasPackge_Reward[3306480][1]["ItemChance"] = 3500
	
	tDecChristmasPackge_Reward[3306480][1]["RewardItem"] = {}
	tDecChristmasPackge_Reward[3306480][1]["RewardItem"][1] = {}
	tDecChristmasPackge_Reward[3306480][1]["RewardItem"][1]["Id"] = 723694
	tDecChristmasPackge_Reward[3306480][1]["RewardItem"][1]["Attr"] = "0 1 0"
	tDecChristmasPackge_Reward[3306480][1]["Log"] = "0,0,3306480,1,12000932,2,723694,1"	
	
	--20% 300天石
	tDecChristmasPackge_Reward[3306480][2] = {}
	tDecChristmasPackge_Reward[3306480][2]["RandomItemChanceType"] = 2
	tDecChristmasPackge_Reward[3306480][2]["ItemChance"] = 2000
	
	tDecChristmasPackge_Reward[3306480][2]["RewardEMoney"] = {}
	tDecChristmasPackge_Reward[3306480][2]["RewardEMoney"]["Value"] = 300
	tDecChristmasPackge_Reward[3306480][2]["Log"] = "0,0,3306480,1,12000932,2,2,300"	
	
	--45% 小抽奖劵礼包*10
	tDecChristmasPackge_Reward[3306480][3] = {}
	tDecChristmasPackge_Reward[3306480][3]["RandomItemChanceType"] = 2
	tDecChristmasPackge_Reward[3306480][3]["ItemChance"] = 4500

	tDecChristmasPackge_Reward[3306480][3]["RewardItem"] = {}
	tDecChristmasPackge_Reward[3306480][3]["RewardItem"][1] = {}
	tDecChristmasPackge_Reward[3306480][3]["RewardItem"][1]["Id"] = 724002
	tDecChristmasPackge_Reward[3306480][3]["RewardItem"][1]["Attr"] = "0 10 0"
	tDecChristmasPackge_Reward[3306480][3]["Log"] = "0,0,3306480,1,12000932,2,724002,10"		
	
-------------------------------------逻辑部分-----------------------------------------------------
function DecChristmasPackge_UsePackge(nItemId)
	
	--背包空间判断
	local flag,nSpace = RewardTemplate_ChkRandomSpace(tDecChristmasPackge_Reward,nItemId,nUserId) 
	if not RewardTemplate_ChkRandomSpace(tDecChristmasPackge_Reward,nItemId,nUserId) then
		local sSay = string.format(tDecChristmasPackge_Text["NoSpace"],nSpace)
		User_TalkChannel2005(sSay,nUserId)
		return
	end

	if Item_ChkItem(nItemId) then
		if Item_DelItem(nItemId) then
			RewardTemplate_NewRandom(tDecChristmasPackge_Reward,nItemId)
		end
	end	

end 	

function DecChristmasPackge_UseMomoPackge(nItemId)
	--赠点上限判断
	if not RewardTemplate_EMoneyMonoLimit(tDecChristmasPackge_Reward[3306478][3]["RewardEMoneyMono"],nUserId) then 
		return
	end 
	
	if Item_ChkItem(nItemId) then
		if Item_DelItem(nItemId) then
			RewardTemplate_NewRandom(tDecChristmasPackge_Reward,nItemId)
		end
	end	
end

function DecChristmasPackge_UseEMoneyPackge(nItemId) 

--天石上限判断
	if not RewardTemplate_EMoneyLimit(tDecChristmasPackge_Reward[3306479][3]["RewardEMoney"],nUserId) then
		return
	end
	if Item_ChkItem(nItemId) then
		if Item_DelItem(nItemId) then
			RewardTemplate_NewRandom(tDecChristmasPackge_Reward,nItemId)
		end
	end	

end

function DecChristmasPackge_UseLuckeyPackge(nItemId) 
	--背包空间判断
	local flag,nSpace = RewardTemplate_ChkRandomSpace(tDecChristmasPackge_Reward,nItemId,nUserId) 
	if not RewardTemplate_ChkRandomSpace(tDecChristmasPackge_Reward,nItemId,nUserId) then
		local sSay = string.format(tDecChristmasPackge_Text["NoSpace"],nSpace)
		User_TalkChannel2005(sSay,nUserId)
		return
	end
	
	if not RewardTemplate_EMoneyLimit(tDecChristmasPackge_Reward[3306480][2]["RewardEMoney"],nUserId) then
		return
	end
	
	if Item_ChkItem(nItemId) then
		if Item_DelItem(nItemId) then
			RewardTemplate_NewRandom(tDecChristmasPackge_Reward,nItemId)
		end
	end	



end
	
--------------------------------------物品部分-------------------------------------------------
tItem[3306475] = tItem[3306475] or {}
tItem[3306475]["Function"] = function(nItemId,sItemName)
	DecChristmasPackge_UsePackge(nItemId)
end	
	
tItem[3306476] = tItem[3306475]
tItem[3306477] = tItem[3306475]

tItem[3306478] = tItem[3306478] or {}
tItem[3306478]["Function"] = function(nItemId,sItemName)
	DecChristmasPackge_UseMomoPackge(nItemId)
end	


tItem[3306479] = tItem[3306479] or {}
tItem[3306479]["Function"] = function(nItemId,sItemName)
	DecChristmasPackge_UseEMoneyPackge(nItemId)
end	

tItem[3306480] = tItem[3306480] or {}
tItem[3306480]["Function"] = function(nItemId,sItemName)
	DecChristmasPackge_UseLuckeyPackge(nItemId)
end	
	
	
	
	