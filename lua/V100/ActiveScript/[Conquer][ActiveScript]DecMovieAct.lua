------------------------------------------------------------------------------------
--Name：            181206[简体征服][活动脚本]12月消费活动
--Creator:      吴燕柚
--Created:     2018-12-06
------------------------------------------------------------------------------------
--任务需求：



--命名规范 DecMovieAct_

--log 12001241

--stc(186, 91)	stc	二进制记录玩家选择天王天后 
--stc(186, 92)	stc	二进制记录玩家选择当红巨星
--stc(186, 99)	stc	二进制记录玩家选择一线明星 前8位记录一线明星、后四位记录二线、三线、十八线、龙套

--stc(188, 92)	stc	上期演员，二进制记录玩家选择天王天后 
--stc(188, 93)	stc	上期演员，二进制记录玩家选择当红巨星
--stc(188, 94)	stc	上期演员，二进制记录玩家选择一线明星 前8位记录一线明星、后四位记录二线、三线、十八线、龙套

--stc(187, 04)	stc	记录玩家当前电影数据
--stc(187, 05)	stc	记录玩家当前电影票房
--stc(187, 06)	stc	记录玩家第1部电影数据
--stc(187, 07)	stc	记录玩家第1部电影票房
--stc(187, 08)	stc	记录玩家第2部电影数据
--stc(187, 09)	stc	记录玩家第2部电影票房
--stc(187, 10)	stc	记录玩家第3部电影数据
--stc(187, 11)	stc	记录玩家第3部电影票房
--stc(187, 12)	stc	记录玩家第4部电影数据
--stc(187, 13)	stc	记录玩家第4部电影票房
--stc(187, 14)	stc	记录玩家第5部电影数据
--stc(187, 15)	stc	记录玩家第5部电影票房

--记录电影数据规则 
--第一位 1-当前无电影数据 2-已设置类型 4-未起名 
--第二位 1~7 电影类型
--第三位 1~3 助理档次
--第四位 0~1 是否独立电影 1为是
--第五位 1~5 影评编号
--第六位 雇佣水军次数
--第七位 上映规模

--stc(187, 16)	stc	记录玩家当前独立电影数量
--stc(187, 19)	stc	记录玩家当天是否免费拍摄
--stc(187, 22)	stc	记录玩家当日总电影票房
--stc(187, 23)	stc	记录玩家活动期间总电影票房

--stc(187, 67)	stc	记录玩家买演员屏蔽二次确认
--stc(218, 85)	stc	记录玩家拍电影屏蔽二次确认
--stc(218, 86)	stc	记录玩家续约演员屏蔽二次确认

--stc(188, 91)	每日一次免费演员使用
--stc(189, 66)	stc	免费签约演员标记

-- #动态存储表说明
-- #票房每日排行榜
-- {53164, 53165, 53166, 53167};globalBefore{53168, 53169, 53170, 53171}

-- #票房总榜
-- {53172, 53173, 53174, 53175}

------------------------------------------------------------------------------------



----------------------------------表配置部分--------------------------------------------

--电影名字表  有丢失可能
local tDecMovieAct_MovieName = {}
	--如果没有值，就提示数据异常
	setmetatable(tDecMovieAct_MovieName, {__index = function() 
		return {}
	end})
	
	
	
	

local tDecMovieAct_Data = {}
	tDecMovieAct_Data["Level"] = 80
	tDecMovieAct_Data["Mete"] = 0
	tDecMovieAct_Data["Web"] = "https://zf.99.com/activity/2019/sl-dyj/gl/index.shtml"--电影节介绍页面
	tDecMovieAct_Data["BackPackWeb"] = "https://zf.99.com/activity/2019/sl-dyj/bbx/index.shtml"

	--助理花费
	tDecMovieAct_Data["Sercetary"] = {}
	tDecMovieAct_Data["Sercetary"][1] = {}
	tDecMovieAct_Data["Sercetary"][1]["Cost"] = 328
	tDecMovieAct_Data["Sercetary"][1]["Name"] = tDecMovieAct_Text["SmallText"]["Sercetary1"]
	tDecMovieAct_Data["Sercetary"][2] = {}
	tDecMovieAct_Data["Sercetary"][2]["Cost"] = 648
	tDecMovieAct_Data["Sercetary"][2]["Name"] = tDecMovieAct_Text["SmallText"]["Sercetary2"]
	tDecMovieAct_Data["Sercetary"][3] = {}
	tDecMovieAct_Data["Sercetary"][3]["Cost"] = 1388
	tDecMovieAct_Data["Sercetary"][3]["Name"] = tDecMovieAct_Text["SmallText"]["Sercetary3"]

local tDecMovieAct_Log = {}
	--签约演员
	tDecMovieAct_Log["Actor"] = "10000	0100	%d	%d	1	"
	tDecMovieAct_Log["Sercetary"] = "10000	0101	%d	%d	1	"
	tDecMovieAct_Log["Size"] = "10000	0102	%d	%d	1	"
	tDecMovieAct_Log["Sale"] = "10000	0103	%d	%d	1	"
	tDecMovieAct_Log["Water"] = "10000	0104	%d	%d	1	"

local tDecMovieAct_Stc = {}
	tDecMovieAct_Stc["Actor"] = {}
	tDecMovieAct_Stc["Actor"][1] = {}
	tDecMovieAct_Stc["Actor"][1]["Event"] = 186
	tDecMovieAct_Stc["Actor"][1]["Data"] = 91
	tDecMovieAct_Stc["Actor"][2] = {}
	tDecMovieAct_Stc["Actor"][2]["Event"] = 186
	tDecMovieAct_Stc["Actor"][2]["Data"] = 92
	tDecMovieAct_Stc["Actor"][3] = {}
	tDecMovieAct_Stc["Actor"][3]["Event"] = 186
	tDecMovieAct_Stc["Actor"][3]["Data"] = 99
	tDecMovieAct_Stc["Actor"][4] = {}
	tDecMovieAct_Stc["Actor"][4]["Event"] = 186
	tDecMovieAct_Stc["Actor"][4]["Data"] = 99
	tDecMovieAct_Stc["Actor"][5] = {}
	tDecMovieAct_Stc["Actor"][5]["Event"] = 186
	tDecMovieAct_Stc["Actor"][5]["Data"] = 99
	tDecMovieAct_Stc["Actor"][6] = {}
	tDecMovieAct_Stc["Actor"][6]["Event"] = 186
	tDecMovieAct_Stc["Actor"][6]["Data"] = 99
	tDecMovieAct_Stc["Actor"][7] = {}
	tDecMovieAct_Stc["Actor"][7]["Event"] = 186
	tDecMovieAct_Stc["Actor"][7]["Data"] = 99

	tDecMovieAct_Stc["OldActor"] = {}
	tDecMovieAct_Stc["OldActor"][1] = {}
	tDecMovieAct_Stc["OldActor"][1]["Event"] = 188
	tDecMovieAct_Stc["OldActor"][1]["Data"] = 92
	tDecMovieAct_Stc["OldActor"][2] = {}
	tDecMovieAct_Stc["OldActor"][2]["Event"] = 188
	tDecMovieAct_Stc["OldActor"][2]["Data"] = 93
	tDecMovieAct_Stc["OldActor"][3] = {}
	tDecMovieAct_Stc["OldActor"][3]["Event"] = 188
	tDecMovieAct_Stc["OldActor"][3]["Data"] = 94
	tDecMovieAct_Stc["OldActor"][4] = {}
	tDecMovieAct_Stc["OldActor"][4]["Event"] = 188
	tDecMovieAct_Stc["OldActor"][4]["Data"] = 94
	tDecMovieAct_Stc["OldActor"][5] = {}
	tDecMovieAct_Stc["OldActor"][5]["Event"] = 188
	tDecMovieAct_Stc["OldActor"][5]["Data"] = 94
	tDecMovieAct_Stc["OldActor"][6] = {}
	tDecMovieAct_Stc["OldActor"][6]["Event"] = 188
	tDecMovieAct_Stc["OldActor"][6]["Data"] = 94
	tDecMovieAct_Stc["OldActor"][7] = {}
	tDecMovieAct_Stc["OldActor"][7]["Event"] = 188
	tDecMovieAct_Stc["OldActor"][7]["Data"] = 94

	tDecMovieAct_Stc["Movie"] = {}
	tDecMovieAct_Stc["MovieTicket"] = {}
	tDecMovieAct_Stc["Movie"]["Now"] = {}
	tDecMovieAct_Stc["Movie"]["Now"]["Event"] = 187
	tDecMovieAct_Stc["Movie"]["Now"]["Data"] = 04
	tDecMovieAct_Stc["MovieTicket"]["Now"] = {}
	tDecMovieAct_Stc["MovieTicket"]["Now"]["Event"] = 187
	tDecMovieAct_Stc["MovieTicket"]["Now"]["Data"] = 05
	tDecMovieAct_Stc["Movie"]["Num"] = {}
	tDecMovieAct_Stc["Movie"]["Num"]["Event"] = 187
	tDecMovieAct_Stc["Movie"]["Num"]["Data"] = 16
	
	tDecMovieAct_Stc["Movie"][1] = {}
	tDecMovieAct_Stc["Movie"][1]["Event"] = 187
	tDecMovieAct_Stc["Movie"][1]["Data"] = 06
	tDecMovieAct_Stc["MovieTicket"][1] = {}
	tDecMovieAct_Stc["MovieTicket"][1]["Event"] = 187
	tDecMovieAct_Stc["MovieTicket"][1]["Data"] = 07
	tDecMovieAct_Stc["Movie"][2] = {}
	tDecMovieAct_Stc["Movie"][2]["Event"] = 187
	tDecMovieAct_Stc["Movie"][2]["Data"] = 08
	tDecMovieAct_Stc["MovieTicket"][2] = {}
	tDecMovieAct_Stc["MovieTicket"][2]["Event"] = 187
	tDecMovieAct_Stc["MovieTicket"][2]["Data"] = 09
	tDecMovieAct_Stc["Movie"][3] = {}
	tDecMovieAct_Stc["Movie"][3]["Event"] = 187
	tDecMovieAct_Stc["Movie"][3]["Data"] = 10
	tDecMovieAct_Stc["MovieTicket"][3] = {}
	tDecMovieAct_Stc["MovieTicket"][3]["Event"] = 187
	tDecMovieAct_Stc["MovieTicket"][3]["Data"] = 11
	tDecMovieAct_Stc["Movie"][4] = {}
	tDecMovieAct_Stc["Movie"][4]["Event"] = 187
	tDecMovieAct_Stc["Movie"][4]["Data"] = 12
	tDecMovieAct_Stc["MovieTicket"][4] = {}
	tDecMovieAct_Stc["MovieTicket"][4]["Event"] = 187
	tDecMovieAct_Stc["MovieTicket"][4]["Data"] = 13
	tDecMovieAct_Stc["Movie"][5] = {}
	tDecMovieAct_Stc["Movie"][5]["Event"] = 187
	tDecMovieAct_Stc["Movie"][5]["Data"] = 14
	tDecMovieAct_Stc["MovieTicket"][5] = {}
	tDecMovieAct_Stc["MovieTicket"][5]["Event"] = 187
	tDecMovieAct_Stc["MovieTicket"][5]["Data"] = 15
	
	tDecMovieAct_Stc["FreeChance"] = {}
	tDecMovieAct_Stc["FreeChance"]["Event"] = 187
	tDecMovieAct_Stc["FreeChance"]["Data"] = 19
	
	tDecMovieAct_Stc["ActorFreeChance"] = {}
	tDecMovieAct_Stc["ActorFreeChance"]["Event"] = 188
	tDecMovieAct_Stc["ActorFreeChance"]["Data"] = 91
	tDecMovieAct_Stc["ActorFreeNotReturn"] = {}
	tDecMovieAct_Stc["ActorFreeNotReturn"]["Event"] = 189
	tDecMovieAct_Stc["ActorFreeNotReturn"]["Data"] = 66

	tDecMovieAct_Stc["TicketToday"] = {}
	tDecMovieAct_Stc["TicketToday"]["Event"] = 187
	tDecMovieAct_Stc["TicketToday"]["Data"] = 22
	tDecMovieAct_Stc["TicketTotal"] = {}
	tDecMovieAct_Stc["TicketTotal"]["Event"] = 187
	tDecMovieAct_Stc["TicketTotal"]["Data"] = 23

	tDecMovieAct_Stc["IgnoreConfirm"] = {}
	--演员
	tDecMovieAct_Stc["IgnoreConfirm"][1] = {}
	tDecMovieAct_Stc["IgnoreConfirm"][1]["Event"] = 187
	tDecMovieAct_Stc["IgnoreConfirm"][1]["Data"] = 67
	--类型
	tDecMovieAct_Stc["IgnoreConfirm"][2] = {}
	tDecMovieAct_Stc["IgnoreConfirm"][2]["Event"] = 218
	tDecMovieAct_Stc["IgnoreConfirm"][2]["Data"] = 85
	--续约演员
	tDecMovieAct_Stc["IgnoreConfirm"][3] = {}
	tDecMovieAct_Stc["IgnoreConfirm"][3]["Event"] = 218
	tDecMovieAct_Stc["IgnoreConfirm"][3]["Data"] = 86
	
local tDecMovieAct_ActorList = {}
	tDecMovieAct_ActorList[0] = {}
	tDecMovieAct_ActorList[0]["Name"] = {}
	tDecMovieAct_ActorList[0]["Name"][0] = tDecMovieAct_Text["SmallText"]["DefaultMovieName"]
--天王天后
	tDecMovieAct_ActorList[1] = {}
	tDecMovieAct_ActorList[1]["Cost"] = 500
	tDecMovieAct_ActorList[1]["Index"] = {}
	tDecMovieAct_ActorList[1]["Index"][1] = 221
	tDecMovieAct_ActorList[1]["Index"][2] = 222
	tDecMovieAct_ActorList[1]["Index"][3] = 223
	tDecMovieAct_ActorList[1]["Index"][4] = 224
	tDecMovieAct_ActorList[1]["Index"][5] = 225
	tDecMovieAct_ActorList[1]["Index"][6] = 226
	tDecMovieAct_ActorList[1]["Index"][7] = 227
	tDecMovieAct_ActorList[1]["Index"][8] = 228
	tDecMovieAct_ActorList[1]["Name"] = {}
	tDecMovieAct_ActorList[1]["Name"][1] = tDecMovieAct_Text["SmallText"]["ActorName"][1][1]
	tDecMovieAct_ActorList[1]["Name"][2] = tDecMovieAct_Text["SmallText"]["ActorName"][1][2]
	tDecMovieAct_ActorList[1]["Name"][3] = tDecMovieAct_Text["SmallText"]["ActorName"][1][3]
	tDecMovieAct_ActorList[1]["Name"][4] = tDecMovieAct_Text["SmallText"]["ActorName"][1][4]
	tDecMovieAct_ActorList[1]["Name"][5] = tDecMovieAct_Text["SmallText"]["ActorName"][1][5]
	tDecMovieAct_ActorList[1]["Name"][6] = tDecMovieAct_Text["SmallText"]["ActorName"][1][6]
	tDecMovieAct_ActorList[1]["Name"][7] = tDecMovieAct_Text["SmallText"]["ActorName"][1][7]
	tDecMovieAct_ActorList[1]["Name"][8] = tDecMovieAct_Text["SmallText"]["ActorName"][1][8]
--当红巨星
	tDecMovieAct_ActorList[2] = {}
	tDecMovieAct_ActorList[2] = {}
	tDecMovieAct_ActorList[2]["Cost"] = 400
	tDecMovieAct_ActorList[2]["Index"] = {}
	tDecMovieAct_ActorList[2]["Index"][1] = 231
	tDecMovieAct_ActorList[2]["Index"][2] = 232
	tDecMovieAct_ActorList[2]["Index"][3] = 233
	tDecMovieAct_ActorList[2]["Index"][4] = 234
	tDecMovieAct_ActorList[2]["Index"][5] = 235
	tDecMovieAct_ActorList[2]["Index"][6] = 236
	tDecMovieAct_ActorList[2]["Index"][7] = 237
	tDecMovieAct_ActorList[2]["Index"][8] = 238
	tDecMovieAct_ActorList[2]["Name"] = {}
	tDecMovieAct_ActorList[2]["Name"][1] = tDecMovieAct_Text["SmallText"]["ActorName"][2][1]
	tDecMovieAct_ActorList[2]["Name"][2] = tDecMovieAct_Text["SmallText"]["ActorName"][2][2]
	tDecMovieAct_ActorList[2]["Name"][3] = tDecMovieAct_Text["SmallText"]["ActorName"][2][3]
	tDecMovieAct_ActorList[2]["Name"][4] = tDecMovieAct_Text["SmallText"]["ActorName"][2][4]
	tDecMovieAct_ActorList[2]["Name"][5] = tDecMovieAct_Text["SmallText"]["ActorName"][2][5]
	tDecMovieAct_ActorList[2]["Name"][6] = tDecMovieAct_Text["SmallText"]["ActorName"][2][6]
	tDecMovieAct_ActorList[2]["Name"][7] = tDecMovieAct_Text["SmallText"]["ActorName"][2][7]
	tDecMovieAct_ActorList[2]["Name"][8] = tDecMovieAct_Text["SmallText"]["ActorName"][2][8]
