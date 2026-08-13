------------------------------------------------------------------------------------
--Name:		[简体征服][活动脚本]帮大佬砍价
--Purpose:	帮大佬砍价
--Creator: 	严振飞
--Created:	2017/06/22
------------------------------------------------------------------------------------

-- 命名前缀
-- PlayerBargain_

-- 掩码说明
--	stc(163,4)		-- 背包信
--	stc(163,5)		-- 砍价次数
--	stc(163,6)		-- 是否取消二次确认
--	stc(163,56)		-- 玩家个人每天活动砍价邮件上限

-- 动态存储表说明
-- 动态存储表
-- （每日前20名帮派记录）
-- 51618	data1~~data5		(1~6号)商品的当前售价
-- 			datastr1~~datastr5	(1~6号)商品的库存
-- 51619	data1~~data5		(7~11号)商品的当前售价
-- 			datastr1~~datastr5	(7~11号)商品的库存

--砍价全服公告
--51952	data0		全服砍价成功总次
--51952	data1		全服公告次数

-- 隔天重置开关
-- 51952	data2				重置成功



-- LOG-id:12000772

------------------------------------------------------------------------------------
-- 砍价成功玩家临时表
	-- UserId 		-- 玩家的ID
	-- Value 		-- 玩家剩余可获得邮件次数
	-- AllValue 	-- 玩家当日可获得邮件次数
	-- Mail 		-- 获得邮件总次数
local tPlayerBargain_CutPlayer = {}

-----------------------------------------
--STC掩码表
local tPlayerBargain_Stc = {}
	-- 砍价次数
	tPlayerBargain_Stc[1] = {}
	tPlayerBargain_Stc[1]["EventData"] = 163
	tPlayerBargain_Stc[1]["TypeData"] = 05
	-- 仅个位和十位作为砍价次数，百位为初始化标识
	tPlayerBargain_Stc[1]["CutSum"] = 10
	-- 初始话标识位
	tPlayerBargain_Stc[1]["MarkBit"] = 100
	-- 百位记录，砍价总次数（阶段：如正气令使用增加10砍价次数，则百位+1）
	tPlayerBargain_Stc[1]["AddCutNum"] = 3

	-- 二进制stc
	tPlayerBargain_Stc[2] = {}
	tPlayerBargain_Stc[2]["EventData"] = 163
	tPlayerBargain_Stc[2]["TypeData"] = 06
	tPlayerBargain_Stc[2]["BinValua"] = {}
	tPlayerBargain_Stc[2]["BinValua"][1] = 1 -- 是否取消二次确认
	tPlayerBargain_Stc[2]["BinValua"][2] = 2 -- 使用正气令获得砍价次数
	tPlayerBargain_Stc[2]["BinValua"][3] = 4 -- 使用显著功勋礼包获得砍价次数

	-- 玩家个人每天活动砍价邮件上限
	tPlayerBargain_Stc[3] = {}
	tPlayerBargain_Stc[3]["EventData"] = 163
	tPlayerBargain_Stc[3]["TypeData"] = 56
	tPlayerBargain_Stc[3]["Value"] = 30

------------------------------------------------------------------------------------
-- 基础数据
local tPlayerBargain_Data = {}
	-- 等级要求
	tPlayerBargain_Data["Mete"] = 0
	tPlayerBargain_Data["Level"] = 80
	-- 促销返利礼包数
	tPlayerBargain_Data["BacStrength"] = 1
	-- 砍价减少天石基数
	tPlayerBargain_Data["SubPrice"] = 1
	-- 砍价增加库存基数
	tPlayerBargain_Data["AddStock"] = 1
	-- 正气令和显著功勋礼包增加的砍价次数
	tPlayerBargain_Data["AddCutNum"] = 10

	-- 批量购买输入框数据
	tPlayerBargain_Data["EditLen"] = 10
	
	-- 主NPC寻路坐标
	tPlayerBargain_Data["AutoFind"] = {}
	tPlayerBargain_Data["AutoFind"][1] = {1002,368,452,0}
	tPlayerBargain_Data["AutoFind"][2] = {1002,381,452,22431}

	-- -- 光效
	-- tPlayerBargain_Data["Effect"] = {}
	-- tPlayerBargain_Data["Effect"]["CutFail"] = "BodyDisapear"
	-- tPlayerBargain_Data["Effect"]["CutSuccess"] = "task051"
	-- tPlayerBargain_Data["Effect"]["BuySuccess"] = "angelwing"
	
	-- 邮件数据
	tPlayerBargain_Data["Mail"] = {}
	tPlayerBargain_Data["Mail"]["ActionId"] = 567595
	tPlayerBargain_Data["Mail"]["ExistDay"] = 30

	-- 重置开关
	tPlayerBargain_Data["Reset"] = {51952,2}

	
-----------------------------------------
-- 基础数据
local tPlayerBargain_CutBroad = {}
	tPlayerBargain_CutBroad["Num"] = 50 				-- 每50次出一次公告
	tPlayerBargain_CutBroad["CutAllNum"] = {51952,0} 	-- 全部砍价成功次数
	tPlayerBargain_CutBroad["CutBroadNum"] = {51952,1} 	-- 出全服公告次数


-----------------------------------------
--NPC对应打折商品数据
local tPlayerBargain_Npc2Data = {}
	-- 晶莹星陨石促销包
	tPlayerBargain_Npc2Data[1] = {}
	tPlayerBargain_Npc2Data[1]["Npc"] = 22432	-- 对应NPC
	tPlayerBargain_Npc2Data[1]["GlobId"] = {51618,0}		-- 动态存储表
	tPlayerBargain_Npc2Data[1]["Price"] = {399,288}		-- 售价阶段
	tPlayerBargain_Npc2Data[1]["ActMap"] = {1002,381,449}	-- 市场坐标
	tPlayerBargain_Npc2Data[1]["AftMap"] = {5000,100,100}	-- 集中营
	tPlayerBargain_Npc2Data[1]["ItemId"] = 3306969			-- 对应促销物品
	tPlayerBargain_Npc2Data[1]["IniStock"] = 100 			-- 默认库存

	
	-- 璀璨星陨石促销包
	tPlayerBargain_Npc2Data[2] = {}
	tPlayerBargain_Npc2Data[2]["Npc"] = 22433	-- 对应NPC
	tPlayerBargain_Npc2Data[2]["GlobId"] = {51618,1}		-- 动态存储表
	tPlayerBargain_Npc2Data[2]["Price"] = {3999,2888}	-- 售价阶段
	tPlayerBargain_Npc2Data[2]["ActMap"] = {1002,381,445}	-- 市场坐标
	tPlayerBargain_Npc2Data[2]["AftMap"] = {5000,100,100}	-- 集中营
	tPlayerBargain_Npc2Data[2]["ItemId"] = 3306970			-- 对应促销物品
	tPlayerBargain_Npc2Data[2]["IniStock"] = 30 			-- 默认库存

	-- 赤炼石+6促销包
	tPlayerBargain_Npc2Data[3] = {}
	tPlayerBargain_Npc2Data[3]["Npc"] = 22434	-- 对应NPC
	tPlayerBargain_Npc2Data[3]["GlobId"] = {51618,2}		-- 动态存储表
	tPlayerBargain_Npc2Data[3]["Price"] = {1788,1558}	-- 售价阶段
	tPlayerBargain_Npc2Data[3]["ActMap"] = {1002,381,441}	-- 市场坐标
	tPlayerBargain_Npc2Data[3]["AftMap"] = {5000,100,100}	-- 集中营
	tPlayerBargain_Npc2Data[3]["ItemId"] = 3306971			-- 对应促销物品
	tPlayerBargain_Npc2Data[3]["IniStock"] = 50 			-- 默认库存

	-- 龙珠卷促销包
	tPlayerBargain_Npc2Data[4] = {}
	tPlayerBargain_Npc2Data[4]["Npc"] = 22435	-- 对应NPC
	tPlayerBargain_Npc2Data[4]["GlobId"] = {51618,3}		-- 动态存储表
	tPlayerBargain_Npc2Data[4]["Price"] = {550,450}		-- 售价阶段
	tPlayerBargain_Npc2Data[4]["ActMap"] = {1002,376,449}	-- 市场坐标
	tPlayerBargain_Npc2Data[4]["AftMap"] = {5000,100,100}	-- 集中营
	tPlayerBargain_Npc2Data[4]["ItemId"] = 3306972			-- 对应促销物品
	tPlayerBargain_Npc2Data[4]["IniStock"] = 100 			-- 默认库存

	-- 超大固化石促销包
	tPlayerBargain_Npc2Data[5] = {}
	tPlayerBargain_Npc2Data[5]["Npc"] = 22436	-- 对应NPC
	tPlayerBargain_Npc2Data[5]["GlobId"] = {51618,4}		-- 动态存储表
	tPlayerBargain_Npc2Data[5]["Price"] = {3888,3488}	-- 售价阶段
	tPlayerBargain_Npc2Data[5]["ActMap"] = {1002,376,445}	-- 市场坐标
	tPlayerBargain_Npc2Data[5]["AftMap"] = {5000,100,100}	-- 集中营
	tPlayerBargain_Npc2Data[5]["ItemId"] = 3306973			-- 对应促销物品
	tPlayerBargain_Npc2Data[5]["IniStock"] = 30 			-- 默认库存

	-- 究极通神促销包
	tPlayerBargain_Npc2Data[6] = {}
	tPlayerBargain_Npc2Data[6]["Npc"] = 22437	-- 对应NPC
	tPlayerBargain_Npc2Data[6]["GlobId"] = {51618,5}		-- 动态存储表
	tPlayerBargain_Npc2Data[6]["Price"] = {158,88}		-- 售价阶段
	tPlayerBargain_Npc2Data[6]["ActMap"] = {1002,376,441}	-- 市场坐标
	tPlayerBargain_Npc2Data[6]["AftMap"] = {5000,100,100}	-- 集中营
	tPlayerBargain_Npc2Data[6]["ItemId"] = 3306974			-- 对应促销物品
	tPlayerBargain_Npc2Data[6]["IniStock"] = 100 			-- 默认库存

	-- 自创武功促销包
	tPlayerBargain_Npc2Data[7] = {}
	tPlayerBargain_Npc2Data[7]["Npc"] = 22438	-- 对应NPC
	tPlayerBargain_Npc2Data[7]["GlobId"] = {51619,0}		-- 动态存储表
	tPlayerBargain_Npc2Data[7]["Price"] = {328,258}		-- 售价阶段
	tPlayerBargain_Npc2Data[7]["ActMap"] = {1002,371,449}	-- 市场坐标
	tPlayerBargain_Npc2Data[7]["AftMap"] = {5000,100,100}	-- 集中营
	tPlayerBargain_Npc2Data[7]["ItemId"] = 3306975			-- 对应促销物品
	tPlayerBargain_Npc2Data[7]["IniStock"] = 100 			-- 默认库存

	-- 10000气力值促销包
	tPlayerBargain_Npc2Data[8] = {}
	tPlayerBargain_Npc2Data[8]["Npc"] = 22439	-- 对应NPC
	tPlayerBargain_Npc2Data[8]["GlobId"] = {51619,1}		-- 动态存储表
	tPlayerBargain_Npc2Data[8]["Price"] = {1088,888}		-- 售价阶段
	tPlayerBargain_Npc2Data[8]["ActMap"] = {1002,371,445}	-- 市场坐标
	tPlayerBargain_Npc2Data[8]["AftMap"] = {5000,100,100}	-- 集中营
	tPlayerBargain_Npc2Data[8]["ItemId"] = 3306976			-- 对应促销物品
	tPlayerBargain_Npc2Data[8]["IniStock"] = 100 			-- 默认库存

	-- 金刚尖钻促销包
	tPlayerBargain_Npc2Data[9] = {}
	tPlayerBargain_Npc2Data[9]["Npc"] = 22440	-- 对应NPC
	tPlayerBargain_Npc2Data[9]["GlobId"] = {51619,2}		-- 动态存储表
	tPlayerBargain_Npc2Data[9]["Price"] = {1488,1258}		-- 售价阶段
	tPlayerBargain_Npc2Data[9]["ActMap"] = {1002,371,441}	-- 市场坐标
	tPlayerBargain_Npc2Data[9]["AftMap"] = {5000,100,100}	-- 集中营
	tPlayerBargain_Npc2Data[9]["ItemId"] = 3306977			-- 对应促销物品
	tPlayerBargain_Npc2Data[9]["IniStock"] = 100 			-- 默认库存

	-- 桃源灵玉促销包
	tPlayerBargain_Npc2Data[10] = {}
	tPlayerBargain_Npc2Data[10]["Npc"] = 22441	-- 对应NPC
	tPlayerBargain_Npc2Data[10]["GlobId"] = {51619,3}			-- 动态存储表
	tPlayerBargain_Npc2Data[10]["Price"] = {888,798}		-- 售价阶段
	tPlayerBargain_Npc2Data[10]["ActMap"] = {1002,366,445}		-- 市场坐标
	tPlayerBargain_Npc2Data[10]["AftMap"] = {5000,100,100}		-- 集中营
	tPlayerBargain_Npc2Data[10]["ItemId"] = 3306995				-- 对应促销物品
	tPlayerBargain_Npc2Data[10]["IniStock"] = 80 				-- 默认库存

	-- 七星宝钻促销包
	tPlayerBargain_Npc2Data[11] = {}
	tPlayerBargain_Npc2Data[11]["Npc"] = 22442	-- 对应NPC
	tPlayerBargain_Npc2Data[11]["GlobId"] = {51619,4}			-- 动态存储表
	tPlayerBargain_Npc2Data[11]["Price"] = {558,458}		-- 售价阶段
	tPlayerBargain_Npc2Data[11]["ActMap"] = {1002,366,441}		-- 市场坐标
	tPlayerBargain_Npc2Data[11]["AftMap"] = {5000,100,100}		-- 集中营
	tPlayerBargain_Npc2Data[11]["ItemId"] = 3306996				-- 对应促销物品
	tPlayerBargain_Npc2Data[11]["IniStock"] = 100 				-- 默认库存
