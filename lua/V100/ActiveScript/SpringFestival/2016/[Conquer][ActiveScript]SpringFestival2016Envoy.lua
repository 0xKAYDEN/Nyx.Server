------------------------------------------------------------------------------------
--Name:			151113[简体征服][活动脚本]2016春节活动总npc
--Purpose:		2016春节活动总npc
--Creator:		黄昕哲
--Created:		2015/11/13
------------------------------------------------------------------------------------
--[[
活动时间：2016年2月3日-2016年2月22日
命名前缀SpringFestival2016_Envoy_

--npc位置
--天官
--(94432140,00000000,00000000,301,17430,'1002 298 370');

--掩码说明
----stc 132,05
--今日是否签到
----stc 132,06
--连续签到的天数
----stc 132,07
--今日是否领取过完成所有任务的奖励

--stc(139,16)
--背包信

--`cq_dyna_global_data`
--50945
--???

--dyna_global_data 50946
--data0 今日是否重置过掩码
--data1 今日龙珠产出数量

--logid 12000256
]]--
-------------------------------数据存储表------------------------
local tSpringFestival2016_Envoy_Data = {}

	--活动时间：2016年2月3日-2016年2月22日
	
	tSpringFestival2016_Envoy_Data["BeforeTime"] = "2016-01-01 00:00 2017-01-22 23:59"
	--小年
	tSpringFestival2016_Envoy_Data["DuringTime1"] = "2017-01-23 00:00 2017-01-27 23:59"
	--大年
	tSpringFestival2016_Envoy_Data["DuringTime2"] = "2017-01-28 00:00 2017-02-06 23:59"
	--元宵
	tSpringFestival2016_Envoy_Data["DuringTime3"] = "2017-02-07 00:00 2017-02-11 23:59"
	--福袋出龙珠的时间
	tSpringFestival2016_Envoy_Data["DBTime"] = "19:00 21:00"

	--动态表.限制龙珠产出
	tSpringFestival2016_Envoy_Data["GlobalId"] =  50946
	tSpringFestival2016_Envoy_Data["GlobalLimit"] =  5

--参加活动的等级/转世需求
	tSpringFestival2016_Envoy_Data["MinLev"] = 80
	tSpringFestival2016_Envoy_Data["MinMet"] = 0

--签到天数相关
	tSpringFestival2016_Envoy_Data["Step"] = {}
	tSpringFestival2016_Envoy_Data["Step"][1] = 0
	tSpringFestival2016_Envoy_Data["Step"][2] = 2
	tSpringFestival2016_Envoy_Data["Step"][3] = 6
	tSpringFestival2016_Envoy_Data["Step"][4] = 12
	tSpringFestival2016_Envoy_Data["Step"][5] = 19

--背包信的经验和修行值奖励
	tSpringFestival2016_Envoy_Data["LetterExp"] = 30
	tSpringFestival2016_Envoy_Data["LetterCult"] = 15
--签到的经验修行值,祝福奖励
	tSpringFestival2016_Envoy_Data["SignExp"] = 60
	tSpringFestival2016_Envoy_Data["SignCult"] = 50
	tSpringFestival2016_Envoy_Data["SignBless"] = 24

--光效
local tSpringFestival2016_Envoy_Effect = {}
	tSpringFestival2016_Envoy_Effect["self"] = "self"
	tSpringFestival2016_Envoy_Effect["Sign"] = "angelwing"
	tSpringFestival2016_Envoy_Effect["OpenPack"] = "disappear"

local tSpringFestival2016_Envoy_Item = {}
--福袋
	tSpringFestival2016_Envoy_Item["Pack"] = {}
	tSpringFestival2016_Envoy_Item["Pack"][3007931] = 3007931
	tSpringFestival2016_Envoy_Item["Pack"][3007932] = 3007932
	tSpringFestival2016_Envoy_Item["Pack"][3007933] = 3007933
	tSpringFestival2016_Envoy_Item["Pack"][3007934] = 3007934
	tSpringFestival2016_Envoy_Item["Pack"][3007935] = 3007935
	--背包信(天官令)
	tSpringFestival2016_Envoy_Item["Letter"] = 3007936
	--外套礼盒1//3/7天
	tSpringFestival2016_Envoy_Item["SuitPack"] = {}
	tSpringFestival2016_Envoy_Item["SuitPack"][3007937] = 3007937
	tSpringFestival2016_Envoy_Item["SuitPack"]["3007937Attr"] = "0 0 3 1440 1"
	tSpringFestival2016_Envoy_Item["SuitPack"][3007938] = 3007938
	tSpringFestival2016_Envoy_Item["SuitPack"]["3007938Attr"] = "0 0 3 4320 1"
	tSpringFestival2016_Envoy_Item["SuitPack"][3007939] = 3007939
	tSpringFestival2016_Envoy_Item["SuitPack"]["3007939Attr"] = "0 0 3 10080 1"

--龙凤呈祥
	tSpringFestival2016_Envoy_Item["Suit"] = 192575


--坐标
local tSpringFestival2016_Envoy_Pos = {}
	tSpringFestival2016_Envoy_Pos["MapId"] = 1002
--天官
	tSpringFestival2016_Envoy_Pos[17430] = {}
	tSpringFestival2016_Envoy_Pos[17430]["Id"] = 17430
	tSpringFestival2016_Envoy_Pos[17430]["CellX"] = 298
	tSpringFestival2016_Envoy_Pos[17430]["CellY"] = 372
--小年
--新年新衣新气象。
	tSpringFestival2016_Envoy_Pos[17427] = {}
	tSpringFestival2016_Envoy_Pos[17427]["Id"] = 17427
	tSpringFestival2016_Envoy_Pos[17427]["CellX"] = 289
	tSpringFestival2016_Envoy_Pos[17427]["CellY"] = 360
--辞旧迎新双龙城。
	tSpringFestival2016_Envoy_Pos[10704] = {}
	tSpringFestival2016_Envoy_Pos[10704]["Id"] = 10704
	tSpringFestival2016_Envoy_Pos[10704]["CellX"] = 282
	tSpringFestival2016_Envoy_Pos[10704]["CellY"] = 360
--喜气洋洋送灶神。
	tSpringFestival2016_Envoy_Pos[17434] = {}
	tSpringFestival2016_Envoy_Pos[17434]["Id"] = 17434
	tSpringFestival2016_Envoy_Pos[17434]["CellX"] = 273
	tSpringFestival2016_Envoy_Pos[17434]["CellY"] = 378
--欢天喜地办年货。
	tSpringFestival2016_Envoy_Pos[17296] = {}
	tSpringFestival2016_Envoy_Pos[17296]["Id"] = 17296
	tSpringFestival2016_Envoy_Pos[17296]["CellX"] = 282
	tSpringFestival2016_Envoy_Pos[17296]["CellY"] = 382
--来把旧桃作新符
	tSpringFestival2016_Envoy_Pos[17307] = {}
	tSpringFestival2016_Envoy_Pos[17307]["Id"] = 17307
	tSpringFestival2016_Envoy_Pos[17307]["CellX"] = 289
	tSpringFestival2016_Envoy_Pos[17307]["CellY"] = 382
--大年
--心想事成烧头香
	tSpringFestival2016_Envoy_Pos[17305] = {}
	tSpringFestival2016_Envoy_Pos[17305]["Id"] = 17305
	tSpringFestival2016_Envoy_Pos[17305]["CellX"] = 299
	tSpringFestival2016_Envoy_Pos[17305]["CellY"] = 384
--红红火火过大年
	tSpringFestival2016_Envoy_Pos[17303] = {}
	tSpringFestival2016_Envoy_Pos[17303]["Id"] = 17303
	tSpringFestival2016_Envoy_Pos[17303]["CellX"] = 271
	tSpringFestival2016_Envoy_Pos[17303]["CellY"] = 369
--开开心心辞旧岁
	tSpringFestival2016_Envoy_Pos[10748] = {}
	tSpringFestival2016_Envoy_Pos[10748]["Id"] = 10748
	tSpringFestival2016_Envoy_Pos[10748]["CellX"] = 289
	tSpringFestival2016_Envoy_Pos[10748]["CellY"] = 384
--欢欢喜喜贺新春
	tSpringFestival2016_Envoy_Pos[10750] = {}
	tSpringFestival2016_Envoy_Pos[10750]["Id"] = 10750
	tSpringFestival2016_Envoy_Pos[10750]["CellX"] = 284
	tSpringFestival2016_Envoy_Pos[10750]["CellY"] = 370
--兴高采烈接灶神。
	tSpringFestival2016_Envoy_Pos[10764] = {}
	tSpringFestival2016_Envoy_Pos[10764]["Id"] = 10764
	tSpringFestival2016_Envoy_Pos[10764]["CellX"] = 273
	tSpringFestival2016_Envoy_Pos[10764]["CellY"] = 384
--噼里啪啦驱年兽。
	tSpringFestival2016_Envoy_Pos[17282] = {}
	tSpringFestival2016_Envoy_Pos[17282]["Id"] = 17282
	tSpringFestival2016_Envoy_Pos[17282]["CellX"] = 294
	tSpringFestival2016_Envoy_Pos[17282]["CellY"] = 384
--吃幸运饺子
	tSpringFestival2016_Envoy_Pos[17275] = {}
	tSpringFestival2016_Envoy_Pos[17275]["Id"] = 17275
	tSpringFestival2016_Envoy_Pos[17275]["CellX"] = 284
	tSpringFestival2016_Envoy_Pos[17275]["CellY"] = 384
	
--元宵
--张灯结彩贺元宵。
	tSpringFestival2016_Envoy_Pos[10753] = {}
	tSpringFestival2016_Envoy_Pos[10753]["Id"] = 10753
	tSpringFestival2016_Envoy_Pos[10753]["CellX"] = 282
	tSpringFestival2016_Envoy_Pos[10753]["CellY"] = 372
--整点秒杀闹元宵。
	tSpringFestival2016_Envoy_Pos[17425] = {}
	tSpringFestival2016_Envoy_Pos[17425]["Id"] = 17425
	tSpringFestival2016_Envoy_Pos[17425]["CellX"] = 295
	tSpringFestival2016_Envoy_Pos[17425]["CellY"] = 378
--热热闹闹舞龙灯。
	tSpringFestival2016_Envoy_Pos[17436] = {}
	tSpringFestival2016_Envoy_Pos[17436]["Id"] = 17436
	tSpringFestival2016_Envoy_Pos[17436]["CellX"] = 294
	tSpringFestival2016_Envoy_Pos[17436]["CellY"] = 362
--噼噼啪啪拆爆竹。
	tSpringFestival2016_Envoy_Pos[17416] = {}
	tSpringFestival2016_Envoy_Pos[17416]["Id"] = 17416
	tSpringFestival2016_Envoy_Pos[17416]["CellX"] = 284
	tSpringFestival2016_Envoy_Pos[17416]["CellY"] = 362
--横扫八方战元宵。
	tSpringFestival2016_Envoy_Pos[17432] = {}
	tSpringFestival2016_Envoy_Pos[17432]["Id"] = 17432
	tSpringFestival2016_Envoy_Pos[17432]["CellX"] = 289
	tSpringFestival2016_Envoy_Pos[17432]["CellY"] = 362

--其他任务的掩码,用于判断是否已经完成了所有的任务
local tSpringFestival2016_Envoy_TaskStc = {}
--小年
tSpringFestival2016_Envoy_TaskStc[1] = {}
--新年新衣新气象。
	tSpringFestival2016_Envoy_TaskStc[1][17427] = {}
	tSpringFestival2016_Envoy_TaskStc[1][17427]["Event"] = 131
	tSpringFestival2016_Envoy_TaskStc[1][17427]["Type"] = 96
	tSpringFestival2016_Envoy_TaskStc[1][17427]["TaskFin"] = 1
	tSpringFestival2016_Envoy_TaskStc[1][17427]["Name"] = tSpringFestival2016_Envoy_Text[1][1]
--辞旧迎新双龙城。
	tSpringFestival2016_Envoy_TaskStc[1][10704] = {}
	tSpringFestival2016_Envoy_TaskStc[1][10704]["Event"] = 131
	tSpringFestival2016_Envoy_TaskStc[1][10704]["Type"] = 51
	tSpringFestival2016_Envoy_TaskStc[1][10704]["TaskFin"] = 2
	tSpringFestival2016_Envoy_TaskStc[1][10704]["Name"] = tSpringFestival2016_Envoy_Text[1][2]
--喜气洋洋送灶神。
	tSpringFestival2016_Envoy_TaskStc[1][17434] = {}
	tSpringFestival2016_Envoy_TaskStc[1][17434]["Event"] = 131
	tSpringFestival2016_Envoy_TaskStc[1][17434]["Type"] = 88
	tSpringFestival2016_Envoy_TaskStc[1][17434]["TaskFin"] = 3
	tSpringFestival2016_Envoy_TaskStc[1][17434]["Name"] = tSpringFestival2016_Envoy_Text[1][3]
--欢天喜地办年货。
	tSpringFestival2016_Envoy_TaskStc[1][17296] = {}
	tSpringFestival2016_Envoy_TaskStc[1][17296]["Event"] = 138
	tSpringFestival2016_Envoy_TaskStc[1][17296]["Type"] = 80
	tSpringFestival2016_Envoy_TaskStc[1][17296]["TaskFin"] = 3
	tSpringFestival2016_Envoy_TaskStc[1][17296]["Name"] = tSpringFestival2016_Envoy_Text[1][4]
--来把旧桃作新符
	tSpringFestival2016_Envoy_TaskStc[1][17307] = {}
	tSpringFestival2016_Envoy_TaskStc[1][17307]["Event"] = 138
	tSpringFestival2016_Envoy_TaskStc[1][17307]["Type"] = 94
	tSpringFestival2016_Envoy_TaskStc[1][17307]["TaskFin"] = 3
	tSpringFestival2016_Envoy_TaskStc[1][17307]["Name"] = tSpringFestival2016_Envoy_Text[1][5]
--大年
tSpringFestival2016_Envoy_TaskStc[2] = {}
--心想事成烧头香
	tSpringFestival2016_Envoy_TaskStc[2][17305] = {}
	tSpringFestival2016_Envoy_TaskStc[2][17305]["Event"] = 131
	tSpringFestival2016_Envoy_TaskStc[2][17305]["Type"] = 66
	tSpringFestival2016_Envoy_TaskStc[2][17305]["TaskFin"] = 1
	tSpringFestival2016_Envoy_TaskStc[2][17305]["Name"] = tSpringFestival2016_Envoy_Text[2][1]
--红红火火过大年
	tSpringFestival2016_Envoy_TaskStc[2][17303] = {}
	tSpringFestival2016_Envoy_TaskStc[2][17303]["Event"] = 138
	tSpringFestival2016_Envoy_TaskStc[2][17303]["Type"] = 95
	tSpringFestival2016_Envoy_TaskStc[2][17303]["TaskFin"] = 2
	tSpringFestival2016_Envoy_TaskStc[2][17303]["Name"] = tSpringFestival2016_Envoy_Text[2][2]
--开开心心辞旧岁
	tSpringFestival2016_Envoy_TaskStc[2][10748] = {}
	tSpringFestival2016_Envoy_TaskStc[2][10748]["Event"] = 132
	tSpringFestival2016_Envoy_TaskStc[2][10748]["Type"] = 03
	tSpringFestival2016_Envoy_TaskStc[2][10748]["TaskFin"] = 1
	tSpringFestival2016_Envoy_TaskStc[2][10748]["Name"] = tSpringFestival2016_Envoy_Text[2][3]
