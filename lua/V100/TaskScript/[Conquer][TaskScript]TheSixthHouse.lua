------------------------------------------------------------------------------------
--Name:		160412[英文征服][任务脚本]同步简体6级房屋
--Purpose:		6级房屋及相关功能制作
--Creator:		许乐
--Created:		2016/04/12
------------------------------------------------------------------------------------
-- 前缀
-- TheSixthHouse_
-----------------------------------------------------------
--#map: 			3990  3992
-- #npc:			18950-18959    		19035-19070
-- #npctype: 	3904-3905  				3920-3925				3940-3970
-- #itemtype:	3008100-3008103  	3008136-3008145
-- #stc:			14002-14006  			14034-14045			14056-14064		14141-14150
-- #Logid:		10003003-10003004
---------------------------------------------------------------
--------------- 掩码说明
--stc(140,02) 每日使用凝神香果300分钟经验限制一次

--stc(140,03) 表示六级房屋升级成功（不分方式）

--stc(140,04)   
--stc(140,05) 表示宠物饲养开通成功（不分方式）

--stc(140,06) 记录六级房屋家具数量的上限

--stc(140,34) - stc(140,42) 表示玩家当前种植了哪个种子(9块地)

--stc(140,43) 表示玩家共种植了多少种子
--stc(140,44) 表示玩家开垦了多少田地

--stc(140,45) 记录当天是否开启过建材礼包 一天一次

--stc(140,56) - stc(140,57) 	表示玩家领养的某种1-2级宠物
--stc(141,41) - stc(141,48) 		表示玩家领养的某种1-3级宠物的经验值

--stc(140,58)	上交材料开通制作家具功能   等待1天开放
--stc(140,59)	表示制作家具开通成功（不分方式）

--stc(140,60)	表示签到包签到的天数
--stc(140,61)		表示签到包当天是否签到过

--stc(140,62) 	表示每天用金矿石兑换建材的次数

--stc(140,63) - stc(140,64) 
--stc(141,49) - stc(144,50) 

---------------------------------------------------数据配置-------------------------------------------------------------------
local tTheSixthHouse_Cont = {}
	tTheSixthHouse_Cont["LevelTop"] = G_User_MaxLev
	
	tTheSixthHouse_Cont["Emoney"] = 8999		--升级房屋 所需天石数
	tTheSixthHouse_Cont["Open"] = 1999			--开通区域所需天石数
	tTheSixthHouse_Cont["PackEmoneyPrice"] = 36  		-- 两个六级房屋建材包价格
	
	tTheSixthHouse_Cont["AchievementId"] = 10122
	
	tTheSixthHouse_Cont["MapDoc"] = {}
	tTheSixthHouse_Cont["MapDoc"][1] = 3990
	tTheSixthHouse_Cont["MapDoc"][2] = 3995

	tTheSixthHouse_Cont["ResLev"] = 6
	tTheSixthHouse_Cont["PortalX"] = 127
	tTheSixthHouse_Cont["PortalY"] = 136
	
	tTheSixthHouse_Cont["House_Type"] = 1024
	
	tTheSixthHouse_Cont["BagSpace_1"] = 1
	
	-- 升级移动4类型的npc位置
	tTheSixthHouse_Cont["NpcX"] = {}
	tTheSixthHouse_Cont["NpcX"][1] = 122
	tTheSixthHouse_Cont["NpcX"][2] = 135
	tTheSixthHouse_Cont["NpcX"][3] = 139
	
	tTheSixthHouse_Cont["NpcY"] = {}
	tTheSixthHouse_Cont["NpcY"][1] = 114
	tTheSixthHouse_Cont["NpcY"][2] = 114
	tTheSixthHouse_Cont["NpcY"][3] = 121
	
local tTheSixthHouse_Npc = {}
	--18950	6级房屋管理员
	tTheSixthHouse_Npc[18950] = {}
	tTheSixthHouse_Npc[18950]["CellX"] = 127
	tTheSixthHouse_Npc[18950]["CellY"] = 138
	tTheSixthHouse_Npc[18950]["MapId"] = 3995
	tTheSixthHouse_Npc[18950]["NpcId"] = 18950
	-- 18955	6级房屋管家
	tTheSixthHouse_Npc[18955] = {}
	tTheSixthHouse_Npc[18955]["CellX"] = 127
	tTheSixthHouse_Npc[18955]["CellY"] = 138
	tTheSixthHouse_Npc[18955]["MapId"] = 3990
	tTheSixthHouse_Npc[18955]["NpcId"] = 18955
	-- 18951	园艺区讲解员
	tTheSixthHouse_Npc[1] = {}
	tTheSixthHouse_Npc[1]["CellX"] = 177
	tTheSixthHouse_Npc[1]["CellY"] = 178
	tTheSixthHouse_Npc[1]["MapId"] = 3995
	-- 18952	宠物养殖区讲解员
	tTheSixthHouse_Npc[2] = {}
	tTheSixthHouse_Npc[2]["CellX"] = 88
	tTheSixthHouse_Npc[2]["CellY"] = 54
	tTheSixthHouse_Npc[2]["MapId"] = 3995
	-- 18953	揽月台讲解员
	tTheSixthHouse_Npc[3] = {}
	tTheSixthHouse_Npc[3]["CellX"] = 91
	tTheSixthHouse_Npc[3]["CellY"] = 120
	tTheSixthHouse_Npc[3]["MapId"] = 3995
	--进入揽月台
	tTheSixthHouse_Npc["Moon"] = {}
	tTheSixthHouse_Npc["Moon"]["CellX"] = 136
	tTheSixthHouse_Npc["Moon"]["CellY"] = 107
	tTheSixthHouse_Npc["Moon"]["MapId"] = 3992
	--返回市场的坐标
	tTheSixthHouse_Npc["CellX"] = 347
	tTheSixthHouse_Npc["CellY"] = 516
	tTheSixthHouse_Npc["MapId"] = 1002
	tTheSixthHouse_Npc["BoundCX"] = 5
	tTheSixthHouse_Npc["BoundCY"] = 5
	--返回市场的坐标（无赠服）
	tTheSixthHouse_Npc["NoPresent"] = {}
	tTheSixthHouse_Npc["NoPresent"]["CellX"] = 259
	tTheSixthHouse_Npc["NoPresent"]["CellY"] = 273
	tTheSixthHouse_Npc["NoPresent"]["MapId"] = 10364
	-- 18958	宠物保育员
	tTheSixthHouse_Npc[18958] = {}
	tTheSixthHouse_Npc[18958]["CellX"] = 88
	tTheSixthHouse_Npc[18958]["CellY"] = 54
	tTheSixthHouse_Npc[18958]["NpcId"] = 18958
	-- 18957	后花园管理员
	tTheSixthHouse_Npc[18957] = {}
	tTheSixthHouse_Npc[18957]["CellX"] = 96
	tTheSixthHouse_Npc[18957]["CellY"] = 31
	tTheSixthHouse_Npc[18957]["NpcId"] = 18957
	-- 18956	园艺区园丁
	tTheSixthHouse_Npc[18956] = {}
	tTheSixthHouse_Npc[18956]["CellX"] = 177
	tTheSixthHouse_Npc[18956]["CellY"] = 178
	tTheSixthHouse_Npc[18956]["NpcId"] = 18956
	-- 18959	揽月仙子
	tTheSixthHouse_Npc[18959] = {}
	tTheSixthHouse_Npc[18959]["CellX"] = 91
	tTheSixthHouse_Npc[18959]["CellY"] = 120
	tTheSixthHouse_Npc[18959]["NpcId"] = 18959

local tTheSixthHouse_DynaNpc = {}
	tTheSixthHouse_DynaNpc["Sort"] = 1	
	tTheSixthHouse_DynaNpc["Type"] = 2
	tTheSixthHouse_DynaNpc["TypeShop"] = 32
	tTheSixthHouse_DynaNpc["Field"] = "name"
	
	--升级房屋成功后创建的npc
	--管家，种植区园丁和第一个田地npc，揽月仙子和宠物区开通员
	--18955 18956 18957 18959 19035
	--npcid，lookface，posx，posy，task0
	tTheSixthHouse_DynaNpc["CreateNpcInfo"] = {}
	tTheSixthHouse_DynaNpc["CreateNpcInfo"][1] = {18955,39230,127,131,97272700}
	tTheSixthHouse_DynaNpc["CreateNpcInfo"][2] = {18956,39240,177,178,97272701}
	tTheSixthHouse_DynaNpc["CreateNpcInfo"][3] = {18957,39250,96,31,97272702}
	tTheSixthHouse_DynaNpc["CreateNpcInfo"][4] = {18959,39410,91,120,97272704}
	tTheSixthHouse_DynaNpc["CreateNpcInfo"][5] = {19035,39420,183,177,97272705}
	tTheSixthHouse_DynaNpc["CreateNpcInfo"][6] = {0,38656,118,115,8003010}			--美女管家物品箱
	tTheSixthHouse_DynaNpc["CreateNpcInfo"][7] = {0,16506,118,119,6050630}			--拍卖行管理员
	
	tTheSixthHouse_DynaNpc[18957] = {18958,39400,88,54,97272703}

	tTheSixthHouse_DynaNpc["Lookface"] = {}
	--种植的种子lookface
	tTheSixthHouse_DynaNpc["Lookface"][3008136] = 39450
	tTheSixthHouse_DynaNpc["Lookface"][3008137] = 39460
	tTheSixthHouse_DynaNpc["Lookface"][3008138] = 39470
	tTheSixthHouse_DynaNpc["Lookface"][3008139] = 39480
	tTheSixthHouse_DynaNpc["Lookface"][3008140] = 39490
	tTheSixthHouse_DynaNpc["Lookface"][3008141] = 39500
	tTheSixthHouse_DynaNpc["Lookface"][3008142] = 39510
	tTheSixthHouse_DynaNpc["Lookface"][3008143] = 39520
	tTheSixthHouse_DynaNpc["Lookface"][3008144] = 39530
	tTheSixthHouse_DynaNpc["Lookface"][3008145] = 39540
	--宠物蛋类
	tTheSixthHouse_DynaNpc["Lookface"][3008521] = 39430
	tTheSixthHouse_DynaNpc["Lookface"][3008522] = 39440
	tTheSixthHouse_DynaNpc["Lookface"][3008523] = 39550
	tTheSixthHouse_DynaNpc["Lookface"][3008524] = 39560
	tTheSixthHouse_DynaNpc["Lookface"][3008525] = 39570
	tTheSixthHouse_DynaNpc["Lookface"][3008526] = 39580
	tTheSixthHouse_DynaNpc["Lookface"][3008527] = 39590
	tTheSixthHouse_DynaNpc["Lookface"][3008528] = 39600

	--可种植与已种植npc 创建数据表
	--lookface  posx  posy  task0
	tTheSixthHouse_DynaNpc["PlantInfo"] = {}
	tTheSixthHouse_DynaNpc["PlantInfo"][19035] = {39420,183,177,97272705}
	tTheSixthHouse_DynaNpc["PlantInfo"][19036] = {39420,183,177,97272706}
	tTheSixthHouse_DynaNpc["PlantInfo"][19037] = {39420,183,174,97272707}
	tTheSixthHouse_DynaNpc["PlantInfo"][19038] = {39420,183,174,97272708}
	tTheSixthHouse_DynaNpc["PlantInfo"][19039] = {39420,183,171,97272709}
	tTheSixthHouse_DynaNpc["PlantInfo"][19040] = {39420,183,171,97272710}
	tTheSixthHouse_DynaNpc["PlantInfo"][19041] = {39420,187,171,97272711}
	tTheSixthHouse_DynaNpc["PlantInfo"][19042] = {39420,187,171,97272712}
	tTheSixthHouse_DynaNpc["PlantInfo"][19043] = {39420,187,174,97272713}
	tTheSixthHouse_DynaNpc["PlantInfo"][19044] = {39420,187,174,97272714}
	tTheSixthHouse_DynaNpc["PlantInfo"][19045] = {39420,187,177,97272715}
	tTheSixthHouse_DynaNpc["PlantInfo"][19046] = {39420,187,177,97272716}
	tTheSixthHouse_DynaNpc["PlantInfo"][19047] = {39420,190,177,97272717}
	tTheSixthHouse_DynaNpc["PlantInfo"][19048] = {39420,190,177,97272718}
	tTheSixthHouse_DynaNpc["PlantInfo"][19049] = {39420,190,174,97272719}
	tTheSixthHouse_DynaNpc["PlantInfo"][19050] = {39420,190,174,97272740}
	tTheSixthHouse_DynaNpc["PlantInfo"][19051] = {39420,190,171,97272741}
	tTheSixthHouse_DynaNpc["PlantInfo"][19052] = {39420,190,171,97272742}

local tTheSixthHouse_Stc = {}
	tTheSixthHouse_Stc["EventType"] = 140
	tTheSixthHouse_Stc["DataType"] = {}
	tTheSixthHouse_Stc["Complete"] = {}
	
	tTheSixthHouse_Stc["DataType"]["ExpLimit"] = 02		-- 每日使用凝神香果300分钟经验限制一次
	tTheSixthHouse_Stc["DataType"]["PackNum"] = 04		-- 记录玩家一共上交了多少个建材包（升级房屋）
	
 	-- tTheSixthHouse_Stc["DataType"]["HouseWait"] = 02		--上交材料升六级的情况时需等待一天才开放
	-- tTheSixthHouse_Stc["Complete"]["HouseWait"] = 1
	tTheSixthHouse_Stc["DataType"]["UpHouse"] = 03		--表示六级房屋升级成功（不分方式）
	tTheSixthHouse_Stc["Complete"]["UpHouse"] = 1
	
	-- tTheSixthHouse_Stc["DataType"]["AnimalWait"] = 04		--上交材料宠物养殖区   等待1天开放
	-- tTheSixthHouse_Stc["Complete"]["AnimalWait"] = 1
	tTheSixthHouse_Stc["DataType"]["AnimalOpen"] = 05		--表示宠物养殖区开通成功（不分方式）
	tTheSixthHouse_Stc["Complete"]["AnimalOpen"] = 1
	
	tTheSixthHouse_Stc["DataType"]["FurLimit"] = 06		--记录六级房屋家具数量的上限
	
	tTheSixthHouse_Stc["DataType"][19036] = 34			--表示玩家当前种植了哪个种子
	tTheSixthHouse_Stc["DataType"][19038] = 35
	tTheSixthHouse_Stc["DataType"][19040] = 36
	tTheSixthHouse_Stc["DataType"][19042] = 37
	tTheSixthHouse_Stc["DataType"][19044] = 38
	tTheSixthHouse_Stc["DataType"][19046] = 39
	tTheSixthHouse_Stc["DataType"][19048] = 40
	tTheSixthHouse_Stc["DataType"][19050] = 41
	tTheSixthHouse_Stc["DataType"][19052] = 42

	tTheSixthHouse_Stc["DataType"]["Seed"] = 43			--表示玩家共种植了多少种子
	tTheSixthHouse_Stc["DataType"]["Land"] = 44			--表示玩家开垦了多少田地
	tTheSixthHouse_Stc["DataType"]["BagPack"] = 45		--记录当天是否开启过建材礼包 一天一次
	
	tTheSixthHouse_Stc["DataType"]["Pet"] = {}				--表示玩家领养的某种对应等级的宠物
	tTheSixthHouse_Stc["DataType"]["Pet"][1] = 56
	tTheSixthHouse_Stc["DataType"]["Pet"][2] = 57
	
	-- tTheSixthHouse_Stc["DataType"]["FurWait"] = 58		--stc(140,58)		--上交材料开通制作家具功能   等待1天开放
	-- tTheSixthHouse_Stc["Complete"]["FurWait"] = 1
	tTheSixthHouse_Stc["DataType"]["FurOpen"] = 59		--stc(140,59)		--表示制作家具开通成功（不分方式）
	tTheSixthHouse_Stc["Complete"]["FurOpen"] = 1
	
	tTheSixthHouse_Stc["DataType"]["SignDays"] = 60		--stc(140,60)		--表示签到包签到的天数
	tTheSixthHouse_Stc["DataType"]["SignPack"] = 61		--stc(140,61)			--表示签到包当天是否签到过
	
	tTheSixthHouse_Stc["DataType"]["Exchange"] = 62		--stc(140,62) 	表示每天用金矿石兑换建材的次数
	tTheSixthHouse_Stc["DataType"]["EmoneyExchange"] = 58		--stc(140,58) 	表示每天用天石购买兑换建材的次数
	
	tTheSixthHouse_Stc["DataType"]["EventType"] = 141
	tTheSixthHouse_Stc["DataType"]["PetExp"] = {}				--表示玩家领养的某种对应等级的宠物的经验值
	tTheSixthHouse_Stc["DataType"]["PetExp"][1] = 41
	tTheSixthHouse_Stc["DataType"]["PetExp"][2] = 42
	tTheSixthHouse_Stc["DataType"]["PetExp"][3] = 43
	tTheSixthHouse_Stc["DataType"]["PetExp"][4] = 44
	tTheSixthHouse_Stc["DataType"]["PetExp"][5] = 45
	tTheSixthHouse_Stc["DataType"]["PetExp"][6] = 46
	tTheSixthHouse_Stc["DataType"]["PetExp"][7] = 47
	tTheSixthHouse_Stc["DataType"]["PetExp"][8] = 48	

local tTheSixthHouse_Item = {}
	tTheSixthHouse_Item["ItemId"] = 3008100  --建材
	tTheSixthHouse_Item["FifthHouse"] = 3001548  	--五级房屋升级令
	tTheSixthHouse_Item["FurItem"] = 3008518  	--闭月海棠   开通家具制作材料
	
	tTheSixthHouse_Item["ItemNum"] = 500			--所需建材数量
	tTheSixthHouse_Item["OpenPetNeed"] = 120		--开通宠物区需建材数量
	tTheSixthHouse_Item["OpenFurNeed"] = 50		--开通家具制作功能需材料数量
	
	tTheSixthHouse_Item["Exchange"] = {}
	tTheSixthHouse_Item["Exchange"]["ItemNum"] = 20
	tTheSixthHouse_Item["Exchange"]["Attr"] = "0 2"
	
	tTheSixthHouse_Item["ExchangeStone"] = {}
	-- tTheSixthHouse_Item["ExchangeStone"][1] = 1072050		--品质1金矿石
	-- tTheSixthHouse_Item["ExchangeStone"][2] = 1072051		--品质2金矿石  
	-- tTheSixthHouse_Item["ExchangeStone"][3] = 1072052		--品质3金矿石  
	-- tTheSixthHouse_Item["ExchangeStone"][4] = 1072053		-- 品质4金矿石  
	-- tTheSixthHouse_Item["ExchangeStone"][5] = 1072054		-- 品质5金矿石  
	-- tTheSixthHouse_Item["ExchangeStone"][6] = 1072055		-- 品质6金矿石  
	-- tTheSixthHouse_Item["ExchangeStone"][7] = 1072056		-- 品质7金矿石  
	-- tTheSixthHouse_Item["ExchangeStone"][8] = 1072057		-- 品质8金矿石  
	-- tTheSixthHouse_Item["ExchangeStone"][9] = 1072058		-- 品质9金矿石  
	-- tTheSixthHouse_Item["ExchangeStone"][10] = 1072059		-- 品质10金矿石 
	tTheSixthHouse_Item["ExchangeStone"][1] = 3310002		--普通金矿石
	tTheSixthHouse_Item["ExchangeStone"][2] = 3310003		--良品金矿石
	tTheSixthHouse_Item["ExchangeStone"][3] = 3310004		--上品金矿石
	tTheSixthHouse_Item["ExchangeStone"][4] = 3310005		--精品金矿石
	tTheSixthHouse_Item["ExchangeStone"][5] = 3310006		--极品金矿石
	
-----------------------------------------------种植区----------------------------------------------------------
--种植区 种子的相关数据配置
local tTheSixthHouse_Seed = {}
	--种植下的种子相关数据配置
	--购买所需天石数量  快速收获所需金币或天石数  收获时间
	tTheSixthHouse_Seed[3008136] = {1,500000,24}
	tTheSixthHouse_Seed[3008137] = {1,9,24}
	tTheSixthHouse_Seed[3008138] = {1,500000,24}
	tTheSixthHouse_Seed[3008139] = {1,9,24}
	tTheSixthHouse_Seed[3008140] = {49,37,24}
	tTheSixthHouse_Seed[3008141] = {1,200000,24}
	tTheSixthHouse_Seed[3008142] = {19,100000,12}
	tTheSixthHouse_Seed[3008143] = {89,10000,6}
	tTheSixthHouse_Seed[3008144] = {99,29,24*2}
	tTheSixthHouse_Seed[3008145] = {27,9,8}
	
	tTheSixthHouse_Seed[3008521] = {3,3,8}
	tTheSixthHouse_Seed[3008522] = {3,3,8}
	tTheSixthHouse_Seed[3008523] = {3,3,8}
	tTheSixthHouse_Seed[3008524] = {6,6,8}
	tTheSixthHouse_Seed[3008525] = {6,6,8}
	tTheSixthHouse_Seed[3008526] = {6,6,8}
	tTheSixthHouse_Seed[3008527] = {6,6,8}
	tTheSixthHouse_Seed[3008528] = {6,6,8}
	
	tTheSixthHouse_Seed["GetReward"] = {}
	tTheSixthHouse_Seed["GetReward"][3008136] = 1003030 			--5个王母蟠桃
	tTheSixthHouse_Seed["GetReward"][3008137] = 3008512			--300分钟经验的果实
	tTheSixthHouse_Seed["GetReward"][3008138] = 3008513			--促进宠物成长的道具
	tTheSixthHouse_Seed["GetReward"][3008139] = 3008514			--150点修行值的果实
	tTheSixthHouse_Seed["GetReward"][3008140] = 3008515			--200点气力值的果实
	tTheSixthHouse_Seed["GetReward"][3008141] = 3002029			--1颗时效护心丹
	tTheSixthHouse_Seed["GetReward"][3008142] = 3008516			--促进宠物成长的道具相当于初级饲料的5倍
	tTheSixthHouse_Seed["GetReward"][3008143] = 3008517			--宠物成长的道具相当于初级饲料的50倍
	tTheSixthHouse_Seed["GetReward"][3008144] = 3007269			--1颗八宝护气丹（碎片）
	tTheSixthHouse_Seed["GetReward"][3008145] = 3008518			--1个光效家具材料道具
	
	tTheSixthHouse_Seed["GetReward"][3008521] = 3008529			--精卫宠物蛋
	tTheSixthHouse_Seed["GetReward"][3008522] = 3008530 		--熊猫宠物蛋
	tTheSixthHouse_Seed["GetReward"][3008523] = 3008679 		--秘色狐宠物蛋
	tTheSixthHouse_Seed["GetReward"][3008524] = 3008680 		--青龙宠物蛋
	tTheSixthHouse_Seed["GetReward"][3008525] = 3008681			--穷奇宠物蛋
	tTheSixthHouse_Seed["GetReward"][3008526] = 3008682 		--辟水金睛兽宠物蛋
	tTheSixthHouse_Seed["GetReward"][3008527] = 3008683 		--火麒麟宠物蛋
	tTheSixthHouse_Seed["GetReward"][3008528] = 3008684 		--火狱狂狼宠物蛋
	
	--宠物蛋收获得到的物品
	tTheSixthHouse_Seed["PetEgg"] = {}
	tTheSixthHouse_Seed["PetEgg"][1] = 3008519		--普通的  1/30几率直接获得宠物蛋，失败或者宠物结晶
	tTheSixthHouse_Seed["PetEgg"][2] = 3008520	--神兽的  1/30几率直接获得宠物蛋，失败或者宠物结晶
	
--种植区开启田地相关配置
local tTheSixthHouse_Land = {}
	--开垦田地需要的数据配置
	--种植数量，建材数量，天石数量，npcid
	tTheSixthHouse_Land[2] = {1,4,20,19037,760}
	tTheSixthHouse_Land[3] = {3,6,40,19039,740}
	tTheSixthHouse_Land[4] = {5,8,60,19041,700}
	tTheSixthHouse_Land[5] = {10,10,80,19043,640}
	tTheSixthHouse_Land[6] = {20,14,100,19045,560}
	tTheSixthHouse_Land[7] = {40,18,120,19047,460}
	tTheSixthHouse_Land[8] = {80,24,140,19049,340}
	tTheSixthHouse_Land[9] = {100,30,200,19051,200}
	
local tTheSixthHouse_Food = {}
	tTheSixthHouse_Food[3008512] = 300			--凝神香果 分钟经验
	tTheSixthHouse_Food[3008514] = 150			--辰星花	修行值
	tTheSixthHouse_Food[3008515] = 200			--通元神果	气力值
	
-----------------------------------------------宠物养殖区----------------------------------------------------------
local tTheSixthHouse_Pet = {}	
	tTheSixthHouse_Pet["LocationInfo"] = {}
	--放置每种宠物的generatorID，1-2级的宠物ID，获得的家具id，需要的宠物蛋id
	tTheSixthHouse_Pet["LocationInfo"][1] = {18325,7941,7942,3008685,3008529}
	tTheSixthHouse_Pet["LocationInfo"][2] = {18326,7944,7945,3008686,3008530}
	tTheSixthHouse_Pet["LocationInfo"][3] = {18327,7947,7948,3008687,3008679}
	tTheSixthHouse_Pet["LocationInfo"][4] = {18328,7950,7951,3008688,3008680}
	tTheSixthHouse_Pet["LocationInfo"][5] = {18329,7953,7954,3008689,3008681}
	tTheSixthHouse_Pet["LocationInfo"][6] = {18330,7956,7957,3008690,3008682}
	tTheSixthHouse_Pet["LocationInfo"][7] = {18331,7959,7960,3008691,3008683}
	tTheSixthHouse_Pet["LocationInfo"][8] = {18332,7962,7963,3008692,3008684}

	tTheSixthHouse_Pet["Pos"] = {}
	tTheSixthHouse_Pet["Pos"][1]  = {94,50}
	tTheSixthHouse_Pet["Pos"][2] = {100,50}
	tTheSixthHouse_Pet["Pos"][3] = {88,58}
	tTheSixthHouse_Pet["Pos"][4] = {88,64}
	tTheSixthHouse_Pet["Pos"][5] = {104,52}
	tTheSixthHouse_Pet["Pos"][6] = {94,68}
	tTheSixthHouse_Pet["Pos"][7] = {94,62}
	tTheSixthHouse_Pet["Pos"][8] = {94,56}
	
	tTheSixthHouse_Pet["Record"] = {}
	tTheSixthHouse_Pet["Record"][1]  = 1
	tTheSixthHouse_Pet["Record"][2] = 2
	tTheSixthHouse_Pet["Record"][3] = 4
	tTheSixthHouse_Pet["Record"][4] = 8
	tTheSixthHouse_Pet["Record"][5] = 16
	tTheSixthHouse_Pet["Record"][6] = 32
	tTheSixthHouse_Pet["Record"][7] = 64
	tTheSixthHouse_Pet["Record"][8] = 128
	
	tTheSixthHouse_Pet["NeedExp"] = {}
	tTheSixthHouse_Pet["NeedExp"][1]  = {100,1000}
	tTheSixthHouse_Pet["NeedExp"][2] = {100,1000} 
	tTheSixthHouse_Pet["NeedExp"][3] = {100,1000} 
	tTheSixthHouse_Pet["NeedExp"][4] = {500,5000} 
	tTheSixthHouse_Pet["NeedExp"][5] = {500,5000} 
	tTheSixthHouse_Pet["NeedExp"][6] = {500,5000} 
	tTheSixthHouse_Pet["NeedExp"][7] = {500,5000} 
	tTheSixthHouse_Pet["NeedExp"][8] = {500,5000}
	
	tTheSixthHouse_Pet["FoodExp"] = {}
	tTheSixthHouse_Pet["FoodExp"][3008513] = 5		--良品灵山仙草
	tTheSixthHouse_Pet["FoodExp"][3008516] = 20		--上品灵山仙草
	tTheSixthHouse_Pet["FoodExp"][3008517] = 100		--绝品灵山仙草
	tTheSixthHouse_Pet["FoodExp"][450] = 1000			--	450天石

--家具配置数据
local tTheSixthHouse_Furniture = {}
	tTheSixthHouse_Furniture[3008685] = {39610,98577120}
	tTheSixthHouse_Furniture[3008686] = {39620,98577121}
	tTheSixthHouse_Furniture[3008687] = {39630,98577122}
	tTheSixthHouse_Furniture[3008688] = {39640,98577123}
	tTheSixthHouse_Furniture[3008689] = {39650,98577124}
	tTheSixthHouse_Furniture[3008690] = {39660,98577125}
	tTheSixthHouse_Furniture[3008691] = {39670,98577126}
	tTheSixthHouse_Furniture[3008692] = {39680,98577127}
	
	tTheSixthHouse_Furniture[726119] = {1190,98577133}
	tTheSixthHouse_Furniture[726120] = {1200,98577134}
	tTheSixthHouse_Furniture[726121] = {1210,98577135}
	tTheSixthHouse_Furniture[726122] = {1220,98577136}
	tTheSixthHouse_Furniture[726123] = {1230,98577137}
	tTheSixthHouse_Furniture[726124] = {1240,98577138}
	tTheSixthHouse_Furniture[726125] = {1250,98577139}
	tTheSixthHouse_Furniture[726126] = {1260,98577140}
	tTheSixthHouse_Furniture[726127] = {1270,98577141}
	tTheSixthHouse_Furniture[726128] = {1280,98577142}
	tTheSixthHouse_Furniture[726129] = {1290,98577143}
	tTheSixthHouse_Furniture[726130] = {1300,98577144}
	tTheSixthHouse_Furniture[726131] = {1310,98577145}
	tTheSixthHouse_Furniture[726132] = {1320,98577146}
	tTheSixthHouse_Furniture[726133] = {1330,98577147}
	tTheSixthHouse_Furniture[726134] = {1340,98577148}
	tTheSixthHouse_Furniture[726135] = {1350,98577149}
	tTheSixthHouse_Furniture[726136] = {1360,98577150}
	tTheSixthHouse_Furniture[726137] = {1370,98577151}
	tTheSixthHouse_Furniture[726138] = {1380,98577152}
	tTheSixthHouse_Furniture[726139] = {1390,98577153}
	tTheSixthHouse_Furniture[726140] = {1400,98577154}
	tTheSixthHouse_Furniture[726141] = {1410,98577155}
	tTheSixthHouse_Furniture[726142] = {1420,98577156}
	tTheSixthHouse_Furniture[726143] = {1430,98577157}
	tTheSixthHouse_Furniture[726144] = {1440,98577158}
	tTheSixthHouse_Furniture[726145] = {1450,98577159}
	tTheSixthHouse_Furniture[726146] = {1460,98577128}
	tTheSixthHouse_Furniture[726147] = {1470,98577129}
	tTheSixthHouse_Furniture[726148] = {1480,98577130}
	tTheSixthHouse_Furniture[726149] = {1490,98577131}
	tTheSixthHouse_Furniture[726150] = {1500,98577132}
	

	tTheSixthHouse_Furniture["NeedItem"] = {}
	tTheSixthHouse_Furniture["NeedItem"][1] = 10
	tTheSixthHouse_Furniture["NeedItem"][2] = 20
	tTheSixthHouse_Furniture["NeedItem"][3] = 40

