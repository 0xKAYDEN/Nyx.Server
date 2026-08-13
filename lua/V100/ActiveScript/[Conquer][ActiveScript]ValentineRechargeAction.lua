------------------------------------------------------------------------------------
--Name：            190108[英文征服][活动脚本]情人节充值礼包及发奖action
--Creator:      杨艳
--Created:     2019/01/08
------------------------------------------------------------------------------------


--命名前缀
--ValentineRechargeAction_

--logid： 12001269





--物品
------------------------------------------------数据部分-----------------------------------------------------
	
	
local tValentineRechargeAction_Award = {}
	
	-- 3319314,'流光武器外套礼包
	tValentineRechargeAction_Award[3319314] = {}
	tValentineRechargeAction_Award[3319314][350108] = {}
	tValentineRechargeAction_Award[3319314][350108]["DeleteItem"] = {}
	tValentineRechargeAction_Award[3319314][350108]["DeleteItem"][1] = {}
	tValentineRechargeAction_Award[3319314][350108]["DeleteItem"][1]["Id"] = 3319314
	tValentineRechargeAction_Award[3319314][350108]["RewardItem"] = {}
	tValentineRechargeAction_Award[3319314][350108]["RewardItem"][1] = {}
	tValentineRechargeAction_Award[3319314][350108]["RewardItem"][1]["Id"] = 350108
	tValentineRechargeAction_Award[3319314][350108]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tValentineRechargeAction_Award[3319314][350108]["LogId"] = 12001269
	tValentineRechargeAction_Award[3319314][350108]["RewardEffect"] = {}
	tValentineRechargeAction_Award[3319314][350108]["RewardEffect"]["SzObj"] = "self"
	tValentineRechargeAction_Award[3319314][350108]["RewardEffect"]["Effect"] = "angelwing"	
	 
    tValentineRechargeAction_Award[3319314][360208] = {}
	tValentineRechargeAction_Award[3319314][360208]["DeleteItem"] = {}
	tValentineRechargeAction_Award[3319314][360208]["DeleteItem"][1] = {}
	tValentineRechargeAction_Award[3319314][360208]["DeleteItem"][1]["Id"] = 3319314
	tValentineRechargeAction_Award[3319314][360208]["RewardItem"] = {}
	tValentineRechargeAction_Award[3319314][360208]["RewardItem"][1] = {}
	tValentineRechargeAction_Award[3319314][360208]["RewardItem"][1]["Id"] = 360208
	tValentineRechargeAction_Award[3319314][360208]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tValentineRechargeAction_Award[3319314][360208]["LogId"] = 12001269
	tValentineRechargeAction_Award[3319314][360208]["RewardEffect"] = {}
	tValentineRechargeAction_Award[3319314][360208]["RewardEffect"]["SzObj"] = "self"
	tValentineRechargeAction_Award[3319314][360208]["RewardEffect"]["Effect"] = "angelwing"	
	 
	tValentineRechargeAction_Award[3319314][370048] = {}
	tValentineRechargeAction_Award[3319314][370048]["DeleteItem"] = {}
	tValentineRechargeAction_Award[3319314][370048]["DeleteItem"][1] = {}
	tValentineRechargeAction_Award[3319314][370048]["DeleteItem"][1]["Id"] = 3319314
	tValentineRechargeAction_Award[3319314][370048]["RewardItem"] = {}
	tValentineRechargeAction_Award[3319314][370048]["RewardItem"][1] = {}
	tValentineRechargeAction_Award[3319314][370048]["RewardItem"][1]["Id"] = 370048
	tValentineRechargeAction_Award[3319314][370048]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tValentineRechargeAction_Award[3319314][370048]["LogId"] = 12001269
	tValentineRechargeAction_Award[3319314][370048]["RewardEffect"] = {}
	tValentineRechargeAction_Award[3319314][370048]["RewardEffect"]["SzObj"] = "self"
	tValentineRechargeAction_Award[3319314][370048]["RewardEffect"]["Effect"] = "angelwing"	
	
	tValentineRechargeAction_Award[3319314][380054] = {}
	tValentineRechargeAction_Award[3319314][380054]["DeleteItem"] = {}
	tValentineRechargeAction_Award[3319314][380054]["DeleteItem"][1] = {}
	tValentineRechargeAction_Award[3319314][380054]["DeleteItem"][1]["Id"] = 3319314
	tValentineRechargeAction_Award[3319314][380054]["RewardItem"] = {}
	tValentineRechargeAction_Award[3319314][380054]["RewardItem"][1] = {}
	tValentineRechargeAction_Award[3319314][380054]["RewardItem"][1]["Id"] = 380054
	tValentineRechargeAction_Award[3319314][380054]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tValentineRechargeAction_Award[3319314][380054]["LogId"] = 12001269
	tValentineRechargeAction_Award[3319314][380054]["RewardEffect"] = {}
	tValentineRechargeAction_Award[3319314][380054]["RewardEffect"]["SzObj"] = "self"
	tValentineRechargeAction_Award[3319314][380054]["RewardEffect"]["Effect"] = "angelwing"	
	
	-- 3319313,'流光武器外套碎片
	tValentineRechargeAction_Award[3319313] = {}
	tValentineRechargeAction_Award[3319313][30] = {}
	tValentineRechargeAction_Award[3319313][30]["RewardItem"] = {}
	tValentineRechargeAction_Award[3319313][30]["RewardItem"][1] = {}
	tValentineRechargeAction_Award[3319313][30]["RewardItem"][1]["Id"] = 3319314
	tValentineRechargeAction_Award[3319313][30]["RewardItem"][1]["Attr"] = "0 1"
	tValentineRechargeAction_Award[3319313][30]["LogId"] = 12001269
	tValentineRechargeAction_Award[3319313][30]["EmoneyLog"] = "350	21984	0	0	1	"
	tValentineRechargeAction_Award[3319313][30]["RewardEffect"] = {}
	tValentineRechargeAction_Award[3319313][30]["RewardEffect"]["SzObj"] = "self"
	tValentineRechargeAction_Award[3319313][30]["RewardEffect"]["Effect"] = "angelwing"	
	
	tValentineRechargeAction_Award[3319313][1] = {}
	tValentineRechargeAction_Award[3319313][1]["RewardEMoney"] = {}
	tValentineRechargeAction_Award[3319313][1]["RewardEMoney"]["Value"] = 1000
	tValentineRechargeAction_Award[3319313][1]["LogId"] = 12001269
	tValentineRechargeAction_Award[3319313][1]["EmoneyLog"] = "350	21985	-1000	-1000	1	"
	tValentineRechargeAction_Award[3319313][1]["RewardEffect"] = {}
	tValentineRechargeAction_Award[3319313][1]["RewardEffect"]["SzObj"] = "self"
	tValentineRechargeAction_Award[3319313][1]["RewardEffect"]["Effect"] = "angelwing"	
			
