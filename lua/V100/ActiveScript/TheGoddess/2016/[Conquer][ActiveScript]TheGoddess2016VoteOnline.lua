------------------------------------------------------------------------------------
--Name:			160112[简体征服][活动脚本]2016情人节花魁赛活动--积分排行赛
--Purpose:		2016情人节花魁赛活动--积分排行赛
--Creator:		严振飞
--Created:		2016/01/12
------------------------------------------------------------------------------------



-- 动态码说明：
--------男神
-- 51003	单服第一男神
-- 51004	单服第二男神
-- 51005	单服第三男神
-- 51006	单服第四男神
-- 51007	单服第五男神
--------女神
-- 51008	单服第一女神
-- 51009	单服第二女神
-- 51010	单服第三女神
-- 51011	单服第四女神
-- 51012	单服第五女神
--------存储位
-- data0:	表示获得投票的总分数
-- data1:	表示投百合的数量
-- data2:	表示投兰花的数量
-- data3:	表示投玫瑰的数量
-- data4:	表示投郁金香的数量
-- data5:	表示投天石的数量

-- stc()掩码说明
-- stc(139,98)	表示玩家投鲜花获得的积分	线下排名用（只增不减）
-- stc(141,52)	表示玩家投鲜花获得的积分	兑换奖励用（兑换礼包时积分减少）

-- stc(141,53)	记录投票对象（动态掩码）
-- stc(141,54)	记录投票类型（鲜花\天石）
-- stc(141,55)	记录投票种类（哪种数量的鲜花）
-- stc(141,56)	记录投票数量（鲜花数量）

------------------------------------------------------------------------------------
-- 命名规则
-- TheGoddess2016_VoteOnline_
------------------------------------------------------------------------------------
-- stc掩码表
local tTheGoddess2016_VoteOnline_Stc = {}
	-- 积分--线下排名用（只增不减）
	tTheGoddess2016_VoteOnline_Stc[1] = {}
	tTheGoddess2016_VoteOnline_Stc[1]["EventData"] = 139
	tTheGoddess2016_VoteOnline_Stc[1]["TypeData"] = 98
	
	-- 积分--兑换奖励用（兑换礼包时积分减少）
	tTheGoddess2016_VoteOnline_Stc[2] = {}
	tTheGoddess2016_VoteOnline_Stc[2]["EventData"] = 141
	tTheGoddess2016_VoteOnline_Stc[2]["TypeData"] = 52

	-- 记录投票对象（掩码编号）
	tTheGoddess2016_VoteOnline_Stc[3] = {}
	tTheGoddess2016_VoteOnline_Stc[3]["EventData"] = 141
	tTheGoddess2016_VoteOnline_Stc[3]["TypeData"] = 53
	tTheGoddess2016_VoteOnline_Stc[3]["Dialog"] = "2-2"
	
	-- 记录投票类型（鲜花\天石）
	tTheGoddess2016_VoteOnline_Stc[4] = {}
	tTheGoddess2016_VoteOnline_Stc[4]["EventData"] = 141
	tTheGoddess2016_VoteOnline_Stc[4]["TypeData"] = 54
	tTheGoddess2016_VoteOnline_Stc[4]["Dialog"] = "2-3"
	
	-- 记录投票种类（哪种鲜花）
	tTheGoddess2016_VoteOnline_Stc[5] = {}
	tTheGoddess2016_VoteOnline_Stc[5]["EventData"] = 141
	tTheGoddess2016_VoteOnline_Stc[5]["TypeData"] = 55
	tTheGoddess2016_VoteOnline_Stc[5]["Dialog"] = "2-4"
	
	-- 记录该种类鲜花的数量种类
	tTheGoddess2016_VoteOnline_Stc[6] = {}
	tTheGoddess2016_VoteOnline_Stc[6]["EventData"] = 141
	tTheGoddess2016_VoteOnline_Stc[6]["TypeData"] = 56
	
	-- 发型（萌动喵耳）使用CD时间
	tTheGoddess2016_VoteOnline_Stc[3008540] = {}
	tTheGoddess2016_VoteOnline_Stc[3008540]["EventData"] = 139
	tTheGoddess2016_VoteOnline_Stc[3008540]["TypeData"] = 61

	-- 发型（岁月如歌）使用CD时间
	tTheGoddess2016_VoteOnline_Stc[3007423] = {}
	tTheGoddess2016_VoteOnline_Stc[3007423]["EventData"] = 137
	tTheGoddess2016_VoteOnline_Stc[3007423]["TypeData"] = 77
	
	-- 发型（花月如梦）使用CD时间
	tTheGoddess2016_VoteOnline_Stc[3007424] = {}
	tTheGoddess2016_VoteOnline_Stc[3007424]["EventData"] = 137
	tTheGoddess2016_VoteOnline_Stc[3007424]["TypeData"] = 78
----------------------------------------------------------------------------------------------------
-- 常量表
local tTheGoddess2016_VoteOnline_Cont = {}
	--活动时间
	tTheGoddess2016_VoteOnline_Cont["ActivityAllTime1"] = "2016-04-08 00:00 2016-04-29 23:59" 	-- 花神指环寻路时间
	tTheGoddess2016_VoteOnline_Cont["ActivityAllTime2"] = "2016-02-22 00:00 2016-03-08 23:59"
	tTheGoddess2016_VoteOnline_Cont["ActivityTime1"] = "2016-02-22 00:00 2016-03-06 23:59" 		-- 第一轮投票决全区全服前3名
	tTheGoddess2016_VoteOnline_Cont["ActivityTime2"] = "2016-03-07 23:00 2016-03-07 23:59" 		-- 线下结算
	tTheGoddess2016_VoteOnline_Cont["ActivityTime3"] = "2016-03-08 00:00 2016-03-08 23:59" 		-- 复活赛
	tTheGoddess2016_VoteOnline_Cont["ActivityTime4"] = "2016-02-22 00:00 2016-02-22 22:59" 		-- 第二阶段第一天（1点前可以投票）
	tTheGoddess2016_VoteOnline_Cont["DailyTime"] = "01:00 22:59" 								-- 每天的1点到23点间可以投票
		
	-- 网页
	tTheGoddess2016_VoteOnline_Cont["Web"] = "http://event.co.99.com/mrmsco?stage=1"
	-- 输入框字符长度
	tTheGoddess2016_VoteOnline_Cont["OptEditLen"] = 10
	-- 天石积分比
	tTheGoddess2016_VoteOnline_Cont["EMy2Point"] = 2
	-- 背包空间
	tTheGoddess2016_VoteOnline_Cont["Space1"] = 1
	-- 指环换气力值比
	tTheGoddess2016_VoteOnline_Cont["Ring2Streng"] = 500
	-- 指环ID
	tTheGoddess2016_VoteOnline_Cont["RingId"] = 3008539
	-- 发型CD时间
	tTheGoddess2016_VoteOnline_Cont["HairCD"] = 10
	-- 发型类型
	tTheGoddess2016_VoteOnline_Cont["schgmapType"] = "style" 
	tTheGoddess2016_VoteOnline_Cont["typeId"] = {}
	tTheGoddess2016_VoteOnline_Cont["typeId"][3008540] = 35
	tTheGoddess2016_VoteOnline_Cont["typeId"][3007423] = 29
	tTheGoddess2016_VoteOnline_Cont["typeId"][3007424] = 29
	-- tTheGoddess2016_VoteOnline_Cont["typeId"][3008540] = 92
	-- tTheGoddess2016_VoteOnline_Cont["typeId"][3007423] = 77
	-- tTheGoddess2016_VoteOnline_Cont["typeId"][3007424] = 77

	
	-- 全服公告花的类型
	tTheGoddess2016_VoteOnline_Cont["BroadcastFlw"] = 999
	
-- 光效
local tTheGoddess2016_VoteOnline_Effect = {}
	tTheGoddess2016_VoteOnline_Effect["Self"] = "self"
	tTheGoddess2016_VoteOnline_Effect["HandIn"] = "NEW-flower-r-1"
	tTheGoddess2016_VoteOnline_Effect["RewardPack"] = "NEW-flower-g-1"
	tTheGoddess2016_VoteOnline_Effect["Ring2Coat"] = "zf2-e128"
	tTheGoddess2016_VoteOnline_Effect["Ring2Streng"] = "zf2-e128"
	
-- 记录动态码
local tTheGoddess2016_VoteOnline_Global = {}
	-- 男神
	tTheGoddess2016_VoteOnline_Global[19085] = {}
	tTheGoddess2016_VoteOnline_Global[19085][1] = 51003
	tTheGoddess2016_VoteOnline_Global[19085][2] = 51004
	tTheGoddess2016_VoteOnline_Global[19085][3] = 51005
	tTheGoddess2016_VoteOnline_Global[19085][4] = 51006
	tTheGoddess2016_VoteOnline_Global[19085][5] = 51007
	-- 女神
	tTheGoddess2016_VoteOnline_Global[19086] = {}
	tTheGoddess2016_VoteOnline_Global[19086][1] = 51008
	tTheGoddess2016_VoteOnline_Global[19086][2] = 51009
	tTheGoddess2016_VoteOnline_Global[19086][3] = 51010
	tTheGoddess2016_VoteOnline_Global[19086][4] = 51011
	tTheGoddess2016_VoteOnline_Global[19086][5] = 51012
	
local tTheGoddess2016_VoteOnline_FlwPoint = {}
	tTheGoddess2016_VoteOnline_FlwPoint[1] = 1 		-- 百合
	tTheGoddess2016_VoteOnline_FlwPoint[2] = 1 		-- 兰花
	tTheGoddess2016_VoteOnline_FlwPoint[3] = 1 		-- 玫瑰
	tTheGoddess2016_VoteOnline_FlwPoint[4] = 2 		-- 郁金香

-- 兑换礼包需要的积分
local tTheGoddess2016_VoteOnline_GiftPoint = {}
	tTheGoddess2016_VoteOnline_GiftPoint[1] = 200 		-- 粉丝追捧礼包
	tTheGoddess2016_VoteOnline_GiftPoint[2] = 1000 		-- 粉丝爱慕礼包
	tTheGoddess2016_VoteOnline_GiftPoint[3] = 3000 		-- 粉丝狂恋礼包

local tTheGoddess2016_VoteOnline_GiftId = {}
	tTheGoddess2016_VoteOnline_GiftId[1] = 3007411		-- 粉丝追捧礼包
	tTheGoddess2016_VoteOnline_GiftId[2] = 3007412		-- 粉丝爱慕礼包
	tTheGoddess2016_VoteOnline_GiftId[3] = 3007413		-- 粉丝狂恋礼包
	
-- 指环换外套的ID
local tTheGoddess2016_VoteOnline_Ring2CoatId = {}
	tTheGoddess2016_VoteOnline_Ring2CoatId[5] =  3007411
	tTheGoddess2016_VoteOnline_Ring2CoatId[30] = 3007412
	tTheGoddess2016_VoteOnline_Ring2CoatId[40] = 3007413

--指环寻路坐标
local tTheGoddess2016_VoteOnline_RingFindWay = {}
	tTheGoddess2016_VoteOnline_RingFindWay["PosX"] = 309
	tTheGoddess2016_VoteOnline_RingFindWay["PosY"] = 242
	tTheGoddess2016_VoteOnline_RingFindWay["MapId"] = 1002
	tTheGoddess2016_VoteOnline_RingFindWay["NpcId"] = 19241
	