local tTheSixthHouse_Log = {}
	-- 建材获得途径
	-- "0,0,%d,20,10003003,2[1],%d,2"   				-- 金矿石兑换2个建材
	-- "0,0,0,0,10003003,2[2],3008100,1"   			-- 决战冥城中获得建材log
	-- "0,0,0,0,10003003,2[3],3008100,1"   			-- 国境任务中获得建材log
	-- "0,0,0,0,10003003,2[4],3008100,1"  				-- 矿洞冒险中获得建材log
	-- "0,0,3008101,1,10003003,2[5],3008100,1"   -- 积分商城中获得建材log
	
	tTheSixthHouse_Log["GoldStoneForItem"] = "0,0,%d,20,10003003,2[1],%d,2"    -- 金矿石兑换2个建材
	tTheSixthHouse_Log["GetItem"] = "0,0,3008101,1,10003003,2[5],3008100,1"    -- 开礼包获得建材

	tTheSixthHouse_Log["HandInItem"] = "0,0,%d,%d,10003003,2,0,0"			--上交材料
	tTheSixthHouse_Log["UpLevelHouse"] = "0,0,0,0,10003003,2[6],0,0"  	-- 升级房屋
	tTheSixthHouse_Log["SeedPlant"] = "0,0,%d,1,10003003,1[2],0,0"    -- 种植某个种子
	tTheSixthHouse_Log["GetFurniture"] = "0,0,0,0,10003003,2,%d,1"   --获得宠物家具
	tTheSixthHouse_Log["DelFurniture"] = "0,0,%d,1,10003003,2,0,0"   --放置某个家具，删除对应家具物品
	tTheSixthHouse_Log["GetFifthHouse"] = "0,0,0,0,10003003,2,3001548,1"   --获得五级房屋升级令
	tTheSixthHouse_Log["BuyFurniture"] = "0,0,%d,%d,10003003,2[%d],%d,1"		--制作获得X型家具
	
	tTheSixthHouse_Log["GetCultivation"] = "0,0,%d,1,10003003,2,6,%d"		--获得修行值
	tTheSixthHouse_Log["GetExp"] = "0,0,%d,1,10003003,2,4,%d"          	 	--获得经验
	tTheSixthHouse_Log["GetStrength"] = "0,0,%d,1,10003003,2,12,%d"  	--获得气力值
	
	tTheSixthHouse_Log["HarvestReward"] = "0,0,%d,1,10003003,2,%d,1"    -- 收获种子获得果实

	tTheSixthHouse_Log["Money"] = "0,0,1,%d,10003004,2[1],%d,1"			-- 花费金币收获某个种子
	tTheSixthHouse_Log["EMoney"] = "0,0,2,%d,10003004,2[2],%d,1"		-- 花费天石收获某个种子

	tTheSixthHouse_Log["EmoneyBuyPack"] = "0,0,2,36,10003004,2,3008100,2"			-- 用36天石购买两个六级房屋建材包
	tTheSixthHouse_Log["EmoneyFeedAni"] = "0,0,2,450,10003004,2,0,0"			-- 用450天石喂养宠物 （1000点经验）
	
	tTheSixthHouse_Log["EmoneyBuySeed"] = "0,0,2,%d,10003004,2,%d,1"			-- 用天石购买种子
	tTheSixthHouse_Log["EMOpenLand"] = "0,0,2,%d,10003004,1[%d],0,0"			-- 用天石开垦土地
	tTheSixthHouse_Log["ItemOpenLand"] = "0,0,%d,%d,10003004,1[%d],0,0"		-- 用材料开垦土地
	tTheSixthHouse_Log["OpenLandOneTime"] = "0,0,2,%d,10003004,2,0,0"			-- 用天石一键开垦

	tTheSixthHouse_Log["UpHouseEmoney"] = "350	4411	8999	8999	1	"			-- 天石付费升级房屋
	tTheSixthHouse_Log["UpHouseResource"] = "350	20407	0	0	1	"			-- 免费升级6级房屋
	tTheSixthHouse_Log["OpenFur"] = "350	4412	1999	1999	1	"						-- 天石开通家具制作
	tTheSixthHouse_Log["OpenFurResource"] = "350	20409	0	0	1	"						-- 免费开放家具制作
	tTheSixthHouse_Log["OpenAnimal"] = "350	4413	1999	1999	1	"					-- 天石开通后花园
	tTheSixthHouse_Log["OpenAnimalResource"] = "350	20408	0	0	1	"					-- 免费开放后花园
	
	tTheSixthHouse_Log["BuySeed"] = "350	4414	%d	%d	1	"					-- 天石购买种子
	tTheSixthHouse_Log["OpenLand"] = "350	4415	%d	%d	1	"					-- 天石开垦土地

local tTheSixthHouse_Effect = {}
	tTheSixthHouse_Effect[1] = "self"
	tTheSixthHouse_Effect[2] = "angelwing"

------------------------------------------------逻辑部分-------------------------------------------------
------------------------------------------------升级至六级房屋逻辑部分-------------------------------------------------
--统一判断掩码是否完成
function TheSixthHouse_ChkStcComplete(sStr)
	local nEvent = tTheSixthHouse_Stc["EventType"]
	local nType = tTheSixthHouse_Stc["DataType"][sStr]
	local nComplete = tTheSixthHouse_Stc["Complete"][sStr]
	if Task_ChkStcValue(nEvent,nType,">=",nComplete) then
		return true
	else
		return false
	end
end

--接option1	花费天石升级6级房屋。（8999点天石）
function TheSixthHouse_UpHouseWithEmoney(nNpcId)
	local nHouseId = Get_UserHouseId()
	if Get_MapResLev(nHouseId) < 5 then
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return
	elseif Get_MapResLev(nHouseId) >= 6 then
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return
	end
	
	-- --失败，已上交过升级材料
	-- if TheSixthHouse_ChkStcComplete("HouseWait") then
		-- LinkNpcGossipFunc_New(nNpcId,"3-6")
		-- return
	-- end
	
	local nEmoney = Get_UserEMoney()
	if nEmoney < tTheSixthHouse_Cont["Emoney"] then
		LinkNpcGossipFunc_New(nNpcId,"3-4")
		return
	end
	
	LinkNpcGossipFunc_New(nNpcId,"3-3")
end

--接option2	上交材料升级6级房屋。
function TheSixthHouse_UpHouseWithItems(nNpcId)
	local nHouseId = Get_UserHouseId()
	if Get_MapResLev(nHouseId) < 5 then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	elseif Get_MapResLev(nHouseId) >= 6 then
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end
	
	-- --失败，已上交过升级材料
	-- if TheSixthHouse_ChkStcComplete("HouseWait") then
		-- LinkNpcGossipFunc_New(nNpcId,"2-4")
		-- return
	-- end
	LinkNpcGossipFunc_New(nNpcId,"6-1")
	-- LinkNpcGossipFunc_New(nNpcId,"2-3")
end

--我已备齐材料。
function TheSixthHouse_ItemsReady(nNpcId,nItemNum)
	-- local nItemNum = tTheSixthHouse_Item["ItemNum"]
	local nItemId = tTheSixthHouse_Item["ItemId"]
	local nFlag = 1
	
	if not Item_ChkItem(nItemId) then
		nFlag = 2
	end
	
	if not Item_ChkMulItem(nItemId,nItemId,nItemNum) then
		nFlag = 2
	end
	
	-- 升级前检查玩家之前的房屋内是否摆放家具
	local nHouseId = Get_UserHouseId()
	if Get_MapNpcCount(nHouseId,25) > 0 or Get_MapNpcCount(nHouseId,2) > 0 then
		Sys_MsgBox(tTheSixthHouse_Text["PackFurniture"])
		return
	end
	
	-- 判断当前上交的建材包数量
	local nPackEvent = tTheSixthHouse_Stc["EventType"]
	local nPackType = tTheSixthHouse_Stc["DataType"]["PackNum"]
	local nPackData = Get_UserStatisticValue(nPackEvent,nPackType)
	
	if nPackData == 0 then
		if nFlag == 2 then
			LinkNpcGossipFunc_New(nNpcId,"2-6")
			return
		elseif nItemNum == 500 then
			TheSixthHouse_UpLevelHouse(nNpcId,1,nItemNum)
		elseif nItemNum == 100 then
			if Item_ChkMulItem(nItemId,nItemId,nItemNum) and Item_DelMulItem(nItemId,nItemId,nItemNum) then
				Task_AddStatistic(nPackEvent,nPackType,nItemNum,1,0)
				Task_SetStcTimestamp(nPackEvent,nPackType,0,0)
				Sys_SaveActionFestivalLog(string.format(tTheSixthHouse_Log["HandInItem"],nItemId,nItemNum))
				local nDiffNum = tonumber(500 - nItemNum)
				tNpcGossip[nNpcId]["Text621"] = string.format(tTheSixthHouse_Text[nNpcId]["Text621"],nItemNum,nDiffNum)
				LinkNpcGossipFunc_New(nNpcId,"6-2")
			end
		end
	elseif nPackData == 400 then
		if nFlag == 2 then
			LinkNpcGossipFunc_New(nNpcId,"2-6")
			return
		elseif nItemNum == 500 then
			local nDiffNum = tonumber(500 - nPackData)
			Sys_DialogText(string.format(tTheSixthHouse_Text[nNpcId]["Text631"],nPackData,nDiffNum))
			Sys_DialogOption(string.format(tTheSixthHouse_Text[nNpcId]["Option631"],nDiffNum),"</F>TheSixthHouse_UpLevelHouse</N>"..nNpcId.."</N>1</N>"..nDiffNum)
			Sys_DialogOption(tTheSixthHouse_Text[nNpcId]["Option613"],"</F>NULL")
			Sys_DialogFace(nNpcId)
			Sys_DialogEnd()
		elseif nItemNum == 100 then
			TheSixthHouse_UpLevelHouse(nNpcId,1,nItemNum)
		end
	else
		if nFlag == 2 then
			LinkNpcGossipFunc_New(nNpcId,"2-6")
			return
		elseif nItemNum == 500 then
			local nDiffNum = tonumber(500 - nPackData)
			Sys_DialogText(string.format(tTheSixthHouse_Text[nNpcId]["Text631"],nPackData,nDiffNum))
			Sys_DialogOption(string.format(tTheSixthHouse_Text[nNpcId]["Option631"],nDiffNum),"</F>TheSixthHouse_UpLevelHouse</N>"..nNpcId.."</N>1</N>"..nDiffNum)
			Sys_DialogOption(tTheSixthHouse_Text[nNpcId]["Option613"],"</F>NULL")
			Sys_DialogFace(nNpcId)
			Sys_DialogEnd()
		elseif nItemNum == 100 then
			if Item_ChkMulItem(nItemId,nItemId,nItemNum) and Item_DelMulItem(nItemId,nItemId,nItemNum) then
				Task_AddStatistic(nPackEvent,nPackType,nItemNum,1,0)
				Task_SetStcTimestamp(nPackEvent,nPackType,0,0)
				Sys_SaveActionFestivalLog(string.format(tTheSixthHouse_Log["HandInItem"],nItemId,nItemNum))
				local nDiffNum = tonumber(500 - (nPackData + 100))
				tNpcGossip[nNpcId]["Text621"] = string.format(tTheSixthHouse_Text[nNpcId]["Text621"],tonumber(nPackData+100),nDiffNum)
				LinkNpcGossipFunc_New(nNpcId,"6-2")
			end
		end
	end
end

--升级房屋
function TheSixthHouse_UpLevelHouse(nNpcId,nChoose,nItemNum)
	local nHouseId = Get_UserHouseId()
	
	if Get_MapResLev(nHouseId) < 5 then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	elseif Get_MapResLev(nHouseId) >= 6 then
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end
	
	-- 升级前检查玩家之前的房屋内是否摆放家具
	if Get_MapNpcCount(nHouseId,25) > 0 or Get_MapNpcCount(nHouseId,2) > 0 then
		Sys_MsgBox(tTheSixthHouse_Text["PackFurniture"])
		return
	end

	if nChoose == 1 then
		-- local nItemNum = tTheSixthHouse_Item["ItemNum"]
		local nNeedItemId = tTheSixthHouse_Item["ItemId"]

		local nFlag = 1
		if not Item_ChkItem(nNeedItemId) then
			nFlag = 2
		elseif not Item_ChkMulItem(nNeedItemId,nNeedItemId,nItemNum) then
			nFlag = 2
		end
		
		if nFlag == 2 then
			LinkNpcGossipFunc_New(nNpcId,"2-6")
			return
		end
	
		-- --设置掩码  掩码控制1天时间后才开放		
		-- local nEvent = tTheSixthHouse_Stc["EventType"]
		-- local nType = tTheSixthHouse_Stc["DataType"]["HouseWait"]
		-- local nComplete = tTheSixthHouse_Stc["Complete"]["HouseWait"]
		-- Task_SetStatistic(nEvent,nType,nComplete,1,0)
		-- Task_SetStcTimestamp(nEvent,nType,0,0)
		
		if Item_ChkMulItem(nNeedItemId,nNeedItemId,nItemNum) and Item_DelMulItem(nNeedItemId,nNeedItemId,nItemNum) then
			Sys_SaveActionFestivalLog(string.format(tTheSixthHouse_Log["HandInItem"],nNeedItemId,nItemNum))
			Sys_SaveEmoneyBuy(tTheSixthHouse_Log["UpHouseResource"])
		end
		
	elseif nChoose == 2 then
		--天石升级
		local nEmoney = Get_UserEMoney()
		local nNeedEmoney = tTheSixthHouse_Cont["Emoney"]
		if nEmoney < nNeedEmoney then
			LinkNpcGossipFunc_New(nNpcId,"3-4")
			return
		end
		--扣除天石
		User_AddEMoney((-1)*nNeedEmoney)
		Sys_SaveEmoneyBuy(tTheSixthHouse_Log["UpHouseEmoney"])
	end
	
	local nHouseEvent = tTheSixthHouse_Stc["EventType"]
	local nHouseType = tTheSixthHouse_Stc["DataType"]["UpHouse"]
	local nHouseComplete = tTheSixthHouse_Stc["Complete"]["UpHouse"]
	-- 设置掩码成功再升级
	if Task_SetStatistic(nHouseEvent,nHouseType,nHouseComplete,1,0) then
		--天石付费可以立即成功升级房屋操作	
		local nResLev = tTheSixthHouse_Cont["ResLev"]
		local nMapDoc = tTheSixthHouse_Cont["MapDoc"][1]
		local nPortalX = tTheSixthHouse_Cont["PortalX"]
		local nPortalY = tTheSixthHouse_Cont["PortalY"]

		Map_SetMapResLev(nHouseId,nResLev)
		Map_SetMapDoc(nHouseId,nMapDoc)
		Map_SetMapPortalX(nHouseId,nPortalX)
		Map_SetMapPortalY(nHouseId,nPortalY)
		
		-- 移动物品箱位置
		if Get_MapNpcCount(nHouseId,4) > 0 then
			if Get_MapNpcCount(nHouseId,4) == 1 then	-- 1个物品箱
				local nCellX = tTheSixthHouse_Cont["NpcX"][1]
				local nCellY = tTheSixthHouse_Cont["NpcY"][1]
				local sParam = tostring(nHouseId).." 4 "..nCellX.." "..nCellY
				Npc_ChangePos(sParam)
			elseif Get_MapNpcCount(nHouseId,4) == 2 then		-- 两个物品箱
				local nCellX1 = tTheSixthHouse_Cont["NpcX"][1]
				local nCellY1 = tTheSixthHouse_Cont["NpcY"][1]
				local nCellX2 = tTheSixthHouse_Cont["NpcX"][2]
				local nCellY2 = tTheSixthHouse_Cont["NpcY"][2]
				local sParam = tostring(nHouseId).." 4 "..nCellX1.." "..nCellY1.." "..nCellX2.." "..nCellY2
				Npc_ChangePos(sParam)
			else		-- 两个物品箱与一个管家
				local nCellX1 = tTheSixthHouse_Cont["NpcX"][1]
				local nCellY1 = tTheSixthHouse_Cont["NpcY"][1]
				local nCellX2 = tTheSixthHouse_Cont["NpcX"][2]
				local nCellY2 = tTheSixthHouse_Cont["NpcY"][2]
				local nCellX3 = tTheSixthHouse_Cont["NpcX"][3]
				local nCellY3 = tTheSixthHouse_Cont["NpcY"][3]
				local sParam = tostring(nHouseId).." 4 "..nCellX1.." "..nCellY1.." "..nCellX2.." "..nCellY2.." "..nCellX3.." "..nCellY3
				Npc_ChangePos(sParam)
			end
		end

		Sys_SaveActionFestivalLog(tTheSixthHouse_Log["UpLevelHouse"])
		User_EffectAdd(tTheSixthHouse_Effect[1],tTheSixthHouse_Effect[2])
		
		if nChoose == 1 then
			LinkNpcGossipFunc_New(nNpcId,"2-5")
		elseif nChoose == 2 then
			LinkNpcGossipFunc_New(nNpcId,"3-5")
		end
		
		--设置当前玩家开垦了1块田地
		local nLandEvent = tTheSixthHouse_Stc["EventType"]
		local nLandType = tTheSixthHouse_Stc["DataType"]["Land"]
		Task_SetStatistic(nLandEvent,nLandType,1,1,0)
		
		--动态创建管家，种植区园丁和第一个田地npc，揽月仙子和宠物区开通员
		for i = 1,6 do
			local sName = tTheSixthHouse_Text["Name"][i]
			local nNpcType = tTheSixthHouse_DynaNpc["Type"]
			local nSort = tTheSixthHouse_DynaNpc["Sort"]
			local nLookFace = tTheSixthHouse_DynaNpc["CreateNpcInfo"][i][2]
			local nTask0 = tTheSixthHouse_DynaNpc["CreateNpcInfo"][i][5]
			local nPosX = tTheSixthHouse_DynaNpc["CreateNpcInfo"][i][3]
			local nPosY = tTheSixthHouse_DynaNpc["CreateNpcInfo"][i][4]
			
			local nUserId = Get_UserId()
			if i == 6 then
				--创建美女管家物品箱
				-- (410072,6048500,0,2007,0,'物品箱 4 33 8200 1 %user_id %user_home_id 21 39 0 0 0 8003010 0 0 0 0 0 0 0 0 0 0 20')
				-- (8003010,0,0,1046,4,'')
				Npc_CreateDynaNpc(sName,4,33,nLookFace,1,nUserId,nHouseId,nPosX,nPosY,0,0,0,nTask0,0,0,0,0,0,0,0,0,0,0,20)
			-- elseif i == 7 then
				-- --创建拍卖行管理员
				-- -- 9361	0	0	拍卖行管理员	2	16506	-1	1036	241	238	6050630
				-- -- (6050630,0,0,1046,572,'')
				-- Npc_CreateDynaNpc(sName,2,nSort,nLookFace,0,nUserId,nHouseId,nPosX,nPosY,0,0,0,nTask0)
			else
				--其他动态npc	--18955 18956 18957 18959 19035
				if i == 1 then
					nNpcType = tTheSixthHouse_DynaNpc["TypeShop"]
				end
				Npc_CreateDynaNpc(sName,nNpcType,nSort,nLookFace,0,nUserId,nHouseId,nPosX,nPosY,0,0,0,nTask0)
			end
		end
		
		-- 传送到市场
		local nBoundCX = tTheSixthHouse_Npc["BoundCX"]
		local nBoundCY = tTheSixthHouse_Npc["BoundCY"]
		local nMap = tTheSixthHouse_Npc["MapId"]
		local nCellX = tTheSixthHouse_Npc["CellX"]
		local nCellY = tTheSixthHouse_Npc["CellY"]
		
		-- 无赠服判断
		if SpecialServer_ChkNoGiftServer() then
			nCellX = tTheSixthHouse_Npc["NoPresent"]["CellX"]
			nCellY = tTheSixthHouse_Npc["NoPresent"]["CellY"]
			nMap = tTheSixthHouse_Npc["NoPresent"]["MapId"]
		end	
		
		User_UserRandBoundTrans(nMap,nCellX,nCellY,nBoundCX,nBoundCY,0,0)

		--获得某种成就
		-- local nAchPos = tTheSixthHouse_Cont["AchievementId"]
		-- if not User_ChkAchByAchPosition(nAchPos) then  --1554
			-- User_AddAchByAchPosition(nAchPos)
		-- end
	end
end

--离开此地。 回到市场  97272759
function TheSixthHouse_LeaveHouse(nNpcId)
	local nCellX = tTheSixthHouse_Npc["CellX"]
	local nCellY = tTheSixthHouse_Npc["CellY"]
	local nMapId = tTheSixthHouse_Npc["MapId"]
	local nBoundCX = tTheSixthHouse_Npc["BoundCX"]
	local nBoundCY = tTheSixthHouse_Npc["BoundCY"]
	
	-- 无赠服判断
	if SpecialServer_ChkNoGiftServer() then
		nCellX = tTheSixthHouse_Npc["NoPresent"]["CellX"]
		nCellY = tTheSixthHouse_Npc["NoPresent"]["CellY"]
		nMapId = tTheSixthHouse_Npc["NoPresent"]["MapId"]
	end	
	
	User_UserRandBoundTrans(nMapId,nCellX,nCellY,nBoundCX,nBoundCY,0,0)
end

--进入六级房屋
function TheSixthHouse_ToSixthHouse(nNpcId)
	-- local nHouseEvent = tTheSixthHouse_Stc["EventType"]
	-- local nHouseType = tTheSixthHouse_Stc["DataType"]["UpHouse"]
	-- local nHouseComplete = tTheSixthHouse_Stc["Complete"]["UpHouse"]
	-- if not Task_ChkStcValue(nHouseEvent,nHouseType,">=",nHouseComplete) then
		-- User_TalkChannel2005(tTheSixthHouse_Text["NotOpen"])
		-- return
	-- end
	
	-- local nEvent = tTheSixthHouse_Stc["EventType"]
	-- local nType = tTheSixthHouse_Stc["DataType"]["HouseWait"]
	-- if not Task_StcInterval(nEvent,nType,1,4) then
		-- Sys_MsgBox(tTheSixthHouse_Text[nNpcId]["Text521"])
		-- return
	-- end

	-- --1034   回到自己的家
	-- local nHouseId = Get_UserHouseId()
	-- local nCellX = tTheSixthHouse_Npc[nNpcId]["CellX"]
	-- local nCellY = tTheSixthHouse_Npc[nNpcId]["CellY"]
	-- local nBoundCX = tTheSixthHouse_Npc["BoundCX"]
	-- local nBoundCY = tTheSixthHouse_Npc["BoundCY"]
	-- User_UserRandBoundTrans(nHouseId,nCellX,nCellY,nBoundCX,nBoundCY,0,0)
	
	User_TalkChannel2005(tTheSixthHouse_Text[nNpcId]["Text511"])
	
	--判断玩家房屋中是否有领养宠物，有，且房屋中没有刷出怪，重新刷出怪
	local nLevel = 1
	for i = 1,8 do
		local sPetName = tTheSixthHouse_Text["PetName"][i]

		local nMonsterPosX = tTheSixthHouse_Pet["Pos"][i][1]
		local nMonsterPosY = tTheSixthHouse_Pet["Pos"][i][2]
		local nGenId = tTheSixthHouse_Pet["LocationInfo"][i][1]
		
		--已领养过宠物
		if TheSixthHouse_ChkPetStc(1,i) then
			if TheSixthHouse_ChkPetStc(2,i) then
				--未达到3级
				nLevel = 2
			else
				--未达到2级
				nLevel = 1
			end
			
			local sMonsterName = ""
			if nLevel == 2 then
				sMonsterName = tTheSixthHouse_Text["PetLevel"][i]
			elseif nLevel == 1 then
				sMonsterName = tTheSixthHouse_Text["PetName"][i]		
			end
			
			local nIndex = tonumber(nLevel + 1)
			local nMonsterId = tTheSixthHouse_Pet["LocationInfo"][i][nIndex]
			local nHouseId = Get_UserHouseId()
			
			--检测当前玩家房屋内是否有对应的宠物，没有则重新刷出对应怪
			local nMonsterNum = Get_SysTempData(1,nHouseId,nMonsterId)
			if nMonsterNum > 0 then
				return
			end				
			Monster_AddMonster(nHouseId,nMonsterPosX,nMonsterPosY,nGenId,nMonsterId)
			Sys_SetTempData(1,nHouseId,nMonsterId,nMonsterNum + 1)
			
			-- if Monster_GetMonsterByName(nHouseId,sMonsterName) == 0 then
				-- Monster_DelMonster(nHouseId,nMonsterId)
				-- Monster_AddMonster(nHouseId,nMonsterPosX,nMonsterPosY,nGenId,nMonsterId)
			-- end
			
		end
	end
end

--从揽月台统一返回市场
function TheSixthHouse_BackToSixthHouse()
	local nMapId = Get_UserMapId()
	local nBoundCX = tTheSixthHouse_Npc["BoundCX"]
	local nBoundCY = tTheSixthHouse_Npc["BoundCY"]
	if nMapId == tTheSixthHouse_Npc["Moon"]["MapId"] then
		-- --1034   回到自己的家
		-- if Get_UserHouseId() ~= 0 then
			-- -- 有房屋的人放回自己房屋
			-- local nHouseId = Get_UserHouseId()
			-- local nCellX = tTheSixthHouse_Npc[18950]["CellX"]
			-- local nCellY = tTheSixthHouse_Npc[18950]["CellY"]
			-- -- User_UserRandBoundTrans(nHouseId,nCellX,nCellY,nBoundCX,nBoundCY,0,0)
			-- User_UserRandTrans(nHouseId)
		-- else
			-- 没有房屋的 返回市场
			local nMap = tTheSixthHouse_Npc["MapId"]
			local nCellX = tTheSixthHouse_Npc["CellX"]
			local nCellY = tTheSixthHouse_Npc["CellY"]
			
			-- 无赠服判断
			if SpecialServer_ChkNoGiftServer() then
				nCellX = tTheSixthHouse_Npc["NoPresent"]["CellX"]
				nCellY = tTheSixthHouse_Npc["NoPresent"]["CellY"]
				nMap = tTheSixthHouse_Npc["NoPresent"]["MapId"]
			end	
			
			User_UserRandBoundTrans(nMap,nCellX,nCellY,nBoundCX,nBoundCY,0,0)
		-- end
	else
		Sys_MsgBox(tTheSixthHouse_Text["NotInPlace"])
		return
	end
end

--寻路到各功能点的选项
function TheSixthHouse_FindNpc(nNpcId,nChoose,nFindId)
	local nHouseId = Get_UserHouseId()
	if nChoose == 18958 then
		if Get_MapDoc(nHouseId) == 3990 then
			nChoose = 18957
		else
			nChoose = 18958
		end
	end

	local nCellX = tTheSixthHouse_Npc[nChoose]["CellX"]
	local nCellY = tTheSixthHouse_Npc[nChoose]["CellY"]
	local nMapId = tTheSixthHouse_Npc[nChoose]["MapId"]
	local nBoundCX = tTheSixthHouse_Npc["BoundCX"]
	local nBoundCY = tTheSixthHouse_Npc["BoundCY"]
	if nNpcId == 18955 then
		Sys_GotoSomeWhere(nCellX,nCellY,nHouseId,nFindId)
	elseif nNpcId >= 18956 and nNpcId <= 18959 then
		-- 房屋管理员 127 131
		-- Sys_GotoSomeWhere(nCellX,nCellY,nHouseId,nFindId)
		User_UserRandBoundTrans(nHouseId,nCellX,nCellY,nBoundCX,nBoundCY,0,0)
	elseif nChoose ~= 18950 then
		-- 种植区  177 178
		-- 宠物养殖区 153 85
		-- 揽月台 091 120
		-- Sys_GotoSomeWhere(nCellX,nCellY,nMapId,nFindId)
		User_UserRandBoundTrans(nMapId,nCellX,nCellY,nBoundCX,nBoundCY,0,0)
	else
		-- 房屋管理员 127 131
		User_UserRandBoundTrans(nMapId,nCellX,nCellY,nBoundCX,nBoundCY,0,0)
	end
end

--使用建材  3008100
function TheSixthHouse_UseTools(nItemId)
	User_TalkChannel2005(tTheSixthHouse_Text["UseItem"])
end

--从sql接入动态创建的npc对白逻辑
function TheSixthHouse_LinkNpc(nNpcId)
	if nNpcId == 18959 then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
	else
		if Get_UserId() == Get_MapOwnerId() then
			-- 可种植的npc
			for i = 19035,19051,2 do
				if nNpcId == i then
					local nCount = 0
					local tItem = {3008136,3008137,3008138,3008139,3008140,3008141,
									3008142,3008143,3008144,3008145,3008521,3008522,3008523,
									3008524,3008525,3008526,3008527,3008528}
					for k,v in pairs(tItem) do
						if Item_ChkItem(v) then
							nCount = nCount + 1
						end
					end
					if nCount > 0 then
						LinkNpcGossipFunc_New(nNpcId,"1-1")
						return
					else
						LinkNpcGossipFunc_New(nNpcId,"1-4")
						return
					end
				end
			end
			
			-- 已种植的npc
			local nPosX = Get_NpcPositionX()
			local nPosY = Get_NpcPositionY()
			for i = 19036,19052,2 do 
				if nPosX == tTheSixthHouse_DynaNpc["PlantInfo"][i][2] and nPosY == tTheSixthHouse_DynaNpc["PlantInfo"][i][3] then
					nNpcId = i
				end
			end
			if nNpcId >= 19036 and nNpcId <= 19052 then
				local nEvent = tTheSixthHouse_Stc["EventType"]
				local nSeedType = tTheSixthHouse_Stc["DataType"][nNpcId]
				local nData = Get_UserStatisticValue(nEvent,nSeedType)
				if nData ~= 0 then
					local nTime = tTheSixthHouse_Seed[nData][3]
					local sTime = ""
					if nTime >= 24 then
						nTime = tonumber(nTime / 24)
						sTime = string.format(tTheSixthHouse_Text["Day"],math.floor(nTime))
					else
						sTime = string.format(tTheSixthHouse_Text["Hour"],nTime)
					end
					tNpcGossip[nNpcId]["Text111"] = string.format(tTheSixthHouse_Text[19036]["Text111"],sTime)
				end
			end
			
			LinkNpcGossipFunc_New(nNpcId,"1-1")
		else
			LinkNpcGossipFunc_New(nNpcId,"1-3")
		end
	end
end

-------------------------------------------房屋管家npc  从sql接入------------------------------------------------
-- 开放家具制作。	97272757
function TheSixthHouse_OpenFurniture(nNpcId)
	-- local nEvent = tTheSixthHouse_Stc["EventType"]
	-- local nType = tTheSixthHouse_Stc["DataType"]["FurWait"]
	-- local nComplete = tTheSixthHouse_Stc["Complete"]["FurWait"]
	-- if Task_ChkStcValue(nEvent,nType,">=",nComplete) then
		-- if not Task_StcInterval(nEvent,nType,1,4) then
			-- LinkNpcGossipFunc_New(nNpcId,"8-4")
		-- else
			-- LinkNpcGossipFunc_New(nNpcId,"8-5")
		-- end
	-- else
		LinkNpcGossipFunc_New(nNpcId,"2-1")
	-- end
end

--制作家具选项  	97272766
function TheSixthHouse_MakeFurniture(nNpcId)
	LinkNpcGossipFunc_New(nNpcId,"3-1")
end

--增加家具上限。  97272767
function TheSixthHouse_AddFurLimit(nNpcId)
	LinkNpcGossipFunc_New(nNpcId,"10-1")
end

--功能开放介绍选项  	97272758
function TheSixthHouse_HouseIntroduce(nNpcId)
	LinkNpcGossipFunc_New(nNpcId,"4-1")
end

--兑换建材	97272760
function TheSixthHouse_Exchange(nNpcId)
	LinkNpcGossipFunc_New(nNpcId,"5-1")
end

-- 前往其他区域。	97272763
function TheSixthHouse_FindOther(nNpcId)
	LinkNpcGossipFunc_New(nNpcId,"11-1")
end

--兑换建材
function TheSixthHouse_ExchangeRescource(nNpcId)
	local nItemId = tTheSixthHouse_Item["ItemId"]
	
	local nHandNum = tTheSixthHouse_Item["Exchange"]["ItemNum"]
	local sGetAttr = tTheSixthHouse_Item["Exchange"]["Attr"]

	local nEvent = tTheSixthHouse_Stc["EventType"]
	local nType = tTheSixthHouse_Stc["DataType"]["Exchange"]
	if Task_ChkStcValue(nEvent,nType,">=",1) then
		if not Task_StcInterval(nEvent,nType,1,4) then
			User_TalkChannel2005(tTheSixthHouse_Text["OneTimeExchange"])
			return
		else
			Task_SetStatistic(nEvent,nType,0,1,0)
			Task_SetStcTimestamp(nEvent,nType,0,0)
		end
	end
	
	local nNeedItem = tTheSixthHouse_Item["ExchangeStone"][1]
	local nNeedItem_1 = tTheSixthHouse_Item["ExchangeStone"][5]
	-- local nCount = 0
	-- for i,v in pairs(tTheSixthHouse_Item["ExchangeStone"]) do
		-- if Item_ChkMulItem(v,v,nHandNum) then
			-- nCount = nCount + 1
			-- nNeedItem = v
		-- end
	-- end
	
	-- if nCount >= 1 then
		if Item_ChkMulItem(nNeedItem,nNeedItem_1,nHandNum) then
			if Item_DelMulItem(nNeedItem,nNeedItem_1,nHandNum) then
				Task_SetStatistic(nEvent,nType,1,1,0)
				Task_SetStcTimestamp(nEvent,nType,0,0)

				Item_AddNewItem(nItemId,sGetAttr)
				User_TalkChannel2005(tTheSixthHouse_Text["GoldStoneForItem"])
				Sys_SaveActionFestivalLog(string.format(tTheSixthHouse_Log["GoldStoneForItem"],nNeedItem,nItemId))
				return
			end
		else
			User_TalkChannel2005(tTheSixthHouse_Text["NoEnoughGoldStone"])
			return
		end
	-- else
		-- User_TalkChannel2005(tTheSixthHouse_Text["NoGoldStone"])
		-- return
	-- end
end

-- 天石购买6级房屋建材包。
function TheSixthHouse_BuyByEmoney(nNpcId)
	local nEmoney = Get_UserEMoney()
	local nNeedEmoney = tTheSixthHouse_Cont["PackEmoneyPrice"]
	if nEmoney < nNeedEmoney then
		LinkNpcGossipFunc_New(nNpcId,"5-3")
		return
	end
	
	local nEvent = tTheSixthHouse_Stc["EventType"]
	local nType = tTheSixthHouse_Stc["DataType"]["EmoneyExchange"]
	if Task_ChkStcValue(nEvent,nType,">=",1) then
		if not Task_StcInterval(nEvent,nType,1,4) then
			User_TalkChannel2005(tTheSixthHouse_Text["OneTimeExchange_1"])
			return
		else
			Task_SetStatistic(nEvent,nType,0,1,0)
			Task_SetStcTimestamp(nEvent,nType,0,0)
		end
	end
	
	local nItemId = tTheSixthHouse_Item["ItemId"]
	local sGetAttr = tTheSixthHouse_Item["Exchange"]["Attr"]

	--检查背包空间
	if not User_CheckLeftSpace(1) then
		LinkNpcGossipFunc_New(nNpcId,"5-4")
		return
	end
	
	Task_SetStatistic(nEvent,nType,1,1,0)
	Task_SetStcTimestamp(nEvent,nType,0,0)

	User_AddEMoney((-1)*nNeedEmoney)
	Item_AddNewItem(nItemId,sGetAttr)
	Sys_SaveActionFestivalLog(tTheSixthHouse_Log["EmoneyBuyPack"])
	LinkNpcGossipFunc_New(nNpcId,"5-5")
