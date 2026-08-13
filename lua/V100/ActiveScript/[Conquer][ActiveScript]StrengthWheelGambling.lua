------------------------------------------------------------------------------------
--Name:		[英文征服][活动脚本]练气轮盘赌活动
--Purpose:	练气轮盘赌活动
--Creator: 	吴文鑫
--Created:	2015/12/23
------------------------------------------------------------------------------------
-- 消耗气力开启100盘 350 20490
-- 消耗气力开启500盘 350 20491
-- 消耗气力开启1000盘 350 20492
-- 消耗气力开启2000盘 350 20493
-- 免费开启100盘 350 20494
-- 免费开启500盘 350 20495
-- 免费开启1000盘 350 20496
-- 打开礼包共获得气力 350 20497
-- 命名前缀
-- StrengthWheelGambling_
--139,78 判断玩家是否屏蔽二次确认
--139,93 玩家是否领取过背包信
-- 常量表
local tStrengthWheelGambling_Constant = {}
	-- 活动时间
	tStrengthWheelGambling_Constant["ActivityTime"] = tActivityTime["StrengthWheelGambling"]["ActivityTime"]
	tStrengthWheelGambling_Constant["EffectObj"] = "self"
	tStrengthWheelGambling_Constant["EmoneyBuyLog"] = "350	20497	0	0	%d	"
		
		
		
		
local tStrengthWheelGambling_Stc = {}
	tStrengthWheelGambling_Stc["EventData"] = 139
	tStrengthWheelGambling_Stc["TypeData"] = 78
	tStrengthWheelGambling_Stc["Complete"] = 1
	
	
local tStrengthWheelGambling_Item = {}
-- 3008185 00020气力
	tStrengthWheelGambling_Item[3008185] = {}
	tStrengthWheelGambling_Item[3008185]["Strengthvalue"] = 20
	tStrengthWheelGambling_Item[3008185]["Log"] = "0,0,3008185,1,12000285,2,12,20"
	tStrengthWheelGambling_Item[3008185]["Effect_1"] = "angelwing"
	
-- 3008186 00050气力
	tStrengthWheelGambling_Item[3008186] = {}
	tStrengthWheelGambling_Item[3008186]["Strengthvalue"] = 50
	tStrengthWheelGambling_Item[3008186]["Log"] = "0,0,3008186,1,12000285,2,12,50"
	tStrengthWheelGambling_Item[3008186]["Effect_1"] = "angelwing"
	
-- 3008187 00150气力
	tStrengthWheelGambling_Item[3008187] = {}
	tStrengthWheelGambling_Item[3008187]["Strengthvalue"] = 150
	tStrengthWheelGambling_Item[3008187]["Log"] = "0,0,3008187,1,12000285,2,12,150"
	tStrengthWheelGambling_Item[3008187]["Effect_1"] = "angelwing"
	
-- 3008188 00200气力
	tStrengthWheelGambling_Item[3008188] = {}
	tStrengthWheelGambling_Item[3008188]["Strengthvalue"] = 200
	tStrengthWheelGambling_Item[3008188]["Log"] = "0,0,3008188,1,12000285,2,12,200"
	tStrengthWheelGambling_Item[3008188]["Effect_1"] = "angelwing"
	
-- 3008189 00250气力
	tStrengthWheelGambling_Item[3008189] = {}
	tStrengthWheelGambling_Item[3008189]["Strengthvalue"] = 250
	tStrengthWheelGambling_Item[3008189]["Log"] = "0,0,3008189,1,12000285,2,12,250"
	tStrengthWheelGambling_Item[3008189]["Effect_1"] = "angelwing"
	
-- 3008190 00500气力
	tStrengthWheelGambling_Item[3008190] = {}
	tStrengthWheelGambling_Item[3008190]["Strengthvalue"] = 500
	tStrengthWheelGambling_Item[3008190]["Log"] = "0,0,3008190,1,12000285,2,12,500"
	tStrengthWheelGambling_Item[3008190]["Effect_1"] = "angelwing"
	
-- 3008191 00750气力
	tStrengthWheelGambling_Item[3008191] = {}
	tStrengthWheelGambling_Item[3008191]["Strengthvalue"] = 750
	tStrengthWheelGambling_Item[3008191]["Log"] = "0,0,3008191,1,12000285,2,12,750"
	tStrengthWheelGambling_Item[3008191]["Effect_1"] = "angelwing"
	
-- 3008192 00800气力
	tStrengthWheelGambling_Item[3008192] = {}
	tStrengthWheelGambling_Item[3008192]["Strengthvalue"] = 800
	tStrengthWheelGambling_Item[3008192]["Log"] = "0,0,3008192,1,12000285,2,12,800"
	tStrengthWheelGambling_Item[3008192]["Effect_1"] = "angelwing"
	
