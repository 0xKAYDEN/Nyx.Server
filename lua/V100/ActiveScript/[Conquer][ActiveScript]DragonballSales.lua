------------------------------------------------------------------------------------
--Name:			160527[英文征服][活动脚本]金币售卖龙珠促销(6.2-6.16)
--Purpose:		金币售卖龙珠促销
--Creator:		许乐
--Created:		2016/05/27
------------------------------------------------------------------------------------
-- 前缀
-- DragonballSales_
---------------------------------------------------------------
-- logid: 12000413
---------------------------------------------------------------
local tDragonballSales_Cont = {}
	tDragonballSales_Cont["BeforeActivity"] = "2015-06-02 00:00 2016-06-01 23:59"
	tDragonballSales_Cont["ActivityTime"] = "2016-06-02 00:00 2016-06-16 23:59"
	
	tDragonballSales_Cont[1088000] = 7000000
	tDragonballSales_Cont[720028] = 65000000
	
local tDragonballSales_Log = {}
	tDragonballSales_Log["Buy"] = "0,0,1,%d,12000413,2,%d,1"
	
	-- 金币购买龙珠 350 20184
	-- 金币购买龙珠卷 350 20185
	tDragonballSales_Log["EmoenyLog"] = {}
	tDragonballSales_Log["EmoenyLog"][1088000] = "350	20184	0	0	1	"
	tDragonballSales_Log["EmoenyLog"][720028] = "350	20185	0	0	1	"
	
------------------------------------------------逻辑部分-------------------------------------------------
function DragonballSales_SureToBuy(nNpcId,nItemId)
	if not Sys_ChkFullTime(tDragonballSales_Cont["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end
	
	if not User_CheckLeftSpace(1) then
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return
	end
	
	local nNeedMoney = tDragonballSales_Cont[nItemId]
	if not User_CanPutMoney2Bag((-1)*nNeedMoney) then
		LinkNpcGossipFunc_New(nNpcId,"2-4")
		return
	end
	
	--扣除金币，给物品
	if User_AddMoney((-1)*nNeedMoney) then
		Item_AddNewItem(nItemId,"")
		User_TalkChannel2005(tDragonballSales_Text["AwardItem"][nItemId])
		Sys_SaveActionFestivalLog(string.format(tDragonballSales_Log["Buy"],nNeedMoney,nItemId))
		Sys_SaveEmoneyBuy(tDragonballSales_Log["EmoenyLog"][nItemId])
	end
end

------------------------------------------------NPC模块--------------------------------------------------
-- 19312   Dragonball Sales
tNpcFace[4183] = 57
tNpcGossip[19312] = tNpcGossip[19312] or DefaultNpc:new{}
tNpcGossip[19312]["OptionHidden"] = 1

tNpcGossip[19312]["Text1-1"] = {111}
tNpcGossip[19312]["Text111"] = tDragonballSales_Text[19312]["Text111"]
tNpcGossip[19312]["tOption1-1"] = {1}
tNpcGossip[19312]["ChkFunc1-1"] = function ()
	if Sys_ChkFullTime(tDragonballSales_Cont["BeforeActivity"]) then
		return true
	else
		return false
	end
end
tNpcGossip[19312]["Option1"] = tDragonballSales_Text[19312]["Option1"]

tNpcGossip[19312]["Text1-2"] = {121}
tNpcGossip[19312]["Text121"] = tDragonballSales_Text[19312]["Text121"]
tNpcGossip[19312]["tOption1-2"] = {2,3,4}
tNpcGossip[19312]["ChkFunc1-2"] = function ()
	if Sys_ChkFullTime(tDragonballSales_Cont["ActivityTime"]) then
		return true
	else
		return false
	end
end
tNpcGossip[19312]["Option2"] = tDragonballSales_Text[19312]["Option2"]
tNpcGossip[19312]["OptionPoint2"]="2-1"
tNpcGossip[19312]["Option3"] = tDragonballSales_Text[19312]["Option3"]
tNpcGossip[19312]["OptionPoint3"]="2-2"
tNpcGossip[19312]["Option4"] = tDragonballSales_Text[19312]["Option4"]

tNpcGossip[19312]["Text1-3"] = {131}
tNpcGossip[19312]["Text131"] = tDragonballSales_Text[19312]["Text131"]
tNpcGossip[19312]["tOption1-3"] = {5}
tNpcGossip[19312]["Option5"] = tDragonballSales_Text[19312]["Option5"]

-- 购买龙珠（700万银两）。
tNpcGossip[19312]["Text2-1"] = {211}
tNpcGossip[19312]["Text211"] = tDragonballSales_Text[19312]["Text211"]
tNpcGossip[19312]["tOption2-1"] = {6,7}
tNpcGossip[19312]["Option6"] = tDragonballSales_Text[19312]["Option6"]
tNpcGossip[19312]["OptionFunc6"]="DragonballSales_SureToBuy</N>19312</N>1088000"
tNpcGossip[19312]["Option7"] = tDragonballSales_Text[19312]["Option7"]

-- 购买龙珠卷（6500万银两）。
tNpcGossip[19312]["Text2-2"] = {221}
tNpcGossip[19312]["Text221"] = tDragonballSales_Text[19312]["Text221"]
tNpcGossip[19312]["tOption2-2"] = {8,7}
tNpcGossip[19312]["Option8"] = tDragonballSales_Text[19312]["Option8"]
tNpcGossip[19312]["OptionFunc8"]="DragonballSales_SureToBuy</N>19312</N>720028"

-- 花费XXX银两，失败，背包满
tNpcGossip[19312]["Text2-3"] = {231}
tNpcGossip[19312]["Text231"] = tDragonballSales_Text[19312]["Text231"]
tNpcGossip[19312]["tOption2-3"] = {9}
tNpcGossip[19312]["Option9"] = tDragonballSales_Text[19312]["Option9"]

-- 花费XXX银两，失败，银两不足
tNpcGossip[19312]["Text2-4"] = {241}
tNpcGossip[19312]["Text241"] = tDragonballSales_Text[19312]["Text241"]
tNpcGossip[19312]["tOption2-4"] = {10}
tNpcGossip[19312]["Option10"] = tDragonballSales_Text[19312]["Option10"]
	
tNpcGossip[19313] = tNpcGossip[19312]

