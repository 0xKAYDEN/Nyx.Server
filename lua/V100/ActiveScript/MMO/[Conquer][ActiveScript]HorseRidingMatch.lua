------------------------------------------------------------------------------------
--Name:		[征服][任务脚本]跨服骑马大赛 - 竞速赛
--Purpose:	跨服骑马大赛
--Creator: 	陈彦宏
--Created:	2016/11/11
------------------------------------------------------------------------------------

-- 命名前缀
-- HorseRidingMatch_

-- 活动log
-- 12000553

----------------------------------参数表---------------------------------------------
-- 常量表
local tHorseRidingMatch_Constant = {}
	tHorseRidingMatch_Constant["ActivityWeed"] = "1 00:00 5 23:59"
	-- 夺宝判断
	tHorseRidingMatch_Constant["ActivityData"] = {}
	tHorseRidingMatch_Constant["ActivityData"][1] = "2 00:00 2 23:59"
	tHorseRidingMatch_Constant["ActivityData"][2] = "4 00:00 4 23:59"
	-- 竞速
	tHorseRidingMatch_Constant["ActivityData2"] = {}
	tHorseRidingMatch_Constant["ActivityData2"][1] = "1 00:00 1 23:59"
	tHorseRidingMatch_Constant["ActivityData2"][2] = "3 00:00 3 23:59"
	tHorseRidingMatch_Constant["ActivityData2"][3] = "5 00:00 5 23:59"
	
	-- 每天类型
	tHorseRidingMatch_Constant["ActivityType"] = {}
	-- 1竞速 2夺宝
	tHorseRidingMatch_Constant["ActivityType"][1] = 1
	tHorseRidingMatch_Constant["ActivityType"][2] = 2
	tHorseRidingMatch_Constant["ActivityType"][3] = 1
	tHorseRidingMatch_Constant["ActivityType"][4] = 2
	tHorseRidingMatch_Constant["ActivityType"][5] = 1
	
	-- 夺宝持续
	tHorseRidingMatch_Constant["Time"] = 180
	
	-- 活动地图
	tHorseRidingMatch_Constant["ActivityMap"] = {}
	-- 1竞速 2夺宝
	tHorseRidingMatch_Constant["ActivityMap"][1] = 9929
	tHorseRidingMatch_Constant["ActivityMap"][2] = 10072
	
	-- 坐标点
	tHorseRidingMatch_Constant["ActivityMapDoc"] = {}
	-- 竞速固定点进入
	tHorseRidingMatch_Constant["ActivityMapDoc"][9929] = {}
	tHorseRidingMatch_Constant["ActivityMapDoc"][9929][1] = 5
	-- 夺宝随机点进入
	tHorseRidingMatch_Constant["ActivityMapDoc"][10072] = {}
	tHorseRidingMatch_Constant["ActivityMapDoc"][10072][1] = 6
	tHorseRidingMatch_Constant["ActivityMapDoc"][10072][2] = 2
	tHorseRidingMatch_Constant["ActivityMapDoc"][10072][3] = 3
	tHorseRidingMatch_Constant["ActivityMapDoc"][10072][4] = 4
	
	-- 竞速赛入场时间
	tHorseRidingMatch_Constant["ActivityDay"] = {}
	tHorseRidingMatch_Constant["ActivityDay"][1] = "03:55 04:25"
	tHorseRidingMatch_Constant["ActivityDay"][2] = "09:55 10:25"
	tHorseRidingMatch_Constant["ActivityDay"][3] = "15:55 16:25"
	tHorseRidingMatch_Constant["ActivityDay"][4] = "19:55 20:25"
	
	-- 夺宝赛入场时间
	tHorseRidingMatch_Constant["ActivityDay2"] = {}
	tHorseRidingMatch_Constant["ActivityDay2"][1] = "04:00 04:25"
	tHorseRidingMatch_Constant["ActivityDay2"][2] = "10:00 10:25"
	tHorseRidingMatch_Constant["ActivityDay2"][3] = "16:00 16:25"
	tHorseRidingMatch_Constant["ActivityDay2"][4] = "20:00 20:25"
	
	-- 双赛正式开赛时间
	tHorseRidingMatch_Constant["ActivityBeginTime"] = {}
	tHorseRidingMatch_Constant["ActivityBeginTime"][1] = "04:00 04:00"
	tHorseRidingMatch_Constant["ActivityBeginTime"][2] = "10:00 10:00"
	tHorseRidingMatch_Constant["ActivityBeginTime"][3] = "16:00 16:00"
	tHorseRidingMatch_Constant["ActivityBeginTime"][4] = "20:00 20:00"
	
	-- 双赛结束时间
	tHorseRidingMatch_Constant["ActivityEndTime"] = {}
	tHorseRidingMatch_Constant["ActivityEndTime"][1] = "04:30 04:30"
	tHorseRidingMatch_Constant["ActivityEndTime"][2] = "10:30 10:30"
	tHorseRidingMatch_Constant["ActivityEndTime"][3] = "16:30 16:30"
	tHorseRidingMatch_Constant["ActivityEndTime"][4] = "20:30 20:30"
	
	-- 竞速赛持续时间
	-- 竞速赛倒计时时间
	tHorseRidingMatch_Constant["Duration"] = 1800
	tHorseRidingMatch_Constant["CloseSecs"] = 55
	
	-- 马术
	tHorseRidingMatch_Constant["MagicType"] = 7001
	-- 马装备位
	tHorseRidingMatch_Constant["Equip"] = 12
	
	-- 比赛结束后玩家回所属服务器地图坐标
	tHorseRidingMatch_Constant["TransMapId"] = 1002
	tHorseRidingMatch_Constant["TransXId"] = 343
	tHorseRidingMatch_Constant["TransYId"] = 468
	tHorseRidingMatch_Constant["TransCXId"] = 3
	tHorseRidingMatch_Constant["TransCYId"] = 3
	
	-- 打开赛马积分商店的界面ID
	tHorseRidingMatch_Constant["DialogId"] = 464
	
	--全服邀请点(市场)
	tHorseRidingMatch_Constant["MapId"] = 1002
	tHorseRidingMatch_Constant["Invite_Pos"] ={}
	tHorseRidingMatch_Constant["Invite_Pos"][1] = {}
	tHorseRidingMatch_Constant["Invite_Pos"][1]["X"] = 341
	tHorseRidingMatch_Constant["Invite_Pos"][1]["Y"] = 471
	
	tHorseRidingMatch_Constant["Invite_Pos"][2] = {}
	tHorseRidingMatch_Constant["Invite_Pos"][2]["X"] = 341
	tHorseRidingMatch_Constant["Invite_Pos"][2]["Y"] = 471
	
	tHorseRidingMatch_Constant["Invite_Pos"][3] = {}
	tHorseRidingMatch_Constant["Invite_Pos"][3]["X"] = 343
	tHorseRidingMatch_Constant["Invite_Pos"][3]["Y"] = 471
	
	tHorseRidingMatch_Constant["Invite_Pos"][4] = {}
	tHorseRidingMatch_Constant["Invite_Pos"][4]["X"] = 343
	tHorseRidingMatch_Constant["Invite_Pos"][4]["Y"] = 471
	
	tHorseRidingMatch_Constant["Invite_Pos"][5] = {}
	tHorseRidingMatch_Constant["Invite_Pos"][5]["X"] = 340
	tHorseRidingMatch_Constant["Invite_Pos"][5]["Y"] = 472
	
	tHorseRidingMatch_Constant["Invite_Pos"][6] = {}
	tHorseRidingMatch_Constant["Invite_Pos"][6]["X"] = 340
	tHorseRidingMatch_Constant["Invite_Pos"][6]["Y"] = 472
	
	tHorseRidingMatch_Constant["Invite_Pos"][7] = {}
	tHorseRidingMatch_Constant["Invite_Pos"][7]["X"] = 341
	tHorseRidingMatch_Constant["Invite_Pos"][7]["Y"] = 474
	
	tHorseRidingMatch_Constant["Invite_Pos"][8] = {}
	tHorseRidingMatch_Constant["Invite_Pos"][8]["X"] = 341
	tHorseRidingMatch_Constant["Invite_Pos"][8]["Y"] = 474

local tHorseRidingMatch_Invite= {}
	tHorseRidingMatch_Invite["InviteSendId"]= {}
	tHorseRidingMatch_Invite["InviteSendId"][1] = 10563
	tHorseRidingMatch_Invite["InviteSendId"][2] = 10564
	tHorseRidingMatch_Invite["InviteSendId"][3] = 10560
	tHorseRidingMatch_Invite["InviteSendId"][4] = 10561
	tHorseRidingMatch_Invite["Enter"] = 10562
	
	-- 参加和离开时打log 12000553
local tHorseRidingMatch_EmoneyLog = {}
	tHorseRidingMatch_EmoneyLog["JoinMatch"] = "0,0,0,0,12000553,1[1],0,0"
	tHorseRidingMatch_EmoneyLog["LeaveMatch"] = "0,0,0,0,12000553,1[2],0,0"
	
local tHorseRidingMatch_RidePoint = {}
	tHorseRidingMatch_RidePoint[1] =  3120
	tHorseRidingMatch_RidePoint[2] =  2407
	tHorseRidingMatch_RidePoint[3] =  2110
	tHorseRidingMatch_RidePoint[4] =  1750
	tHorseRidingMatch_RidePoint[5] =  1603
	tHorseRidingMatch_RidePoint[6] =  1484
	tHorseRidingMatch_RidePoint[7] =  1400
	tHorseRidingMatch_RidePoint[8] =  1337
	tHorseRidingMatch_RidePoint[9] =  1274
	tHorseRidingMatch_RidePoint[10] = 1232
	tHorseRidingMatch_RidePoint[11] = 1148
	tHorseRidingMatch_RidePoint[12] = 1107
	tHorseRidingMatch_RidePoint[13] = 1060
	tHorseRidingMatch_RidePoint[14] = 1019
	tHorseRidingMatch_RidePoint[15] = 979 
	tHorseRidingMatch_RidePoint[16] = 938 
	tHorseRidingMatch_RidePoint[17] = 891 
	tHorseRidingMatch_RidePoint[18] = 851 
	tHorseRidingMatch_RidePoint[19] = 810 
	tHorseRidingMatch_RidePoint[20] = 770 
	tHorseRidingMatch_RidePoint[21] = 669 
	tHorseRidingMatch_RidePoint[22] = 650 
	tHorseRidingMatch_RidePoint[23] = 625 
	tHorseRidingMatch_RidePoint[24] = 594 
	tHorseRidingMatch_RidePoint[25] = 569 
	tHorseRidingMatch_RidePoint[26] = 544 
	tHorseRidingMatch_RidePoint[27] = 525 
	tHorseRidingMatch_RidePoint[28] = 506 
	tHorseRidingMatch_RidePoint[29] = 494 
	tHorseRidingMatch_RidePoint[30] = 469 
	tHorseRidingMatch_RidePoint[31] = 450 
	tHorseRidingMatch_RidePoint[32] = 438 
	tHorseRidingMatch_RidePoint[33] = 413 
	tHorseRidingMatch_RidePoint[34] = 400 
	tHorseRidingMatch_RidePoint[35] = 381 
	tHorseRidingMatch_RidePoint[36] = 356 
	tHorseRidingMatch_RidePoint[37] = 350 
	tHorseRidingMatch_RidePoint[38] = 338 
	tHorseRidingMatch_RidePoint[39] = 319 
	tHorseRidingMatch_RidePoint[40] = 313 
	tHorseRidingMatch_RidePoint[41] = 294 
	tHorseRidingMatch_RidePoint[42] = 288 
	tHorseRidingMatch_RidePoint[43] = 281 
	tHorseRidingMatch_RidePoint[44] = 275 
	tHorseRidingMatch_RidePoint[45] = 263 
	tHorseRidingMatch_RidePoint[46] = 256 
	tHorseRidingMatch_RidePoint[47] = 250 
	tHorseRidingMatch_RidePoint[48] = 250 
	tHorseRidingMatch_RidePoint[49] = 244 
	tHorseRidingMatch_RidePoint[50] = 231 
	tHorseRidingMatch_RidePoint[51] = 222 
	tHorseRidingMatch_RidePoint[52] = 216 
	tHorseRidingMatch_RidePoint[53] = 216 
	tHorseRidingMatch_RidePoint[54] = 216 
	tHorseRidingMatch_RidePoint[55] = 210 
	tHorseRidingMatch_RidePoint[56] = 210 
	tHorseRidingMatch_RidePoint[57] = 210 
	tHorseRidingMatch_RidePoint[58] = 204 
	tHorseRidingMatch_RidePoint[59] = 204 
	tHorseRidingMatch_RidePoint[60] = 204 
	tHorseRidingMatch_RidePoint[61] = 192 
	tHorseRidingMatch_RidePoint[62] = 192 
	tHorseRidingMatch_RidePoint[63] = 192 
	tHorseRidingMatch_RidePoint[64] = 186 
	tHorseRidingMatch_RidePoint[65] = 186 
	tHorseRidingMatch_RidePoint[66] = 186 
	tHorseRidingMatch_RidePoint[67] = 180 
	tHorseRidingMatch_RidePoint[68] = 180 
	tHorseRidingMatch_RidePoint[69] = 180 
	tHorseRidingMatch_RidePoint[70] = 174 
	tHorseRidingMatch_RidePoint[71] = 174 
	tHorseRidingMatch_RidePoint[72] = 174 
	tHorseRidingMatch_RidePoint[73] = 162 
	tHorseRidingMatch_RidePoint[74] = 162 
	tHorseRidingMatch_RidePoint[75] = 162 
	tHorseRidingMatch_RidePoint[76] = 156 
	tHorseRidingMatch_RidePoint[77] = 156 
	tHorseRidingMatch_RidePoint[78] = 156 
	tHorseRidingMatch_RidePoint[79] = 150 
	tHorseRidingMatch_RidePoint[80] = 150 
	tHorseRidingMatch_RidePoint[81] = 150 
	tHorseRidingMatch_RidePoint[82] = 144 
	tHorseRidingMatch_RidePoint[83] = 144 
	tHorseRidingMatch_RidePoint[84] = 144 
	tHorseRidingMatch_RidePoint[85] = 132 
	tHorseRidingMatch_RidePoint[86] = 132 
	tHorseRidingMatch_RidePoint[87] = 132 
	tHorseRidingMatch_RidePoint[88] = 126 
	tHorseRidingMatch_RidePoint[89] = 126 
	tHorseRidingMatch_RidePoint[90] = 126 
	tHorseRidingMatch_RidePoint[91] = 120 
	tHorseRidingMatch_RidePoint[92] = 120 
	tHorseRidingMatch_RidePoint[93] = 120 
	tHorseRidingMatch_RidePoint[94] = 120 
	tHorseRidingMatch_RidePoint[95] = 120 
	tHorseRidingMatch_RidePoint[96] = 120 
	tHorseRidingMatch_RidePoint[97] = 120 
	tHorseRidingMatch_RidePoint[98] = 120 
	tHorseRidingMatch_RidePoint[99] = 120 
	tHorseRidingMatch_RidePoint[100] =120 
	tHorseRidingMatch_RidePoint[101] =110 
	tHorseRidingMatch_RidePoint[102] =110 
	tHorseRidingMatch_RidePoint[103] =110 
	tHorseRidingMatch_RidePoint[104] =110 
	tHorseRidingMatch_RidePoint[105] =110 
	tHorseRidingMatch_RidePoint[106] =110 
	tHorseRidingMatch_RidePoint[107] =110 
	tHorseRidingMatch_RidePoint[108] =110 
	tHorseRidingMatch_RidePoint[109] =110 
	tHorseRidingMatch_RidePoint[110] =110 
	tHorseRidingMatch_RidePoint[111] =110 
	tHorseRidingMatch_RidePoint[112] =110 
	tHorseRidingMatch_RidePoint[113] =110 
	tHorseRidingMatch_RidePoint[114] =110 
	tHorseRidingMatch_RidePoint[115] =110 
	tHorseRidingMatch_RidePoint[116] =110 
	tHorseRidingMatch_RidePoint[117] =110 
	tHorseRidingMatch_RidePoint[118] =110 
	tHorseRidingMatch_RidePoint[119] =110 
	tHorseRidingMatch_RidePoint[120] =110 
	tHorseRidingMatch_RidePoint[121] =110 
	tHorseRidingMatch_RidePoint[122] =110 
	tHorseRidingMatch_RidePoint[123] =110 
	tHorseRidingMatch_RidePoint[124] =110 
	tHorseRidingMatch_RidePoint[125] =110 
	tHorseRidingMatch_RidePoint[126] =110 
	tHorseRidingMatch_RidePoint[127] =110 
	tHorseRidingMatch_RidePoint[128] =110 
	tHorseRidingMatch_RidePoint[129] =110 
	tHorseRidingMatch_RidePoint[130] =110 
	tHorseRidingMatch_RidePoint[131] =110 
	tHorseRidingMatch_RidePoint[132] =110 
	tHorseRidingMatch_RidePoint[133] =110 
	tHorseRidingMatch_RidePoint[134] =110 
	tHorseRidingMatch_RidePoint[135] =110 
	tHorseRidingMatch_RidePoint[136] =110 
	tHorseRidingMatch_RidePoint[137] =110 
	tHorseRidingMatch_RidePoint[138] =110 
	tHorseRidingMatch_RidePoint[139] =110 
	tHorseRidingMatch_RidePoint[140] =110 
	tHorseRidingMatch_RidePoint[141] =110 
	tHorseRidingMatch_RidePoint[142] =110 
	tHorseRidingMatch_RidePoint[143] =110 
	tHorseRidingMatch_RidePoint[144] =110 
	tHorseRidingMatch_RidePoint[145] =110 
	tHorseRidingMatch_RidePoint[146] =110 
	tHorseRidingMatch_RidePoint[147] =110 
	tHorseRidingMatch_RidePoint[148] =110 
	tHorseRidingMatch_RidePoint[149] =110 
	tHorseRidingMatch_RidePoint[150] =110 
	tHorseRidingMatch_RidePoint[151] =110 
	tHorseRidingMatch_RidePoint[152] =110 
	tHorseRidingMatch_RidePoint[153] =110 
	tHorseRidingMatch_RidePoint[154] =110 
	tHorseRidingMatch_RidePoint[155] =110 
	tHorseRidingMatch_RidePoint[156] =110 
	tHorseRidingMatch_RidePoint[157] =110 
	tHorseRidingMatch_RidePoint[158] =110 
	tHorseRidingMatch_RidePoint[159] =110 
	tHorseRidingMatch_RidePoint[160] =110 
	tHorseRidingMatch_RidePoint[161] =110 
	tHorseRidingMatch_RidePoint[162] =110 
	tHorseRidingMatch_RidePoint[163] =110 
	tHorseRidingMatch_RidePoint[164] =110 
	tHorseRidingMatch_RidePoint[165] =110 
	tHorseRidingMatch_RidePoint[166] =110 
	tHorseRidingMatch_RidePoint[167] =110 
	tHorseRidingMatch_RidePoint[168] =110 
	tHorseRidingMatch_RidePoint[169] =110 
	tHorseRidingMatch_RidePoint[170] =110 
	tHorseRidingMatch_RidePoint[171] =110 
	tHorseRidingMatch_RidePoint[172] =110 
	tHorseRidingMatch_RidePoint[173] =110 
	tHorseRidingMatch_RidePoint[174] =110 
	tHorseRidingMatch_RidePoint[175] =110 
	tHorseRidingMatch_RidePoint[176] =110 
	tHorseRidingMatch_RidePoint[177] =110 
	tHorseRidingMatch_RidePoint[178] =110 
	tHorseRidingMatch_RidePoint[179] =110 
	tHorseRidingMatch_RidePoint[180] =110 
	tHorseRidingMatch_RidePoint[181] =110 
	tHorseRidingMatch_RidePoint[182] =110 
	tHorseRidingMatch_RidePoint[183] =110 
	tHorseRidingMatch_RidePoint[184] =110 
	tHorseRidingMatch_RidePoint[185] =110 
	tHorseRidingMatch_RidePoint[186] =110 
	tHorseRidingMatch_RidePoint[187] =110 
	tHorseRidingMatch_RidePoint[188] =110 
	tHorseRidingMatch_RidePoint[189] =110 
	tHorseRidingMatch_RidePoint[190] =110 
	tHorseRidingMatch_RidePoint[191] =110 
	tHorseRidingMatch_RidePoint[192] =110 
	tHorseRidingMatch_RidePoint[193] =110 
	tHorseRidingMatch_RidePoint[194] =110 
	tHorseRidingMatch_RidePoint[195] =110 
	tHorseRidingMatch_RidePoint[196] =110 
	tHorseRidingMatch_RidePoint[197] =110 
	tHorseRidingMatch_RidePoint[198] =110 
	tHorseRidingMatch_RidePoint[199] =110 
	tHorseRidingMatch_RidePoint[200] =110 
	tHorseRidingMatch_RidePoint[201] =50
	
