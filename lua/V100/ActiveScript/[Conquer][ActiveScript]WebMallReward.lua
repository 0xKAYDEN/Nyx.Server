------------------------------------------------------------------------------------
--Name:		170322[简体征服][活动脚本]烦请制作WEB商城商品发奖ID
--Creator: 	姚曦宇
--Created:	2017/03/22
------------------------------------------------------------------------------------
-- Stc
-- 157.93 标记成长减负包每日的打开次数，每日上限为3
-- 157.94 标记财富幸运礼包每日的打开次数，每日上限为10

-- LogId: 12000694

-- 命名前缀
-- WebMallReward_

------------------------------------------------------------------------------------
local tWebMallReward_Award = {}
-- 特转神行包
	tWebMallReward_Award[3302922] = {}
	tWebMallReward_Award[3302922]["Space"] = 2
	tWebMallReward_Award[3302922]["DeleteItem"] = {}
	tWebMallReward_Award[3302922]["DeleteItem"][1] = {}
	tWebMallReward_Award[3302922]["DeleteItem"][1]["Id"] = 3302922
	tWebMallReward_Award[3302922]["RewardItem"] = {}
	-- 乾坤九转神露*1 id = 711083  monopoly = 8
	tWebMallReward_Award[3302922]["RewardItem"][1] = {}
	tWebMallReward_Award[3302922]["RewardItem"][1]["Id"] = 711083
	tWebMallReward_Award[3302922]["RewardItem"][1]["Attr"] = "0 1 3"
	-- 特转培元丹*1 id = 3007102 monopoly = 0
	tWebMallReward_Award[3302922]["RewardItem"][2] = {}
	tWebMallReward_Award[3302922]["RewardItem"][2]["Id"] = 3007102
	tWebMallReward_Award[3302922]["RewardItem"][2]["Attr"] = "0 1 3"
	tWebMallReward_Award[3302922]["Log"] = "0,0,3302922,1,12000694,2,711083[3007102],1[1]"
	tWebMallReward_Award[3302922]["Talk"] = tWebMallReward_Text["Talk"][3302922]
	tWebMallReward_Award[3302922]["NoSpace"] = tWebMallReward_Text["NoSpace"][1]
	
-- 成长减负包
	tWebMallReward_Award[3302923] = {}
	tWebMallReward_Award[3302923]["Space"] = 1
	-- 每天最多开启3次
	tWebMallReward_Award[3302923]["EventType"] = 157
	tWebMallReward_Award[3302923]["DataType"] = 93
	tWebMallReward_Award[3302923]["RewardData"] = 3
	tWebMallReward_Award[3302923]["RewardDelay"] = 1 
	tWebMallReward_Award[3302923]["RewardTimeType"] = 4 
	tWebMallReward_Award[3302923]["DeleteItem"] = {}
	tWebMallReward_Award[3302923]["DeleteItem"][1] = {}
	tWebMallReward_Award[3302923]["DeleteItem"][1]["Id"] = 3302923
	tWebMallReward_Award[3302923]["RewardItem"] = {}
	-- 战功显赫嘉奖包*3 id = 3600023  monopoly = 128
	tWebMallReward_Award[3302923]["RewardItem"][1] = {}
	tWebMallReward_Award[3302923]["RewardItem"][1]["Id"] = 3600023
	tWebMallReward_Award[3302923]["RewardItem"][1]["Attr"] = "0 3"
	tWebMallReward_Award[3302923]["Log"] = "0,0,3302923,1,12000694,2,3600023,3"
	-- tWebMallReward_Award[3302923]["Talk"] = tWebMallReward_Text["Talk"][3302923]
	-- tWebMallReward_Award[3302923]["NoSpace"] = tWebMallReward_Text["NoSpace"][1]
	-- tWebMallReward_Award[3302923]["HaveReceive"] = tWebMallReward_Text["TimesLimit"][3302923]
	
-- 清心符大礼包
	tWebMallReward_Award[3302924] = {}
	tWebMallReward_Award[3302924]["Space"] = 1
	tWebMallReward_Award[3302924]["DeleteItem"] = {}
	tWebMallReward_Award[3302924]["DeleteItem"][1] = {}
	tWebMallReward_Award[3302924]["DeleteItem"][1]["Id"] = 3302924
	tWebMallReward_Award[3302924]["RewardItem"] = {}
	-- 清心符（赠）*100 id = 720128  monopoly = 8
	tWebMallReward_Award[3302924]["RewardItem"][1] = {}
	tWebMallReward_Award[3302924]["RewardItem"][1]["Id"] = 720128
	tWebMallReward_Award[3302924]["RewardItem"][1]["Attr"] = "0 100 3"
	tWebMallReward_Award[3302924]["Log"] = "0,0,3302924,1,12000694,2,720128,100"
	-- tWebMallReward_Award[3302924]["Talk"] = tWebMallReward_Text["Talk"][3302924]
	-- tWebMallReward_Award[3302924]["NoSpace"] = tWebMallReward_Text["NoSpace"][1]
	
-- 护心丹大礼包
	tWebMallReward_Award[3302925] = {}
	tWebMallReward_Award[3302925]["Space"] = 1
	tWebMallReward_Award[3302925]["DeleteItem"] = {}
	tWebMallReward_Award[3302925]["DeleteItem"][1] = {}
	tWebMallReward_Award[3302925]["DeleteItem"][1]["Id"] = 3302925
	tWebMallReward_Award[3302925]["RewardItem"] = {}
	-- 强效护心丹*100 id = 3002030  monopoly = 9
	tWebMallReward_Award[3302925]["RewardItem"][1] = {}
	tWebMallReward_Award[3302925]["RewardItem"][1]["Id"] = 3002030
	tWebMallReward_Award[3302925]["RewardItem"][1]["Attr"] = "0 100"
	tWebMallReward_Award[3302925]["Log"] = "0,0,3302925,1,12000694,2,3002030,100"
	-- tWebMallReward_Award[3302925]["Talk"] = tWebMallReward_Text["Talk"][3302925]
	-- tWebMallReward_Award[3302925]["NoSpace"] = tWebMallReward_Text["NoSpace"][1]
	
-- 圣盾守护大礼包
	tWebMallReward_Award[3302926] = {}
	tWebMallReward_Award[3302926]["Space"] = 3
	tWebMallReward_Award[3302926]["DeleteItem"] = {}
	tWebMallReward_Award[3302926]["DeleteItem"][1] = {}
	tWebMallReward_Award[3302926]["DeleteItem"][1]["Id"] = 3302926
	tWebMallReward_Award[3302926]["RewardItem"] = {}
	-- 30天时效的潘多拉圣盾（赠）*1 id = 3002030  monopoly = 0
	tWebMallReward_Award[3302926]["RewardItem"][1] = {}
	tWebMallReward_Award[3302926]["RewardItem"][1]["Id"] = 2100125
	tWebMallReward_Award[3302926]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	-- 凤凰传奇武器外套包*2 id = 3302951  monopoly = 11
	tWebMallReward_Award[3302926]["RewardItem"][2] = {}
	tWebMallReward_Award[3302926]["RewardItem"][2]["Id"] = 3302951
	tWebMallReward_Award[3302926]["RewardItem"][2]["Attr"] = "0 2"	
	tWebMallReward_Award[3302926]["Log"] = "0,0,3302926,1,12000694,2,2100125[3302951],1[2]"
	-- tWebMallReward_Award[3302926]["Talk"] = tWebMallReward_Text["Talk"][3302926]
	-- tWebMallReward_Award[3302926]["NoSpace"] = tWebMallReward_Text["NoSpace"][1]
	