-- 3008193 01000气力
	tStrengthWheelGambling_Item[3008193] = {}
	tStrengthWheelGambling_Item[3008193]["Strengthvalue"] = 1000
	tStrengthWheelGambling_Item[3008193]["Log"] = "0,0,3008193,1,12000285,2,12,1000"
	tStrengthWheelGambling_Item[3008193]["Effect_1"] = "angelwing"
	
-- 3008194 01250气力
	tStrengthWheelGambling_Item[3008194] = {}
	tStrengthWheelGambling_Item[3008194]["Strengthvalue"] = 1250
	tStrengthWheelGambling_Item[3008194]["Log"] = "0,0,3008194,1,12000285,2,12,1250"
	tStrengthWheelGambling_Item[3008194]["Effect_1"] = "angelwing"
	
-- 3008195 01500气力
	tStrengthWheelGambling_Item[3008195] = {}
	tStrengthWheelGambling_Item[3008195]["Strengthvalue"] = 1500
	tStrengthWheelGambling_Item[3008195]["Log"] = "0,0,3008195,1,12000285,2,12,1500"
	tStrengthWheelGambling_Item[3008195]["Effect_1"] = "angelwing"
	
-- 3008196 02000气力
	tStrengthWheelGambling_Item[3008196] = {}
	tStrengthWheelGambling_Item[3008196]["Strengthvalue"] = 2000
	tStrengthWheelGambling_Item[3008196]["Log"] = "0,0,3008196,1,12000285,2,12,2000"
	tStrengthWheelGambling_Item[3008196]["Effect_1"] = "angelwing"
	
-- 3008197 02500气力
	tStrengthWheelGambling_Item[3008197] = {}
	tStrengthWheelGambling_Item[3008197]["Strengthvalue"] = 2500
	tStrengthWheelGambling_Item[3008197]["Log"] = "0,0,3008197,1,12000285,2,12,2500"
	tStrengthWheelGambling_Item[3008197]["Effect_1"] = "angelwing"
	
-- 3008198 03000气力
	tStrengthWheelGambling_Item[3008198] = {}
	tStrengthWheelGambling_Item[3008198]["Strengthvalue"] = 3000
	tStrengthWheelGambling_Item[3008198]["Log"] = "0,0,3008198,1,12000285,2,12,3000"
	tStrengthWheelGambling_Item[3008198]["Effect_1"] = "angelwing"
	
-- 3008199 04000气力
	tStrengthWheelGambling_Item[3008199] = {}
	tStrengthWheelGambling_Item[3008199]["Strengthvalue"] = 4000
	tStrengthWheelGambling_Item[3008199]["Log"] = "0,0,3008199,1,12000285,2,12,4000"
	tStrengthWheelGambling_Item[3008199]["Effect_1"] = "angelwing"
	
-- 3008200 05000气力
	tStrengthWheelGambling_Item[3008200] = {}
	tStrengthWheelGambling_Item[3008200]["Strengthvalue"] = 5000
	tStrengthWheelGambling_Item[3008200]["Log"] = "0,0,3008200,1,12000285,2,12,5000"
	tStrengthWheelGambling_Item[3008200]["Effect_1"] = "angelwing"
	
-- 3008201 10000气力
	tStrengthWheelGambling_Item[3008201] = {}
	tStrengthWheelGambling_Item[3008201]["Strengthvalue"] = 10000
	tStrengthWheelGambling_Item[3008201]["Log"] = "0,0,3008201,1,12000285,2,12,10000"
	tStrengthWheelGambling_Item[3008201]["Effect_1"] = "angelwing"
	
-- 3008202 20000气力
	tStrengthWheelGambling_Item[3008202] = {}
	tStrengthWheelGambling_Item[3008202]["Strengthvalue"] = 20000
	tStrengthWheelGambling_Item[3008202]["Log"] = "0,0,3008202,1,12000285,2,12,20000"
	tStrengthWheelGambling_Item[3008202]["Effect_1"] = "angelwing"
	
-- 3008203 25000气力
	tStrengthWheelGambling_Item[3008203] = {}
	tStrengthWheelGambling_Item[3008203]["Strengthvalue"] = 25000
	tStrengthWheelGambling_Item[3008203]["Log"] = "0,0,3008203,1,12000285,2,12,25000"
	tStrengthWheelGambling_Item[3008203]["Effect_1"] = "angelwing"
	
