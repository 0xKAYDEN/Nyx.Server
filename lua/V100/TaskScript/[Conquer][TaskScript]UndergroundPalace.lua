------------------------------------------------------------------------------------
--Name:		170411[简体征服][活动脚本]150级新地宫制作
--Purpose:		150级新地宫制作
--Creator:		许乐
--Created:		2017/04/11
------------------------------------------------------------------------------------
-- 前缀
-- UndergroundPalace_
-----------------------------------------------------------
-- stc掩码说明          
-- stc(159,33)		每日使用六阳聚神丹的次数限制
-- stc(159,34)		参与击杀boss的玩家 每天限制给予5次
-- stc(159,35)		参与击杀跨服小boss的玩家 获得的参与礼包每天限制使用2次
-- stc(159,68)		上线 显示版本页面
-- stc(159,82)		获得的参与礼包每天限制使用5次(前四次与第五次使用获得的内容有区别)
-- stc(159,83)		每日使用高级经验球的次数 30次

-- logid: 18000153
---------------------------------------------------------------
local tUndergroundPalace_Cont = {}
	-- 神龙岛地图ID
	tUndergroundPalace_Cont["MapId"] = 10137
	
	-- 神龙岛怪物刷新时间 改为10:00-23:59
	tUndergroundPalace_Cont["BossTime"] = {}
	tUndergroundPalace_Cont["BossTime"][1] = "10:00 23:59"
	-- tUndergroundPalace_Cont["BossTime"][2] = "00:00 01:59"

	-- 新版本弹框页面
	tUndergroundPalace_Cont["Title"] = 1013
	--无赠品服
	tUndergroundPalace_Cont["NoGiftTitle"] = 1027
	-- 上线控制掩码
	tUndergroundPalace_Cont["Stc"] = {}
	tUndergroundPalace_Cont["Stc"]["Data"] = 159
	tUndergroundPalace_Cont["Stc"]["Type"] = 68

	-- 记录boss当前刷新的位置
	tUndergroundPalace_Cont["Global"] = 51525
	
	tUndergroundPalace_Cont["Level"] = 130
	
	tUndergroundPalace_Cont["LevelLimit"] = 110
	tUndergroundPalace_Cont["Meto"] = 1
	
	tUndergroundPalace_Cont["RewardItem"] = 728596		-- 九转聚神丹碎片（728596）
	tUndergroundPalace_Cont["NeedNum"] = 10		-- 低级九转丹碎片 10合1
	
	-- 排行榜数量
	tUndergroundPalace_Cont["RankTotal"] = 10
	
	-- 驿站老板传送
	tUndergroundPalace_Cont["Range"] = 3
	tUndergroundPalace_Cont["ToPlace"] = {}
	tUndergroundPalace_Cont["ToPlace"][1] = {1002,410,354}
	tUndergroundPalace_Cont["ToPlace"][2] = {1002,343,439}
	
	-- 跨服大boss刷出时，将对应npc移走，怪物不在是，npc刷出来
	tUndergroundPalace_Cont["MoveNpc"] = {}
	tUndergroundPalace_Cont["MoveNpc"][1] = {5000,105,105,20502}
	tUndergroundPalace_Cont["MoveNpc"][2] = {10138,187,186,20502}

local tUndergroundPalace_Medicine = {}
	tUndergroundPalace_Medicine["Secs"] = 80

	-- 3004182	神龙之泪
	tUndergroundPalace_Medicine[3004182] = {}
	tUndergroundPalace_Medicine[3004182]["StatusType"] = {54}
	tUndergroundPalace_Medicine[3004182]["StatusPower"] = {200}
	-- 3004230	神龙超能药水	
	tUndergroundPalace_Medicine[3004230] = {}
	tUndergroundPalace_Medicine[3004230]["StatusType"] = {54,136,134,133,137,135,143,144,141,142}
	tUndergroundPalace_Medicine[3004230]["StatusPower"] = {200,150,150,150,150,150,3000,3000,3000,3000}
	-- 3004231	神龙粉碎药水	
	tUndergroundPalace_Medicine[3004231] = {}
	tUndergroundPalace_Medicine[3004231]["StatusType"] = {136}
	tUndergroundPalace_Medicine[3004231]["StatusPower"] = {150}
	-- 3004232	神龙暴击药水	
	tUndergroundPalace_Medicine[3004232] = {}
	tUndergroundPalace_Medicine[3004232]["StatusType"] = {134,133}
	tUndergroundPalace_Medicine[3004232]["StatusPower"] = {150,150}
	-- 3004233	神龙坚固药水	
	tUndergroundPalace_Medicine[3004233] = {}
	tUndergroundPalace_Medicine[3004233]["StatusType"] = {137}
	tUndergroundPalace_Medicine[3004233]["StatusPower"] = {150}
	-- 3004234	神龙防暴药水	
	tUndergroundPalace_Medicine[3004234] = {}
	tUndergroundPalace_Medicine[3004234]["StatusType"] = {135}
	tUndergroundPalace_Medicine[3004234]["StatusPower"] = {150}
	-- 3004235	神龙物伤药水	
	tUndergroundPalace_Medicine[3004235] = {}
	tUndergroundPalace_Medicine[3004235]["StatusType"] = {143}
	tUndergroundPalace_Medicine[3004235]["StatusPower"] = {3000}
	-- 3004236	神龙法伤药水	
	tUndergroundPalace_Medicine[3004236] = {}
	tUndergroundPalace_Medicine[3004236]["StatusType"] = {144}
	tUndergroundPalace_Medicine[3004236]["StatusPower"] = {3000}
	-- 3004237	神龙物抗药水	
	tUndergroundPalace_Medicine[3004237] = {}
	tUndergroundPalace_Medicine[3004237]["StatusType"] = {141}
	tUndergroundPalace_Medicine[3004237]["StatusPower"] = {3000}
	-- 3004238	神龙法抗药水	
	tUndergroundPalace_Medicine[3004238] = {}
	tUndergroundPalace_Medicine[3004238]["StatusType"] = {142}
	tUndergroundPalace_Medicine[3004238]["StatusPower"] = {3000}
	
-- 传送地点
local tUndergroundPalace_Trans = {}
	tUndergroundPalace_Trans["Bound"] = 5
	-- 9998	日常任务大使  1036	230	180
	tUndergroundPalace_Trans[9998] = {}
	tUndergroundPalace_Trans[9998]["MapId"] = 1002 --1036
	tUndergroundPalace_Trans[9998]["CellX"] = 277 --230
	tUndergroundPalace_Trans[9998]["CellY"] = 474 --180
	-- 2000	摩云真人	 	1036	291	225
	tUndergroundPalace_Trans[2000] = {}
	tUndergroundPalace_Trans[2000]["MapId"] = 1002 --1036
	tUndergroundPalace_Trans[2000]["CellX"] = 251 --291
	tUndergroundPalace_Trans[2000]["CellY"] = 478 --225
	-- 通过npc进入新地宫 
	tUndergroundPalace_Trans[20499] = {}
	tUndergroundPalace_Trans[20499]["MapId"] = 10137
	tUndergroundPalace_Trans[20499]["CellX"] = 93
	tUndergroundPalace_Trans[20499]["CellY"] = 408
	-- 去往跨服地图
	tUndergroundPalace_Trans[20501] = {}
	tUndergroundPalace_Trans[20501]["MapId"] = 10137
	tUndergroundPalace_Trans[20501]["CellX"] = 453
	tUndergroundPalace_Trans[20501]["CellY"] = 480
	-- 去往潜龙渊
	tUndergroundPalace_Trans[20823] = {}
	tUndergroundPalace_Trans[20823]["MapId"] = 10137
	tUndergroundPalace_Trans[20823]["CellX"] = 453
	tUndergroundPalace_Trans[20823]["CellY"] = 480
	
	-- 回到安全区
	tUndergroundPalace_Trans["Safe"] = {}
	tUndergroundPalace_Trans["Safe"]["MapId"] = 10137
	tUndergroundPalace_Trans["Safe"]["CellX"] = 102
	tUndergroundPalace_Trans["Safe"]["CellY"] = 408
	
	-- 驿站老板寻路到 
	tUndergroundPalace_Trans[1] = {}
	tUndergroundPalace_Trans[1]["MapId"] = 1002
	tUndergroundPalace_Trans[1]["CellX"] = 577
	tUndergroundPalace_Trans[1]["CellY"] = 586
	
	-- 姬无命 20501
	tUndergroundPalace_Trans["Back"] = {}
	tUndergroundPalace_Trans["Back"]["MapId"] = 10137
	tUndergroundPalace_Trans["Back"]["CellX"] = 453
	tUndergroundPalace_Trans["Back"]["CellY"] = 480	
	-- 啸海巨魔 4220
	tUndergroundPalace_Trans[4220] = {}
	tUndergroundPalace_Trans[4220]["MapId"] = 10137
	tUndergroundPalace_Trans[4220]["CellX"] = 568
	tUndergroundPalace_Trans[4220]["CellY"] = 372
	-- 禁天妖兽	4212
	tUndergroundPalace_Trans[4212] = {}
	tUndergroundPalace_Trans[4212]["MapId"] = 10137
	tUndergroundPalace_Trans[4212]["CellX"] = 658
	tUndergroundPalace_Trans[4212]["CellY"] = 718
	-- 晶魄雪妖	4171
	tUndergroundPalace_Trans[4171] = {}
	tUndergroundPalace_Trans[4171]["MapId"] = 10137
	tUndergroundPalace_Trans[4171]["CellX"] = 349
	tUndergroundPalace_Trans[4171]["CellY"] = 635
	-- 瑶姬 3970
	tUndergroundPalace_Trans[3970] = {}
	tUndergroundPalace_Trans[3970]["MapId"] = 10138
	tUndergroundPalace_Trans[3970]["CellX"] = 187
	tUndergroundPalace_Trans[3970]["CellY"] = 186
	
-- 邮件发奖
local tUndergroundPalace_SendMail = {}
	tUndergroundPalace_SendMail["ExistDay"] = 30 --持续天数
	-- 啸海巨魔 伤害排名奖励
	tUndergroundPalace_SendMail[4220] = {}
	tUndergroundPalace_SendMail[4220][1] = 565393
	tUndergroundPalace_SendMail[4220][2] = 565394
	tUndergroundPalace_SendMail[4220][3] = 565394
	tUndergroundPalace_SendMail[4220][4] = 565395
	tUndergroundPalace_SendMail[4220][5] = 565395
	tUndergroundPalace_SendMail[4220][6] = 565395
	tUndergroundPalace_SendMail[4220][7] = 565395
	tUndergroundPalace_SendMail[4220][8] = 565395
	tUndergroundPalace_SendMail[4220][9] = 565395
	tUndergroundPalace_SendMail[4220][10] = 565395
	
	-- 禁天妖兽  伤害排名奖励
	tUndergroundPalace_SendMail[4212] = {}
	tUndergroundPalace_SendMail[4212][1] = 565396
	tUndergroundPalace_SendMail[4212][2] = 565397
	tUndergroundPalace_SendMail[4212][3] = 565397
	tUndergroundPalace_SendMail[4212][4] = 565398
	tUndergroundPalace_SendMail[4212][5] = 565398
	tUndergroundPalace_SendMail[4212][6] = 565398
	tUndergroundPalace_SendMail[4212][7] = 565398
	tUndergroundPalace_SendMail[4212][8] = 565398
	tUndergroundPalace_SendMail[4212][9] = 565398
	tUndergroundPalace_SendMail[4212][10] = 565398

	-- 晶魄雪妖 伤害排名奖励
	tUndergroundPalace_SendMail[4171] = {}
	tUndergroundPalace_SendMail[4171][1] = 565399
	tUndergroundPalace_SendMail[4171][2] = 565400
	tUndergroundPalace_SendMail[4171][3] = 565400
	tUndergroundPalace_SendMail[4171][4] = 565401
	tUndergroundPalace_SendMail[4171][5] = 565401
	tUndergroundPalace_SendMail[4171][6] = 565401
	tUndergroundPalace_SendMail[4171][7] = 565401
	tUndergroundPalace_SendMail[4171][8] = 565401
	tUndergroundPalace_SendMail[4171][9] = 565401
	tUndergroundPalace_SendMail[4171][10] = 565401
	
	-- 异域邪龙 伤害排名奖励
	tUndergroundPalace_SendMail[3971] = {}
	tUndergroundPalace_SendMail[3971][1] = 565402
	tUndergroundPalace_SendMail[3971][2] = 565403
	tUndergroundPalace_SendMail[3971][3] = 565403
	tUndergroundPalace_SendMail[3971][4] = 565404
	tUndergroundPalace_SendMail[3971][5] = 565404
	tUndergroundPalace_SendMail[3971][6] = 565404
	tUndergroundPalace_SendMail[3971][7] = 565404
	tUndergroundPalace_SendMail[3971][8] = 565404
	tUndergroundPalace_SendMail[3971][9] = 565404
	tUndergroundPalace_SendMail[3971][10] = 565404
	
	-- 妖后 伤害排名奖励
	tUndergroundPalace_SendMail[3970] = {}
	tUndergroundPalace_SendMail[3970][1] = 565405
	tUndergroundPalace_SendMail[3970][2] = 565406
	tUndergroundPalace_SendMail[3970][3] = 565406
	tUndergroundPalace_SendMail[3970][4] = 565407
	tUndergroundPalace_SendMail[3970][5] = 565407
	tUndergroundPalace_SendMail[3970][6] = 565407
	tUndergroundPalace_SendMail[3970][7] = 565407
	tUndergroundPalace_SendMail[3970][8] = 565407
	tUndergroundPalace_SendMail[3970][9] = 565407
	tUndergroundPalace_SendMail[3970][10] = 565407
	
	-- 参与奖礼包
	tUndergroundPalace_SendMail["Join"] = {}
	tUndergroundPalace_SendMail["Join"][1] = 565415  -- 普通
	-- tUndergroundPalace_SendMail["Join"][2] = 565417  -- 跨服小boss
	-- tUndergroundPalace_SendMail["Join"][3] = 565416  -- 跨服大boss
	
	-- -- 跨服boss获得礼包 背包满发邮件
	-- tUndergroundPalace_SendMail["Drop"] = {}
	-- tUndergroundPalace_SendMail["Drop"][3971] = 565411  -- 邪龙
	-- tUndergroundPalace_SendMail["Drop"][3970] = 565412  -- 瑶姬
	
local tUndergroundPalace_BrushBoss = {}
	tUndergroundPalace_BrushBoss["NewPlace"] = 10137
	tUndergroundPalace_BrushBoss["MapId"] = 10138
	
	tUndergroundPalace_BrushBoss["MonsterId"] = {}
	-- 啸海巨魔	4220  每个小时的15分和45分	568,372
	tUndergroundPalace_BrushBoss["MonsterId"][1] = 4220
	tUndergroundPalace_BrushBoss[4220] = {}
	tUndergroundPalace_BrushBoss[4220]["PosX"] = {589,615,568}
	tUndergroundPalace_BrushBoss[4220]["PosY"] = {396,368,372}
	tUndergroundPalace_BrushBoss[4220]["GenId"] = 21478
	-- 禁天妖兽 	4212  每个小时的00分和30分	349,613
	tUndergroundPalace_BrushBoss["MonsterId"][2] = 4212
	tUndergroundPalace_BrushBoss[4212] = {}
	tUndergroundPalace_BrushBoss[4212]["PosX"] = {284,358,349}
	tUndergroundPalace_BrushBoss[4212]["PosY"] = {570,583,635}
	tUndergroundPalace_BrushBoss[4212]["GenId"] = 21479
	-- 晶魄雪妖	4171  每个小时的27分和57分	671,683
	tUndergroundPalace_BrushBoss["MonsterId"][3] = 4171
	tUndergroundPalace_BrushBoss[4171] = {}
	tUndergroundPalace_BrushBoss[4171]["PosX"] = {658,652,734}
	tUndergroundPalace_BrushBoss[4171]["PosY"] = {718,656,670}
	tUndergroundPalace_BrushBoss[4171]["GenId"] = 21480
	-- 4151 熔岩狂魔
	tUndergroundPalace_BrushBoss["MonsterId"][4] = 4151
	tUndergroundPalace_BrushBoss[4151] = {}
	tUndergroundPalace_BrushBoss[4151]["PosX"] = 172
	tUndergroundPalace_BrushBoss[4151]["PosY"] = 470	
	tUndergroundPalace_BrushBoss[4151]["GenId"] = 21481
	-- 异域邪龙（跨服）  3971
	tUndergroundPalace_BrushBoss["BossId"] = 3971
	tUndergroundPalace_BrushBoss[3971] = {}
	tUndergroundPalace_BrushBoss[3971]["PosX"] = {108,136,247,310,211}
	tUndergroundPalace_BrushBoss[3971]["PosY"] = {132,244,278,211,109}
	tUndergroundPalace_BrushBoss[3971]["GenId"] = 21482
	-- 瑶姬 3970
	tUndergroundPalace_BrushBoss["BigBossId"] = 3970
	tUndergroundPalace_BrushBoss[3970] = {}
	tUndergroundPalace_BrushBoss[3970]["PosX"] = 187
	tUndergroundPalace_BrushBoss[3970]["PosY"] = 186
	tUndergroundPalace_BrushBoss[3970]["GenId"] = 21483
	
local tUndergroundPalace_Stc = {}
	tUndergroundPalace_Stc["EventType"] = {}
	tUndergroundPalace_Stc["DataType"] = {}
	-- stc(159,33)		每日使用低级九转丹的次数限制
	tUndergroundPalace_Stc["EventType"][1] = 159
	tUndergroundPalace_Stc["DataType"][1] = 33
	-- stc(159,34)		参与击杀boss的玩家 每天限制给予5次
	tUndergroundPalace_Stc["EventType"][2] = 159
	tUndergroundPalace_Stc["DataType"][2] = 34
	-- stc(159,35)		参与击杀跨服小boss的玩家 获得的参与礼包每天限制使用2次
	tUndergroundPalace_Stc["EventType"][3] = 159
	tUndergroundPalace_Stc["DataType"][3] = 35
		-- stc(159,82)		获得的参与礼包每天限制使用5次(前四次与第五次使用获得的内容有区别)
	tUndergroundPalace_Stc["EventType"][4] = 159
	tUndergroundPalace_Stc["DataType"][4] = 82
	-- stc(159,83)		每日使用高级经验球的次数 30次
	tUndergroundPalace_Stc["EventType"][5] = 159
	tUndergroundPalace_Stc["DataType"][5] = 83
	
-- 使用六阳聚神丹，141级后每级效果递减1%，到149级后为1%
-- local tUndergroundPalace_Percent = {}
	-- tUndergroundPalace_Percent[140] = 10
	-- tUndergroundPalace_Percent[141] = 9
	-- tUndergroundPalace_Percent[142] = 8
	-- tUndergroundPalace_Percent[143] = 7
	-- tUndergroundPalace_Percent[144] = 6
	-- tUndergroundPalace_Percent[145] = 5
	-- tUndergroundPalace_Percent[146] = 4
	-- tUndergroundPalace_Percent[147] = 3
	-- tUndergroundPalace_Percent[148] = 2
	-- tUndergroundPalace_Percent[149] = 1