local tHorseRidingMatch_MMoPoint = {}
	tHorseRidingMatch_MMoPoint[1] =  200
	tHorseRidingMatch_MMoPoint[2] =  180
	tHorseRidingMatch_MMoPoint[3] =  150
	tHorseRidingMatch_MMoPoint[4] =  120
	tHorseRidingMatch_MMoPoint[5] =  120
	tHorseRidingMatch_MMoPoint[6] =  120
	tHorseRidingMatch_MMoPoint[7] =  120
	tHorseRidingMatch_MMoPoint[8] =  120
	tHorseRidingMatch_MMoPoint[9] =  120
	tHorseRidingMatch_MMoPoint[10] = 120
	tHorseRidingMatch_MMoPoint[11] = 100
	tHorseRidingMatch_MMoPoint[12] = 100
	tHorseRidingMatch_MMoPoint[13] = 100
	tHorseRidingMatch_MMoPoint[14] = 100
	tHorseRidingMatch_MMoPoint[15] = 100
	tHorseRidingMatch_MMoPoint[16] = 100
	tHorseRidingMatch_MMoPoint[17] = 100
	tHorseRidingMatch_MMoPoint[18] = 100
	tHorseRidingMatch_MMoPoint[19] = 100
	tHorseRidingMatch_MMoPoint[20] = 100
	tHorseRidingMatch_MMoPoint[21] = 90 
	tHorseRidingMatch_MMoPoint[22] = 90 
	tHorseRidingMatch_MMoPoint[23] = 90 
	tHorseRidingMatch_MMoPoint[24] = 90 
	tHorseRidingMatch_MMoPoint[25] = 90 
	tHorseRidingMatch_MMoPoint[26] = 80 
	tHorseRidingMatch_MMoPoint[27] = 80 
	tHorseRidingMatch_MMoPoint[28] = 80 
	tHorseRidingMatch_MMoPoint[29] = 80 
	tHorseRidingMatch_MMoPoint[30] = 80 
	tHorseRidingMatch_MMoPoint[31] = 70 
	tHorseRidingMatch_MMoPoint[32] = 70 
	tHorseRidingMatch_MMoPoint[33] = 70 
	tHorseRidingMatch_MMoPoint[34] = 70 
	tHorseRidingMatch_MMoPoint[35] = 70 
	tHorseRidingMatch_MMoPoint[36] = 60 
	tHorseRidingMatch_MMoPoint[37] = 60 
	tHorseRidingMatch_MMoPoint[38] = 60 
	tHorseRidingMatch_MMoPoint[39] = 60 
	tHorseRidingMatch_MMoPoint[40] = 60 
	tHorseRidingMatch_MMoPoint[41] = 50 
	tHorseRidingMatch_MMoPoint[42] = 50 
	tHorseRidingMatch_MMoPoint[43] = 50 
	tHorseRidingMatch_MMoPoint[44] = 50 
	tHorseRidingMatch_MMoPoint[45] = 50 
	tHorseRidingMatch_MMoPoint[46] = 50 
	tHorseRidingMatch_MMoPoint[47] = 50 
	tHorseRidingMatch_MMoPoint[48] = 50 
	tHorseRidingMatch_MMoPoint[49] = 50 
	tHorseRidingMatch_MMoPoint[50] = 50 
	tHorseRidingMatch_MMoPoint[51] = 50 
	tHorseRidingMatch_MMoPoint[52] = 50 
	tHorseRidingMatch_MMoPoint[53] = 50 
	tHorseRidingMatch_MMoPoint[54] = 50 
	tHorseRidingMatch_MMoPoint[55] = 50 
	tHorseRidingMatch_MMoPoint[56] = 50 
	tHorseRidingMatch_MMoPoint[57] = 50 
	tHorseRidingMatch_MMoPoint[58] = 50 
	tHorseRidingMatch_MMoPoint[59] = 50 
	tHorseRidingMatch_MMoPoint[60] = 50 
	tHorseRidingMatch_MMoPoint[61] = 50 
	tHorseRidingMatch_MMoPoint[62] = 50 
	tHorseRidingMatch_MMoPoint[63] = 50 
	tHorseRidingMatch_MMoPoint[64] = 50 
	tHorseRidingMatch_MMoPoint[65] = 50 
	tHorseRidingMatch_MMoPoint[66] = 50 
	tHorseRidingMatch_MMoPoint[67] = 50 
	tHorseRidingMatch_MMoPoint[68] = 50 
	tHorseRidingMatch_MMoPoint[69] = 50 
	tHorseRidingMatch_MMoPoint[70] = 50 
	tHorseRidingMatch_MMoPoint[71] = 50 
	tHorseRidingMatch_MMoPoint[72] = 50 
	tHorseRidingMatch_MMoPoint[73] = 50 
	tHorseRidingMatch_MMoPoint[74] = 50 
	tHorseRidingMatch_MMoPoint[75] = 50 
	tHorseRidingMatch_MMoPoint[76] = 50 
	tHorseRidingMatch_MMoPoint[77] = 50 
	tHorseRidingMatch_MMoPoint[78] = 50 
	tHorseRidingMatch_MMoPoint[79] = 50 
	tHorseRidingMatch_MMoPoint[80] = 50 
	tHorseRidingMatch_MMoPoint[81] = 50 
	tHorseRidingMatch_MMoPoint[82] = 50 
	tHorseRidingMatch_MMoPoint[83] = 50 
	tHorseRidingMatch_MMoPoint[84] = 50 
	tHorseRidingMatch_MMoPoint[85] = 50 
	tHorseRidingMatch_MMoPoint[86] = 50 
	tHorseRidingMatch_MMoPoint[87] = 50 
	tHorseRidingMatch_MMoPoint[88] = 50 
	tHorseRidingMatch_MMoPoint[89] = 50 
	tHorseRidingMatch_MMoPoint[90] = 50 
	tHorseRidingMatch_MMoPoint[91] = 50 
	tHorseRidingMatch_MMoPoint[92] = 50 
	tHorseRidingMatch_MMoPoint[93] = 50 
	tHorseRidingMatch_MMoPoint[94] = 50 
	tHorseRidingMatch_MMoPoint[95] = 50 
	tHorseRidingMatch_MMoPoint[96] = 50 
	tHorseRidingMatch_MMoPoint[97] = 50 
	tHorseRidingMatch_MMoPoint[98] = 50 
	tHorseRidingMatch_MMoPoint[99] = 50 
	tHorseRidingMatch_MMoPoint[100] = 50 
	tHorseRidingMatch_MMoPoint[101] = 50 
	tHorseRidingMatch_MMoPoint[102] = 50 
	tHorseRidingMatch_MMoPoint[103] = 50 
	tHorseRidingMatch_MMoPoint[104] = 50 
	tHorseRidingMatch_MMoPoint[105] = 50 
	tHorseRidingMatch_MMoPoint[106] = 50 
	tHorseRidingMatch_MMoPoint[107] = 50 
	tHorseRidingMatch_MMoPoint[108] = 50 
	tHorseRidingMatch_MMoPoint[109] = 50 
	tHorseRidingMatch_MMoPoint[110] = 50 
	tHorseRidingMatch_MMoPoint[111] = 50 
	tHorseRidingMatch_MMoPoint[112] = 50 
	tHorseRidingMatch_MMoPoint[113] = 50 
	tHorseRidingMatch_MMoPoint[114] = 50 
	tHorseRidingMatch_MMoPoint[115] = 50 
	tHorseRidingMatch_MMoPoint[116] = 50 
	tHorseRidingMatch_MMoPoint[117] = 50 
	tHorseRidingMatch_MMoPoint[118] = 50 
	tHorseRidingMatch_MMoPoint[119] = 50 
	tHorseRidingMatch_MMoPoint[120] = 50 
	tHorseRidingMatch_MMoPoint[121] = 50 
	tHorseRidingMatch_MMoPoint[122] = 50 
	tHorseRidingMatch_MMoPoint[123] = 50 
	tHorseRidingMatch_MMoPoint[124] = 50 
	tHorseRidingMatch_MMoPoint[125] = 50 
	tHorseRidingMatch_MMoPoint[126] = 50 
	tHorseRidingMatch_MMoPoint[127] = 50 
	tHorseRidingMatch_MMoPoint[128] = 50 
	tHorseRidingMatch_MMoPoint[129] = 50 
	tHorseRidingMatch_MMoPoint[130] = 50 
	tHorseRidingMatch_MMoPoint[131] = 50 
	tHorseRidingMatch_MMoPoint[132] = 50 
	tHorseRidingMatch_MMoPoint[133] = 50 
	tHorseRidingMatch_MMoPoint[134] = 50 
	tHorseRidingMatch_MMoPoint[135] = 50 
	tHorseRidingMatch_MMoPoint[136] = 50 
	tHorseRidingMatch_MMoPoint[137] = 50 
	tHorseRidingMatch_MMoPoint[138] = 50 
	tHorseRidingMatch_MMoPoint[139] = 50 
	tHorseRidingMatch_MMoPoint[140] = 50 
	tHorseRidingMatch_MMoPoint[141] = 50 
	tHorseRidingMatch_MMoPoint[142] = 50 
	tHorseRidingMatch_MMoPoint[143] = 50 
	tHorseRidingMatch_MMoPoint[144] = 50 
	tHorseRidingMatch_MMoPoint[145] = 50 
	tHorseRidingMatch_MMoPoint[146] = 50 
	tHorseRidingMatch_MMoPoint[147] = 50 
	tHorseRidingMatch_MMoPoint[148] = 50 
	tHorseRidingMatch_MMoPoint[149] = 50 
	tHorseRidingMatch_MMoPoint[150] = 50 
	tHorseRidingMatch_MMoPoint[151] = 50 
	tHorseRidingMatch_MMoPoint[152] = 50 
	tHorseRidingMatch_MMoPoint[153] = 50 
	tHorseRidingMatch_MMoPoint[154] = 50 
	tHorseRidingMatch_MMoPoint[155] = 50 
	tHorseRidingMatch_MMoPoint[156] = 50 
	tHorseRidingMatch_MMoPoint[157] = 50 
	tHorseRidingMatch_MMoPoint[158] = 50 
	tHorseRidingMatch_MMoPoint[159] = 50 
	tHorseRidingMatch_MMoPoint[160] = 50 
	tHorseRidingMatch_MMoPoint[161] = 50 
	tHorseRidingMatch_MMoPoint[162] = 50 
	tHorseRidingMatch_MMoPoint[163] = 50 
	tHorseRidingMatch_MMoPoint[164] = 50 
	tHorseRidingMatch_MMoPoint[165] = 50 
	tHorseRidingMatch_MMoPoint[166] = 50 
	tHorseRidingMatch_MMoPoint[167] = 50 
	tHorseRidingMatch_MMoPoint[168] = 50 
	tHorseRidingMatch_MMoPoint[169] = 50 
	tHorseRidingMatch_MMoPoint[170] = 50 
	tHorseRidingMatch_MMoPoint[171] = 50 
	tHorseRidingMatch_MMoPoint[172] = 50 
	tHorseRidingMatch_MMoPoint[173] = 50 
	tHorseRidingMatch_MMoPoint[174] = 50 
	tHorseRidingMatch_MMoPoint[175] = 50 
	tHorseRidingMatch_MMoPoint[176] = 50 
	tHorseRidingMatch_MMoPoint[177] = 50 
	tHorseRidingMatch_MMoPoint[178] = 50 
	tHorseRidingMatch_MMoPoint[179] = 50 
	tHorseRidingMatch_MMoPoint[180] = 50 
	tHorseRidingMatch_MMoPoint[181] = 50 
	tHorseRidingMatch_MMoPoint[182] = 50 
	tHorseRidingMatch_MMoPoint[183] = 50 
	tHorseRidingMatch_MMoPoint[184] = 50 
	tHorseRidingMatch_MMoPoint[185] = 50 
	tHorseRidingMatch_MMoPoint[186] = 50 
	tHorseRidingMatch_MMoPoint[187] = 50 
	tHorseRidingMatch_MMoPoint[188] = 50 
	tHorseRidingMatch_MMoPoint[189] = 50 
	tHorseRidingMatch_MMoPoint[190] = 50 
	tHorseRidingMatch_MMoPoint[191] = 50 
	tHorseRidingMatch_MMoPoint[192] = 50 
	tHorseRidingMatch_MMoPoint[193] = 50 
	tHorseRidingMatch_MMoPoint[194] = 50 
	tHorseRidingMatch_MMoPoint[195] = 50 
	tHorseRidingMatch_MMoPoint[196] = 50 
	tHorseRidingMatch_MMoPoint[197] = 50 
	tHorseRidingMatch_MMoPoint[198] = 50 
	tHorseRidingMatch_MMoPoint[199] = 50 
	tHorseRidingMatch_MMoPoint[200] = 50 
	tHorseRidingMatch_MMoPoint[201] = 20
	
local tHorseRidingMatch_RewardAction = {}
	tHorseRidingMatch_RewardAction[1] =  564383
	tHorseRidingMatch_RewardAction[2] =  564384
	tHorseRidingMatch_RewardAction[3] =  564385
	tHorseRidingMatch_RewardAction[4] =  564386
	tHorseRidingMatch_RewardAction[5] =  564387
	tHorseRidingMatch_RewardAction[6] =  564388
	tHorseRidingMatch_RewardAction[7] =  564389
	tHorseRidingMatch_RewardAction[8] =  564390
	tHorseRidingMatch_RewardAction[9] =  564391
	tHorseRidingMatch_RewardAction[10] = 564392
	tHorseRidingMatch_RewardAction[11] = 564393
	tHorseRidingMatch_RewardAction[12] = 564394
	tHorseRidingMatch_RewardAction[13] = 564395
	tHorseRidingMatch_RewardAction[14] = 564396
	tHorseRidingMatch_RewardAction[15] = 564397
	tHorseRidingMatch_RewardAction[16] = 564398
	tHorseRidingMatch_RewardAction[17] = 564399
	tHorseRidingMatch_RewardAction[18] = 564400
	tHorseRidingMatch_RewardAction[19] = 564401
	tHorseRidingMatch_RewardAction[20] = 564402
	tHorseRidingMatch_RewardAction[21] = 564403
	tHorseRidingMatch_RewardAction[22] = 564404
	tHorseRidingMatch_RewardAction[23] = 564405
	tHorseRidingMatch_RewardAction[24] = 564406
	tHorseRidingMatch_RewardAction[25] = 564407
	tHorseRidingMatch_RewardAction[26] = 564408
	tHorseRidingMatch_RewardAction[27] = 564409
	tHorseRidingMatch_RewardAction[28] = 564410
	tHorseRidingMatch_RewardAction[29] = 564411
	tHorseRidingMatch_RewardAction[30] = 564412
	tHorseRidingMatch_RewardAction[31] = 564413
	tHorseRidingMatch_RewardAction[32] = 564414
	tHorseRidingMatch_RewardAction[33] = 564415
	tHorseRidingMatch_RewardAction[34] = 564416
	tHorseRidingMatch_RewardAction[35] = 564417
	tHorseRidingMatch_RewardAction[36] = 564418
	tHorseRidingMatch_RewardAction[37] = 564419
	tHorseRidingMatch_RewardAction[38] = 564420
	tHorseRidingMatch_RewardAction[39] = 564421
	tHorseRidingMatch_RewardAction[40] = 564422
	tHorseRidingMatch_RewardAction[41] = 564423
	tHorseRidingMatch_RewardAction[42] = 564424
	tHorseRidingMatch_RewardAction[43] = 564425
	tHorseRidingMatch_RewardAction[44] = 564426
	tHorseRidingMatch_RewardAction[45] = 564427
	tHorseRidingMatch_RewardAction[46] = 564428
	tHorseRidingMatch_RewardAction[47] = 564429
	tHorseRidingMatch_RewardAction[48] = 564429 
	tHorseRidingMatch_RewardAction[49] = 564430 
	tHorseRidingMatch_RewardAction[50] = 564431 
	tHorseRidingMatch_RewardAction[51] = 564432 
	
	tHorseRidingMatch_RewardAction[52] = 564433 
	tHorseRidingMatch_RewardAction[53] = 564433 
	tHorseRidingMatch_RewardAction[54] = 564433 
	tHorseRidingMatch_RewardAction[55] = 564434 
	tHorseRidingMatch_RewardAction[56] = 564434 
	tHorseRidingMatch_RewardAction[57] = 564434 
	tHorseRidingMatch_RewardAction[58] = 564435 
	tHorseRidingMatch_RewardAction[59] = 564435 
	tHorseRidingMatch_RewardAction[60] = 564435 
	tHorseRidingMatch_RewardAction[61] = 564436 
	tHorseRidingMatch_RewardAction[62] = 564436 
	tHorseRidingMatch_RewardAction[63] = 564436 
	tHorseRidingMatch_RewardAction[64] = 564437 
	tHorseRidingMatch_RewardAction[65] = 564437 
	tHorseRidingMatch_RewardAction[66] = 564437 
	tHorseRidingMatch_RewardAction[67] = 564438 
	tHorseRidingMatch_RewardAction[68] = 564438 
	tHorseRidingMatch_RewardAction[69] = 564438 
	tHorseRidingMatch_RewardAction[70] = 564439 
	tHorseRidingMatch_RewardAction[71] = 564439 
	tHorseRidingMatch_RewardAction[72] = 564439 
	tHorseRidingMatch_RewardAction[73] = 564440 
	tHorseRidingMatch_RewardAction[74] = 564440 
	tHorseRidingMatch_RewardAction[75] = 564440 
	tHorseRidingMatch_RewardAction[76] = 564441 
	tHorseRidingMatch_RewardAction[77] = 564441 
	tHorseRidingMatch_RewardAction[78] = 564441 
	tHorseRidingMatch_RewardAction[79] = 564442 
	tHorseRidingMatch_RewardAction[80] = 564442 
	tHorseRidingMatch_RewardAction[81] = 564442 
	tHorseRidingMatch_RewardAction[82] = 564443 
	tHorseRidingMatch_RewardAction[83] = 564443 
	tHorseRidingMatch_RewardAction[84] = 564443 
	tHorseRidingMatch_RewardAction[85] = 564444 
	tHorseRidingMatch_RewardAction[86] = 564444 
	tHorseRidingMatch_RewardAction[87] = 564444 
	tHorseRidingMatch_RewardAction[88] = 564445 
	tHorseRidingMatch_RewardAction[89] = 564445 
	tHorseRidingMatch_RewardAction[90] = 564445 
	tHorseRidingMatch_RewardAction[91] = 564446 
	tHorseRidingMatch_RewardAction[92] = 564446 
	tHorseRidingMatch_RewardAction[93] = 564446 
	tHorseRidingMatch_RewardAction[94] = 564446 
	tHorseRidingMatch_RewardAction[95] = 564446 
	tHorseRidingMatch_RewardAction[96] = 564446 
	tHorseRidingMatch_RewardAction[97] = 564446 
	tHorseRidingMatch_RewardAction[98] = 564446 
	tHorseRidingMatch_RewardAction[99] = 564446 
	tHorseRidingMatch_RewardAction[100] =564446 
	tHorseRidingMatch_RewardAction[101] =564447 
	tHorseRidingMatch_RewardAction[102] =564447 
	tHorseRidingMatch_RewardAction[103] =564447 
	tHorseRidingMatch_RewardAction[104] =564447 
	tHorseRidingMatch_RewardAction[105] =564447 
	tHorseRidingMatch_RewardAction[106] =564447 
	tHorseRidingMatch_RewardAction[107] =564447 
	tHorseRidingMatch_RewardAction[108] =564447 
	tHorseRidingMatch_RewardAction[109] =564447 
	tHorseRidingMatch_RewardAction[110] =564447 
	tHorseRidingMatch_RewardAction[111] =564447 
	tHorseRidingMatch_RewardAction[112] =564447 
	tHorseRidingMatch_RewardAction[113] =564447 
	tHorseRidingMatch_RewardAction[114] =564447 
	tHorseRidingMatch_RewardAction[115] =564447 
	tHorseRidingMatch_RewardAction[116] =564447 
	tHorseRidingMatch_RewardAction[117] =564447 
	tHorseRidingMatch_RewardAction[118] =564447 
	tHorseRidingMatch_RewardAction[119] =564447 
	tHorseRidingMatch_RewardAction[120] =564447 
	tHorseRidingMatch_RewardAction[121] =564447 
	tHorseRidingMatch_RewardAction[122] =564447 
	tHorseRidingMatch_RewardAction[123] =564447 
	tHorseRidingMatch_RewardAction[124] =564447 
	tHorseRidingMatch_RewardAction[125] =564447 
	tHorseRidingMatch_RewardAction[126] =564447 
	tHorseRidingMatch_RewardAction[127] =564447 
	tHorseRidingMatch_RewardAction[128] =564447 
	tHorseRidingMatch_RewardAction[129] =564447 
	tHorseRidingMatch_RewardAction[130] =564447 
	tHorseRidingMatch_RewardAction[131] =564447 
	tHorseRidingMatch_RewardAction[132] =564447 
	tHorseRidingMatch_RewardAction[133] =564447 
	tHorseRidingMatch_RewardAction[134] =564447 
	tHorseRidingMatch_RewardAction[135] =564447 
	tHorseRidingMatch_RewardAction[136] =564447 
	tHorseRidingMatch_RewardAction[137] =564447 
	tHorseRidingMatch_RewardAction[138] =564447 
	tHorseRidingMatch_RewardAction[139] =564447 
	tHorseRidingMatch_RewardAction[140] =564447 
	tHorseRidingMatch_RewardAction[141] =564447 
	tHorseRidingMatch_RewardAction[142] =564447 
	tHorseRidingMatch_RewardAction[143] =564447 
	tHorseRidingMatch_RewardAction[144] =564447 
	tHorseRidingMatch_RewardAction[145] =564447 
	tHorseRidingMatch_RewardAction[146] =564447 
	tHorseRidingMatch_RewardAction[147] =564447 
	tHorseRidingMatch_RewardAction[148] =564447 
	tHorseRidingMatch_RewardAction[149] =564447 
	tHorseRidingMatch_RewardAction[150] =564447 
	tHorseRidingMatch_RewardAction[151] =564447 
	tHorseRidingMatch_RewardAction[152] =564447 
	tHorseRidingMatch_RewardAction[153] =564447 
	tHorseRidingMatch_RewardAction[154] =564447 
	tHorseRidingMatch_RewardAction[155] =564447 
	tHorseRidingMatch_RewardAction[156] =564447 
	tHorseRidingMatch_RewardAction[157] =564447 
	tHorseRidingMatch_RewardAction[158] =564447 
	tHorseRidingMatch_RewardAction[159] =564447 
	tHorseRidingMatch_RewardAction[160] =564447 
	tHorseRidingMatch_RewardAction[161] =564447 
	tHorseRidingMatch_RewardAction[162] =564447 
	tHorseRidingMatch_RewardAction[163] =564447 
	tHorseRidingMatch_RewardAction[164] =564447 
	tHorseRidingMatch_RewardAction[165] =564447 
	tHorseRidingMatch_RewardAction[166] =564447 
	tHorseRidingMatch_RewardAction[167] =564447 
	tHorseRidingMatch_RewardAction[168] =564447 
	tHorseRidingMatch_RewardAction[169] =564447 
	tHorseRidingMatch_RewardAction[170] =564447 
	tHorseRidingMatch_RewardAction[171] =564447 
	tHorseRidingMatch_RewardAction[172] =564447 
	tHorseRidingMatch_RewardAction[173] =564447 
	tHorseRidingMatch_RewardAction[174] =564447 
	tHorseRidingMatch_RewardAction[175] =564447 
	tHorseRidingMatch_RewardAction[176] =564447 
	tHorseRidingMatch_RewardAction[177] =564447 
	tHorseRidingMatch_RewardAction[178] =564447 
	tHorseRidingMatch_RewardAction[179] =564447 
	tHorseRidingMatch_RewardAction[180] =564447 
	tHorseRidingMatch_RewardAction[181] =564447 
	tHorseRidingMatch_RewardAction[182] =564447 
	tHorseRidingMatch_RewardAction[183] =564447 
	tHorseRidingMatch_RewardAction[184] =564447 
	tHorseRidingMatch_RewardAction[185] =564447 
	tHorseRidingMatch_RewardAction[186] =564447 
	tHorseRidingMatch_RewardAction[187] =564447 
	tHorseRidingMatch_RewardAction[188] =564447 
	tHorseRidingMatch_RewardAction[189] =564447 
	tHorseRidingMatch_RewardAction[190] =564447 
	tHorseRidingMatch_RewardAction[191] =564447 
	tHorseRidingMatch_RewardAction[192] =564447 
	tHorseRidingMatch_RewardAction[193] =564447 
	tHorseRidingMatch_RewardAction[194] =564447 
	tHorseRidingMatch_RewardAction[195] =564447 
	tHorseRidingMatch_RewardAction[196] =564447 
	tHorseRidingMatch_RewardAction[197] =564447 
	tHorseRidingMatch_RewardAction[198] =564447 
	tHorseRidingMatch_RewardAction[199] =564447 
	tHorseRidingMatch_RewardAction[200] =564447 
	tHorseRidingMatch_RewardAction[201] =564448
	
	--stc表
