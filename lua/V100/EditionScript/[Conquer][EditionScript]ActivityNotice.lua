----------------------------------------------------------------------------
--Name:		[征服][功能脚本]活动公告面板模块.lua
--Purpose:	活动公告面板模块
--Creator: 	郑鋆
--Created:	2016/04/12
----------------------------------------------------------------------------

-- 命名前缀
-- ActivityNotice_
-- 字段说明
-- ActivityTime			活动时间
-- ActiveTimeType		配置的活动时间类型（=1 完整的时间格式，=2 年某天时间，=3 月某天时间，=4 周某天时间，=5 日时间，=6 小时时间）
-- EventType			活动公告面板使用需要满足的stc掩码
-- DataType				活动公告面板使用需要满足的stc掩码
-- RewardData			活动公告面板使用需要满足的stc掩码
-- TaskId				活动公告面板使用需要满足的任务掩码ID
-- TaskData				活动公告面板使用需要满足的任务掩码值
-- TaskPos				活动公告面板使用需要满足的任务掩码对应的位置
-- TranMode				满足条件后触发的方式（=1表示切地图传送，=2表示自动寻路）默认为1
-- MapId				地图ID
-- PosX					坐标
-- PosY					坐标
-- Range				传送的范围
-- NpcId				自动寻路的NPCID
-- Func					自定义函数
-- Level				活动公告面板使用需要满足的等级
-- Metempsychosis		活动公告面板使用需要满足的转世


tActivityNotice_Activity = {}
local tActivityNotice_Activity_NoGift = {}

------------------------------------------------------------------------------------
--Name:		[征服][活动脚本]2016欧洲杯活动-促销
--Purpose:	2016欧洲杯活动-促销
--Creator: 	郑鋆
--Created:	2016/05/20
------------------------------------------------------------------------------------
-- tActivityNotice_Activity[116] = {}
-- tActivityNotice_Activity[116]["ActiveTimeType"] = 1
-- tActivityNotice_Activity[116]["ActivityTime"] = "2016-06-16 00:00 2016-07-16 23:59"
-- tActivityNotice_Activity[116]["TranMode"] = 0
-- tActivityNotice_Activity[116]["MapId"] = 1002
-- tActivityNotice_Activity[116]["PosX"] = 263
-- tActivityNotice_Activity[116]["PosY"] = 234
-- tActivityNotice_Activity[116]["Range"] = 5
-- tActivityNotice_Activity[116]["Level"] = 80
-- tActivityNotice_Activity[116]["Metempsychosis"] = 0

------------------------------------------------------------------------------------
---Name:	160615[简体征服][活动脚本]赠点骰子活动(7.1-7.15)
--Creator: 	陈莺
--Created:	2016-06-15
------------------------------------------------------------------------------------
-- tActivityNotice_Activity[141] = {}
-- tActivityNotice_Activity[141]["ActiveTimeType"] = 1
-- tActivityNotice_Activity[141]["ActivityTime"] = "2016-09-08 00:00 2016-09-22 23:59"
-- tActivityNotice_Activity[141]["TranMode"] = 0
-- tActivityNotice_Activity[141]["MapId"] = 1002 --1036
-- tActivityNotice_Activity[141]["PosX"] = 314 --270
-- tActivityNotice_Activity[141]["PosY"] = 248 --197
-- tActivityNotice_Activity[141]["Range"] = 5
-- tActivityNotice_Activity[141]["Level"] = 1
-- tActivityNotice_Activity[141]["Metempsychosis"] = 0

------------------------------------------------------------------------------------
--Name:		[征服][活动脚本]打怪积分活动-死亡秘境
--Purpose:	打怪积分活动-死亡秘境
--Creator: 	兰瑞妹
--Created:	2016/05/17
------------------------------------------------------------------------------------
-- tActivityNotice_Activity[114] = {}
-- tActivityNotice_Activity[114]["ActiveTimeType"] = 1
-- tActivityNotice_Activity[114]["ActivityTime"] = "2016-10-01 00:00 2016-10-07 23:59"
-- tActivityNotice_Activity[114]["TranMode"] = 0
-- tActivityNotice_Activity[114]["MapId"] = 1002
-- tActivityNotice_Activity[114]["PosX"] = 243
-- tActivityNotice_Activity[114]["PosY"] = 241
-- tActivityNotice_Activity[114]["Range"] = 5
-- tActivityNotice_Activity[114]["NpcId"] = 19269
-- tActivityNotice_Activity[114]["Level"] = 100
-- tActivityNotice_Activity[114]["Metempsychosis"] = 0

----------------------------------------------------------------------------
--Name:		[征服][功能脚本]跨服精英PK赛活动制作.lua
--Purpose:	跨服精英PK赛活动
--Creator: 	郑鋆
--Created:	2016/08/10
----------------------------------------------------------------------------
-- tActivityNotice_Activity[146] = {}
-- tActivityNotice_Activity[146]["ActiveTimeType"] = 1
-- tActivityNotice_Activity[146]["ActivityTime"] = "2016-10-11 00:00 2016-11-04 23:59"
-- tActivityNotice_Activity[146]["MapId"] = 1002
-- tActivityNotice_Activity[146]["PosX"] = 292
-- tActivityNotice_Activity[146]["PosY"] = 155
-- tActivityNotice_Activity[146]["Range"] = 5
-- tActivityNotice_Activity[146]["Level"] = 100
-- tActivityNotice_Activity[146]["Metempsychosis"] = 0

----------------------------------------------------------------------------
--Name:		160106[简体征服][任务脚本]6级房屋及相关功能制作
--Purpose:	6级房屋
--Creator: 	许乐
--Created:	2016/11/17
----------------------------------------------------------------------------
tActivityNotice_Activity[105] = {}
tActivityNotice_Activity[105]["ActiveTimeType"] = 1
tActivityNotice_Activity[105]["ActivityTime"] = "2016-11-17 00:00 2020-11-04 23:59"
tActivityNotice_Activity[105]["TranMode"] = 0
tActivityNotice_Activity[105]["MapId"] = 1002 --1036
tActivityNotice_Activity[105]["PosX"] = 347 --199
tActivityNotice_Activity[105]["PosY"] = 514 --87
tActivityNotice_Activity[105]["NpcId"] = 30156
tActivityNotice_Activity[105]["Range"] = 5
tActivityNotice_Activity[105]["Level"] = 1
tActivityNotice_Activity[105]["Metempsychosis"] = 0
------------------------------------------------------------------------------------
-- Name:		161026【简体征服】【活动】春节小活动
-- Purpose:		春节小活动
-- Creator:		丁雨浩
-- Created:		2016/11/18
------------------------------------------------------------------------------------
-- tActivityNotice_Activity[194] = {}
-- tActivityNotice_Activity[194]["ActiveTimeType"] = 1
-- tActivityNotice_Activity[194]["ActivityTime"] = "2017-01-23 00:00 2017-02-11 23:59"
-- tActivityNotice_Activity[194]["MapId"] = 1002
-- tActivityNotice_Activity[194]["PosX"] = 296
-- tActivityNotice_Activity[194]["PosY"] = 366
-- tActivityNotice_Activity[194]["Range"] = 5
-- tActivityNotice_Activity[194]["Level"] = 80
-- tActivityNotice_Activity[194]["Metempsychosis"] = 0
------------------------------------------------------------------------------------
--Name:		170119[简体征服][活动脚本]2017年情人节花魁赛
--Creator:		陈磊
--Created:		2017/01/19
------------------------------------------------------------------------------------
-- tActivityNotice_Activity[215] = {}
-- tActivityNotice_Activity[215]["ActiveTimeType"] = 1
-- tActivityNotice_Activity[215]["ActivityTime"] = "2017-02-16 00:00 2017-03-10 23:59"
-- tActivityNotice_Activity[215]["MapId"] = 1002
-- tActivityNotice_Activity[215]["PosX"] = 319
-- tActivityNotice_Activity[215]["PosY"] = 254
-- tActivityNotice_Activity[215]["Range"] = 5
-- tActivityNotice_Activity[215]["Level"] = 80
-- tActivityNotice_Activity[215]["Metempsychosis"] = 0
------------------------------------------------------------------------------------
--Name:		[征服][活动脚本]鸡年年兽活动-喂养
--Purpose:	鸡年年兽活动-喂养
--Creator: 	吴文鑫
--Created:	2017/01/06
------------------------------------------------------------------------------------
-- tActivityNotice_Activity[212] = {}
-- tActivityNotice_Activity[212]["ActiveTimeType"] = 1
-- tActivityNotice_Activity[212]["ActivityTime"] = "2017-04-06 00:00 2017-04-15 23:59"
-- tActivityNotice_Activity[212]["MapId"] = 1002
-- tActivityNotice_Activity[212]["PosX"] = 262
-- tActivityNotice_Activity[212]["PosY"] = 233
-- tActivityNotice_Activity[212]["Range"] = 5
-- tActivityNotice_Activity[212]["Level"] = 80
-- tActivityNotice_Activity[212]["Metempsychosis"] = 0

------------------------------------------------------------------------------------
--Name:		170217[简体征服][活动脚本]3月份骑宠活动
--Creator: 	严振飞
--Created:	2017/2/17
------------------------------------------------------------------------------------
-- tActivityNotice_Activity[222] = {}
-- tActivityNotice_Activity[222]["ActiveTimeType"] = 1
-- tActivityNotice_Activity[222]["ActivityTime"] = "2017-04-18 00:00 2017-05-01 23:59"
-- tActivityNotice_Activity[222]["MapId"] = 1002
-- tActivityNotice_Activity[222]["PosX"] = 245
-- tActivityNotice_Activity[222]["PosY"] = 228
-- tActivityNotice_Activity[222]["Range"] = 5
-- tActivityNotice_Activity[222]["Level"] = 80
-- tActivityNotice_Activity[222]["Metempsychosis"] = 0

------------------------------------------------------------------------------------
--Name:		170411[简体征服][活动脚本]150级新地宫制作
--Creator: 	许乐
--Created:	2017/05/05
------------------------------------------------------------------------------------
tActivityNotice_Activity[68] = {}
tActivityNotice_Activity[68]["ActiveTimeType"] = 1
tActivityNotice_Activity[68]["MapId"] = 10137
tActivityNotice_Activity[68]["PosX"] = 88
tActivityNotice_Activity[68]["PosY"] = 407
tActivityNotice_Activity[68]["Range"] = 5
tActivityNotice_Activity[68]["Level"] = 1
tActivityNotice_Activity[68]["Metempsychosis"] = 2


