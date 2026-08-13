------------------------------------------------------------------------------------
--Name：181129[简体征服][活动脚本]激情服打怪掉落相关修改
--Creator:兰冬梅
--Created:2018-11-29
------------------------------------------------------------------------------------
--logid:12001218
--lua.ini:41067


--53113:
--data0:区分新激情服
--宝箱奖励限量
--53114
--data0：优质宝石，单服每天限量3个，超出给良品宝石
--data1：龙珠，单服每天限量3个，超出给流星卷
--data2：赤炼石+5，单服每天限量3个，超出给赤炼石+3

--Stc:(186,66):限制每天开宝箱只能3次

local tSmallBestDrop_Cont={}
	--新服前7天标识
	tSmallBestDrop_Cont["Flag"] =0
	--抽奖数量
	tSmallBestDrop_Cont["ItemNum"] = 30
	--钥匙
	tSmallBestDrop_Cont["ItemId"] = 3311719
	--区分新老激情服
	tSmallBestDrop_Cont["GloablId"] = 51131
	
	--限量掩码
	tSmallBestDrop_Cont["LimitGloabl"] = {53114,53179,53180}
	
	tSmallBestDrop_Cont["NpcId"] = 23576
	--区分新老激情服
	tSmallBestDrop_Cont["Range"] = 1
	--光效
	tSmallBestDrop_Cont["Effect"] = "zf2-e128"
	
	--新服前7天
	tSmallBestDrop_Cont["ActivityTime"] = "2019-01-04 00:00 2019-01-10 23:59"
	
	--物品属性
	tSmallBestDrop_Cont["Attr"] = {}
	tSmallBestDrop_Cont["Attr"][0] = "0 1 0 0 0 0 0 %d 0 0 %d"
	tSmallBestDrop_Cont["Attr"][1] ="0 1 0 0 0 0 0 %d 0 0 %d %d"
	tSmallBestDrop_Cont["Attr"][2] ="0 1 0 0 0 0 0 %d 0 0 %d %d %d"
	--赠品
	tSmallBestDrop_Cont["GAttr"] = {}
	tSmallBestDrop_Cont["GAttr"][0] = "0 1 3 0 0 0 0 %d 0 0 %d"
	tSmallBestDrop_Cont["GAttr"][1] ="0 1 3 0 0 0 0 %d 0 0 %d %d"
	tSmallBestDrop_Cont["GAttr"][2] ="0 1 3 0 0 0 0 %d 0 0 %d %d %d"
	
	tSmallBestDrop_Cont["DynaNpc"]= {}
	tSmallBestDrop_Cont["DynaNpc"][1]={}
	tSmallBestDrop_Cont["DynaNpc"][1]["NpcName"]=tNoGiftMonster_Text["SmallBest"]["NpcName"][1]
	tSmallBestDrop_Cont["DynaNpc"][1]["Lookface"]=14550
	tSmallBestDrop_Cont["DynaNpc"][1]["ActionId"]=94487603
	tSmallBestDrop_Cont["DynaNpc"][1]["NpcId"]=23576
	tSmallBestDrop_Cont["DynaNpc"][2]={}
	tSmallBestDrop_Cont["DynaNpc"][2]["NpcName"]=tNoGiftMonster_Text["SmallBest"]["NpcName"][2]
	tSmallBestDrop_Cont["DynaNpc"][2]["Lookface"]=14560
	tSmallBestDrop_Cont["DynaNpc"][2]["ActionId"]=94487604
	tSmallBestDrop_Cont["DynaNpc"][2]["NpcId"]=23576
	tSmallBestDrop_Cont["DynaNpc"][3]={}
	tSmallBestDrop_Cont["DynaNpc"][3]["NpcName"]=tNoGiftMonster_Text["SmallBest"]["NpcName"][3]
	tSmallBestDrop_Cont["DynaNpc"][3]["Lookface"]=14570
	tSmallBestDrop_Cont["DynaNpc"][3]["ActionId"]=94487605
	tSmallBestDrop_Cont["DynaNpc"][3]["NpcId"]=23576
	tSmallBestDrop_Cont["DynaNpc"][4]={}
	tSmallBestDrop_Cont["DynaNpc"][4]["NpcName"]=tNoGiftMonster_Text["SmallBest"]["NpcName"][4]
	tSmallBestDrop_Cont["DynaNpc"][4]["Lookface"]=14580
	tSmallBestDrop_Cont["DynaNpc"][4]["ActionId"]=94487606
	tSmallBestDrop_Cont["DynaNpc"][4]["NpcId"]=23576
	
	
	local tSmallBestDrop_Log={}
	tSmallBestDrop_Log["MoveBox"]="0,%d,%d,%d,12001168,3[1],0,0" --刷新宝箱
	
	--小极品奖励log
	tSmallBestDrop_Log["SmallBest"] = {}
	tSmallBestDrop_Log["SmallBest"][0] ="%d,%d,0,0,12001168,3[2],%d,1"
	tSmallBestDrop_Log["SmallBest"][1] ="%d,%d,%d,%d,12001168,3[2],%d,1"
	tSmallBestDrop_Log["SmallBest"][2] ="%d,%d,%d,%d,12001168,3[2],%d,1"
	
	local tSmallBestDrop_Stc={}
	tSmallBestDrop_Stc[1]={}
	tSmallBestDrop_Stc[1]["EventType"] = 186
	tSmallBestDrop_Stc[1]["DataType"] = 66
	tSmallBestDrop_Stc[1]["MaxData"] = 3
--等级分类
	local tSmallBestDrop_Level={}
	tSmallBestDrop_Level[1]={1,79,"level1"}
	tSmallBestDrop_Level[2]={80,99,"level80"}
	tSmallBestDrop_Level[3]={100,109,"level100"}
	tSmallBestDrop_Level[4]={110,119,"level110"}
	tSmallBestDrop_Level[5]={120,129,"level120"}
	tSmallBestDrop_Level[6]={130,G_User_MaxLev,"level130"}

local tSmallBestDrop_Monster={}
	--追加等级
	tSmallBestDrop_Monster["Magic3"]={}
	tSmallBestDrop_Monster["Magic3"]["ItemChanceSum"]=10000
	tSmallBestDrop_Monster["Magic3"][1]={}
	tSmallBestDrop_Monster["Magic3"][1]["RandomItemChanceType"] = 2
	tSmallBestDrop_Monster["Magic3"][1]["ItemChance"] = 8000
	tSmallBestDrop_Monster["Magic3"][1]["Item_1"] = 1
	tSmallBestDrop_Monster["Magic3"][2]={}
	tSmallBestDrop_Monster["Magic3"][2]["RandomItemChanceType"] = 2
	tSmallBestDrop_Monster["Magic3"][2]["ItemChance"] =1800
	tSmallBestDrop_Monster["Magic3"][2]["Item_1"] = 2
	tSmallBestDrop_Monster["Magic3"][3]={}
	tSmallBestDrop_Monster["Magic3"][3]["RandomItemChanceType"] = 2
	tSmallBestDrop_Monster["Magic3"][3]["ItemChance"] = 200
	tSmallBestDrop_Monster["Magic3"][3]["Item_1"] = 3
	tSmallBestDrop_Monster["Magic3"][4]={}
	tSmallBestDrop_Monster["Magic3"][4]["RandomItemChanceType"] = 2
	tSmallBestDrop_Monster["Magic3"][4]["ItemChance"] = 0
	tSmallBestDrop_Monster["Magic3"][4]["Item_1"] = 4
	tSmallBestDrop_Monster["Magic3"][5]={}
	tSmallBestDrop_Monster["Magic3"][5]["RandomItemChanceType"] = 2
	tSmallBestDrop_Monster["Magic3"][5]["ItemChance"] = 0
	tSmallBestDrop_Monster["Magic3"][5]["Item_1"] = 5
	tSmallBestDrop_Monster["Magic3"][6]={}
	tSmallBestDrop_Monster["Magic3"][6]["RandomItemChanceType"] = 2
	tSmallBestDrop_Monster["Magic3"][6]["ItemChance"] = 0
	tSmallBestDrop_Monster["Magic3"][6]["Item_1"] = 6
	tSmallBestDrop_Monster["Magic3"][7]={}
	tSmallBestDrop_Monster["Magic3"][7]["RandomItemChanceType"] = 2
	tSmallBestDrop_Monster["Magic3"][7]["ItemChance"] = 0
	tSmallBestDrop_Monster["Magic3"][7]["Item_1"] = 7
	tSmallBestDrop_Monster["Magic3"][8]={}
	tSmallBestDrop_Monster["Magic3"][8]["RandomItemChanceType"] = 2
	tSmallBestDrop_Monster["Magic3"][8]["ItemChance"] = 0
	tSmallBestDrop_Monster["Magic3"][8]["Item_1"] = 8
	
	--神佑
	tSmallBestDrop_Monster["reduce_dmg"]={}
	tSmallBestDrop_Monster["reduce_dmg"]["weapon"]={}
	tSmallBestDrop_Monster["reduce_dmg"]["weapon"]["ItemChanceSum"]=10000
	tSmallBestDrop_Monster["reduce_dmg"]["weapon"][1]={}
	tSmallBestDrop_Monster["reduce_dmg"]["weapon"][1]["RandomItemChanceType"] = 2
	tSmallBestDrop_Monster["reduce_dmg"]["weapon"][1]["ItemChance"] = 7000
	tSmallBestDrop_Monster["reduce_dmg"]["weapon"][1]["Item_1"] =0
	tSmallBestDrop_Monster["reduce_dmg"]["weapon"][2]={}
	tSmallBestDrop_Monster["reduce_dmg"]["weapon"][2]["RandomItemChanceType"] = 2
	tSmallBestDrop_Monster["reduce_dmg"]["weapon"][2]["ItemChance"] = 3000
	tSmallBestDrop_Monster["reduce_dmg"]["weapon"][2]["Item_1"] =1
	
	tSmallBestDrop_Monster["reduce_dmg"]["clothes"]=tSmallBestDrop_Monster["reduce_dmg"]["weapon"]
	tSmallBestDrop_Monster["reduce_dmg"]["cap"]=tSmallBestDrop_Monster["reduce_dmg"]["weapon"]
	tSmallBestDrop_Monster["reduce_dmg"]["shield"]=tSmallBestDrop_Monster["reduce_dmg"]["weapon"]
	tSmallBestDrop_Monster["reduce_dmg"]["neck"]=tSmallBestDrop_Monster["reduce_dmg"]["weapon"]
	tSmallBestDrop_Monster["reduce_dmg"]["sachet"]=tSmallBestDrop_Monster["reduce_dmg"]["weapon"]
	tSmallBestDrop_Monster["reduce_dmg"]["ring"]=tSmallBestDrop_Monster["reduce_dmg"]["weapon"]
	tSmallBestDrop_Monster["reduce_dmg"]["bangle"]=tSmallBestDrop_Monster["reduce_dmg"]["weapon"]
	tSmallBestDrop_Monster["reduce_dmg"]["shoes"]=tSmallBestDrop_Monster["reduce_dmg"]["weapon"]
	
	--开洞
	tSmallBestDrop_Monster["gem"]={}
	--武器
	tSmallBestDrop_Monster["gem"]["weapon"]={}
	tSmallBestDrop_Monster["gem"]["weapon"]["ItemChanceSum"]=10000
	tSmallBestDrop_Monster["gem"]["weapon"][1]={}
	tSmallBestDrop_Monster["gem"]["weapon"][1]["RandomItemChanceType"] = 2
	tSmallBestDrop_Monster["gem"]["weapon"][1]["ItemChance"] = 7000
	tSmallBestDrop_Monster["gem"]["weapon"][1]["Item_1"] =0
	tSmallBestDrop_Monster["gem"]["weapon"][2]={}
	tSmallBestDrop_Monster["gem"]["weapon"][2]["RandomItemChanceType"] = 2
	tSmallBestDrop_Monster["gem"]["weapon"][2]["ItemChance"] = 2700
	tSmallBestDrop_Monster["gem"]["weapon"][2]["Item_1"] =1
	tSmallBestDrop_Monster["gem"]["weapon"][3]={}
	tSmallBestDrop_Monster["gem"]["weapon"][3]["RandomItemChanceType"] = 2
	tSmallBestDrop_Monster["gem"]["weapon"][3]["ItemChance"] = 300
	tSmallBestDrop_Monster["gem"]["weapon"][3]["Item_1"] =2
	
	--衣服
	tSmallBestDrop_Monster["gem"]["clothes"]={}
	tSmallBestDrop_Monster["gem"]["clothes"]["ItemChanceSum"]=10000
	tSmallBestDrop_Monster["gem"]["clothes"][1]={}
	tSmallBestDrop_Monster["gem"]["clothes"][1]["RandomItemChanceType"] = 2
	tSmallBestDrop_Monster["gem"]["clothes"][1]["ItemChance"] = 9300
	tSmallBestDrop_Monster["gem"]["clothes"][1]["Item_1"] =0
	tSmallBestDrop_Monster["gem"]["clothes"][2]={}
	tSmallBestDrop_Monster["gem"]["clothes"][2]["RandomItemChanceType"] = 2
	tSmallBestDrop_Monster["gem"]["clothes"][2]["ItemChance"] = 690
	tSmallBestDrop_Monster["gem"]["clothes"][2]["Item_1"] =1
	tSmallBestDrop_Monster["gem"]["clothes"][3]={}
	tSmallBestDrop_Monster["gem"]["clothes"][3]["RandomItemChanceType"] = 2
	tSmallBestDrop_Monster["gem"]["clothes"][3]["ItemChance"] = 10
	tSmallBestDrop_Monster["gem"]["clothes"][3]["Item_1"] =2
	tSmallBestDrop_Monster["gem"]["clothes"][3]["GlobalId"] = 53179
	tSmallBestDrop_Monster["gem"]["clothes"][3]["Pos"] = 0
	tSmallBestDrop_Monster["gem"]["clothes"][3]["MaxData"] = 3
	tSmallBestDrop_Monster["gem"]["clothes"][3]["FullIndex"] = 0
	--鞋子
	tSmallBestDrop_Monster["gem"]["shoes"]={}
	tSmallBestDrop_Monster["gem"]["shoes"]["ItemChanceSum"]=10000
	tSmallBestDrop_Monster["gem"]["shoes"][1]={}
	tSmallBestDrop_Monster["gem"]["shoes"][1]["RandomItemChanceType"] = 2
	tSmallBestDrop_Monster["gem"]["shoes"][1]["ItemChance"] = 9300
	tSmallBestDrop_Monster["gem"]["shoes"][1]["Item_1"] =0
	tSmallBestDrop_Monster["gem"]["shoes"][2]={}
	tSmallBestDrop_Monster["gem"]["shoes"][2]["RandomItemChanceType"] = 2
	tSmallBestDrop_Monster["gem"]["shoes"][2]["ItemChance"] = 690
	tSmallBestDrop_Monster["gem"]["shoes"][2]["Item_1"] =1
	tSmallBestDrop_Monster["gem"]["shoes"][3]={}
	tSmallBestDrop_Monster["gem"]["shoes"][3]["RandomItemChanceType"] = 2
	tSmallBestDrop_Monster["gem"]["shoes"][3]["ItemChance"] = 10
	tSmallBestDrop_Monster["gem"]["shoes"][3]["Item_1"] =2
	tSmallBestDrop_Monster["gem"]["shoes"][3]["GlobalId"] = 53180
	tSmallBestDrop_Monster["gem"]["shoes"][3]["Pos"] = 1
	tSmallBestDrop_Monster["gem"]["shoes"][3]["MaxData"] = 1
	tSmallBestDrop_Monster["gem"]["shoes"][3]["FullIndex"] = 0
	
	tSmallBestDrop_Monster["gem"]["cap"]=CommonFunc_Copy(tSmallBestDrop_Monster["gem"]["clothes"])
	tSmallBestDrop_Monster["gem"]["cap"][3]["GlobalId"] = 53179
	tSmallBestDrop_Monster["gem"]["cap"][3]["Pos"] = 1
	tSmallBestDrop_Monster["gem"]["cap"][3]["MaxData"] = 3
	tSmallBestDrop_Monster["gem"]["cap"][3]["FullIndex"] = 0
	tSmallBestDrop_Monster["gem"]["shield"]=CommonFunc_Copy(tSmallBestDrop_Monster["gem"]["clothes"])
	tSmallBestDrop_Monster["gem"]["shield"][3]["GlobalId"] = 53179
	tSmallBestDrop_Monster["gem"]["shield"][3]["Pos"] = 2
	tSmallBestDrop_Monster["gem"]["shield"][3]["MaxData"] = 1
	tSmallBestDrop_Monster["gem"]["shield"][3]["FullIndex"] = 0
	tSmallBestDrop_Monster["gem"]["neck"]=CommonFunc_Copy(tSmallBestDrop_Monster["gem"]["clothes"])
	tSmallBestDrop_Monster["gem"]["neck"][3]["GlobalId"] = 53179
	tSmallBestDrop_Monster["gem"]["neck"][3]["Pos"] = 3
	tSmallBestDrop_Monster["gem"]["neck"][3]["MaxData"] = 1
	tSmallBestDrop_Monster["gem"]["neck"][3]["FullIndex"] = 0
	tSmallBestDrop_Monster["gem"]["sachet"]=CommonFunc_Copy(tSmallBestDrop_Monster["gem"]["clothes"])
	tSmallBestDrop_Monster["gem"]["sachet"][3]["GlobalId"] = 53179
	tSmallBestDrop_Monster["gem"]["sachet"][3]["Pos"] = 4
	tSmallBestDrop_Monster["gem"]["sachet"][3]["MaxData"] = 1
	tSmallBestDrop_Monster["gem"]["sachet"][3]["FullIndex"] = 0
	tSmallBestDrop_Monster["gem"]["ring"]=CommonFunc_Copy(tSmallBestDrop_Monster["gem"]["clothes"])
	tSmallBestDrop_Monster["gem"]["ring"][3]["GlobalId"] = 53179
	tSmallBestDrop_Monster["gem"]["ring"][3]["Pos"] = 5
	tSmallBestDrop_Monster["gem"]["ring"][3]["MaxData"] = 1
	tSmallBestDrop_Monster["gem"]["ring"][3]["FullIndex"] = 0
	tSmallBestDrop_Monster["gem"]["bangle"]=CommonFunc_Copy(tSmallBestDrop_Monster["gem"]["clothes"])
	tSmallBestDrop_Monster["gem"]["bangle"][3]["GlobalId"] = 53180
	tSmallBestDrop_Monster["gem"]["bangle"][3]["Pos"] = 0
	tSmallBestDrop_Monster["gem"]["bangle"][3]["MaxData"] = 1
	tSmallBestDrop_Monster["gem"]["bangle"][3]["FullIndex"] = 0
	
	--宝石
	tSmallBestDrop_Monster["gemStone"]={}
	tSmallBestDrop_Monster["gemStone"]["ItemChanceSum"]=10000
	tSmallBestDrop_Monster["gemStone"][1]={}
	tSmallBestDrop_Monster["gemStone"][1]["RandomItemChanceType"] =2
	tSmallBestDrop_Monster["gemStone"][1]["ItemChance"] =1100
	tSmallBestDrop_Monster["gemStone"][1]["Item_1"] =042
	tSmallBestDrop_Monster["gemStone"][2]={}
	tSmallBestDrop_Monster["gemStone"][2]["RandomItemChanceType"] =2
	tSmallBestDrop_Monster["gemStone"][2]["ItemChance"] =1100
	tSmallBestDrop_Monster["gemStone"][2]["Item_1"] =032
	tSmallBestDrop_Monster["gemStone"][3]={}
	tSmallBestDrop_Monster["gemStone"][3]["RandomItemChanceType"] =2
	tSmallBestDrop_Monster["gemStone"][3]["ItemChance"] =1100
	tSmallBestDrop_Monster["gemStone"][3]["Item_1"] =022
	tSmallBestDrop_Monster["gemStone"][4]={}
	tSmallBestDrop_Monster["gemStone"][4]["RandomItemChanceType"] =2
	tSmallBestDrop_Monster["gemStone"][4]["ItemChance"] =1100
	tSmallBestDrop_Monster["gemStone"][4]["Item_1"] =012
	tSmallBestDrop_Monster["gemStone"][5]={}
	tSmallBestDrop_Monster["gemStone"][5]["RandomItemChanceType"] =2
	tSmallBestDrop_Monster["gemStone"][5]["ItemChance"] =1100
	tSmallBestDrop_Monster["gemStone"][5]["Item_1"] =002
	tSmallBestDrop_Monster["gemStone"][6]={}
	tSmallBestDrop_Monster["gemStone"][6]["RandomItemChanceType"] =2
	tSmallBestDrop_Monster["gemStone"][6]["ItemChance"] =1100
	tSmallBestDrop_Monster["gemStone"][6]["Item_1"] =052
	tSmallBestDrop_Monster["gemStone"][7]={}
	tSmallBestDrop_Monster["gemStone"][7]["RandomItemChanceType"] =2
	tSmallBestDrop_Monster["gemStone"][7]["ItemChance"] =1100
	tSmallBestDrop_Monster["gemStone"][7]["Item_1"] =062
	tSmallBestDrop_Monster["gemStone"][8]={}
	tSmallBestDrop_Monster["gemStone"][8]["RandomItemChanceType"] =2
	tSmallBestDrop_Monster["gemStone"][8]["ItemChance"] =1100
	tSmallBestDrop_Monster["gemStone"][8]["Item_1"] =072
	tSmallBestDrop_Monster["gemStone"][9]={}
	tSmallBestDrop_Monster["gemStone"][9]["RandomItemChanceType"] =2
	tSmallBestDrop_Monster["gemStone"][9]["ItemChance"] =150
	tSmallBestDrop_Monster["gemStone"][9]["Item_1"] =043
	tSmallBestDrop_Monster["gemStone"][10]={}
	tSmallBestDrop_Monster["gemStone"][10]["RandomItemChanceType"] =2
	tSmallBestDrop_Monster["gemStone"][10]["ItemChance"] =150
	tSmallBestDrop_Monster["gemStone"][10]["Item_1"] =033
	tSmallBestDrop_Monster["gemStone"][11]={}
	tSmallBestDrop_Monster["gemStone"][11]["RandomItemChanceType"] =2
	tSmallBestDrop_Monster["gemStone"][11]["ItemChance"] =150
	tSmallBestDrop_Monster["gemStone"][11]["Item_1"] =023
	tSmallBestDrop_Monster["gemStone"][12]={}
	tSmallBestDrop_Monster["gemStone"][12]["RandomItemChanceType"] =2
	tSmallBestDrop_Monster["gemStone"][12]["ItemChance"] =150
	tSmallBestDrop_Monster["gemStone"][12]["Item_1"] =013
	tSmallBestDrop_Monster["gemStone"][13]={}
	tSmallBestDrop_Monster["gemStone"][13]["RandomItemChanceType"] =2
	tSmallBestDrop_Monster["gemStone"][13]["ItemChance"] =150
	tSmallBestDrop_Monster["gemStone"][13]["Item_1"] =003
	tSmallBestDrop_Monster["gemStone"][14]={}
	tSmallBestDrop_Monster["gemStone"][14]["RandomItemChanceType"] =2
	tSmallBestDrop_Monster["gemStone"][14]["ItemChance"] =150
	tSmallBestDrop_Monster["gemStone"][14]["Item_1"] =053
	tSmallBestDrop_Monster["gemStone"][15]={}
	tSmallBestDrop_Monster["gemStone"][15]["RandomItemChanceType"] =2
	tSmallBestDrop_Monster["gemStone"][15]["ItemChance"] =150
	tSmallBestDrop_Monster["gemStone"][15]["Item_1"] =063
	tSmallBestDrop_Monster["gemStone"][16]={}
	tSmallBestDrop_Monster["gemStone"][16]["RandomItemChanceType"] =2
	tSmallBestDrop_Monster["gemStone"][16]["ItemChance"] =150
	tSmallBestDrop_Monster["gemStone"][16]["Item_1"] =073
	--装备类别
	tSmallBestDrop_Monster["level1"]={}
	tSmallBestDrop_Monster["level1"]["ItemChanceSum"]=10000
	tSmallBestDrop_Monster["level1"][1]={}
	tSmallBestDrop_Monster["level1"][1]["RandomItemChanceType"] = 2
	tSmallBestDrop_Monster["level1"][1]["ItemChance"] = 4100
	tSmallBestDrop_Monster["level1"][1]["Item_1"] = "weapon"
	tSmallBestDrop_Monster["level1"][2]={}
	tSmallBestDrop_Monster["level1"][2]["RandomItemChanceType"] = 2
	tSmallBestDrop_Monster["level1"][2]["ItemChance"] = 2000
	tSmallBestDrop_Monster["level1"][2]["Item_1"] = "clothes"
	tSmallBestDrop_Monster["level1"][3]={}
	tSmallBestDrop_Monster["level1"][3]["RandomItemChanceType"] = 2
	tSmallBestDrop_Monster["level1"][3]["ItemChance"] = 2000
	tSmallBestDrop_Monster["level1"][3]["Item_1"] = "cap"
	tSmallBestDrop_Monster["level1"][4]={}
	tSmallBestDrop_Monster["level1"][4]["RandomItemChanceType"] = 2
	tSmallBestDrop_Monster["level1"][4]["ItemChance"] = 200
	tSmallBestDrop_Monster["level1"][4]["Item_1"] = "shield"
	tSmallBestDrop_Monster["level1"][5]={}
	tSmallBestDrop_Monster["level1"][5]["RandomItemChanceType"] = 2
	tSmallBestDrop_Monster["level1"][5]["ItemChance"] = 400
	tSmallBestDrop_Monster["level1"][5]["Item_1"] = "neck"
	tSmallBestDrop_Monster["level1"][6]={}
	tSmallBestDrop_Monster["level1"][6]["RandomItemChanceType"] = 2
	tSmallBestDrop_Monster["level1"][6]["ItemChance"] = 200
	tSmallBestDrop_Monster["level1"][6]["Item_1"] = "sachet"
	tSmallBestDrop_Monster["level1"][7]={}
	tSmallBestDrop_Monster["level1"][7]["RandomItemChanceType"] = 2
	tSmallBestDrop_Monster["level1"][7]["ItemChance"] = 400
	tSmallBestDrop_Monster["level1"][7]["Item_1"] = "ring"
	tSmallBestDrop_Monster["level1"][8]={}
	tSmallBestDrop_Monster["level1"][8]["RandomItemChanceType"] = 2
	tSmallBestDrop_Monster["level1"][8]["ItemChance"] = 200
	tSmallBestDrop_Monster["level1"][8]["Item_1"] = "bangle"
	tSmallBestDrop_Monster["level1"][9]={}
	tSmallBestDrop_Monster["level1"][9]["RandomItemChanceType"] = 2
	tSmallBestDrop_Monster["level1"][9]["ItemChance"] = 500
	tSmallBestDrop_Monster["level1"][9]["Item_1"] = "shoes"
	
	tSmallBestDrop_Monster["level100"]=tSmallBestDrop_Monster["level1"]
	tSmallBestDrop_Monster["level80"]=tSmallBestDrop_Monster["level1"]
	tSmallBestDrop_Monster["level110"]=tSmallBestDrop_Monster["level1"]
	tSmallBestDrop_Monster["level120"]=tSmallBestDrop_Monster["level1"]
	tSmallBestDrop_Monster["level130"]=tSmallBestDrop_Monster["level1"]
	