--欢欢喜喜贺新春
	tSpringFestival2016_Envoy_TaskStc[2][10750] = {}
	tSpringFestival2016_Envoy_TaskStc[2][10750]["Event"] = 138
	tSpringFestival2016_Envoy_TaskStc[2][10750]["Type"] = 99
	tSpringFestival2016_Envoy_TaskStc[2][10750]["TaskFin"] = 1
	tSpringFestival2016_Envoy_TaskStc[2][10750]["Name"] = tSpringFestival2016_Envoy_Text[2][4]
--兴高采烈接灶神。
	tSpringFestival2016_Envoy_TaskStc[2][10764] = {}
	tSpringFestival2016_Envoy_TaskStc[2][10764]["Event"] = 132
	tSpringFestival2016_Envoy_TaskStc[2][10764]["Type"] = 14
	tSpringFestival2016_Envoy_TaskStc[2][10764]["TaskFin"] = 3
	tSpringFestival2016_Envoy_TaskStc[2][10764]["Name"] = tSpringFestival2016_Envoy_Text[2][5]
	--噼里啪啦驱年兽。
	tSpringFestival2016_Envoy_TaskStc[2][17282] = {}
	tSpringFestival2016_Envoy_TaskStc[2][17282]["Event"] = 131
	tSpringFestival2016_Envoy_TaskStc[2][17282]["Type"] = 42
	tSpringFestival2016_Envoy_TaskStc[2][17282]["TaskFin"] = 3
	tSpringFestival2016_Envoy_TaskStc[2][17282]["Name"] = tSpringFestival2016_Envoy_Text[2][6]
--吃幸运饺子
	tSpringFestival2016_Envoy_TaskStc[2][17275] = {}
	tSpringFestival2016_Envoy_TaskStc[2][17275]["Event"] = 139
	tSpringFestival2016_Envoy_TaskStc[2][17275]["Type"] = 07
	tSpringFestival2016_Envoy_TaskStc[2][17275]["TaskFin"] = 1
	tSpringFestival2016_Envoy_TaskStc[2][17275]["Name"] = tSpringFestival2016_Envoy_Text[2][7]
--元宵
tSpringFestival2016_Envoy_TaskStc[3] = {}
--张灯结彩贺元宵。
	tSpringFestival2016_Envoy_TaskStc[3][10753] = {}
	tSpringFestival2016_Envoy_TaskStc[3][10753]["Event"] = 131
	tSpringFestival2016_Envoy_TaskStc[3][10753]["Type"] = 99
	tSpringFestival2016_Envoy_TaskStc[3][10753]["TaskFin"] = 2
	tSpringFestival2016_Envoy_TaskStc[3][10753]["Name"] = tSpringFestival2016_Envoy_Text[3][1]
--整点秒杀闹元宵。
	tSpringFestival2016_Envoy_TaskStc[3][17425] = {}
	tSpringFestival2016_Envoy_TaskStc[3][17425]["Event"] = 131
	tSpringFestival2016_Envoy_TaskStc[3][17425]["Type"] = 94
	tSpringFestival2016_Envoy_TaskStc[3][17425]["TaskFin"] = 1
	tSpringFestival2016_Envoy_TaskStc[3][17425]["Name"] = tSpringFestival2016_Envoy_Text[3][2]
--热热闹闹舞龙灯。
	tSpringFestival2016_Envoy_TaskStc[3][17436] = {}
	tSpringFestival2016_Envoy_TaskStc[3][17436]["Event"] = 132
	tSpringFestival2016_Envoy_TaskStc[3][17436]["Type"] = 20
	tSpringFestival2016_Envoy_TaskStc[3][17436]["TaskFin"] = 2
	tSpringFestival2016_Envoy_TaskStc[3][17436]["Name"] = tSpringFestival2016_Envoy_Text[3][3]
--噼噼啪啪拆爆竹。
	tSpringFestival2016_Envoy_TaskStc[3][17416] = {}
	tSpringFestival2016_Envoy_TaskStc[3][17416]["Event"] = 131
	tSpringFestival2016_Envoy_TaskStc[3][17416]["Type"] = 92
	tSpringFestival2016_Envoy_TaskStc[3][17416]["TaskFin"] = 1
	tSpringFestival2016_Envoy_TaskStc[3][17416]["Name"] = tSpringFestival2016_Envoy_Text[3][4]
--横扫八方战元宵。
	tSpringFestival2016_Envoy_TaskStc[3][17432] = {}
	tSpringFestival2016_Envoy_TaskStc[3][17432]["Event"] = 132
	tSpringFestival2016_Envoy_TaskStc[3][17432]["Type"] = 10
	tSpringFestival2016_Envoy_TaskStc[3][17432]["TaskFin"] = 1
	tSpringFestival2016_Envoy_TaskStc[3][17432]["Name"] = tSpringFestival2016_Envoy_Text[3][5]

--任务自身掩码
local tSpringFestival2016_Envoy_Stc = {}
	--今天签到
	tSpringFestival2016_Envoy_Stc["TodaySign"] = {}
	tSpringFestival2016_Envoy_Stc["TodaySign"]["Event"] = 132
	tSpringFestival2016_Envoy_Stc["TodaySign"]["Data"] = 05
	--连续签到天数
	tSpringFestival2016_Envoy_Stc["ContinedSign"] = {}
	tSpringFestival2016_Envoy_Stc["ContinedSign"]["Event"] = 132
	tSpringFestival2016_Envoy_Stc["ContinedSign"]["Data"] = 06
	--今天领取所有任务的奖励
	tSpringFestival2016_Envoy_Stc["AllTask"] = {}
	tSpringFestival2016_Envoy_Stc["AllTask"]["Event"] = 132
	tSpringFestival2016_Envoy_Stc["AllTask"]["Data"] = 07
	
	tSpringFestival2016_Envoy_Stc["AllTask"]["TaskFin"] = 1

local tSpringFestival2016_Envoy_Log = {}
	tSpringFestival2016_Envoy_Log["LogId"] = 12000256
	tSpringFestival2016_Envoy_Log["FestivalId"] = 3365
	--全部活动完成,得到一个节日礼包
	tSpringFestival2016_Envoy_Log["AllTaskFin"] = "0,0,0,0,12000256,1,3003625,1"
	
--背包信的log
	tSpringFestival2016_Envoy_Log["LetterDel"] = "0,0,3007936,1,12000256,1,0,0"
	tSpringFestival2016_Envoy_Log["LetterExp"] = "0,0,3007936,1,12000256,1,4,10"
	tSpringFestival2016_Envoy_Log["LetterCult"] = "0,0,3007936,1,12000256,1,6,5"
--过期删除
	tSpringFestival2016_Envoy_Log["Expire"] = "0,0,%s,1,12000256,2,0,0"
	
--获取福袋的log,满级给修行值/未满级给经验
	tSpringFestival2016_Envoy_Log["Sign"] = "0,0,0,0,12000256,1[1],%s[5][4],1[1][60]"
	tSpringFestival2016_Envoy_Log["SignMaxLev"] = "0,0,0,0,12000256,1[1],%s[5][6],1[1][50]"
--打开福袋的log
	tSpringFestival2016_Envoy_Log[3007931] = "0,0,3007931,1,12000256,1[2],%s,%s"
	tSpringFestival2016_Envoy_Log[3007932] = "0,0,3007932,1,12000256,1[2],%s,%s"
	tSpringFestival2016_Envoy_Log[3007933] = "0,0,3007933,1,12000256,1[2],%s,%s"
	tSpringFestival2016_Envoy_Log[3007934] = "0,0,3007934,1,12000256,1[2],%s,%s"
	tSpringFestival2016_Envoy_Log[3007935] = "0,0,3007935,1,12000256,1[2],%s,%s"
	
	--浪漫花语武器外套礼盒(1,3,7天)
	tSpringFestival2016_Envoy_Log["SuitPack"] = {}
	tSpringFestival2016_Envoy_Log["SuitPack"][3007937] = "0,0,3007937,1,12000256,2,%s,1"
	tSpringFestival2016_Envoy_Log["SuitPack"][3007938] = "0,0,3007938,1,12000256,2,%s,1"
	tSpringFestival2016_Envoy_Log["SuitPack"][3007939] = "0,0,3007939,1,12000256,2,%s,1"
	
-----------------------------概率相关----------------------------
--外套相关
local tSpringFestival2016_Envoy_Rate = {}
--第1天福袋,未满级概率[1],满级获取经验等直接换成修行值[2]
	tSpringFestival2016_Envoy_Rate[3007931] = {}
	--未满级
	tSpringFestival2016_Envoy_Rate[3007931][1] = {}
	tSpringFestival2016_Envoy_Rate[3007931][1][1] = {}
	tSpringFestival2016_Envoy_Rate[3007931][1][1]["ItemChanceSum"] = 10000
--15分钟经验
	tSpringFestival2016_Envoy_Rate[3007931][1][1][1] = {}
	tSpringFestival2016_Envoy_Rate[3007931][1][1][1]["RandomItemChanceType"] = 2
	tSpringFestival2016_Envoy_Rate[3007931][1][1][1]["ItemChance"] = 2300
	tSpringFestival2016_Envoy_Rate[3007931][1][1][1]["Item_1"] = 15
	tSpringFestival2016_Envoy_Rate[3007931][1][1][1]["Item_Type"] = "Exp"
--30分钟经验
	tSpringFestival2016_Envoy_Rate[3007931][1][1][2] = {}
	tSpringFestival2016_Envoy_Rate[3007931][1][1][2]["RandomItemChanceType"] = 2
	tSpringFestival2016_Envoy_Rate[3007931][1][1][2]["ItemChance"] = 2100
	tSpringFestival2016_Envoy_Rate[3007931][1][1][2]["Item_1"] = 30
	tSpringFestival2016_Envoy_Rate[3007931][1][1][2]["Item_Type"] = "Exp"
--1天祝福
	tSpringFestival2016_Envoy_Rate[3007931][1][1][3] = {}
	tSpringFestival2016_Envoy_Rate[3007931][1][1][3]["RandomItemChanceType"] = 2
	tSpringFestival2016_Envoy_Rate[3007931][1][1][3]["ItemChance"] = 1800
	tSpringFestival2016_Envoy_Rate[3007931][1][1][3]["Item_1"] = 1
	tSpringFestival2016_Envoy_Rate[3007931][1][1][3]["Item_Type"] = "Bless"
--10点修行值
	tSpringFestival2016_Envoy_Rate[3007931][1][1][4] = {}
	tSpringFestival2016_Envoy_Rate[3007931][1][1][4]["RandomItemChanceType"] = 2
	tSpringFestival2016_Envoy_Rate[3007931][1][1][4]["ItemChance"] = 1800
	tSpringFestival2016_Envoy_Rate[3007931][1][1][4]["Item_1"] = 10
	tSpringFestival2016_Envoy_Rate[3007931][1][1][4]["Item_Type"] = "Cult"
--30分钟双倍经验
	tSpringFestival2016_Envoy_Rate[3007931][1][1][5] = {}
	tSpringFestival2016_Envoy_Rate[3007931][1][1][5]["RandomItemChanceType"] = 2
	tSpringFestival2016_Envoy_Rate[3007931][1][1][5]["ItemChance"] = 1800
	tSpringFestival2016_Envoy_Rate[3007931][1][1][5]["Item_1"] = 30
	tSpringFestival2016_Envoy_Rate[3007931][1][1][5]["Item_Type"] = "DoubleExp"
--1天龙凤呈祥外套
	tSpringFestival2016_Envoy_Rate[3007931][1][1][6] = {}
	tSpringFestival2016_Envoy_Rate[3007931][1][1][6]["RandomItemChanceType"] = 2
	tSpringFestival2016_Envoy_Rate[3007931][1][1][6]["ItemChance"] = 100
	tSpringFestival2016_Envoy_Rate[3007931][1][1][6]["Item_1"] = 192575
	tSpringFestival2016_Envoy_Rate[3007931][1][1][6]["Item_Type"] = "Item"
	tSpringFestival2016_Envoy_Rate[3007931][1][1][6]["Item_Attr"] = "0 0 3 1440 1 0 0 1"
	tSpringFestival2016_Envoy_Rate[3007931][1][1][6]["Available"] = 1
--浪漫花语武器外套礼盒（1天）
	tSpringFestival2016_Envoy_Rate[3007931][1][1][7] = {}
	tSpringFestival2016_Envoy_Rate[3007931][1][1][7]["RandomItemChanceType"] = 2
	tSpringFestival2016_Envoy_Rate[3007931][1][1][7]["ItemChance"] = 100
	tSpringFestival2016_Envoy_Rate[3007931][1][1][7]["Item_1"] = tSpringFestival2016_Envoy_Item["SuitPack"][3007937]
	tSpringFestival2016_Envoy_Rate[3007931][1][1][7]["Item_Attr"] = tSpringFestival2016_Envoy_Item["SuitPack"]["3007937Attr"]
	tSpringFestival2016_Envoy_Rate[3007931][1][1][7]["Item_Type"] = "Item"
--第1天福袋,满级
	tSpringFestival2016_Envoy_Rate[3007931][2] = {}
	tSpringFestival2016_Envoy_Rate[3007931][2][1] = {}
	tSpringFestival2016_Envoy_Rate[3007931][2][1]["ItemChanceSum"] = 10000
--1天祝福
	tSpringFestival2016_Envoy_Rate[3007931][2][1][1] = {}
	tSpringFestival2016_Envoy_Rate[3007931][2][1][1]["RandomItemChanceType"] = 2
	tSpringFestival2016_Envoy_Rate[3007931][2][1][1]["ItemChance"] = 1800
	tSpringFestival2016_Envoy_Rate[3007931][2][1][1]["Item_1"] = 1
	tSpringFestival2016_Envoy_Rate[3007931][2][1][1]["Item_Type"] = "Bless"
--10点修行值
	tSpringFestival2016_Envoy_Rate[3007931][2][1][2] = {}
	tSpringFestival2016_Envoy_Rate[3007931][2][1][2]["RandomItemChanceType"] = 2
	tSpringFestival2016_Envoy_Rate[3007931][2][1][2]["ItemChance"] = 8000
	tSpringFestival2016_Envoy_Rate[3007931][2][1][2]["Item_1"] = 10
	tSpringFestival2016_Envoy_Rate[3007931][2][1][2]["Item_Type"] = "Cult"
--1天龙凤呈祥外套
	tSpringFestival2016_Envoy_Rate[3007931][2][1][3] = {}
	tSpringFestival2016_Envoy_Rate[3007931][2][1][3]["RandomItemChanceType"] = 2
	tSpringFestival2016_Envoy_Rate[3007931][2][1][3]["ItemChance"] = 100
	tSpringFestival2016_Envoy_Rate[3007931][2][1][3]["Item_1"] = 192575
	tSpringFestival2016_Envoy_Rate[3007931][2][1][3]["Item_Type"] = "Item"
	tSpringFestival2016_Envoy_Rate[3007931][2][1][3]["Item_Attr"] = "0 0 3 1440 1 0 0 1"
	tSpringFestival2016_Envoy_Rate[3007931][2][1][3]["Available"] = 1
--浪漫花语武器外套礼盒（1天）
	tSpringFestival2016_Envoy_Rate[3007931][2][1][4] = {}
	tSpringFestival2016_Envoy_Rate[3007931][2][1][4]["RandomItemChanceType"] = 2
	tSpringFestival2016_Envoy_Rate[3007931][2][1][4]["ItemChance"] = 100
	tSpringFestival2016_Envoy_Rate[3007931][2][1][4]["Item_1"] = tSpringFestival2016_Envoy_Item["SuitPack"][3007937]
	tSpringFestival2016_Envoy_Rate[3007931][2][1][4]["Item_Attr"] = tSpringFestival2016_Envoy_Item["SuitPack"]["3007937Attr"]
	tSpringFestival2016_Envoy_Rate[3007931][2][1][4]["Item_Type"] = "Item"

