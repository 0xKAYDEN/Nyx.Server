------------------------------------------------------------------------------------
--Name:			161031[简体征服][任务脚本]征服转世转lua
--Purpose:		征服转世转lua
--Creator:		张世超
--Created:		2016/10/29
------------------------------------------------------------------------------------
--命名前缀
--MeteTask_


local tMeteTask_Constant ={}
	tMeteTask_Constant["StoneCost"] = 5 	--快速炼制涅磐灵石。（5点天石）
	tMeteTask_Constant["StoneId"] = 721259 	--
	tMeteTask_Constant["WaterId"] = 721258 	-- 非赠净尘纤水
	tMeteTask_Constant["WaterId2"] = 3005329 	--赠净尘纤水
	tMeteTask_Constant["NeedGem"] = {700001, 700011,700021,700031,700041,700051,700061}
	
	tMeteTask_Constant["AchPosition"] = {}
	tMeteTask_Constant["AchPosition"][1] = {}	--1转成就
	tMeteTask_Constant["AchPosition"][1][1] = 10315	--1转成就
	tMeteTask_Constant["AchPosition"][1][2] = 11030	--1转成就
	tMeteTask_Constant["AchPosition"][2] = {}	--2转成就
	tMeteTask_Constant["AchPosition"][2][1] = 10316	--2转成就
	tMeteTask_Constant["AchPosition"][2][2] = 11031	--2转成就
	
	
	
	
	
	
	
	
	tMeteTask_Constant["DelTask"] = {1,2,3,4,5,6,7,8,9,10,11,12,13,20,21,22,23,24,25,26,27,28,29,30,31,32,33,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,60,61,62,63,64,65,66,67,68,70,71,72,73,74,75,76,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,170,171,172,173,174,175,176,177,178,179,180,181,182,183,184,185,186,187,188,189,190,300,301,302,303,304,305,306,307,308,309,310,311,312,313,314,315,316,317,318,319,320,321,322,323,324,325,326,327,330,331,332,333,334,335,336,337,338,339,340,341,342,343,344,345,346,347,348,349,350,351,352,353,354,355,356,357,358,359,360,361,362,363,364,365,366,367,368,369,370,371,375,376,377,378,379,380,381,382,383,384,385,386,387,388,389,390,391,500,501,502,503,504,505,506,507,508,509,510,511,512,513,514,950,951,952,953,954,955,956,957,958,959,960,961,962,963,964,965,966,967,1401,1402,1403,1404,1405,1406,1407,1408,1409,1410,1411,1412,1413,1414,1415,1416,1417,1418,1419,1420,1421,1422,1423,1424,1425,1426,1427,1428,1429,1430,1431,1432,1433,1434,1435,1436,1711,1712,1713,1714,1715,1716,1717,1718,1719,1720,1721,1722,1723,1724,1725,1726,1727,1728,1729,1730,1731,1732,1733,1734,1735,1736,1737,1738,1739,1740,1741,1742,1743,1744,1745,1746,1747,1748,1749,1750,1751,1752,1753,1754,1755,1756,1757,1781,1782,1783,1784,1785,1786,1787,1788,1789,1790,1791,1792,1793,1794,1795,1796,1797,1798,1799,1800,1801,1802,1803,1804,1805,1806,1807,1808,1809,1810,1811,1812,1813,1814,1815,1816,1817,1818,1819,1820,1821,1822,1823,1824,1825,1826,1827,1828,1829,1830,1831,1832,1833,1834,1835,1836,1837,1838,1839,1840,1841,1842,1843,1844,1845,1846,1847,1848,1849,1850,1851,1852,6446}
	tMeteTask_Constant["SetStc"]={
	{41,12},
	{38,1},
	{38,2},
	{38,3},
	{38,4},
	{41,0},
	{41,10},
	{41,2},
	{41,3},
	{41,4},
	{41,5},
	{41,6},
	{41,7},
	{41,8},
	{41,9},
	{42,0},
	{42,1},
	{42,10},
	{42,11},
	{42,12},
	{42,13},
	{42,14},
	{42,2},
	{42,20},
	{42,21},
	{42,22},
	{42,23},
	{42,24},
	{42,25},
	{42,26},
	{42,27},
	{42,28},
	{42,29},
	{42,3},
	{42,30},
	{42,31},
	{42,32},
	{42,33},
	{42,34},
	{42,35},
	{42,36},
	{42,37},
	{42,4},
	{42,5},
	{42,6},
	{42,7},
	{42,8},
	{42,9},
	{43,0},
	{43,1},
	{43,2},
	{46,22},
	{46,23},
	{46,24},
	{46,25},
	{46,26},
	{46,27},
	{46,28},
	{46,29},
	{46,6},
	{47,0},
	{47,1},
	{47,10},
	{47,15},
	{47,16},
	{47,17},
	{47,19},
	{47,2},
	{47,25},
	{47,26},
	{47,27},
	{47,28},
	{47,29},
	{47,3},
	{47,30},
	{47,4},
	{47,5},
	{47,6},
	{47,7},
	{47,8},
	{47,9},
	{48,10},
	{48,11},
	{48,12},
	{49,1},
	{49,2},
	{49,3}
}

	tMeteTask_Constant["SetStcValue"]={0,1,1,1,0,1,0,10,1,0,1,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,10,0,0,0,0,0,0,0,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,20}
	
	tMeteTask_Constant["Level"] = {}
	tMeteTask_Constant["Level"][1] = {10,15,120}
	tMeteTask_Constant["Level"][2] = {20,25,120}
	tMeteTask_Constant["Level"][3] = {30,35,120}
	tMeteTask_Constant["Level"][4] = {40,45,120}
	tMeteTask_Constant["Level"][5] = {50,55,120}
	tMeteTask_Constant["Level"][6] = {60,65,120}
	tMeteTask_Constant["Level"][7] = {70,75,120}
	tMeteTask_Constant["Level"][8] = {80,85,120}
	tMeteTask_Constant["Level"][9] = {100,135,110}
	tMeteTask_Constant["Level"][10] = {140,145,120}
	tMeteTask_Constant["Level"][11] = {160,165,120}
	
	tMeteTask_Constant["EpicWeapon"] = {614,624,616,622,619,620}
	tMeteTask_Constant["Island"] = {1212,981,1263}
	
