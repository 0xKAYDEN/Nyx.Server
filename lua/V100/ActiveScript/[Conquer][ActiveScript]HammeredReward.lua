------------------------------------------------------------------------------------
--Name:		170807[英文征服][活动脚本]8月千锤百炼排行发奖action制作
--Purpose:	8月千锤百炼排行发奖action制作
--Creator: 	傅伟龙
--Created:	2017/08/07
------------------------------------------------------------------------------------
--前缀HammeredReward_
-- logid: 12000819
--------------------------------------------物品配置表---------------------------------------
--奖励表
local HammeredReward_RewandItem = {}
--千锤百炼八阶礼盒
		HammeredReward_RewandItem[3304557]={}
		HammeredReward_RewandItem[3304557][1]={}
		HammeredReward_RewandItem[3304557][1]["LogId"] = 12000819
		HammeredReward_RewandItem[3304557][1]["RewardItem"] = {}
		HammeredReward_RewandItem[3304557][1]["RewardItem"][1] = {}
		HammeredReward_RewandItem[3304557][1]["RewardItem"][1]["Id"] = 3304568
		HammeredReward_RewandItem[3304557][1]["RewardItem"][1]["Attr"] = "0 1"
		HammeredReward_RewandItem[3304557][1]["RewardEMoney"] = {}
		HammeredReward_RewandItem[3304557][1]["RewardEMoney"]["Value"] = 20000
		HammeredReward_RewandItem[3304557][1]["RewardStrengthValue"] = {}
		HammeredReward_RewandItem[3304557][1]["RewardStrengthValue"]["Value"] = 200000
		HammeredReward_RewandItem[3304557][1]["RewardEffect"] = {}
		HammeredReward_RewandItem[3304557][1]["RewardEffect"]["Effect"] = "zf2-e128"
		
--千锤百炼七阶礼盒
		HammeredReward_RewandItem[3304558]={}
		HammeredReward_RewandItem[3304558][1]={}
		HammeredReward_RewandItem[3304558][1]["LogId"] = 12000819
		HammeredReward_RewandItem[3304558][1]["RewardItem"] = {}
		HammeredReward_RewandItem[3304558][1]["RewardItem"][1] = {}
		HammeredReward_RewandItem[3304558][1]["RewardItem"][1]["Id"] = 3304568
		HammeredReward_RewandItem[3304558][1]["RewardItem"][1]["Attr"] = "0 1"
		HammeredReward_RewandItem[3304558][1]["RewardEMoney"] = {}
		HammeredReward_RewandItem[3304558][1]["RewardEMoney"]["Value"] = 10000
		HammeredReward_RewandItem[3304558][1]["RewardStrengthValue"] = {}
		HammeredReward_RewandItem[3304558][1]["RewardStrengthValue"]["Value"] = 100000
		HammeredReward_RewandItem[3304558][1]["RewardEffect"] = {}
		HammeredReward_RewandItem[3304558][1]["RewardEffect"]["Effect"] = "zf2-e128"
		
--千锤百炼六阶礼盒
		HammeredReward_RewandItem[3304559]={}
		HammeredReward_RewandItem[3304559][1]={}
		HammeredReward_RewandItem[3304559][1]["LogId"] = 12000819
		HammeredReward_RewandItem[3304559][1]["RewardItem"] = {}
		HammeredReward_RewandItem[3304559][1]["RewardItem"][1] = {}
		HammeredReward_RewandItem[3304559][1]["RewardItem"][1]["Id"] = 3304568
		HammeredReward_RewandItem[3304559][1]["RewardItem"][1]["Attr"] = "0 1"
		HammeredReward_RewandItem[3304559][1]["RewardEMoney"] = {}
		HammeredReward_RewandItem[3304559][1]["RewardEMoney"]["Value"] = 5000
		HammeredReward_RewandItem[3304559][1]["RewardStrengthValue"] = {}
		HammeredReward_RewandItem[3304559][1]["RewardStrengthValue"]["Value"] = 100000
		HammeredReward_RewandItem[3304559][1]["RewardEffect"] = {}
		HammeredReward_RewandItem[3304559][1]["RewardEffect"]["Effect"] = "zf2-e128"
		
