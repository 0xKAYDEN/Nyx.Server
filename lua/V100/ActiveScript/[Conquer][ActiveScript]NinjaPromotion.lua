------------------------------------------------------------------------------------
--Name：            200408[英文征服][活动脚本]3月新服-忍者版促销商城
--Creator:      洪聪敏
--Created:     2020/04/08
---------------------------------------------------------------------------------
--log :12001946
--lua.ini ：41789
--命名前缀：NinjaPromotion_

------------------------------------------------------------------------------------
local tNinjaPromotion_Count ={}
	tNinjaPromotion_Count["Length"] = 15
	tNinjaPromotion_Count["Roulette"] = 3316016
	tNinjaPromotion_Count["Roulette_New"] = 3316017
	tNinjaPromotion_Count["Attr"]= "0 1"
	tNinjaPromotion_Count["Space"] = 2
	
local tNinjaPromotion_RewardAttr = {}
	tNinjaPromotion_RewardAttr[3306562] = "0 %d 3"
	tNinjaPromotion_RewardAttr[3306563] = "0 %d 3"
	tNinjaPromotion_RewardAttr[3009001] = "0 %d 0 2880 1"
	tNinjaPromotion_RewardAttr[3308868] = "0 %d"
--天石换赠点边界
local tNinjaPromotion_Board = {}
	tNinjaPromotion_Board[1] = {0,150000,5}
	tNinjaPromotion_Board[2] = {150000,390000,6}
	tNinjaPromotion_Board[3] = {390000,740000,7}
	tNinjaPromotion_Board[4] = {740000,1380000,8}
	tNinjaPromotion_Board[5] = {1380000,1560000,9}
	

local tNinjaPromotion_ChgEMomeyMono ={} 
	tNinjaPromotion_ChgEMomeyMono[3311608] = {}
	tNinjaPromotion_ChgEMomeyMono[3311608][5] = 5000
	tNinjaPromotion_ChgEMomeyMono[3311608][6] = 6000
	tNinjaPromotion_ChgEMomeyMono[3311608][7] = 7000
	tNinjaPromotion_ChgEMomeyMono[3311608][8] = 8000
	tNinjaPromotion_ChgEMomeyMono[3311608][9] = 8000
	
	tNinjaPromotion_ChgEMomeyMono[3311609] = {}
	tNinjaPromotion_ChgEMomeyMono[3311609][5] = 50000
	tNinjaPromotion_ChgEMomeyMono[3311609][6] = 60000
	tNinjaPromotion_ChgEMomeyMono[3311609][7] = 70000
	tNinjaPromotion_ChgEMomeyMono[3311609][8] = 80000
	tNinjaPromotion_ChgEMomeyMono[3311609][9] = 90000
	
	
	
	
local tNinjaPromotion_Log = {}
		-- 赠品消耗
	tNinjaPromotion_Log["ConsumeMono"] = "0,%d,0,0,12001946,2,%d,%d"
	tNinjaPromotion_Log["ConsumeEMoney"] = "350	%d	%d	%d	%d	"
	-- 过期删除
	tNinjaPromotion_Log["OverDue"] = "0,0,%d,1,12001946,2,0,0"
	
	tNinjaPromotion_Log["Roulette"] = "0,0,0,0,12001946,2,3316016,1"
	tNinjaPromotion_Log["RouletteNew"] = "0,0,0,0,12001946,2,3316017,1"
	
local tNinjaPromotion_LogIndex = {}
	tNinjaPromotion_LogIndex[1088000] = 20236
	tNinjaPromotion_LogIndex[730003] = 20237
	tNinjaPromotion_LogIndex[723694] = 20238
	tNinjaPromotion_LogIndex[3200571] = 20239
	tNinjaPromotion_LogIndex[1200005] = 20240
	tNinjaPromotion_LogIndex[1200006] = 20589
	-- ###180312[英文征服][活动脚本]4月赠品大狂欢（4.19-5.5）	modified by pyf
	tNinjaPromotion_LogIndex[3306562] = 31209
	tNinjaPromotion_LogIndex[3306563] = 31210
	tNinjaPromotion_LogIndex[4050001] = 31211
	tNinjaPromotion_LogIndex[3009001] = 31212
	tNinjaPromotion_LogIndex[3306370] = 31202
	tNinjaPromotion_LogIndex[4030201] = 31203
	tNinjaPromotion_LogIndex[4030301] = 31204
	tNinjaPromotion_LogIndex[4030501] = 31205
	tNinjaPromotion_LogIndex[4030801] = 31206
	tNinjaPromotion_LogIndex[4031201] = 31213
	tNinjaPromotion_LogIndex[4030901] = 31214
	tNinjaPromotion_LogIndex[4031001] = 31215
	tNinjaPromotion_LogIndex[4030101] = 31216
	tNinjaPromotion_LogIndex[4030401] = 31217
	tNinjaPromotion_LogIndex[4030601] = 31218
	tNinjaPromotion_LogIndex[4030701] = 31219
	tNinjaPromotion_LogIndex[4031101] = 31220
	-- 180427[英文征服][活动脚本]5月新服活动制作	modified by wzh
	tNinjaPromotion_LogIndex[3308868] = 21414
	tNinjaPromotion_LogIndex[730006] = 21415
	tNinjaPromotion_LogIndex[700102] = 21416
	tNinjaPromotion_LogIndex[700122] = 21417
	tNinjaPromotion_LogIndex[700103] = 21418
	tNinjaPromotion_LogIndex[700123] = 21419
	tNinjaPromotion_LogIndex[723701] = 21420
	
	--8月赠品大狂欢
	tNinjaPromotion_LogIndex[2100025] = 21580
	tNinjaPromotion_LogIndex[722736] = 21581
	tNinjaPromotion_LogIndex[722732] = 21852
	tNinjaPromotion_LogIndex[4031301] = 21471
	
	--雷神添加相关Log
	tNinjaPromotion_LogIndex[3307467] = 00153
	tNinjaPromotion_LogIndex[711188] = 00154 
	tNinjaPromotion_LogIndex[3307468] = 00155 
	tNinjaPromotion_LogIndex[3307469] = 00156 
	tNinjaPromotion_LogIndex[711679] = 00157 
	tNinjaPromotion_LogIndex[3307470] = 00158 
	tNinjaPromotion_LogIndex[1080001] = 00159 
	tNinjaPromotion_LogIndex[723030] = 00160
	
	--5月周年庆
	tNinjaPromotion_LogIndex[3312619] = 00439 
	tNinjaPromotion_LogIndex[3312620] = 00440 
	tNinjaPromotion_LogIndex[3304062] = 00441 
	tNinjaPromotion_LogIndex[3320470] = 00442
	
	--9月爆爽服
	tNinjaPromotion_LogIndex[3309001] = 00858
	tNinjaPromotion_LogIndex[3312763] = 00859
	
	--1月新年促销
	tNinjaPromotion_LogIndex[3306087] = 00860
	

	--需要特殊判断的物品
local tNinjaPromotion_SpecialItem = {}
	tNinjaPromotion_SpecialItem[3306562] = 3306562
	tNinjaPromotion_SpecialItem[3306563] = 3306563
	tNinjaPromotion_SpecialItem[4050001] = 4050001
	tNinjaPromotion_SpecialItem[3009001] = 3009001
	tNinjaPromotion_SpecialItem[3306370] = 3306370
	tNinjaPromotion_SpecialItem[3306600] = 3306600
	tNinjaPromotion_SpecialItem[3308868] = 3308868
	tNinjaPromotion_SpecialItem[722736] = 722736
	tNinjaPromotion_SpecialItem[722732] = 722732
	--雷神促销
	tNinjaPromotion_SpecialItem[711188] = 711188
	tNinjaPromotion_SpecialItem[723030] = 723030
	tNinjaPromotion_SpecialItem[1080001] = 1080001
-- 物品赠点所需要--
---备注：因此NPC只上忍者新服，所以新老服价格一致且逻辑上没有区分，后续如果有用到同时上，需修改
local tNinjaPromotion_EMomeyMono = {}
-- 换购所得赠点
	tNinjaPromotion_EMomeyMono[3311608] = 1000
	tNinjaPromotion_EMomeyMono[3311609] = 10000
	

	-- 赠品龙珠*1
	tNinjaPromotion_EMomeyMono[1088000] = {}
	tNinjaPromotion_EMomeyMono[1088000]["Old"] = 99
	tNinjaPromotion_EMomeyMono[1088000]["New"] = 99
	-- 赠品流星卷*10
	tNinjaPromotion_EMomeyMono[3312763] = {}
	tNinjaPromotion_EMomeyMono[3312763]["Old"] = 199
	tNinjaPromotion_EMomeyMono[3312763]["New"] = 199
	
	-- 赠品赤练石+3*1
	tNinjaPromotion_EMomeyMono[730003] = {}
	tNinjaPromotion_EMomeyMono[730003]["Old"] = 99
	tNinjaPromotion_EMomeyMono[730003]["New"] = 99
	-- 赠品小固化石*1
	tNinjaPromotion_EMomeyMono[723694] = {}
	tNinjaPromotion_EMomeyMono[723694]["Old"] = 4399 
	tNinjaPromotion_EMomeyMono[723694]["New"] = 4399
	-- 气力值1000点
	tNinjaPromotion_EMomeyMono[3200571] = {}
	tNinjaPromotion_EMomeyMono[3200571]["Old"] = 199
	tNinjaPromotion_EMomeyMono[3200571]["New"] = 199
	-- 赠品金刚尖钻*1
	tNinjaPromotion_EMomeyMono[1200005] = {}
	tNinjaPromotion_EMomeyMono[1200005]["Old"] = 1999
	tNinjaPromotion_EMomeyMono[1200005]["New"] = 1999
	-- 赠品七星宝钻*1
	tNinjaPromotion_EMomeyMono[1200006] = {}
	tNinjaPromotion_EMomeyMono[1200006]["Old"] = 999
	tNinjaPromotion_EMomeyMono[1200006]["New"] = 999
	
	-- 赠品红色可选职业神纹包
	tNinjaPromotion_EMomeyMono[3306562] = {}
	tNinjaPromotion_EMomeyMono[3306562]["Old"] = 999
	tNinjaPromotion_EMomeyMono[3306562]["New"] = 999	
	-- 赠品蓝色可选职业神纹包
	tNinjaPromotion_EMomeyMono[3306563] = {}
	tNinjaPromotion_EMomeyMono[3306563]["Old"] = 999
	tNinjaPromotion_EMomeyMono[3306563]["New"] = 999	
	-- 赠品黄色神纹精粹*1
	tNinjaPromotion_EMomeyMono[4050001] = {}
	tNinjaPromotion_EMomeyMono[4050001]["Old"] = 6
	tNinjaPromotion_EMomeyMono[4050001]["New"] = 6	
	-- 赠品黄色神纹精粹*10礼包
	tNinjaPromotion_EMomeyMono[3309001] = {}
	tNinjaPromotion_EMomeyMono[3309001]["Old"] = 30
	tNinjaPromotion_EMomeyMono[3309001]["New"] = 30
	-- 明亮星陨石*1（两天时效）
	tNinjaPromotion_EMomeyMono[3009001] = {}
	tNinjaPromotion_EMomeyMono[3009001]["Old"] = 66
	tNinjaPromotion_EMomeyMono[3009001]["New"] = 66	
	-- 赠品随机黄色神纹碎片*1
	tNinjaPromotion_EMomeyMono[3306370] = {}
	tNinjaPromotion_EMomeyMono[3306370]["Old"] = 179
	tNinjaPromotion_EMomeyMono[3306370]["New"] = 179
	-- 赠品黄色神纹-憾星诀*1
	tNinjaPromotion_EMomeyMono[4030201] = {}
	tNinjaPromotion_EMomeyMono[4030201]["Old"] = 3699
	tNinjaPromotion_EMomeyMono[4030201]["New"] = 3699	
	-- 赠品黄色神纹-血回元*1
	tNinjaPromotion_EMomeyMono[4030301] = {}
	tNinjaPromotion_EMomeyMono[4030301]["Old"] = 3699
	tNinjaPromotion_EMomeyMono[4030301]["New"] = 3699	
	-- 赠品黄色神纹-无懈可击*1
	tNinjaPromotion_EMomeyMono[4030501] = {}
	tNinjaPromotion_EMomeyMono[4030501]["Old"] = 3699
	tNinjaPromotion_EMomeyMono[4030501]["New"] = 3699	
	-- 赠品黄色神纹-回灵术*1
	tNinjaPromotion_EMomeyMono[4030801] = {}
	tNinjaPromotion_EMomeyMono[4030801]["Old"] = 3699
	tNinjaPromotion_EMomeyMono[4030801]["New"] = 3699	
	-- 赠品黄色神纹-安魂定魄*1
	tNinjaPromotion_EMomeyMono[4031201] = {}
	tNinjaPromotion_EMomeyMono[4031201]["Old"] = 3699
	tNinjaPromotion_EMomeyMono[4031201]["New"] = 3699	
	-- 赠品黄色神纹-杀破狼*1
	tNinjaPromotion_EMomeyMono[4030901] = {}
	tNinjaPromotion_EMomeyMono[4030901]["Old"] = 3699
	tNinjaPromotion_EMomeyMono[4030901]["New"] = 3699	
	-- 赠品黄色神纹-追命*1
	tNinjaPromotion_EMomeyMono[4031001] = {}
	tNinjaPromotion_EMomeyMono[4031001]["Old"] = 3699
	tNinjaPromotion_EMomeyMono[4031001]["New"] = 3699
	-- 赠品黄色神纹-破玄元*1
	tNinjaPromotion_EMomeyMono[4030101] = {}
	tNinjaPromotion_EMomeyMono[4030101]["Old"] = 3699
	tNinjaPromotion_EMomeyMono[4030101]["New"] = 3699
	-- 赠品黄色神纹-万物生*1
	tNinjaPromotion_EMomeyMono[4030401] = {}
	tNinjaPromotion_EMomeyMono[4030401]["Old"] = 3699
	tNinjaPromotion_EMomeyMono[4030401]["New"] = 3699
	-- 赠品黄色神纹-狂暴克星*1
	tNinjaPromotion_EMomeyMono[4030601] = {}
	tNinjaPromotion_EMomeyMono[4030601]["Old"] = 3699
	tNinjaPromotion_EMomeyMono[4030601]["New"] = 3699
	-- 赠品黄色神纹-风卷残云*1
	tNinjaPromotion_EMomeyMono[4030701] = {}
	tNinjaPromotion_EMomeyMono[4030701]["Old"] = 3699
	tNinjaPromotion_EMomeyMono[4030701]["New"] = 3699
	-- 赠品黄色神纹-奔雷不息*1
	tNinjaPromotion_EMomeyMono[4031101] = {}
	tNinjaPromotion_EMomeyMono[4031101]["Old"] = 3699
	tNinjaPromotion_EMomeyMono[4031101]["New"] = 3699
	-- 180427[英文征服][活动脚本]5月新服活动制作	modified by wzh
	-- 赠品+6马匹
	tNinjaPromotion_EMomeyMono[3308868] = {}
	tNinjaPromotion_EMomeyMono[3308868]["Old"] = 2999
	tNinjaPromotion_EMomeyMono[3308868]["New"] = 2999
	-- 赠品赤炼石+6
	tNinjaPromotion_EMomeyMono[730006] = {}
	tNinjaPromotion_EMomeyMono[730006]["Old"] = 2199
	tNinjaPromotion_EMomeyMono[730006]["New"] = 2199
	-- 赠品良品天怒宝石
	tNinjaPromotion_EMomeyMono[700102] = {}
	tNinjaPromotion_EMomeyMono[700102]["Old"] = 299
	tNinjaPromotion_EMomeyMono[700102]["New"] = 299
	-- 赠品良品地灵宝石
	tNinjaPromotion_EMomeyMono[700122] = {}
	tNinjaPromotion_EMomeyMono[700122]["Old"] = 299
	tNinjaPromotion_EMomeyMono[700122]["New"] = 299
	-- 赠品优质天怒宝石
	tNinjaPromotion_EMomeyMono[700103] = {}
	tNinjaPromotion_EMomeyMono[700103]["Old"] = 3999
	tNinjaPromotion_EMomeyMono[700103]["New"] = 3999
	-- 赠品优质地灵宝石
	tNinjaPromotion_EMomeyMono[700123] = {}
	tNinjaPromotion_EMomeyMono[700123]["Old"] = 3999
	tNinjaPromotion_EMomeyMono[700123]["New"] = 3999
	-- 赠品二转令牌
	tNinjaPromotion_EMomeyMono[723701] = {}
	tNinjaPromotion_EMomeyMono[723701]["Old"] = 2999
	tNinjaPromotion_EMomeyMono[723701]["New"] = 2999
	
	--8月赠品大狂欢
	--赠品灵宝葫芦
	tNinjaPromotion_EMomeyMono[2100025] = {}
	tNinjaPromotion_EMomeyMono[2100025]["Old"] = 2999
	tNinjaPromotion_EMomeyMono[2100025]["New"] = 2999
	
	--赠品白色恶之花
	tNinjaPromotion_EMomeyMono[722736] = {}
	tNinjaPromotion_EMomeyMono[722736]["Old"] = 69
	tNinjaPromotion_EMomeyMono[722736]["New"] = 69
	
	--赠品红色恶之花
	tNinjaPromotion_EMomeyMono[722732] = {}
	tNinjaPromotion_EMomeyMono[722732]["Old"] = 69
	tNinjaPromotion_EMomeyMono[722732]["New"] = 69
	
	--赠品黄色神纹-夺魂*1
	tNinjaPromotion_EMomeyMono[4031301] = {}
	tNinjaPromotion_EMomeyMono[4031301]["Old"] = 3699
	tNinjaPromotion_EMomeyMono[4031301]["New"] = 3699
	
	--雷神促销
	tNinjaPromotion_EMomeyMono[3307467] = {}
	tNinjaPromotion_EMomeyMono[3307467]["Old"] = 99
	tNinjaPromotion_EMomeyMono[3307467]["New"] = 99
	
	tNinjaPromotion_EMomeyMono[711188] = {}
	tNinjaPromotion_EMomeyMono[711188]["Old"] = 99
	tNinjaPromotion_EMomeyMono[711188]["New"] = 99
	
	tNinjaPromotion_EMomeyMono[3307468] = {}
	tNinjaPromotion_EMomeyMono[3307468]["Old"] = 99
	tNinjaPromotion_EMomeyMono[3307468]["New"] = 99
	
	tNinjaPromotion_EMomeyMono[3307469] = {}
	tNinjaPromotion_EMomeyMono[3307469]["Old"] = 99
	tNinjaPromotion_EMomeyMono[3307469]["New"] = 99
	
	tNinjaPromotion_EMomeyMono[711679] = {}
	tNinjaPromotion_EMomeyMono[711679]["Old"] = 99
	tNinjaPromotion_EMomeyMono[711679]["New"] = 99
	
	tNinjaPromotion_EMomeyMono[3307470] = {}
	tNinjaPromotion_EMomeyMono[3307470]["Old"] = 199
	tNinjaPromotion_EMomeyMono[3307470]["New"] = 199
	
	tNinjaPromotion_EMomeyMono[1080001] = {}
	tNinjaPromotion_EMomeyMono[1080001]["Old"] = 80
	tNinjaPromotion_EMomeyMono[1080001]["New"] = 80
	
	tNinjaPromotion_EMomeyMono[723030] = {}
	tNinjaPromotion_EMomeyMono[723030]["Old"] = 25
	tNinjaPromotion_EMomeyMono[723030]["New"] = 25
	
	--5周年赠品大狂欢
	tNinjaPromotion_EMomeyMono[3312619] = {}
	tNinjaPromotion_EMomeyMono[3312619]["Old"] = 249
	tNinjaPromotion_EMomeyMono[3312619]["New"] = 249
	
	tNinjaPromotion_EMomeyMono[3312620] = {}
	tNinjaPromotion_EMomeyMono[3312620]["Old"] = 249
	tNinjaPromotion_EMomeyMono[3312620]["New"] = 249
	
	tNinjaPromotion_EMomeyMono[3304062] = {}
	tNinjaPromotion_EMomeyMono[3304062]["Old"] = 249
	tNinjaPromotion_EMomeyMono[3304062]["New"] = 249
	
	tNinjaPromotion_EMomeyMono[3320470] = {}
	tNinjaPromotion_EMomeyMono[3320470]["Old"] = 750
	tNinjaPromotion_EMomeyMono[3320470]["New"] = 750
	
	tNinjaPromotion_EMomeyMono[3306087] = {}
	tNinjaPromotion_EMomeyMono[3306087]["Old"] = 2499 
	tNinjaPromotion_EMomeyMono[3306087]["New"] = 2499 
	