--一线明星
	tDecMovieAct_ActorList[3] = {}
	tDecMovieAct_ActorList[3] = {}
	tDecMovieAct_ActorList[3]["Cost"] = 300
	tDecMovieAct_ActorList[3]["Index"] = {}
	tDecMovieAct_ActorList[3]["Index"][1] = 241
	tDecMovieAct_ActorList[3]["Index"][2] = 242
	tDecMovieAct_ActorList[3]["Index"][3] = 243
	tDecMovieAct_ActorList[3]["Index"][4] = 244
	tDecMovieAct_ActorList[3]["Index"][5] = 245
	tDecMovieAct_ActorList[3]["Index"][6] = 246
	tDecMovieAct_ActorList[3]["Index"][7] = 247
	tDecMovieAct_ActorList[3]["Index"][8] = 248
	tDecMovieAct_ActorList[3]["Name"] = {}
	tDecMovieAct_ActorList[3]["Name"][1] = tDecMovieAct_Text["SmallText"]["ActorName"][3][1] 
	tDecMovieAct_ActorList[3]["Name"][2] = tDecMovieAct_Text["SmallText"]["ActorName"][3][2] 
	tDecMovieAct_ActorList[3]["Name"][3] = tDecMovieAct_Text["SmallText"]["ActorName"][3][3] 
	tDecMovieAct_ActorList[3]["Name"][4] = tDecMovieAct_Text["SmallText"]["ActorName"][3][4] 
	tDecMovieAct_ActorList[3]["Name"][5] = tDecMovieAct_Text["SmallText"]["ActorName"][3][5] 
	tDecMovieAct_ActorList[3]["Name"][6] = tDecMovieAct_Text["SmallText"]["ActorName"][3][6] 
	tDecMovieAct_ActorList[3]["Name"][7] = tDecMovieAct_Text["SmallText"]["ActorName"][3][7] 
	tDecMovieAct_ActorList[3]["Name"][8] = tDecMovieAct_Text["SmallText"]["ActorName"][3][8] 
	tDecMovieAct_ActorList[3]["Name"][9] = tDecMovieAct_Text["SmallText"]["ActorName"][3][9] 
	tDecMovieAct_ActorList[3]["Name"][10] =tDecMovieAct_Text["SmallText"]["ActorName"][3][10]
	tDecMovieAct_ActorList[3]["Name"][11] =tDecMovieAct_Text["SmallText"]["ActorName"][3][11]
	tDecMovieAct_ActorList[3]["Name"][12] =tDecMovieAct_Text["SmallText"]["ActorName"][3][12]
--二线明星
	tDecMovieAct_ActorList[4] = {}
	tDecMovieAct_ActorList[4]["Cost"] = 90
	tDecMovieAct_ActorList[4]["Index"] = {}
	tDecMovieAct_ActorList[4]["Index"][1] = 214
	tDecMovieAct_ActorList[4]["Name"] = {}
	tDecMovieAct_ActorList[4]["Name"][1] = tDecMovieAct_Text["SmallText"]["ActorName"][3][9]
--三线明星
	tDecMovieAct_ActorList[5] = {}
	tDecMovieAct_ActorList[5]["Cost"] = 70
	tDecMovieAct_ActorList[5]["Index"] = {}
	tDecMovieAct_ActorList[5]["Index"][1] = 215
	tDecMovieAct_ActorList[5]["Name"] = {}
	tDecMovieAct_ActorList[5]["Name"][1] = tDecMovieAct_Text["SmallText"]["ActorName"][3][10]
--十八线明星
	tDecMovieAct_ActorList[6] = {}
	tDecMovieAct_ActorList[6]["Cost"] = 50
	tDecMovieAct_ActorList[6]["Index"] = {}
	tDecMovieAct_ActorList[6]["Index"][1] = 216
	tDecMovieAct_ActorList[6]["Name"] = {}
	tDecMovieAct_ActorList[6]["Name"][1] = tDecMovieAct_Text["SmallText"]["ActorName"][3][11]
--龙套演员
	tDecMovieAct_ActorList[7] = {}
	tDecMovieAct_ActorList[7]["Cost"] = 30
	tDecMovieAct_ActorList[7]["Index"] = {}
	tDecMovieAct_ActorList[7]["Index"][1] = 217
	tDecMovieAct_ActorList[7]["Name"] = {}
	tDecMovieAct_ActorList[7]["Name"][1] = tDecMovieAct_Text["SmallText"]["ActorName"][3][12]

local tDecMovieAct_ActorCost = {}
	tDecMovieAct_ActorCost[1] = 500
	tDecMovieAct_ActorCost[2] = 500
	tDecMovieAct_ActorCost[3] = 500
	tDecMovieAct_ActorCost[4] = 500
	tDecMovieAct_ActorCost[5] = 500
	tDecMovieAct_ActorCost[6] = 500
	tDecMovieAct_ActorCost[7] = 500
	tDecMovieAct_ActorCost[8] = 500
	tDecMovieAct_ActorCost[9] = 400
	tDecMovieAct_ActorCost[10] = 400
	tDecMovieAct_ActorCost[11] = 400
	tDecMovieAct_ActorCost[12] = 400
	tDecMovieAct_ActorCost[13] = 400
	tDecMovieAct_ActorCost[14] = 400
	tDecMovieAct_ActorCost[15] = 400
	tDecMovieAct_ActorCost[16] = 400
	tDecMovieAct_ActorCost[17] = 300
	tDecMovieAct_ActorCost[18] = 300
	tDecMovieAct_ActorCost[19] = 300
	tDecMovieAct_ActorCost[20] = 300
	tDecMovieAct_ActorCost[21] = 300
	tDecMovieAct_ActorCost[22] = 300
	tDecMovieAct_ActorCost[23] = 300
	tDecMovieAct_ActorCost[24] = 300
	tDecMovieAct_ActorCost[25] = 90
	tDecMovieAct_ActorCost[26] = 70
	tDecMovieAct_ActorCost[27] = 50
	tDecMovieAct_ActorCost[28] = 30

--明星类型
local tDecMovieAct_ActorType = {}
	tDecMovieAct_ActorType[1] = 1
	tDecMovieAct_ActorType[2] = 1
	tDecMovieAct_ActorType[3] = 1
	tDecMovieAct_ActorType[4] = 1
	tDecMovieAct_ActorType[5] = 1
	tDecMovieAct_ActorType[6] = 1
	tDecMovieAct_ActorType[7] = 1
	tDecMovieAct_ActorType[8] = 1
	tDecMovieAct_ActorType[9] = 2
	tDecMovieAct_ActorType[10] = 2
	tDecMovieAct_ActorType[11] = 2
	tDecMovieAct_ActorType[12] = 2
	tDecMovieAct_ActorType[13] = 2
	tDecMovieAct_ActorType[14] = 2
	tDecMovieAct_ActorType[15] = 2
	tDecMovieAct_ActorType[16] = 2
	tDecMovieAct_ActorType[17] = 3
	tDecMovieAct_ActorType[18] = 3
	tDecMovieAct_ActorType[19] = 3
	tDecMovieAct_ActorType[20] = 3
	tDecMovieAct_ActorType[21] = 3
	tDecMovieAct_ActorType[22] = 3
	tDecMovieAct_ActorType[23] = 3
	tDecMovieAct_ActorType[24] = 3
	tDecMovieAct_ActorType[25] = 4
	tDecMovieAct_ActorType[26] = 5
	tDecMovieAct_ActorType[27] = 6
	tDecMovieAct_ActorType[28] = 7

local tDecMovieAct_Cost = {}
	tDecMovieAct_Cost["Size"] = {}
	tDecMovieAct_Cost["Size"][0] = 0
	tDecMovieAct_Cost["Size"][1] = 10
	tDecMovieAct_Cost["Size"][2] = 199
	tDecMovieAct_Cost["Size"][3] = 999

	tDecMovieAct_Cost["Type"] = {}
	tDecMovieAct_Cost["Type"][0] = 99
	tDecMovieAct_Cost["Type"][1] = 99
	tDecMovieAct_Cost["Type"][2] = 99
	tDecMovieAct_Cost["Type"][3] = 199
	tDecMovieAct_Cost["Type"][4] = 199
	tDecMovieAct_Cost["Type"][5] = 999
	tDecMovieAct_Cost["Type"][6] = 999
	tDecMovieAct_Cost["Type"][7] = 99

	tDecMovieAct_Cost["Sale"] = {}
	tDecMovieAct_Cost["Sale"][0] = 0
	tDecMovieAct_Cost["Sale"][1] = 10
	tDecMovieAct_Cost["Sale"][2] = 199
	tDecMovieAct_Cost["Sale"][3] = 999

	tDecMovieAct_Cost["Water"] = {}
	tDecMovieAct_Cost["Water"][0] = 0
	tDecMovieAct_Cost["Water"][1] = 270
	
local tDecMovieAct_Reward = {}
	tDecMovieAct_Reward[1] = {}
	tDecMovieAct_Reward[1]["LogId"] = 12001241
	tDecMovieAct_Reward[1]["RewardItem"] = {}
	tDecMovieAct_Reward[1]["RewardItem"][1] = {}
	tDecMovieAct_Reward[1]["RewardItem"][1]["Id"] = 3311819
	tDecMovieAct_Reward[1]["RewardItem"][1]["Attr"] = "0 1"
	tDecMovieAct_Reward[1]["RewardEffect"] = {}
	tDecMovieAct_Reward[1]["RewardEffect"]["Effect"] = "mammon"

	tDecMovieAct_Reward[3311819] = {}
	tDecMovieAct_Reward[3311819]["LogId"] = 12001241
	tDecMovieAct_Reward[3311819]["RewardStrengthValue"] = {}
	tDecMovieAct_Reward[3311819]["RewardStrengthValue"]["Value"] = 0
	tDecMovieAct_Reward[3311819]["RewardEffect"] = {}
	tDecMovieAct_Reward[3311819]["RewardEffect"]["Effect"] = "zf2-128"
	
local tDecMovieAct_RandomActorCost = {}
	tDecMovieAct_RandomActorCost[1] = 399
	tDecMovieAct_RandomActorCost[2] = 69
	tDecMovieAct_RandomActorCost[3] = 0
local tDecMovieAct_RandomActorName = {}
	tDecMovieAct_RandomActorName[1] = tDecMovieAct_Text["SmallText"]["RandomActorName1"]
	tDecMovieAct_RandomActorName[2] = tDecMovieAct_Text["SmallText"]["RandomActorName2"]


--排行榜模板配置
--日排行榜
tRankingFunc_Info[23587] = {}
tRankingFunc_Info[23587]["ActiveTime"] = tActivityTime["DecMovieAct"]["ActivityTime"]
tRankingFunc_Info[23587]["DayTime"] = {}
tRankingFunc_Info[23587]["DayTime"][1] = tActivityTime["DecMovieAct"]["DayTime"]
tRankingFunc_Info[23587]["ResetTime"] = {}
tRankingFunc_Info[23587]["ResetTime"][1] = tActivityTime["DecMovieAct"]["ResetTime"]
tRankingFunc_Info[23587]["Global"] = {53164, 53165, 53166, 53167}
tRankingFunc_Info[23587]["BeforeGlobal"] = {53168, 53169, 53170, 53171}
tRankingFunc_Info[23587]["RankNum"] = 10
tRankingFunc_Info[23587]["RankMode"] = 1

