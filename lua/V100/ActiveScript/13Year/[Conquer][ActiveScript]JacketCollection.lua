------------------------------------------------------------------------------------
--Name:			151222[简体征服][活动脚本]13周年外套征集活动发奖ID
--Creator:		刘益辉
--Created:		2015/12/23
------------------------------------------------------------------------------------
--任务需求：

------------------------------------------------------------------------------------
--	命名前缀
--	Jacketcollection

--常量表配置
local tJacketcollection_Cont={}
	--天石最大数
	tJacketcollection_Cont["Emoney"]=999999999
	--非使用时间
	tJacketcollection_Cont["BeforeActivityTime"]="2015-01-01 00:00 2016-06-01 23:59"
	tJacketcollection_Cont["ActivityTime"]="2016-06-02 00:00 2016-06-16 23:59"
	-- tJacketcollection_Cont["AfterActivityTime"]="2016-06-18 00:00 2020-05-11 23:59"

	--特效
	tJacketcollection_Cont["Effect"]="angelwing"

------------------------------------------------------礼包-------------------------------------------------------
	tJacketcollection_Cont["Package"]={}
	--13周年服装创意礼包
	tJacketcollection_Cont["Package"][3008146]={}
	tJacketcollection_Cont["Package"][3008146]["BagSpace"]=1
	tJacketcollection_Cont["Package"][3008146]["Log"]="0,0,3008146,1,112000283,2,3008151[3007803][12],1[1][500]"
	
	tJacketcollection_Cont["Package"][3008146]["Reward"]={}
	tJacketcollection_Cont["Package"][3008146]["Reward"]["Item1"]={}
	tJacketcollection_Cont["Package"][3008146]["Reward"]["Item1"]["Func"]=Item_AddItem
	tJacketcollection_Cont["Package"][3008146]["Reward"]["Item1"]["Param"]="3008151 0 0 3 10080 1"

	
	tJacketcollection_Cont["Package"][3008146]["Reward"]["Item2"]={}
	tJacketcollection_Cont["Package"][3008146]["Reward"]["Item2"]["Func"]=Item_AddItem
	tJacketcollection_Cont["Package"][3008146]["Reward"]["Item2"]["Param"]="3007803 0 0 3"

	
	tJacketcollection_Cont["Package"][3008146]["Reward"]["Item3"]={}
	tJacketcollection_Cont["Package"][3008146]["Reward"]["Item3"]["Func"]=User_AddStrengthValue    
	tJacketcollection_Cont["Package"][3008146]["Reward"]["Item3"]["Param"]="500"

	
	tJacketcollection_Cont["Package"][3008147]={}
	tJacketcollection_Cont["Package"][3008147]["BagSpace"]=2
	tJacketcollection_Cont["Package"][3008147]["Log"]="0,0,3008147,1,112000283,2,3004547[3003124][3003126],1[20][5]"
	
	tJacketcollection_Cont["Package"][3008147]["Reward"]={}
	tJacketcollection_Cont["Package"][3008147]["Reward"]["Item1"]={}
	tJacketcollection_Cont["Package"][3008147]["Reward"]["Item1"]["Func"]=Item_AddItem  
	tJacketcollection_Cont["Package"][3008147]["Reward"]["Item1"]["Param"]="3004547 0 0 3 10080 1"

	
	tJacketcollection_Cont["Package"][3008147]["Reward"]["Item2"]={}
	tJacketcollection_Cont["Package"][3008147]["Reward"]["Item2"]["Func"]=Item_AddItem
	tJacketcollection_Cont["Package"][3008147]["Reward"]["Item2"]["Param"]="3003124 0 20 3"

	
	tJacketcollection_Cont["Package"][3008147]["Reward"]["Item3"]={}
	tJacketcollection_Cont["Package"][3008147]["Reward"]["Item3"]["Func"]=Item_AddItem
	tJacketcollection_Cont["Package"][3008147]["Reward"]["Item3"]["Param"]="3003126 0 5 3"

	
	tJacketcollection_Cont["Package"][3008148]={}
	tJacketcollection_Cont["Package"][3008148]["BagSpace"]=1
	tJacketcollection_Cont["Package"][3008148]["Log"]="0,0,3008148,1,112000283,2,3008152[1088000][3],1[1][150]"
	
	tJacketcollection_Cont["Package"][3008148]["Reward"]={}
	tJacketcollection_Cont["Package"][3008148]["Reward"]["Item1"]={}
	tJacketcollection_Cont["Package"][3008148]["Reward"]["Item1"]["Func"]=Item_AddItem 
	tJacketcollection_Cont["Package"][3008148]["Reward"]["Item1"]["Param"]="3008152 0 0 3 10080 1"

	
	tJacketcollection_Cont["Package"][3008148]["Reward"]["Item2"]={}
	tJacketcollection_Cont["Package"][3008148]["Reward"]["Item2"]["Func"]=Item_AddItem
	tJacketcollection_Cont["Package"][3008148]["Reward"]["Item2"]["Param"]="1088000 0 0 3"

	
	tJacketcollection_Cont["Package"][3008148]["Reward"]["Item3"]={}
	tJacketcollection_Cont["Package"][3008148]["Reward"]["Item3"]["Func"]=User_AddEMoneyMono
	tJacketcollection_Cont["Package"][3008148]["Reward"]["Item3"]["Param"]="150"

	