-- 3008204 50000气力
	tStrengthWheelGambling_Item[3008204] = {}
	tStrengthWheelGambling_Item[3008204]["Strengthvalue"] = 50000
	tStrengthWheelGambling_Item[3008204]["Log"] = "0,0,3008204,1,12000285,2,12,50000"
	tStrengthWheelGambling_Item[3008204]["Effect_1"] = "angelwing"
	
-- 3008205 100000气力
	tStrengthWheelGambling_Item[3008205] = {}
	tStrengthWheelGambling_Item[3008205]["Strengthvalue"] = 100000
	tStrengthWheelGambling_Item[3008205]["Log"] = "0,0,3008205,1,12000285,2,12,100000"
	tStrengthWheelGambling_Item[3008205]["Effect_1"] = "angelwing"

	
--轮盘逻辑
	tStrengthWheelGambling_Item[3008181] = {}
	tStrengthWheelGambling_Item[3008181]["Free"] = 3008206
	tStrengthWheelGambling_Item[3008181]["Consume"] = 100
	tStrengthWheelGambling_Item[3008181]["Log"] = "0,0,12,100,12000285,1,3008181,1"
	tStrengthWheelGambling_Item[3008181]["Flog"] = "0,0,3008206,1,12000285,2,3008181,1"
	tStrengthWheelGambling_Item[3008181]["Space"] = 1
	tStrengthWheelGambling_Item[3008181]["Task"] = 3589
	tStrengthWheelGambling_Item[3008181]["SEmoneyBuyLog"] = "350	20490	0	0	100	"
	tStrengthWheelGambling_Item[3008181]["FEmoneyBuyLog"] = "350	20494	0	0	1	"
	

	tStrengthWheelGambling_Item[3008182] = {}
	tStrengthWheelGambling_Item[3008182]["Free"] = 3008208
	tStrengthWheelGambling_Item[3008182]["Consume"] = 500
	tStrengthWheelGambling_Item[3008182]["Log"] = "0,0,12,500,12000285,1,3008182,1"
	tStrengthWheelGambling_Item[3008182]["Flog"] = "0,0,3008208,1,12000285,2,3008182,1"
	tStrengthWheelGambling_Item[3008182]["Space"] = 1
	tStrengthWheelGambling_Item[3008182]["Task"] = 3590
	tStrengthWheelGambling_Item[3008182]["SEmoneyBuyLog"] = "350	20491	0	0	500	"
	tStrengthWheelGambling_Item[3008182]["FEmoneyBuyLog"] = "350	20495	0	0	1	"
	
	
	
	tStrengthWheelGambling_Item[3008183] = {}
	tStrengthWheelGambling_Item[3008183]["Free"] = 3008209
	tStrengthWheelGambling_Item[3008183]["Consume"] = 1000
	tStrengthWheelGambling_Item[3008183]["Log"] = "0,0,12,1000,12000285,1,3008183,1"
	tStrengthWheelGambling_Item[3008183]["Flog"] = "0,0,3008209,1,12000285,2,3008183,1"
	tStrengthWheelGambling_Item[3008183]["Space"] = 1
	tStrengthWheelGambling_Item[3008183]["Task"] = 3591
	tStrengthWheelGambling_Item[3008183]["SEmoneyBuyLog"] = "350	20492	0	0	1000	"
	tStrengthWheelGambling_Item[3008183]["FEmoneyBuyLog"] = "350	20496	0	0	1	"
	
	
	
	tStrengthWheelGambling_Item[3008184] = {}
	tStrengthWheelGambling_Item[3008184]["Consume"] = 2000
	tStrengthWheelGambling_Item[3008184]["Log"] = "0,0,12,2000,12000285,1,3008184,1"
	tStrengthWheelGambling_Item[3008184]["Space"] = 1
	tStrengthWheelGambling_Item[3008184]["Task"] = 3592
	tStrengthWheelGambling_Item[3008184]["SEmoneyBuyLog"] = "350	20493	0	0	2000	"
	
	
	
	
	tStrengthWheelGambling_Item[3008207] = {}
	tStrengthWheelGambling_Item[3008207]["Item"] = 3008206
	tStrengthWheelGambling_Item[3008207]["ItemAttr"] = "0 2"
	tStrengthWheelGambling_Item[3008207]["Log"] = "0,0,3008207,1,12000285,1,3008206,1"
	tStrengthWheelGambling_Item[3008207]["Space"] = 1
	tStrengthWheelGambling_Item[3008207]["Effect_1"] = "angelwing"
	