-- 低级九转丹碎片  3303101
local tUndergroundPalace_Scrap = {}
	-- 合成
	tUndergroundPalace_Scrap["Compound"] = {}
	-- 给非赠的
	tUndergroundPalace_Scrap["Compound"]["Normal"] = {}
	tUndergroundPalace_Scrap["Compound"]["Normal"]["RewardItem"] = {}
	tUndergroundPalace_Scrap["Compound"]["Normal"]["RewardItem"][1] = {}
	tUndergroundPalace_Scrap["Compound"]["Normal"]["RewardItem"][1]["Id"] = 3304327
	tUndergroundPalace_Scrap["Compound"]["Normal"]["RewardItem"][1]["Attr"] = "0 1"
	tUndergroundPalace_Scrap["Compound"]["Normal"]["Log"] = "0,0,3303101,1,18000153,1[1],3304327,1"
	-- 给赠的
	tUndergroundPalace_Scrap["Compound"]["Zeng"] = {}
	tUndergroundPalace_Scrap["Compound"]["Zeng"]["RewardItem"] = {}
	tUndergroundPalace_Scrap["Compound"]["Zeng"]["RewardItem"][1] = {}
	tUndergroundPalace_Scrap["Compound"]["Zeng"]["RewardItem"][1]["Id"] = 3304327
	tUndergroundPalace_Scrap["Compound"]["Zeng"]["RewardItem"][1]["Attr"] = "0 1 3"	
	tUndergroundPalace_Scrap["Compound"]["Zeng"]["Log"] = "0,0,3303101,1,18000153,1[2],3304327,1"
	
	-- 1个碎片赌
	tUndergroundPalace_Scrap["Bet"] = {}
	-- 给非赠的
	tUndergroundPalace_Scrap["Bet"]["Normal"] = {}
	tUndergroundPalace_Scrap["Bet"]["Normal"]["RewardItem"] = {}
	tUndergroundPalace_Scrap["Bet"]["Normal"]["RewardItem"][1] = {}
	tUndergroundPalace_Scrap["Bet"]["Normal"]["RewardItem"][1]["Id"] = 3304327
	tUndergroundPalace_Scrap["Bet"]["Normal"]["RewardItem"][1]["Attr"] = "0 1"
	tUndergroundPalace_Scrap["Bet"]["Normal"]["Log"] = "0,0,3303101,1,18000153,1[3],3304327,1"
	-- 给赠的
	tUndergroundPalace_Scrap["Bet"]["Zeng"] = {}
	tUndergroundPalace_Scrap["Bet"]["Zeng"]["RewardItem"] = {}
	tUndergroundPalace_Scrap["Bet"]["Zeng"]["RewardItem"][1] = {}
	tUndergroundPalace_Scrap["Bet"]["Zeng"]["RewardItem"][1]["Id"] = 3304327
	tUndergroundPalace_Scrap["Bet"]["Zeng"]["RewardItem"][1]["Attr"] = "0 1 3"	
	tUndergroundPalace_Scrap["Bet"]["Zeng"]["Log"] = "0,0,3303101,1,18000153,1[4],3304327,1"
	-- 失败
	tUndergroundPalace_Scrap["Bet"]["Fail"] = {}
	tUndergroundPalace_Scrap["Bet"]["Fail"]["RewardItem"] = {}
	tUndergroundPalace_Scrap["Bet"]["Fail"]["Log"] = "0,0,3303101,1,18000153,1[5],0,0"
	
	-- 3004260		神魂卷轴
	tUndergroundPalace_Scrap[3004260] = {}
	-- 合成珍贵神魂礼包
	tUndergroundPalace_Scrap[3004260][1] = {}
	tUndergroundPalace_Scrap[3004260][1]["RewardItem"] = {}
	tUndergroundPalace_Scrap[3004260][1]["RewardItem"][1] = {}
	tUndergroundPalace_Scrap[3004260][1]["RewardItem"][1]["Id"] = 720957
	tUndergroundPalace_Scrap[3004260][1]["RewardItem"][1]["Attr"] = "0 1"
	tUndergroundPalace_Scrap[3004260][1]["Log"] = "0,0,3004260,7,10002227,2,720957,1"
	tUndergroundPalace_Scrap[3004260][1]["Talk"] = tUndergroundPalace_Text[3004260]["GetItem"]
	-- 一键兑换经验
	-- 给经验
	tUndergroundPalace_Scrap[3004260][2] = {}
	tUndergroundPalace_Scrap[3004260][2]["RewardExpTime"] = {}
	tUndergroundPalace_Scrap[3004260][2]["RewardExpTime"]["Value"] = 30
	tUndergroundPalace_Scrap[3004260][2]["Log"] = "0,0,3004260,%d,10002227,2,4,%d"
	-- 给修行值
	tUndergroundPalace_Scrap[3004260][3] = {}
	tUndergroundPalace_Scrap[3004260][3]["RewardCultivation"] = {}
	tUndergroundPalace_Scrap[3004260][3]["RewardCultivation"]["Value"] = 15
	tUndergroundPalace_Scrap[3004260][3]["Log"] = "0,0,3004260,%d,10002227,2,6,%d"
	