------------------------------------------------------自选包-------------------------------------------------------
	tJacketcollection_Cont["OptionalPackage"]={}
	--tJacketcollection_Cont["OptionalPackage"]["BagSpace"] = 1
	tJacketcollection_Cont["OptionalPackage"]["Attr"] ="0 0 3 10080 1 0 0 1"
	
	tJacketcollection_Cont["OptionalPackage"][3008151]={}
	tJacketcollection_Cont["OptionalPackage"][3008151][1] = 188575 
	tJacketcollection_Cont["OptionalPackage"][3008151][2] = 192605 
	tJacketcollection_Cont["OptionalPackage"][3008151][3] = 188675 

	tJacketcollection_Cont["OptionalPackage"][3008152]={}
	tJacketcollection_Cont["OptionalPackage"][3008152][1] = 200482
	tJacketcollection_Cont["OptionalPackage"][3008152][2] = 200499
	tJacketcollection_Cont["OptionalPackage"][3008152][3] = 200449

------------------------------------------------------概率-------------------------------------------------------
local tJacketcollection_Prob = {}
	--tJacketcollection_Prob["BagSpace"] = 1
	tJacketcollection_Prob[3008149] = {}
	tJacketcollection_Prob[3008149][1] = {}
	tJacketcollection_Prob[3008149][1]["ItemChanceSum"] = 10000

	tJacketcollection_Prob[3008149][1][1] = {}
	tJacketcollection_Prob[3008149][1][1]["RandomItemChanceType"] = 2
	tJacketcollection_Prob[3008149][1][1]["ItemChance"] = 1000
	tJacketcollection_Prob[3008149][1][1]["Item_1"]= 1

	tJacketcollection_Prob[3008149][1][2] = {}
	tJacketcollection_Prob[3008149][1][2]["RandomItemChanceType"] = 2
	tJacketcollection_Prob[3008149][1][2]["ItemChance"] =2000
	tJacketcollection_Prob[3008149][1][2]["Item_1"]= 2
	
	tJacketcollection_Prob[3008149][1][3] = {}
	tJacketcollection_Prob[3008149][1][3]["RandomItemChanceType"] = 2
	tJacketcollection_Prob[3008149][1][3]["ItemChance"] = 2000
	tJacketcollection_Prob[3008149][1][3]["Item_1"]= 3
	
	tJacketcollection_Prob[3008149][1][4] = {}
	tJacketcollection_Prob[3008149][1][4]["RandomItemChanceType"] = 2
	tJacketcollection_Prob[3008149][1][4]["ItemChance"] = 2000
	tJacketcollection_Prob[3008149][1][4]["Item_1"]= 4

	tJacketcollection_Prob[3008149][1][5] = {}
	tJacketcollection_Prob[3008149][1][5]["RandomItemChanceType"] = 2
	tJacketcollection_Prob[3008149][1][5]["ItemChance"] = 1500
	tJacketcollection_Prob[3008149][1][5]["Item_1"]= 5
	
	tJacketcollection_Prob[3008149][1][6] = {}
	tJacketcollection_Prob[3008149][1][6]["RandomItemChanceType"] = 2
	tJacketcollection_Prob[3008149][1][6]["ItemChance"] = 1500
	tJacketcollection_Prob[3008149][1][6]["Item_1"]= 6
	
	tJacketcollection_Prob[3008150]= {}
	tJacketcollection_Prob[3008150][1] = {}
	tJacketcollection_Prob[3008150][1]["ItemChanceSum"] = 10000
	tJacketcollection_Prob[3008150][1][1] = {}
	tJacketcollection_Prob[3008150][1][1]["RandomItemChanceType"] = 2
	tJacketcollection_Prob[3008150][1][1]["ItemChance"] = 500
	tJacketcollection_Prob[3008150][1][1]["Item_1"]=7

	tJacketcollection_Prob[3008150][1][2] = {}
	tJacketcollection_Prob[3008150][1][2]["RandomItemChanceType"] = 2
	tJacketcollection_Prob[3008150][1][2]["ItemChance"] = 2000
	tJacketcollection_Prob[3008150][1][2]["Item_1"]= 8
	
	tJacketcollection_Prob[3008150][1][3] = {}
	tJacketcollection_Prob[3008150][1][3]["RandomItemChanceType"] = 2
	tJacketcollection_Prob[3008150][1][3]["ItemChance"] = 1500
	tJacketcollection_Prob[3008150][1][3]["Item_1"]= 9
	
	tJacketcollection_Prob[3008150][1][4] = {}
	tJacketcollection_Prob[3008150][1][4]["RandomItemChanceType"] = 2
	tJacketcollection_Prob[3008150][1][4]["ItemChance"] = 1500
	tJacketcollection_Prob[3008150][1][4]["Item_1"]=10

	tJacketcollection_Prob[3008150][1][5] = {}
	tJacketcollection_Prob[3008150][1][5]["RandomItemChanceType"] = 2
	tJacketcollection_Prob[3008150][1][5]["ItemChance"] = 500
	tJacketcollection_Prob[3008150][1][5]["Item_1"]=11
	
	tJacketcollection_Prob[3008150][1][6] = {}
	tJacketcollection_Prob[3008150][1][6]["RandomItemChanceType"] = 2
	tJacketcollection_Prob[3008150][1][6]["ItemChance"] = 500
	tJacketcollection_Prob[3008150][1][6]["Item_1"]= 12
	
	tJacketcollection_Prob[3008150][1][7] = {}
	tJacketcollection_Prob[3008150][1][7]["RandomItemChanceType"] = 2
	tJacketcollection_Prob[3008150][1][7]["ItemChance"] = 500
	tJacketcollection_Prob[3008150][1][7]["Item_1"]= 13
	
	tJacketcollection_Prob[3008150][1][8] = {}
	tJacketcollection_Prob[3008150][1][8]["RandomItemChanceType"] = 2
	tJacketcollection_Prob[3008150][1][8]["ItemChance"] = 3000
	tJacketcollection_Prob[3008150][1][8]["Item_1"]= 14

	local tJacketFunctionTab = {}
	tJacketFunctionTab[1] = {}
	tJacketFunctionTab[1]["Func"] =Item_AddNewItem
	tJacketFunctionTab[1]["Reward"] =3008153
	tJacketFunctionTab[1]["Attr"] ="0 0 0"
	tJacketFunctionTab[1]["Log"] ="0,0,3008149,1,112000283,2,3008153,1"
	
	tJacketFunctionTab[2] = {}
	tJacketFunctionTab[2]["Func"] =User_AddStrengthValue
	tJacketFunctionTab[2]["Reward"] =300
	tJacketFunctionTab[2]["Attr"] =""
	tJacketFunctionTab[2]["Log"] ="0,0,3008149,1,112000283,2,12,300"
	
	tJacketFunctionTab[3] = {}
	tJacketFunctionTab[3]["Func"] =Item_AddNewItem
	tJacketFunctionTab[3]["Reward"] =3003124
	tJacketFunctionTab[3]["Attr"] ="0 10 3"
	tJacketFunctionTab[3]["Log"] ="0,0,3008149,1,112000283,2,3003124,10"
	
	tJacketFunctionTab[4] = {}
	tJacketFunctionTab[4]["Func"] =Item_AddNewItem
	tJacketFunctionTab[4]["Reward"] =3003126
	tJacketFunctionTab[4]["Attr"] ="0 3 3"
	tJacketFunctionTab[4]["Log"] ="0,0,3008149,1,112000283,2,3003126,3"
	
	tJacketFunctionTab[5] = {}
	tJacketFunctionTab[5]["Func"] =User_AddEMoneyMono
	tJacketFunctionTab[5]["Reward"] =50
	tJacketFunctionTab[5]["Attr"] =""
	tJacketFunctionTab[5]["Log"] ="0,0,3008149,1,112000283,2,3,50"
	
	tJacketFunctionTab[6] = {}
	tJacketFunctionTab[6]["Func"] =User_AddCultivation
	tJacketFunctionTab[6]["Reward"] =500
	tJacketFunctionTab[6]["Attr"] =""
	tJacketFunctionTab[6]["Log"] ="0,0,3008149,1,112000283,2,6,500"
	
	tJacketFunctionTab[7] = {}
	tJacketFunctionTab[7]["Func"] =Item_AddNewItem
	tJacketFunctionTab[7]["Reward"] =3008154
	tJacketFunctionTab[7]["Attr"] ="0 0 0"
	tJacketFunctionTab[7]["Log"] ="0,0,3008150,1,112000283,2,3008154,1"
	
	tJacketFunctionTab[8] = {}
	tJacketFunctionTab[8]["Func"] =Item_AddNewItem
	tJacketFunctionTab[8]["Reward"] =3003124
	tJacketFunctionTab[8]["Attr"] ="0 15 3"
	tJacketFunctionTab[8]["Log"] ="0,0,3008150,1,112000283,2,3003124,15"
	
	tJacketFunctionTab[9] = {}
	tJacketFunctionTab[9]["Func"] =User_AddStrengthValue
	tJacketFunctionTab[9]["Reward"] =500
	tJacketFunctionTab[9]["Attr"] =""
	tJacketFunctionTab[9]["Log"] ="0,0,3008150,1,112000283,2,12,500"
	
	tJacketFunctionTab[10] = {}
	tJacketFunctionTab[10]["Func"] =Item_AddNewItem
	tJacketFunctionTab[10]["Reward"] =3003126
	tJacketFunctionTab[10]["Attr"] ="0 5 3"
	tJacketFunctionTab[10]["Log"] ="0,0,3008150,1,112000283,2,3003126,5"
	
	tJacketFunctionTab[11] = {}
	tJacketFunctionTab[11]["Func"] =User_AddEMoneyMono
	tJacketFunctionTab[11]["Reward"] =100
	tJacketFunctionTab[11]["Attr"] =""
	tJacketFunctionTab[11]["Log"] ="0,0,3008150,1,112000283,2,3,100"
	
	tJacketFunctionTab[12] = {}
	tJacketFunctionTab[12]["Func"] = Item_AddNewItem
	tJacketFunctionTab[12]["Reward"] =1088000
	tJacketFunctionTab[12]["Attr"] ="0 0 3"
	tJacketFunctionTab[12]["Log"] ="0,0,3008150,1,112000283,2,1088000,1"
	
	tJacketFunctionTab[13] = {}
	tJacketFunctionTab[13]["Func"] = Item_AddNewItem
	tJacketFunctionTab[13]["Reward"] =730003
	tJacketFunctionTab[13]["Attr"] ="0 0 3"
	tJacketFunctionTab[13]["Log"] ="0,0,3008150,1,112000283,2,730003,1"
	
	tJacketFunctionTab[14]={}
	tJacketFunctionTab[14]["Func"] =User_AddCultivation
	tJacketFunctionTab[14]["Reward"] =500
	tJacketFunctionTab[14]["Attr"] =""
	tJacketFunctionTab[14]["Log"] ="0,0,3008150,1,112000283,2,6,500"
	