--星陨石礼包配置
-- 明亮星陨石*1
local tStrengthWheelGambling_BackStarItem = {}
	tStrengthWheelGambling_BackStarItem[3302238] = {}
	tStrengthWheelGambling_BackStarItem[3302238]["RewardItem"] = {}
	tStrengthWheelGambling_BackStarItem[3302238]["RewardItem"][1] = {}
	tStrengthWheelGambling_BackStarItem[3302238]["RewardItem"][1]["Id"] = 3009001
	tStrengthWheelGambling_BackStarItem[3302238]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" 
	tStrengthWheelGambling_BackStarItem[3302238]["LogId"] = "12000285"
	tStrengthWheelGambling_BackStarItem[3302238]["DeleteItem"] = {}
	tStrengthWheelGambling_BackStarItem[3302238]["DeleteItem"][1] = {}
	tStrengthWheelGambling_BackStarItem[3302238]["DeleteItem"][1]["Id"] = 3302238
-- 明亮星陨石*2
	tStrengthWheelGambling_BackStarItem[3302239] = {}
	tStrengthWheelGambling_BackStarItem[3302239]["RewardItem"] = {}
	tStrengthWheelGambling_BackStarItem[3302239]["RewardItem"][1] = {}
	tStrengthWheelGambling_BackStarItem[3302239]["RewardItem"][1]["Id"] = 3009001
	tStrengthWheelGambling_BackStarItem[3302239]["RewardItem"][1]["Attr"] = "0 2 0 2880 1" 
	tStrengthWheelGambling_BackStarItem[3302239]["LogId"] = "12000285"
	tStrengthWheelGambling_BackStarItem[3302239]["DeleteItem"] = {}
	tStrengthWheelGambling_BackStarItem[3302239]["DeleteItem"][1] = {}
	tStrengthWheelGambling_BackStarItem[3302239]["DeleteItem"][1]["Id"] = 3302239
-- 明亮星陨石*6
	tStrengthWheelGambling_BackStarItem[3302240] = {}
	tStrengthWheelGambling_BackStarItem[3302240]["RewardItem"] = {}
	tStrengthWheelGambling_BackStarItem[3302240]["RewardItem"][1] = {}
	tStrengthWheelGambling_BackStarItem[3302240]["RewardItem"][1]["Id"] = 3009001
	tStrengthWheelGambling_BackStarItem[3302240]["RewardItem"][1]["Attr"] = "0 6 0 2880 1" 
	tStrengthWheelGambling_BackStarItem[3302240]["LogId"] = "12000285"
	tStrengthWheelGambling_BackStarItem[3302240]["DeleteItem"] = {}
	tStrengthWheelGambling_BackStarItem[3302240]["DeleteItem"][1] = {}
	tStrengthWheelGambling_BackStarItem[3302240]["DeleteItem"][1]["Id"] = 3302240
-- 晶莹星陨石*1
	tStrengthWheelGambling_BackStarItem[3302241] = {}
	tStrengthWheelGambling_BackStarItem[3302241]["RewardItem"] = {}
	tStrengthWheelGambling_BackStarItem[3302241]["RewardItem"][1] = {}
	tStrengthWheelGambling_BackStarItem[3302241]["RewardItem"][1]["Id"] = 3009002
	tStrengthWheelGambling_BackStarItem[3302241]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" 
	tStrengthWheelGambling_BackStarItem[3302241]["LogId"] = "12000285"
	tStrengthWheelGambling_BackStarItem[3302241]["DeleteItem"] = {}
	tStrengthWheelGambling_BackStarItem[3302241]["DeleteItem"][1] = {}
	tStrengthWheelGambling_BackStarItem[3302241]["DeleteItem"][1]["Id"] = 3302241

-- 晶莹星陨石*2
	tStrengthWheelGambling_BackStarItem[3302242] = {}
	tStrengthWheelGambling_BackStarItem[3302242]["RewardItem"] = {}
	tStrengthWheelGambling_BackStarItem[3302242]["RewardItem"][1] = {}
	tStrengthWheelGambling_BackStarItem[3302242]["RewardItem"][1]["Id"] = 3009002
	tStrengthWheelGambling_BackStarItem[3302242]["RewardItem"][1]["Attr"] = "0 2 0 2880 1" 
	tStrengthWheelGambling_BackStarItem[3302242]["LogId"] = "12000285"
	tStrengthWheelGambling_BackStarItem[3302242]["DeleteItem"] = {}
	tStrengthWheelGambling_BackStarItem[3302242]["DeleteItem"][1] = {}
	tStrengthWheelGambling_BackStarItem[3302242]["DeleteItem"][1]["Id"] = 3302242

