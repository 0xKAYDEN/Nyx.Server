------------------------------------------------------------------------------------
--Name:		160616[英文征服][活动脚本]7月赠品大狂欢
--Creator: 	兰瑞妹
--Created:	2016/06/20
------------------------------------------------------------------------------------
-- 20170807 ，by  兰瑞妹
-- 1. 非赠点换赠点：兑换上限由17000改为34000
-- 2. 赠品消耗品促销：单个角色限量数在原来的基础上赠加一倍。

-- 命名前缀
-- BigCarnival_EMoneyMono_

-- #stc 掩码说明 
-- #stc(146,48) 购买非赠天石不能超过34000  ==34000上限（修改）
-- #stc(146,49) 赠点购买上限17000 ==17000上限
--170612[英文征服][活动脚本]7月暑期赠品大狂欢(7.13-7.26)
--以下掩码为复用[英文征服][活动脚本]3月赠品狂欢掩码
--stc(151,78)			记录玩家购买龙珠上限
--stc(151,79)			记录玩家购买赤炼石+3石数量
--stc(151,80)			记录玩家购买小固化石数量
--stc(151,81)			记录玩家购买气力值1000数量
--stc(151,82)			记录玩家购买金刚尖钻数量
--stc(161,58)			记录玩家购买七星宝钻数量

--stc(165,08)			天石换购优惠券（1:4）兑换额度，上限10000
--stc(165,09)			天石换购优惠券（1:5）兑换额度，上限10000
--stc(165,10)			天石换购优惠券（1:6）兑换额度，上限20000

-- GlobalId  51596 怀旧服不卖道士浮尘

-- 20180111 二月赠品狂欢(只上老服) ，modified by pyf
-- 1、修改天石兑换赠点的比例为 1:4
-- 2、新增2000CP 和 2W CP的礼包，老服兑换赠点会给这两个礼包


-- 20180202 , by 潘云锋
-- 赠品大狂欢（3.22）
-- 1、增加一个NPC专门卖特殊道具

-- #stc 掩码说明
--stc(173,04)			记录玩家购买【破城火雷*10】			上限1次
--stc(173,05)			记录玩家购买【金刚灵果*1】			上限1次
--stc(173,06)			记录玩家购买【辟邪护符*20】         上限1次
--stc(173,07)			记录玩家购买【流星泪*10】           上限1次
--stc(173,08)			记录玩家购买【炫舞者就职公文*1】    上限1次
--stc(173,09)			记录玩家购买【被偷走的马鞍*40】     上限1次
--stc(173,10)			记录玩家购买【纯净元气】            上限3次
--stc(173,11)			记录玩家购买【涅槃经】              上限2次
--stc(173,12)			记录玩家购买【降魔咒】              上限1次
--stc(173,13)			记录玩家购买【白色恶之花】          上限60次
--stc(173,14)			记录玩家购买【红色恶之花】          上限60次
--stc(173,15)			记录玩家购买【祖母绿】              上限30次
--stc(173,16)			记录玩家购买【杜康酒】              上限30次

--stc(173,26)			记录玩家今日是否屏蔽二次确认

-------------------------------改版履历-----------------------------
--###180110[英文征服][活动脚本]2月赠品大狂欢制作			modified by pyf
-- 20180111 二月赠品狂欢(只上老服)
-- 1、修改天石兑换赠点的比例为 1:4
-- 2、新增2000CP 和 2W CP的礼包，老服兑换赠点会给这两个礼包
--
-- ###180312[英文征服][活动脚本]4月赠品大狂欢（4.19-5.5）	modified by pyf
--任务需求:
-- 更新时间：
-- 4月19日（周四）例行维护时 全区全服
-- 活动时间：
-- 4.19-5.5
-- 活动说明：
-- 1. 基本复用2018年2月赠品大狂欢，修改兑换比例为1比3
-- 2. 赠品装备促销增加道士拂尘的售卖，修改部分装备价格，见黄色部分
-- 3. 赠品外套部分全部换新的
-- 4. 新增黄色神纹相关售卖，支持玩家使用赠点购买
-- ******************************************************************
-- *欧桂容(市场运营中心海外事业部英文市场二组)在2018-03-15 15:50修改任务(任务号：8510522)时补充了如下需求：
-- ******************************************************************
-- 更新时间：
-- 改为 4月12日（周四）例行维护时 刷 全区全服
-- 活动时间：
-- 4.12-4.28

--stc(174,95)			记录玩家购买赠品红色可选职业神纹包
--stc(174,96)			记录玩家购买赠品蓝色可选职业神纹包
--stc(174,97)			记录玩家购买赠品黄色神纹精粹*1
--stc(174,98)			记录玩家购买明亮星陨石*1（两天时效）
--stc(174,99)			记录玩家购买赠品随机黄色神纹碎片*1
--stc(175,00)			记录玩家购买赠品黄色神纹-憾星诀*1
--stc(175,01)			记录玩家购买赠品黄色神纹-血回元*1
--stc(175,02)			记录玩家购买赠品黄色神纹-无懈可击*1
--stc(175,03)			记录玩家购买赠品黄色神纹-回灵术*1
--stc(175,04)			记录玩家购买赠品黄色神纹-安魂定魄*1
--stc(175,05)			记录玩家购买赠品黄色神纹-杀破狼*1
--stc(175,06)			记录玩家购买赠品黄色神纹-追命*1
--stc(175,08)			记录玩家购买赠品黄色神纹-破玄元*1
--stc(175,09)			记录玩家购买赠品黄色神纹-万物生*1
--stc(175,10)			记录玩家购买赠品黄色神纹-狂暴克星*1
--stc(175,11)			记录玩家购买赠品黄色神纹-风卷残云*1
--stc(175,12)			记录玩家购买赠品黄色神纹-奔雷不息*1


-- 五月新服新增
--stc(176,63)			记录玩家购买赠品+6马匹
--stc(176,64)			记录玩家购买赠品赤炼石+6
--stc(176,65)			记录玩家购买赠品良品天怒宝石
--stc(176,66)			记录玩家购买赠品地灵天怒宝石
--stc(176,67)			记录玩家购买赠品优质天怒宝石
--stc(176,68)			记录玩家购买赠品优质地灵宝石
--stc(176,69)			记录玩家购买赠品二转令牌
--stc(176,70)			记录玩家金币换购赠点数

-- 八月新增
--stc(179,93)			赠品灵宝葫芦
--stc(179,94)			赠品白色恶之花
--stc(179,95)			赠品红色恶之花

---------------------------------------------------------------------------------------

-- 常量表
local tBigCarnival_EMoneyMono_Count = {}
	-- 活动时间
	tBigCarnival_EMoneyMono_Count["BeforeActivityTime"] = "2018-01-01 00:00 2018-08-06 23:59"
	tBigCarnival_EMoneyMono_Count["ActivityTime"] = tActivityTime["BoundCarnival"]["ActivityTime"]
	tBigCarnival_EMoneyMono_Count["ChrismasActivityTime"] = tActivityTime["BoundCarnival"]["ChrismasActivityTime"]
	tBigCarnival_EMoneyMono_Count["Length"] = 15
	
	-- 怀旧服标志
	tBigCarnival_EMoneyMono_Count["GlobalId"] = 51596
	
	--新老服标志
	tBigCarnival_EMoneyMono_Count["NewGlobalId"] = 51131
	
	--兑换赠点比例
	tBigCarnival_EMoneyMono_Count["ExchangeCPB"] = {}
	tBigCarnival_EMoneyMono_Count["ExchangeCPB"]["Old"] = 3
	tBigCarnival_EMoneyMono_Count["ExchangeCPB"]["New"] = 3
	
-- Log表
local tBigCarnival_EMoneyMono_Log = {}
	tBigCarnival_EMoneyMono_Log["EmoneyLog"] = {}
	tBigCarnival_EMoneyMono_Log["EmoneyLog"][3200569] = "350	21412	0	0	1	"
	tBigCarnival_EMoneyMono_Log["EmoneyLog"][3200570] = "350	21413	0	0	1	"
	
	-- 赠品消耗
	tBigCarnival_EMoneyMono_Log["ConsumeMono"] = "0,%d,0,0,12000438,2,%d,%d"
	tBigCarnival_EMoneyMono_Log["ConsumeEMoney"] = "350	%d	%d	%d	%d	"
	-- 过期删除
	tBigCarnival_EMoneyMono_Log["OverDue"] = "0,0,%d,1,12000438,2,0,0"

local tBigCarnival_EMoneyMono_LogIndex = {}
	tBigCarnival_EMoneyMono_LogIndex[1088000] = 20236
	tBigCarnival_EMoneyMono_LogIndex[730003] = 20237
	tBigCarnival_EMoneyMono_LogIndex[723694] = 20238
	tBigCarnival_EMoneyMono_LogIndex[3200571] = 20239
	tBigCarnival_EMoneyMono_LogIndex[1200005] = 20240
	tBigCarnival_EMoneyMono_LogIndex[1200006] = 20589
	-- ###180312[英文征服][活动脚本]4月赠品大狂欢（4.19-5.5）	modified by pyf
	tBigCarnival_EMoneyMono_LogIndex[3306562] = 31209
	tBigCarnival_EMoneyMono_LogIndex[3306563] = 31210
	tBigCarnival_EMoneyMono_LogIndex[4050001] = 31211
	tBigCarnival_EMoneyMono_LogIndex[3009001] = 31212
	tBigCarnival_EMoneyMono_LogIndex[3306370] = 31202
	tBigCarnival_EMoneyMono_LogIndex[4030201] = 31203
	tBigCarnival_EMoneyMono_LogIndex[4030301] = 31204
	tBigCarnival_EMoneyMono_LogIndex[4030501] = 31205
	tBigCarnival_EMoneyMono_LogIndex[4030801] = 31206
	tBigCarnival_EMoneyMono_LogIndex[4031201] = 31213
	tBigCarnival_EMoneyMono_LogIndex[4030901] = 31214
	tBigCarnival_EMoneyMono_LogIndex[4031001] = 31215
	tBigCarnival_EMoneyMono_LogIndex[4030101] = 31216
	tBigCarnival_EMoneyMono_LogIndex[4030401] = 31217
	tBigCarnival_EMoneyMono_LogIndex[4030601] = 31218
	tBigCarnival_EMoneyMono_LogIndex[4030701] = 31219
	tBigCarnival_EMoneyMono_LogIndex[4031101] = 31220
	-- 180427[英文征服][活动脚本]5月新服活动制作	modified by wzh
	tBigCarnival_EMoneyMono_LogIndex[3308868] = 21414
	-- tBigCarnival_EMoneyMono_LogIndex[730006] = 21415
	tBigCarnival_EMoneyMono_LogIndex[3316204] = 21415
	tBigCarnival_EMoneyMono_LogIndex[700102] = 21416
	tBigCarnival_EMoneyMono_LogIndex[700122] = 21417
	tBigCarnival_EMoneyMono_LogIndex[700103] = 21418
	tBigCarnival_EMoneyMono_LogIndex[700123] = 21419
	tBigCarnival_EMoneyMono_LogIndex[723701] = 21420
	
	--8月赠品大狂欢
	tBigCarnival_EMoneyMono_LogIndex[2100025] = 21580
	tBigCarnival_EMoneyMono_LogIndex[722736] = 21581
	tBigCarnival_EMoneyMono_LogIndex[722732] = 21852
	tBigCarnival_EMoneyMono_LogIndex[4031301] = 21471
	
	--雷神添加相关Log
	tBigCarnival_EMoneyMono_LogIndex[3307467] = 00153
	tBigCarnival_EMoneyMono_LogIndex[711188] = 00154 
	tBigCarnival_EMoneyMono_LogIndex[3307468] = 00155 
	tBigCarnival_EMoneyMono_LogIndex[3307469] = 00156 
	tBigCarnival_EMoneyMono_LogIndex[711679] = 00157 
	tBigCarnival_EMoneyMono_LogIndex[3307470] = 00158 
	tBigCarnival_EMoneyMono_LogIndex[1080001] = 00159 
	tBigCarnival_EMoneyMono_LogIndex[723030] = 00160
	
	--5月周年庆
	tBigCarnival_EMoneyMono_LogIndex[3312619] = 00439 
	tBigCarnival_EMoneyMono_LogIndex[3312620] = 00440 
	tBigCarnival_EMoneyMono_LogIndex[3304062] = 00441 
	tBigCarnival_EMoneyMono_LogIndex[3320470] = 00442
	
	--9月爆爽服
	tBigCarnival_EMoneyMono_LogIndex[3309001] = 00858
	tBigCarnival_EMoneyMono_LogIndex[3312763] = 00859
	
	--1月新年促销
	tBigCarnival_EMoneyMono_LogIndex[3306087] = 00860
	
	--6月暑期促销新增 秘术精华
	tBigCarnival_EMoneyMono_LogIndex[3316203] = 00861
	
	
	local tBigCarnival_EMoneyMono_Option = {}
	tBigCarnival_EMoneyMono_Option[1088000] = "Option3"
	tBigCarnival_EMoneyMono_Option[730003] = "Option4"
	tBigCarnival_EMoneyMono_Option[723694] = "Option5"
	tBigCarnival_EMoneyMono_Option[3200571] = "Option6"
	tBigCarnival_EMoneyMono_Option[1200005] = "Option7"
	tBigCarnival_EMoneyMono_Option[1200006] = "Option14"
	
	-- ###180312[英文征服][活动脚本]4月赠品大狂欢（4.19-5.5）	modified by pyf
	tBigCarnival_EMoneyMono_Option[3306562] = "Option16"
	tBigCarnival_EMoneyMono_Option[3306563] = "Option17"
	tBigCarnival_EMoneyMono_Option[4050001] = "Option18"
	tBigCarnival_EMoneyMono_Option[3009001] = "Option19"
	tBigCarnival_EMoneyMono_Option[3306370] = "Option20"
	tBigCarnival_EMoneyMono_Option[4030201] = "Option21"
	tBigCarnival_EMoneyMono_Option[4030301] = "Option22"
	tBigCarnival_EMoneyMono_Option[4030501] = "Option23"
	tBigCarnival_EMoneyMono_Option[4030801] = "Option24"
	tBigCarnival_EMoneyMono_Option[4031201] = "Option25"
	tBigCarnival_EMoneyMono_Option[4030901] = "Option26"
	tBigCarnival_EMoneyMono_Option[4031001] = "Option27"
	tBigCarnival_EMoneyMono_Option[4030101] = "Option28"
	tBigCarnival_EMoneyMono_Option[4030401] = "Option29"
	tBigCarnival_EMoneyMono_Option[4030601] = "Option30"
	tBigCarnival_EMoneyMono_Option[4030701] = "Option31"
	tBigCarnival_EMoneyMono_Option[4031101] = "Option32"
	-- 180427[英文征服][活动脚本]5月新服活动制作	modified by wzh
	tBigCarnival_EMoneyMono_Option[3308868] = "Option33"
	-- tBigCarnival_EMoneyMono_Option[730006] = "Option34"
	tBigCarnival_EMoneyMono_Option[3316204] = "Option34"
	tBigCarnival_EMoneyMono_Option[700102] = "Option35"
	tBigCarnival_EMoneyMono_Option[700122] = "Option36"
	tBigCarnival_EMoneyMono_Option[700103] = "Option37"
	tBigCarnival_EMoneyMono_Option[700123] = "Option38"
	tBigCarnival_EMoneyMono_Option[723701] = "Option39"
	
	--8月促销活动
	tBigCarnival_EMoneyMono_Option[2100025] = "Option40"
	tBigCarnival_EMoneyMono_Option[722736] = "Option41"
	tBigCarnival_EMoneyMono_Option[722732] = "Option42"
	--赠品黄色神纹-夺魂*1
	tBigCarnival_EMoneyMono_Option[4031301] = "Option43"
	
	--雷神促销新增物品
	tBigCarnival_EMoneyMono_Option[3307467] = "Option44"
	tBigCarnival_EMoneyMono_Option[711188] = "Option45"
	tBigCarnival_EMoneyMono_Option[3307468] = "Option46"
	tBigCarnival_EMoneyMono_Option[3307469] = "Option47"
	tBigCarnival_EMoneyMono_Option[711679] = "Option48"
	tBigCarnival_EMoneyMono_Option[3307470] = "Option49"
	tBigCarnival_EMoneyMono_Option[1080001] = "Option50"
	tBigCarnival_EMoneyMono_Option[723030] = "Option51"
	
	--5月周年庆
	tBigCarnival_EMoneyMono_Option[3312619] = "Option52"
	tBigCarnival_EMoneyMono_Option[3312620] = "Option53"
	tBigCarnival_EMoneyMono_Option[3304062] = "Option54"
	tBigCarnival_EMoneyMono_Option[3320470] = "Option55"
	
	--9月爆爽服
	tBigCarnival_EMoneyMono_Option[3309001] = "Option56"
	tBigCarnival_EMoneyMono_Option[3312763] = "Option57"
	
	--1月新年促销
	tBigCarnival_EMoneyMono_Option[3306087] = "Option58"
	
	--6月暑期促销新增 秘术精华
	tBigCarnival_EMoneyMono_Option[3316203] = "Option59"
	
	
-- 换购所得赠点
local tBigCarnival_EMoneyMono_ChgEMomeyMono = {}
	tBigCarnival_EMoneyMono_ChgEMomeyMono[3200569] = 1500
	tBigCarnival_EMoneyMono_ChgEMomeyMono[3200570] = 15000
	
--换购所得赠点随着兑换值改变而改变
local tBigCarnival_EMoneyMono_NewChgEMomeyMono = {}
tBigCarnival_EMoneyMono_NewChgEMomeyMono[3200569] = {}
tBigCarnival_EMoneyMono_NewChgEMomeyMono[3200569][3] = 3000
tBigCarnival_EMoneyMono_NewChgEMomeyMono[3200569][4] = 4000
tBigCarnival_EMoneyMono_NewChgEMomeyMono[3200569][5] = 5000
tBigCarnival_EMoneyMono_NewChgEMomeyMono[3200569][6] = 6000
tBigCarnival_EMoneyMono_NewChgEMomeyMono[3200569][7] = 7000
tBigCarnival_EMoneyMono_NewChgEMomeyMono[3200569][8] = 8000
tBigCarnival_EMoneyMono_NewChgEMomeyMono[3200569][9] = 3500
tBigCarnival_EMoneyMono_NewChgEMomeyMono[3200569][10] = 4500

tBigCarnival_EMoneyMono_NewChgEMomeyMono[3200570] = {}
tBigCarnival_EMoneyMono_NewChgEMomeyMono[3200570][3] = 30000
tBigCarnival_EMoneyMono_NewChgEMomeyMono[3200570][4] = 40000
tBigCarnival_EMoneyMono_NewChgEMomeyMono[3200570][5] = 50000
tBigCarnival_EMoneyMono_NewChgEMomeyMono[3200570][6] = 60000
tBigCarnival_EMoneyMono_NewChgEMomeyMono[3200570][7] = 70000
tBigCarnival_EMoneyMono_NewChgEMomeyMono[3200570][8] = 80000
tBigCarnival_EMoneyMono_NewChgEMomeyMono[3200570][9] = 35000
tBigCarnival_EMoneyMono_NewChgEMomeyMono[3200570][10] = 45000

tBigCarnival_EMoneyMono_NewChgEMomeyMono[3311606] = {}
tBigCarnival_EMoneyMono_NewChgEMomeyMono[3311606][4] = 4000
tBigCarnival_EMoneyMono_NewChgEMomeyMono[3311607] = {}
tBigCarnival_EMoneyMono_NewChgEMomeyMono[3311607][4] = 40000


tBigCarnival_EMoneyMono_NewChgEMomeyMono[3311604] = {}
tBigCarnival_EMoneyMono_NewChgEMomeyMono[3311604][3] = 3000
tBigCarnival_EMoneyMono_NewChgEMomeyMono[3311604][4] = 4000
tBigCarnival_EMoneyMono_NewChgEMomeyMono[3311604][5] = 5000
tBigCarnival_EMoneyMono_NewChgEMomeyMono[3311604][6] = 6000

tBigCarnival_EMoneyMono_NewChgEMomeyMono[3311605] = {}
tBigCarnival_EMoneyMono_NewChgEMomeyMono[3311605][3] = 30000
tBigCarnival_EMoneyMono_NewChgEMomeyMono[3311605][4] = 40000
tBigCarnival_EMoneyMono_NewChgEMomeyMono[3311605][5] = 50000
tBigCarnival_EMoneyMono_NewChgEMomeyMono[3311605][6] = 60000

--12月赠品大狂欢
local tBigCarnival_EMoneyMono_Christmas_ChgEMomeyMono = {}
tBigCarnival_EMoneyMono_Christmas_ChgEMomeyMono[3] = {}
tBigCarnival_EMoneyMono_Christmas_ChgEMomeyMono[3][3200569] = 3000
tBigCarnival_EMoneyMono_Christmas_ChgEMomeyMono[3][3200570] = 30000
tBigCarnival_EMoneyMono_Christmas_ChgEMomeyMono[3][3311604] = 3000
tBigCarnival_EMoneyMono_Christmas_ChgEMomeyMono[3][3311605] = 30000

tBigCarnival_EMoneyMono_Christmas_ChgEMomeyMono[4] = {}
tBigCarnival_EMoneyMono_Christmas_ChgEMomeyMono[4][3311606] = 4000
tBigCarnival_EMoneyMono_Christmas_ChgEMomeyMono[4][3311607] = 40000
tBigCarnival_EMoneyMono_Christmas_ChgEMomeyMono[4][3311604] = 4000
tBigCarnival_EMoneyMono_Christmas_ChgEMomeyMono[4][3311605] = 40000

tBigCarnival_EMoneyMono_Christmas_ChgEMomeyMono[5] = {}
tBigCarnival_EMoneyMono_Christmas_ChgEMomeyMono[5][3200569] = 5000
tBigCarnival_EMoneyMono_Christmas_ChgEMomeyMono[5][3200570] = 50000
tBigCarnival_EMoneyMono_Christmas_ChgEMomeyMono[5][3311604] = 5000
tBigCarnival_EMoneyMono_Christmas_ChgEMomeyMono[5][3311605] = 50000

tBigCarnival_EMoneyMono_Christmas_ChgEMomeyMono[6] = {}
tBigCarnival_EMoneyMono_Christmas_ChgEMomeyMono[6][3200569] = 6000
tBigCarnival_EMoneyMono_Christmas_ChgEMomeyMono[6][3200570] = 60000
tBigCarnival_EMoneyMono_Christmas_ChgEMomeyMono[6][3311604] = 6000
tBigCarnival_EMoneyMono_Christmas_ChgEMomeyMono[6][3311605] = 60000

tBigCarnival_EMoneyMono_Christmas_ChgEMomeyMono[7] = {}
tBigCarnival_EMoneyMono_Christmas_ChgEMomeyMono[7][3200569] = 7000
tBigCarnival_EMoneyMono_Christmas_ChgEMomeyMono[7][3200570] = 70000
tBigCarnival_EMoneyMono_Christmas_ChgEMomeyMono[8] = {}
tBigCarnival_EMoneyMono_Christmas_ChgEMomeyMono[8][3200569] = 8000
tBigCarnival_EMoneyMono_Christmas_ChgEMomeyMono[8][3200570] = 80000
tBigCarnival_EMoneyMono_Christmas_ChgEMomeyMono[9] = {}
tBigCarnival_EMoneyMono_Christmas_ChgEMomeyMono[9][3200569] = 3500
tBigCarnival_EMoneyMono_Christmas_ChgEMomeyMono[9][3200570] = 35000
tBigCarnival_EMoneyMono_Christmas_ChgEMomeyMono[10] = {}
tBigCarnival_EMoneyMono_Christmas_ChgEMomeyMono[10][3200569] = 4500
tBigCarnival_EMoneyMono_Christmas_ChgEMomeyMono[10][3200570] = 45000









	
-- 物品赠点所需要金币
local tBigCarnival_EMoneyMono_Momey = {}
	tBigCarnival_EMoneyMono_Momey[3200569] = 40000000
	tBigCarnival_EMoneyMono_Momey[3200570] = 400000000

	
-- 物品赠点所需要
local tBigCarnival_EMoneyMono_EMomeyMono = {}

	-- 1500天石赠礼包
	tBigCarnival_EMoneyMono_EMomeyMono[3200569] = 1000
	tBigCarnival_EMoneyMono_EMomeyMono[3307135] = 500  -- 二月赠品狂欢 2000CP
	-- 1250天石赠礼包
	tBigCarnival_EMoneyMono_EMomeyMono[3303675] = 500
	-- 15000天石赠礼包
	tBigCarnival_EMoneyMono_EMomeyMono[3200570] = 10000
	tBigCarnival_EMoneyMono_EMomeyMono[3307136] = 5000  -- 二月赠品狂欢 20000CP
	-- 12500天石赠礼包
	tBigCarnival_EMoneyMono_EMomeyMono[3303676] = 5000
	
	tBigCarnival_EMoneyMono_EMomeyMono[3311606] = 1000
	tBigCarnival_EMoneyMono_EMomeyMono[3311607] = 10000
	
	tBigCarnival_EMoneyMono_EMomeyMono[3311604] = 1000
	tBigCarnival_EMoneyMono_EMomeyMono[3311605] = 10000
	
	-- 赠品龙珠*1
	tBigCarnival_EMoneyMono_EMomeyMono[1088000] = {}
	tBigCarnival_EMoneyMono_EMomeyMono[1088000]["Old"] = 25
	tBigCarnival_EMoneyMono_EMomeyMono[1088000]["New"] = 25
	-- 赠品流星卷*10
	tBigCarnival_EMoneyMono_EMomeyMono[3312763] = {}
	tBigCarnival_EMoneyMono_EMomeyMono[3312763]["Old"] = 199
	tBigCarnival_EMoneyMono_EMomeyMono[3312763]["New"] = 199
	
	-- 赠品赤练石+3*1
	tBigCarnival_EMoneyMono_EMomeyMono[730003] = {}
	tBigCarnival_EMoneyMono_EMomeyMono[730003]["Old"] = 20
	tBigCarnival_EMoneyMono_EMomeyMono[730003]["New"] = 20
	-- 赠品小固化石*1
	tBigCarnival_EMoneyMono_EMomeyMono[723694] = {}
	tBigCarnival_EMoneyMono_EMomeyMono[723694]["Old"] = 110
	tBigCarnival_EMoneyMono_EMomeyMono[723694]["New"] = 110
	-- 气力值1000点
	tBigCarnival_EMoneyMono_EMomeyMono[3200571] = {}
	tBigCarnival_EMoneyMono_EMomeyMono[3200571]["Old"] = 35
	tBigCarnival_EMoneyMono_EMomeyMono[3200571]["New"] = 35
	-- 赠品金刚尖钻*1
	tBigCarnival_EMoneyMono_EMomeyMono[1200005] = {}
	tBigCarnival_EMoneyMono_EMomeyMono[1200005]["Old"] = 500
	tBigCarnival_EMoneyMono_EMomeyMono[1200005]["New"] = 500
	-- 赠品七星宝钻*1
	tBigCarnival_EMoneyMono_EMomeyMono[1200006] = {}
	tBigCarnival_EMoneyMono_EMomeyMono[1200006]["Old"] = 250
	tBigCarnival_EMoneyMono_EMomeyMono[1200006]["New"] = 250
	
	
	-- ###180312[英文征服][活动脚本]4月赠品大狂欢（4.19-5.5）	modified by pyf
	-- 赠品红色可选职业神纹包
	tBigCarnival_EMoneyMono_EMomeyMono[3306562] = {}
	tBigCarnival_EMoneyMono_EMomeyMono[3306562]["Old"] = 166
	tBigCarnival_EMoneyMono_EMomeyMono[3306562]["New"] = 166	
	-- 赠品蓝色可选职业神纹包
	tBigCarnival_EMoneyMono_EMomeyMono[3306563] = {}
	tBigCarnival_EMoneyMono_EMomeyMono[3306563]["Old"] = 166
	tBigCarnival_EMoneyMono_EMomeyMono[3306563]["New"] = 166	
	-- 赠品黄色神纹精粹*1
	tBigCarnival_EMoneyMono_EMomeyMono[4050001] = {}
	tBigCarnival_EMoneyMono_EMomeyMono[4050001]["Old"] = 1
	tBigCarnival_EMoneyMono_EMomeyMono[4050001]["New"] = 1	
	-- 赠品黄色神纹精粹*10礼包
	tBigCarnival_EMoneyMono_EMomeyMono[3309001] = {}
	tBigCarnival_EMoneyMono_EMomeyMono[3309001]["Old"] = 30
	tBigCarnival_EMoneyMono_EMomeyMono[3309001]["New"] = 30
	-- 明亮星陨石*1（两天时效）
	tBigCarnival_EMoneyMono_EMomeyMono[3009001] = {}
	tBigCarnival_EMoneyMono_EMomeyMono[3009001]["Old"] = 10
	tBigCarnival_EMoneyMono_EMomeyMono[3009001]["New"] = 10	
	-- 赠品随机黄色神纹碎片*1
	tBigCarnival_EMoneyMono_EMomeyMono[3306370] = {}
	tBigCarnival_EMoneyMono_EMomeyMono[3306370]["Old"] = 35
	tBigCarnival_EMoneyMono_EMomeyMono[3306370]["New"] = 35
	-- 赠品黄色神纹-憾星诀*1
	tBigCarnival_EMoneyMono_EMomeyMono[4030201] = {}
	tBigCarnival_EMoneyMono_EMomeyMono[4030201]["Old"] = 600
	tBigCarnival_EMoneyMono_EMomeyMono[4030201]["New"] = 600	
	-- 赠品黄色神纹-血回元*1
	tBigCarnival_EMoneyMono_EMomeyMono[4030301] = {}
	tBigCarnival_EMoneyMono_EMomeyMono[4030301]["Old"] = 530
	tBigCarnival_EMoneyMono_EMomeyMono[4030301]["New"] = 530	
	-- 赠品黄色神纹-无懈可击*1
	tBigCarnival_EMoneyMono_EMomeyMono[4030501] = {}
	tBigCarnival_EMoneyMono_EMomeyMono[4030501]["Old"] = 600
	tBigCarnival_EMoneyMono_EMomeyMono[4030501]["New"] = 600	
	-- 赠品黄色神纹-回灵术*1
	tBigCarnival_EMoneyMono_EMomeyMono[4030801] = {}
	tBigCarnival_EMoneyMono_EMomeyMono[4030801]["Old"] = 600
	tBigCarnival_EMoneyMono_EMomeyMono[4030801]["New"] = 600	
	-- 赠品黄色神纹-安魂定魄*1
	tBigCarnival_EMoneyMono_EMomeyMono[4031201] = {}
	tBigCarnival_EMoneyMono_EMomeyMono[4031201]["Old"] = 530
	tBigCarnival_EMoneyMono_EMomeyMono[4031201]["New"] = 530	
	-- 赠品黄色神纹-杀破狼*1
	tBigCarnival_EMoneyMono_EMomeyMono[4030901] = {}
	tBigCarnival_EMoneyMono_EMomeyMono[4030901]["Old"] = 733
	tBigCarnival_EMoneyMono_EMomeyMono[4030901]["New"] = 733	
	-- 赠品黄色神纹-追命*1
	tBigCarnival_EMoneyMono_EMomeyMono[4031001] = {}
	tBigCarnival_EMoneyMono_EMomeyMono[4031001]["Old"] = 733
	tBigCarnival_EMoneyMono_EMomeyMono[4031001]["New"] = 733
	-- 赠品黄色神纹-破玄元*1
	tBigCarnival_EMoneyMono_EMomeyMono[4030101] = {}
	tBigCarnival_EMoneyMono_EMomeyMono[4030101]["Old"] = 611
	tBigCarnival_EMoneyMono_EMomeyMono[4030101]["New"] = 611
	-- 赠品黄色神纹-万物生*1
	tBigCarnival_EMoneyMono_EMomeyMono[4030401] = {}
	tBigCarnival_EMoneyMono_EMomeyMono[4030401]["Old"] = 733
	tBigCarnival_EMoneyMono_EMomeyMono[4030401]["New"] = 733
	-- 赠品黄色神纹-狂暴克星*1
	tBigCarnival_EMoneyMono_EMomeyMono[4030601] = {}
	tBigCarnival_EMoneyMono_EMomeyMono[4030601]["Old"] = 530
	tBigCarnival_EMoneyMono_EMomeyMono[4030601]["New"] = 530
	-- 赠品黄色神纹-风卷残云*1
	tBigCarnival_EMoneyMono_EMomeyMono[4030701] = {}
	tBigCarnival_EMoneyMono_EMomeyMono[4030701]["Old"] = 600
	tBigCarnival_EMoneyMono_EMomeyMono[4030701]["New"] = 600
	-- 赠品黄色神纹-奔雷不息*1
	tBigCarnival_EMoneyMono_EMomeyMono[4031101] = {}
	tBigCarnival_EMoneyMono_EMomeyMono[4031101]["Old"] = 600
	tBigCarnival_EMoneyMono_EMomeyMono[4031101]["New"] = 600
	-- 180427[英文征服][活动脚本]5月新服活动制作	modified by wzh
	-- 赠品+6马匹
	tBigCarnival_EMoneyMono_EMomeyMono[3308868] = {}
	tBigCarnival_EMoneyMono_EMomeyMono[3308868]["Old"] = 600
	tBigCarnival_EMoneyMono_EMomeyMono[3308868]["New"] = 600
	-- 赠品赤炼石+6
	-- tBigCarnival_EMoneyMono_EMomeyMono[730006] = {}
	-- tBigCarnival_EMoneyMono_EMomeyMono[730006]["Old"] = 540
	-- tBigCarnival_EMoneyMono_EMomeyMono[730006]["New"] = 540
	tBigCarnival_EMoneyMono_EMomeyMono[3316204] = {}
	tBigCarnival_EMoneyMono_EMomeyMono[3316204]["Old"] = 540
	tBigCarnival_EMoneyMono_EMomeyMono[3316204]["New"] = 540
	-- 赠品良品天怒宝石
	tBigCarnival_EMoneyMono_EMomeyMono[700102] = {}
	tBigCarnival_EMoneyMono_EMomeyMono[700102]["Old"] = 60
	tBigCarnival_EMoneyMono_EMomeyMono[700102]["New"] = 60
	-- 赠品良品地灵宝石
	tBigCarnival_EMoneyMono_EMomeyMono[700122] = {}
	tBigCarnival_EMoneyMono_EMomeyMono[700122]["Old"] = 60
	tBigCarnival_EMoneyMono_EMomeyMono[700122]["New"] = 60
	-- 赠品优质天怒宝石
	tBigCarnival_EMoneyMono_EMomeyMono[700103] = {}
	tBigCarnival_EMoneyMono_EMomeyMono[700103]["Old"] = 800
	tBigCarnival_EMoneyMono_EMomeyMono[700103]["New"] = 800
	-- 赠品优质地灵宝石
	tBigCarnival_EMoneyMono_EMomeyMono[700123] = {}
	tBigCarnival_EMoneyMono_EMomeyMono[700123]["Old"] = 800
	tBigCarnival_EMoneyMono_EMomeyMono[700123]["New"] = 800
	-- 赠品二转令牌
	tBigCarnival_EMoneyMono_EMomeyMono[723701] = {}
	tBigCarnival_EMoneyMono_EMomeyMono[723701]["Old"] = 500
	tBigCarnival_EMoneyMono_EMomeyMono[723701]["New"] = 500
	
	--8月赠品大狂欢
	--赠品灵宝葫芦
	tBigCarnival_EMoneyMono_EMomeyMono[2100025] = {}
	tBigCarnival_EMoneyMono_EMomeyMono[2100025]["Old"] = 500
	tBigCarnival_EMoneyMono_EMomeyMono[2100025]["New"] = 500
	
	--赠品白色恶之花
	tBigCarnival_EMoneyMono_EMomeyMono[722736] = {}
	tBigCarnival_EMoneyMono_EMomeyMono[722736]["Old"] = 12
	tBigCarnival_EMoneyMono_EMomeyMono[722736]["New"] = 12
	
	--赠品红色恶之花
	tBigCarnival_EMoneyMono_EMomeyMono[722732] = {}
	tBigCarnival_EMoneyMono_EMomeyMono[722732]["Old"] = 12
	tBigCarnival_EMoneyMono_EMomeyMono[722732]["New"] = 12
	
	--赠品黄色神纹-夺魂*1
	tBigCarnival_EMoneyMono_EMomeyMono[4031301] = {}
	tBigCarnival_EMoneyMono_EMomeyMono[4031301]["Old"] = 600
	tBigCarnival_EMoneyMono_EMomeyMono[4031301]["New"] = 600
	
	--雷神促销
	tBigCarnival_EMoneyMono_EMomeyMono[3307467] = {}
	tBigCarnival_EMoneyMono_EMomeyMono[3307467]["Old"] = 20
	tBigCarnival_EMoneyMono_EMomeyMono[3307467]["New"] = 20
	
	tBigCarnival_EMoneyMono_EMomeyMono[711188] = {}
	tBigCarnival_EMoneyMono_EMomeyMono[711188]["Old"] = 10
	tBigCarnival_EMoneyMono_EMomeyMono[711188]["New"] = 10
	
	tBigCarnival_EMoneyMono_EMomeyMono[3307468] = {}
	tBigCarnival_EMoneyMono_EMomeyMono[3307468]["Old"] = 10
	tBigCarnival_EMoneyMono_EMomeyMono[3307468]["New"] = 10
	
	tBigCarnival_EMoneyMono_EMomeyMono[3307469] = {}
	tBigCarnival_EMoneyMono_EMomeyMono[3307469]["Old"] = 10
	tBigCarnival_EMoneyMono_EMomeyMono[3307469]["New"] = 10
	
	tBigCarnival_EMoneyMono_EMomeyMono[711679] = {}
	tBigCarnival_EMoneyMono_EMomeyMono[711679]["Old"] = 10
	tBigCarnival_EMoneyMono_EMomeyMono[711679]["New"] = 10
	
	tBigCarnival_EMoneyMono_EMomeyMono[3307470] = {}
	tBigCarnival_EMoneyMono_EMomeyMono[3307470]["Old"] = 25
	tBigCarnival_EMoneyMono_EMomeyMono[3307470]["New"] = 25
	
	tBigCarnival_EMoneyMono_EMomeyMono[1080001] = {}
	tBigCarnival_EMoneyMono_EMomeyMono[1080001]["Old"] = 9
	tBigCarnival_EMoneyMono_EMomeyMono[1080001]["New"] = 9
	
	tBigCarnival_EMoneyMono_EMomeyMono[723030] = {}
	tBigCarnival_EMoneyMono_EMomeyMono[723030]["Old"] = 3
	tBigCarnival_EMoneyMono_EMomeyMono[723030]["New"] = 3
	
	--5周年赠品大狂欢
	tBigCarnival_EMoneyMono_EMomeyMono[3312619] = {}
	tBigCarnival_EMoneyMono_EMomeyMono[3312619]["Old"] = 50
	tBigCarnival_EMoneyMono_EMomeyMono[3312619]["New"] = 50
	
	tBigCarnival_EMoneyMono_EMomeyMono[3312620] = {}
	tBigCarnival_EMoneyMono_EMomeyMono[3312620]["Old"] = 50
	tBigCarnival_EMoneyMono_EMomeyMono[3312620]["New"] = 50
	
	tBigCarnival_EMoneyMono_EMomeyMono[3304062] = {}
	tBigCarnival_EMoneyMono_EMomeyMono[3304062]["Old"] = 50
	tBigCarnival_EMoneyMono_EMomeyMono[3304062]["New"] = 50
	
	tBigCarnival_EMoneyMono_EMomeyMono[3320470] = {}
	tBigCarnival_EMoneyMono_EMomeyMono[3320470]["Old"] = 150
	tBigCarnival_EMoneyMono_EMomeyMono[3320470]["New"] = 150
	
	tBigCarnival_EMoneyMono_EMomeyMono[3306087] = {}
	tBigCarnival_EMoneyMono_EMomeyMono[3306087]["Old"] = 499
	tBigCarnival_EMoneyMono_EMomeyMono[3306087]["New"] = 499
	
	tBigCarnival_EMoneyMono_EMomeyMono[3316203] = {}
	tBigCarnival_EMoneyMono_EMomeyMono[3316203]["Old"] = 200
	tBigCarnival_EMoneyMono_EMomeyMono[3316203]["New"] = 200
	
	
-- ###180312[英文征服][活动脚本]4月赠品大狂欢（4.19-5.5）	modified by pyf
local tBigCarnival_EMoneyMono_RewardAttr = {}
	tBigCarnival_EMoneyMono_RewardAttr[3306562] = "0 %d 3"
	tBigCarnival_EMoneyMono_RewardAttr[3306563] = "0 %d 3"
	tBigCarnival_EMoneyMono_RewardAttr[3009001] = "0 %d 0 2880 1"
	tBigCarnival_EMoneyMono_RewardAttr[3308868] = "0 %d"
	--需要特殊判断的物品
local tBigCarnival_EMoneyMono_SpecialItem = {}
	tBigCarnival_EMoneyMono_SpecialItem[3306562] = 3306562
	tBigCarnival_EMoneyMono_SpecialItem[3306563] = 3306563
	tBigCarnival_EMoneyMono_SpecialItem[4050001] = 4050001
	tBigCarnival_EMoneyMono_SpecialItem[3009001] = 3009001
	tBigCarnival_EMoneyMono_SpecialItem[3306370] = 3306370
	tBigCarnival_EMoneyMono_SpecialItem[3306600] = 3306600
	tBigCarnival_EMoneyMono_SpecialItem[3308868] = 3308868
	tBigCarnival_EMoneyMono_SpecialItem[722736] = 722736
	tBigCarnival_EMoneyMono_SpecialItem[722732] = 722732
	--雷神促销
	tBigCarnival_EMoneyMono_SpecialItem[711188] = 711188
	tBigCarnival_EMoneyMono_SpecialItem[723030] = 723030
	tBigCarnival_EMoneyMono_SpecialItem[1080001] = 1080001
	tBigCarnival_EMoneyMono_SpecialItem[3316203] = 3316203
local tBigCarnival_EMoneyMono_RewardIndex = {}
	-- 2月赠品大狂欢
	-- tBigCarnival_EMoneyMono_RewardIndex[3307135] = 1
	-- tBigCarnival_EMoneyMono_RewardIndex[3307136] = 2
	tBigCarnival_EMoneyMono_RewardIndex[3200569] = 1
	tBigCarnival_EMoneyMono_RewardIndex[3200570] = 2
	tBigCarnival_EMoneyMono_RewardIndex[3303675] = 4
	tBigCarnival_EMoneyMono_RewardIndex[3303676] = 5
-- stc掩码
local tBigCarnival_EMoneyMono_Stc = {}
	-- 礼包上限
	tBigCarnival_EMoneyMono_Stc[1] = {}
	tBigCarnival_EMoneyMono_Stc[1]["EventType"] = 146
	tBigCarnival_EMoneyMono_Stc[1]["DataType"] = 48
	tBigCarnival_EMoneyMono_Stc[1]["Limit"] = 980000
	tBigCarnival_EMoneyMono_Stc[1]["OldLimit"] = 980000

	-- 礼包上限（金币换购）
	tBigCarnival_EMoneyMono_Stc[3] = {}
	tBigCarnival_EMoneyMono_Stc[3]["EventType"] = 176
	tBigCarnival_EMoneyMono_Stc[3]["DataType"] = 70
	tBigCarnival_EMoneyMono_Stc[3]["Limit"] = 100000
	-- 除魔值
	--tBigCarnival_EMoneyMono_Stc[2] = {}
	--tBigCarnival_EMoneyMono_Stc[2]["EventType"] = 146
	--tBigCarnival_EMoneyMono_Stc[2]["DataType"] = 49
	--tBigCarnival_EMoneyMono_Stc[2]["Limit"] = 17000
	-- 龙珠
	tBigCarnival_EMoneyMono_Stc[1088000] = {}
	tBigCarnival_EMoneyMono_Stc[1088000]["EventType"] = 151
	tBigCarnival_EMoneyMono_Stc[1088000]["DataType"] = 78
	tBigCarnival_EMoneyMono_Stc[1088000]["Limit"] = 200 --30
	tBigCarnival_EMoneyMono_Stc[1088000]["Oldlimit"] = 200
	-- 赠品流星卷*10
	tBigCarnival_EMoneyMono_Stc[3312763] = {}
	tBigCarnival_EMoneyMono_Stc[3312763]["EventType"] = 203
	tBigCarnival_EMoneyMono_Stc[3312763]["DataType"] = 80
	tBigCarnival_EMoneyMono_Stc[3312763]["Limit"] = 9999
	tBigCarnival_EMoneyMono_Stc[3312763]["Oldlimit"] = 9999
	-- 赤炼石+3
	tBigCarnival_EMoneyMono_Stc[730003] = {}
	tBigCarnival_EMoneyMono_Stc[730003]["EventType"] = 151
	tBigCarnival_EMoneyMono_Stc[730003]["DataType"] = 79
	tBigCarnival_EMoneyMono_Stc[730003]["Limit"] = 300 --50
	tBigCarnival_EMoneyMono_Stc[730003]["Oldlimit"] = 300
	-- 小固化石
	tBigCarnival_EMoneyMono_Stc[723694] = {}
	tBigCarnival_EMoneyMono_Stc[723694]["EventType"] = 151
	tBigCarnival_EMoneyMono_Stc[723694]["DataType"] = 80
	tBigCarnival_EMoneyMono_Stc[723694]["Limit"] = 100 --30
	tBigCarnival_EMoneyMono_Stc[723694]["Oldlimit"] = 100
	-- 1000气力礼包
	tBigCarnival_EMoneyMono_Stc[3200571] = {}
	tBigCarnival_EMoneyMono_Stc[3200571]["EventType"] = 151
	tBigCarnival_EMoneyMono_Stc[3200571]["DataType"] = 81
	tBigCarnival_EMoneyMono_Stc[3200571]["Limit"] = 1000 --100
	tBigCarnival_EMoneyMono_Stc[3200571]["Oldlimit"] = 1000
	-- 金刚尖钻
	tBigCarnival_EMoneyMono_Stc[1200005] = {}
	tBigCarnival_EMoneyMono_Stc[1200005]["EventType"] = 151
	tBigCarnival_EMoneyMono_Stc[1200005]["DataType"] = 82
	tBigCarnival_EMoneyMono_Stc[1200005]["Limit"] = 100 --40
	tBigCarnival_EMoneyMono_Stc[1200005]["Oldlimit"] = 100
	-- 七星宝钻
	tBigCarnival_EMoneyMono_Stc[1200006] = {}
	tBigCarnival_EMoneyMono_Stc[1200006]["EventType"] = 161
	tBigCarnival_EMoneyMono_Stc[1200006]["DataType"] = 58
	tBigCarnival_EMoneyMono_Stc[1200006]["Limit"] = 100 --10
	tBigCarnival_EMoneyMono_Stc[1200006]["Oldlimit"] = 100
	-- 优惠兑换卡（1:4）
	tBigCarnival_EMoneyMono_Stc[3304766] = {}
	tBigCarnival_EMoneyMono_Stc[3304766]["EventType"] = 165
	tBigCarnival_EMoneyMono_Stc[3304766]["DataType"] = 08
	tBigCarnival_EMoneyMono_Stc[3304766]["Limit"] = 10000
	-- 优惠兑换卡（1:5）
	tBigCarnival_EMoneyMono_Stc[3304767] = {}
	tBigCarnival_EMoneyMono_Stc[3304767]["EventType"] = 165
	tBigCarnival_EMoneyMono_Stc[3304767]["DataType"] = 09
	tBigCarnival_EMoneyMono_Stc[3304767]["Limit"] = 10000
	-- 优惠兑换卡（1:6）
	tBigCarnival_EMoneyMono_Stc[3304768] = {}
	tBigCarnival_EMoneyMono_Stc[3304768]["EventType"] = 165
	tBigCarnival_EMoneyMono_Stc[3304768]["DataType"] = 10
	tBigCarnival_EMoneyMono_Stc[3304768]["Limit"] = 20000
	-- 优惠兑换卡（1:7）
	tBigCarnival_EMoneyMono_Stc[3308699] = {}
	tBigCarnival_EMoneyMono_Stc[3308699]["EventType"] = 176
	tBigCarnival_EMoneyMono_Stc[3308699]["DataType"] = 36
	tBigCarnival_EMoneyMono_Stc[3308699]["Limit"] = 10000
	-- ###180312[英文征服][活动脚本]4月赠品大狂欢（4.19-5.5）	modified by pyf
	-- 赠品红色可选职业神纹包
	tBigCarnival_EMoneyMono_Stc[3306562] = {}
	tBigCarnival_EMoneyMono_Stc[3306562]["EventType"] = 174
	tBigCarnival_EMoneyMono_Stc[3306562]["DataType"] = 95
	tBigCarnival_EMoneyMono_Stc[3306562]["Limit"] = 100
	tBigCarnival_EMoneyMono_Stc[3306562]["Oldlimit"] = 100
	
	-- 赠品蓝色可选职业神纹包
	tBigCarnival_EMoneyMono_Stc[3306563] = {}
	tBigCarnival_EMoneyMono_Stc[3306563]["EventType"] = 174
	tBigCarnival_EMoneyMono_Stc[3306563]["DataType"] = 96
	tBigCarnival_EMoneyMono_Stc[3306563]["Limit"] = 100
	tBigCarnival_EMoneyMono_Stc[3306563]["Oldlimit"] = 100
	
	-- 赠品黄色神纹精粹*1
	tBigCarnival_EMoneyMono_Stc[4050001] = {}
	tBigCarnival_EMoneyMono_Stc[4050001]["EventType"] = 174
	tBigCarnival_EMoneyMono_Stc[4050001]["DataType"] = 97
	tBigCarnival_EMoneyMono_Stc[4050001]["Limit"] = 20000
	tBigCarnival_EMoneyMono_Stc[4050001]["Oldlimit"] = 20000
	
	-- 赠品黄色神纹精粹*10礼包
	tBigCarnival_EMoneyMono_Stc[3309001] = {}
	tBigCarnival_EMoneyMono_Stc[3309001]["EventType"] = 203
	tBigCarnival_EMoneyMono_Stc[3309001]["DataType"] = 79
	tBigCarnival_EMoneyMono_Stc[3309001]["Limit"] = 99999
	tBigCarnival_EMoneyMono_Stc[3309001]["Oldlimit"] = 99999
	
	-- 明亮星陨石*1（两天时效）
	tBigCarnival_EMoneyMono_Stc[3009001] = {}
	tBigCarnival_EMoneyMono_Stc[3009001]["EventType"] = 174
	tBigCarnival_EMoneyMono_Stc[3009001]["DataType"] = 98
	tBigCarnival_EMoneyMono_Stc[3009001]["Limit"] = 20000
	tBigCarnival_EMoneyMono_Stc[3009001]["Oldlimit"] = 20000
	
	-- 赠品随机黄色神纹碎片*1
	tBigCarnival_EMoneyMono_Stc[3306370] = {}
	tBigCarnival_EMoneyMono_Stc[3306370]["EventType"] = 174
	tBigCarnival_EMoneyMono_Stc[3306370]["DataType"] = 99
	tBigCarnival_EMoneyMono_Stc[3306370]["Limit"] = 1000
	tBigCarnival_EMoneyMono_Stc[3306370]["Oldlimit"] = 1000
	
	-- 赠品黄色神纹-憾星诀*1
	tBigCarnival_EMoneyMono_Stc[4030201] = {}
	tBigCarnival_EMoneyMono_Stc[4030201]["EventType"] = 175
	tBigCarnival_EMoneyMono_Stc[4030201]["DataType"] = 00
	tBigCarnival_EMoneyMono_Stc[4030201]["Limit"] = 100
	tBigCarnival_EMoneyMono_Stc[4030201]["Oldlimit"] = 100
	
	-- 赠品黄色神纹-血回元*1
	tBigCarnival_EMoneyMono_Stc[4030301] = {}
	tBigCarnival_EMoneyMono_Stc[4030301]["EventType"] = 175
	tBigCarnival_EMoneyMono_Stc[4030301]["DataType"] = 01
	tBigCarnival_EMoneyMono_Stc[4030301]["Limit"] = 100
	tBigCarnival_EMoneyMono_Stc[4030301]["Oldlimit"] = 100
	
	-- 赠品黄色神纹-无懈可击*1
	tBigCarnival_EMoneyMono_Stc[4030501] = {}
	tBigCarnival_EMoneyMono_Stc[4030501]["EventType"] = 175
	tBigCarnival_EMoneyMono_Stc[4030501]["DataType"] = 02
	tBigCarnival_EMoneyMono_Stc[4030501]["Limit"] = 100
	tBigCarnival_EMoneyMono_Stc[4030501]["Oldlimit"] = 100
	
	-- 赠品黄色神纹-回灵术*1
	tBigCarnival_EMoneyMono_Stc[4030801] = {}
	tBigCarnival_EMoneyMono_Stc[4030801]["EventType"] = 175
	tBigCarnival_EMoneyMono_Stc[4030801]["DataType"] = 03
	tBigCarnival_EMoneyMono_Stc[4030801]["Limit"] = 100
	tBigCarnival_EMoneyMono_Stc[4030801]["Oldlimit"] = 100
	
	-- 赠品黄色神纹-安魂定魄*1
	tBigCarnival_EMoneyMono_Stc[4031201] = {}
	tBigCarnival_EMoneyMono_Stc[4031201]["EventType"] = 175
	tBigCarnival_EMoneyMono_Stc[4031201]["DataType"] = 04
	tBigCarnival_EMoneyMono_Stc[4031201]["Limit"] = 100
	tBigCarnival_EMoneyMono_Stc[4031201]["Oldlimit"] = 100
	
	-- 赠品黄色神纹-杀破狼*1
	tBigCarnival_EMoneyMono_Stc[4030901] = {}
	tBigCarnival_EMoneyMono_Stc[4030901]["EventType"] = 175
	tBigCarnival_EMoneyMono_Stc[4030901]["DataType"] = 05
	tBigCarnival_EMoneyMono_Stc[4030901]["Limit"] = 100
	tBigCarnival_EMoneyMono_Stc[4030901]["Oldlimit"] = 100
	
	-- 赠品黄色神纹-追命*1
	tBigCarnival_EMoneyMono_Stc[4031001] = {}
	tBigCarnival_EMoneyMono_Stc[4031001]["EventType"] = 175
	tBigCarnival_EMoneyMono_Stc[4031001]["DataType"] = 06
	tBigCarnival_EMoneyMono_Stc[4031001]["Limit"] = 100
	tBigCarnival_EMoneyMono_Stc[4031001]["Oldlimit"] = 100
	
	-- 赠品黄色神纹-破玄元*1
	tBigCarnival_EMoneyMono_Stc[4030101] = {}
	tBigCarnival_EMoneyMono_Stc[4030101]["EventType"] = 175
	tBigCarnival_EMoneyMono_Stc[4030101]["DataType"] = 08
	tBigCarnival_EMoneyMono_Stc[4030101]["Limit"] = 100
	tBigCarnival_EMoneyMono_Stc[4030101]["Oldlimit"] = 100
	
	-- 赠品黄色神纹-万物生*1
	tBigCarnival_EMoneyMono_Stc[4030401] = {}
	tBigCarnival_EMoneyMono_Stc[4030401]["EventType"] = 175
	tBigCarnival_EMoneyMono_Stc[4030401]["DataType"] = 09
	tBigCarnival_EMoneyMono_Stc[4030401]["Limit"] = 100
	tBigCarnival_EMoneyMono_Stc[4030401]["Oldlimit"] = 100
	
	-- 赠品黄色神纹-狂暴克星*1
	tBigCarnival_EMoneyMono_Stc[4030601] = {}
	tBigCarnival_EMoneyMono_Stc[4030601]["EventType"] = 175
	tBigCarnival_EMoneyMono_Stc[4030601]["DataType"] = 10
	tBigCarnival_EMoneyMono_Stc[4030601]["Limit"] = 100
	tBigCarnival_EMoneyMono_Stc[4030601]["Oldlimit"] = 100
	
	-- 赠品黄色神纹-风卷残云*1
	tBigCarnival_EMoneyMono_Stc[4030701] = {}
	tBigCarnival_EMoneyMono_Stc[4030701]["EventType"] = 175
	tBigCarnival_EMoneyMono_Stc[4030701]["DataType"] = 11
	tBigCarnival_EMoneyMono_Stc[4030701]["Limit"] = 100
	tBigCarnival_EMoneyMono_Stc[4030701]["Oldlimit"] = 100
	
	-- 赠品黄色神纹-奔雷不息*1
	tBigCarnival_EMoneyMono_Stc[4031101] = {}
	tBigCarnival_EMoneyMono_Stc[4031101]["EventType"] = 175
	tBigCarnival_EMoneyMono_Stc[4031101]["DataType"] = 12
	tBigCarnival_EMoneyMono_Stc[4031101]["Limit"] = 100
	tBigCarnival_EMoneyMono_Stc[4031101]["Oldlimit"] = 100
	
	-- 180427[英文征服][活动脚本]5月新服活动制作
	-- 赠品+6马匹
	tBigCarnival_EMoneyMono_Stc[3308868] = {}
	tBigCarnival_EMoneyMono_Stc[3308868]["EventType"] = 176
	tBigCarnival_EMoneyMono_Stc[3308868]["DataType"] = 63
	tBigCarnival_EMoneyMono_Stc[3308868]["Limit"] = 100
	tBigCarnival_EMoneyMono_Stc[3308868]["Oldlimit"] = 100
	-- 赠品赤炼石+6
	-- tBigCarnival_EMoneyMono_Stc[730006] = {}
	-- tBigCarnival_EMoneyMono_Stc[730006]["EventType"] = 176
	-- tBigCarnival_EMoneyMono_Stc[730006]["DataType"] = 64
	-- tBigCarnival_EMoneyMono_Stc[730006]["Limit"] = 100
	-- tBigCarnival_EMoneyMono_Stc[730006]["Oldlimit"] = 100
	tBigCarnival_EMoneyMono_Stc[3316204] = {}
	tBigCarnival_EMoneyMono_Stc[3316204]["EventType"] = 176
	tBigCarnival_EMoneyMono_Stc[3316204]["DataType"] = 64
	tBigCarnival_EMoneyMono_Stc[3316204]["Limit"] = 100
	tBigCarnival_EMoneyMono_Stc[3316204]["Oldlimit"] = 100
	-- 赠品良品天怒宝石
	tBigCarnival_EMoneyMono_Stc[700102] = {}
	tBigCarnival_EMoneyMono_Stc[700102]["EventType"] = 176
	tBigCarnival_EMoneyMono_Stc[700102]["DataType"] = 65
	tBigCarnival_EMoneyMono_Stc[700102]["Limit"] = 100
	tBigCarnival_EMoneyMono_Stc[700102]["Oldlimit"] = 100
	-- 赠品良品地灵宝石
	tBigCarnival_EMoneyMono_Stc[700122] = {}
	tBigCarnival_EMoneyMono_Stc[700122]["EventType"] = 176
	tBigCarnival_EMoneyMono_Stc[700122]["DataType"] = 66
	tBigCarnival_EMoneyMono_Stc[700122]["Limit"] = 100
	tBigCarnival_EMoneyMono_Stc[700122]["Oldlimit"] = 100
	-- 赠品优质天怒宝石
	tBigCarnival_EMoneyMono_Stc[700103] = {}
	tBigCarnival_EMoneyMono_Stc[700103]["EventType"] = 176
	tBigCarnival_EMoneyMono_Stc[700103]["DataType"] = 67
	tBigCarnival_EMoneyMono_Stc[700103]["Limit"] = 100
	tBigCarnival_EMoneyMono_Stc[700103]["Oldlimit"] = 100
	-- 赠品优质地灵宝石
	tBigCarnival_EMoneyMono_Stc[700123] = {}
	tBigCarnival_EMoneyMono_Stc[700123]["EventType"] = 176
	tBigCarnival_EMoneyMono_Stc[700123]["DataType"] = 68
	tBigCarnival_EMoneyMono_Stc[700123]["Limit"] = 100
	tBigCarnival_EMoneyMono_Stc[700123]["Oldlimit"] = 100
	-- 赠品二转令牌
	tBigCarnival_EMoneyMono_Stc[723701] = {}
	tBigCarnival_EMoneyMono_Stc[723701]["EventType"] = 176
	tBigCarnival_EMoneyMono_Stc[723701]["DataType"] = 69
	tBigCarnival_EMoneyMono_Stc[723701]["Limit"] = 1
	tBigCarnival_EMoneyMono_Stc[723701]["Oldlimit"] = 1
	
	--##8月促销大狂欢
	--赠品灵宝葫芦
	tBigCarnival_EMoneyMono_Stc[2100025] = {}
	tBigCarnival_EMoneyMono_Stc[2100025]["EventType"] = 179
	tBigCarnival_EMoneyMono_Stc[2100025]["DataType"] = 93
	tBigCarnival_EMoneyMono_Stc[2100025]["Limit"] = 2
	tBigCarnival_EMoneyMono_Stc[2100025]["Oldlimit"] = 2
	
	--赠品白色恶之花
	tBigCarnival_EMoneyMono_Stc[722736] = {}
	tBigCarnival_EMoneyMono_Stc[722736]["EventType"] = 179
	tBigCarnival_EMoneyMono_Stc[722736]["DataType"] = 94
	tBigCarnival_EMoneyMono_Stc[722736]["Limit"] = 1000
	tBigCarnival_EMoneyMono_Stc[722736]["Oldlimit"] = 1000
	
	--赠品红色恶之花
	tBigCarnival_EMoneyMono_Stc[722732] = {}
	tBigCarnival_EMoneyMono_Stc[722732]["EventType"] = 179
	tBigCarnival_EMoneyMono_Stc[722732]["DataType"] = 95
	tBigCarnival_EMoneyMono_Stc[722732]["Limit"] = 1000
	tBigCarnival_EMoneyMono_Stc[722732]["Oldlimit"] = 1000
	
	-- 赠品黄色神纹-夺魂*1
	tBigCarnival_EMoneyMono_Stc[4031301] = {}
	tBigCarnival_EMoneyMono_Stc[4031301]["EventType"] = 176
	tBigCarnival_EMoneyMono_Stc[4031301]["DataType"] = 54
	tBigCarnival_EMoneyMono_Stc[4031301]["Limit"] = 100
	tBigCarnival_EMoneyMono_Stc[4031301]["Oldlimit"] = 100
	
	---雷神促销
	--破城火雷*10
	tBigCarnival_EMoneyMono_Stc[3307467] = {}
	tBigCarnival_EMoneyMono_Stc[3307467]["EventType"] = 190
	tBigCarnival_EMoneyMono_Stc[3307467]["DataType"] = 67
	tBigCarnival_EMoneyMono_Stc[3307467]["Limit"] = 10
	tBigCarnival_EMoneyMono_Stc[3307467]["Oldlimit"] = 10
	--金刚灵果*1
	tBigCarnival_EMoneyMono_Stc[711188] = {}
	tBigCarnival_EMoneyMono_Stc[711188]["EventType"] = 190
	tBigCarnival_EMoneyMono_Stc[711188]["DataType"] = 68
	tBigCarnival_EMoneyMono_Stc[711188]["Limit"] = 10
	tBigCarnival_EMoneyMono_Stc[711188]["Oldlimit"] = 10
	--辟邪护符*20
	tBigCarnival_EMoneyMono_Stc[3307468] = {}
	tBigCarnival_EMoneyMono_Stc[3307468]["EventType"] = 190
	tBigCarnival_EMoneyMono_Stc[3307468]["DataType"] = 69
	tBigCarnival_EMoneyMono_Stc[3307468]["Limit"] = 10
	tBigCarnival_EMoneyMono_Stc[3307468]["Oldlimit"] = 10
	--流星泪*10
	tBigCarnival_EMoneyMono_Stc[3307469] = {}
	tBigCarnival_EMoneyMono_Stc[3307469]["EventType"] = 190
	tBigCarnival_EMoneyMono_Stc[3307469]["DataType"] = 70
	tBigCarnival_EMoneyMono_Stc[3307469]["Limit"] = 10
	tBigCarnival_EMoneyMono_Stc[3307469]["Oldlimit"] = 10
	--炫舞者就职公文*1
	tBigCarnival_EMoneyMono_Stc[711679] = {}
	tBigCarnival_EMoneyMono_Stc[711679]["EventType"] = 190
	tBigCarnival_EMoneyMono_Stc[711679]["DataType"] = 71
	tBigCarnival_EMoneyMono_Stc[711679]["Limit"] = 10
	tBigCarnival_EMoneyMono_Stc[711679]["Oldlimit"] = 10
	--被偷走的马鞍*40
	tBigCarnival_EMoneyMono_Stc[3307470] = {}
	tBigCarnival_EMoneyMono_Stc[3307470]["EventType"] = 190
	tBigCarnival_EMoneyMono_Stc[3307470]["DataType"] = 72
	tBigCarnival_EMoneyMono_Stc[3307470]["Limit"] = 10
	tBigCarnival_EMoneyMono_Stc[3307470]["Oldlimit"] = 10
	--祖母绿
	tBigCarnival_EMoneyMono_Stc[1080001] = {}
	tBigCarnival_EMoneyMono_Stc[1080001]["EventType"] = 190
	tBigCarnival_EMoneyMono_Stc[1080001]["DataType"] = 73
	tBigCarnival_EMoneyMono_Stc[1080001]["Limit"] = 100
	tBigCarnival_EMoneyMono_Stc[1080001]["Oldlimit"] = 100
	--杜康酒
	tBigCarnival_EMoneyMono_Stc[723030] = {}
	tBigCarnival_EMoneyMono_Stc[723030]["EventType"] = 190
	tBigCarnival_EMoneyMono_Stc[723030]["DataType"] = 74
	tBigCarnival_EMoneyMono_Stc[723030]["Limit"] = 100
	tBigCarnival_EMoneyMono_Stc[723030]["Oldlimit"] = 100
	
	--5月周年庆
	--赠强效护心丹尊享包（内含10颗赠强效护心丹）
	tBigCarnival_EMoneyMono_Stc[3312619] = {}
	tBigCarnival_EMoneyMono_Stc[3312619]["EventType"] = 195
	tBigCarnival_EMoneyMono_Stc[3312619]["DataType"] = 72
	tBigCarnival_EMoneyMono_Stc[3312619]["Limit"] = 30
	tBigCarnival_EMoneyMono_Stc[3312619]["Oldlimit"] = 30
	
	--赠卓越究极通神丹礼盒（内含10个终究通神丹）
	tBigCarnival_EMoneyMono_Stc[3312620] = {}
	tBigCarnival_EMoneyMono_Stc[3312620]["EventType"] = 195
	tBigCarnival_EMoneyMono_Stc[3312620]["DataType"] = 73
	tBigCarnival_EMoneyMono_Stc[3312620]["Limit"] = 30
	tBigCarnival_EMoneyMono_Stc[3312620]["Oldlimit"] = 30
	
	--副职业的修行值500
	tBigCarnival_EMoneyMono_Stc[3304062] = {}
	tBigCarnival_EMoneyMono_Stc[3304062]["EventType"] = 195
	tBigCarnival_EMoneyMono_Stc[3304062]["DataType"] = 74
	tBigCarnival_EMoneyMono_Stc[3304062]["Limit"] = 40
	tBigCarnival_EMoneyMono_Stc[3304062]["Oldlimit"] = 40
	
	--内功的修为值5000
	tBigCarnival_EMoneyMono_Stc[3320470] = {}
	tBigCarnival_EMoneyMono_Stc[3320470]["EventType"] = 195
	tBigCarnival_EMoneyMono_Stc[3320470]["DataType"] = 75
	tBigCarnival_EMoneyMono_Stc[3320470]["Limit"] = 20
	tBigCarnival_EMoneyMono_Stc[3320470]["Oldlimit"] = 20
	
	--1月新年促销
	tBigCarnival_EMoneyMono_Stc[3306087] = {}
	tBigCarnival_EMoneyMono_Stc[3306087]["EventType"] = 211
	tBigCarnival_EMoneyMono_Stc[3306087]["DataType"] = 79
	tBigCarnival_EMoneyMono_Stc[3306087]["Limit"] = 16
	tBigCarnival_EMoneyMono_Stc[3306087]["Oldlimit"] = 16
	
	--6月暑期促销新增 秘术精华
	tBigCarnival_EMoneyMono_Stc[3316203] = {}
	tBigCarnival_EMoneyMono_Stc[3316203]["EventType"] = 221
	tBigCarnival_EMoneyMono_Stc[3316203]["DataType"] = 79
	tBigCarnival_EMoneyMono_Stc[3316203]["Limit"] = 1000
	tBigCarnival_EMoneyMono_Stc[3316203]["Oldlimit"] = 1000
	
	
-- 新单服限量兑换
local tBigCarnival_EMoneyMono_NewStc = {}
	tBigCarnival_EMoneyMono_NewStc[6031] = {}
	tBigCarnival_EMoneyMono_NewStc[6031]["EventType"] = 220
	tBigCarnival_EMoneyMono_NewStc[6031]["DataType"] = 52
	tBigCarnival_EMoneyMono_NewStc[6031]["Limit"] = 1
	tBigCarnival_EMoneyMono_NewStc[6031]["Option"] = "Option9"
	tBigCarnival_EMoneyMono_NewStc[6031]["Emoney"] = 2399 
	tBigCarnival_EMoneyMono_NewStc[6031]["EmoneyLog"] = "10000	1788	%d	%d	1	"
	
	tBigCarnival_EMoneyMono_NewStc[6023] = {}
	tBigCarnival_EMoneyMono_NewStc[6023]["EventType"] = 220
	tBigCarnival_EMoneyMono_NewStc[6023]["DataType"] = 53
	tBigCarnival_EMoneyMono_NewStc[6023]["Limit"] = 1
	tBigCarnival_EMoneyMono_NewStc[6023]["Option"] = "Option10"
	tBigCarnival_EMoneyMono_NewStc[6023]["Emoney"] = 2399
	tBigCarnival_EMoneyMono_NewStc[6023]["EmoneyLog"] = "10000	1788"

	tBigCarnival_EMoneyMono_NewStc[6009] = {}
	tBigCarnival_EMoneyMono_NewStc[6009]["EventType"] = 220
	tBigCarnival_EMoneyMono_NewStc[6009]["DataType"] = 54
	tBigCarnival_EMoneyMono_NewStc[6009]["Limit"] = 1
	tBigCarnival_EMoneyMono_NewStc[6009]["Option"] = "Option11"
	tBigCarnival_EMoneyMono_NewStc[6009]["Emoney"] = 2499 
	tBigCarnival_EMoneyMono_NewStc[6009]["EmoneyLog"] = "10000	1788"
	
	tBigCarnival_EMoneyMono_NewStc[196185] = {}
	tBigCarnival_EMoneyMono_NewStc[196185]["EventType"] = 220
	tBigCarnival_EMoneyMono_NewStc[196185]["DataType"] = 55
	tBigCarnival_EMoneyMono_NewStc[196185]["Limit"] = 1
	tBigCarnival_EMoneyMono_NewStc[196185]["Option"] = "Option12"
	tBigCarnival_EMoneyMono_NewStc[196185]["Emoney"] = 9999
	tBigCarnival_EMoneyMono_NewStc[196185]["EmoneyLog"] = "10000	1788"
	
	tBigCarnival_EMoneyMono_NewStc[196195] = {}
	tBigCarnival_EMoneyMono_NewStc[196195]["EventType"] = 220
	tBigCarnival_EMoneyMono_NewStc[196195]["DataType"] = 56
	tBigCarnival_EMoneyMono_NewStc[196195]["Limit"] = 1
	tBigCarnival_EMoneyMono_NewStc[196195]["Option"] = "Option13"
	tBigCarnival_EMoneyMono_NewStc[196195]["Emoney"] = 19999 
	tBigCarnival_EMoneyMono_NewStc[196195]["EmoneyLog"] = "10000	1788"
	
	tBigCarnival_EMoneyMono_NewStc[195935] = {}
	tBigCarnival_EMoneyMono_NewStc[195935]["EventType"] = 220
	tBigCarnival_EMoneyMono_NewStc[195935]["DataType"] = 57
	tBigCarnival_EMoneyMono_NewStc[195935]["Limit"] = 1
	tBigCarnival_EMoneyMono_NewStc[195935]["Option"] = "Option14"
	tBigCarnival_EMoneyMono_NewStc[195935]["Emoney"] = 19999 
	tBigCarnival_EMoneyMono_NewStc[195935]["EmoneyLog"] = "10000	1788"
	
	tBigCarnival_EMoneyMono_NewStc[200580] = {}
	tBigCarnival_EMoneyMono_NewStc[200580]["EventType"] = 220
	tBigCarnival_EMoneyMono_NewStc[200580]["DataType"] = 58
	tBigCarnival_EMoneyMono_NewStc[200580]["Limit"] = 1
	tBigCarnival_EMoneyMono_NewStc[200580]["Option"] = "Option15"
	tBigCarnival_EMoneyMono_NewStc[200580]["Emoney"] = 28999 
	tBigCarnival_EMoneyMono_NewStc[200580]["EmoneyLog"] = "10000	1788"
	
	tBigCarnival_EMoneyMono_NewStc[200655] = {}
	tBigCarnival_EMoneyMono_NewStc[200655]["EventType"] = 220
	tBigCarnival_EMoneyMono_NewStc[200655]["DataType"] = 59
	tBigCarnival_EMoneyMono_NewStc[200655]["Limit"] = 1
	tBigCarnival_EMoneyMono_NewStc[200655]["Option"] = "Option16"
	tBigCarnival_EMoneyMono_NewStc[200655]["Emoney"] = 28999
	tBigCarnival_EMoneyMono_NewStc[200655]["EmoneyLog"] = "10000	1788"
	
	tBigCarnival_EMoneyMono_NewStc[200638] = {}
	tBigCarnival_EMoneyMono_NewStc[200638]["EventType"] = 220
	tBigCarnival_EMoneyMono_NewStc[200638]["DataType"] = 60
	tBigCarnival_EMoneyMono_NewStc[200638]["Limit"] = 1
	tBigCarnival_EMoneyMono_NewStc[200638]["Option"] = "Option17"
	tBigCarnival_EMoneyMono_NewStc[200638]["Emoney"] = 28999
	tBigCarnival_EMoneyMono_NewStc[200638]["EmoneyLog"] = "10000	1788"
	
	tBigCarnival_EMoneyMono_NewStc[711903] = {}
	tBigCarnival_EMoneyMono_NewStc[711903]["EventType"] = 220
	tBigCarnival_EMoneyMono_NewStc[711903]["DataType"] = 61
	tBigCarnival_EMoneyMono_NewStc[711903]["Limit"] = 3
	tBigCarnival_EMoneyMono_NewStc[711903]["Option"] = "Option18"
	tBigCarnival_EMoneyMono_NewStc[711903]["Emoney"] = 79999 
	tBigCarnival_EMoneyMono_NewStc[711903]["EmoneyLog"] = "10000	1788"
	
	tBigCarnival_EMoneyMono_NewStc[711904] = {}
	tBigCarnival_EMoneyMono_NewStc[711904]["EventType"] = 220
	tBigCarnival_EMoneyMono_NewStc[711904]["DataType"] = 62
	tBigCarnival_EMoneyMono_NewStc[711904]["Limit"] = 10
	tBigCarnival_EMoneyMono_NewStc[711904]["Option"] = "Option19"
	tBigCarnival_EMoneyMono_NewStc[711904]["Emoney"] = 24999 
	tBigCarnival_EMoneyMono_NewStc[711904]["EmoneyLog"] = "10000	1788"
	
	tBigCarnival_EMoneyMono_NewStc[3311750] = {}
	tBigCarnival_EMoneyMono_NewStc[3311750]["EventType"] = 220
	tBigCarnival_EMoneyMono_NewStc[3311750]["DataType"] = 63
	tBigCarnival_EMoneyMono_NewStc[3311750]["Limit"] = 3
	tBigCarnival_EMoneyMono_NewStc[3311750]["Option"] = "Option20"
	tBigCarnival_EMoneyMono_NewStc[3311750]["Emoney"] = 19999
	tBigCarnival_EMoneyMono_NewStc[3311750]["EmoneyLog"] = "10000	1788"
	
	tBigCarnival_EMoneyMono_NewStc[3300767] = {}
	tBigCarnival_EMoneyMono_NewStc[3300767]["EventType"] = 220
	tBigCarnival_EMoneyMono_NewStc[3300767]["DataType"] = 64
	tBigCarnival_EMoneyMono_NewStc[3300767]["Limit"] = 20
	tBigCarnival_EMoneyMono_NewStc[3300767]["Option"] = "Option21"
	tBigCarnival_EMoneyMono_NewStc[3300767]["Emoney"] = 1200 
	tBigCarnival_EMoneyMono_NewStc[3300767]["EmoneyLog"] = "10000	1788"
	
	tBigCarnival_EMoneyMono_NewStc[3200349] = {}
	tBigCarnival_EMoneyMono_NewStc[3200349]["EventType"] = 0
	tBigCarnival_EMoneyMono_NewStc[3200349]["DataType"] = 0
	tBigCarnival_EMoneyMono_NewStc[3200349]["Limit"] = 9999
	tBigCarnival_EMoneyMono_NewStc[3200349]["Option"] = "Option22"
	tBigCarnival_EMoneyMono_NewStc[3200349]["Emoney"] = 499 
	tBigCarnival_EMoneyMono_NewStc[3200349]["EmoneyLog"] = "10000	1788"
	
	
--周年庆限量奖励表
local tBigCarnival_EMoneyMono_AnnivistyReward = {}
tBigCarnival_EMoneyMono_AnnivistyReward[6031] = {}
tBigCarnival_EMoneyMono_AnnivistyReward[6031]["RewardTitle"] = {}
tBigCarnival_EMoneyMono_AnnivistyReward[6031]["RewardTitle"]["TitleType"] = 6031
tBigCarnival_EMoneyMono_AnnivistyReward[6031]["RewardTitle"]["TitleId"] = 6031
tBigCarnival_EMoneyMono_AnnivistyReward[6031]["RewardTitle"]["SaveTime"] = 129600
tBigCarnival_EMoneyMono_AnnivistyReward[6031]["RewardItem"] = {}
tBigCarnival_EMoneyMono_AnnivistyReward[6031]["RewardItem"][1] = {}
tBigCarnival_EMoneyMono_AnnivistyReward[6031]["RewardItem"][1]["Id"] = 3316076
tBigCarnival_EMoneyMono_AnnivistyReward[6031]["RewardItem"][1]["Attr"] = "0 2399"
tBigCarnival_EMoneyMono_AnnivistyReward[6031]["LogId"] = 12000438
tBigCarnival_EMoneyMono_AnnivistyReward[6031]["RewardEffect"] = {}
tBigCarnival_EMoneyMono_AnnivistyReward[6031]["RewardEffect"]["Effect"] = "angelwing"

tBigCarnival_EMoneyMono_AnnivistyReward[6023] = {}
tBigCarnival_EMoneyMono_AnnivistyReward[6023]["RewardTitle"] = {}
tBigCarnival_EMoneyMono_AnnivistyReward[6023]["RewardTitle"]["TitleType"] = 6023
tBigCarnival_EMoneyMono_AnnivistyReward[6023]["RewardTitle"]["TitleId"] = 6023
tBigCarnival_EMoneyMono_AnnivistyReward[6023]["RewardTitle"]["SaveTime"] = 129600
tBigCarnival_EMoneyMono_AnnivistyReward[6023]["RewardItem"] = {}
tBigCarnival_EMoneyMono_AnnivistyReward[6023]["RewardItem"][1] = {}
tBigCarnival_EMoneyMono_AnnivistyReward[6023]["RewardItem"][1]["Id"] = 3316076
tBigCarnival_EMoneyMono_AnnivistyReward[6023]["RewardItem"][1]["Attr"] = "0 2399"
tBigCarnival_EMoneyMono_AnnivistyReward[6023]["LogId"] = 12000438
tBigCarnival_EMoneyMono_AnnivistyReward[6023]["RewardEffect"] = {}
tBigCarnival_EMoneyMono_AnnivistyReward[6023]["RewardEffect"]["Effect"] = "angelwing"

tBigCarnival_EMoneyMono_AnnivistyReward[6009] = {}
tBigCarnival_EMoneyMono_AnnivistyReward[6009]["RewardTitle"] = {}
tBigCarnival_EMoneyMono_AnnivistyReward[6009]["RewardTitle"]["TitleType"] = 6009
tBigCarnival_EMoneyMono_AnnivistyReward[6009]["RewardTitle"]["TitleId"] = 6009
tBigCarnival_EMoneyMono_AnnivistyReward[6009]["RewardTitle"]["SaveTime"] = 129600
tBigCarnival_EMoneyMono_AnnivistyReward[6009]["RewardItem"] = {}
tBigCarnival_EMoneyMono_AnnivistyReward[6009]["RewardItem"][1] = {}
tBigCarnival_EMoneyMono_AnnivistyReward[6009]["RewardItem"][1]["Id"] = 3316076
tBigCarnival_EMoneyMono_AnnivistyReward[6009]["RewardItem"][1]["Attr"] = "0 2499"
tBigCarnival_EMoneyMono_AnnivistyReward[6009]["LogId"] = 12000438
tBigCarnival_EMoneyMono_AnnivistyReward[6009]["RewardEffect"] = {}
tBigCarnival_EMoneyMono_AnnivistyReward[6009]["RewardEffect"]["Effect"] = "angelwing"


tBigCarnival_EMoneyMono_AnnivistyReward[196185] = {}
tBigCarnival_EMoneyMono_AnnivistyReward[196185]["RewardItem"] = {}
tBigCarnival_EMoneyMono_AnnivistyReward[196185]["RewardItem"][1] = {}
tBigCarnival_EMoneyMono_AnnivistyReward[196185]["RewardItem"][1]["Id"] = 196185
tBigCarnival_EMoneyMono_AnnivistyReward[196185]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
tBigCarnival_EMoneyMono_AnnivistyReward[196185]["RewardItem"][2] = {}
tBigCarnival_EMoneyMono_AnnivistyReward[196185]["RewardItem"][2]["Id"] = 3316076
tBigCarnival_EMoneyMono_AnnivistyReward[196185]["RewardItem"][2]["Attr"] = "0 9999"
tBigCarnival_EMoneyMono_AnnivistyReward[196185]["LogId"] = 12000438
tBigCarnival_EMoneyMono_AnnivistyReward[196185]["RewardEffect"] = {}
tBigCarnival_EMoneyMono_AnnivistyReward[196185]["RewardEffect"]["Effect"] = "angelwing"

tBigCarnival_EMoneyMono_AnnivistyReward[196195] = {}
tBigCarnival_EMoneyMono_AnnivistyReward[196195]["RewardItem"] = {}
tBigCarnival_EMoneyMono_AnnivistyReward[196195]["RewardItem"][1] = {}
tBigCarnival_EMoneyMono_AnnivistyReward[196195]["RewardItem"][1]["Id"] = 196195
tBigCarnival_EMoneyMono_AnnivistyReward[196195]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
tBigCarnival_EMoneyMono_AnnivistyReward[196195]["RewardItem"][2] = {}
tBigCarnival_EMoneyMono_AnnivistyReward[196195]["RewardItem"][2]["Id"] = 3316076
tBigCarnival_EMoneyMono_AnnivistyReward[196195]["RewardItem"][2]["Attr"] = "0 19999"
tBigCarnival_EMoneyMono_AnnivistyReward[196195]["LogId"] = 12000438
tBigCarnival_EMoneyMono_AnnivistyReward[196195]["RewardEffect"] = {}
tBigCarnival_EMoneyMono_AnnivistyReward[196195]["RewardEffect"]["Effect"] = "angelwing"

tBigCarnival_EMoneyMono_AnnivistyReward[195935] = {}
tBigCarnival_EMoneyMono_AnnivistyReward[195935]["RewardItem"] = {}
tBigCarnival_EMoneyMono_AnnivistyReward[195935]["RewardItem"][1] = {}
tBigCarnival_EMoneyMono_AnnivistyReward[195935]["RewardItem"][1]["Id"] = 195935
tBigCarnival_EMoneyMono_AnnivistyReward[195935]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
tBigCarnival_EMoneyMono_AnnivistyReward[195935]["RewardItem"][2] = {}
tBigCarnival_EMoneyMono_AnnivistyReward[195935]["RewardItem"][2]["Id"] = 3316076
tBigCarnival_EMoneyMono_AnnivistyReward[195935]["RewardItem"][2]["Attr"] = "0 19999"
tBigCarnival_EMoneyMono_AnnivistyReward[195935]["LogId"] = 12000438
tBigCarnival_EMoneyMono_AnnivistyReward[195935]["RewardEffect"] = {}
tBigCarnival_EMoneyMono_AnnivistyReward[195935]["RewardEffect"]["Effect"] = "angelwing"

tBigCarnival_EMoneyMono_AnnivistyReward[200580] = {}
tBigCarnival_EMoneyMono_AnnivistyReward[200580]["RewardItem"] = {}
tBigCarnival_EMoneyMono_AnnivistyReward[200580]["RewardItem"][1] = {}
tBigCarnival_EMoneyMono_AnnivistyReward[200580]["RewardItem"][1]["Id"] = 200580
tBigCarnival_EMoneyMono_AnnivistyReward[200580]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
tBigCarnival_EMoneyMono_AnnivistyReward[200580]["RewardItem"][2] = {}
tBigCarnival_EMoneyMono_AnnivistyReward[200580]["RewardItem"][2]["Id"] = 3316076
tBigCarnival_EMoneyMono_AnnivistyReward[200580]["RewardItem"][2]["Attr"] = "0 28999"
tBigCarnival_EMoneyMono_AnnivistyReward[200580]["LogId"] = 12000438
tBigCarnival_EMoneyMono_AnnivistyReward[200580]["RewardEffect"] = {}
tBigCarnival_EMoneyMono_AnnivistyReward[200580]["RewardEffect"]["Effect"] = "angelwing"

tBigCarnival_EMoneyMono_AnnivistyReward[200655] = {}
tBigCarnival_EMoneyMono_AnnivistyReward[200655]["RewardItem"] = {}
tBigCarnival_EMoneyMono_AnnivistyReward[200655]["RewardItem"][1] = {}
tBigCarnival_EMoneyMono_AnnivistyReward[200655]["RewardItem"][1]["Id"] = 200655
tBigCarnival_EMoneyMono_AnnivistyReward[200655]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
tBigCarnival_EMoneyMono_AnnivistyReward[200655]["RewardItem"][2] = {}
tBigCarnival_EMoneyMono_AnnivistyReward[200655]["RewardItem"][2]["Id"] = 3316076
tBigCarnival_EMoneyMono_AnnivistyReward[200655]["RewardItem"][2]["Attr"] = "0 28999"
tBigCarnival_EMoneyMono_AnnivistyReward[200655]["LogId"] = 12000438
tBigCarnival_EMoneyMono_AnnivistyReward[200655]["RewardEffect"] = {}
tBigCarnival_EMoneyMono_AnnivistyReward[200655]["RewardEffect"]["Effect"] = "angelwing"

tBigCarnival_EMoneyMono_AnnivistyReward[200638] = {}
tBigCarnival_EMoneyMono_AnnivistyReward[200638]["RewardItem"] = {}
tBigCarnival_EMoneyMono_AnnivistyReward[200638]["RewardItem"][1] = {}
tBigCarnival_EMoneyMono_AnnivistyReward[200638]["RewardItem"][1]["Id"] = 200638
tBigCarnival_EMoneyMono_AnnivistyReward[200638]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
tBigCarnival_EMoneyMono_AnnivistyReward[200638]["RewardItem"][2] = {}
tBigCarnival_EMoneyMono_AnnivistyReward[200638]["RewardItem"][2]["Id"] = 3316076
tBigCarnival_EMoneyMono_AnnivistyReward[200638]["RewardItem"][2]["Attr"] = "0 28999"
tBigCarnival_EMoneyMono_AnnivistyReward[200638]["LogId"] = 12000438
tBigCarnival_EMoneyMono_AnnivistyReward[200638]["RewardEffect"] = {}
tBigCarnival_EMoneyMono_AnnivistyReward[200638]["RewardEffect"]["Effect"] = "angelwing"

tBigCarnival_EMoneyMono_AnnivistyReward[711903] = {}
tBigCarnival_EMoneyMono_AnnivistyReward[711903]["RewardItem"] = {}
tBigCarnival_EMoneyMono_AnnivistyReward[711903]["RewardItem"][1] = {}
tBigCarnival_EMoneyMono_AnnivistyReward[711903]["RewardItem"][1]["Id"] = 711903
tBigCarnival_EMoneyMono_AnnivistyReward[711903]["RewardItem"][1]["Attr"] = "0 1"
tBigCarnival_EMoneyMono_AnnivistyReward[711903]["RewardItem"][2] = {}
tBigCarnival_EMoneyMono_AnnivistyReward[711903]["RewardItem"][2]["Id"] = 3316076
tBigCarnival_EMoneyMono_AnnivistyReward[711903]["RewardItem"][2]["Attr"] = "0 79999"
tBigCarnival_EMoneyMono_AnnivistyReward[711903]["LogId"] = 12000438
tBigCarnival_EMoneyMono_AnnivistyReward[711903]["RewardEffect"] = {}
tBigCarnival_EMoneyMono_AnnivistyReward[711903]["RewardEffect"]["Effect"] = "angelwing"

tBigCarnival_EMoneyMono_AnnivistyReward[711904] = {}
tBigCarnival_EMoneyMono_AnnivistyReward[711904]["RewardItem"] = {}
tBigCarnival_EMoneyMono_AnnivistyReward[711904]["RewardItem"][1] = {}
tBigCarnival_EMoneyMono_AnnivistyReward[711904]["RewardItem"][1]["Id"] = 711904
tBigCarnival_EMoneyMono_AnnivistyReward[711904]["RewardItem"][1]["Attr"] = "0 1"
tBigCarnival_EMoneyMono_AnnivistyReward[711904]["RewardItem"][2] = {}
tBigCarnival_EMoneyMono_AnnivistyReward[711904]["RewardItem"][2]["Id"] = 3316076
tBigCarnival_EMoneyMono_AnnivistyReward[711904]["RewardItem"][2]["Attr"] = "0 24999"
tBigCarnival_EMoneyMono_AnnivistyReward[711904]["LogId"] = 12000438
tBigCarnival_EMoneyMono_AnnivistyReward[711904]["RewardEffect"] = {}
tBigCarnival_EMoneyMono_AnnivistyReward[711904]["RewardEffect"]["Effect"] = "angelwing"

tBigCarnival_EMoneyMono_AnnivistyReward[3311750] = {}
tBigCarnival_EMoneyMono_AnnivistyReward[3311750]["RewardItem"] = {}
tBigCarnival_EMoneyMono_AnnivistyReward[3311750]["RewardItem"][1] = {}
tBigCarnival_EMoneyMono_AnnivistyReward[3311750]["RewardItem"][1]["Id"] = 3311750
tBigCarnival_EMoneyMono_AnnivistyReward[3311750]["RewardItem"][1]["Attr"] = "0 1"
tBigCarnival_EMoneyMono_AnnivistyReward[3311750]["RewardItem"][2] = {}
tBigCarnival_EMoneyMono_AnnivistyReward[3311750]["RewardItem"][2]["Id"] = 3316076
tBigCarnival_EMoneyMono_AnnivistyReward[3311750]["RewardItem"][2]["Attr"] = "0 19999"
tBigCarnival_EMoneyMono_AnnivistyReward[3311750]["LogId"] = 12000438
tBigCarnival_EMoneyMono_AnnivistyReward[3311750]["RewardEffect"] = {}
tBigCarnival_EMoneyMono_AnnivistyReward[3311750]["RewardEffect"]["Effect"] = "angelwing"

tBigCarnival_EMoneyMono_AnnivistyReward[3300767] = {}
tBigCarnival_EMoneyMono_AnnivistyReward[3300767]["RewardItem"] = {}
tBigCarnival_EMoneyMono_AnnivistyReward[3300767]["RewardItem"][1] = {}
tBigCarnival_EMoneyMono_AnnivistyReward[3300767]["RewardItem"][1]["Id"] = 3300767
tBigCarnival_EMoneyMono_AnnivistyReward[3300767]["RewardItem"][1]["Attr"] = "0 1"
tBigCarnival_EMoneyMono_AnnivistyReward[3300767]["RewardItem"][2] = {}
tBigCarnival_EMoneyMono_AnnivistyReward[3300767]["RewardItem"][2]["Id"] = 3316076
tBigCarnival_EMoneyMono_AnnivistyReward[3300767]["RewardItem"][2]["Attr"] = "0 1200"
tBigCarnival_EMoneyMono_AnnivistyReward[3300767]["LogId"] = 12000438
tBigCarnival_EMoneyMono_AnnivistyReward[3300767]["RewardEffect"] = {}
tBigCarnival_EMoneyMono_AnnivistyReward[3300767]["RewardEffect"]["Effect"] = "angelwing"

tBigCarnival_EMoneyMono_AnnivistyReward[3200349] = {}
tBigCarnival_EMoneyMono_AnnivistyReward[3200349]["RewardItem"] = {}
tBigCarnival_EMoneyMono_AnnivistyReward[3200349]["RewardItem"][1] = {}
tBigCarnival_EMoneyMono_AnnivistyReward[3200349]["RewardItem"][1]["Id"] = 3200349
tBigCarnival_EMoneyMono_AnnivistyReward[3200349]["RewardItem"][1]["Attr"] = "0 1"
tBigCarnival_EMoneyMono_AnnivistyReward[3200349]["RewardItem"][2] = {}
tBigCarnival_EMoneyMono_AnnivistyReward[3200349]["RewardItem"][2]["Id"] = 3316076
tBigCarnival_EMoneyMono_AnnivistyReward[3200349]["RewardItem"][2]["Attr"] = "0 499"
tBigCarnival_EMoneyMono_AnnivistyReward[3200349]["LogId"] = 12000438
tBigCarnival_EMoneyMono_AnnivistyReward[3200349]["RewardEffect"] = {}
tBigCarnival_EMoneyMono_AnnivistyReward[3200349]["RewardEffect"]["Effect"] = "angelwing"
	
-- 奖励表
local tBigCarnival_EMoneyMono_Reward = {}
	-- 除新服换购2000天石（赠）3307135  [英文征服][活动脚本]2月赠品大狂欢
	-- 除新服换购1500天石（赠）。（500天石）
	tBigCarnival_EMoneyMono_Reward[1] = {}
	-- tBigCarnival_EMoneyMono_Reward[1]["Log"] = "500,0,0,0,12000438,2,3200569[3303629],1[1]"
	tBigCarnival_EMoneyMono_Reward[1]["Log"] = "500,0,0,0,12000438,2,3200569,1[1]"
	-- tBigCarnival_EMoneyMono_Reward[1]["Log"] = "500,0,0,0,12000438,2,3307135,1"
	tBigCarnival_EMoneyMono_Reward[1]["EmoneyLog"] = "350	20234	500	500	1	"
	
	tBigCarnival_EMoneyMono_Reward[1]["RewardItem"] = {}				--物品属性
	tBigCarnival_EMoneyMono_Reward[1]["RewardItem"][1] = {}				--物品属性
	tBigCarnival_EMoneyMono_Reward[1]["RewardItem"][1]["Id"] = 3200569		--物品Id
	tBigCarnival_EMoneyMono_Reward[1]["RewardItem"][1]["Attr"] = "0 1"		--物品属性
	-- tBigCarnival_EMoneyMono_Reward[1]["RewardItem"][2] = {}				
	-- tBigCarnival_EMoneyMono_Reward[1]["RewardItem"][2]["Id"] = 3303629
	-- tBigCarnival_EMoneyMono_Reward[1]["RewardItem"][2]["Attr"] = "0 1"
	tBigCarnival_EMoneyMono_Reward[1]["RewardEffect"] = {}
	tBigCarnival_EMoneyMono_Reward[1]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 除新服换购20000天石（赠）3307136  [英文征服][活动脚本]2月赠品大狂欢
	-- 除新服换购15000天石（赠）。（5000天石）
	tBigCarnival_EMoneyMono_Reward[2] = {}
	tBigCarnival_EMoneyMono_Reward[2]["Log"] = "5000,0,0,0,12000438,2,3200570,1"
	-- tBigCarnival_EMoneyMono_Reward[2]["Log"] = "5000,0,0,0,12000438,2,3307136,1"
	tBigCarnival_EMoneyMono_Reward[2]["EmoneyLog"] = "350	20235	5000	5000	1	"
	
	tBigCarnival_EMoneyMono_Reward[2]["RewardItem"] = {}				--物品属性
	tBigCarnival_EMoneyMono_Reward[2]["RewardItem"][1] = {}				--物品属性
	tBigCarnival_EMoneyMono_Reward[2]["RewardItem"][1]["Id"] = 3200570		--物品Id
	tBigCarnival_EMoneyMono_Reward[2]["RewardItem"][1]["Attr"] = "0 1"		--物品属性
	-- tBigCarnival_EMoneyMono_Reward[2]["RewardItem"][2] = {}				
	-- tBigCarnival_EMoneyMono_Reward[2]["RewardItem"][2]["Id"] = 3303629		
	-- tBigCarnival_EMoneyMono_Reward[2]["RewardItem"][2]["Attr"] = "0 3"
	tBigCarnival_EMoneyMono_Reward[2]["RewardEffect"] = {}
	tBigCarnival_EMoneyMono_Reward[2]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 赠品消耗品促销
	tBigCarnival_EMoneyMono_Reward[3] = {}
	tBigCarnival_EMoneyMono_Reward[3]["Log"] = "%d,0,0,0,12000438,2,%d,1"
	tBigCarnival_EMoneyMono_Reward[3]["EmoneyLog"] = ""
	tBigCarnival_EMoneyMono_Reward[3]["RewardNoNeedTip"] = 1
	
	tBigCarnival_EMoneyMono_Reward[3]["RewardItem"] = {}				--物品属性
	tBigCarnival_EMoneyMono_Reward[3]["RewardItem"][1] = {}				--物品属性
	tBigCarnival_EMoneyMono_Reward[3]["RewardItem"][1]["Id"] = 1088000		--物品Id
	tBigCarnival_EMoneyMono_Reward[3]["RewardItem"][1]["Attr"] = "0 1 3"		--物品属性
	tBigCarnival_EMoneyMono_Reward[3]["RewardEffect"] = {}
	tBigCarnival_EMoneyMono_Reward[3]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 新服换购1250天石（赠）。（500天石）
	tBigCarnival_EMoneyMono_Reward[4] = {}
	tBigCarnival_EMoneyMono_Reward[4]["Log"] = "500,0,0,0,12000438,2,3303675,1"
	tBigCarnival_EMoneyMono_Reward[4]["EmoneyLog"] = "350	20590	500	500	1	"

	tBigCarnival_EMoneyMono_Reward[4]["RewardItem"] = {}				--物品属性
	tBigCarnival_EMoneyMono_Reward[4]["RewardItem"][1] = {}				--物品属性
	tBigCarnival_EMoneyMono_Reward[4]["RewardItem"][1]["Id"] = 3303675		--物品Id
	tBigCarnival_EMoneyMono_Reward[4]["RewardItem"][1]["Attr"] = "0 1"		--物品属性
	tBigCarnival_EMoneyMono_Reward[4]["RewardEffect"] = {}
	tBigCarnival_EMoneyMono_Reward[4]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 新服换购12500天石（赠）。（5000天石）
	tBigCarnival_EMoneyMono_Reward[5] = {}
	tBigCarnival_EMoneyMono_Reward[5]["Log"] = "5000,0,0,0,12000438,2,3303676,1"
	tBigCarnival_EMoneyMono_Reward[5]["EmoneyLog"] = "350	20591	5000	5000	1	"
	
	tBigCarnival_EMoneyMono_Reward[5]["RewardItem"] = {}				--物品属性
	tBigCarnival_EMoneyMono_Reward[5]["RewardItem"][1] = {}				--物品属性
	tBigCarnival_EMoneyMono_Reward[5]["RewardItem"][1]["Id"] = 3303676		--物品Id
	tBigCarnival_EMoneyMono_Reward[5]["RewardItem"][1]["Attr"] = "0 1"		--物品属性
	tBigCarnival_EMoneyMono_Reward[5]["RewardEffect"] = {}
	tBigCarnival_EMoneyMono_Reward[5]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 1500天石赠礼包
	tBigCarnival_EMoneyMono_Reward[3200569] = {}
	tBigCarnival_EMoneyMono_Reward[3200569]["Log"] = "0,0,3200569,1,12000438,2,3,1500"
	tBigCarnival_EMoneyMono_Reward[3200569]["DeleteItem"] = {}
	tBigCarnival_EMoneyMono_Reward[3200569]["DeleteItem"][1] = {}
	tBigCarnival_EMoneyMono_Reward[3200569]["DeleteItem"][1]["Id"] = 3200569
	tBigCarnival_EMoneyMono_Reward[3200569]["RewardEMoneyMono"] = {}
	tBigCarnival_EMoneyMono_Reward[3200569]["RewardEMoneyMono"]["Value"] = 1500
	tBigCarnival_EMoneyMono_Reward[3200569]["RewardEffect"] = {}
	tBigCarnival_EMoneyMono_Reward[3200569]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 3000天石赠礼包
	tBigCarnival_EMoneyMono_Reward[3311604] = {}
	tBigCarnival_EMoneyMono_Reward[3311604]["Log"] = "0,0,3311604,1,12000438,2,3,3000"
	tBigCarnival_EMoneyMono_Reward[3311604]["EmoneyLog"] = "1000	00093	0	0	3000	"
	tBigCarnival_EMoneyMono_Reward[3311604]["DeleteItem"] = {}
	tBigCarnival_EMoneyMono_Reward[3311604]["DeleteItem"][1] = {}
	tBigCarnival_EMoneyMono_Reward[3311604]["DeleteItem"][1]["Id"] = 3311604
	tBigCarnival_EMoneyMono_Reward[3311604]["RewardEMoneyMono"] = {}
	tBigCarnival_EMoneyMono_Reward[3311604]["RewardEMoneyMono"]["Value"] = 3000
	tBigCarnival_EMoneyMono_Reward[3311604]["RewardEffect"] = {}
	tBigCarnival_EMoneyMono_Reward[3311604]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 30000天石赠礼包
	tBigCarnival_EMoneyMono_Reward[3311605] = {}
	tBigCarnival_EMoneyMono_Reward[3311605]["Log"] = "0,0,3311605,1,12000438,2,3,30000"
	tBigCarnival_EMoneyMono_Reward[3311605]["EmoneyLog"] = "1000	00093	0	0	30000	"
	tBigCarnival_EMoneyMono_Reward[3311605]["DeleteItem"] = {}
	tBigCarnival_EMoneyMono_Reward[3311605]["DeleteItem"][1] = {}
	tBigCarnival_EMoneyMono_Reward[3311605]["DeleteItem"][1]["Id"] = 3311605
	tBigCarnival_EMoneyMono_Reward[3311605]["RewardEMoneyMono"] = {}
	tBigCarnival_EMoneyMono_Reward[3311605]["RewardEMoneyMono"]["Value"] = 30000
	tBigCarnival_EMoneyMono_Reward[3311605]["RewardEffect"] = {}
	tBigCarnival_EMoneyMono_Reward[3311605]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 3500天石赠礼包
	tBigCarnival_EMoneyMono_Reward[3322825] = {}
	tBigCarnival_EMoneyMono_Reward[3322825]["Log"] = "0,0,3322825,1,12000438,2,3,3500"
	tBigCarnival_EMoneyMono_Reward[3322825]["EmoneyLog"] = "1000	00093	0	0	3500	"
	tBigCarnival_EMoneyMono_Reward[3322825]["DeleteItem"] = {}
	tBigCarnival_EMoneyMono_Reward[3322825]["DeleteItem"][1] = {}
	tBigCarnival_EMoneyMono_Reward[3322825]["DeleteItem"][1]["Id"] = 3322825
	tBigCarnival_EMoneyMono_Reward[3322825]["RewardEMoneyMono"] = {}
	tBigCarnival_EMoneyMono_Reward[3322825]["RewardEMoneyMono"]["Value"] = 3500
	tBigCarnival_EMoneyMono_Reward[3322825]["RewardEffect"] = {}
	tBigCarnival_EMoneyMono_Reward[3322825]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 35000天石赠礼包
	tBigCarnival_EMoneyMono_Reward[3322826] = {}
	tBigCarnival_EMoneyMono_Reward[3322826]["Log"] = "0,0,3322826,1,12000438,2,3,35000"
	tBigCarnival_EMoneyMono_Reward[3322826]["EmoneyLog"] = "1000	00093	0	0	35000	"
	tBigCarnival_EMoneyMono_Reward[3322826]["DeleteItem"] = {}
	tBigCarnival_EMoneyMono_Reward[3322826]["DeleteItem"][1] = {}
	tBigCarnival_EMoneyMono_Reward[3322826]["DeleteItem"][1]["Id"] = 3322826
	tBigCarnival_EMoneyMono_Reward[3322826]["RewardEMoneyMono"] = {}
	tBigCarnival_EMoneyMono_Reward[3322826]["RewardEMoneyMono"]["Value"] = 35000
	tBigCarnival_EMoneyMono_Reward[3322826]["RewardEffect"] = {}
	tBigCarnival_EMoneyMono_Reward[3322826]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 4000天石赠礼包
	tBigCarnival_EMoneyMono_Reward[3311606] = {}
	tBigCarnival_EMoneyMono_Reward[3311606]["Log"] = "0,0,3311606,1,12000438,2,3,4000"
	tBigCarnival_EMoneyMono_Reward[3311606]["EmoneyLog"] = "1000	00094	0	0	4000	"
	tBigCarnival_EMoneyMono_Reward[3311606]["DeleteItem"] = {}
	tBigCarnival_EMoneyMono_Reward[3311606]["DeleteItem"][1] = {}
	tBigCarnival_EMoneyMono_Reward[3311606]["DeleteItem"][1]["Id"] = 3311606
	tBigCarnival_EMoneyMono_Reward[3311606]["RewardEMoneyMono"] = {}
	tBigCarnival_EMoneyMono_Reward[3311606]["RewardEMoneyMono"]["Value"] = 4000
	tBigCarnival_EMoneyMono_Reward[3311606]["RewardEffect"] = {}
	tBigCarnival_EMoneyMono_Reward[3311606]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 40000天石赠礼包
	tBigCarnival_EMoneyMono_Reward[3311607] = {}
	tBigCarnival_EMoneyMono_Reward[3311607]["Log"] = "0,0,3311607,1,12000438,2,3,40000"
	tBigCarnival_EMoneyMono_Reward[3311607]["EmoneyLog"] = "1000	00094	0	0	40000	"
	tBigCarnival_EMoneyMono_Reward[3311607]["DeleteItem"] = {}
	tBigCarnival_EMoneyMono_Reward[3311607]["DeleteItem"][1] = {}
	tBigCarnival_EMoneyMono_Reward[3311607]["DeleteItem"][1]["Id"] = 3311607
	tBigCarnival_EMoneyMono_Reward[3311607]["RewardEMoneyMono"] = {}
	tBigCarnival_EMoneyMono_Reward[3311607]["RewardEMoneyMono"]["Value"] = 40000
	tBigCarnival_EMoneyMono_Reward[3311607]["RewardEffect"] = {}
	tBigCarnival_EMoneyMono_Reward[3311607]["RewardEffect"]["Effect"] = "angelwing"
	
		-- 4500天石赠礼包
	tBigCarnival_EMoneyMono_Reward[3314554] = {}
	tBigCarnival_EMoneyMono_Reward[3314554]["Log"] = "0,0,3314554,1,12000438,2,3,4500"
	tBigCarnival_EMoneyMono_Reward[3314554]["EmoneyLog"] = "1000	00094	0	0	4500	"
	tBigCarnival_EMoneyMono_Reward[3314554]["DeleteItem"] = {}
	tBigCarnival_EMoneyMono_Reward[3314554]["DeleteItem"][1] = {}
	tBigCarnival_EMoneyMono_Reward[3314554]["DeleteItem"][1]["Id"] = 3314554
	tBigCarnival_EMoneyMono_Reward[3314554]["RewardEMoneyMono"] = {}
	tBigCarnival_EMoneyMono_Reward[3314554]["RewardEMoneyMono"]["Value"] = 4500
	tBigCarnival_EMoneyMono_Reward[3314554]["RewardEffect"] = {}
	tBigCarnival_EMoneyMono_Reward[3314554]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 45000天石赠礼包
	tBigCarnival_EMoneyMono_Reward[3314555] = {}
	tBigCarnival_EMoneyMono_Reward[3314555]["Log"] = "0,0,3314555,1,12000438,2,3,45000"
	tBigCarnival_EMoneyMono_Reward[3314555]["EmoneyLog"] = "1000	00094	0	0	45000	"
	tBigCarnival_EMoneyMono_Reward[3314555]["DeleteItem"] = {}
	tBigCarnival_EMoneyMono_Reward[3314555]["DeleteItem"][1] = {}
	tBigCarnival_EMoneyMono_Reward[3314555]["DeleteItem"][1]["Id"] = 3314555
	tBigCarnival_EMoneyMono_Reward[3314555]["RewardEMoneyMono"] = {}
	tBigCarnival_EMoneyMono_Reward[3314555]["RewardEMoneyMono"]["Value"] = 45000
	tBigCarnival_EMoneyMono_Reward[3314555]["RewardEffect"] = {}
	tBigCarnival_EMoneyMono_Reward[3314555]["RewardEffect"]["Effect"] = "angelwing"
	-- 5000天石赠礼包
	tBigCarnival_EMoneyMono_Reward[3311608] = {}
	tBigCarnival_EMoneyMono_Reward[3311608]["Log"] = "0,0,3311608,1,12000438,2,3,5000"
	tBigCarnival_EMoneyMono_Reward[3311608]["EmoneyLog"] = "1000	00095	0	0	5000	"
	tBigCarnival_EMoneyMono_Reward[3311608]["DeleteItem"] = {}
	tBigCarnival_EMoneyMono_Reward[3311608]["DeleteItem"][1] = {}
	tBigCarnival_EMoneyMono_Reward[3311608]["DeleteItem"][1]["Id"] = 3311608
	tBigCarnival_EMoneyMono_Reward[3311608]["RewardEMoneyMono"] = {}
	tBigCarnival_EMoneyMono_Reward[3311608]["RewardEMoneyMono"]["Value"] = 5000
	tBigCarnival_EMoneyMono_Reward[3311608]["RewardEffect"] = {}
	tBigCarnival_EMoneyMono_Reward[3311608]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 50000天石赠礼包
	tBigCarnival_EMoneyMono_Reward[3311609] = {}
	tBigCarnival_EMoneyMono_Reward[3311609]["Log"] = "0,0,3311609,1,12000438,2,3,50000"
	tBigCarnival_EMoneyMono_Reward[3311609]["EmoneyLog"] = "1000	00095	0	0	50000	"
	tBigCarnival_EMoneyMono_Reward[3311609]["DeleteItem"] = {}
	tBigCarnival_EMoneyMono_Reward[3311609]["DeleteItem"][1] = {}
	tBigCarnival_EMoneyMono_Reward[3311609]["DeleteItem"][1]["Id"] = 3311609
	tBigCarnival_EMoneyMono_Reward[3311609]["RewardEMoneyMono"] = {}
	tBigCarnival_EMoneyMono_Reward[3311609]["RewardEMoneyMono"]["Value"] = 50000
	tBigCarnival_EMoneyMono_Reward[3311609]["RewardEffect"] = {}
	tBigCarnival_EMoneyMono_Reward[3311609]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 6000天石赠礼包
	tBigCarnival_EMoneyMono_Reward[3320236] = {}
	tBigCarnival_EMoneyMono_Reward[3320236]["Log"] = "0,0,3320236,1,12000438,2,3,6000"
	tBigCarnival_EMoneyMono_Reward[3320236]["EmoneyLog"] = "1000	00093	0	0	6000	"
	tBigCarnival_EMoneyMono_Reward[3320236]["DeleteItem"] = {}
	tBigCarnival_EMoneyMono_Reward[3320236]["DeleteItem"][1] = {}
	tBigCarnival_EMoneyMono_Reward[3320236]["DeleteItem"][1]["Id"] = 3320236
	tBigCarnival_EMoneyMono_Reward[3320236]["RewardEMoneyMono"] = {}
	tBigCarnival_EMoneyMono_Reward[3320236]["RewardEMoneyMono"]["Value"] = 6000
	tBigCarnival_EMoneyMono_Reward[3320236]["RewardEffect"] = {}
	tBigCarnival_EMoneyMono_Reward[3320236]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 60000天石赠礼包
	tBigCarnival_EMoneyMono_Reward[3320237] = {}
	tBigCarnival_EMoneyMono_Reward[3320237]["Log"] = "0,0,3320237,1,12000438,2,3,60000"
	tBigCarnival_EMoneyMono_Reward[3320237]["EmoneyLog"] = "1000	00093	0	0	60000	"
	tBigCarnival_EMoneyMono_Reward[3320237]["DeleteItem"] = {}
	tBigCarnival_EMoneyMono_Reward[3320237]["DeleteItem"][1] = {}
	tBigCarnival_EMoneyMono_Reward[3320237]["DeleteItem"][1]["Id"] = 3320237
	tBigCarnival_EMoneyMono_Reward[3320237]["RewardEMoneyMono"] = {}
	tBigCarnival_EMoneyMono_Reward[3320237]["RewardEMoneyMono"]["Value"] = 60000
	tBigCarnival_EMoneyMono_Reward[3320237]["RewardEffect"] = {}
	tBigCarnival_EMoneyMono_Reward[3320237]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 7000天石赠礼包
	tBigCarnival_EMoneyMono_Reward[3320238] = {}
	tBigCarnival_EMoneyMono_Reward[3320238]["Log"] = "0,0,3320238,1,12000438,2,3,7000"
	tBigCarnival_EMoneyMono_Reward[3320238]["EmoneyLog"] = "1000	00094	0	0	7000	"
	tBigCarnival_EMoneyMono_Reward[3320238]["DeleteItem"] = {}
	tBigCarnival_EMoneyMono_Reward[3320238]["DeleteItem"][1] = {}
	tBigCarnival_EMoneyMono_Reward[3320238]["DeleteItem"][1]["Id"] = 3320238
	tBigCarnival_EMoneyMono_Reward[3320238]["RewardEMoneyMono"] = {}
	tBigCarnival_EMoneyMono_Reward[3320238]["RewardEMoneyMono"]["Value"] = 7000
	tBigCarnival_EMoneyMono_Reward[3320238]["RewardEffect"] = {}
	tBigCarnival_EMoneyMono_Reward[3320238]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 70000天石赠礼包
	tBigCarnival_EMoneyMono_Reward[3320239] = {}
	tBigCarnival_EMoneyMono_Reward[3320239]["Log"] = "0,0,3320239,1,12000438,2,3,70000"
	tBigCarnival_EMoneyMono_Reward[3320239]["EmoneyLog"] = "1000	00094	0	0	70000	"
	tBigCarnival_EMoneyMono_Reward[3320239]["DeleteItem"] = {}
	tBigCarnival_EMoneyMono_Reward[3320239]["DeleteItem"][1] = {}
	tBigCarnival_EMoneyMono_Reward[3320239]["DeleteItem"][1]["Id"] = 3320239
	tBigCarnival_EMoneyMono_Reward[3320239]["RewardEMoneyMono"] = {}
	tBigCarnival_EMoneyMono_Reward[3320239]["RewardEMoneyMono"]["Value"] = 70000
	tBigCarnival_EMoneyMono_Reward[3320239]["RewardEffect"] = {}
	tBigCarnival_EMoneyMono_Reward[3320239]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 8000天石赠礼包
	tBigCarnival_EMoneyMono_Reward[3320240] = {}
	tBigCarnival_EMoneyMono_Reward[3320240]["Log"] = "0,0,3320240,1,12000438,2,3,8000"
	tBigCarnival_EMoneyMono_Reward[3320240]["EmoneyLog"] = "1000	00095	0	0	8000	"
	tBigCarnival_EMoneyMono_Reward[3320240]["DeleteItem"] = {}
	tBigCarnival_EMoneyMono_Reward[3320240]["DeleteItem"][1] = {}
	tBigCarnival_EMoneyMono_Reward[3320240]["DeleteItem"][1]["Id"] = 3320240
	tBigCarnival_EMoneyMono_Reward[3320240]["RewardEMoneyMono"] = {}
	tBigCarnival_EMoneyMono_Reward[3320240]["RewardEMoneyMono"]["Value"] = 8000
	tBigCarnival_EMoneyMono_Reward[3320240]["RewardEffect"] = {}
	tBigCarnival_EMoneyMono_Reward[3320240]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 80000天石赠礼包
	tBigCarnival_EMoneyMono_Reward[3320241] = {}
	tBigCarnival_EMoneyMono_Reward[3320241]["Log"] = "0,0,3320241,1,12000438,2,3,80000"
	tBigCarnival_EMoneyMono_Reward[3320241]["EmoneyLog"] = "1000	00095	0	0	80000	"
	tBigCarnival_EMoneyMono_Reward[3320241]["DeleteItem"] = {}
	tBigCarnival_EMoneyMono_Reward[3320241]["DeleteItem"][1] = {}
	tBigCarnival_EMoneyMono_Reward[3320241]["DeleteItem"][1]["Id"] = 3320241
	tBigCarnival_EMoneyMono_Reward[3320241]["RewardEMoneyMono"] = {}
	tBigCarnival_EMoneyMono_Reward[3320241]["RewardEMoneyMono"]["Value"] = 80000
	tBigCarnival_EMoneyMono_Reward[3320241]["RewardEffect"] = {}
	tBigCarnival_EMoneyMono_Reward[3320241]["RewardEffect"]["Effect"] = "angelwing"
	
	
	-- 1250天石赠礼包
	tBigCarnival_EMoneyMono_Reward[3303675] = {}
	tBigCarnival_EMoneyMono_Reward[3303675]["Log"] = "0,0,3303675,1,12000438,2,3,1250"
	tBigCarnival_EMoneyMono_Reward[3303675]["DeleteItem"] = {}
	tBigCarnival_EMoneyMono_Reward[3303675]["DeleteItem"][1] = {}
	tBigCarnival_EMoneyMono_Reward[3303675]["DeleteItem"][1]["Id"] = 3303675
	tBigCarnival_EMoneyMono_Reward[3303675]["RewardEMoneyMono"] = {}
	tBigCarnival_EMoneyMono_Reward[3303675]["RewardEMoneyMono"]["Value"] = 1250
	tBigCarnival_EMoneyMono_Reward[3303675]["RewardEffect"] = {}
	tBigCarnival_EMoneyMono_Reward[3303675]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 15000天石赠礼包
	tBigCarnival_EMoneyMono_Reward[3200570] = {}
	tBigCarnival_EMoneyMono_Reward[3200570]["Log"] = "0,0,3200570,1,12000438,2,3,15000"
	tBigCarnival_EMoneyMono_Reward[3200570]["DeleteItem"] = {}
	tBigCarnival_EMoneyMono_Reward[3200570]["DeleteItem"][1] = {}
	tBigCarnival_EMoneyMono_Reward[3200570]["DeleteItem"][1]["Id"] = 3200570
	tBigCarnival_EMoneyMono_Reward[3200570]["RewardEMoneyMono"] = {}
	tBigCarnival_EMoneyMono_Reward[3200570]["RewardEMoneyMono"]["Value"] = 15000
	tBigCarnival_EMoneyMono_Reward[3200570]["RewardEffect"] = {}
	tBigCarnival_EMoneyMono_Reward[3200570]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 12500天石赠礼包
	tBigCarnival_EMoneyMono_Reward[3303676] = {}
	tBigCarnival_EMoneyMono_Reward[3303676]["Log"] = "0,0,3303676,1,12000438,2,3,12500"
	tBigCarnival_EMoneyMono_Reward[3303676]["DeleteItem"] = {}
	tBigCarnival_EMoneyMono_Reward[3303676]["DeleteItem"][1] = {}
	tBigCarnival_EMoneyMono_Reward[3303676]["DeleteItem"][1]["Id"] = 3303676
	tBigCarnival_EMoneyMono_Reward[3303676]["RewardEMoneyMono"] = {}
	tBigCarnival_EMoneyMono_Reward[3303676]["RewardEMoneyMono"]["Value"] = 12500
	tBigCarnival_EMoneyMono_Reward[3303676]["RewardEffect"] = {}
	tBigCarnival_EMoneyMono_Reward[3303676]["RewardEffect"]["Effect"] = "angelwing"
	
	
	-- 180110[英文征服][活动脚本]2月赠品大狂欢
	--2000CP包
	tBigCarnival_EMoneyMono_Reward[3307135] = {}
	tBigCarnival_EMoneyMono_Reward[3307135]["Log"] = "0,0,3307135,1,12000438,2,3,2000"
	tBigCarnival_EMoneyMono_Reward[3307135]["DeleteItem"] = {}
	tBigCarnival_EMoneyMono_Reward[3307135]["DeleteItem"][1] = {}
	tBigCarnival_EMoneyMono_Reward[3307135]["DeleteItem"][1]["Id"] = 3307135
	tBigCarnival_EMoneyMono_Reward[3307135]["RewardEMoneyMono"] = {}
	tBigCarnival_EMoneyMono_Reward[3307135]["RewardEMoneyMono"]["Value"] = 2000
	tBigCarnival_EMoneyMono_Reward[3307135]["RewardEffect"] = {}
	tBigCarnival_EMoneyMono_Reward[3307135]["RewardEffect"]["Effect"] = "angelwing"
	--2WCP包
	tBigCarnival_EMoneyMono_Reward[3307136] = {}
	tBigCarnival_EMoneyMono_Reward[3307136]["Log"] = "0,0,3307136,1,12000438,2,3,20000"
	tBigCarnival_EMoneyMono_Reward[3307136]["DeleteItem"] = {}
	tBigCarnival_EMoneyMono_Reward[3307136]["DeleteItem"][1] = {}
	tBigCarnival_EMoneyMono_Reward[3307136]["DeleteItem"][1]["Id"] = 3307136
	tBigCarnival_EMoneyMono_Reward[3307136]["RewardEMoneyMono"] = {}
	tBigCarnival_EMoneyMono_Reward[3307136]["RewardEMoneyMono"]["Value"] = 20000
	tBigCarnival_EMoneyMono_Reward[3307136]["RewardEffect"] = {}
	tBigCarnival_EMoneyMono_Reward[3307136]["RewardEffect"]["Effect"] = "angelwing"
	
	
	-- 1000点气力值礼包
	tBigCarnival_EMoneyMono_Reward[3200571] = {}
	tBigCarnival_EMoneyMono_Reward[3200571]["Log"] = "0,0,3200571,1,12000438,2,12,1000"
	tBigCarnival_EMoneyMono_Reward[3200571]["DeleteItem"] = {}
	tBigCarnival_EMoneyMono_Reward[3200571]["DeleteItem"][1] = {}
	tBigCarnival_EMoneyMono_Reward[3200571]["DeleteItem"][1]["Id"] = 3200571
	tBigCarnival_EMoneyMono_Reward[3200571]["RewardStrengthValue"] = {}
	tBigCarnival_EMoneyMono_Reward[3200571]["RewardStrengthValue"]["Value"] = 1000
	tBigCarnival_EMoneyMono_Reward[3200571]["RewardEffect"] = {}
	tBigCarnival_EMoneyMono_Reward[3200571]["RewardEffect"]["Effect"] = "angelwing"
	
	-- +4无为如意拂尘（赠）礼包
	tBigCarnival_EMoneyMono_Reward[3303687] = {}
	tBigCarnival_EMoneyMono_Reward[3303687]["Log"] = "0,0,3303687,1,12000438,2,619029,1"
	tBigCarnival_EMoneyMono_Reward[3303687]["DeleteItem"] = {}
	tBigCarnival_EMoneyMono_Reward[3303687]["DeleteItem"][1] = {}
	tBigCarnival_EMoneyMono_Reward[3303687]["DeleteItem"][1]["Id"] = 3303687
	tBigCarnival_EMoneyMono_Reward[3303687]["RewardItem"] = {} 
	tBigCarnival_EMoneyMono_Reward[3303687]["RewardItem"][1] = {}
	tBigCarnival_EMoneyMono_Reward[3303687]["RewardItem"][1]["Id"] = 619029
	tBigCarnival_EMoneyMono_Reward[3303687]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 4"
	tBigCarnival_EMoneyMono_Reward[3303687]["RewardEffect"] = {}
	tBigCarnival_EMoneyMono_Reward[3303687]["RewardEffect"]["Effect"] = "angelwing"
	
	--雷神促销新增物品
	-- +4无为如意拂尘（赠）礼包
	tBigCarnival_EMoneyMono_Reward[3320379] = {}
	tBigCarnival_EMoneyMono_Reward[3320379]["Log"] = "0,0,3320379,1,12000438,2,619029,1"
	tBigCarnival_EMoneyMono_Reward[3320379]["DeleteItem"] = {}
	tBigCarnival_EMoneyMono_Reward[3320379]["DeleteItem"][1] = {}
	tBigCarnival_EMoneyMono_Reward[3320379]["DeleteItem"][1]["Id"] = 3320379
	tBigCarnival_EMoneyMono_Reward[3320379]["RewardItem"] = {} 
	tBigCarnival_EMoneyMono_Reward[3320379]["RewardItem"][1] = {}
	tBigCarnival_EMoneyMono_Reward[3320379]["RewardItem"][1]["Id"] = 619029
	tBigCarnival_EMoneyMono_Reward[3320379]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 4"
	tBigCarnival_EMoneyMono_Reward[3320379]["RewardEffect"] = {}
	tBigCarnival_EMoneyMono_Reward[3320379]["RewardEffect"]["Effect"] = "angelwing"
	
	tBigCarnival_EMoneyMono_Reward[3321390] = {}
	tBigCarnival_EMoneyMono_Reward[3321390]["Log"] = "0,0,3321390,1,12000438,2,619029,1"
	tBigCarnival_EMoneyMono_Reward[3321390]["DeleteItem"] = {}
	tBigCarnival_EMoneyMono_Reward[3321390]["DeleteItem"][1] = {}
	tBigCarnival_EMoneyMono_Reward[3321390]["DeleteItem"][1]["Id"] = 3321390
	tBigCarnival_EMoneyMono_Reward[3321390]["RewardItem"] = {} 
	tBigCarnival_EMoneyMono_Reward[3321390]["RewardItem"][1] = {}
	tBigCarnival_EMoneyMono_Reward[3321390]["RewardItem"][1]["Id"] = 619029
	tBigCarnival_EMoneyMono_Reward[3321390]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 8"
	tBigCarnival_EMoneyMono_Reward[3321390]["RewardEffect"] = {}
	tBigCarnival_EMoneyMono_Reward[3321390]["RewardEffect"]["Effect"] = "angelwing"
	
	tBigCarnival_EMoneyMono_Reward[3321444] = {}
	tBigCarnival_EMoneyMono_Reward[3321444]["Log"] = "0,0,3321444,1,12000438,2,619029,1"
	tBigCarnival_EMoneyMono_Reward[3321444]["DeleteItem"] = {}
	tBigCarnival_EMoneyMono_Reward[3321444]["DeleteItem"][1] = {}
	tBigCarnival_EMoneyMono_Reward[3321444]["DeleteItem"][1]["Id"] = 3321444
	tBigCarnival_EMoneyMono_Reward[3321444]["RewardItem"] = {} 
	tBigCarnival_EMoneyMono_Reward[3321444]["RewardItem"][1] = {}
	tBigCarnival_EMoneyMono_Reward[3321444]["RewardItem"][1]["Id"] = 619029
	tBigCarnival_EMoneyMono_Reward[3321444]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8"
	tBigCarnival_EMoneyMono_Reward[3321444]["RewardEffect"] = {}
	tBigCarnival_EMoneyMono_Reward[3321444]["RewardEffect"]["Effect"] = "angelwing"
	
	tBigCarnival_EMoneyMono_Reward[3312579] = {}
	tBigCarnival_EMoneyMono_Reward[3312579]["Log"] = "0,0,3312579,1,12000438,2,619029,1"
	tBigCarnival_EMoneyMono_Reward[3312579]["DeleteItem"] = {}
	tBigCarnival_EMoneyMono_Reward[3312579]["DeleteItem"][1] = {}
	tBigCarnival_EMoneyMono_Reward[3312579]["DeleteItem"][1]["Id"] = 3312579
	tBigCarnival_EMoneyMono_Reward[3312579]["RewardItem"] = {} 
	tBigCarnival_EMoneyMono_Reward[3312579]["RewardItem"][1] = {}
	tBigCarnival_EMoneyMono_Reward[3312579]["RewardItem"][1]["Id"] = 619029
	tBigCarnival_EMoneyMono_Reward[3312579]["RewardItem"][1]["Attr"] = "0 0 3 0 0 0 0 0 0 0 8"
	tBigCarnival_EMoneyMono_Reward[3312579]["RewardEffect"] = {}
	tBigCarnival_EMoneyMono_Reward[3312579]["RewardEffect"]["Effect"] = "angelwing"
	
	--雷神金币
	tBigCarnival_EMoneyMono_Reward[3320663] = {}
	tBigCarnival_EMoneyMono_Reward[3320663]["Log"] = "0,0,3320663,1,12000438,2,619029,1"
	tBigCarnival_EMoneyMono_Reward[3320663]["DeleteItem"] = {}
	tBigCarnival_EMoneyMono_Reward[3320663]["DeleteItem"][1] = {}
	tBigCarnival_EMoneyMono_Reward[3320663]["DeleteItem"][1]["Id"] = 3320663
	tBigCarnival_EMoneyMono_Reward[3320663]["RewardItem"] = {} 
	tBigCarnival_EMoneyMono_Reward[3320663]["RewardItem"][1] = {}
	tBigCarnival_EMoneyMono_Reward[3320663]["RewardItem"][1]["Id"] = 619029
	tBigCarnival_EMoneyMono_Reward[3320663]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 4"
	tBigCarnival_EMoneyMono_Reward[3320663]["RewardEffect"] = {}
	tBigCarnival_EMoneyMono_Reward[3320663]["RewardEffect"]["Effect"] = "angelwing"
	
	-- +6马匹赠礼盒
	tBigCarnival_EMoneyMono_Reward[3308868] = {}
	-- +6黑颈马（赠）
	tBigCarnival_EMoneyMono_Reward[3308868][1] = {}
	tBigCarnival_EMoneyMono_Reward[3308868][1]["DeleteItem"] = {}
	tBigCarnival_EMoneyMono_Reward[3308868][1]["DeleteItem"][1] = {}
	tBigCarnival_EMoneyMono_Reward[3308868][1]["DeleteItem"][1]["Id"] = 3308868
	tBigCarnival_EMoneyMono_Reward[3308868][1]["RewardItem"] = {}
	tBigCarnival_EMoneyMono_Reward[3308868][1]["RewardItem"][1] = {}
	tBigCarnival_EMoneyMono_Reward[3308868][1]["RewardItem"][1]["Id"] = 300000
	tBigCarnival_EMoneyMono_Reward[3308868][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 9830655 150 0 0 6 0 0 0 0 0 0 255"
	tBigCarnival_EMoneyMono_Reward[3308868][1]["LogId"] = 12000438
	-- +6雪脂马（赠）
	tBigCarnival_EMoneyMono_Reward[3308868][2] = {}
	tBigCarnival_EMoneyMono_Reward[3308868][2]["DeleteItem"] = {}
	tBigCarnival_EMoneyMono_Reward[3308868][2]["DeleteItem"][1] = {}
	tBigCarnival_EMoneyMono_Reward[3308868][2]["DeleteItem"][1]["Id"] = 3308868
	tBigCarnival_EMoneyMono_Reward[3308868][2]["RewardItem"] = {}
	tBigCarnival_EMoneyMono_Reward[3308868][2]["RewardItem"][1] = {}
	tBigCarnival_EMoneyMono_Reward[3308868][2]["RewardItem"][1]["Id"] = 300000
	tBigCarnival_EMoneyMono_Reward[3308868][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 65430 0 255 0 6 0 0 0 0 0 0 150"
	tBigCarnival_EMoneyMono_Reward[3308868][2]["LogId"] = 12000438
	-- +6枣红马（赠）
	tBigCarnival_EMoneyMono_Reward[3308868][3] = {}
	tBigCarnival_EMoneyMono_Reward[3308868][3]["DeleteItem"] = {}
	tBigCarnival_EMoneyMono_Reward[3308868][3]["DeleteItem"][1] = {}
	tBigCarnival_EMoneyMono_Reward[3308868][3]["DeleteItem"][1]["Id"] = 3308868
	tBigCarnival_EMoneyMono_Reward[3308868][3]["RewardItem"] = {}
	tBigCarnival_EMoneyMono_Reward[3308868][3]["RewardItem"][1] = {}
	tBigCarnival_EMoneyMono_Reward[3308868][3]["RewardItem"][1]["Id"] = 300000
	tBigCarnival_EMoneyMono_Reward[3308868][3]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 16750080 255 150 0 6"
	tBigCarnival_EMoneyMono_Reward[3308868][3]["LogId"] = 12000438
	
	
	--四月赠品促销
	tBigCarnival_EMoneyMono_Reward[3320764]= {}
	tBigCarnival_EMoneyMono_Reward[3320764][1] = {}
	tBigCarnival_EMoneyMono_Reward[3320764][1]["LogId"] = 12000438
	tBigCarnival_EMoneyMono_Reward[3320764][1]["DeleteItem"] = {}
	tBigCarnival_EMoneyMono_Reward[3320764][1]["DeleteItem"][1] = {}
	tBigCarnival_EMoneyMono_Reward[3320764][1]["DeleteItem"][1]["Id"] = 3320764
	tBigCarnival_EMoneyMono_Reward[3320764][1]["RewardItem"] = {}
	tBigCarnival_EMoneyMono_Reward[3320764][1]["RewardItem"][1] = {}
	tBigCarnival_EMoneyMono_Reward[3320764][1]["RewardItem"][1]["Id"] = 3005977
	tBigCarnival_EMoneyMono_Reward[3320764][1]["RewardItem"][1]["Attr"] = "0 1"
	tBigCarnival_EMoneyMono_Reward[3320764][1]["RewardEffect"] = {}
	tBigCarnival_EMoneyMono_Reward[3320764][1]["RewardEffect"]["Effect"] = "angelwing"
	tBigCarnival_EMoneyMono_Reward[3320764][2] = {}
	tBigCarnival_EMoneyMono_Reward[3320764][2]["LogId"] = 12000438
	tBigCarnival_EMoneyMono_Reward[3320764][2]["DeleteItem"] = {}
	tBigCarnival_EMoneyMono_Reward[3320764][2]["DeleteItem"][1] = {}
	tBigCarnival_EMoneyMono_Reward[3320764][2]["DeleteItem"][1]["Id"] = 3320764
	tBigCarnival_EMoneyMono_Reward[3320764][2]["RewardItem"] = {}
	tBigCarnival_EMoneyMono_Reward[3320764][2]["RewardItem"][1] = {}
	tBigCarnival_EMoneyMono_Reward[3320764][2]["RewardItem"][1]["Id"] = 3005974
	tBigCarnival_EMoneyMono_Reward[3320764][2]["RewardItem"][1]["Attr"] = "0 1"
	tBigCarnival_EMoneyMono_Reward[3320764][2]["RewardEffect"] = {}
	tBigCarnival_EMoneyMono_Reward[3320764][2]["RewardEffect"]["Effect"] = "angelwing"
	
		tBigCarnival_EMoneyMono_Reward[3314574]= {}
	tBigCarnival_EMoneyMono_Reward[3314574][1] = {}
	tBigCarnival_EMoneyMono_Reward[3314574][1]["LogId"] = 12000438
	tBigCarnival_EMoneyMono_Reward[3314574][1]["DeleteItem"] = {}
	tBigCarnival_EMoneyMono_Reward[3314574][1]["DeleteItem"][1] = {}
	tBigCarnival_EMoneyMono_Reward[3314574][1]["DeleteItem"][1]["Id"] = 3314574
	tBigCarnival_EMoneyMono_Reward[3314574][1]["RewardItem"] = {}
	tBigCarnival_EMoneyMono_Reward[3314574][1]["RewardItem"][1] = {}
	tBigCarnival_EMoneyMono_Reward[3314574][1]["RewardItem"][1]["Id"] = 3302203
	tBigCarnival_EMoneyMono_Reward[3314574][1]["RewardItem"][1]["Attr"] = "0 1"
	tBigCarnival_EMoneyMono_Reward[3314574][1]["RewardEffect"] = {}
	tBigCarnival_EMoneyMono_Reward[3314574][1]["RewardEffect"]["Effect"] = "angelwing"
	tBigCarnival_EMoneyMono_Reward[3314574][2] = {}
	tBigCarnival_EMoneyMono_Reward[3314574][2]["LogId"] = 12000438
	tBigCarnival_EMoneyMono_Reward[3314574][2]["DeleteItem"] = {}
	tBigCarnival_EMoneyMono_Reward[3314574][2]["DeleteItem"][1] = {}
	tBigCarnival_EMoneyMono_Reward[3314574][2]["DeleteItem"][1]["Id"] = 3314574
	tBigCarnival_EMoneyMono_Reward[3314574][2]["RewardItem"] = {}
	tBigCarnival_EMoneyMono_Reward[3314574][2]["RewardItem"][1] = {}
	tBigCarnival_EMoneyMono_Reward[3314574][2]["RewardItem"][1]["Id"] = 3302202 
	tBigCarnival_EMoneyMono_Reward[3314574][2]["RewardItem"][1]["Attr"] = "0 1"
	tBigCarnival_EMoneyMono_Reward[3314574][2]["RewardEffect"] = {}
	tBigCarnival_EMoneyMono_Reward[3314574][2]["RewardEffect"]["Effect"] = "angelwing"
	
	--5月周年庆
	--10颗赠强效护心丹
	tBigCarnival_EMoneyMono_Reward[3312619]= {}
	tBigCarnival_EMoneyMono_Reward[3312619]["LogId"] = 12000438
	tBigCarnival_EMoneyMono_Reward[3312619]["DeleteItem"] = {}
	tBigCarnival_EMoneyMono_Reward[3312619]["DeleteItem"][1] = {}
	tBigCarnival_EMoneyMono_Reward[3312619]["DeleteItem"][1]["Id"] = 3312619
	tBigCarnival_EMoneyMono_Reward[3312619]["RewardItem"] = {}
	tBigCarnival_EMoneyMono_Reward[3312619]["RewardItem"][1] = {}
	tBigCarnival_EMoneyMono_Reward[3312619]["RewardItem"][1]["Id"] = 3002030
	tBigCarnival_EMoneyMono_Reward[3312619]["RewardItem"][1]["Attr"] = "0 10"
	tBigCarnival_EMoneyMono_Reward[3312619]["RewardEffect"] = {}
	tBigCarnival_EMoneyMono_Reward[3312619]["RewardEffect"]["Effect"] = "angelwing"

	tBigCarnival_EMoneyMono_Reward[3312620]= {}
	tBigCarnival_EMoneyMono_Reward[3312620]["LogId"] = 12000438
	tBigCarnival_EMoneyMono_Reward[3312620]["DeleteItem"] = {}
	tBigCarnival_EMoneyMono_Reward[3312620]["DeleteItem"][1] = {}
	tBigCarnival_EMoneyMono_Reward[3312620]["DeleteItem"][1]["Id"] = 3312620
	tBigCarnival_EMoneyMono_Reward[3312620]["RewardItem"] = {}
	tBigCarnival_EMoneyMono_Reward[3312620]["RewardItem"][1] = {}
	tBigCarnival_EMoneyMono_Reward[3312620]["RewardItem"][1]["Id"] = 3003126
	tBigCarnival_EMoneyMono_Reward[3312620]["RewardItem"][1]["Attr"] = "0 10 3"
	tBigCarnival_EMoneyMono_Reward[3312620]["RewardEffect"] = {}
	tBigCarnival_EMoneyMono_Reward[3312620]["RewardEffect"]["Effect"] = "angelwing"
	
	--2个人参果
	tBigCarnival_EMoneyMono_Reward[3312621]= {}
	tBigCarnival_EMoneyMono_Reward[3312621]["LogId"] = 12000438
	tBigCarnival_EMoneyMono_Reward[3312621]["DeleteItem"] = {}
	tBigCarnival_EMoneyMono_Reward[3312621]["DeleteItem"][1] = {}
	tBigCarnival_EMoneyMono_Reward[3312621]["DeleteItem"][1]["Id"] = 3312621
	tBigCarnival_EMoneyMono_Reward[3312621]["RewardItem"] = {}
	tBigCarnival_EMoneyMono_Reward[3312621]["RewardItem"][1] = {}
	tBigCarnival_EMoneyMono_Reward[3312621]["RewardItem"][1]["Id"] = 3009100
	tBigCarnival_EMoneyMono_Reward[3312621]["RewardItem"][1]["Attr"] = "0 2 3"
	tBigCarnival_EMoneyMono_Reward[3312621]["RewardEffect"] = {}
	tBigCarnival_EMoneyMono_Reward[3312621]["RewardEffect"]["Effect"] = "angelwing"
	
	--CuteMonkey
	tBigCarnival_EMoneyMono_Reward[3312622]= {}
	tBigCarnival_EMoneyMono_Reward[3312622]["LogId"] = 12000438
	tBigCarnival_EMoneyMono_Reward[3312622]["DeleteItem"] = {}
	tBigCarnival_EMoneyMono_Reward[3312622]["DeleteItem"][1] = {}
	tBigCarnival_EMoneyMono_Reward[3312622]["DeleteItem"][1]["Id"] = 3312622
	tBigCarnival_EMoneyMono_Reward[3312622]["RewardItem"] = {}
	tBigCarnival_EMoneyMono_Reward[3312622]["RewardItem"][1] = {}
	tBigCarnival_EMoneyMono_Reward[3312622]["RewardItem"][1]["Id"] = 200553
	tBigCarnival_EMoneyMono_Reward[3312622]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tBigCarnival_EMoneyMono_Reward[3312622]["RewardEffect"] = {}
	tBigCarnival_EMoneyMono_Reward[3312622]["RewardEffect"]["Effect"] = "angelwing"
	
	--巧克力甜心【炫彩】
	tBigCarnival_EMoneyMono_Reward[3312623]= {}
	tBigCarnival_EMoneyMono_Reward[3312623]["LogId"] = 12000438
	tBigCarnival_EMoneyMono_Reward[3312623]["DeleteItem"] = {}
	tBigCarnival_EMoneyMono_Reward[3312623]["DeleteItem"][1] = {}
	tBigCarnival_EMoneyMono_Reward[3312623]["DeleteItem"][1]["Id"] = 3312623
	tBigCarnival_EMoneyMono_Reward[3312623]["RewardItem"] = {}
	tBigCarnival_EMoneyMono_Reward[3312623]["RewardItem"][1] = {}
	tBigCarnival_EMoneyMono_Reward[3312623]["RewardItem"][1]["Id"] = 360291
	tBigCarnival_EMoneyMono_Reward[3312623]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
	tBigCarnival_EMoneyMono_Reward[3312623]["RewardEffect"] = {}
	tBigCarnival_EMoneyMono_Reward[3312623]["RewardEffect"]["Effect"] = "angelwing"
	
	--巧克力甜心【炫彩】
	tBigCarnival_EMoneyMono_Reward[3312624]= {}
	tBigCarnival_EMoneyMono_Reward[3312624]["LogId"] = 12000438
	tBigCarnival_EMoneyMono_Reward[3312624]["DeleteItem"] = {}
	tBigCarnival_EMoneyMono_Reward[3312624]["DeleteItem"][1] = {}
	tBigCarnival_EMoneyMono_Reward[3312624]["DeleteItem"][1]["Id"] = 3312624
	tBigCarnival_EMoneyMono_Reward[3312624]["RewardItem"] = {}
	tBigCarnival_EMoneyMono_Reward[3312624]["RewardItem"][1] = {}
	tBigCarnival_EMoneyMono_Reward[3312624]["RewardItem"][1]["Id"] = 350030
	tBigCarnival_EMoneyMono_Reward[3312624]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
	tBigCarnival_EMoneyMono_Reward[3312624]["RewardEffect"] = {}
	tBigCarnival_EMoneyMono_Reward[3312624]["RewardEffect"]["Effect"] = "angelwing"
	
	--不灭明王盾
	tBigCarnival_EMoneyMono_Reward[3312625]= {}
	tBigCarnival_EMoneyMono_Reward[3312625]["LogId"] = 12000438
	tBigCarnival_EMoneyMono_Reward[3312625]["DeleteItem"] = {}
	tBigCarnival_EMoneyMono_Reward[3312625]["DeleteItem"][1] = {}
	tBigCarnival_EMoneyMono_Reward[3312625]["DeleteItem"][1]["Id"] = 3312625
	tBigCarnival_EMoneyMono_Reward[3312625]["RewardItem"] = {}
	tBigCarnival_EMoneyMono_Reward[3312625]["RewardItem"][1] = {}
	tBigCarnival_EMoneyMono_Reward[3312625]["RewardItem"][1]["Id"] = 380010
	tBigCarnival_EMoneyMono_Reward[3312625]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
	tBigCarnival_EMoneyMono_Reward[3312625]["RewardEffect"] = {}
	tBigCarnival_EMoneyMono_Reward[3312625]["RewardEffect"]["Effect"] = "angelwing"
	
	--九霄惊雷
	tBigCarnival_EMoneyMono_Reward[3312626]= {}
	tBigCarnival_EMoneyMono_Reward[3312626]["LogId"] = 12000438
	tBigCarnival_EMoneyMono_Reward[3312626]["DeleteItem"] = {}
	tBigCarnival_EMoneyMono_Reward[3312626]["DeleteItem"][1] = {}
	tBigCarnival_EMoneyMono_Reward[3312626]["DeleteItem"][1]["Id"] = 3312626
	tBigCarnival_EMoneyMono_Reward[3312626]["RewardItem"] = {}
	tBigCarnival_EMoneyMono_Reward[3312626]["RewardItem"][1] = {}
	tBigCarnival_EMoneyMono_Reward[3312626]["RewardItem"][1]["Id"] = 370008
	tBigCarnival_EMoneyMono_Reward[3312626]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
	tBigCarnival_EMoneyMono_Reward[3312626]["RewardEffect"] = {}
	tBigCarnival_EMoneyMono_Reward[3312626]["RewardEffect"]["Effect"] = "angelwing"
	
	--分光破浪
	tBigCarnival_EMoneyMono_Reward[3312627]= {}
	tBigCarnival_EMoneyMono_Reward[3312627]["LogId"] = 12000438
	tBigCarnival_EMoneyMono_Reward[3312627]["DeleteItem"] = {}
	tBigCarnival_EMoneyMono_Reward[3312627]["DeleteItem"][1] = {}
	tBigCarnival_EMoneyMono_Reward[3312627]["DeleteItem"][1]["Id"] = 3312627
	tBigCarnival_EMoneyMono_Reward[3312627]["RewardItem"] = {}
	tBigCarnival_EMoneyMono_Reward[3312627]["RewardItem"][1] = {}
	tBigCarnival_EMoneyMono_Reward[3312627]["RewardItem"][1]["Id"] = 360220
	tBigCarnival_EMoneyMono_Reward[3312627]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
	tBigCarnival_EMoneyMono_Reward[3312627]["RewardEffect"] = {}
	tBigCarnival_EMoneyMono_Reward[3312627]["RewardEffect"]["Effect"] = "angelwing"
	
	--断岳青虹
	tBigCarnival_EMoneyMono_Reward[3312628]= {}
	tBigCarnival_EMoneyMono_Reward[3312628]["LogId"] = 12000438
	tBigCarnival_EMoneyMono_Reward[3312628]["DeleteItem"] = {}
	tBigCarnival_EMoneyMono_Reward[3312628]["DeleteItem"][1] = {}
	tBigCarnival_EMoneyMono_Reward[3312628]["DeleteItem"][1]["Id"] = 3312628
	tBigCarnival_EMoneyMono_Reward[3312628]["RewardItem"] = {}
	tBigCarnival_EMoneyMono_Reward[3312628]["RewardItem"][1] = {}
	tBigCarnival_EMoneyMono_Reward[3312628]["RewardItem"][1]["Id"] = 350022
	tBigCarnival_EMoneyMono_Reward[3312628]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
	tBigCarnival_EMoneyMono_Reward[3312628]["RewardEffect"] = {}
	tBigCarnival_EMoneyMono_Reward[3312628]["RewardEffect"]["Effect"] = "angelwing"
	
	--PirateKing`sFlag
	tBigCarnival_EMoneyMono_Reward[3312629]= {}
	tBigCarnival_EMoneyMono_Reward[3312629]["LogId"] = 12000438
	tBigCarnival_EMoneyMono_Reward[3312629]["DeleteItem"] = {}
	tBigCarnival_EMoneyMono_Reward[3312629]["DeleteItem"][1] = {}
	tBigCarnival_EMoneyMono_Reward[3312629]["DeleteItem"][1]["Id"] = 3312629
	tBigCarnival_EMoneyMono_Reward[3312629]["RewardItem"] = {}
	tBigCarnival_EMoneyMono_Reward[3312629]["RewardItem"][1] = {}
	tBigCarnival_EMoneyMono_Reward[3312629]["RewardItem"][1]["Id"] = 360047
	tBigCarnival_EMoneyMono_Reward[3312629]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
	tBigCarnival_EMoneyMono_Reward[3312629]["RewardEffect"] = {}
	tBigCarnival_EMoneyMono_Reward[3312629]["RewardEffect"]["Effect"] = "angelwing"
	
	--番茄炒蛋伞
	tBigCarnival_EMoneyMono_Reward[3312630]= {}
	tBigCarnival_EMoneyMono_Reward[3312630]["LogId"] = 12000438
	tBigCarnival_EMoneyMono_Reward[3312630]["DeleteItem"] = {}
	tBigCarnival_EMoneyMono_Reward[3312630]["DeleteItem"][1] = {}
	tBigCarnival_EMoneyMono_Reward[3312630]["DeleteItem"][1]["Id"] = 3312630
	tBigCarnival_EMoneyMono_Reward[3312630]["RewardItem"] = {}
	tBigCarnival_EMoneyMono_Reward[3312630]["RewardItem"][1] = {}
	tBigCarnival_EMoneyMono_Reward[3312630]["RewardItem"][1]["Id"] = 350118
	tBigCarnival_EMoneyMono_Reward[3312630]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
	tBigCarnival_EMoneyMono_Reward[3312630]["RewardEffect"] = {}
	tBigCarnival_EMoneyMono_Reward[3312630]["RewardEffect"]["Effect"] = "angelwing"
	
--9月新增折扣礼包
	-- ===精炼直升包
	-- ===索引: tBigCarnival_EMoneyMono_Reward[3323166]
	-- ===删除: 3323166,1
	tBigCarnival_EMoneyMono_Reward[3323166] = {}
	tBigCarnival_EMoneyMono_Reward[3323166]["LogId"] = 12000438
	tBigCarnival_EMoneyMono_Reward[3323166]["DeleteItem"] = {}
	tBigCarnival_EMoneyMono_Reward[3323166]["DeleteItem"][1] = {}
	tBigCarnival_EMoneyMono_Reward[3323166]["DeleteItem"][1]["Id"] = 3323166 -- 【库】 3323166 【库里没有该物品】[属性:]
	tBigCarnival_EMoneyMono_Reward[3323166]["RewardItem"] = {}
	tBigCarnival_EMoneyMono_Reward[3323166]["RewardItem"][1] = {}
	tBigCarnival_EMoneyMono_Reward[3323166]["RewardItem"][1]["Id"] = 3323173 -- 【库】 3323173 【库里没有该物品】[属性:], 【表格】晶莹星陨石*40
	tBigCarnival_EMoneyMono_Reward[3323166]["RewardItem"][1]["Attr"] = "0 4 0 2880 1" -- 2天时效(激活)的 3323173 【库里没有该物品】*4
	-- tBigCarnival_EMoneyMono_Reward[3323166]["RewardItem"][2] = {}
	-- tBigCarnival_EMoneyMono_Reward[3323166]["RewardItem"][2]["Id"] = 3323172 -- 【库】 3323172 【库里没有该物品】[属性:], 【表格】印记*2
	-- tBigCarnival_EMoneyMono_Reward[3323166]["RewardItem"][2]["Attr"] = "0 2" --  3323172 【库里没有该物品】*2
	tBigCarnival_EMoneyMono_Reward[3323166]["RewardEffect"] = {}
	tBigCarnival_EMoneyMono_Reward[3323166]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBigCarnival_EMoneyMono_Reward[3323166]["RewardEffect"]["Effect"] = "angelwing"


	tBigCarnival_EMoneyMono_Reward[3323167] = {}
	-- ===练气直升包
	-- ===索引: tBigCarnival_EMoneyMono_Reward[3323167]
	-- ===删除: 3323167,1
	tBigCarnival_EMoneyMono_Reward[3323167]["LogId"] = 12000438
	tBigCarnival_EMoneyMono_Reward[3323167]["DeleteItem"] = {}
	tBigCarnival_EMoneyMono_Reward[3323167]["DeleteItem"][1] = {}
	tBigCarnival_EMoneyMono_Reward[3323167]["DeleteItem"][1]["Id"] = 3323167 -- 【库】 3323167 【库里没有该物品】[属性:]
	tBigCarnival_EMoneyMono_Reward[3323167]["RewardItem"] = {}
	tBigCarnival_EMoneyMono_Reward[3323167]["RewardItem"][1] = {}
	tBigCarnival_EMoneyMono_Reward[3323167]["RewardItem"][1]["Id"] = 3323174 -- 【库】 3323174 【库里没有该物品】[属性:], 【表格】赠回气丹*100
	tBigCarnival_EMoneyMono_Reward[3323167]["RewardItem"][1]["Attr"] = "0 10" --  3323174 【库里没有该物品】*10
	-- tBigCarnival_EMoneyMono_Reward[3323167]["RewardItem"][2] = {}
	-- tBigCarnival_EMoneyMono_Reward[3323167]["RewardItem"][2]["Id"] = 3323172 -- 【库】 3323172 【库里没有该物品】[属性:], 【表格】印记*1
	-- tBigCarnival_EMoneyMono_Reward[3323167]["RewardItem"][2]["Attr"] = "0 1" --  3323172 【库里没有该物品】*1
	tBigCarnival_EMoneyMono_Reward[3323167]["RewardEffect"] = {}
	tBigCarnival_EMoneyMono_Reward[3323167]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBigCarnival_EMoneyMono_Reward[3323167]["RewardEffect"]["Effect"] = "angelwing"


	tBigCarnival_EMoneyMono_Reward[3323168] = {}
	-- ===神佑直升包
	-- ===索引: tBigCarnival_EMoneyMono_Reward[3323168]
	-- ===删除: 3323168,1
	tBigCarnival_EMoneyMono_Reward[3323168]["LogId"] = 12000438
	tBigCarnival_EMoneyMono_Reward[3323168]["DeleteItem"] = {}
	tBigCarnival_EMoneyMono_Reward[3323168]["DeleteItem"][1] = {}
	tBigCarnival_EMoneyMono_Reward[3323168]["DeleteItem"][1]["Id"] = 3323168 -- 【库】 3323168 【库里没有该物品】[属性:]
	tBigCarnival_EMoneyMono_Reward[3323168]["RewardItem"] = {}
	tBigCarnival_EMoneyMono_Reward[3323168]["RewardItem"][1] = {}
	tBigCarnival_EMoneyMono_Reward[3323168]["RewardItem"][1]["Id"] = 700073 -- 【库】TortoiseGem[属性:0], 【表格】赠优质玄元宝石*14
	tBigCarnival_EMoneyMono_Reward[3323168]["RewardItem"][1]["Attr"] = "0 14 3" -- TortoiseGem*14
	tBigCarnival_EMoneyMono_Reward[3323168]["RewardItem"][2] = {}
	tBigCarnival_EMoneyMono_Reward[3323168]["RewardItem"][2]["Id"] = 4060001 -- 【库】UniversalRuneEssence[属性:9], 【表格】赠万能神纹精粹*100
	tBigCarnival_EMoneyMono_Reward[3323168]["RewardItem"][2]["Attr"] = "0 100 3" -- UniversalRuneEssence*100
	-- tBigCarnival_EMoneyMono_Reward[3323168]["RewardItem"][3] = {}
	-- tBigCarnival_EMoneyMono_Reward[3323168]["RewardItem"][3]["Id"] = 3323172 -- 【库】 3323172 【库里没有该物品】[属性:], 【表格】印记*3
	-- tBigCarnival_EMoneyMono_Reward[3323168]["RewardItem"][3]["Attr"] = "0 3" --  3323172 【库里没有该物品】*3
	tBigCarnival_EMoneyMono_Reward[3323168]["RewardEffect"] = {}
	tBigCarnival_EMoneyMono_Reward[3323168]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBigCarnival_EMoneyMono_Reward[3323168]["RewardEffect"]["Effect"] = "angelwing"


	tBigCarnival_EMoneyMono_Reward[3323169] = {}
	-- ===追加直升包
	-- ===索引: tBigCarnival_EMoneyMono_Reward[3323169]
	-- ===删除: 3323169,1
	tBigCarnival_EMoneyMono_Reward[3323169]["LogId"] = 12000438
	tBigCarnival_EMoneyMono_Reward[3323169]["DeleteItem"] = {}
	tBigCarnival_EMoneyMono_Reward[3323169]["DeleteItem"][1] = {}
	tBigCarnival_EMoneyMono_Reward[3323169]["DeleteItem"][1]["Id"] = 3323169 -- 【库】 3323169 【库里没有该物品】[属性:]
	tBigCarnival_EMoneyMono_Reward[3323169]["RewardItem"] = {}
	tBigCarnival_EMoneyMono_Reward[3323169]["RewardItem"][1] = {}
	tBigCarnival_EMoneyMono_Reward[3323169]["RewardItem"][1]["Id"] = 3323175 -- 【库】 3323175 【库里没有该物品】[属性:], 【表格】赠赤炼石+6*20
	tBigCarnival_EMoneyMono_Reward[3323169]["RewardItem"][1]["Attr"] = "0 2" --  3323175 【库里没有该物品】*2
	tBigCarnival_EMoneyMono_Reward[3323169]["RewardItem"][2] = {}
	tBigCarnival_EMoneyMono_Reward[3323169]["RewardItem"][2]["Id"] = 3009002 -- 【库】RadiantStarStone[属性:9], 【表格】晶莹星陨石*12
	tBigCarnival_EMoneyMono_Reward[3323169]["RewardItem"][2]["Attr"] = "0 12 0 2880 1" -- 2天时效(激活)的RadiantStarStone*12
	-- tBigCarnival_EMoneyMono_Reward[3323169]["RewardItem"][3] = {}
	-- tBigCarnival_EMoneyMono_Reward[3323169]["RewardItem"][3]["Id"] = 3323172 -- 【库】 3323172 【库里没有该物品】[属性:], 【表格】印记*10
	-- tBigCarnival_EMoneyMono_Reward[3323169]["RewardItem"][3]["Attr"] = "0 10" --  3323172 【库里没有该物品】*10
	tBigCarnival_EMoneyMono_Reward[3323169]["RewardEffect"] = {}
	tBigCarnival_EMoneyMono_Reward[3323169]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBigCarnival_EMoneyMono_Reward[3323169]["RewardEffect"]["Effect"] = "angelwing"


	tBigCarnival_EMoneyMono_Reward[3323170] = {}
	-- ===神纹直升包
	-- ===索引: tBigCarnival_EMoneyMono_Reward[3323170]
	-- ===删除: 3323170,1
	tBigCarnival_EMoneyMono_Reward[3323170]["LogId"] = 12000438
	tBigCarnival_EMoneyMono_Reward[3323170]["DeleteItem"] = {}
	tBigCarnival_EMoneyMono_Reward[3323170]["DeleteItem"][1] = {}
	tBigCarnival_EMoneyMono_Reward[3323170]["DeleteItem"][1]["Id"] = 3323170 -- 【库】 3323170 【库里没有该物品】[属性:]
	tBigCarnival_EMoneyMono_Reward[3323170]["RewardItem"] = {}
	tBigCarnival_EMoneyMono_Reward[3323170]["RewardItem"][1] = {}
	tBigCarnival_EMoneyMono_Reward[3323170]["RewardItem"][1]["Id"] = 3311821 -- 【库】SuperRuneCrystal[属性:9], 【表格】赠优质神纹源晶*50
	tBigCarnival_EMoneyMono_Reward[3323170]["RewardItem"][1]["Attr"] = "0 50 3" -- SuperRuneCrystal*50
	tBigCarnival_EMoneyMono_Reward[3323170]["RewardItem"][2] = {}
	tBigCarnival_EMoneyMono_Reward[3323170]["RewardItem"][2]["Id"] = 3323173 -- 【库】 3323173 【库里没有该物品】[属性:], 【表格】晶莹星陨石*50
	tBigCarnival_EMoneyMono_Reward[3323170]["RewardItem"][2]["Attr"] = "0 5 0 2880 1" --  3323173 【库里没有该物品】*5
	-- tBigCarnival_EMoneyMono_Reward[3323170]["RewardItem"][3] = {}
	-- tBigCarnival_EMoneyMono_Reward[3323170]["RewardItem"][3]["Id"] = 3323172 -- 【库】 3323172 【库里没有该物品】[属性:], 【表格】印记*25
	-- tBigCarnival_EMoneyMono_Reward[3323170]["RewardItem"][3]["Attr"] = "0 25" --  3323172 【库里没有该物品】*25
	tBigCarnival_EMoneyMono_Reward[3323170]["RewardEffect"] = {}
	tBigCarnival_EMoneyMono_Reward[3323170]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBigCarnival_EMoneyMono_Reward[3323170]["RewardEffect"]["Effect"] = "angelwing"


	tBigCarnival_EMoneyMono_Reward[3323171] = {}
	-- ===非赠小抽奖券礼包*100
	-- ===索引: tBigCarnival_EMoneyMono_Reward[3323171]
	-- ===删除: 3323171,1
	tBigCarnival_EMoneyMono_Reward[3323171]["LogId"] = 12000438
	tBigCarnival_EMoneyMono_Reward[3323171]["DeleteItem"] = {}
	tBigCarnival_EMoneyMono_Reward[3323171]["DeleteItem"][1] = {}
	tBigCarnival_EMoneyMono_Reward[3323171]["DeleteItem"][1]["Id"] = 3323171 -- 【库】 3323171 【库里没有该物品】[属性:]
	tBigCarnival_EMoneyMono_Reward[3323171]["RewardItem"] = {}
	tBigCarnival_EMoneyMono_Reward[3323171]["RewardItem"][1] = {}
	tBigCarnival_EMoneyMono_Reward[3323171]["RewardItem"][1]["Id"] = 711504 -- 【库】SmallLotteryTicket[属性:9], 【表格】即小抽奖券*300
	tBigCarnival_EMoneyMono_Reward[3323171]["RewardItem"][1]["Attr"] = "0 300" -- SmallLotteryTicket*300
	-- tBigCarnival_EMoneyMono_Reward[3323171]["RewardItem"][2] = {}
	-- tBigCarnival_EMoneyMono_Reward[3323171]["RewardItem"][2]["Id"] = 3323172 -- 【库】 3323172 【库里没有该物品】[属性:], 【表格】印记*2
	-- tBigCarnival_EMoneyMono_Reward[3323171]["RewardItem"][2]["Attr"] = "0 2" --  3323172 【库里没有该物品】*2
	tBigCarnival_EMoneyMono_Reward[3323171]["RewardEffect"] = {}
	tBigCarnival_EMoneyMono_Reward[3323171]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBigCarnival_EMoneyMono_Reward[3323171]["RewardEffect"]["Effect"] = "angelwing"


	tBigCarnival_EMoneyMono_Reward[3323173] = {}
	-- ===RadiantStarStonesPack
	-- ===索引:tBigCarnival_EMoneyMono_Reward[3323173]
	-- ===删除: 3323173,1
	tBigCarnival_EMoneyMono_Reward[3323173]["LogId"] = 12000438
	tBigCarnival_EMoneyMono_Reward[3323173]["DeleteItem"] = {}
	tBigCarnival_EMoneyMono_Reward[3323173]["DeleteItem"][1] = {}
	tBigCarnival_EMoneyMono_Reward[3323173]["DeleteItem"][1]["Id"] = 3323173 -- 【库】 3323173 【库里没有该物品】[属性:]
	tBigCarnival_EMoneyMono_Reward[3323173]["RewardItem"] = {}
	tBigCarnival_EMoneyMono_Reward[3323173]["RewardItem"][1] = {}
	tBigCarnival_EMoneyMono_Reward[3323173]["RewardItem"][1]["Id"] = 3009002 -- 【库】RadiantStarStone[属性:9], 【表格】晶莹星陨石*10
	tBigCarnival_EMoneyMono_Reward[3323173]["RewardItem"][1]["Attr"] = "0 10 0 2880 1" -- 2天时效(激活)的RadiantStarStone*10
	tBigCarnival_EMoneyMono_Reward[3323173]["RewardEffect"] = {}
	tBigCarnival_EMoneyMono_Reward[3323173]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBigCarnival_EMoneyMono_Reward[3323173]["RewardEffect"]["Effect"] = "angelwing"


	tBigCarnival_EMoneyMono_Reward[3323174] = {}
	-- ===VitalPills（B）Pack
	-- ===索引: tBigCarnival_EMoneyMono_Reward[3323174]
	-- ===删除: 3323174,1
	tBigCarnival_EMoneyMono_Reward[3323174]["LogId"] = 12000438
	tBigCarnival_EMoneyMono_Reward[3323174]["DeleteItem"] = {}
	tBigCarnival_EMoneyMono_Reward[3323174]["DeleteItem"][1] = {}
	tBigCarnival_EMoneyMono_Reward[3323174]["DeleteItem"][1]["Id"] = 3323174 -- 【库】 3323174 【库里没有该物品】[属性:]
	tBigCarnival_EMoneyMono_Reward[3323174]["RewardItem"] = {}
	tBigCarnival_EMoneyMono_Reward[3323174]["RewardItem"][1] = {}
	tBigCarnival_EMoneyMono_Reward[3323174]["RewardItem"][1]["Id"] = 729242 -- 【库】Vital~Pill[属性:0], 【表格】VitalPills*10
	tBigCarnival_EMoneyMono_Reward[3323174]["RewardItem"][1]["Attr"] = "0 10 3" -- Vital~Pill*10
	tBigCarnival_EMoneyMono_Reward[3323174]["RewardEffect"] = {}
	tBigCarnival_EMoneyMono_Reward[3323174]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBigCarnival_EMoneyMono_Reward[3323174]["RewardEffect"]["Effect"] = "angelwing"


	tBigCarnival_EMoneyMono_Reward[3323175] = {}
	-- ===6Stones（B）Pack
	-- ===索引: tBigCarnival_EMoneyMono_Reward[3323175]
	-- ===删除: 3323175,1
	tBigCarnival_EMoneyMono_Reward[3323175]["LogId"] = 12000438
	tBigCarnival_EMoneyMono_Reward[3323175]["DeleteItem"] = {}
	tBigCarnival_EMoneyMono_Reward[3323175]["DeleteItem"][1] = {}
	tBigCarnival_EMoneyMono_Reward[3323175]["DeleteItem"][1]["Id"] = 3323175 -- 【库】 3323175 【库里没有该物品】[属性:]
	tBigCarnival_EMoneyMono_Reward[3323175]["RewardItem"] = {}
	tBigCarnival_EMoneyMono_Reward[3323175]["RewardItem"][1] = {}
	tBigCarnival_EMoneyMono_Reward[3323175]["RewardItem"][1]["Id"] = 730006 -- 【库】+6Stone[属性:0], 【表格】6赤炼石
	tBigCarnival_EMoneyMono_Reward[3323175]["RewardItem"][1]["Attr"] = "0 10 3" -- +6Stone*10
	tBigCarnival_EMoneyMono_Reward[3323175]["RewardEffect"] = {}
	tBigCarnival_EMoneyMono_Reward[3323175]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBigCarnival_EMoneyMono_Reward[3323175]["RewardEffect"]["Effect"] = "angelwing"
	--轮盘新增物品
	tBigCarnival_EMoneyMono_Reward[3314569] = {}
	tBigCarnival_EMoneyMono_Reward[3314569]["LogId"] = 12000438
	tBigCarnival_EMoneyMono_Reward[3314569]["DeleteItem"] = {}
	tBigCarnival_EMoneyMono_Reward[3314569]["DeleteItem"][1] = {}
	tBigCarnival_EMoneyMono_Reward[3314569]["DeleteItem"][1]["Id"] = 3314569 -- 【库】 3314569 【库里没有该物品】[属性:]
	tBigCarnival_EMoneyMono_Reward[3314569]["RewardItem"] = {}
	tBigCarnival_EMoneyMono_Reward[3314569]["RewardItem"][1] = {}
	tBigCarnival_EMoneyMono_Reward[3314569]["RewardItem"][1]["Id"] = 3005759 -- 【库】发型FairyBelle[属性:0], 【表格】FairyBelle
	tBigCarnival_EMoneyMono_Reward[3314569]["RewardItem"][1]["Attr"] = "0 1 3" -- 
	tBigCarnival_EMoneyMono_Reward[3314569]["RewardEffect"] = {}
	tBigCarnival_EMoneyMono_Reward[3314569]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBigCarnival_EMoneyMono_Reward[3314569]["RewardEffect"]["Effect"] = "angelwing"
	
	tBigCarnival_EMoneyMono_Reward[3314570] = {}
	tBigCarnival_EMoneyMono_Reward[3314570]["LogId"] = 12000438
	tBigCarnival_EMoneyMono_Reward[3314570]["DeleteItem"] = {}
	tBigCarnival_EMoneyMono_Reward[3314570]["DeleteItem"][1] = {}
	tBigCarnival_EMoneyMono_Reward[3314570]["DeleteItem"][1]["Id"] = 3314570 -- 【库】 3314570 【库里没有该物品】[属性:]
	tBigCarnival_EMoneyMono_Reward[3314570]["RewardItem"] = {}
	tBigCarnival_EMoneyMono_Reward[3314570]["RewardItem"][1] = {}
	tBigCarnival_EMoneyMono_Reward[3314570]["RewardItem"][1]["Id"] = 3309616 -- 【库】发型MagicPoker[属性:9], 【表格】MagicPoker
	tBigCarnival_EMoneyMono_Reward[3314570]["RewardItem"][1]["Attr"] = "0 1" -- 
	tBigCarnival_EMoneyMono_Reward[3314570]["RewardEffect"] = {}
	tBigCarnival_EMoneyMono_Reward[3314570]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBigCarnival_EMoneyMono_Reward[3314570]["RewardEffect"]["Effect"] = "angelwing"
	
	tBigCarnival_EMoneyMono_Reward[3314571] = {}
	tBigCarnival_EMoneyMono_Reward[3314571]["LogId"] = 12000438
	tBigCarnival_EMoneyMono_Reward[3314571]["DeleteItem"] = {}
	tBigCarnival_EMoneyMono_Reward[3314571]["DeleteItem"][1] = {}
	tBigCarnival_EMoneyMono_Reward[3314571]["DeleteItem"][1]["Id"] = 3314571 -- 【库】 3314571 【库里没有该物品】[属性:]
	tBigCarnival_EMoneyMono_Reward[3314571]["RewardItem"] = {}
	tBigCarnival_EMoneyMono_Reward[3314571]["RewardItem"][1] = {}
	tBigCarnival_EMoneyMono_Reward[3314571]["RewardItem"][1]["Id"] = 3008540 -- 【库】发型CuteCatEars[属性:0], 【表格】CuteCatEars
	tBigCarnival_EMoneyMono_Reward[3314571]["RewardItem"][1]["Attr"] = "0 1 3" -- 
	tBigCarnival_EMoneyMono_Reward[3314571]["RewardEffect"] = {}
	tBigCarnival_EMoneyMono_Reward[3314571]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBigCarnival_EMoneyMono_Reward[3314571]["RewardEffect"]["Effect"] = "angelwing"
	
	tBigCarnival_EMoneyMono_Reward[3314572] = {}
	tBigCarnival_EMoneyMono_Reward[3314572]["LogId"] = 12000438
	tBigCarnival_EMoneyMono_Reward[3314572]["DeleteItem"] = {}
	tBigCarnival_EMoneyMono_Reward[3314572]["DeleteItem"][1] = {}
	tBigCarnival_EMoneyMono_Reward[3314572]["DeleteItem"][1]["Id"] = 3314572 -- 【库】 3314572 【库里没有该物品】[属性:]
	tBigCarnival_EMoneyMono_Reward[3314572]["RewardItem"] = {}
	tBigCarnival_EMoneyMono_Reward[3314572]["RewardItem"][1] = {}
	tBigCarnival_EMoneyMono_Reward[3314572]["RewardItem"][1]["Id"] = 3314578 -- 【库】发型FallenLove[属性:0], 【表格】FallenLove
	tBigCarnival_EMoneyMono_Reward[3314572]["RewardItem"][1]["Attr"] = "0 1 3" -- 
	tBigCarnival_EMoneyMono_Reward[3314572]["RewardEffect"] = {}
	tBigCarnival_EMoneyMono_Reward[3314572]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBigCarnival_EMoneyMono_Reward[3314572]["RewardEffect"]["Effect"] = "angelwing"
	
	tBigCarnival_EMoneyMono_Reward[3314573] = {}
	tBigCarnival_EMoneyMono_Reward[3314573]["LogId"] = 12000438
	tBigCarnival_EMoneyMono_Reward[3314573]["DeleteItem"] = {}
	tBigCarnival_EMoneyMono_Reward[3314573]["DeleteItem"][1] = {}
	tBigCarnival_EMoneyMono_Reward[3314573]["DeleteItem"][1]["Id"] = 3314573 -- 【库】 3314573 【库里没有该物品】[属性:]
	tBigCarnival_EMoneyMono_Reward[3314573]["RewardItem"] = {}
	tBigCarnival_EMoneyMono_Reward[3314573]["RewardItem"][1] = {}
	tBigCarnival_EMoneyMono_Reward[3314573]["RewardItem"][1]["Id"] = 3308895 -- 【库】发型CurlyAfro[属性:0], 【表格】FallenLove
	tBigCarnival_EMoneyMono_Reward[3314573]["RewardItem"][1]["Attr"] = "0 1 3" -- 
	tBigCarnival_EMoneyMono_Reward[3314573]["RewardEffect"] = {}
	tBigCarnival_EMoneyMono_Reward[3314573]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBigCarnival_EMoneyMono_Reward[3314573]["RewardEffect"]["Effect"] = "angelwing"
	
	tBigCarnival_EMoneyMono_Reward[3314575] = {}
	tBigCarnival_EMoneyMono_Reward[3314575]["LogId"] = 12000438
	tBigCarnival_EMoneyMono_Reward[3314575]["DeleteItem"] = {}
	tBigCarnival_EMoneyMono_Reward[3314575]["DeleteItem"][1] = {}
	tBigCarnival_EMoneyMono_Reward[3314575]["DeleteItem"][1]["Id"] = 3314575 -- 【库】 3314575 【库里没有该物品】[属性:]
	tBigCarnival_EMoneyMono_Reward[3314575]["RewardTitle"] = {}
	tBigCarnival_EMoneyMono_Reward[3314575]["RewardTitle"]["TitleType"] = 2078   --Imperial Ruler
	tBigCarnival_EMoneyMono_Reward[3314575]["RewardTitle"]["TitleId"] = 2078    --Imperial Ruler
	tBigCarnival_EMoneyMono_Reward[3314575]["RewardTitle"]["SaveTime"] = 0
	tBigCarnival_EMoneyMono_Reward[3314575]["RewardEffect"] = {}
	tBigCarnival_EMoneyMono_Reward[3314575]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBigCarnival_EMoneyMono_Reward[3314575]["RewardEffect"]["Effect"] = "angelwing"
	
	tBigCarnival_EMoneyMono_Reward[3314576] = {}
	tBigCarnival_EMoneyMono_Reward[3314576]["LogId"] = 12000438
	tBigCarnival_EMoneyMono_Reward[3314576]["DeleteItem"] = {}
	tBigCarnival_EMoneyMono_Reward[3314576]["DeleteItem"][1] = {}
	tBigCarnival_EMoneyMono_Reward[3314576]["DeleteItem"][1]["Id"] = 3314576 -- 【库】 3314576 【库里没有该物品】[属性:]
	tBigCarnival_EMoneyMono_Reward[3314576]["RewardTitle"] = {}
	tBigCarnival_EMoneyMono_Reward[3314576]["RewardTitle"]["TitleType"] = 2124   --Heroic Pride
	tBigCarnival_EMoneyMono_Reward[3314576]["RewardTitle"]["TitleId"] = 2124    --Heroic Pride
	tBigCarnival_EMoneyMono_Reward[3314576]["RewardTitle"]["SaveTime"] = 0
	tBigCarnival_EMoneyMono_Reward[3314576]["RewardEffect"] = {}
	tBigCarnival_EMoneyMono_Reward[3314576]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBigCarnival_EMoneyMono_Reward[3314576]["RewardEffect"]["Effect"] = "angelwing"
	
	
	tBigCarnival_EMoneyMono_Reward[3316077] = {}
	tBigCarnival_EMoneyMono_Reward[3316077]["LogId"] = 12000438
	tBigCarnival_EMoneyMono_Reward[3316077]["RewardEMoneyMono"] = {}
	tBigCarnival_EMoneyMono_Reward[3316077]["RewardEMoneyMono"]["Value"] = 25000
	tBigCarnival_EMoneyMono_Reward[3316077]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	1788"
	tBigCarnival_EMoneyMono_Reward[3316077]["RewardEffect"] = {}
	tBigCarnival_EMoneyMono_Reward[3316077]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBigCarnival_EMoneyMono_Reward[3316077]["RewardEffect"]["Effect"] = "angelwing"
	tBigCarnival_EMoneyMono_Reward[3316077]["Stc"] = {220,42}
	tBigCarnival_EMoneyMono_Reward[3316077]["CaculateStc"] = {220,43}
	tBigCarnival_EMoneyMono_Reward[3316077]["NeedEmoney"] = 5000
	tBigCarnival_EMoneyMono_Reward[3316077]["GetEmoneyMono"] = 25000
	
	tBigCarnival_EMoneyMono_Reward[3316078] = {}
	tBigCarnival_EMoneyMono_Reward[3316078]["LogId"] = 12000438
	tBigCarnival_EMoneyMono_Reward[3316078]["RewardEMoneyMono"] = {}
	tBigCarnival_EMoneyMono_Reward[3316078]["RewardEMoneyMono"]["Value"] = 70000
	tBigCarnival_EMoneyMono_Reward[3316078]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	1788"
	tBigCarnival_EMoneyMono_Reward[3316078]["RewardEffect"] = {}
	tBigCarnival_EMoneyMono_Reward[3316078]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBigCarnival_EMoneyMono_Reward[3316078]["RewardEffect"]["Effect"] = "angelwing"
	tBigCarnival_EMoneyMono_Reward[3316078]["Stc"] = {220,44}
	tBigCarnival_EMoneyMono_Reward[3316078]["CaculateStc"] = {220,45}
	tBigCarnival_EMoneyMono_Reward[3316078]["NeedEmoney"] = 10000
	tBigCarnival_EMoneyMono_Reward[3316078]["GetEmoneyMono"] = 70000
	
	tBigCarnival_EMoneyMono_Reward[3316079] = {}
	tBigCarnival_EMoneyMono_Reward[3316079]["LogId"] = 12000438
	tBigCarnival_EMoneyMono_Reward[3316079]["RewardEMoneyMono"] = {}
	tBigCarnival_EMoneyMono_Reward[3316079]["RewardEMoneyMono"]["Value"] = 80000
	tBigCarnival_EMoneyMono_Reward[3316079]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	1788"
	tBigCarnival_EMoneyMono_Reward[3316079]["RewardEffect"] = {}
	tBigCarnival_EMoneyMono_Reward[3316079]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBigCarnival_EMoneyMono_Reward[3316079]["RewardEffect"]["Effect"] = "angelwing"
	tBigCarnival_EMoneyMono_Reward[3316079]["Stc"] = {220,46}
	tBigCarnival_EMoneyMono_Reward[3316079]["CaculateStc"] = {220,47}
	tBigCarnival_EMoneyMono_Reward[3316079]["NeedEmoney"] = 10000
	tBigCarnival_EMoneyMono_Reward[3316079]["GetEmoneyMono"] = 80000
	
	
-- 寻路
local tBigCarnival_EMoneyMono_FindWay = {}
	tBigCarnival_EMoneyMono_FindWay[1] = {}
	tBigCarnival_EMoneyMono_FindWay[1]["PosX"] = 364
	tBigCarnival_EMoneyMono_FindWay[1]["PosY"] = 436
	tBigCarnival_EMoneyMono_FindWay[1]["MapId"] = 1002
	tBigCarnival_EMoneyMono_FindWay[1]["NpcId"] = 19349
	
-- 物品表对应扣除天石
local tBigCarnival_EMoneyMono_ItemEmoney = {}
	tBigCarnival_EMoneyMono_ItemEmoney[3304766] = {}
	tBigCarnival_EMoneyMono_ItemEmoney[3304766][1] = 500
	tBigCarnival_EMoneyMono_ItemEmoney[3304766][2] = 5000
	-- 兑换倍数
	tBigCarnival_EMoneyMono_ItemEmoney[3304766]["Basic"] = 4
	tBigCarnival_EMoneyMono_ItemEmoney[3304767] = {}
	tBigCarnival_EMoneyMono_ItemEmoney[3304767][1] = 500
	tBigCarnival_EMoneyMono_ItemEmoney[3304767][2] = 5000
	tBigCarnival_EMoneyMono_ItemEmoney[3304767]["Basic"] = 5
	tBigCarnival_EMoneyMono_ItemEmoney[3304768] = {}
	tBigCarnival_EMoneyMono_ItemEmoney[3304768][1] = 500
	tBigCarnival_EMoneyMono_ItemEmoney[3304768][2] = 5000
	tBigCarnival_EMoneyMono_ItemEmoney[3304768]["Basic"] = 6
	tBigCarnival_EMoneyMono_ItemEmoney[3308699] = {}
	tBigCarnival_EMoneyMono_ItemEmoney[3308699][1] = 500
	tBigCarnival_EMoneyMono_ItemEmoney[3308699][2] = 5000
	tBigCarnival_EMoneyMono_ItemEmoney[3308699]["Basic"] = 7
local tBigCarnival_EMoneyMono_DiscountReward = {}
	-- 优惠兑换卡（1:4）
	tBigCarnival_EMoneyMono_DiscountReward[3304766] = {}
	tBigCarnival_EMoneyMono_DiscountReward[3304766][1] = {}
	tBigCarnival_EMoneyMono_DiscountReward[3304766][1]["Log"] = "500,0,0,0,12000438,2,3,2000"
	tBigCarnival_EMoneyMono_DiscountReward[3304766][1]["EmoneyLog"] = "350	20734	500	500	1	"
	tBigCarnival_EMoneyMono_DiscountReward[3304766][1]["RewardEMoneyMono"] = {}
	tBigCarnival_EMoneyMono_DiscountReward[3304766][1]["RewardEMoneyMono"]["Value"] = 2000
	tBigCarnival_EMoneyMono_DiscountReward[3304766][1]["RewardEffect"] = {}
	tBigCarnival_EMoneyMono_DiscountReward[3304766][1]["RewardEffect"]["Effect"] = "angelwing"
	tBigCarnival_EMoneyMono_DiscountReward[3304766][2] = {}
	tBigCarnival_EMoneyMono_DiscountReward[3304766][2]["Log"] = "5000,0,0,0,12000438,2,3,20000"
	tBigCarnival_EMoneyMono_DiscountReward[3304766][2]["EmoneyLog"] = "350	20734	5000	5000	1	"
	tBigCarnival_EMoneyMono_DiscountReward[3304766][2]["RewardEMoneyMono"] = {}
	tBigCarnival_EMoneyMono_DiscountReward[3304766][2]["RewardEMoneyMono"]["Value"] = 20000
	tBigCarnival_EMoneyMono_DiscountReward[3304766][2]["RewardEffect"] = {}
	tBigCarnival_EMoneyMono_DiscountReward[3304766][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 优惠兑换卡（1:5）
	tBigCarnival_EMoneyMono_DiscountReward[3304767] = {}
	tBigCarnival_EMoneyMono_DiscountReward[3304767][1] = {}
	tBigCarnival_EMoneyMono_DiscountReward[3304767][1]["Log"] = "500,0,0,0,12000438,2,3,2500"
	tBigCarnival_EMoneyMono_DiscountReward[3304767][1]["EmoneyLog"] = "350	20733	500	500	1	"
	tBigCarnival_EMoneyMono_DiscountReward[3304767][1]["RewardEMoneyMono"] = {}
	tBigCarnival_EMoneyMono_DiscountReward[3304767][1]["RewardEMoneyMono"]["Value"] = 2500
	tBigCarnival_EMoneyMono_DiscountReward[3304767][1]["RewardEffect"] = {}
	tBigCarnival_EMoneyMono_DiscountReward[3304767][1]["RewardEffect"]["Effect"] = "angelwing"
	tBigCarnival_EMoneyMono_DiscountReward[3304767][2] = {}
	tBigCarnival_EMoneyMono_DiscountReward[3304767][2]["Log"] = "5000,0,0,0,12000438,2,3,25000"
	tBigCarnival_EMoneyMono_DiscountReward[3304767][2]["EmoneyLog"] = "350	20733	5000	5000	1	"
	tBigCarnival_EMoneyMono_DiscountReward[3304767][2]["RewardEMoneyMono"] = {}
	tBigCarnival_EMoneyMono_DiscountReward[3304767][2]["RewardEMoneyMono"]["Value"] = 25000
	tBigCarnival_EMoneyMono_DiscountReward[3304767][2]["RewardEffect"] = {}
	tBigCarnival_EMoneyMono_DiscountReward[3304767][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 优惠兑换卡（1:6）
	tBigCarnival_EMoneyMono_DiscountReward[3304768] = {}
	tBigCarnival_EMoneyMono_DiscountReward[3304768][1] = {}
	tBigCarnival_EMoneyMono_DiscountReward[3304768][1]["Log"] = "500,0,0,0,12000438,2,3,3000"
	tBigCarnival_EMoneyMono_DiscountReward[3304768][1]["EmoneyLog"] = "350	20732	500	500	1	"
	tBigCarnival_EMoneyMono_DiscountReward[3304768][1]["RewardEMoneyMono"] = {}
	tBigCarnival_EMoneyMono_DiscountReward[3304768][1]["RewardEMoneyMono"]["Value"] = 3000
	tBigCarnival_EMoneyMono_DiscountReward[3304768][1]["RewardEffect"] = {}
	tBigCarnival_EMoneyMono_DiscountReward[3304768][1]["RewardEffect"]["Effect"] = "angelwing"
	tBigCarnival_EMoneyMono_DiscountReward[3304768][2] = {}
	tBigCarnival_EMoneyMono_DiscountReward[3304768][2]["Log"] = "5000,0,0,0,12000438,2,3,30000"
	tBigCarnival_EMoneyMono_DiscountReward[3304768][2]["EmoneyLog"] = "350	20732	5000	5000	1	"
	tBigCarnival_EMoneyMono_DiscountReward[3304768][2]["RewardEMoneyMono"] = {}
	tBigCarnival_EMoneyMono_DiscountReward[3304768][2]["RewardEMoneyMono"]["Value"] = 30000
	tBigCarnival_EMoneyMono_DiscountReward[3304768][2]["RewardEffect"] = {}
	tBigCarnival_EMoneyMono_DiscountReward[3304768][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 优惠兑换卡（1:7）
	tBigCarnival_EMoneyMono_DiscountReward[3308699] = {}
	tBigCarnival_EMoneyMono_DiscountReward[3308699][1] = {}
	tBigCarnival_EMoneyMono_DiscountReward[3308699][1]["Log"] = "500,0,0,0,12000438,2,3,3500"
	tBigCarnival_EMoneyMono_DiscountReward[3308699][1]["EmoneyLog"] = "350	20732	500	500	1	"
	tBigCarnival_EMoneyMono_DiscountReward[3308699][1]["RewardEMoneyMono"] = {}
	tBigCarnival_EMoneyMono_DiscountReward[3308699][1]["RewardEMoneyMono"]["Value"] = 3500
	tBigCarnival_EMoneyMono_DiscountReward[3308699][1]["RewardEffect"] = {}
	tBigCarnival_EMoneyMono_DiscountReward[3308699][1]["RewardEffect"]["Effect"] = "angelwing"
	tBigCarnival_EMoneyMono_DiscountReward[3308699][2] = {}
	tBigCarnival_EMoneyMono_DiscountReward[3308699][2]["Log"] = "5000,0,0,0,12000438,2,3,35000"
	tBigCarnival_EMoneyMono_DiscountReward[3308699][2]["EmoneyLog"] = "350	20732	5000	5000	1	"
	tBigCarnival_EMoneyMono_DiscountReward[3308699][2]["RewardEMoneyMono"] = {}
	tBigCarnival_EMoneyMono_DiscountReward[3308699][2]["RewardEMoneyMono"]["Value"] = 35000
	tBigCarnival_EMoneyMono_DiscountReward[3308699][2]["RewardEffect"] = {}
	tBigCarnival_EMoneyMono_DiscountReward[3308699][2]["RewardEffect"]["Effect"] = "angelwing"
	
	
---赠品大狂欢（3.22） 20180202 pyf
local tBigCarnival_EMoneyMono_TreasuresEMoneyLog = {}
	tBigCarnival_EMoneyMono_TreasuresEMoneyLog["EmoneyLog"] = "350	%d	0	0	%d	"

local tBigCarnival_EMoneyMono_TreasuresStc = {}
	--破城火雷*10
	tBigCarnival_EMoneyMono_TreasuresStc[1] = {}
	tBigCarnival_EMoneyMono_TreasuresStc[1]["EventType"] = 173
	tBigCarnival_EMoneyMono_TreasuresStc[1]["DataType"] = 04
	tBigCarnival_EMoneyMono_TreasuresStc[1]["Limit"] = 1
	--金钢灵果
	tBigCarnival_EMoneyMono_TreasuresStc[2] = {}
	tBigCarnival_EMoneyMono_TreasuresStc[2]["EventType"] = 173
	tBigCarnival_EMoneyMono_TreasuresStc[2]["DataType"] = 05
	tBigCarnival_EMoneyMono_TreasuresStc[2]["Limit"] = 1
	--辟邪护符
	tBigCarnival_EMoneyMono_TreasuresStc[3] = {}
	tBigCarnival_EMoneyMono_TreasuresStc[3]["EventType"] = 173
	tBigCarnival_EMoneyMono_TreasuresStc[3]["DataType"] = 06
	tBigCarnival_EMoneyMono_TreasuresStc[3]["Limit"] = 1
	--流星泪
	tBigCarnival_EMoneyMono_TreasuresStc[4] = {}
	tBigCarnival_EMoneyMono_TreasuresStc[4]["EventType"] = 173
	tBigCarnival_EMoneyMono_TreasuresStc[4]["DataType"] = 07
	tBigCarnival_EMoneyMono_TreasuresStc[4]["Limit"] = 1
	--炫舞者就职公文
	tBigCarnival_EMoneyMono_TreasuresStc[5] = {}
	tBigCarnival_EMoneyMono_TreasuresStc[5]["EventType"] = 173
	tBigCarnival_EMoneyMono_TreasuresStc[5]["DataType"] = 08
	tBigCarnival_EMoneyMono_TreasuresStc[5]["Limit"] = 1
	--被偷走的马鞍
	tBigCarnival_EMoneyMono_TreasuresStc[6] = {}
	tBigCarnival_EMoneyMono_TreasuresStc[6]["EventType"] = 173
	tBigCarnival_EMoneyMono_TreasuresStc[6]["DataType"] = 09
	tBigCarnival_EMoneyMono_TreasuresStc[6]["Limit"] = 1
	--纯净元气
	tBigCarnival_EMoneyMono_TreasuresStc[7] = {}
	tBigCarnival_EMoneyMono_TreasuresStc[7]["EventType"] = 173
	tBigCarnival_EMoneyMono_TreasuresStc[7]["DataType"] = 10
	tBigCarnival_EMoneyMono_TreasuresStc[7]["Limit"] = 3
	--涅槃经
	tBigCarnival_EMoneyMono_TreasuresStc[8] = {}
	tBigCarnival_EMoneyMono_TreasuresStc[8]["EventType"] = 173
	tBigCarnival_EMoneyMono_TreasuresStc[8]["DataType"] = 11
	tBigCarnival_EMoneyMono_TreasuresStc[8]["Limit"] = 2
	--降魔咒
	tBigCarnival_EMoneyMono_TreasuresStc[9] = {}
	tBigCarnival_EMoneyMono_TreasuresStc[9]["EventType"] = 173
	tBigCarnival_EMoneyMono_TreasuresStc[9]["DataType"] = 12
	tBigCarnival_EMoneyMono_TreasuresStc[9]["Limit"] = 1
	--白色恶之花
	tBigCarnival_EMoneyMono_TreasuresStc[10] = {}
	tBigCarnival_EMoneyMono_TreasuresStc[10]["EventType"] = 173
	tBigCarnival_EMoneyMono_TreasuresStc[10]["DataType"] = 13
	tBigCarnival_EMoneyMono_TreasuresStc[10]["Limit"] = 60
	--红色恶之花
	tBigCarnival_EMoneyMono_TreasuresStc[11] = {}
	tBigCarnival_EMoneyMono_TreasuresStc[11]["EventType"] = 173
	tBigCarnival_EMoneyMono_TreasuresStc[11]["DataType"] = 14
	tBigCarnival_EMoneyMono_TreasuresStc[11]["Limit"] = 60
	--祖母绿
	tBigCarnival_EMoneyMono_TreasuresStc[12] = {}
	tBigCarnival_EMoneyMono_TreasuresStc[12]["EventType"] = 173
	tBigCarnival_EMoneyMono_TreasuresStc[12]["DataType"] = 15
	tBigCarnival_EMoneyMono_TreasuresStc[12]["Limit"] = 30
	--杜康酒
	tBigCarnival_EMoneyMono_TreasuresStc[13] = {}
	tBigCarnival_EMoneyMono_TreasuresStc[13]["EventType"] = 173
	tBigCarnival_EMoneyMono_TreasuresStc[13]["DataType"] = 16
	tBigCarnival_EMoneyMono_TreasuresStc[13]["Limit"] = 30
	--二次确认
	tBigCarnival_EMoneyMono_TreasuresStc["SureDialog"] = {}
	tBigCarnival_EMoneyMono_TreasuresStc["SureDialog"]["EventType"] = 173
	tBigCarnival_EMoneyMono_TreasuresStc["SureDialog"]["DataType"] = 26
	tBigCarnival_EMoneyMono_TreasuresStc["SureDialog"]["Flag"] = 1 --表示屏蔽

--商品对应NPC对话的选项Index
local tBigCarnival_EMoneyMono_TreasuresDialogIndex = {}
	tBigCarnival_EMoneyMono_TreasuresDialogIndex[1] = "Option121"
	tBigCarnival_EMoneyMono_TreasuresDialogIndex[2] = "Option122"
	tBigCarnival_EMoneyMono_TreasuresDialogIndex[3] = "Option123"
	tBigCarnival_EMoneyMono_TreasuresDialogIndex[4] = "Option124"
	tBigCarnival_EMoneyMono_TreasuresDialogIndex[5] = "Option125"
	tBigCarnival_EMoneyMono_TreasuresDialogIndex[6] = "Option126"
	tBigCarnival_EMoneyMono_TreasuresDialogIndex[7] = "Option127"
	tBigCarnival_EMoneyMono_TreasuresDialogIndex[8] = "Option211"
	tBigCarnival_EMoneyMono_TreasuresDialogIndex[9] = "Option212"
	tBigCarnival_EMoneyMono_TreasuresDialogIndex[10] = "Option213" 
	tBigCarnival_EMoneyMono_TreasuresDialogIndex[11] = "Option214" 
	tBigCarnival_EMoneyMono_TreasuresDialogIndex[12] = "Option215" 
	tBigCarnival_EMoneyMono_TreasuresDialogIndex[13] = "Option216"

local tBigCarnival_EMoneyMono_TreasuresNeedEMoeny = {}
	tBigCarnival_EMoneyMono_TreasuresNeedEMoeny[1] = 100
	tBigCarnival_EMoneyMono_TreasuresNeedEMoeny[2] = 100
	tBigCarnival_EMoneyMono_TreasuresNeedEMoeny[3] = 100
	tBigCarnival_EMoneyMono_TreasuresNeedEMoeny[4] = 100
	tBigCarnival_EMoneyMono_TreasuresNeedEMoeny[5] = 100
	tBigCarnival_EMoneyMono_TreasuresNeedEMoeny[6] = 200
	tBigCarnival_EMoneyMono_TreasuresNeedEMoeny[7] = 800
	tBigCarnival_EMoneyMono_TreasuresNeedEMoeny[8] = 800
	tBigCarnival_EMoneyMono_TreasuresNeedEMoeny[9] = 1200
	tBigCarnival_EMoneyMono_TreasuresNeedEMoeny[10] = 81
	tBigCarnival_EMoneyMono_TreasuresNeedEMoeny[11] = 81
	tBigCarnival_EMoneyMono_TreasuresNeedEMoeny[12] = 81
	tBigCarnival_EMoneyMono_TreasuresNeedEMoeny[13] = 27

local tBigCarnival_EMoneyMono_TreasuresEMoneyId = {}
	tBigCarnival_EMoneyMono_TreasuresEMoneyId[1] = 21155
	tBigCarnival_EMoneyMono_TreasuresEMoneyId[2] = 21156
	tBigCarnival_EMoneyMono_TreasuresEMoneyId[3] = 21157
	tBigCarnival_EMoneyMono_TreasuresEMoneyId[4] = 21158
	tBigCarnival_EMoneyMono_TreasuresEMoneyId[5] = 21159
	tBigCarnival_EMoneyMono_TreasuresEMoneyId[6] = 21160
	tBigCarnival_EMoneyMono_TreasuresEMoneyId[7] = 21161
	tBigCarnival_EMoneyMono_TreasuresEMoneyId[8] = 21162
	tBigCarnival_EMoneyMono_TreasuresEMoneyId[9] = 21163
	tBigCarnival_EMoneyMono_TreasuresEMoneyId[10] = 21164
	tBigCarnival_EMoneyMono_TreasuresEMoneyId[11] = 21165
	tBigCarnival_EMoneyMono_TreasuresEMoneyId[12] = 21166
	tBigCarnival_EMoneyMono_TreasuresEMoneyId[13] = 21167

local tBigCarnival_EMoneyMono_TreasuresReward = {}
	--购买破城火雷
	tBigCarnival_EMoneyMono_TreasuresReward[1] = {}
	tBigCarnival_EMoneyMono_TreasuresReward[1]["LogId"] = 12000438
	tBigCarnival_EMoneyMono_TreasuresReward[1]["EmoneyLog"] = "350	21155	0	0	100	"
	tBigCarnival_EMoneyMono_TreasuresReward[1]["RewardItem"] = {}
	tBigCarnival_EMoneyMono_TreasuresReward[1]["RewardItem"][1] = {}
	tBigCarnival_EMoneyMono_TreasuresReward[1]["RewardItem"][1]["Id"] = 3307467
	tBigCarnival_EMoneyMono_TreasuresReward[1]["RewardItem"][1]["Attr"] = "0 1"
	tBigCarnival_EMoneyMono_TreasuresReward[1]["RewardEffect"] = {}
	tBigCarnival_EMoneyMono_TreasuresReward[1]["RewardEffect"]["Effect"] = "angelwing"
	tBigCarnival_EMoneyMono_TreasuresReward[1]["Talk"] = tBigCarnival_EMoneyMono_TreasuresText["System"]["BuySuccess"]
	--购买金刚灵果
	tBigCarnival_EMoneyMono_TreasuresReward[2] = {}
	tBigCarnival_EMoneyMono_TreasuresReward[2]["LogId"] = 12000438
	tBigCarnival_EMoneyMono_TreasuresReward[2]["EmoneyLog"] = "350	21156	0	0	100	"
	tBigCarnival_EMoneyMono_TreasuresReward[2]["RewardItem"] = {}
	tBigCarnival_EMoneyMono_TreasuresReward[2]["RewardItem"][1] = {}
	tBigCarnival_EMoneyMono_TreasuresReward[2]["RewardItem"][1]["Id"] = 711188
	tBigCarnival_EMoneyMono_TreasuresReward[2]["RewardItem"][1]["Attr"] = "0 1 3"
	tBigCarnival_EMoneyMono_TreasuresReward[2]["RewardEffect"] = {}
	tBigCarnival_EMoneyMono_TreasuresReward[2]["RewardEffect"]["Effect"] = "angelwing"
	tBigCarnival_EMoneyMono_TreasuresReward[2]["Talk"] = tBigCarnival_EMoneyMono_TreasuresText["System"]["BuySuccess"]
	--购买辟邪护符
	tBigCarnival_EMoneyMono_TreasuresReward[3] = {}
	tBigCarnival_EMoneyMono_TreasuresReward[3]["LogId"] = 12000438
	tBigCarnival_EMoneyMono_TreasuresReward[3]["EmoneyLog"] = "350	21157	0	0	100	"
	tBigCarnival_EMoneyMono_TreasuresReward[3]["RewardItem"] = {}
	tBigCarnival_EMoneyMono_TreasuresReward[3]["RewardItem"][1] = {}
	tBigCarnival_EMoneyMono_TreasuresReward[3]["RewardItem"][1]["Id"] = 3307468
	tBigCarnival_EMoneyMono_TreasuresReward[3]["RewardItem"][1]["Attr"] = "0 1"
	tBigCarnival_EMoneyMono_TreasuresReward[3]["RewardEffect"] = {}
	tBigCarnival_EMoneyMono_TreasuresReward[3]["RewardEffect"]["Effect"] = "angelwing"
	tBigCarnival_EMoneyMono_TreasuresReward[3]["Talk"] = tBigCarnival_EMoneyMono_TreasuresText["System"]["BuySuccess"]
	--购买流星泪
	tBigCarnival_EMoneyMono_TreasuresReward[4] = {}
	tBigCarnival_EMoneyMono_TreasuresReward[4]["LogId"] = 12000438
	tBigCarnival_EMoneyMono_TreasuresReward[4]["EmoneyLog"] = "350	21158	0	0	100	"
	tBigCarnival_EMoneyMono_TreasuresReward[4]["RewardItem"] = {}
	tBigCarnival_EMoneyMono_TreasuresReward[4]["RewardItem"][1] = {}
	tBigCarnival_EMoneyMono_TreasuresReward[4]["RewardItem"][1]["Id"] = 3307469
	tBigCarnival_EMoneyMono_TreasuresReward[4]["RewardItem"][1]["Attr"] = "0 1"
	tBigCarnival_EMoneyMono_TreasuresReward[4]["RewardEffect"] = {}
	tBigCarnival_EMoneyMono_TreasuresReward[4]["RewardEffect"]["Effect"] = "angelwing"
	tBigCarnival_EMoneyMono_TreasuresReward[4]["Talk"] = tBigCarnival_EMoneyMono_TreasuresText["System"]["BuySuccess"]
	--购买炫舞者就职公文
	tBigCarnival_EMoneyMono_TreasuresReward[5] = {}
	tBigCarnival_EMoneyMono_TreasuresReward[5]["LogId"] = 12000438
	tBigCarnival_EMoneyMono_TreasuresReward[5]["EmoneyLog"] = "350	21159	0	0	100	"
	tBigCarnival_EMoneyMono_TreasuresReward[5]["RewardItem"] = {}
	tBigCarnival_EMoneyMono_TreasuresReward[5]["RewardItem"][1] = {}
	tBigCarnival_EMoneyMono_TreasuresReward[5]["RewardItem"][1]["Id"] = 711679
	tBigCarnival_EMoneyMono_TreasuresReward[5]["RewardItem"][1]["Attr"] = "0 1 3"
	tBigCarnival_EMoneyMono_TreasuresReward[5]["RewardEffect"] = {}
	tBigCarnival_EMoneyMono_TreasuresReward[5]["RewardEffect"]["Effect"] = "angelwing"
	tBigCarnival_EMoneyMono_TreasuresReward[5]["Talk"] = tBigCarnival_EMoneyMono_TreasuresText["System"]["BuySuccess"]
	--购买马鞍
	tBigCarnival_EMoneyMono_TreasuresReward[6] = {}
	tBigCarnival_EMoneyMono_TreasuresReward[6]["LogId"] = 12000438
	tBigCarnival_EMoneyMono_TreasuresReward[6]["EmoneyLog"] = "350 21160	0	0	200	"
	tBigCarnival_EMoneyMono_TreasuresReward[6]["RewardItem"] = {}
	tBigCarnival_EMoneyMono_TreasuresReward[6]["RewardItem"][1] = {}
	tBigCarnival_EMoneyMono_TreasuresReward[6]["RewardItem"][1]["Id"] = 3307470
	tBigCarnival_EMoneyMono_TreasuresReward[6]["RewardItem"][1]["Attr"] = "0 1"
	tBigCarnival_EMoneyMono_TreasuresReward[6]["RewardEffect"] = {}
	tBigCarnival_EMoneyMono_TreasuresReward[6]["RewardEffect"]["Effect"] = "angelwing"
	tBigCarnival_EMoneyMono_TreasuresReward[6]["Talk"] = tBigCarnival_EMoneyMono_TreasuresText["System"]["BuySuccess"]
	--购买纯净元气
	tBigCarnival_EMoneyMono_TreasuresReward[7] = {}
	tBigCarnival_EMoneyMono_TreasuresReward[7]["LogId"] = 12000438
	tBigCarnival_EMoneyMono_TreasuresReward[7]["EmoneyLog"] = "350 21161	0	0	800	"
	tBigCarnival_EMoneyMono_TreasuresReward[7]["RewardItem"] = {}
	tBigCarnival_EMoneyMono_TreasuresReward[7]["RewardItem"][1] = {}
	tBigCarnival_EMoneyMono_TreasuresReward[7]["RewardItem"][1]["Id"] = 3307471
	tBigCarnival_EMoneyMono_TreasuresReward[7]["RewardItem"][1]["Attr"] = "0 1"
	tBigCarnival_EMoneyMono_TreasuresReward[7]["RewardEffect"] = {}
	tBigCarnival_EMoneyMono_TreasuresReward[7]["RewardEffect"]["Effect"] = "angelwing"
	tBigCarnival_EMoneyMono_TreasuresReward[7]["Talk"] = tBigCarnival_EMoneyMono_TreasuresText["System"]["BuySuccess"]
	--购买涅槃经
	tBigCarnival_EMoneyMono_TreasuresReward[8] = {}
	tBigCarnival_EMoneyMono_TreasuresReward[8]["LogId"] = 12000438
	tBigCarnival_EMoneyMono_TreasuresReward[8]["EmoneyLog"] = "350	21162	0	0	800	"
	tBigCarnival_EMoneyMono_TreasuresReward[8]["RewardItem"] = {}
	tBigCarnival_EMoneyMono_TreasuresReward[8]["RewardItem"][1] = {}
	tBigCarnival_EMoneyMono_TreasuresReward[8]["RewardItem"][1]["Id"] = 3001559
	tBigCarnival_EMoneyMono_TreasuresReward[8]["RewardItem"][1]["Attr"] = "0 1 3"
	tBigCarnival_EMoneyMono_TreasuresReward[8]["RewardEffect"] = {}
	tBigCarnival_EMoneyMono_TreasuresReward[8]["RewardEffect"]["Effect"] = "angelwing"
	tBigCarnival_EMoneyMono_TreasuresReward[8]["Talk"] = tBigCarnival_EMoneyMono_TreasuresText["System"]["BuySuccess"]
	--购买降魔咒
	tBigCarnival_EMoneyMono_TreasuresReward[9] = {}
	tBigCarnival_EMoneyMono_TreasuresReward[9]["LogId"] = 12000438
	tBigCarnival_EMoneyMono_TreasuresReward[9]["EmoneyLog"] = "350	21163	0	0	1200	"
	tBigCarnival_EMoneyMono_TreasuresReward[9]["RewardItem"] = {}
	tBigCarnival_EMoneyMono_TreasuresReward[9]["RewardItem"][1] = {}
	tBigCarnival_EMoneyMono_TreasuresReward[9]["RewardItem"][1]["Id"] = 3001565
	tBigCarnival_EMoneyMono_TreasuresReward[9]["RewardItem"][1]["Attr"] = "0 1 3"
	tBigCarnival_EMoneyMono_TreasuresReward[9]["RewardEffect"] = {}
	tBigCarnival_EMoneyMono_TreasuresReward[9]["RewardEffect"]["Effect"] = "angelwing"
	tBigCarnival_EMoneyMono_TreasuresReward[9]["Talk"] = tBigCarnival_EMoneyMono_TreasuresText["System"]["BuySuccess"]
	--购买白色花
	tBigCarnival_EMoneyMono_TreasuresReward[10] = {}
	tBigCarnival_EMoneyMono_TreasuresReward[10]["LogId"] = 12000438
	tBigCarnival_EMoneyMono_TreasuresReward[10]["EmoneyLog"] = "350	21164	0	0	81	"
	tBigCarnival_EMoneyMono_TreasuresReward[10]["RewardItem"] = {}
	tBigCarnival_EMoneyMono_TreasuresReward[10]["RewardItem"][1] = {}
	tBigCarnival_EMoneyMono_TreasuresReward[10]["RewardItem"][1]["Id"] = 722736
	tBigCarnival_EMoneyMono_TreasuresReward[10]["RewardItem"][1]["Attr"] = "0 1 3"
	tBigCarnival_EMoneyMono_TreasuresReward[10]["RewardEffect"] = {}
	tBigCarnival_EMoneyMono_TreasuresReward[10]["RewardEffect"]["Effect"] = "angelwing"
	tBigCarnival_EMoneyMono_TreasuresReward[10]["Talk"] = tBigCarnival_EMoneyMono_TreasuresText["System"]["BuySuccess"]
	--购买红色花
	tBigCarnival_EMoneyMono_TreasuresReward[11] = {}
	tBigCarnival_EMoneyMono_TreasuresReward[11]["LogId"] = 12000438
	tBigCarnival_EMoneyMono_TreasuresReward[11]["EmoneyLog"] = "350	21165	0	0	81	"
	tBigCarnival_EMoneyMono_TreasuresReward[11]["RewardItem"] = {}
	tBigCarnival_EMoneyMono_TreasuresReward[11]["RewardItem"][1] = {}
	tBigCarnival_EMoneyMono_TreasuresReward[11]["RewardItem"][1]["Id"] = 722732
	tBigCarnival_EMoneyMono_TreasuresReward[11]["RewardItem"][1]["Attr"] = "0 1 3"
	tBigCarnival_EMoneyMono_TreasuresReward[11]["RewardEffect"] = {}
	tBigCarnival_EMoneyMono_TreasuresReward[11]["RewardEffect"]["Effect"] = "angelwing"
	tBigCarnival_EMoneyMono_TreasuresReward[11]["Talk"] = tBigCarnival_EMoneyMono_TreasuresText["System"]["BuySuccess"]
	--购买祖母绿
	tBigCarnival_EMoneyMono_TreasuresReward[12] = {}
	tBigCarnival_EMoneyMono_TreasuresReward[12]["LogId"] = 12000438
	tBigCarnival_EMoneyMono_TreasuresReward[12]["EmoneyLog"] = "350	21166	0	0	81	"
	tBigCarnival_EMoneyMono_TreasuresReward[12]["RewardItem"] = {}
	tBigCarnival_EMoneyMono_TreasuresReward[12]["RewardItem"][1] = {}
	tBigCarnival_EMoneyMono_TreasuresReward[12]["RewardItem"][1]["Id"] = 1080001
	tBigCarnival_EMoneyMono_TreasuresReward[12]["RewardItem"][1]["Attr"] = "0 1 3"
	tBigCarnival_EMoneyMono_TreasuresReward[12]["RewardEffect"] = {}
	tBigCarnival_EMoneyMono_TreasuresReward[12]["RewardEffect"]["Effect"] = "angelwing"
	tBigCarnival_EMoneyMono_TreasuresReward[12]["Talk"] = tBigCarnival_EMoneyMono_TreasuresText["System"]["BuySuccess"]
	--购买杜康酒
	tBigCarnival_EMoneyMono_TreasuresReward[13] = {}
	tBigCarnival_EMoneyMono_TreasuresReward[13]["LogId"] = 12000438
	tBigCarnival_EMoneyMono_TreasuresReward[13]["EmoneyLog"] = "350	21167	0	0	27	"
	tBigCarnival_EMoneyMono_TreasuresReward[13]["RewardItem"] = {}
	tBigCarnival_EMoneyMono_TreasuresReward[13]["RewardItem"][1] = {}
	tBigCarnival_EMoneyMono_TreasuresReward[13]["RewardItem"][1]["Id"] = 723030
	tBigCarnival_EMoneyMono_TreasuresReward[13]["RewardItem"][1]["Attr"] = "0 1 3"
	tBigCarnival_EMoneyMono_TreasuresReward[13]["RewardEffect"] = {}
	tBigCarnival_EMoneyMono_TreasuresReward[13]["RewardEffect"]["Effect"] = "angelwing"
	tBigCarnival_EMoneyMono_TreasuresReward[13]["Talk"] = tBigCarnival_EMoneyMono_TreasuresText["System"]["BuySuccess"]

local tBigCarnival_EMoneyMono_TreasuresPackage = {}
	-- 破城火雷*10
	tBigCarnival_EMoneyMono_TreasuresPackage[3307467] = {}
	tBigCarnival_EMoneyMono_TreasuresPackage[3307467]["LogId"] = 12000438
	tBigCarnival_EMoneyMono_TreasuresPackage[3307467]["DeleteItem"] = {}
	tBigCarnival_EMoneyMono_TreasuresPackage[3307467]["DeleteItem"][1] = {}
	tBigCarnival_EMoneyMono_TreasuresPackage[3307467]["DeleteItem"][1]["Id"] = 3307467
	tBigCarnival_EMoneyMono_TreasuresPackage[3307467]["RewardItem"] = {}
	tBigCarnival_EMoneyMono_TreasuresPackage[3307467]["RewardItem"][1] = {}
	tBigCarnival_EMoneyMono_TreasuresPackage[3307467]["RewardItem"][1]["Id"] = 721261
	tBigCarnival_EMoneyMono_TreasuresPackage[3307467]["RewardItem"][1]["Attr"] = "0 10 3"
	tBigCarnival_EMoneyMono_TreasuresPackage[3307467]["RewardEffect"] = {}
	tBigCarnival_EMoneyMono_TreasuresPackage[3307467]["RewardEffect"]["Effect"] = "angelwing"

	-- 辟邪护符*20
	tBigCarnival_EMoneyMono_TreasuresPackage[3307468] = {}
	tBigCarnival_EMoneyMono_TreasuresPackage[3307468]["LogId"] = 12000438
	tBigCarnival_EMoneyMono_TreasuresPackage[3307468]["DeleteItem"] = {}
	tBigCarnival_EMoneyMono_TreasuresPackage[3307468]["DeleteItem"][1] = {}
	tBigCarnival_EMoneyMono_TreasuresPackage[3307468]["DeleteItem"][1]["Id"] = 3307468
	tBigCarnival_EMoneyMono_TreasuresPackage[3307468]["RewardItem"] = {}
	tBigCarnival_EMoneyMono_TreasuresPackage[3307468]["RewardItem"][1] = {}
	tBigCarnival_EMoneyMono_TreasuresPackage[3307468]["RewardItem"][1]["Id"] = 723087
	tBigCarnival_EMoneyMono_TreasuresPackage[3307468]["RewardItem"][1]["Attr"] = "0 20 3"
	tBigCarnival_EMoneyMono_TreasuresPackage[3307468]["RewardEffect"] = {}
	tBigCarnival_EMoneyMono_TreasuresPackage[3307468]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 流星泪*10
	tBigCarnival_EMoneyMono_TreasuresPackage[3307469] = {}
	tBigCarnival_EMoneyMono_TreasuresPackage[3307469]["LogId"] = 12000438
	tBigCarnival_EMoneyMono_TreasuresPackage[3307469]["DeleteItem"] = {}
	tBigCarnival_EMoneyMono_TreasuresPackage[3307469]["DeleteItem"][1] = {}
	tBigCarnival_EMoneyMono_TreasuresPackage[3307469]["DeleteItem"][1]["Id"] = 3307469
	tBigCarnival_EMoneyMono_TreasuresPackage[3307469]["RewardItem"] = {}
	tBigCarnival_EMoneyMono_TreasuresPackage[3307469]["RewardItem"][1] = {}
	tBigCarnival_EMoneyMono_TreasuresPackage[3307469]["RewardItem"][1]["Id"] = 1088002
	tBigCarnival_EMoneyMono_TreasuresPackage[3307469]["RewardItem"][1]["Attr"] = "0 10 3"
	tBigCarnival_EMoneyMono_TreasuresPackage[3307469]["RewardEffect"] = {}
	tBigCarnival_EMoneyMono_TreasuresPackage[3307469]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 被偷走的马鞍*40
	tBigCarnival_EMoneyMono_TreasuresPackage[3307470] = {}
	tBigCarnival_EMoneyMono_TreasuresPackage[3307470]["LogId"] = 12000438
	tBigCarnival_EMoneyMono_TreasuresPackage[3307470]["DeleteItem"] = {}
	tBigCarnival_EMoneyMono_TreasuresPackage[3307470]["DeleteItem"][1] = {}
	tBigCarnival_EMoneyMono_TreasuresPackage[3307470]["DeleteItem"][1]["Id"] = 3307470
	tBigCarnival_EMoneyMono_TreasuresPackage[3307470]["RewardItem"] = {}
	tBigCarnival_EMoneyMono_TreasuresPackage[3307470]["RewardItem"][1] = {}
	tBigCarnival_EMoneyMono_TreasuresPackage[3307470]["RewardItem"][1]["Id"] = 723903
	tBigCarnival_EMoneyMono_TreasuresPackage[3307470]["RewardItem"][1]["Attr"] = "0 40 3"
	tBigCarnival_EMoneyMono_TreasuresPackage[3307470]["RewardEffect"] = {}
	tBigCarnival_EMoneyMono_TreasuresPackage[3307470]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 纯净元气
	tBigCarnival_EMoneyMono_TreasuresPackage[3307471] = {}
	tBigCarnival_EMoneyMono_TreasuresPackage[3307471]["LogId"] = 12000438
	tBigCarnival_EMoneyMono_TreasuresPackage[3307471]["DeleteItem"] = {}
	tBigCarnival_EMoneyMono_TreasuresPackage[3307471]["DeleteItem"][1] = {}
	tBigCarnival_EMoneyMono_TreasuresPackage[3307471]["DeleteItem"][1]["Id"] = 3307471
	tBigCarnival_EMoneyMono_TreasuresPackage[3307471]["RewardItem"] = {}
	tBigCarnival_EMoneyMono_TreasuresPackage[3307471]["RewardItem"][1] = {}
	tBigCarnival_EMoneyMono_TreasuresPackage[3307471]["RewardItem"][1]["Id"] = 722731
	tBigCarnival_EMoneyMono_TreasuresPackage[3307471]["RewardItem"][1]["Attr"] = "0 1 3"
	tBigCarnival_EMoneyMono_TreasuresPackage[3307471]["RewardEffect"] = {}
	tBigCarnival_EMoneyMono_TreasuresPackage[3307471]["RewardEffect"]["Effect"] = "angelwing"
	-- 万能神纹精粹（赠）
	tBigCarnival_EMoneyMono_TreasuresPackage[3308803] = {}
	tBigCarnival_EMoneyMono_TreasuresPackage[3308803]["LogId"] = 12000438
	tBigCarnival_EMoneyMono_TreasuresPackage[3308803]["DeleteItem"] = {}
	tBigCarnival_EMoneyMono_TreasuresPackage[3308803]["DeleteItem"][1] = {}
	tBigCarnival_EMoneyMono_TreasuresPackage[3308803]["DeleteItem"][1]["Id"] = 3308803
	tBigCarnival_EMoneyMono_TreasuresPackage[3308803]["RewardItem"] = {}
	tBigCarnival_EMoneyMono_TreasuresPackage[3308803]["RewardItem"][1] = {}
	tBigCarnival_EMoneyMono_TreasuresPackage[3308803]["RewardItem"][1]["Id"] = 4060001
	tBigCarnival_EMoneyMono_TreasuresPackage[3308803]["RewardItem"][1]["Attr"] = "0 10 3"
	tBigCarnival_EMoneyMono_TreasuresPackage[3308803]["RewardEffect"] = {}
	tBigCarnival_EMoneyMono_TreasuresPackage[3308803]["RewardEffect"]["Effect"] = "angelwing"
	
	--4月促销
	--ForeverHeart
	tBigCarnival_EMoneyMono_TreasuresPackage[3320762] = {}
	tBigCarnival_EMoneyMono_TreasuresPackage[3320762]["LogId"] = 12000438
	tBigCarnival_EMoneyMono_TreasuresPackage[3320762]["DeleteItem"] = {}
	tBigCarnival_EMoneyMono_TreasuresPackage[3320762]["DeleteItem"][1] = {}
	tBigCarnival_EMoneyMono_TreasuresPackage[3320762]["DeleteItem"][1]["Id"] = 3320762
	tBigCarnival_EMoneyMono_TreasuresPackage[3320762]["RewardItem"] = {}
	tBigCarnival_EMoneyMono_TreasuresPackage[3320762]["RewardItem"][1] = {}
	tBigCarnival_EMoneyMono_TreasuresPackage[3320762]["RewardItem"][1]["Id"] = 195055
	tBigCarnival_EMoneyMono_TreasuresPackage[3320762]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tBigCarnival_EMoneyMono_TreasuresPackage[3320762]["RewardEffect"] = {}
	tBigCarnival_EMoneyMono_TreasuresPackage[3320762]["RewardEffect"]["Effect"] = "angelwing"
	
	--星际战鸡·终极挑战号StarRoosterUltimateChallenge
	tBigCarnival_EMoneyMono_TreasuresPackage[3320763] = {}
	tBigCarnival_EMoneyMono_TreasuresPackage[3320763]["LogId"] = 12000438
	tBigCarnival_EMoneyMono_TreasuresPackage[3320763]["DeleteItem"] = {}
	tBigCarnival_EMoneyMono_TreasuresPackage[3320763]["DeleteItem"][1] = {}
	tBigCarnival_EMoneyMono_TreasuresPackage[3320763]["DeleteItem"][1]["Id"] = 3320763
	tBigCarnival_EMoneyMono_TreasuresPackage[3320763]["RewardItem"] = {}
	tBigCarnival_EMoneyMono_TreasuresPackage[3320763]["RewardItem"][1] = {}
	tBigCarnival_EMoneyMono_TreasuresPackage[3320763]["RewardItem"][1]["Id"] = 200592
	tBigCarnival_EMoneyMono_TreasuresPackage[3320763]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tBigCarnival_EMoneyMono_TreasuresPackage[3320763]["RewardEffect"] = {}
	tBigCarnival_EMoneyMono_TreasuresPackage[3320763]["RewardEffect"]["Effect"] = "angelwing"
	
	--雷神赠品促销
	tBigCarnival_EMoneyMono_TreasuresPackage[3320242] = {}
	tBigCarnival_EMoneyMono_TreasuresPackage[3320242]["LogId"] = 12000438
	tBigCarnival_EMoneyMono_TreasuresPackage[3320242]["DeleteItem"] = {}
	tBigCarnival_EMoneyMono_TreasuresPackage[3320242]["DeleteItem"][1] = {}
	tBigCarnival_EMoneyMono_TreasuresPackage[3320242]["DeleteItem"][1]["Id"] = 3320242
	tBigCarnival_EMoneyMono_TreasuresPackage[3320242]["RewardItem"] = {}
	tBigCarnival_EMoneyMono_TreasuresPackage[3320242]["RewardItem"][1] = {}
	tBigCarnival_EMoneyMono_TreasuresPackage[3320242]["RewardItem"][1]["Id"] = 3311759
	tBigCarnival_EMoneyMono_TreasuresPackage[3320242]["RewardItem"][1]["Attr"] = "0 1 3"
	tBigCarnival_EMoneyMono_TreasuresPackage[3320242]["RewardEffect"] = {}
	tBigCarnival_EMoneyMono_TreasuresPackage[3320242]["RewardEffect"]["Effect"] = "angelwing"
	
	tBigCarnival_EMoneyMono_TreasuresPackage[3320243] = {}
	tBigCarnival_EMoneyMono_TreasuresPackage[3320243]["LogId"] = 12000438
	tBigCarnival_EMoneyMono_TreasuresPackage[3320243]["DeleteItem"] = {}
	tBigCarnival_EMoneyMono_TreasuresPackage[3320243]["DeleteItem"][1] = {}
	tBigCarnival_EMoneyMono_TreasuresPackage[3320243]["DeleteItem"][1]["Id"] = 3320243
	tBigCarnival_EMoneyMono_TreasuresPackage[3320243]["RewardItem"] = {}
	tBigCarnival_EMoneyMono_TreasuresPackage[3320243]["RewardItem"][1] = {}
	tBigCarnival_EMoneyMono_TreasuresPackage[3320243]["RewardItem"][1]["Id"] = 3311759
	tBigCarnival_EMoneyMono_TreasuresPackage[3320243]["RewardItem"][1]["Attr"] = "0 5 3"
	tBigCarnival_EMoneyMono_TreasuresPackage[3320243]["RewardEffect"] = {}
	tBigCarnival_EMoneyMono_TreasuresPackage[3320243]["RewardEffect"]["Effect"] = "angelwing"
	
	tBigCarnival_EMoneyMono_TreasuresPackage[3320244] = {}
	tBigCarnival_EMoneyMono_TreasuresPackage[3320244]["LogId"] = 12000438
	tBigCarnival_EMoneyMono_TreasuresPackage[3320244]["DeleteItem"] = {}
	tBigCarnival_EMoneyMono_TreasuresPackage[3320244]["DeleteItem"][1] = {}
	tBigCarnival_EMoneyMono_TreasuresPackage[3320244]["DeleteItem"][1]["Id"] = 3320244
	tBigCarnival_EMoneyMono_TreasuresPackage[3320244]["RewardItem"] = {}
	tBigCarnival_EMoneyMono_TreasuresPackage[3320244]["RewardItem"][1] = {}
	tBigCarnival_EMoneyMono_TreasuresPackage[3320244]["RewardItem"][1]["Id"] = 3311759
	tBigCarnival_EMoneyMono_TreasuresPackage[3320244]["RewardItem"][1]["Attr"] = "0 10 3"
	tBigCarnival_EMoneyMono_TreasuresPackage[3320244]["RewardEffect"] = {}
	tBigCarnival_EMoneyMono_TreasuresPackage[3320244]["RewardEffect"]["Effect"] = "angelwing"
	
	tBigCarnival_EMoneyMono_TreasuresPackage[3320246] = {}
	tBigCarnival_EMoneyMono_TreasuresPackage[3320246]["LogId"] = 12000438
	tBigCarnival_EMoneyMono_TreasuresPackage[3320246]["DeleteItem"] = {}
	tBigCarnival_EMoneyMono_TreasuresPackage[3320246]["DeleteItem"][1] = {}
	tBigCarnival_EMoneyMono_TreasuresPackage[3320246]["DeleteItem"][1]["Id"] = 3320246
	tBigCarnival_EMoneyMono_TreasuresPackage[3320246]["RewardItem"] = {}
	tBigCarnival_EMoneyMono_TreasuresPackage[3320246]["RewardItem"][1] = {}
	tBigCarnival_EMoneyMono_TreasuresPackage[3320246]["RewardItem"][1]["Id"] = 3306370
	tBigCarnival_EMoneyMono_TreasuresPackage[3320246]["RewardItem"][1]["Attr"] = "0 1"
	tBigCarnival_EMoneyMono_TreasuresPackage[3320246]["RewardEffect"] = {}
	tBigCarnival_EMoneyMono_TreasuresPackage[3320246]["RewardEffect"]["Effect"] = "angelwing"
	
	
	
--12月赠品大狂欢
local tBigCarnival_EMoneyMono_Christmas_Web = {}
tBigCarnival_EMoneyMono_Christmas_Web["Webstc"] = "https://coevent.99.com/newclassgrandsale/"

--天石换赠点边界
local tBigCarnival_EMoneyMono_Christmas_Board = {}
tBigCarnival_EMoneyMono_Christmas_Board[1] = {0,90000,3}
tBigCarnival_EMoneyMono_Christmas_Board[2] = {90000,250000,4}
tBigCarnival_EMoneyMono_Christmas_Board[3] = {250000,500000,5}
tBigCarnival_EMoneyMono_Christmas_Board[4] = {500000,980000,6}


--新增圣诞兑换Npc
local tBigCarnival_EMoneyMono_Christmas_Stc = {}
tBigCarnival_EMoneyMono_Christmas_Stc["Eventype"] = 186
tBigCarnival_EMoneyMono_Christmas_Stc["Datatype"] = 31

local tBigCarnival_EMoneyMono_Christmas_ItemId = {}
tBigCarnival_EMoneyMono_Christmas_ItemId[3311620] = 3311620

--上传圣诞糖果，打相关log
local tBigCarnival_EMoneyMono_Christmas_Awardlog = {}
tBigCarnival_EMoneyMono_Christmas_Awardlog[23554] = "0 0 3311620 %d 12000438 2 0 0"

--第一名globalid
local  tBigCarnival_EMoneyMono_Christmas_Firstglobalid = {}
tBigCarnival_EMoneyMono_Christmas_Firstglobalid["globalId"] = 53088

--玩家第一名邮件发奖
local tBigCarnival_EMoneyMono_Christmas_Mail = {}
tBigCarnival_EMoneyMono_Christmas_Mail["nActionId"] = 571246
tBigCarnival_EMoneyMono_Christmas_Mail["nExistDay"] = 30
tBigCarnival_EMoneyMono_Christmas_Mail["LimitNum"] = 60

--轮盘的全服限量动态码
local tBigCarnival_EMoneyMono_Christmas_GlobalRountine = {}
tBigCarnival_EMoneyMono_Christmas_GlobalRountine[1] = 53093
tBigCarnival_EMoneyMono_Christmas_GlobalRountine[2] = 53094
tBigCarnival_EMoneyMono_Christmas_GlobalRountine_New = 53427

--圣诞大促销npc
local tBigCarnival_EMoneyMono_Christmas_Npc = {}
tBigCarnival_EMoneyMono_Christmas_Npc["NpcId"] = 23554


--上交糖果的排行榜
tRankingFunc_Info[23554] = {}
tRankingFunc_Info[23554]["Reset"] = 1
tRankingFunc_Info[23554]["Global"] = {53088,53089,53090}
tRankingFunc_Info[23554]["RankNum"] = 8
tRankingFunc_Info[23554]["RankMode"] = 1

local tBigCarnival_EMoneyMono_Christmas_Strengthaward = {}
tBigCarnival_EMoneyMono_Christmas_Strengthaward[3311620] = {}
tBigCarnival_EMoneyMono_Christmas_Strengthaward[3311620]["RewardStrengthValue"] = {}
tBigCarnival_EMoneyMono_Christmas_Strengthaward[3311620]["RewardStrengthValue"]["Value"] = 500
tBigCarnival_EMoneyMono_Christmas_Strengthaward[3311620]["LogId"] = 12000438
tBigCarnival_EMoneyMono_Christmas_Strengthaward[3311620]["RewardEffect"] = {}
tBigCarnival_EMoneyMono_Christmas_Strengthaward[3311620]["RewardEffect"]["Effect"] = "angelwing"

--圣诞天石商店礼包打开获得

local tBigCarnival_EMoneyMono_Christmas_Stone = {}
--圣诞万能神纹精粹惊喜礼包（赠）
tBigCarnival_EMoneyMono_Christmas_Stone[3311610] = {}
tBigCarnival_EMoneyMono_Christmas_Stone[3311610]["RewardItem"] = {}
tBigCarnival_EMoneyMono_Christmas_Stone[3311610]["RewardItem"][1] = {} 
tBigCarnival_EMoneyMono_Christmas_Stone[3311610]["RewardItem"][1]["Id"] = 4060001
tBigCarnival_EMoneyMono_Christmas_Stone[3311610]["RewardItem"][1]["Attr"] = "0 200 3"
tBigCarnival_EMoneyMono_Christmas_Stone[3311610]["RewardItem"][2] = {} 
tBigCarnival_EMoneyMono_Christmas_Stone[3311610]["RewardItem"][2]["Id"] = 3311620
tBigCarnival_EMoneyMono_Christmas_Stone[3311610]["RewardItem"][2]["Attr"] = "0 3"
tBigCarnival_EMoneyMono_Christmas_Stone[3311610]["LogId"] = 12000438
tBigCarnival_EMoneyMono_Christmas_Stone[3311610]["DeleteItem"] = {}
tBigCarnival_EMoneyMono_Christmas_Stone[3311610]["DeleteItem"][1] = {}
tBigCarnival_EMoneyMono_Christmas_Stone[3311610]["DeleteItem"][1]["Id"] = 3311610

--圣诞赤练石惊喜礼包（赠）
tBigCarnival_EMoneyMono_Christmas_Stone[3311611] = {}
tBigCarnival_EMoneyMono_Christmas_Stone[3311611]["RewardItem"] = {}
tBigCarnival_EMoneyMono_Christmas_Stone[3311611]["RewardItem"][1] = {} 
tBigCarnival_EMoneyMono_Christmas_Stone[3311611]["RewardItem"][1]["Id"] = 730008
tBigCarnival_EMoneyMono_Christmas_Stone[3311611]["RewardItem"][1]["Attr"] = "0 1 3"
tBigCarnival_EMoneyMono_Christmas_Stone[3311611]["RewardItem"][2] = {} 
tBigCarnival_EMoneyMono_Christmas_Stone[3311611]["RewardItem"][2]["Id"] = 3311620
tBigCarnival_EMoneyMono_Christmas_Stone[3311611]["RewardItem"][2]["Attr"] = "0 15"
tBigCarnival_EMoneyMono_Christmas_Stone[3311611]["LogId"] = 12000438
tBigCarnival_EMoneyMono_Christmas_Stone[3311611]["DeleteItem"] = {}
tBigCarnival_EMoneyMono_Christmas_Stone[3311611]["DeleteItem"][1] = {}
tBigCarnival_EMoneyMono_Christmas_Stone[3311611]["DeleteItem"][1]["Id"] = 3311611

--圣诞回气丹惊喜礼包（赠）
tBigCarnival_EMoneyMono_Christmas_Stone[3311612] = {}
tBigCarnival_EMoneyMono_Christmas_Stone[3311612]["RewardItem"] = {}
tBigCarnival_EMoneyMono_Christmas_Stone[3311612]["RewardItem"][1] = {} 
tBigCarnival_EMoneyMono_Christmas_Stone[3311612]["RewardItem"][1]["Id"] = 3308947 
tBigCarnival_EMoneyMono_Christmas_Stone[3311612]["RewardItem"][1]["Attr"] = "0 5"
tBigCarnival_EMoneyMono_Christmas_Stone[3311612]["RewardItem"][2] = {} 
tBigCarnival_EMoneyMono_Christmas_Stone[3311612]["RewardItem"][2]["Id"] = 3311620
tBigCarnival_EMoneyMono_Christmas_Stone[3311612]["RewardItem"][2]["Attr"] = "0 3"
tBigCarnival_EMoneyMono_Christmas_Stone[3311612]["LogId"] = 12000438
tBigCarnival_EMoneyMono_Christmas_Stone[3311612]["DeleteItem"] = {}
tBigCarnival_EMoneyMono_Christmas_Stone[3311612]["DeleteItem"][1] = {}
tBigCarnival_EMoneyMono_Christmas_Stone[3311612]["DeleteItem"][1]["Id"] = 3311612

--圣诞固化石惊喜礼包（赠）
tBigCarnival_EMoneyMono_Christmas_Stone[3311613] = {}
tBigCarnival_EMoneyMono_Christmas_Stone[3311613]["RewardItem"] = {}
tBigCarnival_EMoneyMono_Christmas_Stone[3311613]["RewardItem"][1] = {} 
tBigCarnival_EMoneyMono_Christmas_Stone[3311613]["RewardItem"][1]["Id"] = 723695 
tBigCarnival_EMoneyMono_Christmas_Stone[3311613]["RewardItem"][1]["Attr"] = "0 1 3"
tBigCarnival_EMoneyMono_Christmas_Stone[3311613]["RewardItem"][2] = {} 
tBigCarnival_EMoneyMono_Christmas_Stone[3311613]["RewardItem"][2]["Id"] = 3311620
tBigCarnival_EMoneyMono_Christmas_Stone[3311613]["RewardItem"][2]["Attr"] = "0 3"
tBigCarnival_EMoneyMono_Christmas_Stone[3311613]["LogId"] = 12000438
tBigCarnival_EMoneyMono_Christmas_Stone[3311613]["DeleteItem"] = {}
tBigCarnival_EMoneyMono_Christmas_Stone[3311613]["DeleteItem"][1] = {}
tBigCarnival_EMoneyMono_Christmas_Stone[3311613]["DeleteItem"][1]["Id"] = 3311613

--圣诞天机果惊喜礼包（赠）
tBigCarnival_EMoneyMono_Christmas_Stone[3311614] = {}
tBigCarnival_EMoneyMono_Christmas_Stone[3311614]["RewardItem"] = {}
tBigCarnival_EMoneyMono_Christmas_Stone[3311614]["RewardItem"][1] = {} 
tBigCarnival_EMoneyMono_Christmas_Stone[3311614]["RewardItem"][1]["Id"] = 3001044 
tBigCarnival_EMoneyMono_Christmas_Stone[3311614]["RewardItem"][1]["Attr"] = "0 10"
tBigCarnival_EMoneyMono_Christmas_Stone[3311614]["RewardItem"][2] = {} 
tBigCarnival_EMoneyMono_Christmas_Stone[3311614]["RewardItem"][2]["Id"] = 3311620
tBigCarnival_EMoneyMono_Christmas_Stone[3311614]["RewardItem"][2]["Attr"] = "0 2"
tBigCarnival_EMoneyMono_Christmas_Stone[3311614]["LogId"] = 12000438
tBigCarnival_EMoneyMono_Christmas_Stone[3311614]["DeleteItem"] = {}
tBigCarnival_EMoneyMono_Christmas_Stone[3311614]["DeleteItem"][1] = {}
tBigCarnival_EMoneyMono_Christmas_Stone[3311614]["DeleteItem"][1]["Id"] = 3311614

--圣诞装饰惊喜礼包（赠）
tBigCarnival_EMoneyMono_Christmas_Stone[3311615] = {}
tBigCarnival_EMoneyMono_Christmas_Stone[3311615]["RewardItem"] = {}
tBigCarnival_EMoneyMono_Christmas_Stone[3311615]["RewardItem"][1] = {} 
tBigCarnival_EMoneyMono_Christmas_Stone[3311615]["RewardItem"][1]["Id"] = 726054 
tBigCarnival_EMoneyMono_Christmas_Stone[3311615]["RewardItem"][1]["Attr"] = "0 1 3"
tBigCarnival_EMoneyMono_Christmas_Stone[3311615]["RewardItem"][2] = {} 
tBigCarnival_EMoneyMono_Christmas_Stone[3311615]["RewardItem"][2]["Id"] = 726055
tBigCarnival_EMoneyMono_Christmas_Stone[3311615]["RewardItem"][2]["Attr"] = "0 1 3"
tBigCarnival_EMoneyMono_Christmas_Stone[3311615]["RewardItem"][3] = {} 
tBigCarnival_EMoneyMono_Christmas_Stone[3311615]["RewardItem"][3]["Id"] = 726056
tBigCarnival_EMoneyMono_Christmas_Stone[3311615]["RewardItem"][3]["Attr"] = "0 1 3"
tBigCarnival_EMoneyMono_Christmas_Stone[3311615]["RewardItem"][4] = {} 
tBigCarnival_EMoneyMono_Christmas_Stone[3311615]["RewardItem"][4]["Id"] = 726057
tBigCarnival_EMoneyMono_Christmas_Stone[3311615]["RewardItem"][4]["Attr"] = "0 1 3"
tBigCarnival_EMoneyMono_Christmas_Stone[3311615]["RewardItem"][5] = {} 
tBigCarnival_EMoneyMono_Christmas_Stone[3311615]["RewardItem"][5]["Id"] = 726058
tBigCarnival_EMoneyMono_Christmas_Stone[3311615]["RewardItem"][5]["Attr"] = "0 1 3"
tBigCarnival_EMoneyMono_Christmas_Stone[3311615]["RewardItem"][6] = {} 
tBigCarnival_EMoneyMono_Christmas_Stone[3311615]["RewardItem"][6]["Id"] = 3311620
tBigCarnival_EMoneyMono_Christmas_Stone[3311615]["RewardItem"][6]["Attr"] = "0 1"
tBigCarnival_EMoneyMono_Christmas_Stone[3311615]["LogId"] = 12000438
tBigCarnival_EMoneyMono_Christmas_Stone[3311615]["DeleteItem"] = {}
tBigCarnival_EMoneyMono_Christmas_Stone[3311615]["DeleteItem"][1] = {}
tBigCarnival_EMoneyMono_Christmas_Stone[3311615]["DeleteItem"][1]["Id"] = 3311615

--圣诞家具惊喜礼包（赠）
tBigCarnival_EMoneyMono_Christmas_Stone[3311616] = {}
tBigCarnival_EMoneyMono_Christmas_Stone[3311616]["RewardItem"] = {}
tBigCarnival_EMoneyMono_Christmas_Stone[3311616]["RewardItem"][1] = {} 
tBigCarnival_EMoneyMono_Christmas_Stone[3311616]["RewardItem"][1]["Id"] = 726110 
tBigCarnival_EMoneyMono_Christmas_Stone[3311616]["RewardItem"][1]["Attr"] = "0 1 3"
tBigCarnival_EMoneyMono_Christmas_Stone[3311616]["RewardItem"][2] = {} 
tBigCarnival_EMoneyMono_Christmas_Stone[3311616]["RewardItem"][2]["Id"] = 3000159
tBigCarnival_EMoneyMono_Christmas_Stone[3311616]["RewardItem"][2]["Attr"] = "0 1"
tBigCarnival_EMoneyMono_Christmas_Stone[3311616]["RewardItem"][3] = {} 
tBigCarnival_EMoneyMono_Christmas_Stone[3311616]["RewardItem"][3]["Id"] = 3311620
tBigCarnival_EMoneyMono_Christmas_Stone[3311616]["RewardItem"][3]["Attr"] = "0 1"
tBigCarnival_EMoneyMono_Christmas_Stone[3311616]["LogId"] = 12000438
tBigCarnival_EMoneyMono_Christmas_Stone[3311616]["DeleteItem"] = {}
tBigCarnival_EMoneyMono_Christmas_Stone[3311616]["DeleteItem"][1] = {}
tBigCarnival_EMoneyMono_Christmas_Stone[3311616]["DeleteItem"][1]["Id"] = 3311616

--圣诞开洞惊喜礼包（赠）
tBigCarnival_EMoneyMono_Christmas_Stone[3311617] = {}
tBigCarnival_EMoneyMono_Christmas_Stone[3311617]["RewardItem"] = {}
tBigCarnival_EMoneyMono_Christmas_Stone[3311617]["RewardItem"][1] = {} 
tBigCarnival_EMoneyMono_Christmas_Stone[3311617]["RewardItem"][1]["Id"] = 1200005 
tBigCarnival_EMoneyMono_Christmas_Stone[3311617]["RewardItem"][1]["Attr"] = "0 3 3"
tBigCarnival_EMoneyMono_Christmas_Stone[3311617]["RewardItem"][2] = {} 
tBigCarnival_EMoneyMono_Christmas_Stone[3311617]["RewardItem"][2]["Id"] = 3311620
tBigCarnival_EMoneyMono_Christmas_Stone[3311617]["RewardItem"][2]["Attr"] = "0 3"
tBigCarnival_EMoneyMono_Christmas_Stone[3311617]["LogId"] = 12000438
tBigCarnival_EMoneyMono_Christmas_Stone[3311617]["DeleteItem"] = {}
tBigCarnival_EMoneyMono_Christmas_Stone[3311617]["DeleteItem"][1] = {}
tBigCarnival_EMoneyMono_Christmas_Stone[3311617]["DeleteItem"][1]["Id"] = 3311617

--圣诞星陨石惊喜礼包（赠）
tBigCarnival_EMoneyMono_Christmas_Stone[3311618] = {}
tBigCarnival_EMoneyMono_Christmas_Stone[3311618]["RewardItem"] = {}
tBigCarnival_EMoneyMono_Christmas_Stone[3311618]["RewardItem"][1] = {} 
tBigCarnival_EMoneyMono_Christmas_Stone[3311618]["RewardItem"][1]["Id"] = 3009002 
tBigCarnival_EMoneyMono_Christmas_Stone[3311618]["RewardItem"][1]["Attr"] = "0 5"
tBigCarnival_EMoneyMono_Christmas_Stone[3311618]["RewardItem"][2] = {} 
tBigCarnival_EMoneyMono_Christmas_Stone[3311618]["RewardItem"][2]["Id"] = 3311620
tBigCarnival_EMoneyMono_Christmas_Stone[3311618]["RewardItem"][2]["Attr"] = "0 3"
tBigCarnival_EMoneyMono_Christmas_Stone[3311618]["LogId"] = 12000438
tBigCarnival_EMoneyMono_Christmas_Stone[3311618]["DeleteItem"] = {}
tBigCarnival_EMoneyMono_Christmas_Stone[3311618]["DeleteItem"][1] = {}
tBigCarnival_EMoneyMono_Christmas_Stone[3311618]["DeleteItem"][1]["Id"] = 3311618

--圣诞抽奖券大礼包（赠）
tBigCarnival_EMoneyMono_Christmas_Stone[3311619] = {}
tBigCarnival_EMoneyMono_Christmas_Stone[3311619]["RewardItem"] = {}
tBigCarnival_EMoneyMono_Christmas_Stone[3311619]["RewardItem"][1] = {} 
tBigCarnival_EMoneyMono_Christmas_Stone[3311619]["RewardItem"][1]["Id"] = 711504 
tBigCarnival_EMoneyMono_Christmas_Stone[3311619]["RewardItem"][1]["Attr"] = "0 300"
tBigCarnival_EMoneyMono_Christmas_Stone[3311619]["RewardItem"][2] = {} 
tBigCarnival_EMoneyMono_Christmas_Stone[3311619]["RewardItem"][2]["Id"] = 3311620
tBigCarnival_EMoneyMono_Christmas_Stone[3311619]["RewardItem"][2]["Attr"] = "0 2"
tBigCarnival_EMoneyMono_Christmas_Stone[3311619]["LogId"] = 12000438
tBigCarnival_EMoneyMono_Christmas_Stone[3311619]["DeleteItem"] = {}
tBigCarnival_EMoneyMono_Christmas_Stone[3311619]["DeleteItem"][1] = {}
tBigCarnival_EMoneyMono_Christmas_Stone[3311619]["DeleteItem"][1]["Id"] = 3311619


--12月赠品大狂欢

local tBigCarnival_EMoneyMono_Christmas_Reward = {}
tBigCarnival_EMoneyMono_Christmas_Reward[3200569] = {}
tBigCarnival_EMoneyMono_Christmas_Reward[3200569][3] = {}
tBigCarnival_EMoneyMono_Christmas_Reward[3200569][3]["Log"] = "1000,0,0,0,12000438,2,3311604,1[1]"
tBigCarnival_EMoneyMono_Christmas_Reward[3200569][3]["EmoneyLog"] = "1000	00090	1000	1000	1	"
tBigCarnival_EMoneyMono_Christmas_Reward[3200569][3]["RewardItem"] = {}				--物品属性
tBigCarnival_EMoneyMono_Christmas_Reward[3200569][3]["RewardItem"][1] = {}				--物品属性
tBigCarnival_EMoneyMono_Christmas_Reward[3200569][3]["RewardItem"][1]["Id"] = 3311604		--物品Id
tBigCarnival_EMoneyMono_Christmas_Reward[3200569][3]["RewardItem"][1]["Attr"] = "0 1"		--物品属性
tBigCarnival_EMoneyMono_Christmas_Reward[3200569][3]["RewardEffect"] = {}
tBigCarnival_EMoneyMono_Christmas_Reward[3200569][3]["RewardEffect"]["Effect"] = "angelwing"

tBigCarnival_EMoneyMono_Christmas_Reward[3200569][4] = {}
tBigCarnival_EMoneyMono_Christmas_Reward[3200569][4]["Log"] = "1000,0,0,0,12000438,2,3311606,1[1]"
tBigCarnival_EMoneyMono_Christmas_Reward[3200569][4]["EmoneyLog"] = "1000	00091	1000	1000	1	"
tBigCarnival_EMoneyMono_Christmas_Reward[3200569][4]["RewardItem"] = {}				--物品属性
tBigCarnival_EMoneyMono_Christmas_Reward[3200569][4]["RewardItem"][1] = {}				--物品属性
tBigCarnival_EMoneyMono_Christmas_Reward[3200569][4]["RewardItem"][1]["Id"] = 3311606		--物品Id
tBigCarnival_EMoneyMono_Christmas_Reward[3200569][4]["RewardItem"][1]["Attr"] = "0 1"		--物品属性
tBigCarnival_EMoneyMono_Christmas_Reward[3200569][4]["RewardEffect"] = {}
tBigCarnival_EMoneyMono_Christmas_Reward[3200569][4]["RewardEffect"]["Effect"] = "angelwing"

tBigCarnival_EMoneyMono_Christmas_Reward[3200569][5] = {}
tBigCarnival_EMoneyMono_Christmas_Reward[3200569][5]["Log"] = "1000,0,0,0,12000438,2,3311608,1[1]"
tBigCarnival_EMoneyMono_Christmas_Reward[3200569][5]["EmoneyLog"] = "1000	00092	1000	1000	1	"
tBigCarnival_EMoneyMono_Christmas_Reward[3200569][5]["RewardItem"] = {}				--物品属性
tBigCarnival_EMoneyMono_Christmas_Reward[3200569][5]["RewardItem"][1] = {}				--物品属性
tBigCarnival_EMoneyMono_Christmas_Reward[3200569][5]["RewardItem"][1]["Id"] = 3311608		--物品Id
tBigCarnival_EMoneyMono_Christmas_Reward[3200569][5]["RewardItem"][1]["Attr"] = "0 1"		--物品属性
tBigCarnival_EMoneyMono_Christmas_Reward[3200569][5]["RewardEffect"] = {}
tBigCarnival_EMoneyMono_Christmas_Reward[3200569][5]["RewardEffect"]["Effect"] = "angelwing"

tBigCarnival_EMoneyMono_Christmas_Reward[3200569][6] = {}
tBigCarnival_EMoneyMono_Christmas_Reward[3200569][6]["Log"] = "1000,0,0,0,12000438,2,3320236,1[1]"
tBigCarnival_EMoneyMono_Christmas_Reward[3200569][6]["EmoneyLog"] = "1000	00161	1000	1000	1	"
tBigCarnival_EMoneyMono_Christmas_Reward[3200569][6]["RewardItem"] = {}				--物品属性
tBigCarnival_EMoneyMono_Christmas_Reward[3200569][6]["RewardItem"][1] = {}				--物品属性
tBigCarnival_EMoneyMono_Christmas_Reward[3200569][6]["RewardItem"][1]["Id"] = 3320236		--物品Id
tBigCarnival_EMoneyMono_Christmas_Reward[3200569][6]["RewardItem"][1]["Attr"] = "0 1"		--物品属性
tBigCarnival_EMoneyMono_Christmas_Reward[3200569][6]["RewardEffect"] = {}
tBigCarnival_EMoneyMono_Christmas_Reward[3200569][6]["RewardEffect"]["Effect"] = "angelwing"

tBigCarnival_EMoneyMono_Christmas_Reward[3200569][7] = {}
tBigCarnival_EMoneyMono_Christmas_Reward[3200569][7]["Log"] = "1000,0,0,0,12000438,2,3320238,1[1]"
tBigCarnival_EMoneyMono_Christmas_Reward[3200569][7]["EmoneyLog"] = "1000	00162	1000	1000	1	"
tBigCarnival_EMoneyMono_Christmas_Reward[3200569][7]["RewardItem"] = {}				--物品属性
tBigCarnival_EMoneyMono_Christmas_Reward[3200569][7]["RewardItem"][1] = {}				--物品属性
tBigCarnival_EMoneyMono_Christmas_Reward[3200569][7]["RewardItem"][1]["Id"] = 3320238		--物品Id
tBigCarnival_EMoneyMono_Christmas_Reward[3200569][7]["RewardItem"][1]["Attr"] = "0 1"		--物品属性
tBigCarnival_EMoneyMono_Christmas_Reward[3200569][7]["RewardEffect"] = {}
tBigCarnival_EMoneyMono_Christmas_Reward[3200569][7]["RewardEffect"]["Effect"] = "angelwing"

tBigCarnival_EMoneyMono_Christmas_Reward[3200569][8] = {}
tBigCarnival_EMoneyMono_Christmas_Reward[3200569][8]["Log"] = "1000,0,0,0,12000438,2,3320240,1[1]"
tBigCarnival_EMoneyMono_Christmas_Reward[3200569][8]["EmoneyLog"] = "1000	00163	1000	1000	1	"
tBigCarnival_EMoneyMono_Christmas_Reward[3200569][8]["RewardItem"] = {}				--物品属性
tBigCarnival_EMoneyMono_Christmas_Reward[3200569][8]["RewardItem"][1] = {}				--物品属性
tBigCarnival_EMoneyMono_Christmas_Reward[3200569][8]["RewardItem"][1]["Id"] = 3320240		--物品Id
tBigCarnival_EMoneyMono_Christmas_Reward[3200569][8]["RewardItem"][1]["Attr"] = "0 1"		--物品属性
tBigCarnival_EMoneyMono_Christmas_Reward[3200569][8]["RewardEffect"] = {}
tBigCarnival_EMoneyMono_Christmas_Reward[3200569][8]["RewardEffect"]["Effect"] = "angelwing"

tBigCarnival_EMoneyMono_Christmas_Reward[3200569][9] = {}
tBigCarnival_EMoneyMono_Christmas_Reward[3200569][9]["Log"] = "1000,0,0,0,12000438,2,3322825,1[1]"
tBigCarnival_EMoneyMono_Christmas_Reward[3200569][9]["EmoneyLog"] = "1000	00163	1000	1000	1	"
tBigCarnival_EMoneyMono_Christmas_Reward[3200569][9]["RewardItem"] = {}				--物品属性
tBigCarnival_EMoneyMono_Christmas_Reward[3200569][9]["RewardItem"][1] = {}				--物品属性
tBigCarnival_EMoneyMono_Christmas_Reward[3200569][9]["RewardItem"][1]["Id"] = 3322825		--物品Id
tBigCarnival_EMoneyMono_Christmas_Reward[3200569][9]["RewardItem"][1]["Attr"] = "0 1"		--物品属性
tBigCarnival_EMoneyMono_Christmas_Reward[3200569][9]["RewardEffect"] = {}
tBigCarnival_EMoneyMono_Christmas_Reward[3200569][9]["RewardEffect"]["Effect"] = "angelwing"

tBigCarnival_EMoneyMono_Christmas_Reward[3200569][10] = {}
tBigCarnival_EMoneyMono_Christmas_Reward[3200569][10]["Log"] = "1000,0,0,0,12000438,2,3314554,1[1]"
tBigCarnival_EMoneyMono_Christmas_Reward[3200569][10]["EmoneyLog"] = "1000	00163	1000	1000	1	"
tBigCarnival_EMoneyMono_Christmas_Reward[3200569][10]["RewardItem"] = {}				--物品属性
tBigCarnival_EMoneyMono_Christmas_Reward[3200569][10]["RewardItem"][1] = {}				--物品属性
tBigCarnival_EMoneyMono_Christmas_Reward[3200569][10]["RewardItem"][1]["Id"] = 3314554		--物品Id
tBigCarnival_EMoneyMono_Christmas_Reward[3200569][10]["RewardItem"][1]["Attr"] = "0 1"		--物品属性
tBigCarnival_EMoneyMono_Christmas_Reward[3200569][10]["RewardEffect"] = {}
tBigCarnival_EMoneyMono_Christmas_Reward[3200569][10]["RewardEffect"]["Effect"] = "angelwing"

tBigCarnival_EMoneyMono_Christmas_Reward[3200570] = {}
tBigCarnival_EMoneyMono_Christmas_Reward[3200570][3] = {}
tBigCarnival_EMoneyMono_Christmas_Reward[3200570][3]["Log"] = "10000,0,0,0,12000438,2,3311605,1[1]"
tBigCarnival_EMoneyMono_Christmas_Reward[3200570][3]["EmoneyLog"] = "1000	00090	10000	10000	1	"
tBigCarnival_EMoneyMono_Christmas_Reward[3200570][3]["RewardItem"] = {}				--物品属性
tBigCarnival_EMoneyMono_Christmas_Reward[3200570][3]["RewardItem"][1] = {}				--物品属性
tBigCarnival_EMoneyMono_Christmas_Reward[3200570][3]["RewardItem"][1]["Id"] = 3311605		--物品Id
tBigCarnival_EMoneyMono_Christmas_Reward[3200570][3]["RewardItem"][1]["Attr"] = "0 1"		--物品属性
tBigCarnival_EMoneyMono_Christmas_Reward[3200570][3]["RewardEffect"] = {}
tBigCarnival_EMoneyMono_Christmas_Reward[3200570][3]["RewardEffect"]["Effect"] = "angelwing"

tBigCarnival_EMoneyMono_Christmas_Reward[3200570][4] = {}
tBigCarnival_EMoneyMono_Christmas_Reward[3200570][4]["Log"] = "10000,0,0,0,12000438,2,3311607,1[1]"
tBigCarnival_EMoneyMono_Christmas_Reward[3200570][4]["EmoneyLog"] = "1000	00091	10000	10000	1	"
tBigCarnival_EMoneyMono_Christmas_Reward[3200570][4]["RewardItem"] = {}				--物品属性
tBigCarnival_EMoneyMono_Christmas_Reward[3200570][4]["RewardItem"][1] = {}				--物品属性
tBigCarnival_EMoneyMono_Christmas_Reward[3200570][4]["RewardItem"][1]["Id"] = 3311607		--物品Id
tBigCarnival_EMoneyMono_Christmas_Reward[3200570][4]["RewardItem"][1]["Attr"] = "0 1"		--物品属性
tBigCarnival_EMoneyMono_Christmas_Reward[3200570][4]["RewardEffect"] = {}
tBigCarnival_EMoneyMono_Christmas_Reward[3200570][4]["RewardEffect"]["Effect"] = "angelwing"

tBigCarnival_EMoneyMono_Christmas_Reward[3200570][5] = {}
tBigCarnival_EMoneyMono_Christmas_Reward[3200570][5]["Log"] = "10000,0,0,0,12000438,2,3311609,1[1]"
tBigCarnival_EMoneyMono_Christmas_Reward[3200570][5]["EmoneyLog"] = "1000	00092	10000	10000	1	"
tBigCarnival_EMoneyMono_Christmas_Reward[3200570][5]["RewardItem"] = {}				--物品属性
tBigCarnival_EMoneyMono_Christmas_Reward[3200570][5]["RewardItem"][1] = {}				--物品属性
tBigCarnival_EMoneyMono_Christmas_Reward[3200570][5]["RewardItem"][1]["Id"] = 3311609		--物品Id
tBigCarnival_EMoneyMono_Christmas_Reward[3200570][5]["RewardItem"][1]["Attr"] = "0 1"		--物品属性
tBigCarnival_EMoneyMono_Christmas_Reward[3200570][5]["RewardEffect"] = {}
tBigCarnival_EMoneyMono_Christmas_Reward[3200570][5]["RewardEffect"]["Effect"] = "angelwing"

tBigCarnival_EMoneyMono_Christmas_Reward[3200570][6] = {}
tBigCarnival_EMoneyMono_Christmas_Reward[3200570][6]["Log"] = "10000,0,0,0,12000438,2,3320237,1[1]"
tBigCarnival_EMoneyMono_Christmas_Reward[3200570][6]["EmoneyLog"] = "1000	00161	10000	10000	1	"
tBigCarnival_EMoneyMono_Christmas_Reward[3200570][6]["RewardItem"] = {}				--物品属性
tBigCarnival_EMoneyMono_Christmas_Reward[3200570][6]["RewardItem"][1] = {}				--物品属性
tBigCarnival_EMoneyMono_Christmas_Reward[3200570][6]["RewardItem"][1]["Id"] = 3320237		--物品Id
tBigCarnival_EMoneyMono_Christmas_Reward[3200570][6]["RewardItem"][1]["Attr"] = "0 1"		--物品属性
tBigCarnival_EMoneyMono_Christmas_Reward[3200570][6]["RewardEffect"] = {}
tBigCarnival_EMoneyMono_Christmas_Reward[3200570][6]["RewardEffect"]["Effect"] = "angelwing"

tBigCarnival_EMoneyMono_Christmas_Reward[3200570][7] = {}
tBigCarnival_EMoneyMono_Christmas_Reward[3200570][7]["Log"] = "10000,0,0,0,12000438,2,3320239,1[1]"
tBigCarnival_EMoneyMono_Christmas_Reward[3200570][7]["EmoneyLog"] = "1000	00162	10000	10000	1	"
tBigCarnival_EMoneyMono_Christmas_Reward[3200570][7]["RewardItem"] = {}				--物品属性
tBigCarnival_EMoneyMono_Christmas_Reward[3200570][7]["RewardItem"][1] = {}				--物品属性
tBigCarnival_EMoneyMono_Christmas_Reward[3200570][7]["RewardItem"][1]["Id"] = 3320239		--物品Id
tBigCarnival_EMoneyMono_Christmas_Reward[3200570][7]["RewardItem"][1]["Attr"] = "0 1"		--物品属性
tBigCarnival_EMoneyMono_Christmas_Reward[3200570][7]["RewardEffect"] = {}
tBigCarnival_EMoneyMono_Christmas_Reward[3200570][7]["RewardEffect"]["Effect"] = "angelwing"

tBigCarnival_EMoneyMono_Christmas_Reward[3200570][8] = {}
tBigCarnival_EMoneyMono_Christmas_Reward[3200570][8]["Log"] = "10000,0,0,0,12000438,2,3320241,1[1]"
tBigCarnival_EMoneyMono_Christmas_Reward[3200570][8]["EmoneyLog"] = "1000	00163	10000	10000	1	"
tBigCarnival_EMoneyMono_Christmas_Reward[3200570][8]["RewardItem"] = {}				--物品属性
tBigCarnival_EMoneyMono_Christmas_Reward[3200570][8]["RewardItem"][1] = {}				--物品属性
tBigCarnival_EMoneyMono_Christmas_Reward[3200570][8]["RewardItem"][1]["Id"] = 3320241		--物品Id
tBigCarnival_EMoneyMono_Christmas_Reward[3200570][8]["RewardItem"][1]["Attr"] = "0 1"		--物品属性
tBigCarnival_EMoneyMono_Christmas_Reward[3200570][8]["RewardEffect"] = {}
tBigCarnival_EMoneyMono_Christmas_Reward[3200570][8]["RewardEffect"]["Effect"] = "angelwing"

tBigCarnival_EMoneyMono_Christmas_Reward[3200570][9] = {}
tBigCarnival_EMoneyMono_Christmas_Reward[3200570][9]["Log"] = "10000,0,0,0,12000438,2,3322826,1[1]"
tBigCarnival_EMoneyMono_Christmas_Reward[3200570][9]["EmoneyLog"] = "1000	00163	10000	10000	1	"
tBigCarnival_EMoneyMono_Christmas_Reward[3200570][9]["RewardItem"] = {}				--物品属性
tBigCarnival_EMoneyMono_Christmas_Reward[3200570][9]["RewardItem"][1] = {}				--物品属性
tBigCarnival_EMoneyMono_Christmas_Reward[3200570][9]["RewardItem"][1]["Id"] = 3322826		--物品Id
tBigCarnival_EMoneyMono_Christmas_Reward[3200570][9]["RewardItem"][1]["Attr"] = "0 1"		--物品属性
tBigCarnival_EMoneyMono_Christmas_Reward[3200570][9]["RewardEffect"] = {}
tBigCarnival_EMoneyMono_Christmas_Reward[3200570][9]["RewardEffect"]["Effect"] = "angelwing"

tBigCarnival_EMoneyMono_Christmas_Reward[3200570][10] = {}
tBigCarnival_EMoneyMono_Christmas_Reward[3200570][10]["Log"] = "10000,0,0,0,12000438,2,3314555,1[1]"
tBigCarnival_EMoneyMono_Christmas_Reward[3200570][10]["EmoneyLog"] = "1000	00163	10000	10000	1	"
tBigCarnival_EMoneyMono_Christmas_Reward[3200570][10]["RewardItem"] = {}				--物品属性
tBigCarnival_EMoneyMono_Christmas_Reward[3200570][10]["RewardItem"][1] = {}				--物品属性
tBigCarnival_EMoneyMono_Christmas_Reward[3200570][10]["RewardItem"][1]["Id"] = 3314555		--物品Id
tBigCarnival_EMoneyMono_Christmas_Reward[3200570][10]["RewardItem"][1]["Attr"] = "0 1"		--物品属性
tBigCarnival_EMoneyMono_Christmas_Reward[3200570][10]["RewardEffect"] = {}
tBigCarnival_EMoneyMono_Christmas_Reward[3200570][10]["RewardEffect"]["Effect"] = "angelwing"

tBigCarnival_EMoneyMono_Christmas_Reward[3311606]={}
tBigCarnival_EMoneyMono_Christmas_Reward[3311606][4] = {}
tBigCarnival_EMoneyMono_Christmas_Reward[3311606][4]["Log"] = "10000,0,0,0,12000438,2,3311606,1[1]"
tBigCarnival_EMoneyMono_Christmas_Reward[3311606][4]["EmoneyLog"] = "1000	00163	4000	4000	1	"
tBigCarnival_EMoneyMono_Christmas_Reward[3311606][4]["RewardItem"] = {}				--物品属性
tBigCarnival_EMoneyMono_Christmas_Reward[3311606][4]["RewardItem"][1] = {}				--物品属性
tBigCarnival_EMoneyMono_Christmas_Reward[3311606][4]["RewardItem"][1]["Id"] = 3311606		--物品Id
tBigCarnival_EMoneyMono_Christmas_Reward[3311606][4]["RewardItem"][1]["Attr"] = "0 1"		--物品属性
tBigCarnival_EMoneyMono_Christmas_Reward[3311606][4]["RewardEffect"] = {}
tBigCarnival_EMoneyMono_Christmas_Reward[3311606][4]["RewardEffect"]["Effect"] = "angelwing"

tBigCarnival_EMoneyMono_Christmas_Reward[3311607]={}
tBigCarnival_EMoneyMono_Christmas_Reward[3311607][4] = {}
tBigCarnival_EMoneyMono_Christmas_Reward[3311607][4]["Log"] = "10000,0,0,0,12000438,2,3311607,1[1]"
tBigCarnival_EMoneyMono_Christmas_Reward[3311607][4]["EmoneyLog"] = "1000	00163	40000	40000	1	"
tBigCarnival_EMoneyMono_Christmas_Reward[3311607][4]["RewardItem"] = {}				--物品属性
tBigCarnival_EMoneyMono_Christmas_Reward[3311607][4]["RewardItem"][1] = {}				--物品属性
tBigCarnival_EMoneyMono_Christmas_Reward[3311607][4]["RewardItem"][1]["Id"] = 3311607		--物品Id
tBigCarnival_EMoneyMono_Christmas_Reward[3311607][4]["RewardItem"][1]["Attr"] = "0 1"		--物品属性
tBigCarnival_EMoneyMono_Christmas_Reward[3311607][4]["RewardEffect"] = {}
tBigCarnival_EMoneyMono_Christmas_Reward[3311607][4]["RewardEffect"]["Effect"] = "angelwing"



tBigCarnival_EMoneyMono_Christmas_Reward[3311604]={}
tBigCarnival_EMoneyMono_Christmas_Reward[3311604][3] = {}
tBigCarnival_EMoneyMono_Christmas_Reward[3311604][3]["Log"] = "10000,0,0,0,12000438,2,3311604,1[1]"
tBigCarnival_EMoneyMono_Christmas_Reward[3311604][3]["EmoneyLog"] = "1000	00163	3000	3000	1	"
tBigCarnival_EMoneyMono_Christmas_Reward[3311604][3]["RewardItem"] = {}				--物品属性
tBigCarnival_EMoneyMono_Christmas_Reward[3311604][3]["RewardItem"][1] = {}				--物品属性
tBigCarnival_EMoneyMono_Christmas_Reward[3311604][3]["RewardItem"][1]["Id"] = 3311604		--物品Id
tBigCarnival_EMoneyMono_Christmas_Reward[3311604][3]["RewardItem"][1]["Attr"] = "0 1"		--物品属性
tBigCarnival_EMoneyMono_Christmas_Reward[3311604][3]["RewardEffect"] = {}
tBigCarnival_EMoneyMono_Christmas_Reward[3311604][3]["RewardEffect"]["Effect"] = "angelwing"



tBigCarnival_EMoneyMono_Christmas_Reward[3311604][4] = {}
tBigCarnival_EMoneyMono_Christmas_Reward[3311604][4]["Log"] = "10000,0,0,0,12000438,2,3311606,1[1]"
tBigCarnival_EMoneyMono_Christmas_Reward[3311604][4]["EmoneyLog"] = "1000	00163	4000	4000	1	"
tBigCarnival_EMoneyMono_Christmas_Reward[3311604][4]["RewardItem"] = {}				--物品属性
tBigCarnival_EMoneyMono_Christmas_Reward[3311604][4]["RewardItem"][1] = {}				--物品属性
tBigCarnival_EMoneyMono_Christmas_Reward[3311604][4]["RewardItem"][1]["Id"] = 3311606		--物品Id
tBigCarnival_EMoneyMono_Christmas_Reward[3311604][4]["RewardItem"][1]["Attr"] = "0 1"		--物品属性
tBigCarnival_EMoneyMono_Christmas_Reward[3311604][4]["RewardEffect"] = {}
tBigCarnival_EMoneyMono_Christmas_Reward[3311604][4]["RewardEffect"]["Effect"] = "angelwing"


tBigCarnival_EMoneyMono_Christmas_Reward[3311604][5] = {}
tBigCarnival_EMoneyMono_Christmas_Reward[3311604][5]["Log"] = "10000,0,0,0,12000438,2,3311608,1[1]"
tBigCarnival_EMoneyMono_Christmas_Reward[3311604][5]["EmoneyLog"] = "1000	00163	5000	5000	1	"
tBigCarnival_EMoneyMono_Christmas_Reward[3311604][5]["RewardItem"] = {}				--物品属性
tBigCarnival_EMoneyMono_Christmas_Reward[3311604][5]["RewardItem"][1] = {}				--物品属性
tBigCarnival_EMoneyMono_Christmas_Reward[3311604][5]["RewardItem"][1]["Id"] = 3311608		--物品Id
tBigCarnival_EMoneyMono_Christmas_Reward[3311604][5]["RewardItem"][1]["Attr"] = "0 1"		--物品属性
tBigCarnival_EMoneyMono_Christmas_Reward[3311604][5]["RewardEffect"] = {}
tBigCarnival_EMoneyMono_Christmas_Reward[3311604][5]["RewardEffect"]["Effect"] = "angelwing"

tBigCarnival_EMoneyMono_Christmas_Reward[3311604][6] = {}
tBigCarnival_EMoneyMono_Christmas_Reward[3311604][6]["Log"] = "10000,0,0,0,12000438,2,3300231,1[1]"
tBigCarnival_EMoneyMono_Christmas_Reward[3311604][6]["EmoneyLog"] = "1000	00163	6000	6000	1	"
tBigCarnival_EMoneyMono_Christmas_Reward[3311604][6]["RewardItem"] = {}				--物品属性
tBigCarnival_EMoneyMono_Christmas_Reward[3311604][6]["RewardItem"][1] = {}				--物品属性
tBigCarnival_EMoneyMono_Christmas_Reward[3311604][6]["RewardItem"][1]["Id"] = 3300231		--物品Id
tBigCarnival_EMoneyMono_Christmas_Reward[3311604][6]["RewardItem"][1]["Attr"] = "0 1"		--物品属性
tBigCarnival_EMoneyMono_Christmas_Reward[3311604][6]["RewardEffect"] = {}
tBigCarnival_EMoneyMono_Christmas_Reward[3311604][6]["RewardEffect"]["Effect"] = "angelwing"


tBigCarnival_EMoneyMono_Christmas_Reward[3311605]={}
tBigCarnival_EMoneyMono_Christmas_Reward[3311605][3] = {}
tBigCarnival_EMoneyMono_Christmas_Reward[3311605][3]["Log"] = "10000,0,0,0,12000438,2,3311605,1[1]"
tBigCarnival_EMoneyMono_Christmas_Reward[3311605][3]["EmoneyLog"] = "1000	00163	30000	30000	1	"
tBigCarnival_EMoneyMono_Christmas_Reward[3311605][3]["RewardItem"] = {}				--物品属性
tBigCarnival_EMoneyMono_Christmas_Reward[3311605][3]["RewardItem"][1] = {}				--物品属性
tBigCarnival_EMoneyMono_Christmas_Reward[3311605][3]["RewardItem"][1]["Id"] = 3311605		--物品Id
tBigCarnival_EMoneyMono_Christmas_Reward[3311605][3]["RewardItem"][1]["Attr"] = "0 1"		--物品属性
tBigCarnival_EMoneyMono_Christmas_Reward[3311605][3]["RewardEffect"] = {}
tBigCarnival_EMoneyMono_Christmas_Reward[3311605][3]["RewardEffect"]["Effect"] = "angelwing"

tBigCarnival_EMoneyMono_Christmas_Reward[3311605][4] = {}
tBigCarnival_EMoneyMono_Christmas_Reward[3311605][4]["Log"] = "10000,0,0,0,12000438,2,3311607,1[1]"
tBigCarnival_EMoneyMono_Christmas_Reward[3311605][4]["EmoneyLog"] = "1000	00163	40000	40000	1	"
tBigCarnival_EMoneyMono_Christmas_Reward[3311605][4]["RewardItem"] = {}				--物品属性
tBigCarnival_EMoneyMono_Christmas_Reward[3311605][4]["RewardItem"][1] = {}				--物品属性
tBigCarnival_EMoneyMono_Christmas_Reward[3311605][4]["RewardItem"][1]["Id"] = 3311607		--物品Id
tBigCarnival_EMoneyMono_Christmas_Reward[3311605][4]["RewardItem"][1]["Attr"] = "0 1"		--物品属性
tBigCarnival_EMoneyMono_Christmas_Reward[3311605][4]["RewardEffect"] = {}
tBigCarnival_EMoneyMono_Christmas_Reward[3311605][4]["RewardEffect"]["Effect"] = "angelwing"

tBigCarnival_EMoneyMono_Christmas_Reward[3311605][5] = {}
tBigCarnival_EMoneyMono_Christmas_Reward[3311605][5]["Log"] = "10000,0,0,0,12000438,2,3311609,1[1]"
tBigCarnival_EMoneyMono_Christmas_Reward[3311605][5]["EmoneyLog"] = "1000	00163	50000	50000	1	"
tBigCarnival_EMoneyMono_Christmas_Reward[3311605][5]["RewardItem"] = {}				--物品属性
tBigCarnival_EMoneyMono_Christmas_Reward[3311605][5]["RewardItem"][1] = {}				--物品属性
tBigCarnival_EMoneyMono_Christmas_Reward[3311605][5]["RewardItem"][1]["Id"] = 3311609		--物品Id
tBigCarnival_EMoneyMono_Christmas_Reward[3311605][5]["RewardItem"][1]["Attr"] = "0 1"		--物品属性
tBigCarnival_EMoneyMono_Christmas_Reward[3311605][5]["RewardEffect"] = {}
tBigCarnival_EMoneyMono_Christmas_Reward[3311605][5]["RewardEffect"]["Effect"] = "angelwing"


tBigCarnival_EMoneyMono_Christmas_Reward[3311605][6] = {}
tBigCarnival_EMoneyMono_Christmas_Reward[3311605][6]["Log"] = "10000,0,0,0,12000438,2,3320237,1[1]"
tBigCarnival_EMoneyMono_Christmas_Reward[3311605][6]["EmoneyLog"] = "1000	00163	60000	60000	1	"
tBigCarnival_EMoneyMono_Christmas_Reward[3311605][6]["RewardItem"] = {}				--物品属性
tBigCarnival_EMoneyMono_Christmas_Reward[3311605][6]["RewardItem"][1] = {}				--物品属性
tBigCarnival_EMoneyMono_Christmas_Reward[3311605][6]["RewardItem"][1]["Id"] = 3320237		--物品Id
tBigCarnival_EMoneyMono_Christmas_Reward[3311605][6]["RewardItem"][1]["Attr"] = "0 1"		--物品属性
tBigCarnival_EMoneyMono_Christmas_Reward[3311605][6]["RewardEffect"] = {}
tBigCarnival_EMoneyMono_Christmas_Reward[3311605][6]["RewardEffect"]["Effect"] = "angelwing"






tBigCarnival_EMoneyMono_Christmas_Reward["NinJa"] = {}
tBigCarnival_EMoneyMono_Christmas_Reward["NinJa"]["LogId"] = 12001448
tBigCarnival_EMoneyMono_Christmas_Reward["NinJa"]["RewardItem"] = {}
tBigCarnival_EMoneyMono_Christmas_Reward["NinJa"]["RewardItem"][1] = {}
tBigCarnival_EMoneyMono_Christmas_Reward["NinJa"]["RewardItem"][1]["Id"] = 3316494 
tBigCarnival_EMoneyMono_Christmas_Reward["NinJa"]["RewardItem"][1]["Attr"] = "0 1" 



--折扣商店新增
local tBigCarnival_EMoneyMono_Cou_Stc = {}
tBigCarnival_EMoneyMono_Cou_Stc["Eventype"] = 203
tBigCarnival_EMoneyMono_Cou_Stc["Datatype"] = 25
tBigCarnival_EMoneyMono_Cou_Stc["ItemId"] = 3316076
tBigCarnival_EMoneyMono_Cou_Stc["Log"] = "0 0 3316076 %d 12000438 2 0 0"
tBigCarnival_EMoneyMono_Cou_Stc["DiLog"] = "0 0 %d 1 12000438 2 0 0"
tBigCarnival_EMoneyMono_Cou_Stc["Webstc"] = "https://coevent.99.com/grandsalesrank/"
--------------------------------------逻辑部分-------------------------------------------

--发型log
local tBigCarnival_EMoneyMono_Hair_Log = {}
tBigCarnival_EMoneyMono_Hair_Log[3314578] = {}
tBigCarnival_EMoneyMono_Hair_Log[3314578]["Log"] = "0 0 3314578 1 12000438 2 0 0"
tBigCarnival_EMoneyMono_Hair_Log[3314578]["HairId"] = 63


--整点福利领取
local tBigCarnival_EMoneyMono_ZhengFu = {}
tBigCarnival_EMoneyMono_ZhengFu["Globalid"] = 54431
tBigCarnival_EMoneyMono_ZhengFu["GetTime"] = {}
tBigCarnival_EMoneyMono_ZhengFu["GetTime"][1] = "08:00 10:00"
tBigCarnival_EMoneyMono_ZhengFu["GetTime"][2] = "20:00 22:00"
tBigCarnival_EMoneyMono_ZhengFu["Max"] = {3,1,3,3,1,1}
--用来控制玩家在该时间段内只能领取三次奖励，一天两场，分别用两个掩码控制
tBigCarnival_EMoneyMono_ZhengFu["Stc"] = {}
tBigCarnival_EMoneyMono_ZhengFu["Stc"][1] = {220,50}
tBigCarnival_EMoneyMono_ZhengFu["Stc"][2] = {220,51}

--随机给相应的奖励

tBigCarnival_EMoneyMono_ZhengFu["AwardItem"] = {}
tBigCarnival_EMoneyMono_ZhengFu["AwardItem"][1] = {}
tBigCarnival_EMoneyMono_ZhengFu["AwardItem"][1]["RewardItem"] = {}
tBigCarnival_EMoneyMono_ZhengFu["AwardItem"][1]["RewardItem"][1] = {} 
tBigCarnival_EMoneyMono_ZhengFu["AwardItem"][1]["RewardItem"][1]["Id"] = 3315861
tBigCarnival_EMoneyMono_ZhengFu["AwardItem"][1]["RewardItem"][1]["Attr"] = "0 1"
tBigCarnival_EMoneyMono_ZhengFu["AwardItem"][1]["LogId"] = 12000438
tBigCarnival_EMoneyMono_ZhengFu["AwardItem"][1]["MyPos"] = 0
tBigCarnival_EMoneyMono_ZhengFu["AwardItem"][2] = {}
tBigCarnival_EMoneyMono_ZhengFu["AwardItem"][2]["RewardItem"] = {}
tBigCarnival_EMoneyMono_ZhengFu["AwardItem"][2]["RewardItem"][1] = {} 
tBigCarnival_EMoneyMono_ZhengFu["AwardItem"][2]["RewardItem"][1]["Id"] = 3315860
tBigCarnival_EMoneyMono_ZhengFu["AwardItem"][2]["RewardItem"][1]["Attr"] = "0 1"
tBigCarnival_EMoneyMono_ZhengFu["AwardItem"][2]["LogId"] = 12000438
tBigCarnival_EMoneyMono_ZhengFu["AwardItem"][2]["MyPos"] = 1
tBigCarnival_EMoneyMono_ZhengFu["AwardItem"][3] = {}
tBigCarnival_EMoneyMono_ZhengFu["AwardItem"][3]["RewardItem"] = {}
tBigCarnival_EMoneyMono_ZhengFu["AwardItem"][3]["RewardItem"][1] = {} 
tBigCarnival_EMoneyMono_ZhengFu["AwardItem"][3]["RewardItem"][1]["Id"] = 3316040
tBigCarnival_EMoneyMono_ZhengFu["AwardItem"][3]["RewardItem"][1]["Attr"] = "0 1"
tBigCarnival_EMoneyMono_ZhengFu["AwardItem"][3]["LogId"] = 12000438
tBigCarnival_EMoneyMono_ZhengFu["AwardItem"][3]["MyPos"] = 2
tBigCarnival_EMoneyMono_ZhengFu["AwardItem"][4] = {}
tBigCarnival_EMoneyMono_ZhengFu["AwardItem"][4]["RewardItem"] = {}
tBigCarnival_EMoneyMono_ZhengFu["AwardItem"][4]["RewardItem"][1] = {} 
tBigCarnival_EMoneyMono_ZhengFu["AwardItem"][4]["RewardItem"][1]["Id"] = 3316077
tBigCarnival_EMoneyMono_ZhengFu["AwardItem"][4]["RewardItem"][1]["Attr"] = "0 1"
tBigCarnival_EMoneyMono_ZhengFu["AwardItem"][4]["LogId"] = 12000438
tBigCarnival_EMoneyMono_ZhengFu["AwardItem"][4]["MyPos"] = 3
tBigCarnival_EMoneyMono_ZhengFu["AwardItem"][4]["Stc"] = {220,42}
tBigCarnival_EMoneyMono_ZhengFu["AwardItem"][4]["OpenNum"] = 5
tBigCarnival_EMoneyMono_ZhengFu["AwardItem"][5] = {}
tBigCarnival_EMoneyMono_ZhengFu["AwardItem"][5]["RewardItem"] = {}
tBigCarnival_EMoneyMono_ZhengFu["AwardItem"][5]["RewardItem"][1] = {} 
tBigCarnival_EMoneyMono_ZhengFu["AwardItem"][5]["RewardItem"][1]["Id"] = 3316078
tBigCarnival_EMoneyMono_ZhengFu["AwardItem"][5]["RewardItem"][1]["Attr"] = "0 1"
tBigCarnival_EMoneyMono_ZhengFu["AwardItem"][5]["LogId"] = 12000438
tBigCarnival_EMoneyMono_ZhengFu["AwardItem"][5]["MyPos"] = 4
tBigCarnival_EMoneyMono_ZhengFu["AwardItem"][5]["Stc"] = {220,44}
tBigCarnival_EMoneyMono_ZhengFu["AwardItem"][5]["OpenNum"] = 3
tBigCarnival_EMoneyMono_ZhengFu["AwardItem"][6] = {}
tBigCarnival_EMoneyMono_ZhengFu["AwardItem"][6]["RewardItem"] = {}
tBigCarnival_EMoneyMono_ZhengFu["AwardItem"][6]["RewardItem"][1] = {} 
tBigCarnival_EMoneyMono_ZhengFu["AwardItem"][6]["RewardItem"][1]["Id"] = 3316079
tBigCarnival_EMoneyMono_ZhengFu["AwardItem"][6]["RewardItem"][1]["Attr"] = "0 1"
tBigCarnival_EMoneyMono_ZhengFu["AwardItem"][6]["LogId"] = 12000438
tBigCarnival_EMoneyMono_ZhengFu["AwardItem"][6]["MyPos"] = 5
tBigCarnival_EMoneyMono_ZhengFu["AwardItem"][6]["Stc"] = {220,46}
tBigCarnival_EMoneyMono_ZhengFu["AwardItem"][6]["OpenNum"] = 1
--------------------------------------逻辑部分-------------------------------------------

--轮盘新增发型物品
function BigCarnival_EMoneyMono_Hair(nItemId)
	if not Item_ChkMulItem(nItemId,nItemId,1) then
		return
	end
	
	RewardTemplate_UseItemAndMsg(tBigCarnival_EMoneyMono_Reward[nItemId])
end

--圣诞天石商店礼包打开获得
function BigCarnival_EMoneyMono_Christmas_StoneOpen(nItemId)

	if not Item_ChkItem(nItemId) then
		return
	end
	
	local nSpace = RewardTemplate_GetRewardSpace(tBigCarnival_EMoneyMono_Christmas_Stone[nItemId])
	
	if not User_CheckLeftSpace(nSpace) then
		User_TalkChannel2005(string.format(tRewardTemplate_Text["NoSpace"],nSpace))
		return
	end
	
	RewardTemplate_UseItemAndMsg(tBigCarnival_EMoneyMono_Christmas_Stone[nItemId])
end

--引路到相关Npc
function BigCarnival_EMoneyMono_Cao_Honey(nItemId,nNpcId)
	if not Item_ChkItem(nItemId) then
		return
	end
	
	--1.活动时间内引路到圣诞Npc处
	if Sys_ChkFullTime(tActivityTime["BoundCarnival"]["ActivityTime"]) then
		NpcPosition_PathFind(nNpcId)
		return
	else
		Item_DelAllItemByType(nItemId)
		User_TalkChannel2005(tBackpackLetter_Text[3310436]["AftTime"])
	end
end

--周年庆打折价过期删除
function BigCarnival_AnniversityUseless(nItemId)
	
	if not Sys_ChkFullTime(tActivityTime["BoundCarnival"]["OldActivityTime"]) then
		User_TalkChannel2005(tOneHundredWeapon_latticeThree_Text["NoUse"])
		Item_DelAllItemByType(nItemId)
	end
	
end

--圣诞糖果打开
function BigCarnival_EMoneyMono_Christmas_Honey(nItemId)
	
	if not Item_ChkItem(nItemId) then
		return
	end
	
	--1.活动时间内引路到圣诞Npc处
	if Sys_ChkFullTime(tActivityTime["BoundCarnival"]["ActivityTime"]) then
		local nNpcId = tBigCarnival_EMoneyMono_Christmas_Npc["NpcId"]
		NpcPosition_PathFind(nNpcId)
		return
	end
	
	--2.活动时间后打开获得500点气力值,一键全部使用，注：最长时间到1.30 23:59后过期
	if not Sys_ChkFullTime(tActivityTime["BoundCarnival"]["ChrismasActivityTime"]) then
		User_TalkChannel2005(tBackpackLetter_Text[3310436]["AftTime"])
		Item_DelAllItemByType(nItemId)
		return
	end
	
	local nItemNum = Get_CountItemType(nItemId,0)
	
	if Item_DelMulItem(nItemId,nItemId,nItemNum) then
		tBigCarnival_EMoneyMono_Christmas_Strengthaward[nItemId]["RewardStrengthValue"]["Value"] = 500 * nItemNum
		RewardTemplate_UseItemAndMsg(tBigCarnival_EMoneyMono_Christmas_Strengthaward[nItemId])
		tBigCarnival_EMoneyMono_Christmas_Strengthaward[nItemId]["RewardStrengthValue"]["Value"] = 500
	end
	
end

-- 新服检测
function BigCarnival_EMoneyMono_NewServerChk()
	local nGlobalId = tBigCarnival_EMoneyMono_Count["NewGlobalId"]--tBigCarnival_EMoneyMono_Count["GlobalId"]
	if Get_SysDynaGlobalData0(nGlobalId) >= 1 then
		return true
	else
		return false
	end
	return false
end

function BigCarnival_EMoneyMono_BeforeActivityTimeChk()
	local nGlobalId = tBigCarnival_EMoneyMono_Count["NewGlobalId"]--tBigCarnival_EMoneyMono_Count["GlobalId"]
	if BigCarnival_EMoneyMono_NewServerChk() then
		--return Sys_ChkFullTime(Get_SysDynaGlobalDataStr0(nGlobalId))
		return Sys_ChkFullTime(tActivityTime["BoundCarnival"]["BeforeActivityTime"])
	else
		return Sys_ChkFullTime(tActivityTime["BoundCarnival"]["OldBeforeActivityTime"])
	end
end

function BigCarnival_EMoneyMono_ActivityTimeChk()
	local nGlobalId = tBigCarnival_EMoneyMono_Count["NewGlobalId"]--tBigCarnival_EMoneyMono_Count["GlobalId"]
	if BigCarnival_EMoneyMono_NewServerChk() then
		--return Sys_ChkFullTime(Get_SysDynaGlobalDataStr1(nGlobalId))
		return Sys_ChkFullTime(tActivityTime["BoundCarnival"]["ActivityTime"])
	else
		return Sys_ChkFullTime(tActivityTime["BoundCarnival"]["ActivityTime"])
	end
end

-- 3、领取天石换购优惠券
function BigCarnival_EMoneyMono_OpenWeb(nNpcId)
	User_SendWebDialog(tBigCarnival_EMoneyMono_Text[nNpcId]["Web"])
end

-- 2、优惠换购天石。
function BigCarnival_EMoneyMono_OpenExchange(nNpcId)
	if not BigCarnival_EMoneyMono_ActivityTimeChk() then
		LinkNpcGossipFunc_New(nNpc,"1-2")
		return
	end
	
	-- 无卷
	local nItemId = 0
	for i,v in pairs(tBigCarnival_EMoneyMono_ItemEmoney) do
		if Item_ChkItem(i) then
			nItemId = i
			break
		end
	end
	if nItemId == 0 then
		LinkNpcGossipFunc_New(nNpcId,"2-6")
		return
	end
	
	LinkNpcGossipFunc_New(nNpcId,"2-5")
end

-- 换天石检测
function BigCarnival_EMoneyMono_NewExchangeChk(nNpcId,nItemId,nIndex)
	-- 已超过可换购额度
	local nEvent = tBigCarnival_EMoneyMono_Stc[nItemId]["EventType"]
	local nType = tBigCarnival_EMoneyMono_Stc[nItemId]["DataType"]
	local nLimit = tBigCarnival_EMoneyMono_Stc[nItemId]["Limit"]
	
	local nData = Get_UserStatisticValue(nEvent,nType)
	local nBasic = tBigCarnival_EMoneyMono_ItemEmoney[nItemId]["Basic"]
	local nEMoney = tBigCarnival_EMoneyMono_ItemEmoney[nItemId][nIndex]
	
	if nData+nEMoney > nLimit then
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return false
	end
	
	-- 天石不足
	local nUserEMoney = Get_UserEMoney()
	if nUserEMoney < nEMoney then
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return false
	end
	
	-- 赠点太多
	local nMonoEmoney = Get_UserMonoEMoney(nUserId)
	local nAddMonoEmoney =  nBasic*nEMoney
	if nAddMonoEmoney+nMonoEmoney > G_User_MaxEmoneyMono then
		LinkNpcGossipFunc_New(nNpcId,"2-7")
		return false
	end
	return true
end

-- 换购
function BigCarnival_EMoneyMono_NewExchangeMono(nNpcId,nIndex)
	if not BigCarnival_EMoneyMono_ActivityTimeChk() then
		LinkNpcGossipFunc_New(nNpc,"1-2")
		return
	end
	
	-- 各种条件判断
	local nItemId = 0
	for i,v in pairs(tBigCarnival_EMoneyMono_ItemEmoney) do
		if Item_ChkItem(i) then
			nItemId = i
			break
		end
	end
	if not BigCarnival_EMoneyMono_NewExchangeChk(nNpcId,nItemId,nIndex) then
		return
	end
	
	local nEMoney =tBigCarnival_EMoneyMono_ItemEmoney[nItemId][nIndex]
	-- 二次确认
	local nBasic = tBigCarnival_EMoneyMono_ItemEmoney[nItemId]["Basic"]
	local sText = tBigCarnival_EMoneyMono_Text[nNpcId]["Text211"]
	tNpcGossip[nNpcId]["Text211"] = string.format(sText,nEMoney,nEMoney*nBasic)
	local sOption = tBigCarnival_EMoneyMono_Text[nNpcId]["Option6"]
	tNpcGossip[nNpcId]["Option6"] = string.format(sOption,nEMoney)
	tNpcGossip[nNpcId]["OptionFunc6"] = "BigCarnival_EMoneyMono_NewSureExchange</N>19349</N>"..nItemId.."</N>"..nIndex
	
	LinkNpcGossipFunc_New(nNpcId,"2-1")
end

-- 确认换取天石赠
function BigCarnival_EMoneyMono_NewSureExchange(nNpcId,nItemId,nIndex)
	-- 各种条件判断
	if not BigCarnival_EMoneyMono_NewExchangeChk(nNpcId,nItemId,nIndex) then
		return
	end
	
	local nEMoney =tBigCarnival_EMoneyMono_ItemEmoney[nItemId][nIndex]
	if not User_AddEMoney(-nEMoney) then
		return
	end
	
	local nUserId = Get_UserId()
	local nEvent = tBigCarnival_EMoneyMono_Stc[nItemId]["EventType"]
	local nType = tBigCarnival_EMoneyMono_Stc[nItemId]["DataType"]
	
	Task_AddStatistic(nEvent,nType,nEMoney,1,nUserId)
	Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	
	-- 给奖励
	RewardTemplate_UseItem(tBigCarnival_EMoneyMono_DiscountReward[nItemId][nIndex])
end

-- 换天石检测
function BigCarnival_EMoneyMono_ExchangeChk(nNpcId,nItemId)
	-- 已超过可换购额度
	local nEvent = tBigCarnival_EMoneyMono_Stc[1]["EventType"]
	local nType = tBigCarnival_EMoneyMono_Stc[1]["DataType"]
	local nLimit = tBigCarnival_EMoneyMono_Stc[1]["Limit"]
	
	local nData = Get_UserStatisticValue(nEvent,nType)
	
	
	--每一级都有临界
	local nRanklimit
	if nData >= tBigCarnival_EMoneyMono_Christmas_Board[1][1] and nData < tBigCarnival_EMoneyMono_Christmas_Board[1][2] then
		nRanklimit = tBigCarnival_EMoneyMono_Christmas_Board[1][3]
		elseif nData >= tBigCarnival_EMoneyMono_Christmas_Board[2][1] and nData < tBigCarnival_EMoneyMono_Christmas_Board[2][2] then
			nRanklimit = tBigCarnival_EMoneyMono_Christmas_Board[2][3]
			elseif nData >= tBigCarnival_EMoneyMono_Christmas_Board[3][1] and nData < tBigCarnival_EMoneyMono_Christmas_Board[3][2] then
				nRanklimit = tBigCarnival_EMoneyMono_Christmas_Board[3][3]
				elseif nData >= tBigCarnival_EMoneyMono_Christmas_Board[4][1] and nData < tBigCarnival_EMoneyMono_Christmas_Board[4][2] then
					nRanklimit = tBigCarnival_EMoneyMono_Christmas_Board[4][3]

	end
	local nEMoney = tBigCarnival_EMoneyMono_EMomeyMono[nItemId]
	--local nEMoneyMono = tBigCarnival_EMoneyMono_ChgEMomeyMono[nItemId]
	local nEMoneyMono = tBigCarnival_EMoneyMono_NewChgEMomeyMono[nItemId][nRanklimit]
	
	if nData+nEMoneyMono > nLimit then
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return false
	end
	
	
	if nRanklimit == 3 then
		if (nData+nEMoneyMono) > tBigCarnival_EMoneyMono_Christmas_Board[1][2] then
			LinkNpcGossipFunc_New(nNpcId,"3-1")
			return
		end
		elseif nRanklimit == 4 then
			if (nData+nEMoneyMono) > tBigCarnival_EMoneyMono_Christmas_Board[2][2] then
				LinkNpcGossipFunc_New(nNpcId,"3-1")
				return
			end
			elseif nRanklimit == 5 then
				if (nData+nEMoneyMono) > tBigCarnival_EMoneyMono_Christmas_Board[3][2] then
					LinkNpcGossipFunc_New(nNpcId,"3-1")
					return
				end
				elseif nRanklimit == 6 then
					if (nData+nEMoneyMono) > tBigCarnival_EMoneyMono_Christmas_Board[4][2] then
						LinkNpcGossipFunc_New(nNpcId,"3-1")
						return
					end
	end

	
	
	-- 天石不足
	local nUserEMoney = Get_UserEMoney()
	if nUserEMoney < nEMoney then
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return false
	end
	
	-- 背包空间不足
	if not User_CheckLeftSpace(1) then
		Sys_MsgBox(tBigCarnival_EMoneyMono_Text[nNpcId]["NoSpace"])
		return false
	end
	
	return true
end

-- 金币换天石检测
function BigCarnival_EMoneyMono_ExchangeForSilverChk(nNpcId,nItemId)
	-- 已超过可换购额度
	local nEvent = tBigCarnival_EMoneyMono_Stc[1]["EventType"]
	local nType = tBigCarnival_EMoneyMono_Stc[1]["DataType"]
	local nLimit = tBigCarnival_EMoneyMono_Stc[1]["Limit"]
	
	local nData = Get_UserStatisticValue(nEvent,nType)
	local nMoney = tBigCarnival_EMoneyMono_Momey[nItemId]
	local nEMoneyMono = tBigCarnival_EMoneyMono_ChgEMomeyMono[nItemId]
	
	if nData+nEMoneyMono > nLimit then
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return false
	end
	
	-- 金币不足
	if not User_CanPutMoney2Bag(-nMoney) then
		LinkNpcGossipFunc_New(nNpcId,"2-8")
		return false
	end
	
	-- 背包空间不足
	if not User_CheckLeftSpace(1) then
		Sys_MsgBox(tBigCarnival_EMoneyMono_Text[nNpcId]["NoSpace"])
		return false
	end
	
	return true
end

-- 换购
function BigCarnival_EMoneyMono_ExchangeMono(nNpcId,nItemId)
	if not BigCarnival_EMoneyMono_ActivityTimeChk() then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- 各种条件判断
	if not BigCarnival_EMoneyMono_ExchangeChk(nNpcId,nItemId) then
		return
	end
	
	local nEMoney = tBigCarnival_EMoneyMono_EMomeyMono[nItemId]
	
	--随着购买量的增加比例发生变化
	local nUserId = Get_UserId()
	local nEvent = tBigCarnival_EMoneyMono_Stc[1]["EventType"]
	local nData = tBigCarnival_EMoneyMono_Stc[1]["DataType"]
	
	local nRanklimit
	local nGetGitfitem = Get_UserStatisticValue(nEvent,nData,nUserId)
	-- if nGetGitfitem >= tBigCarnival_EMoneyMono_Christmas_Board[1][1] and nGetGitfitem < tBigCarnival_EMoneyMono_Christmas_Board[1][2] then
		nRanklimit = tBigCarnival_EMoneyMono_Christmas_Board[1][3]
		-- elseif nGetGitfitem >= tBigCarnival_EMoneyMono_Christmas_Board[2][1] and nGetGitfitem < tBigCarnival_EMoneyMono_Christmas_Board[2][2] then
			-- nRanklimit = tBigCarnival_EMoneyMono_Christmas_Board[2][3]
			-- elseif nGetGitfitem >= tBigCarnival_EMoneyMono_Christmas_Board[3][1] and nGetGitfitem < tBigCarnival_EMoneyMono_Christmas_Board[3][2] then
				-- nRanklimit = tBigCarnival_EMoneyMono_Christmas_Board[3][3]
				-- else
					-- nRanklimit = tBigCarnival_EMoneyMono_Christmas_Board[4][3]
	-- end
	
	-- 二次确认
	local sText = tBigCarnival_EMoneyMono_Text[nNpcId]["Text211"]
	--[[
	if BigCarnival_EMoneyMono_NewServerChk() then
		tNpcGossip[nNpcId]["Text211"] = string.format(sText,nEMoney,nEMoney*nRanklimit)
	else
		tNpcGossip[nNpcId]["Text211"] = string.format(sText,nEMoney,nEMoney*nRanklimit)
	end
	]]--
	-- if nRanklimit ~= 9 and nRanklimit ~= 10 then
		tNpcGossip[nNpcId]["Text211"] = string.format(sText,nEMoney,nEMoney*nRanklimit)
	-- elseif nRanklimit == 9 then
		-- tNpcGossip[nNpcId]["Text211"] = string.format(sText,nEMoney,nEMoney*3.5)
		-- else
			-- tNpcGossip[nNpcId]["Text211"] = string.format(sText,nEMoney,nEMoney*4.5)
	-- end

	
	local sOption = tBigCarnival_EMoneyMono_Text[nNpcId]["Option6"]
	tNpcGossip[nNpcId]["Option6"] = string.format(sOption,nEMoney)
	tNpcGossip[nNpcId]["OptionFunc6"] = "BigCarnival_EMoneyMono_SureExchange</N>19349</N>"..nItemId
	
	LinkNpcGossipFunc_New(nNpcId,"2-1")
end

-- 金币换购
function BigCarnival_EMoneyMono_ExchangeMonoForSilver(nNpcId,nItemId)
	if not BigCarnival_EMoneyMono_ActivityTimeChk() then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- 各种条件判断
	if not BigCarnival_EMoneyMono_ExchangeForSilverChk(nNpcId,nItemId) then
		return
	end
	
	local nMoney = tBigCarnival_EMoneyMono_Momey[nItemId]
	local nEMoneyMono = tBigCarnival_EMoneyMono_ChgEMomeyMono[nItemId]
	if not User_AddMoney(-nMoney) then
		return
	end
	
	local nUserId = Get_UserId()
	local nEvent = tBigCarnival_EMoneyMono_Stc[1]["EventType"]
	local nType = tBigCarnival_EMoneyMono_Stc[1]["DataType"]
	
	Task_AddStatistic(nEvent,nType,nEMoneyMono,1,nUserId)
	Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	
	-- 给奖励
	local nIndex = tBigCarnival_EMoneyMono_RewardIndex[nItemId]
	RewardTemplate_UseItem(tBigCarnival_EMoneyMono_Reward[nIndex])
	Sys_SaveEmoneyBuy(tBigCarnival_EMoneyMono_Log["EmoneyLog"][nItemId])
end

-- 确认换取天石赠
function BigCarnival_EMoneyMono_SureExchange(nNpcId,nItemId)
	if not BigCarnival_EMoneyMono_ActivityTimeChk() then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- 各种条件判断
	if not BigCarnival_EMoneyMono_ExchangeChk(nNpcId,nItemId) then
		return
	end
	
	local nEMoney = tBigCarnival_EMoneyMono_EMomeyMono[nItemId]
	
	
	local nUserId = Get_UserId()
	local nEvent = tBigCarnival_EMoneyMono_Stc[1]["EventType"]
	local nType = tBigCarnival_EMoneyMono_Stc[1]["DataType"]
	
	local nGetGitfitem = Get_UserStatisticValue(nEvent,nType,nUserId)
	local nGiftTip = 3
	--根据玩家购买额度的不同兑换的赠点数量也不同
	if nGetGitfitem >= tBigCarnival_EMoneyMono_Christmas_Board[1][1] and nGetGitfitem < tBigCarnival_EMoneyMono_Christmas_Board[1][2] then
		nGiftTip = tBigCarnival_EMoneyMono_Christmas_Board[1][3]
		elseif nGetGitfitem >= tBigCarnival_EMoneyMono_Christmas_Board[2][1] and nGetGitfitem < tBigCarnival_EMoneyMono_Christmas_Board[2][2] then
			nGiftTip = tBigCarnival_EMoneyMono_Christmas_Board[2][3]
			elseif nGetGitfitem >= tBigCarnival_EMoneyMono_Christmas_Board[3][1] and nGetGitfitem < tBigCarnival_EMoneyMono_Christmas_Board[3][2] then
				nGiftTip = tBigCarnival_EMoneyMono_Christmas_Board[3][3]
				else
					nGiftTip = tBigCarnival_EMoneyMono_Christmas_Board[4][3]
				
	end
	
	local nEMoneyMono = tBigCarnival_EMoneyMono_Christmas_ChgEMomeyMono[nGiftTip][nItemId]
	--local nEMoneyMono = tBigCarnival_EMoneyMono_ChgEMomeyMono[nItemId]
	
	if not User_AddEMoney(-nEMoney) then
		return
	end
	

	
	Task_AddStatistic(nEvent,nType,nEMoneyMono,1,nUserId)
	Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	-- 给奖励
	RewardTemplate_UseItem(tBigCarnival_EMoneyMono_Christmas_Reward[nItemId][nGiftTip])
	
	--local nIndex = tBigCarnival_EMoneyMono_RewardIndex[nItemId]
	--RewardTemplate_UseItem(tBigCarnival_EMoneyMono_Reward[nIndex])
	-- Sys_SaveEmoneyBuy(tBigCarnival_EMoneyMono_Reward[nIndex]["EmoneyLog"])
end

-- 购买物品检测
function BigCarnival_EMoneyMono_BuyItemChk(nNpcId,nItemId,nNumber)
	-- 已超过可换购额度
	--local nEvent = tBigCarnival_EMoneyMono_Stc[2]["EventType"]
	--local nType = tBigCarnival_EMoneyMono_Stc[2]["DataType"]
	--local nLimit = tBigCarnival_EMoneyMono_Stc[2]["Limit"]
	
	local nItemEvent = tBigCarnival_EMoneyMono_Stc[nItemId]["EventType"]
	local nItemType = tBigCarnival_EMoneyMono_Stc[nItemId]["DataType"]
	local nItemLimit = tBigCarnival_EMoneyMono_Stc[nItemId]["Limit"]
	
	--local nData = Get_UserStatisticValue(nEvent,nType)
	
	local nItemData = Get_UserStatisticValue(nItemEvent,nItemType)
	local nEMoney = 0
	if BigCarnival_EMoneyMono_NewServerChk() then
		nEMoney = tBigCarnival_EMoneyMono_EMomeyMono[nItemId]["New"]*nNumber
		nItemLimit = tBigCarnival_EMoneyMono_Stc[nItemId]["Limit"]
	else
		nEMoney = tBigCarnival_EMoneyMono_EMomeyMono[nItemId]["Old"]*nNumber
		nItemLimit = tBigCarnival_EMoneyMono_Stc[nItemId]["Oldlimit"]
	end
	
	local sItemName = tBigCarnival_EMoneyMono_Text[nNpcId]["ItemName"][nItemId]
	--if nData+nEMoney > nLimit or nItemData + nNumber > nItemLimit then
	if nItemData + nNumber > nItemLimit then
		local sText = tBigCarnival_EMoneyMono_Text[nNpcId]["Text241"]
		tNpcGossip[nNpcId]["Text241"] = string.format(sText,sItemName)
		LinkNpcGossipFunc_New(nNpcId,"2-4")
		return false
	end
	
	-- 天石不足
	-- local nUserEMoney = Get_UserMonoEMoney()
	local nUserEMoney = Get_UserEMoney()
	if nUserEMoney < nEMoney then
		local sText = tBigCarnival_EMoneyMono_Text[nNpcId]["Text231"]
		tNpcGossip[nNpcId]["Text231"] = string.format(sText,sItemName)
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return false
	end
	
	--这里711188物品上限是10个故不做区分处理
	if nItemId == tBigCarnival_EMoneyMono_SpecialItem[4050001] or nItemId == tBigCarnival_EMoneyMono_SpecialItem[3306600] or nItemId == tBigCarnival_EMoneyMono_SpecialItem[3306562] 
	or nItemId == tBigCarnival_EMoneyMono_SpecialItem[3306563] or nItemId == tBigCarnival_EMoneyMono_SpecialItem[3306370] or nItemId == tBigCarnival_EMoneyMono_SpecialItem[722736]
	or nItemId == tBigCarnival_EMoneyMono_SpecialItem[722732] or nItemId == tBigCarnival_EMoneyMono_SpecialItem[723030] 
	or nItemId == tBigCarnival_EMoneyMono_SpecialItem[1080001] or nItemId == tBigCarnival_EMoneyMono_SpecialItem[3316203]  then
		nNumber = 1
	end
	
	if nItemId == tBigCarnival_EMoneyMono_SpecialItem[711188] then
		nNumber = math.ceil(nNumber/10)
	end
	local nOtherSpace = 1
	-- 背包空间不足
	if nEMoney > 10000 then
		nOtherSpace = math.ceil(nEMoney/10000)
	end
	local nSpace = nNumber+nOtherSpace
	if not User_CheckLeftSpace(nSpace) then
		local sNoSpace = tBigCarnival_EMoneyMono_Text[nNpcId]["NoSpace"]
		Sys_MsgBox(string.format(sNoSpace,nSpace))
		return false
	end
	
	return true
end

-- 购买物品
function BigCarnival_EMoneyMono_BuyItem(nNpcId,nItemId)
	if not BigCarnival_EMoneyMono_ActivityTimeChk() then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- 次级对白
	local nEMoney = 0
	if BigCarnival_EMoneyMono_NewServerChk() then
		nEMoney = tBigCarnival_EMoneyMono_EMomeyMono[nItemId]["New"]
	else
		nEMoney = tBigCarnival_EMoneyMono_EMomeyMono[nItemId]["Old"]
	end
	local sText = tBigCarnival_EMoneyMono_Text[nNpcId]["Text211"]
	local sItemName = tBigCarnival_EMoneyMono_Text[nNpcId]["ItemName"][nItemId]
	local sShowText = string.format(sText,sItemName,nEMoney)
	Sys_DialogText(sShowText)
	Sys_DialogText(tBigCarnival_EMoneyMono_Text[nNpcId]["Text212"])
	Sys_DialogText(tBigCarnival_EMoneyMono_Text[nNpcId]["Text213"])
	Sys_DialogOptEdit(tBigCarnival_EMoneyMono_Text[nNpcId]["Input"],tBigCarnival_EMoneyMono_Count["Length"],"BigCarnival_EMoneyMono_SureToSend</N>"..nNpcId.."</N>"..nItemId)
	Sys_DialogFace(nNpcId)
	Sys_DialogEnd()
end

-- 输入框
function BigCarnival_EMoneyMono_SureToSend(nNpcId,nItemId)
	if not BigCarnival_EMoneyMono_ActivityTimeChk() then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- 给奖励
	local nNumber = tonumber(Get_SysAcceptStr())
	if nNumber == nil or type(nNumber) ~= "number" or nNumber%1 ~= 0 or nNumber <= 0 or nNumber > 500 then
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end
	
	if not BigCarnival_EMoneyMono_BuyItemChk(nNpcId,nItemId,nNumber) then
		return
	end
	
	local nNeedEMoney = 0
	if BigCarnival_EMoneyMono_NewServerChk() then
		nNeedEMoney = tBigCarnival_EMoneyMono_EMomeyMono[nItemId]["New"]*nNumber
	else
		nNeedEMoney = tBigCarnival_EMoneyMono_EMomeyMono[nItemId]["Old"]*nNumber
	end
	
	--新赠打折卷购买
	local nReturnMoney,tMemoryBin,sEmoneyLog,nZhengItemId = CommonPackage_ChatReturnPrice(nItemId,1,nNumber)
	if (nReturnMoney ~= nil) and (nZhengItemId ~= nil) then
		nNeedEMoney = nNeedEMoney - nReturnMoney
	end
	
	
	-- 二次确认
	local sText = tBigCarnival_EMoneyMono_Text[nNpcId]["Text311"]
	local sItemName = tBigCarnival_EMoneyMono_Text[nNpcId]["ItemName"][nItemId]
	tNpcGossip[nNpcId]["Text311"] = string.format(sText,nNeedEMoney,nNumber,sItemName)
	local sOption = tBigCarnival_EMoneyMono_Text[nNpcId]["Option12"]
	tNpcGossip[nNpcId]["Option12"] = string.format(sOption,nNeedEMoney)
	
	if (nReturnMoney ~= nil) and (nZhengItemId ~= nil) then
		tNpcGossip[nNpcId]["OptionFunc12"] = "BigCarnival_EMoneyMono_SureBuy</N>19350</N>"..nItemId.."</N>"..nNumber.."</N>"..nZhengItemId.."</N>"..nNeedEMoney
	else
		tNpcGossip[nNpcId]["OptionFunc12"] = "BigCarnival_EMoneyMono_SureBuy</N>19350</N>"..nItemId.."</N>"..nNumber.."</N>0</N>0"
	end
	
	LinkNpcGossipFunc_New(nNpcId,"3-1")
end

-- 确认购买物品
function BigCarnival_EMoneyMono_SureBuy(nNpcId,nItemId,nNumber,nZhengItemId,nNeedEMoney)
	if not BigCarnival_EMoneyMono_ActivityTimeChk() then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- 各种条件判断
	if not BigCarnival_EMoneyMono_BuyItemChk(nNpcId,nItemId,nNumber) then
		return
	end
	
	local nSorMoney = 0
	if BigCarnival_EMoneyMono_NewServerChk() then
		nSorMoney = tBigCarnival_EMoneyMono_EMomeyMono[nItemId]["New"]
	else
		nSorMoney = tBigCarnival_EMoneyMono_EMomeyMono[nItemId]["Old"]
	end
	local nEMoney = nSorMoney*nNumber
	-- if not User_AddEMoneyMono(-nEMoney) then
	
	if nZhengItemId ~= 0 and nNeedEMoney ~= 0 then
		nEMoney = nNeedEMoney
		
		--扣除抵扣卷
		if Item_ChkMulItem(nZhengItemId,nZhengItemId,1) and Item_DelMulItem(nZhengItemId,nZhengItemId,1) then
			-- 抵用券log标识
			Sys_SaveActionFestivalLog(string.format(tBigCarnival_EMoneyMono_Cou_Stc["DiLog"],nZhengItemId))
		else
			return
		end	
		
	end
	
	
	
	if not User_AddEMoney(-nEMoney) then	
		return
	end
	
	
	
	local nUserId = Get_UserId()
	--local nEvent = tBigCarnival_EMoneyMono_Stc[2]["EventType"]
	--local nType = tBigCarnival_EMoneyMono_Stc[2]["DataType"]
	
	local nItemEvent = tBigCarnival_EMoneyMono_Stc[nItemId]["EventType"]
	local nItemType = tBigCarnival_EMoneyMono_Stc[nItemId]["DataType"]
	
	--Task_AddStatistic(nEvent,nType,nEMoney,1,nUserId)
	--Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	
	Task_AddStatistic(nItemEvent,nItemType,nNumber,1,nUserId)
	
	-- 给奖励
	tBigCarnival_EMoneyMono_Reward[3]["RewardData"] = nEMoney
	local sLog = tBigCarnival_EMoneyMono_Log["ConsumeMono"]
	tBigCarnival_EMoneyMono_Reward[3]["Log"] = string.format(sLog,nEMoney,nItemId,nNumber)
	local sEMoneyLog = tBigCarnival_EMoneyMono_Log["ConsumeEMoney"]
	local nLogIndex = tBigCarnival_EMoneyMono_LogIndex[nItemId]
	tBigCarnival_EMoneyMono_Reward[3]["EmoneyLog"] = string.format(sEMoneyLog,nLogIndex,0,0,nEMoney)
	local sAttr = " "
	if nItemId == tBigCarnival_EMoneyMono_SpecialItem[3306562] or nItemId == tBigCarnival_EMoneyMono_SpecialItem[3306563] or nItemId == tBigCarnival_EMoneyMono_SpecialItem[3009001] or nItemId == tBigCarnival_EMoneyMono_SpecialItem[3308868] then
		sAttr = string.format(tBigCarnival_EMoneyMono_RewardAttr[nItemId],nNumber)
	else
		sAttr = "0 "..nNumber.." 3"
	end
	tBigCarnival_EMoneyMono_Reward[3]["RewardItem"][1]["Id"] = nItemId
	tBigCarnival_EMoneyMono_Reward[3]["RewardItem"][1]["Attr"] = sAttr
	RewardTemplate_UseItem(tBigCarnival_EMoneyMono_Reward[3])
	-- if RewardTemplate_UseItem(tBigCarnival_EMoneyMono_Reward[3]) then
		-- if not Sys_ChkFullTime(tActivityTime["BoundCarnival"]["ActivityTime"]) then
			-- return
		-- end
		-- if nEMoney ==nil or nEMoney == 0 then
			-- return
		-- end
		-- local tBigCarnival_EMoneyMono_Award = CommonFunc_Copy(tBigCarnival_EMoneyMono_Christmas_Reward["NinJa"])
		-- tBigCarnival_EMoneyMono_Award["RewardItem"][1]["Attr"] = "0 "..math.floor(nEMoney)
		-- RewardTemplate_UseItemAndMsg(tBigCarnival_EMoneyMono_Award)
	-- end
	Sys_SaveEmoneyBuy(tBigCarnival_EMoneyMono_Reward[3]["EmoneyLog"])
	-- 提示
	local sRewardText = tBigCarnival_EMoneyMono_Text[nNpcId]["Reward"]
	User_TalkChannel2005(string.format(sRewardText,nEMoney,nNumber,tBigCarnival_EMoneyMono_Text[nNpcId]["ItemName"][nItemId]))
end

function BigCarnival_EMoneyMono_MyEmoneyUseItem(nItemId)
	--判断物品
	if not Item_ChkMulItem(nItemId,nItemId,1) then
		return
	end
	
	--若不是打折物品，则直接打开该礼包
	-- local nCutTip = CommonPackage_ExitTicket()
	local nReturnMoney,tMemoryBin,sEmoneyLog,nZhengItemId = CommonPackage_ReturnPrice(nItemId,1)
	local nSpace = RewardTemplate_GetRewardSpace(tBigCarnival_EMoneyMono_Reward[nItemId])+ WarriorsPromotion_JudgeSpace(nItemId)
	
	if tMemoryBin == nil and nReturnMoney == nil then
		if User_CheckLeftSpace(nSpace) then
			if RewardTemplate_UseItemAndMsg(tBigCarnival_EMoneyMono_Reward[nItemId]) then
				WarriorsPromotion_JudgeNinjaItem(nItemId)
			end
		else
			--提示
			Sys_MsgBox(string.format(tPeelingPromotion_Text["MsgSpace"],nSpace))
			return
		end
		return
	end
	-- --判断是否在活动时间内
	if not Sys_ChkFullTime(tActivityTime["BoundCarnival"]["OldActivityTime"]) then
		
		if User_CheckLeftSpace(nSpace) then
			if RewardTemplate_UseItemAndMsg(tBigCarnival_EMoneyMono_Reward[nItemId]) then
				WarriorsPromotion_JudgeNinjaItem(nItemId)
			end
		else
			--提示
			Sys_MsgBox(string.format(tPeelingPromotion_Text["MsgSpace"],nSpace))
			return 
		end
	else
		local nSpace = RewardTemplate_GetRewardSpace(tBigCarnival_EMoneyMono_Reward[nItemId])
		
		--有返利,给玩家返相应的天石
		-- if nCutTip == 2 then
		local nEmoney = Get_UserEMoney()
		if nEmoney + nReturnMoney > G_User_MaxEmoney then
			User_TalkChannel2005(tMayPKMonth_Text["Item"]["Text121"])
			Sys_MsgBox(tMayPKMonth_Text["Item"]["Text121"])
			return
		end
		-- end
		
		if User_CheckLeftSpace(nSpace) then
			RewardTemplate_UseItemAndMsg(tBigCarnival_EMoneyMono_Reward[nItemId])
			--给玩家对应的印记
			-- CommonPackage_LocationYing(nItemId,nCutTip)
		
			--若是玩家有打折卷则给玩家放对应的天石
			-- if nCutTip == 2  then
				--给对应的天石
			if CommonPackage_DeleteTicket(nZhengItemId,nItemId) and User_AddEMoney(nReturnMoney) then
				Sys_SaveEmoneyBuy(string.format(sEmoneyLog,nReturnMoney,nReturnMoney))
			end
			-- end
		else
			User_TalkChannel2005(string.format(tRewardTemplate_Text["NoSpace"],nSpace))
			Sys_MsgBox(string.format(tRewardTemplate_Text["NoSpace"],nSpace))	
		end
		
	end
end

--物品使用赠
function BigCarnival_EMoneyMono_UseItemMono(nItemId)
	--判断物品
	if not Item_ChkMulItem(nItemId,nItemId,1) then
		return
	end
	
	--若不是打折物品，则直接打开该礼包
	-- local nCutTip = CommonPackage_ExitTicket()
	local nReturnMoney,tMemoryBin,sEmoneyLog,nZhengItemId = CommonPackage_ReturnPrice(nItemId,2)
	local nSpace = RewardTemplate_GetRewardSpace(tBigCarnival_EMoneyMono_Reward[nItemId])+ WarriorsPromotion_JudgeSpace(nItemId)
	
	if tMemoryBin == nil and nReturnMoney == nil then
		if User_CheckLeftSpace(nSpace) then
			if RewardTemplate_UseItemAndMsg(tBigCarnival_EMoneyMono_Reward[nItemId]) then
				WarriorsPromotion_JudgeNinjaItem(nItemId)
			end
		else
			--提示
			Sys_MsgBox(string.format(tPeelingPromotion_Text["MsgSpace"],nSpace))
			return
		end
		return
	end
	-- --判断是否在活动时间内
	if not Sys_ChkFullTime(tActivityTime["BoundCarnival"]["OldActivityTime"]) then
		
		if User_CheckLeftSpace(nSpace) then
			if RewardTemplate_UseItemAndMsg(tBigCarnival_EMoneyMono_Reward[nItemId]) then 
				WarriorsPromotion_JudgeNinjaItem(nItemId)
			end
		else
			--提示
			Sys_MsgBox(string.format(tPeelingPromotion_Text["MsgSpace"],nSpace))
			return 
		end
	else
		
		--有返利,给玩家返相应的天石
		-- if nCutTip == 2 then
		local nEmoney = Get_UserMonoEMoney()
		if nEmoney + nReturnMoney > G_User_MaxEmoneyMono then
			User_TalkChannel2005(tMayPKMonth_Text["Item"]["Text141"])
			Sys_MsgBox(tMayPKMonth_Text["Item"]["Text141"])
			return
		end
		-- end
		
		if User_CheckLeftSpace(nSpace) then
			RewardTemplate_UseItemAndMsg(tBigCarnival_EMoneyMono_Reward[nItemId])
			--给玩家对应的印记
			-- CommonPackage_LocationYing(nItemId,nCutTip)
		
			--若是玩家有打折卷则给玩家放对应的天石
			-- if nCutTip == 2  then
				--给对应的天石
			if CommonPackage_DeleteTicket(nZhengItemId,nItemId) and User_AddEMoneyMono(nReturnMoney) then
				Sys_SaveEmoneyBuy(string.format(sEmoneyLog,nReturnMoney))
			end
			-- end
		else
			User_TalkChannel2005(string.format(tRewardTemplate_Text["NoSpace"],nSpace))
			Sys_MsgBox(string.format(tRewardTemplate_Text["NoSpace"],nSpace))
		end
		
	end
	
end

-- 物品使用
function BigCarnival_EMoneyMono_UseItem(nItemId)
	--判断物品
	if not Item_ChkMulItem(nItemId,nItemId,1) then
		return
	end
	
	--若不是打折物品，则直接打开该礼包
	-- local nCutTip = CommonPackage_ExitTicket()
	local nReturnMoney,tMemoryBin,sEmoneyLog,nZhengItemId = CommonPackage_ReturnPrice(nItemId,1)
	local nSpace = RewardTemplate_GetRewardSpace(tBigCarnival_EMoneyMono_Reward[nItemId])+ WarriorsPromotion_JudgeSpace(nItemId)
	
	if tMemoryBin == nil and nReturnMoney == nil then
		if User_CheckLeftSpace(nSpace) then
			if RewardTemplate_UseItemAndMsg(tBigCarnival_EMoneyMono_Reward[nItemId]) then
				WarriorsPromotion_JudgeNinjaItem(nItemId)
			end
		else
			--提示
			Sys_MsgBox(string.format(tPeelingPromotion_Text["MsgSpace"],nSpace))
			return
		end
		return
	end
	-- --判断是否在活动时间内
	if not Sys_ChkFullTime(tActivityTime["BoundCarnival"]["OldActivityTime"]) then
		
		if User_CheckLeftSpace(nSpace) then
			if RewardTemplate_UseItemAndMsg(tBigCarnival_EMoneyMono_Reward[nItemId]) then 
				WarriorsPromotion_JudgeNinjaItem(nItemId)
			end
		else
			--提示
			Sys_MsgBox(string.format(tPeelingPromotion_Text["MsgSpace"],nSpace))
			return 
		end
	else
		
		--有返利,给玩家返相应的天石
		-- if nCutTip == 2 then
		local nEmoney = Get_UserEMoney()
		if nEmoney + nReturnMoney > G_User_MaxEmoney then
			User_TalkChannel2005(tMayPKMonth_Text["Item"]["Text121"])
			Sys_MsgBox(tMayPKMonth_Text["Item"]["Text121"])
			return
		end
		-- end
		
		if User_CheckLeftSpace(nSpace) then
			RewardTemplate_UseItemAndMsg(tBigCarnival_EMoneyMono_Reward[nItemId])
			--给玩家对应的印记
			-- CommonPackage_LocationYing(nItemId,nCutTip)
		
			--若是玩家有打折卷则给玩家放对应的天石
			-- if nCutTip == 2  then
				--给对应的天石
			if CommonPackage_DeleteTicket(nZhengItemId,nItemId) and User_AddEMoney(nReturnMoney) then
				Sys_SaveEmoneyBuy(string.format(sEmoneyLog,nReturnMoney,nReturnMoney))
			end
			-- end
		else
			User_TalkChannel2005(string.format(tRewardTemplate_Text["NoSpace"],nSpace))
			Sys_MsgBox(string.format(tRewardTemplate_Text["NoSpace"],nSpace))
		end
		
	end
	
end

-- 新物品使用
function BigCarnival_EMoneyMono_UseNewIPack(nItemId)
	if not Sys_ChkFullTime(tBigCarnival_EMoneyMono_Count["ActivityTime"]) then
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tBigCarnival_EMoneyMono_Text["ItemOverDue"])
			local sLog = tBigCarnival_EMoneyMono_Log["OverDue"]
			Sys_SaveActionFestivalLog(string.format(sLog,nItemId))
 		end
		return
	end
	
	local nPosX = tBigCarnival_EMoneyMono_FindWay[1]["PosX"]
	local nPosY = tBigCarnival_EMoneyMono_FindWay[1]["PosY"]
	local nMapId = tBigCarnival_EMoneyMono_FindWay[1]["MapId"]
	local nNpcId = tBigCarnival_EMoneyMono_FindWay[1]["NpcId"]
	Sys_GotoSomeWhere(nPosX,nPosY,nMapId,nNpcId)
end

-- 清理动态掩码
function BigCarnival_EMoneyMono_ClearGlobalData()
	local nGlobalId = tBigCarnival_EMoneyMono_Count["GlobalId"]
	local nData = Get_SysDynaGlobalData0(nGlobalId)
	if not BigCarnival_EMoneyMono_ActivityTimeChk() then
		if nData == 1 then
			Sys_SetSynaGlobalData0(nGlobalId,0)
		end
	end
end

-- 使用马匹礼盒
function BigCarnival_EMoneyMono_Choose(nItemId,nIndex)
	-- 检测物品是否存在
	if not Item_ChkItem(nItemId) then
		return false
	end
	
	--若不是打折物品，则直接打开该礼包
	-- local nCutTip = CommonPackage_ExitTicket() 
	local nReturnMoney,tMemoryBin,sEmoneyLog,nZhengItemId = CommonPackage_ReturnPrice(nItemId,1)
	local nSpace = RewardTemplate_GetRewardSpace(tBigCarnival_EMoneyMono_Reward[nItemId][nIndex])+ WarriorsPromotion_JudgeSpace(nItemId)
	
	if tMemoryBin == nil and nReturnMoney == nil then
		if User_CheckLeftSpace(nSpace) then
			if RewardTemplate_UseItemAndMsg(tBigCarnival_EMoneyMono_Reward[nItemId][nIndex]) then
				WarriorsPromotion_JudgeNinjaItem(nItemId)
			end
		else
			--提示
			Sys_MsgBox(string.format(tPeelingPromotion_Text["MsgSpace"],nSpace))
			return
		end
		return
	end
	
	--判断是否在活动时间内
	if not Sys_ChkFullTime(tActivityTime["BoundCarnival"]["OldActivityTime"]) then
		
		if User_CheckLeftSpace(nSpace) then
			if RewardTemplate_UseItemAndMsg(tBigCarnival_EMoneyMono_Reward[nItemId][nIndex]) then
				WarriorsPromotion_JudgeNinjaItem(nItemId)
			end
		else
			--提示
			Sys_MsgBox(string.format(tPeelingPromotion_Text["MsgSpace"],nSpace))
			return 
		end
	else
		
		--有返利,给玩家返相应的天石
		-- if nCutTip == 2 then
		local nEmoney = Get_UserEMoney()
		if nEmoney + nReturnMoney > G_User_MaxEmoney then
			User_TalkChannel2005(tMayPKMonth_Text["Item"]["Text121"])
			Sys_MsgBox(tMayPKMonth_Text["Item"]["Text121"])
			return
		end
		-- end
		
		if User_CheckLeftSpace(nSpace) then
			RewardTemplate_UseItemAndMsg(tBigCarnival_EMoneyMono_Reward[nItemId][nIndex])
			--给玩家对应的印记
			-- CommonPackage_LocationYing(nItemId,nCutTip)
		
			--若是玩家有打折卷则给玩家放对应的天石
			-- if nCutTip == 2  then
			--给对应的天石
			if CommonPackage_DeleteTicket(nZhengItemId,nItemId) and User_AddEMoney(nReturnMoney) then
				Sys_SaveEmoneyBuy(string.format(sEmoneyLog,nReturnMoney))
			end
			-- end
		else
			User_TalkChannel2005(string.format(tRewardTemplate_Text["NoSpace"],nSpace+2))
			Sys_MsgBox(string.format(tRewardTemplate_Text["NoSpace"],nSpace+2))
		end
		
	end
	
end

--------------三月赠品大狂欢3.22----------------------

--购买商品判断,跳转对应2次确认
function BigCarnival_EMoneyMono_JudgeGossipNpc(nNpcId,nIndex)
	--判断是否在活动中
	if not Sys_ChkFullTime(tBigCarnival_EMoneyMono_Count["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end
	
	local nPayEMoney = tBigCarnival_EMoneyMono_TreasuresNeedEMoeny[nIndex]
	local sItemName = tBigCarnival_EMoneyMono_TreasuresText["ItemName"][nIndex]
	local nEvent = tBigCarnival_EMoneyMono_TreasuresStc[nIndex]["EventType"]
	local nData = tBigCarnival_EMoneyMono_TreasuresStc[nIndex]["DataType"]
	local nLimit = tBigCarnival_EMoneyMono_TreasuresStc[nIndex]["Limit"]
	local nRemainNum = nLimit - Get_UserStatisticValue(nEvent,nData)
	
	--判断玩家天石是否足够
	local nEMoneyMono = Get_UserMonoEMoney()
	if nEMoneyMono < nPayEMoney then
		local sText = string.format(tBigCarnival_EMoneyMono_TreasuresText[nNpcId]["Text281"],sItemName,nPayEMoney)
		tNpcGossip[nNpcId]["Text281"] = sText
		LinkNpcGossipFunc_New(nNpcId,"2-8")
		return
	end
	local nRewardSpace = RewardTemplate_GetRewardSpace(tBigCarnival_EMoneyMono_TreasuresReward[nIndex])
	if not RewardTemplate_CheckSpace(tBigCarnival_EMoneyMono_TreasuresReward[nIndex]) then
		tNpcGossip[nNpcId]["Text241"] = string.format(tBigCarnival_EMoneyMono_TreasuresText[nNpcId]["Text241"],nRewardSpace)
		LinkNpcGossipFunc_New(nNpcId,"2-4")
		return
	end 
	
	--判断是否只能够买一个
	if nLimit == 1 then
		--是否屏蔽
		if not BigCarnival_EMoneyMono_CheckPassSureFlag() then
			--直接跳转二次确认即可
			BigCarnival_EMoneyMono_ResetSureDialog(nNpcId,nIndex,nPayEMoney,1)
			LinkNpcGossipFunc_New(nNpcId,"2-3")
		else
			BigCarnival_EMoneyMono_BuyTreasureItem(nNpcId,nIndex,1)
		end
	else
		--多个，跳转输入数字对白
		BigCarnival_EMoneyMono_TransInputDialog(nNpcId,nIndex,nRemainNum)
	end
end
--跳转输入框方法
function BigCarnival_EMoneyMono_TransInputDialog(nNpcId,nIndex,nRemainNum)
	local sItemName = tBigCarnival_EMoneyMono_TreasuresText["ItemName"][nIndex]
	local nUnitPrice = tBigCarnival_EMoneyMono_TreasuresNeedEMoeny[nIndex]
	local nMaxNum = 10
	local sText1 = string.format(tBigCarnival_EMoneyMono_TreasuresText[nNpcId]["Text221"],sItemName,nUnitPrice)
	local sText2 = string.format(tBigCarnival_EMoneyMono_TreasuresText[nNpcId]["Text222"],nRemainNum)
	local sText3 = string.format(tBigCarnival_EMoneyMono_TreasuresText[nNpcId]["Input"],nMaxNum)
	Sys_DialogText(sText1)
	Sys_DialogText(sText2)
	Sys_DialogOptEdit(sText3,10,"BigCarnival_EMoneyMono_GetStrLinkDialog</N>"..nNpcId.."</N>"..nIndex.."</N>"..nRemainNum .. "</N>" .. nMaxNum)
	Sys_DialogFace(nNpcId)
	Sys_DialogEnd()
end

--打开珍品袋子
function BigCarnival_EMoneyMono_UserTreasurePackage(nItemId)

	--判断物品
	if not Item_ChkMulItem(nItemId,nItemId,1) then
		return
	end
	
	--若不是打折物品，则直接打开该礼包
	-- local nCutTip = CommonPackage_ExitTicket()
	local nReturnMoney,tMemoryBin,sEmoneyLog,nZhengItemId = CommonPackage_ReturnPrice(nItemId,1)
	local nSpace = RewardTemplate_GetRewardSpace(tBigCarnival_EMoneyMono_TreasuresPackage[nItemId])+ WarriorsPromotion_JudgeSpace(nItemId)
	
	if tMemoryBin == nil and nReturnMoney == nil then
		if User_CheckLeftSpace(nSpace) then
			if RewardTemplate_UseItemAndMsg(tBigCarnival_EMoneyMono_TreasuresPackage[nItemId]) then
				WarriorsPromotion_JudgeNinjaItem(nItemId)
			end
		else
			--提示
			Sys_MsgBox(string.format(tPeelingPromotion_Text["MsgSpace"],nSpace))
			return
		end
		return
	end
	--判断是否在活动时间内
	if not Sys_ChkFullTime(tActivityTime["BoundCarnival"]["OldActivityTime"]) then
		
		if User_CheckLeftSpace(nSpace) then
			if RewardTemplate_UseItemAndMsg(tBigCarnival_EMoneyMono_TreasuresPackage[nItemId]) then
				WarriorsPromotion_JudgeNinjaItem(nItemId)
			end
		else
			--提示
			Sys_MsgBox(string.format(tPeelingPromotion_Text["MsgSpace"],nSpace))
			return 
		end
	else
		
		
		--有返利,给玩家返相应的天石
		-- if nCutTip == 2 then
		local nEmoney = Get_UserEMoney()
		if nEmoney + nReturnMoney > G_User_MaxEmoney then
			User_TalkChannel2005(tMayPKMonth_Text["Item"]["Text121"])
			Sys_MsgBox(tMayPKMonth_Text["Item"]["Text121"])
			return
		end
		-- end
		
		if User_CheckLeftSpace(nSpace) then
			RewardTemplate_UseItemAndMsg(tBigCarnival_EMoneyMono_TreasuresPackage[nItemId])
			--给玩家对应的印记
			-- CommonPackage_LocationYing(nItemId,nCutTip)
		
			--若是玩家有打折卷则给玩家放对应的天石
			-- if nCutTip == 2  then
				--给对应的天石
			if CommonPackage_DeleteTicket(nZhengItemId,nItemId) and User_AddEMoney(nReturnMoney) then
				Sys_SaveEmoneyBuy(string.format(sEmoneyLog,nReturnMoney,nReturnMoney))
			end
			-- end
		else
			User_TalkChannel2005(string.format(tRewardTemplate_Text["NoSpace"],nSpace))
			Sys_MsgBox(string.format(tRewardTemplate_Text["NoSpace"],nSpace))
		end
		
	end

end

--判断是否有剩余次数
function BigCarnival_EMoneyMono_JudgeTreasureStcNum(nIndex)
	local nEvent = tBigCarnival_EMoneyMono_TreasuresStc[nIndex]["EventType"]
	local nData = tBigCarnival_EMoneyMono_TreasuresStc[nIndex]["DataType"]
	local nLimit = tBigCarnival_EMoneyMono_TreasuresStc[nIndex]["Limit"]
	
	local nRemainNum = nLimit - Get_UserStatisticValue(nEvent,nData)
	if nRemainNum <= 0 then
		return false
	else
		return true
	end
end

--所有商品剩余次数
function BigCarnival_EMoneyMono_AllGoodsStcNum(nNpcId)
	for i=1,13 do
		local nEvent = tBigCarnival_EMoneyMono_TreasuresStc[i]["EventType"]
		local nData = tBigCarnival_EMoneyMono_TreasuresStc[i]["DataType"]
		local nLimit = tBigCarnival_EMoneyMono_TreasuresStc[i]["Limit"]
		local nRemainNum = nLimit - Get_UserStatisticValue(nEvent,nData)
		local sDialogIndex = tBigCarnival_EMoneyMono_TreasuresDialogIndex[i]
		tNpcGossip[nNpcId][sDialogIndex] = string.format(tBigCarnival_EMoneyMono_TreasuresText[nNpcId][sDialogIndex],nRemainNum)
 	end
end

--接收玩家键入数字，跳转多个二次确认对白
function BigCarnival_EMoneyMono_GetStrLinkDialog(nNpcId,nIndex,nRemainNum,nMaxNum)
	local nEvent = tBigCarnival_EMoneyMono_TreasuresStc[nIndex]["EventType"]
	local nData = tBigCarnival_EMoneyMono_TreasuresStc[nIndex]["DataType"]
	
	if not Sys_ChkFullTime(tBigCarnival_EMoneyMono_Count["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end
	
	--验证输入内容
	local sItemName = tBigCarnival_EMoneyMono_TreasuresText["ItemName"][nIndex]
	local nNumber = tonumber(Get_SysAcceptStr())
	if nNumber == nil or type(nNumber) ~= "number" or nNumber%1 ~= 0 or nNumber <= 0 or nNumber > nMaxNum then
		--设置选项方法
		tNpcGossip[nNpcId]["OptionFunc251"] = "BigCarnival_EMoneyMono_TransInputDialog</N>" .. nNpcId .. "</N>" .. nIndex .. "</N>" .. nRemainNum
		LinkNpcGossipFunc_New(nNpcId,"2-5")
		return
	end
	local nBuyAllNum = Get_UserStatisticValue(nEvent,nData) + nNumber
	if nBuyAllNum > tBigCarnival_EMoneyMono_TreasuresStc[nIndex]["Limit"] then
		tNpcGossip[nNpcId]["Text271"] = string.format(tBigCarnival_EMoneyMono_TreasuresText[nNpcId]["Text271"],sItemName)
		LinkNpcGossipFunc_New(nNpcId,"2-7")
		return
	end
	
	local nPayEMoney = tBigCarnival_EMoneyMono_TreasuresNeedEMoeny[nIndex] * nNumber
	--判断玩家天石是否足够
	-- local nEMoneyMono = Get_UserMonoEMoney()
	local nEmoney = Get_UserEMoney()
	if nEmoney < nPayEMoney then
		local sText = string.format(tBigCarnival_EMoneyMono_TreasuresText[nNpcId]["Text261"],nNumber,sItemName)
		tNpcGossip[nNpcId]["Text261"] = sText
		LinkNpcGossipFunc_New(nNpcId,"2-6")
		return
	end
	--修改奖励表
	local tTempReward = CommonFunc_Copy(tBigCarnival_EMoneyMono_TreasuresReward[nIndex])
	tTempReward["RewardItem"][1]["Attr"] = "0 " .. nNumber .. " 3"
	--判断玩家背包空间数
	local nRewardSpace = RewardTemplate_GetRewardSpace(tTempReward)
	if not User_CheckLeftSpace(nRewardSpace) then
		tNpcGossip[nNpcId]["Text241"] = string.format(tBigCarnival_EMoneyMono_TreasuresText[nNpcId]["Text241"],nRewardSpace)
		LinkNpcGossipFunc_New(nNpcId,"2-4")
		return
	end
	
	--是否屏蔽
	if not BigCarnival_EMoneyMono_CheckPassSureFlag() then
		-- 跳转二次确认
		BigCarnival_EMoneyMono_ResetSureDialog(nNpcId,nIndex,nPayEMoney,nNumber)
		LinkNpcGossipFunc_New(nNpcId,"2-3")
	else
		BigCarnival_EMoneyMono_BuyTreasureItem(nNpcId,nIndex,nNumber)
	end
end

--屏蔽今日的二次确认
function BigCarnival_EMoneyMono_TodayPassSureDialog(nNpcId,nIndex,nPayEMoney,nNumber)
	--置二次确认为屏蔽状态
	local nEvent = tBigCarnival_EMoneyMono_TreasuresStc["SureDialog"]["EventType"]
	local nData = tBigCarnival_EMoneyMono_TreasuresStc["SureDialog"]["DataType"]
	local nFlag = tBigCarnival_EMoneyMono_TreasuresStc["SureDialog"]["Flag"]
	Task_SetStatistic(nEvent,nData,nFlag,1)
	Task_SetStcTimestamp(nEvent,nData,0)
	
	--直接跳转购买
	BigCarnival_EMoneyMono_BuyTreasureItem(nNpcId,nIndex,nNumber)
end
--重置二次确认函数
function BigCarnival_EMoneyMono_ResetSureDialog(nNpcId,nIndex,nPayEMoney,nNumber)
	local sText = ""
	local sItemName = tBigCarnival_EMoneyMono_TreasuresText["ItemName"][nIndex]
	--重新跳到二次确认去
	if nNumber == 1 then
		sText = string.format(tBigCarnival_EMoneyMono_TreasuresText[nNpcId]["Text231"],nPayEMoney,sItemName)
	else
		sText = string.format(tBigCarnival_EMoneyMono_TreasuresText[nNpcId]["Text232"],nPayEMoney,nNumber,sItemName)
	end
	tNpcGossip[nNpcId]["Text231"] = sText
	--选项生成
	local sText2 = string.format(tBigCarnival_EMoneyMono_TreasuresText[nNpcId]["Option231"],nPayEMoney)
	tNpcGossip[nNpcId]["Option231"] = sText2
	tNpcGossip[nNpcId]["OptionFunc231"] = "BigCarnival_EMoneyMono_BuyTreasureItem</N>"..nNpcId.."</N>"..nIndex.."</N>"..nNumber
	--二次确认选项方法
	tNpcGossip[nNpcId]["OptionFunc232"] = "BigCarnival_EMoneyMono_TodayPassSureDialog</N>"..nNpcId.."</N>"..nIndex.."</N>"..nPayEMoney.."</N>"..nNumber
end
--确定购买
function BigCarnival_EMoneyMono_BuyTreasureItem(nNpcId,nIndex,nNumber)
	local nEvent = tBigCarnival_EMoneyMono_TreasuresStc[nIndex]["EventType"]
	local nData = tBigCarnival_EMoneyMono_TreasuresStc[nIndex]["DataType"]
	--判断是否在活动中
	if not Sys_ChkFullTime(tBigCarnival_EMoneyMono_Count["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end
	--判断玩家天石是否足够
	-- local nEMoneyMono = Get_UserMonoEMoney()
	local nEmoney = Get_UserEMoney()
	local nPayEMoney = tBigCarnival_EMoneyMono_TreasuresNeedEMoeny[nIndex] * nNumber
	local sItemName = tBigCarnival_EMoneyMono_TreasuresText["ItemName"][nIndex]
	if nEmoney < nPayEMoney then
		local sText = ""
		if nNumber == 1 then
			sText = string.format(tBigCarnival_EMoneyMono_TreasuresText[nNpcId]["Text281"],sItemName,nPayEMoney)
			tNpcGossip[nNpcId]["Text281"] = sText
			LinkNpcGossipFunc_New(nNpcId,"2-8")
			return
		else
			sText = string.format(tBigCarnival_EMoneyMono_TreasuresText[nNpcId]["Text261"],nNumber,sItemName)
			tNpcGossip[nNpcId]["Text261"] = sText
			LinkNpcGossipFunc_New(nNpcId,"2-6")
		end
		return
	end
	--修改奖励表
	local tTempReward = CommonFunc_Copy(tBigCarnival_EMoneyMono_TreasuresReward[nIndex])
	tTempReward["RewardItem"][1]["Attr"] = "0 " .. nNumber .. " 3"
	--判断玩家背包空间数
	local nRewardSpace = RewardTemplate_GetRewardSpace(tTempReward)
	if not User_CheckLeftSpace(nRewardSpace) then
		tNpcGossip[nNpcId]["Text241"] = string.format(tBigCarnival_EMoneyMono_TreasuresText[nNpcId]["Text241"],nRewardSpace)
		LinkNpcGossipFunc_New(nNpcId,"2-4")
		return
	end
	
	local nEMoneyId = tBigCarnival_EMoneyMono_TreasuresEMoneyId[nIndex]
	tTempReward["EmoneyLog"] = string.format(tBigCarnival_EMoneyMono_TreasuresEMoneyLog["EmoneyLog"],nEMoneyId,nPayEMoney)
	tTempReward["Talk"] = string.format(tTempReward["Talk"],nPayEMoney,sItemName,nNumber)
	
	--根据购买数量，打对应数量掩码
	local nBuyNum = Get_UserStatisticValue(nEvent,nData) + nNumber
	if Task_ChkStcValue(nEvent,nData,">=",tBigCarnival_EMoneyMono_TreasuresStc[nIndex]["Limit"]) then
		tNpcGossip[nNpcId]["Text271"] = string.format(tBigCarnival_EMoneyMono_TreasuresText[nNpcId]["Text271"],sItemName)
		LinkNpcGossipFunc_New(nNpcId,"2-7")
		return
	end
	if not User_AddEMoneyMono(-nPayEMoney) then
		return
	end 
	
	Task_SetStatistic(nEvent,nData,nBuyNum,1)
	Task_SetStcTimestamp(nEvent,nData,0)
	
	--给奖励
	RewardTemplate_UseItem(tTempReward)
end
--检查是否屏蔽
function BigCarnival_EMoneyMono_CheckPassSureFlag()
	--今日是否屏蔽二次确认按钮
	local nEvent = tBigCarnival_EMoneyMono_TreasuresStc["SureDialog"]["EventType"]
	local nData = tBigCarnival_EMoneyMono_TreasuresStc["SureDialog"]["DataType"]
	local nFlag = tBigCarnival_EMoneyMono_TreasuresStc["SureDialog"]["Flag"]
	if Task_ChkStcValue(nEvent,nData,">=",nFlag) then
		return true
	else
		return false
	end
end

--上线自检方法
function BigCarnival_EMoneyMono_LoginSysFunc()
	local nEvent = tBigCarnival_EMoneyMono_TreasuresStc["SureDialog"]["EventType"]
	local nData = tBigCarnival_EMoneyMono_TreasuresStc["SureDialog"]["DataType"]
	if Task_StcInterval(nEvent,nData,1,4) then
		Task_SetStatistic(nEvent,nData,0,1)
		Task_SetStcTimestamp(nEvent,nData,0)
	end
end

function BigCarnival_EMoneyMono_JudgeGoodsAllSell(nBegin,nEnd)
	for i = nBegin,nEnd do
		if BigCarnival_EMoneyMono_JudgeTreasureStcNum(i) then
			return false
		end
	end
	return true
end

--折扣商店上交凭证
function BigCarnival_EMoneyMono_Cou_Awardgift(nNpcId)
	--注意：是否上交增加力气值
	
	local nUserId = Get_UserId()
	local nEvent = tBigCarnival_EMoneyMono_Cou_Stc["Eventype"]
	local nData = tBigCarnival_EMoneyMono_Cou_Stc["Datatype"]
	
	local nItemId = tBigCarnival_EMoneyMono_Cou_Stc["ItemId"]
	
	if Item_ChkMulItem(nItemId,nItemId,1) then
		
		local nNumItemid = Get_CountItemType(nItemId,0)
		--删除物品
		if Item_DelMulItem(nItemId,nItemId,nNumItemid) then
			
			--获得原来掩码
			local nOriginalgrade = Get_UserStatisticValue(nEvent,nData,nUserId)
			--添加掩码
			Task_AddStatistic(nEvent,nData,nNumItemid,1,nUserId)
			Task_SetStcTimestamp(nEvent,nData,0,nUserId)
			
			--打log
			local sLog = tBigCarnival_EMoneyMono_Cou_Stc["Log"]
			Sys_SaveActionFestivalLog(string.format(sLog,nNumItemid))
			
			--公告
			User_TalkChannel2005(string.format(tBigCarnival_EMoneyMono_Text[nNpcId]["Text122"],nNumItemid))
		end
		
	else
		User_TalkChannel2005(tBigCarnival_EMoneyMono_Text[nNpcId]["Text119"])
		Sys_MsgBox(tBigCarnival_EMoneyMono_Text[nNpcId]["Text119"])
	end
end

--领取整点福利礼盒
function BigCarnival_EMoneyMono_ZhengFuLi()

	local nUserId = Get_UserId()
	
	--隔天掩码重置
	for i,v in pairs(tBigCarnival_EMoneyMono_ZhengFu["Stc"]) do
		if Task_StcInterval(v[1],v[2],1,4,nUserId) then
			Task_SetStatistic(v[1],v[2],0,1,nUserId)
			Task_SetStcTimestamp(v[1],v[2],0,nUserId)
		end
	end
	
	--判断总的时间
	if not Sys_ChkFullTime(tActivityTime["BoundCarnival"]["OldActivityTime"]) then
		return
	end
	
	local nBigCarnival_Tip = 0
	local nBigCarnival_nEvent 
	local nBigCarnival_nData 
	--判断整点时间
	for i,v in pairs(tBigCarnival_EMoneyMono_ZhengFu["GetTime"]) do
		if Sys_ChkDayTime(v) then
			nBigCarnival_Tip = 1
			nBigCarnival_nEvent = tBigCarnival_EMoneyMono_ZhengFu["Stc"][i][1]
			nBigCarnival_nData = tBigCarnival_EMoneyMono_ZhengFu["Stc"][i][2]
		end
	end
	

	
	if nBigCarnival_Tip == 0 then
		User_TalkChannel2005(tBigCarnival_EMoneyMono_Text["UniversityTip"][2])
		Sys_MsgBox(tBigCarnival_EMoneyMono_Text["UniversityTip"][2])
		return
	end
	
	--玩家该时间段已领取了三次奖励
	if Task_ChkStcValue(nBigCarnival_nEvent,nBigCarnival_nData,">=",3,nUserId) then
		User_TalkChannel2005(tBigCarnival_EMoneyMono_Text["UniversityTip"][3])
		Sys_MsgBox(tBigCarnival_EMoneyMono_Text["UniversityTip"][3])
		return 
	end
	
	--判断是否达到全服上限
	local tBigCarnival_Ling = {}
	local nGlobalId = tBigCarnival_EMoneyMono_ZhengFu["Globalid"]
	for i = 0,5,1 do
		local nNowNum = Get_SysDynaGlobalData(nGlobalId,i)
		local nMaxNum = tBigCarnival_EMoneyMono_ZhengFu["Max"][i+1]
		if nNowNum < nMaxNum then
			table.insert(tBigCarnival_Ling,(i+1))
		end
	end
	
	--随机数组里面的值
	if #tBigCarnival_Ling == 0 then
		--奖励已全部领取完毕
		User_TalkChannel2005(tBigCarnival_EMoneyMono_Text["UniversityTip"][4])
		Sys_MsgBox(tBigCarnival_EMoneyMono_Text["UniversityTip"][4])
		return
	end
	
	local nNum = math.random(1,#tBigCarnival_Ling)
	local nNumSure = tBigCarnival_Ling[nNum]
	
	--判断玩家背包空间
	local tTable = tBigCarnival_EMoneyMono_ZhengFu["AwardItem"][nNumSure]
	local nBagSpace = RewardTemplate_GetRewardSpace(tTable)
	
	if not User_CheckLeftSpace(nBagSpace) then
		User_TalkChannel2005(string.format(tRewardTemplate_Text["NoSpace"],nBagSpace))
		Sys_MsgBox(string.format(tRewardTemplate_Text["NoSpace"],nBagSpace))
		return
	end
	
	--修改全局表，修改玩家相关掩码(特定宝箱ABC)，获得物品
	local nlocation = tBigCarnival_EMoneyMono_ZhengFu["AwardItem"][nNumSure]["MyPos"]
	local nOriginalNum = Get_SysDynaGlobalData(nGlobalId,nlocation)
	Sys_SetSynaGlobalData(nGlobalId,nlocation,nOriginalNum+1)
	
	if nNumSure >= 4 and nNumSure <= 6 then
		local nEvent = tBigCarnival_EMoneyMono_ZhengFu["AwardItem"][nNumSure]["Stc"][1]
		local nData = tBigCarnival_EMoneyMono_ZhengFu["AwardItem"][nNumSure]["Stc"][2]
		local nOpenNum = tBigCarnival_EMoneyMono_ZhengFu["AwardItem"][nNumSure]["OpenNum"]
		
		--玩家可以打开宝箱几次
		Task_AddStatistic(nEvent,nData,nOpenNum,1,nUserId)
		Task_SetStcTimestamp(nEvent,nData,0,nUserId)
		

	end
	
	--玩家领取宝箱次数
	Task_AddStatistic(nBigCarnival_nEvent,nBigCarnival_nData,1,1,nUserId)
	Task_SetStcTimestamp(nBigCarnival_nEvent,nBigCarnival_nData,0,nUserId)
	
	
	RewardTemplate_UseItemAndMsg(tTable)
	
end

--上传圣诞糖果
function BigCarnival_EMoneyMono_Christmas_Awardgift(nNpcId)
	
	--注意：是否上交增加力气值
	
	local nUserId = Get_UserId()
	local nEvent = tBigCarnival_EMoneyMono_Christmas_Stc["Eventype"]
	local nData = tBigCarnival_EMoneyMono_Christmas_Stc["Datatype"]
	
	local nItemId = tBigCarnival_EMoneyMono_Christmas_ItemId[3311620]
	
	if Item_ChkItem(nItemId) then
		
		local nNumItemid = Get_CountItemType(nItemId,0)
		--删除物品
		if Item_DelMulItem(nItemId,nItemId,nNumItemid) then
			
			--获得原来掩码
			local nOriginalgrade = Get_UserStatisticValue(nEvent,nData,nUserId)
			--添加掩码
			Task_AddStatistic(nEvent,nData,nNumItemid,1,nUserId)
			Task_SetStcTimestamp(nEvent,nData,0,nUserId)
			
			--打log
			local sLog = tBigCarnival_EMoneyMono_Christmas_Awardlog[nNpcId]
			Sys_SaveActionFestivalLog(string.format(sLog,nNumItemid))
			
			--判断玩家是否在排行榜里面
			local nExitRank = RankingFunc_GetUserInRank(nNpcId,nUserId)
			local sInPutUserName = Get_UserName(nUserId)
			
			----排行榜统计
			--读取自身掩码记录进排行版
			
			RankingFunc_SetInfo(nNpcId,nNumItemid+nOriginalgrade,nUserId,sInPutUserName)
			
			--公告
			User_TalkChannel2005(string.format(tBigCarnival_EMoneyMono_Text[nNpcId]["Text119"],nNumItemid))
		end
		
	else
		User_TalkChannel2005(tBigCarnival_EMoneyMono_Text[nNpcId]["Text118"])
		Sys_MsgBox(tBigCarnival_EMoneyMono_Text[nNpcId]["Text118"])
	end
	
end

--玩家领奖区对白修改
function BigCarnival_EMoneyMono_Christmas_CanawardChat(nNpcId)

	--获得第一名玩家的姓名，以及提交的圣诞糖果
	
	local nUserId = Get_UserId()
	local nEvent = tBigCarnival_EMoneyMono_Christmas_Stc["Eventype"]
	local nData = tBigCarnival_EMoneyMono_Christmas_Stc["Datatype"]
	local nGlobalIdfirst = tBigCarnival_EMoneyMono_Christmas_Firstglobalid["globalId"]
	
	local nMygrade = Get_UserStatisticValue(nEvent,nData,nUserId)
	
	tNpcGossip[23554]["Text2-1"] = {}
	table.insert(tNpcGossip[23554]["Text2-1"],120)
	table.insert(tNpcGossip[23554]["Text2-1"],121)
	local nGlobalIdScore = Get_SysDynaGlobalData(nGlobalIdfirst,0)
	if nGlobalIdScore ~= 0 then
		local nGlobalIdName = Get_SysDynaGlobalDataStr(nGlobalIdfirst,0)
		tNpcGossip[nNpcId]["Text122"] = string.format(tBigCarnival_EMoneyMono_Text[nNpcId]["Text122"],nGlobalIdName,nGlobalIdScore)
		table.insert(tNpcGossip[23554]["Text2-1"],122)
	end
	
	
	tNpcGossip[nNpcId]["Text124"] = string.format(tBigCarnival_EMoneyMono_Text[nNpcId]["Text124"],nMygrade)
	table.insert(tNpcGossip[23554]["Text2-1"],123)
	table.insert(tNpcGossip[23554]["Text2-1"],124)
	table.insert(tNpcGossip[23554]["Text2-1"],125)
	table.insert(tNpcGossip[23554]["Text2-1"],126)
	table.insert(tNpcGossip[23554]["Text2-1"],127)
	
	return true
end

--折扣商店跳转线下界面
function BigCarnival_EMoneyMono_Cou_Sendweb()
	local nUserId = Get_UserId()
	local sPszParam = tBigCarnival_EMoneyMono_Cou_Stc["Webstc"]
	User_SendWebPage(sPszParam,nUserId)
end

--跳转下线界面
function BigCarnival_EMoneyMono_Christmas_Sendweb()
	local nUserId = Get_UserId()
	local sPszParam = tBigCarnival_EMoneyMono_Christmas_Web["Webstc"]
	User_SendWebPage(sPszParam,nUserId)
end

--给圣诞第一名玩家发送奖励
function BigCarnival_EMoneyMono_Christmas_FirstNeed()

	if not Sys_ChkFullTime(tActivityTime["BoundCarnival"]["ChrismasActivityTime"]) then
		return
	end

	local nGlobalId = tBigCarnival_EMoneyMono_Christmas_Firstglobalid["globalId"]
	local nUserId = Get_SysDynaGlobalData(nGlobalId,1)
	
	--判断是否有玩家上交糖果
	if nUserId == 0 then
		return
	end
	
	--判断玩家是否上交糖果大于等于60
	local nGrade = Get_SysDynaGlobalData(nGlobalId,0)
	if nGrade < tBigCarnival_EMoneyMono_Christmas_Mail["LimitNum"] then
		return
	end
	
	--判断是否已发送给第一名玩家奖励
	local nTip = Get_SysDynaGlobalData(nGlobalId,5)
	if nTip == 1 then
		return
	end
	
	--更改标识
	Sys_SetSynaGlobalData(nGlobalId,5,1)
	
	--发送邮件
	local nActionId = tBigCarnival_EMoneyMono_Christmas_Mail["nActionId"]
	local nExistDay = tBigCarnival_EMoneyMono_Christmas_Mail["nExistDay"]
	local sSender = tBigCarnival_EMoneyMono_Text["email"]["sender"]
	local sTitle = tBigCarnival_EMoneyMono_Text["email"]["title"]
	local sContent = tBigCarnival_EMoneyMono_Text["email"]["contain"]
	Sys_SendMail(nUserId, 0, 0, nActionId, 0, nExistDay, sSender, sTitle, sContent)
	
end

--清理轮盘全服限量动态码
function BigCarnival_EMoneyMono_Christmas_CleanLimit()
	--清除轮盘当天的动态码
	for i,v in pairs(tBigCarnival_EMoneyMono_Christmas_GlobalRountine) do
		-- Sys_SetSynaGlobalData(v,1,0)
		Sys_SetSynaGlobalData(v,3,0)
	end
	Sys_ResetAllSynaGlobalData(tBigCarnival_EMoneyMono_Christmas_GlobalRountine_New)
end

function BigCarnival_EMoneyMono_Fuli_CleanLimit()
	if not Sys_ChkFullTime(tActivityTime["BoundCarnival"]["OldActivityTime"]) then
		return
	end
	
	Sys_ResetAllSynaGlobalData(tBigCarnival_EMoneyMono_ZhengFu["Globalid"])
end

--12月赠品大狂欢新增赠点礼包
function BigCarnival_EMoneyMono_Christmas_Monogift(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
	
	--赠品天石上限
	if Get_UserMonoEMoney() + tBigCarnival_EMoneyMono_Reward[nItemId]["RewardEMoneyMono"]["Value"] > G_User_MaxEmoneyMono then
		Sys_MsgBox(tRewardTemplate_Text["EMoneyMono"])
		return
	end
	
	RewardTemplate_UseItemAndMsg(tBigCarnival_EMoneyMono_Reward[nItemId])
end

--给相关发型
function BigCarnival_HairStyle_Get(nItemId)

	-- 获得发型
	if not Item_ChkItem(nItemId) then
		return 
	end
	
	local nHairTypeId = tBigCarnival_EMoneyMono_Hair_Log[nItemId]["HairId"]
	if User_HairFaceCheckExist(0,nHairTypeId) then
		-- 提示玩家已有该发型
		User_TalkChannel2005(tWorldCup_Activities_Text["HaveHair"])
		return
	end
	
	if not Item_DelItem(nItemId) then
		return 
	end
	local sLog = tBigCarnival_EMoneyMono_Hair_Log[3314578]["Log"]
	Sys_SaveActionFestivalLog(string.format(sLog,nItemId))
	
	local sItemName = Get_ItemtypeName(nItemId)
	if not User_HairFaceCheckExist(0,nHairTypeId) then
		User_HairFaceAward(0,nHairTypeId,0)
		local sText = tWorldCup_Activities_Text["GetItem"]
		User_TalkChannel2005(string.format(sText,sItemName))
	end
end

--周年庆专属赠点兑换宝箱对白
function BigCarnival_AnniversityChat(nItemId)
	
	
	local nUserId = Get_UserId()
	local nBigCarnival_Eventype = tBigCarnival_EMoneyMono_Reward[nItemId]["Stc"][1]
	local nBigCarnival_Datatype = tBigCarnival_EMoneyMono_Reward[nItemId]["Stc"][2]
	
	local nBigCarnival_AddEventype = tBigCarnival_EMoneyMono_Reward[nItemId]["CaculateStc"][1]
	local nBigCarnival_AddDatatype = tBigCarnival_EMoneyMono_Reward[nItemId]["CaculateStc"][2]
	
	local nBigCarnival_Get = Get_UserStatisticValue(nBigCarnival_Eventype,nBigCarnival_Datatype)
	local nBigCarnival_AddGet = Get_UserStatisticValue(nBigCarnival_AddEventype,nBigCarnival_AddDatatype)
	local nBigCarnival_NeedEmoney = tBigCarnival_EMoneyMono_Reward[nItemId]["NeedEmoney"]
	local nBigCarnival_CanEmoneyMono = tBigCarnival_EMoneyMono_Reward[nItemId]["GetEmoneyMono"]
	
	tItem[nItemId]["Text111"] = string.format(tBigCarnival_EMoneyMono_Text[nItemId]["Text111"],nBigCarnival_Get,nBigCarnival_NeedEmoney,nBigCarnival_CanEmoneyMono)
	tItem[nItemId]["Text112"] = string.format(tBigCarnival_EMoneyMono_Text[nItemId]["Text112"],nBigCarnival_AddGet+1)
	return true
	
end

--打开相应的宝箱兑换赠点
function BigCarnival_AnniversityDui(nItemId)
	
	local nUserId = Get_UserId()
	
	if not Item_ChkMulItem(nItemId,nItemId,1) then
		return 
	end
	
	if not Sys_ChkFullTime(tActivityTime["BoundCarnival"]["OldActivityTime"]) then
		User_TalkChannel2005(tOneHundredWeapon_latticeThree_Text["NoUse"])
		Item_DelAllItemByType(nItemId)
		return
	end
	
	
	local nBigCarnival_Eventype = tBigCarnival_EMoneyMono_Reward[nItemId]["Stc"][1]
	local nBigCarnival_Datatype = tBigCarnival_EMoneyMono_Reward[nItemId]["Stc"][2]
	
	local nBigCarnival_AddEventype = tBigCarnival_EMoneyMono_Reward[nItemId]["CaculateStc"][1]
	local nBigCarnival_AddDatatype = tBigCarnival_EMoneyMono_Reward[nItemId]["CaculateStc"][2]
	
	local nBigCarnival_NeedEmoney = tBigCarnival_EMoneyMono_Reward[nItemId]["NeedEmoney"]
	local nBigCarnival_CanEmoneyMono = tBigCarnival_EMoneyMono_Reward[nItemId]["GetEmoneyMono"]
	
	
	if Task_ChkStcValue(nBigCarnival_Eventype,nBigCarnival_Datatype,">",0,nUserId) then
		
		--玩家赠点达到上限
		local nEmoney = Get_UserMonoEMoney()
		if nEmoney + nBigCarnival_CanEmoneyMono > G_User_MaxEmoneyMono then
			User_TalkChannel2005(tMayPKMonth_Text["Item"]["Text141"])
			Sys_MsgBox(tMayPKMonth_Text["Item"]["Text141"])
			return
		end
		
		--玩家要兑换的天石数不足
		--判断天石数
		if Get_UserEMoney() < nBigCarnival_NeedEmoney then
			User_TalkChannel2005(tTheSixthHouse_Text[18955]["Text531"])
			Sys_MsgBox(tTheSixthHouse_Text[18955]["Text531"])
			return
		end
		
		if User_AddEMoneyAndLog(-nBigCarnival_NeedEmoney,tBigCarnival_EMoneyMono_Reward[nItemId]["RewardEMoneyMono"]["NewEmoneyLog"]) then
		
			--兑换成功,修改掩码
			Task_AddStatistic(nBigCarnival_Eventype,nBigCarnival_Datatype,-1,1,nUserId)
			Task_SetStcTimestamp(nBigCarnival_Eventype,nBigCarnival_Datatype,0,nUserId)
			
			if Task_ChkStcValue(nBigCarnival_Eventype,nBigCarnival_Datatype,"==",0,nUserId) then
				
				--掩码清理
				Task_SetStatistic(nBigCarnival_AddEventype,nBigCarnival_AddDatatype,0,1,nUserId)
				Task_SetStcTimestamp(nBigCarnival_AddEventype,nBigCarnival_AddDatatype,0,nUserId)
				--删除物品
				Item_DelAllItemByType(nItemId)
				
			else
			
				--记录玩家这是第一次打开宝箱
				Task_AddStatistic(nBigCarnival_AddEventype,nBigCarnival_AddDatatype,1,1,nUserId)
				Task_SetStcTimestamp(nBigCarnival_AddEventype,nBigCarnival_AddDatatype,0,nUserId)
				
			end
			
			--获得相应的赠点
			RewardTemplate_UseItemAndMsg(tBigCarnival_EMoneyMono_Reward[nItemId])
		end
		
	else
		--掩码清理
		Task_SetStatistic(nBigCarnival_AddEventype,nBigCarnival_AddDatatype,0,1,nUserId)
		Task_SetStcTimestamp(nBigCarnival_AddEventype,nBigCarnival_AddDatatype,0,nUserId)
		--删除物品
		Item_DelAllItemByType(nItemId)
	end
	

end

----周年庆促销专区选项购买
function BigCarnival_AnniversityChatOption(nNpcId)
	
	local nUserId = Get_UserId()
	
	for i,v in pairs(tBigCarnival_EMoneyMono_NewStc) do
		
		local sOption = tBigCarnival_EMoneyMono_NewStc[i]["Option"]
		
		local nEvent = tBigCarnival_EMoneyMono_NewStc[i]["EventType"]
		local nData = tBigCarnival_EMoneyMono_NewStc[i]["DataType"]
		if nEvent ~= 0 and nData ~= 0 then
			local nGetNum = Get_UserStatisticValue(nEvent,nData,nUserId)
			local nMaxNum = tBigCarnival_EMoneyMono_NewStc[i]["Limit"]
			local nRemained = nMaxNum - nGetNum
			tNpcGossip[nNpcId][sOption] = string.format(tBigCarnival_EMoneyMono_Text[nNpcId][sOption],nRemained)
			
		end
	end
	return true
end

--上交勋章
function BigCarnival_AwardAllgift()

	local nUserId = Get_UserId()
	local nItemId = tBigCarnival_EMoneyMono_AnnivistyReward[3200349]["RewardItem"][2]["Id"]
	local nGetItemNum = Get_CountItemType(nItemId,0)
	
	local nEvent = tBigCarnival_EMoneyMono_Cou_Stc["Eventype"]
	local ndata = tBigCarnival_EMoneyMono_Cou_Stc["Datatype"]
	
	--阁下背包中无该物品
	if not Item_ChkMulItem(nItemId,nItemId,1) then
		User_TalkChannel2005(tBigCarnival_EMoneyMono_Text[26476]["Text126"])
		Sys_MsgBox(tBigCarnival_EMoneyMono_Text[26476]["Text126"])
		return
	end
	
	-- 上交勋章
	if Item_DelMulItem(nItemId,nItemId,nGetItemNum) then
		--添加掩码
		Task_AddStatistic(nEvent,ndata,nGetItemNum,1,nUserId)
		Task_SetStcTimestamp(nEvent,ndata,0,nUserId)
		
		--打log
		local sLog = tBigCarnival_EMoneyMono_Cou_Stc["Log"]
		Sys_SaveActionFestivalLog(string.format(sLog,nGetItemNum))
		
		--公告
		User_TalkChannel2005(string.format(tBigCarnival_EMoneyMono_Text["UniversityTip"][5],nGetItemNum))
		Sys_MsgBox(string.format(tBigCarnival_EMoneyMono_Text["UniversityTip"][5],nGetItemNum))
	end
	
end

---周年庆促销，具体购买那件物品
function BigCarnival_AnniversitySureBuy(nNpcId,nItemId)
	
	local nUserId = Get_UserId()
	local nEvent = tBigCarnival_EMoneyMono_NewStc[nItemId]["EventType"]
	local nData = tBigCarnival_EMoneyMono_NewStc[nItemId]["DataType"]
	local nMaxNum = tBigCarnival_EMoneyMono_NewStc[nItemId]["Limit"]
	local nItemName = tBigCarnival_EMoneyMono_Text[nNpcId]["ItemName"][nItemId]
	local nNeedEMoney = tBigCarnival_EMoneyMono_NewStc[nItemId]["Emoney"]
	
	--到达购买上限
	if nEvent ~= 0 and nData ~= 0 then
		if Task_ChkStcValue(nEvent,nData,"==",nMaxNum,nUserId) then
			User_TalkChannel2005(string.format(tBigCarnival_EMoneyMono_Text[19350]["Text241"],nItemName))
			Sys_MsgBox(string.format(tBigCarnival_EMoneyMono_Text[19350]["Text241"],nItemName))
			return
		end
	end
	
	--玩家天石不足
	if Get_UserEMoney() < nNeedEMoney then
		User_TalkChannel2005(tRewardTemplate_Text["CostEMoney"])
		Sys_MsgBox(tRewardTemplate_Text["CostEMoney"])
		return
	end
	
	--玩家背包空间不足
	local tTable = tBigCarnival_EMoneyMono_AnnivistyReward[nItemId]
	local nBagSpace = RewardTemplate_GetRewardSpace(tTable)
	
	if not User_CheckLeftSpace(nBagSpace) then
		User_TalkChannel2005(string.format(tRewardTemplate_Text["NoSpace"],nBagSpace))
		Sys_MsgBox(string.format(tRewardTemplate_Text["NoSpace"],nBagSpace))
		return
	end
	
	
	
	--二次确认购买物品
	tNpcGossip[nNpcId]["Text125"] = string.format(tBigCarnival_EMoneyMono_Text[nNpcId]["Text125"],nItemName,nNeedEMoney)
	tNpcGossip[nNpcId]["tOption5-1"] = {23,24}
	
	tNpcGossip[nNpcId]["OptionFunc23"] = "BigCarnival_AnniversitySureBuyAgain</N>"..nNpcId.."</N>"..nItemId
	
	LinkNpcGossipFunc_New(nNpcId,"5-1")
	return
end

--二次确认购买物品
function BigCarnival_AnniversitySureBuyAgain(nNpcId,nItemId)
	
	local nUserId = Get_UserId()
	local nEvent = tBigCarnival_EMoneyMono_NewStc[nItemId]["EventType"]
	local nData = tBigCarnival_EMoneyMono_NewStc[nItemId]["DataType"]
	local nMaxNum = tBigCarnival_EMoneyMono_NewStc[nItemId]["Limit"]
	local nItemName = tBigCarnival_EMoneyMono_Text[nNpcId]["ItemName"][nItemId]
	local nNeedEMoney = tBigCarnival_EMoneyMono_NewStc[nItemId]["Emoney"]
	
	--到达购买上限
	if nEvent ~= 0 and nData ~= 0 then
		if Task_ChkStcValue(nEvent,nData,"==",nMaxNum,nUserId) then
			User_TalkChannel2005(string.format(tBigCarnival_EMoneyMono_Text[19350]["Text241"],nItemName))
			Sys_MsgBox(string.format(tBigCarnival_EMoneyMono_Text[19350]["Text241"],nItemName))
			return
		end
	end
	
	--玩家天石不足
	if Get_UserEMoney() < nNeedEMoney then
		User_TalkChannel2005(tRewardTemplate_Text["CostEMoney"])
		Sys_MsgBox(tRewardTemplate_Text["CostEMoney"])
		return
	end
	
	--玩家背包空间不足
	local tTable = tBigCarnival_EMoneyMono_AnnivistyReward[nItemId]
	local nBagSpace = RewardTemplate_GetRewardSpace(tTable)
	
	if not User_CheckLeftSpace(nBagSpace) then
		User_TalkChannel2005(string.format(tRewardTemplate_Text["NoSpace"],nBagSpace))
		Sys_MsgBox(string.format(tRewardTemplate_Text["NoSpace"],nBagSpace))
		return
	end
	
	--扣除天石，给玩家物品
	if User_AddEMoney(-nNeedEMoney) then
		--修改相关掩码
		if nEvent ~= 0 and nData ~= 0 then
			Task_AddStatistic(nEvent,nData,1,1,nUserId)
			Task_SetStcTimestamp(nEvent,nData,0,nUserId)
		end
		
		Sys_SaveEmoneyBuy(string.format(tBigCarnival_EMoneyMono_NewStc[6031]["EmoneyLog"],nNeedEMoney,nNeedEMoney))
		RewardTemplate_UseItemAndMsg(tTable)
	end
	
end
-------------------------------------------------------------------------------------


--------------------------------------NPC模块-------------------------------------------
-- 天石换购大使
tNpcFace[4231] = 1
tNpcGossip[19349] = tNpcGossip[19349] or DefaultNpc:new{}
tNpcGossip[19349]["OptionHidden"] = 1
-- tNpcGossip[19349]["DialogueText"] = tBigCarnival_EMoneyMono_Text[19349] 
-- 活动前
-- tNpcGossip[19349]["Text1-1"] = {111,1111,112,113}
tNpcGossip[19349]["Text1-1"] = {1111}
tNpcGossip[19349]["Text111"] = tBigCarnival_EMoneyMono_Text[19349]["Text111"]
tNpcGossip[19349]["Text1111"] = tBigCarnival_EMoneyMono_Text[19349]["Text1111"]
tNpcGossip[19349]["Text112"] = tBigCarnival_EMoneyMono_Text[19349]["Text112"]
tNpcGossip[19349]["Text113"] = tBigCarnival_EMoneyMono_Text[19349]["Text113"]
tNpcGossip[19349]["tOption1-1"] = {1}
tNpcGossip[19349]["ChkFunc1-1"] = function ()
	-- 判断新服
	--[[
	if BigCarnival_EMoneyMono_NewServerChk() then
		tNpcGossip[19349]["Text111"] = tBigCarnival_EMoneyMono_Text[19349]["Text114"]
		tNpcGossip[19349]["Text113"] = tBigCarnival_EMoneyMono_Text[19349]["Text115"]
	else
		tNpcGossip[19349]["Text112"] = tBigCarnival_EMoneyMono_Text[19349]["Text1121"]
	end
	]]--
	
	return BigCarnival_EMoneyMono_BeforeActivityTimeChk()
end
tNpcGossip[19349]["Option1"] = tBigCarnival_EMoneyMono_Text[19349]["Option1"]

-- 活动后
tNpcGossip[19349]["Text1-2"] = {121}
tNpcGossip[19349]["Text121"] = tBigCarnival_EMoneyMono_Text[19349]["Text121"]
tNpcGossip[19349]["tOption1-2"] = {2}
tNpcGossip[19349]["ChkFunc1-2"] = function ()
	return not BigCarnival_EMoneyMono_ActivityTimeChk()
end
tNpcGossip[19349]["Option2"] = tBigCarnival_EMoneyMono_Text[19349]["Option2"]

-- 活动中
-- tNpcGossip[19349]["Text1-3"] = {131,1311,132,133,134}
tNpcGossip[19349]["Text1-3"] = {131,133,134}
tNpcGossip[19349]["Text131"] = tBigCarnival_EMoneyMono_Text[19349]["Text131"]
tNpcGossip[19349]["Text1311"] = tBigCarnival_EMoneyMono_Text[19349]["Text1311"]
tNpcGossip[19349]["Text132"] = tBigCarnival_EMoneyMono_Text[19349]["Text132"]
tNpcGossip[19349]["Text133"] = tBigCarnival_EMoneyMono_Text[19349]["Text133"]
tNpcGossip[19349]["Text134"] = tBigCarnival_EMoneyMono_Text[19349]["Text134"]
tNpcGossip[19349]["tOption1-3"] = {3,4,5}
tNpcGossip[19349]["ChkFunc1-3"] = function ()
	-- 判断新服
	local nLimit
	local nEvent = tBigCarnival_EMoneyMono_Stc[1]["EventType"]
	local nType = tBigCarnival_EMoneyMono_Stc[1]["DataType"]
	local nGetLimit = Get_UserStatisticValue(nEvent,nType)
	
	--[[
	if BigCarnival_EMoneyMono_NewServerChk() then
		tNpcGossip[19349]["Text131"] = tBigCarnival_EMoneyMono_Text[19349]["Text135"]
		tNpcGossip[19349]["Text133"] = tBigCarnival_EMoneyMono_Text[19349]["Text136"]
		--tNpcGossip[19349]["tOption1-3"] = {10,11,12,13,5}
		nLimit = tBigCarnival_EMoneyMono_Stc[1]["Limit"]
	else
		tNpcGossip[19349]["Text132"] = tBigCarnival_EMoneyMono_Text[19349]["Text132Old"]
		nLimit = tBigCarnival_EMoneyMono_Stc[1]["OldLimit"]
	end
	]]--
	nLimit = tBigCarnival_EMoneyMono_Stc[1]["Limit"]
	local sText = tBigCarnival_EMoneyMono_Text[19349]["Text134"]
	local nLessData = nLimit - nGetLimit
	tNpcGossip[19349]["Text134"] = string.format(sText,nLessData)
	
	if nGetLimit >=  nLimit then
		tNpcGossip[19349]["tOption1-3"] = {5}
	else
		tNpcGossip[19349]["tOption1-3"] = {3,4,5}
	end
	--12月赠品大狂欢
	--146 48
	if nGetLimit >= tBigCarnival_EMoneyMono_Christmas_Board[1][1] and nGetLimit < tBigCarnival_EMoneyMono_Christmas_Board[1][2] then
		tNpcGossip[19349]["Option3"] = tBigCarnival_EMoneyMono_Text[19349]["Option31"]
		tNpcGossip[19349]["Option4"] = tBigCarnival_EMoneyMono_Text[19349]["Option41"]
		elseif nGetLimit >= tBigCarnival_EMoneyMono_Christmas_Board[2][1] and nGetLimit < tBigCarnival_EMoneyMono_Christmas_Board[2][2] then
			tNpcGossip[19349]["Option3"] = tBigCarnival_EMoneyMono_Text[19349]["Option32"]
			tNpcGossip[19349]["Option4"] = tBigCarnival_EMoneyMono_Text[19349]["Option42"]
			elseif nGetLimit >= tBigCarnival_EMoneyMono_Christmas_Board[3][1] and nGetLimit < tBigCarnival_EMoneyMono_Christmas_Board[3][2] then
				tNpcGossip[19349]["Option3"] = tBigCarnival_EMoneyMono_Text[19349]["Option33"]
				tNpcGossip[19349]["Option4"] = tBigCarnival_EMoneyMono_Text[19349]["Option43"]
				else
					tNpcGossip[19349]["Option3"] = tBigCarnival_EMoneyMono_Text[19349]["Option34"]
					tNpcGossip[19349]["Option4"] = tBigCarnival_EMoneyMono_Text[19349]["Option44"]
				
	end

	-- tNpcGossip[19349]["Option3"] = tBigCarnival_EMoneyMono_Text[19349]["Option3"]
	-- tNpcGossip[19349]["Option4"] = tBigCarnival_EMoneyMono_Text[19349]["Option4"]

	return true
end
-- 除新服换购1500天石（赠）
tNpcGossip[19349]["Option3"] = tBigCarnival_EMoneyMono_Text[19349]["Option3"]
-- tNpcGossip[19349]["OptionFunc3"] = "BigCarnival_EMoneyMono_ExchangeMono</N>19349</N>3307135"
-- tNpcGossip[19349]["OptionFunc3"] = "BigCarnival_EMoneyMono_ExchangeMono</N>19349</N>3311606"
tNpcGossip[19349]["OptionFunc3"] = "BigCarnival_EMoneyMono_ExchangeMono</N>19349</N>3311604"
-- 除新服换购15000天石（赠）
tNpcGossip[19349]["Option4"] = tBigCarnival_EMoneyMono_Text[19349]["Option4"]
-- tNpcGossip[19349]["OptionFunc4"] = "BigCarnival_EMoneyMono_ExchangeMono</N>19349</N>3307136"
-- tNpcGossip[19349]["OptionFunc4"] = "BigCarnival_EMoneyMono_ExchangeMono</N>19349</N>3311607"
tNpcGossip[19349]["OptionFunc4"] = "BigCarnival_EMoneyMono_ExchangeMono</N>19349</N>3311605"

tNpcGossip[19349]["Option5"] = tBigCarnival_EMoneyMono_Text[19349]["Option5"]
-- 新服换购1500天石（赠）
tNpcGossip[19349]["Option10"] = tBigCarnival_EMoneyMono_Text[19349]["Option10"]
tNpcGossip[19349]["OptionFunc10"] = "BigCarnival_EMoneyMono_ExchangeMono</N>19349</N>3200569"
-- 新服换购15000天石（赠）
tNpcGossip[19349]["Option11"] = tBigCarnival_EMoneyMono_Text[19349]["Option11"]
tNpcGossip[19349]["OptionFunc11"] = "BigCarnival_EMoneyMono_ExchangeMono</N>19349</N>3200570"
-- 180427[英文征服][活动脚本]5月新服活动制作	modified by wzh
-- 新服金币换购1500天石（赠）
tNpcGossip[19349]["Option12"] = tBigCarnival_EMoneyMono_Text[19349]["Option12"]
tNpcGossip[19349]["OptionFunc12"] = "BigCarnival_EMoneyMono_ExchangeMonoForSilver</N>19349</N>3200569"
-- 新服金币换购15000天石（赠）
tNpcGossip[19349]["Option13"] = tBigCarnival_EMoneyMono_Text[19349]["Option13"]
tNpcGossip[19349]["OptionFunc13"] = "BigCarnival_EMoneyMono_ExchangeMonoForSilver</N>19349</N>3200570"

-- 1、正常换购天石。
tNpcGossip[19349]["Option131"] = tBigCarnival_EMoneyMono_Text[19349]["Option131"]
tNpcGossip[19349]["OptionPoint131"] = "2-4"
-- 2、优惠换购天石。
tNpcGossip[19349]["Option132"] = tBigCarnival_EMoneyMono_Text[19349]["Option132"]
tNpcGossip[19349]["OptionFunc132"] = "BigCarnival_EMoneyMono_OpenExchange</N>19349"
-- 3、领取天石换购优惠券
tNpcGossip[19349]["Option133"] = tBigCarnival_EMoneyMono_Text[19349]["Option133"]
tNpcGossip[19349]["OptionFunc133"] = "BigCarnival_EMoneyMono_OpenWeb</N>19349"

-- 接1、正常换购天石。
tNpcGossip[19349]["Text2-4"] = {241,242}
tNpcGossip[19349]["Text241"] = tBigCarnival_EMoneyMono_Text[19349]["Text241"]
tNpcGossip[19349]["Text242"] = tBigCarnival_EMoneyMono_Text[19349]["Text253"]
tNpcGossip[19349]["tOption2-4"] = {3,4,5}
tNpcGossip[19349]["ChkFunc2-4"] = function ()
	-- 剩余换购额度：X天石
	local sText = tBigCarnival_EMoneyMono_Text[19349]["Text253"]
	local nEvent = tBigCarnival_EMoneyMono_Stc[1]["EventType"]
	local nType = tBigCarnival_EMoneyMono_Stc[1]["DataType"]
	local nLessData = tBigCarnival_EMoneyMono_Stc[1]["Limit"] - Get_UserStatisticValue(nEvent,nType)
	tNpcGossip[19349]["Text242"] = string.format(sText,nLessData)
	return true
end
-- 接2、优惠换购天石。
tNpcGossip[19349]["Text2-5"] = {251,252,253}
tNpcGossip[19349]["Text251"] = tBigCarnival_EMoneyMono_Text[19349]["Text251"]
tNpcGossip[19349]["Text252"] = tBigCarnival_EMoneyMono_Text[19349]["Text252"]
tNpcGossip[19349]["Text253"] = tBigCarnival_EMoneyMono_Text[19349]["Text253"]
tNpcGossip[19349]["tOption2-5"] = {251,252,253}
tNpcGossip[19349]["ChkFunc2-5"] = function ()
	-- 天石换购优惠卡
	local sItemText = tBigCarnival_EMoneyMono_Text[19349]["Text252"]
	local nItemId = 0
	for i,v in pairs(tBigCarnival_EMoneyMono_ItemEmoney) do
		if Item_ChkItem(i) then
			nItemId = i
			break
		end
	end
	if nItemId == 0 then
		return false
	end
	local sItemName = Get_ItemtypeName(nItemId)
	tNpcGossip[19349]["Text252"] = string.format(sItemText,sItemName)
	
	-- 剩余换购额度：X天石
	local sText = tBigCarnival_EMoneyMono_Text[19349]["Text253"]
	local nEvent = tBigCarnival_EMoneyMono_Stc[nItemId]["EventType"]
	local nType = tBigCarnival_EMoneyMono_Stc[nItemId]["DataType"]
	local nLessData = tBigCarnival_EMoneyMono_Stc[nItemId]["Limit"] - Get_UserStatisticValue(nEvent,nType)
	tNpcGossip[19349]["Text253"] = string.format(sText,nLessData)
	return true
end
-- 1、换购X天石（赠）。（500天石）
tNpcGossip[19349]["Option251"] = tBigCarnival_EMoneyMono_Text[19349]["Option251"]
tNpcGossip[19349]["OptionFunc251"] = "BigCarnival_EMoneyMono_NewExchangeMono</N>19349</N>1"
tNpcGossip[19349]["OptionChkFunc251"] = function ()
	-- 换购X天石（赠）
	local sOption = tBigCarnival_EMoneyMono_Text[19349]["Option251"]
	local nItemId = 0
	for i,v in pairs(tBigCarnival_EMoneyMono_ItemEmoney) do
		if Item_ChkItem(i) then
			nItemId = i
			break
		end
	end
	local nBasic = tBigCarnival_EMoneyMono_ItemEmoney[nItemId]["Basic"]
	local nNum = tBigCarnival_EMoneyMono_ItemEmoney[nItemId][1]
	tNpcGossip[19349]["Option251"] = string.format(sOption,nBasic*nNum)
	return true
end
-- 2、换购X天石（赠）。（5000天石）
tNpcGossip[19349]["Option252"] = tBigCarnival_EMoneyMono_Text[19349]["Option252"]
tNpcGossip[19349]["OptionFunc252"] = "BigCarnival_EMoneyMono_NewExchangeMono</N>19349</N>2"
tNpcGossip[19349]["OptionChkFunc252"] = function ()
	-- 换购X天石（赠）
	local sOption = tBigCarnival_EMoneyMono_Text[19349]["Option252"]
	local nItemId = 0
	for i,v in pairs(tBigCarnival_EMoneyMono_ItemEmoney) do
		if Item_ChkItem(i) then
			nItemId = i
			break
		end
	end
	local nBasic = tBigCarnival_EMoneyMono_ItemEmoney[nItemId]["Basic"]
	local nNum = tBigCarnival_EMoneyMono_ItemEmoney[nItemId][2]
	tNpcGossip[19349]["Option252"] = string.format(sOption,nBasic*nNum)
	return true
end
-- 3、告辞。
tNpcGossip[19349]["Option253"] = tBigCarnival_EMoneyMono_Text[19349]["Option253"]

-- 阁下无优惠券
tNpcGossip[19349]["Text2-6"] = {261}
tNpcGossip[19349]["Text261"] = tBigCarnival_EMoneyMono_Text[19349]["Text261"]
tNpcGossip[19349]["tOption2-6"] = {133}
-- 赠点太多
tNpcGossip[19349]["Text2-7"] = {271}
tNpcGossip[19349]["Text271"] = tBigCarnival_EMoneyMono_Text[19349]["Text271"]
tNpcGossip[19349]["tOption2-7"] = {253}

-- 二次确认
tNpcGossip[19349]["Text2-1"] = {211}
tNpcGossip[19349]["Text211"] = tBigCarnival_EMoneyMono_Text[19349]["Text211"]
tNpcGossip[19349]["tOption2-1"] = {6,7}
tNpcGossip[19349]["Option6"] = tBigCarnival_EMoneyMono_Text[19349]["Option6"]
tNpcGossip[19349]["Option7"] = tBigCarnival_EMoneyMono_Text[19349]["Option7"]
tNpcGossip[19349]["OptionFunc6"] = ""

-- 天石不足
tNpcGossip[19349]["Text2-2"] = {221}
tNpcGossip[19349]["Text221"] = tBigCarnival_EMoneyMono_Text[19349]["Text221"]
tNpcGossip[19349]["tOption2-2"] = {8}
tNpcGossip[19349]["Option8"] = tBigCarnival_EMoneyMono_Text[19349]["Option8"]
tNpcGossip[19349]["OptionPoint8"] = "1-3"

-- 金币不足
tNpcGossip[19349]["Text2-8"] = {281}
tNpcGossip[19349]["Text281"] = tBigCarnival_EMoneyMono_Text[19349]["Text281"]
tNpcGossip[19349]["tOption2-8"] = {14}
tNpcGossip[19349]["Option14"] = tBigCarnival_EMoneyMono_Text[19349]["Option14"]
tNpcGossip[19349]["OptionPoint14"] = "1-3"

-- 换购额度不足
tNpcGossip[19349]["Text2-3"] = {231}
tNpcGossip[19349]["Text231"] = tBigCarnival_EMoneyMono_Text[19349]["Text231"]
tNpcGossip[19349]["tOption2-3"] = {9}
tNpcGossip[19349]["Option9"] = tBigCarnival_EMoneyMono_Text[19349]["Option9"]
tNpcGossip[19349]["OptionPoint9"] = "1-3"

--到每一档的临界值没消费完不进入下一档
tNpcGossip[19349]["Text3-1"] = {311}
tNpcGossip[19349]["Text311"] = tBigCarnival_EMoneyMono_Text[19349]["Text311"]
tNpcGossip[19349]["tOption3-1"] = {91}
tNpcGossip[19349]["Option91"] = tBigCarnival_EMoneyMono_Text[19349]["Option91"]
tNpcGossip[19349]["OptionPoint91"] = 1

-- 赠品珍宝促销员
tNpcFace[3673] = 3
tNpcGossip[19350] = tNpcGossip[19350] or DefaultNpc:new{}
tNpcGossip[19350]["OptionHidden"] = 1
-- tNpcGossip[19350]["DialogueText"] = tBigCarnival_EMoneyMono_Text[19350]
-- 活动前
tNpcGossip[19350]["Text1-1"] = {111,112,113}
tNpcGossip[19350]["Text111"] = tBigCarnival_EMoneyMono_Text[19350]["Text111"]
tNpcGossip[19350]["Text112"] = tBigCarnival_EMoneyMono_Text[19350]["Text112"]
tNpcGossip[19350]["Text113"] = tBigCarnival_EMoneyMono_Text[19350]["Text113"]
tNpcGossip[19350]["tOption1-1"] = {1}
tNpcGossip[19350]["ChkFunc1-1"] = function ()
	-- 判断新服
	--[[
	if BigCarnival_EMoneyMono_NewServerChk() then
		tNpcGossip[19350]["Text113"] = tBigCarnival_EMoneyMono_Text[19350]["Text114"]
	end
	]]--
	-- return BigCarnival_EMoneyMono_BeforeActivityTimeChk()
	return Sys_ChkFullTime(tActivityTime["BoundCarnival"]["BeforeActivityTime"])
end
tNpcGossip[19350]["Option1"] = tBigCarnival_EMoneyMono_Text[19350]["Option1"]

-- 活动后
tNpcGossip[19350]["Text1-2"] = {121}
tNpcGossip[19350]["Text121"] = tBigCarnival_EMoneyMono_Text[19350]["Text121"]
tNpcGossip[19350]["tOption1-2"] = {2}
tNpcGossip[19350]["ChkFunc1-2"] = function ()
	-- return not BigCarnival_EMoneyMono_ActivityTimeChk()
	return not Sys_ChkFullTime(tActivityTime["BoundCarnival"]["ActivityTime"])
end
tNpcGossip[19350]["Option2"] = tBigCarnival_EMoneyMono_Text[19350]["Option2"]

-- 活动中
--tNpcGossip[19350]["Text1-3"] = {131,132,133,134}
tNpcGossip[19350]["Text1-3"] = {131,132,133}
tNpcGossip[19350]["Text131"] = tBigCarnival_EMoneyMono_Text[19350]["Text131"]
tNpcGossip[19350]["Text132"] = tBigCarnival_EMoneyMono_Text[19350]["Text132"]
tNpcGossip[19350]["Text133"] = tBigCarnival_EMoneyMono_Text[19350]["Text133"]
--tNpcGossip[19350]["Text134"] = tBigCarnival_EMoneyMono_Text[19350]["Text134"]
-- tNpcGossip[19350]["tOption1-3"] = {33,34,35,36,37,38,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,3,4,5,6,7,14,40,41,42,43,44,45,46,47,48,49,50,51,15,8}
tNpcGossip[19350]["tOption1-3"]={59,58,52,53,54,55,44,45,46,47,48,49,50,51,39,40,41,42,33,43,34,35,36,37,38,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,3,4,5,6,7,14}
tNpcGossip[19350]["ChkFunc1-3"] = function ()
	-- local sText = tBigCarnival_EMoneyMono_Text[19350]["Text134"]
	-- local nEvent = tBigCarnival_EMoneyMono_Stc[2]["EventType"]
	-- local nType = tBigCarnival_EMoneyMono_Stc[2]["DataType"]
	-- local nLessData = tBigCarnival_EMoneyMono_Stc[2]["Limit"] - Get_UserStatisticValue(nEvent,nType)
	-- tNpcGossip[19350]["Text134"] = string.format(sText,nLessData)
	
	-- 判断新服
	if BigCarnival_EMoneyMono_NewServerChk() then
		tNpcGossip[19350]["Text133"] = tBigCarnival_EMoneyMono_Text[19350]["Text135"]
		-- tNpcGossip[19350]["OptionFunc15"] = "NpcPosition_PathFind</N>21872"
		tNpcGossip[19350]["OptionFunc15"] = "NpcPosition_PathFind</N>19349"
	end
	
	local nItemEvent = 0
	local nItemType = 0
	local nItemLimit = 0
	local nLessItemData = 0
	
	for k,v in pairs(tBigCarnival_EMoneyMono_Option) do
		nItemEvent = tBigCarnival_EMoneyMono_Stc[k]["EventType"]
		nItemType = tBigCarnival_EMoneyMono_Stc[k]["DataType"]
		nItemLimit = tBigCarnival_EMoneyMono_Stc[k]["Limit"]
		nLessItemData = nItemLimit - Get_UserStatisticValue(nItemEvent,nItemType)
		
		tNpcGossip[19350][v] = string.format(tBigCarnival_EMoneyMono_Text[19350][v], nLessItemData)
	end
	
	return true
end
-- 购买龙珠（赠）。
tNpcGossip[19350]["Option3"] = tBigCarnival_EMoneyMono_Text[19350]["Option3"]
tNpcGossip[19350]["OptionFunc3"] = "BigCarnival_EMoneyMono_BuyItem</N>19350</N>1088000"
-- 购买+3赤炼石（赠）。
tNpcGossip[19350]["Option4"] = tBigCarnival_EMoneyMono_Text[19350]["Option4"]
tNpcGossip[19350]["OptionFunc4"] = "BigCarnival_EMoneyMono_BuyItem</N>19350</N>730003"
-- 购买固化石（赠）。
tNpcGossip[19350]["Option5"] = tBigCarnival_EMoneyMono_Text[19350]["Option5"]
tNpcGossip[19350]["OptionFunc5"] = "BigCarnival_EMoneyMono_BuyItem</N>19350</N>723694"
-- 购买1000点气力值礼包。
tNpcGossip[19350]["Option6"] = tBigCarnival_EMoneyMono_Text[19350]["Option6"]
tNpcGossip[19350]["OptionFunc6"] = "BigCarnival_EMoneyMono_BuyItem</N>19350</N>3200571"
-- 购买金钢坚钻（赠）。
tNpcGossip[19350]["Option7"] = tBigCarnival_EMoneyMono_Text[19350]["Option7"]
-- tNpcGossip[19350]["OptionChkFunc7"] = function ()
	-- local nGlobalId = tBigCarnival_EMoneyMono_Count["GlobalId"]
	-- local nPos = Get_SysDynaGlobalData0(nGlobalId)
	-- if nPos >= 1 then
		-- return false
	-- end
	
	-- return true
-- end
tNpcGossip[19350]["OptionFunc7"] = "BigCarnival_EMoneyMono_BuyItem</N>19350</N>1200005"
-- 购买七星宝钻（赠）。
tNpcGossip[19350]["Option14"] = tBigCarnival_EMoneyMono_Text[19350]["Option14"]
tNpcGossip[19350]["OptionFunc14"] = "BigCarnival_EMoneyMono_BuyItem</N>19350</N>1200006"
-- 寻路至天石换购大使
tNpcGossip[19350]["Option15"] = tBigCarnival_EMoneyMono_Text[19350]["Option15"]
tNpcGossip[19350]["OptionFunc15"] = "NpcPosition_PathFind</N>19349"
tNpcGossip[19350]["Option8"] = tBigCarnival_EMoneyMono_Text[19350]["Option8"]

-- ###180312[英文征服][活动脚本]4月赠品大狂欢（4.19-5.5）	modified by pyf
tNpcGossip[19350]["Option16"] = tBigCarnival_EMoneyMono_Text[19350]["Option16"]
tNpcGossip[19350]["OptionFunc16"] = "BigCarnival_EMoneyMono_BuyItem</N>19350</N>3306562"
tNpcGossip[19350]["Option17"] = tBigCarnival_EMoneyMono_Text[19350]["Option17"]
tNpcGossip[19350]["OptionFunc17"] = "BigCarnival_EMoneyMono_BuyItem</N>19350</N>3306563"
tNpcGossip[19350]["Option18"] = tBigCarnival_EMoneyMono_Text[19350]["Option18"]
tNpcGossip[19350]["OptionFunc18"] = "BigCarnival_EMoneyMono_BuyItem</N>19350</N>4050001"
tNpcGossip[19350]["Option19"] = tBigCarnival_EMoneyMono_Text[19350]["Option19"]
tNpcGossip[19350]["OptionFunc19"] = "BigCarnival_EMoneyMono_BuyItem</N>19350</N>3009001"
tNpcGossip[19350]["Option20"] = tBigCarnival_EMoneyMono_Text[19350]["Option20"]
tNpcGossip[19350]["OptionFunc20"] = "BigCarnival_EMoneyMono_BuyItem</N>19350</N>3306370"
tNpcGossip[19350]["Option21"] = tBigCarnival_EMoneyMono_Text[19350]["Option21"]
tNpcGossip[19350]["OptionFunc21"] = "BigCarnival_EMoneyMono_BuyItem</N>19350</N>4030201"
tNpcGossip[19350]["Option22"] = tBigCarnival_EMoneyMono_Text[19350]["Option22"]
tNpcGossip[19350]["OptionFunc22"] = "BigCarnival_EMoneyMono_BuyItem</N>19350</N>4030301"
tNpcGossip[19350]["Option23"] = tBigCarnival_EMoneyMono_Text[19350]["Option23"]
tNpcGossip[19350]["OptionFunc23"] = "BigCarnival_EMoneyMono_BuyItem</N>19350</N>4030501"
tNpcGossip[19350]["Option24"] = tBigCarnival_EMoneyMono_Text[19350]["Option24"]
tNpcGossip[19350]["OptionFunc24"] = "BigCarnival_EMoneyMono_BuyItem</N>19350</N>4030801"
tNpcGossip[19350]["Option25"] = tBigCarnival_EMoneyMono_Text[19350]["Option25"]
tNpcGossip[19350]["OptionFunc25"] = "BigCarnival_EMoneyMono_BuyItem</N>19350</N>4031201"
tNpcGossip[19350]["Option26"] = tBigCarnival_EMoneyMono_Text[19350]["Option26"]
tNpcGossip[19350]["OptionFunc26"] = "BigCarnival_EMoneyMono_BuyItem</N>19350</N>4030901"
tNpcGossip[19350]["Option27"] = tBigCarnival_EMoneyMono_Text[19350]["Option27"]
tNpcGossip[19350]["OptionFunc27"] = "BigCarnival_EMoneyMono_BuyItem</N>19350</N>4031001"
tNpcGossip[19350]["Option28"] = tBigCarnival_EMoneyMono_Text[19350]["Option28"]
tNpcGossip[19350]["OptionFunc28"] = "BigCarnival_EMoneyMono_BuyItem</N>19350</N>4030101"
tNpcGossip[19350]["Option29"] = tBigCarnival_EMoneyMono_Text[19350]["Option29"]
tNpcGossip[19350]["OptionFunc29"] = "BigCarnival_EMoneyMono_BuyItem</N>19350</N>4030401"
tNpcGossip[19350]["Option30"] = tBigCarnival_EMoneyMono_Text[19350]["Option30"]
tNpcGossip[19350]["OptionFunc30"] = "BigCarnival_EMoneyMono_BuyItem</N>19350</N>4030601"
tNpcGossip[19350]["Option31"] = tBigCarnival_EMoneyMono_Text[19350]["Option31"]
tNpcGossip[19350]["OptionFunc31"] = "BigCarnival_EMoneyMono_BuyItem</N>19350</N>4030701"
tNpcGossip[19350]["Option32"] = tBigCarnival_EMoneyMono_Text[19350]["Option32"]
tNpcGossip[19350]["OptionFunc32"] = "BigCarnival_EMoneyMono_BuyItem</N>19350</N>4031101"

-- 180427[英文征服][活动脚本]5月新服活动制作	modified by wzh
tNpcGossip[19350]["Option33"] = tBigCarnival_EMoneyMono_Text[19350]["Option33"]
tNpcGossip[19350]["OptionFunc33"] = "BigCarnival_EMoneyMono_BuyItem</N>19350</N>3308868"
tNpcGossip[19350]["Option34"] = tBigCarnival_EMoneyMono_Text[19350]["Option34"]
-- tNpcGossip[19350]["OptionFunc34"] = "BigCarnival_EMoneyMono_BuyItem</N>19350</N>730006"
tNpcGossip[19350]["OptionFunc34"] = "BigCarnival_EMoneyMono_BuyItem</N>19350</N>3316204"
tNpcGossip[19350]["Option35"] = tBigCarnival_EMoneyMono_Text[19350]["Option35"]
tNpcGossip[19350]["OptionFunc35"] = "BigCarnival_EMoneyMono_BuyItem</N>19350</N>700102"
tNpcGossip[19350]["Option36"] = tBigCarnival_EMoneyMono_Text[19350]["Option36"]
tNpcGossip[19350]["OptionFunc36"] = "BigCarnival_EMoneyMono_BuyItem</N>19350</N>700122"
tNpcGossip[19350]["Option37"] = tBigCarnival_EMoneyMono_Text[19350]["Option37"]
tNpcGossip[19350]["OptionFunc37"] = "BigCarnival_EMoneyMono_BuyItem</N>19350</N>700103"
tNpcGossip[19350]["Option38"] = tBigCarnival_EMoneyMono_Text[19350]["Option38"]
tNpcGossip[19350]["OptionFunc38"] = "BigCarnival_EMoneyMono_BuyItem</N>19350</N>700123"
tNpcGossip[19350]["Option39"] = tBigCarnival_EMoneyMono_Text[19350]["Option39"]
tNpcGossip[19350]["OptionFunc39"] = "BigCarnival_EMoneyMono_BuyItem</N>19350</N>723701"

tNpcGossip[19350]["Option40"] = tBigCarnival_EMoneyMono_Text[19350]["Option40"]
tNpcGossip[19350]["OptionFunc40"] = "BigCarnival_EMoneyMono_BuyItem</N>19350</N>2100025"
tNpcGossip[19350]["Option41"] = tBigCarnival_EMoneyMono_Text[19350]["Option41"]
tNpcGossip[19350]["OptionFunc41"] = "BigCarnival_EMoneyMono_BuyItem</N>19350</N>722736"
tNpcGossip[19350]["Option42"] = tBigCarnival_EMoneyMono_Text[19350]["Option42"]
tNpcGossip[19350]["OptionFunc42"] = "BigCarnival_EMoneyMono_BuyItem</N>19350</N>722732"
tNpcGossip[19350]["Option43"] = tBigCarnival_EMoneyMono_Text[19350]["Option43"]
tNpcGossip[19350]["OptionFunc43"] = "BigCarnival_EMoneyMono_BuyItem</N>19350</N>4031301"

--雷神新增物品
tNpcGossip[19350]["Option44"] = tBigCarnival_EMoneyMono_Text[19350]["Option44"]
tNpcGossip[19350]["OptionFunc44"] = "BigCarnival_EMoneyMono_BuyItem</N>19350</N>3307467"
tNpcGossip[19350]["Option45"] = tBigCarnival_EMoneyMono_Text[19350]["Option45"]
tNpcGossip[19350]["OptionFunc45"] = "BigCarnival_EMoneyMono_BuyItem</N>19350</N>711188"
tNpcGossip[19350]["Option46"] = tBigCarnival_EMoneyMono_Text[19350]["Option46"]
tNpcGossip[19350]["OptionFunc46"] = "BigCarnival_EMoneyMono_BuyItem</N>19350</N>3307468"
tNpcGossip[19350]["Option47"] = tBigCarnival_EMoneyMono_Text[19350]["Option47"]
tNpcGossip[19350]["OptionFunc47"] = "BigCarnival_EMoneyMono_BuyItem</N>19350</N>3307469"
tNpcGossip[19350]["Option48"] = tBigCarnival_EMoneyMono_Text[19350]["Option48"]
tNpcGossip[19350]["OptionFunc48"] = "BigCarnival_EMoneyMono_BuyItem</N>19350</N>711679"
tNpcGossip[19350]["Option49"] = tBigCarnival_EMoneyMono_Text[19350]["Option49"]
tNpcGossip[19350]["OptionFunc49"] = "BigCarnival_EMoneyMono_BuyItem</N>19350</N>3307470"
tNpcGossip[19350]["Option50"] = tBigCarnival_EMoneyMono_Text[19350]["Option50"]
tNpcGossip[19350]["OptionFunc50"] = "BigCarnival_EMoneyMono_BuyItem</N>19350</N>1080001"
tNpcGossip[19350]["Option51"] = tBigCarnival_EMoneyMono_Text[19350]["Option51"]
tNpcGossip[19350]["OptionFunc51"] = "BigCarnival_EMoneyMono_BuyItem</N>19350</N>723030"

--5月周年庆新增
tNpcGossip[19350]["Option52"] = tBigCarnival_EMoneyMono_Text[19350]["Option52"]
tNpcGossip[19350]["OptionFunc52"] = "BigCarnival_EMoneyMono_BuyItem</N>19350</N>3312619"
tNpcGossip[19350]["Option53"] = tBigCarnival_EMoneyMono_Text[19350]["Option53"]
tNpcGossip[19350]["OptionFunc53"] = "BigCarnival_EMoneyMono_BuyItem</N>19350</N>3312620"
tNpcGossip[19350]["Option54"] = tBigCarnival_EMoneyMono_Text[19350]["Option54"]
tNpcGossip[19350]["OptionFunc54"] = "BigCarnival_EMoneyMono_BuyItem</N>19350</N>3304062"
tNpcGossip[19350]["Option55"] = tBigCarnival_EMoneyMono_Text[19350]["Option55"]
tNpcGossip[19350]["OptionFunc55"] = "BigCarnival_EMoneyMono_BuyItem</N>19350</N>3320470"

--9月爆爽服
tNpcGossip[19350]["Option56"] = tBigCarnival_EMoneyMono_Text[19350]["Option56"]
tNpcGossip[19350]["OptionFunc56"] = "BigCarnival_EMoneyMono_BuyItem</N>19350</N>3309001"
tNpcGossip[19350]["Option57"] = tBigCarnival_EMoneyMono_Text[19350]["Option57"]
tNpcGossip[19350]["OptionFunc57"] = "BigCarnival_EMoneyMono_BuyItem</N>19350</N>3312763"
--1月新年促销
tNpcGossip[19350]["Option58"] = tBigCarnival_EMoneyMono_Text[19350]["Option58"]
tNpcGossip[19350]["OptionFunc58"] = "BigCarnival_EMoneyMono_BuyItem</N>19350</N>3306087"

--6月暑期促销新增 秘术精华
tNpcGossip[19350]["Option59"] = tBigCarnival_EMoneyMono_Text[19350]["Option59"]
tNpcGossip[19350]["OptionFunc59"] = "BigCarnival_EMoneyMono_BuyItem</N>19350</N>3316203"


-- 购买商品次级对白
tNpcGossip[19350]["Text2-1"] = {211,212,213}
tNpcGossip[19350]["Text211"] = tBigCarnival_EMoneyMono_Text[19350]["Text211"]
tNpcGossip[19350]["Text212"] = tBigCarnival_EMoneyMono_Text[19350]["Text212"]
tNpcGossip[19350]["Text213"] = tBigCarnival_EMoneyMono_Text[19350]["Text213"]
-- 输入框数字
tNpcGossip[19350]["Text2-2"] = {221}
tNpcGossip[19350]["Text221"] = tBigCarnival_EMoneyMono_Text[19350]["Text221"]
tNpcGossip[19350]["tOption2-2"] = {9}
tNpcGossip[19350]["Option9"] = tBigCarnival_EMoneyMono_Text[19350]["Option9"]
tNpcGossip[19350]["OptionPoint9"] = 1
-- 赠点不足
tNpcGossip[19350]["Text2-3"] = {231}
tNpcGossip[19350]["Text231"] = tBigCarnival_EMoneyMono_Text[19350]["Text231"]
tNpcGossip[19350]["tOption2-3"] = {10}
tNpcGossip[19350]["Option10"] = tBigCarnival_EMoneyMono_Text[19350]["Option10"]
tNpcGossip[19350]["OptionPoint10"] = 1
-- 剩余购买额度不足
tNpcGossip[19350]["Text2-4"] = {241}
tNpcGossip[19350]["Text241"] = tBigCarnival_EMoneyMono_Text[19350]["Text241"]
tNpcGossip[19350]["tOption2-4"] = {11}
tNpcGossip[19350]["Option11"] = tBigCarnival_EMoneyMono_Text[19350]["Option11"]
tNpcGossip[19350]["OptionPoint11"] = 1
-- 成功，二次确认
tNpcGossip[19350]["Text3-1"] = {311}
tNpcGossip[19350]["Text311"] = tBigCarnival_EMoneyMono_Text[19350]["Text311"]
tNpcGossip[19350]["tOption3-1"] = {12,13}
tNpcGossip[19350]["Option12"] = tBigCarnival_EMoneyMono_Text[19350]["Option12"]
tNpcGossip[19350]["Option13"] = tBigCarnival_EMoneyMono_Text[19350]["Option13"]
tNpcGossip[19350]["OptionFunc12"] = ""


tNpcGossip[21872] = tNpcGossip[19349]
tNpcGossip[21873] = tNpcGossip[19350]


---------------------------三月赠品大狂欢3.22----------------------
-- 珍品促销员
tNpcFace[547] = 1
tNpcGossip[22627] = tNpcGossip[22627] or DefaultNpc:new{}
tNpcGossip[22627]["OptionHidden"] = 1
-- 活动前
tNpcGossip[22627]["Text1-1"] = {111,112}
tNpcGossip[22627]["Text111"] = tBigCarnival_EMoneyMono_TreasuresText[22627]["Text111"]
tNpcGossip[22627]["Text112"] = tBigCarnival_EMoneyMono_TreasuresText[22627]["Text112"]
tNpcGossip[22627]["ChkFunc1-1"] = function ()
	--判断活动时间
	return Sys_ChkFullTime(tBigCarnival_EMoneyMono_Count["BeforeActivityTime"])
end
tNpcGossip[22627]["tOption1-1"] = {111}
tNpcGossip[22627]["Option111"] = tBigCarnival_EMoneyMono_TreasuresText[22627]["Option111"]

-- 活动中
tNpcGossip[22627]["Text1-2"] = {121,122}
tNpcGossip[22627]["Text121"] = tBigCarnival_EMoneyMono_TreasuresText[22627]["Text121"]
tNpcGossip[22627]["Text122"] = tBigCarnival_EMoneyMono_TreasuresText[22627]["Text122"]
tNpcGossip[22627]["ChkFunc1-2"] = function ()
	BigCarnival_EMoneyMono_LoginSysFunc()
	--查询所有商品剩余次数
	BigCarnival_EMoneyMono_AllGoodsStcNum(22627)
	
	if BigCarnival_EMoneyMono_JudgeGoodsAllSell(1,13) then
		tNpcGossip[22627]["Text1-2"] = {121}
		tNpcGossip[22627]["Text121"] = tBigCarnival_EMoneyMono_TreasuresText[22627]["Text311"]
		tNpcGossip[22627]["tOption1-2"] = {311}
		tNpcGossip[22627]["Option311"] = tBigCarnival_EMoneyMono_TreasuresText[22627]["Option311"]
	else
		tNpcGossip[22627]["Text1-2"] = {121,122}
		tNpcGossip[22627]["Text121"] = tBigCarnival_EMoneyMono_TreasuresText[22627]["Text121"]
		tNpcGossip[22627]["Text122"] = tBigCarnival_EMoneyMono_TreasuresText[22627]["Text122"]
		tNpcGossip[22627]["tOption1-2"] = {121,122,123,124,125,126,127,211,212,213,214,215,216,218}
	end
	
	return Sys_ChkFullTime(tBigCarnival_EMoneyMono_Count["ActivityTime"])
end
tNpcGossip[22627]["tOption1-2"] = {121,122,123,124,125,126,127,211,212,213,214,215,216,218}
tNpcGossip[22627]["Option121"] = tBigCarnival_EMoneyMono_TreasuresText[22627]["Option121"]
tNpcGossip[22627]["OptionChkFunc121"] = function ()
	--判断是否有次数
	return BigCarnival_EMoneyMono_JudgeTreasureStcNum(1)
end
tNpcGossip[22627]["OptionFunc121"] = "BigCarnival_EMoneyMono_JudgeGossipNpc</N>22627</N>1"
tNpcGossip[22627]["Option122"] = tBigCarnival_EMoneyMono_TreasuresText[22627]["Option122"]
tNpcGossip[22627]["OptionChkFunc122"] = function ()
	--判断是否有次数
	return BigCarnival_EMoneyMono_JudgeTreasureStcNum(2)
end
tNpcGossip[22627]["OptionFunc122"] = "BigCarnival_EMoneyMono_JudgeGossipNpc</N>22627</N>2"
tNpcGossip[22627]["Option123"] = tBigCarnival_EMoneyMono_TreasuresText[22627]["Option123"]
tNpcGossip[22627]["OptionChkFunc123"] = function ()
	--判断是否有次数
	return BigCarnival_EMoneyMono_JudgeTreasureStcNum(3)
end
tNpcGossip[22627]["OptionFunc123"] = "BigCarnival_EMoneyMono_JudgeGossipNpc</N>22627</N>3"
tNpcGossip[22627]["Option124"] = tBigCarnival_EMoneyMono_TreasuresText[22627]["Option124"]
tNpcGossip[22627]["OptionChkFunc124"] = function ()
	--判断是否有次数
	return BigCarnival_EMoneyMono_JudgeTreasureStcNum(4)
end
tNpcGossip[22627]["OptionFunc124"] = "BigCarnival_EMoneyMono_JudgeGossipNpc</N>22627</N>4"
tNpcGossip[22627]["Option125"] = tBigCarnival_EMoneyMono_TreasuresText[22627]["Option125"]
tNpcGossip[22627]["OptionChkFunc125"] = function ()
	--判断是否有次数
	return BigCarnival_EMoneyMono_JudgeTreasureStcNum(5)
end
tNpcGossip[22627]["OptionFunc125"] = "BigCarnival_EMoneyMono_JudgeGossipNpc</N>22627</N>5"
tNpcGossip[22627]["Option126"] = tBigCarnival_EMoneyMono_TreasuresText[22627]["Option126"]
tNpcGossip[22627]["OptionChkFunc126"] = function ()
	--判断是否有次数
	return BigCarnival_EMoneyMono_JudgeTreasureStcNum(6)
end
tNpcGossip[22627]["OptionFunc126"] = "BigCarnival_EMoneyMono_JudgeGossipNpc</N>22627</N>6"
tNpcGossip[22627]["Option127"] = tBigCarnival_EMoneyMono_TreasuresText[22627]["Option127"]
tNpcGossip[22627]["OptionChkFunc127"] = function ()
	--判断是否有次数
	return BigCarnival_EMoneyMono_JudgeTreasureStcNum(7)
end
tNpcGossip[22627]["OptionFunc127"] = "BigCarnival_EMoneyMono_JudgeGossipNpc</N>22627</N>7"

tNpcGossip[22627]["Option211"] = tBigCarnival_EMoneyMono_TreasuresText[22627]["Option211"]
tNpcGossip[22627]["OptionChkFunc211"] = function ()
	--判断是否有次数
	return BigCarnival_EMoneyMono_JudgeTreasureStcNum(8)
end
tNpcGossip[22627]["OptionFunc211"] = "BigCarnival_EMoneyMono_JudgeGossipNpc</N>22627</N>8"
tNpcGossip[22627]["Option212"] = tBigCarnival_EMoneyMono_TreasuresText[22627]["Option212"]
tNpcGossip[22627]["OptionChkFunc212"] = function ()
	--判断是否有次数
	return BigCarnival_EMoneyMono_JudgeTreasureStcNum(9)
end
tNpcGossip[22627]["OptionFunc212"] = "BigCarnival_EMoneyMono_JudgeGossipNpc</N>22627</N>9"
tNpcGossip[22627]["Option213"] = tBigCarnival_EMoneyMono_TreasuresText[22627]["Option213"]
tNpcGossip[22627]["OptionChkFunc213"] = function ()
	--判断是否有次数
	return BigCarnival_EMoneyMono_JudgeTreasureStcNum(10)
end
tNpcGossip[22627]["OptionFunc213"] = "BigCarnival_EMoneyMono_JudgeGossipNpc</N>22627</N>10"
tNpcGossip[22627]["Option214"] = tBigCarnival_EMoneyMono_TreasuresText[22627]["Option214"]
tNpcGossip[22627]["OptionChkFunc214"] = function ()
	--判断是否有次数
	return BigCarnival_EMoneyMono_JudgeTreasureStcNum(11)
end
tNpcGossip[22627]["OptionFunc214"] = "BigCarnival_EMoneyMono_JudgeGossipNpc</N>22627</N>11"
tNpcGossip[22627]["Option215"] = tBigCarnival_EMoneyMono_TreasuresText[22627]["Option215"]
tNpcGossip[22627]["OptionChkFunc215"] = function ()
	--判断是否有次数
	return BigCarnival_EMoneyMono_JudgeTreasureStcNum(12)
end
tNpcGossip[22627]["OptionFunc215"] = "BigCarnival_EMoneyMono_JudgeGossipNpc</N>22627</N>12"
tNpcGossip[22627]["Option216"] = tBigCarnival_EMoneyMono_TreasuresText[22627]["Option216"]
tNpcGossip[22627]["OptionChkFunc216"] = function ()
	--判断是否有次数
	return BigCarnival_EMoneyMono_JudgeTreasureStcNum(13)
end
tNpcGossip[22627]["OptionFunc216"] = "BigCarnival_EMoneyMono_JudgeGossipNpc</N>22627</N>13"

tNpcGossip[22627]["Option218"] = tBigCarnival_EMoneyMono_TreasuresText[22627]["Option218"]

--活动后 1-3
tNpcGossip[22627]["Text1-3"] = {131,132}
tNpcGossip[22627]["Text131"] = tBigCarnival_EMoneyMono_TreasuresText[22627]["Text131"]
tNpcGossip[22627]["Text132"] = tBigCarnival_EMoneyMono_TreasuresText[22627]["Text132"]
tNpcGossip[22627]["ChkFunc1-3"] = function ()
	--判断活动时间
	return not Sys_ChkFullTime(tBigCarnival_EMoneyMono_Count["ActivityTime"])
end
tNpcGossip[22627]["tOption1-3"] = {131}
tNpcGossip[22627]["Option131"] = tBigCarnival_EMoneyMono_TreasuresText[22627]["Option131"]


--二次确认 2-3
tNpcGossip[22627]["Text2-3"] = {231}
tNpcGossip[22627]["Text231"] = tBigCarnival_EMoneyMono_TreasuresText[22627]["Text231"]
tNpcGossip[22627]["tOption2-3"] = {231,232,233}
tNpcGossip[22627]["Option231"] = tBigCarnival_EMoneyMono_TreasuresText[22627]["Option231"]
tNpcGossip[22627]["Option232"] = tBigCarnival_EMoneyMono_TreasuresText[22627]["Option232"]
tNpcGossip[22627]["OptionChkFunc232"] = function ()
	--今日是否屏蔽二次确认按钮
	return not BigCarnival_EMoneyMono_CheckPassSureFlag()
end
tNpcGossip[22627]["Option233"] = tBigCarnival_EMoneyMono_TreasuresText[22627]["Option233"]

--背包空间不足 2-4
tNpcGossip[22627]["Text2-4"] = {241}
tNpcGossip[22627]["Text241"] = tBigCarnival_EMoneyMono_TreasuresText[22627]["Text241"]
tNpcGossip[22627]["tOption2-4"] = {241}
tNpcGossip[22627]["Option241"] = tBigCarnival_EMoneyMono_TreasuresText[22627]["Option241"]

--输入数字失败 2-5
tNpcGossip[22627]["Text2-5"] = {251}
tNpcGossip[22627]["Text251"] = tBigCarnival_EMoneyMono_TreasuresText[22627]["Text251"]
tNpcGossip[22627]["tOption2-5"] = {251}
tNpcGossip[22627]["Option251"] = tBigCarnival_EMoneyMono_TreasuresText[22627]["Option251"]

--买多个赠点不足 2-6
tNpcGossip[22627]["Text2-6"] = {261}
tNpcGossip[22627]["Text261"] = tBigCarnival_EMoneyMono_TreasuresText[22627]["Text261"]
tNpcGossip[22627]["tOption2-6"] = {261}
tNpcGossip[22627]["Option261"] = tBigCarnival_EMoneyMono_TreasuresText[22627]["Option261"]
tNpcGossip[22627]["OptionPoint261"] = "1-2"

--购买数量不足 2-7
tNpcGossip[22627]["Text2-7"] = {271}
tNpcGossip[22627]["Text271"] = tBigCarnival_EMoneyMono_TreasuresText[22627]["Text271"]
tNpcGossip[22627]["tOption2-7"] = {271}
tNpcGossip[22627]["Option271"] = tBigCarnival_EMoneyMono_TreasuresText[22627]["Option271"]
tNpcGossip[22627]["OptionPoint271"] = "1-2"

--购买赠点不足 2-8
tNpcGossip[22627]["Text2-8"] = {281}
tNpcGossip[22627]["Text281"] = tBigCarnival_EMoneyMono_TreasuresText[22627]["Text281"]
tNpcGossip[22627]["tOption2-8"] = {281}
tNpcGossip[22627]["Option281"] = tBigCarnival_EMoneyMono_TreasuresText[22627]["Option281"]
tNpcGossip[22627]["OptionPoint281"] = "1-2"


tNpcFace[6400] = 29
tNpcGossip[23554] = tNpcGossip[23554] or DefaultNpc:new{}
tNpcGossip[23554]["OptionHidden"] = 1
tNpcGossip[23554]["DialogueText"] = tBigCarnival_EMoneyMono_Text[23554]

-- 活动前
tNpcGossip[23554]["Text1-1"] = {111,112,113}
tNpcGossip[23554]["tOption1-1"] = {1}
tNpcGossip[23554]["ChkFunc1-1"] = function ()
	--判断活动时间
	return Sys_ChkFullTime(tActivityTime["BoundCarnival"]["BeforeActivityTime"])
end

--活动后
tNpcGossip[23554]["Text1-2"] = {114}
tNpcGossip[23554]["tOption1-2"] = {2}
tNpcGossip[23554]["ChkFunc1-2"] = function ()
	--判断活动时间
	return not Sys_ChkFullTime(tActivityTime["BoundCarnival"]["ActivityTime"])
end



--活动中
tNpcGossip[23554]["Text1-3"] = {115,116,117}
tNpcGossip[23554]["tOption1-3"] = {3,4,5,6,7}
--打开天石商店
tNpcGossip[23554]["OptionFunc3"] = "User_OpenDialog"
--提交圣诞糖果
tNpcGossip[23554]["OptionFunc4"] = "BigCarnival_EMoneyMono_Christmas_Awardgift</N>23554"
--进入领奖专区。线下界面
tNpcGossip[23554]["OptionFunc5"] = "BigCarnival_EMoneyMono_Christmas_Sendweb"
--查看本服冠军奖励
tNpcGossip[23554]["OptionPoint6"] = "2-1"
--查看大促销细则
tNpcGossip[23554]["OptionPoint7"] = "3-1"

--查看冠军奖励
tNpcGossip[23554]["Text2-1"] = {120,121,122,123,124,125,126,127}
tNpcGossip[23554]["tOption2-1"] = {8}
tNpcGossip[23554]["ChkFunc2-1"] = function ()
	return BigCarnival_EMoneyMono_Christmas_CanawardChat(23554)
end
tNpcGossip[23554]["OptionPoint8"] = 1

--圣诞大促销细则
tNpcGossip[23554]["Text3-1"] = {128,129,130,131,132,133}
tNpcGossip[23554]["tOption3-1"] = {9}
tNpcGossip[23554]["OptionPoint9"] = 1
--------------------------------------------------------------
--新增扣促销包npc
tNpcFace[5089] = 29
tNpcGossip[24870] = tNpcGossip[24870] or DefaultNpc:new{}
tNpcGossip[24870]["OptionHidden"] = 1
tNpcGossip[24870]["DialogueText"] = tBigCarnival_EMoneyMono_Text[24870]

-- 活动前
tNpcGossip[24870]["Text1-1"] = {111,112,113}
tNpcGossip[24870]["tOption1-1"] = {1}
tNpcGossip[24870]["ChkFunc1-1"] = function ()
	--判断活动时间
	return Sys_ChkFullTime(tActivityTime["BoundCarnival"]["BeforeActivityTime"])
end

--活动后
tNpcGossip[24870]["Text1-2"] = {114}
tNpcGossip[24870]["tOption1-2"] = {2}
tNpcGossip[24870]["ChkFunc1-2"] = function ()
	--判断活动时间
	return not Sys_ChkFullTime(tActivityTime["BoundCarnival"]["ActivityTime"])
end


--活动中
tNpcGossip[24870]["Text1-3"] = {115,116,117,118,121}
tNpcGossip[24870]["tOption1-3"] = {4,5}
--打开天石商店
tNpcGossip[24870]["OptionFunc3"] = "User_OpenDialog"
--提交凭证
tNpcGossip[24870]["OptionFunc4"] = "BigCarnival_EMoneyMono_Cou_Awardgift</N>24870"
--进入领奖专区。线下界面
tNpcGossip[24870]["OptionFunc5"] = "BigCarnival_EMoneyMono_Cou_Sendweb"
tNpcGossip[24870]["ChkFunc1-3"] = function ()
	
	local nEvent = tBigCarnival_EMoneyMono_Cou_Stc["Eventype"]
	local nData = tBigCarnival_EMoneyMono_Cou_Stc["Datatype"]
	local nOriginalgrade = Get_UserStatisticValue(nEvent,nData)
	
	tNpcGossip[24870]["Text121"] = string.format(tBigCarnival_EMoneyMono_Text[24870]["Text121"],nOriginalgrade)
	return true
end


--定时领取福利Npc
tNpcFace[5757] = 238
tNpcGossip[26475] = tNpcGossip[26475] or DefaultNpc:new{}
tNpcGossip[26475]["OptionHidden"] = 1
tNpcGossip[26475]["DialogueText"] = tBigCarnival_EMoneyMono_Text[26475]

-- 活动前
tNpcGossip[26475]["Text1-1"] = {111,112,113,114}
tNpcGossip[26475]["tOption1-1"] = {1}
tNpcGossip[26475]["ChkFunc1-1"] = function ()
	--判断活动时间
	return Sys_ChkFullTime(tActivityTime["BoundCarnival"]["OldBeforeActivityTime"])
end

--活动后
tNpcGossip[26475]["Text1-2"] = {115}
tNpcGossip[26475]["tOption1-2"] = {2}
tNpcGossip[26475]["ChkFunc1-2"] = function ()
	--判断活动时间
	return not Sys_ChkFullTime(tActivityTime["BoundCarnival"]["OldActivityTime"])
end

--活动中
tNpcGossip[26475]["Text1-3"] = {116,117,118,119}
tNpcGossip[26475]["tOption1-3"] = {3,4}
--领取整点福利
tNpcGossip[26475]["OptionFunc3"] = "BigCarnival_EMoneyMono_ZhengFuLi"

--周年庆促销专区
tNpcFace[5758] = 235
tNpcGossip[26476] = tNpcGossip[26476] or DefaultNpc:new{}
tNpcGossip[26476]["OptionHidden"] = 1
tNpcGossip[26476]["DialogueText"] = tBigCarnival_EMoneyMono_Text[26476]

-- 活动前
tNpcGossip[26476]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[26476]["tOption1-1"] = {1}
tNpcGossip[26476]["ChkFunc1-1"] = function ()
	--判断活动时间
	return Sys_ChkFullTime(tActivityTime["BoundCarnival"]["OldBeforeActivityTime"])
end

--活动后
tNpcGossip[26476]["Text1-2"] = {116}
tNpcGossip[26476]["tOption1-2"] = {2}
tNpcGossip[26476]["ChkFunc1-2"] = function ()
	--判断活动时间
	return not Sys_ChkFullTime(tActivityTime["BoundCarnival"]["OldActivityTime"])
end

--活动中
tNpcGossip[26476]["Text1-3"] = {117,118,119,113,120}
tNpcGossip[26476]["tOption1-3"] = {3,4,5,6,7,8}
--购买翅膀
tNpcGossip[26476]["OptionPoint3"] = "2-1"
--购买衣服
tNpcGossip[26476]["OptionPoint4"] = "3-1"
--购买MMO~treasures
tNpcGossip[26476]["OptionPoint5"] = "4-1"
--上交凭证
tNpcGossip[26476]["OptionFunc6"] = "BigCarnival_AwardAllgift"
--跳转线下网页
tNpcGossip[26476]["OptionFunc7"] = "BigCarnival_EMoneyMono_Cou_Sendweb"

tNpcGossip[26476]["Text2-1"] = {121,124}
tNpcGossip[26476]["tOption2-1"] = {9,10,11}
tNpcGossip[26476]["OptionFunc9"] = "BigCarnival_AnniversitySureBuy</N>26476</N>6031"
tNpcGossip[26476]["OptionFunc10"] = "BigCarnival_AnniversitySureBuy</N>26476</N>6023"
tNpcGossip[26476]["OptionFunc11"] = "BigCarnival_AnniversitySureBuy</N>26476</N>6009"
tNpcGossip[26476]["ChkFunc2-1"] = function ()
	--判断活动时间
	return BigCarnival_AnniversityChatOption(26476)
end

tNpcGossip[26476]["Text3-1"] = {122,124}
tNpcGossip[26476]["tOption3-1"] = {12,13,14,15,16,17}
tNpcGossip[26476]["OptionFunc12"] = "BigCarnival_AnniversitySureBuy</N>26476</N>196185"
tNpcGossip[26476]["OptionFunc13"] = "BigCarnival_AnniversitySureBuy</N>26476</N>196195"
tNpcGossip[26476]["OptionFunc14"] = "BigCarnival_AnniversitySureBuy</N>26476</N>195935"
tNpcGossip[26476]["OptionFunc15"] = "BigCarnival_AnniversitySureBuy</N>26476</N>200580"
tNpcGossip[26476]["OptionFunc16"] = "BigCarnival_AnniversitySureBuy</N>26476</N>200655"
tNpcGossip[26476]["OptionFunc17"] = "BigCarnival_AnniversitySureBuy</N>26476</N>200638"
tNpcGossip[26476]["ChkFunc3-1"] = function ()
	--判断活动时间
	return BigCarnival_AnniversityChatOption(26476)
end

tNpcGossip[26476]["Text4-1"] = {123,124}
tNpcGossip[26476]["tOption4-1"] = {18,19,20,21,22}
tNpcGossip[26476]["OptionFunc18"] = "BigCarnival_AnniversitySureBuy</N>26476</N>711903"
tNpcGossip[26476]["OptionFunc19"] = "BigCarnival_AnniversitySureBuy</N>26476</N>711904"
tNpcGossip[26476]["OptionFunc20"] = "BigCarnival_AnniversitySureBuy</N>26476</N>3311750"
tNpcGossip[26476]["OptionFunc21"] = "BigCarnival_AnniversitySureBuy</N>26476</N>3300767"
tNpcGossip[26476]["OptionFunc22"] = "BigCarnival_AnniversitySureBuy</N>26476</N>3200349"
tNpcGossip[26476]["ChkFunc4-1"] = function ()
	--判断活动时间
	return BigCarnival_AnniversityChatOption(26476)
end

--二次确认具体购买
tNpcGossip[26476]["Text5-1"] = {125}
tNpcGossip[26476]["tOption5-1"] = {23,24}
tNpcGossip[26476]["OptionPoint24"] = 1
--------------------------------------物品模块-------------------------------------------
-- 1500天石赠礼包
tItem[3200569] = tItem[3200569] or {}
tItem[3200569]["Function"] = function(nItemId,sItemName)
	BigCarnival_EMoneyMono_UseItem(nItemId)
end

-- 15000天石赠礼包
tItem[3200570] = tItem[3200570] or {}
tItem[3200570]["Function"] = function(nItemId,sItemName)
	BigCarnival_EMoneyMono_UseItem(nItemId)
end

--12月赠品大狂欢新增赠品礼包
tItem[3311604] = tItem[3311604] or {}
tItem[3311604]["Function"] = function(nItemId,sItemName)
	BigCarnival_EMoneyMono_Christmas_Monogift(nItemId)
end
tItem[3311605] = tItem[3311604]
tItem[3311606] = tItem[3311604]
tItem[3311607] = tItem[3311604]
tItem[3311608] = tItem[3311604]
tItem[3311609] = tItem[3311604]

--雷神促销
tItem[3320236] = tItem[3311604]
tItem[3320237] = tItem[3311604]
tItem[3320238] = tItem[3311604]
tItem[3320239] = tItem[3311604]
tItem[3320240] = tItem[3311604]
tItem[3320241] = tItem[3311604]

--8月赠品大狂欢新增3500礼包
tItem[3322825] = tItem[3311604]
tItem[3322826] = tItem[3311604]

--12月促销新增4500礼包
tItem[3314554] = tItem[3311604]
tItem[3314555] = tItem[3311604]

-- 2000天石赠礼包  3307135
tItem[3307135] = tItem[3307135] or {}
tItem[3307135]["Function"] = function(nItemId,sItemName)
	BigCarnival_EMoneyMono_UseItem(nItemId)
end
-- 20000天石赠礼包  3307136
tItem[3307136] = tItem[3307136] or {}
tItem[3307136]["Function"] = function(nItemId,sItemName)
	BigCarnival_EMoneyMono_UseItem(nItemId)
end

-- 1250天石赠礼包
tItem[3303675] = tItem[3303675] or {}
tItem[3303675]["Function"] = function(nItemId,sItemName)
	BigCarnival_EMoneyMono_UseItem(nItemId)
end

-- 12500天石赠礼包
tItem[3303676] = tItem[3303676] or {}
tItem[3303676]["Function"] = function(nItemId,sItemName)
	BigCarnival_EMoneyMono_UseItem(nItemId)
end

-- 1000点气力值礼包
tItem[3200571] = tItem[3200571] or {}
tItem[3200571]["Function"] = function(nItemId,sItemName)
	BigCarnival_EMoneyMono_UseItem(nItemId)
end



tItem[3320379] = tItem[3200571] or {}
tItem[3320663] = tItem[3200571] or {}

--5周年新增
tItem[3312619] = tItem[3200571] or {}
tItem[3312620] = tItem[3200571] or {}
tItem[3312621] = tItem[3200571] or {}


tItem[3312622] = tItem[3312622] or {}
tItem[3312622]["Function"] = function(nItemId,sItemName)
	BigCarnival_EMoneyMono_UseItemMono(nItemId)
end

tItem[3312623] = tItem[3200571] or {}
tItem[3312624] = tItem[3200571] or {}
tItem[3312625] = tItem[3200571] or {}
tItem[3312626] = tItem[3200571] or {}
tItem[3312627] = tItem[3200571] or {}
tItem[3312628] = tItem[3200571] or {}
tItem[3312629] = tItem[3200571] or {}
tItem[3312630] = tItem[3200571] or {}


tItem[3321390] = tItem[3200571] or {}
tItem[3321444] = tItem[3200571] or {}
tItem[3312579] = tItem[3200571] or {}

--9月折扣礼包打开获得

tItem[3323166] = tItem[3323166] or {}
tItem[3323166]["Function"] = function(nItemId,sItemName)
	BigCarnival_EMoneyMono_MyEmoneyUseItem(nItemId)
end

tItem[3323167] = tItem[3323166] or {}
tItem[3323168] = tItem[3323166] or {}
tItem[3323169] = tItem[3323166] or {}
tItem[3323170] = tItem[3323166] or {}
tItem[3323171] = tItem[3323166] or {}

-- 无洞+4无为如意拂尘（赠）礼包
tItem[3303687] = tItem[3323166] or {}

tItem[3323173] = tItem[3200571] or {}
tItem[3323174] = tItem[3200571] or {}
tItem[3323175] = tItem[3200571] or {}



-- 3304766,'天石换购优惠券（1:4）'
tItem[3304766] = tItem[3304766] or {}
tItem[3304766]["Function"] = function(nItemId,sItemName)
	-- BigCarnival_EMoneyMono_UseNewIPack(nItemId)
end
-- 3304767,'天石换购优惠券（1:5）'
tItem[3304767] = tItem[3304766]
-- 3304768,'天石换购优惠券（1:6）'
tItem[3304768] = tItem[3304766]
-- 3308699,'天石换购优惠券（1:7）'--5.24之后老服活动用 老服活动暂时未更新
tItem[3308699] = tItem[3308699] or {}
tItem[3308699]["Function"] = function(nItemId,sItemName)
	if not Sys_ChkFullTime(tActivityTime["BoundCarnival"]["OldActivityTime"]) then
		User_TalkChannel2005(tBigCarnival_EMoneyMono_Text["ComingSoon"])
	end
	-- BigCarnival_EMoneyMono_UseNewIPack(nItemId)
end




----------------------三月赠品大狂欢3.22----------------------
-- 破城火雷*10
tItem[3307467] = tItem[3307467] or {}
tItem[3307467]["Function"] = function(nItemId,sItemName)
	BigCarnival_EMoneyMono_UserTreasurePackage(nItemId)
end
-- 辟邪护符*20
tItem[3307468] = tItem[3307468] or {}
tItem[3307468]["Function"] = function(nItemId,sItemName)
	BigCarnival_EMoneyMono_UserTreasurePackage(nItemId)
end
-- 流星泪*10
tItem[3307469] = tItem[3307469] or {}
tItem[3307469]["Function"] = function(nItemId,sItemName)
	BigCarnival_EMoneyMono_UserTreasurePackage(nItemId)
end
-- 被偷走的马鞍*40
tItem[3307470] = tItem[3307470] or {}
tItem[3307470]["Function"] = function(nItemId,sItemName)
	BigCarnival_EMoneyMono_UserTreasurePackage(nItemId)
end
-- 纯净元气
tItem[3307471] = tItem[3307471] or {}
tItem[3307471]["Function"] = function(nItemId,sItemName)
	BigCarnival_EMoneyMono_UserTreasurePackage(nItemId)
end
-- 万能神纹精粹（赠）
tItem[3308803] = tItem[3308803] or {}
tItem[3308803]["Function"] = function(nItemId,sItemName)
	BigCarnival_EMoneyMono_UserTreasurePackage(nItemId)
end

--雷神二月轮盘新增
tItem[3320242] = tItem[3308803] or {}
tItem[3320243] = tItem[3308803] or {}
tItem[3320244] = tItem[3308803] or {}
tItem[3320246] = tItem[3308803] or {}

--四月促销
tItem[3320762] = tItem[3308803] or {}
tItem[3320763] = tItem[3308803] or {}


-- 新增+6马（赠）可选包
tItemFace[3308868] = 1476
tItem[3308868] = tItem[3308868] or {}
tItem[3308868]["DialogueText"] = tBigCarnival_EMoneyMono_Text[3308868]
tItem[3308868]["Text1-1"] = {111}
tItem[3308868]["tOption1-1"] = {111,112,113,114}

tItem[3308868]["OptionFunc111"] = "BigCarnival_EMoneyMono_Choose</N>3308868</N>1"
tItem[3308868]["OptionFunc112"] = "BigCarnival_EMoneyMono_Choose</N>3308868</N>2"
tItem[3308868]["OptionFunc113"] = "BigCarnival_EMoneyMono_Choose</N>3308868</N>3"

--圣诞糖果
tItemFace[3311620] = 3590
tItem[3311620] = tItem[3311620] or {}
tItem[3311620]["DialogueText"] = tBigCarnival_EMoneyMono_Text[3311620]
tItem[3311620]["Text1-1"] = {112}
tItem[3311620]["tOption1-1"] = {11}
tItem[3311620]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tActivityTime["BoundCarnival"]["ActivityTime"])
end
tItem[3311620]["OptionFunc11"] = "BigCarnival_EMoneyMono_Christmas_Honey</N>3311620"

tItem[3311620]["Text1-2"] = {111}
tItem[3311620]["tOption1-2"] = {1,2}
tItem[3311620]["OptionFunc1"] = "BigCarnival_EMoneyMono_Christmas_Honey</N>3311620"

--礼包凭证引路大到24870James
tItem[3323172] = tItem[3323172] or {}
tItem[3323172]["Function"] = function(nItemId,sItemName)
	BigCarnival_EMoneyMono_Cao_Honey(nItemId,24870)
end

--圣诞万能神纹精粹惊喜礼包（赠）
tItem[3311610] = tItem[3311610] or {}
tItem[3311610]["Function"] = function(nItemId,sItemName)
	BigCarnival_EMoneyMono_Christmas_StoneOpen(nItemId)
end
tItem[3311611] = tItem[3311610] or {}
tItem[3311612] = tItem[3311610] or {}
tItem[3311613] = tItem[3311610] or {}
tItem[3311614] = tItem[3311610] or {}
tItem[3311615] = tItem[3311610] or {}
tItem[3311616] = tItem[3311610] or {}
tItem[3311617] = tItem[3311610] or {}
tItem[3311618] = tItem[3311610] or {}
tItem[3311619] = tItem[3311610] or {}



--4月赠品促销
tItemFace[3320764] = 3391
tItem[3320764] = tItem[3320764] or {}
tItem[3320764]["DialogueText"] = tBigCarnival_EMoneyMono_Text[3320764]
tItem[3320764]["Text1-1"] = {111}
tItem[3320764]["tOption1-1"] = {111,112}

tItem[3320764]["OptionFunc111"] = "BigCarnival_EMoneyMono_Choose</N>3320764</N>1"
tItem[3320764]["OptionFunc112"] = "BigCarnival_EMoneyMono_Choose</N>3320764</N>2"

--新增轮盘发型
tItem[3314569] = tItem[3314569] or {}
tItem[3314569]["Function"] = function(nItemId,sItemName)
	BigCarnival_EMoneyMono_Hair(nItemId)
end

tItem[3314570] = tItem[3314569] or {}
tItem[3314571] = tItem[3314569] or {}
tItem[3314572] = tItem[3314569] or {}
tItem[3314573] = tItem[3314569] or {}
tItem[3314575] = tItem[3314569] or {}
tItem[3314576] = tItem[3314569] or {}

--给纯发型，让玩家选择男女发型
tItem[3314578] = tItem[3314578] or {}
tItem[3314578]["Function"] = function(nItemId,sItemName)
	BigCarnival_HairStyle_Get(nItemId)
end


--男女发型可
tItemFace[3314574] = 2656
tItem[3314574] = tItem[3314574] or {}
tItem[3314574]["DialogueText"] = tBigCarnival_EMoneyMono_Text[3314574]
tItem[3314574]["Text1-1"] = {111}
tItem[3314574]["tOption1-1"] = {111,112}
tItem[3314574]["OptionFunc111"] = "BigCarnival_EMoneyMono_Choose</N>3314574</N>1"
tItem[3314574]["OptionFunc112"] = "BigCarnival_EMoneyMono_Choose</N>3314574</N>2"

-- 周年庆专属赠点兑换宝箱A（1:5）
-- 周年庆专属赠点兑换宝箱B（1:7）
-- 周年庆专属赠点兑换宝箱C（1:8）
tItemFace[3316077] = 2941
tItem[3316077] = tItem[3316077] or {}
tItem[3316077]["DialogueText"] = tBigCarnival_EMoneyMono_Text[3316077]
tItem[3316077]["Text1-1"] = {111,112}
tItem[3316077]["tOption1-1"] = {1,2}
tItem[3316077]["OptionFunc1"] = "BigCarnival_AnniversityDui</N>3316077"
tItem[3316077]["ChkFunc1-1"] = function ()
	return BigCarnival_AnniversityChat(3316077)
end

tItemFace[3316078] = 2942
tItem[3316078] = tItem[3316078] or {}
tItem[3316078]["DialogueText"] = tBigCarnival_EMoneyMono_Text[3316078]
tItem[3316078]["Text1-1"] = {111,112}
tItem[3316078]["tOption1-1"] = {1,2}
tItem[3316078]["OptionFunc1"] = "BigCarnival_AnniversityDui</N>3316078"
tItem[3316078]["ChkFunc1-1"] = function ()
	return BigCarnival_AnniversityChat(3316078)
end

tItemFace[3316079] = 2943
tItem[3316079] = tItem[3316079] or {}
tItem[3316079]["DialogueText"] = tBigCarnival_EMoneyMono_Text[3316079]
tItem[3316079]["Text1-1"] = {111,112}
tItem[3316079]["tOption1-1"] = {1,2}
tItem[3316079]["OptionFunc1"] = "BigCarnival_AnniversityDui</N>3316079"
tItem[3316079]["ChkFunc1-1"] = function ()
	return BigCarnival_AnniversityChat(3316079)
end

--打折价过期删除
tItem[3315861] = tItem[3315861] or {}
tItem[3315861]["Function"] = function(nItemId,sItemName)
	BigCarnival_AnniversityUseless(nItemId)
end

tItem[3315860] = tItem[3315861] or {}
tItem[3316040] = tItem[3315861] or {}

--上交凭证新增寻路
tItem[3316076] = tItem[3316076] or {}
tItem[3316076]["Function"] = function(nItemId,sItemName)
	NpcPosition_PathFind(26476)
end


-----------------------------------------------------------------
local tBigCarnival_EMoneyMono_Christmas_Ontime = {}
--活动时间后给第一名玩家发送
-- 比赛结束前领奖提示
tBigCarnival_EMoneyMono_Christmas_Ontime[1] = {}
tBigCarnival_EMoneyMono_Christmas_Ontime[1]["Type"] = 6
tBigCarnival_EMoneyMono_Christmas_Ontime[1]["TimeType"] = 1
tBigCarnival_EMoneyMono_Christmas_Ontime[1]["Time"] = "04-01 00:02 04-01 00:05"
tBigCarnival_EMoneyMono_Christmas_Ontime[1]["Func"] = BigCarnival_EMoneyMono_Christmas_FirstNeed

--隔天清理轮盘中的单服限量
tBigCarnival_EMoneyMono_Christmas_Ontime[2] = {}
tBigCarnival_EMoneyMono_Christmas_Ontime[2]["Type"] = 2
tBigCarnival_EMoneyMono_Christmas_Ontime[2]["TimeType"] = 4
tBigCarnival_EMoneyMono_Christmas_Ontime[2]["Time"] = "00:00 00:02"
tBigCarnival_EMoneyMono_Christmas_Ontime[2]["Func"] = BigCarnival_EMoneyMono_Christmas_CleanLimit

--定时清理周年庆定点奖励全局表
tBigCarnival_EMoneyMono_Christmas_Ontime[3] = {}
tBigCarnival_EMoneyMono_Christmas_Ontime[3]["Type"] = 2
tBigCarnival_EMoneyMono_Christmas_Ontime[3]["TimeType"] = 4
tBigCarnival_EMoneyMono_Christmas_Ontime[3]["Time"] = "07:50 07:53"
tBigCarnival_EMoneyMono_Christmas_Ontime[3]["Func"] = BigCarnival_EMoneyMono_Fuli_CleanLimit
tBigCarnival_EMoneyMono_Christmas_Ontime[4] = {}
tBigCarnival_EMoneyMono_Christmas_Ontime[4]["Type"] = 2
tBigCarnival_EMoneyMono_Christmas_Ontime[4]["TimeType"] = 4
tBigCarnival_EMoneyMono_Christmas_Ontime[4]["Time"] = "19:50 19:53"
tBigCarnival_EMoneyMono_Christmas_Ontime[4]["Func"] = BigCarnival_EMoneyMono_Fuli_CleanLimit

table.insert(tSystemTime_InitialData,tBigCarnival_EMoneyMono_Christmas_Ontime[1])
-- table.insert(tSystemTime_InitialData,tBigCarnival_EMoneyMono_Christmas_Ontime[2])
table.insert(tSystemTime_InitialData,tBigCarnival_EMoneyMono_Christmas_Ontime[3])
table.insert(tSystemTime_InitialData,tBigCarnival_EMoneyMono_Christmas_Ontime[4])
--tOntimerMin_HM	小时/分钟（每天的00点00分到00点02分执行）
--'00:00-00:02'
 -- tOntimerMin_HM[0000] = tOntimerMin_HM[0000] or {}
 -- table.insert(tOntimerMin_HM[0000],BigCarnival_EMoneyMono_ClearGlobalData)
 -- tOntimerMin_HM[0001] = tOntimerMin_HM[0001] or {}
 -- table.insert(tOntimerMin_HM[0001],BigCarnival_EMoneyMono_ClearGlobalData)
 -- tOntimerMin_HM[0002] = tOntimerMin_HM[0002] or {}
 -- table.insert(tOntimerMin_HM[0002],BigCarnival_EMoneyMono_ClearGlobalData)