local tHorseRidingMatch_Stc = {}
	-- 用来存放玩家当天比赛最好名次，data%1000000=最好名次,data/1000000=当前
	tHorseRidingMatch_Stc[1] = {}
	tHorseRidingMatch_Stc[1]["EventType"] = 1000
	tHorseRidingMatch_Stc[1]["DataType"] = 000
	
	--玩家距上次入场间隔时数
	tHorseRidingMatch_Stc[2] = {}
	tHorseRidingMatch_Stc[2]["EventType"] = 152
	tHorseRidingMatch_Stc[2]["DataType"] = 79
	
	-- 夺宝赛起始点掩码
local tHorseRidingMatch_Detail = {}
	tHorseRidingMatch_Detail[1] = {}
	tHorseRidingMatch_Detail[1]["Id"] = 35018
	
local tHorseRidingMatch_BoardMapChk = {}
	tHorseRidingMatch_BoardMapChk[1] = 1002
	tHorseRidingMatch_BoardMapChk[2] = 1011
	tHorseRidingMatch_BoardMapChk[3] = 1020
	tHorseRidingMatch_BoardMapChk[4] = 1000
	tHorseRidingMatch_BoardMapChk[5] = 1015
	tHorseRidingMatch_BoardMapChk[6] = 1036
	tHorseRidingMatch_BoardMapChk[7] = 1068
	tHorseRidingMatch_BoardMapChk[8] = 1201
	tHorseRidingMatch_BoardMapChk[9] = 1202
	tHorseRidingMatch_BoardMapChk[10] = 1204
	tHorseRidingMatch_BoardMapChk[11] = 1205
	tHorseRidingMatch_BoardMapChk[12] = 1207
	tHorseRidingMatch_BoardMapChk[13] = 1208
	tHorseRidingMatch_BoardMapChk[14] = 1213
	tHorseRidingMatch_BoardMapChk[15] = 1214
	tHorseRidingMatch_BoardMapChk[16] = 1215
	tHorseRidingMatch_BoardMapChk[17] = 1216
	tHorseRidingMatch_BoardMapChk[18] = 1217
	tHorseRidingMatch_BoardMapChk[19] = 1210
	tHorseRidingMatch_BoardMapChk[20] = 1785
	tHorseRidingMatch_BoardMapChk[21] = 1786
	tHorseRidingMatch_BoardMapChk[22] = 1787
	tHorseRidingMatch_BoardMapChk[23] = 3056
	tHorseRidingMatch_BoardMapChk[24] = 3055
	tHorseRidingMatch_BoardMapChk[25] = 1927
	tHorseRidingMatch_BoardMapChk[26] = 1926
	tHorseRidingMatch_BoardMapChk[27] = 1999
	tHorseRidingMatch_BoardMapChk[28] = 2055
	tHorseRidingMatch_BoardMapChk[29] = 2056
	tHorseRidingMatch_BoardMapChk[30] = 2054
	tHorseRidingMatch_BoardMapChk[31] = 1076
	tHorseRidingMatch_BoardMapChk[32] = 1075
	tHorseRidingMatch_BoardMapChk[33] = 1077
	tHorseRidingMatch_BoardMapChk[34] = 1063
	tHorseRidingMatch_BoardMapChk[35] = 1052
	tHorseRidingMatch_BoardMapChk[36] = 1351
	tHorseRidingMatch_BoardMapChk[37] = 1352
	tHorseRidingMatch_BoardMapChk[38] = 1353
	tHorseRidingMatch_BoardMapChk[39] = 1354
	
	--面板地图Doc
local tHorseRidingMatch_BoardMapDocChk ={}
	tHorseRidingMatch_BoardMapDocChk[1] = 1098
	tHorseRidingMatch_BoardMapDocChk[2] = 1099
	tHorseRidingMatch_BoardMapDocChk[3] = 2080
	
--面板地图混合检测组合
local tHorseRidingMatch_BoardChk ={}
	tHorseRidingMatch_BoardChk[1] = 601
	tHorseRidingMatch_BoardChk[2] = 601
	tHorseRidingMatch_BoardChk[3] = 1784 
	tHorseRidingMatch_BoardChk[4] = 3024 
	