------------------------------------------------------------------------------------
--Name:			170516[英文征服][活动脚本]升级福利活动
--Creator:		陈磊
--Created:		2017/05/16
------------------------------------------------------------------------------------
-- tActivityNotice_Activity[261] = {}
-- tActivityNotice_Activity[261]["ActiveTimeType"] = 1
-- tActivityNotice_Activity[261]["ActivityTime"] = "2017-05-25 00:00 2017-06-25 23:59"
-- tActivityNotice_Activity[261]["MapId"] = 1002
-- tActivityNotice_Activity[261]["PosX"] = 318
-- tActivityNotice_Activity[261]["PosY"] = 250
-- tActivityNotice_Activity[261]["Range"] = 5
-- tActivityNotice_Activity[261]["Level"] = 100
-- tActivityNotice_Activity[261]["Metempsychosis"] = 0

------------------------------------------------------------------------------------
--Name：        170321[简体征服][活动脚本]NBA活动制作(4.13-4.26)
--Creator:      陈莺
--Created:     2017/03/21
------------------------------------------------------------------------------------
tActivityNotice_Activity[256] = {}
tActivityNotice_Activity[256]["ActiveTimeType"] = 1
tActivityNotice_Activity[256]["ActivityTime"] = tActivityTime["ActivityOfNBA"]["Now_Time"]
tActivityNotice_Activity[256]["MapId"] = 1002
tActivityNotice_Activity[256]["PosX"] = 321
tActivityNotice_Activity[256]["PosY"] = 442
tActivityNotice_Activity[256]["Range"] = 5
tActivityNotice_Activity[256]["Level"] = 80
tActivityNotice_Activity[256]["Metempsychosis"] = 0

----------------------------------------------------------------------------
--Name:		[征服][任务脚本]夏日大作战.lua
--Purpose:	夏日大作战
--Creator: 	郑鋆
--Created:	2017/06/21
----------------------------------------------------------------------------
-- tActivityNotice_Activity[271] = {}
-- tActivityNotice_Activity[271]["ActiveTimeType"] = 1
-- tActivityNotice_Activity[271]["ActivityTime"] = tActivityTime["Summer"]["UseItem"]
-- tActivityNotice_Activity[271]["MapId"] = 1002
-- tActivityNotice_Activity[271]["PosX"] = 315
-- tActivityNotice_Activity[271]["PosY"] = 235
-- tActivityNotice_Activity[271]["Range"] = 5
-- tActivityNotice_Activity[271]["Level"] = 80
-- tActivityNotice_Activity[271]["Metempsychosis"] = 0

------------------------------------------------------------------------------------
--Name:			[简体征服][活动脚本]蜀山大阵
--Creator:		翁清海
--Created:		2017/03/01
------------------------------------------------------------------------------------

-- tActivityNotice_Activity[204] = {}
-- tActivityNotice_Activity[204]["ActiveTimeType"] = 1
-- tActivityNotice_Activity[204]["ActivityTime"] = "2017-08-03 00:00 2017-08-16 23:59"
-- tActivityNotice_Activity[204]["MapId"] = 1002
-- tActivityNotice_Activity[204]["PosX"] = 334
-- tActivityNotice_Activity[204]["PosY"] = 248
-- tActivityNotice_Activity[204]["Range"] = 5
-- tActivityNotice_Activity[204]["Level"] = 120
-- tActivityNotice_Activity[204]["Metempsychosis"] = 2

------------------------------------------------------------------------------------
--Name:			170712[简体征服][活动脚本]七夕节活动制作
--Creator:		陈琳
--Created:		2017/07/12
------------------------------------------------------------------------------------
-- tActivityNotice_Activity[47] = {}
-- tActivityNotice_Activity[47]["ActiveTimeType"] = 1
-- tActivityNotice_Activity[47]["ActivityTime"] = tActivityTime["ChineseValentinesDay"]["ActivityTime"]
-- tActivityNotice_Activity[47]["MapId"] = 1002
-- tActivityNotice_Activity[47]["PosX"] = 331
-- tActivityNotice_Activity[47]["PosY"] = 438
-- tActivityNotice_Activity[47]["Range"] = 5
-- tActivityNotice_Activity[47]["Level"] = 80
-- tActivityNotice_Activity[47]["Metempsychosis"] = 0


--------------------------------------------------------------------------------
--Name:		170605[简体征服][任务脚本]神龙岛打宝区制作
--Creator: 	许乐
--Created:		2017/06/05
--------------------------------------------------------------------------------
tActivityNotice_Activity[25] = {}
tActivityNotice_Activity[25]["ActiveTimeType"] = 1
tActivityNotice_Activity[25]["TranMode"] = 1
tActivityNotice_Activity[25]["NpcId"] = 20823
tActivityNotice_Activity[25]["MapId"] = 10137
tActivityNotice_Activity[25]["PosX"] = 453
tActivityNotice_Activity[25]["PosY"] = 480
tActivityNotice_Activity[25]["Range"] = 5
tActivityNotice_Activity[25]["Level"] = 120
tActivityNotice_Activity[25]["Metempsychosis"] = 2

------------------------------------------------------------------------------------
--Name：            171013[英文征服][活动脚本]感恩月-以旧换新活动制作
--Creator:      蔡颖静
--Created:     2017/10/13
------------------------------------------------------------------------------------
tActivityNotice_Activity[1101] = {}
tActivityNotice_Activity[1101]["ActiveTimeType"] = 1
tActivityNotice_Activity[1101]["ActivityTime"] = tActivityTime["ThankGivingExchange"]["ActiveTime"]
tActivityNotice_Activity[1101]["TranMode"] = 1
tActivityNotice_Activity[1101]["NpcId"] = 22274
tActivityNotice_Activity[1101]["MapId"] = 1002
tActivityNotice_Activity[1101]["PosX"] = 355
tActivityNotice_Activity[1101]["PosY"] = 427
tActivityNotice_Activity[1101]["Range"] = 5
tActivityNotice_Activity[1101]["Level"] = 1
tActivityNotice_Activity[1101]["Metempsychosis"] = 0

--------------------------------------------------------------------------------------------------------
--name:170405[简体征服][任务脚本]1天石赌活动制作
--by:魏贻逵
--date:2017-04-05
--------------------------------------------------------------------------------------------------------
tActivityNotice_Activity[264] = {}
tActivityNotice_Activity[264]["ActiveTimeType"] = 1
tActivityNotice_Activity[264]["ActivityTime"] = tActivityTime["OneCpGamble"]["Nowtime"]
tActivityNotice_Activity[264]["MapId"] = 1002
tActivityNotice_Activity[264]["PosX"] = 355
tActivityNotice_Activity[264]["PosY"] = 460
tActivityNotice_Activity[264]["Range"] = 5
tActivityNotice_Activity[264]["Level"] = 80
tActivityNotice_Activity[264]["Metempsychosis"] = 0

------------------------------------------------------------------------------------
--Name:		171110[英文征服][活动脚本]12月琳琅嘉年华活动制作
--Creator: 	王贤
--Created:	2017-11-10
------------------------------------------------------------------------------------
--Name:		161031[简体征服][活动脚本]大型MMO活动--飞翔吧筋斗云
--Creator: 	许乐
--Created:	2016/10/31
------------------------------------------------------------------------------------
tActivityNotice_Activity[187] = {}
tActivityNotice_Activity[187]["ActiveTimeType"] = 1
tActivityNotice_Activity[187]["ActivityTime"] = tActivityTime["MMOJindowin"]["NowTime"]
tActivityNotice_Activity[187]["MapId"] = 1002
tActivityNotice_Activity[187]["PosX"] = 344
tActivityNotice_Activity[187]["PosY"] = 486
tActivityNotice_Activity[187]["Range"] = 5
tActivityNotice_Activity[187]["Level"] = 80
tActivityNotice_Activity[187]["Metempsychosis"] = 0
------------------------------------------------------------------------------------
---Name:161109[简体征服][活动脚本]趣味积分活动总NPC
--Creator: 	翁增锐
--Created:	2016-12-13
------------------------------------------------------------------------------------

--tActivityNotice_Activity[201] = {}
--tActivityNotice_Activity[201]["ActiveTimeType"] = 1
--tActivityNotice_Activity[201]["ActivityTime"] = tActivityTime["LinLang"]["ActivityTime"]
--tActivityNotice_Activity[201]["MapId"] = 1002
--tActivityNotice_Activity[201]["PosX"] = 356
--tActivityNotice_Activity[201]["PosY"] = 426
--tActivityNotice_Activity[201]["Range"] = 5
--tActivityNotice_Activity[201]["Level"] = 1
--tActivityNotice_Activity[201]["Metempsychosis"] = 0
----------------------------------------------------------------------------------
----------------------------------------------------------------------------
--Name:		[英文征服][活动脚本]一月促销.lua
--Purpose:	一月促销
--Creator: 	洪聪敏
--Created:	2017/12/13
----------------------------------------------------------------------------
tActivityNotice_Activity[298] = {}
tActivityNotice_Activity[298]["ActiveTimeType"] = 1
tActivityNotice_Activity[298]["ActivityTime"] = tActivityTime["JanuaPro"]["ActTime"]
tActivityNotice_Activity[298]["MapId"] = 1002
tActivityNotice_Activity[298]["PosX"] = 368
tActivityNotice_Activity[298]["PosY"] = 452
tActivityNotice_Activity[298]["Range"] = 5
tActivityNotice_Activity[298]["Level"] = 80
tActivityNotice_Activity[298]["Metempsychosis"] = 0

------------------------------------------------------------------------------------
--Name：            171103[ios英文征服][活动脚本]帮派斗地主活动
--Creator:      潘云锋
--Created:     2017/11/03
------------------------------------------------------------------------------------
tActivityNotice_Activity[1103] = {}
tActivityNotice_Activity[1103]["ActiveTimeType"] = 1
tActivityNotice_Activity[1103]["ActivityTime"] = tActivityTime["GangsLandlord"]["ActivityTime"]
tActivityNotice_Activity[1103]["MapId"] = 1002
tActivityNotice_Activity[1103]["PosX"] = 321
tActivityNotice_Activity[1103]["PosY"] = 452
tActivityNotice_Activity[1103]["Range"] = 5
tActivityNotice_Activity[1103]["Level"] = 80
tActivityNotice_Activity[1103]["Metempsychosis"] = 0

------------------------------------------------------------------------------------
--Name：            171211[英文征服][活动脚本]1月新年赠品转盘活动
--Creator:      蔡颖静
--Created:     2017/12/11
------------------------------------------------------------------------------------
tActivityNotice_Activity[296] = {}
tActivityNotice_Activity[296]["ActiveTimeType"] = 1
tActivityNotice_Activity[296]["ActivityTime"] = tActivityTime["NewYearRoulette"]["ActivityTime"]
tActivityNotice_Activity[296]["TranMode"] = 1
tActivityNotice_Activity[296]["NpcId"] = 22429
tActivityNotice_Activity[296]["MapId"] = 1002
tActivityNotice_Activity[296]["PosX"] = 364
tActivityNotice_Activity[296]["PosY"] = 435
tActivityNotice_Activity[296]["Range"] = 5
tActivityNotice_Activity[296]["Level"] = 1
tActivityNotice_Activity[296]["Metempsychosis"] = 0

