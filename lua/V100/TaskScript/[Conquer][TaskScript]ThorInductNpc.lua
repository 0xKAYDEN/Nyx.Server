------------------------------------------------------------------------------------
--Name：181113[简体征服][任务脚本]雷神职业NPC相关逻辑修改
--Creator:翁清海
--Created: 2018/11/13
------------------------------------------------------------------------------------
--任务需求：
-- 1、新就职npc相关逻辑，自动就职自动学技能

--命名空间: ThorInductNpc_

--logid :18000190

--lua.ini 21111

----------------------------------数据部分--------------------------------------------
local tThorInductNpc_Cont = {}
	--职业范围
	tThorInductNpc_Cont["Pro"] = {}
	tThorInductNpc_Cont["Pro"]["Min"] = 90
	tThorInductNpc_Cont["Pro"]["Max"] = 95
	--成就
	tThorInductNpc_Cont["Ach"] = {}
	tThorInductNpc_Cont["Ach"][9001] = 11401
	tThorInductNpc_Cont["Ach"][9002] = 11402
	tThorInductNpc_Cont["Ach"][9003] = 11403
	tThorInductNpc_Cont["Ach"][9004] = 11404
	tThorInductNpc_Cont["Ach"][9005] = 11405
	--月光宝盒
	tThorInductNpc_Cont["MoonItemId"] = {721051,721052,721020,721021,721022,721023,
	721024,721025,721053,721054,721055,721061,721030,721031,721032,721033,721034,
	721035,721062,721063,721064,721065,721040,721041,721042,721043,721080,721081,
	721082,721083,721084,721090,3306558,3310883}
	
	--职业进阶
	tThorInductNpc_Cont["ImprovePro"]={}
	tThorInductNpc_Cont["ImprovePro"][90]={}
	tThorInductNpc_Cont["ImprovePro"][90]["NextProNeedLevel"]=15 --需要等级
	tThorInductNpc_Cont["ImprovePro"][90]["Index"]="2-2" --满足条件的对白
	tThorInductNpc_Cont["ImprovePro"][91]={}
	tThorInductNpc_Cont["ImprovePro"][91]["NextProNeedLevel"]=40
	tThorInductNpc_Cont["ImprovePro"][91]["Index"]="2-3"
	tThorInductNpc_Cont["ImprovePro"][92]={}
	tThorInductNpc_Cont["ImprovePro"][92]["NextProNeedLevel"]=70
	tThorInductNpc_Cont["ImprovePro"][92]["Index"]="2-4"
	tThorInductNpc_Cont["ImprovePro"][93]={}
	tThorInductNpc_Cont["ImprovePro"][93]["NextProNeedLevel"]=100
	tThorInductNpc_Cont["ImprovePro"][93]["Index"]="2-5"
	tThorInductNpc_Cont["ImprovePro"][94]={}
	tThorInductNpc_Cont["ImprovePro"][94]["NextProNeedLevel"]=110
	tThorInductNpc_Cont["ImprovePro"][94]["Index"]="2-6"
	tThorInductNpc_Cont["ImprovePro"][95]={}
	tThorInductNpc_Cont["ImprovePro"][95]["NextProNeedLevel"]=110
	tThorInductNpc_Cont["ImprovePro"][95]["Index"]="2-7"
	--技能
	tThorInductNpc_Cont["Skill"] = {}
	tThorInductNpc_Cont["Skill"][1] = {}
	tThorInductNpc_Cont["Skill"][1]["MagicType"] = 15800
	tThorInductNpc_Cont["Skill"][1]["NeedLev"] = 1
	tThorInductNpc_Cont["Skill"][2] = {}
	tThorInductNpc_Cont["Skill"][2]["MagicType"] = 15700
	tThorInductNpc_Cont["Skill"][2]["NeedLev"] = 1
	tThorInductNpc_Cont["Skill"][3] = {}
	tThorInductNpc_Cont["Skill"][3]["MagicType"] = 15770
	tThorInductNpc_Cont["Skill"][3]["NeedLev"] = 1
	tThorInductNpc_Cont["Skill"][4] = {}
	tThorInductNpc_Cont["Skill"][4]["MagicType"] = 15720
	tThorInductNpc_Cont["Skill"][4]["NeedLev"] = 15
	tThorInductNpc_Cont["Skill"][5] = {}
	tThorInductNpc_Cont["Skill"][5]["MagicType"] = 15820
	tThorInductNpc_Cont["Skill"][5]["NeedLev"] = 40
	tThorInductNpc_Cont["Skill"][6] = {}
	tThorInductNpc_Cont["Skill"][6]["MagicType"] = 15750
	tThorInductNpc_Cont["Skill"][6]["NeedLev"] = 70
	tThorInductNpc_Cont["Skill"][7] = {}
	tThorInductNpc_Cont["Skill"][7]["MagicType"] = 15810
	tThorInductNpc_Cont["Skill"][7]["NeedLev"] = 100
	tThorInductNpc_Cont["Skill"][8] = {}
	tThorInductNpc_Cont["Skill"][8]["MagicType"] = 15790
	tThorInductNpc_Cont["Skill"][8]["NeedLev"] = 100
	tThorInductNpc_Cont["Skill"][9] = {}
	tThorInductNpc_Cont["Skill"][9]["MagicType"] = 15710
	tThorInductNpc_Cont["Skill"][9]["NeedLev"] = 100
	tThorInductNpc_Cont["Skill"][10] = {}
	tThorInductNpc_Cont["Skill"][10]["MagicType"] = 15780
	tThorInductNpc_Cont["Skill"][10]["NeedLev"] = 3
	tThorInductNpc_Cont["Skill"][11] = {}
	tThorInductNpc_Cont["Skill"][11]["MagicType"] = 15760
	tThorInductNpc_Cont["Skill"][11]["NeedLev"] = 15
	--任务
	tThorInductNpc_Cont["Task"] = {}
	tThorInductNpc_Cont["Task"]["New"] = 769
	tThorInductNpc_Cont["Task"]["Main"] = 3795
	--传送坐标
	tThorInductNpc_Cont["Trans"] = {}
	tThorInductNpc_Cont["Trans"]["Common"] = {}
	tThorInductNpc_Cont["Trans"]["Common"]["MapId"] = 1002
	tThorInductNpc_Cont["Trans"]["Common"]["BoundX"] = 525
	tThorInductNpc_Cont["Trans"]["Common"]["BoundY"] = 323
	tThorInductNpc_Cont["Trans"]["NoGift"] = {}
	tThorInductNpc_Cont["Trans"]["NoGift"]["MapId"] = 10364
	tThorInductNpc_Cont["Trans"]["NoGift"]["BoundX"] = 312
	tThorInductNpc_Cont["Trans"]["NoGift"]["BoundY"] = 337
	
local tThorInductNpc_Stc = {}
	tThorInductNpc_Stc["First"] = {}
	tThorInductNpc_Stc["First"]["Event"] = 187
	tThorInductNpc_Stc["First"]["Type"] = 97
	
local tThorInductNpc_Log = {}
	tThorInductNpc_Log["DelItem"] = "0,0,%d,%d,18000190,2,0,0"
	