end

--选择制作某种家具
function TheSixthHouse_GetFurniture(nNpcId,nChoose,nItemId)
	local nNeedItem = tTheSixthHouse_Item["FurItem"]
	local nNeedNum = tTheSixthHouse_Furniture["NeedItem"][nChoose]
	
	if not Item_ChkItem(nNeedItem) then
		User_TalkChannel2005(tTheSixthHouse_Text["NoFurItem"])
		return
	end
	
	if not Item_ChkMulItem(nNeedItem,nNeedItem,nNeedNum) then
		User_TalkChannel2005(tTheSixthHouse_Text["NoFurItem"])
		return
	end
	
	local sFurName = tTheSixthHouse_Text["Furniture"][nItemId]
	Sys_DialogText(string.format(tTheSixthHouse_Text[nNpcId]["Text711"],nNeedNum,sFurName))
	Sys_DialogOption(tTheSixthHouse_Text[nNpcId]["Option711"],"</F>TheSixthHouse_SureToMakeFur</N>"..nNpcId.."</N>"..nChoose.."</N>"..nItemId)
	Sys_DialogOption(tTheSixthHouse_Text[nNpcId]["Option712"],"</F>NULL")
	Sys_DialogFace(nNpcId)
	Sys_DialogEnd()
end

--确定制作某种家具
function TheSixthHouse_SureToMakeFur(nNpcId,nChoose,nItemId)
	local nNeedItem = tTheSixthHouse_Item["FurItem"]
	local nNeedNum = tTheSixthHouse_Furniture["NeedItem"][nChoose]

	if not Item_ChkItem(nNeedItem) then
		User_TalkChannel2005(tTheSixthHouse_Text["NoFurItem"])
		return
	end
	
	if not Item_ChkMulItem(nNeedItem,nNeedItem,nNeedNum) then
		User_TalkChannel2005(tTheSixthHouse_Text["NoFurItem"])
		return
	end

	--检查背包空间
	if not User_CheckLeftSpace(1) then
		User_TalkChannel2005(tTheSixthHouse_Text["FullBag"])
		return
	end
	
	if Item_ChkMulItem(nNeedItem,nNeedItem,nNeedNum) and Item_DelMulItem(nNeedItem,nNeedItem,nNeedNum) then
		--给对应的家具
		Item_AddNewItem(nItemId,"")
		local sFurName = tTheSixthHouse_Text["Furniture"][nItemId]
		User_TalkChannel2005(string.format(tTheSixthHouse_Text["BuyFurniture"],sFurName))
		Sys_SaveActionFestivalLog(string.format(tTheSixthHouse_Log["BuyFurniture"],nNeedItem,nNeedNum,nChoose,nItemId))
	end
end

--确定提升一个家具上限
function TheSixthHouse_SureToAddLimit(nNpcId)
	local nNeedNum = 2
	local nItemId = 3008518
	
	if not Item_ChkItem(nItemId) then
		User_TalkChannel2005(tTheSixthHouse_Text["NoLimitItem"])
		return
	end
	
	if not Item_ChkMulItem(nItemId,nItemId,nNeedNum) then
		User_TalkChannel2005(tTheSixthHouse_Text["NoLimitItem"])
		return
	end
	
	if Item_ChkMulItem(nItemId,nItemId,nNeedNum) and Item_DelMulItem(nItemId,nItemId,nNeedNum) then
		local nEvent = tTheSixthHouse_Stc["EventType"]
		local nType = tTheSixthHouse_Stc["DataType"]["FurLimit"]
		Task_AddStatistic(nEvent,nType,1,1,0)		
		local nData = Get_UserStatisticValue(nEvent,nType)
		tNpcGossip[nNpcId]["Text1031"] = string.format(tTheSixthHouse_Text[nNpcId]["Text1031"],tonumber(20+nData))
		LinkNpcGossipFunc_New(nNpcId,"10-3")
	end
end

------------------------------------------进入揽月台逻辑---------------------------------------------------------
--进入揽月台
function TheSixthHouse_SendToMoon(nNpcId)
	local nCellX = tTheSixthHouse_Npc["Moon"]["CellX"]
	local nCellY = tTheSixthHouse_Npc["Moon"]["CellY"]
	local nMapId = tTheSixthHouse_Npc["Moon"]["MapId"]
	local nBoundCX = tTheSixthHouse_Npc["BoundCX"]
	local nBoundCY = tTheSixthHouse_Npc["BoundCY"]
	User_UserRandBoundTrans(nMapId,nCellX,nCellY,nBoundCX,nBoundCY,1,0)
	User_TalkChannel2005(tTheSixthHouse_Text[nNpcId]["ToMoon"])
end

-------------------------------------------种植区部分-------------------------------------------------------------
--点选某个种子 购买
function TheSixthHouse_BuySeed(nNpcId,nSeedId)
	local nEmoney = tTheSixthHouse_Seed[nSeedId][1]
	if Get_UserEMoney() < nEmoney then
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return
	end

	local sSeedName = tTheSixthHouse_Text["SeedTip"][nSeedId]
	Sys_DialogText(string.format(tTheSixthHouse_Text[nNpcId]["Text311"],nEmoney,sSeedName))
	Sys_DialogOption(tTheSixthHouse_Text[nNpcId]["Option25"],"</F>TheSixthHouse_SureBuySeed</N>"..nNpcId.."</N>"..nSeedId)
	Sys_DialogOption(tTheSixthHouse_Text[nNpcId]["Option26"],"</F>NULL")
	Sys_DialogFace(nNpcId)
	Sys_DialogEnd()
end

--二次确认买种子
function TheSixthHouse_SureBuySeed(nNpcId,nSeedId)
	local nEmoney = tTheSixthHouse_Seed[nSeedId][1]
	local nSeedName = tTheSixthHouse_Text["SeedName"][nSeedId]
	if Get_UserEMoney() < nEmoney then
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return
	end
	
	if not User_CheckLeftSpace(tTheSixthHouse_Cont["BagSpace_1"]) then
		LinkNpcGossipFunc_New(nNpcId,"3-3")
		return
	end
	
	--扣除天石
	User_AddEMoney((-1)*nEmoney)
	Item_AddItem(nSeedId)
	Sys_SaveActionFestivalLog(string.format(tTheSixthHouse_Log["EmoneyBuySeed"],nEmoney,nSeedId))
	Sys_SaveEmoneyBuy(string.format(tTheSixthHouse_Log["BuySeed"],nEmoney,nEmoney))
	
	User_TalkChannel2005(string.format(tTheSixthHouse_Text["GetSeed"],1,nSeedName))
	--继续购买对白
	LinkNpcGossipFunc_New(nNpcId,"2-2")
end

--使用种子
function TheSixthHouse_UseSeed(nItemId)
	-- 判断玩家是否在房屋内
	local nMapId = Get_UserMapId()
	local nHouseId = Get_UserHouseId()
	if nMapId ~= nHouseId then
		User_TalkChannel2005(tTheSixthHouse_Text["UseInMap"])
		return
	end
	-- 增加是否选择寻路去使用该物品
	Sys_MsgBox(tTheSixthHouse_Text["UseSeed"],"</F>TheSixthHouse_AutoFindWay</N>18956")
end

--使用收获后的产物
function TheSixthHouse_UseGrass(nItemId,nChoose)
	local nData = tTheSixthHouse_Food[nItemId]
	local sItemName = tTheSixthHouse_Text["SeedName"][nItemId]
	
	if nData then
		if nChoose == 1 then
			local nLevelTop = tTheSixthHouse_Cont["LevelTop"]
			local nUserLevel = Get_UserLevel()
			if nUserLevel >= nLevelTop then
				User_TalkChannel2005(tTheSixthHouse_Text["TopLevel"])
				return
			end

			--限制每日使用次数
			local nEvent = tTheSixthHouse_Stc["EventType"]
			local nType = tTheSixthHouse_Stc["DataType"]["ExpLimit"]
			if Task_ChkStcValue(nEvent,nType,">=",1) then
				if Task_StcInterval(nEvent,nType,1,4) then
					Task_SetStatistic(nEvent,nType,0,1,0)
					Task_SetStcTimestamp(nEvent,nType,0,0)
				else
					User_TalkChannel2005(tTheSixthHouse_Text["UseLimit"])
					return
				end
			end

			if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
				-- 设置限制掩码
				Task_SetStatistic(nEvent,nType,1,1,0)
				Task_SetStcTimestamp(nEvent,nType,0,0)
				
				--300经验
				User_AddExpTime(nData)
				User_TalkChannel2005(tTheSixthHouse_Text["GetExp"])
				Sys_SaveActionFestivalLog(string.format(tTheSixthHouse_Log["GetExp"],nItemId,nData))
			end
		elseif nChoose == 2 then
			if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
				--150修行值
				User_AddCultivation(nData)
				User_TalkChannel2005(tTheSixthHouse_Text["GetCultivation"])
				Sys_SaveActionFestivalLog(string.format(tTheSixthHouse_Log["GetCultivation"],nItemId,nData))
			end
		elseif nChoose == 3 then
			if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
				--200气力值
				User_AddStrengthValue(nData)
				User_TalkChannel2005(tTheSixthHouse_Text["GetStrength"])
				Sys_SaveActionFestivalLog(string.format(tTheSixthHouse_Log["GetStrength"],nItemId,nData))
			end
		else
			User_TalkChannel2005(tTheSixthHouse_Text["UseGrass"])
		end
	else
		-- 判断玩家是否在房屋内
		local nMapId = Get_UserMapId()
		local nHouseId = Get_UserHouseId()
		if nMapId ~= nHouseId then
			User_TalkChannel2005(tTheSixthHouse_Text["UseInMap"])
			return
		end
		
		if nChoose >= 4 and nChoose <= 6 then
			Sys_MsgBox(string.format(tTheSixthHouse_Text["UseGrass_1"],sItemName),"</F>TheSixthHouse_AutoFindWay</N>18958")
		elseif nChoose == 7 then
			Sys_MsgBox(tTheSixthHouse_Text["UseGrass_2"],"</F>TheSixthHouse_AutoFindWay</N>18955")
		end
		-- User_TalkChannel2005(tTheSixthHouse_Text["UseGrass"])
	end
end

-------------------------------------------种子npc------------------------------------------------------------------
-- 寻路去找园丁
function TheSixthHouse_FindGardener()
	local nHouseId = Get_UserHouseId()
	local nPosX = tTheSixthHouse_Npc[18956]["CellX"]
	local nPosY = tTheSixthHouse_Npc[18956]["CellY"]
	Sys_GotoSomeWhere(nPosX,nPosY,nHouseId,18956)
end

--可种植npc 种植某个种子
function TheSixthHouse_PlantSeed(nItemId)
	local nNpcId = Get_NpcId()
	local nPosX = Get_NpcPositionX()
	local nPosY = Get_NpcPositionY()
	for i = 19035,19051,2 do 
		if nPosX == tTheSixthHouse_DynaNpc["PlantInfo"][i][2] and nPosY == tTheSixthHouse_DynaNpc["PlantInfo"][i][3] then
			nNpcId = i
		end
	end	
	
	if not Item_ChkItem(nItemId) then
		User_TalkChannel2005(string.format(tTheSixthHouse_Text["NoSeed"],tTheSixthHouse_Text["SeedName"][nItemId]))
		return
	end
	
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		--设置掩码
		local nEvent = tTheSixthHouse_Stc["EventType"]
		local nType = tTheSixthHouse_Stc["DataType"]["Seed"]
		Task_AddStatistic(nEvent,nType,1,1,0)
		Task_SetStcTimestamp(nEvent,nType,0,0)
		
		local nNextNpc = tonumber(nNpcId + 1)
		local nSeedType = tTheSixthHouse_Stc["DataType"][nNextNpc]
		Task_SetStatistic(nEvent,nSeedType,nItemId,1,0)
		Task_SetStcTimestamp(nEvent,nSeedType,0,0)
		
		Sys_SaveActionFestivalLog(string.format(tTheSixthHouse_Log["SeedPlant"],nItemId))
		local sSeedName = tTheSixthHouse_Text["SeedName"][nItemId]
		local nNeedTime = tTheSixthHouse_Seed[nItemId][3]
		
		local sTime = ""
		if nNeedTime >= 24 then
			nNeedTime = tonumber(nNeedTime / 24)
			sTime = string.format(tTheSixthHouse_Text["Day"],math.floor(nNeedTime))
		else
			sTime = string.format(tTheSixthHouse_Text["Hour"],nNeedTime)
		end
		
		local nHarvestItem = tTheSixthHouse_Seed["GetReward"][nItemId]
		local sHarvestName = tTheSixthHouse_Text["SeedName"][nHarvestItem]
		
		if nItemId >= 3008521 and nItemId <= 3008528 then
			local nOrItem = tTheSixthHouse_Seed["PetEgg"][1]
			if nItemId >= 3008521 and nItemId <= 3008523 then
				nOrItem = tTheSixthHouse_Seed["PetEgg"][1]
			elseif nItemId >= 3008524 and nItemId <= 3008528 then
				nOrItem = tTheSixthHouse_Seed["PetEgg"][2]
			end
			local sOrName = tTheSixthHouse_Text["SeedName"][nOrItem]
			local sOr = string.format(tTheSixthHouse_Text["OrScrap"],sOrName)
			sHarvestName = string.format(tTheSixthHouse_Text["OrScrap1"],sHarvestName,sOr)
		end
		
		User_TalkChannel2005(string.format(tTheSixthHouse_Text["SeedPlant"],sSeedName,sTime,sHarvestName))

		local nUserId = Get_UserId()
		local nHouseId = Get_UserHouseId()
		--删除可种植的npc
		local sField = tTheSixthHouse_DynaNpc["Field"]
		local sData = tTheSixthHouse_Text["Name"][nNpcId]
		-- Npc_DelDynaNpc(nHouseId,sField,sData)
		Npc_DelDynaByID()
		
		--创建一个已种植的npc
		local sLandName = tTheSixthHouse_Text["SeedName"][nItemId]
		local nNpcType = tTheSixthHouse_DynaNpc["Type"]
		local nSort = tTheSixthHouse_DynaNpc["Sort"]
		local nLandLookFace = tTheSixthHouse_DynaNpc["Lookface"][nItemId]
		local nLandPosX = tTheSixthHouse_DynaNpc["PlantInfo"][nNextNpc][2]
		local nLandPosY = tTheSixthHouse_DynaNpc["PlantInfo"][nNextNpc][3]
		local nLandTask0 = tTheSixthHouse_DynaNpc["PlantInfo"][nNextNpc][4]
		Npc_CreateDynaNpc(sLandName,nNpcType,nSort,nLandLookFace,0,nUserId,nHouseId,nLandPosX,nLandPosY,0,0,0,nLandTask0)
	end
end

--开垦田地
function TheSixthHouse_OpenNextLand(nNpcId,nChoose)
	--获取当前玩家开垦了多少块田地
	local nEvent = tTheSixthHouse_Stc["EventType"]
	local nLandType = tTheSixthHouse_Stc["DataType"]["Land"]
	local nLand = Get_UserStatisticValue(nEvent,nLandType)
	local nNextLand = tonumber(nLand + 1)
	
	if nNextLand >= 10 then
		Sys_MsgBox(tTheSixthHouse_Text["FullLand"])
		return
	end
	
	if nLand ~= 0 and nNextLand <= 9 then
		local nNeedPlant = tTheSixthHouse_Land[nNextLand][1]
		local nNeedStone = tTheSixthHouse_Land[nNextLand][2]
		local nNeedEmoney = tTheSixthHouse_Land[nNextLand][3]
		
		local nSeedType = tTheSixthHouse_Stc["DataType"]["Seed"]
		local nSeed = Get_UserStatisticValue(nEvent,nSeedType)
		local nItemId = tTheSixthHouse_Item["ItemId"]   --建材
		
		--材料开通
		if nChoose == 1 then
			--判断种植的种子是否满足开田数量
			if nSeed < nNeedPlant then
				--种植种子数量不足，不可开通
				LinkNpcGossipFunc_New(nNpcId,"4-2")
				return
			end
			
			if not Item_ChkMulItem(nItemId,nItemId,nNeedStone) then
				--物品数量不足，不可开通
				LinkNpcGossipFunc_New(nNpcId,"4-3")
				return
			end
			
			if Item_ChkMulItem(nItemId,nItemId,nNeedStone) and Item_DelMulItem(nItemId,nItemId,nNeedStone) then
				Sys_SaveActionFestivalLog(string.format(tTheSixthHouse_Log["ItemOpenLand"],nItemId,nNeedStone,nNextLand))
			end
		elseif nChoose == 2 then
			--天石开通
			if Get_UserEMoney() < nNeedEmoney then
				LinkNpcGossipFunc_New(nNpcId,"4-4")
				return
			end
			tNpcGossip[nNpcId]["Text471"] = string.format(tTheSixthHouse_Text[nNpcId]["Text471"],nNeedEmoney,nNextLand)
			LinkNpcGossipFunc_New(nNpcId,"4-7")
			return
		end

		--开垦成功  田地掩码+1
		Task_AddStatistic(nEvent,nLandType,1,1,0)
		
		local nUserId = Get_UserId()
		local nHouseId = Get_UserHouseId()
		local nNpcType = tTheSixthHouse_DynaNpc["Type"]
		local nSort = tTheSixthHouse_DynaNpc["Sort"]
		local nNextNpcId = tTheSixthHouse_Land[nNextLand][4]
		local sLandName = tTheSixthHouse_Text["Name"][nNextNpcId]
		local nLandLookFace = tTheSixthHouse_DynaNpc["PlantInfo"][nNextNpcId][1]
		local nLandPosX = tTheSixthHouse_DynaNpc["PlantInfo"][nNextNpcId][2]
		local nLandPosY = tTheSixthHouse_DynaNpc["PlantInfo"][nNextNpcId][3]
		local nLandTask0 = tTheSixthHouse_DynaNpc["PlantInfo"][nNextNpcId][4]
		Npc_CreateDynaNpc(sLandName,nNpcType,nSort,nLandLookFace,0,nUserId,nHouseId,nLandPosX,nLandPosY,0,0,0,nLandTask0)
		
		LinkNpcGossipFunc_New(nNpcId,"4-5")
	end
end

-- 天石开垦土地二次确认
function TheSixthHouse_OpenWithEmoneySure(nNpcId)
	--获取当前玩家开垦了多少块田地
	local nEvent = tTheSixthHouse_Stc["EventType"]
	local nLandType = tTheSixthHouse_Stc["DataType"]["Land"]
	local nLand = Get_UserStatisticValue(nEvent,nLandType)
	local nNextLand = tonumber(nLand + 1)
	
	if nNextLand >= 10 then
		Sys_MsgBox(tTheSixthHouse_Text["FullLand"])
		return
	end
	
	if nLand ~= 0 and nNextLand <= 9 then
		local nNeedPlant = tTheSixthHouse_Land[nNextLand][1]
		local nNeedStone = tTheSixthHouse_Land[nNextLand][2]
		local nNeedEmoney = tTheSixthHouse_Land[nNextLand][3]
		
		local nSeedType = tTheSixthHouse_Stc["DataType"]["Seed"]
		local nSeed = Get_UserStatisticValue(nEvent,nSeedType)
		local nItemId = tTheSixthHouse_Item["ItemId"]   --建材

		--天石开通
		if Get_UserEMoney() < nNeedEmoney then
			LinkNpcGossipFunc_New(nNpcId,"4-4")
			return
		end
		
		User_AddEMoney((-1)*nNeedEmoney)
		Sys_SaveActionFestivalLog(string.format(tTheSixthHouse_Log["EMOpenLand"],nNeedEmoney,nNextLand))
		Sys_SaveEmoneyBuy(string.format(tTheSixthHouse_Log["OpenLand"],nNeedEmoney,nNeedEmoney))

		--开垦成功  田地掩码+1
		Task_AddStatistic(nEvent,nLandType,1,1,0)
		
		local nUserId = Get_UserId()
		local nHouseId = Get_UserHouseId()
		local nNpcType = tTheSixthHouse_DynaNpc["Type"]
		local nSort = tTheSixthHouse_DynaNpc["Sort"]
		local nNextNpcId = tTheSixthHouse_Land[nNextLand][4]
		local sLandName = tTheSixthHouse_Text["Name"][nNextNpcId]
		local nLandLookFace = tTheSixthHouse_DynaNpc["PlantInfo"][nNextNpcId][1]
		local nLandPosX = tTheSixthHouse_DynaNpc["PlantInfo"][nNextNpcId][2]
		local nLandPosY = tTheSixthHouse_DynaNpc["PlantInfo"][nNextNpcId][3]
		local nLandTask0 = tTheSixthHouse_DynaNpc["PlantInfo"][nNextNpcId][4]
		Npc_CreateDynaNpc(sLandName,nNpcType,nSort,nLandLookFace,0,nUserId,nHouseId,nLandPosX,nLandPosY,0,0,0,nLandTask0)
		
		LinkNpcGossipFunc_New(nNpcId,"4-5")
	end
end

-- 一键开垦
function TheSixthHouse_OpenOneTime(nNpcId,nChoose)
	--获取当前玩家开垦了多少块田地
	local nEvent = tTheSixthHouse_Stc["EventType"]
	local nLandType = tTheSixthHouse_Stc["DataType"]["Land"]
	local nLand = Get_UserStatisticValue(nEvent,nLandType)
	local nNextLand = tonumber(nLand + 1)
	
	if nChoose ~= 1 then
		if nNextLand >= 10 then
			Sys_MsgBox(tTheSixthHouse_Text["FullLand"])
			return
		end
		LinkNpcGossipFunc_New(nNpcId,"4-6")
	else
		--天石开通
		local nNeedEmoney = tTheSixthHouse_Land[nNextLand][5]
		if Get_UserEMoney() < nNeedEmoney then
			LinkNpcGossipFunc_New(nNpcId,"4-4")
			return
		end
		User_AddEMoney((-1)*nNeedEmoney)
		Sys_SaveActionFestivalLog(string.format(tTheSixthHouse_Log["OpenLandOneTime"],nNeedEmoney))
		Sys_SaveEmoneyBuy(string.format(tTheSixthHouse_Log["OpenLand"],nNeedEmoney,nNeedEmoney))
		
		--开垦成功  田地掩码
		Task_SetStatistic(nEvent,nLandType,9,1,0)		
		
		local nUserId = Get_UserId()
		local nHouseId = Get_UserHouseId()
		local nNpcType = tTheSixthHouse_DynaNpc["Type"]
		local nSort = tTheSixthHouse_DynaNpc["Sort"]
		for i = nNextLand,9 do
			local nNextNpcId = tTheSixthHouse_Land[i][4]
			local sLandName = tTheSixthHouse_Text["Name"][nNextNpcId]
			local nLandLookFace = tTheSixthHouse_DynaNpc["PlantInfo"][nNextNpcId][1]
			local nLandPosX = tTheSixthHouse_DynaNpc["PlantInfo"][nNextNpcId][2]
			local nLandPosY = tTheSixthHouse_DynaNpc["PlantInfo"][nNextNpcId][3]
			local nLandTask0 = tTheSixthHouse_DynaNpc["PlantInfo"][nNextNpcId][4]
			Npc_CreateDynaNpc(sLandName,nNpcType,nSort,nLandLookFace,0,nUserId,nHouseId,nLandPosX,nLandPosY,0,0,0,nLandTask0)
		end
		LinkNpcGossipFunc_New(nNpcId,"4-5")
	end
end

--已种植npc
--收获
function TheSixthHouse_Harvest()
	local nNpcId = Get_NpcId()
	local nPosX = Get_NpcPositionX()
	local nPosY = Get_NpcPositionY()
	for i = 19036,19052,2 do 
		if nPosX == tTheSixthHouse_DynaNpc["PlantInfo"][i][2] and nPosY == tTheSixthHouse_DynaNpc["PlantInfo"][i][3] then
			nNpcId = i
		end
	end

	local nEvent = tTheSixthHouse_Stc["EventType"]
	local nSeedType = tTheSixthHouse_Stc["DataType"][nNpcId]
	local nData = Get_UserStatisticValue(nEvent,nSeedType)
	if nData ~= 0 then
		local nTime = tTheSixthHouse_Seed[nData][3]
		if not Task_StcInterval(nEvent,nSeedType,nTime,2) then
			--未成熟
			local nPay = tTheSixthHouse_Seed[nData][2]
			
			local sTime = ""
			if nTime >= 24 then
				nTime = tonumber(nTime / 24)
				sTime = string.format(tTheSixthHouse_Text["Day"],math.floor(nTime))
			else
				sTime = string.format(tTheSixthHouse_Text["Hour"],nTime)
			end
			
			local str = ""
			if nPay >= 10000 then
				str = tTheSixthHouse_Text["Money"]
			else
				str = tTheSixthHouse_Text["Emoney"]
			end
			
			tNpcGossip[nNpcId]["Text211"] = string.format(tTheSixthHouse_Text[19036]["Text211"],sTime,str)
			LinkNpcGossipFunc_New(nNpcId,"2-1")
			return
		else
			local sSeedName = tTheSixthHouse_Text["SeedName"][nData]
			-- 判断背包空间
			if not User_CheckLeftSpace(tTheSixthHouse_Cont["BagSpace_1"]) then
				User_TalkChannel2005(string.format(tTheSixthHouse_Text[19036]["Text441"],sSeedName))
				return
			end
		
			--成熟,收获成功操作
			if TheSixthHouse_RipeSuccess(nNpcId) then
				LinkNpcGossipFunc_New(nNpcId,"2-2")
			end
		end
	end
end

--快速收获种子
function TheSixthHouse_PayHarvest()
	local nNpcId = Get_NpcId()
	local nPosX = Get_NpcPositionX()
	local nPosY = Get_NpcPositionY()
	for i = 19036,19052,2 do 
		if nPosX == tTheSixthHouse_DynaNpc["PlantInfo"][i][2] and nPosY == tTheSixthHouse_DynaNpc["PlantInfo"][i][3] then
			nNpcId = i
		end
	end
	
	local nEvent = tTheSixthHouse_Stc["EventType"]
	local nSeedType = tTheSixthHouse_Stc["DataType"][nNpcId]
	local nData = Get_UserStatisticValue(nEvent,nSeedType)
	if nData ~= 0 then
		local nPay = tTheSixthHouse_Seed[nData][2]
		local sSeedName = tTheSixthHouse_Text["SeedName"][nData]
		if nPay >= 10000 then
			--金币支付
			if not User_CanPutMoney2Bag(nPay) then
				LinkNpcGossipFunc_New(nNpcId,"4-3")
				return
			end
			Sys_DialogText(string.format(tTheSixthHouse_Text[19036]["Text411"],sSeedName,nPay))
		else
			--天石支付
			if Get_UserEMoney() < nPay then
				LinkNpcGossipFunc_New(nNpcId,"4-2")
				return
			end
			Sys_DialogText(string.format(tTheSixthHouse_Text[19036]["Text412"],sSeedName,nPay))
		end
		
		Sys_DialogOption(tTheSixthHouse_Text[19036]["Option7"],"</F>TheSixthHouse_SurePayHarvest</N>"..nNpcId.."</N>"..nPay.."</N>"..nData)
		Sys_DialogOption(tTheSixthHouse_Text[19036]["Option3"],"</F>NULL")
		Sys_DialogFace(nNpcId)
		Sys_DialogEnd()
	end
end

function TheSixthHouse_SurePayHarvest(nNpcId,nPay,nData)
	local nEvent = tTheSixthHouse_Stc["EventType"]
	local nSeedType = tTheSixthHouse_Stc["DataType"][nNpcId]
	local nData = Get_UserStatisticValue(nEvent,nSeedType)
	local sSeedName = tTheSixthHouse_Text["SeedName"][nData]

	-- 判断背包空间
	if not User_CheckLeftSpace(tTheSixthHouse_Cont["BagSpace_1"]) then
		User_TalkChannel2005(string.format(tTheSixthHouse_Text[19036]["Text441"],sSeedName))
		return
	end
	
	if nPay >= 10000 then
		--金币支付
		if not User_CanPutMoney2Bag((-1)*nPay) then
			LinkNpcGossipFunc_New(nNpcId,"4-3")
			return
		end
		User_AddMoney((-1)*nPay)
		Sys_SaveActionFestivalLog(string.format(tTheSixthHouse_Log["Money"],nPay,nData))
	else
		--天石支付
		if Get_UserEMoney() < nPay then
			LinkNpcGossipFunc_New(nNpcId,"4-2")
			return
		end
		User_AddEMoney((-1)*nPay)
		Sys_SaveActionFestivalLog(string.format(tTheSixthHouse_Log["EMoney"],nPay,nData))
	end
	
	--成熟,收获成功操作
	if TheSixthHouse_RipeSuccess(nNpcId) then
		LinkNpcGossipFunc_New(nNpcId,"2-2")
	end
end

--收获成功操作
function TheSixthHouse_RipeSuccess(nNpcId)
	local nEvent = tTheSixthHouse_Stc["EventType"]
	local nSeedType = tTheSixthHouse_Stc["DataType"][nNpcId]
	local nData = Get_UserStatisticValue(nEvent,nSeedType)
	
	local sSeedName = tTheSixthHouse_Text["SeedName"][nData]

	--获得物品
	local nRewardId = tTheSixthHouse_Seed["GetReward"][nData]
	-- if not User_CheckLeftSpace(tTheSixthHouse_Cont["BagSpace_1"]) then
		-- User_TalkChannel2005(string.format(tTheSixthHouse_Text[19036]["Text441"],sSeedName))
		-- return
	-- end
	
	--删除当前已种植的npc
	local nHouseId = Get_UserHouseId()
	-- local sField = tTheSixthHouse_DynaNpc["Field"]
	-- local sData = tTheSixthHouse_Text["Name"][nNpcId]
	-- Npc_DelDynaNpc(nHouseId,sField,sData)
	Npc_DelDynaByID()
	
	--创建可种植的npc	
	local nUserId = Get_UserId()
	local nLastNpc = tonumber(nNpcId - 1)
	local nNpcType = tTheSixthHouse_DynaNpc["Type"]
	local nSort = tTheSixthHouse_DynaNpc["Sort"]
	local sLandName = tTheSixthHouse_Text["Name"][nLastNpc]
	local nLandLookFace = tTheSixthHouse_DynaNpc["PlantInfo"][nLastNpc][1]
	local nLandTask0 = tTheSixthHouse_DynaNpc["PlantInfo"][nLastNpc][4]
	local nLandPosX = tTheSixthHouse_DynaNpc["PlantInfo"][nLastNpc][2]
	local nLandPosY = tTheSixthHouse_DynaNpc["PlantInfo"][nLastNpc][3]
	Npc_CreateDynaNpc(sLandName,nNpcType,nSort,nLandLookFace,0,nUserId,nHouseId,nLandPosX,nLandPosY,0,0,0,nLandTask0)
	
	local sGetSeedName = tTheSixthHouse_Text["SeedName"][nRewardId]
	local nNum = 1
	if nData == 3008141 then			--获得时效护心丹的种子
		Item_AddNewItem(nRewardId,"0 5 0 0 1")
		nNum = 5
	elseif nData == 3008136 then		--获得五个满血药
		Item_AddNewItem(nRewardId,"0 5")
		nNum = 5
	elseif nData >= 3008521 and nData <= 3008523 then	--获得普通宠物蛋
		if Sys_Random(100,3000) then
			Item_AddNewItem(nRewardId,"")
		else			
			Item_AddNewItem(tTheSixthHouse_Seed["PetEgg"][1],"")
			local nScrapId = tTheSixthHouse_Seed["PetEgg"][1]
			sGetSeedName = tTheSixthHouse_Text["SeedName"][nScrapId]
		end
	elseif nData >= 3008524 and nData <= 3008528 then		--获得神兽宠物蛋
		if Sys_Random(100,3000) then
			Item_AddNewItem(nRewardId,"")
		else
			Item_AddNewItem(tTheSixthHouse_Seed["PetEgg"][2],"")
			local nScrapId = tTheSixthHouse_Seed["PetEgg"][2]
			sGetSeedName = tTheSixthHouse_Text["SeedName"][nScrapId]
		end
	else
		Item_AddNewItem(nRewardId,"")
	end
	
	User_TalkChannel2005(string.format(tTheSixthHouse_Text["GetSeed"],nNum,sGetSeedName))
	Sys_SaveActionFestivalLog(string.format(tTheSixthHouse_Log["HarvestReward"],nData,nRewardId))
	return true
end

------------------------------------------家具制作功能 与 宠物区域开通部分------------------------------------------------
--上交天石开通。
function TheSixthHouse_OpenUseEmoney(nNpcId)
	local nEmoney = Get_UserEMoney()
	
	--管家处开通家具制作功能
	if nNpcId == 18955 then
		if nEmoney < tTheSixthHouse_Cont["Open"] then
			LinkNpcGossipFunc_New(nNpcId,"8-2")
			return
		end
		
		-- --失败，已上交过升级材料
		-- if TheSixthHouse_ChkStcComplete("FurWait") then
			-- LinkNpcGossipFunc_New(nNpcId,"8-4")
			-- return	
		-- end

		LinkNpcGossipFunc_New(nNpcId,"8-1")
		
	else		--宠物区开通
		if nEmoney < tTheSixthHouse_Cont["Open"] then
			LinkNpcGossipFunc_New(nNpcId,"3-2")
			return
		end
		
		-- --失败，已上交过升级材料
		-- if TheSixthHouse_ChkStcComplete("AnimalWait") then
			-- LinkNpcGossipFunc_New(nNpcId,"3-4")
			-- return	
		-- end

		LinkNpcGossipFunc_New(nNpcId,"3-1")
	end