-- stc掩码
local tNinjaPromotion_Stc = {}
	-- 赠点换购上限
	tNinjaPromotion_Stc[1] = {}
	tNinjaPromotion_Stc[1]["EventType"] = 218
	tNinjaPromotion_Stc[1]["DataType"] = 70
	tNinjaPromotion_Stc[1]["Limit"] = 1560000

	-- 龙珠
	tNinjaPromotion_Stc[1088000] = {}
	tNinjaPromotion_Stc[1088000]["EventType"] = 151
	tNinjaPromotion_Stc[1088000]["DataType"] = 78
	tNinjaPromotion_Stc[1088000]["Limit"] = 200 --30
	tNinjaPromotion_Stc[1088000]["Oldlimit"] = 200
	-- 赠品流星卷*10
	tNinjaPromotion_Stc[3312763] = {}
	tNinjaPromotion_Stc[3312763]["EventType"] = 203
	tNinjaPromotion_Stc[3312763]["DataType"] = 80
	tNinjaPromotion_Stc[3312763]["Limit"] = 9999
	tNinjaPromotion_Stc[3312763]["Oldlimit"] = 9999
	-- 赤炼石+3
	tNinjaPromotion_Stc[730003] = {}
	tNinjaPromotion_Stc[730003]["EventType"] = 151
	tNinjaPromotion_Stc[730003]["DataType"] = 79
	tNinjaPromotion_Stc[730003]["Limit"] = 300 --50
	tNinjaPromotion_Stc[730003]["Oldlimit"] = 300
	-- 小固化石
	tNinjaPromotion_Stc[723694] = {}
	tNinjaPromotion_Stc[723694]["EventType"] = 151
	tNinjaPromotion_Stc[723694]["DataType"] = 80
	tNinjaPromotion_Stc[723694]["Limit"] = 100 --30
	tNinjaPromotion_Stc[723694]["Oldlimit"] = 100
	-- 1000气力礼包
	tNinjaPromotion_Stc[3200571] = {}
	tNinjaPromotion_Stc[3200571]["EventType"] = 151
	tNinjaPromotion_Stc[3200571]["DataType"] = 81
	tNinjaPromotion_Stc[3200571]["Limit"] = 1000 --100
	tNinjaPromotion_Stc[3200571]["Oldlimit"] = 1000
	-- 金刚尖钻
	tNinjaPromotion_Stc[1200005] = {}
	tNinjaPromotion_Stc[1200005]["EventType"] = 151
	tNinjaPromotion_Stc[1200005]["DataType"] = 82
	tNinjaPromotion_Stc[1200005]["Limit"] = 100 --40
	tNinjaPromotion_Stc[1200005]["Oldlimit"] = 100
	-- 七星宝钻
	tNinjaPromotion_Stc[1200006] = {}
	tNinjaPromotion_Stc[1200006]["EventType"] = 161
	tNinjaPromotion_Stc[1200006]["DataType"] = 58
	tNinjaPromotion_Stc[1200006]["Limit"] = 100 --10
	tNinjaPromotion_Stc[1200006]["Oldlimit"] = 100
	-- 优惠兑换卡（1:4）
	tNinjaPromotion_Stc[3304766] = {}
	tNinjaPromotion_Stc[3304766]["EventType"] = 165
	tNinjaPromotion_Stc[3304766]["DataType"] = 08
	tNinjaPromotion_Stc[3304766]["Limit"] = 10000
	-- 优惠兑换卡（1:5）
	tNinjaPromotion_Stc[3304767] = {}
	tNinjaPromotion_Stc[3304767]["EventType"] = 165
	tNinjaPromotion_Stc[3304767]["DataType"] = 09
	tNinjaPromotion_Stc[3304767]["Limit"] = 10000
	-- 优惠兑换卡（1:6）
	tNinjaPromotion_Stc[3304768] = {}
	tNinjaPromotion_Stc[3304768]["EventType"] = 165
	tNinjaPromotion_Stc[3304768]["DataType"] = 10
	tNinjaPromotion_Stc[3304768]["Limit"] = 20000
	-- 优惠兑换卡（1:7）
	tNinjaPromotion_Stc[3308699] = {}
	tNinjaPromotion_Stc[3308699]["EventType"] = 176
	tNinjaPromotion_Stc[3308699]["DataType"] = 36
	tNinjaPromotion_Stc[3308699]["Limit"] = 10000
	-- ###180312[英文征服][活动脚本]4月赠品大狂欢（4.19-5.5）	modified by pyf
	-- 赠品红色可选职业神纹包
	tNinjaPromotion_Stc[3306562] = {}
	tNinjaPromotion_Stc[3306562]["EventType"] = 174
	tNinjaPromotion_Stc[3306562]["DataType"] = 95
	tNinjaPromotion_Stc[3306562]["Limit"] = 100
	tNinjaPromotion_Stc[3306562]["Oldlimit"] = 100
	
	-- 赠品蓝色可选职业神纹包
	tNinjaPromotion_Stc[3306563] = {}
	tNinjaPromotion_Stc[3306563]["EventType"] = 174
	tNinjaPromotion_Stc[3306563]["DataType"] = 96
	tNinjaPromotion_Stc[3306563]["Limit"] = 100
	tNinjaPromotion_Stc[3306563]["Oldlimit"] = 100
	
	-- 赠品黄色神纹精粹*1
	tNinjaPromotion_Stc[4050001] = {}
	tNinjaPromotion_Stc[4050001]["EventType"] = 174
	tNinjaPromotion_Stc[4050001]["DataType"] = 97
	tNinjaPromotion_Stc[4050001]["Limit"] = 20000
	tNinjaPromotion_Stc[4050001]["Oldlimit"] = 20000
	
	-- 赠品黄色神纹精粹*10礼包
	tNinjaPromotion_Stc[3309001] = {}
	tNinjaPromotion_Stc[3309001]["EventType"] = 203
	tNinjaPromotion_Stc[3309001]["DataType"] = 79
	tNinjaPromotion_Stc[3309001]["Limit"] = 99999
	tNinjaPromotion_Stc[3309001]["Oldlimit"] = 99999
	
	-- 明亮星陨石*1（两天时效）
	tNinjaPromotion_Stc[3009001] = {}
	tNinjaPromotion_Stc[3009001]["EventType"] = 174
	tNinjaPromotion_Stc[3009001]["DataType"] = 98
	tNinjaPromotion_Stc[3009001]["Limit"] = 20000
	tNinjaPromotion_Stc[3009001]["Oldlimit"] = 20000
	
	-- 赠品随机黄色神纹碎片*1
	tNinjaPromotion_Stc[3306370] = {}
	tNinjaPromotion_Stc[3306370]["EventType"] = 174
	tNinjaPromotion_Stc[3306370]["DataType"] = 99
	tNinjaPromotion_Stc[3306370]["Limit"] = 1000
	tNinjaPromotion_Stc[3306370]["Oldlimit"] = 1000
	
	-- 赠品黄色神纹-憾星诀*1
	tNinjaPromotion_Stc[4030201] = {}
	tNinjaPromotion_Stc[4030201]["EventType"] = 175
	tNinjaPromotion_Stc[4030201]["DataType"] = 00
	tNinjaPromotion_Stc[4030201]["Limit"] = 100
	tNinjaPromotion_Stc[4030201]["Oldlimit"] = 100
	
	-- 赠品黄色神纹-血回元*1
	tNinjaPromotion_Stc[4030301] = {}
	tNinjaPromotion_Stc[4030301]["EventType"] = 175
	tNinjaPromotion_Stc[4030301]["DataType"] = 01
	tNinjaPromotion_Stc[4030301]["Limit"] = 100
	tNinjaPromotion_Stc[4030301]["Oldlimit"] = 100
	
	-- 赠品黄色神纹-无懈可击*1
	tNinjaPromotion_Stc[4030501] = {}
	tNinjaPromotion_Stc[4030501]["EventType"] = 175
	tNinjaPromotion_Stc[4030501]["DataType"] = 02
	tNinjaPromotion_Stc[4030501]["Limit"] = 100
	tNinjaPromotion_Stc[4030501]["Oldlimit"] = 100
	
	-- 赠品黄色神纹-回灵术*1
	tNinjaPromotion_Stc[4030801] = {}
	tNinjaPromotion_Stc[4030801]["EventType"] = 175
	tNinjaPromotion_Stc[4030801]["DataType"] = 03
	tNinjaPromotion_Stc[4030801]["Limit"] = 100
	tNinjaPromotion_Stc[4030801]["Oldlimit"] = 100
	
	-- 赠品黄色神纹-安魂定魄*1
	tNinjaPromotion_Stc[4031201] = {}
	tNinjaPromotion_Stc[4031201]["EventType"] = 175
	tNinjaPromotion_Stc[4031201]["DataType"] = 04
	tNinjaPromotion_Stc[4031201]["Limit"] = 100
	tNinjaPromotion_Stc[4031201]["Oldlimit"] = 100
	
	-- 赠品黄色神纹-杀破狼*1
	tNinjaPromotion_Stc[4030901] = {}
	tNinjaPromotion_Stc[4030901]["EventType"] = 175
	tNinjaPromotion_Stc[4030901]["DataType"] = 05
	tNinjaPromotion_Stc[4030901]["Limit"] = 100
	tNinjaPromotion_Stc[4030901]["Oldlimit"] = 100
	
	-- 赠品黄色神纹-追命*1
	tNinjaPromotion_Stc[4031001] = {}
	tNinjaPromotion_Stc[4031001]["EventType"] = 175
	tNinjaPromotion_Stc[4031001]["DataType"] = 06
	tNinjaPromotion_Stc[4031001]["Limit"] = 100
	tNinjaPromotion_Stc[4031001]["Oldlimit"] = 100
	
	-- 赠品黄色神纹-破玄元*1
	tNinjaPromotion_Stc[4030101] = {}
	tNinjaPromotion_Stc[4030101]["EventType"] = 175
	tNinjaPromotion_Stc[4030101]["DataType"] = 08
	tNinjaPromotion_Stc[4030101]["Limit"] = 100
	tNinjaPromotion_Stc[4030101]["Oldlimit"] = 100
	
	-- 赠品黄色神纹-万物生*1
	tNinjaPromotion_Stc[4030401] = {}
	tNinjaPromotion_Stc[4030401]["EventType"] = 175
	tNinjaPromotion_Stc[4030401]["DataType"] = 09
	tNinjaPromotion_Stc[4030401]["Limit"] = 100
	tNinjaPromotion_Stc[4030401]["Oldlimit"] = 100
	
	-- 赠品黄色神纹-狂暴克星*1
	tNinjaPromotion_Stc[4030601] = {}
	tNinjaPromotion_Stc[4030601]["EventType"] = 175
	tNinjaPromotion_Stc[4030601]["DataType"] = 10
	tNinjaPromotion_Stc[4030601]["Limit"] = 100
	tNinjaPromotion_Stc[4030601]["Oldlimit"] = 100
	
	-- 赠品黄色神纹-风卷残云*1
	tNinjaPromotion_Stc[4030701] = {}
	tNinjaPromotion_Stc[4030701]["EventType"] = 175
	tNinjaPromotion_Stc[4030701]["DataType"] = 11
	tNinjaPromotion_Stc[4030701]["Limit"] = 100
	tNinjaPromotion_Stc[4030701]["Oldlimit"] = 100
	
	-- 赠品黄色神纹-奔雷不息*1
	tNinjaPromotion_Stc[4031101] = {}
	tNinjaPromotion_Stc[4031101]["EventType"] = 175
	tNinjaPromotion_Stc[4031101]["DataType"] = 12
	tNinjaPromotion_Stc[4031101]["Limit"] = 100
	tNinjaPromotion_Stc[4031101]["Oldlimit"] = 100
	
	-- 180427[英文征服][活动脚本]5月新服活动制作
	-- 赠品+6马匹
	tNinjaPromotion_Stc[3308868] = {}
	tNinjaPromotion_Stc[3308868]["EventType"] = 176
	tNinjaPromotion_Stc[3308868]["DataType"] = 63
	tNinjaPromotion_Stc[3308868]["Limit"] = 100
	tNinjaPromotion_Stc[3308868]["Oldlimit"] = 100
	-- 赠品赤炼石+6
	tNinjaPromotion_Stc[730006] = {}
	tNinjaPromotion_Stc[730006]["EventType"] = 176
	tNinjaPromotion_Stc[730006]["DataType"] = 64
	tNinjaPromotion_Stc[730006]["Limit"] = 100
	tNinjaPromotion_Stc[730006]["Oldlimit"] = 100
	-- 赠品良品天怒宝石
	tNinjaPromotion_Stc[700102] = {}
	tNinjaPromotion_Stc[700102]["EventType"] = 176
	tNinjaPromotion_Stc[700102]["DataType"] = 65
	tNinjaPromotion_Stc[700102]["Limit"] = 100
	tNinjaPromotion_Stc[700102]["Oldlimit"] = 100
	-- 赠品良品地灵宝石
	tNinjaPromotion_Stc[700122] = {}
	tNinjaPromotion_Stc[700122]["EventType"] = 176
	tNinjaPromotion_Stc[700122]["DataType"] = 66
	tNinjaPromotion_Stc[700122]["Limit"] = 100
	tNinjaPromotion_Stc[700122]["Oldlimit"] = 100
	-- 赠品优质天怒宝石
	tNinjaPromotion_Stc[700103] = {}
	tNinjaPromotion_Stc[700103]["EventType"] = 176
	tNinjaPromotion_Stc[700103]["DataType"] = 67
	tNinjaPromotion_Stc[700103]["Limit"] = 100
	tNinjaPromotion_Stc[700103]["Oldlimit"] = 100
	-- 赠品优质地灵宝石
	tNinjaPromotion_Stc[700123] = {}
	tNinjaPromotion_Stc[700123]["EventType"] = 176
	tNinjaPromotion_Stc[700123]["DataType"] = 68
	tNinjaPromotion_Stc[700123]["Limit"] = 100
	tNinjaPromotion_Stc[700123]["Oldlimit"] = 100
	-- 赠品二转令牌
	tNinjaPromotion_Stc[723701] = {}
	tNinjaPromotion_Stc[723701]["EventType"] = 176
	tNinjaPromotion_Stc[723701]["DataType"] = 69
	tNinjaPromotion_Stc[723701]["Limit"] = 1
	tNinjaPromotion_Stc[723701]["Oldlimit"] = 1
	
	--##8月促销大狂欢
	--赠品灵宝葫芦
	tNinjaPromotion_Stc[2100025] = {}
	tNinjaPromotion_Stc[2100025]["EventType"] = 179
	tNinjaPromotion_Stc[2100025]["DataType"] = 93
	tNinjaPromotion_Stc[2100025]["Limit"] = 2
	tNinjaPromotion_Stc[2100025]["Oldlimit"] = 2
	
	--赠品白色恶之花
	tNinjaPromotion_Stc[722736] = {}
	tNinjaPromotion_Stc[722736]["EventType"] = 179
	tNinjaPromotion_Stc[722736]["DataType"] = 94
	tNinjaPromotion_Stc[722736]["Limit"] = 1000
	tNinjaPromotion_Stc[722736]["Oldlimit"] = 1000
	
	--赠品红色恶之花
	tNinjaPromotion_Stc[722732] = {}
	tNinjaPromotion_Stc[722732]["EventType"] = 179
	tNinjaPromotion_Stc[722732]["DataType"] = 95
	tNinjaPromotion_Stc[722732]["Limit"] = 1000
	tNinjaPromotion_Stc[722732]["Oldlimit"] = 1000
	
	-- 赠品黄色神纹-夺魂*1
	tNinjaPromotion_Stc[4031301] = {}
	tNinjaPromotion_Stc[4031301]["EventType"] = 176
	tNinjaPromotion_Stc[4031301]["DataType"] = 54
	tNinjaPromotion_Stc[4031301]["Limit"] = 100
	tNinjaPromotion_Stc[4031301]["Oldlimit"] = 100
	
	---雷神促销
	--破城火雷*10
	tNinjaPromotion_Stc[3307467] = {}
	tNinjaPromotion_Stc[3307467]["EventType"] = 190
	tNinjaPromotion_Stc[3307467]["DataType"] = 67
	tNinjaPromotion_Stc[3307467]["Limit"] = 10
	tNinjaPromotion_Stc[3307467]["Oldlimit"] = 10
	--金刚灵果*1
	tNinjaPromotion_Stc[711188] = {}
	tNinjaPromotion_Stc[711188]["EventType"] = 190
	tNinjaPromotion_Stc[711188]["DataType"] = 68
	tNinjaPromotion_Stc[711188]["Limit"] = 10
	tNinjaPromotion_Stc[711188]["Oldlimit"] = 10
	--辟邪护符*20
	tNinjaPromotion_Stc[3307468] = {}
	tNinjaPromotion_Stc[3307468]["EventType"] = 190
	tNinjaPromotion_Stc[3307468]["DataType"] = 69
	tNinjaPromotion_Stc[3307468]["Limit"] = 10
	tNinjaPromotion_Stc[3307468]["Oldlimit"] = 10
	--流星泪*10
	tNinjaPromotion_Stc[3307469] = {}
	tNinjaPromotion_Stc[3307469]["EventType"] = 190
	tNinjaPromotion_Stc[3307469]["DataType"] = 70
	tNinjaPromotion_Stc[3307469]["Limit"] = 10
	tNinjaPromotion_Stc[3307469]["Oldlimit"] = 10
	--炫舞者就职公文*1
	tNinjaPromotion_Stc[711679] = {}
	tNinjaPromotion_Stc[711679]["EventType"] = 190
	tNinjaPromotion_Stc[711679]["DataType"] = 71
	tNinjaPromotion_Stc[711679]["Limit"] = 10
	tNinjaPromotion_Stc[711679]["Oldlimit"] = 10
	--被偷走的马鞍*40
	tNinjaPromotion_Stc[3307470] = {}
	tNinjaPromotion_Stc[3307470]["EventType"] = 190
	tNinjaPromotion_Stc[3307470]["DataType"] = 72
	tNinjaPromotion_Stc[3307470]["Limit"] = 10
	tNinjaPromotion_Stc[3307470]["Oldlimit"] = 10
	--祖母绿
	tNinjaPromotion_Stc[1080001] = {}
	tNinjaPromotion_Stc[1080001]["EventType"] = 190
	tNinjaPromotion_Stc[1080001]["DataType"] = 73
	tNinjaPromotion_Stc[1080001]["Limit"] = 100
	tNinjaPromotion_Stc[1080001]["Oldlimit"] = 100
	--杜康酒
	tNinjaPromotion_Stc[723030] = {}
	tNinjaPromotion_Stc[723030]["EventType"] = 190
	tNinjaPromotion_Stc[723030]["DataType"] = 74
	tNinjaPromotion_Stc[723030]["Limit"] = 100
	tNinjaPromotion_Stc[723030]["Oldlimit"] = 100
	
	--5月周年庆
	--赠强效护心丹尊享包（内含10颗赠强效护心丹）
	tNinjaPromotion_Stc[3312619] = {}
	tNinjaPromotion_Stc[3312619]["EventType"] = 195
	tNinjaPromotion_Stc[3312619]["DataType"] = 72
	tNinjaPromotion_Stc[3312619]["Limit"] = 30
	tNinjaPromotion_Stc[3312619]["Oldlimit"] = 30
	
	--赠卓越究极通神丹礼盒（内含10个终究通神丹）
	tNinjaPromotion_Stc[3312620] = {}
	tNinjaPromotion_Stc[3312620]["EventType"] = 195
	tNinjaPromotion_Stc[3312620]["DataType"] = 73
	tNinjaPromotion_Stc[3312620]["Limit"] = 30
	tNinjaPromotion_Stc[3312620]["Oldlimit"] = 30
	
	--副职业的修行值500
	tNinjaPromotion_Stc[3304062] = {}
	tNinjaPromotion_Stc[3304062]["EventType"] = 195
	tNinjaPromotion_Stc[3304062]["DataType"] = 74
	tNinjaPromotion_Stc[3304062]["Limit"] = 40
	tNinjaPromotion_Stc[3304062]["Oldlimit"] = 40
	
	--内功的修为值5000
	tNinjaPromotion_Stc[3320470] = {}
	tNinjaPromotion_Stc[3320470]["EventType"] = 195
	tNinjaPromotion_Stc[3320470]["DataType"] = 75
	tNinjaPromotion_Stc[3320470]["Limit"] = 20
	tNinjaPromotion_Stc[3320470]["Oldlimit"] = 20
	
	--1月新年促销
	tNinjaPromotion_Stc[3306087] = {}
	tNinjaPromotion_Stc[3306087]["EventType"] = 211
	tNinjaPromotion_Stc[3306087]["DataType"] = 79
	tNinjaPromotion_Stc[3306087]["Limit"] = 15
	tNinjaPromotion_Stc[3306087]["Oldlimit"] = 15
	
	local tNinjaPromotion_Option = {}
	tNinjaPromotion_Option[1088000] = "Option3"
	tNinjaPromotion_Option[730003] = "Option4"
	tNinjaPromotion_Option[723694] = "Option5"
	tNinjaPromotion_Option[3200571] = "Option6"
	tNinjaPromotion_Option[1200005] = "Option7"
	tNinjaPromotion_Option[1200006] = "Option14"
	
	-- ###180312[英文征服][活动脚本]4月赠品大狂欢（4.19-5.5）	modified by pyf
	tNinjaPromotion_Option[3306562] = "Option16"
	tNinjaPromotion_Option[3306563] = "Option17"
	tNinjaPromotion_Option[4050001] = "Option18"
	tNinjaPromotion_Option[3009001] = "Option19"
	tNinjaPromotion_Option[3306370] = "Option20"
	tNinjaPromotion_Option[4030201] = "Option21"
	tNinjaPromotion_Option[4030301] = "Option22"
	tNinjaPromotion_Option[4030501] = "Option23"
	tNinjaPromotion_Option[4030801] = "Option24"
	tNinjaPromotion_Option[4031201] = "Option25"
	tNinjaPromotion_Option[4030901] = "Option26"
	tNinjaPromotion_Option[4031001] = "Option27"
	tNinjaPromotion_Option[4030101] = "Option28"
	tNinjaPromotion_Option[4030401] = "Option29"
	tNinjaPromotion_Option[4030601] = "Option30"
	tNinjaPromotion_Option[4030701] = "Option31"
	tNinjaPromotion_Option[4031101] = "Option32"
	-- 180427[英文征服][活动脚本]5月新服活动制作	modified by wzh
	tNinjaPromotion_Option[3308868] = "Option33"
	tNinjaPromotion_Option[730006] = "Option34"
	tNinjaPromotion_Option[700102] = "Option35"
	tNinjaPromotion_Option[700122] = "Option36"
	tNinjaPromotion_Option[700103] = "Option37"
	tNinjaPromotion_Option[700123] = "Option38"
	tNinjaPromotion_Option[723701] = "Option39"
	
	--8月促销活动
	tNinjaPromotion_Option[2100025] = "Option40"
	tNinjaPromotion_Option[722736] = "Option41"
	tNinjaPromotion_Option[722732] = "Option42"
	--赠品黄色神纹-夺魂*1
	tNinjaPromotion_Option[4031301] = "Option43"
	
	--雷神促销新增物品
	tNinjaPromotion_Option[3307467] = "Option44"
	tNinjaPromotion_Option[711188] = "Option45"
	tNinjaPromotion_Option[3307468] = "Option46"
	tNinjaPromotion_Option[3307469] = "Option47"
	tNinjaPromotion_Option[711679] = "Option48"
	tNinjaPromotion_Option[3307470] = "Option49"
	tNinjaPromotion_Option[1080001] = "Option50"
	tNinjaPromotion_Option[723030] = "Option51"
	
	--5月周年庆
	tNinjaPromotion_Option[3312619] = "Option52"
	tNinjaPromotion_Option[3312620] = "Option53"
	tNinjaPromotion_Option[3304062] = "Option54"
	tNinjaPromotion_Option[3320470] = "Option55"
	
	--9月爆爽服
	tNinjaPromotion_Option[3309001] = "Option56"
	tNinjaPromotion_Option[3312763] = "Option57"
	
	--1月新年促销
	tNinjaPromotion_Option[3306087] = "Option58"
	