--总排行榜
tRankingFunc_Info[23588] = {}
tRankingFunc_Info[23588]["ActiveTime"] = tActivityTime["DecMovieAct"]["ActivityTime"]
tRankingFunc_Info[23588]["DayTime"] = {}
tRankingFunc_Info[23588]["DayTime"][1] = tActivityTime["DecMovieAct"]["DayTime"]
tRankingFunc_Info[23588]["Reset"] = 1
tRankingFunc_Info[23588]["Global"] = {53172, 53173, 53174, 53175}
tRankingFunc_Info[23588]["RankNum"] = 10
tRankingFunc_Info[23588]["RankMode"] = 1
tRankingFunc_Info[23588]["Mail"] = {}
tRankingFunc_Info[23588]["Mail"]["ActiveTime"] = tActivityTime["DecMovieAct"]["MailActiveTime"]
tRankingFunc_Info[23588]["Mail"]["RewardTime"] = {}
tRankingFunc_Info[23588]["Mail"]["RewardTime"][1] = tActivityTime["DecMovieAct"]["MailRewardTime"]
--邮件奖励
--1
tRankingFunc_Info[23588]["Mail"]["Reward"] = {}
tRankingFunc_Info[23588]["Mail"]["Reward"][1] = {}
tRankingFunc_Info[23588]["Mail"]["Reward"][1]["RewardRank"] = 1
tRankingFunc_Info[23588]["Mail"]["Reward"][1]["ActionId"] = 568735
tRankingFunc_Info[23588]["Mail"]["Reward"][1]["ExistDay"] = 30
tRankingFunc_Info[23588]["Mail"]["Reward"][1]["Sender"] = tDecMovieAct_Text["Mail"]["From"]
tRankingFunc_Info[23588]["Mail"]["Reward"][1]["Title"] = tDecMovieAct_Text["Mail"]["Title"]
tRankingFunc_Info[23588]["Mail"]["Reward"][1]["Content"] = tDecMovieAct_Text["Mail"]["Content1"]
--2
tRankingFunc_Info[23588]["Mail"]["Reward"][2] = {}
tRankingFunc_Info[23588]["Mail"]["Reward"][2]["RewardRank"] = 2
tRankingFunc_Info[23588]["Mail"]["Reward"][2]["ActionId"] = 568737
tRankingFunc_Info[23588]["Mail"]["Reward"][2]["ExistDay"] = 30
tRankingFunc_Info[23588]["Mail"]["Reward"][2]["Sender"] = tDecMovieAct_Text["Mail"]["From"]
tRankingFunc_Info[23588]["Mail"]["Reward"][2]["Title"] = tDecMovieAct_Text["Mail"]["Title"]
tRankingFunc_Info[23588]["Mail"]["Reward"][2]["Content"] = tDecMovieAct_Text["Mail"]["Content2"]
--3
tRankingFunc_Info[23588]["Mail"]["Reward"][3] = {}
tRankingFunc_Info[23588]["Mail"]["Reward"][3]["RewardRank"] = 3
tRankingFunc_Info[23588]["Mail"]["Reward"][3]["ActionId"] = 568738
tRankingFunc_Info[23588]["Mail"]["Reward"][3]["ExistDay"] = 30
tRankingFunc_Info[23588]["Mail"]["Reward"][3]["Sender"] = tDecMovieAct_Text["Mail"]["From"]
tRankingFunc_Info[23588]["Mail"]["Reward"][3]["Title"] = tDecMovieAct_Text["Mail"]["Title"]
tRankingFunc_Info[23588]["Mail"]["Reward"][3]["Content"] = tDecMovieAct_Text["Mail"]["Content3"]
--4
tRankingFunc_Info[23588]["Mail"]["Reward"][4] = {}
tRankingFunc_Info[23588]["Mail"]["Reward"][4]["RewardRank"] = 4
tRankingFunc_Info[23588]["Mail"]["Reward"][4]["ActionId"] = 568739
tRankingFunc_Info[23588]["Mail"]["Reward"][4]["ExistDay"] = 30
tRankingFunc_Info[23588]["Mail"]["Reward"][4]["Sender"] = tDecMovieAct_Text["Mail"]["From"]
tRankingFunc_Info[23588]["Mail"]["Reward"][4]["Title"] = tDecMovieAct_Text["Mail"]["Title"]
tRankingFunc_Info[23588]["Mail"]["Reward"][4]["Content"] = tDecMovieAct_Text["Mail"]["Content4"]
--5
tRankingFunc_Info[23588]["Mail"]["Reward"][5] = {}
tRankingFunc_Info[23588]["Mail"]["Reward"][5]["RewardRank"] = 5
tRankingFunc_Info[23588]["Mail"]["Reward"][5]["ActionId"] = 568740
tRankingFunc_Info[23588]["Mail"]["Reward"][5]["ExistDay"] = 30
tRankingFunc_Info[23588]["Mail"]["Reward"][5]["Sender"] = tDecMovieAct_Text["Mail"]["From"]
tRankingFunc_Info[23588]["Mail"]["Reward"][5]["Title"] = tDecMovieAct_Text["Mail"]["Title"]
tRankingFunc_Info[23588]["Mail"]["Reward"][5]["Content"] = tDecMovieAct_Text["Mail"]["Content5"]
--6
tRankingFunc_Info[23588]["Mail"]["Reward"][6] = {}
tRankingFunc_Info[23588]["Mail"]["Reward"][6]["RewardRank"] = 6
tRankingFunc_Info[23588]["Mail"]["Reward"][6]["ActionId"] = 568741
tRankingFunc_Info[23588]["Mail"]["Reward"][6]["ExistDay"] = 30
tRankingFunc_Info[23588]["Mail"]["Reward"][6]["Sender"] = tDecMovieAct_Text["Mail"]["From"]
tRankingFunc_Info[23588]["Mail"]["Reward"][6]["Title"] = tDecMovieAct_Text["Mail"]["Title"]
tRankingFunc_Info[23588]["Mail"]["Reward"][6]["Content"] = tDecMovieAct_Text["Mail"]["Content6"]
--7
tRankingFunc_Info[23588]["Mail"]["Reward"][7] = {}
tRankingFunc_Info[23588]["Mail"]["Reward"][7]["RewardRank"] = 7
tRankingFunc_Info[23588]["Mail"]["Reward"][7]["ActionId"] = 568742
tRankingFunc_Info[23588]["Mail"]["Reward"][7]["ExistDay"] = 30
tRankingFunc_Info[23588]["Mail"]["Reward"][7]["Sender"] = tDecMovieAct_Text["Mail"]["From"]
tRankingFunc_Info[23588]["Mail"]["Reward"][7]["Title"] = tDecMovieAct_Text["Mail"]["Title"]
tRankingFunc_Info[23588]["Mail"]["Reward"][7]["Content"] = tDecMovieAct_Text["Mail"]["Content7"]
--8
tRankingFunc_Info[23588]["Mail"]["Reward"][8] = {}
tRankingFunc_Info[23588]["Mail"]["Reward"][8]["RewardRank"] = 8
tRankingFunc_Info[23588]["Mail"]["Reward"][8]["ActionId"] = 568743
tRankingFunc_Info[23588]["Mail"]["Reward"][8]["ExistDay"] = 30
tRankingFunc_Info[23588]["Mail"]["Reward"][8]["Sender"] = tDecMovieAct_Text["Mail"]["From"]
tRankingFunc_Info[23588]["Mail"]["Reward"][8]["Title"] = tDecMovieAct_Text["Mail"]["Title"]
tRankingFunc_Info[23588]["Mail"]["Reward"][8]["Content"] = tDecMovieAct_Text["Mail"]["Content8"]
--9
tRankingFunc_Info[23588]["Mail"]["Reward"][9] = {}
tRankingFunc_Info[23588]["Mail"]["Reward"][9]["RewardRank"] = 9
tRankingFunc_Info[23588]["Mail"]["Reward"][9]["ActionId"] = 568744
tRankingFunc_Info[23588]["Mail"]["Reward"][9]["ExistDay"] = 30
tRankingFunc_Info[23588]["Mail"]["Reward"][9]["Sender"] = tDecMovieAct_Text["Mail"]["From"]
tRankingFunc_Info[23588]["Mail"]["Reward"][9]["Title"] = tDecMovieAct_Text["Mail"]["Title"]
tRankingFunc_Info[23588]["Mail"]["Reward"][9]["Content"] = tDecMovieAct_Text["Mail"]["Content9"]
--10
tRankingFunc_Info[23588]["Mail"]["Reward"][10] = {}
tRankingFunc_Info[23588]["Mail"]["Reward"][10]["RewardRank"] = 10
tRankingFunc_Info[23588]["Mail"]["Reward"][10]["ActionId"] = 568745
tRankingFunc_Info[23588]["Mail"]["Reward"][10]["ExistDay"] = 30
tRankingFunc_Info[23588]["Mail"]["Reward"][10]["Sender"] = tDecMovieAct_Text["Mail"]["From"]
tRankingFunc_Info[23588]["Mail"]["Reward"][10]["Title"] = tDecMovieAct_Text["Mail"]["Title"]
tRankingFunc_Info[23588]["Mail"]["Reward"][10]["Content"] = tDecMovieAct_Text["Mail"]["Content10"]

--阶段奖励表
local tDecMovieAct_StatusReward = {}
	tDecMovieAct_StatusReward[1] = 570846
	tDecMovieAct_StatusReward[3] = 570847
	tDecMovieAct_StatusReward[5] = 570848
	tDecMovieAct_StatusReward[7] = 570849
	tDecMovieAct_StatusReward[10] = 570850
	tDecMovieAct_StatusReward[13] = 570851

local tDecMovieAct_Status = {}
	tDecMovieAct_Status[1] = 1
	tDecMovieAct_Status[2] = 3
	tDecMovieAct_Status[3] = 5
	tDecMovieAct_Status[4] = 7
	tDecMovieAct_Status[5] = 10
	tDecMovieAct_Status[6] = 13

--明星随机表
local tDecMovieAct_ActorRandomChance = {}
	--大牌明星
	tDecMovieAct_ActorRandomChance[1] = {}
	tDecMovieAct_ActorRandomChance[1][1] = {}
	tDecMovieAct_ActorRandomChance[1][1]["ItemChanceSum"] = 10000
	--1                         
	tDecMovieAct_ActorRandomChance[1][1][1] = {}
	tDecMovieAct_ActorRandomChance[1][1][1]["RandomItemChanceType"] = 2
	tDecMovieAct_ActorRandomChance[1][1][1]["ItemChance"] = 100
	tDecMovieAct_ActorRandomChance[1][1][1]["Item_1"] = 1
	--2                        
	tDecMovieAct_ActorRandomChance[1][1][2] = {}
	tDecMovieAct_ActorRandomChance[1][1][2]["RandomItemChanceType"] = 2
	tDecMovieAct_ActorRandomChance[1][1][2]["ItemChance"] = 100
	tDecMovieAct_ActorRandomChance[1][1][2]["Item_1"] = 2
	--3                        
	tDecMovieAct_ActorRandomChance[1][1][3] = {}
	tDecMovieAct_ActorRandomChance[1][1][3]["RandomItemChanceType"] = 2
	tDecMovieAct_ActorRandomChance[1][1][3]["ItemChance"] = 100
	tDecMovieAct_ActorRandomChance[1][1][3]["Item_1"] = 3
	--4                         
	tDecMovieAct_ActorRandomChance[1][1][4] = {}
	tDecMovieAct_ActorRandomChance[1][1][4]["RandomItemChanceType"] = 2
	tDecMovieAct_ActorRandomChance[1][1][4]["ItemChance"] = 100
	tDecMovieAct_ActorRandomChance[1][1][4]["Item_1"] = 4
	--5                      
	tDecMovieAct_ActorRandomChance[1][1][5] = {}
	tDecMovieAct_ActorRandomChance[1][1][5]["RandomItemChanceType"] = 2
	tDecMovieAct_ActorRandomChance[1][1][5]["ItemChance"] = 100
	tDecMovieAct_ActorRandomChance[1][1][5]["Item_1"] = 5
	--6                         
	tDecMovieAct_ActorRandomChance[1][1][6] = {}
	tDecMovieAct_ActorRandomChance[1][1][6]["RandomItemChanceType"] = 2
	tDecMovieAct_ActorRandomChance[1][1][6]["ItemChance"] = 100
	tDecMovieAct_ActorRandomChance[1][1][6]["Item_1"] = 6
	--7                        
	tDecMovieAct_ActorRandomChance[1][1][7] = {}
	tDecMovieAct_ActorRandomChance[1][1][7]["RandomItemChanceType"] = 2
	tDecMovieAct_ActorRandomChance[1][1][7]["ItemChance"] = 100
	tDecMovieAct_ActorRandomChance[1][1][7]["Item_1"] = 7
	--8                        
	tDecMovieAct_ActorRandomChance[1][1][8] = {}
	tDecMovieAct_ActorRandomChance[1][1][8]["RandomItemChanceType"] = 2
	tDecMovieAct_ActorRandomChance[1][1][8]["ItemChance"] = 100
	tDecMovieAct_ActorRandomChance[1][1][8]["Item_1"] = 8
	--9                         
	tDecMovieAct_ActorRandomChance[1][1][9] = {}
	tDecMovieAct_ActorRandomChance[1][1][9]["RandomItemChanceType"] = 2
	tDecMovieAct_ActorRandomChance[1][1][9]["ItemChance"] = 300
	tDecMovieAct_ActorRandomChance[1][1][9]["Item_1"] = 9
	--10                     
	tDecMovieAct_ActorRandomChance[1][1][10] = {}
	tDecMovieAct_ActorRandomChance[1][1][10]["RandomItemChanceType"] = 2
	tDecMovieAct_ActorRandomChance[1][1][10]["ItemChance"] = 300
	tDecMovieAct_ActorRandomChance[1][1][10]["Item_1"] = 10
	--11                     
	tDecMovieAct_ActorRandomChance[1][1][11] = {}
	tDecMovieAct_ActorRandomChance[1][1][11]["RandomItemChanceType"] = 2
	tDecMovieAct_ActorRandomChance[1][1][11]["ItemChance"] = 300
	tDecMovieAct_ActorRandomChance[1][1][11]["Item_1"] = 11
	--12                     
	tDecMovieAct_ActorRandomChance[1][1][12] = {}
	tDecMovieAct_ActorRandomChance[1][1][12]["RandomItemChanceType"] = 2
	tDecMovieAct_ActorRandomChance[1][1][12]["ItemChance"] = 300
	tDecMovieAct_ActorRandomChance[1][1][12]["Item_1"] = 12
	--13                     
	tDecMovieAct_ActorRandomChance[1][1][13] = {}
	tDecMovieAct_ActorRandomChance[1][1][13]["RandomItemChanceType"] = 2
	tDecMovieAct_ActorRandomChance[1][1][13]["ItemChance"] = 300
	tDecMovieAct_ActorRandomChance[1][1][13]["Item_1"] = 13
	--14                     
	tDecMovieAct_ActorRandomChance[1][1][14] = {}
	tDecMovieAct_ActorRandomChance[1][1][14]["RandomItemChanceType"] = 2
	tDecMovieAct_ActorRandomChance[1][1][14]["ItemChance"] = 300
	tDecMovieAct_ActorRandomChance[1][1][14]["Item_1"] = 14
	--15                     
	tDecMovieAct_ActorRandomChance[1][1][15] = {}
	tDecMovieAct_ActorRandomChance[1][1][15]["RandomItemChanceType"] = 2
	tDecMovieAct_ActorRandomChance[1][1][15]["ItemChance"] = 300
	tDecMovieAct_ActorRandomChance[1][1][15]["Item_1"] = 15
	--16                     
	tDecMovieAct_ActorRandomChance[1][1][16] = {}
	tDecMovieAct_ActorRandomChance[1][1][16]["RandomItemChanceType"] = 2
	tDecMovieAct_ActorRandomChance[1][1][16]["ItemChance"] = 300
	tDecMovieAct_ActorRandomChance[1][1][16]["Item_1"] = 16
	--17                     
	tDecMovieAct_ActorRandomChance[1][1][17] = {}
	tDecMovieAct_ActorRandomChance[1][1][17]["RandomItemChanceType"] = 2
	tDecMovieAct_ActorRandomChance[1][1][17]["ItemChance"] = 850
	tDecMovieAct_ActorRandomChance[1][1][17]["Item_1"] = 17
	--18                     
	tDecMovieAct_ActorRandomChance[1][1][18] = {}
	tDecMovieAct_ActorRandomChance[1][1][18]["RandomItemChanceType"] = 2
	tDecMovieAct_ActorRandomChance[1][1][18]["ItemChance"] = 850
	tDecMovieAct_ActorRandomChance[1][1][18]["Item_1"] = 18
	--19                     
	tDecMovieAct_ActorRandomChance[1][1][19] = {}
	tDecMovieAct_ActorRandomChance[1][1][19]["RandomItemChanceType"] = 2
	tDecMovieAct_ActorRandomChance[1][1][19]["ItemChance"] = 850
	tDecMovieAct_ActorRandomChance[1][1][19]["Item_1"] = 19
	--20                     
	tDecMovieAct_ActorRandomChance[1][1][20] = {}
	tDecMovieAct_ActorRandomChance[1][1][20]["RandomItemChanceType"] = 2
	tDecMovieAct_ActorRandomChance[1][1][20]["ItemChance"] = 850
	tDecMovieAct_ActorRandomChance[1][1][20]["Item_1"] = 20
	--21                     
	tDecMovieAct_ActorRandomChance[1][1][21] = {}
	tDecMovieAct_ActorRandomChance[1][1][21]["RandomItemChanceType"] = 2
	tDecMovieAct_ActorRandomChance[1][1][21]["ItemChance"] = 850
	tDecMovieAct_ActorRandomChance[1][1][21]["Item_1"] = 21
	--22                     
	tDecMovieAct_ActorRandomChance[1][1][22] = {}
	tDecMovieAct_ActorRandomChance[1][1][22]["RandomItemChanceType"] = 2
	tDecMovieAct_ActorRandomChance[1][1][22]["ItemChance"] = 850
	tDecMovieAct_ActorRandomChance[1][1][22]["Item_1"] = 22
	--23                     
	tDecMovieAct_ActorRandomChance[1][1][23] = {}
	tDecMovieAct_ActorRandomChance[1][1][23]["RandomItemChanceType"] = 2
	tDecMovieAct_ActorRandomChance[1][1][23]["ItemChance"] = 850
	tDecMovieAct_ActorRandomChance[1][1][23]["Item_1"] = 23
	--24                     
	tDecMovieAct_ActorRandomChance[1][1][24] = {}
	tDecMovieAct_ActorRandomChance[1][1][24]["RandomItemChanceType"] = 2
	tDecMovieAct_ActorRandomChance[1][1][24]["ItemChance"] = 850
	tDecMovieAct_ActorRandomChance[1][1][24]["Item_1"] = 24
	

	--普通演员
	tDecMovieAct_ActorRandomChance[2] = {}
	tDecMovieAct_ActorRandomChance[2][1] = {}
	tDecMovieAct_ActorRandomChance[2][1]["ItemChanceSum"] = 10000
	--1                            
	tDecMovieAct_ActorRandomChance[2][1][1] = {}
	tDecMovieAct_ActorRandomChance[2][1][1]["RandomItemChanceType"] = 2
	tDecMovieAct_ActorRandomChance[2][1][1]["ItemChance"] = 1000
	tDecMovieAct_ActorRandomChance[2][1][1]["Item_1"] = 25
	--2                            
	tDecMovieAct_ActorRandomChance[2][1][2] = {}
	tDecMovieAct_ActorRandomChance[2][1][2]["RandomItemChanceType"] = 2
	tDecMovieAct_ActorRandomChance[2][1][2]["ItemChance"] = 2000
	tDecMovieAct_ActorRandomChance[2][1][2]["Item_1"] = 26
	--3                            
	tDecMovieAct_ActorRandomChance[2][1][3] = {}
	tDecMovieAct_ActorRandomChance[2][1][3]["RandomItemChanceType"] = 2
	tDecMovieAct_ActorRandomChance[2][1][3]["ItemChance"] = 3500
	tDecMovieAct_ActorRandomChance[2][1][3]["Item_1"] = 27
	--4                            
	tDecMovieAct_ActorRandomChance[2][1][4] = {}
	tDecMovieAct_ActorRandomChance[2][1][4]["RandomItemChanceType"] = 2
	tDecMovieAct_ActorRandomChance[2][1][4]["ItemChance"] = 3500
	tDecMovieAct_ActorRandomChance[2][1][4]["Item_1"] = 28

