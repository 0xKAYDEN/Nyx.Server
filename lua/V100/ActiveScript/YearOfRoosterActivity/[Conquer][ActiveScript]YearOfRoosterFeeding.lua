------------------------------------------------------------------------------------
--Name:		[征服][活动脚本]鸡年年兽活动-喂养
--Purpose:	鸡年年兽活动-喂养
--Creator: 	吴文鑫
--Created:	2017/01/06
------------------------------------------------------------------------------------

-- 命名前缀
--YearOfRoosterFeeding_
--12000629

-- 常量表
local tYearOfRoosterFeeding_Constant = {}
	tYearOfRoosterFeeding_Constant["ActivetyTime"] = "2017-04-06 00:00 2017-04-15 23:59"
	tYearOfRoosterFeeding_Constant["MaxTimes"] = 30
	tYearOfRoosterFeeding_Constant["AddTimes"] = 10
	--等级
	tYearOfRoosterFeeding_Constant["Level"] = 80
	tYearOfRoosterFeeding_Constant["Metempsychosis"] = 0
	
	tYearOfRoosterFeeding_Constant["Space"] = 1
	
-- 小学—小学毕业，花2天石增加属性点  350 20525
-- 中学—中学毕业，花2天石增加属性点  350 20526
-- 大学—大学毕业，花9天石增加属性点  350 20527
-- 硕士—硕士毕业，花39天石增加属性点 350 20528
-- 博士—博士毕业，花39天石增加属性点 350 20529

	tYearOfRoosterFeeding_Constant["EmoneyLog"] = {}
	tYearOfRoosterFeeding_Constant["EmoneyLog"][1] = "350	20525	%d	%d	1	"
	tYearOfRoosterFeeding_Constant["EmoneyLog"][2] = "350	20526	%d	%d	1	"
	tYearOfRoosterFeeding_Constant["EmoneyLog"][3] = "350	20527	%d	%d	1	"
	tYearOfRoosterFeeding_Constant["EmoneyLog"][4] = "350	20528	%d	%d	1	"
	tYearOfRoosterFeeding_Constant["EmoneyLog"][5] = "350	20529	%d	%d	1	"
	
	
	
	
	
	tYearOfRoosterFeeding_Constant["AddItem"] = 3302112
	
	tYearOfRoosterFeeding_Constant["UpPoint"] = 1
	tYearOfRoosterFeeding_Constant["AddPoint"] = 1
	
	tYearOfRoosterFeeding_Constant["Initial"] = 100000000
	tYearOfRoosterFeeding_Constant["GuiZe"] = "http://zf.99.com/activity/2016/dbl/nslcgl.shtml"
	
	tYearOfRoosterFeeding_Constant["Random"] = 10000
	tYearOfRoosterFeeding_Constant["BookBag"] = 3302114
	
	
local tYearOfRoosterFeeding_Log = {}
tYearOfRoosterFeeding_Log[1] = "0,0,3302112,1,12000629,2,15445,5"
tYearOfRoosterFeeding_Log[2] = "0,0,0,0,12000629,1[%d],0,0"
tYearOfRoosterFeeding_Log[3] = "0,0,0,0,12000629,2,15442%d,%d"
tYearOfRoosterFeeding_Log[4] = "%d,0,0,0,12000629,2,15442%d,%d"
tYearOfRoosterFeeding_Log[5] = "0,0,0,0,12000629,3,15442%d,%d"
tYearOfRoosterFeeding_Log[6] = "0,0,%d,1,12000629,3,15442%d,%d"


local tYearOfRoosterFeeding_AwardLog = {}
tYearOfRoosterFeeding_AwardLog[1] = {}
tYearOfRoosterFeeding_AwardLog[1][1] = "0,0,0,0,12000629,1,3302139[3302138][13600],1[1][1]"
tYearOfRoosterFeeding_AwardLog[1][2] = "0,0,0,0,12000629,1,3302140[3302138][13600],1[1][1]"
tYearOfRoosterFeeding_AwardLog[2] = {}
tYearOfRoosterFeeding_AwardLog[2][1] = "0,0,0,0,12000629,1,3302141[3302138][13601],1[1][1]"
tYearOfRoosterFeeding_AwardLog[2][2] = "0,0,0,0,12000629,1,3302142[3302138][13601],1[1][1]"

tYearOfRoosterFeeding_AwardLog[3] = "0,0,0,0,12000629,1[8],3302143[13602],1[1]"
tYearOfRoosterFeeding_AwardLog[4] = "0,0,0,0,12000629,1[9],3302144[13603],1[1]"
tYearOfRoosterFeeding_AwardLog[5] = "0,0,0,0,12000629,1[10],200592[13604],1[1]"

-- 年兽小学毕业获得外套奖励    350 20520
-- 年兽中学毕业获得外套奖励    350 20521
-- 年兽大学毕业获得外套奖励    350 20522
-- 年兽硕士毕业获得外套奖励    350 20523
-- 年兽博士毕业获得外套奖励    350 20524

tYearOfRoosterFeeding_AwardLog["EmoneyLog"] = {}
tYearOfRoosterFeeding_AwardLog["EmoneyLog"][1] = "350	20520	0	0	1	"
tYearOfRoosterFeeding_AwardLog["EmoneyLog"][2] = "350	20521	0	0	1	"
tYearOfRoosterFeeding_AwardLog["EmoneyLog"][3] = "350	20522	0	0	1	"
tYearOfRoosterFeeding_AwardLog["EmoneyLog"][4] = "350	20523	0	0	1	"
tYearOfRoosterFeeding_AwardLog["EmoneyLog"][5] = "350	20524	0	0	1	"





local tYearOfRoosterFeeding_Effect = {}
tYearOfRoosterFeeding_Effect["UpPoint"] = "eidolon"

tYearOfRoosterFeeding_Effect["UpXueLi"] = {}
tYearOfRoosterFeeding_Effect["UpXueLi"][1] = "accession"
tYearOfRoosterFeeding_Effect["UpXueLi"][2] = "accession"
tYearOfRoosterFeeding_Effect["UpXueLi"][3] = "accession"
tYearOfRoosterFeeding_Effect["UpXueLi"][4] = "accession"
tYearOfRoosterFeeding_Effect["UpXueLi"][5] = "accession"


tYearOfRoosterFeeding_Effect["GiveCoat"] = "FF07"
tYearOfRoosterFeeding_Effect["ExamFail"] = "Disapear1"
tYearOfRoosterFeeding_Effect["ExamSuccess"] = "accession"
tYearOfRoosterFeeding_Effect["UseHeTao"] = "dispel1"
tYearOfRoosterFeeding_Effect["UseSecretBook"] = "coattryon"
tYearOfRoosterFeeding_Effect["UseMaxEmoney"] = "zf2-e128"
tYearOfRoosterFeeding_Effect["UseEmoney"] = "changefig"



local tYearOfRoosterFeeding_GuiZe = {}
tYearOfRoosterFeeding_GuiZe[1] = {}
tYearOfRoosterFeeding_GuiZe[1][2] = {}
tYearOfRoosterFeeding_GuiZe[1][2][1] = "http://zf.99.com/activity/2016/dbl/xjhdnwj.shtml"
tYearOfRoosterFeeding_GuiZe[1][2][2] = "http://zf.99.com/activity/2016/dbl/xjhdnnwj.shtml"
tYearOfRoosterFeeding_GuiZe[1][3] = "http://zf.99.com/activity/2016/dbl/xjcmt.shtml"

tYearOfRoosterFeeding_GuiZe[2] = {}
tYearOfRoosterFeeding_GuiZe[2][2] = "http://zf.99.com/activity/2016/dbl/hxsjt.shtml"

tYearOfRoosterFeeding_GuiZe[3] = {}
tYearOfRoosterFeeding_GuiZe[3][3] = "http://zf.99.com/activity/2016/dbl/mnlj.shtml"
tYearOfRoosterFeeding_GuiZe[3][4] = "http://zf.99.com/activity/2016/dbl/bjt.shtml"



local tYearOfRoosterFeeding_Random = {}
tYearOfRoosterFeeding_Random[1] = 1000
tYearOfRoosterFeeding_Random[2] = 1000
tYearOfRoosterFeeding_Random[3] = 1000
tYearOfRoosterFeeding_Random[4] = 1000
tYearOfRoosterFeeding_Random[5] = 1000
 
local tYearOfRoosterFeeding_AwardRandom = {}
	tYearOfRoosterFeeding_AwardRandom[1] = 1000
	tYearOfRoosterFeeding_AwardRandom[2] = 1000

local tYearOfRoosterFeeding_Npc = {}
	tYearOfRoosterFeeding_Npc[1] = 20224
	tYearOfRoosterFeeding_Npc[2] = 20310
	tYearOfRoosterFeeding_Npc[3] = 20311

local tYearOfRoosterFeeding_Dialog = {}
	tYearOfRoosterFeeding_Dialog[1] = 1
	tYearOfRoosterFeeding_Dialog[2] = 1
	tYearOfRoosterFeeding_Dialog[3] = 1
	tYearOfRoosterFeeding_Dialog[4] = 1
	tYearOfRoosterFeeding_Dialog[5] = 1
	
	
	
	
local 	tYearOfRoosterFeeding_Award = {}
	tYearOfRoosterFeeding_Award[20224] = {}
	tYearOfRoosterFeeding_Award[20224]["RewardItem"] = {}
	tYearOfRoosterFeeding_Award[20224]["RewardItem"][1] = {}
	tYearOfRoosterFeeding_Award[20224]["RewardItem"][1]["Id"] = 3302114
	tYearOfRoosterFeeding_Award[20224]["RewardItem"][1]["Attr"] = "0 1"
	tYearOfRoosterFeeding_Award[20224]["Space"] = 1
	tYearOfRoosterFeeding_Award[20224]["LogId"] = 12000629
	
local 	tYearOfRoosterFeeding_Emoney = {}
	tYearOfRoosterFeeding_Emoney[1] = 2
	tYearOfRoosterFeeding_Emoney[2] = 2
	tYearOfRoosterFeeding_Emoney[3] = 9
	tYearOfRoosterFeeding_Emoney[4] = 39
	tYearOfRoosterFeeding_Emoney[5] = 39
	
local tYearOfRoosterFeeding_AwardMagic = {}
	tYearOfRoosterFeeding_AwardMagic[1] = {}
	tYearOfRoosterFeeding_AwardMagic[1]["RewardMagic"] = {}
	tYearOfRoosterFeeding_AwardMagic[1]["RewardMagic"]["MagicType"] = 13600
	tYearOfRoosterFeeding_AwardMagic[1]["RewardMagic"]["LearnMagic"] = tYearOfRoosterFeeding_Text["LearnMagic"]
	
	tYearOfRoosterFeeding_AwardMagic[2] = {}
	tYearOfRoosterFeeding_AwardMagic[2]["RewardMagic"] = {}
	tYearOfRoosterFeeding_AwardMagic[2]["RewardMagic"]["MagicType"] = 13600
	tYearOfRoosterFeeding_AwardMagic[2]["RewardMagic"]["MagicUp"] = 1
	tYearOfRoosterFeeding_AwardMagic[2]["RewardMagic"]["Times"] = 1
	tYearOfRoosterFeeding_AwardMagic[2]["RewardMagic"]["UpMagic"] = tYearOfRoosterFeeding_Text["UpMagic"][1]
	
	tYearOfRoosterFeeding_AwardMagic[3] = {}
	tYearOfRoosterFeeding_AwardMagic[3]["RewardMagic"] = {}
	tYearOfRoosterFeeding_AwardMagic[3]["RewardMagic"]["MagicType"] = 13600
	tYearOfRoosterFeeding_AwardMagic[3]["RewardMagic"]["MagicUp"] = 1
	tYearOfRoosterFeeding_AwardMagic[3]["RewardMagic"]["Times"] = 2
	tYearOfRoosterFeeding_AwardMagic[3]["RewardMagic"]["UpMagic"] = tYearOfRoosterFeeding_Text["UpMagic"][2]
	
	tYearOfRoosterFeeding_AwardMagic[4] = {}
	tYearOfRoosterFeeding_AwardMagic[4]["RewardMagic"] = {}
	tYearOfRoosterFeeding_AwardMagic[4]["RewardMagic"]["MagicType"] = 13600
	tYearOfRoosterFeeding_AwardMagic[4]["RewardMagic"]["MagicUp"] = 1
	tYearOfRoosterFeeding_AwardMagic[4]["RewardMagic"]["Times"] = 3
	tYearOfRoosterFeeding_AwardMagic[4]["RewardMagic"]["UpMagic"] = tYearOfRoosterFeeding_Text["UpMagic"][3]
	
	tYearOfRoosterFeeding_AwardMagic[5] = {}
	tYearOfRoosterFeeding_AwardMagic[5]["RewardMagic"] = {}
	tYearOfRoosterFeeding_AwardMagic[5]["RewardMagic"]["MagicType"] = 13600
	tYearOfRoosterFeeding_AwardMagic[5]["RewardMagic"]["MagicUp"] = 1
	tYearOfRoosterFeeding_AwardMagic[5]["RewardMagic"]["Times"] = 4
	tYearOfRoosterFeeding_AwardMagic[5]["RewardMagic"]["UpMagic"] = tYearOfRoosterFeeding_Text["UpMagic"][4]
	
	
	
