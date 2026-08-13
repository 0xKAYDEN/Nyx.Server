-------------------------------------------------------------------------------------------------------------------
--Name:		[征服][任务脚本]战士觉醒老玩家召回活动.lua
--Purpose:	战士觉醒老玩家召回活动
--Creator: 	郑鋆
--Created:	2016/06/24
-------------------------------------------------------------------------------------------------------------------

-- 命名前缀
-- WarriorAwakening_

-- 掩码说明
-- 146	60	礼包打开的次数

local tWarriorAwakening_Stc = {}
	tWarriorAwakening_Stc["EventType"] = 146
	tWarriorAwakening_Stc["DataType"] = 60
	tWarriorAwakening_Stc["MaxData"] = 15

local tWarriorAwakening_Item = {}
	-- 烈火柔情礼包
	tWarriorAwakening_Item[3200631] = {}
	tWarriorAwakening_Item[3200631]["RewardItem"] = {}
	tWarriorAwakening_Item[3200631]["RewardItem"][1] = {}
	tWarriorAwakening_Item[3200631]["RewardItem"][1]["Id"] = 3009002
	tWarriorAwakening_Item[3200631]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tWarriorAwakening_Item[3200631]["RewardItem"][2] = {}
	tWarriorAwakening_Item[3200631]["RewardItem"][2]["Id"] = 3200632
	tWarriorAwakening_Item[3200631]["RewardItem"][2]["Attr"] = "0 1"
	tWarriorAwakening_Item[3200631]["RewardItem"][3] = {}
	tWarriorAwakening_Item[3200631]["RewardItem"][3]["Id"] = 624239
	tWarriorAwakening_Item[3200631]["RewardItem"][3]["Attr"] = "0 1 3"
	tWarriorAwakening_Item[3200631]["DeleteItem"] = {}
	tWarriorAwakening_Item[3200631]["DeleteItem"][1] = {}
	tWarriorAwakening_Item[3200631]["DeleteItem"][1]["Id"] = 3200631
	tWarriorAwakening_Item[3200631]["Talk"] = tWarriorAwakening_Text[3200631]
	tWarriorAwakening_Item[3200631]["LogId"] = 12000441

	-- 浓情蜜意礼包
	tWarriorAwakening_Item[3200632] = {}
	tWarriorAwakening_Item[3200632][1] = {}
	tWarriorAwakening_Item[3200632][1]["RewardItem"] = {}
	tWarriorAwakening_Item[3200632][1]["RewardItem"][1] = {}
	tWarriorAwakening_Item[3200632][1]["RewardItem"][1]["Id"] = 751999
	tWarriorAwakening_Item[3200632][1]["RewardItem"][1]["Attr"] = "0 1"
	tWarriorAwakening_Item[3200632][1]["DeleteItem"] = {}
	tWarriorAwakening_Item[3200632][1]["DeleteItem"][1] = {}
	tWarriorAwakening_Item[3200632][1]["DeleteItem"][1]["Id"] = 3200632
	tWarriorAwakening_Item[3200632][1]["Talk"] = tWarriorAwakening_Text[3200632][751999]
	tWarriorAwakening_Item[3200632][1]["LogId"] = 12000441
	
	tWarriorAwakening_Item[3200632][2] = {}
	tWarriorAwakening_Item[3200632][2]["RewardItem"] = {}
	tWarriorAwakening_Item[3200632][2]["RewardItem"][1] = {}
	tWarriorAwakening_Item[3200632][2]["RewardItem"][1]["Id"] = 756999
	tWarriorAwakening_Item[3200632][2]["RewardItem"][1]["Attr"] = "0 1"
	tWarriorAwakening_Item[3200632][2]["DeleteItem"] = {}
	tWarriorAwakening_Item[3200632][2]["DeleteItem"][1] = {}
	tWarriorAwakening_Item[3200632][2]["DeleteItem"][1]["Id"] = 3200632
	tWarriorAwakening_Item[3200632][2]["Talk"] = tWarriorAwakening_Text[3200632][756999]
	tWarriorAwakening_Item[3200632][2]["LogId"] = 12000441
	
	-- 战魂崛起一阶礼包
	-- +1赤炼石（赠）	 730001	1
	-- 微光星陨石	3009000	5
	-- 7天1%神佑武器外套（赠）	728597	1
	-- 27点天石（赠）		1
	tWarriorAwakening_Item[3200633] = {}
	tWarriorAwakening_Item[3200633]["RewardItem"] = {}
	tWarriorAwakening_Item[3200633]["RewardItem"][1] = {}
	tWarriorAwakening_Item[3200633]["RewardItem"][1]["Id"] =  730001
	tWarriorAwakening_Item[3200633]["RewardItem"][1]["Attr"] = "0 1 3"
	tWarriorAwakening_Item[3200633]["RewardItem"][2] = {}
	tWarriorAwakening_Item[3200633]["RewardItem"][2]["Id"] = 3009000
	tWarriorAwakening_Item[3200633]["RewardItem"][2]["Attr"] = "0 5 0 2880 1"
	tWarriorAwakening_Item[3200633]["RewardItem"][3] = {}
	tWarriorAwakening_Item[3200633]["RewardItem"][3]["Id"] = 728597
	tWarriorAwakening_Item[3200633]["RewardItem"][3]["Attr"] = "0 1 3"
	tWarriorAwakening_Item[3200633]["RewardEMoneyMono"] = {}
	tWarriorAwakening_Item[3200633]["RewardEMoneyMono"]["Value"] = 27
	tWarriorAwakening_Item[3200633]["DeleteItem"] = {}
	tWarriorAwakening_Item[3200633]["DeleteItem"][1] = {}
	tWarriorAwakening_Item[3200633]["DeleteItem"][1]["Id"] = 3200633
	tWarriorAwakening_Item[3200633]["Talk"] = tWarriorAwakening_Text[3200633]
	tWarriorAwakening_Item[3200633]["LogId"] = 12000441
	tWarriorAwakening_Item[3200633]["EMoneyMono"] = tWarriorAwakening_Text["EmoneyMono"]
	
	-- 战魂崛起二阶礼包
	-- +2赤炼石（赠）	 730002	1
	-- 微光星陨石	3009000	10
	-- 7天1%神佑武器外套（赠）	728597	1
	-- 50点天石（赠）		1
	tWarriorAwakening_Item[3200634] = {}
	tWarriorAwakening_Item[3200634]["RewardItem"] = {}
	tWarriorAwakening_Item[3200634]["RewardItem"][1] = {}
	tWarriorAwakening_Item[3200634]["RewardItem"][1]["Id"] =  730002
	tWarriorAwakening_Item[3200634]["RewardItem"][1]["Attr"] = "0 1 3"
	tWarriorAwakening_Item[3200634]["RewardItem"][2] = {}
	tWarriorAwakening_Item[3200634]["RewardItem"][2]["Id"] = 3009000
	tWarriorAwakening_Item[3200634]["RewardItem"][2]["Attr"] = "0 10 0 2880 1"
	tWarriorAwakening_Item[3200634]["RewardItem"][3] = {}
	tWarriorAwakening_Item[3200634]["RewardItem"][3]["Id"] = 728597
	tWarriorAwakening_Item[3200634]["RewardItem"][3]["Attr"] = "0 1 3"
	tWarriorAwakening_Item[3200634]["RewardEMoneyMono"] = {}
	tWarriorAwakening_Item[3200634]["RewardEMoneyMono"]["Value"] = 50
	tWarriorAwakening_Item[3200634]["DeleteItem"] = {}
	tWarriorAwakening_Item[3200634]["DeleteItem"][1] = {}
	tWarriorAwakening_Item[3200634]["DeleteItem"][1]["Id"] = 3200634
	tWarriorAwakening_Item[3200634]["Talk"] = tWarriorAwakening_Text[3200634]
	tWarriorAwakening_Item[3200634]["LogId"] = 12000441
	tWarriorAwakening_Item[3200634]["EMoneyMono"] = tWarriorAwakening_Text["EmoneyMono"]
	
	-- 战魂崛起三阶礼包
	-- +3赤炼石（赠）	730003	1
	-- 明亮星陨石		3009001	2
	-- 7天1%神佑心有灵犀幻武器外套礼包（赠）	3004547	2
	-- 100点天石（赠）		1
	tWarriorAwakening_Item[3200635] = {}
	tWarriorAwakening_Item[3200635]["RewardItem"] = {}
	tWarriorAwakening_Item[3200635]["RewardItem"][1] = {}
	tWarriorAwakening_Item[3200635]["RewardItem"][1]["Id"] =  730003
	tWarriorAwakening_Item[3200635]["RewardItem"][1]["Attr"] = "0 1 3"
	tWarriorAwakening_Item[3200635]["RewardItem"][2] = {}
	tWarriorAwakening_Item[3200635]["RewardItem"][2]["Id"] = 3009001
	tWarriorAwakening_Item[3200635]["RewardItem"][2]["Attr"] = "0 2 0 2880 1"
	tWarriorAwakening_Item[3200635]["RewardItem"][3] = {}
	tWarriorAwakening_Item[3200635]["RewardItem"][3]["Id"] = 3004547
	tWarriorAwakening_Item[3200635]["RewardItem"][3]["Attr"] = "0 2 3"
	tWarriorAwakening_Item[3200635]["RewardEMoneyMono"] = {}
	tWarriorAwakening_Item[3200635]["RewardEMoneyMono"]["Value"] = 100
	tWarriorAwakening_Item[3200635]["DeleteItem"] = {}
	tWarriorAwakening_Item[3200635]["DeleteItem"][1] = {}
	tWarriorAwakening_Item[3200635]["DeleteItem"][1]["Id"] = 3200635
	tWarriorAwakening_Item[3200635]["Talk"] = tWarriorAwakening_Text[3200635]
	tWarriorAwakening_Item[3200635]["LogId"] = 12000441
	tWarriorAwakening_Item[3200635]["EMoneyMono"] = tWarriorAwakening_Text["EmoneyMono"]
	
	-- 战魂崛起四阶礼包
	-- +4赤炼石（赠）	730004	1
	-- 明亮星陨石	3009001	5
	-- 200点天石（赠）		1
	tWarriorAwakening_Item[3200636] = {}
	tWarriorAwakening_Item[3200636]["RewardItem"] = {}
	tWarriorAwakening_Item[3200636]["RewardItem"][1] = {}
	tWarriorAwakening_Item[3200636]["RewardItem"][1]["Id"] =  730004
	tWarriorAwakening_Item[3200636]["RewardItem"][1]["Attr"] = "0 1 3"
	tWarriorAwakening_Item[3200636]["RewardItem"][2] = {}
	tWarriorAwakening_Item[3200636]["RewardItem"][2]["Id"] = 3009001
	tWarriorAwakening_Item[3200636]["RewardItem"][2]["Attr"] = "0 5 0 2880 1"
	tWarriorAwakening_Item[3200636]["RewardEMoneyMono"] = {}
	tWarriorAwakening_Item[3200636]["RewardEMoneyMono"]["Value"] = 200
	tWarriorAwakening_Item[3200636]["DeleteItem"] = {}
	tWarriorAwakening_Item[3200636]["DeleteItem"][1] = {}
	tWarriorAwakening_Item[3200636]["DeleteItem"][1]["Id"] = 3200636
	tWarriorAwakening_Item[3200636]["Talk"] = tWarriorAwakening_Text[3200636]
	tWarriorAwakening_Item[3200636]["LogId"] = 12000441
	tWarriorAwakening_Item[3200636]["EMoneyMono"] = tWarriorAwakening_Text["EmoneyMono"]
	
	-- 战魂崛起五阶礼包
	-- +5赤炼石（赠）	730005	1
	-- 晶莹星陨石	3009002	1
	-- 270点天石（赠）		1
	tWarriorAwakening_Item[3200637] = {}
	tWarriorAwakening_Item[3200637]["RewardItem"] = {}
	tWarriorAwakening_Item[3200637]["RewardItem"][1] = {}
	tWarriorAwakening_Item[3200637]["RewardItem"][1]["Id"] =  730005
	tWarriorAwakening_Item[3200637]["RewardItem"][1]["Attr"] = "0 1 3"
	tWarriorAwakening_Item[3200637]["RewardItem"][2] = {}
	tWarriorAwakening_Item[3200637]["RewardItem"][2]["Id"] = 3009002
	tWarriorAwakening_Item[3200637]["RewardItem"][2]["Attr"] = "0 1 0 2880 1"
	tWarriorAwakening_Item[3200637]["RewardEMoneyMono"] = {}
	tWarriorAwakening_Item[3200637]["RewardEMoneyMono"]["Value"] = 270
	tWarriorAwakening_Item[3200637]["DeleteItem"] = {}
	tWarriorAwakening_Item[3200637]["DeleteItem"][1] = {}
	tWarriorAwakening_Item[3200637]["DeleteItem"][1]["Id"] = 3200637
	tWarriorAwakening_Item[3200637]["Talk"] = tWarriorAwakening_Text[3200637]
	tWarriorAwakening_Item[3200637]["LogId"] = 12000441
	tWarriorAwakening_Item[3200637]["EMoneyMono"] = tWarriorAwakening_Text["EmoneyMono"]
	
	-- 战魂崛起六阶礼包
	-- +5赤炼石（赠）	730005
	-- 晶莹星陨石	3009002
	-- 500点天石（赠）	
	tWarriorAwakening_Item[3200638] = {}
	tWarriorAwakening_Item[3200638]["RewardItem"] = {}
	tWarriorAwakening_Item[3200638]["RewardItem"][1] = {}
	tWarriorAwakening_Item[3200638]["RewardItem"][1]["Id"] =  730005
	tWarriorAwakening_Item[3200638]["RewardItem"][1]["Attr"] = "0 1 3"
	tWarriorAwakening_Item[3200638]["RewardItem"][2] = {}
	tWarriorAwakening_Item[3200638]["RewardItem"][2]["Id"] = 3009002
	tWarriorAwakening_Item[3200638]["RewardItem"][2]["Attr"] = "0 1 0 2880 1"
	tWarriorAwakening_Item[3200638]["RewardEMoneyMono"] = {}
	tWarriorAwakening_Item[3200638]["RewardEMoneyMono"]["Value"] = 500
	tWarriorAwakening_Item[3200638]["DeleteItem"] = {}
	tWarriorAwakening_Item[3200638]["DeleteItem"][1] = {}
	tWarriorAwakening_Item[3200638]["DeleteItem"][1]["Id"] = 3200638
	tWarriorAwakening_Item[3200638]["Talk"] = tWarriorAwakening_Text[3200638]
	tWarriorAwakening_Item[3200638]["LogId"] = 12000441
	tWarriorAwakening_Item[3200638]["EMoneyMono"] = tWarriorAwakening_Text["EmoneyMono"]
	
	-- 战无不胜礼包
	tWarriorAwakening_Item[3200639] = {}
	-- 1、明亮星陨石	3009001	1
	tWarriorAwakening_Item[3200639][1] = {}
	tWarriorAwakening_Item[3200639][1]["RewardItem"] = {}
	tWarriorAwakening_Item[3200639][1]["RewardItem"][1] = {}
	tWarriorAwakening_Item[3200639][1]["RewardItem"][1]["Id"] = 3009001
	tWarriorAwakening_Item[3200639][1]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tWarriorAwakening_Item[3200639][1]["Talk"] = tWarriorAwakening_Text[3200639][1]["Talk"]
	tWarriorAwakening_Item[3200639][1]["LogId"] = 12000441
	
	-- 2、500点气力值 	直接给	1
	tWarriorAwakening_Item[3200639][2] = {}
	tWarriorAwakening_Item[3200639][2]["RewardStrengthValue"] = {}
	tWarriorAwakening_Item[3200639][2]["RewardStrengthValue"]["Value"] = 500
	tWarriorAwakening_Item[3200639][2]["Talk"] = tWarriorAwakening_Text[3200639][2]["Talk"]
	tWarriorAwakening_Item[3200639][2]["LogId"] = 12000441

	-- 3、明亮星陨石	3009001	3
	tWarriorAwakening_Item[3200639][3] = {}
	tWarriorAwakening_Item[3200639][3]["RewardItem"] = {}
	tWarriorAwakening_Item[3200639][3]["RewardItem"][1] = {}
	tWarriorAwakening_Item[3200639][3]["RewardItem"][1]["Id"] = 3009001
	tWarriorAwakening_Item[3200639][3]["RewardItem"][1]["Attr"] = "0 3 0 2880 1"
	tWarriorAwakening_Item[3200639][3]["Talk"] = tWarriorAwakening_Text[3200639][3]["Talk"]
	tWarriorAwakening_Item[3200639][3]["LogId"] = 12000441
	
	-- 4、秘制免费强炼丹、护心丹	3002926、3002030	各5个
	tWarriorAwakening_Item[3200639][4] = {}
	tWarriorAwakening_Item[3200639][4]["RewardItem"] = {}
	tWarriorAwakening_Item[3200639][4]["RewardItem"][1] = {}
	tWarriorAwakening_Item[3200639][4]["RewardItem"][1]["Id"] = 3002926
	tWarriorAwakening_Item[3200639][4]["RewardItem"][1]["Attr"] = "0 5"
	tWarriorAwakening_Item[3200639][4]["RewardItem"][2] = {}
	tWarriorAwakening_Item[3200639][4]["RewardItem"][2]["Id"] = 3002030
	tWarriorAwakening_Item[3200639][4]["RewardItem"][2]["Attr"] = "0 5"
	tWarriorAwakening_Item[3200639][4]["Talk"] = tWarriorAwakening_Text[3200639][4]["Talk"]
	tWarriorAwakening_Item[3200639][4]["LogId"] = 12000441
	
	-- 5、明亮星陨石	3009001	5
	tWarriorAwakening_Item[3200639][5] = {}
	tWarriorAwakening_Item[3200639][5]["RewardItem"] = {}
	tWarriorAwakening_Item[3200639][5]["RewardItem"][1] = {}
	tWarriorAwakening_Item[3200639][5]["RewardItem"][1]["Id"] = 3009001
	tWarriorAwakening_Item[3200639][5]["RewardItem"][1]["Attr"] = "0 5 0 2880 1"
	tWarriorAwakening_Item[3200639][5]["Talk"] = tWarriorAwakening_Text[3200639][5]["Talk"]
	tWarriorAwakening_Item[3200639][5]["LogId"] = 12000441
	
	-- 6、270点赠品天石		1
	tWarriorAwakening_Item[3200639][6] = {}
	tWarriorAwakening_Item[3200639][6]["RewardEMoneyMono"] = {}
	tWarriorAwakening_Item[3200639][6]["RewardEMoneyMono"]["Value"] = 270
	tWarriorAwakening_Item[3200639][6]["Talk"] = tWarriorAwakening_Text[3200639][6]["Talk"]
	tWarriorAwakening_Item[3200639][6]["LogId"] = 12000441
	tWarriorAwakening_Item[3200639][6]["EMoneyMono"] = tWarriorAwakening_Text["EmoneyMono"]

	-- 7、1000点气力值		1
	tWarriorAwakening_Item[3200639][7] = {}
	tWarriorAwakening_Item[3200639][7]["RewardStrengthValue"] = {}
	tWarriorAwakening_Item[3200639][7]["RewardStrengthValue"]["Value"] = 1000
	tWarriorAwakening_Item[3200639][7]["Talk"] = tWarriorAwakening_Text[3200639][7]["Talk"]
	tWarriorAwakening_Item[3200639][7]["LogId"] = 12000441

	-- 8、+5赤炼石（赠）	730005	1
	tWarriorAwakening_Item[3200639][8] = {}
	tWarriorAwakening_Item[3200639][8]["RewardItem"] = {}
	tWarriorAwakening_Item[3200639][8]["RewardItem"][1] = {}
	tWarriorAwakening_Item[3200639][8]["RewardItem"][1]["Id"] = 730005
	tWarriorAwakening_Item[3200639][8]["RewardItem"][1]["Attr"] = "0 1 3"
	tWarriorAwakening_Item[3200639][8]["Talk"] = tWarriorAwakening_Text[3200639][8]["Talk"]
	tWarriorAwakening_Item[3200639][8]["LogId"] = 12000441
	
	-- 9、晶莹星陨石 	3009002	1
	tWarriorAwakening_Item[3200639][9] = {}
	tWarriorAwakening_Item[3200639][9]["RewardItem"] = {}
	tWarriorAwakening_Item[3200639][9]["RewardItem"][1] = {}
	tWarriorAwakening_Item[3200639][9]["RewardItem"][1]["Id"] = 3009002
	tWarriorAwakening_Item[3200639][9]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tWarriorAwakening_Item[3200639][9]["Talk"] = tWarriorAwakening_Text[3200639][9]["Talk"]
	tWarriorAwakening_Item[3200639][9]["LogId"] = 12000441
	
	-- 10、1000点赠品天石		1
	tWarriorAwakening_Item[3200639][10] = {}
	tWarriorAwakening_Item[3200639][10]["RewardEMoneyMono"] = {}
	tWarriorAwakening_Item[3200639][10]["RewardEMoneyMono"]["Value"] = 1000
	tWarriorAwakening_Item[3200639][10]["Talk"] = tWarriorAwakening_Text[3200639][10]["Talk"]
	tWarriorAwakening_Item[3200639][10]["LogId"] = 12000441
	tWarriorAwakening_Item[3200639][10]["EMoneyMono"] = tWarriorAwakening_Text["EmoneyMono"]

	-- 11、2000点气力值		1
	tWarriorAwakening_Item[3200639][11] = {}
	tWarriorAwakening_Item[3200639][11]["RewardStrengthValue"] = {}
	tWarriorAwakening_Item[3200639][11]["RewardStrengthValue"]["Value"] = 2000
	tWarriorAwakening_Item[3200639][11]["Talk"] = tWarriorAwakening_Text[3200639][11]["Talk"]
	tWarriorAwakening_Item[3200639][11]["LogId"] = 12000441

	-- 12、+5赤炼石（赠）	730005	1
	tWarriorAwakening_Item[3200639][12] = {}
	tWarriorAwakening_Item[3200639][12]["RewardItem"] = {}
	tWarriorAwakening_Item[3200639][12]["RewardItem"][1] = {}
	tWarriorAwakening_Item[3200639][12]["RewardItem"][1]["Id"] = 730005
	tWarriorAwakening_Item[3200639][12]["RewardItem"][1]["Attr"] = "0 1 3"
	tWarriorAwakening_Item[3200639][12]["Talk"] = tWarriorAwakening_Text[3200639][12]["Talk"]
	tWarriorAwakening_Item[3200639][12]["LogId"] = 12000441
	
	-- 13、晶莹星陨石	3009002	3
	tWarriorAwakening_Item[3200639][13] = {}
	tWarriorAwakening_Item[3200639][13]["RewardItem"] = {}
	tWarriorAwakening_Item[3200639][13]["RewardItem"][1] = {}
	tWarriorAwakening_Item[3200639][13]["RewardItem"][1]["Id"] = 3009002
	tWarriorAwakening_Item[3200639][13]["RewardItem"][1]["Attr"] = "0 3 0 2880 1"
	tWarriorAwakening_Item[3200639][13]["Talk"] = tWarriorAwakening_Text[3200639][13]["Talk"]
	tWarriorAwakening_Item[3200639][13]["LogId"] = 12000441
	
	-- 14、+6赤炼石（赠）	 730006	1
	tWarriorAwakening_Item[3200639][14] = {}
	tWarriorAwakening_Item[3200639][14]["RewardItem"] = {}
	tWarriorAwakening_Item[3200639][14]["RewardItem"][1] = {}
	tWarriorAwakening_Item[3200639][14]["RewardItem"][1]["Id"] = 730006
	tWarriorAwakening_Item[3200639][14]["RewardItem"][1]["Attr"] = "0 1 3"
	tWarriorAwakening_Item[3200639][14]["Talk"] = tWarriorAwakening_Text[3200639][14]["Talk"]
	tWarriorAwakening_Item[3200639][14]["LogId"] = 12000441
	
	-- 15、2000点赠品天石		1
	tWarriorAwakening_Item[3200639][15] = {}
	tWarriorAwakening_Item[3200639][15]["RewardEMoneyMono"] = {}
	tWarriorAwakening_Item[3200639][15]["RewardEMoneyMono"]["Value"] = 2000
	tWarriorAwakening_Item[3200639][15]["Talk"] = tWarriorAwakening_Text[3200639][15]["Talk"]
	tWarriorAwakening_Item[3200639][15]["LogId"] = 12000441
	tWarriorAwakening_Item[3200639][15]["EMoneyMono"] = tWarriorAwakening_Text["EmoneyMono"]