--千锤百炼五阶礼盒
		HammeredReward_RewandItem[3304560]={}
		HammeredReward_RewandItem[3304560][1]={}
		HammeredReward_RewandItem[3304560][1]["LogId"] = 12000819
		HammeredReward_RewandItem[3304560][1]["RewardItem"] = {}
		HammeredReward_RewandItem[3304560][1]["RewardItem"][1] = {}
		HammeredReward_RewandItem[3304560][1]["RewardItem"][1]["Id"] = 3304567
		HammeredReward_RewandItem[3304560][1]["RewardItem"][1]["Attr"] = "0 1"
		HammeredReward_RewandItem[3304560][1]["RewardEMoney"] = {}
		HammeredReward_RewandItem[3304560][1]["RewardEMoney"]["Value"] = 5000
		HammeredReward_RewandItem[3304560][1]["RewardStrengthValue"] = {}
		HammeredReward_RewandItem[3304560][1]["RewardStrengthValue"]["Value"] = 100000
		HammeredReward_RewandItem[3304560][1]["RewardEffect"] = {}
		HammeredReward_RewandItem[3304560][1]["RewardEffect"]["Effect"] = "zf2-e128"
		
--千锤百炼四阶礼盒
		HammeredReward_RewandItem[3304561]={}
		HammeredReward_RewandItem[3304561][1]={}
		HammeredReward_RewandItem[3304561][1]["LogId"] = 12000819
		HammeredReward_RewandItem[3304561][1]["RewardItem"] = {}
		HammeredReward_RewandItem[3304561][1]["RewardItem"][1] = {}
		HammeredReward_RewandItem[3304561][1]["RewardItem"][1]["Id"] = 3304567
		HammeredReward_RewandItem[3304561][1]["RewardItem"][1]["Attr"] = "0 1"
		HammeredReward_RewandItem[3304561][1]["RewardStrengthValue"] = {}
		HammeredReward_RewandItem[3304561][1]["RewardStrengthValue"]["Value"] = 100000
		HammeredReward_RewandItem[3304561][1]["RewardEffect"] = {}
		HammeredReward_RewandItem[3304561][1]["RewardEffect"]["Effect"] = "zf2-e128"
		
--千锤百炼三阶礼盒
		HammeredReward_RewandItem[3304562]={}
		HammeredReward_RewandItem[3304562][1]={}
		HammeredReward_RewandItem[3304562][1]["LogId"] = 12000819
		HammeredReward_RewandItem[3304562][1]["RewardEMoneyMono"] = {}
		HammeredReward_RewandItem[3304562][1]["RewardEMoneyMono"]["Value"] = 10000
		HammeredReward_RewandItem[3304562][1]["RewardEffect"] = {}
		HammeredReward_RewandItem[3304562][1]["RewardEffect"]["Effect"] = "zf2-e128"
		
		HammeredReward_RewandItem[3304562][2]={}
		HammeredReward_RewandItem[3304562][2]["LogId"] = 12000819
		HammeredReward_RewandItem[3304562][2]["RewardStrengthValue"] = {}
		HammeredReward_RewandItem[3304562][2]["RewardStrengthValue"]["Value"] = 100000
		HammeredReward_RewandItem[3304562][2]["RewardEffect"] = {}
		HammeredReward_RewandItem[3304562][2]["RewardEffect"]["Effect"] = "zf2-e128"
		
		HammeredReward_RewandItem[3304562][3]={}
		HammeredReward_RewandItem[3304562][3]["LogId"] = 12000819
		HammeredReward_RewandItem[3304562][3]["RewardItem"] = {}
		HammeredReward_RewandItem[3304562][3]["RewardItem"][1] = {}
		HammeredReward_RewandItem[3304562][3]["RewardItem"][1]["Id"] = 3304565
		HammeredReward_RewandItem[3304562][3]["RewardItem"][1]["Attr"] = "0 4 0 2880 1"
		HammeredReward_RewandItem[3304562][3]["RewardEffect"] = {}
		HammeredReward_RewandItem[3304562][3]["RewardEffect"]["Effect"] = "zf2-e128"