-- 花神礼包时效(单位天)
local tTheGoddess2016_VoteOnline_ItemGodPag = {}
	-- 参数说明  {给彩蛋ID,时效天数}
	tTheGoddess2016_VoteOnline_ItemGodPag[3008533] = {3008501,"0 0 0 4320 1"}
	tTheGoddess2016_VoteOnline_ItemGodPag[3008534] = {3008501,"0 0 0 10080 1"}
	tTheGoddess2016_VoteOnline_ItemGodPag[3008535] = {3008502,"0 0 0 4320 1"}
	tTheGoddess2016_VoteOnline_ItemGodPag[3008536] = {3008502,"0 0 0 10080 1"}
	tTheGoddess2016_VoteOnline_ItemGodPag[3008537] = {3008503,"0 0 0 4320 1"}
	tTheGoddess2016_VoteOnline_ItemGodPag[3008538] = {3008503,"0 0 0 10080 1"}

local tTheGoddess2016_VoteOnline_FlwID = {}
	-- 百合
	tTheGoddess2016_VoteOnline_FlwID[1] = {}
	tTheGoddess2016_VoteOnline_FlwID[1][1] = 752001
	tTheGoddess2016_VoteOnline_FlwID[1][3] = 752003
	tTheGoddess2016_VoteOnline_FlwID[1][9] = 752009
	tTheGoddess2016_VoteOnline_FlwID[1][99] = 752099
	tTheGoddess2016_VoteOnline_FlwID[1][999] = 752999
	
	-- 兰花
	tTheGoddess2016_VoteOnline_FlwID[2] = {}
	tTheGoddess2016_VoteOnline_FlwID[2][1] = 753001
	tTheGoddess2016_VoteOnline_FlwID[2][3] = 753003
	tTheGoddess2016_VoteOnline_FlwID[2][9] = 753009
	tTheGoddess2016_VoteOnline_FlwID[2][99] = 753099
	tTheGoddess2016_VoteOnline_FlwID[2][999] = 753999

	-- 玫瑰
	tTheGoddess2016_VoteOnline_FlwID[3] = {}
	tTheGoddess2016_VoteOnline_FlwID[3][1] = 751001
	tTheGoddess2016_VoteOnline_FlwID[3][3] = 751003
	tTheGoddess2016_VoteOnline_FlwID[3][9] = 751009
	tTheGoddess2016_VoteOnline_FlwID[3][99] = 751099
	tTheGoddess2016_VoteOnline_FlwID[3][999] = 751999
	
	-- 郁金香
	tTheGoddess2016_VoteOnline_FlwID[4] = {}
	tTheGoddess2016_VoteOnline_FlwID[4][1] = 754001
	tTheGoddess2016_VoteOnline_FlwID[4][3] = 754003
	tTheGoddess2016_VoteOnline_FlwID[4][9] = 754009
	tTheGoddess2016_VoteOnline_FlwID[4][99] = 754099
	tTheGoddess2016_VoteOnline_FlwID[4][999] = 754999

		
-- 积分礼包
local tTheGoddess2016_VoteOnline_JFpack = {}
	tTheGoddess2016_VoteOnline_JFpack[200] = 3007411
	tTheGoddess2016_VoteOnline_JFpack[1000] = 3007412
	tTheGoddess2016_VoteOnline_JFpack[3000] = 3007413
	
-- LOG 记录	
local tTheGoddess2016_VoteOnline_Log = {}
	-- 成功上交花朵记录一个上交LOG
	tTheGoddess2016_VoteOnline_Log["HandFlower"] = "0,0,%d,%d,12000203,1[3],0,%d"
	-- 成功上交天石记录LOG
	tTheGoddess2016_VoteOnline_Log["HandEMoney"] = "0,0,2,%d,12000203,1[3],0,%d"
	-- 换取积分礼包LOG
	tTheGoddess2016_VoteOnline_Log["GetPack"] = "0,0,0,0,12000203,2,%d,1"
	-- 指环换外套
	tTheGoddess2016_VoteOnline_Log["Ring2Coat"] = "0,0,%d,%d,12000203,2,%d,1"
	-- 指环换气力值
	tTheGoddess2016_VoteOnline_Log["Ring2Streng"] = "0,0,%d,%d,12000203,12,%d,1"
	-- 花神礼包开启LOG
	tTheGoddess2016_VoteOnline_Log["OpenGodPag"] = "0,0,%d,1,12000203,2,%d,1"

local tTheGoddess2016_VoteOnline_EmoneyLog = {}
	tTheGoddess2016_VoteOnline_EmoneyLog["EmoneyVote"] = "250	4080	%d	%d	1	" 	-- 天石投票
	tTheGoddess2016_VoteOnline_EmoneyLog["FlwVote"] = {}
	tTheGoddess2016_VoteOnline_EmoneyLog["FlwVote"][1] = "350	20094	%d	%d	1	" 		-- 百合花投票
	tTheGoddess2016_VoteOnline_EmoneyLog["FlwVote"][2] = "350	20096	%d	%d	1	" 		-- 兰花投票
	tTheGoddess2016_VoteOnline_EmoneyLog["FlwVote"][3] = "350	20095	%d	%d	1	" 		-- 玫瑰花投票
	tTheGoddess2016_VoteOnline_EmoneyLog["FlwVote"][4] = "350	20097	%d	%d	1	" 		-- 郁金香投票

	
-- Npc选项函数表
local tTheGoddess2016_VoteOnline_NpcFunc = {}
	tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc111"] = "TheGoddess2016_VoteOnline_WebDialog</N>%d"
	tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc121"] = "TheGoddess2016_VoteOnline_OptionPoint</N>%d</S>2-1"
	tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc122"] = "TheGoddess2016_VoteOnline_OpenShop</N>%d"
	tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc123"] = "TheGoddess2016_VoteOnline_OptionPoint</N>%d</S>5-1"
	tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc124"] = "TheGoddess2016_VoteOnline_OptionPoint</N>%d</S>7-1"
	tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc125"] = "TheGoddess2016_VoteOnline_WebDialog</N>%d"
	tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc126"] = "TheGoddess2016_VoteOnline_OptionPoint</N>%d</S>8-1"
	tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc127"] = "TheGoddess2016_VoteOnline_OptionPoint</N>%d</S>8-2"
	tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc131"] = "TheGoddess2016_VoteOnline_WebDialog</N>%d"
	tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc141"] = "TheGoddess2016_VoteOnline_OptionPoint</N>%d</S>2-1"
	tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc143"] = "TheGoddess2016_VoteOnline_OptionPoint</N>%d</S>5-1"
	tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc144"] = "TheGoddess2016_VoteOnline_OptionPoint</N>%d</S>7-1"
	tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc145"] = "TheGoddess2016_VoteOnline_WebDialog</N>%d"
	tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc146"] = "TheGoddess2016_VoteOnline_OptionPoint</N>%d</S>8-1"
	tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc147"] = "TheGoddess2016_VoteOnline_OptionPoint</N>%d</S>8-2"
	tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc211"] = "TheGoddess2016_VoteOnline_VoteOption</N>%d</N>3</N>1"
	tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc212"] = "TheGoddess2016_VoteOnline_VoteOption</N>%d</N>3</N>2"
	tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc213"] = "TheGoddess2016_VoteOnline_VoteOption</N>%d</N>3</N>3"
	tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc214"] = "TheGoddess2016_VoteOnline_VoteOption</N>%d</N>3</N>4"
	tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc215"] = "TheGoddess2016_VoteOnline_VoteOption</N>%d</N>3</N>5"
	tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc216"] = "TheGoddess2016_VoteOnline_OptionPoint</N>%d</S>1-2"
	tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc221"] = "TheGoddess2016_VoteOnline_VoteOption</N>%d</N>4</N>1"
	tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc222"] = "TheGoddess2016_VoteOnline_InputEMyNum</N>%d"
	tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc231"] = "TheGoddess2016_VoteOnline_VoteOption</N>%d</N>5</N>1"
	tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc232"] = "TheGoddess2016_VoteOnline_VoteOption</N>%d</N>5</N>2"
	tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc233"] = "TheGoddess2016_VoteOnline_VoteOption</N>%d</N>5</N>3"
	tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc234"] = "TheGoddess2016_VoteOnline_VoteOption</N>%d</N>5</N>4"
	tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc235"] = "TheGoddess2016_VoteOnline_OptionPoint</N>%d</S>2-2"
	tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc241"] = "TheGoddess2016_VoteOnline_VoteOption</N>%d</N>6</N>1"
	tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc242"] = "TheGoddess2016_VoteOnline_VoteOption</N>%d</N>6</N>3"
	tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc243"] = "TheGoddess2016_VoteOnline_VoteOption</N>%d</N>6</N>9"
	tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc244"] = "TheGoddess2016_VoteOnline_VoteOption</N>%d</N>6</N>99"
	tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc245"] = "TheGoddess2016_VoteOnline_VoteOption</N>%d</N>6</N>999"
	tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc246"] = "TheGoddess2016_VoteOnline_OptionPoint</N>%d</S>2-3"
	tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc311"] = "TheGoddess2016_VoteOnline_InputFlwNum</N>%d"
	tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc441"] = "TheGoddess2016_VoteOnline_InputEMyNum</N>%d"
	tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc511"] = "TheGoddess2016_VoteOnline_ChkGiftPint</N>%d</N>1</S>6-1"
	tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc512"] = "TheGoddess2016_VoteOnline_ChkGiftPint</N>%d</N>2</S>6-2"
	tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc513"] = "TheGoddess2016_VoteOnline_ChkGiftPint</N>%d</N>3</S>6-3"
	tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc514"] = "TheGoddess2016_VoteOnline_OptionPoint</N>%d</S>1-2"
	tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc611"] = "TheGoddess2016_VoteOnline_Pint2Gfit</N>%d</N>1"
	tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc612"] = "TheGoddess2016_VoteOnline_OptionPoint</N>%d</S>5-1"
	tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc621"] = "TheGoddess2016_VoteOnline_Pint2Gfit</N>%d</N>2"
	tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc622"] = "TheGoddess2016_VoteOnline_OptionPoint</N>%d</S>5-1"
	tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc631"] = "TheGoddess2016_VoteOnline_Pint2Gfit</N>%d</N>3"
	tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc632"] = "TheGoddess2016_VoteOnline_OptionPoint</N>%d</S>5-1"
	tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc711"] = "TheGoddess2016_VoteOnline_Ring2Coat</N>%d</N>5"
	tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc712"] = "TheGoddess2016_VoteOnline_Ring2Coat</N>%d</N>30"
	tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc713"] = "TheGoddess2016_VoteOnline_Ring2Coat</N>%d</N>40"
	
	tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc821"] = "TheGoddess2016_VoteOnline_OptionPoint</N>%d</S>9-1"
	tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc822"] = "TheGoddess2016_VoteOnline_OptionPoint</N>%d</S>9-2"
	tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc823"] = "TheGoddess2016_VoteOnline_OptionPoint</N>%d</S>9-3"
	tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc931"] = "TheGoddess2016_VoteOnline_OptionPoint</N>%d</S>9-4"

---------------------------------------------------逻辑部分--------------------------------------------------
-- 网页跳转
function TheGoddess2016_VoteOnline_WebDialog(nNpcId)
	User_SendWebDialog(tTheGoddess2016_VoteOnline_Cont["Web"])
end


-- 打开天石商店
function TheGoddess2016_VoteOnline_OpenShop(nNpcId)
	if not Sys_ChkFullTime(tTheGoddess2016_VoteOnline_Cont["ActivityTime4"]) then
		if not Sys_ChkDayTime(tTheGoddess2016_VoteOnline_Cont["DailyTime"]) then
			return
		end
	end

	if Sys_ChkFullTime(tTheGoddess2016_VoteOnline_Cont["ActivityAllTime2"]) then
		User_OpenDialog()
	end
end

