---Name:161107[英文征服][活动脚本]12月老玩家回归礼包及发奖action制作
--Creator: 		杨晓晓
--Created:		2016-11-07
------------------------------------------------------------------------------------------
--命名前缀
--tDecComeBackPack_
-----------------------------------------------------
-- 掩码说明：
--- stc(152,51)，记录玩家打开回归大礼包的次数情况
--log :12000557

--接对话
local tDecComeBackPack_Duihua= {}
	tDecComeBackPack_Duihua[1] = "1-1"
	tDecComeBackPack_Duihua[10001] = "2-1"
	tDecComeBackPack_Duihua[20001] = "3-1"
	tDecComeBackPack_Duihua[30001] = "4-1"
	tDecComeBackPack_Duihua[40001] = "5-1"
	tDecComeBackPack_Duihua[50001] = "6-1"
	tDecComeBackPack_Duihua[60001] = "7-1"
--奖励模板
local tDecComeBackPack_Reward= {}
--回归大礼包, 第一次打开
	tDecComeBackPack_Reward[3301432] = {}
	tDecComeBackPack_Reward[3301432][1] = {}
	tDecComeBackPack_Reward[3301432][1]["EventType"] = 152
	tDecComeBackPack_Reward[3301432][1]["DataType"] = 51
	tDecComeBackPack_Reward[3301432][1]["RewardDelay"] = 1
	tDecComeBackPack_Reward[3301432][1]["RewardTimeType"] = 4
	tDecComeBackPack_Reward[3301432][1]["RewardItem"] = {}
	--龙珠*1                                                                
	tDecComeBackPack_Reward[3301432][1]["RewardItem"][1] = {}
	tDecComeBackPack_Reward[3301432][1]["RewardItem"][1]["Id"] = 1088000
	tDecComeBackPack_Reward[3301432][1]["RewardItem"][1]["Attr"] = "0 1"
	--明亮星陨石*2                                                    
	tDecComeBackPack_Reward[3301432][1]["RewardItem"][2] = {}
	tDecComeBackPack_Reward[3301432][1]["RewardItem"][2]["Id"] = 3009001
	tDecComeBackPack_Reward[3301432][1]["RewardItem"][2]["Attr"] = "0 2 0 2880 1"
	--赠点300点                                                         
	tDecComeBackPack_Reward[3301432][1]["RewardEMoneyMono"] = {}
	tDecComeBackPack_Reward[3301432][1]["RewardEMoneyMono"]["Value"] = 300
	tDecComeBackPack_Reward[3301432][1]["Log"] = "0,0,0,0,12000557,2,1088000[3009001][3],1[2][300]"

--回归大礼包, 第二次打开
	tDecComeBackPack_Reward[3301432][10001] = {}
	tDecComeBackPack_Reward[3301432][10001]["EventType"] = 152
	tDecComeBackPack_Reward[3301432][10001]["DataType"] = 51
	tDecComeBackPack_Reward[3301432][10001]["RewardDelay"] = 1
	tDecComeBackPack_Reward[3301432][10001]["RewardTimeType"] = 4
	tDecComeBackPack_Reward[3301432][10001]["RewardItem"] = {}
	--气力值3000点                                             
	tDecComeBackPack_Reward[3301432][10001]["RewardStrengthValue"] = {}
	tDecComeBackPack_Reward[3301432][10001]["RewardStrengthValue"]["Value"] = 3000
	--明亮星陨石*2                                                  
	tDecComeBackPack_Reward[3301432][10001]["RewardItem"][1] = {}
	tDecComeBackPack_Reward[3301432][10001]["RewardItem"][1]["Id"] = 3009001
	tDecComeBackPack_Reward[3301432][10001]["RewardItem"][1]["Attr"] = "0 2 0 2880 1"
	tDecComeBackPack_Reward[3301432][10001]["Log"] = "0,0,0,0,12000557,2,12[3009001],3000[2]"