-- ----------------------------------优惠券---------------------------------------------
	tJacketcollection_Cont["coupon"]={}
	tJacketcollection_Cont["coupon"]["Num"]=5
	tJacketcollection_Cont["coupon"]["CoatPrice"] = 3888 ---外套价格
	tJacketcollection_Cont["coupon"]["CoatId"] = 193725
	-- tJacketcollection_Cont["coupon"]["CoatId"] = 193605
	tJacketcollection_Cont["coupon"]["Space"] = 1
	tJacketcollection_Cont["coupon"]["CoatAttr"] = "0 1 0 0 0 0 0 1"
	tJacketcollection_Cont["coupon"]["Log"] = "%d,0,%d,1,112000283,2,%d,1"
	tJacketcollection_Cont["coupon"]["Effect"] = "angelwing"
	tJacketcollection_Cont["DelItem"] = "0,0,%d,1,112000283,3,0,0" --删除任务物品

	
	tJacketcollection_Cont["coupon"][3008153]={}
	tJacketcollection_Cont["coupon"][3008153]["Money"]=200
	tJacketcollection_Cont["coupon"][3008153]["ComposeId"]=3008154
	tJacketcollection_Cont["coupon"][3008153]["Log"]="0,0,3008153,5,2504027,2,3008154,1"
	tJacketcollection_Cont["coupon"][3008153]["EmoneyLog"] = "250	4027	3688	3688	1	"
	
	tJacketcollection_Cont["coupon"][3008154]={}
	tJacketcollection_Cont["coupon"][3008154]["Money"]=800
	tJacketcollection_Cont["coupon"][3008154]["ComposeId"]=3008155
	tJacketcollection_Cont["coupon"][3008154]["Log"]="0,0,3008154,5,2504028,2,3008155,1"
	tJacketcollection_Cont["coupon"][3008154]["EmoneyLog"] = "250	4028	3088	3088	1	"

	
	tJacketcollection_Cont["coupon"][3008155] = {}
	tJacketcollection_Cont["coupon"][3008155]["Money"]=2000
	tJacketcollection_Cont["coupon"][3008155]["EmoneyLog"] = "250	4029	1888	1888	1	"

	