-- 畅想礼包
	tWebMallReward_Award[3302927] = {}
	tWebMallReward_Award[3302927]["Space"] = 5
	tWebMallReward_Award[3302927]["DeleteItem"] = {}
	tWebMallReward_Award[3302927]["DeleteItem"][1] = {}
	tWebMallReward_Award[3302927]["DeleteItem"][1]["Id"] = 3302927
	tWebMallReward_Award[3302927]["RewardItem"] = {}
	-- 流星卷*2 id = 720027  monopoly = 0
	tWebMallReward_Award[3302927]["RewardItem"][1] = {}
	tWebMallReward_Award[3302927]["RewardItem"][1]["Id"] = 720027
	tWebMallReward_Award[3302927]["RewardItem"][1]["Attr"] = "0 2"
	-- 专属武器外套礼包*1 id = 728597  monopoly = 9
	tWebMallReward_Award[3302927]["RewardItem"][2] = {}
	tWebMallReward_Award[3302927]["RewardItem"][2]["Id"] = 728597
	tWebMallReward_Award[3302927]["RewardItem"][2]["Attr"] = "0 1 0 10080 1"	
	-- 秘制免费强炼丹（赠）*5 id = 3002926  monopoly = 11
	tWebMallReward_Award[3302927]["RewardItem"][3] = {}
	tWebMallReward_Award[3302927]["RewardItem"][3]["Id"] = 3002926
	tWebMallReward_Award[3302927]["RewardItem"][3]["Attr"] = "0 5"
	-- 究极神通丹（赠）*5 id = 3003126  monopoly = 0
	tWebMallReward_Award[3302927]["RewardItem"][4] = {}
	tWebMallReward_Award[3302927]["RewardItem"][4]["Id"] = 3003126
	tWebMallReward_Award[3302927]["RewardItem"][4]["Attr"] = "0 5 3"
	-- 气力值*500
	tWebMallReward_Award[3302927]["RewardStrengthValue"] = {}
	tWebMallReward_Award[3302927]["RewardStrengthValue"]["Value"] = 500
	tWebMallReward_Award[3302927]["Log"] = "0,0,3302927,1,12000694,2,720027[728597][3002926][3003126][12],2[1][5][5][500]"
	-- tWebMallReward_Award[3302927]["Talk"] = tWebMallReward_Text["Talk"][3302927]
	-- tWebMallReward_Award[3302927]["NoSpace"] = tWebMallReward_Text["NoSpace"][1]
	
-- 270天石（赠）礼袋
	tWebMallReward_Award[3302928] = {}
	tWebMallReward_Award[3302928]["DeleteItem"] = {}
	tWebMallReward_Award[3302928]["DeleteItem"][1] = {}
	tWebMallReward_Award[3302928]["DeleteItem"][1]["Id"] = 3302928
	tWebMallReward_Award[3302928]["RewardEMoneyMono"] = {}
	tWebMallReward_Award[3302928]["RewardEMoneyMono"]["Value"] = 270
	tWebMallReward_Award[3302928]["Log"] = "0,0,3302928,1,12000694,2,3,270"
	-- tWebMallReward_Award[3302928]["Talk"] = tWebMallReward_Text["Talk"][3302928]
	-- tWebMallReward_Award[3302928]["EMoneyMono"] = tWebMallReward_Text["EMoneyMono"]
	
-- 351天石（赠）礼袋
	tWebMallReward_Award[3302929] = {}
	tWebMallReward_Award[3302929]["DeleteItem"] = {}
	tWebMallReward_Award[3302929]["DeleteItem"][1] = {}
	tWebMallReward_Award[3302929]["DeleteItem"][1]["Id"] = 3302929
	tWebMallReward_Award[3302929]["RewardEMoneyMono"] = {}
	tWebMallReward_Award[3302929]["RewardEMoneyMono"]["Value"] = 351
	tWebMallReward_Award[3302929]["Log"] = "0,0,3302929,1,12000694,2,3,351"
	-- tWebMallReward_Award[3302929]["Talk"] = tWebMallReward_Text["Talk"][3302929]
	-- tWebMallReward_Award[3302929]["EMoneyMono"] = tWebMallReward_Text["EMoneyMono"]
	
-- 405天石（赠）礼袋
	tWebMallReward_Award[3302930] = {}
	tWebMallReward_Award[3302930]["DeleteItem"] = {}
	tWebMallReward_Award[3302930]["DeleteItem"][1] = {}
	tWebMallReward_Award[3302930]["DeleteItem"][1]["Id"] = 3302930
	tWebMallReward_Award[3302930]["RewardEMoneyMono"] = {}
	tWebMallReward_Award[3302930]["RewardEMoneyMono"]["Value"] = 405
	tWebMallReward_Award[3302930]["Log"] = "0,0,3302930,1,12000694,2,3,405"
	-- tWebMallReward_Award[3302930]["Talk"] = tWebMallReward_Text["Talk"][3302930]
	-- tWebMallReward_Award[3302930]["EMoneyMono"] = tWebMallReward_Text["EMoneyMono"]
	
-- 486天石（赠）礼袋
	tWebMallReward_Award[3302931] = {}
	tWebMallReward_Award[3302931]["DeleteItem"] = {}
	tWebMallReward_Award[3302931]["DeleteItem"][1] = {}
	tWebMallReward_Award[3302931]["DeleteItem"][1]["Id"] = 3302931
	tWebMallReward_Award[3302931]["RewardEMoneyMono"] = {}
	tWebMallReward_Award[3302931]["RewardEMoneyMono"]["Value"] = 486
	tWebMallReward_Award[3302931]["Log"] = "0,0,3302931,1,12000694,2,3,486"
	-- tWebMallReward_Award[3302931]["Talk"] = tWebMallReward_Text["Talk"][3302931]
	-- tWebMallReward_Award[3302931]["EMoneyMono"] = tWebMallReward_Text["EMoneyMono"]
	