local tHorseRidingMatchPack = {}
	tHorseRidingMatchPack[3200994] = {}
	tHorseRidingMatchPack[3200994]["DeleteItem"] = {}
	tHorseRidingMatchPack[3200994]["DeleteItem"][1] = {}
	tHorseRidingMatchPack[3200994]["DeleteItem"][1]["Id"] = 3200994
	tHorseRidingMatchPack[3200994]["RewardRidingPoint"] = {}
	tHorseRidingMatchPack[3200994]["RewardRidingPoint"]["Value"] = 3120
	tHorseRidingMatchPack[3200994]["LogId"] = 12000472
	tHorseRidingMatchPack[3200994]["Talk"] = tHorseRidingMatch_Text[3200994]
	tHorseRidingMatchPack[3200994]["RewardItem"] = {}
	tHorseRidingMatchPack[3200994]["RewardItem"][1] = {}
	tHorseRidingMatchPack[3200994]["RewardItem"][1]["Id"] = 3301255
	tHorseRidingMatchPack[3200994]["RewardItem"][1]["Attr"] = "0 200"

	tHorseRidingMatchPack[3200995] = {}
	tHorseRidingMatchPack[3200995]["DeleteItem"] = {}
	tHorseRidingMatchPack[3200995]["DeleteItem"][1] = {}
	tHorseRidingMatchPack[3200995]["DeleteItem"][1]["Id"] = 3200995
	tHorseRidingMatchPack[3200995]["RewardRidingPoint"] = {}
	tHorseRidingMatchPack[3200995]["RewardRidingPoint"]["Value"] = 2407
	tHorseRidingMatchPack[3200995]["LogId"] = 12000472
	tHorseRidingMatchPack[3200995]["Talk"] = tHorseRidingMatch_Text[3200995]
	tHorseRidingMatchPack[3200995]["RewardItem"] = {}
	tHorseRidingMatchPack[3200995]["RewardItem"][1] = {}
	tHorseRidingMatchPack[3200995]["RewardItem"][1]["Id"] = 3301255
	tHorseRidingMatchPack[3200995]["RewardItem"][1]["Attr"] = "0 180"
	
	tHorseRidingMatchPack[3200996] = {}
	tHorseRidingMatchPack[3200996]["DeleteItem"] = {}
	tHorseRidingMatchPack[3200996]["DeleteItem"][1] = {}
	tHorseRidingMatchPack[3200996]["DeleteItem"][1]["Id"] = 3200996
	tHorseRidingMatchPack[3200996]["RewardRidingPoint"] = {}
	tHorseRidingMatchPack[3200996]["RewardRidingPoint"]["Value"] = 2110
	tHorseRidingMatchPack[3200996]["LogId"] = 12000472
	tHorseRidingMatchPack[3200996]["Talk"] = tHorseRidingMatch_Text[3200996]
	tHorseRidingMatchPack[3200996]["RewardItem"] = {}
	tHorseRidingMatchPack[3200996]["RewardItem"][1] = {}
	tHorseRidingMatchPack[3200996]["RewardItem"][1]["Id"] = 3301255
	tHorseRidingMatchPack[3200996]["RewardItem"][1]["Attr"] = "0 150"
	
	tHorseRidingMatchPack[3200997] = {}
	tHorseRidingMatchPack[3200997]["DeleteItem"] = {}
	tHorseRidingMatchPack[3200997]["DeleteItem"][1] = {}
	tHorseRidingMatchPack[3200997]["DeleteItem"][1]["Id"] = 3200997
	tHorseRidingMatchPack[3200997]["RewardRidingPoint"] = {}
	tHorseRidingMatchPack[3200997]["RewardRidingPoint"]["Value"] = 1750
	tHorseRidingMatchPack[3200997]["LogId"] = 12000472
	tHorseRidingMatchPack[3200997]["Talk"] = tHorseRidingMatch_Text[3200997]
	tHorseRidingMatchPack[3200997]["RewardItem"] = {}
	tHorseRidingMatchPack[3200997]["RewardItem"][1] = {}
	tHorseRidingMatchPack[3200997]["RewardItem"][1]["Id"] = 3301255
	tHorseRidingMatchPack[3200997]["RewardItem"][1]["Attr"] = "0 120"
	
	tHorseRidingMatchPack[3200998] = {}
	tHorseRidingMatchPack[3200998]["DeleteItem"] = {}
	tHorseRidingMatchPack[3200998]["DeleteItem"][1] = {}
	tHorseRidingMatchPack[3200998]["DeleteItem"][1]["Id"] = 3200998
	tHorseRidingMatchPack[3200998]["RewardRidingPoint"] = {}
	tHorseRidingMatchPack[3200998]["RewardRidingPoint"]["Value"] = 1603
	tHorseRidingMatchPack[3200998]["LogId"] = 12000472
	tHorseRidingMatchPack[3200998]["Talk"] = tHorseRidingMatch_Text[3200998]
	tHorseRidingMatchPack[3200998]["RewardItem"] = {}
	tHorseRidingMatchPack[3200998]["RewardItem"][1] = {}
	tHorseRidingMatchPack[3200998]["RewardItem"][1]["Id"] = 3301255
	tHorseRidingMatchPack[3200998]["RewardItem"][1]["Attr"] = "0 120"
	
	tHorseRidingMatchPack[3200999] = {}
	tHorseRidingMatchPack[3200999]["DeleteItem"] = {}
	tHorseRidingMatchPack[3200999]["DeleteItem"][1] = {}
	tHorseRidingMatchPack[3200999]["DeleteItem"][1]["Id"] = 3200999
	tHorseRidingMatchPack[3200999]["RewardRidingPoint"] = {}
	tHorseRidingMatchPack[3200999]["RewardRidingPoint"]["Value"] = 1484
	tHorseRidingMatchPack[3200999]["LogId"] = 12000472
	tHorseRidingMatchPack[3200999]["Talk"] = tHorseRidingMatch_Text[3200999]
	tHorseRidingMatchPack[3200999]["RewardItem"] = {}
	tHorseRidingMatchPack[3200999]["RewardItem"][1] = {}
	tHorseRidingMatchPack[3200999]["RewardItem"][1]["Id"] = 3301255
	tHorseRidingMatchPack[3200999]["RewardItem"][1]["Attr"] = "0 120"
	
	tHorseRidingMatchPack[3300406] = {}
	tHorseRidingMatchPack[3300406]["DeleteItem"] = {}
	tHorseRidingMatchPack[3300406]["DeleteItem"][1] = {}
	tHorseRidingMatchPack[3300406]["DeleteItem"][1]["Id"] = 3300406
	tHorseRidingMatchPack[3300406]["RewardRidingPoint"] = {}
	tHorseRidingMatchPack[3300406]["RewardRidingPoint"]["Value"] = 1400
	tHorseRidingMatchPack[3300406]["LogId"] = 12000472
	tHorseRidingMatchPack[3300406]["Talk"] = tHorseRidingMatch_Text[3300406]
	tHorseRidingMatchPack[3300406]["RewardItem"] = {}
	tHorseRidingMatchPack[3300406]["RewardItem"][1] = {}
	tHorseRidingMatchPack[3300406]["RewardItem"][1]["Id"] = 3301255
	tHorseRidingMatchPack[3300406]["RewardItem"][1]["Attr"] = "0 120"
	
	tHorseRidingMatchPack[3300407] = {}
	tHorseRidingMatchPack[3300407]["DeleteItem"] = {}
	tHorseRidingMatchPack[3300407]["DeleteItem"][1] = {}
	tHorseRidingMatchPack[3300407]["DeleteItem"][1]["Id"] = 3300407
	tHorseRidingMatchPack[3300407]["RewardRidingPoint"] = {}
	tHorseRidingMatchPack[3300407]["RewardRidingPoint"]["Value"] = 1337
	tHorseRidingMatchPack[3300407]["LogId"] = 12000472
	tHorseRidingMatchPack[3300407]["Talk"] = tHorseRidingMatch_Text[3300407]
	tHorseRidingMatchPack[3300407]["RewardItem"] = {}
	tHorseRidingMatchPack[3300407]["RewardItem"][1] = {}
	tHorseRidingMatchPack[3300407]["RewardItem"][1]["Id"] = 3301255
	tHorseRidingMatchPack[3300407]["RewardItem"][1]["Attr"] = "0 120"
	
	tHorseRidingMatchPack[3300408] = {}
	tHorseRidingMatchPack[3300408]["DeleteItem"] = {}
	tHorseRidingMatchPack[3300408]["DeleteItem"][1] = {}
	tHorseRidingMatchPack[3300408]["DeleteItem"][1]["Id"] = 3300408
	tHorseRidingMatchPack[3300408]["RewardRidingPoint"] = {}
	tHorseRidingMatchPack[3300408]["RewardRidingPoint"]["Value"] = 1274
	tHorseRidingMatchPack[3300408]["LogId"] = 12000472
	tHorseRidingMatchPack[3300408]["Talk"] = tHorseRidingMatch_Text[3300408]
	tHorseRidingMatchPack[3300408]["RewardItem"] = {}
	tHorseRidingMatchPack[3300408]["RewardItem"][1] = {}
	tHorseRidingMatchPack[3300408]["RewardItem"][1]["Id"] = 3301255
	tHorseRidingMatchPack[3300408]["RewardItem"][1]["Attr"] = "0 120"
	
	tHorseRidingMatchPack[3300409] = {}
	tHorseRidingMatchPack[3300409]["DeleteItem"] = {}
	tHorseRidingMatchPack[3300409]["DeleteItem"][1] = {}
	tHorseRidingMatchPack[3300409]["DeleteItem"][1]["Id"] = 3300409
	tHorseRidingMatchPack[3300409]["RewardRidingPoint"] = {}
	tHorseRidingMatchPack[3300409]["RewardRidingPoint"]["Value"] = 1232
	tHorseRidingMatchPack[3300409]["LogId"] = 12000472
	tHorseRidingMatchPack[3300409]["Talk"] = tHorseRidingMatch_Text[3300409]
	tHorseRidingMatchPack[3300409]["RewardItem"] = {}
	tHorseRidingMatchPack[3300409]["RewardItem"][1] = {}
	tHorseRidingMatchPack[3300409]["RewardItem"][1]["Id"] = 3301255
	tHorseRidingMatchPack[3300409]["RewardItem"][1]["Attr"] = "0 120"
	
	tHorseRidingMatchPack[3300410] = {}
	tHorseRidingMatchPack[3300410]["DeleteItem"] = {}
	tHorseRidingMatchPack[3300410]["DeleteItem"][1] = {}
	tHorseRidingMatchPack[3300410]["DeleteItem"][1]["Id"] = 3300410
	tHorseRidingMatchPack[3300410]["RewardRidingPoint"] = {}
	tHorseRidingMatchPack[3300410]["RewardRidingPoint"]["Value"] = 1148
	tHorseRidingMatchPack[3300410]["LogId"] = 12000472
	tHorseRidingMatchPack[3300410]["Talk"] = tHorseRidingMatch_Text[3300410]
	tHorseRidingMatchPack[3300410]["RewardItem"] = {}
	tHorseRidingMatchPack[3300410]["RewardItem"][1] = {}
	tHorseRidingMatchPack[3300410]["RewardItem"][1]["Id"] = 3301255
	tHorseRidingMatchPack[3300410]["RewardItem"][1]["Attr"] = "0 100"
	
	tHorseRidingMatchPack[3300411] = {}
	tHorseRidingMatchPack[3300411]["DeleteItem"] = {}
	tHorseRidingMatchPack[3300411]["DeleteItem"][1] = {}
	tHorseRidingMatchPack[3300411]["DeleteItem"][1]["Id"] = 3300411
	tHorseRidingMatchPack[3300411]["RewardRidingPoint"] = {}
	tHorseRidingMatchPack[3300411]["RewardRidingPoint"]["Value"] = 1107
	tHorseRidingMatchPack[3300411]["LogId"] = 12000472
	tHorseRidingMatchPack[3300411]["Talk"] = tHorseRidingMatch_Text[3300411]
	tHorseRidingMatchPack[3300411]["RewardItem"] = {}
	tHorseRidingMatchPack[3300411]["RewardItem"][1] = {}
	tHorseRidingMatchPack[3300411]["RewardItem"][1]["Id"] = 3301255
	tHorseRidingMatchPack[3300411]["RewardItem"][1]["Attr"] = "0 100"
	
	tHorseRidingMatchPack[3300412] = {}
	tHorseRidingMatchPack[3300412]["DeleteItem"] = {}
	tHorseRidingMatchPack[3300412]["DeleteItem"][1] = {}
	tHorseRidingMatchPack[3300412]["DeleteItem"][1]["Id"] = 3300412
	tHorseRidingMatchPack[3300412]["RewardRidingPoint"] = {}
	tHorseRidingMatchPack[3300412]["RewardRidingPoint"]["Value"] = 1060
	tHorseRidingMatchPack[3300412]["LogId"] = 12000472
	tHorseRidingMatchPack[3300412]["Talk"] = tHorseRidingMatch_Text[3300412]
	tHorseRidingMatchPack[3300412]["RewardItem"] = {}
	tHorseRidingMatchPack[3300412]["RewardItem"][1] = {}
	tHorseRidingMatchPack[3300412]["RewardItem"][1]["Id"] = 3301255
	tHorseRidingMatchPack[3300412]["RewardItem"][1]["Attr"] = "0 100"
	
	tHorseRidingMatchPack[3300413] = {}
	tHorseRidingMatchPack[3300413]["DeleteItem"] = {}
	tHorseRidingMatchPack[3300413]["DeleteItem"][1] = {}
	tHorseRidingMatchPack[3300413]["DeleteItem"][1]["Id"] = 3300413
	tHorseRidingMatchPack[3300413]["RewardRidingPoint"] = {}
	tHorseRidingMatchPack[3300413]["RewardRidingPoint"]["Value"] = 1019
	tHorseRidingMatchPack[3300413]["LogId"] = 12000472
	tHorseRidingMatchPack[3300413]["Talk"] = tHorseRidingMatch_Text[3300413]
	tHorseRidingMatchPack[3300413]["RewardItem"] = {}
	tHorseRidingMatchPack[3300413]["RewardItem"][1] = {}
	tHorseRidingMatchPack[3300413]["RewardItem"][1]["Id"] = 3301255
	tHorseRidingMatchPack[3300413]["RewardItem"][1]["Attr"] = "0 100"
	
	tHorseRidingMatchPack[3300414] = {}
	tHorseRidingMatchPack[3300414]["DeleteItem"] = {}
	tHorseRidingMatchPack[3300414]["DeleteItem"][1] = {}
	tHorseRidingMatchPack[3300414]["DeleteItem"][1]["Id"] = 3300414
	tHorseRidingMatchPack[3300414]["RewardRidingPoint"] = {}
	tHorseRidingMatchPack[3300414]["RewardRidingPoint"]["Value"] = 979
	tHorseRidingMatchPack[3300414]["LogId"] = 12000472
	tHorseRidingMatchPack[3300414]["Talk"] = tHorseRidingMatch_Text[3300414]
	tHorseRidingMatchPack[3300414]["RewardItem"] = {}
	tHorseRidingMatchPack[3300414]["RewardItem"][1] = {}
	tHorseRidingMatchPack[3300414]["RewardItem"][1]["Id"] = 3301255
	tHorseRidingMatchPack[3300414]["RewardItem"][1]["Attr"] = "0 100"
	
	tHorseRidingMatchPack[3300415] = {}
	tHorseRidingMatchPack[3300415]["DeleteItem"] = {}
	tHorseRidingMatchPack[3300415]["DeleteItem"][1] = {}
	tHorseRidingMatchPack[3300415]["DeleteItem"][1]["Id"] = 3300415
	tHorseRidingMatchPack[3300415]["RewardRidingPoint"] = {}
	tHorseRidingMatchPack[3300415]["RewardRidingPoint"]["Value"] = 938
	tHorseRidingMatchPack[3300415]["LogId"] = 12000472
	tHorseRidingMatchPack[3300415]["Talk"] = tHorseRidingMatch_Text[3300415]
	tHorseRidingMatchPack[3300415]["RewardItem"] = {}
	tHorseRidingMatchPack[3300415]["RewardItem"][1] = {}
	tHorseRidingMatchPack[3300415]["RewardItem"][1]["Id"] = 3301255
	tHorseRidingMatchPack[3300415]["RewardItem"][1]["Attr"] = "0 100"
	
	tHorseRidingMatchPack[3300416] = {}
	tHorseRidingMatchPack[3300416]["DeleteItem"] = {}
	tHorseRidingMatchPack[3300416]["DeleteItem"][1] = {}
	tHorseRidingMatchPack[3300416]["DeleteItem"][1]["Id"] = 3300416
	tHorseRidingMatchPack[3300416]["RewardRidingPoint"] = {}
	tHorseRidingMatchPack[3300416]["RewardRidingPoint"]["Value"] = 891
	tHorseRidingMatchPack[3300416]["LogId"] = 12000472
	tHorseRidingMatchPack[3300416]["Talk"] = tHorseRidingMatch_Text[3300416]
	tHorseRidingMatchPack[3300416]["RewardItem"] = {}
	tHorseRidingMatchPack[3300416]["RewardItem"][1] = {}
	tHorseRidingMatchPack[3300416]["RewardItem"][1]["Id"] = 3301255
	tHorseRidingMatchPack[3300416]["RewardItem"][1]["Attr"] = "0 100"
	
	tHorseRidingMatchPack[3300417] = {}
	tHorseRidingMatchPack[3300417]["DeleteItem"] = {}
	tHorseRidingMatchPack[3300417]["DeleteItem"][1] = {}
	tHorseRidingMatchPack[3300417]["DeleteItem"][1]["Id"] = 3300417
	tHorseRidingMatchPack[3300417]["RewardRidingPoint"] = {}
	tHorseRidingMatchPack[3300417]["RewardRidingPoint"]["Value"] = 851
	tHorseRidingMatchPack[3300417]["LogId"] = 12000472
	tHorseRidingMatchPack[3300417]["Talk"] = tHorseRidingMatch_Text[3300417]
	tHorseRidingMatchPack[3300417]["RewardItem"] = {}
	tHorseRidingMatchPack[3300417]["RewardItem"][1] = {}
	tHorseRidingMatchPack[3300417]["RewardItem"][1]["Id"] = 3301255
	tHorseRidingMatchPack[3300417]["RewardItem"][1]["Attr"] = "0 100"
	
	tHorseRidingMatchPack[3300418] = {}
	tHorseRidingMatchPack[3300418]["DeleteItem"] = {}
	tHorseRidingMatchPack[3300418]["DeleteItem"][1] = {}
	tHorseRidingMatchPack[3300418]["DeleteItem"][1]["Id"] = 3300418
	tHorseRidingMatchPack[3300418]["RewardRidingPoint"] = {}
	tHorseRidingMatchPack[3300418]["RewardRidingPoint"]["Value"] = 810
	tHorseRidingMatchPack[3300418]["LogId"] = 12000472
	tHorseRidingMatchPack[3300418]["Talk"] = tHorseRidingMatch_Text[3300418]
	tHorseRidingMatchPack[3300418]["RewardItem"] = {}
	tHorseRidingMatchPack[3300418]["RewardItem"][1] = {}
	tHorseRidingMatchPack[3300418]["RewardItem"][1]["Id"] = 3301255
	tHorseRidingMatchPack[3300418]["RewardItem"][1]["Attr"] = "0 100"
	
	tHorseRidingMatchPack[3300419] = {}
	tHorseRidingMatchPack[3300419]["DeleteItem"] = {}
	tHorseRidingMatchPack[3300419]["DeleteItem"][1] = {}
	tHorseRidingMatchPack[3300419]["DeleteItem"][1]["Id"] = 3300419
	tHorseRidingMatchPack[3300419]["RewardRidingPoint"] = {}
	tHorseRidingMatchPack[3300419]["RewardRidingPoint"]["Value"] = 770
	tHorseRidingMatchPack[3300419]["LogId"] = 12000472
	tHorseRidingMatchPack[3300419]["Talk"] = tHorseRidingMatch_Text[3300419]
	tHorseRidingMatchPack[3300419]["RewardItem"] = {}
	tHorseRidingMatchPack[3300419]["RewardItem"][1] = {}
	tHorseRidingMatchPack[3300419]["RewardItem"][1]["Id"] = 3301255
	tHorseRidingMatchPack[3300419]["RewardItem"][1]["Attr"] = "0 100"
	
	tHorseRidingMatchPack[3300420] = {}
	tHorseRidingMatchPack[3300420]["DeleteItem"] = {}
	tHorseRidingMatchPack[3300420]["DeleteItem"][1] = {}
	tHorseRidingMatchPack[3300420]["DeleteItem"][1]["Id"] = 3300420
	tHorseRidingMatchPack[3300420]["RewardRidingPoint"] = {}
	tHorseRidingMatchPack[3300420]["RewardRidingPoint"]["Value"] = 669
	tHorseRidingMatchPack[3300420]["LogId"] = 12000472
	tHorseRidingMatchPack[3300420]["Talk"] = tHorseRidingMatch_Text[3300420]
	tHorseRidingMatchPack[3300420]["RewardItem"] = {}
	tHorseRidingMatchPack[3300420]["RewardItem"][1] = {}
	tHorseRidingMatchPack[3300420]["RewardItem"][1]["Id"] = 3301255
	tHorseRidingMatchPack[3300420]["RewardItem"][1]["Attr"] = "0 90"
	
	tHorseRidingMatchPack[3300421] = {}
	tHorseRidingMatchPack[3300421]["DeleteItem"] = {}
	tHorseRidingMatchPack[3300421]["DeleteItem"][1] = {}
	tHorseRidingMatchPack[3300421]["DeleteItem"][1]["Id"] = 3300421
	tHorseRidingMatchPack[3300421]["RewardRidingPoint"] = {}
	tHorseRidingMatchPack[3300421]["RewardRidingPoint"]["Value"] = 650
	tHorseRidingMatchPack[3300421]["LogId"] = 12000472
	tHorseRidingMatchPack[3300421]["Talk"] = tHorseRidingMatch_Text[3300421]
	tHorseRidingMatchPack[3300421]["RewardItem"] = {}
	tHorseRidingMatchPack[3300421]["RewardItem"][1] = {}
	tHorseRidingMatchPack[3300421]["RewardItem"][1]["Id"] = 3301255
	tHorseRidingMatchPack[3300421]["RewardItem"][1]["Attr"] = "0 90"
	
	tHorseRidingMatchPack[3300422] = {}
	tHorseRidingMatchPack[3300422]["DeleteItem"] = {}
	tHorseRidingMatchPack[3300422]["DeleteItem"][1] = {}
	tHorseRidingMatchPack[3300422]["DeleteItem"][1]["Id"] = 3300422
	tHorseRidingMatchPack[3300422]["RewardRidingPoint"] = {}
	tHorseRidingMatchPack[3300422]["RewardRidingPoint"]["Value"] = 625
	tHorseRidingMatchPack[3300422]["LogId"] = 12000472
	tHorseRidingMatchPack[3300422]["Talk"] = tHorseRidingMatch_Text[3300422]
	tHorseRidingMatchPack[3300422]["RewardItem"] = {}
	tHorseRidingMatchPack[3300422]["RewardItem"][1] = {}
	tHorseRidingMatchPack[3300422]["RewardItem"][1]["Id"] = 3301255
	tHorseRidingMatchPack[3300422]["RewardItem"][1]["Attr"] = "0 90"
	
	tHorseRidingMatchPack[3300423] = {}
	tHorseRidingMatchPack[3300423]["DeleteItem"] = {}
	tHorseRidingMatchPack[3300423]["DeleteItem"][1] = {}
	tHorseRidingMatchPack[3300423]["DeleteItem"][1]["Id"] = 3300423
	tHorseRidingMatchPack[3300423]["RewardRidingPoint"] = {}
	tHorseRidingMatchPack[3300423]["RewardRidingPoint"]["Value"] = 594
	tHorseRidingMatchPack[3300423]["LogId"] = 12000472
	tHorseRidingMatchPack[3300423]["Talk"] = tHorseRidingMatch_Text[3300423]
	tHorseRidingMatchPack[3300423]["RewardItem"] = {}
	tHorseRidingMatchPack[3300423]["RewardItem"][1] = {}
	tHorseRidingMatchPack[3300423]["RewardItem"][1]["Id"] = 3301255
	tHorseRidingMatchPack[3300423]["RewardItem"][1]["Attr"] = "0 90"
	
	tHorseRidingMatchPack[3300424] = {}
	tHorseRidingMatchPack[3300424]["DeleteItem"] = {}
	tHorseRidingMatchPack[3300424]["DeleteItem"][1] = {}
	tHorseRidingMatchPack[3300424]["DeleteItem"][1]["Id"] = 3300424
	tHorseRidingMatchPack[3300424]["RewardRidingPoint"] = {}
	tHorseRidingMatchPack[3300424]["RewardRidingPoint"]["Value"] = 569
	tHorseRidingMatchPack[3300424]["LogId"] = 12000472
	tHorseRidingMatchPack[3300424]["Talk"] = tHorseRidingMatch_Text[3300424]
	tHorseRidingMatchPack[3300424]["RewardItem"] = {}
	tHorseRidingMatchPack[3300424]["RewardItem"][1] = {}
	tHorseRidingMatchPack[3300424]["RewardItem"][1]["Id"] = 3301255
	tHorseRidingMatchPack[3300424]["RewardItem"][1]["Attr"] = "0 90"
	
	tHorseRidingMatchPack[3300425] = {}
	tHorseRidingMatchPack[3300425]["DeleteItem"] = {}
	tHorseRidingMatchPack[3300425]["DeleteItem"][1] = {}
	tHorseRidingMatchPack[3300425]["DeleteItem"][1]["Id"] = 3300425
	tHorseRidingMatchPack[3300425]["RewardRidingPoint"] = {}
	tHorseRidingMatchPack[3300425]["RewardRidingPoint"]["Value"] = 544
	tHorseRidingMatchPack[3300425]["LogId"] = 12000472
	tHorseRidingMatchPack[3300425]["Talk"] = tHorseRidingMatch_Text[3300425]
	tHorseRidingMatchPack[3300425]["RewardItem"] = {}
	tHorseRidingMatchPack[3300425]["RewardItem"][1] = {}
	tHorseRidingMatchPack[3300425]["RewardItem"][1]["Id"] = 3301255
	tHorseRidingMatchPack[3300425]["RewardItem"][1]["Attr"] = "0 80"
	
	tHorseRidingMatchPack[3300426] = {}
	tHorseRidingMatchPack[3300426]["DeleteItem"] = {}
	tHorseRidingMatchPack[3300426]["DeleteItem"][1] = {}
	tHorseRidingMatchPack[3300426]["DeleteItem"][1]["Id"] = 3300426
	tHorseRidingMatchPack[3300426]["RewardRidingPoint"] = {}
	tHorseRidingMatchPack[3300426]["RewardRidingPoint"]["Value"] = 525
	tHorseRidingMatchPack[3300426]["LogId"] = 12000472
	tHorseRidingMatchPack[3300426]["Talk"] = tHorseRidingMatch_Text[3300426]
	tHorseRidingMatchPack[3300426]["RewardItem"] = {}
	tHorseRidingMatchPack[3300426]["RewardItem"][1] = {}
	tHorseRidingMatchPack[3300426]["RewardItem"][1]["Id"] = 3301255
	tHorseRidingMatchPack[3300426]["RewardItem"][1]["Attr"] = "0 80"
	
	tHorseRidingMatchPack[3300427] = {}
	tHorseRidingMatchPack[3300427]["DeleteItem"] = {}
	tHorseRidingMatchPack[3300427]["DeleteItem"][1] = {}
	tHorseRidingMatchPack[3300427]["DeleteItem"][1]["Id"] = 3300427
	tHorseRidingMatchPack[3300427]["RewardRidingPoint"] = {}
	tHorseRidingMatchPack[3300427]["RewardRidingPoint"]["Value"] = 506
	tHorseRidingMatchPack[3300427]["LogId"] = 12000472
	tHorseRidingMatchPack[3300427]["Talk"] = tHorseRidingMatch_Text[3300427]
	tHorseRidingMatchPack[3300427]["RewardItem"] = {}
	tHorseRidingMatchPack[3300427]["RewardItem"][1] = {}
	tHorseRidingMatchPack[3300427]["RewardItem"][1]["Id"] = 3301255
	tHorseRidingMatchPack[3300427]["RewardItem"][1]["Attr"] = "0 80"
	
	tHorseRidingMatchPack[3300428] = {}
	tHorseRidingMatchPack[3300428]["DeleteItem"] = {}
	tHorseRidingMatchPack[3300428]["DeleteItem"][1] = {}
	tHorseRidingMatchPack[3300428]["DeleteItem"][1]["Id"] = 3300428
	tHorseRidingMatchPack[3300428]["RewardRidingPoint"] = {}
	tHorseRidingMatchPack[3300428]["RewardRidingPoint"]["Value"] = 494
	tHorseRidingMatchPack[3300428]["LogId"] = 12000472
	tHorseRidingMatchPack[3300428]["Talk"] = tHorseRidingMatch_Text[3300428]
	tHorseRidingMatchPack[3300428]["RewardItem"] = {}
	tHorseRidingMatchPack[3300428]["RewardItem"][1] = {}
	tHorseRidingMatchPack[3300428]["RewardItem"][1]["Id"] = 3301255
	tHorseRidingMatchPack[3300428]["RewardItem"][1]["Attr"] = "0 80"
	
	tHorseRidingMatchPack[3300429] = {}
	tHorseRidingMatchPack[3300429]["DeleteItem"] = {}
	tHorseRidingMatchPack[3300429]["DeleteItem"][1] = {}
	tHorseRidingMatchPack[3300429]["DeleteItem"][1]["Id"] = 3300429
	tHorseRidingMatchPack[3300429]["RewardRidingPoint"] = {}
	tHorseRidingMatchPack[3300429]["RewardRidingPoint"]["Value"] = 469
	tHorseRidingMatchPack[3300429]["LogId"] = 12000472
	tHorseRidingMatchPack[3300429]["Talk"] = tHorseRidingMatch_Text[3300429]
	tHorseRidingMatchPack[3300429]["RewardItem"] = {}
	tHorseRidingMatchPack[3300429]["RewardItem"][1] = {}
	tHorseRidingMatchPack[3300429]["RewardItem"][1]["Id"] = 3301255
	tHorseRidingMatchPack[3300429]["RewardItem"][1]["Attr"] = "0 80"
	
	tHorseRidingMatchPack[3300430] = {}
	tHorseRidingMatchPack[3300430]["DeleteItem"] = {}
	tHorseRidingMatchPack[3300430]["DeleteItem"][1] = {}
	tHorseRidingMatchPack[3300430]["DeleteItem"][1]["Id"] = 3300430
	tHorseRidingMatchPack[3300430]["RewardRidingPoint"] = {}
	tHorseRidingMatchPack[3300430]["RewardRidingPoint"]["Value"] = 450
	tHorseRidingMatchPack[3300430]["LogId"] = 12000472
	tHorseRidingMatchPack[3300430]["Talk"] = tHorseRidingMatch_Text[3300430]
	tHorseRidingMatchPack[3300430]["RewardItem"] = {}
	tHorseRidingMatchPack[3300430]["RewardItem"][1] = {}
	tHorseRidingMatchPack[3300430]["RewardItem"][1]["Id"] = 3301255
	tHorseRidingMatchPack[3300430]["RewardItem"][1]["Attr"] = "0 70"
	
	tHorseRidingMatchPack[3300431] = {}
	tHorseRidingMatchPack[3300431]["DeleteItem"] = {}
	tHorseRidingMatchPack[3300431]["DeleteItem"][1] = {}
	tHorseRidingMatchPack[3300431]["DeleteItem"][1]["Id"] = 3300431
	tHorseRidingMatchPack[3300431]["RewardRidingPoint"] = {}
	tHorseRidingMatchPack[3300431]["RewardRidingPoint"]["Value"] = 438
	tHorseRidingMatchPack[3300431]["LogId"] = 12000472
	tHorseRidingMatchPack[3300431]["Talk"] = tHorseRidingMatch_Text[3300431]
	tHorseRidingMatchPack[3300431]["RewardItem"] = {}
	tHorseRidingMatchPack[3300431]["RewardItem"][1] = {}
	tHorseRidingMatchPack[3300431]["RewardItem"][1]["Id"] = 3301255
	tHorseRidingMatchPack[3300431]["RewardItem"][1]["Attr"] = "0 70"
	
	tHorseRidingMatchPack[3300432] = {}
	tHorseRidingMatchPack[3300432]["DeleteItem"] = {}
	tHorseRidingMatchPack[3300432]["DeleteItem"][1] = {}
	tHorseRidingMatchPack[3300432]["DeleteItem"][1]["Id"] = 3300432
	tHorseRidingMatchPack[3300432]["RewardRidingPoint"] = {}
	tHorseRidingMatchPack[3300432]["RewardRidingPoint"]["Value"] = 413
	tHorseRidingMatchPack[3300432]["LogId"] = 12000472
	tHorseRidingMatchPack[3300432]["Talk"] = tHorseRidingMatch_Text[3300432]
	tHorseRidingMatchPack[3300432]["RewardItem"] = {}
	tHorseRidingMatchPack[3300432]["RewardItem"][1] = {}
	tHorseRidingMatchPack[3300432]["RewardItem"][1]["Id"] = 3301255
	tHorseRidingMatchPack[3300432]["RewardItem"][1]["Attr"] = "0 70"
	
	tHorseRidingMatchPack[3300433] = {}
	tHorseRidingMatchPack[3300433]["DeleteItem"] = {}
	tHorseRidingMatchPack[3300433]["DeleteItem"][1] = {}
	tHorseRidingMatchPack[3300433]["DeleteItem"][1]["Id"] = 3300433
	tHorseRidingMatchPack[3300433]["RewardRidingPoint"] = {}
	tHorseRidingMatchPack[3300433]["RewardRidingPoint"]["Value"] = 400
	tHorseRidingMatchPack[3300433]["LogId"] = 12000472
	tHorseRidingMatchPack[3300433]["Talk"] = tHorseRidingMatch_Text[3300433]
	tHorseRidingMatchPack[3300433]["RewardItem"] = {}
	tHorseRidingMatchPack[3300433]["RewardItem"][1] = {}
	tHorseRidingMatchPack[3300433]["RewardItem"][1]["Id"] = 3301255
	tHorseRidingMatchPack[3300433]["RewardItem"][1]["Attr"] = "0 70"
	
	tHorseRidingMatchPack[3300434] = {}
	tHorseRidingMatchPack[3300434]["DeleteItem"] = {}
	tHorseRidingMatchPack[3300434]["DeleteItem"][1] = {}
	tHorseRidingMatchPack[3300434]["DeleteItem"][1]["Id"] = 3300434
	tHorseRidingMatchPack[3300434]["RewardRidingPoint"] = {}
	tHorseRidingMatchPack[3300434]["RewardRidingPoint"]["Value"] = 381
	tHorseRidingMatchPack[3300434]["LogId"] = 12000472
	tHorseRidingMatchPack[3300434]["Talk"] = tHorseRidingMatch_Text[3300434]
	tHorseRidingMatchPack[3300434]["RewardItem"] = {}
	tHorseRidingMatchPack[3300434]["RewardItem"][1] = {}
	tHorseRidingMatchPack[3300434]["RewardItem"][1]["Id"] = 3301255
	tHorseRidingMatchPack[3300434]["RewardItem"][1]["Attr"] = "0 70"
	
	tHorseRidingMatchPack[3300435] = {}
	tHorseRidingMatchPack[3300435]["DeleteItem"] = {}
	tHorseRidingMatchPack[3300435]["DeleteItem"][1] = {}
	tHorseRidingMatchPack[3300435]["DeleteItem"][1]["Id"] = 3300435
	tHorseRidingMatchPack[3300435]["RewardRidingPoint"] = {}
	tHorseRidingMatchPack[3300435]["RewardRidingPoint"]["Value"] = 356
	tHorseRidingMatchPack[3300435]["LogId"] = 12000472
	tHorseRidingMatchPack[3300435]["Talk"] = tHorseRidingMatch_Text[3300435]
	tHorseRidingMatchPack[3300435]["RewardItem"] = {}
	tHorseRidingMatchPack[3300435]["RewardItem"][1] = {}
	tHorseRidingMatchPack[3300435]["RewardItem"][1]["Id"] = 3301255
	tHorseRidingMatchPack[3300435]["RewardItem"][1]["Attr"] = "0 60"
	
	tHorseRidingMatchPack[3300436] = {}
	tHorseRidingMatchPack[3300436]["DeleteItem"] = {}
	tHorseRidingMatchPack[3300436]["DeleteItem"][1] = {}
	tHorseRidingMatchPack[3300436]["DeleteItem"][1]["Id"] = 3300436
	tHorseRidingMatchPack[3300436]["RewardRidingPoint"] = {}
	tHorseRidingMatchPack[3300436]["RewardRidingPoint"]["Value"] = 350
	tHorseRidingMatchPack[3300436]["LogId"] = 12000472
	tHorseRidingMatchPack[3300436]["Talk"] = tHorseRidingMatch_Text[3300436]
	tHorseRidingMatchPack[3300436]["RewardItem"] = {}
	tHorseRidingMatchPack[3300436]["RewardItem"][1] = {}
	tHorseRidingMatchPack[3300436]["RewardItem"][1]["Id"] = 3301255
	tHorseRidingMatchPack[3300436]["RewardItem"][1]["Attr"] = "0 60"
	
	tHorseRidingMatchPack[3300437] = {}
	tHorseRidingMatchPack[3300437]["DeleteItem"] = {}
	tHorseRidingMatchPack[3300437]["DeleteItem"][1] = {}
	tHorseRidingMatchPack[3300437]["DeleteItem"][1]["Id"] = 3300437
	tHorseRidingMatchPack[3300437]["RewardRidingPoint"] = {}
	tHorseRidingMatchPack[3300437]["RewardRidingPoint"]["Value"] = 338
	tHorseRidingMatchPack[3300437]["LogId"] = 12000472
	tHorseRidingMatchPack[3300437]["Talk"] = tHorseRidingMatch_Text[3300437]
	tHorseRidingMatchPack[3300437]["RewardItem"] = {}
	tHorseRidingMatchPack[3300437]["RewardItem"][1] = {}
	tHorseRidingMatchPack[3300437]["RewardItem"][1]["Id"] = 3301255
	tHorseRidingMatchPack[3300437]["RewardItem"][1]["Attr"] = "0 60"
	
	tHorseRidingMatchPack[3300438] = {}
	tHorseRidingMatchPack[3300438]["DeleteItem"] = {}
	tHorseRidingMatchPack[3300438]["DeleteItem"][1] = {}
	tHorseRidingMatchPack[3300438]["DeleteItem"][1]["Id"] = 3300438
	tHorseRidingMatchPack[3300438]["RewardRidingPoint"] = {}
	tHorseRidingMatchPack[3300438]["RewardRidingPoint"]["Value"] = 319
	tHorseRidingMatchPack[3300438]["LogId"] = 12000472
	tHorseRidingMatchPack[3300438]["Talk"] = tHorseRidingMatch_Text[3300438]
	tHorseRidingMatchPack[3300438]["RewardItem"] = {}
	tHorseRidingMatchPack[3300438]["RewardItem"][1] = {}
	tHorseRidingMatchPack[3300438]["RewardItem"][1]["Id"] = 3301255
	tHorseRidingMatchPack[3300438]["RewardItem"][1]["Attr"] = "0 60"
	
	tHorseRidingMatchPack[3300439] = {}
	tHorseRidingMatchPack[3300439]["DeleteItem"] = {}
	tHorseRidingMatchPack[3300439]["DeleteItem"][1] = {}
	tHorseRidingMatchPack[3300439]["DeleteItem"][1]["Id"] = 3300439
	tHorseRidingMatchPack[3300439]["RewardRidingPoint"] = {}
	tHorseRidingMatchPack[3300439]["RewardRidingPoint"]["Value"] = 313
	tHorseRidingMatchPack[3300439]["LogId"] = 12000472
	tHorseRidingMatchPack[3300439]["Talk"] = tHorseRidingMatch_Text[3300439]
	tHorseRidingMatchPack[3300439]["RewardItem"] = {}
	tHorseRidingMatchPack[3300439]["RewardItem"][1] = {}
	tHorseRidingMatchPack[3300439]["RewardItem"][1]["Id"] = 3301255
	tHorseRidingMatchPack[3300439]["RewardItem"][1]["Attr"] = "0 60"
	
	tHorseRidingMatchPack[3300440] = {}
	tHorseRidingMatchPack[3300440]["DeleteItem"] = {}
	tHorseRidingMatchPack[3300440]["DeleteItem"][1] = {}
	tHorseRidingMatchPack[3300440]["DeleteItem"][1]["Id"] = 3300440
	tHorseRidingMatchPack[3300440]["RewardRidingPoint"] = {}
	tHorseRidingMatchPack[3300440]["RewardRidingPoint"]["Value"] = 294
	tHorseRidingMatchPack[3300440]["LogId"] = 12000472
	tHorseRidingMatchPack[3300440]["Talk"] = tHorseRidingMatch_Text[3300440]
	tHorseRidingMatchPack[3300440]["RewardItem"] = {}
	tHorseRidingMatchPack[3300440]["RewardItem"][1] = {}
	tHorseRidingMatchPack[3300440]["RewardItem"][1]["Id"] = 3301255
	tHorseRidingMatchPack[3300440]["RewardItem"][1]["Attr"] = "0 50"
	
	tHorseRidingMatchPack[3300441] = {}
	tHorseRidingMatchPack[3300441]["DeleteItem"] = {}
	tHorseRidingMatchPack[3300441]["DeleteItem"][1] = {}
	tHorseRidingMatchPack[3300441]["DeleteItem"][1]["Id"] = 3300441
	tHorseRidingMatchPack[3300441]["RewardRidingPoint"] = {}
	tHorseRidingMatchPack[3300441]["RewardRidingPoint"]["Value"] = 288
	tHorseRidingMatchPack[3300441]["LogId"] = 12000472
	tHorseRidingMatchPack[3300441]["Talk"] = tHorseRidingMatch_Text[3300441]
	tHorseRidingMatchPack[3300441]["RewardItem"] = {}
	tHorseRidingMatchPack[3300441]["RewardItem"][1] = {}
	tHorseRidingMatchPack[3300441]["RewardItem"][1]["Id"] = 3301255
	tHorseRidingMatchPack[3300441]["RewardItem"][1]["Attr"] = "0 50"
	
	tHorseRidingMatchPack[3300442] = {}
	tHorseRidingMatchPack[3300442]["DeleteItem"] = {}
	tHorseRidingMatchPack[3300442]["DeleteItem"][1] = {}
	tHorseRidingMatchPack[3300442]["DeleteItem"][1]["Id"] = 3300442
	tHorseRidingMatchPack[3300442]["RewardRidingPoint"] = {}
	tHorseRidingMatchPack[3300442]["RewardRidingPoint"]["Value"] = 281
	tHorseRidingMatchPack[3300442]["LogId"] = 12000472
	tHorseRidingMatchPack[3300442]["Talk"] = tHorseRidingMatch_Text[3300442]
	tHorseRidingMatchPack[3300442]["RewardItem"] = {}
	tHorseRidingMatchPack[3300442]["RewardItem"][1] = {}
	tHorseRidingMatchPack[3300442]["RewardItem"][1]["Id"] = 3301255
	tHorseRidingMatchPack[3300442]["RewardItem"][1]["Attr"] = "0 50"
	
	tHorseRidingMatchPack[3300443] = {}
	tHorseRidingMatchPack[3300443]["DeleteItem"] = {}
	tHorseRidingMatchPack[3300443]["DeleteItem"][1] = {}
	tHorseRidingMatchPack[3300443]["DeleteItem"][1]["Id"] = 3300443
	tHorseRidingMatchPack[3300443]["RewardRidingPoint"] = {}
	tHorseRidingMatchPack[3300443]["RewardRidingPoint"]["Value"] = 275
	tHorseRidingMatchPack[3300443]["LogId"] = 12000472
	tHorseRidingMatchPack[3300443]["Talk"] = tHorseRidingMatch_Text[3300443]
	tHorseRidingMatchPack[3300443]["RewardItem"] = {}
	tHorseRidingMatchPack[3300443]["RewardItem"][1] = {}
	tHorseRidingMatchPack[3300443]["RewardItem"][1]["Id"] = 3301255
	tHorseRidingMatchPack[3300443]["RewardItem"][1]["Attr"] = "0 50"
	
	tHorseRidingMatchPack[3300444] = {}
	tHorseRidingMatchPack[3300444]["DeleteItem"] = {}
	tHorseRidingMatchPack[3300444]["DeleteItem"][1] = {}
	tHorseRidingMatchPack[3300444]["DeleteItem"][1]["Id"] = 3300444
	tHorseRidingMatchPack[3300444]["RewardRidingPoint"] = {}
	tHorseRidingMatchPack[3300444]["RewardRidingPoint"]["Value"] = 263
	tHorseRidingMatchPack[3300444]["LogId"] = 12000472
	tHorseRidingMatchPack[3300444]["Talk"] = tHorseRidingMatch_Text[3300444]
	tHorseRidingMatchPack[3300444]["RewardItem"] = {}
	tHorseRidingMatchPack[3300444]["RewardItem"][1] = {}
	tHorseRidingMatchPack[3300444]["RewardItem"][1]["Id"] = 3301255
	tHorseRidingMatchPack[3300444]["RewardItem"][1]["Attr"] = "0 50"
	
	tHorseRidingMatchPack[3300445] = {}
	tHorseRidingMatchPack[3300445]["DeleteItem"] = {}
	tHorseRidingMatchPack[3300445]["DeleteItem"][1] = {}
	tHorseRidingMatchPack[3300445]["DeleteItem"][1]["Id"] = 3300445
	tHorseRidingMatchPack[3300445]["RewardRidingPoint"] = {}
	tHorseRidingMatchPack[3300445]["RewardRidingPoint"]["Value"] = 256
	tHorseRidingMatchPack[3300445]["LogId"] = 12000472
	tHorseRidingMatchPack[3300445]["Talk"] = tHorseRidingMatch_Text[3300445]
	tHorseRidingMatchPack[3300445]["RewardItem"] = {}
	tHorseRidingMatchPack[3300445]["RewardItem"][1] = {}
	tHorseRidingMatchPack[3300445]["RewardItem"][1]["Id"] = 3301255
	tHorseRidingMatchPack[3300445]["RewardItem"][1]["Attr"] = "0 50"
	
	tHorseRidingMatchPack[3300446] = {}
	tHorseRidingMatchPack[3300446]["DeleteItem"] = {}
	tHorseRidingMatchPack[3300446]["DeleteItem"][1] = {}
	tHorseRidingMatchPack[3300446]["DeleteItem"][1]["Id"] = 3300446
	tHorseRidingMatchPack[3300446]["RewardRidingPoint"] = {}
	tHorseRidingMatchPack[3300446]["RewardRidingPoint"]["Value"] = 250
	tHorseRidingMatchPack[3300446]["LogId"] = 12000472
	tHorseRidingMatchPack[3300446]["Talk"] = tHorseRidingMatch_Text[3300446]
	tHorseRidingMatchPack[3300446]["RewardItem"] = {}
	tHorseRidingMatchPack[3300446]["RewardItem"][1] = {}
	tHorseRidingMatchPack[3300446]["RewardItem"][1]["Id"] = 3301255
	tHorseRidingMatchPack[3300446]["RewardItem"][1]["Attr"] = "0 50"
	
	tHorseRidingMatchPack[3300447] = {}
	tHorseRidingMatchPack[3300447]["DeleteItem"] = {}
	tHorseRidingMatchPack[3300447]["DeleteItem"][1] = {}
	tHorseRidingMatchPack[3300447]["DeleteItem"][1]["Id"] = 3300447
	tHorseRidingMatchPack[3300447]["RewardRidingPoint"] = {}
	tHorseRidingMatchPack[3300447]["RewardRidingPoint"]["Value"] = 244
	tHorseRidingMatchPack[3300447]["LogId"] = 12000472
	tHorseRidingMatchPack[3300447]["Talk"] = tHorseRidingMatch_Text[3300447]
	tHorseRidingMatchPack[3300447]["RewardItem"] = {}
	tHorseRidingMatchPack[3300447]["RewardItem"][1] = {}
	tHorseRidingMatchPack[3300447]["RewardItem"][1]["Id"] = 3301255
	tHorseRidingMatchPack[3300447]["RewardItem"][1]["Attr"] = "0 50"
	
	tHorseRidingMatchPack[3300448] = {}
	tHorseRidingMatchPack[3300448]["DeleteItem"] = {}
	tHorseRidingMatchPack[3300448]["DeleteItem"][1] = {}
	tHorseRidingMatchPack[3300448]["DeleteItem"][1]["Id"] = 3300448
	tHorseRidingMatchPack[3300448]["RewardRidingPoint"] = {}
	tHorseRidingMatchPack[3300448]["RewardRidingPoint"]["Value"] = 231
	tHorseRidingMatchPack[3300448]["LogId"] = 12000472
	tHorseRidingMatchPack[3300448]["Talk"] = tHorseRidingMatch_Text[3300448]
	tHorseRidingMatchPack[3300448]["RewardItem"] = {}
	tHorseRidingMatchPack[3300448]["RewardItem"][1] = {}
	tHorseRidingMatchPack[3300448]["RewardItem"][1]["Id"] = 3301255
	tHorseRidingMatchPack[3300448]["RewardItem"][1]["Attr"] = "0 50"
	
	tHorseRidingMatchPack[3300449] = {}
	tHorseRidingMatchPack[3300449]["DeleteItem"] = {}
	tHorseRidingMatchPack[3300449]["DeleteItem"][1] = {}
	tHorseRidingMatchPack[3300449]["DeleteItem"][1]["Id"] = 3300449
	tHorseRidingMatchPack[3300449]["RewardRidingPoint"] = {}
	tHorseRidingMatchPack[3300449]["RewardRidingPoint"]["Value"] = 222
	tHorseRidingMatchPack[3300449]["LogId"] = 12000472
	tHorseRidingMatchPack[3300449]["Talk"] = tHorseRidingMatch_Text[3300449]
	tHorseRidingMatchPack[3300449]["RewardItem"] = {}
	tHorseRidingMatchPack[3300449]["RewardItem"][1] = {}
	tHorseRidingMatchPack[3300449]["RewardItem"][1]["Id"] = 3301255
	tHorseRidingMatchPack[3300449]["RewardItem"][1]["Attr"] = "0 50"
	
	tHorseRidingMatchPack[3300450] = {}
	tHorseRidingMatchPack[3300450]["DeleteItem"] = {}
	tHorseRidingMatchPack[3300450]["DeleteItem"][1] = {}
	tHorseRidingMatchPack[3300450]["DeleteItem"][1]["Id"] = 3300450
	tHorseRidingMatchPack[3300450]["RewardRidingPoint"] = {}
	tHorseRidingMatchPack[3300450]["RewardRidingPoint"]["Value"] = 216
	tHorseRidingMatchPack[3300450]["LogId"] = 12000472
	tHorseRidingMatchPack[3300450]["Talk"] = tHorseRidingMatch_Text[3300450]
	tHorseRidingMatchPack[3300450]["RewardItem"] = {}
	tHorseRidingMatchPack[3300450]["RewardItem"][1] = {}
	tHorseRidingMatchPack[3300450]["RewardItem"][1]["Id"] = 3301255
	tHorseRidingMatchPack[3300450]["RewardItem"][1]["Attr"] = "0 50"
	
	tHorseRidingMatchPack[3300451] = {}
	tHorseRidingMatchPack[3300451]["DeleteItem"] = {}
	tHorseRidingMatchPack[3300451]["DeleteItem"][1] = {}
	tHorseRidingMatchPack[3300451]["DeleteItem"][1]["Id"] = 3300451
	tHorseRidingMatchPack[3300451]["RewardRidingPoint"] = {}
	tHorseRidingMatchPack[3300451]["RewardRidingPoint"]["Value"] = 210
	tHorseRidingMatchPack[3300451]["LogId"] = 12000472
	tHorseRidingMatchPack[3300451]["Talk"] = tHorseRidingMatch_Text[3300451]
	tHorseRidingMatchPack[3300451]["RewardItem"] = {}
	tHorseRidingMatchPack[3300451]["RewardItem"][1] = {}
	tHorseRidingMatchPack[3300451]["RewardItem"][1]["Id"] = 3301255
	tHorseRidingMatchPack[3300451]["RewardItem"][1]["Attr"] = "0 50"
	
	tHorseRidingMatchPack[3300452] = {}
	tHorseRidingMatchPack[3300452]["DeleteItem"] = {}
	tHorseRidingMatchPack[3300452]["DeleteItem"][1] = {}
	tHorseRidingMatchPack[3300452]["DeleteItem"][1]["Id"] = 3300452
	tHorseRidingMatchPack[3300452]["RewardRidingPoint"] = {}
	tHorseRidingMatchPack[3300452]["RewardRidingPoint"]["Value"] = 204
	tHorseRidingMatchPack[3300452]["LogId"] = 12000472
	tHorseRidingMatchPack[3300452]["Talk"] = tHorseRidingMatch_Text[3300452]
	tHorseRidingMatchPack[3300452]["RewardItem"] = {}
	tHorseRidingMatchPack[3300452]["RewardItem"][1] = {}
	tHorseRidingMatchPack[3300452]["RewardItem"][1]["Id"] = 3301255
	tHorseRidingMatchPack[3300452]["RewardItem"][1]["Attr"] = "0 50"
	
	tHorseRidingMatchPack[3300453] = {}
	tHorseRidingMatchPack[3300453]["DeleteItem"] = {}
	tHorseRidingMatchPack[3300453]["DeleteItem"][1] = {}
	tHorseRidingMatchPack[3300453]["DeleteItem"][1]["Id"] = 3300453
	tHorseRidingMatchPack[3300453]["RewardRidingPoint"] = {}
	tHorseRidingMatchPack[3300453]["RewardRidingPoint"]["Value"] = 192
	tHorseRidingMatchPack[3300453]["LogId"] = 12000472
	tHorseRidingMatchPack[3300453]["Talk"] = tHorseRidingMatch_Text[3300453]
	tHorseRidingMatchPack[3300453]["RewardItem"] = {}
	tHorseRidingMatchPack[3300453]["RewardItem"][1] = {}
	tHorseRidingMatchPack[3300453]["RewardItem"][1]["Id"] = 3301255
	tHorseRidingMatchPack[3300453]["RewardItem"][1]["Attr"] = "0 50"
	
	tHorseRidingMatchPack[3300454] = {}
	tHorseRidingMatchPack[3300454]["DeleteItem"] = {}
	tHorseRidingMatchPack[3300454]["DeleteItem"][1] = {}
	tHorseRidingMatchPack[3300454]["DeleteItem"][1]["Id"] = 3300454
	tHorseRidingMatchPack[3300454]["RewardRidingPoint"] = {}
	tHorseRidingMatchPack[3300454]["RewardRidingPoint"]["Value"] = 186
	tHorseRidingMatchPack[3300454]["LogId"] = 12000472
	tHorseRidingMatchPack[3300454]["Talk"] = tHorseRidingMatch_Text[3300454]
	tHorseRidingMatchPack[3300454]["RewardItem"] = {}
	tHorseRidingMatchPack[3300454]["RewardItem"][1] = {}
	tHorseRidingMatchPack[3300454]["RewardItem"][1]["Id"] = 3301255
	tHorseRidingMatchPack[3300454]["RewardItem"][1]["Attr"] = "0 50"
	
	tHorseRidingMatchPack[3300455] = {}
	tHorseRidingMatchPack[3300455]["DeleteItem"] = {}
	tHorseRidingMatchPack[3300455]["DeleteItem"][1] = {}
	tHorseRidingMatchPack[3300455]["DeleteItem"][1]["Id"] = 3300455
	tHorseRidingMatchPack[3300455]["RewardRidingPoint"] = {}
	tHorseRidingMatchPack[3300455]["RewardRidingPoint"]["Value"] = 180
	tHorseRidingMatchPack[3300455]["LogId"] = 12000472
	tHorseRidingMatchPack[3300455]["Talk"] = tHorseRidingMatch_Text[3300455]
	tHorseRidingMatchPack[3300455]["RewardItem"] = {}
	tHorseRidingMatchPack[3300455]["RewardItem"][1] = {}
	tHorseRidingMatchPack[3300455]["RewardItem"][1]["Id"] = 3301255
	tHorseRidingMatchPack[3300455]["RewardItem"][1]["Attr"] = "0 50"
	
	tHorseRidingMatchPack[3300456] = {}
	tHorseRidingMatchPack[3300456]["DeleteItem"] = {}
	tHorseRidingMatchPack[3300456]["DeleteItem"][1] = {}
	tHorseRidingMatchPack[3300456]["DeleteItem"][1]["Id"] = 3300456
	tHorseRidingMatchPack[3300456]["RewardRidingPoint"] = {}
	tHorseRidingMatchPack[3300456]["RewardRidingPoint"]["Value"] = 174
	tHorseRidingMatchPack[3300456]["LogId"] = 12000472
	tHorseRidingMatchPack[3300456]["Talk"] = tHorseRidingMatch_Text[3300456]
	tHorseRidingMatchPack[3300456]["RewardItem"] = {}
	tHorseRidingMatchPack[3300456]["RewardItem"][1] = {}
	tHorseRidingMatchPack[3300456]["RewardItem"][1]["Id"] = 3301255
	tHorseRidingMatchPack[3300456]["RewardItem"][1]["Attr"] = "0 50"
	
	tHorseRidingMatchPack[3300457] = {}
	tHorseRidingMatchPack[3300457]["DeleteItem"] = {}
	tHorseRidingMatchPack[3300457]["DeleteItem"][1] = {}
	tHorseRidingMatchPack[3300457]["DeleteItem"][1]["Id"] = 3300457
	tHorseRidingMatchPack[3300457]["RewardRidingPoint"] = {}
	tHorseRidingMatchPack[3300457]["RewardRidingPoint"]["Value"] = 162
	tHorseRidingMatchPack[3300457]["LogId"] = 12000472
	tHorseRidingMatchPack[3300457]["Talk"] = tHorseRidingMatch_Text[3300457]
	tHorseRidingMatchPack[3300457]["RewardItem"] = {}
	tHorseRidingMatchPack[3300457]["RewardItem"][1] = {}
	tHorseRidingMatchPack[3300457]["RewardItem"][1]["Id"] = 3301255
	tHorseRidingMatchPack[3300457]["RewardItem"][1]["Attr"] = "0 50"
	
	tHorseRidingMatchPack[3300458] = {}
	tHorseRidingMatchPack[3300458]["DeleteItem"] = {}
	tHorseRidingMatchPack[3300458]["DeleteItem"][1] = {}
	tHorseRidingMatchPack[3300458]["DeleteItem"][1]["Id"] = 3300458
	tHorseRidingMatchPack[3300458]["RewardRidingPoint"] = {}
	tHorseRidingMatchPack[3300458]["RewardRidingPoint"]["Value"] = 156
	tHorseRidingMatchPack[3300458]["LogId"] = 12000472
	tHorseRidingMatchPack[3300458]["Talk"] = tHorseRidingMatch_Text[3300458]
	tHorseRidingMatchPack[3300458]["RewardItem"] = {}
	tHorseRidingMatchPack[3300458]["RewardItem"][1] = {}
	tHorseRidingMatchPack[3300458]["RewardItem"][1]["Id"] = 3301255
	tHorseRidingMatchPack[3300458]["RewardItem"][1]["Attr"] = "0 50"
	
	tHorseRidingMatchPack[3300459] = {}
	tHorseRidingMatchPack[3300459]["DeleteItem"] = {}
	tHorseRidingMatchPack[3300459]["DeleteItem"][1] = {}
	tHorseRidingMatchPack[3300459]["DeleteItem"][1]["Id"] = 3300459
	tHorseRidingMatchPack[3300459]["RewardRidingPoint"] = {}
	tHorseRidingMatchPack[3300459]["RewardRidingPoint"]["Value"] = 150
	tHorseRidingMatchPack[3300459]["LogId"] = 12000472
	tHorseRidingMatchPack[3300459]["Talk"] = tHorseRidingMatch_Text[3300459]
	tHorseRidingMatchPack[3300459]["RewardItem"] = {}
	tHorseRidingMatchPack[3300459]["RewardItem"][1] = {}
	tHorseRidingMatchPack[3300459]["RewardItem"][1]["Id"] = 3301255
	tHorseRidingMatchPack[3300459]["RewardItem"][1]["Attr"] = "0 50"
	
	tHorseRidingMatchPack[3300460] = {}
	tHorseRidingMatchPack[3300460]["DeleteItem"] = {}
	tHorseRidingMatchPack[3300460]["DeleteItem"][1] = {}
	tHorseRidingMatchPack[3300460]["DeleteItem"][1]["Id"] = 3300460
	tHorseRidingMatchPack[3300460]["RewardRidingPoint"] = {}
	tHorseRidingMatchPack[3300460]["RewardRidingPoint"]["Value"] = 144
	tHorseRidingMatchPack[3300460]["LogId"] = 12000472
	tHorseRidingMatchPack[3300460]["Talk"] = tHorseRidingMatch_Text[3300460]
	tHorseRidingMatchPack[3300460]["RewardItem"] = {}
	tHorseRidingMatchPack[3300460]["RewardItem"][1] = {}
	tHorseRidingMatchPack[3300460]["RewardItem"][1]["Id"] = 3301255
	tHorseRidingMatchPack[3300460]["RewardItem"][1]["Attr"] = "0 50"
	
	tHorseRidingMatchPack[3300461] = {}
	tHorseRidingMatchPack[3300461]["DeleteItem"] = {}
	tHorseRidingMatchPack[3300461]["DeleteItem"][1] = {}
	tHorseRidingMatchPack[3300461]["DeleteItem"][1]["Id"] = 3300461
	tHorseRidingMatchPack[3300461]["RewardRidingPoint"] = {}
	tHorseRidingMatchPack[3300461]["RewardRidingPoint"]["Value"] = 132
	tHorseRidingMatchPack[3300461]["LogId"] = 12000472
	tHorseRidingMatchPack[3300461]["Talk"] = tHorseRidingMatch_Text[3300461]
	tHorseRidingMatchPack[3300461]["RewardItem"] = {}
	tHorseRidingMatchPack[3300461]["RewardItem"][1] = {}
	tHorseRidingMatchPack[3300461]["RewardItem"][1]["Id"] = 3301255
	tHorseRidingMatchPack[3300461]["RewardItem"][1]["Attr"] = "0 50"
	
	tHorseRidingMatchPack[3300462] = {}
	tHorseRidingMatchPack[3300462]["DeleteItem"] = {}
	tHorseRidingMatchPack[3300462]["DeleteItem"][1] = {}
	tHorseRidingMatchPack[3300462]["DeleteItem"][1]["Id"] = 3300462
	tHorseRidingMatchPack[3300462]["RewardRidingPoint"] = {}
	tHorseRidingMatchPack[3300462]["RewardRidingPoint"]["Value"] = 126
	tHorseRidingMatchPack[3300462]["LogId"] = 12000472
	tHorseRidingMatchPack[3300462]["Talk"] = tHorseRidingMatch_Text[3300462]
	tHorseRidingMatchPack[3300462]["RewardItem"] = {}
	tHorseRidingMatchPack[3300462]["RewardItem"][1] = {}
	tHorseRidingMatchPack[3300462]["RewardItem"][1]["Id"] = 3301255
	tHorseRidingMatchPack[3300462]["RewardItem"][1]["Attr"] = "0 50"
	
	tHorseRidingMatchPack[3300463] = {}
	tHorseRidingMatchPack[3300463]["DeleteItem"] = {}
	tHorseRidingMatchPack[3300463]["DeleteItem"][1] = {}
	tHorseRidingMatchPack[3300463]["DeleteItem"][1]["Id"] = 3300463
	tHorseRidingMatchPack[3300463]["RewardRidingPoint"] = {}
	tHorseRidingMatchPack[3300463]["RewardRidingPoint"]["Value"] = 120
	tHorseRidingMatchPack[3300463]["LogId"] = 12000472
	tHorseRidingMatchPack[3300463]["Talk"] = tHorseRidingMatch_Text[3300463]
	tHorseRidingMatchPack[3300463]["RewardItem"] = {}
	tHorseRidingMatchPack[3300463]["RewardItem"][1] = {}
	tHorseRidingMatchPack[3300463]["RewardItem"][1]["Id"] = 3301255
	tHorseRidingMatchPack[3300463]["RewardItem"][1]["Attr"] = "0 50"
	
	tHorseRidingMatchPack[3300464] = {}
	tHorseRidingMatchPack[3300464]["DeleteItem"] = {}
	tHorseRidingMatchPack[3300464]["DeleteItem"][1] = {}
	tHorseRidingMatchPack[3300464]["DeleteItem"][1]["Id"] = 3300464
	tHorseRidingMatchPack[3300464]["RewardRidingPoint"] = {}
	tHorseRidingMatchPack[3300464]["RewardRidingPoint"]["Value"] = 110
	tHorseRidingMatchPack[3300464]["LogId"] = 12000472
	tHorseRidingMatchPack[3300464]["Talk"] = tHorseRidingMatch_Text[3300464]
	tHorseRidingMatchPack[3300464]["RewardItem"] = {}
	tHorseRidingMatchPack[3300464]["RewardItem"][1] = {}
	tHorseRidingMatchPack[3300464]["RewardItem"][1]["Id"] = 3301255
	tHorseRidingMatchPack[3300464]["RewardItem"][1]["Attr"] = "0 50"
	
	tHorseRidingMatchPack[3300465] = {}
	tHorseRidingMatchPack[3300465]["DeleteItem"] = {}
	tHorseRidingMatchPack[3300465]["DeleteItem"][1] = {}
	tHorseRidingMatchPack[3300465]["DeleteItem"][1]["Id"] = 3300465
	tHorseRidingMatchPack[3300465]["RewardRidingPoint"] = {}
	tHorseRidingMatchPack[3300465]["RewardRidingPoint"]["Value"] = 50
	tHorseRidingMatchPack[3300465]["LogId"] = 12000472
	tHorseRidingMatchPack[3300465]["Talk"] = tHorseRidingMatch_Text[3300465]
	tHorseRidingMatchPack[3300465]["RewardItem"] = {}
	tHorseRidingMatchPack[3300465]["RewardItem"][1] = {}
	tHorseRidingMatchPack[3300465]["RewardItem"][1]["Id"] = 3301255
	tHorseRidingMatchPack[3300465]["RewardItem"][1]["Attr"] = "0 20"
	