-----------------------------------------
local tPlayerBargain_WareItem = {}
	-- 晶莹星陨石促销包
	tPlayerBargain_WareItem[1] = {}
	tPlayerBargain_WareItem[1]["NeedSpace"] = 1
	tPlayerBargain_WareItem[1]["RewardItem"] = {}
	tPlayerBargain_WareItem[1]["RewardItem"][1] = {}
	tPlayerBargain_WareItem[1]["RewardItem"][1]["Id"] = 3306969 -- 晶莹星陨石促销包
	tPlayerBargain_WareItem[1]["RewardItem"][1]["Attr"] = "0 1"
	tPlayerBargain_WareItem[1]["Log"] = "%d,0,0,0,12000772,2,3306969,%d"
	
	-- 璀璨星陨石促销包
	tPlayerBargain_WareItem[2] = {}
	tPlayerBargain_WareItem[2]["NeedSpace"] = 1
	tPlayerBargain_WareItem[2]["RewardItem"] = {}
	tPlayerBargain_WareItem[2]["RewardItem"][1] = {}
	tPlayerBargain_WareItem[2]["RewardItem"][1]["Id"] = 3306970 -- 璀璨星陨石促销包
	tPlayerBargain_WareItem[2]["RewardItem"][1]["Attr"] = "0 1"
	tPlayerBargain_WareItem[2]["Log"] = "%d,0,0,0,12000772,2,3306970,%d"

	-- 赤炼石+6促销包
	tPlayerBargain_WareItem[3] = {}
	tPlayerBargain_WareItem[3]["NeedSpace"] = 1
	tPlayerBargain_WareItem[3]["RewardItem"] = {}
	tPlayerBargain_WareItem[3]["RewardItem"][1] = {}
	tPlayerBargain_WareItem[3]["RewardItem"][1]["Id"] = 3306971 -- 赤炼石+6促销包
	tPlayerBargain_WareItem[3]["RewardItem"][1]["Attr"] = "0 1"
	tPlayerBargain_WareItem[3]["Log"] = "%d,0,0,0,12000772,2,3306971,%d"
	
	-- 龙珠卷促销包
	tPlayerBargain_WareItem[4] = {}
	tPlayerBargain_WareItem[4]["NeedSpace"] = 1
	tPlayerBargain_WareItem[4]["RewardItem"] = {}
	tPlayerBargain_WareItem[4]["RewardItem"][1] = {}
	tPlayerBargain_WareItem[4]["RewardItem"][1]["Id"] = 3306972 -- 龙珠卷促销包
	tPlayerBargain_WareItem[4]["RewardItem"][1]["Attr"] = "0 1"
	tPlayerBargain_WareItem[4]["Log"] = "%d,0,0,0,12000772,2,3306972,%d"
	
	-- 超大固化石促销包
	tPlayerBargain_WareItem[5] = {}
	tPlayerBargain_WareItem[5]["NeedSpace"] = 1
	tPlayerBargain_WareItem[5]["RewardItem"] = {}
	tPlayerBargain_WareItem[5]["RewardItem"][1] = {}
	tPlayerBargain_WareItem[5]["RewardItem"][1]["Id"] = 3306973 -- 超大固化石促销包
	tPlayerBargain_WareItem[5]["RewardItem"][1]["Attr"] = "0 1"
	tPlayerBargain_WareItem[5]["Log"] = "%d,0,0,0,12000772,2,3306973,%d"

	-- 究极通神促销包
	tPlayerBargain_WareItem[6] = {}
	tPlayerBargain_WareItem[6]["NeedSpace"] = 1
	tPlayerBargain_WareItem[6]["RewardItem"] = {}
	tPlayerBargain_WareItem[6]["RewardItem"][1] = {}
	tPlayerBargain_WareItem[6]["RewardItem"][1]["Id"] = 3306974 -- 究极通神促销包
	tPlayerBargain_WareItem[6]["RewardItem"][1]["Attr"] = "0 1"
	tPlayerBargain_WareItem[6]["Log"] = "%d,0,0,0,12000772,2,3306974,%d"
	
	-- 自创武功促销包
	tPlayerBargain_WareItem[7] = {}
	tPlayerBargain_WareItem[7]["NeedSpace"] = 1
	tPlayerBargain_WareItem[7]["RewardItem"] = {}
	tPlayerBargain_WareItem[7]["RewardItem"][1] = {}
	tPlayerBargain_WareItem[7]["RewardItem"][1]["Id"] = 3306975 -- 自创武功促销包
	tPlayerBargain_WareItem[7]["RewardItem"][1]["Attr"] = "0 1"
	tPlayerBargain_WareItem[7]["Log"] = "%d,0,0,0,12000772,2,3306975,%d"
	
	-- 10000气力值促销包
	tPlayerBargain_WareItem[8] = {}
	tPlayerBargain_WareItem[8]["NeedSpace"] = 1
	tPlayerBargain_WareItem[8]["RewardItem"] = {}
	tPlayerBargain_WareItem[8]["RewardItem"][1] = {}
	tPlayerBargain_WareItem[8]["RewardItem"][1]["Id"] = 3306976 -- 1000气力值促销包
	tPlayerBargain_WareItem[8]["RewardItem"][1]["Attr"] = "0 1"
	tPlayerBargain_WareItem[8]["Log"] = "%d,0,0,0,12000772,2,3306976,%d"

	-- 金刚尖钻促销包
	tPlayerBargain_WareItem[9] = {}
	tPlayerBargain_WareItem[9]["NeedSpace"] = 1
	tPlayerBargain_WareItem[9]["RewardItem"] = {}
	tPlayerBargain_WareItem[9]["RewardItem"][1] = {}
	tPlayerBargain_WareItem[9]["RewardItem"][1]["Id"] = 3306977 -- 玫瑰风暴促销包
	tPlayerBargain_WareItem[9]["RewardItem"][1]["Attr"] = "0 1"
	tPlayerBargain_WareItem[9]["Log"] = "%d,0,0,0,12000772,2,3306977,%d"

	-- 桃源灵玉促销包
	tPlayerBargain_WareItem[10] = {}
	tPlayerBargain_WareItem[10]["NeedSpace"] = 1
	tPlayerBargain_WareItem[10]["RewardItem"] = {}
	tPlayerBargain_WareItem[10]["RewardItem"][1] = {}
	tPlayerBargain_WareItem[10]["RewardItem"][1]["Id"] = 3306995 -- 桃源灵玉促销包
	tPlayerBargain_WareItem[10]["RewardItem"][1]["Attr"] = "0 1"
	tPlayerBargain_WareItem[10]["Log"] = "%d,0,0,0,12000772,2,3306995,%d"

	-- 七星宝钻促销包
	tPlayerBargain_WareItem[11] = {}
	tPlayerBargain_WareItem[11]["NeedSpace"] = 1
	tPlayerBargain_WareItem[11]["RewardItem"] = {}
	tPlayerBargain_WareItem[11]["RewardItem"][1] = {}
	tPlayerBargain_WareItem[11]["RewardItem"][1]["Id"] = 3306996 -- 七星宝钻促销包
	tPlayerBargain_WareItem[11]["RewardItem"][1]["Attr"] = "0 1"
	tPlayerBargain_WareItem[11]["Log"] = "%d,0,0,0,12000772,2,3306996,%d"
-----------------------------------------
--礼包
--赤炼石+5包:第一次打开
local tPlayerBargain_Reward={}
	tPlayerBargain_Reward[3306957]={}
	tPlayerBargain_Reward[3306957]["DecEMoney"]=599
	tPlayerBargain_Reward[3306957]["DeleteItem"] = {}
	tPlayerBargain_Reward[3306957]["DeleteItem"][1] = {}
	tPlayerBargain_Reward[3306957]["DeleteItem"][1]["Id"] = 3306957
	tPlayerBargain_Reward[3306957]["RewardItem"] = {}
	tPlayerBargain_Reward[3306957]["RewardItem"][1] = {}
	tPlayerBargain_Reward[3306957]["RewardItem"][1]["Id"] = 730005
	tPlayerBargain_Reward[3306957]["RewardItem"][1]["Attr"] ="0 1"
	tPlayerBargain_Reward[3306957]["RewardItem"][2] = {}
	tPlayerBargain_Reward[3306957]["RewardItem"][2]["Id"] = 3306958
	tPlayerBargain_Reward[3306957]["RewardItem"][2]["Attr"] ="0 1"
	tPlayerBargain_Reward[3306957]["LogId"]=12000772
	tPlayerBargain_Reward[3306957]["EmoneyLog"]="350	20170	599	599	1	"
	
--赤炼石+5包:第二次打开
	tPlayerBargain_Reward[3306958]={}
	tPlayerBargain_Reward[3306958]["DecEMoney"]=579
	tPlayerBargain_Reward[3306958]["DeleteItem"] = {}
	tPlayerBargain_Reward[3306958]["DeleteItem"][1] = {}
	tPlayerBargain_Reward[3306958]["DeleteItem"][1]["Id"] = 3306958
	tPlayerBargain_Reward[3306958]["RewardItem"] = {}
	tPlayerBargain_Reward[3306958]["RewardItem"][1] = {}
	tPlayerBargain_Reward[3306958]["RewardItem"][1]["Id"] = 730005
	tPlayerBargain_Reward[3306958]["RewardItem"][1]["Attr"] ="0 1"
	tPlayerBargain_Reward[3306958]["RewardItem"][2] = {}
	tPlayerBargain_Reward[3306958]["RewardItem"][2]["Id"] = 3306959
	tPlayerBargain_Reward[3306958]["RewardItem"][2]["Attr"] ="0 1"
	tPlayerBargain_Reward[3306958]["LogId"]=12000772
	tPlayerBargain_Reward[3306958]["EmoneyLog"]="350	20171	579	579	1	"
	
--赤炼石+5包:第三次打开
	tPlayerBargain_Reward[3306959]={}
	tPlayerBargain_Reward[3306959]["DecEMoney"]=559
	tPlayerBargain_Reward[3306959]["DeleteItem"] = {}
	tPlayerBargain_Reward[3306959]["DeleteItem"][1] = {}
	tPlayerBargain_Reward[3306959]["DeleteItem"][1]["Id"] = 3306959
	tPlayerBargain_Reward[3306959]["RewardItem"] = {}
	tPlayerBargain_Reward[3306959]["RewardItem"][1] = {}
	tPlayerBargain_Reward[3306959]["RewardItem"][1]["Id"] = 730005
	tPlayerBargain_Reward[3306959]["RewardItem"][1]["Attr"] ="0 1"
	tPlayerBargain_Reward[3306959]["RewardItem"][2] = {}
	tPlayerBargain_Reward[3306959]["RewardItem"][2]["Id"] = 3306960
	tPlayerBargain_Reward[3306959]["RewardItem"][2]["Attr"] ="0 1"
	tPlayerBargain_Reward[3306959]["LogId"]=12000772
	tPlayerBargain_Reward[3306959]["EmoneyLog"]="350	20172	559	559	1	"
	
--赤炼石+5包:第四次打开
	tPlayerBargain_Reward[3306960]={}
	tPlayerBargain_Reward[3306960]["DecEMoney"]=539
	tPlayerBargain_Reward[3306960]["DeleteItem"] = {}
	tPlayerBargain_Reward[3306960]["DeleteItem"][1] = {}
	tPlayerBargain_Reward[3306960]["DeleteItem"][1]["Id"] = 3306960
	tPlayerBargain_Reward[3306960]["RewardItem"] = {}
	tPlayerBargain_Reward[3306960]["RewardItem"][1] = {}
	tPlayerBargain_Reward[3306960]["RewardItem"][1]["Id"] = 730005
	tPlayerBargain_Reward[3306960]["RewardItem"][1]["Attr"] ="0 1"
	tPlayerBargain_Reward[3306960]["RewardItem"][2] = {}
	tPlayerBargain_Reward[3306960]["RewardItem"][2]["Id"] = 3306961
	tPlayerBargain_Reward[3306960]["RewardItem"][2]["Attr"] ="0 1"
	tPlayerBargain_Reward[3306960]["LogId"]=12000772
	tPlayerBargain_Reward[3306960]["EmoneyLog"]="350	20173	539	539	1	"
	
--赤炼石+5包:第五次打开
	tPlayerBargain_Reward[3306961]={}
	tPlayerBargain_Reward[3306961]["DecEMoney"]=519
	tPlayerBargain_Reward[3306961]["DeleteItem"] = {}
	tPlayerBargain_Reward[3306961]["DeleteItem"][1] = {}
	tPlayerBargain_Reward[3306961]["DeleteItem"][1]["Id"] = 3306961
	tPlayerBargain_Reward[3306961]["RewardItem"] = {}
	tPlayerBargain_Reward[3306961]["RewardItem"][1] = {}
	tPlayerBargain_Reward[3306961]["RewardItem"][1]["Id"] = 730005
	tPlayerBargain_Reward[3306961]["RewardItem"][1]["Attr"] ="0 1"
	tPlayerBargain_Reward[3306961]["LogId"]=12000772
	tPlayerBargain_Reward[3306961]["EmoneyLog"]="350	20174	519	519	1	"
	
--赤炼石+8包:第一次打开
	tPlayerBargain_Reward[3306962]={}
	tPlayerBargain_Reward[3306962]["DecEMoney"]=13999
	tPlayerBargain_Reward[3306962]["DeleteItem"] = {}
	tPlayerBargain_Reward[3306962]["DeleteItem"][1] = {}
	tPlayerBargain_Reward[3306962]["DeleteItem"][1]["Id"] = 3306962
	tPlayerBargain_Reward[3306962]["RewardItem"] = {}
	tPlayerBargain_Reward[3306962]["RewardItem"][1] = {}
	tPlayerBargain_Reward[3306962]["RewardItem"][1]["Id"] = 730008
	tPlayerBargain_Reward[3306962]["RewardItem"][1]["Attr"] ="0 1"
	tPlayerBargain_Reward[3306962]["RewardItem"][2] = {}
	tPlayerBargain_Reward[3306962]["RewardItem"][2]["Id"] = 3306963
	tPlayerBargain_Reward[3306962]["RewardItem"][2]["Attr"] ="0 1"
	tPlayerBargain_Reward[3306962]["LogId"]=12000772
	tPlayerBargain_Reward[3306962]["EmoneyLog"]="350	20175	13999	13999	1	"
	
--赤炼石+8包:第二次打开
	tPlayerBargain_Reward[3306963]={}
	tPlayerBargain_Reward[3306963]["DecEMoney"]=13599
	tPlayerBargain_Reward[3306963]["DeleteItem"] = {}
	tPlayerBargain_Reward[3306963]["DeleteItem"][1] = {}
	tPlayerBargain_Reward[3306963]["DeleteItem"][1]["Id"] = 3306963
	tPlayerBargain_Reward[3306963]["RewardItem"] = {}
	tPlayerBargain_Reward[3306963]["RewardItem"][1] = {}
	tPlayerBargain_Reward[3306963]["RewardItem"][1]["Id"] = 730008
	tPlayerBargain_Reward[3306963]["RewardItem"][1]["Attr"] ="0 1"
	tPlayerBargain_Reward[3306963]["RewardItem"][2] = {}
	tPlayerBargain_Reward[3306963]["RewardItem"][2]["Id"] = 3306964
	tPlayerBargain_Reward[3306963]["RewardItem"][2]["Attr"] ="0 1"
	tPlayerBargain_Reward[3306963]["LogId"]=12000772
	tPlayerBargain_Reward[3306963]["EmoneyLog"]="350	20176	13599	13599	1	"
	