local tYearOfRoosterFeeding_ShengXueAward = {}
	tYearOfRoosterFeeding_ShengXueAward[1] = {}
	tYearOfRoosterFeeding_ShengXueAward[1]["Space"] = 2
	--3302138
	tYearOfRoosterFeeding_ShengXueAward[1][1] = {}
	tYearOfRoosterFeeding_ShengXueAward[1][1]["RewardItem"] = {}
	tYearOfRoosterFeeding_ShengXueAward[1][1]["RewardItem"][1] = {}
	tYearOfRoosterFeeding_ShengXueAward[1][1]["RewardItem"][1]["Id"] = 3302139
	tYearOfRoosterFeeding_ShengXueAward[1][1]["RewardItem"][1]["Attr"] = "0 1"
	tYearOfRoosterFeeding_ShengXueAward[1][1]["RewardItem"][2] = {}
	tYearOfRoosterFeeding_ShengXueAward[1][1]["RewardItem"][2]["Id"] = 3302138
	tYearOfRoosterFeeding_ShengXueAward[1][1]["RewardItem"][2]["Attr"] = "0 1"
	tYearOfRoosterFeeding_ShengXueAward[1][1]["ActionId"] = 565082
	
	tYearOfRoosterFeeding_ShengXueAward[1][2] = {}
	tYearOfRoosterFeeding_ShengXueAward[1][2]["RewardItem"] = {}
	tYearOfRoosterFeeding_ShengXueAward[1][2]["RewardItem"][1] = {}
	tYearOfRoosterFeeding_ShengXueAward[1][2]["RewardItem"][1]["Id"] = 3302140
	tYearOfRoosterFeeding_ShengXueAward[1][2]["RewardItem"][1]["Attr"] = "0 1"
	tYearOfRoosterFeeding_ShengXueAward[1][2]["RewardItem"][2] = {}
	tYearOfRoosterFeeding_ShengXueAward[1][2]["RewardItem"][2]["Id"] = 3302138
	tYearOfRoosterFeeding_ShengXueAward[1][2]["RewardItem"][2]["Attr"] = "0 1"
	
	
	
	
	tYearOfRoosterFeeding_ShengXueAward[1][2]["ActionId"] = 565083
	
	tYearOfRoosterFeeding_ShengXueAward[2] = {}
	tYearOfRoosterFeeding_ShengXueAward[2]["Space"] = 2
	tYearOfRoosterFeeding_ShengXueAward[2][1] = {}
	tYearOfRoosterFeeding_ShengXueAward[2][1]["RewardItem"] = {}
	tYearOfRoosterFeeding_ShengXueAward[2][1]["RewardItem"][1] = {}
	tYearOfRoosterFeeding_ShengXueAward[2][1]["RewardItem"][1]["Id"] = 3302141
	tYearOfRoosterFeeding_ShengXueAward[2][1]["RewardItem"][1]["Attr"] = "0 1"
	tYearOfRoosterFeeding_ShengXueAward[2][1]["RewardItem"][2] = {}
	tYearOfRoosterFeeding_ShengXueAward[2][1]["RewardItem"][2]["Id"] = 3302138
	tYearOfRoosterFeeding_ShengXueAward[2][1]["RewardItem"][2]["Attr"] = "0 1"
	tYearOfRoosterFeeding_ShengXueAward[2][1]["ActionId"] = 565084
	
	tYearOfRoosterFeeding_ShengXueAward[2][2] = {}
	tYearOfRoosterFeeding_ShengXueAward[2][2]["RewardItem"] = {}
	tYearOfRoosterFeeding_ShengXueAward[2][2]["RewardItem"][1] = {}
	tYearOfRoosterFeeding_ShengXueAward[2][2]["RewardItem"][1]["Id"] = 3302142
	tYearOfRoosterFeeding_ShengXueAward[2][2]["RewardItem"][1]["Attr"] = "0 1"
	tYearOfRoosterFeeding_ShengXueAward[2][2]["RewardItem"][2] = {}
	tYearOfRoosterFeeding_ShengXueAward[2][2]["RewardItem"][2]["Id"] = 3302138
	tYearOfRoosterFeeding_ShengXueAward[2][2]["RewardItem"][2]["Attr"] = "0 1"
	tYearOfRoosterFeeding_ShengXueAward[2][2]["ActionId"] = 565085
	
	tYearOfRoosterFeeding_ShengXueAward[3] = {}
	tYearOfRoosterFeeding_ShengXueAward[3]["Space"] = 1
	tYearOfRoosterFeeding_ShengXueAward[3][1] = {}
	tYearOfRoosterFeeding_ShengXueAward[3][1]["RewardItem"] = {}
	tYearOfRoosterFeeding_ShengXueAward[3][1]["RewardItem"][1] = {}
	tYearOfRoosterFeeding_ShengXueAward[3][1]["RewardItem"][1]["Id"] = 3302143
	tYearOfRoosterFeeding_ShengXueAward[3][1]["RewardItem"][1]["Attr"] = "0 1"
	tYearOfRoosterFeeding_ShengXueAward[3][1]["ActionId"] = 565086
	
	tYearOfRoosterFeeding_ShengXueAward[4] = {}
	tYearOfRoosterFeeding_ShengXueAward[4]["Space"] = 1
	tYearOfRoosterFeeding_ShengXueAward[4][1] = {}
	tYearOfRoosterFeeding_ShengXueAward[4][1]["RewardItem"] = {}
	tYearOfRoosterFeeding_ShengXueAward[4][1]["RewardItem"][1] = {}
	tYearOfRoosterFeeding_ShengXueAward[4][1]["RewardItem"][1]["Id"] = 3302144
	tYearOfRoosterFeeding_ShengXueAward[4][1]["RewardItem"][1]["Attr"] = "0 1"
	tYearOfRoosterFeeding_ShengXueAward[4][1]["ActionId"] = 565087
	
	tYearOfRoosterFeeding_ShengXueAward[5] = {}
	tYearOfRoosterFeeding_ShengXueAward[5]["Space"] = 1
	tYearOfRoosterFeeding_ShengXueAward[5][1] = {}
	tYearOfRoosterFeeding_ShengXueAward[5][1]["RewardItem"] = {}
	tYearOfRoosterFeeding_ShengXueAward[5][1]["RewardItem"][1] = {}
	tYearOfRoosterFeeding_ShengXueAward[5][1]["RewardItem"][1]["Id"] = 200592
	tYearOfRoosterFeeding_ShengXueAward[5][1]["RewardItem"][1]["Attr"] = "0 0 3 0 0 0 0 1"
	tYearOfRoosterFeeding_ShengXueAward[5][1]["ActionId"] = 565088
	
 tYearOfRoosterFeeding_Stc = {}
--学历以及各科学分
	tYearOfRoosterFeeding_Stc["Education"] = {}
	tYearOfRoosterFeeding_Stc["Education"]["EventType"] = 154
	tYearOfRoosterFeeding_Stc["Education"]["DataType"] = 42
--每日学习次数
	tYearOfRoosterFeeding_Stc["Times"] = {}
	tYearOfRoosterFeeding_Stc["Times"]["EventType"] = 154
	tYearOfRoosterFeeding_Stc["Times"]["DataType"] = 43
--年兽类型以及天赋
	tYearOfRoosterFeeding_Stc["BTalent"] = {}
	tYearOfRoosterFeeding_Stc["BTalent"]["EventType"] = 154
	tYearOfRoosterFeeding_Stc["BTalent"]["DataType"] = 44
--额外次数
	tYearOfRoosterFeeding_Stc["Add"] = {}
	tYearOfRoosterFeeding_Stc["Add"]["EventType"] = 154
	tYearOfRoosterFeeding_Stc["Add"]["DataType"] = 45

local tYearOfRoosterFeeding_BeastNo = {}
	tYearOfRoosterFeeding_BeastNo[20224] = 1
	tYearOfRoosterFeeding_BeastNo[20310] = 2
	tYearOfRoosterFeeding_BeastNo[20311] = 3
	
	
	
local tYearOfRoosterFeeding_Mod = {}
	tYearOfRoosterFeeding_Mod[1] = 100
	tYearOfRoosterFeeding_Mod[2] = 10000
	tYearOfRoosterFeeding_Mod[3] = 1000000
	tYearOfRoosterFeeding_Mod[4] = 100000000
	tYearOfRoosterFeeding_Mod[5] = 1000000000

	
local tYearOfRoosterFeeding_Idiv = {}
	tYearOfRoosterFeeding_Idiv[1] = 1
	tYearOfRoosterFeeding_Idiv[2] = 100
	tYearOfRoosterFeeding_Idiv[3] = 10000
	tYearOfRoosterFeeding_Idiv[4] = 1000000
	tYearOfRoosterFeeding_Idiv[5] = 100000000

--升学属性点	文学	数学 	体育	美术
--升小学		8		8		8		8
--升中学		12		12		12		12
--升大学		18		18		18		18
--升硕士		30		30		30		30
--升博士		75		75		75		75
local tYearOfRoosterFeeding_NeedPoint = {}
	tYearOfRoosterFeeding_NeedPoint[1] = 8
	tYearOfRoosterFeeding_NeedPoint[2] = 12
	tYearOfRoosterFeeding_NeedPoint[3] = 18
	tYearOfRoosterFeeding_NeedPoint[4] = 30
	tYearOfRoosterFeeding_NeedPoint[5] = 75
	