----------------------------------陷阱表---------------------------------------------
local tHorseRidingMatch_Status = {}
	-- 旧有陷阱
	tHorseRidingMatch_Status["EffectObj"] = "self"
	-- 保护
	tHorseRidingMatch_Status[2443] = {}
	tHorseRidingMatch_Status[2443]["PropId"] = 8336
	tHorseRidingMatch_Status[2443]["Times"] = 1
	tHorseRidingMatch_Status[2443]["Effect_1"] = "eidolon"
	-- 眩晕
	tHorseRidingMatch_Status[2446] = {}
	tHorseRidingMatch_Status[2446]["PropId"] = 8337
	tHorseRidingMatch_Status[2446]["Times"] = 1
	tHorseRidingMatch_Status[2446]["Effect_1"] = "eidolon"
	-- 兴奋 -- 加速
	tHorseRidingMatch_Status[2452] = {}
	tHorseRidingMatch_Status[2452]["PropId"] = 8332
	tHorseRidingMatch_Status[2452]["Times"] = 3
	tHorseRidingMatch_Status[2452]["Effect_1"] = "eidolon"
	-- 神行 -- 回体
	tHorseRidingMatch_Status[2451] = {}
	tHorseRidingMatch_Status[2451]["PropId"] = 8331
	tHorseRidingMatch_Status[2451]["Times"] = 1
	tHorseRidingMatch_Status[2451]["Effect_1"] = "eidolon"
	-- 泥浆炸弹
	tHorseRidingMatch_Status[2445] = {}
	tHorseRidingMatch_Status[2445]["PropId"] = 8335
	tHorseRidingMatch_Status[2445]["Times"] = 3
	tHorseRidingMatch_Status[2445]["Effect_1"] = "eidolon"
	-- 震荡炸弹
	tHorseRidingMatch_Status[2453] = {}
	tHorseRidingMatch_Status[2453]["PropId"] = 8330
	tHorseRidingMatch_Status[2453]["Times"] = 1
	tHorseRidingMatch_Status[2453]["Effect_1"] = "eidolon"
	-- 尖叫炸弹
	tHorseRidingMatch_Status[2448] = {}
	tHorseRidingMatch_Status[2448]["PropId"] = 8334
	tHorseRidingMatch_Status[2448]["Times"] = 1
	tHorseRidingMatch_Status[2448]["Effect_1"] = "eidolon"
	-- 巨大叹号
	tHorseRidingMatch_Status[2449] = {}
	tHorseRidingMatch_Status[2449]["PropId"] = 8338
	tHorseRidingMatch_Status[2449]["Times"] = 1
	tHorseRidingMatch_Status[2449]["Effect_1"] = "eidolon"
	
	-- 巨大问号 -- 加状态
	tHorseRidingMatch_Status[2712] = {}
	tHorseRidingMatch_Status[2712]["Status"] = {}
	-- 回体
	tHorseRidingMatch_Status[2712]["Status"][1] = 53
	-- 加移速
	tHorseRidingMatch_Status[2712]["Status"][2] = 49
	-- 减速
	tHorseRidingMatch_Status[2712]["Status"][3] = 50
	-- 眩晕
	tHorseRidingMatch_Status[2712]["Status"][4] = 55
	-- 反向
	tHorseRidingMatch_Status[2712]["Status"][5] = 57

	tHorseRidingMatch_Status[2712]["Power"] = {}
	tHorseRidingMatch_Status[2712]["Power"][1] = 2000
	tHorseRidingMatch_Status[2712]["Power"][2] = 25
	tHorseRidingMatch_Status[2712]["Power"][3] = 25
	tHorseRidingMatch_Status[2712]["Power"][4] = 0
	tHorseRidingMatch_Status[2712]["Power"][5] = 0
	
	tHorseRidingMatch_Status[2712]["Secs"] = {}
	tHorseRidingMatch_Status[2712]["Secs"][1] = 0
	tHorseRidingMatch_Status[2712]["Secs"][2] = 15
	tHorseRidingMatch_Status[2712]["Secs"][3] = 10
	tHorseRidingMatch_Status[2712]["Secs"][4] = 5
	tHorseRidingMatch_Status[2712]["Secs"][5] = 15
	
	
	tHorseRidingMatch_Status[2712]["Times"] = {}
	tHorseRidingMatch_Status[2712]["Times"][1] = 0
	tHorseRidingMatch_Status[2712]["Times"][2] = 0
	tHorseRidingMatch_Status[2712]["Times"][3] = 0
	tHorseRidingMatch_Status[2712]["Times"][4] = 0
	tHorseRidingMatch_Status[2712]["Times"][5] = 0
	
	tHorseRidingMatch_Status[2712]["RemainTime"] = {}
	tHorseRidingMatch_Status[2712]["RemainTime"][1] = 0
	tHorseRidingMatch_Status[2712]["RemainTime"][2] = 15
	tHorseRidingMatch_Status[2712]["RemainTime"][3] = 10
	tHorseRidingMatch_Status[2712]["RemainTime"][4] = 5
	tHorseRidingMatch_Status[2712]["RemainTime"][5] = 15
	
	tHorseRidingMatch_Status[2712]["EndTime"] = {}
	tHorseRidingMatch_Status[2712]["EndTime"][1] = 1
	tHorseRidingMatch_Status[2712]["EndTime"][2] = 1
	tHorseRidingMatch_Status[2712]["EndTime"][3] = 1
	tHorseRidingMatch_Status[2712]["EndTime"][4] = 1
	tHorseRidingMatch_Status[2712]["EndTime"][5] = 1
	
	-- 新写加速陷阱
	tHorseRidingMatch_Status[2824] = {}
	tHorseRidingMatch_Status[2824]["Status"] = {}
	tHorseRidingMatch_Status[2824]["Status"][1] = 49
	tHorseRidingMatch_Status[2824]["Status"][2] = 49
	tHorseRidingMatch_Status[2824]["Status"][3] = 49
	tHorseRidingMatch_Status[2824]["Status"][4] = 49
	tHorseRidingMatch_Status[2824]["Status"][5] = 49

	tHorseRidingMatch_Status[2824]["Power"] = {}
	tHorseRidingMatch_Status[2824]["Power"][1] = 25
	tHorseRidingMatch_Status[2824]["Power"][2] = 25
	tHorseRidingMatch_Status[2824]["Power"][3] = 25
	tHorseRidingMatch_Status[2824]["Power"][4] = 25
	tHorseRidingMatch_Status[2824]["Power"][5] = 25
	
	tHorseRidingMatch_Status[2824]["Secs"] = {}
	tHorseRidingMatch_Status[2824]["Secs"][1] = 6
	tHorseRidingMatch_Status[2824]["Secs"][2] = 6
	tHorseRidingMatch_Status[2824]["Secs"][3] = 6
	tHorseRidingMatch_Status[2824]["Secs"][4] = 6
	tHorseRidingMatch_Status[2824]["Secs"][5] = 6
	
	
	tHorseRidingMatch_Status[2824]["Times"] = {}
	tHorseRidingMatch_Status[2824]["Times"][1] = 0
	tHorseRidingMatch_Status[2824]["Times"][2] = 0
	tHorseRidingMatch_Status[2824]["Times"][3] = 0
	tHorseRidingMatch_Status[2824]["Times"][4] = 0
	tHorseRidingMatch_Status[2824]["Times"][5] = 0
	
	tHorseRidingMatch_Status[2824]["RemainTime"] = {}
	tHorseRidingMatch_Status[2824]["RemainTime"][1] = 15
	tHorseRidingMatch_Status[2824]["RemainTime"][2] = 15
	tHorseRidingMatch_Status[2824]["RemainTime"][3] = 15
	tHorseRidingMatch_Status[2824]["RemainTime"][4] = 15
	tHorseRidingMatch_Status[2824]["RemainTime"][5] = 15
	
	tHorseRidingMatch_Status[2824]["EndTime"] = {}
	tHorseRidingMatch_Status[2824]["EndTime"][1] = 1
	tHorseRidingMatch_Status[2824]["EndTime"][2] = 1
	tHorseRidingMatch_Status[2824]["EndTime"][3] = 1
	tHorseRidingMatch_Status[2824]["EndTime"][4] = 1
	tHorseRidingMatch_Status[2824]["EndTime"][5] = 1
	
	-- 新写随机道具
	-- 正面道具
	tHorseRidingMatch_Status[2811] = {}
	-- 加速                  
	tHorseRidingMatch_Status[2811][1] = {}
	tHorseRidingMatch_Status[2811][1]["PropId"] = 8332
	tHorseRidingMatch_Status[2811][1]["Times"] = 3
	tHorseRidingMatch_Status[2811][1]["Effect"] = "eidolon"
	-- 回体                  
	tHorseRidingMatch_Status[2811][2] = {}
	tHorseRidingMatch_Status[2811][2]["PropId"] = 8331
	tHorseRidingMatch_Status[2811][2]["Times"] = 1
	tHorseRidingMatch_Status[2811][2]["Effect"] = "eidolon"
	-- 新增保护
	tHorseRidingMatch_Status[2811][3] = {}
	tHorseRidingMatch_Status[2811][3]["PropId"] = 8336
	tHorseRidingMatch_Status[2811][3]["Times"] = 1
	tHorseRidingMatch_Status[2811][3]["Effect_1"] = "eidolon"
	
	-- 整人道具
	tHorseRidingMatch_Status[2812] = {}
	-- 泥浆炸掉            
	tHorseRidingMatch_Status[2812][1] = {}
	tHorseRidingMatch_Status[2812][1]["PropId"] = 8335
	tHorseRidingMatch_Status[2812][1]["Times"] = 3
	tHorseRidingMatch_Status[2812][1]["Effect"] = "eidolon"
	-- 眩晕锤子              
	tHorseRidingMatch_Status[2812][2] = {}
	tHorseRidingMatch_Status[2812][2]["PropId"] = 8337
	tHorseRidingMatch_Status[2812][2]["Times"] = 1
	tHorseRidingMatch_Status[2812][2]["Effect"] = "eidolon"
	-- 震荡炸弹              
	tHorseRidingMatch_Status[2812][3] = {}
	tHorseRidingMatch_Status[2812][3]["PropId"] = 8330
	tHorseRidingMatch_Status[2812][3]["Times"] = 1
	tHorseRidingMatch_Status[2812][3]["Effect"] = "eidolon"
	
	-- 纠结道具
	tHorseRidingMatch_Status[2813] = {}
	-- 泥浆炸掉              
	tHorseRidingMatch_Status[2813][1] = {}
	tHorseRidingMatch_Status[2813][1]["PropId"] = 8335
	tHorseRidingMatch_Status[2813][1]["Times"] = 3
	tHorseRidingMatch_Status[2813][1]["Effect"] = "eidolon"
	-- 眩晕锤子              
	tHorseRidingMatch_Status[2813][2] = {}
	tHorseRidingMatch_Status[2813][2]["PropId"] = 8337
	tHorseRidingMatch_Status[2813][2]["Times"] = 1
	tHorseRidingMatch_Status[2813][2]["Effect"] = "eidolon"
	-- 震荡炸弹              
	tHorseRidingMatch_Status[2813][3] = {}
	tHorseRidingMatch_Status[2813][3]["PropId"] = 8330
	tHorseRidingMatch_Status[2813][3]["Times"] = 1
	tHorseRidingMatch_Status[2813][3]["Effect"] = "eidolon"
	-- 加速                  
	tHorseRidingMatch_Status[2813][4] = {}
	tHorseRidingMatch_Status[2813][4]["PropId"] = 8332
	tHorseRidingMatch_Status[2813][4]["Times"] = 3
	tHorseRidingMatch_Status[2813][4]["Effect"] = "eidolon"
	-- 回体                  
	tHorseRidingMatch_Status[2813][5] = {}
	tHorseRidingMatch_Status[2813][5]["PropId"] = 8331
	tHorseRidingMatch_Status[2813][5]["Times"] = 1
	tHorseRidingMatch_Status[2813][5]["Effect"] = "eidolon"
	
