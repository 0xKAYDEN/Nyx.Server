------------------------------------------------------------------------------------
--Name:		[英文征服][活动脚本]武僧版本普天同庆礼包
--Purpose:	武僧版本普天同庆礼包
--Creator: 	陈飞伟
--Created:	2015/12/01
------------------------------------------------------------------------------------

-- 命名前缀
-- WorldCelebrationPackage_

--logid		12000274

-- 掩码说明
-- 139	55	记录玩家是否获得过佛光普照礼包或佛法无边礼包或佛度众生礼包
-- 139	56	记录玩家是否获得过万佛朝宗礼包
-- 139	57	记录玩家打开武僧版本普天同庆礼包的次数

-- 常量表
local tWorldCelebrationPackage_Constant = {}
	-- 活动时间
	tWorldCelebrationPackage_Constant["GetPackageTime"] = "2016-01-07 00:00 2016-01-09 23:59"
	tWorldCelebrationPackage_Constant["UsePackageTime"] = "2016-01-07 00:00 2016-01-14 23:59"

	-- 玩家等级要求
	tWorldCelebrationPackage_Constant["Metempsychosis"] = {}
	tWorldCelebrationPackage_Constant["Metempsychosis"][1] = 0
	tWorldCelebrationPackage_Constant["Metempsychosis"][2] = 1
	tWorldCelebrationPackage_Constant["Metempsychosis"][3] = 2
	tWorldCelebrationPackage_Constant["Level"] = 80
	tWorldCelebrationPackage_Constant["SpecialMetempsychosis"] = 3

	--礼包ID（依次是佛光普照礼包、佛法无边礼包、佛度众生礼包、万佛朝宗礼包、极乐外套礼包）
	tWorldCelebrationPackage_Constant["PackageItemId"] = {}
	tWorldCelebrationPackage_Constant["PackageItemId"][1] = 3008033
	tWorldCelebrationPackage_Constant["PackageItemId"][2] = 3008034
	tWorldCelebrationPackage_Constant["PackageItemId"][3] = 3008035
	tWorldCelebrationPackage_Constant["PackageItemId"][4] = 3008036
	tWorldCelebrationPackage_Constant["PackageItemId"][5] = 3008037
	
	--武僧职业编号
	tWorldCelebrationPackage_Constant["Monk"] = {60,65}
	
	--背包空间要求
	tWorldCelebrationPackage_Constant["Space"] = {}
	tWorldCelebrationPackage_Constant["Space"][1] = 5
	tWorldCelebrationPackage_Constant["Space"][2] = 4
	tWorldCelebrationPackage_Constant["Space"][3] = 4
	tWorldCelebrationPackage_Constant["Space"][4] = 1
	
	tWorldCelebrationPackage_Constant["LastSpace"] = {}
	tWorldCelebrationPackage_Constant["LastSpace"][1] = 4
	tWorldCelebrationPackage_Constant["LastSpace"][2] = 3
	tWorldCelebrationPackage_Constant["LastSpace"][3] = 3
	
--礼包log表
local tWorldCelebrationPackage_Log = {}
	--删除礼包
	tWorldCelebrationPackage_Log["DelPackage"] = "0,0,%d,1,12000274,0,0,0"
	--获得礼包
	tWorldCelebrationPackage_Log["GetPackage"] = "0,0,0,0,12000274,2,%d,1"
	