end

--上交材料开通。
function TheSixthHouse_OpenUseItem(nNpcId,nItemId)
	--管家处开通家具制作功能
	if nNpcId == 18955 then
		-- --失败，已上交过升级材料
		-- if TheSixthHouse_ChkStcComplete("FurWait") then
			-- LinkNpcGossipFunc_New(nNpcId,"9-4")
			-- return	
		-- end
		LinkNpcGossipFunc_New(nNpcId,"9-1")
		
	else		--宠物区开通
		-- --失败，已上交过升级材料
		-- if TheSixthHouse_ChkStcComplete("AnimalWait") then
			-- LinkNpcGossipFunc_New(nNpcId,"2-4")
			-- return	
		-- end
		LinkNpcGossipFunc_New(nNpcId,"2-1")
	end
end

--判断是否要开通成功
function TheSixthHouse_IsOpenSuccess(nNpcId,nChoose,nItemId)
	if nChoose == 1 then
		if nNpcId == 18955 then
			local nItemNum = tTheSixthHouse_Item["OpenFurNeed"]
			
			if not Item_ChkItem(nItemId) then
				LinkNpcGossipFunc_New(nNpcId,"9-2")
				return
			end
			
			if not Item_ChkMulItem(nItemId,nItemId,nItemNum) then
				LinkNpcGossipFunc_New(nNpcId,"9-2")
				return
			end
			
			if Item_ChkMulItem(nItemId,nItemId,nItemNum) and Item_DelMulItem(nItemId,nItemId,nItemNum) then
				-- --设置掩码  掩码控制一天时间后才开放		
				-- local nEvent = tTheSixthHouse_Stc["EventType"]
				-- local nType = tTheSixthHouse_Stc["DataType"]["FurWait"]
				-- local nComplete = tTheSixthHouse_Stc["Complete"]["FurWait"]
				-- Task_SetStatistic(nEvent,nType,nComplete,1,0)
				-- Task_SetStcTimestamp(nEvent,nType,0,0)

				Sys_SaveActionFestivalLog(string.format(tTheSixthHouse_Log["HandInItem"],nItemId,nItemNum))
				Sys_SaveEmoneyBuy(tTheSixthHouse_Log["OpenFurResource"])
			end
		else
			local nItemNum = tTheSixthHouse_Item["OpenPetNeed"]
			
			if not Item_ChkItem(nItemId) then
				LinkNpcGossipFunc_New(nNpcId,"2-2")
				return
			end
			if not Item_ChkMulItem(nItemId,nItemId,nItemNum) then
				LinkNpcGossipFunc_New(nNpcId,"2-2")
				return
			end
			
			if Item_ChkMulItem(nItemId,nItemId,nItemNum) and Item_DelMulItem(nItemId,nItemId,nItemNum) then
				-- --设置掩码  掩码控制一天时间后才开放		
				-- local nEvent = tTheSixthHouse_Stc["EventType"]
				-- local nType = tTheSixthHouse_Stc["DataType"]["AnimalWait"]
				-- local nComplete = tTheSixthHouse_Stc["Complete"]["AnimalWait"]
				-- Task_SetStatistic(nEvent,nType,nComplete,1,0)
				-- Task_SetStcTimestamp(nEvent,nType,0,0)

				Sys_SaveActionFestivalLog(string.format(tTheSixthHouse_Log["HandInItem"],nItemId,nItemNum))
				Sys_SaveEmoneyBuy(tTheSixthHouse_Log["OpenAnimalResource"])
			end
		end
	elseif nChoose == 2 then			
		local nEmoney = Get_UserEMoney()
		if nNpcId == 18955 then
			if nEmoney < tTheSixthHouse_Cont["Open"] then
				LinkNpcGossipFunc_New(nNpcId,"8-2")
				return
			end
		else
			if nEmoney < tTheSixthHouse_Cont["Open"] then
				LinkNpcGossipFunc_New(nNpcId,"3-2")
				return
			end
		end			
		--扣除天石
		local nAddEMoney = tTheSixthHouse_Cont["Open"]
		User_AddEMoney((-1)*nAddEMoney)
		
		if nNpcId == 18955 then		-- 天石开通家具制作
			Sys_SaveEmoneyBuy(tTheSixthHouse_Log["OpenFur"])
		else			-- 天石开通后花园
			Sys_SaveEmoneyBuy(tTheSixthHouse_Log["OpenAnimal"])
		end
	end
	
	if nNpcId == 18955 then
		--开通
		local nOpenEvent = tTheSixthHouse_Stc["EventType"]
		local nOpenType = tTheSixthHouse_Stc["DataType"]["FurOpen"]
		local nOpenComplete = tTheSixthHouse_Stc["Complete"]["FurOpen"]
		Task_SetStatistic(nOpenEvent,nOpenType,nOpenComplete,1,0)
		
		if nChoose == 1 then
			LinkNpcGossipFunc_New(nNpcId,"9-3")
		elseif nChoose == 2 then
			LinkNpcGossipFunc_New(nNpcId,"8-3")
		end
	else
		--开通
		local nOpenEvent = tTheSixthHouse_Stc["EventType"]
		local nOpenType = tTheSixthHouse_Stc["DataType"]["AnimalOpen"]
		local nOpenComplete = tTheSixthHouse_Stc["Complete"]["AnimalOpen"]
		Task_SetStatistic(nOpenEvent,nOpenType,nOpenComplete,1,0)
		
		local nHouseId = Get_UserHouseId()
		local nMapDoc = tTheSixthHouse_Cont["MapDoc"][2]
		Map_SetMapDoc(nHouseId,nMapDoc)
		
		--删除问号
		local sField = tTheSixthHouse_DynaNpc["Field"]
		local sData = tTheSixthHouse_Text["Name"][nNpcId]
		Npc_DelDynaNpc(nHouseId,sField,sData)

		--动态创建功能npc
		local nUserId = Get_UserId()
		local nChgNpcId = tTheSixthHouse_DynaNpc[nNpcId][1]
		local sName = tTheSixthHouse_Text["Name"][nChgNpcId]
		local nNpcType = tTheSixthHouse_DynaNpc["Type"]
		local nSort = tTheSixthHouse_DynaNpc["Sort"]
		local nLookFace = tTheSixthHouse_DynaNpc[nNpcId][2]
		local nTask0 = tTheSixthHouse_DynaNpc[nNpcId][5]
		local nPosX = tTheSixthHouse_DynaNpc[nNpcId][3]
		local nPosY = tTheSixthHouse_DynaNpc[nNpcId][4]
		Npc_CreateDynaNpc(sName,nNpcType,nSort,nLookFace,0,nUserId,nHouseId,nPosX,nPosY,0,0,0,nTask0)

		--开通成功，npc替换完成
		if nChoose == 1 then
			LinkNpcGossipFunc_New(nNpcId,"2-3")
		elseif nChoose == 2 then
			LinkNpcGossipFunc_New(nNpcId,"3-3")
		end
	end
end

----------------------------------------宠物养殖区------------------------------------------------------
--判断宠物掩码  处于第几级，领养过哪个宠物
function TheSixthHouse_ChkPetStc(nLevel,nChoose)
	local nEvent = tTheSixthHouse_Stc["EventType"]
	local nType = tTheSixthHouse_Stc["DataType"]["Pet"][nLevel]
	local nPetData = Get_UserStatisticValue(nEvent,nType) or 0
	local nData = tTheSixthHouse_Pet["Record"][nChoose]
	
	if Sys_ParseNumbersContain(nData,nPetData) then
		return true
	else
		return false
	end
end

--判断宠物经验掩码
function TheSixthHouse_ChkPetExpStc(nLevel,nChoose)
	local nExpEvent = tTheSixthHouse_Stc["DataType"]["EventType"]
	local nExpType = tTheSixthHouse_Stc["DataType"]["PetExp"][nLevel]
	local nExpData = Get_UserStatisticValue(nExpEvent,nExpType) or 0
	local nNeedExp = tTheSixthHouse_Pet["NeedExp"][nChoose][nLevel]
	
	if nExpData == nNeedExp then
		return true
	else
		return false
	end
end

--判断材料开通的时间是否超过一天
function TheSixthHouse_JudgeAdopt(nNpcId)
	-- --材料开通
	-- local nEvent = tTheSixthHouse_Stc["EventType"]
	-- local nType = tTheSixthHouse_Stc["DataType"]["AnimalWait"]
	-- local nComplete = tTheSixthHouse_Stc["Complete"]["AnimalWait"]
	-- if Task_ChkStcValue(nEvent,nType,">=",nComplete) then
		-- if Task_StcInterval(nEvent,nType,1,4) then
			-- LinkNpcGossipFunc_New(nNpcId,"2-1")
			-- return
		-- else
			-- LinkNpcGossipFunc_New(nNpcId,"1-2")
			-- return
		-- end
	-- else
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		-- return
	-- end
end

--孵化宠物
function TheSixthHouse_AdoptPet(nNpcId,nChoose)
	local sPetName = tTheSixthHouse_Text["PetName"][nChoose]
	
	local nLevel = 1
	local nHouseId = Get_UserHouseId()
	local nCellx = tTheSixthHouse_Pet["Pos"][nChoose][1]
	local nCelly = tTheSixthHouse_Pet["Pos"][nChoose][2]
	local nGenId = tTheSixthHouse_Pet["LocationInfo"][nChoose][1]
	
	--已领养过宠物
	if TheSixthHouse_ChkPetStc(1,nChoose) then

		if TheSixthHouse_ChkPetStc(2,nChoose) then
			--未达到3级
			nLevel = 2
		else
			--未达到2级
			nLevel = 1
		end
		
		local sMonsterName = ""
		if nLevel == 2 then
			sMonsterName = tTheSixthHouse_Text["PetLevel"][nChoose]
		elseif nLevel == 1 then
			sMonsterName = tTheSixthHouse_Text["PetName"][nChoose]		
		end
		
		local nIndex = tonumber(nLevel + 1)
		local nMonsterId = tTheSixthHouse_Pet["LocationInfo"][nChoose][nIndex]
		
		--检测当前玩家房屋内是否有对应的宠物，没有则重新刷出对应怪
		local nMonsterNum = Get_SysTempData(1,nHouseId,nMonsterId)
		if nMonsterNum > 0 then
			User_TalkChannel2005(tTheSixthHouse_Text[nNpcId]["Text231"])
			return
		end
		Monster_AddMonster(nHouseId,nCellx,nCelly,nGenId,nMonsterId)
		Sys_SetTempData(1,nHouseId,nMonsterId,nMonsterNum + 1)

		-- if Monster_GetMonsterByName(nHouseId,sMonsterName) == 0 then
			-- Monster_DelMonster(nHouseId,nMonsterId)
			-- Monster_AddMonster(nHouseId,nCellx,nCelly,nGenId,nMonsterId)
		-- end
		return
	end
	
	local str1 = ""
	local str2 = ""
	if nChoose <= 3 then
		str1 = tTheSixthHouse_Text["Info"][1]
		str2 = tTheSixthHouse_Text["Info"][3]
	else
		str1 = tTheSixthHouse_Text["Info"][2]
		str2 = tTheSixthHouse_Text["Info"][4]
	end
	
	local sOption15 = string.format(tTheSixthHouse_Text[nNpcId]["Option15"],sPetName)
	local sOption16 = string.format(tTheSixthHouse_Text[nNpcId]["Option16"],str2)
	
	Sys_DialogText(string.format(tTheSixthHouse_Text[nNpcId]["Text261"],str1,sPetName,sPetName,str2))
	Sys_DialogOption(sOption15,"</F>TheSixthHouse_SureToAdopt</N>1</N>"..nNpcId.."</N>"..nChoose)
	Sys_DialogOption(sOption16,"</F>TheSixthHouse_SureToAdopt</N>2</N>"..nNpcId.."</N>"..nChoose)
	Sys_DialogOption(tTheSixthHouse_Text[nNpcId]["Option17"],"</F>TheSixthHouse_CheckAnother</N>"..nNpcId.."</N>1")
	Sys_DialogOption(tTheSixthHouse_Text[nNpcId]["Option18"],"</F>NULL")
	Sys_DialogFace(nNpcId)
	Sys_DialogEnd()
end

--确定通过某种方式领养宠物
function TheSixthHouse_SureToAdopt(nWay,nNpcId,nChoose)
	local sPetName = tTheSixthHouse_Text["PetName"][nChoose]
	
	local nLevel = 1
	local nHouseId = Get_UserHouseId()
	local nCellx = tTheSixthHouse_Pet["Pos"][nChoose][1]
	local nCelly = tTheSixthHouse_Pet["Pos"][nChoose][2]
	local nGenId = tTheSixthHouse_Pet["LocationInfo"][nChoose][1]

	--已领养过宠物
	if TheSixthHouse_ChkPetStc(1,nChoose) then
		if TheSixthHouse_ChkPetStc(2,nChoose) then
			--未达到3级
			nLevel = 2
		else
			--未达到2级
			nLevel = 1
		end
		
		local sMonsterName = ""
		if nLevel == 2 then
			sMonsterName = tTheSixthHouse_Text["PetLevel"][nChoose]
		elseif nLevel == 1 then
			sMonsterName = tTheSixthHouse_Text["PetName"][nChoose]
		end
		
		local nIndex = tonumber(nLevel + 1)
		local nMonsterId = tTheSixthHouse_Pet["LocationInfo"][nChoose][nIndex]

		--检测当前玩家房屋内是否有对应的宠物，没有则重新刷出对应怪
		local nMonsterNum = Get_SysTempData(1,nHouseId,nMonsterId)
		if nMonsterNum > 0 then
			User_TalkChannel2005(tTheSixthHouse_Text[nNpcId]["Text231"])
			return
		end				
		Monster_AddMonster(nHouseId,nCellx,nCelly,nGenId,nMonsterId)
		Sys_SetTempData(1,nHouseId,nMonsterId,nMonsterNum + 1)

		-- if Monster_GetMonsterByName(nHouseId,sMonsterName) == 0 then
			-- Monster_DelMonster(nHouseId,nMonsterId)
			-- Monster_AddMonster(nHouseId,nCellx,nCelly,nGenId,nMonsterId)
		-- end
		return
	end

	--未领养宠物
	local nEggItemId = tTheSixthHouse_Pet["LocationInfo"][nChoose][5]
	local nItemId = tTheSixthHouse_Seed["PetEgg"][1]
	local str1 = ""
	local str2 = ""
	local sPlantName = tTheSixthHouse_Text["PlantName"][nChoose]
	if nChoose <= 3 then
		nItemId = tTheSixthHouse_Seed["PetEgg"][1]
		str1 = tTheSixthHouse_Text["Info"][3]
		str2 = tTheSixthHouse_Text["Info"][5]
	elseif nChoose >= 4 and nChoose <= 8 then	
		nItemId = tTheSixthHouse_Seed["PetEgg"][2]
		str1 = tTheSixthHouse_Text["Info"][4]
		str2 = tTheSixthHouse_Text["Info"][6]
	end
	
	local nNeedNum = 30
	if nWay == 1 then					--确定通过上交对应宠物蛋领养
		if not Item_ChkItem(nEggItemId) then
			-- Sys_MsgBox(string.format(tTheSixthHouse_Text[nNpcId]["Text271"],sPetName))
			Sys_DialogText(string.format(tTheSixthHouse_Text[nNpcId]["Text271"],sPetName))
			Sys_DialogText(string.format(tTheSixthHouse_Text[nNpcId]["Text272"],sPlantName,sPetName))
			Sys_DialogOption(tTheSixthHouse_Text[nNpcId]["Option19"],"</F>NULL")
			Sys_DialogFace(nNpcId)
			Sys_DialogEnd()
			return
		end
	elseif nWay == 2 then			--通过上交宠物结晶领养
		if not Item_ChkMulItem(nItemId,nItemId,nNeedNum) then
			-- Sys_MsgBox(string.format(tTheSixthHouse_Text[nNpcId]["Text281"],str1))
			Sys_DialogText(string.format(tTheSixthHouse_Text[nNpcId]["Text281"],str1))
			Sys_DialogText(string.format(tTheSixthHouse_Text[nNpcId]["Text282"],str2,str1))
			Sys_DialogOption(tTheSixthHouse_Text[nNpcId]["Option19"],"</F>NULL")
			Sys_DialogFace(nNpcId)
			Sys_DialogEnd()
			return
		end
	end
	
	if nWay == 1 then			--确定通过上交对应宠物蛋领养
		if Item_ChkItem(nEggItemId) and Item_DelItem(nEggItemId) then
			Sys_SaveActionFestivalLog(string.format(tTheSixthHouse_Log["HandInItem"],nEggItemId,1))
		end
	elseif nWay == 2 then	--通过上交宠物结晶领养
		--删除物品
		if Item_ChkMulItem(nItemId,nItemId,nNeedNum) and Item_DelMulItem(nItemId,nItemId,nNeedNum) then				
			Sys_SaveActionFestivalLog(string.format(tTheSixthHouse_Log["HandInItem"],nItemId,nNeedNum))
		end
	end
	
	--设置掩码  领养时为1级宠物
	local nEvent = tTheSixthHouse_Stc["EventType"]
	local nType = tTheSixthHouse_Stc["DataType"]["Pet"][1]
	local nData = tTheSixthHouse_Pet["Record"][nChoose]
	Task_AddStatistic(nEvent,nType,nData,1,0)
	
	--经验值掩码
	local nExpEvent = tTheSixthHouse_Stc["DataType"]["EventType"]
	local nExpType = tTheSixthHouse_Stc["DataType"]["PetExp"][nChoose]
	Task_SetStatistic(nExpEvent,nExpType,0,1,0)
	
	--刷出对应宠物
	local nMonsterId = tTheSixthHouse_Pet["LocationInfo"][nChoose][2]
	local nMonsterNum = Get_SysTempData(1,nHouseId,nMonsterId)
	if nMonsterNum > 0 then
		return
	end				
	Monster_AddMonster(nHouseId,nCellx,nCelly,nGenId,nMonsterId)
	Sys_SetTempData(1,nHouseId,nMonsterId,nMonsterNum + 1)

	User_TalkChannel2005(string.format(tTheSixthHouse_Text[nNpcId]["Text221"],sPetName))
end

--喂养升级宠物
function TheSixthHouse_UpLevelPet(nNpcId,nChoose)
	local sPetName = tTheSixthHouse_Text["PetName"][nChoose]
	
	local nEvent = tTheSixthHouse_Stc["EventType"]
	local nType = tTheSixthHouse_Stc["DataType"]["Pet"][1]
	local nData = tTheSixthHouse_Pet["Record"][nChoose]

	if nChoose == 0 then
		if not Task_ChkStcValue(nEvent,nType,">",0) then
			Sys_MsgBox(tTheSixthHouse_Text["NoPet"])
			return
		end
		LinkNpcGossipFunc_New(nNpcId,"4-1")
	else	
		--还未领养过1级的宠物
		if not TheSixthHouse_ChkPetStc(1,nChoose) then
			User_TalkChannel2005(string.format(tTheSixthHouse_Text[nNpcId]["Text451"],sPetName))
			return
		end
		
		local nLevel = 1
		if TheSixthHouse_ChkPetStc(2,nChoose) then
			--当前为2级
			nLevel = 2
		else
			--当前为1级
			nLevel = 1
		end
		
		if nLevel ==  2 then
			sPetName = tTheSixthHouse_Text["PetLevel"][nChoose]
		end
		
		local nExpEvent = tTheSixthHouse_Stc["DataType"]["EventType"]
		local nExpType = tTheSixthHouse_Stc["DataType"]["PetExp"][nChoose]
		local nExpData = Get_UserStatisticValue(nExpEvent,nExpType)
		local nNeedExp = tTheSixthHouse_Pet["NeedExp"][nChoose][nLevel]
		local nDiffExp = tonumber(nNeedExp - nExpData)

		Sys_DialogText(string.format(tTheSixthHouse_Text[nNpcId]["Text431"],sPetName,nDiffExp))
		Sys_DialogOption(tTheSixthHouse_Text[nNpcId]["Option60"],"</F>TheSixthHouse_UpPetWithFood</N>3008513</N>"..nNpcId.."</N>"..nChoose.."</N>"..nLevel)
		Sys_DialogOption(tTheSixthHouse_Text[nNpcId]["Option61"],"</F>TheSixthHouse_UpPetWithFood</N>3008516</N>"..nNpcId.."</N>"..nChoose.."</N>"..nLevel)
		Sys_DialogOption(tTheSixthHouse_Text[nNpcId]["Option62"],"</F>TheSixthHouse_UpPetWithFood</N>3008517</N>"..nNpcId.."</N>"..nChoose.."</N>"..nLevel)
		Sys_DialogOption(tTheSixthHouse_Text[nNpcId]["Option64"],"</F>TheSixthHouse_UpPetWithFood</N>450</N>"..nNpcId.."</N>"..nChoose.."</N>"..nLevel)
		Sys_DialogOption(tTheSixthHouse_Text[nNpcId]["Option63"],"</F>NULL")
		Sys_DialogFace(nNpcId)
		Sys_DialogEnd()
	end
end

--食用饲料     nLevel表示当前等级
function TheSixthHouse_UpPetWithFood(nItemId,nNpcId,nChoose,nLevel)
	if nItemId < 3000000 then
		local nEmoney = Get_UserEMoney()
		if nEmoney < nItemId then
			LinkNpcGossipFunc_New(nNpcId,"4-8")
			return
		end
	else
		if not Item_ChkItem(nItemId) then
			LinkNpcGossipFunc_New(nNpcId,"4-4")
			return
		end
	end

	local nAddExp = tTheSixthHouse_Pet["FoodExp"][nItemId]
	local nFlag = 0
	if nItemId < 3000000 then
		User_AddEMoney((-1)*nItemId)
		Sys_MsgBox(tTheSixthHouse_Text[nNpcId]["Text491"])
		LinkNpcGossipFunc_New(nNpcId,"4-1")
		Sys_SaveActionFestivalLog(tTheSixthHouse_Log["EmoneyFeedAni"])
		nFlag = 1
		TheSixthHouse_CalculateExp(nItemId,nNpcId,nChoose,nLevel,nFlag)
	else
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			nFlag = 2
			TheSixthHouse_CalculateExp(nItemId,nNpcId,nChoose,nLevel,nFlag)
		end
	end
end

-- 喂养计算经验判断
function TheSixthHouse_CalculateExp(nItemId,nNpcId,nChoose,nLevel,nFlag)
	local sMonsterName = ""
	local sNowName = ""	
	local nFurId = tTheSixthHouse_Pet["LocationInfo"][nChoose][4]

	if nLevel == 2 then
		sMonsterName = tTheSixthHouse_Text["PetLevel"][nChoose]
		sNowName = tTheSixthHouse_Text["Furniture"][nFurId]
	elseif nLevel == 1 then
		sMonsterName = tTheSixthHouse_Text["PetName"][nChoose]
		sNowName = tTheSixthHouse_Text["PetLevel"][nChoose]
	end

	local nHouseId = Get_UserHouseId()
	local nCellx = tTheSixthHouse_Pet["Pos"][nChoose][1]
	local nCelly = tTheSixthHouse_Pet["Pos"][nChoose][2]
	local nGenId = tTheSixthHouse_Pet["LocationInfo"][nChoose][1]
	
	local nIndex = tonumber(nLevel + 1)
	local nNext = tonumber(nIndex + 1)
	local nMonNowId = tTheSixthHouse_Pet["LocationInfo"][nChoose][nIndex]
	local nMonsterId = tTheSixthHouse_Pet["LocationInfo"][nChoose][nNext]
	
	local nExpEvent = tTheSixthHouse_Stc["DataType"]["EventType"]
	local nExpType = tTheSixthHouse_Stc["DataType"]["PetExp"][nChoose]
	local nExpData = Get_UserStatisticValue(nExpEvent,nExpType)
	local nNeedExp = tTheSixthHouse_Pet["NeedExp"][nChoose][nLevel]
	
	local nAddExp = tTheSixthHouse_Pet["FoodExp"][nItemId]
	--增加点数
	if nExpData + nAddExp < nNeedExp then
		Task_AddStatistic(nExpEvent,nExpType,nAddExp,1,0)
		if nFlag == 2 then
			User_TalkChannel2005(string.format(tTheSixthHouse_Text["FeedSuccess"],sMonsterName,nAddExp))
		elseif nFlag == 1 then
			User_TalkChannel2005(string.format(tTheSixthHouse_Text["FeedSuccess_1"],sMonsterName,nAddExp))
		end
		
		--继续接喂养对白
		LinkNpcGossipFunc_New(nNpcId,"4-1")
		return
	elseif nExpData + nAddExp == nNeedExp then
		Task_SetStatistic(nExpEvent,nExpType,0,1,0)
	elseif nExpData + nAddExp > nNeedExp then
		local nNewData = nExpData + nAddExp - nNeedExp
		if nLevel == 1 then
			Task_SetStatistic(nExpEvent,nExpType,nNewData,1,0)
		elseif nLevel == 2 then
			Task_SetStatistic(nExpEvent,nExpType,0,1,0)
		end
	end

	--如果升级，则删除前一个怪，刷新下一级的怪物
	--检查是否有升级前的怪 
	-- if Monster_GetMonsterByName(nHouseId,sMonsterName) then
		-- --删除升级前的怪
		-- -- Sys_SetTempData(1,nHouseId,nMonNowId,0)
		-- Monster_DelMonster(nHouseId,nMonNowId)
	-- end
	
	local nMonsterNum = Get_SysTempData(1,nHouseId,nMonNowId)
	if nMonsterNum > 0 then
		Monster_DelMonster(nHouseId,nMonNowId)
		Sys_SetTempData(1,nHouseId,nMonNowId,nMonsterNum - 1)
	end
	
	local nEvent = tTheSixthHouse_Stc["EventType"]
	local nType = tTheSixthHouse_Stc["DataType"]["Pet"][nIndex]
	local nData = tTheSixthHouse_Pet["Record"][nChoose]

	if nLevel == 1 then			
		--设置掩码  设置为下一级宠物
		Task_AddStatistic(nEvent,nType,nData,1,0)
		--刷出升级后的怪
		local nMonsterNum = Get_SysTempData(1,nHouseId,nMonsterId)
		if nMonsterNum == 0 then
			Monster_AddMonster(nHouseId,nCellx,nCelly,nGenId,nMonsterId)
			Sys_SetTempData(1,nHouseId,nMonsterId,nMonsterNum + 1)
		end
		User_TalkChannel2005(string.format(tTheSixthHouse_Text[nNpcId]["Text471"],sMonsterName))
	
	elseif nLevel == 2 then
		--检查背包
		if not User_CheckLeftSpace(1) then
			User_TalkChannel2005(tTheSixthHouse_Text["BagFull"])
			return
		end
		
		--减去对应宠物1级的掩码
		local nType1 = tTheSixthHouse_Stc["DataType"]["Pet"][1]
		local nType2 = tTheSixthHouse_Stc["DataType"]["Pet"][2]
		local nDelData = (-1)*nData
		Task_AddStatistic(nEvent,nType1,nDelData,1,0)
		Task_AddStatistic(nEvent,nType2,nDelData,1,0)

		--给对应家具
		Item_AddNewItem(nFurId,"")
		Sys_SaveActionFestivalLog(string.format(tTheSixthHouse_Log["GetFurniture"],nFurId))
		User_TalkChannel2005(string.format(tTheSixthHouse_Text["GetFurniture"],sMonsterName,sNowName))
	end
end

--判断选择哪种宠物查看经验值
function TheSixthHouse_JudgeExp(nNpcId,nChoose)
	--全部宠物都未领养过
	local nEvent = tTheSixthHouse_Stc["EventType"]
	local nType = tTheSixthHouse_Stc["DataType"]["Pet"][1]
	if not Task_ChkStcValue(nEvent,nType,">",0) then
		LinkNpcGossipFunc_New(nNpcId,"3-6")
		return
	end
	
	--分别判断两类宠物是否有领养
	local nCount = 0
	if nChoose == 1 then
		for i = 1,3 do 
			if not TheSixthHouse_ChkPetStc(1,i) then
				nCount = nCount + 1
			end
		end
		if nCount == 3 then
			LinkNpcGossipFunc_New(nNpcId,"3-2")
			return
		else
			LinkNpcGossipFunc_New(nNpcId,"3-3")
		end
	else
		for i = 4,8 do 
			if not TheSixthHouse_ChkPetStc(1,i) then
				nCount = nCount + 1
			end
		end
		if nCount == 5 then
			LinkNpcGossipFunc_New(nNpcId,"3-4")
			return
		else
			LinkNpcGossipFunc_New(nNpcId,"3-5")
		end
	end
end

--查询宠物生长情况
function TheSixthHouse_CheckExp(nNpcId,nChoose)
	local sPetName = tTheSixthHouse_Text["PetName"][nChoose]
	local nLevel = 1
	if TheSixthHouse_ChkPetStc(2,nChoose) then
		--当前为2级
		nLevel = 2
	else
		--当前为1级
		nLevel = 1
	end
	
	if nLevel ==  2 then
		sPetName = tTheSixthHouse_Text["PetLevel"][nChoose]
	end
	
	local nExpEvent = tTheSixthHouse_Stc["DataType"]["EventType"]
	local nExpType = tTheSixthHouse_Stc["DataType"]["PetExp"][nChoose]
	local nExpData = Get_UserStatisticValue(nExpEvent,nExpType)
	local nNeedExp = tTheSixthHouse_Pet["NeedExp"][nChoose][nLevel]
	local nNextExp = tTheSixthHouse_Pet["NeedExp"][nChoose][2]

	Sys_DialogText(string.format(tTheSixthHouse_Text[nNpcId]["Text371"],sPetName,nExpData))
	Sys_DialogText(tTheSixthHouse_Text[nNpcId]["Text372"])
	if nLevel == 1 then
		local sMonsterName = tTheSixthHouse_Text["PetLevel"][nChoose]
		Sys_DialogText(string.format(tTheSixthHouse_Text[nNpcId]["Text373"],nNeedExp,sMonsterName))
	end
	Sys_DialogText(string.format(tTheSixthHouse_Text[nNpcId]["Text374"],nNextExp))
	
	Sys_DialogOption(tTheSixthHouse_Text[nNpcId]["Option371"],"</F>TheSixthHouse_CheckAnother</N>"..nNpcId.."</N>2")
	Sys_DialogOption(tTheSixthHouse_Text[nNpcId]["Option372"],"</F>NULL")
	Sys_DialogFace(nNpcId)
	Sys_DialogEnd()
end

--查看其它宠物信息
function TheSixthHouse_CheckAnother(nNpcId,nChoose)
	if nChoose == 1 then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
	else
		LinkNpcGossipFunc_New(nNpcId,"3-1")
	end
end

------------------------------------------------使用宠物蛋逻辑--------------------------------------------------
--宠物结晶
function TheSixthHouse_UseEggScrap(nItemId)
	-- 判断玩家是否在房屋内
	local nMapId = Get_UserMapId()
	local nHouseId = Get_UserHouseId()
	if nMapId ~= nHouseId then
		User_TalkChannel2005(tTheSixthHouse_Text["UseInMap"])
		return
	end

	-- 增加是否选择寻路去使用该物品
	Sys_MsgBox(tTheSixthHouse_Text["UseEggScrap"][nItemId],"</F>TheSixthHouse_AutoFindWay</N>18958")
end

--宠物蛋
function TheSixthHouse_UseEgg(nItemId)
	-- 判断玩家是否在房屋内
	local nMapId = Get_UserMapId()
	local nHouseId = Get_UserHouseId()
	if nMapId ~= nHouseId then
		User_TalkChannel2005(tTheSixthHouse_Text["UseInMap"])
		return
	end

	-- 增加是否选择寻路去使用该物品
	Sys_MsgBox(tTheSixthHouse_Text["UseEgg"],"</F>TheSixthHouse_AutoFindWay</N>18958")
end

-- 使用物品寻路到物品上交处
function TheSixthHouse_AutoFindWay(nNpcId)
	local nHouseId = Get_UserHouseId()
	if nNpcId == 18958 then
		if Get_MapDoc(nHouseId) == 3990 then
			nNpcId = 18957
		else
			nNpcId = 18958
		end
	end
	local nPosX = tTheSixthHouse_Npc[nNpcId]["CellX"]
	local nPosY = tTheSixthHouse_Npc[nNpcId]["CellY"]
	Sys_GotoSomeWhere(nPosX,nPosY,nHouseId,nNpcId)
end