------------------------------------逻辑部分------------------------------------------------
function WarriorAwakening_UseSweetie(nItemId,nIndex)
	RewardTemplate_UseItem(tWarriorAwakening_Item[nItemId][nIndex])
end

function WarriorAwakening_UseItem(nItemId,sIsHas)
	local nEvent = tWarriorAwakening_Stc["EventType"]
	local nType = tWarriorAwakening_Stc["DataType"]
	local nData = Get_UserStatisticValue(nEvent,nType)
	local nMaxData = tWarriorAwakening_Stc["MaxData"]
	
	if nData >= nMaxData then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		end
		
		return
	end
	
	if (nData > 0) and (not Task_StcInterval(nEvent,nType,1,4)) then
		LinkItemGossipFunc_New(nItemId,"2-1")
		return
	end
	
	-- 是否是领取奖励
	if sIsHas == "true" then
		if not Item_ChkItem(nItemId) then
			return
		end
		
		if nData == nMaxData - 1 then
			if not Item_DelItem(nItemId) then
				return
			end
		end
		
		Task_AddStatistic(nEvent,nType,1,1)
		Task_SetStcTimestamp(nEvent,nType,0)
		RewardTemplate_UseItem(tWarriorAwakening_Item[nItemId][nData+1])
	else
		local sCoent = ""
		local nSaveTime = Get_ItemSaveTime()
		local sName = tWarriorAwakening_Text[3200639][nData+1]["Name"]
		
		if nData == nMaxData - 1 then
			sCoent = tWarriorAwakening_Text[3200639]["Text121"]
		else
			sCoent = string.format(tWarriorAwakening_Text[3200639]["Text111"],nData+1,sName,tWarriorAwakening_Text[3200639][nData+2]["Name"])
		end
		
		tItem[3200639]["Text111"] = sCoent
		LinkItemGossipFunc_New(nItemId,"1-1")
	end
