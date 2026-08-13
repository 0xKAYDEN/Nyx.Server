------------------------------------------------------------------------------------
--Name:		[征服][活动脚本]8月赌博月活动(8.22-9.5)
--Purpose:	8月赌博月活动(8.22-9.5)
--Creator: 	吴文鑫
--Created:	2017/07/25
------------------------------------------------------------------------------------
--40322
-- 命名前缀
--GamblingMonthActivity_

--12000797
local tGamblingMonthActivity_Cont = {}
	tGamblingMonthActivity_Cont["ActivityTime"] = "2017-08-29 00:00 2017-09-12 23:59"
	tGamblingMonthActivity_Cont["GlobalId1"] = 51637
	tGamblingMonthActivity_Cont["GlobalId2"] = 51638
	

--奖励表配置
local tGamblingMonthActivity_Award = {}
-- 3304220,'6阶武器神魂'
	tGamblingMonthActivity_Award[3304220] = {}
	-- 800000	紫魔刃		六阶刀神魂	
	tGamblingMonthActivity_Award[3304220][1] = {}
	tGamblingMonthActivity_Award[3304220][1]["RewardItem"] = {}
	tGamblingMonthActivity_Award[3304220][1]["RewardItem"][1] = {}
	tGamblingMonthActivity_Award[3304220][1]["RewardItem"][1]["Id"] = 800000
	tGamblingMonthActivity_Award[3304220][1]["RewardItem"][1]["Attr"] = "0 1"
	tGamblingMonthActivity_Award[3304220][1]["LogId"] = 12000797
	tGamblingMonthActivity_Award[3304220][1]["DeleteItem"]={}
	tGamblingMonthActivity_Award[3304220][1]["DeleteItem"][1]={}
	tGamblingMonthActivity_Award[3304220][1]["DeleteItem"][1]["Id"]=3304220
	-- 800110	魔吕锤		六阶锤神魂	
	tGamblingMonthActivity_Award[3304220][2] = {}
	tGamblingMonthActivity_Award[3304220][2]["RewardItem"] = {}
	tGamblingMonthActivity_Award[3304220][2]["RewardItem"][1] = {}
	tGamblingMonthActivity_Award[3304220][2]["RewardItem"][1]["Id"] = 800110
	tGamblingMonthActivity_Award[3304220][2]["RewardItem"][1]["Attr"] = "0 1"
	tGamblingMonthActivity_Award[3304220][2]["LogId"] = 12000797
	tGamblingMonthActivity_Award[3304220][2]["DeleteItem"]={}
	tGamblingMonthActivity_Award[3304220][2]["DeleteItem"][1]={}
	tGamblingMonthActivity_Award[3304220][2]["DeleteItem"][1]["Id"]=3304220
	-- 800320	龙翼长棍	六阶长棍神魂	
	tGamblingMonthActivity_Award[3304220][3] = {}
	tGamblingMonthActivity_Award[3304220][3]["RewardItem"] = {}
	tGamblingMonthActivity_Award[3304220][3]["RewardItem"][1] = {}
	tGamblingMonthActivity_Award[3304220][3]["RewardItem"][1]["Id"] = 800320
	tGamblingMonthActivity_Award[3304220][3]["RewardItem"][1]["Attr"] = "0 1"
	tGamblingMonthActivity_Award[3304220][3]["LogId"] = 12000797
	tGamblingMonthActivity_Award[3304220][3]["DeleteItem"]={}
	tGamblingMonthActivity_Award[3304220][3]["DeleteItem"][1]={}
	tGamblingMonthActivity_Award[3304220][3]["DeleteItem"][1]["Id"]=3304220
	-- 800809	命运之剑	六阶刺剑神魂	
	tGamblingMonthActivity_Award[3304220][4] = {}
	tGamblingMonthActivity_Award[3304220][4]["RewardItem"] = {}
	tGamblingMonthActivity_Award[3304220][4]["RewardItem"][1] = {}
	tGamblingMonthActivity_Award[3304220][4]["RewardItem"][1]["Id"] = 800809
	tGamblingMonthActivity_Award[3304220][4]["RewardItem"][1]["Attr"] = "0 1"
	tGamblingMonthActivity_Award[3304220][4]["LogId"] = 12000797
	tGamblingMonthActivity_Award[3304220][4]["DeleteItem"]={}
	tGamblingMonthActivity_Award[3304220][4]["DeleteItem"][1]={}
	tGamblingMonthActivity_Award[3304220][4]["DeleteItem"][1]["Id"]=3304220
	-- 800804	岁月之枪	六阶火枪神魂	
	tGamblingMonthActivity_Award[3304220][5] = {}
	tGamblingMonthActivity_Award[3304220][5]["RewardItem"] = {}
	tGamblingMonthActivity_Award[3304220][5]["RewardItem"][1] = {}
	tGamblingMonthActivity_Award[3304220][5]["RewardItem"][1]["Id"] = 800804
	tGamblingMonthActivity_Award[3304220][5]["RewardItem"][1]["Attr"] = "0 1"
	tGamblingMonthActivity_Award[3304220][5]["LogId"] = 12000797
	tGamblingMonthActivity_Award[3304220][5]["DeleteItem"]={}
	tGamblingMonthActivity_Award[3304220][5]["DeleteItem"][1]={}
	tGamblingMonthActivity_Award[3304220][5]["DeleteItem"][1]["Id"]=3304220
	-- 800017	隐夜忍刀	六阶忍刀神魂	
	tGamblingMonthActivity_Award[3304220][6] = {}
	tGamblingMonthActivity_Award[3304220][6]["RewardItem"] = {}
	tGamblingMonthActivity_Award[3304220][6]["RewardItem"][1] = {}
	tGamblingMonthActivity_Award[3304220][6]["RewardItem"][1]["Id"] = 800017
	tGamblingMonthActivity_Award[3304220][6]["RewardItem"][1]["Attr"] = "0 1"
	tGamblingMonthActivity_Award[3304220][6]["LogId"] = 12000797
	tGamblingMonthActivity_Award[3304220][6]["DeleteItem"]={}
	tGamblingMonthActivity_Award[3304220][6]["DeleteItem"][1]={}
	tGamblingMonthActivity_Award[3304220][6]["DeleteItem"][1]["Id"]=3304220
	-- 800916	帝青龙牙	六阶飞刀神魂	
	tGamblingMonthActivity_Award[3304220][7] = {}
	tGamblingMonthActivity_Award[3304220][7]["RewardItem"] = {}
	tGamblingMonthActivity_Award[3304220][7]["RewardItem"][1] = {}
	tGamblingMonthActivity_Award[3304220][7]["RewardItem"][1]["Id"] = 800916
	tGamblingMonthActivity_Award[3304220][7]["RewardItem"][1]["Attr"] = "0 1"
	tGamblingMonthActivity_Award[3304220][7]["LogId"] = 12000797
	tGamblingMonthActivity_Award[3304220][7]["DeleteItem"]={}
	tGamblingMonthActivity_Award[3304220][7]["DeleteItem"][1]={}
	tGamblingMonthActivity_Award[3304220][7]["DeleteItem"][1]["Id"]=3304220
	-- 800254	勾魂神镰	六阶钩镰神魂	
	tGamblingMonthActivity_Award[3304220][8] = {}
	tGamblingMonthActivity_Award[3304220][8]["RewardItem"] = {}
	tGamblingMonthActivity_Award[3304220][8]["RewardItem"][1] = {}
	tGamblingMonthActivity_Award[3304220][8]["RewardItem"][1]["Id"] = 800254
	tGamblingMonthActivity_Award[3304220][8]["RewardItem"][1]["Attr"] = "0 1"
	tGamblingMonthActivity_Award[3304220][8]["LogId"] = 12000797
	tGamblingMonthActivity_Award[3304220][8]["DeleteItem"]={}
	tGamblingMonthActivity_Award[3304220][8]["DeleteItem"][1]={}
	tGamblingMonthActivity_Award[3304220][8]["DeleteItem"][1]["Id"]=3304220
	-- 800421	蛰龙玄盾	六阶盾牌神魂	
	tGamblingMonthActivity_Award[3304220][9] = {}
	tGamblingMonthActivity_Award[3304220][9]["RewardItem"] = {}
	tGamblingMonthActivity_Award[3304220][9]["RewardItem"][1] = {}
	tGamblingMonthActivity_Award[3304220][9]["RewardItem"][1]["Id"] = 800421
	tGamblingMonthActivity_Award[3304220][9]["RewardItem"][1]["Attr"] = "0 1"
	tGamblingMonthActivity_Award[3304220][9]["LogId"] = 12000797
	tGamblingMonthActivity_Award[3304220][9]["DeleteItem"]={}
	tGamblingMonthActivity_Award[3304220][9]["DeleteItem"][1]={}
	tGamblingMonthActivity_Award[3304220][9]["DeleteItem"][1]["Id"]=3304220
	-- 800513	影灵宝剑	六阶法剑神魂	
	tGamblingMonthActivity_Award[3304220][10] = {}
	tGamblingMonthActivity_Award[3304220][10]["RewardItem"] = {}
	tGamblingMonthActivity_Award[3304220][10]["RewardItem"][1] = {}
	tGamblingMonthActivity_Award[3304220][10]["RewardItem"][1]["Id"] = 800513
	tGamblingMonthActivity_Award[3304220][10]["RewardItem"][1]["Attr"] = "0 1"
	tGamblingMonthActivity_Award[3304220][10]["LogId"] = 12000797
	tGamblingMonthActivity_Award[3304220][10]["DeleteItem"]={}
	tGamblingMonthActivity_Award[3304220][10]["DeleteItem"][1]={}
	tGamblingMonthActivity_Award[3304220][10]["DeleteItem"][1]["Id"]=3304220
	-- 800616	天翼弓		六阶弓神魂	
	tGamblingMonthActivity_Award[3304220][11] = {}
	tGamblingMonthActivity_Award[3304220][11]["RewardItem"] = {}
	tGamblingMonthActivity_Award[3304220][11]["RewardItem"][1] = {}
	tGamblingMonthActivity_Award[3304220][11]["RewardItem"][1]["Id"] = 800616
	tGamblingMonthActivity_Award[3304220][11]["RewardItem"][1]["Attr"] = "0 1"
	tGamblingMonthActivity_Award[3304220][11]["LogId"] = 12000797
	tGamblingMonthActivity_Award[3304220][11]["DeleteItem"]={}
	tGamblingMonthActivity_Award[3304220][11]["DeleteItem"][1]={}
	tGamblingMonthActivity_Award[3304220][11]["DeleteItem"][1]["Id"]=3304220
	-- 800722	定海玄珠	六阶念珠神魂	
	tGamblingMonthActivity_Award[3304220][12] = {}
	tGamblingMonthActivity_Award[3304220][12]["RewardItem"] = {}
	tGamblingMonthActivity_Award[3304220][12]["RewardItem"][1] = {}
	tGamblingMonthActivity_Award[3304220][12]["RewardItem"][1]["Id"] = 800722
	tGamblingMonthActivity_Award[3304220][12]["RewardItem"][1]["Attr"] = "0 1"
	tGamblingMonthActivity_Award[3304220][12]["LogId"] = 12000797
	tGamblingMonthActivity_Award[3304220][12]["DeleteItem"]={}
	tGamblingMonthActivity_Award[3304220][12]["DeleteItem"][1]={}
	tGamblingMonthActivity_Award[3304220][12]["DeleteItem"][1]["Id"]=3304220
	-- 801003	沧海龙吟	六阶双截棍神魂	
	tGamblingMonthActivity_Award[3304220][13] = {}
	tGamblingMonthActivity_Award[3304220][13]["RewardItem"] = {}
	tGamblingMonthActivity_Award[3304220][13]["RewardItem"][1] = {}
	tGamblingMonthActivity_Award[3304220][13]["RewardItem"][1]["Id"] = 801003
	tGamblingMonthActivity_Award[3304220][13]["RewardItem"][1]["Attr"] = "0 1"
	tGamblingMonthActivity_Award[3304220][13]["LogId"] = 12000797
	tGamblingMonthActivity_Award[3304220][13]["DeleteItem"]={}
	tGamblingMonthActivity_Award[3304220][13]["DeleteItem"][1]={}
	tGamblingMonthActivity_Award[3304220][13]["DeleteItem"][1]["Id"]=3304220
	-- 801103	太极天机拂尘	六阶拂尘神魂	
	tGamblingMonthActivity_Award[3304220][14] = {}
	tGamblingMonthActivity_Award[3304220][14]["RewardItem"] = {}
	tGamblingMonthActivity_Award[3304220][14]["RewardItem"][1] = {}
	tGamblingMonthActivity_Award[3304220][14]["RewardItem"][1]["Id"] = 801103
	tGamblingMonthActivity_Award[3304220][14]["RewardItem"][1]["Attr"] = "0 1"
	tGamblingMonthActivity_Award[3304220][14]["LogId"] = 12000797
	tGamblingMonthActivity_Award[3304220][14]["DeleteItem"]={}
	tGamblingMonthActivity_Award[3304220][14]["DeleteItem"][1]={}
	tGamblingMonthActivity_Award[3304220][14]["DeleteItem"][1]["Id"]=3304220
	-- 801212	烈拳·碎空	六阶拳套神魂[暴击]
	tGamblingMonthActivity_Award[3304220][15] = {}
	tGamblingMonthActivity_Award[3304220][15]["RewardItem"] = {}
	tGamblingMonthActivity_Award[3304220][15]["RewardItem"][1] = {}
	tGamblingMonthActivity_Award[3304220][15]["RewardItem"][1]["Id"] = 801212
	tGamblingMonthActivity_Award[3304220][15]["RewardItem"][1]["Attr"] = "0 1"
	tGamblingMonthActivity_Award[3304220][15]["LogId"] = 12000797
	tGamblingMonthActivity_Award[3304220][15]["DeleteItem"]={}
	tGamblingMonthActivity_Award[3304220][15]["DeleteItem"][1]={}
	tGamblingMonthActivity_Award[3304220][15]["DeleteItem"][1]["Id"]=3304220
	-- 801214	烈拳·撼地	六阶拳套神魂[粉碎]
	tGamblingMonthActivity_Award[3304220][16] = {}
	tGamblingMonthActivity_Award[3304220][16]["RewardItem"] = {}
	tGamblingMonthActivity_Award[3304220][16]["RewardItem"][1] = {}
	tGamblingMonthActivity_Award[3304220][16]["RewardItem"][1]["Id"] = 801214
	tGamblingMonthActivity_Award[3304220][16]["RewardItem"][1]["Attr"] = "0 1"
	tGamblingMonthActivity_Award[3304220][16]["LogId"] = 12000797
	tGamblingMonthActivity_Award[3304220][16]["DeleteItem"]={}
	tGamblingMonthActivity_Award[3304220][16]["DeleteItem"][1]={}
	tGamblingMonthActivity_Award[3304220][16]["DeleteItem"][1]["Id"]=3304220
	-- 801306	翳日仙扇	六阶折扇神魂	
	tGamblingMonthActivity_Award[3304220][17] = {}
	tGamblingMonthActivity_Award[3304220][17]["RewardItem"] = {}
	tGamblingMonthActivity_Award[3304220][17]["RewardItem"][1] = {}
	tGamblingMonthActivity_Award[3304220][17]["RewardItem"][1]["Id"] = 801306
	tGamblingMonthActivity_Award[3304220][17]["RewardItem"][1]["Attr"] = "0 1"
	tGamblingMonthActivity_Award[3304220][17]["LogId"] = 12000797
	tGamblingMonthActivity_Award[3304220][17]["DeleteItem"]={}
	tGamblingMonthActivity_Award[3304220][17]["DeleteItem"][1]={}
	tGamblingMonthActivity_Award[3304220][17]["DeleteItem"][1]["Id"]=3304220
	
