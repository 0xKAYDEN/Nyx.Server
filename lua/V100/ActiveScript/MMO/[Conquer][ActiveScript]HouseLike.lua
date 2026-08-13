------------------------------------------------------------------------------------
--Name:		161025[简体征服][活动脚本]家园点赞
--Purpose:		家园点赞
--Creator:		陈磊
--Created:		2016/10/25
------------------------------------------------------------------------------------

---------------------------------常量----------------------------------------------
local tHouseLike_Cont = {}
tHouseLike_Cont["ActivityTime"] = tActivityTime["MMO"]["ActivityTime"]
tHouseLike_Cont["ActivityTime2"] = tActivityTime["MMO"]["UseTime"]
tHouseLike_Cont["House_Type"] = 1024
tHouseLike_Cont["BagSpace_1"] = 1
tHouseLike_Cont["BagSpace_2"] = 2
tHouseLike_Cont["LikeCount"] = 5  --每日点赞限制
tHouseLike_Cont["nNum"] = 5 --屋主点赞/分
tHouseLike_Cont["Five"]  = 5
tHouseLike_Cont["Ten"] = 10
--光效材料
tHouseLike_Cont["Item1"] = 3301290
tHouseLike_Cont["Level"] = 80
tHouseLike_Cont["Metempsychosis"] = 0

-- 自动寻路位置
local tHouseLike_FindWay = {}
	-- 传送
	tHouseLike_FindWay[19807] = {}
	tHouseLike_FindWay[19807]["MapId"] = 1002
	tHouseLike_FindWay[19807]["PosX"] = 355
	tHouseLike_FindWay[19807]["PosY"] = 462

-- 记录最近点赞数据
local tHouseLike_Ranking = {}


-- 查看最近点赞数据
local tHouseLike_RankingSeeDialog = {}
	tHouseLike_RankingSeeDialog[1] = "Text423"
	tHouseLike_RankingSeeDialog[2] = "Text424"
	tHouseLike_RankingSeeDialog[3] = "Text425"
	tHouseLike_RankingSeeDialog[4] = "Text426"
	tHouseLike_RankingSeeDialog[5] = "Text427"
local tHouseLike_RankingSeeOption = {}
	tHouseLike_RankingSeeOption[1] = 423
	tHouseLike_RankingSeeOption[2] = 424
	tHouseLike_RankingSeeOption[3] = 425
	tHouseLike_RankingSeeOption[4] = 426
	tHouseLike_RankingSeeOption[5] = 427
	
local tHouseLike_DynNpc={}
tHouseLike_DynNpc["Name"]  = "集赞娃娃"
tHouseLike_DynNpc["Sort"]  = 1
tHouseLike_DynNpc["Type"]  = 32
tHouseLike_DynNpc["LookFace"]  = 44120
tHouseLike_DynNpc["Action"]  = 94479901
tHouseLike_DynNpc["PosX"]  = {}
tHouseLike_DynNpc["PosY"]  = {}
tHouseLike_DynNpc["PosX"] [2] = 36
tHouseLike_DynNpc["PosY"] [2] = 46
tHouseLike_DynNpc["PosX"] [3] = 65
tHouseLike_DynNpc["PosY"] [3] = 62
tHouseLike_DynNpc["PosX"] [4] = 64
tHouseLike_DynNpc["PosY"] [4] = 48
tHouseLike_DynNpc["PosX"] [5] = 91
tHouseLike_DynNpc["PosY"] [5] = 119
tHouseLike_DynNpc["Field"] = "name"

local tHouseLike_Item = {}
tHouseLike_Item[3301391] = {}
tHouseLike_Item[3301391]["Id"] = 3301391
tHouseLike_Item[3301405] = {}
tHouseLike_Item[3301405]["Id"] = 3301405
tHouseLike_Item[3301255] = {}
tHouseLike_Item[3301255]["Id"] = 3301255
tHouseLike_Item[3301290] = {}
tHouseLike_Item[3301290]["Id"] = 3301290

local tHouseLike_Task = {}
	tHouseLike_Task["TaskId"] = 3779

local tHouseLike_Stc = {}
--是否生成过NPC
	tHouseLike_Stc["Npc"] = {}
	tHouseLike_Stc["Npc"]["EventType"] = 151
	tHouseLike_Stc["Npc"]["DataType"] = 37
--今日获赞
	tHouseLike_Stc["TodayLiked"] = {}
	tHouseLike_Stc["TodayLiked"]["EventType"] = 151
	tHouseLike_Stc["TodayLiked"]["DataType"] = 48
--屋主受赞数
	tHouseLike_Stc["Liked"] = {}
	tHouseLike_Stc["Liked"]["EventType"] = 151
	tHouseLike_Stc["Liked"]["DataType"] = 49
--材料A掩码
	tHouseLike_Stc[3301286] = {}
	tHouseLike_Stc[3301286]["Data"] = 50
	tHouseLike_Stc[3301286]["EventType"] = 151
	tHouseLike_Stc[3301286]["DataType"] = 84
--材料B掩码
	tHouseLike_Stc[3301287] = {}
	tHouseLike_Stc[3301287]["Data"] = 50
	tHouseLike_Stc[3301287]["EventType"] = 151
	tHouseLike_Stc[3301287]["DataType"] = 85
--材料C掩码
	tHouseLike_Stc[3301288] = {}
	tHouseLike_Stc[3301288]["Data"] = 20
	tHouseLike_Stc[3301288]["EventType"] = 151
	tHouseLike_Stc[3301288]["DataType"] = 86
--材料D掩码
	tHouseLike_Stc[3301289] = {}
	tHouseLike_Stc[3301289]["Data"] = 5
	tHouseLike_Stc[3301289]["EventType"] = 151
	tHouseLike_Stc[3301289]["DataType"] = 87
--光效材料F掩码
	tHouseLike_Stc[3301290] = {}
	tHouseLike_Stc[3301290]["Data"] = 1
	tHouseLike_Stc[3301290]["EventType"] = 151
	tHouseLike_Stc[3301290]["DataType"] = 88
--记录玩家打造家具掩码
	tHouseLike_Stc["Furniture"] = {}
	tHouseLike_Stc["Furniture"]["EventType"] = 151
	tHouseLike_Stc["Furniture"]["DataType"] = 89

--记录玩家打造家具获得积分掩码
	tHouseLike_Stc["FurnitureScore"] = {}
	tHouseLike_Stc["FurnitureScore"]["EventType"] = 151
	tHouseLike_Stc["FurnitureScore"]["DataType"] = 90
	
--记录屋主领取积分掩码
	tHouseLike_Stc["Score"] = {}
	tHouseLike_Stc["Score"]["EventType"] = 151
	tHouseLike_Stc["Score"]["DataType"] = 91
	
--材料掉落表
	tHouseLike_MonsDrop = {}
	tHouseLike_MonsDrop["Material"] = {}
	tHouseLike_MonsDrop["Material"][1] = {}
	tHouseLike_MonsDrop["Material"][1]["ItemChanceSum"] = 10000
	
	tHouseLike_MonsDrop["Material"][1][1] = {}
	tHouseLike_MonsDrop["Material"][1][1]["RandomItemChanceType"] = 2
	tHouseLike_MonsDrop["Material"][1][1]["ItemChance"] = 100
	tHouseLike_MonsDrop["Material"][1][1]["Item_1"] = 3301286
	
	tHouseLike_MonsDrop["Material"][1][2] = {}
	tHouseLike_MonsDrop["Material"][1][2]["RandomItemChanceType"] = 2
	tHouseLike_MonsDrop["Material"][1][2]["ItemChance"] = 50
	tHouseLike_MonsDrop["Material"][1][2]["Item_1"] = 3301287
	
	tHouseLike_MonsDrop["Material"][1][3] = {}
	tHouseLike_MonsDrop["Material"][1][3]["RandomItemChanceType"] = 2
	tHouseLike_MonsDrop["Material"][1][3]["ItemChance"] = 30
	tHouseLike_MonsDrop["Material"][1][3]["Item_1"] = 3301288

	tHouseLike_MonsDrop["Material"][1][4] = {}
	tHouseLike_MonsDrop["Material"][1][4]["RandomItemChanceType"] = 2
	tHouseLike_MonsDrop["Material"][1][4]["ItemChance"] = 10
	tHouseLike_MonsDrop["Material"][1][4]["Item_1"] = 3301289

	tHouseLike_MonsDrop["Material"][1][5] = {}
	tHouseLike_MonsDrop["Material"][1][5]["RandomItemChanceType"] = 2
	tHouseLike_MonsDrop["Material"][1][5]["ItemChance"] = 5
	tHouseLike_MonsDrop["Material"][1][5]["Item_1"] = 3301290
	
	tHouseLike_MonsDrop["Material"][1][6] = {}
	tHouseLike_MonsDrop["Material"][1][6]["RandomItemChanceType"] = 2
	tHouseLike_MonsDrop["Material"][1][6]["ItemChance"] = 9805
	tHouseLike_MonsDrop["Material"][1][6]["Item_1"] = 0
	
local tHouseLike_Furniture = {}
	tHouseLike_Furniture[3301391] = {11020,94479912}
	tHouseLike_Furniture[3301392] = {11030,94479913}
	tHouseLike_Furniture[3301393] = {11040,94479914}
	tHouseLike_Furniture[3301394] = {11050,94479915}
	tHouseLike_Furniture[3301395] = {11060,94479916}
	tHouseLike_Furniture[3301396] = {11070,94479917}
	tHouseLike_Furniture[3301397] = {11080,94479918}
	tHouseLike_Furniture[3301398] = {11090,94479919}
	tHouseLike_Furniture[3301399] = {11100,94479920}
	tHouseLike_Furniture[3301400] = {11110,94479921}
	tHouseLike_Furniture[3301401] = {11120,94479922}
	tHouseLike_Furniture[3301402] = {11130,94479923}
	tHouseLike_Furniture[3301403] = {11140,94479924}
	tHouseLike_Furniture[3301404] = {11150,94479925}
	tHouseLike_Furniture[3301405] = {11160,94479926}
	
-- 打造普通家具消耗材料
	tHouseLike_Material = {}
	tHouseLike_Material[3301391] = {}
	tHouseLike_Material[3301391][1] = {}
	tHouseLike_Material[3301391][1]["Id"] = 3301286
	tHouseLike_Material[3301391][1]["Num"] = 5
	tHouseLike_Material[3301391][2] = {}
	tHouseLike_Material[3301391][2]["Id"] = 3301287
	tHouseLike_Material[3301391][2]["Num"] = 10
	tHouseLike_Material[3301391][3] = {}
	tHouseLike_Material[3301391][3]["Id"] = 3301288
	tHouseLike_Material[3301391][3]["Num"] = 3	

	tHouseLike_Material[3301392] = {}
	tHouseLike_Material[3301392][1] = {}
	tHouseLike_Material[3301392][1]["Id"] = 3301286
	tHouseLike_Material[3301392][1]["Num"] = 10
	tHouseLike_Material[3301392][2] = {}
	tHouseLike_Material[3301392][2]["Id"] = 3301287
	tHouseLike_Material[3301392][2]["Num"] = 5
	tHouseLike_Material[3301392][3] = {}
	tHouseLike_Material[3301392][3]["Id"] = 3301288
	tHouseLike_Material[3301392][3]["Num"] = 3	

	tHouseLike_Material[3301393] = {}
	tHouseLike_Material[3301393][1] = {}
	tHouseLike_Material[3301393][1]["Id"] = 3301286
	tHouseLike_Material[3301393][1]["Num"] = 10
	tHouseLike_Material[3301393][2] = {}
	tHouseLike_Material[3301393][2]["Id"] = 3301287
	tHouseLike_Material[3301393][2]["Num"] = 10
	tHouseLike_Material[3301393][3] = {}
	tHouseLike_Material[3301393][3]["Id"] = 3301288
	tHouseLike_Material[3301393][3]["Num"] = 5	
	
	tHouseLike_Material[3301394] = {}
	tHouseLike_Material[3301394][1] = {}
	tHouseLike_Material[3301394][1]["Id"] = 3301286
	tHouseLike_Material[3301394][1]["Num"] = 10
	tHouseLike_Material[3301394][2] = {}
	tHouseLike_Material[3301394][2]["Id"] = 3301287
	tHouseLike_Material[3301394][2]["Num"] = 10
	tHouseLike_Material[3301394][3] = {}
	tHouseLike_Material[3301394][3]["Id"] = 3301288
	tHouseLike_Material[3301394][3]["Num"] = 3
	tHouseLike_Material[3301394][4] = {}
	tHouseLike_Material[3301394][4]["Id"] = 3301289
	tHouseLike_Material[3301394][4]["Num"] = 1

	tHouseLike_Material[3301395] = {}
	tHouseLike_Material[3301395][1] = {}
	tHouseLike_Material[3301395][1]["Id"] = 3301286
	tHouseLike_Material[3301395][1]["Num"] = 10
	tHouseLike_Material[3301395][2] = {}
	tHouseLike_Material[3301395][2]["Id"] = 3301287
	tHouseLike_Material[3301395][2]["Num"] = 10
	tHouseLike_Material[3301395][3] = {}
	tHouseLike_Material[3301395][3]["Id"] = 3301289
	tHouseLike_Material[3301395][3]["Num"] = 2