--礼包物品表（随机概率）
local tWorldCelebrationPackage_Probabil = {}
	-- 佛光普照礼包：等级80~140（含140）
	tWorldCelebrationPackage_Probabil[3008033] = {}
	tWorldCelebrationPackage_Probabil[3008033]["ItemChanceSum"] = 10000

	tWorldCelebrationPackage_Probabil[3008033][1] = {}
	tWorldCelebrationPackage_Probabil[3008033][1]["RandomItemChanceType"] = 2
	tWorldCelebrationPackage_Probabil[3008033][1]["ItemChance"] = 3500
	tWorldCelebrationPackage_Probabil[3008033][1]["Item_1"] = 723700
	tWorldCelebrationPackage_Probabil[3008033][1]["Attr_1"] = "0 2 3"
	tWorldCelebrationPackage_Probabil[3008033][1]["Item_2"] = 1200000
	tWorldCelebrationPackage_Probabil[3008033][1]["Attr_2"] = "0 1 3"
	tWorldCelebrationPackage_Probabil[3008033][1]["Item_3"] = 1088001
	tWorldCelebrationPackage_Probabil[3008033][1]["Attr_3"] = "0 2 3"
	tWorldCelebrationPackage_Probabil[3008033][1]["Message"] = "MessageBox3"
	tWorldCelebrationPackage_Probabil[3008033][1]["GetItemLog"] = "0,0,%d,%d,12000274,2,723700[1200000][1088001],2[1][2]"

	tWorldCelebrationPackage_Probabil[3008033][2] = {}
	tWorldCelebrationPackage_Probabil[3008033][2]["RandomItemChanceType"] = 2
	tWorldCelebrationPackage_Probabil[3008033][2]["ItemChance"] = 3500
	tWorldCelebrationPackage_Probabil[3008033][2]["Item_1"] = 300000
	tWorldCelebrationPackage_Probabil[3008033][2]["Attr_1"] = "0 1 3 0 0 0 9830655 150 0 0 2 0 0 0 0 0 0 255"
	tWorldCelebrationPackage_Probabil[3008033][2]["Item_2"] = 723700
	tWorldCelebrationPackage_Probabil[3008033][2]["Attr_2"] = "0 2 3"
	tWorldCelebrationPackage_Probabil[3008033][2]["Message"] = "MessageBox4"
	tWorldCelebrationPackage_Probabil[3008033][2]["GetItemLog"] = "0,0,%d,%d,12000274,2,300000[723700],1[2]"

	tWorldCelebrationPackage_Probabil[3008033][3] = {}
	tWorldCelebrationPackage_Probabil[3008033][3]["RandomItemChanceType"] = 2
	tWorldCelebrationPackage_Probabil[3008033][3]["ItemChance"] = 3000
	tWorldCelebrationPackage_Probabil[3008033][3]["Item_1"] = 730002
	tWorldCelebrationPackage_Probabil[3008033][3]["Attr_1"] = "0 1 3"
	tWorldCelebrationPackage_Probabil[3008033][3]["Item_2"] = 723700
	tWorldCelebrationPackage_Probabil[3008033][3]["Attr_2"] = "0 2 3"
	tWorldCelebrationPackage_Probabil[3008033][3]["Message"] = "MessageBox5"
	tWorldCelebrationPackage_Probabil[3008033][3]["GetItemLog"] = "0,0,%d,%d,12000274,2,730002[723700],1[2]"

	--佛法无边礼包：等级1转1~140（含1转140）
	tWorldCelebrationPackage_Probabil[3008034] = {}
	tWorldCelebrationPackage_Probabil[3008034]["ItemChanceSum"] = 10000

	tWorldCelebrationPackage_Probabil[3008034][1] = {}
	tWorldCelebrationPackage_Probabil[3008034][1]["RandomItemChanceType"] = 2
	tWorldCelebrationPackage_Probabil[3008034][1]["ItemChance"] = 3500
	tWorldCelebrationPackage_Probabil[3008034][1]["Item_1"] = 723700
	tWorldCelebrationPackage_Probabil[3008034][1]["Attr_1"] = "0 3 3"
	tWorldCelebrationPackage_Probabil[3008034][1]["Item_2"] = 720027
	tWorldCelebrationPackage_Probabil[3008034][1]["Attr_2"] = "0 1 3"
	tWorldCelebrationPackage_Probabil[3008034][1]["Message"] = "MessageBox6"
	tWorldCelebrationPackage_Probabil[3008034][1]["GetItemLog"] = "0,0,%d,%d,12000274,2,723700[720027],3[1]"

	tWorldCelebrationPackage_Probabil[3008034][2] = {}
	tWorldCelebrationPackage_Probabil[3008034][2]["RandomItemChanceType"] = 2
	tWorldCelebrationPackage_Probabil[3008034][2]["ItemChance"] = 3500
	tWorldCelebrationPackage_Probabil[3008034][2]["Item_1"] = 300000
	tWorldCelebrationPackage_Probabil[3008034][2]["Attr_1"] = "0 1 3 0 0 0 9830655 150 0 0 3 0 0 0 0 0 0 255"
	tWorldCelebrationPackage_Probabil[3008034][2]["Item_2"] = 1200000
	tWorldCelebrationPackage_Probabil[3008034][2]["Attr_2"] = "0 1 3"
	tWorldCelebrationPackage_Probabil[3008034][2]["Message"] = "MessageBox7"
	tWorldCelebrationPackage_Probabil[3008034][2]["GetItemLog"] = "0,0,%d,%d,12000274,2,300000[1200000],1[1]"

	tWorldCelebrationPackage_Probabil[3008034][3] = {}
	tWorldCelebrationPackage_Probabil[3008034][3]["RandomItemChanceType"] = 2
	tWorldCelebrationPackage_Probabil[3008034][3]["ItemChance"] = 3000
	tWorldCelebrationPackage_Probabil[3008034][3]["Item_1"] = 730003
	tWorldCelebrationPackage_Probabil[3008034][3]["Attr_1"] = "0 1 3"
	tWorldCelebrationPackage_Probabil[3008034][3]["Item_2"] = 723342
	tWorldCelebrationPackage_Probabil[3008034][3]["Attr_2"] = "0 1 3"
	tWorldCelebrationPackage_Probabil[3008034][3]["Message"] = "MessageBox8"
	tWorldCelebrationPackage_Probabil[3008034][3]["GetItemLog"] = "0,0,%d,%d,12000274,2,730003[723342],1[1]"

	--佛度众生礼包：等级2转以上
	tWorldCelebrationPackage_Probabil[3008035] = {}
	tWorldCelebrationPackage_Probabil[3008035]["ItemChanceSum"] = 10000

	tWorldCelebrationPackage_Probabil[3008035][1] = {}
	tWorldCelebrationPackage_Probabil[3008035][1]["RandomItemChanceType"] = 2
	tWorldCelebrationPackage_Probabil[3008035][1]["ItemChance"] = 3500
	tWorldCelebrationPackage_Probabil[3008035][1]["Item_1"] = 729242
	tWorldCelebrationPackage_Probabil[3008035][1]["Attr_1"] = "0 2 3"
	tWorldCelebrationPackage_Probabil[3008035][1]["CultureValue"] = 100
	tWorldCelebrationPackage_Probabil[3008035][1]["Message"] = "MessageBox9"
	tWorldCelebrationPackage_Probabil[3008035][1]["GetItemLog"] = "0,0,%d,%d,12000274,2,729242[19],2[100]"

	tWorldCelebrationPackage_Probabil[3008035][2] = {}
	tWorldCelebrationPackage_Probabil[3008035][2]["RandomItemChanceType"] = 2
	tWorldCelebrationPackage_Probabil[3008035][2]["ItemChance"] = 3500
	tWorldCelebrationPackage_Probabil[3008035][2]["Item_1"] = 3002029
	tWorldCelebrationPackage_Probabil[3008035][2]["Attr_1"] = "0 1 3 0 1"
	tWorldCelebrationPackage_Probabil[3008035][2]["Item_2"] = 3003124
	tWorldCelebrationPackage_Probabil[3008035][2]["Attr_2"] = "0 5 3"
	tWorldCelebrationPackage_Probabil[3008035][2]["Item_3"] = 3003126
	tWorldCelebrationPackage_Probabil[3008035][2]["Attr_3"] = "0 2 3"
	tWorldCelebrationPackage_Probabil[3008035][2]["Message"] = "MessageBox10"
	tWorldCelebrationPackage_Probabil[3008035][2]["GetItemLog"] = "0,0,%d,%d,12000274,2,3002029[3003124][3003126],1[5][2]"

	tWorldCelebrationPackage_Probabil[3008035][3] = {}
	tWorldCelebrationPackage_Probabil[3008035][3]["RandomItemChanceType"] = 2
	tWorldCelebrationPackage_Probabil[3008035][3]["ItemChance"] = 3000
	tWorldCelebrationPackage_Probabil[3008035][3]["Item_1"] = 723342
	tWorldCelebrationPackage_Probabil[3008035][3]["Attr_1"] = "0 3 3"
	tWorldCelebrationPackage_Probabil[3008035][3]["Item_2"] = 3002169
	tWorldCelebrationPackage_Probabil[3008035][3]["Attr_2"] = "0 1 3"
	tWorldCelebrationPackage_Probabil[3008035][3]["ServiceValue"] = 30
	tWorldCelebrationPackage_Probabil[3008035][3]["Message"] = "MessageBox11"
	tWorldCelebrationPackage_Probabil[3008035][3]["GetItemLog"] = "0,0,%d,%d,12000274,2,723342[3002169],3[1]"
	
	tWorldCelebrationPackage_Probabil["Item"] = {"Item_1","Item_2","Item_3"}
	tWorldCelebrationPackage_Probabil["Attr"] = {"Attr_1","Attr_2","Attr_3"}
	
	--万佛朝宗礼包
	tWorldCelebrationPackage_Probabil[3008036] = {}
	tWorldCelebrationPackage_Probabil[3008036]["GetItemLog"] = "0,0,3008036,1,12000274,2,1200001[3008037],1[1]"
	tWorldCelebrationPackage_Probabil[3008036][1] = {}
	tWorldCelebrationPackage_Probabil[3008036][1]["Id"] = 1200001
	tWorldCelebrationPackage_Probabil[3008036][1]["ItemAttr"] = "0 1 3"
	tWorldCelebrationPackage_Probabil[3008036][2] = {}
	tWorldCelebrationPackage_Probabil[3008036][2]["Id"] = 3008037
	tWorldCelebrationPackage_Probabil[3008036][2]["ItemAttr"] = "0 1"
	
	--极乐外套礼包
	tWorldCelebrationPackage_Probabil[3008037] = {}
	tWorldCelebrationPackage_Probabil[3008037]["GetItemLog"] = "0,0,3008037,1,12000274,2,%d,1"
	tWorldCelebrationPackage_Probabil[3008037][1] = {}
	tWorldCelebrationPackage_Probabil[3008037][1]["Id"] = 188295
	tWorldCelebrationPackage_Probabil[3008037][1]["ItemAttr"] = "0 1 3 10080 0 0 0 1"
	tWorldCelebrationPackage_Probabil[3008037][2] = {}
	tWorldCelebrationPackage_Probabil[3008037][2]["Id"] = 192575
	tWorldCelebrationPackage_Probabil[3008037][2]["ItemAttr"] = "0 1 3 10080 0 0 0 1"
	tWorldCelebrationPackage_Probabil[3008037][3] = {}
	tWorldCelebrationPackage_Probabil[3008037][3]["Id"] = 184335
	tWorldCelebrationPackage_Probabil[3008037][3]["ItemAttr"] = "0 1 3 10080 0 0 0 1"
	