-- 3304221,'6阶防具神魂'
	tGamblingMonthActivity_Award[3304221] = {}
	-- 820072	天瀑玄羽	六阶头部神魂
	tGamblingMonthActivity_Award[3304221][1] = {}
	tGamblingMonthActivity_Award[3304221][1]["RewardItem"] = {}
	tGamblingMonthActivity_Award[3304221][1]["RewardItem"][1] = {}
	tGamblingMonthActivity_Award[3304221][1]["RewardItem"][1]["Id"] = 820072
	tGamblingMonthActivity_Award[3304221][1]["RewardItem"][1]["Attr"] = "0 1"
	tGamblingMonthActivity_Award[3304221][1]["LogId"] = 12000797
	tGamblingMonthActivity_Award[3304221][1]["DeleteItem"]={}
	tGamblingMonthActivity_Award[3304221][1]["DeleteItem"][1]={}
	tGamblingMonthActivity_Award[3304221][1]["DeleteItem"][1]["Id"]=3304221
	-- 820071	九曜玄羽	六阶头部神魂
	tGamblingMonthActivity_Award[3304221][2] = {}
	tGamblingMonthActivity_Award[3304221][2]["RewardItem"] = {}
	tGamblingMonthActivity_Award[3304221][2]["RewardItem"][1] = {}
	tGamblingMonthActivity_Award[3304221][2]["RewardItem"][1]["Id"] = 820071
	tGamblingMonthActivity_Award[3304221][2]["RewardItem"][1]["Attr"] = "0 1"
	tGamblingMonthActivity_Award[3304221][2]["LogId"] = 12000797
	tGamblingMonthActivity_Award[3304221][2]["DeleteItem"]={}
	tGamblingMonthActivity_Award[3304221][2]["DeleteItem"][1]={}
	tGamblingMonthActivity_Award[3304221][2]["DeleteItem"][1]["Id"]=3304221
	-- 822053	千漩仙铠	六阶衣服神魂
	tGamblingMonthActivity_Award[3304221][3] = {}
	tGamblingMonthActivity_Award[3304221][3]["RewardItem"] = {}
	tGamblingMonthActivity_Award[3304221][3]["RewardItem"][1] = {}
	tGamblingMonthActivity_Award[3304221][3]["RewardItem"][1]["Id"] = 822053
	tGamblingMonthActivity_Award[3304221][3]["RewardItem"][1]["Attr"] = "0 1"
	tGamblingMonthActivity_Award[3304221][3]["LogId"] = 12000797
	tGamblingMonthActivity_Award[3304221][3]["DeleteItem"]={}
	tGamblingMonthActivity_Award[3304221][3]["DeleteItem"][1]={}
	tGamblingMonthActivity_Award[3304221][3]["DeleteItem"][1]["Id"]=3304221
	-- 822055	天瀑仙袍	六阶衣服神魂
	tGamblingMonthActivity_Award[3304221][4] = {}
	tGamblingMonthActivity_Award[3304221][4]["RewardItem"] = {}
	tGamblingMonthActivity_Award[3304221][4]["RewardItem"][1] = {}
	tGamblingMonthActivity_Award[3304221][4]["RewardItem"][1]["Id"] = 822055
	tGamblingMonthActivity_Award[3304221][4]["RewardItem"][1]["Attr"] = "0 1"
	tGamblingMonthActivity_Award[3304221][4]["LogId"] = 12000797
	tGamblingMonthActivity_Award[3304221][4]["DeleteItem"]={}
	tGamblingMonthActivity_Award[3304221][4]["DeleteItem"][1]={}
	tGamblingMonthActivity_Award[3304221][4]["DeleteItem"][1]["Id"]=3304221
	-- 821032	灵檀玄囊	六阶香囊神魂
	tGamblingMonthActivity_Award[3304221][5] = {}
	tGamblingMonthActivity_Award[3304221][5]["RewardItem"] = {}
	tGamblingMonthActivity_Award[3304221][5]["RewardItem"][1] = {}
	tGamblingMonthActivity_Award[3304221][5]["RewardItem"][1]["Id"] = 821032
	tGamblingMonthActivity_Award[3304221][5]["RewardItem"][1]["Attr"] = "0 1"
	tGamblingMonthActivity_Award[3304221][5]["LogId"] = 12000797
	tGamblingMonthActivity_Award[3304221][5]["DeleteItem"]={}
	tGamblingMonthActivity_Award[3304221][5]["DeleteItem"][1]={}
	tGamblingMonthActivity_Award[3304221][5]["DeleteItem"][1]["Id"]=3304221
	-- 821031	晶魄玄坠	六阶项链神魂
	tGamblingMonthActivity_Award[3304221][6] = {}
	tGamblingMonthActivity_Award[3304221][6]["RewardItem"] = {}
	tGamblingMonthActivity_Award[3304221][6]["RewardItem"][1] = {}
	tGamblingMonthActivity_Award[3304221][6]["RewardItem"][1]["Id"] = 821031
	tGamblingMonthActivity_Award[3304221][6]["RewardItem"][1]["Attr"] = "0 1"
	tGamblingMonthActivity_Award[3304221][6]["LogId"] = 12000797
	tGamblingMonthActivity_Award[3304221][6]["DeleteItem"]={}
	tGamblingMonthActivity_Award[3304221][6]["DeleteItem"][1]={}
	tGamblingMonthActivity_Award[3304221][6]["DeleteItem"][1]["Id"]=3304221
	-- 823055	盘龙玄戒	六阶戒指神魂
	tGamblingMonthActivity_Award[3304221][7] = {}
	tGamblingMonthActivity_Award[3304221][7]["RewardItem"] = {}
	tGamblingMonthActivity_Award[3304221][7]["RewardItem"][1] = {}
	tGamblingMonthActivity_Award[3304221][7]["RewardItem"][1]["Id"] = 823055
	tGamblingMonthActivity_Award[3304221][7]["RewardItem"][1]["Attr"] = "0 1"
	tGamblingMonthActivity_Award[3304221][7]["LogId"] = 12000797
	tGamblingMonthActivity_Award[3304221][7]["DeleteItem"]={}
	tGamblingMonthActivity_Award[3304221][7]["DeleteItem"][1]={}
	tGamblingMonthActivity_Award[3304221][7]["DeleteItem"][1]["Id"]=3304221
	-- 823057	玄玉扳指	六阶扳指神魂
	tGamblingMonthActivity_Award[3304221][8] = {}
	tGamblingMonthActivity_Award[3304221][8]["RewardItem"] = {}
	tGamblingMonthActivity_Award[3304221][8]["RewardItem"][1] = {}
	tGamblingMonthActivity_Award[3304221][8]["RewardItem"][1]["Id"] = 823057
	tGamblingMonthActivity_Award[3304221][8]["RewardItem"][1]["Attr"] = "0 1"
	tGamblingMonthActivity_Award[3304221][8]["LogId"] = 12000797
	tGamblingMonthActivity_Award[3304221][8]["DeleteItem"]={}
	tGamblingMonthActivity_Award[3304221][8]["DeleteItem"][1]={}
	tGamblingMonthActivity_Award[3304221][8]["DeleteItem"][1]["Id"]=3304221
	-- 823056	蟠龙玄镯	六阶手镯神魂
	tGamblingMonthActivity_Award[3304221][9] = {}
	tGamblingMonthActivity_Award[3304221][9]["RewardItem"] = {}
	tGamblingMonthActivity_Award[3304221][9]["RewardItem"][1] = {}
	tGamblingMonthActivity_Award[3304221][9]["RewardItem"][1]["Id"] = 823056
	tGamblingMonthActivity_Award[3304221][9]["RewardItem"][1]["Attr"] = "0 1"
	tGamblingMonthActivity_Award[3304221][9]["LogId"] = 12000797
	tGamblingMonthActivity_Award[3304221][9]["DeleteItem"]={}
	tGamblingMonthActivity_Award[3304221][9]["DeleteItem"][1]={}
	tGamblingMonthActivity_Award[3304221][9]["DeleteItem"][1]["Id"]=3304221
	-- 824017	天行玄履	六阶鞋子神魂
	tGamblingMonthActivity_Award[3304221][10] = {}
	tGamblingMonthActivity_Award[3304221][10]["RewardItem"] = {}
	tGamblingMonthActivity_Award[3304221][10]["RewardItem"][1] = {}
	tGamblingMonthActivity_Award[3304221][10]["RewardItem"][1]["Id"] = 824017
	tGamblingMonthActivity_Award[3304221][10]["RewardItem"][1]["Attr"] = "0 1"
	tGamblingMonthActivity_Award[3304221][10]["LogId"] = 12000797
	tGamblingMonthActivity_Award[3304221][10]["DeleteItem"]={}
	tGamblingMonthActivity_Award[3304221][10]["DeleteItem"][1]={}
	tGamblingMonthActivity_Award[3304221][10]["DeleteItem"][1]["Id"]=3304221



	-- 3304222,'6阶神魂可选'
	tGamblingMonthActivity_Award[3304222] = {}
	--3304220,'6阶武器神魂'
	tGamblingMonthActivity_Award[3304222][1] = {}
	tGamblingMonthActivity_Award[3304222][1]["RewardItem"] = {}
	tGamblingMonthActivity_Award[3304222][1]["RewardItem"][1] = {}
	tGamblingMonthActivity_Award[3304222][1]["RewardItem"][1]["Id"] = 3304220
	tGamblingMonthActivity_Award[3304222][1]["RewardItem"][1]["Attr"] = "0 1"
	tGamblingMonthActivity_Award[3304222][1]["LogId"] = 12000797
	tGamblingMonthActivity_Award[3304222][1]["DeleteItem"]={}
	tGamblingMonthActivity_Award[3304222][1]["DeleteItem"][1]={}
	tGamblingMonthActivity_Award[3304222][1]["DeleteItem"][1]["Id"]=3304222
	-- 3304221,'6阶防具神魂'
	tGamblingMonthActivity_Award[3304222][2] = {}
	tGamblingMonthActivity_Award[3304222][2]["RewardItem"] = {}
	tGamblingMonthActivity_Award[3304222][2]["RewardItem"][1] = {}
	tGamblingMonthActivity_Award[3304222][2]["RewardItem"][1]["Id"] = 3304221
	tGamblingMonthActivity_Award[3304222][2]["RewardItem"][1]["Attr"] = "0 1"
	tGamblingMonthActivity_Award[3304222][2]["LogId"] = 12000797
	tGamblingMonthActivity_Award[3304222][2]["DeleteItem"]={}
	tGamblingMonthActivity_Award[3304222][2]["DeleteItem"][1]={}
	tGamblingMonthActivity_Award[3304222][2]["DeleteItem"][1]["Id"]=3304222
	
	
-- 3304177,'5级淬炼'
	tGamblingMonthActivity_Award[3304177] = {}
--1			724439	极品的马刺	[鞋子][暴击抵抗]道具	5级淬炼道具
	tGamblingMonthActivity_Award[3304177][1] = {}
	tGamblingMonthActivity_Award[3304177][1]["RewardItem"] = {}
	tGamblingMonthActivity_Award[3304177][1]["RewardItem"][1] = {}
	tGamblingMonthActivity_Award[3304177][1]["RewardItem"][1]["Id"] = 724439
	tGamblingMonthActivity_Award[3304177][1]["RewardItem"][1]["Attr"] = "0 1"
	tGamblingMonthActivity_Award[3304177][1]["LogId"] = 12000797
	tGamblingMonthActivity_Award[3304177][1]["DeleteItem"]={}
	tGamblingMonthActivity_Award[3304177][1]["DeleteItem"][1]={}
	tGamblingMonthActivity_Award[3304177][1]["DeleteItem"][1]["Id"]=3304177
--2			724497	极品的纹锦	[鞋子][毒伤减免]道具	5级淬炼道具
	tGamblingMonthActivity_Award[3304177][2] = {}
	tGamblingMonthActivity_Award[3304177][2]["RewardItem"] = {}
	tGamblingMonthActivity_Award[3304177][2]["RewardItem"][1] = {}
	tGamblingMonthActivity_Award[3304177][2]["RewardItem"][1]["Id"] = 724497
	tGamblingMonthActivity_Award[3304177][2]["RewardItem"][1]["Attr"] = "0 1"
	tGamblingMonthActivity_Award[3304177][2]["LogId"] = 12000797
	tGamblingMonthActivity_Award[3304177][2]["DeleteItem"]={}
	tGamblingMonthActivity_Award[3304177][2]["DeleteItem"][1]={}
	tGamblingMonthActivity_Award[3304177][2]["DeleteItem"][1]["Id"]=3304177
--3			725206	极品的绞丝	[手镯][魔防增加]道具	5级淬炼道具
	tGamblingMonthActivity_Award[3304177][3] = {}
	tGamblingMonthActivity_Award[3304177][3]["RewardItem"] = {}
	tGamblingMonthActivity_Award[3304177][3]["RewardItem"][1] = {}
	tGamblingMonthActivity_Award[3304177][3]["RewardItem"][1]["Id"] = 725206
	tGamblingMonthActivity_Award[3304177][3]["RewardItem"][1]["Attr"] = "0 1"
	tGamblingMonthActivity_Award[3304177][3]["LogId"] = 12000797
	tGamblingMonthActivity_Award[3304177][3]["DeleteItem"]={}
	tGamblingMonthActivity_Award[3304177][3]["DeleteItem"][1]={}
	tGamblingMonthActivity_Award[3304177][3]["DeleteItem"][1]["Id"]=3304177
--4			724367	极品的镯环	[手镯][粉碎攻击]道具	5级淬炼道具
	tGamblingMonthActivity_Award[3304177][4] = {}
	tGamblingMonthActivity_Award[3304177][4]["RewardItem"] = {}
	tGamblingMonthActivity_Award[3304177][4]["RewardItem"][1] = {}
	tGamblingMonthActivity_Award[3304177][4]["RewardItem"][1]["Id"] = 724367
	tGamblingMonthActivity_Award[3304177][4]["RewardItem"][1]["Attr"] = "0 1"
	tGamblingMonthActivity_Award[3304177][4]["LogId"] = 12000797
	tGamblingMonthActivity_Award[3304177][4]["DeleteItem"]={}
	tGamblingMonthActivity_Award[3304177][4]["DeleteItem"][1]={}
	tGamblingMonthActivity_Award[3304177][4]["DeleteItem"][1]["Id"]=3304177
--5			724429	极品的镶珠	[手镯][法术暴击]道具	5级淬炼道具
	tGamblingMonthActivity_Award[3304177][5] = {}
	tGamblingMonthActivity_Award[3304177][5]["RewardItem"] = {}
	tGamblingMonthActivity_Award[3304177][5]["RewardItem"][1] = {}
	tGamblingMonthActivity_Award[3304177][5]["RewardItem"][1]["Id"] = 724429
	tGamblingMonthActivity_Award[3304177][5]["RewardItem"][1]["Attr"] = "0 1"
	tGamblingMonthActivity_Award[3304177][5]["LogId"] = 12000797
	tGamblingMonthActivity_Award[3304177][5]["DeleteItem"]={}
	tGamblingMonthActivity_Award[3304177][5]["DeleteItem"][1]={}
	tGamblingMonthActivity_Award[3304177][5]["DeleteItem"][1]["Id"]=3304177
--6			724394	极品的金钏	[手镯][法术穿透]道具	5级淬炼道具
	tGamblingMonthActivity_Award[3304177][6] = {}
	tGamblingMonthActivity_Award[3304177][6]["RewardItem"] = {}
	tGamblingMonthActivity_Award[3304177][6]["RewardItem"][1] = {}
	tGamblingMonthActivity_Award[3304177][6]["RewardItem"][1]["Id"] = 724394
	tGamblingMonthActivity_Award[3304177][6]["RewardItem"][1]["Attr"] = "0 1"
	tGamblingMonthActivity_Award[3304177][6]["LogId"] = 12000797
	tGamblingMonthActivity_Award[3304177][6]["DeleteItem"]={}
	tGamblingMonthActivity_Award[3304177][6]["DeleteItem"][1]={}
	tGamblingMonthActivity_Award[3304177][6]["DeleteItem"][1]["Id"]=3304177
--7			725201	极品的衿缨	[香囊][魔防增加]道具	5级淬炼道具
	tGamblingMonthActivity_Award[3304177][7] = {}
	tGamblingMonthActivity_Award[3304177][7]["RewardItem"] = {}
	tGamblingMonthActivity_Award[3304177][7]["RewardItem"][1] = {}
	tGamblingMonthActivity_Award[3304177][7]["RewardItem"][1]["Id"] = 725201
	tGamblingMonthActivity_Award[3304177][7]["RewardItem"][1]["Attr"] = "0 1"
	tGamblingMonthActivity_Award[3304177][7]["LogId"] = 12000797
	tGamblingMonthActivity_Award[3304177][7]["DeleteItem"]={}
	tGamblingMonthActivity_Award[3304177][7]["DeleteItem"][1]={}
	tGamblingMonthActivity_Award[3304177][7]["DeleteItem"][1]["Id"]=3304177