--第2-3天福袋,未满级概率[1],满级获取经验等直接换成修行值[2]
	tSpringFestival2016_Envoy_Rate[3007932] = {}
	--未满级
	tSpringFestival2016_Envoy_Rate[3007932][1] = {}
	tSpringFestival2016_Envoy_Rate[3007932][1][1] = {}
	tSpringFestival2016_Envoy_Rate[3007932][1][1]["ItemChanceSum"] = 10000
--30分钟经验
	tSpringFestival2016_Envoy_Rate[3007932][1][1][1] = {}
	tSpringFestival2016_Envoy_Rate[3007932][1][1][1]["RandomItemChanceType"] = 2
	tSpringFestival2016_Envoy_Rate[3007932][1][1][1]["ItemChance"] = 2000
	tSpringFestival2016_Envoy_Rate[3007932][1][1][1]["Item_1"] = 30
	tSpringFestival2016_Envoy_Rate[3007932][1][1][1]["Item_Type"] = "Exp"
--60分钟经验
	tSpringFestival2016_Envoy_Rate[3007932][1][1][2] = {}
	tSpringFestival2016_Envoy_Rate[3007932][1][1][2]["RandomItemChanceType"] = 2
	tSpringFestival2016_Envoy_Rate[3007932][1][1][2]["ItemChance"] = 1800
	tSpringFestival2016_Envoy_Rate[3007932][1][1][2]["Item_1"] = 60
	tSpringFestival2016_Envoy_Rate[3007932][1][1][2]["Item_Type"] = "Exp"
--2天祝福
	tSpringFestival2016_Envoy_Rate[3007932][1][1][3] = {}
	tSpringFestival2016_Envoy_Rate[3007932][1][1][3]["RandomItemChanceType"] = 2
	tSpringFestival2016_Envoy_Rate[3007932][1][1][3]["ItemChance"] = 1400
	tSpringFestival2016_Envoy_Rate[3007932][1][1][3]["Item_1"] = 2
	tSpringFestival2016_Envoy_Rate[3007932][1][1][3]["Item_Type"] = "Bless"
--30修行值
	tSpringFestival2016_Envoy_Rate[3007932][1][1][4] = {}
	tSpringFestival2016_Envoy_Rate[3007932][1][1][4]["RandomItemChanceType"] = 2
	tSpringFestival2016_Envoy_Rate[3007932][1][1][4]["ItemChance"] = 1500
	tSpringFestival2016_Envoy_Rate[3007932][1][1][4]["Item_1"] = 30
	tSpringFestival2016_Envoy_Rate[3007932][1][1][4]["Item_Type"] = "Cult"
--1小时双倍经验
	tSpringFestival2016_Envoy_Rate[3007932][1][1][5] = {}
	tSpringFestival2016_Envoy_Rate[3007932][1][1][5]["RandomItemChanceType"] = 2
	tSpringFestival2016_Envoy_Rate[3007932][1][1][5]["ItemChance"] = 1500
	tSpringFestival2016_Envoy_Rate[3007932][1][1][5]["Item_1"] = 60
	tSpringFestival2016_Envoy_Rate[3007932][1][1][5]["Item_Type"] = "DoubleExp"
--3天龙凤呈祥外套
	tSpringFestival2016_Envoy_Rate[3007932][1][1][6] = {}
	tSpringFestival2016_Envoy_Rate[3007932][1][1][6]["RandomItemChanceType"] = 2
	tSpringFestival2016_Envoy_Rate[3007932][1][1][6]["ItemChance"] = 600
	tSpringFestival2016_Envoy_Rate[3007932][1][1][6]["Item_1"] = 192575
	tSpringFestival2016_Envoy_Rate[3007932][1][1][6]["Item_Type"] = "Item"
	tSpringFestival2016_Envoy_Rate[3007932][1][1][6]["Item_Attr"] = "0 0 3 4320 1 0 0 1"
	tSpringFestival2016_Envoy_Rate[3007932][1][1][6]["Available"] = 3
--浪漫花语武器外套礼盒（3天）
	tSpringFestival2016_Envoy_Rate[3007932][1][1][7] = {}
	tSpringFestival2016_Envoy_Rate[3007932][1][1][7]["RandomItemChanceType"] = 2
	tSpringFestival2016_Envoy_Rate[3007932][1][1][7]["ItemChance"] = 600
	tSpringFestival2016_Envoy_Rate[3007932][1][1][7]["Item_1"] = tSpringFestival2016_Envoy_Item["SuitPack"][3007938]
	tSpringFestival2016_Envoy_Rate[3007932][1][1][7]["Item_Attr"] = tSpringFestival2016_Envoy_Item["SuitPack"]["3007938Attr"]
	tSpringFestival2016_Envoy_Rate[3007932][1][1][7]["Item_Type"] = "Item"
--聚神丹礼包
	tSpringFestival2016_Envoy_Rate[3007932][1][1][8] = {}
	tSpringFestival2016_Envoy_Rate[3007932][1][1][8]["RandomItemChanceType"] = 2
	tSpringFestival2016_Envoy_Rate[3007932][1][1][8]["ItemChance"] = 600
	tSpringFestival2016_Envoy_Rate[3007932][1][1][8]["Item_1"] = 721316
	tSpringFestival2016_Envoy_Rate[3007932][1][1][8]["Item_Type"] = "Item"

--第2-3天福袋,满级
	tSpringFestival2016_Envoy_Rate[3007932][2] = {}
	tSpringFestival2016_Envoy_Rate[3007932][2][1] = {}
	tSpringFestival2016_Envoy_Rate[3007932][2][1]["ItemChanceSum"] = 10000
--2天祝福
	tSpringFestival2016_Envoy_Rate[3007932][2][1][1] = {}
	tSpringFestival2016_Envoy_Rate[3007932][2][1][1]["RandomItemChanceType"] = 2
	tSpringFestival2016_Envoy_Rate[3007932][2][1][1]["ItemChance"] = 1400
	tSpringFestival2016_Envoy_Rate[3007932][2][1][1]["Item_1"] = 2
	tSpringFestival2016_Envoy_Rate[3007932][2][1][1]["Item_Type"] = "Bless"
	--30修行值
	tSpringFestival2016_Envoy_Rate[3007932][2][1][2] = {}
	tSpringFestival2016_Envoy_Rate[3007932][2][1][2]["RandomItemChanceType"] = 2
	tSpringFestival2016_Envoy_Rate[3007932][2][1][2]["ItemChance"] = 7400
	tSpringFestival2016_Envoy_Rate[3007932][2][1][2]["Item_1"] = 30
	tSpringFestival2016_Envoy_Rate[3007932][2][1][2]["Item_Type"] = "Cult"
--3天龙凤呈祥外套
	tSpringFestival2016_Envoy_Rate[3007932][2][1][3] = {}
	tSpringFestival2016_Envoy_Rate[3007932][2][1][3]["RandomItemChanceType"] = 2
	tSpringFestival2016_Envoy_Rate[3007932][2][1][3]["ItemChance"] = 600
	tSpringFestival2016_Envoy_Rate[3007932][2][1][3]["Item_1"] = 192575
	tSpringFestival2016_Envoy_Rate[3007932][2][1][3]["Item_Type"] = "Item"
	tSpringFestival2016_Envoy_Rate[3007932][2][1][3]["Item_Attr"] = "0 0 3 1440 1 0 0 1"
	tSpringFestival2016_Envoy_Rate[3007932][2][1][3]["Available"] = 3
--浪漫花语武器外套礼盒（3天）
	tSpringFestival2016_Envoy_Rate[3007932][2][1][4] = {}
	tSpringFestival2016_Envoy_Rate[3007932][2][1][4]["RandomItemChanceType"] = 2
	tSpringFestival2016_Envoy_Rate[3007932][2][1][4]["ItemChance"] = 600
	tSpringFestival2016_Envoy_Rate[3007932][2][1][4]["Item_1"] = tSpringFestival2016_Envoy_Item["SuitPack"][3007938]
	tSpringFestival2016_Envoy_Rate[3007932][2][1][4]["Item_Attr"] = tSpringFestival2016_Envoy_Item["SuitPack"]["3007938Attr"]
	tSpringFestival2016_Envoy_Rate[3007932][2][1][4]["Item_Type"] = "Item"

--第4-7天福袋,未满级概率[1],满级获取经验等直接换成修行值[2]
	tSpringFestival2016_Envoy_Rate[3007933] = {}
	--未满级
	tSpringFestival2016_Envoy_Rate[3007933][1] = {}
	tSpringFestival2016_Envoy_Rate[3007933][1][1] = {}
	tSpringFestival2016_Envoy_Rate[3007933][1][1]["ItemChanceSum"] = 10000
--60分钟经验	25.00 
	tSpringFestival2016_Envoy_Rate[3007933][1][1][1] = {}
	tSpringFestival2016_Envoy_Rate[3007933][1][1][1]["RandomItemChanceType"] = 2
	tSpringFestival2016_Envoy_Rate[3007933][1][1][1]["ItemChance"] = 2500
	tSpringFestival2016_Envoy_Rate[3007933][1][1][1]["Item_1"] = 60
	tSpringFestival2016_Envoy_Rate[3007933][1][1][1]["Item_Type"] = "Exp"
--3天祝福	18.00 
	tSpringFestival2016_Envoy_Rate[3007933][1][1][2] = {}
	tSpringFestival2016_Envoy_Rate[3007933][1][1][2]["RandomItemChanceType"] = 2
	tSpringFestival2016_Envoy_Rate[3007933][1][1][2]["ItemChance"] = 1800
	tSpringFestival2016_Envoy_Rate[3007933][1][1][2]["Item_1"] = 3
	tSpringFestival2016_Envoy_Rate[3007933][1][1][2]["Item_Type"] = "Bless"
--30点修行值	14.00 
	tSpringFestival2016_Envoy_Rate[3007933][1][1][3] = {}
	tSpringFestival2016_Envoy_Rate[3007933][1][1][3]["RandomItemChanceType"] = 2
	tSpringFestival2016_Envoy_Rate[3007933][1][1][3]["ItemChance"] = 1400
	tSpringFestival2016_Envoy_Rate[3007933][1][1][3]["Item_1"] = 30
	tSpringFestival2016_Envoy_Rate[3007933][1][1][3]["Item_Type"] = "Cult"
--20点气力值	13.00 
	tSpringFestival2016_Envoy_Rate[3007933][1][1][4] = {}
	tSpringFestival2016_Envoy_Rate[3007933][1][1][4]["RandomItemChanceType"] = 2
	tSpringFestival2016_Envoy_Rate[3007933][1][1][4]["ItemChance"] = 1300
	tSpringFestival2016_Envoy_Rate[3007933][1][1][4]["Item_1"] = 20
	tSpringFestival2016_Envoy_Rate[3007933][1][1][4]["Item_Type"] = "Strength"
--昆仑雪水2个	10.00 
	tSpringFestival2016_Envoy_Rate[3007933][1][1][5] = {}
	tSpringFestival2016_Envoy_Rate[3007933][1][1][5]["RandomItemChanceType"] = 2
	tSpringFestival2016_Envoy_Rate[3007933][1][1][5]["ItemChance"] = 1000
	tSpringFestival2016_Envoy_Rate[3007933][1][1][5]["Item_1"] = 723017
	tSpringFestival2016_Envoy_Rate[3007933][1][1][5]["Item_Attr"] = "0 2 3"
	tSpringFestival2016_Envoy_Rate[3007933][1][1][5]["Item_Type"] = "Item"
--3天春节1神佑龙凤呈祥外套	3.00 
	tSpringFestival2016_Envoy_Rate[3007933][1][1][6] = {}
	tSpringFestival2016_Envoy_Rate[3007933][1][1][6]["RandomItemChanceType"] = 2
	tSpringFestival2016_Envoy_Rate[3007933][1][1][6]["ItemChance"] = 300
	tSpringFestival2016_Envoy_Rate[3007933][1][1][6]["Item_1"] = 192575
	tSpringFestival2016_Envoy_Rate[3007933][1][1][6]["Item_Attr"] = "0 0 3 1440 1 0 0 1"
	tSpringFestival2016_Envoy_Rate[3007933][1][1][6]["Item_Type"] = "Item"
	tSpringFestival2016_Envoy_Rate[3007933][1][1][6]["Available"] = 3
--3天1神佑浪漫花语武器外套	3.00 
	tSpringFestival2016_Envoy_Rate[3007933][1][1][7] = {}
	tSpringFestival2016_Envoy_Rate[3007933][1][1][7]["RandomItemChanceType"] = 2
	tSpringFestival2016_Envoy_Rate[3007933][1][1][7]["ItemChance"] = 300
	tSpringFestival2016_Envoy_Rate[3007933][1][1][7]["Item_1"] = tSpringFestival2016_Envoy_Item["SuitPack"][3007938]
	tSpringFestival2016_Envoy_Rate[3007933][1][1][7]["Item_Attr"] = tSpringFestival2016_Envoy_Item["SuitPack"]["3007938Attr"]
	tSpringFestival2016_Envoy_Rate[3007933][1][1][7]["Item_Type"] = "Item"
--聚神丹礼包	7.00 
	tSpringFestival2016_Envoy_Rate[3007933][1][1][8] = {}
	tSpringFestival2016_Envoy_Rate[3007933][1][1][8]["RandomItemChanceType"] = 2
	tSpringFestival2016_Envoy_Rate[3007933][1][1][8]["ItemChance"] = 700
	tSpringFestival2016_Envoy_Rate[3007933][1][1][8]["Item_1"] = 721316
	tSpringFestival2016_Envoy_Rate[3007933][1][1][8]["Item_Attr"] = "0 0 3"
	tSpringFestival2016_Envoy_Rate[3007933][1][1][8]["Item_Type"] = "Item"
--5个流星	7.00 
	tSpringFestival2016_Envoy_Rate[3007933][1][1][9] = {}
	tSpringFestival2016_Envoy_Rate[3007933][1][1][9]["RandomItemChanceType"] = 2
	tSpringFestival2016_Envoy_Rate[3007933][1][1][9]["ItemChance"] = 700
	tSpringFestival2016_Envoy_Rate[3007933][1][1][9]["Item_1"] = 1088001
	tSpringFestival2016_Envoy_Rate[3007933][1][1][9]["Item_Attr"] = "0 5"
	tSpringFestival2016_Envoy_Rate[3007933][1][1][9]["Item_Type"] = "Item"

--第4-7天福袋,满级
	tSpringFestival2016_Envoy_Rate[3007933][2] = {}
	tSpringFestival2016_Envoy_Rate[3007933][2][1] = {}
	tSpringFestival2016_Envoy_Rate[3007933][2][1]["ItemChanceSum"] = 10000
--3天祝福	18.00 
	tSpringFestival2016_Envoy_Rate[3007933][2][1][1] = {}
	tSpringFestival2016_Envoy_Rate[3007933][2][1][1]["RandomItemChanceType"] = 2
	tSpringFestival2016_Envoy_Rate[3007933][2][1][1]["ItemChance"] = 1800
	tSpringFestival2016_Envoy_Rate[3007933][2][1][1]["Item_1"] = 3
	tSpringFestival2016_Envoy_Rate[3007933][2][1][1]["Item_Type"] = "Bless"
--30点修行值	56.00 
	tSpringFestival2016_Envoy_Rate[3007933][2][1][2] = {}
	tSpringFestival2016_Envoy_Rate[3007933][2][1][2]["RandomItemChanceType"] = 2
	tSpringFestival2016_Envoy_Rate[3007933][2][1][2]["ItemChance"] = 5600
	tSpringFestival2016_Envoy_Rate[3007933][2][1][2]["Item_1"] = 30
	tSpringFestival2016_Envoy_Rate[3007933][2][1][2]["Item_Type"] = "Cult"