local tThorInductNpc_Reward = {}
	--就职奖励
	tThorInductNpc_Reward["Improve"] = {}
	tThorInductNpc_Reward["Improve"][90]={}
	tThorInductNpc_Reward["Improve"][90]["NextPro"]=9001
	tThorInductNpc_Reward["Improve"][90][0] = {}
	tThorInductNpc_Reward["Improve"][90][0]["RewardItem"] = {}
	tThorInductNpc_Reward["Improve"][90][0]["RewardItem"][1] = {}
	tThorInductNpc_Reward["Improve"][90][0]["RewardItem"][1]["Id"] = 3005160 --15级就职礼包
	tThorInductNpc_Reward["Improve"][90][0]["RewardItem"][1]["Attr"] = "0 1"
	tThorInductNpc_Reward["Improve"][90][0]["LogId"] =18000190
	tThorInductNpc_Reward["Improve"][90][0]["Talk"]=tThorInductNpc_Text["Improve"][90]
	tThorInductNpc_Reward["Improve"][91]={}
	tThorInductNpc_Reward["Improve"][91]["NextPro"]=9002
	tThorInductNpc_Reward["Improve"][91][0] = {}
	tThorInductNpc_Reward["Improve"][91][0]["RewardItem"] = {}
	tThorInductNpc_Reward["Improve"][91][0]["RewardItem"][1] = {}
	tThorInductNpc_Reward["Improve"][91][0]["RewardItem"][1]["Id"] = 3005161 --40级就职礼包
	tThorInductNpc_Reward["Improve"][91][0]["RewardItem"][1]["Attr"] = "0 1"
	tThorInductNpc_Reward["Improve"][91][0]["LogId"] =18000190
	tThorInductNpc_Reward["Improve"][91][0]["Talk"]=tThorInductNpc_Text["Improve"][91]
	tThorInductNpc_Reward["Improve"][91][1] = {}
	tThorInductNpc_Reward["Improve"][91][1]["RewardItem"] = {}
	tThorInductNpc_Reward["Improve"][91][1]["RewardItem"][1] = {}
	tThorInductNpc_Reward["Improve"][91][1]["RewardItem"][1]["Id"] = 3005162 --40级就职礼包
	tThorInductNpc_Reward["Improve"][91][1]["RewardItem"][1]["Attr"] = "0 1"
	tThorInductNpc_Reward["Improve"][91][1]["LogId"] =18000190
	tThorInductNpc_Reward["Improve"][91][1]["Talk"]=tThorInductNpc_Text["Improve"][91]
	tThorInductNpc_Reward["Improve"][91][2] = {}
	tThorInductNpc_Reward["Improve"][91][2]["RewardItem"] = {}
	tThorInductNpc_Reward["Improve"][91][2]["RewardItem"][1] = {}
	tThorInductNpc_Reward["Improve"][91][2]["RewardItem"][1]["Id"] = 3005163 --40级就职礼包
	tThorInductNpc_Reward["Improve"][91][2]["RewardItem"][1]["Attr"] = "0 1"
	tThorInductNpc_Reward["Improve"][91][2]["LogId"] =18000190
	tThorInductNpc_Reward["Improve"][91][2]["Talk"]=tThorInductNpc_Text["Improve"][91]
	tThorInductNpc_Reward["Improve"][92]={}
	tThorInductNpc_Reward["Improve"][92]["NextPro"]=9003
	tThorInductNpc_Reward["Improve"][92][0] = {}
	tThorInductNpc_Reward["Improve"][92][0]["RewardItem"] = {}
	tThorInductNpc_Reward["Improve"][92][0]["RewardItem"][1] = {}
	tThorInductNpc_Reward["Improve"][92][0]["RewardItem"][1]["Id"] = 3005164 -- 70级就职礼包
	tThorInductNpc_Reward["Improve"][92][0]["RewardItem"][1]["Attr"] = "0 1"
	tThorInductNpc_Reward["Improve"][92][0]["LogId"] =18000190
	tThorInductNpc_Reward["Improve"][92][0]["Talk"]=tThorInductNpc_Text["Improve"][92]
	tThorInductNpc_Reward["Improve"][92][1] = {}
	tThorInductNpc_Reward["Improve"][92][1]["RewardItem"] = {}
	tThorInductNpc_Reward["Improve"][92][1]["RewardItem"][1] = {}
	tThorInductNpc_Reward["Improve"][92][1]["RewardItem"][1]["Id"] = 3005165 -- 70级就职礼包
	tThorInductNpc_Reward["Improve"][92][1]["RewardItem"][1]["Attr"] = "0 1"
	tThorInductNpc_Reward["Improve"][92][1]["LogId"] =18000190
	tThorInductNpc_Reward["Improve"][92][1]["Talk"]=tThorInductNpc_Text["Improve"][92]
	tThorInductNpc_Reward["Improve"][92][2] = {}
	tThorInductNpc_Reward["Improve"][92][2]["RewardItem"] = {}
	tThorInductNpc_Reward["Improve"][92][2]["RewardItem"][1] = {}
	tThorInductNpc_Reward["Improve"][92][2]["RewardItem"][1]["Id"] = 3005166 -- 70级就职礼包
	tThorInductNpc_Reward["Improve"][92][2]["RewardItem"][1]["Attr"] = "0 1"
	tThorInductNpc_Reward["Improve"][92][2]["LogId"] =18000190
	tThorInductNpc_Reward["Improve"][92][2]["Talk"]=tThorInductNpc_Text["Improve"][92]
	tThorInductNpc_Reward["Improve"][93]={}
	tThorInductNpc_Reward["Improve"][93]["NextPro"]=9004
	tThorInductNpc_Reward["Improve"][93][0] = {}
	tThorInductNpc_Reward["Improve"][93][0]["RewardItem"] = {}
	tThorInductNpc_Reward["Improve"][93][0]["RewardItem"][1] = {}
	tThorInductNpc_Reward["Improve"][93][0]["RewardItem"][1]["Id"] = 3005167 -- 100级就职礼包
	tThorInductNpc_Reward["Improve"][93][0]["RewardItem"][1]["Attr"] = "0 1"
	tThorInductNpc_Reward["Improve"][93][0]["LogId"] =18000190
	tThorInductNpc_Reward["Improve"][93][0]["Talk"]=tThorInductNpc_Text["Improve"][93]
	tThorInductNpc_Reward["Improve"][93][1] = {}
	tThorInductNpc_Reward["Improve"][93][1]["RewardItem"] = {}
	tThorInductNpc_Reward["Improve"][93][1]["RewardItem"][1] = {}
	tThorInductNpc_Reward["Improve"][93][1]["RewardItem"][1]["Id"] = 3005168 -- 100级就职礼包
	tThorInductNpc_Reward["Improve"][93][1]["RewardItem"][1]["Attr"] = "0 1"
	tThorInductNpc_Reward["Improve"][93][1]["LogId"] =18000190
	tThorInductNpc_Reward["Improve"][93][1]["Talk"]=tThorInductNpc_Text["Improve"][93]
	tThorInductNpc_Reward["Improve"][93][2] = {}
	tThorInductNpc_Reward["Improve"][93][2]["RewardItem"] = {}
	tThorInductNpc_Reward["Improve"][93][2]["RewardItem"][1] = {}
	tThorInductNpc_Reward["Improve"][93][2]["RewardItem"][1]["Id"] = 3005169 -- 100级就职礼包
	tThorInductNpc_Reward["Improve"][93][2]["RewardItem"][1]["Attr"] = "0 1"
	tThorInductNpc_Reward["Improve"][93][2]["LogId"] =18000190
	tThorInductNpc_Reward["Improve"][93][2]["Talk"]=tThorInductNpc_Text["Improve"][93]
	tThorInductNpc_Reward["Improve"][94]={}
	tThorInductNpc_Reward["Improve"][94]["NextPro"]=9005
	tThorInductNpc_Reward["Improve"][94]["NeedItem"] = 1
	tThorInductNpc_Reward["Improve"][94][0] = {}
	tThorInductNpc_Reward["Improve"][94][0]["RewardItem"] = {}
	tThorInductNpc_Reward["Improve"][94][0]["RewardItem"][1] = {}
	tThorInductNpc_Reward["Improve"][94][0]["RewardItem"][1]["Id"] = 3005170 --110级就职礼包
	tThorInductNpc_Reward["Improve"][94][0]["RewardItem"][1]["Attr"] = "0 1"
	tThorInductNpc_Reward["Improve"][94][0]["LogId"] =18000190
	tThorInductNpc_Reward["Improve"][94][0]["Talk"]=tThorInductNpc_Text["Improve"][94]
	tThorInductNpc_Reward["Improve"][94][1] = {}
	tThorInductNpc_Reward["Improve"][94][1]["RewardItem"] = {}
	tThorInductNpc_Reward["Improve"][94][1]["RewardItem"][1] = {}
	tThorInductNpc_Reward["Improve"][94][1]["RewardItem"][1]["Id"] = 3005171 --110级就职礼包
	tThorInductNpc_Reward["Improve"][94][1]["RewardItem"][1]["Attr"] = "0 1"
	tThorInductNpc_Reward["Improve"][94][1]["LogId"] =18000190
	tThorInductNpc_Reward["Improve"][94][1]["Talk"]=tThorInductNpc_Text["Improve"][94]
	tThorInductNpc_Reward["Improve"][94][2] = {}
	tThorInductNpc_Reward["Improve"][94][2]["RewardItem"] = {}
	tThorInductNpc_Reward["Improve"][94][2]["RewardItem"][1] = {}
	tThorInductNpc_Reward["Improve"][94][2]["RewardItem"][1]["Id"] = 3005172 --110级就职礼包
	tThorInductNpc_Reward["Improve"][94][2]["RewardItem"][1]["Attr"] = "0 1"
	tThorInductNpc_Reward["Improve"][94][2]["LogId"] =18000190
	tThorInductNpc_Reward["Improve"][94][2]["Talk"]=tThorInductNpc_Text["Improve"][94]
	--激情服就职奖励
	tThorInductNpc_Reward["ImproveNoGift"] = {}
	tThorInductNpc_Reward["ImproveNoGift"][90]={}
	tThorInductNpc_Reward["ImproveNoGift"][90]["NextPro"]=9001
	tThorInductNpc_Reward["ImproveNoGift"][90][0] = {}
	tThorInductNpc_Reward["ImproveNoGift"][90][0]["RewardItem"] = {}
	tThorInductNpc_Reward["ImproveNoGift"][90][0]["RewardItem"][1] = {}
	tThorInductNpc_Reward["ImproveNoGift"][90][0]["RewardItem"][1]["Id"] = 3310884 --15级就职礼包
	tThorInductNpc_Reward["ImproveNoGift"][90][0]["RewardItem"][1]["Attr"] = "0 1"
	tThorInductNpc_Reward["ImproveNoGift"][90][0]["LogId"] =18000190
	tThorInductNpc_Reward["ImproveNoGift"][91]={}
	tThorInductNpc_Reward["ImproveNoGift"][91]["NextPro"]=9002
	tThorInductNpc_Reward["ImproveNoGift"][91][0] = {}
	tThorInductNpc_Reward["ImproveNoGift"][91][0]["RewardItem"] = {}
	tThorInductNpc_Reward["ImproveNoGift"][91][0]["RewardItem"][1] = {}
	tThorInductNpc_Reward["ImproveNoGift"][91][0]["RewardItem"][1]["Id"] = 3310885 --40级就职礼包
	tThorInductNpc_Reward["ImproveNoGift"][91][0]["RewardItem"][1]["Attr"] = "0 1"
	tThorInductNpc_Reward["ImproveNoGift"][91][0]["LogId"] =18000190
	tThorInductNpc_Reward["ImproveNoGift"][91][1] = {}
	tThorInductNpc_Reward["ImproveNoGift"][91][1]["RewardItem"] = {}
	tThorInductNpc_Reward["ImproveNoGift"][91][1]["RewardItem"][1] = {}
	tThorInductNpc_Reward["ImproveNoGift"][91][1]["RewardItem"][1]["Id"] = 3310885 --40级就职礼包
	tThorInductNpc_Reward["ImproveNoGift"][91][1]["RewardItem"][1]["Attr"] = "0 1"
	tThorInductNpc_Reward["ImproveNoGift"][91][1]["LogId"] =18000190
	tThorInductNpc_Reward["ImproveNoGift"][91][2] = {}
	tThorInductNpc_Reward["ImproveNoGift"][91][2]["RewardItem"] = {}
	tThorInductNpc_Reward["ImproveNoGift"][91][2]["RewardItem"][1] = {}
	tThorInductNpc_Reward["ImproveNoGift"][91][2]["RewardItem"][1]["Id"] = 3310885 --40级就职礼包
	tThorInductNpc_Reward["ImproveNoGift"][91][2]["RewardItem"][1]["Attr"] = "0 1"
	tThorInductNpc_Reward["ImproveNoGift"][91][2]["LogId"] =18000190
	tThorInductNpc_Reward["ImproveNoGift"][92]={}
	tThorInductNpc_Reward["ImproveNoGift"][92]["NextPro"]=9003
	tThorInductNpc_Reward["ImproveNoGift"][92][0] = {}
	tThorInductNpc_Reward["ImproveNoGift"][92][0]["RewardItem"] = {}
	tThorInductNpc_Reward["ImproveNoGift"][92][0]["RewardItem"][1] = {}
	tThorInductNpc_Reward["ImproveNoGift"][92][0]["RewardItem"][1]["Id"] = 3310886 -- 70级就职礼包
	tThorInductNpc_Reward["ImproveNoGift"][92][0]["RewardItem"][1]["Attr"] = "0 1"
	tThorInductNpc_Reward["ImproveNoGift"][92][0]["LogId"] =18000190
	tThorInductNpc_Reward["ImproveNoGift"][92][1] = {}
	tThorInductNpc_Reward["ImproveNoGift"][92][1]["RewardItem"] = {}
	tThorInductNpc_Reward["ImproveNoGift"][92][1]["RewardItem"][1] = {}
	tThorInductNpc_Reward["ImproveNoGift"][92][1]["RewardItem"][1]["Id"] = 3310886 -- 70级就职礼包
	tThorInductNpc_Reward["ImproveNoGift"][92][1]["RewardItem"][1]["Attr"] = "0 1"
	tThorInductNpc_Reward["ImproveNoGift"][92][1]["LogId"] =18000190
	tThorInductNpc_Reward["ImproveNoGift"][92][2] = {}
	tThorInductNpc_Reward["ImproveNoGift"][92][2]["RewardItem"] = {}
	tThorInductNpc_Reward["ImproveNoGift"][92][2]["RewardItem"][1] = {}
	tThorInductNpc_Reward["ImproveNoGift"][92][2]["RewardItem"][1]["Id"] = 3310886 -- 70级就职礼包
	tThorInductNpc_Reward["ImproveNoGift"][92][2]["RewardItem"][1]["Attr"] = "0 1"
	tThorInductNpc_Reward["ImproveNoGift"][92][2]["LogId"] =18000190
	tThorInductNpc_Reward["ImproveNoGift"][93]={}
	tThorInductNpc_Reward["ImproveNoGift"][93]["NextPro"]=9004
	tThorInductNpc_Reward["ImproveNoGift"][93][0] = {}
	tThorInductNpc_Reward["ImproveNoGift"][93][0]["RewardItem"] = {}
	tThorInductNpc_Reward["ImproveNoGift"][93][0]["RewardItem"][1] = {}
	tThorInductNpc_Reward["ImproveNoGift"][93][0]["RewardItem"][1]["Id"] = 3310887 -- 100级就职礼包
	tThorInductNpc_Reward["ImproveNoGift"][93][0]["RewardItem"][1]["Attr"] = "0 1"
	tThorInductNpc_Reward["ImproveNoGift"][93][0]["LogId"] =18000190
	tThorInductNpc_Reward["ImproveNoGift"][93][1] = {}
	tThorInductNpc_Reward["ImproveNoGift"][93][1]["RewardItem"] = {}
	tThorInductNpc_Reward["ImproveNoGift"][93][1]["RewardItem"][1] = {}
	tThorInductNpc_Reward["ImproveNoGift"][93][1]["RewardItem"][1]["Id"] = 3310887 -- 100级就职礼包
	tThorInductNpc_Reward["ImproveNoGift"][93][1]["RewardItem"][1]["Attr"] = "0 1"
	tThorInductNpc_Reward["ImproveNoGift"][93][1]["LogId"] =18000190
	tThorInductNpc_Reward["ImproveNoGift"][93][2] = {}
	tThorInductNpc_Reward["ImproveNoGift"][93][2]["RewardItem"] = {}
	tThorInductNpc_Reward["ImproveNoGift"][93][2]["RewardItem"][1] = {}
	tThorInductNpc_Reward["ImproveNoGift"][93][2]["RewardItem"][1]["Id"] = 3310887 -- 100级就职礼包
	tThorInductNpc_Reward["ImproveNoGift"][93][2]["RewardItem"][1]["Attr"] = "0 1"
	tThorInductNpc_Reward["ImproveNoGift"][93][2]["LogId"] =18000190
	tThorInductNpc_Reward["ImproveNoGift"][94]={}
	tThorInductNpc_Reward["ImproveNoGift"][94]["NextPro"]=9005
	tThorInductNpc_Reward["ImproveNoGift"][94]["NeedItem"] = 1
	tThorInductNpc_Reward["ImproveNoGift"][94][0] = {}
	tThorInductNpc_Reward["ImproveNoGift"][94][0]["RewardItem"] = {}
	tThorInductNpc_Reward["ImproveNoGift"][94][0]["RewardItem"][1] = {}
	tThorInductNpc_Reward["ImproveNoGift"][94][0]["RewardItem"][1]["Id"] = 3310888 --龙珠
	tThorInductNpc_Reward["ImproveNoGift"][94][0]["RewardItem"][1]["Attr"] = "0 1"
	tThorInductNpc_Reward["ImproveNoGift"][94][0]["LogId"] =18000190
	tThorInductNpc_Reward["ImproveNoGift"][94][1] = {}
	tThorInductNpc_Reward["ImproveNoGift"][94][1]["RewardItem"] = {}
	tThorInductNpc_Reward["ImproveNoGift"][94][1]["RewardItem"][1] = {}
	tThorInductNpc_Reward["ImproveNoGift"][94][1]["RewardItem"][1]["Id"] = 3310888 --龙珠
	tThorInductNpc_Reward["ImproveNoGift"][94][1]["RewardItem"][1]["Attr"] = "0 1"
	tThorInductNpc_Reward["ImproveNoGift"][94][1]["LogId"] =18000190
	tThorInductNpc_Reward["ImproveNoGift"][94][2] = {}
	tThorInductNpc_Reward["ImproveNoGift"][94][2]["RewardItem"] = {}
	tThorInductNpc_Reward["ImproveNoGift"][94][2]["RewardItem"][1] = {}
	tThorInductNpc_Reward["ImproveNoGift"][94][2]["RewardItem"][1]["Id"] = 3310888 --龙珠
	tThorInductNpc_Reward["ImproveNoGift"][94][2]["RewardItem"][1]["Attr"] = "0 1"
	tThorInductNpc_Reward["ImproveNoGift"][94][2]["LogId"] =18000190
	--任务：职业就职介绍 奖励
	tThorInductNpc_Reward["TaskIntroduce"]={}
	tThorInductNpc_Reward["TaskIntroduce"]["RewardExp"] = {}
	tThorInductNpc_Reward["TaskIntroduce"]["RewardExp"]["Value"] = 5000 --5000点经验
	tThorInductNpc_Reward["TaskIntroduce"]["RewardExp"]["FullIndex"] = "RewardCultivation" ---对应其它奖励类型
	tThorInductNpc_Reward["TaskIntroduce"]["RewardExp"]["FullValue"] = 10 ---对应其它奖励的值
	tThorInductNpc_Reward["TaskIntroduce"]["RewardExp"]["FullLog"] = "0,0,0,0,18000190,2,6,10"
	tThorInductNpc_Reward["TaskIntroduce"]["RewardItem"] = {}
	tThorInductNpc_Reward["TaskIntroduce"]["RewardItem"][1] = {}
	tThorInductNpc_Reward["TaskIntroduce"]["RewardItem"][1]["Id"] = 721624 --15分钟防御药水
	tThorInductNpc_Reward["TaskIntroduce"]["RewardItem"][1]["Attr"] = "0 2"
	tThorInductNpc_Reward["TaskIntroduce"]["RewardEffect"] = {}
	tThorInductNpc_Reward["TaskIntroduce"]["RewardEffect"]["SzObj"] = "self"
	tThorInductNpc_Reward["TaskIntroduce"]["RewardEffect"]["Effect"] = "angelwing"
	tThorInductNpc_Reward["TaskIntroduce"]["LogId"] =18000190
	--非雷神首次给奖励
	tThorInductNpc_Reward["First"]={}
	tThorInductNpc_Reward["First"]["RewardStrengthValue"] = {}
	tThorInductNpc_Reward["First"]["RewardStrengthValue"]["Value"] = 500
	tThorInductNpc_Reward["First"]["RewardEffect"] = {}
	tThorInductNpc_Reward["First"]["RewardEffect"]["SzObj"] = "self"
	tThorInductNpc_Reward["First"]["RewardEffect"]["Effect"] = "angelwing"
	tThorInductNpc_Reward["First"]["Talk"] = tThorInductNpc_Text["Channel2005"]["FirstAward"]
	tThorInductNpc_Reward["First"]["LogId"] =18000190
	