--千锤百炼二阶礼盒
		HammeredReward_RewandItem[3304563]={}
		HammeredReward_RewandItem[3304563][1]={}
		HammeredReward_RewandItem[3304563][1]["LogId"] = 12000819
		HammeredReward_RewandItem[3304563][1]["RewardEMoneyMono"] = {}
		HammeredReward_RewandItem[3304563][1]["RewardEMoneyMono"]["Value"] = 10000
		HammeredReward_RewandItem[3304563][1]["RewardEffect"] = {}
		HammeredReward_RewandItem[3304563][1]["RewardEffect"]["Effect"] = "zf2-e128"
		
		HammeredReward_RewandItem[3304563][2]={}
		HammeredReward_RewandItem[3304563][2]["LogId"] = 12000819
		HammeredReward_RewandItem[3304563][2]["RewardStrengthValue"] = {}
		HammeredReward_RewandItem[3304563][2]["RewardStrengthValue"]["Value"] = 50000
		HammeredReward_RewandItem[3304563][2]["RewardEffect"] = {}
		HammeredReward_RewandItem[3304563][2]["RewardEffect"]["Effect"] = "zf2-e128"
		
		HammeredReward_RewandItem[3304563][3]={}
		HammeredReward_RewandItem[3304563][3]["LogId"] = 12000819
		HammeredReward_RewandItem[3304563][3]["RewardItem"] = {}
		HammeredReward_RewandItem[3304563][3]["RewardItem"][1] = {}
		HammeredReward_RewandItem[3304563][3]["RewardItem"][1]["Id"] = 3304565
		HammeredReward_RewandItem[3304563][3]["RewardItem"][1]["Attr"] = "0 2 0 2880 1"
		HammeredReward_RewandItem[3304563][3]["RewardEffect"] = {}
		HammeredReward_RewandItem[3304563][3]["RewardEffect"]["Effect"] = "zf2-e128"
--千锤百炼一阶礼盒
		HammeredReward_RewandItem[3304564]={}
		HammeredReward_RewandItem[3304564][1]={}
		HammeredReward_RewandItem[3304564][1]["LogId"] = 12000819
		HammeredReward_RewandItem[3304564][1]["RewardEMoneyMono"] = {}
		HammeredReward_RewandItem[3304564][1]["RewardEMoneyMono"]["Value"] = 5000
		HammeredReward_RewandItem[3304564][1]["RewardEffect"] = {}
		HammeredReward_RewandItem[3304564][1]["RewardEffect"]["Effect"] = "zf2-e128"
		
		HammeredReward_RewandItem[3304564][2]={}
		HammeredReward_RewandItem[3304564][2]["LogId"] = 12000819
		HammeredReward_RewandItem[3304564][2]["RewardStrengthValue"] = {}
		HammeredReward_RewandItem[3304564][2]["RewardStrengthValue"]["Value"] = 30000
		HammeredReward_RewandItem[3304564][2]["RewardEffect"] = {}
		HammeredReward_RewandItem[3304564][2]["RewardEffect"]["Effect"] = "zf2-e128"
		
		HammeredReward_RewandItem[3304564][3]={}
		HammeredReward_RewandItem[3304564][3]["LogId"] = 12000819
		HammeredReward_RewandItem[3304564][3]["RewardItem"] = {}
		HammeredReward_RewandItem[3304564][3]["RewardItem"][1] = {}
		HammeredReward_RewandItem[3304564][3]["RewardItem"][1]["Id"] = 3304566
		HammeredReward_RewandItem[3304564][3]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
		HammeredReward_RewandItem[3304564][3]["RewardEffect"] = {}
		HammeredReward_RewandItem[3304564][3]["RewardEffect"]["Effect"] = "zf2-e128"
		
--5颗晶莹星陨石礼盒
		HammeredReward_RewandItem[3304565]={}
		HammeredReward_RewandItem[3304565][1]={}
		HammeredReward_RewandItem[3304565][1]["LogId"] = 12000819
		HammeredReward_RewandItem[3304565][1]["RewardItem"] = {}
		HammeredReward_RewandItem[3304565][1]["RewardItem"][1] = {}
		HammeredReward_RewandItem[3304565][1]["RewardItem"][1]["Id"] = 3009002
		HammeredReward_RewandItem[3304565][1]["RewardItem"][1]["Attr"] = "0 5 0 2880 1"
		HammeredReward_RewandItem[3304565][1]["RewardEffect"] = {}
		HammeredReward_RewandItem[3304565][1]["RewardEffect"]["Effect"] = "zf2-e128"
		
--6颗晶莹星陨石礼盒
		HammeredReward_RewandItem[3304566]={}
		HammeredReward_RewandItem[3304566][1]={}
		HammeredReward_RewandItem[3304566][1]["Space"] = 5
		HammeredReward_RewandItem[3304566][1]["LogId"] = 12000819
		HammeredReward_RewandItem[3304566][1]["RewardItem"] = {}
		HammeredReward_RewandItem[3304566][1]["RewardItem"][1] = {}
		HammeredReward_RewandItem[3304566][1]["RewardItem"][1]["Id"] = 3009002
		HammeredReward_RewandItem[3304566][1]["RewardItem"][1]["Attr"] = "0 6 0 2880 1"
		HammeredReward_RewandItem[3304566][1]["RewardEffect"] = {}
		HammeredReward_RewandItem[3304566][1]["RewardEffect"]["Effect"] = "zf2-e128"
		