--------------------------------------------------------------------------------
--Name:		170802[简体征服][活动脚本]新征服预热活动制作
--Creator: 	许乐
--Created:		2017/08/02
--------------------------------------------------------------------------------
tActivityNotice_Activity[274] = {}
tActivityNotice_Activity[274]["ActiveTimeType"] = 1
tActivityNotice_Activity[274]["ActivityTime"] = tActivityTime["WarmUp"]["ActivityTime"]
tActivityNotice_Activity[274]["TranMode"] = 1
tActivityNotice_Activity[274]["NpcId"] = 22013
tActivityNotice_Activity[274]["MapId"] = 1002
tActivityNotice_Activity[274]["PosX"] = 349
tActivityNotice_Activity[274]["PosY"] = 426
tActivityNotice_Activity[274]["Range"] = 5
tActivityNotice_Activity[274]["Level"] = 100
tActivityNotice_Activity[274]["Metempsychosis"] = 0


--------------------------------------------------------------------------------
--Name:			[简体征服][活动脚本]天下第一武道会
--Creator:		翁清海
--Created:		2017/09/28
--------------------------------------------------------------------------------
tActivityNotice_Activity[291] = {}
tActivityNotice_Activity[291]["ActiveTimeType"] = 1
tActivityNotice_Activity[291]["ActivityTime"] = tActivityTime["FirstWorldBudokai"]["ActivityTime"]
tActivityNotice_Activity[291]["MapId"] = 1002
tActivityNotice_Activity[291]["PosX"] = 374
tActivityNotice_Activity[291]["PosY"] = 395
tActivityNotice_Activity[291]["Range"] = 5
tActivityNotice_Activity[291]["Level"] = 100
tActivityNotice_Activity[291]["Metempsychosis"] = 2

------------------------------------------------------------------------------------
--Name:		[英文征服][活动脚本]德州新地图春节红包雨活动(2.13-2.17)
--Purpose:	德州新地图春节红包雨活动
--Creator: 	严振飞
--Created:	2018/01/12
------------------------------------------------------------------------------------
tActivityNotice_Activity[1104] = {}
tActivityNotice_Activity[1104]["ActiveTimeType"] = 1
tActivityNotice_Activity[1104]["ActivityTime"] = tActivityTime["RedPackRain"]["ActTime"]
tActivityNotice_Activity[1104]["MapId"] = 1002
tActivityNotice_Activity[1104]["PosX"] = 346
tActivityNotice_Activity[1104]["PosY"] = 442
tActivityNotice_Activity[1104]["Range"] = 2
tActivityNotice_Activity[1104]["Level"] = 1
tActivityNotice_Activity[1104]["Metempsychosis"] = 0
------------------------------------------------------------------------------------
--Name：        180117[简体征服][活动脚本]狗年年兽活动制作(2.8)
--Creator:      陈莺
--Created:     2018/01/17
------------------------------------------------------------------------------------
-- tActivityNotice_Activity[305] = {}
-- tActivityNotice_Activity[305]["ActiveTimeType"] = 1
-- tActivityNotice_Activity[305]["ActivityTime"] = tActivityTime["DogYear"]["NowTime"]
-- tActivityNotice_Activity[305]["MapId"] = 1002
-- tActivityNotice_Activity[305]["PosX"] = 328
-- tActivityNotice_Activity[305]["PosY"] = 490
-- tActivityNotice_Activity[305]["Range"] = 5
-- tActivityNotice_Activity[305]["Level"] = 80
-- tActivityNotice_Activity[305]["Metempsychosis"] = 0

------------------------------------------------------------------------------------
--Name:			180109[英文征服][活动脚本]2月情人节大作战
--Creator:		陈琳
--Created:		2018/01/09
------------------------------------------------------------------------------------
tActivityNotice_Activity[1105] = {}
tActivityNotice_Activity[1105]["ActiveTimeType"] = 1
tActivityNotice_Activity[1105]["ActivityTime"] = tActivityTime["ChineseValentinesOperation"]["ActivityTime"]
tActivityNotice_Activity[1105]["MapId"] = 1002
tActivityNotice_Activity[1105]["PosX"] = 347
tActivityNotice_Activity[1105]["PosY"] = 476
tActivityNotice_Activity[1105]["Range"] = 5
tActivityNotice_Activity[1105]["Level"] = 80
tActivityNotice_Activity[1105]["Metempsychosis"] = 0

------------------------------------------------------------------------------------
--Name:		180314[英文征服][活动脚本]]4月彩蛋收集活动(4.1-4.10)
--Creator: 	兰瑞妹
--Created:	2018/03/20
------------------------------------------------------------------------------------
tActivityNotice_Activity[311] = {}
tActivityNotice_Activity[311]["ActiveTimeType"] = 1
tActivityNotice_Activity[311]["ActivityTime"] = tActivityTime["EasterEggPainting"]["ActivityTime"]
tActivityNotice_Activity[311]["MapId"] = 1002
tActivityNotice_Activity[311]["PosX"] = 347
tActivityNotice_Activity[311]["PosY"] = 465
tActivityNotice_Activity[311]["Range"] = 5
tActivityNotice_Activity[311]["Level"] = 80
tActivityNotice_Activity[311]["Metempsychosis"] = 0

------------------------------------------------------------------------------------
--Name:		170920[简体征服][活动脚本]砸罐子活动制作
--Creator: 	兰瑞妹
--Created:	2017/10/11
------------------------------------------------------------------------------------
tActivityNotice_Activity[290] = {}
tActivityNotice_Activity[290]["ActiveTimeType"] = 1
tActivityNotice_Activity[290]["ActivityTime"] = tActivityTime["SmashPot"]["ActivityTime"]
tActivityNotice_Activity[290]["MapId"] = 1002
tActivityNotice_Activity[290]["PosX"] = 374
tActivityNotice_Activity[290]["PosY"] = 495
tActivityNotice_Activity[290]["Range"] = 5
tActivityNotice_Activity[290]["Level"] = 80
tActivityNotice_Activity[290]["Metempsychosis"] = 0
tActivityNotice_Activity_NoGift[290] = {}
tActivityNotice_Activity_NoGift[290]["ActiveTimeType"] = 1
tActivityNotice_Activity_NoGift[290]["ActivityTime"] = tActivityTime["SmashPot"]["ActivityTime"]
tActivityNotice_Activity_NoGift[290]["MapId"] = 1036
tActivityNotice_Activity_NoGift[290]["PosX"] = 205
tActivityNotice_Activity_NoGift[290]["PosY"] = 165
tActivityNotice_Activity_NoGift[290]["Range"] = 5
tActivityNotice_Activity_NoGift[290]["Level"] = 80
tActivityNotice_Activity_NoGift[290]["Metempsychosis"] = 0

----------------------------------------------------------------------------
--Name:		170920[英文征服][活动脚本]杀怪除魔得金币
--Creator: 	黄啸
--Created:	2018/04/11
------------------------------------------------------------------------------------
tActivityNotice_Activity[1108] = {}
tActivityNotice_Activity[1108]["ActiveTimeType"] = 1
tActivityNotice_Activity[1108]["MapId"] = 1002
tActivityNotice_Activity[1108]["PosX"] = 352
tActivityNotice_Activity[1108]["PosY"] = 456
tActivityNotice_Activity[1108]["Range"] = 5
tActivityNotice_Activity[1108]["Level"] = 1
tActivityNotice_Activity[1108]["Metempsychosis"] = 0


------------------------------------------------------------------------------------
--Name:			180321[英文征服][活动脚本]周年许愿活动
--Purpose:		周年许愿
--Creator:		wzh
--Created:		2018/03/21
------------------------------------------------------------------------------------
tActivityNotice_Activity[303] = {}
tActivityNotice_Activity[303]["ActiveTimeType"] = 1
tActivityNotice_Activity[303]["ActivityTime"] = tActivityTime["SpringFestivalWishes"]["ActivityTime"][1]
tActivityNotice_Activity[303]["MapId"] = 1002
tActivityNotice_Activity[303]["PosX"] = 340
tActivityNotice_Activity[303]["PosY"] = 464
tActivityNotice_Activity[303]["Range"] = 5
tActivityNotice_Activity[303]["Level"] = 80
tActivityNotice_Activity[303]["Metempsychosis"] = 0

------------------------------------------------------------------------------------
--Name:		171208[简体征服][活动脚本]幽冥狱暴乱（新版打怪掉宝）
--Creator: 	姚曦宇
--Created:	2017/12/08
------------------------------------------------------------------------------------
tActivityNotice_Activity[297] = {}
tActivityNotice_Activity[297]["ActiveTimeType"] = 1
tActivityNotice_Activity[297]["ActivityTime"] = tActivityTime["RiotOfNether"]["Activity"]
tActivityNotice_Activity[297]["MapId"] = 1002
tActivityNotice_Activity[297]["PosX"] = 334
tActivityNotice_Activity[297]["PosY"] = 497
tActivityNotice_Activity[297]["Range"] = 5
tActivityNotice_Activity[297]["Level"] = 80
tActivityNotice_Activity[297]["Metempsychosis"] = 0



------------------------------------------------------------------------------------
--Name:		180528[英文征服][活动脚本]6月以旧换新活动制作
--Purpose:	6月以旧换新活动制作
--Creator: 	傅伟龙
--Created:	2018/05/28
------------------------------------------------------------------------------------
tActivityNotice_Activity[1115] = {}
tActivityNotice_Activity[1115]["ActiveTimeType"] = 1
tActivityNotice_Activity[1115]["ActivityTime"] = tActivityTime["OldForNewServiceAct"]["ActTime"]
tActivityNotice_Activity[1115]["MapId"] = 1002
tActivityNotice_Activity[1115]["PosX"] = 375
tActivityNotice_Activity[1115]["PosY"] = 436
tActivityNotice_Activity[1115]["Range"] = 5
tActivityNotice_Activity[1115]["Level"] = 0
tActivityNotice_Activity[1115]["Metempsychosis"] = 0