--赤炼石+8包:第三次打开
	tPlayerBargain_Reward[3306964]={}
	tPlayerBargain_Reward[3306964]["DecEMoney"]=12999
	tPlayerBargain_Reward[3306964]["DeleteItem"] = {}
	tPlayerBargain_Reward[3306964]["DeleteItem"][1] = {}
	tPlayerBargain_Reward[3306964]["DeleteItem"][1]["Id"] = 3306964
	tPlayerBargain_Reward[3306964]["RewardItem"] = {}
	tPlayerBargain_Reward[3306964]["RewardItem"][1] = {}
	tPlayerBargain_Reward[3306964]["RewardItem"][1]["Id"] = 730008
	tPlayerBargain_Reward[3306964]["RewardItem"][1]["Attr"] ="0 1"
	tPlayerBargain_Reward[3306964]["RewardItem"][2] = {}
	tPlayerBargain_Reward[3306964]["RewardItem"][2]["Id"] = 3306965
	tPlayerBargain_Reward[3306964]["RewardItem"][2]["Attr"] ="0 1"
	tPlayerBargain_Reward[3306964]["LogId"]=12000772
	tPlayerBargain_Reward[3306964]["EmoneyLog"]="350	20177	12999	12999	1	"

--赤炼石+8包:第四次打开
	tPlayerBargain_Reward[3306965]={}
	tPlayerBargain_Reward[3306965]["DecEMoney"]=12599
	tPlayerBargain_Reward[3306965]["DeleteItem"] = {}
	tPlayerBargain_Reward[3306965]["DeleteItem"][1] = {}
	tPlayerBargain_Reward[3306965]["DeleteItem"][1]["Id"] = 3306965
	tPlayerBargain_Reward[3306965]["RewardItem"] = {}
	tPlayerBargain_Reward[3306965]["RewardItem"][1] = {}
	tPlayerBargain_Reward[3306965]["RewardItem"][1]["Id"] = 730008
	tPlayerBargain_Reward[3306965]["RewardItem"][1]["Attr"] ="0 1"
	tPlayerBargain_Reward[3306965]["RewardItem"][2] = {}
	tPlayerBargain_Reward[3306965]["RewardItem"][2]["Id"] = 3306966
	tPlayerBargain_Reward[3306965]["RewardItem"][2]["Attr"] ="0 1"
	tPlayerBargain_Reward[3306965]["LogId"]=12000772
	tPlayerBargain_Reward[3306965]["EmoneyLog"]="350	20178	12599	12599	1	"

--赤炼石+8包:第五次打开
	tPlayerBargain_Reward[3306966]={}
	tPlayerBargain_Reward[3306966]["DecEMoney"]=11599
	tPlayerBargain_Reward[3306966]["DeleteItem"] = {}
	tPlayerBargain_Reward[3306966]["DeleteItem"][1] = {}
	tPlayerBargain_Reward[3306966]["DeleteItem"][1]["Id"] = 3306966
	tPlayerBargain_Reward[3306966]["RewardItem"] = {}
	tPlayerBargain_Reward[3306966]["RewardItem"][1] = {}
	tPlayerBargain_Reward[3306966]["RewardItem"][1]["Id"] = 730008
	tPlayerBargain_Reward[3306966]["RewardItem"][1]["Attr"] ="0 1"
	tPlayerBargain_Reward[3306966]["LogId"]=12000772
	tPlayerBargain_Reward[3306966]["EmoneyLog"]="350	20179	11599	11599	1	"
--------------------------------------------------------------------------------
local tPlayerBargain_ItemWard = {}
	-- 销售返利气力丸
	tPlayerBargain_ItemWard[3306968] = {}
	tPlayerBargain_ItemWard[3306968]["RewardStrengthValue"] = {}
	tPlayerBargain_ItemWard[3306968]["RewardStrengthValue"]["Value"] = 30
	tPlayerBargain_ItemWard[3306968]["Log"] = "0,0,3306968,%d,12000772,2,12,%d"
	tPlayerBargain_ItemWard[3306968]["Talk"] = tPlayerBargain_Text[3306968]["UseItem"]
	-- 晶莹星陨石促销包
	tPlayerBargain_ItemWard[3306969] = {}
	tPlayerBargain_ItemWard[3306969]["DeleteItem"] = {}
	tPlayerBargain_ItemWard[3306969]["DeleteItem"][1] = {}
	tPlayerBargain_ItemWard[3306969]["DeleteItem"][1]["Id"] = 3306969
	tPlayerBargain_ItemWard[3306969]["RewardItem"] = {}
	tPlayerBargain_ItemWard[3306969]["RewardItem"][1] = {}
	tPlayerBargain_ItemWard[3306969]["RewardItem"][1]["Id"] = 3009002 -- 晶莹星陨石
	tPlayerBargain_ItemWard[3306969]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tPlayerBargain_ItemWard[3306969]["Log"] = "0,0,3306969,1,12000772,2,3009002,1"
	-- 璀璨星陨石促销包
	tPlayerBargain_ItemWard[3306970] = {}
	tPlayerBargain_ItemWard[3306970]["DeleteItem"] = {}
	tPlayerBargain_ItemWard[3306970]["DeleteItem"][1] = {}
	tPlayerBargain_ItemWard[3306970]["DeleteItem"][1]["Id"] = 3306970
	tPlayerBargain_ItemWard[3306970]["RewardItem"] = {}
	tPlayerBargain_ItemWard[3306970]["RewardItem"][1] = {}
	tPlayerBargain_ItemWard[3306970]["RewardItem"][1]["Id"] = 3009003 -- 璀璨星陨石
	tPlayerBargain_ItemWard[3306970]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tPlayerBargain_ItemWard[3306970]["Log"] = "0,0,3306970,1,12000772,2,3009003,1"
	-- 赤炼石+6促销包
	tPlayerBargain_ItemWard[3306971] = {}
	tPlayerBargain_ItemWard[3306971]["DeleteItem"] = {}
	tPlayerBargain_ItemWard[3306971]["DeleteItem"][1] = {}
	tPlayerBargain_ItemWard[3306971]["DeleteItem"][1]["Id"] = 3306971
	tPlayerBargain_ItemWard[3306971]["RewardItem"] = {}
	tPlayerBargain_ItemWard[3306971]["RewardItem"][1] = {}
	tPlayerBargain_ItemWard[3306971]["RewardItem"][1]["Id"] = 730006 -- +6赤炼石
	tPlayerBargain_ItemWard[3306971]["RewardItem"][1]["Attr"] = "0 1"
	tPlayerBargain_ItemWard[3306971]["Log"] = "0,0,3306971,1,12000772,2,730006,1"
	-- 龙珠卷促销包
	tPlayerBargain_ItemWard[3306972] = {}
	tPlayerBargain_ItemWard[3306972]["DeleteItem"] = {}
	tPlayerBargain_ItemWard[3306972]["DeleteItem"][1] = {}
	tPlayerBargain_ItemWard[3306972]["DeleteItem"][1]["Id"] = 3306972
	tPlayerBargain_ItemWard[3306972]["RewardItem"] = {}
	tPlayerBargain_ItemWard[3306972]["RewardItem"][1] = {}
	tPlayerBargain_ItemWard[3306972]["RewardItem"][1]["Id"] = 720028 -- 龙珠卷
	tPlayerBargain_ItemWard[3306972]["RewardItem"][1]["Attr"] = "0 1"
	tPlayerBargain_ItemWard[3306972]["Log"] = "0,0,3306972,1,12000772,2,720028,1"
	-- 超大固化石促销包
	tPlayerBargain_ItemWard[3306973] = {}
	tPlayerBargain_ItemWard[3306973]["DeleteItem"] = {}
	tPlayerBargain_ItemWard[3306973]["DeleteItem"][1] = {}
	tPlayerBargain_ItemWard[3306973]["DeleteItem"][1]["Id"] = 3306973
	tPlayerBargain_ItemWard[3306973]["RewardItem"] = {}
	tPlayerBargain_ItemWard[3306973]["RewardItem"][1] = {}
	tPlayerBargain_ItemWard[3306973]["RewardItem"][1]["Id"] = 723695 -- 超大固化石
	tPlayerBargain_ItemWard[3306973]["RewardItem"][1]["Attr"] = "0 1"
	tPlayerBargain_ItemWard[3306973]["Log"] = "0,0,3306973,1,12000772,2,723695,1"
	-- 究极通神促销包
	tPlayerBargain_ItemWard[3306974] = {}
	tPlayerBargain_ItemWard[3306974]["DeleteItem"] = {}
	tPlayerBargain_ItemWard[3306974]["DeleteItem"][1] = {}
	tPlayerBargain_ItemWard[3306974]["DeleteItem"][1]["Id"] = 3306974
	tPlayerBargain_ItemWard[3306974]["RewardItem"] = {}
	tPlayerBargain_ItemWard[3306974]["RewardItem"][1] = {}
	tPlayerBargain_ItemWard[3306974]["RewardItem"][1]["Id"] = 3003126 -- 究极通神丹
	tPlayerBargain_ItemWard[3306974]["RewardItem"][1]["Attr"] = "0 10"
	tPlayerBargain_ItemWard[3306974]["Log"] = "0,0,3306974,1,12000772,2,3003126,10"
	-- 自创武功促销包
	tPlayerBargain_ItemWard[3306975] = {}
	tPlayerBargain_ItemWard[3306975]["DeleteItem"] = {}
	tPlayerBargain_ItemWard[3306975]["DeleteItem"][1] = {}
	tPlayerBargain_ItemWard[3306975]["DeleteItem"][1]["Id"] = 3306975
	tPlayerBargain_ItemWard[3306975]["RewardItem"] = {}
	tPlayerBargain_ItemWard[3306975]["RewardItem"][1] = {}
	tPlayerBargain_ItemWard[3306975]["RewardItem"][1]["Id"] = 3002926 -- 秘制免费修炼丹
	tPlayerBargain_ItemWard[3306975]["RewardItem"][1]["Attr"] = "0 10"
	tPlayerBargain_ItemWard[3306975]["RewardItem"][2] = {}
	tPlayerBargain_ItemWard[3306975]["RewardItem"][2]["Id"] = 3002030 -- 强效护心丹
	tPlayerBargain_ItemWard[3306975]["RewardItem"][2]["Attr"] = "0 10"
	tPlayerBargain_ItemWard[3306975]["Log"] = "0,0,3306975,1,12000772,2,3002926[3002030],10[10]"
	-- 10000气力值促销包
	tPlayerBargain_ItemWard[3306976] = {}
	tPlayerBargain_ItemWard[3306976]["DeleteItem"] = {}
	tPlayerBargain_ItemWard[3306976]["DeleteItem"][1] = {}
	tPlayerBargain_ItemWard[3306976]["DeleteItem"][1]["Id"] = 3306976
	tPlayerBargain_ItemWard[3306976]["RewardStrengthValue"] = {}
	tPlayerBargain_ItemWard[3306976]["RewardStrengthValue"]["Value"] = 10000
	tPlayerBargain_ItemWard[3306976]["Log"] = "0,0,3306976,1,12000772,2,12,10000"
	-- 金刚尖钻促销包
	tPlayerBargain_ItemWard[3306977] = {}
	tPlayerBargain_ItemWard[3306977]["DeleteItem"] = {}
	tPlayerBargain_ItemWard[3306977]["DeleteItem"][1] = {}
	tPlayerBargain_ItemWard[3306977]["DeleteItem"][1]["Id"] = 3306977
	tPlayerBargain_ItemWard[3306977]["RewardItem"] = {}
	tPlayerBargain_ItemWard[3306977]["RewardItem"][1] = {}
	tPlayerBargain_ItemWard[3306977]["RewardItem"][1]["Id"] = 1200005 -- 金刚尖钻
	tPlayerBargain_ItemWard[3306977]["RewardItem"][1]["Attr"] = "0 1"
	tPlayerBargain_ItemWard[3306977]["Log"] = "0,0,3306977,1,12000772,2,1200005,1"
	-- 桃源灵玉促销包
	tPlayerBargain_ItemWard[3306995] = {}
	tPlayerBargain_ItemWard[3306995]["DeleteItem"] = {}
	tPlayerBargain_ItemWard[3306995]["DeleteItem"][1] = {}
	tPlayerBargain_ItemWard[3306995]["DeleteItem"][1]["Id"] = 3306995
	tPlayerBargain_ItemWard[3306995]["RewardItem"] = {}
	tPlayerBargain_ItemWard[3306995]["RewardItem"][1] = {}
	tPlayerBargain_ItemWard[3306995]["RewardItem"][1]["Id"] = 711504 -- 桃源灵玉
	tPlayerBargain_ItemWard[3306995]["RewardItem"][1]["Attr"] = "0 99"
	tPlayerBargain_ItemWard[3306995]["Log"] = "0,0,3306995,1,12000772,2,711504,99"

	-- 七星宝钻促销包
	tPlayerBargain_ItemWard[3306996] = {}
	tPlayerBargain_ItemWard[3306996]["DeleteItem"] = {}
	tPlayerBargain_ItemWard[3306996]["DeleteItem"][1] = {}
	tPlayerBargain_ItemWard[3306996]["DeleteItem"][1]["Id"] = 3306996
	tPlayerBargain_ItemWard[3306996]["RewardItem"] = {}
	tPlayerBargain_ItemWard[3306996]["RewardItem"][1] = {}
	tPlayerBargain_ItemWard[3306996]["RewardItem"][1]["Id"] = 1200006 -- 七星宝钻
	tPlayerBargain_ItemWard[3306996]["RewardItem"][1]["Attr"] = "0 1"
	tPlayerBargain_ItemWard[3306996]["Log"] = "0,0,3306996,1,12000772,2,1200006,1"
	
	--转世令牌直降包
	tPlayerBargain_ItemWard[3307108]={}
	tPlayerBargain_ItemWard[3307108]["DeleteItem"] = {}
	tPlayerBargain_ItemWard[3307108]["DeleteItem"][1] = {}
	tPlayerBargain_ItemWard[3307108]["DeleteItem"][1]["Id"] = 3307108
	tPlayerBargain_ItemWard[3307108]["RewardItem"] = {}
	tPlayerBargain_ItemWard[3307108]["RewardItem"][1] = {}
	tPlayerBargain_ItemWard[3307108]["RewardItem"][1]["Id"] = 723701
	tPlayerBargain_ItemWard[3307108]["RewardItem"][1]["Attr"] ="0 1 3"
	tPlayerBargain_ItemWard[3307108]["Log"] = "0,0,3307108,1,12000772,2,723701,1"