------------------------------------------------------------------------------------
local tNinjaPromotion_Reward = {}
	-- 3315985 GoodLuck(B)Pack
	tNinjaPromotion_Reward[3315985] = {}
	tNinjaPromotion_Reward[3315985]["RewardItem"] = {}
	tNinjaPromotion_Reward[3315985]["RewardItem"][1] = {}
	tNinjaPromotion_Reward[3315985]["RewardItem"][1]["Id"] = 191305
	tNinjaPromotion_Reward[3315985]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tNinjaPromotion_Reward[3315985]["DeleteItem"] = {}
	tNinjaPromotion_Reward[3315985]["DeleteItem"][1] = {}
	tNinjaPromotion_Reward[3315985]["DeleteItem"][1]["Id"] = 3315985
	tNinjaPromotion_Reward[3315985]["LogId"] = 12001946
	tNinjaPromotion_Reward[3315985]["RewardEffect"] = {}
	tNinjaPromotion_Reward[3315985]["RewardEffect"]["Effect"]  = "angelwing"
	
	-- 3315986 FlameRobe(B)Pack
	tNinjaPromotion_Reward[3315986] = {}
	tNinjaPromotion_Reward[3315986]["RewardItem"] = {}
	tNinjaPromotion_Reward[3315986]["RewardItem"][1] = {}
	tNinjaPromotion_Reward[3315986]["RewardItem"][1]["Id"] = 183475
	tNinjaPromotion_Reward[3315986]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tNinjaPromotion_Reward[3315986]["DeleteItem"] = {}
	tNinjaPromotion_Reward[3315986]["DeleteItem"][1] = {}
	tNinjaPromotion_Reward[3315986]["DeleteItem"][1]["Id"] = 3315986
	tNinjaPromotion_Reward[3315986]["LogId"] = 12001946
	tNinjaPromotion_Reward[3315986]["RewardEffect"] = {}
	tNinjaPromotion_Reward[3315986]["RewardEffect"]["Effect"]  = "angelwing"
	-- 3315987 FancyAzure(B)Pack
	tNinjaPromotion_Reward[3315987] = {}
	tNinjaPromotion_Reward[3315987]["RewardItem"] = {}
	tNinjaPromotion_Reward[3315987]["RewardItem"][1] = {}
	tNinjaPromotion_Reward[3315987]["RewardItem"][1]["Id"] = 183425
	tNinjaPromotion_Reward[3315987]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tNinjaPromotion_Reward[3315987]["DeleteItem"] = {}
	tNinjaPromotion_Reward[3315987]["DeleteItem"][1] = {}
	tNinjaPromotion_Reward[3315987]["DeleteItem"][1]["Id"] = 3315987
	tNinjaPromotion_Reward[3315987]["LogId"] = 12001946
	tNinjaPromotion_Reward[3315987]["RewardEffect"] = {}
	tNinjaPromotion_Reward[3315987]["RewardEffect"]["Effect"]  = "angelwing"
	-- 3315988 DivineRobe(B)Pack
	tNinjaPromotion_Reward[3315988] = {}
	tNinjaPromotion_Reward[3315988]["RewardItem"] = {}
	tNinjaPromotion_Reward[3315988]["RewardItem"][1] = {}
	tNinjaPromotion_Reward[3315988]["RewardItem"][1]["Id"] = 191405
	tNinjaPromotion_Reward[3315988]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tNinjaPromotion_Reward[3315988]["DeleteItem"] = {}
	tNinjaPromotion_Reward[3315988]["DeleteItem"][1] = {}
	tNinjaPromotion_Reward[3315988]["DeleteItem"][1]["Id"] = 3315988
	tNinjaPromotion_Reward[3315988]["LogId"] = 12001946
	tNinjaPromotion_Reward[3315988]["RewardEffect"] = {}
	tNinjaPromotion_Reward[3315988]["RewardEffect"]["Effect"]  = "angelwing"
	-- 3315989 WeddingGown(B)Pack
	tNinjaPromotion_Reward[3315989] = {}
	tNinjaPromotion_Reward[3315989]["RewardItem"] = {}
	tNinjaPromotion_Reward[3315989]["RewardItem"][1] = {}
	tNinjaPromotion_Reward[3315989]["RewardItem"][1]["Id"] = 181535
	tNinjaPromotion_Reward[3315989]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tNinjaPromotion_Reward[3315989]["DeleteItem"] = {}
	tNinjaPromotion_Reward[3315989]["DeleteItem"][1] = {}
	tNinjaPromotion_Reward[3315989]["DeleteItem"][1]["Id"] = 3315989
	tNinjaPromotion_Reward[3315989]["LogId"] = 12001946
	tNinjaPromotion_Reward[3315989]["RewardEffect"] = {}
	tNinjaPromotion_Reward[3315989]["RewardEffect"]["Effect"]  = "angelwing"
	-- 3315990 PurePunk(B)Pack
	tNinjaPromotion_Reward[3315990] = {}
	tNinjaPromotion_Reward[3315990]["RewardItem"] = {}
	tNinjaPromotion_Reward[3315990]["RewardItem"][1] = {}
	tNinjaPromotion_Reward[3315990]["RewardItem"][1]["Id"] = 188365
	tNinjaPromotion_Reward[3315990]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tNinjaPromotion_Reward[3315990]["DeleteItem"] = {}
	tNinjaPromotion_Reward[3315990]["DeleteItem"][1] = {}
	tNinjaPromotion_Reward[3315990]["DeleteItem"][1]["Id"] = 3315990
	tNinjaPromotion_Reward[3315990]["LogId"] = 12001946
	tNinjaPromotion_Reward[3315990]["RewardEffect"] = {}
	tNinjaPromotion_Reward[3315990]["RewardEffect"]["Effect"] = "angelwing"
	-- 3315991 DarkWizard(B)Pack
	tNinjaPromotion_Reward[3315991] = {}
	tNinjaPromotion_Reward[3315991]["RewardItem"] = {}
	tNinjaPromotion_Reward[3315991]["RewardItem"][1] = {}
	tNinjaPromotion_Reward[3315991]["RewardItem"][1]["Id"] = 181355
	tNinjaPromotion_Reward[3315991]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tNinjaPromotion_Reward[3315991]["DeleteItem"] = {}
	tNinjaPromotion_Reward[3315991]["DeleteItem"][1] = {}
	tNinjaPromotion_Reward[3315991]["DeleteItem"][1]["Id"] = 3315991
	tNinjaPromotion_Reward[3315991]["LogId"] = 12001946
	tNinjaPromotion_Reward[3315991]["RewardEffect"] = {}
	tNinjaPromotion_Reward[3315991]["RewardEffect"]["Effect"] = "angelwing"
	-- 3315992 Spartan'sPride(B)Pack
	tNinjaPromotion_Reward[3315992] = {}
	tNinjaPromotion_Reward[3315992]["RewardItem"] = {}
	tNinjaPromotion_Reward[3315992]["RewardItem"][1] = {}
	tNinjaPromotion_Reward[3315992]["RewardItem"][1]["Id"] = 184375
	tNinjaPromotion_Reward[3315992]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tNinjaPromotion_Reward[3315992]["DeleteItem"] = {}
	tNinjaPromotion_Reward[3315992]["DeleteItem"][1] = {}
	tNinjaPromotion_Reward[3315992]["DeleteItem"][1]["Id"] = 3315992
	tNinjaPromotion_Reward[3315992]["LogId"] = 12001946
	tNinjaPromotion_Reward[3315992]["RewardEffect"] = {}
	tNinjaPromotion_Reward[3315992]["RewardEffect"]["Effect"] = "angelwing"
	-- 3315993 CharmingSuit(B)Pack
	tNinjaPromotion_Reward[3315993] = {}
	tNinjaPromotion_Reward[3315993]["RewardItem"] = {}
	tNinjaPromotion_Reward[3315993]["RewardItem"][1] = {}
	tNinjaPromotion_Reward[3315993]["RewardItem"][1]["Id"] = 183485
	tNinjaPromotion_Reward[3315993]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tNinjaPromotion_Reward[3315993]["DeleteItem"] = {}
	tNinjaPromotion_Reward[3315993]["DeleteItem"][1] = {}
	tNinjaPromotion_Reward[3315993]["DeleteItem"][1]["Id"] = 3315993
	tNinjaPromotion_Reward[3315993]["LogId"] = 12001946
	tNinjaPromotion_Reward[3315993]["RewardEffect"] = {}
	tNinjaPromotion_Reward[3315993]["RewardEffect"]["Effect"] = "angelwing"
	-- 3315994 FatalAllure(B)Pack
	tNinjaPromotion_Reward[3315994] = {}
	tNinjaPromotion_Reward[3315994]["RewardItem"] = {}
	tNinjaPromotion_Reward[3315994]["RewardItem"][1] = {}
	tNinjaPromotion_Reward[3315994]["RewardItem"][1]["Id"] = 184305
	tNinjaPromotion_Reward[3315994]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tNinjaPromotion_Reward[3315994]["DeleteItem"] = {}
	tNinjaPromotion_Reward[3315994]["DeleteItem"][1] = {}
	tNinjaPromotion_Reward[3315994]["DeleteItem"][1]["Id"] = 3315994
	tNinjaPromotion_Reward[3315994]["LogId"] = 12001946
	tNinjaPromotion_Reward[3315994]["RewardEffect"] = {}
	tNinjaPromotion_Reward[3315994]["RewardEffect"]["Effect"] = "angelwing"
	-- 3315995 PartyDress(Lady)(B)Pack
	tNinjaPromotion_Reward[3315995] = {}
	tNinjaPromotion_Reward[3315995]["RewardItem"] = {}
	tNinjaPromotion_Reward[3315995]["RewardItem"][1] = {}
	tNinjaPromotion_Reward[3315995]["RewardItem"][1]["Id"] = 183365
	tNinjaPromotion_Reward[3315995]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tNinjaPromotion_Reward[3315995]["DeleteItem"] = {}
	tNinjaPromotion_Reward[3315995]["DeleteItem"][1] = {}
	tNinjaPromotion_Reward[3315995]["DeleteItem"][1]["Id"] = 3315995
	tNinjaPromotion_Reward[3315995]["LogId"] = 12001946
	tNinjaPromotion_Reward[3315995]["RewardEffect"] = {}
	tNinjaPromotion_Reward[3315995]["RewardEffect"]["Effect"] = "angelwing"
	-- 3315996 NobodySuit(B)Pack
	tNinjaPromotion_Reward[3315996] = {}
	tNinjaPromotion_Reward[3315996]["RewardItem"] = {}
	tNinjaPromotion_Reward[3315996]["RewardItem"][1] = {}
	tNinjaPromotion_Reward[3315996]["RewardItem"][1]["Id"] = 188345
	tNinjaPromotion_Reward[3315996]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tNinjaPromotion_Reward[3315996]["DeleteItem"] = {}
	tNinjaPromotion_Reward[3315996]["DeleteItem"][1] = {}
	tNinjaPromotion_Reward[3315996]["DeleteItem"][1]["Id"] = 3315996
	tNinjaPromotion_Reward[3315996]["LogId"] = 12001946
	tNinjaPromotion_Reward[3315996]["RewardEffect"] = {}
	tNinjaPromotion_Reward[3315996]["RewardEffect"]["Effect"] = "angelwing"


	tNinjaPromotion_Reward[3315997] = {}
	tNinjaPromotion_Reward[3315997]["RewardItem"] = {}
	tNinjaPromotion_Reward[3315997]["RewardItem"][1] = {}
	tNinjaPromotion_Reward[3315997]["RewardItem"][1]["Id"] = 188575
	tNinjaPromotion_Reward[3315997]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tNinjaPromotion_Reward[3315997]["LogId"] = 12001946
	tNinjaPromotion_Reward[3315997]["DeleteItem"] = {}
	tNinjaPromotion_Reward[3315997]["DeleteItem"][1] = {}
	tNinjaPromotion_Reward[3315997]["DeleteItem"][1]["Id"] = 3315997
	tNinjaPromotion_Reward[3315997]["RewardEffect"] = {}
	tNinjaPromotion_Reward[3315997]["RewardEffect"]["Effect"] = "angelwing"
	--战士神装外套特惠包
	tNinjaPromotion_Reward[3315998] = {}
	tNinjaPromotion_Reward[3315998]["RewardItem"] = {}
	tNinjaPromotion_Reward[3315998]["RewardItem"][1] = {}
	tNinjaPromotion_Reward[3315998]["RewardItem"][1]["Id"] = 194885
	tNinjaPromotion_Reward[3315998]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tNinjaPromotion_Reward[3315998]["DeleteItem"]= {}
	tNinjaPromotion_Reward[3315998]["DeleteItem"][1]= {}
	tNinjaPromotion_Reward[3315998]["DeleteItem"][1]["Id"]= 3315998
	tNinjaPromotion_Reward[3315998]["RewardEffect"] = {}
	tNinjaPromotion_Reward[3315998]["RewardEffect"]["Effect"] = "angelwing"
	tNinjaPromotion_Reward[3315998]["LogId"] = 12001946
	--勇士神装外套特惠包
	tNinjaPromotion_Reward[3315999] = {}
	tNinjaPromotion_Reward[3315999]["RewardItem"] = {}
	tNinjaPromotion_Reward[3315999]["RewardItem"][1] = {}
	tNinjaPromotion_Reward[3315999]["RewardItem"][1]["Id"] = 194895
	tNinjaPromotion_Reward[3315999]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tNinjaPromotion_Reward[3315999]["DeleteItem"]= {}
	tNinjaPromotion_Reward[3315999]["DeleteItem"][1]= {}
	tNinjaPromotion_Reward[3315999]["DeleteItem"][1]["Id"]= 3315999
	tNinjaPromotion_Reward[3315999]["RewardEffect"] = {}
	tNinjaPromotion_Reward[3315999]["RewardEffect"]["Effect"] = "angelwing"
	tNinjaPromotion_Reward[3315999]["LogId"] = 12001946
	--忍者神装外套特惠包
	tNinjaPromotion_Reward[3316000] = {}
	tNinjaPromotion_Reward[3316000]["RewardItem"] = {}
	tNinjaPromotion_Reward[3316000]["RewardItem"][1] = {}
	tNinjaPromotion_Reward[3316000]["RewardItem"][1]["Id"] = 194905
	tNinjaPromotion_Reward[3316000]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tNinjaPromotion_Reward[3316000]["DeleteItem"]= {}
	tNinjaPromotion_Reward[3316000]["DeleteItem"][1]= {}
	tNinjaPromotion_Reward[3316000]["DeleteItem"][1]["Id"]= 3316000
	tNinjaPromotion_Reward[3316000]["RewardEffect"] = {}
	tNinjaPromotion_Reward[3316000]["RewardEffect"]["Effect"] = "angelwing"
	tNinjaPromotion_Reward[3316000]["LogId"] = 12001946
	--武僧神装外套特惠包
	tNinjaPromotion_Reward[3316001] = {}
	tNinjaPromotion_Reward[3316001]["RewardItem"] = {}
	tNinjaPromotion_Reward[3316001]["RewardItem"][1] = {}
	tNinjaPromotion_Reward[3316001]["RewardItem"][1]["Id"] = 194915
	tNinjaPromotion_Reward[3316001]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tNinjaPromotion_Reward[3316001]["DeleteItem"]= {}
	tNinjaPromotion_Reward[3316001]["DeleteItem"][1]= {}
	tNinjaPromotion_Reward[3316001]["DeleteItem"][1]["Id"]= 3316001
	tNinjaPromotion_Reward[3316001]["RewardEffect"] = {}
	tNinjaPromotion_Reward[3316001]["RewardEffect"]["Effect"] = "angelwing"
	tNinjaPromotion_Reward[3316001]["LogId"] = 12001946
	--海盗神装外套特惠包
	tNinjaPromotion_Reward[3316002] = {}
	tNinjaPromotion_Reward[3316002]["RewardItem"] = {}
	tNinjaPromotion_Reward[3316002]["RewardItem"][1] = {}
	tNinjaPromotion_Reward[3316002]["RewardItem"][1]["Id"] = 194925
	tNinjaPromotion_Reward[3316002]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tNinjaPromotion_Reward[3316002]["DeleteItem"]= {}
	tNinjaPromotion_Reward[3316002]["DeleteItem"][1]= {}
	tNinjaPromotion_Reward[3316002]["DeleteItem"][1]["Id"]= 3316002
	tNinjaPromotion_Reward[3316002]["RewardEffect"] = {}
	tNinjaPromotion_Reward[3316002]["RewardEffect"]["Effect"] = "angelwing"
	tNinjaPromotion_Reward[3316002]["LogId"] = 12001946
	--弓手神装外套特惠包
	tNinjaPromotion_Reward[3316003] = {}
	tNinjaPromotion_Reward[3316003]["RewardItem"] = {}
	tNinjaPromotion_Reward[3316003]["RewardItem"][1] = {}
	tNinjaPromotion_Reward[3316003]["RewardItem"][1]["Id"] = 194935
	tNinjaPromotion_Reward[3316003]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tNinjaPromotion_Reward[3316003]["DeleteItem"]= {}
	tNinjaPromotion_Reward[3316003]["DeleteItem"][1]= {}
	tNinjaPromotion_Reward[3316003]["DeleteItem"][1]["Id"]= 3316003
	tNinjaPromotion_Reward[3316003]["RewardEffect"] = {}
	tNinjaPromotion_Reward[3316003]["RewardEffect"]["Effect"] = "angelwing"
	tNinjaPromotion_Reward[3316003]["LogId"] = 12001946
	--道士神装外套特惠包
	tNinjaPromotion_Reward[3316004] = {}
	tNinjaPromotion_Reward[3316004]["RewardItem"] = {}
	tNinjaPromotion_Reward[3316004]["RewardItem"][1] = {}
	tNinjaPromotion_Reward[3316004]["RewardItem"][1]["Id"] = 194945
	tNinjaPromotion_Reward[3316004]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tNinjaPromotion_Reward[3316004]["DeleteItem"]= {}
	tNinjaPromotion_Reward[3316004]["DeleteItem"][1]= {}
	tNinjaPromotion_Reward[3316004]["DeleteItem"][1]["Id"]= 3316004
	tNinjaPromotion_Reward[3316004]["RewardEffect"] = {}
	tNinjaPromotion_Reward[3316004]["RewardEffect"]["Effect"] = "angelwing"
	tNinjaPromotion_Reward[3316004]["LogId"] = 12001946
	

	--赤霄火云特惠包
	tNinjaPromotion_Reward[3316005] = {}
	tNinjaPromotion_Reward[3316005]["RewardItem"] = {}
	tNinjaPromotion_Reward[3316005]["RewardItem"][1] = {}
	tNinjaPromotion_Reward[3316005]["RewardItem"][1]["Id"] = 200613
	tNinjaPromotion_Reward[3316005]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tNinjaPromotion_Reward[3316005]["DeleteItem"]= {}
	tNinjaPromotion_Reward[3316005]["DeleteItem"][1]= {}
	tNinjaPromotion_Reward[3316005]["DeleteItem"][1]["Id"]= 3316005
	tNinjaPromotion_Reward[3316005]["RewardEffect"] = {}
	tNinjaPromotion_Reward[3316005]["RewardEffect"]["Effect"] = "angelwing"
	tNinjaPromotion_Reward[3316005]["LogId"] = 12001946
	--蓝海苍云特惠包
	tNinjaPromotion_Reward[3316006] = {}
	tNinjaPromotion_Reward[3316006]["RewardItem"] = {}
	tNinjaPromotion_Reward[3316006]["RewardItem"][1] = {}
	tNinjaPromotion_Reward[3316006]["RewardItem"][1]["Id"] = 200614
	tNinjaPromotion_Reward[3316006]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tNinjaPromotion_Reward[3316006]["DeleteItem"]= {}
	tNinjaPromotion_Reward[3316006]["DeleteItem"][1]= {}
	tNinjaPromotion_Reward[3316006]["DeleteItem"][1]["Id"]= 3316006
	tNinjaPromotion_Reward[3316006]["RewardEffect"] = {}
	tNinjaPromotion_Reward[3316006]["RewardEffect"]["Effect"] = "angelwing"
	tNinjaPromotion_Reward[3316006]["LogId"] = 12001946
	--璀璨金莲特惠包
	tNinjaPromotion_Reward[3316007] = {}
	tNinjaPromotion_Reward[3316007]["RewardItem"] = {}
	tNinjaPromotion_Reward[3316007]["RewardItem"][1] = {}
	tNinjaPromotion_Reward[3316007]["RewardItem"][1]["Id"] = 200573
	tNinjaPromotion_Reward[3316007]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tNinjaPromotion_Reward[3316007]["DeleteItem"]= {}
	tNinjaPromotion_Reward[3316007]["DeleteItem"][1]= {}
	tNinjaPromotion_Reward[3316007]["DeleteItem"][1]["Id"]= 3316007
	tNinjaPromotion_Reward[3316007]["RewardEffect"] = {}
	tNinjaPromotion_Reward[3316007]["RewardEffect"]["Effect"] = "angelwing"
	tNinjaPromotion_Reward[3316007]["LogId"] = 12001946
	

	-- ===删除: 3316018,1
	-- ===索引: tNinjaPromotion_Reward[3316018]
	tNinjaPromotion_Reward[3316018] = {}
	tNinjaPromotion_Reward[3316018]["LogId"] = 12001946
	tNinjaPromotion_Reward[3316018]["DeleteItem"] = {}
	tNinjaPromotion_Reward[3316018]["DeleteItem"][1] = {}
	tNinjaPromotion_Reward[3316018]["DeleteItem"][1]["Id"] = 3316018 -- 【库】GalaxyDream(Grace)(B)Bag[属性:9]
	tNinjaPromotion_Reward[3316018]["RewardItem"] = {}
	tNinjaPromotion_Reward[3316018]["RewardItem"][1] = {}
	tNinjaPromotion_Reward[3316018]["RewardItem"][1]["Id"] = 195905 -- GalaxyDream(Grace)[195905][属性:0][叠加:0][金币:0], 【表格】GalaxyDream（Grace）
	tNinjaPromotion_Reward[3316018]["RewardItem"][1]["Attr"] = "0 1 3 86400 1 0 0 1" -- 60天时效(激活)的1%神佑GalaxyDream(Grace)（赠）*1
	tNinjaPromotion_Reward[3316018]["RewardEffect"] = {}
	tNinjaPromotion_Reward[3316018]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaPromotion_Reward[3316018]["RewardEffect"]["Effect"] = "angelwing"


	tNinjaPromotion_Reward[3316019] = {}
	-- ===删除: 3316019,1
	-- ===索引: tNinjaPromotion_Reward[3316019]
	tNinjaPromotion_Reward[3316019]["LogId"] = 12001946
	tNinjaPromotion_Reward[3316019]["DeleteItem"] = {}
	tNinjaPromotion_Reward[3316019]["DeleteItem"][1] = {}
	tNinjaPromotion_Reward[3316019]["DeleteItem"][1]["Id"] = 3316019 -- 【库】PureLotus(B)Bag[属性:9]
	tNinjaPromotion_Reward[3316019]["RewardItem"] = {}
	tNinjaPromotion_Reward[3316019]["RewardItem"][1] = {}
	tNinjaPromotion_Reward[3316019]["RewardItem"][1]["Id"] = 200572 -- PureLotus[200572][属性:0][叠加:0][金币:0], 【表格】骑宠外套PureLotus
	tNinjaPromotion_Reward[3316019]["RewardItem"][1]["Attr"] = "0 1 3 86400 1 0 0 1" -- 60天时效(激活)的1%神佑PureLotus（赠）*1
	tNinjaPromotion_Reward[3316019]["RewardEffect"] = {}
	tNinjaPromotion_Reward[3316019]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaPromotion_Reward[3316019]["RewardEffect"]["Effect"] = "angelwing"


	tNinjaPromotion_Reward[3316020] = {}
	-- ===删除: 3316020,1
	-- ===索引: tNinjaPromotion_Reward[3316020]
	tNinjaPromotion_Reward[3316020]["LogId"] = 12001946
	tNinjaPromotion_Reward[3316020]["DeleteItem"] = {}
	tNinjaPromotion_Reward[3316020]["DeleteItem"][1] = {}
	tNinjaPromotion_Reward[3316020]["DeleteItem"][1]["Id"] = 3316020 -- 【库】CrystalLove(Star)(B)Bag[属性:9]
	tNinjaPromotion_Reward[3316020]["RewardItem"] = {}
	tNinjaPromotion_Reward[3316020]["RewardItem"][1] = {}
	tNinjaPromotion_Reward[3316020]["RewardItem"][1]["Id"] = 195545 -- CrystalLove(Star)[195545][属性:0][叠加:0][金币:0], 【表格】CrystalLove（Star）
	tNinjaPromotion_Reward[3316020]["RewardItem"][1]["Attr"] = "0 1 3 144000 1 0 0 1" -- 100天时效(激活)的1%神佑CrystalLove(Star)（赠）*1
	tNinjaPromotion_Reward[3316020]["RewardEffect"] = {}
	tNinjaPromotion_Reward[3316020]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaPromotion_Reward[3316020]["RewardEffect"]["Effect"] = "angelwing"


	tNinjaPromotion_Reward[3316021] = {}
	-- ===删除: 3316021,1
	-- ===索引: tNinjaPromotion_Reward[3316021]
	tNinjaPromotion_Reward[3316021]["LogId"] = 12001946
	tNinjaPromotion_Reward[3316021]["DeleteItem"] = {}
	tNinjaPromotion_Reward[3316021]["DeleteItem"][1] = {}
	tNinjaPromotion_Reward[3316021]["DeleteItem"][1]["Id"] = 3316021 -- 【库】GloryofRaptors(King)(B)Bag[属性:9]
	tNinjaPromotion_Reward[3316021]["RewardItem"] = {}
	tNinjaPromotion_Reward[3316021]["RewardItem"][1] = {}
	tNinjaPromotion_Reward[3316021]["RewardItem"][1]["Id"] = 195755 -- GloryofRaptors(King)[195755][属性:0][叠加:0][金币:0], 【表格】GloryofRaptors（King）
	tNinjaPromotion_Reward[3316021]["RewardItem"][1]["Attr"] = "0 1 3 144000 1 0 0 1" -- 100天时效(激活)的1%神佑GloryofRaptors(King)（赠）*1
	tNinjaPromotion_Reward[3316021]["RewardEffect"] = {}
	tNinjaPromotion_Reward[3316021]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaPromotion_Reward[3316021]["RewardEffect"]["Effect"] = "angelwing"


	tNinjaPromotion_Reward[3316022] = {}
	-- ===删除: 3316022,1
	-- ===索引: tNinjaPromotion_Reward[3316022]
	tNinjaPromotion_Reward[3316022]["LogId"] = 12001946
	tNinjaPromotion_Reward[3316022]["DeleteItem"] = {}
	tNinjaPromotion_Reward[3316022]["DeleteItem"][1] = {}
	tNinjaPromotion_Reward[3316022]["DeleteItem"][1]["Id"] = 3316022 -- 【库】SolarKylin(B)Bag[属性:9]
	tNinjaPromotion_Reward[3316022]["RewardItem"] = {}
	tNinjaPromotion_Reward[3316022]["RewardItem"][1] = {}
	tNinjaPromotion_Reward[3316022]["RewardItem"][1]["Id"] = 200655 -- SolarKylin[200655][属性:0][叠加:0][金币:0], 【表格】骑宠外套SolarKylin
	tNinjaPromotion_Reward[3316022]["RewardItem"][1]["Attr"] = "0 1 3 115200 1 0 0 1" -- 80天时效(激活)的1%神佑SolarKylin（赠）*1
	tNinjaPromotion_Reward[3316022]["RewardEffect"] = {}
	tNinjaPromotion_Reward[3316022]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaPromotion_Reward[3316022]["RewardEffect"]["Effect"] = "angelwing"


	tNinjaPromotion_Reward[3316023] = {}
	-- ===删除: 3316023,1
	-- ===索引: tNinjaPromotion_Reward[3316023]
	tNinjaPromotion_Reward[3316023]["LogId"] = 12001946
	tNinjaPromotion_Reward[3316023]["DeleteItem"] = {}
	tNinjaPromotion_Reward[3316023]["DeleteItem"][1] = {}
	tNinjaPromotion_Reward[3316023]["DeleteItem"][1]["Id"] = 3316023 -- 【库】ButterflyRose(B)Bag[属性:9]
	tNinjaPromotion_Reward[3316023]["RewardItem"] = {}
	tNinjaPromotion_Reward[3316023]["RewardItem"][1] = {}
	tNinjaPromotion_Reward[3316023]["RewardItem"][1]["Id"] = 193625 -- ButterflyRose[193625][属性:0][叠加:0][金币:0], 【表格】ButterflyRose
	tNinjaPromotion_Reward[3316023]["RewardItem"][1]["Attr"] = "0 1 3 216000 1 0 0 1" -- 150天时效(激活)的1%神佑ButterflyRose（赠）*1
	tNinjaPromotion_Reward[3316023]["RewardEffect"] = {}
	tNinjaPromotion_Reward[3316023]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaPromotion_Reward[3316023]["RewardEffect"]["Effect"] = "angelwing"


	tNinjaPromotion_Reward[3316024] = {}
	-- ===删除: 3316024,1
	-- ===索引: tNinjaPromotion_Reward[3316024]
	tNinjaPromotion_Reward[3316024]["LogId"] = 12001946
	tNinjaPromotion_Reward[3316024]["DeleteItem"] = {}
	tNinjaPromotion_Reward[3316024]["DeleteItem"][1] = {}
	tNinjaPromotion_Reward[3316024]["DeleteItem"][1]["Id"] = 3316024 -- 【库】ImperialDragonArmor(B)Bag[属性:9]
	tNinjaPromotion_Reward[3316024]["RewardItem"] = {}
	tNinjaPromotion_Reward[3316024]["RewardItem"][1] = {}
	tNinjaPromotion_Reward[3316024]["RewardItem"][1]["Id"] = 195425 -- ImperialDragonArmor[195425][属性:0][叠加:0][金币:0], 【表格】ImperialDragonArmor
	tNinjaPromotion_Reward[3316024]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑ImperialDragonArmor（赠）*1
	tNinjaPromotion_Reward[3316024]["RewardEffect"] = {}
	tNinjaPromotion_Reward[3316024]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaPromotion_Reward[3316024]["RewardEffect"]["Effect"] = "angelwing"


	tNinjaPromotion_Reward[3316025] = {}
	-- ===删除: 3316025,1
	-- ===索引: tNinjaPromotion_Reward[3316025]
	tNinjaPromotion_Reward[3316025]["LogId"] = 12001946
	tNinjaPromotion_Reward[3316025]["DeleteItem"] = {}
	tNinjaPromotion_Reward[3316025]["DeleteItem"][1] = {}
	tNinjaPromotion_Reward[3316025]["DeleteItem"][1]["Id"] = 3316025 -- 【库】CrystalLove(Star)(B)Bag[属性:9]
	tNinjaPromotion_Reward[3316025]["RewardItem"] = {}
	tNinjaPromotion_Reward[3316025]["RewardItem"][1] = {}
	tNinjaPromotion_Reward[3316025]["RewardItem"][1]["Id"] = 195545 -- CrystalLove(Star)[195545][属性:0][叠加:0][金币:0], 【表格】CrystalLove（Star）
	tNinjaPromotion_Reward[3316025]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑CrystalLove(Star)（赠）*1
	tNinjaPromotion_Reward[3316025]["RewardEffect"] = {}
	tNinjaPromotion_Reward[3316025]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaPromotion_Reward[3316025]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 9000天石赠礼包
	tNinjaPromotion_Reward[3316071] = {}
	tNinjaPromotion_Reward[3316071]["Log"] = "0,0,3320241,1,12001946,2,3,80000"
	tNinjaPromotion_Reward[3316071]["EmoneyLog"] = "1000	01765	0	0	80000	"
	tNinjaPromotion_Reward[3316071]["DeleteItem"] = {}
	tNinjaPromotion_Reward[3316071]["DeleteItem"][1] = {}
	tNinjaPromotion_Reward[3316071]["DeleteItem"][1]["Id"] = 3316071
	tNinjaPromotion_Reward[3316071]["RewardEMoneyMono"] = {}
	tNinjaPromotion_Reward[3316071]["RewardEMoneyMono"]["Value"] = 9000
	tNinjaPromotion_Reward[3316071]["RewardEffect"] = {}
	tNinjaPromotion_Reward[3316071]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 90000天石赠礼包
	tNinjaPromotion_Reward[3316072] = {}
	tNinjaPromotion_Reward[3316072]["Log"] = "0,0,3320241,1,12001946,2,3,80000"
	tNinjaPromotion_Reward[3316072]["EmoneyLog"] = "1000	01766	0	0	80000	"
	tNinjaPromotion_Reward[3316072]["DeleteItem"] = {}
	tNinjaPromotion_Reward[3316072]["DeleteItem"][1] = {}
	tNinjaPromotion_Reward[3316072]["DeleteItem"][1]["Id"] = 3316072
	tNinjaPromotion_Reward[3316072]["RewardEMoneyMono"] = {}
	tNinjaPromotion_Reward[3316072]["RewardEMoneyMono"]["Value"] = 90000
	tNinjaPromotion_Reward[3316072]["RewardEffect"] = {}
	tNinjaPromotion_Reward[3316072]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 赠品消耗品促销
	tNinjaPromotion_Reward[3] = {}
	tNinjaPromotion_Reward[3]["Log"] = "%d,0,0,0,12001946,2,%d,1"
	tNinjaPromotion_Reward[3]["EmoneyLog"] = ""
	tNinjaPromotion_Reward[3]["RewardNoNeedTip"] = 1
	
	tNinjaPromotion_Reward[3]["RewardItem"] = {}				--物品属性
	tNinjaPromotion_Reward[3]["RewardItem"][1] = {}				--物品属性
	tNinjaPromotion_Reward[3]["RewardItem"][1]["Id"] = 1088000		--物品Id
	tNinjaPromotion_Reward[3]["RewardItem"][1]["Attr"] = "0 1 3"		--物品属性
	tNinjaPromotion_Reward[3]["RewardEffect"] = {}
	tNinjaPromotion_Reward[3]["RewardEffect"]["Effect"] = "angelwing"
	
	
	local tNinjaPromotion_Change_Reward = {}
	-- 5000天石
	tNinjaPromotion_Change_Reward[3311608] = {}
	tNinjaPromotion_Change_Reward[3311608][5] = {}
	tNinjaPromotion_Change_Reward[3311608][5]["Log"] = "1000,0,0,0,12001946,2,3311608,1[1]"
	tNinjaPromotion_Change_Reward[3311608][5]["EmoneyLog"] = "1000	00090	1000	1000	1	"
	tNinjaPromotion_Change_Reward[3311608][5]["RewardItem"] = {}				--物品属性
	tNinjaPromotion_Change_Reward[3311608][5]["RewardItem"][1] = {}				--物品属性
	tNinjaPromotion_Change_Reward[3311608][5]["RewardItem"][1]["Id"] = 3311608		--物品Id
	tNinjaPromotion_Change_Reward[3311608][5]["RewardItem"][1]["Attr"] = "0 1"		--物品属性
	tNinjaPromotion_Change_Reward[3311608][5]["RewardEffect"] = {}
	tNinjaPromotion_Change_Reward[3311608][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 6000天石
	tNinjaPromotion_Change_Reward[3311608][6] = {}
	tNinjaPromotion_Change_Reward[3311608][6]["Log"] = "1000,0,0,0,12001946,2,3320236,1[1]"
	tNinjaPromotion_Change_Reward[3311608][6]["EmoneyLog"] = "1000	00090	1000	1000	1	"
	tNinjaPromotion_Change_Reward[3311608][6]["RewardItem"] = {}				--物品属性
	tNinjaPromotion_Change_Reward[3311608][6]["RewardItem"][1] = {}				--物品属性
	tNinjaPromotion_Change_Reward[3311608][6]["RewardItem"][1]["Id"] = 3320236		--物品Id
	tNinjaPromotion_Change_Reward[3311608][6]["RewardItem"][1]["Attr"] = "0 1"		--物品属性
	tNinjaPromotion_Change_Reward[3311608][6]["RewardEffect"] = {}
	tNinjaPromotion_Change_Reward[3311608][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 7000天石
	tNinjaPromotion_Change_Reward[3311608][7] = {}
	tNinjaPromotion_Change_Reward[3311608][7]["Log"] = "1000,0,0,0,12001946,2,3320238,1[1]"
	tNinjaPromotion_Change_Reward[3311608][7]["EmoneyLog"] = "1000	00090	1000	1000	1	"
	tNinjaPromotion_Change_Reward[3311608][7]["RewardItem"] = {}				--物品属性
	tNinjaPromotion_Change_Reward[3311608][7]["RewardItem"][1] = {}				--物品属性
	tNinjaPromotion_Change_Reward[3311608][7]["RewardItem"][1]["Id"] = 3320238		--物品Id
	tNinjaPromotion_Change_Reward[3311608][7]["RewardItem"][1]["Attr"] = "0 1"		--物品属性
	tNinjaPromotion_Change_Reward[3311608][7]["RewardEffect"] = {}
	tNinjaPromotion_Change_Reward[3311608][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 8000天石
	tNinjaPromotion_Change_Reward[3311608][8] = {}
	tNinjaPromotion_Change_Reward[3311608][8]["Log"] = "1000,0,0,0,12001946,2,3320240,1[1]"
	tNinjaPromotion_Change_Reward[3311608][8]["EmoneyLog"] = "1000	00090	1000	1000	1	"
	tNinjaPromotion_Change_Reward[3311608][8]["RewardItem"] = {}				--物品属性
	tNinjaPromotion_Change_Reward[3311608][8]["RewardItem"][1] = {}				--物品属性
	tNinjaPromotion_Change_Reward[3311608][8]["RewardItem"][1]["Id"] = 3320240		--物品Id
	tNinjaPromotion_Change_Reward[3311608][8]["RewardItem"][1]["Attr"] = "0 1"		--物品属性
	tNinjaPromotion_Change_Reward[3311608][8]["RewardEffect"] = {}
	tNinjaPromotion_Change_Reward[3311608][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 9,000 天石
	tNinjaPromotion_Change_Reward[3311608][9] = {}
	tNinjaPromotion_Change_Reward[3311608][9]["Log"] = "1000,0,0,0,12001946,2,3316071,1[1]"
	tNinjaPromotion_Change_Reward[3311608][9]["EmoneyLog"] = "1000	00090	1000	1000	1	"
	tNinjaPromotion_Change_Reward[3311608][9]["RewardItem"] = {}				--物品属性
	tNinjaPromotion_Change_Reward[3311608][9]["RewardItem"][1] = {}				--物品属性
	tNinjaPromotion_Change_Reward[3311608][9]["RewardItem"][1]["Id"] = 3316071		--物品Id
	tNinjaPromotion_Change_Reward[3311608][9]["RewardItem"][1]["Attr"] = "0 1"		--物品属性
	tNinjaPromotion_Change_Reward[3311608][9]["RewardEffect"] = {}
	tNinjaPromotion_Change_Reward[3311608][9]["RewardEffect"]["Effect"] = "angelwing"

	
	-- 50000天石
	tNinjaPromotion_Change_Reward[3311609] = {}
	tNinjaPromotion_Change_Reward[3311609][5] = {}
	tNinjaPromotion_Change_Reward[3311609][5]["Log"] = "1000,0,0,0,12001946,2,3311609,1[1]"
	tNinjaPromotion_Change_Reward[3311609][5]["EmoneyLog"] = "1000	00090	1000	1000	1	"
	tNinjaPromotion_Change_Reward[3311609][5]["RewardItem"] = {}				--物品属性
	tNinjaPromotion_Change_Reward[3311609][5]["RewardItem"][1] = {}				--物品属性
	tNinjaPromotion_Change_Reward[3311609][5]["RewardItem"][1]["Id"] = 3311609		--物品Id
	tNinjaPromotion_Change_Reward[3311609][5]["RewardItem"][1]["Attr"] = "0 1"		--物品属性
	tNinjaPromotion_Change_Reward[3311609][5]["RewardEffect"] = {}
	tNinjaPromotion_Change_Reward[3311609][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 60000天石
	tNinjaPromotion_Change_Reward[3311609][6] = {}
	tNinjaPromotion_Change_Reward[3311609][6]["Log"] = "1000,0,0,0,12001946,2,3320237,1[1]"
	tNinjaPromotion_Change_Reward[3311609][6]["EmoneyLog"] = "1000	00090	1000	1000	1	"
	tNinjaPromotion_Change_Reward[3311609][6]["RewardItem"] = {}				--物品属性
	tNinjaPromotion_Change_Reward[3311609][6]["RewardItem"][1] = {}				--物品属性
	tNinjaPromotion_Change_Reward[3311609][6]["RewardItem"][1]["Id"] = 3320237		--物品Id
	tNinjaPromotion_Change_Reward[3311609][6]["RewardItem"][1]["Attr"] = "0 1"		--物品属性
	tNinjaPromotion_Change_Reward[3311609][6]["RewardEffect"] = {}
	tNinjaPromotion_Change_Reward[3311609][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 70000天石
	tNinjaPromotion_Change_Reward[3311609][7] = {}
	tNinjaPromotion_Change_Reward[3311609][7]["Log"] = "1000,0,0,0,12001946,2,3320239,1[1]"
	tNinjaPromotion_Change_Reward[3311609][7]["EmoneyLog"] = "1000	00090	1000	1000	1	"
	tNinjaPromotion_Change_Reward[3311609][7]["RewardItem"] = {}				--物品属性
	tNinjaPromotion_Change_Reward[3311609][7]["RewardItem"][1] = {}				--物品属性
	tNinjaPromotion_Change_Reward[3311609][7]["RewardItem"][1]["Id"] = 3320239		--物品Id
	tNinjaPromotion_Change_Reward[3311609][7]["RewardItem"][1]["Attr"] = "0 1"		--物品属性
	tNinjaPromotion_Change_Reward[3311609][7]["RewardEffect"] = {}
	tNinjaPromotion_Change_Reward[3311609][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 80000天石
	tNinjaPromotion_Change_Reward[3311609][8] = {}
	tNinjaPromotion_Change_Reward[3311609][8]["Log"] = "1000,0,0,0,12001946,2,3320241,1[1]"
	tNinjaPromotion_Change_Reward[3311609][8]["EmoneyLog"] = "1000	00090	1000	1000	1	"
	tNinjaPromotion_Change_Reward[3311609][8]["RewardItem"] = {}				--物品属性
	tNinjaPromotion_Change_Reward[3311609][8]["RewardItem"][1] = {}				--物品属性
	tNinjaPromotion_Change_Reward[3311609][8]["RewardItem"][1]["Id"] = 3320241		--物品Id
	tNinjaPromotion_Change_Reward[3311609][8]["RewardItem"][1]["Attr"] = "0 1"		--物品属性
	tNinjaPromotion_Change_Reward[3311609][8]["RewardEffect"] = {}
	tNinjaPromotion_Change_Reward[3311609][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 9,0000 天石
	tNinjaPromotion_Change_Reward[3311609][9] = {}
	tNinjaPromotion_Change_Reward[3311609][9]["Log"] = "1000,0,0,0,12001946,2,3316071,1[1]"
	tNinjaPromotion_Change_Reward[3311609][9]["EmoneyLog"] = "1000	00090	1000	1000	1	"
	tNinjaPromotion_Change_Reward[3311609][9]["RewardItem"] = {}				--物品属性
	tNinjaPromotion_Change_Reward[3311609][9]["RewardItem"][1] = {}				--物品属性
	tNinjaPromotion_Change_Reward[3311609][9]["RewardItem"][1]["Id"] = 3316072		--物品Id
	tNinjaPromotion_Change_Reward[3311609][9]["RewardItem"][1]["Attr"] = "0 1"		--物品属性
	tNinjaPromotion_Change_Reward[3311609][9]["RewardEffect"] = {}
	tNinjaPromotion_Change_Reward[3311609][9]["RewardEffect"]["Effect"] = "angelwing"

	
	

	

---------------------------------------------------------------------------------
function NinjaPromotion_ActivityTimeChk()
	return Sys_ChkFullTime(tActivityTime["NinjaPromotion"]["ActivityTime"])
end
-- 购买物品
function NinjaPromotion_BuyItem(nNpcId,nItemId)
	if not NinjaPromotion_ActivityTimeChk() then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- 次级对白
	local nEMoney = 0
	nEMoney = tNinjaPromotion_EMomeyMono[nItemId]["New"]
	local sText = tNinjaPromotion_Text[nNpcId]["Text211"]
	local sItemName = tNinjaPromotion_Text[nNpcId]["ItemName"][nItemId]
	local sShowText = string.format(sText,sItemName,nEMoney)
	Sys_DialogText(sShowText)
	Sys_DialogText(tNinjaPromotion_Text[nNpcId]["Text212"])
	Sys_DialogText(tNinjaPromotion_Text[nNpcId]["Text213"])
	Sys_DialogOptEdit(tNinjaPromotion_Text[nNpcId]["Input"],tNinjaPromotion_Count["Length"],"NinjaPromotion_SureToSend</N>"..nNpcId.."</N>"..nItemId)
	Sys_DialogFace(nNpcId)
	Sys_DialogEnd()
end

-- 输入框
function NinjaPromotion_SureToSend(nNpcId,nItemId)
	if not NinjaPromotion_ActivityTimeChk() then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- 给奖励
	local nNumber = tonumber(Get_SysAcceptStr())
	if nNumber == nil or type(nNumber) ~= "number" or nNumber%1 ~= 0 or nNumber <= 0 or nNumber > 500 then
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end
	
	if not NinjaPromotion_BuyItemChk(nNpcId,nItemId,nNumber) then
		return
	end
	
	local nNeedEMoney = tNinjaPromotion_EMomeyMono[nItemId]["New"]*nNumber

	
	-- 二次确认
	local sText = tNinjaPromotion_Text[nNpcId]["Text311"]
	local sItemName = tNinjaPromotion_Text[nNpcId]["ItemName"][nItemId]
	tNpcGossip[nNpcId]["Text311"] = string.format(sText,nNeedEMoney,nNumber,sItemName)
	local sOption = tNinjaPromotion_Text[nNpcId]["Option12"]
	tNpcGossip[nNpcId]["Option12"] = string.format(sOption,nNeedEMoney)
	tNpcGossip[nNpcId]["OptionFunc12"] = "NinjaPromotion_SureBuy</N>26258</N>"..nItemId.."</N>"..nNumber
	
	LinkNpcGossipFunc_New(nNpcId,"3-1")
end

-- 确认购买物品
function NinjaPromotion_SureBuy(nNpcId,nItemId,nNumber)
	if not NinjaPromotion_ActivityTimeChk() then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end

	-- 各种条件判断
	if not NinjaPromotion_BuyItemChk(nNpcId,nItemId,nNumber) then
		return
	end
	local nSorMoney =  tNinjaPromotion_EMomeyMono[nItemId]["New"]

	local nEMoney = nSorMoney*nNumber
	if not User_AddEMoneyMono(-nEMoney) then
	-- if not User_AddEMoney(-nEMoney) then	
		return
	end

	local nUserId = Get_UserId()

	
	local nItemEvent = tNinjaPromotion_Stc[nItemId]["EventType"]
	local nItemType = tNinjaPromotion_Stc[nItemId]["DataType"]
	

	
	Task_AddStatistic(nItemEvent,nItemType,nNumber,1,nUserId)
	
	-- 给奖励
	tNinjaPromotion_Reward[3]["RewardData"] = nEMoney
	local sLog = tNinjaPromotion_Log["ConsumeMono"]
	tNinjaPromotion_Reward[3]["Log"] = string.format(sLog,nEMoney,nItemId,nNumber)
	local sEMoneyLog = tNinjaPromotion_Log["ConsumeEMoney"]
	local nLogIndex = tNinjaPromotion_LogIndex[nItemId]
	tNinjaPromotion_Reward[3]["EmoneyLog"] = string.format(sEMoneyLog,nLogIndex,0,0,nEMoney)
	local sAttr = " "
	if nItemId == tNinjaPromotion_SpecialItem[3306562] or nItemId == tNinjaPromotion_SpecialItem[3306563] or nItemId == tNinjaPromotion_SpecialItem[3009001] or nItemId == tNinjaPromotion_SpecialItem[3308868] then
		sAttr = string.format(tNinjaPromotion_RewardAttr[nItemId],nNumber)
	else
		sAttr = "0 "..nNumber.." 3"
	end
	tNinjaPromotion_Reward[3]["RewardItem"][1]["Id"] = nItemId
	tNinjaPromotion_Reward[3]["RewardItem"][1]["Attr"] = sAttr
	
	RewardTemplate_UseItem(tNinjaPromotion_Reward[3]) 
	-- 提示
	local sRewardText = tNinjaPromotion_Text[nNpcId]["Reward"]
	User_TalkChannel2005(string.format(sRewardText,nEMoney,nNumber,tNinjaPromotion_Text[nNpcId]["ItemName"][nItemId]))
end
-- 购买物品检测
function NinjaPromotion_BuyItemChk(nNpcId,nItemId,nNumber)
	-- 已超过可换购额度
	local nItemEvent = tNinjaPromotion_Stc[nItemId]["EventType"]
	local nItemType = tNinjaPromotion_Stc[nItemId]["DataType"]
	local nItemLimit = tNinjaPromotion_Stc[nItemId]["Limit"]

	
	local nItemData = Get_UserStatisticValue(nItemEvent,nItemType)
	local nEMoney = tNinjaPromotion_EMomeyMono[nItemId]["New"]*nNumber
	local sItemName = tNinjaPromotion_Text[nNpcId]["ItemName"][nItemId]
	--if nData+nEMoney > nLimit or nItemData + nNumber > nItemLimit then
	if nItemData + nNumber > nItemLimit then
		local sText = tNinjaPromotion_Text[nNpcId]["Text241"]
		tNpcGossip[nNpcId]["Text241"] = string.format(sText,sItemName)
		LinkNpcGossipFunc_New(nNpcId,"2-4")
		return false
	end

	-- 天石不足
	local nUserEMoney = Get_UserMonoEMoney()
	-- local nUserEMoney = Get_UserEMoney()

	if nUserEMoney < nEMoney then
		local sText = tNinjaPromotion_Text[nNpcId]["Text231"]
		tNpcGossip[nNpcId]["Text231"] = string.format(sText,sItemName)
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return false
	end
	
	--这里711188物品上限是10个故不做区分处理
	if nItemId == tNinjaPromotion_SpecialItem[4050001] or nItemId == tNinjaPromotion_SpecialItem[3306600] or nItemId == tNinjaPromotion_SpecialItem[3306562] 
	or nItemId == tNinjaPromotion_SpecialItem[3306563] or nItemId == tNinjaPromotion_SpecialItem[3306370] or nItemId == tNinjaPromotion_SpecialItem[722736]
	or nItemId == tNinjaPromotion_SpecialItem[722732] or nItemId == tNinjaPromotion_SpecialItem[723030] 
	or nItemId == tNinjaPromotion_SpecialItem[1080001] then
		nNumber = 1
	end
	
	if nItemId == tNinjaPromotion_SpecialItem[711188] then
		nNumber = math.ceil(nNumber/10)
	end

	local nSpace = nNumber
	if not User_CheckLeftSpace(nSpace) then
		local sNoSpace = tNinjaPromotion_Text[nNpcId]["NoSpace"]
		Sys_MsgBox(string.format(sNoSpace,nSpace))
		return false
	end
	
	return true
end
function NinjaPromotion_GetRoulette()
	local nNinjaPromotion_UserId = Get_UserId()
	local nNinjaPromotion_NpcId = Get_NpcId()
	local nNinjaPromotion_ItemTypeId = tNinjaPromotion_Count["Roulette"]
	local nNinjaPromotion_ItemTypeId_New = tNinjaPromotion_Count["Roulette_New"]
	local sNinjaPromotion_Attr = tNinjaPromotion_Count["Attr"]
	
	
	--背包空间检查
	if not User_CheckLeftSpace(tNinjaPromotion_Count["Space"],nUserId) then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	
	--检查背包是否已有
	if Item_ChkItem(nNinjaPromotion_ItemTypeId) and Item_ChkItem(nNinjaPromotion_ItemTypeId_New) then
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end
	

	--给物品
	if not Item_ChkItem(nNinjaPromotion_ItemTypeId) then 
		Item_AddNewItem(nNinjaPromotion_ItemTypeId,sNinjaPromotion_Attr,nNinjaPromotion_UserId)
	end
	if not Item_ChkItem(nNinjaPromotion_ItemTypeId_New) then
		Item_AddNewItem(nNinjaPromotion_ItemTypeId_New,sNinjaPromotion_Attr,nNinjaPromotion_UserId)
	end
	--打log
	Sys_SaveActionFestivalLog(tNinjaPromotion_Log["Roulette"])
	Sys_SaveActionFestivalLog(tNinjaPromotion_Log["RouletteNew"])
	--提示
	User_TalkChannel2005(tNinjaPromotion_Text["Roulette"] )

end
function NinjaPromotion_ExchangeMono(nNpcId,nItemId)
	if not Sys_ChkFullTime(tActivityTime["NinjaPromotion"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	-- 各种条件判断
	if not NinjaPromotion_ExchangeChk(nNpcId,nItemId) then
		return
	end
	
	local nNinjaPromotion_EMoney = tNinjaPromotion_EMomeyMono[nItemId]
	
	--随着购买量的增加比例发生变化
	local nNinjaPromotion_UserId = Get_UserId()
	local nNinjaPromotion_Event = tNinjaPromotion_Stc[1]["EventType"]
	local nNinjaPromotion_Type = tNinjaPromotion_Stc[1]["DataType"]
	local nNinjaPromotion_Data = Get_UserStatisticValue(nNinjaPromotion_Event,nNinjaPromotion_Type,nNinjaPromotion_UserId)
	local nNinjaPromotion_Ranklimit = 0
	if nNinjaPromotion_Data >= tNinjaPromotion_Board[1][1] and nNinjaPromotion_Data < tNinjaPromotion_Board[1][2] then
		nNinjaPromotion_Ranklimit = tNinjaPromotion_Board[1][3]
		elseif nNinjaPromotion_Data >= tNinjaPromotion_Board[2][1] and nNinjaPromotion_Data < tNinjaPromotion_Board[2][2] then
			nNinjaPromotion_Ranklimit = tNinjaPromotion_Board[2][3]
			elseif nNinjaPromotion_Data >= tNinjaPromotion_Board[3][1] and nNinjaPromotion_Data < tNinjaPromotion_Board[3][2] then
				nNinjaPromotion_Ranklimit = tNinjaPromotion_Board[3][3]
				elseif nNinjaPromotion_Data >= tNinjaPromotion_Board[4][1] and nNinjaPromotion_Data < tNinjaPromotion_Board[4][2] then
					nNinjaPromotion_Ranklimit = tNinjaPromotion_Board[4][3]
					else 
						nNinjaPromotion_Ranklimit = tNinjaPromotion_Board[5][3]
					
	end
	-- 二次确认
	local sNinjaPromotion_Text = tNinjaPromotion_Text[nNpcId]["Text211"]

	tNpcGossip[nNpcId]["Text211"] = string.format(sNinjaPromotion_Text,nNinjaPromotion_EMoney,nNinjaPromotion_EMoney*nNinjaPromotion_Ranklimit)

	
	local sNinjaPromotion_Option = tNinjaPromotion_Text[nNpcId]["Option211"]
	tNpcGossip[nNpcId]["Option211"] = string.format(sNinjaPromotion_Option,nNinjaPromotion_EMoney)
	tNpcGossip[nNpcId]["OptionFunc211"] = "NinjaPromotion_SureExchange</N>26260</N>"..nItemId
	
	LinkNpcGossipFunc_New(nNpcId,"2-1")
	
end
-- 确认换取天石赠
function NinjaPromotion_SureExchange(nNpcId,nItemId)
	if not Sys_ChkFullTime(tActivityTime["NinjaPromotion"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- 各种条件判断
	if not NinjaPromotion_ExchangeChk(nNpcId,nItemId) then
		return
	end
	
	local nNinjaPromotion_EMoney = tNinjaPromotion_EMomeyMono[nItemId]
	
	
	local nNinjaPromotion_UserId = Get_UserId()
	local nNinjaPromotion_Event = tNinjaPromotion_Stc[1]["EventType"]
	local nNinjaPromotion_Type = tNinjaPromotion_Stc[1]["DataType"]
	
	local nNinjaPromotion_GetGitfitem = Get_UserStatisticValue(nNinjaPromotion_Event,nNinjaPromotion_Type,nNinjaPromotion_UserId)
	local nNinjaPromotion_GiftTip = 0
	--根据玩家购买额度的不同兑换的赠点数量也不同
	if nNinjaPromotion_GetGitfitem >= tNinjaPromotion_Board[1][1] and nNinjaPromotion_GetGitfitem < tNinjaPromotion_Board[1][2] then
		nNinjaPromotion_GiftTip = tNinjaPromotion_Board[1][3]
		elseif nNinjaPromotion_GetGitfitem >= tNinjaPromotion_Board[2][1] and nNinjaPromotion_GetGitfitem < tNinjaPromotion_Board[2][2] then
			nNinjaPromotion_GiftTip = tNinjaPromotion_Board[2][3]
			elseif nNinjaPromotion_GetGitfitem >= tNinjaPromotion_Board[3][1] and nNinjaPromotion_GetGitfitem < tNinjaPromotion_Board[3][2] then
				nNinjaPromotion_GiftTip = tNinjaPromotion_Board[3][3]
				elseif nNinjaPromotion_GetGitfitem >= tNinjaPromotion_Board[4][1] and nNinjaPromotion_GetGitfitem < tNinjaPromotion_Board[4][2] then
					nNinjaPromotion_GiftTip = tNinjaPromotion_Board[4][3]
					else 
						nNinjaPromotion_GiftTip = tNinjaPromotion_Board[5][3]
					
	end
	
	local nNinjaPromotion_EMoneyMono = tNinjaPromotion_ChgEMomeyMono[nItemId][nNinjaPromotion_GiftTip]
	if not User_AddEMoney(-nNinjaPromotion_EMoney) then
		return
	end
	

	
	Task_AddStatistic(nNinjaPromotion_Event,nNinjaPromotion_Type,nNinjaPromotion_EMoneyMono,1,nNinjaPromotion_UserId)
	Task_SetStcTimestamp(nNinjaPromotion_Event,nNinjaPromotion_Type,0,nNinjaPromotion_UserId)
	
	-- 给奖励
	RewardTemplate_UseItem(tNinjaPromotion_Change_Reward[nItemId][nNinjaPromotion_GiftTip])
	
end
-- 换天石检测
function NinjaPromotion_ExchangeChk(nNpcId,nItemId)
	-- 已超过可换购额度
	local nNinjaPromotion_Event = tNinjaPromotion_Stc[1]["EventType"]
	local nNinjaPromotion_Type = tNinjaPromotion_Stc[1]["DataType"]
	local nNinjaPromotion_Limit = tNinjaPromotion_Stc[1]["Limit"]
	
	local nNinjaPromotion_Data = Get_UserStatisticValue(nNinjaPromotion_Event,nNinjaPromotion_Type)
	
	
	--每一级都有临界
	local nNinjaPromotion_Ranklimit = 0
	if nNinjaPromotion_Data >= tNinjaPromotion_Board[1][1] and nNinjaPromotion_Data < tNinjaPromotion_Board[1][2] then
		nNinjaPromotion_Ranklimit = tNinjaPromotion_Board[1][3]
		elseif nNinjaPromotion_Data >= tNinjaPromotion_Board[2][1] and nNinjaPromotion_Data < tNinjaPromotion_Board[2][2] then
			nNinjaPromotion_Ranklimit = tNinjaPromotion_Board[2][3]
			elseif nNinjaPromotion_Data >= tNinjaPromotion_Board[3][1] and nNinjaPromotion_Data < tNinjaPromotion_Board[3][2] then
				nNinjaPromotion_Ranklimit = tNinjaPromotion_Board[3][3]
				elseif nNinjaPromotion_Data >= tNinjaPromotion_Board[4][1] and nNinjaPromotion_Data < tNinjaPromotion_Board[4][2] then
					nNinjaPromotion_Ranklimit = tNinjaPromotion_Board[4][3]
					else 
						nNinjaPromotion_Ranklimit = tNinjaPromotion_Board[5][3]
					
	end
	
	local nNinjaPromotion_EMoney = tNinjaPromotion_EMomeyMono[nItemId]
	local nNinjaPromotion_EMoneyMono = tNinjaPromotion_ChgEMomeyMono[nItemId][nNinjaPromotion_Ranklimit]
	
	if nNinjaPromotion_Data+nNinjaPromotion_EMoneyMono > nNinjaPromotion_Limit then
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return false
	end
	
	
	if nNinjaPromotion_Ranklimit == 5 then
		if (nNinjaPromotion_Data+nNinjaPromotion_EMoneyMono) > tNinjaPromotion_Board[1][2] then
			LinkNpcGossipFunc_New(nNpcId,"3-1")
			return
		end
		elseif nRanklimit == 6 then
			if (nNinjaPromotion_Data+nNinjaPromotion_EMoneyMono) > tNinjaPromotion_Board[2][2] then
				LinkNpcGossipFunc_New(nNpcId,"3-1")
				return
			end
			elseif nRanklimit == 7 then
				if (nNinjaPromotion_Data+nNinjaPromotion_EMoneyMono) > tNinjaPromotion_Board[3][2] then
					LinkNpcGossipFunc_New(nNpcId,"3-1")
					return
				end
				elseif nRanklimit == 8 then
					if (nNinjaPromotion_Data+nNinjaPromotion_EMoneyMono) > tNinjaPromotion_Board[4][2] then
						LinkNpcGossipFunc_New(nNpcId,"3-1")
						return
					end
	end
	
	
	-- 天石不足
	local nNinjaPromotion_UserEMoney = Get_UserEMoney()
	if nNinjaPromotion_UserEMoney < nNinjaPromotion_EMoney then
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return false
	end
	
	-- 背包空间不足
	if not User_CheckLeftSpace(1) then
		Sys_MsgBox(tNinjaPromotion_Text[nNpcId]["NoSpace"])
		return false
	end
	
	return true
end
---------------------------------------------------------------------------------

tItem[3316007] = tItem[3316007] or {}
tItem[3316007]["Function"] = function(nItemId,sItemName)
	-- 判断物品
	if not Item_ChkMulItem(nItemId,nItemId,1) then
		return
	end
	RewardTemplate_UseItemAndMsg(tNinjaPromotion_Reward[nItemId])
end
tItem[3315985] = tItem[3316007]
tItem[3315986] = tItem[3316007]
tItem[3315987] = tItem[3316007]
tItem[3315988] = tItem[3316007]
tItem[3315989] = tItem[3316007]
tItem[3315990] = tItem[3316007]
tItem[3315991] = tItem[3316007]
tItem[3315992] = tItem[3316007]
tItem[3315993] = tItem[3316007]
tItem[3315994] = tItem[3316007]
tItem[3315995] = tItem[3316007]
tItem[3315996] = tItem[3316007]
tItem[3315997] = tItem[3316007]
tItem[3315998] = tItem[3316007]
tItem[3315999] = tItem[3316007]
tItem[3316000] = tItem[3316007]
tItem[3316001] = tItem[3316007]
tItem[3316002] = tItem[3316007]
tItem[3316003] = tItem[3316007]
tItem[3316004] = tItem[3316007]
tItem[3316005] = tItem[3316007]
tItem[3316006] = tItem[3316007]


tItem[3316018] = tItem[3316007]
tItem[3316019] = tItem[3316007]
tItem[3316020] = tItem[3316007]
tItem[3316021] = tItem[3316007]
tItem[3316022] = tItem[3316007]
tItem[3316023] = tItem[3316007]
tItem[3316024] = tItem[3316007]
tItem[3316025] = tItem[3316007]

tItem[3316071] = tItem[3316007]
tItem[3316072] = tItem[3316007]

---------------------------------------------------------------------------------
-- 赠品珍宝促销员
tNpcFace[3673] = 3
tNpcGossip[26258] = tNpcGossip[26258] or DefaultNpc:new{}
tNpcGossip[26258]["OptionHidden"] = 1
-- tNpcGossip[26258]["DialogueText"] = tNinjaPromotion_Text[26258]
-- 活动前
tNpcGossip[26258]["Text1-1"] = {111,112,113}
tNpcGossip[26258]["Text111"] = tNinjaPromotion_Text[26258]["Text111"]
tNpcGossip[26258]["Text112"] = tNinjaPromotion_Text[26258]["Text112"]
tNpcGossip[26258]["Text113"] = tNinjaPromotion_Text[26258]["Text113"]
tNpcGossip[26258]["tOption1-1"] = {1}
tNpcGossip[26258]["ChkFunc1-1"] = function ()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["NinjaPromotion"]["ActivityTime"])
end
tNpcGossip[26258]["Option1"] = tNinjaPromotion_Text[26258]["Option1"]

-- 活动后
tNpcGossip[26258]["Text1-2"] = {121}
tNpcGossip[26258]["Text121"] = tNinjaPromotion_Text[26258]["Text121"]
tNpcGossip[26258]["tOption1-2"] = {2}
tNpcGossip[26258]["ChkFunc1-2"] = function ()
	return not Sys_ChkFullTime(tActivityTime["NinjaPromotion"]["ActivityTime"])
end
tNpcGossip[26258]["Option2"] = tNinjaPromotion_Text[26258]["Option2"]

-- 活动中
tNpcGossip[26258]["Text1-3"] = {131,132,133}
tNpcGossip[26258]["Text131"] = tNinjaPromotion_Text[26258]["Text131"]
tNpcGossip[26258]["Text132"] = tNinjaPromotion_Text[26258]["Text132"]
tNpcGossip[26258]["Text133"] = tNinjaPromotion_Text[26258]["Text133"]
tNpcGossip[26258]["tOption1-3"]={58,52,53,54,55,44,45,46,47,48,49,50,51,39,40,41,42,33,43,34,35,36,37,38,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,3,4,5,6,7,14}
tNpcGossip[26258]["ChkFunc1-3"] = function ()

	
	local nItemEvent = 0
	local nItemType = 0
	local nItemLimit = 0
	local nLessItemData = 0
	
	for k,v in pairs(tNinjaPromotion_Option) do
		nItemEvent = tNinjaPromotion_Stc[k]["EventType"]
		nItemType = tNinjaPromotion_Stc[k]["DataType"]
		nItemLimit = tNinjaPromotion_Stc[k]["Limit"]
		nLessItemData = nItemLimit - Get_UserStatisticValue(nItemEvent,nItemType)
		
		tNpcGossip[26258][v] = string.format(tNinjaPromotion_Text[26258][v], nLessItemData)
	end
	
	return true
end
-- 购买龙珠（赠）。
tNpcGossip[26258]["Option3"] = tNinjaPromotion_Text[26258]["Option3"]
tNpcGossip[26258]["OptionFunc3"] = "NinjaPromotion_BuyItem</N>26258</N>1088000"
-- 购买+3赤炼石（赠）。
tNpcGossip[26258]["Option4"] = tNinjaPromotion_Text[26258]["Option4"]
tNpcGossip[26258]["OptionFunc4"] = "NinjaPromotion_BuyItem</N>26258</N>730003"
-- 购买固化石（赠）。
tNpcGossip[26258]["Option5"] = tNinjaPromotion_Text[26258]["Option5"]
tNpcGossip[26258]["OptionFunc5"] = "NinjaPromotion_BuyItem</N>26258</N>723694"
-- 购买1000点气力值礼包。
tNpcGossip[26258]["Option6"] = tNinjaPromotion_Text[26258]["Option6"]
tNpcGossip[26258]["OptionFunc6"] = "NinjaPromotion_BuyItem</N>26258</N>3200571"
-- 购买金钢坚钻（赠）。
tNpcGossip[26258]["Option7"] = tNinjaPromotion_Text[26258]["Option7"]

tNpcGossip[26258]["OptionFunc7"] = "NinjaPromotion_BuyItem</N>26258</N>1200005"
-- 购买七星宝钻（赠）。
tNpcGossip[26258]["Option14"] = tNinjaPromotion_Text[26258]["Option14"]
tNpcGossip[26258]["OptionFunc14"] = "NinjaPromotion_BuyItem</N>26258</N>1200006"
-- 寻路至天石换购大使
tNpcGossip[26258]["Option15"] = tNinjaPromotion_Text[26258]["Option15"]
tNpcGossip[26258]["OptionFunc15"] = "NpcPosition_PathFind</N>26260"
tNpcGossip[26258]["Option8"] = tNinjaPromotion_Text[26258]["Option8"]

-- ###180312[英文征服][活动脚本]4月赠品大狂欢（4.19-5.5）	modified by pyf
tNpcGossip[26258]["Option16"] = tNinjaPromotion_Text[26258]["Option16"]
tNpcGossip[26258]["OptionFunc16"] = "NinjaPromotion_BuyItem</N>26258</N>3306562"
tNpcGossip[26258]["Option17"] = tNinjaPromotion_Text[26258]["Option17"]
tNpcGossip[26258]["OptionFunc17"] = "NinjaPromotion_BuyItem</N>26258</N>3306563"
tNpcGossip[26258]["Option18"] = tNinjaPromotion_Text[26258]["Option18"]
tNpcGossip[26258]["OptionFunc18"] = "NinjaPromotion_BuyItem</N>26258</N>4050001"
tNpcGossip[26258]["Option19"] = tNinjaPromotion_Text[26258]["Option19"]
tNpcGossip[26258]["OptionFunc19"] = "NinjaPromotion_BuyItem</N>26258</N>3009001"
tNpcGossip[26258]["Option20"] = tNinjaPromotion_Text[26258]["Option20"]
tNpcGossip[26258]["OptionFunc20"] = "NinjaPromotion_BuyItem</N>26258</N>3306370"
tNpcGossip[26258]["Option21"] = tNinjaPromotion_Text[26258]["Option21"]
tNpcGossip[26258]["OptionFunc21"] = "NinjaPromotion_BuyItem</N>26258</N>4030201"
tNpcGossip[26258]["Option22"] = tNinjaPromotion_Text[26258]["Option22"]
tNpcGossip[26258]["OptionFunc22"] = "NinjaPromotion_BuyItem</N>26258</N>4030301"
tNpcGossip[26258]["Option23"] = tNinjaPromotion_Text[26258]["Option23"]
tNpcGossip[26258]["OptionFunc23"] = "NinjaPromotion_BuyItem</N>26258</N>4030501"
tNpcGossip[26258]["Option24"] = tNinjaPromotion_Text[26258]["Option24"]
tNpcGossip[26258]["OptionFunc24"] = "NinjaPromotion_BuyItem</N>26258</N>4030801"
tNpcGossip[26258]["Option25"] = tNinjaPromotion_Text[26258]["Option25"]
tNpcGossip[26258]["OptionFunc25"] = "NinjaPromotion_BuyItem</N>26258</N>4031201"
tNpcGossip[26258]["Option26"] = tNinjaPromotion_Text[26258]["Option26"]
tNpcGossip[26258]["OptionFunc26"] = "NinjaPromotion_BuyItem</N>26258</N>4030901"
tNpcGossip[26258]["Option27"] = tNinjaPromotion_Text[26258]["Option27"]
tNpcGossip[26258]["OptionFunc27"] = "NinjaPromotion_BuyItem</N>26258</N>4031001"
tNpcGossip[26258]["Option28"] = tNinjaPromotion_Text[26258]["Option28"]
tNpcGossip[26258]["OptionFunc28"] = "NinjaPromotion_BuyItem</N>26258</N>4030101"
tNpcGossip[26258]["Option29"] = tNinjaPromotion_Text[26258]["Option29"]
tNpcGossip[26258]["OptionFunc29"] = "NinjaPromotion_BuyItem</N>26258</N>4030401"
tNpcGossip[26258]["Option30"] = tNinjaPromotion_Text[26258]["Option30"]
tNpcGossip[26258]["OptionFunc30"] = "NinjaPromotion_BuyItem</N>26258</N>4030601"
tNpcGossip[26258]["Option31"] = tNinjaPromotion_Text[26258]["Option31"]
tNpcGossip[26258]["OptionFunc31"] = "NinjaPromotion_BuyItem</N>26258</N>4030701"
tNpcGossip[26258]["Option32"] = tNinjaPromotion_Text[26258]["Option32"]
tNpcGossip[26258]["OptionFunc32"] = "NinjaPromotion_BuyItem</N>26258</N>4031101"

-- 180427[英文征服][活动脚本]5月新服活动制作	modified by wzh
tNpcGossip[26258]["Option33"] = tNinjaPromotion_Text[26258]["Option33"]
tNpcGossip[26258]["OptionFunc33"] = "NinjaPromotion_BuyItem</N>26258</N>3308868"
tNpcGossip[26258]["Option34"] = tNinjaPromotion_Text[26258]["Option34"]
tNpcGossip[26258]["OptionFunc34"] = "NinjaPromotion_BuyItem</N>26258</N>730006"
tNpcGossip[26258]["Option35"] = tNinjaPromotion_Text[26258]["Option35"]
tNpcGossip[26258]["OptionFunc35"] = "NinjaPromotion_BuyItem</N>26258</N>700102"
tNpcGossip[26258]["Option36"] = tNinjaPromotion_Text[26258]["Option36"]
tNpcGossip[26258]["OptionFunc36"] = "NinjaPromotion_BuyItem</N>26258</N>700122"
tNpcGossip[26258]["Option37"] = tNinjaPromotion_Text[26258]["Option37"]
tNpcGossip[26258]["OptionFunc37"] = "NinjaPromotion_BuyItem</N>26258</N>700103"
tNpcGossip[26258]["Option38"] = tNinjaPromotion_Text[26258]["Option38"]
tNpcGossip[26258]["OptionFunc38"] = "NinjaPromotion_BuyItem</N>26258</N>700123"
tNpcGossip[26258]["Option39"] = tNinjaPromotion_Text[26258]["Option39"]
tNpcGossip[26258]["OptionFunc39"] = "NinjaPromotion_BuyItem</N>26258</N>723701"

tNpcGossip[26258]["Option40"] = tNinjaPromotion_Text[26258]["Option40"]
tNpcGossip[26258]["OptionFunc40"] = "NinjaPromotion_BuyItem</N>26258</N>2100025"
tNpcGossip[26258]["Option41"] = tNinjaPromotion_Text[26258]["Option41"]
tNpcGossip[26258]["OptionFunc41"] = "NinjaPromotion_BuyItem</N>26258</N>722736"
tNpcGossip[26258]["Option42"] = tNinjaPromotion_Text[26258]["Option42"]
tNpcGossip[26258]["OptionFunc42"] = "NinjaPromotion_BuyItem</N>26258</N>722732"
tNpcGossip[26258]["Option43"] = tNinjaPromotion_Text[26258]["Option43"]
tNpcGossip[26258]["OptionFunc43"] = "NinjaPromotion_BuyItem</N>26258</N>4031301"

--雷神新增物品
tNpcGossip[26258]["Option44"] = tNinjaPromotion_Text[26258]["Option44"]
tNpcGossip[26258]["OptionFunc44"] = "NinjaPromotion_BuyItem</N>26258</N>3307467"
tNpcGossip[26258]["Option45"] = tNinjaPromotion_Text[26258]["Option45"]
tNpcGossip[26258]["OptionFunc45"] = "NinjaPromotion_BuyItem</N>26258</N>711188"
tNpcGossip[26258]["Option46"] = tNinjaPromotion_Text[26258]["Option46"]
tNpcGossip[26258]["OptionFunc46"] = "NinjaPromotion_BuyItem</N>26258</N>3307468"
tNpcGossip[26258]["Option47"] = tNinjaPromotion_Text[26258]["Option47"]
tNpcGossip[26258]["OptionFunc47"] = "NinjaPromotion_BuyItem</N>26258</N>3307469"
tNpcGossip[26258]["Option48"] = tNinjaPromotion_Text[26258]["Option48"]
tNpcGossip[26258]["OptionFunc48"] = "NinjaPromotion_BuyItem</N>26258</N>711679"
tNpcGossip[26258]["Option49"] = tNinjaPromotion_Text[26258]["Option49"]
tNpcGossip[26258]["OptionFunc49"] = "NinjaPromotion_BuyItem</N>26258</N>3307470"
tNpcGossip[26258]["Option50"] = tNinjaPromotion_Text[26258]["Option50"]
tNpcGossip[26258]["OptionFunc50"] = "NinjaPromotion_BuyItem</N>26258</N>1080001"
tNpcGossip[26258]["Option51"] = tNinjaPromotion_Text[26258]["Option51"]
tNpcGossip[26258]["OptionFunc51"] = "NinjaPromotion_BuyItem</N>26258</N>723030"

--5月周年庆新增
tNpcGossip[26258]["Option52"] = tNinjaPromotion_Text[26258]["Option52"]
tNpcGossip[26258]["OptionFunc52"] = "NinjaPromotion_BuyItem</N>26258</N>3312619"
tNpcGossip[26258]["Option53"] = tNinjaPromotion_Text[26258]["Option53"]
tNpcGossip[26258]["OptionFunc53"] = "NinjaPromotion_BuyItem</N>26258</N>3312620"
tNpcGossip[26258]["Option54"] = tNinjaPromotion_Text[26258]["Option54"]
tNpcGossip[26258]["OptionFunc54"] = "NinjaPromotion_BuyItem</N>26258</N>3304062"
tNpcGossip[26258]["Option55"] = tNinjaPromotion_Text[26258]["Option55"]
tNpcGossip[26258]["OptionFunc55"] = "NinjaPromotion_BuyItem</N>26258</N>3320470"

--9月爆爽服
tNpcGossip[26258]["Option56"] = tNinjaPromotion_Text[26258]["Option56"]
tNpcGossip[26258]["OptionFunc56"] = "NinjaPromotion_BuyItem</N>26258</N>3309001"
tNpcGossip[26258]["Option57"] = tNinjaPromotion_Text[26258]["Option57"]
tNpcGossip[26258]["OptionFunc57"] = "NinjaPromotion_BuyItem</N>26258</N>3312763"
--1月新年促销
tNpcGossip[26258]["Option58"] = tNinjaPromotion_Text[26258]["Option58"]
tNpcGossip[26258]["OptionFunc58"] = "NinjaPromotion_BuyItem</N>26258</N>3306087"


-- 购买商品次级对白
tNpcGossip[26258]["Text2-1"] = {211,212,213}
tNpcGossip[26258]["Text211"] = tNinjaPromotion_Text[26258]["Text211"]
tNpcGossip[26258]["Text212"] = tNinjaPromotion_Text[26258]["Text212"]
tNpcGossip[26258]["Text213"] = tNinjaPromotion_Text[26258]["Text213"]
-- 输入框数字
tNpcGossip[26258]["Text2-2"] = {221}
tNpcGossip[26258]["Text221"] = tNinjaPromotion_Text[26258]["Text221"]
tNpcGossip[26258]["tOption2-2"] = {9}
tNpcGossip[26258]["Option9"] = tNinjaPromotion_Text[26258]["Option9"]
tNpcGossip[26258]["OptionPoint9"] = 1
-- 赠点不足
tNpcGossip[26258]["Text2-3"] = {231}
tNpcGossip[26258]["Text231"] = tNinjaPromotion_Text[26258]["Text231"]
tNpcGossip[26258]["tOption2-3"] = {10}
tNpcGossip[26258]["Option10"] = tNinjaPromotion_Text[26258]["Option10"]
tNpcGossip[26258]["OptionPoint10"] = 1
-- 剩余购买额度不足
tNpcGossip[26258]["Text2-4"] = {241}
tNpcGossip[26258]["Text241"] = tNinjaPromotion_Text[26258]["Text241"]
tNpcGossip[26258]["tOption2-4"] = {11}
tNpcGossip[26258]["Option11"] = tNinjaPromotion_Text[26258]["Option11"]
tNpcGossip[26258]["OptionPoint11"] = 1
-- 成功，二次确认
tNpcGossip[26258]["Text3-1"] = {311}
tNpcGossip[26258]["Text311"] = tNinjaPromotion_Text[26258]["Text311"]
tNpcGossip[26258]["tOption3-1"] = {12,13}
tNpcGossip[26258]["Option12"] = tNinjaPromotion_Text[26258]["Option12"]
tNpcGossip[26258]["Option13"] = tNinjaPromotion_Text[26258]["Option13"]
tNpcGossip[26258]["OptionFunc12"] = ""


----------------------------------------------------------------------------------
tNpcGossip[26259] = tNpcGossip[26259] or DefaultNpc:new{}
tNpcGossip[26259]["OptionHidden"]=1
tNpcGossip[26259]["DialogueText"]=tNinjaPromotion_Text[26259]

tNpcGossip[26259]["Text1-1"] = {111,112,113}
tNpcGossip[26259]["tOption1-1"] = {111}
tNpcGossip[26259]["OptionFunc111"] = "NinjaPromotion_GetRoulette"

tNpcGossip[26259]["Text2-1"] = {211}
tNpcGossip[26259]["tOption2-1"] = {211}
tNpcGossip[26259]["Text2-2"] = {221}
tNpcGossip[26259]["tOption2-2"] = {221}
----------------------------------------------------------------------------------
tNpcGossip[26260] = tNpcGossip[26260] or DefaultNpc:new{}
tNpcGossip[26260]["OptionHidden"] = 1
tNpcGossip[26260]["DialogueText"]=tNinjaPromotion_Text[26260]
-- 活动前
tNpcGossip[26260]["Text1-1"] = {111,112,113}
tNpcGossip[26260]["tOption1-1"] = {111}
tNpcGossip[26260]["ChkFunc1-1"] = function ()
	if CommonFunc_GetBeforeActivityTime(tActivityTime["NinjaPromotion"]["ActivityTime"]) then
		return true
	else
		return false
	end
end
-- 活动后
tNpcGossip[26260]["Text1-2"] = {121}
tNpcGossip[26260]["tOption1-2"] = {121}
tNpcGossip[26260]["ChkFunc1-2"] = function ()
	if not Sys_ChkFullTime(tActivityTime["NinjaPromotion"]["ActivityTime"]) then
		return true
	else
		return false
	end
end
tNpcGossip[26260]["Text1-3"] = {131,133,134,135}
tNpcGossip[26260]["tOption1-3"] = {131,132}
tNpcGossip[26260]["ChkFunc1-3"] = function ()
	local nNinjaPromotion_Limit = tNinjaPromotion_Stc[1]["Limit"]
	local nNinjaPromotion_Event = tNinjaPromotion_Stc[1]["EventType"]
	local nNinjaPromotion_Type = tNinjaPromotion_Stc[1]["DataType"]
	local nNinjaPromotion_GetLimit = Get_UserStatisticValue(nNinjaPromotion_Event,nNinjaPromotion_Type)
	
	local sNinjaPromotion_Text = tNinjaPromotion_Text[26260]["Text135"]
	local nNinjaPromotion_LessData = nNinjaPromotion_Limit - nNinjaPromotion_GetLimit
	tNpcGossip[26260]["Text135"] = string.format(sNinjaPromotion_Text,nNinjaPromotion_LessData)
	
	
	if nNinjaPromotion_GetLimit >= tNinjaPromotion_Board[1][1] and nNinjaPromotion_GetLimit < tNinjaPromotion_Board[1][2] then
		tNpcGossip[26260]["Option131"] = tNinjaPromotion_Text[26260]["Option131"]
		tNpcGossip[26260]["Option132"] = tNinjaPromotion_Text[26260]["Option132"]
		elseif nNinjaPromotion_GetLimit >= tNinjaPromotion_Board[2][1] and nNinjaPromotion_GetLimit < tNinjaPromotion_Board[2][2] then
			tNpcGossip[26260]["Option131"] = tNinjaPromotion_Text[26260]["Option133"]
			tNpcGossip[26260]["Option132"] = tNinjaPromotion_Text[26260]["Option134"]
			elseif nNinjaPromotion_GetLimit >= tNinjaPromotion_Board[3][1] and nNinjaPromotion_GetLimit < tNinjaPromotion_Board[3][2] then
				tNpcGossip[26260]["Option131"] = tNinjaPromotion_Text[26260]["Option135"]
				tNpcGossip[26260]["Option132"] = tNinjaPromotion_Text[26260]["Option136"]
				elseif nNinjaPromotion_GetLimit >= tNinjaPromotion_Board[4][1] and nNinjaPromotion_GetLimit < tNinjaPromotion_Board[4][2] then
					tNpcGossip[26260]["Option131"] = tNinjaPromotion_Text[26260]["Option137"]
					tNpcGossip[26260]["Option132"] = tNinjaPromotion_Text[26260]["Option138"]
					else
						tNpcGossip[26260]["Option131"] = tNinjaPromotion_Text[26260]["Option139"]
						tNpcGossip[26260]["Option132"] = tNinjaPromotion_Text[26260]["Option1310"]
	end
	
	return true
end
tNpcGossip[26260]["OptionFunc131"] = "NinjaPromotion_ExchangeMono</N>26260</N>3311608"
tNpcGossip[26260]["OptionFunc132"] = "NinjaPromotion_ExchangeMono</N>26260</N>3311609"





tNpcGossip[26260]["Text2-1"] = {211}
tNpcGossip[26260]["tOption2-1"] = {211,212}

tNpcGossip[26260]["Text2-2"] = {221}
tNpcGossip[26260]["tOption2-2"] = {221}

tNpcGossip[26260]["Text2-3"] = {231}
tNpcGossip[26260]["tOption2-3"] = {231}

tNpcGossip[26260]["Text3-1"] = {311}
tNpcGossip[26260]["tOption3-1"] = {311}