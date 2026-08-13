------------------------------------------------------------------------------------
--Name:		[征服][任务脚本]法语并入英文补偿礼包及发奖action
--Purpose:	法语并入英文补偿礼包及发奖action
--Creator: 	张世超
--Created:	2016/01/06
------------------------------------------------------------------------------------
--命名规范
--CompensationGift

-- log 12000294

----对白
--对白检查％显示

--礼包概率表
local tCompensationGift = {}
	--3008425 行走江湖补偿包
	tCompensationGift[3008425] = {}
	tCompensationGift[3008425]["BagSpace"] = 6
	tCompensationGift[3008425]["Effect"] =  "zf2-e280"
	tCompensationGift[3008425]["EventType"] = 140
	tCompensationGift[3008425]["DataType"] = 73
	tCompensationGift[3008425]["MaxTime"] = 3
	--固定奖励
	tCompensationGift[3008425]["Award"] = {}
	tCompensationGift[3008425]["Award"]["Log"] = "0,0,3008425,1,12000294,2[%s],720027[1200001][723700],3[1][10]"
	tCompensationGift[3008425]["Award"][1] = {}
	tCompensationGift[3008425]["Award"][1]["Item"] = 720027
	tCompensationGift[3008425]["Award"][1]["ItemAttr"] = "0 3 3"
	tCompensationGift[3008425]["Award"][2] = {}
	tCompensationGift[3008425]["Award"][2]["Item"] = 1200001
	tCompensationGift[3008425]["Award"][2]["ItemAttr"] = "0 1 3"
	tCompensationGift[3008425]["Award"][3] = {}
	tCompensationGift[3008425]["Award"][3]["Item"] = 723700
	tCompensationGift[3008425]["Award"][3]["ItemAttr"] = "0 10 3"
	
	--随机奖励
	tCompensationGift[3008425][1] = {}
	tCompensationGift[3008425][1]["ItemChanceSum"] = 10000
	tCompensationGift[3008425][1]["Log"] = "0,0,3008425,1,12000294,2[%s],%s,%s"
	
	tCompensationGift[3008425][1][1] = {}
	tCompensationGift[3008425][1][1]["RandomItemChanceType"] = 2
	tCompensationGift[3008425][1][1]["ItemChance"] = 2000
	tCompensationGift[3008425][1][1]["Item_1"] = 3001063
	tCompensationGift[3008425][1][1]["ItemAttr"] = "0 1 3"

	tCompensationGift[3008425][1][2] = {}
	tCompensationGift[3008425][1][2]["RandomItemChanceType"] = 2
	tCompensationGift[3008425][1][2]["ItemChance"] = 2000
	tCompensationGift[3008425][1][2]["Item_1"] = 730003
	tCompensationGift[3008425][1][2]["ItemAttr"] = "0 1 3"

	tCompensationGift[3008425][1][3] = {}
	tCompensationGift[3008425][1][3]["RandomItemChanceType"] = 2
	tCompensationGift[3008425][1][3]["ItemChance"] = 2000
	tCompensationGift[3008425][1][3]["Item_1"] = 723342
	tCompensationGift[3008425][1][3]["ItemAttr"] = "0 1 3"

	tCompensationGift[3008425][1][4] = {}
	tCompensationGift[3008425][1][4]["RandomItemChanceType"] = 2
	tCompensationGift[3008425][1][4]["ItemChance"] = 2000
	tCompensationGift[3008425][1][4]["Item_1"] = 3001407
	tCompensationGift[3008425][1][4]["ItemAttr"] = "0 1 3"

	tCompensationGift[3008425][1][5] = {}
	tCompensationGift[3008425][1][5]["RandomItemChanceType"] = 2
	tCompensationGift[3008425][1][5]["ItemChance"] = 1600
	tCompensationGift[3008425][1][5]["Item_1"] = 3005128
	tCompensationGift[3008425][1][5]["ItemAttr"] = "0 1 3"

	tCompensationGift[3008425][1][6] = {}
	tCompensationGift[3008425][1][6]["RandomItemChanceType"] = 2
	tCompensationGift[3008425][1][6]["ItemChance"] = 50
	tCompensationGift[3008425][1][6]["Item_1"] = 723701
	tCompensationGift[3008425][1][6]["ItemAttr"] = "0 1 3"
	tCompensationGift[3008425][1][6]["LimitNum"] = 5 --单服限制数量
	tCompensationGift[3008425][1][6]["Globaldata"] = "80166 0" --记录单服限制数量的动态位
	
	tCompensationGift[3008425][1][7] = {}
	tCompensationGift[3008425][1][7]["RandomItemChanceType"] = 2
	tCompensationGift[3008425][1][7]["ItemChance"] = 100
	tCompensationGift[3008425][1][7]["Item_1"] = 1088000
	tCompensationGift[3008425][1][7]["ItemAttr"] = "0 1"

	tCompensationGift[3008425][1][8] = {}
	tCompensationGift[3008425][1][8]["RandomItemChanceType"] = 2
	tCompensationGift[3008425][1][8]["ItemChance"] = 50
	tCompensationGift[3008425][1][8]["Item_1"] = 730004
	tCompensationGift[3008425][1][8]["ItemAttr"] = "0 1"
	tCompensationGift[3008425][1][8]["LimitNum"] = 20 --单服限制数量
	tCompensationGift[3008425][1][8]["Globaldata"] = "80166 1" --记录单服限制数量的动态位

	tCompensationGift[3008425][1][9] = {}
	tCompensationGift[3008425][1][9]["RandomItemChanceType"] = 2
	tCompensationGift[3008425][1][9]["ItemChance"] = 200
	tCompensationGift[3008425][1][9]["Item_1"] = 724002
	tCompensationGift[3008425][1][9]["ItemAttr"] = "0 1"

	
	--3008426 叱咤江湖补偿包
	tCompensationGift[3008426] = {}
	tCompensationGift[3008426]["BagSpace"] = 9
	tCompensationGift[3008426]["Effect"] =  "zf2-e280"
	tCompensationGift[3008426]["EventType"] = 140
	tCompensationGift[3008426]["DataType"] = 74
	tCompensationGift[3008426]["MaxTime"] = 3
	
	--固定奖励
	tCompensationGift[3008426]["Award"] = {}
	tCompensationGift[3008426]["Award"]["Log"] = "0,0,3008426,1,12000294,2[%s],720027[3003126][3003124][729242],3[3][3][2]"
	tCompensationGift[3008426]["Award"][1] = {}
	tCompensationGift[3008426]["Award"][1]["Item"] = 720027
	tCompensationGift[3008426]["Award"][1]["ItemAttr"] = "0 3"
	tCompensationGift[3008426]["Award"][2] = {}
	tCompensationGift[3008426]["Award"][2]["Item"] = 3003126
	tCompensationGift[3008426]["Award"][2]["ItemAttr"] = "0 3 3"
	tCompensationGift[3008426]["Award"][3] = {}
	tCompensationGift[3008426]["Award"][3]["Item"] = 3003124
	tCompensationGift[3008426]["Award"][3]["ItemAttr"] = "0 3 3"
	tCompensationGift[3008426]["Award"][4] = {}
	tCompensationGift[3008426]["Award"][4]["Item"] = 729242
	tCompensationGift[3008426]["Award"][4]["ItemAttr"] = "0 2 3"
	
	--随机奖励
	tCompensationGift[3008426][1] = {}
	tCompensationGift[3008426][1]["ItemChanceSum"] = 10000
	tCompensationGift[3008426][1]["Log"] = "0,0,3008426,1,12000294,2[%s],%s,%s"
	
	tCompensationGift[3008426][1][1] = {}
	tCompensationGift[3008426][1][1]["RandomItemChanceType"] = 2
	tCompensationGift[3008426][1][1]["ItemChance"] = 2000
	tCompensationGift[3008426][1][1]["Item_1"] = 3005893
	tCompensationGift[3008426][1][1]["ItemAttr"] = "0 1 3"

	tCompensationGift[3008426][1][2] = {}
	tCompensationGift[3008426][1][2]["RandomItemChanceType"] = 2
	tCompensationGift[3008426][1][2]["ItemChance"] = 1000
	tCompensationGift[3008426][1][2]["Item_1"] = 3005129
	tCompensationGift[3008426][1][2]["ItemAttr"] = "0 1 3"

	tCompensationGift[3008426][1][3] = {}
	tCompensationGift[3008426][1][3]["RandomItemChanceType"] = 2
	tCompensationGift[3008426][1][3]["ItemChance"] = 2000
	tCompensationGift[3008426][1][3]["Item_1"] = 3001407
	tCompensationGift[3008426][1][3]["ItemAttr"] = "0 2 3"

	tCompensationGift[3008426][1][4] = {}
	tCompensationGift[3008426][1][4]["RandomItemChanceType"] = 2
	tCompensationGift[3008426][1][4]["ItemChance"] = 2000
	tCompensationGift[3008426][1][4]["Item_1"] = 720128
	tCompensationGift[3008426][1][4]["ItemAttr"] = "0 3 3"

	tCompensationGift[3008426][1][5] = {}
	tCompensationGift[3008426][1][5]["RandomItemChanceType"] = 2
	tCompensationGift[3008426][1][5]["ItemChance"] = 1000
	tCompensationGift[3008426][1][5]["Item_1"] = 730004
	tCompensationGift[3008426][1][5]["ItemAttr"] = "0 2 3"

	tCompensationGift[3008426][1][6] = {}
	tCompensationGift[3008426][1][6]["RandomItemChanceType"] = 2
	tCompensationGift[3008426][1][6]["ItemChance"] = 1000
	tCompensationGift[3008426][1][6]["Item_1"] = 724002
	tCompensationGift[3008426][1][6]["ItemAttr"] = "0 2"

	tCompensationGift[3008426][1][7] = {}
	tCompensationGift[3008426][1][7]["RandomItemChanceType"] = 2
	tCompensationGift[3008426][1][7]["ItemChance"] = 945
	tCompensationGift[3008426][1][7]["Item_1"] = 1088000
	tCompensationGift[3008426][1][7]["ItemAttr"] = "0 1"

	tCompensationGift[3008426][1][8] = {}
	tCompensationGift[3008426][1][8]["RandomItemChanceType"] = 2
	tCompensationGift[3008426][1][8]["ItemChance"] = 5
	tCompensationGift[3008426][1][8]["Item_1"] = 723694
	tCompensationGift[3008426][1][8]["ItemAttr"] = "0 1"
	tCompensationGift[3008426][1][8]["LimitNum"] = 10 --单服限制数量
	tCompensationGift[3008426][1][8]["Globaldata"] = "80166 2" --记录单服限制数量的动态位	

	tCompensationGift[3008426][1][9] = {}
	tCompensationGift[3008426][1][9]["RandomItemChanceType"] = 2
	tCompensationGift[3008426][1][9]["ItemChance"] = 50
	tCompensationGift[3008426][1][9]["Item_1"] = 730006
	tCompensationGift[3008426][1][9]["ItemAttr"] = "0 1"
	tCompensationGift[3008426][1][9]["LimitNum"] = 3 --单服限制数量
	tCompensationGift[3008426][1][9]["Globaldata"] = "80166 3" --记录单服限制数量的动态位	
	
	tCompensationGift[3008427] = {}	
	tCompensationGift[3008427]["BagSpace"] = 2
	tCompensationGift[3008427]["Effect"] =  "zf2-e280"
	tCompensationGift[3008427]["Log"] = "0,0,3008427,1,12000294,2,%s,%s"
	tCompensationGift[3008427]["LogVip0"] = "0,0,3008427,1,12000294,2,0,0" 
	tCompensationGift[3008427]["Award"] = {}
	
	--vip1等级奖励
	tCompensationGift[3008427]["Award"][1] = {}
 	tCompensationGift[3008427]["Award"][1][1] = {}
	tCompensationGift[3008427]["Award"][1][1] ["Item"] = 3003124
	tCompensationGift[3008427]["Award"][1][1] ["ItemAttr"] = "0 3 3"
	--vip2等级奖励
	tCompensationGift[3008427]["Award"][2] = {}
 	tCompensationGift[3008427]["Award"][2][1] = {}
	tCompensationGift[3008427]["Award"][2][1] ["Item"] = 723342
	tCompensationGift[3008427]["Award"][2][1] ["ItemAttr"] = ""	
 	tCompensationGift[3008427]["Award"][2][2] = {}
	tCompensationGift[3008427]["Award"][2][2] ["Item"] = 3003124
	tCompensationGift[3008427]["Award"][2][2] ["ItemAttr"] = "0 10 3"
	--vip3等级奖励
	tCompensationGift[3008427]["Award"][3] = {} 
 	tCompensationGift[3008427]["Award"][3][1] = {}
	tCompensationGift[3008427]["Award"][3][1] ["Item"] = 723342
	tCompensationGift[3008427]["Award"][3][1] ["ItemAttr"] = ""
 	tCompensationGift[3008427]["Award"][3][2] = {}
	tCompensationGift[3008427]["Award"][3][2] ["Item"] = 3003124
	tCompensationGift[3008427]["Award"][3][2] ["ItemAttr"] = "0 10 3"
 	tCompensationGift[3008427]["Award"][3][3] = {}
	tCompensationGift[3008427]["Award"][3][3] ["Item"] = 3003125
	tCompensationGift[3008427]["Award"][3][3] ["ItemAttr"] = "0 10"
	--vip4等级奖励
	tCompensationGift[3008427]["Award"][4] = {} 
 	tCompensationGift[3008427]["Award"][4][1] = {}
	tCompensationGift[3008427]["Award"][4][1] ["Item"] = 3008428
	tCompensationGift[3008427]["Award"][4][1] ["ItemAttr"] = ""
	--vip5等级奖励
	tCompensationGift[3008427]["Award"][5] = {} 
 	tCompensationGift[3008427]["Award"][5][1] = {}
	tCompensationGift[3008427]["Award"][5][1] ["Item"] = 3008429
	tCompensationGift[3008427]["Award"][5][1] ["ItemAttr"] = ""
	--vip6等级奖励
	tCompensationGift[3008427]["Award"][6] = {} 
 	tCompensationGift[3008427]["Award"][6][1] = {}
	tCompensationGift[3008427]["Award"][6][1] ["Item"] = 3008430
	tCompensationGift[3008427]["Award"][6][1] ["ItemAttr"] = ""
	--vip7等级奖励
	tCompensationGift[3008427]["Award"][7] = {}
 	tCompensationGift[3008427]["Award"][7][1] = {}
	tCompensationGift[3008427]["Award"][7][1] ["Item"] = 3008431
	tCompensationGift[3008427]["Award"][7][1] ["ItemAttr"] = ""