----------------------------------逻辑部分---------------------------------------------

--检测是否是雷神职业，true--是，false--否
function ThorInductNpc_IsThor(nPro)
	local nUserPro = nPro or Get_UserProfession()
	local nMinPro = tThorInductNpc_Cont["Pro"]["Min"]
	local nMaxPro = tThorInductNpc_Cont["Pro"]["Max"]
	
	return nMinPro <= nUserPro and nUserPro <= nMaxPro
end

--得到下一个职业的名称
function ThorInductNpc_GetNextProName()
	--非铁扇门职业
	if not ThorInductNpc_IsThor() then
		return ""
	end
	
	local nUserId = Get_UserId()
	local nUserPro = Get_UserProfession(nUserId)
	local nTemp = nUserPro +1
	local nMaxPro = tThorInductNpc_Cont["Pro"]["Max"]
	local nNextPro = nTemp >= nMaxPro and nMaxPro or nTemp
	return tThorInductNpc_Text["ProName"][nNextPro]
end

--链接到职业进阶对白
function ThorInductNpc_ImproveProLink()
	--非雷神职业
	if not ThorInductNpc_IsThor() then
		return
	end
	
	local nNpcId = Get_NpcId()
	
	local nUserPro = Get_UserProfession()
	local nUserLevel = Get_UserLevel()
	local sNextProName = ThorInductNpc_GetNextProName()
	local nNeedLevel = tThorInductNpc_Cont["ImprovePro"][nUserPro]["NextProNeedLevel"]
	if nUserLevel < nNeedLevel then
		--等级不足对白
		tNpcGossip[nNpcId]["Text211"] = string.format(tThorInductNpc_Text[nNpcId]["Text211"],nNeedLevel,sNextProName)
		tNpcGossip[nNpcId]["Option211"] = string.format(tThorInductNpc_Text[nNpcId]["Option211"],nNeedLevel)
		LinkNpcGossipFunc_New(nNpcId,"2-1")
	else
		--职业进阶
		LinkNpcGossipFunc_New(nNpcId,tThorInductNpc_Cont["ImprovePro"][nUserPro]["Index"])
	end
	