local tDecMovieAct_DetList = {}
	tDecMovieAct_DetList[1] =  tDecMovieAct_Text["SmallText"]["DetList"][1] 
	tDecMovieAct_DetList[2] =  tDecMovieAct_Text["SmallText"]["DetList"][2] 
	tDecMovieAct_DetList[3] =  tDecMovieAct_Text["SmallText"]["DetList"][3] 
	tDecMovieAct_DetList[4] =  tDecMovieAct_Text["SmallText"]["DetList"][4] 
	tDecMovieAct_DetList[5] =  tDecMovieAct_Text["SmallText"]["DetList"][5] 
	tDecMovieAct_DetList[6] =  tDecMovieAct_Text["SmallText"]["DetList"][6] 
	tDecMovieAct_DetList[7] =  tDecMovieAct_Text["SmallText"]["DetList"][7] 
	tDecMovieAct_DetList[8] =  tDecMovieAct_Text["SmallText"]["DetList"][8] 
	tDecMovieAct_DetList[9] =  tDecMovieAct_Text["SmallText"]["DetList"][9] 
	tDecMovieAct_DetList[10] = tDecMovieAct_Text["SmallText"]["DetList"][10]
	
----------------------------------逻辑部分---------------------------------------------

--获取演员列表
function DecMovieAct_GetNowActor()
	local nUserId = Get_UserId()
	local tActorNow = {}
	for i = 1, 3 do
		local nEvent = tDecMovieAct_Stc["Actor"][i]["Event"]
		local nData = tDecMovieAct_Stc["Actor"][i]["Data"]
		local nTotalValue = Get_UserStatisticValue(nEvent, nData, nUserId)
		
		for j = 1, 8 do
			local nChkValue = 2^j
			
			if Sys_ParseNumbersContain(nChkValue, nTotalValue) then
				local nActor = j + 8 * (i - 1)
				table.insert(tActorNow, nActor)
			end
			
		end
		if i == 3 then
			for k = 9, 12 do
				local nChkValue = 2^k
				if Sys_ParseNumbersContain(nChkValue, nTotalValue) then
					local nActor = (k - 8) + 3 * 8
					table.insert(tActorNow, nActor)
				end
			end
		end
		
	end
	--返回表  表内容为演员在表中索引
	return tActorNow
end
--获取旧演员列表
function DecMovieAct_GetOldActor()
	local nUserId = Get_UserId()
	local tActorOld = {}
	for i = 1, 3 do
		local nEvent = tDecMovieAct_Stc["OldActor"][i]["Event"]
		local nData = tDecMovieAct_Stc["OldActor"][i]["Data"]
		local nTotalValue = Get_UserStatisticValue(nEvent, nData, nUserId)
		
		for j = 1, 8 do
			local nChkValue = 2^j
			
			if Sys_ParseNumbersContain(nChkValue, nTotalValue) then
				local nActor = j + 8 * (i - 1)
				table.insert(tActorOld, nActor)
			end
			
		end
		if i == 3 then
			for k = 9, 12 do
				local nChkValue = 2^k
				if Sys_ParseNumbersContain(nChkValue, nTotalValue) then
					local nActor = (k - 8) + 3 * 8
					table.insert(tActorOld, nActor)
				end
			end
		end
		
	end
	--返回表  表内容为演员在表中索引
	return tActorOld
	
end

--将电影掩码初始化，以备后续记录信息
function DecMovieAct_InitNowMovie()
	local nUserId = Get_UserId()
	local nNowEvent = tDecMovieAct_Stc["Movie"]["Now"]["Event"]
	local nNowData = tDecMovieAct_Stc["Movie"]["Now"]["Data"]
	
	local nNowMovie = Get_UserStatisticValue(nNowEvent, nNowData, nUserId) or 0
	
	if nNowMovie == 0 then
		Task_SetStatistic(nNowEvent, nNowData, 1000000, 1, nUserId)
	end
	return Get_UserStatisticValue(nNowEvent, nNowData, nUserId)
end

--检查玩家当前电影状态
function DecMovieAct_ChkNowMovie()
	DecMovieAct_InitNowMovie()
	local nUserId = Get_UserId()
	local nNowEvent = tDecMovieAct_Stc["Movie"]["Now"]["Event"]
	local nNowData = tDecMovieAct_Stc["Movie"]["Now"]["Data"]
	local nTicketEvent = tDecMovieAct_Stc["MovieTicket"]["Now"]["Event"]
	local nTicketData = tDecMovieAct_Stc["MovieTicket"]["Now"]["Data"]
	
	local sNowMovie = tostring(DecMovieAct_InitNowMovie())
	
	local nStatus = tonumber(string.sub(sNowMovie, 1, 1))
	local nType = tonumber(string.sub(sNowMovie, 2, 2))
	local nSercetary = tonumber(string.sub(sNowMovie, 3, 3))
	local nSize = tonumber(string.sub(sNowMovie, 4, 4))
	local nContent = tonumber(string.sub(sNowMovie, 5, 5))
	local nWater = tonumber(string.sub(sNowMovie, 6, 6))
	local nSale = tonumber(string.sub(sNowMovie, 7, 7))
	
	local nTicket = Get_UserStatisticValue(nTicketEvent, nTicketData, nUserId)
	
	return nStatus, nType, nSercetary, nSize, nContent, nWater, nTicket, nSale
end

function DecMovieAct_GetReward(nNpcId)
	local nUserId = Get_UserId()
	local nStatus, nType, nSercetary, nSize, nContent, nWater, nTicket, nSale = DecMovieAct_ChkNowMovie()
	
	if nTicket == 0 then
		nTicket = 1
	end
	
	local tReward = CommonFunc_Copy(tDecMovieAct_Reward[1])
	tReward["RewardItem"][1]["Attr"] = "0 " ..tostring(nTicket)
	
	if not RewardTemplate_UpperLimit(tReward, nUserId) then
		LinkNpcGossipFunc_New(nNpcId, "2-6")
		return 
	end
	
	if RewardTemplate_UseItemAndMsg(tReward, nUserId) then
		--财神光效
		--User_EffectAdd("self", "mammon")
		--独立电影才给加电影数目
			local nNumEvent = tDecMovieAct_Stc["Movie"]["Num"]["Event"]
			local nNumData = tDecMovieAct_Stc["Movie"]["Num"]["Data"]
		if (nSize ~= 1) then
			--记录玩家拍摄免费电影数目
			Task_AddStatistic(nNumEvent, nNumData, 1, 1, nUserId)
		end
		--发阶段奖励
		local nTotalNum = Get_UserStatisticValue(nNumEvent, nNumData, nUserId)
		if tDecMovieAct_StatusReward[nTotalNum] ~= nil and (nSize ~= 1) then
			Sys_SendMail(nUserId, 0, 0, tDecMovieAct_StatusReward[nTotalNum], 0, 30, tDecMovieAct_Text["Mail"]["From"], tDecMovieAct_Text["Mail"]["Status"]["Title"], tDecMovieAct_Text["Mail"]["Status"][nTotalNum])
		end
		

		--清空明星池 备份明星池
		DecMovieAct_ClearActor()

		User_TalkChannel2005(string.format(tDecMovieAct_Text["Talk"]["GetTicketReward"], nTicket))
		
		--领取后记录到玩家票房数据、排行榜操作
		DecMovieAct_TicketRecord(nTicket)
		
		--领取票房后将该电影移入玩家电影列表
		DecMovieAct_MovieList()
		
	end
	
	
end

--记录玩家票房数量、里面要有排行榜相关
function DecMovieAct_TicketRecord(nTicket)
	local nTodayEvent = tDecMovieAct_Stc["TicketToday"]["Event"]
	local nTodayData = tDecMovieAct_Stc["TicketToday"]["Data"]
	local nTotalEvent = tDecMovieAct_Stc["TicketTotal"]["Event"]
	local nTotalData = tDecMovieAct_Stc["TicketTotal"]["Data"]
	local nUserId = Get_UserId()
	local sUserName = Get_UserName(nUserId)
	
	--隔日重置玩家每日票房数据
	if Task_StcInterval(nTodayEvent, nTodayData, 1, 4, nUserId) then
		Task_SetStatistic(nTodayEvent, nTodayData, 0, 1, nUserId)
	end
	--记录到玩家票房数据,玩家当日最高票房电影
	if nTicket >= Get_UserStatisticValue(nTodayEvent, nTodayData, nUserId) then
		Task_SetStatistic(nTodayEvent, nTodayData, nTicket, 1, nUserId)
		
	end
	
	Task_AddStatistic(nTotalEvent, nTotalData, nTicket, 1, nUserId)
	Task_SetStcTimestamp(nTodayEvent, nTodayData, 0, nUserId)
	
	--插入排行榜
	local nTodayTicket = Get_UserStatisticValue(nTodayEvent, nTodayData, nUserId)
	local nTotalTicket = Get_UserStatisticValue(nTotalEvent, nTotalData, nUserId)
	--日榜,仅记录最高电影
	RankingFunc_SetInfo(23587, nTodayTicket, nUserId, sUserName)
	--总榜
	RankingFunc_SetInfo(23588, nTotalTicket, nUserId, sUserName)
	
	
end

--修改当前电影信息 pos代表掩码数字位数1~7 pos8为票房 Pos9为重置当前数据
function DecMovieAct_SetMovieInfo(nPos, nValue)
	local nUserId = Get_UserId()
	local nNowEvent = tDecMovieAct_Stc["Movie"]["Now"]["Event"]
	local nNowData = tDecMovieAct_Stc["Movie"]["Now"]["Data"]
	local nNowTicketEvent = tDecMovieAct_Stc["MovieTicket"]["Now"]["Event"]
	local nNowTicketData = tDecMovieAct_Stc["MovieTicket"]["Now"]["Data"]
	
	local sInfo = tostring(Get_UserStatisticValue(nNowEvent, nNowData, nUserId))
	
	local tInfo = {}
	tInfo[1] = string.sub(sInfo, 1, 1)
	tInfo[2] = string.sub(sInfo, 2, 2)
	tInfo[3] = string.sub(sInfo, 3, 3)
	tInfo[4] = string.sub(sInfo, 4, 4)
	tInfo[5] = string.sub(sInfo, 5, 5)
	tInfo[6] = string.sub(sInfo, 6, 6)
	tInfo[7] = string.sub(sInfo, 7, 7)
	if (nPos >= 1) and (nPos <= 7) then
		tInfo[nPos] = nValue
		nInfo = tonumber(tInfo[1] .. tInfo[2] .. tInfo[3] .. tInfo[4] .. tInfo[5] .. tInfo[6] .. tInfo[7])
		Task_SetStatistic(nNowEvent, nNowData, nInfo, 1, nUserId)
	end
	if nPos == 8 then
		Task_SetStatistic(nNowTicketEvent, nNowTicketData, nValue, 1, nUserId)
	end
	if nPos == 9 then
		Task_SetStatistic(nNowEvent, nNowData, 1000000, 1, nUserId)
		Task_SetStatistic(nNowTicketEvent, nNowTicketData, 0, 1, nUserId)
	end
	
	
end

--将已领取过票房的电影存入电影列表,只存5个票房最高的
function DecMovieAct_MovieList()
	local nUserId = Get_UserId()
	local tMovie = {}
	
	--将已有信息和票房存入表中
	for i = 1, 5 do
		local nEvent = tDecMovieAct_Stc["Movie"][i]["Event"]
		local nData = tDecMovieAct_Stc["Movie"][i]["Data"]
		local nTicketEvent = tDecMovieAct_Stc["MovieTicket"][i]["Event"]
		local nTicketData = tDecMovieAct_Stc["MovieTicket"][i]["Data"]
		
		--隔天清除电影记录
		if Task_StcInterval(nEvent, nData, 1, 4, nUserId) then
			Task_SetStatistic(nEvent, nData, 0, 1, nUserId)
			Task_SetStatistic(nTicketEvent, nTicketData, 0, 1, nUserId)
		end
		
		tMovie[i] = {}
		tMovie[i]["Info"] = Get_UserStatisticValue(nEvent, nData, nUserId)
		if tMovie[i]["Info"] == 0 then
			tMovie[i]["Info"] = 1000000
		end
		tMovie[i]["Ticket"] = Get_UserStatisticValue(nTicketEvent, nTicketData, nUserId)
		
	end
	--已有电影按票房排序
	table.sort(tMovie, function(a, b)
		return a["Ticket"] > b["Ticket"]
	end)
	
	local nNowEvent = tDecMovieAct_Stc["Movie"]["Now"]["Event"]
	local nNowData = tDecMovieAct_Stc["Movie"]["Now"]["Data"]
	local nNowTicketEvent = tDecMovieAct_Stc["MovieTicket"]["Now"]["Event"]
	local nNowTicketData = tDecMovieAct_Stc["MovieTicket"]["Now"]["Data"]
	
	local tNowMovie = {}
	tNowMovie["Info"] = Get_UserStatisticValue(nNowEvent, nNowData, nUserId)
	tNowMovie["Ticket"] = Get_UserStatisticValue(nNowTicketEvent, nNowTicketData, nUserId)
	tNowMovie["Name"] = tDecMovieAct_MovieName[nUserId]["Now"] or tDecMovieAct_Text["SmallText"]["DefaultMovieName"]
	tDecMovieAct_MovieName[nUserId]["Now"] = tDecMovieAct_Text["SmallText"]["DefaultMovieName"]
	local nStatus = string.sub(tostring(tNowMovie["Info"]), 1, 1)
	if (nStatus == 1) or (nStatus == 3) or (nStatus == 4) then
		return 
	end
	
	for i, v in pairs(tMovie) do
		if tNowMovie["Ticket"] >= tMovie[i]["Ticket"] then
			if i == 1 then
				--记录玩家当天最好电影的名字
				tDecMovieAct_MovieName[nUserId]["BestToday"] = tNowMovie["Name"]
			end
			
			table.insert(tMovie, i, tNowMovie)
			table.remove(tMovie, 6)
			
			break
		end
	end
	
	
	for i = 1, 5 do
		local nEvent = tDecMovieAct_Stc["Movie"][i]["Event"]
		local nData = tDecMovieAct_Stc["Movie"][i]["Data"]
		local nTicketEvent = tDecMovieAct_Stc["MovieTicket"][i]["Event"]
		local nTicketData = tDecMovieAct_Stc["MovieTicket"][i]["Data"]
		
		Task_SetStatistic(nEvent, nData, tMovie[i]["Info"], 1, nUserId)
		Task_SetStcTimestamp(nEvent, nData, 0, nUserId)
		Task_SetStatistic(nTicketEvent, nTicketData, tMovie[i]["Ticket"], 1, nUserId)
		Task_SetStcTimestamp(nTicketEvent, nTicketData, 0, nUserId)
	end
	
	--重置当前电影记录
	DecMovieAct_SetMovieInfo(9, 0)
	
end

--获取玩家电影列表
function DecMovieAct_GetMovieList()
	local nUserId = Get_UserId()
	local tMovieList = {}
	for i = 1, 5 do
		local nEvent = tDecMovieAct_Stc["Movie"][i]["Event"]
		local nData = tDecMovieAct_Stc["Movie"][i]["Data"]
		local nTicketEvent = tDecMovieAct_Stc["MovieTicket"][i]["Event"]
		local nTicketData = tDecMovieAct_Stc["MovieTicket"][i]["Data"]
		
		local nMovieInfo = Get_UserStatisticValue(nEvent, nData, nUserId)
		local nMovieTicket = Get_UserStatisticValue(nTicketEvent, nTicketData, nUserId)
		
		if nMovieTicket ~= 0 then
			tMovieList[i] = {}
			tMovieList[i]["Info"] = nMovieInfo
			tMovieList[i]["Ticket"] = nMovieTicket
		end
		
	end
	
	return tMovieList
end

