------------------------------------------------------------------------------------
--Name:			150826[简体征服][任务脚本]第二届女神花魁赛线上投票
--Purpose:		第二届女神花魁赛线上投票
--Creator:		张磊
--Created:		2015/08/27
------------------------------------------------------------------------------------


-- 动态码说明：
-- 50947	单服第一女神
-- 50948	单服第二女神
-- 50949	单服第三女神
-- 50950	单服第四女神
-- 50951	单服第五女神

-- data0:	表示女神获得投票的总分数
-- data1:	表示给女神投百合的分数
-- data2:	表示给女神投玫瑰的分数
-- data3:	表示给女神投兰花的分数
-- data4:	表示给女神投郁金香的分数
-- data5:	表示给女神投黄金玫瑰的分数

-- stc()掩码说明
-- stc(137,60)	表示玩家投鲜花获得的积分	兑换奖励用（兑换礼包时积分减少）
-- stc(137,61)	表示玩家投鲜花获得的积分	线下排名用（只增不减）


-----------------------------------------------------------------------------------





--------------------------------------------------常量表配置--------------------------------------------------
local tTheGoddess2015_VoteOnline_Cont = {}
	--活动时间前
	tTheGoddess2015_VoteOnline_Cont["BeforeActivityTime"] = "2016-01-01 00:00 2016-02-21 23:59"
	-- tTheGoddess2015_VoteOnline_Cont["BeforeActivityTime"] = "2016-01-01 00:00 2016-01-20 23:59"
	--活动时间
	tTheGoddess2015_VoteOnline_Cont["ActivityTime"] = "2016-02-22 00:00 2016-03-17 23:59"
	-- tTheGoddess2015_VoteOnline_Cont["ActivityTime"] = "2016-01-21 00:00 2016-03-20 23:59"

	tTheGoddess2015_VoteOnline_Cont["Web"] = "http://ns.zf.99.com/"
	
	-- 积分段
	tTheGoddess2015_VoteOnline_Cont[200] = 200
	tTheGoddess2015_VoteOnline_Cont[1000] = 1000
	tTheGoddess2015_VoteOnline_Cont[3000] = 3000
	
	-- 背包空间判断
	tTheGoddess2015_VoteOnline_Cont["Space"] = 1
	
	-- 玩家等级
	tTheGoddess2015_VoteOnline_Cont["Level"] = G_User_MaxLev
	
	-- 经验奖励
	tTheGoddess2015_VoteOnline_Cont["Exp"] = 30
	
	-- 修为值奖励
	tTheGoddess2015_VoteOnline_Cont["Cul"] = 15
	
	-- 外套合成需要碎片数量
	tTheGoddess2015_VoteOnline_Cont["NeedNum"] = 10
	
	tTheGoddess2015_VoteOnline_Cont["Attr"] = "0 0 3"
	tTheGoddess2015_VoteOnline_Cont["Atrr_1"] = "0 1"
	
	tTheGoddess2015_VoteOnline_Cont["WaiTao"] = 3008540
	tTheGoddess2015_VoteOnline_Cont["NoChkSpace_1"] = 3007411
	tTheGoddess2015_VoteOnline_Cont["NoChkSpace_2"] = 3007414
	tTheGoddess2015_VoteOnline_Cont["NoChkSpace_3"] = 3007415
	
local tTheGoddess2015_VoteOnline_GoldenRose = {}
	tTheGoddess2015_VoteOnline_GoldenRose[3007417] = 10
	tTheGoddess2015_VoteOnline_GoldenRose[3007418] = 30
	tTheGoddess2015_VoteOnline_GoldenRose[3007419] = 90
	tTheGoddess2015_VoteOnline_GoldenRose[3007420] = 990
	tTheGoddess2015_VoteOnline_GoldenRose[3007421] = 9990
	
local tTheGoddess2015_VoteOnline_Effect = {}
	tTheGoddess2015_VoteOnline_Effect["Self"] = "self"
	tTheGoddess2015_VoteOnline_Effect["HandIn"] = "red-flower-g-1"
	tTheGoddess2015_VoteOnline_Effect["RewardPack"] = "relive"
	tTheGoddess2015_VoteOnline_Effect["UserFlowerPack"] = "eidolon"
	
	
local tTheGoddess2015_VoteOnline_ItemSpace = {}
	-- tTheGoddess2015_VoteOnline_ItemSpace[3007411] = 0
	tTheGoddess2015_VoteOnline_ItemSpace[3007412] = 4
	tTheGoddess2015_VoteOnline_ItemSpace[3007413] = 1

	
local tTheGoddess2015_VoteOnline_Npc = {}
	tTheGoddess2015_VoteOnline_Npc["MapId"] = 1036
	tTheGoddess2015_VoteOnline_Npc["ID"] = 18805
	tTheGoddess2015_VoteOnline_Npc["nPosX"] = 264
	tTheGoddess2015_VoteOnline_Npc["nPosY"] = 200
	
local tTheGoddess2015_VoteOnline_Stc = {}
	tTheGoddess2015_VoteOnline_Stc["Event_type"] = 137
	
	tTheGoddess2015_VoteOnline_Stc["Data_type"] = {}
	tTheGoddess2015_VoteOnline_Stc["Data_type"][1] = 60
	tTheGoddess2015_VoteOnline_Stc["Data_type"][2] = 61
	
	tTheGoddess2015_VoteOnline_Stc["Data_type"][3] = 69
	tTheGoddess2015_VoteOnline_Stc["Data_type"][4] = 70
	tTheGoddess2015_VoteOnline_Stc["Data_type"][5] = 71

	
--女神 记录动态码
local tTheGoddess2015_VoteOnline_Global = {}
	tTheGoddess2015_VoteOnline_Global[1] = 50947
	tTheGoddess2015_VoteOnline_Global[2] = 50948
	tTheGoddess2015_VoteOnline_Global[3] = 50949
	tTheGoddess2015_VoteOnline_Global[4] = 50950
	tTheGoddess2015_VoteOnline_Global[5] = 50951
	
local tTheGoddess2015_VoteOnline_Flowner = {}
	-- 百合
	tTheGoddess2015_VoteOnline_Flowner[1] = {"百合",1}
	-- 玫瑰
	tTheGoddess2015_VoteOnline_Flowner[2] = {"玫瑰",3}
	-- 兰花
	tTheGoddess2015_VoteOnline_Flowner[3] = {"兰花",3}
	-- 郁金香
	tTheGoddess2015_VoteOnline_Flowner[4] = {"郁金香",80}
	-- 黄金玫瑰
	tTheGoddess2015_VoteOnline_Flowner[5] = {"黄金玫瑰",100}
	
local tTheGoddess2015_VoteOnline_FlownerID = {}
	tTheGoddess2015_VoteOnline_FlownerID[1] = {}
	-- 百合
	tTheGoddess2015_VoteOnline_FlownerID[1][1] = 752001
	tTheGoddess2015_VoteOnline_FlownerID[1][3] = 752003
	tTheGoddess2015_VoteOnline_FlownerID[1][9] = 752009
	tTheGoddess2015_VoteOnline_FlownerID[1][99] = 752099
	tTheGoddess2015_VoteOnline_FlownerID[1][999] = 752999
	
	tTheGoddess2015_VoteOnline_FlownerID[2] = {}
	-- 玫瑰
	tTheGoddess2015_VoteOnline_FlownerID[2][1] = 751001
	tTheGoddess2015_VoteOnline_FlownerID[2][3] = 751003
	tTheGoddess2015_VoteOnline_FlownerID[2][9] = 751009
	tTheGoddess2015_VoteOnline_FlownerID[2][99] = 751099
	tTheGoddess2015_VoteOnline_FlownerID[2][999] = 751999
	
	tTheGoddess2015_VoteOnline_FlownerID[3] = {}
	-- 兰花
	tTheGoddess2015_VoteOnline_FlownerID[3][1] = 753001
	tTheGoddess2015_VoteOnline_FlownerID[3][3] = 753003
	tTheGoddess2015_VoteOnline_FlownerID[3][9] = 753009
	tTheGoddess2015_VoteOnline_FlownerID[3][99] = 753099
	tTheGoddess2015_VoteOnline_FlownerID[3][999] = 753999
	
	tTheGoddess2015_VoteOnline_FlownerID[4] = {}
	-- 郁金香
	tTheGoddess2015_VoteOnline_FlownerID[4][1] = 754001
	tTheGoddess2015_VoteOnline_FlownerID[4][3] = 754003
	tTheGoddess2015_VoteOnline_FlownerID[4][9] = 754009
	tTheGoddess2015_VoteOnline_FlownerID[4][99] = 754099
	tTheGoddess2015_VoteOnline_FlownerID[4][999] = 754999
	
	tTheGoddess2015_VoteOnline_FlownerID[5] = {}
	-- 黄金玫瑰  
	tTheGoddess2015_VoteOnline_FlownerID[5][1] = 3007417
	tTheGoddess2015_VoteOnline_FlownerID[5][3] = 3007418
	tTheGoddess2015_VoteOnline_FlownerID[5][9] = 3007419
	tTheGoddess2015_VoteOnline_FlownerID[5][99] = 3007420
	tTheGoddess2015_VoteOnline_FlownerID[5][999] = 3007421
		
-- 积分礼包
local tTheGoddess2015_VoteOnline_JFpack = {}
	tTheGoddess2015_VoteOnline_JFpack[200] = 3007411
	tTheGoddess2015_VoteOnline_JFpack[1000] = 3007412
	tTheGoddess2015_VoteOnline_JFpack[3000] = 3007413
	
-- LOG 记录	
local tTheGoddess2015_VoteOnline_Log = {}
--背包信LOG
	tTheGoddess2015_VoteOnline_Log["DelItem"] = "0,0,%d,1,12000203,2,0,0"
	tTheGoddess2015_VoteOnline_Log["RewardExp"] = "0,0,3007416,1,12000203,2,4,30"
	tTheGoddess2015_VoteOnline_Log["RewardCul"] = "0,0,3007416,1,12000203,2,6,15"

	-- 合成获得外套
	tTheGoddess2015_VoteOnline_Log["GetWaiTao"] = "0,0,3007422,10,12000203,2,193325,1"
	
	-- 转换获得外套
	tTheGoddess2015_VoteOnline_Log["ZhuanWaiTao"] = "0,0,3007422[193325],10[1],12000203,2,193325,1"
	
	-- 成功上交花朵记录一个上交LOG
	tTheGoddess2015_VoteOnline_Log["HandFlower"] = "0,0,%d,1,12000203,2,0,%d"
	
	-- 换取积分礼包LOG
	tTheGoddess2015_VoteOnline_Log["GetPack"] = "0,0,0,0,12000203,2,%d,1"
	
	-- 黄金玫瑰过期使用给经验或者修行值
	tTheGoddess2015_VoteOnline_Log["Exp"] = "0,0,%d,0,12000203,2,4,%d"
	tTheGoddess2015_VoteOnline_Log["str"] = "0,0,%d,0,12000203,2,12,%d"
	
-----------------------------------------------------------------------------------------------------------------------------
-- 物品打开使用函数
local tTheGoddess2015_VoteOnline_ItemUse = {}
-- 直接给物品的函数
function TheGoddess2015_VoteOnline_ItemUse(nItemId,nFlag)

	local nRewardItem = tTheGoddess2015_VoteOnline_ItemUse[nItemId][nFlag]["Item_1"]
	local nItemAttr = tTheGoddess2015_VoteOnline_ItemUse[nItemId][nFlag]["ItemAttr"]
	local sLog = tTheGoddess2015_VoteOnline_ItemUse[nItemId][nFlag]["Log"]
	
	if Item_AddNewItem(nRewardItem,nItemAttr) then
		Sys_SaveActionFestivalLog(sLog)
		User_TalkChannel2005(tTheGoddess2015_VoteOnline_Text["ItemMsg"][nItemId][nFlag])
	end
end

-- 给两个物品
function TheGoddess2015_VoteOnline_DoubleItem(nItemId,nFlag)
	local nItem_1 = tTheGoddess2015_VoteOnline_ItemUse[nItemId][nFlag]["Item_1"]
	local nItem_2 = tTheGoddess2015_VoteOnline_ItemUse[nItemId][nFlag]["Item_2"]	
	local ItemAttr_1 = tTheGoddess2015_VoteOnline_ItemUse[nItemId][nFlag]["ItemAttr_1"]
	local ItemAttr_2 = tTheGoddess2015_VoteOnline_ItemUse[nItemId][nFlag]["ItemAttr_2"]
	local sLog = tTheGoddess2015_VoteOnline_ItemUse[nItemId][nFlag]["Log"]

	if Item_AddNewItem(nItem_1,ItemAttr_1) and Item_AddNewItem(nItem_2,ItemAttr_2) then
		Sys_SaveActionFestivalLog(sLog)
		User_TalkChannel2005(tTheGoddess2015_VoteOnline_Text["ItemMsg"][nItemId][nFlag])
	end
end

-- 给聚神丹 满级给150点修行值
function TheGoddess2015_VoteOnline_ItemUseGetExp(nItemId,nFlag)

	local nRewardItem = tTheGoddess2015_VoteOnline_ItemUse[nItemId][nFlag]["Item_1"]
	local nCul = tTheGoddess2015_VoteOnline_ItemUse[nItemId][nFlag]["Cul"]
	local nItemAttr = tTheGoddess2015_VoteOnline_ItemUse[nItemId][nFlag]["ItemAttr"]
	local nLevel = tTheGoddess2015_VoteOnline_Cont["Level"]
	
	local sLog = ""
	local sStr = ""
		
	if Get_UserLevel() >= nLevel then
		User_AddCultivation(nCul)
		slog = tTheGoddess2015_VoteOnline_ItemUse[nItemId][nFlag]["Cul_Log"]
		sStr = tTheGoddess2015_VoteOnline_Text["ItemMsg"][nItemId][nFlag][2]
	elseif Item_AddNewItem(nRewardItem,nItemAttr) then
		sLog = tTheGoddess2015_VoteOnline_ItemUse[nItemId][nFlag]["Item_Log"]
		sStr = tTheGoddess2015_VoteOnline_Text["ItemMsg"][nItemId][nFlag][1]
	end
	
	Sys_SaveActionFestivalLog(sLog)
	User_TalkChannel2005(sStr)
end

-- 给100点气力值
function TheGoddess2015_VoteOnline_ItemUseGetStrength(nItemId,nFlag)

	local nRewardItem = tTheGoddess2015_VoteOnline_ItemUse[nItemId][nFlag]["Item_1"]
	local sLog = tTheGoddess2015_VoteOnline_ItemUse[nItemId][nFlag]["Log"] 

	if User_AddStrengthValue(nRewardItem) then
		Sys_SaveActionFestivalLog(sLog)
		User_TalkChannel2005(tTheGoddess2015_VoteOnline_Text["ItemMsg"][nItemId][nFlag])
	end