-- # 普通课本 可交易，其他课本不可交易;用于升至中学毕业
-- (3302079,'普通美术课本',8,9
-- (3302080,'普通语文课本',8,9
-- (3302081,'普通数学课本',8,9
-- (3302082,'普通体育课本',8,9
-- # 中级课本 用于大学至大学毕
-- (3302083,'艺术中级课本',11,
-- (3302084,'文学中级课本',11,
-- (3302085,'数学中级课本',11,
-- (3302086,'体育中级课本',11,
-- # 高级课本 用于硕士至博士毕
-- (3302087,'艺术高级课本',11,
-- (3302088,'文学高级课本',11,
-- (3302089,'数学高级课本',11,
-- (3302090,'体育高级课本',11,

local tYearOfRoosterFeeding_NeedBook = {}
	tYearOfRoosterFeeding_NeedBook[1] = {}
	tYearOfRoosterFeeding_NeedBook[1][1] = 3302080
	tYearOfRoosterFeeding_NeedBook[1][2] = 3302081
	tYearOfRoosterFeeding_NeedBook[1][3] = 3302079
	tYearOfRoosterFeeding_NeedBook[1][4] = 3302082
	
	tYearOfRoosterFeeding_NeedBook[2] = {}
	tYearOfRoosterFeeding_NeedBook[2][1] = 3302080
	tYearOfRoosterFeeding_NeedBook[2][2] = 3302081
	tYearOfRoosterFeeding_NeedBook[2][3] = 3302079
	tYearOfRoosterFeeding_NeedBook[2][4] = 3302082
	
	tYearOfRoosterFeeding_NeedBook[3] = {}
	tYearOfRoosterFeeding_NeedBook[3][1] = 3302084
	tYearOfRoosterFeeding_NeedBook[3][2] = 3302085
	tYearOfRoosterFeeding_NeedBook[3][3] = 3302083
	tYearOfRoosterFeeding_NeedBook[3][4] = 3302086
	
	tYearOfRoosterFeeding_NeedBook[4] = {}
	tYearOfRoosterFeeding_NeedBook[4][1] = 3302088
	tYearOfRoosterFeeding_NeedBook[4][2] = 3302089
	tYearOfRoosterFeeding_NeedBook[4][3] = 3302087
	tYearOfRoosterFeeding_NeedBook[4][4] = 3302090
	
	tYearOfRoosterFeeding_NeedBook[5] = {}
	tYearOfRoosterFeeding_NeedBook[5][1] = 3302088
	tYearOfRoosterFeeding_NeedBook[5][2] = 3302089
	tYearOfRoosterFeeding_NeedBook[5][3] = 3302087
	tYearOfRoosterFeeding_NeedBook[5][4] = 3302090
	
--隐藏书籍对应选项编号
	local tYearOfRoosterFeeding_SecretBook = {}
	tYearOfRoosterFeeding_SecretBook[3302091] = 30
	tYearOfRoosterFeeding_SecretBook[3302092] = 31
	tYearOfRoosterFeeding_SecretBook[3302093] = 32
	tYearOfRoosterFeeding_SecretBook[3302094] = 33
	tYearOfRoosterFeeding_SecretBook[3302095] = 34
	tYearOfRoosterFeeding_SecretBook[3302096] = 35
	tYearOfRoosterFeeding_SecretBook[3302097] = 36
	tYearOfRoosterFeeding_SecretBook[3302098] = 37
	tYearOfRoosterFeeding_SecretBook[3302099] = 38
	tYearOfRoosterFeeding_SecretBook[3302100] = 39
	tYearOfRoosterFeeding_SecretBook[3302101] = 40
	tYearOfRoosterFeeding_SecretBook[3302102] = 41
	tYearOfRoosterFeeding_SecretBook[3302103] = 42
	tYearOfRoosterFeeding_SecretBook[3302104] = 43
	tYearOfRoosterFeeding_SecretBook[3302105] = 44
	tYearOfRoosterFeeding_SecretBook[3302106] = 45
	tYearOfRoosterFeeding_SecretBook[3302107] = 46
	tYearOfRoosterFeeding_SecretBook[3302108] = 47
	tYearOfRoosterFeeding_SecretBook[3302109] = 48
	tYearOfRoosterFeeding_SecretBook[3302110] = 49
	-- 1 语文	2 数学	3 美术	4 体育
--隐藏书籍对应属性点
local tYearOfRoosterFeeding_SecretPoint = {}
tYearOfRoosterFeeding_SecretPoint[3302091] = {1,4}
tYearOfRoosterFeeding_SecretPoint[3302092] = {1,4}
tYearOfRoosterFeeding_SecretPoint[3302093] = {3,4}
tYearOfRoosterFeeding_SecretPoint[3302094] = {2,4}
tYearOfRoosterFeeding_SecretPoint[3302095] = {1,3}
tYearOfRoosterFeeding_SecretPoint[3302096] = {2,4}
tYearOfRoosterFeeding_SecretPoint[3302097] = {1,2}
tYearOfRoosterFeeding_SecretPoint[3302098] = {1,3}
tYearOfRoosterFeeding_SecretPoint[3302099] = {2,4}
tYearOfRoosterFeeding_SecretPoint[3302100] = {1,4}
	-- 1 语文	2 数学	3 美术	4 体育
tYearOfRoosterFeeding_SecretPoint[3302101] = {2,3}
tYearOfRoosterFeeding_SecretPoint[3302102] = {1,3}
tYearOfRoosterFeeding_SecretPoint[3302103] = {1,4}
tYearOfRoosterFeeding_SecretPoint[3302104] = {2,4}
tYearOfRoosterFeeding_SecretPoint[3302105] = {1,3}
tYearOfRoosterFeeding_SecretPoint[3302106] = {2,4}
tYearOfRoosterFeeding_SecretPoint[3302107] = {1,3}
tYearOfRoosterFeeding_SecretPoint[3302108] = {4,1}
tYearOfRoosterFeeding_SecretPoint[3302109] = {1,3}
tYearOfRoosterFeeding_SecretPoint[3302110] = {1,4}

--隐藏书籍随机点数
local tYearOfRoosterFeeding_RandomPoint = {}
tYearOfRoosterFeeding_RandomPoint[1] = {2,3}
tYearOfRoosterFeeding_RandomPoint[2] = {3,2}
tYearOfRoosterFeeding_RandomPoint[3] = {1,4}
tYearOfRoosterFeeding_RandomPoint[4] = {4,1}

--考试几率满足
local tYearOfRoosterFeeding_Rate = {}
tYearOfRoosterFeeding_Rate[1] = 52
tYearOfRoosterFeeding_Rate[2] = 53
tYearOfRoosterFeeding_Rate[3] = 54
tYearOfRoosterFeeding_Rate[4] = 55






local tYearOfRoosterFeeding_Pack = {}
	tYearOfRoosterFeeding_Pack[3302138] = {}
	tYearOfRoosterFeeding_Pack[3302138]["ItemChanceSum"] = 10000
	tYearOfRoosterFeeding_Pack[3302138]["LogId"] = 12000629

	tYearOfRoosterFeeding_Pack[3302138][1] = {}
	tYearOfRoosterFeeding_Pack[3302138][1]["RandomItemChanceType"] = 2
	tYearOfRoosterFeeding_Pack[3302138][1]["ItemChance"] = 2000
	tYearOfRoosterFeeding_Pack[3302138][1]["RewardItem"] = {}
	tYearOfRoosterFeeding_Pack[3302138][1]["RewardItem"][1] = {}
	tYearOfRoosterFeeding_Pack[3302138][1]["RewardItem"][1]["Id"] = 3302130
	tYearOfRoosterFeeding_Pack[3302138][1]["RewardItem"][1]["Attr"] = "0 1"
	
	tYearOfRoosterFeeding_Pack[3302138][2] = {}
	tYearOfRoosterFeeding_Pack[3302138][2]["RandomItemChanceType"] = 2
	tYearOfRoosterFeeding_Pack[3302138][2]["ItemChance"] = 2000
	tYearOfRoosterFeeding_Pack[3302138][2]["RewardItem"] = {}
	tYearOfRoosterFeeding_Pack[3302138][2]["RewardItem"][1] = {}
	tYearOfRoosterFeeding_Pack[3302138][2]["RewardItem"][1]["Id"] = 3302131
	tYearOfRoosterFeeding_Pack[3302138][2]["RewardItem"][1]["Attr"] = "0 1"
	
	tYearOfRoosterFeeding_Pack[3302138][3] = {}
	tYearOfRoosterFeeding_Pack[3302138][3]["RandomItemChanceType"] = 2
	tYearOfRoosterFeeding_Pack[3302138][3]["ItemChance"] = 2000
	tYearOfRoosterFeeding_Pack[3302138][3]["RewardItem"] = {}
	tYearOfRoosterFeeding_Pack[3302138][3]["RewardItem"][1] = {}
	tYearOfRoosterFeeding_Pack[3302138][3]["RewardItem"][1]["Id"] = 3302132
	tYearOfRoosterFeeding_Pack[3302138][3]["RewardItem"][1]["Attr"] = "0 1"
	
	tYearOfRoosterFeeding_Pack[3302138][4] = {}
	tYearOfRoosterFeeding_Pack[3302138][4]["RandomItemChanceType"] = 2
	tYearOfRoosterFeeding_Pack[3302138][4]["ItemChance"] = 2000
	tYearOfRoosterFeeding_Pack[3302138][4]["RewardItem"] = {}
	tYearOfRoosterFeeding_Pack[3302138][4]["RewardItem"][1] = {}
	tYearOfRoosterFeeding_Pack[3302138][4]["RewardItem"][1]["Id"] = 3302133
	tYearOfRoosterFeeding_Pack[3302138][4]["RewardItem"][1]["Attr"] = "0 1"

	tYearOfRoosterFeeding_Pack[3302138][5] = {}
	tYearOfRoosterFeeding_Pack[3302138][5]["RandomItemChanceType"] = 2
	tYearOfRoosterFeeding_Pack[3302138][5]["ItemChance"] = 2000
	tYearOfRoosterFeeding_Pack[3302138][5]["RewardItem"] = {}
	tYearOfRoosterFeeding_Pack[3302138][5]["RewardItem"][1] = {}
	tYearOfRoosterFeeding_Pack[3302138][5]["RewardItem"][1]["Id"] = 3302134
	tYearOfRoosterFeeding_Pack[3302138][5]["RewardItem"][1]["Attr"] = "0 1"
	
	
	tYearOfRoosterFeeding_Pack[3302139] = {}
	tYearOfRoosterFeeding_Pack[3302139]["TimeLimnit"] = 1
	tYearOfRoosterFeeding_Pack[3302139]["ItemChanceSum"] = 10000
	tYearOfRoosterFeeding_Pack[3302139]["LogId"] = 12000629

	tYearOfRoosterFeeding_Pack[3302139][1] = {}
	tYearOfRoosterFeeding_Pack[3302139][1]["RandomItemChanceType"] = 2
	tYearOfRoosterFeeding_Pack[3302139][1]["ItemChance"] = 2500
	tYearOfRoosterFeeding_Pack[3302139][1]["RewardItem"] = {}
	tYearOfRoosterFeeding_Pack[3302139][1]["RewardItem"][1] = {}
	tYearOfRoosterFeeding_Pack[3302139][1]["RewardItem"][1]["Id"] = 200584
	tYearOfRoosterFeeding_Pack[3302139][1]["RewardItem"][1]["Attr"] = "0 0 3 4320 1 0 0 1"
	
	-- tYearOfRoosterFeeding_Pack[3302139][2] = {}
	-- tYearOfRoosterFeeding_Pack[3302139][2]["RandomItemChanceType"] = 2
	-- tYearOfRoosterFeeding_Pack[3302139][2]["ItemChance"] = 2000
	-- tYearOfRoosterFeeding_Pack[3302139][2]["RewardItem"] = {}
	-- tYearOfRoosterFeeding_Pack[3302139][2]["RewardItem"][1] = {}
	-- tYearOfRoosterFeeding_Pack[3302139][2]["RewardItem"][1]["Id"] = 200585
	-- tYearOfRoosterFeeding_Pack[3302139][2]["RewardItem"][1]["Attr"] = "0 0 3 4320 1 0 0 1"
	
	tYearOfRoosterFeeding_Pack[3302139][2] = {}
	tYearOfRoosterFeeding_Pack[3302139][2]["RandomItemChanceType"] = 2
	tYearOfRoosterFeeding_Pack[3302139][2]["ItemChance"] = 2500
	tYearOfRoosterFeeding_Pack[3302139][2]["RewardItem"] = {}
	tYearOfRoosterFeeding_Pack[3302139][2]["RewardItem"][1] = {}
	tYearOfRoosterFeeding_Pack[3302139][2]["RewardItem"][1]["Id"] = 200586
	tYearOfRoosterFeeding_Pack[3302139][2]["RewardItem"][1]["Attr"] = "0 0 3 4320 1 0 0 1"
	
	tYearOfRoosterFeeding_Pack[3302139][3] = {}
	tYearOfRoosterFeeding_Pack[3302139][3]["RandomItemChanceType"] = 2
	tYearOfRoosterFeeding_Pack[3302139][3]["ItemChance"] = 2500
	tYearOfRoosterFeeding_Pack[3302139][3]["RewardItem"] = {}
	tYearOfRoosterFeeding_Pack[3302139][3]["RewardItem"][1] = {}
	tYearOfRoosterFeeding_Pack[3302139][3]["RewardItem"][1]["Id"] = 200587
	tYearOfRoosterFeeding_Pack[3302139][3]["RewardItem"][1]["Attr"] = "0 0 3 4320 1 0 0 1"
	
	tYearOfRoosterFeeding_Pack[3302139][4] = {}
	tYearOfRoosterFeeding_Pack[3302139][4]["RandomItemChanceType"] = 2
	tYearOfRoosterFeeding_Pack[3302139][4]["ItemChance"] = 2500
	tYearOfRoosterFeeding_Pack[3302139][4]["RewardItem"] = {}
	tYearOfRoosterFeeding_Pack[3302139][4]["RewardItem"][1] = {}
	tYearOfRoosterFeeding_Pack[3302139][4]["RewardItem"][1]["Id"] = 200588
	tYearOfRoosterFeeding_Pack[3302139][4]["RewardItem"][1]["Attr"] = "0 0 3 4320 1 0 0 1"
	
	
	tYearOfRoosterFeeding_Pack[3302140] = {}
	tYearOfRoosterFeeding_Pack[3302140]["TimeLimnit"] = 1
	tYearOfRoosterFeeding_Pack[3302140]["ItemChanceSum"] = 10000
	tYearOfRoosterFeeding_Pack[3302140]["LogId"] = 12000629

	tYearOfRoosterFeeding_Pack[3302140][1] = {}
	tYearOfRoosterFeeding_Pack[3302140][1]["RandomItemChanceType"] = 2
	tYearOfRoosterFeeding_Pack[3302140][1]["ItemChance"] = 2500
	tYearOfRoosterFeeding_Pack[3302140][1]["RewardItem"] = {}
	tYearOfRoosterFeeding_Pack[3302140][1]["RewardItem"][1] = {}
	tYearOfRoosterFeeding_Pack[3302140][1]["RewardItem"][1]["Id"] = 200589
	tYearOfRoosterFeeding_Pack[3302140][1]["RewardItem"][1]["Attr"] = "0 0 3 4320 1 0 0 1"
	
	tYearOfRoosterFeeding_Pack[3302140][2] = {}
	tYearOfRoosterFeeding_Pack[3302140][2]["RandomItemChanceType"] = 2
	tYearOfRoosterFeeding_Pack[3302140][2]["ItemChance"] = 2500
	tYearOfRoosterFeeding_Pack[3302140][2]["RewardItem"] = {}
	tYearOfRoosterFeeding_Pack[3302140][2]["RewardItem"][1] = {}
	tYearOfRoosterFeeding_Pack[3302140][2]["RewardItem"][1]["Id"] = 200590
	tYearOfRoosterFeeding_Pack[3302140][2]["RewardItem"][1]["Attr"] = "0 0 3 4320 1 0 0 1"
	
	tYearOfRoosterFeeding_Pack[3302140][3] = {}
	tYearOfRoosterFeeding_Pack[3302140][3]["RandomItemChanceType"] = 2
	tYearOfRoosterFeeding_Pack[3302140][3]["ItemChance"] = 2500
	tYearOfRoosterFeeding_Pack[3302140][3]["RewardItem"] = {}
	tYearOfRoosterFeeding_Pack[3302140][3]["RewardItem"][1] = {}
	tYearOfRoosterFeeding_Pack[3302140][3]["RewardItem"][1]["Id"] = 200591
	tYearOfRoosterFeeding_Pack[3302140][3]["RewardItem"][1]["Attr"] = "0 0 3 4320 1 0 0 1"
	
	tYearOfRoosterFeeding_Pack[3302140][4] = {}
	tYearOfRoosterFeeding_Pack[3302140][4]["RandomItemChanceType"] = 2
	tYearOfRoosterFeeding_Pack[3302140][4]["ItemChance"] = 2500
	tYearOfRoosterFeeding_Pack[3302140][4]["RewardItem"] = {}
	tYearOfRoosterFeeding_Pack[3302140][4]["RewardItem"][1] = {}
	tYearOfRoosterFeeding_Pack[3302140][4]["RewardItem"][1]["Id"] = 200593
	tYearOfRoosterFeeding_Pack[3302140][4]["RewardItem"][1]["Attr"] = "0 0 3 4320 1 0 0 1"
	
	
	
	
	
	
	
	tYearOfRoosterFeeding_Pack[3302141] = {}
	tYearOfRoosterFeeding_Pack[3302141]["TimeLimnit"] = 1
	tYearOfRoosterFeeding_Pack[3302141]["ItemChanceSum"] = 10000
	tYearOfRoosterFeeding_Pack[3302141]["LogId"] = 12000629

	tYearOfRoosterFeeding_Pack[3302141][1] = {}
	tYearOfRoosterFeeding_Pack[3302141][1]["RandomItemChanceType"] = 2
	tYearOfRoosterFeeding_Pack[3302141][1]["ItemChance"] = 2500
	tYearOfRoosterFeeding_Pack[3302141][1]["RewardItem"] = {}
	tYearOfRoosterFeeding_Pack[3302141][1]["RewardItem"][1] = {}
	tYearOfRoosterFeeding_Pack[3302141][1]["RewardItem"][1]["Id"] = 200584
	tYearOfRoosterFeeding_Pack[3302141][1]["RewardItem"][1]["Attr"] = "0 0 3 10080 1 0 0 1"
	
	-- tYearOfRoosterFeeding_Pack[3302141][2] = {}
	-- tYearOfRoosterFeeding_Pack[3302141][2]["RandomItemChanceType"] = 2
	-- tYearOfRoosterFeeding_Pack[3302141][2]["ItemChance"] = 2000
	-- tYearOfRoosterFeeding_Pack[3302141][2]["RewardItem"] = {}
	-- tYearOfRoosterFeeding_Pack[3302141][2]["RewardItem"][1] = {}
	-- tYearOfRoosterFeeding_Pack[3302141][2]["RewardItem"][1]["Id"] = 200585
	-- tYearOfRoosterFeeding_Pack[3302141][2]["RewardItem"][1]["Attr"] = "0 0 3 10080 1 0 0 1"
	
	tYearOfRoosterFeeding_Pack[3302141][2] = {}
	tYearOfRoosterFeeding_Pack[3302141][2]["RandomItemChanceType"] = 2
	tYearOfRoosterFeeding_Pack[3302141][2]["ItemChance"] = 2500
	tYearOfRoosterFeeding_Pack[3302141][2]["RewardItem"] = {}
	tYearOfRoosterFeeding_Pack[3302141][2]["RewardItem"][1] = {}
	tYearOfRoosterFeeding_Pack[3302141][2]["RewardItem"][1]["Id"] = 200586
	tYearOfRoosterFeeding_Pack[3302141][2]["RewardItem"][1]["Attr"] = "0 0 3 10080 1 0 0 1"
	
	tYearOfRoosterFeeding_Pack[3302141][3] = {}
	tYearOfRoosterFeeding_Pack[3302141][3]["RandomItemChanceType"] = 2
	tYearOfRoosterFeeding_Pack[3302141][3]["ItemChance"] = 2500
	tYearOfRoosterFeeding_Pack[3302141][3]["RewardItem"] = {}
	tYearOfRoosterFeeding_Pack[3302141][3]["RewardItem"][1] = {}
	tYearOfRoosterFeeding_Pack[3302141][3]["RewardItem"][1]["Id"] = 200587
	tYearOfRoosterFeeding_Pack[3302141][3]["RewardItem"][1]["Attr"] = "0 0 3 10080 1 0 0 1"
	
	tYearOfRoosterFeeding_Pack[3302141][4] = {}
	tYearOfRoosterFeeding_Pack[3302141][4]["RandomItemChanceType"] = 2
	tYearOfRoosterFeeding_Pack[3302141][4]["ItemChance"] = 2500
	tYearOfRoosterFeeding_Pack[3302141][4]["RewardItem"] = {}
	tYearOfRoosterFeeding_Pack[3302141][4]["RewardItem"][1] = {}
	tYearOfRoosterFeeding_Pack[3302141][4]["RewardItem"][1]["Id"] = 200588
	tYearOfRoosterFeeding_Pack[3302141][4]["RewardItem"][1]["Attr"] = "0 0 3 10080 1 0 0 1"
	
	tYearOfRoosterFeeding_Pack[3302142] = {}
	tYearOfRoosterFeeding_Pack[3302142]["TimeLimnit"] = 1
	tYearOfRoosterFeeding_Pack[3302142]["ItemChanceSum"] = 10000
	tYearOfRoosterFeeding_Pack[3302142]["LogId"] = 12000629

	tYearOfRoosterFeeding_Pack[3302142][1] = {}
	tYearOfRoosterFeeding_Pack[3302142][1]["RandomItemChanceType"] = 2
	tYearOfRoosterFeeding_Pack[3302142][1]["ItemChance"] = 2500
	tYearOfRoosterFeeding_Pack[3302142][1]["RewardItem"] = {}
	tYearOfRoosterFeeding_Pack[3302142][1]["RewardItem"][1] = {}
	tYearOfRoosterFeeding_Pack[3302142][1]["RewardItem"][1]["Id"] = 200589
	tYearOfRoosterFeeding_Pack[3302142][1]["RewardItem"][1]["Attr"] = "0 0 3 10080 1 0 0 1"
	
	tYearOfRoosterFeeding_Pack[3302142][2] = {}
	tYearOfRoosterFeeding_Pack[3302142][2]["RandomItemChanceType"] = 2
	tYearOfRoosterFeeding_Pack[3302142][2]["ItemChance"] = 2500
	tYearOfRoosterFeeding_Pack[3302142][2]["RewardItem"] = {}
	tYearOfRoosterFeeding_Pack[3302142][2]["RewardItem"][1] = {}
	tYearOfRoosterFeeding_Pack[3302142][2]["RewardItem"][1]["Id"] = 200590
	tYearOfRoosterFeeding_Pack[3302142][2]["RewardItem"][1]["Attr"] = "0 0 3 10080 1 0 0 1"
	
	tYearOfRoosterFeeding_Pack[3302142][3] = {}
	tYearOfRoosterFeeding_Pack[3302142][3]["RandomItemChanceType"] = 2
	tYearOfRoosterFeeding_Pack[3302142][3]["ItemChance"] = 2500
	tYearOfRoosterFeeding_Pack[3302142][3]["RewardItem"] = {}
	tYearOfRoosterFeeding_Pack[3302142][3]["RewardItem"][1] = {}
	tYearOfRoosterFeeding_Pack[3302142][3]["RewardItem"][1]["Id"] = 200591
	tYearOfRoosterFeeding_Pack[3302142][3]["RewardItem"][1]["Attr"] = "0 0 3 10080 1 0 0 1"
	
	tYearOfRoosterFeeding_Pack[3302142][4] = {}
	tYearOfRoosterFeeding_Pack[3302142][4]["RandomItemChanceType"] = 2
	tYearOfRoosterFeeding_Pack[3302142][4]["ItemChance"] = 2500
	tYearOfRoosterFeeding_Pack[3302142][4]["RewardItem"] = {}
	tYearOfRoosterFeeding_Pack[3302142][4]["RewardItem"][1] = {}
	tYearOfRoosterFeeding_Pack[3302142][4]["RewardItem"][1]["Id"] = 200593
	tYearOfRoosterFeeding_Pack[3302142][4]["RewardItem"][1]["Attr"] = "0 0 3 10080 1 0 0 1"
	
	
	
	
	
	

	tYearOfRoosterFeeding_Pack[3302143] = {}
	tYearOfRoosterFeeding_Pack[3302143]["ItemChanceSum"] = 10000
	tYearOfRoosterFeeding_Pack[3302143]["LogId"] = 12000629

	tYearOfRoosterFeeding_Pack[3302143][1] = {}
	tYearOfRoosterFeeding_Pack[3302143][1]["RandomItemChanceType"] = 2
	tYearOfRoosterFeeding_Pack[3302143][1]["ItemChance"] = 2500
	tYearOfRoosterFeeding_Pack[3302143][1]["RewardItem"] = {}
	tYearOfRoosterFeeding_Pack[3302143][1]["RewardItem"][1] = {}
	tYearOfRoosterFeeding_Pack[3302143][1]["RewardItem"][1]["Id"] = 200584
	tYearOfRoosterFeeding_Pack[3302143][1]["RewardItem"][1]["Attr"] = "0 0 3 0 0 0 0 1"
	
	-- tYearOfRoosterFeeding_Pack[3302143][2] = {}
	-- tYearOfRoosterFeeding_Pack[3302143][2]["RandomItemChanceType"] = 2
	-- tYearOfRoosterFeeding_Pack[3302143][2]["ItemChance"] = 2000
	-- tYearOfRoosterFeeding_Pack[3302143][2]["RewardItem"] = {}
	-- tYearOfRoosterFeeding_Pack[3302143][2]["RewardItem"][1] = {}
	-- tYearOfRoosterFeeding_Pack[3302143][2]["RewardItem"][1]["Id"] = 200585
	-- tYearOfRoosterFeeding_Pack[3302143][2]["RewardItem"][1]["Attr"] = "0 0 3 0 0 0 0 1"
	
	tYearOfRoosterFeeding_Pack[3302143][2] = {}
	tYearOfRoosterFeeding_Pack[3302143][2]["RandomItemChanceType"] = 2
	tYearOfRoosterFeeding_Pack[3302143][2]["ItemChance"] = 2500
	tYearOfRoosterFeeding_Pack[3302143][2]["RewardItem"] = {}
	tYearOfRoosterFeeding_Pack[3302143][2]["RewardItem"][1] = {}
	tYearOfRoosterFeeding_Pack[3302143][2]["RewardItem"][1]["Id"] = 200586
	tYearOfRoosterFeeding_Pack[3302143][2]["RewardItem"][1]["Attr"] = "0 0 3 0 0 0 0 1"
	
	tYearOfRoosterFeeding_Pack[3302143][3] = {}
	tYearOfRoosterFeeding_Pack[3302143][3]["RandomItemChanceType"] = 2
	tYearOfRoosterFeeding_Pack[3302143][3]["ItemChance"] = 2500
	tYearOfRoosterFeeding_Pack[3302143][3]["RewardItem"] = {}
	tYearOfRoosterFeeding_Pack[3302143][3]["RewardItem"][1] = {}
	tYearOfRoosterFeeding_Pack[3302143][3]["RewardItem"][1]["Id"] = 200587
	tYearOfRoosterFeeding_Pack[3302143][3]["RewardItem"][1]["Attr"] = "0 0 3 0 0 0 0 1"
	
	tYearOfRoosterFeeding_Pack[3302143][4] = {}
	tYearOfRoosterFeeding_Pack[3302143][4]["RandomItemChanceType"] = 2
	tYearOfRoosterFeeding_Pack[3302143][4]["ItemChance"] = 2500
	tYearOfRoosterFeeding_Pack[3302143][4]["RewardItem"] = {}
	tYearOfRoosterFeeding_Pack[3302143][4]["RewardItem"][1] = {}
	tYearOfRoosterFeeding_Pack[3302143][4]["RewardItem"][1]["Id"] = 200588
	tYearOfRoosterFeeding_Pack[3302143][4]["RewardItem"][1]["Attr"] = "0 0 3 0 0 0 0 1"
	
	
	tYearOfRoosterFeeding_Pack[3302144] = {}
	tYearOfRoosterFeeding_Pack[3302144]["ItemChanceSum"] = 10000
	tYearOfRoosterFeeding_Pack[3302144]["LogId"] = 12000629

	tYearOfRoosterFeeding_Pack[3302144][1] = {}
	tYearOfRoosterFeeding_Pack[3302144][1]["RandomItemChanceType"] = 2
	tYearOfRoosterFeeding_Pack[3302144][1]["ItemChance"] = 2500
	tYearOfRoosterFeeding_Pack[3302144][1]["RewardItem"] = {}
	tYearOfRoosterFeeding_Pack[3302144][1]["RewardItem"][1] = {}
	tYearOfRoosterFeeding_Pack[3302144][1]["RewardItem"][1]["Id"] = 200589
	tYearOfRoosterFeeding_Pack[3302144][1]["RewardItem"][1]["Attr"] = "0 0 3 0 0 0 0 1"
	
	tYearOfRoosterFeeding_Pack[3302144][2] = {}
	tYearOfRoosterFeeding_Pack[3302144][2]["RandomItemChanceType"] = 2
	tYearOfRoosterFeeding_Pack[3302144][2]["ItemChance"] = 2500
	tYearOfRoosterFeeding_Pack[3302144][2]["RewardItem"] = {}
	tYearOfRoosterFeeding_Pack[3302144][2]["RewardItem"][1] = {}
	tYearOfRoosterFeeding_Pack[3302144][2]["RewardItem"][1]["Id"] = 200590
	tYearOfRoosterFeeding_Pack[3302144][2]["RewardItem"][1]["Attr"] = "0 0 3 0 0 0 0 1"
	
	tYearOfRoosterFeeding_Pack[3302144][3] = {}
	tYearOfRoosterFeeding_Pack[3302144][3]["RandomItemChanceType"] = 2
	tYearOfRoosterFeeding_Pack[3302144][3]["ItemChance"] = 2500
	tYearOfRoosterFeeding_Pack[3302144][3]["RewardItem"] = {}
	tYearOfRoosterFeeding_Pack[3302144][3]["RewardItem"][1] = {}
	tYearOfRoosterFeeding_Pack[3302144][3]["RewardItem"][1]["Id"] = 200591
	tYearOfRoosterFeeding_Pack[3302144][3]["RewardItem"][1]["Attr"] = "0 0 3 0 0 0 0 1"
	
	tYearOfRoosterFeeding_Pack[3302144][4] = {}
	tYearOfRoosterFeeding_Pack[3302144][4]["RandomItemChanceType"] = 2
	tYearOfRoosterFeeding_Pack[3302144][4]["ItemChance"] = 2500
	tYearOfRoosterFeeding_Pack[3302144][4]["RewardItem"] = {}
	tYearOfRoosterFeeding_Pack[3302144][4]["RewardItem"][1] = {}
	tYearOfRoosterFeeding_Pack[3302144][4]["RewardItem"][1]["Id"] = 200593
	tYearOfRoosterFeeding_Pack[3302144][4]["RewardItem"][1]["Attr"] = "0 0 3 0 0 0 0 1"
	
	
	
	

--------------------------------------------------NPC逻辑
function YearOfRoosterFeeding_GetNpcName()
	local nEvent = tYearOfRoosterFeeding_Stc["BTalent"]["EventType"]
	local nType = tYearOfRoosterFeeding_Stc["BTalent"]["DataType"]
	local nBeast = math.floor(Get_UserStatisticValue(nEvent,nType)/10)
	local sName = Get_NpcName(tYearOfRoosterFeeding_Npc[nBeast])
	return sName
end


--获取玩家学历以及各科目属性值
--STC	
--		学历	文学	数学	体育	美术
function YearOfRoosterFeeding_GetDegree()
	local nEvent = tYearOfRoosterFeeding_Stc["Education"]["EventType"]
	local nType = tYearOfRoosterFeeding_Stc["Education"]["DataType"]
	local nDegree = Get_UserStatisticValue(nEvent,nType)
	local tDegree = {}
	for i = 1,#tYearOfRoosterFeeding_Idiv do
		local nPoint = math.floor(nDegree%tYearOfRoosterFeeding_Mod[i]/tYearOfRoosterFeeding_Idiv[i])
		table.insert(tDegree,nPoint) 
	end
	
	return tDegree
end

--设置玩家学历以及各科目属性值
function YearOfRoosterFeeding_SetDegree(nMold,nPoint)
	local tDegree = YearOfRoosterFeeding_GetDegree()
	local nDegree = tDegree[5]
	local nMaxPoint = tYearOfRoosterFeeding_NeedPoint[nDegree]
	local nEvent = tYearOfRoosterFeeding_Stc["Education"]["EventType"]
	local nType = tYearOfRoosterFeeding_Stc["Education"]["DataType"]
	local nXueKe = nPoint*tYearOfRoosterFeeding_Idiv[nMold]

	if nMold == 5 then
		Task_SetStatistic(nEvent,nType,nXueKe,1)
		User_EffectAdd("self",tYearOfRoosterFeeding_Effect["UpXueLi"][nDegree])
		local nNumber = nPoint - 1
		Sys_SaveActionFestivalLog(string.format(tYearOfRoosterFeeding_Log[2],nNumber))
		if tYearOfRoosterFeeding_Text["AllSever"][nDegree] ~= nil then
			--全服公告
			local sUserName = Get_UserName()
			local sCname = YearOfRoosterFeeding_GetNpcName()
			local nSex = Get_UserSex(nUserId)
			local nTa = tYearOfRoosterFeeding_Text["Sex"][nSex]
			
			if nDegree == 5 or nDegree == 3 then
				Sys_SystemBroadcast(string.format(tYearOfRoosterFeeding_Text["AllSever"][nDegree],sUserName,sUserName,nTa))
			else
				Sys_SystemBroadcast(string.format(tYearOfRoosterFeeding_Text["AllSever"][nDegree],sUserName,nTa))
			end


		end
		
	else
		if tDegree[nMold] + nPoint >= nMaxPoint then
			nPoint = nMaxPoint - tDegree[nMold]
			nXueKe = nPoint*tYearOfRoosterFeeding_Idiv[nMold]
			Task_AddStatistic(nEvent,nType,nXueKe,1)
		else
			Task_AddStatistic(nEvent,nType,nXueKe,1)
		end
		Sys_SaveActionFestivalLog(string.format(tYearOfRoosterFeeding_Log[3],nMold,nPoint))
		-- User_EffectAdd("self",tYearOfRoosterFeeding_Effect["UpPoint"])
	end
end

--检测学分是否足够
function YearOfRoosterFeeding_ChkPoint(nClass)
	local tDegree = YearOfRoosterFeeding_GetDegree()
	local nPoint = tDegree[nClass]
	local nDegree = tDegree[5]
	local nMaxPoint = tYearOfRoosterFeeding_NeedPoint[nDegree]
	
	if nPoint >= nMaxPoint then
		return false
	else
		return true
	end
end

--隔天清0
function YearOfRoosterFeeding_ClearStc(nEvent,nType)
	if not Task_ChkStcValue(nEvent,nType,"==",0) then
		if Task_StcInterval(nEvent,nType,1,4) then
			Task_SetStatistic(nEvent,nType,0,1)
			Task_SetStcTimestamp(nEvent,nType,0)
		end
	else
		Task_SetStatistic(nEvent,nType,0,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	end
	
	local nTimes = Get_UserStatisticValue(nEvent,nType)
	return nTimes
end

--判断天石是否足够
function YearOfRoosterFeeding_ChkEmoney(nNpcId,nEmoney,nHave)
	local nUserEMoney = Get_UserEMoney()
	if nUserEMoney >= nEmoney then
		return true
	else
		Sys_DialogText(tYearOfRoosterFeeding_Text[20224]["Text341"][nHave])
		Sys_DialogOption(tYearOfRoosterFeeding_Text[20224]["Option24"],"</F>NULL")
		Sys_DialogFace(nNpcId)
		Sys_DialogEnd()
		return false
	end
end

--减次数
function YearOfRoosterFeeding_ChgTimes(nIndex)
	local nCEvent = tYearOfRoosterFeeding_Stc["Times"]["EventType"]
	local nCType = tYearOfRoosterFeeding_Stc["Times"]["DataType"]
	local nAEvent = tYearOfRoosterFeeding_Stc["Add"]["EventType"]
	local nAType = tYearOfRoosterFeeding_Stc["Add"]["DataType"]
	
	-- local nTimes = YearOfRoosterFeeding_ClearStc(nCEvent,nCType)
	-- local nAddTimes = Get_UserStatisticValue(nAEvent,nAType)
	
	if nIndex == 1 then 
		Task_AddStatistic(nCEvent,nCType,1,1)
	else
		Task_AddStatistic(nAEvent,nAType,-1,1)
	end
end

		-- local nBeast = Get_UserStatisticValue(nEvent,nType)//10
		-- local nTalent = math.random(1,4)
		-- local nBTalent = tonumber(nBeast .. nTalent)

--成为家庭教师
function YearOfRoosterFeeding_Adopt()
	local nNpcId = Get_NpcId()
	local nEvent = tYearOfRoosterFeeding_Stc["BTalent"]["EventType"]
	local nType = tYearOfRoosterFeeding_Stc["BTalent"]["DataType"]
	
	local nEEvent = tYearOfRoosterFeeding_Stc["Education"]["EventType"]
	local nEType = tYearOfRoosterFeeding_Stc["Education"]["DataType"]
	
	local nTalent = math.random(1,4)

	--判断活动时间
	if not Sys_ChkFullTime(tYearOfRoosterFeeding_Constant["ActivetyTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	if Task_ChkStcValue(nEvent,nType,"==",0) then
		--判断背包空间
		if not User_CheckLeftSpace(tYearOfRoosterFeeding_Award[20224]["Space"]) then
			LinkNpcGossipFunc_New(nNpcId,"2-1")
			return
		end
		-- local nMarkId = Get_NpcId()
		Task_SetStatistic(nEvent,nType,tYearOfRoosterFeeding_BeastNo[nNpcId]*10+nTalent,1)
		Task_SetStatistic(nEEvent,nEType,tYearOfRoosterFeeding_Constant["Initial"],1)
		RewardTemplate_UseItemAndMsg(tYearOfRoosterFeeding_Award[20224])
		LinkNpcGossipFunc_New(nNpcId,"2-2")
	else
		LinkNpcGossipFunc_New(nNpcId,"1-6")
	end
end

--查看规则
--打开内嵌页面的活动流程图
function YearOfRoosterFeeding_OpenWeb()
	local nNpcId = Get_NpcId()
	--判断活动时间
	if not Sys_ChkFullTime(tYearOfRoosterFeeding_Constant["ActivetyTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- local nUserId = Get_UserId()
	-- local sWeb = tYearOfRoosterFeeding_Constant["GuiZe"]
	-- User_SendWebDialog(sWeb,nUserId)
	LinkNpcGossipFunc_New(nNpcId,"11-1")
end

--上课
function YearOfRoosterFeeding_Class(nClass)
	local nNpcId = Get_NpcId()
	--判断活动时间
	if not Sys_ChkFullTime(tYearOfRoosterFeeding_Constant["ActivetyTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	local tDegree = YearOfRoosterFeeding_GetDegree()
	local nDegree = tDegree[5]
	
	local nItemId = tYearOfRoosterFeeding_NeedBook[nDegree][nClass]

	local nEvent = tItemOutputOfNien_Stc[nItemId]["EventType"]
	local nType = tItemOutputOfNien_Stc[nItemId]["DataType"]
	
	local nCEvent = tYearOfRoosterFeeding_Stc["Times"]["EventType"]
	local nCType = tYearOfRoosterFeeding_Stc["Times"]["DataType"]
	
	local nAEvent = tYearOfRoosterFeeding_Stc["Add"]["EventType"]
	local nAType = tYearOfRoosterFeeding_Stc["Add"]["DataType"]
	
	local nTimes = YearOfRoosterFeeding_ClearStc(nCEvent,nCType)
	local nAddTimes = Get_UserStatisticValue(nAEvent,nAType)
	local nAddItem = tYearOfRoosterFeeding_Constant["AddItem"]
	
	local nHave = 0
	local nMode = 1
	local nIndex = 0
	
	
	local nNeedPoint = tYearOfRoosterFeeding_NeedPoint[nDegree]
	local nDvalue = nNeedPoint - tDegree[nClass]
	local nEmoney = tYearOfRoosterFeeding_Emoney[nDegree]
	local nMaxEmoney = nDvalue*nEmoney
	local sClass = tYearOfRoosterFeeding_Text["Talent"][nClass]
	
	--检测学分是否足够
	if YearOfRoosterFeeding_ChkPoint(nClass) then
	--检测玩家身上或书包里是否有对应的课本
		if Item_ChkItem(nItemId) or (Item_ChkItem(tYearOfRoosterFeeding_Constant["BookBag"]) and Task_ChkStcValue(nEvent,nType,">",0))then
			--有课本检测次数是否足够
			if nTimes < tYearOfRoosterFeeding_Constant["MaxTimes"] then 
				--用道具提升学分
				nIndex = 1
				YearOfRoosterFeeding_Study(nNpcId,nClass,nMode,nIndex,0)
				return
			elseif nAddTimes > 0 then 
				nIndex = 2
				YearOfRoosterFeeding_Study(nNpcId,nClass,nMode,nIndex,0)
				return
			else
				nHave = 1
				Sys_DialogText(tYearOfRoosterFeeding_Text[20224]["Text321"])
				
				local sOption1 = string.format(tYearOfRoosterFeeding_Text[20224]["Option20"],nEmoney)
				local sOption2 = string.format(tYearOfRoosterFeeding_Text[20224]["Option70"],nMaxEmoney,sClass)
				
				Sys_DialogOption(tYearOfRoosterFeeding_Text[20224]["Option21"],"</F>YearOfRoosterFeeding_UseAddItem</N>" .. nNpcId .. "</N>" .. nAddItem)
				
				Sys_DialogOption(sOption1,"</F>YearOfRoosterFeeding_UseEmoney</N>" .. nNpcId .. "</N>" .. nClass .. "</N>"  .. nHave .. "</N>" .. 0)

				Sys_DialogOption(sOption2,"</F>YearOfRoosterFeeding_UseEmoney</N>" .. nNpcId .. "</N>" .. nClass .. "</N>"  .. nHave .. "</N>"  .. nDvalue)
				
				Sys_DialogOption(tYearOfRoosterFeeding_Text[20224]["Option22"],"</F>NULL")
				
				
				
				
			end
		else
			nHave = 2
			local sText = string.format(tYearOfRoosterFeeding_Text[20224]["Text311"],nEmoney,sClass,nMaxEmoney,sClass)
			
			local sText1 = tYearOfRoosterFeeding_Text[20224]["Text312"][nDegree][1]
			local sText2 = tYearOfRoosterFeeding_Text[20224]["Text312"][nDegree][2]
			
			local sOption1 = string.format(tYearOfRoosterFeeding_Text[20224]["Option18"],nEmoney)
			local sOption2 = string.format(tYearOfRoosterFeeding_Text[20224]["Option71"],nMaxEmoney,sClass)
			
			Sys_DialogText(sText)
			Sys_DialogText(sText1)
			Sys_DialogText(sText2)
			Sys_DialogOption(sOption1,"</F>YearOfRoosterFeeding_UseEmoney</N>" .. nNpcId .. "</N>" .. nClass .. "</N>"  .. nHave .. "</N>" .. 0)

			Sys_DialogOption(sOption2,"</F>YearOfRoosterFeeding_UseEmoney</N>" .. nNpcId .. "</N>" .. nClass .. "</N>"  .. nHave .. "</N>"  .. nDvalue)
		
		
		end
		Sys_DialogFace(nNpcId)
		Sys_DialogEnd()
		return
	end
end

--用天石提升学分
function YearOfRoosterFeeding_UseEmoney(nNpcId,nClass,nHave,nDvalue)
	local tDegree = YearOfRoosterFeeding_GetDegree()
	local nDegree = tDegree[5]
	local nEmoney = tYearOfRoosterFeeding_Emoney[nDegree]
	local nMode = 2
	local sClass = tYearOfRoosterFeeding_Text["Talent"][nClass] 
	-- local nMaxEmoney = nDvalue*nEmoney
	
	local sText = ""
	if nDvalue == 0 then 
		sText = string.format(tYearOfRoosterFeeding_Text[20224]["Text351"][1],nEmoney,sClass)
	else
		nEmoney = nDvalue*nEmoney
		sText = string.format(tYearOfRoosterFeeding_Text[20224]["Text351"][2],nEmoney,sClass)
	end
	
	local sOption = string.format(tYearOfRoosterFeeding_Text[20224]["Option25"],nEmoney)
	
	if YearOfRoosterFeeding_ChkEmoney(nNpcId,nEmoney,nHave) then
		Sys_DialogText(sText)
		Sys_DialogOption(sOption,"</F>YearOfRoosterFeeding_Study</N>" .. nNpcId .. "</N>" .. nClass .. "</N>" .. nMode .. "</N>" .. nHave .. "</N>" .. nDvalue)
		Sys_DialogOption(tYearOfRoosterFeeding_Text[20224]["Option26"],"</F>NULL")
		Sys_DialogFace(nNpcId)
		Sys_DialogEnd()
	end
end

--用五个核桃恢复上课次数
function YearOfRoosterFeeding_UseAddItem(nNpcId,nAddItem)
	--判断活动时间
	if not Sys_ChkFullTime(tYearOfRoosterFeeding_Constant["ActivetyTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end

	local nAEvent = tYearOfRoosterFeeding_Stc["Add"]["EventType"]
	local nAType = tYearOfRoosterFeeding_Stc["Add"]["DataType"]
	if Item_ChkItem(nAddItem) and Item_DelItem(nAddItem)then
		Task_AddStatistic(nAEvent,nAType,tYearOfRoosterFeeding_Constant["AddTimes"],1)
		Sys_SaveActionFestivalLog(tYearOfRoosterFeeding_Log[1])
		User_EffectAdd("self",tYearOfRoosterFeeding_Effect["UseHeTao"])
		LinkNpcGossipFunc_New(nNpcId,"8-5")
	else
		LinkNpcGossipFunc_New(nNpcId,"3-3")
	end
end

--上课提升学分
function YearOfRoosterFeeding_Study(nNpcId,nClass,nMode,nIndex,nDvalue)
	local tDegree = YearOfRoosterFeeding_GetDegree()
	local nDegree = tDegree[5]
	local nItemId = tYearOfRoosterFeeding_NeedBook[nDegree][nClass]
	local nEmoney = tYearOfRoosterFeeding_Emoney[nDegree]
	if nDvalue > 0 then
		nEmoney = tYearOfRoosterFeeding_Emoney[nDegree]*nDvalue
	end
	
	if YearOfRoosterFeeding_ChkPoint(nClass) then
		if nMode == 1 then
			local nEvent = tItemOutputOfNien_Stc[nItemId]["EventType"]
			local nType = tItemOutputOfNien_Stc[nItemId]["DataType"]
			
			if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
				YearOfRoosterFeeding_ChgTimes(nIndex)
				User_EffectAdd("self",tYearOfRoosterFeeding_Effect["UpPoint"])
				Sys_SaveActionFestivalLog(string.format(tYearOfRoosterFeeding_Log[6],nItemId,nClass,1))
			elseif Item_ChkItem(tYearOfRoosterFeeding_Constant["BookBag"]) and Task_ChkStcValue(nEvent,nType,">",0) and Task_AddStatistic(nEvent,nType,-1,1) then
				YearOfRoosterFeeding_ChgTimes(nIndex)
				User_EffectAdd("self",tYearOfRoosterFeeding_Effect["UpPoint"])
				local nStc = tonumber(nEvent .. nType)
				Sys_SaveActionFestivalLog(string.format(tYearOfRoosterFeeding_Log[6],nStc,nClass,1))
			else
				return
			end
		else
			if YearOfRoosterFeeding_ChkEmoney(nNpcId,nEmoney,nIndex) then
				--扣除天石
				User_AddEMoney(-nEmoney)
				--EmoneyLog
				Sys_SaveEmoneyBuy(string.format(tYearOfRoosterFeeding_Constant["EmoneyLog"][nDegree],nEmoney,nEmoney))
				
				
				if nDvalue > 0 then
					Sys_SaveActionFestivalLog(string.format(tYearOfRoosterFeeding_Log[4],nEmoney,nClass,nDvalue))
					User_EffectAdd("self",tYearOfRoosterFeeding_Effect["UseMaxEmoney"])
				else
					User_EffectAdd("self",tYearOfRoosterFeeding_Effect["UseEmoney"])
					Sys_SaveActionFestivalLog(string.format(tYearOfRoosterFeeding_Log[4],nEmoney,nClass,1))
				end
			else
				return
			end
		end
		YearOfRoosterFeeding_UpPoint(nNpcId,nClass,nDvalue,nMode)
	end
end


function YearOfRoosterFeeding_UpPoint(nNpcId,nClass,nDvalue,nMode)
	local tDegree = YearOfRoosterFeeding_GetDegree()
	local nDegree = tDegree[5]
	local nTotal = 0
	local nEvent = tYearOfRoosterFeeding_Stc["BTalent"]["EventType"]
	local nType = tYearOfRoosterFeeding_Stc["BTalent"]["DataType"]
	-- local nTalent = Get_UserStatisticValue(nEvent,nType)%10
	local nPoint = tYearOfRoosterFeeding_Constant["UpPoint"]
	local nPoint1 = 0
	
	if nDvalue == 0 then
		--是否天赋科目
		if nTalent == nClass then
			local nRandom = math.random(1,tYearOfRoosterFeeding_Constant["Random"])
			if nRandom <= tYearOfRoosterFeeding_Random[nDegree] then 
				nPoint = nPoint + tYearOfRoosterFeeding_Constant["AddPoint"]
			end
		end
		YearOfRoosterFeeding_SetDegree(nClass,nPoint)
		YearOfRoosterFeeding_UpXueLi(nNpcId,nClass,nDegree,1,nPoint,nPoint1,nMode)
	else
		YearOfRoosterFeeding_SetDegree(nClass,nDvalue)
		YearOfRoosterFeeding_UpXueLi(nNpcId,nClass,nDegree,1,nDvalue,nPoint1,3)
	end

end

--提升学历
function YearOfRoosterFeeding_UpXueLi(nNpcId,nClass,nDegree,nMode,nPoint,nPoint1,nIsEmoney)
	local tDegree = YearOfRoosterFeeding_GetDegree()
	local nUp = 0
	local nMail = 0
	local nTotal = 0
	for i = 1,#tYearOfRoosterFeeding_Text["Talent"] do
		if tDegree[i] >= tYearOfRoosterFeeding_NeedPoint[nDegree] then
			nTotal = nTotal + 1
		end
	end
	--是否提升学历
	if nTotal >= #tYearOfRoosterFeeding_Text["Talent"] then
		YearOfRoosterFeeding_SetDegree(5,nDegree+1)
		YearOfRoosterFeeding_GiveTalent()
		nMail = YearOfRoosterFeeding_EntranceAward(nDegree)
		nUp = 1
	else
		nUp = 0
	end
	
	if nIsEmoney == 3 and nUp == 0 then
		YearOfRoosterFeeding_BuManDialog(nNpcId,nClass)
		return
	end

	YearOfRoosterFeeding_RandomDialog(nNpcId,nClass,nDegree,nMode,nPoint,nPoint1,nUp,nMail,nIsEmoney)
end



--随机天赋
function YearOfRoosterFeeding_GiveTalent()
	local tDegree = YearOfRoosterFeeding_GetDegree()
	local nDegree = tDegree[5]
	
	local nEvent = tYearOfRoosterFeeding_Stc["BTalent"]["EventType"]
	local nType = tYearOfRoosterFeeding_Stc["BTalent"]["DataType"]
	
	local nBeast = math.floor(Get_UserStatisticValue(nEvent,nType)/10)
	local nTalent = Get_UserStatisticValue(nEvent,nType)%10
	
	local nNewTalent = math.random(1,#tYearOfRoosterFeeding_Text["Talent"])
	
	if nDegree == 2 then
		if nNewTalent == nTalent then
		local tTalent = {1,2,3,4}
		table.remove(tTalent,nTalent)
		local nIndex = math.random(1,#tTalent)
		nNewTalent = tTalent[nIndex]
		end 
	end
	local nBTalent = tonumber(nBeast .. nNewTalent)
	Task_SetStatistic(nEvent,nType,nBTalent,1)
end

--给奖励
function YearOfRoosterFeeding_EntranceAward(nDegree)
	local nIndex = 1
	local nUserId = Get_UserId()
	local nMail = 0
	if tYearOfRoosterFeeding_AwardRandom[nDegree] ~= nil then
		local nRandom = math.random(1,10000)
		if nRandom <= tYearOfRoosterFeeding_AwardRandom[nDegree] then 
			nIndex = 2
		end
	end
	
	local sNpcName = YearOfRoosterFeeding_GetNpcName()
	local nActionId = tYearOfRoosterFeeding_ShengXueAward[nDegree][nIndex]["ActionId"]
	local sSender = tYearOfRoosterFeeding_Text["Sender"]
	local sTitle = tYearOfRoosterFeeding_Text["Title"]
	local sContent = tYearOfRoosterFeeding_Text["Content"]
	
	if User_CheckLeftSpace(tYearOfRoosterFeeding_ShengXueAward[nDegree]["Space"]) then
		RewardTemplate_UseItemAndMsg(tYearOfRoosterFeeding_ShengXueAward[nDegree][nIndex])
		nMail = 1 
	else
		Sys_SendMail(nUserId,0,0,nActionId,0,0,sSender,sTitle,sContent)
		nMail = 2 
	end
	
	if type(tYearOfRoosterFeeding_AwardLog[nDegree]) == "table" then
		Sys_SaveActionFestivalLog(tYearOfRoosterFeeding_AwardLog[nDegree][nIndex])
	else
		Sys_SaveActionFestivalLog(tYearOfRoosterFeeding_AwardLog[nDegree])
	end
	Sys_SaveEmoneyBuy(tYearOfRoosterFeeding_AwardLog["EmoneyLog"][nDegree])
	RewardTemplate_UseItemAndMsg(tYearOfRoosterFeeding_AwardMagic[nDegree])
	User_EffectAdd("self",tYearOfRoosterFeeding_Effect["GiveCoat"])
	return nMail
end

--随机对白
function YearOfRoosterFeeding_RandomDialog(nNpcId,nClass,nDegree,nMode,nPoint,nPoint1,nUp,nMail,nIsEmoney)
	local sName = Get_NpcName(nNpcId)
	if nUp == 0 then 
		if nMode == 1 then
			local nXueli = tYearOfRoosterFeeding_Dialog[nDegree]
			local nIndex = 1
	
			local sText1 = tYearOfRoosterFeeding_Text[20224]["Text361"][nXueli][nClass][nIndex]
			local sText2 = string.format(tYearOfRoosterFeeding_Text[20224]["Text362"][nClass],nPoint)
			
			-- if tYearOfRoosterFeeding_Text[20224]["Option28"][nXueli][nClass][nIndex] ~= nil then
				-- local sOption1 = tYearOfRoosterFeeding_Text[20224]["Option28"][nXueli][nClass][nIndex]
				-- Sys_DialogOption(sOption1,"</F>YearOfRoosterFeeding_OpenPic</N>" .. nXueli .. "</N>" .. nIndex)
			-- end
			
			local sOption = tYearOfRoosterFeeding_Text[20224]["Option27"][nXueli][nClass][nIndex]
			
			local nEmoney = tYearOfRoosterFeeding_Emoney[nDegree]
			local sOption2 = string.format(tYearOfRoosterFeeding_Text[20224]["Option80"],nEmoney)
			
			Sys_DialogText(sText1)
			Sys_DialogText(sText2)
			Sys_DialogOption(sOption,"</F>LinkNpcGossipFunc_New</N>" .. nNpcId .. "</S>1-6")
			
			
			local tDegree1 = YearOfRoosterFeeding_GetDegree()
			local nPoints = tDegree1[nClass]
			local nNeedPoint = tYearOfRoosterFeeding_NeedPoint[nDegree]
			
			
			if nPoints < nNeedPoint and (nIsEmoney == 2 or nIsEmoney == 3)then
				Sys_DialogOption(sOption2,"</F>YearOfRoosterFeeding_UseEmoney</N>" .. nNpcId .. "</N>" .. nClass .. "</N>" .. 1 .. "</N>" .. 0)
			end
			
			
		elseif nMode == 2 then
			YearOfRoosterFeeding_SecretDialog(nNpcId,nClass,nDegree,sName,nPoint,nPoint1,nUp,nMail)
			return
		else
			YearOfRoosterFeeding_ExamDialog(nNpcId,nClass,nDegree,sName,nPoint,nPoint1,nUp,nMail)
			return
		end
	else
		if nMode == 1 then
			local sText1 = tYearOfRoosterFeeding_Text[20224]["Text371"][nDegree][nMail]
			local sText2 = tYearOfRoosterFeeding_Text[20224]["Text372"][nDegree]
			local sOption = tYearOfRoosterFeeding_Text[20224]["Option29"][nDegree]
			
			Sys_DialogText(sText1)
			Sys_DialogText(sText2)
			Sys_DialogOption(sOption,"</F>LinkNpcGossipFunc_New</N>" .. nNpcId .. "</S>1-6")
		elseif nMode == 2 then
			YearOfRoosterFeeding_SecretDialog(nNpcId,nClass,nDegree,sName,nPoint,nPoint1,nUp,nMail)
			return
		else
			YearOfRoosterFeeding_ExamDialog(nNpcId,nClass,nDegree,sName,nPoint,nPoint1,nUp,nMail)
			return
		end
	end

	Sys_DialogFace(nNpcId)
	Sys_DialogEnd()

end

function YearOfRoosterFeeding_SecretDialog(nNpcId,nClass,nDegree,sName,nPoint,nPoint1,nUp,nMail)
	local nClassNo1 = tYearOfRoosterFeeding_SecretPoint[nClass][1]
	local nClassNo2 = tYearOfRoosterFeeding_SecretPoint[nClass][2]
	
	local sClass1 = tYearOfRoosterFeeding_Text["Talent"][nClassNo1]
	local sClass2 = tYearOfRoosterFeeding_Text["Talent"][nClassNo2]
	
	local sText1 = tYearOfRoosterFeeding_Text[20224]["Text611"]
	local sText2 = string.format(tYearOfRoosterFeeding_Text[20224]["Text612"],sName,nPoint,sClass1,nPoint1,sClass2)
	
	local sOption = tYearOfRoosterFeeding_Text[20224]["Option51"]
	Sys_DialogText(sText1)
	Sys_DialogText(sText2)
	if nUp == 0 then
		Sys_DialogOption(sOption,"</F>LinkNpcGossipFunc_New</N>" .. nNpcId .. "</S>1-6")
	else
		Sys_DialogOption(sOption,"</F>YearOfRoosterFeeding_RandomDialog</N>" .. nNpcId .. "</N>" .. nClass .. "</N>" .. nDegree .. "</N>" .. 1 .. "</N>" .. nPoint .. "</N>" .. nPoint1 .. "</N>" .. nUp .. "</N>" .. nMail)
	end
	Sys_DialogFace(nNpcId)
	Sys_DialogEnd()
end

function YearOfRoosterFeeding_SCanNotUseDialog(nNpcId,nItemId)
	local nClassNo1 = tYearOfRoosterFeeding_SecretPoint[nItemId][1]
	local nClassNo2 = tYearOfRoosterFeeding_SecretPoint[nItemId][2]
	
	local sClass1 = tYearOfRoosterFeeding_Text["Talent"][nClassNo1]
	local sClass2 = tYearOfRoosterFeeding_Text["Talent"][nClassNo2]
	
	local sText = string.format(tYearOfRoosterFeeding_Text[20224]["Text841"],sClass1,sClass2)
	
	Sys_DialogText(sText)
	Sys_DialogOption(tYearOfRoosterFeeding_Text[20224]["Option62"],"</F>NULL")
	Sys_DialogFace(nNpcId)
	Sys_DialogEnd()
	
end
function YearOfRoosterFeeding_ExamDialog(nNpcId,nClass,nDegree,sName,nPoint,nPoint1,nUp,nMail)
	local sClass = tYearOfRoosterFeeding_Text["Talent"][nClass]
	local sText1 = string.format(tYearOfRoosterFeeding_Text[20224]["Text831"],sClass)
	Sys_DialogText(sText1)
	
	if nUp == 0 then
		Sys_DialogOption(tYearOfRoosterFeeding_Text[20224]["Option60"],"</F>LinkNpcGossipFunc_New</N>" .. nNpcId .. "</S>1-6")
	else
		Sys_DialogOption(tYearOfRoosterFeeding_Text[20224]["Option60"],"</F>YearOfRoosterFeeding_RandomDialog</N>" .. nNpcId .. "</N>" .. nClass .. "</N>" .. nDegree .. "</N>" .. 1 .. "</N>" .. nPoint .. "</N>" .. nPoint1 .. "</N>" .. nUp .. "</N>" .. nMail)
	end
	Sys_DialogFace(nNpcId)
	Sys_DialogEnd()
end

function YearOfRoosterFeeding_BuManDialog(nNpcId,nClass)
	local sClass = tYearOfRoosterFeeding_Text["Talent"][nClass]
	local sText1 = string.format(tYearOfRoosterFeeding_Text[20224]["Text861"],sClass)
	Sys_DialogText(sText1)
	Sys_DialogOption(tYearOfRoosterFeeding_Text[20224]["Option85"],"</F>LinkNpcGossipFunc_New</N>" .. nNpcId .. "</S>1-6")
	Sys_DialogFace(nNpcId)
	Sys_DialogEnd()
end



function YearOfRoosterFeeding_OpenPic(nXueli,nIndex)
	local nUserId = Get_UserId()
	local nSex = Get_UserSex(nUserId)
	local sWeb = ""
	if type(tYearOfRoosterFeeding_GuiZe[nXueli][nIndex]) == "table"
	then
		sWeb = tYearOfRoosterFeeding_GuiZe[nXueli][nIndex][nSex]
	else
		sWeb = tYearOfRoosterFeeding_GuiZe[nXueli][nIndex]
	end

	User_SendWebDialog(sWeb,nUserId)
end


function YearOfRoosterFeeding_UseSecretBook(nItemId)
	local nNpcId = Get_NpcId()
	--判断活动时间
	if not Sys_ChkFullTime(tYearOfRoosterFeeding_Constant["ActivetyTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
		local nRandom = math.random(1,#tYearOfRoosterFeeding_RandomPoint)
		local tDegree = YearOfRoosterFeeding_GetDegree()
		local nDegree = tDegree[5]
		local nAccount = 0
		
		for k,v in ipairs (tYearOfRoosterFeeding_SecretPoint[nItemId]) do
			if not YearOfRoosterFeeding_ChkPoint(v) then
				nAccount = nAccount + 1
			end
		end
		
		if nAccount >= 2 then
			YearOfRoosterFeeding_SCanNotUseDialog(nNpcId,nItemId)
			return
		else
		
			if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then 
				for k,v in ipairs (tYearOfRoosterFeeding_SecretPoint[nItemId]) do
					YearOfRoosterFeeding_SetDegree(v,tYearOfRoosterFeeding_RandomPoint[nRandom][k])
					
					local nPoint = tYearOfRoosterFeeding_RandomPoint[nRandom][1]
					local nPoint1 = tYearOfRoosterFeeding_RandomPoint[nRandom][2]
					Sys_SaveActionFestivalLog(string.format(tYearOfRoosterFeeding_Log[6],nItemId,v,tYearOfRoosterFeeding_RandomPoint[nRandom][k]))
					YearOfRoosterFeeding_UpXueLi(nNpcId,nItemId,nDegree,2,nPoint,nPoint1)
				end
				
				User_EffectAdd("self",tYearOfRoosterFeeding_Effect["UseSecretBook"])
			end
		
		end
end





function YearOfRoosterFeeding_CountRate()
	local tDegree = YearOfRoosterFeeding_GetDegree()
	local nDegree = tDegree[5]
	local tRate = {}
	for i = 1,#tDegree-1 do 
		local nNeedPoint = tYearOfRoosterFeeding_NeedPoint[nDegree]
		local nRate = math.floor(tDegree[i]/nNeedPoint*9600)
		local nRateX = math.floor(tDegree[i]/nNeedPoint*10000)
		local nStaus = 0
		local tStaus = {}
		if nRate == 0 then 
			nStaus = 1
		elseif nRate >= 9600 then
			nStaus = 3
		else
			nStaus = 2
		end
		table.insert(tStaus,nRate)
		table.insert(tStaus,nStaus)
		table.insert(tStaus,nRateX)
		table.insert(tRate,tStaus)
	end
	return tRate
end

function YearOfRoosterFeeding_Exam(nClass)
	local nNpcId = Get_NpcId()
	--判断活动时间
	if not Sys_ChkFullTime(tYearOfRoosterFeeding_Constant["ActivetyTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	local tRate = YearOfRoosterFeeding_CountRate()
	local sClass = tYearOfRoosterFeeding_Text["Talent"][nClass]
	local nRate = tRate[nClass][3]
	local sPresent = tostring(nRate/100)
	local sText = string.format(tYearOfRoosterFeeding_Text[20224]["Text811"],sClass,sPresent)
	Sys_DialogText(sText)
	Sys_DialogOption(tYearOfRoosterFeeding_Text[20224]["Option57"],"</F>YearOfRoosterFeeding_SecondExam</N>" .. nNpcId .. "</N>" .. nClass)
	Sys_DialogOption(tYearOfRoosterFeeding_Text[20224]["Option58"],"</F>LinkNpcGossipFunc_New</N>" .. nNpcId .. "</S>7-1")
	Sys_DialogFace(nNpcId)
	Sys_DialogEnd()
end

function YearOfRoosterFeeding_SecondExam(nNpcId,nClass)
	--判断活动时间
	if not Sys_ChkFullTime(tYearOfRoosterFeeding_Constant["ActivetyTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	local tDegree = YearOfRoosterFeeding_GetDegree()
	local tRate = YearOfRoosterFeeding_CountRate()
	local nRate = tRate[nClass][1]
	local nStaus = tRate[nClass][2]
	local nPoint = tDegree[nClass]
	local sClass = tYearOfRoosterFeeding_Text["Talent"][nClass]
	
	local nDegree = tDegree[5]
	local nNeedPoint = tYearOfRoosterFeeding_NeedPoint[nDegree]
	local nUpPoint = nNeedPoint - nPoint
	
	
	if nStaus == 2 then
		local nRandom = math.random(1,tYearOfRoosterFeeding_Constant["Random"])
		if nRandom <= nRate then 
			User_EffectAdd("self",tYearOfRoosterFeeding_Effect["ExamSuccess"])
			YearOfRoosterFeeding_SetDegree(nClass,nUpPoint)
			Sys_SaveActionFestivalLog(string.format(tYearOfRoosterFeeding_Log[5],nClass,nUpPoint))
			YearOfRoosterFeeding_UpXueLi(nNpcId,nClass,nDegree,3,nUpPoint,0)
			
		else
			YearOfRoosterFeeding_SetDegree(nClass,-nPoint)
			Sys_SaveActionFestivalLog(string.format(tYearOfRoosterFeeding_Log[5],nClass,-nPoint))
			User_EffectAdd("self",tYearOfRoosterFeeding_Effect["ExamFail"])
			local sText = string.format(tYearOfRoosterFeeding_Text[20224]["Text821"],sClass)
			Sys_DialogText(sText)
			Sys_DialogOption(tYearOfRoosterFeeding_Text[20224]["Option59"],"</F>LinkNpcGossipFunc_New</N>" .. nNpcId .. "</S>1-6")
			Sys_DialogFace(nNpcId)
			Sys_DialogEnd()
		end

	end
end

--------------------------------------------------礼包逻辑
function YearOfRoosterFeeding_OpenPack(nItemId)
	if tYearOfRoosterFeeding_Pack[nItemId]["TimeLimnit"] ~= nil then
		if not Sys_ChkFullTime(tYearOfRoosterFeeding_Constant["ActivetyTime"]) then
			if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
				User_TalkChannel2005(tYearOfRoosterFeeding_Text["TimeOut"])
				return
			end
		end
	end
	
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		RewardTemplate_NewRandom(tYearOfRoosterFeeding_Pack,nItemId)
	end
end

--------------------------------------------------NPC配置
--20224	年兽领养
--活动前
tNpcFace[4645] = 354
tNpcGossip[20224] = tNpcGossip[20224] or DefaultNpc:new{}

tNpcFace[4647] = 354
tNpcGossip[20310] = tNpcGossip[20224] or DefaultNpc:new{}

tNpcFace[4648] = 354
tNpcGossip[20311] = tNpcGossip[20224] or DefaultNpc:new{}


tNpcGossip[20224]["OptionHidden"] = 1
tNpcGossip[20224]["DialogueText"] = tYearOfRoosterFeeding_Text[20224]
tNpcGossip[20224]["Text1-1"] = {111,112,113,114,115,116}
tNpcGossip[20224]["tOption1-1"] = {1}
tNpcGossip[20224]["ChkFunc1-1"] = function ()
	local nNpcId = Get_NpcId()
	tNpcGossip[20224]["Text111"] = tYearOfRoosterFeeding_Text[nNpcId]["Text111"]
	tNpcGossip[20224]["Text112"] = tYearOfRoosterFeeding_Text[nNpcId]["Text112"]
	
	return CommonFunc_GetBeforeActivityTime(tYearOfRoosterFeeding_Constant["ActivetyTime"])
end

--活动后
tNpcGossip[20224]["Text1-2"] = {111,112,121,122}
tNpcGossip[20224]["tOption1-2"] = {2}
tNpcGossip[20224]["ChkFunc1-2"] = function ()

	local nNpcId = Get_NpcId()
	tNpcGossip[20224]["Text111"] = tYearOfRoosterFeeding_Text[nNpcId]["Text111"]
	tNpcGossip[20224]["Text112"] = tYearOfRoosterFeeding_Text[nNpcId]["Text112"]
	
	return CommonFunc_GetAfterActivityTime(tYearOfRoosterFeeding_Constant["ActivetyTime"])
end

--活动中
--等级不满足条件
tNpcGossip[20224]["Text1-3"] = {131,114,115,116}
tNpcGossip[20224]["tOption1-3"] = {3}
tNpcGossip[20224]["ChkFunc1-3"] = function ()
	local nEvent = tYearOfRoosterFeeding_Stc["BTalent"]["EventType"]
	local nType = tYearOfRoosterFeeding_Stc["BTalent"]["DataType"]
	return Sys_ChkFullTime(tYearOfRoosterFeeding_Constant["ActivetyTime"]) and Task_ChkStcValue(nEvent,nType,"==",0) and (not User_JudgeLevelAndMetempsychosis(tYearOfRoosterFeeding_Constant["Level"],tYearOfRoosterFeeding_Constant["Metempsychosis"]))
end

--未领养
tNpcGossip[20224]["Text1-4"] = {111,112,141,114,116}
tNpcGossip[20224]["tOption1-4"] = {4,6}
tNpcGossip[20224]["ChkFunc1-4"] = function ()
	local nEvent = tYearOfRoosterFeeding_Stc["BTalent"]["EventType"]
	local nType = tYearOfRoosterFeeding_Stc["BTalent"]["DataType"]
	
	local nNpcId = Get_NpcId()
	tNpcGossip[20224]["Text111"] = tYearOfRoosterFeeding_Text[nNpcId]["Text111"]
	tNpcGossip[20224]["Text112"] = tYearOfRoosterFeeding_Text[nNpcId]["Text112"]
	
	
	return Sys_ChkFullTime(tYearOfRoosterFeeding_Constant["ActivetyTime"]) and Task_ChkStcValue(nEvent,nType,"==",0) and User_JudgeLevelAndMetempsychosis(tYearOfRoosterFeeding_Constant["Level"],tYearOfRoosterFeeding_Constant["Metempsychosis"])
end

tNpcGossip[20224]["OptionFunc4"] = "YearOfRoosterFeeding_Adopt"
tNpcGossip[20224]["OptionFunc5"] = "YearOfRoosterFeeding_OpenWeb"

--背包不足
tNpcGossip[20224]["Text2-1"] = {211}
tNpcGossip[20224]["tOption2-1"] = {7}

--成功成为家庭教师
tNpcGossip[20224]["Text2-2"] = {221,222}
tNpcGossip[20224]["tOption2-2"] = {8}
tNpcGossip[20224]["OptionPoint8"]="1-6"
tNpcGossip[20224]["ChkFunc2-2"] = function ()
	local nUserId = Get_UserId()
	local sName = Get_UserName(nUserId)
	tNpcGossip[20224]["Text221"] = string.format(tYearOfRoosterFeeding_Text[20224]["Text221"],sName)
	return true
end


--活动中
--闲聊对白
tNpcGossip[20224]["Text1-5"] = {111,112,151}
tNpcGossip[20224]["tOption1-5"] = {9}
tNpcGossip[20224]["ChkFunc1-5"] = function ()
	local nEvent = tYearOfRoosterFeeding_Stc["BTalent"]["EventType"]
	local nType = tYearOfRoosterFeeding_Stc["BTalent"]["DataType"]
	
	local nBeast = math.floor(Get_UserStatisticValue(nEvent,nType)/10)
	
	local nNpcId = Get_NpcId()
	local nMark = math.random(1,#tYearOfRoosterFeeding_Text[20224]["151"])
	local nRooster = tYearOfRoosterFeeding_BeastNo[nNpcId]



	tNpcGossip[20224]["Text111"] = tYearOfRoosterFeeding_Text[nNpcId]["Text111"]
	tNpcGossip[20224]["Text112"] = tYearOfRoosterFeeding_Text[nNpcId]["Text112"]
	tNpcGossip[20224]["Text151"] = tYearOfRoosterFeeding_Text[20224]["151"][nMark]
	tNpcGossip[20224]["Option9"] = tYearOfRoosterFeeding_Text[20224]["Option9"][nMark]

	return false
end

--已领养
tNpcGossip[20224]["Text1-6"] = {170,161,172,162,163,164,165,166,167,169,168,1610}
tNpcGossip[20224]["tOption1-6"] = {10,11,12,13,14,15,17}
tNpcGossip[20224]["ChkFunc1-6"] = function ()

	local nEvent = tYearOfRoosterFeeding_Stc["BTalent"]["EventType"]
	local nType = tYearOfRoosterFeeding_Stc["BTalent"]["DataType"]

	local nBeast = math.floor(Get_UserStatisticValue(nEvent,nType)/10)
	
	local nAEvent = tYearOfRoosterFeeding_Stc["Add"]["EventType"]
	local nAType = tYearOfRoosterFeeding_Stc["Add"]["DataType"]
	
	local nCEvent = tYearOfRoosterFeeding_Stc["Times"]["EventType"]
	local nCType = tYearOfRoosterFeeding_Stc["Times"]["DataType"]
	
	local nNpcId = Get_NpcId()
	local nRooster = tYearOfRoosterFeeding_BeastNo[nNpcId]
	-- local nMark = tYearOfRoosterFeeding_BeastNo[nNpcId]
	local sName = Get_NpcName(nNpcId)
	local tDegree = YearOfRoosterFeeding_GetDegree()
	
	local nCPoint = tDegree[1]
	local nMPoint = tDegree[2]
	local nAPoint = tDegree[3]
	local nPPoint = tDegree[4]
	local nDegree = tDegree[5]
	
	local nNeedPoint = tYearOfRoosterFeeding_NeedPoint[nDegree]
	
	
	local nTalent = Get_UserStatisticValue(nEvent,nType)%10
	
	local nTimes = YearOfRoosterFeeding_ClearStc(nCEvent,nCType)
	local nAddTimes = Get_UserStatisticValue(nAEvent,nAType)

	local nMaxTimes = tYearOfRoosterFeeding_Constant["MaxTimes"]
	
	local sTalent = tYearOfRoosterFeeding_Text["Talent"][nTalent]
	local sZaiDu = tYearOfRoosterFeeding_Text["ZaiDu"][nDegree]
	local sShengXue = tYearOfRoosterFeeding_Text["ShengXue"][nDegree]
	
	if nDegree > 5 then
		return false
	end
	
	
	-- local sText11 = tYearOfRoosterFeeding_Text[nNpcId]["NameDesc1"] .. tYearOfRoosterFeeding_Text[nNpcId]["NameDesc2"]
	
	-- tNpcGossip[20224]["Text161"] = string.format(tYearOfRoosterFeeding_Text[20224]["Text161"],sText11)

	tNpcGossip[20224]["Text162"] = string.format(tYearOfRoosterFeeding_Text[20224]["Text162"],sZaiDu,sTalent)
	
	local sLeft1 = string.format(tYearOfRoosterFeeding_Text[20224]["Left"][1],nCPoint,nNeedPoint)
	local sRight1 = string.format(tYearOfRoosterFeeding_Text[20224]["Right"][1],nMPoint,nNeedPoint)
	local sPin1 = Sys_Alignment(sLeft1,5,sRight1,30)
	
	local sLeft2 = string.format(tYearOfRoosterFeeding_Text[20224]["Left"][2],nAPoint,nNeedPoint)
	local sRight2 = string.format(tYearOfRoosterFeeding_Text[20224]["Right"][2],nPPoint,nNeedPoint)
	local sPin2 = Sys_Alignment(sLeft2,5,sRight2,35)
	
	tNpcGossip[20224]["Text164"] = string.format(tYearOfRoosterFeeding_Text[20224]["Text164"],sPin1)
	tNpcGossip[20224]["Text165"] = string.format(tYearOfRoosterFeeding_Text[20224]["Text165"],sPin2)
	
	tNpcGossip[20224]["Text167"] = string.format(tYearOfRoosterFeeding_Text[20224]["Text167"],nTimes,nMaxTimes)
	
	if nDegree == 5 then 
		tNpcGossip[20224]["Text168"] = tYearOfRoosterFeeding_Text["Null"]
		tNpcGossip[20224]["Text1610"] = string.format(tYearOfRoosterFeeding_Text["Null1"],tYearOfRoosterFeeding_Text["AwardDesc"][nDegree])
	else
		tNpcGossip[20224]["Text168"] = string.format(tYearOfRoosterFeeding_Text[20224]["Text168"],sShengXue)
		tNpcGossip[20224]["Text1610"] = string.format(tYearOfRoosterFeeding_Text[20224]["Text1610"],tYearOfRoosterFeeding_Text["AwardDesc"][nDegree])
		
	end
	
	
	
	
	
	
	tNpcGossip[20224]["Text169"] = string.format(tYearOfRoosterFeeding_Text[20224]["Text169"],nAddTimes)

	if nAddTimes == 0 then
		tNpcGossip[20224]["Text1-6"] = {170,161,172,162,163,164,165,166,167,168,1610}
	else
		tNpcGossip[20224]["Text1-6"] = {170,161,172,162,163,164,165,166,167,169,168,1610}
	end
	--(nBeast == nRooster) and
	return Sys_ChkFullTime(tYearOfRoosterFeeding_Constant["ActivetyTime"]) and Task_ChkStcValue(nEvent,nType,"~=",0) and (nDegree <= 5)
	
end

tNpcGossip[20224]["OptionFunc10"] = "YearOfRoosterFeeding_Class</N>1"
tNpcGossip[20224]["OptionChkFunc10"] = function ()
	if YearOfRoosterFeeding_ChkPoint(1) then
		return true
	else
		return false
	end
end

tNpcGossip[20224]["OptionFunc11"] = "YearOfRoosterFeeding_Class</N>2"
tNpcGossip[20224]["OptionChkFunc11"] = function ()
	if YearOfRoosterFeeding_ChkPoint(2) then
		return true
	else
		return false
	end
end

tNpcGossip[20224]["OptionFunc12"] = "YearOfRoosterFeeding_Class</N>3"
tNpcGossip[20224]["OptionChkFunc12"] = function ()
	if YearOfRoosterFeeding_ChkPoint(3) then
		return true
	else
		return false
	end
end

tNpcGossip[20224]["OptionFunc13"] = "YearOfRoosterFeeding_Class</N>4"
tNpcGossip[20224]["OptionChkFunc13"] = function ()
	if YearOfRoosterFeeding_ChkPoint(4) then
		return true
	else
		return false
	end
end

tNpcGossip[20224]["OptionPoint14"]="5-1"
-- tNpcGossip[20224]["OptionFunc14"] = "YearOfRoosterFeeding_HideBook</N>20224"
-- tNpcGossip[20224]["OptionFunc15"] = "YearOfRoosterFeeding_Exam</N>20224"
tNpcGossip[20224]["OptionPoint15"]="7-1"
tNpcGossip[20224]["OptionFunc16"] = "YearOfRoosterFeeding_OpenWeb"


tNpcGossip[20224]["Text1-7"] = {171}
tNpcGossip[20224]["tOption1-7"] = {61}
tNpcGossip[20224]["ChkFunc1-7"] = function ()
	local nEvent = tYearOfRoosterFeeding_Stc["BTalent"]["EventType"]
	local nType = tYearOfRoosterFeeding_Stc["BTalent"]["DataType"]
	local nBeast = math.floor(Get_UserStatisticValue(nEvent,nType)/10)
	local nNpcId = Get_NpcId()
	local nRooster = tYearOfRoosterFeeding_BeastNo[nNpcId]
	
	local tDegree = YearOfRoosterFeeding_GetDegree()
	local nDegree = tDegree[5]
-- (nBeast == nRooster) and
	return Sys_ChkFullTime(tYearOfRoosterFeeding_Constant["ActivetyTime"]) and Task_ChkStcValue(nEvent,nType,"~=",0) and (nDegree > 5)
end





--没有五个核桃
tNpcGossip[20224]["Text3-3"] = {331}
tNpcGossip[20224]["tOption3-3"] = {23}

--隐藏书籍
tNpcGossip[20224]["Text5-1"] = {511}
tNpcGossip[20224]["tOption5-1"] = {30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50}
tNpcGossip[20224]["ChkFunc5-1"] = function ()
	tNpcGossip[20224]["tOption5-1"] = {}
	for k,v in pairs(tYearOfRoosterFeeding_SecretBook) do
		if Item_ChkItem(k) then 
			table.insert(tNpcGossip[20224]["tOption5-1"],v)
		end
	end
	table.insert(tNpcGossip[20224]["tOption5-1"],50)
	return true
end

tNpcGossip[20224]["OptionFunc30"] = "YearOfRoosterFeeding_UseSecretBook</N>3302091"
tNpcGossip[20224]["OptionFunc31"] = "YearOfRoosterFeeding_UseSecretBook</N>3302092"
tNpcGossip[20224]["OptionFunc32"] = "YearOfRoosterFeeding_UseSecretBook</N>3302093"
tNpcGossip[20224]["OptionFunc33"] = "YearOfRoosterFeeding_UseSecretBook</N>3302094"
tNpcGossip[20224]["OptionFunc34"] = "YearOfRoosterFeeding_UseSecretBook</N>3302095"
tNpcGossip[20224]["OptionFunc35"] = "YearOfRoosterFeeding_UseSecretBook</N>3302096"
tNpcGossip[20224]["OptionFunc36"] = "YearOfRoosterFeeding_UseSecretBook</N>3302097"
tNpcGossip[20224]["OptionFunc37"] = "YearOfRoosterFeeding_UseSecretBook</N>3302098"
tNpcGossip[20224]["OptionFunc38"] = "YearOfRoosterFeeding_UseSecretBook</N>3302099"
tNpcGossip[20224]["OptionFunc39"] = "YearOfRoosterFeeding_UseSecretBook</N>3302100"
tNpcGossip[20224]["OptionFunc40"] = "YearOfRoosterFeeding_UseSecretBook</N>3302101"
tNpcGossip[20224]["OptionFunc41"] = "YearOfRoosterFeeding_UseSecretBook</N>3302102"
tNpcGossip[20224]["OptionFunc42"] = "YearOfRoosterFeeding_UseSecretBook</N>3302103"
tNpcGossip[20224]["OptionFunc43"] = "YearOfRoosterFeeding_UseSecretBook</N>3302104"
tNpcGossip[20224]["OptionFunc44"] = "YearOfRoosterFeeding_UseSecretBook</N>3302105"
tNpcGossip[20224]["OptionFunc45"] = "YearOfRoosterFeeding_UseSecretBook</N>3302106"
tNpcGossip[20224]["OptionFunc46"] = "YearOfRoosterFeeding_UseSecretBook</N>3302107"
tNpcGossip[20224]["OptionFunc47"] = "YearOfRoosterFeeding_UseSecretBook</N>3302108"
tNpcGossip[20224]["OptionFunc48"] = "YearOfRoosterFeeding_UseSecretBook</N>3302109"
tNpcGossip[20224]["OptionFunc49"] = "YearOfRoosterFeeding_UseSecretBook</N>3302110"



tNpcGossip[20224]["Text7-1"] = {711,712,713,714,715,716,717,718}
tNpcGossip[20224]["tOption7-1"] = {52,53,54,55,56}
tNpcGossip[20224]["ChkFunc7-1"] = function ()
	
	local tDegree = YearOfRoosterFeeding_GetDegree()
	local nDegree = tDegree[5]
	local nNeedPoint = tYearOfRoosterFeeding_NeedPoint[nDegree]
	local tRate = YearOfRoosterFeeding_CountRate()
	tNpcGossip[20224]["tOption7-1"] = {}
	for i=1,#tRate do
		local nRate = tRate[i][3]
		local nStaus = tRate[i][2]
		local sText = ""
		if nStaus == 2 then
			local sPresent = tostring(nRate/100)
			
			sText = string.format(tYearOfRoosterFeeding_Text["status"][nStaus],sPresent)
			table.insert(tNpcGossip[20224]["tOption7-1"],tYearOfRoosterFeeding_Rate[i])
		else
			sText = tYearOfRoosterFeeding_Text["status"][nStaus]
		end
		
		if tDegree[i] >=10 then
			tYearOfRoosterFeeding_Text[20224]["Rate"][i] = string.format(tYearOfRoosterFeeding_Text["Rates"],tYearOfRoosterFeeding_Text["Talent"][i],tDegree[i],nNeedPoint,sText)
		else
			tYearOfRoosterFeeding_Text[20224]["Rate"][i] = string.format(tYearOfRoosterFeeding_Text["Rate"],tYearOfRoosterFeeding_Text["Talent"][i],tDegree[i],nNeedPoint,sText)
		end
	
	end
	tNpcGossip[20224]["Text713"] = tYearOfRoosterFeeding_Text[20224]["Rate"][1]
	tNpcGossip[20224]["Text714"] = tYearOfRoosterFeeding_Text[20224]["Rate"][2]
	tNpcGossip[20224]["Text715"] = tYearOfRoosterFeeding_Text[20224]["Rate"][3]
	tNpcGossip[20224]["Text716"] = tYearOfRoosterFeeding_Text[20224]["Rate"][4]
	table.insert(tNpcGossip[20224]["tOption7-1"],56)
	return true
end

tNpcGossip[20224]["OptionFunc52"] = "YearOfRoosterFeeding_Exam</N>1"
tNpcGossip[20224]["OptionFunc53"] = "YearOfRoosterFeeding_Exam</N>2"
tNpcGossip[20224]["OptionFunc54"] = "YearOfRoosterFeeding_Exam</N>3"
tNpcGossip[20224]["OptionFunc55"] = "YearOfRoosterFeeding_Exam</N>4"


tNpcGossip[20224]["Text8-5"] = {851}
tNpcGossip[20224]["tOption8-5"] = {65}
tNpcGossip[20224]["OptionPoint65"]="1-6"

--家庭教师指南
tNpcGossip[20224]["Text11-1"] = {1111,1112,1113,1114,1115,1116,1117,1118,1119,1120}
tNpcGossip[20224]["tOption11-1"] = {90}
tNpcGossip[20224]["ChkFunc11-1"] = function ()
	return true
end







-----------------------------------------------------礼包配置
-- 3302138	染色道具随机包
tItem[3302138] = tItem[3302138] or {}
tItem[3302138]["Function"] = function(nItemId,sItemName)
	YearOfRoosterFeeding_OpenPack(nItemId)
end

tItem[3302139] = tItem[3302138]
tItem[3302140] = tItem[3302138]
tItem[3302141] = tItem[3302138]
tItem[3302142] = tItem[3302138]
tItem[3302143] = tItem[3302138]
tItem[3302144] = tItem[3302138]