--起名
function DecMovieAct_SetName(nNpcId)
	local nStatus, nType, nSercetary, nSize, nContent, nWater, nTicket, nSale = DecMovieAct_ChkNowMovie()
	local nUserId = Get_UserId()
	local sUserName = Get_UserName(nUserId)
	
	--对白初始化
	Sys_DialogText(tDecMovieAct_Text[nNpcId]["Text362"])
	
	local tActor = DecMovieAct_GetNowActor()
	local sActor = DecMovieAct_GetActorNameString(3)
	if #tActor > 3 then
		sActor = sActor .. tDecMovieAct_Text[23589]["Text369"]
	end
	if (nSize == 1) then
		Sys_DialogText(string.format(tDecMovieAct_Text[nNpcId]["Text431"], tDecMovieAct_Text["MovieType"][nType]))
	else
		Sys_DialogText(string.format(tDecMovieAct_Text[nNpcId]["Text431"], tDecMovieAct_Text["MovieType"][nSize]))
	end
	Sys_DialogText(string.format(tDecMovieAct_Text[nNpcId]["Text432"], sUserName))
	Sys_DialogText(string.format(tDecMovieAct_Text[nNpcId]["Text364"], sActor))
	
	Sys_DialogText(tDecMovieAct_Text[nNpcId]["Text367"])
	
	Sys_DialogOptEdit(tDecMovieAct_Text[nNpcId]["Text2511"], 15, "DecMovieAct_ConfirmName</N>" .. nNpcId)
	Sys_DialogFace(nNpcId)
	Sys_DialogEnd()
	
end
--起名结算
function DecMovieAct_ConfirmName(nNpcId)
	local nUserId = Get_UserId()
	
	local sName = Get_SysAcceptStr()
	--名字不能为空
	if #sName == 0 then
		User_TalkChannel2005(tDecMovieAct_Text["SmallText"]["NotSpace"], nUserId)
		LinkNpcGossipFunc_New(nNpcId, "3-6")
		return
	end
	
	local nUserId = Get_UserId()
	local sUserName = Get_UserName(nUserId)
	
	--存下玩家当前电影名
	tDecMovieAct_MovieName[nUserId] = tDecMovieAct_MovieName[nUserId] or {}
	
	tDecMovieAct_MovieName[nUserId]["Now"] = sName
	
	local nStatus, nType, nSercetary, nSize, nContent, nWater, nTicket, nSale = DecMovieAct_ChkNowMovie()
	
	--生成影评
	local nContentIndex = math.random(1, 5)
	
	--计算票房
	local nTotalCost = DecMovieAct_MovieCost()
	local nRandom = math.random(80, 125)
	local nTicket = math.floor((nTotalCost * nRandom)/100)
	
	local nMovieData = tonumber(2 .. nType .. nSercetary .. nSize .. nContentIndex .. 0 .. 0)
	
	local nNowEvent = tDecMovieAct_Stc["Movie"]["Now"]["Event"]
	local nNowData = tDecMovieAct_Stc["Movie"]["Now"]["Data"]
	Task_SetStatistic(nNowEvent, nNowData, nMovieData, 1, nUserId)
	local nTicketEvent = tDecMovieAct_Stc["MovieTicket"]["Now"]["Event"]
	local nTicketData = tDecMovieAct_Stc["MovieTicket"]["Now"]["Data"]
	Task_SetStatistic(nTicketEvent, nTicketData, nTicket, 1, nUserId)
	
	--背包空间不足时不显示票房和公告
	local tReward = CommonFunc_Copy(tDecMovieAct_Reward[1])
	tReward["RewardItem"][1]["Attr"] = "0 " ..tostring(nTicket)
	if not RewardTemplate_UpperLimit(tReward, nUserId) then
		LinkNpcGossipFunc_New(nNpcId, "2-6")
		return 
	end
	--全服公告
	local sBroadcast = string.format(tDecMovieAct_Text["Broadcast"]["Named"], sUserName, sName, nTicket)
	Sys_SystemBroadcast(sBroadcast)
	--Sys_TalkBroadcast(sBroadcast)
	--结算对白
	LinkNpcGossipFunc_New(nNpcId, "2-5")
	
	--票房直接给 清电影数据
	DecMovieAct_GetReward(nNpcId)
	
end

--计算电影成本
function DecMovieAct_MovieCost()
	local nUserId = Get_UserId()
	local nStatus, nType, nSercetary, nSize, nContent, nWater, nTicket, nSale = DecMovieAct_ChkNowMovie()
	
	local nTypeCost = tDecMovieAct_Cost["Type"][0]
	--非小成本电影
	if (nSize == 1) then
		nTypeCost = tDecMovieAct_Cost["Type"][nType]
	end
	local nActorCost = DecMovieAct_GetActorCost()
	local nTotalCost = nTypeCost + nActorCost
	
	return nTotalCost
	
end

--领取票房后清除玩家签约明星 导入旧演员池
function DecMovieAct_ClearActor()
	local nUserId = Get_UserId()
	local nEvent = tDecMovieAct_Stc["Actor"][1]["Event"]
	local nData1 = tDecMovieAct_Stc["Actor"][1]["Data"]
	local nData2 = tDecMovieAct_Stc["Actor"][2]["Data"]
	local nData3 = tDecMovieAct_Stc["Actor"][3]["Data"]
	local nEventOld = tDecMovieAct_Stc["OldActor"][1]["Event"]
	local nData1Old = tDecMovieAct_Stc["OldActor"][1]["Data"]
	local nData2Old = tDecMovieAct_Stc["OldActor"][2]["Data"]
	local nData3Old = tDecMovieAct_Stc["OldActor"][3]["Data"]
	
	--免费演员不能续约
	local nEventRecordFree = tDecMovieAct_Stc["ActorFreeNotReturn"]["Event"]
	local nDataRecordFree = tDecMovieAct_Stc["ActorFreeNotReturn"]["Data"]
	local nIsFree = Get_UserStatisticValue(nEventRecordFree, nDataRecordFree, nUserId)
	
	--获取数据 导入旧演员池
	if (nIsFree == 0) then
		local nValue1 = Get_UserStatisticValue(nEvent, nData1, nUserId)
		local nValue2 = Get_UserStatisticValue(nEvent, nData2, nUserId)
		local nValue3 = Get_UserStatisticValue(nEvent, nData3, nUserId)
		Task_SetStatistic(nEventOld, nData1Old, nValue1, 1, nUserId)
		Task_SetStatistic(nEventOld, nData2Old, nValue2, 1, nUserId)
		Task_SetStatistic(nEventOld, nData3Old, nValue3, 1, nUserId)
	else
		Task_SetStatistic(nEventOld, nData1Old, 0, 1, nUserId)
		Task_SetStatistic(nEventOld, nData2Old, 0, 1, nUserId)
		Task_SetStatistic(nEventOld, nData3Old, 0, 1, nUserId)
	end
	--拍完重置数据
	Task_SetStatistic(nEvent, nData1, 0, 1, nUserId)
	Task_SetStatistic(nEvent, nData2, 0, 1, nUserId)
	Task_SetStatistic(nEvent, nData3, 0, 1, nUserId)
	Task_SetStatistic(nEventRecordFree, nDataRecordFree, 0, 1, nUserId)
	
end

--打开兑换商店
function DecMovieAct_OpenExchangeShop(nNpcId)
	local nUserId = Get_UserId()
	User_OpenExchangeShop(nNpcId, nUserId)
	
end

--二次确认弹窗
--nType 1买演员 2选择类型付款 3演员续约
function DecMovieAct_IgnoreSecondConfirm(nNpcId, nType)
	Sys_MsgBox(tDecMovieAct_Text[23588]["CheckMsgBox"], "DecMovieAct_IgnoreConfirm</N>" .. nNpcId .. "</N>" .. nType)
end

--屏蔽二次确认
function DecMovieAct_IgnoreConfirm(nNpcId, nType)
	local nUserId = Get_UserId()
	local nEvent = tDecMovieAct_Stc["IgnoreConfirm"][nType]["Event"]
	local nData = tDecMovieAct_Stc["IgnoreConfirm"][nType]["Data"]
	
	Task_SetStatistic(nEvent, nData, 1, 1, nUserId)
	Task_SetStcTimestamp(nEvent, nData, 0, nUserId)
	if nType == 1 then
		LinkNpcGossipFunc_New(nNpcId, "1-4")
		return
	elseif nType == 2 then
	--屏蔽后的对白跳转
		LinkNpcGossipFunc_New(nNpcId, "1-4")
		return
	elseif nType == 3 then
	--屏蔽后的对白跳转
		LinkNpcGossipFunc_New(nNpcId, "1-4")
		return
	end
	
end

--重新登录后清屏蔽二次确认设置
function DecMovieAct_LoginCheck()
	local nUserId = Get_UserId()
	
	for i = 1, 3 do
		local nEvent = tDecMovieAct_Stc["IgnoreConfirm"][i]["Event"]
		local nData = tDecMovieAct_Stc["IgnoreConfirm"][i]["Data"]
		Task_SetStatistic(nEvent, nData, 0, 1, nUserId)
	end
end

--随机明星对白
function DecMovieAct_RandomActor(nNpcId, nType)
	
	local nUserId = Get_UserId()
	local nUserEMoney = Get_UserEMoney() --玩家身上的天石
	local nCost = tDecMovieAct_RandomActorCost[nType]
	local sName = tDecMovieAct_RandomActorName[nType]
	
	--天石不足
	if nUserEMoney < nCost then
		LinkNpcGossipFunc_New(nNpcId, "2-5")
		return
	end
	
	if nType == 1 then
		local nActorNum1 = 0
		for i = 1, 24 do
			if DecMovieAct_ActorBuyed(i) then
				nActorNum1 = nActorNum1 + 1
			end
		end
		if nActorNum1 == 24 then
			Sys_MsgBox(tDecMovieAct_Text["SmallText"]["ActorFull"], "NpcPosition_PathFind</N>23589", "LinkNpcGossipFunc_New</N>23588</S>1-4", nUserId)
			return
		end
	elseif nType == 2 then
		local nActorNum2 = 0
		for i = 25, 28 do
			if DecMovieAct_ActorBuyed(i) then
				nActorNum2 = nActorNum2 + 1
			end
		end
		if nActorNum2 == 4 then
			Sys_MsgBox(tDecMovieAct_Text["SmallText"]["ActorFull"], "NpcPosition_PathFind</N>23589", "LinkNpcGossipFunc_New</N>23588</S>1-4", nUserId)
			return
		end
	end
	
		--屏蔽二次确认
	local nEvent = tDecMovieAct_Stc["IgnoreConfirm"][1]["Event"]
	local nData = tDecMovieAct_Stc["IgnoreConfirm"][1]["Data"]
	if Get_UserStatisticValue(nEvent, nData, nUserId) == 1 then
		--随机选取明星，扣除天石并签下
		DecMovieAct_RandomActorConfirm(nNpcId, nType)
		return
	end
	
	--二次确认对白
	local sText = string.format(tDecMovieAct_Text[nNpcId]["Text261"], nCost, sName)
	local sOption = string.format(tDecMovieAct_Text[nNpcId]["Option261"], nCost)
	tNpcGossip[nNpcId]["Text261"] = sText
	tNpcGossip[nNpcId]["Option261"] = sOption
	tNpcGossip[nNpcId]["OptionFunc261"] = "DecMovieAct_RandomActorConfirm</N>" .. nNpcId .."</N>" .. nType
	LinkNpcGossipFunc_New(nNpcId, "2-6")
	
	
	
end