local tValentineRechargeAction_Log = {}
	tValentineRechargeAction_Log["DelAllItem"] = "0,0,%d,%d,12001269,2,0,0"		


---------------------------------------------------逻辑部分-------------------------------------------------------
--礼包过期判断
function ValentineRechargeAction_CheckTime(nItemId)
	
	--判断时间
	if  CommonFunc_GetBeforeActivityTime(tActivityTime["ValentineRechargeAction"]["ActivityTime"]) then
		return
	end
	
	if not Sys_ChkFullTime(tActivityTime["ValentineRechargeAction"]["ActivityTime"]) then
		local nCount = Get_CountItemType(nItemId,0)
		if nCount > 0 then
			if Item_DelAllItemByType(nItemId) then
				local sDelItemLog = string.format(tValentineRechargeAction_Log["DelAllItem"],nItemId,nCount)
				Sys_SaveActionFestivalLog(sDelItemLog)
				User_TalkChannel2005(tValentineRechargeAction_Text["Sys"]["TimeOut"])
			end
		end	
		return
	end
	LinkItemGossipFunc_New(nItemId,"1-1")

end


--流光武器外套礼包 可选包
function ValentineRechargeAction_Option(nFlag,nItemId)
	local nUserId = Get_UserId()
	
	--判断物品
	if not Item_ChkItem(nItemId) then
		User_TalkChannel2005(tValentineRechargeAction_Text["Sys"]["NoItem"])
		return	
	end	
	local nBagNum = RewardTemplate_GetRewardSpace(tValentineRechargeAction_Award[nItemId][nFlag],nUserId)
	--背包空间判断
	if not  RewardTemplate_CheckSpace(tValentineRechargeAction_Award[nItemId][nFlag],nUserId) then 
		User_TalkChannel2005(string.format(tValentineRechargeAction_Text["Sys"]["NoBag"],nBagNum))
		return
	end 
	
	RewardTemplate_UseItemAndMsg(tValentineRechargeAction_Award[nItemId][nFlag])
	
end