--回归大礼包, 第三次打开
	tDecComeBackPack_Reward[3301432][20001] = {}
	tDecComeBackPack_Reward[3301432][20001]["EventType"] = 152
	tDecComeBackPack_Reward[3301432][20001]["DataType"] = 51
	tDecComeBackPack_Reward[3301432][20001]["RewardDelay"] = 1
	tDecComeBackPack_Reward[3301432][20001]["RewardTimeType"] = 4
	tDecComeBackPack_Reward[3301432][20001]["RewardItem"] = {}
	--八宝护心丹                                                 
	tDecComeBackPack_Reward[3301432][20001]["RewardItem"][1] = {}
	tDecComeBackPack_Reward[3301432][20001]["RewardItem"][1]["Id"] = 3005360
	tDecComeBackPack_Reward[3301432][20001]["RewardItem"][1]["Attr"] = ""
	--明亮星陨石*2                                                  
	tDecComeBackPack_Reward[3301432][20001]["RewardItem"][2] = {}
	tDecComeBackPack_Reward[3301432][20001]["RewardItem"][2]["Id"] = 3009001
	tDecComeBackPack_Reward[3301432][20001]["RewardItem"][2]["Attr"] = "0 2 0 2880 1"
	tDecComeBackPack_Reward[3301432][20001]["Log"] = "0,0,0,0,12000557,2,3005360[3009001],1[2]"

--回归大礼包, 第四次打开
	tDecComeBackPack_Reward[3301432][30001] = {}
	tDecComeBackPack_Reward[3301432][30001]["EventType"] = 152
	tDecComeBackPack_Reward[3301432][30001]["DataType"] = 51
	tDecComeBackPack_Reward[3301432][30001]["RewardDelay"] = 1
	tDecComeBackPack_Reward[3301432][30001]["RewardTimeType"] = 4
	tDecComeBackPack_Reward[3301432][30001]["RewardItem"] = {}
	--免费强炼丹*50                                                
	tDecComeBackPack_Reward[3301432][30001]["RewardItem"][1] = {}
	tDecComeBackPack_Reward[3301432][30001]["RewardItem"][1]["Id"] = 3003124
	tDecComeBackPack_Reward[3301432][30001]["RewardItem"][1]["Attr"] = "0 50 3"
	--明亮星陨石*2                                                 
	tDecComeBackPack_Reward[3301432][30001]["RewardItem"][2] = {}
	tDecComeBackPack_Reward[3301432][30001]["RewardItem"][2]["Id"] = 3009001
	tDecComeBackPack_Reward[3301432][30001]["RewardItem"][2]["Attr"] = "0 2 0 2880 1"
	tDecComeBackPack_Reward[3301432][30001]["Log"] = "0,0,0,0,12000557,2,3003124[3009001],50[2]"

--回归大礼包, 第五次打开
	tDecComeBackPack_Reward[3301432][40001] = {}
	tDecComeBackPack_Reward[3301432][40001]["EventType"] = 152
	tDecComeBackPack_Reward[3301432][40001]["DataType"] = 51
	tDecComeBackPack_Reward[3301432][40001]["RewardDelay"] = 1
	tDecComeBackPack_Reward[3301432][40001]["RewardTimeType"] = 4
	tDecComeBackPack_Reward[3301432][40001]["RewardItem"] = {}
	--究极通神丹大礼包（内含20个）                
	tDecComeBackPack_Reward[3301432][40001]["RewardItem"][1] = {}
	tDecComeBackPack_Reward[3301432][40001]["RewardItem"][1]["Id"] = 3008318
	tDecComeBackPack_Reward[3301432][40001]["RewardItem"][1]["Attr"] = "0 1 3"
	--明亮星陨石*2                                       
	tDecComeBackPack_Reward[3301432][40001]["RewardItem"][2] = {}
	tDecComeBackPack_Reward[3301432][40001]["RewardItem"][2]["Id"] = 3009001
	tDecComeBackPack_Reward[3301432][40001]["RewardItem"][2]["Attr"] = "0 2 0 2880 1"
	tDecComeBackPack_Reward[3301432][40001]["Log"] = "0,0,0,0,12000557,2,3008318[3009001],1[2]"

--回归大礼包, 第六次打开
	tDecComeBackPack_Reward[3301432][50001] = {}
	tDecComeBackPack_Reward[3301432][50001]["EventType"] = 152
	tDecComeBackPack_Reward[3301432][50001]["DataType"] = 51
	tDecComeBackPack_Reward[3301432][50001]["RewardDelay"] = 1
	tDecComeBackPack_Reward[3301432][50001]["RewardTimeType"] = 4
	tDecComeBackPack_Reward[3301432][50001]["RewardItem"] = {}
	--TenderFlameGarment、ColorOfBreeze、ChivalrousDream三选一礼包
	tDecComeBackPack_Reward[3301432][50001]["RewardItem"][1] = {}
	tDecComeBackPack_Reward[3301432][50001]["RewardItem"][1]["Id"] = 3301433
	tDecComeBackPack_Reward[3301432][50001]["RewardItem"][1]["Attr"] = "0 1 0 43200 1"
	--BrightStarStone*2                               
	tDecComeBackPack_Reward[3301432][50001]["RewardItem"][2] = {}
	tDecComeBackPack_Reward[3301432][50001]["RewardItem"][2]["Id"] = 3009001
	tDecComeBackPack_Reward[3301432][50001]["RewardItem"][2]["Attr"] = "0 2 0 2880 1"
	tDecComeBackPack_Reward[3301432][50001]["Log"] = "0,0,0,0,12000557,2,3301433[3009001],1[2]"