------------------------------------------------使用家具逻辑--------------------------------------------------
--使用家具
function TheSixthHouse_UseFurniture(nItemId,nChoose)
	if Item_ChkItem(nItemId) then
		--判断是否在房屋内使用
		local nHouseType = tTheSixthHouse_Cont["House_Type"]
		local nPlayerId = Get_UserId()
		local nUserMapType = Get_MapType()
		if not Sys_ParseNumbersContain(nHouseType,nUserMapType) then
			User_TalkChannel2005(tTheSixthHouse_Text["NotInHouse"])
			return
		end
		
		local nMapOwnerId = Get_MapOwnerId()
		if nMapOwnerId ~= nPlayerId then
			User_TalkChannel2005(tTheSixthHouse_Text["NotInHouse"])
			return
		end
		
		--判断房屋等级
		if Get_MapResLev() < 6 then
			User_TalkChannel2005(tTheSixthHouse_Text["NotReslev"])
			return
		end
		
		--宠物类家具无视家具上限
		if nChoose == 2 then
			--判断房屋中的家具数量
			local nEvent = tTheSixthHouse_Stc["EventType"]
			local nType = tTheSixthHouse_Stc["DataType"]["FurLimit"]
			local nData = Get_UserStatisticValue(nEvent,nType)
			
			--五级房屋家具数量上限12个  六级+8个
			local nFurCount = 20 + nData
			if Get_NpcCountByFurniture() >= nFurCount then
				User_TalkChannel2005(string.format(tTheSixthHouse_Text["EnoghNum"],nFurCount))
				return
			end
		end
		
		if nItemId >= 3008685 and nItemId <= 3008692 then
			Npc_RequestLayNpcByItem("TheSixthHouse_CreateNpc</N>"..nItemId,2,tTheSixthHouse_Furniture[nItemId][1])
		elseif nItemId >= 726119 and nItemId <= 726171 then
			Npc_RequestLayNpcByItem("TheSixthHouse_CreateNpc</N>"..nItemId,25,tTheSixthHouse_Furniture[nItemId][1])
		end
	end
end

function TheSixthHouse_CreateNpc(nItemId)
	if Item_ChkItem(nItemId) then
		if nItemId >= 3008685 and nItemId <= 3008692 then
			if Npc_CreatLayNpcByItem(tTheSixthHouse_Text["Furniture"][nItemId],2,32,tTheSixthHouse_Furniture[nItemId][1],0,0,0,0,0,tTheSixthHouse_Furniture[nItemId][2]) then 
				if Item_DelItem(nItemId) then
					Sys_SaveActionFestivalLog(string.format(tTheSixthHouse_Log["DelFurniture"],nItemId))
				end
			end
		elseif nItemId >= 726119 and nItemId <= 726150 then
			if Npc_CreatLayNpcByItem(tTheSixthHouse_Text["Furniture"][nItemId],25,32,tTheSixthHouse_Furniture[nItemId][1],1,0,0,1) then 
				if Item_DelItem(nItemId) then
					Sys_SaveActionFestivalLog(string.format(tTheSixthHouse_Log["DelFurniture"],nItemId))
				end
			end
		end
	end
end

--点击家具时，删除当前家具npc
function TheSixthHouse_DelFurniture(nItemId)
	local sFurName = tTheSixthHouse_Text["Furniture"][nItemId]
	Sys_DialogText(string.format(tTheSixthHouse_Text["FurDialog"]["Text111"],sFurName))
	Sys_DialogOption(tTheSixthHouse_Text["FurDialog"]["Option1"],"</F>TheSixthHouse_FoldFurniture</N>"..nItemId)
	Sys_DialogEnd()
end

--收起家具
function TheSixthHouse_FoldFurniture(nItemId)
	local nPlayerId = Get_UserId()
	local nMapOwnerId = Get_MapOwnerId()
	if nMapOwnerId ~= nPlayerId then
		return
	end
	
	if not User_CheckLeftSpace(tTheSixthHouse_Cont["BagSpace_1"]) then
		User_TalkChannel2005(tTheSixthHouse_Text["FullBag"])
		return
	end
	
	Npc_DelDynaByID()
	Item_AddNewItem(nItemId,"")
end

-------------------------------------------------道具获得途径部分------------------------------------------------------------
--使用获得建材的礼包
-- 3008101	各种积分换建材
function TheSixthHouse_UseBagPack(nItemId)
	if Item_ChkItem(nItemId,1) then
		--检查掩码  一天开三次
		local nEvent = tTheSixthHouse_Stc["EventType"]
		local nType = tTheSixthHouse_Stc["DataType"]["BagPack"]
		if Task_ChkStcValue(nEvent,nType,">=",3) then
			if Task_StcInterval(nEvent,nType,1,4) then
				Task_SetStatistic(nEvent,nType,0,1,0)
				Task_SetStcTimestamp(nEvent,nType,0,0)
			else
				User_TalkChannel2005(tTheSixthHouse_Text[nItemId]["CannotOpen"])
				return
			end
		end
		
		if not User_CheckLeftSpace(1) then
			User_TalkChannel2005(tTheSixthHouse_Text[3008102]["BagFull"])
			return
		end
		
		--删除礼包，设置掩码，给一个建材
		if Item_DelItem(nItemId,1) then
			Task_AddStatistic(nEvent,nType,1,1,0)
			Task_SetStcTimestamp(nEvent,nType,0,0)
			
			local nAddItemId = tTheSixthHouse_Item["ItemId"]
			Item_AddNewItem(nAddItemId,"")
			Sys_SaveActionFestivalLog(tTheSixthHouse_Log["GetItem"])
			User_TalkChannel2005(tTheSixthHouse_Text[nItemId]["GetItem"])
		end
	end
end

-- 3008102	黄金联赛签到包换5级
function TheSixthHouse_UseSignPack(nItemId)
	if Item_ChkItem(nItemId) then
		local nEvent = tTheSixthHouse_Stc["DataType"]["EventType"]
		local nDayType = tTheSixthHouse_Stc["DataType"]["SignDays"]
		local nDayData = Get_UserStatisticValue(nEvent,nDayType) or 0
		
		local nSignType = tTheSixthHouse_Stc["DataType"]["SignPack"]
		
		if Task_ChkStcValue(nEvent,nSignType,">=",1) then
			if not Task_StcInterval(nEvent,nSignType,1,4) then
				User_TalkChannel2005(tTheSixthHouse_Text[nItemId]["CannotOpen"])
				return
			end
		end
		
		if Task_ChkStcValue(nEvent,nDayType,">=",30) then
			User_TalkChannel2005(tTheSixthHouse_Text[nItemId]["Already"])
			return
		end
		
		-- 第三十天，删除物品给奖励
		if Task_ChkStcValue(nEvent,nDayType,"==",29) then
			if not User_CheckLeftSpace(1) then
				User_TalkChannel2005(tTheSixthHouse_Text[nItemId]["BagFull"])
				return
			end
		
			if Item_DelItem(nItemId) then
				Task_AddStatistic(nEvent,nDayType,1,1,0)
				
				Task_SetStatistic(nEvent,nSignType,1,1,0)
				Task_SetStcTimestamp(nEvent,nSignType,0,0)
				
				nDayData = Get_UserStatisticValue(nEvent,nDayType)
				User_TalkChannel2005(string.format(tTheSixthHouse_Text[nItemId]["Sign"],nDayData))

				local nAddItemId = tTheSixthHouse_Item["FifthHouse"] 	--五级房屋升级令
				Item_AddNewItem(nAddItemId,"")
				Sys_SaveActionFestivalLog(tTheSixthHouse_Log["GetFifthHouse"])
				User_TalkChannel2005(tTheSixthHouse_Text[nItemId]["30Day"])
			end
		else		-- 其他天，只删除物品，加掩码
			if Item_DelItem(nItemId) then
				Task_AddStatistic(nEvent,nDayType,1,1,0)
				
				Task_SetStatistic(nEvent,nSignType,1,1,0)
				Task_SetStcTimestamp(nEvent,nSignType,0,0)
				
				nDayData = Get_UserStatisticValue(nEvent,nDayType)
				User_TalkChannel2005(string.format(tTheSixthHouse_Text[nItemId]["Sign"],nDayData))
			end
		end
	end
end

-- 判断是否是房屋的主人
function TheSixthHouse_JudgeOwner()
	if Get_UserId() == Get_MapOwnerId() then
		return true
	else
		return false
	end
end

-- 点击展示家具npc，105提示
function TheSixthHouse_ShowFurTip()
	local nNpcId = Get_NpcId()
	local sName = tTheSixthHouse_Text["FurNpcName"][nNpcId]
	Sys_MsgBox(string.format(tTheSixthHouse_Text["ShowFurName"],sName))
end

------------------------------------------------怪物死亡触发--------------------------------------------------
-- 宠物被杀，计数-1
function TheSixthHouse_KillPet(nMonsterTypeId)
	local nHouseId = Get_UserHouseId()
	local nMonsterNum = Get_SysTempData(1,nHouseId,nMonsterTypeId)
	if nMonsterNum > 0 then
		Sys_SetTempData(1,nHouseId,nMonsterTypeId,nMonsterNum-1)
	end
end

------------------------------------------------NPC模块--------------------------------------------------
-------------------------------------------升级房屋npc---------------------------------------------------
-- 18950	6级房屋管理员
tNpcFace[3904] = 111
tNpcGossip[18950] = tNpcGossip[18950] or DefaultNpc:new{}
tNpcGossip[18950]["OptionHidden"] = 1

tNpcGossip[18950]["Text1-1"] = {111,112,113}
tNpcGossip[18950]["Text111"] = tTheSixthHouse_Text[18950]["Text111"]
tNpcGossip[18950]["Text112"] = tTheSixthHouse_Text[18950]["Text112"]
tNpcGossip[18950]["Text113"] = tTheSixthHouse_Text[18950]["Text113"]
tNpcGossip[18950]["tOption1-1"] = {1,2,3,4,6}
tNpcGossip[18950]["Option1"] = tTheSixthHouse_Text[18950]["Option1"]
tNpcGossip[18950]["OptionFunc1"]="TheSixthHouse_UpHouseWithEmoney</N>18950"
tNpcGossip[18950]["OptionChkFunc1"] = function ()
	local nHouseId = Get_UserHouseId()
	if Get_MapResLev(nHouseId) >= 6 then
		return false
	else
		return true
	end
end
tNpcGossip[18950]["Option2"] = tTheSixthHouse_Text[18950]["Option2"]
tNpcGossip[18950]["OptionFunc2"]="TheSixthHouse_UpHouseWithItems</N>18950"
tNpcGossip[18950]["OptionChkFunc2"] = function ()
	local nHouseId = Get_UserHouseId()
	if Get_MapResLev(nHouseId) >= 6 then
		return false
	else
		return true
	end
end
tNpcGossip[18950]["Option3"] = tTheSixthHouse_Text[18950]["Option3"]
tNpcGossip[18950]["OptionPoint3"]="4-1"
tNpcGossip[18950]["Option4"] = tTheSixthHouse_Text[18950]["Option4"]
tNpcGossip[18950]["OptionFunc4"]="TheSixthHouse_LeaveHouse</N>18950"
-- tNpcGossip[18950]["Option5"] = tTheSixthHouse_Text[18950]["Option5"]
-- tNpcGossip[18950]["OptionFunc5"]="TheSixthHouse_ToSixthHouse</N>18950"
-- tNpcGossip[18950]["OptionChkFunc5"] = function ()
	-- local nHouseId = Get_UserHouseId()
	-- if Get_MapResLev(nHouseId) >= 6 then
		-- return true
	-- else
		-- return false
	-- end
-- end
tNpcGossip[18950]["Option6"] = tTheSixthHouse_Text[18950]["Option6"]

--接option1	花费天石升级6级房屋。（8999点天石）
--玩家当前房屋等级不是5级
tNpcGossip[18950]["Text3-1"] = {311}
tNpcGossip[18950]["Text311"] = tTheSixthHouse_Text[18950]["Text311"]
tNpcGossip[18950]["tOption3-1"] = {311}
tNpcGossip[18950]["Option311"] = tTheSixthHouse_Text[18950]["Option311"]
--玩家当前已有6级房屋
tNpcGossip[18950]["Text3-2"] = {321}
tNpcGossip[18950]["Text321"] = tTheSixthHouse_Text[18950]["Text321"]
tNpcGossip[18950]["tOption3-2"] = {15}
tNpcGossip[18950]["Option321"] = tTheSixthHouse_Text[18950]["Option321"]
--成功，二次确认 当前有5级房屋
tNpcGossip[18950]["Text3-3"] = {331}
tNpcGossip[18950]["Text331"] = tTheSixthHouse_Text[18950]["Text331"]
tNpcGossip[18950]["tOption3-3"] = {331,332}
tNpcGossip[18950]["Option331"] = tTheSixthHouse_Text[18950]["Option331"]
tNpcGossip[18950]["OptionFunc331"]="TheSixthHouse_UpLevelHouse</N>18950</N>2"
tNpcGossip[18950]["Option332"] = tTheSixthHouse_Text[18950]["Option332"]
--天石不足
tNpcGossip[18950]["Text3-4"] = {341}
tNpcGossip[18950]["Text341"] = tTheSixthHouse_Text[18950]["Text341"]
tNpcGossip[18950]["tOption3-4"] = {341}
tNpcGossip[18950]["Option341"] = tTheSixthHouse_Text[18950]["Option341"]
--成功升级对白
tNpcGossip[18950]["Text3-5"] = {351}
tNpcGossip[18950]["Text351"] = tTheSixthHouse_Text[18950]["Text351"]
tNpcGossip[18950]["tOption3-5"] = {351}
tNpcGossip[18950]["Option351"] = tTheSixthHouse_Text[18950]["Option351"]
--失败，已上交过升级材料
tNpcGossip[18950]["Text3-6"] = {361}
tNpcGossip[18950]["Text361"] = tTheSixthHouse_Text[18950]["Text361"]
tNpcGossip[18950]["tOption3-6"] = {361}
tNpcGossip[18950]["Option361"] = tTheSixthHouse_Text[18950]["Option361"]

--接option2	上交材料升级6级房屋。
-- 选择上交的数量
tNpcGossip[18950]["Text6-1"] = {611}
tNpcGossip[18950]["Text611"] = tTheSixthHouse_Text[18950]["Text611"]
tNpcGossip[18950]["tOption6-1"] = {611,612,613}
tNpcGossip[18950]["Option611"] = tTheSixthHouse_Text[18950]["Option611"]
tNpcGossip[18950]["OptionFunc611"]="TheSixthHouse_ItemsReady</N>18950</N>100"
tNpcGossip[18950]["Option612"] = tTheSixthHouse_Text[18950]["Option612"]
tNpcGossip[18950]["OptionFunc612"]="TheSixthHouse_ItemsReady</N>18950</N>500"
tNpcGossip[18950]["Option613"] = tTheSixthHouse_Text[18950]["Option613"]
-- 上交100个
tNpcGossip[18950]["Text6-2"] = {621}
tNpcGossip[18950]["Text621"] = tTheSixthHouse_Text[18950]["Text621"]
tNpcGossip[18950]["tOption6-2"] = {621,613}
tNpcGossip[18950]["Option621"] = tTheSixthHouse_Text[18950]["Option621"]
tNpcGossip[18950]["OptionPoint621"]="6-1"
-- 上交剩余个数
tNpcGossip[18950]["Text6-3"] = {631}
tNpcGossip[18950]["Text631"] = tTheSixthHouse_Text[18950]["Text631"]
tNpcGossip[18950]["tOption6-3"] = {631,613}
tNpcGossip[18950]["Option631"] = tTheSixthHouse_Text[18950]["Option631"]

--玩家当前房屋等级不是5级
tNpcGossip[18950]["Text2-1"] = {211}
tNpcGossip[18950]["Text211"] = tTheSixthHouse_Text[18950]["Text211"]
tNpcGossip[18950]["tOption2-1"] = {211}
tNpcGossip[18950]["Option211"] = tTheSixthHouse_Text[18950]["Option211"]
--玩家当前已有6级房屋
tNpcGossip[18950]["Text2-2"] = {221}
tNpcGossip[18950]["Text221"] = tTheSixthHouse_Text[18950]["Text221"]
tNpcGossip[18950]["tOption2-2"] = {221}
tNpcGossip[18950]["Option221"] = tTheSixthHouse_Text[18950]["Option221"]
--上交的材料不足升级条件
tNpcGossip[18950]["Text2-3"] = {231,232}
tNpcGossip[18950]["Text231"] = tTheSixthHouse_Text[18950]["Text231"]
tNpcGossip[18950]["Text232"] = tTheSixthHouse_Text[18950]["Text232"]
tNpcGossip[18950]["tOption2-3"] = {231,232}
tNpcGossip[18950]["Option231"] = tTheSixthHouse_Text[18950]["Option231"]
tNpcGossip[18950]["OptionFunc231"]="TheSixthHouse_ItemsReady</N>18950"
tNpcGossip[18950]["Option232"] = tTheSixthHouse_Text[18950]["Option232"]
-- 失败，已上交过升级材料
tNpcGossip[18950]["Text2-4"] = {241}
tNpcGossip[18950]["Text241"] = tTheSixthHouse_Text[18950]["Text241"]
tNpcGossip[18950]["tOption2-4"] = {241}
tNpcGossip[18950]["Option241"] = tTheSixthHouse_Text[18950]["Option241"]
--Option231:我已备齐材料。
tNpcGossip[18950]["Text2-5"] = {251}
tNpcGossip[18950]["Text251"] = tTheSixthHouse_Text[18950]["Text251"]
tNpcGossip[18950]["tOption2-5"] = {251}
tNpcGossip[18950]["Option251"] = tTheSixthHouse_Text[18950]["Option251"]
-- 失败，材料不足
tNpcGossip[18950]["Text2-6"] = {261}
tNpcGossip[18950]["Text261"] = tTheSixthHouse_Text[18950]["Text261"]
tNpcGossip[18950]["tOption2-6"] = {241,1}
	
--接option3	了解功能点细节
tNpcGossip[18950]["Text4-1"] = {411,412,413}
tNpcGossip[18950]["Text411"] = tTheSixthHouse_Text[18950]["Text411"]
tNpcGossip[18950]["Text412"] = tTheSixthHouse_Text[18950]["Text412"]
tNpcGossip[18950]["Text413"] = tTheSixthHouse_Text[18950]["Text413"]
tNpcGossip[18950]["tOption4-1"] = {416,417}
tNpcGossip[18950]["Option416"] = tTheSixthHouse_Text[18950]["Option416"]
tNpcGossip[18950]["OptionPoint416"]="4-7"
tNpcGossip[18950]["Option417"] = tTheSixthHouse_Text[18950]["Option417"]

--我还想了解其它事情。
tNpcGossip[18950]["Text4-7"] = {471}
tNpcGossip[18950]["Text471"] = tTheSixthHouse_Text[18950]["Text471"]
tNpcGossip[18950]["tOption4-7"] = {411,412,413,22}
tNpcGossip[18950]["Option411"] = tTheSixthHouse_Text[18950]["Option411"]
tNpcGossip[18950]["OptionPoint411"]="4-2"
tNpcGossip[18950]["Option412"] = tTheSixthHouse_Text[18950]["Option412"]
tNpcGossip[18950]["OptionPoint412"]="4-3"
tNpcGossip[18950]["Option413"] = tTheSixthHouse_Text[18950]["Option413"]
tNpcGossip[18950]["OptionPoint413"]="4-4"
tNpcGossip[18950]["Option22"] = tTheSixthHouse_Text[18950]["Option22"]
tNpcGossip[18950]["OptionPoint22"]="1-1"

tNpcGossip[18950]["Text4-2"] = {421}
tNpcGossip[18950]["Text421"] = tTheSixthHouse_Text[18950]["Text421"]
tNpcGossip[18950]["tOption4-2"] = {421}
tNpcGossip[18950]["Option421"] = tTheSixthHouse_Text[18950]["Option421"]
tNpcGossip[18950]["OptionFunc421"]="TheSixthHouse_FindNpc</N>18950</N>1</N>18951"

tNpcGossip[18950]["Text4-3"] = {431}
tNpcGossip[18950]["Text431"] = tTheSixthHouse_Text[18950]["Text431"]
tNpcGossip[18950]["tOption4-3"] = {431}
tNpcGossip[18950]["Option431"] = tTheSixthHouse_Text[18950]["Option431"]
tNpcGossip[18950]["OptionFunc431"]="TheSixthHouse_FindNpc</N>18950</N>2</N>18952"

tNpcGossip[18950]["Text4-4"] = {441}
tNpcGossip[18950]["Text441"] = tTheSixthHouse_Text[18950]["Text441"]
tNpcGossip[18950]["tOption4-4"] = {441}
tNpcGossip[18950]["Option441"] = tTheSixthHouse_Text[18950]["Option441"]
tNpcGossip[18950]["OptionFunc441"]="TheSixthHouse_FindNpc</N>18950</N>3</N>18953"

--接option5	进入6级房屋。
--已升级开放
tNpcGossip[18950]["Text5-1"] = {511}
tNpcGossip[18950]["Text511"] = tTheSixthHouse_Text[18950]["Text511"]
tNpcGossip[18950]["tOption5-1"] = {13}
--未到一天开放时间
tNpcGossip[18950]["Text5-2"] = {521}
tNpcGossip[18950]["Text521"] = tTheSixthHouse_Text[18950]["Text521"]
tNpcGossip[18950]["tOption5-2"] = {20}
tNpcGossip[18950]["Option20"] = tTheSixthHouse_Text[18950]["Option20"]

-------------------------------------------各个区域介绍npc---------------------------------------------------
-- 18951   园艺区讲解员
tNpcFace[3905] = 116
tNpcGossip[18951] = tNpcGossip[18951] or DefaultNpc:new{}
tNpcGossip[18951]["OptionHidden"] = 1

tNpcGossip[18951]["Text1-1"] = {111,112,113}
tNpcGossip[18951]["Text111"] = tTheSixthHouse_Text[18951]["Text111"]
tNpcGossip[18951]["Text112"] = tTheSixthHouse_Text[18951]["Text112"]
tNpcGossip[18951]["Text113"] = tTheSixthHouse_Text[18951]["Text113"]
tNpcGossip[18951]["tOption1-1"] = {1,2}
tNpcGossip[18951]["Option1"] = tTheSixthHouse_Text[18951]["Option1"]
tNpcGossip[18951]["Option2"] = tTheSixthHouse_Text[18951]["Option2"]
tNpcGossip[18951]["OptionFunc2"]="TheSixthHouse_FindNpc</N>18951</N>18950</N>18950"

-- 18952  宠物养殖区讲解员
tNpcFace[3920] = 1
tNpcGossip[18952] = tNpcGossip[18952] or DefaultNpc:new{}
tNpcGossip[18952]["OptionHidden"] = 1

tNpcGossip[18952]["Text1-1"] = {111,112}
tNpcGossip[18952]["Text111"] = tTheSixthHouse_Text[18952]["Text111"]
tNpcGossip[18952]["Text112"] = tTheSixthHouse_Text[18952]["Text112"]
tNpcGossip[18952]["tOption1-1"] = {1,2}
tNpcGossip[18952]["Option1"] = tTheSixthHouse_Text[18952]["Option1"]
tNpcGossip[18952]["Option2"] = tTheSixthHouse_Text[18952]["Option2"]
tNpcGossip[18952]["OptionFunc2"]="TheSixthHouse_FindNpc</N>18952</N>18950</N>18950"

-- 18953  揽月台讲解员
tNpcFace[3921] = 123
tNpcGossip[18953] = tNpcGossip[18953] or DefaultNpc:new{}
tNpcGossip[18953]["OptionHidden"] = 1

tNpcGossip[18953]["Text1-1"] = {111,112}
tNpcGossip[18953]["Text111"] = tTheSixthHouse_Text[18953]["Text111"]
tNpcGossip[18953]["Text112"] = tTheSixthHouse_Text[18953]["Text112"]
tNpcGossip[18953]["tOption1-1"] = {1,2}
tNpcGossip[18953]["Option1"] = tTheSixthHouse_Text[18953]["Option1"]
tNpcGossip[18953]["Option2"] = tTheSixthHouse_Text[18953]["Option2"]
tNpcGossip[18953]["OptionFunc2"]="TheSixthHouse_FindNpc</N>18953</N>18950</N>18950"

-------------------------------------------6级房屋管家---------------------------------------------------
-- 18955	6级房屋管家
tNpcFace[3923] = 187
tNpcGossip[18955] = tNpcGossip[18955] or DefaultNpc:new{}
tNpcGossip[18955]["OptionHidden"] = 1

tNpcGossip[18955]["Text1-1"] = {111}
tNpcGossip[18955]["Text111"] = tTheSixthHouse_Text[18955]["Text111"]
tNpcGossip[18955]["tOption1-1"] = {1,2,3,10,4,5,111,6,7}
tNpcGossip[18955]["Option1"] = tTheSixthHouse_Text[18955]["Option1"]
tNpcGossip[18955]["OptionChkFunc1"] = function ()
	return TheSixthHouse_JudgeOwner()
end
tNpcGossip[18955]["Option2"] = tTheSixthHouse_Text[18955]["Option2"]
tNpcGossip[18955]["OptionPoint2"]="2-1"
tNpcGossip[18955]["OptionChkFunc2"] = function ()
	return TheSixthHouse_JudgeOwner()
end
tNpcGossip[18955]["Option3"] = tTheSixthHouse_Text[18955]["Option3"]
tNpcGossip[18955]["OptionPoint3"]="3-1"
tNpcGossip[18955]["OptionChkFunc3"] = function ()
	return TheSixthHouse_JudgeOwner()
end
tNpcGossip[18955]["Option10"] = tTheSixthHouse_Text[18955]["Option10"]
tNpcGossip[18955]["OptionPoint10"]="10-1"
tNpcGossip[18955]["OptionChkFunc10"] = function ()
	return TheSixthHouse_JudgeOwner()
end
tNpcGossip[18955]["Option4"] = tTheSixthHouse_Text[18955]["Option4"]
tNpcGossip[18955]["OptionPoint4"]="4-1"
tNpcGossip[18955]["OptionChkFunc4"] = function ()
	return TheSixthHouse_JudgeOwner()
end
tNpcGossip[18955]["Option5"] = tTheSixthHouse_Text[18955]["Option5"]
tNpcGossip[18955]["OptionPoint5"]="5-1"
tNpcGossip[18955]["OptionChkFunc5"] = function ()
	-- 后花园已开通并且园艺区园地都被开垦后，屏蔽该选项
	local nOpenEvent = tTheSixthHouse_Stc["EventType"]
	local nOpenType = tTheSixthHouse_Stc["DataType"]["AnimalOpen"]
	local nOpenComplete = tTheSixthHouse_Stc["Complete"]["AnimalOpen"]
	
	local nEvent = tTheSixthHouse_Stc["EventType"]
	local nLandType = tTheSixthHouse_Stc["DataType"]["Land"]
	local nLand = Get_UserStatisticValue(nEvent,nLandType)

	if nLand >= 9 and Task_ChkStcValue(nOpenEvent,nOpenType,">=",nOpenComplete) then
		return false
	end
	
	return TheSixthHouse_JudgeOwner()
end
tNpcGossip[18955]["Option111"] = tTheSixthHouse_Text[18955]["Option111"]
tNpcGossip[18955]["OptionPoint111"]="11-1"
tNpcGossip[18955]["OptionChkFunc111"] = function ()
	return TheSixthHouse_JudgeOwner()
end
tNpcGossip[18955]["Option6"] = tTheSixthHouse_Text[18955]["Option6"]
tNpcGossip[18955]["OptionFunc6"]="TheSixthHouse_LeaveHouse</N>18955"
tNpcGossip[18955]["Option7"] = tTheSixthHouse_Text[18955]["Option7"]

--接2：开放专属家具制作	97272757
tNpcGossip[18955]["Text2-1"] = {211,212}
tNpcGossip[18955]["Text211"] = tTheSixthHouse_Text[18955]["Text211"]
tNpcGossip[18955]["Text212"] = tTheSixthHouse_Text[18955]["Text212"]
tNpcGossip[18955]["tOption2-1"] = {8,9}
tNpcGossip[18955]["Option8"] = tTheSixthHouse_Text[18955]["Option8"]
tNpcGossip[18955]["OptionFunc8"]="TheSixthHouse_OpenUseEmoney</N>18955"
tNpcGossip[18955]["Option9"] = tTheSixthHouse_Text[18955]["Option9"]
tNpcGossip[18955]["OptionFunc9"]="TheSixthHouse_OpenUseItem</N>18955</N>3008518"

--接option8	花费天石1999。
--二次确认
tNpcGossip[18955]["Text8-1"] = {811}
tNpcGossip[18955]["Text811"] = tTheSixthHouse_Text[18955]["Text811"]
tNpcGossip[18955]["tOption8-1"] = {811,812}
tNpcGossip[18955]["Option811"] = tTheSixthHouse_Text[18955]["Option811"]
tNpcGossip[18955]["OptionFunc811"]="TheSixthHouse_IsOpenSuccess</N>18955</N>2</N>3008518"
tNpcGossip[18955]["Option812"] = tTheSixthHouse_Text[18955]["Option812"]
--天石不足
tNpcGossip[18955]["Text8-2"] = {821}
tNpcGossip[18955]["Text821"] = tTheSixthHouse_Text[18955]["Text821"]
tNpcGossip[18955]["tOption8-2"] = {821}
tNpcGossip[18955]["Option821"] = tTheSixthHouse_Text[18955]["Option821"]
--开通成功
tNpcGossip[18955]["Text8-3"] = {831}
tNpcGossip[18955]["Text831"] = tTheSixthHouse_Text[18955]["Text831"]
tNpcGossip[18955]["tOption8-3"] = {831}
tNpcGossip[18955]["Option831"] = tTheSixthHouse_Text[18955]["Option831"]
--失败，已上交过升级材料
tNpcGossip[18955]["Text8-4"] = {841}
tNpcGossip[18955]["Text841"] = tTheSixthHouse_Text[18955]["Text841"]
tNpcGossip[18955]["tOption8-4"] = {821}
--等待一天，开通成功
tNpcGossip[18955]["Text8-5"] = {851}
tNpcGossip[18955]["Text851"] = tTheSixthHouse_Text[18955]["Text851"]
tNpcGossip[18955]["tOption8-5"] = {831}

--接9：消耗50个闭月海棠开通。
--上交材料满足，二次确认
tNpcGossip[18955]["Text9-1"] = {911,912}
tNpcGossip[18955]["Text911"] = tTheSixthHouse_Text[18955]["Text911"]
tNpcGossip[18955]["Text912"] = tTheSixthHouse_Text[18955]["Text912"]
tNpcGossip[18955]["tOption9-1"] = {911,912}
tNpcGossip[18955]["Option911"] = tTheSixthHouse_Text[18955]["Option911"]
tNpcGossip[18955]["OptionFunc911"]="TheSixthHouse_IsOpenSuccess</N>18955</N>1</N>3008518"
tNpcGossip[18955]["Option912"] = tTheSixthHouse_Text[18955]["Option912"]
--背包中没有对应数量的此道具
tNpcGossip[18955]["Text9-2"] = {921}
tNpcGossip[18955]["Text921"] = tTheSixthHouse_Text[18955]["Text921"]
tNpcGossip[18955]["tOption9-2"] = {821}
--提交成功
tNpcGossip[18955]["Text9-3"] = {931}
tNpcGossip[18955]["Text931"] = tTheSixthHouse_Text[18955]["Text931"]
tNpcGossip[18955]["tOption9-3"] = {931}
tNpcGossip[18955]["Option931"] = tTheSixthHouse_Text[18955]["Option931"]
--失败，已上交过升级材料
tNpcGossip[18955]["Text9-4"] = {941}
tNpcGossip[18955]["Text941"] = tTheSixthHouse_Text[18955]["Text941"]
tNpcGossip[18955]["tOption9-4"] = {821}

--接3：制作光效家具。	97272766
tNpcGossip[18955]["Text3-1"] = {311,312,313}
tNpcGossip[18955]["Text311"] = tTheSixthHouse_Text[18955]["Text311"]
tNpcGossip[18955]["Text312"] = tTheSixthHouse_Text[18955]["Text312"]
tNpcGossip[18955]["Text313"] = tTheSixthHouse_Text[18955]["Text313"]
tNpcGossip[18955]["tOption3-1"] = {11,12,13}
tNpcGossip[18955]["Option11"] = tTheSixthHouse_Text[18955]["Option11"]
tNpcGossip[18955]["OptionPoint11"]="6-1"
tNpcGossip[18955]["Option12"] = tTheSixthHouse_Text[18955]["Option12"]
tNpcGossip[18955]["OptionPoint12"]="6-2"
tNpcGossip[18955]["Option13"] = tTheSixthHouse_Text[18955]["Option13"]
tNpcGossip[18955]["OptionPoint13"]="6-3"

--接11,12,13：制作X型家具
tNpcGossip[18955]["Text6-1"] = {611}
tNpcGossip[18955]["Text611"] = tTheSixthHouse_Text[18955]["Text611"]
tNpcGossip[18955]["tOption6-1"] = {611,612,613,614,615,616,721,722}
tNpcGossip[18955]["Option611"] = tTheSixthHouse_Text[18955]["Option611"]
tNpcGossip[18955]["OptionFunc611"]="TheSixthHouse_GetFurniture</N>18955</N>1</N>726134"
tNpcGossip[18955]["Option612"] = tTheSixthHouse_Text[18955]["Option612"]
tNpcGossip[18955]["OptionFunc612"]="TheSixthHouse_GetFurniture</N>18955</N>1</N>726135"
tNpcGossip[18955]["Option613"] = tTheSixthHouse_Text[18955]["Option613"]
tNpcGossip[18955]["OptionFunc613"]="TheSixthHouse_GetFurniture</N>18955</N>1</N>726136"
tNpcGossip[18955]["Option614"] = tTheSixthHouse_Text[18955]["Option614"]
tNpcGossip[18955]["OptionFunc614"]="TheSixthHouse_GetFurniture</N>18955</N>1</N>726137"
tNpcGossip[18955]["Option615"] = tTheSixthHouse_Text[18955]["Option615"]
tNpcGossip[18955]["OptionFunc615"]="TheSixthHouse_GetFurniture</N>18955</N>1</N>726138"
tNpcGossip[18955]["Option616"] = tTheSixthHouse_Text[18955]["Option616"]
tNpcGossip[18955]["OptionFunc616"]="TheSixthHouse_GetFurniture</N>18955</N>1</N>726139"
tNpcGossip[18955]["Option721"] = tTheSixthHouse_Text[18955]["Option721"]
tNpcGossip[18955]["OptionPoint721"]="3-1"
tNpcGossip[18955]["Option722"] = tTheSixthHouse_Text[18955]["Option722"]
tNpcGossip[18955]["OptionPoint722"]="6-4"