--8			724377	极品的璎珞	[香囊][毒伤减免]道具	5级淬炼道具
	tGamblingMonthActivity_Award[3304177][8] = {}
	tGamblingMonthActivity_Award[3304177][8]["RewardItem"] = {}
	tGamblingMonthActivity_Award[3304177][8]["RewardItem"][1] = {}
	tGamblingMonthActivity_Award[3304177][8]["RewardItem"][1]["Id"] = 724377
	tGamblingMonthActivity_Award[3304177][8]["RewardItem"][1]["Attr"] = "0 1"
	tGamblingMonthActivity_Award[3304177][8]["LogId"] = 12000797
	tGamblingMonthActivity_Award[3304177][8]["DeleteItem"]={}
	tGamblingMonthActivity_Award[3304177][8]["DeleteItem"][1]={}
	tGamblingMonthActivity_Award[3304177][8]["DeleteItem"][1]["Id"]=3304177
--9			724389	极品的丝绦	[香囊][法术穿透]道具	5级淬炼道具
	tGamblingMonthActivity_Award[3304177][9] = {}
	tGamblingMonthActivity_Award[3304177][9]["RewardItem"] = {}
	tGamblingMonthActivity_Award[3304177][9]["RewardItem"][1] = {}
	tGamblingMonthActivity_Award[3304177][9]["RewardItem"][1]["Id"] = 724389
	tGamblingMonthActivity_Award[3304177][9]["RewardItem"][1]["Attr"] = "0 1"
	tGamblingMonthActivity_Award[3304177][9]["LogId"] = 12000797
	tGamblingMonthActivity_Award[3304177][9]["DeleteItem"]={}
	tGamblingMonthActivity_Award[3304177][9]["DeleteItem"][1]={}
	tGamblingMonthActivity_Award[3304177][9]["DeleteItem"][1]["Id"]=3304177
--10		724372	极品的流苏	[香囊][坚固防御]道具	5级淬炼道具
	tGamblingMonthActivity_Award[3304177][10] = {}
	tGamblingMonthActivity_Award[3304177][10]["RewardItem"] = {}
	tGamblingMonthActivity_Award[3304177][10]["RewardItem"][1] = {}
	tGamblingMonthActivity_Award[3304177][10]["RewardItem"][1]["Id"] = 724372
	tGamblingMonthActivity_Award[3304177][10]["RewardItem"][1]["Attr"] = "0 1"
	tGamblingMonthActivity_Award[3304177][10]["LogId"] = 12000797
	tGamblingMonthActivity_Award[3304177][10]["DeleteItem"]={}
	tGamblingMonthActivity_Award[3304177][10]["DeleteItem"][1]={}
	tGamblingMonthActivity_Award[3304177][10]["DeleteItem"][1]["Id"]=3304177
--11		725196	极品的玉扣	[项链][魔防增加]道具	5级淬炼道具
	tGamblingMonthActivity_Award[3304177][11] = {}
	tGamblingMonthActivity_Award[3304177][11]["RewardItem"] = {}
	tGamblingMonthActivity_Award[3304177][11]["RewardItem"][1] = {}
	tGamblingMonthActivity_Award[3304177][11]["RewardItem"][1]["Id"] = 725196
	tGamblingMonthActivity_Award[3304177][11]["RewardItem"][1]["Attr"] = "0 1"
	tGamblingMonthActivity_Award[3304177][11]["LogId"] = 12000797
	tGamblingMonthActivity_Award[3304177][11]["DeleteItem"]={}
	tGamblingMonthActivity_Award[3304177][11]["DeleteItem"][1]={}
	tGamblingMonthActivity_Award[3304177][11]["DeleteItem"][1]["Id"]=3304177
--12		724352	极品的佩饰	[项链][毒伤减免]道具	5级淬炼道具
	tGamblingMonthActivity_Award[3304177][12] = {}
	tGamblingMonthActivity_Award[3304177][12]["RewardItem"] = {}
	tGamblingMonthActivity_Award[3304177][12]["RewardItem"][1] = {}
	tGamblingMonthActivity_Award[3304177][12]["RewardItem"][1]["Id"] = 724352
	tGamblingMonthActivity_Award[3304177][12]["RewardItem"][1]["Attr"] = "0 1"
	tGamblingMonthActivity_Award[3304177][12]["LogId"] = 12000797
	tGamblingMonthActivity_Award[3304177][12]["DeleteItem"]={}
	tGamblingMonthActivity_Award[3304177][12]["DeleteItem"][1]={}
	tGamblingMonthActivity_Award[3304177][12]["DeleteItem"][1]["Id"]=3304177
--13		724482	极品的坠饰	[项链][坚固防御]道具	5级淬炼道具
	tGamblingMonthActivity_Award[3304177][13] = {}
	tGamblingMonthActivity_Award[3304177][13]["RewardItem"] = {}
	tGamblingMonthActivity_Award[3304177][13]["RewardItem"][1] = {}
	tGamblingMonthActivity_Award[3304177][13]["RewardItem"][1]["Id"] = 724482
	tGamblingMonthActivity_Award[3304177][13]["RewardItem"][1]["Attr"] = "0 1"
	tGamblingMonthActivity_Award[3304177][13]["LogId"] = 12000797
	tGamblingMonthActivity_Award[3304177][13]["DeleteItem"]={}
	tGamblingMonthActivity_Award[3304177][13]["DeleteItem"][1]={}
	tGamblingMonthActivity_Award[3304177][13]["DeleteItem"][1]["Id"]=3304177
--14		724444	极品的面甲	[头部][生命增效]道具	5级淬炼道具
	tGamblingMonthActivity_Award[3304177][14] = {}
	tGamblingMonthActivity_Award[3304177][14]["RewardItem"] = {}
	tGamblingMonthActivity_Award[3304177][14]["RewardItem"][1] = {}
	tGamblingMonthActivity_Award[3304177][14]["RewardItem"][1]["Id"] = 724444
	tGamblingMonthActivity_Award[3304177][14]["RewardItem"][1]["Attr"] = "0 1"
	tGamblingMonthActivity_Award[3304177][14]["LogId"] = 12000797
	tGamblingMonthActivity_Award[3304177][14]["DeleteItem"]={}
	tGamblingMonthActivity_Award[3304177][14]["DeleteItem"][1]={}
	tGamblingMonthActivity_Award[3304177][14]["DeleteItem"][1]["Id"]=3304177
--15		724357	极品的冠带	[头部][盾牌格挡]道具	5级淬炼道具
	tGamblingMonthActivity_Award[3304177][15] = {}
	tGamblingMonthActivity_Award[3304177][15]["RewardItem"] = {}
	tGamblingMonthActivity_Award[3304177][15]["RewardItem"][1] = {}
	tGamblingMonthActivity_Award[3304177][15]["RewardItem"][1]["Id"] = 724357
	tGamblingMonthActivity_Award[3304177][15]["RewardItem"][1]["Attr"] = "0 1"
	tGamblingMonthActivity_Award[3304177][15]["LogId"] = 12000797
	tGamblingMonthActivity_Award[3304177][15]["DeleteItem"]={}
	tGamblingMonthActivity_Award[3304177][15]["DeleteItem"][1]={}
	tGamblingMonthActivity_Award[3304177][15]["DeleteItem"][1]["Id"]=3304177
--16		724487	极品的锦翎	[头部][毒伤减免]道具	5级淬炼道具
	tGamblingMonthActivity_Award[3304177][16] = {}
	tGamblingMonthActivity_Award[3304177][16]["RewardItem"] = {}
	tGamblingMonthActivity_Award[3304177][16]["RewardItem"][1] = {}
	tGamblingMonthActivity_Award[3304177][16]["RewardItem"][1]["Id"] = 724487
	tGamblingMonthActivity_Award[3304177][16]["RewardItem"][1]["Attr"] = "0 1"
	tGamblingMonthActivity_Award[3304177][16]["LogId"] = 12000797
	tGamblingMonthActivity_Award[3304177][16]["DeleteItem"]={}
	tGamblingMonthActivity_Award[3304177][16]["DeleteItem"][1]={}
	tGamblingMonthActivity_Award[3304177][16]["DeleteItem"][1]["Id"]=3304177
--17		724384	极品的盔缨	[头部][法术穿透]道具	5级淬炼道具
	tGamblingMonthActivity_Award[3304177][17] = {}
	tGamblingMonthActivity_Award[3304177][17]["RewardItem"] = {}
	tGamblingMonthActivity_Award[3304177][17]["RewardItem"][1] = {}
	tGamblingMonthActivity_Award[3304177][17]["RewardItem"][1]["Id"] = 724384
	tGamblingMonthActivity_Award[3304177][17]["RewardItem"][1]["Attr"] = "0 1"
	tGamblingMonthActivity_Award[3304177][17]["LogId"] = 12000797
	tGamblingMonthActivity_Award[3304177][17]["DeleteItem"]={}
	tGamblingMonthActivity_Award[3304177][17]["DeleteItem"][1]={}
	tGamblingMonthActivity_Award[3304177][17]["DeleteItem"][1]["Id"]=3304177
--18		724434	极品的护镜	[衣甲][暴击抵抗]道具	5级淬炼道具
	tGamblingMonthActivity_Award[3304177][18] = {}
	tGamblingMonthActivity_Award[3304177][18]["RewardItem"] = {}
	tGamblingMonthActivity_Award[3304177][18]["RewardItem"][1] = {}
	tGamblingMonthActivity_Award[3304177][18]["RewardItem"][1]["Id"] = 724434
	tGamblingMonthActivity_Award[3304177][18]["RewardItem"][1]["Attr"] = "0 1"
	tGamblingMonthActivity_Award[3304177][18]["LogId"] = 12000797
	tGamblingMonthActivity_Award[3304177][18]["DeleteItem"]={}
	tGamblingMonthActivity_Award[3304177][18]["DeleteItem"][1]={}
	tGamblingMonthActivity_Award[3304177][18]["DeleteItem"][1]["Id"]=3304177
--19		724492	极品的腰带	[衣甲][毒伤减免]道具	5级淬炼道具
	tGamblingMonthActivity_Award[3304177][19] = {}
	tGamblingMonthActivity_Award[3304177][19]["RewardItem"] = {}
	tGamblingMonthActivity_Award[3304177][19]["RewardItem"][1] = {}
	tGamblingMonthActivity_Award[3304177][19]["RewardItem"][1]["Id"] = 724492
	tGamblingMonthActivity_Award[3304177][19]["RewardItem"][1]["Attr"] = "0 1"
	tGamblingMonthActivity_Award[3304177][19]["LogId"] = 12000797
	tGamblingMonthActivity_Award[3304177][19]["DeleteItem"]={}
	tGamblingMonthActivity_Award[3304177][19]["DeleteItem"][1]={}
	tGamblingMonthActivity_Award[3304177][19]["DeleteItem"][1]["Id"]=3304177
--20		724477	极品的胸铠	[衣甲][坚固防御]道具	5级淬炼道具
	tGamblingMonthActivity_Award[3304177][20] = {}
	tGamblingMonthActivity_Award[3304177][20]["RewardItem"] = {}
	tGamblingMonthActivity_Award[3304177][20]["RewardItem"][1] = {}
	tGamblingMonthActivity_Award[3304177][20]["RewardItem"][1]["Id"] = 724477
	tGamblingMonthActivity_Award[3304177][20]["RewardItem"][1]["Attr"] = "0 1"
	tGamblingMonthActivity_Award[3304177][20]["LogId"] = 12000797
	tGamblingMonthActivity_Award[3304177][20]["DeleteItem"]={}
	tGamblingMonthActivity_Award[3304177][20]["DeleteItem"][1]={}
	tGamblingMonthActivity_Award[3304177][20]["DeleteItem"][1]["Id"]=3304177
--21		724414	极品的红缨	[长武][物理暴击]道具	5级淬炼道具
	tGamblingMonthActivity_Award[3304177][21] = {}
	tGamblingMonthActivity_Award[3304177][21]["RewardItem"] = {}
	tGamblingMonthActivity_Award[3304177][21]["RewardItem"][1] = {}
	tGamblingMonthActivity_Award[3304177][21]["RewardItem"][1]["Id"] = 724414
	tGamblingMonthActivity_Award[3304177][21]["RewardItem"][1]["Attr"] = "0 1"
	tGamblingMonthActivity_Award[3304177][21]["LogId"] = 12000797
	tGamblingMonthActivity_Award[3304177][21]["DeleteItem"]={}
	tGamblingMonthActivity_Award[3304177][21]["DeleteItem"][1]={}
	tGamblingMonthActivity_Award[3304177][21]["DeleteItem"][1]["Id"]=3304177
--22		724458	极品的钢烙	[长武][粉碎攻击]道具	5级淬炼道具
	tGamblingMonthActivity_Award[3304177][22] = {}
	tGamblingMonthActivity_Award[3304177][22]["RewardItem"] = {}
	tGamblingMonthActivity_Award[3304177][22]["RewardItem"][1] = {}
	tGamblingMonthActivity_Award[3304177][22]["RewardItem"][1]["Id"] = 724458
	tGamblingMonthActivity_Award[3304177][22]["RewardItem"][1]["Attr"] = "0 1"
	tGamblingMonthActivity_Award[3304177][22]["LogId"] = 12000797
	tGamblingMonthActivity_Award[3304177][22]["DeleteItem"]={}
	tGamblingMonthActivity_Award[3304177][22]["DeleteItem"][1]={}
	tGamblingMonthActivity_Award[3304177][22]["DeleteItem"][1]["Id"]=3304177
--23		724409	极品的刃铁	[短武][物理暴击]道具	5级淬炼道具
	tGamblingMonthActivity_Award[3304177][23] = {}
	tGamblingMonthActivity_Award[3304177][23]["RewardItem"] = {}
	tGamblingMonthActivity_Award[3304177][23]["RewardItem"][1] = {}
	tGamblingMonthActivity_Award[3304177][23]["RewardItem"][1]["Id"] = 724409
	tGamblingMonthActivity_Award[3304177][23]["RewardItem"][1]["Attr"] = "0 1"
	tGamblingMonthActivity_Award[3304177][23]["LogId"] = 12000797
	tGamblingMonthActivity_Award[3304177][23]["DeleteItem"]={}
	tGamblingMonthActivity_Award[3304177][23]["DeleteItem"][1]={}
	tGamblingMonthActivity_Award[3304177][23]["DeleteItem"][1]["Id"]=3304177
--24		724453	极品的锥刃	[短武][粉碎攻击]道具	5级淬炼道具
	tGamblingMonthActivity_Award[3304177][24] = {}
	tGamblingMonthActivity_Award[3304177][24]["RewardItem"] = {}
	tGamblingMonthActivity_Award[3304177][24]["RewardItem"][1] = {}
	tGamblingMonthActivity_Award[3304177][24]["RewardItem"][1]["Id"] = 724453
	tGamblingMonthActivity_Award[3304177][24]["RewardItem"][1]["Attr"] = "0 1"
	tGamblingMonthActivity_Award[3304177][24]["LogId"] = 12000797
	tGamblingMonthActivity_Award[3304177][24]["DeleteItem"]={}
	tGamblingMonthActivity_Award[3304177][24]["DeleteItem"][1]={}
	tGamblingMonthActivity_Award[3304177][24]["DeleteItem"][1]["Id"]=3304177
--25		724362	极品的盾刺	[盾牌][盾牌格挡]道具	5级淬炼道具
	tGamblingMonthActivity_Award[3304177][25] = {}
	tGamblingMonthActivity_Award[3304177][25]["RewardItem"] = {}
	tGamblingMonthActivity_Award[3304177][25]["RewardItem"][1] = {}
	tGamblingMonthActivity_Award[3304177][25]["RewardItem"][1]["Id"] = 724362
	tGamblingMonthActivity_Award[3304177][25]["RewardItem"][1]["Attr"] = "0 1"
	tGamblingMonthActivity_Award[3304177][25]["LogId"] = 12000797
	tGamblingMonthActivity_Award[3304177][25]["DeleteItem"]={}
	tGamblingMonthActivity_Award[3304177][25]["DeleteItem"][1]={}
	tGamblingMonthActivity_Award[3304177][25]["DeleteItem"][1]["Id"]=3304177