-- 击杀怪物奖励
local tUndergroundPalace_MonsterDrop = {}
	-- 小怪掉落
	tUndergroundPalace_MonsterDrop["Small"] = {}
	tUndergroundPalace_MonsterDrop["Small"][1] = {}
	tUndergroundPalace_MonsterDrop["Small"][1]["Space"] = 1
	tUndergroundPalace_MonsterDrop["Small"][1]["ItemChanceSum"] = 100000
	-- 0.10%	高级经验球（新做）*1  3303407
	tUndergroundPalace_MonsterDrop["Small"][1][1] = {}
	tUndergroundPalace_MonsterDrop["Small"][1][1]["RandomItemChanceType"] = 2
	tUndergroundPalace_MonsterDrop["Small"][1][1]["ItemChance"] = 100
	tUndergroundPalace_MonsterDrop["Small"][1][1]["RewardItem"] = {}
	tUndergroundPalace_MonsterDrop["Small"][1][1]["RewardItem"][1] = {}
	tUndergroundPalace_MonsterDrop["Small"][1][1]["RewardItem"][1]["Id"] = 3303407
	tUndergroundPalace_MonsterDrop["Small"][1][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tUndergroundPalace_MonsterDrop["Small"][1][1]["Log"] = "0,0,0,0,18000153,2,3303407,1"
	-- 神龙药水 各0.01%  	3004182  0.01%
	tUndergroundPalace_MonsterDrop["Small"][1][2] = {}
	tUndergroundPalace_MonsterDrop["Small"][1][2]["RandomItemChanceType"] = 2
	tUndergroundPalace_MonsterDrop["Small"][1][2]["ItemChance"] = 10
	tUndergroundPalace_MonsterDrop["Small"][1][2]["RewardItem"] = {}
	tUndergroundPalace_MonsterDrop["Small"][1][2]["RewardItem"][1] = {}
	tUndergroundPalace_MonsterDrop["Small"][1][2]["RewardItem"][1]["Id"] = 3004182
	tUndergroundPalace_MonsterDrop["Small"][1][2]["RewardItem"][1]["Attr"] = "0 1"
	tUndergroundPalace_MonsterDrop["Small"][1][2]["Log"] = "0,0,0,0,18000153,2,3004182,1"
	-- 	3004230  0.01%
	tUndergroundPalace_MonsterDrop["Small"][1][3] = {}
	tUndergroundPalace_MonsterDrop["Small"][1][3]["RandomItemChanceType"] = 2
	tUndergroundPalace_MonsterDrop["Small"][1][3]["ItemChance"] = 10
	tUndergroundPalace_MonsterDrop["Small"][1][3]["RewardItem"] = {}
	tUndergroundPalace_MonsterDrop["Small"][1][3]["RewardItem"][1] = {}
	tUndergroundPalace_MonsterDrop["Small"][1][3]["RewardItem"][1]["Id"] = 3004230
	tUndergroundPalace_MonsterDrop["Small"][1][3]["RewardItem"][1]["Attr"] = "0 1"
	tUndergroundPalace_MonsterDrop["Small"][1][3]["Log"] = "0,0,0,0,18000153,2,3004230,1"
	-- 	3004231  0.01%
	tUndergroundPalace_MonsterDrop["Small"][1][4] = {}
	tUndergroundPalace_MonsterDrop["Small"][1][4]["RandomItemChanceType"] = 2
	tUndergroundPalace_MonsterDrop["Small"][1][4]["ItemChance"] = 10
	tUndergroundPalace_MonsterDrop["Small"][1][4]["RewardItem"] = {}
	tUndergroundPalace_MonsterDrop["Small"][1][4]["RewardItem"][1] = {}
	tUndergroundPalace_MonsterDrop["Small"][1][4]["RewardItem"][1]["Id"] = 3004231
	tUndergroundPalace_MonsterDrop["Small"][1][4]["RewardItem"][1]["Attr"] = "0 1"
	tUndergroundPalace_MonsterDrop["Small"][1][4]["Log"] = "0,0,0,0,18000153,2,3004231,1"
	-- 	3004232  0.01%
	tUndergroundPalace_MonsterDrop["Small"][1][5] = {}
	tUndergroundPalace_MonsterDrop["Small"][1][5]["RandomItemChanceType"] = 2
	tUndergroundPalace_MonsterDrop["Small"][1][5]["ItemChance"] = 10
	tUndergroundPalace_MonsterDrop["Small"][1][5]["RewardItem"] = {}
	tUndergroundPalace_MonsterDrop["Small"][1][5]["RewardItem"][1] = {}
	tUndergroundPalace_MonsterDrop["Small"][1][5]["RewardItem"][1]["Id"] = 3004232
	tUndergroundPalace_MonsterDrop["Small"][1][5]["RewardItem"][1]["Attr"] = "0 1"
	tUndergroundPalace_MonsterDrop["Small"][1][5]["Log"] = "0,0,0,0,18000153,2,3004232,1"
	-- 	3004233  0.01%
	tUndergroundPalace_MonsterDrop["Small"][1][6] = {}
	tUndergroundPalace_MonsterDrop["Small"][1][6]["RandomItemChanceType"] = 2
	tUndergroundPalace_MonsterDrop["Small"][1][6]["ItemChance"] = 10
	tUndergroundPalace_MonsterDrop["Small"][1][6]["RewardItem"] = {}
	tUndergroundPalace_MonsterDrop["Small"][1][6]["RewardItem"][1] = {}
	tUndergroundPalace_MonsterDrop["Small"][1][6]["RewardItem"][1]["Id"] = 3004233
	tUndergroundPalace_MonsterDrop["Small"][1][6]["RewardItem"][1]["Attr"] = "0 1"
	tUndergroundPalace_MonsterDrop["Small"][1][6]["Log"] = "0,0,0,0,18000153,2,3004233,1"
	-- 	3004234  0.01%
	tUndergroundPalace_MonsterDrop["Small"][1][7] = {}
	tUndergroundPalace_MonsterDrop["Small"][1][7]["RandomItemChanceType"] = 2
	tUndergroundPalace_MonsterDrop["Small"][1][7]["ItemChance"] = 10
	tUndergroundPalace_MonsterDrop["Small"][1][7]["RewardItem"] = {}
	tUndergroundPalace_MonsterDrop["Small"][1][7]["RewardItem"][1] = {}
	tUndergroundPalace_MonsterDrop["Small"][1][7]["RewardItem"][1]["Id"] = 3004234
	tUndergroundPalace_MonsterDrop["Small"][1][7]["RewardItem"][1]["Attr"] = "0 1"
	tUndergroundPalace_MonsterDrop["Small"][1][7]["Log"] = "0,0,0,0,18000153,2,3004234,1"
	-- 	3004235  0.01%
	tUndergroundPalace_MonsterDrop["Small"][1][8] = {}
	tUndergroundPalace_MonsterDrop["Small"][1][8]["RandomItemChanceType"] = 2
	tUndergroundPalace_MonsterDrop["Small"][1][8]["ItemChance"] = 10
	tUndergroundPalace_MonsterDrop["Small"][1][8]["RewardItem"] = {}
	tUndergroundPalace_MonsterDrop["Small"][1][8]["RewardItem"][1] = {}
	tUndergroundPalace_MonsterDrop["Small"][1][8]["RewardItem"][1]["Id"] = 3004235
	tUndergroundPalace_MonsterDrop["Small"][1][8]["RewardItem"][1]["Attr"] = "0 1"
	tUndergroundPalace_MonsterDrop["Small"][1][8]["Log"] = "0,0,0,0,18000153,2,3004235,1"
	-- 	3004236  0.01%
	tUndergroundPalace_MonsterDrop["Small"][1][9] = {}
	tUndergroundPalace_MonsterDrop["Small"][1][9]["RandomItemChanceType"] = 2
	tUndergroundPalace_MonsterDrop["Small"][1][9]["ItemChance"] = 10
	tUndergroundPalace_MonsterDrop["Small"][1][9]["RewardItem"] = {}
	tUndergroundPalace_MonsterDrop["Small"][1][9]["RewardItem"][1] = {}
	tUndergroundPalace_MonsterDrop["Small"][1][9]["RewardItem"][1]["Id"] = 3004236
	tUndergroundPalace_MonsterDrop["Small"][1][9]["RewardItem"][1]["Attr"] = "0 1"
	tUndergroundPalace_MonsterDrop["Small"][1][9]["Log"] = "0,0,0,0,18000153,2,3004236,1"
	-- 	3004237  0.01%
	tUndergroundPalace_MonsterDrop["Small"][1][10] = {}
	tUndergroundPalace_MonsterDrop["Small"][1][10]["RandomItemChanceType"] = 2
	tUndergroundPalace_MonsterDrop["Small"][1][10]["ItemChance"] = 10
	tUndergroundPalace_MonsterDrop["Small"][1][10]["RewardItem"] = {}
	tUndergroundPalace_MonsterDrop["Small"][1][10]["RewardItem"][1] = {}
	tUndergroundPalace_MonsterDrop["Small"][1][10]["RewardItem"][1]["Id"] = 3004237
	tUndergroundPalace_MonsterDrop["Small"][1][10]["RewardItem"][1]["Attr"] = "0 1"
	tUndergroundPalace_MonsterDrop["Small"][1][10]["Log"] = "0,0,0,0,18000153,2,3004237,1"
	-- 	3004238  0.01%
	tUndergroundPalace_MonsterDrop["Small"][1][11] = {}
	tUndergroundPalace_MonsterDrop["Small"][1][11]["RandomItemChanceType"] = 2
	tUndergroundPalace_MonsterDrop["Small"][1][11]["ItemChance"] = 10
	tUndergroundPalace_MonsterDrop["Small"][1][11]["RewardItem"] = {}
	tUndergroundPalace_MonsterDrop["Small"][1][11]["RewardItem"][1] = {}
	tUndergroundPalace_MonsterDrop["Small"][1][11]["RewardItem"][1]["Id"] = 3004238
	tUndergroundPalace_MonsterDrop["Small"][1][11]["RewardItem"][1]["Attr"] = "0 1"
	tUndergroundPalace_MonsterDrop["Small"][1][11]["Log"] = "0,0,0,0,18000153,2,3004238,1"
	-- 无
	tUndergroundPalace_MonsterDrop["Small"][1][12] = {}
	tUndergroundPalace_MonsterDrop["Small"][1][12]["RandomItemChanceType"] = 2
	tUndergroundPalace_MonsterDrop["Small"][1][12]["ItemChance"] = 99800

	--------------------------------------------------------------测试模块-------------------------------------------------------------
-- tProbabil_Test["MonsterDrop"] = {}
-- tProbabil_Test["MonsterDrop"]["Table"] = tUndergroundPalace_MonsterDrop["Small"]
-- tProbabil_Test["MonsterDrop"]["Index"] = {1}
-- tProbabil_Test["MonsterDrop"]["Times"] = 100000
-- tProbabil_Test["MonsterDrop"]["LogName"] = "测试log"

-- 测试命令
-- /callluafunc </F>Probabil_Main</S>MonsterDrop

	-- 跨服小boss掉落礼包
	tUndergroundPalace_MonsterDrop[3971] = {}
	tUndergroundPalace_MonsterDrop[3971]["RewardItem"] = {}
	tUndergroundPalace_MonsterDrop[3971]["RewardItem"][1] = {}
	tUndergroundPalace_MonsterDrop[3971]["RewardItem"][1]["Id"] = 3600039
	tUndergroundPalace_MonsterDrop[3971]["RewardItem"][1]["Attr"] = "0 1"
	tUndergroundPalace_MonsterDrop[3971]["Log"] = "0,0,0,0,18000153,2,3600039,1"
	
	-- 跨服大boss掉落礼包
	tUndergroundPalace_MonsterDrop[3970] = {}
	tUndergroundPalace_MonsterDrop[3970]["RewardItem"] = {}
	tUndergroundPalace_MonsterDrop[3970]["RewardItem"][1] = {}
	tUndergroundPalace_MonsterDrop[3970]["RewardItem"][1]["Id"] = 3600040
	tUndergroundPalace_MonsterDrop[3970]["RewardItem"][1]["Attr"] = "0 1"
	tUndergroundPalace_MonsterDrop[3970]["Log"] = "0,0,0,0,18000153,2,3600040,1"
	
-- 使用礼包
local tUndergroundPalace_UsePack = {}
	-- 跨服小boss 获得的奖励 礼包  3600039
	tUndergroundPalace_UsePack[3600039] = {}
	tUndergroundPalace_UsePack[3600039][1] = {}
	tUndergroundPalace_UsePack[3600039][1]["Space"] = 1
	tUndergroundPalace_UsePack[3600039][1]["ItemChanceSum"] = 390000
	-- 必得奖励  特殊经验丹（新做）*3    3303017
	-- 高级淬炼礼包*1  720399 	97500/390000
	tUndergroundPalace_UsePack[3600039][1][1] = {}
	tUndergroundPalace_UsePack[3600039][1][1]["RandomItemChanceType"] = 2
	tUndergroundPalace_UsePack[3600039][1][1]["ItemChance"] = 97500
	tUndergroundPalace_UsePack[3600039][1][1]["RewardItem"] = {}
	tUndergroundPalace_UsePack[3600039][1][1]["RewardItem"][1] = {}
	tUndergroundPalace_UsePack[3600039][1][1]["RewardItem"][1]["Id"] = 3303017
	tUndergroundPalace_UsePack[3600039][1][1]["RewardItem"][1]["Attr"] = "0 3"
	tUndergroundPalace_UsePack[3600039][1][1]["RewardItem"][2] = {}
	tUndergroundPalace_UsePack[3600039][1][1]["RewardItem"][2]["Id"] = 720399
	tUndergroundPalace_UsePack[3600039][1][1]["RewardItem"][2]["Attr"] = "0 1"
	tUndergroundPalace_UsePack[3600039][1][1]["Log"] = "0,0,3600039,1,18000153,2,3303017[720399],3[1]"
	-- 必得奖励  特殊经验丹（新做）*3    3303017
	-- 107150/390000	神魂卷轴*1  3004260
	tUndergroundPalace_UsePack[3600039][1][2] = {}
	tUndergroundPalace_UsePack[3600039][1][2]["RandomItemChanceType"] = 2
	tUndergroundPalace_UsePack[3600039][1][2]["ItemChance"] = 107150
	tUndergroundPalace_UsePack[3600039][1][2]["RewardItem"] = {}
	tUndergroundPalace_UsePack[3600039][1][2]["RewardItem"][1] = {}
	tUndergroundPalace_UsePack[3600039][1][2]["RewardItem"][1]["Id"] = 3303017
	tUndergroundPalace_UsePack[3600039][1][2]["RewardItem"][1]["Attr"] = "0 3"
	tUndergroundPalace_UsePack[3600039][1][2]["RewardItem"][2] = {}
	tUndergroundPalace_UsePack[3600039][1][2]["RewardItem"][2]["Id"] = 3004260
	tUndergroundPalace_UsePack[3600039][1][2]["RewardItem"][2]["Attr"] = "0 1"
	tUndergroundPalace_UsePack[3600039][1][2]["Log"] = "0,0,3600039,1,18000153,2,3303017[3004260],3[1]"
	-- 必得奖励  特殊经验丹（新做）*3   3303017
	-- 30030/390000	经验复元丹（新做）*1  3302881
	tUndergroundPalace_UsePack[3600039][1][3] = {}
	tUndergroundPalace_UsePack[3600039][1][3]["RandomItemChanceType"] = 2
	tUndergroundPalace_UsePack[3600039][1][3]["ItemChance"] = 30030
	tUndergroundPalace_UsePack[3600039][1][3]["RewardItem"] = {}
	tUndergroundPalace_UsePack[3600039][1][3]["RewardItem"][1] = {}
	tUndergroundPalace_UsePack[3600039][1][3]["RewardItem"][1]["Id"] = 3303017
	tUndergroundPalace_UsePack[3600039][1][3]["RewardItem"][1]["Attr"] = "0 3"
	tUndergroundPalace_UsePack[3600039][1][3]["RewardItem"][2] = {}
	tUndergroundPalace_UsePack[3600039][1][3]["RewardItem"][2]["Id"] = 3302881
	tUndergroundPalace_UsePack[3600039][1][3]["RewardItem"][2]["Attr"] = "0 1"
	tUndergroundPalace_UsePack[3600039][1][3]["Log"] = "0,0,3600039,1,18000153,2,3303017[3302881],3[1]"
	-- 必得奖励  特殊经验丹（新做）*3    3303017
	-- 117000/390000	灵力精魄（3008735）*1
	tUndergroundPalace_UsePack[3600039][1][4] = {}
	tUndergroundPalace_UsePack[3600039][1][4]["RandomItemChanceType"] = 2
	tUndergroundPalace_UsePack[3600039][1][4]["ItemChance"] = 117000
	tUndergroundPalace_UsePack[3600039][1][4]["RewardItem"] = {}
	tUndergroundPalace_UsePack[3600039][1][4]["RewardItem"][1] = {}
	tUndergroundPalace_UsePack[3600039][1][4]["RewardItem"][1]["Id"] = 3303017
	tUndergroundPalace_UsePack[3600039][1][4]["RewardItem"][1]["Attr"] = "0 3"
	tUndergroundPalace_UsePack[3600039][1][4]["RewardItem"][2] = {}
	tUndergroundPalace_UsePack[3600039][1][4]["RewardItem"][2]["Id"] = 3008735
	tUndergroundPalace_UsePack[3600039][1][4]["RewardItem"][2]["Attr"] = "0 1"
	tUndergroundPalace_UsePack[3600039][1][4]["Log"] = "0,0,3600039,1,18000153,2,3303017[3008735],3[1]"
	-- 必得奖励  特殊经验丹（新做）*3    3303017
	-- 30600/390000	特殊经验丹（新做）*1  3303017
	tUndergroundPalace_UsePack[3600039][1][5] = {}
	tUndergroundPalace_UsePack[3600039][1][5]["RandomItemChanceType"] = 2
	tUndergroundPalace_UsePack[3600039][1][5]["ItemChance"] = 30600
	tUndergroundPalace_UsePack[3600039][1][5]["RewardItem"] = {}
	tUndergroundPalace_UsePack[3600039][1][5]["RewardItem"][1] = {}
	tUndergroundPalace_UsePack[3600039][1][5]["RewardItem"][1]["Id"] = 3303017
	tUndergroundPalace_UsePack[3600039][1][5]["RewardItem"][1]["Attr"] = "0 4"
	tUndergroundPalace_UsePack[3600039][1][5]["Log"] = "0,0,3600039,1,18000153,2,3303017,4"
	-- 必得奖励  特殊经验丹（新做）*3    3303017
	-- 7648/390000	高级特殊经验丹（新做）*1  3303018
	tUndergroundPalace_UsePack[3600039][1][6] = {}
	tUndergroundPalace_UsePack[3600039][1][6]["RandomItemChanceType"] = 2
	tUndergroundPalace_UsePack[3600039][1][6]["ItemChance"] = 7648
	tUndergroundPalace_UsePack[3600039][1][6]["RewardItem"] = {}
	tUndergroundPalace_UsePack[3600039][1][6]["RewardItem"][1] = {}
	tUndergroundPalace_UsePack[3600039][1][6]["RewardItem"][1]["Id"] = 3303017
	tUndergroundPalace_UsePack[3600039][1][6]["RewardItem"][1]["Attr"] = "0 3"
	tUndergroundPalace_UsePack[3600039][1][6]["RewardItem"][2] = {}
	tUndergroundPalace_UsePack[3600039][1][6]["RewardItem"][2]["Id"] = 3303018
	tUndergroundPalace_UsePack[3600039][1][6]["RewardItem"][2]["Attr"] = "0 1"
	tUndergroundPalace_UsePack[3600039][1][6]["Log"] = "0,0,3600039,1,18000153,2,3303017[3303018],3[1]"
	-- 必得奖励  特殊经验丹（新做）*3    3303017
	-- 概率奖励 无
	tUndergroundPalace_UsePack[3600039][1][7] = {}
	tUndergroundPalace_UsePack[3600039][1][7]["RandomItemChanceType"] = 2
	tUndergroundPalace_UsePack[3600039][1][7]["ItemChance"] = 72
	tUndergroundPalace_UsePack[3600039][1][7]["RewardItem"] = {}
	tUndergroundPalace_UsePack[3600039][1][7]["RewardItem"][1] = {}
	tUndergroundPalace_UsePack[3600039][1][7]["RewardItem"][1]["Id"] = 3303017
	tUndergroundPalace_UsePack[3600039][1][7]["RewardItem"][1]["Attr"] = "0 3"
	tUndergroundPalace_UsePack[3600039][1][7]["Log"] = "0,0,3600039,1,18000153,2,3303017,3"
	
	-- 跨服大boss 获得的奖励 礼包 3600040
	tUndergroundPalace_UsePack[3600040] = {}
	tUndergroundPalace_UsePack[3600040][1] = {}
	tUndergroundPalace_UsePack[3600040][1]["Space"] = 1
	tUndergroundPalace_UsePack[3600040][1]["ItemChanceSum"] = 10000
	-- 必得奖励  高级特殊经验丹（新做）*1    3303018
	-- 20%	灵力精魄（3008735）*3
	tUndergroundPalace_UsePack[3600040][1][1] = {}
	tUndergroundPalace_UsePack[3600040][1][1]["RandomItemChanceType"] = 2
	tUndergroundPalace_UsePack[3600040][1][1]["ItemChance"] = 2000
	tUndergroundPalace_UsePack[3600040][1][1]["RewardItem"] = {}
	tUndergroundPalace_UsePack[3600040][1][1]["RewardItem"][1] = {}
	tUndergroundPalace_UsePack[3600040][1][1]["RewardItem"][1]["Id"] = 3303018
	tUndergroundPalace_UsePack[3600040][1][1]["RewardItem"][1]["Attr"] = "0 1"
	tUndergroundPalace_UsePack[3600040][1][1]["RewardItem"][2] = {}
	tUndergroundPalace_UsePack[3600040][1][1]["RewardItem"][2]["Id"] = 3008735
	tUndergroundPalace_UsePack[3600040][1][1]["RewardItem"][2]["Attr"] = "0 3"
	tUndergroundPalace_UsePack[3600040][1][1]["Log"] = "0,0,3600040,1,18000153,2,3303018[3008735],1[3]"
	-- 必得奖励  高级特殊经验丹（新做）*1    3303018
	-- 20%	炽热天石碎片（3008727）*3
	tUndergroundPalace_UsePack[3600040][1][2] = {}
	tUndergroundPalace_UsePack[3600040][1][2]["RandomItemChanceType"] = 2
	tUndergroundPalace_UsePack[3600040][1][2]["ItemChance"] = 2000
	tUndergroundPalace_UsePack[3600040][1][2]["RewardItem"] = {}
	tUndergroundPalace_UsePack[3600040][1][2]["RewardItem"][1] = {}
	tUndergroundPalace_UsePack[3600040][1][2]["RewardItem"][1]["Id"] = 3303018
	tUndergroundPalace_UsePack[3600040][1][2]["RewardItem"][1]["Attr"] = "0 1"
	tUndergroundPalace_UsePack[3600040][1][2]["RewardItem"][2] = {}
	tUndergroundPalace_UsePack[3600040][1][2]["RewardItem"][2]["Id"] = 3008727
	tUndergroundPalace_UsePack[3600040][1][2]["RewardItem"][2]["Attr"] = "0 3"
	tUndergroundPalace_UsePack[3600040][1][2]["Log"] = "0,0,3600040,1,18000153,2,3303018[3008727],1[3]"
	-- 必得奖励  高级特殊经验丹（新做）*1    3303018
	-- 15%	特殊经验丹（新做）*3  3303017
	tUndergroundPalace_UsePack[3600040][1][3] = {}
	tUndergroundPalace_UsePack[3600040][1][3]["RandomItemChanceType"] = 2
	tUndergroundPalace_UsePack[3600040][1][3]["ItemChance"] = 1500
	tUndergroundPalace_UsePack[3600040][1][3]["RewardItem"] = {}
	tUndergroundPalace_UsePack[3600040][1][3]["RewardItem"][1] = {}
	tUndergroundPalace_UsePack[3600040][1][3]["RewardItem"][1]["Id"] = 3303018
	tUndergroundPalace_UsePack[3600040][1][3]["RewardItem"][1]["Attr"] = "0 1"
	tUndergroundPalace_UsePack[3600040][1][3]["RewardItem"][2] = {}
	tUndergroundPalace_UsePack[3600040][1][3]["RewardItem"][2]["Id"] = 3303017
	tUndergroundPalace_UsePack[3600040][1][3]["RewardItem"][2]["Attr"] = "0 3"
	tUndergroundPalace_UsePack[3600040][1][3]["Log"] = "0,0,3600040,1,18000153,2,3303018[3303017],1[3]"
	-- 必得奖励  高级特殊经验丹（新做）*1    3303018
	-- 5%	高级特殊经验丹（新做）*1  3303018
	tUndergroundPalace_UsePack[3600040][1][4] = {}
	tUndergroundPalace_UsePack[3600040][1][4]["RandomItemChanceType"] = 2
	tUndergroundPalace_UsePack[3600040][1][4]["ItemChance"] = 500
	tUndergroundPalace_UsePack[3600040][1][4]["RewardItem"] = {}
	tUndergroundPalace_UsePack[3600040][1][4]["RewardItem"][1] = {}
	tUndergroundPalace_UsePack[3600040][1][4]["RewardItem"][1]["Id"] = 3303018
	tUndergroundPalace_UsePack[3600040][1][4]["RewardItem"][1]["Attr"] = "0 2"
	tUndergroundPalace_UsePack[3600040][1][4]["Log"] = "0,0,3600040,1,18000153,2,3303018,2"
	-- 必得奖励  高级特殊经验丹（新做）*1    3303018
	-- 20%	星月宝盒（3008732）*1
	tUndergroundPalace_UsePack[3600040][1][5] = {}
	tUndergroundPalace_UsePack[3600040][1][5]["RandomItemChanceType"] = 2
	tUndergroundPalace_UsePack[3600040][1][5]["ItemChance"] = 2000
	tUndergroundPalace_UsePack[3600040][1][5]["RewardItem"] = {}
	tUndergroundPalace_UsePack[3600040][1][5]["RewardItem"][1] = {}
	tUndergroundPalace_UsePack[3600040][1][5]["RewardItem"][1]["Id"] = 3303018
	tUndergroundPalace_UsePack[3600040][1][5]["RewardItem"][1]["Attr"] = "0 1"
	tUndergroundPalace_UsePack[3600040][1][5]["RewardItem"][2] = {}
	tUndergroundPalace_UsePack[3600040][1][5]["RewardItem"][2]["Id"] = 3008732
	tUndergroundPalace_UsePack[3600040][1][5]["RewardItem"][2]["Attr"] = "0 1"
	tUndergroundPalace_UsePack[3600040][1][5]["Log"] = "0,0,3600040,1,18000153,2,3303018[3008732],1[1]"
	-- 必得奖励  高级特殊经验丹（新做）*1    3303018
	-- 20%	赤龙除妖令（3200280）*1
	tUndergroundPalace_UsePack[3600040][1][6] = {}
	tUndergroundPalace_UsePack[3600040][1][6]["RandomItemChanceType"] = 2
	tUndergroundPalace_UsePack[3600040][1][6]["ItemChance"] = 2000
	tUndergroundPalace_UsePack[3600040][1][6]["RewardItem"] = {}
	tUndergroundPalace_UsePack[3600040][1][6]["RewardItem"][1] = {}
	tUndergroundPalace_UsePack[3600040][1][6]["RewardItem"][1]["Id"] = 3303018
	tUndergroundPalace_UsePack[3600040][1][6]["RewardItem"][1]["Attr"] = "0 1"
	tUndergroundPalace_UsePack[3600040][1][6]["RewardItem"][2] = {}
	tUndergroundPalace_UsePack[3600040][1][6]["RewardItem"][2]["Id"] = 3200280
	tUndergroundPalace_UsePack[3600040][1][6]["RewardItem"][2]["Attr"] = "0 1"
	tUndergroundPalace_UsePack[3600040][1][6]["Log"] = "0,0,3600040,1,18000153,2,3303018[3200280],1[1]"
	
	-- 伏魔嘉奖包  3600041
	tUndergroundPalace_UsePack[3600041] = {}
	-- 必定获得	
	-- 每天前4次	国境减负令（3303085）*1
	-- 1-5次均获得	高级经验球（赠）（新做）*2  3303407
	tUndergroundPalace_UsePack[3600041][1] = {}
	tUndergroundPalace_UsePack[3600041][1]["RewardItem"] = {}
	tUndergroundPalace_UsePack[3600041][1]["RewardItem"][1] = {}
	tUndergroundPalace_UsePack[3600041][1]["RewardItem"][1]["Id"] = 3303407
	tUndergroundPalace_UsePack[3600041][1]["RewardItem"][1]["Attr"] = "0 2 3"
	tUndergroundPalace_UsePack[3600041][1]["RewardItem"][2] = {}
	tUndergroundPalace_UsePack[3600041][1]["RewardItem"][2]["Id"] = 3303085
	tUndergroundPalace_UsePack[3600041][1]["RewardItem"][2]["Attr"] = "0 1"
	tUndergroundPalace_UsePack[3600041][1]["Log"] = "0,0,3600041,1,18000153,2,3303407[3303085],2[1]"
	-- 每天第5次	日常减负令（3303084）*1
	-- 1-5次均获得	高级经验球（赠）（新做）*2  3303407
	tUndergroundPalace_UsePack[3600041][3] = {}
	tUndergroundPalace_UsePack[3600041][3]["RewardItem"] = {}
	tUndergroundPalace_UsePack[3600041][3]["RewardItem"][1] = {}
	tUndergroundPalace_UsePack[3600041][3]["RewardItem"][1]["Id"] = 3303407
	tUndergroundPalace_UsePack[3600041][3]["RewardItem"][1]["Attr"] = "0 2 3"
	tUndergroundPalace_UsePack[3600041][3]["RewardItem"][2] = {}
	tUndergroundPalace_UsePack[3600041][3]["RewardItem"][2]["Id"] = 3303084
	tUndergroundPalace_UsePack[3600041][3]["RewardItem"][2]["Attr"] = "0 1"
	tUndergroundPalace_UsePack[3600041][3]["Log"] = "0,0,3600041,1,18000153,2,3303407[3303084],2[1]"
	
	-- 概率获得
	tUndergroundPalace_UsePack[3600041][2] = {}
	tUndergroundPalace_UsePack[3600041][2]["Space"] = 3
	tUndergroundPalace_UsePack[3600041][2]["ItemChanceSum"] = 10000
	-- 20%： 100点气力值礼包（3002027）*1
	tUndergroundPalace_UsePack[3600041][2][1] = {}
	tUndergroundPalace_UsePack[3600041][2][1]["RandomItemChanceType"] = 2
	tUndergroundPalace_UsePack[3600041][2][1]["ItemChance"] = 2000
	tUndergroundPalace_UsePack[3600041][2][1]["RewardItem"] = {}
	tUndergroundPalace_UsePack[3600041][2][1]["RewardItem"][1] = {}
	tUndergroundPalace_UsePack[3600041][2][1]["RewardItem"][1]["Id"] = 3002027
	tUndergroundPalace_UsePack[3600041][2][1]["RewardItem"][1]["Attr"] = "0 1"
	tUndergroundPalace_UsePack[3600041][2][1]["Log"] = "0,0,3600041,1,18000153,2,3002027,1"
	-- 20%： 神魂卷轴（3004260）*1
	tUndergroundPalace_UsePack[3600041][2][2] = {}
	tUndergroundPalace_UsePack[3600041][2][2]["RandomItemChanceType"] = 2
	tUndergroundPalace_UsePack[3600041][2][2]["ItemChance"] = 2000
	tUndergroundPalace_UsePack[3600041][2][2]["RewardItem"] = {}
	tUndergroundPalace_UsePack[3600041][2][2]["RewardItem"][1] = {}
	tUndergroundPalace_UsePack[3600041][2][2]["RewardItem"][1]["Id"] = 3004260
	tUndergroundPalace_UsePack[3600041][2][2]["RewardItem"][1]["Attr"] = "0 1"
	tUndergroundPalace_UsePack[3600041][2][2]["Log"] = "0,0,3600041,1,18000153,2,3004260,1"
	-- 20%： 灵力晶魄（3008735）*1
	tUndergroundPalace_UsePack[3600041][2][3] = {}
	tUndergroundPalace_UsePack[3600041][2][3]["RandomItemChanceType"] = 2
	tUndergroundPalace_UsePack[3600041][2][3]["ItemChance"] = 2000
	tUndergroundPalace_UsePack[3600041][2][3]["RewardItem"] = {}
	tUndergroundPalace_UsePack[3600041][2][3]["RewardItem"][1] = {}
	tUndergroundPalace_UsePack[3600041][2][3]["RewardItem"][1]["Id"] = 3008735
	tUndergroundPalace_UsePack[3600041][2][3]["RewardItem"][1]["Attr"] = "0 1"
	tUndergroundPalace_UsePack[3600041][2][3]["Log"] = "0,0,3600041,1,18000153,2,3008735,1"
	-- 20%： 炽热天石碎片（3008727）*1
	tUndergroundPalace_UsePack[3600041][2][4] = {}
	tUndergroundPalace_UsePack[3600041][2][4]["RandomItemChanceType"] = 2
	tUndergroundPalace_UsePack[3600041][2][4]["ItemChance"] = 2000
	tUndergroundPalace_UsePack[3600041][2][4]["RewardItem"] = {}
	tUndergroundPalace_UsePack[3600041][2][4]["RewardItem"][1] = {}
	tUndergroundPalace_UsePack[3600041][2][4]["RewardItem"][1]["Id"] = 3008727
	tUndergroundPalace_UsePack[3600041][2][4]["RewardItem"][1]["Attr"] = "0 1"
	tUndergroundPalace_UsePack[3600041][2][4]["Log"] = "0,0,3600041,1,18000153,2,3008727,1"
	-- 20%： 高级经验球（赠）（新做）*1  3303407
	tUndergroundPalace_UsePack[3600041][2][5] = {}
	tUndergroundPalace_UsePack[3600041][2][5]["RandomItemChanceType"] = 2
	tUndergroundPalace_UsePack[3600041][2][5]["ItemChance"] = 2000
	tUndergroundPalace_UsePack[3600041][2][5]["RewardItem"] = {}
	tUndergroundPalace_UsePack[3600041][2][5]["RewardItem"][1] = {}
	tUndergroundPalace_UsePack[3600041][2][5]["RewardItem"][1]["Id"] = 3303407
	tUndergroundPalace_UsePack[3600041][2][5]["RewardItem"][1]["Attr"] = "0 1 3"
	tUndergroundPalace_UsePack[3600041][2][5]["Log"] = "0,0,3600041,1,18000153,2,3303407,1"
	
	-- 降妖嘉奖包  3600042
	tUndergroundPalace_UsePack[3600042] = {}
	-- 必定获得	
	-- 1个六阳聚神丹碎片（赠） 3303101
	-- 600分钟经验礼包（3200336）*2
	tUndergroundPalace_UsePack[3600042][1] = {}
	tUndergroundPalace_UsePack[3600042][1]["RewardItem"] = {}
	tUndergroundPalace_UsePack[3600042][1]["RewardItem"][1] = {}
	tUndergroundPalace_UsePack[3600042][1]["RewardItem"][1]["Id"] = 3303101
	tUndergroundPalace_UsePack[3600042][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tUndergroundPalace_UsePack[3600042][1]["RewardItem"][2] = {}
	tUndergroundPalace_UsePack[3600042][1]["RewardItem"][2]["Id"] = 3200336
	tUndergroundPalace_UsePack[3600042][1]["RewardItem"][2]["Attr"] = "0 2 0 1440 1"
	tUndergroundPalace_UsePack[3600042][1]["Log"] = "0,0,3600042,1,18000153,2,3303101[3200336],1[2]"
	-- 概率获得
	tUndergroundPalace_UsePack[3600042][2] = {}
	tUndergroundPalace_UsePack[3600042][2]["Space"] = 3
	tUndergroundPalace_UsePack[3600042][2]["ItemChanceSum"] = 10000
	-- 20%炽热天石碎片（3008727）*1
	tUndergroundPalace_UsePack[3600042][2][1] = {}
	tUndergroundPalace_UsePack[3600042][2][1]["RandomItemChanceType"] = 2
	tUndergroundPalace_UsePack[3600042][2][1]["ItemChance"] = 2000
	tUndergroundPalace_UsePack[3600042][2][1]["RewardItem"] = {}
	tUndergroundPalace_UsePack[3600042][2][1]["RewardItem"][1] = {}
	tUndergroundPalace_UsePack[3600042][2][1]["RewardItem"][1]["Id"] = 3008727
	tUndergroundPalace_UsePack[3600042][2][1]["RewardItem"][1]["Attr"] = "0 1"
	tUndergroundPalace_UsePack[3600042][2][1]["Log"] = "0,0,3600042,1,18000153,2,3008727,1"
	-- 20%灵力晶魄（3008735）*1
	tUndergroundPalace_UsePack[3600042][2][2] = {}
	tUndergroundPalace_UsePack[3600042][2][2]["RandomItemChanceType"] = 2
	tUndergroundPalace_UsePack[3600042][2][2]["ItemChance"] = 2000
	tUndergroundPalace_UsePack[3600042][2][2]["RewardItem"] = {}
	tUndergroundPalace_UsePack[3600042][2][2]["RewardItem"][1] = {}
	tUndergroundPalace_UsePack[3600042][2][2]["RewardItem"][1]["Id"] = 3008735
	tUndergroundPalace_UsePack[3600042][2][2]["RewardItem"][1]["Attr"] = "0 1"
	tUndergroundPalace_UsePack[3600042][2][2]["Log"] = "0,0,3600042,1,18000153,2,3008735,1"
	-- 20%日常减负令（新做）*1  3303084
	tUndergroundPalace_UsePack[3600042][2][3] = {}
	tUndergroundPalace_UsePack[3600042][2][3]["RandomItemChanceType"] = 2
	tUndergroundPalace_UsePack[3600042][2][3]["ItemChance"] = 2000
	tUndergroundPalace_UsePack[3600042][2][3]["RewardItem"] = {}
	tUndergroundPalace_UsePack[3600042][2][3]["RewardItem"][1] = {}
	tUndergroundPalace_UsePack[3600042][2][3]["RewardItem"][1]["Id"] = 3303084
	tUndergroundPalace_UsePack[3600042][2][3]["RewardItem"][1]["Attr"] = "0 1"
	tUndergroundPalace_UsePack[3600042][2][3]["Log"] = "0,0,3600042,1,18000153,2,3303084,1"
	-- 20%六阳聚神丹碎片（新做）*1  3303101
	tUndergroundPalace_UsePack[3600042][2][4] = {}
	tUndergroundPalace_UsePack[3600042][2][4]["RandomItemChanceType"] = 2
	tUndergroundPalace_UsePack[3600042][2][4]["ItemChance"] = 2000
	tUndergroundPalace_UsePack[3600042][2][4]["RewardItem"] = {}
	tUndergroundPalace_UsePack[3600042][2][4]["RewardItem"][1] = {}
	tUndergroundPalace_UsePack[3600042][2][4]["RewardItem"][1]["Id"] = 3303101
	tUndergroundPalace_UsePack[3600042][2][4]["RewardItem"][1]["Attr"] = "0 1 3"
	tUndergroundPalace_UsePack[3600042][2][4]["Log"] = "0,0,3600042,1,18000153,2,3303101,1"
	-- 20%特殊经验丹（新做）*1  3303017
	tUndergroundPalace_UsePack[3600042][2][5] = {}
	tUndergroundPalace_UsePack[3600042][2][5]["RandomItemChanceType"] = 2
	tUndergroundPalace_UsePack[3600042][2][5]["ItemChance"] = 2000
	tUndergroundPalace_UsePack[3600042][2][5]["RewardItem"] = {}
	tUndergroundPalace_UsePack[3600042][2][5]["RewardItem"][1] = {}
	tUndergroundPalace_UsePack[3600042][2][5]["RewardItem"][1]["Id"] = 3303017
	tUndergroundPalace_UsePack[3600042][2][5]["RewardItem"][1]["Attr"] = "0 1 3"
	tUndergroundPalace_UsePack[3600042][2][5]["Log"] = "0,0,3600042,1,18000153,2,3303017,1"
	
	-- 伏魔嘉奖包  3600043  使用限制每日2次
	tUndergroundPalace_UsePack[3600043] = {}
	-- 必定获得	
	-- 国境减负令  （新做）  3303085 *1
	-- 600分钟经验礼包（3200336）*1
	tUndergroundPalace_UsePack[3600043][1] = {}
	tUndergroundPalace_UsePack[3600043][1]["RewardItem"] = {}
	tUndergroundPalace_UsePack[3600043][1]["RewardItem"][1] = {}
	tUndergroundPalace_UsePack[3600043][1]["RewardItem"][1]["Id"] = 3303085
	tUndergroundPalace_UsePack[3600043][1]["RewardItem"][1]["Attr"] = "0 1"
	tUndergroundPalace_UsePack[3600043][1]["RewardItem"][2] = {}
	tUndergroundPalace_UsePack[3600043][1]["RewardItem"][2]["Id"] = 3200336
	tUndergroundPalace_UsePack[3600043][1]["RewardItem"][2]["Attr"] = "0 1 0 1440 1"
	tUndergroundPalace_UsePack[3600043][1]["Log"] = "0,0,3600043,1,18000153,2,3303085[3200336],1[1]"
	-- 概率获得
	tUndergroundPalace_UsePack[3600043][2] = {}
	tUndergroundPalace_UsePack[3600043][2]["Space"] = 2
	tUndergroundPalace_UsePack[3600043][2]["ItemChanceSum"] = 10000
	-- 20%神魂卷轴（3004260）*1
	tUndergroundPalace_UsePack[3600043][2][1] = {}
	tUndergroundPalace_UsePack[3600043][2][1]["RandomItemChanceType"] = 2
	tUndergroundPalace_UsePack[3600043][2][1]["ItemChance"] = 2000
	tUndergroundPalace_UsePack[3600043][2][1]["RewardItem"] = {}
	tUndergroundPalace_UsePack[3600043][2][1]["RewardItem"][1] = {}
	tUndergroundPalace_UsePack[3600043][2][1]["RewardItem"][1]["Id"] = 3004260
	tUndergroundPalace_UsePack[3600043][2][1]["RewardItem"][1]["Attr"] = "0 1"
	tUndergroundPalace_UsePack[3600043][2][1]["Log"] = "0,0,3600043,1,18000153,2,3004260,1"
	-- 20%灵力晶魄（3008735）*1
	tUndergroundPalace_UsePack[3600043][2][2] = {}
	tUndergroundPalace_UsePack[3600043][2][2]["RandomItemChanceType"] = 2
	tUndergroundPalace_UsePack[3600043][2][2]["ItemChance"] = 2000
	tUndergroundPalace_UsePack[3600043][2][2]["RewardItem"] = {}
	tUndergroundPalace_UsePack[3600043][2][2]["RewardItem"][1] = {}
	tUndergroundPalace_UsePack[3600043][2][2]["RewardItem"][1]["Id"] = 3008735
	tUndergroundPalace_UsePack[3600043][2][2]["RewardItem"][1]["Attr"] = "0 1"
	tUndergroundPalace_UsePack[3600043][2][2]["Log"] = "0,0,3600043,1,18000153,2,3008735,1"
	-- 20%日常减负令（新做）*1  3303084
	tUndergroundPalace_UsePack[3600043][2][3] = {}
	tUndergroundPalace_UsePack[3600043][2][3]["RandomItemChanceType"] = 2
	tUndergroundPalace_UsePack[3600043][2][3]["ItemChance"] = 2000
	tUndergroundPalace_UsePack[3600043][2][3]["RewardItem"] = {}
	tUndergroundPalace_UsePack[3600043][2][3]["RewardItem"][1] = {}
	tUndergroundPalace_UsePack[3600043][2][3]["RewardItem"][1]["Id"] = 3303084
	tUndergroundPalace_UsePack[3600043][2][3]["RewardItem"][1]["Attr"] = "0 1"
	tUndergroundPalace_UsePack[3600043][2][3]["Log"] = "0,0,3600043,1,18000153,2,3303084,1"
	-- 20%六阳聚神丹碎片（新做）*1  3303101
	tUndergroundPalace_UsePack[3600043][2][4] = {}
	tUndergroundPalace_UsePack[3600043][2][4]["RandomItemChanceType"] = 2
	tUndergroundPalace_UsePack[3600043][2][4]["ItemChance"] = 2000
	tUndergroundPalace_UsePack[3600043][2][4]["RewardItem"] = {}
	tUndergroundPalace_UsePack[3600043][2][4]["RewardItem"][1] = {}
	tUndergroundPalace_UsePack[3600043][2][4]["RewardItem"][1]["Id"] = 3303101
	tUndergroundPalace_UsePack[3600043][2][4]["RewardItem"][1]["Attr"] = "0 1 3"
	tUndergroundPalace_UsePack[3600043][2][4]["Log"] = "0,0,3600043,1,18000153,2,3303101,1"
	-- 20%特殊经验丹（新做）*1  3303017
	tUndergroundPalace_UsePack[3600043][2][5] = {}
	tUndergroundPalace_UsePack[3600043][2][5]["RandomItemChanceType"] = 2
	tUndergroundPalace_UsePack[3600043][2][5]["ItemChance"] = 2000
	tUndergroundPalace_UsePack[3600043][2][5]["RewardItem"] = {}
	tUndergroundPalace_UsePack[3600043][2][5]["RewardItem"][1] = {}
	tUndergroundPalace_UsePack[3600043][2][5]["RewardItem"][1]["Id"] = 3303017
	tUndergroundPalace_UsePack[3600043][2][5]["RewardItem"][1]["Attr"] = "0 1 3"
	tUndergroundPalace_UsePack[3600043][2][5]["Log"] = "0,0,3600043,1,18000153,2,3303017,1"
	
	-- 3303407		高级经验球
	tUndergroundPalace_UsePack[3303407] = {}
	-- 获得120分钟经验，每天限制使用30次
	tUndergroundPalace_UsePack[3303407]["DeleteItem"] = {}
	tUndergroundPalace_UsePack[3303407]["DeleteItem"][1] = {}
	tUndergroundPalace_UsePack[3303407]["DeleteItem"][1]["Id"] = 3303407
	tUndergroundPalace_UsePack[3303407]["RewardExpTime"] = {}
	tUndergroundPalace_UsePack[3303407]["RewardExpTime"]["Value"] = 120
	-- tUndergroundPalace_UsePack[3303407]["RewardExpTime"]["FullIndex"] = "RewardCultivation"
	-- tUndergroundPalace_UsePack[3303407]["RewardExpTime"]["FullValue"] = 60
	tUndergroundPalace_UsePack[3303407]["Log"] = "0,0,3303407,1,18000153,2,4,120"
	-- tUndergroundPalace_UsePack[3303407]["FullLog"] = "0,0,3303407,1,18000153,2,6,60"

-- 怪物配置
local tUndergroundPalace_Monster = {}	
	-- 3971		异域邪龙（跨服） 死亡触发 
	tUndergroundPalace_Monster[3971] = {}
	tUndergroundPalace_Monster[3971]["Cul"] = 50

	-- 3970	瑶姬  死亡触发 
	tUndergroundPalace_Monster[3970] = {}
	tUndergroundPalace_Monster[3970]["Cul"] = 200

-- 加魂值
local tUndergroundPalace_GhostTask = {}
	tUndergroundPalace_GhostTask["Ghost"] = 4
	tUndergroundPalace_GhostTask["TaskId"] = 2375
	tUndergroundPalace_GhostTask["EventType"] = 108
	tUndergroundPalace_GhostTask["DataType"] = 57
	
	tUndergroundPalace_GhostTask["ItemId"] = {}
	tUndergroundPalace_GhostTask["ItemId"][1] = 729611
	tUndergroundPalace_GhostTask["ItemId"][2] = 729612
	tUndergroundPalace_GhostTask["ItemId"][3] = 729613
	tUndergroundPalace_GhostTask["ItemId"][4] = 729614
	tUndergroundPalace_GhostTask["ItemId"][5] = 729703
	
	tUndergroundPalace_GhostTask["Limit"] = {}
	tUndergroundPalace_GhostTask["Limit"][729611] = 2500
	tUndergroundPalace_GhostTask["Limit"][729612] = 2000
	tUndergroundPalace_GhostTask["Limit"][729613] = 1500
	tUndergroundPalace_GhostTask["Limit"][729614] = 1000
	tUndergroundPalace_GhostTask["Limit"][729703] = 500

-- serverId匹配坐标
local tUndergroundPalace_Server = {}
	tUndergroundPalace_Server[1] = {12,14,18}
	tUndergroundPalace_Server[2] = {3,4,8}
	tUndergroundPalace_Server[3] = {1,13,17}
	tUndergroundPalace_Server[4] = {7,9,15}
	tUndergroundPalace_Server[5] = {2,5,10}
	tUndergroundPalace_Server["Data1"] = {19,20,21,22,23}
	
local tUndergroundPalace_Log = {}
	-- 发送邮件log
	tUndergroundPalace_Log["SendMail"] = "0,0,0,0,18000153,1[%d],%d,%d"
	-- 使用六阳聚神丹
	tUndergroundPalace_Log["GetExp"] = "0,0,3303100,1,18000153,2,4,10"
	tUndergroundPalace_Log["UseItem"] = "0,0,3303100,1,18000153,2,728596,1"
	
	tUndergroundPalace_Log["MonsterDrop"] = "0,0,0,0,18000153,2,%d,1"
	tUndergroundPalace_Log["TeamReward"] = "0,0,0,0,18000153,2,6,%d"
	-- 付费去找boss
	tUndergroundPalace_Log["FindBossPay"] = "1,2,0,0,18000153,2,0,0"
	tUndergroundPalace_Log["Monster"] = {}
	tUndergroundPalace_Log["Monster"]["Death"] = "0,0,0,0,18000153,2,%d,0"
	tUndergroundPalace_Log["Monster"]["Create"] = "0,0,0,0,18000153,2[1],%d,0"
	
	-- 使用药水
	tUndergroundPalace_Log["Medicine"] = "0,0,0,0,18000153,2,%d,1"
	
local tUndergroundPalace_Effect = {}
	tUndergroundPalace_Effect[1] = "self"
	tUndergroundPalace_Effect[2] = "angelwing"
	tUndergroundPalace_Effect[3] = "eidolon"

local tUndergroundPalace_Achievement = {}
tUndergroundPalace_Achievement[4212] = 10529


------------------------------------------------逻辑部分-------------------------------------------------
-- 前往神龙岛（传送）
function UndergroundPalace_SendToUnderground(nNpcId,nChoose)
	local nMapId = tUndergroundPalace_Trans[nNpcId]["MapId"]
	local nPosX = tUndergroundPalace_Trans[nNpcId]["CellX"]
	local nPosY = tUndergroundPalace_Trans[nNpcId]["CellY"]
	local nBound = tUndergroundPalace_Trans["Bound"]
	
	--- 20170609 lrm
	-- 等级判断
	local nLevel =1
	local nMete = 2
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMete) then
		local nNeedNpcId = Get_NpcId()
		Sys_DialogFace(nNeedNpcId)
		Sys_DialogText(tUndergroundPalace_Text["NotUpLevelText"])
		Sys_DialogOption(tUndergroundPalace_Text["Option"])
		Sys_DialogEnd()
		return
	end
	
	if nChoose == 1 then
		nPosX = tUndergroundPalace_Trans["Safe"]["CellX"]
		nPosY = tUndergroundPalace_Trans["Safe"]["CellY"]
	end
	
	if nChoose == 1 or nChoose == 2 then
		User_UserRandBoundTransByShenlongIsland(nMapId,nPosX,nPosY,nBound,nBound)
	else
		User_UserRandBoundTransByShenlongIsland(nMapId,nPosX,nPosY,nBound,nBound,1)
	end
end

-- 去找 日常任务大使 或者 摩云真人（传送）
-- 去往跨服地图（传送）
function UndergroundPalace_FindNpc(nNpcId,nChoose)
	local nMapId = tUndergroundPalace_Trans[nChoose]["MapId"]
	local nPosX = tUndergroundPalace_Trans[nChoose]["CellX"]
	local nPosY = tUndergroundPalace_Trans[nChoose]["CellY"]
	local nBound = tUndergroundPalace_Trans["Bound"]
	if nChoose == 20501 or nChoose == 20823 then
		User_UserRandBoundTransByShenlongIsland(nMapId,nPosX,nPosY,nBound,nBound)
	else
		User_UserRandBoundTransByShenlongIsland(nMapId,nPosX,nPosY,nBound,nBound,1)
	end
	-- Sys_GotoSomeWhere(nPosX,nPosY,nMapId,nChoose)
end

-- 去找  【神龙岛】铁中唐（寻路）
function UndergroundPalace_GoToNpc(nNpcId)
	local nMapId = tUndergroundPalace_Trans[1]["MapId"]
	local nPosX = tUndergroundPalace_Trans[1]["CellX"]
	local nPosY = tUndergroundPalace_Trans[1]["CellY"]
	local nRange = tUndergroundPalace_Cont["Range"]
	User_UserRandBoundTransByShenlongIsland(nMapId,nPosX,nPosY,nRange,nRange,1)
	-- Sys_GotoSomeWhere(nPosX,nPosY,nMapId,nNpcId)
end

-- 从跨服地图 返回神龙岛
function UndergroundPalace_SendBack()
	Sys_ExitOS()
end

-- 前往九幽传送阵遗址(去跨服地图)
function UndergroundPalace_SendToCrossMap(nNpcId)
	-- 判断等级
	local nLevel = tUndergroundPalace_Cont["LevelLimit"]
	local nMete = tUndergroundPalace_Cont["Meto"]
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMete) then
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return
	end

	local nUserId =  Get_UserId()
	local nServerId = Get_FrontierServerID()
	local nData1 = tUndergroundPalace_Server["Data1"][1]
	for i,v in ipairs(tUndergroundPalace_Server) do
		for j,k in pairs(v) do
			if nServerId == k then
				nData1 = tUndergroundPalace_Server["Data1"][i]
				break
			end
		end
	end
	Sys_EnterServer(nServerId,12,nUserId,nData1)