--LOG 表
local tJacketcollection_LOG = {}
	--礼包
	--tJacketcollection_LOG["Package"] = "0,0,%d,1,112000283,2,%s"
	tJacketcollection_LOG["OptionalPackage"] = "0,0,%d,1,112000283,2,%d,1"
-- --------------------------------------逻辑部分-----------------------------------------
--13周年创意礼包
function  Jacketcollection_Clothing(nItemId)
	local nBagSpace= tJacketcollection_Cont["Package"][nItemId]["BagSpace"]
	 --空间
	 if not User_CheckLeftSpace(nBagSpace) then
		local sBagSpace = string.format(tJacketcollection_Text["BagSpace"],nBagSpace)
		User_TalkChannel2005(sBagSpace)
		return
	end

	local fun1 = tJacketcollection_Cont["Package"][nItemId]["Reward"]["Item1"]["Func"]
	local fun2 = tJacketcollection_Cont["Package"][nItemId]["Reward"]["Item2"]["Func"]
	local fun3 = tJacketcollection_Cont["Package"][nItemId]["Reward"]["Item3"]["Func"]
	
	local tParam1 =tJacketcollection_Cont["Package"][nItemId]["Reward"]["Item1"]["Param"]
	local tParam2=tJacketcollection_Cont["Package"][nItemId]["Reward"]["Item2"]["Param"]
	local tParam3=tJacketcollection_Cont["Package"][nItemId]["Reward"]["Item3"]["Param"]
	
	if nItemId == 3008148 then
		local nEMoney=Get_UserMonoEMoney()
		local nEMoneyMax =tJacketcollection_Cont["Emoney"]-nEMoney
		local nGiftMoney=tonumber(tJacketcollection_Cont["Package"][3008148]["Reward"]["Item3"]["Param"])
		if  nGiftMoney> nEMoneyMax then
			User_TalkChannel2005(tJacketcollection_Text["Money"])
			return
		end
	end
		--检测礼包
	if  not Item_ChkItem(nItemId) then
		return
	end
	
	--删除礼包
	 if not Item_DelItem(nItemId) then
		return
	 end
	 
	fun1(table.unpack(Jacketcollection_Split(tParam1," ")))
	fun2(table.unpack(Jacketcollection_Split(tParam2," ")))
	fun3(table.unpack(Jacketcollection_Split(tParam3," ")))
	
	User_EffectAdd("self",tJacketcollection_Cont["Effect"])
	
	local sLog = tJacketcollection_Cont["Package"][nItemId]["Log"]
	local sStr = tJacketcollection_Text["Str"][nItemId]
	
	Sys_SaveActionFestivalLog(sLog)
	User_TalkChannel2005(sStr)