------------------------------------------------------------------------------------
--Name:		180504[简体征服][活动脚本]2018世界杯活动制作
--Creator: 	兰瑞妹
--Created:	2018/05/06
------------------------------------------------------------------------------------
tActivityNotice_Activity[317] = {}
tActivityNotice_Activity[317]["ActiveTimeType"] = 1
tActivityNotice_Activity[317]["ActivityTime"] = tActivityTime["WorldCupActivities"]["ActivityTime"]
tActivityNotice_Activity[317]["NpcId"] = 22944
tActivityNotice_Activity[317]["MapId"] = 1002
tActivityNotice_Activity[317]["PosX"] = 320
tActivityNotice_Activity[317]["PosY"] = 443
tActivityNotice_Activity[317]["Range"] = 5
tActivityNotice_Activity[317]["Level"] = 80
tActivityNotice_Activity[317]["Metempsychosis"] = 0
------------------------------------------------------------------------------------
--Name:		180514[英文征服][活动脚本]6月金币转盘活动
--Purpose:	6月金币转盘活动
--Creator: 	傅伟龙
--Created:	2018/05/14
------------------------------------------------------------------------------------
tActivityNotice_Activity[1111] = {}
tActivityNotice_Activity[1111]["ActiveTimeType"] = 1
tActivityNotice_Activity[1111]["ActivityTime"] = tActivityTime["JuneMoneyTurntableAct"]["ActTime"]
tActivityNotice_Activity[1111]["MapId"] = 1002
tActivityNotice_Activity[1111]["PosX"] = 340
tActivityNotice_Activity[1111]["PosY"] = 463
tActivityNotice_Activity[1111]["Range"] = 5
tActivityNotice_Activity[1111]["Level"] = 80
tActivityNotice_Activity[1111]["Metempsychosis"] = 1

------------------------------------------------------------------------------------
--Name:			[英文征服][活动脚本]练气狂欢周
--Creator:		翁清海
--Created:		2018/06/14
------------------------------------------------------------------------------------
tActivityNotice_Activity[1117] = {}
tActivityNotice_Activity[1117]["ActiveTimeType"] = 1
tActivityNotice_Activity[1117]["ActivityTime"] = tActivityTime["StrengthCrazyWeek"]["ActivityTime"]
tActivityNotice_Activity[1117]["NpcId"] = 22995
tActivityNotice_Activity[1117]["MapId"] = 1002
tActivityNotice_Activity[1117]["PosX"] = 340
tActivityNotice_Activity[1117]["PosY"] = 479
tActivityNotice_Activity[1117]["Range"] = 5
tActivityNotice_Activity[1117]["Level"] = 15
tActivityNotice_Activity[1117]["Metempsychosis"] = 2

------------------------------------------------------------------------------------
--Name:			180302[简体征服][活动脚本]3月幸运树活动
--Purpose:		宝树迎春
--Creator:		wzh
--Created:		2018/03/02
------------------------------------------------------------------------------------
tActivityNotice_Activity[310] = {}
tActivityNotice_Activity[310]["ActiveTimeType"] = 1
tActivityNotice_Activity[310]["ActivityTime"] = tActivityTime["LuckyTree"]["ActivityTime"]
tActivityNotice_Activity[310]["MapId"] = 1002
tActivityNotice_Activity[310]["PosX"] = 322
tActivityNotice_Activity[310]["PosY"] = 438
tActivityNotice_Activity[310]["Range"] = 5
tActivityNotice_Activity[310]["Level"] = 80
tActivityNotice_Activity[310]["Metempsychosis"] = 0

------------------------------------------------------------------------------------
--Name:			170703[简体征服][活动脚本]七夕节小活动（8.16-8.22）
--Purpose:		七夕节小活动
--Creator:		cy
--Created:		2018/06/08
------------------------------------------------------------------------------------
tActivityNotice_Activity[141] = {}
tActivityNotice_Activity[141]["ActiveTimeType"] = 1
tActivityNotice_Activity[141]["ActivityTime"] = tActivityTime["QixiActivity"]["ActivityTime"]
tActivityNotice_Activity[141]["MapId"] = 1002
tActivityNotice_Activity[141]["PosX"] = 340
tActivityNotice_Activity[141]["PosY"] = 468
tActivityNotice_Activity[141]["Range"] = 5
tActivityNotice_Activity[141]["Level"] = 80
tActivityNotice_Activity[141]["Metempsychosis"] = 0

------------------------------------------------------------------------------------
--Name:			161231[英文征服][活动脚本]连环夺宝活动
--Creator:		兰瑞妹
--Created:		2016/12/31
------------------------------------------------------------------------------------
tActivityNotice_Activity[210] = {}
tActivityNotice_Activity[210]["ActiveTimeType"] = 1
tActivityNotice_Activity[210]["ActivityTime"] = tActivityTime["SerialIndiana"]["Activity"]
tActivityNotice_Activity[210]["TranMode"] = 0
tActivityNotice_Activity[210]["MapId"] = 1002 --1036
tActivityNotice_Activity[210]["PosX"] = 368
tActivityNotice_Activity[210]["PosY"] = 436
tActivityNotice_Activity[210]["Range"] = 5
tActivityNotice_Activity[210]["Level"] = 80
tActivityNotice_Activity[210]["Metempsychosis"] = 0

----------------------------------------------------------------------------
--Name:			180701[简体征服][活动脚本]帮派矿洞玩法
--Purpose:		帮派矿洞
--Creator:		wzh
--Created:		2018-07-01
------------------------------------------------------------------------------------
tActivityNotice_Activity[322] = {}
tActivityNotice_Activity[322]["ActiveTimeType"] = 5
tActivityNotice_Activity[322]["ActivityTime"] = "00:01 20:59"
-- tActivityNotice_Activity[322]["ActivityTime"] = tActivityTime["FactionHole"]["AcitveTime"]
tActivityNotice_Activity[322]["MapId"] = 1002
tActivityNotice_Activity[322]["PosX"] = 340
tActivityNotice_Activity[322]["PosY"] = 323
tActivityNotice_Activity[322]["Range"] = 5
tActivityNotice_Activity[322]["Level"] = 80
tActivityNotice_Activity[322]["Metempsychosis"] = 0

------------------------------------------------------------------------------------
--Name:		171211[简体征服][任务脚本]新跨服赛马活动
--Creator: 	兰瑞妹
--Created:	2017/12/15
------------------------------------------------------------------------------------
tActivityNotice_Activity[299] = {}
tActivityNotice_Activity[299]["ActiveTimeType"] = 5
tActivityNotice_Activity[299]["MulActivityTime"] = {"14:50 15:30"}
tActivityNotice_Activity[299]["MapId"] = 1002
tActivityNotice_Activity[299]["PosX"] = 368
tActivityNotice_Activity[299]["PosY"] = 436
tActivityNotice_Activity[299]["Range"] = 5
tActivityNotice_Activity[299]["Level"] = 0
tActivityNotice_Activity[299]["Metempsychosis"] = 0


tActivityNotice_Activity[300] = {}
tActivityNotice_Activity[300]["ActiveTimeType"] = 5
tActivityNotice_Activity[300]["ActivityTime"] = "00:00 23:55"
tActivityNotice_Activity[300]["MapId"] = 1002
tActivityNotice_Activity[300]["PosX"] = 363
tActivityNotice_Activity[300]["PosY"] = 436
tActivityNotice_Activity[300]["Range"] = 5
tActivityNotice_Activity[300]["Level"] = 0
tActivityNotice_Activity[300]["Metempsychosis"] = 0

------------------------------------------------------------------------------------
--Name:			[征服][活动脚本]血炼大乱斗
--Creator: 		翁清海
--Created:		2018/05/29
------------------------------------------------------------------------------------
tActivityNotice_Activity[107] = {}
tActivityNotice_Activity[107]["ActiveTimeType"]= 1
tActivityNotice_Activity[107]["ActivityTime"] = tActivityTime["PkActivity"]
tActivityNotice_Activity[107]["MapId"] = 1002
tActivityNotice_Activity[107]["PosX"] = 328
tActivityNotice_Activity[107]["PosY"] = 494
tActivityNotice_Activity[107]["Range"] = 5
tActivityNotice_Activity[107]["Level"] = 100
tActivityNotice_Activity[107]["Metempsychosis"] = 0
------------------------------------------------------------------------------------
--Name：            180821[英文征服][活动脚本]英文征服9月帮派PVP活动
--Creator:      杨艳
--Created:     2018/08/21
------------------------------------------------------------------------------------
tActivityNotice_Activity[326] = {}
tActivityNotice_Activity[326]["ActiveTimeType"] = 1
tActivityNotice_Activity[326]["ActivityTime"] = tActivityTime["BigGangFight"]["ActivityTime"]
tActivityNotice_Activity[326]["MapId"] = 1002 --1036
tActivityNotice_Activity[326]["PosX"] = 330
tActivityNotice_Activity[326]["PosY"] = 438
tActivityNotice_Activity[326]["Range"] = 5
tActivityNotice_Activity[326]["Level"] = 80
tActivityNotice_Activity[326]["Metempsychosis"] = 0


------------------------------------------------------------------------------------
--Name：            180724[简体征服][活动脚本]七夕节活动
--Creator:      王贤
--Created:     2018/07/24
------------------------------------------------------------------------------------
tActivityNotice_Activity[323] = {}
tActivityNotice_Activity[323]["ActiveTimeType"] = 1
tActivityNotice_Activity[323]["ActivityTime"] = tActivityTime["ValentinesDay2018"]["ActivityTime"]
tActivityNotice_Activity[323]["MapId"] = 1002
tActivityNotice_Activity[323]["PosX"] = 382
tActivityNotice_Activity[323]["PosY"] = 441
tActivityNotice_Activity[323]["Range"] = 5
tActivityNotice_Activity[323]["Level"] = 80
tActivityNotice_Activity[323]["Metempsychosis"] = 0

------------------------------------------------------------------------------------
--Name:			180827[英文征服][活动脚本]时装盛会活动
--Purpose:		外套活动
--Creator:		wzh
--Created:		2018-08-27
------------------------------------------------------------------------------------
tActivityNotice_Activity[325] = {}
tActivityNotice_Activity[325]["ActiveTimeType"] = 1
tActivityNotice_Activity[325]["ActivityTime"] = tActivityTime["FashionEvent"]["ActTime"]
tActivityNotice_Activity[325]["MapId"] = 1002
tActivityNotice_Activity[325]["PosX"] = 368
tActivityNotice_Activity[325]["PosY"] = 452
tActivityNotice_Activity[325]["Range"] = 5
tActivityNotice_Activity[325]["Level"] = 80
tActivityNotice_Activity[325]["Metempsychosis"] = 0