end

-- 去诛灭Boss
function UndergroundPalace_FindBoss(nNpcId,nChoose)
	-- 判断要找的boss已经不见了
	local bExist = true
	local nMonsterId = tUndergroundPalace_BrushBoss["MonsterId"][nChoose]
	local nMapId = tUndergroundPalace_BrushBoss["NewPlace"]
	local nMonsterNum = Get_SysTempData(1,nMapId,nMonsterId)
	if nMonsterNum == 0 then
		bExist = false
		local nText = tonumber(220 + nChoose)
		tNpcGossip[20500]["Text2-2"] = {nText}
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end
	
	if bExist then
		Sys_DialogFace(nNpcId)
		Sys_DialogText(tUndergroundPalace_Text[nNpcId]["Text141"])
		local nOption = tonumber(2 + nChoose)
		Sys_DialogOption(tUndergroundPalace_Text[nNpcId]["Option141"],"</F>UndergroundPalace_FindBossFree</N>" .. nNpcId .. "</N>" .. nChoose)
		Sys_DialogOption(tUndergroundPalace_Text[nNpcId]["Option142"],"</F>UndergroundPalace_FindBossPay</N>" .. nNpcId .. "</N>" .. nChoose)
		Sys_DialogEnd()
	end
end

-- 寻路去找boss
function UndergroundPalace_FindBossFree(nNpcId,nChoose)
	-- 判断要找的boss已经不见了
	local bExist = true
	local nMonsterId = tUndergroundPalace_BrushBoss["MonsterId"][nChoose]
	local nMapId = tUndergroundPalace_BrushBoss["NewPlace"]
	local nMonsterNum = Get_SysTempData(1,nMapId,nMonsterId)
	if nMonsterNum == 0 then
		bExist = false
		local nText = tonumber(220 + nChoose)
		tNpcGossip[20500]["Text2-2"] = {nText}
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end
	
	if bExist then
		local nMapId = tUndergroundPalace_Trans[nMonsterId]["MapId"]
		local nPosX = tUndergroundPalace_Trans[nMonsterId]["CellX"]
		local nPosY = tUndergroundPalace_Trans[nMonsterId]["CellY"]
		local nGlobalId = tUndergroundPalace_Cont["Global"]
		if nChoose == 1 then
			nPosX = Get_SysDynaGlobalData0(nGlobalId)
			nPosY = Get_SysDynaGlobalData1(nGlobalId)
		elseif nChoose == 2 then
			nPosX = Get_SysDynaGlobalData2(nGlobalId)
			nPosY = Get_SysDynaGlobalData3(nGlobalId)
		elseif nChoose == 3 then
			nPosX = Get_SysDynaGlobalData4(nGlobalId)
			nPosY = Get_SysDynaGlobalData5(nGlobalId)
		end
		Sys_GotoSomeWhere(nPosX,nPosY,nMapId)
	end
end

-- 付费去找boss
function UndergroundPalace_FindBossPay(nNpcId,nChoose)
	-- 判断要找的boss已经不见了
	local bExist = true
	local nMonsterId = tUndergroundPalace_BrushBoss["MonsterId"][nChoose]
	local nMapId = tUndergroundPalace_BrushBoss["NewPlace"]
	local nMonsterNum = Get_SysTempData(1,nMapId,nMonsterId)
	if nMonsterNum == 0 then
		bExist = false
		local nText = tonumber(220 + nChoose)
		tNpcGossip[20500]["Text2-2"] = {nText}
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end
	
	-- 判断玩家的天石数量
	local nEmoney = Get_UserEMoney()
	if nEmoney < 1 then
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return
	end

	if bExist then
		local nMapId = tUndergroundPalace_Trans[nMonsterId]["MapId"]
		local nPosX = tUndergroundPalace_Trans[nMonsterId]["CellX"]
		local nPosY = tUndergroundPalace_Trans[nMonsterId]["CellY"]
		local nGlobalId = tUndergroundPalace_Cont["Global"]
		if nChoose == 1 then
			nPosX = Get_SysDynaGlobalData0(nGlobalId)
			nPosY = Get_SysDynaGlobalData1(nGlobalId)
		elseif nChoose == 2 then
			nPosX = Get_SysDynaGlobalData2(nGlobalId)
			nPosY = Get_SysDynaGlobalData3(nGlobalId)
		elseif nChoose == 3 then
			nPosX = Get_SysDynaGlobalData4(nGlobalId)
			nPosY = Get_SysDynaGlobalData5(nGlobalId)
		end
		local nRange = tUndergroundPalace_Cont["Range"]
		
		if User_AddEMoney(-1) then
			User_UserRandBoundTransByShenlongIsland(nMapId,nPosX,nPosY,nRange,nRange)
			Sys_SaveActionFestivalLog(tUndergroundPalace_Log["FindBossPay"])
		end
	end	