--20点气力值	13.00 
	tSpringFestival2016_Envoy_Rate[3007933][2][1][3] = {}
	tSpringFestival2016_Envoy_Rate[3007933][2][1][3]["RandomItemChanceType"] = 2
	tSpringFestival2016_Envoy_Rate[3007933][2][1][3]["ItemChance"] = 1300
	tSpringFestival2016_Envoy_Rate[3007933][2][1][3]["Item_1"] = 20
	tSpringFestival2016_Envoy_Rate[3007933][2][1][3]["Item_Type"] = "Strength"
--3天春节1神佑龙凤呈祥外套	3.00 
	tSpringFestival2016_Envoy_Rate[3007933][2][1][4] = {}
	tSpringFestival2016_Envoy_Rate[3007933][2][1][4]["RandomItemChanceType"] = 2
	tSpringFestival2016_Envoy_Rate[3007933][2][1][4]["ItemChance"] = 300
	tSpringFestival2016_Envoy_Rate[3007933][2][1][4]["Item_1"] = 192575
	tSpringFestival2016_Envoy_Rate[3007933][2][1][4]["Item_Attr"] = "0 0 3 1440 1 0 0 1"
	tSpringFestival2016_Envoy_Rate[3007933][2][1][4]["Item_Type"] = "Item"
	tSpringFestival2016_Envoy_Rate[3007933][2][1][4]["Available"] = 3
--3天1神佑浪漫花语武器外套	3.00 
	tSpringFestival2016_Envoy_Rate[3007933][2][1][5] = {}
	tSpringFestival2016_Envoy_Rate[3007933][2][1][5]["RandomItemChanceType"] = 2
	tSpringFestival2016_Envoy_Rate[3007933][2][1][5]["ItemChance"] = 300
	tSpringFestival2016_Envoy_Rate[3007933][2][1][5]["Item_1"] = tSpringFestival2016_Envoy_Item["SuitPack"][3007938]
	tSpringFestival2016_Envoy_Rate[3007933][2][1][5]["Item_Attr"] = tSpringFestival2016_Envoy_Item["SuitPack"]["3007938Attr"]
	tSpringFestival2016_Envoy_Rate[3007933][2][1][5]["Item_Type"] = "Item"
--5个流星	7.00 
	tSpringFestival2016_Envoy_Rate[3007933][2][1][6] = {}
	tSpringFestival2016_Envoy_Rate[3007933][2][1][6]["RandomItemChanceType"] = 2
	tSpringFestival2016_Envoy_Rate[3007933][2][1][6]["ItemChance"] = 700
	tSpringFestival2016_Envoy_Rate[3007933][2][1][6]["Item_1"] = 1088001
	tSpringFestival2016_Envoy_Rate[3007933][2][1][6]["Item_Attr"] = "0 5"
	tSpringFestival2016_Envoy_Rate[3007933][2][1][6]["Item_Type"] = "Item"

--8-13天福袋 未满级[1],满级[2]
	tSpringFestival2016_Envoy_Rate[3007934] = {}
	--未满级
	tSpringFestival2016_Envoy_Rate[3007934][1] = {}
	tSpringFestival2016_Envoy_Rate[3007934][1][1] = {}
	tSpringFestival2016_Envoy_Rate[3007934][1][1]["ItemChanceSum"] = 10000
--3天祝福	30.00 
	tSpringFestival2016_Envoy_Rate[3007934][1][1][1] = {}
	tSpringFestival2016_Envoy_Rate[3007934][1][1][1]["RandomItemChanceType"] = 2
	tSpringFestival2016_Envoy_Rate[3007934][1][1][1]["ItemChance"] = 3000
	tSpringFestival2016_Envoy_Rate[3007934][1][1][1]["Item_1"] = 3
	tSpringFestival2016_Envoy_Rate[3007934][1][1][1]["Item_Type"] = "Bless"
--30点修行值	17.00 
	tSpringFestival2016_Envoy_Rate[3007934][1][1][2] = {}
	tSpringFestival2016_Envoy_Rate[3007934][1][1][2]["RandomItemChanceType"] = 2
	tSpringFestival2016_Envoy_Rate[3007934][1][1][2]["ItemChance"] = 1700
	tSpringFestival2016_Envoy_Rate[3007934][1][1][2]["Item_1"] = 30
	tSpringFestival2016_Envoy_Rate[3007934][1][1][2]["Item_Type"] = "Cult"
--20点气力值	14.00 
	tSpringFestival2016_Envoy_Rate[3007934][1][1][3] = {}
	tSpringFestival2016_Envoy_Rate[3007934][1][1][3]["RandomItemChanceType"] = 2
	tSpringFestival2016_Envoy_Rate[3007934][1][1][3]["ItemChance"] = 1400
	tSpringFestival2016_Envoy_Rate[3007934][1][1][3]["Item_1"] = 20
	tSpringFestival2016_Envoy_Rate[3007934][1][1][3]["Item_Type"] = "Strength"
--昆仑雪水2个	14.00 
	tSpringFestival2016_Envoy_Rate[3007934][1][1][4] = {}
	tSpringFestival2016_Envoy_Rate[3007934][1][1][4]["RandomItemChanceType"] = 2
	tSpringFestival2016_Envoy_Rate[3007934][1][1][4]["ItemChance"] = 1400
	tSpringFestival2016_Envoy_Rate[3007934][1][1][4]["Item_1"] = 723017
	tSpringFestival2016_Envoy_Rate[3007934][1][1][4]["Item_Attr"] = "0 2 3"
	tSpringFestival2016_Envoy_Rate[3007934][1][1][4]["Item_Type"] = "Item"
--3天春节1神佑龙凤呈祥外套	5.00 
	tSpringFestival2016_Envoy_Rate[3007934][1][1][5] = {}
	tSpringFestival2016_Envoy_Rate[3007934][1][1][5]["RandomItemChanceType"] = 2
	tSpringFestival2016_Envoy_Rate[3007934][1][1][5]["ItemChance"] = 500
	tSpringFestival2016_Envoy_Rate[3007934][1][1][5]["Item_1"] = 192575
	tSpringFestival2016_Envoy_Rate[3007934][1][1][5]["Item_Attr"] = "0 0 3 4320 1 0 0 1"
	tSpringFestival2016_Envoy_Rate[3007934][1][1][5]["Item_Type"] = "Item"
	tSpringFestival2016_Envoy_Rate[3007934][1][1][5]["Available"] = 3
--3天1神佑浪漫花语武器外套3005573	5.00 
	tSpringFestival2016_Envoy_Rate[3007934][1][1][6] = {}
	tSpringFestival2016_Envoy_Rate[3007934][1][1][6]["RandomItemChanceType"] = 2
	tSpringFestival2016_Envoy_Rate[3007934][1][1][6]["ItemChance"] = 500
	tSpringFestival2016_Envoy_Rate[3007934][1][1][6]["Item_1"] = tSpringFestival2016_Envoy_Item["SuitPack"][3007938]
	tSpringFestival2016_Envoy_Rate[3007934][1][1][6]["Item_Attr"] = tSpringFestival2016_Envoy_Item["SuitPack"]["3007938Attr"]
	tSpringFestival2016_Envoy_Rate[3007934][1][1][6]["Item_Type"] = "Item"
--聚神丹礼包721316	7.00 
	tSpringFestival2016_Envoy_Rate[3007934][1][1][7] = {}
	tSpringFestival2016_Envoy_Rate[3007934][1][1][7]["RandomItemChanceType"] = 2
	tSpringFestival2016_Envoy_Rate[3007934][1][1][7]["ItemChance"] = 700
	tSpringFestival2016_Envoy_Rate[3007934][1][1][7]["Item_1"] = 721316
	tSpringFestival2016_Envoy_Rate[3007934][1][1][7]["Item_Attr"] = "0 0 3"
	tSpringFestival2016_Envoy_Rate[3007934][1][1][7]["Item_Type"] = "Item"
--1个流星卷720027	6.00 
	tSpringFestival2016_Envoy_Rate[3007934][1][1][8] = {}
	tSpringFestival2016_Envoy_Rate[3007934][1][1][8]["RandomItemChanceType"] = 2
	tSpringFestival2016_Envoy_Rate[3007934][1][1][8]["ItemChance"] = 600
	tSpringFestival2016_Envoy_Rate[3007934][1][1][8]["Item_1"] = 720027
	tSpringFestival2016_Envoy_Rate[3007934][1][1][8]["Item_Attr"] = "0 1"
	tSpringFestival2016_Envoy_Rate[3007934][1][1][8]["Item_Type"] = "Item"
--1个普通宝石（天地玄除外）3003875	2.00 
	tSpringFestival2016_Envoy_Rate[3007934][1][1][9] = {}
	tSpringFestival2016_Envoy_Rate[3007934][1][1][9]["RandomItemChanceType"] = 2
	tSpringFestival2016_Envoy_Rate[3007934][1][1][9]["ItemChance"] = 200
	tSpringFestival2016_Envoy_Rate[3007934][1][1][9]["Item_1"] = 3003875
	tSpringFestival2016_Envoy_Rate[3007934][1][1][9]["Item_Attr"] = "0 1"
	tSpringFestival2016_Envoy_Rate[3007934][1][1][9]["Item_Type"] = "Item"
--第8-13天福袋 满级
	tSpringFestival2016_Envoy_Rate[3007934][2] = {}
	tSpringFestival2016_Envoy_Rate[3007934][2][1] = {}
	tSpringFestival2016_Envoy_Rate[3007934][2][1]["ItemChanceSum"] = 10000
--3天祝福	30.00 
	tSpringFestival2016_Envoy_Rate[3007934][2][1][1] = {}
	tSpringFestival2016_Envoy_Rate[3007934][2][1][1]["RandomItemChanceType"] = 2
	tSpringFestival2016_Envoy_Rate[3007934][2][1][1]["ItemChance"] = 3000
	tSpringFestival2016_Envoy_Rate[3007934][2][1][1]["Item_1"] = 3
	tSpringFestival2016_Envoy_Rate[3007934][2][1][1]["Item_Type"] = "Bless"
--30点修行值	38.00 
	tSpringFestival2016_Envoy_Rate[3007934][2][1][2] = {}
	tSpringFestival2016_Envoy_Rate[3007934][2][1][2]["RandomItemChanceType"] = 2
	tSpringFestival2016_Envoy_Rate[3007934][2][1][2]["ItemChance"] = 3800
	tSpringFestival2016_Envoy_Rate[3007934][2][1][2]["Item_1"] = 30
	tSpringFestival2016_Envoy_Rate[3007934][2][1][2]["Item_Type"] = "Cult"
--20点气力值	14.00 
	tSpringFestival2016_Envoy_Rate[3007934][2][1][3] = {}
	tSpringFestival2016_Envoy_Rate[3007934][2][1][3]["RandomItemChanceType"] = 2
	tSpringFestival2016_Envoy_Rate[3007934][2][1][3]["ItemChance"] = 1400
	tSpringFestival2016_Envoy_Rate[3007934][2][1][3]["Item_1"] = 20
	tSpringFestival2016_Envoy_Rate[3007934][2][1][3]["Item_Type"] = "Strength"
--3天春节1神佑龙凤呈祥外套	5.00 
	tSpringFestival2016_Envoy_Rate[3007934][2][1][4] = {}
	tSpringFestival2016_Envoy_Rate[3007934][2][1][4]["RandomItemChanceType"] = 2
	tSpringFestival2016_Envoy_Rate[3007934][2][1][4]["ItemChance"] = 500
	tSpringFestival2016_Envoy_Rate[3007934][2][1][4]["Item_1"] = 192575
	tSpringFestival2016_Envoy_Rate[3007934][2][1][4]["Item_Attr"] = "0 0 3 4320 1 0 0 1"
	tSpringFestival2016_Envoy_Rate[3007934][2][1][4]["Item_Type"] = "Item"
	tSpringFestival2016_Envoy_Rate[3007934][2][1][4]["Available"] = 3
--3天1神佑浪漫花语武器外套	5.00 
	tSpringFestival2016_Envoy_Rate[3007934][2][1][5] = {}
	tSpringFestival2016_Envoy_Rate[3007934][2][1][5]["RandomItemChanceType"] = 2
	tSpringFestival2016_Envoy_Rate[3007934][2][1][5]["ItemChance"] = 500
	tSpringFestival2016_Envoy_Rate[3007934][2][1][5]["Item_1"] = tSpringFestival2016_Envoy_Item["SuitPack"][3007938]
	tSpringFestival2016_Envoy_Rate[3007934][2][1][5]["Item_Attr"] = tSpringFestival2016_Envoy_Item["SuitPack"]["3007938Attr"]
	tSpringFestival2016_Envoy_Rate[3007934][2][1][5]["Item_Type"] = "Item"
--1个流星卷	6.00 
	tSpringFestival2016_Envoy_Rate[3007934][2][1][6] = {}
	tSpringFestival2016_Envoy_Rate[3007934][2][1][6]["RandomItemChanceType"] = 2
	tSpringFestival2016_Envoy_Rate[3007934][2][1][6]["ItemChance"] = 600
	tSpringFestival2016_Envoy_Rate[3007934][2][1][6]["Item_1"] = 720027
	tSpringFestival2016_Envoy_Rate[3007934][2][1][6]["Item_Attr"] = "0 1"
	tSpringFestival2016_Envoy_Rate[3007934][2][1][6]["Item_Type"] = "Item"
--1个普通宝石（天地玄除外）	2.00 
	tSpringFestival2016_Envoy_Rate[3007934][2][1][7] = {}
	tSpringFestival2016_Envoy_Rate[3007934][2][1][7]["RandomItemChanceType"] = 2
	tSpringFestival2016_Envoy_Rate[3007934][2][1][7]["ItemChance"] = 200
	tSpringFestival2016_Envoy_Rate[3007934][2][1][7]["Item_1"] = 3003875
	tSpringFestival2016_Envoy_Rate[3007934][2][1][7]["Item_Attr"] = "0 1"
	tSpringFestival2016_Envoy_Rate[3007934][2][1][7]["Item_Type"] = "Item"
	
	--第14-20天福袋,未满级概率[1],满级获取经验等直接换成修行值[2]
	tSpringFestival2016_Envoy_Rate[3007935] = {}
	--未满级
	tSpringFestival2016_Envoy_Rate[3007935][1] = {}
	tSpringFestival2016_Envoy_Rate[3007935][1][1] = {}
	tSpringFestival2016_Envoy_Rate[3007935][1][1]["ItemChanceSum"] = 10000
--3天祝福	35.00 
	tSpringFestival2016_Envoy_Rate[3007935][1][1][1] = {}
	tSpringFestival2016_Envoy_Rate[3007935][1][1][1]["RandomItemChanceType"] = 2
	tSpringFestival2016_Envoy_Rate[3007935][1][1][1]["ItemChance"] = 3500
	tSpringFestival2016_Envoy_Rate[3007935][1][1][1]["Item_1"] = 3
	tSpringFestival2016_Envoy_Rate[3007935][1][1][1]["Item_Type"] = "Bless"
--50点修行值	21.00 
	tSpringFestival2016_Envoy_Rate[3007935][1][1][2] = {}
	tSpringFestival2016_Envoy_Rate[3007935][1][1][2]["RandomItemChanceType"] = 2
	tSpringFestival2016_Envoy_Rate[3007935][1][1][2]["ItemChance"] = 2100
	tSpringFestival2016_Envoy_Rate[3007935][1][1][2]["Item_1"] = 50
	tSpringFestival2016_Envoy_Rate[3007935][1][1][2]["Item_Type"] = "Cult"
--昆仑雪水3个723017	14.00 
	tSpringFestival2016_Envoy_Rate[3007935][1][1][3] = {}
	tSpringFestival2016_Envoy_Rate[3007935][1][1][3]["RandomItemChanceType"] = 2
	tSpringFestival2016_Envoy_Rate[3007935][1][1][3]["ItemChance"] = 1400
	tSpringFestival2016_Envoy_Rate[3007935][1][1][3]["Item_1"] = 723017
	tSpringFestival2016_Envoy_Rate[3007935][1][1][3]["Item_Attr"] = "0 3 3"
	tSpringFestival2016_Envoy_Rate[3007935][1][1][3]["Item_Type"] = "Item"