-- 晶莹星陨石*6
	tStrengthWheelGambling_BackStarItem[3302243] = {}
	tStrengthWheelGambling_BackStarItem[3302243]["RewardItem"] = {}
	tStrengthWheelGambling_BackStarItem[3302243]["RewardItem"][1] = {}
	tStrengthWheelGambling_BackStarItem[3302243]["RewardItem"][1]["Id"] = 3009002
	tStrengthWheelGambling_BackStarItem[3302243]["RewardItem"][1]["Attr"] = "0 6 0 2880 1" 
	tStrengthWheelGambling_BackStarItem[3302243]["LogId"] = "12000285"
	tStrengthWheelGambling_BackStarItem[3302243]["DeleteItem"] = {}
	tStrengthWheelGambling_BackStarItem[3302243]["DeleteItem"][1] = {}
	tStrengthWheelGambling_BackStarItem[3302243]["DeleteItem"][1]["Id"] = 3302243
	
	
--气力补充包
	tStrengthWheelGambling_BackStarItem[3302282] = {}
	tStrengthWheelGambling_BackStarItem[3302282]["RewardStrengthValue"] = {}
	tStrengthWheelGambling_BackStarItem[3302282]["RewardStrengthValue"]["Value"] = 1000
	tStrengthWheelGambling_BackStarItem[3302282]["LogId"] = "12000285"
	tStrengthWheelGambling_BackStarItem[3302282]["DeleteItem"] = {}
	tStrengthWheelGambling_BackStarItem[3302282]["DeleteItem"][1] = {}
	tStrengthWheelGambling_BackStarItem[3302282]["DeleteItem"][1]["Id"] = 3302282
	
	tStrengthWheelGambling_BackStarItem[3302283] = {}
	tStrengthWheelGambling_BackStarItem[3302283]["RewardStrengthValue"] = {}
	tStrengthWheelGambling_BackStarItem[3302283]["RewardStrengthValue"]["Value"] = 5000
	tStrengthWheelGambling_BackStarItem[3302283]["LogId"] = "12000285"
	tStrengthWheelGambling_BackStarItem[3302283]["DeleteItem"] = {}
	tStrengthWheelGambling_BackStarItem[3302283]["DeleteItem"][1] = {}
	tStrengthWheelGambling_BackStarItem[3302283]["DeleteItem"][1]["Id"] = 3302283
	
	tStrengthWheelGambling_BackStarItem[3302284] = {}
	tStrengthWheelGambling_BackStarItem[3302284]["RewardStrengthValue"] = {}
	tStrengthWheelGambling_BackStarItem[3302284]["RewardStrengthValue"]["Value"] = 50000
	tStrengthWheelGambling_BackStarItem[3302284]["LogId"] = "12000285"
	tStrengthWheelGambling_BackStarItem[3302284]["DeleteItem"] = {}
	tStrengthWheelGambling_BackStarItem[3302284]["DeleteItem"][1] = {}
	tStrengthWheelGambling_BackStarItem[3302284]["DeleteItem"][1]["Id"] = 3302284
	
	
	
--------------------------------------礼包逻辑-------------------------------------------
--轮盘逻辑
function StrengthWheelGambling_OpenWheelMain(nItemId)
	if not Sys_ChkFullTime(tStrengthWheelGambling_Constant["ActivityTime"]) then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			User_TalkChannel2005(tStrengthWheelGambling_Text["Delete"])
		end
		return
	end 
	Sys_DialogTaskClear()
	local sStrength = tStrengthWheelGambling_Text[nItemId]["Strength"]
	local sItemName = tStrengthWheelGambling_Text[nItemId]["Free"]
	local sMax = tStrengthWheelGambling_Text[nItemId]["Max"]
	
	if sItemName == nil then
		local sStr = string.format(tStrengthWheelGambling_Text["Wheel"]["Text1"],sStrength,sMax)
		Sys_DialogText(sStr)
	else
		local sStr = string.format(tStrengthWheelGambling_Text["Wheel"]["Text2"],sStrength,sItemName,sMax)
		Sys_DialogText(sStr)
		Sys_DialogText(tStrengthWheelGambling_Text["Wheel"]["Text3"])
	end
	
	Sys_DialogOption(tStrengthWheelGambling_Text["Wheel"]["Option1"],"</F>StrengthWheelGambling_OpenWheel</N>" .. nItemId)
	Sys_DialogEnd()
end