end
	
------------------------------------礼包配置------------------------------------------------
-- 烈火柔情礼包
tItem[3200631] = tItem[3200631] or {}
tItem[3200631]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItem(tWarriorAwakening_Item[nItemId])
end

-- 浓情蜜意礼包
tItem[3200632] = tItem[3200632] or {}
tItem[3200632]["DialogueText"] = tWarriorAwakening_Text[3200632]
tItem[3200632]["Text1-1"] = {111}
tItem[3200632]["tOption1-1"] = {1,2,3}
tItem[3200632]["OptionPoint1"] = "1-2"
tItem[3200632]["OptionPoint2"] = "1-3"

tItem[3200632]["Text1-2"] = {121}
tItem[3200632]["tOption1-2"] = {4,5}
tItem[3200632]["OptionFunc4"] = "WarriorAwakening_UseSweetie</N>3200632</N>1"

tItem[3200632]["Text1-3"] = {131}
tItem[3200632]["tOption1-3"] = {6,5}
tItem[3200632]["OptionFunc6"] = "WarriorAwakening_UseSweetie</N>3200632</N>2"


-- 战魂崛起一阶礼包
tItem[3200633] = tItem[3200633] or {}
tItem[3200633]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItem(tWarriorAwakening_Item[nItemId])
end