-- 执行加积分函数
function TheGoddess2016_VoteOnline_AddPoint(nNpcId,nPoint,nGlobalPos,nAddNum)
	local nEvent_1 = tTheGoddess2016_VoteOnline_Stc[1]["EventData"]
	local nType_1 = tTheGoddess2016_VoteOnline_Stc[1]["TypeData"]
	local nEvent_2 = tTheGoddess2016_VoteOnline_Stc[2]["EventData"]
	local nType_2 = tTheGoddess2016_VoteOnline_Stc[2]["TypeData"]

	-- 玩家粉丝积分增加
	Task_AddStatistic(nEvent_1,nType_1,nPoint,1)
	Task_AddStatistic(nEvent_2,nType_2,nPoint,1)
	
	-- 男神\女神积分增加
	local nStcValue_3 = Get_UserStatisticValue(tTheGoddess2016_VoteOnline_Stc[3]["EventData"],tTheGoddess2016_VoteOnline_Stc[3]["TypeData"])
	local nStcValue_6 = Get_UserStatisticValue(tTheGoddess2016_VoteOnline_Stc[6]["EventData"],tTheGoddess2016_VoteOnline_Stc[6]["TypeData"])
	local nGodGlobal = tTheGoddess2016_VoteOnline_Global[nNpcId][nStcValue_3]
	local nGodPoint = Get_SysDynaGlobalData0(nGodGlobal) + nPoint
	Sys_SetSynaGlobalData0(nGodGlobal,nGodPoint)

	-- 天石增加数量
	local nTotalNum = Get_SysDynaGlobalData(nGodGlobal,nGlobalPos) + nAddNum * nStcValue_6
	-- 对应鲜花数量增加
	if nGlobalPos == 5 then
		nTotalNum = Get_SysDynaGlobalData(nGodGlobal,nGlobalPos) + nAddNum
	end
	
	Sys_SetSynaGlobalData(nGodGlobal,nGlobalPos,nTotalNum)
	
	-- 对白
	User_EffectAdd(tTheGoddess2016_VoteOnline_Effect["Self"],tTheGoddess2016_VoteOnline_Effect["HandIn"])
	LinkNpcGossipFunc_New(nNpcId,"2-7")
end


-- 点击选项后 用STC记录玩家点击的是哪个男神\女神
function TheGoddess2016_VoteOnline_VoteOption(nNpcId,nStcNum,nStcData)
	-- 活动时间
	if not Sys_ChkFullTime(tTheGoddess2016_VoteOnline_Cont["ActivityAllTime2"]) then
		TheGoddess2016_VoteOnline_Dialog(nNpcId,"1-1")
		return
	end
	
	local nEvent = tTheGoddess2016_VoteOnline_Stc[nStcNum]["EventData"]
	local nDataType = tTheGoddess2016_VoteOnline_Stc[nStcNum]["TypeData"]

	if Task_SetStatistic(nEvent,nDataType,nStcData,1) then
		if nStcNum ~= 6 then
			TheGoddess2016_VoteOnline_Dialog(nNpcId,tTheGoddess2016_VoteOnline_Stc[nStcNum]["Dialog"])
		else
			TheGoddess2016_VoteOnline_InputFlwNum(nNpcId)
		end
	end
end

-- 删鲜花给积分
function TheGoddess2016_VoteOnline_DoFlwPiont(nNpcId,nItemNum)
	-- 活动时间
	if not Sys_ChkFullTime(tTheGoddess2016_VoteOnline_Cont["ActivityAllTime2"]) then
		TheGoddess2016_VoteOnline_Dialog(nNpcId,"1-1")
		return
	end

	-- 删除鲜花
	local nStcValue_5 = Get_UserStatisticValue(tTheGoddess2016_VoteOnline_Stc[5]["EventData"],tTheGoddess2016_VoteOnline_Stc[5]["TypeData"])
	local nStcValue_6 = Get_UserStatisticValue(tTheGoddess2016_VoteOnline_Stc[6]["EventData"],tTheGoddess2016_VoteOnline_Stc[6]["TypeData"])
	local nItemId = tTheGoddess2016_VoteOnline_FlwID[nStcValue_5][nStcValue_6]
	local sItemName = Get_ItemtypeName(nItemId)
	if Item_ChkMulItem(nItemId,nItemId,nItemNum,1) and Item_DelMulItem(nItemId,nItemId,nItemNum,1) then
		-- 总积分
		local nPoint = nStcValue_6 * nItemNum * tTheGoddess2016_VoteOnline_FlwPoint[nStcValue_5]
		
		-- 加积分
		TheGoddess2016_VoteOnline_AddPoint(nNpcId,nPoint,nStcValue_5,nItemNum)
		
		-- 为999朵的花,出全服公告
		if nStcValue_6 == tTheGoddess2016_VoteOnline_Cont["BroadcastFlw"] then
			local nStcValue_3 = Get_UserStatisticValue(tTheGoddess2016_VoteOnline_Stc[3]["EventData"],tTheGoddess2016_VoteOnline_Stc[3]["TypeData"])
			local nGodGlobal = tTheGoddess2016_VoteOnline_Global[nNpcId][nStcValue_3]
			local sGodName = Get_SysDynaGlobalDataStr(nGodGlobal,0)
			local sUserName = Get_UserName()
			local sText = string.format(tTheGoddess2016_VoteOnline_Text["Broadcast"],sUserName,sGodName,nItemNum,sItemName)
			Sys_NormalBroadcast(sText)
		end
		
		-- 记录LOG
		local nFlwNum = nStcValue_6 * nItemNum
		Sys_SaveEmoneyBuy(string.format(tTheGoddess2016_VoteOnline_EmoneyLog["FlwVote"][nStcValue_5],nFlwNum,nFlwNum))
		Sys_SaveActionFestivalLog(string.format(tTheGoddess2016_VoteOnline_Log["HandFlower"],nItemId,nItemNum,nPoint))
	else
		tNpcGossip[19085]["Text321"] = string.format(tTheGoddess2016_VoteOnline_Text[nNpcId]["Text321"],sItemName)
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return
	end
end


-- 输入鲜花数量二次确认
function TheGoddess2016_VoteOnline_DoFlwInput(nNpcId,nStcValue_6)
	-- 活动时间
	if not Sys_ChkFullTime(tTheGoddess2016_VoteOnline_Cont["ActivityAllTime2"]) then
		TheGoddess2016_VoteOnline_Dialog(nNpcId,"1-1")
		return
	end
	
	-- 输入字符判断
	local nItemNum = tonumber(Get_SysAcceptStr())
	if type(nItemNum) ~= "number" or nItemNum <= 0 then
		TheGoddess2016_VoteOnline_Dialog(nNpcId,"3-1")
		return
	end

	-- 数量不够
	local nStcValue_5 = Get_UserStatisticValue(tTheGoddess2016_VoteOnline_Stc[5]["EventData"],tTheGoddess2016_VoteOnline_Stc[5]["TypeData"])
	local nItemId = tTheGoddess2016_VoteOnline_FlwID[nStcValue_5][nStcValue_6]
	local sItemName = Get_ItemtypeName(nItemId)
	if not Item_ChkMulItem(nItemId,nItemId,nItemNum,1) then
		tNpcGossip[19085]["Text321"] = string.format(tTheGoddess2016_VoteOnline_Text[nNpcId]["Text321"],sItemName)
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return
	end
	
	local nStcValue_3 = Get_UserStatisticValue(tTheGoddess2016_VoteOnline_Stc[3]["EventData"],tTheGoddess2016_VoteOnline_Stc[3]["TypeData"])
	local nGlobal = tTheGoddess2016_VoteOnline_Global[nNpcId][nStcValue_3]
	local sGodName = Get_SysDynaGlobalDataStr(nGlobal,0)
	-- 总积分数
	local nPoint = nStcValue_6 * nItemNum * tTheGoddess2016_VoteOnline_FlwPoint[nStcValue_5]
	local sText1 = tTheGoddess2016_VoteOnline_Text[nNpcId]["Text261"]
	local sText2 = tTheGoddess2016_VoteOnline_Text[nNpcId]["Text262"]
	local sOption1 = tTheGoddess2016_VoteOnline_Text[nNpcId]["Option261"]

	tNpcGossip[19085]["Text261"] = string.format(sText1,nItemNum,sItemName,sGodName,nPoint)
	tNpcGossip[19085]["Text262"] = string.format(sText2,nPoint)
	tNpcGossip[19085]["Option261"] = string.format(sOption1,sGodName)
	tNpcGossip[19085]["OptionFunc261"] = string.format("TheGoddess2016_VoteOnline_DoFlwPiont</N>%d</N>%d",nNpcId,nItemNum)
	tNpcGossip[19085]["OptionFunc262"] = string.format("TheGoddess2016_VoteOnline_InputFlwNum</N>%d",nNpcId)
	LinkNpcGossipFunc_New(nNpcId,"2-6")
end


-- 输入花的数量
function TheGoddess2016_VoteOnline_InputFlwNum(nNpcId)
	-- 活动时间
	if not Sys_ChkFullTime(tTheGoddess2016_VoteOnline_Cont["ActivityAllTime2"]) then
		TheGoddess2016_VoteOnline_Dialog(nNpcId,"1-1")
		return
	end
	local nStcFlwName = Get_UserStatisticValue(tTheGoddess2016_VoteOnline_Stc[5]["EventData"],tTheGoddess2016_VoteOnline_Stc[5]["TypeData"])
	-- local sFlwName = tTheGoddess2016_VoteOnline_Text["FlwName"][nStcFlwName]

	-- 输入框对白
	local nStcValue_5 = Get_UserStatisticValue(tTheGoddess2016_VoteOnline_Stc[5]["EventData"],tTheGoddess2016_VoteOnline_Stc[5]["TypeData"])
	local nStcValue_6 = Get_UserStatisticValue(tTheGoddess2016_VoteOnline_Stc[6]["EventData"],tTheGoddess2016_VoteOnline_Stc[6]["TypeData"])
	local sFlwName = Get_ItemtypeName(tTheGoddess2016_VoteOnline_FlwID[nStcValue_5][nStcValue_6])
	local sDialogText1 = string.format(tTheGoddess2016_VoteOnline_Text[nNpcId]["Text251"],sFlwName)
	local sDialogText2 = tTheGoddess2016_VoteOnline_Text[nNpcId]["Text252"]
	local sOptEditText = tTheGoddess2016_VoteOnline_Text[nNpcId]["Option251"]
	local nOptEditLen = tTheGoddess2016_VoteOnline_Cont["OptEditLen"]
	local sOptEditFunc = string.format("TheGoddess2016_VoteOnline_DoFlwInput</N>%d</N>%d",nNpcId,nStcValue_6)
	local sOptionFunc = string.format("</F>TheGoddess2016_VoteOnline_Dialog</N>%d</S>2-4",nNpcId)
	-- Sys_DialogTaskClear()
	Sys_DialogText(sDialogText1)
	Sys_DialogText(sDialogText2)
	Sys_DialogOptEdit(sOptEditText,nOptEditLen,sOptEditFunc)
	Sys_DialogOption(tTheGoddess2016_VoteOnline_Text[nNpcId]["Option252"],sOptionFunc)
	-- Sys_DialogOption(tTheGoddess2016_VoteOnline_Text[nNpcId]["Option253"],"</F>NULL")
	Sys_DialogFace(nNpcId)
	Sys_DialogEnd()
end