end

-- 男女 获得发型
function TheGoddess2015_VoteOnline_ItemUseStytle(nItemId,nFlag)

	local nRewardItem_Male = tTheGoddess2015_VoteOnline_ItemUse[nItemId][nFlag]["Item_1"]
	local nRewardItem_FeMale = tTheGoddess2015_VoteOnline_ItemUse[nItemId][nFlag]["Item_2"]
	local nItemAttr = tTheGoddess2015_VoteOnline_ItemUse[nItemId][nFlag]["ItemAttr"]	
	local sLog = ""
	local sStr = ""
	local nItem_GetId = 0
	
	-- 判断男女
	if Get_UserSex() == 1 then
		nItem_GetId = nRewardItem_Male		
		sLog = tTheGoddess2015_VoteOnline_ItemUse[nItemId][nFlag]["Log_1"]
		sStr = tTheGoddess2015_VoteOnline_Text["ItemMsg"][nItemId][nFlag][1]
	elseif Get_UserSex() == 2 then
		nItem_GetId = nRewardItem_FeMale
		sLog = tTheGoddess2015_VoteOnline_ItemUse[nItemId][nFlag]["Log_2"]
		sStr = tTheGoddess2015_VoteOnline_Text["ItemMsg"][nItemId][nFlag][2]
	else
		return
	end
	Item_AddNewItem(nItem_GetId,nItemAttr)
	Sys_SaveActionFestivalLog(sLog)
	User_TalkChannel2005(sStr)
end

-- 1/2 获得 600点气力值  1200点修行值
function TheGoddess2015_VoteOnline_ItemUseGetRand(nItemId,nFlag)

	-- local nRand = math.random(1,2)
	
	local sStr = ""
	local sLog = ""

	-- if nRand == 1 then
		-- User_AddStrengthValue(tTheGoddess2015_VoteOnline_ItemUse[nItemId][nFlag]["Item_1"][1])
		-- sStr = tTheGoddess2015_VoteOnline_Text["ItemMsg"][nItemId][nFlag][1]
		-- sLog = tTheGoddess2015_VoteOnline_ItemUse[nItemId][nFlag]["Log"][1]
	-- elseif nRand == 2 then
		-- User_AddCultivation(tTheGoddess2015_VoteOnline_ItemUse[nItemId][nFlag]["Item_1"][2])
		-- sStr = tTheGoddess2015_VoteOnline_Text["ItemMsg"][nItemId][nFlag][2]
		-- sLog = tTheGoddess2015_VoteOnline_ItemUse[nItemId][nFlag]["Log"][2]
	-- else
		-- return
	-- end
	
	if Sys_Random(500,1000) then
		User_AddStrengthValue(tTheGoddess2015_VoteOnline_ItemUse[nItemId][nFlag]["Item_1"][1])
		sStr = tTheGoddess2015_VoteOnline_Text["ItemMsg"][nItemId][nFlag][1]
		sLog = tTheGoddess2015_VoteOnline_ItemUse[nItemId][nFlag]["Log"][1]
	else
		User_AddCultivation(tTheGoddess2015_VoteOnline_ItemUse[nItemId][nFlag]["Item_1"][2])
		sStr = tTheGoddess2015_VoteOnline_Text["ItemMsg"][nItemId][nFlag][2]
		sLog = tTheGoddess2015_VoteOnline_ItemUse[nItemId][nFlag]["Log"][2]
	end
	
	
	Sys_SaveActionFestivalLog(sLog)
	User_TalkChannel2005(sStr)
end