-- 540天石（赠）礼袋
	tWebMallReward_Award[3302932] = {}
	tWebMallReward_Award[3302932]["DeleteItem"] = {}
	tWebMallReward_Award[3302932]["DeleteItem"][1] = {}
	tWebMallReward_Award[3302932]["DeleteItem"][1]["Id"] = 3302932
	tWebMallReward_Award[3302932]["RewardEMoneyMono"] = {}
	tWebMallReward_Award[3302932]["RewardEMoneyMono"]["Value"] = 540
	tWebMallReward_Award[3302932]["Log"] = "0,0,3302932,1,12000694,2,3,540"
	-- tWebMallReward_Award[3302932]["Talk"] = tWebMallReward_Text["Talk"][3302932]
	-- tWebMallReward_Award[3302932]["EMoneyMono"] = tWebMallReward_Text["EMoneyMono"]
	
-- 675天石（赠）礼袋
	tWebMallReward_Award[3302933] = {}
	tWebMallReward_Award[3302933]["DeleteItem"] = {}
	tWebMallReward_Award[3302933]["DeleteItem"][1] = {}
	tWebMallReward_Award[3302933]["DeleteItem"][1]["Id"] = 3302933
	tWebMallReward_Award[3302933]["RewardEMoneyMono"] = {}
	tWebMallReward_Award[3302933]["RewardEMoneyMono"]["Value"] = 675
	tWebMallReward_Award[3302933]["Log"] = "0,0,3302933,1,12000694,2,3,675"
	-- tWebMallReward_Award[3302933]["Talk"] = tWebMallReward_Text["Talk"][3302933]
	-- tWebMallReward_Award[3302933]["EMoneyMono"] = tWebMallReward_Text["EMoneyMono"]
	
-- 810天石（赠）礼袋
	tWebMallReward_Award[3302934] = {}
	tWebMallReward_Award[3302934]["DeleteItem"] = {}
	tWebMallReward_Award[3302934]["DeleteItem"][1] = {}
	tWebMallReward_Award[3302934]["DeleteItem"][1]["Id"] = 3302934
	tWebMallReward_Award[3302934]["RewardEMoneyMono"] = {}
	tWebMallReward_Award[3302934]["RewardEMoneyMono"]["Value"] = 810
	tWebMallReward_Award[3302934]["Log"] = "0,0,3302934,1,12000694,2,3,810"
	-- tWebMallReward_Award[3302934]["Talk"] = tWebMallReward_Text["Talk"][3302934]
	-- tWebMallReward_Award[3302934]["EMoneyMono"] = tWebMallReward_Text["EMoneyMono"]
	
-- +3赤炼石礼包
	tWebMallReward_Award[3302935] = {}
	tWebMallReward_Award[3302935]["Space"] = 1
	tWebMallReward_Award[3302935]["DeleteItem"] = {}
	tWebMallReward_Award[3302935]["DeleteItem"][1] = {}
	tWebMallReward_Award[3302935]["DeleteItem"][1]["Id"] = 3302935
	tWebMallReward_Award[3302935]["RewardItem"] = {}
	-- +3赤炼石*2 id = 730003  monopoly = 0
	tWebMallReward_Award[3302935]["RewardItem"][1] = {}
	tWebMallReward_Award[3302935]["RewardItem"][1]["Id"] = 730003
	tWebMallReward_Award[3302935]["RewardItem"][1]["Attr"] = "0 2"
	tWebMallReward_Award[3302935]["Log"] = "0,0,3302935,1,12000694,2,730003,2"
	-- tWebMallReward_Award[3302935]["Talk"] = tWebMallReward_Text["Talk"][3302935]
	-- tWebMallReward_Award[3302935]["NoSpace"] = tWebMallReward_Text["NoSpace"][1]
	
-- +4赤炼石礼包
	tWebMallReward_Award[3302936] = {}
	tWebMallReward_Award[3302936]["Space"] = 1
	tWebMallReward_Award[3302936]["DeleteItem"] = {}
	tWebMallReward_Award[3302936]["DeleteItem"][1] = {}
	tWebMallReward_Award[3302936]["DeleteItem"][1]["Id"] = 3302936
	tWebMallReward_Award[3302936]["RewardItem"] = {}
	-- +4赤炼石*2 id = 730004  monopoly = 0
	tWebMallReward_Award[3302936]["RewardItem"][1] = {}
	tWebMallReward_Award[3302936]["RewardItem"][1]["Id"] = 730004
	tWebMallReward_Award[3302936]["RewardItem"][1]["Attr"] = "0 2"
	tWebMallReward_Award[3302936]["Log"] = "0,0,3302936,1,12000694,2,730004,2"
	-- tWebMallReward_Award[3302936]["Talk"] = tWebMallReward_Text["Talk"][3302936]
	-- tWebMallReward_Award[3302936]["NoSpace"] = tWebMallReward_Text["NoSpace"][1]
	
-- 1颗晶莹星陨石礼包
	tWebMallReward_Award[3302974] = {}
	tWebMallReward_Award[3302974]["DeleteItem"] = {}
	tWebMallReward_Award[3302974]["DeleteItem"][1] = {}
	tWebMallReward_Award[3302974]["DeleteItem"][1]["Id"] = 3302974
	tWebMallReward_Award[3302974]["RewardItem"] = {}
	-- 晶莹星陨石*2 id = 3009002  monopoly = 9
	tWebMallReward_Award[3302974]["RewardItem"][1] = {}
	tWebMallReward_Award[3302974]["RewardItem"][1]["Id"] = 3009002
	tWebMallReward_Award[3302974]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tWebMallReward_Award[3302974]["Log"] = "0,0,3302974,1,12000694,2,3009002,1"
	-- tWebMallReward_Award[3302974]["Talk"] = tWebMallReward_Text["Talk"][3302974]
	-- tWebMallReward_Award[3302974]["NoSpace"] = tWebMallReward_Text["NoSpace"][1]
	
-- 2颗晶莹星陨石礼包
	tWebMallReward_Award[3302937] = {}
	tWebMallReward_Award[3302937]["Space"] = 1
	tWebMallReward_Award[3302937]["DeleteItem"] = {}
	tWebMallReward_Award[3302937]["DeleteItem"][1] = {}
	tWebMallReward_Award[3302937]["DeleteItem"][1]["Id"] = 3302937
	tWebMallReward_Award[3302937]["RewardItem"] = {}
	-- 晶莹星陨石*2 id = 3009002  monopoly = 9
	tWebMallReward_Award[3302937]["RewardItem"][1] = {}
	tWebMallReward_Award[3302937]["RewardItem"][1]["Id"] = 3009002
	tWebMallReward_Award[3302937]["RewardItem"][1]["Attr"] = "0 2 0 2880 1"
	tWebMallReward_Award[3302937]["Log"] = "0,0,3302937,1,12000694,2,3009002,2"
	-- tWebMallReward_Award[3302937]["Talk"] = tWebMallReward_Text["Talk"][3302937]
	-- tWebMallReward_Award[3302937]["NoSpace"] = tWebMallReward_Text["NoSpace"][1]
	