tNpcGossip[18955]["Text6-4"] = {641}
tNpcGossip[18955]["Text641"] = tTheSixthHouse_Text[18955]["Text611"]
tNpcGossip[18955]["tOption6-4"] = {617,618,619,620,723,724,725}
tNpcGossip[18955]["Option617"] = tTheSixthHouse_Text[18955]["Option617"]
tNpcGossip[18955]["OptionFunc617"]="TheSixthHouse_GetFurniture</N>18955</N>1</N>726140"
tNpcGossip[18955]["Option618"] = tTheSixthHouse_Text[18955]["Option618"]
tNpcGossip[18955]["OptionFunc618"]="TheSixthHouse_GetFurniture</N>18955</N>1</N>726141"
tNpcGossip[18955]["Option619"] = tTheSixthHouse_Text[18955]["Option619"]
tNpcGossip[18955]["OptionFunc619"]="TheSixthHouse_GetFurniture</N>18955</N>1</N>726142"
tNpcGossip[18955]["Option620"] = tTheSixthHouse_Text[18955]["Option620"]
tNpcGossip[18955]["OptionFunc620"]="TheSixthHouse_GetFurniture</N>18955</N>1</N>726143"
tNpcGossip[18955]["Option723"] = tTheSixthHouse_Text[18955]["Option723"]
tNpcGossip[18955]["OptionFunc723"]="TheSixthHouse_GetFurniture</N>18955</N>1</N>726144"
tNpcGossip[18955]["Option724"] = tTheSixthHouse_Text[18955]["Option724"]
tNpcGossip[18955]["OptionFunc724"]="TheSixthHouse_GetFurniture</N>18955</N>1</N>726145"
tNpcGossip[18955]["Option725"] = tTheSixthHouse_Text[18955]["Option725"]
tNpcGossip[18955]["OptionPoint725"]="6-1"

tNpcGossip[18955]["Text6-2"] = {621}
tNpcGossip[18955]["Text621"] = tTheSixthHouse_Text[18955]["Text621"]
tNpcGossip[18955]["tOption6-2"] = {621,622,623,624,625,626,721,726}
tNpcGossip[18955]["Option621"] = tTheSixthHouse_Text[18955]["Option621"]
tNpcGossip[18955]["OptionFunc621"]="TheSixthHouse_GetFurniture</N>18955</N>2</N>726122"
tNpcGossip[18955]["Option622"] = tTheSixthHouse_Text[18955]["Option622"]
tNpcGossip[18955]["OptionFunc622"]="TheSixthHouse_GetFurniture</N>18955</N>2</N>726123"
tNpcGossip[18955]["Option623"] = tTheSixthHouse_Text[18955]["Option623"]
tNpcGossip[18955]["OptionFunc623"]="TheSixthHouse_GetFurniture</N>18955</N>2</N>726124"
tNpcGossip[18955]["Option624"] = tTheSixthHouse_Text[18955]["Option624"]
tNpcGossip[18955]["OptionFunc624"]="TheSixthHouse_GetFurniture</N>18955</N>2</N>726125"
tNpcGossip[18955]["Option625"] = tTheSixthHouse_Text[18955]["Option625"]
tNpcGossip[18955]["OptionFunc625"]="TheSixthHouse_GetFurniture</N>18955</N>2</N>726126"
tNpcGossip[18955]["Option626"] = tTheSixthHouse_Text[18955]["Option626"]
tNpcGossip[18955]["OptionFunc626"]="TheSixthHouse_GetFurniture</N>18955</N>2</N>726127"
tNpcGossip[18955]["Option726"] = tTheSixthHouse_Text[18955]["Option726"]
tNpcGossip[18955]["OptionPoint726"]="6-5"

tNpcGossip[18955]["Text6-5"] = {651}
tNpcGossip[18955]["Text651"] = tTheSixthHouse_Text[18955]["Text621"]
tNpcGossip[18955]["tOption6-5"] = {627,628,629,630,727,728,729}
tNpcGossip[18955]["Option627"] = tTheSixthHouse_Text[18955]["Option627"]
tNpcGossip[18955]["OptionFunc627"]="TheSixthHouse_GetFurniture</N>18955</N>2</N>726128"
tNpcGossip[18955]["Option628"] = tTheSixthHouse_Text[18955]["Option628"]
tNpcGossip[18955]["OptionFunc628"]="TheSixthHouse_GetFurniture</N>18955</N>2</N>726129"
tNpcGossip[18955]["Option629"] = tTheSixthHouse_Text[18955]["Option629"]
tNpcGossip[18955]["OptionFunc629"]="TheSixthHouse_GetFurniture</N>18955</N>2</N>726130"
tNpcGossip[18955]["Option630"] = tTheSixthHouse_Text[18955]["Option630"]
tNpcGossip[18955]["OptionFunc630"]="TheSixthHouse_GetFurniture</N>18955</N>2</N>726131"
tNpcGossip[18955]["Option727"] = tTheSixthHouse_Text[18955]["Option727"]
tNpcGossip[18955]["OptionFunc727"]="TheSixthHouse_GetFurniture</N>18955</N>2</N>726132"
tNpcGossip[18955]["Option728"] = tTheSixthHouse_Text[18955]["Option728"]
tNpcGossip[18955]["OptionFunc728"]="TheSixthHouse_GetFurniture</N>18955</N>2</N>726133"
tNpcGossip[18955]["Option729"] = tTheSixthHouse_Text[18955]["Option729"]
tNpcGossip[18955]["OptionPoint729"]="6-2"

tNpcGossip[18955]["Text6-3"] = {631}
tNpcGossip[18955]["Text631"] = tTheSixthHouse_Text[18955]["Text631"]
tNpcGossip[18955]["tOption6-3"] = {631,632,633,634,635,636,721,730}
tNpcGossip[18955]["Option631"] = tTheSixthHouse_Text[18955]["Option631"]
tNpcGossip[18955]["OptionFunc631"]="TheSixthHouse_GetFurniture</N>18955</N>3</N>726146"
tNpcGossip[18955]["Option632"] = tTheSixthHouse_Text[18955]["Option632"]
tNpcGossip[18955]["OptionFunc632"]="TheSixthHouse_GetFurniture</N>18955</N>3</N>726147"
tNpcGossip[18955]["Option633"] = tTheSixthHouse_Text[18955]["Option633"]
tNpcGossip[18955]["OptionFunc633"]="TheSixthHouse_GetFurniture</N>18955</N>3</N>726148"
tNpcGossip[18955]["Option634"] = tTheSixthHouse_Text[18955]["Option634"]
tNpcGossip[18955]["OptionFunc634"]="TheSixthHouse_GetFurniture</N>18955</N>3</N>726149"
tNpcGossip[18955]["Option635"] = tTheSixthHouse_Text[18955]["Option635"]
tNpcGossip[18955]["OptionFunc635"]="TheSixthHouse_GetFurniture</N>18955</N>3</N>726150"
tNpcGossip[18955]["Option636"] = tTheSixthHouse_Text[18955]["Option636"]
tNpcGossip[18955]["OptionFunc636"]="TheSixthHouse_GetFurniture</N>18955</N>3</N>726119"
tNpcGossip[18955]["Option730"] = tTheSixthHouse_Text[18955]["Option730"]
tNpcGossip[18955]["OptionPoint730"]="6-6"

tNpcGossip[18955]["Text6-6"] = {661}
tNpcGossip[18955]["Text661"] = tTheSixthHouse_Text[18955]["Text631"]
tNpcGossip[18955]["tOption6-6"] = {637,638,731}
tNpcGossip[18955]["Option637"] = tTheSixthHouse_Text[18955]["Option637"]
tNpcGossip[18955]["OptionFunc637"]="TheSixthHouse_GetFurniture</N>18955</N>3</N>726120"
tNpcGossip[18955]["Option638"] = tTheSixthHouse_Text[18955]["Option638"]
tNpcGossip[18955]["OptionFunc638"]="TheSixthHouse_GetFurniture</N>18955</N>3</N>726121"
tNpcGossip[18955]["Option731"] = tTheSixthHouse_Text[18955]["Option731"]
tNpcGossip[18955]["OptionPoint731"]="6-3"

--制作某种家具
tNpcGossip[18955]["Text7-1"] = {711}
tNpcGossip[18955]["Text711"] = tTheSixthHouse_Text[18955]["Text711"]
tNpcGossip[18955]["tOption7-1"] = {711,712}
tNpcGossip[18955]["Option711"] = tTheSixthHouse_Text[18955]["Option711"]
tNpcGossip[18955]["OptionFunc711"]="TheSixthHouse_SureToMakeFur</N>18955"
tNpcGossip[18955]["Option712"] = tTheSixthHouse_Text[18955]["Option712"]

--接10：增加家具上限。
tNpcGossip[18955]["Text10-1"] = {1011,1012}
tNpcGossip[18955]["Text1011"] = tTheSixthHouse_Text[18955]["Text1011"]
tNpcGossip[18955]["Text1012"] = tTheSixthHouse_Text[18955]["Text1012"]
tNpcGossip[18955]["tOption10-1"] = {1011,1012}
tNpcGossip[18955]["Option1011"] = tTheSixthHouse_Text[18955]["Option1011"]
tNpcGossip[18955]["OptionPoint1011"]="10-2"
tNpcGossip[18955]["Option1012"] = tTheSixthHouse_Text[18955]["Option1012"]
--二次确认
tNpcGossip[18955]["Text10-2"] = {1021}
tNpcGossip[18955]["Text1021"] = tTheSixthHouse_Text[18955]["Text1021"]
tNpcGossip[18955]["tOption10-2"] = {1021,1022}
tNpcGossip[18955]["Option1021"] = tTheSixthHouse_Text[18955]["Option1021"]
tNpcGossip[18955]["OptionFunc1021"]="TheSixthHouse_SureToAddLimit</N>18955"
tNpcGossip[18955]["Option1022"] = tTheSixthHouse_Text[18955]["Option1022"]
-- 成功增加上限
tNpcGossip[18955]["Text10-3"] = {1031}
tNpcGossip[18955]["Text1031"] = tTheSixthHouse_Text[18955]["Text1031"]
tNpcGossip[18955]["tOption10-3"] = {1031}
tNpcGossip[18955]["Option1031"] = tTheSixthHouse_Text[18955]["Option1031"]

--接4：功能开放介绍选项	97272758
tNpcGossip[18955]["Text4-1"] = {411,412}
tNpcGossip[18955]["Text411"] = tTheSixthHouse_Text[18955]["Text411"]
tNpcGossip[18955]["Text412"] = tTheSixthHouse_Text[18955]["Text412"]
tNpcGossip[18955]["tOption4-1"] = {411}
tNpcGossip[18955]["Option411"] = tTheSixthHouse_Text[18955]["Option411"]

--接5：兑换建材	97272760
tNpcGossip[18955]["Text5-1"] = {511}
tNpcGossip[18955]["Text511"] = tTheSixthHouse_Text[18955]["Text511"]
tNpcGossip[18955]["tOption5-1"] = {511,512}
tNpcGossip[18955]["Option511"] = tTheSixthHouse_Text[18955]["Option511"]
tNpcGossip[18955]["OptionFunc511"]="TheSixthHouse_ExchangeRescource</N>18955</N>1"
tNpcGossip[18955]["Option512"] = tTheSixthHouse_Text[18955]["Option512"]
tNpcGossip[18955]["OptionPoint512"]="5-2"
-- 天石购买6级房屋建材包。
tNpcGossip[18955]["Text5-2"] = {521}
tNpcGossip[18955]["Text521"] = tTheSixthHouse_Text[18955]["Text521"]
tNpcGossip[18955]["tOption5-2"] = {521,522}
tNpcGossip[18955]["Option521"] = tTheSixthHouse_Text[18955]["Option521"]
tNpcGossip[18955]["OptionFunc521"]="TheSixthHouse_BuyByEmoney</N>18955"
tNpcGossip[18955]["Option522"] = tTheSixthHouse_Text[18955]["Option522"]
-- 天石不足18
tNpcGossip[18955]["Text5-3"] = {531}
tNpcGossip[18955]["Text531"] = tTheSixthHouse_Text[18955]["Text531"]
tNpcGossip[18955]["tOption5-3"] = {531}
tNpcGossip[18955]["Option531"] = tTheSixthHouse_Text[18955]["Option531"]
-- 背包满
tNpcGossip[18955]["Text5-4"] = {541}
tNpcGossip[18955]["Text541"] = tTheSixthHouse_Text[18955]["Text541"]
tNpcGossip[18955]["tOption5-4"] = {531}
-- 购买成功
tNpcGossip[18955]["Text5-5"] = {551}
tNpcGossip[18955]["Text551"] = tTheSixthHouse_Text[18955]["Text551"]
tNpcGossip[18955]["tOption5-5"] = {551}
tNpcGossip[18955]["Option551"] = tTheSixthHouse_Text[18955]["Option551"]
tNpcGossip[18955]["OptionPoint551"]="5-1"

-- 接111：前往其他区域。
tNpcGossip[18955]["Text11-1"] = {1111}
tNpcGossip[18955]["Text1111"] = tTheSixthHouse_Text[18955]["Text1111"]
tNpcGossip[18955]["tOption11-1"] = {1111,1112,1113,1114}
tNpcGossip[18955]["Option1111"] = tTheSixthHouse_Text[18955]["Option1111"]
tNpcGossip[18955]["OptionFunc1111"]="TheSixthHouse_FindNpc</N>18955</N>18956</N>18956"
tNpcGossip[18955]["Option1112"] = tTheSixthHouse_Text[18955]["Option1112"]
tNpcGossip[18955]["OptionFunc1112"]="TheSixthHouse_FindNpc</N>18955</N>18958</N>18958"
tNpcGossip[18955]["Option1113"] = tTheSixthHouse_Text[18955]["Option1113"]
tNpcGossip[18955]["OptionFunc1113"]="TheSixthHouse_FindNpc</N>18955</N>18959</N>18959"
tNpcGossip[18955]["Option1114"] = tTheSixthHouse_Text[18955]["Option1114"]
tNpcGossip[18955]["OptionPoint1114"]="1-1"

-------------------------------------------揽月台npc---------------------------------------------------
-- 18959	揽月仙子
tNpcFace[3941] = 110
tNpcGossip[18959] = tNpcGossip[18959] or DefaultNpc:new{}
tNpcGossip[18959]["OptionHidden"] = 1

tNpcGossip[18959]["Text1-1"] = {111}
tNpcGossip[18959]["Text111"] = tTheSixthHouse_Text[18959]["Text111"]
tNpcGossip[18959]["tOption1-1"] = {1,3,2}
tNpcGossip[18959]["Option1"] = tTheSixthHouse_Text[18959]["Option1"]
tNpcGossip[18959]["OptionFunc1"]="TheSixthHouse_SendToMoon</N>18959"
tNpcGossip[18959]["Option3"] = tTheSixthHouse_Text[18959]["Option3"]
tNpcGossip[18959]["OptionFunc3"]="TheSixthHouse_FindNpc</N>18959</N>18955</N>18955"
tNpcGossip[18959]["Option2"] = tTheSixthHouse_Text[18959]["Option2"]

-- 18954	揽月台内的npc
tNpcFace[3922] = 110
tNpcGossip[18954] = tNpcGossip[18954] or DefaultNpc:new{}
tNpcGossip[18954]["OptionHidden"] = 1
tNpcGossip[18954]["Text1-1"] = {111}
tNpcGossip[18954]["Text111"] = tTheSixthHouse_Text[18954]["Text111"]
tNpcGossip[18954]["tOption1-1"] = {1,2}
tNpcGossip[18954]["Option1"] = tTheSixthHouse_Text[18954]["Option1"]
tNpcGossip[18954]["OptionFunc1"]="TheSixthHouse_BackToSixthHouse"
tNpcGossip[18954]["Option2"] = tTheSixthHouse_Text[18954]["Option2"]

------------------------------------------种植区npc---------------------------------------------------
-- 18956	园艺区园丁
tNpcFace[3924] = 60
tNpcGossip[18956] = tNpcGossip[18956] or DefaultNpc:new{}
tNpcGossip[18956]["OptionHidden"] = 1

tNpcGossip[18956]["Text1-1"] = {111,112}
tNpcGossip[18956]["Text111"] = tTheSixthHouse_Text[18956]["Text111"]
tNpcGossip[18956]["Text112"] = tTheSixthHouse_Text[18956]["Text112"]
tNpcGossip[18956]["tOption1-1"] = {1,2,111,3,113,112,4}
tNpcGossip[18956]["ChkFunc1-1"] = function ()
	if Get_UserId() == Get_MapOwnerId() then
		return true
	else
		return false
	end
end
tNpcGossip[18956]["Option1"] = tTheSixthHouse_Text[18956]["Option1"]
tNpcGossip[18956]["OptionPoint1"]="2-2"
tNpcGossip[18956]["Option2"] = tTheSixthHouse_Text[18956]["Option2"]
tNpcGossip[18956]["OptionPoint2"]="4-1"
tNpcGossip[18956]["OptionChkFunc2"] = function ()
	--获取当前玩家开垦了多少块田地
	local nEvent = tTheSixthHouse_Stc["EventType"]
	local nLandType = tTheSixthHouse_Stc["DataType"]["Land"]
	local nLand = Get_UserStatisticValue(nEvent,nLandType)
	local nNextLand = tonumber(nLand + 1)
	if nNextLand >= 10 then
		return false
	else
		return true
	end
end
tNpcGossip[18956]["Option111"] = tTheSixthHouse_Text[18956]["Option111"]
tNpcGossip[18956]["OptionFunc111"]="TheSixthHouse_OpenOneTime</N>18956"
tNpcGossip[18956]["OptionChkFunc111"] = function ()
	--获取当前玩家开垦了多少块田地
	local nEvent = tTheSixthHouse_Stc["EventType"]
	local nLandType = tTheSixthHouse_Stc["DataType"]["Land"]
	local nLand = Get_UserStatisticValue(nEvent,nLandType)
	local nNextLand = tonumber(nLand + 1)
	if nNextLand >= 10 then
		return false
	else
		return true
	end
end
tNpcGossip[18956]["Option3"] = tTheSixthHouse_Text[18956]["Option3"]
tNpcGossip[18956]["OptionPoint3"]="5-1"
tNpcGossip[18956]["Option112"] = tTheSixthHouse_Text[18956]["Option112"]
tNpcGossip[18956]["OptionFunc112"]="TheSixthHouse_FindNpc</N>18956</N>18955</N>18955"
tNpcGossip[18956]["Option113"] = tTheSixthHouse_Text[18956]["Option113"]
tNpcGossip[18956]["OptionPoint113"]="6-1"
tNpcGossip[18956]["Option4"] = tTheSixthHouse_Text[18956]["Option4"]
-- 非房屋主人对白
tNpcGossip[18956]["Text1-3"] = {131}
tNpcGossip[18956]["Text131"] = tTheSixthHouse_Text[18956]["Text131"]
tNpcGossip[18956]["tOption1-3"] = {131}
tNpcGossip[18956]["ChkFunc1-3"] = function ()
	if Get_UserId() == Get_MapOwnerId() then
		return false
	else
		return true
	end
end
tNpcGossip[18956]["Option131"] = tTheSixthHouse_Text[18956]["Option131"]

--接1：购买种子选项
tNpcGossip[18956]["Text2-2"] = {221}
tNpcGossip[18956]["Text221"] = tTheSixthHouse_Text[18956]["Text221"]
tNpcGossip[18956]["tOption2-2"] = {5,6,7,8,9,10,17,18}
tNpcGossip[18956]["Option5"] = tTheSixthHouse_Text[18956]["Option5"]
tNpcGossip[18956]["OptionFunc5"]="TheSixthHouse_BuySeed</N>18956</N>3008136"
tNpcGossip[18956]["Option6"] = tTheSixthHouse_Text[18956]["Option6"]
tNpcGossip[18956]["OptionFunc6"]="TheSixthHouse_BuySeed</N>18956</N>3008137"
tNpcGossip[18956]["Option7"] = tTheSixthHouse_Text[18956]["Option7"]
tNpcGossip[18956]["OptionFunc7"]="TheSixthHouse_BuySeed</N>18956</N>3008139"
tNpcGossip[18956]["Option8"] = tTheSixthHouse_Text[18956]["Option8"]
tNpcGossip[18956]["OptionPoint8"]="8-1"
tNpcGossip[18956]["Option9"] = tTheSixthHouse_Text[18956]["Option9"]
tNpcGossip[18956]["OptionFunc9"]="TheSixthHouse_BuySeed</N>18956</N>3008140"
tNpcGossip[18956]["OptionChkFunc9"] = function ()
	--开通了第3块地
	local nEvent = tTheSixthHouse_Stc["EventType"]
	local nLandType = tTheSixthHouse_Stc["DataType"]["Land"]
	local nLand = Get_UserStatisticValue(nEvent,nLandType)
	if nLand >= 3 then
		return true
	else
		return false
	end
end
tNpcGossip[18956]["Option10"] = tTheSixthHouse_Text[18956]["Option10"]
tNpcGossip[18956]["OptionFunc10"]="TheSixthHouse_BuySeed</N>18956</N>3008141"
tNpcGossip[18956]["OptionChkFunc10"] = function ()
	--开通了第3块地
	local nEvent = tTheSixthHouse_Stc["EventType"]
	local nLandType = tTheSixthHouse_Stc["DataType"]["Land"]
	local nLand = Get_UserStatisticValue(nEvent,nLandType)
	if nLand >= 3 then
		return true
	else
		return false
	end
end
tNpcGossip[18956]["Option17"] = tTheSixthHouse_Text[18956]["Option17"]
tNpcGossip[18956]["OptionPoint17"]="2-3"
tNpcGossip[18956]["OptionChkFunc17"] = function ()
	--开通了第3块地
	local nEvent = tTheSixthHouse_Stc["EventType"]
	local nLandType = tTheSixthHouse_Stc["DataType"]["Land"]
	local nLand = Get_UserStatisticValue(nEvent,nLandType)
	if nLand >= 3 then
		return true
	else
		return false
	end
end
tNpcGossip[18956]["Option18"] = tTheSixthHouse_Text[18956]["Option18"]
tNpcGossip[18956]["OptionPoint18"]="1-1"
--下一页
tNpcGossip[18956]["Text2-3"] = {231}
tNpcGossip[18956]["Text231"] = tTheSixthHouse_Text[18956]["Text231"]
tNpcGossip[18956]["tOption2-3"] = {11,12,13,14,15,16,19}
tNpcGossip[18956]["Option11"] = tTheSixthHouse_Text[18956]["Option11"]
tNpcGossip[18956]["OptionFunc11"]="TheSixthHouse_BuySeed</N>18956</N>3008138"
tNpcGossip[18956]["OptionChkFunc17"] = function ()
	--开通了第3块地
	local nEvent = tTheSixthHouse_Stc["EventType"]
	local nLandType = tTheSixthHouse_Stc["DataType"]["Land"]
	local nLand = Get_UserStatisticValue(nEvent,nLandType)
	if nLand >= 3 then
		return true
	else
		return false
	end
end
tNpcGossip[18956]["Option12"] = tTheSixthHouse_Text[18956]["Option12"]
tNpcGossip[18956]["OptionFunc12"]="TheSixthHouse_BuySeed</N>18956</N>3008142"
tNpcGossip[18956]["OptionChkFunc12"] = function ()
	--开通了第6块地
	local nEvent = tTheSixthHouse_Stc["EventType"]
	local nLandType = tTheSixthHouse_Stc["DataType"]["Land"]
	local nLand = Get_UserStatisticValue(nEvent,nLandType)
	if nLand >= 6 then
		return true
	else
		return false
	end
end
tNpcGossip[18956]["Option13"] = tTheSixthHouse_Text[18956]["Option13"]
tNpcGossip[18956]["OptionPoint13"]="13-1"
tNpcGossip[18956]["OptionChkFunc13"] = function ()
	--开通了第6块地
	local nEvent = tTheSixthHouse_Stc["EventType"]
	local nLandType = tTheSixthHouse_Stc["DataType"]["Land"]
	local nLand = Get_UserStatisticValue(nEvent,nLandType)
	if nLand >= 6 then
		return true
	else
		return false
	end
end
tNpcGossip[18956]["Option14"] = tTheSixthHouse_Text[18956]["Option14"]
tNpcGossip[18956]["OptionFunc14"]="TheSixthHouse_BuySeed</N>18956</N>3008144"
tNpcGossip[18956]["OptionChkFunc14"] = function ()
	--开通了第6块地
	local nEvent = tTheSixthHouse_Stc["EventType"]
	local nLandType = tTheSixthHouse_Stc["DataType"]["Land"]
	local nLand = Get_UserStatisticValue(nEvent,nLandType)
	if nLand >= 6 then
		return true
	else
		return false
	end
end
tNpcGossip[18956]["Option15"] = tTheSixthHouse_Text[18956]["Option15"]
tNpcGossip[18956]["OptionFunc15"]="TheSixthHouse_BuySeed</N>18956</N>3008143"
tNpcGossip[18956]["OptionChkFunc15"] = function ()
	--开通了第9块地
	local nEvent = tTheSixthHouse_Stc["EventType"]
	local nLandType = tTheSixthHouse_Stc["DataType"]["Land"]
	local nLand = Get_UserStatisticValue(nEvent,nLandType)
	if nLand >= 9 then
		return true
	else
		return false
	end
end
tNpcGossip[18956]["Option16"] = tTheSixthHouse_Text[18956]["Option16"]
tNpcGossip[18956]["OptionFunc16"]="TheSixthHouse_BuySeed</N>18956</N>3008145"
tNpcGossip[18956]["OptionChkFunc16"] = function ()
	--开通了第9块地
	local nEvent = tTheSixthHouse_Stc["EventType"]
	local nLandType = tTheSixthHouse_Stc["DataType"]["Land"]
	local nLand = Get_UserStatisticValue(nEvent,nLandType)
	if nLand >= 9 then
		return true
	else
		return false
	end
end
tNpcGossip[18956]["Option19"] = tTheSixthHouse_Text[18956]["Option19"]
tNpcGossip[18956]["OptionPoint19"]="2-2"

--接某个种子选项：二次确认
tNpcGossip[18956]["Text3-1"] = {311}
tNpcGossip[18956]["Text311"] = tTheSixthHouse_Text[18956]["Text311"]
tNpcGossip[18956]["tOption3-1"] = {25,26}
tNpcGossip[18956]["Option25"] = tTheSixthHouse_Text[18956]["Option25"]
tNpcGossip[18956]["Option26"] = tTheSixthHouse_Text[18956]["Option26"]
--售价 天石不足
tNpcGossip[18956]["Text3-2"] = {321}
tNpcGossip[18956]["Text321"] = tTheSixthHouse_Text[18956]["Text321"]
tNpcGossip[18956]["tOption3-2"] = {27}
tNpcGossip[18956]["Option27"] = tTheSixthHouse_Text[18956]["Option27"]
--背包空间不足
tNpcGossip[18956]["Text3-3"] = {331}
tNpcGossip[18956]["Text331"] = tTheSixthHouse_Text[18956]["Text331"]
tNpcGossip[18956]["tOption3-3"] = {27}

--接2：开垦田地。
tNpcGossip[18956]["Text4-1"] = {411}
tNpcGossip[18956]["Text411"] = tTheSixthHouse_Text[18956]["Text411"]
tNpcGossip[18956]["tOption4-1"] = {28,29}
tNpcGossip[18956]["ChkFunc4-1"] = function ()
	--获取当前玩家开垦了多少块田地
	local nEvent = tTheSixthHouse_Stc["EventType"]
	local nLandType = tTheSixthHouse_Stc["DataType"]["Land"]
	local nLand = Get_UserStatisticValue(nEvent,nLandType)
	local nNextLand = tonumber(nLand + 1)
	if nNextLand >= 10 then
		Sys_MsgBox(tTheSixthHouse_Text["FullLand"])
		return
	end
	
	if nLand ~= 0 and nNextLand <= 9 then
		local nNeedPlant = tTheSixthHouse_Land[nNextLand][1]
		local nNeedStone = tTheSixthHouse_Land[nNextLand][2]
		local nNeedEmoney = tTheSixthHouse_Land[nNextLand][3]
		tNpcGossip[18956]["Text411"] = string.format(tTheSixthHouse_Text[18956]["Text411"],nNeedPlant,nNeedStone,nNeedEmoney,nNextLand)
	end
	return true
end
tNpcGossip[18956]["Option28"] = tTheSixthHouse_Text[18956]["Option28"]
tNpcGossip[18956]["OptionFunc28"]="TheSixthHouse_OpenNextLand</N>18956</N>1"
tNpcGossip[18956]["Option29"] = tTheSixthHouse_Text[18956]["Option29"]
tNpcGossip[18956]["OptionFunc29"]="TheSixthHouse_OpenNextLand</N>18956</N>2"

--种植数量不足
tNpcGossip[18956]["Text4-2"] = {421}
tNpcGossip[18956]["Text421"] = tTheSixthHouse_Text[18956]["Text421"]
tNpcGossip[18956]["tOption4-2"] = {30}
tNpcGossip[18956]["Option30"] = tTheSixthHouse_Text[18956]["Option30"]
--翡翠灵石不足
tNpcGossip[18956]["Text4-3"] = {431}
tNpcGossip[18956]["Text431"] = tTheSixthHouse_Text[18956]["Text431"]
tNpcGossip[18956]["tOption4-3"] = {30}
--天石不足
tNpcGossip[18956]["Text4-4"] = {441}
tNpcGossip[18956]["Text441"] = tTheSixthHouse_Text[18956]["Text441"]
tNpcGossip[18956]["tOption4-4"] = {30}
--开垦成功
tNpcGossip[18956]["Text4-5"] = {451}
tNpcGossip[18956]["Text451"] = tTheSixthHouse_Text[18956]["Text451"]
tNpcGossip[18956]["tOption4-5"] = {31}
tNpcGossip[18956]["Option31"] = tTheSixthHouse_Text[18956]["Option31"]
-- 天石二次确认
tNpcGossip[18956]["Text4-7"] = {471}
tNpcGossip[18956]["Text471"] = tTheSixthHouse_Text[18956]["Text471"]
tNpcGossip[18956]["tOption4-7"] = {471,472}
tNpcGossip[18956]["Option471"] = tTheSixthHouse_Text[18956]["Option471"]
tNpcGossip[18956]["OptionFunc471"]="TheSixthHouse_OpenWithEmoneySure</N>18956"
tNpcGossip[18956]["Option472"] = tTheSixthHouse_Text[18956]["Option472"]
-- 接111：一键开垦
tNpcGossip[18956]["Text4-6"] = {461}
tNpcGossip[18956]["Text461"] = tTheSixthHouse_Text[18956]["Text461"]
tNpcGossip[18956]["tOption4-6"] = {461}
tNpcGossip[18956]["ChkFunc4-6"] = function ()
	--获取当前玩家开垦了多少块田地
	local nEvent = tTheSixthHouse_Stc["EventType"]
	local nLandType = tTheSixthHouse_Stc["DataType"]["Land"]
	local nLand = Get_UserStatisticValue(nEvent,nLandType)
	local nNextLand = tonumber(nLand + 1)
	if nNextLand >= 10 then
		Sys_MsgBox(tTheSixthHouse_Text["FullLand"])
		return
	end
	
	if nLand ~= 0 and nNextLand <= 9 then
		local nNeedEmoney = tTheSixthHouse_Land[nNextLand][5]
		tNpcGossip[18956]["Text461"] = string.format(tTheSixthHouse_Text[18956]["Text461"],nLand,nNeedEmoney)
	end
	return true
end
tNpcGossip[18956]["Option461"] = tTheSixthHouse_Text[18956]["Option461"]
tNpcGossip[18956]["OptionFunc461"]="TheSixthHouse_OpenOneTime</N>18956</N>1"

--接3：了解种子详情。
tNpcGossip[18956]["Text5-1"] = {511,512,513}
tNpcGossip[18956]["Text511"] = tTheSixthHouse_Text[18956]["Text511"]
tNpcGossip[18956]["Text512"] = tTheSixthHouse_Text[18956]["Text512"]
tNpcGossip[18956]["Text513"] = tTheSixthHouse_Text[18956]["Text513"]
tNpcGossip[18956]["tOption5-1"] = {32,33}
tNpcGossip[18956]["Option32"] = tTheSixthHouse_Text[18956]["Option32"]
tNpcGossip[18956]["OptionPoint32"]="1-1"
tNpcGossip[18956]["Option33"] = tTheSixthHouse_Text[18956]["Option33"]