--回归大礼包, 第七次打开
	tDecComeBackPack_Reward[3301432][60001] = {}
	tDecComeBackPack_Reward[3301432][60001]["EventType"] = 152
	tDecComeBackPack_Reward[3301432][60001]["DataType"] = 51
	tDecComeBackPack_Reward[3301432][60001]["RewardDelay"] = 1
	tDecComeBackPack_Reward[3301432][60001]["RewardTimeType"] = 4
	tDecComeBackPack_Reward[3301432][60001]["RewardItem"] = {}
	--SmallLotteryTicketBag                                 
	tDecComeBackPack_Reward[3301432][60001]["RewardItem"][1] = {}
	tDecComeBackPack_Reward[3301432][60001]["RewardItem"][1]["Id"] = 729139
	tDecComeBackPack_Reward[3301432][60001]["RewardItem"][1]["Attr"] = ""
	--BrightStarStone*2                                        
	tDecComeBackPack_Reward[3301432][60001]["RewardItem"][2] = {}
	tDecComeBackPack_Reward[3301432][60001]["RewardItem"][2]["Id"] = 3009001
	tDecComeBackPack_Reward[3301432][60001]["RewardItem"][2]["Attr"] = "0 2 0 2880 1"
	--500赠品天石                                                    
	tDecComeBackPack_Reward[3301432][60001]["RewardEMoneyMono"] = {}
	tDecComeBackPack_Reward[3301432][60001]["RewardEMoneyMono"]["Value"] = 500
	tDecComeBackPack_Reward[3301432][60001]["DeleteItem"] = {}
	tDecComeBackPack_Reward[3301432][60001]["DeleteItem"][1] = {}
	tDecComeBackPack_Reward[3301432][60001]["DeleteItem"][1]["Id"] = 3301432
	tDecComeBackPack_Reward[3301432][60001]["Log"] = "0,0,0,0,12000557,2,729139[3009001][3],1[2][500]"

--TenderFlameGarment、ColorOfBreeze、ChivalrousDream三选一礼包
	tDecComeBackPack_Reward[3301433] = {}
	tDecComeBackPack_Reward[3301433][188755] = {}
	tDecComeBackPack_Reward[3301433][188755]["DeleteItem"] = {}
	tDecComeBackPack_Reward[3301433][188755]["DeleteItem"][1] = {}
	tDecComeBackPack_Reward[3301433][188755]["DeleteItem"][1]["Id"] = 3301433
	tDecComeBackPack_Reward[3301433][188755]["RewardItem"] = {}
	tDecComeBackPack_Reward[3301433][188755]["RewardItem"][1] = {}
	tDecComeBackPack_Reward[3301433][188755]["RewardItem"][1]["Id"] = 188755
	tDecComeBackPack_Reward[3301433][188755]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	tDecComeBackPack_Reward[3301433][188755]["Log"] = "0,0,0,0,12000538,2,188755,1"
	tDecComeBackPack_Reward[3301433][192895] = {}
	tDecComeBackPack_Reward[3301433][192895]["DeleteItem"] = {}
	tDecComeBackPack_Reward[3301433][192895]["DeleteItem"][1] = {}
	tDecComeBackPack_Reward[3301433][192895]["DeleteItem"][1]["Id"] = 3301433
	tDecComeBackPack_Reward[3301433][192895]["RewardItem"] = {}
	tDecComeBackPack_Reward[3301433][192895]["RewardItem"][1] = {}
	tDecComeBackPack_Reward[3301433][192895]["RewardItem"][1]["Id"] = 192895
	tDecComeBackPack_Reward[3301433][192895]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	tDecComeBackPack_Reward[3301433][192895]["Log"] = "0,0,0,0,12000538,2,192895,1"
	tDecComeBackPack_Reward[3301433][192625] = {}
	tDecComeBackPack_Reward[3301433][192625]["DeleteItem"] = {}
	tDecComeBackPack_Reward[3301433][192625]["DeleteItem"][1] = {}
	tDecComeBackPack_Reward[3301433][192625]["DeleteItem"][1]["Id"] = 3301433
	tDecComeBackPack_Reward[3301433][192625]["RewardItem"] = {}
	tDecComeBackPack_Reward[3301433][192625]["RewardItem"][1] = {}
	tDecComeBackPack_Reward[3301433][192625]["RewardItem"][1]["Id"] = 192625
	tDecComeBackPack_Reward[3301433][192625]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	tDecComeBackPack_Reward[3301433][192625]["Log"] = "0,0,0,0,12000538,2,200541,1"