--7天春节1神佑龙凤呈祥外套	6.00 
	tSpringFestival2016_Envoy_Rate[3007935][1][1][4] = {}
	tSpringFestival2016_Envoy_Rate[3007935][1][1][4]["RandomItemChanceType"] = 2
	tSpringFestival2016_Envoy_Rate[3007935][1][1][4]["ItemChance"] = 600
	tSpringFestival2016_Envoy_Rate[3007935][1][1][4]["Item_1"] = 192575
	tSpringFestival2016_Envoy_Rate[3007935][1][1][4]["Item_Attr"] = "0 0 3 10080 1 0 0 1"
	tSpringFestival2016_Envoy_Rate[3007935][1][1][4]["Item_Type"] = "Item"
	tSpringFestival2016_Envoy_Rate[3007935][1][1][4]["Available"] = 7
--7天1神佑浪漫花语武器外套	6.00 
	tSpringFestival2016_Envoy_Rate[3007935][1][1][5] = {}
	tSpringFestival2016_Envoy_Rate[3007935][1][1][5]["RandomItemChanceType"] = 2
	tSpringFestival2016_Envoy_Rate[3007935][1][1][5]["ItemChance"] = 600
	tSpringFestival2016_Envoy_Rate[3007935][1][1][5]["Item_1"] = tSpringFestival2016_Envoy_Item["SuitPack"][3007939]
	tSpringFestival2016_Envoy_Rate[3007935][1][1][5]["Item_Attr"] = tSpringFestival2016_Envoy_Item["SuitPack"]["3007939Attr"]
	tSpringFestival2016_Envoy_Rate[3007935][1][1][5]["Item_Type"] = "Item"
--聚神丹礼包	7.20 
	tSpringFestival2016_Envoy_Rate[3007935][1][1][6] = {}
	tSpringFestival2016_Envoy_Rate[3007935][1][1][6]["RandomItemChanceType"] = 2
	tSpringFestival2016_Envoy_Rate[3007935][1][1][6]["ItemChance"] = 720
	tSpringFestival2016_Envoy_Rate[3007935][1][1][6]["Item_1"] = 721316
	tSpringFestival2016_Envoy_Rate[3007935][1][1][6]["Item_Attr"] = "0 0 3"
	tSpringFestival2016_Envoy_Rate[3007935][1][1][6]["Item_Type"] = "Item"
--1个流星卷	7.20 
	tSpringFestival2016_Envoy_Rate[3007935][1][1][7] = {}
	tSpringFestival2016_Envoy_Rate[3007935][1][1][7]["RandomItemChanceType"] = 2
	tSpringFestival2016_Envoy_Rate[3007935][1][1][7]["ItemChance"] = 720
	tSpringFestival2016_Envoy_Rate[3007935][1][1][7]["Item_1"] = 720027
	tSpringFestival2016_Envoy_Rate[3007935][1][1][7]["Item_Attr"] = "0 1"
	tSpringFestival2016_Envoy_Rate[3007935][1][1][7]["Item_Type"] = "Item"
--1个普通宝石（天地玄除外）	3.50 
	tSpringFestival2016_Envoy_Rate[3007935][1][1][8] = {}
	tSpringFestival2016_Envoy_Rate[3007935][1][1][8]["RandomItemChanceType"] = 2
	tSpringFestival2016_Envoy_Rate[3007935][1][1][8]["ItemChance"] = 350
	tSpringFestival2016_Envoy_Rate[3007935][1][1][8]["Item_1"] = 3003875
	tSpringFestival2016_Envoy_Rate[3007935][1][1][8]["Item_Attr"] = "0 1"
	tSpringFestival2016_Envoy_Rate[3007935][1][1][8]["Item_Type"] = "Item"
--1个龙珠	0.10 
	tSpringFestival2016_Envoy_Rate[3007935][1][1][9] = {}
	tSpringFestival2016_Envoy_Rate[3007935][1][1][9]["RandomItemChanceType"] = 2
	tSpringFestival2016_Envoy_Rate[3007935][1][1][9]["ItemChance"] = 10
	tSpringFestival2016_Envoy_Rate[3007935][1][1][9]["Item_1"] = 1088000
	tSpringFestival2016_Envoy_Rate[3007935][1][1][9]["Item_Attr"] = "0 1"
	tSpringFestival2016_Envoy_Rate[3007935][1][1][9]["Item_Type"] = "DB"

--满级
	tSpringFestival2016_Envoy_Rate[3007935][2] = {}
	tSpringFestival2016_Envoy_Rate[3007935][2][1] = {}
	tSpringFestival2016_Envoy_Rate[3007935][2][1]["ItemChanceSum"] = 10000
--3天祝福	35.00 
	tSpringFestival2016_Envoy_Rate[3007935][2][1][1] = {}
	tSpringFestival2016_Envoy_Rate[3007935][2][1][1]["RandomItemChanceType"] = 2
	tSpringFestival2016_Envoy_Rate[3007935][2][1][1]["ItemChance"] = 3500
	tSpringFestival2016_Envoy_Rate[3007935][2][1][1]["Item_1"] = 3
	tSpringFestival2016_Envoy_Rate[3007935][2][1][1]["Item_Type"] = "Bless"
--50点修行值	42.20 
	tSpringFestival2016_Envoy_Rate[3007935][2][1][2] = {}
	tSpringFestival2016_Envoy_Rate[3007935][2][1][2]["RandomItemChanceType"] = 2
	tSpringFestival2016_Envoy_Rate[3007935][2][1][2]["ItemChance"] = 4220
	tSpringFestival2016_Envoy_Rate[3007935][2][1][2]["Item_1"] = 50
	tSpringFestival2016_Envoy_Rate[3007935][2][1][2]["Item_Type"] = "Cult"
--7天春节1神佑龙凤呈祥外套	6.00 
	tSpringFestival2016_Envoy_Rate[3007935][2][1][3] = {}
	tSpringFestival2016_Envoy_Rate[3007935][2][1][3]["RandomItemChanceType"] = 2
	tSpringFestival2016_Envoy_Rate[3007935][2][1][3]["ItemChance"] = 600
	tSpringFestival2016_Envoy_Rate[3007935][2][1][3]["Item_1"] = 192575
	tSpringFestival2016_Envoy_Rate[3007935][2][1][3]["Item_Attr"] = "0 0 3 10080 1 0 0 1"
	tSpringFestival2016_Envoy_Rate[3007935][2][1][3]["Item_Type"] = "Item"
	tSpringFestival2016_Envoy_Rate[3007935][2][1][3]["Available"] = 7
--7天1神佑浪漫花语武器外套	6.00 
	tSpringFestival2016_Envoy_Rate[3007935][2][1][4] = {}
	tSpringFestival2016_Envoy_Rate[3007935][2][1][4]["RandomItemChanceType"] = 2
	tSpringFestival2016_Envoy_Rate[3007935][2][1][4]["ItemChance"] = 600
	tSpringFestival2016_Envoy_Rate[3007935][2][1][4]["Item_1"] = tSpringFestival2016_Envoy_Item["SuitPack"][3007939]
	tSpringFestival2016_Envoy_Rate[3007935][2][1][4]["Item_Attr"] = tSpringFestival2016_Envoy_Item["SuitPack"]["3007939Attr"]
	tSpringFestival2016_Envoy_Rate[3007935][2][1][4]["Item_Type"] = "Item"
--1个流星卷	7.20 
	tSpringFestival2016_Envoy_Rate[3007935][2][1][5] = {}
	tSpringFestival2016_Envoy_Rate[3007935][2][1][5]["RandomItemChanceType"] = 2
	tSpringFestival2016_Envoy_Rate[3007935][2][1][5]["ItemChance"] = 720
	tSpringFestival2016_Envoy_Rate[3007935][2][1][5]["Item_1"] = 720027
	tSpringFestival2016_Envoy_Rate[3007935][2][1][5]["Item_Attr"] = "0 1"
	tSpringFestival2016_Envoy_Rate[3007935][2][1][5]["Item_Type"] = "Item"
--1个普通宝石（天地玄除外）	3.50 
	tSpringFestival2016_Envoy_Rate[3007935][2][1][6] = {}
	tSpringFestival2016_Envoy_Rate[3007935][2][1][6]["RandomItemChanceType"] = 2
	tSpringFestival2016_Envoy_Rate[3007935][2][1][6]["ItemChance"] = 350
	tSpringFestival2016_Envoy_Rate[3007935][2][1][6]["Item_1"] = 3003875
	tSpringFestival2016_Envoy_Rate[3007935][2][1][6]["Item_Attr"] = "0 1"
	tSpringFestival2016_Envoy_Rate[3007935][2][1][6]["Item_Type"] = "Item"
--1个龙珠	0.10 
	tSpringFestival2016_Envoy_Rate[3007935][2][1][7] = {}
	tSpringFestival2016_Envoy_Rate[3007935][2][1][7]["RandomItemChanceType"] = 2
	tSpringFestival2016_Envoy_Rate[3007935][2][1][7]["ItemChance"] = 10
	tSpringFestival2016_Envoy_Rate[3007935][2][1][7]["Item_1"] = 1088000
	tSpringFestival2016_Envoy_Rate[3007935][2][1][7]["Item_Attr"] = "0 1"
	tSpringFestival2016_Envoy_Rate[3007935][2][1][7]["Item_Type"] = "DB"

------------------------------逻辑部分---------------------------
--将时间转成活动前,小年,大年,元宵,活动后;以数字0,1,2,3,4表示
function SpringFestival2016_Envoy_GetTimeStep()
	if Sys_ChkFullTime(tSpringFestival2016_Envoy_Data["BeforeTime"]) then
		return 0
	elseif Sys_ChkFullTime(tSpringFestival2016_Envoy_Data["DuringTime1"]) then
		return 1
	elseif Sys_ChkFullTime(tSpringFestival2016_Envoy_Data["DuringTime2"]) then
		return 2
	elseif Sys_ChkFullTime(tSpringFestival2016_Envoy_Data["DuringTime3"]) then
		return 3
	else
		return 4
	end
end

--每天重置签到的掩码
function SpringFestival2016_Envoy_ResetSignStc()
	local nEvent = tSpringFestival2016_Envoy_Stc["TodaySign"]["Event"]
	local nType = tSpringFestival2016_Envoy_Stc["TodaySign"]["Data"]
	if Task_ChkStcValue(nEvent,nType,">=",1) and Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	end
end

--自动寻路到双龙城某npc
function SpringFestival2016_Envoy_AutoFindWay(nNpcId)
	if (SpringFestival2016_Envoy_GetTimeStep() >= 4) or (SpringFestival2016_Envoy_GetTimeStep() <= 0) then
		return
	end
	local nUserId = Get_UserId()
	local nNpcId = tSpringFestival2016_Envoy_Pos[nNpcId]["Id"]
	local nCellX = tSpringFestival2016_Envoy_Pos[nNpcId]["CellX"]
	local nCellY = tSpringFestival2016_Envoy_Pos[nNpcId]["CellY"]
	local nMapId = tSpringFestival2016_Envoy_Pos["MapId"]
	Sys_GotoSomeWhere(nCellX,nCellY,nMapId,nNpcId,nUserId)
end



--签到领福袋
function SpringFestival2016_Envoy_Sign(nNpcId)
	--过期
	if SpringFestival2016_Envoy_GetTimeStep() >=4 then
		LinkNpcGossipFunc_New(nNpcId,"1-4")
		return
	end
	--当天已经领过
	local nEvent = tSpringFestival2016_Envoy_Stc["TodaySign"]["Event"]
	local nType = tSpringFestival2016_Envoy_Stc["TodaySign"]["Data"]
	if Task_ChkStcValue(nEvent,nType,">=",1) and not Task_StcInterval(nEvent,nType,1,4) then
		LinkNpcGossipFunc_New(nNpcId,"2-6")
		return
	end
	--背包已满
	if not User_CheckLeftSpace(1) then
		LinkNpcGossipFunc_New(nNpcId,"2-5")
		return
	end
	--今天未签到,可以进行签到
	--前一天未领取(掩码间隔超过一天),需要重新开始签到
	if Task_ChkStcValue(nEvent,nType,">=",1) and Task_StcInterval(nEvent,nType,2,4) then
		SpringFestival2016_Envoy_SetSignedDays(0)
	end
	--获取红包id,和已经签到的天数
	local nPackId,nDays = SpringFestival2016_Envoy_GetSignedDays()
	local sMsg = ""
	local sLog = ""
	local sSelf = tSpringFestival2016_Envoy_Effect["self"]
	local sEffect = tSpringFestival2016_Envoy_Effect["Sign"]
	--签到天数+1,当天已签到
	SpringFestival2016_Envoy_SetSignedDays(nDays + 1)
	Task_SetStatistic(nEvent,nType,1,1)
	Task_SetStcTimestamp(nEvent,nType,0)
	--满级的情况,修行值,对白,福袋,log
	if Get_UserLevel() >= G_User_MaxLev then
		sMsg = tSpringFestival2016_Envoy_Text["Pack"]["SignMaxLev"]
		sLog = string.format(tSpringFestival2016_Envoy_Log["Sign"],nPackId)
		User_AddCultivation(tSpringFestival2016_Envoy_Data["SignCult"])
	--未满级的情况
	else
		sMsg = tSpringFestival2016_Envoy_Text["Pack"]["Sign"]
		User_AddExpTime(tSpringFestival2016_Envoy_Data["SignExp"])
		sLog = string.format(tSpringFestival2016_Envoy_Log["SignMaxLev"],nPackId)
	end
	--特效,祝福,log,对白
	local nUserId = Get_UserId()
	User_EffectAdd(sSelf,sEffect,nUserId)
	Item_AddItem(nPackId)
	User_AddBless(tSpringFestival2016_Envoy_Data["SignBless"],nUserId)
	Sys_MsgBox(sMsg)
	Sys_SaveActionFestivalLog(sLog)
end

--判断已领过的天数,得到领取的红包id
function SpringFestival2016_Envoy_GetSignedDays()
	local nEvent = tSpringFestival2016_Envoy_Stc["ContinedSign"]["Event"]
	local nType = tSpringFestival2016_Envoy_Stc["ContinedSign"]["Data"]
	local nDays = Get_UserStatisticValue(nEvent,nType)
	local nPackId = 0
	--1天,掩码为0 3007931
	if nDays <= tSpringFestival2016_Envoy_Data["Step"][1] then
		nPackId = tSpringFestival2016_Envoy_Item["Pack"][3007931]
	--2-3天,掩码为1-2 3007932
	elseif nDays <= tSpringFestival2016_Envoy_Data["Step"][2] then
		nPackId = tSpringFestival2016_Envoy_Item["Pack"][3007932]
	--4-7天,掩码为3-6 3007933
	elseif nDays <= tSpringFestival2016_Envoy_Data["Step"][3] then
		nPackId = tSpringFestival2016_Envoy_Item["Pack"][3007933]
	--8-13天,掩码为7-12 3007934
	elseif nDays <= tSpringFestival2016_Envoy_Data["Step"][4] then
		nPackId = tSpringFestival2016_Envoy_Item["Pack"][3007934]
	--14-20天,掩码为13-19 3007935
	else
		nPackId = tSpringFestival2016_Envoy_Item["Pack"][3007935]
	end
	return nPackId,nDays
end

--对已领过的天数相关掩码进行操作
function SpringFestival2016_Envoy_SetSignedDays(nDays)
	local nEvent = tSpringFestival2016_Envoy_Stc["ContinedSign"]["Event"]
	local nType = tSpringFestival2016_Envoy_Stc["ContinedSign"]["Data"]
	Task_SetStatistic(nEvent,nType,nDays,1)
	Task_SetStcTimestamp(nEvent,nType,0)