-- 打造普通家具消耗材料
	tHouseLike_Material[3301396] = {}
	tHouseLike_Material[3301396][1] = {}
	tHouseLike_Material[3301396][1]["Id"] = 3301286
	tHouseLike_Material[3301396][1]["Num"] = 5
	tHouseLike_Material[3301396][2] = {}
	tHouseLike_Material[3301396][2]["Id"] = 3301287
	tHouseLike_Material[3301396][2]["Num"] = 10
	tHouseLike_Material[3301396][3] = {}
	tHouseLike_Material[3301396][3]["Id"] = 3301288
	tHouseLike_Material[3301396][3]["Num"] = 3	
	tHouseLike_Material[3301396][4] = {}
	tHouseLike_Material[3301396][4]["Id"] = 3301290
	tHouseLike_Material[3301396][4]["Num"] = 3	
	
	tHouseLike_Material[3301397] = {}
	tHouseLike_Material[3301397][1] = {}
	tHouseLike_Material[3301397][1]["Id"] = 3301286
	tHouseLike_Material[3301397][1]["Num"] = 10
	tHouseLike_Material[3301397][2] = {}
	tHouseLike_Material[3301397][2]["Id"] = 3301287
	tHouseLike_Material[3301397][2]["Num"] = 5
	tHouseLike_Material[3301397][3] = {}
	tHouseLike_Material[3301397][3]["Id"] = 3301288
	tHouseLike_Material[3301397][3]["Num"] = 3	
	tHouseLike_Material[3301397][4] = {}
	tHouseLike_Material[3301397][4]["Id"] = 3301290
	tHouseLike_Material[3301397][4]["Num"] = 3	

	tHouseLike_Material[3301398] = {}
	tHouseLike_Material[3301398][1] = {}
	tHouseLike_Material[3301398][1]["Id"] = 3301286
	tHouseLike_Material[3301398][1]["Num"] = 10
	tHouseLike_Material[3301398][2] = {}
	tHouseLike_Material[3301398][2]["Id"] = 3301287
	tHouseLike_Material[3301398][2]["Num"] = 10
	tHouseLike_Material[3301398][3] = {}
	tHouseLike_Material[3301398][3]["Id"] = 3301288
	tHouseLike_Material[3301398][3]["Num"] = 5	
	tHouseLike_Material[3301398][4] = {}
	tHouseLike_Material[3301398][4]["Id"] = 3301290
	tHouseLike_Material[3301398][4]["Num"] = 3	
	
	tHouseLike_Material[3301399] = {}
	tHouseLike_Material[3301399][1] = {}
	tHouseLike_Material[3301399][1]["Id"] = 3301286
	tHouseLike_Material[3301399][1]["Num"] = 10
	tHouseLike_Material[3301399][2] = {}
	tHouseLike_Material[3301399][2]["Id"] = 3301287
	tHouseLike_Material[3301399][2]["Num"] = 10
	tHouseLike_Material[3301399][3] = {}
	tHouseLike_Material[3301399][3]["Id"] = 3301288
	tHouseLike_Material[3301399][3]["Num"] = 3
	tHouseLike_Material[3301399][4] = {}
	tHouseLike_Material[3301399][4]["Id"] = 3301289
	tHouseLike_Material[3301399][4]["Num"] = 1
	tHouseLike_Material[3301399][5] = {}
	tHouseLike_Material[3301399][5]["Id"] = 3301290
	tHouseLike_Material[3301399][5]["Num"] = 5	

	tHouseLike_Material[3301400] = {}
	tHouseLike_Material[3301400][1] = {}
	tHouseLike_Material[3301400][1]["Id"] = 3301286
	tHouseLike_Material[3301400][1]["Num"] = 10
	tHouseLike_Material[3301400][2] = {}
	tHouseLike_Material[3301400][2]["Id"] = 3301287
	tHouseLike_Material[3301400][2]["Num"] = 10
	tHouseLike_Material[3301400][3] = {}
	tHouseLike_Material[3301400][3]["Id"] = 3301289
	tHouseLike_Material[3301400][3]["Num"] = 2
	tHouseLike_Material[3301400][4] = {}
	tHouseLike_Material[3301400][4]["Id"] = 3301290
	tHouseLike_Material[3301400][4]["Num"] = 3
	
--打造家具Log步骤
	tHouseLike_LogStep = {}
	tHouseLike_LogStep["Made"] = {}
	tHouseLike_LogStep["Made"][3301396] = "1[3]"
	tHouseLike_LogStep["Made"][3301397] = "1[3]"
	tHouseLike_LogStep["Made"][3301398] = "1[3]"
	tHouseLike_LogStep["Made"][3301399] = "1[3]"
	tHouseLike_LogStep["Made"][3301400] = "1[3]"
	tHouseLike_LogStep["Made"][3301401] = "1[5]"
	tHouseLike_LogStep["Made"][3301402] = "1[5]"
	tHouseLike_LogStep["Made"][3301403] = "1[5]"
	tHouseLike_LogStep["Made"][3301404] = "1[5]"
	tHouseLike_LogStep["Made"][3301405] = "1[5]"
	tHouseLike_LogStep["Get"] = {}
	tHouseLike_LogStep["Get"][3301391] = "1[4]"
	tHouseLike_LogStep["Get"][3301392] = "1[4]"
	tHouseLike_LogStep["Get"][3301393] = "1[4]"
	tHouseLike_LogStep["Get"][3301394] = "1[4]"
	tHouseLike_LogStep["Get"][3301395] = "1[4]"
	tHouseLike_LogStep["Get"][3301396] = "1[6]"
	tHouseLike_LogStep["Get"][3301397] = "1[6]"
	tHouseLike_LogStep["Get"][3301398] = "1[6]"
	tHouseLike_LogStep["Get"][3301399] = "1[6]"
	tHouseLike_LogStep["Get"][3301400] = "1[6]"
	tHouseLike_LogStep["Get"][3301401] = "1[8]"
	tHouseLike_LogStep["Get"][3301402] = "1[8]"
	tHouseLike_LogStep["Get"][3301403] = "1[8]"
	tHouseLike_LogStep["Get"][3301404] = "1[8]"
	tHouseLike_LogStep["Get"][3301405] = "1[8]"
--拆解家具获得光效材料数
	tHouseLike_GreatMaterial = {}
	tHouseLike_GreatMaterial[3301391] = 1
	tHouseLike_GreatMaterial[3301392] = 1
	tHouseLike_GreatMaterial[3301393] = 1
	tHouseLike_GreatMaterial[3301394] = 1
	tHouseLike_GreatMaterial[3301395] = 1
	tHouseLike_GreatMaterial[3301396] = 2
	tHouseLike_GreatMaterial[3301397] = 2
	tHouseLike_GreatMaterial[3301398] = 2
	tHouseLike_GreatMaterial[3301399] = 2
	tHouseLike_GreatMaterial[3301400] = 2
	tHouseLike_GreatMaterial[3301401] = 3
	tHouseLike_GreatMaterial[3301402] = 3
	tHouseLike_GreatMaterial[3301403] = 3
	tHouseLike_GreatMaterial[3301404] = 3
	tHouseLike_GreatMaterial[3301405] = 3

--5积分
	tHouseLike_RewardItem = {}
    tHouseLike_RewardItem[3301255] = {}
	tHouseLike_RewardItem[3301255][10] = {}
	tHouseLike_RewardItem[3301255][10]["LogId"] = 12000550
	tHouseLike_RewardItem[3301255][10]["RewardItem"] = {}
	tHouseLike_RewardItem[3301255][10]["RewardItem"][1] = {}
	tHouseLike_RewardItem[3301255][10]["RewardItem"][1]["Id"] = 3301255
	tHouseLike_RewardItem[3301255][10]["RewardItem"][1]["Attr"] = "0 5"
	tHouseLike_RewardItem[3301255][10]["RewardNoNeedTip"] = 1 
	tHouseLike_RewardItem[3301255][10]["LogStep"] = "1[1]"
--5积分	
	tHouseLike_RewardItem[3301255][5] = {}
	tHouseLike_RewardItem[3301255][5]["LogId"] = 12000550
	tHouseLike_RewardItem[3301255][5]["RewardItem"] = {}
	tHouseLike_RewardItem[3301255][5]["RewardItem"][1] = {}
	tHouseLike_RewardItem[3301255][5]["RewardItem"][1]["Id"] = 3301255
	tHouseLike_RewardItem[3301255][5]["RewardItem"][1]["Attr"] = "0 5"
--屋主领取，不固定积分券
	tHouseLike_RewardItem[3301255][1] = {}
	tHouseLike_RewardItem[3301255][1]["LogId"] = 12000550
	tHouseLike_RewardItem[3301255][1]["RewardItem"] = {}
	tHouseLike_RewardItem[3301255][1]["RewardItem"][1] = {}
	tHouseLike_RewardItem[3301255][1]["RewardItem"][1]["Id"] = 3301255
	tHouseLike_RewardItem[3301255][1]["RewardItem"][1]["Attr"] = "0 5"
	tHouseLike_RewardItem[3301255][1]["LogStep"] = "1[2]"
--打造失败(积分未达上限)
	tHouseLike_RewardItem[3301255][3301255] = {}
	tHouseLike_RewardItem[3301255][3301255]["LogId"] = 12000550
	tHouseLike_RewardItem[3301255][3301255]["RewardItem"] = {}
	tHouseLike_RewardItem[3301255][3301255]["RewardItem"][1] = {}
	tHouseLike_RewardItem[3301255][3301255]["RewardItem"][1]["Id"] = 3301255
	tHouseLike_RewardItem[3301255][3301255]["RewardItem"][1]["Attr"] = "0 5"
	tHouseLike_RewardItem[3301255][3301255]["RewardStrengthValue"] = {}
	tHouseLike_RewardItem[3301255][3301255]["RewardStrengthValue"]["Value"] = 100

--打造失败(积分达上限)
	tHouseLike_RewardItem[3301255][3] = {}
	tHouseLike_RewardItem[3301255][3]["LogId"] = 12000550
	tHouseLike_RewardItem[3301255][3]["RewardStrengthValue"] = {}
	tHouseLike_RewardItem[3301255][3]["RewardStrengthValue"]["Value"] = 100

--打造出家具(积分未达上限)
	tHouseLike_RewardItem["Material"]= {}
	tHouseLike_RewardItem["Material"][1] = {}
	tHouseLike_RewardItem["Material"][1]["LogId"] = 12000550
	tHouseLike_RewardItem["Material"][1]["RewardItem"] = {}
	tHouseLike_RewardItem["Material"][1]["RewardItem"][1] = {}
	tHouseLike_RewardItem["Material"][1]["RewardItem"][1]["Id"] = 3301391
	tHouseLike_RewardItem["Material"][1]["RewardItem"][1]["Attr"] = "0 1 "
	tHouseLike_RewardItem["Material"][1]["RewardItem"][2] = {}
	tHouseLike_RewardItem["Material"][1]["RewardItem"][2]["Id"] = 3301255
	tHouseLike_RewardItem["Material"][1]["RewardItem"][2]["Attr"] = "0 10"
	tHouseLike_RewardItem["Material"][1]["Talk"] = ""
	
--打造出家具(积分达上限)
	tHouseLike_RewardItem["Material"][3] = {}
	tHouseLike_RewardItem["Material"][3]["LogId"] = 12000550
	tHouseLike_RewardItem["Material"][3]["RewardItem"] = {}
	tHouseLike_RewardItem["Material"][3]["RewardItem"][1] = {}
	tHouseLike_RewardItem["Material"][3]["RewardItem"][1]["Id"] = 3301391
	tHouseLike_RewardItem["Material"][3]["RewardItem"][1]["Attr"] = "0 1 "
	tHouseLike_RewardItem["Material"][3]["Talk"] = ""
	