end

-- 驿站老板  20508
function UndergroundPalace_BackToPlace(nType)
	-- (97213270,97213271,0,1556,0,''),
	-- (97213271,97213272,97213272,1082,0,'self del 54 200 80 0'),

	local nUserId =  Get_UserId()
	User_DelAllAttribStatus(nUserId)
	local nStatus = 54
	User_DelRoleStatus(nStatus,nUserId)
	
	if nType == 2 then
		-- 设置记录点		
		User_RecordPoint(tUndergroundPalace_Trans[20499]["MapId"],tUndergroundPalace_Trans[20499]["CellX"],tUndergroundPalace_Trans[20499]["CellY"])
	end

	local nRange = tUndergroundPalace_Cont["Range"]
	local nMapId = tUndergroundPalace_Cont["ToPlace"][nType][1]
	local nCellx = tUndergroundPalace_Cont["ToPlace"][nType][2]
	local nCelly = tUndergroundPalace_Cont["ToPlace"][nType][3]
	User_UserRandBoundTransByShenlongIsland(nMapId,nCellx,nCelly,nRange,nRange)
end

-- 去诛灭瑶姬
function UndergroundPalace_FindCrossBoss(nMonsterId)
	local nMapId = tUndergroundPalace_Trans[nMonsterId]["MapId"]
	local nPosX = tUndergroundPalace_Trans[nMonsterId]["CellX"]
	local nPosY = tUndergroundPalace_Trans[nMonsterId]["CellY"]
	local nBound = tUndergroundPalace_Trans["Bound"]
	Sys_GotoSomeWhere(nPosX,nPosY,nMapId)
end

------------------------------------------------使用物品逻辑-------------------------------------------------
-- 低级九转丹  3303100
function UndergroundPalace_UseItem(nItemId,nConfirm)
	if Item_ChkItem(nItemId) then
		local nLevel = Get_UserLevel()
		if nLevel > tUndergroundPalace_Cont["Level"] then
			-- 140级以上玩家使用可以将其转换为【九转聚神丹碎片】（728596）
			if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
				local nRewardItem = tUndergroundPalace_Cont["RewardItem"]
				Item_AddNewItem(nRewardItem,"0 1")
				Sys_SaveActionFestivalLog(tUndergroundPalace_Log["UseItem"])
				User_TalkChannel2005(tUndergroundPalace_Text[nItemId]["GetReward"])
				User_EffectAdd(tUndergroundPalace_Effect[1],tUndergroundPalace_Effect[2])
			end
		else
			-- 139级以下才可使用，10%经验，每天最多用1个
			local nEvent = tUndergroundPalace_Stc["EventType"][1]
			local nType = tUndergroundPalace_Stc["DataType"][1]

			if Task_StcInterval(nEvent,nType,1,4,0) then
				Task_SetStatistic(nEvent,nType,0,1,0)
				Task_SetStcTimestamp(nEvent,nType,0,0)
			end
			
			if Task_ChkStcValue(nEvent,nType,">=",1) then
				User_TalkChannel2005(tUndergroundPalace_Text[nItemId]["Cannot"])
				return
			end
			
			if User_ChkSurplusExp() then
				User_TalkChannel2005(tRewardTemplate_Text["TodayNoRewardExp"])
				return
			end
			
			if nConfirm == nil then
				local nLev = Get_UserLevel()
				local nSurplusExp = Get_UserSurplusExp()
				local nAddExp = 10
				local nUpExp = tUpLevTime[nLev]*(nAddExp/100)
				
				if (nSurplusExp ~= -1) and (nSurplusExp < nUpExp) then
					UndergroundPalace_Confirm(nItemId)
					return
				end
			end

			if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
				-- 使用 获得10%经验
				Task_SetStatistic(nEvent,nType,1,1,0)
				Task_SetStcTimestamp(nEvent,nType,0,0)
				User_AddExpPercent(10)
				Sys_SaveActionFestivalLog(tUndergroundPalace_Log["GetExp"])
				User_TalkChannel2005(tUndergroundPalace_Text[nItemId]["GetExp"])
				User_EffectAdd(tUndergroundPalace_Effect[1],tUndergroundPalace_Effect[2])
			end
		end
	end
end

-- 九转聚神丹的二次确认
function UndergroundPalace_Confirm(nItemId)
	Sys_MsgBox(tUndergroundPalace_Text[nItemId]["Confirm"],string.format("UndergroundPalace_UseItem</N>%d</N>1",nItemId))
end

-- 低级九转丹碎片  3303101
function UndergroundPalace_UseScrapItem(nItemId,nItemNum)
	-- 10合1，可以赌(10%)，非赠变非赠，赠品变赠品
	local nUserId = Get_UserId()
	-- 判断玩家背包中的物品是否是赠，且没时效
	local nMonopoly = 1
	local sType = ""
	
	-- 优先合成赠的
	if Item_ChkMulItem(nItemId,nItemId,nItemNum,2,nil,nUserId,0) then
		nMonopoly = 2
		sType = "Zeng"
	elseif Item_ChkMulItem(nItemId,nItemId,nItemNum,0,nil,nUserId,0) then
		nMonopoly = 0 
		sType = "Normal"
	end
	
	if nMonopoly == 1 then
		-- 如果赠和非赠分别的数量不足 但是总量足够的话 给玩家个提示 点击确认给玩家合成成赠的
		if Item_ChkMulItem(nItemId,nItemId,nItemNum,nMonopoly,nil,nUserId,0) and nItemNum == 10 then
			LinkItemGossipFunc_New(nItemId,"4-1")
			return
		else
			LinkItemGossipFunc_New(nItemId,"2-1")
			return
		end
	end
	
	if Item_ChkMulItem(nItemId,nItemId,nItemNum,nMonopoly,nil,nUserId,0) then
		if not User_CheckLeftSpace(1) then
			LinkItemGossipFunc_New(nItemId,"2-2")
			return
		end
		
		local sFlag = ""
		if nItemNum == 1 then
			sFlag = "Bet"
		else
			sFlag = "Compound"
		end
		
		if Item_ChkMulItem(nItemId,nItemId,nItemNum,nMonopoly,nil,nUserId,0) and Item_DelMulItem(nItemId,nItemId,nItemNum,nMonopoly,nil,nUserId,0) then
			if nItemNum == 1 then
				if not Sys_Random(1000,10000) then
					Sys_SaveActionFestivalLog(tUndergroundPalace_Scrap["Bet"]["Fail"]["Log"])
					LinkItemGossipFunc_New(nItemId,"3-1")
					return
				end
			end
			
			RewardTemplate_Reward(tUndergroundPalace_Scrap[sFlag][sType])
			User_EffectAdd(tUndergroundPalace_Effect[1],tUndergroundPalace_Effect[2])
			UndergroundPalace_ReUse(nItemId)
		end
	else
		LinkItemGossipFunc_New(nItemId,"2-1")
		return
	end
end

-- 含有赠品碎片和非赠碎片 合成赠的
function UndergroundPalace_SureToUse(nItemId,nItemNum)
	if Item_ChkMulItem(nItemId,nItemId,nItemNum) and Item_DelMulItem(nItemId,nItemId,nItemNum) then
		RewardTemplate_Reward(tUndergroundPalace_Scrap["Compound"]["Zeng"])
		User_EffectAdd(tUndergroundPalace_Effect[1],tUndergroundPalace_Effect[2])
		UndergroundPalace_ReUse(nItemId)
	end
end

-- 继续使用
function UndergroundPalace_ReUse(nItemId)
	if Item_ChkItem(nItemId) then
		LinkItemGossipFunc_New(nItemId,"1-1")
	end
end

-- 3600039		邪龙秘宝
-- 3600040		瑶姬宝盒
function UndergroundPalace_UseDropPackItem(nItemId)
	if Item_ChkItem(nItemId) then
		local nSpace = tUndergroundPalace_UsePack[nItemId][1]["Space"]
		if not User_CheckLeftSpace(nSpace) then
			User_TalkChannel2005(string.format(tUndergroundPalace_Text["Msg"]["Full"],nSpace))
			return
		end
		
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			RewardTemplate_NewRandom(tUndergroundPalace_UsePack[nItemId],1)
			User_EffectAdd(tUndergroundPalace_Effect[1],tUndergroundPalace_Effect[2])
		end
	end
end

-- 3600041		伏魔嘉奖包
-- 3600042		降妖嘉奖包
-- 3600043		伏魔嘉奖包 使用加限制 每日两次
function UndergroundPalace_UseMailPackItem(nItemId)
	if Item_ChkItem(nItemId) then
		-- 跨服中获得的礼包 使用加限制 每日两次
		local nEvent = tUndergroundPalace_Stc["EventType"][3]
		local nType = tUndergroundPalace_Stc["DataType"][3]

		if nItemId == 3600043 then
			if Task_StcInterval(nEvent,nType,1,4) then
				Task_SetStatistic(nEvent,nType,0,1)
				Task_SetStcTimestamp(nEvent,nType,0)
			end
			
			if Task_ChkStcValue(nEvent,nType,">=",2) then
				User_TalkChannel2005(string.format(tUndergroundPalace_Text["Msg"]["UseLimit"],2))
				return
			end
		end
		
		-- 英文
		local nUseEvent = tUndergroundPalace_Stc["EventType"][4]
		local nUseType = tUndergroundPalace_Stc["DataType"][4]

		if nItemId == 3600041 then
			if Task_StcInterval(nUseEvent,nUseType,1,4) then
				Task_SetStatistic(nUseEvent,nUseType,0,1)
				Task_SetStcTimestamp(nUseEvent,nUseType,0)
			end
			
			if Task_ChkStcValue(nUseEvent,nUseType,">=",5) then
				User_TalkChannel2005(string.format(tUndergroundPalace_Text["Msg"]["UseLimit"],5))
				return
			end
		end
		
		local nSpace = tUndergroundPalace_UsePack[nItemId][2]["Space"]
		--神兵灵魄活动 背包空间+1
		if EpicWeaponsInNewServer_IsInTime() then
			nSpace = nSpace + 1
		end
		if not User_CheckLeftSpace(nSpace) then
			User_TalkChannel2005(string.format(tUndergroundPalace_Text["Msg"]["Full"],nSpace))
			return
		end
		
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			-- 跨服中获得的礼包 使用加限制 每日两次
			if nItemId == 3600043 then
				Task_AddStatistic(nEvent,nType,1,1)
				Task_SetStcTimestamp(nEvent,nType,0)
			end
			
			local nChoose = 1
			if nItemId == 3600041 then
				Task_AddStatistic(nUseEvent,nUseType,1,1)
				Task_SetStcTimestamp(nUseEvent,nUseType,0)
				local nUseData = Get_UserStatisticValue(nUseEvent,nUseType)
				if nUseData == 5 then
					nChoose = 3
				end
			end
			
			RewardTemplate_Reward(tUndergroundPalace_UsePack[nItemId][nChoose])
			RewardTemplate_NewRandom(tUndergroundPalace_UsePack[nItemId],2)
			--神兵灵魄活动 多开出一个神兵灵魄 每日限量5个
			if EpicWeaponsInNewServer_IsInTime() then
				EpicWeaponsInNewServer_KillBossPackage(nItemId)
			end
			User_EffectAdd(tUndergroundPalace_Effect[1],tUndergroundPalace_Effect[2])
		end
	end
end

-- 3303407		高级经验球
function UndergroundPalace_UseExpBall(nItemId)
	if Item_ChkItem(nItemId) then
		-- 满级不可使用
		local nLevel = Get_UserLevel()
		if nLevel >= 140 then
			User_TalkChannel2005(tUndergroundPalace_Text[nItemId]["Level"])
			return
		end
		
		local nEvent = tUndergroundPalace_Stc["EventType"][5]
		local nType = tUndergroundPalace_Stc["DataType"][5]
	
		if Task_StcInterval(nEvent,nType,1,4) then
			Task_SetStatistic(nEvent,nType,0,1)
			Task_SetStcTimestamp(nEvent,nType,0)
		end

		if Task_ChkStcValue(nEvent,nType,">=",30) then
			User_TalkChannel2005(tUndergroundPalace_Text[nItemId]["Cannot"])
			return
		end

		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			Task_AddStatistic(nEvent,nType,1,1)
			Task_SetStcTimestamp(nEvent,nType,0)
			RewardTemplate_Reward(tUndergroundPalace_UsePack[nItemId])
		end
	end
end

-- 3004260		神魂卷轴
function UndergroundPalace_UseScroll(nItemId,nItemNum)
	if Item_ChkItem(nItemId) then
		if nItemNum == 1 then
			-- 批量换经验（每个换30分钟经验，经验池满15点修行值）
			local nItemSum = Get_CountItemType(nItemId,0)
			local nPerExp = tUndergroundPalace_Scrap[3004260][2]["RewardExpTime"]["Value"]
			local nPerCul = tUndergroundPalace_Scrap[3004260][3]["RewardCultivation"]["Value"]
			
			local nExp = nItemSum * nPerExp
			local nCul = nItemSum * nPerCul
			
			local nLevel = Get_UserLevel()
			if Item_ChkMulItem(nItemId,nItemId,nItemSum) and Item_DelMulItem(nItemId,nItemId,nItemSum) then
				-- 满级或经验池满
				if nLevel >= G_User_MaxLev then --or User_ChkSurplusExp() 
					-- 给修行值
					local tReward_1 = CommonFunc_Copy(tUndergroundPalace_Scrap[nItemId][3])
					tReward_1["RewardCultivation"]["Value"] = nCul
					local sLog = tUndergroundPalace_Scrap[nItemId][3]["Log"]
					tReward_1["Log"]= string.format(sLog,nItemSum,nCul)
					RewardTemplate_Reward(tReward_1)
					if nLevel >= G_User_MaxLev then
						User_TalkChannel2005(string.format(tUndergroundPalace_Text[nItemId]["FullExp"],nCul))
					else
						User_TalkChannel2005(string.format(tUndergroundPalace_Text[nItemId]["GetCul"],nCul))
					end
					User_EffectAdd(tUndergroundPalace_Effect[1],tUndergroundPalace_Effect[2])
					UndergroundPalace_ReUse(nItemId)
					return
				end
				
				-- 给经验
				local tReward = CommonFunc_Copy(tUndergroundPalace_Scrap[nItemId][2])
				tReward["RewardExpTime"]["Value"] = nExp
				local sLog = tUndergroundPalace_Scrap[nItemId][2]["Log"]
				tReward["Log"]= string.format(sLog,nItemSum,nExp)
				
				RewardTemplate_Reward(tReward)
				User_TalkChannel2005(string.format(tUndergroundPalace_Text[nItemId]["GetExp"],nItemSum,nExp))
				User_EffectAdd(tUndergroundPalace_Effect[1],tUndergroundPalace_Effect[2])
				UndergroundPalace_ReUse(nItemId)
			end
		else
			-- 判断背包空间
			if not User_CheckLeftSpace(1) then
				LinkItemGossipFunc_New(nItemId,"2-1")
				return
			end
			
			-- 判断数量
			if not Item_ChkMulItem(nItemId,nItemId,nItemNum) then
				LinkItemGossipFunc_New(nItemId,"2-2")
				return
			end
			if Item_ChkMulItem(nItemId,nItemId,nItemNum) and Item_DelMulItem(nItemId,nItemId,nItemNum) then
				-- 合成
				RewardTemplate_Reward(tUndergroundPalace_Scrap[nItemId][1])
				User_EffectAdd(tUndergroundPalace_Effect[1],tUndergroundPalace_Effect[2])
				UndergroundPalace_ReUse(nItemId)
			end
		end
	else
		if nItemNum == 1 then
			LinkItemGossipFunc_New(nItemId,"3-1")
			return
		else
			LinkItemGossipFunc_New(nItemId,"2-2")
			return
		end
	end
end

------------------------------------------------怪物相关逻辑-------------------------------------------------
-- 怪物掉落
function UndergroundPalace_MonsterDrop()
	--180822[简体征服][活动脚本]烦请制作9月份神笔马良促活活动线上部分内容
	ShenLiangMaLiangOnLineAct_AddStatistic3()
	-- 加魂值
	local nGhost = tUndergroundPalace_GhostTask["Ghost"]
	local nTask = tUndergroundPalace_GhostTask["TaskId"]
	local nEvent = tUndergroundPalace_GhostTask["EventType"]
	local nType = tUndergroundPalace_GhostTask["DataType"]
	local nItemId = 0
	local nUserId = Get_UserId()
	if Task_ChkTaskDetail(nTask) and Get_TaskDetailData3(nTask,nUserId) ~= 1 then
		for k,v in pairs(tUndergroundPalace_GhostTask["ItemId"]) do
			if Item_ChkItem(v) then
				nItemId = v
				break
			end
		end
		
		if nItemId ~= 0 then
			if Get_UserStatisticValue(nEvent,nType,nUserId) >= tUndergroundPalace_GhostTask["Limit"][nItemId] then
				Sys_MsgBox(tUndergroundPalace_Text["Msg"]["FullHZ"])
				Task_SetTaskDetailData3(nTask,1,nUserId)
			else
				Task_AddStatistic(nEvent,nType,nGhost,1,nUserId)
				User_TalkChannel2005(string.format(tUndergroundPalace_Text["Msg"]["GetHZ"],nGhost))
				
				if Get_UserStatisticValue(nEvent,nType,nUserId) >= tUndergroundPalace_GhostTask["Limit"][nItemId] then
					Sys_MsgBox(tUndergroundPalace_Text["Msg"]["FullHZ"])
					Task_SetTaskDetailData3(nTask,1,nUserId)				
				end			
			end
		end
	end
	
	-- 击杀奖励
	local nSpace = tUndergroundPalace_MonsterDrop["Small"][1]["Space"]
	if not User_CheckLeftSpace(nSpace) then
		return
	end

	RewardTemplate_NewRandom(tUndergroundPalace_MonsterDrop["Small"],1)
end

-- Boss伤害 设置排名信息
-- 跨服Boss伤害 设置排名信息
function UndergroundPalace_BossDamgRank(nServerId,nUserId,nRank,nDmg,nMonsterId)
	local nRankTotal = tUndergroundPalace_Cont["RankTotal"]
	for nNum = 1, nRankTotal do
		if nNum == nRank then
			local nActionId = tUndergroundPalace_SendMail[nMonsterId][nRank]
			local nExistDay = tUndergroundPalace_SendMail["ExistDay"]
			local sSender = tUndergroundPalace_Text["Hurt"]["Sender"]
			local sMonsterName = tUndergroundPalace_Text["BossName"][nMonsterId]
			local sTitle = string.format(tUndergroundPalace_Text["Hurt"]["Title"],sMonsterName)
			local sRewardName = tUndergroundPalace_Text["Hurt"][nMonsterId][nRank]
			local sContent = string.format(tUndergroundPalace_Text["Hurt"][6],nRank,sRewardName)
			Sys_SendMail(nUserId,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent,nServerId)
			-- Sys_SaveActionFestivalLog(string.format(tUndergroundPalace_Log["SendMail"],nRank,nActionId,nDmg),nUserId)
		end
	end
end

-- BossRewardEnd 保底奖励  参与击杀boss的玩家 每天限制给予5次
function UndergroundPalace_KillBossJoin(nServerId,nUserId,nRank,nDmg,nMonsterId)
	local nActionId = tUndergroundPalace_SendMail["Join"][1]
	local sMonsterName = tUndergroundPalace_Text["BossName"][nMonsterId]
	local sRewardName = tUndergroundPalace_Text["Join"]["Item"][1]
	
	local nExistDay = tUndergroundPalace_SendMail["ExistDay"]
	local sSender = tUndergroundPalace_Text["Join"]["Sender"]
	local sTitle = string.format(tUndergroundPalace_Text["Join"]["Title"],sMonsterName)
	local sContent = string.format(tUndergroundPalace_Text["Join"]["Content_1"],sMonsterName,sRewardName)
	Sys_SendMail(nUserId,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent,nServerId)
	-- Sys_SaveActionFestivalLog(string.format(tUndergroundPalace_Log["SendMail"],11,nActionId,1),nUserId)
end