--外套礼包数据
local tCompensationGift_Garment = {}
	tCompensationGift_Garment[3008428] = {}
	tCompensationGift_Garment[3008428]["Log"] = "0,0,%s,1,12000294,2,%s,1"
	tCompensationGift_Garment[3008428]["Effect"] = "zf2-e280"
	
	tCompensationGift_Garment[3008428][1] = {}
	tCompensationGift_Garment[3008428][1]["ItemId"] = 188265
	tCompensationGift_Garment[3008428][1]["ItemAttr"] = {}
	tCompensationGift_Garment[3008428][1]["ItemAttr"].addamount = 1 --获得个数
	tCompensationGift_Garment[3008428][1]["ItemAttr"].monopoly = 3 --赠品
	tCompensationGift_Garment[3008428][1]["ItemAttr"].save_time = 525600 --时效
	tCompensationGift_Garment[3008428][1]["ItemAttr"].reduce_dmg = 1 --神佑
	
	tCompensationGift_Garment[3008428][2] = {}
	tCompensationGift_Garment[3008428][2]["ItemId"] = 184305
	tCompensationGift_Garment[3008428][2]["ItemAttr"] = {}
	tCompensationGift_Garment[3008428][2]["ItemAttr"].addamount = 1 --获得个数
	tCompensationGift_Garment[3008428][2]["ItemAttr"].monopoly = 3 --赠品
	tCompensationGift_Garment[3008428][2]["ItemAttr"].save_time = 525600 --时效
	tCompensationGift_Garment[3008428][2]["ItemAttr"].reduce_dmg = 1 --神佑

	tCompensationGift_Garment[3008429] = {}
	tCompensationGift_Garment[3008429]["Log"] = "0,0,%s,1,12000294,2,%s,1"
	tCompensationGift_Garment[3008429]["Effect"] = "zf2-e280"
	
	tCompensationGift_Garment[3008429][1] = {}
	tCompensationGift_Garment[3008429][1]["ItemId"] = 188265
	tCompensationGift_Garment[3008429][1]["ItemAttr"] = {}
	tCompensationGift_Garment[3008429][1]["ItemAttr"].addamount = 1 --获得个数
	tCompensationGift_Garment[3008429][1]["ItemAttr"].monopoly = 3 --赠品
	tCompensationGift_Garment[3008429][1]["ItemAttr"].save_time = 525600 --时效
	tCompensationGift_Garment[3008429][1]["ItemAttr"].reduce_dmg = 1 --神佑
	
	tCompensationGift_Garment[3008429][2] = {}
	tCompensationGift_Garment[3008429][2]["ItemId"] = 184305
	tCompensationGift_Garment[3008429][2]["ItemAttr"] = {}
	tCompensationGift_Garment[3008429][2]["ItemAttr"].addamount = 1 --获得个数
	tCompensationGift_Garment[3008429][2]["ItemAttr"].monopoly = 3 --赠品
	tCompensationGift_Garment[3008429][2]["ItemAttr"].save_time = 525600 --时效
	tCompensationGift_Garment[3008429][2]["ItemAttr"].reduce_dmg = 1 --神佑

	tCompensationGift_Garment[3008429][3] = {}
	tCompensationGift_Garment[3008429][3]["ItemId"] = 192495
	tCompensationGift_Garment[3008429][3]["ItemAttr"] = {}
	tCompensationGift_Garment[3008429][3]["ItemAttr"].addamount = 1 --获得个数
	tCompensationGift_Garment[3008429][3]["ItemAttr"].monopoly = 3 --赠品
	tCompensationGift_Garment[3008429][3]["ItemAttr"].save_time = 525600 --时效
	tCompensationGift_Garment[3008429][3]["ItemAttr"].reduce_dmg = 1 --神佑	

	tCompensationGift_Garment[3008430] = {}
	tCompensationGift_Garment[3008430]["Log"] = "0,0,%s,1,12000294,2,%s,1"
	tCompensationGift_Garment[3008430]["Effect"] = "zf2-e280"
	tCompensationGift_Garment[3008430][1] = {}
	tCompensationGift_Garment[3008430][1]["ItemId"] = 192625
	tCompensationGift_Garment[3008430][1]["ItemAttr"] = {}
	tCompensationGift_Garment[3008430][1]["ItemAttr"].addamount = 1 --获得个数
	tCompensationGift_Garment[3008430][1]["ItemAttr"].save_time = 525600 --时效
	tCompensationGift_Garment[3008430][1]["ItemAttr"].reduce_dmg = 1 --神佑
	
	tCompensationGift_Garment[3008430][2] = {}
	tCompensationGift_Garment[3008430][2]["ItemId"] = 188755
	tCompensationGift_Garment[3008430][2]["ItemAttr"] = {}
	tCompensationGift_Garment[3008430][2]["ItemAttr"].addamount = 1 --获得个数
	tCompensationGift_Garment[3008430][2]["ItemAttr"].save_time = 525600 --时效
	tCompensationGift_Garment[3008430][2]["ItemAttr"].reduce_dmg = 1 --神佑

	tCompensationGift_Garment[3008431] = {}
	tCompensationGift_Garment[3008431]["Log"] = "0,0,%s,1,12000294,2,%s,1"
	tCompensationGift_Garment[3008431]["Effect"] = "zf2-e280"
	tCompensationGift_Garment[3008431][1] = {}
	tCompensationGift_Garment[3008431][1]["ItemId"] = 192625
	tCompensationGift_Garment[3008431][1]["ItemAttr"] = {}
	tCompensationGift_Garment[3008431][1]["ItemAttr"].addamount = 1 --获得个数
	tCompensationGift_Garment[3008431][1]["ItemAttr"].save_time = 525600 --时效
	tCompensationGift_Garment[3008431][1]["ItemAttr"].reduce_dmg = 1 --神佑
	
	tCompensationGift_Garment[3008431][2] = {}
	tCompensationGift_Garment[3008431][2]["ItemId"] = 188755
	tCompensationGift_Garment[3008431][2]["ItemAttr"] = {}
	tCompensationGift_Garment[3008431][2]["ItemAttr"].addamount = 1 --获得个数
	tCompensationGift_Garment[3008431][2]["ItemAttr"].save_time = 525600 --时效
	tCompensationGift_Garment[3008431][2]["ItemAttr"].reduce_dmg = 1 --神佑

	tCompensationGift_Garment[3008431][3] = {}
	tCompensationGift_Garment[3008431][3]["ItemId"] = 200482
	tCompensationGift_Garment[3008431][3]["ItemAttr"] = {}
	tCompensationGift_Garment[3008431][3]["ItemAttr"].addamount = 1 --获得个数
	tCompensationGift_Garment[3008431][3]["ItemAttr"].save_time = 525600 --时效
	tCompensationGift_Garment[3008431][3]["ItemAttr"].reduce_dmg = 1 --神佑