--拆解家具(积分未达上限)
	tHouseLike_RewardItem["Material"][2] = {}
	tHouseLike_RewardItem["Material"][2]["LogId"] = 12000550
	tHouseLike_RewardItem["Material"][2]["RewardItem"] = {}
	tHouseLike_RewardItem["Material"][2]["RewardItem"][1] = {}
	tHouseLike_RewardItem["Material"][2]["RewardItem"][1]["Id"] = 3301290
	tHouseLike_RewardItem["Material"][2]["RewardItem"][1]["Attr"] = "0 1 "
	tHouseLike_RewardItem["Material"][2]["RewardItem"][2] = {}
	tHouseLike_RewardItem["Material"][2]["RewardItem"][2]["Id"] = 3301255
	tHouseLike_RewardItem["Material"][2]["RewardItem"][2]["Attr"] = "0 10 "
	tHouseLike_RewardItem["Material"][2]["Talk"] = ""
	tHouseLike_RewardItem["Material"][2]["LogStep"] = "1[7]"
	--拆解家具(积分达上限)
	tHouseLike_RewardItem["Material"][4] = {}
	tHouseLike_RewardItem["Material"][4]["LogId"] = 12000550
	tHouseLike_RewardItem["Material"][4]["RewardItem"] = {}
	tHouseLike_RewardItem["Material"][4]["RewardItem"][1] = {}
	tHouseLike_RewardItem["Material"][4]["RewardItem"][1]["Id"] = 3301290
	tHouseLike_RewardItem["Material"][4]["RewardItem"][1]["Attr"] = "0 1 "
	tHouseLike_RewardItem["Material"][4]["Talk"] = ""
	tHouseLike_RewardItem["Material"][4]["LogStep"] = "1[7]"
---打造家具概率表
local tHouseLike_Prob = {}
	--打造普通家具	
	tHouseLike_Prob[3301391] = {}
	tHouseLike_Prob[3301391]["ItemChanceSum"] = 10000                     	
	tHouseLike_Prob[3301391][1] = {}
	tHouseLike_Prob[3301391][1]["RandomItemChanceType"] = 2
	tHouseLike_Prob[3301391][1]["ItemChance"] = 2000
	tHouseLike_Prob[3301391][1]["Item_1"]= 3301391 --普通家具
	tHouseLike_Prob[3301391][2] = {}
	tHouseLike_Prob[3301391][2]["RandomItemChanceType"] = 2
	tHouseLike_Prob[3301391][2]["ItemChance"] = 300
	tHouseLike_Prob[3301391][2]["Item_1"]= 3301396  --光效家具
	tHouseLike_Prob[3301391][3] = {}
	tHouseLike_Prob[3301391][3]["RandomItemChanceType"] = 2
	tHouseLike_Prob[3301391][3]["ItemChance"] = 7700
	tHouseLike_Prob[3301391][3]["Item_1"]= 3301255 --气力值  代表失败
	
	tHouseLike_Prob[3301392] = {}
	tHouseLike_Prob[3301392]["ItemChanceSum"] = 10000                     	
	tHouseLike_Prob[3301392][1] = {}
	tHouseLike_Prob[3301392][1]["RandomItemChanceType"] = 2
	tHouseLike_Prob[3301392][1]["ItemChance"] = 2000
	tHouseLike_Prob[3301392][1]["Item_1"]= 3301392 --普通家具
	tHouseLike_Prob[3301392][2] = {}
	tHouseLike_Prob[3301392][2]["RandomItemChanceType"] = 2
	tHouseLike_Prob[3301392][2]["ItemChance"] = 300
	tHouseLike_Prob[3301392][2]["Item_1"]= 3301397  --光效家具
	tHouseLike_Prob[3301392][3] = {}
	tHouseLike_Prob[3301392][3]["RandomItemChanceType"] = 2
	tHouseLike_Prob[3301392][3]["ItemChance"] = 7700
	tHouseLike_Prob[3301392][3]["Item_1"]= 3301255 --气力值  代表失败

	tHouseLike_Prob[3301393] = {}
	tHouseLike_Prob[3301393]["ItemChanceSum"] = 10000                     	
	tHouseLike_Prob[3301393][1] = {}
	tHouseLike_Prob[3301393][1]["RandomItemChanceType"] = 2
	tHouseLike_Prob[3301393][1]["ItemChance"] = 2000
	tHouseLike_Prob[3301393][1]["Item_1"]= 3301393 --普通家具
	tHouseLike_Prob[3301393][2] = {}
	tHouseLike_Prob[3301393][2]["RandomItemChanceType"] = 2
	tHouseLike_Prob[3301393][2]["ItemChance"] = 300
	tHouseLike_Prob[3301393][2]["Item_1"]= 3301398  --光效家具
	tHouseLike_Prob[3301393][3] = {}
	tHouseLike_Prob[3301393][3]["RandomItemChanceType"] = 2
	tHouseLike_Prob[3301393][3]["ItemChance"] = 7700
	tHouseLike_Prob[3301393][3]["Item_1"]= 3301255 --气力值  代表失败

	tHouseLike_Prob[3301394] = {}
	tHouseLike_Prob[3301394]["ItemChanceSum"] = 10000                     	
	tHouseLike_Prob[3301394][1] = {}
	tHouseLike_Prob[3301394][1]["RandomItemChanceType"] = 2
	tHouseLike_Prob[3301394][1]["ItemChance"] = 1500
	tHouseLike_Prob[3301394][1]["Item_1"]= 3301394 --普通家具
	tHouseLike_Prob[3301394][2] = {}
	tHouseLike_Prob[3301394][2]["RandomItemChanceType"] = 2
	tHouseLike_Prob[3301394][2]["ItemChance"] = 300
	tHouseLike_Prob[3301394][2]["Item_1"]= 3301399  --光效家具
	tHouseLike_Prob[3301394][3] = {}
	tHouseLike_Prob[3301394][3]["RandomItemChanceType"] = 2
	tHouseLike_Prob[3301394][3]["ItemChance"] = 8200
	tHouseLike_Prob[3301394][3]["Item_1"]= 3301255 --气力值  代表失败

	tHouseLike_Prob[3301395] = {}
	tHouseLike_Prob[3301395]["ItemChanceSum"] = 10000                     	
	tHouseLike_Prob[3301395][1] = {}
	tHouseLike_Prob[3301395][1]["RandomItemChanceType"] = 2
	tHouseLike_Prob[3301395][1]["ItemChance"] = 1500
	tHouseLike_Prob[3301395][1]["Item_1"]= 3301395 --普通家具
	tHouseLike_Prob[3301395][2] = {}
	tHouseLike_Prob[3301395][2]["RandomItemChanceType"] = 2
	tHouseLike_Prob[3301395][2]["ItemChance"] = 300
	tHouseLike_Prob[3301395][2]["Item_1"]= 3301400  --光效家具
	tHouseLike_Prob[3301395][3] = {}
	tHouseLike_Prob[3301395][3]["RandomItemChanceType"] = 2
	tHouseLike_Prob[3301395][3]["ItemChance"] = 8200
	tHouseLike_Prob[3301395][3]["Item_1"]= 3301255 --气力值  代表失败
--微光家具不会失败
	tHouseLike_Prob[3301396] = {}
	tHouseLike_Prob[3301396]["ItemChanceSum"] = 10000                     	
	tHouseLike_Prob[3301396][1] = {}
	tHouseLike_Prob[3301396][1]["RandomItemChanceType"] = 2
	tHouseLike_Prob[3301396][1]["ItemChance"] = 8500
	tHouseLike_Prob[3301396][1]["Item_1"]= 3301396 --普通家具
	tHouseLike_Prob[3301396][2] = {}
	tHouseLike_Prob[3301396][2]["RandomItemChanceType"] = 2
	tHouseLike_Prob[3301396][2]["ItemChance"] = 1500
	tHouseLike_Prob[3301396][2]["Item_1"]= 3301401  --光效家具
	
	tHouseLike_Prob[3301397] = {}
	tHouseLike_Prob[3301397]["ItemChanceSum"] = 10000                     	
	tHouseLike_Prob[3301397][1] = {}
	tHouseLike_Prob[3301397][1]["RandomItemChanceType"] = 2
	tHouseLike_Prob[3301397][1]["ItemChance"] = 8500
	tHouseLike_Prob[3301397][1]["Item_1"]= 3301397 --普通家具
	tHouseLike_Prob[3301397][2] = {}
	tHouseLike_Prob[3301397][2]["RandomItemChanceType"] = 2
	tHouseLike_Prob[3301397][2]["ItemChance"] = 1500
	tHouseLike_Prob[3301397][2]["Item_1"]= 3301402  --光效家具

	tHouseLike_Prob[3301398] = {}
	tHouseLike_Prob[3301398]["ItemChanceSum"] = 10000                     	
	tHouseLike_Prob[3301398][1] = {}
	tHouseLike_Prob[3301398][1]["RandomItemChanceType"] = 2
	tHouseLike_Prob[3301398][1]["ItemChance"] = 8500
	tHouseLike_Prob[3301398][1]["Item_1"]= 3301398 --普通家具
	tHouseLike_Prob[3301398][2] = {}
	tHouseLike_Prob[3301398][2]["RandomItemChanceType"] = 2
	tHouseLike_Prob[3301398][2]["ItemChance"] = 1500
	tHouseLike_Prob[3301398][2]["Item_1"]= 3301403  --光效家具
	
	tHouseLike_Prob[3301399] = {}
	tHouseLike_Prob[3301399]["ItemChanceSum"] = 10000                     	
	tHouseLike_Prob[3301399][1] = {}
	tHouseLike_Prob[3301399][1]["RandomItemChanceType"] = 2
	tHouseLike_Prob[3301399][1]["ItemChance"] = 9200
	tHouseLike_Prob[3301399][1]["Item_1"]= 3301399 --普通家具
	tHouseLike_Prob[3301399][2] = {}
	tHouseLike_Prob[3301399][2]["RandomItemChanceType"] = 2
	tHouseLike_Prob[3301399][2]["ItemChance"] = 800
	tHouseLike_Prob[3301399][2]["Item_1"]= 3301404  --光效家具
	
	tHouseLike_Prob[3301400] = {}
	tHouseLike_Prob[3301400]["ItemChanceSum"] = 10000                     	
	tHouseLike_Prob[3301400][1] = {}
	tHouseLike_Prob[3301400][1]["RandomItemChanceType"] = 2
	tHouseLike_Prob[3301400][1]["ItemChance"] = 9500
	tHouseLike_Prob[3301400][1]["Item_1"]= 3301400 --普通家具
	tHouseLike_Prob[3301400][2] = {}
	tHouseLike_Prob[3301400][2]["RandomItemChanceType"] = 2
	tHouseLike_Prob[3301400][2]["ItemChance"] = 500
	tHouseLike_Prob[3301400][2]["Item_1"]= 3301405  --光效家具
local tHouseLike_Log = {}
	tHouseLike_Log["DelFurniture"] = "0,0,%d,1,12000550,2,0,0"   --放置某个家具，删除对应家具物品
	tHouseLike_Log["ItemLoot"] = "0,0,0,0,12000550,2,%d,1" --怪物掉落
	
local tHouseLike_MaxNum = {}    -- 家具最大放置数 
tHouseLike_MaxNum[2] = 10
tHouseLike_MaxNum[3] = 15
tHouseLike_MaxNum[4] = 20
tHouseLike_MaxNum[5] = 25
tHouseLike_MaxNum[6] = 30
--------------------------------逻辑部分------------------------------------------