local tMeteTask_Stc = {}
	tMeteTask_Stc["EventType"] = 151
	tMeteTask_Stc["DataType"] = {}
	tMeteTask_Stc["DataType"]["Type"] = 68	--转世类型
	tMeteTask_Stc["DataType"]["Pro"] = 69	--转世职业
	tMeteTask_Stc["DataType"]["Body"] = 70	--转世体型
	tMeteTask_Stc["DataType"]["Gem"] = 71		--转世宝石
	
	tMeteTask_Constant["NewSkill1"] = {}
	tMeteTask_Constant["NewSkill1"][15] = {}
	tMeteTask_Constant["NewSkill1"][15][11] = {3050,5002}
	tMeteTask_Constant["NewSkill1"][15][21] = {5100,5002}
	tMeteTask_Constant["NewSkill1"][15][41] = {}
	tMeteTask_Constant["NewSkill1"][15][51] = {}
	tMeteTask_Constant["NewSkill1"][15][61] = {10490}
	tMeteTask_Constant["NewSkill1"][15][71] = {11140}
	tMeteTask_Constant["NewSkill1"][15][81] = {12240,12290}
	tMeteTask_Constant["NewSkill1"][15][132] ={}
	tMeteTask_Constant["NewSkill1"][15][142] = {}
	tMeteTask_Constant["NewSkill1"][15][161] = {12860,12870,12980,13090}
	
	tMeteTask_Constant["NewSkill1"][25] = {}
	tMeteTask_Constant["NewSkill1"][25][11] = {}
	tMeteTask_Constant["NewSkill1"][25][21] = {}
	tMeteTask_Constant["NewSkill1"][25][41] = {}
	tMeteTask_Constant["NewSkill1"][25][51] = {}
	tMeteTask_Constant["NewSkill1"][25][61] = {10490}
	tMeteTask_Constant["NewSkill1"][25][71] = {11140}
	tMeteTask_Constant["NewSkill1"][25][81] = {12240,12290}
	tMeteTask_Constant["NewSkill1"][25][132] ={}
	tMeteTask_Constant["NewSkill1"][25][142] ={}
	tMeteTask_Constant["NewSkill1"][25][161] ={12860,12870,12980,13090}
	
	tMeteTask_Constant["NewSkill1"][45] = {}
	tMeteTask_Constant["NewSkill1"][45][11] = {}
	tMeteTask_Constant["NewSkill1"][45][21] = {}
	tMeteTask_Constant["NewSkill1"][45][41] = {5000}
	tMeteTask_Constant["NewSkill1"][45][51] = {}
	tMeteTask_Constant["NewSkill1"][45][61] = {10490}
	tMeteTask_Constant["NewSkill1"][45][71] = {11140}
	tMeteTask_Constant["NewSkill1"][45][81] = {12240,12290}
	tMeteTask_Constant["NewSkill1"][45][132] ={5002}
	tMeteTask_Constant["NewSkill1"][45][142] ={5002}
	tMeteTask_Constant["NewSkill1"][45][161] ={12860,12870,12980,13090}	
	
	tMeteTask_Constant["NewSkill1"][55] = {}
	tMeteTask_Constant["NewSkill1"][55][11] = {}
	tMeteTask_Constant["NewSkill1"][55][21] = {}
	tMeteTask_Constant["NewSkill1"][55][41] = {}
	tMeteTask_Constant["NewSkill1"][55][51] = {}
	tMeteTask_Constant["NewSkill1"][55][61] = {10490}
	tMeteTask_Constant["NewSkill1"][55][71] = {11140}
	tMeteTask_Constant["NewSkill1"][55][81] = {12240,12290}
	tMeteTask_Constant["NewSkill1"][55][132] ={}
	tMeteTask_Constant["NewSkill1"][55][142] ={}
	tMeteTask_Constant["NewSkill1"][55][161] ={12860,12870,12980,13090}		

	tMeteTask_Constant["NewSkill1"][65] = {}
	tMeteTask_Constant["NewSkill1"][65][11] = {}
	tMeteTask_Constant["NewSkill1"][65][21] = {}
	tMeteTask_Constant["NewSkill1"][65][41] = {}
	tMeteTask_Constant["NewSkill1"][65][51] = {}
	tMeteTask_Constant["NewSkill1"][65][61] = {}
	tMeteTask_Constant["NewSkill1"][65][71] = {11140}
	tMeteTask_Constant["NewSkill1"][65][81] = {12240,12290}
	tMeteTask_Constant["NewSkill1"][65][132] ={}
	tMeteTask_Constant["NewSkill1"][65][142] ={}
	tMeteTask_Constant["NewSkill1"][65][161] ={12860,12870,12980,13090}	

	tMeteTask_Constant["NewSkill1"][75] = {}
	tMeteTask_Constant["NewSkill1"][75][11] = {}
	tMeteTask_Constant["NewSkill1"][75][21] = {}
	tMeteTask_Constant["NewSkill1"][75][41] = {}
	tMeteTask_Constant["NewSkill1"][75][51] = {}
	tMeteTask_Constant["NewSkill1"][75][61] = {}
	tMeteTask_Constant["NewSkill1"][75][71] = {11140}
	tMeteTask_Constant["NewSkill1"][75][81] = {12240,12290}
	tMeteTask_Constant["NewSkill1"][75][132] ={}
	tMeteTask_Constant["NewSkill1"][75][142] ={}
	tMeteTask_Constant["NewSkill1"][75][161] ={12860,12870,12980,13090}	

	tMeteTask_Constant["NewSkill1"][85] = {}
	tMeteTask_Constant["NewSkill1"][85][11] = {}
	tMeteTask_Constant["NewSkill1"][85][21] = {}
	tMeteTask_Constant["NewSkill1"][85][41] = {}
	tMeteTask_Constant["NewSkill1"][85][51] = {}
	tMeteTask_Constant["NewSkill1"][85][61] = {10490}
	tMeteTask_Constant["NewSkill1"][85][71] = {11140}
	tMeteTask_Constant["NewSkill1"][85][81] = {12240,12290}
	tMeteTask_Constant["NewSkill1"][85][132] ={3090}
	tMeteTask_Constant["NewSkill1"][85][142] ={3080}
	tMeteTask_Constant["NewSkill1"][85][161] ={12860,12870,12980,13090}
	
	tMeteTask_Constant["NewSkill1"][135] = {}
	tMeteTask_Constant["NewSkill1"][135][11] = {}
	tMeteTask_Constant["NewSkill1"][135][21] = {}
	tMeteTask_Constant["NewSkill1"][135][41] = {}
	tMeteTask_Constant["NewSkill1"][135][51] = {}
	tMeteTask_Constant["NewSkill1"][135][61] = {10490}
	tMeteTask_Constant["NewSkill1"][135][71] = {11140}
	tMeteTask_Constant["NewSkill1"][135][81] = {12240,12290}
	tMeteTask_Constant["NewSkill1"][135][132] ={3090}
	tMeteTask_Constant["NewSkill1"][135][142] ={}
	tMeteTask_Constant["NewSkill1"][135][161] ={12860,12870,12980,13090}
	
	tMeteTask_Constant["NewSkill1"][145] = {}
	tMeteTask_Constant["NewSkill1"][145][11] = {}
	tMeteTask_Constant["NewSkill1"][145][21] = {}
	tMeteTask_Constant["NewSkill1"][145][41] = {}
	tMeteTask_Constant["NewSkill1"][145][51] = {}
	tMeteTask_Constant["NewSkill1"][145][61] = {10490}
	tMeteTask_Constant["NewSkill1"][145][71] = {11140}
	tMeteTask_Constant["NewSkill1"][145][81] = {12240,12290}
	tMeteTask_Constant["NewSkill1"][145][132] ={}
	tMeteTask_Constant["NewSkill1"][145][142] ={3080}
	tMeteTask_Constant["NewSkill1"][145][161] ={12860,12870,12980,13090}	

	tMeteTask_Constant["NewSkill1"][165] = {}
	tMeteTask_Constant["NewSkill1"][165][11] = {}
	tMeteTask_Constant["NewSkill1"][165][21] = {}
	tMeteTask_Constant["NewSkill1"][165][41] = {}
	tMeteTask_Constant["NewSkill1"][165][51] = {}
	tMeteTask_Constant["NewSkill1"][165][61] = {10490}
	tMeteTask_Constant["NewSkill1"][165][71] = {11140}
	tMeteTask_Constant["NewSkill1"][165][81] = {12240,12290}
	tMeteTask_Constant["NewSkill1"][165][132] ={}
	tMeteTask_Constant["NewSkill1"][165][142] ={3080}
	tMeteTask_Constant["NewSkill1"][165][161] ={12860,12870,12980,13090}		
	
local MeteTask_Log ={}

	MeteTask_Log["Emoney"] = {}
	MeteTask_Log["Emoney"]["Stone"] = "350	4124	5	5	1	"

-----------------------------------------------npc 逻辑-----------------------------------------
--快速炼制涅磐灵石。（5点天石） 
function MeteTask_Stone2(nNpcId)
	LinkNpcGossipFunc_New(nNpcId,"3-2")
end

-- 好的，请快速炼制。（5点天石）
function MeteTask_QuickGet(nNpcId)
	if Get_UserEMoney() < tMeteTask_Constant["StoneCost"] then
		LinkNpcGossipFunc_New(nNpcId,"3-3")
		return
	end

	if not (Item_ChkItem(tMeteTask_Constant["WaterId"]) or Item_ChkItem(tMeteTask_Constant["WaterId2"])) then
		LinkNpcGossipFunc_New(nNpcId,"3-4")
		return 
	end
	
	local tTempReward ={}
	tTempReward["RewardItem"] = {}				
	tTempReward["RewardItem"][1] = {}				
	tTempReward["RewardItem"][1]["Id"] = tMeteTask_Constant["StoneId"]
	tTempReward["RewardEffect"]= {}
	tTempReward["RewardEffect"]["SzObj"] = "self" --添加光效时的对象，默认为self
	tTempReward["RewardEffect"]["Effect"] = "angelwing" --添加光效名字

	if not User_AddEMoney(-tMeteTask_Constant["StoneCost"]) then
		return
	end
	Sys_SaveEmoneyBuy(MeteTask_Log["Emoney"]["Stone"])
	
	if Item_ChkItem(tMeteTask_Constant["WaterId"]) and Item_DelItem(tMeteTask_Constant["WaterId"]) then
		tTempReward["RewardItem"][1]["Attr"] = "0 1"	
		tTempReward["Log"] = "5,0,721258,1,10002358,2,721259,1"
		RewardTemplate_UseItem(tTempReward)
		LinkNpcGossipFunc_New(nNpcId,"3-5")
	elseif Item_ChkItem(tMeteTask_Constant["WaterId2"]) and Item_DelItem(tMeteTask_Constant["WaterId2"]) then
		tTempReward["RewardItem"][1]["Attr"] = "0 1 3"	
		tTempReward["Log"] = "5,0,3005329,1,10002358,2,721259,1"
		RewardTemplate_UseItem(tTempReward)		
		LinkNpcGossipFunc_New(nNpcId,"3-6")
	end