end

 function Jacketcollection_Split(s, p)
	local rt = {}
	string.gsub(s, '[^'..p..']+', function(w) table.insert(rt,tonumber(w)) end )
	return rt
end

--7日时装自选包
function  Jacketcollection_ClothingOptional(nItemId)
	Sys_DialogText(tJacketcollection_Text[3008151]["Text111"] )
	for k,v in ipairs(tJacketcollection_Cont["OptionalPackage"][nItemId]) do 
		local sItemName = tJacketcollection_Text["name"][nItemId][k]
		Sys_DialogOption(sItemName,"</F>RechargeRebate_OpenPackage</N>"..nItemId .. "</N>"..v .."</S>"..sItemName)
	end
	Sys_DialogEnd()
end

function RechargeRebate_OpenPackage(nItemId,nRewardId,sItemName)
	local sAttr = tJacketcollection_Cont["OptionalPackage"]["Attr"]
	-- local nBagSpace = tJacketcollection_Cont["OptionalPackage"]["BagSpace"]
	-- 空间
	 -- if not User_CheckLeftSpace(nBagSpace) then
		-- local sBagSpace = string.format(tJacketcollection_Text["BagSpace"],nBagSpace)
		-- User_TalkChannel2005(sBagSpace)
		-- return
	-- end
	--检测礼包
	if  not Item_ChkItem(nItemId,1) then
		return
	end
	
	--删除礼包
	 if not Item_DelItem(nItemId,1) then
		return
	 end
		
	Item_AddNewItem(nRewardId,sAttr)
	User_EffectAdd("self",tJacketcollection_Cont["Effect"])
	
	local sLog = string.format(tJacketcollection_LOG["OptionalPackage"],nItemId,nRewardId)
	local sStr = string.format(tJacketcollection_Text[3008151]["Reward"],sItemName)
	Sys_SaveActionFestivalLog(sLog)
	User_TalkChannel2005(sStr)
	