---------------------------------------------------------------------------------------------------
-- 减天石加积分
function TheGoddess2016_VoteOnline_DoEMyPiont(nNpcId,nEMyNum)
	-- 活动时间
	if not Sys_ChkFullTime(tTheGoddess2016_VoteOnline_Cont["ActivityAllTime2"]) then
		TheGoddess2016_VoteOnline_Dialog(nNpcId,"1-1")
		return
	end
	
	-- 减天石
	if User_AddEMoney(-nEMyNum) then
		-- 总积分
		local nPoint = nEMyNum * tTheGoddess2016_VoteOnline_Cont["EMy2Point"]
		
		-- 加积分
		TheGoddess2016_VoteOnline_AddPoint(nNpcId,nPoint,5,nEMyNum)
		
		-- 记录LOG
		Sys_SaveEmoneyBuy(string.format(tTheGoddess2016_VoteOnline_EmoneyLog["EmoneyVote"],nEMyNum,nEMyNum))
		Sys_SaveActionFestivalLog(string.format(tTheGoddess2016_VoteOnline_Log["HandEMoney"],nEMyNum,nPoint))
	else
		TheGoddess2016_VoteOnline_Dialog(nNpcId,"4-3")
		return
	end
end


-- 输入天石数量二次确认
function TheGoddess2016_VoteOnline_DoEMyInput(nNpcId)
	-- 活动时间
	if not Sys_ChkFullTime(tTheGoddess2016_VoteOnline_Cont["ActivityAllTime2"]) then
		TheGoddess2016_VoteOnline_Dialog(nNpcId,"1-1")
		return
	end
	
	-- 输入字符判断
	local nEMyNum = tonumber(Get_SysAcceptStr())
	if type(nEMyNum) ~= "number" or nEMyNum <= 0 then
		TheGoddess2016_VoteOnline_Dialog(nNpcId,"4-4")
		return
	end
	
	-- 数量不够
	if Get_UserEMoney() < nEMyNum then
		TheGoddess2016_VoteOnline_Dialog(nNpcId,"4-3")
		return
	end
	
	local nStcValue_3 = Get_UserStatisticValue(tTheGoddess2016_VoteOnline_Stc[3]["EventData"],tTheGoddess2016_VoteOnline_Stc[3]["TypeData"])
	local nGlobal = tTheGoddess2016_VoteOnline_Global[nNpcId][nStcValue_3]
	local sGodName = Get_SysDynaGlobalDataStr(nGlobal,0)
	
	-- 总分数
	local nPoint = nEMyNum * tTheGoddess2016_VoteOnline_Cont["EMy2Point"]
	local sText1 = tTheGoddess2016_VoteOnline_Text[nNpcId]["Text421"]
	local sText2 = tTheGoddess2016_VoteOnline_Text[nNpcId]["Text422"]
	local sOption1 = tTheGoddess2016_VoteOnline_Text[nNpcId]["Option421"]
	tNpcGossip[19085]["Text421"] = string.format(sText1,nEMyNum,sGodName,nPoint)
	tNpcGossip[19085]["Text422"] = string.format(sText2,nPoint)
	tNpcGossip[19085]["Option421"] = string.format(sOption1,sGodName)
	tNpcGossip[19085]["OptionFunc421"] = string.format("TheGoddess2016_VoteOnline_DoEMyPiont</N>%d</N>%d",nNpcId,nEMyNum)
	tNpcGossip[19085]["OptionFunc422"] = string.format("TheGoddess2016_VoteOnline_InputEMyNum</N>%d",nNpcId)
	LinkNpcGossipFunc_New(nNpcId,"4-2")
end


-- 输入天石的数量
function TheGoddess2016_VoteOnline_InputEMyNum(nNpcId)
	-- 活动时间
	if not Sys_ChkFullTime(tTheGoddess2016_VoteOnline_Cont["ActivityAllTime2"]) then
		TheGoddess2016_VoteOnline_Dialog(nNpcId,"1-1")
		return
	end
	
	local nStcValue_3 = Get_UserStatisticValue(tTheGoddess2016_VoteOnline_Stc[3]["EventData"],tTheGoddess2016_VoteOnline_Stc[3]["TypeData"])
	local nGlobal = tTheGoddess2016_VoteOnline_Global[nNpcId][nStcValue_3]
	local sGodName = Get_SysDynaGlobalDataStr(nGlobal,0)

	local sDialogText1 = string.format(tTheGoddess2016_VoteOnline_Text[nNpcId]["Text411"],sGodName)
	local sDialogText2 = tTheGoddess2016_VoteOnline_Text[nNpcId]["Text412"]
	local sOptEditText = tTheGoddess2016_VoteOnline_Text[nNpcId]["Option411"]
	local nOptEditLen = tTheGoddess2016_VoteOnline_Cont["OptEditLen"]
	local sOptEditFunc = string.format("TheGoddess2016_VoteOnline_DoEMyInput</N>%d",nNpcId)
	local sOptionFunc = string.format("</F>TheGoddess2016_VoteOnline_OptionPoint</N>%d</S>2-2",nNpcId)
	-- Sys_DialogTaskClear()
	Sys_DialogText(sDialogText1)
	Sys_DialogText(sDialogText2)
	Sys_DialogOptEdit(sOptEditText,nOptEditLen,sOptEditFunc)
	Sys_DialogOption(tTheGoddess2016_VoteOnline_Text[nNpcId]["Option412"],sOptionFunc)
	-- Sys_DialogOption(tTheGoddess2016_VoteOnline_Text[nNpcId]["Option413"],"</F>NULL")
	Sys_DialogFace(nNpcId)
	Sys_DialogEnd()
end

--------------------------------------------------------------------------------------------------------
-- 判断兑换礼包积分是否足够
function TheGoddess2016_VoteOnline_ChkGiftPint(nNpcId,nType,sDialog)
	-- 活动后
	if not Sys_ChkFullTime(tTheGoddess2016_VoteOnline_Cont["ActivityAllTime2"]) then
		TheGoddess2016_VoteOnline_Dialog(nNpcId,"1-1")
		return
	end

	-- 积分不够
	local nStcValue_2 = Get_UserStatisticValue(tTheGoddess2016_VoteOnline_Stc[2]["EventData"],tTheGoddess2016_VoteOnline_Stc[2]["TypeData"])
	if nStcValue_2 < tTheGoddess2016_VoteOnline_GiftPoint[nType] then
		tNpcGossip[19085]["Text521"] = string.format(tTheGoddess2016_VoteOnline_Text[19085]["Text521"],tTheGoddess2016_VoteOnline_GiftPoint[nType])
		LinkNpcGossipFunc_New(nNpcId,"5-2")
		return
	end
	
	TheGoddess2016_VoteOnline_Dialog(nNpcId,sDialog)
end


-- 积分换粉丝礼包
function TheGoddess2016_VoteOnline_Pint2Gfit(nNpcId,nType)
	-- 活动后
	if not Sys_ChkFullTime(tTheGoddess2016_VoteOnline_Cont["ActivityAllTime2"]) then
		TheGoddess2016_VoteOnline_Dialog(nNpcId,"1-1")
		return
	end

	-- 积分不够
	local nEvent_2 = tTheGoddess2016_VoteOnline_Stc[2]["EventData"]
	local nType_2 = tTheGoddess2016_VoteOnline_Stc[2]["TypeData"]
	local nStcValue_2 = Get_UserStatisticValue(nEvent_2,nType_2)
	if nStcValue_2 < tTheGoddess2016_VoteOnline_GiftPoint[nType] then
		tNpcGossip[19085]["Text521"] = string.format(tTheGoddess2016_VoteOnline_Text[19085]["Text521"],tTheGoddess2016_VoteOnline_GiftPoint[nType])
		LinkNpcGossipFunc_New(nNpcId,"5-2")
		return
	end
	
	-- 背包空间
	if not User_CheckLeftSpace(tTheGoddess2016_VoteOnline_Cont["Space1"]) then
		User_TalkChannel2005(tTheGoddess2016_VoteOnline_Text["Space1"])
		return
	end
	
	-- 减积分给礼包
	-- local nGiftPoint = nStcValue_2 - tTheGoddess2016_VoteOnline_GiftPoint[nType]
	if Task_AddStatistic(nEvent_2,nType_2,-tTheGoddess2016_VoteOnline_GiftPoint[nType],1) then
		Item_AddItem(tTheGoddess2016_VoteOnline_GiftId[nType])
		User_EffectAdd(tTheGoddess2016_VoteOnline_Effect["Self"],tTheGoddess2016_VoteOnline_Effect["RewardPack"])
		Sys_SaveActionFestivalLog(tTheGoddess2016_VoteOnline_Log["GetPack"],tTheGoddess2016_VoteOnline_GiftId[nType])
		
		-- 提示
		local sItemName = Get_ItemtypeName(tTheGoddess2016_VoteOnline_GiftId[nType])
		tNpcGossip[19085]["Text641"] = string.format(tTheGoddess2016_VoteOnline_Text[nNpcId]["Text641"],sItemName)
		LinkNpcGossipFunc_New(nNpcId,"6-4")
	end
end

--------------------------------------------------------------------------------------------------------
-- 指环兑换气力值
function TheGoddess2016_VoteOnline_DoRingInput(nNpcId,nRingNum)
	-- 活动后
	if not Sys_ChkFullTime(tTheGoddess2016_VoteOnline_Cont["ActivityAllTime2"]) then
		TheGoddess2016_VoteOnline_Dialog(nNpcId,"1-1")
		return
	end
	
	-- 输入字符判断
	local nItemNum = tonumber(Get_SysAcceptStr())
	if type(nItemNum) ~= "number" or nItemNum <= 0 then
		TheGoddess2016_VoteOnline_Dialog(nNpcId,"3-1")
		return
	end
	
	-- 数量不够
	local nItemId = tTheGoddess2016_VoteOnline_Cont["RingId"]
	if not Item_ChkMulItem(nItemId,nItemId,nItemNum,1) then
		TheGoddess2016_VoteOnline_Dialog(nNpcId,"7-4")
		return
		
	-- 背包空间
	elseif not User_CheckLeftSpace(tTheGoddess2016_VoteOnline_Cont["Space1"]) then
		User_TalkChannel2005(tTheGoddess2016_VoteOnline_Text["Space1"])
		return
		
	-- 删指环给奖励
	elseif Item_DelMulItem(nItemId,nItemId,nItemNum,1) then
		-- 走几率
		if math.random(1 , nRingNum * 10000) <= nItemNum * 10000 then
			local nNewItemId = tTheGoddess2016_VoteOnline_Ring2CoatId[nRingNum]
			local sItemName = Get_ItemtypeName(nNewItemId)
			Item_AddItem(nNewItemId)
			User_EffectAdd(tTheGoddess2016_VoteOnline_Effect["Self"],tTheGoddess2016_VoteOnline_Effect["Ring2Coat"])
			Sys_SaveActionFestivalLog(string.format(tTheGoddess2016_VoteOnline_Log["Ring2Coat"],nItemId,nItemNum,nNewItemId))
			User_TalkChannel2005(string.format(tTheGoddess2016_VoteOnline_Text["RingProlCoat"],sItemName))
		
		-- 给气力值
		else
			local nValue = nItemNum * tTheGoddess2016_VoteOnline_Cont["Ring2Streng"]
			if User_AddStrengthValue(nValue) then
				User_EffectAdd(tTheGoddess2016_VoteOnline_Effect["Self"],tTheGoddess2016_VoteOnline_Effect["Ring2Streng"])
				Sys_SaveActionFestivalLog(tTheGoddess2016_VoteOnline_Log["Ring2Streng"],nItemId,nItemNum,nValue)
				-- 提示
				User_TalkChannel2005(string.format(tTheGoddess2016_VoteOnline_Text["Ring2Streng"],nValue))
			end
		end
	end
end