end

--炼制涅磐灵石。 
function MeteTask_Stone1(nNpcId)
	if not (Item_ChkItem(tMeteTask_Constant["WaterId"]) or Item_ChkItem(tMeteTask_Constant["WaterId2"])) then
		LinkNpcGossipFunc_New(nNpcId,"3-4")
		return 
	end

	for i,v in pairs(tMeteTask_Constant["NeedGem"]) do
		if not Item_ChkItem(v) then
			LinkNpcGossipFunc_New(nNpcId,"3-7")
			return
		end
	end
	
	for i,v in pairs(tMeteTask_Constant["NeedGem"]) do
		Item_DelItem(v)
	end
	
	
	local tTempReward ={}
	tTempReward["RewardItem"] = {}				
	tTempReward["RewardItem"][1] = {}				
	tTempReward["RewardItem"][1]["Id"] = tMeteTask_Constant["StoneId"]
	tTempReward["RewardEffect"]= {}
	tTempReward["RewardEffect"]["SzObj"] = "self" --添加光效时的对象，默认为self
	tTempReward["RewardEffect"]["Effect"] = "angelwing" --添加光效名字
	
	if Item_ChkItem(tMeteTask_Constant["WaterId"]) and Item_DelItem(tMeteTask_Constant["WaterId"]) then
		tTempReward["RewardItem"][1]["Attr"] = "0 1"	
		tTempReward["Log"] = "0,0,721258[700001][700011][700021][700031][700041][700051][700061],1[1][1][1][1][1][1][1],10002358,2,721259,1"
		RewardTemplate_UseItem(tTempReward)
		LinkNpcGossipFunc_New(nNpcId,"3-5")
	elseif Item_ChkItem(tMeteTask_Constant["WaterId2"]) and Item_DelItem(tMeteTask_Constant["WaterId2"]) then
		tTempReward["RewardItem"][1]["Attr"] = "0 1 3"	
		tTempReward["Log"] = "0,0,3005329[700001][700011][700021][700031][700041][700051][700061],1[1][1][1][1][1][1][1],10002358,2,721259,1"
		RewardTemplate_UseItem(tTempReward)		
		LinkNpcGossipFunc_New(nNpcId,"3-6")
	end
	
end


function MeteTask_SetTask()
	for i,v in pairs(tMeteTask_Constant["DelTask"]) do
		if Task_ChkTaskDetail(v) then
			Task_SetTaskDetailCompleteFlag(v,2)
			Task_DelTaskDetail(v)
		end
	end
end