local tHorseRidingMatch_BoxAbout = {}
	-- 背包空间
	tHorseRidingMatch_BoxAbout["Space"] = 1
	
	
----------------------------------------函数部分-------------------------------------------

--怪物触发1 单一道具
function HorseRidingMatch_MonsterEffect(nMonsterId)
	-- 判断金币服
	if CommonFunc_ChkGoldServer() then
		return
	end
	local nUserId = Get_UserId()
	local nPropId = tHorseRidingMatch_Status[nMonsterId]["PropId"]
	local nUnRemainTime = tHorseRidingMatch_Status[nMonsterId]["Times"]
	User_AddPropStatus(nPropId,nUnRemainTime,nUserId)
	
	local sEffect = tHorseRidingMatch_Status[nMonsterId]["Effect_1"]
	if sEffect ~= nil then
		User_EffectAdd(tHorseRidingMatch_Status["EffectObj"],sEffect)
	end
	User_TalkChannel2007(tHorseRidingMatch_Text[nMonsterId])
end

--怪物触发2 随机状态
function HorseRidingMatch_MonsterEffect2(nMonsterId)
	-- 判断金币服
	if CommonFunc_ChkGoldServer() then
		return
	end
	local nUserId = Get_UserId()
	local nRandom = math.random(1,#tHorseRidingMatch_Status[nMonsterId]["Status"])
	local nStatus = tHorseRidingMatch_Status[nMonsterId]["Status"][nRandom]
	local nPower =  tHorseRidingMatch_Status[nMonsterId]["Power"][nRandom]
	local nSecs = tHorseRidingMatch_Status[nMonsterId]["Secs"][nRandom]
	local nTimes = tHorseRidingMatch_Status[nMonsterId]["Times"][nRandom]
	local nRemainTime = tHorseRidingMatch_Status[nMonsterId]["RemainTime"][nRandom]
	local nEndTime = tHorseRidingMatch_Status[nMonsterId]["EndTime"][nRandom]
	if nMonsterId == 2712 and (nRandom == 3 or nRandom == 4 or nRandom == 5) then
		if Rune_IsImmunityByRune() then
			User_TalkChannel2005(tHorseRidingMatch_Text["Immune"],nUserId)
			return
		end
	end
	User_AddRoleStatus(nStatus,nPower,nSecs,nTimes,nRemainTime,nEndTime,0,0,0,nUserId)
	
	local sEffect = tHorseRidingMatch_Status[nMonsterId]["Effect_1"]
	
	if sEffect ~= nil then
		User_EffectAdd(tHorseRidingMatch_Status["EffectObj"],sEffect)
	end
	
	User_TalkChannel2007(tHorseRidingMatch_Text[nMonsterId][nRandom])

end

--怪物触发3 随机道具
function HorseRidingMatch_MonsterEffect3(nMonsterId)
	-- 判断金币服
	if CommonFunc_ChkGoldServer() then
		return
	end
	local nUserId = Get_UserId()
	local nRandom = math.random(1,#tHorseRidingMatch_Status[nMonsterId])
	local nPropId = tHorseRidingMatch_Status[nMonsterId][nRandom]["PropId"]
	local nUnRemainTime = tHorseRidingMatch_Status[nMonsterId][nRandom]["Times"]
	User_AddPropStatus(nPropId,nUnRemainTime,nUserId)
	
	local sEffect = tHorseRidingMatch_Status[nMonsterId][nRandom]["Effect"]
	
	if sEffect ~= nil then
		User_EffectAdd("self",sEffect)
	end
	
	-- User_TalkChannel2007()

end

-- 打开赛马积分商店
function HorseRidingMatch_OpenShop()
	User_OpenDialog(tHorseRidingMatch_Constant["DialogId"])
	
end

-- 活动判断用函数
function HorseRidingMatch_TimePick()
	-- 夺宝返回true,竞速返回false
	if (Sys_ChkWeedTime(tHorseRidingMatch_Constant["ActivityData"][1]) or Sys_ChkWeedTime(tHorseRidingMatch_Constant["ActivityData"][2])) then
		return true
	else
		return false
	end
	
end


-- 赛马预先判断
function HorseRidingMatch_BeforeTalk()
-- 2/4导向夺宝
if HorseRidingMatch_TimePick() then
	return false
end
-- 竞速赛初始化
if Sys_ChkWeedTime(tHorseRidingMatch_Constant["ActivityWeed"]) then 
		for i=1,#tHorseRidingMatch_Constant["ActivityDay"] do
			if Sys_ChkDayTime(tHorseRidingMatch_Constant["ActivityDay"][i]) then
				tNpcGossip[19990]["Text111"] = string.format(tHorseRidingMatch_Text[19990]["Text111"],i)
				
				local nEvent = tHorseRidingMatch_Stc[1]["EventType"]
				local nData = tHorseRidingMatch_Stc[1]["DataType"]
				
				local nRank = Get_UserStatisticDailyValue(nEvent,nData)%1000000
				
				if nRank == 0 then 
					tNpcGossip[19990]["Text1-1"] = {111}
				else
					tNpcGossip[19990]["Text1-1"] = {111,112,113}
					tNpcGossip[19990]["Text112"] = string.format(tHorseRidingMatch_Text[19990]["Text112"],nRank)
					
					if nRank <= 200 then
						tNpcGossip[19990]["Text113"] = string.format(tHorseRidingMatch_Text[19990]["Text113"],tHorseRidingMatch_RidePoint[nRank],tHorseRidingMatch_MMoPoint[nRank])
					else
						tNpcGossip[19990]["Text113"] = string.format(tHorseRidingMatch_Text[19990]["Text113"],tHorseRidingMatch_RidePoint[201],tHorseRidingMatch_MMoPoint[201])
					end
				
				end
				
				return true
			end
		end
		return false
	else
		return false
	end
	
end

-- 复制npc对白
function HorseRidingMatch_BeforeTalk2()
-- 2/4导向夺宝
if HorseRidingMatch_TimePick() then
	return false
end
-- 竞速赛初始化
if Sys_ChkWeedTime(tHorseRidingMatch_Constant["ActivityWeed"]) then 
		for i=1,#tHorseRidingMatch_Constant["ActivityDay"] do
			if Sys_ChkDayTime(tHorseRidingMatch_Constant["ActivityDay"][i]) then
				tNpcGossip[20172]["Text111"] = string.format(tHorseRidingMatch_Text[19990]["Text111"],i)
				local nEvent = tHorseRidingMatch_Stc[1]["EventType"]
				local nData = tHorseRidingMatch_Stc[1]["DataType"]
				local nRank = Get_UserStatisticDailyValue(nEvent,nData)%1000000
				if nRank == 0 then 
					tNpcGossip[20172]["Text1-1"] = {111}
				else
					tNpcGossip[20172]["Text1-1"] = {111,112,113}
					tNpcGossip[20172]["Text112"] = string.format(tHorseRidingMatch_Text[19990]["Text112"],nRank)
					if nRank <= 200 then
						tNpcGossip[20172]["Text113"] = string.format(tHorseRidingMatch_Text[19990]["Text113"],tHorseRidingMatch_RidePoint[nRank],tHorseRidingMatch_MMoPoint[nRank])
					else
						tNpcGossip[20172]["Text113"] = string.format(tHorseRidingMatch_Text[19990]["Text113"],tHorseRidingMatch_RidePoint[201],tHorseRidingMatch_MMoPoint[201])
					end
				end
				return true
			end
		end
		return false
	else
		return false
	end
end
-- 进入骑马大赛地图(选项)
function HorseRidingMatch_EnterMatchMap(nNpcId)
	if Sys_ChkWeedTime(tHorseRidingMatch_Constant["ActivityWeed"]) then 
	
		for i=1,#tHorseRidingMatch_Constant["ActivityDay"] do
			if Sys_ChkDayTime(tHorseRidingMatch_Constant["ActivityDay"][i]) then
				local nUserId = Get_UserId()
				local nEvent = tHorseRidingMatch_Stc[1]["EventType"]
				local nData = tHorseRidingMatch_Stc[1]["DataType"]
				-- local nTimes = Get_UserStatisticDailyValue(nEvent,nData,nUserId)
				local nTimes = Get_UserStatisticDailyValue(nEvent,nData,nUserId)/1000000
				local nServerId = Get_FrontierServerID()
				
				local nRandom = math.random(1,4)
				nRandom = tHorseRidingMatch_Constant["ActivityMapDoc"][10072][nRandom]
				local nEvent2 = tHorseRidingMatch_Stc[2]["EventType"]
				local nData2 = tHorseRidingMatch_Stc[2]["DataType"]
				local nRank = tonumber(Get_UserStatisticValue(nEvent2,nData2))
				
				-- 防止意外，添加隔天
				if Task_StcInterval(nEvent2,nData2,1,4) then
					Task_SetStatistic(nEvent2,nData2,0,1)
					Task_SetStcTimestamp(nEvent2,nData2,0)
				end
				
				if HorseRidingMatch_TimePick() then
					if nRank == 0 then
						if Magic_ChkType(tHorseRidingMatch_Constant["MagicType"]) and Sys_ChkEquip(tHorseRidingMatch_Constant["Equip"],nUserId) then
							
							-- 打跨服掩码
							local nTaskId = tHorseRidingMatch_Detail[1]["Id"]
							if not Task_ChkTaskDetail(nTaskId) then
								Task_AddTaskDetail(nTaskId)
							end
							
							Task_SetStatistic(nEvent2,nData2,1,1)
							User_TalkChannel2005(tHorseRidingMatch_Text["EnterMatch"])

							--打log
							Sys_SaveActionFestivalLog(tHorseRidingMatch_EmoneyLog["JoinMatch"])
							-- 未参加过,进入
							Sys_EnterServer(nServerId,12,nUserId,nRandom)
							
						else
							-- 提示准备不足
							User_TalkChannel2005(tHorseRidingMatch_Text["NoMaEq"])
						end
					else
						--无法参加的提示
						LinkNpcGossipFunc_New(nNpcId,"2-6")
					end
				else
					if nTimes < i then
						if Magic_ChkType(tHorseRidingMatch_Constant["MagicType"]) and Sys_ChkEquip(tHorseRidingMatch_Constant["Equip"],nUserId) then
							-- 未参加过，进入
							Sys_EnterServer(nServerId,12,nUserId,tHorseRidingMatch_Constant["ActivityMapDoc"][9929][1])
							User_TalkChannel2005(tHorseRidingMatch_Text["EnterMatch"])
							--打log
							Sys_SaveActionFestivalLog(tHorseRidingMatch_EmoneyLog["JoinMatch"])
						else
							User_TalkChannel2005(tHorseRidingMatch_Text["NoMaEq"])
						end
					else
						--已参加过该场的提示
						LinkNpcGossipFunc_New(nNpcId,"2-2")
					end
				end

				return
			end
		end
	end
	
	--不在活动时间内对白提示
	LinkNpcGossipFunc_New(nNpcId,"2-1")

end

-- 离开赛场
function HorseRidingMatch_LeaveMatchMap()
	Sys_ExitOS()
	Sys_MsgBox(tHorseRidingMatch_Text["LeaveMap"])
	--打log
	Sys_SaveActionFestivalLog(tHorseRidingMatch_EmoneyLog["LeaveMatch"])
	
end

-- 对象筛选
function HorseRidingMatch_InviteFilter()
	Sys_DelInvite(6)
	return Sys_InviteFilter(6,"level >= 1")
	
end


-- 全服邀请活动弹窗(竞速/夺宝)
function HorseRidingMatch_InviteAction()
	--活动时间判断
	if not Sys_ChkFullTime(tActivityTime["MMO"]["ActivityTime"]) then
		return
	end
	
-- 判断金币服
	if CommonFunc_ChkGoldServer() then
		return
	end
	-- 工作日判断
	if Sys_ChkWeedTime(tHorseRidingMatch_Constant["ActivityWeed"]) then 
		-- 全服邀请
		for i=1,#tHorseRidingMatch_Constant["ActivityDay"] do
			if Sys_ChkDayTime(tHorseRidingMatch_Constant["ActivityDay"][i]) then
				local nInviteText = tHorseRidingMatch_Invite["InviteSendId"][i]
				if HorseRidingMatch_InviteFilter() then
					Sys_InviteTrans(tHorseRidingMatch_Constant["MapId"],tHorseRidingMatch_Constant["Invite_Pos"],nInviteText,tHorseRidingMatch_Invite["Enter"],6,30)
				end
			end
		end
	end
	
end

--骑马大赛203w触发
function HorseRidingMatch_Control()
	--金币服判断
	if CommonFunc_ChkGoldServer() then
		return
	end
	if not HorseRidingMatch_TimePick() then
		-- 竞速赛
		for i=1,#tHorseRidingMatch_Constant["ActivityBeginTime"] do
			if Sys_ChkDayTime(tHorseRidingMatch_Constant["ActivityBeginTime"][i]) then 
				HorseRidingMatch_Start(i)
				break
			elseif Sys_ChkDayTime(tHorseRidingMatch_Constant["ActivityEndTime"][i]) then 
				HorseRidingMatch_End(i)
				break
			end
		end
	else
	-- 夺宝
		for i=1,#tHorseRidingMatch_Constant["ActivityBeginTime"] do
			if Sys_ChkDayTime(tHorseRidingMatch_Constant["ActivityBeginTime"][i]) then 
				break
			elseif Sys_ChkDayTime(tHorseRidingMatch_Constant["ActivityEndTime"][i]) then 
				HorseRidingMatch_End2(i)
				break
			end
		end
	end

end

-- 竞速赛
--比赛开始
function HorseRidingMatch_Start(i)
	-- 倒计时提示
	Map_UserExeFunc(tHorseRidingMatch_Constant["ActivityMap"][1],-1,"HorseRidingMatch_Start1")
	--设置骑马大赛的场次
	Sys_SetHorseRaceTimes(i)
	--比赛开始的函数
	Sys_HorseRaceBegin(tHorseRidingMatch_Constant["Duration"],tHorseRidingMatch_Constant["CloseSecs"],tHorseRidingMatch_Constant["ActivityMap"][1])
	
end

-- 活动开始60秒倒计时
function HorseRidingMatch_Start1(nUserId)
	User_TalkChannel2007(tHorseRidingMatch_Text["RaceBeforBegin"],nUserId)
	--设定定时器
	User_SetTimer(60,"HorseRidingMatch_BeginMsg",1,nUserId)
	
end

--比赛结束
function HorseRidingMatch_End(i)
	-- BroadcastTalkMsgToOS(tHorseRidingMatch_Text["RaceEnd"],tHorseRidingMatch_Constant["MsgChannel"])
	local nEndRace = #tHorseRidingMatch_Constant["ActivityBeginTime"]

	--最后一场执行
	if i == nEndRace then 
		Sys_FrontierHorseRaceOver(tHorseRidingMatch_Constant["ActivityMap"][1])
	end
	
	--还在活动地图的玩家将被送回原服务器
	Map_UserExeFunc(tHorseRidingMatch_Constant["ActivityMap"][1],-1,"HorseRidingMatch_ChgMap")
end

--比赛结束
function HorseRidingMatch_End2(i)
	-- BroadcastTalkMsgToOS(tHorseRidingMatch_Text["RaceEnd"],tHorseRidingMatch_Constant["MsgChannel"])

	--还在活动地图的玩家将被送回原服务器(对地图上所以玩家操作)
	Map_UserExeFunc(tHorseRidingMatch_Constant["ActivityMap"][2],-1,"HorseRidingMatch_ChgMap")
	
end

--玩家回到本服
function HorseRidingMatch_ChgMap(nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	-- 回到玩家所属服务器
	Sys_ExitOS(nUserId)
	--玩家提示
	User_TalkChannel2007(tHorseRidingMatch_Text["RaceEnd"],nUserId)
	
end

--提示
function HorseRidingMatch_Msg1()
	-- 判断金币服
	if CommonFunc_ChkGoldServer() then
		return
	end
	if Sys_ChkWeedTime(tHorseRidingMatch_Constant["ActivityWeed"]) then 
		Map_SendBroadcastMsg(tHorseRidingMatch_Constant["ActivityMap"][1],tHorseRidingMatch_Text["Msg1"])
	end
	
end

function HorseRidingMatch_Msg2()
-- 判断金币服
	if CommonFunc_ChkGoldServer() then
		return
	end
	if Sys_ChkWeedTime(tHorseRidingMatch_Constant["ActivityWeed"]) then 
		Map_SendBroadcastMsg(tHorseRidingMatch_Constant["ActivityMap"][1],tHorseRidingMatch_Text["Msg2"])
	end
	
end

function HorseRidingMatch_Msg3()
-- 判断金币服
	if CommonFunc_ChkGoldServer() then
		return
	end
	if Sys_ChkWeedTime(tHorseRidingMatch_Constant["ActivityWeed"]) then 
		Map_SendBroadcastMsg(tHorseRidingMatch_Constant["ActivityMap"][1],tHorseRidingMatch_Text["Msg3"])
	end
	
end


function HorseRidingMatch_Msg4()
-- 判断金币服
	if CommonFunc_ChkGoldServer() then
		return
	end
	if Sys_ChkWeedTime(tHorseRidingMatch_Constant["ActivityWeed"]) then 
		if not HorseRidingMatch_TimePick() then 
			Sys_SystemBroadcastToOS(tHorseRidingMatch_Text["Msg4"])
		end
	end
	
end

function HorseRidingMatch_Msg5()
-- 判断金币服
	if CommonFunc_ChkGoldServer() then
		return
	end
	if Sys_ChkWeedTime(tHorseRidingMatch_Constant["ActivityWeed"]) then 
		Sys_SystemBroadcastToOS(tHorseRidingMatch_Text["Msg5"])
	end
	
end

function HorseRidingMatch_Msg6()
-- 判断金币服
	if CommonFunc_ChkGoldServer() then
		return
	end
	if Sys_ChkWeedTime(tHorseRidingMatch_Constant["ActivityWeed"]) then 
		if HorseRidingMatch_TimePick() then 
			Sys_SystemBroadcastToOS(tHorseRidingMatch_Text["Msg4"])
		end
	end
	
end


function HorseRidingMatch_BeginMsg(nUserId)
	User_TalkChannel2007(tHorseRidingMatch_Text["RaceBegin"],nUserId)
	
end

--公告传送 竞速赛
function HorseRidingMatch_Notice()
	if Sys_ChkWeedTime(tHorseRidingMatch_Constant["ActivityWeed"]) then 
		for i=1,#tHorseRidingMatch_Constant["ActivityDay"] do
			if Sys_ChkDayTime(tHorseRidingMatch_Constant["ActivityDay"][i]) then
				---血量判断
				if Get_UserLife() < 1 then
					return 
				end
				
				if HorseRidingMatch_ChkMap() then
					local nUserId = Get_UserId()
					local nEvent = tHorseRidingMatch_Stc[1]["EventType"]
					local nData = tHorseRidingMatch_Stc[1]["DataType"]
					-- local nTimes = Get_UserStatisticDailyValue(nEvent,nData,nUserId)
					local nTimes = Get_UserStatisticDailyValue(nEvent,nData,nUserId)/1000000
					local nServerId = Get_FrontierServerID()
					local nRandom = math.random(1,4)
					nRandom = tHorseRidingMatch_Constant["ActivityMapDoc"][10072][nRandom]
					local nEvent2 = tHorseRidingMatch_Stc[2]["EventType"]
					local nData2 = tHorseRidingMatch_Stc[2]["DataType"]

					-- 隔天
					if Task_StcInterval(nEvent2,nData2,1,4) then
						Task_SetStatistic(nEvent2,nData2,0,1)
						Task_SetStcTimestamp(nEvent2,nData2,0)
					end
					
					local nRank = tonumber(Get_UserStatisticValue(nEvent2,nData2))
					
					if HorseRidingMatch_TimePick() then
						if nRank == 0 then
							if Magic_ChkType(tHorseRidingMatch_Constant["MagicType"]) and Sys_ChkEquip(tHorseRidingMatch_Constant["Equip"],nUserId) then
								
								Task_SetStatistic(nEvent2,nData2,1,1)
								User_TalkChannel2005(tHorseRidingMatch_Text["EnterMatch"])
								--打log
								Sys_SaveActionFestivalLog(tHorseRidingMatch_EmoneyLog["JoinMatch"])
								-- 未参加过，进入
								Sys_EnterServer(nServerId,12,nUserId,nRandom)
							else
								-- 提示准备不足
								User_TalkChannel2005(tHorseRidingMatch_Text["NoMaEq"])
							end
						else
							--已参加过该场的提示
							User_TalkChannel2005(tHorseRidingMatch_Text["Attended2"])
						end
					else
						if nTimes < i then
							if Magic_ChkType(tHorseRidingMatch_Constant["MagicType"]) and Sys_ChkEquip(tHorseRidingMatch_Constant["Equip"],nUserId) then
								-- 未参加过，进入
								Sys_EnterServer(nServerId,12,nUserId,tHorseRidingMatch_Constant["ActivityMapDoc"][9929][1])
								User_TalkChannel2005(tHorseRidingMatch_Text["EnterMatch"])
								--打log
								Sys_SaveActionFestivalLog(tHorseRidingMatch_EmoneyLog["JoinMatch"])
							else
								User_TalkChannel2005(tHorseRidingMatch_Text["NoMaEq"])
							end
						else
							--已参加过该场的提示
							User_TalkChannel2005(tHorseRidingMatch_Text["Attended"])
						end
					end
					
					return
				else
					Sys_MsgBox(tHorseRidingMatch_Text["NotMove"])
				end
			end
		end
	end

end


function HorseRidingMatch_ChkMap()
	--地图检测指定地图才能传送
	for k,v in pairs(tHorseRidingMatch_BoardMapChk)do
		if Get_UserMapId() ==  v then
			return true
		end
	end
	
	--检测地图mapdoc
	for k,v in pairs(tHorseRidingMatch_BoardMapDocChk)do
		if Get_MapDoc() ==  v then
			return true
		end
	end
	
	--混合检测
	--检测 是否为 601mapdoc
	if Get_MapDoc() == tHorseRidingMatch_BoardChk[1] then
		--检测 是否为 601地图
		if Get_UserMapId() ~= tHorseRidingMatch_BoardChk[2] then
			if  Get_UserMapId() ~= tHorseRidingMatch_BoardChk[3] then
				return true
			end
		end
	else
		--检测是否是 3024mapdoc
		if Get_MapDoc() == tHorseRidingMatch_BoardChk[4] then
			return true
		end
	end
	
	return false
	
end

-- 马赛邮件发奖
function HorseRidingMatch_RaceAward(nUserId,nRank)
	-- 判断金币服
	if CommonFunc_ChkGoldServer() then
		return
	end
	if nRank > 200 then
		local sText = string.format(tHorseRidingMatch_Text["MailContent1"],os.date("%Y"),os.date("%m"),os.date("%d"))
		Sys_SendMail(nUserId,0,0,tHorseRidingMatch_RewardAction[201],0,0,tHorseRidingMatch_Text["MailSender"],tHorseRidingMatch_Text["MailTitle"],sText)
	else
		local sText = string.format(tHorseRidingMatch_Text["MailContent"],os.date("%Y"),os.date("%m"),os.date("%d"),nRank,tHorseRidingMatch_MMoPoint[nRank],tHorseRidingMatch_RidePoint[nRank])
		Sys_SendMail(nUserId,0,0,tHorseRidingMatch_RewardAction[nRank],0,0,tHorseRidingMatch_Text["MailSender"],tHorseRidingMatch_Text["MailTitle"],sText)
	end
end

--物品逻辑
function HorseRidingMatch_OpenPack(nItemId)
	-- 背包空间判断
	if not User_CheckLeftSpace(tHorseRidingMatch_BoxAbout["Space"]) then
		Sys_MsgBox(tArkRaider_Text["NoSpace"])
		return
	end
	RewardTemplate_UseItem(tHorseRidingMatchPack[nItemId])
	
end

-- 开赛逻辑
function HorseRidingMatch_TimeOpen()
	-- 判断金币服
	if CommonFunc_ChkGoldServer() then
		return
	end
	-- 首位记录
    local nTaskId = tHorseRidingMatch_Detail[1]["Id"]
	
	local nUserId = Get_UserId()
	local nTime = tHorseRidingMatch_Constant["Time"]
	
	if Task_ChkTaskDetailValue(nTaskId,"6","==",0) then
		Task_SetTaskDetailData6(nTaskId,1)
		-- 判断且加点
		User_SetTimer(nTime,"HorseRidingMatch_ChgMap",1,nUserId)
	end
	
end

----------------------------------------物品模块-------------------------------------------
tItem[3200994] = tItem[3200994] or {}
tItem[3200995] = tItem[3200994] or {}
tItem[3200996] = tItem[3200994] or {}
tItem[3200997] = tItem[3200994] or {}
tItem[3200998] = tItem[3200994] or {}
tItem[3200999] = tItem[3200994] or {}

tItem[3300406] = tItem[3200994] or {}
tItem[3300407] = tItem[3200994] or {}
tItem[3300408] = tItem[3200994] or {}
tItem[3300409] = tItem[3200994] or {}
tItem[3300410] = tItem[3200994] or {}
tItem[3300411] = tItem[3200994] or {}
tItem[3300412] = tItem[3200994] or {}
tItem[3300413] = tItem[3200994] or {}
tItem[3300414] = tItem[3200994] or {}
tItem[3300415] = tItem[3200994] or {}
tItem[3300416] = tItem[3200994] or {}
tItem[3300417] = tItem[3200994] or {}
tItem[3300418] = tItem[3200994] or {}
tItem[3300419] = tItem[3200994] or {}
tItem[3300420] = tItem[3200994] or {}
tItem[3300421] = tItem[3200994] or {}
tItem[3300422] = tItem[3200994] or {}
tItem[3300423] = tItem[3200994] or {}
tItem[3300424] = tItem[3200994] or {}
tItem[3300425] = tItem[3200994] or {}
tItem[3300426] = tItem[3200994] or {}
tItem[3300427] = tItem[3200994] or {}
tItem[3300428] = tItem[3200994] or {}
tItem[3300429] = tItem[3200994] or {}
tItem[3300430] = tItem[3200994] or {}
tItem[3300431] = tItem[3200994] or {}
tItem[3300432] = tItem[3200994] or {}
tItem[3300433] = tItem[3200994] or {}
tItem[3300434] = tItem[3200994] or {}
tItem[3300435] = tItem[3200994] or {}
tItem[3300436] = tItem[3200994] or {}
tItem[3300437] = tItem[3200994] or {}
tItem[3300438] = tItem[3200994] or {}
tItem[3300439] = tItem[3200994] or {}
tItem[3300440] = tItem[3200994] or {}
tItem[3300441] = tItem[3200994] or {}
tItem[3300442] = tItem[3200994] or {}
tItem[3300443] = tItem[3200994] or {}
tItem[3300444] = tItem[3200994] or {}
tItem[3300445] = tItem[3200994] or {}
tItem[3300446] = tItem[3200994] or {}
tItem[3300447] = tItem[3200994] or {}
tItem[3300448] = tItem[3200994] or {}
tItem[3300449] = tItem[3200994] or {}
tItem[3300450] = tItem[3200994] or {}
tItem[3300451] = tItem[3200994] or {}
tItem[3300452] = tItem[3200994] or {}
tItem[3300453] = tItem[3200994] or {}
tItem[3300454] = tItem[3200994] or {}
tItem[3300455] = tItem[3200994] or {}
tItem[3300456] = tItem[3200994] or {}
tItem[3300457] = tItem[3200994] or {}
tItem[3300458] = tItem[3200994] or {}
tItem[3300459] = tItem[3200994] or {}
tItem[3300460] = tItem[3200994] or {}
tItem[3300461] = tItem[3200994] or {}
tItem[3300462] = tItem[3200994] or {}
tItem[3300463] = tItem[3200994] or {}
tItem[3300464] = tItem[3200994] or {}
tItem[3300465] = tItem[3200994] or {}

tItem[3200994]["Function"] = function(nItemId,sItemName)
	HorseRidingMatch_OpenPack(nItemId)
end




----------------------------------------怪物模块-------------------------------------------
-- 转换lua
tMonster[2443] = tMonster[2443] or {}
tMonster[2443]["tFunction"] = tMonster[2443]["tFunction"] or {}
table.insert(tMonster[2443]["tFunction"],HorseRidingMatch_MonsterEffect)

tMonster[2446] = tMonster[2446] or {}
tMonster[2446]["tFunction"] = tMonster[2446]["tFunction"] or {}
table.insert(tMonster[2446]["tFunction"],HorseRidingMatch_MonsterEffect)

tMonster[2452] = tMonster[2452] or {}
tMonster[2452]["tFunction"] = tMonster[2452]["tFunction"] or {}
table.insert(tMonster[2452]["tFunction"],HorseRidingMatch_MonsterEffect)

tMonster[2451] = tMonster[2451] or {}
tMonster[2451]["tFunction"] = tMonster[2451]["tFunction"] or {}
table.insert(tMonster[2451]["tFunction"],HorseRidingMatch_MonsterEffect)

tMonster[2445] = tMonster[2445] or {}
tMonster[2445]["tFunction"] = tMonster[2445]["tFunction"] or {}
table.insert(tMonster[2445]["tFunction"],HorseRidingMatch_MonsterEffect)

tMonster[2453] = tMonster[2453] or {}
tMonster[2453]["tFunction"] = tMonster[2453]["tFunction"] or {}
table.insert(tMonster[2453]["tFunction"],HorseRidingMatch_MonsterEffect)

tMonster[2448] = tMonster[2448] or {}
tMonster[2448]["tFunction"] = tMonster[2448]["tFunction"] or {}
table.insert(tMonster[2448]["tFunction"],HorseRidingMatch_MonsterEffect)

tMonster[2449] = tMonster[2449] or {}
tMonster[2449]["tFunction"] = tMonster[2449]["tFunction"] or {}
table.insert(tMonster[2449]["tFunction"],HorseRidingMatch_MonsterEffect)

tMonster[2712] = tMonster[2712] or {}
tMonster[2712]["tFunction"] = tMonster[2712]["tFunction"] or {}
table.insert(tMonster[2712]["tFunction"],HorseRidingMatch_MonsterEffect2)

tMonster[2824] = tMonster[2824] or {}
tMonster[2824]["tFunction"] = tMonster[2824]["tFunction"] or {}
table.insert(tMonster[2824]["tFunction"],HorseRidingMatch_MonsterEffect2)

-- 新添部分
tMonster[2811] = tMonster[2811] or {}
tMonster[2811]["tFunction"] = tMonster[2811]["tFunction"] or {}
table.insert(tMonster[2811]["tFunction"],HorseRidingMatch_MonsterEffect3)

tMonster[2812] = tMonster[2812] or {}
tMonster[2812]["tFunction"] = tMonster[2812]["tFunction"] or {}
table.insert(tMonster[2812]["tFunction"],HorseRidingMatch_MonsterEffect3)

tMonster[2813] = tMonster[2813] or {}
tMonster[2813]["tFunction"] = tMonster[2813]["tFunction"] or {}
table.insert(tMonster[2813]["tFunction"],HorseRidingMatch_MonsterEffect3)

----------------------------------------Npc模块-------------------------------------------
--骑马大赛专员
tNpcFace[4456] = 55
tNpcGossip[19990] = tNpcGossip[19990] or DefaultNpc:new{}
tNpcGossip[19990]["OptionHidden"] = 1
tNpcGossip[19990]["DialogueText"] = tHorseRidingMatch_Text[19990]
tNpcGossip[19990]["Text1-1"] = {111,112,113}
tNpcGossip[19990]["tOption1-1"] = {1,2,3,4}
tNpcGossip[19990]["ChkFunc1-1"] = function()
	return HorseRidingMatch_BeforeTalk()
end

tNpcGossip[19990]["OptionFunc1"] = "HorseRidingMatch_EnterMatchMap</N>19990"
tNpcGossip[19990]["OptionFunc2"] = "HorseRidingMatch_OpenShop"
tNpcGossip[19990]["OptionPoint3"]="2-3"

tNpcGossip[19990]["Text1-2"] = {121,122,112,113}
tNpcGossip[19990]["tOption1-2"] = {2,3,4}
tNpcGossip[19990]["ChkFunc1-2"] = function()
		-- 2/4导向夺宝
		if HorseRidingMatch_TimePick() then
			return false
		end
		local nEvent = tHorseRidingMatch_Stc[1]["EventType"]
		local nData = tHorseRidingMatch_Stc[1]["DataType"]
		-- local nTimes = Get_UserStatisticDailyValue(nEvent,nData)/1000000
		local nRank = Get_UserStatisticDailyValue(nEvent,nData)%1000000
		
		if nRank == 0 then 
			tNpcGossip[19990]["Text1-2"] = {121,122}
		else
			tNpcGossip[19990]["Text1-2"] = {121,122,112,113}
			tNpcGossip[19990]["Text112"] = string.format(tHorseRidingMatch_Text[19990]["Text112"],nRank)
			
			if nRank <= 200 then
				tNpcGossip[19990]["Text113"] = string.format(tHorseRidingMatch_Text[19990]["Text113"],tHorseRidingMatch_RidePoint[nRank],tHorseRidingMatch_MMoPoint[nRank])
			else
				tNpcGossip[19990]["Text113"] = string.format(tHorseRidingMatch_Text[19990]["Text113"],tHorseRidingMatch_RidePoint[201],tHorseRidingMatch_MMoPoint[201])
			end
		
		end
		return true
end
tNpcGossip[19990]["OptionPoint6"]="2-4"
tNpcGossip[19990]["OptionPoint7"]="2-5"
-- 夺宝逻辑
tNpcGossip[19990]["Text1-3"] = {311}
tNpcGossip[19990]["tOption1-3"] = {1,2,7,4}
tNpcGossip[19990]["ChkFunc1-3"] = function()

local nEvent2 = tHorseRidingMatch_Stc[2]["EventType"]
local nData2 = tHorseRidingMatch_Stc[2]["DataType"]

-- 隔天
if Task_StcInterval(nEvent2,nData2,1,4) then
	Task_SetStatistic(nEvent2,nData2,0,1)
	Task_SetStcTimestamp(nEvent2,nData2,0)
end

if Sys_ChkWeedTime(tHorseRidingMatch_Constant["ActivityWeed"]) then 
		for i=1,#tHorseRidingMatch_Constant["ActivityDay2"] do
			if Sys_ChkDayTime(tHorseRidingMatch_Constant["ActivityDay2"][i]) then
				tNpcGossip[19990]["Text311"] = string.format(tHorseRidingMatch_Text[19990]["Text311"],i)
				return true
			end
		end
		return false
	else
		return false
	end
	
end

-- 非活动时间/夺宝
tNpcGossip[19990]["Text1-4"] = {321,322}
tNpcGossip[19990]["tOption1-4"] = {2,7,4}

-- 非比赛时间
tNpcGossip[19990]["Text2-1"] = {211}
tNpcGossip[19990]["tOption2-1"] = {5}

-- 已参加过
tNpcGossip[19990]["Text2-2"] = {221}
tNpcGossip[19990]["tOption2-2"] = {5}
-- 了解规则竞速
tNpcGossip[19990]["Text2-3"] = {231,232}
tNpcGossip[19990]["tOption2-3"] = {5}

-- 了解比赛时段
tNpcGossip[19990]["Text2-4"] = {241,242,243,244,245}
tNpcGossip[19990]["tOption2-4"] = {5}

-- 了解规则夺宝
tNpcGossip[19990]["Text2-5"] = {251,252}
tNpcGossip[19990]["tOption2-5"] = {5}

-- 已参加过(夺宝)
tNpcGossip[19990]["Text2-6"] = {331}
tNpcGossip[19990]["tOption2-6"] = {5}

--传送使者（进场）
tNpcFace[516] = 166
tNpcGossip[7865] = tNpcGossip[7865] or DefaultNpc:new{}
tNpcGossip[7865]["OptionHidden"] = 1
tNpcGossip[7865]["DialogueText"] = tHorseRidingMatch_Text[7865]
tNpcGossip[7865]["Text1-1"] = {111,112,113}
tNpcGossip[7865]["tOption1-1"] = {1,3,4}
tNpcGossip[7865]["OptionPoint1"]="2-1"
tNpcGossip[7865]["OptionFunc2"] = "HorseRidingMatch_OpenShop"
tNpcGossip[7865]["OptionFunc3"] = "HorseRidingMatch_LeaveMatchMap"

tNpcGossip[7865]["Text2-1"] = {211,212}
tNpcGossip[7865]["tOption2-1"] = {5}

--传送使者（离场）
tNpcFace[516] = 166
tNpcGossip[7866] = tNpcGossip[7866] or DefaultNpc:new{}
tNpcGossip[7866]["OptionHidden"] = 1
tNpcGossip[7866]["DialogueText"] = tHorseRidingMatch_Text[7866]
tNpcGossip[7866]["Text1-1"] = {111,112,113}
tNpcGossip[7866]["tOption1-1"] = {1,2}
tNpcGossip[7866]["OptionFunc1"] = "HorseRidingMatch_LeaveMatchMap"

local tCommTable = CommonFunc_Copy(tNpcGossip[19990])
tNpcGossip[20172] = tCommTable
tNpcGossip[20172]["ChkFunc1-1"] = function()
	return HorseRidingMatch_BeforeTalk2()
end
tNpcGossip[20172]["ChkFunc1-2"] = function()
		-- 2/4导向夺宝
		if HorseRidingMatch_TimePick() then
			return false
		end
		local nEvent = tHorseRidingMatch_Stc[1]["EventType"]
		local nData = tHorseRidingMatch_Stc[1]["DataType"]
		-- local nTimes = Get_UserStatisticDailyValue(nEvent,nData)/1000000
		local nRank = Get_UserStatisticDailyValue(nEvent,nData)%1000000
		if nRank == 0 then 
			tNpcGossip[20172]["Text1-2"] = {121,122}
		else
			tNpcGossip[20172]["Text1-2"] = {121,122,112,113}
			tNpcGossip[20172]["Text112"] = string.format(tHorseRidingMatch_Text[19990]["Text112"],nRank)
			if nRank <= 200 then
				tNpcGossip[20172]["Text113"] = string.format(tHorseRidingMatch_Text[19990]["Text113"],tHorseRidingMatch_RidePoint[nRank],tHorseRidingMatch_MMoPoint[nRank])
			else
				tNpcGossip[20172]["Text113"] = string.format(tHorseRidingMatch_Text[19990]["Text113"],tHorseRidingMatch_RidePoint[201],tHorseRidingMatch_MMoPoint[201])
			end
		end
		return true
end
tNpcGossip[20172]["ChkFunc1-3"] = function()
local nEvent2 = tHorseRidingMatch_Stc[2]["EventType"]
local nData2 = tHorseRidingMatch_Stc[2]["DataType"]
-- 隔天
if Task_StcInterval(nEvent2,nData2,1,4) then
	Task_SetStatistic(nEvent2,nData2,0,1)
	Task_SetStcTimestamp(nEvent2,nData2,0)
end
if Sys_ChkWeedTime(tHorseRidingMatch_Constant["ActivityWeed"]) then 
		for i=1,#tHorseRidingMatch_Constant["ActivityDay2"] do
			if Sys_ChkDayTime(tHorseRidingMatch_Constant["ActivityDay2"][i]) then
				tNpcGossip[20172]["Text311"] = string.format(tHorseRidingMatch_Text[19990]["Text311"],i)
				return true
			end
		end
		return false
	else
		return false
	end
	
end
--------------------------------------时间自检-------------------------------------------
-- tSystem_Prompet_Func = tSystem_Prompet_Func or {}
-- table.insert(tSystem_Prompet_Func,HorseRidingMatch_Control)

-- local tHorseRidingMatch_Msg1 = {}
-- tHorseRidingMatch_Msg1["Type"] = 6
-- tHorseRidingMatch_Msg1["TimeType"] = 4
-- tHorseRidingMatch_Msg1["Multiple"] = {}
-- tHorseRidingMatch_Msg1["Multiple"][1]  = "4:27 4:27"
-- tHorseRidingMatch_Msg1["Multiple"][2]  = "10:27 10:27"
-- tHorseRidingMatch_Msg1["Multiple"][3]  = "16:27 16:27"
-- tHorseRidingMatch_Msg1["Multiple"][4]  = "20:27 20:27"
-- tHorseRidingMatch_Msg1["Func"] = HorseRidingMatch_Msg1
-- table.insert(tSystemTime_InitialData,tHorseRidingMatch_Msg1)


-- local tHorseRidingMatch_Msg2 = {}
-- tHorseRidingMatch_Msg2["Type"] = 6
-- tHorseRidingMatch_Msg2["TimeType"] = 4
-- tHorseRidingMatch_Msg2["Multiple"] = {}
-- tHorseRidingMatch_Msg2["Multiple"][1]  = "4:28 4:28"
-- tHorseRidingMatch_Msg2["Multiple"][2]  = "10:28 10:28"
-- tHorseRidingMatch_Msg2["Multiple"][3]  = "16:28 16:28"
-- tHorseRidingMatch_Msg2["Multiple"][4]  = "20:28 20:28"
-- tHorseRidingMatch_Msg2["Func"] = HorseRidingMatch_Msg2
-- table.insert(tSystemTime_InitialData,tHorseRidingMatch_Msg2)

-- local tHorseRidingMatch_Msg3 = {}
-- tHorseRidingMatch_Msg3["Type"] = 6
-- tHorseRidingMatch_Msg3["TimeType"] = 4
-- tHorseRidingMatch_Msg3["Multiple"] = {}
-- tHorseRidingMatch_Msg3["Multiple"][1]  = "4:29 4:29"
-- tHorseRidingMatch_Msg3["Multiple"][2]  = "10:29 10:29"
-- tHorseRidingMatch_Msg3["Multiple"][3]  = "16:29 16:29"
-- tHorseRidingMatch_Msg3["Multiple"][4]  = "20:29 20:29"
-- tHorseRidingMatch_Msg3["Func"] = HorseRidingMatch_Msg3
-- table.insert(tSystemTime_InitialData,tHorseRidingMatch_Msg3)

-- local tHorseRidingMatch_Msg4 = {}
-- tHorseRidingMatch_Msg4["Type"] = 6
-- tHorseRidingMatch_Msg4["TimeType"] = 4
-- tHorseRidingMatch_Msg4["Multiple"] = {}
-- tHorseRidingMatch_Msg4["Multiple"][1]  = "3:55 3:55"
-- tHorseRidingMatch_Msg4["Multiple"][2]  = "9:55 9:55"
-- tHorseRidingMatch_Msg4["Multiple"][3]  = "15:55 15:55"
-- tHorseRidingMatch_Msg4["Multiple"][4]  = "19:55 19:55"
-- tHorseRidingMatch_Msg4["Func"] = HorseRidingMatch_Msg4
-- table.insert(tSystemTime_InitialData,tHorseRidingMatch_Msg4)

-- local tHorseRidingMatch_Msg6 = {}
-- tHorseRidingMatch_Msg6["Type"] = 6
-- tHorseRidingMatch_Msg6["TimeType"] = 4
-- tHorseRidingMatch_Msg6["Multiple"] = {}
-- tHorseRidingMatch_Msg6["Multiple"][1]  = "4:00 4:00"
-- tHorseRidingMatch_Msg6["Multiple"][2]  = "10:00 10:00"
-- tHorseRidingMatch_Msg6["Multiple"][3]  = "16:00 16:00"
-- tHorseRidingMatch_Msg6["Multiple"][4]  = "20:00 20:00"
-- tHorseRidingMatch_Msg6["Func"] = HorseRidingMatch_Msg6
-- table.insert(tSystemTime_InitialData,tHorseRidingMatch_Msg6)

-- local tHorseRidingMatch_Msg5 = {}
-- tHorseRidingMatch_Msg5["Type"] = 6
-- tHorseRidingMatch_Msg5["TimeType"] = 4
-- tHorseRidingMatch_Msg5["Multiple"] = {}
-- tHorseRidingMatch_Msg5["Multiple"][1]  = "3:59 3:59"
-- tHorseRidingMatch_Msg5["Multiple"][2]  = "9:59 9:59"
-- tHorseRidingMatch_Msg5["Multiple"][3]  = "15:59 15:59"
-- tHorseRidingMatch_Msg5["Multiple"][4]  = "19:59 19:59"
-- tHorseRidingMatch_Msg5["Func"] = HorseRidingMatch_Msg5
-- table.insert(tSystemTime_InitialData,tHorseRidingMatch_Msg5)


-- local tHorseRidingMatch_InviteAction = {}
-- tHorseRidingMatch_InviteAction["Type"] = 6
-- tHorseRidingMatch_InviteAction["TimeType"] = 4
-- tHorseRidingMatch_InviteAction["Multiple"] = {}
-- tHorseRidingMatch_InviteAction["Multiple"][1]  = "3:58 3:58"
-- tHorseRidingMatch_InviteAction["Multiple"][2]  = "9:58 9:58"
-- tHorseRidingMatch_InviteAction["Multiple"][3]  = "15:58 15:58"
-- tHorseRidingMatch_InviteAction["Multiple"][4]  = "19:58 19:58"
-- tHorseRidingMatch_InviteAction["Func"] = HorseRidingMatch_InviteAction
-- table.insert(tSystemTime_InitialData,tHorseRidingMatch_InviteAction)


--比赛完成发奖
-- tAwardHorseRace = tAwardHorseRace or {}
-- tAwardHorseRace["tFunction"] = tAwardHorseRace["tFunction"] or {}
-- table.insert(tAwardHorseRace["tFunction"],HorseRidingMatch_RaceAward)

-- 夺宝陷阱触发	1573
-- tTrap[1573] = tTrap[1573] or {}
-- tTrap[1573]["Function"] = function(nTrapId,nTrapType)
	-- HorseRidingMatch_TimeOpen(nTrapId,nTrapType)
-- end