-----------------------------------------------------------------------------------------------------------------------------	

	
-- 物品概率配置

	--3007411 粉丝追捧礼包 200积分礼包
	tTheGoddess2015_VoteOnline_ItemUse[3007411] = {}
	tTheGoddess2015_VoteOnline_ItemUse[3007411]["ItemChanceSum"] = 10000
	
	-- 9朵百合花（赠） 752009   26%
	tTheGoddess2015_VoteOnline_ItemUse[3007411][1] = {}
	tTheGoddess2015_VoteOnline_ItemUse[3007411][1]["RandomItemChanceType"] = 2
	tTheGoddess2015_VoteOnline_ItemUse[3007411][1]["ItemChance"] = 2600
	tTheGoddess2015_VoteOnline_ItemUse[3007411][1]["Item_1"] = 752009
	tTheGoddess2015_VoteOnline_ItemUse[3007411][1]["ItemAttr"] = "0 0 3"
	tTheGoddess2015_VoteOnline_ItemUse[3007411][1]["Index"] = 1
	tTheGoddess2015_VoteOnline_ItemUse[3007411][1]["Log"] = "0,0,3007411,1,12000203,2,752009,1"
	tTheGoddess2015_VoteOnline_ItemUse[3007411][1]["function"] = TheGoddess2015_VoteOnline_ItemUse

	-- 3朵红玫瑰（赠） 751003   26%
	tTheGoddess2015_VoteOnline_ItemUse[3007411][2] = {}
	tTheGoddess2015_VoteOnline_ItemUse[3007411][2]["RandomItemChanceType"] = 2
	tTheGoddess2015_VoteOnline_ItemUse[3007411][2]["ItemChance"] = 2600
	tTheGoddess2015_VoteOnline_ItemUse[3007411][2]["Item_1"] = 751003
	tTheGoddess2015_VoteOnline_ItemUse[3007411][2]["ItemAttr"] = "0 0 3"
	tTheGoddess2015_VoteOnline_ItemUse[3007411][2]["Index"] = 2
	tTheGoddess2015_VoteOnline_ItemUse[3007411][2]["Log"] = "0,0,3007411,1,12000203,2,751003,1"
	tTheGoddess2015_VoteOnline_ItemUse[3007411][2]["function"] = TheGoddess2015_VoteOnline_ItemUse
	
	-- 9朵兰花（赠） 753009   15%
	tTheGoddess2015_VoteOnline_ItemUse[3007411][3] = {}
	tTheGoddess2015_VoteOnline_ItemUse[3007411][3]["RandomItemChanceType"] = 2
	tTheGoddess2015_VoteOnline_ItemUse[3007411][3]["ItemChance"] = 1500
	tTheGoddess2015_VoteOnline_ItemUse[3007411][3]["Item_1"] = 753009
	tTheGoddess2015_VoteOnline_ItemUse[3007411][3]["ItemAttr"] = "0 0 3"
	tTheGoddess2015_VoteOnline_ItemUse[3007411][3]["Index"] = 3
	tTheGoddess2015_VoteOnline_ItemUse[3007411][3]["Log"] = "0,0,3007411,1,12000203,2,753009,1"
	tTheGoddess2015_VoteOnline_ItemUse[3007411][3]["function"] = TheGoddess2015_VoteOnline_ItemUse
	
	-- 正气浩然卷轴 3002431   15%
	tTheGoddess2015_VoteOnline_ItemUse[3007411][4] = {}
	tTheGoddess2015_VoteOnline_ItemUse[3007411][4]["RandomItemChanceType"] = 2
	tTheGoddess2015_VoteOnline_ItemUse[3007411][4]["ItemChance"] = 1500
	tTheGoddess2015_VoteOnline_ItemUse[3007411][4]["Item_1"] = 3002431
	tTheGoddess2015_VoteOnline_ItemUse[3007411][4]["ItemAttr"] = "0 1"
	tTheGoddess2015_VoteOnline_ItemUse[3007411][4]["Index"] = 4
	tTheGoddess2015_VoteOnline_ItemUse[3007411][4]["Log"] = "0,0,3007411,1,12000203,2,3002431,1"
	tTheGoddess2015_VoteOnline_ItemUse[3007411][4]["function"] = TheGoddess2015_VoteOnline_ItemUse

	-- 7天武器外套随机卷 3005828   2.5%
	tTheGoddess2015_VoteOnline_ItemUse[3007411][5] = {}
	tTheGoddess2015_VoteOnline_ItemUse[3007411][5]["RandomItemChanceType"] = 2
	tTheGoddess2015_VoteOnline_ItemUse[3007411][5]["ItemChance"] = 250
	tTheGoddess2015_VoteOnline_ItemUse[3007411][5]["Item_1"] = 3005828
	tTheGoddess2015_VoteOnline_ItemUse[3007411][5]["ItemAttr"] = "0 1"
	tTheGoddess2015_VoteOnline_ItemUse[3007411][5]["Index"] = 5
	tTheGoddess2015_VoteOnline_ItemUse[3007411][5]["Log"] = "0,0,3007411,1,12000203,2,3005828,1"
	tTheGoddess2015_VoteOnline_ItemUse[3007411][5]["function"] = TheGoddess2015_VoteOnline_ItemUse
	
	-- 9朵玫瑰花（赠） 751009   15%
	tTheGoddess2015_VoteOnline_ItemUse[3007411][6] = {}
	tTheGoddess2015_VoteOnline_ItemUse[3007411][6]["RandomItemChanceType"] = 2
	tTheGoddess2015_VoteOnline_ItemUse[3007411][6]["ItemChance"] = 1500
	tTheGoddess2015_VoteOnline_ItemUse[3007411][6]["Item_1"] = 751009
	tTheGoddess2015_VoteOnline_ItemUse[3007411][6]["ItemAttr"] = "0 0 3"
	tTheGoddess2015_VoteOnline_ItemUse[3007411][6]["Index"] = 6
	tTheGoddess2015_VoteOnline_ItemUse[3007411][6]["Log"] = "0,0,3007411,1,12000203,2,751009,1"
	tTheGoddess2015_VoteOnline_ItemUse[3007411][6]["function"] = TheGoddess2015_VoteOnline_ItemUse

	-- 江山美人外套碎片（10合1）绑定的 3007422   0.5%
	tTheGoddess2015_VoteOnline_ItemUse[3007411][7] = {}
	tTheGoddess2015_VoteOnline_ItemUse[3007411][7]["RandomItemChanceType"] = 2
	tTheGoddess2015_VoteOnline_ItemUse[3007411][7]["ItemChance"] = 50
	tTheGoddess2015_VoteOnline_ItemUse[3007411][7]["Item_1"] = 3007422
	tTheGoddess2015_VoteOnline_ItemUse[3007411][7]["ItemAttr"] = "0 0 3"
	tTheGoddess2015_VoteOnline_ItemUse[3007411][7]["Index"] = 7
	tTheGoddess2015_VoteOnline_ItemUse[3007411][7]["Log"] = "0,0,3007411,1,12000203,2,3007422,1"
	tTheGoddess2015_VoteOnline_ItemUse[3007411][7]["function"] = TheGoddess2015_VoteOnline_ItemUse
	
	-- 3007412	粉丝爱慕礼包 1000积分
	tTheGoddess2015_VoteOnline_ItemUse[3007412] = {}
	tTheGoddess2015_VoteOnline_ItemUse[3007412]["ItemChanceSum"] = 10000
	
	-- 7天武器外套随机卷 3005828   10%
	tTheGoddess2015_VoteOnline_ItemUse[3007412][1] = {}
	tTheGoddess2015_VoteOnline_ItemUse[3007412][1]["RandomItemChanceType"] = 2
	tTheGoddess2015_VoteOnline_ItemUse[3007412][1]["ItemChance"] = 1000
	tTheGoddess2015_VoteOnline_ItemUse[3007412][1]["Item_1"] = 3005828
	tTheGoddess2015_VoteOnline_ItemUse[3007412][1]["ItemAttr"] = "0 1"
	tTheGoddess2015_VoteOnline_ItemUse[3007412][1]["Index"] = 1
	tTheGoddess2015_VoteOnline_ItemUse[3007412][1]["Log"] = "0,0,3007412,1,12000203,2,3005828,1"
	tTheGoddess2015_VoteOnline_ItemUse[3007412][1]["function"] = TheGoddess2015_VoteOnline_ItemUse
	
	-- 日常任务重置卷（不可交易） 3001407   10%	3001407	天道酬勤卷轴
	tTheGoddess2015_VoteOnline_ItemUse[3007412][2] = {}
	tTheGoddess2015_VoteOnline_ItemUse[3007412][2]["RandomItemChanceType"] = 2
	tTheGoddess2015_VoteOnline_ItemUse[3007412][2]["ItemChance"] = 1000
	tTheGoddess2015_VoteOnline_ItemUse[3007412][2]["Item_1"] = 3001407
	tTheGoddess2015_VoteOnline_ItemUse[3007412][2]["ItemAttr"] = "0 0 3"
	tTheGoddess2015_VoteOnline_ItemUse[3007412][2]["Index"] = 2
	tTheGoddess2015_VoteOnline_ItemUse[3007412][2]["Log"] = "0,0,3007412,1,12000203,2,3001407,1"
	tTheGoddess2015_VoteOnline_ItemUse[3007412][2]["function"] = TheGoddess2015_VoteOnline_ItemUse
	
	-- 经验之球*5/修行值    19%	723700	聚神丹
	tTheGoddess2015_VoteOnline_ItemUse[3007412][3] = {}
	tTheGoddess2015_VoteOnline_ItemUse[3007412][3]["RandomItemChanceType"] = 2
	tTheGoddess2015_VoteOnline_ItemUse[3007412][3]["ItemChance"] = 1900
	tTheGoddess2015_VoteOnline_ItemUse[3007412][3]["Item_1"] = 723700
	tTheGoddess2015_VoteOnline_ItemUse[3007412][3]["Cul"] = 150
	tTheGoddess2015_VoteOnline_ItemUse[3007412][3]["ItemAttr"] = "0 5 3"
	tTheGoddess2015_VoteOnline_ItemUse[3007412][3]["Index"] = 3
	tTheGoddess2015_VoteOnline_ItemUse[3007412][3]["Item_Log"] = "0,0,3007412,1,12000203,2,723700,5"
	tTheGoddess2015_VoteOnline_ItemUse[3007412][3]["Cul_Log"] = "0,0,3007412,1,12000203,2,6,150"
	tTheGoddess2015_VoteOnline_ItemUse[3007412][3]["function"] = TheGoddess2015_VoteOnline_ItemUseGetExp
	
	--气力值 100	15% 
	tTheGoddess2015_VoteOnline_ItemUse[3007412][4] = {}
	tTheGoddess2015_VoteOnline_ItemUse[3007412][4]["RandomItemChanceType"] = 2
	tTheGoddess2015_VoteOnline_ItemUse[3007412][4]["ItemChance"] = 1500
	tTheGoddess2015_VoteOnline_ItemUse[3007412][4]["Item_1"] = 100
	tTheGoddess2015_VoteOnline_ItemUse[3007412][4]["ItemAttr"] = "0 1"
	tTheGoddess2015_VoteOnline_ItemUse[3007412][4]["Index"] = 4
	tTheGoddess2015_VoteOnline_ItemUse[3007412][4]["Log"] = "0,0,3007412,1,12000203,2,12,100"
	tTheGoddess2015_VoteOnline_ItemUse[3007412][4]["function"] = TheGoddess2015_VoteOnline_ItemUseGetStrength

	--情人节稀有发型（赠） 3007423  岁月如歌（男）/3007424  花月如梦（女） 4%
	tTheGoddess2015_VoteOnline_ItemUse[3007412][5] = {}
	tTheGoddess2015_VoteOnline_ItemUse[3007412][5]["RandomItemChanceType"] = 2
	tTheGoddess2015_VoteOnline_ItemUse[3007412][5]["ItemChance"] = 400
	tTheGoddess2015_VoteOnline_ItemUse[3007412][5]["Item_1"] = 3007423
	tTheGoddess2015_VoteOnline_ItemUse[3007412][5]["Item_2"] = 3007424
	tTheGoddess2015_VoteOnline_ItemUse[3007412][5]["ItemAttr"] = "0 0 3"
	tTheGoddess2015_VoteOnline_ItemUse[3007412][5]["Index"] = 5
	tTheGoddess2015_VoteOnline_ItemUse[3007412][5]["Log_1"] = "0,0,3007412,1,12000203,2,3007423,1"
	tTheGoddess2015_VoteOnline_ItemUse[3007412][5]["Log_2"] = "0,0,3007412,1,12000203,2,3007424,1"
	tTheGoddess2015_VoteOnline_ItemUse[3007412][5]["function"] = TheGoddess2015_VoteOnline_ItemUseStytle
	
	--5*9朵兰花（赠） 753009  20%
	tTheGoddess2015_VoteOnline_ItemUse[3007412][6] = {}
	tTheGoddess2015_VoteOnline_ItemUse[3007412][6]["RandomItemChanceType"] = 2
	tTheGoddess2015_VoteOnline_ItemUse[3007412][6]["ItemChance"] = 2000
	tTheGoddess2015_VoteOnline_ItemUse[3007412][6]["Item_1"] = 753009
	tTheGoddess2015_VoteOnline_ItemUse[3007412][6]["ItemAttr"] = "0 5 3"
	tTheGoddess2015_VoteOnline_ItemUse[3007412][6]["Index"] = 6
	tTheGoddess2015_VoteOnline_ItemUse[3007412][6]["Log"] = "0,0,3007412,1,12000203,2,753009,5"
	tTheGoddess2015_VoteOnline_ItemUse[3007412][6]["function"] = TheGoddess2015_VoteOnline_ItemUse

	--5*9朵红玫瑰（赠） 751009 20%
	tTheGoddess2015_VoteOnline_ItemUse[3007412][7] = {}
	tTheGoddess2015_VoteOnline_ItemUse[3007412][7]["RandomItemChanceType"] = 2
	tTheGoddess2015_VoteOnline_ItemUse[3007412][7]["ItemChance"] = 2000
	tTheGoddess2015_VoteOnline_ItemUse[3007412][7]["Item_1"] = 751009
	tTheGoddess2015_VoteOnline_ItemUse[3007412][7]["ItemAttr"] = "0 5 3"
	tTheGoddess2015_VoteOnline_ItemUse[3007412][7]["Index"] = 7
	tTheGoddess2015_VoteOnline_ItemUse[3007412][7]["Log"] = "0,0,3007412,1,12000203,2,751009,5"
	tTheGoddess2015_VoteOnline_ItemUse[3007412][7]["function"] = TheGoddess2015_VoteOnline_ItemUse

	--1个江山美人外套碎片（10合1）绑定的  3007422 2%
	tTheGoddess2015_VoteOnline_ItemUse[3007412][8] = {}
	tTheGoddess2015_VoteOnline_ItemUse[3007412][8]["RandomItemChanceType"] = 2
	tTheGoddess2015_VoteOnline_ItemUse[3007412][8]["ItemChance"] = 200
	tTheGoddess2015_VoteOnline_ItemUse[3007412][8]["Item_1"] = 3007422
	tTheGoddess2015_VoteOnline_ItemUse[3007412][8]["ItemAttr"] = "0 0 3"
	tTheGoddess2015_VoteOnline_ItemUse[3007412][8]["Index"] = 7
	tTheGoddess2015_VoteOnline_ItemUse[3007412][8]["Log"] = "0,0,3007412,1,12000203,2,3007422,1"
	tTheGoddess2015_VoteOnline_ItemUse[3007412][8]["function"] = TheGoddess2015_VoteOnline_ItemUse
	
	--3007413 粉丝狂恋礼包 3000积分礼包
	tTheGoddess2015_VoteOnline_ItemUse[3007413] = {}
	tTheGoddess2015_VoteOnline_ItemUse[3007413]["ItemChanceSum"] = 10000
	
	-- 7天1%神佑心型玫瑰花武器外套*1 3005831   10%
	tTheGoddess2015_VoteOnline_ItemUse[3007413][1] = {}
	tTheGoddess2015_VoteOnline_ItemUse[3007413][1]["RandomItemChanceType"] = 2
	tTheGoddess2015_VoteOnline_ItemUse[3007413][1]["ItemChance"] = 1000
	tTheGoddess2015_VoteOnline_ItemUse[3007413][1]["Item_1"] = 3005831
	tTheGoddess2015_VoteOnline_ItemUse[3007413][1]["ItemAttr"] = "0 0"
	tTheGoddess2015_VoteOnline_ItemUse[3007413][1]["Index"] = 1
	tTheGoddess2015_VoteOnline_ItemUse[3007413][1]["Log"] = "0,0,3007413,1,12000203,2,3005831,1"
	tTheGoddess2015_VoteOnline_ItemUse[3007413][1]["function"] = TheGoddess2015_VoteOnline_ItemUse
	
	--3个江山美人外套碎片（10合1）绑定的	3007422		8%
	tTheGoddess2015_VoteOnline_ItemUse[3007413][2] = {}
	tTheGoddess2015_VoteOnline_ItemUse[3007413][2]["RandomItemChanceType"] = 2
	tTheGoddess2015_VoteOnline_ItemUse[3007413][2]["ItemChance"] = 800
	tTheGoddess2015_VoteOnline_ItemUse[3007413][2]["Item_1"] = 3007422
	tTheGoddess2015_VoteOnline_ItemUse[3007413][2]["ItemAttr"] = "0 3 3"
	tTheGoddess2015_VoteOnline_ItemUse[3007413][2]["Index"] = 2
	tTheGoddess2015_VoteOnline_ItemUse[3007413][2]["Log"] = "0,0,3007413,1,12000203,2,3007422,1"
	tTheGoddess2015_VoteOnline_ItemUse[3007413][2]["function"] = TheGoddess2015_VoteOnline_ItemUse
	
	--情人节稀有发型（赠） 3007423  岁月如歌（男）/3007424  花月如梦（女） 7%
	tTheGoddess2015_VoteOnline_ItemUse[3007413][3] = {}
	tTheGoddess2015_VoteOnline_ItemUse[3007413][3]["RandomItemChanceType"] = 2
	tTheGoddess2015_VoteOnline_ItemUse[3007413][3]["ItemChance"] = 700
	tTheGoddess2015_VoteOnline_ItemUse[3007413][3]["Item_1"] = 3007423
	tTheGoddess2015_VoteOnline_ItemUse[3007413][3]["Item_2"] = 3007424
	tTheGoddess2015_VoteOnline_ItemUse[3007413][3]["ItemAttr"] = "0 0 3"
	tTheGoddess2015_VoteOnline_ItemUse[3007413][3]["Index"] = 3
	tTheGoddess2015_VoteOnline_ItemUse[3007413][3]["Log_1"] = "0,0,3007413,1,12000203,2,3007423,1"
	tTheGoddess2015_VoteOnline_ItemUse[3007413][3]["Log_2"] = "0,0,3007413,1,12000203,2,3007424,1"
	tTheGoddess2015_VoteOnline_ItemUse[3007413][3]["function"] = TheGoddess2015_VoteOnline_ItemUseStytle

	--日常任务重置卷（不可交易）+浩然正义  3001407  + 3002431 10%
	tTheGoddess2015_VoteOnline_ItemUse[3007413][4] = {}
	tTheGoddess2015_VoteOnline_ItemUse[3007413][4]["RandomItemChanceType"] = 2
	tTheGoddess2015_VoteOnline_ItemUse[3007413][4]["ItemChance"] = 1000
	tTheGoddess2015_VoteOnline_ItemUse[3007413][4]["Item_1"] = 3001407
	tTheGoddess2015_VoteOnline_ItemUse[3007413][4]["Item_2"] = 3002431
	tTheGoddess2015_VoteOnline_ItemUse[3007413][4]["ItemAttr_1"] = "0 0 3"
	tTheGoddess2015_VoteOnline_ItemUse[3007413][4]["ItemAttr_2"] = "0 0"
	tTheGoddess2015_VoteOnline_ItemUse[3007413][4]["Index"] = 4
	tTheGoddess2015_VoteOnline_ItemUse[3007413][4]["Log"] = "0,0,3007413,1,12000203,2,3001407[3002431],1[1]"
	tTheGoddess2015_VoteOnline_ItemUse[3007413][4]["function"] = TheGoddess2015_VoteOnline_DoubleItem
	
	--2*99朵兰花（赠）	753099     15%
	tTheGoddess2015_VoteOnline_ItemUse[3007413][5] = {}
	tTheGoddess2015_VoteOnline_ItemUse[3007413][5]["RandomItemChanceType"] = 2
	tTheGoddess2015_VoteOnline_ItemUse[3007413][5]["ItemChance"] = 1500
	tTheGoddess2015_VoteOnline_ItemUse[3007413][5]["Item_1"] = 753099
	tTheGoddess2015_VoteOnline_ItemUse[3007413][5]["ItemAttr"] = "0 2 3"
	tTheGoddess2015_VoteOnline_ItemUse[3007413][5]["Index"] = 5
	tTheGoddess2015_VoteOnline_ItemUse[3007413][5]["Log"] = "0,0,3007413,1,12000203,2,753099,2"
	tTheGoddess2015_VoteOnline_ItemUse[3007413][5]["function"] = TheGoddess2015_VoteOnline_ItemUse

	--2*99朵红玫瑰（赠）	751099     15%
	tTheGoddess2015_VoteOnline_ItemUse[3007413][6] = {}
	tTheGoddess2015_VoteOnline_ItemUse[3007413][6]["RandomItemChanceType"] = 2
	tTheGoddess2015_VoteOnline_ItemUse[3007413][6]["ItemChance"] = 1500
	tTheGoddess2015_VoteOnline_ItemUse[3007413][6]["Item_1"] = 751099
	tTheGoddess2015_VoteOnline_ItemUse[3007413][6]["ItemAttr"] = "0 2 3"
	tTheGoddess2015_VoteOnline_ItemUse[3007413][6]["Index"] = 6
	tTheGoddess2015_VoteOnline_ItemUse[3007413][6]["Log"] = "0,0,3007413,1,12000203,2,751099,2"
	tTheGoddess2015_VoteOnline_ItemUse[3007413][6]["function"] = TheGoddess2015_VoteOnline_ItemUse
	
	--7天武器外套随机卷   3005828    15%
	tTheGoddess2015_VoteOnline_ItemUse[3007413][7] = {}
	tTheGoddess2015_VoteOnline_ItemUse[3007413][7]["RandomItemChanceType"] = 2
	tTheGoddess2015_VoteOnline_ItemUse[3007413][7]["ItemChance"] = 1500
	tTheGoddess2015_VoteOnline_ItemUse[3007413][7]["Item_1"] = 3005828
	tTheGoddess2015_VoteOnline_ItemUse[3007413][7]["ItemAttr"] = "0 1"
	tTheGoddess2015_VoteOnline_ItemUse[3007413][7]["Index"] = 7
	tTheGoddess2015_VoteOnline_ItemUse[3007413][7]["Log"] = "0,0,3007413,1,12000203,2,3005828,2"
	tTheGoddess2015_VoteOnline_ItemUse[3007413][7]["function"] = TheGoddess2015_VoteOnline_ItemUse
	
	--600点气力值/1200点修行值（随机） 20%
	tTheGoddess2015_VoteOnline_ItemUse[3007413][8] = {}
	tTheGoddess2015_VoteOnline_ItemUse[3007413][8]["RandomItemChanceType"] = 2
	tTheGoddess2015_VoteOnline_ItemUse[3007413][8]["ItemChance"] = 2000
	tTheGoddess2015_VoteOnline_ItemUse[3007413][8]["Item_1"] = {}
	tTheGoddess2015_VoteOnline_ItemUse[3007413][8]["Item_1"][1] = 600
	tTheGoddess2015_VoteOnline_ItemUse[3007413][8]["Item_1"][2] = 1200
	tTheGoddess2015_VoteOnline_ItemUse[3007413][8]["ItemAttr"] = "0 0"
	tTheGoddess2015_VoteOnline_ItemUse[3007413][8]["Index"] = 8
	tTheGoddess2015_VoteOnline_ItemUse[3007413][8]["Log"] = {}
	tTheGoddess2015_VoteOnline_ItemUse[3007413][8]["Log"][1] = "0,0,3007413,1,12000203,2,12,600"
	tTheGoddess2015_VoteOnline_ItemUse[3007413][8]["Log"][2] = "0,0,3007413,1,12000203,2,6,1200"
	tTheGoddess2015_VoteOnline_ItemUse[3007413][8]["function"] = TheGoddess2015_VoteOnline_ItemUseGetRand
	
	-- 促销包打开
	-- 3007414	姹紫嫣红鲜花包 
	tTheGoddess2015_VoteOnline_ItemUse[3007414] = {}
	tTheGoddess2015_VoteOnline_ItemUse[3007414]["ItemChanceSum"] = 10000
	
	-- 752099	99朵百合花 16%
	tTheGoddess2015_VoteOnline_ItemUse[3007414][1] = {}
	tTheGoddess2015_VoteOnline_ItemUse[3007414][1]["RandomItemChanceType"] = 2
	tTheGoddess2015_VoteOnline_ItemUse[3007414][1]["ItemChance"] = 1600
	tTheGoddess2015_VoteOnline_ItemUse[3007414][1]["Item_1"] = 752099
	tTheGoddess2015_VoteOnline_ItemUse[3007414][1]["ItemAttr"] = "0 1"
	tTheGoddess2015_VoteOnline_ItemUse[3007414][1]["Index"] = 1
	tTheGoddess2015_VoteOnline_ItemUse[3007414][1]["Log"] = "0,0,3007414,1,12000203,2,752099,1"
	tTheGoddess2015_VoteOnline_ItemUse[3007414][1]["function"] = TheGoddess2015_VoteOnline_ItemUse

	-- 753099	99朵兰花 27%
	tTheGoddess2015_VoteOnline_ItemUse[3007414][2] = {}
	tTheGoddess2015_VoteOnline_ItemUse[3007414][2]["RandomItemChanceType"] = 2
	tTheGoddess2015_VoteOnline_ItemUse[3007414][2]["ItemChance"] = 2700
	tTheGoddess2015_VoteOnline_ItemUse[3007414][2]["Item_1"] = 753099
	tTheGoddess2015_VoteOnline_ItemUse[3007414][2]["ItemAttr"] = "0 1"
	tTheGoddess2015_VoteOnline_ItemUse[3007414][2]["Index"] = 2
	tTheGoddess2015_VoteOnline_ItemUse[3007414][2]["Log"] = "0,0,3007414,1,12000203,2,753099,1"
	tTheGoddess2015_VoteOnline_ItemUse[3007414][2]["function"] = TheGoddess2015_VoteOnline_ItemUse
	
	-- 	751099	99朵红玫瑰 27%
	tTheGoddess2015_VoteOnline_ItemUse[3007414][3] = {}
	tTheGoddess2015_VoteOnline_ItemUse[3007414][3]["RandomItemChanceType"] = 2
	tTheGoddess2015_VoteOnline_ItemUse[3007414][3]["ItemChance"] = 2700
	tTheGoddess2015_VoteOnline_ItemUse[3007414][3]["Item_1"] = 751099
	tTheGoddess2015_VoteOnline_ItemUse[3007414][3]["ItemAttr"] = "0 1"
	tTheGoddess2015_VoteOnline_ItemUse[3007414][3]["Index"] = 3
	tTheGoddess2015_VoteOnline_ItemUse[3007414][3]["Log"] = "0,0,3007414,1,12000203,2,751099,1"
	tTheGoddess2015_VoteOnline_ItemUse[3007414][3]["function"] = TheGoddess2015_VoteOnline_ItemUse
	
	-- 	754009	9朵郁金香 10%
	tTheGoddess2015_VoteOnline_ItemUse[3007414][4] = {}
	tTheGoddess2015_VoteOnline_ItemUse[3007414][4]["RandomItemChanceType"] = 2
	tTheGoddess2015_VoteOnline_ItemUse[3007414][4]["ItemChance"] = 1000
	tTheGoddess2015_VoteOnline_ItemUse[3007414][4]["Item_1"] = 754009
	tTheGoddess2015_VoteOnline_ItemUse[3007414][4]["ItemAttr"] = "0 1"
	tTheGoddess2015_VoteOnline_ItemUse[3007414][4]["Index"] = 4
	tTheGoddess2015_VoteOnline_ItemUse[3007414][4]["Log"] = "0,0,3007414,1,12000203,2,754009,1"
	tTheGoddess2015_VoteOnline_ItemUse[3007414][4]["function"] = TheGoddess2015_VoteOnline_ItemUse

	-- 	751009	9朵红玫瑰 5%
	tTheGoddess2015_VoteOnline_ItemUse[3007414][5] = {}
	tTheGoddess2015_VoteOnline_ItemUse[3007414][5]["RandomItemChanceType"] = 2
	tTheGoddess2015_VoteOnline_ItemUse[3007414][5]["ItemChance"] = 500
	tTheGoddess2015_VoteOnline_ItemUse[3007414][5]["Item_1"] = 751009
	tTheGoddess2015_VoteOnline_ItemUse[3007414][5]["ItemAttr"] = "0 1"
	tTheGoddess2015_VoteOnline_ItemUse[3007414][5]["Index"] = 5
	tTheGoddess2015_VoteOnline_ItemUse[3007414][5]["Log"] = "0,0,3007414,1,12000203,2,751009,1"
	tTheGoddess2015_VoteOnline_ItemUse[3007414][5]["function"] = TheGoddess2015_VoteOnline_ItemUse

	-- 	753009	9朵兰花 5%
	tTheGoddess2015_VoteOnline_ItemUse[3007414][6] = {}
	tTheGoddess2015_VoteOnline_ItemUse[3007414][6]["RandomItemChanceType"] = 2
	tTheGoddess2015_VoteOnline_ItemUse[3007414][6]["ItemChance"] = 500
	tTheGoddess2015_VoteOnline_ItemUse[3007414][6]["Item_1"] = 753009
	tTheGoddess2015_VoteOnline_ItemUse[3007414][6]["ItemAttr"] = "0 1"
	tTheGoddess2015_VoteOnline_ItemUse[3007414][6]["Index"] = 6
	tTheGoddess2015_VoteOnline_ItemUse[3007414][6]["Log"] = "0,0,3007414,1,12000203,2,753009,1"
	tTheGoddess2015_VoteOnline_ItemUse[3007414][6]["function"] = TheGoddess2015_VoteOnline_ItemUse

	-- 	754001	1朵郁金香 10%
	tTheGoddess2015_VoteOnline_ItemUse[3007414][7] = {}
	tTheGoddess2015_VoteOnline_ItemUse[3007414][7]["RandomItemChanceType"] = 2
	tTheGoddess2015_VoteOnline_ItemUse[3007414][7]["ItemChance"] = 1000
	tTheGoddess2015_VoteOnline_ItemUse[3007414][7]["Item_1"] = 754001
	tTheGoddess2015_VoteOnline_ItemUse[3007414][7]["ItemAttr"] = "0 1"
	tTheGoddess2015_VoteOnline_ItemUse[3007414][7]["Index"] = 7
	tTheGoddess2015_VoteOnline_ItemUse[3007414][7]["Log"] = "0,0,3007414,1,12000203,2,754001,1"
	tTheGoddess2015_VoteOnline_ItemUse[3007414][7]["function"] = TheGoddess2015_VoteOnline_ItemUse

	-- 3007415  绝世芳华鲜花包
	tTheGoddess2015_VoteOnline_ItemUse[3007415] = {}
	tTheGoddess2015_VoteOnline_ItemUse[3007415]["ItemChanceSum"] = 10000
	
	-- 752999	999朵百合花 16%
	tTheGoddess2015_VoteOnline_ItemUse[3007415][1] = {}
	tTheGoddess2015_VoteOnline_ItemUse[3007415][1]["RandomItemChanceType"] = 2
	tTheGoddess2015_VoteOnline_ItemUse[3007415][1]["ItemChance"] = 1600
	tTheGoddess2015_VoteOnline_ItemUse[3007415][1]["Item_1"] = 752999
	tTheGoddess2015_VoteOnline_ItemUse[3007415][1]["ItemAttr"] = "0 1"
	tTheGoddess2015_VoteOnline_ItemUse[3007415][1]["Index"] = 1
	tTheGoddess2015_VoteOnline_ItemUse[3007415][1]["Log"] = "0,0,3007415,1,12000203,2,752999,1"
	tTheGoddess2015_VoteOnline_ItemUse[3007415][1]["function"] = TheGoddess2015_VoteOnline_ItemUse

	-- 751999	999朵红玫瑰 18%
	tTheGoddess2015_VoteOnline_ItemUse[3007415][2] = {}
	tTheGoddess2015_VoteOnline_ItemUse[3007415][2]["RandomItemChanceType"] = 2
	tTheGoddess2015_VoteOnline_ItemUse[3007415][2]["ItemChance"] = 1800
	tTheGoddess2015_VoteOnline_ItemUse[3007415][2]["Item_1"] = 751999
	tTheGoddess2015_VoteOnline_ItemUse[3007415][2]["ItemAttr"] = "0 1"
	tTheGoddess2015_VoteOnline_ItemUse[3007415][2]["Index"] = 2
	tTheGoddess2015_VoteOnline_ItemUse[3007415][2]["Log"] = "0,0,3007415,1,12000203,2,751999,1"
	tTheGoddess2015_VoteOnline_ItemUse[3007415][2]["function"] = TheGoddess2015_VoteOnline_ItemUse

	-- 753999	999朵兰花 18%
	tTheGoddess2015_VoteOnline_ItemUse[3007415][3] = {}
	tTheGoddess2015_VoteOnline_ItemUse[3007415][3]["RandomItemChanceType"] = 2
	tTheGoddess2015_VoteOnline_ItemUse[3007415][3]["ItemChance"] = 1800
	tTheGoddess2015_VoteOnline_ItemUse[3007415][3]["Item_1"] = 753999
	tTheGoddess2015_VoteOnline_ItemUse[3007415][3]["ItemAttr"] = "0 1"
	tTheGoddess2015_VoteOnline_ItemUse[3007415][3]["Index"] = 3
	tTheGoddess2015_VoteOnline_ItemUse[3007415][3]["Log"] = "0,0,3007415,1,12000203,2,753999,1"
	tTheGoddess2015_VoteOnline_ItemUse[3007415][3]["function"] = TheGoddess2015_VoteOnline_ItemUse

	-- 754099	99朵郁金香 10%
	tTheGoddess2015_VoteOnline_ItemUse[3007415][4] = {}
	tTheGoddess2015_VoteOnline_ItemUse[3007415][4]["RandomItemChanceType"] = 2
	tTheGoddess2015_VoteOnline_ItemUse[3007415][4]["ItemChance"] = 1000
	tTheGoddess2015_VoteOnline_ItemUse[3007415][4]["Item_1"] = 754099
	tTheGoddess2015_VoteOnline_ItemUse[3007415][4]["ItemAttr"] = "0 1"
	tTheGoddess2015_VoteOnline_ItemUse[3007415][4]["Index"] = 4
	tTheGoddess2015_VoteOnline_ItemUse[3007415][4]["Log"] = "0,0,3007415,1,12000203,2,754099,1"
	tTheGoddess2015_VoteOnline_ItemUse[3007415][4]["function"] = TheGoddess2015_VoteOnline_ItemUse
	
	-- 751099	99朵红玫瑰 16%
	tTheGoddess2015_VoteOnline_ItemUse[3007415][5] = {}
	tTheGoddess2015_VoteOnline_ItemUse[3007415][5]["RandomItemChanceType"] = 2
	tTheGoddess2015_VoteOnline_ItemUse[3007415][5]["ItemChance"] = 1600
	tTheGoddess2015_VoteOnline_ItemUse[3007415][5]["Item_1"] = 751099
	tTheGoddess2015_VoteOnline_ItemUse[3007415][5]["ItemAttr"] = "0 1"
	tTheGoddess2015_VoteOnline_ItemUse[3007415][5]["Index"] = 5
	tTheGoddess2015_VoteOnline_ItemUse[3007415][5]["Log"] = "0,0,3007415,1,12000203,2,751099,1"
	tTheGoddess2015_VoteOnline_ItemUse[3007415][5]["function"] = TheGoddess2015_VoteOnline_ItemUse

	-- 753099	99朵兰花 16%
	tTheGoddess2015_VoteOnline_ItemUse[3007415][6] = {}
	tTheGoddess2015_VoteOnline_ItemUse[3007415][6]["RandomItemChanceType"] = 2
	tTheGoddess2015_VoteOnline_ItemUse[3007415][6]["ItemChance"] = 1600
	tTheGoddess2015_VoteOnline_ItemUse[3007415][6]["Item_1"] = 753099
	tTheGoddess2015_VoteOnline_ItemUse[3007415][6]["ItemAttr"] = "0 1"
	tTheGoddess2015_VoteOnline_ItemUse[3007415][6]["Index"] = 6
	tTheGoddess2015_VoteOnline_ItemUse[3007415][6]["Log"] = "0,0,3007415,1,12000203,2,753099,1"
	tTheGoddess2015_VoteOnline_ItemUse[3007415][6]["function"] = TheGoddess2015_VoteOnline_ItemUse
	
	-- 754099	99朵郁金香 6%
	tTheGoddess2015_VoteOnline_ItemUse[3007415][7] = {}
	tTheGoddess2015_VoteOnline_ItemUse[3007415][7]["RandomItemChanceType"] = 2
	tTheGoddess2015_VoteOnline_ItemUse[3007415][7]["ItemChance"] = 600
	tTheGoddess2015_VoteOnline_ItemUse[3007415][7]["Item_1"] = 754099
	tTheGoddess2015_VoteOnline_ItemUse[3007415][7]["ItemAttr"] = "0 1"
	tTheGoddess2015_VoteOnline_ItemUse[3007415][7]["Index"] = 7
	tTheGoddess2015_VoteOnline_ItemUse[3007415][7]["Log"] = "0,0,3007415,1,12000203,2,754099,1"
	tTheGoddess2015_VoteOnline_ItemUse[3007415][7]["function"] = TheGoddess2015_VoteOnline_ItemUse
	