------------------------------------------------------------------------------------
--Name：            181123[英文征服][活动脚本]圣诞大促非赠消费（12.18）
--Creator:      杨艳
--Created:     2018/11/23
------------------------------------------------------------------------------------
tActivityNotice_Activity[329] = {}
tActivityNotice_Activity[329]["ActiveTimeType"] = 1
tActivityNotice_Activity[329]["ActivityTime"] = tActivityTime["ChristmasRush"]["ActivityTime"]
tActivityNotice_Activity[329]["MapId"] = 1002
tActivityNotice_Activity[329]["PosX"] = 331
tActivityNotice_Activity[329]["PosY"] = 435
tActivityNotice_Activity[329]["Range"] = 5
tActivityNotice_Activity[329]["Level"] = 80
tActivityNotice_Activity[329]["Metempsychosis"] = 0

------------------------------------------------------------------------------------
--Name：       190107[简体征服][活动脚本]2月情人节花魁赛活动
--Creator:     姚曦宇
--Created:     2019/01/07
------------------------------------------------------------------------------------
tActivityNotice_Activity[330] = {}
tActivityNotice_Activity[330]["ActiveTimeType"] = 1
tActivityNotice_Activity[330]["ActivityTime"] = tActivityTime["ValentinesDay2019NPC"]["ActivityTime"]
tActivityNotice_Activity[330]["MapId"] = tNpcPos["ValentinesDay2019NPC"][23682][1]
tActivityNotice_Activity[330]["PosX"] = tNpcPos["ValentinesDay2019NPC"][23682][2]
tActivityNotice_Activity[330]["PosY"] = tNpcPos["ValentinesDay2019NPC"][23682][3]
tActivityNotice_Activity[330]["Range"] = 5
tActivityNotice_Activity[330]["Level"] = 80
tActivityNotice_Activity[330]["Metempsychosis"] = 0

------------------------------------------------------------------------------------
--Name:			[简体征服][活动脚本]战斗力爬塔活动
--Creator:		翁清海
--Created:		2019/02/26
------------------------------------------------------------------------------------
tActivityNotice_Activity[1134] = {}
tActivityNotice_Activity[1134]["ActiveTimeType"] = 1
tActivityNotice_Activity[1134]["ActivityTime"] = tActivityTime["BattleChallenge"]["ActiveTime"]
tActivityNotice_Activity[1134]["MapId"] = 1002
tActivityNotice_Activity[1134]["PosX"] = 319
tActivityNotice_Activity[1134]["PosY"] = 440
tActivityNotice_Activity[1134]["Range"] = 5
tActivityNotice_Activity[1134]["Level"] = 80
tActivityNotice_Activity[1134]["Metempsychosis"] = 0

------------------------------------------------------------------------------------
--Name：       190212[简体征服][活动脚本]周年庆小活动复用
--Creator:     江宇君
--Created:     2019/02/12
------------------------------------------------------------------------------------
tActivityNotice_Activity[308] = {}
tActivityNotice_Activity[308]["ActiveTimeType"] = 1
tActivityNotice_Activity[308]["ActivityTime"] = tActivityTime["AnniversaryActivity"]["ActivityTime"]
tActivityNotice_Activity[308]["MapId"] = 1002
tActivityNotice_Activity[308]["PosX"] = 340
tActivityNotice_Activity[308]["PosY"] = 491
tActivityNotice_Activity[308]["Range"] = 5
tActivityNotice_Activity[308]["Level"] = 80
tActivityNotice_Activity[308]["Metempsychosis"] = 0
------------------------------------------------------------------------------------
--Name：       190311[简体征服][活动脚本]勇士觉醒前章预热线上任务活动
--Creator:     吴燕柚
--Created:     2019-03-06
------------------------------------------------------------------------------------
tActivityNotice_Activity[78] = {}
tActivityNotice_Activity[78]["ActiveTimeType"] = 1
tActivityNotice_Activity[78]["ActivityTime"] = tActivityTime["TrojanAwakenI"]["ActivityTime"]
tActivityNotice_Activity[78]["NpcId"] = 23849
tActivityNotice_Activity[78]["TranMode"] = 2
tActivityNotice_Activity[78]["Level"] = 120
tActivityNotice_Activity[78]["Metempsychosis"] = 1

------------------------------------------------------------------------------------
--Name：       190306[简体征服][活动脚本]勇士觉醒-第二阶段(5.2-5.8)
--Creator:     江宇君
--Created:     2019-03-06
------------------------------------------------------------------------------------
tActivityNotice_Activity[1132] = {}
tActivityNotice_Activity[1132]["ActiveTimeType"] = 1
tActivityNotice_Activity[1132]["ActivityTime"] = tActivityTime["TrojanAwakenPhaseII"]["ActivityTime"]
tActivityNotice_Activity[1132]["NpcId"] = 23834
tActivityNotice_Activity[1132]["TranMode"] = 2
tActivityNotice_Activity[1132]["Level"] = 120
tActivityNotice_Activity[1132]["Metempsychosis"] = 1


------------------------------------------------------------------------------------
--Name:		190425[英文征服][任务脚本]跨服天下第一活动(5.21-6.9)
--Creator: 	许乐
--Created:	2019/4/25
------------------------------------------------------------------------------------
tActivityNotice_Activity[1136] = {}
tActivityNotice_Activity[1136]["ActiveTimeType"] = 1
tActivityNotice_Activity[1136]["ActivityTime"] = tActivityTime["CrossServerBestHero"]["Activity"]
tActivityNotice_Activity[1136]["MapId"] = 1002
tActivityNotice_Activity[1136]["PosX"] = 319
tActivityNotice_Activity[1136]["PosY"] = 450
tActivityNotice_Activity[1136]["Range"] = 5
tActivityNotice_Activity[1136]["Level"] = 0
tActivityNotice_Activity[1136]["Metempsychosis"] = 0

------------------------------------------------------------------------------------
--Name:190219[简体征服][活动脚本]狐狸骑宠活动制作
--Creator:洪聪敏
--Created:2019/02/19
------------------------------------------------------------------------------------
tActivityNotice_Activity[1135] = {}
tActivityNotice_Activity[1135]["ActiveTimeType"] = 1
tActivityNotice_Activity[1135]["ActivityTime"] = tActivityTime["NewFoxAct"]["ActiveTime"]
tActivityNotice_Activity[1135]["MapId"] = 1002
tActivityNotice_Activity[1135]["PosX"] = 375
tActivityNotice_Activity[1135]["PosY"] = 443
tActivityNotice_Activity[1135]["Range"] = 5
tActivityNotice_Activity[1135]["Level"] = 80
tActivityNotice_Activity[1135]["Metempsychosis"] = 0

------------------------------------------------------------------------------------
--Name：        191021[英文征服][活动脚本]新版个人养宠型TTT活动（11.14-12.04）
--Creator:      茅志伟
--Created:      2019/10/14
------------------------------------------------------------------------------------
tActivityNotice_Activity[1139] = {}
tActivityNotice_Activity[1139]["ActiveTimeType"] = 1
tActivityNotice_Activity[1139]["ActivityTime"] = tActivityTime["NewPetsCultivate"]["ActivityTime"]
tActivityNotice_Activity[1139]["NpcId"] = 25207
tActivityNotice_Activity[1139]["TranMode"] = 2
tActivityNotice_Activity[1139]["Level"] = 0
tActivityNotice_Activity[1139]["Metempsychosis"] = 0



------------------------------------------------------------------------------------
--Name：       190306[简体征服][活动脚本]勇士觉醒-第二阶段(5.2-5.8)
--Creator:     江宇君
--Created:     2019-03-06
------------------------------------------------------------------------------------
tActivityNotice_Activity_NoGift[1132] = {}
tActivityNotice_Activity_NoGift[1132]["ActiveTimeType"] = 1
tActivityNotice_Activity_NoGift[1132]["ActivityTime"] = tActivityTime["TrojanAwakenPhaseII"]["ActivityTime"]
tActivityNotice_Activity_NoGift[1132]["NpcId"] = 23834
tActivityNotice_Activity_NoGift[1132]["TranMode"] = 2
tActivityNotice_Activity_NoGift[1132]["Level"] = 120
tActivityNotice_Activity_NoGift[1132]["Metempsychosis"] = 1

------------------------------------------------------------------------------------
--Name:		170411[简体征服][活动脚本]150级新地宫制作
--Creator: 	许乐
--Created:	2017/05/05
------------------------------------------------------------------------------------
tActivityNotice_Activity_NoGift[68] = {}
tActivityNotice_Activity_NoGift[68]["ActiveTimeType"] = 1
tActivityNotice_Activity_NoGift[68]["MapId"] = 10137
tActivityNotice_Activity_NoGift[68]["PosX"] = 88
tActivityNotice_Activity_NoGift[68]["PosY"] = 407
tActivityNotice_Activity_NoGift[68]["Range"] = 5
tActivityNotice_Activity_NoGift[68]["Level"] = 1
tActivityNotice_Activity_NoGift[68]["Metempsychosis"] = 2

--------------------------------------------------------------------------------
--Name:		170605[简体征服][任务脚本]神龙岛打宝区制作
--Creator: 	许乐
--Created:		2017/06/05
--------------------------------------------------------------------------------
tActivityNotice_Activity_NoGift[25] = {}
tActivityNotice_Activity_NoGift[25]["ActiveTimeType"] = 1
tActivityNotice_Activity_NoGift[25]["TranMode"] = 1
tActivityNotice_Activity_NoGift[25]["NpcId"] = 20823
tActivityNotice_Activity_NoGift[25]["MapId"] = 10137
tActivityNotice_Activity_NoGift[25]["PosX"] = 453
tActivityNotice_Activity_NoGift[25]["PosY"] = 480
tActivityNotice_Activity_NoGift[25]["Range"] = 5
tActivityNotice_Activity_NoGift[25]["Level"] = 120
tActivityNotice_Activity_NoGift[25]["Metempsychosis"] = 2
------------------------------------------------------------------------------------
--Name：            190311[简体征服][活动脚本]勇士觉醒前章预热线上任务活动(5.9-5.20)-第三阶段
--Creator:      陈莺
--Created:     2019-03-11
------------------------------------------------------------------------------------
tActivityNotice_Activity[77] = {}
tActivityNotice_Activity[77]["ActiveTimeType"] = 1
tActivityNotice_Activity[77]["ActivityTime"] = tActivityTime["WarriorsThirdPart"]["Now_Time"]
tActivityNotice_Activity[77]["MapId"] = 1002
tActivityNotice_Activity[77]["PosX"] = 376
tActivityNotice_Activity[77]["PosY"] = 451
tActivityNotice_Activity[77]["Range"] = 5
tActivityNotice_Activity[77]["Level"] = 120
tActivityNotice_Activity[77]["Metempsychosis"] = 1