function StrengthWheelGambling_OpenWheel(nItemId)
	if not Sys_ChkFullTime(tStrengthWheelGambling_Constant["ActivityTime"]) then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			User_TalkChannel2005(tStrengthWheelGambling_Text["Delete"])
		end
		return
	end
	
	local nEventData = tStrengthWheelGambling_Stc["EventData"]
	local nTypeData = tStrengthWheelGambling_Stc["TypeData"]
	
	if Task_ChkStcValue(nEventData,nTypeData,"==",0) then
		local sStrength = tStrengthWheelGambling_Text[nItemId]["Strength"]
		
		local sStr = string.format(tStrengthWheelGambling_Text["Wheel"]["Text4"],sStrength)
		Sys_DialogText(sStr)
		
		
		local sItemName = tStrengthWheelGambling_Text[nItemId]["Free"]
		if sItemName ~= nil then
			Sys_DialogText(tStrengthWheelGambling_Text["Wheel"]["Text3"])
		end
		

		local sOpt = string.format(tStrengthWheelGambling_Text["Wheel"]["Option2"],sStrength)
		Sys_DialogOption(sOpt,"</F>StrengthWheelGambling_OpenWheel1</N>" .. nItemId)
		
		Sys_DialogOption(tStrengthWheelGambling_Text["Wheel"]["Option3"],"</F>StrengthWheelGambling_CancelSecond</N>" .. nItemId)
		Sys_DialogOption(tStrengthWheelGambling_Text["Wheel"]["Option4"],"</F>NULL")
		Sys_DialogEnd()
	else
		StrengthWheelGambling_OpenWheel1(nItemId)
	end
end

function StrengthWheelGambling_CancelSecond(nItemId)
	local nEventData = tStrengthWheelGambling_Stc["EventData"]
	local nTypeData = tStrengthWheelGambling_Stc["TypeData"]
	local nComplete = tStrengthWheelGambling_Stc["Complete"]
	Task_SetStatistic(nEventData,nTypeData,nComplete,1)
	Sys_DialogText(tStrengthWheelGambling_Text["Wheel"]["Text5"])
	Sys_DialogOption(tStrengthWheelGambling_Text["Wheel"]["Option5"],"</F>StrengthWheelGambling_OpenWheelMain</N>" .. nItemId)
	Sys_DialogEnd()
end

function StrengthWheelGambling_OpenWheel1(nItemId)

	if not Sys_ChkFullTime(tStrengthWheelGambling_Constant["ActivityTime"]) then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			User_TalkChannel2005(tStrengthWheelGambling_Text["Delete"])
		end
		return
	end


	local nTaskId = tStrengthWheelGambling_Item[nItemId]["Task"]
--判断任务是否可以创建
	if not Task_ChkTaskDetail(nTaskId) then
		if not Task_AddTaskDetail(nTaskId) then
			User_TalkChannel2005(tStrengthWheelGambling_Text["Wheel"]["Text6"])
			return
		end
	end

	local nSpace = tStrengthWheelGambling_Item[nItemId]["Space"]
	if not User_CheckLeftSpace(nSpace) then
		User_TalkChannel2005(tStrengthWheelGambling_Text["NoSpace"])
		return
	end
	
	
	
	local nFree = tStrengthWheelGambling_Item[nItemId]["Free"]
--是否可以使用免费券
	if nFree ~= nil then
		--有免费券优先走扣除免费券的逻辑
		if Item_ChkItem(nFree) and Item_DelItem(nFree) then
			local nTaskId = tStrengthWheelGambling_Item[nItemId]["Task"]
			Task_SetTaskDetailCompleteFlag(nTaskId,1)
			User_TaskReward(nTaskId)
			local sLog = tStrengthWheelGambling_Item[nItemId]["Flog"]
			Sys_SaveActionFestivalLog(sLog)
			Sys_SaveEmoneyBuy(tStrengthWheelGambling_Item[nItemId]["FEmoneyBuyLog"])
			return
		end
	end
	
	local nUserStre = Get_UserStrengthValue()
	local nConsume = tStrengthWheelGambling_Item[nItemId]["Consume"]
--不能使用免费券或身上没有免费券判断气力
	if (nUserStre >= nConsume) and User_AddStrengthValue(-nConsume) then
		Task_SetTaskDetailCompleteFlag(nTaskId,1)
		User_TaskReward(nTaskId)
		local sLog = tStrengthWheelGambling_Item[nItemId]["Log"]
		Sys_SaveActionFestivalLog(sLog)
		Sys_SaveEmoneyBuy(tStrengthWheelGambling_Item[nItemId]["SEmoneyBuyLog"])
	else
		Sys_DialogText(tStrengthWheelGambling_Text["Wheel"]["Text7"])
		Sys_DialogOption(tStrengthWheelGambling_Text["Wheel"]["Option6"],"</F>NULL")
		Sys_DialogEnd()
	end
end