-- stc掩码
local tWorldCelebrationPackage_Stc = {}
	tWorldCelebrationPackage_Stc["EventType"] = 139
	tWorldCelebrationPackage_Stc["DataType"] = {}
	tWorldCelebrationPackage_Stc["DataType"][1] = 55
	tWorldCelebrationPackage_Stc["DataType"][2] = 56
	tWorldCelebrationPackage_Stc["DataType"][3] = 57
	tWorldCelebrationPackage_Stc["RewarData"] = 1
	tWorldCelebrationPackage_Stc["OpenData"] = {1,2,3}
	tWorldCelebrationPackage_Stc["GetDataType"] = {55,56}

--------------------------------------逻辑部分-----------------------------------------	
--上线触发
function WorldCelebrationPackage_PlayLogin()
	--判断是否在活动礼包领取时间内
	if not Sys_ChkFullTime(tWorldCelebrationPackage_Constant["GetPackageTime"]) then
		return
	end
	
	local nEventType = tWorldCelebrationPackage_Stc["EventType"]
	local nDataType1 = tWorldCelebrationPackage_Stc["DataType"][1]
	local nDataType2 = tWorldCelebrationPackage_Stc["DataType"][2]
	local nRewarData = tWorldCelebrationPackage_Stc["RewarData"]
	local nMetempsychosis = Get_UserMetempsychosis(nUserId)
	local nProfession = Get_UserProfession()
	
	--如果玩家未转世且等级不足
	if not User_JudgeLevelAndMetempsychosis(tWorldCelebrationPackage_Constant["Level"],tWorldCelebrationPackage_Constant["Metempsychosis"][1]) then
		return
	end
	
	--判断玩家背包空间
	if not User_CheckLeftSpace(2) then
		User_TalkChannel2005(tWorldCelebrationPackage_UsePackage_Text["MessageBox15"])
		return 
	end
	
	--判断是否未领取过佛光普照礼包或佛法无边礼包或佛度众生礼包
	if not Task_ChkStcValue(nEventType,nDataType1,">=",nRewarData) then
		for i=1,#tWorldCelebrationPackage_Constant["Metempsychosis"] do
			if nMetempsychosis == tWorldCelebrationPackage_Constant["Metempsychosis"][i] then
				WorldCelebrationPackage_GetPackage(1,tWorldCelebrationPackage_Constant["PackageItemId"][i],Get_ItemtypeName(tWorldCelebrationPackage_Constant["PackageItemId"][i]))
			end
		end
		
		if nMetempsychosis >= tWorldCelebrationPackage_Constant["SpecialMetempsychosis"] then
			WorldCelebrationPackage_GetPackage(1,tWorldCelebrationPackage_Constant["PackageItemId"][3],Get_ItemtypeName(tWorldCelebrationPackage_Constant["PackageItemId"][3]))
		end
	end
	
	--判断玩家是否不是武僧
	if not(nProfession >= tWorldCelebrationPackage_Constant["Monk"][1] and nProfession <= tWorldCelebrationPackage_Constant["Monk"][2]) then
		return
	end
	
	--判断玩家是否领取过武僧特供礼包
	if not Task_ChkStcValue(nEventType,nDataType2,">=",nRewarData) then	
		WorldCelebrationPackage_GetPackage(2,tWorldCelebrationPackage_Constant["PackageItemId"][4],Get_ItemtypeName(tWorldCelebrationPackage_Constant["PackageItemId"][4]))
	end