-------逻辑部分


function CompensationGift_Vip(nItemId)
	if not User_CheckLeftSpace(tCompensationGift[nItemId]["BagSpace"]) then
		User_TalkChannel2005(string.format(tCompensationGift_Text["NoBagSpace"],tCompensationGift[nItemId]["BagSpace"]))
		return
	end
	
	local nUserVip = Get_UserVip()
	local sLogItem = ""
	local sLogNum = ""
	local sEffect = tCompensationGift[nItemId]["Effect"]
		
	if nUserVip == 0 then
		if Item_ChkItem(nItemId) then
			Item_DelItem(nItemId)
			Sys_SaveActionLog(tCompensationGift[nItemId]["LogVip0"])
		end
		return
	end
	
	if nUserVip > 7 then
		nUserVip = 7
	end
	
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		for i,v in ipairs(tCompensationGift[nItemId]["Award"][nUserVip]) do
			local tItemAttr = Sys_Split(v["ItemAttr"]," ")
			Item_AddNewItem(v["Item"],v["ItemAttr"])
	
			if i == 1 then
				sLogItem = sLogItem..tostring(v["Item"])
				sLogNum = sLogNum..tostring(tItemAttr[2])
			else
				sLogItem = sLogItem.."["..tostring(v["Item"]).."]"
				sLogNum = sLogNum.."["..tostring(tItemAttr[2]).."]"
			end
		end
		
		Sys_SaveActionLog(string.format(tCompensationGift[nItemId]["Log"],sLogItem,sLogNum))
		User_TalkChannel2005(tCompensationGift_Text[nItemId]["Award"][nUserVip])
		User_EffectAdd("self",sEffect)
	else
		return
	end
	