end

function Jacketcollection_Praise(nItemId)
	-- local nBagSpace= tJacketcollection_Prob["BagSpace"]
	 --空间
	 -- if not User_CheckLeftSpace(nBagSpace) then
		-- local sBagSpace = string.format(tJacketcollection_Text["BagSpace"],nBagSpace)
		-- User_TalkChannel2005(sBagSpace)
		-- return
	-- end
	
	local flat,tJack = Probabil_RandomAward(tJacketcollection_Prob[nItemId],1)  
	local nJackFunId = tJack[1]["tAward"][1]["Item_1"]

	if nJackFunId == 5 or nJackFunId== 11 then
		local nEMoney=Get_UserMonoEMoney()
		local nEMoneyMax =tJacketcollection_Cont["Emoney"]-nEMoney
		if tJacketFunctionTab[nJackFunId]["Reward"] > nEMoneyMax then
			User_TalkChannel2005(tJacketcollection_Text["Money"])
			return
		end
	end
	
		--检测礼包
	if  not Item_ChkItem(nItemId) then
		return
	end
	
	--删除礼包
	 if not Item_DelItem(nItemId) then
		return
	 end
	 
	local func = tJacketFunctionTab[nJackFunId]["Func"] 
	local nReItemId = tJacketFunctionTab[nJackFunId]["Reward"] 
	local sAttr = tJacketFunctionTab[nJackFunId]["Attr"] 
	local sItemName= tJacketcollection_Text["name"][nJackFunId]
	if type(func) == "function"  and  sAttr ~= "" and  sAttr ~= nil then
		func(nReItemId,sAttr)
	else
		func(nReItemId)
	end
	
	User_EffectAdd("self",tJacketcollection_Cont["Effect"])
	
	local sLog = tJacketFunctionTab[nJackFunId]["Log"]
	local sStr = string.format(tJacketcollection_Text["Reward"],sItemName)
	Sys_SaveActionFestivalLog(sLog)
	User_TalkChannel2005(sStr)