-- -- BossRewardEnd 保底奖励  参与击杀跨服小boss的玩家 
-- function UndergroundPalace_KillCrossBossJoin(nServerId,nUserId,nRank,nDmg,nMonsterId)
	-- local nActionId = tUndergroundPalace_SendMail["Join"][2]
	-- local sMonsterName = tUndergroundPalace_Text["BossName"][nMonsterId]
	-- local sRewardName = tUndergroundPalace_Text["Join"]["Item"][1]
	-- local nExistDay = tUndergroundPalace_SendMail["ExistDay"]
	-- local sSender = tUndergroundPalace_Text["Join"]["Sender"]
	-- local sTitle = string.format(tUndergroundPalace_Text["Join"]["Title"],sMonsterName)
	-- local sContent = string.format(tUndergroundPalace_Text["Join"]["Content"],sRewardName)
	
	-- Sys_SendMail(nUserId,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent,nServerId)
	-- -- Sys_SaveActionFestivalLog(string.format(tUndergroundPalace_Log["SendMail"],nMonsterId,nActionId,1),nUserId)
-- end

-- -- BossRewardEnd 保底奖励  参与击杀跨服大boss的玩家
-- function UndergroundPalace_KillBigBossJoin(nServerId,nUserId,nRank,nDmg,nMonsterId)
	-- local nActionId = tUndergroundPalace_SendMail["Join"][3]
	-- local sMonsterName = tUndergroundPalace_Text["BossName"][nMonsterId]
	-- local sRewardName = tUndergroundPalace_Text["Join"]["Item"][2]
	-- local nExistDay = tUndergroundPalace_SendMail["ExistDay"]
	-- local sSender = tUndergroundPalace_Text["Join"]["Sender"]
	-- local sTitle = string.format(tUndergroundPalace_Text["Join"]["Title"],sMonsterName)
	-- local sContent = string.format(tUndergroundPalace_Text["Join"]["Content"],sRewardName)
	
	-- Sys_SendMail(nUserId,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent,nServerId)
	-- -- Sys_SaveActionFestivalLog(string.format(tUndergroundPalace_Log["SendMail"],nMonsterId,nActionId,2),nUserId)
-- end

-- 跨服boss 最后一击
-- 3971		异域邪龙（跨服） 
-- 3970	瑶姬		死亡触发
-- function UndergroundPalace_BigBossDie(nServerId,nUserId,nMonsterId)
	-- local sMonsterName = tUndergroundPalace_Text["BossName"][nMonsterId]
	-- local sRewardName = tUndergroundPalace_Text["Drop"]["Item"][nMonsterId]
	
	-- local nActionId = tUndergroundPalace_SendMail["Drop"][nMonsterId]
	-- local nExistDay = tUndergroundPalace_SendMail["ExistDay"]
	-- local sSender = tUndergroundPalace_Text["Drop"]["Sender"]
	-- local sTitle = string.format(tUndergroundPalace_Text["Drop"]["Title"],sMonsterName)
	-- local sContent = string.format(tUndergroundPalace_Text["Drop"]["Content"],sRewardName)
	
	-- Sys_SendMail(nUserId,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent,nServerId)
-- end

-- 啸海巨魔 4220
-- 禁天妖兽 4212
-- 晶魄雪妖  4171 
-- 熔岩狂魔  4151   死亡触发
function UndergroundPalace_BossDie()
	local nMapId = tUndergroundPalace_BrushBoss["NewPlace"]
	local nMonsterId = Get_MonsterType()
	Monster_Death(nMonsterId,nMapId)
	
	-- 移出栖侠镇传送阵  20502
	local nNpcId = 0
	if nMonsterId == 4220 then
		nNpcId = 20571
	elseif nMonsterId == 4212 then
		nNpcId = 20572
		--获得某种成就
		local nAchPos = tUndergroundPalace_Achievement[nMonsterId]
		if not User_ChkAchByAchPosition(nAchPos) then  --10529
			User_AddAchByAchPosition(nAchPos)
		end
		
		
	elseif nMonsterId == 4171 then
		nNpcId = 20573
	end
	
	local nNpcMapId,nPosX,nPosY = NpcPosition_Get(nNpcId)

	local nPosX = 0
	local nPosY = 0
	local nGlobalId = tUndergroundPalace_Cont["Global"]
	if nNpcId == 20571 then
		nPosX = Get_SysDynaGlobalData0(nGlobalId)
		nPosY = Get_SysDynaGlobalData1(nGlobalId)
	elseif nNpcId == 20572 then
		nPosX = Get_SysDynaGlobalData2(nGlobalId)
		nPosY = Get_SysDynaGlobalData3(nGlobalId)
	elseif nNpcId == 20573 then
		nPosX = Get_SysDynaGlobalData4(nGlobalId)
		nPosY = Get_SysDynaGlobalData5(nGlobalId)
	end

	if nNpcMapId ~= nMapId then
		Npc_MoveNpcPos(nNpcId,nMapId,nPosX,nPosY)
	end
	
	--杀怪加的Log
	local nUserId = Get_UserId()
	Sys_SaveActionFestivalLog(string.format(tUndergroundPalace_Log["Monster"]["Death"],nMonsterId),nUserId)
end

-- 3971		异域邪龙（跨服） 
-- 3970	瑶姬		死亡触发
-- function UndergroundPalace_CrossBossDie()
	-- local nMapId = tUndergroundPalace_BrushBoss["MapId"]
	-- local nMonsterId = Get_MonsterType()
	-- Monster_Death(nMonsterId,nMapId)
	
	-- if nMonsterId == 3970 then
		-- -- 移出npc  20502
		-- local nNpcId = tUndergroundPalace_Cont["MoveNpc"][2][4]
		-- local nNpcMapId,nPosX,nPosY = NpcPosition_Get(nNpcId)

		-- local nMapId = tUndergroundPalace_Cont["MoveNpc"][2][1]
		-- local nPosX = tUndergroundPalace_Cont["MoveNpc"][2][2]
		-- local nPosY = tUndergroundPalace_Cont["MoveNpc"][2][3]
		-- if nNpcMapId ~= nMapId then
			-- Npc_MoveNpcPos(nNpcId,nMapId,nPosX,nPosY)
		-- end
	-- end

	-- local sMonsterName = tUndergroundPalace_Text["BossName"][nMonsterId]
	-- User_TalkChannel2005(string.format(tUndergroundPalace_Text["Msg"]["BagFull"],sMonsterName))
-- end

-- 时间自检 刷新新地宫内的 4个boss
-- 4220 啸海巨魔	改为10:00-23:59 15分	568,372
function UndergroundPalace_BrushBoss_One()
	if Sys_ChkDayTime(tUndergroundPalace_Cont["BossTime"][1]) then
		-- 移走 栖侠镇传送阵  20571
		local nNpcId = 20571
		local nNpcMapId,nPosX,nPosY = NpcPosition_Get(nNpcId)
		
		local nMapId_1 = 5000
		local nNpcPosX = 100
		local nNpcPosY = 100
		if nNpcMapId ~= nMapId_1 then
			Npc_MoveNpcPos(nNpcId,nMapId_1,nNpcPosX,nNpcPosY)
		end

		local nMapId = tUndergroundPalace_BrushBoss["NewPlace"]
		local nMonsterId = tUndergroundPalace_BrushBoss["MonsterId"][1]
		local nGenId = tUndergroundPalace_BrushBoss[nMonsterId]["GenId"]
		
		local nRand = math.random(1,3)
		local nPosX = tUndergroundPalace_BrushBoss[nMonsterId]["PosX"][nRand]
		local nPosY = tUndergroundPalace_BrushBoss[nMonsterId]["PosY"][nRand]
		
		local nGlobalId = tUndergroundPalace_Cont["Global"]
		Sys_SetSynaGlobalData0(nGlobalId,nPosX)
		Sys_SetSynaGlobalData1(nGlobalId,nPosY)
		
		local nMonsterNum = Get_SysTempData(1,nMapId,nMonsterId)
		if nMonsterNum >= 0 then
			Monster_DelMonster(nMapId,nMonsterId)
			Sys_SetTempData(1,nMapId,nMonsterId,0)
		end
		if Monster_AddAndCount(nMapId,nPosX,nPosY,nGenId,nMonsterId,0,0,0,1) then
		
			-- 全游服广播
			local sMonsterName = tUndergroundPalace_Text["BossName_1"][nMonsterId]
			Sys_SystemBroadcast(string.format(tUndergroundPalace_Text["Msg"]["BossShow"][1],sMonsterName,nPosX,nPosY))
		end

	end
end

-- 4212 禁天妖兽 	改为10:00-23:59  00分	349,613
function UndergroundPalace_BrushBoss_Two()
	if Sys_ChkDayTime(tUndergroundPalace_Cont["BossTime"][1]) then
		-- 移走 栖侠镇传送阵  20572
		local nNpcId = 20572
		local nNpcMapId,nPosX,nPosY = NpcPosition_Get(nNpcId)
		
		local nMapId_1 = 5000
		local nNpcPosX = 100
		local nNpcPosY = 100
		if nNpcMapId ~= nMapId_1 then
			Npc_MoveNpcPos(nNpcId,nMapId_1,nNpcPosX,nNpcPosY)
		end

		local nMapId = tUndergroundPalace_BrushBoss["NewPlace"]
		local nMonsterId = tUndergroundPalace_BrushBoss["MonsterId"][2]
		local nGenId = tUndergroundPalace_BrushBoss[nMonsterId]["GenId"]
		local nRand = math.random(1,3)
		local nPosX = tUndergroundPalace_BrushBoss[nMonsterId]["PosX"][nRand]
		local nPosY = tUndergroundPalace_BrushBoss[nMonsterId]["PosY"][nRand]

		local nGlobalId = tUndergroundPalace_Cont["Global"]
		Sys_SetSynaGlobalData2(nGlobalId,nPosX)
		Sys_SetSynaGlobalData3(nGlobalId,nPosY)
		
		local nMonsterNum = Get_SysTempData(1,nMapId,nMonsterId)
		if nMonsterNum >= 0 then
			Monster_DelMonster(nMapId,nMonsterId)
			Sys_SetTempData(1,nMapId,nMonsterId,0)
		end
		
		if Monster_AddAndCount(nMapId,nPosX,nPosY,nGenId,nMonsterId,0,0,0,1) then
		
			-- 全游服广播
			local sMonsterName = tUndergroundPalace_Text["BossName_1"][nMonsterId]
			Sys_SystemBroadcast(string.format(tUndergroundPalace_Text["Msg"]["BossShow"][1],sMonsterName,nPosX,nPosY))
		end
	end
end

-- 4171 晶魄雪妖	改为10:00-23:59 27分	671,683
function UndergroundPalace_BrushBoss_Three()
	if Sys_ChkDayTime(tUndergroundPalace_Cont["BossTime"][1]) then
		-- 移走 栖侠镇传送阵  20573
		local nNpcId = 20573
		local nNpcMapId,nPosX,nPosY = NpcPosition_Get(nNpcId)
		
		local nMapId_1 = 5000
		local nNpcPosX = 100
		local nNpcPosY = 100
		if nNpcMapId ~= nMapId_1 then
			Npc_MoveNpcPos(nNpcId,nMapId_1,nNpcPosX,nNpcPosY)
		end

		local nMapId = tUndergroundPalace_BrushBoss["NewPlace"]
		local nMonsterId = tUndergroundPalace_BrushBoss["MonsterId"][3]
		local nGenId = tUndergroundPalace_BrushBoss[nMonsterId]["GenId"]
		
		local nRand = math.random(1,3)
		local nPosX = tUndergroundPalace_BrushBoss[nMonsterId]["PosX"][nRand]
		local nPosY = tUndergroundPalace_BrushBoss[nMonsterId]["PosY"][nRand]

		local nGlobalId = tUndergroundPalace_Cont["Global"]
		Sys_SetSynaGlobalData4(nGlobalId,nPosX)
		Sys_SetSynaGlobalData5(nGlobalId,nPosY)
		
		local nMonsterNum = Get_SysTempData(1,nMapId,nMonsterId)
		if nMonsterNum >= 0 then
			Monster_DelMonster(nMapId,nMonsterId)
			Sys_SetTempData(1,nMapId,nMonsterId,0)
		end
		if Monster_AddAndCount(nMapId,nPosX,nPosY,nGenId,nMonsterId,0,0,0,1) then
		
			-- 全游服广播
			local sMonsterName = tUndergroundPalace_Text["BossName_1"][nMonsterId]
			Sys_SystemBroadcast(string.format(tUndergroundPalace_Text["Msg"]["BossShow"][1],sMonsterName,nPosX,nPosY))
		end
	end
end

-- 刷新跨服boss
-- 异域邪龙（跨服） 3971
-- function UndergroundPalace_ShowSmallBoss()
	-- local nMapId = tUndergroundPalace_BrushBoss["MapId"]
	-- local nMonsterId = tUndergroundPalace_BrushBoss["BossId"]
	-- local nGenId = tUndergroundPalace_BrushBoss[nMonsterId]["GenId"]
	-- -- 五个点随机刷其中一个点
	-- local nRand = math.random(1,5)
	-- local nPosX = tUndergroundPalace_BrushBoss[nMonsterId]["PosX"][nRand]
	-- local nPosY = tUndergroundPalace_BrushBoss[nMonsterId]["PosY"][nRand]
	-- -- local nPosX = tUndergroundPalace_BrushBoss[nMonsterId]["PosX"][1]
	-- -- local nPosY = tUndergroundPalace_BrushBoss[nMonsterId]["PosY"][1]
	
	-- local nMonsterNum = Get_SysTempData(1,nMapId,nMonsterId)
	-- if nMonsterNum >= 0 then
		-- Monster_DelMonster(nMapId,nMonsterId)
		-- Sys_SetTempData(1,nMapId,nMonsterId,0)
	-- end
	-- Monster_AddAndCount(nMapId,nPosX,nPosY,nGenId,nMonsterId,0,0,0,1)
	
	-- -- 全游服广播
	-- Map_SendBroadcastMsg(nMapId,string.format(tUndergroundPalace_Text["Msg"]["BossShow"][2],nPosX,nPosY))
	-- -- Sys_SystemBroadcast(string.format(tUndergroundPalace_Text["Msg"]["BossShow"][2],nPosX,nPosY))
	-- -- Sys_SystemBroadcastToOS(string.format(tUndergroundPalace_Text["Msg"]["BossShow"][2],nPosX,nPosY))
-- end

-- 刷新跨服boss
-- 瑶姬  3970
-- function UndergroundPalace_ShowBoss()
	-- -- 移走npc  20502
	-- local nNpcId = tUndergroundPalace_Cont["MoveNpc"][1][4]
	-- local nNpcMapId,nPosX,nPosY = NpcPosition_Get(nNpcId)
	
	-- local nMapId_1 = tUndergroundPalace_Cont["MoveNpc"][1][1]
	-- local nNpcPosX = tUndergroundPalace_Cont["MoveNpc"][1][2]
	-- local nNpcPosY = tUndergroundPalace_Cont["MoveNpc"][1][3]
	-- if nNpcMapId ~= nMapId_1 then
		-- Npc_MoveNpcPos(nNpcId,nMapId_1,nNpcPosX,nNpcPosY)
	-- end

	-- local nMapId = tUndergroundPalace_BrushBoss["MapId"]
	-- local nMonsterId = tUndergroundPalace_BrushBoss["BigBossId"]
	-- local nGenId = tUndergroundPalace_BrushBoss[nMonsterId]["GenId"]

	-- local nPosX = tUndergroundPalace_BrushBoss[nMonsterId]["PosX"]
	-- local nPosY = tUndergroundPalace_BrushBoss[nMonsterId]["PosY"]
	
	-- local nMonsterNum = Get_SysTempData(1,nMapId,nMonsterId)
	-- if nMonsterNum >= 0 then
		-- Monster_DelMonster(nMapId,nMonsterId)
		-- Sys_SetTempData(1,nMapId,nMonsterId,0)
	-- end

	-- Monster_AddAndCount(nMapId,nPosX,nPosY,nGenId,nMonsterId,0,0,0,1)
	
	-- -- 全游服广播
	-- Sys_SystemBroadcast(tUndergroundPalace_Text["Msg"]["BossShow"][3])
	-- Sys_SystemBroadcastToOS(tUndergroundPalace_Text["Msg"]["BossShow"][3])
-- end

-- 上线触发
function UndergroundPalace_LogIn()
	local nUserId = Get_UserId()
	local nEvent = tUndergroundPalace_Cont["Stc"]["Data"]
	local nType = tUndergroundPalace_Cont["Stc"]["Type"]
	local nData = tonumber(Get_UserStatisticValue(nEvent,nType))
	if nData == 0 then
		-- 打掩码
		Task_SetStatistic(nEvent,nType,1,1,nUserId)
		-- local nPic = tUndergroundPalace_Cont["Title"]
		if SpecialServer_ChkNoGiftServer() then
			local nPic = tUndergroundPalace_Cont["NoGiftTitle"]
		-- 出推送
			User_NoviceTeaching(nPic,nUserId)
		end
	end
	
	-- 深海地图取消了，需要有一条脚本把深海地图的人移出来，更新的时候
	Map_UserExeFunc(3846,-1,"UndergroundPalace_ChangePoint")
	
end