---------------------------------------------------逻辑部分--------------------------------------------------
-- 江山外套合成
function TheGoddess2015_VoteOnline_ItemCombination(nItemId)
	if not (Item_ChkMulItem(nItemId,nItemId,tTheGoddess2015_VoteOnline_Cont["NeedNum"]) and Item_DelMulItem(nItemId,nItemId,tTheGoddess2015_VoteOnline_Cont["NeedNum"])) then
		User_TalkChannel2005(tTheGoddess2015_VoteOnline_Text["ItemMsg"][3007422]["Less10"])
		return
	end
	
	--添加外套给提示
	if Item_AddNewItem(tTheGoddess2015_VoteOnline_Cont["WaiTao"],tTheGoddess2015_VoteOnline_Cont["Attr"]) then
		Sys_SaveActionFestivalLog(tTheGoddess2015_VoteOnline_Log["GetWaiTao"])
		User_TalkChannel2005(tTheGoddess2015_VoteOnline_Text["ItemMsg"][3007422]["GetTheItem"])
	end
end

-- 转非赠处理
function TheGoddess2015_VoteOnline_ItemChange(nItemId)
	if Item_ChkItem(tTheGoddess2015_VoteOnline_Cont["WaiTao"],0) then
		User_TalkChannel2005(tTheGoddess2015_VoteOnline_Text["ItemMsg"][3007422]["HaveNoBound"])
		return
	end
	
	if not Item_ChkItem(tTheGoddess2015_VoteOnline_Cont["WaiTao"]) then
		User_TalkChannel2005(tTheGoddess2015_VoteOnline_Text["ItemMsg"][3007422]["NoBoundItem"])
		return
	end
	
	if not (Item_ChkMulItem(nItemId,nItemId,tTheGoddess2015_VoteOnline_Cont["NeedNum"]) and Item_DelMulItem(nItemId,nItemId,tTheGoddess2015_VoteOnline_Cont["NeedNum"])) then
		User_TalkChannel2005(tTheGoddess2015_VoteOnline_Text["ItemMsg"][3007422]["NoConversion"])
		return
	end
	
	if not Item_DelItem(tTheGoddess2015_VoteOnline_Cont["WaiTao"]) then
		return
	end
	
	if Item_AddNewItem(tTheGoddess2015_VoteOnline_Cont["WaiTao"],tTheGoddess2015_VoteOnline_Cont["Atrr_1"]) then
		Sys_SaveActionFestivalLog(tTheGoddess2015_VoteOnline_Log["ZhuanWaiTao"])
		User_TalkChannel2005(tTheGoddess2015_VoteOnline_Text["ItemMsg"][3007422]["Successful"])		
	end