end

--过期删除
function Jacketcollection_DeleteItem(nItemId)
	if not Sys_ChkFullTime (tJacketcollection_Cont["ActivityTime"]) then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			local sDelItemLog = string.format(tJacketcollection_Cont["DelItem"],nItemId)
			Sys_SaveActionFestivalLog(sDelItemLog)
			Sys_MsgBox(tJacketcollection_Text["coupon"]["Overtime"])
		end
		return true
	end
	return false
end

--优惠券
function Jacketcollection_coupon(nItemId)
----过期删除
	if Jacketcollection_DeleteItem(nItemId) then
		return
	end
	local nMoney = tJacketcollection_Cont["coupon"][nItemId]["Money"]
	local sName = tJacketcollection_Text[nItemId]["Name"]
	local sCompose= tJacketcollection_Text[nItemId]["ComposeName"]
	local sStr = string.format(tJacketcollection_Text[3008153]["Text112"],nMoney,sName,sCompose)
	Sys_DialogText(tJacketcollection_Text[3008153]["Text111"])
	Sys_DialogText(sStr)
	Sys_DialogText(tJacketcollection_Text[3008153]["Text113"])
	Sys_DialogOption(tJacketcollection_Text[3008153]["Option1"],"</F>tJacketcollection_Compose</N>" .. nItemId  )
	Sys_DialogOption(tJacketcollection_Text[3008153]["Option2"],"</F>tJacketcollection_BeforeUse</N>"..nItemId)
	Sys_DialogEnd()
end

function tJacketcollection_Compose(nItemId)
----过期删除
	if Jacketcollection_DeleteItem(nItemId) then
		return
	end

	local nNum = tJacketcollection_Cont["coupon"]["Num"]
--检测物品数量
	local sName= tJacketcollection_Text[nItemId]["Name"]
	local sComposeName= tJacketcollection_Text[nItemId]["ComposeName"]
	if  not Item_ChkMulItem(nItemId,nItemId,nNum) then
		local sStr = string.format(tJacketcollection_Text["Number"],sName,sComposeName)
		Sys_MsgBox(sStr)
		return 
	end
--判断背包空间
	-- local nBagSpace= tJacketcollection_Prob["BagSpace"]
	-- if not User_CheckLeftSpace(nBagSpace) then
		-- local sBagSpace = string.format(tJacketcollection_Text["BagSpace"],nBagSpace)
		-- Sys_MsgBox(sBagSpace)
		-- return
	-- end
--成功合成
	local nComposeId = tJacketcollection_Cont["coupon"][nItemId]["ComposeId"]
	
	if not Item_DelMulItem(nItemId,nItemId,nNum) then
		return
	end
	Item_AddItem(nComposeId)
	
	User_EffectAdd("self",tJacketcollection_Cont["Effect"])
	
	local sLog = tJacketcollection_Cont["coupon"][nItemId]["Log"]
	local sSuc = string.format(tJacketcollection_Text["Success"],sName,sComposeName)
	Sys_SaveActionFestivalLog(sLog)
	Sys_MsgBox(sSuc)
end

function tJacketcollection_BeforeUse(nItemId)
----过期删除
	if Jacketcollection_DeleteItem(nItemId) then
		return
	end

--判断使用时间
	if Sys_ChkFullTime(tJacketcollection_Cont["BeforeActivityTime"]) then
		Sys_MsgBox(tJacketcollection_Text["Date"])
		return
	end
	Sys_DialogText(tJacketcollection_Text[nItemId]["Text121"] )
	Sys_DialogOption(tJacketcollection_Text[3008153]["Option5"],"</F>Jacketcollection_CostConfirm</N>" .. nItemId)
	Sys_DialogOption(tJacketcollection_Text[3008153]["Option6"],"</F>NULL")
	Sys_DialogEnd()