end

--月光宝盒物品判断
function ThorInductNpc_GetBagMoonItemId(nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	
	for i,nItemId in ipairs (tThorInductNpc_Cont["MoonItemId"]) do
		if Item_ChkItem(nItemId, nil, nil, nUserId) then
			return nItemId
		end
	end
	return -1
end

--职业进阶
function ThorInductNpc_ImprovePro()
	--非雷神职业
	if not ThorInductNpc_IsThor() then
		return
	end
	
	local nNpcId = Get_NpcId()
	local nUserPro = Get_UserProfession()
	
	--已经是最高阶
	if tThorInductNpc_Cont["ImprovePro"][nUserPro] == nil then
		return
	end
	
	local nUserId = Get_UserId()
	local nMete = Get_UserMetempsychosis(nUserId)
	--获取下一个就职id
	local nNextProfession = tThorInductNpc_Reward["Improve"][nUserPro]["NextPro"]
	--获取下一个可以获得的成就id
	local nAchPos = tThorInductNpc_Cont["Ach"][nNextProfession]
	
	--特转以上不获得奖励
	if nMete >= 3 then
		--就职
		User_SetProfession(nNextProfession)
		
		--获得成就
		if not User_ChkAchByAchPosition(nAchPos,nUserId) then
			User_AddAchByAchPosition(nAchPos,nUserId)
		end
		
		User_TalkChannel2005(tThorInductNpc_Text["Channel2005"]["LastImprove"])
		
		return
	end
	
	local sIndex = "Improve"
	
	--激情服给的奖励不一样
	if SpecialServer_ChkNoGiftServer() then
		sIndex = "ImproveNoGift"
	end
	
	local nSpace = 0
	
	if tThorInductNpc_Reward[sIndex][nUserPro][nMete] ~= nil then
		nSpace = RewardTemplate_GetRewardSpace(tThorInductNpc_Reward[sIndex][nUserPro][nMete], nUserId)
	end
	
	--背包空间不足
	if nSpace > 0 and not User_CheckLeftSpace(nSpace, nUserId) then
		User_TalkChannel2005(tThorInductNpc_Text["Channel2005"]["NoSpace"])
		return
	end
	
	--进阶需要的物品判断,进阶最高职业需要消耗月光宝盒
	if tThorInductNpc_Reward["Improve"][nUserPro]["NeedItem"] ~=nil then
		local nNeedItem = ThorInductNpc_GetBagMoonItemId(nUserId)
		if nNeedItem == -1 then
			--没有月光宝盒
			LinkNpcGossipFunc_New(nNpcId,"3-1")
			return
		else
			if not (Item_ChkItem(nNeedItem) and Item_DelItem(nNeedItem)) then
				return
			end
			
			Sys_SaveActionFestivalLog(string.format(tThorInductNpc_Log["DelItem"], nNeedItem, 1),nUserId)
		end
	end
	
	--就职
	User_SetProfession(nNextProfession)
	
	--获得成就
	if not User_ChkAchByAchPosition(nAchPos,nUserId) then
		User_AddAchByAchPosition(nAchPos,nUserId)
	end
	
	if tThorInductNpc_Reward[sIndex][nUserPro][nMete] ~= nil then
		RewardTemplate_UseItemAndMsg(tThorInductNpc_Reward[sIndex][nUserPro][nMete],nUserId)
	end
end

--学习技能
function ThorInductNpc_LearnSkill(nIndex, nFlag)
	--非雷神职业
	if not ThorInductNpc_IsThor() then
		return
	end
	
	local nUserId = Get_UserId()
	local sMagicName = tThorInductNpc_Text["SkillName"][nIndex]
	
	local nMeteTimes = Get_UserMetempsychosis(nUserId) --玩家转世次数
	
	local nNpcId = Get_NpcId()
	
	--是否上一职业是雷神
	if nFlag == 1 then
		if nMeteTimes < 1 then
			Sys_MsgBox(string.format(tThorInductNpc_Text["Channel2005"]["NoLearn"], sMagicName))
			return
		end
		
		local nOldPro = 0
		
		if nMeteTimes == 1 then
			nOldPro = Get_UserFirstPro(nUserId)
		else
			nOldPro = Get_UserOldPro(nUserId)
		end
		
		if not ThorInductNpc_IsThor(nOldPro) then
			Sys_MsgBox(string.format(tThorInductNpc_Text["Channel2005"]["NoLearn"], sMagicName))
			return
		end
		
	--是否三世纯转
	elseif nFlag == 2 then
		if nMeteTimes < 2 then
			tNpcGossip[nNpcId]["Text541"] = string.format(tThorInductNpc_Text[nNpcId]["Text541"],sMagicName)
			LinkNpcGossipFunc_New(nNpcId,"5-4")
			return
		end
		
		local nOldPro = Get_UserOldPro(nUserId) --取玩家前世职业
		local nUserFirstPro = Get_UserFirstPro(nUserId) --取玩家前前世职业
		
		if not ThorInductNpc_IsThor(nOldPro) or not ThorInductNpc_IsThor(nUserFirstPro) then
			tNpcGossip[nNpcId]["Text541"] = string.format(tThorInductNpc_Text[nNpcId]["Text541"],sMagicName)
			LinkNpcGossipFunc_New(nNpcId,"5-4")
			return
		end
	end
	
	local nMagicType = tThorInductNpc_Cont["Skill"][nIndex]["MagicType"]
	local nNeedLev = tThorInductNpc_Cont["Skill"][nIndex]["NeedLev"]
	local nUserLevel = Get_UserLevel()
	
	--已学习
	if Magic_ChkType(nMagicType) then
		LinkNpcGossipFunc_New(nNpcId,"5-2")
		return
	end
	
	--等级不足
	if nUserLevel < nNeedLev then
		tNpcGossip[nNpcId]["Text511"] = string.format(tThorInductNpc_Text[nNpcId]["Text511"],sMagicName,nNeedLev)
		tNpcGossip[nNpcId]["Option511"] = string.format(tThorInductNpc_Text[nNpcId]["Option511"],nNeedLev)
		LinkNpcGossipFunc_New(nNpcId,"5-1")
		return
	end
	
	-- 学习技能
	if not Magic_ChkType(nMagicType) then
		if Magic_Learn(nMagicType) then
			tNpcGossip[nNpcId]["Text531"] = string.format(tThorInductNpc_Text[nNpcId]["Text531"],sMagicName)
			LinkNpcGossipFunc_New(nNpcId,"5-3")
			User_TalkChannel2005(string.format(tThorInductNpc_Text["Channel2005"]["LearnSkill"],sMagicName))
		end
	else
		LinkNpcGossipFunc_New(nNpcId,"5-2")
	end
end

--学习技能（非雷神）
function ThorInductNpc_LearnSkillNoThor(nIndex)
	--雷神职业
	if ThorInductNpc_IsThor() then
		return
	end
	
	local nUserId = Get_UserId()
	local sMagicName = tThorInductNpc_Text["SkillName"][nIndex]
	
	local nMeteTimes = Get_UserMetempsychosis(nUserId) --玩家转世次数
	
	if nMeteTimes < 1 then
		Sys_MsgBox(string.format(tThorInductNpc_Text["Channel2005"]["LearnNoThor"], sMagicName))
		return
	end
	
	if nMeteTimes == 1 then
		local nOldPro = Get_UserFirstPro(nUserId) --取玩家前世职业
		
		if not ThorInductNpc_IsThor(nOldPro) then
			Sys_MsgBox(string.format(tThorInductNpc_Text["Channel2005"]["LearnNoThor"], sMagicName))
			return
		end
	end
	
	if nMeteTimes >= 2 then
		local nOldPro = Get_UserOldPro(nUserId) --取玩家前世职业
		local nUserFirstPro = Get_UserFirstPro(nUserId) --取玩家前前世职业
		
		if not ThorInductNpc_IsThor(nOldPro) and not ThorInductNpc_IsThor(nUserFirstPro) then
			Sys_MsgBox(string.format(tThorInductNpc_Text["Channel2005"]["LearnNoThor"], sMagicName))
			return
		end
	end
	
	local nNpcId = Get_NpcId()
	
	local nMagicType = tThorInductNpc_Cont["Skill"][nIndex]["MagicType"]
	local nNeedLev = tThorInductNpc_Cont["Skill"][nIndex]["NeedLev"]
	local nUserLevel = Get_UserLevel()
	
	--已学习
	if Magic_ChkType(nMagicType) then
		LinkNpcGossipFunc_New(nNpcId,"5-2")
		return
	end
	
	--等级不足
	if nUserLevel < nNeedLev then
		tNpcGossip[nNpcId]["Text511"] = string.format(tThorInductNpc_Text[nNpcId]["Text511"],sMagicName,nNeedLev)
		tNpcGossip[nNpcId]["Option511"] = string.format(tThorInductNpc_Text[nNpcId]["Option511"],nNeedLev)
		LinkNpcGossipFunc_New(nNpcId,"5-1")
		return
	end
	
	-- 学习技能
	if not Magic_ChkType(nMagicType) then
		if Magic_Learn(nMagicType) then
			User_TalkChannel2005(string.format(tThorInductNpc_Text["Channel2005"]["LearnSkill"],sMagicName))
		end
	else
		LinkNpcGossipFunc_New(nNpcId,"5-2")
	end
end

--技能选项对白判断
function ThorInductNpc_ChkSkillText(nIndex)
	local nUserId = Get_UserId()
	local nMagicType = tThorInductNpc_Cont["Skill"][nIndex]["MagicType"]
	local nNeedLev = tThorInductNpc_Cont["Skill"][nIndex]["NeedLev"]
	local sMagicName = tThorInductNpc_Text["SkillName"][nIndex]
	
	--获取技能对白
	local sText = string.format(tThorInductNpc_Text["SkillLearn"], sMagicName, nNeedLev)
	
	--判断是否已经学过
	if Magic_ChkType(nMagicType, nUserId) then
		sText = sText..tThorInductNpc_Text["SkillLearnAlready"]
	end
	
	return sText
end

--是否显示 任务
function ThorInductNpc_CheckInductTask(nTaskId)
	if nTaskId == nil then
		nTaskId = tThorInductNpc_Cont["Task"]["New"]
	end
	
	if not Task_ChkTaskDetail(nTaskId) then
		--没有任务
		return false
	else
		--有任务：完成任务则不显示，否则显示
		return Task_ChkTaskDetailValue(nTaskId,"CompleteFlag","==",0)
	end
end

--就职任务,任务：职业就职介绍
function ThorInductNpc_InductTask()
	--非雷神职业
	if not ThorInductNpc_IsThor() then
		return
	end
	
	local nTaskId = tThorInductNpc_Cont["Task"]["New"]
	
	--没有任务
	if not Task_ChkTaskDetail(nTaskId) then
		return
	end
	
	--背包空间不足
	local nSpace = RewardTemplate_GetRewardSpace(tThorInductNpc_Reward["TaskIntroduce"])
	
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(tThorInductNpc_Text["Channel2005"]["NoSpace"])
		return
	end
	
	--设置完成任务
	Task_SetTaskDetailCompleteFlag(nTaskId,1)
	
	--获得奖励
	RewardTemplate_Reward(tThorInductNpc_Reward["TaskIntroduce"])
	User_TalkChannel2005(tThorInductNpc_Text["Channel2005"]["CompleteInduceTask"])
	local nUserId = Get_UserId()
	--接受下一个任务,直接完成(sql逻辑)
	local nNextTaskId = 3338
	if not Task_ChkTaskDetail(nNextTaskId) then
	-- (97237110,97237112,97237111,1056,3338,'isexit'),
	-- (97237112,97237113,0,1057,3338,'complete set 1'),
	-- (97237113,0,0,1725,3,'3338 1'), --增加阶段性任务的进度
	-- (97237111,97237112,0,1056,3338,'new'),
		Task_AddTaskDetail(nNextTaskId)
		Task_SetTaskDetailCompleteFlag(nNextTaskId,1)
		--增加大侠传 的 阶段性任务（增加阶段性任务的进度（data填任务类型））
		User_AddProcessTaskSchedule(3,nNextTaskId,1,nUserId)
	elseif Task_ChkTaskDetailValue(nNextTaskId,"CompleteFlag","==",0)  then
		--有任务了，未完成
		Task_SetTaskDetailCompleteFlag(nNextTaskId,1)
		User_AddProcessTaskSchedule(3,nNextTaskId,1,nUserId)
	end
	
	local nNpcId = Get_NpcId()
	
	LinkNpcGossipFunc_New(nNpcId,"3-4")
end

--完成主线任务
function ThorInductNpc_CompleteTask()
	--非雷神职业
	if not ThorInductNpc_IsThor() then
		return
	end
	
	local nTaskId = tThorInductNpc_Cont["Task"]["Main"]
	
	--没有任务
	if not Task_ChkTaskDetail(nTaskId) then
		return
	end
	
	Task_SetTaskDetailData1(nTaskId,1)
	Task_SetTaskDetailCompleteFlag(nTaskId,1)
	User_EffectAdd("self","angelwing")
	
	local nNpcId = Get_NpcId()
	
	--对白提示
	LinkNpcGossipFunc_New(nNpcId,"3-6")
	
	User_TalkChannel2005(tThorInductNpc_Text["Channel2005"]["CompleteMainTask"])
end

--是否领取过首次奖励
function ThorInductNpc_IsGetAward(nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nEvent = tThorInductNpc_Stc["First"]["Event"]
	local nType = tThorInductNpc_Stc["First"]["Type"]
	
	if Task_ChkStatistic(nEvent,nType,nUserId) then
		if Task_ChkStcValue(nEvent,nType,">=",1,nUserId) then
			return true
		else
			return false
		end
	else
		return false
	end
end

--领取首次奖励
function ThorInductNpc_GetFirstAward()
	local nUserId = Get_UserId()
	local nEvent = tThorInductNpc_Stc["First"]["Event"]
	local nType = tThorInductNpc_Stc["First"]["Type"]
	
	--已领取过奖励
	if ThorInductNpc_IsGetAward(nUserId) then
		return
	end
	
	--置掩码
	if not Task_SetStatistic(nEvent,nType,1,1,nUserId) then
		return
	end
	
	--弹漫画
	
	--给奖励
	RewardTemplate_UseItemAndMsg(tThorInductNpc_Reward["First"],nUserId)
end

--传送
function ThorInductNpc_Trans()
	local nMapId = tThorInductNpc_Cont["Trans"]["Common"]["MapId"]
	local nBoundX = tThorInductNpc_Cont["Trans"]["Common"]["BoundX"]
	local nBoundY = tThorInductNpc_Cont["Trans"]["Common"]["BoundY"]
	
	if SpecialServer_ChkNoGiftServer() then
		nMapId = tThorInductNpc_Cont["Trans"]["NoGift"]["MapId"]
		nBoundX = tThorInductNpc_Cont["Trans"]["NoGift"]["BoundX"]
		nBoundY = tThorInductNpc_Cont["Trans"]["NoGift"]["BoundY"]
	end
	
	User_UserRandBoundTrans(nMapId,nBoundX,nBoundY,5,5,1,nUserId)
	Sys_MsgBox(tThorInductNpc_Text[23599]["Text641"])
end
----------------------------------NPC部分---------------------------------------------
--雷神就职NPC
--新增头像
tNpcFace[6413] = 86

tNpcGossip[23599]= tNpcGossip[23599] or DefaultNpc:new{}
tNpcGossip[23599]["DialogueText"] = tThorInductNpc_Text[23599]
tNpcGossip[23599]["OptionHidden"] = 1

--非雷神职业，已领取过首次奖励
tNpcGossip[23599]["Text1-1"] = {111,112}
tNpcGossip[23599]["ChkFunc1-1"] = function ()
	if ThorInductNpc_IsThor() then
		return false
	end
	
	return ThorInductNpc_IsGetAward()
end
tNpcGossip[23599]["tOption1-1"] = {111}
tNpcGossip[23599]["OptionFunc111"] = "ThorInductNpc_LearnSkillNoThor</N>11"
tNpcGossip[23599]["OptionChkFunc111"] =function ()
	tNpcGossip[23599]["Option111"] = string.format(tThorInductNpc_Text[23599]["Option111"], ThorInductNpc_ChkSkillText(11))
	return true
end

--雷神职业，完成主线任务或未接主线任务
tNpcGossip[23599]["Text1-2"] = {121,122,123,124,125}
tNpcGossip[23599]["ChkFunc1-2"] = function ()
	if not ThorInductNpc_IsThor() then
		return false
	end
	
	-- return not ThorInductNpc_CheckInductTask(tThorInductNpc_Cont["Task"]["Main"])
	return true
end
tNpcGossip[23599]["tOption1-2"] = {121,123,124}
tNpcGossip[23599]["OptionPoint121"] = "3-3"
tNpcGossip[23599]["OptionChkFunc121"] = function()
	return ThorInductNpc_CheckInductTask()
end
tNpcGossip[23599]["OptionFunc122"] = "ThorInductNpc_ImproveProLink"
tNpcGossip[23599]["OptionChkFunc122"] = function ()
	local nUserPro = Get_UserProfession()
	--就职到最高职阶后 屏蔽第一个就职选项
	return nUserPro < tThorInductNpc_Cont["Pro"]["Max"]
end
tNpcGossip[23599]["OptionPoint123"] = "3-2"

--雷神职业，接了主线任务未完成
tNpcGossip[23599]["Text1-3"] = {131,132}
tNpcGossip[23599]["ChkFunc1-3"] = function ()
	if not ThorInductNpc_IsThor() then
		return false
	end
	
	local sUserName = Get_UserName()
	tNpcGossip[23599]["Text132"] = string.format(tThorInductNpc_Text[23599]["Text132"],sUserName)
	
	-- return ThorInductNpc_CheckInductTask(tThorInductNpc_Cont["Task"]["Main"])
	return false
end
tNpcGossip[23599]["tOption1-3"] = {131,132}
tNpcGossip[23599]["OptionFunc131"] = "ThorInductNpc_CompleteTask"

--非雷神职业，未领取首次奖励
tNpcGossip[23599]["Text1-4"] = {141,142,143,144,145,146,147,148}
tNpcGossip[23599]["ChkFunc1-4"] = function ()
	if ThorInductNpc_IsThor() then
		return false
	end
	
	return not ThorInductNpc_IsGetAward()
end
tNpcGossip[23599]["tOption1-4"] = {141}
tNpcGossip[23599]["OptionFunc141"] = "ThorInductNpc_GetFirstAward"

--进阶等级不足
tNpcGossip[23599]["Text2-1"] = {211}
tNpcGossip[23599]["tOption2-1"] = {211}

--1阶雷神
tNpcGossip[23599]["Text2-2"] = {221,222}
tNpcGossip[23599]["ChkFunc2-2"] = function ()
	local sNextProName = ThorInductNpc_GetNextProName()
	tNpcGossip[23599]["Text222"] = string.format(tThorInductNpc_Text[23599]["Text222"],sNextProName)
	return true
end
tNpcGossip[23599]["tOption2-2"] = {221}
tNpcGossip[23599]["OptionFunc221"] = "ThorInductNpc_ImprovePro"
--2阶雷神
tNpcGossip[23599]["Text2-3"] = {231,232}
tNpcGossip[23599]["ChkFunc2-3"] = function ()
	local sNextProName = ThorInductNpc_GetNextProName()
	tNpcGossip[23599]["Text231"] = string.format(tThorInductNpc_Text[23599]["Text231"],sNextProName)
	return true
end
tNpcGossip[23599]["tOption2-3"] = {231}
tNpcGossip[23599]["OptionFunc231"] = "ThorInductNpc_ImprovePro"
--3阶雷神
tNpcGossip[23599]["Text2-4"] = {241,242}
tNpcGossip[23599]["ChkFunc2-4"] = function ()
	local sNextProName = ThorInductNpc_GetNextProName()
	tNpcGossip[23599]["Text242"] = string.format(tThorInductNpc_Text[23599]["Text242"],sNextProName)
	return true
end
tNpcGossip[23599]["tOption2-4"] = {241}
tNpcGossip[23599]["OptionFunc241"] = "ThorInductNpc_ImprovePro"
--4阶雷神
tNpcGossip[23599]["Text2-5"] = {251,252}
tNpcGossip[23599]["ChkFunc2-5"] = function ()
	local sNextProName = ThorInductNpc_GetNextProName()
	tNpcGossip[23599]["Text252"] = string.format(tThorInductNpc_Text[23599]["Text252"],sNextProName)
	return true
end
tNpcGossip[23599]["tOption2-5"] = {251}
tNpcGossip[23599]["OptionFunc251"] = "ThorInductNpc_ImprovePro"
--5阶雷神
tNpcGossip[23599]["Text2-6"] = {261,262}
tNpcGossip[23599]["ChkFunc2-6"] = function ()
	local sNextProName = ThorInductNpc_GetNextProName()
	tNpcGossip[23599]["Text262"] = string.format(tThorInductNpc_Text[23599]["Text262"],sNextProName)
	tNpcGossip[23599]["Option261"] = string.format(tThorInductNpc_Text[23599]["Option261"],sNextProName)
	return true
end
tNpcGossip[23599]["tOption2-6"] = {261}
tNpcGossip[23599]["OptionFunc261"] = "ThorInductNpc_ImprovePro"
--已经无法进阶
tNpcGossip[23599]["Text2-7"] = {271}
tNpcGossip[23599]["ChkFunc2-7"] = function ()
	local sNextProName = ThorInductNpc_GetNextProName()
	tNpcGossip[23599]["Text271"] = string.format(tThorInductNpc_Text[23599]["Text271"],sNextProName)
	return true
end
tNpcGossip[23599]["tOption2-7"] = {271}
--无月光宝盒
tNpcGossip[23599]["Text3-1"] = {311}
tNpcGossip[23599]["ChkFunc3-1"] = function ()
	local sNextProName = ThorInductNpc_GetNextProName()
	tNpcGossip[23599]["Text311"] = string.format(tThorInductNpc_Text[23599]["Text311"],sNextProName)
	return true
end
tNpcGossip[23599]["tOption3-1"] = {311}

--学习技能
tNpcGossip[23599]["Text3-2"] = {321,322,323}
tNpcGossip[23599]["tOption3-2"] = {321,322,323}
tNpcGossip[23599]["OptionPoint321"] = "4-1"
tNpcGossip[23599]["OptionPoint322"] = "4-2"
tNpcGossip[23599]["OptionPoint323"] = "4-3"

--任务：职业就职介绍
tNpcGossip[23599]["Text3-3"] = {331,332,333}
tNpcGossip[23599]["tOption3-3"] = {331}
tNpcGossip[23599]["OptionFunc331"] = "ThorInductNpc_InductTask"

tNpcGossip[23599]["Text3-4"] = {341,342,343}
tNpcGossip[23599]["tOption3-4"] = {341}
tNpcGossip[23599]["OptionPoint341"] = "3-5"

tNpcGossip[23599]["Text3-5"] = {351,352}
tNpcGossip[23599]["tOption3-5"] = {351}
tNpcGossip[23599]["OptionFunc351"] = "ThorInductNpc_Trans"

tNpcGossip[23599]["Text3-6"] = {361,362}
tNpcGossip[23599]["tOption3-6"] = {361}

--职业技能
tNpcGossip[23599]["Text4-1"] = {411,412,413}
tNpcGossip[23599]["tOption4-1"] = {411,412,413,414,415,416,417,418}
tNpcGossip[23599]["OptionFunc411"] = "ThorInductNpc_LearnSkill</N>1"
tNpcGossip[23599]["OptionChkFunc411"] =function ()
	tNpcGossip[23599]["Option411"] = ThorInductNpc_ChkSkillText(1)
	return true
end
tNpcGossip[23599]["OptionFunc412"] = "ThorInductNpc_LearnSkill</N>2"
tNpcGossip[23599]["OptionChkFunc412"] =function ()
	tNpcGossip[23599]["Option412"] = ThorInductNpc_ChkSkillText(2)
	return true
end
tNpcGossip[23599]["OptionFunc413"] = "ThorInductNpc_LearnSkill</N>3"
tNpcGossip[23599]["OptionChkFunc413"] =function ()
	tNpcGossip[23599]["Option413"] = ThorInductNpc_ChkSkillText(3)
	return true
end
tNpcGossip[23599]["OptionFunc414"] = "ThorInductNpc_LearnSkill</N>4"
tNpcGossip[23599]["OptionChkFunc414"] =function ()
	tNpcGossip[23599]["Option414"] = ThorInductNpc_ChkSkillText(4)
	return true
end
tNpcGossip[23599]["OptionFunc415"] = "ThorInductNpc_LearnSkill</N>5"
tNpcGossip[23599]["OptionChkFunc415"] =function ()
	tNpcGossip[23599]["Option415"] = ThorInductNpc_ChkSkillText(5)
	return true
end
tNpcGossip[23599]["OptionFunc416"] = "ThorInductNpc_LearnSkill</N>6"
tNpcGossip[23599]["OptionChkFunc416"] =function ()
	tNpcGossip[23599]["Option416"] = ThorInductNpc_ChkSkillText(6)
	return true
end
tNpcGossip[23599]["OptionFunc417"] = "ThorInductNpc_LearnSkill</N>7"
tNpcGossip[23599]["OptionChkFunc417"] =function ()
	tNpcGossip[23599]["Option417"] = ThorInductNpc_ChkSkillText(7)
	return true
end
tNpcGossip[23599]["OptionFunc418"] = "ThorInductNpc_LearnSkill</N>8</N>1"
tNpcGossip[23599]["OptionChkFunc418"] =function ()
	tNpcGossip[23599]["Option418"] = ThorInductNpc_ChkSkillText(8)
	return true
end

--纯雷技能
tNpcGossip[23599]["Text4-2"] = {421,422,423}
tNpcGossip[23599]["ChkFunc4-2"] = function ()
	tNpcGossip[23599]["Text421"] = string.format(tThorInductNpc_Text[23599]["Text421"], tThorInductNpc_Text["SkillName"][9])
	return true
end
tNpcGossip[23599]["tOption4-2"] = {421,422}
tNpcGossip[23599]["OptionFunc421"] = "ThorInductNpc_LearnSkill</N>9</N>2"
tNpcGossip[23599]["OptionChkFunc421"] =function ()
	tNpcGossip[23599]["Option421"] = ThorInductNpc_ChkSkillText(9)
	return true
end

--xp技能
tNpcGossip[23599]["Text4-3"] = {431,432,433}
tNpcGossip[23599]["ChkFunc4-3"] = function ()
	tNpcGossip[23599]["Text431"] = string.format(tThorInductNpc_Text[23599]["Text431"], tThorInductNpc_Text["SkillName"][10])
	return true
end
tNpcGossip[23599]["tOption4-3"] = {431}
tNpcGossip[23599]["OptionFunc431"] = "ThorInductNpc_LearnSkill</N>10"
tNpcGossip[23599]["OptionChkFunc431"] =function ()
	tNpcGossip[23599]["Option431"] = ThorInductNpc_ChkSkillText(10)
	return true
end

--学习技能等级不足
tNpcGossip[23599]["Text5-1"] = {511}
tNpcGossip[23599]["tOption5-1"] = {511}

--学习技能已经学习过
tNpcGossip[23599]["Text5-2"] = {521}
tNpcGossip[23599]["tOption5-2"] = {521}

--学习技能成功
tNpcGossip[23599]["Text5-3"] = {531}
tNpcGossip[23599]["tOption5-3"] = {531}
tNpcGossip[23599]["OptionPoint531"] = "3-2"

--学习三世技能失败，不满足条件
tNpcGossip[23599]["Text5-4"] = {541}
tNpcGossip[23599]["tOption5-4"] = {541}