end


-- 促销礼包打开使用
function TheGoddess2015_VoteOnline_UseItem(nItemId)
	if not User_CheckLeftSpace(tTheGoddess2015_VoteOnline_Cont["Space"]) then
		User_TalkChannel2005(tTheGoddess2015_VoteOnline_Text["System"]["OpenPackFull"])
		return
	end
	
	if not Item_DelItem(nItemId) then
			return
	end
	
	local nIndex,tAward = Probabil_RandomAward(tTheGoddess2015_VoteOnline_ItemUse,nItemId)
	local nFlag = tAward[1]["tAward"][1]["Index"]
	
	local func = tAward[1]["tAward"][1]["function"]
	
	if type(func) == "function" then
		func(nItemId,nFlag)
		User_EffectAdd(tTheGoddess2015_VoteOnline_Effect["Self"],tTheGoddess2015_VoteOnline_Effect["UserFlowerPack"])
	end	
	
end

--粉丝礼包打开使用
function TheGoddess2015_VoteOnline_UseFSItem(nItemId)
	if Sys_ChkFullTime(tTheGoddess2015_VoteOnline_Cont["BeforeActivityTime"]) then
		User_TalkChannel2005(tTheGoddess2015_VoteOnline_Text["System"]["NotAtTime"])
		return
	end

	if not Sys_ChkFullTime(tTheGoddess2015_VoteOnline_Cont["ActivityTime"]) then
		Item_DelItem(nItemId)
		User_TalkChannel2005(tTheGoddess2015_VoteOnline_Text["System"]["OverTime"])
		Sys_SaveActionFestivalLog(string.format(tTheGoddess2015_VoteOnline_Log["DelItem"],nItemId))
		return
	end
	if nItemId ~= tTheGoddess2015_VoteOnline_Cont["NoChkSpace_1"] and nItemId ~= tTheGoddess2015_VoteOnline_Cont["NoChkSpace_2"] and nItemId then 
	-- 判断背包空间
		local nSpace = tTheGoddess2015_VoteOnline_ItemSpace[nItemId]
		if not User_CheckLeftSpace(nSpace) then
			User_TalkChannel2005(tTheGoddess2015_VoteOnline_Text["System"]["OpenPackFull"])
			return
		end
	end
	
	if not Item_DelItem(nItemId) then
		return
	end

	local nIndex,tAward = Probabil_RandomAward(tTheGoddess2015_VoteOnline_ItemUse,nItemId)
	local nFlag = tAward[1]["tAward"][1]["Index"]
	
	
	local func = tAward[1]["tAward"][1]["function"]


	if type(func) == "function" then
		func(nItemId,nFlag)
	end
end




-- 打开天石商店
function TheGoddess2015_VoteOnline_OpenShop()
	if Sys_ChkFullTime(tTheGoddess2015_VoteOnline_Cont["ActivityTime"]) then
		User_OpenDialog()
	end
end

-- 查看爱心积分
function TheGoddess2015_VoteOnline_ChkJF(nNpcId)
	local nEvent = tTheGoddess2015_VoteOnline_Stc["Event_type"]
	local nDataType = tTheGoddess2015_VoteOnline_Stc["Data_type"][1]
	
	if Task_ChkStcValue(nEvent,nDataType,"==",0) then
		LinkNpcGossipFunc_New(nNpcId,"16-1")
		return
	end
	LinkNpcGossipFunc_New(nNpcId,"17-1")
end

-- 打开网页 了解女神比拼情况。
function TheGoddess2015_VoteOnline_OpenWeb()
	-- if Sys_ChkFullTime(tTheGoddess2015_VoteOnline_Cont["ActivityTime"]) then
		User_SendWebPage(tTheGoddess2015_VoteOnline_Cont["Web"])
	-- end
end

-- 点击女神选项后 用STC记录玩家点击的是哪个女神
function TheGoddess2015_VoteOnline_SelectNS(nGlobal)
	local nEvent = tTheGoddess2015_VoteOnline_Stc["Event_type"]
	local nDataType = tTheGoddess2015_VoteOnline_Stc["Data_type"][3]
	
	local nNpcId = Get_NpcId()
	if Task_SetStatistic(nEvent,nDataType,nGlobal,1) then
		LinkNpcGossipFunc_New(nNpcId,"3-1")
	end	
end