end


function CompensationGift_Open(nItemId)
	local nEventType = tCompensationGift[nItemId]["EventType"]
	local DataType = tCompensationGift[nItemId]["DataType"]
	
	--使用间隔不足一天
	-- if Task_ChkStatistic(nEventType,DataType) and (not Task_StcInterval(nEventType,DataType,1,4) ) then
	if Task_ChkStatistic(nEventType,DataType) and (not Task_StcInterval(nEventType,DataType,3,0) ) then
		User_TalkChannel2005(tCompensationGift_Text["TimeInterval"])
		return
	end
	
	local nTimes = Get_UserStatisticValue(nEventType,DataType) or 0
	local sEffect = tCompensationGift[nItemId]["Effect"]
	
	nTimes = nTimes+1
	
	if nTimes >= (tCompensationGift[nItemId]["MaxTime"]) then
		if not User_CheckLeftSpace(tCompensationGift[nItemId]["BagSpace"]-1) then
			User_TalkChannel2005(string.format(tCompensationGift_Text["NoBagSpace"],(tCompensationGift[nItemId]["BagSpace"]-1)))
			return
		end
		
		if not (Item_ChkItem(nItemId) and Item_DelItem(nItemId)) then
			return
		end
	else
		if not User_CheckLeftSpace(tCompensationGift[nItemId]["BagSpace"]) then
			User_TalkChannel2005(string.format(tCompensationGift_Text["NoBagSpace"],tCompensationGift[nItemId]["BagSpace"]))
			return
		end	
	end

	Task_SetStatistic(nEventType,DataType,nTimes,1) 
	Task_SetStcTimestamp(nEventType,DataType,0)
	
	--固定奖励
	for i,v in ipairs(tCompensationGift[nItemId]["Award"]) do
		Item_AddNewItem(v["Item"],v["ItemAttr"])
	end
	Sys_SaveActionLog(string.format(tCompensationGift[nItemId]["Award"]["Log"],nTimes))
	
	--随机奖励
	local flat,tRandomAward = Probabil_RandomAward(tCompensationGift[nItemId],1)
	local nRandomItem = tRandomAward[1]["tAward"][1]["Item_1"]
	local sRandomItemAttr = tRandomAward[1]["tAward"][1]["ItemAttr"]
	local tRandomItemAttr = Sys_Split(sRandomItemAttr," ")
	local nLimitNum = tRandomAward[1]["tAward"][1]["LimitNum"] or 0
	local sGlobaldata = tRandomAward[1]["tAward"][1]["Globaldata"] or ""
	--判断单服数量限制
	if nLimitNum > 0 then
		local tGlobaldataTemp =  Sys_Split(sGlobaldata," ")
		local nNum = Get_SysDynaGlobalData(tonumber(tGlobaldataTemp[1]),tonumber(tGlobaldataTemp[2]))
		--判断是否超出限量值，超出给随机奖池的第一个奖励
		if nNum >= nLimitNum then
			nRandomItem = tCompensationGift[nItemId][1][1]["Item_1"]
			sRandomItemAttr = tCompensationGift[nItemId][1][1]["ItemAttr"]
		else
			nNum = nNum+1
			Sys_SetSynaGlobalData(tonumber(tGlobaldataTemp[1]),tonumber(tGlobaldataTemp[2]),nNum)
		end
	end	
	Item_AddNewItem(nRandomItem,sRandomItemAttr)
	Sys_SaveActionLog(string.format(tCompensationGift[nItemId][1]["Log"] ,nTimes,nRandomItem,tRandomItemAttr[2]))	
	User_TalkChannel2005(string.format(tCompensationGift_Text[nItemId]["Award"],tCompensationGift_Text[nItemId]["RandomAward"][nRandomItem]))
	User_EffectAdd("self",sEffect)