-- 战魂崛起二阶礼包
tItem[3200634] = tItem[3200634] or {}
tItem[3200634]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItem(tWarriorAwakening_Item[nItemId])
end

-- 战魂崛起三阶礼包
tItem[3200635] = tItem[3200635] or {}
tItem[3200635]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItem(tWarriorAwakening_Item[nItemId])
end

-- 战魂崛起四阶礼包
tItem[3200636] = tItem[3200636] or {}
tItem[3200636]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItem(tWarriorAwakening_Item[nItemId])
end

-- 战魂崛起五阶礼包
tItem[3200637] = tItem[3200637] or {}
tItem[3200637]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItem(tWarriorAwakening_Item[nItemId])
end

-- 战魂崛起六阶礼包
tItem[3200638] = tItem[3200638] or {}
tItem[3200638]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItem(tWarriorAwakening_Item[nItemId])
end

-- 战无不胜礼包
tItem[3200639] = tItem[3200639] or {}
tItem[3200639]["Function"] = function(nItemId,sItemName)
	WarriorAwakening_UseItem(nItemId,"false")
end

tItem[3200639]["Text1-1"] = {111}
tItem[3200639]["tOption1-1"] = {1,2}
tItem[3200639]["Option1"] = tWarriorAwakening_Text[3200639]["Option1"]
tItem[3200639]["Option2"] = tWarriorAwakening_Text[3200639]["Option2"]
tItem[3200639]["OptionFunc1"] = "WarriorAwakening_UseItem</N>3200639</S>true"

tItem[3200639]["Text2-1"] = {211}
tItem[3200639]["Text211"] = tWarriorAwakening_Text[3200639]["Text211"]
tItem[3200639]["tOption2-1"] = {2}