end

--重置每天全活动完成情况
function SpringFestival2016_Envoy_ResetAllTaskStc()
	local nEvent = tSpringFestival2016_Envoy_Stc["AllTask"]["Event"]
	local nType = tSpringFestival2016_Envoy_Stc["AllTask"]["Data"]
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	end
end

--申请领取全部任务完成奖励
function SpringFestival2016_Envoy_AllTaskFinApply(nNpcId)
	--活动时间外
	if SpringFestival2016_Envoy_GetTimeStep() <= 0 then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end
	if SpringFestival2016_Envoy_GetTimeStep() >= 4 then
		LinkNpcGossipFunc_New(nNpcId,"1-4")
		return
	end
	SpringFestival2016_Envoy_ResetAllTaskStc()
	local nEvent = tSpringFestival2016_Envoy_Stc["AllTask"]["Event"]
	local nType = tSpringFestival2016_Envoy_Stc["AllTask"]["Data"]
	--背包已满
	if not User_CheckLeftSpace(1) then
		LinkNpcGossipFunc_New(nNpcId,"2-5")
		return
	end
	--已领过
	if Task_ChkStcValue(nEvent,nType,">=",tSpringFestival2016_Envoy_Stc["AllTask"]["TaskFin"]) then
		LinkNpcGossipFunc_New(nNpcId,"2-4")
		return
	end
	local nTaskNpcId,sMsg = SpringFestival2016_Envoy_AllTaskFinChk()
	--存在未完成的任务,提示玩家并寻路
	if nil ~= nTaskNpcId then
		local sFunc = "</F>SpringFestival2016_Envoy_AutoFindWay</N>%d"
		tNpcGossip[17430]["Text231"] = string.format(tSpringFestival2016_Envoy_Text[17430]["Text231"],sMsg)
		tNpcGossip[17430]["OptionFunc231"] = string.format(sFunc,nTaskNpcId)
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return
	end
	--全任务完成,,掩码,光效,礼包,log
	local nFestivalId = tSpringFestival2016_Envoy_Log["FestivalId"]
	local nLogId = tSpringFestival2016_Envoy_Log["LogId"]
	local sSelf = tSpringFestival2016_Envoy_Effect["self"]
	local sEffect = tSpringFestival2016_Envoy_Effect["OpenPack"]
	Task_SetStatistic(nEvent,nType,tSpringFestival2016_Envoy_Stc["AllTask"]["TaskFin"],1)
	Task_SetStcTimestamp(nEvent,nType,0)
	User_EffectAdd(sSelf,sEffect)
	FestivalGeneralPackage_GetGift(nFestivalId,nLogId)
	LinkNpcGossipFunc_New(nNpcId,"2-2")
	Sys_SaveActionFestivalLog(tSpringFestival2016_Envoy_Log["AllTaskFin"])
end

--获取当前阶段的所有任务是否存在未完成的,若有未完成,返回未完成任务的npcid和任务名称,若都完成,返回false
function SpringFestival2016_Envoy_AllTaskFinChk()
	local nStep = SpringFestival2016_Envoy_GetTimeStep()
	local nEvent = 0
	local nType = 0
	local nPhase = 0
	local sMsg = ""
	for i,v in pairs(tSpringFestival2016_Envoy_TaskStc[nStep]) do
		nEvent = v["Event"]
		nType = v["Type"]
		nPhase = v["TaskFin"]
		--先隔天重置
		if Task_ChkStcValue(nEvent,nType,">=",nPhase) and Task_StcInterval(nEvent,nType,1,4) then
			Task_SetStatistic(nEvent,nType,0,1)
			Task_SetStcTimestamp(nEvent,nType,0)
		end
		--辞旧迎新双龙城有两个掩码,额外加一个重置判断
		SpringFestival2016_QuitoldTwinCtity_StcReset(131,51)
		--任务未完成
		if not Task_ChkStcValue(nEvent,nType,">=",nPhase) then
			sMsg = tSpringFestival2016_Envoy_TaskStc[nStep][i]["Name"]
			return i,sMsg
		end
	end
	return
end

------------------------------Npc模版------------------------
-- 17430 天官 3417 610006
tNpcFace[3417] = 6
tNpcGossip[17430] = tNpcGossip[17430] or DefaultNpc:new{}
tNpcGossip[17430]["OptionHidden"] = 1

--活动前
tNpcGossip[17430]["Text1-1"] = {111,112,113,114}
tNpcGossip[17430]["Text111"] = tSpringFestival2016_Envoy_Text[17430]["Text111"]
tNpcGossip[17430]["Text112"] = tSpringFestival2016_Envoy_Text[17430]["Text112"]
tNpcGossip[17430]["Text113"] = tSpringFestival2016_Envoy_Text[17430]["Text113"]
tNpcGossip[17430]["Text114"] = tSpringFestival2016_Envoy_Text[17430]["Text114"]
tNpcGossip[17430]["tOption1-1"] = {111}
tNpcGossip[17430]["Option111"] = tSpringFestival2016_Envoy_Text[17430]["Option111"]
tNpcGossip[17430]["ChkFunc1-1"] = function()
	return (SpringFestival2016_Envoy_GetTimeStep() <= 0)
end

--等级不足
tNpcGossip[17430]["Text1-2"] = {121}
tNpcGossip[17430]["Text121"] = tSpringFestival2016_Envoy_Text[17430]["Text121"]
tNpcGossip[17430]["tOption1-2"] = {121}
tNpcGossip[17430]["Option121"] = tSpringFestival2016_Envoy_Text[17430]["Option121"]
tNpcGossip[17430]["ChkFunc1-2"] = function()
	local nLevel = tSpringFestival2016_Envoy_Data["MinLev"]
	local nMeto = tSpringFestival2016_Envoy_Data["MinMet"]
	return (SpringFestival2016_Envoy_GetTimeStep() <= 3) and (not User_JudgeLevelAndMetempsychosis(nLevel,nMeto))
end

--活动中,等级足够
tNpcGossip[17430]["Text1-3"] = {131,132,133,134}
tNpcGossip[17430]["Text131"] = tSpringFestival2016_Envoy_Text[17430]["Text131"]
tNpcGossip[17430]["Text132"] = tSpringFestival2016_Envoy_Text[17430]["Text132"]
tNpcGossip[17430]["Text133"] = tSpringFestival2016_Envoy_Text[17430]["Text133"]
tNpcGossip[17430]["Text134"] = tSpringFestival2016_Envoy_Text[17430]["Text134"]
tNpcGossip[17430]["tOption1-3"] = {131,132,133,134}
--了解活动详情
tNpcGossip[17430]["Option131"] = tSpringFestival2016_Envoy_Text[17430]["Option131"]
tNpcGossip[17430]["OptionPoint131"] = "2-1"
--签到领福袋
tNpcGossip[17430]["Option132"] = tSpringFestival2016_Envoy_Text[17430]["Option132"]
tNpcGossip[17430]["OptionFunc132"] = "</F>SpringFestival2016_Envoy_Sign</N>17430"
--完成其他所有活动
tNpcGossip[17430]["Option133"] = tSpringFestival2016_Envoy_Text[17430]["Option133"]
tNpcGossip[17430]["OptionFunc133"] = "</F>SpringFestival2016_Envoy_AllTaskFinApply</N>17430"
tNpcGossip[17430]["Option134"] = tSpringFestival2016_Envoy_Text[17430]["Option134"]
tNpcGossip[17430]["ChkFunc1-3"] = function()
	SpringFestival2016_Envoy_ResetSignStc()
	return SpringFestival2016_Envoy_GetTimeStep() <= 3
end
--活动后
tNpcGossip[17430]["Text1-4"] = {141}
tNpcGossip[17430]["Text141"] = tSpringFestival2016_Envoy_Text[17430]["Text141"]
tNpcGossip[17430]["tOption1-4"] = {141}
tNpcGossip[17430]["Option141"] = tSpringFestival2016_Envoy_Text[17430]["Option141"]

--活动中主对白接到此
--了解活动详情
tNpcGossip[17430]["Text2-1"] = {211}
tNpcGossip[17430]["Text211"] = tSpringFestival2016_Envoy_Text[17430]["Text211"]
tNpcGossip[17430]["tOption2-1"] = {211,212,213}
tNpcGossip[17430]["Option211"] = tSpringFestival2016_Envoy_Text[17430]["Option211"]
tNpcGossip[17430]["OptionPoint211"] = "3-1"
tNpcGossip[17430]["Option212"] = tSpringFestival2016_Envoy_Text[17430]["Option212"]
tNpcGossip[17430]["OptionPoint212"] = "3-2"
--全活动完成奖励
--成功，获得1个节日礼包
tNpcGossip[17430]["Text2-2"] = {221}
tNpcGossip[17430]["Text221"] = tSpringFestival2016_Envoy_Text[17430]["Text221"]
tNpcGossip[17430]["tOption2-2"] = {221}
tNpcGossip[17430]["Option221"] = tSpringFestival2016_Envoy_Text[17430]["Option221"]
--失败，没有完成所有活动
tNpcGossip[17430]["Text2-3"] = {231}
tNpcGossip[17430]["Text231"] = tSpringFestival2016_Envoy_Text[17430]["Text231"]
tNpcGossip[17430]["tOption2-3"] = {231}
tNpcGossip[17430]["Option231"] = tSpringFestival2016_Envoy_Text[17430]["Option231"]
tNpcGossip[17430]["OptionFunc231"] = "</F>SpringFestival2016_Envoy_AutoFindWay</N>%d"
--失败，已领取
tNpcGossip[17430]["Text2-4"] = {241}
tNpcGossip[17430]["Text241"] = tSpringFestival2016_Envoy_Text[17430]["Text241"]
tNpcGossip[17430]["tOption2-4"] = {241}
tNpcGossip[17430]["Option241"] = tSpringFestival2016_Envoy_Text[17430]["Option241"]
--失败，背包空间不足
tNpcGossip[17430]["Text2-5"] = {251}
tNpcGossip[17430]["Text251"] = tSpringFestival2016_Envoy_Text[17430]["Text251"]
tNpcGossip[17430]["tOption2-5"] = {251}
tNpcGossip[17430]["Option251"] = tSpringFestival2016_Envoy_Text[17430]["Option251"]
--已领取福袋
tNpcGossip[17430]["Text2-6"] = {261}
tNpcGossip[17430]["Text261"] = tSpringFestival2016_Envoy_Text[17430]["Text261"]
tNpcGossip[17430]["tOption2-6"] = {261}
tNpcGossip[17430]["Option261"] = tSpringFestival2016_Envoy_Text[17430]["Option261"]

--了解春节活动详情
tNpcGossip[17430]["Text3-1"] = {311}
tNpcGossip[17430]["Text311"] = tSpringFestival2016_Envoy_Text[17430]["Text311"]
tNpcGossip[17430]["tOption3-1"] = {311,312,313,314}
tNpcGossip[17430]["Option311"] = tSpringFestival2016_Envoy_Text[17430]["Option311"]
tNpcGossip[17430]["OptionPoint311"] = "4-1"
tNpcGossip[17430]["OptionChkFunc311"] = function()
	return SpringFestival2016_Envoy_GetTimeStep() <= 1
end
tNpcGossip[17430]["Option312"] = tSpringFestival2016_Envoy_Text[17430]["Option312"]
tNpcGossip[17430]["OptionPoint312"] = "4-2"
tNpcGossip[17430]["OptionChkFunc312"] = function()
	return SpringFestival2016_Envoy_GetTimeStep() <= 2
end
tNpcGossip[17430]["Option313"] = tSpringFestival2016_Envoy_Text[17430]["Option313"]
tNpcGossip[17430]["OptionPoint313"] = "4-3"
tNpcGossip[17430]["Option314"] = tSpringFestival2016_Envoy_Text[17430]["Option314"]
--我想知道签到领福袋的事
tNpcGossip[17430]["Text3-2"] = {321}
tNpcGossip[17430]["Text321"] = tSpringFestival2016_Envoy_Text[17430]["Text321"]
tNpcGossip[17430]["tOption3-2"] = {321}
tNpcGossip[17430]["Option321"] = tSpringFestival2016_Envoy_Text[17430]["Option321"]

--小年活动
tNpcGossip[17430]["Text4-1"] = {411}
tNpcGossip[17430]["Text411"] = tSpringFestival2016_Envoy_Text[17430]["Text411"]
tNpcGossip[17430]["tOption4-1"] = {411,412,413,414,415,416}
tNpcGossip[17430]["Option411"] = tSpringFestival2016_Envoy_Text[17430]["Option411"]
tNpcGossip[17430]["OptionPoint411"] = "5-1"
tNpcGossip[17430]["Option412"] = tSpringFestival2016_Envoy_Text[17430]["Option412"]
tNpcGossip[17430]["OptionPoint412"] = "5-2"
tNpcGossip[17430]["Option413"] = tSpringFestival2016_Envoy_Text[17430]["Option413"]
tNpcGossip[17430]["OptionPoint413"] = "5-3"
tNpcGossip[17430]["Option414"] = tSpringFestival2016_Envoy_Text[17430]["Option414"]
tNpcGossip[17430]["OptionPoint414"] = "5-4"
tNpcGossip[17430]["Option415"] = tSpringFestival2016_Envoy_Text[17430]["Option415"]
tNpcGossip[17430]["OptionPoint415"] = "5-5"
tNpcGossip[17430]["Option416"] = tSpringFestival2016_Envoy_Text[17430]["Option416"]
--大年活动
tNpcGossip[17430]["Text4-2"] = {421}
tNpcGossip[17430]["Text421"] = tSpringFestival2016_Envoy_Text[17430]["Text421"]
tNpcGossip[17430]["tOption4-2"] = {421,422,423,424,425,426,427}
tNpcGossip[17430]["Option421"] = tSpringFestival2016_Envoy_Text[17430]["Option421"]
tNpcGossip[17430]["OptionPoint421"] = "6-1"
tNpcGossip[17430]["Option422"] = tSpringFestival2016_Envoy_Text[17430]["Option422"]
tNpcGossip[17430]["OptionPoint422"] = "6-2"
tNpcGossip[17430]["Option423"] = tSpringFestival2016_Envoy_Text[17430]["Option423"]
tNpcGossip[17430]["OptionPoint423"] = "6-3"
tNpcGossip[17430]["Option424"] = tSpringFestival2016_Envoy_Text[17430]["Option424"]
tNpcGossip[17430]["OptionPoint424"] = "6-4"
tNpcGossip[17430]["Option425"] = tSpringFestival2016_Envoy_Text[17430]["Option425"]
tNpcGossip[17430]["OptionPoint425"] = "6-5"
tNpcGossip[17430]["Option426"] = tSpringFestival2016_Envoy_Text[17430]["Option426"]
tNpcGossip[17430]["OptionPoint426"] = "6-6"
tNpcGossip[17430]["Option427"] = tSpringFestival2016_Envoy_Text[17430]["Option427"]
tNpcGossip[17430]["OptionPoint427"] = "6-7"
tNpcGossip[17430]["Option428"] = tSpringFestival2016_Envoy_Text[17430]["Option428"]
--元宵活动
tNpcGossip[17430]["Text4-3"] = {431}
tNpcGossip[17430]["Text431"] = tSpringFestival2016_Envoy_Text[17430]["Text431"]
tNpcGossip[17430]["tOption4-3"] = {431,432,433,434,435,436}
tNpcGossip[17430]["Option431"] = tSpringFestival2016_Envoy_Text[17430]["Option431"]
tNpcGossip[17430]["OptionPoint431"] = "7-1"
tNpcGossip[17430]["Option432"] = tSpringFestival2016_Envoy_Text[17430]["Option432"]
tNpcGossip[17430]["OptionPoint432"] = "7-2"
tNpcGossip[17430]["Option433"] = tSpringFestival2016_Envoy_Text[17430]["Option433"]
tNpcGossip[17430]["OptionPoint433"] = "7-3"
tNpcGossip[17430]["Option434"] = tSpringFestival2016_Envoy_Text[17430]["Option434"]
tNpcGossip[17430]["OptionPoint434"] = "7-4"
tNpcGossip[17430]["Option435"] = tSpringFestival2016_Envoy_Text[17430]["Option435"]
tNpcGossip[17430]["OptionPoint435"] = "7-5"
tNpcGossip[17430]["Option436"] = tSpringFestival2016_Envoy_Text[17430]["Option436"]