function HouseLike_LinkNpc(nNpcId)
		--活动时间前
	if CommonFunc_GetBeforeActivityTime(tHouseLike_Cont["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	--活动时间后
	elseif CommonFunc_GetAfterActivityTime(tHouseLike_Cont["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
--活动时间中
	local nOwnerId = Get_MapOwnerId()
	local nUserId = Get_UserId()
	local nOwnerName = Get_UserName(nOwnerId)
	HouseLike_Clean(nUserId,nOwnerId)
--累计获赞	
	local EventType = tHouseLike_Stc["Liked"]["EventType"] 
	local DataType = tHouseLike_Stc["Liked"]["DataType"] 
	local EventType2 = tHouseLike_Stc["TodayLiked"]["EventType"]
	local DataType2 = tHouseLike_Stc["TodayLiked"]["DataType"]
	local EventType3 = tHouseLike_Stc["Score"]["EventType"]
	local DataType3 = tHouseLike_Stc["Score"]["DataType"]
	local nNum = Get_UserStatisticValue(EventType,DataType,nOwnerId)
	local nNum2 = Get_UserStatisticValue(EventType2,DataType2,nOwnerId)
	local nNum3 = Get_UserStatisticValue(EventType3,DataType3,nOwnerId)
--记录玩家今日点赞的次数以及房屋
	if not Task_ChkTaskDetail(tHouseLike_Task["TaskId"]) then
		Task_AddTaskDetail(tHouseLike_Task["TaskId"])
		Task_SetTaskDetailCompleteFlag(tHouseLike_Task["TaskId"],1)
	end

	local nData1 = Get_TaskDetailData1(tHouseLike_Task["TaskId"])
	local nData2 = Get_TaskDetailData2(tHouseLike_Task["TaskId"])
	local nData3 = Get_TaskDetailData3(tHouseLike_Task["TaskId"])
	local nData4 = Get_TaskDetailData4(tHouseLike_Task["TaskId"])
	local nData5 = Get_TaskDetailData5(tHouseLike_Task["TaskId"])
	local nData6 = Get_TaskDetailData6(tHouseLike_Task["TaskId"])
	local nCount = tHouseLike_Cont["LikeCount"] - nData6
--今日可领取数量 
	local nCanGetNum = nNum2 * tHouseLike_Cont["nNum"]
	if nCanGetNum >50 then 
		nCanGetNum =50
	end
	nCanGetNum = nCanGetNum - nNum3
--今日获赞
	local nHouseId = Get_UserHouseId(nUserId)
	--是屋主
	if nOwnerId == nUserId then 
		tNpcGossip[19790]["Text313"] = string.format(tHouseLike_Text[19790]["Text313"],nNum2)
		tNpcGossip[19790]["Text314"] = string.format(tHouseLike_Text[19790]["Text314"],nNum)
		tNpcGossip[19790]["Text315"]  =  string.format(tHouseLike_Text[19790]["Text315"],nNum3)
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return
	--非屋主
	else
		tNpcGossip[19790]["Text213"] = string.format(tHouseLike_Text[19790]["Text213"],nOwnerName)
		tNpcGossip[19790]["Text214"] = string.format(tHouseLike_Text[19790]["Text214"],nNum2)
		tNpcGossip[19790]["Text215"] = string.format(tHouseLike_Text[19790]["Text215"],nNum)
		tNpcGossip[19790]["Text217"] = string.format(tHouseLike_Text[19790]["Text217"],nCount)
		tNpcGossip[19790]["Text218"] = string.format(tHouseLike_Text[19790]["Text218"],nCount)
		--等级不足
		if not User_JudgeLevelAndMetempsychosis(tHouseLike_Cont["Level"],tHouseLike_Cont["Metempsychosis"]) then
			LinkNpcGossipFunc_New(nNpcId,"2-1")
			return
		end
		--房屋等级不足
		-- if Get_MapResLev(nHouseId) <2 or nHouseId ==0 then 
			-- LinkNpcGossipFunc_New(nNpcId,"2-2")
			-- return
		-- end
		--今日已经没有赞次数
		if  nData6 >= tHouseLike_Cont["LikeCount"] then
			LinkNpcGossipFunc_New(nNpcId,"2-5")
			return 
		end
		--已经为该房屋点过赞
		if nData1 == nOwnerId or nData2 == nOwnerId or nData3 == nOwnerId or nData4 == nOwnerId or nData5 == nOwnerId then
			LinkNpcGossipFunc_New(nNpcId,"2-4")
			return
		--未点过赞
		else
			LinkNpcGossipFunc_New(nNpcId,"2-3")
			return
		end
	end
end

--进入非6级房屋
function HouseLike_ToHomeNotSix()

	if not Sys_ChkFullTime(tHouseLike_Cont["ActivityTime"] ) then
		HouseLike_DelDynNpc()
		return
	end
	local nHouseId = Get_UserHouseId()
	local nMapLev = Get_MapResLev(nHouseId)
	local EventType = tHouseLike_Stc["Npc"]["EventType"]
	local DataType = tHouseLike_Stc["Npc"]["DataType"]
	local nData2 = Get_UserStatisticValue(EventType,DataType)
		if nData2 >=nMapLev then 
			return 
		end
	if nMapLev <=1 then 
		return 
	end
	Task_SetStatistic(EventType,DataType,nMapLev,1)
	Task_SetStcTimestamp(EventType,DataType,0)
	Npc_CreateDynaNpc(tHouseLike_DynNpc["Name"] ,tHouseLike_DynNpc["Type"] ,tHouseLike_DynNpc["Sort"] ,tHouseLike_DynNpc["LookFace"],0,0,nHouseId,tHouseLike_DynNpc["PosX"] [nMapLev],tHouseLike_DynNpc["PosY"] [nMapLev],0,0,0,tHouseLike_DynNpc["Action"])
end

--过期删除动态NPC
function HouseLike_DelDynNpc()
        --取当前房屋等级
	local nHouseId = Get_UserHouseId()
	local nMapLev = Get_MapResLev(nHouseId)
	local EventType = tHouseLike_Stc["Npc"]["EventType"]
	local DataType = tHouseLike_Stc["Npc"]["DataType"]
	local nData2 = Get_UserStatisticValue(EventType,DataType)
	if nData2 <nMapLev then 
		return false 
	end
	Task_SetStatistic(EventType,DataType,0,1)
	Task_SetStcTimestamp(EventType,DataType,0)
	local sField = tHouseLike_DynNpc["Field"]
	local sData = tHouseLike_DynNpc["Name"]
	Npc_DelDynaNpc(nHouseId,sField,sData)
	return true 
end

--怪物掉落
function HouseLike_KillDemon()
	-- 判断金币服
	if CommonFunc_ChkGoldServer() then
		return
	end
	--判断是否过期
	if HouseLike_AfterTime() then
		return
	end
	--清掩码
	local nUserId = Get_UserId()
	HouseLike_Clean(nUserId,nUserId)
	local nFlat,tAward = Probabil_RandomAward(tHouseLike_MonsDrop["Material"],1)
	nItemId = tAward[1]["tAward"][1]["Item_1"]
	if nItemId ==0 then 
		return 
	end
	local sName = Get_ItemtypeName(nItemId)
	local EventType = tHouseLike_Stc[nItemId]["EventType"]
	local DataType = tHouseLike_Stc[nItemId]["DataType"]
--控制材料掉落次数
	local nData = Get_UserStatisticValue(EventType,DataType)
	if  nData >= tHouseLike_Stc[nItemId]["Data"] then 
		return
	end
	Task_AddStatistic(EventType ,DataType,1,1)
	Task_SetStcTimestamp(EventType,DataType,0)
	Item_AddItem(nItemId)
	User_TalkChannel2005(string.format(tHouseLike_Text["GetMaterial"],sName))
	User_EffectAdd("self","eidolon")
	Sys_SaveActionFestivalLog(string.format(tHouseLike_Log["ItemLoot"],nItemId))

end

function HouseLike_LikeHouse(nNpcId)
	--判断是否过期
	if HouseLike_AfterTime() then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	--判断任务掩码是否存在
	if not Task_ChkTaskDetail(tHouseLike_Task["TaskId"])  then
		return
	end
	local nOwnerId = Get_MapOwnerId()
	local nUserId = Get_UserId()
	--清掩码
	HouseLike_Clean(nUserId,nOwnerId)
--今日获赞
	local EventType = tHouseLike_Stc["TodayLiked"]["EventType"] 
	local DataType = tHouseLike_Stc["TodayLiked"]["DataType"] 
--累计获赞	
	local EventType2 = tHouseLike_Stc["Liked"]["EventType"] 
	local DataType2 = tHouseLike_Stc["Liked"]["DataType"] 
--今日点赞数
	local nData6 = Get_TaskDetailData6(tHouseLike_Task["TaskId"])
	if nData6 >= 5 then
		LinkNpcGossipFunc_New(nNpcId,"2-5")
		return
	end
--判断背包空间 
	if not User_CheckLeftSpace(tHouseLike_Cont["BagSpace_1"]) then
		LinkNpcGossipFunc_New(nNpcId,"6-2")
		return
	end
	--打屋主的掩码 
	Task_AddStatistic(EventType,DataType,1,1,nOwnerId)
	Task_SetStcTimestamp(EventType,DataType,0,nOwnerId)
	Task_AddStatistic(EventType2,DataType2,1,1,nOwnerId)
	Task_SetStcTimestamp(EventType,DataType,0,nOwnerId)
	--打点赞人的TaskId掩码
	local newData = nData6+1
	if nData6 >=4 then 
		Task_SetTaskDetailData5(tHouseLike_Task["TaskId"],nOwnerId)
	elseif nData6 >=3 then 
		Task_SetTaskDetailData4(tHouseLike_Task["TaskId"],nOwnerId)
	elseif nData6 >=2 then 
		Task_SetTaskDetailData3(tHouseLike_Task["TaskId"],nOwnerId)
	elseif nData6 >=1 then 
		Task_SetTaskDetailData2(tHouseLike_Task["TaskId"],nOwnerId)
	elseif nData6 >=0 then 
		Task_SetTaskDetailData1(tHouseLike_Task["TaskId"],nOwnerId)
	end
	Task_SetTaskDetailData6(tHouseLike_Task["TaskId"],newData)
	Task_SetTaskDetailData7(tHouseLike_Task["TaskId"],os.time())
	--给积分道具
	RewardTemplate_UseItem(tHouseLike_RewardItem[3301255][10])
	Sys_MsgBox(tHouseLike_Text["Talk2"])
	User_EffectAdd("self","gam_buss_ap",nUserId)
	local sUserName = Get_UserName(nUserId)
	User_TalkChannel2005(string.format(tHouseLike_Text[19790]["Liked"],sUserName),nOwnerId)
	--记录最近点赞数据
	HouseLike_Ranking(sUserName,nOwnerId)
end

--最近点赞处理
function HouseLike_Ranking(sUserName,nUserId)

	tHouseLike_Ranking[nUserId] = tHouseLike_Ranking[nUserId] or {}
	table.insert(tHouseLike_Ranking[nUserId] , {sName =sUserName,nTime = os.time() })
	table.sort(tHouseLike_Ranking[nUserId] ,function(a,b) return a.nTime> b.nTime end)
	if #tHouseLike_Ranking[nUserId]  == 6 then 
		table.remove(tHouseLike_Ranking[nUserId], 6)
	end
end

--显示最近点赞的人
function HouseLike_ShowRanking(nNpcId)

	--判断是否过期
	if HouseLike_AfterTime() then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	local nUserId = Get_UserId()
	tHouseLike_Ranking[nUserId] = tHouseLike_Ranking[nUserId] or {}
	tNpcGossip[19790]["Text4-2"]  = {421,422}
	for i,v in pairs(tHouseLike_Ranking[nUserId]) do
		local sIndex =tHouseLike_RankingSeeDialog[i]
		local sNeedTxet = tHouseLike_Text[nNpcId][sIndex]
		local nOption = tHouseLike_RankingSeeOption[i]
		tNpcGossip[nNpcId][sIndex] = string.format(sNeedTxet,v.sName)
		table.insert(tNpcGossip[19790]["Text4-2"],nOption)
	end
	table.insert(tNpcGossip[19790]["Text4-2"],428)
	if #tHouseLike_Ranking[nUserId] == 0 then 
		tNpcGossip[nNpcId]["Text429"] = tHouseLike_Text[nNpcId]["Text429"]
		tNpcGossip[19790]["Text4-2"]  = {421,422,429,428}
	end 
	LinkNpcGossipFunc_New(nNpcId,"4-2")
end

-- 清掩码记得写
function HouseLike_Clean(nUserId,nOwnerId)
--清空屋主掩码
	if  Task_StcInterval(tHouseLike_Stc["TodayLiked"]["EventType"],tHouseLike_Stc["TodayLiked"]["DataType"],1,4,nOwnerId) then 
		Task_SetStatistic(tHouseLike_Stc["TodayLiked"]["EventType"] ,tHouseLike_Stc["TodayLiked"]["DataType"],0,1,nOwnerId)
		Task_SetStcTimestamp(tHouseLike_Stc["TodayLiked"]["EventType"] ,tHouseLike_Stc["TodayLiked"]["DataType"],0,nOwnerId)
	end
--清空自己的掩码
	for i,v in pairs(tHouseLike_Stc) do
		if i == "Furniture" or i == "Liked" or i == "Npc" then 			
		else 
			if Task_StcInterval(v["EventType"],v["DataType"],1,4,nUserId) then
				Task_SetStatistic(v["EventType"],v["DataType"],0,1,nUserId)
				Task_SetStcTimestamp(v["EventType"],v["DataType"],0,nUserId)
			end
		end
	end
	if Task_ChkTaskDetail(tHouseLike_Task["TaskId"]) then
		if Task_DetailInterval(tHouseLike_Task["TaskId"],1,4) then 
			Task_SetTaskDetailData1(tHouseLike_Task["TaskId"],0)
			Task_SetTaskDetailData2(tHouseLike_Task["TaskId"],0)
			Task_SetTaskDetailData3(tHouseLike_Task["TaskId"],0)
			Task_SetTaskDetailData4(tHouseLike_Task["TaskId"],0)
			Task_SetTaskDetailData5(tHouseLike_Task["TaskId"],0)
			Task_SetTaskDetailData6(tHouseLike_Task["TaskId"],0)
			Task_SetTaskDetailData7(tHouseLike_Task["TaskId"],os.time())
		end
	end
end

--使用家具
function HouseLike_UseFurniture(nItemId,nIndex)
	if CommonFunc_GetAfterActivityTime(tHouseLike_Cont["ActivityTime2"]) then
		local sName = Get_ItemtypeName(nItemId)
		if Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(string.format(tHouseLike_Text["OutTime"],sName))
			return
		end 
	end
	if Item_ChkItem(nItemId) then
	--判断是否在房屋内使用
	local nHouseType = tHouseLike_Cont["House_Type"]
	local nPlayerId = Get_UserId()
	local nUserMapType = Get_MapType()
	if not Sys_ParseNumbersContain(nHouseType,nUserMapType) then
		User_TalkChannel2005(tHouseLike_Text["NotInHouse"])
		return
	end
	
	local nMapOwnerId = Get_MapOwnerId()
	if nMapOwnerId ~= nPlayerId then
		User_TalkChannel2005(tHouseLike_Text["NotInHouse"])
		return
	end
	local nMapLev = Get_MapResLev()
	--判断房屋等级
	if nMapLev < 2 then
		User_TalkChannel2005(tHouseLike_Text["NotReslev"])
		return
	end
	local nFurCount = 0	
		--判断房屋中的家具数量
	if  nMapLev >=2 and nMapLev <= 6 then 
		nFurCount = tHouseLike_MaxNum[nMapLev]
	end
	
	local newCount  = 0
	for i,v in pairs (tHouseLike_Text["Furniture"])  do 
		newCount = newCount + Get_NpcCountByName(tostring(v))
	end
		--五级房屋家具数量上限12个  六级+8个
		if newCount >= nFurCount then
			User_TalkChannel2005(string.format(tTheSixthHouse_Text["EnoghNum"],nFurCount))
			return
		end
	end
	
	if nItemId >= tHouseLike_Item[3301391]["Id"] and nItemId <= tHouseLike_Item[3301405]["Id"] then
		Npc_RequestLayNpcByItem("HouseLike_CreateNpc</N>"..nItemId,2,tHouseLike_Furniture[nItemId][1])
	end
end

function HouseLike_CreateNpc(nItemId)
	if Item_ChkItem(nItemId) then
		if nItemId >= tHouseLike_Item[3301391]["Id"] and nItemId <= tHouseLike_Item[3301405]["Id"] then
			if Npc_CreatLayNpcByItem(tHouseLike_Text["Furniture"][nItemId],2,32,tHouseLike_Furniture[nItemId][1],0,0,0,0,0,tHouseLike_Furniture[nItemId][2]) then 
				if Item_DelItem(nItemId) then
					Sys_SaveActionFestivalLog(string.format(tHouseLike_Log["DelFurniture"],nItemId))
				end
			end
		end
	end
end

--点击家具时，删除当前家具npc
function HouseLike_DelFurniture(nItemId)
	--过期直接删除 
	if CommonFunc_GetAfterActivityTime(tHouseLike_Cont["ActivityTime2"]) then
		Npc_DelDynaByID()
		return 
	end
	local sFurName = tHouseLike_Text["Furniture"][nItemId]
	local nPlayerId = Get_UserId()
	local nMapOwnerId = Get_MapOwnerId()
	if nMapOwnerId ~= nPlayerId then
		Sys_DialogText(tHouseLike_Text["Furniture"]["Desc"][nItemId])
		Sys_DialogOption(tHouseLike_Text["FurDialog"]["Option2"],"")
		Sys_DialogEnd()
		return
	end
	-- Sys_DialogText(string.format(tHouseLike_Text["FurDialog"]["Text111"],sFurName))
	Sys_DialogText(tHouseLike_Text["Furniture"]["Desc"][nItemId])
	Sys_DialogOption(tHouseLike_Text["FurDialog"]["Option1"],"</F>TheSixthHouse_FoldFurniture</N>"..nItemId)
	Sys_DialogEnd()
end

--收起家具
function HouseLike_FoldFurniture(nItemId)
	local nPlayerId = Get_UserId()
	local nMapOwnerId = Get_MapOwnerId()
	if nMapOwnerId ~= nPlayerId then
		return
	end
	
	if not User_CheckLeftSpace(tHouseLike_Cont["BagSpace_1"]) then
		User_TalkChannel2005(tHouseLike_Text["FullBag"])
		return
	end
	
	Npc_DelDynaByID()
	Item_AddNewItem(nItemId,"")
end

--自动寻路位置
function HouseLike_Goto(nNpcId)
	-- local PoxX = tHouseLike_FindWay[nNpcId]["PosX"]
	-- local PosY = tHouseLike_FindWay[nNpcId]["PosY"]
	-- local MapId = tHouseLike_FindWay[nNpcId]["MapId"]
	-- Sys_GotoSomeWhere(PoxX,PosY,MapId,nNpcId)
	NpcPosition_PathFind(nNpcId)
end
--打造家具  
function HouseLike_MakeFurniture(nNpcId,nItemId,nIndex)
	local nUserId = Get_UserId()
	--隔天清掩码
	HouseLike_Clean(nUserId,nUserId)
	--判断活动是否过期
	if HouseLike_AfterTime() then
		LinkNpcGossipFunc_New(nNpcId,"9-1")
		return
	end
	--判断材料是否充足
	for i ,v in pairs(tHouseLike_Material[nItemId]) do
		if not Item_ChkMulItem (v["Id"],v["Id"],v["Num"]) then
			local sName = Get_ItemtypeName(v["Id"])
			tNpcGossip[nNpcId]["Text521"]  = string.format(tHouseLike_Text[nNpcId]["Text521"],sName)
			LinkNpcGossipFunc_New(nNpcId,"5-2")
			return
		end
	end
	--删除对应材料	
	for i ,v in pairs(tHouseLike_Material[nItemId]) do
		if Item_ChkMulItem(v["Id"],v["Id"],v["Num"]) and Item_DelMulItem(v["Id"],v["Id"],v["Num"]) then      
		else
				tNpcGossip[nNpcId]["Text521"]  = string.format(tHouseLike_Text[nNpcId]["Text521"],sName)
				LinkNpcGossipFunc_New(nNpcId,"5-2")
				return
		end
	end
	local flat,tNum1= Probabil_RandomAward(tHouseLike_Prob,nItemId) 
	local nRandom = tNum1[1]["tAward"][1]["Item_1"]
	local sName = Get_ItemtypeName(nRandom)
	local nEventType = tHouseLike_Stc["FurnitureScore"]["EventType"]
	local nDataType =tHouseLike_Stc["FurnitureScore"]["DataType"]
	local nData = Get_UserStatisticValue(nEventType,nDataType)
	User_EffectAdd("self","zf2-e280")
	if nRandom == tHouseLike_Item[3301255]["Id"] then 
		
		if  nData >= 50 then
		--积分领取上限只给100气力值
			tHouseLike_RewardItem[3301255][3]["LogStep"] = tHouseLike_LogStep["Made"][nItemId] 
			RewardTemplate_UseItem(tHouseLike_RewardItem[3301255][3])
			tNpcGossip[nNpcId]["Text531"]  = tHouseLike_Text[nNpcId]["Text533"]
			tNpcGossip[nNpcId]["Text532"]  = tHouseLike_Text[nNpcId]["Text534"]
			LinkNpcGossipFunc_New(nNpcId,"5-3")
		else
		--给奖励 5张琳琅积分和100气力值
			Task_AddStatistic(nEventType,nDataType,tHouseLike_Cont["Five"],1)
			Task_SetStcTimestamp(nEventType,nDataType,0)
			tHouseLike_RewardItem[3301255][3301255]["LogStep"] = tHouseLike_LogStep["Made"][nItemId] 
			RewardTemplate_UseItem(tHouseLike_RewardItem[3301255][3301255])
			tNpcGossip[nNpcId]["Text532"]  = string.format(tHouseLike_Text[nNpcId]["Text532"],sName)
			LinkNpcGossipFunc_New(nNpcId,"5-3")
		end		

	else
		local EventType = tHouseLike_Stc["Furniture"]["EventType"] 
		local DataType  = tHouseLike_Stc["Furniture"]["DataType"] 
		Task_SetStatistic(EventType,DataType,nRandom,1)
		Task_SetStcTimestamp(EventType,DataType,0)
		local nEventType = tHouseLike_Stc["FurnitureScore"]["EventType"]
		local nDataType =tHouseLike_Stc["FurnitureScore"]["DataType"]
		local nData1 = Get_UserStatisticValue(nEventType,nDataType)
		tNpcGossip[nNpcId]["Text543"]  = string.format(tHouseLike_Text[nNpcId]["Text543"],sName)
		tNpcGossip[nNpcId]["Text545"]  = string.format(tHouseLike_Text[nNpcId]["Text545"],tHouseLike_GreatMaterial[nRandom])
		if nRandom >= 3301396 and nRandom <= 3301400 then
			if nData1>=50 then 
				User_TalkChannel2005(string.format(tHouseLike_Text[19807]["Msg3"],sName))
			else
				User_TalkChannel2005(string.format(tHouseLike_Text[19807]["Msg1"],sName))
			end			
		end
		if nRandom >= 3301401 and nRandom <= 3301405 then
			local sUserName = Get_UserName(nUserId)
			if nData1>=50 then 
				User_TalkChannel2005(string.format(tHouseLike_Text[19807]["Msg4"],sName))
			else
				User_TalkChannel2005(string.format(tHouseLike_Text[19807]["Msg2"],sName))
			end
			Sys_SystemBroadcast(string.format(tHouseLike_Text[19807]["Msg5"],sUserName,sName))
		end
		LinkNpcGossipFunc_New(nNpcId,"5-4")
	end
end

--活动时间内，人物等级不足
function HouseLike_JudgeLevel()
	if not Sys_ChkFullTime(tHouseLike_Cont["ActivityTime"])  then
		return false
	end
	if not User_JudgeLevelAndMetempsychosis(tHouseLike_Cont["Level"],tHouseLike_Cont["Metempsychosis"]) then
		return true
	else 
		return false
	end
end

--判断活动时间内，房屋等级不满足
function HouseLike_JudgeHouseLevel()
	if not Sys_ChkFullTime(tHouseLike_Cont["ActivityTime"])  then
		return false
	end
	local nHouseId = Get_UserHouseId()
	
	if Get_MapResLev(nHouseId) <2 then
		return true
	else
		return false
	end
end

--判断活动时间、等级、房屋等级
function HouseLike_JudgeTimeAndLevel(nNpcId)
	local nUserId = Get_UserId()
	HouseLike_Clean(nUserId,nUserId)
	--判断时间
	if not Sys_ChkFullTime(tHouseLike_Cont["ActivityTime"]) then
		return false
	end
	--判断等级
	if not User_JudgeLevelAndMetempsychosis(tHouseLike_Cont["Level"],tHouseLike_Cont["Metempsychosis"]) then
		return false
	end
	--判断房屋等级
	local nHouseId = Get_UserHouseId()
	if Get_MapResLev(nHouseId) <2 then
		return false
	end
	
	if nNpcId == 19807 then
	--判断是否有家具未取出
		local EventType = tHouseLike_Stc["Furniture"]["EventType"] 
		local DataType  = tHouseLike_Stc["Furniture"]["DataType"] 
		local nData = Get_UserStatisticValue(EventType,DataType) 
		if nData ~=0 then
			local sName = Get_ItemtypeName(nData)
			tNpcGossip[nNpcId]["Text543"]  = string.format(tHouseLike_Text[nNpcId]["Text543"],sName)
			tNpcGossip[nNpcId]["Text545"]  = string.format(tHouseLike_Text[nNpcId]["Text545"],tHouseLike_GreatMaterial[nData])
			tNpcGossip[19807]["Text1-5"] = {541,542,543,544,546,547}
			tNpcGossip[19807]["tOption1-5"] = {17,18,1}
		else
			tNpcGossip[19807]["Text1-5"] = {131,132,133,134,135}
			tNpcGossip[19807]["tOption1-5"] = {5,6,8,1}
		end
	end
	
	return true
end
--判断是否可以制作
function HouseLike_JudgeMaterial(nNpcId,nIndex)
	--判断是否过期
	if HouseLike_AfterTime() then
		LinkNpcGossipFunc_New(nNpcId,"9-1")
		return
	end
	--判断是否有家具未取出
	local EventType = tHouseLike_Stc["Furniture"]["EventType"] 
	local DataType  = tHouseLike_Stc["Furniture"]["DataType"] 
	local nData = Get_UserStatisticValue(EventType,DataType) 
	if nData ~=0 then
		local sName = Get_ItemtypeName(nData)
		tNpcGossip[nNpcId]["Text543"]  = string.format(tHouseLike_Text[nNpcId]["Text543"],sName)
		tNpcGossip[nNpcId]["Text545"]  = string.format(tHouseLike_Text[nNpcId]["Text545"],tHouseLike_GreatMaterial[nData])
		LinkNpcGossipFunc_New(nNpcId,"5-4")
		return
	end
    -- 家具1 
	for i ,v in pairs(tHouseLike_Material) do
		for j,k in pairs(v) do
			if not Item_ChkMulItem (k["Id"],k["Id"],k["Num"]) then
				tNpcGossip[nNpcId][tHouseLike_Text[i]]  = string.format(tHouseLike_Text[nNpcId][tHouseLike_Text[i]],"")
				break
			end		
			if j == #v then
				tNpcGossip[nNpcId][tHouseLike_Text[i]]  = string.format(tHouseLike_Text[nNpcId][tHouseLike_Text[i]],tHouseLike_Text[19807]["CanMade"])
			end
		end
	end
	if nIndex ==1 then 
		LinkNpcGossipFunc_New(nNpcId,"5-1")
	else
		LinkNpcGossipFunc_New(nNpcId,"6-1")
	end
end

function HouseLike_Confirm(nNpcId)
	local EventType = tHouseLike_Stc["Furniture"]["EventType"] 
	local DataType  = tHouseLike_Stc["Furniture"]["DataType"] 
	local nData = Get_UserStatisticValue(EventType,DataType) 
	local sName = Get_ItemtypeName(nData)
	tNpcGossip[nNpcId]["Text571"]  = string.format(tHouseLike_Text[nNpcId]["Text571"],sName,tHouseLike_GreatMaterial[nData])
	LinkNpcGossipFunc_New(nNpcId,"5-7")
end


--取出/拆解家具
function HouseLike_GetFurniture(nNpcId,nIndex)
	--判断活动是否过期
	if HouseLike_AfterTime() then
		LinkNpcGossipFunc_New(nNpcId,"9-1")
		return
	end
	local nUserId = Get_UserId()
	HouseLike_Clean(nUserId,nUserId)
--判断背包空间
	if not User_CheckLeftSpace(tHouseLike_Cont["BagSpace_2"]) then
		if nIndex ==1 then 
			LinkNpcGossipFunc_New(nNpcId,"5-5")
		else
			LinkNpcGossipFunc_New(nNpcId,"5-6")
		end
		return
	end
	local EventType = tHouseLike_Stc["Furniture"]["EventType"] 
	local DataType  = tHouseLike_Stc["Furniture"]["DataType"] 
	local nData = Get_UserStatisticValue(EventType,DataType) 
	local nEventType = tHouseLike_Stc["FurnitureScore"]["EventType"]
	local nDataType =tHouseLike_Stc["FurnitureScore"]["DataType"]
	local nData1 = Get_UserStatisticValue(nEventType,nDataType)
	local sName = Get_ItemtypeName(nData)

--改变奖励表，给当前的家具ID
	if nIndex ==1 then  
		if nData1 >=50 then 
			--已经达上限，只发气力值
			nIndex = 3 
			tHouseLike_RewardItem["Material"][3]["RewardItem"][1]["Id"] = nData
			tHouseLike_RewardItem["Material"][nIndex]["Talk"] = string.format(tHouseLike_Text[19807]["Talk2"],sName)
			tHouseLike_RewardItem["Material"][nIndex]["LogStep"] = tHouseLike_LogStep["Get"][nData]
		else
			tHouseLike_RewardItem["Material"][nIndex]["RewardItem"][1]["Id"] = nData
			tHouseLike_RewardItem["Material"][nIndex]["RewardItem"][2]["Attr"] = string.format("0 %d",tHouseLike_Cont["Five"])
			tHouseLike_RewardItem["Material"][nIndex]["Talk"] = string.format(tHouseLike_Text[19807]["Talk1"],sName,tHouseLike_Cont["Five"])
			tHouseLike_RewardItem["Material"][nIndex]["LogStep"] = tHouseLike_LogStep["Get"][nData]
			Task_AddStatistic(nEventType,nDataType,tHouseLike_Cont["Five"],1)
			Task_SetStcTimestamp(nEventType,nDataType,0)
		end	
	else 
	--给光效材料以及修改数量
		if nData1 >=50 then 
			nIndex = 4
			tHouseLike_RewardItem["Material"][nIndex]["Talk"] = string.format(tHouseLike_Text["Talk"],sName,tHouseLike_GreatMaterial[nData])
			tHouseLike_RewardItem["Material"][nIndex]["RewardItem"][1]["Id"] = tHouseLike_Item[3301290]["Id"]
			tHouseLike_RewardItem["Material"][nIndex]["RewardItem"][1]["Attr"] = string.format("0 %d",tHouseLike_GreatMaterial[nData])
		else
			tHouseLike_RewardItem["Material"][nIndex]["Talk"] = string.format(tHouseLike_Text["Talk"],sName,tHouseLike_GreatMaterial[nData])
			tHouseLike_RewardItem["Material"][nIndex]["RewardItem"][1]["Id"] = tHouseLike_Item[3301290]["Id"]
			tHouseLike_RewardItem["Material"][nIndex]["RewardItem"][2]["Attr"] = string.format("0 %d",tHouseLike_Cont["Five"])
			tHouseLike_RewardItem["Material"][nIndex]["RewardItem"][1]["Attr"] = string.format("0 %d",tHouseLike_GreatMaterial[nData])
			Task_AddStatistic(nEventType,nDataType,tHouseLike_Cont["Five"],1)
			Task_SetStcTimestamp(nEventType,nDataType,0)
		end
		User_EffectAdd("self","eidolon")
	end
--将掩码置为0
	Task_SetStatistic(EventType,DataType,0,1)
	Task_SetStcTimestamp(EventType,DataType,0)
--给奖励
	RewardTemplate_UseItem(tHouseLike_RewardItem["Material"][nIndex])
	LinkNpcGossipFunc_New(nNpcId,"1-5")
end



--屋主领取积分奖励
function HouseLike_GetPoints(nNpcId)
	--判断是否过期
	if HouseLike_AfterTime() then
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return
	end
	local nUserId = Get_UserId()
	HouseLike_Clean(nUserId,nUserId)
	local EventType = tHouseLike_Stc["Score"]["EventType"]
	local DataType = tHouseLike_Stc["Score"]["DataType"]
	--今日领取积分数
	local nData = Get_UserStatisticValue(EventType,DataType) 
	if nData >=50 then 
		LinkNpcGossipFunc_New(nNpcId,"3-3")
		return
	end
	-- 可领取数量为0
	--今日可领取数量 
	local EventType2 = tHouseLike_Stc["TodayLiked"]["EventType"]
	local DataType2 = tHouseLike_Stc["TodayLiked"]["DataType"]
	local nNum2 = Get_UserStatisticValue(EventType2,DataType2,nOwnerId)
	local nCanGetNum = nNum2 * tHouseLike_Cont["nNum"]
	if nCanGetNum >50 then 
		nCanGetNum =50
	end
	nCanGetNum = nCanGetNum - nData
	if nCanGetNum == 0 then 
		LinkNpcGossipFunc_New(nNpcId,"3-4")
		return
	end
	--判断背包空间
	if not User_CheckLeftSpace(tHouseLike_Cont["BagSpace_1"]) then
		LinkNpcGossipFunc_New(nNpcId,"3-5")
		return
	end
    --发放积分券
	--置掩码
	Task_AddStatistic(EventType,DataType,nCanGetNum,1)
	Task_SetStcTimestamp(EventType,DataType,0)
	tHouseLike_RewardItem[3301255][1]["RewardItem"][1]["Attr"] = string.format("0 %d",nCanGetNum)
	RewardTemplate_UseItem(tHouseLike_RewardItem[3301255][1])
	
	local newData = Get_UserStatisticValue(EventType,DataType)  
	local newCanGetNum = 50 - newData
	tNpcGossip[19790]["Text361"] = string.format(tHouseLike_Text[19790]["Text361"],nCanGetNum)
	tNpcGossip[19790]["Text362"] = string.format(tHouseLike_Text[19790]["Text362"],newData)
	LinkNpcGossipFunc_New(nNpcId,"3-6")
end

--活动过期判断
function HouseLike_AfterTime()
	--判断是否过期
	if CommonFunc_GetAfterActivityTime(tHouseLike_Cont["ActivityTime"]) then
		return true
	end
	return false
end

-- 清理表
function HouseLike_ClearRanking()
	-- 判断金币服
	if CommonFunc_ChkGoldServer() then
		return
	end
		tHouseLike_Ranking = {}
end

function HouseLike_OpenShop(nNpcId)
	if HouseLike_AfterTime() then
		LinkNpcGossipFunc_New(nNpcId,"9-1")
		return
	end
	User_OpenDialog(0,nNpcId,0)
end
--物品过期判断
function HouseLike_UseItem(nItemId)
	if CommonFunc_GetAfterActivityTime(tHouseLike_Cont["ActivityTime"]) then
		local sName = Get_ItemtypeName(nItemId)
		if Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(string.format(tHouseLike_Text["OutTime"],sName))
			return
		end 
	end
end
--------------------------------------------------------------------------------------
--爱迪尔
tNpcFace[4413] = 35
--活动时间前
tNpcGossip[19795] = tNpcGossip[19795] or DefaultNpc:new{}
tNpcGossip[19795]["OptionHidden"] = 1
tNpcGossip[19795]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[19795]["Text111"] = tHouseLike_Text[19795]["Text111"]
tNpcGossip[19795]["Text112"] = tHouseLike_Text[19795]["Text112"]
tNpcGossip[19795]["Text113"] = tHouseLike_Text[19795]["Text133"]
tNpcGossip[19795]["Text114"] = tHouseLike_Text[19795]["Text134"]
tNpcGossip[19795]["Text115"] = tHouseLike_Text[19795]["Text135"]
tNpcGossip[19795]["tOption1-1"] = {1}
tNpcGossip[19795]["Option1"] = tHouseLike_Text[19795]["Option1"]
tNpcGossip[19795]["ChkFunc1-1"] = function ()
	return CommonFunc_GetBeforeActivityTime(tHouseLike_Cont["ActivityTime"])
end
--活动时间后
tNpcGossip[19795]["Text1-2"] = {121}
tNpcGossip[19795]["Text121"] = tHouseLike_Text[19795]["Text121"]
tNpcGossip[19795]["tOption1-2"] = {2}
tNpcGossip[19795]["Option2"] = tHouseLike_Text[19795]["Option2"]
tNpcGossip[19795]["ChkFunc1-2"] = function ()
	return CommonFunc_GetAfterActivityTime(tHouseLike_Cont["ActivityTime"])
end

--活动时间内等级不足
tNpcGossip[19795]["Text1-3"] = {131,132,113,114,115}
tNpcGossip[19795]["Text131"] = tHouseLike_Text[19795]["Text131"]
tNpcGossip[19795]["Text132"] = tHouseLike_Text[19795]["Text132"]
tNpcGossip[19795]["Text133"] = tHouseLike_Text[19795]["Text133"]
tNpcGossip[19795]["Text134"] = tHouseLike_Text[19795]["Text134"]
tNpcGossip[19795]["Text135"] = tHouseLike_Text[19795]["Text135"]
tNpcGossip[19795]["tOption1-3"] = {3}
tNpcGossip[19795]["Option3"] = tHouseLike_Text[19795]["Option3"]
tNpcGossip[19795]["ChkFunc1-3"] = function ()
	return HouseLike_JudgeLevel()
end

--活动时间内房屋等级不足
tNpcGossip[19795]["Text1-4"] = {131,132,133,134,135}
tNpcGossip[19795]["tOption1-4"] = {4}
tNpcGossip[19795]["Option4"] = tHouseLike_Text[19795]["Option4"]
tNpcGossip[19795]["ChkFunc1-4"] = function ()
	return HouseLike_JudgeHouseLevel()
end

--活动时间内
tNpcGossip[19795]["Text1-5"] = {131,132,133,134,135}
tNpcGossip[19795]["tOption1-5"] = {7,5,6}
tNpcGossip[19795]["Option7"] = tHouseLike_Text[19795]["Option7"]
tNpcGossip[19795]["Option5"] = tHouseLike_Text[19795]["Option5"]
tNpcGossip[19795]["OptionFunc5"] = "HouseLike_Goto</N>19807"
tNpcGossip[19795]["Option6"] = tHouseLike_Text[19795]["Option6"]
tNpcGossip[19795]["OptionPoint7"] = "7-1"
tNpcGossip[19795]["ChkFunc1-5"] = function ()
	return HouseLike_JudgeTimeAndLevel(19795)
end

--接如何点赞
tNpcGossip[19795]["Text7-1"] = {711,712,713,714}
tNpcGossip[19795]["Text711"] = tHouseLike_Text[19795]["Text711"]
tNpcGossip[19795]["Text712"] = tHouseLike_Text[19795]["Text712"]
tNpcGossip[19795]["Text713"] = tHouseLike_Text[19795]["Text713"]
tNpcGossip[19795]["Text714"] = tHouseLike_Text[19795]["Text714"]
tNpcGossip[19795]["tOption7-1"] = {8}
tNpcGossip[19795]["Option8"] = tHouseLike_Text[19795]["Option8"]

--集赞娃娃 
--活动时间前
tNpcGossip[19790] = tNpcGossip[19790] or DefaultNpc:new{}
tNpcGossip[19790]["OptionHidden"] = 1
tNpcGossip[19790]["Text1-1"] = {111}
tNpcGossip[19790]["tOption1-1"] = {1}
tNpcGossip[19790]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[19790]["Text111"] = tHouseLike_Text[19790]["Text111"]
tNpcGossip[19790]["Text112"] = tHouseLike_Text[19790]["Text112"]
tNpcGossip[19790]["Text113"] = tHouseLike_Text[19807]["Text113"]
tNpcGossip[19790]["Text114"] = tHouseLike_Text[19807]["Text114"]
tNpcGossip[19790]["Text115"] = tHouseLike_Text[19807]["Text115"]
tNpcGossip[19790]["Option1"] = tHouseLike_Text[19795]["Option6"]
tNpcGossip[19790]["ChkFunc1-1"] = function ()
	return CommonFunc_GetBeforeActivityTime(tHouseLike_Cont["ActivityTime"])
end
--活动时间后
tNpcGossip[19790]["Text1-2"] = {121}
tNpcGossip[19790]["Text121"] = tHouseLike_Text[19790]["Text121"]
tNpcGossip[19790]["tOption1-2"] = {2}
tNpcGossip[19790]["Option2"] = tHouseLike_Text[19795]["Option6"]
tNpcGossip[19790]["ChkFunc1-2"] = function ()
	return CommonFunc_GetAfterActivityTime(tHouseLike_Cont["ActivityTime"])
end

tNpcGossip[19790]["Text2-1"] = {211,212,213,214,215,216}
tNpcGossip[19790]["Text211"] = tHouseLike_Text[19790]["Text211"]
tNpcGossip[19790]["Text212"] = tHouseLike_Text[19790]["Text212"]
tNpcGossip[19790]["Text213"] = tHouseLike_Text[19790]["Text213"]
tNpcGossip[19790]["Text214"] = tHouseLike_Text[19790]["Text214"]
tNpcGossip[19790]["Text215"] = tHouseLike_Text[19790]["Text215"]
tNpcGossip[19790]["Text216"] = tHouseLike_Text[19790]["Text216"]
tNpcGossip[19790]["tOption2-1"] = {3}
tNpcGossip[19790]["Option3"] = tHouseLike_Text[19790]["Option1"]

tNpcGossip[19790]["Text2-2"]  = {211,212,213,214,215,216}
tNpcGossip[19790]["Text211"] = tHouseLike_Text[19790]["Text211"]
tNpcGossip[19790]["Text212"] = tHouseLike_Text[19790]["Text212"]
tNpcGossip[19790]["Text213"] = tHouseLike_Text[19790]["Text213"]
tNpcGossip[19790]["Text214"] = tHouseLike_Text[19790]["Text214"]
tNpcGossip[19790]["Text215"] = tHouseLike_Text[19790]["Text215"]
tNpcGossip[19790]["Text216"] = tHouseLike_Text[19790]["Text216"]
tNpcGossip[19790]["tOption2-2"] = {4}
tNpcGossip[19790]["Option4"] = tHouseLike_Text[19790]["Option4"]

tNpcGossip[19790]["Text2-3"]  = {211,212,213,214,215,216,217}
tNpcGossip[19790]["tOption2-3"] = {5,6,1}
tNpcGossip[19790]["Option5"] = tHouseLike_Text[19790]["Option5"]
tNpcGossip[19790]["OptionFunc5"] = "HouseLike_LikeHouse</N>19790"
tNpcGossip[19790]["Option6"] = tHouseLike_Text[19790]["Option6"]
tNpcGossip[19790]["OptionPoint6"] = "6-1"
tNpcGossip[19790]["Text2-4"]  = {211,212,213,214,215,216,218}
tNpcGossip[19790]["tOption2-4"] = {6,1}

tNpcGossip[19790]["Text2-5"]  = {211,212,213,214,215,216,219}
tNpcGossip[19790]["tOption2-5"] = {6,1}
--接点赞须知
tNpcGossip[19790]["Text6-1"]  = {611,612,613,614,615,616}
tNpcGossip[19790]["tOption6-1"] = {1}
tNpcGossip[19790]["Text611"] = tHouseLike_Text[19790]["Text611"]
tNpcGossip[19790]["Text612"] = tHouseLike_Text[19790]["Text612"]
tNpcGossip[19790]["Text613"] = tHouseLike_Text[19790]["Text613"]
tNpcGossip[19790]["Text614"] = tHouseLike_Text[19790]["Text614"]
tNpcGossip[19790]["Text615"] = tHouseLike_Text[19790]["Text615"]
tNpcGossip[19790]["Text616"] = tHouseLike_Text[19790]["Text616"]

--点赞失败 背包已满
tNpcGossip[19790]["Text6-2"]  = {621}
tNpcGossip[19790]["Text621"] = tHouseLike_Text[19790]["Text621"]
tNpcGossip[19790]["tOption6-1"] = {7}
tNpcGossip[19790]["Option7"] = tHouseLike_Text[19790]["Option7"]

tNpcGossip[19790]["Text3-1"]  = {311,312,313,314,315,316,317}
tNpcGossip[19790]["Text311"] = tHouseLike_Text[19790]["Text311"]
tNpcGossip[19790]["Text312"] = tHouseLike_Text[19790]["Text312"]
tNpcGossip[19790]["Text313"] = tHouseLike_Text[19790]["Text313"]
tNpcGossip[19790]["Text314"] = tHouseLike_Text[19790]["Text314"]
tNpcGossip[19790]["Text315"] = tHouseLike_Text[19790]["Text315"]
tNpcGossip[19790]["Text316"] = tHouseLike_Text[19790]["Text316"]
tNpcGossip[19790]["Text317"] = tHouseLike_Text[19790]["Text317"]
tNpcGossip[19790]["tOption3-1"] = {8,9,10,1}
tNpcGossip[19790]["Option8"] = tHouseLike_Text[19790]["Option8"]
tNpcGossip[19790]["OptionFunc8"] = "HouseLike_GetPoints</N>19790"
tNpcGossip[19790]["Option9"] = tHouseLike_Text[19790]["Option9"]
tNpcGossip[19790]["OptionFunc9"] = "HouseLike_ShowRanking</N>19790"
tNpcGossip[19790]["Option10"] = tHouseLike_Text[19790]["Option10"]
tNpcGossip[19790]["OptionPoint10"] = "4-1"
--领取奖励时间过期
tNpcGossip[19790]["Text3-2"]  = {321}
tNpcGossip[19790]["Text321"] = tHouseLike_Text[19790]["Text321"]
tNpcGossip[19790]["tOption3-2"] = {1}

--领取上限
tNpcGossip[19790]["Text3-3"]  = {331}
tNpcGossip[19790]["Text331"] = tHouseLike_Text[19790]["Text331"]
tNpcGossip[19790]["tOption3-3"] = {7}
--无可领取的积分券
tNpcGossip[19790]["Text3-4"]  = {341}
tNpcGossip[19790]["Text341"] = tHouseLike_Text[19790]["Text341"]
tNpcGossip[19790]["tOption3-4"] = {7}

--背包上限
tNpcGossip[19790]["Text3-5"]  = {351}
tNpcGossip[19790]["Text351"] = tHouseLike_Text[19790]["Text351"]
tNpcGossip[19790]["tOption3-5"] = {7}

--领取成功，未达上限
tNpcGossip[19790]["Text3-6"]  = {361,362,363}
tNpcGossip[19790]["Text361"] = tHouseLike_Text[19790]["Text361"]
tNpcGossip[19790]["Text362"] = tHouseLike_Text[19790]["Text362"]
tNpcGossip[19790]["Text363"] = tHouseLike_Text[19790]["Text363"]
tNpcGossip[19790]["tOption3-6"] = {7}
--领取成功，已达上限
tNpcGossip[19790]["Text3-7"]  = {371,372}
tNpcGossip[19790]["Text371"] = tHouseLike_Text[19790]["Text371"]
tNpcGossip[19790]["Text372"] = tHouseLike_Text[19790]["Text372"]
tNpcGossip[19790]["tOption3-7"] = {7}

--点赞须知
tNpcGossip[19790]["Text4-1"]  = {411,412,413,414,415}
tNpcGossip[19790]["Text411"] = tHouseLike_Text[19790]["Text411"]
tNpcGossip[19790]["Text412"] = tHouseLike_Text[19790]["Text412"]
tNpcGossip[19790]["Text413"] = tHouseLike_Text[19790]["Text413"]
tNpcGossip[19790]["Text414"] = tHouseLike_Text[19790]["Text414"]
tNpcGossip[19790]["Text415"] = tHouseLike_Text[19790]["Text415"]
tNpcGossip[19790]["tOption4-1"] = {1}

--最近点赞的5个人
tNpcGossip[19790]["Text4-2"]  = {421,422,423,424,425,426,427,428}
tNpcGossip[19790]["Text421"] = tHouseLike_Text[19790]["Text421"]
tNpcGossip[19790]["Text422"] = tHouseLike_Text[19790]["Text422"]
tNpcGossip[19790]["Text428"] = tHouseLike_Text[19790]["Text428"]
tNpcGossip[19790]["tOption4-2"] = {1}

--创意打造台
tNpcGossip[19807] = tNpcGossip[19807] or DefaultNpc:new{}
tNpcGossip[19807]["OptionHidden"] = 1
--活动时间前
tNpcGossip[19807]["tOption1-1"] = {1}
tNpcGossip[19807]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[19807]["Text111"] = tHouseLike_Text[19807]["Text111"]
tNpcGossip[19807]["Text112"] = tHouseLike_Text[19807]["Text112"]
tNpcGossip[19807]["Text113"] = tHouseLike_Text[19807]["Text113"]
tNpcGossip[19807]["Text114"] = tHouseLike_Text[19807]["Text114"]
tNpcGossip[19807]["Text115"] = tHouseLike_Text[19807]["Text115"]
tNpcGossip[19807]["Option1"] = tHouseLike_Text[19795]["Option6"]
tNpcGossip[19807]["ChkFunc1-1"] = function ()
	return CommonFunc_GetBeforeActivityTime(tHouseLike_Cont["ActivityTime"])
end
--活动时间后
tNpcGossip[19807]["tOption1-2"] = {2}
tNpcGossip[19807]["Text1-2"] = {121}
tNpcGossip[19807]["Text121"] = tHouseLike_Text[19807]["Text121"]
tNpcGossip[19807]["Option2"] = tHouseLike_Text[19795]["Option6"]
tNpcGossip[19807]["ChkFunc1-2"] = function ()
	return CommonFunc_GetAfterActivityTime(tHouseLike_Cont["ActivityTime"])
end

--活动时间内等级不足
tNpcGossip[19807]["Text1-3"] = {131,132,133,134,135}
tNpcGossip[19807]["tOption1-3"] = {3}
tNpcGossip[19807]["Text131"] = tHouseLike_Text[19807]["Text131"] 
tNpcGossip[19807]["Text132"] = tHouseLike_Text[19807]["Text132"]
tNpcGossip[19807]["Text133"] = tHouseLike_Text[19807]["Text113"]
tNpcGossip[19807]["Text134"] = tHouseLike_Text[19807]["Text114"]
tNpcGossip[19807]["Text135"] = tHouseLike_Text[19807]["Text115"]
tNpcGossip[19807]["Option3"] = tHouseLike_Text[19795]["Option3"]
tNpcGossip[19807]["ChkFunc1-3"] = function ()
	return HouseLike_JudgeLevel()
end

--活动时间内房屋等级不足
tNpcGossip[19807]["Text1-4"] = {131,132,133,134,135}
tNpcGossip[19807]["tOption1-4"] = {4}
tNpcGossip[19807]["Option4"] = tHouseLike_Text[19795]["Option4"]
tNpcGossip[19807]["ChkFunc1-4"] = function ()
	return HouseLike_JudgeHouseLevel()
end

--活动时间内
tNpcGossip[19807]["Text1-5"] = {131,132,133,134,135}
tNpcGossip[19807]["tOption1-5"] = {5,6,8,1}
tNpcGossip[19807]["Option5"] = tHouseLike_Text[19807]["Option5"]
tNpcGossip[19807]["Option6"] = tHouseLike_Text[19807]["Option6"]
tNpcGossip[19807]["Option8"] = tHouseLike_Text[19807]["Option8"]
tNpcGossip[19807]["OptionFunc5"] = "HouseLike_JudgeMaterial</N>19807</N>1"
tNpcGossip[19807]["OptionFunc6"] = "HouseLike_JudgeMaterial</N>19807</N>2"
tNpcGossip[19807]["OptionFunc7"] = "HouseLike_OpenShop</N>19807"
tNpcGossip[19807]["OptionPoint8"] = "8-1"
tNpcGossip[19807]["ChkFunc1-5"] = function ()
	return HouseLike_JudgeTimeAndLevel(19807)
end
tNpcGossip[19807]["Text8-1"] = {811,812,813,814,815,816,817}
tNpcGossip[19807]["Text811"] = tHouseLike_Text[19807]["Text811"]
tNpcGossip[19807]["Text812"] = tHouseLike_Text[19807]["Text812"]
tNpcGossip[19807]["Text813"] = tHouseLike_Text[19807]["Text813"]
tNpcGossip[19807]["Text814"] = tHouseLike_Text[19807]["Text814"]
tNpcGossip[19807]["Text815"] = tHouseLike_Text[19807]["Text815"]
tNpcGossip[19807]["Text816"] = tHouseLike_Text[19807]["Text816"]
tNpcGossip[19807]["Text817"] = tHouseLike_Text[19807]["Text817"]
tNpcGossip[19807]["tOption8-1"] = {1}

tNpcGossip[19807]["Text5-1"] = {511,512,513,514,515,516,517}
tNpcGossip[19807]["Text511"] = tHouseLike_Text[19807]["Text511"]
tNpcGossip[19807]["Text512"] = tHouseLike_Text[19807]["Text512"]
tNpcGossip[19807]["Text513"] = tHouseLike_Text[19807]["Text513"]
tNpcGossip[19807]["Text514"] = tHouseLike_Text[19807]["Text514"]
tNpcGossip[19807]["Text515"] = tHouseLike_Text[19807]["Text515"]
tNpcGossip[19807]["Text516"] = tHouseLike_Text[19807]["Text516"]
tNpcGossip[19807]["Text517"] = tHouseLike_Text[19807]["Text517"]
tNpcGossip[19807]["Text518"] = tHouseLike_Text[19807]["Text518"]
tNpcGossip[19807]["tOption5-1"] = {9,10,11,12,13,27}
tNpcGossip[19807]["Option9"] = tHouseLike_Text[19807]["Option9"]
tNpcGossip[19807]["OptionFunc9"]  = "HouseLike_MakeFurniture</N>19807</N>3301391</N>1"
tNpcGossip[19807]["Option10"] = tHouseLike_Text[19807]["Option10"]
tNpcGossip[19807]["OptionFunc10"]  = "HouseLike_MakeFurniture</N>19807</N>3301392</N>1"
tNpcGossip[19807]["Option11"] = tHouseLike_Text[19807]["Option11"]
tNpcGossip[19807]["OptionFunc11"]  = "HouseLike_MakeFurniture</N>19807</N>3301393</N>1"
tNpcGossip[19807]["Option12"] = tHouseLike_Text[19807]["Option12"]
tNpcGossip[19807]["OptionFunc12"]  = "HouseLike_MakeFurniture</N>19807</N>3301394</N>1"
tNpcGossip[19807]["Option13"] = tHouseLike_Text[19807]["Option13"]
tNpcGossip[19807]["OptionFunc13"]  = "HouseLike_MakeFurniture</N>19807</N>3301395</N>1"
tNpcGossip[19807]["Option27"] =  tHouseLike_Text[19807]["Option27"]
tNpcGossip[19807]["OptionPoint27"] = "1-5"
--打造物品不足
tNpcGossip[19807]["Text5-2"] = {521}
tNpcGossip[19807]["Text521"] = tHouseLike_Text[19807]["Text521"]
tNpcGossip[19807]["tOption5-2"] = {14,15}
tNpcGossip[19807]["Option14"] = tHouseLike_Text[19807]["Option14"]
tNpcGossip[19807]["OptionFunc14"] = "HouseLike_OpenShop</N>19807"
tNpcGossip[19807]["Option15"] = tHouseLike_Text[19807]["Option15"]

--打造失败获得气力值以及奖励
tNpcGossip[19807]["Text5-3"] = {531,532}
tNpcGossip[19807]["Text531"] = tHouseLike_Text[19807]["Text531"]
tNpcGossip[19807]["Text532"] = tHouseLike_Text[19807]["Text532"]
tNpcGossip[19807]["tOption5-3"] = {16}
tNpcGossip[19807]["Option16"] = tHouseLike_Text[19807]["Option16"]
tNpcGossip[19807]["OptionPoint16"] = "1-5"
--打造成功
tNpcGossip[19807]["Text5-4"] = {541,542,543,544,546,547}
tNpcGossip[19807]["Text541"] = tHouseLike_Text[19807]["Text541"]
tNpcGossip[19807]["Text542"] = tHouseLike_Text[19807]["Text542"]
tNpcGossip[19807]["Text543"] = tHouseLike_Text[19807]["Text543"]
tNpcGossip[19807]["Text544"] = tHouseLike_Text[19807]["Text544"]
tNpcGossip[19807]["Text545"] = tHouseLike_Text[19807]["Text545"]
tNpcGossip[19807]["Text546"] = tHouseLike_Text[19807]["Text546"]
tNpcGossip[19807]["Text547"] = tHouseLike_Text[19807]["Text547"]
tNpcGossip[19807]["tOption5-4"] = {17,18,1}                              
tNpcGossip[19807]["Option17"] = tHouseLike_Text[19807]["Option17"]
tNpcGossip[19807]["OptionFunc17"]  = "HouseLike_GetFurniture</N>19807</N>1"
tNpcGossip[19807]["Option18"] = tHouseLike_Text[19807]["Option18"]
tNpcGossip[19807]["OptionFunc18"]  = "HouseLike_Confirm</N>19807"
--取出失败
tNpcGossip[19807]["Text5-5"] = {551}
tNpcGossip[19807]["Text551"] = tHouseLike_Text[19807]["Text551"]
tNpcGossip[19807]["tOption5-5"] = {19}     
tNpcGossip[19807]["Option19"] = tHouseLike_Text[19807]["Option19"]

--拆解失败
tNpcGossip[19807]["Text5-6"] = {561}
tNpcGossip[19807]["Text561"] = tHouseLike_Text[19807]["Text561"]
tNpcGossip[19807]["tOption5-6"] = {19}     

--拆解二次确认
-- tNpcGossip[19807]["Text5-7"] = {571,572}
tNpcGossip[19807]["Text5-7"] = {571}
tNpcGossip[19807]["Text571"] = tHouseLike_Text[19807]["Text571"]
-- tNpcGossip[19807]["Text572"] = tHouseLike_Text[19807]["Text572"]
tNpcGossip[19807]["tOption5-7"] = {25,26}     
tNpcGossip[19807]["Option25"] = tHouseLike_Text[19807]["Option25"]
tNpcGossip[19807]["Option26"] = tHouseLike_Text[19807]["Option26"]
tNpcGossip[19807]["OptionFunc25"]  = "HouseLike_GetFurniture</N>19807</N>2"
--接打造高级
tNpcGossip[19807]["Text6-1"] = {611,612,613,614,615,616,617,618}
tNpcGossip[19807]["Text611"] = tHouseLike_Text[19807]["Text611"]
tNpcGossip[19807]["Text612"] = tHouseLike_Text[19807]["Text612"]
tNpcGossip[19807]["Text613"] = tHouseLike_Text[19807]["Text613"]
tNpcGossip[19807]["Text614"] = tHouseLike_Text[19807]["Text614"]
tNpcGossip[19807]["Text615"] = tHouseLike_Text[19807]["Text615"]
tNpcGossip[19807]["Text616"] = tHouseLike_Text[19807]["Text616"]
tNpcGossip[19807]["Text617"] = tHouseLike_Text[19807]["Text617"]
tNpcGossip[19807]["Text618"] = tHouseLike_Text[19807]["Text618"]
tNpcGossip[19807]["tOption6-1"] = {20,21,22,23,24,27}
tNpcGossip[19807]["Option20"] = tHouseLike_Text[19807]["Option20"]
tNpcGossip[19807]["OptionFunc20"]  = "HouseLike_MakeFurniture</N>19807</N>3301396</N>2"
tNpcGossip[19807]["Option21"] = tHouseLike_Text[19807]["Option21"]
tNpcGossip[19807]["OptionFunc21"]  = "HouseLike_MakeFurniture</N>19807</N>3301397</N>2"
tNpcGossip[19807]["Option22"] = tHouseLike_Text[19807]["Option22"]
tNpcGossip[19807]["OptionFunc22"]  = "HouseLike_MakeFurniture</N>19807</N>3301398</N>2"
tNpcGossip[19807]["Option23"] = tHouseLike_Text[19807]["Option23"]
tNpcGossip[19807]["OptionFunc23"]  = "HouseLike_MakeFurniture</N>19807</N>3301399</N>2"
tNpcGossip[19807]["Option24"] = tHouseLike_Text[19807]["Option24"]
tNpcGossip[19807]["OptionFunc24"]  = "HouseLike_MakeFurniture</N>19807</N>3301400</N>2"


--活动结束
tNpcGossip[19807]["Text9-1"] = {911}
tNpcGossip[19807]["Text911"] = tHouseLike_Text[19807]["Text911"]

---------------------使用家具--------------------------------------------------
--3301391   家具
tItem[3301391] = tItem[3301391] or {}
tItem[3301391]["Function"] = function(nItemId,sItemName)
	HouseLike_UseFurniture(nItemId,1)
end
tItem[3301392] = tItem[3301391]
tItem[3301393] = tItem[3301391]
tItem[3301394] = tItem[3301391]
tItem[3301395] = tItem[3301391]
tItem[3301396] = tItem[3301391]
tItem[3301397] = tItem[3301391]
tItem[3301398] = tItem[3301391]
tItem[3301399] = tItem[3301391]
tItem[3301400] = tItem[3301391]
tItem[3301401] = tItem[3301391]
tItem[3301402] = tItem[3301391]
tItem[3301403] = tItem[3301391]
tItem[3301404] = tItem[3301391]
tItem[3301405] = tItem[3301391]

tItem[3301286] = tItem[3301286] or {}
tItem[3301286]["Function"] = function(nItemId,sItemName)
	HouseLike_UseItem(nItemId)
end
tItem[3301287] = tItem[3301286] 
tItem[3301288] = tItem[3301286] 
tItem[3301289] = tItem[3301286] 
tItem[3301290] = tItem[3301286] 

--------------------------------------怪物模块-------------------------------------------
 -- local tHouseLike_MonsterDrop = {}
 -- tHouseLike_MonsterDrop["ActivityTime"] = tHouseLike_Cont["ActivityTime"]
 -- tHouseLike_MonsterDrop["Function"] = HouseLike_KillDemon
 -- tHouseLike_MonsterDrop["Area"] = {1,2,3,4,5,6,7,8,10,11}
 -- table.insert(tMonsterDrop_AreaLoad,tHouseLike_MonsterDrop)
 
 --------------------------------------时间自检-------------------------------------------

-- tOntimerMin_HM[0000] = tOntimerMin_HM[0000] or {}
-- table.insert(tOntimerMin_HM[0000],HouseLike_ClearRanking)