function MeteTask_SetStc()
	-- if not (#tMeteTask_Constant["SetStcValue"] == #tMeteTask_Constant["SetStc"]) then
		-- Sys_MsgBox("SetStcValue表不匹配")
		-- return		
	-- end
	for i=1,#tMeteTask_Constant["SetStc"] do
		if Task_ChkStatistic(tMeteTask_Constant["SetStc"][i][1],tMeteTask_Constant["SetStc"][i][2]) then
			Task_SetStatistic(tMeteTask_Constant["SetStc"][i][1],tMeteTask_Constant["SetStc"][i][2],tMeteTask_Constant["SetStcValue"][i],1)
		end
	end
end

--1转通用部分
function MeteTask_TongYong(nMetepsycosis)
	Map_FireWorks()
	MeteTask_SetTask()
	MeteTask_SetStc()
	for i=1,#tMeteTask_Constant["AchPosition"][nMetepsycosis] do
		if not User_ChkAchByAchPosition(tMeteTask_Constant["AchPosition"][nMetepsycosis][i]) then
			User_AddAchByAchPosition(tMeteTask_Constant["AchPosition"][nMetepsycosis][i])
		end
	end
	Sys_NormalBroadcast(string.format(tMeteTask_Text["Broadcast"],Get_UserName()))
end

--1转条件检查
function MeteTask_MetempsychosisLevChk(nNpcId)
	for i,v in pairs(tMeteTask_Constant["Level"]) do
		if Get_UserProfession() >= v[1] and Get_UserProfession() <= v[2] then
			if not (Get_UserLevel() >= v[3]) then
				LinkNpcGossipFunc_New(nNpcId,"2-2")
				return false
			end
			if not (Get_UserProfession() == v[2]) then
				LinkNpcGossipFunc_New(nNpcId,"2-3")
				return false
			end
			return true
		end
	end
end

function MeteTask_Metempsychosis2LevChk(nNpcId)
	for i,v in pairs(tMeteTask_Constant["Level"]) do
		if Get_UserProfession() >= v[1] and Get_UserProfession() <= v[2] then
			if not (Get_UserLevel() >= 120) then
				LinkNpcGossipFunc_New(nNpcId,"5-1")
				return false
			end
			if not (Get_UserProfession() == v[2]) then
				LinkNpcGossipFunc_New(nNpcId,"5-2")
				return false
			end
			return true
		end
	end
end


function MeteTask_MetempsychosisItemChk(nNpcId)
	--没有涅磐灵石
	if not Item_ChkItem(tMeteTask_Constant["StoneId"]) then
		--没有净尘纤水
		if not (Item_ChkItem(tMeteTask_Constant["WaterId"]) or Item_ChkItem(tMeteTask_Constant["WaterId2"])) then
			LinkNpcGossipFunc_New(nNpcId,"2-4")
			return
		end
		LinkNpcGossipFunc_New(nNpcId,"3-1")
	else
		return true
	end
end

function MeteTask_ToIsland(nNpcId)
	if User_UserRandBoundTrans(tMeteTask_Constant["Island"][1],tMeteTask_Constant["Island"][2],tMeteTask_Constant["Island"][3],5,5) then
		Sys_MsgBox(tMeteTask_Text["ToIsland"])
	end
end

function MeteTask_MetempsychosisChk(nNpcId)
	if not MeteTask_MetempsychosisLevChk(nNpcId) then
		return
	end
	if not MeteTask_MetempsychosisItemChk(nNpcId) then
		return
	end
	LinkNpcGossipFunc_New(nNpcId,"2-5")
end


function MeteTask_MetempsychosisShow(nNpcId,nType)
	--Type=1 神佑转世
	--Type=2 优质宝石转世
	if nType == 1 then
		MeteTask_UnequipEpicWeapon()
		if not MeteTask_ChkEquip() then
			LinkNpcGossipFunc_New(nNpcId,"3-8")
			return
		end
	end

	if nType == 1 then
		LinkNpcGossipFunc_New(nNpcId,"2-6")
	else
		LinkNpcGossipFunc_New(nNpcId,"10-5")
	end
end


function MeteTask_MetempsychosisShow1_1(nNpcId,nType)
	if nType ~= nil then
		local nEvent = tMeteTask_Stc["EventType"]
		local nDataType = tMeteTask_Stc["DataType"]["Type"]
		Task_SetStatistic(nEvent,nDataType,nType,1)
	end
	local nPro = Get_UserProfession()
	tNpcGossip[300500]["Text271"] = string.format(tMeteTask_Text[300500]["Text271"],tMeteTask_Text["Show1"][nPro])
	LinkNpcGossipFunc_New(nNpcId,"2-7")
end

function MeteTask_MetempsychosisShow1_2(nNpcId)
	local nPro = Get_UserProfession()
	tNpcGossip[300500]["Text281"] = string.format(tMeteTask_Text[300500]["Text281"],tMeteTask_Text["Show1"][nPro])
	LinkNpcGossipFunc_New(nNpcId,"2-8")
end

function MeteTask_MetempsychosisShow2(nNpcId,nTargetPro)
	local nPro = Get_UserProfession()
	tNpcGossip[300500]["Text291"] = string.format(tMeteTask_Text[300500]["Text291"],tMeteTask_Text["Show2-2"][nPro][nTargetPro])
	tNpcGossip[300500]["OptionFunc291"] =  string.format("MeteTask_MetempsychosisShow3</N>300500</N>%s",nTargetPro)
	LinkNpcGossipFunc_New(nNpcId,"2-9")
	
end


function MeteTask_MetempsychosisShow3(nNpcId,nTargetPro)
	local nPro = Get_UserProfession()
	local nEvent = tMeteTask_Stc["EventType"]
	local nDataType = tMeteTask_Stc["DataType"]["Pro"]
	Task_SetStatistic(nEvent,nDataType,nTargetPro,1)
	-- LinkNpcGossipFunc_New(nNpcId,"10-1")
	MeteTask_MetempsychosisShow4(nNpcId,1)
end

function MeteTask_ChkEquip()
	--检查玩家身上是否有穿装备
	for i=1,8 do
		if Sys_ChkEquip(i) then
			return true
		end
	end
	return false
end


function MeteTask_MetempsychosisShow4(nNpcId,nBody)
	local nEvent = tMeteTask_Stc["EventType"]
	local nDataType = tMeteTask_Stc["DataType"]["Body"]
	local nType = tMeteTask_Stc["DataType"]["Type"]
	Task_SetStatistic(nEvent,nDataType,nBody,1)
	
	--宝石转世，选择宝石
	if Task_ChkStcValue(nEvent,nType,"==",2) then
		LinkNpcGossipFunc_New(nNpcId,"10-3")
		return
	end
	MeteTask_Metempsychosis(nNpcId)	
end

function MeteTask_MetempsychosisShow5(nNpcId,nGem)
	local nEvent = tMeteTask_Stc["EventType"]
	local nDataType = tMeteTask_Stc["DataType"]["Gem"]
	Task_SetStatistic(nEvent,nDataType,nGem,1)
	MeteTask_Metempsychosis(nNpcId)	
end

function MeteTask_Metempsychosis(nNpcId)	


	if User_EquipCheck(3,127) then
		LinkNpcGossipFunc_New(nNpcId,"10-6")
		return
	end
	local nSpace = 4
	if not User_CheckLeftSpace(nSpace) then
		LinkNpcGossipFunc_New(nNpcId,"10-7")
		return	
	end
	MeteTask_UnequipEpicWeapon()
	local nEvent = tMeteTask_Stc["EventType"]
	local nDataTypeType = Get_UserStatisticValue(nEvent,tMeteTask_Stc["DataType"]["Type"]) or 0
	local nDataTypePro = Get_UserStatisticValue(nEvent,tMeteTask_Stc["DataType"]["Pro"]) or 0
	local nDataTypeBody = Get_UserStatisticValue(nEvent,tMeteTask_Stc["DataType"]["Body"]) or 0
	local nDataTypeGem = Get_UserStatisticValue(nEvent,tMeteTask_Stc["DataType"]["Gem"]) or 0
	local nLook = MeteTask_GetLook(nDataTypeBody)
	local nPro = Get_UserProfession()	

	
	if not (Item_ChkItem(tMeteTask_Constant["StoneId"]) and Item_DelItem(tMeteTask_Constant["StoneId"])) then
		LinkNpcGossipFunc_New(nNpcId,"2-4")
		return
	end
	
	if nDataTypeType == 1 then
		--神佑
		MeteTask_ReduceDmg()
	else
		--宝石
		Item_AddNewItem(nDataTypeGem,"")
	end
	local nMetepsycosis = Get_UserMetempsychosis()+1
	User_Rebirth(nDataTypePro,nLook,nMetepsycosis)
	User_RebirthSkill()
	User_UnlearnSkill()
	MeteTask_LearnNewSkill(nPro,nDataTypePro)
	MeteTask_TongYong(nMetepsycosis)
	-- MeteTask_GetWeapon(nDataTypePro)
end

function MeteTask_ReduceDmg()
	--神佑

	if User_EquipSelect(0,14,"==",0,7) then
		nMark = Get_UserVarData(7)
	else
		return
	end

	if Get_UserProfession() == 135 and Get_UserLevel() < 120 then
		if User_EquipSelect(4,14,"==",0,7) then
			nMark =  Get_UserVarData(7)
		elseif User_EquipSelect(8,14,"==",0,7) then
			nMark =  Get_UserVarData(7)
		elseif User_EquipSelect(5,14,"==",0,7) then
			nMark =  Get_UserVarData(7)	
		else
			return
		end
	end 
	local nItemId = Get_EquipIDByPos(nMark)
	Item_SetItemInt(nItemId,G_ITEM_ReduceDmg,1,1)

end
function MeteTask_GetWeapon(nDataTypePro)
	if nDataTypePro == 11 or nDataTypePro == 21 then
		Item_AddNewItem(410077,"0 0 0 0 0 0 0 0 0 0 0 0 0 200")
	elseif nDataTypePro == 132 then
		Item_AddNewItem(421077,"0 0 0 0 0 0 0 0 0 0 0 0 0 202")
	elseif nDataTypePro == 142 then
		Item_AddNewItem(421077,"0 0 0 0 0 0 0 0 0 0 0 0 0 201")
	elseif nDataTypePro == 41 then
		Item_AddNewItem(500067,"0 0 0 0 0 0 0 0 0 0 0 0 0 203")		
	end
end

function MeteTask_LearnNewSkill(nPro,nDataTypePro)
	for i,v in ipairs(tMeteTask_Constant["NewSkill1"][nPro][nDataTypePro]) do
		if not Magic_ChkType(v) then
			Magic_Learn(v)
		end
	end

	if Get_UserMetempsychosis() == 2 then
		if not Magic_ChkType(9876) then
			Magic_Learn(9876)
		end
	
	end
end


function MeteTask_GetLook(nDataTypeBody)
	local nLook = 0
	-- if nDataTypeBody == 1 then
		-- if Get_UserSex() == 1 then
			-- nLook = 3
		-- else
			-- nLook = 1
		-- end
	-- else
		-- if Get_UserSex() == 1 then
			-- nLook = 4
		-- else
			-- nLook = 2
		-- end		
	-- end
	if Get_UserSex() == 1 then
		nLook = 6
	else
		nLook = 5
	end	
	
	return nLook
end


function MeteTask_UnequipEpicWeapon()
	for i,v in ipairs(tMeteTask_Constant["EpicWeapon"]) do
		if User_EquipCheck(5,v) then
			User_UnequipItem(5)
			if User_EquipCheck(4,v) then
				User_UnequipItem(4)
			end
		end
	end
end


--重新分配点数
function MeteTask_PointReset(nNpcId)
	if Get_UserMetempsychosis() == 0 then
		LinkNpcGossipFunc_New(nNpcId,"4-2")
		return 
	end
	if not (Get_UserLevel() >= 70) then
		LinkNpcGossipFunc_New(nNpcId,"4-3")
		return 
	end
	if not Item_ChkItem(1088000) then
		LinkNpcGossipFunc_New(nNpcId,"4-4")
		return 
	end		
	if Item_ChkItem(1088000) and Item_DelItem(1088000) then
		User_ResetPoint()
		LinkNpcGossipFunc_New(nNpcId,"4-5")
	else
		LinkNpcGossipFunc_New(nNpcId,"4-4")
	end			
end

function MeteTask_Metempsychosis2Chk(nNpcId)
	if not MeteTask_Metempsychosis2LevChk(nNpcId) then
		return
	end
	if not User_CheckLeftSpace(2) then
		LinkNpcGossipFunc_New(nNpcId,"5-3")
	end
	local nPro = Get_UserProfession()
	tNpcGossip[300500]["Text551"] = string.format(tMeteTask_Text[300500]["Text551"],tMeteTask_Text["Show1"][nPro])
	LinkNpcGossipFunc_New(nNpcId,"5-5")
end

function MeteTask_Metempsychosis2Show1_2(nNpcId)
	local nPro = Get_UserProfession()
	tNpcGossip[300500]["Text561"] = string.format(tMeteTask_Text[300500]["Text561"],tMeteTask_Text["Show1"][nPro])
	LinkNpcGossipFunc_New(nNpcId,"5-6")
end

function MeteTask_Metempsychosis2Show2(nNpcId,nTargetPro)
	local nPro = Get_UserProfession()
	tNpcGossip[300500]["Text291"] = string.format(tMeteTask_Text[300500]["Text291"],tMeteTask_Text["Show2"][nPro][nTargetPro])
	tNpcGossip[300500]["OptionFunc291"] =  string.format("MeteTask_Metempsychosis2Show3</N>300500</N>%s",nTargetPro)
	LinkNpcGossipFunc_New(nNpcId,"2-9")
	
end

function MeteTask_Metempsychosis2Show3(nNpcId,nTargetPro)
	local nPro = Get_UserProfession()
	local nEvent = tMeteTask_Stc["EventType"]
	local nDataType = tMeteTask_Stc["DataType"]["Pro"]
	Task_SetStatistic(nEvent,nDataType,nTargetPro,1)
	-- LinkNpcGossipFunc_New(nNpcId,"5-7")
	MeteTask_Metempsychosis2Show4(nNpcId,1)
end

function MeteTask_Metempsychosis2Show4(nNpcId,nBody)
	local nEvent = tMeteTask_Stc["EventType"]
	local nDataType = tMeteTask_Stc["DataType"]["Body"]
	local nType = tMeteTask_Stc["DataType"]["Type"]
	Task_SetStatistic(nEvent,nDataType,nBody,1)

	MeteTask_Metempsychosis2(nNpcId)	
end

function MeteTask_Metempsychosis2(nNpcId)	
	if User_EquipCheck(3,127) then
		LinkNpcGossipFunc_New(nNpcId,"10-6")
		return
	end
	local nSpace = 2
	if not User_CheckLeftSpace(nSpace) then
		LinkNpcGossipFunc_New(nNpcId,"5-3")
		return	
	end
	MeteTask_UnequipEpicWeapon()
	local nEvent = tMeteTask_Stc["EventType"]
	local nDataTypeType = Get_UserStatisticValue(nEvent,tMeteTask_Stc["DataType"]["Type"]) or 0
	local nDataTypePro = Get_UserStatisticValue(nEvent,tMeteTask_Stc["DataType"]["Pro"]) or 0
	local nDataTypeBody = Get_UserStatisticValue(nEvent,tMeteTask_Stc["DataType"]["Body"]) or 0
	local nDataTypeGem = Get_UserStatisticValue(nEvent,tMeteTask_Stc["DataType"]["Gem"]) or 0
	local nLook = MeteTask_GetLook(nDataTypeBody)
	local nPro = Get_UserProfession()	

	
	local nMetepsycosis = Get_UserMetempsychosis()+1
	User_Rebirth(nDataTypePro,nLook,nMetepsycosis)
	User_RebirthSkill()
	User_UnlearnSkill()
	MeteTask_LearnNewSkill(nPro,nDataTypePro)
	MeteTask_TongYong(nMetepsycosis)
	if Task_ChkTaskDetail(6447) then
		Task_SetTaskDetailCompleteFlag(6447,2)
		Task_DelTaskDetail(6447)
	end	
end

function MeteTask_Metempsychosis2Task(nNpcId)	
	if not MeteTask_Metempsychosis2LevChk(nNpcId) then
		return
	end
	if Get_UserPk() >=100 then
		LinkNpcGossipFunc_New(nNpcId,"6-2")
		return
	end
	if Get_NpcMapID(nNpcId) ~= Get_UserMapId() then
		User_TalkChannel2005(tTransferFail_Text["MsgTip"])
		return
	end
	User_UserRandBoundTrans(1700,607,641,5,5)
	User_TalkChannel2005(tMeteTask_Text["Metempsychosis2Task"])
end

function MeteTask_Metempsychosis3(nNpcId)	
	if Get_UserMetempsychosis() < 2 then
		LinkNpcGossipFunc_New(nNpcId,"7-4")
		return
	end
	User_OpenDialog(485)
end

------------------------------模板-----------------------------
	tNpcFace[836] = 15
	tNpcFace[5444] = 7
	tNpcFace[5443] = 116
	tNpcFace[5443] = 116
	tNpcFace[5463] = 6
	tNpcFace[5447] = 110

	
	tNpcGossip[300500] = tNpcGossip[300500] or DefaultNpc:new{}
	tNpcGossip[300500]["OptionHidden"] = 1

--未转世 
tNpcGossip[300500]["Text1-1"] = {111,112,113,114}
tNpcGossip[300500]["tOption1-1"] = {111,112,113}
tNpcGossip[300500]["Text111"] = tMeteTask_Text[300500]["Text111"]
tNpcGossip[300500]["Text112"] = tMeteTask_Text[300500]["Text112"]
tNpcGossip[300500]["Text113"] = tMeteTask_Text[300500]["Text113"]
tNpcGossip[300500]["Text114"] = tMeteTask_Text[300500]["Text114"]
tNpcGossip[300500]["Option111"] = tMeteTask_Text[300500]["Option111"]
tNpcGossip[300500]["Option112"] = tMeteTask_Text[300500]["Option112"]
tNpcGossip[300500]["Option113"] = tMeteTask_Text[300500]["Option113"]
tNpcGossip[300500]["OptionFunc111"] = "MeteTask_MetempsychosisChk</N>300500"
tNpcGossip[300500]["OptionPoint112"] = "3-1"
tNpcGossip[300500]["ChkFunc1-1"] = function ()
	return (Get_UserMetempsychosis() == 0)
end

--1转已完成任务
tNpcGossip[300500]["Text1-2"] = {121,122}
tNpcGossip[300500]["tOption1-2"] = {121,122,123,124}
tNpcGossip[300500]["Text121"] = tMeteTask_Text[300500]["Text121"]
tNpcGossip[300500]["Text122"] = tMeteTask_Text[300500]["Text122"]
tNpcGossip[300500]["Option121"] = tMeteTask_Text[300500]["Option121"]
tNpcGossip[300500]["Option122"] = tMeteTask_Text[300500]["Option122"]
tNpcGossip[300500]["Option123"] = tMeteTask_Text[300500]["Option123"]
tNpcGossip[300500]["Option124"] = tMeteTask_Text[300500]["Option124"]
tNpcGossip[300500]["OptionFunc121"] = "MeteTask_Metempsychosis2Chk</N>300500"
tNpcGossip[300500]["OptionPoint122"] = "4-1"
tNpcGossip[300500]["OptionPoint123"] = "3-1"
tNpcGossip[300500]["ChkFunc1-2"] = function ()
	local nMark = false
	local nEvent = 61
	local nType = 0
	if Task_ChkStcValue(nEvent,nType,"==",4) then
		nMark = true
	else
		if Task_ChkTaskDetail(2419) then
			if Get_TaskDetailCompleteFlag(2419) == 1 then
				nMark = true
			end
		end
	end
	return ((Get_UserMetempsychosis() == 1) and nMark)
end

--未完成2转任务
tNpcGossip[300500]["Text1-3"] = {131,132,133}
tNpcGossip[300500]["tOption1-3"] = {131,132,133,134}
tNpcGossip[300500]["Text131"] = tMeteTask_Text[300500]["Text131"]
tNpcGossip[300500]["Text132"] = tMeteTask_Text[300500]["Text132"]
tNpcGossip[300500]["Text133"] = tMeteTask_Text[300500]["Text133"]
tNpcGossip[300500]["Option131"] = tMeteTask_Text[300500]["Option131"]
tNpcGossip[300500]["Option132"] = tMeteTask_Text[300500]["Option132"]
tNpcGossip[300500]["Option133"] = tMeteTask_Text[300500]["Option133"]
tNpcGossip[300500]["Option134"] = tMeteTask_Text[300500]["Option134"]
tNpcGossip[300500]["OptionFunc131"] = "MeteTask_Metempsychosis2Task</N>300500"
tNpcGossip[300500]["OptionPoint132"] = "4-1"
tNpcGossip[300500]["OptionPoint133"] = "3-1"
tNpcGossip[300500]["ChkFunc1-3"] = function ()
	local nMark = false
	local nEvent = 61
	local nType = 0
	if Task_ChkStcValue(nEvent,nType,"==",4) then
		nMark = true
	else
		if Task_ChkTaskDetail(2419) then
			if Get_TaskDetailCompleteFlag(2419) == 1 then
				nMark = true
			end
		end
	end
	return ((Get_UserMetempsychosis() == 1) and (not nMark))
end

--未完成2转任务
tNpcGossip[300500]["Text1-4"] = {141,142}
tNpcGossip[300500]["tOption1-4"] = {141,142,143,144,145}
tNpcGossip[300500]["Text141"] = tMeteTask_Text[300500]["Text141"]
tNpcGossip[300500]["Text142"] = tMeteTask_Text[300500]["Text142"]
tNpcGossip[300500]["Option141"] = tMeteTask_Text[300500]["Option141"]
tNpcGossip[300500]["Option142"] = tMeteTask_Text[300500]["Option142"]
tNpcGossip[300500]["Option143"] = tMeteTask_Text[300500]["Option143"]
tNpcGossip[300500]["Option144"] = tMeteTask_Text[300500]["Option144"]
tNpcGossip[300500]["Option145"] = tMeteTask_Text[300500]["Option145"]
tNpcGossip[300500]["OptionPoint141"] = "7-1"
tNpcGossip[300500]["OptionPoint142"] = "4-1"
tNpcGossip[300500]["OptionFunc143"] = "MeteTask_Metempsychosis2Task</N>300500"
tNpcGossip[300500]["OptionPoint144"] = "3-1"

--满足转世条件
tNpcGossip[300500]["Text2-5"] = {251,252,253}
tNpcGossip[300500]["tOption2-5"] = {251,252,253}
tNpcGossip[300500]["Text251"] = tMeteTask_Text[300500]["Text251"]
tNpcGossip[300500]["Text252"] = tMeteTask_Text[300500]["Text252"]
tNpcGossip[300500]["Text253"] = tMeteTask_Text[300500]["Text253"]
tNpcGossip[300500]["Option251"] = tMeteTask_Text[300500]["Option251"]
tNpcGossip[300500]["Option252"] = tMeteTask_Text[300500]["Option252"]
tNpcGossip[300500]["Option253"] = tMeteTask_Text[300500]["Option253"]
tNpcGossip[300500]["OptionFunc251"] = "MeteTask_MetempsychosisShow</N>300500</N>1"
tNpcGossip[300500]["OptionFunc252"] = "MeteTask_MetempsychosisShow</N>300500</N>2"

--确定神佑转世?
tNpcGossip[300500]["Text2-6"] = {261,262,263}
tNpcGossip[300500]["tOption2-6"] = {261,262}
tNpcGossip[300500]["Text261"] = tMeteTask_Text[300500]["Text261"]
tNpcGossip[300500]["Text262"] = tMeteTask_Text[300500]["Text262"]
tNpcGossip[300500]["Text263"] = tMeteTask_Text[300500]["Text263"]
tNpcGossip[300500]["Option261"] = tMeteTask_Text[300500]["Option261"]
tNpcGossip[300500]["Option262"] = tMeteTask_Text[300500]["Option262"]
tNpcGossip[300500]["OptionFunc261"] = "MeteTask_MetempsychosisShow1_1</N>300500</N>1"

tNpcGossip[300500]["Text10-5"] = {1051,1052,1053}
tNpcGossip[300500]["tOption10-5"] = {1051,1052}
tNpcGossip[300500]["Text1051"] = tMeteTask_Text[300500]["Text1051"]
tNpcGossip[300500]["Text1052"] = tMeteTask_Text[300500]["Text1052"]
tNpcGossip[300500]["Text1053"] = tMeteTask_Text[300500]["Text1053"]
tNpcGossip[300500]["Option1051"] = tMeteTask_Text[300500]["Option1051"]
tNpcGossip[300500]["Option1052"] = tMeteTask_Text[300500]["Option1052"]
tNpcGossip[300500]["OptionFunc1051"] = "MeteTask_MetempsychosisShow1_1</N>300500</N>2"

--确定神佑转世.
tNpcGossip[300500]["Text2-7"] = {271}
tNpcGossip[300500]["tOption2-7"] = {271,272,273,274,275,276,277,278}
tNpcGossip[300500]["Text271"] = tMeteTask_Text[300500]["Text271"]
tNpcGossip[300500]["Option271"] = tMeteTask_Text[300500]["Option271"]
tNpcGossip[300500]["Option272"] = tMeteTask_Text[300500]["Option272"]
tNpcGossip[300500]["Option273"] = tMeteTask_Text[300500]["Option273"]
tNpcGossip[300500]["Option274"] = tMeteTask_Text[300500]["Option274"]
tNpcGossip[300500]["Option275"] = tMeteTask_Text[300500]["Option275"]
tNpcGossip[300500]["Option276"] = tMeteTask_Text[300500]["Option276"]
tNpcGossip[300500]["Option277"] = tMeteTask_Text[300500]["Option277"]
tNpcGossip[300500]["Option278"] = tMeteTask_Text[300500]["Option278"]
tNpcGossip[300500]["OptionFunc271"] = "MeteTask_MetempsychosisShow2</N>300500</N>11"
tNpcGossip[300500]["OptionFunc272"] = "MeteTask_MetempsychosisShow2</N>300500</N>21"
tNpcGossip[300500]["OptionFunc273"] = "MeteTask_MetempsychosisShow2</N>300500</N>41"
tNpcGossip[300500]["OptionFunc274"] = "MeteTask_MetempsychosisShow2</N>300500</N>132"
tNpcGossip[300500]["OptionFunc275"] = "MeteTask_MetempsychosisShow2</N>300500</N>142"
tNpcGossip[300500]["OptionFunc276"] = "MeteTask_MetempsychosisShow2</N>300500</N>51"
tNpcGossip[300500]["OptionFunc277"] = "MeteTask_MetempsychosisShow2</N>300500</N>61"
tNpcGossip[300500]["OptionFunc278"] = "MeteTask_MetempsychosisShow1_2</N>300500"

--更多选择
tNpcGossip[300500]["Text2-8"] = {281}
tNpcGossip[300500]["tOption2-8"] = {281,282,284,283}
tNpcGossip[300500]["Text281"] = tMeteTask_Text[300500]["Text281"]
tNpcGossip[300500]["Option281"] = tMeteTask_Text[300500]["Option281"]
tNpcGossip[300500]["Option282"] = tMeteTask_Text[300500]["Option282"]
tNpcGossip[300500]["Option284"] = tMeteTask_Text[300500]["Option284"]
tNpcGossip[300500]["Option283"] = tMeteTask_Text[300500]["Option283"]
tNpcGossip[300500]["OptionFunc281"] = "MeteTask_MetempsychosisShow2</N>300500</N>71"
tNpcGossip[300500]["OptionFunc282"] = "MeteTask_MetempsychosisShow2</N>300500</N>81"
tNpcGossip[300500]["OptionFunc284"] = "MeteTask_MetempsychosisShow2</N>300500</N>161"
tNpcGossip[300500]["OptionFunc283"] = "MeteTask_MetempsychosisShow1_1</N>300500"

tNpcGossip[300500]["Text2-9"] = {291,292}
tNpcGossip[300500]["tOption2-9"] = {291,292}
tNpcGossip[300500]["Text291"] = tMeteTask_Text[300500]["Text291"]
tNpcGossip[300500]["Text292"] = tMeteTask_Text[300500]["Text292"]
tNpcGossip[300500]["Option291"] = tMeteTask_Text[300500]["Option291"]
tNpcGossip[300500]["Option292"] = tMeteTask_Text[300500]["Option292"]
tNpcGossip[300500]["OptionFunc291"] = "MeteTask_MetempsychosisShow3</N>300500</N>1"

tNpcGossip[300500]["Text10-1"] = {1011}
tNpcGossip[300500]["tOption10-1"] = {1011,1012,1013}
tNpcGossip[300500]["Text1011"] = tMeteTask_Text[300500]["Text1011"]
tNpcGossip[300500]["Option1011"] = tMeteTask_Text[300500]["Option1011"]
tNpcGossip[300500]["Option1012"] = tMeteTask_Text[300500]["Option1012"]
tNpcGossip[300500]["Option1013"] = tMeteTask_Text[300500]["Option1013"]
tNpcGossip[300500]["OptionFunc1011"] = "MeteTask_MetempsychosisShow4</N>300500</N>1"
tNpcGossip[300500]["OptionFunc1012"] = "MeteTask_MetempsychosisShow4</N>300500</N>2"

tNpcGossip[300500]["Text10-3"] = {1031}
tNpcGossip[300500]["tOption10-3"] = {1031,1032,1033,1034,1035,1036,1037}
tNpcGossip[300500]["Text1031"] = tMeteTask_Text[300500]["Text1031"]
tNpcGossip[300500]["Option1031"] = tMeteTask_Text[300500]["Option1031"]
tNpcGossip[300500]["Option1032"] = tMeteTask_Text[300500]["Option1032"]
tNpcGossip[300500]["Option1033"] = tMeteTask_Text[300500]["Option1033"]
tNpcGossip[300500]["Option1034"] = tMeteTask_Text[300500]["Option1034"]
tNpcGossip[300500]["Option1035"] = tMeteTask_Text[300500]["Option1035"]
tNpcGossip[300500]["Option1036"] = tMeteTask_Text[300500]["Option1036"]
tNpcGossip[300500]["Option1037"] = tMeteTask_Text[300500]["Option1037"]
tNpcGossip[300500]["OptionFunc1031"] = "MeteTask_MetempsychosisShow5</N>300500</N>700043"
tNpcGossip[300500]["OptionFunc1032"] = "MeteTask_MetempsychosisShow5</N>300500</N>700033"
tNpcGossip[300500]["OptionFunc1033"] = "MeteTask_MetempsychosisShow5</N>300500</N>700023"
tNpcGossip[300500]["OptionFunc1034"] = "MeteTask_MetempsychosisShow5</N>300500</N>700013"
tNpcGossip[300500]["OptionFunc1035"] = "MeteTask_MetempsychosisShow5</N>300500</N>700003"
tNpcGossip[300500]["OptionFunc1036"] = "MeteTask_MetempsychosisShow5</N>300500</N>700053"
tNpcGossip[300500]["OptionFunc1037"] = "MeteTask_MetempsychosisShow5</N>300500</N>700063"

tNpcGossip[300500]["Text10-6"] = {1061}
tNpcGossip[300500]["tOption10-6"] = {1061}
tNpcGossip[300500]["Text1061"] = tMeteTask_Text[300500]["Text1061"]
tNpcGossip[300500]["Option1061"] = tMeteTask_Text[300500]["Option1061"]

tNpcGossip[300500]["Text10-7"] = {1071}
tNpcGossip[300500]["tOption10-7"] = {1071}
tNpcGossip[300500]["Text1071"] = tMeteTask_Text[300500]["Text1071"]
tNpcGossip[300500]["Option1071"] = tMeteTask_Text[300500]["Option1071"]

--等级不足 
tNpcGossip[300500]["Text2-2"] = {221}
tNpcGossip[300500]["tOption2-2"] = {221}
tNpcGossip[300500]["Text221"] = tMeteTask_Text[300500]["Text221"]
tNpcGossip[300500]["Option221"] = tMeteTask_Text[300500]["Option221"]

--未获得职业最高称号 
tNpcGossip[300500]["Text2-3"] = {231}
tNpcGossip[300500]["tOption2-3"] = {231}
tNpcGossip[300500]["Text231"] = tMeteTask_Text[300500]["Text231"]
tNpcGossip[300500]["Option231"] = tMeteTask_Text[300500]["Option231"]

--没有任何道具
tNpcGossip[300500]["Text2-4"] = {241,242,243}
tNpcGossip[300500]["tOption2-4"] = {241,242}
tNpcGossip[300500]["Text241"] = tMeteTask_Text[300500]["Text241"]
tNpcGossip[300500]["Text242"] = tMeteTask_Text[300500]["Text242"]
tNpcGossip[300500]["Text243"] = tMeteTask_Text[300500]["Text243"]
tNpcGossip[300500]["Option241"] = tMeteTask_Text[300500]["Option241"]
tNpcGossip[300500]["Option242"] = tMeteTask_Text[300500]["Option242"]
tNpcGossip[300500]["OptionFunc242"] = "MeteTask_ToIsland</N>300500"



--我想炼制涅槃灵石。 
tNpcGossip[300500]["Text3-1"] = {311,312}
tNpcGossip[300500]["tOption3-1"] = {311,312}
tNpcGossip[300500]["Text311"] = tMeteTask_Text[300500]["Text311"]
tNpcGossip[300500]["Text312"] = tMeteTask_Text[300500]["Text312"]
tNpcGossip[300500]["Option311"] = tMeteTask_Text[300500]["Option311"]
tNpcGossip[300500]["Option312"] = tMeteTask_Text[300500]["Option312"]
tNpcGossip[300500]["OptionFunc311"] = "MeteTask_Stone1</N>300500"
tNpcGossip[300500]["OptionFunc312"] = "MeteTask_Stone2</N>300500"

--好的，请快速炼制。（5点天石） 
tNpcGossip[300500]["Text3-2"] = {321,322}
tNpcGossip[300500]["tOption3-2"] = {321,322}
tNpcGossip[300500]["Text321"] = tMeteTask_Text[300500]["Text321"]
tNpcGossip[300500]["Text322"] = tMeteTask_Text[300500]["Text322"]
tNpcGossip[300500]["Option321"] = tMeteTask_Text[300500]["Option321"]
tNpcGossip[300500]["Option322"] = tMeteTask_Text[300500]["Option322"]
tNpcGossip[300500]["OptionFunc321"] = "MeteTask_QuickGet</N>300500"

--天石不足 
tNpcGossip[300500]["Text3-3"] = {331}
tNpcGossip[300500]["tOption3-3"] = {331}
tNpcGossip[300500]["Text331"] = tMeteTask_Text[300500]["Text331"]
tNpcGossip[300500]["Option331"] = tMeteTask_Text[300500]["Option331"]

--侠士身上并无可用于炼制的净尘纤水 
tNpcGossip[300500]["Text3-4"] = {341}
tNpcGossip[300500]["tOption3-4"] = {341}
tNpcGossip[300500]["Text341"] = tMeteTask_Text[300500]["Text341"]
tNpcGossip[300500]["Option341"] = tMeteTask_Text[300500]["Option341"]

--成功获得涅磐灵石 
tNpcGossip[300500]["Text3-5"] = {351}
tNpcGossip[300500]["tOption3-5"] = {351}
tNpcGossip[300500]["Text351"] = tMeteTask_Text[300500]["Text351"]
tNpcGossip[300500]["Option351"] = tMeteTask_Text[300500]["Option351"]

--成功获得涅磐灵石 （赠）
tNpcGossip[300500]["Text3-6"] = {361}
tNpcGossip[300500]["tOption3-6"] = {361}
tNpcGossip[300500]["Text361"] = tMeteTask_Text[300500]["Text361"]
tNpcGossip[300500]["Option361"] = tMeteTask_Text[300500]["Option361"]

--并无可用于炼制的七种宝石 
tNpcGossip[300500]["Text3-7"] = {371}
tNpcGossip[300500]["tOption3-7"] = {371}
tNpcGossip[300500]["Text371"] = tMeteTask_Text[300500]["Text371"]
tNpcGossip[300500]["Option371"] = tMeteTask_Text[300500]["Option371"]

tNpcGossip[300500]["Text3-8"] = {381}
tNpcGossip[300500]["tOption3-8"] = {381}
tNpcGossip[300500]["Text381"] = tMeteTask_Text[300500]["Text381"]
tNpcGossip[300500]["Option381"] = tMeteTask_Text[300500]["Option381"]

--我想重新分配属性点。
tNpcGossip[300500]["Text4-1"] = {411}
tNpcGossip[300500]["tOption4-1"] = {411,412}
tNpcGossip[300500]["Text411"] = tMeteTask_Text[300500]["Text411"]
tNpcGossip[300500]["Option411"] = tMeteTask_Text[300500]["Option411"]
tNpcGossip[300500]["Option412"] = tMeteTask_Text[300500]["Option412"]
tNpcGossip[300500]["OptionFunc411"] = "MeteTask_PointReset</N>300500"

--尚未转世
tNpcGossip[300500]["Text4-2"] = {421}
tNpcGossip[300500]["tOption4-2"] = {421}
tNpcGossip[300500]["Text421"] = tMeteTask_Text[300500]["Text421"]
tNpcGossip[300500]["Option421"] = tMeteTask_Text[300500]["Option421"]

--等级未到70级
tNpcGossip[300500]["Text4-3"] = {431}
tNpcGossip[300500]["tOption4-3"] = {431}
tNpcGossip[300500]["Text431"] = tMeteTask_Text[300500]["Text431"]
tNpcGossip[300500]["Option431"] = tMeteTask_Text[300500]["Option431"]

--没有龙珠
tNpcGossip[300500]["Text4-4"] = {441}
tNpcGossip[300500]["tOption4-4"] = {441}
tNpcGossip[300500]["Text441"] = tMeteTask_Text[300500]["Text441"]
tNpcGossip[300500]["Option441"] = tMeteTask_Text[300500]["Option441"]

--重新分配成功
tNpcGossip[300500]["Text4-5"] = {451}
tNpcGossip[300500]["tOption4-5"] = {451}
tNpcGossip[300500]["Text451"] = tMeteTask_Text[300500]["Text451"]
tNpcGossip[300500]["Option451"] = tMeteTask_Text[300500]["Option451"]

--2转等级不足
tNpcGossip[300500]["Text5-1"] = {511,512}
tNpcGossip[300500]["tOption5-1"] = {511}
tNpcGossip[300500]["Text511"] = tMeteTask_Text[300500]["Text511"]
tNpcGossip[300500]["Text512"] = tMeteTask_Text[300500]["Text512"]
tNpcGossip[300500]["Option511"] = tMeteTask_Text[300500]["Option511"]

--2转最高称号不足
tNpcGossip[300500]["Text5-2"] = {521}
tNpcGossip[300500]["tOption5-2"] = {521}
tNpcGossip[300500]["Text521"] = tMeteTask_Text[300500]["Text521"]
tNpcGossip[300500]["Option521"] = tMeteTask_Text[300500]["Option521"]

--背包空位不足2个
tNpcGossip[300500]["Text5-3"] = {531}
tNpcGossip[300500]["tOption5-3"] = {531}
tNpcGossip[300500]["Text531"] = tMeteTask_Text[300500]["Text531"]
tNpcGossip[300500]["Option531"] = tMeteTask_Text[300500]["Option531"]

--二转选择职业
tNpcGossip[300500]["Text5-5"] = {551}
tNpcGossip[300500]["tOption5-5"] = {551,552,553,554,555,556,557,558}
tNpcGossip[300500]["Text551"] = tMeteTask_Text[300500]["Text551"]
tNpcGossip[300500]["Option551"] = tMeteTask_Text[300500]["Option551"]
tNpcGossip[300500]["Option552"] = tMeteTask_Text[300500]["Option552"]
tNpcGossip[300500]["Option553"] = tMeteTask_Text[300500]["Option553"]
tNpcGossip[300500]["Option554"] = tMeteTask_Text[300500]["Option554"]
tNpcGossip[300500]["Option555"] = tMeteTask_Text[300500]["Option555"]
tNpcGossip[300500]["Option556"] = tMeteTask_Text[300500]["Option556"]
tNpcGossip[300500]["Option557"] = tMeteTask_Text[300500]["Option557"]
tNpcGossip[300500]["Option558"] = tMeteTask_Text[300500]["Option558"]
tNpcGossip[300500]["OptionFunc551"] = "MeteTask_Metempsychosis2Show2</N>300500</N>11"
tNpcGossip[300500]["OptionFunc552"] = "MeteTask_Metempsychosis2Show2</N>300500</N>21"
tNpcGossip[300500]["OptionFunc553"] = "MeteTask_Metempsychosis2Show2</N>300500</N>41"
tNpcGossip[300500]["OptionFunc554"] = "MeteTask_Metempsychosis2Show2</N>300500</N>132"
tNpcGossip[300500]["OptionFunc555"] = "MeteTask_Metempsychosis2Show2</N>300500</N>142"
tNpcGossip[300500]["OptionFunc556"] = "MeteTask_Metempsychosis2Show2</N>300500</N>51"
tNpcGossip[300500]["OptionFunc557"] = "MeteTask_Metempsychosis2Show2</N>300500</N>61"
tNpcGossip[300500]["OptionFunc558"] = "MeteTask_Metempsychosis2Show1_2</N>300500"

tNpcGossip[300500]["Text5-6"] = {561}
tNpcGossip[300500]["tOption5-6"] = {561,562,563,564}
tNpcGossip[300500]["Text561"] = tMeteTask_Text[300500]["Text561"]
tNpcGossip[300500]["Option561"] = tMeteTask_Text[300500]["Option561"]
tNpcGossip[300500]["Option562"] = tMeteTask_Text[300500]["Option562"]
tNpcGossip[300500]["Option563"] = tMeteTask_Text[300500]["Option563"]
tNpcGossip[300500]["Option564"] = tMeteTask_Text[300500]["Option564"]
tNpcGossip[300500]["OptionFunc561"] = "MeteTask_Metempsychosis2Show2</N>300500</N>71"
tNpcGossip[300500]["OptionFunc562"] = "MeteTask_Metempsychosis2Show2</N>300500</N>81"
tNpcGossip[300500]["OptionFunc563"] = "MeteTask_Metempsychosis2Show2</N>300500</N>161"
tNpcGossip[300500]["OptionFunc564"] = "MeteTask_Metempsychosis2Chk</N>300500"

--更换体型
tNpcGossip[300500]["Text5-7"] = {571}
tNpcGossip[300500]["tOption5-7"] = {571,572,573}
tNpcGossip[300500]["Text571"] = tMeteTask_Text[300500]["Text571"]
tNpcGossip[300500]["Option571"] = tMeteTask_Text[300500]["Option571"]
tNpcGossip[300500]["Option572"] = tMeteTask_Text[300500]["Option572"]
tNpcGossip[300500]["Option573"] = tMeteTask_Text[300500]["Option573"]
tNpcGossip[300500]["OptionFunc571"] = "MeteTask_Metempsychosis2Show4</N>300500</N>1"
tNpcGossip[300500]["OptionFunc572"] = "MeteTask_Metempsychosis2Show4</N>300500</N>2"

--pk值太大
tNpcGossip[300500]["Text6-2"] = {621}
tNpcGossip[300500]["tOption6-2"] = {621}
tNpcGossip[300500]["Text621"] = tMeteTask_Text[300500]["Text621"]
tNpcGossip[300500]["Option621"] = tMeteTask_Text[300500]["Option621"]


--进行特殊转世
tNpcGossip[300500]["Text7-1"] = {711,712,713}
tNpcGossip[300500]["tOption7-1"] = {711,712}
tNpcGossip[300500]["Text711"] = tMeteTask_Text[300500]["Text711"]
tNpcGossip[300500]["Text712"] = tMeteTask_Text[300500]["Text712"]
tNpcGossip[300500]["Text713"] = tMeteTask_Text[300500]["Text713"]
tNpcGossip[300500]["Option711"] = tMeteTask_Text[300500]["Option711"]
tNpcGossip[300500]["Option712"] = tMeteTask_Text[300500]["Option712"]
tNpcGossip[300500]["OptionPoint711"] = "7-3"
tNpcGossip[300500]["OptionPoint712"] = "7-2"



--如何获得乾坤九转神露。
tNpcGossip[300500]["Text7-2"] = {721}
tNpcGossip[300500]["tOption7-2"] = {721}
tNpcGossip[300500]["Text721"] = tMeteTask_Text[300500]["Text721"]
tNpcGossip[300500]["Option721"] = tMeteTask_Text[300500]["Option721"]

--特殊转世2次确认
tNpcGossip[300500]["Text7-3"] = {731,732}
tNpcGossip[300500]["tOption7-3"] = {731,732}
tNpcGossip[300500]["Text731"] = tMeteTask_Text[300500]["Text731"]
tNpcGossip[300500]["Text732"] = tMeteTask_Text[300500]["Text732"]
tNpcGossip[300500]["Option731"] = tMeteTask_Text[300500]["Option731"]
tNpcGossip[300500]["Option732"] = tMeteTask_Text[300500]["Option732"]
tNpcGossip[300500]["OptionFunc731"] = "MeteTask_Metempsychosis3</N>300500"

tNpcGossip[300500]["Text7-4"] = {741}
tNpcGossip[300500]["tOption7-4"] = {741}
tNpcGossip[300500]["Text741"] = tMeteTask_Text[300500]["Text741"]
tNpcGossip[300500]["Option741"] = tMeteTask_Text[300500]["Option741"]