-- 选择鲜花函数
function TheGoddess2015_VoteOnline_SelectFlower(nNpcId,nFlag)
	if not Sys_ChkFullTime(tTheGoddess2015_VoteOnline_Cont["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	local nEvent = tTheGoddess2015_VoteOnline_Stc["Event_type"]
	local nDataType = tTheGoddess2015_VoteOnline_Stc["Data_type"][4]
	
	if Task_SetStatistic(nEvent,nDataType,nFlag,1) then
		LinkNpcGossipFunc_New(nNpcId,"4-1")
	end	
end

-- 选择数量
function TheGoddess2015_VoteOnline_SelectFlowerNum(nNpcId,nNumber)
	if not Sys_ChkFullTime(tTheGoddess2015_VoteOnline_Cont["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	local nEvent = tTheGoddess2015_VoteOnline_Stc["Event_type"]
	local nDataType_1 = tTheGoddess2015_VoteOnline_Stc["Data_type"][4]
	local nDataType = tTheGoddess2015_VoteOnline_Stc["Data_type"][5]
	
	if not Task_SetStatistic(nEvent,nDataType,nNumber,1) then
		return
	end	
	
	-- 设置值成功则进行判断
	if Get_UserStatisticValue(nEvent,nDataType_1) == 0 then
		return
	end
	
	local nValue = Get_UserStatisticValue(nEvent,nDataType_1)
	local nItemId = tTheGoddess2015_VoteOnline_FlownerID[nValue][nNumber]
	if not Item_ChkItem(nItemId,1) then
		LinkNpcGossipFunc_New(nNpcId,"5-1")
		return
	end
	
	-- 有对应的鲜花 则2次提示
	LinkNpcGossipFunc_New(nNpcId,"6-1")
end

-- 2次确认后上交花朵选项
function TheGoddess2015_VoteOnline_HandFlower(nNpcId)
	if not Sys_ChkFullTime(tTheGoddess2015_VoteOnline_Cont["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	local nEvent = tTheGoddess2015_VoteOnline_Stc["Event_type"]
	local nDataType_1 = tTheGoddess2015_VoteOnline_Stc["Data_type"][1]
	local nDataType_2 = tTheGoddess2015_VoteOnline_Stc["Data_type"][2]	
	local nDataType_3 = tTheGoddess2015_VoteOnline_Stc["Data_type"][3]
	local nDataType_4 = tTheGoddess2015_VoteOnline_Stc["Data_type"][4]
	local nDataType_5 = tTheGoddess2015_VoteOnline_Stc["Data_type"][5]


	if Get_UserStatisticValue(nEvent,nDataType_3) == 0 or Get_UserStatisticValue(nEvent,nDataType_4) == 0 or Get_UserStatisticValue(nEvent,nDataType_5) == 0 then
		return
	end
	

	
	local nGoddessFlag = Get_UserStatisticValue(nEvent,nDataType_3)
	local nFlowerFlag = Get_UserStatisticValue(nEvent,nDataType_4)
	local nFlowerNumber = Get_UserStatisticValue(nEvent,nDataType_5)
	
	local nItemId = tTheGoddess2015_VoteOnline_FlownerID[Get_UserStatisticValue(nEvent,nDataType_4)][Get_UserStatisticValue(nEvent,nDataType_5)]
	if not (Item_ChkItem(nItemId,1) and Item_DelItem(nItemId,1)) then
		LinkNpcGossipFunc_New(nNpcId,"5-1")
		return
	end
	-- 删除成功，进行加分处理，重中之重，测试需小心仔细
	-- 获取玩家要送的女神 动态码
	-- 添加玩家粉丝积分 （换取礼包的积分）
	-- 添加玩家线下排行粉丝积分 （线下排行）
	
	--1.获得积分转换
	local nJFnumber = nFlowerNumber * tTheGoddess2015_VoteOnline_Flowner[Get_UserStatisticValue(nEvent,nDataType_4)][2]
	-- local nDynaGlobal = tTheGoddess2015_VoteOnline_Global[nGoddessFlag]
	
	-- 玩家粉丝积分添加
	Task_AddStatistic(nEvent,nDataType_1,nJFnumber,1)
	Task_AddStatistic(nEvent,nDataType_2,nJFnumber,1)
	
	-- 女神积分添加
	local nGoddessJF = Get_SysDynaGlobalData0(nGoddessFlag) + nJFnumber
	Sys_SetSynaGlobalData0(nGoddessFlag,nGoddessJF)


	-- 女神掩码 对应字段记录鲜花数量
	local nGlobalFlower = Get_SysDynaGlobalData(nGoddessFlag,Get_UserStatisticValue(nEvent,nDataType_4)) + nFlowerNumber
	Sys_SetSynaGlobalData(nGoddessFlag,Get_UserStatisticValue(nEvent,nDataType_4),nGlobalFlower)

	-- 记录LOG
	Sys_SaveActionFestivalLog(string.format(tTheGoddess2015_VoteOnline_Log["HandFlower"],nItemId,nJFnumber))
	-- 给提示	
	LinkNpcGossipFunc_New(nNpcId,"23-1")
	User_EffectAdd(tTheGoddess2015_VoteOnline_Effect["Self"],tTheGoddess2015_VoteOnline_Effect["HandIn"])
end

-- 兑换粉丝礼包时，积分不足，提示（多处使用）
function TheGoddess2015_VoteOnline_JFlessDial(nJFflag)
	local sStrDialog = string.format(tTheGoddess2015_VoteOnline_Text[18805]["Text811"],nJFflag)
	Sys_DialogText(sStrDialog)
	Sys_DialogText(tTheGoddess2015_VoteOnline_Text[18805]["Text812"])
	Sys_DialogOption(tNational_War_Text[17400]["Option41"])
	Sys_DialogFace(nNpcId)
	Sys_DialogEnd()
end

-- 领取粉丝爱心礼包。
function TheGoddess2015_VoteOnline_RewardPack(nNpcId,nJFflag)
	if not Sys_ChkFullTime(tTheGoddess2015_VoteOnline_Cont["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	local nEvent = tTheGoddess2015_VoteOnline_Stc["Event_type"]
	local nDataType = tTheGoddess2015_VoteOnline_Stc["Data_type"][1]
		
	if Get_UserStatisticValue(nEvent,nDataType) < nJFflag then
		TheGoddess2015_VoteOnline_JFlessDial(nJFflag)
		return
	end
	
	-- 分数足够，则给二次确认
	if nJFflag == tTheGoddess2015_VoteOnline_Cont[200] then
	
		LinkNpcGossipFunc_New(nNpcId,"10-1")
	elseif nJFflag == tTheGoddess2015_VoteOnline_Cont[1000] then
	
		LinkNpcGossipFunc_New(nNpcId,"11-1")
	elseif nJFflag == tTheGoddess2015_VoteOnline_Cont[3000] then
	
		LinkNpcGossipFunc_New(nNpcId,"12-1")
	else
		return
	end
end

-- 二次确认后获得礼包
function TheGoddess2015_VoteOnline_GetThePack(nNpcId,nJFflag)
	if not Sys_ChkFullTime(tTheGoddess2015_VoteOnline_Cont["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	local nEvent = tTheGoddess2015_VoteOnline_Stc["Event_type"]
	local nDataType = tTheGoddess2015_VoteOnline_Stc["Data_type"][1]
		
	if Get_UserStatisticValue(nEvent,nDataType) < nJFflag then
		TheGoddess2015_VoteOnline_JFlessDial(nJFflag)
		return
	end
	
	-- 背包空间判断
	if not User_CheckLeftSpace(tTheGoddess2015_VoteOnline_Cont["Space"]) then
		User_TalkChannel2005(tTheGoddess2015_VoteOnline_Text["System"]["FullBag"])
		return
	end
	
	-- 条件全部满足的情况
	-- 扣积分 给礼包 打LOG 给提示
	if Task_AddStatistic(nEvent,nDataType,-nJFflag,1) then
		Item_AddItem(tTheGoddess2015_VoteOnline_JFpack[nJFflag])
		
		User_EffectAdd(tTheGoddess2015_VoteOnline_Effect["Self"],tTheGoddess2015_VoteOnline_Effect["RewardPack"])
		-- 记录LOG
		Sys_SaveActionFestivalLog(string.format(tTheGoddess2015_VoteOnline_Log["GetPack"],tTheGoddess2015_VoteOnline_JFpack[nJFflag]))
		-- 给提示
		if nJFflag == tTheGoddess2015_VoteOnline_Cont[200] then
	
			LinkNpcGossipFunc_New(nNpcId,"13-1")
		elseif nJFflag == tTheGoddess2015_VoteOnline_Cont[1000] then
	
			LinkNpcGossipFunc_New(nNpcId,"14-1")
		elseif nJFflag == tTheGoddess2015_VoteOnline_Cont[3000] then
	
			LinkNpcGossipFunc_New(nNpcId,"15-1")
		else
			return
		end
	end	
end

---------物品使用逻辑------------
--1.背包信
function TheGoddess2015_VoteOnline_OpenLetter(nItemId)
	if Sys_ChkFullTime(tTheGoddess2015_VoteOnline_Cont["BeforeActivityTime"]) then
		User_TalkChannel2005(tTheGoddess2015_VoteOnline_Text["System"]["NotAtTime"])
		return
	end

	if not Sys_ChkFullTime(tTheGoddess2015_VoteOnline_Cont["ActivityTime"]) then
		Item_DelItem(nItemId)
		User_TalkChannel2005(tTheGoddess2015_VoteOnline_Text["System"]["OverTime"])
		Sys_SaveActionFestivalLog(string.format(tTheGoddess2015_VoteOnline_Log["DelItem"],nItemId))
		return
	end
	
	LinkItemGossipFunc_New(nItemId,"1-1")	
end

--1.1 点击选项后  操作
function TheGoddess2015_VoteOnline_FindWay(nItemId)
	if Sys_ChkFullTime(tTheGoddess2015_VoteOnline_Cont["BeforeActivityTime"]) then
		User_TalkChannel2005(tTheGoddess2015_VoteOnline_Text["System"]["NotAtTime"])
		return
	end

	if not Sys_ChkFullTime(tTheGoddess2015_VoteOnline_Cont["ActivityTime"]) then
		Item_DelItem(nItemId)
		User_TalkChannel2005(tTheGoddess2015_VoteOnline_Text["System"]["OverTime"])
		Sys_SaveActionFestivalLog(string.format(tTheGoddess2015_VoteOnline_Log["DelItem"],nItemId))
		return
	end
	
	if not Item_DelItem(nItemId) then
		return
	end
	
	local sStr = ""
	local sLog = ""
	if Get_UserLevel() < tTheGoddess2015_VoteOnline_Cont["Level"] then
		User_AddExpTime(tTheGoddess2015_VoteOnline_Cont["Exp"])
		sStr = string.format(tTheGoddess2015_VoteOnline_Text["System"]["OpenGetExp"],tTheGoddess2015_VoteOnline_Cont["Exp"])
		sLog = tTheGoddess2015_VoteOnline_Log["RewardExp"]
	else
		User_AddCultivation(tTheGoddess2015_VoteOnline_Cont["Cul"])
		sStr = string.format(tTheGoddess2015_VoteOnline_Text["System"]["OpenGetCul"],tTheGoddess2015_VoteOnline_Cont["Cul"])
		sLog = tTheGoddess2015_VoteOnline_Log["RewardCul"]
	end
	
	-- 寻路到NPC
	Sys_SaveActionFestivalLog(sLog)
	User_TalkChannel2005(sStr)
	Sys_GotoSomeWhere(tTheGoddess2015_VoteOnline_Npc["nPosX"],tTheGoddess2015_VoteOnline_Npc["nPosY"],tTheGoddess2015_VoteOnline_Npc["MapId"],tTheGoddess2015_VoteOnline_Npc["ID"])
end

-- 使用黄金玫瑰
function TheGoddess2015_VoteOnline_UserGoldenRose(nItemId)
	if Sys_ChkFullTime(tTheGoddess2015_VoteOnline_Cont["BeforeActivityTime"]) then
		User_TalkChannel2005(tTheGoddess2015_VoteOnline_Text["System"]["NotAtTime"])
		return
	end
	local nStren = tTheGoddess2015_VoteOnline_GoldenRose[nItemId]
	if not Sys_ChkFullTime(tTheGoddess2015_VoteOnline_Cont["ActivityTime"]) then
	
		Item_DelItem(nItemId)

		User_AddStrengthValue(nStren)
		User_TalkChannel2005(string.format(tTheGoddess2015_VoteOnline_Text["System"]["OpenRose_Str"],nStren))
		Sys_SaveActionFestivalLog(string.format(tTheGoddess2015_VoteOnline_Log["str"],nItemId,nStren))			
		return
	end

	Sys_MsgBox(tTheGoddess2015_VoteOnline_Text["System"][nItemId],string.format("TheGoddess2015_VoteOnline_FindNpc</N>%d",nItemId))
	
end

function TheGoddess2015_VoteOnline_FindNpc(nItemId)
	if Sys_ChkFullTime(tTheGoddess2015_VoteOnline_Cont["BeforeActivityTime"]) then
		User_TalkChannel2005(tTheGoddess2015_VoteOnline_Text["System"]["NotAtTime"])
		return
	end
	
	local nStren = tTheGoddess2015_VoteOnline_GoldenRose[nItemId]
	if not Sys_ChkFullTime(tTheGoddess2015_VoteOnline_Cont["ActivityTime"]) then
	
		Item_DelItem(nItemId)

		User_AddStrengthValue(nStren)
		User_TalkChannel2005(string.format(tTheGoddess2015_VoteOnline_Text["System"]["OpenRose_Str"],nStren))
		Sys_SaveActionFestivalLog(string.format(tTheGoddess2015_VoteOnline_Log["str"],nItemId,nStren))			
		return
	end
	
	Sys_GotoSomeWhere(tTheGoddess2015_VoteOnline_Npc["nPosX"],tTheGoddess2015_VoteOnline_Npc["nPosY"],tTheGoddess2015_VoteOnline_Npc["MapId"],tTheGoddess2015_VoteOnline_Npc["ID"])
end

-- 交花成功  继续上交
function TheGoddess2015_VoteOnline_ContinueHandFlower(nNpcId)
	if Sys_ChkFullTime(tTheGoddess2015_VoteOnline_Cont["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"3-1")
	else
		LinkNpcGossipFunc_New(nNpcId,"1-2")
	end
end

----------------------------------------------------NPC模版对白配置-------------------------------------------
--女神花魁赛主持人
-- tNpcFace[5091] = 231
-- tNpcGossip[18805] = tNpcGossip[18805] or DefaultNpc:new{}
-- tNpcGossip[18805]["OptionHidden"] = 1

--活动时间
-- tNpcGossip[18805]["Text1-1"] = {111,112,113,114}
-- tNpcGossip[18805]["Text111"] = tTheGoddess2015_VoteOnline_Text[18805]["Text111"]
-- tNpcGossip[18805]["Text112"] = tTheGoddess2015_VoteOnline_Text[18805]["Text112"]
-- tNpcGossip[18805]["Text113"] = tTheGoddess2015_VoteOnline_Text[18805]["Text113"]
-- tNpcGossip[18805]["Text114"] = tTheGoddess2015_VoteOnline_Text[18805]["Text114"]
-- tNpcGossip[18805]["tOption1-1"] = {1,2,3,4,5,6,7,8}
-- tNpcGossip[18805]["ChkFunc1-1"]= function()
    -- return Sys_ChkFullTime(tTheGoddess2015_VoteOnline_Cont["ActivityTime"])	
-- end

-- tNpcGossip[18805]["Option1"]  = tTheGoddess2015_VoteOnline_Text[18805]["Option1"]
-- tNpcGossip[18805]["OptionPoint1"]="2-1"
-- tNpcGossip[18805]["OptionChkFunc1"] = function()
	-- return Sys_ChkFullTime(tTheGoddess2015_VoteOnline_Cont["ActivityTime"])
-- end

-- tNpcGossip[18805]["Option2"]  = tTheGoddess2015_VoteOnline_Text[18805]["Option2"]
-- tNpcGossip[18805]["OptionFunc2"]="TheGoddess2015_VoteOnline_OpenShop"
-- tNpcGossip[18805]["OptionChkFunc2"] = function()
	-- return Sys_ChkFullTime(tTheGoddess2015_VoteOnline_Cont["ActivityTime"])
-- end

-- tNpcGossip[18805]["Option3"]  = tTheGoddess2015_VoteOnline_Text[18805]["Option3"]
-- tNpcGossip[18805]["OptionPoint3"]="7-1"
-- tNpcGossip[18805]["OptionChkFunc3"] = function()
	-- return Sys_ChkFullTime(tTheGoddess2015_VoteOnline_Cont["ActivityTime"])
-- end

-- tNpcGossip[18805]["Option4"]  = tTheGoddess2015_VoteOnline_Text[18805]["Option4"]
-- tNpcGossip[18805]["OptionFunc4"]="TheGoddess2015_VoteOnline_ChkJF</N>18805"

-- tNpcGossip[18805]["Option5"]  = tTheGoddess2015_VoteOnline_Text[18805]["Option5"]
-- tNpcGossip[18805]["OptionFunc5"]="TheGoddess2015_VoteOnline_OpenWeb"

-- tNpcGossip[18805]["Option6"]  = tTheGoddess2015_VoteOnline_Text[18805]["Option6"]
-- tNpcGossip[18805]["OptionPoint6"]="18-1"
-- tNpcGossip[18805]["OptionChkFunc6"] = function()
	-- return Sys_ChkFullTime(tTheGoddess2015_VoteOnline_Cont["ActivityTime"])
-- end

-- tNpcGossip[18805]["Option7"]  = tTheGoddess2015_VoteOnline_Text[18805]["Option7"]
-- tNpcGossip[18805]["OptionPoint7"]="19-1"
-- tNpcGossip[18805]["OptionChkFunc7"] = function()
	-- return Sys_ChkFullTime(tTheGoddess2015_VoteOnline_Cont["ActivityTime"])
-- end

-- tNpcGossip[18805]["Option8"]  = tTheGoddess2015_VoteOnline_Text[18805]["Option8"]

-- 活动后
-- tNpcGossip[18805]["Text1-2"] = {121,122,123}
-- tNpcGossip[18805]["Text121"] = tTheGoddess2015_VoteOnline_Text[18805]["Text121"]
-- tNpcGossip[18805]["Text122"] = tTheGoddess2015_VoteOnline_Text[18805]["Text122"]
-- tNpcGossip[18805]["Text123"] = tTheGoddess2015_VoteOnline_Text[18805]["Text123"]
-- tNpcGossip[18805]["tOption1-2"] = {10,11}

-- tNpcGossip[18805]["Option9"]  = tTheGoddess2015_VoteOnline_Text[18805]["Option9"]
-- tNpcGossip[18805]["OptionFunc9"]="TheGoddess2015_VoteOnline_OpenWeb"

-- tNpcGossip[18805]["Option10"]  = tTheGoddess2015_VoteOnline_Text[18805]["Option10"]
-- tNpcGossip[18805]["OptionFunc10"]="TheGoddess2015_VoteOnline_OpenWeb"

-- tNpcGossip[18805]["Option11"]  = tTheGoddess2015_VoteOnline_Text[18805]["Option11"]

-- 为我梦寐的女神投票送花。
-- tNpcGossip[18805]["Text2-1"] = {211}
-- tNpcGossip[18805]["Text211"] = tTheGoddess2015_VoteOnline_Text[18805]["Text211"]
-- tNpcGossip[18805]["tOption2-1"] = {12,13,14,15,16,17,18}

-- tNpcGossip[18805]["Option12"]  = tTheGoddess2015_VoteOnline_Text[18805]["Option12"]
-- tNpcGossip[18805]["OptionFunc12"]="TheGoddess2015_VoteOnline_SelectNS</N>" .. tTheGoddess2015_VoteOnline_Global[1]
-- tNpcGossip[18805]["OptionChkFunc12"] = function()
	-- local nGlobal = tTheGoddess2015_VoteOnline_Global[1]
	-- tNpcGossip[18805]["Option12"] = string.format(tTheGoddess2015_VoteOnline_Text[18805]["Option12"],Get_SysDynaGlobalDataStr(nGlobal,0))
	-- return true
-- end
-- tNpcGossip[18805]["Option13"]  = tTheGoddess2015_VoteOnline_Text[18805]["Option13"]
-- tNpcGossip[18805]["OptionFunc13"]="TheGoddess2015_VoteOnline_SelectNS</N>" .. tTheGoddess2015_VoteOnline_Global[2]
-- tNpcGossip[18805]["OptionChkFunc13"] = function()
	-- local nGlobal = tTheGoddess2015_VoteOnline_Global[2]
	-- tNpcGossip[18805]["Option13"] = string.format(tTheGoddess2015_VoteOnline_Text[18805]["Option13"],Get_SysDynaGlobalDataStr(nGlobal,0))
	-- return true
-- end

-- tNpcGossip[18805]["Option14"]  = tTheGoddess2015_VoteOnline_Text[18805]["Option14"]
-- tNpcGossip[18805]["OptionFunc14"]="TheGoddess2015_VoteOnline_SelectNS</N>" .. tTheGoddess2015_VoteOnline_Global[3]
-- tNpcGossip[18805]["OptionChkFunc14"] = function()
	-- local nGlobal = tTheGoddess2015_VoteOnline_Global[3]
	-- tNpcGossip[18805]["Option14"] = string.format(tTheGoddess2015_VoteOnline_Text[18805]["Option14"],Get_SysDynaGlobalDataStr(nGlobal,0))
	-- return true
-- end

-- tNpcGossip[18805]["Option15"]  = tTheGoddess2015_VoteOnline_Text[18805]["Option15"]
-- tNpcGossip[18805]["OptionFunc15"]="TheGoddess2015_VoteOnline_SelectNS</N>" .. tTheGoddess2015_VoteOnline_Global[4]
-- tNpcGossip[18805]["OptionChkFunc15"] = function()
	-- local nGlobal = tTheGoddess2015_VoteOnline_Global[4]
	-- tNpcGossip[18805]["Option15"] = string.format(tTheGoddess2015_VoteOnline_Text[18805]["Option15"],Get_SysDynaGlobalDataStr(nGlobal,0))
	-- return true
-- end

-- tNpcGossip[18805]["Option16"]  = tTheGoddess2015_VoteOnline_Text[18805]["Option16"]
-- tNpcGossip[18805]["OptionFunc16"]="TheGoddess2015_VoteOnline_SelectNS</N>" .. tTheGoddess2015_VoteOnline_Global[5]
-- tNpcGossip[18805]["OptionChkFunc16"] = function()
	-- local nGlobal = tTheGoddess2015_VoteOnline_Global[5]
	-- tNpcGossip[18805]["Option16"] = string.format(tTheGoddess2015_VoteOnline_Text[18805]["Option16"],Get_SysDynaGlobalDataStr(nGlobal,0))
	-- return true
-- end

-- tNpcGossip[18805]["Option17"]  = tTheGoddess2015_VoteOnline_Text[18805]["Option17"]
-- tNpcGossip[18805]["OptionPoint17"]="1-1"

-- tNpcGossip[18805]["Option18"]  = tTheGoddess2015_VoteOnline_Text[18805]["Option18"]

----选择女神后的对白
-- tNpcGossip[18805]["Text3-1"] = {311,312,313,314,315,316,317}
-- tNpcGossip[18805]["Text311"] = tTheGoddess2015_VoteOnline_Text[18805]["Text311"]
-- tNpcGossip[18805]["Text312"] = tTheGoddess2015_VoteOnline_Text[18805]["Text312"]
-- tNpcGossip[18805]["Text313"] = tTheGoddess2015_VoteOnline_Text[18805]["Text313"]
-- tNpcGossip[18805]["Text314"] = tTheGoddess2015_VoteOnline_Text[18805]["Text314"]
-- tNpcGossip[18805]["Text315"] = tTheGoddess2015_VoteOnline_Text[18805]["Text315"]
-- tNpcGossip[18805]["Text316"] = tTheGoddess2015_VoteOnline_Text[18805]["Text316"]
-- tNpcGossip[18805]["Text317"] = tTheGoddess2015_VoteOnline_Text[18805]["Text317"]
-- tNpcGossip[18805]["tOption3-1"] = {19,20,21,22,23,24,25}
-- tNpcGossip[18805]["ChkFunc3-1"]= function()
	-- local nEvent = tTheGoddess2015_VoteOnline_Stc["Event_type"]
	-- local nDataType = tTheGoddess2015_VoteOnline_Stc["Data_type"][3]
	-- local sStr = Get_SysDynaGlobalDataStr(Get_UserStatisticValue(nEvent,nDataType),0)
	
	-- tNpcGossip[18805]["Text311"] = string.format(tTheGoddess2015_VoteOnline_Text[18805]["Text311"],sStr)
    -- return true
-- end

-- tNpcGossip[18805]["Option19"]  = tTheGoddess2015_VoteOnline_Text[18805]["Option19"]
-- tNpcGossip[18805]["OptionFunc19"]="TheGoddess2015_VoteOnline_SelectFlower</N>18805</N>1"

-- tNpcGossip[18805]["Option20"]  = tTheGoddess2015_VoteOnline_Text[18805]["Option20"]
-- tNpcGossip[18805]["OptionFunc20"]="TheGoddess2015_VoteOnline_SelectFlower</N>18805</N>2"

-- tNpcGossip[18805]["Option21"]  = tTheGoddess2015_VoteOnline_Text[18805]["Option21"]
-- tNpcGossip[18805]["OptionFunc21"]="TheGoddess2015_VoteOnline_SelectFlower</N>18805</N>3"

-- tNpcGossip[18805]["Option22"]  = tTheGoddess2015_VoteOnline_Text[18805]["Option22"]
-- tNpcGossip[18805]["OptionFunc22"]="TheGoddess2015_VoteOnline_SelectFlower</N>18805</N>4"

-- tNpcGossip[18805]["Option23"]  = tTheGoddess2015_VoteOnline_Text[18805]["Option23"]
-- tNpcGossip[18805]["OptionFunc23"]="TheGoddess2015_VoteOnline_SelectFlower</N>18805</N>5"

-- tNpcGossip[18805]["Option24"]  = tTheGoddess2015_VoteOnline_Text[18805]["Option24"]
-- tNpcGossip[18805]["OptionPoint24"]="2-1"

-- tNpcGossip[18805]["Option25"]  = tTheGoddess2015_VoteOnline_Text[18805]["Option25"]

------选择上交某种花朵，选择数量对白
-- tNpcGossip[18805]["Text4-1"] = {411,412}
-- tNpcGossip[18805]["Text411"] = tTheGoddess2015_VoteOnline_Text[18805]["Text411"]
-- tNpcGossip[18805]["Text412"] = tTheGoddess2015_VoteOnline_Text[18805]["Text412"]
-- tNpcGossip[18805]["tOption4-1"] = {26,27,28,29,30,31,32}
-- tNpcGossip[18805]["ChkFunc4-1"]= function()
	-- local nEvent = tTheGoddess2015_VoteOnline_Stc["Event_type"]
	-- local nDataType = tTheGoddess2015_VoteOnline_Stc["Data_type"][4]
	-- local nNum = Get_UserStatisticValue(nEvent,nDataType)
	
	-- tNpcGossip[18805]["Text411"] = string.format(tTheGoddess2015_VoteOnline_Text[18805]["Text411"],tTheGoddess2015_VoteOnline_Flowner[nNum][1])
    -- return true
-- end

-- tNpcGossip[18805]["Option26"]  = tTheGoddess2015_VoteOnline_Text[18805]["Option26"]
-- tNpcGossip[18805]["OptionFunc26"]="TheGoddess2015_VoteOnline_SelectFlowerNum</N>18805</N>1"

-- tNpcGossip[18805]["Option27"]  = tTheGoddess2015_VoteOnline_Text[18805]["Option27"]
-- tNpcGossip[18805]["OptionFunc27"]="TheGoddess2015_VoteOnline_SelectFlowerNum</N>18805</N>3"

-- tNpcGossip[18805]["Option28"]  = tTheGoddess2015_VoteOnline_Text[18805]["Option28"]
-- tNpcGossip[18805]["OptionFunc28"]="TheGoddess2015_VoteOnline_SelectFlowerNum</N>18805</N>9"

-- tNpcGossip[18805]["Option29"]  = tTheGoddess2015_VoteOnline_Text[18805]["Option29"]
-- tNpcGossip[18805]["OptionFunc29"]="TheGoddess2015_VoteOnline_SelectFlowerNum</N>18805</N>99"

-- tNpcGossip[18805]["Option30"]  = tTheGoddess2015_VoteOnline_Text[18805]["Option30"]
-- tNpcGossip[18805]["OptionFunc30"]="TheGoddess2015_VoteOnline_SelectFlowerNum</N>18805</N>999"

-- tNpcGossip[18805]["Option31"]  = tTheGoddess2015_VoteOnline_Text[18805]["Option31"]
-- tNpcGossip[18805]["OptionPoint31"]="3-1"

-- tNpcGossip[18805]["Option32"]  = tTheGoddess2015_VoteOnline_Text[18805]["Option32"]


--------上交花朵失败
-- tNpcGossip[18805]["Text5-1"] = {511}
-- tNpcGossip[18805]["Text511"] = tTheGoddess2015_VoteOnline_Text[18805]["Text511"]
-- tNpcGossip[18805]["tOption5-1"] = {72,33}
-- tNpcGossip[18805]["ChkFunc5-1"]= function()
	-- local nEvent = tTheGoddess2015_VoteOnline_Stc["Event_type"]
	-- local nDataType_1 = tTheGoddess2015_VoteOnline_Stc["Data_type"][4]
	-- local nDataType = tTheGoddess2015_VoteOnline_Stc["Data_type"][5]
	
	-- local nItemId = tTheGoddess2015_VoteOnline_FlownerID[Get_UserStatisticValue(nEvent,nDataType_1)][Get_UserStatisticValue(nEvent,nDataType)]
	-- local sItemName = Get_ItemtypeName(nItemId)
	

	-- tNpcGossip[18805]["Text511"] = string.format(tTheGoddess2015_VoteOnline_Text[18805]["Text511"],sItemName)
    
	-- return true
-- end

-- tNpcGossip[18805]["Option33"]  = tTheGoddess2015_VoteOnline_Text[18805]["Option33"]


-- tNpcGossip[18805]["Option72"]  = tTheGoddess2015_VoteOnline_Text[18805]["Option72"]
-- tNpcGossip[18805]["OptionFunc72"]="TheGoddess2015_VoteOnline_OpenShop"
-- tNpcGossip[18805]["OptionChkFunc72"] = function()
	-- return Sys_ChkFullTime(tTheGoddess2015_VoteOnline_Cont["ActivityTime"])
-- end

--------上交花朵2次确认
-- tNpcGossip[18805]["Text6-1"] = {611,612}
-- tNpcGossip[18805]["Text611"] = tTheGoddess2015_VoteOnline_Text[18805]["Text611"]
-- tNpcGossip[18805]["Text612"] = tTheGoddess2015_VoteOnline_Text[18805]["Text612"]
-- tNpcGossip[18805]["tOption6-1"] = {34,35,36}
-- tNpcGossip[18805]["ChkFunc6-1"]= function()
	-- local nEvent = tTheGoddess2015_VoteOnline_Stc["Event_type"]
	-- local nDataType_1 = tTheGoddess2015_VoteOnline_Stc["Data_type"][4]
	-- local nDataType_2 = tTheGoddess2015_VoteOnline_Stc["Data_type"][5]
	-- local nValue1 = Get_UserStatisticValue(nEvent,nDataType_1)
	-- local nValue2 = Get_UserStatisticValue(nEvent,nDataType_2)
	
	-- 获取送花的名字
	-- local nItemId = tTheGoddess2015_VoteOnline_FlownerID[nValue1][nValue2]
	-- local sItemName = Get_ItemtypeName(nItemId)
	
	-- 获取送花的积分
	-- local nJFnumber = tTheGoddess2015_VoteOnline_Flowner[nValue1][2] * nValue2
	
	-- tNpcGossip[18805]["Text611"] = string.format(tTheGoddess2015_VoteOnline_Text[18805]["Text611"],sItemName,nJFnumber)
	-- tNpcGossip[18805]["Text612"] = string.format(tTheGoddess2015_VoteOnline_Text[18805]["Text612"],nJFnumber)
	
    -- return true
-- end

-- tNpcGossip[18805]["Option34"]  = tTheGoddess2015_VoteOnline_Text[18805]["Option34"]
-- tNpcGossip[18805]["OptionFunc34"]="TheGoddess2015_VoteOnline_HandFlower</N>18805"

-- tNpcGossip[18805]["Option35"]  = tTheGoddess2015_VoteOnline_Text[18805]["Option35"]
-- tNpcGossip[18805]["OptionPoint35"]="4-1"

-- tNpcGossip[18805]["Option36"]  = tTheGoddess2015_VoteOnline_Text[18805]["Option36"]

-- 成功送花提示
-- tNpcGossip[18805]["Text23-1"] = {2311,2312}
-- tNpcGossip[18805]["Text2311"] = tTheGoddess2015_VoteOnline_Text[18805]["Text2311"]
-- tNpcGossip[18805]["Text2312"] = tTheGoddess2015_VoteOnline_Text[18805]["Text2312"]
-- tNpcGossip[18805]["tOption23-1"] = {70}
-- tNpcGossip[18805]["ChkFunc23-1"]= function()
	-- local nEvent = tTheGoddess2015_VoteOnline_Stc["Event_type"]
	-- local nDataType_1 = tTheGoddess2015_VoteOnline_Stc["Data_type"][1]

	-- local nDataType_3 = tTheGoddess2015_VoteOnline_Stc["Data_type"][3]

	-- 获取女神名字
	-- local sNSname = Get_SysDynaGlobalDataStr0(Get_UserStatisticValue(nEvent,nDataType_3))
	-- 获取女神积分
	-- local nNS_JF = Get_SysDynaGlobalData0(Get_UserStatisticValue(nEvent,nDataType_3))
	-- 获取玩家积分
	-- local nPlayerJf = Get_UserStatisticValue(nEvent,nDataType_1)
	
	-- tNpcGossip[18805]["Text2311"] = string.format(tTheGoddess2015_VoteOnline_Text[18805]["Text2311"],sNSname,nNS_JF)
	-- tNpcGossip[18805]["Text2312"] = string.format(tTheGoddess2015_VoteOnline_Text[18805]["Text2312"],nPlayerJf)
    -- return true
-- end

-- tNpcGossip[18805]["Option70"]  = tTheGoddess2015_VoteOnline_Text[18805]["Option70"]
-- tNpcGossip[18805]["OptionFunc70"]="TheGoddess2015_VoteOnline_ContinueHandFlower</N>18805"



--购买花束礼包。【直接进入天石商店】  2


--领取粉丝爱心礼包。
-- tNpcGossip[18805]["Text7-1"] = {711,712,713}
-- tNpcGossip[18805]["Text711"] = tTheGoddess2015_VoteOnline_Text[18805]["Text711"]
-- tNpcGossip[18805]["Text712"] = tTheGoddess2015_VoteOnline_Text[18805]["Text712"]
-- tNpcGossip[18805]["Text713"] = tTheGoddess2015_VoteOnline_Text[18805]["Text713"]
-- tNpcGossip[18805]["tOption7-1"] = {37,38,39,40,41}
-- tNpcGossip[18805]["ChkFunc7-1"]= function()
	-- local nEvent = tTheGoddess2015_VoteOnline_Stc["Event_type"]
	-- local nDataType_1 = tTheGoddess2015_VoteOnline_Stc["Data_type"][1]
		-- 获取玩家积分
	-- local nPlayerJf = Get_UserStatisticValue(nEvent,nDataType_1)
	-- tNpcGossip[18805]["Text711"] = string.format(tTheGoddess2015_VoteOnline_Text[18805]["Text711"],nPlayerJf)
	
	-- return true
-- end


-- tNpcGossip[18805]["Option37"]  = tTheGoddess2015_VoteOnline_Text[18805]["Option37"]
-- tNpcGossip[18805]["OptionFunc37"]=string.format("TheGoddess2015_VoteOnline_RewardPack</N>%d</N>%d",18805,tTheGoddess2015_VoteOnline_Cont[200])

-- tNpcGossip[18805]["Option38"]  = tTheGoddess2015_VoteOnline_Text[18805]["Option38"]
-- tNpcGossip[18805]["OptionFunc38"]=string.format("TheGoddess2015_VoteOnline_RewardPack</N>%d</N>%d",18805,tTheGoddess2015_VoteOnline_Cont[1000])

-- tNpcGossip[18805]["Option39"]  = tTheGoddess2015_VoteOnline_Text[18805]["Option39"]
-- tNpcGossip[18805]["OptionFunc39"]=string.format("TheGoddess2015_VoteOnline_RewardPack</N>%d</N>%d",18805,tTheGoddess2015_VoteOnline_Cont[3000])

-- tNpcGossip[18805]["Option40"]  = tTheGoddess2015_VoteOnline_Text[18805]["Option40"]
-- tNpcGossip[18805]["OptionPoint40"]="1-1"

-- tNpcGossip[18805]["Option41"]  = tTheGoddess2015_VoteOnline_Text[18805]["Option41"]

----领取失败  对白不用模版
-- tNpcGossip[18805]["Text8-1"] = {811,812}
-- tNpcGossip[18805]["Text811"] = tTheGoddess2015_VoteOnline_Text[18805]["Text811"]
-- tNpcGossip[18805]["Text812"] = tTheGoddess2015_VoteOnline_Text[18805]["Text812"]
-- tNpcGossip[18805]["tOption8-1"] = {42}

-- tNpcGossip[18805]["Option42"]  = tTheGoddess2015_VoteOnline_Text[18805]["Option42"]

----背包不足
-- tNpcGossip[18805]["Text9-1"] = {911}
-- tNpcGossip[18805]["Text911"] = tTheGoddess2015_VoteOnline_Text[18805]["Text911"]
-- tNpcGossip[18805]["tOption9-1"] = {43}

-- tNpcGossip[18805]["Option43"]  = tTheGoddess2015_VoteOnline_Text[18805]["Option43"]

----达到条件，二次确认
-- tNpcGossip[18805]["Text10-1"] = {1011,1012}
-- tNpcGossip[18805]["Text1011"] = tTheGoddess2015_VoteOnline_Text[18805]["Text1011"]
-- tNpcGossip[18805]["Text1012"] = tTheGoddess2015_VoteOnline_Text[18805]["Text1012"]
-- tNpcGossip[18805]["tOption10-1"] = {44,45,46}


-- tNpcGossip[18805]["Option44"]  = tTheGoddess2015_VoteOnline_Text[18805]["Option44"]
-- tNpcGossip[18805]["OptionFunc44"]=string.format("TheGoddess2015_VoteOnline_GetThePack</N>%d</N>%d",18805,tTheGoddess2015_VoteOnline_Cont[200])

-- tNpcGossip[18805]["Option45"]  = tTheGoddess2015_VoteOnline_Text[18805]["Option45"]
-- tNpcGossip[18805]["OptionPoint45"]="7-1"

-- tNpcGossip[18805]["Option46"]  = tTheGoddess2015_VoteOnline_Text[18805]["Option46"]


-- tNpcGossip[18805]["Text11-1"] = {1111,1112}
-- tNpcGossip[18805]["Text1111"] = tTheGoddess2015_VoteOnline_Text[18805]["Text1111"]
-- tNpcGossip[18805]["Text1112"] = tTheGoddess2015_VoteOnline_Text[18805]["Text1112"]
-- tNpcGossip[18805]["tOption11-1"] = {47,45,46}


-- tNpcGossip[18805]["Option47"]  = tTheGoddess2015_VoteOnline_Text[18805]["Option47"]
-- tNpcGossip[18805]["OptionFunc47"]=string.format("TheGoddess2015_VoteOnline_GetThePack</N>%d</N>%d",18805,tTheGoddess2015_VoteOnline_Cont[1000])


-- tNpcGossip[18805]["Text12-1"] = {1211,1212}
-- tNpcGossip[18805]["Text1211"] = tTheGoddess2015_VoteOnline_Text[18805]["Text1211"]
-- tNpcGossip[18805]["Text1212"] = tTheGoddess2015_VoteOnline_Text[18805]["Text1212"]
-- tNpcGossip[18805]["tOption12-1"] = {48,45,46}

-- tNpcGossip[18805]["Option48"]  = tTheGoddess2015_VoteOnline_Text[18805]["Option48"]
-- tNpcGossip[18805]["OptionFunc48"]=string.format("TheGoddess2015_VoteOnline_GetThePack</N>%d</N>%d",18805,tTheGoddess2015_VoteOnline_Cont[3000])


-----成功获得礼包
-- tNpcGossip[18805]["Text13-1"] = {1311}
-- tNpcGossip[18805]["Text1311"] = tTheGoddess2015_VoteOnline_Text[18805]["Text1311"]
-- tNpcGossip[18805]["tOption13-1"] = {49}

-- tNpcGossip[18805]["Option49"]  = tTheGoddess2015_VoteOnline_Text[18805]["Option49"]


-- tNpcGossip[18805]["Text14-1"] = {1411}
-- tNpcGossip[18805]["Text1411"] = tTheGoddess2015_VoteOnline_Text[18805]["Text1411"]
-- tNpcGossip[18805]["tOption14-1"] = {49}


-- tNpcGossip[18805]["Text15-1"] = {1511}
-- tNpcGossip[18805]["Text1511"] = tTheGoddess2015_VoteOnline_Text[18805]["Text1511"]
-- tNpcGossip[18805]["tOption15-1"] = {49}


--查看自身粉丝爱心积分。
----失败 未参与

-- tNpcGossip[18805]["Text16-1"] = {1611}
-- tNpcGossip[18805]["Text1611"] = tTheGoddess2015_VoteOnline_Text[18805]["Text1611"]
-- tNpcGossip[18805]["tOption16-1"] = {50}

-- tNpcGossip[18805]["Option50"]  = tTheGoddess2015_VoteOnline_Text[18805]["Option50"]

----成功
-- tNpcGossip[18805]["Text17-1"] = {1711}
-- tNpcGossip[18805]["Text1711"] = tTheGoddess2015_VoteOnline_Text[18805]["Text1711"]
-- tNpcGossip[18805]["tOption17-1"] = {71,51}
-- tNpcGossip[18805]["ChkFunc17-1"]= function()
	-- local nEvent = tTheGoddess2015_VoteOnline_Stc["Event_type"]
	-- local nDataType = tTheGoddess2015_VoteOnline_Stc["Data_type"][1]
	-- local nNum = Get_UserStatisticValue(nEvent,nDataType)

	-- tNpcGossip[18805]["Text1711"] = string.format(tTheGoddess2015_VoteOnline_Text[18805]["Text1711"],nNum)
    -- return true
-- end

-- tNpcGossip[18805]["Option51"]  = tTheGoddess2015_VoteOnline_Text[18805]["Option51"]
-- tNpcGossip[18805]["Option71"]  = tTheGoddess2015_VoteOnline_Text[18805]["Option71"]
-- tNpcGossip[18805]["OptionFunc71"]="TheGoddess2015_VoteOnline_OpenWeb"


--查看投票规则。
-- tNpcGossip[18805]["Text18-1"] = {1811,1812,1813,1814}
-- tNpcGossip[18805]["Text1811"] = tTheGoddess2015_VoteOnline_Text[18805]["Text1811"]
-- tNpcGossip[18805]["Text1812"] = tTheGoddess2015_VoteOnline_Text[18805]["Text1812"]
-- tNpcGossip[18805]["Text1813"] = tTheGoddess2015_VoteOnline_Text[18805]["Text1813"]
-- tNpcGossip[18805]["Text1814"] = tTheGoddess2015_VoteOnline_Text[18805]["Text1814"]
-- tNpcGossip[18805]["tOption18-1"] = {53,52}


-- tNpcGossip[18805]["Option52"]  = tTheGoddess2015_VoteOnline_Text[18805]["Option52"]

-- tNpcGossip[18805]["Option53"]  = tTheGoddess2015_VoteOnline_Text[18805]["Option53"]
-- tNpcGossip[18805]["OptionPoint53"]="1-1"

-- tNpcGossip[18805]["Option54"]  = tTheGoddess2015_VoteOnline_Text[18805]["Option54"]


--查看大赛奖励。
-- tNpcGossip[18805]["Text19-1"] = {1911,1912,1913}
-- tNpcGossip[18805]["Text1911"] = tTheGoddess2015_VoteOnline_Text[18805]["Text1911"]
-- tNpcGossip[18805]["Text1912"] = tTheGoddess2015_VoteOnline_Text[18805]["Text1912"]
-- tNpcGossip[18805]["Text1913"] = tTheGoddess2015_VoteOnline_Text[18805]["Text1913"]
-- tNpcGossip[18805]["tOption19-1"] = {55,56,57,58,59}


-- tNpcGossip[18805]["Option55"]  = tTheGoddess2015_VoteOnline_Text[18805]["Option55"]
-- tNpcGossip[18805]["OptionPoint55"]="20-1"

-- tNpcGossip[18805]["Option56"]  = tTheGoddess2015_VoteOnline_Text[18805]["Option56"]
-- tNpcGossip[18805]["OptionPoint56"]="21-1"

-- tNpcGossip[18805]["Option57"]  = tTheGoddess2015_VoteOnline_Text[18805]["Option57"]
-- tNpcGossip[18805]["OptionPoint57"]="22-1"

-- tNpcGossip[18805]["Option58"]  = tTheGoddess2015_VoteOnline_Text[18805]["Option58"]
-- tNpcGossip[18805]["OptionPoint58"]="1-1"

-- tNpcGossip[18805]["Option59"]  = tTheGoddess2015_VoteOnline_Text[18805]["Option59"]

----了解单服女神排名奖励
-- tNpcGossip[18805]["Text20-1"] = {2011,2012,2013}
-- tNpcGossip[18805]["Text2011"] = tTheGoddess2015_VoteOnline_Text[18805]["Text2011"]
-- tNpcGossip[18805]["Text2012"] = tTheGoddess2015_VoteOnline_Text[18805]["Text2012"]
-- tNpcGossip[18805]["Text2013"] = tTheGoddess2015_VoteOnline_Text[18805]["Text2013"]
-- tNpcGossip[18805]["tOption20-1"] = {60,61}


-- tNpcGossip[18805]["Option60"]  = tTheGoddess2015_VoteOnline_Text[18805]["Option60"]
-- tNpcGossip[18805]["OptionPoint60"]="19-1"

-- tNpcGossip[18805]["Option61"]  = tTheGoddess2015_VoteOnline_Text[18805]["Option61"]

----了解支持者排名奖励
-- tNpcGossip[18805]["Text21-1"] = {2111,2112,2113}
-- tNpcGossip[18805]["Text2111"] = tTheGoddess2015_VoteOnline_Text[18805]["Text2111"]
-- tNpcGossip[18805]["Text2112"] = tTheGoddess2015_VoteOnline_Text[18805]["Text2112"]
-- tNpcGossip[18805]["Text2113"] = tTheGoddess2015_VoteOnline_Text[18805]["Text2113"]
-- tNpcGossip[18805]["tOption21-1"] = {60,63}



----了解全区全服女神奖励
-- tNpcGossip[18805]["Option63"]  = tTheGoddess2015_VoteOnline_Text[18805]["Option63"]

-- tNpcGossip[18805]["Text22-1"] = {2211,2212,2213}
-- tNpcGossip[18805]["Text2211"] = tTheGoddess2015_VoteOnline_Text[18805]["Text2211"]
-- tNpcGossip[18805]["Text2212"] = tTheGoddess2015_VoteOnline_Text[18805]["Text2212"]
-- tNpcGossip[18805]["Text2213"] = tTheGoddess2015_VoteOnline_Text[18805]["Text2213"]
-- tNpcGossip[18805]["tOption22-1"] = {60,65}

-- tNpcGossip[18805]["Option65"]  = tTheGoddess2015_VoteOnline_Text[18805]["Option65"]


-- 【女神活动特供绝版外套】   展示NPC
-- tNpcFace[5089] = 64
-- tNpcGossip[18806] = tNpcGossip[18806] or DefaultNpc:new{}
-- tNpcGossip[18806]["OptionHidden"] = 1

-- tNpcGossip[18806]["Text1-1"] = {111,112,113,114}
-- tNpcGossip[18806]["Text111"] = tTheGoddess2015_VoteOnline_Text[18806]["Text111"]
-- tNpcGossip[18806]["Text112"] = tTheGoddess2015_VoteOnline_Text[18806]["Text112"]
-- tNpcGossip[18806]["Text113"] = tTheGoddess2015_VoteOnline_Text[18806]["Text113"]
-- tNpcGossip[18806]["Text114"] = tTheGoddess2015_VoteOnline_Text[18806]["Text114"]
-- tNpcGossip[18806]["tOption1-1"] = {1}

-- tNpcGossip[18806]["Option1"]  = tTheGoddess2015_VoteOnline_Text[18806]["Option1"]


-- tNpcFace[5090] = 112
-- tNpcGossip[18807] = tNpcGossip[18806] or DefaultNpc:new{}
-- tNpcGossip[18807]["OptionHidden"] = 1






-- 背包信  3007416	千语玫瑰
-- tItem[3007416] = tItem[3007416] or {}
-- tItem[3007416]["Text1-1"] = {111,112,113,114}
-- tItem[3007416]["Text111"] = tTheGoddess2015_VoteOnline_Text[3007416]["Text111"]
-- tItem[3007416]["Text112"] = tTheGoddess2015_VoteOnline_Text[3007416]["Text112"]
-- tItem[3007416]["Text113"] = tTheGoddess2015_VoteOnline_Text[3007416]["Text113"]
-- tItem[3007416]["Text114"] = tTheGoddess2015_VoteOnline_Text[3007416]["Text114"]
-- tItem[3007416]["tOption1-1"] = {1}

-- tItem[3007416]["Option1"] = tTheGoddess2015_VoteOnline_Text[3007416]["Option1"]
-- tItem[3007416]["OptionFunc1"]="TheGoddess2015_VoteOnline_FindWay</N>3007416"


-- 江山一统碎片
tItem[3007422] = tItem[3007422] or {}
tItem[3007422]["Text1-1"] = {111}
tItem[3007422]["Text111"] = tTheGoddess2015_VoteOnline_Text[3007422]["Text111"]
tItem[3007422]["tOption1-1"] = {1,2}

tItem[3007422]["Option1"]  = tTheGoddess2015_VoteOnline_Text[3007422]["Option1"]
tItem[3007422]["OptionFunc1"]="TheGoddess2015_VoteOnline_ItemCombination</N>3007422"

tItem[3007422]["Option2"]  = tTheGoddess2015_VoteOnline_Text[3007422]["Option2"]
tItem[3007422]["OptionFunc2"]="TheGoddess2015_VoteOnline_ItemChange</N>3007422"


-----------------------------------物品模块---------------------------------------
-- 背包信
-- tItem[3007416] = tItem[3007416] or {}
-- tItem[3007416]["Function"] = function(nItemId,sItemName)
	-- TheGoddess2015_VoteOnline_OpenLetter(nItemId)
-- end

-- 黄金玫瑰
-- tItem[3007417] = tItem[3007417] or {}
-- tItem[3007417]["Function"] = function(nItemId,sItemName)
	-- TheGoddess2015_VoteOnline_UserGoldenRose(nItemId)
-- end

-- tItem[3007418] = tItem[3007418] or {}
-- tItem[3007418]["Function"] = function(nItemId,sItemName)
	-- TheGoddess2015_VoteOnline_UserGoldenRose(nItemId)
-- end

-- tItem[3007419] = tItem[3007419] or {}
-- tItem[3007419]["Function"] = function(nItemId,sItemName)
	-- TheGoddess2015_VoteOnline_UserGoldenRose(nItemId)
-- end

-- tItem[3007420] = tItem[3007420] or {}
-- tItem[3007420]["Function"] = function(nItemId,sItemName)
	-- TheGoddess2015_VoteOnline_UserGoldenRose(nItemId)
-- end

-- tItem[3007421] = tItem[3007421] or {}
-- tItem[3007421]["Function"] = function(nItemId,sItemName)
	-- TheGoddess2015_VoteOnline_UserGoldenRose(nItemId)
-- end

tItem[3007411] = tItem[3007411] or {}
tItem[3007411]["Function"] = function(nItemId,sItemName)
	TheGoddess2015_VoteOnline_UseFSItem(nItemId)
end

tItem[3007412] = tItem[3007412] or {}
tItem[3007412]["Function"] = function(nItemId,sItemName)
	TheGoddess2015_VoteOnline_UseFSItem(nItemId)
end

tItem[3007413] = tItem[3007413] or {}
tItem[3007413]["Function"] = function(nItemId,sItemName)
	TheGoddess2015_VoteOnline_UseFSItem(nItemId)
end

tItem[3007414] = tItem[3007414] or {}
tItem[3007414]["Function"] = function(nItemId,sItemName)
	TheGoddess2015_VoteOnline_UseItem(nItemId)
end

tItem[3007415] = tItem[3007415] or {}
tItem[3007415]["Function"] = function(nItemId,sItemName)
	TheGoddess2015_VoteOnline_UseItem(nItemId)
end