--小年活动接到此
--新年新衣新气象。
tNpcGossip[17430]["Text5-1"] = {511}
tNpcGossip[17430]["Text511"] = tSpringFestival2016_Envoy_Text[17430]["Text511"]
tNpcGossip[17430]["tOption5-1"] = {511,512}
tNpcGossip[17430]["Option511"] = tSpringFestival2016_Envoy_Text[17430]["Option511"]
tNpcGossip[17430]["OptionFunc511"] = "</F>SpringFestival2016_Envoy_AutoFindWay</N>17427"
tNpcGossip[17430]["OptionChkFunc511"] = function()
	return SpringFestival2016_Envoy_GetTimeStep() == 1
end
tNpcGossip[17430]["Option512"] = tSpringFestival2016_Envoy_Text[17430]["Option512"]
tNpcGossip[17430]["OptionPoint512"] = "4-1"
--辞旧迎新双龙城。
tNpcGossip[17430]["Text5-2"] = {521}
tNpcGossip[17430]["Text521"] = tSpringFestival2016_Envoy_Text[17430]["Text521"]
tNpcGossip[17430]["tOption5-2"] = {521,522}
tNpcGossip[17430]["Option521"] = tSpringFestival2016_Envoy_Text[17430]["Option521"]
tNpcGossip[17430]["OptionFunc521"] = "</F>SpringFestival2016_Envoy_AutoFindWay</N>10704"
tNpcGossip[17430]["OptionChkFunc521"] = function()
	return SpringFestival2016_Envoy_GetTimeStep() == 1
end
tNpcGossip[17430]["Option522"] = tSpringFestival2016_Envoy_Text[17430]["Option522"]
tNpcGossip[17430]["OptionPoint522"] = "4-1"
--喜气洋洋送灶神。
tNpcGossip[17430]["Text5-3"] = {531}
tNpcGossip[17430]["Text531"] = tSpringFestival2016_Envoy_Text[17430]["Text531"]
tNpcGossip[17430]["tOption5-3"] = {531,532}
tNpcGossip[17430]["Option531"] = tSpringFestival2016_Envoy_Text[17430]["Option531"]
tNpcGossip[17430]["OptionFunc531"] = "</F>SpringFestival2016_Envoy_AutoFindWay</N>17434"
tNpcGossip[17430]["OptionChkFunc531"] = function()
	return SpringFestival2016_Envoy_GetTimeStep() == 1
end
tNpcGossip[17430]["Option532"] = tSpringFestival2016_Envoy_Text[17430]["Option532"]
tNpcGossip[17430]["OptionPoint532"] = "4-1"
--欢天喜地办年货。
tNpcGossip[17430]["Text5-4"] = {541}
tNpcGossip[17430]["Text541"] = tSpringFestival2016_Envoy_Text[17430]["Text541"]
tNpcGossip[17430]["tOption5-4"] = {541,542}
tNpcGossip[17430]["Option541"] = tSpringFestival2016_Envoy_Text[17430]["Option541"]
tNpcGossip[17430]["OptionFunc541"] = "</F>SpringFestival2016_Envoy_AutoFindWay</N>17296"
tNpcGossip[17430]["OptionChkFunc541"] = function()
	return SpringFestival2016_Envoy_GetTimeStep() == 1
end
tNpcGossip[17430]["Option542"] = tSpringFestival2016_Envoy_Text[17430]["Option542"]
tNpcGossip[17430]["OptionPoint542"] = "4-1"
--来把旧桃换新符。
tNpcGossip[17430]["Text5-5"] = {551}
tNpcGossip[17430]["Text551"] = tSpringFestival2016_Envoy_Text[17430]["Text551"]
tNpcGossip[17430]["tOption5-5"] = {551,552}
tNpcGossip[17430]["Option551"] = tSpringFestival2016_Envoy_Text[17430]["Option551"]
tNpcGossip[17430]["OptionFunc551"] = "</F>SpringFestival2016_Envoy_AutoFindWay</N>17307"
tNpcGossip[17430]["OptionChkFunc551"] = function()
	return SpringFestival2016_Envoy_GetTimeStep() == 1
end
tNpcGossip[17430]["Option552"] = tSpringFestival2016_Envoy_Text[17430]["Option552"]
tNpcGossip[17430]["OptionPoint552"] = "4-1"

--大年活动接到此
--心想事成烧头香
tNpcGossip[17430]["Text6-1"] = {611}
tNpcGossip[17430]["Text611"] = tSpringFestival2016_Envoy_Text[17430]["Text611"]
tNpcGossip[17430]["tOption6-1"] = {611,612}
tNpcGossip[17430]["Option611"] = tSpringFestival2016_Envoy_Text[17430]["Option611"]
tNpcGossip[17430]["OptionFunc611"] = "</F>SpringFestival2016_Envoy_AutoFindWay</N>17305"
tNpcGossip[17430]["OptionChkFunc611"] = function()
	return SpringFestival2016_Envoy_GetTimeStep() == 2
end
tNpcGossip[17430]["Option612"] = tSpringFestival2016_Envoy_Text[17430]["Option612"]
tNpcGossip[17430]["OptionPoint612"] = "4-2"
--红红火火过大年
tNpcGossip[17430]["Text6-2"] = {621}
tNpcGossip[17430]["Text621"] = tSpringFestival2016_Envoy_Text[17430]["Text621"]
tNpcGossip[17430]["tOption6-2"] = {621,622}
tNpcGossip[17430]["Option621"] = tSpringFestival2016_Envoy_Text[17430]["Option621"]
tNpcGossip[17430]["OptionFunc621"] = "</F>SpringFestival2016_Envoy_AutoFindWay</N>17303"
tNpcGossip[17430]["OptionChkFunc621"] = function()
	return SpringFestival2016_Envoy_GetTimeStep() == 2
end
tNpcGossip[17430]["Option622"] = tSpringFestival2016_Envoy_Text[17430]["Option622"]
tNpcGossip[17430]["OptionPoint622"] = "4-2"
--开开心心辞旧岁
tNpcGossip[17430]["Text6-3"] = {631}
tNpcGossip[17430]["Text631"] = tSpringFestival2016_Envoy_Text[17430]["Text631"]
tNpcGossip[17430]["tOption6-3"] = {631,632}
tNpcGossip[17430]["Option631"] = tSpringFestival2016_Envoy_Text[17430]["Option631"]
tNpcGossip[17430]["OptionFunc631"] = "</F>SpringFestival2016_Envoy_AutoFindWay</N>10748"
tNpcGossip[17430]["OptionChkFunc631"] = function()
	return SpringFestival2016_Envoy_GetTimeStep() == 2
end
tNpcGossip[17430]["Option632"] = tSpringFestival2016_Envoy_Text[17430]["Option632"]
tNpcGossip[17430]["OptionPoint632"] = "4-2"
--欢欢喜喜贺新春
tNpcGossip[17430]["Text6-4"] = {641}
tNpcGossip[17430]["Text641"] = tSpringFestival2016_Envoy_Text[17430]["Text641"]
tNpcGossip[17430]["tOption6-4"] = {641,642}
tNpcGossip[17430]["Option641"] = tSpringFestival2016_Envoy_Text[17430]["Option641"]
tNpcGossip[17430]["OptionFunc641"] = "</F>SpringFestival2016_Envoy_AutoFindWay</N>10750"
tNpcGossip[17430]["OptionChkFunc641"] = function()
	return SpringFestival2016_Envoy_GetTimeStep() == 2
end
tNpcGossip[17430]["Option642"] = tSpringFestival2016_Envoy_Text[17430]["Option642"]
tNpcGossip[17430]["OptionPoint642"] = "4-2"
--兴高采烈接灶神。
tNpcGossip[17430]["Text6-5"] = {651}
tNpcGossip[17430]["Text651"] = tSpringFestival2016_Envoy_Text[17430]["Text651"]
tNpcGossip[17430]["tOption6-5"] = {651,652}
tNpcGossip[17430]["Option651"] = tSpringFestival2016_Envoy_Text[17430]["Option651"]
tNpcGossip[17430]["OptionFunc651"] = "</F>SpringFestival2016_Envoy_AutoFindWay</N>10764"
tNpcGossip[17430]["OptionChkFunc651"] = function()
	return SpringFestival2016_Envoy_GetTimeStep() == 2
end
tNpcGossip[17430]["Option652"] = tSpringFestival2016_Envoy_Text[17430]["Option652"]
tNpcGossip[17430]["OptionPoint652"] = "4-2"
--噼里啪啦驱年兽。
tNpcGossip[17430]["Text6-6"] = {661}
tNpcGossip[17430]["Text661"] = tSpringFestival2016_Envoy_Text[17430]["Text661"]
tNpcGossip[17430]["tOption6-6"] = {661,662}
tNpcGossip[17430]["Option661"] = tSpringFestival2016_Envoy_Text[17430]["Option661"]
tNpcGossip[17430]["OptionFunc661"] = "</F>SpringFestival2016_Envoy_AutoFindWay</N>17282"
tNpcGossip[17430]["OptionChkFunc661"] = function()
	return SpringFestival2016_Envoy_GetTimeStep() == 2
end
tNpcGossip[17430]["Option662"] = tSpringFestival2016_Envoy_Text[17430]["Option662"]
tNpcGossip[17430]["OptionPoint662"] = "4-2"
--吃幸运饺子
tNpcGossip[17430]["Text6-7"] = {671}
tNpcGossip[17430]["Text671"] = tSpringFestival2016_Envoy_Text[17430]["Text671"]
tNpcGossip[17430]["tOption6-7"] = {671,672}
tNpcGossip[17430]["Option671"] = tSpringFestival2016_Envoy_Text[17430]["Option671"]
tNpcGossip[17430]["OptionFunc671"] = "</F>SpringFestival2016_Envoy_AutoFindWay</N>17275"
tNpcGossip[17430]["OptionChkFunc671"] = function()
	return SpringFestival2016_Envoy_GetTimeStep() == 2
end
tNpcGossip[17430]["Option672"] = tSpringFestival2016_Envoy_Text[17430]["Option672"]
tNpcGossip[17430]["OptionPoint672"] = "4-2"

--元宵节活动接到此
--张灯结彩贺元宵
tNpcGossip[17430]["Text7-1"] = {711}
tNpcGossip[17430]["Text711"] = tSpringFestival2016_Envoy_Text[17430]["Text711"]
tNpcGossip[17430]["tOption7-1"] = {711,712}
tNpcGossip[17430]["Option711"] = tSpringFestival2016_Envoy_Text[17430]["Option711"]
tNpcGossip[17430]["OptionFunc711"] = "</F>SpringFestival2016_Envoy_AutoFindWay</N>10753"
tNpcGossip[17430]["OptionChkFunc711"] = function()
	return SpringFestival2016_Envoy_GetTimeStep() == 3
end
tNpcGossip[17430]["Option712"] = tSpringFestival2016_Envoy_Text[17430]["Option712"]
tNpcGossip[17430]["OptionPoint712"] = "4-3"
--整点秒杀闹元宵。
tNpcGossip[17430]["Text7-2"] = {721}
tNpcGossip[17430]["Text721"] = tSpringFestival2016_Envoy_Text[17430]["Text721"]
tNpcGossip[17430]["tOption7-2"] = {721,722}
tNpcGossip[17430]["Option721"] = tSpringFestival2016_Envoy_Text[17430]["Option721"]
tNpcGossip[17430]["OptionFunc721"] = "</F>SpringFestival2016_Envoy_AutoFindWay</N>17425"
tNpcGossip[17430]["OptionChkFunc721"] = function()
	return SpringFestival2016_Envoy_GetTimeStep() == 3
end
tNpcGossip[17430]["Option722"] = tSpringFestival2016_Envoy_Text[17430]["Option722"]
tNpcGossip[17430]["OptionPoint722"] = "4-3"
--热热闹闹舞龙灯。
tNpcGossip[17430]["Text7-3"] = {731}
tNpcGossip[17430]["Text731"] = tSpringFestival2016_Envoy_Text[17430]["Text731"]
tNpcGossip[17430]["tOption7-3"] = {731,732}
tNpcGossip[17430]["Option731"] = tSpringFestival2016_Envoy_Text[17430]["Option731"]
tNpcGossip[17430]["OptionFunc731"] = "</F>SpringFestival2016_Envoy_AutoFindWay</N>17436"
tNpcGossip[17430]["OptionChkFunc731"] = function()
	return SpringFestival2016_Envoy_GetTimeStep() == 3
end
tNpcGossip[17430]["Option732"] = tSpringFestival2016_Envoy_Text[17430]["Option732"]
tNpcGossip[17430]["OptionPoint732"] = "4-3"
--噼噼啪啪拆爆竹。
tNpcGossip[17430]["Text7-4"] = {741}
tNpcGossip[17430]["Text741"] = tSpringFestival2016_Envoy_Text[17430]["Text741"]
tNpcGossip[17430]["tOption7-4"] = {741,742}
tNpcGossip[17430]["Option741"] = tSpringFestival2016_Envoy_Text[17430]["Option741"]
tNpcGossip[17430]["OptionFunc741"] = "</F>SpringFestival2016_Envoy_AutoFindWay</N>17416"
tNpcGossip[17430]["OptionChkFunc741"] = function()
	return SpringFestival2016_Envoy_GetTimeStep() == 3
end
tNpcGossip[17430]["Option742"] = tSpringFestival2016_Envoy_Text[17430]["Option742"]
tNpcGossip[17430]["OptionPoint742"] = "4-3"
--横扫八方战元宵。
tNpcGossip[17430]["Text7-5"] = {751}
tNpcGossip[17430]["Text751"] = tSpringFestival2016_Envoy_Text[17430]["Text751"]
tNpcGossip[17430]["tOption7-5"] = {751,752}
tNpcGossip[17430]["Option751"] = tSpringFestival2016_Envoy_Text[17430]["Option751"]
tNpcGossip[17430]["OptionFunc751"] = "</F>SpringFestival2016_Envoy_AutoFindWay</N>17432"
tNpcGossip[17430]["OptionChkFunc751"] = function()
	return SpringFestival2016_Envoy_GetTimeStep() == 3
end
tNpcGossip[17430]["Option752"] = tSpringFestival2016_Envoy_Text[17430]["Option752"]
tNpcGossip[17430]["OptionPoint752"] = "4-3"


------------------------------物品逻辑部分------------------------