--26		724424	极品的剑穗	[法剑][法术暴击]道具	5级淬炼道具
	tGamblingMonthActivity_Award[3304177][26] = {}
	tGamblingMonthActivity_Award[3304177][26]["RewardItem"] = {}
	tGamblingMonthActivity_Award[3304177][26]["RewardItem"][1] = {}
	tGamblingMonthActivity_Award[3304177][26]["RewardItem"][1]["Id"] = 724424
	tGamblingMonthActivity_Award[3304177][26]["RewardItem"][1]["Attr"] = "0 1"
	tGamblingMonthActivity_Award[3304177][26]["LogId"] = 12000797
	tGamblingMonthActivity_Award[3304177][26]["DeleteItem"]={}
	tGamblingMonthActivity_Award[3304177][26]["DeleteItem"][1]={}
	tGamblingMonthActivity_Award[3304177][26]["DeleteItem"][1]["Id"]=3304177
--27		3006169	极品的拂坠	[拂尘][生命增效]道具	5级淬炼道具
	tGamblingMonthActivity_Award[3304177][27] = {}
	tGamblingMonthActivity_Award[3304177][27]["RewardItem"] = {}
	tGamblingMonthActivity_Award[3304177][27]["RewardItem"][1] = {}
	tGamblingMonthActivity_Award[3304177][27]["RewardItem"][1]["Id"] = 3006169
	tGamblingMonthActivity_Award[3304177][27]["RewardItem"][1]["Attr"] = "0 1"
	tGamblingMonthActivity_Award[3304177][27]["LogId"] = 12000797
	tGamblingMonthActivity_Award[3304177][27]["DeleteItem"]={}
	tGamblingMonthActivity_Award[3304177][27]["DeleteItem"][1]={}
	tGamblingMonthActivity_Award[3304177][27]["DeleteItem"][1]["Id"]=3304177
--28		724404	极品的弓弦	[弓][物理暴击]道具	5级淬炼道具
	tGamblingMonthActivity_Award[3304177][28] = {}
	tGamblingMonthActivity_Award[3304177][28]["RewardItem"] = {}
	tGamblingMonthActivity_Award[3304177][28]["RewardItem"][1] = {}
	tGamblingMonthActivity_Award[3304177][28]["RewardItem"][1]["Id"] = 724404
	tGamblingMonthActivity_Award[3304177][28]["RewardItem"][1]["Attr"] = "0 1"
	tGamblingMonthActivity_Award[3304177][28]["LogId"] = 12000797
	tGamblingMonthActivity_Award[3304177][28]["DeleteItem"]={}
	tGamblingMonthActivity_Award[3304177][28]["DeleteItem"][1]={}
	tGamblingMonthActivity_Award[3304177][28]["DeleteItem"][1]["Id"]=3304177
--29		724463	极品的弓臂	[弓][粉碎攻击]道具	5级淬炼道具
	tGamblingMonthActivity_Award[3304177][29] = {}
	tGamblingMonthActivity_Award[3304177][29]["RewardItem"] = {}
	tGamblingMonthActivity_Award[3304177][29]["RewardItem"][1] = {}
	tGamblingMonthActivity_Award[3304177][29]["RewardItem"][1]["Id"] = 724463
	tGamblingMonthActivity_Award[3304177][29]["RewardItem"][1]["Attr"] = "0 1"
	tGamblingMonthActivity_Award[3304177][29]["LogId"] = 12000797
	tGamblingMonthActivity_Award[3304177][29]["DeleteItem"]={}
	tGamblingMonthActivity_Award[3304177][29]["DeleteItem"][1]={}
	tGamblingMonthActivity_Award[3304177][29]["DeleteItem"][1]["Id"]=3304177
--30		724419	极品的琥珀	[戒指][物理暴击]道具	5级淬炼道具
	tGamblingMonthActivity_Award[3304177][30] = {}
	tGamblingMonthActivity_Award[3304177][30]["RewardItem"] = {}
	tGamblingMonthActivity_Award[3304177][30]["RewardItem"][1] = {}
	tGamblingMonthActivity_Award[3304177][30]["RewardItem"][1]["Id"] = 724419
	tGamblingMonthActivity_Award[3304177][30]["RewardItem"][1]["Attr"] = "0 1"
	tGamblingMonthActivity_Award[3304177][30]["LogId"] = 12000797
	tGamblingMonthActivity_Award[3304177][30]["DeleteItem"]={}
	tGamblingMonthActivity_Award[3304177][30]["DeleteItem"][1]={}
	tGamblingMonthActivity_Award[3304177][30]["DeleteItem"][1]["Id"]=3304177
--31		724472	极品的翡翠	[戒指][粉碎攻击]道具	5级淬炼道具
	tGamblingMonthActivity_Award[3304177][31] = {}
	tGamblingMonthActivity_Award[3304177][31]["RewardItem"] = {}
	tGamblingMonthActivity_Award[3304177][31]["RewardItem"][1] = {}
	tGamblingMonthActivity_Award[3304177][31]["RewardItem"][1]["Id"] = 724472
	tGamblingMonthActivity_Award[3304177][31]["RewardItem"][1]["Attr"] = "0 1"
	tGamblingMonthActivity_Award[3304177][31]["LogId"] = 12000797
	tGamblingMonthActivity_Award[3304177][31]["DeleteItem"]={}
	tGamblingMonthActivity_Award[3304177][31]["DeleteItem"][1]={}
	tGamblingMonthActivity_Award[3304177][31]["DeleteItem"][1]["Id"]=3304177
--32		725211	极品的珊瑚	[戒指][魔防增加]道具	5级淬炼道具
	tGamblingMonthActivity_Award[3304177][32] = {}
	tGamblingMonthActivity_Award[3304177][32]["RewardItem"] = {}
	tGamblingMonthActivity_Award[3304177][32]["RewardItem"][1] = {}
	tGamblingMonthActivity_Award[3304177][32]["RewardItem"][1]["Id"] = 725211
	tGamblingMonthActivity_Award[3304177][32]["RewardItem"][1]["Attr"] = "0 1"
	tGamblingMonthActivity_Award[3304177][32]["LogId"] = 12000797
	tGamblingMonthActivity_Award[3304177][32]["DeleteItem"]={}
	tGamblingMonthActivity_Award[3304177][32]["DeleteItem"][1]={}
	tGamblingMonthActivity_Award[3304177][32]["DeleteItem"][1]["Id"]=3304177







-- 3304178,'7阶神魂+6级淬炼'
	tGamblingMonthActivity_Award[3304178] = {}
	tGamblingMonthActivity_Award[3304178][1] = {}
	tGamblingMonthActivity_Award[3304178][1]["RewardItem"] = {}
	tGamblingMonthActivity_Award[3304178][1]["RewardItem"][1] = {}
	tGamblingMonthActivity_Award[3304178][1]["RewardItem"][1]["Id"] = 3004247
	tGamblingMonthActivity_Award[3304178][1]["RewardItem"][1]["Attr"] = "0 1"
	tGamblingMonthActivity_Award[3304178][1]["RewardItem"][2] = {}
	tGamblingMonthActivity_Award[3304178][1]["RewardItem"][2]["Id"] = 3004249
	tGamblingMonthActivity_Award[3304178][1]["RewardItem"][2]["Attr"] = "0 1"
	tGamblingMonthActivity_Award[3304178][1]["LogId"] = 12000797
	tGamblingMonthActivity_Award[3304178][1]["DeleteItem"]={}
	tGamblingMonthActivity_Award[3304178][1]["DeleteItem"][1]={}
	tGamblingMonthActivity_Award[3304178][1]["DeleteItem"][1]["Id"]=3304178
	
	tGamblingMonthActivity_Award[3304178][2] = {}
	tGamblingMonthActivity_Award[3304178][2]["RewardItem"] = {}
	tGamblingMonthActivity_Award[3304178][2]["RewardItem"][1] = {}
	tGamblingMonthActivity_Award[3304178][2]["RewardItem"][1]["Id"] = 3004248
	tGamblingMonthActivity_Award[3304178][2]["RewardItem"][1]["Attr"] = "0 1"
	tGamblingMonthActivity_Award[3304178][2]["RewardItem"][2] = {}
	tGamblingMonthActivity_Award[3304178][2]["RewardItem"][2]["Id"] = 3004249
	tGamblingMonthActivity_Award[3304178][2]["RewardItem"][2]["Attr"] = "0 1"
	tGamblingMonthActivity_Award[3304178][2]["LogId"] = 12000797
	tGamblingMonthActivity_Award[3304178][2]["DeleteItem"]={}
	tGamblingMonthActivity_Award[3304178][2]["DeleteItem"][1]={}
	tGamblingMonthActivity_Award[3304178][2]["DeleteItem"][1]["Id"]=3304178
	
	
	
-- 3304179,'00000000000500CP(B)
	tGamblingMonthActivity_Award[3304179] = {}
	tGamblingMonthActivity_Award[3304179]["RewardEMoneyMono"] = {}
	tGamblingMonthActivity_Award[3304179]["RewardEMoneyMono"]["Value"] = 500
	tGamblingMonthActivity_Award[3304179]["RewardEMoneyMono"]["EmoneyLog"] = "370	20711	0	0	500	"
	tGamblingMonthActivity_Award[3304179]["LogId"] = 12000797
	tGamblingMonthActivity_Award[3304179]["DeleteItem"]={}
	tGamblingMonthActivity_Award[3304179]["DeleteItem"][1]={}
	tGamblingMonthActivity_Award[3304179]["DeleteItem"][1]["Id"]=3304179
	
-- 192785	FlameDance
-- 3304180,'FlameDance(007days)
	tGamblingMonthActivity_Award[3304180] = {}
	tGamblingMonthActivity_Award[3304180]["RewardItem"] = {}
	tGamblingMonthActivity_Award[3304180]["RewardItem"][1] = {}
	tGamblingMonthActivity_Award[3304180]["RewardItem"][1]["Id"] = 192785
	tGamblingMonthActivity_Award[3304180]["RewardItem"][1]["Attr"] = "0 1 0 10080 0 0 0 1"
	tGamblingMonthActivity_Award[3304180]["LogId"] = 12000797
	tGamblingMonthActivity_Award[3304180]["DeleteItem"]={}
	tGamblingMonthActivity_Award[3304180]["DeleteItem"][1]={}
	tGamblingMonthActivity_Award[3304180]["DeleteItem"][1]["Id"]=3304180
-- 3304181,'FlameDance(015days)
	tGamblingMonthActivity_Award[3304181] = {}
	tGamblingMonthActivity_Award[3304181]["RewardItem"] = {}
	tGamblingMonthActivity_Award[3304181]["RewardItem"][1] = {}
	tGamblingMonthActivity_Award[3304181]["RewardItem"][1]["Id"] = 192785
	tGamblingMonthActivity_Award[3304181]["RewardItem"][1]["Attr"] = "0 1 0 21600 0 0 0 1"
	tGamblingMonthActivity_Award[3304181]["LogId"] = 12000797
	tGamblingMonthActivity_Award[3304181]["DeleteItem"]={}
	tGamblingMonthActivity_Award[3304181]["DeleteItem"][1]={}
	tGamblingMonthActivity_Award[3304181]["DeleteItem"][1]["Id"]=3304181
-- 3304182,'FlameDance(030days)
	tGamblingMonthActivity_Award[3304182] = {}
	tGamblingMonthActivity_Award[3304182]["RewardItem"] = {}
	tGamblingMonthActivity_Award[3304182]["RewardItem"][1] = {}
	tGamblingMonthActivity_Award[3304182]["RewardItem"][1]["Id"] = 192785
	tGamblingMonthActivity_Award[3304182]["RewardItem"][1]["Attr"] = "0 1 0 43200 0 0 0 1"
	tGamblingMonthActivity_Award[3304182]["LogId"] = 12000797
	tGamblingMonthActivity_Award[3304182]["DeleteItem"]={}
	tGamblingMonthActivity_Award[3304182]["DeleteItem"][1]={}
	tGamblingMonthActivity_Award[3304182]["DeleteItem"][1]["Id"]=3304182
-- 3304183,'FlameDance(090days)
	tGamblingMonthActivity_Award[3304183] = {}
	tGamblingMonthActivity_Award[3304183]["RewardItem"] = {}
	tGamblingMonthActivity_Award[3304183]["RewardItem"][1] = {}
	tGamblingMonthActivity_Award[3304183]["RewardItem"][1]["Id"] = 192785
	tGamblingMonthActivity_Award[3304183]["RewardItem"][1]["Attr"] = "0 1 0 129600 0 0 0 1"
	tGamblingMonthActivity_Award[3304183]["LogId"] = 12000797
	tGamblingMonthActivity_Award[3304183]["DeleteItem"]={}
	tGamblingMonthActivity_Award[3304183]["DeleteItem"][1]={}
	tGamblingMonthActivity_Award[3304183]["DeleteItem"][1]["Id"]=3304183
-- 3304184,'FlameDance(180days)
	tGamblingMonthActivity_Award[3304184] = {}
	tGamblingMonthActivity_Award[3304184]["RewardItem"] = {}
	tGamblingMonthActivity_Award[3304184]["RewardItem"][1] = {}
	tGamblingMonthActivity_Award[3304184]["RewardItem"][1]["Id"] = 192785
	tGamblingMonthActivity_Award[3304184]["RewardItem"][1]["Attr"] = "0 1 0 259200 0 0 0 1"
	tGamblingMonthActivity_Award[3304184]["LogId"] = 12000797
	tGamblingMonthActivity_Award[3304184]["DeleteItem"]={}
	tGamblingMonthActivity_Award[3304184]["DeleteItem"][1]={}
	tGamblingMonthActivity_Award[3304184]["DeleteItem"][1]["Id"]=3304184