local tSmallBestDrop_Reward={}
	tSmallBestDrop_Reward["level1"]={}
	--1~79级武器
	tSmallBestDrop_Reward["level1"]["weapon"]={}
	tSmallBestDrop_Reward["level1"]["weapon"]["ItemChanceSum"]=4100
	tSmallBestDrop_Reward["level1"]["weapon"][1]={}
	tSmallBestDrop_Reward["level1"]["weapon"][1]["RandomItemChanceType"] = 2
	tSmallBestDrop_Reward["level1"]["weapon"][1]["ItemChance"] =270
	tSmallBestDrop_Reward["level1"]["weapon"][1]["Item_1"] =410110
	tSmallBestDrop_Reward["level1"]["weapon"][2]={}
	tSmallBestDrop_Reward["level1"]["weapon"][2]["RandomItemChanceType"] = 2
	tSmallBestDrop_Reward["level1"]["weapon"][2]["ItemChance"] =270
	tSmallBestDrop_Reward["level1"]["weapon"][2]["Item_1"] =420110
	tSmallBestDrop_Reward["level1"]["weapon"][3]={}
	tSmallBestDrop_Reward["level1"]["weapon"][3]["RandomItemChanceType"] = 2
	tSmallBestDrop_Reward["level1"]["weapon"][3]["ItemChance"] =270
	tSmallBestDrop_Reward["level1"]["weapon"][3]["Item_1"] =480110
	tSmallBestDrop_Reward["level1"]["weapon"][4]={}
	tSmallBestDrop_Reward["level1"]["weapon"][4]["RandomItemChanceType"] = 2
	tSmallBestDrop_Reward["level1"]["weapon"][4]["ItemChance"] =270
	tSmallBestDrop_Reward["level1"]["weapon"][4]["Item_1"] =490110
	tSmallBestDrop_Reward["level1"]["weapon"][5]={}
	tSmallBestDrop_Reward["level1"]["weapon"][5]["RandomItemChanceType"] = 2
	tSmallBestDrop_Reward["level1"]["weapon"][5]["ItemChance"] =150
	tSmallBestDrop_Reward["level1"]["weapon"][5]["Item_1"] =560110
	tSmallBestDrop_Reward["level1"]["weapon"][6]={}
	tSmallBestDrop_Reward["level1"]["weapon"][6]["RandomItemChanceType"] = 2
	tSmallBestDrop_Reward["level1"]["weapon"][6]["ItemChance"] =150
	tSmallBestDrop_Reward["level1"]["weapon"][6]["Item_1"] =561110
	tSmallBestDrop_Reward["level1"]["weapon"][7]={}
	tSmallBestDrop_Reward["level1"]["weapon"][7]["RandomItemChanceType"] = 2
	tSmallBestDrop_Reward["level1"]["weapon"][7]["ItemChance"] =270
	tSmallBestDrop_Reward["level1"]["weapon"][7]["Item_1"] =624110
	tSmallBestDrop_Reward["level1"]["weapon"][8]={}
	tSmallBestDrop_Reward["level1"]["weapon"][8]["RandomItemChanceType"] = 2
	tSmallBestDrop_Reward["level1"]["weapon"][8]["ItemChance"] =150
	tSmallBestDrop_Reward["level1"]["weapon"][8]["Item_1"] =421120
	tSmallBestDrop_Reward["level1"]["weapon"][9]={}
	tSmallBestDrop_Reward["level1"]["weapon"][9]["RandomItemChanceType"] = 2
	tSmallBestDrop_Reward["level1"]["weapon"][9]["ItemChance"] =40
	tSmallBestDrop_Reward["level1"]["weapon"][9]["Item_1"] =619110
	tSmallBestDrop_Reward["level1"]["weapon"][10]={}
	tSmallBestDrop_Reward["level1"]["weapon"][10]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level1"]["weapon"][10]["ItemChance"] =150
	tSmallBestDrop_Reward["level1"]["weapon"][10]["Item_1"] =500100
	tSmallBestDrop_Reward["level1"]["weapon"][11]={}
	tSmallBestDrop_Reward["level1"]["weapon"][11]["RandomItemChanceType"] = 2
	tSmallBestDrop_Reward["level1"]["weapon"][11]["ItemChance"] =270
	tSmallBestDrop_Reward["level1"]["weapon"][11] ["Item_1"] =613100
	tSmallBestDrop_Reward["level1"]["weapon"][12]={}
	tSmallBestDrop_Reward["level1"]["weapon"][12]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level1"]["weapon"][12]["ItemChance"] =150
	tSmallBestDrop_Reward["level1"]["weapon"][12]["Item_1"] =511110
	tSmallBestDrop_Reward["level1"]["weapon"][13]={}
	tSmallBestDrop_Reward["level1"]["weapon"][13]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level1"]["weapon"][13]["ItemChance"] =270
	tSmallBestDrop_Reward["level1"]["weapon"][13]["Item_1"] =601110
	tSmallBestDrop_Reward["level1"]["weapon"][14]={}
	tSmallBestDrop_Reward["level1"]["weapon"][14]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level1"]["weapon"][14]["ItemChance"] =270
	tSmallBestDrop_Reward["level1"]["weapon"][14]["Item_1"] =610110
	tSmallBestDrop_Reward["level1"]["weapon"][15]={}
	tSmallBestDrop_Reward["level1"]["weapon"][15]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level1"]["weapon"][15]["ItemChance"] =150
	tSmallBestDrop_Reward["level1"]["weapon"][15]["Item_1"] =611110
	tSmallBestDrop_Reward["level1"]["weapon"][16]={}
	tSmallBestDrop_Reward["level1"]["weapon"][16]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level1"]["weapon"][16]["ItemChance"] =150
	tSmallBestDrop_Reward["level1"]["weapon"][16]["Item_1"] =612110
	tSmallBestDrop_Reward["level1"]["weapon"][17]={}
	tSmallBestDrop_Reward["level1"]["weapon"][17]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level1"]["weapon"][17]["ItemChance"] =270
	tSmallBestDrop_Reward["level1"]["weapon"][17]["Item_1"] =617110
	tSmallBestDrop_Reward["level1"]["weapon"][18]={}
	tSmallBestDrop_Reward["level1"]["weapon"][18]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level1"]["weapon"][18]["ItemChance"] =270
	tSmallBestDrop_Reward["level1"]["weapon"][18]["Item_1"] =626110
	tSmallBestDrop_Reward["level1"]["weapon"][19] = {}
	tSmallBestDrop_Reward["level1"]["weapon"][19]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level1"]["weapon"][19]["ItemChance"] =150
	tSmallBestDrop_Reward["level1"]["weapon"][19]["Item_1"] =681110
	tSmallBestDrop_Reward["level1"]["weapon"][20] = {}
	tSmallBestDrop_Reward["level1"]["weapon"][20]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level1"]["weapon"][20]["ItemChance"] =150
	tSmallBestDrop_Reward["level1"]["weapon"][20]["Item_1"] =680110
	tSmallBestDrop_Reward["level1"]["weapon"][21]={}
	tSmallBestDrop_Reward["level1"]["weapon"][21]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level1"]["weapon"][21]["ItemChance"] =3
	tSmallBestDrop_Reward["level1"]["weapon"][21]["Item_1"] =614110
	tSmallBestDrop_Reward["level1"]["weapon"][22]={}
	tSmallBestDrop_Reward["level1"]["weapon"][22]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level1"]["weapon"][22]["ItemChance"] =2
	tSmallBestDrop_Reward["level1"]["weapon"][22]["Item_1"] =616110
	tSmallBestDrop_Reward["level1"]["weapon"][23]={}
	tSmallBestDrop_Reward["level1"]["weapon"][23]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level1"]["weapon"][23]["ItemChance"] =1
	tSmallBestDrop_Reward["level1"]["weapon"][23]["Item_1"] =620120
	tSmallBestDrop_Reward["level1"]["weapon"][24]={}
	tSmallBestDrop_Reward["level1"]["weapon"][24]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level1"]["weapon"][24]["ItemChance"] =2
	tSmallBestDrop_Reward["level1"]["weapon"][24]["Item_1"] =622110
	tSmallBestDrop_Reward["level1"]["weapon"][25]={}
	tSmallBestDrop_Reward["level1"]["weapon"][25]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level1"]["weapon"][25]["ItemChance"] =1
	tSmallBestDrop_Reward["level1"]["weapon"][25]["Item_1"] =670110
	tSmallBestDrop_Reward["level1"]["weapon"][26]={}
	tSmallBestDrop_Reward["level1"]["weapon"][26]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level1"]["weapon"][26]["ItemChance"] =1
	tSmallBestDrop_Reward["level1"]["weapon"][26]["Item_1"] =671110

	--1~79级衣服
	tSmallBestDrop_Reward["level1"]["clothes"]={}
	tSmallBestDrop_Reward["level1"]["clothes"]["ItemChanceSum"]=2000
	tSmallBestDrop_Reward["level1"]["clothes"][1]={}
	tSmallBestDrop_Reward["level1"]["clothes"][1]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level1"]["clothes"][1]["ItemChance"] =200
	tSmallBestDrop_Reward["level1"]["clothes"][1]["Item_1"] =130060
	tSmallBestDrop_Reward["level1"]["clothes"][2]={}
	tSmallBestDrop_Reward["level1"]["clothes"][2]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level1"]["clothes"][2]["ItemChance"] =200
	tSmallBestDrop_Reward["level1"]["clothes"][2]["Item_1"] =131060
	tSmallBestDrop_Reward["level1"]["clothes"][3]={}
	tSmallBestDrop_Reward["level1"]["clothes"][3]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level1"]["clothes"][3]["ItemChance"] =200
	tSmallBestDrop_Reward["level1"]["clothes"][3]["Item_1"] =133040
	tSmallBestDrop_Reward["level1"]["clothes"][4]={}
	tSmallBestDrop_Reward["level1"]["clothes"][4]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level1"]["clothes"][4]["ItemChance"] =200
	tSmallBestDrop_Reward["level1"]["clothes"][4]["Item_1"] =134060
	tSmallBestDrop_Reward["level1"]["clothes"][5]={}
	tSmallBestDrop_Reward["level1"]["clothes"][5]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level1"]["clothes"][5]["ItemChance"] =200
	tSmallBestDrop_Reward["level1"]["clothes"][5]["Item_1"] =135060
	tSmallBestDrop_Reward["level1"]["clothes"][6]={}
	tSmallBestDrop_Reward["level1"]["clothes"][6]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level1"]["clothes"][6]["ItemChance"] =200
	tSmallBestDrop_Reward["level1"]["clothes"][6]["Item_1"] =136060
	tSmallBestDrop_Reward["level1"]["clothes"][7]={}
	tSmallBestDrop_Reward["level1"]["clothes"][7]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level1"]["clothes"][7]["ItemChance"] =200
	tSmallBestDrop_Reward["level1"]["clothes"][7]["Item_1"] =139060
	tSmallBestDrop_Reward["level1"]["clothes"][8]={}
	tSmallBestDrop_Reward["level1"]["clothes"][8]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level1"]["clothes"][8]["ItemChance"] =200
	tSmallBestDrop_Reward["level1"]["clothes"][8]["Item_1"] =138060
	tSmallBestDrop_Reward["level1"]["clothes"][9]={}
	tSmallBestDrop_Reward["level1"]["clothes"][9]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level1"]["clothes"][9]["ItemChance"] =200
	tSmallBestDrop_Reward["level1"]["clothes"][9]["Item_1"] =101060
	tSmallBestDrop_Reward["level1"]["clothes"][10]={}
	tSmallBestDrop_Reward["level1"]["clothes"][10]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level1"]["clothes"][10]["ItemChance"] =200
	tSmallBestDrop_Reward["level1"]["clothes"][10]["Item_1"] =102060
	
	
	--1~79级帽子
	tSmallBestDrop_Reward["level1"]["cap"]={}
	tSmallBestDrop_Reward["level1"]["cap"]["ItemChanceSum"]=2000
	tSmallBestDrop_Reward["level1"]["cap"][1]={}
	tSmallBestDrop_Reward["level1"]["cap"][1]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level1"]["cap"][1]["ItemChance"] =182
	tSmallBestDrop_Reward["level1"]["cap"][1]["Item_1"] =118060
	tSmallBestDrop_Reward["level1"]["cap"][2]={}
	tSmallBestDrop_Reward["level1"]["cap"][2]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level1"]["cap"][2]["ItemChance"] =182
	tSmallBestDrop_Reward["level1"]["cap"][2]["Item_1"] =141060
	tSmallBestDrop_Reward["level1"]["cap"][3]={}
	tSmallBestDrop_Reward["level1"]["cap"][3]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level1"]["cap"][3]["ItemChance"] =182
	tSmallBestDrop_Reward["level1"]["cap"][3]["Item_1"] =142030
	tSmallBestDrop_Reward["level1"]["cap"][4]={}
	tSmallBestDrop_Reward["level1"]["cap"][4]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level1"]["cap"][4]["ItemChance"] =182
	tSmallBestDrop_Reward["level1"]["cap"][4]["Item_1"] =117060
	tSmallBestDrop_Reward["level1"]["cap"][5]={}
	tSmallBestDrop_Reward["level1"]["cap"][5]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level1"]["cap"][5]["ItemChance"] =182
	tSmallBestDrop_Reward["level1"]["cap"][5]["Item_1"] =123060
	tSmallBestDrop_Reward["level1"]["cap"][6]={}
	tSmallBestDrop_Reward["level1"]["cap"][6]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level1"]["cap"][6]["ItemChance"] =182
	tSmallBestDrop_Reward["level1"]["cap"][6]["Item_1"] =143060
	tSmallBestDrop_Reward["level1"]["cap"][7]={}
	tSmallBestDrop_Reward["level1"]["cap"][7]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level1"]["cap"][7]["ItemChance"] =182
	tSmallBestDrop_Reward["level1"]["cap"][7]["Item_1"] =145060
	tSmallBestDrop_Reward["level1"]["cap"][8]={}
	tSmallBestDrop_Reward["level1"]["cap"][8]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level1"]["cap"][8]["ItemChance"] =182
	tSmallBestDrop_Reward["level1"]["cap"][8]["Item_1"] =148060
	tSmallBestDrop_Reward["level1"]["cap"][9]={}
	tSmallBestDrop_Reward["level1"]["cap"][9]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level1"]["cap"][9]["ItemChance"] =182
	tSmallBestDrop_Reward["level1"]["cap"][9]["Item_1"] =170060
	tSmallBestDrop_Reward["level1"]["cap"][10]={}
	tSmallBestDrop_Reward["level1"]["cap"][10]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level1"]["cap"][10]["ItemChance"] =182
	tSmallBestDrop_Reward["level1"]["cap"][10]["Item_1"] =146060
	tSmallBestDrop_Reward["level1"]["cap"][11]={}
	tSmallBestDrop_Reward["level1"]["cap"][11]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level1"]["cap"][11]["ItemChance"] =180
	tSmallBestDrop_Reward["level1"]["cap"][11]["Item_1"] =147060
	
	--1~79级盾牌
	tSmallBestDrop_Reward["level1"]["shield"]={}
	tSmallBestDrop_Reward["level1"]["shield"]["ItemChanceSum"]=200
	tSmallBestDrop_Reward["level1"]["shield"][1]={}
	tSmallBestDrop_Reward["level1"]["shield"][1]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level1"]["shield"][1]["ItemChance"] =200
	tSmallBestDrop_Reward["level1"]["shield"][1]["Item_1"] =900040
	--1~79级项链
	tSmallBestDrop_Reward["level1"]["neck"]={}
	tSmallBestDrop_Reward["level1"]["neck"]["ItemChanceSum"]=400
	tSmallBestDrop_Reward["level1"]["neck"][1]={}
	tSmallBestDrop_Reward["level1"]["neck"][1]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level1"]["neck"][1]["ItemChance"] =400
	tSmallBestDrop_Reward["level1"]["neck"][1]["Item_1"] =120120
	--1~79级香囊
	tSmallBestDrop_Reward["level1"]["sachet"]={}
	tSmallBestDrop_Reward["level1"]["sachet"]["ItemChanceSum"]=200
	tSmallBestDrop_Reward["level1"]["sachet"][1]={}
	tSmallBestDrop_Reward["level1"]["sachet"][1]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level1"]["sachet"][1]["ItemChance"] =200
	tSmallBestDrop_Reward["level1"]["sachet"][1]["Item_1"] =121120
	--1~79级戒指
	tSmallBestDrop_Reward["level1"]["ring"]={}
	tSmallBestDrop_Reward["level1"]["ring"]["ItemChanceSum"]=400
	tSmallBestDrop_Reward["level1"]["ring"][1]={}
	tSmallBestDrop_Reward["level1"]["ring"][1]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level1"]["ring"][1]["ItemChance"] =400
	tSmallBestDrop_Reward["level1"]["ring"][1]["Item_1"] =150110
	--1~79级手镯
	tSmallBestDrop_Reward["level1"]["bangle"]={}
	tSmallBestDrop_Reward["level1"]["bangle"]["ItemChanceSum"]=200
	tSmallBestDrop_Reward["level1"]["bangle"][1]={}
	tSmallBestDrop_Reward["level1"]["bangle"][1]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level1"]["bangle"][1]["ItemChance"] =200
	tSmallBestDrop_Reward["level1"]["bangle"][1]["Item_1"] =152120
	--1~79级靴子
	tSmallBestDrop_Reward["level1"]["shoes"]={}
	tSmallBestDrop_Reward["level1"]["shoes"]["ItemChanceSum"]=500
	tSmallBestDrop_Reward["level1"]["shoes"][1]={}
	tSmallBestDrop_Reward["level1"]["shoes"][1]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level1"]["shoes"][1]["ItemChance"] =500
	tSmallBestDrop_Reward["level1"]["shoes"][1]["Item_1"] =160110
	
	tSmallBestDrop_Reward["level80"]={}
	--80~99级武器
	tSmallBestDrop_Reward["level80"]["weapon"]={}
	tSmallBestDrop_Reward["level80"]["weapon"]["ItemChanceSum"]=4100
	tSmallBestDrop_Reward["level80"]["weapon"][1]={}
	tSmallBestDrop_Reward["level80"]["weapon"][1]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level80"]["weapon"][1]["ItemChance"] =270
	tSmallBestDrop_Reward["level80"]["weapon"][1]["Item_1"] =410150
	tSmallBestDrop_Reward["level80"]["weapon"][2]={}
	tSmallBestDrop_Reward["level80"]["weapon"][2]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level80"]["weapon"][2]["ItemChance"] =270
	tSmallBestDrop_Reward["level80"]["weapon"][2]["Item_1"] =420150
	tSmallBestDrop_Reward["level80"]["weapon"][3]={}
	tSmallBestDrop_Reward["level80"]["weapon"][3]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level80"]["weapon"][3]["ItemChance"] =270
	tSmallBestDrop_Reward["level80"]["weapon"][3]["Item_1"] =480150
	tSmallBestDrop_Reward["level80"]["weapon"][4]={}
	tSmallBestDrop_Reward["level80"]["weapon"][4]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level80"]["weapon"][4]["ItemChance"] =270
	tSmallBestDrop_Reward["level80"]["weapon"][4]["Item_1"] =490150
	tSmallBestDrop_Reward["level80"]["weapon"][5]={}
	tSmallBestDrop_Reward["level80"]["weapon"][5]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level80"]["weapon"][5]["ItemChance"] =150
	tSmallBestDrop_Reward["level80"]["weapon"][5]["Item_1"] =560150
	tSmallBestDrop_Reward["level80"]["weapon"][6]={}
	tSmallBestDrop_Reward["level80"]["weapon"][6]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level80"]["weapon"][6]["ItemChance"] =150
	tSmallBestDrop_Reward["level80"]["weapon"][6]["Item_1"] =561150
	tSmallBestDrop_Reward["level80"]["weapon"][7]={}
	tSmallBestDrop_Reward["level80"]["weapon"][7]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level80"]["weapon"][7]["ItemChance"] =270
	tSmallBestDrop_Reward["level80"]["weapon"][7]["Item_1"] =624150
	tSmallBestDrop_Reward["level80"]["weapon"][8]={}
	tSmallBestDrop_Reward["level80"]["weapon"][8]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level80"]["weapon"][8]["ItemChance"] =150
	tSmallBestDrop_Reward["level80"]["weapon"][8]["Item_1"] =421150
	tSmallBestDrop_Reward["level80"]["weapon"][9]={}
	tSmallBestDrop_Reward["level80"]["weapon"][9]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level80"]["weapon"][9]["ItemChance"] =40
	tSmallBestDrop_Reward["level80"]["weapon"][9]["Item_1"] =619150
	tSmallBestDrop_Reward["level80"]["weapon"][10]={}
	tSmallBestDrop_Reward["level80"]["weapon"][10]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level80"]["weapon"][10]["ItemChance"] =150
	tSmallBestDrop_Reward["level80"]["weapon"][10]["Item_1"] =500140
	tSmallBestDrop_Reward["level80"]["weapon"][11]={}
	tSmallBestDrop_Reward["level80"]["weapon"][11]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level80"]["weapon"][11]["ItemChance"] =270
	tSmallBestDrop_Reward["level80"]["weapon"][11]["Item_1"] =613140
	tSmallBestDrop_Reward["level80"]["weapon"][12]={}
	tSmallBestDrop_Reward["level80"]["weapon"][12]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level80"]["weapon"][12]["ItemChance"] =150
	tSmallBestDrop_Reward["level80"]["weapon"][12]["Item_1"] =511150
	tSmallBestDrop_Reward["level80"]["weapon"][13]={}
	tSmallBestDrop_Reward["level80"]["weapon"][13]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level80"]["weapon"][13]["ItemChance"] =270
	tSmallBestDrop_Reward["level80"]["weapon"][13]["Item_1"] =601150
	tSmallBestDrop_Reward["level80"]["weapon"][14]={}
	tSmallBestDrop_Reward["level80"]["weapon"][14]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level80"]["weapon"][14]["ItemChance"] =270
	tSmallBestDrop_Reward["level80"]["weapon"][14]["Item_1"] =610150
	tSmallBestDrop_Reward["level80"]["weapon"][15]={}
	tSmallBestDrop_Reward["level80"]["weapon"][15]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level80"]["weapon"][15]["ItemChance"] =150
	tSmallBestDrop_Reward["level80"]["weapon"][15]["Item_1"] =611150
	tSmallBestDrop_Reward["level80"]["weapon"][16]={}
	tSmallBestDrop_Reward["level80"]["weapon"][16]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level80"]["weapon"][16]["ItemChance"] =150
	tSmallBestDrop_Reward["level80"]["weapon"][16]["Item_1"] =612150
	tSmallBestDrop_Reward["level80"]["weapon"][17]={}
	tSmallBestDrop_Reward["level80"]["weapon"][17]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level80"]["weapon"][17]["ItemChance"] =270
	tSmallBestDrop_Reward["level80"]["weapon"][17]["Item_1"] =617150
	tSmallBestDrop_Reward["level80"]["weapon"][18]={}
	tSmallBestDrop_Reward["level80"]["weapon"][18]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level80"]["weapon"][18]["ItemChance"] =270
	tSmallBestDrop_Reward["level80"]["weapon"][18]["Item_1"] =626150
	tSmallBestDrop_Reward["level80"]["weapon"][19]={}
	tSmallBestDrop_Reward["level80"]["weapon"][19]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level80"]["weapon"][19]["ItemChance"] =150
	tSmallBestDrop_Reward["level80"]["weapon"][19]["Item_1"] =681150
	tSmallBestDrop_Reward["level80"]["weapon"][20]={}
	tSmallBestDrop_Reward["level80"]["weapon"][20]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level80"]["weapon"][20]["ItemChance"] =150
	tSmallBestDrop_Reward["level80"]["weapon"][20]["Item_1"] =680150
	tSmallBestDrop_Reward["level80"]["weapon"][21]={}
	tSmallBestDrop_Reward["level80"]["weapon"][21]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level80"]["weapon"][21]["ItemChance"] =3
	tSmallBestDrop_Reward["level80"]["weapon"][21]["Item_1"] =614150
	tSmallBestDrop_Reward["level80"]["weapon"][22]={}
	tSmallBestDrop_Reward["level80"]["weapon"][22]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level80"]["weapon"][22]["ItemChance"] =2
	tSmallBestDrop_Reward["level80"]["weapon"][22]["Item_1"] =616150
	tSmallBestDrop_Reward["level80"]["weapon"][23]={}
	tSmallBestDrop_Reward["level80"]["weapon"][23]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level80"]["weapon"][23]["ItemChance"] =1
	tSmallBestDrop_Reward["level80"]["weapon"][23]["Item_1"] =620150
	tSmallBestDrop_Reward["level80"]["weapon"][24]={}
	tSmallBestDrop_Reward["level80"]["weapon"][24]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level80"]["weapon"][24]["ItemChance"] =2
	tSmallBestDrop_Reward["level80"]["weapon"][24]["Item_1"] =622150
	tSmallBestDrop_Reward["level80"]["weapon"][25]={}
	tSmallBestDrop_Reward["level80"]["weapon"][25]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level80"]["weapon"][25]["ItemChance"] =1
	tSmallBestDrop_Reward["level80"]["weapon"][25]["Item_1"] =670150
	tSmallBestDrop_Reward["level80"]["weapon"][26]={}
	tSmallBestDrop_Reward["level80"]["weapon"][26]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level80"]["weapon"][26]["ItemChance"] =1
	tSmallBestDrop_Reward["level80"]["weapon"][26]["Item_1"] =671150

	--80~99级衣服
	tSmallBestDrop_Reward["level80"]["clothes"]={}
	tSmallBestDrop_Reward["level80"]["clothes"]["ItemChanceSum"]=2000
	tSmallBestDrop_Reward["level80"]["clothes"][1]={}
	tSmallBestDrop_Reward["level80"]["clothes"][1]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level80"]["clothes"][1]["ItemChance"] =200
	tSmallBestDrop_Reward["level80"]["clothes"][1]["Item_1"] =130070
	tSmallBestDrop_Reward["level80"]["clothes"][2]={}
	tSmallBestDrop_Reward["level80"]["clothes"][2]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level80"]["clothes"][2]["ItemChance"] =200
	tSmallBestDrop_Reward["level80"]["clothes"][2]["Item_1"] =131070
	tSmallBestDrop_Reward["level80"]["clothes"][3]={}
	tSmallBestDrop_Reward["level80"]["clothes"][3]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level80"]["clothes"][3]["ItemChance"] =200
	tSmallBestDrop_Reward["level80"]["clothes"][3]["Item_1"] =133060
	tSmallBestDrop_Reward["level80"]["clothes"][4]={}
	tSmallBestDrop_Reward["level80"]["clothes"][4]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level80"]["clothes"][4]["ItemChance"] =200
	tSmallBestDrop_Reward["level80"]["clothes"][4]["Item_1"] =134070
	tSmallBestDrop_Reward["level80"]["clothes"][5]={}
	tSmallBestDrop_Reward["level80"]["clothes"][5]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level80"]["clothes"][5]["ItemChance"] =200
	tSmallBestDrop_Reward["level80"]["clothes"][5]["Item_1"] =135070
	tSmallBestDrop_Reward["level80"]["clothes"][6]={}
	tSmallBestDrop_Reward["level80"]["clothes"][6]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level80"]["clothes"][6]["ItemChance"] =200
	tSmallBestDrop_Reward["level80"]["clothes"][6]["Item_1"] =136070
	tSmallBestDrop_Reward["level80"]["clothes"][7]={}
	tSmallBestDrop_Reward["level80"]["clothes"][7]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level80"]["clothes"][7]["ItemChance"] =200
	tSmallBestDrop_Reward["level80"]["clothes"][7]["Item_1"] =139070
	tSmallBestDrop_Reward["level80"]["clothes"][8]={}
	tSmallBestDrop_Reward["level80"]["clothes"][8]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level80"]["clothes"][8]["ItemChance"] =200
	tSmallBestDrop_Reward["level80"]["clothes"][8]["Item_1"] =138070
	tSmallBestDrop_Reward["level80"]["clothes"][9]={}
	tSmallBestDrop_Reward["level80"]["clothes"][9]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level80"]["clothes"][9]["ItemChance"] =200
	tSmallBestDrop_Reward["level80"]["clothes"][9]["Item_1"] =101070
	tSmallBestDrop_Reward["level80"]["clothes"][10]={}
	tSmallBestDrop_Reward["level80"]["clothes"][10]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level80"]["clothes"][10]["ItemChance"] =200
	tSmallBestDrop_Reward["level80"]["clothes"][10]["Item_1"] =102070

	--80~99级帽子
	tSmallBestDrop_Reward["level80"]["cap"]={}
	tSmallBestDrop_Reward["level80"]["cap"]["ItemChanceSum"]=2000
	tSmallBestDrop_Reward["level80"]["cap"][1]={}
	tSmallBestDrop_Reward["level80"]["cap"][1]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level80"]["cap"][1]["ItemChance"] =182
	tSmallBestDrop_Reward["level80"]["cap"][1]["Item_1"] =118070
	tSmallBestDrop_Reward["level80"]["cap"][2]={}
	tSmallBestDrop_Reward["level80"]["cap"][2]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level80"]["cap"][2]["ItemChance"] =182
	tSmallBestDrop_Reward["level80"]["cap"][2]["Item_1"] =141070
	tSmallBestDrop_Reward["level80"]["cap"][3]={}
	tSmallBestDrop_Reward["level80"]["cap"][3]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level80"]["cap"][3]["ItemChance"] =182
	tSmallBestDrop_Reward["level80"]["cap"][3]["Item_1"] =142050
	tSmallBestDrop_Reward["level80"]["cap"][4]={}
	tSmallBestDrop_Reward["level80"]["cap"][4]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level80"]["cap"][4]["ItemChance"] =182
	tSmallBestDrop_Reward["level80"]["cap"][4]["Item_1"] =117070
	tSmallBestDrop_Reward["level80"]["cap"][5]={}
	tSmallBestDrop_Reward["level80"]["cap"][5]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level80"]["cap"][5]["ItemChance"] =182
	tSmallBestDrop_Reward["level80"]["cap"][5]["Item_1"] =123070
	tSmallBestDrop_Reward["level80"]["cap"][6]={}
	tSmallBestDrop_Reward["level80"]["cap"][6]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level80"]["cap"][6]["ItemChance"] =182
	tSmallBestDrop_Reward["level80"]["cap"][6]["Item_1"] =143070
	tSmallBestDrop_Reward["level80"]["cap"][7]={}
	tSmallBestDrop_Reward["level80"]["cap"][7]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level80"]["cap"][7]["ItemChance"] =182
	tSmallBestDrop_Reward["level80"]["cap"][7]["Item_1"] =145070
	tSmallBestDrop_Reward["level80"]["cap"][8]={}
	tSmallBestDrop_Reward["level80"]["cap"][8]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level80"]["cap"][8]["ItemChance"] =182
	tSmallBestDrop_Reward["level80"]["cap"][8]["Item_1"] =148070
	tSmallBestDrop_Reward["level80"]["cap"][9]={}
	tSmallBestDrop_Reward["level80"]["cap"][9]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level80"]["cap"][9]["ItemChance"] =182
	tSmallBestDrop_Reward["level80"]["cap"][9]["Item_1"] =170070
	tSmallBestDrop_Reward["level80"]["cap"][10]={}
	tSmallBestDrop_Reward["level80"]["cap"][10]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level80"]["cap"][10]["ItemChance"] =182
	tSmallBestDrop_Reward["level80"]["cap"][10]["Item_1"] =146070
	tSmallBestDrop_Reward["level80"]["cap"][11]={}
	tSmallBestDrop_Reward["level80"]["cap"][11]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level80"]["cap"][11]["ItemChance"] =180
	tSmallBestDrop_Reward["level80"]["cap"][11]["Item_1"] =147070
	
	--80~99级盾牌
	tSmallBestDrop_Reward["level80"]["shield"]={}
	tSmallBestDrop_Reward["level80"]["shield"]["ItemChanceSum"]=200
	tSmallBestDrop_Reward["level80"]["shield"][1]={}
	tSmallBestDrop_Reward["level80"]["shield"][1]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level80"]["shield"][1]["ItemChance"] =200
	tSmallBestDrop_Reward["level80"]["shield"][1]["Item_1"] =900060
	--80~99级项链
	tSmallBestDrop_Reward["level80"]["neck"]={}
	tSmallBestDrop_Reward["level80"]["neck"]["ItemChanceSum"]=400
	tSmallBestDrop_Reward["level80"]["neck"][1]={}
	tSmallBestDrop_Reward["level80"]["neck"][1]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level80"]["neck"][1]["ItemChance"] =400
	tSmallBestDrop_Reward["level80"]["neck"][1]["Item_1"] =120150
	--80~99级香囊
	tSmallBestDrop_Reward["level80"]["sachet"]={}
	tSmallBestDrop_Reward["level80"]["sachet"]["ItemChanceSum"]=200
	tSmallBestDrop_Reward["level80"]["sachet"][1]={}
	tSmallBestDrop_Reward["level80"]["sachet"][1]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level80"]["sachet"][1]["ItemChance"] =200
	tSmallBestDrop_Reward["level80"]["sachet"][1]["Item_1"] =121150
	--80~99级戒指
	tSmallBestDrop_Reward["level80"]["ring"]={}
	tSmallBestDrop_Reward["level80"]["ring"]["ItemChanceSum"]=400
	tSmallBestDrop_Reward["level80"]["ring"][1]={}
	tSmallBestDrop_Reward["level80"]["ring"][1]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level80"]["ring"][1]["ItemChance"] =400
	tSmallBestDrop_Reward["level80"]["ring"][1]["Item_1"] =150150
	--80~99级手镯
	tSmallBestDrop_Reward["level80"]["bangle"]={}
	tSmallBestDrop_Reward["level80"]["bangle"]["ItemChanceSum"]=200
	tSmallBestDrop_Reward["level80"]["bangle"][1]={}
	tSmallBestDrop_Reward["level80"]["bangle"][1]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level80"]["bangle"][1]["ItemChance"] =200
	tSmallBestDrop_Reward["level80"]["bangle"][1]["Item_1"] =152160
	--80~99级靴子
	tSmallBestDrop_Reward["level80"]["shoes"]={}
	tSmallBestDrop_Reward["level80"]["shoes"]["ItemChanceSum"]=500
	tSmallBestDrop_Reward["level80"]["shoes"][1]={}
	tSmallBestDrop_Reward["level80"]["shoes"][1]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level80"]["shoes"][1]["ItemChance"] =500
	tSmallBestDrop_Reward["level80"]["shoes"][1]["Item_1"] =160150
	
	
	tSmallBestDrop_Reward["level100"]={}
	--100~109级武器
	tSmallBestDrop_Reward["level100"]["weapon"]={}
	tSmallBestDrop_Reward["level100"]["weapon"]["ItemChanceSum"]=4100
	tSmallBestDrop_Reward["level100"]["weapon"][1]={}
	tSmallBestDrop_Reward["level100"]["weapon"][1]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level100"]["weapon"][1]["ItemChance"] =270
	tSmallBestDrop_Reward["level100"]["weapon"][1]["Item_1"] =410190
	tSmallBestDrop_Reward["level100"]["weapon"][2]={}
	tSmallBestDrop_Reward["level100"]["weapon"][2]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level100"]["weapon"][2]["ItemChance"] =270
	tSmallBestDrop_Reward["level100"]["weapon"][2]["Item_1"] =420190
	tSmallBestDrop_Reward["level100"]["weapon"][3]={}
	tSmallBestDrop_Reward["level100"]["weapon"][3]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level100"]["weapon"][3]["ItemChance"] =270
	tSmallBestDrop_Reward["level100"]["weapon"][3]["Item_1"] =480190
	tSmallBestDrop_Reward["level100"]["weapon"][4]={}
	tSmallBestDrop_Reward["level100"]["weapon"][4]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level100"]["weapon"][4]["ItemChance"] =270
	tSmallBestDrop_Reward["level100"]["weapon"][4]["Item_1"] =490190
	tSmallBestDrop_Reward["level100"]["weapon"][5]={}
	tSmallBestDrop_Reward["level100"]["weapon"][5]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level100"]["weapon"][5]["ItemChance"] =150
	tSmallBestDrop_Reward["level100"]["weapon"][5]["Item_1"] =560190
	tSmallBestDrop_Reward["level100"]["weapon"][6]={}
	tSmallBestDrop_Reward["level100"]["weapon"][6]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level100"]["weapon"][6]["ItemChance"] =150
	tSmallBestDrop_Reward["level100"]["weapon"][6]["Item_1"] =561190
	tSmallBestDrop_Reward["level100"]["weapon"][7]={}
	tSmallBestDrop_Reward["level100"]["weapon"][7]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level100"]["weapon"][7]["ItemChance"] =270
	tSmallBestDrop_Reward["level100"]["weapon"][7]["Item_1"] =624190
	tSmallBestDrop_Reward["level100"]["weapon"][8]={}
	tSmallBestDrop_Reward["level100"]["weapon"][8]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level100"]["weapon"][8]["ItemChance"] =150
	tSmallBestDrop_Reward["level100"]["weapon"][8]["Item_1"] =421190
	tSmallBestDrop_Reward["level100"]["weapon"][9]={}
	tSmallBestDrop_Reward["level100"]["weapon"][9]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level100"]["weapon"][9]["ItemChance"] =40
	tSmallBestDrop_Reward["level100"]["weapon"][9]["Item_1"] =619190
	tSmallBestDrop_Reward["level100"]["weapon"][10]={}
	tSmallBestDrop_Reward["level100"]["weapon"][10]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level100"]["weapon"][10]["ItemChance"] =150
	tSmallBestDrop_Reward["level100"]["weapon"][10]["Item_1"] =500180
	tSmallBestDrop_Reward["level100"]["weapon"][11]={}
	tSmallBestDrop_Reward["level100"]["weapon"][11]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level100"]["weapon"][11]["ItemChance"] =270
	tSmallBestDrop_Reward["level100"]["weapon"][11]["Item_1"] =613180
	tSmallBestDrop_Reward["level100"]["weapon"][12]={}
	tSmallBestDrop_Reward["level100"]["weapon"][12]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level100"]["weapon"][12]["ItemChance"] =150
	tSmallBestDrop_Reward["level100"]["weapon"][12]["Item_1"] =511190
	tSmallBestDrop_Reward["level100"]["weapon"][13]={}
	tSmallBestDrop_Reward["level100"]["weapon"][13]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level100"]["weapon"][13]["ItemChance"] =270
	tSmallBestDrop_Reward["level100"]["weapon"][13]["Item_1"] =601190
	tSmallBestDrop_Reward["level100"]["weapon"][14]={}
	tSmallBestDrop_Reward["level100"]["weapon"][14]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level100"]["weapon"][14]["ItemChance"] =270
	tSmallBestDrop_Reward["level100"]["weapon"][14]["Item_1"] =610190
	tSmallBestDrop_Reward["level100"]["weapon"][15]={}
	tSmallBestDrop_Reward["level100"]["weapon"][15]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level100"]["weapon"][15]["ItemChance"] =150
	tSmallBestDrop_Reward["level100"]["weapon"][15]["Item_1"] =611190
	tSmallBestDrop_Reward["level100"]["weapon"][16]={}
	tSmallBestDrop_Reward["level100"]["weapon"][16]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level100"]["weapon"][16]["ItemChance"] =150
	tSmallBestDrop_Reward["level100"]["weapon"][16]["Item_1"] =612190
	tSmallBestDrop_Reward["level100"]["weapon"][17]={}
	tSmallBestDrop_Reward["level100"]["weapon"][17]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level100"]["weapon"][17]["ItemChance"] =270
	tSmallBestDrop_Reward["level100"]["weapon"][17]["Item_1"] =617190
	tSmallBestDrop_Reward["level100"]["weapon"][18]={}
	tSmallBestDrop_Reward["level100"]["weapon"][18]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level100"]["weapon"][18]["ItemChance"] =270
	tSmallBestDrop_Reward["level100"]["weapon"][18]["Item_1"] =626190
	tSmallBestDrop_Reward["level100"]["weapon"][19]={}
	tSmallBestDrop_Reward["level100"]["weapon"][19]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level100"]["weapon"][19]["ItemChance"] =150
	tSmallBestDrop_Reward["level100"]["weapon"][19]["Item_1"] =681190
	tSmallBestDrop_Reward["level100"]["weapon"][20]={}
	tSmallBestDrop_Reward["level100"]["weapon"][20]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level100"]["weapon"][20]["ItemChance"] =150
	tSmallBestDrop_Reward["level100"]["weapon"][20]["Item_1"] =680190
	tSmallBestDrop_Reward["level100"]["weapon"][21]={}
	tSmallBestDrop_Reward["level100"]["weapon"][21]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level100"]["weapon"][21]["ItemChance"] =3
	tSmallBestDrop_Reward["level100"]["weapon"][21]["Item_1"] =614190
	tSmallBestDrop_Reward["level100"]["weapon"][22]={}
	tSmallBestDrop_Reward["level100"]["weapon"][22]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level100"]["weapon"][22]["ItemChance"] =2
	tSmallBestDrop_Reward["level100"]["weapon"][22]["Item_1"] =616190
	tSmallBestDrop_Reward["level100"]["weapon"][23]={}
	tSmallBestDrop_Reward["level100"]["weapon"][23]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level100"]["weapon"][23]["ItemChance"] =1
	tSmallBestDrop_Reward["level100"]["weapon"][23]["Item_1"] =620190
	tSmallBestDrop_Reward["level100"]["weapon"][24]={}
	tSmallBestDrop_Reward["level100"]["weapon"][24]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level100"]["weapon"][24]["ItemChance"] =2
	tSmallBestDrop_Reward["level100"]["weapon"][24]["Item_1"] =622190
	tSmallBestDrop_Reward["level100"]["weapon"][25]={}
	tSmallBestDrop_Reward["level100"]["weapon"][25]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level100"]["weapon"][25]["ItemChance"] =1
	tSmallBestDrop_Reward["level100"]["weapon"][25]["Item_1"] =670190
	tSmallBestDrop_Reward["level100"]["weapon"][26]={}
	tSmallBestDrop_Reward["level100"]["weapon"][26]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level100"]["weapon"][26]["ItemChance"] =1
	tSmallBestDrop_Reward["level100"]["weapon"][26]["Item_1"] =671190

	--100~109级衣服
	tSmallBestDrop_Reward["level100"]["clothes"]={}
	tSmallBestDrop_Reward["level100"]["clothes"]["ItemChanceSum"]=2000
	tSmallBestDrop_Reward["level100"]["clothes"][1]={}
	tSmallBestDrop_Reward["level100"]["clothes"][1]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level100"]["clothes"][1]["ItemChance"] =200
	tSmallBestDrop_Reward["level100"]["clothes"][1]["Item_1"] =130080
	tSmallBestDrop_Reward["level100"]["clothes"][2]={}
	tSmallBestDrop_Reward["level100"]["clothes"][2]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level100"]["clothes"][2]["ItemChance"] =200
	tSmallBestDrop_Reward["level100"]["clothes"][2]["Item_1"] =131080
	tSmallBestDrop_Reward["level100"]["clothes"][3]={}
	tSmallBestDrop_Reward["level100"]["clothes"][3]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level100"]["clothes"][3]["ItemChance"] =200
	tSmallBestDrop_Reward["level100"]["clothes"][3]["Item_1"] =133080
	tSmallBestDrop_Reward["level100"]["clothes"][4]={}
	tSmallBestDrop_Reward["level100"]["clothes"][4]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level100"]["clothes"][4]["ItemChance"] =200
	tSmallBestDrop_Reward["level100"]["clothes"][4]["Item_1"] =134080
	tSmallBestDrop_Reward["level100"]["clothes"][5]={}
	tSmallBestDrop_Reward["level100"]["clothes"][5]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level100"]["clothes"][5]["ItemChance"] =200
	tSmallBestDrop_Reward["level100"]["clothes"][5]["Item_1"] =135080
	tSmallBestDrop_Reward["level100"]["clothes"][6]={}
	tSmallBestDrop_Reward["level100"]["clothes"][6]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level100"]["clothes"][6]["ItemChance"] =200
	tSmallBestDrop_Reward["level100"]["clothes"][6]["Item_1"] =136080
	tSmallBestDrop_Reward["level100"]["clothes"][7]={}
	tSmallBestDrop_Reward["level100"]["clothes"][7]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level100"]["clothes"][7]["ItemChance"] =200
	tSmallBestDrop_Reward["level100"]["clothes"][7]["Item_1"] =139080
	tSmallBestDrop_Reward["level100"]["clothes"][8]={}
	tSmallBestDrop_Reward["level100"]["clothes"][8]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level100"]["clothes"][8]["ItemChance"] =200
	tSmallBestDrop_Reward["level100"]["clothes"][8]["Item_1"] =138080
	tSmallBestDrop_Reward["level100"]["clothes"][9]={}
	tSmallBestDrop_Reward["level100"]["clothes"][9]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level100"]["clothes"][9]["ItemChance"] =200
	tSmallBestDrop_Reward["level100"]["clothes"][9]["Item_1"] =101080
	tSmallBestDrop_Reward["level100"]["clothes"][10]={}
	tSmallBestDrop_Reward["level100"]["clothes"][10]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level100"]["clothes"][10]["ItemChance"] =200
	tSmallBestDrop_Reward["level100"]["clothes"][10]["Item_1"] =102080
	
	--100~109级帽子
	tSmallBestDrop_Reward["level100"]["cap"]={}
	tSmallBestDrop_Reward["level100"]["cap"]["ItemChanceSum"]=2000
	tSmallBestDrop_Reward["level100"]["cap"][1]={}
	tSmallBestDrop_Reward["level100"]["cap"][1]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level100"]["cap"][1]["ItemChance"] =182
	tSmallBestDrop_Reward["level100"]["cap"][1]["Item_1"] =118080
	tSmallBestDrop_Reward["level100"]["cap"][2]={}
	tSmallBestDrop_Reward["level100"]["cap"][2]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level100"]["cap"][2]["ItemChance"] =182
	tSmallBestDrop_Reward["level100"]["cap"][2]["Item_1"] =141080
	tSmallBestDrop_Reward["level100"]["cap"][3]={}
	tSmallBestDrop_Reward["level100"]["cap"][3]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level100"]["cap"][3]["ItemChance"] =182
	tSmallBestDrop_Reward["level100"]["cap"][3]["Item_1"] =142070
	tSmallBestDrop_Reward["level100"]["cap"][4]={}
	tSmallBestDrop_Reward["level100"]["cap"][4]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level100"]["cap"][4]["ItemChance"] =182
	tSmallBestDrop_Reward["level100"]["cap"][4]["Item_1"] =117080
	tSmallBestDrop_Reward["level100"]["cap"][5]={}
	tSmallBestDrop_Reward["level100"]["cap"][5]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level100"]["cap"][5]["ItemChance"] =182
	tSmallBestDrop_Reward["level100"]["cap"][5]["Item_1"] =123080
	tSmallBestDrop_Reward["level100"]["cap"][6]={}
	tSmallBestDrop_Reward["level100"]["cap"][6]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level100"]["cap"][6]["ItemChance"] =182
	tSmallBestDrop_Reward["level100"]["cap"][6]["Item_1"] =143080
	tSmallBestDrop_Reward["level100"]["cap"][7]={}
	tSmallBestDrop_Reward["level100"]["cap"][7]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level100"]["cap"][7]["ItemChance"] =182
	tSmallBestDrop_Reward["level100"]["cap"][7]["Item_1"] =145080
	tSmallBestDrop_Reward["level100"]["cap"][8]={}
	tSmallBestDrop_Reward["level100"]["cap"][8]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level100"]["cap"][8]["ItemChance"] =182
	tSmallBestDrop_Reward["level100"]["cap"][8]["Item_1"] =148080
	tSmallBestDrop_Reward["level100"]["cap"][9]={}
	tSmallBestDrop_Reward["level100"]["cap"][9]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level100"]["cap"][9]["ItemChance"] =182
	tSmallBestDrop_Reward["level100"]["cap"][9]["Item_1"] =170080
	tSmallBestDrop_Reward["level100"]["cap"][10]={}
	tSmallBestDrop_Reward["level100"]["cap"][10]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level100"]["cap"][10]["ItemChance"] =182
	tSmallBestDrop_Reward["level100"]["cap"][10]["Item_1"] =146080
	tSmallBestDrop_Reward["level100"]["cap"][11]={}
	tSmallBestDrop_Reward["level100"]["cap"][11]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level100"]["cap"][11]["ItemChance"] =180
	tSmallBestDrop_Reward["level100"]["cap"][11]["Item_1"] =147080
	
	--100~109级盾牌
	tSmallBestDrop_Reward["level100"]["shield"]={}
	tSmallBestDrop_Reward["level100"]["shield"]["ItemChanceSum"]=200
	tSmallBestDrop_Reward["level100"]["shield"][1]={}
	tSmallBestDrop_Reward["level100"]["shield"][1]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level100"]["shield"][1]["ItemChance"] =200
	tSmallBestDrop_Reward["level100"]["shield"][1]["Item_1"] =900080
	--100~109级项链
	tSmallBestDrop_Reward["level100"]["neck"]={}
	tSmallBestDrop_Reward["level100"]["neck"]["ItemChanceSum"]=400
	tSmallBestDrop_Reward["level100"]["neck"][1]={}
	tSmallBestDrop_Reward["level100"]["neck"][1]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level100"]["neck"][1]["ItemChance"] =400
	tSmallBestDrop_Reward["level100"]["neck"][1]["Item_1"] =120180
	--100~109级香囊
	tSmallBestDrop_Reward["level100"]["sachet"]={}
	tSmallBestDrop_Reward["level100"]["sachet"]["ItemChanceSum"]=200
	tSmallBestDrop_Reward["level100"]["sachet"][1]={}
	tSmallBestDrop_Reward["level100"]["sachet"][1]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level100"]["sachet"][1]["ItemChance"] =200
	tSmallBestDrop_Reward["level100"]["sachet"][1]["Item_1"] =121180
	--100~109级戒指
	tSmallBestDrop_Reward["level100"]["ring"]={}
	tSmallBestDrop_Reward["level100"]["ring"]["ItemChanceSum"]=400
	tSmallBestDrop_Reward["level100"]["ring"][1]={}
	tSmallBestDrop_Reward["level100"]["ring"][1]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level100"]["ring"][1]["ItemChance"] =400
	tSmallBestDrop_Reward["level100"]["ring"][1]["Item_1"] =150190
	--100~109级手镯
	tSmallBestDrop_Reward["level100"]["bangle"]={}
	tSmallBestDrop_Reward["level100"]["bangle"]["ItemChanceSum"]=200
	tSmallBestDrop_Reward["level100"]["bangle"][1]={}
	tSmallBestDrop_Reward["level100"]["bangle"][1]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level100"]["bangle"][1]["ItemChance"] =200
	tSmallBestDrop_Reward["level100"]["bangle"][1]["Item_1"] =152200
	--100~109级靴子
	tSmallBestDrop_Reward["level100"]["shoes"]={}
	tSmallBestDrop_Reward["level100"]["shoes"]["ItemChanceSum"]=500
	tSmallBestDrop_Reward["level100"]["shoes"][1]={}
	tSmallBestDrop_Reward["level100"]["shoes"][1]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level100"]["shoes"][1]["ItemChance"] =500
	tSmallBestDrop_Reward["level100"]["shoes"][1]["Item_1"] =160190
	
	
	tSmallBestDrop_Reward["level110"]={}
	--110~119级武器
	tSmallBestDrop_Reward["level110"]["weapon"]={}
	tSmallBestDrop_Reward["level110"]["weapon"]["ItemChanceSum"]=4100
	tSmallBestDrop_Reward["level110"]["weapon"][1]={}
	tSmallBestDrop_Reward["level110"]["weapon"][1]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level110"]["weapon"][1]["ItemChance"] =270
	tSmallBestDrop_Reward["level110"]["weapon"][1]["Item_1"] =410210
	tSmallBestDrop_Reward["level110"]["weapon"][2]={}
	tSmallBestDrop_Reward["level110"]["weapon"][2]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level110"]["weapon"][2]["ItemChance"] =270
	tSmallBestDrop_Reward["level110"]["weapon"][2]["Item_1"] =420210
	tSmallBestDrop_Reward["level110"]["weapon"][3]={}
	tSmallBestDrop_Reward["level110"]["weapon"][3]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level110"]["weapon"][3]["ItemChance"] =270
	tSmallBestDrop_Reward["level110"]["weapon"][3]["Item_1"] =480210
	tSmallBestDrop_Reward["level110"]["weapon"][4]={}
	tSmallBestDrop_Reward["level110"]["weapon"][4]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level110"]["weapon"][4]["ItemChance"] =270
	tSmallBestDrop_Reward["level110"]["weapon"][4]["Item_1"] =490210
	tSmallBestDrop_Reward["level110"]["weapon"][5]={}
	tSmallBestDrop_Reward["level110"]["weapon"][5]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level110"]["weapon"][5]["ItemChance"] =150
	tSmallBestDrop_Reward["level110"]["weapon"][5]["Item_1"] =560210
	tSmallBestDrop_Reward["level110"]["weapon"][6]={}
	tSmallBestDrop_Reward["level110"]["weapon"][6]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level110"]["weapon"][6]["ItemChance"] =150
	tSmallBestDrop_Reward["level110"]["weapon"][6]["Item_1"] =561210
	tSmallBestDrop_Reward["level110"]["weapon"][7]={}
	tSmallBestDrop_Reward["level110"]["weapon"][7]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level110"]["weapon"][7]["ItemChance"] =270
	tSmallBestDrop_Reward["level110"]["weapon"][7]["Item_1"] =624210
	tSmallBestDrop_Reward["level110"]["weapon"][8]={}
	tSmallBestDrop_Reward["level110"]["weapon"][8]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level110"]["weapon"][8]["ItemChance"] =150
	tSmallBestDrop_Reward["level110"]["weapon"][8]["Item_1"] =421210
	tSmallBestDrop_Reward["level110"]["weapon"][9]={}
	tSmallBestDrop_Reward["level110"]["weapon"][9]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level110"]["weapon"][9]["ItemChance"] =40
	tSmallBestDrop_Reward["level110"]["weapon"][9]["Item_1"] =619210
	tSmallBestDrop_Reward["level110"]["weapon"][10]={}
	tSmallBestDrop_Reward["level110"]["weapon"][10]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level110"]["weapon"][10]["ItemChance"] =150
	tSmallBestDrop_Reward["level110"]["weapon"][10]["Item_1"] =500200
	tSmallBestDrop_Reward["level110"]["weapon"][11]={}
	tSmallBestDrop_Reward["level110"]["weapon"][11]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level110"]["weapon"][11]["ItemChance"] =270
	tSmallBestDrop_Reward["level110"]["weapon"][11]["Item_1"] =613200
	tSmallBestDrop_Reward["level110"]["weapon"][12]={}
	tSmallBestDrop_Reward["level110"]["weapon"][12]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level110"]["weapon"][12]["ItemChance"] =150
	tSmallBestDrop_Reward["level110"]["weapon"][12]["Item_1"] =511210
	tSmallBestDrop_Reward["level110"]["weapon"][13]={}
	tSmallBestDrop_Reward["level110"]["weapon"][13]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level110"]["weapon"][13]["ItemChance"] =270
	tSmallBestDrop_Reward["level110"]["weapon"][13]["Item_1"] =601210
	tSmallBestDrop_Reward["level110"]["weapon"][14]={}
	tSmallBestDrop_Reward["level110"]["weapon"][14]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level110"]["weapon"][14]["ItemChance"] =270
	tSmallBestDrop_Reward["level110"]["weapon"][14]["Item_1"] =610210
	tSmallBestDrop_Reward["level110"]["weapon"][15]={}
	tSmallBestDrop_Reward["level110"]["weapon"][15]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level110"]["weapon"][15]["ItemChance"] =150
	tSmallBestDrop_Reward["level110"]["weapon"][15]["Item_1"] =611210
	tSmallBestDrop_Reward["level110"]["weapon"][16]={}
	tSmallBestDrop_Reward["level110"]["weapon"][16]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level110"]["weapon"][16]["ItemChance"] =150
	tSmallBestDrop_Reward["level110"]["weapon"][16]["Item_1"] =612210
	tSmallBestDrop_Reward["level110"]["weapon"][17]={}
	tSmallBestDrop_Reward["level110"]["weapon"][17]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level110"]["weapon"][17]["ItemChance"] =270
	tSmallBestDrop_Reward["level110"]["weapon"][17]["Item_1"] =617210
	tSmallBestDrop_Reward["level110"]["weapon"][18]={}
	tSmallBestDrop_Reward["level110"]["weapon"][18]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level110"]["weapon"][18]["ItemChance"] =270
	tSmallBestDrop_Reward["level110"]["weapon"][18]["Item_1"] =626210
	tSmallBestDrop_Reward["level110"]["weapon"][19]={}
	tSmallBestDrop_Reward["level110"]["weapon"][19]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level110"]["weapon"][19]["ItemChance"] =150
	tSmallBestDrop_Reward["level110"]["weapon"][19]["Item_1"] =681210
	tSmallBestDrop_Reward["level110"]["weapon"][20]={}
	tSmallBestDrop_Reward["level110"]["weapon"][20]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level110"]["weapon"][20]["ItemChance"] =150
	tSmallBestDrop_Reward["level110"]["weapon"][20]["Item_1"] =680210
	tSmallBestDrop_Reward["level110"]["weapon"][21]={}
	tSmallBestDrop_Reward["level110"]["weapon"][21]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level110"]["weapon"][21]["ItemChance"] =3
	tSmallBestDrop_Reward["level110"]["weapon"][21]["Item_1"] =614210
	tSmallBestDrop_Reward["level110"]["weapon"][22]={}
	tSmallBestDrop_Reward["level110"]["weapon"][22]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level110"]["weapon"][22]["ItemChance"] =2
	tSmallBestDrop_Reward["level110"]["weapon"][22]["Item_1"] =616210
	tSmallBestDrop_Reward["level110"]["weapon"][23]={}
	tSmallBestDrop_Reward["level110"]["weapon"][23]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level110"]["weapon"][23]["ItemChance"] =1
	tSmallBestDrop_Reward["level110"]["weapon"][23]["Item_1"] =620210
	tSmallBestDrop_Reward["level110"]["weapon"][24]={}
	tSmallBestDrop_Reward["level110"]["weapon"][24]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level110"]["weapon"][24]["ItemChance"] =2
	tSmallBestDrop_Reward["level110"]["weapon"][24]["Item_1"] =622210
	tSmallBestDrop_Reward["level110"]["weapon"][25]={}
	tSmallBestDrop_Reward["level110"]["weapon"][25]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level110"]["weapon"][25]["ItemChance"] =1
	tSmallBestDrop_Reward["level110"]["weapon"][25]["Item_1"] =670210
	tSmallBestDrop_Reward["level110"]["weapon"][26]={}
	tSmallBestDrop_Reward["level110"]["weapon"][26]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level110"]["weapon"][26]["ItemChance"] =1
	tSmallBestDrop_Reward["level110"]["weapon"][26]["Item_1"] =671210
	
	--110~119级衣服
	tSmallBestDrop_Reward["level110"]["clothes"]={}
	tSmallBestDrop_Reward["level110"]["clothes"]["ItemChanceSum"]=2000
	tSmallBestDrop_Reward["level110"]["clothes"][1]={}
	tSmallBestDrop_Reward["level110"]["clothes"][1]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level110"]["clothes"][1]["ItemChance"] =200
	tSmallBestDrop_Reward["level110"]["clothes"][1]["Item_1"] =130090
	tSmallBestDrop_Reward["level110"]["clothes"][2]={}
	tSmallBestDrop_Reward["level110"]["clothes"][2]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level110"]["clothes"][2]["ItemChance"] =200
	tSmallBestDrop_Reward["level110"]["clothes"][2]["Item_1"] =131090
	tSmallBestDrop_Reward["level110"]["clothes"][3]={}
	tSmallBestDrop_Reward["level110"]["clothes"][3]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level110"]["clothes"][3]["ItemChance"] =200
	tSmallBestDrop_Reward["level110"]["clothes"][3]["Item_1"] =133090
	tSmallBestDrop_Reward["level110"]["clothes"][4]={}
	tSmallBestDrop_Reward["level110"]["clothes"][4]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level110"]["clothes"][4]["ItemChance"] =200
	tSmallBestDrop_Reward["level110"]["clothes"][4]["Item_1"] =134090
	tSmallBestDrop_Reward["level110"]["clothes"][5]={}
	tSmallBestDrop_Reward["level110"]["clothes"][5]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level110"]["clothes"][5]["ItemChance"] =200
	tSmallBestDrop_Reward["level110"]["clothes"][5]["Item_1"] =135090
	tSmallBestDrop_Reward["level110"]["clothes"][6]={}
	tSmallBestDrop_Reward["level110"]["clothes"][6]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level110"]["clothes"][6]["ItemChance"] =200
	tSmallBestDrop_Reward["level110"]["clothes"][6]["Item_1"] =136090
	tSmallBestDrop_Reward["level110"]["clothes"][7]={}
	tSmallBestDrop_Reward["level110"]["clothes"][7]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level110"]["clothes"][7]["ItemChance"] =200
	tSmallBestDrop_Reward["level110"]["clothes"][7]["Item_1"] =139090
	tSmallBestDrop_Reward["level110"]["clothes"][8]={}
	tSmallBestDrop_Reward["level110"]["clothes"][8]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level110"]["clothes"][8]["ItemChance"] =200
	tSmallBestDrop_Reward["level110"]["clothes"][8]["Item_1"] =138090
	tSmallBestDrop_Reward["level110"]["clothes"][9]={}
	tSmallBestDrop_Reward["level110"]["clothes"][9]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level110"]["clothes"][9]["ItemChance"] =200
	tSmallBestDrop_Reward["level110"]["clothes"][9]["Item_1"] =101090
	tSmallBestDrop_Reward["level110"]["clothes"][10]={}
	tSmallBestDrop_Reward["level110"]["clothes"][10]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level110"]["clothes"][10]["ItemChance"] =200
	tSmallBestDrop_Reward["level110"]["clothes"][10]["Item_1"] =102090
	
	--110~119级帽子
	tSmallBestDrop_Reward["level110"]["cap"]={}
	tSmallBestDrop_Reward["level110"]["cap"]["ItemChanceSum"]=2000
	tSmallBestDrop_Reward["level110"]["cap"][1]={}
	tSmallBestDrop_Reward["level110"]["cap"][1]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level110"]["cap"][1]["ItemChance"] =182
	tSmallBestDrop_Reward["level110"]["cap"][1]["Item_1"] =118090
	tSmallBestDrop_Reward["level110"]["cap"][2]={}
	tSmallBestDrop_Reward["level110"]["cap"][2]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level110"]["cap"][2]["ItemChance"] =182
	tSmallBestDrop_Reward["level110"]["cap"][2]["Item_1"] =141090
	tSmallBestDrop_Reward["level110"]["cap"][3]={}
	tSmallBestDrop_Reward["level110"]["cap"][3]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level110"]["cap"][3]["ItemChance"] =182
	tSmallBestDrop_Reward["level110"]["cap"][3]["Item_1"] =142080
	tSmallBestDrop_Reward["level110"]["cap"][4]={}
	tSmallBestDrop_Reward["level110"]["cap"][4]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level110"]["cap"][4]["ItemChance"] =182
	tSmallBestDrop_Reward["level110"]["cap"][4]["Item_1"] =117090
	tSmallBestDrop_Reward["level110"]["cap"][5]={}
	tSmallBestDrop_Reward["level110"]["cap"][5]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level110"]["cap"][5]["ItemChance"] =182
	tSmallBestDrop_Reward["level110"]["cap"][5]["Item_1"] =123090
	tSmallBestDrop_Reward["level110"]["cap"][6]={}
	tSmallBestDrop_Reward["level110"]["cap"][6]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level110"]["cap"][6]["ItemChance"] =182
	tSmallBestDrop_Reward["level110"]["cap"][6]["Item_1"] =143090
	tSmallBestDrop_Reward["level110"]["cap"][7]={}
	tSmallBestDrop_Reward["level110"]["cap"][7]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level110"]["cap"][7]["ItemChance"] =182
	tSmallBestDrop_Reward["level110"]["cap"][7]["Item_1"] =145090
	tSmallBestDrop_Reward["level110"]["cap"][8]={}
	tSmallBestDrop_Reward["level110"]["cap"][8]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level110"]["cap"][8]["ItemChance"] =182
	tSmallBestDrop_Reward["level110"]["cap"][8]["Item_1"] =148090
	tSmallBestDrop_Reward["level110"]["cap"][9]={}
	tSmallBestDrop_Reward["level110"]["cap"][9]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level110"]["cap"][9]["ItemChance"] =182
	tSmallBestDrop_Reward["level110"]["cap"][9]["Item_1"] =170090
	tSmallBestDrop_Reward["level110"]["cap"][10]={}
	tSmallBestDrop_Reward["level110"]["cap"][10]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level110"]["cap"][10]["ItemChance"] =182
	tSmallBestDrop_Reward["level110"]["cap"][10]["Item_1"] =146090
	tSmallBestDrop_Reward["level110"]["cap"][11]={}
	tSmallBestDrop_Reward["level110"]["cap"][11]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level110"]["cap"][11]["ItemChance"] =180
	tSmallBestDrop_Reward["level110"]["cap"][11]["Item_1"] =147090
	
	--110~119级盾牌
	tSmallBestDrop_Reward["level110"]["shield"]={}
	tSmallBestDrop_Reward["level110"]["shield"]["ItemChanceSum"]=200
	tSmallBestDrop_Reward["level110"]["shield"][1]={}
	tSmallBestDrop_Reward["level110"]["shield"][1]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level110"]["shield"][1]["ItemChance"] =200
	tSmallBestDrop_Reward["level110"]["shield"][1]["Item_1"] =900090
	--110~119级项链
	tSmallBestDrop_Reward["level110"]["neck"]={}
	tSmallBestDrop_Reward["level110"]["neck"]["ItemChanceSum"]=400
	tSmallBestDrop_Reward["level110"]["neck"][1]={}
	tSmallBestDrop_Reward["level110"]["neck"][1]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level110"]["neck"][1]["ItemChance"] =400
	tSmallBestDrop_Reward["level110"]["neck"][1]["Item_1"] =120210
	--110~119级香囊
	tSmallBestDrop_Reward["level110"]["sachet"]={}
	tSmallBestDrop_Reward["level110"]["sachet"]["ItemChanceSum"]=200
	tSmallBestDrop_Reward["level110"]["sachet"][1]={}
	tSmallBestDrop_Reward["level110"]["sachet"][1]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level110"]["sachet"][1]["ItemChance"] =200
	tSmallBestDrop_Reward["level110"]["sachet"][1]["Item_1"] =121210
	--110~119级戒指
	tSmallBestDrop_Reward["level110"]["ring"]={}
	tSmallBestDrop_Reward["level110"]["ring"]["ItemChanceSum"]=400
	tSmallBestDrop_Reward["level110"]["ring"][1]={}
	tSmallBestDrop_Reward["level110"]["ring"][1]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level110"]["ring"][1]["ItemChance"] =400
	tSmallBestDrop_Reward["level110"]["ring"][1]["Item_1"] =150210
	--110~119级手镯
	tSmallBestDrop_Reward["level110"]["bangle"]={}
	tSmallBestDrop_Reward["level110"]["bangle"]["ItemChanceSum"]=200
	tSmallBestDrop_Reward["level110"]["bangle"][1]={}
	tSmallBestDrop_Reward["level110"]["bangle"][1]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level110"]["bangle"][1]["ItemChance"] =200
	tSmallBestDrop_Reward["level110"]["bangle"][1]["Item_1"] =152220
	--110~119级靴子
	tSmallBestDrop_Reward["level110"]["shoes"]={}
	tSmallBestDrop_Reward["level110"]["shoes"]["ItemChanceSum"]=500
	tSmallBestDrop_Reward["level110"]["shoes"][1]={}
	tSmallBestDrop_Reward["level110"]["shoes"][1]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level110"]["shoes"][1]["ItemChance"] =500
	tSmallBestDrop_Reward["level110"]["shoes"][1]["Item_1"] =160210
	
	
	tSmallBestDrop_Reward["level120"]={}
	--120~129级武器
	tSmallBestDrop_Reward["level120"]["weapon"]={}
	tSmallBestDrop_Reward["level120"]["weapon"]["ItemChanceSum"]=4100
	tSmallBestDrop_Reward["level120"]["weapon"][1]={}
	tSmallBestDrop_Reward["level120"]["weapon"][1]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level120"]["weapon"][1]["ItemChance"] =270
	tSmallBestDrop_Reward["level120"]["weapon"][1]["Item_1"] =410230
	tSmallBestDrop_Reward["level120"]["weapon"][2]={}
	tSmallBestDrop_Reward["level120"]["weapon"][2]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level120"]["weapon"][2]["ItemChance"] =270
	tSmallBestDrop_Reward["level120"]["weapon"][2]["Item_1"] =420230
	tSmallBestDrop_Reward["level120"]["weapon"][3]={}
	tSmallBestDrop_Reward["level120"]["weapon"][3]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level120"]["weapon"][3]["ItemChance"] =270
	tSmallBestDrop_Reward["level120"]["weapon"][3]["Item_1"] =480230
	tSmallBestDrop_Reward["level120"]["weapon"][4]={}
	tSmallBestDrop_Reward["level120"]["weapon"][4]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level120"]["weapon"][4]["ItemChance"] =270
	tSmallBestDrop_Reward["level120"]["weapon"][4]["Item_1"] =490230
	tSmallBestDrop_Reward["level120"]["weapon"][5]={}
	tSmallBestDrop_Reward["level120"]["weapon"][5]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level120"]["weapon"][5]["ItemChance"] =150
	tSmallBestDrop_Reward["level120"]["weapon"][5]["Item_1"] =560230
	tSmallBestDrop_Reward["level120"]["weapon"][6]={}
	tSmallBestDrop_Reward["level120"]["weapon"][6]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level120"]["weapon"][6]["ItemChance"] =150
	tSmallBestDrop_Reward["level120"]["weapon"][6]["Item_1"] =561230
	tSmallBestDrop_Reward["level120"]["weapon"][7]={}
	tSmallBestDrop_Reward["level120"]["weapon"][7]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level120"]["weapon"][7]["ItemChance"] =270
	tSmallBestDrop_Reward["level120"]["weapon"][7]["Item_1"] =624230
	tSmallBestDrop_Reward["level120"]["weapon"][8]={}
	tSmallBestDrop_Reward["level120"]["weapon"][8]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level120"]["weapon"][8]["ItemChance"] =150
	tSmallBestDrop_Reward["level120"]["weapon"][8]["Item_1"] =421230
	tSmallBestDrop_Reward["level120"]["weapon"][9]={}
	tSmallBestDrop_Reward["level120"]["weapon"][9]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level120"]["weapon"][9]["ItemChance"] =40
	tSmallBestDrop_Reward["level120"]["weapon"][9]["Item_1"] =619230
	tSmallBestDrop_Reward["level120"]["weapon"][10]={}
	tSmallBestDrop_Reward["level120"]["weapon"][10]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level120"]["weapon"][10]["ItemChance"] =150
	tSmallBestDrop_Reward["level120"]["weapon"][10]["Item_1"] =500220
	tSmallBestDrop_Reward["level120"]["weapon"][11]={}
	tSmallBestDrop_Reward["level120"]["weapon"][11]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level120"]["weapon"][11]["ItemChance"] =270
	tSmallBestDrop_Reward["level120"]["weapon"][11]["Item_1"] =613220
	tSmallBestDrop_Reward["level120"]["weapon"][12]={}
	tSmallBestDrop_Reward["level120"]["weapon"][12]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level120"]["weapon"][12]["ItemChance"] =150
	tSmallBestDrop_Reward["level120"]["weapon"][12]["Item_1"] =511230
	tSmallBestDrop_Reward["level120"]["weapon"][13]={}
	tSmallBestDrop_Reward["level120"]["weapon"][13]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level120"]["weapon"][13]["ItemChance"] =270
	tSmallBestDrop_Reward["level120"]["weapon"][13]["Item_1"] =601230
	tSmallBestDrop_Reward["level120"]["weapon"][14]={}
	tSmallBestDrop_Reward["level120"]["weapon"][14]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level120"]["weapon"][14]["ItemChance"] =270
	tSmallBestDrop_Reward["level120"]["weapon"][14]["Item_1"] =610230
	tSmallBestDrop_Reward["level120"]["weapon"][15]={}
	tSmallBestDrop_Reward["level120"]["weapon"][15]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level120"]["weapon"][15]["ItemChance"] =150
	tSmallBestDrop_Reward["level120"]["weapon"][15]["Item_1"] =611230
	tSmallBestDrop_Reward["level120"]["weapon"][16]={}
	tSmallBestDrop_Reward["level120"]["weapon"][16]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level120"]["weapon"][16]["ItemChance"] =150
	tSmallBestDrop_Reward["level120"]["weapon"][16]["Item_1"] =612230
	tSmallBestDrop_Reward["level120"]["weapon"][17]={}
	tSmallBestDrop_Reward["level120"]["weapon"][17]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level120"]["weapon"][17]["ItemChance"] =270
	tSmallBestDrop_Reward["level120"]["weapon"][17]["Item_1"] =617230
	tSmallBestDrop_Reward["level120"]["weapon"][18]={}
	tSmallBestDrop_Reward["level120"]["weapon"][18]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level120"]["weapon"][18]["ItemChance"] =270
	tSmallBestDrop_Reward["level120"]["weapon"][18]["Item_1"] =626230
	tSmallBestDrop_Reward["level120"]["weapon"][19]={}
	tSmallBestDrop_Reward["level120"]["weapon"][19]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level120"]["weapon"][19]["ItemChance"] =150
	tSmallBestDrop_Reward["level120"]["weapon"][19]["Item_1"] =681230
	tSmallBestDrop_Reward["level120"]["weapon"][20]={}
	tSmallBestDrop_Reward["level120"]["weapon"][20]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level120"]["weapon"][20]["ItemChance"] =150
	tSmallBestDrop_Reward["level120"]["weapon"][20]["Item_1"] =680230
	tSmallBestDrop_Reward["level120"]["weapon"][21]={}
	tSmallBestDrop_Reward["level120"]["weapon"][21]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level120"]["weapon"][21]["ItemChance"] =3
	tSmallBestDrop_Reward["level120"]["weapon"][21]["Item_1"] =614230
	tSmallBestDrop_Reward["level120"]["weapon"][22]={}
	tSmallBestDrop_Reward["level120"]["weapon"][22]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level120"]["weapon"][22]["ItemChance"] =2
	tSmallBestDrop_Reward["level120"]["weapon"][22]["Item_1"] =616230
	tSmallBestDrop_Reward["level120"]["weapon"][23]={}
	tSmallBestDrop_Reward["level120"]["weapon"][23]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level120"]["weapon"][23]["ItemChance"] =1
	tSmallBestDrop_Reward["level120"]["weapon"][23]["Item_1"] =620230
	tSmallBestDrop_Reward["level120"]["weapon"][24]={}
	tSmallBestDrop_Reward["level120"]["weapon"][24]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level120"]["weapon"][24]["ItemChance"] =2
	tSmallBestDrop_Reward["level120"]["weapon"][24]["Item_1"] =622230
	tSmallBestDrop_Reward["level120"]["weapon"][25]={}
	tSmallBestDrop_Reward["level120"]["weapon"][25]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level120"]["weapon"][25]["ItemChance"] =1
	tSmallBestDrop_Reward["level120"]["weapon"][25]["Item_1"] =670230
	tSmallBestDrop_Reward["level120"]["weapon"][26]={}
	tSmallBestDrop_Reward["level120"]["weapon"][26]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level120"]["weapon"][26]["ItemChance"] =1
	tSmallBestDrop_Reward["level120"]["weapon"][26]["Item_1"] =671230
	
	--120~129级衣服
	tSmallBestDrop_Reward["level120"]["clothes"]={}
	tSmallBestDrop_Reward["level120"]["clothes"]["ItemChanceSum"]=2000
	tSmallBestDrop_Reward["level120"]["clothes"][1]={}
	tSmallBestDrop_Reward["level120"]["clothes"][1]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level120"]["clothes"][1]["ItemChance"] =200
	tSmallBestDrop_Reward["level120"]["clothes"][1]["Item_1"] =130100
	tSmallBestDrop_Reward["level120"]["clothes"][2]={}
	tSmallBestDrop_Reward["level120"]["clothes"][2]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level120"]["clothes"][2]["ItemChance"] =200
	tSmallBestDrop_Reward["level120"]["clothes"][2]["Item_1"] =131100
	tSmallBestDrop_Reward["level120"]["clothes"][3]={}
	tSmallBestDrop_Reward["level120"]["clothes"][3]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level120"]["clothes"][3]["ItemChance"] =200
	tSmallBestDrop_Reward["level120"]["clothes"][3]["Item_1"] =133100
	tSmallBestDrop_Reward["level120"]["clothes"][4]={}
	tSmallBestDrop_Reward["level120"]["clothes"][4]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level120"]["clothes"][4]["ItemChance"] =200
	tSmallBestDrop_Reward["level120"]["clothes"][4]["Item_1"] =134100
	tSmallBestDrop_Reward["level120"]["clothes"][5]={}
	tSmallBestDrop_Reward["level120"]["clothes"][5]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level120"]["clothes"][5]["ItemChance"] =200
	tSmallBestDrop_Reward["level120"]["clothes"][5]["Item_1"] =135100
	tSmallBestDrop_Reward["level120"]["clothes"][6]={}
	tSmallBestDrop_Reward["level120"]["clothes"][6]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level120"]["clothes"][6]["ItemChance"] =200
	tSmallBestDrop_Reward["level120"]["clothes"][6]["Item_1"] =136100
	tSmallBestDrop_Reward["level120"]["clothes"][7]={}
	tSmallBestDrop_Reward["level120"]["clothes"][7]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level120"]["clothes"][7]["ItemChance"] =200
	tSmallBestDrop_Reward["level120"]["clothes"][7]["Item_1"] =139100
	tSmallBestDrop_Reward["level120"]["clothes"][8]={}
	tSmallBestDrop_Reward["level120"]["clothes"][8]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level120"]["clothes"][8]["ItemChance"] =200
	tSmallBestDrop_Reward["level120"]["clothes"][8]["Item_1"] =138100
	tSmallBestDrop_Reward["level120"]["clothes"][9]={}
	tSmallBestDrop_Reward["level120"]["clothes"][9]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level120"]["clothes"][9]["ItemChance"] =200
	tSmallBestDrop_Reward["level120"]["clothes"][9]["Item_1"] =101100
	tSmallBestDrop_Reward["level120"]["clothes"][10]={}
	tSmallBestDrop_Reward["level120"]["clothes"][10]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level120"]["clothes"][10]["ItemChance"] =200
	tSmallBestDrop_Reward["level120"]["clothes"][10]["Item_1"] =102100
	
	
	--120~129级帽子
	tSmallBestDrop_Reward["level120"]["cap"]={}
	tSmallBestDrop_Reward["level120"]["cap"]["ItemChanceSum"]=2000
	tSmallBestDrop_Reward["level120"]["cap"][1]={}
	tSmallBestDrop_Reward["level120"]["cap"][1]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level120"]["cap"][1]["ItemChance"] =182
	tSmallBestDrop_Reward["level120"]["cap"][1]["Item_1"] =118100
	tSmallBestDrop_Reward["level120"]["cap"][2]={}
	tSmallBestDrop_Reward["level120"]["cap"][2]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level120"]["cap"][2]["ItemChance"] =182
	tSmallBestDrop_Reward["level120"]["cap"][2]["Item_1"] =141100
	tSmallBestDrop_Reward["level120"]["cap"][3]={}
	tSmallBestDrop_Reward["level120"]["cap"][3]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level120"]["cap"][3]["ItemChance"] =182
	tSmallBestDrop_Reward["level120"]["cap"][3]["Item_1"] =142100
	tSmallBestDrop_Reward["level120"]["cap"][4]={}
	tSmallBestDrop_Reward["level120"]["cap"][4]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level120"]["cap"][4]["ItemChance"] =182
	tSmallBestDrop_Reward["level120"]["cap"][4]["Item_1"] =117100
	tSmallBestDrop_Reward["level120"]["cap"][5]={}
	tSmallBestDrop_Reward["level120"]["cap"][5]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level120"]["cap"][5]["ItemChance"] =182
	tSmallBestDrop_Reward["level120"]["cap"][5]["Item_1"] =123100
	tSmallBestDrop_Reward["level120"]["cap"][6]={}
	tSmallBestDrop_Reward["level120"]["cap"][6]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level120"]["cap"][6]["ItemChance"] =182
	tSmallBestDrop_Reward["level120"]["cap"][6]["Item_1"] =143100
	tSmallBestDrop_Reward["level120"]["cap"][7]={}
	tSmallBestDrop_Reward["level120"]["cap"][7]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level120"]["cap"][7]["ItemChance"] =182
	tSmallBestDrop_Reward["level120"]["cap"][7]["Item_1"] =145100
	tSmallBestDrop_Reward["level120"]["cap"][8]={}
	tSmallBestDrop_Reward["level120"]["cap"][8]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level120"]["cap"][8]["ItemChance"] =182
	tSmallBestDrop_Reward["level120"]["cap"][8]["Item_1"] =148100
	tSmallBestDrop_Reward["level120"]["cap"][9]={}
	tSmallBestDrop_Reward["level120"]["cap"][9]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level120"]["cap"][9]["ItemChance"] =182
	tSmallBestDrop_Reward["level120"]["cap"][9]["Item_1"] =170100
	tSmallBestDrop_Reward["level120"]["cap"][10]={}
	tSmallBestDrop_Reward["level120"]["cap"][10]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level120"]["cap"][10]["ItemChance"] =182
	tSmallBestDrop_Reward["level120"]["cap"][10]["Item_1"] =146100
	tSmallBestDrop_Reward["level120"]["cap"][11]={}
	tSmallBestDrop_Reward["level120"]["cap"][11]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level120"]["cap"][11]["ItemChance"] =180
	tSmallBestDrop_Reward["level120"]["cap"][11]["Item_1"] =147100
	
	
	--120~129级盾牌
	tSmallBestDrop_Reward["level120"]["shield"]={}
	tSmallBestDrop_Reward["level120"]["shield"]["ItemChanceSum"]=200
	tSmallBestDrop_Reward["level120"]["shield"][1]={}
	tSmallBestDrop_Reward["level120"]["shield"][1]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level120"]["shield"][1]["ItemChance"] =200
	tSmallBestDrop_Reward["level120"]["shield"][1]["Item_1"] =900100
	--120~129级项链
	tSmallBestDrop_Reward["level120"]["neck"]={}
	tSmallBestDrop_Reward["level120"]["neck"]["ItemChanceSum"]=400
	tSmallBestDrop_Reward["level120"]["neck"][1]={}
	tSmallBestDrop_Reward["level120"]["neck"][1]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level120"]["neck"][1]["ItemChance"] =400
	tSmallBestDrop_Reward["level120"]["neck"][1]["Item_1"] =120220
	--120~129级香囊
	tSmallBestDrop_Reward["level120"]["sachet"]={}
	tSmallBestDrop_Reward["level120"]["sachet"]["ItemChanceSum"]=200
	tSmallBestDrop_Reward["level120"]["sachet"][1]={}
	tSmallBestDrop_Reward["level120"]["sachet"][1]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level120"]["sachet"][1]["ItemChance"] =200
	tSmallBestDrop_Reward["level120"]["sachet"][1]["Item_1"] =121230
	--120~129级戒指
	tSmallBestDrop_Reward["level120"]["ring"]={}
	tSmallBestDrop_Reward["level120"]["ring"]["ItemChanceSum"]=400
	tSmallBestDrop_Reward["level120"]["ring"][1]={}
	tSmallBestDrop_Reward["level120"]["ring"][1]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level120"]["ring"][1]["ItemChance"] =400
	tSmallBestDrop_Reward["level120"]["ring"][1]["Item_1"] =150230
	--120~129级手镯
	tSmallBestDrop_Reward["level120"]["bangle"]={}
	tSmallBestDrop_Reward["level120"]["bangle"]["ItemChanceSum"]=200
	tSmallBestDrop_Reward["level120"]["bangle"][1]={}
	tSmallBestDrop_Reward["level120"]["bangle"][1]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level120"]["bangle"][1]["ItemChance"] =200
	tSmallBestDrop_Reward["level120"]["bangle"][1]["Item_1"] =152240
	--120~129级靴子
	tSmallBestDrop_Reward["level120"]["shoes"]={}
	tSmallBestDrop_Reward["level120"]["shoes"]["ItemChanceSum"]=500
	tSmallBestDrop_Reward["level120"]["shoes"][1]={}
	tSmallBestDrop_Reward["level120"]["shoes"][1]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level120"]["shoes"][1]["ItemChance"] =500
	tSmallBestDrop_Reward["level120"]["shoes"][1]["Item_1"] =160220
	
	
	tSmallBestDrop_Reward["level130"]={}
	--130级以上武器
	tSmallBestDrop_Reward["level130"]["weapon"]={}
	tSmallBestDrop_Reward["level130"]["weapon"]["ItemChanceSum"]=4100
	tSmallBestDrop_Reward["level130"]["weapon"][1]={}
	tSmallBestDrop_Reward["level130"]["weapon"][1]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level130"]["weapon"][1]["ItemChance"] =270
	tSmallBestDrop_Reward["level130"]["weapon"][1]["Item_1"] =410330
	tSmallBestDrop_Reward["level130"]["weapon"][2]={}
	tSmallBestDrop_Reward["level130"]["weapon"][2]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level130"]["weapon"][2]["ItemChance"] =270
	tSmallBestDrop_Reward["level130"]["weapon"][2]["Item_1"] =420330
	tSmallBestDrop_Reward["level130"]["weapon"][3]={}
	tSmallBestDrop_Reward["level130"]["weapon"][3]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level130"]["weapon"][3]["ItemChance"] =270
	tSmallBestDrop_Reward["level130"]["weapon"][3]["Item_1"] =480330
	tSmallBestDrop_Reward["level130"]["weapon"][4]={}
	tSmallBestDrop_Reward["level130"]["weapon"][4]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level130"]["weapon"][4]["ItemChance"] =270
	tSmallBestDrop_Reward["level130"]["weapon"][4]["Item_1"] =490330
	tSmallBestDrop_Reward["level130"]["weapon"][5]={}
	tSmallBestDrop_Reward["level130"]["weapon"][5]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level130"]["weapon"][5]["ItemChance"] =150
	tSmallBestDrop_Reward["level130"]["weapon"][5]["Item_1"] =560330
	tSmallBestDrop_Reward["level130"]["weapon"][6]={}
	tSmallBestDrop_Reward["level130"]["weapon"][6]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level130"]["weapon"][6]["ItemChance"] =150
	tSmallBestDrop_Reward["level130"]["weapon"][6]["Item_1"] =561330
	tSmallBestDrop_Reward["level130"]["weapon"][7]={}
	tSmallBestDrop_Reward["level130"]["weapon"][7]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level130"]["weapon"][7]["ItemChance"] =270
	tSmallBestDrop_Reward["level130"]["weapon"][7]["Item_1"] =624330
	tSmallBestDrop_Reward["level130"]["weapon"][8]={}
	tSmallBestDrop_Reward["level130"]["weapon"][8]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level130"]["weapon"][8]["ItemChance"] =160
	tSmallBestDrop_Reward["level130"]["weapon"][8]["Item_1"] =421330
	tSmallBestDrop_Reward["level130"]["weapon"][9]={}
	tSmallBestDrop_Reward["level130"]["weapon"][9]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level130"]["weapon"][9]["ItemChance"] =40
	tSmallBestDrop_Reward["level130"]["weapon"][9]["Item_1"] =619330
	tSmallBestDrop_Reward["level130"]["weapon"][10]={}
	tSmallBestDrop_Reward["level130"]["weapon"][10]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level130"]["weapon"][10]["ItemChance"] =150
	tSmallBestDrop_Reward["level130"]["weapon"][10]["Item_1"] =500320
	tSmallBestDrop_Reward["level130"]["weapon"][11]={}
	tSmallBestDrop_Reward["level130"]["weapon"][11]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level130"]["weapon"][11]["ItemChance"] =270
	tSmallBestDrop_Reward["level130"]["weapon"][11]["Item_1"] =613320
	tSmallBestDrop_Reward["level130"]["weapon"][12]={}
	tSmallBestDrop_Reward["level130"]["weapon"][12]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level130"]["weapon"][12]["ItemChance"] =150
	tSmallBestDrop_Reward["level130"]["weapon"][12]["Item_1"] =511330
	tSmallBestDrop_Reward["level130"]["weapon"][13]={}
	tSmallBestDrop_Reward["level130"]["weapon"][13]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level130"]["weapon"][13]["ItemChance"] =270
	tSmallBestDrop_Reward["level130"]["weapon"][13]["Item_1"] =601330
	tSmallBestDrop_Reward["level130"]["weapon"][14]={}
	tSmallBestDrop_Reward["level130"]["weapon"][14]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level130"]["weapon"][14]["ItemChance"] =270
	tSmallBestDrop_Reward["level130"]["weapon"][14]["Item_1"] =610330
	tSmallBestDrop_Reward["level130"]["weapon"][15]={}
	tSmallBestDrop_Reward["level130"]["weapon"][15]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level130"]["weapon"][15]["ItemChance"] =150
	tSmallBestDrop_Reward["level130"]["weapon"][15]["Item_1"] =611330
	tSmallBestDrop_Reward["level130"]["weapon"][16]={}
	tSmallBestDrop_Reward["level130"]["weapon"][16]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level130"]["weapon"][16]["ItemChance"] =150
	tSmallBestDrop_Reward["level130"]["weapon"][16]["Item_1"] =612330
	tSmallBestDrop_Reward["level130"]["weapon"][17]={}
	tSmallBestDrop_Reward["level130"]["weapon"][17]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level130"]["weapon"][17]["ItemChance"] =270
	tSmallBestDrop_Reward["level130"]["weapon"][17]["Item_1"] =617330
	tSmallBestDrop_Reward["level130"]["weapon"][18]={}
	tSmallBestDrop_Reward["level130"]["weapon"][18]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level130"]["weapon"][18]["ItemChance"] =270
	tSmallBestDrop_Reward["level130"]["weapon"][18]["Item_1"] =626330
	tSmallBestDrop_Reward["level130"]["weapon"][19]={}
	tSmallBestDrop_Reward["level130"]["weapon"][19]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level130"]["weapon"][19]["ItemChance"] =150
	tSmallBestDrop_Reward["level130"]["weapon"][19]["Item_1"] =681330
	tSmallBestDrop_Reward["level130"]["weapon"][20]={}
	tSmallBestDrop_Reward["level130"]["weapon"][20]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level130"]["weapon"][20]["ItemChance"] =150
	tSmallBestDrop_Reward["level130"]["weapon"][20]["Item_1"] =680330
	tSmallBestDrop_Reward["level130"]["weapon"][21]={}
	tSmallBestDrop_Reward["level130"]["weapon"][21]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level130"]["weapon"][21]["ItemChance"] =0
	tSmallBestDrop_Reward["level130"]["weapon"][21]["Item_1"] =614330
	tSmallBestDrop_Reward["level130"]["weapon"][22]={}
	tSmallBestDrop_Reward["level130"]["weapon"][22]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level130"]["weapon"][22]["ItemChance"] =0
	tSmallBestDrop_Reward["level130"]["weapon"][22]["Item_1"] =616330
	tSmallBestDrop_Reward["level130"]["weapon"][23]={}
	tSmallBestDrop_Reward["level130"]["weapon"][23]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level130"]["weapon"][23]["ItemChance"] =0
	tSmallBestDrop_Reward["level130"]["weapon"][23]["Item_1"] =620330
	tSmallBestDrop_Reward["level130"]["weapon"][24]={}
	tSmallBestDrop_Reward["level130"]["weapon"][24]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level130"]["weapon"][24]["ItemChance"] =0
	tSmallBestDrop_Reward["level130"]["weapon"][24]["Item_1"] =622330
	tSmallBestDrop_Reward["level130"]["weapon"][25]={}
	tSmallBestDrop_Reward["level130"]["weapon"][25]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level130"]["weapon"][25]["ItemChance"] =0
	tSmallBestDrop_Reward["level130"]["weapon"][25]["Item_1"] =670330
	tSmallBestDrop_Reward["level130"]["weapon"][26]={}
	tSmallBestDrop_Reward["level130"]["weapon"][26]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level130"]["weapon"][26]["ItemChance"] =0
	tSmallBestDrop_Reward["level130"]["weapon"][26]["Item_1"] =671330
	
	--130级以上衣服
	tSmallBestDrop_Reward["level130"]["clothes"]={}
	tSmallBestDrop_Reward["level130"]["clothes"]["ItemChanceSum"]=2000
	tSmallBestDrop_Reward["level130"]["clothes"][1]={}
	tSmallBestDrop_Reward["level130"]["clothes"][1]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level130"]["clothes"][1]["ItemChance"] =200
	tSmallBestDrop_Reward["level130"]["clothes"][1]["Item_1"] =130200
	tSmallBestDrop_Reward["level130"]["clothes"][2]={}
	tSmallBestDrop_Reward["level130"]["clothes"][2]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level130"]["clothes"][2]["ItemChance"] =200
	tSmallBestDrop_Reward["level130"]["clothes"][2]["Item_1"] =131200
	tSmallBestDrop_Reward["level130"]["clothes"][3]={}
	tSmallBestDrop_Reward["level130"]["clothes"][3]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level130"]["clothes"][3]["ItemChance"] =200
	tSmallBestDrop_Reward["level130"]["clothes"][3]["Item_1"] =133200
	tSmallBestDrop_Reward["level130"]["clothes"][4]={}
	tSmallBestDrop_Reward["level130"]["clothes"][4]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level130"]["clothes"][4]["ItemChance"] =200
	tSmallBestDrop_Reward["level130"]["clothes"][4]["Item_1"] =134200
	tSmallBestDrop_Reward["level130"]["clothes"][5]={}
	tSmallBestDrop_Reward["level130"]["clothes"][5]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level130"]["clothes"][5]["ItemChance"] =200
	tSmallBestDrop_Reward["level130"]["clothes"][5]["Item_1"] =135200
	tSmallBestDrop_Reward["level130"]["clothes"][6]={}
	tSmallBestDrop_Reward["level130"]["clothes"][6]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level130"]["clothes"][6]["ItemChance"] =200
	tSmallBestDrop_Reward["level130"]["clothes"][6]["Item_1"] =136200
	tSmallBestDrop_Reward["level130"]["clothes"][7]={}
	tSmallBestDrop_Reward["level130"]["clothes"][7]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level130"]["clothes"][7]["ItemChance"] =200
	tSmallBestDrop_Reward["level130"]["clothes"][7]["Item_1"] =139200
	tSmallBestDrop_Reward["level130"]["clothes"][8]={}
	tSmallBestDrop_Reward["level130"]["clothes"][8]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level130"]["clothes"][8]["ItemChance"] =200
	tSmallBestDrop_Reward["level130"]["clothes"][8]["Item_1"] =138200
	tSmallBestDrop_Reward["level130"]["clothes"][9]={}
	tSmallBestDrop_Reward["level130"]["clothes"][9]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level130"]["clothes"][9]["ItemChance"] =200
	tSmallBestDrop_Reward["level130"]["clothes"][9]["Item_1"] =101200
	tSmallBestDrop_Reward["level130"]["clothes"][10]={}
	tSmallBestDrop_Reward["level130"]["clothes"][10]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level130"]["clothes"][10]["ItemChance"] =200
	tSmallBestDrop_Reward["level130"]["clothes"][10]["Item_1"] =102200
	
	--130级以上帽子
	tSmallBestDrop_Reward["level130"]["cap"]={}
	tSmallBestDrop_Reward["level130"]["cap"]["ItemChanceSum"]=2000
	tSmallBestDrop_Reward["level130"]["cap"][1]={}
	tSmallBestDrop_Reward["level130"]["cap"][1]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level130"]["cap"][1]["ItemChance"] =182
	tSmallBestDrop_Reward["level130"]["cap"][1]["Item_1"] =118200
	tSmallBestDrop_Reward["level130"]["cap"][2]={}
	tSmallBestDrop_Reward["level130"]["cap"][2]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level130"]["cap"][2]["ItemChance"] =182
	tSmallBestDrop_Reward["level130"]["cap"][2]["Item_1"] =141200
	tSmallBestDrop_Reward["level130"]["cap"][3]={}
	tSmallBestDrop_Reward["level130"]["cap"][3]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level130"]["cap"][3]["ItemChance"] =182
	tSmallBestDrop_Reward["level130"]["cap"][3]["Item_1"] =142200
	tSmallBestDrop_Reward["level130"]["cap"][4]={}
	tSmallBestDrop_Reward["level130"]["cap"][4]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level130"]["cap"][4]["ItemChance"] =182
	tSmallBestDrop_Reward["level130"]["cap"][4]["Item_1"] =117200
	tSmallBestDrop_Reward["level130"]["cap"][5]={}
	tSmallBestDrop_Reward["level130"]["cap"][5]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level130"]["cap"][5]["ItemChance"] =182
	tSmallBestDrop_Reward["level130"]["cap"][5]["Item_1"] =123200
	tSmallBestDrop_Reward["level130"]["cap"][6]={}
	tSmallBestDrop_Reward["level130"]["cap"][6]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level130"]["cap"][6]["ItemChance"] =182
	tSmallBestDrop_Reward["level130"]["cap"][6]["Item_1"] =143200
	tSmallBestDrop_Reward["level130"]["cap"][7]={}
	tSmallBestDrop_Reward["level130"]["cap"][7]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level130"]["cap"][7]["ItemChance"] =182
	tSmallBestDrop_Reward["level130"]["cap"][7]["Item_1"] =145200
	tSmallBestDrop_Reward["level130"]["cap"][8]={}
	tSmallBestDrop_Reward["level130"]["cap"][8]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level130"]["cap"][8]["ItemChance"] =182
	tSmallBestDrop_Reward["level130"]["cap"][8]["Item_1"] =148200
	tSmallBestDrop_Reward["level130"]["cap"][9]={}
	tSmallBestDrop_Reward["level130"]["cap"][9]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level130"]["cap"][9]["ItemChance"] =182
	tSmallBestDrop_Reward["level130"]["cap"][9]["Item_1"] =170200
	tSmallBestDrop_Reward["level130"]["cap"][10]={}
	tSmallBestDrop_Reward["level130"]["cap"][10]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level130"]["cap"][10]["ItemChance"] =182
	tSmallBestDrop_Reward["level130"]["cap"][10]["Item_1"] =146200
	tSmallBestDrop_Reward["level130"]["cap"][11]={}
	tSmallBestDrop_Reward["level130"]["cap"][11]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level130"]["cap"][11]["ItemChance"] =180
	tSmallBestDrop_Reward["level130"]["cap"][11]["Item_1"] =147200
	--130级盾牌
	tSmallBestDrop_Reward["level130"]["shield"]={}
	tSmallBestDrop_Reward["level130"]["shield"]["ItemChanceSum"]=200
	tSmallBestDrop_Reward["level130"]["shield"][1]={}
	tSmallBestDrop_Reward["level130"]["shield"][1]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level130"]["shield"][1]["ItemChance"] =200
	tSmallBestDrop_Reward["level130"]["shield"][1]["Item_1"] =900200
	--120~129级项链
	tSmallBestDrop_Reward["level130"]["neck"]={}
	tSmallBestDrop_Reward["level130"]["neck"]["ItemChanceSum"]=400
	tSmallBestDrop_Reward["level130"]["neck"][1]={}
	tSmallBestDrop_Reward["level130"]["neck"][1]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level130"]["neck"][1]["ItemChance"] =400
	tSmallBestDrop_Reward["level130"]["neck"][1]["Item_1"] =120220
	--120~129级香囊
	tSmallBestDrop_Reward["level130"]["sachet"]={}
	tSmallBestDrop_Reward["level130"]["sachet"]["ItemChanceSum"]=200
	tSmallBestDrop_Reward["level130"]["sachet"][1]={}
	tSmallBestDrop_Reward["level130"]["sachet"][1]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level130"]["sachet"][1]["ItemChance"] =200
	tSmallBestDrop_Reward["level130"]["sachet"][1]["Item_1"] =121230
	--120~129级戒指
	tSmallBestDrop_Reward["level130"]["ring"]={}
	tSmallBestDrop_Reward["level130"]["ring"]["ItemChanceSum"]=400
	tSmallBestDrop_Reward["level130"]["ring"][1]={}
	tSmallBestDrop_Reward["level130"]["ring"][1]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level130"]["ring"][1]["ItemChance"] =400
	tSmallBestDrop_Reward["level130"]["ring"][1]["Item_1"] =150230
	--120~129级手镯
	tSmallBestDrop_Reward["level130"]["bangle"]={}
	tSmallBestDrop_Reward["level130"]["bangle"]["ItemChanceSum"]=200
	tSmallBestDrop_Reward["level130"]["bangle"][1]={}
	tSmallBestDrop_Reward["level130"]["bangle"][1]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level130"]["bangle"][1]["ItemChance"] =200
	tSmallBestDrop_Reward["level130"]["bangle"][1]["Item_1"] =152240
	--120~129级靴子
	tSmallBestDrop_Reward["level130"]["shoes"]={}
	tSmallBestDrop_Reward["level130"]["shoes"]["ItemChanceSum"]=500
	tSmallBestDrop_Reward["level130"]["shoes"][1]={}
	tSmallBestDrop_Reward["level130"]["shoes"][1]["RandomItemChanceType"] =2
	tSmallBestDrop_Reward["level130"]["shoes"][1]["ItemChance"] =500
	tSmallBestDrop_Reward["level130"]["shoes"][1]["Item_1"] =160220
	
	--npc奖励
	tSmallBestDrop_Reward["Box"]={}
	tSmallBestDrop_Reward["Box"][1]={}
	tSmallBestDrop_Reward["Box"][1]["ItemChanceSum"]=10000
	tSmallBestDrop_Reward["Box"][1][1]={}
	tSmallBestDrop_Reward["Box"][1][1]["RandomItemChanceType"] = 2
	tSmallBestDrop_Reward["Box"][1][1]["ItemChance"] = 1000
	tSmallBestDrop_Reward["Box"][1][1]["Item_1"] = 723715
	tSmallBestDrop_Reward["Box"][1][1]["Attr"] ="0 1"
	tSmallBestDrop_Reward["Box"][1][2]={}
	tSmallBestDrop_Reward["Box"][1][2]["RandomItemChanceType"] = 2
	tSmallBestDrop_Reward["Box"][1][2]["ItemChance"] = 50
	tSmallBestDrop_Reward["Box"][1][2]["Item_1"] = 723717
	tSmallBestDrop_Reward["Box"][1][2]["Attr"] ="0 1"
	tSmallBestDrop_Reward["Box"][1][2]["Broast"] =1
	tSmallBestDrop_Reward["Box"][1][3]={}
	tSmallBestDrop_Reward["Box"][1][3]["RandomItemChanceType"] = 2
	tSmallBestDrop_Reward["Box"][1][3]["ItemChance"] = 1100
	tSmallBestDrop_Reward["Box"][1][3]["Item_1"] = 723342
	tSmallBestDrop_Reward["Box"][1][3]["Attr"] ="0 1"
	tSmallBestDrop_Reward["Box"][1][4]={}
	tSmallBestDrop_Reward["Box"][1][4]["RandomItemChanceType"] = 2
	tSmallBestDrop_Reward["Box"][1][4]["ItemChance"] = 1200
	tSmallBestDrop_Reward["Box"][1][4]["Item_1"] = "GoodGem"--良品宝石
	tSmallBestDrop_Reward["Box"][1][4]["Attr"] ="0 1"
	tSmallBestDrop_Reward["Box"][1][5]={}
	tSmallBestDrop_Reward["Box"][1][5]["RandomItemChanceType"] = 2
	tSmallBestDrop_Reward["Box"][1][5]["ItemChance"] = 50
	tSmallBestDrop_Reward["Box"][1][5]["Item_1"] = "BestGem"--优质宝石
	tSmallBestDrop_Reward["Box"][1][5]["Attr"] ="0 1"
	tSmallBestDrop_Reward["Box"][1][5]["GlobalId"] =53114
	tSmallBestDrop_Reward["Box"][1][5]["Pos"] =0
	tSmallBestDrop_Reward["Box"][1][5]["MaxData"] =3
	tSmallBestDrop_Reward["Box"][1][5]["FullIndex"] =4
	tSmallBestDrop_Reward["Box"][1][5]["Broast"] =1
	tSmallBestDrop_Reward["Box"][1][6]={}
	tSmallBestDrop_Reward["Box"][1][6]["RandomItemChanceType"] = 2
	tSmallBestDrop_Reward["Box"][1][6]["ItemChance"] = 800
	tSmallBestDrop_Reward["Box"][1][6]["Item_1"] =720027
	tSmallBestDrop_Reward["Box"][1][6]["Attr"] ="0 1"
	tSmallBestDrop_Reward["Box"][1][7]={}
	tSmallBestDrop_Reward["Box"][1][7]["RandomItemChanceType"] = 2
	tSmallBestDrop_Reward["Box"][1][7]["ItemChance"] = 50
	tSmallBestDrop_Reward["Box"][1][7]["Item_1"] =1088000
	tSmallBestDrop_Reward["Box"][1][7]["Attr"] ="0 1"
	tSmallBestDrop_Reward["Box"][1][7]["GlobalId"] =53114
	tSmallBestDrop_Reward["Box"][1][7]["Pos"] =1
	tSmallBestDrop_Reward["Box"][1][7]["MaxData"] =3
	tSmallBestDrop_Reward["Box"][1][7]["FullIndex"] =6
	tSmallBestDrop_Reward["Box"][1][7]["Broast"] =1
	tSmallBestDrop_Reward["Box"][1][8]={}
	tSmallBestDrop_Reward["Box"][1][8]["RandomItemChanceType"] = 2
	tSmallBestDrop_Reward["Box"][1][8]["ItemChance"] = 1000
	tSmallBestDrop_Reward["Box"][1][8]["Item_1"] =730003
	tSmallBestDrop_Reward["Box"][1][8]["Attr"] ="0 1 0 10080 1"
	tSmallBestDrop_Reward["Box"][1][9]={}
	tSmallBestDrop_Reward["Box"][1][9]["RandomItemChanceType"] = 2
	tSmallBestDrop_Reward["Box"][1][9]["ItemChance"] = 200
	tSmallBestDrop_Reward["Box"][1][9]["Item_1"] =730004
	tSmallBestDrop_Reward["Box"][1][9]["Attr"] ="0 1 0 10080 1"
	tSmallBestDrop_Reward["Box"][1][10]={}
	tSmallBestDrop_Reward["Box"][1][10]["RandomItemChanceType"] = 2
	tSmallBestDrop_Reward["Box"][1][10]["ItemChance"] = 50
	tSmallBestDrop_Reward["Box"][1][10]["Item_1"] =730005
	tSmallBestDrop_Reward["Box"][1][10]["Attr"] ="0 1 0 10080 1"
	tSmallBestDrop_Reward["Box"][1][10]["GlobalId"] =53114
	tSmallBestDrop_Reward["Box"][1][10]["Pos"] =2
	tSmallBestDrop_Reward["Box"][1][10]["MaxData"] =3
	tSmallBestDrop_Reward["Box"][1][10]["FullIndex"] =8
	tSmallBestDrop_Reward["Box"][1][10]["Broast"] =1
	tSmallBestDrop_Reward["Box"][1][11]={}
	tSmallBestDrop_Reward["Box"][1][11]["RandomItemChanceType"] = 2
	tSmallBestDrop_Reward["Box"][1][11]["ItemChance"] = 300
	tSmallBestDrop_Reward["Box"][1][11]["Item_1"] =3307146
	tSmallBestDrop_Reward["Box"][1][11]["Attr"] ="0 1"
	tSmallBestDrop_Reward["Box"][1][12]={}
	tSmallBestDrop_Reward["Box"][1][12]["RandomItemChanceType"] = 2
	tSmallBestDrop_Reward["Box"][1][12]["ItemChance"] = 200
	tSmallBestDrop_Reward["Box"][1][12]["Item_1"] =3004895
	tSmallBestDrop_Reward["Box"][1][12]["Attr"] ="0 1"
	tSmallBestDrop_Reward["Box"][1][13]={}
	tSmallBestDrop_Reward["Box"][1][13]["RandomItemChanceType"] = 2
	tSmallBestDrop_Reward["Box"][1][13]["ItemChance"] = 200
	tSmallBestDrop_Reward["Box"][1][13]["Item_1"] =3004898
	tSmallBestDrop_Reward["Box"][1][13]["Attr"] ="0 1"
	tSmallBestDrop_Reward["Box"][1][14]={}
	tSmallBestDrop_Reward["Box"][1][14]["RandomItemChanceType"] = 2
	tSmallBestDrop_Reward["Box"][1][14]["ItemChance"] = 200
	tSmallBestDrop_Reward["Box"][1][14]["Item_1"] =3004896
	tSmallBestDrop_Reward["Box"][1][14]["Attr"] ="0 1"
	tSmallBestDrop_Reward["Box"][1][15]={}
	tSmallBestDrop_Reward["Box"][1][15]["RandomItemChanceType"] = 2
	tSmallBestDrop_Reward["Box"][1][15]["ItemChance"] = 200
	tSmallBestDrop_Reward["Box"][1][15]["Item_1"] =3004897
	tSmallBestDrop_Reward["Box"][1][15]["Attr"] ="0 1"
	tSmallBestDrop_Reward["Box"][1][16]={}
	tSmallBestDrop_Reward["Box"][1][16]["RandomItemChanceType"] = 2
	tSmallBestDrop_Reward["Box"][1][16]["ItemChance"] = 1000
	tSmallBestDrop_Reward["Box"][1][16]["Item_1"] =729242
	tSmallBestDrop_Reward["Box"][1][16]["Attr"] ="0 1"
	tSmallBestDrop_Reward["Box"][1][17]={}
	tSmallBestDrop_Reward["Box"][1][17]["RandomItemChanceType"] = 2
	tSmallBestDrop_Reward["Box"][1][17]["ItemChance"] = 200
	tSmallBestDrop_Reward["Box"][1][17]["Item_1"] =3008193
	tSmallBestDrop_Reward["Box"][1][17]["Attr"] ="0 1"
	tSmallBestDrop_Reward["Box"][1][18]={}
	tSmallBestDrop_Reward["Box"][1][18]["RandomItemChanceType"] = 2
	tSmallBestDrop_Reward["Box"][1][18]["ItemChance"] = 50
	tSmallBestDrop_Reward["Box"][1][18]["Item_1"] =3008198
	tSmallBestDrop_Reward["Box"][1][18]["Attr"] ="0 1"
	tSmallBestDrop_Reward["Box"][1][18]["Broast"] =1
	tSmallBestDrop_Reward["Box"][1][19]={}
	tSmallBestDrop_Reward["Box"][1][19]["RandomItemChanceType"] = 2
	tSmallBestDrop_Reward["Box"][1][19]["ItemChance"] = 1000
	tSmallBestDrop_Reward["Box"][1][19]["Item_1"] =721316
	tSmallBestDrop_Reward["Box"][1][19]["Attr"] ="0 1"
	tSmallBestDrop_Reward["Box"][1][20]={}
	tSmallBestDrop_Reward["Box"][1][20]["RandomItemChanceType"] = 2
	tSmallBestDrop_Reward["Box"][1][20]["ItemChance"] = 100
	tSmallBestDrop_Reward["Box"][1][20]["Item_1"] =728596
	tSmallBestDrop_Reward["Box"][1][20]["Attr"] ="0 1"
	tSmallBestDrop_Reward["Box"][1][20]["Broast"] =1
	tSmallBestDrop_Reward["Box"][1][21]={}
	tSmallBestDrop_Reward["Box"][1][21]["RandomItemChanceType"] = 2
	tSmallBestDrop_Reward["Box"][1][21]["ItemChance"] = 50
	tSmallBestDrop_Reward["Box"][1][21]["Item_1"] =3304327
	tSmallBestDrop_Reward["Box"][1][21]["Attr"] ="0 1 0 2880 1"
	tSmallBestDrop_Reward["Box"][1][21]["Broast"] =1
	tSmallBestDrop_Reward["Box"][1][22]={}
	tSmallBestDrop_Reward["Box"][1][22]["RandomItemChanceType"] = 2
	tSmallBestDrop_Reward["Box"][1][22]["ItemChance"] = 1000
	tSmallBestDrop_Reward["Box"][1][22]["Item_1"] =3311720
	tSmallBestDrop_Reward["Box"][1][22]["Attr"] ="0 10"
	
	tSmallBestDrop_Reward["Box"][2]={}
	tSmallBestDrop_Reward["Box"][2]["ItemChanceSum"]=10000
	tSmallBestDrop_Reward["Box"][2][1]={}
	tSmallBestDrop_Reward["Box"][2][1]["RandomItemChanceType"] = 2
	tSmallBestDrop_Reward["Box"][2][1]["ItemChance"] = 1000
	tSmallBestDrop_Reward["Box"][2][1]["Item_1"] = 723715
	tSmallBestDrop_Reward["Box"][2][1]["Attr"] ="0 2"
	tSmallBestDrop_Reward["Box"][2][2]={}
	tSmallBestDrop_Reward["Box"][2][2]["RandomItemChanceType"] = 2
	tSmallBestDrop_Reward["Box"][2][2]["ItemChance"] = 50
	tSmallBestDrop_Reward["Box"][2][2]["Item_1"] = 723717
	tSmallBestDrop_Reward["Box"][2][2]["Attr"] ="0 2"
	tSmallBestDrop_Reward["Box"][2][2]["Broast"] =1
	tSmallBestDrop_Reward["Box"][2][3]={}
	tSmallBestDrop_Reward["Box"][2][3]["RandomItemChanceType"] = 2
	tSmallBestDrop_Reward["Box"][2][3]["ItemChance"] = 1100
	tSmallBestDrop_Reward["Box"][2][3]["Item_1"] = 723342
	tSmallBestDrop_Reward["Box"][2][3]["Attr"] ="0 2"
	tSmallBestDrop_Reward["Box"][2][4]={}
	tSmallBestDrop_Reward["Box"][2][4]["RandomItemChanceType"] = 2
	tSmallBestDrop_Reward["Box"][2][4]["ItemChance"] = 1200
	tSmallBestDrop_Reward["Box"][2][4]["Item_1"] = "GoodGem"--良品宝石
	tSmallBestDrop_Reward["Box"][2][4]["Attr"] ="0 2"
	tSmallBestDrop_Reward["Box"][2][5]={}
	tSmallBestDrop_Reward["Box"][2][5]["RandomItemChanceType"] = 2
	tSmallBestDrop_Reward["Box"][2][5]["ItemChance"] = 50
	tSmallBestDrop_Reward["Box"][2][5]["Item_1"] = "BestGem"--优质宝石
	tSmallBestDrop_Reward["Box"][2][5]["Attr"] ="0 2"
	tSmallBestDrop_Reward["Box"][2][5]["GlobalId"] =53114
	tSmallBestDrop_Reward["Box"][2][5]["Pos"] =0
	tSmallBestDrop_Reward["Box"][2][5]["MaxData"] =3
	tSmallBestDrop_Reward["Box"][2][5]["FullIndex"] =4
	tSmallBestDrop_Reward["Box"][2][5]["Broast"] =1
	tSmallBestDrop_Reward["Box"][2][6]={}
	tSmallBestDrop_Reward["Box"][2][6]["RandomItemChanceType"] = 2
	tSmallBestDrop_Reward["Box"][2][6]["ItemChance"] = 800
	tSmallBestDrop_Reward["Box"][2][6]["Item_1"] =720027
	tSmallBestDrop_Reward["Box"][2][6]["Attr"] ="0 2"
	tSmallBestDrop_Reward["Box"][2][7]={}
	tSmallBestDrop_Reward["Box"][2][7]["RandomItemChanceType"] = 2
	tSmallBestDrop_Reward["Box"][2][7]["ItemChance"] = 50
	tSmallBestDrop_Reward["Box"][2][7]["Item_1"] =1088000
	tSmallBestDrop_Reward["Box"][2][7]["Attr"] ="0 2"
	tSmallBestDrop_Reward["Box"][2][7]["GlobalId"] =53114
	tSmallBestDrop_Reward["Box"][2][7]["Pos"] =1
	tSmallBestDrop_Reward["Box"][2][7]["MaxData"] =3
	tSmallBestDrop_Reward["Box"][2][7]["FullIndex"] =6
	tSmallBestDrop_Reward["Box"][2][7]["Broast"] =1
	tSmallBestDrop_Reward["Box"][2][8]={}
	tSmallBestDrop_Reward["Box"][2][8]["RandomItemChanceType"] = 2
	tSmallBestDrop_Reward["Box"][2][8]["ItemChance"] = 1000
	tSmallBestDrop_Reward["Box"][2][8]["Item_1"] =730003
	tSmallBestDrop_Reward["Box"][2][8]["Attr"] ="0 2 0 10080 1"
	tSmallBestDrop_Reward["Box"][2][9]={}
	tSmallBestDrop_Reward["Box"][2][9]["RandomItemChanceType"] = 2
	tSmallBestDrop_Reward["Box"][2][9]["ItemChance"] = 200
	tSmallBestDrop_Reward["Box"][2][9]["Item_1"] =730004
	tSmallBestDrop_Reward["Box"][2][9]["Attr"] ="0 2 0 10080 1"
	tSmallBestDrop_Reward["Box"][2][10]={}
	tSmallBestDrop_Reward["Box"][2][10]["RandomItemChanceType"] = 2
	tSmallBestDrop_Reward["Box"][2][10]["ItemChance"] = 50
	tSmallBestDrop_Reward["Box"][2][10]["Item_1"] =730005
	tSmallBestDrop_Reward["Box"][2][10]["Attr"] ="0 2 0 10080 1"
	tSmallBestDrop_Reward["Box"][2][10]["GlobalId"] =53114
	tSmallBestDrop_Reward["Box"][2][10]["Pos"] =2
	tSmallBestDrop_Reward["Box"][2][10]["MaxData"] =3
	tSmallBestDrop_Reward["Box"][2][10]["FullIndex"] =8
	tSmallBestDrop_Reward["Box"][2][10]["Broast"] =1
	tSmallBestDrop_Reward["Box"][2][11]={}
	tSmallBestDrop_Reward["Box"][2][11]["RandomItemChanceType"] = 2
	tSmallBestDrop_Reward["Box"][2][11]["ItemChance"] = 300
	tSmallBestDrop_Reward["Box"][2][11]["Item_1"] =3307146
	tSmallBestDrop_Reward["Box"][2][11]["Attr"] ="0 2"
	tSmallBestDrop_Reward["Box"][2][12]={}
	tSmallBestDrop_Reward["Box"][2][12]["RandomItemChanceType"] = 2
	tSmallBestDrop_Reward["Box"][2][12]["ItemChance"] = 200
	tSmallBestDrop_Reward["Box"][2][12]["Item_1"] =3004895
	tSmallBestDrop_Reward["Box"][2][12]["Attr"] ="0 2"
	tSmallBestDrop_Reward["Box"][2][13]={}
	tSmallBestDrop_Reward["Box"][2][13]["RandomItemChanceType"] = 2
	tSmallBestDrop_Reward["Box"][2][13]["ItemChance"] = 200
	tSmallBestDrop_Reward["Box"][2][13]["Item_1"] =3004898
	tSmallBestDrop_Reward["Box"][2][13]["Attr"] ="0 2"
	tSmallBestDrop_Reward["Box"][2][14]={}
	tSmallBestDrop_Reward["Box"][2][14]["RandomItemChanceType"] = 2
	tSmallBestDrop_Reward["Box"][2][14]["ItemChance"] = 200
	tSmallBestDrop_Reward["Box"][2][14]["Item_1"] =3004896
	tSmallBestDrop_Reward["Box"][2][14]["Attr"] ="0 2"
	tSmallBestDrop_Reward["Box"][2][15]={}
	tSmallBestDrop_Reward["Box"][2][15]["RandomItemChanceType"] = 2
	tSmallBestDrop_Reward["Box"][2][15]["ItemChance"] = 200
	tSmallBestDrop_Reward["Box"][2][15]["Item_1"] =3004897
	tSmallBestDrop_Reward["Box"][2][15]["Attr"] ="0 2"
	tSmallBestDrop_Reward["Box"][2][16]={}
	tSmallBestDrop_Reward["Box"][2][16]["RandomItemChanceType"] = 2
	tSmallBestDrop_Reward["Box"][2][16]["ItemChance"] = 1000
	tSmallBestDrop_Reward["Box"][2][16]["Item_1"] =729242
	tSmallBestDrop_Reward["Box"][2][16]["Attr"] ="0 2"
	tSmallBestDrop_Reward["Box"][2][17]={}
	tSmallBestDrop_Reward["Box"][2][17]["RandomItemChanceType"] = 2
	tSmallBestDrop_Reward["Box"][2][17]["ItemChance"] = 200
	tSmallBestDrop_Reward["Box"][2][17]["Item_1"] =3008193
	tSmallBestDrop_Reward["Box"][2][17]["Attr"] ="0 2"
	tSmallBestDrop_Reward["Box"][2][18]={}
	tSmallBestDrop_Reward["Box"][2][18]["RandomItemChanceType"] = 2
	tSmallBestDrop_Reward["Box"][2][18]["ItemChance"] = 50
	tSmallBestDrop_Reward["Box"][2][18]["Item_1"] =3008198
	tSmallBestDrop_Reward["Box"][2][18]["Attr"] ="0 2"
	tSmallBestDrop_Reward["Box"][2][18]["Broast"] =1
	tSmallBestDrop_Reward["Box"][2][19]={}
	tSmallBestDrop_Reward["Box"][2][19]["RandomItemChanceType"] = 2
	tSmallBestDrop_Reward["Box"][2][19]["ItemChance"] = 1000
	tSmallBestDrop_Reward["Box"][2][19]["Item_1"] =721316
	tSmallBestDrop_Reward["Box"][2][19]["Attr"] ="0 2"
	tSmallBestDrop_Reward["Box"][2][20]={}
	tSmallBestDrop_Reward["Box"][2][20]["RandomItemChanceType"] = 2
	tSmallBestDrop_Reward["Box"][2][20]["ItemChance"] = 100
	tSmallBestDrop_Reward["Box"][2][20]["Item_1"] =728596
	tSmallBestDrop_Reward["Box"][2][20]["Attr"] ="0 2"
	tSmallBestDrop_Reward["Box"][2][20]["Broast"] =1
	tSmallBestDrop_Reward["Box"][2][21]={}
	tSmallBestDrop_Reward["Box"][2][21]["RandomItemChanceType"] = 2
	tSmallBestDrop_Reward["Box"][2][21]["ItemChance"] = 50
	tSmallBestDrop_Reward["Box"][2][21]["Item_1"] =3304327
	tSmallBestDrop_Reward["Box"][2][21]["Attr"] ="0 2 0 2880 1"
	tSmallBestDrop_Reward["Box"][2][21]["Broast"] =1
	tSmallBestDrop_Reward["Box"][2][22]={}
	tSmallBestDrop_Reward["Box"][2][22]["RandomItemChanceType"] = 2
	tSmallBestDrop_Reward["Box"][2][22]["ItemChance"] = 1000
	tSmallBestDrop_Reward["Box"][2][22]["Item_1"] =3311720
	tSmallBestDrop_Reward["Box"][2][22]["Attr"] ="0 20"

	--良品宝石
	tSmallBestDrop_Reward["GoodGem"]={}
	tSmallBestDrop_Reward["GoodGem"]["ItemChanceSum"]=10000
	tSmallBestDrop_Reward["GoodGem"][1]={}
	tSmallBestDrop_Reward["GoodGem"][1]["RandomItemChanceType"] = 2
	tSmallBestDrop_Reward["GoodGem"][1]["ItemChance"] = 1600
	tSmallBestDrop_Reward["GoodGem"][1]["Item_1"] = 700042
	tSmallBestDrop_Reward["GoodGem"][2]={}
	tSmallBestDrop_Reward["GoodGem"][2]["RandomItemChanceType"] = 2
	tSmallBestDrop_Reward["GoodGem"][2]["ItemChance"] = 1600
	tSmallBestDrop_Reward["GoodGem"][2]["Item_1"] = 700032
	tSmallBestDrop_Reward["GoodGem"][3]={}
	tSmallBestDrop_Reward["GoodGem"][3]["RandomItemChanceType"] = 2
	tSmallBestDrop_Reward["GoodGem"][3]["ItemChance"] = 1600
	tSmallBestDrop_Reward["GoodGem"][3]["Item_1"] = 700022
	tSmallBestDrop_Reward["GoodGem"][4]={}
	tSmallBestDrop_Reward["GoodGem"][4]["RandomItemChanceType"] = 2
	tSmallBestDrop_Reward["GoodGem"][4]["ItemChance"] = 400
	tSmallBestDrop_Reward["GoodGem"][4]["Item_1"] = 700012
	tSmallBestDrop_Reward["GoodGem"][5]={}
	tSmallBestDrop_Reward["GoodGem"][5]["RandomItemChanceType"] = 2
	tSmallBestDrop_Reward["GoodGem"][5]["ItemChance"] = 1600
	tSmallBestDrop_Reward["GoodGem"][5]["Item_1"] = 700002
	tSmallBestDrop_Reward["GoodGem"][6]={}
	tSmallBestDrop_Reward["GoodGem"][6]["RandomItemChanceType"] = 2
	tSmallBestDrop_Reward["GoodGem"][6]["ItemChance"] = 1600
	tSmallBestDrop_Reward["GoodGem"][6]["Item_1"] = 700052
	tSmallBestDrop_Reward["GoodGem"][7]={}
	tSmallBestDrop_Reward["GoodGem"][7]["RandomItemChanceType"] = 2
	tSmallBestDrop_Reward["GoodGem"][7]["ItemChance"] = 1600
	tSmallBestDrop_Reward["GoodGem"][7]["Item_1"] = 700062
	
	--优质宝石
	tSmallBestDrop_Reward["BestGem"]={}
	tSmallBestDrop_Reward["BestGem"]["ItemChanceSum"]=10000
	tSmallBestDrop_Reward["BestGem"][1]={}
	tSmallBestDrop_Reward["BestGem"][1]["RandomItemChanceType"] = 2
	tSmallBestDrop_Reward["BestGem"][1]["ItemChance"] = 1600
	tSmallBestDrop_Reward["BestGem"][1]["Item_1"] = 700043
	tSmallBestDrop_Reward["BestGem"][2]={}
	tSmallBestDrop_Reward["BestGem"][2]["RandomItemChanceType"] = 2
	tSmallBestDrop_Reward["BestGem"][2]["ItemChance"] = 1600
	tSmallBestDrop_Reward["BestGem"][2]["Item_1"] = 700033
	tSmallBestDrop_Reward["BestGem"][3]={}
	tSmallBestDrop_Reward["BestGem"][3]["RandomItemChanceType"] = 2
	tSmallBestDrop_Reward["BestGem"][3]["ItemChance"] = 1600
	tSmallBestDrop_Reward["BestGem"][3]["Item_1"] = 700023
	tSmallBestDrop_Reward["BestGem"][4]={}
	tSmallBestDrop_Reward["BestGem"][4]["RandomItemChanceType"] = 2
	tSmallBestDrop_Reward["BestGem"][4]["ItemChance"] = 400
	tSmallBestDrop_Reward["BestGem"][4]["Item_1"] = 700013
	tSmallBestDrop_Reward["BestGem"][5]={}
	tSmallBestDrop_Reward["BestGem"][5]["RandomItemChanceType"] = 2
	tSmallBestDrop_Reward["BestGem"][5]["ItemChance"] = 1600
	tSmallBestDrop_Reward["BestGem"][5]["Item_1"] = 700003
	tSmallBestDrop_Reward["BestGem"][6]={}
	tSmallBestDrop_Reward["BestGem"][6]["RandomItemChanceType"] = 2
	tSmallBestDrop_Reward["BestGem"][6]["ItemChance"] = 1600
	tSmallBestDrop_Reward["BestGem"][6]["Item_1"] = 700053
	tSmallBestDrop_Reward["BestGem"][7]={}
	tSmallBestDrop_Reward["BestGem"][7]["RandomItemChanceType"] = 2
	tSmallBestDrop_Reward["BestGem"][7]["ItemChance"] = 1600
	tSmallBestDrop_Reward["BestGem"][7]["Item_1"] = 700063