--流光武器外套碎片合成
function ValentineRechargeAction_ItemChange(nFlag,nItemId)
	local nUserId = Get_UserId()
	
	if not Sys_ChkFullTime(tActivityTime["ValentineRechargeAction"]["ActivityTime"]) then
		if Item_ChkItem(nItemId) then
			local nCount = Get_CountItemType(nItemId,0)
			if Item_DelAllItemByType(nItemId) then
				local sDelItemLog = string.format(tValentineRechargeAction_Log["DelAllItem"],nItemId,nCount)
				Sys_SaveActionFestivalLog(sDelItemLog)
				User_TalkChannel2005(tValentineRechargeAction_Text["Sys"]["TimeOut"])
			end
		end			
		return 
	end
	
	if not Item_ChkMulItem(nItemId,nItemId,nFlag) then
		Sys_MsgBox(tValentineRechargeAction_Text["Sys"]["Fail"][nFlag])
		return
	end
	local nBagNum = RewardTemplate_GetRewardSpace(tValentineRechargeAction_Award[nItemId][nFlag],nUserId)
	--背包空间判断
	if not  RewardTemplate_CheckSpace(tValentineRechargeAction_Award[nItemId][nFlag],nUserId) then 
		User_TalkChannel2005(string.format(tValentineRechargeAction_Text["Sys"]["NoBag1"],nBagNum))
		return
	end 
	--天石上限判断
	if nFlag == 1 then 
		if tValentineRechargeAction_Award[3319313][nFlag]["RewardEMoney"]["Value"] ~= nil then 
			local nEmoney = Get_UserEMoney(nUserId)
			local nAddEmoney = tValentineRechargeAction_Award[3319313][1]["RewardEMoney"]["Value"]
			if nEmoney + nAddEmoney > G_User_MaxEmoney then
				User_TalkChannel2005(tFestivalCardMonth_Text[3006873]["EMoneyFull"])
				return 
			end
		end 
	end 
	if Item_DelMulItem(nItemId,nItemId,nFlag) then
		local sDelItemLog = string.format(tValentineRechargeAction_Log["DelAllItem"],nItemId,nFlag)
		Sys_SaveActionFestivalLog(sDelItemLog)
		
		Sys_MsgBox(tValentineRechargeAction_Text["Sys"]["Vec"][nFlag])
		RewardTemplate_UseItem(tValentineRechargeAction_Award[nItemId][nFlag])
		
	end
	
end 


---------------------------------物品部分---------------------------------------------
-- (3319314,'流光武器外套礼包
tItemFace[3319314] = 523
tItem[3319314] = tItem[3319314] or {}
tItem[3319314]["DialogueText"] = tValentineRechargeAction_Text[3319314]
tItem[3319314]["Text1-1"] = {111}
tItem[3319314]["Text111"] = tValentineRechargeAction_Text[3319314]["Text111"]

tItem[3319314]["tOption1-1"] = {111,112,113,114}
tItem[3319314]["Option111"] = tValentineRechargeAction_Text[3319314]["Option111"]
tItem[3319314]["Option112"] = tValentineRechargeAction_Text[3319314]["Option112"]
tItem[3319314]["Option113"] = tValentineRechargeAction_Text[3319314]["Option113"]
tItem[3319314]["Option114"] = tValentineRechargeAction_Text[3319314]["Option114"]

tItem[3319314]["OptionFunc111"] = "ValentineRechargeAction_Option</N>350108</N>3319314"
tItem[3319314]["OptionFunc112"] = "ValentineRechargeAction_Option</N>360208</N>3319314"
tItem[3319314]["OptionFunc113"] = "ValentineRechargeAction_Option</N>370048</N>3319314"
tItem[3319314]["OptionFunc114"] = "ValentineRechargeAction_Option</N>380054</N>3319314"

-- (3319313,'流光武器外套碎片
tItem[3319313] = tItem[3319313] or {}
tItem[3319313]["Function"] = function(nItemId,sItemName)
	ValentineRechargeAction_CheckTime(nItemId)
end

tItemFace[3319313] = 2081
tItem[3319313]["Text1-1"] = {111}
tItem[3319313]["Text111"] = tValentineRechargeAction_Text[3319313]["Text111"]
      
tItem[3319313]["tOption1-1"] = {111,112}
tItem[3319313]["Option111"] = tValentineRechargeAction_Text[3319313]["Option111"]
tItem[3319313]["Option112"] = tValentineRechargeAction_Text[3319313]["Option112"]
  
tItem[3319313]["OptionFunc111"] = "ValentineRechargeAction_ItemChange</N>30</N>3319313"
tItem[3319313]["OptionPoint112"] = "2-1"

tItem[3319313]["Text2-1"] = {211}
tItem[3319313]["Text211"] = tValentineRechargeAction_Text[3319313]["Text211"]
      
tItem[3319313]["tOption2-1"] = {211,212}
tItem[3319313]["Option211"] = tValentineRechargeAction_Text[3319313]["Option211"]
tItem[3319313]["Option212"] = tValentineRechargeAction_Text[3319313]["Option212"]

tItem[3319313]["OptionFunc211"] = "ValentineRechargeAction_ItemChange</N>1</N>3319313"