--接113：了解种子
tNpcGossip[18956]["Text6-1"] = {611,612,613,614,615,616,617,618,619,620,621,622}
tNpcGossip[18956]["Text611"] = tTheSixthHouse_Text[18956]["Text611"]
tNpcGossip[18956]["Text612"] = tTheSixthHouse_Text[18956]["Text612"]
tNpcGossip[18956]["Text613"] = tTheSixthHouse_Text[18956]["Text613"]
tNpcGossip[18956]["Text614"] = tTheSixthHouse_Text[18956]["Text614"]
tNpcGossip[18956]["Text615"] = tTheSixthHouse_Text[18956]["Text615"]
tNpcGossip[18956]["Text616"] = tTheSixthHouse_Text[18956]["Text616"]
tNpcGossip[18956]["Text617"] = tTheSixthHouse_Text[18956]["Text617"]
tNpcGossip[18956]["Text618"] = tTheSixthHouse_Text[18956]["Text618"]
tNpcGossip[18956]["Text619"] = tTheSixthHouse_Text[18956]["Text619"]
tNpcGossip[18956]["Text620"] = tTheSixthHouse_Text[18956]["Text620"]
tNpcGossip[18956]["Text621"] = tTheSixthHouse_Text[18956]["Text621"]
tNpcGossip[18956]["Text622"] = tTheSixthHouse_Text[18956]["Text622"]
tNpcGossip[18956]["tOption6-1"] = {32,33}

--接8：普通宠物蛋
tNpcGossip[18956]["Text8-1"] = {811}
tNpcGossip[18956]["Text811"] = tTheSixthHouse_Text[18956]["Text811"]
tNpcGossip[18956]["tOption8-1"] = {811,812,813}
tNpcGossip[18956]["Option811"] = tTheSixthHouse_Text[18956]["Option811"]
tNpcGossip[18956]["OptionFunc811"]="TheSixthHouse_BuySeed</N>18956</N>3008521"
tNpcGossip[18956]["Option812"] = tTheSixthHouse_Text[18956]["Option812"]
tNpcGossip[18956]["OptionFunc812"]="TheSixthHouse_BuySeed</N>18956</N>3008522"
tNpcGossip[18956]["Option813"] = tTheSixthHouse_Text[18956]["Option813"]
tNpcGossip[18956]["OptionFunc813"]="TheSixthHouse_BuySeed</N>18956</N>3008523"

--接13：神兽宠物蛋
tNpcGossip[18956]["Text13-1"] = {1311}
tNpcGossip[18956]["Text1311"] = tTheSixthHouse_Text[18956]["Text1311"]
tNpcGossip[18956]["tOption13-1"] = {1311,1312,1313,1314,1315}
tNpcGossip[18956]["Option1311"] = tTheSixthHouse_Text[18956]["Option1311"]
tNpcGossip[18956]["OptionFunc1311"]="TheSixthHouse_BuySeed</N>18956</N>3008524"
tNpcGossip[18956]["OptionChkFunc1311"] = function ()
	--开通了第6块地
	local nEvent = tTheSixthHouse_Stc["EventType"]
	local nLandType = tTheSixthHouse_Stc["DataType"]["Land"]
	local nLand = Get_UserStatisticValue(nEvent,nLandType)
	if nLand >= 6 then
		return true
	else
		return false
	end
end
tNpcGossip[18956]["Option1312"] = tTheSixthHouse_Text[18956]["Option1312"]
tNpcGossip[18956]["OptionFunc1312"]="TheSixthHouse_BuySeed</N>18956</N>3008525"
tNpcGossip[18956]["OptionChkFunc1312"] = function ()
	--开通了第6块地
	local nEvent = tTheSixthHouse_Stc["EventType"]
	local nLandType = tTheSixthHouse_Stc["DataType"]["Land"]
	local nLand = Get_UserStatisticValue(nEvent,nLandType)
	if nLand >= 6 then
		return true
	else
		return false
	end
end
tNpcGossip[18956]["Option1313"] = tTheSixthHouse_Text[18956]["Option1313"]
tNpcGossip[18956]["OptionFunc1313"]="TheSixthHouse_BuySeed</N>18956</N>3008526"
tNpcGossip[18956]["OptionChkFunc1313"] = function ()
	--开通了第6块地
	local nEvent = tTheSixthHouse_Stc["EventType"]
	local nLandType = tTheSixthHouse_Stc["DataType"]["Land"]
	local nLand = Get_UserStatisticValue(nEvent,nLandType)
	if nLand >= 6 then
		return true
	else
		return false
	end
end
tNpcGossip[18956]["Option1314"] = tTheSixthHouse_Text[18956]["Option1314"]
tNpcGossip[18956]["OptionFunc1314"]="TheSixthHouse_BuySeed</N>18956</N>3008527"
tNpcGossip[18956]["OptionChkFunc1314"] = function ()
	--开通了第6块地
	local nEvent = tTheSixthHouse_Stc["EventType"]
	local nLandType = tTheSixthHouse_Stc["DataType"]["Land"]
	local nLand = Get_UserStatisticValue(nEvent,nLandType)
	if nLand >= 6 then
		return true
	else
		return false
	end
end
tNpcGossip[18956]["Option1315"] = tTheSixthHouse_Text[18956]["Option1315"]
tNpcGossip[18956]["OptionFunc1315"]="TheSixthHouse_BuySeed</N>18956</N>3008528"
tNpcGossip[18956]["OptionChkFunc1315"] = function ()
	--开通了第6块地
	local nEvent = tTheSixthHouse_Stc["EventType"]
	local nLandType = tTheSixthHouse_Stc["DataType"]["Land"]
	local nLand = Get_UserStatisticValue(nEvent,nLandType)
	if nLand >= 6 then
		return true
	else
		return false
	end
end

-------------------------------------------种子npc----------------------------------------------------------
--未种植作物1  19035
tNpcGossip[19035] = tNpcGossip[19035] or DefaultNpc:new{}
tNpcGossip[19035]["OptionHidden"] = 1

tNpcGossip[19035]["Text1-1"] = {111}
tNpcGossip[19035]["Text111"] = tTheSixthHouse_Text[19035]["Text111"]
tNpcGossip[19035]["tOption1-1"] = {1,2,3,4,5,6,7,9,10,11,12,13}
tNpcGossip[19035]["ChkFunc1-1"] = function ()
	if Get_UserId() == Get_MapOwnerId() then
		return true
	else
		return false
	end
end
tNpcGossip[19035]["Option1"] = tTheSixthHouse_Text[19035]["Option1"]
tNpcGossip[19035]["OptionFunc1"]="TheSixthHouse_PlantSeed</N>3008136"
tNpcGossip[19035]["OptionChkFunc1"] = function ()
	if Item_ChkItem(3008136) then
		return true
	else
		return false
	end
end
tNpcGossip[19035]["Option2"] = tTheSixthHouse_Text[19035]["Option2"]
tNpcGossip[19035]["OptionFunc2"]="TheSixthHouse_PlantSeed</N>3008137"
tNpcGossip[19035]["OptionChkFunc2"] = function ()
	if Item_ChkItem(3008137) then
		return true
	else
		return false
	end
end
tNpcGossip[19035]["Option3"] = tTheSixthHouse_Text[19035]["Option3"]
tNpcGossip[19035]["OptionFunc3"]="TheSixthHouse_PlantSeed</N>3008139"
tNpcGossip[19035]["OptionChkFunc3"] = function ()
	if Item_ChkItem(3008139) then
		return true
	else
		return false
	end
end
tNpcGossip[19035]["Option4"] = tTheSixthHouse_Text[19035]["Option4"]
tNpcGossip[19035]["OptionPoint4"]="8-1"
tNpcGossip[19035]["OptionChkFunc4"] = function ()
	if Item_ChkItem(3008521) or Item_ChkItem(3008522) or Item_ChkItem(3008523) then
		return true
	else
		return false
	end
end
tNpcGossip[19035]["Option5"] = tTheSixthHouse_Text[19035]["Option5"]
tNpcGossip[19035]["OptionFunc5"]="TheSixthHouse_PlantSeed</N>3008140"
tNpcGossip[19035]["OptionChkFunc5"] = function ()
	--开通了第3块地
	local nEvent = tTheSixthHouse_Stc["EventType"]
	local nLandType = tTheSixthHouse_Stc["DataType"]["Land"]
	local nLand = Get_UserStatisticValue(nEvent,nLandType)
	if nLand >= 3  then
		if Item_ChkItem(3008140) then
			return true
		else
			return false
		end
	else
		return false
	end
end
tNpcGossip[19035]["Option6"] = tTheSixthHouse_Text[19035]["Option6"]
tNpcGossip[19035]["OptionFunc6"]="TheSixthHouse_PlantSeed</N>3008141"
tNpcGossip[19035]["OptionChkFunc6"] = function ()
	--开通了第3块地
	local nEvent = tTheSixthHouse_Stc["EventType"]
	local nLandType = tTheSixthHouse_Stc["DataType"]["Land"]
	local nLand = Get_UserStatisticValue(nEvent,nLandType)
	if nLand >= 3  then
		if Item_ChkItem(3008141) then
			return true
		else
			return false
		end
	else
		return false
	end
end
tNpcGossip[19035]["Option7"] = tTheSixthHouse_Text[19035]["Option7"]
tNpcGossip[19035]["OptionFunc7"]="TheSixthHouse_PlantSeed</N>3008138"
tNpcGossip[19035]["OptionChkFunc7"] = function ()
	--开通了第3块地
	local nEvent = tTheSixthHouse_Stc["EventType"]
	local nLandType = tTheSixthHouse_Stc["DataType"]["Land"]
	local nLand = Get_UserStatisticValue(nEvent,nLandType)
	if nLand >= 3  then
		if Item_ChkItem(3008138) then
			return true
		else
			return false
		end
	else
		return false
	end
end
tNpcGossip[19035]["Option8"] = tTheSixthHouse_Text[19035]["Option8"]
tNpcGossip[19035]["OptionPoint8"]="1-2"
tNpcGossip[19035]["OptionChkFunc8"] = function ()
	--开通了第6块地
	local nEvent = tTheSixthHouse_Stc["EventType"]
	local nLandType = tTheSixthHouse_Stc["DataType"]["Land"]
	local nLand = Get_UserStatisticValue(nEvent,nLandType)
	if nLand >= 6 then
		local t = {3008142,3008143,3008144,3008145,3008524,3008525,3008526,3008527,3008528}
		local nCount = 0
		for i,v in pairs(t) do
			if Item_ChkItem(v) then
				nCount  = nCount + 1
			end
		end
		
		if nCount > 0 then
			return true
		else
			return false
		end
	else
		return false
	end
end

tNpcGossip[19035]["Text1-2"] = {121}
tNpcGossip[19035]["Text121"] = tTheSixthHouse_Text[19035]["Text121"]
tNpcGossip[19035]["tOption1-2"] = {9,10,11,12,13,14}
tNpcGossip[19035]["ChkFunc1-2"] = function ()
	return TheSixthHouse_JudgeOwner()
end
tNpcGossip[19035]["Option9"] = tTheSixthHouse_Text[19035]["Option9"]
tNpcGossip[19035]["OptionFunc9"]="TheSixthHouse_PlantSeed</N>3008142"
tNpcGossip[19035]["OptionChkFunc9"] = function ()
	--开通了第6块地
	local nEvent = tTheSixthHouse_Stc["EventType"]
	local nLandType = tTheSixthHouse_Stc["DataType"]["Land"]
	local nLand = Get_UserStatisticValue(nEvent,nLandType)
	if nLand >= 6 then
		if Item_ChkItem(3008142) then
			return true
		else
			return false
		end
	else
		return false
	end
end
tNpcGossip[19035]["Option10"] = tTheSixthHouse_Text[19035]["Option10"]
tNpcGossip[19035]["OptionPoint10"]="13-1"
tNpcGossip[19035]["OptionChkFunc10"] = function ()
	--开通了第6块地
	local nEvent = tTheSixthHouse_Stc["EventType"]
	local nLandType = tTheSixthHouse_Stc["DataType"]["Land"]
	local nLand = Get_UserStatisticValue(nEvent,nLandType)
	if nLand >= 6 then
		if Item_ChkItem(3008524) or Item_ChkItem(3008525) or Item_ChkItem(3008526) or Item_ChkItem(3008527) or Item_ChkItem(3008528) then
			return true
		else
			return false
		end
	else
		return false
	end
end
tNpcGossip[19035]["Option11"] = tTheSixthHouse_Text[19035]["Option11"]
tNpcGossip[19035]["OptionFunc11"]="TheSixthHouse_PlantSeed</N>3008144"
tNpcGossip[19035]["OptionChkFunc11"] = function ()
	--开通了第6块地
	local nEvent = tTheSixthHouse_Stc["EventType"]
	local nLandType = tTheSixthHouse_Stc["DataType"]["Land"]
	local nLand = Get_UserStatisticValue(nEvent,nLandType)
	if nLand >= 6 then
		if Item_ChkItem(3008144) then
			return true
		else
			return false
		end
	else
		return false
	end
end
tNpcGossip[19035]["Option12"] = tTheSixthHouse_Text[19035]["Option12"]
tNpcGossip[19035]["OptionFunc12"]="TheSixthHouse_PlantSeed</N>3008143"
tNpcGossip[19035]["OptionChkFunc12"] = function ()
	--开通了第9块地
	local nEvent = tTheSixthHouse_Stc["EventType"]
	local nLandType = tTheSixthHouse_Stc["DataType"]["Land"]
	local nLand = Get_UserStatisticValue(nEvent,nLandType)
	if nLand >= 9 then
		if Item_ChkItem(3008143) then
			return true
		else
			return false
		end
	else
		return false
	end
end
tNpcGossip[19035]["Option13"] = tTheSixthHouse_Text[19035]["Option13"]
tNpcGossip[19035]["OptionFunc13"]="TheSixthHouse_PlantSeed</N>3008145"
tNpcGossip[19035]["OptionChkFunc13"] = function ()
	--开通了第9块地
	local nEvent = tTheSixthHouse_Stc["EventType"]
	local nLandType = tTheSixthHouse_Stc["DataType"]["Land"]
	local nLand = Get_UserStatisticValue(nEvent,nLandType)
	if nLand >= 9 then
		if Item_ChkItem(3008145) then
			return true
		else
			return false
		end
	else
		return false
	end
end
tNpcGossip[19035]["Option14"] = tTheSixthHouse_Text[19035]["Option14"]
tNpcGossip[19035]["OptionPoint14"]="1-1"
-- 非房屋主人对白
tNpcGossip[19035]["Text1-3"] = {131}
tNpcGossip[19035]["Text131"] = tTheSixthHouse_Text[19035]["Text131"]
tNpcGossip[19035]["tOption1-3"] = {131}
tNpcGossip[19035]["ChkFunc1-3"] = function ()
	if Get_UserId() == Get_MapOwnerId() then
		return false
	else
		return true
	end
end
tNpcGossip[19035]["Option131"] = tTheSixthHouse_Text[19035]["Option131"]
-- 背包中无任何种子可种植
tNpcGossip[19035]["Text1-4"] = {141}
tNpcGossip[19035]["Text141"] = tTheSixthHouse_Text[19035]["Text141"]
tNpcGossip[19035]["tOption1-4"] = {141,131}
tNpcGossip[19035]["Option141"] = tTheSixthHouse_Text[19035]["Option141"]
tNpcGossip[19035]["OptionFunc141"]="TheSixthHouse_FindGardener"

--接4：普通宠物蛋
tNpcGossip[19035]["Text8-1"] = {811}
tNpcGossip[19035]["Text811"] = tTheSixthHouse_Text[19035]["Text811"]
tNpcGossip[19035]["tOption8-1"] = {811,812,813}
tNpcGossip[19035]["Option811"] = tTheSixthHouse_Text[19035]["Option811"]
tNpcGossip[19035]["OptionFunc811"]="TheSixthHouse_PlantSeed</N>3008521"
tNpcGossip[19035]["OptionChkFunc811"] = function ()
	if Item_ChkItem(3008521) then
		return true
	else
		return false
	end
end
tNpcGossip[19035]["Option812"] = tTheSixthHouse_Text[19035]["Option812"]
tNpcGossip[19035]["OptionFunc812"]="TheSixthHouse_PlantSeed</N>3008522"
tNpcGossip[19035]["OptionChkFunc812"] = function ()
	if Item_ChkItem(3008522) then
		return true
	else
		return false
	end
end
tNpcGossip[19035]["Option813"] = tTheSixthHouse_Text[19035]["Option813"]
tNpcGossip[19035]["OptionFunc813"]="TheSixthHouse_PlantSeed</N>3008523"
tNpcGossip[19035]["OptionChkFunc813"] = function ()
	if Item_ChkItem(3008523) then
		return true
	else
		return false
	end
end

--接10：神兽宠物蛋
tNpcGossip[19035]["Text13-1"] = {1311}
tNpcGossip[19035]["Text1311"] = tTheSixthHouse_Text[19035]["Text1311"]
tNpcGossip[19035]["tOption13-1"] = {1311,1312,1313,1314,1315}
tNpcGossip[19035]["Option1311"] = tTheSixthHouse_Text[19035]["Option1311"]
tNpcGossip[19035]["OptionFunc1311"]="TheSixthHouse_PlantSeed</N>3008524"
tNpcGossip[19035]["OptionChkFunc1311"] = function ()
	--开通了第6块地
	local nEvent = tTheSixthHouse_Stc["EventType"]
	local nLandType = tTheSixthHouse_Stc["DataType"]["Land"]
	local nLand = Get_UserStatisticValue(nEvent,nLandType)
	if nLand >= 6 then
		if Item_ChkItem(3008524) then
			return true
		else
			return false
		end
	else
		return false
	end
end
tNpcGossip[19035]["Option1312"] = tTheSixthHouse_Text[19035]["Option1312"]
tNpcGossip[19035]["OptionFunc1312"]="TheSixthHouse_PlantSeed</N>3008525"
tNpcGossip[19035]["OptionChkFunc1312"] = function ()
	--开通了第6块地
	local nEvent = tTheSixthHouse_Stc["EventType"]
	local nLandType = tTheSixthHouse_Stc["DataType"]["Land"]
	local nLand = Get_UserStatisticValue(nEvent,nLandType)
	if nLand >= 6 then
		if Item_ChkItem(3008525) then
			return true
		else
			return false
		end
	else
		return false
	end
end
tNpcGossip[19035]["Option1313"] = tTheSixthHouse_Text[19035]["Option1313"]
tNpcGossip[19035]["OptionFunc1313"]="TheSixthHouse_PlantSeed</N>3008526"
tNpcGossip[19035]["OptionChkFunc1313"] = function ()
	--开通了第6块地
	local nEvent = tTheSixthHouse_Stc["EventType"]
	local nLandType = tTheSixthHouse_Stc["DataType"]["Land"]
	local nLand = Get_UserStatisticValue(nEvent,nLandType)
	if nLand >= 6 then
		if Item_ChkItem(3008526) then
			return true
		else
			return false
		end
	else
		return false
	end
end
tNpcGossip[19035]["Option1314"] = tTheSixthHouse_Text[19035]["Option1314"]
tNpcGossip[19035]["OptionFunc1314"]="TheSixthHouse_PlantSeed</N>3008527"
tNpcGossip[19035]["OptionChkFunc1314"] = function ()
	--开通了第6块地
	local nEvent = tTheSixthHouse_Stc["EventType"]
	local nLandType = tTheSixthHouse_Stc["DataType"]["Land"]
	local nLand = Get_UserStatisticValue(nEvent,nLandType)
	if nLand >= 6 then
		if Item_ChkItem(3008527) then
			return true
		else
			return false
		end
	else
		return false
	end
end
tNpcGossip[19035]["Option1315"] = tTheSixthHouse_Text[19035]["Option1315"]
tNpcGossip[19035]["OptionFunc1315"]="TheSixthHouse_PlantSeed</N>3008528"
tNpcGossip[19035]["OptionChkFunc1315"] = function ()
	--开通了第6块地
	local nEvent = tTheSixthHouse_Stc["EventType"]
	local nLandType = tTheSixthHouse_Stc["DataType"]["Land"]
	local nLand = Get_UserStatisticValue(nEvent,nLandType)
	if nLand >= 6 then
		if Item_ChkItem(3008528) then
			return true
		else
			return false
		end
	else
		return false
	end
end

--已种植1  19036
tNpcGossip[19036] = tNpcGossip[19036] or DefaultNpc:new{}
tNpcGossip[19036]["OptionHidden"] = 1

tNpcGossip[19036]["Text1-1"] = {111}
tNpcGossip[19036]["Text111"] = tTheSixthHouse_Text[19036]["Text111"]
tNpcGossip[19036]["tOption1-1"] = {1,2,3}
tNpcGossip[19036]["ChkFunc1-1"] = function ()
	return TheSixthHouse_JudgeOwner()
end
tNpcGossip[19036]["Option1"] = tTheSixthHouse_Text[19036]["Option1"]
tNpcGossip[19036]["OptionFunc1"]="TheSixthHouse_Harvest"
tNpcGossip[19036]["Option3"] = tTheSixthHouse_Text[19036]["Option3"]
-- 非房屋主人对白
tNpcGossip[19036]["Text1-3"] = {131}
tNpcGossip[19036]["Text131"] = tTheSixthHouse_Text[19036]["Text131"]
tNpcGossip[19036]["tOption1-3"] = {131}
tNpcGossip[19036]["ChkFunc1-3"] = function ()
	return not TheSixthHouse_JudgeOwner()
end
tNpcGossip[19036]["Option131"] = tTheSixthHouse_Text[19036]["Option131"]

--接1：收获种子
--未成熟，询问是否快速收获
tNpcGossip[19036]["Text2-1"] = {211}
tNpcGossip[19036]["Text211"] = tTheSixthHouse_Text[19036]["Text211"]
tNpcGossip[19036]["tOption2-1"] = {4,5}
tNpcGossip[19036]["Option4"] = tTheSixthHouse_Text[19036]["Option4"]
tNpcGossip[19036]["OptionFunc4"]="TheSixthHouse_PayHarvest"
tNpcGossip[19036]["Option5"] = tTheSixthHouse_Text[19036]["Option5"]
--已成熟，收获成功
tNpcGossip[19036]["Text2-2"] = {221}
tNpcGossip[19036]["Text221"] = tTheSixthHouse_Text[19036]["Text221"]
tNpcGossip[19036]["tOption2-2"] = {6}
tNpcGossip[19036]["Option6"] = tTheSixthHouse_Text[19036]["Option6"]
--接4：快速收获种子
tNpcGossip[19036]["Text4-1"] = {411}
tNpcGossip[19036]["Text411"] = tTheSixthHouse_Text[19036]["Text411"]
tNpcGossip[19036]["tOption4-1"] = {7}
tNpcGossip[19036]["Option7"] = tTheSixthHouse_Text[19036]["Option7"]
--立即收获种子
--天石不足
tNpcGossip[19036]["Text4-2"] = {421}
tNpcGossip[19036]["Text421"] = tTheSixthHouse_Text[19036]["Text421"]
tNpcGossip[19036]["tOption4-2"] = {10}
tNpcGossip[19036]["Option10"] = tTheSixthHouse_Text[19036]["Option10"]
--银两不足
tNpcGossip[19036]["Text4-3"] = {431}
tNpcGossip[19036]["Text431"] = tTheSixthHouse_Text[19036]["Text431"]
tNpcGossip[19036]["tOption4-3"] = {10}
--背包空间不足
tNpcGossip[19036]["Text4-4"] = {441}
tNpcGossip[19036]["Text441"] = tTheSixthHouse_Text[19036]["Text441"]
tNpcGossip[19036]["tOption4-4"] = {10}

tNpcGossip[19037] = tNpcGossip[19035]		-- 19037   未种植作物2
tNpcGossip[19039] = tNpcGossip[19035]		-- 19039   未种植作物3
tNpcGossip[19041] = tNpcGossip[19035]		-- 19041   未种植作物4
tNpcGossip[19043] = tNpcGossip[19035]		-- 19043	未种植作物5
tNpcGossip[19045] = tNpcGossip[19035]		-- 19045	未种植作物6
tNpcGossip[19047] = tNpcGossip[19035]		-- 19047	未种植作物7
tNpcGossip[19049] = tNpcGossip[19035]		-- 19049	未种植作物8
tNpcGossip[19051] = tNpcGossip[19035]		-- 19051	未种植作物9

tNpcGossip[19038] = tNpcGossip[19036]		-- 19038	已种植2
tNpcGossip[19040] = tNpcGossip[19036]		-- 19040	已种植3
tNpcGossip[19042] = tNpcGossip[19036]		-- 19042	已种植4
tNpcGossip[19044] = tNpcGossip[19036]		-- 19044	已种植5
tNpcGossip[19046] = tNpcGossip[19036]		-- 19046	已种植6
tNpcGossip[19048] = tNpcGossip[19036]		-- 19048	已种植7
tNpcGossip[19050] = tNpcGossip[19036]		-- 19050	已种植8
tNpcGossip[19052] = tNpcGossip[19036]		-- 19052	已种植9

-------------------------------------------------宠物养殖区npc----------------------------------------
-- 18957	宠物养殖区问号
-- tNpcFace[3925] = 1
tNpcGossip[18957] = tNpcGossip[18957] or DefaultNpc:new{}
tNpcGossip[18957]["OptionHidden"] = 1

tNpcGossip[18957]["Text1-1"] = {111,112}
tNpcGossip[18957]["Text111"] = tTheSixthHouse_Text[18957]["Text111"]
tNpcGossip[18957]["Text112"] = tTheSixthHouse_Text[18957]["Text112"]
tNpcGossip[18957]["tOption1-1"] = {1,2,3,4}
tNpcGossip[18957]["ChkFunc1-1"] = function ()
	if Get_UserId() == Get_MapOwnerId() then
		return true
	else
		return false
	end
end
tNpcGossip[18957]["Option1"] = tTheSixthHouse_Text[18957]["Option1"]
tNpcGossip[18957]["OptionFunc1"]="TheSixthHouse_OpenUseEmoney</N>18957"
tNpcGossip[18957]["Option2"] = tTheSixthHouse_Text[18957]["Option2"]
tNpcGossip[18957]["OptionFunc2"]="TheSixthHouse_OpenUseItem</N>18957</N>3008100"
tNpcGossip[18957]["Option3"] = tTheSixthHouse_Text[18957]["Option3"]
tNpcGossip[18957]["OptionFunc3"]="TheSixthHouse_FindNpc</N>18957</N>18955</N>18955"
tNpcGossip[18957]["Option4"] = tTheSixthHouse_Text[18957]["Option4"]
-- 非房屋主人对白
tNpcGossip[18957]["Text1-3"] = {131}
tNpcGossip[18957]["Text131"] = tTheSixthHouse_Text[18957]["Text131"]
tNpcGossip[18957]["tOption1-3"] = {131}
tNpcGossip[18957]["ChkFunc1-3"] = function ()
	if Get_UserId() == Get_MapOwnerId() then
		return false
	else
		return true
	end
end
tNpcGossip[18957]["Option131"] = tTheSixthHouse_Text[18957]["Option131"]

--接option1	花费天石开通宠物养殖区。
--二次确认
tNpcGossip[18957]["Text3-1"] = {311}
tNpcGossip[18957]["Text311"] = tTheSixthHouse_Text[18957]["Text311"]
tNpcGossip[18957]["tOption3-1"] = {5,6}
tNpcGossip[18957]["Option5"] = tTheSixthHouse_Text[18957]["Option5"]
tNpcGossip[18957]["OptionFunc5"]="TheSixthHouse_IsOpenSuccess</N>18957</N>2</N>3008100"
tNpcGossip[18957]["Option6"] = tTheSixthHouse_Text[18957]["Option6"]
--天石不足
tNpcGossip[18957]["Text3-2"] = {321}
tNpcGossip[18957]["Text321"] = tTheSixthHouse_Text[18957]["Text321"]
tNpcGossip[18957]["tOption3-2"] = {7}
tNpcGossip[18957]["Option7"] = tTheSixthHouse_Text[18957]["Option7"]
--开通成功
tNpcGossip[18957]["Text3-3"] = {331}
tNpcGossip[18957]["Text331"] = tTheSixthHouse_Text[18957]["Text331"]
tNpcGossip[18957]["tOption3-3"] = {8}
tNpcGossip[18957]["Option8"] = tTheSixthHouse_Text[18957]["Option8"]
--失败，已上交过升级材料
tNpcGossip[18957]["Text3-4"] = {341}
tNpcGossip[18957]["Text341"] = tTheSixthHouse_Text[18957]["Text341"]
tNpcGossip[18957]["tOption3-4"] = {9}
tNpcGossip[18957]["Option9"] = tTheSixthHouse_Text[18957]["Option9"]

--接2：上交材料开通宠物养殖区。
--上交材料满足，二次确认
tNpcGossip[18957]["Text2-1"] = {211}
tNpcGossip[18957]["Text211"] = tTheSixthHouse_Text[18957]["Text211"]
tNpcGossip[18957]["tOption2-1"] = {10,11}
tNpcGossip[18957]["Option10"] = tTheSixthHouse_Text[18957]["Option10"]
tNpcGossip[18957]["OptionFunc10"]="TheSixthHouse_IsOpenSuccess</N>18957</N>1</N>3008100"
tNpcGossip[18957]["Option11"] = tTheSixthHouse_Text[18957]["Option11"]
--背包中没有对应数量的此道具
tNpcGossip[18957]["Text2-2"] = {221}
tNpcGossip[18957]["Text221"] = tTheSixthHouse_Text[18957]["Text221"]
tNpcGossip[18957]["tOption2-2"] = {7}
tNpcGossip[18957]["Option7"] = tTheSixthHouse_Text[18957]["Option7"]
--提交成功
tNpcGossip[18957]["Text2-3"] = {231}
tNpcGossip[18957]["Text231"] = tTheSixthHouse_Text[18957]["Text231"]
tNpcGossip[18957]["tOption2-3"] = {12}
tNpcGossip[18957]["Option12"] = tTheSixthHouse_Text[18957]["Option12"]
--失败，已上交过升级材料
tNpcGossip[18957]["Text2-4"] = {241}
tNpcGossip[18957]["Text241"] = tTheSixthHouse_Text[18957]["Text241"]
tNpcGossip[18957]["tOption2-4"] = {9}


-- 18958	宠物保育员
tNpcFace[3940] = 1
tNpcGossip[18958] = tNpcGossip[18958] or DefaultNpc:new{}
tNpcGossip[18958]["OptionHidden"] = 1

tNpcGossip[18958]["Text1-1"] = {111,112}
tNpcGossip[18958]["Text111"] = tTheSixthHouse_Text[18958]["Text111"]
tNpcGossip[18958]["Text112"] = tTheSixthHouse_Text[18958]["Text112"]
tNpcGossip[18958]["tOption1-1"] = {1,3,2,4,5}
tNpcGossip[18958]["ChkFunc1-1"] = function ()
	if Get_UserId() == Get_MapOwnerId() then
		return true
	else
		return false
	end
end
tNpcGossip[18958]["Option1"] = tTheSixthHouse_Text[18958]["Option1"]
tNpcGossip[18958]["OptionFunc1"]="TheSixthHouse_JudgeAdopt</N>18958"
tNpcGossip[18958]["Option3"] = tTheSixthHouse_Text[18958]["Option3"]
tNpcGossip[18958]["OptionFunc3"]="TheSixthHouse_UpLevelPet</N>18958</N>0"
tNpcGossip[18958]["Option2"] = tTheSixthHouse_Text[18958]["Option2"]
tNpcGossip[18958]["OptionPoint2"]="3-1"
tNpcGossip[18958]["Option4"] = tTheSixthHouse_Text[18958]["Option4"]
tNpcGossip[18958]["OptionFunc4"]="TheSixthHouse_FindNpc</N>18958</N>18955</N>18955"
tNpcGossip[18958]["Option5"] = tTheSixthHouse_Text[18958]["Option5"]
--上交材料需等待1天时间才可以领养宠物。
tNpcGossip[18958]["Text1-2"] = {121}
tNpcGossip[18958]["Text121"] = tTheSixthHouse_Text[18958]["Text121"]
tNpcGossip[18958]["tOption1-2"] = {121,5}
tNpcGossip[18958]["ChkFunc1-2"] = function ()
	if Get_UserId() == Get_MapOwnerId() then
		return true
	else
		return false
	end
end
tNpcGossip[18958]["Option121"] = tTheSixthHouse_Text[18958]["Option121"]
-- 非房屋主人对白
tNpcGossip[18958]["Text1-3"] = {131}
tNpcGossip[18958]["Text131"] = tTheSixthHouse_Text[18958]["Text131"]
tNpcGossip[18958]["tOption1-3"] = {131}
tNpcGossip[18958]["ChkFunc1-3"] = function ()
	if Get_UserId() == Get_MapOwnerId() then
		return false
	else
		return true
	end
end
tNpcGossip[18958]["Option131"] = tTheSixthHouse_Text[18958]["Option131"]