-----------------------------------------
-- 首次砍价成功奖励
local tPlayerBargain_1stCutWard = {}
	tPlayerBargain_1stCutWard["RewardEMoneyMono"] = {}
	tPlayerBargain_1stCutWard["RewardEMoneyMono"]["Value"] = 30 		-- 30增点
	tPlayerBargain_1stCutWard["RewardStrengthValue"] = {}
	tPlayerBargain_1stCutWard["RewardStrengthValue"]["Value"] = 100 -- 100气力值
	tPlayerBargain_1stCutWard["Log"] = "0,0,0,0,12000772,2,3[12],30[100]"

-----------------------------------------
local tPlayerBargain_CutProb = {}
	-- 砍价几率
	tPlayerBargain_CutProb[1] = {}
	tPlayerBargain_CutProb[1]["ItemChanceSum"] = 10000
	-- 60%砍价成功
	tPlayerBargain_CutProb[1][1] = {}
	tPlayerBargain_CutProb[1][1]["RandomItemChanceType"] = 2
	tPlayerBargain_CutProb[1][1]["ItemChance"] = 6000
	tPlayerBargain_CutProb[1][1]["Item_1"] = true
	-- 40%砍价失败
	tPlayerBargain_CutProb[1][2] = {}
	tPlayerBargain_CutProb[1][2]["RandomItemChanceType"] = 2
	tPlayerBargain_CutProb[1][2]["ItemChance"] = 4000
	tPlayerBargain_CutProb[1][2]["Item_1"] = false
	
	
------------------------------------------------------------------------------------
--活动LOG数据
local tPlayerBargain_Log = {}
	-- 砍价成功
	tPlayerBargain_Log["CutSubPrice"] = "0,0,0,0,12000772,1[1],%s,%d" -- %s商品，售价降低%d点天石
	tPlayerBargain_Log["CutMinStock"] = "0,0,0,0,12000772,1[2],%s,%d" --  %s商品，库存不足，增加%d库存
	tPlayerBargain_Log["CutAddStock"] = "0,0,0,0,12000772,1[3],%s,%d" --  %s商品，库存充足，最低价，增加%d库存
	-- 获得砍价次数	--  =2（正气令）=3（显著功勋礼包）-- %d物品使用，获得%d次砍价次数
	tPlayerBargain_Log["AddCutNum"] = "0,0,0,0,12000772,1[4],%d,%d"
	-- 购买商品
	tPlayerBargain_Log["BuyItem"] = "%d,0,0,0,12000772,2[1],%s,%d" -- 消耗%d金币，购买%s商品%d个
	-- 邮件发奖
	tPlayerBargain_Log["MailReward"] = "0,0,0,0,12000772,2[2],3306968,1" --  发一次邮件奖，记录一次

--emoney log
local tPlayerBargain_EmoneyLog = {}
	tPlayerBargain_EmoneyLog[1] = "350	21044	%d	%d	1	"
	tPlayerBargain_EmoneyLog[2] = "350	21045	%d	%d	1	"
	tPlayerBargain_EmoneyLog[3] = "350	21046	%d	%d	1	"
	tPlayerBargain_EmoneyLog[4] = "350	21047	%d	%d	1	"
	tPlayerBargain_EmoneyLog[5] = "350	21048	%d	%d	1	"
	tPlayerBargain_EmoneyLog[6] = "350	21049	%d	%d	1	"
	tPlayerBargain_EmoneyLog[7] = "350	21050	%d	%d	1	"
	tPlayerBargain_EmoneyLog[8] = "350	21051	%d	%d	1	"
	tPlayerBargain_EmoneyLog[9] = "350	21052	%d	%d	1	"
	tPlayerBargain_EmoneyLog[10] = "350	21053	%d	%d	1	"
  	tPlayerBargain_EmoneyLog[11] ="350	21054	%d	%d	1	"
	
	--对物品进行砍价 emoney log
local tPlayerBargain_CutEmoneyLog = {}
	tPlayerBargain_CutEmoneyLog[1] = "350	21033	1	1	1	"
	tPlayerBargain_CutEmoneyLog[2] = "350	21034	1	1	1	"
	tPlayerBargain_CutEmoneyLog[3] = "350	21035	1	1	1	"
	tPlayerBargain_CutEmoneyLog[4] = "350	21036	1	1	1	"
	tPlayerBargain_CutEmoneyLog[5] = "350	21037	1	1	1	"
	tPlayerBargain_CutEmoneyLog[6] = "350	21038	1	1	1	"
	tPlayerBargain_CutEmoneyLog[7] = "350	21039	1	1	1	"
	tPlayerBargain_CutEmoneyLog[8] = "350	21040	1	1	1	"
	tPlayerBargain_CutEmoneyLog[9] = "350	21041	1	1	1	"
	tPlayerBargain_CutEmoneyLog[10] ="350	21042	1	1	1	"
	tPlayerBargain_CutEmoneyLog[11] ="350	21043	1	1	1	"