end
function Jacketcollection_CostConfirm(nItemId)
----过期删除
	if Jacketcollection_DeleteItem(nItemId) then
		return
	end

	local nMoney = tJacketcollection_Cont["coupon"][nItemId]["Money"] --优惠的天石
	local nNeedMoney = tJacketcollection_Cont["coupon"]["CoatPrice"] - nMoney --需要多少天石

	local sStr = string.format(tJacketcollection_Text[3008153]["Text131"],nNeedMoney)
	Sys_DialogText(sStr)
	Sys_DialogOption(tJacketcollection_Text[3008153]["Option3"],"</F>Jacketcollection_Use</N>" .. nItemId)
	Sys_DialogOption(tJacketcollection_Text[3008153]["Option4"],"</F>NULL")
	Sys_DialogEnd()
end


function Jacketcollection_Use(nItemId)
----过期删除
	if Jacketcollection_DeleteItem(nItemId) then
		return
	end

	local nMoney = tJacketcollection_Cont["coupon"][nItemId]["Money"] --优惠的天石
	local nNeedMoney = tJacketcollection_Cont["coupon"]["CoatPrice"] - nMoney --需要多少天石
	local nCoatId = tJacketcollection_Cont["coupon"]["CoatId"] --外套id
	local nName = Get_ItemtypeName(nCoatId)  --外套名称
--检测物品
	if not Item_ChkItem(nItemId) then
		User_TalkChannel2005(tJacketcollection_Text["coupon"]["NoItem"])
		return
	end
--判断背包空间
	if not User_CheckLeftSpace(tJacketcollection_Cont["coupon"]["Space"]) then
		User_TalkChannel2005(tJacketcollection_Text["coupon"]["NoSpace"])
		return
	end
--判断天石数
	if Get_UserEMoney() < nNeedMoney then
		User_TalkChannel2005(tJacketcollection_Text["coupon"]["NoMoney"])
		return
	end
--扣天石
	if User_AddEMoney(-nNeedMoney) then
		if Item_DelItem(nItemId) then
			Item_AddNewItem(nCoatId,tJacketcollection_Cont["coupon"]["CoatAttr"])
			Sys_SaveEmoneyBuy(tJacketcollection_Cont["coupon"][nItemId]["EmoneyLog"])
			local sLog = string.format(tJacketcollection_Cont["coupon"]["Log"],nNeedMoney,nItemId,nCoatId)
			Sys_SaveActionFestivalLog(sLog)
			local sStr = string.format(tJacketcollection_Text["coupon"]["BuyCoat"],nName)
			Sys_MsgBox(sStr)
			User_EffectAdd("self",tJacketcollection_Cont["coupon"]["Effect"])
		end
	end

end

--------------------------------------物品模块-------------------------------------------
--13周年服装创意礼包
tItem[3008146] = tItem[3008146] or {}
tItem[3008146]["Function"] = function(nItemId,sItemName)
	Jacketcollection_Clothing(nItemId)
end
--13周年武器创意礼包
tItem[3008147] = tItem[3008146]

--13周年坐骑创意礼包
tItem[3008148] = tItem[3008146]

--7日时装外套自选包
tItem[3008151] = tItem[3008151] or {}
tItem[3008151]["Function"] = function(nItemId,sItemName)
	Jacketcollection_ClothingOptional(nItemId)
end

--7日坐骑外套自选包
tItem[3008152] = tItem[3008151]

--点赞达人礼包
tItem[3008149] = tItem[3008149] or {}
tItem[3008149]["Function"] = function(nItemId,sItemName)
	Jacketcollection_Praise(nItemId)
end
--眼光卓越
tItem[3008150] = tItem[3008149]

--13周年外套优惠券（小）
tItem[3008153] = tItem[3008153] or {}
tItem[3008153]["Function"] = function(nItemId,sItemName)
	Jacketcollection_coupon(nItemId)
end

--13周年外套优惠券（中）
tItem[3008154] = tItem[3008153]


--13周年外套优惠券（大）
tItem[3008155] = tItem[3008155]or {}
tItem[3008155]["Function"] = function(nItemId,sItemName)
	tJacketcollection_BeforeUse(nItemId)
end