--确认签约该明星
function DecMovieAct_RandomActorConfirm(nNpcId, nType)
	
	local nUserId = Get_UserId()
	local nUserEMoney = Get_UserEMoney() --玩家身上的天石
	local nCost = tDecMovieAct_RandomActorCost[nType]
	
	--天石不足
	if nUserEMoney < nCost then
		
		LinkNpcGossipFunc_New(nNpcId, "2-5")
		return
	end
	--免费抽演员
	if nType == 3 then
		local nFreeEvent = tDecMovieAct_Stc["ActorFreeChance"]["Event"] 
		local nFreeData = tDecMovieAct_Stc["ActorFreeChance"]["Data"]
		if Task_StcInterval(nFreeEvent, nFreeData, 1, 4, nUserId) then
			Task_SetStatistic(nFreeEvent, nFreeData, 0, 1, nUserId)
		end
		if Get_UserStatisticValue(nFreeEvent, nFreeData, nUserId) == 1 then
			Sys_MsgBox(tDecMovieAct_Text[nNpcId]["Text144"], "LinkNpcGossipFunc_New</N>" .. nNpcId .. "</S>1-4")
			return
		end
		local nActorNum2 = 0
		for i = 25, 28 do
			if DecMovieAct_ActorBuyed(i) then
				nActorNum2 = nActorNum2 + 1
			end
		end
		if nActorNum2 == 4 then
			Sys_MsgBox(tDecMovieAct_Text["SmallText"]["ActorFull"], "NpcPosition_PathFind</N>23589", "LinkNpcGossipFunc_New</N>23588</S>1-4", nUserId)
			return
		end
	end
	if nCost ~= 0 then
		if User_AddEMoney(-nCost) then
			--Emoney Log
			local sLog = string.format(tDecMovieAct_Log["Actor"], nCost, nCost)
			Sys_SaveEmoneyBuy(sLog, nUserId)
			--付费演员可以续约
			local nEventRecordFree = tDecMovieAct_Stc["ActorFreeNotReturn"]["Event"]
			local nDataRecordFree = tDecMovieAct_Stc["ActorFreeNotReturn"]["Data"]
			Task_SetStatistic(nEventRecordFree, nDataRecordFree, 0, 1, nUserId)
			
		else
			return
		end
	--记录免费使用演员
	else
		local nEvent = tDecMovieAct_Stc["ActorFreeChance"]["Event"] 
		local nData = tDecMovieAct_Stc["ActorFreeChance"]["Data"]
		if Task_StcInterval(nEvent, nData, 1, 4, nUserId) then
			Task_SetStatistic(nEvent, nData, 0, 1, nUserId)
		end
		if Get_UserStatisticValue(nEvent, nData, nUserId) == 1 then
			return
		end
		--免费演员不可续约
		local nEventRecordFree = tDecMovieAct_Stc["ActorFreeNotReturn"]["Event"]
		local nDataRecordFree = tDecMovieAct_Stc["ActorFreeNotReturn"]["Data"]
		Task_SetStatistic(nEventRecordFree, nDataRecordFree, 1, 1, nUserId)
		
		Task_SetStatistic(nEvent, nData, 1, 1, nUserId)
		Task_SetStcTimestamp(nEvent, nData, 0, nUserId)
	end
	
	if nType == 3 then
		nType = 2
	end
	
	local nActorIndex = 0
	repeat
		local nFlag, tAward = Probabil_RandomAward(tDecMovieAct_ActorRandomChance[nType], 1)
		nActorIndex = tAward[1]["tAward"][1]["Item_1"]
		
	until (not DecMovieAct_ActorBuyed(nActorIndex))
	
	local nActorNo = 0
	local nActorLevel = 0
	
	if nActorIndex <= 8 then
		local nActorEvent = tDecMovieAct_Stc["Actor"][1]["Event"]
		local nActorData = tDecMovieAct_Stc["Actor"][1]["Data"]
		nActorNo = nActorIndex
		local nValue = 2^nActorIndex
		nActorLevel = 1
		Task_AddStatistic(nActorEvent, nActorData, nValue, 1, nUserId)
	elseif nActorIndex > 8 and nActorIndex <= 16 then
		local nActorEvent = tDecMovieAct_Stc["Actor"][2]["Event"]
		local nActorData = tDecMovieAct_Stc["Actor"][2]["Data"]
		nActorNo = (nActorIndex - 8)
		local nValue = 2^nActorNo
		nActorLevel = 2
		Task_AddStatistic(nActorEvent, nActorData, nValue, 1, nUserId)
	elseif nActorIndex > 16 and nActorIndex <= 28 then
		local nActorEvent = tDecMovieAct_Stc["Actor"][3]["Event"]
		local nActorData = tDecMovieAct_Stc["Actor"][3]["Data"]
		nActorNo = (nActorIndex - 16)
		local nValue = 2^nActorNo
		nActorLevel = 3
		Task_AddStatistic(nActorEvent, nActorData, nValue, 1, nUserId)
		
	end
	
	local sName = tDecMovieAct_ActorList[nActorLevel]["Name"][nActorNo]
	
	local tActorType = DecMovieAct_CountActorType()
	if tActorType ~= 0 then
		for i = 1, 7 do
			j = i + 4
			if tActorType[i] ~= 0 then
				local sNum = tostring(tActorType[i]) .. tDecMovieAct_Text["ActorType"][0]
				tNpcGossip[nNpcId]["Text27" .. j] = string.format(tDecMovieAct_Text[nNpcId]["Text27" .. j], sNum)
			else
				tNpcGossip[nNpcId]["Text27" .. j] = string.format(tDecMovieAct_Text[nNpcId]["Text27" .. j], tDecMovieAct_Text["ActorType"][8])
			end
			
		end
	end
	
	local sNowActorName = tDecMovieAct_Text["Actor"][nActorIndex]
	
	--抽到巨星给公告
	if (nActorIndex <= 8) and (nActorIndex >= 1) then
		local sUserName = Get_UserName(nUserId)
		local sText = string.format(tDecMovieAct_Text["Talk"]["FamousActor"], sUserName, sNowActorName)
		Sys_TalkBroadcast(sText)
	end
	
	if nActorIndex > 24 then
		local nRandom = math.random(1, #tDecMovieAct_Text["SmallText"]["DetList"])
		sNowActorName = tDecMovieAct_Text["SmallText"]["DetList"][nRandom]
	end
	local sNowActor = string.format(tDecMovieAct_Text[nNpcId]["Text273"], tDecMovieAct_Text["ActorType"][tDecMovieAct_ActorType[nActorIndex]], sNowActorName)
	tNpcGossip[nNpcId]["Text273"] = sNowActor
	
	LinkNpcGossipFunc_New(nNpcId, "2-7")
	
	local sContent = string.format(tDecMovieAct_Text["Talk"]["ConfirmActor"], sName)
	User_TalkChannel2005(sContent, nUserId)
	
end

--统计明星分布
function DecMovieAct_CountActorType()
	--统计明星分布
	local tActor = DecMovieAct_GetNowActor()
	local tActorType = {}
	tActorType[1] = 0
	tActorType[2] = 0
	tActorType[3] = 0
	tActorType[4] = 0
	tActorType[5] = 0
	tActorType[6] = 0
	tActorType[7] = 0
	if #tActor ~= 0 then
		for i, v in pairs(tActor) do
			tActorType[tDecMovieAct_ActorType[v]] = tActorType[tDecMovieAct_ActorType[v]] + 1
		end
	end
	
	return tActorType
end

--该明星是否被签约
function DecMovieAct_ActorBuyed(nActor)
	local tActorNow = DecMovieAct_GetNowActor()
	for i, v in pairs(tActorNow) do
		if nActor == v then
			return true
		end
	end
	return false
	
end

--选择电影类型
function DecMovieAct_ChooseMovieType(nNpcId, nType)
	local nUserId = Get_UserId()
	
	--免费拍摄
	if (nType == 0) or (nType == 7) then
		local nFreeEvent = tDecMovieAct_Stc["FreeChance"]["Event"]
		local nFreeData = tDecMovieAct_Stc["FreeChance"]["Data"]
		if Get_UserStatisticValue(nFreeEvent, nFreeData, nUserId) == 1 then
			Sys_MsgBox(tDecMovieAct_Text[23589]["FreedMsgBox"][nType], "LinkNpcGossipFunc_New</N>" .. nNpcId .. "</S>1-4")
			return
		end
		
		local tBeforeActor = DecMovieAct_GetNowActor()
		if (#tBeforeActor == 0) then
			LinkNpcGossipFunc_New(nNpcId, "3-3")
			return
		end
		
		--设置为独立电影 取值 0 或 7
		DecMovieAct_SetMovieInfo(4, nType)
		--设置电影类型
		DecMovieAct_SetMovieInfo(2, math.random(1, 6))
		--设置电影状态为已设置类型
		DecMovieAct_SetMovieInfo(1, 2)
		
		
		
		--今日已使用免费制作
		Task_SetStatistic(nFreeEvent, nFreeData, 1, 1, nUserId)
		Task_SetStcTimestamp(nFreeEvent, nFreeData, 0, nUserId)
		--后续接演员列表处理
		LinkNpcGossipFunc_New(nNpcId, "3-6")
	--2~6
	elseif nType >= 1 and nType <= 6 then
		
		local tBeforeActor = DecMovieAct_GetNowActor()
		if (#tBeforeActor == 0) then
			LinkNpcGossipFunc_New(nNpcId, "3-3")
			return
		end
		
		local nNeedEMoney = tDecMovieAct_Cost["Type"][nType]
		local nUserEMoney = Get_UserEMoney() --玩家身上的天石
		--天石不足
		if nUserEMoney < nNeedEMoney then
			tNpcGossip[nNpcId]["Text321"] = string.format(tDecMovieAct_Text[nNpcId]["Text321"], nNeedEMoney)
			LinkNpcGossipFunc_New(nNpcId, "3-2")
			return
		end
		--屏蔽二次确认逻辑
		local nEvent = tDecMovieAct_Stc["IgnoreConfirm"][2]["Event"]
		local nData = tDecMovieAct_Stc["IgnoreConfirm"][2]["Data"]
		if Get_UserStatisticValue(nEvent, nData, nUserId) == 1 then
			DecMovieAct_SetType(nNpcId, nType)
			return
		end
		tNpcGossip[nNpcId]["Text391"] = string.format(tDecMovieAct_Text[nNpcId]["Text391"], nNeedEMoney, tDecMovieAct_Text["MovieType"][nType])
		tNpcGossip[nNpcId]["Option391"] = string.format(tDecMovieAct_Text[nNpcId]["Option391"], nNeedEMoney)
		tNpcGossip[nNpcId]["OptionFunc391"] = "DecMovieAct_SetType</N>" .. nNpcId .. "</N>" .. nType
		LinkNpcGossipFunc_New(nNpcId, "3-9")
	end
end

function DecMovieAct_SetType(nNpcId, nType)
	local nUserId = Get_UserId()
	
	if nType >= 1 and nType <= 6 then
		--设置为有成本的电影 取值 1
		DecMovieAct_SetMovieInfo(4, 1)
		
		local nNeedEMoney = tDecMovieAct_Cost["Type"][nType]
		local nUserEMoney = Get_UserEMoney() --玩家身上的天石
		--天石不足
		if nUserEMoney < nNeedEMoney then
			tNpcGossip[nNpcId]["Text321"] = string.format(tDecMovieAct_Text[nNpcId]["Text321"], nNeedEMoney)
			LinkNpcGossipFunc_New(nNpcId, "3-2")
			return
		end
		if User_AddEMoney(-nNeedEMoney, nUserId) then
			--设置电影类型 制作规模
			DecMovieAct_SetMovieInfo(2, nType)
			--设置电影状态为已设置类型
			DecMovieAct_SetMovieInfo(1, 2)
			--Emoney Log
			local sLog = string.format(tDecMovieAct_Log["Size"], nNeedEMoney, nNeedEMoney)
			Sys_SaveEmoneyBuy(sLog, nUserId)
			--后接演员列表对白
			LinkNpcGossipFunc_New(nNpcId, "3-6")
			return
		end
	end
	
	
end

--活动时间外使用电影票房换气力值
function DecMovieAct_TicketUse(nItemId, sItemName)
	local nUserId = Get_UserId()
	
	if not Sys_ChkFullTime(tActivityTime["DecMovieAct"]["ActivityTime"]) then
		local nItemNum = Get_CountItemType(nItemId, 0)
		if Item_ChkMulItem(nItemId, nItemId, nItemNum) and Item_DelMulItem(nItemId, nItemId, nItemNum) then
			local tReward = CommonFunc_Copy(tDecMovieAct_Reward[nItemId])
			local nStrength = nItemNum * 5
			tReward["RewardStrengthValue"]["Value"] = nStrength
			RewardTemplate_UseItemAndMsg(tReward, nUserId)
			User_TalkChannel2005(string.format(tDecMovieAct_Text["Talk"]["TicketStrength"], nStrength))
		end
	end
	
	
end

--获取演员名字符串 中间用顿号隔开
--nNum 需获取演员数量
function DecMovieAct_GetActorNameString(nNum)
	--已签约演员数
	local tActor = DecMovieAct_GetNowActor()
	local sActor = ""
	if #tActor ~= 0 then
		for i, v in pairs(tActor) do
			local sName = tDecMovieAct_Text["Actor"][v]
			if i < nNum and i < #tActor then
				sName = sName .. tDecMovieAct_Text["SmallText"]["Dot"]
			end
			if i >= nNum then
				sName = sName
				sActor = sActor .. sName .. tDecMovieAct_Text["SmallText"]["Etc"]
				break
			end
			sActor = sActor .. sName 
		end
	else
		sActor = tDecMovieAct_Text["SmallText"]["NoNameActor"]
	end
	return sActor
	
end
--获取旧演员名字符串 中间用顿号隔开
--nNum 需获取演员数量
function DecMovieAct_GetOldActorNameString(nNum)
	--已签约演员数
	local tActor = DecMovieAct_GetOldActor()
	local sActor = ""
	if #tActor ~= 0 then
		for i, v in pairs(tActor) do
			local sName = tDecMovieAct_Text["Actor"][v]
			if i < nNum and i < #tActor then
				sName = sName .. tDecMovieAct_Text["SmallText"]["Dot"]
			end
			if i >= nNum then
				sName = sName
				sActor = sActor .. sName 
				break
			end
			sActor = sActor .. sName
		end
	else
		sActor = tDecMovieAct_Text["SmallText"]["NoNameActor"]
	end
	return sActor
	
end
--获取演员花费
function DecMovieAct_GetActorCost()
	--已签约演员表
	local tActor = DecMovieAct_GetNowActor()
	
	local nActorCost = 0
	if #tActor ~= 0 then
		for i, v in pairs(tActor) do
			nActorCost = nActorCost + tDecMovieAct_ActorCost[v]
		end
	else
		nActorCost = 0
	end
	
	return nActorCost
	
end
--获取旧演员花费
function DecMovieAct_GetOldActorCost()
	--已签约演员表
	local tActor = DecMovieAct_GetOldActor()
	
	local nActorCost = 0
	if #tActor ~= 0 then
		for i, v in pairs(tActor) do
			nActorCost = nActorCost + tDecMovieAct_ActorCost[v]
		end
	else
		nActorCost = 0
	end
	
	return nActorCost
	
end

--与旧演员续约
function DecMovieAct_HireOldActor(nNpcId)
	--续约旧演员花费
	local nCost = DecMovieAct_GetOldActorCost()
	local nUserEMoney = Get_UserEMoney() --玩家身上的天石
	--天石不足
	if nUserEMoney < nCost then
		tNpcGossip[nNpcId]["Text321"] = string.format(tDecMovieAct_Text[nNpcId]["Text321"], nCost)
		LinkNpcGossipFunc_New(nNpcId, "3-2")
		return
	end
	
	--屏蔽二次确认逻辑
	local nEvent = tDecMovieAct_Stc["IgnoreConfirm"][3]["Event"]
	local nData = tDecMovieAct_Stc["IgnoreConfirm"][3]["Data"]
	if Get_UserStatisticValue(nEvent, nData, nUserId) == 1 then
		DecMovieAct_ConfirmHireOld(nNpcId)
		return
	end
	
	local sActor = DecMovieAct_GetOldActorNameString(5)
	tNpcGossip[nNpcId]["Text311"] = string.format(tDecMovieAct_Text[nNpcId]["Text311"], nCost, sActor)
	local nMin = math.floor(nCost*0.8)
	local nMax = math.floor(nCost*1.25)
	tNpcGossip[nNpcId]["Text312"] = string.format(tDecMovieAct_Text[nNpcId]["Text312"], nMin, nMax)
	tNpcGossip[nNpcId]["Option311"] = string.format(tDecMovieAct_Text[nNpcId]["Option311"], nCost)
	LinkNpcGossipFunc_New(nNpcId, "3-1")
	
end

--确认旧演员续约
function DecMovieAct_ConfirmHireOld(nNpcId)
	local nUserId = Get_UserId()
	
	local nCost = DecMovieAct_GetOldActorCost()
	local nUserEMoney = Get_UserEMoney() --玩家身上的天石
	--天石不足
	if nUserEMoney < nCost then
		tNpcGossip[nNpcId]["Text321"] = string.format(tDecMovieAct_Text[nNpcId]["Text321"], nCost)
		LinkNpcGossipFunc_New(nNpcId, "3-2")
		return
	end
	
	if User_AddEMoney(-nCost, nUserId) then
		--Emoney Log
		local sLog = string.format(tDecMovieAct_Log["Actor"], nCost, nCost)
		Sys_SaveEmoneyBuy(sLog, nUserId)
		
		for i = 1, 3 do
			local nOldEvent = tDecMovieAct_Stc["OldActor"][i]["Event"]
			local nOldData = tDecMovieAct_Stc["OldActor"][i]["Data"]
			
			local nEvent = tDecMovieAct_Stc["Actor"][i]["Event"]
			local nData = tDecMovieAct_Stc["Actor"][i]["Data"]
			
			local nValue = Get_UserStatisticValue(nOldEvent, nOldData, nUserId)
			
			Task_SetStatistic(nEvent, nData, nValue, 1, nUserId)
			Task_SetStatistic(nOldEvent, nOldData, 0, 1, nUserId)
		end
		
		LinkNpcGossipFunc_New(nNpcId, "3-3")
		
	end
	
end

--全服公告系统寻路
function DecMovieAct_BroadcastPathFind(nNpcId)

	local nUserId = Get_UserId()
	local nNpcMapId = Get_NpcMapID(nNpcId)
	local nNowMapId = Get_UserMapId()
	
	if nNowMapId == nNpcMapId then
		NpcPosition_PathFind(nNpcId)
	else
		local sNpcName = Get_NpcName(nNpcId)
		local nNpcPosX = Get_NpcPositionX(nNpcId)
		local nNpcPosY = Get_NpcPositionY(nNpcId)
		local sText = string.format(tDecMovieAct_Text["MsgBox"]["Normal"], sNpcName, nNpcPosX, nNpcPosY, tDecMovieAct_Text["MsgBox"][nNpcId])
		--激情服和非激情服寻路有区别
		if SpecialServer_ChkNoGiftServer() then
			Sys_MsgBox(sText)
		else
			Sys_MsgBox(sText)
		end
	end
	
end

--背包信选项 弹出网页
function DecMovieAct_BackpackLetterUse(nItemId)
	BackpackLetter_UseItem(nItemId)
	if Sys_ChkFullTime(tActivityTime["DecMovieAct"]["ActivityTime"]) then
		User_NoviceTeaching(1049)
	end
end

----------------------------------NPC部分---------------------------------------------

--杰克陈 23587
tNpcFace[6248] = 1707
tNpcGossip[23587] = tNpcGossip[23587] or DefaultNpc:new{}
tNpcGossip[23587]["OptionHidden"] = 1
tNpcGossip[23587]["DialogueText"] = tDecMovieAct_Text[23587]
--活动前 1-1
tNpcGossip[23587]["Text1-1"] = {111, 112, 113, 114}
tNpcGossip[23587]["tOption1-1"] = {111}
tNpcGossip[23587]["ChkFunc1-1"] = function()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["DecMovieAct"]["ActivityTime"])
end
--活动后 1-2
tNpcGossip[23587]["Text1-2"] = {111, 121}
tNpcGossip[23587]["tOption1-2"] = {121}
tNpcGossip[23587]["ChkFunc1-2"] = function()
	return not Sys_ChkFullTime(tActivityTime["DecMovieAct"]["ActivityTime"])
end
--活动中等级不足 1-3
tNpcGossip[23587]["Text1-3"] = {111, 131, 132, 133, 134, 135, 136}
tNpcGossip[23587]["tOption1-3"] = {131}
tNpcGossip[23587]["ChkFunc1-3"] = function()
	local nLevel = tDecMovieAct_Data["Level"]
	local nMete = tDecMovieAct_Data["Mete"]
	return Sys_ChkFullTime(tActivityTime["DecMovieAct"]["ActivityTime"]) and (not User_JudgeLevelAndMetempsychosis(nLevel, nMete))
end
--活动中等级满足 1-4
tNpcGossip[23587]["Text1-4"] = {111, 131, 132, 133, 134, 135, 136}
tNpcGossip[23587]["tOption1-4"] = {141, 142, 145, 143}
tNpcGossip[23587]["OptionPoint141"] = "2-1"--接总排行榜
tNpcGossip[23587]["OptionPoint142"] = "2-2"--接日排行榜
tNpcGossip[23587]["OptionPoint144"] = "3-3"--查看影评
tNpcGossip[23587]["OptionPoint145"] = "3-5"--拍摄好礼
tNpcGossip[23587]["OptionFunc143"] = "User_NoviceTeaching</N>1048"
tNpcGossip[23587]["ChkFunc1-4"] = function()
	local nLevel = tDecMovieAct_Data["Level"]
	local nMete = tDecMovieAct_Data["Mete"]
	
	return Sys_ChkFullTime(tActivityTime["DecMovieAct"]["ActivityTime"]) and User_JudgeLevelAndMetempsychosis(nLevel, nMete)
end
--电影票房榜 2-1
tNpcGossip[23587]["Text2-1"] = {211, 212, 213, 214, 2117, 215, 216, 217, 218, 219, 2110, 2111, 2112, 2113, 2114, 2115}
tNpcGossip[23587]["tOption2-1"] = {211}
tNpcGossip[23587]["OptionPoint211"] = "1-4"--
tNpcGossip[23587]["ChkFunc2-1"] = function()
	local tTotalRank = RankingFunc_GetNowData(23588)
	if #tTotalRank ~= 0 then
		for i = 1, 10 do
			if tTotalRank[i] ~= nil then
				local sText = Sys_Alignment(tostring(tTotalRank[i]["Score"]), 0, tTotalRank[i]["UserName"], 34)
				tNpcGossip[23587]["Text21" .. (i + 3)] = string.format(tDecMovieAct_Text[23587]["Text21" .. (i + 3)], sText)
			else
				
				tNpcGossip[23587]["Text21" .. (i + 3)] = string.format(tDecMovieAct_Text[23587]["Text21" .. (i + 3)], tDecMovieAct_Text[23587]["Text2116"])
			end
		end
	else
		for i = 1, 10 do
			
			tNpcGossip[23587]["Text21" .. (i + 3)] = string.format(tDecMovieAct_Text[23587]["Text21" .. (i + 3)], tDecMovieAct_Text[23587]["Text2116"])
			
		end
	end
	
	local nTotalEvent = tDecMovieAct_Stc["TicketTotal"]["Event"]
	local nTotalData = tDecMovieAct_Stc["TicketTotal"]["Data"]
	local nTotalTicket = Get_UserStatisticValue(nTotalEvent, nTotalData, nUserId)
	
	tNpcGossip[23587]["Text2115"] = string.format(tDecMovieAct_Text[23587]["Text2115"], nTotalTicket)
	
	return true
end
--今日十佳电影 2-2
tNpcGossip[23587]["Text2-2"] = {221, 222, 223, 224, 225, 226, 227, 228, 229, 2210, 2211, 2212, 2213, 2214}
tNpcGossip[23587]["tOption2-2"] = {221}
tNpcGossip[23587]["OptionPoint221"] = "1-4"
tNpcGossip[23587]["ChkFunc2-2"] = function()
	local tTotalRank = RankingFunc_GetNowData(23587)
	if #tTotalRank ~= 0 then
		for i = 1, 10 do
			if tTotalRank[i] ~= nil then
				local sMovieName = ""
				if tDecMovieAct_MovieName[tTotalRank[i]["UserId"]] ~= nil then
					sMovieName = tDecMovieAct_MovieName[tTotalRank[i]["UserId"]]["BestToday"] or tDecMovieAct_Text["SmallText"]["DefaultMovieName"]
				else
					sMovieName = tDecMovieAct_Text["SmallText"]["DefaultMovieName"]
				end
				local sText = Sys_Alignment(tTotalRank[i]["UserName"], 0, sMovieName, 26, tostring(tTotalRank[i]["Score"]), 46)
				tNpcGossip[23587]["Text22" .. (i + 3)] = string.format(tDecMovieAct_Text[23587]["Text22" .. (i + 3)], sText)
			else
				
				tNpcGossip[23587]["Text22" .. (i + 3)] = string.format(tDecMovieAct_Text[23587]["Text22" .. (i + 3)], tDecMovieAct_Text[23587]["Text2216"])
			end
		end
	else
		for i = 1, 10 do
			
			tNpcGossip[23587]["Text22" .. (i + 3)] = string.format(tDecMovieAct_Text[23587]["Text22" .. (i + 3)], tDecMovieAct_Text[23587]["Text2216"])
			
		end
	end
	return true
	
end

--拍摄好礼 3-5
tNpcGossip[23587]["Text3-5"] = {351, 352, 353, 354, 355, 356, 357, 358, 359, 3510, 3511}
tNpcGossip[23587]["tOption3-5"] = {351}
tNpcGossip[23587]["OptionPoint351"] = "1-4"
tNpcGossip[23587]["ChkFunc3-5"] = function()
	local nEvent = tDecMovieAct_Stc["Movie"]["Num"]["Event"]
	local nData = tDecMovieAct_Stc["Movie"]["Num"]["Data"]
	local nUserId = Get_UserId()
	
	local nNum = Get_UserStatisticValue(nEvent, nData, nUserId)
	
	for i = 1, 6 do
		if nNum >= tDecMovieAct_Status[i] then
			tNpcGossip[23587]["Text35" .. i+3] = tDecMovieAct_Text[23587]["Text35" .. i+3] .. tDecMovieAct_Text[23587]["Text3512"] .. "\n"
		else
			tNpcGossip[23587]["Text35" .. i+3] = tDecMovieAct_Text[23587]["Text35" .. i+3] .. "\n"
		end
		
	end
	return true
end

--签约明星宋吉吉 23588
tNpcFace[6249] = 1371
tNpcGossip[23588] = tNpcGossip[23588] or DefaultNpc:new{}
tNpcGossip[23588]["OptionHidden"] = 1
tNpcGossip[23588]["DialogueText"] = tDecMovieAct_Text[23588]
--活动前 1-1
tNpcGossip[23588]["Text1-1"] = {111, 112, 113, 114}
tNpcGossip[23588]["tOption1-1"] = {111}
tNpcGossip[23588]["ChkFunc1-1"] = function()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["DecMovieAct"]["ActivityTime"])
end
--活动后 1-2
tNpcGossip[23588]["Text1-2"] = {111, 121}
tNpcGossip[23588]["tOption1-2"] = {121}
tNpcGossip[23588]["ChkFunc1-2"] = function()
	return not Sys_ChkFullTime(tActivityTime["DecMovieAct"]["ActivityTime"])
end
--活动中等级不足 1-3
tNpcGossip[23588]["Text1-3"] = {111, 131, 132, 133, 134}
tNpcGossip[23588]["tOption1-3"] = {131}
tNpcGossip[23588]["ChkFunc1-3"] = function()
	local nLevel = tDecMovieAct_Data["Level"]
	local nMete = tDecMovieAct_Data["Mete"]
	return Sys_ChkFullTime(tActivityTime["DecMovieAct"]["ActivityTime"]) and (not User_JudgeLevelAndMetempsychosis(nLevel, nMete))
end
--活动中等级满足 1-4
tNpcGossip[23588]["Text1-4"] = {111, 141, 142, 143}
tNpcGossip[23588]["tOption1-4"] = {143, 142, 141, 146} 
tNpcGossip[23588]["OptionFunc141"] = "DecMovieAct_RandomActor</N>23588</N>1"--大牌明星
tNpcGossip[23588]["OptionFunc142"] = "DecMovieAct_RandomActor</N>23588</N>2"--普通明星
tNpcGossip[23588]["OptionFunc143"] = "DecMovieAct_RandomActorConfirm</N>23588</N>3"--免费签演员
tNpcGossip[23588]["OptionFunc146"] = "DecMovieAct_HireOldActor</N>23588"
tNpcGossip[23588]["ChkFunc1-4"] = function()
	local nLevel = tDecMovieAct_Data["Level"]
	local nMete = tDecMovieAct_Data["Mete"]
	local nUserId = Get_UserId()
	--每日免费演员选项
	local nEvent = tDecMovieAct_Stc["ActorFreeChance"]["Event"]
	local nData = tDecMovieAct_Stc["ActorFreeChance"]["Data"]
	if Task_StcInterval(nEvent, nData, 1, 4, nUserId) then
		Task_SetStatistic(nEvent, nData, 0, 1, nUserId)
	end
	if Get_UserStatisticValue(nEvent, nData, nUserId) == 1 then
		tNpcGossip[23588]["Option143"] = string.format(tDecMovieAct_Text[23588]["Option143"], tDecMovieAct_Text[23588]["Option145"])
	else
		tNpcGossip[23588]["Option143"] = string.format(tDecMovieAct_Text[23588]["Option143"], tDecMovieAct_Text[23588]["Option144"])
	end
	
	--续约演员选项
	local tActor = DecMovieAct_GetNowActor()
	local tOldActor = DecMovieAct_GetOldActor()
	if #tActor == 0 and #tOldActor ~= 0 then
		tNpcGossip[23588]["tOption1-4"] = {143, 142, 141, 146}
		--显示续约演员应给多少天石
		local nOldActor = DecMovieAct_GetOldActorCost()
		tNpcGossip[23588]["Option146"] = string.format(tDecMovieAct_Text[23588]["Option146"], nOldActor)
	else
		--已有签约演员不显示续约选项
		tNpcGossip[23588]["tOption1-4"] = {143, 142, 141}
	end
	
	
	return Sys_ChkFullTime(tActivityTime["DecMovieAct"]["ActivityTime"]) and (User_JudgeLevelAndMetempsychosis(nLevel, nMete))
end
--天石不足提示 2-5
tNpcGossip[23588]["Text2-5"] = {251}
tNpcGossip[23588]["tOption2-5"] = {251}
--签约确认 2-6
tNpcGossip[23588]["Text2-6"] = {261}
tNpcGossip[23588]["tOption2-6"] = {261, 262, 263}
tNpcGossip[23588]["OptionFunc261"] = "NULL"
tNpcGossip[23588]["OptionFunc262"] = "DecMovieAct_IgnoreSecondConfirm</N>23588</N>1"--屏蔽二次确认
tNpcGossip[23588]["OptionPoint263"] = "1-4"
--成功签约 2-7
tNpcGossip[23588]["Text2-7"] = {271, 272, 273, 274, 275, 276, 277, 278, 279, 2710, 2711}
tNpcGossip[23588]["tOption2-7"] = {143, 142, 141, 146}
tNpcGossip[23588]["ChkFunc2-7"] = function()
	local nUserId = Get_UserId()
	--免费签演员选项
	local nEvent = tDecMovieAct_Stc["ActorFreeChance"]["Event"] 
	local nData = tDecMovieAct_Stc["ActorFreeChance"]["Data"]
	if Task_StcInterval(nEvent, nData, 1, 4, nUserId) then
		Task_SetStatistic(nEvent, nData, 0, 1, nUserId)
	end
	if Get_UserStatisticValue(nEvent, nData, nUserId) == 1 then
		tNpcGossip[23588]["Option143"] = string.format(tDecMovieAct_Text[23588]["Option143"], tDecMovieAct_Text[23588]["Option145"])
	else
		tNpcGossip[23588]["Option143"] = string.format(tDecMovieAct_Text[23588]["Option143"], tDecMovieAct_Text[23588]["Option144"])
	end
	
	--续约演员选项
	local tActor = DecMovieAct_GetNowActor()
	local tOldActor = DecMovieAct_GetOldActor()
	if #tActor == 0 and #tOldActor ~= 0 then
		tNpcGossip[23588]["tOption2-7"] = {143, 142, 141, 146}
		--显示续约演员应给多少天石
		local nOldActor = DecMovieAct_GetOldActorCost()
		tNpcGossip[23588]["Option146"] = string.format(tDecMovieAct_Text[23588]["Option146"], nOldActor)
	else
		--已有签约演员不显示续约选项
		tNpcGossip[23588]["tOption2-7"] = {143, 142, 141}
	end
	
	return Sys_ChkFullTime(tActivityTime["DecMovieAct"]["ActivityTime"])
end
--演员续约二次确认 3-1
tNpcGossip[23588]["Text3-1"] = {311, 312}
tNpcGossip[23588]["tOption3-1"] = {311, 313}
tNpcGossip[23588]["OptionFunc311"] = "DecMovieAct_ConfirmHireOld</N>23588"
tNpcGossip[23588]["OptionFunc312"] = "DecMovieAct_IgnoreSecondConfirm</N>23588</N>3"
--续签演员天石不足 3-2
tNpcGossip[23588]["Text3-2"] = {321}
tNpcGossip[23588]["tOption3-2"] = {321}
--演员续约成功 3-3
tNpcGossip[23588]["Text3-3"] = {331, 272, 332, 274, 275, 276, 277, 278, 279, 2710, 2711}
tNpcGossip[23588]["tOption3-3"] = {143, 142, 141, 146}
tNpcGossip[23588]["ChkFunc3-3"] = function()
	local nUserId = Get_UserId()
	--免费签演员选项
	local nEvent = tDecMovieAct_Stc["ActorFreeChance"]["Event"] 
	local nData = tDecMovieAct_Stc["ActorFreeChance"]["Data"]
	if Task_StcInterval(nEvent, nData, 1, 4, nUserId) then
		Task_SetStatistic(nEvent, nData, 0, 1, nUserId)
	end
	if Get_UserStatisticValue(nEvent, nData, nUserId) == 1 then
		tNpcGossip[23588]["Option143"] = string.format(tDecMovieAct_Text[23588]["Option143"], tDecMovieAct_Text[23588]["Option145"])
	else
		tNpcGossip[23588]["Option143"] = string.format(tDecMovieAct_Text[23588]["Option143"], tDecMovieAct_Text[23588]["Option144"])
	end
	
	--续约演员选项
	local tActor = DecMovieAct_GetNowActor()
	local tOldActor = DecMovieAct_GetOldActor()
	if #tActor == 0 and #tOldActor ~= 0 then
		tNpcGossip[23588]["tOption3-3"] = {143, 142, 141, 146}
		--显示续约演员应给多少天石
		local nOldActor = DecMovieAct_GetOldActorCost()
		tNpcGossip[23588]["Option146"] = string.format(tDecMovieAct_Text[23588]["Option146"], nOldActor)
	else
		--已有签约演员不显示续约选项
		tNpcGossip[23588]["tOption3-3"] = {143, 142, 141}
	end
	
	--提示续约演员
	local sActor = DecMovieAct_GetActorNameString(3)
	tNpcGossip[23588]["Text332"] = string.format(tDecMovieAct_Text[23588]["Text332"], sActor)
	--演员类别显示
	local tActorType = DecMovieAct_CountActorType()
	if tActorType ~= 0 then
		for i = 1, 7 do
			j = i + 4
			if tActorType[i] ~= 0 then
				local sNum = tostring(tActorType[i]) .. tDecMovieAct_Text["ActorType"][0]
				tNpcGossip[23588]["Text27" .. j] = string.format(tDecMovieAct_Text[23588]["Text27" .. j], sNum)
			else
				tNpcGossip[23588]["Text27" .. j] = string.format(tDecMovieAct_Text[23588]["Text27" .. j], tDecMovieAct_Text["ActorType"][8])
			end
			
		end
	end
	
	return Sys_ChkFullTime(tActivityTime["DecMovieAct"]["ActivityTime"])
end

--制片人王京 23589
tNpcFace[6250] = 1708
tNpcGossip[23589] = tNpcGossip[23589] or DefaultNpc:new{}
tNpcGossip[23589]["OptionHidden"] = 1
tNpcGossip[23589]["DialogueText"] = tDecMovieAct_Text[23589]
--活动前 1-1
tNpcGossip[23589]["Text1-1"] = {111, 112, 113, 114}
tNpcGossip[23589]["tOption1-1"] = {111}
tNpcGossip[23589]["ChkFunc1-1"] = function()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["DecMovieAct"]["ActivityTime"])
end
--活动后 1-2
tNpcGossip[23589]["Text1-2"] = {111, 121}
tNpcGossip[23589]["tOption1-2"] = {121}
tNpcGossip[23589]["ChkFunc1-2"] = function()
	return not Sys_ChkFullTime(tActivityTime["DecMovieAct"]["ActivityTime"])