-----------福袋------------
--根据概率模版的奖励类型给玩家福袋的奖励,当龙珠奖励出现时,假如时间不正确或者已达上限,强制转成修行值
function SpringFestival2016_Envoy_OpenBlessPack(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
	local sLog = ""
	--过期删除
	if SpringFestival2016_Envoy_GetTimeStep() > 3 then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		end
		sLog = string.format(tSpringFestival2016_Envoy_Log["Expire"],nItemId)
		Sys_MsgBox(tSpringFestival2016_Envoy_Text["Pack"]["Expire"])
		Sys_SaveActionFestivalLog(sLog)
		return
	end
	--背包满的情况
	if not User_CheckLeftSpace(4) then
		Sys_MsgBox(tSpringFestival2016_Envoy_Text["Pack"]["FullBag"])
		return
	end
	--活动期间内
	local tAward = SpringFestival2016_Envoy_BlessPackAward(nItemId)
	--奖励的类型,物品的id/奖励的额度,物品的属性
	local sSelf = tSpringFestival2016_Envoy_Effect["self"]
	local sEffect = tSpringFestival2016_Envoy_Effect["OpenPack"]
	--删除物品.给奖励,出对白,光效,log
	if Item_ChkItem(nItemId) then
		Item_DelItem(nItemId)
	end
	--给奖励,log
	User_EffectAdd(sSelf,sEffect)
	SpringFestival2016_Envoy_BlessPackMsg(tAward)
	SpringFestival2016_Envoy_BlessPackGetAward(nItemId,tAward)
end

--根据礼包id,调用概率模版输出奖励类型
function SpringFestival2016_Envoy_BlessPackAward(nItemId)
	local nUserLev = Get_UserLevel()
	local nFlat,tRateAward = 0,{}
	--如果玩家已经满级,根据满级的概率给奖励,tRateAward表示根据概率得到的奖励信息表
	if nUserLev >= G_User_MaxLev then
		nFlat,tRateAward = Probabil_RandomAward(tSpringFestival2016_Envoy_Rate[nItemId][2],1)
	else
	--未满级的情况,按未满级的概率给奖励
		nFlat,tRateAward = Probabil_RandomAward(tSpringFestival2016_Envoy_Rate[nItemId][1],1)
	end
	--奖励的类型和id,以及时效,输出对白
	local tAward = {}
		tAward["Type"] = tRateAward[1]["tAward"][1]["Item_Type"]
		tAward["Id"] = tRateAward[1]["tAward"][1]["Item_1"]
		--当奖励为物品时,Attr有效,当奖励为龙凤呈祥外套时,Available有效
		tAward["Attr"] = tRateAward[1]["tAward"][1]["Item_Attr"] or ""
		tAward["Available"] = tRateAward[1]["tAward"][1]["Available"] or nil
	--非龙珠奖励不做限制
	if tAward["Type"] ~= "DB" and tAward["Id"] ~= 1088000 then
		return tAward
	end
	--当时间不正确/每天达到领取上限,将龙珠奖品强制变成修行值
	local sLimitTime = tSpringFestival2016_Envoy_Data["DBTime"]
	if not Sys_ChkDayTime(sLimitTime) then
		return SpringFestival2016_Envoy_AwardChange(tAward)
	elseif  SpringFestival2016_Envoy_DBLimit()  then
		return SpringFestival2016_Envoy_AwardChange(tAward)
	--当条件满足给龙珠时,增加动态表
	else
		SpringFestival2016_Envoy_AddDBLimit()
		return tAward
	end
end

--对动态表读取,控制每天龙珠产出,若今天已经领取上限,返回true
function SpringFestival2016_Envoy_DBLimit()
	local nGlobalId = tSpringFestival2016_Envoy_Data["GlobalId"]
	local nLimit = tSpringFestival2016_Envoy_Data["GlobalLimit"]
	local nGetDBNum = Get_SysDynaGlobalData1(nGlobalId)
	return nGetDBNum >= nLimit
end

--产出龙珠时,增加动态表
function SpringFestival2016_Envoy_AddDBLimit()
	local nGlobalId = tSpringFestival2016_Envoy_Data["GlobalId"]
	local nGetDBNum = Get_SysDynaGlobalData1(nGlobalId) + 1
	Sys_SetSynaGlobalData1(nGlobalId,nGetDBNum)
end

--强制转成修行值
function SpringFestival2016_Envoy_AwardChange()
	local tNewAward = {}
		tNewAward["Type"] = tSpringFestival2016_Envoy_Rate[3007935][2][1][2]["Item_Type"]
		tNewAward["Id"] = tSpringFestival2016_Envoy_Rate[3007935][2][1][2]["Item_1"]
		tNewAward["Attr"] =  nil
		tNewAward["Available"] =  nil
	return tNewAward
end

--根据奖励出对白
function SpringFestival2016_Envoy_BlessPackMsg(tAward)
	local nId = tAward["Id"]
	local sMsg = ""
	--龙珠的情况
	if tAward["Type"] == "DB" then
		sMsg = tSpringFestival2016_Envoy_Text["Pack"]["DB"]
		local sName = Get_UserName()
		--龙珠有广播
		local sBroadcast = string.format(tSpringFestival2016_Envoy_Text["Pack"]["BroadCast"],sName)
		Sys_SystemBroadcast(sBroadcast)
	--龙凤呈祥外套
	elseif nId == tSpringFestival2016_Envoy_Item["Suit"] then
		local sDays = tAward["Available"] .. tSpringFestival2016_Envoy_Text["Pack"][192575]
		sMsg = string.format(tSpringFestival2016_Envoy_Text["Pack"]["Item"],sDays)
	--其他道具的情况
	elseif tAward["Type"] == "Item" then
		sItemName = tSpringFestival2016_Envoy_Text["Pack"][nId]
		sMsg = string.format(tSpringFestival2016_Envoy_Text["Pack"]["Item"],sItemName)
	--非道具奖励的情况
	else
		local sType = tAward["Type"]
		local sAward = tAward["Id"] .. tSpringFestival2016_Envoy_Text["Pack"][sType]
		sMsg = string.format(tSpringFestival2016_Envoy_Text["Pack"]["Award"],sAward)
	end
	User_TalkChannel2005(sMsg)
end

--实际发奖励,记log
function SpringFestival2016_Envoy_BlessPackGetAward(nItemId,tAward)
	local sType = tAward["Type"]
	local nAward = tAward["Id"]
	local sAttr = tAward["Attr"]
	local sLog = tSpringFestival2016_Envoy_Log[nItemId]
	--祝福 5
	if sType == "Bless" then
		User_AddBless(nAward*24)
		sLog = string.format(sLog,5,nAward*24)
	--修行值 6
	elseif sType == "Cult" then
		User_AddCultivation(nAward)
		sLog = string.format(sLog,6,nAward)
	--经验
	elseif sType == "Exp" then
		User_AddExpTime(nAward)
		sLog = string.format(sLog,4,nAward)
	--气力值
	elseif sType == "Strength" then
		User_AddStrengthValue(nAward)
		sLog = string.format(sLog,12,nAward)
	--双倍经验
	elseif sType == "DoubleExp" then
		User_SetExpControl(200,nAward*60)
		sLog = string.format(sLog,7,nAward)
	--物品
	elseif (sType == "Item") or (sType == "DB") then
		Item_AddNewItem(nAward,sAttr)
		local nItemNum = string.sub(sAttr,2,2)
		if (nItemNum == 0) or (nItemNum == nil) then
			nItemNum = 1
		end
		sLog = string.format(sLog,nAward,nItemNum)
	end
	Sys_SaveActionFestivalLog(sLog)
end


--------浪漫花语武器外套礼盒---------
--打开外套礼包,输入打开的礼包id,和选择的外套id
function SpringFestival2016_Envoy_SuitPack(nPackId,nSuitId)
	--对话后,检测背包
	if not User_CheckLeftSpace(1) then
		Sys_MsgBox(tSpringFestival2016_Envoy_Text["SuitPack"]["FullBag"])
		return
	end
	--删除礼包
	if Item_ChkItem(nPackId,1) and Item_DelItem(nPackId,1) then
		local sAttr = tSpringFestival2016_Envoy_Item["SuitPack"][nPackId .."Attr"]
		Item_AddNewItem(nSuitId,sAttr)
		local sLog = tSpringFestival2016_Envoy_Log["SuitPack"][nPackId]
		sLog = string.format(sLog,nSuitId)
		local sMsg = tSpringFestival2016_Envoy_Text["SuitPack"][nPackId]
		Sys_SaveActionFestivalLog(sLog)
		Sys_MsgBox(sMsg)
	end
end


------------------------------物品模版部分------------------------

--福袋统一模版
for nPackId = tSpringFestival2016_Envoy_Item["Pack"][3007931],tSpringFestival2016_Envoy_Item["Pack"][3007935] do
	tItem[nPackId] = tItem[nPackId] or {}
	tItem[nPackId]["Function"] = function(nItemId,sItemName)
		SpringFestival2016_Envoy_OpenBlessPack(nPackId)
	end
end

--浪漫花语武器外套礼盒（1天）
tItem[3007937] = tItem[3007937] or {}
tItem[3007937]["Text1-1"] = {111}
tItem[3007937]["Text111"] = tSpringFestival2016_Envoy_Text["SuitPack"]["Text111"]
tItem[3007937]["tOption1-1"] = {111,112}
tItem[3007937]["Option111"] = tSpringFestival2016_Envoy_Text["SuitPack"]["Option111"]
tItem[3007937]["OptionPoint111"] = "2-1"
tItem[3007937]["Option112"] = tSpringFestival2016_Envoy_Text["SuitPack"]["Option112"]
tItem[3007937]["OptionPoint112"] = "2-2"

tItem[3007937]["Text2-1"] = {211}
tItem[3007937]["Text211"] = tSpringFestival2016_Envoy_Text["SuitPack"]["Text211"]
tItem[3007937]["tOption2-1"] = {211,212}
tItem[3007937]["Option211"] = tSpringFestival2016_Envoy_Text["SuitPack"]["Option211"]
tItem[3007937]["OptionFunc211"] = "</F>SpringFestival2016_Envoy_SuitPack</N>3007937</N>360149"
tItem[3007937]["Option212"] = tSpringFestival2016_Envoy_Text["SuitPack"]["Option212"]

tItem[3007937]["Text2-2"] = {221}
tItem[3007937]["Text221"] = tSpringFestival2016_Envoy_Text["SuitPack"]["Text221"]
tItem[3007937]["tOption2-2"] = {221,222}
tItem[3007937]["Option221"] = tSpringFestival2016_Envoy_Text["SuitPack"]["Option221"]
tItem[3007937]["OptionFunc221"] = "</F>SpringFestival2016_Envoy_SuitPack</N>3007937</N>350079"
tItem[3007937]["Option222"] = tSpringFestival2016_Envoy_Text["SuitPack"]["Option222"]

--浪漫花语武器外套礼盒（3天）
tItem[3007938] = tItem[3007938] or {}
tItem[3007938]["Text1-1"] = {111}
tItem[3007938]["Text111"] = tSpringFestival2016_Envoy_Text["SuitPack"]["Text111"]
tItem[3007938]["tOption1-1"] = {111,112}
tItem[3007938]["Option111"] = tSpringFestival2016_Envoy_Text["SuitPack"]["Option111"]
tItem[3007938]["OptionPoint111"] = "2-1"
tItem[3007938]["Option112"] = tSpringFestival2016_Envoy_Text["SuitPack"]["Option112"]
tItem[3007938]["OptionPoint112"] = "2-2"

tItem[3007938]["Text2-1"] = {211}
tItem[3007938]["Text211"] = tSpringFestival2016_Envoy_Text["SuitPack"]["Text211"]
tItem[3007938]["tOption2-1"] = {211,212}
tItem[3007938]["Option211"] = tSpringFestival2016_Envoy_Text["SuitPack"]["Option211"]
tItem[3007938]["OptionFunc211"] = "</F>SpringFestival2016_Envoy_SuitPack</N>3007938</N>360149"
tItem[3007938]["Option212"] = tSpringFestival2016_Envoy_Text["SuitPack"]["Option212"]

tItem[3007938]["Text2-2"] = {221}
tItem[3007938]["Text221"] = tSpringFestival2016_Envoy_Text["SuitPack"]["Text221"]
tItem[3007938]["tOption2-2"] = {221,222}
tItem[3007938]["Option221"] = tSpringFestival2016_Envoy_Text["SuitPack"]["Option221"]
tItem[3007938]["OptionFunc221"] = "</F>SpringFestival2016_Envoy_SuitPack</N>3007938</N>350079"
tItem[3007938]["Option222"] = tSpringFestival2016_Envoy_Text["SuitPack"]["Option222"]

--浪漫花语武器外套礼盒（7天）
tItem[3007939] = tItem[3007939] or {}
tItem[3007939]["Text1-1"] = {111}
tItem[3007939]["Text111"] = tSpringFestival2016_Envoy_Text["SuitPack"]["Text111"]
tItem[3007939]["tOption1-1"] = {111,112}
tItem[3007939]["Option111"] = tSpringFestival2016_Envoy_Text["SuitPack"]["Option111"]
tItem[3007939]["OptionPoint111"] = "2-1"
tItem[3007939]["Option112"] = tSpringFestival2016_Envoy_Text["SuitPack"]["Option112"]
tItem[3007939]["OptionPoint112"] = "2-2"

tItem[3007939]["Text2-1"] = {211}
tItem[3007939]["Text211"] = tSpringFestival2016_Envoy_Text["SuitPack"]["Text211"]
tItem[3007939]["tOption2-1"] = {211,212}
tItem[3007939]["Option211"] = tSpringFestival2016_Envoy_Text["SuitPack"]["Option211"]
tItem[3007939]["OptionFunc211"] = "</F>SpringFestival2016_Envoy_SuitPack</N>3007939</N>360149"
tItem[3007939]["Option212"] = tSpringFestival2016_Envoy_Text["SuitPack"]["Option212"]

tItem[3007939]["Text2-2"] = {221}
tItem[3007939]["Text221"] = tSpringFestival2016_Envoy_Text["SuitPack"]["Text221"]
tItem[3007939]["tOption2-2"] = {221,222}
tItem[3007939]["Option221"] = tSpringFestival2016_Envoy_Text["SuitPack"]["Option221"]
tItem[3007939]["OptionFunc221"] = "</F>SpringFestival2016_Envoy_SuitPack</N>3007939</N>350079"
tItem[3007939]["Option222"] = tSpringFestival2016_Envoy_Text["SuitPack"]["Option222"]

------------------------------动态表操作部分---------------------------
--解锁动态表
function SpringFestival2016_Envoy_UnLockDynaGlobalData()
	-- 活动时间外
	if SpringFestival2016_Envoy_GetTimeStep() <= 0 then
		return
	end
	if SpringFestival2016_Envoy_GetTimeStep() >= 4 then
		return
	end
	Sys_SetSynaGlobalData0(tSpringFestival2016_Envoy_Data["GlobalId"],0)
end

--重置动态表
-- 动态存储表重置
function SpringFestival2016_Envoy_ResetDynaGlobalData()
	-- 活动时间外
	if SpringFestival2016_Envoy_GetTimeStep() <= 0 then
		return
	end
	if SpringFestival2016_Envoy_GetTimeStep() >= 4 then
		return
	end
	local nGlobalId = tSpringFestival2016_Envoy_Data["GlobalId"]
	-- 重置龙珠领取数量
	Sys_SetSynaGlobalData1(nGlobalId,0)
	--限制每天只重置一次
	Sys_SetSynaGlobalData0(nGlobalId,1)
end

-----------------------------每天重置动态表---------------------------
--时间函数触发
--'00:00 00:03'
--tOntimerMin_HM[0000] = tOntimerMin_HM[0000] or {}
--table.insert(tOntimerMin_HM[0000],SpringFestival2016_Envoy_ResetDynaGlobalData)
--tOntimerMin_HM[0001] = tOntimerMin_HM[0001] or {}
--table.insert(tOntimerMin_HM[0001],SpringFestival2016_Envoy_ResetDynaGlobalData)
--tOntimerMin_HM[0002] = tOntimerMin_HM[0002] or {}
--table.insert(tOntimerMin_HM[0002],SpringFestival2016_Envoy_UnLockDynaGlobalData)
--tOntimerMin_HM[0003] = tOntimerMin_HM[0003] or {}
--table.insert(tOntimerMin_HM[0003],SpringFestival2016_Envoy_UnLockDynaGlobalData)