-- 3颗晶莹星陨石礼包
	tWebMallReward_Award[3302938] = {}
	tWebMallReward_Award[3302938]["Space"] = 2
	tWebMallReward_Award[3302938]["DeleteItem"] = {}
	tWebMallReward_Award[3302938]["DeleteItem"][1] = {}
	tWebMallReward_Award[3302938]["DeleteItem"][1]["Id"] = 3302938
	tWebMallReward_Award[3302938]["RewardItem"] = {}
	-- 晶莹星陨石*3 id = 3009002  monopoly = 9
	tWebMallReward_Award[3302938]["RewardItem"][1] = {}
	tWebMallReward_Award[3302938]["RewardItem"][1]["Id"] = 3009002
	tWebMallReward_Award[3302938]["RewardItem"][1]["Attr"] = "0 3 0 2880 1"
	tWebMallReward_Award[3302938]["Log"] = "0,0,3302938,1,12000694,2,3009002,3"
	-- tWebMallReward_Award[3302938]["Talk"] = tWebMallReward_Text["Talk"][3302938]
	-- tWebMallReward_Award[3302938]["NoSpace"] = tWebMallReward_Text["NoSpace"][1]
	
-- 4颗晶莹星陨石礼包
	tWebMallReward_Award[3302939] = {}
	tWebMallReward_Award[3302939]["Space"] = 3
	tWebMallReward_Award[3302939]["DeleteItem"] = {}
	tWebMallReward_Award[3302939]["DeleteItem"][1] = {}
	tWebMallReward_Award[3302939]["DeleteItem"][1]["Id"] = 3302939
	tWebMallReward_Award[3302939]["RewardItem"] = {}
	-- 晶莹星陨石*4 id = 3009002  monopoly = 9
	tWebMallReward_Award[3302939]["RewardItem"][1] = {}
	tWebMallReward_Award[3302939]["RewardItem"][1]["Id"] = 3009002
	tWebMallReward_Award[3302939]["RewardItem"][1]["Attr"] = "0 4 0 2880 1"
	tWebMallReward_Award[3302939]["Log"] = "0,0,3302939,1,12000694,2,3009002,4"
	-- tWebMallReward_Award[3302939]["Talk"] = tWebMallReward_Text["Talk"][3302939]
	-- tWebMallReward_Award[3302939]["NoSpace"] = tWebMallReward_Text["NoSpace"][1]
	
-- 5颗晶莹星陨石礼包
	tWebMallReward_Award[3302940] = {}
	tWebMallReward_Award[3302940]["Space"] = 4
	tWebMallReward_Award[3302940]["DeleteItem"] = {}
	tWebMallReward_Award[3302940]["DeleteItem"][1] = {}
	tWebMallReward_Award[3302940]["DeleteItem"][1]["Id"] = 3302940
	tWebMallReward_Award[3302940]["RewardItem"] = {}
	-- 晶莹星陨石*5 id = 3009002  monopoly = 9
	tWebMallReward_Award[3302940]["RewardItem"][1] = {}
	tWebMallReward_Award[3302940]["RewardItem"][1]["Id"] = 3009002
	tWebMallReward_Award[3302940]["RewardItem"][1]["Attr"] = "0 5 0 2880 1"
	tWebMallReward_Award[3302940]["Log"] = "0,0,3302940,1,12000694,2,3009002,5"
	-- tWebMallReward_Award[3302940]["Talk"] = tWebMallReward_Text["Talk"][3302940]
	-- tWebMallReward_Award[3302940]["NoSpace"] = tWebMallReward_Text["NoSpace"][1]
	
-- 1颗璀璨星陨石超大礼包
	tWebMallReward_Award[3302985] = {}
	tWebMallReward_Award[3302985]["DeleteItem"] = {}
	tWebMallReward_Award[3302985]["DeleteItem"][1] = {}
	tWebMallReward_Award[3302985]["DeleteItem"][1]["Id"] = 3302985
	tWebMallReward_Award[3302985]["RewardItem"] = {}
	-- 璀璨星陨石*1 id = 3009003  monopoly = 9
	tWebMallReward_Award[3302985]["RewardItem"][1] = {}
	tWebMallReward_Award[3302985]["RewardItem"][1]["Id"] = 3009003
	tWebMallReward_Award[3302985]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tWebMallReward_Award[3302985]["Log"] = "0,0,3302985,1,12000694,2,3009003,1"
	-- tWebMallReward_Award[3302985]["Talk"] = tWebMallReward_Text["Talk"][3302985]
	-- tWebMallReward_Award[3302985]["NoSpace"] = tWebMallReward_Text["NoSpace"][1]
	
-- 羊驼碎片微型礼包
	tWebMallReward_Award[3302941] = {}
	tWebMallReward_Award[3302941]["DeleteItem"] = {}
	tWebMallReward_Award[3302941]["DeleteItem"][1] = {}
	tWebMallReward_Award[3302941]["DeleteItem"][1]["Id"] = 3302941
	tWebMallReward_Award[3302941]["RewardItem"] = {}
	-- 肥萌圆羊驼坐骑碎片*5 id = 3302950  monopoly = 11
	tWebMallReward_Award[3302941]["RewardItem"][1] = {}
	tWebMallReward_Award[3302941]["RewardItem"][1]["Id"] = 3302950
	tWebMallReward_Award[3302941]["RewardItem"][1]["Attr"] = "0 5"
	tWebMallReward_Award[3302941]["Log"] = "0,0,3302941,1,12000694,2,3302950,5"
	-- tWebMallReward_Award[3302941]["Talk"] = tWebMallReward_Text["Talk"][3302941]
	-- tWebMallReward_Award[3302941]["NoSpace"] = tWebMallReward_Text["NoSpace"][1]
	
-- 羊驼碎片小礼包
	tWebMallReward_Award[3302942] = {}
	tWebMallReward_Award[3302942]["DeleteItem"] = {}
	tWebMallReward_Award[3302942]["DeleteItem"][1] = {}
	tWebMallReward_Award[3302942]["DeleteItem"][1]["Id"] = 3302942
	tWebMallReward_Award[3302942]["RewardItem"] = {}
	-- 肥萌圆羊驼坐骑碎片*10 id = 3302950  monopoly = 11
	tWebMallReward_Award[3302942]["RewardItem"][1] = {}
	tWebMallReward_Award[3302942]["RewardItem"][1]["Id"] = 3302950
	tWebMallReward_Award[3302942]["RewardItem"][1]["Attr"] = "0 10"
	tWebMallReward_Award[3302942]["Log"] = "0,0,3302942,1,12000694,2,3302950,10"
	-- tWebMallReward_Award[3302942]["Talk"] = tWebMallReward_Text["Talk"][3302942]
	-- tWebMallReward_Award[3302942]["NoSpace"] = tWebMallReward_Text["NoSpace"][1]
	