--稀有四星外套礼盒
		HammeredReward_RewandItem[3304567]={}
		HammeredReward_RewandItem[3304567][1]={}
		HammeredReward_RewandItem[3304567][1]["LogId"] = 12000819
		HammeredReward_RewandItem[3304567][1]["RewardItem"] = {}
		HammeredReward_RewandItem[3304567][1]["RewardItem"][1] = {}
		HammeredReward_RewandItem[3304567][1]["RewardItem"][1]["Id"] = 192785
		HammeredReward_RewandItem[3304567][1]["RewardItem"][1]["Attr"] = "0 1"
		HammeredReward_RewandItem[3304567][1]["RewardEffect"] = {}
		HammeredReward_RewandItem[3304567][1]["RewardEffect"]["Effect"] = "zf2-e128"
		
		HammeredReward_RewandItem[3304567][2]={}
		HammeredReward_RewandItem[3304567][2]["LogId"] = 12000819
		HammeredReward_RewandItem[3304567][2]["RewardItem"] = {}
		HammeredReward_RewandItem[3304567][2]["RewardItem"][1] = {}
		HammeredReward_RewandItem[3304567][2]["RewardItem"][1]["Id"] = 188675
		HammeredReward_RewandItem[3304567][2]["RewardItem"][1]["Attr"] = "0 1"
		HammeredReward_RewandItem[3304567][2]["RewardEffect"] = {}
		HammeredReward_RewandItem[3304567][2]["RewardEffect"]["Effect"] = "zf2-e128"
		