-- tActivityNotice_Activity_NoGift[77] = {}
-- tActivityNotice_Activity_NoGift[77]["ActiveTimeType"] = 1
-- tActivityNotice_Activity_NoGift[77]["ActivityTime"] = tActivityTime["WarriorsThirdPart"]["Now_Time"]
-- tActivityNotice_Activity_NoGift[77]["MapId"] = 1036
-- tActivityNotice_Activity_NoGift[77]["PosX"] = 262
-- tActivityNotice_Activity_NoGift[77]["PosY"] = 271
-- tActivityNotice_Activity_NoGift[77]["Range"] = 5
-- tActivityNotice_Activity_NoGift[77]["Level"] = 120
-- tActivityNotice_Activity_NoGift[77]["Metempsychosis"] = 1


------------------------------------------------------------------------------------
--Name:		190425[英文征服][任务脚本]跨服天下第一活动(5.21-6.9)
--Creator: 	许乐
--Created:	2019/4/25
------------------------------------------------------------------------------------
tActivityNotice_Activity_NoGift[1136] = {}
tActivityNotice_Activity_NoGift[1136]["ActiveTimeType"] = 1
tActivityNotice_Activity_NoGift[1136]["ActivityTime"] = tActivityTime["CrossServerBestHero"]["Activity"]
tActivityNotice_Activity_NoGift[1136]["MapId"] = 1036
tActivityNotice_Activity_NoGift[1136]["PosX"] = 204
tActivityNotice_Activity_NoGift[1136]["PosY"] = 180
tActivityNotice_Activity_NoGift[1136]["Range"] = 5
tActivityNotice_Activity_NoGift[1136]["Level"] = 0
tActivityNotice_Activity_NoGift[1136]["Metempsychosis"] = 0

------------------------------------------------------------------------------------
--Name:190219[简体征服][活动脚本]狐狸骑宠活动制作
--Creator:洪聪敏
--Created:2019/02/19
------------------------------------------------------------------------------------
tActivityNotice_Activity_NoGift[1135] = {}
tActivityNotice_Activity_NoGift[1135]["ActiveTimeType"] = 1
tActivityNotice_Activity_NoGift[1135]["ActivityTime"] = tActivityTime["NewFoxAct"]["ActiveTime"]
tActivityNotice_Activity_NoGift[1135]["MapId"] = 1036
tActivityNotice_Activity_NoGift[1135]["PosX"] = 188
tActivityNotice_Activity_NoGift[1135]["PosY"] = 166
tActivityNotice_Activity_NoGift[1135]["Range"] = 5
tActivityNotice_Activity_NoGift[1135]["Level"] = 80
tActivityNotice_Activity_NoGift[1135]["Metempsychosis"] = 0
------------------------------------------------------------------------------------
--Name：            180724[简体征服][活动脚本]七夕节活动
--Creator:      王贤
--Created:     2018/07/24
------------------------------------------------------------------------------------
tActivityNotice_Activity_NoGift[323] = {}
tActivityNotice_Activity_NoGift[323]["ActiveTimeType"] = 1
tActivityNotice_Activity_NoGift[323]["ActivityTime"] = tActivityTime["ValentinesDay2018"]["ActivityTime"]
tActivityNotice_Activity_NoGift[323]["MapId"] = 1036
tActivityNotice_Activity_NoGift[323]["PosX"] = 230
tActivityNotice_Activity_NoGift[323]["PosY"] = 255
tActivityNotice_Activity_NoGift[323]["Range"] = 5
tActivityNotice_Activity_NoGift[323]["Level"] = 80
tActivityNotice_Activity_NoGift[323]["Metempsychosis"] = 0




--Name：            190130[简体征服][活动脚本]情人节时尚比拼
--Creator:      王贤
--Created:     2019-01-30
------------------------------------------------------------------------------------
tActivityNotice_Activity[1131] = {}
tActivityNotice_Activity[1131]["ActiveTimeType"] = 1
tActivityNotice_Activity[1131]["ActivityTime"] = tActivityTime["ValentineCompetition"]["ActivityTime"]
tActivityNotice_Activity[1131]["MapId"] = 1002
tActivityNotice_Activity[1131]["PosX"] = 329
tActivityNotice_Activity[1131]["PosY"] = 395
tActivityNotice_Activity[1131]["Range"] = 5
tActivityNotice_Activity[1131]["Level"] = 80
tActivityNotice_Activity[1131]["Metempsychosis"] = 0
------------------------------------------------------------------------------------
--Name：            190130[简体征服][活动脚本]情人节时尚比拼
--Creator:      王贤
--Created:     2019-01-30
------------------------------------------------------------------------------------
tActivityNotice_Activity_NoGift[1131] = {}
tActivityNotice_Activity_NoGift[1131]["ActiveTimeType"] = 1
tActivityNotice_Activity_NoGift[1131]["ActivityTime"] = tActivityTime["ValentineCompetition"]["ActivityTime"]
tActivityNotice_Activity_NoGift[1131]["MapId"] = 1036
tActivityNotice_Activity_NoGift[1131]["PosX"] = 267
tActivityNotice_Activity_NoGift[1131]["PosY"] = 279
tActivityNotice_Activity_NoGift[1131]["Range"] = 5
tActivityNotice_Activity_NoGift[1131]["Level"] = 80
tActivityNotice_Activity_NoGift[1131]["Metempsychosis"] = 0

------------------------------------------------------------------------------------
--Name:			180802[简体征服][活动脚本]八月促销活动制作
--Purpose:		盗圣宝库
--Creator:		林旭
--Created:		2018-08-15
------------------------------------------------------------------------------------
tActivityNotice_Activity[72] = {}
tActivityNotice_Activity[72]["ActiveTimeType"] = 1
tActivityNotice_Activity[72]["ActivityTime"] = tActivityTime["SudokuTreasure"]["ActivityTime"]
tActivityNotice_Activity[72]["MapId"] = 1002
tActivityNotice_Activity[72]["PosX"] = 376
tActivityNotice_Activity[72]["PosY"] = 445
tActivityNotice_Activity[72]["Range"] = 5
tActivityNotice_Activity[72]["Level"] = 80
tActivityNotice_Activity[72]["Metempsychosis"] = 0
------------------------------------------------------------------------------------
--Name:			180802[简体征服][活动脚本]八月促销活动制作
--Purpose:		盗圣宝库
--Creator:		林旭
--Created:		2018-08-15
------------------------------------------------------------------------------------
-- tActivityNotice_Activity_NoGift[72] = {}
-- tActivityNotice_Activity_NoGift[72]["ActiveTimeType"] = 1
-- tActivityNotice_Activity_NoGift[72]["ActivityTime"] = tActivityTime["SudokuTreasure"]["ActivityTime"]
-- tActivityNotice_Activity_NoGift[72]["MapId"] = 1036
-- tActivityNotice_Activity_NoGift[72]["PosX"] = 248
-- tActivityNotice_Activity_NoGift[72]["PosY"] = 207
-- tActivityNotice_Activity_NoGift[72]["Range"] = 5
-- tActivityNotice_Activity_NoGift[72]["Level"] = 80
-- tActivityNotice_Activity_NoGift[72]["Metempsychosis"] = 0

------------------------------------------------------------------------------------
--Name:		171208[简体征服][活动脚本]幽冥狱暴乱（新版打怪掉宝）
--Creator: 	姚曦宇
--Created:	2017/12/08
------------------------------------------------------------------------------------
tActivityNotice_Activity_NoGift[297] = {}
tActivityNotice_Activity_NoGift[297]["ActiveTimeType"] = 1
tActivityNotice_Activity_NoGift[297]["ActivityTime"] = tActivityTime["RiotOfNether"]["Activity"]
tActivityNotice_Activity_NoGift[297]["MapId"] = 1036
tActivityNotice_Activity_NoGift[297]["PosX"] = 269
tActivityNotice_Activity_NoGift[297]["PosY"] = 231
tActivityNotice_Activity_NoGift[297]["Range"] = 5
tActivityNotice_Activity_NoGift[297]["Level"] = 80
tActivityNotice_Activity_NoGift[297]["Metempsychosis"] = 0
------------------------------------------------------------------------------------

------------------------------------------------------------------------------------

------------------------------------------------------------------------------------
--Name:		161031[简体征服][活动脚本]大型MMO活动--飞翔吧筋斗云
--Creator: 	许乐
--Created:	2016/10/31
------------------------------------------------------------------------------------
tActivityNotice_Activity_NoGift[187] = {}
tActivityNotice_Activity_NoGift[187]["ActiveTimeType"] = 1
tActivityNotice_Activity_NoGift[187]["ActivityTime"] = tActivityTime["MMOJindowin"]["NowTime"]
tActivityNotice_Activity_NoGift[187]["MapId"] = 1036
tActivityNotice_Activity_NoGift[187]["PosX"] = 220
tActivityNotice_Activity_NoGift[187]["PosY"] = 189
tActivityNotice_Activity_NoGift[187]["Range"] = 5
tActivityNotice_Activity_NoGift[187]["Level"] = 80
tActivityNotice_Activity_NoGift[187]["Metempsychosis"] = 0

------------------------------------------------------------------------------------
--Name：       180831[简体征服][活动脚本]寻宝魔塔活动
--Creator:     fwl
--Created:     2018-09-04
------------------------------------------------------------------------------------
tActivityNotice_Activity[1118] = {}
tActivityNotice_Activity[1118]["ActiveTimeType"] = 1
tActivityNotice_Activity[1118]["ActivityTime"] = tActivityTime["TreasureHuntPagodas"]["ActTime"]
tActivityNotice_Activity[1118]["MapId"] = 1002
tActivityNotice_Activity[1118]["PosX"] = 379
tActivityNotice_Activity[1118]["PosY"] = 451
tActivityNotice_Activity[1118]["Range"] = 5
tActivityNotice_Activity[1118]["Level"] = 80
tActivityNotice_Activity[1118]["Metempsychosis"] = 0

tActivityNotice_Activity_NoGift[1118] = {}
tActivityNotice_Activity_NoGift[1118]["ActiveTimeType"] = 1
tActivityNotice_Activity_NoGift[1118]["ActivityTime"] = tActivityTime["TreasureHuntPagodas"]["ActTime"]
tActivityNotice_Activity_NoGift[1118]["MapId"] = 1036
tActivityNotice_Activity_NoGift[1118]["PosX"] = 155
tActivityNotice_Activity_NoGift[1118]["PosY"] = 232
tActivityNotice_Activity_NoGift[1118]["Range"] = 5
tActivityNotice_Activity_NoGift[1118]["Level"] = 80
tActivityNotice_Activity_NoGift[1118]["Metempsychosis"] = 0