-- 指环换外套
function TheGoddess2016_VoteOnline_Ring2Coat(nNpcId,nRingNum)
	-- 活动后
	if not Sys_ChkFullTime(tTheGoddess2016_VoteOnline_Cont["ActivityAllTime2"]) then
		TheGoddess2016_VoteOnline_Dialog(nNpcId,"1-1")
		return
	end
	
	-- 是否有指环
	local nItemId = tTheGoddess2016_VoteOnline_Cont["RingId"]
	if not Item_ChkItem(nItemId,1) then
		TheGoddess2016_VoteOnline_Dialog(nNpcId,"7-2")
		return
	end
	
	-- 数量不够
	if not Item_ChkMulItem(nItemId,nItemId,nRingNum,1) then
		local sDialogText1 = tTheGoddess2016_VoteOnline_Text[nNpcId]["Text731"]
		local sDialogText2 = tTheGoddess2016_VoteOnline_Text[nNpcId]["Text732"]
		local sDialogText3 = tTheGoddess2016_VoteOnline_Text[nNpcId]["Text733"]
		local sOptEditText = tTheGoddess2016_VoteOnline_Text[nNpcId]["Option731"]
		local nOptEditLen = tTheGoddess2016_VoteOnline_Cont["OptEditLen"]
		local sOptEditFunc = string.format("</F>TheGoddess2016_VoteOnline_DoRingInput</N>%d</N>%d",nNpcId,nRingNum)
		-- Sys_DialogTaskClear()
		Sys_DialogText(sDialogText1)
		Sys_DialogText(sDialogText2)
		Sys_DialogText(sDialogText3)
		Sys_DialogOptEdit(sOptEditText,nOptEditLen,sOptEditFunc)
		Sys_DialogOption(tTheGoddess2016_VoteOnline_Text[nNpcId]["Option732"],"</F>NULL")
		Sys_DialogFace(nNpcId)
		Sys_DialogEnd()
		return
		
	-- 数量够
	elseif Item_DelMulItem(nItemId,nItemId,nRingNum,1) then
		local nNewItemId = tTheGoddess2016_VoteOnline_Ring2CoatId[nRingNum]
		local sItemName = Get_ItemtypeName(nNewItemId)
		Item_AddItem(nNewItemId)
		User_EffectAdd(tTheGoddess2016_VoteOnline_Effect["Self"],tTheGoddess2016_VoteOnline_Effect["Ring2Coat"])
		Sys_SaveActionFestivalLog(string.format(tTheGoddess2016_VoteOnline_Log["Ring2Coat"],nItemId,nRingNum,nNewItemId))
		User_TalkChannel2005(string.format(tTheGoddess2016_VoteOnline_Text["RingGotCoat"],sItemName))
	end
end


--------------------------------------------------------------------------------------------------------
-- 对白时间判断
function TheGoddess2016_VoteOnline_OptionPoint(nNpcId,sDialog)
	-- 活动后
	if not Sys_ChkFullTime(tTheGoddess2016_VoteOnline_Cont["ActivityAllTime2"]) then
		TheGoddess2016_VoteOnline_Dialog(nNpcId,"1-1")
		return
	end
	
	-- 复活赛
	if Sys_ChkFullTime(tTheGoddess2016_VoteOnline_Cont["ActivityTime3"]) then
		-- 主对白设置为1-4
		if sDialog == "1-2" then
			sDialog = "1-4"
		end
	end
	
	TheGoddess2016_VoteOnline_Dialog(nNpcId,sDialog)
end

