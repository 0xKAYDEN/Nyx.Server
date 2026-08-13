------------------------------------------------------------------------------------
--Name:			[简体征服][活动脚本]2020全球中国年(1.17-2.2)
--Creator:		翁清海
--Created:		2019/12/18
------------------------------------------------------------------------------------

--命名前缀
--SpringFestival2020Nian_

--logid:12001798

-- stc掩码说明
-- stc(212,08)		萌宠珍宝礼包获得赤炼石+5限量
-- stc(212,09)		萌宠珍宝礼包获得晶莹星陨石限量
-- stc(212,10)		萌宠珍宝礼包获得光效人物外套碎片限量
-- stc(212,11)			萌宠珍宝礼包获得光效坐骑外套碎片限量
-- stc(212,12)		火云狮饱腹值
-- stc(212,13)		是否激活最强年兽
-- stc(212,14)		年兽图鉴收藏
-- stc(212,15)		保存寅木孵化炉孵化状态
-- stc(212,16)		保存辰土孵化炉孵化状态
-- stc(212,17)		保存癸水孵化炉孵化状态
-- stc(212,18)		保存午火孵化炉孵化状态
-- stc(212,19)		保存庚金孵化炉孵化状态
-- stc(212,20)		一键孵化免费次数（每天重置）
-- stc(212,21)		二次确认
-- stc(212,22)		保存新年福气
-- stc(212,23)		孵化炉开启状态
-- stc(213,12)		打怪掉落年兽蛋（一阶）（本服）（每天重置）
-- stc(213,13)		打怪掉落星纹石（本服）（每天重置）
-- stc(213,92)		引导图弹出
-- stc(213,94)		签到礼包开出年兽蛋
-- stc(213,95)		显著功勋礼包开出年兽蛋
-- stc(213,97)		金币喂养每日上限
-- stc(213,98)		流星卷喂养每日上限
-- stc(213,99)		龙珠喂养每日上限
-- stc(214,18)		每日首次孵出优秀年兽

-- 动态码说明
-- 54085-54088 新年福气全服排行榜使用
-- 54089 data0 新年福气全服总值

--------------------------------------------数据部分配置--------------------------------------------
local tSpringFestival2020Nian_Record = {}
	--保存玩家需要的星纹石数量
	tSpringFestival2020Nian_Record["Stone"] = {}
	--保存炉子索引
	tSpringFestival2020Nian_Record["StoveIndex"] = {}
	--保存年兽索引
	tSpringFestival2020Nian_Record["NianIndex"] = {}
	--保存选择的食物索引
	tSpringFestival2020Nian_Record["FoodIndex"] = {}
	--保存选择的封印年兽索引
	tSpringFestival2020Nian_Record["SoulIndex"] = {}
	
--常量表
local tSpringFestival2020Nian_Cont = {}
	--网页
	tSpringFestival2020Nian_Cont["Web"] = "https://wtop.zf.99.com/zgn/?lang=en"
	--主线任务id
	tSpringFestival2020Nian_Cont["MainTask"] = 4299
	--一键孵化免费次数
	tSpringFestival2020Nian_Cont["FreeTimes"] = 3
	--等级检查
	tSpringFestival2020Nian_Cont["Level"] = 80
	tSpringFestival2020Nian_Cont["Metempsychosis"] = 0
	--副本id
	tSpringFestival2020Nian_Cont["InstanceType"] = 449
	--星纹石加速时间
	tSpringFestival2020Nian_Cont["StoneTime"] = 60
	--星纹石id
	tSpringFestival2020Nian_Cont["StoneId"] = 3600238
	--图鉴id
	tSpringFestival2020Nian_Cont["ItemMapId"] = 3327295
	--年兽灵魄id
	tSpringFestival2020Nian_Cont["SoulId"] = 3327299
	--年兽索引和怪物差值
	tSpringFestival2020Nian_Cont["NianSub"] = 5859
	--每格方块的进度数
	tSpringFestival2020Nian_Cont["SquareOne"] = 5
	--总共的方块数
	tSpringFestival2020Nian_Cont["SquareNum"] = 20
	--最终年兽可获得的福气值
	tSpringFestival2020Nian_Cont["TopFuQi"] = 600
	--饱腹值上限
	tSpringFestival2020Nian_Cont["TopFoodValue"] = 100
	--跟随技能
	tSpringFestival2020Nian_Cont["Magic"] = 16110
	--火云神狮
	tSpringFestival2020Nian_Cont["MainNpcId"] = 25792
	--孵化炉
	tSpringFestival2020Nian_Cont["StoveNpcId"] = 25793
	tSpringFestival2020Nian_Cont["StoveOtherNpcId"] = 25797
	--全服福气值存储
	tSpringFestival2020Nian_Cont["GlobalId"] = 54089
	--引导图id
	tSpringFestival2020Nian_Cont["TitleId"] = 1073
	--饱腹值达到上限邮件发奖
	tSpringFestival2020Nian_Cont["FoodMail"] = {}
	tSpringFestival2020Nian_Cont["FoodMail"]["ActionId"] = 575815
	tSpringFestival2020Nian_Cont["FoodMail"]["ExistDay"] = 7
	--光效配置
	tSpringFestival2020Nian_Cont["Effect"] = {}
	--封印年兽光效
	tSpringFestival2020Nian_Cont["Effect"][1] = "task072"
	--喂养年兽光效
	tSpringFestival2020Nian_Cont["Effect"][2] = "zf2-e123"
	--投入年兽蛋光效
	tSpringFestival2020Nian_Cont["Effect"][3] = "zf2-e128"
	--喂养值满100光效
	tSpringFestival2020Nian_Cont["Effect"][4] = "get_special_dancer"
	--开炉光效
	tSpringFestival2020Nian_Cont["Effect"][5] = "task074"
	--开启年兽光效
	tSpringFestival2020Nian_Cont["Effect"][6] = "task073"
	--开始孵化光效
	tSpringFestival2020Nian_Cont["Effect"][7] = "task075"
	--孵化成功光效
	tSpringFestival2020Nian_Cont["Effect"][8] = "task076"
	--增加福气值光效
	tSpringFestival2020Nian_Cont["Effect"]["FuQi"] = "zenjiafuqi"
	tSpringFestival2020Nian_Cont["Effect"]["Num"] = {}
	tSpringFestival2020Nian_Cont["Effect"]["Num"][0] = "fwwxhlnum0"
	tSpringFestival2020Nian_Cont["Effect"]["Num"][1] = "fwwxhlnum1"
	tSpringFestival2020Nian_Cont["Effect"]["Num"][2] = "fwwxhlnum2"
	tSpringFestival2020Nian_Cont["Effect"]["Num"][3] = "fwwxhlnum3"
	tSpringFestival2020Nian_Cont["Effect"]["Num"][4] = "fwwxhlnum4"
	tSpringFestival2020Nian_Cont["Effect"]["Num"][5] = "fwwxhlnum5"
	tSpringFestival2020Nian_Cont["Effect"]["Num"][6] = "fwwxhlnum6"
	tSpringFestival2020Nian_Cont["Effect"]["Num"][7] = "fwwxhlnum7"
	tSpringFestival2020Nian_Cont["Effect"]["Num"][8] = "fwwxhlnum8"
	tSpringFestival2020Nian_Cont["Effect"]["Num"][9] = "fwwxhlnum9"
	--年兽蛋索引
	tSpringFestival2020Nian_Cont["EggIndex"] = {}
	tSpringFestival2020Nian_Cont["EggIndex"][3600237] = 211
	tSpringFestival2020Nian_Cont["EggIndex"][3600240] = 212
	tSpringFestival2020Nian_Cont["EggIndex"][3327298] = 213
	--年兽蛋孵化时间
	tSpringFestival2020Nian_Cont["EggTime"] = {}
	tSpringFestival2020Nian_Cont["EggTime"][3600237] = 60
	tSpringFestival2020Nian_Cont["EggTime"][3600240] = 300
	tSpringFestival2020Nian_Cont["EggTime"][3327298] = 900
	--孵化炉开启条件
	tSpringFestival2020Nian_Cont["Open"] = {}
	tSpringFestival2020Nian_Cont["Open"][25795] = {}
	tSpringFestival2020Nian_Cont["Open"][25795]["StcIndex"] = 1
	tSpringFestival2020Nian_Cont["Open"][25795]["ItemId"] = 3600239
	tSpringFestival2020Nian_Cont["Open"][25795]["ItemNum"] = 10
	tSpringFestival2020Nian_Cont["Open"][25795]["Money"] = 10000000
	tSpringFestival2020Nian_Cont["Open"][25796] = {}
	tSpringFestival2020Nian_Cont["Open"][25796]["StcIndex"] = 2
	tSpringFestival2020Nian_Cont["Open"][25796]["ItemId"] = 3600239
	tSpringFestival2020Nian_Cont["Open"][25796]["ItemNum"] = 10
	tSpringFestival2020Nian_Cont["Open"][25796]["EMoneyMono"] = 500
	tSpringFestival2020Nian_Cont["Open"][25797] = {}
	tSpringFestival2020Nian_Cont["Open"][25797]["StcIndex"] = 3
	tSpringFestival2020Nian_Cont["Open"][25797]["ItemId"] = 3600239
	tSpringFestival2020Nian_Cont["Open"][25797]["ItemNum"] = 20
	tSpringFestival2020Nian_Cont["Open"][25797]["EMoney"] = 270
	--年兽食物索引
	tSpringFestival2020Nian_Cont["FoodIndex"] = {}
	tSpringFestival2020Nian_Cont["FoodIndex"][1] = {}
	tSpringFestival2020Nian_Cont["FoodIndex"][1]["Value"] = 5
	tSpringFestival2020Nian_Cont["FoodIndex"][1]["Money"] = 2000000
	tSpringFestival2020Nian_Cont["FoodIndex"][1]["StcIndex"] = 14
	tSpringFestival2020Nian_Cont["FoodIndex"][2] = {}
	tSpringFestival2020Nian_Cont["FoodIndex"][2]["Value"] = 10
	tSpringFestival2020Nian_Cont["FoodIndex"][2]["ItemId"] = 720027
	tSpringFestival2020Nian_Cont["FoodIndex"][2]["ItemNum"] = 10
	tSpringFestival2020Nian_Cont["FoodIndex"][2]["StcIndex"] = 15
	tSpringFestival2020Nian_Cont["FoodIndex"][3] = {}
	tSpringFestival2020Nian_Cont["FoodIndex"][3]["Value"] = 10
	tSpringFestival2020Nian_Cont["FoodIndex"][3]["EMoneyMono"] = 99
	tSpringFestival2020Nian_Cont["FoodIndex"][3]["StcIndex"] = 18
	tSpringFestival2020Nian_Cont["FoodIndex"][4] = {}
	tSpringFestival2020Nian_Cont["FoodIndex"][4]["Value"] = 10
	tSpringFestival2020Nian_Cont["FoodIndex"][4]["EMoney"] = 27
	tSpringFestival2020Nian_Cont["FoodIndex"][5] = {}
	tSpringFestival2020Nian_Cont["FoodIndex"][5]["Value"] = 20
	tSpringFestival2020Nian_Cont["FoodIndex"][5]["ItemId"] = 1088000
	tSpringFestival2020Nian_Cont["FoodIndex"][5]["ItemNum"] = 1
	tSpringFestival2020Nian_Cont["FoodIndex"][5]["StcIndex"] = 16
	tSpringFestival2020Nian_Cont["FoodIndex"][6] = {}
	tSpringFestival2020Nian_Cont["FoodIndex"][6]["Value"] = 30
	tSpringFestival2020Nian_Cont["FoodIndex"][6]["ItemId"] = 3327299
	tSpringFestival2020Nian_Cont["FoodIndex"][6]["ItemNum"] = 30
	tSpringFestival2020Nian_Cont["FoodIndex"][6]["StcIndex"] = 19
	
	--孵化炉对应stc掩码标识
	tSpringFestival2020Nian_Cont["StcIndex"] = {}
	tSpringFestival2020Nian_Cont["StcIndex"][25793] = 4
	tSpringFestival2020Nian_Cont["StcIndex"][25794] = 5
	tSpringFestival2020Nian_Cont["StcIndex"][25795] = 6
	tSpringFestival2020Nian_Cont["StcIndex"][25796] = 7
	tSpringFestival2020Nian_Cont["StcIndex"][25797] = 8
	--传送坐标
	tSpringFestival2020Nian_Cont["BoundTrans"] = {}
	tSpringFestival2020Nian_Cont["BoundTrans"][1] = {}
	tSpringFestival2020Nian_Cont["BoundTrans"][1]["MapId"] = 1002
	tSpringFestival2020Nian_Cont["BoundTrans"][1]["PosX"] = 375
	tSpringFestival2020Nian_Cont["BoundTrans"][1]["PosY"] = 440
	tSpringFestival2020Nian_Cont["BoundTrans"][2] = {}
	tSpringFestival2020Nian_Cont["BoundTrans"][2]["MapId"] = 1036
	tSpringFestival2020Nian_Cont["BoundTrans"][2]["PosX"] = 184
	tSpringFestival2020Nian_Cont["BoundTrans"][2]["PosY"] = 166
	tSpringFestival2020Nian_Cont["BoundTrans"]["Into"] = {}
	tSpringFestival2020Nian_Cont["BoundTrans"]["Into"]["MapId"] = 10601
	tSpringFestival2020Nian_Cont["BoundTrans"]["Into"]["PosX"] = 174
	tSpringFestival2020Nian_Cont["BoundTrans"]["Into"]["PosY"] = 125
	--BOSSid汇总
	tSpringFestival2020Nian_Cont["BossId"] = {5860,5861,5862,5863,5864,5865,5866,5867,5868,5869,5870,5871,5872,5873,5874,5875,5876,5877,5878,5879,5880,5881,5882,5883,5884,5885}
	--刷怪信息
	tSpringFestival2020Nian_Cont["BossInfo"] = {}
	tSpringFestival2020Nian_Cont["BossInfo"]["PosX"] = 60
	tSpringFestival2020Nian_Cont["BossInfo"]["PosY"] = 55
	tSpringFestival2020Nian_Cont["BossInfo"]["GenId"] = 30444
	--动态NPC
	tSpringFestival2020Nian_Cont["DynNpc"] = {}
	tSpringFestival2020Nian_Cont["DynNpc"]["Sort"] = 1
	tSpringFestival2020Nian_Cont["DynNpc"]["Type"] = 2
	tSpringFestival2020Nian_Cont["DynNpc"]["Action"] = 94491843
	--动态NPCLookface
	tSpringFestival2020Nian_Cont["DynNpcLookface"] = {}
	tSpringFestival2020Nian_Cont["DynNpcLookface"][1] = 38800
	tSpringFestival2020Nian_Cont["DynNpcLookface"][2] = 38810
	tSpringFestival2020Nian_Cont["DynNpcLookface"][3] = 39010
	tSpringFestival2020Nian_Cont["DynNpcLookface"][4] = 39020
	tSpringFestival2020Nian_Cont["DynNpcLookface"][5] = 39030
	tSpringFestival2020Nian_Cont["DynNpcLookface"][6] = 39160
	tSpringFestival2020Nian_Cont["DynNpcLookface"][7] = 39170
	tSpringFestival2020Nian_Cont["DynNpcLookface"][8] = 39180
	tSpringFestival2020Nian_Cont["DynNpcLookface"][9] = 39550
	tSpringFestival2020Nian_Cont["DynNpcLookface"][10] =39560
	tSpringFestival2020Nian_Cont["DynNpcLookface"][11] = 39570
	tSpringFestival2020Nian_Cont["DynNpcLookface"][12] = 39580
	tSpringFestival2020Nian_Cont["DynNpcLookface"][13] = 39590
	tSpringFestival2020Nian_Cont["DynNpcLookface"][14] = 39600
	tSpringFestival2020Nian_Cont["DynNpcLookface"][15] = 39610
	tSpringFestival2020Nian_Cont["DynNpcLookface"][16] = 39620
	tSpringFestival2020Nian_Cont["DynNpcLookface"][17] = 39630
	tSpringFestival2020Nian_Cont["DynNpcLookface"][18] = 39640
	tSpringFestival2020Nian_Cont["DynNpcLookface"][19] = 39650
	tSpringFestival2020Nian_Cont["DynNpcLookface"][20] = 39660
	tSpringFestival2020Nian_Cont["DynNpcLookface"][21] = 39670
	tSpringFestival2020Nian_Cont["DynNpcLookface"][22] = 39680
	tSpringFestival2020Nian_Cont["DynNpcLookface"][23] = 39690
	tSpringFestival2020Nian_Cont["DynNpcLookface"][24] = 39700
	tSpringFestival2020Nian_Cont["DynNpcLookface"][25] = 39710
	--一键封印可获得的年兽灵魄数量
	tSpringFestival2020Nian_Cont["AwardNum"] = {}
	tSpringFestival2020Nian_Cont["AwardNum"][1] = 1
	tSpringFestival2020Nian_Cont["AwardNum"][2] = 1
	tSpringFestival2020Nian_Cont["AwardNum"][3] = 1
	tSpringFestival2020Nian_Cont["AwardNum"][4] = 1
	tSpringFestival2020Nian_Cont["AwardNum"][5] = 1
	tSpringFestival2020Nian_Cont["AwardNum"][6] = 3
	tSpringFestival2020Nian_Cont["AwardNum"][7] = 3
	tSpringFestival2020Nian_Cont["AwardNum"][8] = 3
	tSpringFestival2020Nian_Cont["AwardNum"][9] = 3
	tSpringFestival2020Nian_Cont["AwardNum"][10] = 3
	tSpringFestival2020Nian_Cont["AwardNum"][11] = 5
	tSpringFestival2020Nian_Cont["AwardNum"][12] = 5
	tSpringFestival2020Nian_Cont["AwardNum"][13] = 5
	tSpringFestival2020Nian_Cont["AwardNum"][14] = 5
	tSpringFestival2020Nian_Cont["AwardNum"][15] = 5
	tSpringFestival2020Nian_Cont["AwardNum"][16] = 10
	tSpringFestival2020Nian_Cont["AwardNum"][17] = 10
	tSpringFestival2020Nian_Cont["AwardNum"][18] = 10
	tSpringFestival2020Nian_Cont["AwardNum"][19] = 10
	tSpringFestival2020Nian_Cont["AwardNum"][20] = 10
	tSpringFestival2020Nian_Cont["AwardNum"][21] = 20
	tSpringFestival2020Nian_Cont["AwardNum"][22] = 20
	tSpringFestival2020Nian_Cont["AwardNum"][23] = 20
	tSpringFestival2020Nian_Cont["AwardNum"][24] = 20
	tSpringFestival2020Nian_Cont["AwardNum"][25] = 20
	--新年福气
	tSpringFestival2020Nian_Cont["FuQi"] = {}
	tSpringFestival2020Nian_Cont["FuQi"][1] = 50
	tSpringFestival2020Nian_Cont["FuQi"][2] = 50
	tSpringFestival2020Nian_Cont["FuQi"][3] = 50
	tSpringFestival2020Nian_Cont["FuQi"][4] = 50
	tSpringFestival2020Nian_Cont["FuQi"][5] = 75
	tSpringFestival2020Nian_Cont["FuQi"][6] = 100
	tSpringFestival2020Nian_Cont["FuQi"][7] = 100
	tSpringFestival2020Nian_Cont["FuQi"][8] = 100
	tSpringFestival2020Nian_Cont["FuQi"][9] = 100
	tSpringFestival2020Nian_Cont["FuQi"][10] = 150
	tSpringFestival2020Nian_Cont["FuQi"][11] = 150
	tSpringFestival2020Nian_Cont["FuQi"][12] = 150
	tSpringFestival2020Nian_Cont["FuQi"][13] = 150
	tSpringFestival2020Nian_Cont["FuQi"][14] = 150
	tSpringFestival2020Nian_Cont["FuQi"][15] = 225
	tSpringFestival2020Nian_Cont["FuQi"][16] = 200
	tSpringFestival2020Nian_Cont["FuQi"][17] = 200
	tSpringFestival2020Nian_Cont["FuQi"][18] = 200
	tSpringFestival2020Nian_Cont["FuQi"][19] = 200
	tSpringFestival2020Nian_Cont["FuQi"][20] = 300
	tSpringFestival2020Nian_Cont["FuQi"][21] = 300
	tSpringFestival2020Nian_Cont["FuQi"][22] = 300
	tSpringFestival2020Nian_Cont["FuQi"][23] = 300
	tSpringFestival2020Nian_Cont["FuQi"][24] = 300
	tSpringFestival2020Nian_Cont["FuQi"][25] = 450
	--使用年兽灵魄封印消耗的年兽灵魄数量
	tSpringFestival2020Nian_Cont["SoulNum"] = {}
	tSpringFestival2020Nian_Cont["SoulNum"][1] = 10
	tSpringFestival2020Nian_Cont["SoulNum"][2] = 10
	tSpringFestival2020Nian_Cont["SoulNum"][3] = 10
	tSpringFestival2020Nian_Cont["SoulNum"][4] = 10
	tSpringFestival2020Nian_Cont["SoulNum"][5] = 10
	tSpringFestival2020Nian_Cont["SoulNum"][6] = 30
	tSpringFestival2020Nian_Cont["SoulNum"][7] = 30
	tSpringFestival2020Nian_Cont["SoulNum"][8] = 30
	tSpringFestival2020Nian_Cont["SoulNum"][9] = 30
	tSpringFestival2020Nian_Cont["SoulNum"][10] = 30
	tSpringFestival2020Nian_Cont["SoulNum"][11] = 50
	tSpringFestival2020Nian_Cont["SoulNum"][12] = 50
	tSpringFestival2020Nian_Cont["SoulNum"][13] = 50
	tSpringFestival2020Nian_Cont["SoulNum"][14] = 50
	tSpringFestival2020Nian_Cont["SoulNum"][15] = 50
	tSpringFestival2020Nian_Cont["SoulNum"][16] = 100
	tSpringFestival2020Nian_Cont["SoulNum"][17] = 100
	tSpringFestival2020Nian_Cont["SoulNum"][18] = 100
	tSpringFestival2020Nian_Cont["SoulNum"][19] = 100
	tSpringFestival2020Nian_Cont["SoulNum"][20] = 100
	tSpringFestival2020Nian_Cont["SoulNum"][21] = 200
	tSpringFestival2020Nian_Cont["SoulNum"][22] = 200
	tSpringFestival2020Nian_Cont["SoulNum"][23] = 200
	tSpringFestival2020Nian_Cont["SoulNum"][24] = 200
	tSpringFestival2020Nian_Cont["SoulNum"][25] = 200
	--新年福气年兽喂养
	tSpringFestival2020Nian_Cont["FoodFuQi"] = {}
	tSpringFestival2020Nian_Cont["FoodFuQi"][1] = 5
	tSpringFestival2020Nian_Cont["FoodFuQi"][2] = 10
	tSpringFestival2020Nian_Cont["FoodFuQi"][3] = 10
	tSpringFestival2020Nian_Cont["FoodFuQi"][4] = 10
	tSpringFestival2020Nian_Cont["FoodFuQi"][5] = 20
	tSpringFestival2020Nian_Cont["FoodFuQi"][6] = 30
	--读条相关配置
	tSpringFestival2020Nian_Cont["Explore"] = {}
	tSpringFestival2020Nian_Cont["Explore"]["Secs"] = 2
	tSpringFestival2020Nian_Cont["Explore"]["ActionId"] = 220
	
--时间
local tSpringFestival2020Nian_Time = {}
	tSpringFestival2020Nian_Time["ActivityTime"] = tActivityTime["SpringFestival2020Nian"]["ActivityTime"]
	tSpringFestival2020Nian_Time["StoveTime"] = tActivityTime["SpringFestival2020Nian"]["StoveTime"]
	tSpringFestival2020Nian_Time["RankTime"] = tActivityTime["SpringFestival2020Nian"]["RankTime"]
	
local tSpringFestival2020Nian_Log = {}
	tSpringFestival2020Nian_Log["LogId"] = 12001798
	tSpringFestival2020Nian_Log["DelItem"] = "0,0,%d,%d,12001798,2,0,0"
	tSpringFestival2020Nian_Log["IntoEgg"] = "0,0,%d,%d,12001798,1[1],0,0"
	tSpringFestival2020Nian_Log["SpeedEgg"] = "0,0,%d,%d,12001798,1[2],0,0"
	tSpringFestival2020Nian_Log["Open"] = "0,0,%d,%d,12001798,1[4],%d,0"
	tSpringFestival2020Nian_Log["Eat"] = "0,0,%d,%d,12001798,1[5],0,0"
	tSpringFestival2020Nian_Log["SoulItem"] = "0,0,%d,%d,12001798,1[6],0,0"
	
local tSpringFestival2020Nian_ELog = {}
	tSpringFestival2020Nian_ELog["Speed"] = "1000	1385"
	tSpringFestival2020Nian_ELog["CostEMoney"] = "1000	1396"
	tSpringFestival2020Nian_ELog["CostEMoneyMono"] = "1000	1397"
	tSpringFestival2020Nian_ELog["EatEMoney"] = "1000	1398"
	tSpringFestival2020Nian_ELog["EatEMoneyMono"] = "1000	1399"
	
--掩码
local tSpringFestival2020Nian_Stc = {}
	--火云狮饱腹值
	tSpringFestival2020Nian_Stc[1] = {}
	tSpringFestival2020Nian_Stc[1]["Event"] = 212
	tSpringFestival2020Nian_Stc[1]["Type"] = 12
	--是否激活最强年兽
	tSpringFestival2020Nian_Stc[2] = {}
	tSpringFestival2020Nian_Stc[2]["Event"] = 212
	tSpringFestival2020Nian_Stc[2]["Type"] = 13
	--年兽图鉴收藏
	tSpringFestival2020Nian_Stc[3] = {}
	tSpringFestival2020Nian_Stc[3]["Event"] = 212
	tSpringFestival2020Nian_Stc[3]["Type"] = 14
	--保存寅木孵化炉孵化状态
	tSpringFestival2020Nian_Stc[4] = {}
	tSpringFestival2020Nian_Stc[4]["Event"] = 212
	tSpringFestival2020Nian_Stc[4]["Type"] = 15
	--保存辰土孵化炉孵化状态
	tSpringFestival2020Nian_Stc[5] = {}
	tSpringFestival2020Nian_Stc[5]["Event"] = 212
	tSpringFestival2020Nian_Stc[5]["Type"] = 16
	--保存癸水孵化炉孵化状态
	tSpringFestival2020Nian_Stc[6] = {}
	tSpringFestival2020Nian_Stc[6]["Event"] = 212
	tSpringFestival2020Nian_Stc[6]["Type"] = 17
	--保存午火孵化炉孵化状态
	tSpringFestival2020Nian_Stc[7] = {}
	tSpringFestival2020Nian_Stc[7]["Event"] = 212
	tSpringFestival2020Nian_Stc[7]["Type"] = 18
	--保存庚金孵化炉孵化状态
	tSpringFestival2020Nian_Stc[8] = {}
	tSpringFestival2020Nian_Stc[8]["Event"] = 212
	tSpringFestival2020Nian_Stc[8]["Type"] = 19
	--一键孵化免费次数
	tSpringFestival2020Nian_Stc[9] = {}
	tSpringFestival2020Nian_Stc[9]["Event"] = 212
	tSpringFestival2020Nian_Stc[9]["Type"] = 20
	tSpringFestival2020Nian_Stc[9]["Delay"] = 1
	tSpringFestival2020Nian_Stc[9]["TimeType"] = 4
	--二次确认
	tSpringFestival2020Nian_Stc[10] = {}
	tSpringFestival2020Nian_Stc[10]["Event"] = 212
	tSpringFestival2020Nian_Stc[10]["Type"] = 21
	--保存新年福气
	tSpringFestival2020Nian_Stc[11] = {}
	tSpringFestival2020Nian_Stc[11]["Event"] = 212
	tSpringFestival2020Nian_Stc[11]["Type"] = 22
	--孵化炉开启状态
	tSpringFestival2020Nian_Stc[12] = {}
	tSpringFestival2020Nian_Stc[12]["Event"] = 212
	tSpringFestival2020Nian_Stc[12]["Type"] = 23
	--引导图弹出
	tSpringFestival2020Nian_Stc[13] = {}
	tSpringFestival2020Nian_Stc[13]["Event"] = 213
	tSpringFestival2020Nian_Stc[13]["Type"] = 92
	--金币喂养每日上限
	tSpringFestival2020Nian_Stc[14] = {}
	tSpringFestival2020Nian_Stc[14]["Event"] = 213
	tSpringFestival2020Nian_Stc[14]["Type"] = 97
	tSpringFestival2020Nian_Stc[14]["Delay"] = 1
	tSpringFestival2020Nian_Stc[14]["TimeType"] = 4
	tSpringFestival2020Nian_Stc[14]["Limit"] = 100
	--流星卷喂养每日上限
	tSpringFestival2020Nian_Stc[15] = {}
	tSpringFestival2020Nian_Stc[15]["Event"] = 213
	tSpringFestival2020Nian_Stc[15]["Type"] = 98
	tSpringFestival2020Nian_Stc[15]["Delay"] = 1
	tSpringFestival2020Nian_Stc[15]["TimeType"] = 4
	tSpringFestival2020Nian_Stc[15]["Limit"] = 50
	--龙珠喂养每日上限
	tSpringFestival2020Nian_Stc[16] = {}
	tSpringFestival2020Nian_Stc[16]["Event"] = 213
	tSpringFestival2020Nian_Stc[16]["Type"] = 99
	tSpringFestival2020Nian_Stc[16]["Delay"] = 1
	tSpringFestival2020Nian_Stc[16]["TimeType"] = 4
	tSpringFestival2020Nian_Stc[16]["Limit"] = 30
	--保存副本是孵化炉进的还是年兽灵魄进的
	tSpringFestival2020Nian_Stc[17] = {}
	tSpringFestival2020Nian_Stc[17]["Event"] = 214
	tSpringFestival2020Nian_Stc[17]["Type"] = 46
	--赠点喂养每日上限
	tSpringFestival2020Nian_Stc[18] = {}
	tSpringFestival2020Nian_Stc[18]["Event"] = 214
	tSpringFestival2020Nian_Stc[18]["Type"] = 53
	tSpringFestival2020Nian_Stc[18]["Delay"] = 1
	tSpringFestival2020Nian_Stc[18]["TimeType"] = 4
	tSpringFestival2020Nian_Stc[18]["Limit"] = 300
	--年兽灵魄喂养每日上限
	tSpringFestival2020Nian_Stc[19] = {}
	tSpringFestival2020Nian_Stc[19]["Event"] = 214
	tSpringFestival2020Nian_Stc[19]["Type"] = 62
	tSpringFestival2020Nian_Stc[19]["Delay"] = 1
	tSpringFestival2020Nian_Stc[19]["TimeType"] = 4
	tSpringFestival2020Nian_Stc[19]["Limit"] = 30
	
--二进制对应值
local tSpringFestival2020Nian_ParseNumber = {}
	tSpringFestival2020Nian_ParseNumber[1] = 1
	tSpringFestival2020Nian_ParseNumber[2] = 2
	tSpringFestival2020Nian_ParseNumber[3] = 4
	tSpringFestival2020Nian_ParseNumber[4] = 8
	tSpringFestival2020Nian_ParseNumber[5] = 16
	tSpringFestival2020Nian_ParseNumber[6] = 32
	tSpringFestival2020Nian_ParseNumber[7] = 64
	tSpringFestival2020Nian_ParseNumber[8] = 128
	tSpringFestival2020Nian_ParseNumber[9] = 256
	tSpringFestival2020Nian_ParseNumber[10] = 512
	tSpringFestival2020Nian_ParseNumber[11] = 1024
	tSpringFestival2020Nian_ParseNumber[12] = 2048
	tSpringFestival2020Nian_ParseNumber[13] = 4096
	tSpringFestival2020Nian_ParseNumber[14] = 8192
	tSpringFestival2020Nian_ParseNumber[15] = 16384
	tSpringFestival2020Nian_ParseNumber[16] = 32768
	tSpringFestival2020Nian_ParseNumber[17] = 65536
	tSpringFestival2020Nian_ParseNumber[18] = 131072
	tSpringFestival2020Nian_ParseNumber[19] = 262144
	tSpringFestival2020Nian_ParseNumber[20] = 524288
	tSpringFestival2020Nian_ParseNumber[21] = 1048576
	tSpringFestival2020Nian_ParseNumber[22] = 2097152
	tSpringFestival2020Nian_ParseNumber[23] = 4194304
	tSpringFestival2020Nian_ParseNumber[24] = 8388608
	tSpringFestival2020Nian_ParseNumber[25] = 16777216
	