end
--活动中等级不足 1-3
tNpcGossip[23589]["Text1-3"] = {111, 131, 132, 133, 134, 135}
tNpcGossip[23589]["tOption1-3"] = {131}
tNpcGossip[23589]["ChkFunc1-3"] = function()
	local nLevel = tDecMovieAct_Data["Level"]
	local nMete = tDecMovieAct_Data["Mete"]
	
	return Sys_ChkFullTime(tActivityTime["DecMovieAct"]["ActivityTime"]) and (not User_JudgeLevelAndMetempsychosis(nLevel, nMete)) 
end
--活动中等级达到 1-4
tNpcGossip[23589]["Text1-4"] = {111, 131, 132, 133, 134}
tNpcGossip[23589]["tOption1-4"] = {141, 142, 143, 144, 145, 146, 147, 148, 1410}
tNpcGossip[23589]["OptionFunc141"] = "DecMovieAct_ChooseMovieType</N>23589</N>0"--独立电影（每日免费1次）"
tNpcGossip[23589]["OptionFunc142"] = "DecMovieAct_ChooseMovieType</N>23589</N>1"--喜剧片（99天石）"
tNpcGossip[23589]["OptionFunc143"] = "DecMovieAct_ChooseMovieType</N>23589</N>2"--爱情片（99天石）"
tNpcGossip[23589]["OptionFunc144"] = "DecMovieAct_ChooseMovieType</N>23589</N>3"--动作片（199天石）"
tNpcGossip[23589]["OptionFunc145"] = "DecMovieAct_ChooseMovieType</N>23589</N>4"--悬疑片（199天石）"
tNpcGossip[23589]["OptionFunc146"] = "DecMovieAct_ChooseMovieType</N>23589</N>5"--战争片（999天石）"
tNpcGossip[23589]["OptionFunc147"] = "DecMovieAct_ChooseMovieType</N>23589</N>6"--科幻片（999天石）"
tNpcGossip[23589]["OptionFunc1410"] = "DecMovieAct_ChooseMovieType</N>23589</N>7"--文艺片（0天石）"
tNpcGossip[23589]["ChkFunc1-4"] = function()
	local nLevel = tDecMovieAct_Data["Level"]
	local nMete = tDecMovieAct_Data["Mete"]
	local nUserId = Get_UserId()
	local nStatus, nType, nSercetary, nSize, nContent, nWater, nTicket, nSale = DecMovieAct_ChkNowMovie()
	
	
	
	--免费拍片选项
	local nEvent = tDecMovieAct_Stc["FreeChance"]["Event"]
	local nData = tDecMovieAct_Stc["FreeChance"]["Data"]
	if Task_StcInterval(nEvent, nData, 1, 4, nUserId) then
		Task_SetStatistic(nEvent, nData, 0, 1, nUserId)
	end
	if Get_UserStatisticValue(nEvent, nData, nUserId) == 1 then
		tNpcGossip[23589]["Option141"] = string.format(tDecMovieAct_Text[23589]["Option141"], tDecMovieAct_Text[23589]["Option149"])
		tNpcGossip[23589]["Option1410"] = string.format(tDecMovieAct_Text[23589]["Option1410"], tDecMovieAct_Text[23589]["Option149"])
	else
		tNpcGossip[23589]["Option141"] = string.format(tDecMovieAct_Text[23589]["Option141"], tDecMovieAct_Text[23589]["Option148"])
		tNpcGossip[23589]["Option1410"] = string.format(tDecMovieAct_Text[23589]["Option1410"], tDecMovieAct_Text[23589]["Option148"])
	end
	
	--没有电影信息
	if (nStatus == 1) then
		tNpcGossip[23589]["Text1-4"] = {111, 131, 132, 133, 134}
		tNpcGossip[23589]["tOption1-4"] = {141, 1410, 142, 143, 144, 145, 146, 147}
	--已选择电影类型 应接3-6
	elseif nStatus == 2 then
	
		tNpcGossip[23589]["Text1-4"] = {361, 362, 363, 365, 364, 366, 367, 368}
		tNpcGossip[23589]["tOption1-4"] = {361, 363}
	
		local nStatus, nType, nSercetary, nSize, nContent, nWater, nTicket, nSale = DecMovieAct_ChkNowMovie()
		
		local nLevel = tDecMovieAct_Data["Level"]
		local nMete = tDecMovieAct_Data["Mete"]
		local nUserId = Get_UserId()
		local sUserName = Get_UserName(nUserId)
		
		local tActor = DecMovieAct_GetNowActor()
		--对白初始化
		tNpcGossip[23589]["Text363"] = string.format(tDecMovieAct_Text[23589]["Text363"], sUserName)
		--获取演员名 后接 “等领衔主演”
		local sActor = DecMovieAct_GetActorNameString(3)
		if #tActor > 3 then
			sActor = sActor .. tDecMovieAct_Text[23589]["Text369"]
		end
		tNpcGossip[23589]["Text364"] = string.format(tDecMovieAct_Text[23589]["Text364"], sActor)
		if (nSzie == 1) then
			tNpcGossip[23589]["Text365"] = string.format(tDecMovieAct_Text[23589]["Text365"], tDecMovieAct_Text["MovieType"][nType])
		else
			tNpcGossip[23589]["Text365"] = string.format(tDecMovieAct_Text[23589]["Text365"], tDecMovieAct_Text["MovieType"][nSize])
		end
		--票房估算显示
		local nTotalCost = DecMovieAct_MovieCost()
		local nMinTicket = math.floor(nTotalCost*0.8)
		local nMaxTicket = math.floor(nTotalCost*1.25)
		tNpcGossip[23589]["Text366"] = string.format(tDecMovieAct_Text[23589]["Text366"], nMinTicket, nMaxTicket)
		
	end
		
	
	return Sys_ChkFullTime(tActivityTime["DecMovieAct"]["ActivityTime"]) and (User_JudgeLevelAndMetempsychosis(nLevel, nMete)) 