end

--获得礼包(nType = 1,获取普天同庆礼包;nType = 2,获取武僧特供礼包)
function WorldCelebrationPackage_GetPackage(nType,nPackageId,sItemName)
	local nEventType = tWorldCelebrationPackage_Stc["EventType"]
	local nRewarData = tWorldCelebrationPackage_Stc["RewarData"]
	
	for i = 1,#tWorldCelebrationPackage_Stc["GetDataType"] do
		if nType == i then
			Task_SetStatistic(nEventType,tWorldCelebrationPackage_Stc["GetDataType"][i],nRewarData,1)
			Item_AddItem(nPackageId)
			User_TalkChannel2005(string.format(tWorldCelebrationPackage_UsePackage_Text["MessageBox14"],sItemName))
			Sys_SaveActionFestivalLog(string.format(tWorldCelebrationPackage_Log["GetPackage"],nPackageId))
			return
		end
	end
end

--使用礼包
function WorldCelebrationPackage_UsePackage(nItemType)
	local nEventType = tWorldCelebrationPackage_Stc["EventType"]
	local nDataType = tWorldCelebrationPackage_Stc["DataType"][3]
	local nItemId = tWorldCelebrationPackage_Constant["PackageItemId"][nItemType]
	
	--判断是否在活动礼包打开时间内
	if not Sys_ChkFullTime(tWorldCelebrationPackage_Constant["UsePackageTime"]) then
		if Item_ChkItem(nItemId,1) and Item_DelItem(nItemId,1) then
			User_TalkChannel2005(tWorldCelebrationPackage_UsePackage_Text["MessageBox13"])
			Sys_SaveActionFestivalLog(string.format(tWorldCelebrationPackage_Log["DelPackage"],nItemId))
		end
		return
	end
	
	--判断是否隔天（非第一次开礼包且不为武僧特供礼包）
	if not Task_StcInterval(nEventType,nDataType,1,4) and Task_ChkStcValue(nEventType,nDataType,"~=",0) and nItemType ~= 4 then
		User_TalkChannel2005(tWorldCelebrationPackage_UsePackage_Text["MessageBox12"])
		return
	end
	
	--判断背包空间（不是最后一次打开礼包或者礼包是武僧特供礼包）
	if not User_CheckLeftSpace(tWorldCelebrationPackage_Constant["Space"][nItemType]) and (Task_ChkStcValue(nEventType,nDataType,"~=",2) or (nItemType == 4)) then
		User_TalkChannel2005(string.format(tWorldCelebrationPackage_UsePackage_Text["MessageBox1"],tWorldCelebrationPackage_Constant["Space"][nItemType]))
		return
	--最后一次打开礼包
	elseif nItemType ~= 4 then
		if not User_CheckLeftSpace(tWorldCelebrationPackage_Constant["LastSpace"][nItemType]) and Task_ChkStcValue(nEventType,nDataType,"==",2) then
			User_TalkChannel2005(string.format(tWorldCelebrationPackage_UsePackage_Text["MessageBox1"],tWorldCelebrationPackage_Constant["LastSpace"][nItemType]))
			return
		end
	end
	
	--打开武僧特供礼包
	if nItemType == 4 then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			for i = 1,#tWorldCelebrationPackage_Probabil[nItemId] do
				local nProbabilItemId = tWorldCelebrationPackage_Probabil[nItemId][i]["Id"]
				local nProbabilItemAttr = tWorldCelebrationPackage_Probabil[nItemId][i]["ItemAttr"]
				Item_AddNewItem(nProbabilItemId,nProbabilItemAttr)
			end
			User_TalkChannel2005(tWorldCelebrationPackage_UsePackage_Text["MessageBox17"])
			User_EffectAdd("self","born")
			Sys_SaveActionFestivalLog(tWorldCelebrationPackage_Probabil[nItemId]["GetItemLog"])
		end
	--打开佛光普照礼包或佛法无边礼包或佛度众生礼包
	elseif nItemType == 1 or nItemType == 2 or nItemType == 3 then
		for i = 1,#tWorldCelebrationPackage_Stc["OpenData"] do
			if Task_ChkStcValue(nEventType,nDataType,"==",tWorldCelebrationPackage_Stc["OpenData"][i]-1) then
				local bDelPackege = false 
				if tWorldCelebrationPackage_Stc["OpenData"][i] == 3 and Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
					bDelPackege = true
				end
				Task_SetStatistic(nEventType,nDataType,tWorldCelebrationPackage_Stc["OpenData"][i],1)
				Task_SetStcTimestamp(nEventType,nDataType,0)
				WorldCelebrationPackage_GetItem(nItemId,bDelPackege)
				return
			end
		end
	end