-- 羊驼碎片大礼包
	tWebMallReward_Award[3302943] = {}
	tWebMallReward_Award[3302943]["DeleteItem"] = {}
	tWebMallReward_Award[3302943]["DeleteItem"][1] = {}
	tWebMallReward_Award[3302943]["DeleteItem"][1]["Id"] = 3302943
	tWebMallReward_Award[3302943]["RewardItem"] = {}
	-- 肥萌圆羊驼坐骑碎片*20 id = 3302950  monopoly = 11
	tWebMallReward_Award[3302943]["RewardItem"][1] = {}
	tWebMallReward_Award[3302943]["RewardItem"][1]["Id"] = 3302950
	tWebMallReward_Award[3302943]["RewardItem"][1]["Attr"] = "0 20"
	tWebMallReward_Award[3302943]["Log"] = "0,0,3302943,1,12000694,2,3302950,20"
	-- tWebMallReward_Award[3302943]["Talk"] = tWebMallReward_Text["Talk"][3302943]
	-- tWebMallReward_Award[3302943]["NoSpace"] = tWebMallReward_Text["NoSpace"][1]
	
-- 羊驼碎片超大礼包
	tWebMallReward_Award[3302944] = {}
	tWebMallReward_Award[3302944]["DeleteItem"] = {}
	tWebMallReward_Award[3302944]["DeleteItem"][1] = {}
	tWebMallReward_Award[3302944]["DeleteItem"][1]["Id"] = 3302944
	tWebMallReward_Award[3302944]["RewardItem"] = {}
	-- 肥萌圆羊驼坐骑碎片*20 id = 3302950  monopoly = 11
	tWebMallReward_Award[3302944]["RewardItem"][1] = {}
	tWebMallReward_Award[3302944]["RewardItem"][1]["Id"] = 3302950
	tWebMallReward_Award[3302944]["RewardItem"][1]["Attr"] = "0 50"
	tWebMallReward_Award[3302944]["Log"] = "0,0,3302944,1,12000694,2,3302950,50"
	-- tWebMallReward_Award[3302944]["Talk"] = tWebMallReward_Text["Talk"][3302944]
	-- tWebMallReward_Award[3302944]["NoSpace"] = tWebMallReward_Text["NoSpace"][1]
	
-- 固化石碎片礼包
	tWebMallReward_Award[3302945] = {}
	tWebMallReward_Award[3302945]["DeleteItem"] = {}
	tWebMallReward_Award[3302945]["DeleteItem"][1] = {}
	tWebMallReward_Award[3302945]["DeleteItem"][1]["Id"] = 3302945
	tWebMallReward_Award[3302945]["RewardItem"] = {}
	-- 固化石碎片*5 id = 3005593  monopoly = 0
	tWebMallReward_Award[3302945]["RewardItem"][1] = {}
	tWebMallReward_Award[3302945]["RewardItem"][1]["Id"] = 3005593
	tWebMallReward_Award[3302945]["RewardItem"][1]["Attr"] = "0 5"
	tWebMallReward_Award[3302945]["Log"] = "0,0,3302945,1,12000694,2,3005593,5"
	-- tWebMallReward_Award[3302945]["Talk"] = tWebMallReward_Text["Talk"][3302945]
	-- tWebMallReward_Award[3302945]["NoSpace"] = tWebMallReward_Text["NoSpace"][1]
	
-- 固化石微型礼包
	tWebMallReward_Award[3302946] = {}
	tWebMallReward_Award[3302946]["Space"] = 1
	tWebMallReward_Award[3302946]["DeleteItem"] = {}
	tWebMallReward_Award[3302946]["DeleteItem"][1] = {}
	tWebMallReward_Award[3302946]["DeleteItem"][1]["Id"] = 3302946
	tWebMallReward_Award[3302946]["RewardItem"] = {}
	-- 固化石*1 id = 723694 monopoly = 0
	tWebMallReward_Award[3302946]["RewardItem"][1] = {}
	tWebMallReward_Award[3302946]["RewardItem"][1]["Id"] = 723694
	tWebMallReward_Award[3302946]["RewardItem"][1]["Attr"] = "0 1"
	-- 固化石碎片*2 id = 3005593  monopoly = 0
	tWebMallReward_Award[3302946]["RewardItem"][2] = {}
	tWebMallReward_Award[3302946]["RewardItem"][2]["Id"] = 3005593
	tWebMallReward_Award[3302946]["RewardItem"][2]["Attr"] = "0 2"
	tWebMallReward_Award[3302946]["Log"] = "0,0,3302946,1,12000694,2,723694[3005593],1[2]"
	-- tWebMallReward_Award[3302946]["Talk"] = tWebMallReward_Text["Talk"][3302946]
	-- tWebMallReward_Award[3302946]["NoSpace"] = tWebMallReward_Text["NoSpace"][1]
-- 固化石小型礼包
	tWebMallReward_Award[3302947] = {}
	tWebMallReward_Award[3302947]["Space"] = 1
	tWebMallReward_Award[3302947]["DeleteItem"] = {}
	tWebMallReward_Award[3302947]["DeleteItem"][1] = {}
	tWebMallReward_Award[3302947]["DeleteItem"][1]["Id"] = 3302947
	tWebMallReward_Award[3302947]["RewardItem"] = {}
	-- 固化石*1 id = 723694 monopoly = 0
	tWebMallReward_Award[3302947]["RewardItem"][1] = {}
	tWebMallReward_Award[3302947]["RewardItem"][1]["Id"] = 723694
	tWebMallReward_Award[3302947]["RewardItem"][1]["Attr"] = "0 1"
	-- 固化石碎片*5 id = 3005593  monopoly = 0
	tWebMallReward_Award[3302947]["RewardItem"][2] = {}
	tWebMallReward_Award[3302947]["RewardItem"][2]["Id"] = 3005593
	tWebMallReward_Award[3302947]["RewardItem"][2]["Attr"] = "0 5"
	tWebMallReward_Award[3302947]["Log"] = "0,0,3302947,1,12000694,2,723694[3005593],1[5]"
	-- tWebMallReward_Award[3302947]["Talk"] = tWebMallReward_Text["Talk"][3302947]
	-- tWebMallReward_Award[3302947]["NoSpace"] = tWebMallReward_Text["NoSpace"][1]
	
-- 固化石大型礼包
	tWebMallReward_Award[3302948] = {}
	tWebMallReward_Award[3302948]["Space"] = 1
	tWebMallReward_Award[3302948]["DeleteItem"] = {}
	tWebMallReward_Award[3302948]["DeleteItem"][1] = {}
	tWebMallReward_Award[3302948]["DeleteItem"][1]["Id"] = 3302948
	tWebMallReward_Award[3302948]["RewardItem"] = {}
	-- 固化石*2 id = 723694 monopoly = 0
	tWebMallReward_Award[3302948]["RewardItem"][1] = {}
	tWebMallReward_Award[3302948]["RewardItem"][1]["Id"] = 723694
	tWebMallReward_Award[3302948]["RewardItem"][1]["Attr"] = "0 2"
	tWebMallReward_Award[3302948]["Log"] = "0,0,3302948,1,12000694,2,723694,2"
	-- tWebMallReward_Award[3302948]["Talk"] = tWebMallReward_Text["Talk"][3302948]
	-- tWebMallReward_Award[3302948]["NoSpace"] = tWebMallReward_Text["NoSpace"][1]
	