--气力值礼包逻辑
function StrengthWheelGambling_UseStrengthPack(nItemId)
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		-- 给气力值
		User_AddStrengthValue(tStrengthWheelGambling_Item[nItemId]["Strengthvalue"])
		
		local sEffect = tStrengthWheelGambling_Item[nItemId]["Effect_1"]
		User_EffectAdd(tStrengthWheelGambling_Constant["EffectObj"],sEffect)
		
		local sLog = tStrengthWheelGambling_Item[nItemId]["Log"]
		Sys_SaveActionFestivalLog(sLog)
		
		local sELog = string.format(tStrengthWheelGambling_Constant["EmoneyBuyLog"],tStrengthWheelGambling_Item[nItemId]["Strengthvalue"])
		Sys_SaveEmoneyBuy(sELog)
		
		
		local sContent = tStrengthWheelGambling_Text[nItemId]["GetStrength"]
		User_TalkChannel2005(sContent)
	end
end

--免费抽奖道具礼包逻辑
function StrengthWheelGambling_UseFreePack(nItemId)
	local nSpace = tStrengthWheelGambling_Item[nItemId]["Space"]
	local nItem = tStrengthWheelGambling_Item[nItemId]["Item"]
	local nItemAttr = tStrengthWheelGambling_Item[nItemId]["ItemAttr"]
	
	if not Sys_ChkFullTime(tStrengthWheelGambling_Constant["ActivityTime"]) then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			User_TalkChannel2005(tStrengthWheelGambling_Text["Delete"])
		end
		return
	end 
	
	if not User_CheckLeftSpace(nSpace) then
		User_TalkChannel2005(tStrengthWheelGambling_Text["NoSpace"])
		return
	end
	
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		Item_AddNewItem(nItem,nItemAttr)
		local sEffect = tStrengthWheelGambling_Item[nItemId]["Effect_1"]
		User_EffectAdd(tStrengthWheelGambling_Constant["EffectObj"],sEffect)
		
		local sLog = tStrengthWheelGambling_Item[nItemId]["Log"]
		Sys_SaveActionFestivalLog(sLog)
		
		local sContent = tStrengthWheelGambling_Text[nItemId]["GetFree"]
		User_TalkChannel2005(sContent)
	end

end


--免费券逻辑
--过期删除
function StrengthWheelGambling_UseFreeTicket(nItemId)
	if not Sys_ChkFullTime(tStrengthWheelGambling_Constant["ActivityTime"]) then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			User_TalkChannel2005(tStrengthWheelGambling_Text["Delete"])
		end
		return
	end 
end



--上线清二次确认掩码
function StrengthWheelGambling_ClearStc()
	local nEventData = tStrengthWheelGambling_Stc["EventData"]
	local nTypeData = tStrengthWheelGambling_Stc["TypeData"]
	Task_SetStatistic(nEventData,nTypeData,0,1)
end

function StrengthWheelGambling_OpenBackStarPack(nItemId)
	RewardTemplate_UseItemAndMsg(tStrengthWheelGambling_BackStarItem[nItemId])
end




--------------------------------------物品配置-------------------------------------------

--气力礼包
-- 3008185 00020气力
tItem[3008185] = tItem[3008185] or {}
tItem[3008185]["Function"] = function(nItemId,sItemName)
	StrengthWheelGambling_UseStrengthPack(nItemId)
end

-- 3008186 00050气力
tItem[3008186] = tItem[3008186] or {}
tItem[3008186]["Function"] = function(nItemId,sItemName)
	StrengthWheelGambling_UseStrengthPack(nItemId)
end

-- 3008187 00150气力
tItem[3008187] = tItem[3008187] or {}
tItem[3008187]["Function"] = function(nItemId,sItemName)
	StrengthWheelGambling_UseStrengthPack(nItemId)
end

-- 3008188 00200气力
tItem[3008188] = tItem[3008188] or {}
tItem[3008188]["Function"] = function(nItemId,sItemName)
	StrengthWheelGambling_UseStrengthPack(nItemId)
end

-- 3008189 00250气力
tItem[3008189] = tItem[3008189] or {}
tItem[3008189]["Function"] = function(nItemId,sItemName)
	StrengthWheelGambling_UseStrengthPack(nItemId)
end

-- 3008190 00500气力
tItem[3008190] = tItem[3008190] or {}
tItem[3008190]["Function"] = function(nItemId,sItemName)
	StrengthWheelGambling_UseStrengthPack(nItemId)
end

-- 3008191 00750气力
tItem[3008191] = tItem[3008191] or {}
tItem[3008191]["Function"] = function(nItemId,sItemName)
	StrengthWheelGambling_UseStrengthPack(nItemId)
end

-- 3008192 00800气力
tItem[3008192] = tItem[3008192] or {}
tItem[3008192]["Function"] = function(nItemId,sItemName)
	StrengthWheelGambling_UseStrengthPack(nItemId)