-- 3304185,'FlameDance(forever)
	tGamblingMonthActivity_Award[3304185] = {}
	tGamblingMonthActivity_Award[3304185]["RewardItem"] = {}
	tGamblingMonthActivity_Award[3304185]["RewardItem"][1] = {}
	tGamblingMonthActivity_Award[3304185]["RewardItem"][1]["Id"] = 192785
	tGamblingMonthActivity_Award[3304185]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tGamblingMonthActivity_Award[3304185]["LogId"] = 12000797
	tGamblingMonthActivity_Award[3304185]["DeleteItem"]={}
	tGamblingMonthActivity_Award[3304185]["DeleteItem"][1]={}
	tGamblingMonthActivity_Award[3304185]["DeleteItem"][1]["Id"]=3304185
	-- 3304186,'FlameDanceSongofDespair'
	tGamblingMonthActivity_Award[3304186] = {}
	tGamblingMonthActivity_Award[3304186][1] = {}
	tGamblingMonthActivity_Award[3304186][1]["RewardItem"] = {}
	tGamblingMonthActivity_Award[3304186][1]["RewardItem"][1] = {}
	tGamblingMonthActivity_Award[3304186][1]["RewardItem"][1]["Id"] = 192785
	tGamblingMonthActivity_Award[3304186][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tGamblingMonthActivity_Award[3304186][1]["LogId"] = 12000797
	tGamblingMonthActivity_Award[3304186][1]["DeleteItem"]={}
	tGamblingMonthActivity_Award[3304186][1]["DeleteItem"][1]={}
	tGamblingMonthActivity_Award[3304186][1]["DeleteItem"][1]["Id"]=3304186
	
	tGamblingMonthActivity_Award[3304186][2] = {}
	tGamblingMonthActivity_Award[3304186][2]["RewardItem"] = {}
	tGamblingMonthActivity_Award[3304186][2]["RewardItem"][1] = {}
	tGamblingMonthActivity_Award[3304186][2]["RewardItem"][1]["Id"] = 193295
	tGamblingMonthActivity_Award[3304186][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tGamblingMonthActivity_Award[3304186][2]["LogId"] = 12000797
	tGamblingMonthActivity_Award[3304186][2]["DeleteItem"]={}
	tGamblingMonthActivity_Award[3304186][2]["DeleteItem"][1]={}
	tGamblingMonthActivity_Award[3304186][2]["DeleteItem"][1]["Id"]=3304186
	
	
-- 3304187,'0030CP'
	tGamblingMonthActivity_Award[3304187] = {}
	tGamblingMonthActivity_Award[3304187]["RewardEMoney"] = {}
	tGamblingMonthActivity_Award[3304187]["RewardEMoney"]["Value"] = 30
	tGamblingMonthActivity_Award[3304187]["RewardEMoney"]["EmoneyLog"] = "371	20712	-30	-30	1	"
	tGamblingMonthActivity_Award[3304187]["LogId"] = 12000797
	tGamblingMonthActivity_Award[3304187]["DeleteItem"]={}
	tGamblingMonthActivity_Award[3304187]["DeleteItem"][1]={}
	tGamblingMonthActivity_Award[3304187]["DeleteItem"][1]["Id"]=3304187
-- 3304188,'0040CP'
	tGamblingMonthActivity_Award[3304188] = {}
	tGamblingMonthActivity_Award[3304188]["RewardEMoney"] = {}
	tGamblingMonthActivity_Award[3304188]["RewardEMoney"]["Value"] = 40
	tGamblingMonthActivity_Award[3304188]["RewardEMoney"]["EmoneyLog"] = "372	20713	-40	-40	1	"
	tGamblingMonthActivity_Award[3304188]["LogId"] = 12000797
	tGamblingMonthActivity_Award[3304188]["DeleteItem"]={}
	tGamblingMonthActivity_Award[3304188]["DeleteItem"][1]={}
	tGamblingMonthActivity_Award[3304188]["DeleteItem"][1]["Id"]=3304188
	
-- 3304189,'0100CP'
	tGamblingMonthActivity_Award[3304189] = {}
	tGamblingMonthActivity_Award[3304189]["RewardEMoney"] = {}
	tGamblingMonthActivity_Award[3304189]["RewardEMoney"]["Value"] = 100
	tGamblingMonthActivity_Award[3304189]["RewardEMoney"]["EmoneyLog"] = "373	20714	-100	-100	1	"
	tGamblingMonthActivity_Award[3304189]["LogId"] = 12000797
	tGamblingMonthActivity_Award[3304189]["DeleteItem"]={}
	tGamblingMonthActivity_Award[3304189]["DeleteItem"][1]={}
	tGamblingMonthActivity_Award[3304189]["DeleteItem"][1]["Id"]=3304189

-- 3304190,'0150CP'
	tGamblingMonthActivity_Award[3304190] = {}
	tGamblingMonthActivity_Award[3304190]["RewardEMoney"] = {}
	tGamblingMonthActivity_Award[3304190]["RewardEMoney"]["Value"] = 150
	tGamblingMonthActivity_Award[3304190]["RewardEMoney"]["EmoneyLog"] = "374	20715	-150	-150	1	"
	tGamblingMonthActivity_Award[3304190]["LogId"] = 12000797
	tGamblingMonthActivity_Award[3304190]["DeleteItem"]={}
	tGamblingMonthActivity_Award[3304190]["DeleteItem"][1]={}
	tGamblingMonthActivity_Award[3304190]["DeleteItem"][1]["Id"]=3304190

-- 3304191,'0200CP'
	tGamblingMonthActivity_Award[3304191] = {}
	tGamblingMonthActivity_Award[3304191]["RewardEMoney"] = {}
	tGamblingMonthActivity_Award[3304191]["RewardEMoney"]["Value"] = 200
	tGamblingMonthActivity_Award[3304191]["RewardEMoney"]["EmoneyLog"] = "375	20716	-200	-200	1	"
	tGamblingMonthActivity_Award[3304191]["LogId"] = 12000797
	tGamblingMonthActivity_Award[3304191]["DeleteItem"]={}
	tGamblingMonthActivity_Award[3304191]["DeleteItem"][1]={}
	tGamblingMonthActivity_Award[3304191]["DeleteItem"][1]["Id"]=3304191
-- 3304192,'0400CP'
	tGamblingMonthActivity_Award[3304192] = {}
	tGamblingMonthActivity_Award[3304192]["RewardEMoney"] = {}
	tGamblingMonthActivity_Award[3304192]["RewardEMoney"]["Value"] = 400
	tGamblingMonthActivity_Award[3304192]["RewardEMoney"]["EmoneyLog"] = "376	20717	-400	-400	1	"
	tGamblingMonthActivity_Award[3304192]["LogId"] = 12000797
	tGamblingMonthActivity_Award[3304192]["DeleteItem"]={}
	tGamblingMonthActivity_Award[3304192]["DeleteItem"][1]={}
	tGamblingMonthActivity_Award[3304192]["DeleteItem"][1]["Id"]=3304192
-- 3304193,'0600CP'
	tGamblingMonthActivity_Award[3304193] = {}
	tGamblingMonthActivity_Award[3304193]["RewardEMoney"] = {}
	tGamblingMonthActivity_Award[3304193]["RewardEMoney"]["Value"] = 600
	tGamblingMonthActivity_Award[3304193]["RewardEMoney"]["EmoneyLog"] = "377	20718	-600	-600	1	"
	tGamblingMonthActivity_Award[3304193]["LogId"] = 12000797
	tGamblingMonthActivity_Award[3304193]["DeleteItem"]={}
	tGamblingMonthActivity_Award[3304193]["DeleteItem"][1]={}
	tGamblingMonthActivity_Award[3304193]["DeleteItem"][1]["Id"]=3304193
-- 3304194,'1000CP'
	tGamblingMonthActivity_Award[3304194] = {}
	tGamblingMonthActivity_Award[3304194]["RewardEMoney"] = {}
	tGamblingMonthActivity_Award[3304194]["RewardEMoney"]["Value"] = 1000
	tGamblingMonthActivity_Award[3304194]["RewardEMoney"]["EmoneyLog"] = "378	20719	-1000	-1000	1	"
	tGamblingMonthActivity_Award[3304194]["LogId"] = 12000797
	tGamblingMonthActivity_Award[3304194]["DeleteItem"]={}
	tGamblingMonthActivity_Award[3304194]["DeleteItem"][1]={}
	tGamblingMonthActivity_Award[3304194]["DeleteItem"][1]["Id"]=3304194
	
-- 3304195,'00300ChiPoint'
	tGamblingMonthActivity_Award[3304195] = {}
	tGamblingMonthActivity_Award[3304195]["RewardStrengthValue"] = {}
	tGamblingMonthActivity_Award[3304195]["RewardStrengthValue"]["Value"] = 300
	tGamblingMonthActivity_Award[3304195]["LogId"] = 12000797
	tGamblingMonthActivity_Award[3304195]["DeleteItem"]={}
	tGamblingMonthActivity_Award[3304195]["DeleteItem"][1]={}
	tGamblingMonthActivity_Award[3304195]["DeleteItem"][1]["Id"]=3304195
-- 3304223,'00400ChiPoint'
	tGamblingMonthActivity_Award[3304223] = {}
	tGamblingMonthActivity_Award[3304223]["RewardStrengthValue"] = {}
	tGamblingMonthActivity_Award[3304223]["RewardStrengthValue"]["Value"] = 400
	tGamblingMonthActivity_Award[3304223]["LogId"] = 12000797
	tGamblingMonthActivity_Award[3304223]["DeleteItem"]={}
	tGamblingMonthActivity_Award[3304223]["DeleteItem"][1]={}
	tGamblingMonthActivity_Award[3304223]["DeleteItem"][1]["Id"]=3304223
-- 3304196,'00500ChiPoint'
	tGamblingMonthActivity_Award[3304196] = {}
	tGamblingMonthActivity_Award[3304196]["RewardStrengthValue"] = {}
	tGamblingMonthActivity_Award[3304196]["RewardStrengthValue"]["Value"] = 500
	tGamblingMonthActivity_Award[3304196]["LogId"] = 12000797
	tGamblingMonthActivity_Award[3304196]["DeleteItem"]={}
	tGamblingMonthActivity_Award[3304196]["DeleteItem"][1]={}
	tGamblingMonthActivity_Award[3304196]["DeleteItem"][1]["Id"]=3304196
-- 3304197,'00800ChiPoint'
	tGamblingMonthActivity_Award[3304197] = {}
	tGamblingMonthActivity_Award[3304197]["RewardStrengthValue"] = {}
	tGamblingMonthActivity_Award[3304197]["RewardStrengthValue"]["Value"] = 800
	tGamblingMonthActivity_Award[3304197]["LogId"] = 12000797
	tGamblingMonthActivity_Award[3304197]["DeleteItem"]={}
	tGamblingMonthActivity_Award[3304197]["DeleteItem"][1]={}
	tGamblingMonthActivity_Award[3304197]["DeleteItem"][1]["Id"]=3304197
-- 3304198,'01000ChiPoint'
	tGamblingMonthActivity_Award[3304198] = {}
	tGamblingMonthActivity_Award[3304198]["RewardStrengthValue"] = {}
	tGamblingMonthActivity_Award[3304198]["RewardStrengthValue"]["Value"] = 1000
	tGamblingMonthActivity_Award[3304198]["LogId"] = 12000797
	tGamblingMonthActivity_Award[3304198]["DeleteItem"]={}
	tGamblingMonthActivity_Award[3304198]["DeleteItem"][1]={}
	tGamblingMonthActivity_Award[3304198]["DeleteItem"][1]["Id"]=3304198
-- 3304199,'02000ChiPoint'
	tGamblingMonthActivity_Award[3304199] = {}
	tGamblingMonthActivity_Award[3304199]["RewardStrengthValue"] = {}
	tGamblingMonthActivity_Award[3304199]["RewardStrengthValue"]["Value"] = 2000
	tGamblingMonthActivity_Award[3304199]["LogId"] = 12000797
	tGamblingMonthActivity_Award[3304199]["DeleteItem"]={}
	tGamblingMonthActivity_Award[3304199]["DeleteItem"][1]={}
	tGamblingMonthActivity_Award[3304199]["DeleteItem"][1]["Id"]=3304199
-- 3304200,'05000ChiPoint'
	tGamblingMonthActivity_Award[3304200] = {}
	tGamblingMonthActivity_Award[3304200]["RewardStrengthValue"] = {}
	tGamblingMonthActivity_Award[3304200]["RewardStrengthValue"]["Value"] = 5000
	tGamblingMonthActivity_Award[3304200]["LogId"] = 12000797
	tGamblingMonthActivity_Award[3304200]["DeleteItem"]={}
	tGamblingMonthActivity_Award[3304200]["DeleteItem"][1]={}
	tGamblingMonthActivity_Award[3304200]["DeleteItem"][1]["Id"]=3304200
-- 3304201,'10000ChiPoint'
	tGamblingMonthActivity_Award[3304201] = {}
	tGamblingMonthActivity_Award[3304201]["RewardStrengthValue"] = {}
	tGamblingMonthActivity_Award[3304201]["RewardStrengthValue"]["Value"] = 10000
	tGamblingMonthActivity_Award[3304201]["LogId"] = 12000797
	tGamblingMonthActivity_Award[3304201]["DeleteItem"]={}
	tGamblingMonthActivity_Award[3304201]["DeleteItem"][1]={}
	tGamblingMonthActivity_Award[3304201]["DeleteItem"][1]["Id"]=3304201
	
-- 3304202,'BrightStarStone *1
	tGamblingMonthActivity_Award[3304202] = {}
	tGamblingMonthActivity_Award[3304202]["RewardItem"] = {}
	tGamblingMonthActivity_Award[3304202]["RewardItem"][1] = {}
	tGamblingMonthActivity_Award[3304202]["RewardItem"][1]["Id"] = 3009001
	tGamblingMonthActivity_Award[3304202]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tGamblingMonthActivity_Award[3304202]["LogId"] = 12000797
	tGamblingMonthActivity_Award[3304202]["DeleteItem"]={}
	tGamblingMonthActivity_Award[3304202]["DeleteItem"][1]={}
	tGamblingMonthActivity_Award[3304202]["DeleteItem"][1]["Id"]=3304202
	tGamblingMonthActivity_Award[3304202]["ActivityTime"]= tActivityTime["OctoberNewServer"]["ActiveItemTime"]
-- 3304203,'BrightStarStone *2
	tGamblingMonthActivity_Award[3304203] = {}
	tGamblingMonthActivity_Award[3304203]["RewardItem"] = {}
	tGamblingMonthActivity_Award[3304203]["RewardItem"][1] = {}
	tGamblingMonthActivity_Award[3304203]["RewardItem"][1]["Id"] = 3009001
	tGamblingMonthActivity_Award[3304203]["RewardItem"][1]["Attr"] = "0 2 0 2880 1"
	tGamblingMonthActivity_Award[3304203]["LogId"] = 12000797
	tGamblingMonthActivity_Award[3304203]["DeleteItem"]={}
	tGamblingMonthActivity_Award[3304203]["DeleteItem"][1]={}
	tGamblingMonthActivity_Award[3304203]["DeleteItem"][1]["Id"]=3304203
	tGamblingMonthActivity_Award[3304203]["ActivityTime"]= tActivityTime["OctoberNewServer"]["ActiveItemTime"]
-- 3304204,'BrightStarStone *3
	tGamblingMonthActivity_Award[3304204] = {}
	tGamblingMonthActivity_Award[3304204]["RewardItem"] = {}
	tGamblingMonthActivity_Award[3304204]["RewardItem"][1] = {}
	tGamblingMonthActivity_Award[3304204]["RewardItem"][1]["Id"] = 3009001
	tGamblingMonthActivity_Award[3304204]["RewardItem"][1]["Attr"] = "0 3 0 2880 1"
	tGamblingMonthActivity_Award[3304204]["LogId"] = 12000797
	tGamblingMonthActivity_Award[3304204]["DeleteItem"]={}
	tGamblingMonthActivity_Award[3304204]["DeleteItem"][1]={}
	tGamblingMonthActivity_Award[3304204]["DeleteItem"][1]["Id"]=3304204
	tGamblingMonthActivity_Award[3304204]["ActivityTime"]= tActivityTime["OctoberNewServer"]["ActiveItemTime"]
-- 3304205,'BrightStarStone *4
	tGamblingMonthActivity_Award[3304205] = {}
	tGamblingMonthActivity_Award[3304205]["RewardItem"] = {}
	tGamblingMonthActivity_Award[3304205]["RewardItem"][1] = {}
	tGamblingMonthActivity_Award[3304205]["RewardItem"][1]["Id"] = 3009001
	tGamblingMonthActivity_Award[3304205]["RewardItem"][1]["Attr"] = "0 4 0 2880 1"
	tGamblingMonthActivity_Award[3304205]["LogId"] = 12000797
	tGamblingMonthActivity_Award[3304205]["DeleteItem"]={}
	tGamblingMonthActivity_Award[3304205]["DeleteItem"][1]={}
	tGamblingMonthActivity_Award[3304205]["DeleteItem"][1]["Id"]=3304205
	tGamblingMonthActivity_Award[3304205]["ActivityTime"]= tActivityTime["OctoberNewServer"]["ActiveItemTime"]
-- 3304206,'BrightStarStone *5
	tGamblingMonthActivity_Award[3304206] = {}
	tGamblingMonthActivity_Award[3304206]["RewardItem"] = {}
	tGamblingMonthActivity_Award[3304206]["RewardItem"][1] = {}
	tGamblingMonthActivity_Award[3304206]["RewardItem"][1]["Id"] = 3009001
	tGamblingMonthActivity_Award[3304206]["RewardItem"][1]["Attr"] = "0 5 0 2880 1"
	tGamblingMonthActivity_Award[3304206]["LogId"] = 12000797
	tGamblingMonthActivity_Award[3304206]["DeleteItem"]={}
	tGamblingMonthActivity_Award[3304206]["DeleteItem"][1]={}
	tGamblingMonthActivity_Award[3304206]["DeleteItem"][1]["Id"]=3304206
	tGamblingMonthActivity_Award[3304206]["ActivityTime"]= tActivityTime["OctoberNewServer"]["ActiveItemTime"]
-- 3304207,'BrightStarStone *8
	tGamblingMonthActivity_Award[3304207] = {}
	tGamblingMonthActivity_Award[3304207]["RewardItem"] = {}
	tGamblingMonthActivity_Award[3304207]["RewardItem"][1] = {}
	tGamblingMonthActivity_Award[3304207]["RewardItem"][1]["Id"] = 3009001
	tGamblingMonthActivity_Award[3304207]["RewardItem"][1]["Attr"] = "0 8 0 2880 1"
	tGamblingMonthActivity_Award[3304207]["LogId"] = 12000797
	tGamblingMonthActivity_Award[3304207]["DeleteItem"]={}
	tGamblingMonthActivity_Award[3304207]["DeleteItem"][1]={}
	tGamblingMonthActivity_Award[3304207]["DeleteItem"][1]["Id"]=3304207
	tGamblingMonthActivity_Award[3304207]["ActivityTime"]= tActivityTime["OctoberNewServer"]["ActiveItemTime"]
-- 3304208,'RadiantStarStone*1
	tGamblingMonthActivity_Award[3304208] = {}
	tGamblingMonthActivity_Award[3304208]["RewardItem"] = {}
	tGamblingMonthActivity_Award[3304208]["RewardItem"][1] = {}
	tGamblingMonthActivity_Award[3304208]["RewardItem"][1]["Id"] = 3009002
	tGamblingMonthActivity_Award[3304208]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tGamblingMonthActivity_Award[3304208]["LogId"] = 12000797
	tGamblingMonthActivity_Award[3304208]["DeleteItem"]={}
	tGamblingMonthActivity_Award[3304208]["DeleteItem"][1]={}
	tGamblingMonthActivity_Award[3304208]["DeleteItem"][1]["Id"]=3304208
	tGamblingMonthActivity_Award[3304208]["ActivityTime"]= tActivityTime["OctoberNewServer"]["ActiveItemTime"]
-- 3304209,'RadiantStarStone*2
	tGamblingMonthActivity_Award[3304209] = {}
	tGamblingMonthActivity_Award[3304209]["RewardItem"] = {}
	tGamblingMonthActivity_Award[3304209]["RewardItem"][1] = {}
	tGamblingMonthActivity_Award[3304209]["RewardItem"][1]["Id"] = 3009002
	tGamblingMonthActivity_Award[3304209]["RewardItem"][1]["Attr"] = "0 2 0 2880 1"
	tGamblingMonthActivity_Award[3304209]["LogId"] = 12000797
	tGamblingMonthActivity_Award[3304209]["DeleteItem"]={}
	tGamblingMonthActivity_Award[3304209]["DeleteItem"][1]={}
	tGamblingMonthActivity_Award[3304209]["DeleteItem"][1]["Id"]=3304209
	tGamblingMonthActivity_Award[3304209]["ActivityTime"]= tActivityTime["OctoberNewServer"]["ActiveItemTime"]
-- 3304210,'0040t的赠品天石礼包'
	tGamblingMonthActivity_Award[3304210] = {}
	tGamblingMonthActivity_Award[3304210]["RewardEMoneyMono"] = {}
	tGamblingMonthActivity_Award[3304210]["RewardEMoneyMono"]["Value"] = 40
	tGamblingMonthActivity_Award[3304210]["LogId"] = 12000797
	tGamblingMonthActivity_Award[3304210]["DeleteItem"]={}
	tGamblingMonthActivity_Award[3304210]["DeleteItem"][1]={}
	tGamblingMonthActivity_Award[3304210]["DeleteItem"][1]["Id"]=3304210
-- 3304211,'0070t的赠品天石礼包'
	tGamblingMonthActivity_Award[3304211] = {}
	tGamblingMonthActivity_Award[3304211]["RewardEMoneyMono"] = {}
	tGamblingMonthActivity_Award[3304211]["RewardEMoneyMono"]["Value"] = 70
	tGamblingMonthActivity_Award[3304211]["LogId"] = 12000797
	tGamblingMonthActivity_Award[3304211]["DeleteItem"]={}
	tGamblingMonthActivity_Award[3304211]["DeleteItem"][1]={}
	tGamblingMonthActivity_Award[3304211]["DeleteItem"][1]["Id"]=3304211
-- 3304212,'0120t的赠品天石礼包'
	tGamblingMonthActivity_Award[3304212] = {}
	tGamblingMonthActivity_Award[3304212]["RewardEMoneyMono"] = {}
	tGamblingMonthActivity_Award[3304212]["RewardEMoneyMono"]["Value"] = 120
	tGamblingMonthActivity_Award[3304212]["LogId"] = 12000797
	tGamblingMonthActivity_Award[3304212]["DeleteItem"]={}
	tGamblingMonthActivity_Award[3304212]["DeleteItem"][1]={}
	tGamblingMonthActivity_Award[3304212]["DeleteItem"][1]["Id"]=3304212
-- 3304213,'0100t的赠品天石礼包'
	tGamblingMonthActivity_Award[3304213] = {}
	tGamblingMonthActivity_Award[3304213]["RewardEMoneyMono"] = {}
	tGamblingMonthActivity_Award[3304213]["RewardEMoneyMono"]["Value"] = 100
	tGamblingMonthActivity_Award[3304213]["LogId"] = 12000797
	tGamblingMonthActivity_Award[3304213]["DeleteItem"]={}
	tGamblingMonthActivity_Award[3304213]["DeleteItem"][1]={}
	tGamblingMonthActivity_Award[3304213]["DeleteItem"][1]["Id"]=3304213
-- 3304214,'0300t的赠品天石礼包'
	tGamblingMonthActivity_Award[3304214] = {}
	tGamblingMonthActivity_Award[3304214]["RewardEMoneyMono"] = {}
	tGamblingMonthActivity_Award[3304214]["RewardEMoneyMono"]["Value"] = 300
	tGamblingMonthActivity_Award[3304214]["LogId"] = 12000797
	tGamblingMonthActivity_Award[3304214]["DeleteItem"]={}
	tGamblingMonthActivity_Award[3304214]["DeleteItem"][1]={}
	tGamblingMonthActivity_Award[3304214]["DeleteItem"][1]["Id"]=3304214
-- 3304215,'0600t的赠品天石礼包'
	tGamblingMonthActivity_Award[3304215] = {}
	tGamblingMonthActivity_Award[3304215]["RewardEMoneyMono"] = {}
	tGamblingMonthActivity_Award[3304215]["RewardEMoneyMono"]["Value"] = 600
	tGamblingMonthActivity_Award[3304215]["LogId"] = 12000797
	tGamblingMonthActivity_Award[3304215]["DeleteItem"]={}
	tGamblingMonthActivity_Award[3304215]["DeleteItem"][1]={}
	tGamblingMonthActivity_Award[3304215]["DeleteItem"][1]["Id"]=3304215
-- 3304216,'1500t的赠品天石礼包'
	tGamblingMonthActivity_Award[3304216] = {}
	tGamblingMonthActivity_Award[3304216]["RewardEMoneyMono"] = {}
	tGamblingMonthActivity_Award[3304216]["RewardEMoneyMono"]["Value"] = 1500
	tGamblingMonthActivity_Award[3304216]["LogId"] = 12000797
	tGamblingMonthActivity_Award[3304216]["DeleteItem"]={}
	tGamblingMonthActivity_Award[3304216]["DeleteItem"][1]={}
	tGamblingMonthActivity_Award[3304216]["DeleteItem"][1]["Id"]=3304216
-- 3304217,'4500t的赠品天石礼包'
	tGamblingMonthActivity_Award[3304217] = {}
	tGamblingMonthActivity_Award[3304217]["RewardEMoneyMono"] = {}
	tGamblingMonthActivity_Award[3304217]["RewardEMoneyMono"]["Value"] = 4500
	tGamblingMonthActivity_Award[3304217]["LogId"] = 12000797
	tGamblingMonthActivity_Award[3304217]["DeleteItem"]={}
	tGamblingMonthActivity_Award[3304217]["DeleteItem"][1]={}
	tGamblingMonthActivity_Award[3304217]["DeleteItem"][1]["Id"]=3304217
	
	
--普通给物品礼包通用逻辑
function GamblingMonthActivity_OpenPack(nItemId,nIndex)
	if nIndex == nil then
		if tGamblingMonthActivity_Award[nItemId]["ActivityTime"] ~= nil then
			if not Sys_ChkFullTime(tGamblingMonthActivity_Award[nItemId]["ActivityTime"]) then
				if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
					return
				end
			end
		end
		RewardTemplate_UseItemAndMsg(tGamblingMonthActivity_Award[nItemId])
	else
		RewardTemplate_UseItemAndMsg(tGamblingMonthActivity_Award[nItemId][nIndex])
	end
end


--重置全局掩码
function GamblingMonthActivity_ResetGlobal()
	if Sys_ChkFullTime(tGamblingMonthActivity_Cont["ActivityTime"]) then
		local nMark = Get_SysDynaGlobalData5(tGamblingMonthActivity_Cont["GlobalId2"])
		if nMark == 0 then
			Sys_ResetAllSynaGlobalData(tGamblingMonthActivity_Cont["GlobalId1"])
			Sys_ResetAllSynaGlobalData(tGamblingMonthActivity_Cont["GlobalId2"])
			Sys_SetSynaGlobalData5(tGamblingMonthActivity_Cont["GlobalId2"],1)
		end
	end
end
--重置标识位
function GamblingMonthActivity_ResetGlobal1()
	if Sys_ChkFullTime(tGamblingMonthActivity_Cont["ActivityTime"]) then
		local nMark = Get_SysDynaGlobalData5(tGamblingMonthActivity_Cont["GlobalId2"])
		if nMark ~= 0 then
			Sys_SetSynaGlobalData5(tGamblingMonthActivity_Cont["GlobalId2"],0)
		end
	end
end
-------------------------------------------------物品配置
--

-- 3304179,'00000000000500CP(B)'
tItem[3304179] = tItem[3304179] or {}
tItem[3304179]["Function"] = function(nItemId,sItemName)
	GamblingMonthActivity_OpenPack(nItemId)
end
-- 3304180,'FlameDance(007days)'
tItem[3304180] = tItem[3304179] or {}
-- 3304181,'FlameDance(015days)'
tItem[3304181] = tItem[3304179] or {}
-- 3304182,'FlameDance(030days)'
tItem[3304182] = tItem[3304179] or {}
-- 3304183,'FlameDance(090days)'
tItem[3304183] = tItem[3304179] or {}
-- 3304184,'FlameDance(180days)'
tItem[3304184] = tItem[3304179] or {}
-- 3304185,'FlameDance(forever)'
tItem[3304185] = tItem[3304179] or {}

-- 3304187,'0030CP'
tItem[3304187] = tItem[3304179] or {}
-- 3304188,'0040CP'
tItem[3304188] = tItem[3304179] or {}
-- 3304189,'0100CP'
tItem[3304189] = tItem[3304179] or {}
-- 3304190,'0150CP'
tItem[3304190] = tItem[3304179] or {}
-- 3304191,'0200CP'
tItem[3304191] = tItem[3304179] or {}
-- 3304192,'0400CP'
tItem[3304192] = tItem[3304179] or {}
-- 3304193,'0600CP'
tItem[3304193] = tItem[3304179] or {}
-- 3304194,'1000CP'
tItem[3304194] = tItem[3304179] or {}

-- 3304195,'00300ChiPoint'
tItem[3304195] = tItem[3304179] or {}
-- 3304223,'00400ChiPoint'
tItem[3304223] = tItem[3304179] or {}

-- 3304196,'00500ChiPoint'
tItem[3304196] = tItem[3304179] or {}
-- 3304197,'00800ChiPoint'
tItem[3304197] = tItem[3304179] or {}
-- 3304198,'01000ChiPoint'
tItem[3304198] = tItem[3304179] or {}
-- 3304199,'02000ChiPoint'
tItem[3304199] = tItem[3304179] or {}
-- 3304200,'05000ChiPoint'
tItem[3304200] = tItem[3304179] or {}
-- 3304201,'10000ChiPoint'
tItem[3304201] = tItem[3304179] or {}

-- 3304202,'BrightStarStone *1'
tItem[3304202] = tItem[3304179] or {}
-- 3304203,'BrightStarStone *2'
tItem[3304203] = tItem[3304179] or {}
-- 3304204,'BrightStarStone *3'
tItem[3304204] = tItem[3304179] or {}
-- 3304205,'BrightStarStone *4'
tItem[3304205] = tItem[3304179] or {}
-- 3304206,'BrightStarStone *5'
tItem[3304206] = tItem[3304179] or {}
-- 3304207,'BrightStarStone *8'
tItem[3304207] = tItem[3304179] or {}
-- 3304208,'RadiantStarStone*1'
tItem[3304208] = tItem[3304179] or {}
-- 3304209,'RadiantStarStone*2'
tItem[3304209] = tItem[3304179] or {}

-- 3304210,'0040t的赠品天石礼包'
tItem[3304210] = tItem[3304179] or {}
-- 3304211,'0070t的赠品天石礼包'
tItem[3304211] = tItem[3304179] or {}
-- 3304212,'0120t的赠品天石礼包'
tItem[3304212] = tItem[3304179] or {}
-- 3304213,'0100t的赠品天石礼包'
tItem[3304213] = tItem[3304179] or {}
-- 3304214,'0300t的赠品天石礼包'
tItem[3304214] = tItem[3304179] or {}
-- 3304215,'0600t的赠品天石礼包'
tItem[3304215] = tItem[3304179] or {}
-- 3304216,'1500t的赠品天石礼包'
tItem[3304216] = tItem[3304179] or {}
-- 3304217,'4500t的赠品天石礼包'
tItem[3304217] = tItem[3304179] or {}




-- 3304220,'6阶武器神魂'
tItem[3304220] = tItem[3304220] or {}
tItem[3304220]["DialogueText"] = tGamblingMonthActivity_Text[3304220]
tItem[3304220]["Text1-1"] ={111}
tItem[3304220]["tOption1-1"] = {111,112,113,114,115,116,117,118}
tItem[3304220]["OptionPoint111"] = "2-1"
tItem[3304220]["OptionPoint112"] = "2-2"
tItem[3304220]["OptionPoint113"] = "2-3"
tItem[3304220]["OptionPoint114"] = "2-4"
tItem[3304220]["OptionPoint115"] = "2-5"
tItem[3304220]["OptionPoint116"] = "2-6"
tItem[3304220]["OptionPoint117"] = "1-2"

tItem[3304220]["Text1-2"] ={111}
tItem[3304220]["tOption1-2"] = {121,122,123,124,125,126,127,118}
tItem[3304220]["OptionPoint121"] = "2-7"
tItem[3304220]["OptionPoint122"] = "2-8"
tItem[3304220]["OptionPoint123"] = "2-9"
tItem[3304220]["OptionPoint124"] = "2-10"
tItem[3304220]["OptionPoint125"] = "2-11"
tItem[3304220]["OptionPoint126"] = "1-1"
tItem[3304220]["OptionPoint127"] = "1-3"

tItem[3304220]["Text1-3"] ={111}
tItem[3304220]["tOption1-3"] = {131,132,133,134,135,136,137,118}
tItem[3304220]["OptionPoint131"] = "2-12"
tItem[3304220]["OptionPoint132"] = "2-13"
tItem[3304220]["OptionPoint133"] = "2-14"
tItem[3304220]["OptionPoint134"] = "2-15"
tItem[3304220]["OptionPoint135"] = "2-16"
tItem[3304220]["OptionPoint136"] = "2-17"
tItem[3304220]["OptionPoint137"] = "1-2"


tItem[3304220]["Text2-1"] ={211}
tItem[3304220]["tOption2-1"] = {211,212}
tItem[3304220]["OptionFunc211"] ="GamblingMonthActivity_OpenPack</N>3304220</N>1"
tItem[3304220]["OptionPoint212"] = "1-1"


tItem[3304220]["Text2-2"] ={221}
tItem[3304220]["tOption2-2"] = {221,212}
tItem[3304220]["OptionFunc221"] ="GamblingMonthActivity_OpenPack</N>3304220</N>2"

tItem[3304220]["Text2-3"] ={231}
tItem[3304220]["tOption2-3"] = {231,212}
tItem[3304220]["OptionFunc231"] ="GamblingMonthActivity_OpenPack</N>3304220</N>3"

tItem[3304220]["Text2-4"] ={241}
tItem[3304220]["tOption2-4"] = {241,212}
tItem[3304220]["OptionFunc241"] ="GamblingMonthActivity_OpenPack</N>3304220</N>4"

tItem[3304220]["Text2-5"] ={251}
tItem[3304220]["tOption2-5"] = {251,212}
tItem[3304220]["OptionFunc251"] ="GamblingMonthActivity_OpenPack</N>3304220</N>5"

tItem[3304220]["Text2-6"] ={261}
tItem[3304220]["tOption2-6"] = {261,212}
tItem[3304220]["OptionFunc261"] ="GamblingMonthActivity_OpenPack</N>3304220</N>6"

tItem[3304220]["Text2-7"] ={271}
tItem[3304220]["tOption2-7"] = {271,212}
tItem[3304220]["OptionFunc271"] ="GamblingMonthActivity_OpenPack</N>3304220</N>7"

tItem[3304220]["Text2-8"] ={281}
tItem[3304220]["tOption2-8"] = {281,212}
tItem[3304220]["OptionFunc281"] ="GamblingMonthActivity_OpenPack</N>3304220</N>8"

tItem[3304220]["Text2-9"] ={291}
tItem[3304220]["tOption2-9"] = {291,212}
tItem[3304220]["OptionFunc291"] ="GamblingMonthActivity_OpenPack</N>3304220</N>9"

tItem[3304220]["Text2-10"] ={2101}
tItem[3304220]["tOption2-10"] = {2101,212}
tItem[3304220]["OptionFunc2101"] ="GamblingMonthActivity_OpenPack</N>3304220</N>10"

tItem[3304220]["Text2-11"] ={2111}
tItem[3304220]["tOption2-11"] = {2111,212}
tItem[3304220]["OptionFunc2111"] ="GamblingMonthActivity_OpenPack</N>3304220</N>11"

tItem[3304220]["Text2-12"] ={2121}
tItem[3304220]["tOption2-12"] = {2121,212}
tItem[3304220]["OptionFunc2121"] ="GamblingMonthActivity_OpenPack</N>3304220</N>12"

tItem[3304220]["Text2-13"] ={2131}
tItem[3304220]["tOption2-13"] = {2131,212}
tItem[3304220]["OptionFunc2131"] ="GamblingMonthActivity_OpenPack</N>3304220</N>13"

tItem[3304220]["Text2-14"] ={2141}
tItem[3304220]["tOption2-14"] = {2141,212}
tItem[3304220]["OptionFunc2141"] ="GamblingMonthActivity_OpenPack</N>3304220</N>14"

tItem[3304220]["Text2-15"] ={2151}
tItem[3304220]["tOption2-15"] = {2151,212}
tItem[3304220]["OptionFunc2151"] ="GamblingMonthActivity_OpenPack</N>3304220</N>15"

tItem[3304220]["Text2-16"] ={2161}
tItem[3304220]["tOption2-16"] = {2161,212}
tItem[3304220]["OptionFunc2161"] ="GamblingMonthActivity_OpenPack</N>3304220</N>16"

tItem[3304220]["Text2-17"] ={2171}
tItem[3304220]["tOption2-17"] = {2171,212}
tItem[3304220]["OptionFunc2171"] ="GamblingMonthActivity_OpenPack</N>3304220</N>17"

-- 3304221,'6阶防具神魂'
tItem[3304221] = tItem[3304221] or {}
tItem[3304221]["DialogueText"] = tGamblingMonthActivity_Text[3304221]
tItem[3304221]["Text1-1"] ={111}
tItem[3304221]["tOption1-1"] = {111,112,113,114,115,116,117,118}
tItem[3304221]["OptionPoint111"] = "3-1"
tItem[3304221]["OptionPoint112"] = "3-2"
tItem[3304221]["OptionPoint113"] = "3-3"
tItem[3304221]["OptionPoint114"] = "3-4"
tItem[3304221]["OptionPoint115"] = "3-5"
tItem[3304221]["OptionPoint116"] = "3-6"
tItem[3304221]["OptionPoint117"] = "1-2"

tItem[3304221]["Text1-2"] ={111}
tItem[3304221]["tOption1-2"] = {121,122,123,124,125,118}
tItem[3304221]["OptionPoint121"] = "3-7"
tItem[3304221]["OptionPoint122"] = "3-8"
tItem[3304221]["OptionPoint123"] = "3-9"
tItem[3304221]["OptionPoint124"] = "3-10"
tItem[3304221]["OptionPoint125"] = "1-1"

tItem[3304221]["Text3-1"] ={311}
tItem[3304221]["tOption3-1"] = {311,312}
tItem[3304221]["OptionFunc311"] ="GamblingMonthActivity_OpenPack</N>3304221</N>1"
tItem[3304221]["OptionPoint312"] = "1-1"



tItem[3304221]["Text3-2"] ={321}
tItem[3304221]["tOption3-2"] = {321,312}
tItem[3304221]["OptionFunc321"] ="GamblingMonthActivity_OpenPack</N>3304221</N>2"

tItem[3304221]["Text3-3"] ={331}
tItem[3304221]["tOption3-3"] = {331,312}
tItem[3304221]["OptionFunc331"] ="GamblingMonthActivity_OpenPack</N>3304221</N>3"

tItem[3304221]["Text3-4"] ={341}
tItem[3304221]["tOption3-4"] = {341,312}
tItem[3304221]["OptionFunc341"] ="GamblingMonthActivity_OpenPack</N>3304221</N>4"

tItem[3304221]["Text3-5"] ={351}
tItem[3304221]["tOption3-5"] = {351,312}
tItem[3304221]["OptionFunc351"] ="GamblingMonthActivity_OpenPack</N>3304221</N>5"

tItem[3304221]["Text3-6"] ={361}
tItem[3304221]["tOption3-6"] = {361,312}
tItem[3304221]["OptionFunc361"] ="GamblingMonthActivity_OpenPack</N>3304221</N>6"

tItem[3304221]["Text3-7"] ={371}
tItem[3304221]["tOption3-7"] = {371,312}
tItem[3304221]["OptionFunc371"] ="GamblingMonthActivity_OpenPack</N>3304221</N>7"

tItem[3304221]["Text3-8"] ={381}
tItem[3304221]["tOption3-8"] = {381,312}
tItem[3304221]["OptionFunc381"] ="GamblingMonthActivity_OpenPack</N>3304221</N>8"

tItem[3304221]["Text3-9"] ={391}
tItem[3304221]["tOption3-9"] = {391,312}
tItem[3304221]["OptionFunc391"] ="GamblingMonthActivity_OpenPack</N>3304221</N>9"

tItem[3304221]["Text3-10"] ={3101}
tItem[3304221]["tOption3-10"] = {3101,213}
tItem[3304221]["OptionFunc3101"] ="GamblingMonthActivity_OpenPack</N>3304221</N>10"


-- 3304222,'6阶神魂可选'
tItem[3304222] = tItem[3304222] or {}
tItem[3304222]["DialogueText"] = tGamblingMonthActivity_Text[3304222]
tItem[3304222]["Text1-1"] ={111}
tItem[3304222]["tOption1-1"] = {111,112}
tItem[3304222]["OptionPoint111"] = "2-1"
tItem[3304222]["OptionPoint112"] = "2-2"

tItem[3304222]["Text2-1"] ={211}
tItem[3304222]["tOption2-1"] = {211,212}
tItem[3304222]["OptionFunc211"] ="GamblingMonthActivity_OpenPack</N>3304222</N>1"
tItem[3304222]["OptionPoint212"] = "1-1"

tItem[3304222]["Text2-2"] ={221}
tItem[3304222]["tOption2-2"] = {221,212}
tItem[3304222]["OptionFunc221"] ="GamblingMonthActivity_OpenPack</N>3304222</N>2"



-- 3304177
-- 3304177,'5级淬炼'
tItem[3304177] = tItem[3304177] or {}
tItem[3304177]["DialogueText"] = tGamblingMonthActivity_Text[3304177]
tItem[3304177]["Text1-1"] ={111}
tItem[3304177]["tOption1-1"] = {111,112,113,114,115,116,117,118}
tItem[3304177]["OptionPoint111"] = "2-1"
tItem[3304177]["OptionPoint112"] = "2-2"
tItem[3304177]["OptionPoint113"] = "2-3"
tItem[3304177]["OptionPoint114"] = "2-4"
tItem[3304177]["OptionPoint115"] = "2-5"
tItem[3304177]["OptionPoint116"] = "2-6"
tItem[3304177]["OptionPoint117"] = "1-2"

tItem[3304177]["Text1-2"] ={111}
tItem[3304177]["tOption1-2"] = {121,122,123,124,125,126,127,128}
tItem[3304177]["OptionPoint121"] = "2-7"
tItem[3304177]["OptionPoint122"] = "2-8"
tItem[3304177]["OptionPoint123"] = "2-9"
tItem[3304177]["OptionPoint124"] = "2-10"
tItem[3304177]["OptionPoint125"] = "2-11"
tItem[3304177]["OptionPoint126"] = "2-12"
tItem[3304177]["OptionPoint127"] = "2-13"

tItem[3304177]["Text2-1"] ={211}
tItem[3304177]["tOption2-1"] = {211,212,213}
tItem[3304177]["OptionPoint211"] = "3-1"
tItem[3304177]["OptionPoint212"] = "3-2"
-- tItem[3304177]["OptionFunc211"] ="GamblingMonthActivity_OpenPack</N>3304177</N>1"
-- tItem[3304177]["OptionFunc212"] ="GamblingMonthActivity_OpenPack</N>3304177</N>2"
tItem[3304177]["OptionPoint213"] = "1-1"
--1			724439	极品的马刺	[鞋子][暴击抵抗]道具	5级淬炼道具
--2			724497	极品的纹锦	[鞋子][毒伤减免]道具	5级淬炼道具
tItem[3304177]["Text2-2"] ={221}
tItem[3304177]["tOption2-2"] = {221,222,223,224,213}
tItem[3304177]["OptionPoint221"] = "3-3"
tItem[3304177]["OptionPoint222"] = "3-4"
tItem[3304177]["OptionPoint223"] = "3-5"
tItem[3304177]["OptionPoint224"] = "3-6"
-- tItem[3304177]["OptionFunc221"] ="GamblingMonthActivity_OpenPack</N>3304177</N>3"
-- tItem[3304177]["OptionFunc222"] ="GamblingMonthActivity_OpenPack</N>3304177</N>4"
-- tItem[3304177]["OptionFunc223"] ="GamblingMonthActivity_OpenPack</N>3304177</N>5"
-- tItem[3304177]["OptionFunc224"] ="GamblingMonthActivity_OpenPack</N>3304177</N>6"
--3			725206	极品的绞丝	[手镯][魔防增加]道具	5级淬炼道具，
--4			724367	极品的镯环	[手镯][粉碎攻击]道具	5级淬炼道具，
--5			724429	极品的镶珠	[手镯][法术暴击]道具	5级淬炼道具，
--6			724394	极品的金钏	[手镯][法术穿透]道具	5级淬炼道具，
tItem[3304177]["Text2-3"] ={231}
tItem[3304177]["tOption2-3"] = {231,232,233,234,213}
tItem[3304177]["OptionPoint231"] = "3-7"
tItem[3304177]["OptionPoint232"] = "3-8"
tItem[3304177]["OptionPoint233"] = "3-9"
tItem[3304177]["OptionPoint234"] = "3-10"
-- tItem[3304177]["OptionFunc231"] ="GamblingMonthActivity_OpenPack</N>3304177</N>7"
-- tItem[3304177]["OptionFunc232"] ="GamblingMonthActivity_OpenPack</N>3304177</N>8"
-- tItem[3304177]["OptionFunc233"] ="GamblingMonthActivity_OpenPack</N>3304177</N>9"
-- tItem[3304177]["OptionFunc234"] ="GamblingMonthActivity_OpenPack</N>3304177</N>10"
--7			725201	极品的衿缨	[香囊][魔防增加]道具	5级淬炼道具，
--8			724377	极品的璎珞	[香囊][毒伤减免]道具	5级淬炼道具，
--9			724389	极品的丝绦	[香囊][法术穿透]道具	5级淬炼道具，
--10		724372	极品的流苏	[香囊][坚固防御]道具	5级淬炼道具，
tItem[3304177]["Text2-4"] ={241}
tItem[3304177]["tOption2-4"] = {241,242,243,213}
tItem[3304177]["OptionPoint241"] = "3-11"
tItem[3304177]["OptionPoint242"] = "3-12"
tItem[3304177]["OptionPoint243"] = "3-13"
-- tItem[3304177]["OptionFunc241"] ="GamblingMonthActivity_OpenPack</N>3304177</N>11"
-- tItem[3304177]["OptionFunc242"] ="GamblingMonthActivity_OpenPack</N>3304177</N>12"
-- tItem[3304177]["OptionFunc243"] ="GamblingMonthActivity_OpenPack</N>3304177</N>13"
--11		725196	极品的玉扣	[项链][魔防增加]道具	5级淬炼道具
--12		724352	极品的佩饰	[项链][毒伤减免]道具	5级淬炼道具
--13		724482	极品的坠饰	[项链][坚固防御]道具	5级淬炼道具
tItem[3304177]["Text2-5"] ={251}
tItem[3304177]["tOption2-5"] = {251,252,253,254,213}
tItem[3304177]["OptionPoint251"] = "3-14"
tItem[3304177]["OptionPoint252"] = "3-15"
tItem[3304177]["OptionPoint253"] = "3-16"
tItem[3304177]["OptionPoint254"] = "3-17"
-- tItem[3304177]["OptionFunc251"] ="GamblingMonthActivity_OpenPack</N>3304177</N>14"
-- tItem[3304177]["OptionFunc252"] ="GamblingMonthActivity_OpenPack</N>3304177</N>15"
-- tItem[3304177]["OptionFunc253"] ="GamblingMonthActivity_OpenPack</N>3304177</N>16"
-- tItem[3304177]["OptionFunc254"] ="GamblingMonthActivity_OpenPack</N>3304177</N>17"
--14		724444	极品的面甲	[头部][生命增效]道具	5级淬炼道具
--15		724357	极品的冠带	[头部][盾牌格挡]道具	5级淬炼道具
--16		724487	极品的锦翎	[头部][毒伤减免]道具	5级淬炼道具
--17		724384	极品的盔缨	[头部][法术穿透]道具	5级淬炼道具
tItem[3304177]["Text2-6"] ={261}
tItem[3304177]["tOption2-6"] = {261,262,263,213}
tItem[3304177]["OptionPoint261"] = "3-18"
tItem[3304177]["OptionPoint262"] = "3-19"
tItem[3304177]["OptionPoint263"] = "3-20"
-- tItem[3304177]["OptionFunc261"] ="GamblingMonthActivity_OpenPack</N>3304177</N>18"
-- tItem[3304177]["OptionFunc262"] ="GamblingMonthActivity_OpenPack</N>3304177</N>19"
-- tItem[3304177]["OptionFunc263"] ="GamblingMonthActivity_OpenPack</N>3304177</N>20"
--18		724434	极品的护镜	[衣甲][暴击抵抗]道具	5级淬炼道具
--19		724492	极品的腰带	[衣甲][毒伤减免]道具	5级淬炼道具
--20		724477	极品的胸铠	[衣甲][坚固防御]道具	5级淬炼道具
tItem[3304177]["Text2-7"] ={271}
tItem[3304177]["tOption2-7"] = {271,272,213}
tItem[3304177]["OptionPoint271"] = "3-21"
tItem[3304177]["OptionPoint272"] = "3-22"
-- tItem[3304177]["OptionFunc271"] ="GamblingMonthActivity_OpenPack</N>3304177</N>21"
-- tItem[3304177]["OptionFunc272"] ="GamblingMonthActivity_OpenPack</N>3304177</N>22"
--21		724414	极品的红缨	[长武][物理暴击]道具	5级淬炼道具
--22		724458	极品的钢烙	[长武][粉碎攻击]道具	5级淬炼道具
tItem[3304177]["Text2-8"] ={281}
tItem[3304177]["tOption2-8"] = {281,282,213}
tItem[3304177]["OptionPoint281"] = "3-23"
tItem[3304177]["OptionPoint282"] = "3-24"
-- tItem[3304177]["OptionFunc281"] ="GamblingMonthActivity_OpenPack</N>3304177</N>23"
-- tItem[3304177]["OptionFunc282"] ="GamblingMonthActivity_OpenPack</N>3304177</N>24"
--23		724409	极品的刃铁	[短武][物理暴击]道具	5级淬炼道具
--24		724453	极品的锥刃	[短武][粉碎攻击]道具	5级淬炼道具
tItem[3304177]["Text2-9"] ={291}
tItem[3304177]["tOption2-9"] = {291,213}
tItem[3304177]["OptionPoint291"] = "3-25"
-- tItem[3304177]["OptionFunc291"] ="GamblingMonthActivity_OpenPack</N>3304177</N>25"
--25		724362	极品的盾刺	[盾牌][盾牌格挡]道具	5级淬炼道具
tItem[3304177]["Text2-10"] ={2101}
tItem[3304177]["tOption2-10"] = {2101,213}
tItem[3304177]["OptionPoint2101"] = "3-26"
-- tItem[3304177]["OptionFunc2101"] ="GamblingMonthActivity_OpenPack</N>3304177</N>26"
--26		724424	极品的剑穗	[法剑][法术暴击]道具	5级淬炼道具
tItem[3304177]["Text2-11"] ={2111}
tItem[3304177]["tOption2-11"] = {2111,213}
tItem[3304177]["OptionPoint2111"] = "3-27"
-- tItem[3304177]["OptionFunc2111"] ="GamblingMonthActivity_OpenPack</N>3304177</N>27"
--27		3006169	极品的拂坠	[拂尘][生命增效]道具	5级淬炼道具
tItem[3304177]["Text2-12"] ={2121}
tItem[3304177]["tOption2-12"] = {2121,2122,213}
tItem[3304177]["OptionPoint2121"] = "3-28"
tItem[3304177]["OptionPoint2122"] = "3-29"
-- tItem[3304177]["OptionFunc2121"] ="GamblingMonthActivity_OpenPack</N>3304177</N>28"
-- tItem[3304177]["OptionFunc2122"] ="GamblingMonthActivity_OpenPack</N>3304177</N>29"
--28		724404	极品的弓弦	[弓][物理暴击]道具	5级淬炼道具
--29		724463	极品的弓臂	[弓][粉碎攻击]道具	5级淬炼道具
tItem[3304177]["Text2-13"] ={2131}
tItem[3304177]["tOption2-13"] = {2131,2132,2133,213}
tItem[3304177]["OptionPoint2131"] = "3-30"
tItem[3304177]["OptionPoint2132"] = "3-31"
tItem[3304177]["OptionPoint2133"] = "3-32"
-- tItem[3304177]["OptionFunc2131"] ="GamblingMonthActivity_OpenPack</N>3304177</N>30"
-- tItem[3304177]["OptionFunc2132"] ="GamblingMonthActivity_OpenPack</N>3304177</N>31"
-- tItem[3304177]["OptionFunc2133"] ="GamblingMonthActivity_OpenPack</N>3304177</N>32"
--30		724419	极品的琥珀	[戒指][物理暴击]道具	5级淬炼道具
--31		724472	极品的翡翠	[戒指][粉碎攻击]道具	5级淬炼道具
--32		725211	极品的珊瑚	[戒指][魔防增加]道具	5级淬炼道具

tItem[3304177]["Text3-1"] ={311}
tItem[3304177]["tOption3-1"] = {311,312}
tItem[3304177]["OptionFunc311"] = "GamblingMonthActivity_OpenPack</N>3304177</N>1"
tItem[3304177]["OptionPoint312"] = "1-1"

tItem[3304177]["Text3-2"] ={321}
tItem[3304177]["tOption3-2"] = {321,312}
tItem[3304177]["OptionFunc321"] = "GamblingMonthActivity_OpenPack</N>3304177</N>2"

--1			724439	极品的马刺	[鞋子][暴击抵抗]道具	5级淬炼道具
--2			724497	极品的纹锦	[鞋子][毒伤减免]道具	5级淬炼道具

tItem[3304177]["Text3-3"] ={331}
tItem[3304177]["tOption3-3"] = {331,312}
tItem[3304177]["OptionFunc331"] = "GamblingMonthActivity_OpenPack</N>3304177</N>3"

tItem[3304177]["Text3-4"] ={341}
tItem[3304177]["tOption3-4"] = {341,312}
tItem[3304177]["OptionFunc341"] = "GamblingMonthActivity_OpenPack</N>3304177</N>4"

tItem[3304177]["Text3-5"] ={351}
tItem[3304177]["tOption3-5"] = {351,312}
tItem[3304177]["OptionFunc351"] = "GamblingMonthActivity_OpenPack</N>3304177</N>5"

tItem[3304177]["Text3-6"] ={361}
tItem[3304177]["tOption3-6"] = {361,312}
tItem[3304177]["OptionFunc361"] = "GamblingMonthActivity_OpenPack</N>3304177</N>6"

--3			725206	极品的绞丝	[手镯][魔防增加]道具	5级淬炼道具，
--4			724367	极品的镯环	[手镯][粉碎攻击]道具	5级淬炼道具，
--5			724429	极品的镶珠	[手镯][法术暴击]道具	5级淬炼道具，
--6			724394	极品的金钏	[手镯][法术穿透]道具	5级淬炼道具，

tItem[3304177]["Text3-7"] ={371}
tItem[3304177]["tOption3-7"] = {371,312}
tItem[3304177]["OptionFunc371"] = "GamblingMonthActivity_OpenPack</N>3304177</N>7"

tItem[3304177]["Text3-8"] ={381}
tItem[3304177]["tOption3-8"] = {381,312}
tItem[3304177]["OptionFunc381"] = "GamblingMonthActivity_OpenPack</N>3304177</N>8"

tItem[3304177]["Text3-9"] ={391}
tItem[3304177]["tOption3-9"] = {391,312}
tItem[3304177]["OptionFunc391"] = "GamblingMonthActivity_OpenPack</N>3304177</N>9"

tItem[3304177]["Text3-10"] ={3101}
tItem[3304177]["tOption3-10"] = {3101,312}
tItem[3304177]["OptionFunc3101"] = "GamblingMonthActivity_OpenPack</N>3304177</N>10"

--7			725201	极品的衿缨	[香囊][魔防增加]道具	5级淬炼道具，
--8			724377	极品的璎珞	[香囊][毒伤减免]道具	5级淬炼道具，
--9			724389	极品的丝绦	[香囊][法术穿透]道具	5级淬炼道具，
--10		724372	极品的流苏	[香囊][坚固防御]道具	5级淬炼道具，

tItem[3304177]["Text3-11"] ={3111}
tItem[3304177]["tOption3-11"] = {3111,312}
tItem[3304177]["OptionFunc3111"] = "GamblingMonthActivity_OpenPack</N>3304177</N>11"

tItem[3304177]["Text3-12"] ={3121}
tItem[3304177]["tOption3-12"] = {3121,312}
tItem[3304177]["OptionFunc3121"] = "GamblingMonthActivity_OpenPack</N>3304177</N>12"

tItem[3304177]["Text3-13"] ={3131}
tItem[3304177]["tOption3-13"] = {3131,312}
tItem[3304177]["OptionFunc3131"] = "GamblingMonthActivity_OpenPack</N>3304177</N>13"

--11		725196	极品的玉扣	[项链][魔防增加]道具	5级淬炼道具
--12		724352	极品的佩饰	[项链][毒伤减免]道具	5级淬炼道具
--13		724482	极品的坠饰	[项链][坚固防御]道具	5级淬炼道具

tItem[3304177]["Text3-14"] ={3141}
tItem[3304177]["tOption3-14"] = {3141,312}
tItem[3304177]["OptionFunc3141"] = "GamblingMonthActivity_OpenPack</N>3304177</N>14"

tItem[3304177]["Text3-15"] ={3151}
tItem[3304177]["tOption3-15"] = {3151,312}
tItem[3304177]["OptionFunc3151"] = "GamblingMonthActivity_OpenPack</N>3304177</N>15"

tItem[3304177]["Text3-16"] ={3161}
tItem[3304177]["tOption3-16"] = {3161,312}
tItem[3304177]["OptionFunc3161"] = "GamblingMonthActivity_OpenPack</N>3304177</N>16"

tItem[3304177]["Text3-17"] ={3171}
tItem[3304177]["tOption3-17"] = {3171,312}
tItem[3304177]["OptionFunc3171"] = "GamblingMonthActivity_OpenPack</N>3304177</N>17"

--14		724444	极品的面甲	[头部][生命增效]道具	5级淬炼道具
--15		724357	极品的冠带	[头部][盾牌格挡]道具	5级淬炼道具
--16		724487	极品的锦翎	[头部][毒伤减免]道具	5级淬炼道具
--17		724384	极品的盔缨	[头部][法术穿透]道具	5级淬炼道具

tItem[3304177]["Text3-18"] ={3181}
tItem[3304177]["tOption3-18"] = {3181,312}
tItem[3304177]["OptionFunc3181"] = "GamblingMonthActivity_OpenPack</N>3304177</N>18"

tItem[3304177]["Text3-19"] ={3191}
tItem[3304177]["tOption3-19"] = {3191,312}
tItem[3304177]["OptionFunc3191"] = "GamblingMonthActivity_OpenPack</N>3304177</N>19"

tItem[3304177]["Text3-20"] ={3201}
tItem[3304177]["tOption3-20"] = {3201,312}
tItem[3304177]["OptionFunc3201"] = "GamblingMonthActivity_OpenPack</N>3304177</N>20"

--18		724434	极品的护镜	[衣甲][暴击抵抗]道具	5级淬炼道具
--19		724492	极品的腰带	[衣甲][毒伤减免]道具	5级淬炼道具
--20		724477	极品的胸铠	[衣甲][坚固防御]道具	5级淬炼道具

tItem[3304177]["Text3-21"] ={3211}
tItem[3304177]["tOption3-21"] = {3211,312}
tItem[3304177]["OptionFunc3211"] = "GamblingMonthActivity_OpenPack</N>3304177</N>21"

tItem[3304177]["Text3-22"] ={3221}
tItem[3304177]["tOption3-22"] = {3221,312}
tItem[3304177]["OptionFunc3221"] = "GamblingMonthActivity_OpenPack</N>3304177</N>22"

--21		724414	极品的红缨	[长武][物理暴击]道具	5级淬炼道具
--22		724458	极品的钢烙	[长武][粉碎攻击]道具	5级淬炼道具

tItem[3304177]["Text3-23"] ={3231}
tItem[3304177]["tOption3-23"] = {3231,312}
tItem[3304177]["OptionFunc3231"] = "GamblingMonthActivity_OpenPack</N>3304177</N>23"

tItem[3304177]["Text3-24"] ={3241}
tItem[3304177]["tOption3-24"] = {3241,312}
tItem[3304177]["OptionFunc3241"] = "GamblingMonthActivity_OpenPack</N>3304177</N>24"
--23		724409	极品的刃铁	[短武][物理暴击]道具	5级淬炼道具
--24		724453	极品的锥刃	[短武][粉碎攻击]道具	5级淬炼道具

tItem[3304177]["Text3-25"] ={3251}
tItem[3304177]["tOption3-25"] = {3251,312}
tItem[3304177]["OptionFunc3251"] = "GamblingMonthActivity_OpenPack</N>3304177</N>25"
--25		724362	极品的盾刺	[盾牌][盾牌格挡]道具	5级淬炼道具

tItem[3304177]["Text3-26"] ={3261}
tItem[3304177]["tOption3-26"] = {3261,312}
tItem[3304177]["OptionFunc3261"] = "GamblingMonthActivity_OpenPack</N>3304177</N>26"
--26		724424	极品的剑穗	[法剑][法术暴击]道具	5级淬炼道具

tItem[3304177]["Text3-27"] ={3271}
tItem[3304177]["tOption3-27"] = {3271,312}
tItem[3304177]["OptionFunc3271"] = "GamblingMonthActivity_OpenPack</N>3304177</N>27"
--27		3006169	极品的拂坠	[拂尘][生命增效]道具	5级淬炼道具

tItem[3304177]["Text3-28"] ={3281}
tItem[3304177]["tOption3-28"] = {3281,312}
tItem[3304177]["OptionFunc3281"] = "GamblingMonthActivity_OpenPack</N>3304177</N>28"

tItem[3304177]["Text3-29"] ={3291}
tItem[3304177]["tOption3-29"] = {3291,312}
tItem[3304177]["OptionFunc3291"] = "GamblingMonthActivity_OpenPack</N>3304177</N>29"
--28		724404	极品的弓弦	[弓][物理暴击]道具	5级淬炼道具
--29		724463	极品的弓臂	[弓][粉碎攻击]道具	5级淬炼道具

tItem[3304177]["Text3-30"] ={3301}
tItem[3304177]["tOption3-30"] = {3301,312}
tItem[3304177]["OptionFunc3301"] = "GamblingMonthActivity_OpenPack</N>3304177</N>30"

tItem[3304177]["Text3-31"] ={3311}
tItem[3304177]["tOption3-31"] = {3311,312}
tItem[3304177]["OptionFunc3311"] = "GamblingMonthActivity_OpenPack</N>3304177</N>31"

tItem[3304177]["Text3-32"] ={3321}
tItem[3304177]["tOption3-32"] = {3321,312}
tItem[3304177]["OptionFunc3321"] = "GamblingMonthActivity_OpenPack</N>3304177</N>32"
--30		724419	极品的琥珀	[戒指][物理暴击]道具	5级淬炼道具
--31		724472	极品的翡翠	[戒指][粉碎攻击]道具	5级淬炼道具
--32		725211	极品的珊瑚	[戒指][魔防增加]道具	5级淬炼道具

-- 3304178
-- 3304178,'7阶神魂+6级淬炼'
tItem[3304178] = tItem[3304178] or {}
tItem[3304178]["DialogueText"] = tGamblingMonthActivity_Text[3304178]
tItem[3304178]["Text1-1"] ={111}
tItem[3304178]["tOption1-1"] = {111,112,113}
tItem[3304178]["OptionPoint111"] = "2-1"
tItem[3304178]["OptionPoint112"] = "2-2"


tItem[3304178]["Text2-1"] ={211}
tItem[3304178]["tOption2-1"] = {211,212}
tItem[3304178]["OptionFunc211"] ="GamblingMonthActivity_OpenPack</N>3304178</N>1"
tItem[3304178]["OptionPoint212"] = "1-1"

tItem[3304178]["Text2-2"] ={221}
tItem[3304178]["tOption2-2"] = {221,212}
tItem[3304178]["OptionFunc221"] ="GamblingMonthActivity_OpenPack</N>3304178</N>2"


-- 3304186
-- 3304186,'FlameDanceSongofDespair'
tItem[3304186] = tItem[3304186] or {}
tItem[3304186]["DialogueText"] = tGamblingMonthActivity_Text[3304186]
tItem[3304186]["Text1-1"] ={111}
tItem[3304186]["tOption1-1"] = {111,112,113}
tItem[3304186]["OptionPoint111"] = "2-1"
tItem[3304186]["OptionPoint112"] = "2-2"

tItem[3304186]["Text2-1"] ={211}
tItem[3304186]["tOption2-1"] = {211,212}
tItem[3304186]["OptionFunc211"] ="GamblingMonthActivity_OpenPack</N>3304186</N>1"
tItem[3304186]["OptionPoint212"] = "1-1"

tItem[3304186]["Text2-2"] ={221}
tItem[3304186]["tOption2-2"] = {221,212}
tItem[3304186]["OptionFunc221"] ="GamblingMonthActivity_OpenPack</N>3304186</N>2"


--------------------------------------时间触发-------------------------------------------
-- 0点执行203W
-- tOntimerMin_HM[0000] = tOntimerMin_HM[0000] or {}
-- table.insert(tOntimerMin_HM[0000],GamblingMonthActivity_ResetGlobal)
-- tOntimerMin_HM[0001] = tOntimerMin_HM[0001] or {}
-- table.insert(tOntimerMin_HM[0001],GamblingMonthActivity_ResetGlobal)
-- tOntimerMin_HM[0002] = tOntimerMin_HM[0002] or {}
-- table.insert(tOntimerMin_HM[0002],GamblingMonthActivity_ResetGlobal1)
-- tOntimerMin_HM[0003] = tOntimerMin_HM[0003] or {}
-- table.insert(tOntimerMin_HM[0003],GamblingMonthActivity_ResetGlobal1)