end

--极乐外套礼包
function WorldCelebrationPackage_GetClothes(nItemType)
	local nPackageId = tWorldCelebrationPackage_Constant["PackageItemId"][5]
	local nItemId = tWorldCelebrationPackage_Probabil[nPackageId][nItemType]["Id"]
	
	--删除礼包并添加外套
	if Item_ChkItem(nPackageId) and Item_DelItem(nPackageId) then
		Item_AddNewItem(nItemId,tWorldCelebrationPackage_Probabil[nPackageId][nItemType]["ItemAttr"])
		Sys_SaveActionFestivalLog(string.format(tWorldCelebrationPackage_Probabil[nPackageId]["GetItemLog"],nItemId))
		User_EffectAdd("self","born")
	end
end

--打开礼包后获得物品
function WorldCelebrationPackage_GetItem(nItemId,bDelPackege)
	local flat,tItem = Probabil_RandomAward(tWorldCelebrationPackage_Probabil,nItemId)

	--添加物品
	for i=1,#tWorldCelebrationPackage_Probabil["Item"] do
		if tItem[1]["tAward"][1][tWorldCelebrationPackage_Probabil["Item"][i]] == nil then
			break
		end
		local nProbabilItemId = tItem[1]["tAward"][1][tWorldCelebrationPackage_Probabil["Item"][i]]
		local nProbabilItemAttr = tItem[1]["tAward"][1][tWorldCelebrationPackage_Probabil["Attr"][i]]
		Item_AddNewItem(nProbabilItemId,nProbabilItemAttr)
	end

	--添加修为和战功（如果礼包里有）
	if tItem[1]["tAward"][1]["CultureValue"] ~= nil then
		User_AddCultureValue(tItem[1]["tAward"][1]["CultureValue"])
	elseif tItem[1]["tAward"][1]["ServiceValue"] ~= nil then
		User_AddServiceValue(tItem[1]["tAward"][1]["ServiceValue"])
	end
	User_TalkChannel2005(tWorldCelebrationPackage_UsePackage_Text[tItem[1]["tAward"][1]["Message"]])
	User_EffectAdd("self","born")
	
	if not bDelPackege then
		Sys_SaveActionFestivalLog(string.format(tItem[1]["tAward"][1]["GetItemLog"],0,0))
		return
	end
	Sys_SaveActionFestivalLog(string.format(tItem[1]["tAward"][1]["GetItemLog"],nItemId,1))