--随机表
local tSpringFestival2020Nian_Prob ={}
	-- 年兽蛋（一阶）孵化表
	tSpringFestival2020Nian_Prob[3600237] = {}
	tSpringFestival2020Nian_Prob[3600237][1] = {}
	tSpringFestival2020Nian_Prob[3600237][1]["ItemChanceSum"] = 10000
	--普通年兽	59.00%
	tSpringFestival2020Nian_Prob[3600237][1][1] = {}
	tSpringFestival2020Nian_Prob[3600237][1][1]["RandomItemChanceType"] = 2
	tSpringFestival2020Nian_Prob[3600237][1][1]["ItemChance"] = 5900
	tSpringFestival2020Nian_Prob[3600237][1][1]["Item_1"] = 1
	--良品年兽	25.00%
	tSpringFestival2020Nian_Prob[3600237][1][2] = {}
	tSpringFestival2020Nian_Prob[3600237][1][2]["RandomItemChanceType"] = 2
	tSpringFestival2020Nian_Prob[3600237][1][2]["ItemChance"] = 2500
	tSpringFestival2020Nian_Prob[3600237][1][2]["Item_1"] = 2
	--优秀年兽	10.00%
	tSpringFestival2020Nian_Prob[3600237][1][3] = {}
	tSpringFestival2020Nian_Prob[3600237][1][3]["RandomItemChanceType"] = 2
	tSpringFestival2020Nian_Prob[3600237][1][3]["ItemChance"] = 1000
	tSpringFestival2020Nian_Prob[3600237][1][3]["Item_1"] = 3
	--精品年兽	6.00%
	tSpringFestival2020Nian_Prob[3600237][1][4] = {}
	tSpringFestival2020Nian_Prob[3600237][1][4]["RandomItemChanceType"] = 2
	tSpringFestival2020Nian_Prob[3600237][1][4]["ItemChance"] = 600
	tSpringFestival2020Nian_Prob[3600237][1][4]["Item_1"] = 4
	-- 年兽蛋（二阶）孵化表
	tSpringFestival2020Nian_Prob[3600240] = {}
	tSpringFestival2020Nian_Prob[3600240][1] = {}
	tSpringFestival2020Nian_Prob[3600240][1]["ItemChanceSum"] = 10000
	--良品年兽	60.00%
	tSpringFestival2020Nian_Prob[3600240][1][1] = {}
	tSpringFestival2020Nian_Prob[3600240][1][1]["RandomItemChanceType"] = 2
	tSpringFestival2020Nian_Prob[3600240][1][1]["ItemChance"] = 6000
	tSpringFestival2020Nian_Prob[3600240][1][1]["Item_1"] = 2
	--优秀年兽	25.00%
	tSpringFestival2020Nian_Prob[3600240][1][2] = {}
	tSpringFestival2020Nian_Prob[3600240][1][2]["RandomItemChanceType"] = 2
	tSpringFestival2020Nian_Prob[3600240][1][2]["ItemChance"] = 2500
	tSpringFestival2020Nian_Prob[3600240][1][2]["Item_1"] = 3
	--精品年兽	10.00%
	tSpringFestival2020Nian_Prob[3600240][1][3] = {}
	tSpringFestival2020Nian_Prob[3600240][1][3]["RandomItemChanceType"] = 2
	tSpringFestival2020Nian_Prob[3600240][1][3]["ItemChance"] = 1000
	tSpringFestival2020Nian_Prob[3600240][1][3]["Item_1"] = 4
	--极品年兽	5.00%
	tSpringFestival2020Nian_Prob[3600240][1][4] = {}
	tSpringFestival2020Nian_Prob[3600240][1][4]["RandomItemChanceType"] = 2
	tSpringFestival2020Nian_Prob[3600240][1][4]["ItemChance"] = 500
	tSpringFestival2020Nian_Prob[3600240][1][4]["Item_1"] = 5
	-- 年兽蛋（三阶）孵化表
	tSpringFestival2020Nian_Prob[3327298] = {}
	tSpringFestival2020Nian_Prob[3327298][1] = {}
	tSpringFestival2020Nian_Prob[3327298][1]["ItemChanceSum"] = 10000
	--极品年兽	100.00%
	tSpringFestival2020Nian_Prob[3327298][1][1] = {}
	tSpringFestival2020Nian_Prob[3327298][1][1]["RandomItemChanceType"] = 2
	tSpringFestival2020Nian_Prob[3327298][1][1]["ItemChance"] = 10000
	tSpringFestival2020Nian_Prob[3327298][1][1]["Item_1"] = 5
	-- 年兽种类表
	tSpringFestival2020Nian_Prob["Species"] = {}
	tSpringFestival2020Nian_Prob["Species"][1] = {}
	tSpringFestival2020Nian_Prob["Species"][1]["ItemChanceSum"] = 10000
	--凶·魔	21.50%
	tSpringFestival2020Nian_Prob["Species"][1][1] = {}
	tSpringFestival2020Nian_Prob["Species"][1][1]["RandomItemChanceType"] = 2
	tSpringFestival2020Nian_Prob["Species"][1][1]["ItemChance"] = 2150
	tSpringFestival2020Nian_Prob["Species"][1][1]["Item_1"] = 1
	--凶·夕	21.50%
	tSpringFestival2020Nian_Prob["Species"][1][2] = {}
	tSpringFestival2020Nian_Prob["Species"][1][2]["RandomItemChanceType"] = 2
	tSpringFestival2020Nian_Prob["Species"][1][2]["ItemChance"] = 2150
	tSpringFestival2020Nian_Prob["Species"][1][2]["Item_1"] = 2
	--凶·年	21.50%
	tSpringFestival2020Nian_Prob["Species"][1][3] = {}
	tSpringFestival2020Nian_Prob["Species"][1][3]["RandomItemChanceType"] = 2
	tSpringFestival2020Nian_Prob["Species"][1][3]["ItemChance"] = 2150
	tSpringFestival2020Nian_Prob["Species"][1][3]["Item_1"] = 3
	--凶·岁	21.50%
	tSpringFestival2020Nian_Prob["Species"][1][4] = {}
	tSpringFestival2020Nian_Prob["Species"][1][4]["RandomItemChanceType"] = 2
	tSpringFestival2020Nian_Prob["Species"][1][4]["ItemChance"] = 2150
	tSpringFestival2020Nian_Prob["Species"][1][4]["Item_1"] = 4
	--祥·狮	14.00%
	tSpringFestival2020Nian_Prob["Species"][1][5] = {}
	tSpringFestival2020Nian_Prob["Species"][1][5]["RandomItemChanceType"] = 2
	tSpringFestival2020Nian_Prob["Species"][1][5]["ItemChance"] = 1400
	tSpringFestival2020Nian_Prob["Species"][1][5]["Item_1"] = 5
	