-- 深海地图取消了，需要有一条脚本把深海地图的人移出来，更新的时候
function UndergroundPalace_ChangePoint(nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	User_UserRandBoundTransByShenlongIsland(1002,410,354,5,5,0,nUserId)
	-- 设置记录点		
	User_RecordPoint(1002,410,354,nUserId)
end

-- 3004182,	3004230 -- 3004238  使用神龙岛药水
function UndergroundPalace_UseMedicine(nItemId)
	if Item_ChkItem(nItemId) then
		local nMapId = Get_UserMapId()
		if nMapId ~= tUndergroundPalace_Cont["MapId"] then
			Sys_MsgBox(tUndergroundPalace_Text["MedicineLimit"])
			return
		end
		Sys_DialogText(tUndergroundPalace_Text[nItemId]["Text111"])
		Sys_DialogText(tUndergroundPalace_Text[nItemId]["Text112"])
		Sys_DialogText(tUndergroundPalace_Text[nItemId]["Text113"])
		Sys_DialogText(tUndergroundPalace_Text[nItemId]["Text114"])
		Sys_DialogText(tUndergroundPalace_Text[nItemId]["Text115"])
		if nItemId == 3004230 then
			Sys_DialogText(tUndergroundPalace_Text[nItemId]["Text116"])
		end
		Sys_DialogOption(tUndergroundPalace_Text[nItemId]["Option1"],"</F>UndergroundPalace_AddStatus</N>" .. nItemId)
		Sys_DialogOption(tUndergroundPalace_Text[nItemId]["Option2"],"</F>NULL")
		Sys_DialogItemFace(nItemId)
		Sys_DialogEnd()
	end
end

-- 105弹框确认
function UndergroundPalace_AddStatus(nItemId)
	if Item_ChkItem(nItemId) then
		local nMapId = Get_UserMapId()
		if nMapId ~= tUndergroundPalace_Cont["MapId"] then
			Sys_MsgBox(tUndergroundPalace_Text["MedicineLimit"])
			return
		end
		
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			local nUserId = Get_UserId()
			if tUndergroundPalace_Medicine[nItemId] then
				local nSecs = tUndergroundPalace_Medicine["Secs"]			
				for i,v in pairs(tUndergroundPalace_Medicine[nItemId]["StatusType"]) do
					local nStatus = tUndergroundPalace_Medicine[nItemId]["StatusType"][i]
					local nPower = tUndergroundPalace_Medicine[nItemId]["StatusPower"][i]
					User_AddRoleStatus(nStatus,nPower,nSecs,0,nSecs,0,0,0,0,nUserId)
				end
			end
			User_EffectAdd(tUndergroundPalace_Effect[1],tUndergroundPalace_Effect[3])
			Sys_MsgBox(tUndergroundPalace_Text[nItemId]["Msg"])
			User_TalkChannel2005(tUndergroundPalace_Text[nItemId]["Talk"])
			Sys_SaveActionFestivalLog(string.format(tUndergroundPalace_Log["Medicine"],nItemId))
			-- 神纹版本
			Activity2015TheBestHero_DelRoleStatus()
		end
	end
end
------------------------------------------------NPC模块--------------------------------------------------
-- 【神龙岛】郑鸿飞  20499
tNpcFace[4749] = 55
tNpcGossip[20499] = tNpcGossip[20499] or DefaultNpc:new{}
tNpcGossip[20499]["OptionHidden"] = 1

tNpcGossip[20499]["Text1-1"] = {111,112,113,114,115,116}
tNpcGossip[20499]["Text111"] = tUndergroundPalace_Text[20499]["Text111"]
tNpcGossip[20499]["Text112"] = tUndergroundPalace_Text[20499]["Text112"]
tNpcGossip[20499]["Text113"] = tUndergroundPalace_Text[20499]["Text113"]
tNpcGossip[20499]["Text114"] = tUndergroundPalace_Text[20499]["Text114"]
tNpcGossip[20499]["Text115"] = tUndergroundPalace_Text[20499]["Text115"]
tNpcGossip[20499]["Text116"] = tUndergroundPalace_Text[20499]["Text116"]
tNpcGossip[20499]["tOption1-1"] = {1,3}  --2
tNpcGossip[20499]["Option1"] = tUndergroundPalace_Text[20499]["Option1"]
tNpcGossip[20499]["OptionFunc1"]="UndergroundPalace_SendToUnderground</N>20499"
-- tNpcGossip[20499]["Option2"] = tUndergroundPalace_Text[20499]["Option2"]
-- tNpcGossip[20499]["OptionPoint2"]="2-1"
tNpcGossip[20499]["Option3"] = tUndergroundPalace_Text[20499]["Option3"]
-- 接 Option2 我要如何相助？
tNpcGossip[20499]["Text2-1"] = {211,212,213,214,215,216}
tNpcGossip[20499]["Text211"] = tUndergroundPalace_Text[20499]["Text211"]
tNpcGossip[20499]["Text212"] = tUndergroundPalace_Text[20499]["Text212"]
tNpcGossip[20499]["Text213"] = tUndergroundPalace_Text[20499]["Text213"]
tNpcGossip[20499]["Text214"] = tUndergroundPalace_Text[20499]["Text214"]
tNpcGossip[20499]["Text215"] = tUndergroundPalace_Text[20499]["Text215"]
tNpcGossip[20499]["Text216"] = tUndergroundPalace_Text[20499]["Text216"]
tNpcGossip[20499]["tOption2-1"] = {4,5,6,7}
tNpcGossip[20499]["Option4"] = tUndergroundPalace_Text[20499]["Option4"]
tNpcGossip[20499]["OptionFunc4"]="UndergroundPalace_FindNpc</N>20499</N>9998"
tNpcGossip[20499]["Option5"] = tUndergroundPalace_Text[20499]["Option5"]
tNpcGossip[20499]["OptionFunc5"]="UndergroundPalace_FindNpc</N>20499</N>2000"
tNpcGossip[20499]["Option6"] = tUndergroundPalace_Text[20499]["Option6"]
tNpcGossip[20499]["OptionFunc6"]="UndergroundPalace_SendToUnderground</N>20499"
tNpcGossip[20499]["Option7"] = tUndergroundPalace_Text[20499]["Option7"]

-- 【神龙岛】风不平  20500
tNpcFace[4750] = 53
tNpcGossip[20500] = tNpcGossip[20500] or DefaultNpc:new{}
tNpcGossip[20500]["OptionHidden"] = 1
-- boss未出现地图的时间
tNpcGossip[20500]["Text1-1"] = {111,112,113,114,115,116,117,118,119,120,121,122}
tNpcGossip[20500]["Text111"] = tUndergroundPalace_Text[20500]["Text111"]
tNpcGossip[20500]["Text112"] = tUndergroundPalace_Text[20500]["Text112"]
tNpcGossip[20500]["Text113"] = tUndergroundPalace_Text[20500]["Text113"]
tNpcGossip[20500]["Text114"] = tUndergroundPalace_Text[20500]["Text114"]
tNpcGossip[20500]["Text115"] = tUndergroundPalace_Text[20500]["Text115"]
tNpcGossip[20500]["Text116"] = tUndergroundPalace_Text[20500]["Text116"]
tNpcGossip[20500]["Text117"] = tUndergroundPalace_Text[20500]["Text117"]
tNpcGossip[20500]["Text118"] = tUndergroundPalace_Text[20500]["Text118"]
tNpcGossip[20500]["Text119"] = tUndergroundPalace_Text[20500]["Text119"]
tNpcGossip[20500]["Text120"] = tUndergroundPalace_Text[20500]["Text120"]
tNpcGossip[20500]["Text121"] = tUndergroundPalace_Text[20500]["Text121"]
tNpcGossip[20500]["Text122"] = tUndergroundPalace_Text[20500]["Text122"]
tNpcGossip[20500]["tOption1-1"] = {1,2}
tNpcGossip[20500]["ChkFunc1-1"] = function ()
	-- 判断地宫内 有出现哪个boss
	-- 啸海巨魔 4220
	-- 禁天妖兽 4212
	-- 晶魄雪妖  4171 
	local nExist = 0
	for i = 1,3 do
		local nMonsterId = tUndergroundPalace_BrushBoss["MonsterId"][i]
		local nMapId = tUndergroundPalace_BrushBoss["NewPlace"]
		-- 删除上次遗留的BOSS
		local nMonsterNum = Get_SysTempData(1,nMapId,nMonsterId)
		if nMonsterNum ~= 0 then
			nExist = 1
			break
		end
	end
	
	if	nExist == 1 then
		return false
	else
		local nNowHour = os.date("%H")
		local nNowMin = os.date("%M")
		nNowHour = tonumber(nNowHour)
		nNowMin = tonumber(nNowMin)
		local sShowIndex = "121"
		local sTime = "00"
		
		if (nNowHour >= 10 and nNowHour <= 23) then
			if nNowMin >= 0 and nNowMin < 15 then
				sShowIndex = "119"
				sTime = "15"
			-- elseif nNowMin >= 15 and nNowMin < 27 then
				-- sShowIndex = "120"
				-- sTime = "27"
			-- else
				-- nNowHour = nNowHour + 1
				-- sShowIndex = "121"
				-- sTime = "00"
			end
		else
			nNowHour = 10
			sShowIndex = "121"
			sTime = "00"
		end
		tNpcGossip[20500]["Text".. sShowIndex] = string.format(tUndergroundPalace_Text[20500]["Text".. sShowIndex],nNowHour,sTime)
		tNpcGossip[20500]["Text1-1"] = {111,112,113,114,115,118,tonumber(sShowIndex),122}
		return true
	end
end

tNpcGossip[20500]["Option1"] = tUndergroundPalace_Text[20500]["Option1"]
tNpcGossip[20500]["OptionPoint1"]="2-1"
tNpcGossip[20500]["Option2"] = tUndergroundPalace_Text[20500]["Option2"]

-- BOSS出现中
tNpcGossip[20500]["Text1-2"] = {131,132,133,134,135,136,137,138}
tNpcGossip[20500]["Text131"] = tUndergroundPalace_Text[20500]["Text131"]
tNpcGossip[20500]["Text132"] = tUndergroundPalace_Text[20500]["Text132"]
tNpcGossip[20500]["Text133"] = tUndergroundPalace_Text[20500]["Text133"]
tNpcGossip[20500]["Text134"] = tUndergroundPalace_Text[20500]["Text134"]
tNpcGossip[20500]["Text135"] = tUndergroundPalace_Text[20500]["Text135"]
tNpcGossip[20500]["Text136"] = tUndergroundPalace_Text[20500]["Text136"]
tNpcGossip[20500]["Text137"] = tUndergroundPalace_Text[20500]["Text137"]
tNpcGossip[20500]["Text138"] = tUndergroundPalace_Text[20500]["Text138"]
tNpcGossip[20500]["tOption1-2"] = {3,4,5,6}
tNpcGossip[20500]["ChkFunc1-2"] = function ()
	-- 判断地宫内 有出现哪个boss
	-- 啸海巨魔 4220
	-- 禁天妖兽（精英） 4212
	-- 晶魄雪妖  4171 
	local nExist = 0
	local tExist = {}
 	for i = 1,3 do
		local nMonsterId = tUndergroundPalace_BrushBoss["MonsterId"][i]
		local nMapId = tUndergroundPalace_BrushBoss["NewPlace"]
		-- 删除上次遗留的BOSS
		local nMonsterNum = Get_SysTempData(1,nMapId,nMonsterId)
		if nMonsterNum > 0 then
			-- 已出现的boss
			table.insert(tExist,nMonsterId)
			nExist = nExist + 1
		end
	end
	
	if	nExist == 0 then
		-- 没有出现的boss
		return false
	else
		local nText = 135
		local nOption = 3
		local nExistNum = #tExist
		if nExistNum == 1 then
			for i,v in pairs(tExist) do
			 	for j = 1,3 do
					local nMonsterId = tUndergroundPalace_BrushBoss["MonsterId"][j]
					if nMonsterId == v then
						nText = nText + (j-1)
						nOption = nOption + (j-1)
						break
					end
				end
			end
			tNpcGossip[20500]["Text1-2"] = {131,132,133,134,nText,138}
			tNpcGossip[20500]["tOption1-2"] = {nOption,6}
		elseif nExistNum == 2 then
			if tExist[1] == tUndergroundPalace_BrushBoss["MonsterId"][1] and tExist[2] == tUndergroundPalace_BrushBoss["MonsterId"][2] then
				tNpcGossip[20500]["Text1-2"] = {131,132,133,134,135,136,138}
				tNpcGossip[20500]["tOption1-2"] = {3,4,6}
			elseif tExist[1] == tUndergroundPalace_BrushBoss["MonsterId"][2] and tExist[2] == tUndergroundPalace_BrushBoss["MonsterId"][3] then
				tNpcGossip[20500]["Text1-2"] = {131,132,133,134,136,137,138}
				tNpcGossip[20500]["tOption1-2"] = {4,5,6}
			elseif tExist[1] == tUndergroundPalace_BrushBoss["MonsterId"][1] and tExist[2] == tUndergroundPalace_BrushBoss["MonsterId"][3] then
				tNpcGossip[20500]["Text1-2"] = {131,132,133,134,135,137,138}
				tNpcGossip[20500]["tOption1-2"] = {3,5,6}
			end
		elseif nExistNum == 3 then
			tNpcGossip[20500]["Text1-2"] = {131,132,133,134,135,136,137,138}
			tNpcGossip[20500]["tOption1-2"] = {3,4,5,6}
		end
		return true	
	end
end
tNpcGossip[20500]["Option3"] = tUndergroundPalace_Text[20500]["Option3"]
tNpcGossip[20500]["OptionFunc3"]="UndergroundPalace_FindBoss</N>20500</N>1"
tNpcGossip[20500]["Option4"] = tUndergroundPalace_Text[20500]["Option4"]
tNpcGossip[20500]["OptionFunc4"]="UndergroundPalace_FindBoss</N>20500</N>2"
tNpcGossip[20500]["Option5"] = tUndergroundPalace_Text[20500]["Option5"]
tNpcGossip[20500]["OptionFunc5"]="UndergroundPalace_FindBoss</N>20500</N>3"
tNpcGossip[20500]["Option6"] = tUndergroundPalace_Text[20500]["Option6"]

-- 接 Option1 请告知详情
tNpcGossip[20500]["Text2-1"] = {211,212,214,216,217,218}
tNpcGossip[20500]["Text211"] = tUndergroundPalace_Text[20500]["Text211"]
tNpcGossip[20500]["Text212"] = tUndergroundPalace_Text[20500]["Text212"]
tNpcGossip[20500]["Text213"] = tUndergroundPalace_Text[20500]["Text213"]
tNpcGossip[20500]["Text214"] = tUndergroundPalace_Text[20500]["Text214"]
tNpcGossip[20500]["Text215"] = tUndergroundPalace_Text[20500]["Text215"]
tNpcGossip[20500]["Text216"] = tUndergroundPalace_Text[20500]["Text216"]
tNpcGossip[20500]["Text217"] = tUndergroundPalace_Text[20500]["Text217"]
tNpcGossip[20500]["Text218"] = tUndergroundPalace_Text[20500]["Text218"]
tNpcGossip[20500]["tOption2-1"] = {7}
tNpcGossip[20500]["Option7"] = tUndergroundPalace_Text[20500]["Option7"]
-- 接 Option3,4,5 前去诛除boss
-- 失败，BOSS已被击杀
tNpcGossip[20500]["Text2-2"] = {221,222,223}
tNpcGossip[20500]["Text221"] = tUndergroundPalace_Text[20500]["Text221"]
tNpcGossip[20500]["Text222"] = tUndergroundPalace_Text[20500]["Text222"]
tNpcGossip[20500]["Text223"] = tUndergroundPalace_Text[20500]["Text223"]
tNpcGossip[20500]["tOption2-2"] = {8}
tNpcGossip[20500]["Option8"] = tUndergroundPalace_Text[20500]["Option8"]
-- 天石不足
tNpcGossip[20500]["Text3-1"] = {311}
tNpcGossip[20500]["Text311"] = tUndergroundPalace_Text[20500]["Text311"]
tNpcGossip[20500]["tOption3-1"] = {311}
tNpcGossip[20500]["Option311"] = tUndergroundPalace_Text[20500]["Option311"]

-- -- 【跨服地图】姬无命  20501
-- tNpcFace[4751] = 43
-- tNpcGossip[20501] = tNpcGossip[20501] or DefaultNpc:new{}
-- tNpcGossip[20501]["OptionHidden"] = 1

-- tNpcGossip[20501]["Text1-1"] = {111,112,113,114,115,116,117}
-- tNpcGossip[20501]["Text111"] = tUndergroundPalace_Text[20501]["Text111"]
-- tNpcGossip[20501]["Text112"] = tUndergroundPalace_Text[20501]["Text112"]
-- tNpcGossip[20501]["Text113"] = tUndergroundPalace_Text[20501]["Text113"]
-- tNpcGossip[20501]["Text114"] = tUndergroundPalace_Text[20501]["Text114"]
-- tNpcGossip[20501]["Text115"] = tUndergroundPalace_Text[20501]["Text115"]
-- tNpcGossip[20501]["Text116"] = tUndergroundPalace_Text[20501]["Text116"]
-- tNpcGossip[20501]["Text117"] = tUndergroundPalace_Text[20501]["Text117"]
-- tNpcGossip[20501]["tOption1-1"] = {1,4,2}
-- tNpcGossip[20501]["Option1"] = tUndergroundPalace_Text[20501]["Option1"]
-- tNpcGossip[20501]["OptionFunc1"]="UndergroundPalace_SendToCrossMap</N>20501"
-- tNpcGossip[20501]["Option2"] = tUndergroundPalace_Text[20501]["Option2"]
-- tNpcGossip[20501]["OptionPoint2"]="2-1"
-- tNpcGossip[20501]["Option4"] = tUndergroundPalace_Text[20501]["Option4"]
-- tNpcGossip[20501]["OptionFunc4"] = "UndergroundPalace_SendToUnderground</N>20499</N>1"

-- -- 接 Option2 了解详情
-- tNpcGossip[20501]["Text2-1"] = {211,212,213,214,215}
-- tNpcGossip[20501]["Text211"] = tUndergroundPalace_Text[20501]["Text211"]
-- tNpcGossip[20501]["Text212"] = tUndergroundPalace_Text[20501]["Text212"]
-- tNpcGossip[20501]["Text213"] = tUndergroundPalace_Text[20501]["Text213"]
-- tNpcGossip[20501]["Text214"] = tUndergroundPalace_Text[20501]["Text214"]
-- tNpcGossip[20501]["Text215"] = tUndergroundPalace_Text[20501]["Text215"]
-- tNpcGossip[20501]["tOption2-1"] = {3}
-- tNpcGossip[20501]["Option3"] = tUndergroundPalace_Text[20501]["Option3"]
-- -- 等级不足
-- tNpcGossip[20501]["Text3-1"] = {311}
-- tNpcGossip[20501]["Text311"] = tUndergroundPalace_Text[20501]["Text311"]
-- tNpcGossip[20501]["tOption3-1"] = {3}

-- -- 妖后瑶姬  20502
-- tNpcFace[4752] = 605
-- tNpcGossip[20502] = tNpcGossip[20502] or DefaultNpc:new{}
-- tNpcGossip[20502]["OptionHidden"] = 1

-- tNpcGossip[20502]["Text1-1"] = {111,112,113,114,115,116}
-- tNpcGossip[20502]["Text111"] = tUndergroundPalace_Text[20502]["Text111"]
-- tNpcGossip[20502]["Text112"] = tUndergroundPalace_Text[20502]["Text112"]
-- tNpcGossip[20502]["Text113"] = tUndergroundPalace_Text[20502]["Text113"]
-- tNpcGossip[20502]["Text114"] = tUndergroundPalace_Text[20502]["Text114"]
-- tNpcGossip[20502]["Text115"] = tUndergroundPalace_Text[20502]["Text115"]
-- tNpcGossip[20502]["Text116"] = tUndergroundPalace_Text[20502]["Text116"]
-- tNpcGossip[20502]["tOption1-1"] = {1}
-- tNpcGossip[20502]["Option1"] = tUndergroundPalace_Text[20502]["Option1"]

-- -- 【服务器名】侠盟死士  20503 
-- tNpcFace[4753] = 203
-- tNpcGossip[20503] = tNpcGossip[20503] or DefaultNpc:new{}
-- tNpcGossip[20503]["OptionHidden"] = 1
-- -- 瑶姬未出现
-- tNpcGossip[20503]["Text1-1"] = {111,112,113,114,115,116,117,118,119}
-- tNpcGossip[20503]["Text111"] = tUndergroundPalace_Text[20503]["Text111"]
-- tNpcGossip[20503]["Text112"] = tUndergroundPalace_Text[20503]["Text112"]
-- tNpcGossip[20503]["Text113"] = tUndergroundPalace_Text[20503]["Text113"]
-- tNpcGossip[20503]["Text114"] = tUndergroundPalace_Text[20503]["Text114"]
-- tNpcGossip[20503]["Text115"] = tUndergroundPalace_Text[20503]["Text115"]
-- tNpcGossip[20503]["Text116"] = tUndergroundPalace_Text[20503]["Text116"]
-- tNpcGossip[20503]["Text117"] = tUndergroundPalace_Text[20503]["Text117"]
-- tNpcGossip[20503]["Text118"] = tUndergroundPalace_Text[20503]["Text118"]
-- tNpcGossip[20503]["Text119"] = tUndergroundPalace_Text[20503]["Text119"]
-- tNpcGossip[20503]["tOption1-1"] = {1,2}
-- tNpcGossip[20503]["ChkFunc1-1"] = function ()
	-- -- 判断当前是否出现了大boss
	-- local nMapId = tUndergroundPalace_BrushBoss["MapId"]
	-- local nMonsterId = tUndergroundPalace_BrushBoss["BigBossId"]
	-- local nMonsterNum = Get_SysTempData(1,nMapId,nMonsterId)

	-- if nMonsterNum ~= 0 then
		-- return false
	-- else
		-- return true
	-- end
-- end
-- tNpcGossip[20503]["Option1"] = tUndergroundPalace_Text[20503]["Option1"]
-- tNpcGossip[20503]["OptionFunc1"]="UndergroundPalace_SendBack"
-- tNpcGossip[20503]["Option2"] = tUndergroundPalace_Text[20503]["Option2"]
-- -- 瑶姬出现中
-- tNpcGossip[20503]["Text1-2"] = {121,122,123,124,125}
-- tNpcGossip[20503]["Text121"] = tUndergroundPalace_Text[20503]["Text121"]
-- tNpcGossip[20503]["Text122"] = tUndergroundPalace_Text[20503]["Text122"]
-- tNpcGossip[20503]["Text123"] = tUndergroundPalace_Text[20503]["Text123"]
-- tNpcGossip[20503]["Text124"] = tUndergroundPalace_Text[20503]["Text124"]
-- tNpcGossip[20503]["Text125"] = tUndergroundPalace_Text[20503]["Text125"]
-- tNpcGossip[20503]["tOption1-2"] = {4,3}
-- tNpcGossip[20503]["ChkFunc1-2"] = function ()
	-- -- 判断当前是否出现了大boss
	-- local nMapId = tUndergroundPalace_BrushBoss["MapId"]
	-- local nMonsterId = tUndergroundPalace_BrushBoss["BigBossId"]
	-- local nMonsterNum = Get_SysTempData(1,nMapId,nMonsterId)
	-- if nMonsterNum ~= 0 then
		-- return true
	-- else
		-- return false
	-- end
-- end
-- tNpcGossip[20503]["Option3"] = tUndergroundPalace_Text[20503]["Option3"]
-- tNpcGossip[20503]["OptionFunc3"]="UndergroundPalace_SendBack"
-- tNpcGossip[20503]["Option4"] = tUndergroundPalace_Text[20503]["Option4"]
-- tNpcGossip[20503]["OptionFunc4"]="UndergroundPalace_FindCrossBoss</N>3970"

-- tNpcGossip[20504] = tNpcGossip[20503]
-- tNpcGossip[20505] = tNpcGossip[20503]
-- tNpcGossip[20506] = tNpcGossip[20503]
-- tNpcGossip[20507] = tNpcGossip[20503]

-- 驿站老板  20508
tNpcFace[28] = 1
tNpcGossip[20508] = tNpcGossip[20508] or DefaultNpc:new{}
tNpcGossip[20508]["OptionHidden"] = 1

tNpcGossip[20508]["Text1-1"] = {111,112,113,114}
tNpcGossip[20508]["Text111"] = tUndergroundPalace_Text[20508]["Text111"]
tNpcGossip[20508]["Text112"] = tUndergroundPalace_Text[20508]["Text112"]
tNpcGossip[20508]["Text113"] = tUndergroundPalace_Text[20508]["Text113"]
tNpcGossip[20508]["Text114"] = tUndergroundPalace_Text[20508]["Text114"]
tNpcGossip[20508]["tOption1-1"] = {111,112,115,113}  --114
tNpcGossip[20508]["Option111"] = tUndergroundPalace_Text[20508]["Option111"]
tNpcGossip[20508]["OptionFunc111"] = "UndergroundPalace_BackToPlace</N>1"
tNpcGossip[20508]["Option112"] = tUndergroundPalace_Text[20508]["Option112"]
tNpcGossip[20508]["OptionFunc112"] = "UndergroundPalace_BackToPlace</N>2"
tNpcGossip[20508]["Option113"] = tUndergroundPalace_Text[20508]["Option113"]
-- tNpcGossip[20508]["Option114"] = tUndergroundPalace_Text[20508]["Option114"]
-- tNpcGossip[20508]["OptionFunc114"]="UndergroundPalace_FindNpc</N>20508</N>20501"
tNpcGossip[20508]["Option115"] = tUndergroundPalace_Text[20508]["Option115"]
tNpcGossip[20508]["OptionFunc115"]="UndergroundPalace_FindNpc</N>20508</N>20823"

-- 深海鲛兵  16833
tNpcGossip[16833] = tNpcGossip[16833] or DefaultNpc:new{}
tNpcGossip[16833]["OptionHidden"] = 1

tNpcGossip[16833]["Text1-1"] = {111}
tNpcGossip[16833]["Text111"] = tUndergroundPalace_Text[16833]["Text111"]
tNpcGossip[16833]["tOption1-1"] = {1,2}
tNpcGossip[16833]["Option1"] = tUndergroundPalace_Text[16833]["Option1"]
tNpcGossip[16833]["OptionFunc1"] = "UndergroundPalace_SendToUnderground</N>20499</N>2"
tNpcGossip[16833]["Option2"] = tUndergroundPalace_Text[16833]["Option2"]

tNpcGossip[16834] = tNpcGossip[16833]
tNpcGossip[16852] = tNpcGossip[16833]
tNpcGossip[16853] = tNpcGossip[16833]
tNpcGossip[16854] = tNpcGossip[16833]
tNpcGossip[16855] = tNpcGossip[16833]
tNpcGossip[16856] = tNpcGossip[16833]

-- 蓑酒翁  600100
tNpcFace[920] = 67
tNpcGossip[600100] = tNpcGossip[600100] or DefaultNpc:new{}
tNpcGossip[600100]["OptionHidden"] = 1

tNpcGossip[600100]["Text1-1"] = {111,112,113}
tNpcGossip[600100]["Text111"] = tUndergroundPalace_Text[600100]["Text111"]
tNpcGossip[600100]["Text112"] = tUndergroundPalace_Text[600100]["Text112"]
tNpcGossip[600100]["Text113"] = tUndergroundPalace_Text[600100]["Text113"]
tNpcGossip[600100]["tOption1-1"] = {1,2}
tNpcGossip[600100]["Option1"] = tUndergroundPalace_Text[600100]["Option1"]
tNpcGossip[600100]["OptionFunc1"] = "UndergroundPalace_SendToUnderground</N>20499"
tNpcGossip[600100]["Option2"] = tUndergroundPalace_Text[600100]["Option2"]

-- 栖侠镇传送阵  20571
tNpcGossip[20571] = tNpcGossip[20571] or DefaultNpc:new{}
tNpcGossip[20571]["OptionHidden"] = 1

tNpcGossip[20571]["Text1-1"] = {111}
tNpcGossip[20571]["Text111"] = tUndergroundPalace_Text[20571]["Text111"]
tNpcGossip[20571]["tOption1-1"] = {1,2}
tNpcGossip[20571]["Option1"] = tUndergroundPalace_Text[20571]["Option1"]
tNpcGossip[20571]["OptionFunc1"] = "UndergroundPalace_SendToUnderground</N>20499</N>1"
tNpcGossip[20571]["Option2"] = tUndergroundPalace_Text[20571]["Option2"]

tNpcGossip[20572] = tNpcGossip[20571]
tNpcGossip[20573] = tNpcGossip[20571]

--------------------------------------------物品模板---------------------------------------
-- -- 低级九转丹  3303100
tItem[3303100] = tItem[3303100] or {}
tItem[3303100]["Function"] = function (nItemId,sItemName)
	UndergroundPalace_UseItem(nItemId)
end

-- -- 低级九转丹碎片  3303101
-- tItem[3303101] = tItem[3303101] or {}
-- -- 主对白
-- tItem[3303101]["Text1-1"] = {111,112,113}
-- tItem[3303101]["Text111"] = tUndergroundPalace_Text[3303101]["Text111"]
-- tItem[3303101]["Text112"] = tUndergroundPalace_Text[3303101]["Text112"]
-- tItem[3303101]["Text113"] = tUndergroundPalace_Text[3303101]["Text113"]
-- tItem[3303101]["tOption1-1"] = {1,2,3}
-- tItem[3303101]["Option1"] = tUndergroundPalace_Text[3303101]["Option1"]
-- tItem[3303101]["OptionFunc1"] = "UndergroundPalace_UseScrapItem</N>3303101</N>10"
-- tItem[3303101]["Option2"] = tUndergroundPalace_Text[3303101]["Option2"]
-- tItem[3303101]["OptionFunc2"] = "UndergroundPalace_UseScrapItem</N>3303101</N>1"
-- tItem[3303101]["Option3"] = tUndergroundPalace_Text[3303101]["Option3"]
-- -- 接Option1  使用10个碎片
-- -- 失败，碎片不足
-- tItem[3303101]["Text2-1"] = {211}
-- tItem[3303101]["Text211"] = tUndergroundPalace_Text[3303101]["Text211"]
-- tItem[3303101]["tOption2-1"] = {4}
-- tItem[3303101]["Option4"] = tUndergroundPalace_Text[3303101]["Option4"]
-- -- 失败，背包空间不足
-- tItem[3303101]["Text2-2"] = {221}
-- tItem[3303101]["Text221"] = tUndergroundPalace_Text[3303101]["Text221"]
-- tItem[3303101]["tOption2-2"] = {5}
-- tItem[3303101]["Option5"] = tUndergroundPalace_Text[3303101]["Option5"]
-- -- 接Option2  使用1个碎片
-- -- 失败，合成失败
-- tItem[3303101]["Text3-1"] = {311}
-- tItem[3303101]["Text311"] = tUndergroundPalace_Text[3303101]["Text311"]
-- tItem[3303101]["tOption3-1"] = {6}
-- tItem[3303101]["Option6"] = tUndergroundPalace_Text[3303101]["Option6"]
-- tItem[3303101]["OptionFunc6"] = "UndergroundPalace_ReUse</N>3303101"
-- -- 使用10个碎片、含有赠品碎片和非赠碎片
-- tItem[3303101]["Text4-1"] = {411}
-- tItem[3303101]["Text411"] = tUndergroundPalace_Text[3303101]["Text411"]
-- tItem[3303101]["tOption4-1"] = {7,8}
-- tItem[3303101]["Option7"] = tUndergroundPalace_Text[3303101]["Option7"]
-- tItem[3303101]["OptionFunc7"] = "UndergroundPalace_SureToUse</N>3303101</N>10"
-- tItem[3303101]["Option8"] = tUndergroundPalace_Text[3303101]["Option8"]

-- -- 3600039		邪龙秘宝
-- tItem[3600039] = tItem[3600039] or {}
-- tItem[3600039]["Function"] = function (nItemId,sItemName)
	-- UndergroundPalace_UseDropPackItem(nItemId)
-- end
-- -- 3600040		瑶姬宝盒
-- tItem[3600040] = tItem[3600040] or {}
-- tItem[3600040]["Function"] = function (nItemId,sItemName)
	-- UndergroundPalace_UseDropPackItem(nItemId)
-- end

-- 3600041		伏魔嘉奖包
tItem[3600041] = tItem[3600041] or {}
tItem[3600041]["Function"] = function (nItemId,sItemName)
	UndergroundPalace_UseMailPackItem(nItemId)
end
-- -- 3600042		降妖嘉奖包
-- tItem[3600042] = tItem[3600042] or {}
-- tItem[3600042]["Function"] = function (nItemId,sItemName)
	-- UndergroundPalace_UseMailPackItem(nItemId)
-- end
-- -- 3600043		伏魔嘉奖包
-- tItem[3600043] = tItem[3600043] or {}
-- tItem[3600043]["Function"] = function (nItemId,sItemName)
	-- UndergroundPalace_UseMailPackItem(nItemId)
-- end

-- 3303407		高级经验球
tItem[3303407] = tItem[3303407] or {}
tItem[3303407]["Function"] = function (nItemId,sItemName)
	UndergroundPalace_UseExpBall(nItemId)
end

-- 3004260		神魂卷轴
-- tItemFace[3004260] = xx
tItem[3004260] = tItem[3004260] or {}
-- 主对白
tItem[3004260]["Text1-1"] = {111,112,113,114,115}
tItem[3004260]["Text111"] = tUndergroundPalace_Text[3004260]["Text111"]
tItem[3004260]["Text112"] = tUndergroundPalace_Text[3004260]["Text112"]
tItem[3004260]["Text113"] = tUndergroundPalace_Text[3004260]["Text113"]
tItem[3004260]["Text114"] = tUndergroundPalace_Text[3004260]["Text114"]
tItem[3004260]["Text115"] = tUndergroundPalace_Text[3004260]["Text115"]
tItem[3004260]["tOption1-1"] = {1,2}
tItem[3004260]["Option1"] = tUndergroundPalace_Text[3004260]["Option1"]
tItem[3004260]["OptionFunc1"] = "UndergroundPalace_UseScroll</N>3004260</N>7"
tItem[3004260]["Option2"] = tUndergroundPalace_Text[3004260]["Option2"]
tItem[3004260]["OptionFunc2"] = "UndergroundPalace_UseScroll</N>3004260</N>1"
-- Option1 合成珍贵神魂礼包
-- 失败，背包空间不足
tItem[3004260]["Text2-1"] = {211}
tItem[3004260]["Text211"] = tUndergroundPalace_Text[3004260]["Text211"]
tItem[3004260]["tOption2-1"] = {3}
tItem[3004260]["Option3"] = tUndergroundPalace_Text[3004260]["Option3"]
-- 失败，数量不足
tItem[3004260]["Text2-2"] = {221}
tItem[3004260]["Text221"] = tUndergroundPalace_Text[3004260]["Text221"]
tItem[3004260]["tOption2-2"] = {4}
tItem[3004260]["Option4"] = tUndergroundPalace_Text[3004260]["Option4"]
-- Option2  一键兑换经验
-- 失败，背包里没有神魂卷轴
tItem[3004260]["Text3-1"] = {311}
tItem[3004260]["Text311"] = tUndergroundPalace_Text[3004260]["Text311"]
tItem[3004260]["tOption3-1"] = {5}
tItem[3004260]["Option5"] = tUndergroundPalace_Text[3004260]["Option5"]


-- 3004182	神龙之泪	
tItemFace[3004182] = 1107
tItem[3004182] = tItem[3004182] or {}
tItem[3004182]["Function"] = function (nItemId,sItemName)
	UndergroundPalace_UseMedicine(nItemId)
end
tItemFace[3004230] = 1108
tItemFace[3004231] = 1109
tItemFace[3004232] = 1110
tItemFace[3004233] = 1111
tItemFace[3004234] = 1112
tItemFace[3004235] = 1113
tItemFace[3004236] = 1114
tItemFace[3004237] = 1115
tItemFace[3004238] = 1116
tItem[3004230] = tItem[3004182]		-- 3004230	神龙超能药水
tItem[3004231] = tItem[3004182]         -- 3004231	神龙粉碎药水
tItem[3004232] = tItem[3004182]        -- 3004232	神龙暴击药水 
tItem[3004233] = tItem[3004182]        -- 3004233	神龙坚固药水 
tItem[3004234] = tItem[3004182]        -- 3004234	神龙防暴药水 
tItem[3004235] = tItem[3004182]        -- 3004235	神龙物伤药水 
tItem[3004236] = tItem[3004182]        -- 3004236	神龙法伤药水 
tItem[3004237] = tItem[3004182]        -- 3004237	神龙物抗药水 
tItem[3004238] = tItem[3004182]        -- 3004238	神龙法抗药水 

--------------------------------------------怪物模板---------------------------------------
-- 3967	梦魇夜叉
-- 3968	黑风邪煞
-- 3969	幽冥魔将
local tUndergroundPalace_AreaLoad = {}
	tUndergroundPalace_AreaLoad["Function"] = UndergroundPalace_MonsterDrop
	tUndergroundPalace_AreaLoad["MonsterId"] = {3967,3968,3969}
table.insert(tMonsterDrop_AreaLoad,tUndergroundPalace_AreaLoad)

-- 啸海巨魔 4220
-- 禁天妖兽 4212
-- 晶魄雪妖  4171 
-- 熔岩狂魔  4151   
local tUndergroundPalace_Boss = {}
	tUndergroundPalace_Boss["Function"] = UndergroundPalace_BossDie
	tUndergroundPalace_Boss["MonsterId"] = {4220,4212,4171,4151}
table.insert(tMonsterDrop_AreaLoad,tUndergroundPalace_Boss)

-- -- 3971		异域邪龙（跨服）
-- -- 3970	瑶姬
-- local tUndergroundPalace_CrossBoss = {}
	-- tUndergroundPalace_CrossBoss["Function"] = UndergroundPalace_CrossBossDie
	-- tUndergroundPalace_CrossBoss["MonsterId"] = {3970,3971}
-- table.insert(tMonsterDrop_AreaLoad,tUndergroundPalace_CrossBoss)


-- BossDamageBonus 伤害排名奖励
-- 4220	啸海巨魔
tBossDamageBonus[4220] = tBossDamageBonus[4220] or {}
tBossDamageBonus[4220]["tFunction"] = tBossDamageBonus[4220]["tFunction"] or {}
table.insert(tBossDamageBonus[4220]["tFunction"],UndergroundPalace_BossDamgRank)
-- 4212		禁天妖兽
tBossDamageBonus[4212] = tBossDamageBonus[4212] or {}
tBossDamageBonus[4212]["tFunction"] = tBossDamageBonus[4212]["tFunction"] or {}
table.insert(tBossDamageBonus[4212]["tFunction"],UndergroundPalace_BossDamgRank)
-- 4171		晶魄雪妖
tBossDamageBonus[4171] = tBossDamageBonus[4171] or {}
tBossDamageBonus[4171]["tFunction"] = tBossDamageBonus[4171]["tFunction"] or {}
table.insert(tBossDamageBonus[4171]["tFunction"],UndergroundPalace_BossDamgRank)
-- 4151		熔岩狂魔
-- 熔岩狂魔 无排名奖励 无参与奖励

-- -- 跨服Boss
-- -- 3971		异域邪龙
-- tBossDamageBonus[3971] = tBossDamageBonus[3971] or {}
-- tBossDamageBonus[3971]["tFunction"] = tBossDamageBonus[3971]["tFunction"] or {}
-- table.insert(tBossDamageBonus[3971]["tFunction"],UndergroundPalace_BossDamgRank)
-- -- 3970	瑶姬
-- tBossDamageBonus[3970] = tBossDamageBonus[3970] or {}
-- tBossDamageBonus[3970]["tFunction"] = tBossDamageBonus[3970]["tFunction"] or {}
-- table.insert(tBossDamageBonus[3970]["tFunction"],UndergroundPalace_BossDamgRank)


-- BossRewardEnd 保底奖励
-- 4220	啸海巨魔
tBossRewardEnd[4220] = tBossRewardEnd[4220] or {}
tBossRewardEnd[4220]["tFunction"] = tBossRewardEnd[4220]["tFunction"] or {}
table.insert(tBossRewardEnd[4220]["tFunction"],UndergroundPalace_KillBossJoin)
-- 4212		禁天妖兽
tBossRewardEnd[4212] = tBossRewardEnd[4212] or {}
tBossRewardEnd[4212]["tFunction"] = tBossRewardEnd[4212]["tFunction"] or {}
table.insert(tBossRewardEnd[4212]["tFunction"],UndergroundPalace_KillBossJoin)
-- 4171		晶魄雪妖
tBossRewardEnd[4171] = tBossRewardEnd[4171] or {}
tBossRewardEnd[4171]["tFunction"] = tBossRewardEnd[4171]["tFunction"] or {}
table.insert(tBossRewardEnd[4171]["tFunction"],UndergroundPalace_KillBossJoin)
-- 4151		熔岩狂魔
-- 熔岩狂魔 无排名奖励 无参与奖励

-- -- 跨服Boss
-- -- 3971		异域邪龙
-- tBossRewardEnd[3971] = tBossRewardEnd[3971] or {}
-- tBossRewardEnd[3971]["tFunction"] = tBossRewardEnd[3971]["tFunction"] or {}
-- table.insert(tBossRewardEnd[3971]["tFunction"],UndergroundPalace_KillCrossBossJoin)

-- -- 3970	瑶姬
-- tBossRewardEnd[3970] = tBossRewardEnd[3970] or {}
-- tBossRewardEnd[3970]["tFunction"] = tBossRewardEnd[3970]["tFunction"] or {}
-- table.insert(tBossRewardEnd[3970]["tFunction"],UndergroundPalace_KillBigBossJoin)

-- -- 最后一击
-- -- BossLastKnifeAward(nServerId,nUserId,nMonsterId)
-- -- 3971		异域邪龙
-- tBossLastKnifeAward[3971] = tBossLastKnifeAward[3971] or {}
-- tBossLastKnifeAward[3971]["tFunction"] = tBossLastKnifeAward[3971]["tFunction"] or {}
-- table.insert(tBossLastKnifeAward[3971]["tFunction"],UndergroundPalace_BigBossDie)
-- -- 3970	瑶姬
-- tBossLastKnifeAward[3970] = tBossLastKnifeAward[3970] or {}
-- tBossLastKnifeAward[3970]["tFunction"] = tBossLastKnifeAward[3970]["tFunction"] or {}
-- table.insert(tBossLastKnifeAward[3970]["tFunction"],UndergroundPalace_BigBossDie)

--------------------------------------------时间自检---------------------------------------
-- 4220 啸海巨魔	每个小时的15分和45分	568,372
tOntimerMin_M[15] = tOntimerMin_M[15] or {}
table.insert(tOntimerMin_M[15],UndergroundPalace_BrushBoss_One)
-- tOntimerMin_M[45] = tOntimerMin_M[45] or {}
-- table.insert(tOntimerMin_M[45],UndergroundPalace_BrushBoss_One)

-- 4212 禁天妖兽	每个小时的00分和30分	349,613
-- tOntimerMin_M[00] = tOntimerMin_M[00] or {}
-- table.insert(tOntimerMin_M[00],UndergroundPalace_BrushBoss_Two)
-- tOntimerMin_M[30] = tOntimerMin_M[30] or {}
-- table.insert(tOntimerMin_M[30],UndergroundPalace_BrushBoss_Two)

-- 4171 晶魄雪妖	每个小时的27分和57分	671,683
-- tOntimerMin_M[27] = tOntimerMin_M[27] or {}
-- table.insert(tOntimerMin_M[27],UndergroundPalace_BrushBoss_Three)
-- tOntimerMin_M[57] = tOntimerMin_M[57] or {}
-- table.insert(tOntimerMin_M[57],UndergroundPalace_BrushBoss_Three)

-- -- 异域邪龙（跨服）  3971
-- tOntimerMin_M[05] = tOntimerMin_M[05] or {}
-- table.insert(tOntimerMin_M[05],UndergroundPalace_ShowSmallBoss)
-- tOntimerMin_M[35] = tOntimerMin_M[35] or {}
-- table.insert(tOntimerMin_M[35],UndergroundPalace_ShowSmallBoss)

-- -- 瑶姬  3970
-- tOntimerMin_HM[2110] = tOntimerMin_HM[2110] or {}
-- table.insert(tOntimerMin_HM[2110],UndergroundPalace_ShowBoss)
-- tOntimerMin_HM[1910] = tOntimerMin_HM[1910] or {}
-- table.insert(tOntimerMin_HM[1910],UndergroundPalace_ShowBoss)

--------------------------------------------上线触发---------------------------------------
-- 上线 跳出弹框
-- tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
-- table.insert(tSystem_PlayLogin_Func,UndergroundPalace_LogIn)