end
--天石不足 2-3
tNpcGossip[23589]["Text2-3"] = {231}
tNpcGossip[23589]["tOption2-3"] = {231}
--天石足够 二次确认 2-4
tNpcGossip[23589]["Text2-4"] = {241}
tNpcGossip[23589]["tOption2-4"] = {241, 242}
-- 2-5 结算界面
tNpcGossip[23589]["Text2-5"] = {251, 252, 253, 254, 256, 255, 257, 258, 259, 2510}
tNpcGossip[23589]["tOption2-5"] = {251}
tNpcGossip[23589]["ChkFunc2-5"] = function()
	local nUserId = Get_UserId()
	local sUserName = Get_UserName(nUserId)
	local nNumEvent = tDecMovieAct_Stc["Movie"]["Num"]["Event"]
	local nNumData = tDecMovieAct_Stc["Movie"]["Num"]["Data"]
	local nTicketEvent = tDecMovieAct_Stc["MovieTicket"]["Now"]["Event"]
	local nTicketData = tDecMovieAct_Stc["MovieTicket"]["Now"]["Data"]
	local nNum = Get_UserStatisticValue(nNumEvent, nNumData, nUserId)
	local tActor = DecMovieAct_GetNowActor()
	local nStatus, nType, nSercetary, nSize, nContent, nWater, nTicket, nSale = DecMovieAct_ChkNowMovie()
	--结算
	local MovieName = tDecMovieAct_MovieName[nUserId]["Now"] or tDecMovieAct_Text["SmallText"]["DefaultMovieName"]
	tNpcGossip[23589]["Text253"] = string.format(tDecMovieAct_Text[23589]["Text253"], MovieName)
	tNpcGossip[23589]["Text254"] = string.format(tDecMovieAct_Text[23589]["Text254"], sUserName)
	local sActor = DecMovieAct_GetActorNameString(3)
	if #tActor > 3 then
		sActor = sActor .. tDecMovieAct_Text[23589]["Text369"]
	end
	tNpcGossip[23589]["Text255"] = string.format(tDecMovieAct_Text[23589]["Text255"], sActor)
	if (nSize == 1) then
		tNpcGossip[23589]["Text256"] = string.format(tDecMovieAct_Text[23589]["Text256"], tDecMovieAct_Text["MovieType"][nType])
	else
		tNpcGossip[23589]["Text256"] = string.format(tDecMovieAct_Text[23589]["Text256"], tDecMovieAct_Text["MovieType"][nSize])
	end
	
	tNpcGossip[23589]["Text257"] = string.format(tDecMovieAct_Text[23589]["Text257"], Get_UserStatisticValue(nTicketEvent, nTicketData, nUserId))
	tNpcGossip[23589]["Text258"] = string.format(tDecMovieAct_Text[23589]["Text258"], tDecMovieAct_Text["Content"][nType][nContent])
	tNpcGossip[23589]["Text2510"] = string.format(tDecMovieAct_Text[23589]["Text2510"], nTicket)
	
	return true
	
end
--背包空间不足 2-6
tNpcGossip[23589]["Text2-6"] = {261}
tNpcGossip[23589]["tOption2-6"] = {261}
--天石不足 3-2
tNpcGossip[23589]["Text3-2"] = {321}
tNpcGossip[23589]["tOption3-2"] = {321}
--没有明星时不允许拍摄 3-3
tNpcGossip[23589]["Text3-3"] = {111, 331}
tNpcGossip[23589]["tOption3-3"] = {331}
tNpcGossip[23589]["OptionFunc331"] = "NpcPosition_PathFind</N>23588"
--拍摄二次确认 3-4
tNpcGossip[23589]["Text3-4"] = {341}
tNpcGossip[23589]["tOption3-4"] = {341, 342}
tNpcGossip[23589]["OptionFunc341"] = ""
--拍摄完成 3-5
tNpcGossip[23589]["Text3-5"] = {351}
tNpcGossip[23589]["tOption3-5"] = {351}
tNpcGossip[23589]["OptionFunc351"] = "NpcPosition_PathFind</N>23590"
--显示电影信息 3-6
tNpcGossip[23589]["Text3-6"] = {361, 362, 363, 365, 364, 366, 367, 368}
tNpcGossip[23589]["tOption3-6"] = {361, 363}
tNpcGossip[23589]["OptionFunc361"] = "DecMovieAct_SetName</N>23589"
tNpcGossip[23589]["OptionFunc362"] = "DecMovieAct_HireOldActor</N>23589"--续约演员
tNpcGossip[23589]["ChkFunc3-6"] = function()
	local nStatus, nType, nSercetary, nSize, nContent, nWater, nTicket, nSale = DecMovieAct_ChkNowMovie()
	--判断电影状态  无电影则返回首层对白
	if nStatus == 1 then
		tNpcGossip[23589]["Text3-6"] = {111, 131, 132, 133, 134}
		tNpcGossip[23589]["tOption3-6"] = {141, 142, 143, 144, 145, 146, 147}
		return Sys_ChkFullTime(tActivityTime["DecMovieAct"]["ActivityTime"]) and (User_JudgeLevelAndMetempsychosis(nLevel, nMete))
	else
		tNpcGossip[23589]["Text3-6"] = {361, 362, 363, 365, 364, 366, 367, 368}
		tNpcGossip[23589]["tOption3-6"] = {361, 363}
	end
	
	local nLevel = tDecMovieAct_Data["Level"]
	local nMete = tDecMovieAct_Data["Mete"]
	local nUserId = Get_UserId()
	local sUserName = Get_UserName(nUserId)
	local tActor = DecMovieAct_GetNowActor()
	--对白初始化
	tNpcGossip[23589]["Text363"] = string.format(tDecMovieAct_Text[23589]["Text363"], sUserName)
	--获取演员名 后接 “等领衔主演”
	local sActor = DecMovieAct_GetActorNameString(3)
	if #tActor > 3 then
		sActor = sActor .. tDecMovieAct_Text[23589]["Text369"]
	end
	tNpcGossip[23589]["Text364"] = string.format(tDecMovieAct_Text[23589]["Text364"], sActor)
	if (nSize == 1) then
		tNpcGossip[23589]["Text365"] = string.format(tDecMovieAct_Text[23589]["Text365"], tDecMovieAct_Text["MovieType"][nType])
	else
		tNpcGossip[23589]["Text365"] = string.format(tDecMovieAct_Text[23589]["Text365"], tDecMovieAct_Text["MovieType"][nSize])
	end
	--票房估算显示
	local nTotalCost = DecMovieAct_MovieCost()
	local nMinTicket = math.floor(nTotalCost*0.8)
	local nMaxTicket = math.floor(nTotalCost*1.25)
	tNpcGossip[23589]["Text366"] = string.format(tDecMovieAct_Text[23589]["Text366"], nMinTicket, nMaxTicket)
	
	return Sys_ChkFullTime(tActivityTime["DecMovieAct"]["ActivityTime"]) and (User_JudgeLevelAndMetempsychosis(nLevel, nMete))
end
--起名字 3-7
tNpcGossip[23589]["Text3-7"] = {111, 371}
tNpcGossip[23589]["tOption3-7"] = {371}
tNpcGossip[23589]["OptionFunc371"] = "DecMovieAct_SercetarySetName</N>23589"
--成本二次确认 3-9
tNpcGossip[23589]["Text3-9"] = {391}
tNpcGossip[23589]["tOption3-9"] = {391, 392, 393}
tNpcGossip[23589]["OptionPoint393"] = "1-4"
tNpcGossip[23589]["OptionFunc392"] = "DecMovieAct_IgnoreSecondConfirm</N>23589</N>2"
--演员续约二次确认 4-1
tNpcGossip[23589]["Text4-1"] = {411}
tNpcGossip[23589]["tOption4-1"] = {411, 412, 413}
tNpcGossip[23589]["OptionFunc411"] = "DecMovieAct_ConfirmHireOld</N>23589"
tNpcGossip[23589]["OptionFunc412"] = "DecMovieAct_IgnoreSecondConfirm</N>23589</N>3"
--续签演员天石不足 4-2
tNpcGossip[23589]["Text4-2"] = {421}
tNpcGossip[23589]["tOption4-2"] = {421}

-- --展示NPC2 23590
--今日十佳电影 1-1
-- tNpcFace[6252] = 1710
tNpcGossip[23590] = tNpcGossip[23590] or DefaultNpc:new{}
tNpcGossip[23590]["OptionHidden"] = 1
tNpcGossip[23590]["DialogueText"] = tDecMovieAct_Text[23590]
tNpcGossip[23590]["Text1-1"] = {221, 222, 223, 224, 225, 226, 227, 228, 229, 2210, 2211, 2212, 2213, 2214}
tNpcGossip[23590]["tOption1-1"] = {221}
tNpcGossip[23590]["ChkFunc1-1"] = function()
	local tTotalRank = RankingFunc_GetNowData(23587)
	if #tTotalRank ~= 0 then
		for i = 1, 10 do
			if tTotalRank[i] ~= nil then
				local sMovieName = ""
				if tDecMovieAct_MovieName[tTotalRank[i]["UserId"]] ~= nil then
					sMovieName = tDecMovieAct_MovieName[tTotalRank[i]["UserId"]]["BestToday"] or tDecMovieAct_Text["SmallText"]["DefaultMovieName"]
				else
					sMovieName = tDecMovieAct_Text["SmallText"]["DefaultMovieName"]
				end
				local sText = Sys_Alignment(tTotalRank[i]["UserName"], 0, sMovieName, 26, tostring(tTotalRank[i]["Score"]), 46)
				tNpcGossip[23590]["Text22" .. (i + 3)] = string.format(tDecMovieAct_Text[23590]["Text22" .. (i + 3)], sText)
			else
				
				tNpcGossip[23590]["Text22" .. (i + 3)] = string.format(tDecMovieAct_Text[23590]["Text22" .. (i + 3)], tDecMovieAct_Text[23590]["Text2216"])
			end
		end
	else
		for i = 1, 10 do
			
			tNpcGossip[23590]["Text22" .. (i + 3)] = string.format(tDecMovieAct_Text[23590]["Text22" .. (i + 3)], tDecMovieAct_Text[23590]["Text2216"])
			
		end
	end
	return true
	
end

-- --展示NPC 23590
--今日十佳电影 1-1
-- tNpcFace[6252] = 1710
tNpcGossip[23591] = tNpcGossip[23590]







---------------------------------物品部分---------------------------------------------
tItem[3311819] = tItem[3311819] or {}
tItem[3311819]["Function"] = function(nItemId,sItemName)
	if Sys_ChkFullTime(tActivityTime["DecMovieAct"]["ActivityTime"]) then
		NpcPosition_PathFind(23592)
	else
		DecMovieAct_TicketUse(nItemId, sItemName)
	end
end

tItemFace[3311823] = 1715
tItem[3311823] = tItem[3311823] or {}
tItem[3311823]["DialogueText"] = tDecMovieAct_Text[3311823]
tItem[3311823]["Text1-1"] = {111, 112, 113, 114}
tItem[3311823]["tOption1-1"] = {111}

--背包信弹出网页
tItem[3311822]["OptionFunc1"] = "DecMovieAct_BackpackLetterUse</N>3311822"


---------------------------------触发函数---------------------------------------------
-- table.insert(tSystem_PlayLogin_Func, DecMovieAct_LoginCheck)