local tSpringFestival2020Nian_Reward = {}
	-- ===一键封印
	-- ===索引: tSpringFestival2020Nian_Reward["OneKey"]
	-- ===LogStep: 1[3]
	tSpringFestival2020Nian_Reward["OneKey"] = {}
	tSpringFestival2020Nian_Reward["OneKey"]["LogId"] = 12001798
	tSpringFestival2020Nian_Reward["OneKey"]["LogStep"] = "1[3]"
	tSpringFestival2020Nian_Reward["OneKey"]["RewardItem"] = {}
	tSpringFestival2020Nian_Reward["OneKey"]["RewardItem"][1] = {}
	tSpringFestival2020Nian_Reward["OneKey"]["RewardItem"][1]["Id"] = 3327299 -- 年兽灵魄[3327299][属性:9][叠加:1000][金币:0], 【表格】年兽灵魄
	tSpringFestival2020Nian_Reward["OneKey"]["RewardItem"][1]["Attr"] = "0 1" -- 年兽灵魄*1
	tSpringFestival2020Nian_Reward["OneKey"]["RewardEffect"] = {}
	tSpringFestival2020Nian_Reward["OneKey"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Nian_Reward["OneKey"]["RewardEffect"]["Effect"] = "angelwing"
	
	tSpringFestival2020Nian_Reward[3600239] = {}
	-- ===赤炎结晶转化
	-- ===索引: tSpringFestival2020Nian_Reward[3600239]
	-- ===删除: 3600239,1
	tSpringFestival2020Nian_Reward[3600239]["LogId"] = 12001798
	tSpringFestival2020Nian_Reward[3600239]["DeleteItem"] = {}
	tSpringFestival2020Nian_Reward[3600239]["DeleteItem"][1] = {}
	tSpringFestival2020Nian_Reward[3600239]["DeleteItem"][1]["Id"] = 3600239 -- 【库】赤炎结晶[属性:9]
	tSpringFestival2020Nian_Reward[3600239]["DeleteItem"][1]["ItemNum"] = 1
	tSpringFestival2020Nian_Reward[3600239]["RewardStrengthValue"] = {}
	tSpringFestival2020Nian_Reward[3600239]["RewardStrengthValue"]["Value"] = 10 -- 气力值, 【需求】10点气力值
	tSpringFestival2020Nian_Reward[3600239]["RewardEffect"] = {}
	tSpringFestival2020Nian_Reward[3600239]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Nian_Reward[3600239]["RewardEffect"]["Effect"] = "angelwing"

	tSpringFestival2020Nian_Reward[3327300] = {}
	-- ===萌宠珍宝礼包
	-- ===索引: tSpringFestival2020Nian_Reward[3327300]
	-- ===删除: 3327300,1
	tSpringFestival2020Nian_Reward[3327300]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tSpringFestival2020Nian_Reward[3327300]["DeleteItem"] = {}
	tSpringFestival2020Nian_Reward[3327300]["DeleteItem"][1] = {}
	tSpringFestival2020Nian_Reward[3327300]["DeleteItem"][1]["Id"] = 3327300 -- 【库】萌宠珍宝礼包[属性:9]
	tSpringFestival2020Nian_Reward[3327300]["LogId"] = 12001798
	-- 赤炼石+4（赠） - 6%
	tSpringFestival2020Nian_Reward[3327300][1] = {}
	tSpringFestival2020Nian_Reward[3327300][1]["RandomItemChanceType"] = 2
	tSpringFestival2020Nian_Reward[3327300][1]["ItemChance"] = 600
	tSpringFestival2020Nian_Reward[3327300][1]["RewardItem"] = {}
	tSpringFestival2020Nian_Reward[3327300][1]["RewardItem"][1] = {}
	tSpringFestival2020Nian_Reward[3327300][1]["RewardItem"][1]["Id"] = 730004 -- +4赤炼石[730004][属性:0][叠加:0][金币:0], 【表格】赤炼石+4（赠）
	tSpringFestival2020Nian_Reward[3327300][1]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+4赤炼石（赠）*1
	tSpringFestival2020Nian_Reward[3327300][1]["RewardEffect"] = {}
	tSpringFestival2020Nian_Reward[3327300][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Nian_Reward[3327300][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 明亮星陨石 - 6%
	tSpringFestival2020Nian_Reward[3327300][2] = {}
	tSpringFestival2020Nian_Reward[3327300][2]["RandomItemChanceType"] = 2
	tSpringFestival2020Nian_Reward[3327300][2]["ItemChance"] = 600
	tSpringFestival2020Nian_Reward[3327300][2]["RewardItem"] = {}
	tSpringFestival2020Nian_Reward[3327300][2]["RewardItem"][1] = {}
	tSpringFestival2020Nian_Reward[3327300][2]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石
	tSpringFestival2020Nian_Reward[3327300][2]["RewardItem"][1]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的明亮星陨石*5
	tSpringFestival2020Nian_Reward[3327300][2]["RewardEffect"] = {}
	tSpringFestival2020Nian_Reward[3327300][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Nian_Reward[3327300][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 人参果 - 6%
	tSpringFestival2020Nian_Reward[3327300][3] = {}
	tSpringFestival2020Nian_Reward[3327300][3]["RandomItemChanceType"] = 2
	tSpringFestival2020Nian_Reward[3327300][3]["ItemChance"] = 600
	tSpringFestival2020Nian_Reward[3327300][3]["RewardItem"] = {}
	tSpringFestival2020Nian_Reward[3327300][3]["RewardItem"][1] = {}
	tSpringFestival2020Nian_Reward[3327300][3]["RewardItem"][1]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:10000][金币:0], 【表格】人参果
	tSpringFestival2020Nian_Reward[3327300][3]["RewardItem"][1]["Attr"] = "0 10" -- 人参果*10
	tSpringFestival2020Nian_Reward[3327300][3]["RewardEffect"] = {}
	tSpringFestival2020Nian_Reward[3327300][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Nian_Reward[3327300][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 万能神纹精粹（赠） - 6%
	tSpringFestival2020Nian_Reward[3327300][4] = {}
	tSpringFestival2020Nian_Reward[3327300][4]["RandomItemChanceType"] = 2
	tSpringFestival2020Nian_Reward[3327300][4]["ItemChance"] = 600
	tSpringFestival2020Nian_Reward[3327300][4]["RewardItem"] = {}
	tSpringFestival2020Nian_Reward[3327300][4]["RewardItem"][1] = {}
	tSpringFestival2020Nian_Reward[3327300][4]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹（赠）
	tSpringFestival2020Nian_Reward[3327300][4]["RewardItem"][1]["Attr"] = "0 30 3" -- 万能神纹精粹（赠）*30
	tSpringFestival2020Nian_Reward[3327300][4]["RewardEffect"] = {}
	tSpringFestival2020Nian_Reward[3327300][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Nian_Reward[3327300][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 100赠点红包 - 20%
	tSpringFestival2020Nian_Reward[3327300][5] = {}
	tSpringFestival2020Nian_Reward[3327300][5]["RandomItemChanceType"] = 2
	tSpringFestival2020Nian_Reward[3327300][5]["ItemChance"] = 2000
	tSpringFestival2020Nian_Reward[3327300][5]["RewardItem"] = {}
	tSpringFestival2020Nian_Reward[3327300][5]["RewardItem"][1] = {}
	tSpringFestival2020Nian_Reward[3327300][5]["RewardItem"][1]["Id"] = 3327310 --  100天石（赠）鼠年红包[3327310], 【表格】100赠点红包
	tSpringFestival2020Nian_Reward[3327300][5]["RewardItem"][1]["Attr"] = "0 1" --  100天石（赠）鼠年红包*1
	tSpringFestival2020Nian_Reward[3327300][5]["RewardEffect"] = {}
	tSpringFestival2020Nian_Reward[3327300][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Nian_Reward[3327300][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 【stc（215,44）】1小时（零点重置）10个
	tSpringFestival2020Nian_Reward[3327300][5]["EventType"] = 215
	tSpringFestival2020Nian_Reward[3327300][5]["DataType"] = 44
	tSpringFestival2020Nian_Reward[3327300][5]["RewardDelay"] = 1
	tSpringFestival2020Nian_Reward[3327300][5]["RewardTimeType"] = 2
	tSpringFestival2020Nian_Reward[3327300][5]["RewardData"] = 10
	tSpringFestival2020Nian_Reward[3327300][5]["FullIndex"] = 7
	-- 300赠点红包 - 10%
	tSpringFestival2020Nian_Reward[3327300][6] = {}
	tSpringFestival2020Nian_Reward[3327300][6]["RandomItemChanceType"] = 2
	tSpringFestival2020Nian_Reward[3327300][6]["ItemChance"] = 1000
	tSpringFestival2020Nian_Reward[3327300][6]["RewardItem"] = {}
	tSpringFestival2020Nian_Reward[3327300][6]["RewardItem"][1] = {}
	tSpringFestival2020Nian_Reward[3327300][6]["RewardItem"][1]["Id"] = 3327311 --  300天石（赠）鼠年红包[3327311], 【表格】300赠点红包
	tSpringFestival2020Nian_Reward[3327300][6]["RewardItem"][1]["Attr"] = "0 1" --  300天石（赠）鼠年红包*1
	tSpringFestival2020Nian_Reward[3327300][6]["RewardEffect"] = {}
	tSpringFestival2020Nian_Reward[3327300][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Nian_Reward[3327300][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 【stc（215,45）】1小时（零点重置）3个
	tSpringFestival2020Nian_Reward[3327300][6]["EventType"] = 215
	tSpringFestival2020Nian_Reward[3327300][6]["DataType"] = 45
	tSpringFestival2020Nian_Reward[3327300][6]["RewardDelay"] = 1
	tSpringFestival2020Nian_Reward[3327300][6]["RewardTimeType"] = 2
	tSpringFestival2020Nian_Reward[3327300][6]["RewardData"] = 3
	tSpringFestival2020Nian_Reward[3327300][6]["FullIndex"] = 7
	-- 1000气力值 - 9%
	tSpringFestival2020Nian_Reward[3327300][7] = {}
	tSpringFestival2020Nian_Reward[3327300][7]["RandomItemChanceType"] = 2
	tSpringFestival2020Nian_Reward[3327300][7]["ItemChance"] = 900
	tSpringFestival2020Nian_Reward[3327300][7]["RewardStrengthValue"] = {}
	tSpringFestival2020Nian_Reward[3327300][7]["RewardStrengthValue"]["Value"] = 1000 -- 气力值, 【需求】1000气力值
	tSpringFestival2020Nian_Reward[3327300][7]["RewardEffect"] = {}
	tSpringFestival2020Nian_Reward[3327300][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Nian_Reward[3327300][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 500修为值 - 9%
	tSpringFestival2020Nian_Reward[3327300][8] = {}
	tSpringFestival2020Nian_Reward[3327300][8]["RandomItemChanceType"] = 2
	tSpringFestival2020Nian_Reward[3327300][8]["ItemChance"] = 900
	tSpringFestival2020Nian_Reward[3327300][8]["RewardRepairValue"] = {}
	tSpringFestival2020Nian_Reward[3327300][8]["RewardRepairValue"]["Value"] = 500 -- 修为值, 【需求】500修为值
	tSpringFestival2020Nian_Reward[3327300][8]["RewardEffect"] = {}
	tSpringFestival2020Nian_Reward[3327300][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Nian_Reward[3327300][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤炼石+5（赠） - 3%
	tSpringFestival2020Nian_Reward[3327300][9] = {}
	tSpringFestival2020Nian_Reward[3327300][9]["RandomItemChanceType"] = 2
	tSpringFestival2020Nian_Reward[3327300][9]["ItemChance"] = 300
	tSpringFestival2020Nian_Reward[3327300][9]["RewardItem"] = {}
	tSpringFestival2020Nian_Reward[3327300][9]["RewardItem"][1] = {}
	tSpringFestival2020Nian_Reward[3327300][9]["RewardItem"][1]["Id"] = 730005 -- +5赤炼石[730005][属性:0][叠加:0][金币:0], 【表格】赤炼石+5（赠）
	tSpringFestival2020Nian_Reward[3327300][9]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+5赤炼石（赠）*1
	tSpringFestival2020Nian_Reward[3327300][9]["RewardEffect"] = {}
	tSpringFestival2020Nian_Reward[3327300][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Nian_Reward[3327300][9]["RewardEffect"]["Effect"] = "angelwing"
			-- 【stc（212,8）】1天（零点重置）1个
	tSpringFestival2020Nian_Reward[3327300][9]["EventType"] = 212
	tSpringFestival2020Nian_Reward[3327300][9]["DataType"] = 8
	tSpringFestival2020Nian_Reward[3327300][9]["RewardDelay"] = 1
	tSpringFestival2020Nian_Reward[3327300][9]["RewardTimeType"] = 4
	tSpringFestival2020Nian_Reward[3327300][9]["RewardData"] = 1
	tSpringFestival2020Nian_Reward[3327300][9]["FullIndex"] = 7
	-- 晶莹星陨石 - 5%
	tSpringFestival2020Nian_Reward[3327300][10] = {}
	tSpringFestival2020Nian_Reward[3327300][10]["RandomItemChanceType"] = 2
	tSpringFestival2020Nian_Reward[3327300][10]["ItemChance"] = 500
	tSpringFestival2020Nian_Reward[3327300][10]["RewardItem"] = {}
	tSpringFestival2020Nian_Reward[3327300][10]["RewardItem"][1] = {}
	tSpringFestival2020Nian_Reward[3327300][10]["RewardItem"][1]["Id"] = 3009002 -- 晶莹星陨石[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石
	tSpringFestival2020Nian_Reward[3327300][10]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的晶莹星陨石*1
	tSpringFestival2020Nian_Reward[3327300][10]["RewardEffect"] = {}
	tSpringFestival2020Nian_Reward[3327300][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Nian_Reward[3327300][10]["RewardEffect"]["Effect"] = "angelwing"
			-- 【stc（212,9）】1天（零点重置）1个
	tSpringFestival2020Nian_Reward[3327300][10]["EventType"] = 212
	tSpringFestival2020Nian_Reward[3327300][10]["DataType"] = 9
	tSpringFestival2020Nian_Reward[3327300][10]["RewardDelay"] = 1
	tSpringFestival2020Nian_Reward[3327300][10]["RewardTimeType"] = 4
	tSpringFestival2020Nian_Reward[3327300][10]["RewardData"] = 1
	tSpringFestival2020Nian_Reward[3327300][10]["FullIndex"] = 8
	-- 光效人物外套碎片 - 10%
	tSpringFestival2020Nian_Reward[3327300][11] = {}
	tSpringFestival2020Nian_Reward[3327300][11]["RandomItemChanceType"] = 2
	tSpringFestival2020Nian_Reward[3327300][11]["ItemChance"] = 1000
	tSpringFestival2020Nian_Reward[3327300][11]["RewardItem"] = {}
	tSpringFestival2020Nian_Reward[3327300][11]["RewardItem"][1] = {}
	tSpringFestival2020Nian_Reward[3327300][11]["RewardItem"][1]["Id"] = 3327313 --  【新年光效时装外套名】碎片[3327313] , 【表格】光效人物外套碎片
	tSpringFestival2020Nian_Reward[3327300][11]["RewardItem"][1]["Attr"] = "0 1" --  【新年光效时装外套名】碎片*1
	tSpringFestival2020Nian_Reward[3327300][11]["RewardEffect"] = {}
	tSpringFestival2020Nian_Reward[3327300][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Nian_Reward[3327300][11]["RewardEffect"]["Effect"] = "angelwing"
			-- 【stc（212,10）】
	tSpringFestival2020Nian_Reward[3327300][11]["EventType"] = 212
	tSpringFestival2020Nian_Reward[3327300][11]["DataType"] = 10
	tSpringFestival2020Nian_Reward[3327300][11]["RewardData"] = 5
	tSpringFestival2020Nian_Reward[3327300][11]["FullIndex"] = 7
	-- 光效坐骑外套碎片 - 10%
	tSpringFestival2020Nian_Reward[3327300][12] = {}
	tSpringFestival2020Nian_Reward[3327300][12]["RandomItemChanceType"] = 2
	tSpringFestival2020Nian_Reward[3327300][12]["ItemChance"] = 1000
	tSpringFestival2020Nian_Reward[3327300][12]["RewardItem"] = {}
	tSpringFestival2020Nian_Reward[3327300][12]["RewardItem"][1] = {}
	tSpringFestival2020Nian_Reward[3327300][12]["RewardItem"][1]["Id"] = 3327314 --  【新年光效坐骑外套名】碎片[3327314] , 【表格】光效坐骑外套碎片
	tSpringFestival2020Nian_Reward[3327300][12]["RewardItem"][1]["Attr"] = "0 1" --  【新年光效坐骑外套名】碎片*1
	tSpringFestival2020Nian_Reward[3327300][12]["RewardEffect"] = {}
	tSpringFestival2020Nian_Reward[3327300][12]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Nian_Reward[3327300][12]["RewardEffect"]["Effect"] = "angelwing"
			-- 【stc（212,11）】
	tSpringFestival2020Nian_Reward[3327300][12]["EventType"] = 212
	tSpringFestival2020Nian_Reward[3327300][12]["DataType"] = 11
	tSpringFestival2020Nian_Reward[3327300][12]["RewardData"] = 15
	tSpringFestival2020Nian_Reward[3327300][12]["FullIndex"] = 8

	tSpringFestival2020Nian_Reward["MonsterDrop"] = {}
	-- ===打怪掉落（本服）
	-- ===索引: tSpringFestival2020Nian_Reward["MonsterDrop"][1]
	tSpringFestival2020Nian_Reward["MonsterDrop"][1] = {}
	tSpringFestival2020Nian_Reward["MonsterDrop"][1]["ItemChanceSum"] = 10000
	tSpringFestival2020Nian_Reward["MonsterDrop"][1]["LogId"] = 12001798
	-- 年兽蛋（一阶） - 1%
	tSpringFestival2020Nian_Reward["MonsterDrop"][1][1] = {}
	tSpringFestival2020Nian_Reward["MonsterDrop"][1][1]["RandomItemChanceType"] = 2
	tSpringFestival2020Nian_Reward["MonsterDrop"][1][1]["ItemChance"] = 100
	tSpringFestival2020Nian_Reward["MonsterDrop"][1][1]["RewardItem"] = {}
	tSpringFestival2020Nian_Reward["MonsterDrop"][1][1]["RewardItem"][1] = {}
	tSpringFestival2020Nian_Reward["MonsterDrop"][1][1]["RewardItem"][1]["Id"] = 3600237 -- 年兽蛋（一阶）[3600237][属性:8][叠加:1000][金币:0], 【表格】年兽蛋（一阶）
	tSpringFestival2020Nian_Reward["MonsterDrop"][1][1]["RewardItem"][1]["Attr"] = "0 1" -- 年兽蛋（一阶）*1
			-- 【stc（213,12）】1天（零点重置）5个
	tSpringFestival2020Nian_Reward["MonsterDrop"][1][1]["EventType"] = 213
	tSpringFestival2020Nian_Reward["MonsterDrop"][1][1]["DataType"] = 12
	tSpringFestival2020Nian_Reward["MonsterDrop"][1][1]["RewardDelay"] = 1
	tSpringFestival2020Nian_Reward["MonsterDrop"][1][1]["RewardTimeType"] = 4
	tSpringFestival2020Nian_Reward["MonsterDrop"][1][1]["RewardData"] = 5
	tSpringFestival2020Nian_Reward["MonsterDrop"][1][1]["FullIndex"] = 2
	-- 无 - 99%
	tSpringFestival2020Nian_Reward["MonsterDrop"][1][2] = {}
	tSpringFestival2020Nian_Reward["MonsterDrop"][1][2]["RandomItemChanceType"] = 2
	tSpringFestival2020Nian_Reward["MonsterDrop"][1][2]["ItemChance"] = 9900


	tSpringFestival2020Nian_Reward["MonsterDrop"][2] = {}
	-- ===打怪掉落（本服）
	-- ===索引: tSpringFestival2020Nian_Reward["MonsterDrop"][2]
	tSpringFestival2020Nian_Reward["MonsterDrop"][2]["ItemChanceSum"] = 10000
	tSpringFestival2020Nian_Reward["MonsterDrop"][2]["LogId"] = 12001798
	-- 星纹石 - 2%
	tSpringFestival2020Nian_Reward["MonsterDrop"][2][1] = {}
	tSpringFestival2020Nian_Reward["MonsterDrop"][2][1]["RandomItemChanceType"] = 2
	tSpringFestival2020Nian_Reward["MonsterDrop"][2][1]["ItemChance"] = 200
	tSpringFestival2020Nian_Reward["MonsterDrop"][2][1]["RewardItem"] = {}
	tSpringFestival2020Nian_Reward["MonsterDrop"][2][1]["RewardItem"][1] = {}
	tSpringFestival2020Nian_Reward["MonsterDrop"][2][1]["RewardItem"][1]["Id"] = 3600238 -- 星纹石[3600238][属性:8][叠加:1000][金币:0], 【表格】星纹石
	tSpringFestival2020Nian_Reward["MonsterDrop"][2][1]["RewardItem"][1]["Attr"] = "0 1" -- 星纹石*1
			-- 【stc（213,13）】1天（零点重置）100个
	tSpringFestival2020Nian_Reward["MonsterDrop"][2][1]["EventType"] = 213
	tSpringFestival2020Nian_Reward["MonsterDrop"][2][1]["DataType"] = 13
	tSpringFestival2020Nian_Reward["MonsterDrop"][2][1]["RewardDelay"] = 1
	tSpringFestival2020Nian_Reward["MonsterDrop"][2][1]["RewardTimeType"] = 4
	tSpringFestival2020Nian_Reward["MonsterDrop"][2][1]["RewardData"] = 100
	tSpringFestival2020Nian_Reward["MonsterDrop"][2][1]["FullIndex"] = 2
	-- 无 - 98%
	tSpringFestival2020Nian_Reward["MonsterDrop"][2][2] = {}
	tSpringFestival2020Nian_Reward["MonsterDrop"][2][2]["RandomItemChanceType"] = 2
	tSpringFestival2020Nian_Reward["MonsterDrop"][2][2]["ItemChance"] = 9800


	tSpringFestival2020Nian_Reward["Sign"] = {}
	-- ===每日签到
	-- ===索引: tSpringFestival2020Nian_Reward["Sign"]
	tSpringFestival2020Nian_Reward["Sign"]["LogId"] = 12001798
	tSpringFestival2020Nian_Reward["Sign"]["RewardItem"] = {}
	tSpringFestival2020Nian_Reward["Sign"]["RewardItem"][1] = {}
	tSpringFestival2020Nian_Reward["Sign"]["RewardItem"][1]["Id"] = 3327298 -- 年兽蛋（三阶）[3327298][属性:8][叠加:1000][金币:0], 【表格】年兽蛋（三阶）（赠）
	tSpringFestival2020Nian_Reward["Sign"]["RewardItem"][1]["Attr"] = "0 1 3" -- 年兽蛋（三阶）（赠）*1
	-- tSpringFestival2020Nian_Reward["Sign"]["RewardItem"][2] = {}
	-- tSpringFestival2020Nian_Reward["Sign"]["RewardItem"][2]["Id"] = 3327373 -- 春节财神宝盒[3327298][属性:9][叠加:1000][金币:0], 【表格】春节财神宝盒
	-- tSpringFestival2020Nian_Reward["Sign"]["RewardItem"][2]["Attr"] = "0 1" -- 春节财神宝盒*1
	tSpringFestival2020Nian_Reward["Sign"]["EventType"] = 213
	tSpringFestival2020Nian_Reward["Sign"]["DataType"] = 94
	tSpringFestival2020Nian_Reward["Sign"]["RewardDelay"] = 1
	tSpringFestival2020Nian_Reward["Sign"]["RewardTimeType"] = 4


	tSpringFestival2020Nian_Reward["GuoBag"] = {}
	-- ===显著功勋礼包
	-- ===索引: tSpringFestival2020Nian_Reward["GuoBag"]
	tSpringFestival2020Nian_Reward["GuoBag"]["LogId"] = 12001798
	tSpringFestival2020Nian_Reward["GuoBag"]["RewardItem"] = {}
	tSpringFestival2020Nian_Reward["GuoBag"]["RewardItem"][1] = {}
	tSpringFestival2020Nian_Reward["GuoBag"]["RewardItem"][1]["Id"] = 3600237 -- 年兽蛋（一阶）[3600237][属性:8][叠加:1000][金币:0], 【表格】年兽蛋（一阶）（赠）
	tSpringFestival2020Nian_Reward["GuoBag"]["RewardItem"][1]["Attr"] = "0 10 3" -- 年兽蛋（一阶）（赠）*10
	tSpringFestival2020Nian_Reward["GuoBag"]["EventType"] = 213
	tSpringFestival2020Nian_Reward["GuoBag"]["DataType"] = 95
	tSpringFestival2020Nian_Reward["GuoBag"]["RewardDelay"] = 1
	tSpringFestival2020Nian_Reward["GuoBag"]["RewardTimeType"] = 4
	
	tSpringFestival2020Nian_Reward["Incubation"] = {}
	-- ===每日首次孵出优秀年兽
	-- ===索引: tSpringFestival2020Nian_Reward["Incubation"]
	tSpringFestival2020Nian_Reward["Incubation"]["LogId"] = 12001798
	tSpringFestival2020Nian_Reward["Incubation"]["RewardItem"] = {}
	tSpringFestival2020Nian_Reward["Incubation"]["RewardItem"][1] = {}
	tSpringFestival2020Nian_Reward["Incubation"]["RewardItem"][1]["Id"] = 3327287 -- 鼠年鸿运礼包[3327287][属性:9][叠加:1000][金币:0], 【表格】鼠年鸿运礼包
	tSpringFestival2020Nian_Reward["Incubation"]["RewardItem"][1]["Attr"] = "0 1" -- 鼠年鸿运礼包
	tSpringFestival2020Nian_Reward["Incubation"]["EventType"] = 214
	tSpringFestival2020Nian_Reward["Incubation"]["DataType"] = 18
	tSpringFestival2020Nian_Reward["Incubation"]["RewardDelay"] = 1
	tSpringFestival2020Nian_Reward["Incubation"]["RewardTimeType"] = 4
	
	
--------------------------------------------逻辑部分配置--------------------------------------------
--获取玩家掩码时间戳
function SpringFestival2020Nian_GetStcTimestampValue(nSpringFestival2020Nian_Index, nSpringFestival2020Nian_NowUserId)
	if tSpringFestival2020Nian_Stc[nSpringFestival2020Nian_Index] == nil then
		return 0
	end
	
	local nSpringFestival2020Nian_UserId = nSpringFestival2020Nian_NowUserId or Get_UserId()
	local nSpringFestival2020Nian_Event = tSpringFestival2020Nian_Stc[nSpringFestival2020Nian_Index]["Event"]
	local nSpringFestival2020Nian_Type = tSpringFestival2020Nian_Stc[nSpringFestival2020Nian_Index]["Type"]
	local nSpringFestival2020Nian_TimeType = tSpringFestival2020Nian_Stc[nSpringFestival2020Nian_Index]["TimeType"]
	local nSpringFestival2020Nian_Delay = tSpringFestival2020Nian_Stc[nSpringFestival2020Nian_Index]["Delay"]
	
	--是否清零
	if nSpringFestival2020Nian_TimeType ~= nil and nSpringFestival2020Nian_Delay ~= nil then
		Task_StcReset(nSpringFestival2020Nian_Event,nSpringFestival2020Nian_Type,nSpringFestival2020Nian_UserId,nSpringFestival2020Nian_TimeType,nSpringFestival2020Nian_Delay)
	end
	
	return Get_UserStcTimestampValue(nSpringFestival2020Nian_Event,nSpringFestival2020Nian_Type,nSpringFestival2020Nian_UserId)
end

--获取玩家掩码
function SpringFestival2020Nian_GetStcValue(nSpringFestival2020Nian_Index, nSpringFestival2020Nian_NowUserId)
	if tSpringFestival2020Nian_Stc[nSpringFestival2020Nian_Index] == nil then
		return 0
	end
	
	local nSpringFestival2020Nian_UserId = nSpringFestival2020Nian_NowUserId or Get_UserId()
	local nSpringFestival2020Nian_Event = tSpringFestival2020Nian_Stc[nSpringFestival2020Nian_Index]["Event"]
	local nSpringFestival2020Nian_Type = tSpringFestival2020Nian_Stc[nSpringFestival2020Nian_Index]["Type"]
	local nSpringFestival2020Nian_TimeType = tSpringFestival2020Nian_Stc[nSpringFestival2020Nian_Index]["TimeType"]
	local nSpringFestival2020Nian_Delay = tSpringFestival2020Nian_Stc[nSpringFestival2020Nian_Index]["Delay"]
	
	--是否清零
	if nSpringFestival2020Nian_TimeType ~= nil and nSpringFestival2020Nian_Delay ~= nil then
		Task_StcReset(nSpringFestival2020Nian_Event,nSpringFestival2020Nian_Type,nSpringFestival2020Nian_UserId,nSpringFestival2020Nian_TimeType,nSpringFestival2020Nian_Delay)
	end
	
	return Get_UserStatisticValue(nSpringFestival2020Nian_Event,nSpringFestival2020Nian_Type,nSpringFestival2020Nian_UserId)
end

--设置玩家掩码
function SpringFestival2020Nian_SetStcValue(nSpringFestival2020Nian_Index, sSpringFestival2020Nian_Mode, nSpringFestival2020Nian_Data, nSpringFestival2020Nian_NowUserId)
	if tSpringFestival2020Nian_Stc[nSpringFestival2020Nian_Index] == nil then
		return false
	end
	
	local nSpringFestival2020Nian_UserId = nSpringFestival2020Nian_NowUserId or Get_UserId()
	local nSpringFestival2020Nian_Event = tSpringFestival2020Nian_Stc[nSpringFestival2020Nian_Index]["Event"]
	local nSpringFestival2020Nian_Type = tSpringFestival2020Nian_Stc[nSpringFestival2020Nian_Index]["Type"]
	local nSpringFestival2020Nian_TimeType = tSpringFestival2020Nian_Stc[nSpringFestival2020Nian_Index]["TimeType"]
	local nSpringFestival2020Nian_Delay = tSpringFestival2020Nian_Stc[nSpringFestival2020Nian_Index]["Delay"]
	
	--是否清零
	if nSpringFestival2020Nian_TimeType ~= nil and nSpringFestival2020Nian_Delay ~= nil then
		Task_StcReset(nSpringFestival2020Nian_Event,nSpringFestival2020Nian_Type,nSpringFestival2020Nian_UserId,nSpringFestival2020Nian_TimeType,nSpringFestival2020Nian_Delay)
	end
	
	--设置掩码
	if sSpringFestival2020Nian_Mode == "Set" then
		if Task_SetStatistic(nSpringFestival2020Nian_Event,nSpringFestival2020Nian_Type,nSpringFestival2020Nian_Data,1,nSpringFestival2020Nian_UserId) then
			Task_SetStcTimestamp(nSpringFestival2020Nian_Event,nSpringFestival2020Nian_Type,0,nSpringFestival2020Nian_UserId)
			return true
		else
			return false
		end
	--增加掩码
	elseif sSpringFestival2020Nian_Mode == "Add" then
		if Task_AddStatistic(nSpringFestival2020Nian_Event,nSpringFestival2020Nian_Type,nSpringFestival2020Nian_Data,1,nSpringFestival2020Nian_UserId) then
			Task_SetStcTimestamp(nSpringFestival2020Nian_Event,nSpringFestival2020Nian_Type,0,nSpringFestival2020Nian_UserId)
			return true
		else
			return false
		end
	else
		return false
	end
end

--二进制掩码设置
function SpringFestival2020Nian_SetParseNumber(nSpringFestival2020Nian_Index, nSpringFestival2020Nian_Data, nSpringFestival2020Nian_NowUserId)
	local nSpringFestival2020Nian_UserId = nSpringFestival2020Nian_NowUserId or Get_UserId()
	local nSpringFestival2020Nian_Parse = tSpringFestival2020Nian_ParseNumber[nSpringFestival2020Nian_Data]
	
	local nSpringFestival2020Nian_Event = tSpringFestival2020Nian_Stc[nSpringFestival2020Nian_Index]["Event"]
	local nSpringFestival2020Nian_Type = tSpringFestival2020Nian_Stc[nSpringFestival2020Nian_Index]["Type"]
	local nSpringFestival2020Nian_Delay = tSpringFestival2020Nian_Stc[nSpringFestival2020Nian_Index]["Delay"]
	local nSpringFestival2020Nian_TimeType = tSpringFestival2020Nian_Stc[nSpringFestival2020Nian_Index]["TimeType"]
	
	--置零，打时间戳
	if nSpringFestival2020Nian_TimeType ~= nil and nSpringFestival2020Nian_Delay ~= nil then
		Task_StcReset(nSpringFestival2020Nian_Event,nSpringFestival2020Nian_Type,nSpringFestival2020Nian_UserId,nSpringFestival2020Nian_TimeType,nSpringFestival2020Nian_Delay)
	end
	
	if Task_AddStatistic(nSpringFestival2020Nian_Event,nSpringFestival2020Nian_Type,nSpringFestival2020Nian_Parse,1,nSpringFestival2020Nian_UserId) then
		Task_SetStcTimestamp(nSpringFestival2020Nian_Event,nSpringFestival2020Nian_Type,0,nSpringFestival2020Nian_UserId)
		return true
	else
		return false
	end
end

--二进制掩码判断
function SpringFestival2020Nian_IsGetParseNumber(nSpringFestival2020Nian_Index, nSpringFestival2020Nian_Data, nSpringFestival2020Nian_NowUserId)
	local nSpringFestival2020Nian_UserId = nSpringFestival2020Nian_NowUserId or Get_UserId()
	local nSpringFestival2020Nian_Parse = tSpringFestival2020Nian_ParseNumber[nSpringFestival2020Nian_Data]
	
	local nSpringFestival2020Nian_Event = tSpringFestival2020Nian_Stc[nSpringFestival2020Nian_Index]["Event"]
	local nSpringFestival2020Nian_Type = tSpringFestival2020Nian_Stc[nSpringFestival2020Nian_Index]["Type"]
	local nSpringFestival2020Nian_Delay = tSpringFestival2020Nian_Stc[nSpringFestival2020Nian_Index]["Delay"]
	local nSpringFestival2020Nian_TimeType = tSpringFestival2020Nian_Stc[nSpringFestival2020Nian_Index]["TimeType"]
	
	--置零，打时间戳
	if nSpringFestival2020Nian_TimeType ~= nil and nSpringFestival2020Nian_Delay ~= nil then
		Task_StcReset(nSpringFestival2020Nian_Event,nSpringFestival2020Nian_Type,nSpringFestival2020Nian_UserId,nSpringFestival2020Nian_TimeType,nSpringFestival2020Nian_Delay)
	end
	
	local nSpringFestival2020Nian_NowData = Get_UserStatisticValue(nSpringFestival2020Nian_Event,nSpringFestival2020Nian_Type,nSpringFestival2020Nian_UserId)
	
	if Sys_ParseNumbersContain(nSpringFestival2020Nian_Parse,nSpringFestival2020Nian_NowData) then
		return true
	else
		return false
	end
end

--主线任务检查
function SpringFestival2020Nian_ChkMainTask()
	local nSpringFestival2020Nian_UserId = Get_UserId()
	local nSpringFestival2020Nian_TaskId = tSpringFestival2020Nian_Cont["MainTask"]
	
	--身上没有任务
	if not Task_ChkTaskDetail(nSpringFestival2020Nian_TaskId,nSpringFestival2020Nian_UserId) then
		return false
	end
	
	--检查任务完成情况
	return Task_ChkTaskDetailValue(nSpringFestival2020Nian_TaskId,"CompleteFlag","==",1,nSpringFestival2020Nian_UserId)
end

--等级检查
function SpringFestival2020Nian_ChkLevel()
	local nSpringFestival2020Nian_UserId = Get_UserId()
	local nSpringFestival2020Nian_Level = tSpringFestival2020Nian_Cont["Level"]
	local nSpringFestival2020Nian_Metempsychosis = tSpringFestival2020Nian_Cont["Metempsychosis"]
	
	--等级判断
	if User_JudgeLevelAndMetempsychosis(nSpringFestival2020Nian_Level,nSpringFestival2020Nian_Metempsychosis,nSpringFestival2020Nian_UserId) then
		return true
	else
		return false
	end
end

--获得当前福气值
function SpringFestival2020Nian_GetFuQi(nSpringFestival2020Nian_NowUserId)
	local nSpringFestival2020Nian_UserId = nSpringFestival2020Nian_NowUserId or Get_UserId()
	
	--给新年福气
	return SpringFestival2020Nian_GetStcValue(11, nSpringFestival2020Nian_UserId)
end

--给福气光效
function SpringFestival2020Nian_FuQiEffect(nSpringFestival2020Nian_FuQi, nSpringFestival2020Nian_NowUserId)
	local nSpringFestival2020Nian_UserId = nSpringFestival2020Nian_NowUserId or Get_UserId()
	
	--获取坐标
	local nSpringFestival2020Nian_MapId = Get_UserMapId(nSpringFestival2020Nian_UserId)
	local nSpringFestival2020Nian_PosX = Get_UserPositionX(nSpringFestival2020Nian_UserId)
	local nSpringFestival2020Nian_PosY = Get_UserPositionY(nSpringFestival2020Nian_UserId)
	
	--播放福气底图
	Map_Effect(nSpringFestival2020Nian_MapId,nSpringFestival2020Nian_PosX - 3,nSpringFestival2020Nian_PosY + 3,tSpringFestival2020Nian_Cont["Effect"]["FuQi"])
	
	--千位数字
	local nSpringFestival2020Nian_QianWei = math.floor(nSpringFestival2020Nian_FuQi / 1000)
	--百位数字
	local nSpringFestival2020Nian_BaiWei = math.floor(nSpringFestival2020Nian_FuQi / 100) % 10
	--十位数字
	local nSpringFestival2020Nian_ShiWei = math.floor(nSpringFestival2020Nian_FuQi / 10) % 10
	--个位数字
	local nSpringFestival2020Nian_GeWei = nSpringFestival2020Nian_FuQi % 10
	
	--播放数字
	Map_Effect(nSpringFestival2020Nian_MapId,nSpringFestival2020Nian_PosX - 1,nSpringFestival2020Nian_PosY + 1,tSpringFestival2020Nian_Cont["Effect"]["Num"][nSpringFestival2020Nian_QianWei])
	Map_Effect(nSpringFestival2020Nian_MapId,nSpringFestival2020Nian_PosX,nSpringFestival2020Nian_PosY,tSpringFestival2020Nian_Cont["Effect"]["Num"][nSpringFestival2020Nian_BaiWei])
	Map_Effect(nSpringFestival2020Nian_MapId,nSpringFestival2020Nian_PosX + 1,nSpringFestival2020Nian_PosY - 1,tSpringFestival2020Nian_Cont["Effect"]["Num"][nSpringFestival2020Nian_ShiWei])
	Map_Effect(nSpringFestival2020Nian_MapId,nSpringFestival2020Nian_PosX + 2,nSpringFestival2020Nian_PosY - 2,tSpringFestival2020Nian_Cont["Effect"]["Num"][nSpringFestival2020Nian_GeWei])
	
end

--添加福气
function SpringFestival2020Nian_AddFuQi(nSpringFestival2020Nian_FuQi, nSpringFestival2020Nian_NowUserId)
	--活动时间判断
	if not Sys_ChkFullTime(tSpringFestival2020Nian_Time["ActivityTime"]) then
		return false
	end
	
	local nSpringFestival2020Nian_UserId = nSpringFestival2020Nian_NowUserId or Get_UserId()
	
	--给新年福气
	if SpringFestival2020Nian_SetStcValue(11, "Add", nSpringFestival2020Nian_FuQi, nSpringFestival2020Nian_UserId) then
		
		SpringFestivalMainLine2020_FormationCenter(nSpringFestival2020Nian_FuQi, nSpringFestival2020Nian_UserId)
		
		--个人总共的新年福气
		local nSpringFestival2020Nian_TotalFuQi = SpringFestival2020Nian_GetFuQi(nSpringFestival2020Nian_UserId)
		
		--全服福气值增加
		local nSpringFestival2020Nian_GlobalId = tSpringFestival2020Nian_Cont["GlobalId"]
		
		Sys_SetSynaGlobalData0(nSpringFestival2020Nian_GlobalId, Get_SysDynaGlobalData0(nSpringFestival2020Nian_GlobalId) + nSpringFestival2020Nian_FuQi)
		
		--更新排行榜
		RankingFunc_SetInfo(tSpringFestival2020Nian_Cont["MainNpcId"],nSpringFestival2020Nian_TotalFuQi,nSpringFestival2020Nian_UserId)
		
		--播放福气光效
		SpringFestival2020Nian_FuQiEffect(nSpringFestival2020Nian_FuQi, nSpringFestival2020Nian_NowUserId)
		
		return true
	else
		return false
	end
end

--主NPC对白判断
function SpringFestival2020Nian_MainChk(nSpringFestival2020Nian_NpcId)
	--活动时间判断
	if not Sys_ChkFullTime(tSpringFestival2020Nian_Time["ActivityTime"]) then
		return 0
	end
	
	--等级检查
	if not SpringFestival2020Nian_ChkLevel() then
		return 1
	end
	
	--主线任务检查
	if not SpringFestival2020Nian_ChkMainTask() then
		return 2
	end
	
	--是否还未使用孵化炉
	if not SpringFestival2020Nian_IsGetParseNumber(12, 4) then
		return 6
	end
	
	--是否集齐所有图鉴
	if not SpringFestival2020Nian_ChkNianMap() then
		return 3
	end
	
	--是否激活最强年兽
	if SpringFestival2020Nian_GetStcValue(2) <= 0 then
		return 4
	end
	
	--取出掩码内的饱腹值
	local nSpringFestival2020Nian_EatValue = SpringFestival2020Nian_GetStcValue(1)
	
	--换算方块值
	local nSpringFestival2020Nian_SquareNum = math.floor(nSpringFestival2020Nian_EatValue / tSpringFestival2020Nian_Cont["SquareOne"])
	--计算空的方块值
	local nSpringFestival2020Nian_EmptyNum = tSpringFestival2020Nian_Cont["SquareNum"] - nSpringFestival2020Nian_SquareNum
	
	local sSpringFestival2020Nian_Text = ""
	
	--方块对白填充
	if nSpringFestival2020Nian_SquareNum > 0 then
		for i = 1, nSpringFestival2020Nian_SquareNum do
			sSpringFestival2020Nian_Text = sSpringFestival2020Nian_Text.."■"
		end
	end
	
	--空白方块对白填充
	if nSpringFestival2020Nian_EmptyNum > 0 then
		for i = 1, nSpringFestival2020Nian_EmptyNum do
			sSpringFestival2020Nian_Text = sSpringFestival2020Nian_Text.."□"
		end
	end
	
	--显示进度
	local sSpringFestival2020Nian_EatText = ""
	
	if nSpringFestival2020Nian_EatValue < 10 then
		sSpringFestival2020Nian_EatText = "  "..nSpringFestival2020Nian_EatValue
	else
		sSpringFestival2020Nian_EatText = " "..nSpringFestival2020Nian_EatValue
	end
	
	tNpcGossip[nSpringFestival2020Nian_NpcId]["Text173"] = string.format(tSpringFestival2020Nian_Text[nSpringFestival2020Nian_NpcId]["Text173"], sSpringFestival2020Nian_Text, sSpringFestival2020Nian_EatText)
	
	--显示剩余喂养次数
	for k,v in pairs(tSpringFestival2020Nian_Cont["FoodIndex"]) do
		if v["StcIndex"] ~= nil then
			local nSpringFestival2020Nian_NowData = SpringFestival2020Nian_GetStcValue(v["StcIndex"])
			--剩余次数
			local nSpringFestival2020Nian_RemainData = tSpringFestival2020Nian_Stc[v["StcIndex"]]["Limit"] - nSpringFestival2020Nian_NowData
			
			tNpcGossip[nSpringFestival2020Nian_NpcId]["Option17"..k] = string.format(tSpringFestival2020Nian_Text[nSpringFestival2020Nian_NpcId]["Option17"..k], nSpringFestival2020Nian_RemainData)
		end
	end
	
	return 5
end

--进入幻界仙城
function SpringFestival2020Nian_IntoCross()
	--活动时间判断
	if not Sys_ChkFullTime(tSpringFestival2020Nian_Time["ActivityTime"]) then
		return
	end
	
	local nSpringFestival2020Nian_UserId = Get_UserId()
	
	--判断是否二转
	if not User_JudgeLevelAndMetempsychosis(15,2,nSpringFestival2020Nian_UserId) then
		Sys_MsgBox(tSpringFestival2020Nian_Text["MsgBox"]["NotInto"],nil,nil,nSpringFestival2020Nian_UserId)
		return
	end
	
	local nSpringFestival2020Nian_Index = 1
	
	if SpecialServer_ChkNoGiftServer() then
		nSpringFestival2020Nian_Index = 2
	end
	
	--判断是否在双龙城
	if Get_UserMapId(nSpringFestival2020Nian_UserId) ~= tSpringFestival2020Nian_Cont["BoundTrans"][nSpringFestival2020Nian_Index]["MapId"] then
		return
	end
	
	local nSpringFestival2020Nian_MapId = tSpringFestival2020Nian_Cont["BoundTrans"]["Into"]["MapId"]
	local nSpringFestival2020Nian_PosX = tSpringFestival2020Nian_Cont["BoundTrans"]["Into"]["PosX"]
	local nSpringFestival2020Nian_PosY = tSpringFestival2020Nian_Cont["BoundTrans"]["Into"]["PosY"]
	
	--传送
	if User_UserRandBoundTrans(nSpringFestival2020Nian_MapId,nSpringFestival2020Nian_PosX,nSpringFestival2020Nian_PosY,1,1,0,nSpringFestival2020Nian_UserId) then
		-- 记录记录点
		-- User_RecordPoint(nSpringFestival2020Nian_MapId, nSpringFestival2020Nian_PosX, nSpringFestival2020Nian_PosY)
		
		local sSpringFestival2020Nian_Func = "Sys_GotoSomeWhere</N>50</N>165</N>10601"
		local sSpringFestival2020Nian_Text = tSpringFestival2020Nian_Text["MsgBox"]["IntoCrossKill"]
		
		--判断是否已经出了引导图
		if SpringFestival2020Nian_GetStcValue(13, nSpringFestival2020Nian_UserId) <= 0 then
			--设置掩码
			SpringFestival2020Nian_SetStcValue(13, "Set", 1, nSpringFestival2020Nian_UserId)
			
			--出引导图
			local nSpringFestival2020Nian_TitleId = tSpringFestival2020Nian_Cont["TitleId"]
			
			User_NoviceTeaching(nSpringFestival2020Nian_TitleId, nSpringFestival2020Nian_UserId)
			
			sSpringFestival2020Nian_Func = "NpcPosition_PathFind</N>25813"
			sSpringFestival2020Nian_Text = tSpringFestival2020Nian_Text["MsgBox"]["IntoCross"]
		end
		
		Sys_MsgBox(sSpringFestival2020Nian_Text, sSpringFestival2020Nian_Func, nil, nSpringFestival2020Nian_UserId)
		User_TalkChannel2005(tSpringFestival2020Nian_Text["Channel2005"]["IntoCross"], nSpringFestival2020Nian_UserId)
		
	end
end

--增加饱腹值
function SpringFestival2020Nian_AddFoodValue(nSpringFestival2020Nian_FoodValue, nSpringFestival2020Nian_NowUserId)
	local nSpringFestival2020Nian_UserId = nSpringFestival2020Nian_NowUserId or Get_UserId()
	
	--当前饱腹值
	local nSpringFestival2020Nian_NowFoodValue = SpringFestival2020Nian_GetStcValue(1, nSpringFestival2020Nian_UserId)
	
	--是否达到饱腹值上限
	if nSpringFestival2020Nian_NowFoodValue + nSpringFestival2020Nian_FoodValue >= tSpringFestival2020Nian_Cont["TopFoodValue"] then
		--扣除上限饱腹值后剩余饱腹值
		local nSpringFestival2020Nian_RemainValue = nSpringFestival2020Nian_NowFoodValue + nSpringFestival2020Nian_FoodValue - tSpringFestival2020Nian_Cont["TopFoodValue"]
		
		--剩余饱腹值设置
		if SpringFestival2020Nian_SetStcValue(1, "Set", nSpringFestival2020Nian_RemainValue, nSpringFestival2020Nian_UserId) then
			local nSpringFestival2020Nian_ActionId = tSpringFestival2020Nian_Cont["FoodMail"]["ActionId"]
			local nSpringFestival2020Nian_ExistDay = tSpringFestival2020Nian_Cont["FoodMail"]["ExistDay"]
			local sSpringFestival2020Nian_Sender = tSpringFestival2020Nian_Text["FoodMail"]["Sender"]
			local sSpringFestival2020Nian_Title = tSpringFestival2020Nian_Text["FoodMail"]["Title"]
			local sSpringFestival2020Nian_Content = tSpringFestival2020Nian_Text["FoodMail"]["Content"]
			
			--邮件发奖
			Sys_SendMail(nSpringFestival2020Nian_UserId,0,0,nSpringFestival2020Nian_ActionId,0,nSpringFestival2020Nian_ExistDay,sSpringFestival2020Nian_Sender,sSpringFestival2020Nian_Title,sSpringFestival2020Nian_Content)
			
			--光效
			User_EffectAdd("self",tSpringFestival2020Nian_Cont["Effect"][4],nSpringFestival2020Nian_UserId)
			
			User_TalkChannel2005(tSpringFestival2020Nian_Text["Channel2005"]["EatFull"], nSpringFestival2020Nian_UserId)
			
			return true
		else
			return false
		end
		
	else
		--增加饱腹值
		return SpringFestival2020Nian_SetStcValue(1, "Add", nSpringFestival2020Nian_FoodValue, nSpringFestival2020Nian_UserId)
	end
end

--喂养年兽
function SpringFestival2020Nian_EatFood(nSpringFestival2020Nian_NowIndex, nSpringFestival2020Nian_Confirm)
	if not Sys_ChkFullTime(tSpringFestival2020Nian_Time["ActivityTime"]) then
		return
	end
	
	local nSpringFestival2020Nian_UserId = Get_UserId()
	
	--未激活最强年兽
	if SpringFestival2020Nian_GetStcValue(2, nSpringFestival2020Nian_UserId) <= 0 then
		return
	end
	
	local nSpringFestival2020Nian_NpcId = Get_NpcId()
	
	--当前食物索引
	local nSpringFestival2020Nian_Index = nSpringFestival2020Nian_NowIndex
	
	--是否需要二次确认
	if nSpringFestival2020Nian_Confirm ~= nil then
		--身上没有食物索引
		if tSpringFestival2020Nian_Record["FoodIndex"][nSpringFestival2020Nian_UserId] == nil then
			return
		end
		
		nSpringFestival2020Nian_Index = tSpringFestival2020Nian_Record["FoodIndex"][nSpringFestival2020Nian_UserId]
	else
		--保存选择的食物索引
		tSpringFestival2020Nian_Record["FoodIndex"][nSpringFestival2020Nian_UserId] = nSpringFestival2020Nian_Index
	end
	
	--判断是否已经达到喂养上限
	if tSpringFestival2020Nian_Cont["FoodIndex"][nSpringFestival2020Nian_Index]["StcIndex"] ~= nil then
		local nSpringFestival2020Nian_StcIndex = tSpringFestival2020Nian_Cont["FoodIndex"][nSpringFestival2020Nian_Index]["StcIndex"]
		
		--当前次数
		local nSpringFestival2020Nian_NowData = SpringFestival2020Nian_GetStcValue(nSpringFestival2020Nian_StcIndex, nSpringFestival2020Nian_UserId)
		
		--达到最大喂养次数
		if nSpringFestival2020Nian_NowData >= tSpringFestival2020Nian_Stc[nSpringFestival2020Nian_StcIndex]["Limit"] then
			Sys_MsgBox(string.format(tSpringFestival2020Nian_Text["MsgBox"]["EatFull"], tSpringFestival2020Nian_Text["Food"][nSpringFestival2020Nian_Index]),nil,nil,nSpringFestival2020Nian_UserId)
			return
		end
	end
	
	--条件判断
	local bSpringFestival2020Nian_Flag = true
	
	--检查银两
	if tSpringFestival2020Nian_Cont["FoodIndex"][nSpringFestival2020Nian_Index]["Money"] ~= nil then
		local nSpringFestival2020Nian_Money = tSpringFestival2020Nian_Cont["FoodIndex"][nSpringFestival2020Nian_Index]["Money"]
		
		--银两判断
		if not User_CanPutMoney2Bag(-nSpringFestival2020Nian_Money,nSpringFestival2020Nian_UserId) then
			bSpringFestival2020Nian_Flag = false
		end
	--检查赠点
	elseif tSpringFestival2020Nian_Cont["FoodIndex"][nSpringFestival2020Nian_Index]["EMoneyMono"] ~= nil then
		local nSpringFestival2020Nian_EMoneyMono = tSpringFestival2020Nian_Cont["FoodIndex"][nSpringFestival2020Nian_Index]["EMoneyMono"]
		
		--判断赠点
		if Get_UserMonoEMoney(nSpringFestival2020Nian_UserId) < nSpringFestival2020Nian_EMoneyMono then
			bSpringFestival2020Nian_Flag = false
		end
	--检查天石
	elseif tSpringFestival2020Nian_Cont["FoodIndex"][nSpringFestival2020Nian_Index]["EMoney"] ~= nil then
		local nSpringFestival2020Nian_EMoney = tSpringFestival2020Nian_Cont["FoodIndex"][nSpringFestival2020Nian_Index]["EMoney"]
		
		--判断天石
		if Get_UserEMoney(nSpringFestival2020Nian_UserId) < nSpringFestival2020Nian_EMoney then
			bSpringFestival2020Nian_Flag = false
		end
	--检查物品
	elseif tSpringFestival2020Nian_Cont["FoodIndex"][nSpringFestival2020Nian_Index]["ItemId"] ~= nil then
		local nSpringFestival2020Nian_ItemId = tSpringFestival2020Nian_Cont["FoodIndex"][nSpringFestival2020Nian_Index]["ItemId"]
		local nSpringFestival2020Nian_ItemNum = tSpringFestival2020Nian_Cont["FoodIndex"][nSpringFestival2020Nian_Index]["ItemNum"]
		
		if not Item_ChkMulItem(nSpringFestival2020Nian_ItemId,nSpringFestival2020Nian_ItemId,nSpringFestival2020Nian_ItemNum,nil,nil,nSpringFestival2020Nian_UserId) then
			bSpringFestival2020Nian_Flag = false
		end
	end
	
	--食物名称
	local sSpringFestival2020Nian_FoodName = tSpringFestival2020Nian_Text["Food"][nSpringFestival2020Nian_Index]
	
	--条件不满足
	if not bSpringFestival2020Nian_Flag then
		Sys_MsgBox(string.format(tSpringFestival2020Nian_Text["MsgBox"]["EatNoItem"], sSpringFestival2020Nian_FoodName),nil,nil,nSpringFestival2020Nian_UserId)
		return
	end
	
	--可以获得的饱腹值
	local nSpringFestival2020Nian_FoodValue = tSpringFestival2020Nian_Cont["FoodIndex"][nSpringFestival2020Nian_Index]["Value"]
	
	--是否需要二次确认
	if nSpringFestival2020Nian_Confirm == nil and not SpringFestival2020Nian_IsGetParseNumber(10, nSpringFestival2020Nian_Index, nSpringFestival2020Nian_UserId) then
		tNpcGossip[nSpringFestival2020Nian_NpcId]["Text221"] = string.format(tSpringFestival2020Nian_Text[nSpringFestival2020Nian_NpcId]["Text221"], sSpringFestival2020Nian_FoodName)
		tNpcGossip[nSpringFestival2020Nian_NpcId]["Text222"] = string.format(tSpringFestival2020Nian_Text[nSpringFestival2020Nian_NpcId]["Text222"], nSpringFestival2020Nian_FoodValue)
		
		LinkNpcGossipFunc_New(nSpringFestival2020Nian_NpcId, "2-2")
		return
	end
	
	--扣除银两
	if tSpringFestival2020Nian_Cont["FoodIndex"][nSpringFestival2020Nian_Index]["Money"] ~= nil then
		local nSpringFestival2020Nian_Money = tSpringFestival2020Nian_Cont["FoodIndex"][nSpringFestival2020Nian_Index]["Money"]
		
		if not User_AddMoneyNew(-nSpringFestival2020Nian_Money,tSpringFestival2020Nian_Log["LogId"],nSpringFestival2020Nian_UserId) then
			return
		end
		
		--操作log
		Sys_SaveActionFestivalLog(string.format(tSpringFestival2020Nian_Log["Eat"], 1, nSpringFestival2020Nian_Money),nSpringFestival2020Nian_UserId)
		
	--检查赠点
	elseif tSpringFestival2020Nian_Cont["FoodIndex"][nSpringFestival2020Nian_Index]["EMoneyMono"] ~= nil then
		local nSpringFestival2020Nian_EMoneyMono = tSpringFestival2020Nian_Cont["FoodIndex"][nSpringFestival2020Nian_Index]["EMoneyMono"]
		
		if not User_AddEMoneyMonoAndLog(-nSpringFestival2020Nian_EMoneyMono,tSpringFestival2020Nian_ELog["EatEMoneyMono"],nSpringFestival2020Nian_UserId) then
			return
		end
		
		--操作log
		Sys_SaveActionFestivalLog(string.format(tSpringFestival2020Nian_Log["Eat"], 3, nSpringFestival2020Nian_EMoneyMono),nSpringFestival2020Nian_UserId)
		
	--检查天石
	elseif tSpringFestival2020Nian_Cont["FoodIndex"][nSpringFestival2020Nian_Index]["EMoney"] ~= nil then
		local nSpringFestival2020Nian_EMoney = tSpringFestival2020Nian_Cont["FoodIndex"][nSpringFestival2020Nian_Index]["EMoney"]
		
		if not User_AddEMoneyAndLog(-nSpringFestival2020Nian_EMoney,tSpringFestival2020Nian_ELog["EatEMoney"],nSpringFestival2020Nian_UserId) then
			return
		end
		
		--增加全服福气
		SpringFestival2020Other_AddAdditionalFuQi(nSpringFestival2020Nian_EMoney)
		
		--操作log
		Sys_SaveActionFestivalLog(string.format(tSpringFestival2020Nian_Log["Eat"], 2, nSpringFestival2020Nian_EMoney),nSpringFestival2020Nian_UserId)
		
	--检查物品
	elseif tSpringFestival2020Nian_Cont["FoodIndex"][nSpringFestival2020Nian_Index]["ItemId"] ~= nil then
		local nSpringFestival2020Nian_ItemId = tSpringFestival2020Nian_Cont["FoodIndex"][nSpringFestival2020Nian_Index]["ItemId"]
		local nSpringFestival2020Nian_ItemNum = tSpringFestival2020Nian_Cont["FoodIndex"][nSpringFestival2020Nian_Index]["ItemNum"]
		
		if not Item_DelMulItem(nSpringFestival2020Nian_ItemId,nSpringFestival2020Nian_ItemId,nSpringFestival2020Nian_ItemNum,nil,nil,nSpringFestival2020Nian_UserId) then
			return
		end
		
		--操作log
		Sys_SaveActionFestivalLog(string.format(tSpringFestival2020Nian_Log["Eat"], nSpringFestival2020Nian_ItemId, nSpringFestival2020Nian_ItemNum),nSpringFestival2020Nian_UserId)
	else
		return
	end
	
	--喂养次数+1
	if tSpringFestival2020Nian_Cont["FoodIndex"][nSpringFestival2020Nian_Index]["StcIndex"] ~= nil then
		local nSpringFestival2020Nian_StcIndex = tSpringFestival2020Nian_Cont["FoodIndex"][nSpringFestival2020Nian_Index]["StcIndex"]
		
		if not SpringFestival2020Nian_SetStcValue(nSpringFestival2020Nian_StcIndex, "Add", 1, nSpringFestival2020Nian_UserId) then
			return
		end
	end
	
	--光效
	User_EffectAdd("self",tSpringFestival2020Nian_Cont["Effect"][2],nSpringFestival2020Nian_UserId)
	
	--增加饱腹值
	SpringFestival2020Nian_AddFoodValue(nSpringFestival2020Nian_FoodValue, nSpringFestival2020Nian_UserId)
	
	--新年福气计算
	local nSpringFestival2020Nian_FuQi = tSpringFestival2020Nian_Cont["FoodFuQi"][nSpringFestival2020Nian_Index]
	
	--给新年福气
	SpringFestival2020Nian_AddFuQi(nSpringFestival2020Nian_FuQi, nSpringFestival2020Nian_UserId)
	
	local sSpringFestival2020Nian_Func = "SpringFestival2020Nian_EggLinkMain"
	
	if SpringFestival2020Nian_IsGetParseNumber(10, nSpringFestival2020Nian_Index, nSpringFestival2020Nian_UserId) then
		sSpringFestival2020Nian_Func = "SpringFestival2020Nian_EatFood</N>0</N>1"
	end
	
	Sys_MsgBox(string.format(tSpringFestival2020Nian_Text["MsgBox"]["EatSucc"], nSpringFestival2020Nian_FuQi, nSpringFestival2020Nian_FoodValue),sSpringFestival2020Nian_Func,nil,nSpringFestival2020Nian_UserId)
end

--屏蔽二次确认
function SpringFestival2020Nian_EatConfirm(nSpringFestival2020Nian_Confirm)
	local nSpringFestival2020Nian_UserId = Get_UserId()
	local nSpringFestival2020Nian_NpcId = Get_NpcId()
	
	--身上没有食物索引
	if tSpringFestival2020Nian_Record["FoodIndex"][nSpringFestival2020Nian_UserId] == nil then
		return
	end
	
	local nSpringFestival2020Nian_Index = tSpringFestival2020Nian_Record["FoodIndex"][nSpringFestival2020Nian_UserId]
	--食物名称
	local sSpringFestival2020Nian_FoodName = tSpringFestival2020Nian_Text["Food"][nSpringFestival2020Nian_Index]
	
	--是否需要确认
	if nSpringFestival2020Nian_Confirm == nil then
		tNpcGossip[nSpringFestival2020Nian_NpcId]["Text321"] = string.format(tSpringFestival2020Nian_Text[nSpringFestival2020Nian_NpcId]["Text321"], sSpringFestival2020Nian_FoodName)
		
		LinkNpcGossipFunc_New(nSpringFestival2020Nian_NpcId, "3-2")
		return
	end
	
	--屏蔽二次确认
	SpringFestival2020Nian_Confirm(nSpringFestival2020Nian_Index)
end

--孵化炉对白判断
function SpringFestival2020Nian_StoveChk(nSpringFestival2020Nian_NpcId)
	--等级检查
	if not SpringFestival2020Nian_ChkLevel() then
		return 0
	end
	
	--主线任务检查
	if not SpringFestival2020Nian_ChkMainTask() then
		return 1
	end
	
	--开炉条件检查
	if nSpringFestival2020Nian_NpcId == 25794 then
		if not Sys_ChkFullTime(tSpringFestival2020Nian_Time["StoveTime"]) then
			return 6
		end
	elseif tSpringFestival2020Nian_Cont["Open"][nSpringFestival2020Nian_NpcId] ~= nil then
		local nSpringFestival2020Nian_StcIndex = tSpringFestival2020Nian_Cont["Open"][nSpringFestival2020Nian_NpcId]["StcIndex"]
		
		--判断开炉掩码
		if not SpringFestival2020Nian_IsGetParseNumber(12, nSpringFestival2020Nian_StcIndex) then
			return 6
		end
	end
	
	local nSpringFestival2020Nian_StcIndex = tSpringFestival2020Nian_Cont["StcIndex"][nSpringFestival2020Nian_NpcId]
	
	--判断孵化情况
	local bSpringFestival2020Nian_Flag, nSpringFestival2020Nian_RemainTime, nSpringFestival2020Nian_EggItem, nSpringFestival2020Nian_EggIndex = SpringFestival2020Nian_ChkEgg(nSpringFestival2020Nian_StcIndex)
	
	--未孵化
	if not bSpringFestival2020Nian_Flag then
		if nSpringFestival2020Nian_RemainTime == nil then
			return 2
		else
			return 3,nSpringFestival2020Nian_RemainTime, nSpringFestival2020Nian_EggItem
		end
	end
	
	--是否已经进入图鉴
	if SpringFestival2020Nian_IsGetParseNumber(3, nSpringFestival2020Nian_EggIndex) then
		return 4, nSpringFestival2020Nian_EggItem, nSpringFestival2020Nian_EggIndex
	else
		return 5, nSpringFestival2020Nian_EggItem, nSpringFestival2020Nian_EggIndex
	end
end

--年兽图鉴对白判断
function SpringFestival2020Nian_PicChk(nSpringFestival2020Nian_ItemId, nSpringFestival2020Nian_NowUserId)
	local nSpringFestival2020Nian_UserId = nSpringFestival2020Nian_NowUserId or Get_UserId()
	
	--活动时间判断
	if not Sys_ChkFullTime(tSpringFestival2020Nian_Time["ActivityTime"]) then
		if nSpringFestival2020Nian_ItemId ~= tSpringFestival2020Nian_Cont["MainNpcId"] then
			local nSpringFestival2020Nian_Count = Get_CountItemType(nSpringFestival2020Nian_ItemId,0,nil,nil,nSpringFestival2020Nian_UserId)
			if Item_ChkItem(nSpringFestival2020Nian_ItemId,nil,nil,nSpringFestival2020Nian_UserId) and Item_DelAllItemByType(nSpringFestival2020Nian_ItemId,nSpringFestival2020Nian_UserId) then
				Sys_SaveActionFestivalLog(string.format(tSpringFestival2020Nian_Log["DelItem"], nSpringFestival2020Nian_ItemId, nSpringFestival2020Nian_Count),nSpringFestival2020Nian_UserId)
				User_TalkChannel2005(tSpringFestival2020Nian_Text["Channel2005"]["OverTimePic"],nSpringFestival2020Nian_UserId)
			end
		end
		
		return
	end
	
	--判断是否已经完成图鉴收藏
	for i = 1, #tSpringFestival2020Nian_Text["NianName"] do
		local sSpringFestival2020Nian_NianName = ""
		
		--判断当前年兽是否激活
		if SpringFestival2020Nian_IsGetParseNumber(3, i, nSpringFestival2020Nian_UserId) then
			sSpringFestival2020Nian_NianName = string.format(tSpringFestival2020Nian_Text["Color"]["Have"], tSpringFestival2020Nian_Text["NianName"][i])
		else
			sSpringFestival2020Nian_NianName = string.format(tSpringFestival2020Nian_Text["Color"]["Not"], tSpringFestival2020Nian_Text["NianName"][i])
		end
		
		--判断是火云神狮还是图鉴
		if nSpringFestival2020Nian_ItemId == tSpringFestival2020Nian_Cont["MainNpcId"] then
			tNpcGossip[nSpringFestival2020Nian_ItemId]["Text24"..i] = string.format(tSpringFestival2020Nian_Text[nSpringFestival2020Nian_ItemId]["Text24"..i], sSpringFestival2020Nian_NianName)
		else
			tItem[nSpringFestival2020Nian_ItemId]["Text11"..i] = string.format(tSpringFestival2020Nian_Text[nSpringFestival2020Nian_ItemId]["Text11"..i], sSpringFestival2020Nian_NianName)
		end
	end
	
	--判断是火云神狮还是图鉴
	if nSpringFestival2020Nian_ItemId == tSpringFestival2020Nian_Cont["MainNpcId"] then
		LinkNpcGossipFunc_New(nSpringFestival2020Nian_ItemId,"2-4", nil, nil, nSpringFestival2020Nian_UserId)
	else
		LinkItemGossipFunc_New(nSpringFestival2020Nian_ItemId,"1-1", nil, nil, nSpringFestival2020Nian_UserId)
	end
end

--投入年兽蛋对白判断
function SpringFestival2020Nian_ChkInputEgg()
	--活动时间判断
	if not Sys_ChkFullTime(tSpringFestival2020Nian_Time["ActivityTime"]) then
		return
	end
	
	local nSpringFestival2020Nian_NpcId = Get_NpcId()
	local nSpringFestival2020Nian_UserId = Get_UserId()
	
	tNpcGossip[nSpringFestival2020Nian_NpcId]["tOption2-1"] = {}
	
	--检查背包的年兽蛋
	for k,v in pairs(tSpringFestival2020Nian_Cont["EggIndex"]) do
		if Item_ChkItem(k,nil,nil,nUserId) then
			table.insert(tNpcGossip[nSpringFestival2020Nian_NpcId]["tOption2-1"], v)
		end
	end
	
	--没有任何一阶的年兽蛋
	if next(tNpcGossip[nSpringFestival2020Nian_NpcId]["tOption2-1"]) == nil then
		LinkNpcGossipFunc_New(nSpringFestival2020Nian_NpcId, "2-4")
		return
	end
	
	LinkNpcGossipFunc_New(nSpringFestival2020Nian_NpcId, "2-1")
end

--投入年兽蛋
function SpringFestival2020Nian_InputEgg(nSpringFestival2020Nian_ItemId)
	--活动时间判断
	if not Sys_ChkFullTime(tSpringFestival2020Nian_Time["ActivityTime"]) then
		return
	end
	
	local nSpringFestival2020Nian_NpcId = Get_NpcId()
	local nSpringFestival2020Nian_UserId = Get_UserId()
	
	--没有年兽蛋
	if not Item_ChkItem(nSpringFestival2020Nian_ItemId,nil,nil,nSpringFestival2020Nian_UserId) then
		LinkNpcGossipFunc_New(nSpringFestival2020Nian_NpcId, "3-1")
		return
	end
	
	--删年兽蛋
	if not Item_DelItem(nSpringFestival2020Nian_ItemId,nil,nil,nSpringFestival2020Nian_UserId) then
		LinkNpcGossipFunc_New(nSpringFestival2020Nian_NpcId, "3-1")
		return
	end
	
	--当前孵化掩码索引
	local nSpringFestival2020Nian_StcIndex = tSpringFestival2020Nian_Cont["StcIndex"][nSpringFestival2020Nian_NpcId]
	
	--孵化掩码设置
	SpringFestival2020Nian_SetStcValue(nSpringFestival2020Nian_StcIndex, "Set", nSpringFestival2020Nian_ItemId * 100, nSpringFestival2020Nian_UserId)
	
	--投入log
	Sys_SaveActionFestivalLog(string.format(tSpringFestival2020Nian_Log["IntoEgg"], nSpringFestival2020Nian_ItemId, 1),nSpringFestival2020Nian_UserId)
	
	local nSpringFestival2020Nian_MapId = Get_NpcMapID(nSpringFestival2020Nian_NpcId)
	local nSpringFestival2020Nian_PosX = Get_NpcPositionX(nSpringFestival2020Nian_NpcId)
	local nSpringFestival2020Nian_PosY = Get_NpcPositionY(nSpringFestival2020Nian_NpcId)
	
	--光效
	Map_Effect(nSpringFestival2020Nian_MapId, nSpringFestival2020Nian_PosX, nSpringFestival2020Nian_PosY, tSpringFestival2020Nian_Cont["Effect"][3])
	
	--光效
	User_EffectAdd("self",tSpringFestival2020Nian_Cont["Effect"][7],nSpringFestival2020Nian_UserId)
	
	--年兽蛋名
	local sSpringFestival2020Nian_ItemName = tSpringFestival2020Nian_Text["Egg"][nSpringFestival2020Nian_ItemId]
	--孵化时间
	local nSpringFestival2020Nian_Time = tSpringFestival2020Nian_Cont["EggTime"][nSpringFestival2020Nian_ItemId]
	
	--提示
	Sys_MsgBox(string.format(tSpringFestival2020Nian_Text["MsgBox"]["EggSucc"], sSpringFestival2020Nian_ItemName, nSpringFestival2020Nian_Time),"SpringFestival2020Nian_EggLinkMain",nil,nSpringFestival2020Nian_UserId)
end

--链接至主对白
function SpringFestival2020Nian_EggLinkMain()
	LinkNpcGossipFunc_New(Get_NpcId(), "1")
end

--投入星纹石对白判断
function SpringFestival2020Nian_ChkSpeedEgg(nSpringFestival2020Nian_OneKey)
	--活动时间判断
	if not Sys_ChkFullTime(tSpringFestival2020Nian_Time["ActivityTime"]) then
		return
	end
	
	local nSpringFestival2020Nian_NpcId = Get_NpcId()
	local nSpringFestival2020Nian_UserId = Get_UserId()
	
	local nSpringFestival2020Nian_StcIndex = tSpringFestival2020Nian_Cont["StcIndex"][nSpringFestival2020Nian_NpcId]
	
	--当前孵化情况
	local bSpringFestival2020Nian_Flag, nSpringFestival2020Nian_RemainTime, nSpringFestival2020Nian_EggItem = SpringFestival2020Nian_ChkEgg(nSpringFestival2020Nian_StcIndex, nSpringFestival2020Nian_UserId)
	
	--已经孵化
	if bSpringFestival2020Nian_Flag then
		Sys_MsgBox(tSpringFestival2020Nian_Text["MsgBox"]["EggAddFail"],nil,nil,nSpringFestival2020Nian_UserId)
		return
	end
	
	--没有投入年兽蛋
	if nSpringFestival2020Nian_RemainTime == nil then
		return
	end
	
	--是否是一键孵化
	if nSpringFestival2020Nian_OneKey == nil then
		--计算星纹石数量
		local nSpringFestival2020Nian_StoneNum = math.ceil(nSpringFestival2020Nian_RemainTime / tSpringFestival2020Nian_Cont["StoneTime"])
		
		--保存星纹石数量
		tSpringFestival2020Nian_Record["Stone"][nSpringFestival2020Nian_UserId] = nSpringFestival2020Nian_StoneNum
		
		tNpcGossip[nSpringFestival2020Nian_NpcId]["Text221"] = string.format(tSpringFestival2020Nian_Text[nSpringFestival2020Nian_NpcId]["Text221"], nSpringFestival2020Nian_RemainTime, nSpringFestival2020Nian_StoneNum)
		tNpcGossip[nSpringFestival2020Nian_NpcId]["Option221"] = string.format(tSpringFestival2020Nian_Text[nSpringFestival2020Nian_NpcId]["Option221"], nSpringFestival2020Nian_StoneNum)
		
		LinkNpcGossipFunc_New(nSpringFestival2020Nian_NpcId, "2-2")
	else
		tNpcGossip[nSpringFestival2020Nian_NpcId]["Text231"] = string.format(tSpringFestival2020Nian_Text[nSpringFestival2020Nian_NpcId]["Text231"], tSpringFestival2020Nian_Text["Egg"][nSpringFestival2020Nian_EggItem])
		
		LinkNpcGossipFunc_New(nSpringFestival2020Nian_NpcId, "2-3")
	end
end

--投入星纹石
function SpringFestival2020Nian_SpeedEgg(nSpringFestival2020Nian_SpeedType)
	--活动时间判断
	if not Sys_ChkFullTime(tSpringFestival2020Nian_Time["ActivityTime"]) then
		return
	end
	
	local nSpringFestival2020Nian_NpcId = Get_NpcId()
	local nSpringFestival2020Nian_UserId = Get_UserId()
	
	local nSpringFestival2020Nian_StcIndex = tSpringFestival2020Nian_Cont["StcIndex"][nSpringFestival2020Nian_NpcId]
	
	--当前孵化情况
	local bSpringFestival2020Nian_Flag, nSpringFestival2020Nian_RemainTime, nSpringFestival2020Nian_EggItem = SpringFestival2020Nian_ChkEgg(nSpringFestival2020Nian_StcIndex, nSpringFestival2020Nian_UserId)
	
	--已经孵化
	if bSpringFestival2020Nian_Flag then
		Sys_MsgBox(tSpringFestival2020Nian_Text["MsgBox"]["EggAddFail"],nil,nil,nSpringFestival2020Nian_UserId)
		return
	end
	
	--没有投入年兽蛋
	if nSpringFestival2020Nian_RemainTime == nil then
		return
	end
	
	if tSpringFestival2020Nian_Record["Stone"][nSpringFestival2020Nian_UserId] == nil then
		--一键孵化不需要这个记录
		if nSpringFestival2020Nian_SpeedType ~= 2 then
			return
		end
	end
	
	--获取星纹石数量
	local nSpringFestival2020Nian_StoneNum = tSpringFestival2020Nian_Record["Stone"][nSpringFestival2020Nian_UserId]
	local nSpringFestival2020Nian_StoneId = tSpringFestival2020Nian_Cont["StoneId"]
	
	--加速类型判断
	if nSpringFestival2020Nian_SpeedType == nil then
		--判断是否屏蔽了二次确认
		if SpringFestival2020Nian_IsGetParseNumber(10, 7, nSpringFestival2020Nian_UserId) then
			
			--有屏蔽了在没有星纹石的情况下直接扣除天石
			if not Item_ChkMulItem(nSpringFestival2020Nian_StoneId,nSpringFestival2020Nian_StoneId,nSpringFestival2020Nian_StoneNum,nil,nil,nSpringFestival2020Nian_UserId) then
				nSpringFestival2020Nian_SpeedType = 1
			end
		end
	end
	
	--一键孵化
	if nSpringFestival2020Nian_SpeedType == 2 then
		--剩余免费一键孵化次数
		local nSpringFestival2020Nian_RemainFree = tSpringFestival2020Nian_Cont["FreeTimes"] - SpringFestival2020Nian_GetStcValue(9, nSpringFestival2020Nian_UserId)
		
		--达到上限
		if nSpringFestival2020Nian_RemainFree <= 0 then
			Sys_MsgBox(tSpringFestival2020Nian_Text["MsgBox"]["EggAddFreeFull"],nil,nil,nSpringFestival2020Nian_UserId)
			return
		end
		
		--消耗一次次数
		if not SpringFestival2020Nian_SetStcValue(9, "Add", 1, nSpringFestival2020Nian_UserId) then
			return
		end
		
		Sys_SaveActionFestivalLog(string.format(tSpringFestival2020Nian_Log["SpeedEgg"], 0, 0),nSpringFestival2020Nian_UserId)
		
	--天石孵化二次确认
	elseif nSpringFestival2020Nian_SpeedType == 1 then
		if Get_UserEMoney(nSpringFestival2020Nian_UserId) < nSpringFestival2020Nian_StoneNum then
			Sys_MsgBox(tSpringFestival2020Nian_Text["MsgBox"]["EggAddNoEmoney"],nil,nil,nSpringFestival2020Nian_UserId)
			return
		end
		
		--扣除天石
		if not User_AddEMoneyAndLog(-nSpringFestival2020Nian_StoneNum,tSpringFestival2020Nian_ELog["Speed"],nSpringFestival2020Nian_UserId) then
			Sys_MsgBox(tSpringFestival2020Nian_Text["MsgBox"]["EggAddNoEmoney"],nil,nil,nSpringFestival2020Nian_UserId)
			return
		end
		
		Sys_SaveActionFestivalLog(string.format(tSpringFestival2020Nian_Log["SpeedEgg"], 2, nSpringFestival2020Nian_StoneNum),nSpringFestival2020Nian_UserId)
	--道具孵化
	else
		--背包星纹石不足，跳转到天石对白
		if not Item_ChkMulItem(nSpringFestival2020Nian_StoneId,nSpringFestival2020Nian_StoneId,nSpringFestival2020Nian_StoneNum,nil,nil,nSpringFestival2020Nian_UserId) then
			
			tNpcGossip[nSpringFestival2020Nian_NpcId]["Text321"] = string.format(tSpringFestival2020Nian_Text[nSpringFestival2020Nian_NpcId]["Text321"], nSpringFestival2020Nian_StoneNum, nSpringFestival2020Nian_StoneNum)
			tNpcGossip[nSpringFestival2020Nian_NpcId]["Option321"] = string.format(tSpringFestival2020Nian_Text[nSpringFestival2020Nian_NpcId]["Option321"], nSpringFestival2020Nian_StoneNum)
			
			LinkNpcGossipFunc_New(nSpringFestival2020Nian_NpcId, "3-2")
			
			return
		end
		
		--删除星纹石
		if not Item_DelMulItem(nSpringFestival2020Nian_StoneId,nSpringFestival2020Nian_StoneId,nSpringFestival2020Nian_StoneNum,nil,nil,nSpringFestival2020Nian_UserId) then
			return
		end
		
		--log
		Sys_SaveActionFestivalLog(string.format(tSpringFestival2020Nian_Log["SpeedEgg"], nSpringFestival2020Nian_StoneId, nSpringFestival2020Nian_StoneNum),nSpringFestival2020Nian_UserId)
	end
	
	--执行孵化逻辑
	local nSpringFestival2020Nian_Result = SpringFestival2020Nian_Incubation(nSpringFestival2020Nian_EggItem, nSpringFestival2020Nian_UserId)
	
	local nSpringFestival2020Nian_Total = nSpringFestival2020Nian_EggItem * 100 + nSpringFestival2020Nian_Result
	
	--设置孵化掩码
	SpringFestival2020Nian_SetStcValue(nSpringFestival2020Nian_StcIndex, "Set", nSpringFestival2020Nian_Total, nSpringFestival2020Nian_UserId)
	
	--光效
	local nSpringFestival2020Nian_MapId = Get_NpcMapID(nSpringFestival2020Nian_NpcId)
	local nSpringFestival2020Nian_PosX = Get_NpcPositionX(nSpringFestival2020Nian_NpcId)
	local nSpringFestival2020Nian_PosY = Get_NpcPositionY(nSpringFestival2020Nian_NpcId)
	
	--光效
	Map_Effect(nSpringFestival2020Nian_MapId, nSpringFestival2020Nian_PosX, nSpringFestival2020Nian_PosY, tSpringFestival2020Nian_Cont["Effect"][3])
	
	--光效
	User_EffectAdd("self",tSpringFestival2020Nian_Cont["Effect"][8],nSpringFestival2020Nian_UserId)
	
	--提示
	Sys_MsgBox(tSpringFestival2020Nian_Text["MsgBox"]["EggEndSucc"],"SpringFestival2020Nian_EggLinkMain",nil,nSpringFestival2020Nian_UserId)
end

--屏蔽二次确认
function SpringFestival2020Nian_Confirm(nSpringFestival2020Nian_Index)
	--活动时间判断
	if not Sys_ChkFullTime(tSpringFestival2020Nian_Time["ActivityTime"]) then
		return
	end
	
	local nSpringFestival2020Nian_NpcId = Get_NpcId()
	local nSpringFestival2020Nian_UserId = Get_UserId()
	
	--设置二次确认掩码
	if not SpringFestival2020Nian_IsGetParseNumber(10, nSpringFestival2020Nian_Index, nSpringFestival2020Nian_UserId) then
		SpringFestival2020Nian_SetParseNumber(10, nSpringFestival2020Nian_Index, nSpringFestival2020Nian_UserId)
	end
	
	LinkNpcGossipFunc_New(nSpringFestival2020Nian_NpcId, "1")
end

--执行孵化逻辑
function SpringFestival2020Nian_Incubation(nSpringFestival2020Nian_EggItem, nSpringFestival2020Nian_NowUserId)
	local nSpringFestival2020Nian_UserId = nSpringFestival2020Nian_NowUserId or Get_UserId()
	
	if tSpringFestival2020Nian_Prob[nSpringFestival2020Nian_EggItem] == nil then
		return 0
	end
	
	--随机品质
	local flat,tSpringFestival2020Nian_Random= Probabil_RandomAward(tSpringFestival2020Nian_Prob[nSpringFestival2020Nian_EggItem],1)
	
	local nSpringFestival2020Nian_Quality = tSpringFestival2020Nian_Random[1]["tAward"][1]["Item_1"]
	
	--随机种类
	flat,tSpringFestival2020Nian_Random= Probabil_RandomAward(tSpringFestival2020Nian_Prob["Species"],1)
	
	local nSpringFestival2020Nian_Species = tSpringFestival2020Nian_Random[1]["tAward"][1]["Item_1"]
	
	--年兽编号
	local nSpringFestival2020Nian_Index = (nSpringFestival2020Nian_Quality - 1) * 5 + nSpringFestival2020Nian_Species
	
	--随机到最高品质
	if nSpringFestival2020Nian_Quality == 5 then
		local sSpringFestival2020Nian_UserName = Get_UserName(nSpringFestival2020Nian_UserId)
		local sSpringFestival2020Nian_NianName = tSpringFestival2020Nian_Text["NianName"][nSpringFestival2020Nian_Index]
		
		Sys_TalkBroadcast(string.format(tSpringFestival2020Nian_Text["BroadCast"]["Incubation"], sSpringFestival2020Nian_UserName, sSpringFestival2020Nian_NianName))
	end
	
	--设置初次孵化掩码
	if not SpringFestival2020Nian_IsGetParseNumber(12, 4, nSpringFestival2020Nian_UserId) then
		SpringFestival2020Nian_SetParseNumber(12, 4, nSpringFestival2020Nian_UserId)
	end
	
	--每日首次孵出优秀年兽
	if nSpringFestival2020Nian_Quality >= 3 then
		RewardTemplate_UseItemAndMsg(tSpringFestival2020Nian_Reward["Incubation"],nSpringFestival2020Nian_UserId)
	end
	
	--返回年兽编号
	return nSpringFestival2020Nian_Index
end

--判断年兽蛋是否已经孵化
function SpringFestival2020Nian_ChkEgg(nSpringFestival2020Nian_StcIndex, nSpringFestival2020Nian_NowUserId)
	local nSpringFestival2020Nian_UserId = nSpringFestival2020Nian_NowUserId or Get_UserId()
	
	local nSpringFestival2020Nian_StcData = SpringFestival2020Nian_GetStcValue(nSpringFestival2020Nian_StcIndex, nSpringFestival2020Nian_UserId)
	
	--判断是否已经放入
	if nSpringFestival2020Nian_StcData <= 0 then
		return false
	end
	
	--当前孵化的蛋
	local nSpringFestival2020Nian_EggItem = math.floor(nSpringFestival2020Nian_StcData / 100)
	--孵化后的年兽
	local nSpringFestival2020Nian_EggIndex = nSpringFestival2020Nian_StcData % 100
	
	--判断是否已经孵化
	if nSpringFestival2020Nian_EggIndex > 0 then
		return true, 0, nSpringFestival2020Nian_EggItem, nSpringFestival2020Nian_EggIndex
	else
		--当前时间和掩码时间差
		local nSpringFestival2020Nian_SubTime = os.time() - SpringFestival2020Nian_GetStcTimestampValue(nSpringFestival2020Nian_StcIndex, nSpringFestival2020Nian_UserId)
		--剩余时间
		local nSpringFestival2020Nian_RemainTime = tSpringFestival2020Nian_Cont["EggTime"][nSpringFestival2020Nian_EggItem] - nSpringFestival2020Nian_SubTime
		
		--是否已经孵化
		if nSpringFestival2020Nian_RemainTime <= 0 then
			--执行孵化逻辑
			local nSpringFestival2020Nian_Result = SpringFestival2020Nian_Incubation(nSpringFestival2020Nian_EggItem, nSpringFestival2020Nian_UserId)
			
			local nSpringFestival2020Nian_Total = nSpringFestival2020Nian_EggItem * 100 + nSpringFestival2020Nian_Result
			
			--设置孵化掩码
			SpringFestival2020Nian_SetStcValue(nSpringFestival2020Nian_StcIndex, "Set", nSpringFestival2020Nian_Total, nSpringFestival2020Nian_UserId)
			
			return true, 0, nSpringFestival2020Nian_EggItem, nSpringFestival2020Nian_Result
		else
			return false, nSpringFestival2020Nian_RemainTime, nSpringFestival2020Nian_EggItem
		end
	end
end

--判断当前地图是否存在BOSS
function SpringFestival2020Nian_ChkBossExist(nSpringFestival2020Nian_MapId)
	for k,v in pairs(tSpringFestival2020Nian_Cont["BossId"]) do
		if Get_SysTempData(1,nSpringFestival2020Nian_MapId,k) > 0 then
			return true
		end
	end
	
	return false
end

--刷新BOSS
function SpringFestival2020Nian_RefreshBoss(nSpringFestival2020Nian_MonsterId, nSpringFestival2020Nian_NowUserId)
	local nSpringFestival2020Nian_UserId = nSpringFestival2020Nian_NowUserId or Get_UserId()
	local nSpringFestival2020Nian_MapId = Get_UserMapId(nSpringFestival2020Nian_UserId)
	
	--判断当前地图是否有BOSS，有就不刷新
	if SpringFestival2020Nian_ChkBossExist(nSpringFestival2020Nian_MapId) then
		return false
	end
	
	local nSpringFestival2020Nian_PosX = tSpringFestival2020Nian_Cont["BossInfo"]["PosX"]
	local nSpringFestival2020Nian_PosY = tSpringFestival2020Nian_Cont["BossInfo"]["PosY"]
	local nSpringFestival2020Nian_GenId = tSpringFestival2020Nian_Cont["BossInfo"]["GenId"]
	
	return Monster_AddAndCount(nSpringFestival2020Nian_MapId,nSpringFestival2020Nian_PosX,nSpringFestival2020Nian_PosY,nSpringFestival2020Nian_GenId,nSpringFestival2020Nian_MonsterId)
end

--封印年兽
function SpringFestival2020Nian_IntoInstance(nSpringFestival2020Nian_Top)
	--活动时间判断
	if not Sys_ChkFullTime(tSpringFestival2020Nian_Time["ActivityTime"]) then
		return
	end
	
	local nSpringFestival2020Nian_UserId = Get_UserId()
	
	--组队人数
	local nSpringFestival2020Nian_TeamNum = Get_UserTeamNumbers(nSpringFestival2020Nian_UserId)
	
	--组队判断，组队不能进
	if nSpringFestival2020Nian_TeamNum > 1 then
		Sys_MsgBox(tSpringFestival2020Nian_Text["MsgBox"]["HaveTeam"],nil,nil,nSpringFestival2020Nian_UserId)
		return
	end
	
	local nSpringFestival2020Nian_Index = 1
	
	if SpecialServer_ChkNoGiftServer() then
		nSpringFestival2020Nian_Index = 2
	end
	
	--判断是否在双龙城
	if Get_UserMapId(nSpringFestival2020Nian_UserId) ~= tSpringFestival2020Nian_Cont["BoundTrans"][nSpringFestival2020Nian_Index]["MapId"] then
		Sys_MsgBox(tSpringFestival2020Nian_Text["MsgBox"]["IntoFail"][nSpringFestival2020Nian_Index],nil,nil,nSpringFestival2020Nian_UserId)
		return
	end
	
	--判断是不是闪蓝
	if Get_UserCrimeTime(nSpringFestival2020Nian_UserId) == 1 then
		Sys_MsgBox(tSpringFestival2020Nian_Text["MsgBox"]["IntoBlue"],nil,nil,nSpringFestival2020Nian_UserId)
		return
	end
	
	--判断是不是封印最强年兽
	if nSpringFestival2020Nian_Top ~= nil then
		if User_EnterInstance(tSpringFestival2020Nian_Cont["InstanceType"],0,0,0,nSpringFestival2020Nian_UserId) then
			
			--进入掩码设置
			SpringFestival2020Nian_SetStcValue(17, "Set", 0, nSpringFestival2020Nian_UserId)
			
			--刷新最强年兽
			SpringFestival2020Nian_RefreshBoss(nSpringFestival2020Nian_Top, nSpringFestival2020Nian_UserId)
			
			--传送光效
			User_ChgMapEffectAdd(nSpringFestival2020Nian_UserId)
			
			--光效
			User_EffectAdd("self",tSpringFestival2020Nian_Cont["Effect"][6],nSpringFestival2020Nian_UserId)
			
			Sys_MsgBox(tSpringFestival2020Nian_Text["MsgBox"]["IntoSucc"],nil,nil,nSpringFestival2020Nian_UserId)
			User_TalkChannel2005(tSpringFestival2020Nian_Text["Channel2005"]["IntoSucc"],nSpringFestival2020Nian_UserId)
		end
		
		return
	end
	
	local nSpringFestival2020Nian_NpcId = Get_NpcId()
	local nSpringFestival2020Nian_StcIndex = tSpringFestival2020Nian_Cont["StcIndex"][nSpringFestival2020Nian_NpcId] or 0
	
	--当前孵化情况
	local bSpringFestival2020Nian_Flag, nSpringFestival2020Nian_RemainTime, nSpringFestival2020Nian_EggItem, nSpringFestival2020Nian_EggIndex = SpringFestival2020Nian_ChkEgg(nSpringFestival2020Nian_StcIndex, nSpringFestival2020Nian_UserId)
	
	--未孵化
	if not bSpringFestival2020Nian_Flag then
		return
	end
	
	--进入副本
	if User_EnterInstance(tSpringFestival2020Nian_Cont["InstanceType"],0,0,0,nSpringFestival2020Nian_UserId) then
		local nSpringFestival2020Nian_MonsterId = nSpringFestival2020Nian_EggIndex + tSpringFestival2020Nian_Cont["NianSub"]
		
		--进入掩码设置
		SpringFestival2020Nian_SetStcValue(17, "Set", 0, nSpringFestival2020Nian_UserId)
		
		--刷新怪
		SpringFestival2020Nian_RefreshBoss(nSpringFestival2020Nian_MonsterId, nSpringFestival2020Nian_UserId)
		
		--保存炉子索引
		tSpringFestival2020Nian_Record["StoveIndex"][nSpringFestival2020Nian_UserId] = nSpringFestival2020Nian_StcIndex
		
		--传送光效
		User_ChgMapEffectAdd(nSpringFestival2020Nian_UserId)
		
		--光效
		User_EffectAdd("self",tSpringFestival2020Nian_Cont["Effect"][6],nSpringFestival2020Nian_UserId)
		
		Sys_MsgBox(tSpringFestival2020Nian_Text["MsgBox"]["EggInto"],nil,nil,nSpringFestival2020Nian_UserId)
		User_TalkChannel2005(tSpringFestival2020Nian_Text["Channel2005"]["EggInto"],nSpringFestival2020Nian_UserId)
	end
end

--小怪逻辑
function SpringFestival2020Nian_KillMonster(nSpringFestival2020Nian_MonsterId)
	--活动时间判断
	if not Sys_ChkFullTime(tSpringFestival2020Nian_Time["ActivityTime"]) then
		return
	end
	
	local nSpringFestival2020Nian_UserId = Get_UserId()
	
	--等级判断
	if not SpringFestival2020Nian_ChkLevel() then
		return
	end
	
	--掉落年兽蛋
	RewardTemplate_NewRandom(tSpringFestival2020Nian_Reward["MonsterDrop"],1,nSpringFestival2020Nian_UserId)
	--掉落星纹石
	RewardTemplate_NewRandom(tSpringFestival2020Nian_Reward["MonsterDrop"],2,nSpringFestival2020Nian_UserId)
end

--BOSS逻辑
function SpringFestival2020Nian_KillBoss(nSpringFestival2020Nian_MonsterId)
	local nSpringFestival2020Nian_UserId = Get_UserId()
	local nSpringFestival2020Nian_MapId = Get_UserMapId(nSpringFestival2020Nian_UserId)
	
	-- 怪物死亡
	Monster_Death(nSpringFestival2020Nian_MonsterId,nSpringFestival2020Nian_MapId)
	
	--是最强年兽
	if nSpringFestival2020Nian_MonsterId == 5885 then
		--设置最强年兽激活掩码
		if SpringFestival2020Nian_SetStcValue(2, "Set", 1, nSpringFestival2020Nian_UserId) then
			--获得跟随宠
			if not Magic_ChkType(tSpringFestival2020Nian_Cont["Magic"],nSpringFestival2020Nian_UserId) then
				Magic_Learn(tSpringFestival2020Nian_Cont["Magic"],nSpringFestival2020Nian_UserId)
			end
			
			--获得福气
			SpringFestival2020Nian_AddFuQi(tSpringFestival2020Nian_Cont["TopFuQi"], nSpringFestival2020Nian_UserId)
			
			--传送出去
			SpringFestival2020Nian_BoundTrans(nSpringFestival2020Nian_UserId)
			
			--光效
			User_EffectAdd("self",tSpringFestival2020Nian_Cont["Effect"][1],nSpringFestival2020Nian_UserId)
			
			Sys_MsgBox(string.format(tSpringFestival2020Nian_Text["MsgBox"]["ChallengeSucc"], tSpringFestival2020Nian_Cont["TopFuQi"]),nil,nil,nSpringFestival2020Nian_UserId)
			
			local sSpringFestival2020Nian_UserName = Get_UserName(nSpringFestival2020Nian_UserId)
			
			Sys_SystemBroadcast(string.format(tSpringFestival2020Nian_Text["BroadCast"]["ChallengeSucc"], sSpringFestival2020Nian_UserName))
		end
		
		return
	end
	
	--保存年兽索引
	local nSpringFestival2020Nian_NianIndex = nSpringFestival2020Nian_MonsterId - tSpringFestival2020Nian_Cont["NianSub"]
	
	tSpringFestival2020Nian_Record["NianIndex"][nSpringFestival2020Nian_UserId] = nSpringFestival2020Nian_NianIndex
	
	--年兽名
	local sSpringFestival2020Nian_MonsterName = tSpringFestival2020Nian_Text["NianName"][nSpringFestival2020Nian_NianIndex]
	
	local nSpringFestival2020Nian_PosX = Get_MonsterPosX()
	local nSpringFestival2020Nian_PosY = Get_MonsterPosY()
	local nSpringFestival2020Nian_Action = tSpringFestival2020Nian_Cont["DynNpc"]["Action"]
	local nSpringFestival2020Nian_Type = tSpringFestival2020Nian_Cont["DynNpc"]["Type"]
	local nSpringFestival2020Nian_Sort = tSpringFestival2020Nian_Cont["DynNpc"]["Sort"]
	local nSpringFestival2020Nian_LookFace = tSpringFestival2020Nian_Cont["DynNpcLookface"][nSpringFestival2020Nian_NianIndex]
	
	--刷新NPC
	Npc_CreateDynaNpc(sSpringFestival2020Nian_MonsterName, nSpringFestival2020Nian_Type ,nSpringFestival2020Nian_Sort ,nSpringFestival2020Nian_LookFace,0,0,nSpringFestival2020Nian_MapId, nSpringFestival2020Nian_PosX,nSpringFestival2020Nian_PosY,0,0,0,nSpringFestival2020Nian_Action)
	
	--提示
	Sys_MsgBox(string.format(tSpringFestival2020Nian_Text["MsgBox"]["EggChallengeSucc"], sSpringFestival2020Nian_MonsterName, sSpringFestival2020Nian_MonsterName),nil,nil,nSpringFestival2020Nian_UserId)
	User_TalkChannel2005(string.format(tSpringFestival2020Nian_Text["Channel2005"]["EggChallengeSucc"], sSpringFestival2020Nian_MonsterName),nSpringFestival2020Nian_UserId)
end

--动态NPC逻辑
function SpringFestival2020Nian_LinkNpc()
	local nSpringFestival2020Nian_UserId = Get_UserId()
	
	--读条
	local nSpringFestival2020Nian_Secs = tSpringFestival2020Nian_Cont["Explore"]["Secs"]
	local nSpringFestival2020Nian_ActionId = tSpringFestival2020Nian_Cont["Explore"]["ActionId"]
	local sSpringFestival2020Nian_Content = tSpringFestival2020Nian_Text["Explore"]
	local sSpringFestival2020Nian_Func = "SpringFestival2020Nian_ExploreSucc"
	
	User_SetExplore(nSpringFestival2020Nian_Secs,sSpringFestival2020Nian_Content,nSpringFestival2020Nian_ActionId,sSpringFestival2020Nian_Func,nil,nSpringFestival2020Nian_UserId)
end

--读条后逻辑
function SpringFestival2020Nian_ExploreSucc(nSpringFestival2020Nian_NowUserId)
	local nSpringFestival2020Nian_UserId = nSpringFestival2020Nian_NowUserId or Get_UserId()
	
	--没有年兽索引信息
	if tSpringFestival2020Nian_Record["NianIndex"][nSpringFestival2020Nian_UserId] == nil then
		return
	end
	
	--炉子索引信息
	local nSpringFestival2020Nian_StcIndex = tSpringFestival2020Nian_Record["StoveIndex"][nSpringFestival2020Nian_UserId]
	--年兽索引信息
	local nSpringFestival2020Nian_NianIndex = tSpringFestival2020Nian_Record["NianIndex"][nSpringFestival2020Nian_UserId]
	
	--判断是否是使用年兽灵魄封印
	if SpringFestival2020Nian_GetStcValue(17, nSpringFestival2020Nian_UserId) > 0 then
		--没有对应的索引
		if tSpringFestival2020Nian_Record["SoulIndex"][nSpringFestival2020Nian_UserId] == nil then
			return
		end
		
		--当前年兽索引
		local nSpringFestival2020Nian_Index = tSpringFestival2020Nian_Record["SoulIndex"][nSpringFestival2020Nian_UserId]
		--年兽灵魄
		local nSpringFestival2020Nian_ItemId = tSpringFestival2020Nian_Cont["SoulId"]
		--消耗的年兽灵魄数量
		local nSpringFestival2020Nian_SoulNum = tSpringFestival2020Nian_Cont["SoulNum"][nSpringFestival2020Nian_Index]
		
		--判断年兽灵魄数量是否充足
		if not Item_ChkMulItem(nSpringFestival2020Nian_ItemId,nSpringFestival2020Nian_ItemId,nSpringFestival2020Nian_SoulNum,nil,nil,nSpringFestival2020Nian_UserId) then
			Sys_MsgBox(tSpringFestival2020Nian_Text["MsgBox"]["NoSoulItem"],nil,nil,nSpringFestival2020Nian_UserId)
			return
		end
		
		--扣除年兽灵魄
		if not Item_DelMulItem(nSpringFestival2020Nian_ItemId,nSpringFestival2020Nian_ItemId,nSpringFestival2020Nian_SoulNum,nil,nil,nSpringFestival2020Nian_UserId) then
			Sys_MsgBox(tSpringFestival2020Nian_Text["MsgBox"]["NoSoulItem"],nil,nil,nSpringFestival2020Nian_UserId)
			return
		end
		
		Sys_SaveActionFestivalLog(string.format(tSpringFestival2020Nian_Log["SoulItem"], nSpringFestival2020Nian_ItemId, nSpringFestival2020Nian_SoulNum),nSpringFestival2020Nian_UserId)
	else
		tSpringFestival2020Nian_Record["NianIndex"][nSpringFestival2020Nian_UserId] = nil
		
		--炉子掩码清零
		SpringFestival2020Nian_SetStcValue(nSpringFestival2020Nian_StcIndex, "Set", 0, nSpringFestival2020Nian_UserId)
	end
	
	--激活图鉴
	if not SpringFestival2020Nian_IsGetParseNumber(3, nSpringFestival2020Nian_NianIndex, nSpringFestival2020Nian_UserId) then
		SpringFestival2020Nian_SetParseNumber(3, nSpringFestival2020Nian_NianIndex, nSpringFestival2020Nian_UserId)
	end
	
	--新年福气计算
	local nSpringFestival2020Nian_FuQi = tSpringFestival2020Nian_Cont["FuQi"][nSpringFestival2020Nian_NianIndex]
	
	--给新年福气
	SpringFestival2020Nian_AddFuQi(nSpringFestival2020Nian_FuQi, nSpringFestival2020Nian_UserId)
	
	--年兽名
	local sSpringFestival2020Nian_MonsterName = tSpringFestival2020Nian_Text["NianName"][nSpringFestival2020Nian_NianIndex]
	
	--传送出去
	SpringFestival2020Nian_BoundTrans(nSpringFestival2020Nian_UserId)
	
	local sSpringFestival2020Nian_Text = string.format(tSpringFestival2020Nian_Text["MsgBox"]["ActivateSucc"], sSpringFestival2020Nian_MonsterName, nSpringFestival2020Nian_FuQi)
	local sSpringFestival2020Nian_Func = nil
	
	--是否已经集齐所有图鉴
	if SpringFestival2020Nian_ChkNianMap(nSpringFestival2020Nian_UserId) then
		sSpringFestival2020Nian_Text = tSpringFestival2020Nian_Text["MsgBox"]["HaveAllNian"]
		sSpringFestival2020Nian_Func = "NpcPosition_PathFind</N>25792"
	end
	
	--光效
	User_EffectAdd("self",tSpringFestival2020Nian_Cont["Effect"][1],nSpringFestival2020Nian_UserId)
	
	Sys_MsgBox(sSpringFestival2020Nian_Text,sSpringFestival2020Nian_Func,nil,nSpringFestival2020Nian_UserId)
	
	if sSpringFestival2020Nian_Func == nil then
		local nSpringFestival2020Nian_ItemId = tSpringFestival2020Nian_Cont["ItemMapId"]
		
		--弹出物品对白
		if Item_ChkItem(nSpringFestival2020Nian_ItemId,nil,nil,nSpringFestival2020Nian_UserId) then
			SpringFestival2020Nian_PicChk(nSpringFestival2020Nian_ItemId, nSpringFestival2020Nian_UserId)
		end
	end
end

--判断图鉴是否已经集齐
function SpringFestival2020Nian_ChkNianMap(nSpringFestival2020Nian_NowUserId)
	local nSpringFestival2020Nian_UserId = nSpringFestival2020Nian_NowUserId or Get_UserId()
	
	--全部集齐标志
	local bSpringFestival2020Nian_Flag = true
	
	for i = 1, #tSpringFestival2020Nian_Text["NianName"] do
		if not SpringFestival2020Nian_IsGetParseNumber(3, i, nSpringFestival2020Nian_UserId) then
			bSpringFestival2020Nian_Flag = false
			break
		end
	end
	
	return bSpringFestival2020Nian_Flag
end

--一键封印
function SpringFestival2020Nian_OneKey()
	--活动时间判断
	if not Sys_ChkFullTime(tSpringFestival2020Nian_Time["ActivityTime"]) then
		return
	end
	
	local nSpringFestival2020Nian_UserId = Get_UserId()
	local nSpringFestival2020Nian_NpcId = Get_NpcId()
	local nSpringFestival2020Nian_StcIndex = tSpringFestival2020Nian_Cont["StcIndex"][nSpringFestival2020Nian_NpcId] or 0
	
	--当前孵化情况
	local bSpringFestival2020Nian_Flag, nSpringFestival2020Nian_RemainTime, nSpringFestival2020Nian_EggItem, nSpringFestival2020Nian_EggIndex = SpringFestival2020Nian_ChkEgg(nSpringFestival2020Nian_StcIndex, nSpringFestival2020Nian_UserId)
	
	--未孵化
	if not bSpringFestival2020Nian_Flag then
		return
	end
	
	--复制奖励表
	local tSpringFestival2020Nian_Award = CommonFunc_Copy(tSpringFestival2020Nian_Reward["OneKey"])
	
	--数量
	local nSpringFestival2020Nian_Num = tSpringFestival2020Nian_Cont["AwardNum"][nSpringFestival2020Nian_EggIndex]
	
	tSpringFestival2020Nian_Award["RewardItem"][1]["Attr"] = "0 "..nSpringFestival2020Nian_Num
	
	--背包空间判断
	local nSpringFestival2020Nian_Space = RewardTemplate_GetRewardSpace(tSpringFestival2020Nian_Award,nSpringFestival2020Nian_UserId)
	
	if nSpringFestival2020Nian_Space > 0 and (not User_CheckLeftSpace(nSpringFestival2020Nian_Space,nSpringFestival2020Nian_UserId)) then
		Sys_MsgBox(tSpringFestival2020Nian_Text["MsgBox"]["NoSpace"],nil,nil,nSpringFestival2020Nian_UserId)
		return
	end
	
	--新年福气
	-- local nSpringFestival2020Nian_FuQi = tSpringFestival2020Nian_Cont["FuQi"][nSpringFestival2020Nian_EggIndex]
	
	--炉子掩码清零
	if SpringFestival2020Nian_SetStcValue(nSpringFestival2020Nian_StcIndex, "Set", 0, nSpringFestival2020Nian_UserId) then
		--给奖励
		RewardTemplate_UseItemAndMsg(tSpringFestival2020Nian_Award,nSpringFestival2020Nian_UserId)
		
		--给新年福气
		-- SpringFestival2020Nian_AddFuQi(nSpringFestival2020Nian_FuQi, nSpringFestival2020Nian_UserId)
		
		Sys_MsgBox(string.format(tSpringFestival2020Nian_Text["MsgBox"]["EggSealSucc"], nSpringFestival2020Nian_Num),nil,nil,nSpringFestival2020Nian_UserId)
		User_TalkChannel2005(string.format(tSpringFestival2020Nian_Text["Channel2005"]["EggSealSucc"], nSpringFestival2020Nian_Num),nSpringFestival2020Nian_UserId)
	end
end

--开炉
function SpringFestival2020Nian_OpenStove(nSpringFestival2020Nian_Cost)
	local nSpringFestival2020Nian_UserId = Get_UserId()
	local nSpringFestival2020Nian_NpcId = Get_NpcId()
	
	--判断是否已经开炉
	local nSpringFestival2020Nian_StcIndex = tSpringFestival2020Nian_Cont["Open"][nSpringFestival2020Nian_NpcId]["StcIndex"]
		
	--已经开炉
	if SpringFestival2020Nian_IsGetParseNumber(12, nSpringFestival2020Nian_StcIndex, nSpringFestival2020Nian_UserId) then
		return
	end
	
	--是否花费银两、天石或者赠点开炉
	if nSpringFestival2020Nian_Cost == nil then
		local nSpringFestival2020Nian_ItemId = tSpringFestival2020Nian_Cont["Open"][nSpringFestival2020Nian_NpcId]["ItemId"]
		local nSpringFestival2020Nian_ItemNum = tSpringFestival2020Nian_Cont["Open"][nSpringFestival2020Nian_NpcId]["ItemNum"]
		
		--赤炎结晶不足
		if not Item_ChkMulItem(nSpringFestival2020Nian_ItemId,nSpringFestival2020Nian_ItemId,nSpringFestival2020Nian_ItemNum,nil,nil,nSpringFestival2020Nian_UserId) then
			LinkNpcGossipFunc_New(nSpringFestival2020Nian_NpcId, "2-5")
			return
		end
		
		--删除赤炎结晶
		if not Item_DelMulItem(nSpringFestival2020Nian_ItemId,nSpringFestival2020Nian_ItemId,nSpringFestival2020Nian_ItemNum,nil,nil,nSpringFestival2020Nian_UserId) then
			LinkNpcGossipFunc_New(nSpringFestival2020Nian_NpcId, "2-5")
			return
		end
		
		--操作log
		Sys_SaveActionFestivalLog(string.format(tSpringFestival2020Nian_Log["Open"], nSpringFestival2020Nian_ItemId, nSpringFestival2020Nian_ItemNum, nSpringFestival2020Nian_NpcId),nSpringFestival2020Nian_UserId)
	else
		--花费银两
		if tSpringFestival2020Nian_Cont["Open"][nSpringFestival2020Nian_NpcId]["Money"] ~= nil then
			local nSpringFestival2020Nian_Money = tSpringFestival2020Nian_Cont["Open"][nSpringFestival2020Nian_NpcId]["Money"]
			
			--银两判断
			if not User_CanPutMoney2Bag(-nSpringFestival2020Nian_Money,nSpringFestival2020Nian_UserId) then
				Sys_MsgBox(tSpringFestival2020Nian_Text["MsgBox"]["OpenNoMoney"],nil,nil,nSpringFestival2020Nian_UserId)
				return
			end
			
			--扣除银两
			if not User_AddMoneyNew(-nSpringFestival2020Nian_Money,tSpringFestival2020Nian_Log["LogId"],nSpringFestival2020Nian_UserId) then
				Sys_MsgBox(tSpringFestival2020Nian_Text["MsgBox"]["OpenNoMoney"],nil,nil,nSpringFestival2020Nian_UserId)
				return
			end
			
			--操作log
			Sys_SaveActionFestivalLog(string.format(tSpringFestival2020Nian_Log["Open"], 1, nSpringFestival2020Nian_Money, nSpringFestival2020Nian_NpcId),nSpringFestival2020Nian_UserId)
			
		--花费天石
		elseif tSpringFestival2020Nian_Cont["Open"][nSpringFestival2020Nian_NpcId]["EMoney"] ~= nil then
			local nSpringFestival2020Nian_EMoney = tSpringFestival2020Nian_Cont["Open"][nSpringFestival2020Nian_NpcId]["EMoney"]
			
			--判断天石
			if Get_UserEMoney(nSpringFestival2020Nian_UserId) < nSpringFestival2020Nian_EMoney then
				Sys_MsgBox(tSpringFestival2020Nian_Text["MsgBox"]["OpenNoEMoney"],nil,nil,nSpringFestival2020Nian_UserId)
				return
			end
			
			--扣除天石
			if not User_AddEMoneyAndLog(-nSpringFestival2020Nian_EMoney,tSpringFestival2020Nian_ELog["CostEMoney"],nSpringFestival2020Nian_UserId) then
				Sys_MsgBox(tSpringFestival2020Nian_Text["MsgBox"]["OpenNoEMoney"],nil,nil,nSpringFestival2020Nian_UserId)
				return
			end
			
			--操作log
			Sys_SaveActionFestivalLog(string.format(tSpringFestival2020Nian_Log["Open"], 2, nSpringFestival2020Nian_EMoney, nSpringFestival2020Nian_NpcId),nSpringFestival2020Nian_UserId)
			
		--花费赠点
		elseif tSpringFestival2020Nian_Cont["Open"][nSpringFestival2020Nian_NpcId]["EMoneyMono"] ~= nil then
			local nSpringFestival2020Nian_EMoneyMono = tSpringFestival2020Nian_Cont["Open"][nSpringFestival2020Nian_NpcId]["EMoneyMono"]
			
			--判断赠点
			if Get_UserMonoEMoney(nSpringFestival2020Nian_UserId) < nSpringFestival2020Nian_EMoneyMono then
				Sys_MsgBox(tSpringFestival2020Nian_Text["MsgBox"]["OpenNoEMoneyMono"],nil,nil,nSpringFestival2020Nian_UserId)
				return
			end
			
			--扣除赠点
			if not User_AddEMoneyMonoAndLog(-nSpringFestival2020Nian_EMoneyMono,tSpringFestival2020Nian_ELog["CostEMoneyMono"],nSpringFestival2020Nian_UserId) then
				Sys_MsgBox(tSpringFestival2020Nian_Text["MsgBox"]["OpenNoEMoneyMono"],nil,nil,nSpringFestival2020Nian_UserId)
				return
			end
			
			--操作log
			Sys_SaveActionFestivalLog(string.format(tSpringFestival2020Nian_Log["Open"], 3, nSpringFestival2020Nian_EMoneyMono, nSpringFestival2020Nian_NpcId),nSpringFestival2020Nian_UserId)
			
		else
			return
		end
	end
	
	--开炉
	SpringFestival2020Nian_SetParseNumber(12, nSpringFestival2020Nian_StcIndex, nSpringFestival2020Nian_UserId)
	
	--光效
	User_EffectAdd("self",tSpringFestival2020Nian_Cont["Effect"][5],nSpringFestival2020Nian_UserId)
	
	--提示
	Sys_MsgBox(tSpringFestival2020Nian_Text["MsgBox"]["OpenSucc"],"SpringFestival2020Nian_EggLinkMain",nil,nSpringFestival2020Nian_UserId)
end

--了解年兽蛋孵化情况
function SpringFestival2020Nian_PicInfo(nSpringFestival2020Nian_ItemId)
	if not Sys_ChkFullTime(tSpringFestival2020Nian_Time["ActivityTime"]) then
		return
	end
	
	local nSpringFestival2020Nian_UserId = Get_UserId()
	
	--孵化状态判断
	for i = 1, 5 do
		--当前孵化的蛋
		local sSpringFestival2020Nian_Egg = ""
		--剩余时间显示
		local sSpringFestival2020Nian_Time = ""
		
		--判断年兽蛋是否已经孵化
		local bSpringFestival2020Nian_Flag, nSpringFestival2020Nian_RemainTime, nSpringFestival2020Nian_EggItem = SpringFestival2020Nian_ChkEgg(i + 3, nSpringFestival2020Nian_UserId)
		
		if bSpringFestival2020Nian_Flag then
			sSpringFestival2020Nian_Egg = tSpringFestival2020Nian_Text["Egg"][nSpringFestival2020Nian_EggItem]
			sSpringFestival2020Nian_Time = tSpringFestival2020Nian_Text["EggResult"]["Already"]
		elseif nSpringFestival2020Nian_RemainTime ~= nil then
			sSpringFestival2020Nian_Egg = tSpringFestival2020Nian_Text["Egg"][nSpringFestival2020Nian_EggItem]
			sSpringFestival2020Nian_Time = string.format(tSpringFestival2020Nian_Text["EggResult"]["Time"], nSpringFestival2020Nian_RemainTime)
		else
			sSpringFestival2020Nian_Egg = tSpringFestival2020Nian_Text["Egg"]["Null"]
			sSpringFestival2020Nian_Time = tSpringFestival2020Nian_Text["EggResult"]["Null"]
		end
		
		--判断是火云神狮还是图鉴
		if nSpringFestival2020Nian_ItemId == tSpringFestival2020Nian_Cont["MainNpcId"] then
			tNpcGossip[nSpringFestival2020Nian_ItemId]["Text33"..i] = string.format(tSpringFestival2020Nian_Text[nSpringFestival2020Nian_ItemId]["Text33"..i], sSpringFestival2020Nian_Egg, sSpringFestival2020Nian_Time)
		else
			tItem[nSpringFestival2020Nian_ItemId]["Text21"..i] = string.format(tSpringFestival2020Nian_Text[nSpringFestival2020Nian_ItemId]["Text21"..i], sSpringFestival2020Nian_Egg, sSpringFestival2020Nian_Time)
		end
	end
	
	--判断是火云神狮还是图鉴
	if nSpringFestival2020Nian_ItemId == tSpringFestival2020Nian_Cont["MainNpcId"] then
		LinkNpcGossipFunc_New(nSpringFestival2020Nian_ItemId,"3-3")
	else
		LinkItemGossipFunc_New(nSpringFestival2020Nian_ItemId,"2-1")
	end
end

--查看封印年兽奖励
function SpringFestival2020Nian_ViewAward(nSpringFestival2020Nian_ItemId)
	if not Sys_ChkFullTime(tSpringFestival2020Nian_Time["ActivityTime"]) then
		return
	end
	
	local nSpringFestival2020Nian_UserId = Get_UserId()
	
	--是否已经集齐所有图鉴
	if SpringFestival2020Nian_ChkNianMap(nSpringFestival2020Nian_UserId) then
		--判断是火云神狮还是图鉴
		if nSpringFestival2020Nian_ItemId == tSpringFestival2020Nian_Cont["MainNpcId"] then
			tNpcGossip[nSpringFestival2020Nian_ItemId]["tOption3-4"] = {342,343,344}
		else
			tItem[nSpringFestival2020Nian_ItemId]["tOption2-2"] = {222,223,224}
		end
	else
		--判断是火云神狮还是图鉴
		if nSpringFestival2020Nian_ItemId == tSpringFestival2020Nian_Cont["MainNpcId"] then
			tNpcGossip[nSpringFestival2020Nian_ItemId]["tOption3-4"] = {341,343,344}
		else
			tItem[nSpringFestival2020Nian_ItemId]["tOption2-2"] = {221,223,224}
		end
	end
	
	--集齐数量
	local nSpringFestival2020Nian_NowNum = 0
	
	for i = 1, #tSpringFestival2020Nian_Text["NianName"] do
		if SpringFestival2020Nian_IsGetParseNumber(3, i, nSpringFestival2020Nian_UserId) then
			nSpringFestival2020Nian_NowNum = nSpringFestival2020Nian_NowNum + 1
		end
	end
	
	--未集齐数量
	local nSpringFestival2020Nian_NoNum = #tSpringFestival2020Nian_Text["NianName"] - nSpringFestival2020Nian_NowNum
	
	--判断是火云神狮还是图鉴
	if nSpringFestival2020Nian_ItemId == tSpringFestival2020Nian_Cont["MainNpcId"] then
		tNpcGossip[nSpringFestival2020Nian_ItemId]["Text3412"] = string.format(tSpringFestival2020Nian_Text[nSpringFestival2020Nian_ItemId]["Text3412"], nSpringFestival2020Nian_NowNum, nSpringFestival2020Nian_NoNum)
		
		LinkNpcGossipFunc_New(nSpringFestival2020Nian_ItemId,"3-4")
	else
		tItem[nSpringFestival2020Nian_ItemId]["Text2212"] = string.format(tSpringFestival2020Nian_Text[nSpringFestival2020Nian_ItemId]["Text2212"], nSpringFestival2020Nian_NowNum, nSpringFestival2020Nian_NoNum)
		
		LinkItemGossipFunc_New(nSpringFestival2020Nian_ItemId,"2-2")
	end
end

--打开网页
function SpringFestival2020Nian_OpenWeb()
	--活动时间判断
	if not Sys_ChkFullTime(tSpringFestival2020Nian_Time["ActivityTime"]) then
		return
	end
	
	User_SendWebPage(tSpringFestival2020Nian_Cont["Web"])
end

--年兽蛋使用
function SpringFestival2020Nian_EggUse(nSpringFestival2020Nian_ItemId)
	local nSpringFestival2020Nian_UserId = Get_UserId()
	
	--活动时间判断
	if not Sys_ChkFullTime(tSpringFestival2020Nian_Time["ActivityTime"]) then
		local nSpringFestival2020Nian_Count = Get_CountItemType(nSpringFestival2020Nian_ItemId,0,nil,nil,nSpringFestival2020Nian_UserId)
		if Item_ChkItem(nSpringFestival2020Nian_ItemId,nil,nil,nSpringFestival2020Nian_UserId) and Item_DelAllItemByType(nSpringFestival2020Nian_ItemId,nSpringFestival2020Nian_UserId) then
			Sys_SaveActionFestivalLog(string.format(tSpringFestival2020Nian_Log["DelItem"], nSpringFestival2020Nian_ItemId, nSpringFestival2020Nian_Count),nSpringFestival2020Nian_UserId)
			User_TalkChannel2005(tSpringFestival2020Nian_Text["Channel2005"]["OverTime"][nSpringFestival2020Nian_ItemId],nSpringFestival2020Nian_UserId)
		end
		
		return
	end
	
	local nSpringFestival2020Nian_NpcId = tSpringFestival2020Nian_Cont["StoveNpcId"]
	
	--赤炎结晶转化
	if nSpringFestival2020Nian_ItemId == 3600239 then
		local bSpringFestival2020Nian_Flag = true
		
		--判断是否全部开启
		-- for k,v in pairs(tSpringFestival2020Nian_Cont["Open"]) do
			-- if not SpringFestival2020Nian_IsGetParseNumber(12, v["StcIndex"]) then
				-- bSpringFestival2020Nian_Flag = false
				-- break
			-- end
		-- end
		
		--已经全部开启
		if SpringFestival2020Nian_IsGetParseNumber(12, 3) then
			local tSpringFestival2020Nian_Award = CommonFunc_Copy(tSpringFestival2020Nian_Reward[nSpringFestival2020Nian_ItemId])
			
			local nSpringFestival2020Nian_Count = Get_CountItemType(nSpringFestival2020Nian_ItemId,0,nil,nil,nSpringFestival2020Nian_UserId)
			
			tSpringFestival2020Nian_Award["DeleteItem"][1]["ItemNum"] = nSpringFestival2020Nian_Count
			tSpringFestival2020Nian_Award["RewardStrengthValue"]["Value"] = tSpringFestival2020Nian_Reward[nSpringFestival2020Nian_ItemId]["RewardStrengthValue"]["Value"] * nSpringFestival2020Nian_Count
			
			RewardTemplate_UseItemAndMsg(tSpringFestival2020Nian_Award,nSpringFestival2020Nian_UserId)
			return
		end
		
		nSpringFestival2020Nian_NpcId = tSpringFestival2020Nian_Cont["StoveOtherNpcId"]
	end
	
	NpcPosition_PathFind(nSpringFestival2020Nian_NpcId)
end

--年兽灵魄使用
function SpringFestival2020Nian_SoulUse(nSpringFestival2020Nian_ItemId)
	local nSpringFestival2020Nian_UserId = Get_UserId()
	
	--活动时间判断
	if not Sys_ChkFullTime(tSpringFestival2020Nian_Time["ActivityTime"]) then
		local nSpringFestival2020Nian_Count = Get_CountItemType(nSpringFestival2020Nian_ItemId,0,nil,nil,nSpringFestival2020Nian_UserId)
		if Item_ChkItem(nSpringFestival2020Nian_ItemId,nil,nil,nSpringFestival2020Nian_UserId) and Item_DelAllItemByType(nSpringFestival2020Nian_ItemId,nSpringFestival2020Nian_UserId) then
			Sys_SaveActionFestivalLog(string.format(tSpringFestival2020Nian_Log["DelItem"], nSpringFestival2020Nian_ItemId, nSpringFestival2020Nian_Count),nSpringFestival2020Nian_UserId)
			User_TalkChannel2005(tSpringFestival2020Nian_Text["Channel2005"]["OverTime"][nSpringFestival2020Nian_ItemId],nSpringFestival2020Nian_UserId)
		end
		
		return
	end
	
	--是否已经集齐所有图鉴
	if SpringFestival2020Nian_ChkNianMap(nSpringFestival2020Nian_UserId) then
		Sys_MsgBox(tSpringFestival2020Nian_Text["MsgBox"]["AllNian"],"NpcPosition_PathFind</N>25792",nil,nSpringFestival2020Nian_UserId)
		return
	end
	
	LinkItemGossipFunc_New(nSpringFestival2020Nian_ItemId, "1-1")
end

--年兽灵魄使用
function SpringFestival2020Nian_SoulChk(nSpringFestival2020Nian_ItemId, nSpringFestival2020Nian_Index)
	local nSpringFestival2020Nian_UserId = Get_UserId()
	
	--初始化选项
	tItem[nSpringFestival2020Nian_ItemId]["tOption2-"..nSpringFestival2020Nian_Index] = {}
	
	--判断是否已经封印
	for i = 1, 5 do
		--当前年兽索引
		local nSpringFestival2020Nian_NianIndex = (nSpringFestival2020Nian_Index - 1) * 5 + i
		
		if not SpringFestival2020Nian_IsGetParseNumber(3, nSpringFestival2020Nian_NianIndex, nSpringFestival2020Nian_UserId) then
			table.insert(tItem[nSpringFestival2020Nian_ItemId]["tOption2-"..nSpringFestival2020Nian_Index], 200 + i + nSpringFestival2020Nian_Index * 10)
		end
	end
	
	table.insert(tItem[nSpringFestival2020Nian_ItemId]["tOption2-"..nSpringFestival2020Nian_Index], 206 + nSpringFestival2020Nian_Index * 10)
	
	LinkItemGossipFunc_New(nSpringFestival2020Nian_ItemId, "2-"..nSpringFestival2020Nian_Index)
end

--选择年兽
function SpringFestival2020Nian_SoulUseSeal(nSpringFestival2020Nian_ItemId, nSpringFestival2020Nian_Index)
	if not Sys_ChkFullTime(tSpringFestival2020Nian_Time["ActivityTime"]) then
		return
	end
	
	local nSpringFestival2020Nian_UserId = Get_UserId()
	
	--保存选择的封印年兽索引
	tSpringFestival2020Nian_Record["SoulIndex"][nSpringFestival2020Nian_UserId] = nSpringFestival2020Nian_Index
	
	--消耗的年兽灵魄数量
	local nSpringFestival2020Nian_SoulNum = tSpringFestival2020Nian_Cont["SoulNum"][nSpringFestival2020Nian_Index]
	--年兽名
	local sSpringFestival2020Nian_Name = tSpringFestival2020Nian_Text["NianName"][nSpringFestival2020Nian_Index]
	
	--判断年兽灵魄数量是否充足
	if not Item_ChkMulItem(nSpringFestival2020Nian_ItemId,nSpringFestival2020Nian_ItemId,nSpringFestival2020Nian_SoulNum,nil,nil,nSpringFestival2020Nian_UserId) then
		Sys_MsgBox(tSpringFestival2020Nian_Text["MsgBox"]["NoSoulItem"],nil,nil,nSpringFestival2020Nian_UserId)
		return
	end
	
	--判断是否已封印
	if SpringFestival2020Nian_IsGetParseNumber(3, nSpringFestival2020Nian_Index, nSpringFestival2020Nian_UserId) then
		tItem[nSpringFestival2020Nian_ItemId]["Text313"] = string.format(tSpringFestival2020Nian_Text[nSpringFestival2020Nian_ItemId]["Text313"], tSpringFestival2020Nian_Cont["AwardNum"][nSpringFestival2020Nian_Index])
		tItem[nSpringFestival2020Nian_ItemId]["Text314"] = string.format(tSpringFestival2020Nian_Text[nSpringFestival2020Nian_ItemId]["Text314"], nSpringFestival2020Nian_SoulNum)
		
		LinkItemGossipFunc_New(nSpringFestival2020Nian_ItemId, "3-1")
	else
		--获取品质
		local nSpringFestival2020Nian_Quality = math.floor((nSpringFestival2020Nian_Index - 1) / 5) + 1
		
		tItem[nSpringFestival2020Nian_ItemId]["Text321"] = string.format(tSpringFestival2020Nian_Text[nSpringFestival2020Nian_ItemId]["Text321"], tSpringFestival2020Nian_Text["NianQuality"][nSpringFestival2020Nian_Quality], sSpringFestival2020Nian_Name)
		tItem[nSpringFestival2020Nian_ItemId]["Text323"] = string.format(tSpringFestival2020Nian_Text[nSpringFestival2020Nian_ItemId]["Text323"], tSpringFestival2020Nian_Text["NianNameTips"][nSpringFestival2020Nian_Index][1])
		tItem[nSpringFestival2020Nian_ItemId]["Text324"] = string.format(tSpringFestival2020Nian_Text[nSpringFestival2020Nian_ItemId]["Text324"], tSpringFestival2020Nian_Text["NianNameTips"][nSpringFestival2020Nian_Index][2])
		tItem[nSpringFestival2020Nian_ItemId]["Text326"] = string.format(tSpringFestival2020Nian_Text[nSpringFestival2020Nian_ItemId]["Text326"], tSpringFestival2020Nian_Cont["FuQi"][nSpringFestival2020Nian_Index])
		tItem[nSpringFestival2020Nian_ItemId]["Text328"] = string.format(tSpringFestival2020Nian_Text[nSpringFestival2020Nian_ItemId]["Text328"], nSpringFestival2020Nian_SoulNum, sSpringFestival2020Nian_Name)
		tItem[nSpringFestival2020Nian_ItemId]["Option321"] = string.format(tSpringFestival2020Nian_Text[nSpringFestival2020Nian_ItemId]["Option321"], sSpringFestival2020Nian_Name)
		
		LinkItemGossipFunc_New(nSpringFestival2020Nian_ItemId, "3-2")
	end
end

--封印年兽
function SpringFestival2020Nian_SoulUseSealConfirm(nSpringFestival2020Nian_ItemId, nSpringFestival2020Nian_Flag)
	--活动时间判断
	if not Sys_ChkFullTime(tSpringFestival2020Nian_Time["ActivityTime"]) then
		return
	end
	
	local nSpringFestival2020Nian_UserId = Get_UserId()
	
	local nSpringFestival2020Nian_Index = 1
	
	if SpecialServer_ChkNoGiftServer() then
		nSpringFestival2020Nian_Index = 2
	end
	
	--判断是否在双龙城
	if nSpringFestival2020Nian_Flag ~= nil then
		if Get_UserMapId(nSpringFestival2020Nian_UserId) ~= tSpringFestival2020Nian_Cont["BoundTrans"][nSpringFestival2020Nian_Index]["MapId"] then
			Sys_MsgBox(tSpringFestival2020Nian_Text["MsgBox"]["IntoFail"][nSpringFestival2020Nian_Index],nil,nil,nSpringFestival2020Nian_UserId)
			return
		end
	end
	
	--没有选择的封印年兽索引信息
	if tSpringFestival2020Nian_Record["SoulIndex"][nSpringFestival2020Nian_UserId] == nil then
		return
	end
	
	local nSpringFestival2020Nian_Index = tSpringFestival2020Nian_Record["SoulIndex"][nSpringFestival2020Nian_UserId]
	--消耗的年兽灵魄数量
	local nSpringFestival2020Nian_SoulNum = tSpringFestival2020Nian_Cont["SoulNum"][nSpringFestival2020Nian_Index]
	
	--复制奖励表
	local tSpringFestival2020Nian_Award = CommonFunc_Copy(tSpringFestival2020Nian_Reward["OneKey"])
	
	--一键封印可获得的年兽灵魄数量
	local nSpringFestival2020Nian_Num = tSpringFestival2020Nian_Cont["AwardNum"][nSpringFestival2020Nian_Index]
	
	tSpringFestival2020Nian_Award["RewardItem"][1]["Attr"] = "0 "..nSpringFestival2020Nian_Num
	
	--判断是否是一键封印
	if nSpringFestival2020Nian_Flag == nil then
		--背包空间判断
		local nSpringFestival2020Nian_Space = RewardTemplate_GetRewardSpace(tSpringFestival2020Nian_Award,nSpringFestival2020Nian_UserId)
		
		if nSpringFestival2020Nian_Space > 0 and (not User_CheckLeftSpace(nSpringFestival2020Nian_Space,nSpringFestival2020Nian_UserId)) then
			Sys_MsgBox(tSpringFestival2020Nian_Text["MsgBox"]["NoSpace"],nil,nil,nSpringFestival2020Nian_UserId)
			return
		end
	else
		--组队人数
		local nSpringFestival2020Nian_TeamNum = Get_UserTeamNumbers(nSpringFestival2020Nian_UserId)
		
		--组队判断，组队不能进
		if nSpringFestival2020Nian_TeamNum > 1 then
			Sys_MsgBox(tSpringFestival2020Nian_Text["MsgBox"]["HaveTeam"],nil,nil,nSpringFestival2020Nian_UserId)
			return
		end
		
		--判断是不是闪蓝
		if Get_UserCrimeTime(nSpringFestival2020Nian_UserId) == 1 then
			Sys_MsgBox(tSpringFestival2020Nian_Text["MsgBox"]["IntoBlue"],nil,nil,nSpringFestival2020Nian_UserId)
			return
		end
	end
	
	--判断年兽灵魄数量是否充足
	if not Item_ChkMulItem(nSpringFestival2020Nian_ItemId,nSpringFestival2020Nian_ItemId,nSpringFestival2020Nian_SoulNum,nil,nil,nSpringFestival2020Nian_UserId) then
		Sys_MsgBox(tSpringFestival2020Nian_Text["MsgBox"]["NoSoulItem"],nil,nil,nSpringFestival2020Nian_UserId)
		return
	end
	
	if nSpringFestival2020Nian_Flag == nil then
		--一键封印需要扣除年兽灵魄
		if not Item_DelMulItem(nSpringFestival2020Nian_ItemId,nSpringFestival2020Nian_ItemId,nSpringFestival2020Nian_SoulNum,nil,nil,nSpringFestival2020Nian_UserId) then
			Sys_MsgBox(tSpringFestival2020Nian_Text["MsgBox"]["NoSoulItem"],nil,nil,nSpringFestival2020Nian_UserId)
			return
		end
		
		Sys_SaveActionFestivalLog(string.format(tSpringFestival2020Nian_Log["SoulItem"], nSpringFestival2020Nian_ItemId, nSpringFestival2020Nian_SoulNum),nSpringFestival2020Nian_UserId)
		
		--新年福气
		-- local nSpringFestival2020Nian_FuQi = tSpringFestival2020Nian_Cont["FuQi"][nSpringFestival2020Nian_Index]
		
		--给奖励
		RewardTemplate_UseItemAndMsg(tSpringFestival2020Nian_Award,nSpringFestival2020Nian_UserId)
		
		--给新年福气
		-- SpringFestival2020Nian_AddFuQi(nSpringFestival2020Nian_FuQi, nSpringFestival2020Nian_UserId)
		
		Sys_MsgBox(string.format(tSpringFestival2020Nian_Text["MsgBox"]["EggSealSucc"], nSpringFestival2020Nian_Num),nil,nil,nSpringFestival2020Nian_UserId)
		User_TalkChannel2005(string.format(tSpringFestival2020Nian_Text["Channel2005"]["EggSealSucc"], nSpringFestival2020Nian_Num),nSpringFestival2020Nian_UserId)
	else
		--进入副本
		if User_EnterInstance(tSpringFestival2020Nian_Cont["InstanceType"],0,0,0,nSpringFestival2020Nian_UserId) then
			local nSpringFestival2020Nian_MonsterId = nSpringFestival2020Nian_Index + tSpringFestival2020Nian_Cont["NianSub"]
			
			--进入掩码设置
			SpringFestival2020Nian_SetStcValue(17, "Set", 1, nSpringFestival2020Nian_UserId)
			
			--刷新怪
			SpringFestival2020Nian_RefreshBoss(nSpringFestival2020Nian_MonsterId, nSpringFestival2020Nian_UserId)
			
			--传送光效
			User_ChgMapEffectAdd(nSpringFestival2020Nian_UserId)
			
			--光效
			User_EffectAdd("self",tSpringFestival2020Nian_Cont["Effect"][6],nSpringFestival2020Nian_UserId)
			
			Sys_MsgBox(tSpringFestival2020Nian_Text["MsgBox"]["EggInto"],nil,nil,nSpringFestival2020Nian_UserId)
			User_TalkChannel2005(tSpringFestival2020Nian_Text["Channel2005"]["EggInto"],nSpringFestival2020Nian_UserId)
		end
	end
end

--传送
function SpringFestival2020Nian_BoundTrans(nSpringFestival2020Nian_NowUserId)
	local nSpringFestival2020Nian_Index = 1
	
	if SpecialServer_ChkNoGiftServer() then
		nSpringFestival2020Nian_Index = 2
	end
	
	if tSpringFestival2020Nian_Cont["BoundTrans"][nSpringFestival2020Nian_Index] == nil then
		return
	end
	
	local nSpringFestival2020Nian_UserId = nSpringFestival2020Nian_NowUserId or Get_UserId()
	local nSpringFestival2020Nian_MapId = tSpringFestival2020Nian_Cont["BoundTrans"][nSpringFestival2020Nian_Index]["MapId"]
	local nSpringFestival2020Nian_BoundX = tSpringFestival2020Nian_Cont["BoundTrans"][nSpringFestival2020Nian_Index]["PosX"]
	local nSpringFestival2020Nian_BoundY = tSpringFestival2020Nian_Cont["BoundTrans"][nSpringFestival2020Nian_Index]["PosY"]
	
	User_UserRandBoundTrans(nSpringFestival2020Nian_MapId,nSpringFestival2020Nian_BoundX,nSpringFestival2020Nian_BoundY,1,1,0,nSpringFestival2020Nian_UserId)
	
	User_TalkChannel2005(tSpringFestival2020Nian_Text["Channel2005"]["GoBack"][nSpringFestival2020Nian_Index],nSpringFestival2020Nian_UserId)
end

--陷阱触发
function SpringFestival2020Nian_GoBack(nTrapId,nTrapType)
	local sSpringFestival2020Nian_Text = tSpringFestival2020Nian_Text["MsgBox"]["GoBackTwinCity"]
	
	if SpecialServer_ChkNoGiftServer() then
		sSpringFestival2020Nian_Text = tSpringFestival2020Nian_Text["MsgBox"]["GoBackMarket"]
	end
	
	local nSpringFestival2020Nian_UserId = Get_UserId()
	
	Sys_MsgBox(sSpringFestival2020Nian_Text,"SpringFestival2020Nian_BoundTrans",nil,nSpringFestival2020Nian_UserId)
end

--上线触发
function SpringFestival2020Nian_Login()
	--上线清零二次确认掩码
	SpringFestival2020Nian_SetStcValue(10, "Set", 0)
end

--每日签到
function SpringFestival2020Nian_Sign()
	--活动时间判断
	if not Sys_ChkFullTime(tSpringFestival2020Nian_Time["ActivityTime"]) then
		return
	end
	
	--等级判断
	if not SpringFestival2020Nian_ChkLevel() then
		return
	end
	
	RewardTemplate_UseItemAndMsg(tSpringFestival2020Nian_Reward["Sign"])
end

--显著功勋礼包
function SpringFestival2020Nian_GuoBag()
	--活动时间判断
	if not Sys_ChkFullTime(tSpringFestival2020Nian_Time["ActivityTime"]) then
		return
	end
	
	--等级判断
	if not SpringFestival2020Nian_ChkLevel() then
		return
	end
	
	RewardTemplate_UseItemAndMsg(tSpringFestival2020Nian_Reward["GuoBag"])
end

--全服公告超链接
function SpringFestival2020Nian_BroadCastLink(nSpringFestival2020Nian_NpcId)
	local nSpringFestival2020Nian_UserId = Get_UserId()
	local nSpringFestival2020Nian_MapId = Get_UserMapId(nSpringFestival2020Nian_UserId)
	
	local nSpringFestival2020Nian_Index = 1
	
	if SpecialServer_ChkNoGiftServer() then
		nSpringFestival2020Nian_Index = 2
	end
	
	--在双龙城寻路，不在双龙城提示
	if nSpringFestival2020Nian_MapId == tSpringFestival2020Nian_Cont["BoundTrans"][nSpringFestival2020Nian_Index]["MapId"] then
		NpcPosition_PathFind(nSpringFestival2020Nian_NpcId)
	else
		local nSpringFestival2020Nian_PosX = Get_NpcPositionX(nSpringFestival2020Nian_NpcId)
		local nSpringFestival2020Nian_PosY = Get_NpcPositionY(nSpringFestival2020Nian_NpcId)
		
		User_TalkChannel2005(string.format(tSpringFestival2020Nian_Text["Channel2005"]["GotoFind"][nSpringFestival2020Nian_Index], nSpringFestival2020Nian_PosX, nSpringFestival2020Nian_PosY))
	end
	
end

--------------------------------------------模块部分配置--------------------------------------------

---------------------------------------------NPC模块---------------------------------------------
--火云神狮
tNpcFace[3832] = 2780
tNpcGossip[25792] = tNpcGossip[25792] or DefaultNpc:new{}
tNpcGossip[25792]["DialogueText"] = tSpringFestival2020Nian_Text[25792]
tNpcGossip[25792]["OptionHidden"] = 1

--活动时间前
tNpcGossip[25792]["Text1-1"] = {111,112,113,114,115,116}
tNpcGossip[25792]["ChkFunc1-1"] = function()
	return CommonFunc_GetBeforeActivityTime(tSpringFestival2020Nian_Time["ActivityTime"])
end
tNpcGossip[25792]["tOption1-1"] = {111}

--活动时间后
tNpcGossip[25792]["Text1-2"] = {111,121}
tNpcGossip[25792]["ChkFunc1-2"] = function()
	return CommonFunc_GetAfterActivityTime(tSpringFestival2020Nian_Time["ActivityTime"])
end
tNpcGossip[25792]["tOption1-2"] = {121}

--玩家尚未完成主线任务
tNpcGossip[25792]["Text1-3"] = {111,131,132}
tNpcGossip[25792]["ChkFunc1-3"] = function()
	return SpringFestival2020Nian_MainChk(25792) == 2
end
tNpcGossip[25792]["tOption1-3"] = {131}
tNpcGossip[25792]["OptionFunc131"] = "NpcPosition_PathFind</N>25784"


--玩家完成主线任务，等级未达到
tNpcGossip[25792]["Text1-4"] = {111,141,142,143,144,145,146,147}
tNpcGossip[25792]["ChkFunc1-4"] = function()
	return SpringFestival2020Nian_MainChk(25792) == 1
end
tNpcGossip[25792]["tOption1-4"] = {141}

--玩家完成主线任务，等级达到
tNpcGossip[25792]["Text1-5"] = {111,151,152,153,154,155,156}
tNpcGossip[25792]["ChkFunc1-5"] = function()
	return SpringFestival2020Nian_MainChk(25792) == 3
end
tNpcGossip[25792]["tOption1-5"] = {151,152,153}
tNpcGossip[25792]["OptionPoint151"] = "2-3"
tNpcGossip[25792]["OptionFunc152"] = "SpringFestival2020Nian_PicChk</N>25792"
tNpcGossip[25792]["OptionPoint153"] = "2-1"


--玩家集齐了所有图鉴，尚未激活最强年兽
tNpcGossip[25792]["Text1-6"] = {111,161,162,163,164,165}
tNpcGossip[25792]["ChkFunc1-6"] = function()
	return SpringFestival2020Nian_MainChk(25792) == 4
end
tNpcGossip[25792]["tOption1-6"] = {161,162}
tNpcGossip[25792]["OptionFunc161"] = "SpringFestival2020Nian_IntoInstance</N>5885"
tNpcGossip[25792]["OptionPoint162"] = "2-3"

--已激活最强年兽
tNpcGossip[25792]["Text1-7"] = {111,171,172,173,174,175,176,177,178,179,1710,1711,1712,1713}
tNpcGossip[25792]["ChkFunc1-7"] = function()
	return SpringFestival2020Nian_MainChk(25792) == 5
end
tNpcGossip[25792]["tOption1-7"] = {171,172,173,174,175,176,177}
tNpcGossip[25792]["OptionFunc171"] = "SpringFestival2020Nian_EatFood</N>1"
tNpcGossip[25792]["OptionFunc172"] = "SpringFestival2020Nian_EatFood</N>2"
tNpcGossip[25792]["OptionFunc173"] = "SpringFestival2020Nian_EatFood</N>3"
tNpcGossip[25792]["OptionFunc174"] = "SpringFestival2020Nian_EatFood</N>4"
tNpcGossip[25792]["OptionFunc175"] = "SpringFestival2020Nian_EatFood</N>5"
tNpcGossip[25792]["OptionFunc176"] = "SpringFestival2020Nian_EatFood</N>6"
tNpcGossip[25792]["OptionPoint177"] = "2-3"

--玩家还没有进行孵化年兽操作
tNpcGossip[25792]["Text1-8"] = {111,181,182,183,184}
tNpcGossip[25792]["ChkFunc1-8"] = function()
	return SpringFestival2020Nian_MainChk(25792) == 6
end
tNpcGossip[25792]["tOption1-8"] = {181}
tNpcGossip[25792]["OptionFunc181"] = "NpcPosition_PathFind</N>25793"

--接我要如何收集图鉴？
tNpcGossip[25792]["Text2-1"] = {211,212,213}
tNpcGossip[25792]["tOption2-1"] = {211}
tNpcGossip[25792]["OptionPoint211"] = "3-1"

--接喂养
tNpcGossip[25792]["Text2-2"] = {221,222}
tNpcGossip[25792]["tOption2-2"] = {221,222}
tNpcGossip[25792]["OptionFunc221"] = "SpringFestival2020Nian_EatFood</N>0</N>1"
tNpcGossip[25792]["OptionFunc222"] = "SpringFestival2020Nian_EatConfirm"

--进入幻界仙城
tNpcGossip[25792]["Text2-3"] = {231,232}
tNpcGossip[25792]["tOption2-3"] = {231}
tNpcGossip[25792]["OptionFunc231"] = "SpringFestival2020Nian_IntoCross"

--查看年兽图鉴
tNpcGossip[25792]["Text2-4"] = {2426,2427,2428,2429,241,242,243,244,245,2430,246,247,248,249,2410,2431,2411,2412,2413,2414,2415,2432,2416,2417,2418,2419,2420,2433,2421,2422,2423,2424,2425,2434,2435}
tNpcGossip[25792]["tOption2-4"] = {241,242}
tNpcGossip[25792]["OptionFunc241"] = "SpringFestival2020Nian_ViewAward</N>25792"
tNpcGossip[25792]["OptionFunc242"] = "SpringFestival2020Nian_PicInfo</N>25792"

--接如何获得年兽蛋？
tNpcGossip[25792]["Text3-1"] = {311,312,313,314,315,316,317,318}
tNpcGossip[25792]["tOption3-1"] = {311}

--接喂养二次确认
tNpcGossip[25792]["Text3-2"] = {321}
tNpcGossip[25792]["tOption3-2"] = {321,322}
tNpcGossip[25792]["OptionFunc321"] = "SpringFestival2020Nian_EatConfirm</N>1"

--了解年兽蛋孵化情况
tNpcGossip[25792]["Text3-3"] = {336,337,338,331,332,335,339}
tNpcGossip[25792]["tOption3-3"] = {331}
tNpcGossip[25792]["OptionFunc331"] = "NpcPosition_PathFind</N>25793"
--查看封印年兽奖励
tNpcGossip[25792]["Text3-4"] = {341,342,343,344,345,346,347,348,349,3410,3411,3412}
tNpcGossip[25792]["tOption3-4"] = {341,342,343,344}
tNpcGossip[25792]["OptionFunc341"] = "NpcPosition_PathFind</N>25793"
tNpcGossip[25792]["OptionFunc342"] = "NpcPosition_PathFind</N>25792"
tNpcGossip[25792]["OptionFunc343"] = "NpcPosition_PathFind</N>25784"
tNpcGossip[25792]["OptionFunc344"] = "SpringFestival2020Nian_OpenWeb"

--寅木孵化炉
tNpcFace[3833] = 2787
tNpcGossip[25793] = tNpcGossip[25793] or DefaultNpc:new{}
tNpcGossip[25793]["DialogueText"] = tSpringFestival2020Nian_Text[25793]
tNpcGossip[25793]["OptionHidden"] = 1

--等级判断
tNpcGossip[25793]["Text1-1"] = {111,112,113,114}
tNpcGossip[25793]["ChkFunc1-1"] = function()
	return SpringFestival2020Nian_StoveChk(25793) == 0
end
tNpcGossip[25793]["tOption1-1"] = {111}

--任务完成判断
tNpcGossip[25793]["Text1-2"] = {121,122,123,124,125}
tNpcGossip[25793]["ChkFunc1-2"] = function()
	return SpringFestival2020Nian_StoveChk(25793) == 1
end
tNpcGossip[25793]["tOption1-2"] = {121}
tNpcGossip[25793]["OptionFunc121"] = "NpcPosition_PathFind</N>25784"

--达到开启条件，还未放入年兽蛋
tNpcGossip[25793]["Text1-3"] = {131,132,133,134,135,136,137,138}
tNpcGossip[25793]["ChkFunc1-3"] = function()
	return SpringFestival2020Nian_StoveChk(25793) == 2
end
tNpcGossip[25793]["tOption1-3"] = {131}
tNpcGossip[25793]["OptionFunc131"] = "SpringFestival2020Nian_ChkInputEgg"
-- tNpcGossip[25793]["OptionPoint132"] = "2-4"

--已放入年兽蛋，孵化中
tNpcGossip[25793]["Text1-4"] = {141,142,143,144,145,146}
tNpcGossip[25793]["ChkFunc1-4"] = function()
	local nSpringFestival2020Nian_Result,nSpringFestival2020Nian_RemainTime, nSpringFestival2020Nian_EggItem = SpringFestival2020Nian_StoveChk(25793)
	
	if nSpringFestival2020Nian_Result ~= 3 then
		return false
	end
	
	tNpcGossip[25793]["Text141"] = string.format(tSpringFestival2020Nian_Text[25793]["Text141"], tSpringFestival2020Nian_Text["Egg"][nSpringFestival2020Nian_EggItem])
	tNpcGossip[25793]["Text143"] = string.format(tSpringFestival2020Nian_Text[25793]["Text143"], nSpringFestival2020Nian_RemainTime)
	
	--剩余免费一键孵化次数
	local nSpringFestival2020Nian_RemainFree = tSpringFestival2020Nian_Cont["FreeTimes"] - SpringFestival2020Nian_GetStcValue(9)
	
	if nSpringFestival2020Nian_RemainFree < 0 then
		nSpringFestival2020Nian_RemainFree = 0
	end
	
	tNpcGossip[25793]["Option142"] = string.format(tSpringFestival2020Nian_Text[25793]["Option142"], nSpringFestival2020Nian_RemainFree)
	
	if nSpringFestival2020Nian_RemainFree == 0 then
		tNpcGossip[25793]["tOption1-4"] = {141}
	else
		tNpcGossip[25793]["tOption1-4"] = {141,142}
	end
	
	return true
end
tNpcGossip[25793]["tOption1-4"] = {141,142}
tNpcGossip[25793]["OptionFunc141"] = "SpringFestival2020Nian_ChkSpeedEgg"
tNpcGossip[25793]["OptionFunc142"] = "SpringFestival2020Nian_ChkSpeedEgg</N>1"

--孵化后获得图鉴中已有的年兽
tNpcGossip[25793]["Text1-5"] = {151,152,153,154,155,156,157,158}
tNpcGossip[25793]["ChkFunc1-5"] = function()
	local nSpringFestival2020Nian_Result,nSpringFestival2020Nian_EggItem, nSpringFestival2020Nian_EggIndex = SpringFestival2020Nian_StoveChk(25793)
	
	if nSpringFestival2020Nian_Result ~= 4 then
		return false
	end
	
	--获取品质
	local nSpringFestival2020Nian_Quality = math.floor((nSpringFestival2020Nian_EggIndex - 1) / 5) + 1
	
	tNpcGossip[25793]["Text151"] = string.format(tSpringFestival2020Nian_Text[25793]["Text151"], tSpringFestival2020Nian_Text["NianQuality"][nSpringFestival2020Nian_Quality], tSpringFestival2020Nian_Text["NianName"][nSpringFestival2020Nian_EggIndex])
	tNpcGossip[25793]["Text153"] = string.format(tSpringFestival2020Nian_Text[25793]["Text153"], tSpringFestival2020Nian_Text["NianNameTips"][nSpringFestival2020Nian_EggIndex][1])
	tNpcGossip[25793]["Text154"] = string.format(tSpringFestival2020Nian_Text[25793]["Text154"], tSpringFestival2020Nian_Text["NianNameTips"][nSpringFestival2020Nian_EggIndex][2])
	tNpcGossip[25793]["Text158"] = string.format(tSpringFestival2020Nian_Text[25793]["Text158"], tSpringFestival2020Nian_Cont["AwardNum"][nSpringFestival2020Nian_EggIndex])
	
	return true
end
tNpcGossip[25793]["tOption1-5"] = {151}
tNpcGossip[25793]["OptionFunc151"] = "SpringFestival2020Nian_OneKey"

--孵化后获得图鉴中没有的年兽
tNpcGossip[25793]["Text1-6"] = {161,162,163,164,165,166,167}
tNpcGossip[25793]["ChkFunc1-6"] = function()
	local nSpringFestival2020Nian_Result,nSpringFestival2020Nian_EggItem, nSpringFestival2020Nian_EggIndex = SpringFestival2020Nian_StoveChk(25793)
	
	if nSpringFestival2020Nian_Result ~= 5 then
		return false
	end
	
	--获取品质
	local nSpringFestival2020Nian_Quality = math.floor((nSpringFestival2020Nian_EggIndex - 1) / 5) + 1
	
	tNpcGossip[25793]["Text161"] = string.format(tSpringFestival2020Nian_Text[25793]["Text161"], tSpringFestival2020Nian_Text["NianQuality"][nSpringFestival2020Nian_Quality], tSpringFestival2020Nian_Text["NianName"][nSpringFestival2020Nian_EggIndex])
	tNpcGossip[25793]["Text163"] = string.format(tSpringFestival2020Nian_Text[25793]["Text163"], tSpringFestival2020Nian_Text["NianNameTips"][nSpringFestival2020Nian_EggIndex][1])
	tNpcGossip[25793]["Text164"] = string.format(tSpringFestival2020Nian_Text[25793]["Text164"], tSpringFestival2020Nian_Text["NianNameTips"][nSpringFestival2020Nian_EggIndex][2])
	tNpcGossip[25793]["Text166"] = string.format(tSpringFestival2020Nian_Text[25793]["Text166"], tSpringFestival2020Nian_Cont["FuQi"][nSpringFestival2020Nian_EggIndex])
	tNpcGossip[25793]["Option161"] = string.format(tSpringFestival2020Nian_Text[25793]["Option161"], tSpringFestival2020Nian_Text["NianName"][nSpringFestival2020Nian_EggIndex])
	
	return true
end
tNpcGossip[25793]["tOption1-6"] = {161}
tNpcGossip[25793]["OptionFunc161"] = "SpringFestival2020Nian_IntoInstance"

--放入年兽蛋
tNpcGossip[25793]["Text2-1"] = {211,212}
tNpcGossip[25793]["tOption2-1"] = {211,212,213}
tNpcGossip[25793]["OptionFunc211"] = "SpringFestival2020Nian_InputEgg</N>3600237"
tNpcGossip[25793]["OptionFunc212"] = "SpringFestival2020Nian_InputEgg</N>3600240"
tNpcGossip[25793]["OptionFunc213"] = "SpringFestival2020Nian_InputEgg</N>3327298"

--投入星纹石
tNpcGossip[25793]["Text2-2"] = {221}
tNpcGossip[25793]["tOption2-2"] = {221,222}
tNpcGossip[25793]["OptionFunc221"] = "SpringFestival2020Nian_SpeedEgg"

--一键孵化
tNpcGossip[25793]["Text2-3"] = {231}
tNpcGossip[25793]["tOption2-3"] = {231,232}
tNpcGossip[25793]["OptionFunc231"] = "SpringFestival2020Nian_SpeedEgg</N>2"

--如何获得年兽蛋？
tNpcGossip[25793]["Text2-4"] = {241,242,243,244,245,246,247,248}
tNpcGossip[25793]["tOption2-4"] = {241,242}
tNpcGossip[25793]["OptionFunc241"] = "SpringFestival2020Nian_IntoCross"

--没有年兽蛋
tNpcGossip[25793]["Text3-1"] = {311}
tNpcGossip[25793]["tOption3-1"] = {311}
tNpcGossip[25793]["OptionPoint311"] = "1"

--星纹石不足
tNpcGossip[25793]["Text3-2"] = {321}
tNpcGossip[25793]["tOption3-2"] = {321,322}
tNpcGossip[25793]["OptionFunc321"] = "SpringFestival2020Nian_SpeedEgg</N>1"
tNpcGossip[25793]["OptionPoint322"] = "4-1"

--屏蔽二次确认
tNpcGossip[25793]["Text4-1"] = {411}
tNpcGossip[25793]["tOption4-1"] = {411,412}
tNpcGossip[25793]["OptionFunc411"] = "SpringFestival2020Nian_Confirm</N>7"

--辰土孵化炉
tNpcFace[3875] = 2787
tNpcGossip[25794] = tNpcGossip[25794] or DefaultNpc:new{}
tNpcGossip[25794]["DialogueText"] = tSpringFestival2020Nian_Text[25794]
tNpcGossip[25794]["OptionHidden"] = 1

--等级判断
tNpcGossip[25794]["Text1-1"] = {111,112,113,114}
tNpcGossip[25794]["ChkFunc1-1"] = function()
	return SpringFestival2020Nian_StoveChk(25794) == 0
end
tNpcGossip[25794]["tOption1-1"] = {111}

--任务完成判断
tNpcGossip[25794]["Text1-2"] = {121,122,123,124,125}
tNpcGossip[25794]["ChkFunc1-2"] = function()
	return SpringFestival2020Nian_StoveChk(25794) == 1
end
tNpcGossip[25794]["tOption1-2"] = {121}
tNpcGossip[25794]["OptionFunc121"] = "NpcPosition_PathFind</N>25784"

--达到开启条件，还未放入年兽蛋
tNpcGossip[25794]["Text1-3"] = {131,132,133,134,135,136,137,138}
tNpcGossip[25794]["ChkFunc1-3"] = function()
	return SpringFestival2020Nian_StoveChk(25794) == 2
end
tNpcGossip[25794]["tOption1-3"] = {131}
tNpcGossip[25794]["OptionFunc131"] = "SpringFestival2020Nian_ChkInputEgg"
-- tNpcGossip[25794]["OptionPoint132"] = "2-4"

--已放入年兽蛋，孵化中
tNpcGossip[25794]["Text1-4"] = {141,142,143,144,145,146}
tNpcGossip[25794]["ChkFunc1-4"] = function()
	local nSpringFestival2020Nian_Result,nSpringFestival2020Nian_RemainTime, nSpringFestival2020Nian_EggItem = SpringFestival2020Nian_StoveChk(25794)
	
	if nSpringFestival2020Nian_Result ~= 3 then
		return false
	end
	
	tNpcGossip[25794]["Text141"] = string.format(tSpringFestival2020Nian_Text[25794]["Text141"], tSpringFestival2020Nian_Text["Egg"][nSpringFestival2020Nian_EggItem])
	tNpcGossip[25794]["Text143"] = string.format(tSpringFestival2020Nian_Text[25794]["Text143"], nSpringFestival2020Nian_RemainTime)
	
	--剩余免费一键孵化次数
	local nSpringFestival2020Nian_RemainFree = tSpringFestival2020Nian_Cont["FreeTimes"] - SpringFestival2020Nian_GetStcValue(9)
	
	if nSpringFestival2020Nian_RemainFree < 0 then
		nSpringFestival2020Nian_RemainFree = 0
	end
	
	tNpcGossip[25794]["Option142"] = string.format(tSpringFestival2020Nian_Text[25794]["Option142"], nSpringFestival2020Nian_RemainFree)
	
	if nSpringFestival2020Nian_RemainFree == 0 then
		tNpcGossip[25794]["tOption1-4"] = {141}
	else
		tNpcGossip[25794]["tOption1-4"] = {141,142}
	end
	
	return true
end
tNpcGossip[25794]["tOption1-4"] = {141,142}
tNpcGossip[25794]["OptionFunc141"] = "SpringFestival2020Nian_ChkSpeedEgg"
tNpcGossip[25794]["OptionFunc142"] = "SpringFestival2020Nian_ChkSpeedEgg</N>1"

--孵化后获得图鉴中已有的年兽
tNpcGossip[25794]["Text1-5"] = {151,152,153,154,155,156,157,158}
tNpcGossip[25794]["ChkFunc1-5"] = function()
	local nSpringFestival2020Nian_Result,nSpringFestival2020Nian_EggItem, nSpringFestival2020Nian_EggIndex = SpringFestival2020Nian_StoveChk(25794)
	
	if nSpringFestival2020Nian_Result ~= 4 then
		return false
	end
	
	--获取品质
	local nSpringFestival2020Nian_Quality = math.floor((nSpringFestival2020Nian_EggIndex - 1) / 5) + 1
	
	tNpcGossip[25794]["Text151"] = string.format(tSpringFestival2020Nian_Text[25794]["Text151"], tSpringFestival2020Nian_Text["NianQuality"][nSpringFestival2020Nian_Quality], tSpringFestival2020Nian_Text["NianName"][nSpringFestival2020Nian_EggIndex])
	tNpcGossip[25794]["Text153"] = string.format(tSpringFestival2020Nian_Text[25794]["Text153"], tSpringFestival2020Nian_Text["NianNameTips"][nSpringFestival2020Nian_EggIndex][1])
	tNpcGossip[25794]["Text154"] = string.format(tSpringFestival2020Nian_Text[25794]["Text154"], tSpringFestival2020Nian_Text["NianNameTips"][nSpringFestival2020Nian_EggIndex][2])
	tNpcGossip[25794]["Text158"] = string.format(tSpringFestival2020Nian_Text[25794]["Text158"], tSpringFestival2020Nian_Cont["AwardNum"][nSpringFestival2020Nian_EggIndex])
	
	return true
end
tNpcGossip[25794]["tOption1-5"] = {151}
tNpcGossip[25794]["OptionFunc151"] = "SpringFestival2020Nian_OneKey"

--孵化后获得图鉴中没有的年兽
tNpcGossip[25794]["Text1-6"] = {161,162,163,164,165,166,167}
tNpcGossip[25794]["ChkFunc1-6"] = function()
	local nSpringFestival2020Nian_Result,nSpringFestival2020Nian_EggItem, nSpringFestival2020Nian_EggIndex = SpringFestival2020Nian_StoveChk(25794)
	
	if nSpringFestival2020Nian_Result ~= 5 then
		return false
	end
	
	--获取品质
	local nSpringFestival2020Nian_Quality = math.floor((nSpringFestival2020Nian_EggIndex - 1) / 5) + 1
	
	tNpcGossip[25794]["Text161"] = string.format(tSpringFestival2020Nian_Text[25794]["Text161"], tSpringFestival2020Nian_Text["NianQuality"][nSpringFestival2020Nian_Quality], tSpringFestival2020Nian_Text["NianName"][nSpringFestival2020Nian_EggIndex])
	tNpcGossip[25794]["Text163"] = string.format(tSpringFestival2020Nian_Text[25794]["Text163"], tSpringFestival2020Nian_Text["NianNameTips"][nSpringFestival2020Nian_EggIndex][1])
	tNpcGossip[25794]["Text164"] = string.format(tSpringFestival2020Nian_Text[25794]["Text164"], tSpringFestival2020Nian_Text["NianNameTips"][nSpringFestival2020Nian_EggIndex][2])
	tNpcGossip[25794]["Text166"] = string.format(tSpringFestival2020Nian_Text[25794]["Text166"], tSpringFestival2020Nian_Cont["FuQi"][nSpringFestival2020Nian_EggIndex])
	tNpcGossip[25794]["Option161"] = string.format(tSpringFestival2020Nian_Text[25794]["Option161"], tSpringFestival2020Nian_Text["NianName"][nSpringFestival2020Nian_EggIndex])
	
	return true
end
tNpcGossip[25794]["tOption1-6"] = {161}
tNpcGossip[25794]["OptionFunc161"] = "SpringFestival2020Nian_IntoInstance"

--开炉时间未到
tNpcGossip[25794]["Text1-7"] = {171,172,173,174,175}
tNpcGossip[25794]["ChkFunc1-7"] = function()
	return SpringFestival2020Nian_StoveChk(25794) == 6
end
tNpcGossip[25794]["tOption1-7"] = {171}

--放入年兽蛋
tNpcGossip[25794]["Text2-1"] = {211,212}
tNpcGossip[25794]["tOption2-1"] = {211,212,213}
tNpcGossip[25794]["OptionFunc211"] = "SpringFestival2020Nian_InputEgg</N>3600237"
tNpcGossip[25794]["OptionFunc212"] = "SpringFestival2020Nian_InputEgg</N>3600240"
tNpcGossip[25794]["OptionFunc213"] = "SpringFestival2020Nian_InputEgg</N>3327298"

--投入星纹石
tNpcGossip[25794]["Text2-2"] = {221}
tNpcGossip[25794]["tOption2-2"] = {221,222}
tNpcGossip[25794]["OptionFunc221"] = "SpringFestival2020Nian_SpeedEgg"

--一键孵化
tNpcGossip[25794]["Text2-3"] = {231}
tNpcGossip[25794]["tOption2-3"] = {231,232}
tNpcGossip[25794]["OptionFunc231"] = "SpringFestival2020Nian_SpeedEgg</N>2"

--如何获得年兽蛋？
tNpcGossip[25794]["Text2-4"] = {241,242,243,244,245,246,247,248}
tNpcGossip[25794]["tOption2-4"] = {241,242}
tNpcGossip[25794]["OptionFunc241"] = "SpringFestival2020Nian_IntoCross"

--没有年兽蛋
tNpcGossip[25794]["Text3-1"] = {311}
tNpcGossip[25794]["tOption3-1"] = {311}
tNpcGossip[25794]["OptionPoint311"] = "1"

--星纹石不足
tNpcGossip[25794]["Text3-2"] = {321}
tNpcGossip[25794]["tOption3-2"] = {321,322}
tNpcGossip[25794]["OptionFunc321"] = "SpringFestival2020Nian_SpeedEgg</N>1"
tNpcGossip[25794]["OptionPoint322"] = "4-1"

--屏蔽二次确认
tNpcGossip[25794]["Text4-1"] = {411}
tNpcGossip[25794]["tOption4-1"] = {411,412}
tNpcGossip[25794]["OptionFunc411"] = "SpringFestival2020Nian_Confirm</N>7"

--癸水孵化炉
tNpcFace[3876] = 407
tNpcGossip[25795] = tNpcGossip[25795] or DefaultNpc:new{}
tNpcGossip[25795]["DialogueText"] = tSpringFestival2020Nian_Text[25795]
tNpcGossip[25795]["OptionHidden"] = 1

--等级判断
tNpcGossip[25795]["Text1-1"] = {111,112,113,114}
tNpcGossip[25795]["ChkFunc1-1"] = function()
	return SpringFestival2020Nian_StoveChk(25795) == 0
end
tNpcGossip[25795]["tOption1-1"] = {111}

--任务完成判断
tNpcGossip[25795]["Text1-2"] = {121,122,123,124,125}
tNpcGossip[25795]["ChkFunc1-2"] = function()
	return SpringFestival2020Nian_StoveChk(25795) == 1
end
tNpcGossip[25795]["tOption1-2"] = {121}
tNpcGossip[25795]["OptionFunc121"] = "NpcPosition_PathFind</N>25784"

--达到开启条件，还未放入年兽蛋
tNpcGossip[25795]["Text1-3"] = {131,132,133,134,135,136,137,138}
tNpcGossip[25795]["ChkFunc1-3"] = function()
	return SpringFestival2020Nian_StoveChk(25795) == 2
end
tNpcGossip[25795]["tOption1-3"] = {131}
tNpcGossip[25795]["OptionFunc131"] = "SpringFestival2020Nian_ChkInputEgg"
-- tNpcGossip[25795]["OptionPoint132"] = "2-4"

--已放入年兽蛋，孵化中
tNpcGossip[25795]["Text1-4"] = {141,142,143,144,145,146}
tNpcGossip[25795]["ChkFunc1-4"] = function()
	local nSpringFestival2020Nian_Result,nSpringFestival2020Nian_RemainTime, nSpringFestival2020Nian_EggItem = SpringFestival2020Nian_StoveChk(25795)
	
	if nSpringFestival2020Nian_Result ~= 3 then
		return false
	end
	
	tNpcGossip[25795]["Text141"] = string.format(tSpringFestival2020Nian_Text[25795]["Text141"], tSpringFestival2020Nian_Text["Egg"][nSpringFestival2020Nian_EggItem])
	tNpcGossip[25795]["Text143"] = string.format(tSpringFestival2020Nian_Text[25795]["Text143"], nSpringFestival2020Nian_RemainTime)
	
	--剩余免费一键孵化次数
	local nSpringFestival2020Nian_RemainFree = tSpringFestival2020Nian_Cont["FreeTimes"] - SpringFestival2020Nian_GetStcValue(9)
	
	if nSpringFestival2020Nian_RemainFree < 0 then
		nSpringFestival2020Nian_RemainFree = 0
	end
	
	tNpcGossip[25795]["Option142"] = string.format(tSpringFestival2020Nian_Text[25795]["Option142"], nSpringFestival2020Nian_RemainFree)
	
	if nSpringFestival2020Nian_RemainFree == 0 then
		tNpcGossip[25795]["tOption1-4"] = {141}
	else
		tNpcGossip[25795]["tOption1-4"] = {141,142}
	end
	
	return true
end
tNpcGossip[25795]["tOption1-4"] = {141,142}
tNpcGossip[25795]["OptionFunc141"] = "SpringFestival2020Nian_ChkSpeedEgg"
tNpcGossip[25795]["OptionFunc142"] = "SpringFestival2020Nian_ChkSpeedEgg</N>1"

--孵化后获得图鉴中已有的年兽
tNpcGossip[25795]["Text1-5"] = {151,152,153,154,155,156,157,158}
tNpcGossip[25795]["ChkFunc1-5"] = function()
	local nSpringFestival2020Nian_Result,nSpringFestival2020Nian_EggItem, nSpringFestival2020Nian_EggIndex = SpringFestival2020Nian_StoveChk(25795)
	
	if nSpringFestival2020Nian_Result ~= 4 then
		return false
	end
	
	--获取品质
	local nSpringFestival2020Nian_Quality = math.floor((nSpringFestival2020Nian_EggIndex - 1) / 5) + 1
	
	tNpcGossip[25795]["Text151"] = string.format(tSpringFestival2020Nian_Text[25795]["Text151"], tSpringFestival2020Nian_Text["NianQuality"][nSpringFestival2020Nian_Quality], tSpringFestival2020Nian_Text["NianName"][nSpringFestival2020Nian_EggIndex])
	tNpcGossip[25795]["Text153"] = string.format(tSpringFestival2020Nian_Text[25795]["Text153"], tSpringFestival2020Nian_Text["NianNameTips"][nSpringFestival2020Nian_EggIndex][1])
	tNpcGossip[25795]["Text154"] = string.format(tSpringFestival2020Nian_Text[25795]["Text154"], tSpringFestival2020Nian_Text["NianNameTips"][nSpringFestival2020Nian_EggIndex][2])
	tNpcGossip[25795]["Text158"] = string.format(tSpringFestival2020Nian_Text[25795]["Text158"], tSpringFestival2020Nian_Cont["AwardNum"][nSpringFestival2020Nian_EggIndex])
	
	return true
end
tNpcGossip[25795]["tOption1-5"] = {151}
tNpcGossip[25795]["OptionFunc151"] = "SpringFestival2020Nian_OneKey"

--孵化后获得图鉴中没有的年兽
tNpcGossip[25795]["Text1-6"] = {161,162,163,164,165,166,167}
tNpcGossip[25795]["ChkFunc1-6"] = function()
	local nSpringFestival2020Nian_Result,nSpringFestival2020Nian_EggItem, nSpringFestival2020Nian_EggIndex = SpringFestival2020Nian_StoveChk(25795)
	
	if nSpringFestival2020Nian_Result ~= 5 then
		return false
	end
	
	--获取品质
	local nSpringFestival2020Nian_Quality = math.floor((nSpringFestival2020Nian_EggIndex - 1) / 5) + 1
	
	tNpcGossip[25795]["Text161"] = string.format(tSpringFestival2020Nian_Text[25795]["Text161"], tSpringFestival2020Nian_Text["NianQuality"][nSpringFestival2020Nian_Quality], tSpringFestival2020Nian_Text["NianName"][nSpringFestival2020Nian_EggIndex])
	tNpcGossip[25795]["Text163"] = string.format(tSpringFestival2020Nian_Text[25795]["Text163"], tSpringFestival2020Nian_Text["NianNameTips"][nSpringFestival2020Nian_EggIndex][1])
	tNpcGossip[25795]["Text164"] = string.format(tSpringFestival2020Nian_Text[25795]["Text164"], tSpringFestival2020Nian_Text["NianNameTips"][nSpringFestival2020Nian_EggIndex][2])
	tNpcGossip[25795]["Text166"] = string.format(tSpringFestival2020Nian_Text[25795]["Text166"], tSpringFestival2020Nian_Cont["FuQi"][nSpringFestival2020Nian_EggIndex])
	tNpcGossip[25795]["Option161"] = string.format(tSpringFestival2020Nian_Text[25795]["Option161"], tSpringFestival2020Nian_Text["NianName"][nSpringFestival2020Nian_EggIndex])
	
	return true
end
tNpcGossip[25795]["tOption1-6"] = {161}
tNpcGossip[25795]["OptionFunc161"] = "SpringFestival2020Nian_IntoInstance"

--开炉时间未到
tNpcGossip[25795]["Text1-7"] = {171,172,173,174,175}
tNpcGossip[25795]["ChkFunc1-7"] = function()
	return SpringFestival2020Nian_StoveChk(25795) == 6
end
tNpcGossip[25795]["tOption1-7"] = {171}
tNpcGossip[25795]["OptionFunc171"] = "SpringFestival2020Nian_OpenStove"

--放入年兽蛋
tNpcGossip[25795]["Text2-1"] = {211,212}
tNpcGossip[25795]["tOption2-1"] = {211,212,213}
tNpcGossip[25795]["OptionFunc211"] = "SpringFestival2020Nian_InputEgg</N>3600237"
tNpcGossip[25795]["OptionFunc212"] = "SpringFestival2020Nian_InputEgg</N>3600240"
tNpcGossip[25795]["OptionFunc213"] = "SpringFestival2020Nian_InputEgg</N>3327298"

--投入星纹石
tNpcGossip[25795]["Text2-2"] = {221}
tNpcGossip[25795]["tOption2-2"] = {221,222}
tNpcGossip[25795]["OptionFunc221"] = "SpringFestival2020Nian_SpeedEgg"

--一键孵化
tNpcGossip[25795]["Text2-3"] = {231}
tNpcGossip[25795]["tOption2-3"] = {231,232}
tNpcGossip[25795]["OptionFunc231"] = "SpringFestival2020Nian_SpeedEgg</N>2"

--如何获得年兽蛋？
tNpcGossip[25795]["Text2-4"] = {241,242,243,244,245,246,247,248}
tNpcGossip[25795]["tOption2-4"] = {241,242}
tNpcGossip[25795]["OptionFunc241"] = "SpringFestival2020Nian_IntoCross"

--花费银两开炉
tNpcGossip[25795]["Text2-5"] = {251,252}
tNpcGossip[25795]["tOption2-5"] = {251}
tNpcGossip[25795]["OptionPoint251"] = "3-3"

--没有年兽蛋
tNpcGossip[25795]["Text3-1"] = {311}
tNpcGossip[25795]["tOption3-1"] = {311}
tNpcGossip[25795]["OptionPoint311"] = "1"

--星纹石不足
tNpcGossip[25795]["Text3-2"] = {321}
tNpcGossip[25795]["tOption3-2"] = {321,322}
tNpcGossip[25795]["OptionFunc321"] = "SpringFestival2020Nian_SpeedEgg</N>1"
tNpcGossip[25795]["OptionPoint322"] = "4-1"

--确认花费银两开炉
tNpcGossip[25795]["Text3-3"] = {331}
tNpcGossip[25795]["tOption3-3"] = {331,332}
tNpcGossip[25795]["OptionFunc331"] = "SpringFestival2020Nian_OpenStove</N>1"

--屏蔽二次确认
tNpcGossip[25795]["Text4-1"] = {411}
tNpcGossip[25795]["tOption4-1"] = {411,412}
tNpcGossip[25795]["OptionFunc411"] = "SpringFestival2020Nian_Confirm</N>7"

--午火孵化炉
tNpcFace[3877] = 407
tNpcGossip[25796] = tNpcGossip[25796] or DefaultNpc:new{}
tNpcGossip[25796]["DialogueText"] = tSpringFestival2020Nian_Text[25796]
tNpcGossip[25796]["OptionHidden"] = 1

--等级判断
tNpcGossip[25796]["Text1-1"] = {111,112,113,114}
tNpcGossip[25796]["ChkFunc1-1"] = function()
	return SpringFestival2020Nian_StoveChk(25796) == 0
end
tNpcGossip[25796]["tOption1-1"] = {111}

--任务完成判断
tNpcGossip[25796]["Text1-2"] = {121,122,123,124,125}
tNpcGossip[25796]["ChkFunc1-2"] = function()
	return SpringFestival2020Nian_StoveChk(25796) == 1
end
tNpcGossip[25796]["tOption1-2"] = {121}
tNpcGossip[25796]["OptionFunc121"] = "NpcPosition_PathFind</N>25784"

--达到开启条件，还未放入年兽蛋
tNpcGossip[25796]["Text1-3"] = {131,132,133,134,135,136,137,138}
tNpcGossip[25796]["ChkFunc1-3"] = function()
	return SpringFestival2020Nian_StoveChk(25796) == 2
end
tNpcGossip[25796]["tOption1-3"] = {131}
tNpcGossip[25796]["OptionFunc131"] = "SpringFestival2020Nian_ChkInputEgg"
-- tNpcGossip[25796]["OptionPoint132"] = "2-4"

--已放入年兽蛋，孵化中
tNpcGossip[25796]["Text1-4"] = {141,142,143,144,145,146}
tNpcGossip[25796]["ChkFunc1-4"] = function()
	local nSpringFestival2020Nian_Result,nSpringFestival2020Nian_RemainTime, nSpringFestival2020Nian_EggItem = SpringFestival2020Nian_StoveChk(25796)
	
	if nSpringFestival2020Nian_Result ~= 3 then
		return false
	end
	
	tNpcGossip[25796]["Text141"] = string.format(tSpringFestival2020Nian_Text[25796]["Text141"], tSpringFestival2020Nian_Text["Egg"][nSpringFestival2020Nian_EggItem])
	tNpcGossip[25796]["Text143"] = string.format(tSpringFestival2020Nian_Text[25796]["Text143"], nSpringFestival2020Nian_RemainTime)
	
	--剩余免费一键孵化次数
	local nSpringFestival2020Nian_RemainFree = tSpringFestival2020Nian_Cont["FreeTimes"] - SpringFestival2020Nian_GetStcValue(9)
	
	if nSpringFestival2020Nian_RemainFree < 0 then
		nSpringFestival2020Nian_RemainFree = 0
	end
	
	tNpcGossip[25796]["Option142"] = string.format(tSpringFestival2020Nian_Text[25796]["Option142"], nSpringFestival2020Nian_RemainFree)
	
	if nSpringFestival2020Nian_RemainFree == 0 then
		tNpcGossip[25796]["tOption1-4"] = {141}
	else
		tNpcGossip[25796]["tOption1-4"] = {141,142}
	end
	
	return true
end
tNpcGossip[25796]["tOption1-4"] = {141,142}
tNpcGossip[25796]["OptionFunc141"] = "SpringFestival2020Nian_ChkSpeedEgg"
tNpcGossip[25796]["OptionFunc142"] = "SpringFestival2020Nian_ChkSpeedEgg</N>1"

--孵化后获得图鉴中已有的年兽
tNpcGossip[25796]["Text1-5"] = {151,152,153,154,155,156,157,158}
tNpcGossip[25796]["ChkFunc1-5"] = function()
	local nSpringFestival2020Nian_Result,nSpringFestival2020Nian_EggItem, nSpringFestival2020Nian_EggIndex = SpringFestival2020Nian_StoveChk(25796)
	
	if nSpringFestival2020Nian_Result ~= 4 then
		return false
	end
	
	--获取品质
	local nSpringFestival2020Nian_Quality = math.floor((nSpringFestival2020Nian_EggIndex - 1) / 5) + 1
	
	tNpcGossip[25796]["Text151"] = string.format(tSpringFestival2020Nian_Text[25796]["Text151"], tSpringFestival2020Nian_Text["NianQuality"][nSpringFestival2020Nian_Quality], tSpringFestival2020Nian_Text["NianName"][nSpringFestival2020Nian_EggIndex])
	tNpcGossip[25796]["Text153"] = string.format(tSpringFestival2020Nian_Text[25796]["Text153"], tSpringFestival2020Nian_Text["NianNameTips"][nSpringFestival2020Nian_EggIndex][1])
	tNpcGossip[25796]["Text154"] = string.format(tSpringFestival2020Nian_Text[25796]["Text154"], tSpringFestival2020Nian_Text["NianNameTips"][nSpringFestival2020Nian_EggIndex][2])
	tNpcGossip[25796]["Text158"] = string.format(tSpringFestival2020Nian_Text[25796]["Text158"], tSpringFestival2020Nian_Cont["AwardNum"][nSpringFestival2020Nian_EggIndex])
	
	return true
end
tNpcGossip[25796]["tOption1-5"] = {151}
tNpcGossip[25796]["OptionFunc151"] = "SpringFestival2020Nian_OneKey"

--孵化后获得图鉴中没有的年兽
tNpcGossip[25796]["Text1-6"] = {161,162,163,164,165,166,167}
tNpcGossip[25796]["ChkFunc1-6"] = function()
	local nSpringFestival2020Nian_Result,nSpringFestival2020Nian_EggItem, nSpringFestival2020Nian_EggIndex = SpringFestival2020Nian_StoveChk(25796)
	
	if nSpringFestival2020Nian_Result ~= 5 then
		return false
	end
	
	--获取品质
	local nSpringFestival2020Nian_Quality = math.floor((nSpringFestival2020Nian_EggIndex - 1) / 5) + 1
	
	tNpcGossip[25796]["Text161"] = string.format(tSpringFestival2020Nian_Text[25796]["Text161"], tSpringFestival2020Nian_Text["NianQuality"][nSpringFestival2020Nian_Quality], tSpringFestival2020Nian_Text["NianName"][nSpringFestival2020Nian_EggIndex])
	tNpcGossip[25796]["Text163"] = string.format(tSpringFestival2020Nian_Text[25796]["Text163"], tSpringFestival2020Nian_Text["NianNameTips"][nSpringFestival2020Nian_EggIndex][1])
	tNpcGossip[25796]["Text164"] = string.format(tSpringFestival2020Nian_Text[25796]["Text164"], tSpringFestival2020Nian_Text["NianNameTips"][nSpringFestival2020Nian_EggIndex][2])
	tNpcGossip[25796]["Text166"] = string.format(tSpringFestival2020Nian_Text[25796]["Text166"], tSpringFestival2020Nian_Cont["FuQi"][nSpringFestival2020Nian_EggIndex])
	tNpcGossip[25796]["Option161"] = string.format(tSpringFestival2020Nian_Text[25796]["Option161"], tSpringFestival2020Nian_Text["NianName"][nSpringFestival2020Nian_EggIndex])
	
	return true
end
tNpcGossip[25796]["tOption1-6"] = {161}
tNpcGossip[25796]["OptionFunc161"] = "SpringFestival2020Nian_IntoInstance"

--开炉时间未到
tNpcGossip[25796]["Text1-7"] = {171,172,173,174,175}
tNpcGossip[25796]["ChkFunc1-7"] = function()
	return SpringFestival2020Nian_StoveChk(25796) == 6
end
tNpcGossip[25796]["tOption1-7"] = {171}
tNpcGossip[25796]["OptionFunc171"] = "SpringFestival2020Nian_OpenStove"

--放入年兽蛋
tNpcGossip[25796]["Text2-1"] = {211,212}
tNpcGossip[25796]["tOption2-1"] = {211,212,213}
tNpcGossip[25796]["OptionFunc211"] = "SpringFestival2020Nian_InputEgg</N>3600237"
tNpcGossip[25796]["OptionFunc212"] = "SpringFestival2020Nian_InputEgg</N>3600240"
tNpcGossip[25796]["OptionFunc213"] = "SpringFestival2020Nian_InputEgg</N>3327298"

--投入星纹石
tNpcGossip[25796]["Text2-2"] = {221}
tNpcGossip[25796]["tOption2-2"] = {221,222}
tNpcGossip[25796]["OptionFunc221"] = "SpringFestival2020Nian_SpeedEgg"

--一键孵化
tNpcGossip[25796]["Text2-3"] = {231}
tNpcGossip[25796]["tOption2-3"] = {231,232}
tNpcGossip[25796]["OptionFunc231"] = "SpringFestival2020Nian_SpeedEgg</N>2"

--如何获得年兽蛋？
tNpcGossip[25796]["Text2-4"] = {241,242,243,244,245,246,247,248}
tNpcGossip[25796]["tOption2-4"] = {241,242}
tNpcGossip[25796]["OptionFunc241"] = "SpringFestival2020Nian_IntoCross"

--花费银两开炉
tNpcGossip[25796]["Text2-5"] = {251,252}
tNpcGossip[25796]["tOption2-5"] = {251}
tNpcGossip[25796]["OptionPoint251"] = "3-3"

--没有年兽蛋
tNpcGossip[25796]["Text3-1"] = {311}
tNpcGossip[25796]["tOption3-1"] = {311}
tNpcGossip[25796]["OptionPoint311"] = "1"

--星纹石不足
tNpcGossip[25796]["Text3-2"] = {321}
tNpcGossip[25796]["tOption3-2"] = {321,322}
tNpcGossip[25796]["OptionFunc321"] = "SpringFestival2020Nian_SpeedEgg</N>1"
tNpcGossip[25796]["OptionPoint322"] = "4-1"

--确认花费银两开炉
tNpcGossip[25796]["Text3-3"] = {331}
tNpcGossip[25796]["tOption3-3"] = {331,332}
tNpcGossip[25796]["OptionFunc331"] = "SpringFestival2020Nian_OpenStove</N>1"

--屏蔽二次确认
tNpcGossip[25796]["Text4-1"] = {411}
tNpcGossip[25796]["tOption4-1"] = {411,412}
tNpcGossip[25796]["OptionFunc411"] = "SpringFestival2020Nian_Confirm</N>7"

--庚金孵化炉
tNpcFace[3878] = 2787
tNpcGossip[25797] = tNpcGossip[25797] or DefaultNpc:new{}
tNpcGossip[25797]["DialogueText"] = tSpringFestival2020Nian_Text[25797]
tNpcGossip[25797]["OptionHidden"] = 1

--等级判断
tNpcGossip[25797]["Text1-1"] = {111,112,113,114}
tNpcGossip[25797]["ChkFunc1-1"] = function()
	return SpringFestival2020Nian_StoveChk(25797) == 0
end
tNpcGossip[25797]["tOption1-1"] = {111}

--任务完成判断
tNpcGossip[25797]["Text1-2"] = {121,122,123,124,125}
tNpcGossip[25797]["ChkFunc1-2"] = function()
	return SpringFestival2020Nian_StoveChk(25797) == 1
end
tNpcGossip[25797]["tOption1-2"] = {121}
tNpcGossip[25797]["OptionFunc121"] = "NpcPosition_PathFind</N>25784"

--达到开启条件，还未放入年兽蛋
tNpcGossip[25797]["Text1-3"] = {131,132,133,134,135,136,137,138}
tNpcGossip[25797]["ChkFunc1-3"] = function()
	return SpringFestival2020Nian_StoveChk(25797) == 2
end
tNpcGossip[25797]["tOption1-3"] = {131}
tNpcGossip[25797]["OptionFunc131"] = "SpringFestival2020Nian_ChkInputEgg"
-- tNpcGossip[25797]["OptionPoint132"] = "2-4"

--已放入年兽蛋，孵化中
tNpcGossip[25797]["Text1-4"] = {141,142,143,144,145,146}
tNpcGossip[25797]["ChkFunc1-4"] = function()
	local nSpringFestival2020Nian_Result,nSpringFestival2020Nian_RemainTime, nSpringFestival2020Nian_EggItem = SpringFestival2020Nian_StoveChk(25797)
	
	if nSpringFestival2020Nian_Result ~= 3 then
		return false
	end
	
	tNpcGossip[25797]["Text141"] = string.format(tSpringFestival2020Nian_Text[25797]["Text141"], tSpringFestival2020Nian_Text["Egg"][nSpringFestival2020Nian_EggItem])
	tNpcGossip[25797]["Text143"] = string.format(tSpringFestival2020Nian_Text[25797]["Text143"], nSpringFestival2020Nian_RemainTime)
	
	--剩余免费一键孵化次数
	local nSpringFestival2020Nian_RemainFree = tSpringFestival2020Nian_Cont["FreeTimes"] - SpringFestival2020Nian_GetStcValue(9)
	
	if nSpringFestival2020Nian_RemainFree < 0 then
		nSpringFestival2020Nian_RemainFree = 0
	end
	
	tNpcGossip[25797]["Option142"] = string.format(tSpringFestival2020Nian_Text[25797]["Option142"], nSpringFestival2020Nian_RemainFree)
	
	if nSpringFestival2020Nian_RemainFree == 0 then
		tNpcGossip[25797]["tOption1-4"] = {141}
	else
		tNpcGossip[25797]["tOption1-4"] = {141,142}
	end
	
	return true
end
tNpcGossip[25797]["tOption1-4"] = {141,142}
tNpcGossip[25797]["OptionFunc141"] = "SpringFestival2020Nian_ChkSpeedEgg"
tNpcGossip[25797]["OptionFunc142"] = "SpringFestival2020Nian_ChkSpeedEgg</N>1"

--孵化后获得图鉴中已有的年兽
tNpcGossip[25797]["Text1-5"] = {151,152,153,154,155,156,157,158}
tNpcGossip[25797]["ChkFunc1-5"] = function()
	local nSpringFestival2020Nian_Result,nSpringFestival2020Nian_EggItem, nSpringFestival2020Nian_EggIndex = SpringFestival2020Nian_StoveChk(25797)
	
	if nSpringFestival2020Nian_Result ~= 4 then
		return false
	end
	
	--获取品质
	local nSpringFestival2020Nian_Quality = math.floor((nSpringFestival2020Nian_EggIndex - 1) / 5) + 1
	
	tNpcGossip[25797]["Text151"] = string.format(tSpringFestival2020Nian_Text[25797]["Text151"], tSpringFestival2020Nian_Text["NianQuality"][nSpringFestival2020Nian_Quality], tSpringFestival2020Nian_Text["NianName"][nSpringFestival2020Nian_EggIndex])
	tNpcGossip[25797]["Text153"] = string.format(tSpringFestival2020Nian_Text[25797]["Text153"], tSpringFestival2020Nian_Text["NianNameTips"][nSpringFestival2020Nian_EggIndex][1])
	tNpcGossip[25797]["Text154"] = string.format(tSpringFestival2020Nian_Text[25797]["Text154"], tSpringFestival2020Nian_Text["NianNameTips"][nSpringFestival2020Nian_EggIndex][2])
	tNpcGossip[25797]["Text158"] = string.format(tSpringFestival2020Nian_Text[25797]["Text158"], tSpringFestival2020Nian_Cont["AwardNum"][nSpringFestival2020Nian_EggIndex])
	
	return true
end
tNpcGossip[25797]["tOption1-5"] = {151}
tNpcGossip[25797]["OptionFunc151"] = "SpringFestival2020Nian_OneKey"

--孵化后获得图鉴中没有的年兽
tNpcGossip[25797]["Text1-6"] = {161,162,163,164,165,166,167}
tNpcGossip[25797]["ChkFunc1-6"] = function()
	local nSpringFestival2020Nian_Result,nSpringFestival2020Nian_EggItem, nSpringFestival2020Nian_EggIndex = SpringFestival2020Nian_StoveChk(25797)
	
	if nSpringFestival2020Nian_Result ~= 5 then
		return false
	end
	
	--获取品质
	local nSpringFestival2020Nian_Quality = math.floor((nSpringFestival2020Nian_EggIndex - 1) / 5) + 1
	
	tNpcGossip[25797]["Text161"] = string.format(tSpringFestival2020Nian_Text[25797]["Text161"], tSpringFestival2020Nian_Text["NianQuality"][nSpringFestival2020Nian_Quality], tSpringFestival2020Nian_Text["NianName"][nSpringFestival2020Nian_EggIndex])
	tNpcGossip[25797]["Text163"] = string.format(tSpringFestival2020Nian_Text[25797]["Text163"], tSpringFestival2020Nian_Text["NianNameTips"][nSpringFestival2020Nian_EggIndex][1])
	tNpcGossip[25797]["Text164"] = string.format(tSpringFestival2020Nian_Text[25797]["Text164"], tSpringFestival2020Nian_Text["NianNameTips"][nSpringFestival2020Nian_EggIndex][2])
	tNpcGossip[25797]["Text166"] = string.format(tSpringFestival2020Nian_Text[25797]["Text166"], tSpringFestival2020Nian_Cont["FuQi"][nSpringFestival2020Nian_EggIndex])
	tNpcGossip[25797]["Option161"] = string.format(tSpringFestival2020Nian_Text[25797]["Option161"], tSpringFestival2020Nian_Text["NianName"][nSpringFestival2020Nian_EggIndex])
	
	return true
end
tNpcGossip[25797]["tOption1-6"] = {161}
tNpcGossip[25797]["OptionFunc161"] = "SpringFestival2020Nian_IntoInstance"

--开炉时间未到
tNpcGossip[25797]["Text1-7"] = {171,172,173,174,175}
tNpcGossip[25797]["ChkFunc1-7"] = function()
	return SpringFestival2020Nian_StoveChk(25797) == 6
end
tNpcGossip[25797]["tOption1-7"] = {171}
tNpcGossip[25797]["OptionFunc171"] = "SpringFestival2020Nian_OpenStove"

--放入年兽蛋
tNpcGossip[25797]["Text2-1"] = {211,212}
tNpcGossip[25797]["tOption2-1"] = {211,212,213}
tNpcGossip[25797]["OptionFunc211"] = "SpringFestival2020Nian_InputEgg</N>3600237"
tNpcGossip[25797]["OptionFunc212"] = "SpringFestival2020Nian_InputEgg</N>3600240"
tNpcGossip[25797]["OptionFunc213"] = "SpringFestival2020Nian_InputEgg</N>3327298"

--投入星纹石
tNpcGossip[25797]["Text2-2"] = {221}
tNpcGossip[25797]["tOption2-2"] = {221,222}
tNpcGossip[25797]["OptionFunc221"] = "SpringFestival2020Nian_SpeedEgg"

--一键孵化
tNpcGossip[25797]["Text2-3"] = {231}
tNpcGossip[25797]["tOption2-3"] = {231,232}
tNpcGossip[25797]["OptionFunc231"] = "SpringFestival2020Nian_SpeedEgg</N>2"

--如何获得年兽蛋？
tNpcGossip[25797]["Text2-4"] = {241,242,243,244,245,246,247,248}
tNpcGossip[25797]["tOption2-4"] = {241,242}
tNpcGossip[25797]["OptionFunc241"] = "SpringFestival2020Nian_IntoCross"

--花费银两开炉
tNpcGossip[25797]["Text2-5"] = {251,252}
tNpcGossip[25797]["tOption2-5"] = {251}
tNpcGossip[25797]["OptionPoint251"] = "3-3"

--没有年兽蛋
tNpcGossip[25797]["Text3-1"] = {311}
tNpcGossip[25797]["tOption3-1"] = {311}
tNpcGossip[25797]["OptionPoint311"] = "1"

--星纹石不足
tNpcGossip[25797]["Text3-2"] = {321}
tNpcGossip[25797]["tOption3-2"] = {321,322}
tNpcGossip[25797]["OptionFunc321"] = "SpringFestival2020Nian_SpeedEgg</N>1"
tNpcGossip[25797]["OptionPoint322"] = "4-1"

--确认花费银两开炉
tNpcGossip[25797]["Text3-3"] = {331}
tNpcGossip[25797]["tOption3-3"] = {331,332}
tNpcGossip[25797]["OptionFunc331"] = "SpringFestival2020Nian_OpenStove</N>1"

--屏蔽二次确认
tNpcGossip[25797]["Text4-1"] = {411}
tNpcGossip[25797]["tOption4-1"] = {411,412}
tNpcGossip[25797]["OptionFunc411"] = "SpringFestival2020Nian_Confirm</N>7"

---------------------------------------------物品模块---------------------------------------------
--年兽图鉴
tItemFace[3327295] = 2710
tItem[3327295] = tItem[3327295] or {}
tItem[3327295]["Function"] = function(nSpringFestival2020Nian_ItemId,sSpringFestival2020Nian_ItemName)
	return SpringFestival2020Nian_PicChk(3327295)
end
tItem[3327295]["DialogueText"] = tSpringFestival2020Nian_Text[3327295]
tItem[3327295]["Text1-1"] = {1126,1127,1128,1129,111,112,113,114,115,1130,116,117,118,119,1110,1131,1111,1112,1113,1114,1115,1132,1116,1117,1118,1119,1120,1133,1121,1122,1123,1124,1125,1134,1135}
tItem[3327295]["tOption1-1"] = {111,112}
tItem[3327295]["OptionFunc111"] = "SpringFestival2020Nian_ViewAward</N>3327295"
tItem[3327295]["OptionFunc112"] = "SpringFestival2020Nian_PicInfo</N>3327295"
--了解年兽蛋孵化情况
tItem[3327295]["Text2-1"] = {216,217,218,211,212,215,219}
tItem[3327295]["tOption2-1"] = {211}
tItem[3327295]["OptionFunc211"] = "NpcPosition_PathFind</N>25793"
--查看封印年兽奖励
tItem[3327295]["Text2-2"] = {221,222,223,224,225,226,227,228,229,2210,2211,2212}
tItem[3327295]["tOption2-2"] = {221,222,223,224}
tItem[3327295]["OptionFunc221"] = "NpcPosition_PathFind</N>25793"
tItem[3327295]["OptionFunc222"] = "NpcPosition_PathFind</N>25792"
tItem[3327295]["OptionFunc223"] = "NpcPosition_PathFind</N>25784"
tItem[3327295]["OptionFunc224"] = "SpringFestival2020Nian_OpenWeb"

--年兽蛋（一阶）
tItem[3600237] = tItem[3600237] or {}
tItem[3600237]["Function"] = function(nSpringFestival2020Nian_ItemId,sSpringFestival2020Nian_ItemName)
	SpringFestival2020Nian_EggUse(nSpringFestival2020Nian_ItemId)
end

--年兽蛋（二阶）
tItem[3600240] = tItem[3600237]

--年兽蛋（三阶）
tItem[3327298] = tItem[3600237]

--年兽灵魄
tItemFace[3327299] = 2711
tItem[3327299] = tItem[3327299] or {}
tItem[3327299]["Function"] = function(nSpringFestival2020Nian_ItemId,sSpringFestival2020Nian_ItemName)
	SpringFestival2020Nian_SoulUse(nSpringFestival2020Nian_ItemId)
end
tItem[3327299]["DialogueText"] = tSpringFestival2020Nian_Text[3327299]
tItem[3327299]["Text1-1"] = {111,112,113,114,115,116,117,118,119,1110}
tItem[3327299]["tOption1-1"] = {111,112,113,114,115,116}
tItem[3327299]["OptionFunc111"] = "SpringFestival2020Nian_SoulChk</N>3327299</N>1"
tItem[3327299]["OptionFunc112"] = "SpringFestival2020Nian_SoulChk</N>3327299</N>2"
tItem[3327299]["OptionFunc113"] = "SpringFestival2020Nian_SoulChk</N>3327299</N>3"
tItem[3327299]["OptionFunc114"] = "SpringFestival2020Nian_SoulChk</N>3327299</N>4"
tItem[3327299]["OptionFunc115"] = "SpringFestival2020Nian_SoulChk</N>3327299</N>5"

--幻化普通年兽
tItem[3327299]["Text2-1"] = {211,212,213,214,215}
tItem[3327299]["tOption2-1"] = {211,212,213,214,215,216}
tItem[3327299]["OptionFunc211"] = "SpringFestival2020Nian_SoulUseSeal</N>3327299</N>1"
tItem[3327299]["OptionFunc212"] = "SpringFestival2020Nian_SoulUseSeal</N>3327299</N>2"
tItem[3327299]["OptionFunc213"] = "SpringFestival2020Nian_SoulUseSeal</N>3327299</N>3"
tItem[3327299]["OptionFunc214"] = "SpringFestival2020Nian_SoulUseSeal</N>3327299</N>4"
tItem[3327299]["OptionFunc215"] = "SpringFestival2020Nian_SoulUseSeal</N>3327299</N>5"
tItem[3327299]["OptionPoint216"] = "1-1"
--幻化良品年兽
tItem[3327299]["Text2-2"] = {221,222,223,224,225}
tItem[3327299]["tOption2-2"] = {221,222,223,224,225,226}
tItem[3327299]["OptionFunc221"] = "SpringFestival2020Nian_SoulUseSeal</N>3327299</N>6"
tItem[3327299]["OptionFunc222"] = "SpringFestival2020Nian_SoulUseSeal</N>3327299</N>7"
tItem[3327299]["OptionFunc223"] = "SpringFestival2020Nian_SoulUseSeal</N>3327299</N>8"
tItem[3327299]["OptionFunc224"] = "SpringFestival2020Nian_SoulUseSeal</N>3327299</N>9"
tItem[3327299]["OptionFunc225"] = "SpringFestival2020Nian_SoulUseSeal</N>3327299</N>10"
tItem[3327299]["OptionPoint226"] = "1-1"
--幻化优品年兽
tItem[3327299]["Text2-3"] = {231,232,233,234,235}
tItem[3327299]["tOption2-3"] = {231,232,233,234,235,236}
tItem[3327299]["OptionFunc231"] = "SpringFestival2020Nian_SoulUseSeal</N>3327299</N>11"
tItem[3327299]["OptionFunc232"] = "SpringFestival2020Nian_SoulUseSeal</N>3327299</N>12"
tItem[3327299]["OptionFunc233"] = "SpringFestival2020Nian_SoulUseSeal</N>3327299</N>13"
tItem[3327299]["OptionFunc234"] = "SpringFestival2020Nian_SoulUseSeal</N>3327299</N>14"
tItem[3327299]["OptionFunc235"] = "SpringFestival2020Nian_SoulUseSeal</N>3327299</N>15"
tItem[3327299]["OptionPoint236"] = "1-1"
--幻化精品年兽
tItem[3327299]["Text2-4"] = {241,242,243,244,245}
tItem[3327299]["tOption2-4"] = {241,242,243,244,245,246}
tItem[3327299]["OptionFunc241"] = "SpringFestival2020Nian_SoulUseSeal</N>3327299</N>16"
tItem[3327299]["OptionFunc242"] = "SpringFestival2020Nian_SoulUseSeal</N>3327299</N>17"
tItem[3327299]["OptionFunc243"] = "SpringFestival2020Nian_SoulUseSeal</N>3327299</N>18"
tItem[3327299]["OptionFunc244"] = "SpringFestival2020Nian_SoulUseSeal</N>3327299</N>19"
tItem[3327299]["OptionFunc245"] = "SpringFestival2020Nian_SoulUseSeal</N>3327299</N>20"
tItem[3327299]["OptionPoint246"] = "1-1"
--幻化极品年兽
tItem[3327299]["Text2-5"] = {251,252,253,254,255}
tItem[3327299]["tOption2-5"] = {251,252,253,254,255,256}
tItem[3327299]["OptionFunc251"] = "SpringFestival2020Nian_SoulUseSeal</N>3327299</N>21"
tItem[3327299]["OptionFunc252"] = "SpringFestival2020Nian_SoulUseSeal</N>3327299</N>22"
tItem[3327299]["OptionFunc253"] = "SpringFestival2020Nian_SoulUseSeal</N>3327299</N>23"
tItem[3327299]["OptionFunc254"] = "SpringFestival2020Nian_SoulUseSeal</N>3327299</N>24"
tItem[3327299]["OptionFunc255"] = "SpringFestival2020Nian_SoulUseSeal</N>3327299</N>25"
tItem[3327299]["OptionPoint256"] = "1-1"
--已封印过
tItem[3327299]["Text3-1"] = {311,312,313,314}
tItem[3327299]["tOption3-1"] = {311}
-- tItem[3327299]["OptionFunc311"] = "SpringFestival2020Nian_SoulUseSealConfirm</N>3327299"
--未封印过
tItem[3327299]["Text3-2"] = {321,322,323,324,325,326,327,328}
tItem[3327299]["tOption3-2"] = {321}
tItem[3327299]["OptionFunc321"] = "SpringFestival2020Nian_SoulUseSealConfirm</N>3327299</N>1"

--萌宠珍宝礼包
tItem[3327300] = tItem[3327300] or {}
tItem[3327300]["Function"] = function(nSpringFestival2020Nian_ItemId,sSpringFestival2020Nian_ItemName)
	RewardTemplate_RandomReward(tSpringFestival2020Nian_Reward,nSpringFestival2020Nian_ItemId)
end

--星纹石
tItem[3600238] = tItem[3600237]

--赤炎结晶
tItem[3600239] = tItem[3600237]

---------------------------------------------怪物模块---------------------------------------------
--BOSS逻辑
local tSpringFestival2020Nian_KillBoss = {}
	tSpringFestival2020Nian_KillBoss["ActivityTime"] = tSpringFestival2020Nian_Time["ActivityTime"]
	tSpringFestival2020Nian_KillBoss["Function"]= SpringFestival2020Nian_KillBoss
	tSpringFestival2020Nian_KillBoss["MonsterId"] = tSpringFestival2020Nian_Cont["BossId"]
-- 工具下架 table.insert(tMonsterDrop_AreaLoad,tSpringFestival2020Nian_KillBoss)

--小怪掉落（普通服）（神龙岛）
	tSpringFestivalEmoney_DragonIslandMonster = {}
	tSpringFestivalEmoney_DragonIslandMonster["ActivityTime"] = tSpringFestival2020Nian_Time["ActivityTime"]
	tSpringFestivalEmoney_DragonIslandMonster["Function"]= SpringFestival2020Nian_KillMonster
	tSpringFestivalEmoney_DragonIslandMonster["Area"] = {11}
-- 工具下架 	table.insert(tMonsterDrop_AreaLoad,tSpringFestivalEmoney_DragonIslandMonster)

--小怪掉落（普通服）（古神灵境）
local tSpringFestival2020Nian_DeitylandMonsterMonster = {}
	tSpringFestival2020Nian_DeitylandMonsterMonster["ActivityTime"] = tSpringFestival2020Nian_Time["ActivityTime"]
	tSpringFestival2020Nian_DeitylandMonsterMonster["Function"]= SpringFestival2020Nian_KillMonster
	tSpringFestival2020Nian_DeitylandMonsterMonster["MonsterId"] = {3973,3974,3975,3979,3980,3981,3982,3983,3984,3985,3986,3992,4709,4710,4711,4712,4713,4720,8415,8420}
-- 工具下架 	table.insert(tMonsterDrop_AreaLoad,tSpringFestival2020Nian_DeitylandMonsterMonster)

--小怪掉落（激情服）
local tSpringFestival2020Nian_KillMonster_NoGift = {}
	tSpringFestival2020Nian_KillMonster_NoGift["ActivityTime"] = tSpringFestival2020Nian_Time["ActivityTime"]
	tSpringFestival2020Nian_KillMonster_NoGift["Function"] = SpringFestival2020Nian_KillMonster
	tSpringFestival2020Nian_KillMonster_NoGift["MonsterId"]={5274,5275,5276,5277,5278,5279,5280,5281,5282,5283,5284,5285,5286,
	5287,5288,5289,5290,5291,5292,5293,5294,5295,5296,5297,5298,5299,5300,5301,5302,5303,5304,5305,5306,5307,5308,5309,5310,
	5311,5312,5313,5314,5315,5316,5317,5318,5319,5320,5321,5322,5323,5324,5325,5326,5327,5328,5329,5330,5331,5332,5333,5334,
	5335,5336,5337,5338,5339,5340,5341,5342,5343,5344,5345,5346,5347,5348,5349,5350,5351,5352,5353,5354,5355,5356,5357,5358,5359}
-- 工具下架 	table.insert(tMonsterDrop_AreaLoad_NoGift,tSpringFestival2020Nian_KillMonster_NoGift)
	
---------------------------------------------陷阱模块---------------------------------------------
-- 工具下架 tTrap[2523] = tTrap[2523] or {}
-- 工具下架 tTrap[2523]["Function"] = function(nTrapId,nTrapType)
-- 工具下架 	SpringFestival2020Nian_GoBack(nTrapId,nTrapType)
-- 工具下架 end

---------------------------------------------上线触发---------------------------------------------
-- 工具下架 tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
-- 工具下架 table.insert(tSystem_PlayLogin_Func,SpringFestival2020Nian_Login)

-- 排行榜
-- 工具下架 tRankingFunc_Info[25792] = {}
-- 工具下架 tRankingFunc_Info[25792]["ActiveTime"] = tSpringFestival2020Nian_Time["ActivityTime"]
-- 工具下架 tRankingFunc_Info[25792]["Global"] = {54085,54086,54087,54088}
-- 工具下架 tRankingFunc_Info[25792]["RankNum"] = 10
-- 工具下架 tRankingFunc_Info[25792]["Reset"] = 1
-- 工具下架 tRankingFunc_Info[25792]["Mail"] = {}
-- 工具下架 tRankingFunc_Info[25792]["Mail"]["ActiveTime"] = tSpringFestival2020Nian_Time["RankTime"]
-- 工具下架 tRankingFunc_Info[25792]["Mail"]["RewardTime"] = {}
-- 工具下架 tRankingFunc_Info[25792]["Mail"]["RewardTime"][1] = "00:00 00:05"
-- tRankingFunc_Info[25792]["Mail"]["HaveFunc"] = SpringFestival2020Nian_ReSetMailText
-- 工具下架 tRankingFunc_Info[25792]["Mail"]["Reward"] = {}
-- 工具下架 tRankingFunc_Info[25792]["Mail"]["Reward"][1] = {}
-- 工具下架 tRankingFunc_Info[25792]["Mail"]["Reward"][1]["RewardRank"] = 1
-- 工具下架 tRankingFunc_Info[25792]["Mail"]["Reward"][1]["ActionId"] = 575843
-- 工具下架 tRankingFunc_Info[25792]["Mail"]["Reward"][1]["ExistDay"] = 30
-- 工具下架 tRankingFunc_Info[25792]["Mail"]["Reward"][1]["Title"] = tSpringFestival2020Nian_Text["Mail"]["Title"]
-- 工具下架 tRankingFunc_Info[25792]["Mail"]["Reward"][1]["Sender"] = tSpringFestival2020Nian_Text["Mail"]["Sender"]
-- 工具下架 tRankingFunc_Info[25792]["Mail"]["Reward"][1]["Content"] = tSpringFestival2020Nian_Text["Mail"]["Content"][1]
-- 工具下架 tRankingFunc_Info[25792]["Mail"]["Reward"][2] = {}
-- 工具下架 tRankingFunc_Info[25792]["Mail"]["Reward"][2]["RewardRank"] = 2
-- 工具下架 tRankingFunc_Info[25792]["Mail"]["Reward"][2]["ActionId"] = 575844
-- 工具下架 tRankingFunc_Info[25792]["Mail"]["Reward"][2]["ExistDay"] = 30
-- 工具下架 tRankingFunc_Info[25792]["Mail"]["Reward"][2]["Title"] = tSpringFestival2020Nian_Text["Mail"]["Title"]
-- 工具下架 tRankingFunc_Info[25792]["Mail"]["Reward"][2]["Sender"] = tSpringFestival2020Nian_Text["Mail"]["Sender"]
-- 工具下架 tRankingFunc_Info[25792]["Mail"]["Reward"][2]["Content"] = tSpringFestival2020Nian_Text["Mail"]["Content"][2]
-- 工具下架 tRankingFunc_Info[25792]["Mail"]["Reward"][3] = {}
-- 工具下架 tRankingFunc_Info[25792]["Mail"]["Reward"][3]["RewardRank"] = 3
-- 工具下架 tRankingFunc_Info[25792]["Mail"]["Reward"][3]["ActionId"] = 575844
-- 工具下架 tRankingFunc_Info[25792]["Mail"]["Reward"][3]["ExistDay"] = 30
-- 工具下架 tRankingFunc_Info[25792]["Mail"]["Reward"][3]["Title"] = tSpringFestival2020Nian_Text["Mail"]["Title"]
-- 工具下架 tRankingFunc_Info[25792]["Mail"]["Reward"][3]["Sender"] = tSpringFestival2020Nian_Text["Mail"]["Sender"]
-- 工具下架 tRankingFunc_Info[25792]["Mail"]["Reward"][3]["Content"] = tSpringFestival2020Nian_Text["Mail"]["Content"][3]
-- 工具下架 tRankingFunc_Info[25792]["Mail"]["Reward"][4] = {}
-- 工具下架 tRankingFunc_Info[25792]["Mail"]["Reward"][4]["RewardRank"] = 4
-- 工具下架 tRankingFunc_Info[25792]["Mail"]["Reward"][4]["ActionId"] = 575845
-- 工具下架 tRankingFunc_Info[25792]["Mail"]["Reward"][4]["ExistDay"] = 30
-- 工具下架 tRankingFunc_Info[25792]["Mail"]["Reward"][4]["Title"] = tSpringFestival2020Nian_Text["Mail"]["Title"]
-- 工具下架 tRankingFunc_Info[25792]["Mail"]["Reward"][4]["Sender"] = tSpringFestival2020Nian_Text["Mail"]["Sender"]
-- 工具下架 tRankingFunc_Info[25792]["Mail"]["Reward"][4]["Content"] = tSpringFestival2020Nian_Text["Mail"]["Content"][4]
-- 工具下架 tRankingFunc_Info[25792]["Mail"]["Reward"][5] = {}
-- 工具下架 tRankingFunc_Info[25792]["Mail"]["Reward"][5]["RewardRank"] = 5
-- 工具下架 tRankingFunc_Info[25792]["Mail"]["Reward"][5]["ActionId"] = 575845
-- 工具下架 tRankingFunc_Info[25792]["Mail"]["Reward"][5]["ExistDay"] = 30
-- 工具下架 tRankingFunc_Info[25792]["Mail"]["Reward"][5]["Title"] = tSpringFestival2020Nian_Text["Mail"]["Title"]
-- 工具下架 tRankingFunc_Info[25792]["Mail"]["Reward"][5]["Sender"] = tSpringFestival2020Nian_Text["Mail"]["Sender"]
-- 工具下架 tRankingFunc_Info[25792]["Mail"]["Reward"][5]["Content"] = tSpringFestival2020Nian_Text["Mail"]["Content"][5]
-- 工具下架 tRankingFunc_Info[25792]["Mail"]["Reward"][6] = {}
-- 工具下架 tRankingFunc_Info[25792]["Mail"]["Reward"][6]["RewardRank"] = 6
-- 工具下架 tRankingFunc_Info[25792]["Mail"]["Reward"][6]["ActionId"] = 575845
-- 工具下架 tRankingFunc_Info[25792]["Mail"]["Reward"][6]["ExistDay"] = 30
-- 工具下架 tRankingFunc_Info[25792]["Mail"]["Reward"][6]["Title"] = tSpringFestival2020Nian_Text["Mail"]["Title"]
-- 工具下架 tRankingFunc_Info[25792]["Mail"]["Reward"][6]["Sender"] = tSpringFestival2020Nian_Text["Mail"]["Sender"]
-- 工具下架 tRankingFunc_Info[25792]["Mail"]["Reward"][6]["Content"] = tSpringFestival2020Nian_Text["Mail"]["Content"][6]
-- 工具下架 tRankingFunc_Info[25792]["Mail"]["Reward"][7] = {}
-- 工具下架 tRankingFunc_Info[25792]["Mail"]["Reward"][7]["RewardRank"] = 7
-- 工具下架 tRankingFunc_Info[25792]["Mail"]["Reward"][7]["ActionId"] = 575846
-- 工具下架 tRankingFunc_Info[25792]["Mail"]["Reward"][7]["ExistDay"] = 30
-- 工具下架 tRankingFunc_Info[25792]["Mail"]["Reward"][7]["Title"] = tSpringFestival2020Nian_Text["Mail"]["Title"]
-- 工具下架 tRankingFunc_Info[25792]["Mail"]["Reward"][7]["Sender"] = tSpringFestival2020Nian_Text["Mail"]["Sender"]
-- 工具下架 tRankingFunc_Info[25792]["Mail"]["Reward"][7]["Content"] = tSpringFestival2020Nian_Text["Mail"]["Content"][7]
-- 工具下架 tRankingFunc_Info[25792]["Mail"]["Reward"][8] = {}
-- 工具下架 tRankingFunc_Info[25792]["Mail"]["Reward"][8]["RewardRank"] = 8
-- 工具下架 tRankingFunc_Info[25792]["Mail"]["Reward"][8]["ActionId"] = 575846
-- 工具下架 tRankingFunc_Info[25792]["Mail"]["Reward"][8]["ExistDay"] = 30
-- 工具下架 tRankingFunc_Info[25792]["Mail"]["Reward"][8]["Title"] = tSpringFestival2020Nian_Text["Mail"]["Title"]
-- 工具下架 tRankingFunc_Info[25792]["Mail"]["Reward"][8]["Sender"] = tSpringFestival2020Nian_Text["Mail"]["Sender"]
-- 工具下架 tRankingFunc_Info[25792]["Mail"]["Reward"][8]["Content"] = tSpringFestival2020Nian_Text["Mail"]["Content"][8]
-- 工具下架 tRankingFunc_Info[25792]["Mail"]["Reward"][9] = {}
-- 工具下架 tRankingFunc_Info[25792]["Mail"]["Reward"][9]["RewardRank"] = 9
-- 工具下架 tRankingFunc_Info[25792]["Mail"]["Reward"][9]["ActionId"] = 575846
-- 工具下架 tRankingFunc_Info[25792]["Mail"]["Reward"][9]["ExistDay"] = 30
-- 工具下架 tRankingFunc_Info[25792]["Mail"]["Reward"][9]["Title"] = tSpringFestival2020Nian_Text["Mail"]["Title"]
-- 工具下架 tRankingFunc_Info[25792]["Mail"]["Reward"][9]["Sender"] = tSpringFestival2020Nian_Text["Mail"]["Sender"]
-- 工具下架 tRankingFunc_Info[25792]["Mail"]["Reward"][9]["Content"] = tSpringFestival2020Nian_Text["Mail"]["Content"][9]
-- 工具下架 tRankingFunc_Info[25792]["Mail"]["Reward"][10] = {}
-- 工具下架 tRankingFunc_Info[25792]["Mail"]["Reward"][10]["RewardRank"] = 10
-- 工具下架 tRankingFunc_Info[25792]["Mail"]["Reward"][10]["ActionId"] = 575846
-- 工具下架 tRankingFunc_Info[25792]["Mail"]["Reward"][10]["ExistDay"] = 30
-- 工具下架 tRankingFunc_Info[25792]["Mail"]["Reward"][10]["Title"] = tSpringFestival2020Nian_Text["Mail"]["Title"]
-- 工具下架 tRankingFunc_Info[25792]["Mail"]["Reward"][10]["Sender"] = tSpringFestival2020Nian_Text["Mail"]["Sender"]
-- 工具下架 tRankingFunc_Info[25792]["Mail"]["Reward"][10]["Content"] = tSpringFestival2020Nian_Text["Mail"]["Content"][10]