----------------------------------逻辑部分配置-------------------------------
--判断等级
function SmallBestDrop_ChkLevel(nLevel)
	local sLevelType
	for i,v in pairs(tSmallBestDrop_Level) do
		if nLevel >= v[1] and nLevel<= v[2] then
			sLevelType = v[3]
			break
		end
	end
	return sLevelType
end

--判断是否激情服新服
function SmallBestDrop_ChkNewServer()
	local nGlobalId = tSmallBestDrop_Cont["GloablId"]
	if SpecialServer_ChkNoGiftServer() then
		if (Get_SysDynaGlobalData0(nGlobalId) >=1) then
			tSmallBestDrop_Cont["Flag"] =1
		end
	end
	local sStr = Get_SysDynaGlobalDataStr4(nGlobalId)
	local sActivityTime = Get_SysDynaGlobalDataStr4(nGlobalId)
	tSmallBestDrop_Cont["ActivityTime"] = sActivityTime
end

--新服描述
function SmallBestDrop_NewServerDate()
	local sDateTime = tSmallBestDrop_Cont["ActivityTime"]
	local sDate1 = string.sub(sDateTime,6,7)
	local sDay1 = string.sub(sDateTime,9,10)
	local sDate2 = string.sub(sDateTime,23,24)
	local sDay2 = string.sub(sDateTime,26,27)
	local nNpcId = tSmallBestDrop_Cont["NpcId"]
	tNpcGossip[nNpcId]["Text116"] = string.format(tNoGiftMonster_Text["SmallBest"]["NewServer"],sDate1,sDay1,sDate2,sDay2)
	