------------------------------------------------------------------------------------
--Name：        191021[英文征服][活动脚本]新版个人养宠型TTT活动（11.14-12.04）
--Creator:      茅志伟
--Created:      2019/10/14
------------------------------------------------------------------------------------
tActivityNotice_Activity_NoGift[1139] = {}
tActivityNotice_Activity_NoGift[1139]["ActiveTimeType"] = 1
tActivityNotice_Activity_NoGift[1139]["ActivityTime"] = tActivityTime["NewPetsCultivate"]["ActivityTime"]
tActivityNotice_Activity_NoGift[1139]["NpcId"] = 25207
tActivityNotice_Activity_NoGift[1139]["TranMode"] = 2
tActivityNotice_Activity_NoGift[1139]["Level"] = 0
tActivityNotice_Activity_NoGift[1139]["Metempsychosis"] = 0

------------------------------------------------------------------------------------
--Name：            191202[英文征服][活动脚本]新年活跃福利活动（1.2-1.31）
--Creator:      冯子鑫
--Created:     2019/12/02
------------------------------------------------------------------------------------
tActivityNotice_Activity[1142] = {}
tActivityNotice_Activity[1142]["ActiveTimeType"] = 1
tActivityNotice_Activity[1142]["ActivityTime"] = tActivityTime["SpringActiveWelfare"]["ActivityTime"]
tActivityNotice_Activity[1142]["MapId"] = 1002
tActivityNotice_Activity[1142]["PosX"] = 345
tActivityNotice_Activity[1142]["PosY"] = 489
tActivityNotice_Activity[1142]["Range"] = 5
tActivityNotice_Activity[1142]["Level"] = 80
tActivityNotice_Activity[1142]["Metempsychosis"] = 1

tActivityNotice_Activity_NoGift[1142] = {}
tActivityNotice_Activity_NoGift[1142]["ActiveTimeType"] = 1
tActivityNotice_Activity_NoGift[1142]["ActivityTime"] = tActivityTime["SpringActiveWelfare"]["ActivityTime"]
tActivityNotice_Activity_NoGift[1142]["MapId"] = 1036
tActivityNotice_Activity_NoGift[1142]["PosX"] = 225
tActivityNotice_Activity_NoGift[1142]["PosY"] = 163
tActivityNotice_Activity_NoGift[1142]["Range"] = 5
tActivityNotice_Activity_NoGift[1142]["Level"] = 80
tActivityNotice_Activity_NoGift[1142]["Metempsychosis"] = 1


------------------------------------------------------------------------------------
--Name:		191107[简体征服][活动脚本]新深海活动（12.10-12.23）
--Creator: 	兰瑞妹
--Created:	2019/11/07
------------------------------------------------------------------------------------
-- tActivityNotice_Activity[238] = {}
-- tActivityNotice_Activity[238]["ActiveTimeType"] = 1
-- tActivityNotice_Activity[238]["ActivityTime"] = tActivityTime["NewDeepSea"]["ActivityTime"]
-- tActivityNotice_Activity[238]["MapId"] = 1002
-- tActivityNotice_Activity[238]["PosX"] = 309
-- tActivityNotice_Activity[238]["PosY"] = 496
-- tActivityNotice_Activity[238]["Range"] = 5
-- tActivityNotice_Activity[238]["Level"] = 80
-- tActivityNotice_Activity[238]["Metempsychosis"] = 0
-- tActivityNotice_Activity_NoGift[238] = {}
-- tActivityNotice_Activity_NoGift[238]["ActiveTimeType"] = 1
-- tActivityNotice_Activity_NoGift[238]["ActivityTime"] = tActivityTime["NewDeepSea"]["ActivityTime"]
-- tActivityNotice_Activity_NoGift[238]["MapId"] = 1036
-- tActivityNotice_Activity_NoGift[238]["PosX"] = 241
-- tActivityNotice_Activity_NoGift[238]["PosY"] = 228
-- tActivityNotice_Activity_NoGift[238]["Range"] = 5
-- tActivityNotice_Activity_NoGift[238]["Level"] = 80
-- tActivityNotice_Activity_NoGift[238]["Metempsychosis"] = 0

------------------------------------------------------------------------------------
--Name：            200228[简体征服][活动脚本]全球愚人节活动气氛和藏宝图发放部分
--Creator:      冯子鑫
--Created:     2020-02-28
------------------------------------------------------------------------------------
tActivityNotice_Activity[1144] = {}
tActivityNotice_Activity[1144]["ActiveTimeType"] = 1
tActivityNotice_Activity[1144]["ActivityTime"] = tActivityTime["AprilFoolsDay"]["ActivityTime"]
tActivityNotice_Activity[1144]["MapId"] = 1002
tActivityNotice_Activity[1144]["PosX"] = 373
tActivityNotice_Activity[1144]["PosY"] = 446
tActivityNotice_Activity[1144]["Range"] = 5
tActivityNotice_Activity[1144]["Level"] = 80
tActivityNotice_Activity[1144]["Metempsychosis"] = 0

tActivityNotice_Activity_NoGift[1144] = {}
tActivityNotice_Activity_NoGift[1144]["ActiveTimeType"] = 1
tActivityNotice_Activity_NoGift[1144]["ActivityTime"] = tActivityTime["AprilFoolsDay"]["ActivityTime"]
tActivityNotice_Activity_NoGift[1144]["MapId"] = 1036
tActivityNotice_Activity_NoGift[1144]["PosX"] = 248
tActivityNotice_Activity_NoGift[1144]["PosY"] = 209
tActivityNotice_Activity_NoGift[1144]["Range"] = 5
tActivityNotice_Activity_NoGift[1144]["Level"] = 80
tActivityNotice_Activity_NoGift[1144]["Metempsychosis"] = 0

------------------------------------------------------------------------------------
--Name：            200319[简体征服][活动脚本]全球周年庆-BOSS巢穴副本部分
--Creator:      冯子鑫
--Created:     2020-03-19
------------------------------------------------------------------------------------
tActivityNotice_Activity[1145] = {}
tActivityNotice_Activity[1145]["ActiveTimeType"] = 1
tActivityNotice_Activity[1145]["ActivityTime"] = tActivityTime["Anniversary2020"]["ActivityTime"]
tActivityNotice_Activity[1145]["MapId"] = 1002
tActivityNotice_Activity[1145]["PosX"] = 372
tActivityNotice_Activity[1145]["PosY"] = 446
tActivityNotice_Activity[1145]["Range"] = 5
tActivityNotice_Activity[1145]["Level"] = 80
tActivityNotice_Activity[1145]["Metempsychosis"] = 0

tActivityNotice_Activity_NoGift[1145] = {}
tActivityNotice_Activity_NoGift[1145]["ActiveTimeType"] = 1
tActivityNotice_Activity_NoGift[1145]["ActivityTime"] = tActivityTime["Anniversary2020"]["ActivityTime"]
tActivityNotice_Activity_NoGift[1145]["MapId"] = 1036
tActivityNotice_Activity_NoGift[1145]["PosX"] = 200
tActivityNotice_Activity_NoGift[1145]["PosY"] = 200
tActivityNotice_Activity_NoGift[1145]["Range"] = 5
tActivityNotice_Activity_NoGift[1145]["Level"] = 80
tActivityNotice_Activity_NoGift[1145]["Metempsychosis"] = 0
------------------------------------------------------------------------------------
--Name：            200413[简体征服][活动脚本]全球儿童节活动-互动功能和玩具交易部分
--Creator:      冯子鑫
--Created:     2020-04-13
------------------------------------------------------------------------------------
tActivityNotice_Activity[1146] = {}
tActivityNotice_Activity[1146]["ActiveTimeType"] = 1
tActivityNotice_Activity[1146]["ActivityTime"] = tActivityTime["ChildrenDay2020"]["ActivityTime"] 
tActivityNotice_Activity[1146]["MapId"] = 1002
tActivityNotice_Activity[1146]["PosX"] = 371
tActivityNotice_Activity[1146]["PosY"] = 445
tActivityNotice_Activity[1146]["Range"] = 5
tActivityNotice_Activity[1146]["Level"] = 80
tActivityNotice_Activity[1146]["Metempsychosis"] = 0

tActivityNotice_Activity_NoGift[1146] = {}
tActivityNotice_Activity_NoGift[1146]["ActiveTimeType"] = 1
tActivityNotice_Activity_NoGift[1146]["ActivityTime"] = tActivityTime["ChildrenDay2020"]["ActivityTime"] 
tActivityNotice_Activity_NoGift[1146]["MapId"] = 1036
tActivityNotice_Activity_NoGift[1146]["PosX"] = 215
tActivityNotice_Activity_NoGift[1146]["PosY"] = 173
tActivityNotice_Activity_NoGift[1146]["Range"] = 5
tActivityNotice_Activity_NoGift[1146]["Level"] = 80
tActivityNotice_Activity_NoGift[1146]["Metempsychosis"] = 0
------------------------------------------------------------------------------------
--Name：           200506[简体征服][活动脚本]忍者主题PK活动
--Creator:      杨志翔
--Created:     2020-05-06
------------------------------------------------------------------------------------
tActivityNotice_Activity[1147] = {}
tActivityNotice_Activity[1147]["ActiveTimeType"] = 1
tActivityNotice_Activity[1147]["ActivityTime"] = tActivityTime["NjThPk"]["ActivityTime"]
tActivityNotice_Activity[1147]["MapId"] = 1002
tActivityNotice_Activity[1147]["PosX"] = 320
tActivityNotice_Activity[1147]["PosY"] = 451
tActivityNotice_Activity[1147]["Range"] = 5
tActivityNotice_Activity[1147]["Level"] = 80
tActivityNotice_Activity[1147]["Metempsychosis"] = 0

tActivityNotice_Activity_NoGift[1147] = {}
tActivityNotice_Activity_NoGift[1147]["ActiveTimeType"] = 1
tActivityNotice_Activity_NoGift[1147]["ActivityTime"] = tActivityTime["NjThPk"]["ActivityTime"]
tActivityNotice_Activity_NoGift[1147]["MapId"] = 1036
tActivityNotice_Activity_NoGift[1147]["PosX"] = 264
tActivityNotice_Activity_NoGift[1147]["PosY"] = 236
tActivityNotice_Activity_NoGift[1147]["Range"] = 5
tActivityNotice_Activity_NoGift[1147]["Level"] = 80
tActivityNotice_Activity_NoGift[1147]["Metempsychosis"] = 0
------------------------------------------------------------------------------------
--Name：            200521[简体征服][活动脚本]全球暑期活动-地效环境部分
--Creator:      林嘉鑫
--Created:     2020-05-21
------------------------------------------------------------------------------------
tActivityNotice_Activity[1148] = {}
tActivityNotice_Activity[1148]["ActiveTimeType"] = 1
tActivityNotice_Activity[1148]["ActivityTime"] = tActivityTime["SummerActive"]["ActivityTime"]
tActivityNotice_Activity[1148]["MapId"] = 1002
tActivityNotice_Activity[1148]["PosX"] = 375
tActivityNotice_Activity[1148]["PosY"] = 446
tActivityNotice_Activity[1148]["Range"] = 5
tActivityNotice_Activity[1148]["Level"] = 80
tActivityNotice_Activity[1148]["Metempsychosis"] = 0