end

--------------------------------------物品配置-------------------------------------------
-- 佛光普照礼包
tItem[3008033] = tItem[3008033] or {}
tItem[3008033]["Function"] = function()
	WorldCelebrationPackage_UsePackage(1)
end

-- 佛法无边礼包
tItem[3008034] = tItem[3008034] or {}
tItem[3008034]["Function"] = function()
	WorldCelebrationPackage_UsePackage(2)
end

-- 佛度众生礼包
tItem[3008035] = tItem[3008035] or {}
tItem[3008035]["Function"] = function()
	WorldCelebrationPackage_UsePackage(3)
end

-- 万佛朝宗礼包
tItem[3008036] = tItem[3008036] or {}
tItem[3008036]["Function"] = function()
	WorldCelebrationPackage_UsePackage(4)
end

-- 极乐外套礼包
tItem[3008037] = tItem[3008037] or {}
tItem[3008037]["Text1-1"] = {111}
tItem[3008037]["Text111"] = tWorldCelebrationPackage_UsePackage_Text[3008037]["Text111"]
tItem[3008037]["tOption1-1"] = {1,2,3,4}

tItem[3008037]["Option1"] = tWorldCelebrationPackage_UsePackage_Text[3008037]["Option1"] 
tItem[3008037]["OptionPoint1"]="1-2"
tItem[3008037]["Option2"] = tWorldCelebrationPackage_UsePackage_Text[3008037]["Option2"] 
tItem[3008037]["OptionPoint2"]="1-3"
tItem[3008037]["Option3"] = tWorldCelebrationPackage_UsePackage_Text[3008037]["Option3"] 
tItem[3008037]["OptionPoint3"]="1-4"
tItem[3008037]["Option4"] = tWorldCelebrationPackage_UsePackage_Text[3008037]["Option4"] 