end

--选择对白
function CompensationGift_Select(nItemId)
	Sys_DialogText(tCompensationGift_Text[nItemId]["Select"])
	for i,v in ipairs(tCompensationGift_Garment[nItemId]) do
		local sOption = string.format(tCompensationGift_Text[nItemId]["Option"],Get_ItemtypeName(v["ItemId"]))
		Sys_DialogOption(sOption,"</F>CompensationGift_Check</N>"..nItemId.."</N>"..i)
	end
	local sOption2 = tCompensationGift_Text[nItemId]["Cancel"]
	Sys_DialogOption(sOption2,"</F>NULL")
	Sys_DialogFace()
	Sys_DialogEnd()
end

--二次确认
function CompensationGift_Check(nItemId,nSelect)
	local sCheck = string.format(tCompensationGift_Text[nItemId]["Check"],Get_ItemtypeName(tCompensationGift_Garment[nItemId][nSelect]["ItemId"]))
	local sOption1 = tCompensationGift_Text[nItemId]["Comfirm"]
	local sOption2 = tCompensationGift_Text[nItemId]["BackUp"]
	
	Sys_DialogText(sCheck)
	Sys_DialogOption(sOption1,"</F>CompensationGift_Confirm</N>"..nItemId.."</N>"..nSelect)
	Sys_DialogOption(sOption2,"</F>CompensationGift_Select</N>"..nItemId)
	Sys_DialogFace()
	Sys_DialogEnd()