--------------逻辑模块---------------
function DecComeBackPack_GetAward(nItemId)
	local nEvent = tDecComeBackPack_Reward[nItemId][1]["EventType"]
	local nType = tDecComeBackPack_Reward[nItemId][1]["DataType"]
	local nData = Get_UserStatisticValue(nEvent,nType)
--检查物品
	if not Item_ChkItem(nItemId) then
		User_TalkChannel2005(tDecComeBackPack_Text["NoItem"])
		return
	end 
	if nData%10000 ==0 then
		nData = nData +1
	end
--获得奖励
	RewardTemplate_UseItemAndMsg(tDecComeBackPack_Reward[nItemId][nData])
end

--检查对话
function DecComeBackPack_ChkValue(nItemId)
	local nUserId = Get_UserId()
	local nEvent = tDecComeBackPack_Reward[nItemId][1]["EventType"]
	local nType = tDecComeBackPack_Reward[nItemId][1]["DataType"]
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId)
--检查物品
	if not Item_ChkItem(nItemId) then
		User_TalkChannel2005(tDecComeBackPack_Text["NoItem"])
		return
	end 
	if nData%10000 ==0 then
		nData = nData +1
	end
--隔天判断
	 if not RewardTemplate_JudgmentStc(tDecComeBackPack_Reward[nItemId][nData]) then 
			tItem[3301432]["Text811"] =string.format(tDecComeBackPack_Text[3301432]["Text811"],tDecComeBackPack_Text[nItemId][nData])
			LinkItemGossipFunc_New(nItemId,"8-1")
			return
	 end 
	LinkItemGossipFunc_New(nItemId,tDecComeBackPack_Duihua[nData] )
end


--打开礼包
function DecComeBackPack_Open(nItemId, nIndex)
	 RewardTemplate_UseItemAndMsg(tDecComeBackPack_Reward[nItemId][nIndex])
end
--------------物品配置---------------
--账号价值5500-10500:
tItem[3301432] = tItem[3301432] or {}
tItem[3301432]["DialogueText"] =tDecComeBackPack_Text[3301432]
tItem[3301432]["Function"] = function(nItemId)
	 DecComeBackPack_ChkValue(nItemId)
end
tItem[3301432]["Text1-1"] = {111,112}
tItem[3301432]["tOption1-1"] = {1,2}

tItem[3301432]["Text2-1"] = {211,212}
tItem[3301432]["tOption2-1"] = {1,2}
tItem[3301432]["Text3-1"] = {311,312}
tItem[3301432]["tOption3-1"] = {1,2}
tItem[3301432]["Text4-1"] = {411,412}
tItem[3301432]["tOption4-1"] = {1,2}
tItem[3301432]["Text5-1"] = {511,512,513}
tItem[3301432]["tOption5-1"] = {1,2}
tItem[3301432]["Text6-1"] = {611,612,613}
tItem[3301432]["tOption6-1"] = {1,2}
tItem[3301432]["Text7-1"] = {711}
tItem[3301432]["tOption7-1"] = {1,2}
tItem[3301432]["Text8-1"] = {811}
tItem[3301432]["tOption8-1"] = {3}
tItem[3301432]["OptionFunc1"] = "DecComeBackPack_GetAward</N>3301432"

--TenderFlameGarment、ColorOfBreeze、ChivalrousDream三选一礼包
tItem[3301433] = tItem[3301433] or {}
tItem[3301433]["DialogueText"] =tDecComeBackPack_Text[3301433]
tItem[3301433]["Text1-1"] = {111}
tItem[3301433]["tOption1-1"] = {1,2,3}
tItem[3301433]["OptionFunc1"] = "DecComeBackPack_Open</N>3301433</N>188755"
tItem[3301433]["OptionFunc2"] = "DecComeBackPack_Open</N>3301433</N>192895"
tItem[3301433]["OptionFunc3"] = "DecComeBackPack_Open</N>3301433</N>192625"