-- 对白组合
function TheGoddess2016_VoteOnline_Dialog(nNpcId,sDialog)
	-- 对白部分
	for _,v in ipairs(tNpcGossip[19085]["Text".. sDialog]) do
		tNpcGossip[19085]["Text".. v] = tTheGoddess2016_VoteOnline_Text[nNpcId]["Text".. v]
	end
	
	local nGodNum = #tTheGoddess2016_VoteOnline_Global[nNpcId]
	-- 选项部分
	if sDialog == "2-1" then -- 为玩家投票选项
		tNpcGossip[19085]["tOption".. sDialog] = {}
		for i = 1 ,nGodNum do
			local nGlobal = tTheGoddess2016_VoteOnline_Global[nNpcId][i]
			if Get_SysDynaGlobalDataStr(nGlobal,1) ~= "" then
				table.insert(tNpcGossip[19085]["tOption".. sDialog],210 + i)
				tNpcGossip[19085]["Option".. (210 + i)] = string.format(tTheGoddess2016_VoteOnline_Text[nNpcId]["Option".. (210 + i)],Get_SysDynaGlobalDataStr(nGlobal,0))
				tNpcGossip[19085]["OptionFunc".. (210 + i)] = string.format(tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc".. (210 + i)],nNpcId,nGlobal)
			end
			
		end
		table.insert(tNpcGossip[19085]["tOption".. sDialog],216)
		table.insert(tNpcGossip[19085]["tOption".. sDialog],217)
		tNpcGossip[19085]["OptionFunc216"] = string.format(tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc216"],nNpcId)
	-- 正常选项
	else
		for i,v in ipairs(tNpcGossip[19085]["tOption".. sDialog]) do
			tNpcGossip[19085]["Option".. v] = tTheGoddess2016_VoteOnline_Text[nNpcId]["Option".. v]
			if tNpcGossip[19085]["OptionFunc".. v] ~= nil then
				tNpcGossip[19085]["OptionFunc".. v] = string.format(tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc".. v],nNpcId)
			end
		end
	end
	-- 出对白
	LinkNpcGossipFunc_New(nNpcId,sDialog)
end


-- NPC接入函数
function TheGoddess2016_VoteOnline_NpcInfo()
	local nNpcId = Get_NpcId()
	-- 活动中--前5名PK
	if Sys_ChkFullTime(tTheGoddess2016_VoteOnline_Cont["ActivityTime1"]) then
		TheGoddess2016_VoteOnline_Dialog(nNpcId,"1-2")
		return
	end
	
	-- 活动中--统计数据决出前3名
	if Sys_ChkFullTime(tTheGoddess2016_VoteOnline_Cont["ActivityTime2"]) then
		TheGoddess2016_VoteOnline_Dialog(nNpcId,"1-3")
		return
	end
	
	-- 活动中--剩余2名投票决第4名
	if Sys_ChkFullTime(tTheGoddess2016_VoteOnline_Cont["ActivityTime3"]) then
		TheGoddess2016_VoteOnline_Dialog(nNpcId,"1-4")
		return
	end

	-- 活动后
	TheGoddess2016_VoteOnline_Dialog(nNpcId,"1-1")
end

-------------------------------------------------------物品逻辑-------------------------------------------------
-- 花神礼包接入
function TheGoddess2016_VoteOnline_OpenGodPag(nItemId)
	-- 时间判断
	if not Sys_ChkFullTime(tTheGoddess2016_VoteOnline_Cont["ActivityTime1"]) then
		if Item_ChkItem(nItemId,1) and Item_DelItem(nItemId,1) then
			User_TalkChannel2005(tTheGoddess2016_VoteOnline_Text["GodPagOverTime"])
		end
		return
	end
	
	-- 23点-1点不能打开
	if not Sys_ChkFullTime(tTheGoddess2016_VoteOnline_Cont["ActivityTime4"]) then
		if not Sys_ChkDayTime(tTheGoddess2016_VoteOnline_Cont["DailyTime"]) then
			User_TalkChannel2005(tTheGoddess2016_VoteOnline_Text["GodPagNoOpen"])
			return
		end
	end
	
	-- 给彩蛋
	local nNewItemId = tTheGoddess2016_VoteOnline_ItemGodPag[nItemId][1]
	local sNewItemStr = tTheGoddess2016_VoteOnline_ItemGodPag[nItemId][2]
	local sNewItemName = Get_ItemtypeName(nNewItemId)
	if Item_ChkItem(nItemId,1) and Item_DelItem(nItemId,1) then
		Item_AddNewItem(nNewItemId,sNewItemStr)
		Sys_SaveActionFestivalLog(string.format(tTheGoddess2016_VoteOnline_Log["OpenGodPag"],nItemId,nNewItemId))
		User_TalkChannel2005(string.format(tTheGoddess2016_VoteOnline_Text["OpenItem"],sNewItemName))
	end
end


-- 发型
function TheGoddess2016_VoteOnline_Hair(nItemId,nSex)
	local nEvent_7 = tTheGoddess2016_VoteOnline_Stc[nItemId]["EventData"]
	local nType_7 = tTheGoddess2016_VoteOnline_Stc[nItemId]["TypeData"]
	
	if not Item_ChkItem(nItemId) then
		return
	end
	
	-- 性别判断
	if nSex ~= nil then
		if Get_UserSex() ~= nSex then
			Sys_MsgBox(tTheGoddess2016_VoteOnline_Text["HairSex"][nSex])
			return
		end
	end
	
	-- 发型更换10秒CD
	if not Task_StcInterval(nEvent_7,nType_7,tTheGoddess2016_VoteOnline_Cont["HairCD"],0) then
		if not Task_ChkStcValue(nEvent_7,nType_7,"==",0) then
			Sys_MsgBox(tTheGoddess2016_VoteOnline_Text["HairCD"])
			return 
		end
	end
	
	
	
	if tTheGoddess2016_VoteOnline_Cont["schgmapType"] then
		-- 萌动猫耳发型（一次性）--删除物品
		if nSex == nil and Item_ChkItem(nItemId) then
			Item_DelItem(nItemId)
		end
		
		Task_SetStatistic(nEvent_7,nType_7,1,1)
		Task_SetStcTimestamp(nEvent_7,nType_7,0)
		if not User_HairFaceCheckExist(0,tTheGoddess2016_VoteOnline_Cont["typeId"][nItemId]) then
			User_HairFaceAward(0,tTheGoddess2016_VoteOnline_Cont["typeId"][nItemId],0)
		end
		User_ChangeUserHair(tTheGoddess2016_VoteOnline_Cont["typeId"][nItemId])
		User_TalkChannel2005(string.format(tTheGoddess2016_VoteOnline_Text["ChageHair"],Get_ItemtypeName(nItemId)))
	end
end

----------------------------------------------------NPC模版对白配置-------------------------------------------
-- 男神争冠赛大使
tNpcFace[5104] = 137 -- 男神
tNpcFace[5103] = 112 -- 女神
tNpcGossip[19085] = tNpcGossip[19085] or DefaultNpc:new{}
tNpcGossip[19086] = tNpcGossip[19085] or DefaultNpc:new{}
tNpcGossip[19085]["OptionHidden"] = 1
-- 活动后
tNpcGossip[19085]["Text1-1"] = {111,112,113}
tNpcGossip[19085]["Text111"] = tTheGoddess2016_VoteOnline_Text[19085]["Text111"]
tNpcGossip[19085]["Text112"] = tTheGoddess2016_VoteOnline_Text[19085]["Text112"]
tNpcGossip[19085]["Text113"] = tTheGoddess2016_VoteOnline_Text[19085]["Text113"]
tNpcGossip[19085]["tOption1-1"] = {111,112}
tNpcGossip[19085]["Option111"] = tTheGoddess2016_VoteOnline_Text[19085]["Option111"]
tNpcGossip[19085]["Option112"] = tTheGoddess2016_VoteOnline_Text[19085]["Option112"]
tNpcGossip[19085]["OptionFunc111"] = tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc111"]

-- 活动中--前5名投票
tNpcGossip[19085]["Text1-2"] = {121,122,123,124}
tNpcGossip[19085]["Text121"] = tTheGoddess2016_VoteOnline_Text[19085]["Text121"]
tNpcGossip[19085]["Text122"] = tTheGoddess2016_VoteOnline_Text[19085]["Text122"]
tNpcGossip[19085]["Text123"] = tTheGoddess2016_VoteOnline_Text[19085]["Text123"]
tNpcGossip[19085]["Text124"] = tTheGoddess2016_VoteOnline_Text[19085]["Text124"]
-- tNpcGossip[19085]["tOption1-2"] = {121,122,123,124,125,126,127,128}
tNpcGossip[19085]["tOption1-2"] = {121,122,123,125,126,127,128} -- 去掉荣誉指环换外套选项

tNpcGossip[19085]["Option121"] = tTheGoddess2016_VoteOnline_Text[19085]["Option121"]
tNpcGossip[19085]["Option122"] = tTheGoddess2016_VoteOnline_Text[19085]["Option122"]
tNpcGossip[19085]["Option123"] = tTheGoddess2016_VoteOnline_Text[19085]["Option123"]
tNpcGossip[19085]["Option124"] = tTheGoddess2016_VoteOnline_Text[19085]["Option124"]
tNpcGossip[19085]["Option125"] = tTheGoddess2016_VoteOnline_Text[19085]["Option125"]
tNpcGossip[19085]["Option126"] = tTheGoddess2016_VoteOnline_Text[19085]["Option126"]
tNpcGossip[19085]["Option127"] = tTheGoddess2016_VoteOnline_Text[19085]["Option127"]
tNpcGossip[19085]["Option128"] = tTheGoddess2016_VoteOnline_Text[19085]["Option128"]
tNpcGossip[19085]["OptionFunc121"] = tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc121"]
tNpcGossip[19085]["OptionFunc122"] = tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc122"]
tNpcGossip[19085]["OptionFunc123"] = tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc123"]
tNpcGossip[19085]["OptionFunc124"] = tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc124"]
tNpcGossip[19085]["OptionFunc125"] = tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc125"]
tNpcGossip[19085]["OptionFunc126"] = tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc126"]
tNpcGossip[19085]["OptionFunc127"] = tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc127"]
tNpcGossip[19085]["OptionChkFunc121"] = function() -- 没有参数者不显示选项
	for _,v in ipairs(tTheGoddess2016_VoteOnline_Global[Get_NpcId()]) do
		if Get_SysDynaGlobalDataStr(v,1) ~= "" then
			return true
		end
	end
	
	return false
end
tNpcGossip[19085]["OptionChkFunc122"] = function() -- 男（女）参赛者显示选项
	-- 统计数据屏蔽选项（23点-1点）
	if not Sys_ChkFullTime(tTheGoddess2016_VoteOnline_Cont["ActivityTime4"]) then
		if not Sys_ChkDayTime(tTheGoddess2016_VoteOnline_Cont["DailyTime"]) then
			return false
		end
	end

	for _,v in ipairs(tTheGoddess2016_VoteOnline_Global[Get_NpcId()]) do
		local nPlayerId = Get_UserId()
		local nGodPlayerId = tonumber(Get_SysDynaGlobalDataStr(v,1))
		if nPlayerId == nGodPlayerId then
			return true
		end
	end
	return false
end
tNpcGossip[19085]["OptionChkFunc124"] = tNpcGossip[19085]["OptionChkFunc122"]


-- 活动中--统计数据决出前3名
tNpcGossip[19085]["Text1-3"] = {131,132,133}
tNpcGossip[19085]["Text131"] = tTheGoddess2016_VoteOnline_Text[19085]["Text131"]
tNpcGossip[19085]["Text132"] = tTheGoddess2016_VoteOnline_Text[19085]["Text132"]
tNpcGossip[19085]["Text133"] = tTheGoddess2016_VoteOnline_Text[19085]["Text133"]
tNpcGossip[19085]["tOption1-3"] = {131,132}
tNpcGossip[19085]["Option131"] = tTheGoddess2016_VoteOnline_Text[19085]["Option131"]
tNpcGossip[19085]["Option132"] = tTheGoddess2016_VoteOnline_Text[19085]["Option132"]
tNpcGossip[19085]["OptionFunc131"] = tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc131"]
-- 活动中--剩余2名投票决第4名
tNpcGossip[19085]["Text1-4"] = {141,142,143}
tNpcGossip[19085]["Text141"] = tTheGoddess2016_VoteOnline_Text[19085]["Text141"]
tNpcGossip[19085]["Text142"] = tTheGoddess2016_VoteOnline_Text[19085]["Text142"]
tNpcGossip[19085]["Text143"] = tTheGoddess2016_VoteOnline_Text[19085]["Text143"]
-- tNpcGossip[19085]["tOption1-4"] = {141,143,144,145,146,147,148}
tNpcGossip[19085]["tOption1-4"] = {141,143,145,146,147,148}
tNpcGossip[19085]["Option141"] = tTheGoddess2016_VoteOnline_Text[19085]["Option141"]
tNpcGossip[19085]["Option143"] = tTheGoddess2016_VoteOnline_Text[19085]["Option143"]
tNpcGossip[19085]["Option144"] = tTheGoddess2016_VoteOnline_Text[19085]["Option144"]
tNpcGossip[19085]["Option145"] = tTheGoddess2016_VoteOnline_Text[19085]["Option145"]
tNpcGossip[19085]["Option146"] = tTheGoddess2016_VoteOnline_Text[19085]["Option146"]
tNpcGossip[19085]["Option147"] = tTheGoddess2016_VoteOnline_Text[19085]["Option147"]
tNpcGossip[19085]["Option148"] = tTheGoddess2016_VoteOnline_Text[19085]["Option148"]
tNpcGossip[19085]["OptionFunc141"] = tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc141"]
tNpcGossip[19085]["OptionFunc143"] = tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc143"]
tNpcGossip[19085]["OptionFunc144"] = tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc144"]
tNpcGossip[19085]["OptionFunc145"] = tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc145"]
tNpcGossip[19085]["OptionFunc146"] = tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc146"]
tNpcGossip[19085]["OptionFunc147"] = tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc147"]
tNpcGossip[19085]["OptionChkFunc144"] = tNpcGossip[19085]["OptionChkFunc122"]

-- 【为我心爱的男神投票】
tNpcGossip[19085]["Text2-1"] = {211,212}
tNpcGossip[19085]["Text211"] = tTheGoddess2016_VoteOnline_Text[19085]["Text211"]
tNpcGossip[19085]["Text212"] = tTheGoddess2016_VoteOnline_Text[19085]["Text212"]
tNpcGossip[19085]["ChkFunc2-1"]= function()
	--是否第一天
	if not Sys_ChkFullTime(tTheGoddess2016_VoteOnline_Cont["ActivityTime4"]) then
		-- 是否在投票时间内
		if not Sys_ChkDayTime(tTheGoddess2016_VoteOnline_Cont["DailyTime"]) then
			TheGoddess2016_VoteOnline_Dialog(Get_NpcId(),"2-8")
			return false
		end
	end
	return true
end

tNpcGossip[19085]["tOption2-1"] = {211,212,213,214,215,216,217}
tNpcGossip[19085]["Option211"] = tTheGoddess2016_VoteOnline_Text[19085]["Option211"]
tNpcGossip[19085]["Option212"] = tTheGoddess2016_VoteOnline_Text[19085]["Option212"]
tNpcGossip[19085]["Option213"] = tTheGoddess2016_VoteOnline_Text[19085]["Option213"]
tNpcGossip[19085]["Option214"] = tTheGoddess2016_VoteOnline_Text[19085]["Option214"]
tNpcGossip[19085]["Option215"] = tTheGoddess2016_VoteOnline_Text[19085]["Option215"]
tNpcGossip[19085]["Option216"] = tTheGoddess2016_VoteOnline_Text[19085]["Option216"]
tNpcGossip[19085]["Option217"] = tTheGoddess2016_VoteOnline_Text[19085]["Option217"]
tNpcGossip[19085]["OptionFunc211"] = tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc211"]
tNpcGossip[19085]["OptionFunc212"] = tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc212"]
tNpcGossip[19085]["OptionFunc213"] = tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc213"]
tNpcGossip[19085]["OptionFunc214"] = tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc214"]
tNpcGossip[19085]["OptionFunc215"] = tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc215"]
tNpcGossip[19085]["OptionFunc216"] = tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc216"]
-- 选择投票方式
tNpcGossip[19085]["Text2-2"] = {221,222}
tNpcGossip[19085]["Text221"] = tTheGoddess2016_VoteOnline_Text[19085]["Text221"]
tNpcGossip[19085]["Text222"] = tTheGoddess2016_VoteOnline_Text[19085]["Text222"]
tNpcGossip[19085]["ChkFunc2-2"]= function()
	local nStcValue_3 = Get_UserStatisticValue(tTheGoddess2016_VoteOnline_Stc[3]["EventData"],tTheGoddess2016_VoteOnline_Stc[3]["TypeData"])
	local nGlobal = tTheGoddess2016_VoteOnline_Global[Get_NpcId()][nStcValue_3]
	local sGodName = Get_SysDynaGlobalDataStr(nGlobal,0)
	tNpcGossip[19085]["Text221"] = string.format(tTheGoddess2016_VoteOnline_Text[Get_NpcId()]["Text221"],sGodName)
	return true
end
tNpcGossip[19085]["tOption2-2"] = {221,222,223}
tNpcGossip[19085]["Option221"] = tTheGoddess2016_VoteOnline_Text[19085]["Option221"]
tNpcGossip[19085]["Option222"] = tTheGoddess2016_VoteOnline_Text[19085]["Option222"]
tNpcGossip[19085]["Option223"] = tTheGoddess2016_VoteOnline_Text[19085]["Option223"]
tNpcGossip[19085]["OptionFunc221"] = tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc221"]
tNpcGossip[19085]["OptionFunc222"] = tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc222"]

-- 选项鲜花种类
tNpcGossip[19085]["Text2-3"] = {231,232,233,234,235,236}
tNpcGossip[19085]["Text231"] = tTheGoddess2016_VoteOnline_Text[19085]["Text231"]
tNpcGossip[19085]["Text232"] = tTheGoddess2016_VoteOnline_Text[19085]["Text232"]
tNpcGossip[19085]["Text233"] = tTheGoddess2016_VoteOnline_Text[19085]["Text233"]
tNpcGossip[19085]["Text234"] = tTheGoddess2016_VoteOnline_Text[19085]["Text234"]
tNpcGossip[19085]["Text235"] = tTheGoddess2016_VoteOnline_Text[19085]["Text235"]
tNpcGossip[19085]["Text236"] = tTheGoddess2016_VoteOnline_Text[19085]["Text236"]
tNpcGossip[19085]["ChkFunc2-3"]= function()
	local nStcValue_3 = Get_UserStatisticValue(tTheGoddess2016_VoteOnline_Stc[3]["EventData"],tTheGoddess2016_VoteOnline_Stc[3]["TypeData"])
	local nGlobal = tTheGoddess2016_VoteOnline_Global[Get_NpcId()][nStcValue_3]
	local sGodName = Get_SysDynaGlobalDataStr(nGlobal,0)
	tNpcGossip[19085]["Text231"] = string.format(tTheGoddess2016_VoteOnline_Text[Get_NpcId()]["Text231"],sGodName)
	return true
end
tNpcGossip[19085]["tOption2-3"] = {231,232,233,234,235,236}
tNpcGossip[19085]["Option231"] = tTheGoddess2016_VoteOnline_Text[19085]["Option231"]
tNpcGossip[19085]["Option232"] = tTheGoddess2016_VoteOnline_Text[19085]["Option232"]
tNpcGossip[19085]["Option233"] = tTheGoddess2016_VoteOnline_Text[19085]["Option233"]
tNpcGossip[19085]["Option234"] = tTheGoddess2016_VoteOnline_Text[19085]["Option234"]
tNpcGossip[19085]["Option235"] = tTheGoddess2016_VoteOnline_Text[19085]["Option235"]
tNpcGossip[19085]["Option236"] = tTheGoddess2016_VoteOnline_Text[19085]["Option236"]
tNpcGossip[19085]["OptionFunc231"] = tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc231"]
tNpcGossip[19085]["OptionFunc232"] = tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc232"]
tNpcGossip[19085]["OptionFunc233"] = tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc233"]
tNpcGossip[19085]["OptionFunc234"] = tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc234"]
tNpcGossip[19085]["OptionFunc235"] = tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc235"]

-- 选择该种类鲜花的数量种类
tNpcGossip[19085]["Text2-4"] = {241,242}
tNpcGossip[19085]["Text241"] = tTheGoddess2016_VoteOnline_Text[19085]["Text241"]
tNpcGossip[19085]["Text242"] = tTheGoddess2016_VoteOnline_Text[19085]["Text242"]
tNpcGossip[19085]["ChkFunc2-4"]= function()
	local nStcValue_5 = Get_UserStatisticValue(tTheGoddess2016_VoteOnline_Stc[5]["EventData"],tTheGoddess2016_VoteOnline_Stc[5]["TypeData"])
	local sStr = tTheGoddess2016_VoteOnline_Text["FlwName"][nStcValue_5]
	tNpcGossip[19085]["Text241"] = string.format(tTheGoddess2016_VoteOnline_Text[Get_NpcId()]["Text241"],sStr)
	return true
end
tNpcGossip[19085]["tOption2-4"] = {241,242,243,244,245,246,247}
tNpcGossip[19085]["Option241"] = tTheGoddess2016_VoteOnline_Text[19085]["Option241"]
tNpcGossip[19085]["Option242"] = tTheGoddess2016_VoteOnline_Text[19085]["Option242"]
tNpcGossip[19085]["Option243"] = tTheGoddess2016_VoteOnline_Text[19085]["Option243"]
tNpcGossip[19085]["Option244"] = tTheGoddess2016_VoteOnline_Text[19085]["Option244"]
tNpcGossip[19085]["Option245"] = tTheGoddess2016_VoteOnline_Text[19085]["Option245"]
tNpcGossip[19085]["Option246"] = tTheGoddess2016_VoteOnline_Text[19085]["Option246"]
tNpcGossip[19085]["Option247"] = tTheGoddess2016_VoteOnline_Text[19085]["Option247"]
tNpcGossip[19085]["OptionFunc241"] = tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc241"]
tNpcGossip[19085]["OptionFunc242"] = tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc242"]
tNpcGossip[19085]["OptionFunc243"] = tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc243"]
tNpcGossip[19085]["OptionFunc244"] = tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc244"]
tNpcGossip[19085]["OptionFunc245"] = tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc245"]
tNpcGossip[19085]["OptionFunc246"] = tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc246"]

-- 上交鲜花二次确认
tNpcGossip[19085]["Text2-6"] = {261,262}
tNpcGossip[19085]["Text261"] = tTheGoddess2016_VoteOnline_Text[19085]["Text261"]
tNpcGossip[19085]["Text262"] = tTheGoddess2016_VoteOnline_Text[19085]["Text262"]
tNpcGossip[19085]["tOption2-6"] = {261,262,263}
tNpcGossip[19085]["Option261"] = tTheGoddess2016_VoteOnline_Text[19085]["Option261"]
tNpcGossip[19085]["Option262"] = tTheGoddess2016_VoteOnline_Text[19085]["Option262"]
tNpcGossip[19085]["Option263"] = tTheGoddess2016_VoteOnline_Text[19085]["Option263"]

-- 上交鲜花成功
tNpcGossip[19085]["Text2-7"] = {271}
tNpcGossip[19085]["Text271"] = tTheGoddess2016_VoteOnline_Text[19085]["Text271"]
tNpcGossip[19085]["ChkFunc2-7"]= function()
	local nStcValue_1 = Get_UserStatisticValue(tTheGoddess2016_VoteOnline_Stc[1]["EventData"],tTheGoddess2016_VoteOnline_Stc[1]["TypeData"])
	local nStcValue_2 = Get_UserStatisticValue(tTheGoddess2016_VoteOnline_Stc[2]["EventData"],tTheGoddess2016_VoteOnline_Stc[2]["TypeData"])
	tNpcGossip[19085]["Text271"] = string.format(tTheGoddess2016_VoteOnline_Text[Get_NpcId()]["Text271"],nStcValue_1,nStcValue_2)
	return true
end
tNpcGossip[19085]["tOption2-7"] = {271}
tNpcGossip[19085]["Option271"] = tTheGoddess2016_VoteOnline_Text[19085]["Option271"]

-- 非1点--23点之间不能投票
tNpcGossip[19085]["Text2-8"] = {281,282}
tNpcGossip[19085]["Text281"] = tTheGoddess2016_VoteOnline_Text[19085]["Text281"]
tNpcGossip[19085]["Text282"] = tTheGoddess2016_VoteOnline_Text[19085]["Text282"]
tNpcGossip[19085]["tOption2-8"] = {281}
tNpcGossip[19085]["Option281"] = tTheGoddess2016_VoteOnline_Text[19085]["Option281"]



-- 投鲜花输入字符不符
tNpcGossip[19085]["Text3-1"] = {311}
tNpcGossip[19085]["Text311"] = tTheGoddess2016_VoteOnline_Text[19085]["Text311"]
tNpcGossip[19085]["tOption3-1"] = {311,312}
tNpcGossip[19085]["Option311"] = tTheGoddess2016_VoteOnline_Text[19085]["Option311"]
tNpcGossip[19085]["Option312"] = tTheGoddess2016_VoteOnline_Text[19085]["Option312"]
tNpcGossip[19085]["OptionFunc311"] = tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc311"]

-- 鲜花数量够
tNpcGossip[19085]["Text3-2"] = {321}
tNpcGossip[19085]["Text321"] = tTheGoddess2016_VoteOnline_Text[19085]["Text321"]
tNpcGossip[19085]["tOption3-2"] = {321}
tNpcGossip[19085]["Option321"] = tTheGoddess2016_VoteOnline_Text[19085]["Option321"]

-- 上交天石二次确认
tNpcGossip[19085]["Text4-2"] = {421,422}
tNpcGossip[19085]["Text421"] = tTheGoddess2016_VoteOnline_Text[19085]["Text421"]
tNpcGossip[19085]["Text422"] = tTheGoddess2016_VoteOnline_Text[19085]["Text422"]
tNpcGossip[19085]["tOption4-2"] = {421,422,423}
tNpcGossip[19085]["Option421"] = tTheGoddess2016_VoteOnline_Text[19085]["Option421"]
tNpcGossip[19085]["Option422"] = tTheGoddess2016_VoteOnline_Text[19085]["Option422"]
tNpcGossip[19085]["Option423"] = tTheGoddess2016_VoteOnline_Text[19085]["Option423"]
tNpcGossip[19085]["OptionFunc421"] = tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc421"]
tNpcGossip[19085]["OptionFunc422"] = tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc422"]

-- 天石数量不足
tNpcGossip[19085]["Text4-3"] = {431}
tNpcGossip[19085]["Text431"] = tTheGoddess2016_VoteOnline_Text[19085]["Text431"]
tNpcGossip[19085]["tOption4-3"] = {431}
tNpcGossip[19085]["Option431"] = tTheGoddess2016_VoteOnline_Text[19085]["Option431"]

-- 头天石输入字符不对
tNpcGossip[19085]["Text4-4"] = {441}
tNpcGossip[19085]["Text441"] = tTheGoddess2016_VoteOnline_Text[19085]["Text441"]
tNpcGossip[19085]["tOption4-4"] = {441,442}
tNpcGossip[19085]["Option441"] = tTheGoddess2016_VoteOnline_Text[19085]["Option441"]
tNpcGossip[19085]["Option442"] = tTheGoddess2016_VoteOnline_Text[19085]["Option442"]
tNpcGossip[19085]["OptionFunc441"] = tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc441"]

-- 【换取粉丝礼包。】
tNpcGossip[19085]["Text5-1"] = {511,512,513}
tNpcGossip[19085]["Text511"] = tTheGoddess2016_VoteOnline_Text[19085]["Text511"]
tNpcGossip[19085]["Text512"] = tTheGoddess2016_VoteOnline_Text[19085]["Text512"]
tNpcGossip[19085]["Text513"] = tTheGoddess2016_VoteOnline_Text[19085]["Text513"]
tNpcGossip[19085]["tOption5-1"] = {511,512,513,514,515}
tNpcGossip[19085]["Option511"] = tTheGoddess2016_VoteOnline_Text[19085]["Option511"]
tNpcGossip[19085]["Option512"] = tTheGoddess2016_VoteOnline_Text[19085]["Option512"]
tNpcGossip[19085]["Option513"] = tTheGoddess2016_VoteOnline_Text[19085]["Option513"]
tNpcGossip[19085]["Option514"] = tTheGoddess2016_VoteOnline_Text[19085]["Option514"]
tNpcGossip[19085]["Option515"] = tTheGoddess2016_VoteOnline_Text[19085]["Option515"]
tNpcGossip[19085]["ChkFunc5-1"]= function()
	local nStcValue_2 = Get_UserStatisticValue(tTheGoddess2016_VoteOnline_Stc[2]["EventData"],tTheGoddess2016_VoteOnline_Stc[2]["TypeData"])
	tNpcGossip[19085]["Text511"] = string.format(tTheGoddess2016_VoteOnline_Text[19085]["Text511"],nStcValue_2)
	return true
end
tNpcGossip[19085]["OptionFunc511"] = tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc511"]
tNpcGossip[19085]["OptionFunc512"] = tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc512"]
tNpcGossip[19085]["OptionFunc513"] = tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc513"]
tNpcGossip[19085]["OptionFunc514"] = tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc514"]

-- 积分不够
tNpcGossip[19085]["Text5-2"] = {521,522}
tNpcGossip[19085]["Text521"] = tTheGoddess2016_VoteOnline_Text[19085]["Text521"]
tNpcGossip[19085]["Text522"] = tTheGoddess2016_VoteOnline_Text[19085]["Text522"]
tNpcGossip[19085]["tOption5-2"] = {521}
tNpcGossip[19085]["Option521"] = tTheGoddess2016_VoteOnline_Text[19085]["Option521"]

-- 粉丝追捧礼包（200点）
tNpcGossip[19085]["Text6-1"] = {611,612,613}
tNpcGossip[19085]["Text611"] = tTheGoddess2016_VoteOnline_Text[19085]["Text611"]
tNpcGossip[19085]["Text612"] = tTheGoddess2016_VoteOnline_Text[19085]["Text612"]
tNpcGossip[19085]["Text613"] = tTheGoddess2016_VoteOnline_Text[19085]["Text613"]
tNpcGossip[19085]["tOption6-1"] = {611,612,613}
tNpcGossip[19085]["Option611"] = tTheGoddess2016_VoteOnline_Text[19085]["Option611"]
tNpcGossip[19085]["Option612"] = tTheGoddess2016_VoteOnline_Text[19085]["Option612"]
tNpcGossip[19085]["Option613"] = tTheGoddess2016_VoteOnline_Text[19085]["Option613"]
tNpcGossip[19085]["OptionFunc611"] = tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc611"]
tNpcGossip[19085]["OptionFunc612"] = tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc612"]

-- 粉丝爱慕礼包（1000点）
tNpcGossip[19085]["Text6-2"] = {621,622,623}
tNpcGossip[19085]["Text621"] = tTheGoddess2016_VoteOnline_Text[19085]["Text621"]
tNpcGossip[19085]["Text622"] = tTheGoddess2016_VoteOnline_Text[19085]["Text622"]
tNpcGossip[19085]["Text623"] = tTheGoddess2016_VoteOnline_Text[19085]["Text623"]
tNpcGossip[19085]["tOption6-2"] = {621,622,623}
tNpcGossip[19085]["Option621"] = tTheGoddess2016_VoteOnline_Text[19085]["Option621"]
tNpcGossip[19085]["Option622"] = tTheGoddess2016_VoteOnline_Text[19085]["Option622"]
tNpcGossip[19085]["Option623"] = tTheGoddess2016_VoteOnline_Text[19085]["Option623"]
tNpcGossip[19085]["OptionFunc621"] = tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc621"]
tNpcGossip[19085]["OptionFunc622"] = tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc622"]

-- 粉丝狂恋礼包（3000点）
tNpcGossip[19085]["Text6-3"] = {631,632,633}
tNpcGossip[19085]["Text631"] = tTheGoddess2016_VoteOnline_Text[19085]["Text631"]
tNpcGossip[19085]["Text632"] = tTheGoddess2016_VoteOnline_Text[19085]["Text632"]
tNpcGossip[19085]["Text633"] = tTheGoddess2016_VoteOnline_Text[19085]["Text633"]
tNpcGossip[19085]["tOption6-3"] = {631,632,633}
tNpcGossip[19085]["Option631"] = tTheGoddess2016_VoteOnline_Text[19085]["Option631"]
tNpcGossip[19085]["Option632"] = tTheGoddess2016_VoteOnline_Text[19085]["Option632"]
tNpcGossip[19085]["Option633"] = tTheGoddess2016_VoteOnline_Text[19085]["Option633"]
tNpcGossip[19085]["OptionFunc631"] = tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc631"]
tNpcGossip[19085]["OptionFunc632"] = tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc632"]

-- 成功兑换礼包
tNpcGossip[19085]["Text6-4"] = {641}
tNpcGossip[19085]["Text641"] = tTheGoddess2016_VoteOnline_Text[19085]["Text641"]
tNpcGossip[19085]["tOption6-4"] = {641}
tNpcGossip[19085]["Option641"] = tTheGoddess2016_VoteOnline_Text[19085]["Option641"]


-- 【男神指环兑换奖励。】
tNpcGossip[19085]["Text7-1"] = {711,712,713}
tNpcGossip[19085]["Text711"] = tTheGoddess2016_VoteOnline_Text[19085]["Text711"]
tNpcGossip[19085]["Text712"] = tTheGoddess2016_VoteOnline_Text[19085]["Text712"]
tNpcGossip[19085]["Text713"] = tTheGoddess2016_VoteOnline_Text[19085]["Text713"]
tNpcGossip[19085]["tOption7-1"] = {711,712,713,714}
tNpcGossip[19085]["Option711"] = tTheGoddess2016_VoteOnline_Text[19085]["Option711"]
tNpcGossip[19085]["Option712"] = tTheGoddess2016_VoteOnline_Text[19085]["Option712"]
tNpcGossip[19085]["Option713"] = tTheGoddess2016_VoteOnline_Text[19085]["Option713"]
tNpcGossip[19085]["Option714"] = tTheGoddess2016_VoteOnline_Text[19085]["Option714"]
tNpcGossip[19085]["OptionFunc711"] = tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc711"]
tNpcGossip[19085]["OptionFunc712"] = tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc712"]
tNpcGossip[19085]["OptionFunc713"] = tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc713"]

-- 没有指环
tNpcGossip[19085]["Text7-2"] = {721}
tNpcGossip[19085]["Text721"] = tTheGoddess2016_VoteOnline_Text[19085]["Text721"]
tNpcGossip[19085]["tOption7-2"] = {721}
tNpcGossip[19085]["Option721"] = tTheGoddess2016_VoteOnline_Text[19085]["Option721"]

-- 抽取指环不够
tNpcGossip[19085]["Text7-4"] = {741}
tNpcGossip[19085]["Text741"] = tTheGoddess2016_VoteOnline_Text[19085]["Text741"]
tNpcGossip[19085]["tOption7-4"] = {741}
tNpcGossip[19085]["Option741"] = tTheGoddess2016_VoteOnline_Text[19085]["Option741"]

-- 【查看投票规则。】
tNpcGossip[19085]["Text8-1"] = {811,812,813}
tNpcGossip[19085]["Text811"] = tTheGoddess2016_VoteOnline_Text[19085]["Text811"]
tNpcGossip[19085]["Text812"] = tTheGoddess2016_VoteOnline_Text[19085]["Text812"]
tNpcGossip[19085]["Text813"] = tTheGoddess2016_VoteOnline_Text[19085]["Text813"]
tNpcGossip[19085]["tOption8-1"] = {811}
tNpcGossip[19085]["Option811"] = tTheGoddess2016_VoteOnline_Text[19085]["Option811"]

-- 【查看大赛奖励。】
tNpcGossip[19085]["Text8-2"] = {821,822,823}
tNpcGossip[19085]["Text821"] = tTheGoddess2016_VoteOnline_Text[19085]["Text821"]
tNpcGossip[19085]["Text822"] = tTheGoddess2016_VoteOnline_Text[19085]["Text822"]
tNpcGossip[19085]["Text823"] = tTheGoddess2016_VoteOnline_Text[19085]["Text823"]
tNpcGossip[19085]["tOption8-2"] = {821,822,823,824}
tNpcGossip[19085]["Option821"] = tTheGoddess2016_VoteOnline_Text[19085]["Option821"]
tNpcGossip[19085]["Option822"] = tTheGoddess2016_VoteOnline_Text[19085]["Option822"]
tNpcGossip[19085]["Option823"] = tTheGoddess2016_VoteOnline_Text[19085]["Option823"]
tNpcGossip[19085]["Option824"] = tTheGoddess2016_VoteOnline_Text[19085]["Option824"]
tNpcGossip[19085]["OptionFunc821"] = tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc821"]
tNpcGossip[19085]["OptionFunc822"] = tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc822"]
tNpcGossip[19085]["OptionFunc823"] = tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc823"]

-- 了解男神排名奖励。
tNpcGossip[19085]["Text9-1"] = {911,912,913,914,915,916}
tNpcGossip[19085]["Text911"] = tTheGoddess2016_VoteOnline_Text[19085]["Text911"]
tNpcGossip[19085]["Text912"] = tTheGoddess2016_VoteOnline_Text[19085]["Text912"]
tNpcGossip[19085]["Text913"] = tTheGoddess2016_VoteOnline_Text[19085]["Text913"]
tNpcGossip[19085]["Text914"] = tTheGoddess2016_VoteOnline_Text[19085]["Text914"]
tNpcGossip[19085]["Text915"] = tTheGoddess2016_VoteOnline_Text[19085]["Text915"]
tNpcGossip[19085]["Text916"] = tTheGoddess2016_VoteOnline_Text[19085]["Text916"]
tNpcGossip[19085]["tOption9-1"] = {911}
tNpcGossip[19085]["Option911"] = tTheGoddess2016_VoteOnline_Text[19085]["Option911"]

-- 如何换取外套。
tNpcGossip[19085]["Text9-2"] = {921,922}
tNpcGossip[19085]["Text921"] = tTheGoddess2016_VoteOnline_Text[19085]["Text921"]
tNpcGossip[19085]["Text922"] = tTheGoddess2016_VoteOnline_Text[19085]["Text922"]
tNpcGossip[19085]["tOption9-2"] = {921}
tNpcGossip[19085]["Option921"] = tTheGoddess2016_VoteOnline_Text[19085]["Option921"]

-- 了解粉丝礼包。
tNpcGossip[19085]["Text9-3"] = {931,932}
tNpcGossip[19085]["Text931"] = tTheGoddess2016_VoteOnline_Text[19085]["Text931"]
tNpcGossip[19085]["Text932"] = tTheGoddess2016_VoteOnline_Text[19085]["Text932"]
tNpcGossip[19085]["tOption9-3"] = {931,932}
tNpcGossip[19085]["Option931"] = tTheGoddess2016_VoteOnline_Text[19085]["Option931"]
tNpcGossip[19085]["Option932"] = tTheGoddess2016_VoteOnline_Text[19085]["Option932"]
tNpcGossip[19085]["OptionFunc931"] = tTheGoddess2016_VoteOnline_NpcFunc["OptionFunc931"]

-- 了解粉丝礼包奖励。
tNpcGossip[19085]["Text9-4"] = {941,942,943,944,945,946,947,948}
tNpcGossip[19085]["Text941"] = tTheGoddess2016_VoteOnline_Text[19085]["Text941"]
tNpcGossip[19085]["Text942"] = tTheGoddess2016_VoteOnline_Text[19085]["Text942"]
tNpcGossip[19085]["Text943"] = tTheGoddess2016_VoteOnline_Text[19085]["Text943"]
tNpcGossip[19085]["Text944"] = tTheGoddess2016_VoteOnline_Text[19085]["Text944"]
tNpcGossip[19085]["Text945"] = tTheGoddess2016_VoteOnline_Text[19085]["Text945"]
tNpcGossip[19085]["Text946"] = tTheGoddess2016_VoteOnline_Text[19085]["Text946"]
tNpcGossip[19085]["Text947"] = tTheGoddess2016_VoteOnline_Text[19085]["Text947"]
tNpcGossip[19085]["Text948"] = tTheGoddess2016_VoteOnline_Text[19085]["Text948"]
tNpcGossip[19085]["tOption9-4"] = {941}
tNpcGossip[19085]["Option941"] = tTheGoddess2016_VoteOnline_Text[19085]["Option941"]


----------------------------------------------------物品模版配置-------------------------------------------
-- 花神礼包
tItem[3008533] = tItem[3008533] or {}
tItem[3008534] = tItem[3008533] or {}
tItem[3008535] = tItem[3008533] or {}
tItem[3008536] = tItem[3008533] or {}
tItem[3008537] = tItem[3008533] or {}
tItem[3008538] = tItem[3008533] or {}
tItem[3008533]["Function"] = function(nItemId,sItemName)
	TheGoddess2016_VoteOnline_OpenGodPag(nItemId)
end

--挂机彩蛋
tItem[3008501] = tItem[3008501] or {}
tItem[3008502] = tItem[3008501] or {}
tItem[3008503] = tItem[3008501] or {}
tItem[3008501]["Function"] = function(nItemId,sItemName)
	User_TalkChannel2005(tTheGoddess2016_VoteOnline_Text["ItemTip"][nItemId])
end

-- 荣耀指环
tItem[3008539] = tItem[3008539] or {}
tItem[3008539]["Function"] = function(nItemId,sItemName)
	local sFunc = "NULL"
	if Sys_ChkFullTime(tTheGoddess2016_VoteOnline_Cont["ActivityAllTime1"]) then
		local nPosX = tTheGoddess2016_VoteOnline_RingFindWay["PosX"]
		local nPosY = tTheGoddess2016_VoteOnline_RingFindWay["PosY"]
		local nMapId = tTheGoddess2016_VoteOnline_RingFindWay["MapId"]
		local nNpcId = tTheGoddess2016_VoteOnline_RingFindWay["NpcId"]
		sFunc = string.format("Sys_GotoSomeWhere</N>%d</N>%d</N>%d</N>%d",nPosX,nPosY,nMapId,nNpcId)
	end
	Sys_MsgBox(tTheGoddess2016_VoteOnline_Text["ItemTip"][nItemId],sFunc)
end

--高级萌宠发型（绑定）
tItem[3008540] = tItem[3008540] or {}
tItem[3008540]["Function"] = function(nItemId,sItemName)
	TheGoddess2016_VoteOnline_Hair(nItemId)
end

-- 岁月如歌（男发型）
tItem[3007423] = tItem[3007423] or {}
tItem[3007423]["Function"] = function(nItemId,sItemName)
	TheGoddess2016_VoteOnline_Hair(nItemId,1)
end

-- 花月如梦（女发型）
tItem[3007424] = tItem[3007424] or {}
tItem[3007424]["Function"] = function(nItemId,sItemName)
	TheGoddess2016_VoteOnline_Hair(nItemId,2)
end