-- 固化石超大礼包
	tWebMallReward_Award[3302949] = {}
	tWebMallReward_Award[3302949]["Space"] = 2
	tWebMallReward_Award[3302949]["DeleteItem"] = {}
	tWebMallReward_Award[3302949]["DeleteItem"][1] = {}
	tWebMallReward_Award[3302949]["DeleteItem"][1]["Id"] = 3302949
	tWebMallReward_Award[3302949]["RewardItem"] = {}
	-- 固化石*2 id = 723694 monopoly = 0
	tWebMallReward_Award[3302949]["RewardItem"][1] = {}
	tWebMallReward_Award[3302949]["RewardItem"][1]["Id"] = 723694
	tWebMallReward_Award[3302949]["RewardItem"][1]["Attr"] = "0 2"
	-- 固化石碎片*5 id = 3005593  monopoly = 0
	tWebMallReward_Award[3302949]["RewardItem"][2] = {}
	tWebMallReward_Award[3302949]["RewardItem"][2]["Id"] = 3005593
	tWebMallReward_Award[3302949]["RewardItem"][2]["Attr"] = "0 5"
	tWebMallReward_Award[3302949]["Log"] = "0,0,3302949,1,12000694,2,723694[3005593],2[5]"
	-- tWebMallReward_Award[3302949]["Talk"] = tWebMallReward_Text["Talk"][3302949]
	-- tWebMallReward_Award[3302949]["NoSpace"] = tWebMallReward_Text["NoSpace"][1]
	
-- 肥萌圆羊驼坐骑碎片
	tWebMallReward_Award[3302950] = {}
	tWebMallReward_Award[3302950]["Space"] = 1
	-- 30天时效1%神佑的肥萌圆羊驼（赠）*1 id = 200499 monopoly = 0
	tWebMallReward_Award[3302950][1] = {}
	tWebMallReward_Award[3302950][1]["DeleteItem"] = {}
	tWebMallReward_Award[3302950][1]["DeleteItem"][1] = {}
	tWebMallReward_Award[3302950][1]["DeleteItem"][1]["Id"] = 3302950
	tWebMallReward_Award[3302950][1]["DeleteItem"][1]["ItemNum"] = 5
	tWebMallReward_Award[3302950][1]["RewardItem"] = {}
	tWebMallReward_Award[3302950][1]["RewardItem"][1] = {}
	tWebMallReward_Award[3302950][1]["RewardItem"][1]["Id"] = 200499
	tWebMallReward_Award[3302950][1]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	tWebMallReward_Award[3302950][1]["Log"] = "0,0,3302950,5,12000694,2,200499,1"
	-- tWebMallReward_Award[3302950][1]["Talk"] = tWebMallReward_Text["Talk"][3302950][1]
	-- tWebMallReward_Award[3302950][1]["NoItem"] = tWebMallReward_Text["NoItem"][3302950][1]
	-- tWebMallReward_Award[3302950][1]["NoSpace"] = tWebMallReward_Text["NoSpace"][3302950]
	-- 180天时效1%神佑的肥萌圆羊驼（赠）*1 id = 200499 monopoly = 0
	tWebMallReward_Award[3302950][2] = {}
	tWebMallReward_Award[3302950][2]["DeleteItem"] = {}
	tWebMallReward_Award[3302950][2]["DeleteItem"][1] = {}
	tWebMallReward_Award[3302950][2]["DeleteItem"][1]["Id"] = 3302950
	tWebMallReward_Award[3302950][2]["DeleteItem"][1]["ItemNum"] = 50
	tWebMallReward_Award[3302950][2]["RewardItem"] = {}
	tWebMallReward_Award[3302950][2]["RewardItem"][1] = {}
	tWebMallReward_Award[3302950][2]["RewardItem"][1]["Id"] = 200499
	tWebMallReward_Award[3302950][2]["RewardItem"][1]["Attr"] = "0 1 3 259200 1 0 0 1"
	tWebMallReward_Award[3302950][2]["Log"] = "0,0,3302950,50,12000694,2,200499,1"
	-- tWebMallReward_Award[3302950][2]["Talk"] = tWebMallReward_Text["Talk"][3302950][2]
	-- tWebMallReward_Award[3302950][2]["NoItem"] = tWebMallReward_Text["NoItem"][3302950][2]
	-- tWebMallReward_Award[3302950][2]["NoSpace"] = tWebMallReward_Text["NoSpace"][3302950]
	-- 永久时效1%神佑的肥萌圆羊驼（赠）*1 id = 200499 monopoly = 0
	tWebMallReward_Award[3302950][3] = {}
	tWebMallReward_Award[3302950][3]["DeleteItem"] = {}
	tWebMallReward_Award[3302950][3]["DeleteItem"][1] = {}
	tWebMallReward_Award[3302950][3]["DeleteItem"][1]["Id"] = 3302950
	tWebMallReward_Award[3302950][3]["DeleteItem"][1]["ItemNum"] = 100
	tWebMallReward_Award[3302950][3]["RewardItem"] = {}
	tWebMallReward_Award[3302950][3]["RewardItem"][1] = {}
	tWebMallReward_Award[3302950][3]["RewardItem"][1]["Id"] = 200499
	tWebMallReward_Award[3302950][3]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tWebMallReward_Award[3302950][3]["Log"] = "0,0,3302950,100,12000694,2,200499,1"
	-- tWebMallReward_Award[3302950][3]["Talk"] = tWebMallReward_Text["Talk"][3302950][3]
	-- tWebMallReward_Award[3302950][3]["NoItem"] = tWebMallReward_Text["NoItem"][3302950][3]
	-- tWebMallReward_Award[3302950][3]["NoSpace"] = tWebMallReward_Text["NoSpace"][3302950]
	