---------------------------------------函数部分---------------------------------------------
-- 寻路函数
function PlayerBargain_FindWay(nNpcId,nType)
	-- 活动后
	if not Sys_ChkFullTime(tActivityTime["JanuaPro"]["ActTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- 未开业
	if not Sys_ChkDayTime(tActivityTime["JanuaPro"]["ActDayTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end
	
	-- 寻路
	local nMapId = tPlayerBargain_Data["AutoFind"][nType][1]
	local nPosX = tPlayerBargain_Data["AutoFind"][nType][2]
	local nPosY = tPlayerBargain_Data["AutoFind"][nType][3]
	local nNpcId = tPlayerBargain_Data["AutoFind"][nType][4]
	Sys_GotoSomeWhere(nPosX,nPosY,nMapId,nNpcId)
end


-- 打开商店界面
function PlayerBargain_OpenShop(nNpcId)
	if not Sys_ChkFullTime(tActivityTime["JanuaPro"]["ActTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	User_OpenDialog()
end


-- 获取NPC对应促销数据
function PlayerBargain_GetNpcData(nNpcId)
	local nGlobalId = 0
	local nGlobPos = 0
	local nMaxPrice = 0
	local nMinPrice = 0
	local nNpcType = 0
	for nType,tNpcType in ipairs(tPlayerBargain_Npc2Data) do
		if nNpcId == tNpcType["Npc"] then
			nGlobalId = tNpcType["GlobId"][1]
			nGlobPos = tNpcType["GlobId"][2]
			nMaxPrice = tNpcType["Price"][1]
			nMinPrice = tNpcType["Price"][2]
			nNpcType = nType
			break
		end
	end
	return nGlobalId,nGlobPos,nMaxPrice,nMinPrice,nNpcType
end

-- 邮件发奖
function PlayerBargain_Mail(nNum,sWareName)
	-- 给的次数
	for i = 1, nNum do
		if next(tPlayerBargain_CutPlayer) ~= nil then
			for _,v in ipairs(tPlayerBargain_CutPlayer) do
				-- 没有次数不发邮件
				if v.Value >= 1 then
					-- 发奖次数-1
					v.Value = v.Value - 1
					
					-- 发邮件
					local nUserId = v.UserId
					
					-- 邮件限制初始化
					if v.Mail == nil then
						v.Mail = 0
					end
					
					local nEvent_3 = tPlayerBargain_Stc[3]["EventData"]
					local nType_3 = tPlayerBargain_Stc[3]["TypeData"]
					local nValue_3 = tPlayerBargain_Stc[3]["Value"]
					-- 隔天重置
					if not Task_ChkStcValue(nEvent_3,nType_3,"==",0,nUserId) then
						if Task_StcInterval(nEvent_3,nType_3,1,4,nUserId) then
							Task_SetStatistic(nEvent_3,nType_3,0,1,nUserId)
							Task_SetStcTimestamp(nEvent_3,nType_3,0,nUserId)
						end
					end

					
						
					-- 未超出全天限制发邮件
					-- if not Task_ChkStcValue(nEvent_3,nType_3,">=",nValue_3,nUserId) then
					if not (v.Mail >= nValue_3) then
						-- 总发奖次数+1
						v.Mail = v.Mail + 1
						
						-- 掩码+1
						Task_AddStatistic(nEvent_3,nType_3,1,1,nUserId)
						Task_SetStcTimestamp(nEvent_3,nType_3,0,nUserId)

						-- 发奖
						local nActionId = tPlayerBargain_Data["Mail"]["ActionId"]
						local nExistDay = tPlayerBargain_Data["Mail"]["ExistDay"]
						local sSender = tPlayerBargain_Text["Sender"]
						local sTitle = string.format(tPlayerBargain_Text["Title"],sWareName)
						local sContent = string.format(tPlayerBargain_Text["Content"],sWareName)
						Sys_SendMail(nUserId,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent)
						
						-- -- 记录log
						-- Sys_SaveActionFestivalLog(tPlayerBargain_Log["MailReward"],nUserId)
					end
				end
			end
		end
	end
end

-- -- 播放光效
-- function PlayerBargain_PlayEffect(nEffectType,nNpcType,sNameType)
	-- local sEffectName = tPlayerBargain_Data["Effect"][sNameType]
	
	-- if nEffectType == "Map" then
		-- local nMapId = tPlayerBargain_Npc2Data[nNpcType]["ActMap"][1]
		-- local nPosX = tPlayerBargain_Npc2Data[nNpcType]["ActMap"][2]
		-- local nPosY = tPlayerBargain_Npc2Data[nNpcType]["ActMap"][3]

		-- Map_Effect(nMapId,nPosX,nPosY,sEffectName)
	-- else
		-- User_EffectAdd("self",sEffectName)
	-- end
-- end

-- 砍价成功全服公告
function PlayerBargain_SysCutBroad()
	local tAllGlobal = tPlayerBargain_CutBroad["CutAllNum"]
	local tBroadGlobal = tPlayerBargain_CutBroad["CutBroadNum"]
	local nAllNum = Get_SysDynaGlobalData(tAllGlobal[1],tAllGlobal[2])
	local nBroadNum = Get_SysDynaGlobalData(tBroadGlobal[1],tBroadGlobal[2])

	-- 初始化公告次数
	if nBroadNum <= 0 then
		nBroadNum = 1
	end
	
	-- 增加全服砍价成功次数
	Sys_SetSynaGlobalData(tAllGlobal[1],tAllGlobal[2],nAllNum + 1)

	-- 是否出公告
	if (math.floor(nAllNum + 1) / tPlayerBargain_CutBroad["Num"]) >= nBroadNum then
		-- 增加公告次数
		Sys_SetSynaGlobalData(tBroadGlobal[1],tBroadGlobal[2],nBroadNum + 1)
		
		-- 出公告
		local sText = string.format(tPlayerBargain_Text["SysBroad"]["CutBroad"],nAllNum + 1)
		Sys_SystemBroadcast(sText)
	end
end


---------------------------------------
-- 正气使用接入
function PlayerBargain_AddCutNum(nBinValue)
	-- 活动后
	if not Sys_ChkFullTime(tActivityTime["JanuaPro"]["ActTime"]) then
		return
	end
	
	-- 是否增加过砍价次数
	if PlayerBargain_ChkStc2Bin(nBinValue) then
		return
	end
	
	-- 掩码是否重置
	PlayerBargain_Login()
	PlayerBargain_SetStc2Bin(nBinValue)
	
	-- 增加砍价次数
	local nEvent_1 = tPlayerBargain_Stc[1]["EventData"]
	local nType_1 = tPlayerBargain_Stc[1]["TypeData"]
	Task_AddStatistic(nEvent_1,nType_1,tPlayerBargain_Data["AddCutNum"] + tPlayerBargain_Stc[1]["MarkBit"],1)
	Task_SetStcTimestamp(nEvent_1,nType_1,0)
	local sLog = string.format(tPlayerBargain_Log["AddCutNum"],nBinValue,tPlayerBargain_Data["AddCutNum"])
	local sText = string.format(tPlayerBargain_Text["AddCutNum"],tPlayerBargain_Data["AddCutNum"])
	Sys_SaveActionFestivalLog(sLog)
	User_TalkChannel2005(sText)
end

---------------------------------------
-- 第一次砍价成功，给奖励
function PlayerBargain_1stCutSuccess(nUserId)
	if next(tPlayerBargain_CutPlayer) ~= nil then
		for _, tUserData in ipairs(tPlayerBargain_CutPlayer) do
			if nUserId == tUserData.UserId then
				if tUserData.AllValue <= 1 then
					local bSuccess,sRewardStr = RewardTemplate_UseItem(tPlayerBargain_1stCutWard)
					if bSuccess then
						local sBoxText = string.format(tPlayerBargain_Text["1stCutTip"],sRewardStr)
						Sys_MsgBox(sBoxText)
					end
				end
				break
			end
		end
	end
end


-- 检测二进制掩码
function PlayerBargain_ChkStc2Bin(nBinValue)
	local nEvent = tPlayerBargain_Stc[2]["EventData"]
	local nType = tPlayerBargain_Stc[2]["TypeData"]
	
	-- 掩码隔天重置
	if not Task_ChkStcValue(nEvent,nType,"==",0) then
		if Task_StcInterval(nEvent,nType,1,4) then
			Task_SetStatistic(nEvent,nType,0,1)
			Task_SetStcTimestamp(nEvent,nType,0)
		end
	end
	
	local nPetData = Get_UserStatisticValue(nEvent,nType) or 0
	local nData = tPlayerBargain_Stc[2]["BinValua"][nBinValue]
	
	if Sys_ParseNumbersContain(nData,nPetData) then
		return true
	else
		return false
	end
end

-- 设置二进制掩码
function PlayerBargain_SetStc2Bin(nBinValue)
	local nEvent = tPlayerBargain_Stc[2]["EventData"]
	local nType = tPlayerBargain_Stc[2]["TypeData"]
	local nData = tPlayerBargain_Stc[2]["BinValua"][nBinValue]

	Task_AddStatistic(nEvent,nType,nData,1)
	Task_SetStcTimestamp(nEvent,nType,0)
end


---------------------------------------
-- 砍价商品NPC接入
function PlayerBargain_CutNpcMain(nNpcId)
	local nNpcId = nNpcId or Get_NpcId()
	local nUserId = Get_UserId()
	
	-- 活动前
	if Sys_ChkFullTime(tActivityTime["JanuaPro"]["BefTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end
	
	-- 活动后
	if not Sys_ChkFullTime(tActivityTime["JanuaPro"]["ActTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- 成功砍价次数
	local nEvent_1 = tPlayerBargain_Stc[1]["EventData"]
	local nType_1 = tPlayerBargain_Stc[1]["TypeData"]
	
	-- 掩码是否重置
	PlayerBargain_Login()
	
	
	-- 关键数据
	local nGlobalId,nGlobPos,nMaxPrice,nMinPrice,nNpcType = PlayerBargain_GetNpcData(nNpcId)
	local nCutNum = Get_UserStatisticValue(nEvent_1,nType_1) % tPlayerBargain_Stc[1]["MarkBit"]
	local sAreaName = tPlayerBargain_Text["AreaName"][nNpcType]
	local nItemId = tPlayerBargain_WareItem[nNpcType]["RewardItem"][1]["Id"]
	local sWareName = Get_ItemtypeName(nItemId)
	local sWareDesc = string.gsub(Get_ItemtypeItemDesc(nItemId),"~","#")
	local nNowPrice = Get_SysDynaGlobalData(nGlobalId,nGlobPos)
	local nStock = tonumber(Get_SysDynaGlobalDataStr(nGlobalId,nGlobPos))
	
	-- 活动中（等级不足）
	local nLevel = tPlayerBargain_Data["Level"]
	local nMete = tPlayerBargain_Data["Mete"]
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMete) then
		
		-- 对白组合
		local sText131 = string.format(tPlayerBargain_Text[nNpcId]["Text131"],sWareDesc,sWareName)
		local sText133 = string.format(tPlayerBargain_Text[nNpcId]["Text133"],nNowPrice)
		local sText134 = string.format(tPlayerBargain_Text[nNpcId]["Text134"],nMinPrice)
		local sText135 = string.format(tPlayerBargain_Text[nNpcId]["Text135"],nStock)
		tNpcGossip[nNpcId]["Text131"] = sText131
		tNpcGossip[nNpcId]["Text133"] = sText133
		tNpcGossip[nNpcId]["Text134"] = sText134
		tNpcGossip[nNpcId]["Text135"] = sText135

		-- 出对白
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end
	
	-- 活动中（歇业）
	if not Sys_ChkDayTime(tActivityTime["JanuaPro"]["ActDayTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-4")
		return
	end
	
	-- 活动中对白处理
	local nValue = 0
	local nAllValue = 0
	for _,v in ipairs(tPlayerBargain_CutPlayer) do
		if nUserId == v.UserId then
			nValue = v.Value
			nAllValue = v.AllValue
		end
	end
	
	local sText151 =  string.format(tPlayerBargain_Text[nNpcId]["Text151"], sWareName)
	local sText153 =  string.format(tPlayerBargain_Text[nNpcId]["Text153"], sAreaName)
	local sText155 =  string.format(tPlayerBargain_Text[nNpcId]["Text155"], nNowPrice,nMinPrice,nMaxPrice)
	local sText158 =  string.format(tPlayerBargain_Text[nNpcId]["Text158"], nStock)
	local sText1511 = string.format(tPlayerBargain_Text[nNpcId]["Text1511"],nAllValue)
	-- local sText1514 = string.format(tPlayerBargain_Text[nNpcId]["Text1514"],nValue)
	tNpcGossip[nNpcId]["Text151"]  = sText151
	tNpcGossip[nNpcId]["Text153"]  = sText153
	tNpcGossip[nNpcId]["Text155"]  = sText155
	tNpcGossip[nNpcId]["Text158"]  = sText158
	tNpcGossip[nNpcId]["Text1511"] = sText1511
	-- tNpcGossip[nNpcId]["Text1514"] = sText1514

	-- 是否已经最低价
	tNpcGossip[nNpcId]["Text1510"] = ""
	if nNowPrice == nMinPrice then
		tNpcGossip[nNpcId]["Text1510"] = tPlayerBargain_Text[nNpcId]["Text1510"]
	end
	
	-- 选项处理
	local sOptText151 = string.format(tPlayerBargain_Text[nNpcId]["Option151"],nCutNum)
	local sOptFunc151 = string.format("PlayerBargain_WillCut</N>%d",nNpcId)
	local sOptFunc152 = string.format("PlayerBargain_BuyWare</N>%d",nNpcId)
	local sOptFunc153 = string.format("PlayerBargain_DoBuybatch</N>%d</S>%s",nNpcId,sWareName)
	tNpcGossip[nNpcId]["Option151"] = sOptText151
	tNpcGossip[nNpcId]["OptionFunc151"] = sOptFunc151
	tNpcGossip[nNpcId]["OptionFunc152"] = sOptFunc152
	tNpcGossip[nNpcId]["OptionFunc153"] = sOptFunc153
	tNpcGossip[nNpcId]["tOption1-5"] = {151,152,153}
	
	-- 砍价总次数用完
	local nNowAddNum = Get_UserStatisticValue(nEvent_1,nType_1) / tPlayerBargain_Stc[1]["MarkBit"]
	local nAddCutNum = tPlayerBargain_Stc[1]["AddCutNum"]
	if nCutNum <= 0 and nNowAddNum >= nAddCutNum then
		tNpcGossip[nNpcId]["tOption1-5"] = {152,153}
	end
	
	-- 出对白
	LinkNpcGossipFunc_New(nNpcId,"1-5")
end

-- 我要砍价
function PlayerBargain_WillCut(nNpcId)
	-- 活动后
	if not Sys_ChkFullTime(tActivityTime["JanuaPro"]["ActTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- 未开业
	if not Sys_ChkDayTime(tActivityTime["JanuaPro"]["ActDayTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-4")
		return
	end
	
	-- 砍价次数
	local nEvent_1 = tPlayerBargain_Stc[1]["EventData"]
	local nType_1 = tPlayerBargain_Stc[1]["TypeData"]
	
	-- 掩码是否重置
	PlayerBargain_Login()
	
	-- 砍价次数用完
	local nCutNum = Get_UserStatisticValue(nEvent_1,nType_1) % tPlayerBargain_Stc[1]["MarkBit"]
	if nCutNum <= 0 then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	
	-- 减1次砍价次数
	Task_AddStatistic(nEvent_1,nType_1,-1,1)
	Task_SetStcTimestamp(nEvent_1,nType_1,0)
	
	--获取商品信息
	local nGlobalId,nGlobPos,nMaxPrice,nMinPrice,nNpcType = PlayerBargain_GetNpcData(nNpcId)
	--记录砍价emoney log
	local sEmoneyLog = tPlayerBargain_CutEmoneyLog[nNpcType]
	Sys_SaveEmoneyBuy(sEmoneyLog)
	
	
	-- 走砍价几率
	local flat,tItem = Probabil_RandomAward(tPlayerBargain_CutProb,1)
	local bSuccess = tItem[1]["tAward"][1]["Item_1"]
	
	--砍价失败
	if not bSuccess then
		-- 系统提示
		User_TalkChannel2005(tPlayerBargain_Text["CutFail"])
		-- PlayerBargain_PlayEffect("self",nNpcType,"CutFail")
		-- 返回主对白
		PlayerBargain_CutNpcMain(nNpcId)
		return
	end
	
	-- 售价信息
	local nNowPrice = Get_SysDynaGlobalData(nGlobalId,nGlobPos)
	
	-- 剩余库存
	local nStock = tonumber(Get_SysDynaGlobalDataStr(nGlobalId,nGlobPos))
	local nItemId = tPlayerBargain_WareItem[nNpcType]["RewardItem"][1]["Id"]
	local sWareName = Get_ItemtypeName(nItemId)
	local sText = ""
	
	-- 库存为0则增加库存
	if nStock <= 0 then
		-- 增加库存
		nStock = nStock + tPlayerBargain_Data["AddStock"]
		Sys_SetSynaGlobalDataStr(nGlobalId,nGlobPos,tostring(nStock))
		
		-- 系统提示
		sText = string.format(tPlayerBargain_Text["CutMinStock"],sWareName,tPlayerBargain_Data["AddStock"])
		sLog = string.format(tPlayerBargain_Log["CutMinStock"],nItemId,tPlayerBargain_Data["AddStock"])
	
	-- 已是最低价(或库存小于等于0)
	elseif nNowPrice <= nMinPrice then
		-- 增加库存
		nStock = nStock + tPlayerBargain_Data["AddStock"]
		Sys_SetSynaGlobalDataStr(nGlobalId,nGlobPos,tostring(nStock))
		
		-- 系统提示
		sText = string.format(tPlayerBargain_Text["CutAddStock"],sWareName,tPlayerBargain_Data["AddStock"])
		sLog = string.format(tPlayerBargain_Log["CutAddStock"],nItemId,tPlayerBargain_Data["AddStock"])

	-- 非最低价
	else
		-- 减少价格
		nNowPrice = nNowPrice - tPlayerBargain_Data["SubPrice"]
		Sys_SetSynaGlobalData(nGlobalId,nGlobPos,nNowPrice)
		
		-- 最低价出全服公告
		if nNowPrice <= nMinPrice then
			local nPosX = tPlayerBargain_Npc2Data[nNpcType]["ActMap"][2]
			local nPosY = tPlayerBargain_Npc2Data[nNpcType]["ActMap"][3]
			local sText = string.format(tPlayerBargain_Text["SysBroad"]["MinPrice"],sWareName,nNowPrice,nPosX,nPosY)
			Sys_SystemBroadcast(sText)
		end
		
		-- 系统提示
		sText = string.format(tPlayerBargain_Text["CutSubPrice"],sWareName,tPlayerBargain_Data["SubPrice"])
		sLog = string.format(tPlayerBargain_Log["CutSubPrice"],nItemId,tPlayerBargain_Data["SubPrice"])
	end
	
	-- 玩家数据记录到临时表
	local nUserId = Get_UserId()
	local nAddValue = tPlayerBargain_Data["BacStrength"]
	if next(tPlayerBargain_CutPlayer) ~= nil then
		local bHad = false
		for _, tUserData in ipairs(tPlayerBargain_CutPlayer) do
			-- 表内已有该玩家数据
			if nUserId == tUserData.UserId then
				tUserData.Value = tUserData.Value + nAddValue
				tUserData.AllValue = tUserData.AllValue + nAddValue
				bHad = true
				break
			end
		end
		
		-- 表内无该玩家数据
		if not bHad then
			local tData = {
				UserId = nUserId,
				Value = nAddValue,
				AllValue = nAddValue
			}
			table.insert(tPlayerBargain_CutPlayer,tData)
		end
		
	-- 临时表无数据
	else
		local tData = {
			UserId = nUserId,
			Value = nAddValue,
			AllValue = nAddValue
		}
		table.insert(tPlayerBargain_CutPlayer,tData)
	end
	
	-- 第一次砍价成功，给奖励
	PlayerBargain_1stCutSuccess(nUserId)
	
	-- 判断是否移动NPC
	 -- PlayerBargain_MoveNpc(nNpcId)
	
	-- 砍价成功播放光效
	 -- PlayerBargain_PlayEffect("self",nNpcType,"CutSuccess")
	
	-- 是否出全服公告
	PlayerBargain_SysCutBroad()
	
	-- 返回主界面
	User_TalkChannel2005(sText)
	Sys_SaveActionFestivalLog(sLog)
	PlayerBargain_CutNpcMain(nNpcId)
end





-- 【购买1件】接入
function PlayerBargain_BuyWare(nNpcId,sWareName)
	-- 活动后
	if not Sys_ChkFullTime(tActivityTime["JanuaPro"]["ActTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- 未开业
	if not Sys_ChkDayTime(tActivityTime["JanuaPro"]["ActDayTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-4")
		return
	end
	
	-- 取NPC数据
	local nGlobalId,nGlobPos,nMaxPrice,nMinPrice,nNpcType = PlayerBargain_GetNpcData(nNpcId)

	-- 背包空间
	local tTemp = CommonFunc_Copy(tPlayerBargain_WareItem[nNpcType])
	if tTemp["NeedSpace"] ~= nil then
		if not User_CheckLeftSpace(tTemp["NeedSpace"]) then
			LinkNpcGossipFunc_New(nNpcId,"3-1")
			return
		end
	end

	-- 售价信息
	local nItemId = tPlayerBargain_WareItem[nNpcType]["RewardItem"][1]["Id"]
	local sWareName = Get_ItemtypeName(nItemId)
	local sWareDesc = Get_ItemtypeItemDesc(nItemId)
	local nNowPrice = Get_SysDynaGlobalData(nGlobalId,nGlobPos)

	-- 剩余库存
	local nStock = tonumber(Get_SysDynaGlobalDataStr(nGlobalId,nGlobPos))

	-- 库存不足
	if nStock <= 0 then
		local sText321 = string.format(tPlayerBargain_Text[nNpcId]["Text321"],sWareName)
		tNpcGossip[nNpcId]["Text321"]  = sText321
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return
	end
	
	-- 是否取消二次确认
	if PlayerBargain_ChkStc2Bin(1) then
		-- 无二次确认，直接执行购买
		PlayerBargain_DoBuyWare(nNpcId,nNowPrice)
		return
	end
	
	-- local nEvent_2 = tPlayerBargain_Stc[2]["EventData"]
	-- local nType_2 = tPlayerBargain_Stc[2]["TypeData"]
	-- if not Task_ChkStcValue(nEvent_2,nType_2,"==",0) then
		-- if not Task_StcInterval(nEvent_2,nType_2,1,4) then
			-- 无二次确认，直接执行购买
			-- PlayerBargain_DoBuyWare(nNpcId,nNowPrice)
			-- return
		-- end
	-- end
	
	-- 未达最低价
	if nNowPrice > nMinPrice then
		local sText331 = string.format(tPlayerBargain_Text[nNpcId]["Text331"],sWareDesc,sWareName)
		local sText332 = string.format(tPlayerBargain_Text[nNpcId]["Text332"],nNowPrice,nMinPrice,nMaxPrice)
		-- local sText333 = string.format(tPlayerBargain_Text[nNpcId]["Text333"],nMinPrice)
		-- local sText334 = string.format(tPlayerBargain_Text[nNpcId]["Text334"],nNowPrice,sWareName)
		local sOptText331 = string.format(tPlayerBargain_Text[nNpcId]["Option331"],nNowPrice)
		local sOptFunc331 = string.format("PlayerBargain_DoBuyWare</N>%d</N>%d",nNpcId,nNowPrice)
		local sOptFunc332 = string.format("PlayerBargain_DelIs2nd</N>%d",nNpcId)
		local sOptFunc333 = string.format("PlayerBargain_CutNpcMain</N>%d",nNpcId)
		tNpcGossip[nNpcId]["Text331"]  = sText331
		tNpcGossip[nNpcId]["Text332"]  = sText332
		-- tNpcGossip[nNpcId]["Text333"]  = sText333
		-- tNpcGossip[nNpcId]["Text334"]  = sText334
		tNpcGossip[nNpcId]["Option331"] = sOptText331
		tNpcGossip[nNpcId]["OptionFunc331"] = sOptFunc331
		tNpcGossip[nNpcId]["OptionFunc332"] = sOptFunc332
		tNpcGossip[nNpcId]["OptionFunc333"] = sOptFunc333

		-- 出二次确认
		LinkNpcGossipFunc_New(nNpcId,"3-3")
		
		
	-- 已是最低价
	else
		local sText341 = string.format(tPlayerBargain_Text[nNpcId]["Text341"],nMinPrice,sWareName)
		local sOptText341 = string.format(tPlayerBargain_Text[nNpcId]["Option341"],nMinPrice)
		local sOptFunc341 = string.format("PlayerBargain_DoBuyWare</N>%d</N>%d",nNpcId,nMinPrice)
		local sOptFunc342 = string.format("PlayerBargain_DelIs2nd</N>%d",nNpcId)
		local sOptFunc343 = string.format("PlayerBargain_CutNpcMain</N>%d",nNpcId)
		tNpcGossip[nNpcId]["Text341"]  = sText341
		tNpcGossip[nNpcId]["Option341"] = sOptText341
		tNpcGossip[nNpcId]["OptionFunc341"] = sOptFunc341
		tNpcGossip[nNpcId]["OptionFunc342"] = sOptFunc342
		tNpcGossip[nNpcId]["OptionFunc343"] = sOptFunc343

		-- 出二次确认
		LinkNpcGossipFunc_New(nNpcId,"3-4")
	end
	
end


-- 去掉二次确认
function PlayerBargain_DelIs2nd(nNpcId)
	-- 置掩码
	PlayerBargain_SetStc2Bin(1)
	
	-- 返回主对白
	PlayerBargain_CutNpcMain(nNpcId)
end


-- 【购买1件】执行购买
function PlayerBargain_DoBuyWare(nNpcId,nNowPrice)
	-- 活动后
	if not Sys_ChkFullTime(tActivityTime["JanuaPro"]["ActTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- 未开业
	if not Sys_ChkDayTime(tActivityTime["JanuaPro"]["ActDayTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-4")
		return
	end
	
	-- 取NPC数据
	local nGlobalId,nGlobPos,nMaxPrice,nMinPrice,nNpcType = PlayerBargain_GetNpcData(nNpcId)
	
	-- 背包空间
	local tTemp = CommonFunc_Copy(tPlayerBargain_WareItem[nNpcType])
	if tTemp["NeedSpace"] ~= nil then
		if not User_CheckLeftSpace(tTemp["NeedSpace"]) then
			LinkNpcGossipFunc_New(nNpcId,"3-1")
			return
		end
	end
	
	-- 天石不足
	local nUserEMoney = Get_UserEMoney()
	if not (nUserEMoney >= nNowPrice) then
		LinkNpcGossipFunc_New(nNpcId,"3-5")
		return
	end
	
	-- 库存不足
	local nItemId = tTemp["RewardItem"][1]["Id"]
	local sWareName = Get_ItemtypeName(nItemId)
	local nStock = tonumber(Get_SysDynaGlobalDataStr(nGlobalId,nGlobPos))
	if nStock <= 0 then
		local sText321 = string.format(tPlayerBargain_Text[nNpcId]["Text321"],sWareName)
		tNpcGossip[nNpcId]["Text321"]  = sText321
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return
	end
	
	-- 成功
	if User_AddEMoney(-nNowPrice) then
		-- 减少库存
		Sys_SetSynaGlobalDataStr(nGlobalId,nGlobPos,tostring(nStock - 1))
	
		-- 给奖励
		tTemp["Log"] = string.format(tPlayerBargain_WareItem[nNpcType]["Log"],nNowPrice,1)
		if RewardTemplate_UseItem(tTemp) then
			-- 记录log
			local sLog = string.format(tPlayerBargain_Log["BuyItem"],nNowPrice,nItemId,1)
			local sEmoneyLog = string.format(tPlayerBargain_EmoneyLog[nNpcType],nNowPrice,nNowPrice)
			Sys_SaveActionFestivalLog(sLog)
			Sys_SaveEmoneyBuy(sEmoneyLog)
			-- 发邮件
			PlayerBargain_Mail(1,sWareName)
		end
		-- -- 购买成功光效
		-- PlayerBargain_PlayEffect("self",nNpcType,"BuySuccess")
		
		-- 返回主对白
		PlayerBargain_CutNpcMain(nNpcId)
	end
end


-- 【批量购买】
function PlayerBargain_DoBuybatch(nNpcId)
	-- 活动后
	if not Sys_ChkFullTime(tActivityTime["JanuaPro"]["ActTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- 未开业
	if not Sys_ChkDayTime(tActivityTime["JanuaPro"]["ActDayTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-4")
		return
	end
	
	-- 售价信息
	local nGlobalId,nGlobPos,nMaxPrice,nMinPrice,nNpcType = PlayerBargain_GetNpcData(nNpcId)
	local nItemId = tPlayerBargain_WareItem[nNpcType]["RewardItem"][1]["Id"]
	local sWareName = Get_ItemtypeName(nItemId)
	local sWareDesc = Get_ItemtypeItemDesc(nItemId)
	local nNowPrice = Get_SysDynaGlobalData(nGlobalId,nGlobPos)

	local sOptEditText = tPlayerBargain_Text[nNpcId]["Option411"]
	local nOptEditLen = tPlayerBargain_Data["EditLen"]
	local sOptEditFunc = string.format("PlayerBargain_DoBatchInto</N>%d</N>%d",nNpcId,nNowPrice)
	-- 未达最低价
	if nNowPrice > nMinPrice then
		local sText411 = string.format(tPlayerBargain_Text[nNpcId]["Text411"],sWareDesc,sWareName)
		local sText412 = string.format(tPlayerBargain_Text[nNpcId]["Text412"],nNowPrice,nMinPrice,nMaxPrice)
		-- local sText413 = string.format(tPlayerBargain_Text[nNpcId]["Text413"],nMinPrice)
		local sText414 = tPlayerBargain_Text[nNpcId]["Text414"]
		local sOptText412 = tPlayerBargain_Text[nNpcId]["Option412"]
		local sOptFunc412 = string.format("</F>PlayerBargain_CutNpcMain</N>%d",nNpcId)
		Sys_DialogTaskClear()
		Sys_DialogText(sText411)
		Sys_DialogText(sText412)
		-- Sys_DialogText(sText413)
		Sys_DialogText(sText414)
		Sys_DialogOptEdit(sOptEditText,nOptEditLen,sOptEditFunc)
		Sys_DialogOption(sOptText412,sOptFunc412)
		Sys_DialogFace(nNpcId)
		Sys_DialogEnd()
		
	-- 达到最低价
	else
		local sText421 = string.format(tPlayerBargain_Text[nNpcId]["Text421"],sWareName,nMinPrice)
		local sText422 = tPlayerBargain_Text[nNpcId]["Text422"]
		local sOptText421 = tPlayerBargain_Text[nNpcId]["Option421"]
		local sOptFunc421 = string.format("</F>PlayerBargain_CutNpcMain</N>%d",nNpcId)
		-- Sys_DialogTaskClear()
		Sys_DialogText(sText421)
		Sys_DialogText(sText422)
		Sys_DialogOptEdit(sOptEditText,nOptEditLen,sOptEditFunc)
		Sys_DialogOption(sOptText421,sOptFunc421)
		Sys_DialogFace(nNpcId)
		Sys_DialogEnd()
	end
end

-- 【批量购买】输入后执行
function PlayerBargain_DoBatchInto(nNpcId,nNowPrice)
	-- 活动后
	if not Sys_ChkFullTime(tActivityTime["JanuaPro"]["ActTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- 未开业
	if not Sys_ChkDayTime(tActivityTime["JanuaPro"]["ActDayTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-4")
		return
	end
	
	-- 输入字符判断
	local nItemNum = tonumber(Get_SysAcceptStr())

	if type(nItemNum) ~= "number" or nItemNum <= 0 then
		local sOptFunc511 = string.format("PlayerBargain_DoBuybatch</N>%d",nNpcId)
		tNpcGossip[nNpcId]["OptionFunc511"] = sOptFunc511
		LinkNpcGossipFunc_New(nNpcId,"5-1")
		return
	end

	-- 数值超出库存
	local nGlobalId,nGlobPos,nMaxPrice,nMinPrice,nNpcType = PlayerBargain_GetNpcData(nNpcId)
	local nStock = tonumber(Get_SysDynaGlobalDataStr(nGlobalId,nGlobPos))
	if nItemNum > nStock then
		local sOptFunc521 = string.format("PlayerBargain_DoBuybatch</N>%d",nNpcId)
		tNpcGossip[nNpcId]["OptionFunc521"] = sOptFunc521
		LinkNpcGossipFunc_New(nNpcId,"5-2")
		return
	end

	-- 天石不足
	local nUserEMoney = Get_UserEMoney()
	local nNeedEMoney = nItemNum * nNowPrice
	if not (nUserEMoney >= nNeedEMoney) then
		LinkNpcGossipFunc_New(nNpcId,"5-3")
		return
	end

	-- 空间不足
	local tTemp = CommonFunc_Copy(tPlayerBargain_WareItem[nNpcType])
	if tTemp["NeedSpace"] ~= nil then
		if not User_CheckLeftSpace(nItemNum * tTemp["NeedSpace"]) then
			LinkNpcGossipFunc_New(nNpcId,"3-1")
			return
		end
	end

	-- 是否取消二次确认
	if PlayerBargain_ChkStc2Bin(1) then
		-- 无二次确认，直接执行购买
		PlayerBargain_DoBatchBuy(nNpcId,nItemNum,nNeedEMoney)
		return
	end
	
	-- 是否取消二次确认
	-- local nEvent_2 = tPlayerBargain_Stc[2]["EventData"]
	-- local nType_2 = tPlayerBargain_Stc[2]["TypeData"]
	-- if not Task_ChkStcValue(nEvent_2,nType_2,"==",0) then
		-- if not Task_StcInterval(nEvent_2,nType_2,1,4) then
			-- 无二次确认，直接执行购买
			-- PlayerBargain_DoBatchBuy(nNpcId,nItemNum,nNeedEMoney)
			-- return
		-- end
	-- end

	-- 二次确认
	local nItemId = tTemp["RewardItem"][1]["Id"]
	local sItemName = Get_ItemtypeName(nItemId)
	local sText541 = string.format(tPlayerBargain_Text[nNpcId]["Text541"],nNeedEMoney,nItemNum,sItemName)
	local sOptText541 = string.format(tPlayerBargain_Text[nNpcId]["Option541"],nNeedEMoney)
	local sOptFunc541 = string.format("PlayerBargain_DoBatchBuy</N>%d</N>%d</N>%d",nNpcId,nItemNum,nNeedEMoney)
	local sOptFunc542 = string.format("PlayerBargain_DelIs2nd</N>%d",nNpcId)
	local sOptFunc543 = string.format("PlayerBargain_CutNpcMain</N>%d",nNpcId)
	tNpcGossip[nNpcId]["Text541"]  = sText541
	tNpcGossip[nNpcId]["Option541"] = sOptText541
	tNpcGossip[nNpcId]["OptionFunc541"] = sOptFunc541
	tNpcGossip[nNpcId]["OptionFunc542"] = sOptFunc542
	tNpcGossip[nNpcId]["OptionFunc543"] = sOptFunc543
	
	-- 出二次确认
	LinkNpcGossipFunc_New(nNpcId,"5-4")
end

-- 【批量购买】执行批量购买
function PlayerBargain_DoBatchBuy(nNpcId,nItemNum,nNeedEMoney)
	-- 活动后
	if not Sys_ChkFullTime(tActivityTime["JanuaPro"]["ActTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end

	-- 未开业
	if not Sys_ChkDayTime(tActivityTime["JanuaPro"]["ActDayTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-4")
		return
	end
	
	-- 数值超出库存
	local nGlobalId,nGlobPos,nMaxPrice,nMinPrice,nNpcType = PlayerBargain_GetNpcData(nNpcId)
	local nStock = tonumber(Get_SysDynaGlobalDataStr(nGlobalId,nGlobPos))
	if nItemNum > nStock then
		local sOptFunc521 = string.format("PlayerBargain_CutNpcMain</N>%d",nNpcId)
		tNpcGossip[nNpcId]["OptionFunc521"] = sOptFunc521
		LinkNpcGossipFunc_New(nNpcId,"5-2")
		return
	end
	
	-- 天石不足
	local nUserEMoney = Get_UserEMoney()
	if not (nUserEMoney >= nNeedEMoney) then
		LinkNpcGossipFunc_New(nNpcId,"5-3")
		return
	end
	
	-- 空间不足
	local tTemp = CommonFunc_Copy(tPlayerBargain_WareItem[nNpcType])
	if tTemp["NeedSpace"] ~= nil then
		if not User_CheckLeftSpace(nItemNum * tTemp["NeedSpace"]) then
			LinkNpcGossipFunc_New(nNpcId,"3-1")
			return
		end
	end
	
	-- 成功
	if User_AddEMoney(-nNeedEMoney) then
		-- 减少库存
		Sys_SetSynaGlobalDataStr(nGlobalId,nGlobPos,tostring(nStock - nItemNum))

		-- 给奖励
		tTemp["RewardItem"][1]["Attr"] = string.format("0 %d",nItemNum)
		tTemp["Log"] = string.format(tPlayerBargain_WareItem[nNpcType]["Log"],nNeedEMoney,nItemNum)
		if RewardTemplate_UseItem(tTemp) then
			local nItemId = tTemp["RewardItem"][1]["Id"]
			local sWareName = Get_ItemtypeName(nItemId)
			
			-- 记录log
			local sLog = string.format(tPlayerBargain_Log["BuyItem"],nNeedEMoney,nItemId,nItemNum)
			local sEmoneyLog = string.format(tPlayerBargain_EmoneyLog[nNpcType],nNeedEMoney,nNeedEMoney)
			Sys_SaveActionFestivalLog(sLog)
			Sys_SaveEmoneyBuy(sEmoneyLog)
			
			-- 发邮件
			PlayerBargain_Mail(nItemNum,sWareName)
		end
		
		-- -- 购买成功光效
		-- PlayerBargain_PlayEffect("self",nNpcType,"BuySuccess")

		-- 返回主对白
		PlayerBargain_CutNpcMain(nNpcId)
	end
end

------------------------------------------------------------------------------
-- 换促销商品NPC外形
-- function PlayerBargain_MoveNpc(nNpcId)
	-- local nGlobalId,nGlobPos,nMaxPrice,nMinPrice,nNpcType = PlayerBargain_GetNpcData(nNpcId)
	-- local nNowPrice = Get_SysDynaGlobalData(nGlobalId,nGlobPos)
	-- local nPhase = 0
	-- for i,nPrice in ipairs(tPlayerBargain_Npc2Data[nNpcType]["Price"]) do
		-- if nNowPrice <= nPrice then
			-- nPhase = i
		-- end
	-- end
	
	-- -- 活动地图坐标
	-- local nActMap = tPlayerBargain_Npc2Data[nNpcType]["ActMap"][1]
	-- local nActPosX = tPlayerBargain_Npc2Data[nNpcType]["ActMap"][2]
	-- local nActPosY = tPlayerBargain_Npc2Data[nNpcType]["ActMap"][3]
	-- -- 集中营坐标
	-- local nAftMap = tPlayerBargain_Npc2Data[nNpcType]["AftMap"][1]
	-- local nAftPosX = tPlayerBargain_Npc2Data[nNpcType]["AftMap"][2]
	-- local nAftPosY = tPlayerBargain_Npc2Data[nNpcType]["AftMap"][3]

	
	-- for nLev,nNewNpcId in ipairs(tPlayerBargain_Npc2Data[nNpcType]["Npc"]) do
		-- local nNpcMapId = NpcPosition_Get(nNewNpcId)
		
		-- -- 该NPC不存在
		-- if nNpcMapId == nil then
			-- return
		-- end
		
		-- if nLev == nPhase then
			-- -- 判断是否已在活动地图内
			-- if nNpcMapId ~= nActMap then
				-- Npc_MoveNpcPos(nNewNpcId,nActMap,nActPosX,nActPosY)
			-- end
		-- else
			-- -- 判断是否已在集中营
			-- if nNpcMapId ~= nAftMap then
				-- Npc_MoveNpcPos(nNewNpcId,nAftMap,nAftPosX,nAftPosY)
			-- end
		-- end
	-- end
-- end
---------------------------------------
-- 玩家上线触发
function PlayerBargain_Login()
	-- 活动后
	if not Sys_ChkFullTime(tActivityTime["JanuaPro"]["ActTime"]) then
		return
	end
	
	-- 砍价次数stc
	local nEvent_1 = tPlayerBargain_Stc[1]["EventData"]
	local nType_1 = tPlayerBargain_Stc[1]["TypeData"]
	
	-- stc百位为0，则初始化次数
	local nStcValue = Get_UserStatisticValue(nEvent_1,nType_1)
	local nTemp = math.modf(nStcValue / tPlayerBargain_Stc[1]["MarkBit"])
	if nTemp <= 0 then
		Task_SetStatistic(nEvent_1,nType_1,tPlayerBargain_Stc[1]["CutSum"] + tPlayerBargain_Stc[1]["MarkBit"],1)
		Task_SetStcTimestamp(nEvent_1,nType_1,0)
	end
	
	-- 初始化之后，隔天重置次数
	if Task_StcInterval(nEvent_1,nType_1,1,4) then
		Task_SetStatistic(nEvent_1,nType_1,tPlayerBargain_Stc[1]["CutSum"] + tPlayerBargain_Stc[1]["MarkBit"],1)
		Task_SetStcTimestamp(nEvent_1,nType_1,0)
	end
end

function PlayerBargain_UserLogin() 
	-- 可获得邮件次数stc掩码值与临时表数据是否一致
	local nEvent_3 = tPlayerBargain_Stc[3]["EventData"]
	local nType_3 = tPlayerBargain_Stc[3]["TypeData"]
	local nValue_3 = tPlayerBargain_Stc[3]["Value"]
	-- 隔天重置
	if not Task_ChkStcValue(nEvent_3,nType_3,"==",0) then
		if Task_StcInterval(nEvent_3,nType_3,1,4) then
			Task_SetStatistic(nEvent_3,nType_3,0,1)
			Task_SetStcTimestamp(nEvent_3,nType_3,0)
		end
	end
	
	local nNowUserId = Get_UserId()
	if next(tPlayerBargain_CutPlayer) ~= nil then
		for _,v in ipairs(tPlayerBargain_CutPlayer) do
			if v.UserId == nNowUserId then
				if v.Mail == nil then
					v.Mail = 0
				end
				
				local nStcValue = Get_UserStatisticValue(nEvent_3,nType_3)
				if nStcValue <= v.Mail then
					Task_SetStatistic(nEvent_3,nType_3,v.Mail,1)
				else
					v.Mail = nStcValue
				end
				break
			end
		end
	end
end

---------------------------------------
-- 重置数据
function PlayerBargain_Reset()
	-- 活动后
	if not Sys_ChkFullTime(tActivityTime["JanuaPro"]["ActTime"]) then
		return
	end

	-- 判断是否已重置
	local nNewGlobalId = tPlayerBargain_Data["Reset"][1]
	local nNewGlobPos = tPlayerBargain_Data["Reset"][2]
	local nResetValue = Get_SysDynaGlobalData(nNewGlobalId,nNewGlobPos)
	if nResetValue >= 1 then
		return
	end
	
	-- 重置库存
	for _,v in ipairs(tPlayerBargain_Npc2Data) do
		local nGlobalId = v["GlobId"][1]
		local nGlobPos = v["GlobId"][2]
		local nMaxPrice = v["Price"][1]
		local nIniStock = v["IniStock"]
		Sys_SetSynaGlobalData(nGlobalId,nGlobPos,nMaxPrice)
		Sys_SetSynaGlobalDataStr(nGlobalId,nGlobPos,tostring(nIniStock))
		
		-- for nNum = #v["Npc"] ,1,-1  do
			-- PlayerBargain_MoveNpc(v["Npc"][nNum])
		-- end
	end
	
	-- 重置全服公告动态码
	local tAllGlobal = tPlayerBargain_CutBroad["CutAllNum"]
	local tBroadGlobal = tPlayerBargain_CutBroad["CutBroadNum"]
	Sys_SetSynaGlobalData(tAllGlobal[1],tAllGlobal[2],0)
	Sys_SetSynaGlobalData(tBroadGlobal[1],tBroadGlobal[2],0)

	-- 关闭开关
	Sys_SetSynaGlobalData(nNewGlobalId,nNewGlobPos,1)
	
	-- 临时表重置
	tPlayerBargain_CutPlayer = {}
end

-- 开关重置
function PlayerBargain_ResetBac()
	-- 活动后
	if not Sys_ChkFullTime(tActivityTime["JanuaPro"]["ActTime"]) then
		return
	end
	
	-- 判断是否已重置
	local nGlobalId = tPlayerBargain_Data["Reset"][1]
	local nGlobPos = tPlayerBargain_Data["Reset"][2]
	local nResetValue = Get_SysDynaGlobalData(nGlobalId,nGlobPos)

	-- 打开开关
	if nResetValue >= 1 then
		Sys_SetSynaGlobalData(nGlobalId,nGlobPos,0)
	end
end
---------------------------------------
-- -- 时间自检移出促销Npc
-- function PlayerBargain_StartNpc()
	-- -- 动态存储表商品原价初始化
	-- if Sys_ChkFullTime(tActivityTime["JanuaPro"]["ActTime"]) then
		-- for _,tData in ipairs(tPlayerBargain_Npc2Data) do
			-- local nGlobalId = tData["GlobId"][1]
			-- local nGlobPos = tData["GlobId"][2]
			-- local nMaxPrice = tData["Price"][1]
			-- local nIniStock = tData["IniStock"]
			-- local nNowPrice = Get_SysDynaGlobalData(nGlobalId,nGlobPos)
			-- if nNowPrice <= 0 then
				-- Sys_SetSynaGlobalData(nGlobalId,nGlobPos,nMaxPrice)
				-- Sys_SetSynaGlobalDataStr(nGlobalId,nGlobPos,tostring(nIniStock))
			-- end
		-- end
	-- end

	-- -- 活动后
	-- if not Sys_ChkFullTime(tActivityTime["JanuaPro"]["ActTime"]) then
		-- -- 移回集中营
		-- for _,w in ipairs(tPlayerBargain_Npc2Data) do
			-- for _,nNpcId in ipairs(w["Npc"]) do
				-- local nNpcMapId = NpcPosition_Get(nNpcId)
				-- local nAftMap = w["AftMap"][1]
				-- local nAftPosX = w["AftMap"][2]
				-- local nAftPosY = w["AftMap"][3]
				
				-- -- 该NPC不存在
				-- if nNpcMapId == nil then
					-- return
				-- end
				
				-- -- 判断是否已在集中营
				-- if nNpcMapId ~= nAftMap then
					-- Npc_MoveNpcPos(nNpcId,nAftMap,nAftPosX,nAftPosY)
				-- end
			-- end
		-- end
		
		-- return
	-- end

	-- for _,v in ipairs(tPlayerBargain_Npc2Data) do
		-- for nNum = #v["Npc"] ,1,-1  do
			-- PlayerBargain_MoveNpc(v["Npc"][nNum])
		-- end
	-- end
-- end

---------------------------------------物品使用函数---------------------------------------------
-- 销售返利气力丸
function PlayerBargain_OpenPag(nItemId,sItemName)
	--检测数量
	local nItemNum = Get_CountItemType(nItemId,0)
	-- 过期
	if not Sys_ChkFullTime(tActivityTime["JanuaPro"]["ActTime"]) then
		if Item_ChkMulItem(nItemId,nItemId,nItemNum) and Item_DelMulItem(nItemId,nItemId,nItemNum) then
			User_TalkChannel2005(tPlayerBargain_Text[nItemId]["DelItem"])
		end
	return
	end

	local nValue = tPlayerBargain_ItemWard[nItemId]["RewardStrengthValue"]["Value"]
	-- if Item_ChkMulItem(nItemId,nItemId,nItemNum) then
		-- local sText111 = string.format(tPlayerBargain_Text[nItemId]["Text111"],nItemNum,nItemNum * nValue)
		-- local sFunc111 = string.format("PlayerBargain_GetStrength</N>%d</N>%d</N>%d",nItemId,nItemNum,nItemNum * nValue)
		-- tItem[nItemId]["Text111"] = sText111
		-- tItem[nItemId]["OptionFunc111"] = sFunc111
		-- LinkItemGossipFunc_New(nItemId,"1-1")
	-- end
	
	PlayerBargain_GetStrength(nItemId,nItemNum,nItemNum * nValue)
end

-- 获得气力值
function PlayerBargain_GetStrength(nItemId,nItemNum,nAllValue)
	-- 过期
	if not Sys_ChkFullTime(tActivityTime["JanuaPro"]["ActTime"]) then
		User_TalkChannel2005(tPlayerBargain_Text[nItemId]["DelItem"])
		return
	end
	
	-- 检测数量
	if Item_ChkMulItem(nItemId,nItemId,nItemNum) and Item_DelMulItem(nItemId,nItemId,nItemNum) then
		local tReward = CommonFunc_Copy(tPlayerBargain_ItemWard[nItemId])
		tReward["RewardStrengthValue"]["Value"] = nAllValue
		tReward["Log"] = string.format(tReward["Log"],nItemNum,nAllValue)
		tReward["Talk"] = string.format(tReward["Talk"],nItemNum,nAllValue)
		RewardTemplate_UseItem(tReward)
	end
end

--打开赤炼石礼包对白
function PlayerBargain_PackText(nItemId,nType)
	tItem[nItemId] = tItem[nItemId] or {}
	tItem[nItemId]["DialogueText"] =tPlayerBargain_Text[3306957][nType]
	tItem[nItemId]["Text1-1"] = {111}
	tItem[nItemId]["tOption1-1"] = {111,112}
	tItem[nItemId]["OptionPoint111"]="1-2"
	tItem[nItemId]["ChkFunc1-1"] =function()
	local nEmoney = tPlayerBargain_Reward[nItemId]["DecEMoney"]
		tItem[nItemId]["Text111"]=string.format(tPlayerBargain_Text[3306957][nType]["Text111"],nEmoney)
		return true
	end
--二次确认
	tItem[nItemId]["Text1-2"] = {211}
	tItem[nItemId]["tOption1-2"] = {211,212}
	tItem[nItemId]["ChkFunc1-2"] =function()
	local nEmoney = tPlayerBargain_Reward[nItemId]["DecEMoney"]
		tItem[nItemId]["Text211"]=string.format(tPlayerBargain_Text[3306957][nType]["Text211"],nEmoney)
		return true
	end
	tItem[nItemId]["OptionFunc211"]="PlayerBargain_OpenStonePack</N>"..nItemId
end
--打开赤炼石礼包
function PlayerBargain_OpenStonePack(nItemId)
	--检测当前是否为打开礼包时间内
	local nItemNum = Get_CountItemType(nItemId,0)
	if not Sys_ChkFullTime(tActivityTime["JanuaPro"]["OpenTime"]) then
		if Item_ChkMulItem(nItemId,nItemId,nItemNum) and Item_DelMulItem(nItemId,nItemId,nItemNum) then
		User_TalkChannel2005(tPlayerBargain_Text["OutTIme"])
		end
	return
	end
	
	--检测玩家是否拥有足够天石
	local nEmoney = tPlayerBargain_Reward[nItemId]["DecEMoney"]
	local nUserEmoney = Get_UserEMoney()
	if not (nUserEmoney >= nEmoney) then
		User_TalkChannel2005(tPlayerBargain_Text["NoEmoney"])
		return
	end
	
	--检测背包空间
	if not RewardTemplate_CheckSpace(tPlayerBargain_Reward[nItemId]) then
		return
	end
	
	--扣除天石给奖励
	if User_AddEMoney(-nEmoney) then
		RewardTemplate_UseItem(tPlayerBargain_Reward[nItemId])
		Sys_SaveEmoneyBuy(tPlayerBargain_Reward[nItemId]["EmoneyLog"])
	end
end
---------------------------------------NPC配置---------------------------------------------
-- 主NPC【齐侃嘉】
tNpcFace[5922] = 13
tNpcGossip[22430] = tNpcGossip[22430] or DefaultNpc:new{}
tNpcGossip[22430]["OptionHidden"] = 1
tNpcGossip[22430]["DialogueText"] = tPlayerBargain_Text[22430]
-- 活动前
tNpcGossip[22430]["Text1-1"] = {111,112,113,114,115,116,117,118}
tNpcGossip[22430]["tOption1-1"] = {111}
tNpcGossip[22430]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tActivityTime["JanuaPro"]["BefTime"])
end
-- 活动后
tNpcGossip[22430]["Text1-2"] = {111,112,113,114,121}
tNpcGossip[22430]["tOption1-2"] = {121}
tNpcGossip[22430]["ChkFunc1-2"] = function ()
	return not Sys_ChkFullTime(tActivityTime["JanuaPro"]["ActTime"])
end
-- 活动中（等级不足）
tNpcGossip[22430]["Text1-3"] = {111,112,113,114,131,132,133,134}
tNpcGossip[22430]["tOption1-3"] = {131}
tNpcGossip[22430]["ChkFunc1-3"] = function ()
	local nLevel = tPlayerBargain_Data["Level"]
	local nMete = tPlayerBargain_Data["Mete"]
	return not User_JudgeLevelAndMetempsychosis(nLevel,nMete)
end
-- 活动中（歇业）
tNpcGossip[22430]["Text1-4"] = {111,112,113,114,141,142,143}
tNpcGossip[22430]["tOption1-4"] = {141}
tNpcGossip[22430]["ChkFunc1-4"] = function ()
	return not Sys_ChkDayTime(tActivityTime["JanuaPro"]["ActDayTime"])
end
-- 活动中（营业）
tNpcGossip[22430]["Text1-5"] = {111,112,113,114,151,152,153}
tNpcGossip[22430]["tOption1-5"] = {151,152}
tNpcGossip[22430]["OptionPoint151"]="2-1"
tNpcGossip[22430]["OptionPoint152"]="3-1"

-- 砍价规则
tNpcGossip[22430]["Text2-1"] = {211,212,213,214,215,216,217,218,219,2110,2111}
tNpcGossip[22430]["tOption2-1"] = {211}
tNpcGossip[22430]["OptionFunc211"] = "PlayerBargain_FindWay</N>22430</N>1"
-- 已经歇业
tNpcGossip[22430]["Text2-2"] = {221}
tNpcGossip[22430]["tOption2-2"] = {221}

-- 购买商品
tNpcGossip[22430]["Text3-1"] = {311,312,313,314,315,316,317,318,319,3110,3111}
tNpcGossip[22430]["tOption3-1"] = {311,312}
tNpcGossip[22430]["OptionFunc311"] = "PlayerBargain_FindWay</N>22430</N>1"
tNpcGossip[22430]["OptionFunc312"] = "PlayerBargain_FindWay</N>22430</N>2"
-- 已经歇业
tNpcGossip[22430]["Text3-2"] = {321}
tNpcGossip[22430]["tOption3-2"] = {321}

--------------------------------------
-- 【促销】惠多多
tNpcFace[5923] = 231
tNpcGossip[22431] = tNpcGossip[22431] or DefaultNpc:new{}
tNpcGossip[22431]["OptionHidden"] = 1
tNpcGossip[22431]["DialogueText"] = tPlayerBargain_Text[22431]
-- 活动前
tNpcGossip[22431]["Text1-1"] = {111,112,113,114,115,116}
tNpcGossip[22431]["tOption1-1"] = {111}
tNpcGossip[22431]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tActivityTime["JanuaPro"]["BefTime"])
end
-- 活动后
tNpcGossip[22431]["Text1-2"] = {111,112,113,114,121}
tNpcGossip[22431]["tOption1-2"] = {121}
tNpcGossip[22431]["ChkFunc1-2"] = function ()
	return not Sys_ChkFullTime(tActivityTime["JanuaPro"]["ActTime"])
end
-- 活动中（等级不足）
tNpcGossip[22431]["Text1-3"] = {111,112,113,114,131,132,133,134}
tNpcGossip[22431]["tOption1-3"] = {131}
tNpcGossip[22431]["ChkFunc1-3"] = function ()
	local nLevel = tPlayerBargain_Data["Level"]
	local nMete = tPlayerBargain_Data["Mete"]
	return not User_JudgeLevelAndMetempsychosis(nLevel,nMete)
end
-- 活动中（歇业）
tNpcGossip[22431]["Text1-4"] = {111,112,113,114,141,142,143}
tNpcGossip[22431]["tOption1-4"] = {141}
tNpcGossip[22431]["ChkFunc1-4"] = function ()
	return not Sys_ChkDayTime(tActivityTime["JanuaPro"]["ActDayTime"])
end
-- 活动中（营业）
tNpcGossip[22431]["Text1-5"] = {111,112,113,114,151,152,153}
tNpcGossip[22431]["tOption1-5"] = {151,152}
tNpcGossip[22431]["OptionFunc151"] = "PlayerBargain_OpenShop</N>22431"

--------------------------------------
-- 【商品】所有商品NPC通用
tNpcGossip[22432] = tNpcGossip[22432] or DefaultNpc:new{}
tNpcGossip[22432]["OptionHidden"] = 1
tNpcGossip[22432]["DialogueText"] = tPlayerBargain_Text[22432]
-- 活动前
tNpcGossip[22432]["Text1-1"] = {111,112,113,114,115,116}
tNpcGossip[22432]["tOption1-1"] = {111}
-- 活动后
tNpcGossip[22432]["Text1-2"] = {121,122,123}
tNpcGossip[22432]["tOption1-2"] = {121}
-- 活动中（等级不足）
tNpcGossip[22432]["Text1-3"] = {131,132,133,134,135,136,137}
tNpcGossip[22432]["tOption1-3"] = {131}
-- 活动中（歇业）
tNpcGossip[22432]["Text1-4"] = {141,142,143}
tNpcGossip[22432]["tOption1-4"] = {141}
-- 活动中（营业）
tNpcGossip[22432]["Text1-5"] = {151,152,153,154,155,156,157,158,159,1515,1510,1511}
tNpcGossip[22432]["tOption1-5"] = {151,152,153}
tNpcGossip[22432]["OptionFunc151"]="PlayerBargain_WillCut</N>22432"
tNpcGossip[22432]["OptionFunc152"]="PlayerBargain_BuyWare</N>22432"
tNpcGossip[22432]["OptionFunc153"]="PlayerBargain_DoBuybatch</N>22432"
-- 无砍价次数
tNpcGossip[22432]["Text2-1"] = {211,212}
tNpcGossip[22432]["tOption2-1"] = {211}

-- 【购买1件】空间不足
tNpcGossip[22432]["Text3-1"] = {311}
tNpcGossip[22432]["tOption3-1"] = {311}

-- 【购买1件】库存不足
tNpcGossip[22432]["Text3-2"] = {321,322,323}
tNpcGossip[22432]["tOption3-2"] = {321}

-- 【购买1件】未达最低价（二次确认）
tNpcGossip[22432]["Text3-3"] = {331,332}
tNpcGossip[22432]["tOption3-3"] = {331,332,333}

-- 【购买1件】已达最低价（二次确认）
tNpcGossip[22432]["Text3-4"] = {341}
tNpcGossip[22432]["tOption3-4"] = {341,342,343}

-- 【购买1件】天石不足
tNpcGossip[22432]["Text3-5"] = {351}
tNpcGossip[22432]["tOption3-5"] = {351}

-- 【批量购买】输入的数值不对
tNpcGossip[22432]["Text5-1"] = {511}
tNpcGossip[22432]["tOption5-1"] = {511}


-- 【批量购买】超出库存
tNpcGossip[22432]["Text5-2"] = {521}
tNpcGossip[22432]["tOption5-2"] = {521}

-- 【批量购买】天石不足
tNpcGossip[22432]["Text5-3"] = {531}
tNpcGossip[22432]["tOption5-3"] = {531}

-- 【批量购买】二次确认
tNpcGossip[22432]["Text5-4"] = {541}
tNpcGossip[22432]["tOption5-4"] = {541,542,543}

-- 其他促销NPC对白通用22432 的模板
tNpcGossip[22433] = tNpcGossip[22433] or CommonFunc_Copy(tNpcGossip[22432])
tNpcGossip[22434] = tNpcGossip[22434] or CommonFunc_Copy(tNpcGossip[22432])
tNpcGossip[22435] = tNpcGossip[22435] or CommonFunc_Copy(tNpcGossip[22432])
tNpcGossip[22436] = tNpcGossip[22436] or CommonFunc_Copy(tNpcGossip[22432])
tNpcGossip[22437] = tNpcGossip[22437] or CommonFunc_Copy(tNpcGossip[22432])
tNpcGossip[22438] = tNpcGossip[22438] or CommonFunc_Copy(tNpcGossip[22432])
tNpcGossip[22439] = tNpcGossip[22439] or CommonFunc_Copy(tNpcGossip[22432])
tNpcGossip[22440] = tNpcGossip[22440] or CommonFunc_Copy(tNpcGossip[22432])
tNpcGossip[22441] = tNpcGossip[22441] or CommonFunc_Copy(tNpcGossip[22432])
tNpcGossip[22442] = tNpcGossip[22442] or CommonFunc_Copy(tNpcGossip[22432])

-- 其他促销NPC对白通用22432 的模板
tPlayerBargain_Text[22433] = tPlayerBargain_Text[22433] or CommonFunc_Copy(tPlayerBargain_Text[22432])
tPlayerBargain_Text[22434] = tPlayerBargain_Text[22434] or CommonFunc_Copy(tPlayerBargain_Text[22432])
tPlayerBargain_Text[22435] = tPlayerBargain_Text[22435] or CommonFunc_Copy(tPlayerBargain_Text[22432])
tPlayerBargain_Text[22436] = tPlayerBargain_Text[22436] or CommonFunc_Copy(tPlayerBargain_Text[22432])
tPlayerBargain_Text[22437] = tPlayerBargain_Text[22437] or CommonFunc_Copy(tPlayerBargain_Text[22432])
tPlayerBargain_Text[22438] = tPlayerBargain_Text[22438] or CommonFunc_Copy(tPlayerBargain_Text[22432])
tPlayerBargain_Text[22439] = tPlayerBargain_Text[22439] or CommonFunc_Copy(tPlayerBargain_Text[22432])
tPlayerBargain_Text[22440] = tPlayerBargain_Text[22440] or CommonFunc_Copy(tPlayerBargain_Text[22432])
tPlayerBargain_Text[22441] = tPlayerBargain_Text[22441] or CommonFunc_Copy(tPlayerBargain_Text[22432])
tPlayerBargain_Text[22442] = tPlayerBargain_Text[22442] or CommonFunc_Copy(tPlayerBargain_Text[22432])

----------------------------------------------------------------------
--头像
tItemFace[3306957] = 428
tItemFace[3306958] = 428
tItemFace[3306959] = 428
tItemFace[3306960] = 428
tItemFace[3306961] = 428
tItemFace[3306962] = 430
tItemFace[3306963] = 430
tItemFace[3306964] = 430
tItemFace[3306965] = 430
tItemFace[3306966] = 430
-- --赤炼石礼包
for nItemId= 3306957,3306961 do
	PlayerBargain_PackText(nItemId,1)
end

for nItemId= 3306962,3306966 do
	PlayerBargain_PackText(nItemId,2)
end
-- 销售返利气力丸
tItemFace[3306968] = 740
tItem[3306968] = tItem[3306968] or {}
tItem[3306968]["DialogueText"] = tPlayerBargain_Text[3306968]
tItem[3306968]["Function"] = function(nItemId,sItemName)
	PlayerBargain_OpenPag(nItemId,sItemName)
end
tItem[3306968]["Text1-1"] = {111,112}
tItem[3306968]["tOption1-1"] = {111,112}
tItem[3306968]["OptionFunc111"] = ""


-- 直接使用物品
tItem[3306969] = tItem[3306969] or {}
tItem[3306970] = tItem[3306969] or {}
tItem[3306971] = tItem[3306969] or {}
tItem[3306972] = tItem[3306969] or {}
tItem[3306973] = tItem[3306969] or {}
tItem[3306974] = tItem[3306969] or {}
tItem[3306975] = tItem[3306969] or {}
tItem[3306976] = tItem[3306969] or {}
tItem[3306977] = tItem[3306969] or {}
tItem[3306995] = tItem[3306969] or {}
tItem[3306996] = tItem[3306969] or {}
tItem[3307108] = tItem[3306969] or {}
tItem[3306969]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItem(tPlayerBargain_ItemWard[nItemId])
end




----------------------------------------------------------------------
-- 玩家上线触发
table.insert(tSystem_PlayLogin_Func,PlayerBargain_Login)
table.insert(tSystem_PlayLogin_Func,PlayerBargain_UserLogin)


-- -- 每日0点重置
-- tOntimerMin_HM[0000] = tOntimerMin_HM[0000] or {}
-- table.insert(tOntimerMin_HM[0000],PlayerBargain_Reset)
-- tOntimerMin_HM[0001] = tOntimerMin_HM[0001] or {}
-- table.insert(tOntimerMin_HM[0001],PlayerBargain_Reset)
-- tOntimerMin_HM[0002] = tOntimerMin_HM[0002] or {}
-- table.insert(tOntimerMin_HM[0002],PlayerBargain_Reset)


-- -- 打开开关
-- tOntimerMin_HM[2357] = tOntimerMin_HM[2357] or {}
-- table.insert(tOntimerMin_HM[2357],PlayerBargain_ResetBac)
-- tOntimerMin_HM[2358] = tOntimerMin_HM[2358] or {}
-- table.insert(tOntimerMin_HM[2358],PlayerBargain_ResetBac)
-- tOntimerMin_HM[2359] = tOntimerMin_HM[2359] or {}
-- table.insert(tOntimerMin_HM[2359],PlayerBargain_ResetBac)


-- -- 时间自检触发
-- tSystem_Prompet_Func = tSystem_Prompet_Func or {}
-- table.insert(tSystem_Prompet_Func,PlayerBargain_StartNpc)

local tPlayerBargain_OnTime = {}
	-- 每日0点重置
	tPlayerBargain_OnTime[1] = {}
	tPlayerBargain_OnTime[1]["Type"] =6
	tPlayerBargain_OnTime[1]["TimeType"] = 4
	tPlayerBargain_OnTime[1]["Multiple"]= {}
	tPlayerBargain_OnTime[1]["Multiple"][1]= "00:00 00:00"
	tPlayerBargain_OnTime[1]["Multiple"][2]= "00:01 00:01"
	tPlayerBargain_OnTime[1]["Multiple"][3]= "00:02 00:02"
	tPlayerBargain_OnTime[1]["Func"]= PlayerBargain_Reset
	table.insert(tSystemTime_InitialData,tPlayerBargain_OnTime[1])

	-- 打开开关
	tPlayerBargain_OnTime[2] = {}
	tPlayerBargain_OnTime[2]["Type"] =6
	tPlayerBargain_OnTime[2]["TimeType"] = 4
	tPlayerBargain_OnTime[2]["Multiple"]= {}
	tPlayerBargain_OnTime[2]["Multiple"][1]= "23:57 23:57"
	tPlayerBargain_OnTime[2]["Multiple"][2]= "23:58 23:58"
	tPlayerBargain_OnTime[2]["Multiple"][3]= "23:59 23:59"
	tPlayerBargain_OnTime[2]["Func"]= PlayerBargain_ResetBac
	table.insert(tSystemTime_InitialData,tPlayerBargain_OnTime[2])