end

--获得奖励
function CompensationGift_Confirm(nItemId,nSelect)
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		local nAwardItem = tCompensationGift_Garment[nItemId][nSelect]["ItemId"]
		local tItemAttr = tCompensationGift_Garment[nItemId][nSelect]["ItemAttr"]
		local sAward = string.format(tCompensationGift_Text[nItemId]["Award"],Get_ItemtypeName(nAwardItem))
		local sEffect = tCompensationGift_Garment[nItemId]["Effect"]
		local sLog = string.format(tCompensationGift_Garment[nItemId]["Log"],nItemId,nAwardItem)
		Item_AddNewItem(nAwardItem,tItemAttr)
		User_TalkChannel2005(sAward)
		User_EffectAdd("self",sEffect)
		Sys_SaveActionLog(sLog)
	end
end	




-----------物品使用模板
tItem[3008425] = tItem[3008425] or {}
tItem[3008425]["Function"] = function(nItemId,sItemName)
	CompensationGift_Open(nItemId)
end

tItem[3008426] = tItem[3008426] or {}
tItem[3008426]["Function"] = function(nItemId,sItemName)
	CompensationGift_Open(nItemId)
end

tItem[3008427] = tItem[3008427] or {}
tItem[3008427]["Function"] = function(nItemId,sItemName)
	CompensationGift_Vip(nItemId)
end


--外套礼包数据
tItem[3008428] = tItem[3008428] or {}
tItem[3008428]["Function"] = function(nItemId,sItemName)
	CompensationGift_Select(nItemId)
end

tItem[3008429] = tItem[3008429] or {}
tItem[3008429]["Function"] = function(nItemId,sItemName)
	CompensationGift_Select(nItemId)
end

tItem[3008430] = tItem[3008430] or {}
tItem[3008430]["Function"] = function(nItemId,sItemName)
	CompensationGift_Select(nItemId)
end

tItem[3008431] = tItem[3008431] or {}
tItem[3008431]["Function"] = function(nItemId,sItemName)
	CompensationGift_Select(nItemId)
end