-- 凤凰传奇武器外套包
	tWebMallReward_Award[3302951] = {}
	-- 凤凰传奇短武器外套*1 id = 350085 monopoly = 0
	tWebMallReward_Award[3302951][1] = {}
	tWebMallReward_Award[3302951][1]["DeleteItem"] = {}
	tWebMallReward_Award[3302951][1]["DeleteItem"][1] = {}
	tWebMallReward_Award[3302951][1]["DeleteItem"][1]["Id"] = 3302951
	tWebMallReward_Award[3302951][1]["DeleteItem"][1]["ItemNum"] = 1
	tWebMallReward_Award[3302951][1]["RewardItem"] = {}
	tWebMallReward_Award[3302951][1]["RewardItem"][1] = {}
	tWebMallReward_Award[3302951][1]["RewardItem"][1]["Id"] = 350085
	tWebMallReward_Award[3302951][1]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	tWebMallReward_Award[3302951][1]["Log"] = "0,0,3302951,5,12000694,2,350085,1"
	-- tWebMallReward_Award[3302951][1]["Talk"] = tWebMallReward_Text["Talk"][3302951][1]
	-- tWebMallReward_Award[3302951][1]["NoSpace"] = tWebMallReward_Text["NoSpace"][3302951]
	-- tWebMallReward_Award[3302951][1]["NoItem"] = tWebMallReward_Text["NoItem"][3302951][1]
	
	-- 凤凰传奇长武器外套*1 id = 360159 monopoly = 0
	tWebMallReward_Award[3302951][2] = {}
	tWebMallReward_Award[3302951][2]["DeleteItem"] = {}
	tWebMallReward_Award[3302951][2]["DeleteItem"][1] = {}
	tWebMallReward_Award[3302951][2]["DeleteItem"][1]["Id"] = 3302951
	tWebMallReward_Award[3302951][2]["DeleteItem"][1]["ItemNum"] = 1
	tWebMallReward_Award[3302951][2]["RewardItem"] = {}
	tWebMallReward_Award[3302951][2]["RewardItem"][1] = {}
	tWebMallReward_Award[3302951][2]["RewardItem"][1]["Id"] = 360159
	tWebMallReward_Award[3302951][2]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	tWebMallReward_Award[3302951][2]["Log"] = "0,0,3302951,1,12000694,2,360159,1"
	-- tWebMallReward_Award[3302951][2]["Talk"] = tWebMallReward_Text["Talk"][3302951][2]
	-- tWebMallReward_Award[3302951][2]["NoSpace"] = tWebMallReward_Text["NoSpace"][3302951]
	-- tWebMallReward_Award[3302951][2]["NoItem"] = tWebMallReward_Text["NoItem"][3302951][2]
	
local tWebMallReward_Confirm = {}
	tWebMallReward_Confirm["Num"] = {}
	tWebMallReward_Confirm["Num"][3302950] = {}
	tWebMallReward_Confirm["Num"][3302950][1] = 5
	tWebMallReward_Confirm["Num"][3302950][2] = 50
	tWebMallReward_Confirm["Num"][3302950][3] = 100
	-- tWebMallReward_Confirm["Name"] = {}
	-- tWebMallReward_Confirm["Name"][3302950] = {}
	-- tWebMallReward_Confirm["Name"][3302950][1] = tWebMallReward_Text["Name"][3302950][1]
	-- tWebMallReward_Confirm["Name"][3302950][2] = tWebMallReward_Text["Name"][3302950][2]
	-- tWebMallReward_Confirm["Name"][3302950][3] = tWebMallReward_Text["Name"][3302950][3]
	-- tWebMallReward_Confirm["Name"][3302951] = {}
	-- tWebMallReward_Confirm["Name"][3302951][1] = tWebMallReward_Text["Name"][3302951][1]
	-- tWebMallReward_Confirm["Name"][3302951][2] = tWebMallReward_Text["Name"][3302951][2]
	
local tWebMallReward_Roulette = {}
	tWebMallReward_Roulette[3302916] = {}
	tWebMallReward_Roulette[3302916]["EventData"] = 157
	tWebMallReward_Roulette[3302916]["DataType"] = 94
	tWebMallReward_Roulette[3302916]["TaskId"] = 3841
	tWebMallReward_Roulette[3302916]["One"] = 1
	tWebMallReward_Roulette[3302916]["Ten"] = 10
	
	
------------------------------------------------------------------------------------------
-- 物品使用
function WebMallReward_UseItem(nItemId,nIndex)
	local nUserId = Get_UserId()
	
	-- 判断物品是否存在
	if nIndex ~= nil then
		if not Item_ChkMulItem(nItemId,nItemId,tWebMallReward_Award[nItemId][nIndex]["DeleteItem"][1]["ItemNum"]) then
			Sys_MsgBox(tWebMallReward_Award[nItemId][nIndex]["NoItem"])
			return
		end
	else
		if not Item_ChkItem(nItemId) then
			return
		end
	end
	
	-- 判断背包空间
	if tWebMallReward_Award[nItemId]["Space"] ~= nil then
		if not User_CheckLeftSpace(tWebMallReward_Award[nItemId]["Space"],nUserId) then
			if nIndex == nil then
				Sys_MsgBox(string.format(tWebMallReward_Text["NoSpace"][1],tWebMallReward_Award[nItemId]["Space"]))
			else
				Sys_MsgBox(tWebMallReward_Text["NoSpace"][nItemId])
			end
			return
		end
	end
	-- 判断是可选包（合成）还是非可选包
	if nIndex == nil then
		RewardTemplate_UseItem(tWebMallReward_Award[nItemId],nUserId)
		return
	end
	-- 判断物品是否存在
	--	if not Item_ChkMulItem(nItemId,nItemId,tWebMallReward_Award[nItemId][nIndex]["DeleteItem"][1]["ItemNum"]) then
	--		Sys_MsgBox(tWebMallReward_Award[nItemId][nIndex]["NoItem"])
	--		return
	--	end
	RewardTemplate_UseItem(tWebMallReward_Award[nItemId][nIndex],nUserId)
end

-- 二次确认
function WebMallReward_Confirm(nItemId,nIndex)
	-- 判断物品是否存在
	if not Item_ChkItem(nItemId) then
		Sys_MsgBox(tWebMallReward_Award[nItemId][nIndex]["NoItem"])
		return
	end
	--初始化对白和选项
	local sText = tWebMallReward_Confirm["Name"][nItemId][nIndex]
	
	tItem[nItemId]["Text211"] = string.format(tWebMallReward_Text[nItemId]["Text211"],sText)
	tItem[nItemId]["Option211"] = tWebMallReward_Text[nItemId]["Option211"]
	if tWebMallReward_Confirm["Num"][nItemId] ~= nil then
		tItem[nItemId]["Option211"] = string.format(tWebMallReward_Text[nItemId]["Option211"],tWebMallReward_Confirm["Num"][nItemId][nIndex])
	end
	tItem[nItemId]["OptionFunc211"]=string.format("WebMallReward_UseItem</N>%d</N>%d",nItemId,nIndex)
	
	LinkItemGossipFunc_New(nItemId,"2-1")
end