--外套1确认兑换对白
tItem[3008037]["Text1-2"] = {112}
tItem[3008037]["Text112"] = tWorldCelebrationPackage_UsePackage_Text[3008037]["Text112"]
tItem[3008037]["tOption1-2"] = {5,6}

tItem[3008037]["Option5"] = tWorldCelebrationPackage_UsePackage_Text[3008037]["Option5"] 
tItem[3008037]["OptionFunc5"]="WorldCelebrationPackage_GetClothes</N>1"
tItem[3008037]["Option6"] = tWorldCelebrationPackage_UsePackage_Text[3008037]["Option6"] 

--外套2确认兑换对白
tItem[3008037]["Text1-3"] = {113}
tItem[3008037]["Text113"] = tWorldCelebrationPackage_UsePackage_Text[3008037]["Text113"]
tItem[3008037]["tOption1-3"] = {7,6}

tItem[3008037]["Option7"] = tWorldCelebrationPackage_UsePackage_Text[3008037]["Option5"] 
tItem[3008037]["OptionFunc7"]="WorldCelebrationPackage_GetClothes</N>2"

--外套3确认兑换对白
tItem[3008037]["Text1-4"] = {114}
tItem[3008037]["Text114"] = tWorldCelebrationPackage_UsePackage_Text[3008037]["Text114"]
tItem[3008037]["tOption1-4"] = {9,6}

tItem[3008037]["Option9"] = tWorldCelebrationPackage_UsePackage_Text[3008037]["Option5"] 
tItem[3008037]["OptionFunc9"]="WorldCelebrationPackage_GetClothes</N>3"


table.insert(tSystem_PlayLogin_Func,WorldCelebrationPackage_PlayLogin)