--稀有五星外套礼盒
		HammeredReward_RewandItem[3304568]={}
		HammeredReward_RewandItem[3304568][1]={}
		HammeredReward_RewandItem[3304568][1]["LogId"] = 12000819
		HammeredReward_RewandItem[3304568][1]["RewardItem"] = {}
		HammeredReward_RewandItem[3304568][1]["RewardItem"][1] = {}
		HammeredReward_RewandItem[3304568][1]["RewardItem"][1]["Id"] = 193565
		HammeredReward_RewandItem[3304568][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
		HammeredReward_RewandItem[3304568][1]["RewardEffect"] = {}
		HammeredReward_RewandItem[3304568][1]["RewardEffect"]["Effect"] = "zf2-e128"
		
		HammeredReward_RewandItem[3304568][2]={}
		HammeredReward_RewandItem[3304568][2]["LogId"] = 12000819
		HammeredReward_RewandItem[3304568][2]["RewardItem"] = {}
		HammeredReward_RewandItem[3304568][2]["RewardItem"][1] = {}
		HammeredReward_RewandItem[3304568][2]["RewardItem"][1]["Id"] = 193445
		HammeredReward_RewandItem[3304568][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
		HammeredReward_RewandItem[3304568][2]["RewardEffect"] = {}
		HammeredReward_RewandItem[3304568][2]["RewardEffect"]["Effect"] = "zf2-e128"

--------------------------------------------物品逻辑---------------------------------------
--打开可选礼包
function HammeredReward_OpenRewardBag(nItemId,nIndex)
		if Item_ChkItem(nItemId) then
			local nSpace = RewardTemplate_GetRewardSpace(HammeredReward_RewandItem[nItemId][nIndex])-RewardTemplate_GetDelSpace(HammeredReward_RewandItem[nItemId][nIndex])
			if not(User_CheckLeftSpace(nSpace)) then
			--提示
			Sys_MsgBox(string.format(HammeredReward_Text["MsgSpace"],nSpace))
			return 
			end
			
			
			if HammeredReward_RewandItem[nItemId][nIndex]["RewardEMoneyMono"]~= nil then
				--判断赠点天石上限
				local nAddEmoneyMono = HammeredReward_RewandItem[nItemId][nIndex]["RewardEMoneyMono"]["Value"]
				local nEmoneyMono = Get_UserMonoEMoney()
				if nAddEmoneyMono + nEmoneyMono > G_User_MaxEmoneyMono then
					--提示
					Sys_MsgBox(HammeredReward_Text["EMoneyMonoMax"])
				return
				end
			end

			
			if Item_DelItem(nItemId) then
				RewardTemplate_Reward(HammeredReward_RewandItem[nItemId][nIndex])
			end
		end
end

--打开普通礼包
function HammeredReward_OpenOrdinaryRewardBag(nItemId)
		if Item_ChkItem(nItemId) then
			local nSpace = RewardTemplate_GetRewardSpace(HammeredReward_RewandItem[nItemId][1])-RewardTemplate_GetDelSpace(HammeredReward_RewandItem[nItemId][1])
			if not(User_CheckLeftSpace(nSpace)) then
				--提示
				Sys_MsgBox(string.format(HammeredReward_Text["MsgSpace"],nSpace))
				return 
			end
		
			if HammeredReward_RewandItem[nItemId][1]["RewardEMoney"] ~= nil then
				--判断天石上限
				local nEmoney = Get_UserEMoney()
				local nAddEmoney = HammeredReward_RewandItem[nItemId][1]["RewardEMoney"]["Value"]
			
				if (nEmoney + nAddEmoney) > G_User_MaxEmoney  then
					 --提示
					Sys_MsgBox(HammeredReward_Text["EMoneyMax"])
					return
				end
			end
		
			if Item_DelItem(nItemId) then
				RewardTemplate_Reward(HammeredReward_RewandItem[nItemId][1])
			end
		end
end

--------------------------------------------物品模板---------------------------------------
tItem[3304557] = tItem[3304557] or {}
tItem[3304557]["Function"] = function(nItemId,sItemName)
	HammeredReward_OpenOrdinaryRewardBag(nItemId)
end
tItem[3304558] = tItem[3304557] or {}
tItem[3304559] = tItem[3304557] or {}
tItem[3304560] = tItem[3304557] or {}
tItem[3304561] = tItem[3304557] or {}
tItem[3304565] = tItem[3304557] or {}
tItem[3304566] = tItem[3304557] or {}

tItem[3304562] = tItem[3304562] or {}
tItem[3304562]["DialogueText"] = HammeredReward_Text[3304562]
tItem[3304562]["Text1-1"] = {111}
tItem[3304562]["tOption1-1"] = {111,112,113,114}
tItem[3304562]["OptionFunc111"] = "HammeredReward_OpenRewardBag</N>3304562</N>1"
tItem[3304562]["OptionFunc112"] = "HammeredReward_OpenRewardBag</N>3304562</N>2"
tItem[3304562]["OptionFunc113"] = "HammeredReward_OpenRewardBag</N>3304562</N>3"

tItem[3304563] = tItem[3304563] or {}
tItem[3304563]["DialogueText"] = HammeredReward_Text[3304563]
tItem[3304563]["Text1-1"] = {111}
tItem[3304563]["tOption1-1"] = {111,112,113,114}
tItem[3304563]["OptionFunc111"] = "HammeredReward_OpenRewardBag</N>3304563</N>1"
tItem[3304563]["OptionFunc112"] = "HammeredReward_OpenRewardBag</N>3304563</N>2"
tItem[3304563]["OptionFunc113"] = "HammeredReward_OpenRewardBag</N>3304563</N>3"

tItem[3304564] = tItem[3304564] or {}
tItem[3304564]["DialogueText"] = HammeredReward_Text[3304564]
tItem[3304564]["Text1-1"] = {111}
tItem[3304564]["tOption1-1"] = {111,112,113,114}
tItem[3304564]["OptionFunc111"] = "HammeredReward_OpenRewardBag</N>3304564</N>1"
tItem[3304564]["OptionFunc112"] = "HammeredReward_OpenRewardBag</N>3304564</N>2"
tItem[3304564]["OptionFunc113"] = "HammeredReward_OpenRewardBag</N>3304564</N>3"

tItem[3304567] = tItem[3304567] or {}
tItem[3304567]["DialogueText"] = HammeredReward_Text[3304567]
tItem[3304567]["Text1-1"] = {111}
tItem[3304567]["tOption1-1"] = {111,112,113}
tItem[3304567]["OptionFunc111"] = "HammeredReward_OpenRewardBag</N>3304567</N>1"
tItem[3304567]["OptionFunc112"] = "HammeredReward_OpenRewardBag</N>3304567</N>2"

tItem[3304568] = tItem[3304568] or {}
tItem[3304568]["DialogueText"] = HammeredReward_Text[3304568]
tItem[3304568]["Text1-1"] = {111}
tItem[3304568]["tOption1-1"] = {111,112,113}
tItem[3304568]["OptionFunc111"] = "HammeredReward_OpenRewardBag</N>3304568</N>1"
tItem[3304568]["OptionFunc112"] = "HammeredReward_OpenRewardBag</N>3304568</N>2"