-- 打开轮盘
function WebMallReward_Roulette_Use(nItemId)
	local nEvent = tWebMallReward_Roulette[nItemId]["EventData"]
	local nType = tWebMallReward_Roulette[nItemId]["DataType"] 
	local nTaskId = tWebMallReward_Roulette[nItemId]["TaskId"] 
	local nTen = tWebMallReward_Roulette[nItemId]["Ten"]
	local nUserId = Get_UserId()
	-- 判断隔天
	if Task_StcInterval(nEvent,nType,1,4,nUserId) then
		Task_SetStatistic(nEvent,nType,0,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	end
	-- 判断次数
	if Task_ChkStcValue(nEvent,nType,">=",nTen,nUserId) then
		Sys_MsgBox(tWebMallReward_Text["TimesLimit"][nItemId]["OneTimes"])
		return
	end
	Roulette_Use(nTaskId)
end
	
-- 轮盘单抽
function WebMallReward_Roulette_Extract(nItemId)
	local nEvent = tWebMallReward_Roulette[nItemId]["EventData"]
	local nType = tWebMallReward_Roulette[nItemId]["DataType"] 
	local nTaskId = tWebMallReward_Roulette[nItemId]["TaskId"] 
	local nOne = tWebMallReward_Roulette[nItemId]["One"]
	local nTen = tWebMallReward_Roulette[nItemId]["Ten"]
	local nUserId = Get_UserId()
	if not Item_ChkMulItem(nItemId,nItemId,nOne) then
		User_TalkChannel2005(tWebMallReward_Text["NoItem"][nItemId][1])
		return
	end
	-- 判断隔天
	if Task_StcInterval(nEvent,nType,1,4,nUserId) then
		Task_SetStatistic(nEvent,nType,0,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	end
	-- 判断次数
	if Task_ChkStcValue(nEvent,nType,">=",nTen,nUserId) then
		Sys_MsgBox(tWebMallReward_Text["TimesLimit"][nItemId]["OneTimes"])
		return
	end
	Roulette_Extract(nTaskId)
end
	
-- 轮盘十连抽
function WebMallReward_Roulette_TenEvenPumping(nItemId)
	local nEvent = tWebMallReward_Roulette[nItemId]["EventData"]
	local nType = tWebMallReward_Roulette[nItemId]["DataType"] 
	local nTaskId = tWebMallReward_Roulette[nItemId]["TaskId"] 
	local nTen = tWebMallReward_Roulette[nItemId]["Ten"]
	local nUserId = Get_UserId()
	if not Item_ChkMulItem(nItemId,nItemId,nTen) then
		User_TalkChannel2005(tWebMallReward_Text["NoItem"][nItemId][2])
		return
	end
	-- 判断隔天
	if Task_StcInterval(nEvent,nType,1,4,nUserId) then
		Task_SetStatistic(nEvent,nType,0,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	end
	-- 判断次数
	if Task_ChkStcValue(nEvent,nType,">",0,nUserId) then
		local nData = Get_UserStatisticValue(nEvent,nType,nUserId)
		local sMsg = string.format(tWebMallReward_Text["TimesLimit"][nItemId]["TenTimes"],nData)
		Sys_MsgBox(sMsg)
		return
	end
	Roulette_TenEvenPumping(nTaskId)
end

-- ----------------------------------------------------------------------------
-- -- 财富幸运礼包
-- tItem[3302916] = tItem[3302916] or {}
-- tItem[3302916]["Function"] = function(nItemId,sItemName)
	-- RouletteMould_Main(tWebMallReward_Roulette[nItemId]["TaskId"])
-- end	

-- tItem[3302974] = tItem[3302974] or {}
-- tItem[3302974]["Function"] = function(nItemId,sItemName)
	-- WebMallReward_UseItem(nItemId)
-- end	

tItem[3302985] = tItem[3302985] or {}
tItem[3302985]["Function"] = function(nItemId,sItemName)
	WebMallReward_UseItem(nItemId)
end	

for i = 3302922,3302949 do
	tItem[i] = tItem[i] or {}
	tItem[i]["Function"] = function(nItemId,sItemName)
		WebMallReward_UseItem(nItemId)
	end	
end

-- -- 肥萌圆羊驼坐骑碎片
-- tItemFace[3302950] = 435
-- tItem[3302950] = tItem[3302950] or {}
-- tItem[3302950]["Text1-1"] = {111,112,113,114,115,116,117,118}
-- tItem[3302950]["Text111"] = tWebMallReward_Text[3302950]["Text111"]
-- tItem[3302950]["Text112"] = tWebMallReward_Text[3302950]["Text112"]
-- tItem[3302950]["Text113"] = tWebMallReward_Text[3302950]["Text113"]
-- tItem[3302950]["Text114"] = tWebMallReward_Text[3302950]["Text114"]
-- tItem[3302950]["Text115"] = tWebMallReward_Text[3302950]["Text115"]
-- tItem[3302950]["Text116"] = tWebMallReward_Text[3302950]["Text116"]
-- tItem[3302950]["Text117"] = tWebMallReward_Text[3302950]["Text117"]
-- tItem[3302950]["Text118"] = tWebMallReward_Text[3302950]["Text118"]
-- tItem[3302950]["ChkFunc1-1"]= function()
	-- return true
-- end
-- tItem[3302950]["tOption1-1"] = {111,112,113}
-- tItem[3302950]["Option111"] = tWebMallReward_Text[3302950]["Option111"]
-- tItem[3302950]["OptionFunc111"]="WebMallReward_Confirm</N>3302950</N>1"
-- tItem[3302950]["Option112"] = tWebMallReward_Text[3302950]["Option112"]
-- tItem[3302950]["OptionFunc112"]="WebMallReward_Confirm</N>3302950</N>2"
-- tItem[3302950]["Option113"] = tWebMallReward_Text[3302950]["Option113"]
-- tItem[3302950]["OptionFunc113"]="WebMallReward_Confirm</N>3302950</N>3"

-- -- 二次确认
-- tItem[3302950]["Text2-1"] = {211}
-- tItem[3302950]["tOption2-1"] = {211,212}
-- tItem[3302950]["Option212"] = tWebMallReward_Text[3302950]["Option212"]
-- tItem[3302950]["OptionPoint212"] = "1-1"

-- -- 凤凰传奇武器外套：
-- tItemFace[3302951] = 436
-- tItem[3302951] = tItem[3302951] or {}
-- tItem[3302951]["Text1-1"] = {111}
-- tItem[3302951]["Text111"] = tWebMallReward_Text[3302951]["Text111"]
-- tItem[3302951]["ChkFunc1-1"]= function()
	-- return true
-- end
-- tItem[3302951]["tOption1-1"] = {111,112,113}
-- tItem[3302951]["Option111"] = tWebMallReward_Text[3302951]["Option111"]
-- tItem[3302951]["OptionFunc111"]="WebMallReward_Confirm</N>3302951</N>1"
-- tItem[3302951]["Option112"] = tWebMallReward_Text[3302951]["Option112"]
-- tItem[3302951]["OptionFunc112"]="WebMallReward_Confirm</N>3302951</N>2"

-- -- 二次确认
-- tItem[3302951]["Text2-1"] = {211}
-- tItem[3302951]["tOption2-1"] = {211,212}
-- tItem[3302951]["Option212"] = tWebMallReward_Text[3302951]["Option212"]
-- tItem[3302951]["OptionPoint212"] = "1-1"

	
	