end

--检测地图宝箱个数
function SmallBestDrop_CheckBoxNum()
	local nAdd,nRemove=0,0
	local tDynaNpc ={}
	local tNoDynaNpc ={}
	--循环获取动态npc数量
	for i,v in ipairs(tSmallBestDrop_Cont["DynaNpc"]) do
		if Get_NpcCountByName(v["NpcName"]) >= 1 then
			table.insert(tDynaNpc,i)
		else
			table.insert(tNoDynaNpc,i)
		end
	end

	if #tDynaNpc>= 3 then
		nAdd = tNoDynaNpc[1]
		local nIndex=math.random(1,3)
		nRemove = tDynaNpc[nIndex]
	else
		local nValue = math.random(1,#tNoDynaNpc)
		nAdd =tNoDynaNpc[nValue]
	end
	return nAdd,nRemove
end

--刷新宝箱
function SmallBestDrop_MoveBox(nMonsterId)

	local nUserId = Get_UserId()
	local nRange = tSmallBestDrop_Cont["Range"]
	local nMapId = Get_UserMapId(nUserId)
	local nPosX = Get_UserPositionX(nUserId) +math.random(-nRange,nRange)
	local nPosY = Get_UserPositionY(nUserId) +math.random(-nRange,nRange)
	
	local nAdd,nRemove = SmallBestDrop_CheckBoxNum()

	if nRemove ~=0 then
		--删除前增加检测，如果删除时箱被开启不存在则不删除
		local sDelNpcName = tSmallBestDrop_Cont["DynaNpc"][nRemove]["NpcName"]
		if Get_NpcCountByName(sDelNpcName) >= 1 then
			Npc_DelDynaNpc(nMapId,"name",sDelNpcName)
		end
	end
	
	if nAdd ==0 or nAdd == nil then
		return
	end

	--创建npc
	local sNpcName = tSmallBestDrop_Cont["DynaNpc"][nAdd]["NpcName"]
	local nLookface = tSmallBestDrop_Cont["DynaNpc"][nAdd]["Lookface"]
	local nActionId =  tSmallBestDrop_Cont["DynaNpc"][nAdd]["ActionId"]
	local sMapName = tNoGiftMonster_Text["MapName"][nMapId]
	
	if Npc_CreateDynaNpc(sNpcName,2,1,nLookface,0,0,nMapId,nPosX,nPosY,0,0,0,nActionId) then
		--Sys_SystemBroadcast(string.format(tNoGiftMonster_Text["SmallBest"]["Movebox"],sNpcName,sMapName,nPosX,nPosY))
		--Sys_TalkBroadcast(string.format(tNoGiftMonster_Text["SmallBest"]["Movebox"],sNpcName,sMapName,nPosX,nPosY))
		--改成地图公告
		Map_SendBroadcastMsg(nMapId,string.format(tNoGiftMonster_Text["SmallBest"]["Movebox"],sNpcName,sMapName,nPosX,nPosY))
		--刷新log
		Sys_SaveActionFestivalLog(string.format(tSmallBestDrop_Log["MoveBox"],nMapId,nPosX,nPosY))
	end
end

--开宝箱
function SmallBestDrop_OpenBox(nIndex)
	local nItemId =tSmallBestDrop_Cont["ItemId"]
	local nMapId = Get_UserMapId()
	local sNpcName = tNoGiftMonster_Text["SmallBest"]["NpcName"][nIndex]
	local nNpcId = tSmallBestDrop_Cont["DynaNpc"][nIndex]["NpcId"]
		--宝箱不存在了
	if Get_NpcCountByName(sNpcName) < 1 then
		User_TalkChannel2005(tNoGiftMonster_Text["SmallBest"]["NoBox"])
		return
	end
	tNpcGossip[nNpcId]["Text116"]=""
	--是否激情服前7天
	if (tSmallBestDrop_Cont["Flag"] == 1) and Sys_ChkFullTime(tSmallBestDrop_Cont["ActivityTime"]) then
			SmallBestDrop_NewServerDate()
	end
	
	tNpcGossip[nNpcId]["Text111"] = string.format(tNoGiftMonster_Text["SmallBest"][nNpcId]["Text111"],sNpcName)
	tNpcGossip[nNpcId]["Text113"] = string.format(tNoGiftMonster_Text["SmallBest"][nNpcId]["Text113"],sNpcName)
	
	--没有钥匙
	if not Item_ChkItem(nItemId) then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end
	
	tNpcGossip[nNpcId]["tOption1-2"] = {}
	--对应插入
	table.insert(tNpcGossip[nNpcId]["tOption1-2"], 12 .. nIndex)
	
	local nEventType = tSmallBestDrop_Stc[1]["EventType"]
	local nDataType =tSmallBestDrop_Stc[1]["DataType"]
	local nMaxData = tSmallBestDrop_Stc[1]["MaxData"]

	--隔天清掩码
	if Task_StcInterval(nEventType,nDataType,1,4) then
		Task_SetStatistic(nEventType,nDataType,0,1)
		Task_SetStcTimestamp(nEventType,nDataType,0)
	end
	local sTimeText = tNoGiftMonster_Text["SmallBest"]["TimesOut"]
	tNpcGossip[nNpcId]["Option12".. nIndex]=tNoGiftMonster_Text["SmallBest"]["TimesOut"]

	
	--今日还有次数3次
	if Task_ChkStcValue(nEventType,nDataType,"<",nMaxData) then
		local nTimesNum = nMaxData - Get_UserStatisticValue(nEventType,nDataType)
		sTimeText = string.format(tNoGiftMonster_Text["SmallBest"]["TimesTip"],nTimesNum)
		tNpcGossip[nNpcId]["Option12".. nIndex]=string.format(tNoGiftMonster_Text["SmallBest"][nNpcId]["Option12".. nIndex],sTimeText)
	end 
	
	
	LinkNpcGossipFunc_New(nNpcId,"1-2")

end

--获取宝箱奖励
function SmallBestDrop_BoxReward(nIndex)
	local nItemId =tSmallBestDrop_Cont["ItemId"]
	local nMapId = Get_UserMapId()
	local nTimes =1
	local sNpcName =tSmallBestDrop_Cont["DynaNpc"][nIndex]["NpcName"]
	--宝箱被刷
	if Get_NpcCountByName(sNpcName) < 1 then
		User_TalkChannel2005(tNoGiftMonster_Text["SmallBest"]["NoBox"])
		return
	end
	
	--是否激情服前7天
	if (tSmallBestDrop_Cont["Flag"] == 1) and Sys_ChkFullTime(tSmallBestDrop_Cont["ActivityTime"]) then
		nTimes = 2
	end
	
	--背包不足
	if not User_CheckLeftSpace(nTimes) then
		User_TalkChannel2005(tNoGiftMonster_Text["SmallBest"]["NoSpace"])
		return
	end

	local nEventType = tSmallBestDrop_Stc[1]["EventType"]
	local nDataType =tSmallBestDrop_Stc[1]["DataType"]
	local nMaxData = tSmallBestDrop_Stc[1]["MaxData"]
	--隔天清掩码
	if Task_StcInterval(nEventType,nDataType,1,4) then
		Task_SetStatistic(nEventType,nDataType,0,1)
		Task_SetStcTimestamp(nEventType,nDataType,0)
	end

	--今日已开启3次
	if Task_ChkStcValue(nEventType,nDataType,">=",nMaxData) then
		User_TalkChannel2005(tNoGiftMonster_Text["SmallBest"]["NoTimes"])
		return
	end
	--删物品
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		local flat,tReward = Probabil_RandomAward(tSmallBestDrop_Reward["Box"],nTimes)
		local nItemType = tReward[1]["tAward"][1]["Item_1"]
		local sItemAttr = tReward[1]["tAward"][1]["Attr"]
		local bFlag = false
		local bBroast = false
		
		--是否全服公告
		if tReward[1]["tAward"][1]["Broast"] ~= nil then
			bBroast = true
		end
		
		local nGlobalId =0
		local nPos = 0
		local nMaxData= 0
		local nFullIndex = 0
		local nNowData=0
		--有限量
		local nGlobalId,nPos,nMaxData,nFullIndex,nNowData=0,0,0,0,0
		if tReward[1]["tAward"][1]["GlobalId"] ~= nil then
			nGlobalId = tReward[1]["tAward"][1]["GlobalId"]
			nPos = tReward[1]["tAward"][1]["Pos"]
			nMaxData = tReward[1]["tAward"][1]["MaxData"]
			nFullIndex = tReward[1]["tAward"][1]["FullIndex"]
			nNowData = Get_SysDynaGlobalData(nGlobalId,nPos)
			bFlag = true
			--达到限量
			if nNowData >= nMaxData then
				nItemType = tSmallBestDrop_Reward["Box"][nTimes][nFullIndex]["Item_1"]
				sItemAttr = tSmallBestDrop_Reward["Box"][nTimes][nFullIndex]["Attr"]
				bFlag = false
				bBroast = false
			end
		end
		--宝石类
		if type(nItemType) == "string" then
			local flat,tGemAward = Probabil_RandomAward(tSmallBestDrop_Reward,nItemType)
			nItemType = tGemAward[1]["tAward"][1]["Item_1"]
		end
		local nNum = CommonFunc_GetItemNum(sItemAttr)
	--	local sItemName = Get_ItemtypeName(nItemType)
		--置掩码
		Task_AddStatistic(nEventType,nDataType,1,1)
		Task_SetStcTimestamp(nEventType,nDataType,0)
		--给奖励
		local sItemName = Item_AddNewItemAndMsg(nItemType,sItemAttr)
		User_EffectAdd("self",tSmallBestDrop_Cont["Effect"])
	--是否激情服前7天
	if (tSmallBestDrop_Cont["Flag"] == 1) and Sys_ChkFullTime(tSmallBestDrop_Cont["ActivityTime"]) then
		Sys_MsgBox(string.format(tNoGiftMonster_Text["SmallBest"]["RewardDouble"],sItemName))
		User_TalkChannel2005(string.format(tNoGiftMonster_Text["SmallBest"]["RewardDouble"],sItemName))
	else
		Sys_MsgBox(string.format(tNoGiftMonster_Text["SmallBest"]["Reward"],sItemName))
		User_TalkChannel2005(string.format(tNoGiftMonster_Text["SmallBest"]["Reward"],sItemName))
	end
		--限量标识
		if bFlag then
			Sys_SetSynaGlobalData(nGlobalId,nPos,nNowData+1)
		end
		--全服公告
		if bBroast then
			Sys_SystemBroadcast(string.format(tNoGiftMonster_Text["SmallBest"]["SysBroad"],Get_UserName(),sNpcName,sItemName))
		end
		--给提示，删动态NPC（宝箱不存在则不删除）
		if Get_NpcCountByName(sNpcName) >= 1 then
			Npc_DelDynaNpc(nMapId,"name",sNpcName)
		end
	end
end

--抽奖道具
function SmallBestDrop_UseLotteryProp(nItemId,nNum)
	local nLevel = Get_UserLevel()
	local nItemNum =tSmallBestDrop_Cont["ItemNum"]
	local nTimes =1
	--数量不足
	if not Item_ChkMulItem(nItemId,nItemId,nItemNum) then
		User_TalkChannel2005(tNoGiftMonster_Text["SmallBest"][3311720]["NoItem"])
		return
	end
	--新服前7天
	if (tSmallBestDrop_Cont["Flag"] == 1) and Sys_ChkFullTime(tSmallBestDrop_Cont["ActivityTime"]) then
		nTimes =2
	end
	--背包不足
	if not User_CheckLeftSpace(nTimes) then
		User_TalkChannel2005(tNoGiftMonster_Text["SmallBest"][3311720]["NoSpace"])
		return
	end
	--取玩家等级
	local sLevelType = SmallBestDrop_ChkLevel(nLevel)
	
	if Item_DelMulItem(nItemId,nItemId,nItemNum) then
		for i=1,nTimes do
			SmallBestDrop_LotteryPropReward(nItemId,sLevelType,nTimes,nNum)
		end
	end
end

function SmallBestDrop_LotteryPropReward(nItemId,sLevelType,nTimes,nNum)
	local nItemNum =tSmallBestDrop_Cont["ItemNum"]
	--删物品
	-- if Item_ChkMulItem(nItemId,nItemId,nItemNum) and Item_DelMulItem(nItemId,nItemId,nItemNum) then
		local flat_1,tEquip = Probabil_RandomAward(tSmallBestDrop_Monster,sLevelType)
		local sEquip = tEquip[1]["tAward"][1]["Item_1"]
		
		--取追加等级
		local flat_2,tMagic = Probabil_RandomAward(tSmallBestDrop_Monster,"Magic3")
		local nMagic3 = tMagic[1]["tAward"][1]["Item_1"]
		
		--取物品id
		local flat_6,tReward = Probabil_RandomAward(tSmallBestDrop_Reward[sLevelType],sEquip)
		local nAddItem = tReward[1]["tAward"][1]["Item_1"]
		
		--开洞数
		local nGem = 0
		
		--随机到的物品是法器，则不开洞
		if math.floor(nAddItem / 1000) ~= 619 then
			--取开洞概率
			local flat_3,tGem = Probabil_RandomAward(tSmallBestDrop_Monster["gem"],sEquip)
			nGem = tGem[1]["tAward"][1]["Item_1"]
			
			if tGem[1]["tAward"][1]["GlobalId"] ~= nil then
				local nGlobalId = tGem[1]["tAward"][1]["GlobalId"]
				local nPos = tGem[1]["tAward"][1]["Pos"]
				local nMaxData = tGem[1]["tAward"][1]["MaxData"] * nTimes
				local nData = Get_SysDynaGlobalData(nGlobalId,nPos)
				
				--达到限量
				if nData >= nMaxData then
					nGem = tGem[1]["tAward"][1]["FullIndex"]
				else
					Sys_SetSynaGlobalData(nGlobalId,nPos,nData + 1)
				end
			end
		end
		
		--取开洞宝石编号
		local flat_4,tGemStone = Probabil_RandomAward(tSmallBestDrop_Monster,"gemStone")
		local nGemNum = tGemStone[1]["tAward"][1]["Item_1"]
		
		--取神佑
		local flat_5,tReduce = Probabil_RandomAward(tSmallBestDrop_Monster["reduce_dmg"],sEquip)
		local nReduce = tReduce[1]["tAward"][1]["Item_1"]
		-- 法器无神佑
		if math.floor(nAddItem / 1000) == 619 then
			nReduce = 0
		end
		
		--配置属性
		local sItemAttr = ""
		local sLog =""
		local sAttr = tSmallBestDrop_Cont["Attr"][nGem]
		if nNum ~= nil then
			sAttr = tSmallBestDrop_Cont["GAttr"][nGem]
		end 
		if nGem == 0 then
			sItemAttr = string.format(sAttr,nReduce,nMagic3)
			sLog = string.format(tSmallBestDrop_Log["SmallBest"][nGem],nReduce,nMagic3,nAddItem)
		elseif nGem ==1 then
			sItemAttr = string.format(sAttr,nReduce,nMagic3,nGemNum)
			sLog = string.format(tSmallBestDrop_Log["SmallBest"][nGem],nReduce,nMagic3,nGem,nGemNum,nAddItem)
		elseif nGem ==2 then
			sItemAttr = string.format(sAttr,nReduce,nMagic3,nGemNum,nGemNum)
			sLog = string.format(tSmallBestDrop_Log["SmallBest"][nGem],nReduce,nMagic3,nGem,nGemNum,nAddItem)
		end
		--公告
		local sText=""
		local sUserName = Get_UserName()
		local sItemName = Get_ItemtypeName(nAddItem)
		
		if nMagic3 >= 5 and nGem >= 2 and nReduce >= 1 then
			sText = string.format(tNoGiftMonster_Text["SmallBest"][3311720]["MagicAll"],sUserName,sItemName)
			if nNum ~= nil then
				sText = string.format(tNoGiftMonster_Text["SmallBest"][3321075]["MagicAll"],sUserName,sItemName)
			end
		elseif nMagic3 >= 5 and nReduce >= 1 then
			sText = string.format(tNoGiftMonster_Text["SmallBest"][3311720]["MagicReduce"],sUserName,sItemName)
			if nNum ~= nil then
				sText = string.format(tNoGiftMonster_Text["SmallBest"][3321075]["MagicReduce"],sUserName,sItemName)
			end
		elseif nMagic3 >= 5 and nGem >= 2 then
			sText = string.format(tNoGiftMonster_Text["SmallBest"][3311720]["MagicGem"],sUserName,sItemName)
			if nNum ~= nil then
				sText = string.format(tNoGiftMonster_Text["SmallBest"][3321075]["MagicGem"],sUserName,sItemName)
			end
		elseif nMagic3 >= 5 then
			sText = string.format(tNoGiftMonster_Text["SmallBest"][3311720]["Magic5"],sUserName,sItemName)
			if nNum ~= nil then
				sText = string.format(tNoGiftMonster_Text["SmallBest"][3321075]["Magic5"],sUserName,sItemName)
			end
		end
		Item_AddNewItemAndMsg(nAddItem,sItemAttr)
		User_EffectAdd("self",tSmallBestDrop_Cont["Effect"])
		Sys_SaveActionFestivalLog(sLog)
		local sTalk = string.format(tNoGiftMonster_Text["SmallBest"][3311720]["Reward"],sItemName)
		if nNum ~= nil then
			sTalk = string.format(tNoGiftMonster_Text["SmallBest"][3321075]["Reward"],sItemName)
		end
		User_TalkChannel2005(sTalk)
		
		if sText ~= "" then
			Sys_TalkBroadcast(sText)
		end
	-- end
end

--清掩码
function SmallBestDrop_ClearGlobal()
	for k,v in pairs(tSmallBestDrop_Cont["LimitGloabl"]) do
		Sys_ResetAllSynaGlobalData(v)
	end
end

----------------------------------模板部分配置-------------------------------

tNpcGossip[23576]= tNpcGossip[23576] or DefaultNpc:new{}
tNpcGossip[23576]["DialogueText"] = tNoGiftMonster_Text["SmallBest"][23576]
tNpcGossip[23576]["OptionHidden"] = 1

tNpcGossip[23576]["Text1-1"] = {111,112,113,114,115,116,117,118}
tNpcGossip[23576]["tOption1-1"] = {111}

tNpcGossip[23576]["Text1-2"] = {111,112,113,114,115,116,117,118}
tNpcGossip[23576]["tOption1-2"] = {121,122,123,124}
tNpcGossip[23576]["OptionFunc121"] = "</F>SmallBestDrop_BoxReward</N>1"
tNpcGossip[23576]["OptionFunc122"] = "</F>SmallBestDrop_BoxReward</N>2"
tNpcGossip[23576]["OptionFunc123"] = "</F>SmallBestDrop_BoxReward</N>3"
tNpcGossip[23576]["OptionFunc124"] = "</F>SmallBestDrop_BoxReward</N>4"

tItem[3311720] = tItem[3311720] or {}
tItem[3311720]["Function"] = function(nItemId,sItemName)
	SmallBestDrop_UseLotteryProp(nItemId)
end

-------时间自检
local tSmallBestDrop_ClearGlobal= {}
	--清理掩码
	tSmallBestDrop_ClearGlobal[1] = {}
	tSmallBestDrop_ClearGlobal[1]["Type"] = 2
	tSmallBestDrop_ClearGlobal[1]["TimeType"] = 4
	tSmallBestDrop_ClearGlobal[1]["Time"] ="00:00 00:00"
	tSmallBestDrop_ClearGlobal[1]["Func"] = SmallBestDrop_ClearGlobal
	
	table.insert(tSystemTime_InitialData_NoGift,tSmallBestDrop_ClearGlobal[1])

-- 服务器启动触发
tServerStart["tFunction"] = tServerStart["tFunction"] or {}
table.insert(tServerStart["tFunction"],SmallBestDrop_ChkNewServer)