end

-- 3008193 01000气力
tItem[3008193] = tItem[3008193] or {}
tItem[3008193]["Function"] = function(nItemId,sItemName)
	StrengthWheelGambling_UseStrengthPack(nItemId)
end

-- 3008194 01250气力
tItem[3008194] = tItem[3008194] or {}
tItem[3008194]["Function"] = function(nItemId,sItemName)
	StrengthWheelGambling_UseStrengthPack(nItemId)
end

-- 3008195 01500气力
tItem[3008195] = tItem[3008195] or {}
tItem[3008195]["Function"] = function(nItemId,sItemName)
	StrengthWheelGambling_UseStrengthPack(nItemId)
end

-- 3008196 02000气力
tItem[3008196] = tItem[3008196] or {}
tItem[3008196]["Function"] = function(nItemId,sItemName)
	StrengthWheelGambling_UseStrengthPack(nItemId)
end

-- 3008197 02500气力
tItem[3008197] = tItem[3008197] or {}
tItem[3008197]["Function"] = function(nItemId,sItemName)
	StrengthWheelGambling_UseStrengthPack(nItemId)
end

-- 3008198 03000气力
tItem[3008198] = tItem[3008198] or {}
tItem[3008198]["Function"] = function(nItemId,sItemName)
	StrengthWheelGambling_UseStrengthPack(nItemId)
end

-- 3008199 04000气力
tItem[3008199] = tItem[3008199] or {}
tItem[3008199]["Function"] = function(nItemId,sItemName)
	StrengthWheelGambling_UseStrengthPack(nItemId)
end

-- 3008200 05000气力
tItem[3008200] = tItem[3008200] or {}
tItem[3008200]["Function"] = function(nItemId,sItemName)
	StrengthWheelGambling_UseStrengthPack(nItemId)
end

-- 3008201 10000气力
tItem[3008201] = tItem[3008201] or {}
tItem[3008201]["Function"] = function(nItemId,sItemName)
	StrengthWheelGambling_UseStrengthPack(nItemId)
end

-- 3008202 20000气力
tItem[3008202] = tItem[3008202] or {}
tItem[3008202]["Function"] = function(nItemId,sItemName)
	StrengthWheelGambling_UseStrengthPack(nItemId)
end

-- 3008203 25000气力
tItem[3008203] = tItem[3008203] or {}
tItem[3008203]["Function"] = function(nItemId,sItemName)
	StrengthWheelGambling_UseStrengthPack(nItemId)
end

-- 3008204 50000气力
tItem[3008204] = tItem[3008204] or {}
tItem[3008204]["Function"] = function(nItemId,sItemName)
	StrengthWheelGambling_UseStrengthPack(nItemId)
end

-- 3008205 100000气力
tItem[3008205] = tItem[3008205] or {}
tItem[3008205]["Function"] = function(nItemId,sItemName)
	StrengthWheelGambling_UseStrengthPack(nItemId)
end

--3008207 青铜炼气轮盘免费券*2
tItem[3008207] = tItem[3008207] or {}
tItem[3008207]["Function"] = function(nItemId,sItemName)
	StrengthWheelGambling_UseFreePack(nItemId)
end



--免费券的逻辑
tItem[3008206] = tItem[3008206] or {}
tItem[3008206]["Function"] = function(nItemId,sItemName)
	StrengthWheelGambling_UseFreeTicket(nItemId)
end

tItem[3008208] = tItem[3008208] or {}
tItem[3008208]["Function"] = function(nItemId,sItemName)
	StrengthWheelGambling_UseFreeTicket(nItemId)
end

tItem[3008209] = tItem[3008209] or {}
tItem[3008209]["Function"] = function(nItemId,sItemName)
	StrengthWheelGambling_UseFreeTicket(nItemId)
end

--星陨石礼包
tItem[3302238] = tItem[3302238] or {}
tItem[3302238]["Function"] = function(nItemId,sItemName)
	StrengthWheelGambling_OpenBackStarPack(nItemId)
end

tItem[3302239] = tItem[3302238] or {}
tItem[3302240] = tItem[3302238] or {}
tItem[3302241] = tItem[3302238] or {}
tItem[3302242] = tItem[3302238] or {}
tItem[3302243] = tItem[3302238] or {}


--气力补充包
tItem[3302282] = tItem[3302238] or {}
tItem[3302283] = tItem[3302238] or {}
tItem[3302284] = tItem[3302238] or {}








--上线触发
-- tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
-- table.insert(tSystem_PlayLogin_Func,StrengthWheelGambling_ClearStc)