--接1：领养宠物
tNpcGossip[18958]["Text2-1"] = {211}
tNpcGossip[18958]["Text211"] = tTheSixthHouse_Text[18958]["Text211"]
tNpcGossip[18958]["tOption2-1"] = {211,212,213}
tNpcGossip[18958]["Option211"] = tTheSixthHouse_Text[18958]["Option211"]
tNpcGossip[18958]["OptionPoint211"]="2-4"
tNpcGossip[18958]["Option212"] = tTheSixthHouse_Text[18958]["Option212"]
tNpcGossip[18958]["OptionPoint212"]="2-5"
tNpcGossip[18958]["Option213"] = tTheSixthHouse_Text[18958]["Option213"]
--领养成功
tNpcGossip[18958]["Text2-2"] = {221}
tNpcGossip[18958]["Text221"] = tTheSixthHouse_Text[18958]["Text221"]
tNpcGossip[18958]["tOption2-2"] = {221}
tNpcGossip[18958]["Option221"] = tTheSixthHouse_Text[18958]["Option221"]
--已领养过
tNpcGossip[18958]["Text2-3"] = {231}
tNpcGossip[18958]["Text231"] = tTheSixthHouse_Text[18958]["Text231"]
tNpcGossip[18958]["tOption2-3"] = {231}
tNpcGossip[18958]["Option231"] = tTheSixthHouse_Text[18958]["Option231"]
--选择宠物
tNpcGossip[18958]["Text2-4"] = {241}
tNpcGossip[18958]["Text241"] = tTheSixthHouse_Text[18958]["Text241"]
tNpcGossip[18958]["tOption2-4"] = {6,7,8,9}
tNpcGossip[18958]["Option6"] = tTheSixthHouse_Text[18958]["Option6"]
tNpcGossip[18958]["OptionFunc6"]="TheSixthHouse_AdoptPet</N>18958</N>1"
tNpcGossip[18958]["Option7"] = tTheSixthHouse_Text[18958]["Option7"]
tNpcGossip[18958]["OptionFunc7"]="TheSixthHouse_AdoptPet</N>18958</N>2"
tNpcGossip[18958]["Option8"] = tTheSixthHouse_Text[18958]["Option8"]
tNpcGossip[18958]["OptionFunc8"]="TheSixthHouse_AdoptPet</N>18958</N>3"
tNpcGossip[18958]["Option9"] = tTheSixthHouse_Text[18958]["Option9"]
--选择神兽宠物
tNpcGossip[18958]["Text2-5"] = {251}
tNpcGossip[18958]["Text251"] = tTheSixthHouse_Text[18958]["Text251"]
tNpcGossip[18958]["tOption2-5"] = {10,11,12,13,14,9}
tNpcGossip[18958]["Option10"] = tTheSixthHouse_Text[18958]["Option10"]
tNpcGossip[18958]["OptionFunc10"]="TheSixthHouse_AdoptPet</N>18958</N>4"
tNpcGossip[18958]["Option11"] = tTheSixthHouse_Text[18958]["Option11"]
tNpcGossip[18958]["OptionFunc11"]="TheSixthHouse_AdoptPet</N>18958</N>5"
tNpcGossip[18958]["Option12"] = tTheSixthHouse_Text[18958]["Option12"]
tNpcGossip[18958]["OptionFunc12"]="TheSixthHouse_AdoptPet</N>18958</N>6"
tNpcGossip[18958]["Option13"] = tTheSixthHouse_Text[18958]["Option13"]
tNpcGossip[18958]["OptionFunc13"]="TheSixthHouse_AdoptPet</N>18958</N>7"
tNpcGossip[18958]["Option14"] = tTheSixthHouse_Text[18958]["Option14"]
tNpcGossip[18958]["OptionFunc14"]="TheSixthHouse_AdoptPet</N>18958</N>8"
--选择领养方式
tNpcGossip[18958]["Text2-6"] = {261}
tNpcGossip[18958]["Text261"] = tTheSixthHouse_Text[18958]["Text261"]
tNpcGossip[18958]["tOption2-6"] = {15,16,17,18}
tNpcGossip[18958]["Option15"] = tTheSixthHouse_Text[18958]["Option15"]
tNpcGossip[18958]["Option16"] = tTheSixthHouse_Text[18958]["Option16"]
tNpcGossip[18958]["Option17"] = tTheSixthHouse_Text[18958]["Option17"]
tNpcGossip[18958]["OptionPoint17"]="2-1"
tNpcGossip[18958]["Option18"] = tTheSixthHouse_Text[18958]["Option18"]
--材料不足
tNpcGossip[18958]["Text2-7"] = {271,272}
tNpcGossip[18958]["Text271"] = tTheSixthHouse_Text[18958]["Text271"]
tNpcGossip[18958]["Text272"] = tTheSixthHouse_Text[18958]["Text272"]
tNpcGossip[18958]["tOption2-7"] = {19}
tNpcGossip[18958]["Option19"] = tTheSixthHouse_Text[18958]["Option19"]
--天石不足
tNpcGossip[18958]["Text2-8"] = {281,282}
tNpcGossip[18958]["Text281"] = tTheSixthHouse_Text[18958]["Text281"]
tNpcGossip[18958]["Text282"] = tTheSixthHouse_Text[18958]["Text282"]
tNpcGossip[18958]["tOption2-8"] = {19}

--接2：查询宠物生长情况
tNpcGossip[18958]["Text3-1"] = {311}
tNpcGossip[18958]["Text311"] = tTheSixthHouse_Text[18958]["Text311"]
tNpcGossip[18958]["tOption3-1"] = {311,312,313}
tNpcGossip[18958]["Option311"] = tTheSixthHouse_Text[18958]["Option311"]
tNpcGossip[18958]["OptionFunc311"]="TheSixthHouse_JudgeExp</N>18958</N>1"
tNpcGossip[18958]["Option312"] = tTheSixthHouse_Text[18958]["Option312"]
tNpcGossip[18958]["OptionFunc312"]="TheSixthHouse_JudgeExp</N>18958</N>2"
tNpcGossip[18958]["Option313"] = tTheSixthHouse_Text[18958]["Option313"]
--俏皮萌宠-无该类宠物在后花园
tNpcGossip[18958]["Text3-2"] = {321}
tNpcGossip[18958]["Text321"] = tTheSixthHouse_Text[18958]["Text321"]
tNpcGossip[18958]["tOption3-2"] = {321}
tNpcGossip[18958]["Option321"] = tTheSixthHouse_Text[18958]["Option321"]
--有该类宠物在后花园
tNpcGossip[18958]["Text3-3"] = {331}
tNpcGossip[18958]["Text331"] = tTheSixthHouse_Text[18958]["Text331"]
tNpcGossip[18958]["tOption3-3"] = {30,31,32,331}
tNpcGossip[18958]["Option30"] = tTheSixthHouse_Text[18958]["Option30"]
tNpcGossip[18958]["OptionFunc30"]="TheSixthHouse_CheckExp</N>18958</N>1"
tNpcGossip[18958]["OptionChkFunc30"] = function ()
	if TheSixthHouse_ChkPetStc(1,1) then
		if TheSixthHouse_ChkPetStc(2,1) then
			tNpcGossip[18958]["Option30"] = tTheSixthHouse_Text[18958]["Option3001"]
			return true
		else
			tNpcGossip[18958]["Option30"] = tTheSixthHouse_Text[18958]["Option30"]
			return true
		end
	else
		return false
	end
end
tNpcGossip[18958]["Option31"] = tTheSixthHouse_Text[18958]["Option31"]
tNpcGossip[18958]["OptionFunc31"]="TheSixthHouse_CheckExp</N>18958</N>2"
tNpcGossip[18958]["OptionChkFunc31"] = function ()
	if TheSixthHouse_ChkPetStc(1,2) then
		if TheSixthHouse_ChkPetStc(2,2) then
			tNpcGossip[18958]["Option31"] = tTheSixthHouse_Text[18958]["Option3101"]
			return true
		else
			tNpcGossip[18958]["Option31"] = tTheSixthHouse_Text[18958]["Option31"]
			return true
		end
	else
		return false
	end
end
tNpcGossip[18958]["Option32"] = tTheSixthHouse_Text[18958]["Option32"]
tNpcGossip[18958]["OptionFunc32"]="TheSixthHouse_CheckExp</N>18958</N>3"
tNpcGossip[18958]["OptionChkFunc32"] = function ()
	if TheSixthHouse_ChkPetStc(1,3) then
		if TheSixthHouse_ChkPetStc(2,3) then
			tNpcGossip[18958]["Option32"] = tTheSixthHouse_Text[18958]["Option3201"]
			return true
		else
			tNpcGossip[18958]["Option32"] = tTheSixthHouse_Text[18958]["Option32"]
			return true
		end
	else
		return false
	end
end
tNpcGossip[18958]["Option331"] = tTheSixthHouse_Text[18958]["Option331"]

--镇宅神兽-无该类宠物在后花园
tNpcGossip[18958]["Text3-4"] = {341}
tNpcGossip[18958]["Text341"] = tTheSixthHouse_Text[18958]["Text341"]
tNpcGossip[18958]["tOption3-4"] = {321}
--有该类宠物在后花园
tNpcGossip[18958]["Text3-5"] = {351}
tNpcGossip[18958]["Text351"] = tTheSixthHouse_Text[18958]["Text351"]
tNpcGossip[18958]["tOption3-5"] = {33,34,35,36,37,351}
tNpcGossip[18958]["Option33"] = tTheSixthHouse_Text[18958]["Option33"]
tNpcGossip[18958]["OptionFunc33"]="TheSixthHouse_CheckExp</N>18958</N>4"
tNpcGossip[18958]["OptionChkFunc33"] = function ()
	if TheSixthHouse_ChkPetStc(1,4) then
		if TheSixthHouse_ChkPetStc(2,4) then
			tNpcGossip[18958]["Option33"] = tTheSixthHouse_Text[18958]["Option3301"]
			return true
		else
			tNpcGossip[18958]["Option33"] = tTheSixthHouse_Text[18958]["Option33"]
			return true
		end
	else
		return false
	end
end
tNpcGossip[18958]["Option34"] = tTheSixthHouse_Text[18958]["Option34"]
tNpcGossip[18958]["OptionFunc34"]="TheSixthHouse_CheckExp</N>18958</N>5"
tNpcGossip[18958]["OptionChkFunc34"] = function ()
	if TheSixthHouse_ChkPetStc(1,5) then
		if TheSixthHouse_ChkPetStc(2,5) then
			tNpcGossip[18958]["Option34"] = tTheSixthHouse_Text[18958]["Option3401"]
			return true
		else
			tNpcGossip[18958]["Option34"] = tTheSixthHouse_Text[18958]["Option34"]
			return true
		end
	else
		return false
	end
end
tNpcGossip[18958]["Option35"] = tTheSixthHouse_Text[18958]["Option35"]
tNpcGossip[18958]["OptionFunc35"]="TheSixthHouse_CheckExp</N>18958</N>6"
tNpcGossip[18958]["OptionChkFunc35"] = function ()
	if TheSixthHouse_ChkPetStc(1,6) then
		if TheSixthHouse_ChkPetStc(2,6) then
			tNpcGossip[18958]["Option35"] = tTheSixthHouse_Text[18958]["Option3501"]
			return true
		else
			tNpcGossip[18958]["Option35"] = tTheSixthHouse_Text[18958]["Option35"]
			return true
		end
	else
		return false
	end
end
tNpcGossip[18958]["Option36"] = tTheSixthHouse_Text[18958]["Option36"]
tNpcGossip[18958]["OptionFunc36"]="TheSixthHouse_CheckExp</N>18958</N>7"
tNpcGossip[18958]["OptionChkFunc36"] = function ()
	if TheSixthHouse_ChkPetStc(1,7) then
		if TheSixthHouse_ChkPetStc(2,7) then
			tNpcGossip[18958]["Option36"] = tTheSixthHouse_Text[18958]["Option3601"]
			return true
		else
			tNpcGossip[18958]["Option36"] = tTheSixthHouse_Text[18958]["Option36"]
			return true
		end
	else
		return false
	end
end
tNpcGossip[18958]["Option37"] = tTheSixthHouse_Text[18958]["Option37"]
tNpcGossip[18958]["OptionFunc37"]="TheSixthHouse_CheckExp</N>18958</N>8"
tNpcGossip[18958]["OptionChkFunc37"] = function ()
	if TheSixthHouse_ChkPetStc(1,8) then
		if TheSixthHouse_ChkPetStc(2,8) then
			tNpcGossip[18958]["Option37"] = tTheSixthHouse_Text[18958]["Option3701"]
			return true
		else
			tNpcGossip[18958]["Option37"] = tTheSixthHouse_Text[18958]["Option37"]
			return true
		end
	else
		return false
	end
end
tNpcGossip[18958]["Option351"] = tTheSixthHouse_Text[18958]["Option351"]

--无宠物
tNpcGossip[18958]["Text3-6"] = {361}
tNpcGossip[18958]["Text361"] = tTheSixthHouse_Text[18958]["Text361"]
tNpcGossip[18958]["tOption3-6"] = {361}
tNpcGossip[18958]["Option361"] = tTheSixthHouse_Text[18958]["Option361"]
--选择某个宠物查看喂养情况
tNpcGossip[18958]["Text3-7"] = {371,372,373,374}
tNpcGossip[18958]["Text371"] = tTheSixthHouse_Text[18958]["Text371"]
tNpcGossip[18958]["Text372"] = tTheSixthHouse_Text[18958]["Text372"]
tNpcGossip[18958]["Text373"] = tTheSixthHouse_Text[18958]["Text373"]
tNpcGossip[18958]["Text374"] = tTheSixthHouse_Text[18958]["Text374"]
tNpcGossip[18958]["tOption3-7"] = {371,372}
tNpcGossip[18958]["Option371"] = tTheSixthHouse_Text[18958]["Option371"]
tNpcGossip[18958]["OptionPoint371"]="3-1"
tNpcGossip[18958]["Option372"] = tTheSixthHouse_Text[18958]["Option372"]

--接3：宠物升级 喂养
tNpcGossip[18958]["Text4-1"] = {411}
tNpcGossip[18958]["Text411"] = tTheSixthHouse_Text[18958]["Text411"]
tNpcGossip[18958]["tOption4-1"] = {40,41,42,43,44,45,46,48}
tNpcGossip[18958]["Option40"] = tTheSixthHouse_Text[18958]["Option40"]
tNpcGossip[18958]["OptionFunc40"]="TheSixthHouse_UpLevelPet</N>18958</N>1"
tNpcGossip[18958]["OptionChkFunc40"] = function ()
	if TheSixthHouse_ChkPetStc(1,1) then
		if TheSixthHouse_ChkPetStc(2,1) then
			tNpcGossip[18958]["Option40"] = tTheSixthHouse_Text[18958]["Option4001"]
			return true
		else
			tNpcGossip[18958]["Option40"] = tTheSixthHouse_Text[18958]["Option40"]
			return true
		end
	else
		return false
	end
end
tNpcGossip[18958]["Option41"] = tTheSixthHouse_Text[18958]["Option41"]
tNpcGossip[18958]["OptionFunc41"]="TheSixthHouse_UpLevelPet</N>18958</N>2"
tNpcGossip[18958]["OptionChkFunc41"] = function ()
	if TheSixthHouse_ChkPetStc(1,2) then
		if TheSixthHouse_ChkPetStc(2,2) then
			tNpcGossip[18958]["Option41"] = tTheSixthHouse_Text[18958]["Option4101"]
			return true
		else
			tNpcGossip[18958]["Option41"] = tTheSixthHouse_Text[18958]["Option41"]
			return true
		end
	else
		return false
	end
end
tNpcGossip[18958]["Option42"] = tTheSixthHouse_Text[18958]["Option42"]
tNpcGossip[18958]["OptionFunc42"]="TheSixthHouse_UpLevelPet</N>18958</N>3"
tNpcGossip[18958]["OptionChkFunc42"] = function ()
	if TheSixthHouse_ChkPetStc(1,3) then
		if TheSixthHouse_ChkPetStc(2,3) then
			tNpcGossip[18958]["Option42"] = tTheSixthHouse_Text[18958]["Option4201"]
			return true
		else
			tNpcGossip[18958]["Option42"] = tTheSixthHouse_Text[18958]["Option42"]
			return true
		end
	else
		return false
	end
end
tNpcGossip[18958]["Option43"] = tTheSixthHouse_Text[18958]["Option43"]
tNpcGossip[18958]["OptionFunc43"]="TheSixthHouse_UpLevelPet</N>18958</N>4"
tNpcGossip[18958]["OptionChkFunc43"] = function ()
	if TheSixthHouse_ChkPetStc(1,4) then
		if TheSixthHouse_ChkPetStc(2,4) then
			tNpcGossip[18958]["Option43"] = tTheSixthHouse_Text[18958]["Option4301"]
			return true
		else
			tNpcGossip[18958]["Option43"] = tTheSixthHouse_Text[18958]["Option43"]
			return true
		end
	else
		return false
	end
end
tNpcGossip[18958]["Option44"] = tTheSixthHouse_Text[18958]["Option44"]
tNpcGossip[18958]["OptionFunc44"]="TheSixthHouse_UpLevelPet</N>18958</N>5"
tNpcGossip[18958]["OptionChkFunc44"] = function ()
	if TheSixthHouse_ChkPetStc(1,5) then
		if TheSixthHouse_ChkPetStc(2,5) then
			tNpcGossip[18958]["Option44"] = tTheSixthHouse_Text[18958]["Option4401"]
			return true
		else
			tNpcGossip[18958]["Option44"] = tTheSixthHouse_Text[18958]["Option44"]
			return true
		end
	else
		return false
	end
end
tNpcGossip[18958]["Option45"] = tTheSixthHouse_Text[18958]["Option45"]
tNpcGossip[18958]["OptionFunc45"]="TheSixthHouse_UpLevelPet</N>18958</N>6"
tNpcGossip[18958]["OptionChkFunc45"] = function ()
	if TheSixthHouse_ChkPetStc(1,6) then
		if TheSixthHouse_ChkPetStc(2,6) then
			tNpcGossip[18958]["Option45"] = tTheSixthHouse_Text[18958]["Option4501"]
			return true
		else
			tNpcGossip[18958]["Option45"] = tTheSixthHouse_Text[18958]["Option45"]
			return true
		end
	else
		return false
	end
end
tNpcGossip[18958]["Option46"] = tTheSixthHouse_Text[18958]["Option46"]
tNpcGossip[18958]["OptionFunc46"]="TheSixthHouse_UpLevelPet</N>18958</N>7"
tNpcGossip[18958]["OptionChkFunc46"] = function ()
	if TheSixthHouse_ChkPetStc(1,7) then
		if TheSixthHouse_ChkPetStc(2,7) then
			tNpcGossip[18958]["Option46"] = tTheSixthHouse_Text[18958]["Option4601"]
			return true
		else
			tNpcGossip[18958]["Option46"] = tTheSixthHouse_Text[18958]["Option46"]
			return true
		end
	else
		return false
	end
end
tNpcGossip[18958]["Option47"] = tTheSixthHouse_Text[18958]["Option47"]
tNpcGossip[18958]["OptionPoint47"]="4-2"
tNpcGossip[18958]["OptionChkFunc47"] = function ()
	if TheSixthHouse_ChkPetStc(1,8) then
		return true
	else
		return false
	end
end

tNpcGossip[18958]["Text4-2"] = {421}
tNpcGossip[18958]["Text421"] = tTheSixthHouse_Text[18958]["Text421"]
tNpcGossip[18958]["tOption4-2"] = {48,49,50}
tNpcGossip[18958]["Option48"] = tTheSixthHouse_Text[18958]["Option48"]
tNpcGossip[18958]["OptionFunc48"]="TheSixthHouse_UpLevelPet</N>18958</N>8"
tNpcGossip[18958]["OptionChkFunc48"] = function ()
	if TheSixthHouse_ChkPetStc(1,8) then
		if TheSixthHouse_ChkPetStc(2,8) then
			tNpcGossip[18958]["Option48"] = tTheSixthHouse_Text[18958]["Option4801"]
			return true
		else
			tNpcGossip[18958]["Option48"] = tTheSixthHouse_Text[18958]["Option48"]
			return true
		end
	else
		return false
	end
end
tNpcGossip[18958]["Option49"] = tTheSixthHouse_Text[18958]["Option49"]
tNpcGossip[18958]["OptionPoint49"]="4-1"
tNpcGossip[18958]["Option50"] = tTheSixthHouse_Text[18958]["Option50"]
--接喂养宠物XX
tNpcGossip[18958]["Text4-3"] = {431}
tNpcGossip[18958]["Text431"] = tTheSixthHouse_Text[18958]["Text431"]
tNpcGossip[18958]["tOption4-3"] = {60,61,62,64,63}
tNpcGossip[18958]["Option60"] = tTheSixthHouse_Text[18958]["Option60"]
tNpcGossip[18958]["OptionFunc60"]="TheSixthHouse_UpPetWithFood</N>18958</N>3008513"
tNpcGossip[18958]["Option61"] = tTheSixthHouse_Text[18958]["Option61"]
tNpcGossip[18958]["OptionFunc61"]="TheSixthHouse_UpPetWithFood</N>18958</N>3008516"
tNpcGossip[18958]["Option62"] = tTheSixthHouse_Text[18958]["Option62"]
tNpcGossip[18958]["OptionFunc62"]="TheSixthHouse_UpPetWithFood</N>18958</N>3008517"
tNpcGossip[18958]["Option64"] = tTheSixthHouse_Text[18958]["Option64"]
tNpcGossip[18958]["OptionFunc64"]="TheSixthHouse_UpPetWithFood</N>18958</N>450"
tNpcGossip[18958]["Option63"] = tTheSixthHouse_Text[18958]["Option63"]
--没有饲料
tNpcGossip[18958]["Text4-4"] = {441}
tNpcGossip[18958]["Text441"] = tTheSixthHouse_Text[18958]["Text441"]
tNpcGossip[18958]["tOption4-4"] = {442,441}
tNpcGossip[18958]["Option441"] = tTheSixthHouse_Text[18958]["Option441"]
tNpcGossip[18958]["Option442"] = tTheSixthHouse_Text[18958]["Option442"]
tNpcGossip[18958]["OptionFunc442"]="TheSixthHouse_AutoFindWay</N>18956"

--还未领养过1级的宠物
tNpcGossip[18958]["Text4-5"] = {451}
tNpcGossip[18958]["Text451"] = tTheSixthHouse_Text[18958]["Text451"]
tNpcGossip[18958]["tOption4-5"] = {451}
tNpcGossip[18958]["Option451"] = tTheSixthHouse_Text[18958]["Option451"]
-- 已升至最高级，不需升级
tNpcGossip[18958]["Text4-6"] = {461}
tNpcGossip[18958]["Text461"] = tTheSixthHouse_Text[18958]["Text461"]
tNpcGossip[18958]["tOption4-6"] = {451}
-- 升级成功
tNpcGossip[18958]["Text4-7"] = {471}
tNpcGossip[18958]["Text471"] = tTheSixthHouse_Text[18958]["Text471"]
tNpcGossip[18958]["tOption4-7"] = {471}
tNpcGossip[18958]["Option471"] = tTheSixthHouse_Text[18958]["Option471"]
-- 天石不足
tNpcGossip[18958]["Text4-8"] = {481}
tNpcGossip[18958]["Text481"] = tTheSixthHouse_Text[18958]["Text481"]
tNpcGossip[18958]["tOption4-8"] = {451}
-- 花费天石450
tNpcGossip[18958]["Text4-9"] = {491}
tNpcGossip[18958]["Text491"] = tTheSixthHouse_Text[18958]["Text491"]
tNpcGossip[18958]["tOption4-9"] = {471}

------------------------------------------------itemtype模块--------------------------------------------------
------------------------------------------------道具部分-------------------------------------------------------
-- 3008100	6级房屋建材包
tItem[3008100] = tItem[3008100] or {}
tItem[3008100]["Function"] = function(nItemId,sItemName)
	TheSixthHouse_UseTools(nItemId)
end

------------------------------------------------积分买的礼包部分-------------------------------------------------------
-- 3008101	各种积分换建材
tItem[3008101] = tItem[3008101] or {}
tItem[3008101]["Function"] = function(nItemId,sItemName)
	TheSixthHouse_UseBagPack(nItemId)
end

-- 3008102	黄金联赛签到包换5级
tItem[3008102] = tItem[3008102] or {}
tItem[3008102]["Function"] = function(nItemId,sItemName)
	TheSixthHouse_UseSignPack(nItemId)
end

------------------------------------------------种植区 种子部分-------------------------------------------------------
-- 3008136	王母蟠桃种子
tItem[3008136] = tItem[3008136] or {}
tItem[3008136]["Function"] = function(nItemId,sItemName)
	TheSixthHouse_UseSeed(nItemId)
end
tItem[3008137] =tItem[3008136]		-- 3008137	凝神香果种子
tItem[3008138] =tItem[3008136] 		-- 3008138	灵山仙草种子
tItem[3008139] =tItem[3008136]		-- 3008139	辰星花种子
tItem[3008140] =tItem[3008136] 		-- 3008140	通元神果种子
tItem[3008141] =tItem[3008136]		-- 3008141	护心草种子
tItem[3008142] =tItem[3008136] 		-- 3008142	上品灵山仙草种子
tItem[3008143] =tItem[3008136]		-- 3008143	绝品灵山仙草种子
tItem[3008144] =tItem[3008136] 		-- 3008144	八宝护气果种子
tItem[3008145] =tItem[3008136] 		-- 3008145	闭月海棠种子

-- 3008521	精卫宠物蛋种子
tItem[3008521] = tItem[3008521] or {}
tItem[3008521]["Function"] = function(nItemId,sItemName)
	TheSixthHouse_UseSeed(nItemId)
end
tItem[3008522] =tItem[3008521]		-- 3008522	熊猫宠物蛋种子
tItem[3008523] =tItem[3008521] 	-- 3008523	秘色狐宠物蛋种子
tItem[3008524] =tItem[3008521]		-- 3008524	青龙宠物蛋种子
tItem[3008525] =tItem[3008521] 	-- 3008525	穷奇宠物蛋种子
tItem[3008526] =tItem[3008521]		-- 3008526	辟水金睛兽宠物蛋种子
tItem[3008527] =tItem[3008521] 	-- 3008527	火麒麟宠物蛋种子
tItem[3008528] =tItem[3008521]		-- 3008528	火狱狂狼宠物蛋种子

--------------------------------------宠物蛋--------------------------------------------------
-- 3008519	萌宠灵晶
tItem[3008519] = tItem[3008519] or {}
tItem[3008519]["Function"] = function(nItemId,sItemName)
	TheSixthHouse_UseEggScrap(nItemId)
end
tItem[3008520] = tItem[3008519]		-- 3008520	神兽灵晶


-- 3008529	精卫宠物蛋
tItem[3008529] = tItem[3008529] or {}
tItem[3008529]["Function"] = function(nItemId,sItemName)
	TheSixthHouse_UseEgg(nItemId)
end
tItem[3008530] =tItem[3008529]		-- 3008530	熊猫宠物蛋
tItem[3008679] =tItem[3008529] 	-- 3008679	秘色狐宠物蛋
tItem[3008680] =tItem[3008529]		-- 3008680	青龙宠物蛋
tItem[3008681] =tItem[3008529] 	-- 3008681	穷奇宠物蛋
tItem[3008682] =tItem[3008529]		-- 3008682	辟水金睛兽宠物蛋
tItem[3008683] =tItem[3008529] 	-- 3008683	火麒麟宠物蛋
tItem[3008684] =tItem[3008529] 	-- 3008684	火狱狂狼宠物蛋

---------------------收获产物--------------------------------------------------
-- 3008512	凝神香果
tItem[3008512] = tItem[3008512] or {}
tItem[3008512]["Function"] = function(nItemId,sItemName)
	TheSixthHouse_UseGrass(nItemId,1)
end

-- 3008514	辰星花
tItem[3008514] = tItem[3008514] or {}
tItem[3008514]["Function"] = function(nItemId,sItemName)
	TheSixthHouse_UseGrass(nItemId,2)
end

-- 3008515	通元神果
tItem[3008515] = tItem[3008515] or {}
tItem[3008515]["Function"] = function(nItemId,sItemName)
	TheSixthHouse_UseGrass(nItemId,3)
end

-- 3008513	良品灵山仙草
tItem[3008513] = tItem[3008513] or {}
tItem[3008513]["Function"] = function(nItemId,sItemName)
	TheSixthHouse_UseGrass(nItemId,4)
end

-- 3008516	上品灵山仙草
tItem[3008516] = tItem[3008516] or {}
tItem[3008516]["Function"] = function(nItemId,sItemName)
	TheSixthHouse_UseGrass(nItemId,5)
end

-- 3008517	绝品灵山仙草
tItem[3008517] = tItem[3008517] or {}
tItem[3008517]["Function"] = function(nItemId,sItemName)
	TheSixthHouse_UseGrass(nItemId,6)
end

-- 3008518	闭月海棠
tItem[3008518] = tItem[3008518] or {}
tItem[3008518]["Function"] = function(nItemId,sItemName)
	TheSixthHouse_UseGrass(nItemId,7)
end

---------------------使用家具--------------------------------------------------
--使用宠物家具
--3008685   精卫仙灵家具
tItem[3008685] = tItem[3008685] or {}
tItem[3008685]["Function"] = function(nItemId,sItemName)
	TheSixthHouse_UseFurniture(nItemId,1)
end
tItem[3008686] = tItem[3008685] 		--  3008686	熊猫神侍家具
tItem[3008687] = tItem[3008685]		--	 3008687	炫彩秘色狐家具
tItem[3008688] = tItem[3008685] 		--  3008688	威武青龙家具
tItem[3008689] = tItem[3008685]		--	 3008689	威武穷奇家具
tItem[3008690] = tItem[3008685] 		--  3008690	威武辟水金睛兽家具 
tItem[3008691] = tItem[3008685]		--	 3008691	威武火麒麟家具
tItem[3008692] = tItem[3008685] 		--  3008692	威武火狱狂狼家具

--726119  -- 金丝楠木书架
tItem[726119] = tItem[726119] or {}
tItem[726119]["Function"] = function(nItemId,sItemName)
	TheSixthHouse_UseFurniture(nItemId,2)
end

for i = 726119,726150 do
	tItem[i] = tItem[726119] 
end

---------------------宠物触发--------------------------------------------------
-- 6级房屋宠物添加被杀触发
-- 7941		CelestialCrane
tMonster[7941] = tMonster[7941] or {}
tMonster[7941]["tFunction"] = tMonster[7941]["tFunction"] or {}
table.insert(tMonster[7941]["tFunction"],TheSixthHouse_KillPet)
-- 7942	ImmortalCrane
tMonster[7942] = tMonster[7942] or {}
tMonster[7942]["tFunction"] = tMonster[7942]["tFunction"] or {}
table.insert(tMonster[7942]["tFunction"],TheSixthHouse_KillPet)
-- 7944	GiantPanda
tMonster[7944] = tMonster[7944] or {}
tMonster[7944]["tFunction"] = tMonster[7944]["tFunction"] or {}
table.insert(tMonster[7944]["tFunction"],TheSixthHouse_KillPet)
-- 7945	DivinePanda
tMonster[7945] = tMonster[7945] or {}
tMonster[7945]["tFunction"] = tMonster[7945]["tFunction"] or {}
table.insert(tMonster[7945]["tFunction"],TheSixthHouse_KillPet)
-- 7947	StarryFox
tMonster[7947] = tMonster[7947] or {}
tMonster[7947]["tFunction"] = tMonster[7947]["tFunction"] or {}
table.insert(tMonster[7947]["tFunction"],TheSixthHouse_KillPet)
-- 7948	RadiantFox
tMonster[7948] = tMonster[7948] or {}
tMonster[7948]["tFunction"] = tMonster[7948]["tFunction"] or {}
table.insert(tMonster[7948]["tFunction"],TheSixthHouse_KillPet)
-- 7950	WiseGreenDragon
tMonster[7950] = tMonster[7950] or {}
tMonster[7950]["tFunction"] = tMonster[7950]["tFunction"] or {}
table.insert(tMonster[7950]["tFunction"],TheSixthHouse_KillPet)
-- 7951		MightyGreenDragon
tMonster[7951] = tMonster[7951] or {}
tMonster[7951]["tFunction"] = tMonster[7951]["tFunction"] or {}
table.insert(tMonster[7951]["tFunction"],TheSixthHouse_KillPet)
-- 7953	WiseViolentBeast
tMonster[7953] = tMonster[7953] or {}
tMonster[7953]["tFunction"] = tMonster[7953]["tFunction"] or {}
table.insert(tMonster[7953]["tFunction"],TheSixthHouse_KillPet)
-- 7954	MightyViolentBeast
tMonster[7954] = tMonster[7954] or {}
tMonster[7954]["tFunction"] = tMonster[7954]["tFunction"] or {}
table.insert(tMonster[7954]["tFunction"],TheSixthHouse_KillPet)
-- 7956	WiseEvilPiercer
tMonster[7956] = tMonster[7956] or {}
tMonster[7956]["tFunction"] = tMonster[7956]["tFunction"] or {}
table.insert(tMonster[7956]["tFunction"],TheSixthHouse_KillPet)
-- 7957	MightyEvilPiercer
tMonster[7957] = tMonster[7957] or {}
tMonster[7957]["tFunction"] = tMonster[7957]["tFunction"] or {}
table.insert(tMonster[7957]["tFunction"],TheSixthHouse_KillPet)
-- 7959	WiseFireKylin
tMonster[7959] = tMonster[7959] or {}
tMonster[7959]["tFunction"] = tMonster[7959]["tFunction"] or {}
table.insert(tMonster[7959]["tFunction"],TheSixthHouse_KillPet)
-- 7960	MightyFireKylin
tMonster[7960] = tMonster[7960] or {}
tMonster[7960]["tFunction"] = tMonster[7960]["tFunction"] or {}
table.insert(tMonster[7960]["tFunction"],TheSixthHouse_KillPet)
-- 7962	WiseInfernalWolf
tMonster[7962] = tMonster[7962] or {}
tMonster[7962]["tFunction"] = tMonster[7962]["tFunction"] or {}
table.insert(tMonster[7962]["tFunction"],TheSixthHouse_KillPet)
-- 7963	MightyInfernalWolf
tMonster[7963] = tMonster[7963] or {}
tMonster[7963]["tFunction"] = tMonster[7963]["tFunction"] or {}
table.insert(tMonster[7963]["tFunction"],TheSixthHouse_KillPet)