tActivityNotice_Activity_NoGift[1148] = {}
tActivityNotice_Activity_NoGift[1148]["ActiveTimeType"] = 1
tActivityNotice_Activity_NoGift[1148]["ActivityTime"] = tActivityTime["SummerActive"]["ActivityTime"]
tActivityNotice_Activity_NoGift[1148]["MapId"] = 10364
tActivityNotice_Activity_NoGift[1148]["PosX"] = 316
tActivityNotice_Activity_NoGift[1148]["PosY"] = 285
tActivityNotice_Activity_NoGift[1148]["Range"] = 5
tActivityNotice_Activity_NoGift[1148]["Level"] = 80
tActivityNotice_Activity_NoGift[1148]["Metempsychosis"] = 0
------------------------------------------------------------------------------------
--Name:		200720[简体征服][活动脚本]全球七夕活动预热+七夕抽奖(8.13-8.17)
--Creator: 	兰瑞妹
--Created:	2020/07/20
------------------------------------------------------------------------------------
tActivityNotice_Activity[1150] = {}
tActivityNotice_Activity[1150]["ActiveTimeType"] = 1
tActivityNotice_Activity[1150]["ActivityTime"] = tActivityTime["PreheatingAndDraw"]["ActivityTime"]
tActivityNotice_Activity[1150]["MapId"] = 1002
tActivityNotice_Activity[1150]["PosX"] = 372
tActivityNotice_Activity[1150]["PosY"] = 444
tActivityNotice_Activity[1150]["Range"] = 5
tActivityNotice_Activity[1150]["Level"] = 80
tActivityNotice_Activity[1150]["Metempsychosis"] = 0
tActivityNotice_Activity_NoGift[1150] = {}
tActivityNotice_Activity_NoGift[1150]["ActiveTimeType"] = 1
tActivityNotice_Activity_NoGift[1150]["ActivityTime"] = tActivityTime["PreheatingAndDraw"]["ActivityTime"]
tActivityNotice_Activity_NoGift[1150]["MapId"] = 1036
tActivityNotice_Activity_NoGift[1150]["PosX"] = 250
tActivityNotice_Activity_NoGift[1150]["PosY"] = 208
tActivityNotice_Activity_NoGift[1150]["Range"] = 5
tActivityNotice_Activity_NoGift[1150]["Level"] = 80
tActivityNotice_Activity_NoGift[1150]["Metempsychosis"] = 0

------------------------------------------------------------------------------------
--Name：            200609[简体征服][活动脚本]全球七夕花魁活动-惊喜事件
--Creator:      冯子鑫
--Created:     2020-06-09
------------------------------------------------------------------------------------
tActivityNotice_Activity[1149] = {}
tActivityNotice_Activity[1149]["ActiveTimeType"] = 1
tActivityNotice_Activity[1149]["ActivityTime"] = tActivityTime["QixiFestivalNPC"]["ActivityTime"]
tActivityNotice_Activity[1149]["MapId"] = 1002
tActivityNotice_Activity[1149]["PosX"] = 374
tActivityNotice_Activity[1149]["PosY"] = 439
tActivityNotice_Activity[1149]["Range"] = 5
tActivityNotice_Activity[1149]["Level"] = 80
tActivityNotice_Activity[1149]["Metempsychosis"] = 0

tActivityNotice_Activity_NoGift[1149] = {}
tActivityNotice_Activity_NoGift[1149]["ActiveTimeType"] = 1
tActivityNotice_Activity_NoGift[1149]["ActivityTime"] = tActivityTime["QixiFestivalNPC"]["ActivityTime"]
tActivityNotice_Activity_NoGift[1149]["MapId"] = 1036
tActivityNotice_Activity_NoGift[1149]["PosX"] = 246
tActivityNotice_Activity_NoGift[1149]["PosY"] = 210
tActivityNotice_Activity_NoGift[1149]["Range"] = 5
tActivityNotice_Activity_NoGift[1149]["Level"] = 80
tActivityNotice_Activity_NoGift[1149]["Metempsychosis"] = 0

------------------------------------------------------------------------------------
-- 可以使用活动公告的面板
local tActivityNotice_HaveAccessTo = {1000,1002,1011,1015,1020,1036,1068,1351,1352,1353,1354,1785,1786,1787,1926,1927,1999,2054,2055,2056,3055,3056,3998,4020}

function ActivityNotice_Main(nActivityId)
	local tInfo = {}
	local bNoGift = false
	-- 判断是否是无赠品服务器
	if SpecialServer_ChkNoGiftServer() then
		tInfo = tActivityNotice_Activity_NoGift
		bNoGift = true
	else
		tInfo = tActivityNotice_Activity
	end
	
	if tInfo[nActivityId] == nil then
		if bNoGift then
			Sys_MsgBox(tActivityNotice_Text["NoGift"])
		end
		return
	end

	-- 判断活动时间
	if not ActivityNotice_ActivityTime(nActivityId) then
		ActivityNotice_Msg(nActivityId,"ActivityTime")
		return
	end
	
	-- 判断掩码
	if not ActivityNotice_Mask(nActivityId) then
		ActivityNotice_Msg(nActivityId,"Mask")
		return
	end
	
	-- 判断等级
	if not ActivityNotice_Level(nActivityId) then
		ActivityNotice_Msg(nActivityId,"Level")
		return
	end
	
	-- 判断地图
	if not ActivityNotice_Map(nActivityId) then
		ActivityNotice_Msg(nActivityId,"Map")
		return
	end
	
	-- 判断玩家血量
	if not ActivityNotice_Life() then
		return
	end
	
	-- 传送或者自动寻路
	ActivityNotice_Success(nActivityId)
	
	-- 自定义函数
	if tInfo[nActivityId]["Func"] ~= nil and type(tInfo[nActivityId]["Func"]) == "function" then
		tInfo[nActivityId]["Func"](nActivityId)
	end
end

function ActivityNotice_ActivityTime(nActivityId)
	local tInfo = {}
	-- 判断是否是无赠品服务器
	if SpecialServer_ChkNoGiftServer() then
		tInfo = tActivityNotice_Activity_NoGift
	else
		tInfo = tActivityNotice_Activity
	end
	local sTime = tInfo[nActivityId]["ActivityTime"]
	local nType = tInfo[nActivityId]["ActiveTimeType"]
	
	if sTime == nil then
		return true
	end
	
	local fFunc = tTimeChkFunc[nType]
	if fFunc == nil or type(fFunc) ~= "function" then
		return true
	end
	
	if sTime == "table" then
		if tInfo[nActivityId]["MulActivityTime"] ==nil then
			return
		end
		for k,v in pairs (tInfo[nActivityId]["MulActivityTime"]) do 
			if fFunc(v) then
				return true
			end
		end
		return false
	else
		return fFunc(sTime)
	end
end

function ActivityNotice_Mask(nActivityId)
	local tInfo = {}
	-- 判断是否是无赠品服务器
	if SpecialServer_ChkNoGiftServer() then
		tInfo = tActivityNotice_Activity_NoGift
	else
		tInfo = tActivityNotice_Activity
	end
	if tInfo[nActivityId]["EventType"] ~= nil then
		local nEvent = tInfo[nActivityId]["EventType"] 
		local nType = tInfo[nActivityId]["DataType"]
		local nData = tInfo[nActivityId]["RewardData"]
		local nUserData = Get_UserStatisticValue(nEvent,nType)
		
		if nUserData < nData then
			return false
		end
	end
	
	if tInfo[nActivityId]["TaskId"] ~= nil then
		local nTaskId = tInfo[nActivityId]["TaskId"]
		local nTaskData = tInfo[nActivityId]["TaskData"]
		local sPos = tInfo[nActivityId]["TaskPos"] or 1
		
		if not Task_ChkTaskDetail(nTaskId) then
			return false
		end
		
		return Task_ChkTaskDetailValue(nTaskId,sPos,">=",nTaskData)
	end
	
	return true
end

function ActivityNotice_Life()
	local nLife = Get_UserLife()
	return nLife >= 1
end

function ActivityNotice_Map(nActivityId)
	local nMapId = Get_UserMapId()
	
	for i,v in pairs(tActivityNotice_HaveAccessTo) do
		if nMapId == v then
			return true
		end
	end
	
	return false
end

function ActivityNotice_Success(nActivityId)
	local tInfo = {}
	-- 判断是否是无赠品服务器
	if SpecialServer_ChkNoGiftServer() then
		tInfo = tActivityNotice_Activity_NoGift
	else
		tInfo = tActivityNotice_Activity
	end
	local nTranMode = tInfo[nActivityId]["TranMode"] or 1
	local nMapId = tInfo[nActivityId]["MapId"]
	local nPosX = tInfo[nActivityId]["PosX"]
	local nPosY = tInfo[nActivityId]["PosY"]
	local nRange = tInfo[nActivityId]["Range"] or 3
	local nNpcId = tInfo[nActivityId]["NpcId"]
	
	if nTranMode == 2 then
		-- 自动寻路
		if nNpcId ~= nil then
			NpcPosition_PathFind(nNpcId)
		else
			Sys_GotoSomeWhere(nPosX,nPosY,nMapId,0)
		end
	else
		-- 切地图传送
		User_UserRandBoundTrans(nMapId,nPosX,nPosY,nRange,nRange)
	end
end

function ActivityNotice_Msg(nActivityId,sIndex)
	local sContent = ""
	
	if tActivityNotice_Text[nActivityId] == nil then
		sContent = tActivityNotice_Text[sIndex]
	else
		sContent = tActivityNotice_Text[nActivityId][sIndex]
	end

	if sContent == nil then
		return
	end
	
	User_TalkChannel2005(sContent)
end

function ActivityNotice_Level(nActivityId)
	local tInfo = {}
	-- 判断是否是无赠品服务器
	if SpecialServer_ChkNoGiftServer() then
		tInfo = tActivityNotice_Activity_NoGift
	else
		tInfo = tActivityNotice_Activity
	end
	local nLevel = tInfo[nActivityId]["Level"]
	local nMetempsychosis = tInfo[nActivityId]["Metempsychosis"]
	
	if nLevel == nil or nMetempsychosis == nil then
		return
	end
	
	return User_JudgeLevelAndMetempsychosis(nLevel,nMetempsychosis)
end