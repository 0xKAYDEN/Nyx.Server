------------------------------------------------------------------------------------
--Name：            190917[英文征服][活动脚本]10月新服1（10.10-11.10）
--Creator:      蔡颖静
--Created:     2019/09/17
------------------------------------------------------------------------------------
--任务需求：

------------------------------------------------------------------------------------
--lua.ini:41518
--logid:12001637
----------------------------------表配置部分--------------------------------------------

--骑马大赛排名临时表
local tOctNewServer_RideRank={}

local tOctNewServer_Data={}

--线下链接
tOctNewServer_Data["Link"]="https://coevent.99.com/201910newserver/"

--等级判断
tOctNewServer_Data["MaxMete"] = 2
tOctNewServer_Data["MaxLev"]={}
tOctNewServer_Data["MaxLev"][3326387] = 100
tOctNewServer_Data["MaxLev"][3326388] = 140
tOctNewServer_Data["MaxLev"][3326389] = 140
tOctNewServer_Data["MaxLev"]["Usually"]=140

tOctNewServer_Data["Stc"]={}
--积分掩码
tOctNewServer_Data["Stc"]["Score"]={}
tOctNewServer_Data["Stc"]["Score"]["Event"]=205
tOctNewServer_Data["Stc"]["Score"]["Type"]=28

--打开礼包额外获得积分
tOctNewServer_Data["Stc"]["ExtraPackScore"]={}
--显著功勋礼包
tOctNewServer_Data["Stc"]["ExtraPackScore"][3007108]={}
tOctNewServer_Data["Stc"]["ExtraPackScore"][3007108]["Event"]=205
tOctNewServer_Data["Stc"]["ExtraPackScore"][3007108]["Type"]=29
tOctNewServer_Data["Stc"]["ExtraPackScore"][3007108]["Score"]=5
--卓越功勋礼包
tOctNewServer_Data["Stc"]["ExtraPackScore"][3007109]={}
tOctNewServer_Data["Stc"]["ExtraPackScore"][3007109]["Event"]=205
tOctNewServer_Data["Stc"]["ExtraPackScore"][3007109]["Type"]=30
tOctNewServer_Data["Stc"]["ExtraPackScore"][3007109]["Score"]=10
--无上功勋礼包
tOctNewServer_Data["Stc"]["ExtraPackScore"][3007110]={}
tOctNewServer_Data["Stc"]["ExtraPackScore"][3007110]["Event"]=205
tOctNewServer_Data["Stc"]["ExtraPackScore"][3007110]["Type"]=31
tOctNewServer_Data["Stc"]["ExtraPackScore"][3007110]["Score"]=15


tOctNewServer_Data["Stc"]["KillScore"]={}
--帮战积分
tOctNewServer_Data["Stc"]["KillScore"][1]={}
tOctNewServer_Data["Stc"]["KillScore"][1]["Event"]=205
tOctNewServer_Data["Stc"]["KillScore"][1]["Type"]=32
tOctNewServer_Data["Stc"]["KillScore"][1]["Max"]=50
tOctNewServer_Data["Stc"]["KillScore"][1]["Time"]="6 12:00 6 15:00"
tOctNewServer_Data["Stc"]["KillScore"][1]["Score"]=5

--战旗赛积分
tOctNewServer_Data["Stc"]["KillScore"][2]={}
tOctNewServer_Data["Stc"]["KillScore"][2]["Event"]=205
tOctNewServer_Data["Stc"]["KillScore"][2]["Type"]=33
tOctNewServer_Data["Stc"]["KillScore"][2]["Max"]=50
tOctNewServer_Data["Stc"]["KillScore"][2]["Time"]="6 20:59 6 22:00"
tOctNewServer_Data["Stc"]["KillScore"][2]["Score"]=5

--家族占领赛
tOctNewServer_Data["Stc"]["KillScore"][3]={}
tOctNewServer_Data["Stc"]["KillScore"][3]["Event"]=205
tOctNewServer_Data["Stc"]["KillScore"][3]["Type"]=34
tOctNewServer_Data["Stc"]["KillScore"][3]["Max"]=5
tOctNewServer_Data["Stc"]["KillScore"][3]["Score"]=5

--跨服战旗争霸赛
tOctNewServer_Data["Stc"]["KillScore"][4]={}
tOctNewServer_Data["Stc"]["KillScore"][4]["Event"]=205
tOctNewServer_Data["Stc"]["KillScore"][4]["Type"]=35
tOctNewServer_Data["Stc"]["KillScore"][4]["Max"]=5
tOctNewServer_Data["Stc"]["KillScore"][4]["Time"]="5 21:00 5 22:00"
tOctNewServer_Data["Stc"]["KillScore"][4]["Score"]=5

--个人竞技场排位赛场次
tOctNewServer_Data["FieldNum"]={2,4,6,8}

--杀人触发
tOctNewServer_Data["Kill"] = {}

tOctNewServer_Data["Kill"][1038] = {}--帮战
tOctNewServer_Data["Kill"][1038]["MapId"] = 1038
tOctNewServer_Data["Kill"][1038]["Time"] = "6 12:00 6 15:00"
tOctNewServer_Data["Kill"][1038]["Max"] = tOctNewServer_Data["Stc"]["KillScore"][1]["Max"]
tOctNewServer_Data["Kill"][1038]["ScoreEvent"] = tOctNewServer_Data["Stc"]["KillScore"][1]["Event"]
tOctNewServer_Data["Kill"][1038]["ScoreData"] = tOctNewServer_Data["Stc"]["KillScore"][1]["Type"]
tOctNewServer_Data["Kill"][1038]["Score"] = 1
tOctNewServer_Data["Kill"][1038]["KillNum"] = {}
tOctNewServer_Data["Kill"][1038]["KillNum"]["Event"] = 205
tOctNewServer_Data["Kill"][1038]["KillNum"]["Data"] = 36


tOctNewServer_Data["Kill"][2057] = {}--战旗赛
tOctNewServer_Data["Kill"][2057]["MapId"] = 2057
tOctNewServer_Data["Kill"][2057]["Time"] = "6 20:59 6 22:00"
tOctNewServer_Data["Kill"][2057]["Max"] = tOctNewServer_Data["Stc"]["KillScore"][2]["Max"]
tOctNewServer_Data["Kill"][2057]["ScoreEvent"] = tOctNewServer_Data["Stc"]["KillScore"][2]["Event"]
tOctNewServer_Data["Kill"][2057]["ScoreData"] = tOctNewServer_Data["Stc"]["KillScore"][2]["Type"]
tOctNewServer_Data["Kill"][2057]["Score"] = 1
tOctNewServer_Data["Kill"][2057]["KillNum"] = {}
tOctNewServer_Data["Kill"][2057]["KillNum"]["Event"] = 205
tOctNewServer_Data["Kill"][2057]["KillNum"]["Data"] = 37


tOctNewServer_Data["ServerGlobal"]=53760

--组队pk 礼包
tOctNewServer_Data["PK"]={}
--第一名
tOctNewServer_Data["PK"][720794]={}
tOctNewServer_Data["PK"][720794]["Score"]=50
tOctNewServer_Data["PK"][720795]={}
tOctNewServer_Data["PK"][720795]["Score"]=50
tOctNewServer_Data["PK"][720796]={}
tOctNewServer_Data["PK"][720796]["Score"]=50
tOctNewServer_Data["PK"][720797]={}
tOctNewServer_Data["PK"][720797]["Score"]=50
--第二名
tOctNewServer_Data["PK"][720798]={}
tOctNewServer_Data["PK"][720798]["Score"]=30
tOctNewServer_Data["PK"][720799]={}
tOctNewServer_Data["PK"][720799]["Score"]=30
tOctNewServer_Data["PK"][720800]={}
tOctNewServer_Data["PK"][720800]["Score"]=30
tOctNewServer_Data["PK"][720801]={}
tOctNewServer_Data["PK"][720801]["Score"]=30
--第三名
tOctNewServer_Data["PK"][720802]={}
tOctNewServer_Data["PK"][720802]["Score"]=20
tOctNewServer_Data["PK"][720803]={}
tOctNewServer_Data["PK"][720803]["Score"]=20
tOctNewServer_Data["PK"][720804]={}
tOctNewServer_Data["PK"][720804]["Score"]=20
tOctNewServer_Data["PK"][720805]={}
tOctNewServer_Data["PK"][720805]["Score"]=20
--第四-八名
tOctNewServer_Data["PK"][720806]={}
tOctNewServer_Data["PK"][720806]["Score"]=10
tOctNewServer_Data["PK"][720807]={}
tOctNewServer_Data["PK"][720807]["Score"]=10
tOctNewServer_Data["PK"][720808]={}
tOctNewServer_Data["PK"][720808]["Score"]=10
tOctNewServer_Data["PK"][720809]={}
tOctNewServer_Data["PK"][720809]["Score"]=10

--组队大众PK赛
--第一名
tOctNewServer_Data["PK"][721300]={}
tOctNewServer_Data["PK"][721300]["Score"]=50
tOctNewServer_Data["PK"][721301]={}
tOctNewServer_Data["PK"][721301]["Score"]=50
tOctNewServer_Data["PK"][721302]={}
tOctNewServer_Data["PK"][721302]["Score"]=50
tOctNewServer_Data["PK"][721303]={}
tOctNewServer_Data["PK"][721303]["Score"]=50
--第二名
tOctNewServer_Data["PK"][721304]={}
tOctNewServer_Data["PK"][721304]["Score"]=30
tOctNewServer_Data["PK"][721305]={}
tOctNewServer_Data["PK"][721305]["Score"]=30
tOctNewServer_Data["PK"][721306]={}
tOctNewServer_Data["PK"][721306]["Score"]=30
tOctNewServer_Data["PK"][721307]={}
tOctNewServer_Data["PK"][721307]["Score"]=30
--第三名
tOctNewServer_Data["PK"][721308]={}
tOctNewServer_Data["PK"][721308]["Score"]=20
tOctNewServer_Data["PK"][721309]={}
tOctNewServer_Data["PK"][721309]["Score"]=20
tOctNewServer_Data["PK"][721310]={}
tOctNewServer_Data["PK"][721310]["Score"]=20
tOctNewServer_Data["PK"][721311]={}
tOctNewServer_Data["PK"][721311]["Score"]=20
--第四-八名
tOctNewServer_Data["PK"][721312]={}
tOctNewServer_Data["PK"][721312]["Score"]=10
tOctNewServer_Data["PK"][721313]={}
tOctNewServer_Data["PK"][721313]["Score"]=10
tOctNewServer_Data["PK"][721314]={}
tOctNewServer_Data["PK"][721314]["Score"]=10
tOctNewServer_Data["PK"][721315]={}
tOctNewServer_Data["PK"][721315]["Score"]=10

--精英PK
--第一名
tOctNewServer_Data["PK"][720714]={}
tOctNewServer_Data["PK"][720714]["Score"]=50
tOctNewServer_Data["PK"][720715]={}
tOctNewServer_Data["PK"][720715]["Score"]=50
tOctNewServer_Data["PK"][720716]={}
tOctNewServer_Data["PK"][720716]["Score"]=50
tOctNewServer_Data["PK"][720717]={}
tOctNewServer_Data["PK"][720717]["Score"]=50
--第二名
tOctNewServer_Data["PK"][720718]={}
tOctNewServer_Data["PK"][720718]["Score"]=30
tOctNewServer_Data["PK"][720719]={}
tOctNewServer_Data["PK"][720719]["Score"]=30
tOctNewServer_Data["PK"][720720]={}
tOctNewServer_Data["PK"][720720]["Score"]=30
tOctNewServer_Data["PK"][720721]={}
tOctNewServer_Data["PK"][720721]["Score"]=30
--第三名
tOctNewServer_Data["PK"][720722]={}
tOctNewServer_Data["PK"][720722]["Score"]=20
tOctNewServer_Data["PK"][720723]={}
tOctNewServer_Data["PK"][720723]["Score"]=20
tOctNewServer_Data["PK"][720724]={}
tOctNewServer_Data["PK"][720724]["Score"]=20
tOctNewServer_Data["PK"][720725]={}
tOctNewServer_Data["PK"][720725]["Score"]=20
--第四-八名
tOctNewServer_Data["PK"][720726]={}
tOctNewServer_Data["PK"][720726]["Score"]=10
tOctNewServer_Data["PK"][720727]={}
tOctNewServer_Data["PK"][720727]["Score"]=10
tOctNewServer_Data["PK"][720728]={}
tOctNewServer_Data["PK"][720728]["Score"]=10
tOctNewServer_Data["PK"][720729]={}
tOctNewServer_Data["PK"][720729]["Score"]=10

--职业pk赛
tOctNewServer_Data["PK"][3307012]={}
tOctNewServer_Data["PK"][3307012]["Score"]=25
tOctNewServer_Data["PK"][3307013]={}
tOctNewServer_Data["PK"][3307013]["Score"]=25
tOctNewServer_Data["PK"][3307014]={}
tOctNewServer_Data["PK"][3307014]["Score"]=25
tOctNewServer_Data["PK"][3307015]={}
tOctNewServer_Data["PK"][3307015]["Score"]=25


-- ===兑换令牌
-- ===兑换钻石凭证
-- ===索引: tOctNewServer_Data["Exchange"][1]
-- ===删除: 3326390,1
-- ===
-- ===
tOctNewServer_Data["Exchange"] = {}
tOctNewServer_Data["Exchange"][1] = {}
tOctNewServer_Data["Exchange"][1]["LogId"] = 12001637
tOctNewServer_Data["Exchange"][1]["DeleteItem"] = {}
tOctNewServer_Data["Exchange"][1]["DeleteItem"][1] = {}
tOctNewServer_Data["Exchange"][1]["DeleteItem"][1]["Id"] = 3326390 -- 【库】 3326390 【库里没有该物品】[属性:]
tOctNewServer_Data["Exchange"][1]["RewardItem"] = {}
tOctNewServer_Data["Exchange"][1]["RewardItem"][1] = {}
tOctNewServer_Data["Exchange"][1]["RewardItem"][1]["Id"] = 3326389 --  3326389 【库里没有该物品】, 【表格】钻石令牌
tOctNewServer_Data["Exchange"][1]["RewardItem"][1]["Attr"] = "0 1" --  3326389 【库里没有该物品】*1
tOctNewServer_Data["Exchange"][1]["RewardEffect"] = {}
tOctNewServer_Data["Exchange"][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tOctNewServer_Data["Exchange"][1]["RewardEffect"]["Effect"] = "angelwing"


tOctNewServer_Data["Exchange"][2] = {}
-- ===兑换白金凭证
-- ===索引: tOctNewServer_Data["Exchange"][2]
-- ===删除: 3326391,1
-- ===
-- ===
tOctNewServer_Data["Exchange"][2]["LogId"] = 12001637
tOctNewServer_Data["Exchange"][2]["DeleteItem"] = {}
tOctNewServer_Data["Exchange"][2]["DeleteItem"][1] = {}
tOctNewServer_Data["Exchange"][2]["DeleteItem"][1]["Id"] = 3326391 -- 【库】 3326391 【库里没有该物品】[属性:]
tOctNewServer_Data["Exchange"][2]["RewardItem"] = {}
tOctNewServer_Data["Exchange"][2]["RewardItem"][1] = {}
tOctNewServer_Data["Exchange"][2]["RewardItem"][1]["Id"] = 3326388 --  3326388 【库里没有该物品】, 【表格】白金令牌
tOctNewServer_Data["Exchange"][2]["RewardItem"][1]["Attr"] = "0 1" --  3326388 【库里没有该物品】*1
tOctNewServer_Data["Exchange"][2]["RewardEffect"] = {}
tOctNewServer_Data["Exchange"][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tOctNewServer_Data["Exchange"][2]["RewardEffect"]["Effect"] = "angelwing"


tOctNewServer_Data["Exchange"][3] = {}
-- ===兑换黄金凭证
-- ===索引: tOctNewServer_Data["Exchange"][3]
-- ===删除: 3326392,1
-- ===
-- ===
tOctNewServer_Data["Exchange"][3]["LogId"] = 12001637
tOctNewServer_Data["Exchange"][3]["DeleteItem"] = {}
tOctNewServer_Data["Exchange"][3]["DeleteItem"][1] = {}
tOctNewServer_Data["Exchange"][3]["DeleteItem"][1]["Id"] = 3326392 -- 【库】 3326392 【库里没有该物品】[属性:]
tOctNewServer_Data["Exchange"][3]["RewardItem"] = {}
tOctNewServer_Data["Exchange"][3]["RewardItem"][1] = {}
tOctNewServer_Data["Exchange"][3]["RewardItem"][1]["Id"] = 3326387 --  3326387 【库里没有该物品】, 【表格】黄金令牌
tOctNewServer_Data["Exchange"][3]["RewardItem"][1]["Attr"] = "0 1" --  3326387 【库里没有该物品】*1
tOctNewServer_Data["Exchange"][3]["RewardEffect"] = {}
tOctNewServer_Data["Exchange"][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tOctNewServer_Data["Exchange"][3]["RewardEffect"]["Effect"] = "angelwing"




tOctNewServer_Data["Equipment"]={}


tOctNewServer_Data["Equipment"][3326408]={}
--钻石令牌 给装备
--勇士
tOctNewServer_Data["Equipment"][3326408][10]={}
tOctNewServer_Data["Equipment"][3326408][10]["LogId"] = 12001637
tOctNewServer_Data["Equipment"][3326408][10]["DeleteItem"] = {}
tOctNewServer_Data["Equipment"][3326408][10]["DeleteItem"][1] = {}
tOctNewServer_Data["Equipment"][3326408][10]["DeleteItem"][1]["Id"] = 3326408

--装备
tOctNewServer_Data["Equipment"][3326408][10]["RewardItem"] = {}
tOctNewServer_Data["Equipment"][3326408][10]["RewardItem"][1] = {}
tOctNewServer_Data["Equipment"][3326408][10]["RewardItem"][1]["Id"] = 118309
tOctNewServer_Data["Equipment"][3326408][10]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 12 13 13"

tOctNewServer_Data["Equipment"][3326408][10]["RewardItem"][2] = {}
tOctNewServer_Data["Equipment"][3326408][10]["RewardItem"][2]["Id"] = 130309
tOctNewServer_Data["Equipment"][3326408][10]["RewardItem"][2]["Attr"] = "0 1 3 0 0 0 0 7 255 0 12 13 13"

tOctNewServer_Data["Equipment"][3326408][10]["RewardItem"][3] = {}
tOctNewServer_Data["Equipment"][3326408][10]["RewardItem"][3]["Id"] = 410199
tOctNewServer_Data["Equipment"][3326408][10]["RewardItem"][3]["Attr"] = "0 1 3 0 0 0 0 7 255 0 12 13 13"

tOctNewServer_Data["Equipment"][3326408][10]["RewardItem"][4] = {}
tOctNewServer_Data["Equipment"][3326408][10]["RewardItem"][4]["Id"] = 481439
tOctNewServer_Data["Equipment"][3326408][10]["RewardItem"][4]["Attr"] = "0 1 3 0 0 0 0 7 255 0 12 13 13"

tOctNewServer_Data["Equipment"][3326408][10]["RewardItem"][5] = {}
tOctNewServer_Data["Equipment"][3326408][10]["RewardItem"][5]["Id"] = 614439
tOctNewServer_Data["Equipment"][3326408][10]["RewardItem"][5]["Attr"] = "0 2 3 0 0 0 0 7 255 0 12 13 13"

--战士
tOctNewServer_Data["Equipment"][3326408][20]={}
tOctNewServer_Data["Equipment"][3326408][20]["LogId"] = 12001637
tOctNewServer_Data["Equipment"][3326408][20]["DeleteItem"] = {}
tOctNewServer_Data["Equipment"][3326408][20]["DeleteItem"][1] = {}
tOctNewServer_Data["Equipment"][3326408][20]["DeleteItem"][1]["Id"] = 3326408

--装备
tOctNewServer_Data["Equipment"][3326408][20]["RewardItem"] = {}
tOctNewServer_Data["Equipment"][3326408][20]["RewardItem"][1] = {}
tOctNewServer_Data["Equipment"][3326408][20]["RewardItem"][1]["Id"] = 111309
tOctNewServer_Data["Equipment"][3326408][20]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 12 13 13"

tOctNewServer_Data["Equipment"][3326408][20]["RewardItem"][2] = {}
tOctNewServer_Data["Equipment"][3326408][20]["RewardItem"][2]["Id"] = 131309
tOctNewServer_Data["Equipment"][3326408][20]["RewardItem"][2]["Attr"] = "0 1 3 0 0 0 0 7 255 0 12 13 13"

tOctNewServer_Data["Equipment"][3326408][20]["RewardItem"][3] = {}
tOctNewServer_Data["Equipment"][3326408][20]["RewardItem"][3]["Id"] = 624439
tOctNewServer_Data["Equipment"][3326408][20]["RewardItem"][3]["Attr"] = "0 2 3 0 0 0 0 7 255 0 12 13 13"

--弓手
tOctNewServer_Data["Equipment"][3326408][40]={}
tOctNewServer_Data["Equipment"][3326408][40]["LogId"] = 12001637
tOctNewServer_Data["Equipment"][3326408][40]["DeleteItem"] = {}
tOctNewServer_Data["Equipment"][3326408][40]["DeleteItem"][1] = {}
tOctNewServer_Data["Equipment"][3326408][40]["DeleteItem"][1]["Id"] =3326408

--装备
tOctNewServer_Data["Equipment"][3326408][40]["RewardItem"] = {}
tOctNewServer_Data["Equipment"][3326408][40]["RewardItem"][1] = {}
tOctNewServer_Data["Equipment"][3326408][40]["RewardItem"][1]["Id"] = 113309
tOctNewServer_Data["Equipment"][3326408][40]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 12 13 13"

tOctNewServer_Data["Equipment"][3326408][40]["RewardItem"][2] = {}
tOctNewServer_Data["Equipment"][3326408][40]["RewardItem"][2]["Id"] = 133309
tOctNewServer_Data["Equipment"][3326408][40]["RewardItem"][2]["Attr"] = "0 1 3 0 0 0 0 7 255 0 12 13 13"

tOctNewServer_Data["Equipment"][3326408][40]["RewardItem"][3] = {}
tOctNewServer_Data["Equipment"][3326408][40]["RewardItem"][3]["Id"] = 613189
tOctNewServer_Data["Equipment"][3326408][40]["RewardItem"][3]["Attr"] = "0 2 3 0 0 0 0 7 255 0 12 13 13"

--忍者
tOctNewServer_Data["Equipment"][3326408][50]={}
tOctNewServer_Data["Equipment"][3326408][50]["LogId"] = 12001637
tOctNewServer_Data["Equipment"][3326408][50]["DeleteItem"] = {}
tOctNewServer_Data["Equipment"][3326408][50]["DeleteItem"][1] = {}
tOctNewServer_Data["Equipment"][3326408][50]["DeleteItem"][1]["Id"] = 3326408

--装备
tOctNewServer_Data["Equipment"][3326408][50]["RewardItem"] = {}
tOctNewServer_Data["Equipment"][3326408][50]["RewardItem"][1] = {}
tOctNewServer_Data["Equipment"][3326408][50]["RewardItem"][1]["Id"] = 123309
tOctNewServer_Data["Equipment"][3326408][50]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 12 13 13"

tOctNewServer_Data["Equipment"][3326408][50]["RewardItem"][2] = {}
tOctNewServer_Data["Equipment"][3326408][50]["RewardItem"][2]["Id"] = 135309
tOctNewServer_Data["Equipment"][3326408][50]["RewardItem"][2]["Attr"] = "0 1 3 0 0 0 0 7 255 0 12 13 13"

tOctNewServer_Data["Equipment"][3326408][50]["RewardItem"][3] = {}
tOctNewServer_Data["Equipment"][3326408][50]["RewardItem"][3]["Id"] = 601199
tOctNewServer_Data["Equipment"][3326408][50]["RewardItem"][3]["Attr"] = "0 2 3 0 0 0 0 7 255 0 12 13 13"

tOctNewServer_Data["Equipment"][3326408][50]["RewardItem"][4] = {}
tOctNewServer_Data["Equipment"][3326408][50]["RewardItem"][4]["Id"] = 616439
tOctNewServer_Data["Equipment"][3326408][50]["RewardItem"][4]["Attr"] = "0 2 3 0 0 0 0 7 255 0 12 13 13"

--武僧
tOctNewServer_Data["Equipment"][3326408][60]={}
tOctNewServer_Data["Equipment"][3326408][60]["LogId"] = 12001637
tOctNewServer_Data["Equipment"][3326408][60]["DeleteItem"] = {}
tOctNewServer_Data["Equipment"][3326408][60]["DeleteItem"][1] = {}
tOctNewServer_Data["Equipment"][3326408][60]["DeleteItem"][1]["Id"] = 3326408

--装备
tOctNewServer_Data["Equipment"][3326408][60]["RewardItem"] = {}
tOctNewServer_Data["Equipment"][3326408][60]["RewardItem"][1] = {}
tOctNewServer_Data["Equipment"][3326408][60]["RewardItem"][1]["Id"] = 143309
tOctNewServer_Data["Equipment"][3326408][60]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 12 13 13"

tOctNewServer_Data["Equipment"][3326408][60]["RewardItem"][2] = {}
tOctNewServer_Data["Equipment"][3326408][60]["RewardItem"][2]["Id"] = 136309
tOctNewServer_Data["Equipment"][3326408][60]["RewardItem"][2]["Attr"] = "0 1 3 0 0 0 0 7 255 0 12 13 13"

tOctNewServer_Data["Equipment"][3326408][60]["RewardItem"][3] = {}
tOctNewServer_Data["Equipment"][3326408][60]["RewardItem"][3]["Id"] = 610199
tOctNewServer_Data["Equipment"][3326408][60]["RewardItem"][3]["Attr"] = "0 2 3 0 0 0 0 7 255 0 12 13 13"

tOctNewServer_Data["Equipment"][3326408][60]["RewardItem"][4] = {}
tOctNewServer_Data["Equipment"][3326408][60]["RewardItem"][4]["Id"] = 622439
tOctNewServer_Data["Equipment"][3326408][60]["RewardItem"][4]["Attr"] = "0 2 3 0 0 0 0 7 255 0 12 13 13"

--海盗
tOctNewServer_Data["Equipment"][3326408][70]={}
tOctNewServer_Data["Equipment"][3326408][70]["LogId"] = 12001637
tOctNewServer_Data["Equipment"][3326408][70]["DeleteItem"] = {}
tOctNewServer_Data["Equipment"][3326408][70]["DeleteItem"][1] = {}
tOctNewServer_Data["Equipment"][3326408][70]["DeleteItem"][1]["Id"] = 3326408

--装备
tOctNewServer_Data["Equipment"][3326408][70]["RewardItem"] = {}
tOctNewServer_Data["Equipment"][3326408][70]["RewardItem"][1] = {}
tOctNewServer_Data["Equipment"][3326408][70]["RewardItem"][1]["Id"] = 144309
tOctNewServer_Data["Equipment"][3326408][70]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 12 13 13"

tOctNewServer_Data["Equipment"][3326408][70]["RewardItem"][2] = {}
tOctNewServer_Data["Equipment"][3326408][70]["RewardItem"][2]["Id"] = 139309
tOctNewServer_Data["Equipment"][3326408][70]["RewardItem"][2]["Attr"] = "0 1 3 0 0 0 0 7 255 0 12 13 13"

tOctNewServer_Data["Equipment"][3326408][70]["RewardItem"][3] = {}
tOctNewServer_Data["Equipment"][3326408][70]["RewardItem"][3]["Id"] = 611199
tOctNewServer_Data["Equipment"][3326408][70]["RewardItem"][3]["Attr"] = "0 1 3 0 0 0 0 7 255 0 12 13 13"

tOctNewServer_Data["Equipment"][3326408][70]["RewardItem"][4] = {}
tOctNewServer_Data["Equipment"][3326408][70]["RewardItem"][4]["Id"] = 612199
tOctNewServer_Data["Equipment"][3326408][70]["RewardItem"][4]["Attr"] = "0 1 3 0 0 0 0 7 255 0 12 13 13"

tOctNewServer_Data["Equipment"][3326408][70]["RewardItem"][5] = {}
tOctNewServer_Data["Equipment"][3326408][70]["RewardItem"][5]["Id"] = 670439
tOctNewServer_Data["Equipment"][3326408][70]["RewardItem"][5]["Attr"] = "0 1 3 0 0 0 0 7 255 0 12 13 13"

tOctNewServer_Data["Equipment"][3326408][70]["RewardItem"][6] = {}
tOctNewServer_Data["Equipment"][3326408][70]["RewardItem"][6]["Id"] = 671439
tOctNewServer_Data["Equipment"][3326408][70]["RewardItem"][6]["Attr"] = "0 1 3 0 0 0 0 7 255 0 12 13 13"


--截拳
tOctNewServer_Data["Equipment"][3326408][80]={}
tOctNewServer_Data["Equipment"][3326408][80]["LogId"] = 12001637
tOctNewServer_Data["Equipment"][3326408][80]["DeleteItem"] = {}
tOctNewServer_Data["Equipment"][3326408][80]["DeleteItem"][1] = {}
tOctNewServer_Data["Equipment"][3326408][80]["DeleteItem"][1]["Id"] = 3326408

tOctNewServer_Data["Equipment"][3326408][80]["RewardItem"] = {}
tOctNewServer_Data["Equipment"][3326408][80]["RewardItem"][1] = {}
tOctNewServer_Data["Equipment"][3326408][80]["RewardItem"][1]["Id"] = 148309
tOctNewServer_Data["Equipment"][3326408][80]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 12 13 13"

tOctNewServer_Data["Equipment"][3326408][80]["RewardItem"][2] = {}
tOctNewServer_Data["Equipment"][3326408][80]["RewardItem"][2]["Id"] = 138309
tOctNewServer_Data["Equipment"][3326408][80]["RewardItem"][2]["Attr"] = "0 1 3 0 0 0 0 7 255 0 12 13 13"

tOctNewServer_Data["Equipment"][3326408][80]["RewardItem"][3] = {}
tOctNewServer_Data["Equipment"][3326408][80]["RewardItem"][3]["Id"] = 617199
tOctNewServer_Data["Equipment"][3326408][80]["RewardItem"][3]["Attr"] = "0 2 3 0 0 0 0 7 255 0 12 13 13"

--铁扇门
tOctNewServer_Data["Equipment"][3326408][160]={}
tOctNewServer_Data["Equipment"][3326408][160]["LogId"] = 12001637
tOctNewServer_Data["Equipment"][3326408][160]["DeleteItem"] = {}
tOctNewServer_Data["Equipment"][3326408][160]["DeleteItem"][1] = {}
tOctNewServer_Data["Equipment"][3326408][160]["DeleteItem"][1]["Id"] = 3326408

tOctNewServer_Data["Equipment"][3326408][160]["RewardItem"] = {}
tOctNewServer_Data["Equipment"][3326408][160]["RewardItem"][1] = {}
tOctNewServer_Data["Equipment"][3326408][160]["RewardItem"][1]["Id"] = 170309
tOctNewServer_Data["Equipment"][3326408][160]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 12 13 13"

tOctNewServer_Data["Equipment"][3326408][160]["RewardItem"][2] = {}
tOctNewServer_Data["Equipment"][3326408][160]["RewardItem"][2]["Id"] = 101309
tOctNewServer_Data["Equipment"][3326408][160]["RewardItem"][2]["Attr"] = "0 1 3 0 0 0 0 7 255 0 12 13 13"

tOctNewServer_Data["Equipment"][3326408][160]["RewardItem"][3] = {}
tOctNewServer_Data["Equipment"][3326408][160]["RewardItem"][3]["Id"] = 626199
tOctNewServer_Data["Equipment"][3326408][160]["RewardItem"][3]["Attr"] = "0 2 3 0 0 0 0 7 255 0 12 13 13"

--雷神
tOctNewServer_Data["Equipment"][3326408][90]={}
tOctNewServer_Data["Equipment"][3326408][90]["LogId"] = 12001637
tOctNewServer_Data["Equipment"][3326408][90]["DeleteItem"] = {}
tOctNewServer_Data["Equipment"][3326408][90]["DeleteItem"][1] = {}
tOctNewServer_Data["Equipment"][3326408][90]["DeleteItem"][1]["Id"] = 3326408

tOctNewServer_Data["Equipment"][3326408][90]["RewardItem"] = {}
tOctNewServer_Data["Equipment"][3326408][90]["RewardItem"][1] = {}
tOctNewServer_Data["Equipment"][3326408][90]["RewardItem"][1]["Id"] = 146309
tOctNewServer_Data["Equipment"][3326408][90]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 12 13 13"

tOctNewServer_Data["Equipment"][3326408][90]["RewardItem"][2] = {}
tOctNewServer_Data["Equipment"][3326408][90]["RewardItem"][2]["Id"] = 102309
tOctNewServer_Data["Equipment"][3326408][90]["RewardItem"][2]["Attr"] = "0 1 3 0 0 0 0 7 255 0 12 13 13"

tOctNewServer_Data["Equipment"][3326408][90]["RewardItem"][3] = {}
tOctNewServer_Data["Equipment"][3326408][90]["RewardItem"][3]["Id"] = 681199
tOctNewServer_Data["Equipment"][3326408][90]["RewardItem"][3]["Attr"] = "0 1 3 0 0 0 0 7 255 0 12 13 13"

tOctNewServer_Data["Equipment"][3326408][90]["RewardItem"][4] = {}
tOctNewServer_Data["Equipment"][3326408][90]["RewardItem"][4]["Id"] = 680199
tOctNewServer_Data["Equipment"][3326408][90]["RewardItem"][4]["Attr"] = "0 1 3 0 0 0 0 7 255 0 12 13 13"


--道士
tOctNewServer_Data["Equipment"][3326408][100]={}
tOctNewServer_Data["Equipment"][3326408][100]["LogId"] = 12001637
tOctNewServer_Data["Equipment"][3326408][100]["DeleteItem"] = {}
tOctNewServer_Data["Equipment"][3326408][100]["DeleteItem"][1] = {}
tOctNewServer_Data["Equipment"][3326408][100]["DeleteItem"][1]["Id"] = 3326408

tOctNewServer_Data["Equipment"][3326408][100]["RewardItem"] = {}
tOctNewServer_Data["Equipment"][3326408][100]["RewardItem"][1] = {}
tOctNewServer_Data["Equipment"][3326408][100]["RewardItem"][1]["Id"] = 114309
tOctNewServer_Data["Equipment"][3326408][100]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 12 03 03"

tOctNewServer_Data["Equipment"][3326408][100]["RewardItem"][2] = {}
tOctNewServer_Data["Equipment"][3326408][100]["RewardItem"][2]["Id"] = 134309
tOctNewServer_Data["Equipment"][3326408][100]["RewardItem"][2]["Attr"] = "0 1 3 0 0 0 0 7 255 0 12 03 03"

tOctNewServer_Data["Equipment"][3326408][100]["RewardItem"][3] = {}
tOctNewServer_Data["Equipment"][3326408][100]["RewardItem"][3]["Id"] = 421199
tOctNewServer_Data["Equipment"][3326408][100]["RewardItem"][3]["Attr"] = "0 1 3 0 0 0 0 7 255 0 12 03 03"

tOctNewServer_Data["Equipment"][3326408][100]["RewardItem"][4] = {}
tOctNewServer_Data["Equipment"][3326408][100]["RewardItem"][4]["Id"] = 619439
tOctNewServer_Data["Equipment"][3326408][100]["RewardItem"][4]["Attr"] = "0 1 3 0 0 0 0 7 255 0 12"

tOctNewServer_Data["Equipment"][3326408][100]["RewardItem"][5] = {}
tOctNewServer_Data["Equipment"][3326408][100]["RewardItem"][5]["Id"] = 620439
tOctNewServer_Data["Equipment"][3326408][100]["RewardItem"][5]["Attr"] = "0 1 3 0 0 0 0 7 255 0 12 03 03"


tOctNewServer_Data["Equipment"][3326408][100]["RewardItem"][6] = {}
tOctNewServer_Data["Equipment"][3326408][100]["RewardItem"][6]["Id"] = 152279
tOctNewServer_Data["Equipment"][3326408][100]["RewardItem"][6]["Attr"] = "0 1 3 0 0 0 0 7 255 0 12 03 03"

tOctNewServer_Data["Equipment"][3326408][100]["RewardItem"][7] = {}
tOctNewServer_Data["Equipment"][3326408][100]["RewardItem"][7]["Id"] = 121269
tOctNewServer_Data["Equipment"][3326408][100]["RewardItem"][7]["Attr"] = "0 1 3 0 0 0 0 7 255 0 12 03 03"

tOctNewServer_Data["Equipment"][3326408][100]["RewardItem"][8] = {}
tOctNewServer_Data["Equipment"][3326408][100]["RewardItem"][8]["Id"] = 160249
tOctNewServer_Data["Equipment"][3326408][100]["RewardItem"][8]["Attr"] = "0 1 3 0 0 0 0 7 255 0 12 03 03"

tOctNewServer_Data["Equipment"][3326408][100]["RewardItem"][9] = {}
tOctNewServer_Data["Equipment"][3326408][100]["RewardItem"][9]["Id"] = 202009
tOctNewServer_Data["Equipment"][3326408][100]["RewardItem"][9]["Attr"] = "0 1 3 0 0 0 0 1 0 0 12 123 123"

tOctNewServer_Data["Equipment"][3326408][100]["RewardItem"][10] = {}
tOctNewServer_Data["Equipment"][3326408][100]["RewardItem"][10]["Id"] = 201009
tOctNewServer_Data["Equipment"][3326408][100]["RewardItem"][10]["Attr"] = "0 1 3 0 0 0 0 1 0 0 12 103 103"

tOctNewServer_Data["Equipment"][3326408][100]["RewardItem"][11] = {}
tOctNewServer_Data["Equipment"][3326408][100]["RewardItem"][11]["Id"] = 204009
tOctNewServer_Data["Equipment"][3326408][100]["RewardItem"][11]["Attr"] = "0 1 3 0 0 0 0 0 0 0 12 103 123"

tOctNewServer_Data["Equipment"][3326408][100]["RewardItem"][12] = {}
tOctNewServer_Data["Equipment"][3326408][100]["RewardItem"][12]["Id"] = 203009
tOctNewServer_Data["Equipment"][3326408][100]["RewardItem"][12]["Attr"] = "0 1 3 0 0 0 0 1 0 0 12"

tOctNewServer_Data["Equipment"][3326408][100]["RewardItem"][13] = {}
tOctNewServer_Data["Equipment"][3326408][100]["RewardItem"][13]["Id"] = 300000
tOctNewServer_Data["Equipment"][3326408][100]["RewardItem"][13]["Attr"] = "0 0 3 0 0 0 9830655 150 0 0 12 0 0 0 0 0 0 255"

--白金令牌 给装备
tOctNewServer_Data["Equipment"][3326409]={}
--勇士
tOctNewServer_Data["Equipment"][3326409][10]={}
tOctNewServer_Data["Equipment"][3326409][10]["LogId"] = 12001637
tOctNewServer_Data["Equipment"][3326409][10]["DeleteItem"] = {}
tOctNewServer_Data["Equipment"][3326409][10]["DeleteItem"][1] = {}
tOctNewServer_Data["Equipment"][3326409][10]["DeleteItem"][1]["Id"] = 3326409

--装备
tOctNewServer_Data["Equipment"][3326409][10]["RewardItem"] = {}
tOctNewServer_Data["Equipment"][3326409][10]["RewardItem"][1] = {}
tOctNewServer_Data["Equipment"][3326409][10]["RewardItem"][1]["Id"] = 118309
tOctNewServer_Data["Equipment"][3326409][10]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 8 13"

tOctNewServer_Data["Equipment"][3326409][10]["RewardItem"][2] = {}
tOctNewServer_Data["Equipment"][3326409][10]["RewardItem"][2]["Id"] = 130309
tOctNewServer_Data["Equipment"][3326409][10]["RewardItem"][2]["Attr"] = "0 1 3 0 0 0 0 7 255 0 8 13"

tOctNewServer_Data["Equipment"][3326409][10]["RewardItem"][3] = {}
tOctNewServer_Data["Equipment"][3326409][10]["RewardItem"][3]["Id"] = 410199
tOctNewServer_Data["Equipment"][3326409][10]["RewardItem"][3]["Attr"] = "0 1 3 0 0 0 0 7 255 0 8 13"

tOctNewServer_Data["Equipment"][3326409][10]["RewardItem"][4] = {}
tOctNewServer_Data["Equipment"][3326409][10]["RewardItem"][4]["Id"] = 481439
tOctNewServer_Data["Equipment"][3326409][10]["RewardItem"][4]["Attr"] = "0 1 3 0 0 0 0 7 255 0 8 13"

tOctNewServer_Data["Equipment"][3326409][10]["RewardItem"][5] = {}
tOctNewServer_Data["Equipment"][3326409][10]["RewardItem"][5]["Id"] = 614439
tOctNewServer_Data["Equipment"][3326409][10]["RewardItem"][5]["Attr"] = "0 2 3 0 0 0 0 7 255 0 8 13"

--战士
tOctNewServer_Data["Equipment"][3326409][20]={}
tOctNewServer_Data["Equipment"][3326409][20]["LogId"] = 12001637
tOctNewServer_Data["Equipment"][3326409][20]["DeleteItem"] = {}
tOctNewServer_Data["Equipment"][3326409][20]["DeleteItem"][1] = {}
tOctNewServer_Data["Equipment"][3326409][20]["DeleteItem"][1]["Id"] = 3326409

--装备
tOctNewServer_Data["Equipment"][3326409][20]["RewardItem"] = {}
tOctNewServer_Data["Equipment"][3326409][20]["RewardItem"][1] = {}
tOctNewServer_Data["Equipment"][3326409][20]["RewardItem"][1]["Id"] = 111309
tOctNewServer_Data["Equipment"][3326409][20]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 8 13"

tOctNewServer_Data["Equipment"][3326409][20]["RewardItem"][2] = {}
tOctNewServer_Data["Equipment"][3326409][20]["RewardItem"][2]["Id"] = 131309
tOctNewServer_Data["Equipment"][3326409][20]["RewardItem"][2]["Attr"] = "0 1 3 0 0 0 0 7 255 0 8 13"

tOctNewServer_Data["Equipment"][3326409][20]["RewardItem"][3] = {}
tOctNewServer_Data["Equipment"][3326409][20]["RewardItem"][3]["Id"] = 624439
tOctNewServer_Data["Equipment"][3326409][20]["RewardItem"][3]["Attr"] = "0 2 3 0 0 0 0 7 255 0 8 13"

--弓手
tOctNewServer_Data["Equipment"][3326409][40]={}
tOctNewServer_Data["Equipment"][3326409][40]["LogId"] = 12001637
tOctNewServer_Data["Equipment"][3326409][40]["DeleteItem"] = {}
tOctNewServer_Data["Equipment"][3326409][40]["DeleteItem"][1] = {}
tOctNewServer_Data["Equipment"][3326409][40]["DeleteItem"][1]["Id"] =3326409

--装备
tOctNewServer_Data["Equipment"][3326409][40]["RewardItem"] = {}
tOctNewServer_Data["Equipment"][3326409][40]["RewardItem"][1] = {}
tOctNewServer_Data["Equipment"][3326409][40]["RewardItem"][1]["Id"] = 113309
tOctNewServer_Data["Equipment"][3326409][40]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 8 13"

tOctNewServer_Data["Equipment"][3326409][40]["RewardItem"][2] = {}
tOctNewServer_Data["Equipment"][3326409][40]["RewardItem"][2]["Id"] = 133309
tOctNewServer_Data["Equipment"][3326409][40]["RewardItem"][2]["Attr"] = "0 1 3 0 0 0 0 7 255 0 8 13"

tOctNewServer_Data["Equipment"][3326409][40]["RewardItem"][3] = {}
tOctNewServer_Data["Equipment"][3326409][40]["RewardItem"][3]["Id"] = 613189
tOctNewServer_Data["Equipment"][3326409][40]["RewardItem"][3]["Attr"] = "0 2 3 0 0 0 0 7 255 0 8 13"

--忍者
tOctNewServer_Data["Equipment"][3326409][50]={}
tOctNewServer_Data["Equipment"][3326409][50]["LogId"] = 12001637
tOctNewServer_Data["Equipment"][3326409][50]["DeleteItem"] = {}
tOctNewServer_Data["Equipment"][3326409][50]["DeleteItem"][1] = {}
tOctNewServer_Data["Equipment"][3326409][50]["DeleteItem"][1]["Id"] = 3326409

--装备
tOctNewServer_Data["Equipment"][3326409][50]["RewardItem"] = {}
tOctNewServer_Data["Equipment"][3326409][50]["RewardItem"][1] = {}
tOctNewServer_Data["Equipment"][3326409][50]["RewardItem"][1]["Id"] = 123309
tOctNewServer_Data["Equipment"][3326409][50]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 8 13"

tOctNewServer_Data["Equipment"][3326409][50]["RewardItem"][2] = {}
tOctNewServer_Data["Equipment"][3326409][50]["RewardItem"][2]["Id"] = 135309
tOctNewServer_Data["Equipment"][3326409][50]["RewardItem"][2]["Attr"] = "0 1 3 0 0 0 0 7 255 0 8 13"

tOctNewServer_Data["Equipment"][3326409][50]["RewardItem"][3] = {}
tOctNewServer_Data["Equipment"][3326409][50]["RewardItem"][3]["Id"] = 601199
tOctNewServer_Data["Equipment"][3326409][50]["RewardItem"][3]["Attr"] = "0 2 3 0 0 0 0 7 255 0 8 13"

tOctNewServer_Data["Equipment"][3326409][50]["RewardItem"][4] = {}
tOctNewServer_Data["Equipment"][3326409][50]["RewardItem"][4]["Id"] = 616439
tOctNewServer_Data["Equipment"][3326409][50]["RewardItem"][4]["Attr"] = "0 2 3 0 0 0 0 7 255 0 8 13"

--武僧
tOctNewServer_Data["Equipment"][3326409][60]={}
tOctNewServer_Data["Equipment"][3326409][60]["LogId"] = 12001637
tOctNewServer_Data["Equipment"][3326409][60]["DeleteItem"] = {}
tOctNewServer_Data["Equipment"][3326409][60]["DeleteItem"][1] = {}
tOctNewServer_Data["Equipment"][3326409][60]["DeleteItem"][1]["Id"] = 3326409

--装备
tOctNewServer_Data["Equipment"][3326409][60]["RewardItem"] = {}
tOctNewServer_Data["Equipment"][3326409][60]["RewardItem"][1] = {}
tOctNewServer_Data["Equipment"][3326409][60]["RewardItem"][1]["Id"] = 143309
tOctNewServer_Data["Equipment"][3326409][60]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 8 13"

tOctNewServer_Data["Equipment"][3326409][60]["RewardItem"][2] = {}
tOctNewServer_Data["Equipment"][3326409][60]["RewardItem"][2]["Id"] = 136309
tOctNewServer_Data["Equipment"][3326409][60]["RewardItem"][2]["Attr"] = "0 1 3 0 0 0 0 7 255 0 8 13"

tOctNewServer_Data["Equipment"][3326409][60]["RewardItem"][3] = {}
tOctNewServer_Data["Equipment"][3326409][60]["RewardItem"][3]["Id"] = 610199
tOctNewServer_Data["Equipment"][3326409][60]["RewardItem"][3]["Attr"] = "0 2 3 0 0 0 0 7 255 0 8 13"

tOctNewServer_Data["Equipment"][3326409][60]["RewardItem"][4] = {}
tOctNewServer_Data["Equipment"][3326409][60]["RewardItem"][4]["Id"] = 622439
tOctNewServer_Data["Equipment"][3326409][60]["RewardItem"][4]["Attr"] = "0 2 3 0 0 0 0 7 255 0 8 13"

--海盗
tOctNewServer_Data["Equipment"][3326409][70]={}
tOctNewServer_Data["Equipment"][3326409][70]["LogId"] = 12001637
tOctNewServer_Data["Equipment"][3326409][70]["DeleteItem"] = {}
tOctNewServer_Data["Equipment"][3326409][70]["DeleteItem"][1] = {}
tOctNewServer_Data["Equipment"][3326409][70]["DeleteItem"][1]["Id"] = 3326409

--装备
tOctNewServer_Data["Equipment"][3326409][70]["RewardItem"] = {}
tOctNewServer_Data["Equipment"][3326409][70]["RewardItem"][1] = {}
tOctNewServer_Data["Equipment"][3326409][70]["RewardItem"][1]["Id"] = 144309
tOctNewServer_Data["Equipment"][3326409][70]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 8 13"

tOctNewServer_Data["Equipment"][3326409][70]["RewardItem"][2] = {}
tOctNewServer_Data["Equipment"][3326409][70]["RewardItem"][2]["Id"] = 139309
tOctNewServer_Data["Equipment"][3326409][70]["RewardItem"][2]["Attr"] = "0 1 3 0 0 0 0 7 255 0 8 13"

tOctNewServer_Data["Equipment"][3326409][70]["RewardItem"][3] = {}
tOctNewServer_Data["Equipment"][3326409][70]["RewardItem"][3]["Id"] = 611199
tOctNewServer_Data["Equipment"][3326409][70]["RewardItem"][3]["Attr"] = "0 1 3 0 0 0 0 7 255 0 8 13"

tOctNewServer_Data["Equipment"][3326409][70]["RewardItem"][4] = {}
tOctNewServer_Data["Equipment"][3326409][70]["RewardItem"][4]["Id"] = 612199
tOctNewServer_Data["Equipment"][3326409][70]["RewardItem"][4]["Attr"] = "0 1 3 0 0 0 0 7 255 0 8 13"

tOctNewServer_Data["Equipment"][3326409][70]["RewardItem"][5] = {}
tOctNewServer_Data["Equipment"][3326409][70]["RewardItem"][5]["Id"] = 670439
tOctNewServer_Data["Equipment"][3326409][70]["RewardItem"][5]["Attr"] = "0 1 3 0 0 0 0 7 255 0 8 13"

tOctNewServer_Data["Equipment"][3326409][70]["RewardItem"][6] = {}
tOctNewServer_Data["Equipment"][3326409][70]["RewardItem"][6]["Id"] = 671439
tOctNewServer_Data["Equipment"][3326409][70]["RewardItem"][6]["Attr"] = "0 1 3 0 0 0 0 7 255 0 12 13 13"

--截拳
tOctNewServer_Data["Equipment"][3326409][80]={}
tOctNewServer_Data["Equipment"][3326409][80]["LogId"] = 12001637
tOctNewServer_Data["Equipment"][3326409][80]["DeleteItem"] = {}
tOctNewServer_Data["Equipment"][3326409][80]["DeleteItem"][1] = {}
tOctNewServer_Data["Equipment"][3326409][80]["DeleteItem"][1]["Id"] = 3326409

tOctNewServer_Data["Equipment"][3326409][80]["RewardItem"] = {}
tOctNewServer_Data["Equipment"][3326409][80]["RewardItem"][1] = {}
tOctNewServer_Data["Equipment"][3326409][80]["RewardItem"][1]["Id"] = 148309
tOctNewServer_Data["Equipment"][3326409][80]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 8 13"

tOctNewServer_Data["Equipment"][3326409][80]["RewardItem"][2] = {}
tOctNewServer_Data["Equipment"][3326409][80]["RewardItem"][2]["Id"] = 138309
tOctNewServer_Data["Equipment"][3326409][80]["RewardItem"][2]["Attr"] = "0 1 3 0 0 0 0 7 255 0 8 13"

tOctNewServer_Data["Equipment"][3326409][80]["RewardItem"][3] = {}
tOctNewServer_Data["Equipment"][3326409][80]["RewardItem"][3]["Id"] = 617199
tOctNewServer_Data["Equipment"][3326409][80]["RewardItem"][3]["Attr"] = "0 2 3 0 0 0 0 7 255 0 8 13"

--铁扇门
tOctNewServer_Data["Equipment"][3326409][160]={}
tOctNewServer_Data["Equipment"][3326409][160]["LogId"] = 12001637
tOctNewServer_Data["Equipment"][3326409][160]["DeleteItem"] = {}
tOctNewServer_Data["Equipment"][3326409][160]["DeleteItem"][1] = {}
tOctNewServer_Data["Equipment"][3326409][160]["DeleteItem"][1]["Id"] = 3326409

tOctNewServer_Data["Equipment"][3326409][160]["RewardItem"] = {}
tOctNewServer_Data["Equipment"][3326409][160]["RewardItem"][1] = {}
tOctNewServer_Data["Equipment"][3326409][160]["RewardItem"][1]["Id"] = 170309
tOctNewServer_Data["Equipment"][3326409][160]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 8 13"

tOctNewServer_Data["Equipment"][3326409][160]["RewardItem"][2] = {}
tOctNewServer_Data["Equipment"][3326409][160]["RewardItem"][2]["Id"] = 101309
tOctNewServer_Data["Equipment"][3326409][160]["RewardItem"][2]["Attr"] = "0 1 3 0 0 0 0 7 255 0 8 13"

tOctNewServer_Data["Equipment"][3326409][160]["RewardItem"][3] = {}
tOctNewServer_Data["Equipment"][3326409][160]["RewardItem"][3]["Id"] = 626199
tOctNewServer_Data["Equipment"][3326409][160]["RewardItem"][3]["Attr"] = "0 2 3 0 0 0 0 7 255 0 8 13"

--雷神
tOctNewServer_Data["Equipment"][3326409][90]={}
tOctNewServer_Data["Equipment"][3326409][90]["LogId"] = 12001637
tOctNewServer_Data["Equipment"][3326409][90]["DeleteItem"] = {}
tOctNewServer_Data["Equipment"][3326409][90]["DeleteItem"][1] = {}
tOctNewServer_Data["Equipment"][3326409][90]["DeleteItem"][1]["Id"] = 3326409

tOctNewServer_Data["Equipment"][3326409][90]["RewardItem"] = {}
tOctNewServer_Data["Equipment"][3326409][90]["RewardItem"][1] = {}
tOctNewServer_Data["Equipment"][3326409][90]["RewardItem"][1]["Id"] = 146309
tOctNewServer_Data["Equipment"][3326409][90]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 8 13"

tOctNewServer_Data["Equipment"][3326409][90]["RewardItem"][2] = {}
tOctNewServer_Data["Equipment"][3326409][90]["RewardItem"][2]["Id"] = 102309
tOctNewServer_Data["Equipment"][3326409][90]["RewardItem"][2]["Attr"] = "0 1 3 0 0 0 0 7 255 0 8 13"

tOctNewServer_Data["Equipment"][3326409][90]["RewardItem"][3] = {}
tOctNewServer_Data["Equipment"][3326409][90]["RewardItem"][3]["Id"] = 681199
tOctNewServer_Data["Equipment"][3326409][90]["RewardItem"][3]["Attr"] = "0 1 3 0 0 0 0 7 255 0 8 13"

tOctNewServer_Data["Equipment"][3326409][90]["RewardItem"][4] = {}
tOctNewServer_Data["Equipment"][3326409][90]["RewardItem"][4]["Id"] = 680199
tOctNewServer_Data["Equipment"][3326409][90]["RewardItem"][4]["Attr"] = "0 1 3 0 0 0 0 7 255 0 8 13"


--道士
tOctNewServer_Data["Equipment"][3326409][100]={}
tOctNewServer_Data["Equipment"][3326409][100]["LogId"] = 12001637
tOctNewServer_Data["Equipment"][3326409][100]["DeleteItem"] = {}
tOctNewServer_Data["Equipment"][3326409][100]["DeleteItem"][1] = {}
tOctNewServer_Data["Equipment"][3326409][100]["DeleteItem"][1]["Id"] = 3326409

tOctNewServer_Data["Equipment"][3326409][100]["RewardItem"] = {}
tOctNewServer_Data["Equipment"][3326409][100]["RewardItem"][1] = {}
tOctNewServer_Data["Equipment"][3326409][100]["RewardItem"][1]["Id"] = 114309
tOctNewServer_Data["Equipment"][3326409][100]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 8 03"

tOctNewServer_Data["Equipment"][3326409][100]["RewardItem"][2] = {}
tOctNewServer_Data["Equipment"][3326409][100]["RewardItem"][2]["Id"] = 134309
tOctNewServer_Data["Equipment"][3326409][100]["RewardItem"][2]["Attr"] = "0 1 3 0 0 0 0 7 255 0 8 03"

tOctNewServer_Data["Equipment"][3326409][100]["RewardItem"][3] = {}
tOctNewServer_Data["Equipment"][3326409][100]["RewardItem"][3]["Id"] = 421199
tOctNewServer_Data["Equipment"][3326409][100]["RewardItem"][3]["Attr"] = "0 1 3 0 0 0 0 7 255 0 8 03"

tOctNewServer_Data["Equipment"][3326409][100]["RewardItem"][4] = {}
tOctNewServer_Data["Equipment"][3326409][100]["RewardItem"][4]["Id"] = 619439
tOctNewServer_Data["Equipment"][3326409][100]["RewardItem"][4]["Attr"] = "0 1 3 0 0 0 0 7 255 0 8"

tOctNewServer_Data["Equipment"][3326409][100]["RewardItem"][5] = {}
tOctNewServer_Data["Equipment"][3326409][100]["RewardItem"][5]["Id"] = 620439
tOctNewServer_Data["Equipment"][3326409][100]["RewardItem"][5]["Attr"] = "0 1 3 0 0 0 0 7 255 0 8 03"

tOctNewServer_Data["Equipment"][3326409][100]["RewardItem"][6] = {}
tOctNewServer_Data["Equipment"][3326409][100]["RewardItem"][6]["Id"] = 152279
tOctNewServer_Data["Equipment"][3326409][100]["RewardItem"][6]["Attr"] = "0 1 3 0 0 0 0 7 255 0 8 03"

tOctNewServer_Data["Equipment"][3326409][100]["RewardItem"][7] = {}
tOctNewServer_Data["Equipment"][3326409][100]["RewardItem"][7]["Id"] = 121269
tOctNewServer_Data["Equipment"][3326409][100]["RewardItem"][7]["Attr"] = "0 1 3 0 0 0 0 7 255 0 8 03"

tOctNewServer_Data["Equipment"][3326409][100]["RewardItem"][8] = {}
tOctNewServer_Data["Equipment"][3326409][100]["RewardItem"][8]["Id"] = 160249
tOctNewServer_Data["Equipment"][3326409][100]["RewardItem"][8]["Attr"] = "0 1 3 0 0 0 0 7 255 0 8 03"

tOctNewServer_Data["Equipment"][3326409][100]["RewardItem"][9] = {}
tOctNewServer_Data["Equipment"][3326409][100]["RewardItem"][9]["Id"] = 202009
tOctNewServer_Data["Equipment"][3326409][100]["RewardItem"][9]["Attr"] = "0 1 3 0 0 0 0 1 0 0 8 123"

tOctNewServer_Data["Equipment"][3326409][100]["RewardItem"][10] = {}
tOctNewServer_Data["Equipment"][3326409][100]["RewardItem"][10]["Id"] = 201009
tOctNewServer_Data["Equipment"][3326409][100]["RewardItem"][10]["Attr"] = "0 1 3 0 0 0 0 1 0 0 8 103"

tOctNewServer_Data["Equipment"][3326409][100]["RewardItem"][11] = {}
tOctNewServer_Data["Equipment"][3326409][100]["RewardItem"][11]["Id"] = 204009
tOctNewServer_Data["Equipment"][3326409][100]["RewardItem"][11]["Attr"] = "0 1 3 0 0 0 0 0 0 0 8 103"

tOctNewServer_Data["Equipment"][3326409][100]["RewardItem"][12] = {}
tOctNewServer_Data["Equipment"][3326409][100]["RewardItem"][12]["Id"] = 203009
tOctNewServer_Data["Equipment"][3326409][100]["RewardItem"][12]["Attr"] = "0 1 3 0 0 0 0 1 0 0 8"

tOctNewServer_Data["Equipment"][3326409][100]["RewardItem"][13] = {}
tOctNewServer_Data["Equipment"][3326409][100]["RewardItem"][13]["Id"] = 300000
tOctNewServer_Data["Equipment"][3326409][100]["RewardItem"][13]["Attr"] = "0 0 3 0 0 0 9830655 150 0 0 8 0 0 0 0 0 0 255"

--黄金令牌 给装备
tOctNewServer_Data["Equipment"][3326410]={}
--勇士
tOctNewServer_Data["Equipment"][3326410][10]={}
tOctNewServer_Data["Equipment"][3326410][10]["LogId"] = 12001637
tOctNewServer_Data["Equipment"][3326410][10]["DeleteItem"] = {}
tOctNewServer_Data["Equipment"][3326410][10]["DeleteItem"][1] = {}
tOctNewServer_Data["Equipment"][3326410][10]["DeleteItem"][1]["Id"] = 3326410

--装备                             
tOctNewServer_Data["Equipment"][3326410][10]["RewardItem"] = {}
tOctNewServer_Data["Equipment"][3326410][10]["RewardItem"][1] = {}
tOctNewServer_Data["Equipment"][3326410][10]["RewardItem"][1]["Id"] = 118309
tOctNewServer_Data["Equipment"][3326410][10]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 6 13"

tOctNewServer_Data["Equipment"][3326410][10]["RewardItem"][2] = {}
tOctNewServer_Data["Equipment"][3326410][10]["RewardItem"][2]["Id"] = 130309
tOctNewServer_Data["Equipment"][3326410][10]["RewardItem"][2]["Attr"] = "0 1 3 0 0 0 0 7 255 0 6 13"

tOctNewServer_Data["Equipment"][3326410][10]["RewardItem"][3] = {}
tOctNewServer_Data["Equipment"][3326410][10]["RewardItem"][3]["Id"] = 410199
tOctNewServer_Data["Equipment"][3326410][10]["RewardItem"][3]["Attr"] = "0 1 3 0 0 0 0 7 255 0 6 13"

tOctNewServer_Data["Equipment"][3326410][10]["RewardItem"][4] = {}
tOctNewServer_Data["Equipment"][3326410][10]["RewardItem"][4]["Id"] = 481439
tOctNewServer_Data["Equipment"][3326410][10]["RewardItem"][4]["Attr"] = "0 1 3 0 0 0 0 7 255 0 6 13"

tOctNewServer_Data["Equipment"][3326410][10]["RewardItem"][5] = {}
tOctNewServer_Data["Equipment"][3326410][10]["RewardItem"][5]["Id"] = 614439
tOctNewServer_Data["Equipment"][3326410][10]["RewardItem"][5]["Attr"] = "0 2 3 0 0 0 0 7 255 0 6 13"

--战士
tOctNewServer_Data["Equipment"][3326410][20]={}
tOctNewServer_Data["Equipment"][3326410][20]["LogId"] = 12001637
tOctNewServer_Data["Equipment"][3326410][20]["DeleteItem"] = {}
tOctNewServer_Data["Equipment"][3326410][20]["DeleteItem"][1] = {}
tOctNewServer_Data["Equipment"][3326410][20]["DeleteItem"][1]["Id"] = 3326410

--装备                 
tOctNewServer_Data["Equipment"][3326410][20]["RewardItem"] = {}
tOctNewServer_Data["Equipment"][3326410][20]["RewardItem"][1] = {}
tOctNewServer_Data["Equipment"][3326410][20]["RewardItem"][1]["Id"] = 111309
tOctNewServer_Data["Equipment"][3326410][20]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 6 13"

tOctNewServer_Data["Equipment"][3326410][20]["RewardItem"][2] = {}
tOctNewServer_Data["Equipment"][3326410][20]["RewardItem"][2]["Id"] = 131309
tOctNewServer_Data["Equipment"][3326410][20]["RewardItem"][2]["Attr"] = "0 1 3 0 0 0 0 7 255 0 6 13"

tOctNewServer_Data["Equipment"][3326410][20]["RewardItem"][3] = {}
tOctNewServer_Data["Equipment"][3326410][20]["RewardItem"][3]["Id"] = 624439
tOctNewServer_Data["Equipment"][3326410][20]["RewardItem"][3]["Attr"] = "0 2 3 0 0 0 0 7 255 0 6 13"

--弓手
tOctNewServer_Data["Equipment"][3326410][40]={}
tOctNewServer_Data["Equipment"][3326410][40]["LogId"] = 12001637
tOctNewServer_Data["Equipment"][3326410][40]["DeleteItem"] = {}
tOctNewServer_Data["Equipment"][3326410][40]["DeleteItem"][1] = {}
tOctNewServer_Data["Equipment"][3326410][40]["DeleteItem"][1]["Id"] =3326410

--装备           
tOctNewServer_Data["Equipment"][3326410][40]["RewardItem"] = {}
tOctNewServer_Data["Equipment"][3326410][40]["RewardItem"][1] = {}
tOctNewServer_Data["Equipment"][3326410][40]["RewardItem"][1]["Id"] = 113309
tOctNewServer_Data["Equipment"][3326410][40]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 6 13"

tOctNewServer_Data["Equipment"][3326410][40]["RewardItem"][2] = {}
tOctNewServer_Data["Equipment"][3326410][40]["RewardItem"][2]["Id"] = 133309
tOctNewServer_Data["Equipment"][3326410][40]["RewardItem"][2]["Attr"] = "0 1 3 0 0 0 0 7 255 0 6 13"

tOctNewServer_Data["Equipment"][3326410][40]["RewardItem"][3] = {}
tOctNewServer_Data["Equipment"][3326410][40]["RewardItem"][3]["Id"] = 613189
tOctNewServer_Data["Equipment"][3326410][40]["RewardItem"][3]["Attr"] = "0 2 3 0 0 0 0 7 255 0 6 13"

--忍者
tOctNewServer_Data["Equipment"][3326410][50]={}
tOctNewServer_Data["Equipment"][3326410][50]["LogId"] = 12001637
tOctNewServer_Data["Equipment"][3326410][50]["DeleteItem"] = {}
tOctNewServer_Data["Equipment"][3326410][50]["DeleteItem"][1] = {}
tOctNewServer_Data["Equipment"][3326410][50]["DeleteItem"][1]["Id"] = 3326410

--装备      
tOctNewServer_Data["Equipment"][3326410][50]["RewardItem"] = {}
tOctNewServer_Data["Equipment"][3326410][50]["RewardItem"][1] = {}
tOctNewServer_Data["Equipment"][3326410][50]["RewardItem"][1]["Id"] = 123309
tOctNewServer_Data["Equipment"][3326410][50]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 6 13"

tOctNewServer_Data["Equipment"][3326410][50]["RewardItem"][2] = {}
tOctNewServer_Data["Equipment"][3326410][50]["RewardItem"][2]["Id"] = 135309
tOctNewServer_Data["Equipment"][3326410][50]["RewardItem"][2]["Attr"] = "0 1 3 0 0 0 0 7 255 0 6 13"

tOctNewServer_Data["Equipment"][3326410][50]["RewardItem"][3] = {}
tOctNewServer_Data["Equipment"][3326410][50]["RewardItem"][3]["Id"] = 601199
tOctNewServer_Data["Equipment"][3326410][50]["RewardItem"][3]["Attr"] = "0 2 3 0 0 0 0 7 255 0 6 13"

tOctNewServer_Data["Equipment"][3326410][50]["RewardItem"][4] = {}
tOctNewServer_Data["Equipment"][3326410][50]["RewardItem"][4]["Id"] = 616439
tOctNewServer_Data["Equipment"][3326410][50]["RewardItem"][4]["Attr"] = "0 2 3 0 0 0 0 7 255 0 6 13"

--武僧
tOctNewServer_Data["Equipment"][3326410][60]={}
tOctNewServer_Data["Equipment"][3326410][60]["LogId"] = 12001637
tOctNewServer_Data["Equipment"][3326410][60]["DeleteItem"] = {}
tOctNewServer_Data["Equipment"][3326410][60]["DeleteItem"][1] = {}
tOctNewServer_Data["Equipment"][3326410][60]["DeleteItem"][1]["Id"] = 3326410

--装备    
tOctNewServer_Data["Equipment"][3326410][60]["RewardItem"] = {}
tOctNewServer_Data["Equipment"][3326410][60]["RewardItem"][1] = {}
tOctNewServer_Data["Equipment"][3326410][60]["RewardItem"][1]["Id"] = 143309
tOctNewServer_Data["Equipment"][3326410][60]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 6 13"

tOctNewServer_Data["Equipment"][3326410][60]["RewardItem"][2] = {}
tOctNewServer_Data["Equipment"][3326410][60]["RewardItem"][2]["Id"] = 136309
tOctNewServer_Data["Equipment"][3326410][60]["RewardItem"][2]["Attr"] = "0 1 3 0 0 0 0 7 255 0 6 13"
 
tOctNewServer_Data["Equipment"][3326410][60]["RewardItem"][3] = {}
tOctNewServer_Data["Equipment"][3326410][60]["RewardItem"][3]["Id"] = 610199
tOctNewServer_Data["Equipment"][3326410][60]["RewardItem"][3]["Attr"] = "0 2 3 0 0 0 0 7 255 0 6 13"

tOctNewServer_Data["Equipment"][3326410][60]["RewardItem"][4] = {}
tOctNewServer_Data["Equipment"][3326410][60]["RewardItem"][4]["Id"] = 622439
tOctNewServer_Data["Equipment"][3326410][60]["RewardItem"][4]["Attr"] = "0 2 3 0 0 0 0 7 255 0 6 13"

--海盗
tOctNewServer_Data["Equipment"][3326410][70]={}
tOctNewServer_Data["Equipment"][3326410][70]["LogId"] = 12001637
tOctNewServer_Data["Equipment"][3326410][70]["DeleteItem"] = {}
tOctNewServer_Data["Equipment"][3326410][70]["DeleteItem"][1] = {}
tOctNewServer_Data["Equipment"][3326410][70]["DeleteItem"][1]["Id"] = 3326410
--装备      
tOctNewServer_Data["Equipment"][3326410][70]["RewardItem"] = {}
tOctNewServer_Data["Equipment"][3326410][70]["RewardItem"][1] = {}
tOctNewServer_Data["Equipment"][3326410][70]["RewardItem"][1]["Id"] = 144309
tOctNewServer_Data["Equipment"][3326410][70]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 6 13"

tOctNewServer_Data["Equipment"][3326410][70]["RewardItem"][2] = {}
tOctNewServer_Data["Equipment"][3326410][70]["RewardItem"][2]["Id"] = 139309
tOctNewServer_Data["Equipment"][3326410][70]["RewardItem"][2]["Attr"] = "0 1 3 0 0 0 0 7 255 0 6 13"

tOctNewServer_Data["Equipment"][3326410][70]["RewardItem"][3] = {}
tOctNewServer_Data["Equipment"][3326410][70]["RewardItem"][3]["Id"] = 611199
tOctNewServer_Data["Equipment"][3326410][70]["RewardItem"][3]["Attr"] = "0 1 3 0 0 0 0 7 255 0 6 13"

tOctNewServer_Data["Equipment"][3326410][70]["RewardItem"][4] = {}
tOctNewServer_Data["Equipment"][3326410][70]["RewardItem"][4]["Id"] = 612199
tOctNewServer_Data["Equipment"][3326410][70]["RewardItem"][4]["Attr"] = "0 1 3 0 0 0 0 7 255 0 6 13"

tOctNewServer_Data["Equipment"][3326410][70]["RewardItem"][5] = {}
tOctNewServer_Data["Equipment"][3326410][70]["RewardItem"][5]["Id"] = 670439
tOctNewServer_Data["Equipment"][3326410][70]["RewardItem"][5]["Attr"] = "0 1 3 0 0 0 0 7 255 0 6 13"

tOctNewServer_Data["Equipment"][3326410][70]["RewardItem"][6] = {}
tOctNewServer_Data["Equipment"][3326410][70]["RewardItem"][6]["Id"] = 671439
tOctNewServer_Data["Equipment"][3326410][70]["RewardItem"][6]["Attr"] = "0 1 3 0 0 0 0 7 255 0 6 13"


--截拳
tOctNewServer_Data["Equipment"][3326410][80]={}
tOctNewServer_Data["Equipment"][3326410][80]["LogId"] = 12001637
tOctNewServer_Data["Equipment"][3326410][80]["DeleteItem"] = {}
tOctNewServer_Data["Equipment"][3326410][80]["DeleteItem"][1] = {}
tOctNewServer_Data["Equipment"][3326410][80]["DeleteItem"][1]["Id"] = 3326410

tOctNewServer_Data["Equipment"][3326410][80]["RewardItem"] = {}
tOctNewServer_Data["Equipment"][3326410][80]["RewardItem"][1] = {}
tOctNewServer_Data["Equipment"][3326410][80]["RewardItem"][1]["Id"] = 148309
tOctNewServer_Data["Equipment"][3326410][80]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 6 13"

tOctNewServer_Data["Equipment"][3326410][80]["RewardItem"][2] = {}
tOctNewServer_Data["Equipment"][3326410][80]["RewardItem"][2]["Id"] = 138309
tOctNewServer_Data["Equipment"][3326410][80]["RewardItem"][2]["Attr"] = "0 1 3 0 0 0 0 7 255 0 6 13"
             
tOctNewServer_Data["Equipment"][3326410][80]["RewardItem"][3] = {}
tOctNewServer_Data["Equipment"][3326410][80]["RewardItem"][3]["Id"] = 617199
tOctNewServer_Data["Equipment"][3326410][80]["RewardItem"][3]["Attr"] = "0 2 3 0 0 0 0 7 255 0 6 13"

--铁扇门
tOctNewServer_Data["Equipment"][3326410][160]={}
tOctNewServer_Data["Equipment"][3326410][160]["LogId"] = 12001637
tOctNewServer_Data["Equipment"][3326410][160]["DeleteItem"] = {}
tOctNewServer_Data["Equipment"][3326410][160]["DeleteItem"][1] = {}
tOctNewServer_Data["Equipment"][3326410][160]["DeleteItem"][1]["Id"] = 3326410

tOctNewServer_Data["Equipment"][3326410][160]["RewardItem"] = {}
tOctNewServer_Data["Equipment"][3326410][160]["RewardItem"][1] = {}
tOctNewServer_Data["Equipment"][3326410][160]["RewardItem"][1]["Id"] = 170309
tOctNewServer_Data["Equipment"][3326410][160]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 6 13"

tOctNewServer_Data["Equipment"][3326410][160]["RewardItem"][2] = {}
tOctNewServer_Data["Equipment"][3326410][160]["RewardItem"][2]["Id"] = 101309
tOctNewServer_Data["Equipment"][3326410][160]["RewardItem"][2]["Attr"] = "0 1 3 0 0 0 0 7 255 0 6 13"

tOctNewServer_Data["Equipment"][3326410][160]["RewardItem"][3] = {}
tOctNewServer_Data["Equipment"][3326410][160]["RewardItem"][3]["Id"] = 626199
tOctNewServer_Data["Equipment"][3326410][160]["RewardItem"][3]["Attr"] = "0 2 3 0 0 0 0 7 255 0 6 13"

--雷神
tOctNewServer_Data["Equipment"][3326410][90]={}
tOctNewServer_Data["Equipment"][3326410][90]["LogId"] = 12001637
tOctNewServer_Data["Equipment"][3326410][90]["DeleteItem"] = {}
tOctNewServer_Data["Equipment"][3326410][90]["DeleteItem"][1] = {}
tOctNewServer_Data["Equipment"][3326410][90]["DeleteItem"][1]["Id"] = 3326410

tOctNewServer_Data["Equipment"][3326410][90]["RewardItem"] = {}
tOctNewServer_Data["Equipment"][3326410][90]["RewardItem"][1] = {}
tOctNewServer_Data["Equipment"][3326410][90]["RewardItem"][1]["Id"] = 146309
tOctNewServer_Data["Equipment"][3326410][90]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 6 13"

tOctNewServer_Data["Equipment"][3326410][90]["RewardItem"][2] = {}
tOctNewServer_Data["Equipment"][3326410][90]["RewardItem"][2]["Id"] = 102309
tOctNewServer_Data["Equipment"][3326410][90]["RewardItem"][2]["Attr"] = "0 1 3 0 0 0 0 7 255 0 6 13"

tOctNewServer_Data["Equipment"][3326410][90]["RewardItem"][3] = {}
tOctNewServer_Data["Equipment"][3326410][90]["RewardItem"][3]["Id"] = 681199
tOctNewServer_Data["Equipment"][3326410][90]["RewardItem"][3]["Attr"] = "0 1 3 0 0 0 0 7 255 0 6 13"

tOctNewServer_Data["Equipment"][3326410][90]["RewardItem"][4] = {}
tOctNewServer_Data["Equipment"][3326410][90]["RewardItem"][4]["Id"] = 680199
tOctNewServer_Data["Equipment"][3326410][90]["RewardItem"][4]["Attr"] = "0 1 3 0 0 0 0 7 255 0 6 13"


--道士
tOctNewServer_Data["Equipment"][3326410][100]={}
tOctNewServer_Data["Equipment"][3326410][100]["LogId"] = 12001637
tOctNewServer_Data["Equipment"][3326410][100]["DeleteItem"] = {}
tOctNewServer_Data["Equipment"][3326410][100]["DeleteItem"][1] = {}
tOctNewServer_Data["Equipment"][3326410][100]["DeleteItem"][1]["Id"] = 3326410

tOctNewServer_Data["Equipment"][3326410][100]["RewardItem"] = {}
tOctNewServer_Data["Equipment"][3326410][100]["RewardItem"][1] = {}
tOctNewServer_Data["Equipment"][3326410][100]["RewardItem"][1]["Id"] = 114309
tOctNewServer_Data["Equipment"][3326410][100]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 6 03"

tOctNewServer_Data["Equipment"][3326410][100]["RewardItem"][2] = {}
tOctNewServer_Data["Equipment"][3326410][100]["RewardItem"][2]["Id"] = 134309
tOctNewServer_Data["Equipment"][3326410][100]["RewardItem"][2]["Attr"] = "0 1 3 0 0 0 0 7 255 0 6 03"
 
tOctNewServer_Data["Equipment"][3326410][100]["RewardItem"][3] = {}
tOctNewServer_Data["Equipment"][3326410][100]["RewardItem"][3]["Id"] = 421199
tOctNewServer_Data["Equipment"][3326410][100]["RewardItem"][3]["Attr"] = "0 1 3 0 0 0 0 7 255 0 6 03"

tOctNewServer_Data["Equipment"][3326410][100]["RewardItem"][4] = {}
tOctNewServer_Data["Equipment"][3326410][100]["RewardItem"][4]["Id"] = 619439
tOctNewServer_Data["Equipment"][3326410][100]["RewardItem"][4]["Attr"] = "0 1 3 0 0 0 0 7 255 0 6"

tOctNewServer_Data["Equipment"][3326410][100]["RewardItem"][5] = {}
tOctNewServer_Data["Equipment"][3326410][100]["RewardItem"][5]["Id"] = 620439
tOctNewServer_Data["Equipment"][3326410][100]["RewardItem"][5]["Attr"] = "0 1 3 0 0 0 0 7 255 0 6 03"

tOctNewServer_Data["Equipment"][3326410][100]["RewardItem"][6] = {}
tOctNewServer_Data["Equipment"][3326410][100]["RewardItem"][6]["Id"] = 152279
tOctNewServer_Data["Equipment"][3326410][100]["RewardItem"][6]["Attr"] = "0 1 3 0 0 0 0 7 255 0 6 03"

tOctNewServer_Data["Equipment"][3326410][100]["RewardItem"][7] = {}
tOctNewServer_Data["Equipment"][3326410][100]["RewardItem"][7]["Id"] = 121269
tOctNewServer_Data["Equipment"][3326410][100]["RewardItem"][7]["Attr"] = "0 1 3 0 0 0 0 7 255 0 6 03"

tOctNewServer_Data["Equipment"][3326410][100]["RewardItem"][8] = {}
tOctNewServer_Data["Equipment"][3326410][100]["RewardItem"][8]["Id"] = 160249
tOctNewServer_Data["Equipment"][3326410][100]["RewardItem"][8]["Attr"] = "0 1 3 0 0 0 0 7 255 0 6 03"

tOctNewServer_Data["Equipment"][3326410][100]["RewardItem"][9] = {}
tOctNewServer_Data["Equipment"][3326410][100]["RewardItem"][9]["Id"] = 202009
tOctNewServer_Data["Equipment"][3326410][100]["RewardItem"][9]["Attr"] = "0 1 3 0 0 0 0 1 0 0 6 123"

tOctNewServer_Data["Equipment"][3326410][100]["RewardItem"][10] = {}
tOctNewServer_Data["Equipment"][3326410][100]["RewardItem"][10]["Id"] = 201009
tOctNewServer_Data["Equipment"][3326410][100]["RewardItem"][10]["Attr"] = "0 1 3 0 0 0 0 1 0 0 6 103"

tOctNewServer_Data["Equipment"][3326410][100]["RewardItem"][11] = {}
tOctNewServer_Data["Equipment"][3326410][100]["RewardItem"][11]["Id"] = 204009
tOctNewServer_Data["Equipment"][3326410][100]["RewardItem"][11]["Attr"] = "0 1 3 0 0 0 0 0 0 0 6 103"

tOctNewServer_Data["Equipment"][3326410][100]["RewardItem"][12] = {}
tOctNewServer_Data["Equipment"][3326410][100]["RewardItem"][12]["Id"] = 203009
tOctNewServer_Data["Equipment"][3326410][100]["RewardItem"][12]["Attr"] = "0 1 3 0 0 0 0 1 0 0 6"

tOctNewServer_Data["Equipment"][3326410][100]["RewardItem"][13] = {}
tOctNewServer_Data["Equipment"][3326410][100]["RewardItem"][13]["Id"] = 300000
tOctNewServer_Data["Equipment"][3326410][100]["RewardItem"][13]["Attr"] = "0 0 3 0 0 0 9830655 150 0 0 6 0 0 0 0 0 0 255"


tOctNewServer_Data["Equipment"]["Normal"]={}
tOctNewServer_Data["Equipment"]["Normal"][3326408]={}
tOctNewServer_Data["Equipment"]["Normal"][3326408]["LogId"] = 12001637

tOctNewServer_Data["Equipment"]["Normal"][3326408]["RewardItem"] = {}
tOctNewServer_Data["Equipment"]["Normal"][3326408]["RewardItem"][1] = {}
tOctNewServer_Data["Equipment"]["Normal"][3326408]["RewardItem"][1]["Id"] = 150269
tOctNewServer_Data["Equipment"]["Normal"][3326408]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 12 13 13"

tOctNewServer_Data["Equipment"]["Normal"][3326408]["RewardItem"][2] = {}
tOctNewServer_Data["Equipment"]["Normal"][3326408]["RewardItem"][2]["Id"] = 120269
tOctNewServer_Data["Equipment"]["Normal"][3326408]["RewardItem"][2]["Attr"] = "0 1 3 0 0 0 0 7 255 0 12 13 13"

tOctNewServer_Data["Equipment"]["Normal"][3326408]["RewardItem"][3] = {}
tOctNewServer_Data["Equipment"]["Normal"][3326408]["RewardItem"][3]["Id"] = 160249
tOctNewServer_Data["Equipment"]["Normal"][3326408]["RewardItem"][3]["Attr"] = "0 1 3 0 0 0 0 7 255 0 12 13 13"

tOctNewServer_Data["Equipment"]["Normal"][3326408]["RewardItem"][4] = {}
tOctNewServer_Data["Equipment"]["Normal"][3326408]["RewardItem"][4]["Id"] = 202009
tOctNewServer_Data["Equipment"]["Normal"][3326408]["RewardItem"][4]["Attr"] = "0 1 3 0 0 0 0 1 0 0 12 123 123"

tOctNewServer_Data["Equipment"]["Normal"][3326408]["RewardItem"][5] = {}
tOctNewServer_Data["Equipment"]["Normal"][3326408]["RewardItem"][5]["Id"] = 201009
tOctNewServer_Data["Equipment"]["Normal"][3326408]["RewardItem"][5]["Attr"] = "0 1 3 0 0 0 0 1 0 0 12 103 103"

tOctNewServer_Data["Equipment"]["Normal"][3326408]["RewardItem"][6] = {}
tOctNewServer_Data["Equipment"]["Normal"][3326408]["RewardItem"][6]["Id"] = 204009
tOctNewServer_Data["Equipment"]["Normal"][3326408]["RewardItem"][6]["Attr"] = "0 1 3 0 0 0 0 0 0 0 12 103 123"

tOctNewServer_Data["Equipment"]["Normal"][3326408]["RewardItem"][7] = {}
tOctNewServer_Data["Equipment"]["Normal"][3326408]["RewardItem"][7]["Id"] = 203009
tOctNewServer_Data["Equipment"]["Normal"][3326408]["RewardItem"][7]["Attr"] = "0 1 3 0 0 0 0 1 0 0 12"

tOctNewServer_Data["Equipment"]["Normal"][3326408]["RewardItem"][8] = {}
tOctNewServer_Data["Equipment"]["Normal"][3326408]["RewardItem"][8]["Id"] = 300000
tOctNewServer_Data["Equipment"]["Normal"][3326408]["RewardItem"][8]["Attr"] = "0 0 3 0 0 0 9830655 150 0 0 12 0 0 0 0 0 0 255"


tOctNewServer_Data["Equipment"]["Normal"][3326409]={}
tOctNewServer_Data["Equipment"]["Normal"][3326409]["LogId"] = 12001637

tOctNewServer_Data["Equipment"]["Normal"][3326409]["RewardItem"] = {}
tOctNewServer_Data["Equipment"]["Normal"][3326409]["RewardItem"][1] = {}
tOctNewServer_Data["Equipment"]["Normal"][3326409]["RewardItem"][1]["Id"] = 150269
tOctNewServer_Data["Equipment"]["Normal"][3326409]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 8 13"

tOctNewServer_Data["Equipment"]["Normal"][3326409]["RewardItem"][2] = {}
tOctNewServer_Data["Equipment"]["Normal"][3326409]["RewardItem"][2]["Id"] = 120269
tOctNewServer_Data["Equipment"]["Normal"][3326409]["RewardItem"][2]["Attr"] = "0 1 3 0 0 0 0 7 255 0 8 13"

tOctNewServer_Data["Equipment"]["Normal"][3326409]["RewardItem"][3] = {}
tOctNewServer_Data["Equipment"]["Normal"][3326409]["RewardItem"][3]["Id"] = 160249
tOctNewServer_Data["Equipment"]["Normal"][3326409]["RewardItem"][3]["Attr"] = "0 1 3 0 0 0 0 7 255 0 8 13"

tOctNewServer_Data["Equipment"]["Normal"][3326409]["RewardItem"][4] = {}
tOctNewServer_Data["Equipment"]["Normal"][3326409]["RewardItem"][4]["Id"] = 202009
tOctNewServer_Data["Equipment"]["Normal"][3326409]["RewardItem"][4]["Attr"] = "0 1 3 0 0 0 0 1 0 0 8 123"

tOctNewServer_Data["Equipment"]["Normal"][3326409]["RewardItem"][5] = {}
tOctNewServer_Data["Equipment"]["Normal"][3326409]["RewardItem"][5]["Id"] = 201009
tOctNewServer_Data["Equipment"]["Normal"][3326409]["RewardItem"][5]["Attr"] = "0 1 3 0 0 0 0 1 0 0 8 103"

tOctNewServer_Data["Equipment"]["Normal"][3326409]["RewardItem"][6] = {}
tOctNewServer_Data["Equipment"]["Normal"][3326409]["RewardItem"][6]["Id"] = 204009
tOctNewServer_Data["Equipment"]["Normal"][3326409]["RewardItem"][6]["Attr"] = "0 1 3 0 0 0 0 0 0 0 8 103"

tOctNewServer_Data["Equipment"]["Normal"][3326409]["RewardItem"][7] = {}
tOctNewServer_Data["Equipment"]["Normal"][3326409]["RewardItem"][7]["Id"] = 203009
tOctNewServer_Data["Equipment"]["Normal"][3326409]["RewardItem"][7]["Attr"] = "0 1 3 0 0 0 0 1 0 0 8"

tOctNewServer_Data["Equipment"]["Normal"][3326409]["RewardItem"][8] = {}
tOctNewServer_Data["Equipment"]["Normal"][3326409]["RewardItem"][8]["Id"] = 300000
tOctNewServer_Data["Equipment"]["Normal"][3326409]["RewardItem"][8]["Attr"] = "0 0 3 0 0 0 9830655 150 0 0 8 0 0 0 0 0 0 255"

tOctNewServer_Data["Equipment"]["Normal"][3326410]={}
tOctNewServer_Data["Equipment"]["Normal"][3326410]["LogId"] = 12001637

tOctNewServer_Data["Equipment"]["Normal"][3326410]["RewardItem"] = {}
tOctNewServer_Data["Equipment"]["Normal"][3326410]["RewardItem"][1] = {}
tOctNewServer_Data["Equipment"]["Normal"][3326410]["RewardItem"][1]["Id"] = 150269
tOctNewServer_Data["Equipment"]["Normal"][3326410]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 6 13"

tOctNewServer_Data["Equipment"]["Normal"][3326410]["RewardItem"][2] = {}
tOctNewServer_Data["Equipment"]["Normal"][3326410]["RewardItem"][2]["Id"] = 120269
tOctNewServer_Data["Equipment"]["Normal"][3326410]["RewardItem"][2]["Attr"] = "0 1 3 0 0 0 0 7 255 0 6 13"

tOctNewServer_Data["Equipment"]["Normal"][3326410]["RewardItem"][3] = {}
tOctNewServer_Data["Equipment"]["Normal"][3326410]["RewardItem"][3]["Id"] = 160249
tOctNewServer_Data["Equipment"]["Normal"][3326410]["RewardItem"][3]["Attr"] = "0 1 3 0 0 0 0 7 255 0 6 13"

tOctNewServer_Data["Equipment"]["Normal"][3326410]["RewardItem"][4] = {}
tOctNewServer_Data["Equipment"]["Normal"][3326410]["RewardItem"][4]["Id"] = 202009
tOctNewServer_Data["Equipment"]["Normal"][3326410]["RewardItem"][4]["Attr"] = "0 1 3 0 0 0 0 1 0 0 6 123"

tOctNewServer_Data["Equipment"]["Normal"][3326410]["RewardItem"][5] = {}
tOctNewServer_Data["Equipment"]["Normal"][3326410]["RewardItem"][5]["Id"] = 201009
tOctNewServer_Data["Equipment"]["Normal"][3326410]["RewardItem"][5]["Attr"] = "0 1 3 0 0 0 0 1 0 0 6 103"

tOctNewServer_Data["Equipment"]["Normal"][3326410]["RewardItem"][6] = {}
tOctNewServer_Data["Equipment"]["Normal"][3326410]["RewardItem"][6]["Id"] = 204009
tOctNewServer_Data["Equipment"]["Normal"][3326410]["RewardItem"][6]["Attr"] = "0 1 3 0 0 0 0 0 0 0 6 103"

tOctNewServer_Data["Equipment"]["Normal"][3326410]["RewardItem"][7] = {}
tOctNewServer_Data["Equipment"]["Normal"][3326410]["RewardItem"][7]["Id"] = 203009
tOctNewServer_Data["Equipment"]["Normal"][3326410]["RewardItem"][7]["Attr"] = "0 1 3 0 0 0 0 1 0 0 6"

tOctNewServer_Data["Equipment"]["Normal"][3326410]["RewardItem"][8] = {}
tOctNewServer_Data["Equipment"]["Normal"][3326410]["RewardItem"][8]["Id"] = 300000
tOctNewServer_Data["Equipment"]["Normal"][3326410]["RewardItem"][8]["Attr"] = "0 0 3 0 0 0 9830655 150 0 0 6 0 0 0 0 0 0 255"


---神纹礼包

--3326411 （+2）职业神纹宝箱
tOctNewServer_Data[3326411]={}

--勇士
tOctNewServer_Data[3326411][10]={}
tOctNewServer_Data[3326411][10]["LogId"] = 12001637
tOctNewServer_Data[3326411][10]["DeleteItem"] = {}
tOctNewServer_Data[3326411][10]["DeleteItem"][1] = {}
tOctNewServer_Data[3326411][10]["DeleteItem"][1]["Id"] = 3326411

tOctNewServer_Data[3326411][10]["RewardItem"] = {}
tOctNewServer_Data[3326411][10]["RewardItem"][1] = {}
tOctNewServer_Data[3326411][10]["RewardItem"][1]["Id"] = 4010001
tOctNewServer_Data[3326411][10]["RewardItem"][1]["Attr"] = "0 1 3"
tOctNewServer_Data[3326411][10]["RewardItem"][2] = {}
tOctNewServer_Data[3326411][10]["RewardItem"][2]["Id"] = 4020103
tOctNewServer_Data[3326411][10]["RewardItem"][2]["Attr"] = "0 1 3"
tOctNewServer_Data[3326411][10]["RewardItem"][3] = {}
tOctNewServer_Data[3326411][10]["RewardItem"][3]["Id"] = 4023003
tOctNewServer_Data[3326411][10]["RewardItem"][3]["Attr"] = "0 1 3"

--战士
tOctNewServer_Data[3326411][20]={}
tOctNewServer_Data[3326411][20]["LogId"] = 12001637
tOctNewServer_Data[3326411][20]["DeleteItem"] = {}
tOctNewServer_Data[3326411][20]["DeleteItem"][1] = {}
tOctNewServer_Data[3326411][20]["DeleteItem"][1]["Id"] = 3326411

tOctNewServer_Data[3326411][20]["RewardItem"] = {}
tOctNewServer_Data[3326411][20]["RewardItem"][1] = {}
tOctNewServer_Data[3326411][20]["RewardItem"][1]["Id"] = 4010101
tOctNewServer_Data[3326411][20]["RewardItem"][1]["Attr"] = "0 1 3"
tOctNewServer_Data[3326411][20]["RewardItem"][2] = {}
tOctNewServer_Data[3326411][20]["RewardItem"][2]["Id"] = 4020203
tOctNewServer_Data[3326411][20]["RewardItem"][2]["Attr"] = "0 1 3"
tOctNewServer_Data[3326411][20]["RewardItem"][3] = {}
tOctNewServer_Data[3326411][20]["RewardItem"][3]["Id"] = 4021403
tOctNewServer_Data[3326411][20]["RewardItem"][3]["Attr"] = "0 1 3"

--弓手
tOctNewServer_Data[3326411][40]={}
tOctNewServer_Data[3326411][40]["LogId"] = 12001637
tOctNewServer_Data[3326411][40]["DeleteItem"] = {}
tOctNewServer_Data[3326411][40]["DeleteItem"][1] = {}
tOctNewServer_Data[3326411][40]["DeleteItem"][1]["Id"] = 3326411

tOctNewServer_Data[3326411][40]["RewardItem"] = {}
tOctNewServer_Data[3326411][40]["RewardItem"][1] = {}
tOctNewServer_Data[3326411][40]["RewardItem"][1]["Id"] = 4010201
tOctNewServer_Data[3326411][40]["RewardItem"][1]["Attr"] = "0 1 3"
tOctNewServer_Data[3326411][40]["RewardItem"][2] = {}
tOctNewServer_Data[3326411][40]["RewardItem"][2]["Id"] = 4020303
tOctNewServer_Data[3326411][40]["RewardItem"][2]["Attr"] = "0 1 3"
tOctNewServer_Data[3326411][40]["RewardItem"][3] = {}
tOctNewServer_Data[3326411][40]["RewardItem"][3]["Id"] = 4021503
tOctNewServer_Data[3326411][40]["RewardItem"][3]["Attr"] = "0 1 3"

--忍者
tOctNewServer_Data[3326411][50]={}
tOctNewServer_Data[3326411][50]["LogId"] = 12001637
tOctNewServer_Data[3326411][50]["DeleteItem"] = {}
tOctNewServer_Data[3326411][50]["DeleteItem"][1] = {}
tOctNewServer_Data[3326411][50]["DeleteItem"][1]["Id"] = 3326411

tOctNewServer_Data[3326411][50]["RewardItem"] = {}
tOctNewServer_Data[3326411][50]["RewardItem"][1] = {}
tOctNewServer_Data[3326411][50]["RewardItem"][1]["Id"] = 4010301
tOctNewServer_Data[3326411][50]["RewardItem"][1]["Attr"] = "0 1 3"
tOctNewServer_Data[3326411][50]["RewardItem"][2] = {}
tOctNewServer_Data[3326411][50]["RewardItem"][2]["Id"] = 4020403
tOctNewServer_Data[3326411][50]["RewardItem"][2]["Attr"] = "0 1 3"
tOctNewServer_Data[3326411][50]["RewardItem"][3] = {}
tOctNewServer_Data[3326411][50]["RewardItem"][3]["Id"] = 4021603
tOctNewServer_Data[3326411][50]["RewardItem"][3]["Attr"] = "0 1 3"

--武僧
tOctNewServer_Data[3326411][60]={}
tOctNewServer_Data[3326411][60]["LogId"] = 12001637
tOctNewServer_Data[3326411][60]["DeleteItem"] = {}
tOctNewServer_Data[3326411][60]["DeleteItem"][1] = {}
tOctNewServer_Data[3326411][60]["DeleteItem"][1]["Id"] = 3326411

tOctNewServer_Data[3326411][60]["RewardItem"] = {}
tOctNewServer_Data[3326411][60]["RewardItem"][1] = {}
tOctNewServer_Data[3326411][60]["RewardItem"][1]["Id"] = 4010401
tOctNewServer_Data[3326411][60]["RewardItem"][1]["Attr"] = "0 1 3"
tOctNewServer_Data[3326411][60]["RewardItem"][2] = {}
tOctNewServer_Data[3326411][60]["RewardItem"][2]["Id"] = 4020503
tOctNewServer_Data[3326411][60]["RewardItem"][2]["Attr"] = "0 1 3"
tOctNewServer_Data[3326411][60]["RewardItem"][3] = {}
tOctNewServer_Data[3326411][60]["RewardItem"][3]["Id"] = 4022003
tOctNewServer_Data[3326411][60]["RewardItem"][3]["Attr"] = "0 1 3"

--海盗
tOctNewServer_Data[3326411][70]={}
tOctNewServer_Data[3326411][70]["LogId"] = 12001637
tOctNewServer_Data[3326411][70]["DeleteItem"] = {}
tOctNewServer_Data[3326411][70]["DeleteItem"][1] = {}
tOctNewServer_Data[3326411][70]["DeleteItem"][1]["Id"] = 3326411

tOctNewServer_Data[3326411][70]["RewardItem"] = {}
tOctNewServer_Data[3326411][70]["RewardItem"][1] = {}
tOctNewServer_Data[3326411][70]["RewardItem"][1]["Id"] = 4010501
tOctNewServer_Data[3326411][70]["RewardItem"][1]["Attr"] = "0 1 3"
tOctNewServer_Data[3326411][70]["RewardItem"][2] = {}
tOctNewServer_Data[3326411][70]["RewardItem"][2]["Id"] = 4020603
tOctNewServer_Data[3326411][70]["RewardItem"][2]["Attr"] = "0 1 3"
tOctNewServer_Data[3326411][70]["RewardItem"][3] = {}
tOctNewServer_Data[3326411][70]["RewardItem"][3]["Id"] = 4021703
tOctNewServer_Data[3326411][70]["RewardItem"][3]["Attr"] = "0 1 3"

--截拳
tOctNewServer_Data[3326411][80]={}
tOctNewServer_Data[3326411][80]["LogId"] = 12001637
tOctNewServer_Data[3326411][80]["DeleteItem"] = {}
tOctNewServer_Data[3326411][80]["DeleteItem"][1] = {}
tOctNewServer_Data[3326411][80]["DeleteItem"][1]["Id"] = 3326411

tOctNewServer_Data[3326411][80]["RewardItem"] = {}
tOctNewServer_Data[3326411][80]["RewardItem"][1] = {}
tOctNewServer_Data[3326411][80]["RewardItem"][1]["Id"] = 4010601
tOctNewServer_Data[3326411][80]["RewardItem"][1]["Attr"] = "0 1 3"
tOctNewServer_Data[3326411][80]["RewardItem"][2] = {}
tOctNewServer_Data[3326411][80]["RewardItem"][2]["Id"] = 4020703
tOctNewServer_Data[3326411][80]["RewardItem"][2]["Attr"] = "0 1 3"
tOctNewServer_Data[3326411][80]["RewardItem"][3] = {}
tOctNewServer_Data[3326411][80]["RewardItem"][3]["Id"] = 4021303
tOctNewServer_Data[3326411][80]["RewardItem"][3]["Attr"] = "0 1 3"

--水道士
tOctNewServer_Data[3326411][130]={}
tOctNewServer_Data[3326411][130]["LogId"] = 12001637
tOctNewServer_Data[3326411][130]["DeleteItem"] = {}
tOctNewServer_Data[3326411][130]["DeleteItem"][1] = {}
tOctNewServer_Data[3326411][130]["DeleteItem"][1]["Id"] = 3326411

tOctNewServer_Data[3326411][130]["RewardItem"] = {}
tOctNewServer_Data[3326411][130]["RewardItem"][1] = {}
tOctNewServer_Data[3326411][130]["RewardItem"][1]["Id"] = 4010701
tOctNewServer_Data[3326411][130]["RewardItem"][1]["Attr"] = "0 1 3"
tOctNewServer_Data[3326411][130]["RewardItem"][2] = {}
tOctNewServer_Data[3326411][130]["RewardItem"][2]["Id"] = 4020803
tOctNewServer_Data[3326411][130]["RewardItem"][2]["Attr"] = "0 1 3"
tOctNewServer_Data[3326411][130]["RewardItem"][3] = {}
tOctNewServer_Data[3326411][130]["RewardItem"][3]["Id"] = 4021803
tOctNewServer_Data[3326411][130]["RewardItem"][3]["Attr"] = "0 1 3"

--火道士
tOctNewServer_Data[3326411][140]={}
tOctNewServer_Data[3326411][140]["LogId"] = 12001637
tOctNewServer_Data[3326411][140]["DeleteItem"] = {}
tOctNewServer_Data[3326411][140]["DeleteItem"][1] = {}
tOctNewServer_Data[3326411][140]["DeleteItem"][1]["Id"] = 3326411

tOctNewServer_Data[3326411][140]["RewardItem"] = {}
tOctNewServer_Data[3326411][140]["RewardItem"][1] = {}
tOctNewServer_Data[3326411][140]["RewardItem"][1]["Id"] = 4010801
tOctNewServer_Data[3326411][140]["RewardItem"][1]["Attr"] = "0 1 3"
tOctNewServer_Data[3326411][140]["RewardItem"][2] = {}
tOctNewServer_Data[3326411][140]["RewardItem"][2]["Id"] = 4020903
tOctNewServer_Data[3326411][140]["RewardItem"][2]["Attr"] = "0 1 3"
tOctNewServer_Data[3326411][140]["RewardItem"][3] = {}
tOctNewServer_Data[3326411][140]["RewardItem"][3]["Id"] = 4021903
tOctNewServer_Data[3326411][140]["RewardItem"][3]["Attr"] = "0 1 3"


--铁扇门
tOctNewServer_Data[3326411][160]={}
tOctNewServer_Data[3326411][160]["LogId"] = 12001637
tOctNewServer_Data[3326411][160]["DeleteItem"] = {}
tOctNewServer_Data[3326411][160]["DeleteItem"][1] = {}
tOctNewServer_Data[3326411][160]["DeleteItem"][1]["Id"] = 3326411

tOctNewServer_Data[3326411][160]["RewardItem"] = {}
tOctNewServer_Data[3326411][160]["RewardItem"][1] = {}
tOctNewServer_Data[3326411][160]["RewardItem"][1]["Id"] = 4010901
tOctNewServer_Data[3326411][160]["RewardItem"][1]["Attr"] = "0 1 3"
tOctNewServer_Data[3326411][160]["RewardItem"][2] = {}
tOctNewServer_Data[3326411][160]["RewardItem"][2]["Id"] = 4021003
tOctNewServer_Data[3326411][160]["RewardItem"][2]["Attr"] = "0 1 3"
tOctNewServer_Data[3326411][160]["RewardItem"][3] = {}
tOctNewServer_Data[3326411][160]["RewardItem"][3]["Id"] = 4021103
tOctNewServer_Data[3326411][160]["RewardItem"][3]["Attr"] = "0 1 3"
tOctNewServer_Data[3326411][160]["RewardItem"][4] = {}
tOctNewServer_Data[3326411][160]["RewardItem"][4]["Id"] = 4021203
tOctNewServer_Data[3326411][160]["RewardItem"][4]["Attr"] = "0 1 3"

--雷神
tOctNewServer_Data[3326411][90]={}
tOctNewServer_Data[3326411][90]["LogId"] = 12001637
tOctNewServer_Data[3326411][90]["DeleteItem"] = {}
tOctNewServer_Data[3326411][90]["DeleteItem"][1] = {}
tOctNewServer_Data[3326411][90]["DeleteItem"][1]["Id"] = 3326411

tOctNewServer_Data[3326411][90]["RewardItem"] = {}
tOctNewServer_Data[3326411][90]["RewardItem"][1] = {}
tOctNewServer_Data[3326411][90]["RewardItem"][1]["Id"] = 4011401
tOctNewServer_Data[3326411][90]["RewardItem"][1]["Attr"] = "0 1 3"
tOctNewServer_Data[3326411][90]["RewardItem"][2] = {}
tOctNewServer_Data[3326411][90]["RewardItem"][2]["Id"] = 4022203
tOctNewServer_Data[3326411][90]["RewardItem"][2]["Attr"] = "0 1 3"




--（+5）职业神纹宝箱
tOctNewServer_Data[3326414]={}
--勇士
tOctNewServer_Data[3326414][10]={}
tOctNewServer_Data[3326414][10]["LogId"] = 12001637
tOctNewServer_Data[3326414][10]["DeleteItem"] = {}
tOctNewServer_Data[3326414][10]["DeleteItem"][1] = {}
tOctNewServer_Data[3326414][10]["DeleteItem"][1]["Id"] = 3326414

tOctNewServer_Data[3326414][10]["RewardItem"] = {}
tOctNewServer_Data[3326414][10]["RewardItem"][1] = {}
tOctNewServer_Data[3326414][10]["RewardItem"][1]["Id"] = 4010001
tOctNewServer_Data[3326414][10]["RewardItem"][1]["Attr"] = "0 1 3"
tOctNewServer_Data[3326414][10]["RewardItem"][2] = {}
tOctNewServer_Data[3326414][10]["RewardItem"][2]["Id"] = 4020105
tOctNewServer_Data[3326414][10]["RewardItem"][2]["Attr"] = "0 1 3"
tOctNewServer_Data[3326414][10]["RewardItem"][3] = {}
tOctNewServer_Data[3326414][10]["RewardItem"][3]["Id"] = 4023005
tOctNewServer_Data[3326414][10]["RewardItem"][3]["Attr"] = "0 1 3"

--战士
tOctNewServer_Data[3326414][20]={}
tOctNewServer_Data[3326414][20]["LogId"] = 12001637
tOctNewServer_Data[3326414][20]["DeleteItem"] = {}
tOctNewServer_Data[3326414][20]["DeleteItem"][1] = {}
tOctNewServer_Data[3326414][20]["DeleteItem"][1]["Id"] = 3326414

tOctNewServer_Data[3326414][20]["RewardItem"] = {}
tOctNewServer_Data[3326414][20]["RewardItem"][1] = {}
tOctNewServer_Data[3326414][20]["RewardItem"][1]["Id"] = 4010101
tOctNewServer_Data[3326414][20]["RewardItem"][1]["Attr"] = "0 1 3"
tOctNewServer_Data[3326414][20]["RewardItem"][2] = {}
tOctNewServer_Data[3326414][20]["RewardItem"][2]["Id"] = 4020205
tOctNewServer_Data[3326414][20]["RewardItem"][2]["Attr"] = "0 1 3"
tOctNewServer_Data[3326414][20]["RewardItem"][3] = {}
tOctNewServer_Data[3326414][20]["RewardItem"][3]["Id"] = 4021405
tOctNewServer_Data[3326414][20]["RewardItem"][3]["Attr"] = "0 1 3"

--弓手
tOctNewServer_Data[3326414][40]={}
tOctNewServer_Data[3326414][40]["LogId"] = 12001637
tOctNewServer_Data[3326414][40]["DeleteItem"] = {}
tOctNewServer_Data[3326414][40]["DeleteItem"][1] = {}
tOctNewServer_Data[3326414][40]["DeleteItem"][1]["Id"] = 3326414

tOctNewServer_Data[3326414][40]["RewardItem"] = {}
tOctNewServer_Data[3326414][40]["RewardItem"][1] = {}
tOctNewServer_Data[3326414][40]["RewardItem"][1]["Id"] = 4010201
tOctNewServer_Data[3326414][40]["RewardItem"][1]["Attr"] = "0 1 3"
tOctNewServer_Data[3326414][40]["RewardItem"][2] = {}
tOctNewServer_Data[3326414][40]["RewardItem"][2]["Id"] = 4020305
tOctNewServer_Data[3326414][40]["RewardItem"][2]["Attr"] = "0 1 3"
tOctNewServer_Data[3326414][40]["RewardItem"][3] = {}
tOctNewServer_Data[3326414][40]["RewardItem"][3]["Id"] = 4021505
tOctNewServer_Data[3326414][40]["RewardItem"][3]["Attr"] = "0 1 3"

--忍者
tOctNewServer_Data[3326414][50]={}
tOctNewServer_Data[3326414][50]["LogId"] = 12001637
tOctNewServer_Data[3326414][50]["DeleteItem"] = {}
tOctNewServer_Data[3326414][50]["DeleteItem"][1] = {}
tOctNewServer_Data[3326414][50]["DeleteItem"][1]["Id"] = 3326414

tOctNewServer_Data[3326414][50]["RewardItem"] = {}
tOctNewServer_Data[3326414][50]["RewardItem"][1] = {}
tOctNewServer_Data[3326414][50]["RewardItem"][1]["Id"] = 4010301
tOctNewServer_Data[3326414][50]["RewardItem"][1]["Attr"] = "0 1 3"
tOctNewServer_Data[3326414][50]["RewardItem"][2] = {}
tOctNewServer_Data[3326414][50]["RewardItem"][2]["Id"] = 4020405
tOctNewServer_Data[3326414][50]["RewardItem"][2]["Attr"] = "0 1 3"
tOctNewServer_Data[3326414][50]["RewardItem"][3] = {}
tOctNewServer_Data[3326414][50]["RewardItem"][3]["Id"] = 4021605
tOctNewServer_Data[3326414][50]["RewardItem"][3]["Attr"] = "0 1 3"

--武僧
tOctNewServer_Data[3326414][60]={}
tOctNewServer_Data[3326414][60]["LogId"] = 12001637
tOctNewServer_Data[3326414][60]["DeleteItem"] = {}
tOctNewServer_Data[3326414][60]["DeleteItem"][1] = {}
tOctNewServer_Data[3326414][60]["DeleteItem"][1]["Id"] = 3326414

tOctNewServer_Data[3326414][60]["RewardItem"] = {}
tOctNewServer_Data[3326414][60]["RewardItem"][1] = {}
tOctNewServer_Data[3326414][60]["RewardItem"][1]["Id"] = 4010401
tOctNewServer_Data[3326414][60]["RewardItem"][1]["Attr"] = "0 1 3"
tOctNewServer_Data[3326414][60]["RewardItem"][2] = {}
tOctNewServer_Data[3326414][60]["RewardItem"][2]["Id"] = 4020505
tOctNewServer_Data[3326414][60]["RewardItem"][2]["Attr"] = "0 1 3"
tOctNewServer_Data[3326414][60]["RewardItem"][3] = {}
tOctNewServer_Data[3326414][60]["RewardItem"][3]["Id"] = 4022005
tOctNewServer_Data[3326414][60]["RewardItem"][3]["Attr"] = "0 1 3"

--海盗
tOctNewServer_Data[3326414][70]={}
tOctNewServer_Data[3326414][70]["LogId"] = 12001637
tOctNewServer_Data[3326414][70]["DeleteItem"] = {}
tOctNewServer_Data[3326414][70]["DeleteItem"][1] = {}
tOctNewServer_Data[3326414][70]["DeleteItem"][1]["Id"] = 3326414

tOctNewServer_Data[3326414][70]["RewardItem"] = {}
tOctNewServer_Data[3326414][70]["RewardItem"][1] = {}
tOctNewServer_Data[3326414][70]["RewardItem"][1]["Id"] = 4010501
tOctNewServer_Data[3326414][70]["RewardItem"][1]["Attr"] = "0 1 3"
tOctNewServer_Data[3326414][70]["RewardItem"][2] = {}
tOctNewServer_Data[3326414][70]["RewardItem"][2]["Id"] = 4020605
tOctNewServer_Data[3326414][70]["RewardItem"][2]["Attr"] = "0 1 3"
tOctNewServer_Data[3326414][70]["RewardItem"][3] = {}
tOctNewServer_Data[3326414][70]["RewardItem"][3]["Id"] = 4021705
tOctNewServer_Data[3326414][70]["RewardItem"][3]["Attr"] = "0 1 3"

--截拳
tOctNewServer_Data[3326414][80]={}
tOctNewServer_Data[3326414][80]["LogId"] = 12001637
tOctNewServer_Data[3326414][80]["DeleteItem"] = {}
tOctNewServer_Data[3326414][80]["DeleteItem"][1] = {}
tOctNewServer_Data[3326414][80]["DeleteItem"][1]["Id"] = 3326414

tOctNewServer_Data[3326414][80]["RewardItem"] = {}
tOctNewServer_Data[3326414][80]["RewardItem"][1] = {}
tOctNewServer_Data[3326414][80]["RewardItem"][1]["Id"] = 4010601
tOctNewServer_Data[3326414][80]["RewardItem"][1]["Attr"] = "0 1 3"
tOctNewServer_Data[3326414][80]["RewardItem"][2] = {}
tOctNewServer_Data[3326414][80]["RewardItem"][2]["Id"] = 4020705
tOctNewServer_Data[3326414][80]["RewardItem"][2]["Attr"] = "0 1 3"
tOctNewServer_Data[3326414][80]["RewardItem"][3] = {}
tOctNewServer_Data[3326414][80]["RewardItem"][3]["Id"] = 4021305
tOctNewServer_Data[3326414][80]["RewardItem"][3]["Attr"] = "0 1 3"

--水道士
tOctNewServer_Data[3326414][130]={}
tOctNewServer_Data[3326414][130]["LogId"] = 12001637
tOctNewServer_Data[3326414][130]["DeleteItem"] = {}
tOctNewServer_Data[3326414][130]["DeleteItem"][1] = {}
tOctNewServer_Data[3326414][130]["DeleteItem"][1]["Id"] = 3326414

tOctNewServer_Data[3326414][130]["RewardItem"] = {}
tOctNewServer_Data[3326414][130]["RewardItem"][1] = {}
tOctNewServer_Data[3326414][130]["RewardItem"][1]["Id"] = 4010701
tOctNewServer_Data[3326414][130]["RewardItem"][1]["Attr"] = "0 1 3"
tOctNewServer_Data[3326414][130]["RewardItem"][2] = {}
tOctNewServer_Data[3326414][130]["RewardItem"][2]["Id"] = 4020805
tOctNewServer_Data[3326414][130]["RewardItem"][2]["Attr"] = "0 1 3"
tOctNewServer_Data[3326414][130]["RewardItem"][3] = {}
tOctNewServer_Data[3326414][130]["RewardItem"][3]["Id"] = 4021805
tOctNewServer_Data[3326414][130]["RewardItem"][3]["Attr"] = "0 1 3"

--火道士
tOctNewServer_Data[3326414][140]={}
tOctNewServer_Data[3326414][140]["LogId"] = 12001637
tOctNewServer_Data[3326414][140]["DeleteItem"] = {}
tOctNewServer_Data[3326414][140]["DeleteItem"][1] = {}
tOctNewServer_Data[3326414][140]["DeleteItem"][1]["Id"] = 3326414

tOctNewServer_Data[3326414][140]["RewardItem"] = {}
tOctNewServer_Data[3326414][140]["RewardItem"][1] = {}
tOctNewServer_Data[3326414][140]["RewardItem"][1]["Id"] = 4010801
tOctNewServer_Data[3326414][140]["RewardItem"][1]["Attr"] = "0 1 3"
tOctNewServer_Data[3326414][140]["RewardItem"][2] = {}
tOctNewServer_Data[3326414][140]["RewardItem"][2]["Id"] = 4020905
tOctNewServer_Data[3326414][140]["RewardItem"][2]["Attr"] = "0 1 3"
tOctNewServer_Data[3326414][140]["RewardItem"][3] = {}
tOctNewServer_Data[3326414][140]["RewardItem"][3]["Id"] = 4021905
tOctNewServer_Data[3326414][140]["RewardItem"][3]["Attr"] = "0 1 3"


--铁扇门
tOctNewServer_Data[3326414][160]={}
tOctNewServer_Data[3326414][160]["LogId"] = 12001637
tOctNewServer_Data[3326414][160]["DeleteItem"] = {}
tOctNewServer_Data[3326414][160]["DeleteItem"][1] = {}
tOctNewServer_Data[3326414][160]["DeleteItem"][1]["Id"] = 3326414

tOctNewServer_Data[3326414][160]["RewardItem"] = {}
tOctNewServer_Data[3326414][160]["RewardItem"][1] = {}
tOctNewServer_Data[3326414][160]["RewardItem"][1]["Id"] = 4010901
tOctNewServer_Data[3326414][160]["RewardItem"][1]["Attr"] = "0 1 3"
tOctNewServer_Data[3326414][160]["RewardItem"][2] = {}
tOctNewServer_Data[3326414][160]["RewardItem"][2]["Id"] = 4021005
tOctNewServer_Data[3326414][160]["RewardItem"][2]["Attr"] = "0 1 3"
tOctNewServer_Data[3326414][160]["RewardItem"][3] = {}
tOctNewServer_Data[3326414][160]["RewardItem"][3]["Id"] = 4021105
tOctNewServer_Data[3326414][160]["RewardItem"][3]["Attr"] = "0 1 3"
tOctNewServer_Data[3326414][160]["RewardItem"][4] = {}
tOctNewServer_Data[3326414][160]["RewardItem"][4]["Id"] = 4021205
tOctNewServer_Data[3326414][160]["RewardItem"][4]["Attr"] = "0 1 3"

--雷神
tOctNewServer_Data[3326414][90]={}
tOctNewServer_Data[3326414][90]["LogId"] = 12001637
tOctNewServer_Data[3326414][90]["DeleteItem"] = {}
tOctNewServer_Data[3326414][90]["DeleteItem"][1] = {}
tOctNewServer_Data[3326414][90]["DeleteItem"][1]["Id"] = 3326414

tOctNewServer_Data[3326414][90]["RewardItem"] = {}
tOctNewServer_Data[3326414][90]["RewardItem"][1] = {}
tOctNewServer_Data[3326414][90]["RewardItem"][1]["Id"] = 4011401
tOctNewServer_Data[3326414][90]["RewardItem"][1]["Attr"] = "0 1 3"
tOctNewServer_Data[3326414][90]["RewardItem"][2] = {}
tOctNewServer_Data[3326414][90]["RewardItem"][2]["Id"] = 4022205
tOctNewServer_Data[3326414][90]["RewardItem"][2]["Attr"] = "0 1 3"





--（+27）职业神纹宝箱
tOctNewServer_Data[3326417]={}
--勇士
tOctNewServer_Data[3326417][10]={}
tOctNewServer_Data[3326417][10]["LogId"] = 12001637
tOctNewServer_Data[3326417][10]["DeleteItem"] = {}
tOctNewServer_Data[3326417][10]["DeleteItem"][1] = {}
tOctNewServer_Data[3326417][10]["DeleteItem"][1]["Id"] = 3326417

tOctNewServer_Data[3326417][10]["RewardItem"] = {}
tOctNewServer_Data[3326417][10]["RewardItem"][1] = {}
tOctNewServer_Data[3326417][10]["RewardItem"][1]["Id"] = 4010001
tOctNewServer_Data[3326417][10]["RewardItem"][1]["Attr"] = "0 1 3"
tOctNewServer_Data[3326417][10]["RewardItem"][2] = {}
tOctNewServer_Data[3326417][10]["RewardItem"][2]["Id"] = 4020127
tOctNewServer_Data[3326417][10]["RewardItem"][2]["Attr"] = "0 1 3"
tOctNewServer_Data[3326417][10]["RewardItem"][3] = {}
tOctNewServer_Data[3326417][10]["RewardItem"][3]["Id"] = 4023027
tOctNewServer_Data[3326417][10]["RewardItem"][3]["Attr"] = "0 1 3"

--战士
tOctNewServer_Data[3326417][20]={}
tOctNewServer_Data[3326417][20]["LogId"] = 12001637
tOctNewServer_Data[3326417][20]["DeleteItem"] = {}
tOctNewServer_Data[3326417][20]["DeleteItem"][1] = {}
tOctNewServer_Data[3326417][20]["DeleteItem"][1]["Id"] = 3326417

tOctNewServer_Data[3326417][20]["RewardItem"] = {}
tOctNewServer_Data[3326417][20]["RewardItem"][1] = {}
tOctNewServer_Data[3326417][20]["RewardItem"][1]["Id"] = 4010101
tOctNewServer_Data[3326417][20]["RewardItem"][1]["Attr"] = "0 1 3"
tOctNewServer_Data[3326417][20]["RewardItem"][2] = {}
tOctNewServer_Data[3326417][20]["RewardItem"][2]["Id"] = 4020227
tOctNewServer_Data[3326417][20]["RewardItem"][2]["Attr"] = "0 1 3"
tOctNewServer_Data[3326417][20]["RewardItem"][3] = {}
tOctNewServer_Data[3326417][20]["RewardItem"][3]["Id"] = 4021427
tOctNewServer_Data[3326417][20]["RewardItem"][3]["Attr"] = "0 1 3"

--弓手
tOctNewServer_Data[3326417][40]={}
tOctNewServer_Data[3326417][40]["LogId"] = 12001637
tOctNewServer_Data[3326417][40]["DeleteItem"] = {}
tOctNewServer_Data[3326417][40]["DeleteItem"][1] = {}
tOctNewServer_Data[3326417][40]["DeleteItem"][1]["Id"] = 3326417

tOctNewServer_Data[3326417][40]["RewardItem"] = {}
tOctNewServer_Data[3326417][40]["RewardItem"][1] = {}
tOctNewServer_Data[3326417][40]["RewardItem"][1]["Id"] = 4010201
tOctNewServer_Data[3326417][40]["RewardItem"][1]["Attr"] = "0 1 3"
tOctNewServer_Data[3326417][40]["RewardItem"][2] = {}
tOctNewServer_Data[3326417][40]["RewardItem"][2]["Id"] = 4020327
tOctNewServer_Data[3326417][40]["RewardItem"][2]["Attr"] = "0 1 3"
tOctNewServer_Data[3326417][40]["RewardItem"][3] = {}
tOctNewServer_Data[3326417][40]["RewardItem"][3]["Id"] = 4021527
tOctNewServer_Data[3326417][40]["RewardItem"][3]["Attr"] = "0 1 3"

--忍者
tOctNewServer_Data[3326417][50]={}
tOctNewServer_Data[3326417][50]["LogId"] = 12001637
tOctNewServer_Data[3326417][50]["DeleteItem"] = {}
tOctNewServer_Data[3326417][50]["DeleteItem"][1] = {}
tOctNewServer_Data[3326417][50]["DeleteItem"][1]["Id"] = 3326417

tOctNewServer_Data[3326417][50]["RewardItem"] = {}
tOctNewServer_Data[3326417][50]["RewardItem"][1] = {}
tOctNewServer_Data[3326417][50]["RewardItem"][1]["Id"] = 4010301
tOctNewServer_Data[3326417][50]["RewardItem"][1]["Attr"] = "0 1 3"
tOctNewServer_Data[3326417][50]["RewardItem"][2] = {}
tOctNewServer_Data[3326417][50]["RewardItem"][2]["Id"] = 4020427
tOctNewServer_Data[3326417][50]["RewardItem"][2]["Attr"] = "0 1 3"
tOctNewServer_Data[3326417][50]["RewardItem"][3] = {}
tOctNewServer_Data[3326417][50]["RewardItem"][3]["Id"] = 4021627
tOctNewServer_Data[3326417][50]["RewardItem"][3]["Attr"] = "0 1 3"

--武僧
tOctNewServer_Data[3326417][60]={}
tOctNewServer_Data[3326417][60]["LogId"] = 12001637
tOctNewServer_Data[3326417][60]["DeleteItem"] = {}
tOctNewServer_Data[3326417][60]["DeleteItem"][1] = {}
tOctNewServer_Data[3326417][60]["DeleteItem"][1]["Id"] = 3326417

tOctNewServer_Data[3326417][60]["RewardItem"] = {}
tOctNewServer_Data[3326417][60]["RewardItem"][1] = {}
tOctNewServer_Data[3326417][60]["RewardItem"][1]["Id"] = 4010401
tOctNewServer_Data[3326417][60]["RewardItem"][1]["Attr"] = "0 1 3"
tOctNewServer_Data[3326417][60]["RewardItem"][2] = {}
tOctNewServer_Data[3326417][60]["RewardItem"][2]["Id"] = 4020527
tOctNewServer_Data[3326417][60]["RewardItem"][2]["Attr"] = "0 1 3"
tOctNewServer_Data[3326417][60]["RewardItem"][3] = {}
tOctNewServer_Data[3326417][60]["RewardItem"][3]["Id"] = 4022027
tOctNewServer_Data[3326417][60]["RewardItem"][3]["Attr"] = "0 1 3"

--海盗
tOctNewServer_Data[3326417][70]={}
tOctNewServer_Data[3326417][70]["LogId"] = 12001637
tOctNewServer_Data[3326417][70]["DeleteItem"] = {}
tOctNewServer_Data[3326417][70]["DeleteItem"][1] = {}
tOctNewServer_Data[3326417][70]["DeleteItem"][1]["Id"] = 3326417

tOctNewServer_Data[3326417][70]["RewardItem"] = {}
tOctNewServer_Data[3326417][70]["RewardItem"][1] = {}
tOctNewServer_Data[3326417][70]["RewardItem"][1]["Id"] = 4010501
tOctNewServer_Data[3326417][70]["RewardItem"][1]["Attr"] = "0 1 3"
tOctNewServer_Data[3326417][70]["RewardItem"][2] = {}
tOctNewServer_Data[3326417][70]["RewardItem"][2]["Id"] = 4020627
tOctNewServer_Data[3326417][70]["RewardItem"][2]["Attr"] = "0 1 3"
tOctNewServer_Data[3326417][70]["RewardItem"][3] = {}
tOctNewServer_Data[3326417][70]["RewardItem"][3]["Id"] = 4021727
tOctNewServer_Data[3326417][70]["RewardItem"][3]["Attr"] = "0 1 3"

--截拳
tOctNewServer_Data[3326417][80]={}
tOctNewServer_Data[3326417][80]["LogId"] = 12001637
tOctNewServer_Data[3326417][80]["DeleteItem"] = {}
tOctNewServer_Data[3326417][80]["DeleteItem"][1] = {}
tOctNewServer_Data[3326417][80]["DeleteItem"][1]["Id"] = 3326417

tOctNewServer_Data[3326417][80]["RewardItem"] = {}
tOctNewServer_Data[3326417][80]["RewardItem"][1] = {}
tOctNewServer_Data[3326417][80]["RewardItem"][1]["Id"] = 4010601
tOctNewServer_Data[3326417][80]["RewardItem"][1]["Attr"] = "0 1 3"
tOctNewServer_Data[3326417][80]["RewardItem"][2] = {}
tOctNewServer_Data[3326417][80]["RewardItem"][2]["Id"] = 4020727
tOctNewServer_Data[3326417][80]["RewardItem"][2]["Attr"] = "0 1 3"
tOctNewServer_Data[3326417][80]["RewardItem"][3] = {}
tOctNewServer_Data[3326417][80]["RewardItem"][3]["Id"] = 4021327
tOctNewServer_Data[3326417][80]["RewardItem"][3]["Attr"] = "0 1 3"

--水道士
tOctNewServer_Data[3326417][130]={}
tOctNewServer_Data[3326417][130]["LogId"] = 12001637
tOctNewServer_Data[3326417][130]["DeleteItem"] = {}
tOctNewServer_Data[3326417][130]["DeleteItem"][1] = {}
tOctNewServer_Data[3326417][130]["DeleteItem"][1]["Id"] = 3326417

tOctNewServer_Data[3326417][130]["RewardItem"] = {}
tOctNewServer_Data[3326417][130]["RewardItem"][1] = {}
tOctNewServer_Data[3326417][130]["RewardItem"][1]["Id"] = 4010701
tOctNewServer_Data[3326417][130]["RewardItem"][1]["Attr"] = "0 1 3"
tOctNewServer_Data[3326417][130]["RewardItem"][2] = {}
tOctNewServer_Data[3326417][130]["RewardItem"][2]["Id"] = 4020827
tOctNewServer_Data[3326417][130]["RewardItem"][2]["Attr"] = "0 1 3"
tOctNewServer_Data[3326417][130]["RewardItem"][3] = {}
tOctNewServer_Data[3326417][130]["RewardItem"][3]["Id"] = 4021827
tOctNewServer_Data[3326417][130]["RewardItem"][3]["Attr"] = "0 1 3"

--火道士
tOctNewServer_Data[3326417][140]={}
tOctNewServer_Data[3326417][140]["LogId"] = 12001637
tOctNewServer_Data[3326417][140]["DeleteItem"] = {}
tOctNewServer_Data[3326417][140]["DeleteItem"][1] = {}
tOctNewServer_Data[3326417][140]["DeleteItem"][1]["Id"] = 3326417

tOctNewServer_Data[3326417][140]["RewardItem"] = {}
tOctNewServer_Data[3326417][140]["RewardItem"][1] = {}
tOctNewServer_Data[3326417][140]["RewardItem"][1]["Id"] = 4010801
tOctNewServer_Data[3326417][140]["RewardItem"][1]["Attr"] = "0 1 3"
tOctNewServer_Data[3326417][140]["RewardItem"][2] = {}
tOctNewServer_Data[3326417][140]["RewardItem"][2]["Id"] = 4020927
tOctNewServer_Data[3326417][140]["RewardItem"][2]["Attr"] = "0 1 3"
tOctNewServer_Data[3326417][140]["RewardItem"][3] = {}
tOctNewServer_Data[3326417][140]["RewardItem"][3]["Id"] = 4021927
tOctNewServer_Data[3326417][140]["RewardItem"][3]["Attr"] = "0 1 3"

--铁扇门
tOctNewServer_Data[3326417][160]={}
tOctNewServer_Data[3326417][160]["LogId"] = 12001637
tOctNewServer_Data[3326417][160]["DeleteItem"] = {}
tOctNewServer_Data[3326417][160]["DeleteItem"][1] = {}
tOctNewServer_Data[3326417][160]["DeleteItem"][1]["Id"] = 3326417

tOctNewServer_Data[3326417][160]["RewardItem"] = {}
tOctNewServer_Data[3326417][160]["RewardItem"][1] = {}
tOctNewServer_Data[3326417][160]["RewardItem"][1]["Id"] = 4010901
tOctNewServer_Data[3326417][160]["RewardItem"][1]["Attr"] = "0 1 3"
tOctNewServer_Data[3326417][160]["RewardItem"][2] = {}
tOctNewServer_Data[3326417][160]["RewardItem"][2]["Id"] = 4021027
tOctNewServer_Data[3326417][160]["RewardItem"][2]["Attr"] = "0 1 3"
tOctNewServer_Data[3326417][160]["RewardItem"][3] = {}
tOctNewServer_Data[3326417][160]["RewardItem"][3]["Id"] = 4021127
tOctNewServer_Data[3326417][160]["RewardItem"][3]["Attr"] = "0 1 3"
tOctNewServer_Data[3326417][160]["RewardItem"][4] = {}
tOctNewServer_Data[3326417][160]["RewardItem"][4]["Id"] = 4021227
tOctNewServer_Data[3326417][160]["RewardItem"][4]["Attr"] = "0 1 3"

--雷神
tOctNewServer_Data[3326417][90]={}
tOctNewServer_Data[3326417][90]["LogId"] = 12001637
tOctNewServer_Data[3326417][90]["DeleteItem"] = {}
tOctNewServer_Data[3326417][90]["DeleteItem"][1] = {}
tOctNewServer_Data[3326417][90]["DeleteItem"][1]["Id"] = 3326417

tOctNewServer_Data[3326417][90]["RewardItem"] = {}
tOctNewServer_Data[3326417][90]["RewardItem"][1] = {}
tOctNewServer_Data[3326417][90]["RewardItem"][1]["Id"] = 4011401
tOctNewServer_Data[3326417][90]["RewardItem"][1]["Attr"] = "0 1 3"
tOctNewServer_Data[3326417][90]["RewardItem"][2] = {}
tOctNewServer_Data[3326417][90]["RewardItem"][2]["Id"] = 4022227
tOctNewServer_Data[3326417][90]["RewardItem"][2]["Attr"] = "0 1 3"




tOctNewServer_Data[3326412] = {}
-- ===（+2）黄色神纹宝箱
-- ===索引: tOctNewServer_Data[3326412]
-- ===删除: 3326412,1
-- ===
-- ===
tOctNewServer_Data[3326412]["LogId"] = 12001637
tOctNewServer_Data[3326412]["DeleteItem"] = {}
tOctNewServer_Data[3326412]["DeleteItem"][1] = {}
tOctNewServer_Data[3326412]["DeleteItem"][1]["Id"] = 3326412 -- 【库】 3326412 【库里没有该物品】[属性:]
tOctNewServer_Data[3326412]["RewardItem"] = {}
tOctNewServer_Data[3326412]["RewardItem"][1] = {}
tOctNewServer_Data[3326412]["RewardItem"][1]["Id"] = 4030102 -- TortoiseBreaker(+2)[4030102][属性:8][叠加:0][金币:0], 【表格】破玄元（+2）
tOctNewServer_Data[3326412]["RewardItem"][1]["Attr"] = "0 1 3" -- TortoiseBreaker(+2)（赠）*1
tOctNewServer_Data[3326412]["RewardItem"][2] = {}
tOctNewServer_Data[3326412]["RewardItem"][2]["Id"] = 4030202 -- DrainingTouchBooster(+2)[4030202][属性:8][叠加:0][金币:0], 【表格】撼星诀（+2）
tOctNewServer_Data[3326412]["RewardItem"][2]["Attr"] = "0 1 3" -- DrainingTouchBooster(+2)（赠）*1
tOctNewServer_Data[3326412]["RewardItem"][3] = {}
tOctNewServer_Data[3326412]["RewardItem"][3]["Id"] = 4030302 -- BloodSpawnBooster(+2)[4030302][属性:8][叠加:0][金币:0], 【表格】血回元（+2）
tOctNewServer_Data[3326412]["RewardItem"][3]["Attr"] = "0 1 3" -- BloodSpawnBooster(+2)（赠）*1
tOctNewServer_Data[3326412]["RewardItem"][4] = {}
tOctNewServer_Data[3326412]["RewardItem"][4]["Id"] = 4030402 -- Healer(+2)[4030402][属性:8][叠加:0][金币:0], 【表格】万物生（+2）
tOctNewServer_Data[3326412]["RewardItem"][4]["Attr"] = "0 1 3" -- Healer(+2)（赠）*1
tOctNewServer_Data[3326412]["RewardItem"][5] = {}
tOctNewServer_Data[3326412]["RewardItem"][5]["Id"] = 4030502 -- Sturdiness(+2)[4030502][属性:8][叠加:0][金币:0], 【表格】无懈可击（+2）
tOctNewServer_Data[3326412]["RewardItem"][5]["Attr"] = "0 1 3" -- Sturdiness(+2)（赠）*1
tOctNewServer_Data[3326412]["RewardItem"][6] = {}
tOctNewServer_Data[3326412]["RewardItem"][6]["Id"] = 4030602 -- XPKiller(+2)[4030602][属性:8][叠加:0][金币:0], 【表格】狂暴克星（+2）
tOctNewServer_Data[3326412]["RewardItem"][6]["Attr"] = "0 1 3" -- XPKiller(+2)（赠）*1
tOctNewServer_Data[3326412]["RewardItem"][7] = {}
tOctNewServer_Data[3326412]["RewardItem"][7]["Id"] = 4030702 -- Grabber(+2)[4030702][属性:8][叠加:0][金币:0], 【表格】风卷残云（+2）
tOctNewServer_Data[3326412]["RewardItem"][7]["Attr"] = "0 1 3" -- Grabber(+2)（赠）*1
tOctNewServer_Data[3326412]["RewardItem"][8] = {}
tOctNewServer_Data[3326412]["RewardItem"][8]["Id"] = 4030802 -- MPMaster(+2)[4030802][属性:8][叠加:0][金币:0], 【表格】回灵术（+2）
tOctNewServer_Data[3326412]["RewardItem"][8]["Attr"] = "0 1 3" -- MPMaster(+2)（赠）*1
tOctNewServer_Data[3326412]["RewardItem"][9] = {}
tOctNewServer_Data[3326412]["RewardItem"][9]["Id"] = 4030902 -- BossKiller(+2)[4030902][属性:8][叠加:0][金币:0], 【表格】杀破狼（+2）
tOctNewServer_Data[3326412]["RewardItem"][9]["Attr"] = "0 1 3" -- BossKiller(+2)（赠）*1
tOctNewServer_Data[3326412]["RewardItem"][10] = {}
tOctNewServer_Data[3326412]["RewardItem"][10]["Id"] = 4031002 -- NoMercy(+2)[4031002][属性:8][叠加:0][金币:0], 【表格】追命（+2）
tOctNewServer_Data[3326412]["RewardItem"][10]["Attr"] = "0 1 3" -- NoMercy(+2)（赠）*1
tOctNewServer_Data[3326412]["RewardItem"][11] = {}
tOctNewServer_Data[3326412]["RewardItem"][11]["Id"] = 4031102 -- XPBooster(+2)[4031102][属性:8][叠加:0][金币:0], 【表格】奔雷不息（+2）
tOctNewServer_Data[3326412]["RewardItem"][11]["Attr"] = "0 1 3" -- XPBooster(+2)（赠）*1
tOctNewServer_Data[3326412]["RewardItem"][12] = {}
tOctNewServer_Data[3326412]["RewardItem"][12]["Id"] = 4031202 -- FreeSoulBooster(+2)[4031202][属性:8][叠加:0][金币:0], 【表格】安魂定魄（+2）
tOctNewServer_Data[3326412]["RewardItem"][12]["Attr"] = "0 1 3" -- FreeSoulBooster(+2)（赠）*1
tOctNewServer_Data[3326412]["RewardItem"][13] = {}
tOctNewServer_Data[3326412]["RewardItem"][13]["Id"] = 4031302 -- Witchery(+2)[4031302][属性:8][叠加:0][金币:0], 【表格】夺魂（+2）
tOctNewServer_Data[3326412]["RewardItem"][13]["Attr"] = "0 1 3" -- Witchery(+2)（赠）*1
tOctNewServer_Data[3326412]["RewardItem"][14] = {}
tOctNewServer_Data[3326412]["RewardItem"][14]["Id"] = 4033602 -- Quench(+2)[4033602][属性:8][叠加:0][金币:0], 【表格】狂暴净化（+2）
tOctNewServer_Data[3326412]["RewardItem"][14]["Attr"] = "0 1 3" -- Quench(+2)（赠）*1
tOctNewServer_Data[3326412]["RewardItem"][15] = {}
tOctNewServer_Data[3326412]["RewardItem"][15]["Id"] = 4033102 -- TidalWave(+2)[4033102][属性:8][叠加:0][金币:0], 【表格】怒海狂涛（+2）
tOctNewServer_Data[3326412]["RewardItem"][15]["Attr"] = "0 1 3" -- TidalWave(+2)（赠）*1
tOctNewServer_Data[3326412]["RewardItem"][16] = {}
tOctNewServer_Data[3326412]["RewardItem"][16]["Id"] = 4033702 -- BloodFeast(+2)[4033702][属性:8][叠加:0][金币:0], 【表格】饮血盛宴（+2）
tOctNewServer_Data[3326412]["RewardItem"][16]["Attr"] = "0 1 3" -- BloodFeast(+2)（赠）*1
tOctNewServer_Data[3326412]["RewardItem"][17] = {}
tOctNewServer_Data[3326412]["RewardItem"][17]["Id"] = 4033802 -- LifeDrain(+2)[4033802][属性:8][叠加:0][金币:0], 【表格】生命汲取（+2）
tOctNewServer_Data[3326412]["RewardItem"][17]["Attr"] = "0 1 3" -- LifeDrain(+2)（赠）*1
tOctNewServer_Data[3326412]["RewardEffect"] = {}
tOctNewServer_Data[3326412]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tOctNewServer_Data[3326412]["RewardEffect"]["Effect"] = "angelwing"


tOctNewServer_Data[3326415] = {}
-- ===（+5）黄色神纹宝箱
-- ===索引: tOctNewServer_Data[3326415]
-- ===删除: 3326415,1
-- ===
-- ===
tOctNewServer_Data[3326415]["LogId"] = 12001637
tOctNewServer_Data[3326415]["DeleteItem"] = {}
tOctNewServer_Data[3326415]["DeleteItem"][1] = {}
tOctNewServer_Data[3326415]["DeleteItem"][1]["Id"] = 3326415 -- 【库】 3326415 【库里没有该物品】[属性:]
tOctNewServer_Data[3326415]["RewardItem"] = {}
tOctNewServer_Data[3326415]["RewardItem"][1] = {}
tOctNewServer_Data[3326415]["RewardItem"][1]["Id"] = 4030105 -- TortoiseBreaker(+5)[4030105][属性:8][叠加:0][金币:0], 【表格】破玄元（+5）
tOctNewServer_Data[3326415]["RewardItem"][1]["Attr"] = "0 1 3" -- TortoiseBreaker(+5)（赠）*1
tOctNewServer_Data[3326415]["RewardItem"][2] = {}
tOctNewServer_Data[3326415]["RewardItem"][2]["Id"] = 4030205 -- DrainingTouchBooster(+5)[4030205][属性:8][叠加:0][金币:0], 【表格】撼星诀（+5）
tOctNewServer_Data[3326415]["RewardItem"][2]["Attr"] = "0 1 3" -- DrainingTouchBooster(+5)（赠）*1
tOctNewServer_Data[3326415]["RewardItem"][3] = {}
tOctNewServer_Data[3326415]["RewardItem"][3]["Id"] = 4030305 -- BloodSpawnBooster(+5)[4030305][属性:8][叠加:0][金币:0], 【表格】血回元（+5）
tOctNewServer_Data[3326415]["RewardItem"][3]["Attr"] = "0 1 3" -- BloodSpawnBooster(+5)（赠）*1
tOctNewServer_Data[3326415]["RewardItem"][4] = {}
tOctNewServer_Data[3326415]["RewardItem"][4]["Id"] = 4030405 -- Healer(+5)[4030405][属性:8][叠加:0][金币:0], 【表格】万物生（+5）
tOctNewServer_Data[3326415]["RewardItem"][4]["Attr"] = "0 1 3" -- Healer(+5)（赠）*1
tOctNewServer_Data[3326415]["RewardItem"][5] = {}
tOctNewServer_Data[3326415]["RewardItem"][5]["Id"] = 4030505 -- Sturdiness(+5)[4030505][属性:8][叠加:0][金币:0], 【表格】无懈可击（+5）
tOctNewServer_Data[3326415]["RewardItem"][5]["Attr"] = "0 1 3" -- Sturdiness(+5)（赠）*1
tOctNewServer_Data[3326415]["RewardItem"][6] = {}
tOctNewServer_Data[3326415]["RewardItem"][6]["Id"] = 4030605 -- XPKiller(+5)[4030605][属性:8][叠加:0][金币:0], 【表格】狂暴克星（+5）
tOctNewServer_Data[3326415]["RewardItem"][6]["Attr"] = "0 1 3" -- XPKiller(+5)（赠）*1
tOctNewServer_Data[3326415]["RewardItem"][7] = {}
tOctNewServer_Data[3326415]["RewardItem"][7]["Id"] = 4030705 -- Grabber(+5)[4030705][属性:8][叠加:0][金币:0], 【表格】风卷残云（+5）
tOctNewServer_Data[3326415]["RewardItem"][7]["Attr"] = "0 1 3" -- Grabber(+5)（赠）*1
tOctNewServer_Data[3326415]["RewardItem"][8] = {}
tOctNewServer_Data[3326415]["RewardItem"][8]["Id"] = 4030805 -- MPMaster(+5)[4030805][属性:8][叠加:0][金币:0], 【表格】回灵术（+5）
tOctNewServer_Data[3326415]["RewardItem"][8]["Attr"] = "0 1 3" -- MPMaster(+5)（赠）*1
tOctNewServer_Data[3326415]["RewardItem"][9] = {}
tOctNewServer_Data[3326415]["RewardItem"][9]["Id"] = 4030905 -- BossKiller(+5)[4030905][属性:8][叠加:0][金币:0], 【表格】杀破狼（+5）
tOctNewServer_Data[3326415]["RewardItem"][9]["Attr"] = "0 1 3" -- BossKiller(+5)（赠）*1
tOctNewServer_Data[3326415]["RewardItem"][10] = {}
tOctNewServer_Data[3326415]["RewardItem"][10]["Id"] = 4031005 -- NoMercy(+5)[4031005][属性:8][叠加:0][金币:0], 【表格】追命（+5）
tOctNewServer_Data[3326415]["RewardItem"][10]["Attr"] = "0 1 3" -- NoMercy(+5)（赠）*1
tOctNewServer_Data[3326415]["RewardItem"][11] = {}
tOctNewServer_Data[3326415]["RewardItem"][11]["Id"] = 4031105 -- XPBooster(+5)[4031105][属性:8][叠加:0][金币:0], 【表格】奔雷不息（+5）
tOctNewServer_Data[3326415]["RewardItem"][11]["Attr"] = "0 1 3" -- XPBooster(+5)（赠）*1
tOctNewServer_Data[3326415]["RewardItem"][12] = {}
tOctNewServer_Data[3326415]["RewardItem"][12]["Id"] = 4031205 -- FreeSoulBooster(+5)[4031205][属性:8][叠加:0][金币:0], 【表格】安魂定魄（+5）
tOctNewServer_Data[3326415]["RewardItem"][12]["Attr"] = "0 1 3" -- FreeSoulBooster(+5)（赠）*1
tOctNewServer_Data[3326415]["RewardItem"][13] = {}
tOctNewServer_Data[3326415]["RewardItem"][13]["Id"] = 4031305 -- Witchery(+5)[4031305][属性:8][叠加:0][金币:0], 【表格】夺魂（+5）
tOctNewServer_Data[3326415]["RewardItem"][13]["Attr"] = "0 1 3" -- Witchery(+5)（赠）*1
tOctNewServer_Data[3326415]["RewardItem"][14] = {}
tOctNewServer_Data[3326415]["RewardItem"][14]["Id"] = 4033605 -- Quench(+5)[4033605][属性:8][叠加:0][金币:0], 【表格】狂暴净化（+5）
tOctNewServer_Data[3326415]["RewardItem"][14]["Attr"] = "0 1 3" -- Quench(+5)（赠）*1
tOctNewServer_Data[3326415]["RewardItem"][15] = {}
tOctNewServer_Data[3326415]["RewardItem"][15]["Id"] = 4033105 -- TidalWave(+5)[4033105][属性:8][叠加:0][金币:0], 【表格】怒海狂涛（+5）
tOctNewServer_Data[3326415]["RewardItem"][15]["Attr"] = "0 1 3" -- TidalWave(+5)（赠）*1
tOctNewServer_Data[3326415]["RewardItem"][16] = {}
tOctNewServer_Data[3326415]["RewardItem"][16]["Id"] = 4033705 -- BloodFeast(+5)[4033705][属性:8][叠加:0][金币:0], 【表格】饮血盛宴（+5）
tOctNewServer_Data[3326415]["RewardItem"][16]["Attr"] = "0 1 3" -- BloodFeast(+5)（赠）*1
tOctNewServer_Data[3326415]["RewardItem"][17] = {}
tOctNewServer_Data[3326415]["RewardItem"][17]["Id"] = 4033805 -- LifeDrain(+5)[4033805][属性:8][叠加:0][金币:0], 【表格】生命汲取（+5）
tOctNewServer_Data[3326415]["RewardItem"][17]["Attr"] = "0 1 3" -- LifeDrain(+5)（赠）*1
tOctNewServer_Data[3326415]["RewardEffect"] = {}
tOctNewServer_Data[3326415]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tOctNewServer_Data[3326415]["RewardEffect"]["Effect"] = "angelwing"


tOctNewServer_Data[3326418] = {}
-- ===（+9）黄色神纹宝箱
-- ===索引: tOctNewServer_Data[3326418]
-- ===删除: 3326418,1
-- ===
-- ===
tOctNewServer_Data[3326418]["LogId"] = 12001637
tOctNewServer_Data[3326418]["DeleteItem"] = {}
tOctNewServer_Data[3326418]["DeleteItem"][1] = {}
tOctNewServer_Data[3326418]["DeleteItem"][1]["Id"] = 3326418 -- 【库】 3326418 【库里没有该物品】[属性:]
tOctNewServer_Data[3326418]["RewardItem"] = {}
tOctNewServer_Data[3326418]["RewardItem"][1] = {}
tOctNewServer_Data[3326418]["RewardItem"][1]["Id"] = 4030109 -- TortoiseBreaker(+9)[4030109][属性:8][叠加:0][金币:0], 【表格】破玄元（+9）
tOctNewServer_Data[3326418]["RewardItem"][1]["Attr"] = "0 1 3" -- TortoiseBreaker(+9)（赠）*1
tOctNewServer_Data[3326418]["RewardItem"][2] = {}
tOctNewServer_Data[3326418]["RewardItem"][2]["Id"] = 4030209 -- DrainingTouchBooster(+9)[4030209][属性:8][叠加:0][金币:0], 【表格】撼星诀（+9）
tOctNewServer_Data[3326418]["RewardItem"][2]["Attr"] = "0 1 3" -- DrainingTouchBooster(+9)（赠）*1
tOctNewServer_Data[3326418]["RewardItem"][3] = {}
tOctNewServer_Data[3326418]["RewardItem"][3]["Id"] = 4030309 -- BloodSpawnBooster(+9)[4030309][属性:8][叠加:0][金币:0], 【表格】血回元（+9）
tOctNewServer_Data[3326418]["RewardItem"][3]["Attr"] = "0 1 3" -- BloodSpawnBooster(+9)（赠）*1
tOctNewServer_Data[3326418]["RewardItem"][4] = {}
tOctNewServer_Data[3326418]["RewardItem"][4]["Id"] = 4030409 -- Healer(+9)[4030409][属性:8][叠加:0][金币:0], 【表格】万物生（+9）
tOctNewServer_Data[3326418]["RewardItem"][4]["Attr"] = "0 1 3" -- Healer(+9)（赠）*1
tOctNewServer_Data[3326418]["RewardItem"][5] = {}
tOctNewServer_Data[3326418]["RewardItem"][5]["Id"] = 4030509 -- Sturdiness(+9)[4030509][属性:8][叠加:0][金币:0], 【表格】无懈可击（+9）
tOctNewServer_Data[3326418]["RewardItem"][5]["Attr"] = "0 1 3" -- Sturdiness(+9)（赠）*1
tOctNewServer_Data[3326418]["RewardItem"][6] = {}
tOctNewServer_Data[3326418]["RewardItem"][6]["Id"] = 4030609 -- XPKiller(+9)[4030609][属性:8][叠加:0][金币:0], 【表格】狂暴克星（+9）
tOctNewServer_Data[3326418]["RewardItem"][6]["Attr"] = "0 1 3" -- XPKiller(+9)（赠）*1
tOctNewServer_Data[3326418]["RewardItem"][7] = {}
tOctNewServer_Data[3326418]["RewardItem"][7]["Id"] = 4030709 -- Grabber(+9)[4030709][属性:8][叠加:0][金币:0], 【表格】风卷残云（+9）
tOctNewServer_Data[3326418]["RewardItem"][7]["Attr"] = "0 1 3" -- Grabber(+9)（赠）*1
tOctNewServer_Data[3326418]["RewardItem"][8] = {}
tOctNewServer_Data[3326418]["RewardItem"][8]["Id"] = 4030809 -- MPMaster(+9)[4030809][属性:8][叠加:0][金币:0], 【表格】回灵术（+9）
tOctNewServer_Data[3326418]["RewardItem"][8]["Attr"] = "0 1 3" -- MPMaster(+9)（赠）*1
tOctNewServer_Data[3326418]["RewardItem"][9] = {}
tOctNewServer_Data[3326418]["RewardItem"][9]["Id"] = 4030909 -- BossKiller(+9)[4030909][属性:8][叠加:0][金币:0], 【表格】杀破狼（+9）
tOctNewServer_Data[3326418]["RewardItem"][9]["Attr"] = "0 1 3" -- BossKiller(+9)（赠）*1
tOctNewServer_Data[3326418]["RewardItem"][10] = {}
tOctNewServer_Data[3326418]["RewardItem"][10]["Id"] = 4031009 -- NoMercy(+9)[4031009][属性:8][叠加:0][金币:0], 【表格】追命（+9）
tOctNewServer_Data[3326418]["RewardItem"][10]["Attr"] = "0 1 3" -- NoMercy(+9)（赠）*1
tOctNewServer_Data[3326418]["RewardItem"][11] = {}
tOctNewServer_Data[3326418]["RewardItem"][11]["Id"] = 4031109 -- XPBooster(+9)[4031109][属性:8][叠加:0][金币:0], 【表格】奔雷不息（+9）
tOctNewServer_Data[3326418]["RewardItem"][11]["Attr"] = "0 1 3" -- XPBooster(+9)（赠）*1
tOctNewServer_Data[3326418]["RewardItem"][12] = {}
tOctNewServer_Data[3326418]["RewardItem"][12]["Id"] = 4031209 -- FreeSoulBooster(+9)[4031209][属性:8][叠加:0][金币:0], 【表格】安魂定魄（+9）
tOctNewServer_Data[3326418]["RewardItem"][12]["Attr"] = "0 1 3" -- FreeSoulBooster(+9)（赠）*1
tOctNewServer_Data[3326418]["RewardItem"][13] = {}
tOctNewServer_Data[3326418]["RewardItem"][13]["Id"] = 4031309 -- Witchery(+9)[4031309][属性:8][叠加:0][金币:0], 【表格】夺魂（+9）
tOctNewServer_Data[3326418]["RewardItem"][13]["Attr"] = "0 1 3" -- Witchery(+9)（赠）*1
tOctNewServer_Data[3326418]["RewardItem"][14] = {}
tOctNewServer_Data[3326418]["RewardItem"][14]["Id"] = 4033609 -- Quench(+9)[4033609][属性:8][叠加:0][金币:0], 【表格】狂暴净化（+9）
tOctNewServer_Data[3326418]["RewardItem"][14]["Attr"] = "0 1 3" -- Quench(+9)（赠）*1
tOctNewServer_Data[3326418]["RewardItem"][15] = {}
tOctNewServer_Data[3326418]["RewardItem"][15]["Id"] = 4033109 -- TidalWave(+9)[4033109][属性:8][叠加:0][金币:0], 【表格】怒海狂涛（+9）
tOctNewServer_Data[3326418]["RewardItem"][15]["Attr"] = "0 1 3" -- TidalWave(+9)（赠）*1
tOctNewServer_Data[3326418]["RewardItem"][16] = {}
tOctNewServer_Data[3326418]["RewardItem"][16]["Id"] = 4033709 -- BloodFeast(+9)[4033709][属性:8][叠加:0][金币:0], 【表格】饮血盛宴（+9）
tOctNewServer_Data[3326418]["RewardItem"][16]["Attr"] = "0 1 3" -- BloodFeast(+9)（赠）*1
tOctNewServer_Data[3326418]["RewardItem"][17] = {}
tOctNewServer_Data[3326418]["RewardItem"][17]["Id"] = 4033809 -- LifeDrain(+9)[4033809][属性:8][叠加:0][金币:0], 【表格】生命汲取（+9）
tOctNewServer_Data[3326418]["RewardItem"][17]["Attr"] = "0 1 3" -- LifeDrain(+9)（赠）*1
tOctNewServer_Data[3326418]["RewardEffect"] = {}
tOctNewServer_Data[3326418]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tOctNewServer_Data[3326418]["RewardEffect"]["Effect"] = "angelwing"


tOctNewServer_Data[3326413] = {}
-- ===（+2）稀有黄色神纹宝箱
-- ===索引: tOctNewServer_Data[3326413]
-- ===删除: 3326413,1
-- ===
-- ===
tOctNewServer_Data[3326413]["LogId"] = 12001637
tOctNewServer_Data[3326413]["DeleteItem"] = {}
tOctNewServer_Data[3326413]["DeleteItem"][1] = {}
tOctNewServer_Data[3326413]["DeleteItem"][1]["Id"] = 3326413 -- 【库】 3326413 【库里没有该物品】[属性:]
tOctNewServer_Data[3326413]["RewardItem"] = {}
tOctNewServer_Data[3326413]["RewardItem"][1] = {}
tOctNewServer_Data[3326413]["RewardItem"][1]["Id"] = 4031402 -- QuickMount(+2)[4031402][属性:8][叠加:0][金币:0], 【表格】策马扬鞭（+2）
tOctNewServer_Data[3326413]["RewardItem"][1]["Attr"] = "0 1 3" -- QuickMount(+2)（赠）*1
tOctNewServer_Data[3326413]["RewardItem"][2] = {}
tOctNewServer_Data[3326413]["RewardItem"][2]["Id"] = 4031502 -- Breakdown(+2)[4031502][属性:8][叠加:0][金币:0], 【表格】攻城掠地（+2）
tOctNewServer_Data[3326413]["RewardItem"][2]["Attr"] = "0 1 3" -- Breakdown(+2)（赠）*1
tOctNewServer_Data[3326413]["RewardItem"][3] = {}
tOctNewServer_Data[3326413]["RewardItem"][3]["Id"] = 4032002 -- Sanctity(+2)[4032002][属性:8][叠加:0][金币:0], 【表格】神罗天征（+2）
tOctNewServer_Data[3326413]["RewardItem"][3]["Attr"] = "0 1 3" -- Sanctity(+2)（赠）*1
tOctNewServer_Data[3326413]["RewardItem"][4] = {}
tOctNewServer_Data[3326413]["RewardItem"][4]["Id"] = 4032102 -- FireBlast(+2)[4032102][属性:8][叠加:0][金币:0], 【表格】爆炎诀（+2）
tOctNewServer_Data[3326413]["RewardItem"][4]["Attr"] = "0 1 3" -- FireBlast(+2)（赠）*1
tOctNewServer_Data[3326413]["RewardItem"][5] = {}
tOctNewServer_Data[3326413]["RewardItem"][5]["Id"] = 4032202 -- Serenity(+2)[4032202][属性:8][叠加:0][金币:0], 【表格】清心诀（+2）
tOctNewServer_Data[3326413]["RewardItem"][5]["Attr"] = "0 1 3" -- Serenity(+2)（赠）*1
tOctNewServer_Data[3326413]["RewardItem"][6] = {}
tOctNewServer_Data[3326413]["RewardItem"][6]["Id"] = 4032402 -- SoulChant(+2)[4032402][属性:8][叠加:0][金币:0], 【表格】祭灵诀（+2）
tOctNewServer_Data[3326413]["RewardItem"][6]["Attr"] = "0 1 3" -- SoulChant(+2)（赠）*1
tOctNewServer_Data[3326413]["RewardItem"][7] = {}
tOctNewServer_Data[3326413]["RewardItem"][7]["Id"] = 4032502 -- WideSwipe(+2)[4032502][属性:8][叠加:0][金币:0], 【表格】横扫千军（+2）
tOctNewServer_Data[3326413]["RewardItem"][7]["Attr"] = "0 1 3" -- WideSwipe(+2)（赠）*1
tOctNewServer_Data[3326413]["RewardItem"][8] = {}
tOctNewServer_Data[3326413]["RewardItem"][8]["Id"] = 4032602 -- Nirvana(+2)[4032602][属性:8][叠加:0][金币:0], 【表格】涅槃重生（+2）
tOctNewServer_Data[3326413]["RewardItem"][8]["Attr"] = "0 1 3" -- Nirvana(+2)（赠）*1
tOctNewServer_Data[3326413]["RewardItem"][9] = {}
tOctNewServer_Data[3326413]["RewardItem"][9]["Id"] = 4032702 -- Sharpness(+2)[4032702][属性:8][叠加:0][金币:0], 【表格】锋芒毕露（+2）
tOctNewServer_Data[3326413]["RewardItem"][9]["Attr"] = "0 1 3" -- Sharpness(+2)（赠）*1
tOctNewServer_Data[3326413]["RewardItem"][10] = {}
tOctNewServer_Data[3326413]["RewardItem"][10]["Id"] = 4032802 -- Evocation(+2)[4032802][属性:8][叠加:0][金币:0], 【表格】魂兮归来（+2）
tOctNewServer_Data[3326413]["RewardItem"][10]["Attr"] = "0 1 3" -- Evocation(+2)（赠）*1
tOctNewServer_Data[3326413]["RewardItem"][11] = {}
tOctNewServer_Data[3326413]["RewardItem"][11]["Id"] = 4031602 -- Barrier(+2)[4031602][属性:8][叠加:0][金币:0], 【表格】玄武护体（+2）
tOctNewServer_Data[3326413]["RewardItem"][11]["Attr"] = "0 1 3" -- Barrier(+2)（赠）*1
tOctNewServer_Data[3326413]["RewardItem"][12] = {}
tOctNewServer_Data[3326413]["RewardItem"][12]["Id"] = 4032302 -- Wonder(+2)[4032302][属性:8][叠加:0][金币:0], 【表格】天衣无缝（+2）
tOctNewServer_Data[3326413]["RewardItem"][12]["Attr"] = "0 1 3" -- Wonder(+2)（赠）*1
tOctNewServer_Data[3326413]["RewardItem"][13] = {}
tOctNewServer_Data[3326413]["RewardItem"][13]["Id"] = 4032902 -- Overwhelm(+2)[4032902][属性:8][叠加:0][金币:0], 【表格】例无虚发（+2）
tOctNewServer_Data[3326413]["RewardItem"][13]["Attr"] = "0 1 3" -- Overwhelm(+2)（赠）*1
tOctNewServer_Data[3326413]["RewardItem"][14] = {}
tOctNewServer_Data[3326413]["RewardItem"][14]["Id"] = 4033002 -- Judgment(+2)[4033002][属性:8][叠加:0][金币:0], 【表格】审判（+2）
tOctNewServer_Data[3326413]["RewardItem"][14]["Attr"] = "0 1 3" -- Judgment(+2)（赠）*1
tOctNewServer_Data[3326413]["RewardItem"][15] = {}
tOctNewServer_Data[3326413]["RewardItem"][15]["Id"] = 4033902 -- ReverseMagic(+2)[4033902][属性:8][叠加:0][金币:0], 【表格】斗转星移（+2）
tOctNewServer_Data[3326413]["RewardItem"][15]["Attr"] = "0 1 3" -- ReverseMagic(+2)（赠）*1
tOctNewServer_Data[3326413]["RewardItem"][16] = {}
tOctNewServer_Data[3326413]["RewardItem"][16]["Id"] = 4034002 -- DivineShield(+2)[4034002][属性:8][叠加:0][金币:0], 【表格】乾坤护法（+2）
tOctNewServer_Data[3326413]["RewardItem"][16]["Attr"] = "0 1 3" -- DivineShield(+2)（赠）*1
tOctNewServer_Data[3326413]["RewardItem"][17] = {}
tOctNewServer_Data[3326413]["RewardItem"][17]["Id"] = 4034102 -- Deterrence(+2)[4034102][属性:8][叠加:0][金币:0], 【表格】威慑（+2）
tOctNewServer_Data[3326413]["RewardItem"][17]["Attr"] = "0 1 3" -- Deterrence(+2)（赠）*1
tOctNewServer_Data[3326413]["RewardItem"][18] = {}
tOctNewServer_Data[3326413]["RewardItem"][18]["Id"] = 4033402 -- TacitStrike(+2)[4033402][属性:8][叠加:0][金币:0], 【表格】会心一击（+2）
tOctNewServer_Data[3326413]["RewardItem"][18]["Attr"] = "0 1 3" -- TacitStrike(+2)（赠）*1
tOctNewServer_Data[3326413]["RewardItem"][19] = {}
tOctNewServer_Data[3326413]["RewardItem"][19]["Id"] = 4033302 -- DeadlySight(+2)[4033302][属性:8][叠加:0][金币:0], 【表格】致命准星（+2）
tOctNewServer_Data[3326413]["RewardItem"][19]["Attr"] = "0 1 3" -- DeadlySight(+2)（赠）*1
tOctNewServer_Data[3326413]["RewardItem"][20] = {}
tOctNewServer_Data[3326413]["RewardItem"][20]["Id"] = 4034502 --  4034502 【库里没有该物品】, 【表格】妙手回春（+2）
tOctNewServer_Data[3326413]["RewardItem"][20]["Attr"] = "0 1 3" --  4034502 【库里没有该物品】（赠）*1
tOctNewServer_Data[3326413]["RewardItem"][21] = {}
tOctNewServer_Data[3326413]["RewardItem"][21]["Id"] = 4034802 --  4034802 【库里没有该物品】, 【表格】碎玄元（+2）
tOctNewServer_Data[3326413]["RewardItem"][21]["Attr"] = "0 1 3" --  4034802 【库里没有该物品】（赠）*1
tOctNewServer_Data[3326413]["RewardItem"][22] = {}
tOctNewServer_Data[3326413]["RewardItem"][22]["Id"] = 4034402 --  4034402 【库里没有该物品】, 【表格】沧澜破（+2）
tOctNewServer_Data[3326413]["RewardItem"][22]["Attr"] = "0 1 3" --  4034402 【库里没有该物品】（赠）*1
tOctNewServer_Data[3326413]["RewardItem"][23] = {}
tOctNewServer_Data[3326413]["RewardItem"][23]["Id"] = 4034302 --  4034302 【库里没有该物品】, 【表格】罡气护体（+2）
tOctNewServer_Data[3326413]["RewardItem"][23]["Attr"] = "0 1 3" --  4034302 【库里没有该物品】（赠）*1
tOctNewServer_Data[3326413]["RewardItem"][24] = {}
tOctNewServer_Data[3326413]["RewardItem"][24]["Id"] = 4034202 --  4034202 【库里没有该物品】, 【表格】乾坤妙法（+2）
tOctNewServer_Data[3326413]["RewardItem"][24]["Attr"] = "0 1 3" --  4034202 【库里没有该物品】（赠）*1
tOctNewServer_Data[3326413]["RewardItem"][25] = {}
tOctNewServer_Data[3326413]["RewardItem"][25]["Id"] = 4034702 --  4034702 【库里没有该物品】, 【表格】天地化盾（+2）
tOctNewServer_Data[3326413]["RewardItem"][25]["Attr"] = "0 1 3" --  4034702 【库里没有该物品】（赠）*1
tOctNewServer_Data[3326413]["RewardItem"][26] = {}
tOctNewServer_Data[3326413]["RewardItem"][26]["Id"] = 4034602 --  4034602 【库里没有该物品】, 【表格】碎魔屏障（+2）
tOctNewServer_Data[3326413]["RewardItem"][26]["Attr"] = "0 1 3" --  4034602 【库里没有该物品】（赠）*1
tOctNewServer_Data[3326413]["RewardEffect"] = {}
tOctNewServer_Data[3326413]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tOctNewServer_Data[3326413]["RewardEffect"]["Effect"] = "angelwing"


tOctNewServer_Data[3326416] = {}
-- ===（+5）稀有黄色神纹宝箱
-- ===索引: tOctNewServer_Data[3326416]
-- ===删除: 3326416,1
-- ===
-- ===
tOctNewServer_Data[3326416]["LogId"] = 12001637
tOctNewServer_Data[3326416]["DeleteItem"] = {}
tOctNewServer_Data[3326416]["DeleteItem"][1] = {}
tOctNewServer_Data[3326416]["DeleteItem"][1]["Id"] = 3326416 -- 【库】 3326416 【库里没有该物品】[属性:]
tOctNewServer_Data[3326416]["RewardItem"] = {}
tOctNewServer_Data[3326416]["RewardItem"][1] = {}
tOctNewServer_Data[3326416]["RewardItem"][1]["Id"] = 4031405 -- QuickMount(+5)[4031405][属性:8][叠加:0][金币:0], 【表格】策马扬鞭（+5）
tOctNewServer_Data[3326416]["RewardItem"][1]["Attr"] = "0 1 3" -- QuickMount(+5)（赠）*1
tOctNewServer_Data[3326416]["RewardItem"][2] = {}
tOctNewServer_Data[3326416]["RewardItem"][2]["Id"] = 4031505 -- Breakdown(+5)[4031505][属性:8][叠加:0][金币:0], 【表格】攻城掠地（+5）
tOctNewServer_Data[3326416]["RewardItem"][2]["Attr"] = "0 1 3" -- Breakdown(+5)（赠）*1
tOctNewServer_Data[3326416]["RewardItem"][3] = {}
tOctNewServer_Data[3326416]["RewardItem"][3]["Id"] = 4032005 -- Sanctity(+5)[4032005][属性:8][叠加:0][金币:0], 【表格】神罗天征（+5）
tOctNewServer_Data[3326416]["RewardItem"][3]["Attr"] = "0 1 3" -- Sanctity(+5)（赠）*1
tOctNewServer_Data[3326416]["RewardItem"][4] = {}
tOctNewServer_Data[3326416]["RewardItem"][4]["Id"] = 4032105 -- FireBlast(+5)[4032105][属性:8][叠加:0][金币:0], 【表格】爆炎诀（+5）
tOctNewServer_Data[3326416]["RewardItem"][4]["Attr"] = "0 1 3" -- FireBlast(+5)（赠）*1
tOctNewServer_Data[3326416]["RewardItem"][5] = {}
tOctNewServer_Data[3326416]["RewardItem"][5]["Id"] = 4032205 -- Serenity(+5)[4032205][属性:8][叠加:0][金币:0], 【表格】清心诀（+5）
tOctNewServer_Data[3326416]["RewardItem"][5]["Attr"] = "0 1 3" -- Serenity(+5)（赠）*1
tOctNewServer_Data[3326416]["RewardItem"][6] = {}
tOctNewServer_Data[3326416]["RewardItem"][6]["Id"] = 4032405 -- SoulChant(+5)[4032405][属性:8][叠加:0][金币:0], 【表格】祭灵诀（+5）
tOctNewServer_Data[3326416]["RewardItem"][6]["Attr"] = "0 1 3" -- SoulChant(+5)（赠）*1
tOctNewServer_Data[3326416]["RewardItem"][7] = {}
tOctNewServer_Data[3326416]["RewardItem"][7]["Id"] = 4032505 -- WideSwipe(+5)[4032505][属性:8][叠加:0][金币:0], 【表格】横扫千军（+5）
tOctNewServer_Data[3326416]["RewardItem"][7]["Attr"] = "0 1 3" -- WideSwipe(+5)（赠）*1
tOctNewServer_Data[3326416]["RewardItem"][8] = {}
tOctNewServer_Data[3326416]["RewardItem"][8]["Id"] = 4032605 -- Nirvana(+5)[4032605][属性:8][叠加:0][金币:0], 【表格】涅槃重生（+5）
tOctNewServer_Data[3326416]["RewardItem"][8]["Attr"] = "0 1 3" -- Nirvana(+5)（赠）*1
tOctNewServer_Data[3326416]["RewardItem"][9] = {}
tOctNewServer_Data[3326416]["RewardItem"][9]["Id"] = 4032705 -- Sharpness(+5)[4032705][属性:8][叠加:0][金币:0], 【表格】锋芒毕露（+5）
tOctNewServer_Data[3326416]["RewardItem"][9]["Attr"] = "0 1 3" -- Sharpness(+5)（赠）*1
tOctNewServer_Data[3326416]["RewardItem"][10] = {}
tOctNewServer_Data[3326416]["RewardItem"][10]["Id"] = 4032805 -- Evocation(+5)[4032805][属性:8][叠加:0][金币:0], 【表格】魂兮归来（+5）
tOctNewServer_Data[3326416]["RewardItem"][10]["Attr"] = "0 1 3" -- Evocation(+5)（赠）*1
tOctNewServer_Data[3326416]["RewardItem"][11] = {}
tOctNewServer_Data[3326416]["RewardItem"][11]["Id"] = 4031605 -- Barrier(+5)[4031605][属性:8][叠加:0][金币:0], 【表格】玄武护体（+5）
tOctNewServer_Data[3326416]["RewardItem"][11]["Attr"] = "0 1 3" -- Barrier(+5)（赠）*1
tOctNewServer_Data[3326416]["RewardItem"][12] = {}
tOctNewServer_Data[3326416]["RewardItem"][12]["Id"] = 4032305 -- Wonder(+5)[4032305][属性:8][叠加:0][金币:0], 【表格】天衣无缝（+5）
tOctNewServer_Data[3326416]["RewardItem"][12]["Attr"] = "0 1 3" -- Wonder(+5)（赠）*1
tOctNewServer_Data[3326416]["RewardItem"][13] = {}
tOctNewServer_Data[3326416]["RewardItem"][13]["Id"] = 4032905 -- Overwhelm(+5)[4032905][属性:8][叠加:0][金币:0], 【表格】例无虚发（+5）
tOctNewServer_Data[3326416]["RewardItem"][13]["Attr"] = "0 1 3" -- Overwhelm(+5)（赠）*1
tOctNewServer_Data[3326416]["RewardItem"][14] = {}
tOctNewServer_Data[3326416]["RewardItem"][14]["Id"] = 4033005 -- Judgment(+5)[4033005][属性:8][叠加:0][金币:0], 【表格】审判（+5）
tOctNewServer_Data[3326416]["RewardItem"][14]["Attr"] = "0 1 3" -- Judgment(+5)（赠）*1
tOctNewServer_Data[3326416]["RewardItem"][15] = {}
tOctNewServer_Data[3326416]["RewardItem"][15]["Id"] = 4033905 -- ReverseMagic(+5)[4033905][属性:8][叠加:0][金币:0], 【表格】斗转星移（+5）
tOctNewServer_Data[3326416]["RewardItem"][15]["Attr"] = "0 1 3" -- ReverseMagic(+5)（赠）*1
tOctNewServer_Data[3326416]["RewardItem"][16] = {}
tOctNewServer_Data[3326416]["RewardItem"][16]["Id"] = 4034005 -- DivineShield(+5)[4034005][属性:8][叠加:0][金币:0], 【表格】乾坤护法（+5）
tOctNewServer_Data[3326416]["RewardItem"][16]["Attr"] = "0 1 3" -- DivineShield(+5)（赠）*1
tOctNewServer_Data[3326416]["RewardItem"][17] = {}
tOctNewServer_Data[3326416]["RewardItem"][17]["Id"] = 4034105 -- Deterrence(+5)[4034105][属性:8][叠加:0][金币:0], 【表格】威慑（+5）
tOctNewServer_Data[3326416]["RewardItem"][17]["Attr"] = "0 1 3" -- Deterrence(+5)（赠）*1
tOctNewServer_Data[3326416]["RewardItem"][18] = {}
tOctNewServer_Data[3326416]["RewardItem"][18]["Id"] = 4033405 -- TacitStrike(+5)[4033405][属性:8][叠加:0][金币:0], 【表格】会心一击（+5）
tOctNewServer_Data[3326416]["RewardItem"][18]["Attr"] = "0 1 3" -- TacitStrike(+5)（赠）*1
tOctNewServer_Data[3326416]["RewardItem"][19] = {}
tOctNewServer_Data[3326416]["RewardItem"][19]["Id"] = 4033305 -- DeadlySight(+5)[4033305][属性:8][叠加:0][金币:0], 【表格】致命准星（+5）
tOctNewServer_Data[3326416]["RewardItem"][19]["Attr"] = "0 1 3" -- DeadlySight(+5)（赠）*1
tOctNewServer_Data[3326416]["RewardItem"][20] = {}
tOctNewServer_Data[3326416]["RewardItem"][20]["Id"] = 4034505 --  4034505 【库里没有该物品】, 【表格】妙手回春（+5）
tOctNewServer_Data[3326416]["RewardItem"][20]["Attr"] = "0 1 3" --  4034505 【库里没有该物品】（赠）*1
tOctNewServer_Data[3326416]["RewardItem"][21] = {}
tOctNewServer_Data[3326416]["RewardItem"][21]["Id"] = 4034805 --  4034805 【库里没有该物品】, 【表格】碎玄元（+5）
tOctNewServer_Data[3326416]["RewardItem"][21]["Attr"] = "0 1 3" --  4034805 【库里没有该物品】（赠）*1
tOctNewServer_Data[3326416]["RewardItem"][22] = {}
tOctNewServer_Data[3326416]["RewardItem"][22]["Id"] = 4034405 --  4034405 【库里没有该物品】, 【表格】沧澜破（+5）
tOctNewServer_Data[3326416]["RewardItem"][22]["Attr"] = "0 1 3" --  4034405 【库里没有该物品】（赠）*1
tOctNewServer_Data[3326416]["RewardItem"][23] = {}
tOctNewServer_Data[3326416]["RewardItem"][23]["Id"] = 4034305 --  4034305 【库里没有该物品】, 【表格】罡气护体（+5）
tOctNewServer_Data[3326416]["RewardItem"][23]["Attr"] = "0 1 3" --  4034305 【库里没有该物品】（赠）*1
tOctNewServer_Data[3326416]["RewardItem"][24] = {}
tOctNewServer_Data[3326416]["RewardItem"][24]["Id"] = 4034205 --  4034205 【库里没有该物品】, 【表格】乾坤妙法（+5）
tOctNewServer_Data[3326416]["RewardItem"][24]["Attr"] = "0 1 3" --  4034205 【库里没有该物品】（赠）*1
tOctNewServer_Data[3326416]["RewardItem"][25] = {}
tOctNewServer_Data[3326416]["RewardItem"][25]["Id"] = 4034705 --  4034705 【库里没有该物品】, 【表格】天地化盾（+5）
tOctNewServer_Data[3326416]["RewardItem"][25]["Attr"] = "0 1 3" --  4034705 【库里没有该物品】（赠）*1
tOctNewServer_Data[3326416]["RewardItem"][26] = {}
tOctNewServer_Data[3326416]["RewardItem"][26]["Id"] = 4034605 --  4034605 【库里没有该物品】, 【表格】碎魔屏障（+5）
tOctNewServer_Data[3326416]["RewardItem"][26]["Attr"] = "0 1 3" --  4034605 【库里没有该物品】（赠）*1
tOctNewServer_Data[3326416]["RewardEffect"] = {}
tOctNewServer_Data[3326416]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tOctNewServer_Data[3326416]["RewardEffect"]["Effect"] = "angelwing"


tOctNewServer_Data[3326419] = {}
-- ===（+9）稀有黄色神纹宝箱
-- ===索引: tOctNewServer_Data[3326419]
-- ===删除: 3326419,1
-- ===
-- ===
tOctNewServer_Data[3326419]["LogId"] = 12001637
tOctNewServer_Data[3326419]["DeleteItem"] = {}
tOctNewServer_Data[3326419]["DeleteItem"][1] = {}
tOctNewServer_Data[3326419]["DeleteItem"][1]["Id"] = 3326419 -- 【库】 3326419 【库里没有该物品】[属性:]
tOctNewServer_Data[3326419]["RewardItem"] = {}
tOctNewServer_Data[3326419]["RewardItem"][1] = {}
tOctNewServer_Data[3326419]["RewardItem"][1]["Id"] = 4031409 -- QuickMount(+9)[4031409][属性:8][叠加:0][金币:0], 【表格】策马扬鞭（+9）
tOctNewServer_Data[3326419]["RewardItem"][1]["Attr"] = "0 1 3" -- QuickMount(+9)（赠）*1
tOctNewServer_Data[3326419]["RewardItem"][2] = {}
tOctNewServer_Data[3326419]["RewardItem"][2]["Id"] = 4031509 -- Breakdown(+9)[4031509][属性:8][叠加:0][金币:0], 【表格】攻城掠地（+9）
tOctNewServer_Data[3326419]["RewardItem"][2]["Attr"] = "0 1 3" -- Breakdown(+9)（赠）*1
tOctNewServer_Data[3326419]["RewardItem"][3] = {}
tOctNewServer_Data[3326419]["RewardItem"][3]["Id"] = 4032009 -- Sanctity(+9)[4032009][属性:8][叠加:0][金币:0], 【表格】神罗天征（+9）
tOctNewServer_Data[3326419]["RewardItem"][3]["Attr"] = "0 1 3" -- Sanctity(+9)（赠）*1
tOctNewServer_Data[3326419]["RewardItem"][4] = {}
tOctNewServer_Data[3326419]["RewardItem"][4]["Id"] = 4032109 -- FireBlast(+9)[4032109][属性:8][叠加:0][金币:0], 【表格】爆炎诀（+9）
tOctNewServer_Data[3326419]["RewardItem"][4]["Attr"] = "0 1 3" -- FireBlast(+9)（赠）*1
tOctNewServer_Data[3326419]["RewardItem"][5] = {}
tOctNewServer_Data[3326419]["RewardItem"][5]["Id"] = 4032209 -- Serenity(+9)[4032209][属性:8][叠加:0][金币:0], 【表格】清心诀（+9）
tOctNewServer_Data[3326419]["RewardItem"][5]["Attr"] = "0 1 3" -- Serenity(+9)（赠）*1
tOctNewServer_Data[3326419]["RewardItem"][6] = {}
tOctNewServer_Data[3326419]["RewardItem"][6]["Id"] = 4032409 -- SoulChant(+9)[4032409][属性:8][叠加:0][金币:0], 【表格】祭灵诀（+9）
tOctNewServer_Data[3326419]["RewardItem"][6]["Attr"] = "0 1 3" -- SoulChant(+9)（赠）*1
tOctNewServer_Data[3326419]["RewardItem"][7] = {}
tOctNewServer_Data[3326419]["RewardItem"][7]["Id"] = 4032509 -- WideSwipe(+9)[4032509][属性:8][叠加:0][金币:0], 【表格】横扫千军（+9）
tOctNewServer_Data[3326419]["RewardItem"][7]["Attr"] = "0 1 3" -- WideSwipe(+9)（赠）*1
tOctNewServer_Data[3326419]["RewardItem"][8] = {}
tOctNewServer_Data[3326419]["RewardItem"][8]["Id"] = 4032609 -- Nirvana(+9)[4032609][属性:8][叠加:0][金币:0], 【表格】涅槃重生（+9）
tOctNewServer_Data[3326419]["RewardItem"][8]["Attr"] = "0 1 3" -- Nirvana(+9)（赠）*1
tOctNewServer_Data[3326419]["RewardItem"][9] = {}
tOctNewServer_Data[3326419]["RewardItem"][9]["Id"] = 4032709 -- Sharpness(+9)[4032709][属性:8][叠加:0][金币:0], 【表格】锋芒毕露（+9）
tOctNewServer_Data[3326419]["RewardItem"][9]["Attr"] = "0 1 3" -- Sharpness(+9)（赠）*1
tOctNewServer_Data[3326419]["RewardItem"][10] = {}
tOctNewServer_Data[3326419]["RewardItem"][10]["Id"] = 4032809 -- Evocation(+9)[4032809][属性:8][叠加:0][金币:0], 【表格】魂兮归来（+9）
tOctNewServer_Data[3326419]["RewardItem"][10]["Attr"] = "0 1 3" -- Evocation(+9)（赠）*1
tOctNewServer_Data[3326419]["RewardItem"][11] = {}
tOctNewServer_Data[3326419]["RewardItem"][11]["Id"] = 4031609 -- Barrier(+9)[4031609][属性:8][叠加:0][金币:0], 【表格】玄武护体（+9）
tOctNewServer_Data[3326419]["RewardItem"][11]["Attr"] = "0 1 3" -- Barrier(+9)（赠）*1
tOctNewServer_Data[3326419]["RewardItem"][12] = {}
tOctNewServer_Data[3326419]["RewardItem"][12]["Id"] = 4032309 -- Wonder(+9)[4032309][属性:8][叠加:0][金币:0], 【表格】天衣无缝（+9）
tOctNewServer_Data[3326419]["RewardItem"][12]["Attr"] = "0 1 3" -- Wonder(+9)（赠）*1
tOctNewServer_Data[3326419]["RewardItem"][13] = {}
tOctNewServer_Data[3326419]["RewardItem"][13]["Id"] = 4032909 -- Overwhelm(+9)[4032909][属性:8][叠加:0][金币:0], 【表格】例无虚发（+9）
tOctNewServer_Data[3326419]["RewardItem"][13]["Attr"] = "0 1 3" -- Overwhelm(+9)（赠）*1
tOctNewServer_Data[3326419]["RewardItem"][14] = {}
tOctNewServer_Data[3326419]["RewardItem"][14]["Id"] = 4033009 -- Judgment(+9)[4033009][属性:8][叠加:0][金币:0], 【表格】审判（+9）
tOctNewServer_Data[3326419]["RewardItem"][14]["Attr"] = "0 1 3" -- Judgment(+9)（赠）*1
tOctNewServer_Data[3326419]["RewardItem"][15] = {}
tOctNewServer_Data[3326419]["RewardItem"][15]["Id"] = 4033909 -- ReverseMagic(+9)[4033909][属性:8][叠加:0][金币:0], 【表格】斗转星移（+9）
tOctNewServer_Data[3326419]["RewardItem"][15]["Attr"] = "0 1 3" -- ReverseMagic(+9)（赠）*1
tOctNewServer_Data[3326419]["RewardItem"][16] = {}
tOctNewServer_Data[3326419]["RewardItem"][16]["Id"] = 4034009 -- DivineShield(+9)[4034009][属性:8][叠加:0][金币:0], 【表格】乾坤护法（+9）
tOctNewServer_Data[3326419]["RewardItem"][16]["Attr"] = "0 1 3" -- DivineShield(+9)（赠）*1
tOctNewServer_Data[3326419]["RewardItem"][17] = {}
tOctNewServer_Data[3326419]["RewardItem"][17]["Id"] = 4034109 -- Deterrence(+9)[4034109][属性:8][叠加:0][金币:0], 【表格】威慑（+9）
tOctNewServer_Data[3326419]["RewardItem"][17]["Attr"] = "0 1 3" -- Deterrence(+9)（赠）*1
tOctNewServer_Data[3326419]["RewardItem"][18] = {}
tOctNewServer_Data[3326419]["RewardItem"][18]["Id"] = 4033409 -- TacitStrike(+9)[4033409][属性:8][叠加:0][金币:0], 【表格】会心一击（+9）
tOctNewServer_Data[3326419]["RewardItem"][18]["Attr"] = "0 1 3" -- TacitStrike(+9)（赠）*1
tOctNewServer_Data[3326419]["RewardItem"][19] = {}
tOctNewServer_Data[3326419]["RewardItem"][19]["Id"] = 4033309 -- DeadlySight(+9)[4033309][属性:8][叠加:0][金币:0], 【表格】致命准星（+9）
tOctNewServer_Data[3326419]["RewardItem"][19]["Attr"] = "0 1 3" -- DeadlySight(+9)（赠）*1
tOctNewServer_Data[3326419]["RewardItem"][20] = {}
tOctNewServer_Data[3326419]["RewardItem"][20]["Id"] = 4034509 --  4034509 【库里没有该物品】, 【表格】妙手回春（+9）
tOctNewServer_Data[3326419]["RewardItem"][20]["Attr"] = "0 1 3" --  4034509 【库里没有该物品】（赠）*1
tOctNewServer_Data[3326419]["RewardItem"][21] = {}
tOctNewServer_Data[3326419]["RewardItem"][21]["Id"] = 4034809 --  4034809 【库里没有该物品】, 【表格】碎玄元（+9）
tOctNewServer_Data[3326419]["RewardItem"][21]["Attr"] = "0 1 3" --  4034809 【库里没有该物品】（赠）*1
tOctNewServer_Data[3326419]["RewardItem"][22] = {}
tOctNewServer_Data[3326419]["RewardItem"][22]["Id"] = 4034409 --  4034409 【库里没有该物品】, 【表格】沧澜破（+9）
tOctNewServer_Data[3326419]["RewardItem"][22]["Attr"] = "0 1 3" --  4034409 【库里没有该物品】（赠）*1
tOctNewServer_Data[3326419]["RewardItem"][23] = {}
tOctNewServer_Data[3326419]["RewardItem"][23]["Id"] = 4034309 --  4034309 【库里没有该物品】, 【表格】罡气护体（+9）
tOctNewServer_Data[3326419]["RewardItem"][23]["Attr"] = "0 1 3" --  4034309 【库里没有该物品】（赠）*1
tOctNewServer_Data[3326419]["RewardItem"][24] = {}
tOctNewServer_Data[3326419]["RewardItem"][24]["Id"] = 4034209 --  4034209 【库里没有该物品】, 【表格】乾坤妙法（+9）
tOctNewServer_Data[3326419]["RewardItem"][24]["Attr"] = "0 1 3" --  4034209 【库里没有该物品】（赠）*1
tOctNewServer_Data[3326419]["RewardItem"][25] = {}
tOctNewServer_Data[3326419]["RewardItem"][25]["Id"] = 4034709 --  4034709 【库里没有该物品】, 【表格】天地化盾（+9）
tOctNewServer_Data[3326419]["RewardItem"][25]["Attr"] = "0 1 3" --  4034709 【库里没有该物品】（赠）*1
tOctNewServer_Data[3326419]["RewardItem"][26] = {}
tOctNewServer_Data[3326419]["RewardItem"][26]["Id"] = 4034609 --  4034609 【库里没有该物品】, 【表格】碎魔屏障（+9）
tOctNewServer_Data[3326419]["RewardItem"][26]["Attr"] = "0 1 3" --  4034609 【库里没有该物品】（赠）*1
tOctNewServer_Data[3326419]["RewardEffect"] = {}
tOctNewServer_Data[3326419]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tOctNewServer_Data[3326419]["RewardEffect"]["Effect"] = "angelwing"


tOctNewServer_Data[3326420] = {}
-- ===副职业就职宝箱
-- ===索引: tOctNewServer_Data[3326420]
-- ===删除: 3326420,1
-- ===
-- ===
tOctNewServer_Data[3326420]["LogId"] = 12001637
tOctNewServer_Data[3326420]["DeleteItem"] = {}
tOctNewServer_Data[3326420]["DeleteItem"][1] = {}
tOctNewServer_Data[3326420]["DeleteItem"][1]["Id"] = 3326420 -- 【库】 3326420 【库里没有该物品】[属性:]
tOctNewServer_Data[3326420]["RewardCultivation"] = {}
tOctNewServer_Data[3326420]["RewardCultivation"]["Value"] = 260000 -- 修行值, 【需求】修行值26W
tOctNewServer_Data[3326420]["RewardItem"] = {}
tOctNewServer_Data[3326420]["RewardItem"][1] = {}
tOctNewServer_Data[3326420]["RewardItem"][1]["Id"] = 721259 -- CelestialStone[721259][属性:0][叠加:10][金币:0], 【表格】涅槃灵石
tOctNewServer_Data[3326420]["RewardItem"][1]["Attr"] = "0 5" -- CelestialStone*5
tOctNewServer_Data[3326420]["RewardItem"][2] = {}
tOctNewServer_Data[3326420]["RewardItem"][2]["Id"] = 723087 -- LuckyAmulet[723087][属性:0][叠加:10000][金币:0], 【表格】辟邪护符
tOctNewServer_Data[3326420]["RewardItem"][2]["Attr"] = "0 20" -- LuckyAmulet*20（[错误]物品数量超10个）
tOctNewServer_Data[3326420]["RewardItem"][3] = {}
tOctNewServer_Data[3326420]["RewardItem"][3]["Id"] = 723903 -- Saddle[723903][属性:0][叠加:100][金币:0], 【表格】被偷走的马鞍
tOctNewServer_Data[3326420]["RewardItem"][3]["Attr"] = "0 40" -- Saddle*40（[错误]物品数量超10个）
tOctNewServer_Data[3326420]["RewardItem"][4] = {}
tOctNewServer_Data[3326420]["RewardItem"][4]["Id"] = 721261 -- Bomb[721261][属性:0][叠加:10000][金币:1], 【表格】破城火雷
tOctNewServer_Data[3326420]["RewardItem"][4]["Attr"] = "0 10" -- Bomb*10
tOctNewServer_Data[3326420]["RewardItem"][5] = {}
tOctNewServer_Data[3326420]["RewardItem"][5]["Id"] = 1088001 -- Meteor[1088001][属性:0][叠加:0][金币:10000], 【表格】流星
tOctNewServer_Data[3326420]["RewardItem"][5]["Attr"] = "0 10" -- Meteor*10
tOctNewServer_Data[3326420]["RewardItem"][6] = {}
tOctNewServer_Data[3326420]["RewardItem"][6]["Id"] = 711188 -- YinYangFruit[711188][属性:8][叠加:10][金币:0], 【表格】金刚灵果
tOctNewServer_Data[3326420]["RewardItem"][6]["Attr"] = "0 1" -- YinYangFruit*1
tOctNewServer_Data[3326420]["RewardItem"][7] = {}
tOctNewServer_Data[3326420]["RewardItem"][7]["Id"] = 711679 -- PerformerCard[711679][属性:0][叠加:0][金币:0], 【表格】炫舞者就职公文
tOctNewServer_Data[3326420]["RewardItem"][7]["Attr"] = "0 1" -- PerformerCard*1
tOctNewServer_Data[3326420]["RewardEffect"] = {}
tOctNewServer_Data[3326420]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tOctNewServer_Data[3326420]["RewardEffect"]["Effect"] = "angelwing"


tOctNewServer_Data[3326421] = {}
-- ===初级内功宝箱
-- ===索引: tOctNewServer_Data[3326421]
-- ===删除: 3326421,1
-- ===
-- ===
tOctNewServer_Data[3326421]["LogId"] = 12001637
tOctNewServer_Data[3326421]["DeleteItem"] = {}
tOctNewServer_Data[3326421]["DeleteItem"][1] = {}
tOctNewServer_Data[3326421]["DeleteItem"][1]["Id"] = 3326421 -- 【库】 3326421 【库里没有该物品】[属性:]
tOctNewServer_Data[3326421]["RewardRepairValue"] = {}
tOctNewServer_Data[3326421]["RewardRepairValue"]["Value"] = 72000 -- 修为值, 【需求】7.2W修为值
tOctNewServer_Data[3326421]["RewardItem"] = {}
tOctNewServer_Data[3326421]["RewardItem"][1] = {}
tOctNewServer_Data[3326421]["RewardItem"][1]["Id"] = 3005365 -- UniversalConcept(A)[3005365][属性:9][叠加:0][金币:0], 【表格】混元功·上篇
tOctNewServer_Data[3326421]["RewardItem"][1]["Attr"] = "0 1" -- UniversalConcept(A)*1
tOctNewServer_Data[3326421]["RewardItem"][2] = {}
tOctNewServer_Data[3326421]["RewardItem"][2]["Id"] = 3005366 -- UniversalConcept(B)[3005366][属性:9][叠加:0][金币:0], 【表格】混元功·下篇
tOctNewServer_Data[3326421]["RewardItem"][2]["Attr"] = "0 1" -- UniversalConcept(B)*1
tOctNewServer_Data[3326421]["RewardItem"][3] = {}
tOctNewServer_Data[3326421]["RewardItem"][3]["Id"] = 3005395 -- SecretofBreath(A)[3005395][属性:9][叠加:0][金币:0], 【表格】天罡气诀·上篇
tOctNewServer_Data[3326421]["RewardItem"][3]["Attr"] = "0 1" -- SecretofBreath(A)*1
tOctNewServer_Data[3326421]["RewardItem"][4] = {}
tOctNewServer_Data[3326421]["RewardItem"][4]["Id"] = 3005396 -- SecretofBreath(B)[3005396][属性:9][叠加:0][金币:0], 【表格】天罡气诀·下篇
tOctNewServer_Data[3326421]["RewardItem"][4]["Attr"] = "0 1" -- SecretofBreath(B)*1
tOctNewServer_Data[3326421]["RewardItem"][5] = {}
tOctNewServer_Data[3326421]["RewardItem"][5]["Id"] = 3007113 -- DemonRider(A)[3007113][属性:9][叠加:0][金币:0], 【表格】罗刹诀·上篇
tOctNewServer_Data[3326421]["RewardItem"][5]["Attr"] = "0 1" -- DemonRider(A)*1
tOctNewServer_Data[3326421]["RewardItem"][6] = {}
tOctNewServer_Data[3326421]["RewardItem"][6]["Id"] = 3007114 -- DemonRider(B)[3007114][属性:9][叠加:0][金币:0], 【表格】罗刹诀·下篇
tOctNewServer_Data[3326421]["RewardItem"][6]["Attr"] = "0 1" -- DemonRider(B)*1
tOctNewServer_Data[3326421]["RewardEffect"] = {}
tOctNewServer_Data[3326421]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tOctNewServer_Data[3326421]["RewardEffect"]["Effect"] = "angelwing"


tOctNewServer_Data[3326422] = {}
-- ===高级内功宝箱
-- ===索引: tOctNewServer_Data[3326422]
-- ===删除: 3326422,1
-- ===
-- ===
tOctNewServer_Data[3326422]["LogId"] = 12001637
tOctNewServer_Data[3326422]["DeleteItem"] = {}
tOctNewServer_Data[3326422]["DeleteItem"][1] = {}
tOctNewServer_Data[3326422]["DeleteItem"][1]["Id"] = 3326422 -- 【库】 3326422 【库里没有该物品】[属性:]
tOctNewServer_Data[3326422]["RewardRepairValue"] = {}
tOctNewServer_Data[3326422]["RewardRepairValue"]["Value"] = 3000000 -- 修为值, 【需求】修为值300W
tOctNewServer_Data[3326422]["RewardItem"] = {}
tOctNewServer_Data[3326422]["RewardItem"][1] = {}
tOctNewServer_Data[3326422]["RewardItem"][1]["Id"] = 3005365 -- UniversalConcept(A)[3005365][属性:9][叠加:0][金币:0], 【表格】混元功·上篇
tOctNewServer_Data[3326422]["RewardItem"][1]["Attr"] = "0 1" -- UniversalConcept(A)*1
tOctNewServer_Data[3326422]["RewardItem"][2] = {}
tOctNewServer_Data[3326422]["RewardItem"][2]["Id"] = 3005366 -- UniversalConcept(B)[3005366][属性:9][叠加:0][金币:0], 【表格】混元功·下篇
tOctNewServer_Data[3326422]["RewardItem"][2]["Attr"] = "0 1" -- UniversalConcept(B)*1
tOctNewServer_Data[3326422]["RewardItem"][3] = {}
tOctNewServer_Data[3326422]["RewardItem"][3]["Id"] = 3005395 -- SecretofBreath(A)[3005395][属性:9][叠加:0][金币:0], 【表格】天罡气诀·上篇
tOctNewServer_Data[3326422]["RewardItem"][3]["Attr"] = "0 1" -- SecretofBreath(A)*1
tOctNewServer_Data[3326422]["RewardItem"][4] = {}
tOctNewServer_Data[3326422]["RewardItem"][4]["Id"] = 3005396 -- SecretofBreath(B)[3005396][属性:9][叠加:0][金币:0], 【表格】天罡气诀·下篇
tOctNewServer_Data[3326422]["RewardItem"][4]["Attr"] = "0 1" -- SecretofBreath(B)*1
tOctNewServer_Data[3326422]["RewardItem"][5] = {}
tOctNewServer_Data[3326422]["RewardItem"][5]["Id"] = 3007113 -- DemonRider(A)[3007113][属性:9][叠加:0][金币:0], 【表格】罗刹诀·上篇
tOctNewServer_Data[3326422]["RewardItem"][5]["Attr"] = "0 1" -- DemonRider(A)*1
tOctNewServer_Data[3326422]["RewardItem"][6] = {}
tOctNewServer_Data[3326422]["RewardItem"][6]["Id"] = 3007114 -- DemonRider(B)[3007114][属性:9][叠加:0][金币:0], 【表格】罗刹诀·下篇
tOctNewServer_Data[3326422]["RewardItem"][6]["Attr"] = "0 1" -- DemonRider(B)*1
tOctNewServer_Data[3326422]["RewardItem"][7] = {}
tOctNewServer_Data[3326422]["RewardItem"][7]["Id"] = 3005397 -- DragonTactics(A)[3005397][属性:9][叠加:0][金币:0], 【表格】龙象般若功·上篇
tOctNewServer_Data[3326422]["RewardItem"][7]["Attr"] = "0 1" -- DragonTactics(A)*1
tOctNewServer_Data[3326422]["RewardItem"][8] = {}
tOctNewServer_Data[3326422]["RewardItem"][8]["Id"] = 3005398 -- DragonTactics(B)[3005398][属性:9][叠加:0][金币:0], 【表格】龙象般若功·下篇
tOctNewServer_Data[3326422]["RewardItem"][8]["Attr"] = "0 1" -- DragonTactics(B)*1
tOctNewServer_Data[3326422]["RewardItem"][9] = {}
tOctNewServer_Data[3326422]["RewardItem"][9]["Id"] = 3007115 -- BoundlessHeart(A)[3007115][属性:9][叠加:0][金币:0], 【表格】无量心经·上篇
tOctNewServer_Data[3326422]["RewardItem"][9]["Attr"] = "0 1" -- BoundlessHeart(A)*1
tOctNewServer_Data[3326422]["RewardItem"][10] = {}
tOctNewServer_Data[3326422]["RewardItem"][10]["Id"] = 3007116 -- BoundlessHeart(B)[3007116][属性:9][叠加:0][金币:0], 【表格】无量心经·中篇
tOctNewServer_Data[3326422]["RewardItem"][10]["Attr"] = "0 1" -- BoundlessHeart(B)*1
tOctNewServer_Data[3326422]["RewardItem"][11] = {}
tOctNewServer_Data[3326422]["RewardItem"][11]["Id"] = 3007117 -- BoundlessHeart(C)[3007117][属性:9][叠加:0][金币:0], 【表格】无量心经·下篇
tOctNewServer_Data[3326422]["RewardItem"][11]["Attr"] = "0 1" -- BoundlessHeart(C)*1
tOctNewServer_Data[3326422]["RewardItem"][12] = {}
tOctNewServer_Data[3326422]["RewardItem"][12]["Id"] = 3005399 -- DoctrineofDeity(A)[3005399][属性:9][叠加:0][金币:0], 【表格】太乙神功·上篇
tOctNewServer_Data[3326422]["RewardItem"][12]["Attr"] = "0 1" -- DoctrineofDeity(A)*1
tOctNewServer_Data[3326422]["RewardItem"][13] = {}
tOctNewServer_Data[3326422]["RewardItem"][13]["Id"] = 3005400 -- DoctrineofDeity(B)[3005400][属性:9][叠加:0][金币:0], 【表格】太乙神功·中篇
tOctNewServer_Data[3326422]["RewardItem"][13]["Attr"] = "0 1" -- DoctrineofDeity(B)*1
tOctNewServer_Data[3326422]["RewardItem"][14] = {}
tOctNewServer_Data[3326422]["RewardItem"][14]["Id"] = 3005401 -- DoctrineofDeity(C)[3005401][属性:9][叠加:0][金币:0], 【表格】太乙神功·下篇
tOctNewServer_Data[3326422]["RewardItem"][14]["Attr"] = "0 1" -- DoctrineofDeity(C)*1
tOctNewServer_Data[3326422]["RewardItem"][15] = {}
tOctNewServer_Data[3326422]["RewardItem"][15]["Id"] = 3007230 -- PuzzleofLife(A)[3007230][属性:9][叠加:0][金币:0], 【表格】枯荣禅功·上篇
tOctNewServer_Data[3326422]["RewardItem"][15]["Attr"] = "0 1" -- PuzzleofLife(A)*1
tOctNewServer_Data[3326422]["RewardItem"][16] = {}
tOctNewServer_Data[3326422]["RewardItem"][16]["Id"] = 3007231 -- PuzzleofLife(B)[3007231][属性:9][叠加:0][金币:0], 【表格】枯荣禅功·中篇
tOctNewServer_Data[3326422]["RewardItem"][16]["Attr"] = "0 1" -- PuzzleofLife(B)*1
tOctNewServer_Data[3326422]["RewardItem"][17] = {}
tOctNewServer_Data[3326422]["RewardItem"][17]["Id"] = 3007232 -- PuzzleofLife(C)[3007232][属性:9][叠加:0][金币:0], 【表格】枯荣禅功·下篇
tOctNewServer_Data[3326422]["RewardItem"][17]["Attr"] = "0 1" -- PuzzleofLife(C)*1
tOctNewServer_Data[3326422]["RewardEffect"] = {}
tOctNewServer_Data[3326422]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tOctNewServer_Data[3326422]["RewardEffect"]["Effect"] = "angelwing"


tOctNewServer_Data[3326423] = {}
-- ===7阶全套神魂宝箱
-- ===索引: tOctNewServer_Data[3326423][1]
-- ===删除: 3326423,1
-- ===
-- ===
tOctNewServer_Data[3326423][1] = {}
tOctNewServer_Data[3326423][1]["LogId"] = 12001637
tOctNewServer_Data[3326423][1]["DeleteItem"] = {}
tOctNewServer_Data[3326423][1]["DeleteItem"][1] = {}
tOctNewServer_Data[3326423][1]["DeleteItem"][1]["Id"] = 3326423 -- 【库】P7DragonSoulChest[属性:9]
tOctNewServer_Data[3326423][1]["RewardItem"] = {}
tOctNewServer_Data[3326423][1]["RewardItem"][1] = {}
tOctNewServer_Data[3326423][1]["RewardItem"][1]["Id"] = 3303657 -- 武器神魂
tOctNewServer_Data[3326423][1]["RewardItem"][1]["Attr"] = "0 2" -- 武器神魂*2
tOctNewServer_Data[3326423][1]["RewardItem"][2] = {}
tOctNewServer_Data[3326423][1]["RewardItem"][2]["Id"] = 3303658 -- 防具神魂
tOctNewServer_Data[3326423][1]["RewardItem"][2]["Attr"] = "0 5" -- 防具神魂*5
-- tOctNewServer_Data[3326423][1]["RewardItem"][3] = {}
-- tOctNewServer_Data[3326423][1]["RewardItem"][3]["Id"] = 822072 -- EclipseArmor[822072][属性:0][叠加:0][金币:0], 【表格】蚀日仙铠
-- tOctNewServer_Data[3326423][1]["RewardItem"][3]["Attr"] = "0 1 3" -- EclipseArmor（赠）*1
-- tOctNewServer_Data[3326423][1]["RewardItem"][4] = {}
-- tOctNewServer_Data[3326423][1]["RewardItem"][4]["Id"] = 823059 -- DragonRing[823059][属性:0][叠加:0][金币:0], 【表格】飞龙魔戒
-- tOctNewServer_Data[3326423][1]["RewardItem"][4]["Attr"] = "0 1 3" -- DragonRing（赠）*1
-- tOctNewServer_Data[3326423][1]["RewardItem"][5] = {}
-- tOctNewServer_Data[3326423][1]["RewardItem"][5]["Id"] = 821033 -- HeavenNecklace[821033][属性:0][叠加:0][金币:0], 【表格】灵霄仙坠
-- tOctNewServer_Data[3326423][1]["RewardItem"][5]["Attr"] = "0 1 3" -- HeavenNecklace（赠）*1
-- tOctNewServer_Data[3326423][1]["RewardItem"][6] = {}
-- tOctNewServer_Data[3326423][1]["RewardItem"][6]["Id"] = 824020 -- CraneBoots[824020][属性:0][叠加:0][金币:0], 【表格】天鹤仙履
-- tOctNewServer_Data[3326423][1]["RewardItem"][6]["Attr"] = "0 1 3" -- CraneBoots（赠）*1
-- tOctNewServer_Data[3326423][1]["RewardItem"][7] = {}
-- tOctNewServer_Data[3326423][1]["RewardItem"][7]["Id"] = 3303402 -- MeteorScroll(B)*5[3303402][属性:9][叠加:10000][金币:0], 【表格】MeteorScroll（B）*5
-- tOctNewServer_Data[3326423][1]["RewardItem"][7]["Attr"] = "0 7" -- MeteorScroll(B)*5*7
tOctNewServer_Data[3326423][1]["RewardEffect"] = {}
tOctNewServer_Data[3326423][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tOctNewServer_Data[3326423][1]["RewardEffect"]["Effect"] = "angelwing"


tOctNewServer_Data[3326423][2] = {}
-- ===7阶全套神魂宝箱
-- ===索引: tOctNewServer_Data[3326423][2]
-- ===删除: 3326423,1
-- ===
-- ===
tOctNewServer_Data[3326423][2]["LogId"] = 12001637
tOctNewServer_Data[3326423][2]["DeleteItem"] = {}
tOctNewServer_Data[3326423][2]["DeleteItem"][1] = {}
tOctNewServer_Data[3326423][2]["DeleteItem"][1]["Id"] = 3326423 -- 【库】 3326423 【库里没有该物品】[属性:]
tOctNewServer_Data[3326423][2]["RewardItem"] = {}
tOctNewServer_Data[3326423][2]["RewardItem"][1] = {}
tOctNewServer_Data[3326423][2]["RewardItem"][1]["Id"] = 3303657 -- 武器神魂
tOctNewServer_Data[3326423][2]["RewardItem"][1]["Attr"] = "0 2" -- 武器神魂*2
tOctNewServer_Data[3326423][2]["RewardItem"][2] = {}
tOctNewServer_Data[3326423][2]["RewardItem"][2]["Id"] = 3303658 -- 防具神魂
tOctNewServer_Data[3326423][2]["RewardItem"][2]["Attr"] = "0 5" -- 防具神魂*5
-- tOctNewServer_Data[3326423][2]["RewardItem"][3] = {}
-- tOctNewServer_Data[3326423][2]["RewardItem"][3]["Id"] = 820074 -- SunHeadgear[820074][属性:0][叠加:0][金币:0], 【表格】斩日魔冠
-- tOctNewServer_Data[3326423][2]["RewardItem"][3]["Attr"] = "0 1 3" -- SunHeadgear（赠）*1
-- tOctNewServer_Data[3326423][2]["RewardItem"][4] = {}
-- tOctNewServer_Data[3326423][2]["RewardItem"][4]["Id"] = 822071 -- NetherArmor[822071][属性:0][叠加:0][金币:0], 【表格】幽冥魔铠
-- tOctNewServer_Data[3326423][2]["RewardItem"][4]["Attr"] = "0 1 3" -- NetherArmor（赠）*1
-- tOctNewServer_Data[3326423][2]["RewardItem"][5] = {}
-- tOctNewServer_Data[3326423][2]["RewardItem"][5]["Id"] = 823059 -- DragonRing[823059][属性:0][叠加:0][金币:0], 【表格】飞龙魔戒
-- tOctNewServer_Data[3326423][2]["RewardItem"][5]["Attr"] = "0 1 3" -- DragonRing（赠）*1
-- tOctNewServer_Data[3326423][2]["RewardItem"][6] = {}
-- tOctNewServer_Data[3326423][2]["RewardItem"][6]["Id"] = 821033 -- HeavenNecklace[821033][属性:0][叠加:0][金币:0], 【表格】灵霄仙坠
-- tOctNewServer_Data[3326423][2]["RewardItem"][6]["Attr"] = "0 1 3" -- HeavenNecklace（赠）*1
-- tOctNewServer_Data[3326423][2]["RewardItem"][7] = {}
-- tOctNewServer_Data[3326423][2]["RewardItem"][7]["Id"] = 824019 -- DragonBoots[824019][属性:0][叠加:0][金币:0], 【表格】腾龙魔履
-- tOctNewServer_Data[3326423][2]["RewardItem"][7]["Attr"] = "0 1 3" -- DragonBoots（赠）*1
-- tOctNewServer_Data[3326423][2]["RewardItem"][8] = {}
-- tOctNewServer_Data[3326423][2]["RewardItem"][8]["Id"] = 3303402 -- MeteorScroll(B)*5[3303402][属性:9][叠加:10000][金币:0], 【表格】MeteorScroll（B）*5
-- tOctNewServer_Data[3326423][2]["RewardItem"][8]["Attr"] = "0 7" -- MeteorScroll(B)*5*7
tOctNewServer_Data[3326423][2]["RewardEffect"] = {}
tOctNewServer_Data[3326423][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tOctNewServer_Data[3326423][2]["RewardEffect"]["Effect"] = "angelwing"


tOctNewServer_Data[3326424] = {}
-- ===6级全套淬炼宝箱
-- ===索引: tOctNewServer_Data[3326424][1]
-- ===删除: 3326424,1
-- ===
-- ===
tOctNewServer_Data[3326424][1] = {}
tOctNewServer_Data[3326424][1]["LogId"] = 12001637
tOctNewServer_Data[3326424][1]["DeleteItem"] = {}
tOctNewServer_Data[3326424][1]["DeleteItem"][1] = {}
tOctNewServer_Data[3326424][1]["DeleteItem"][1]["Id"] = 3326424 -- 【库】Class6RefineryChest[属性:9]
tOctNewServer_Data[3326424][1]["RewardItem"] = {}
tOctNewServer_Data[3326424][1]["RewardItem"][1] = {}
tOctNewServer_Data[3326424][1]["RewardItem"][1]["Id"] = 3004140 -- Intensification(Sacred)Material[3004140][属性:0][叠加:0][金币:0], 【表格】神品的面甲
tOctNewServer_Data[3326424][1]["RewardItem"][1]["Attr"] = "0 1 3" -- Intensification(Sacred)Material（赠）*1
tOctNewServer_Data[3326424][1]["RewardItem"][2] = {}
tOctNewServer_Data[3326424][1]["RewardItem"][2]["Id"] = 3004142 -- Counteraction(Sacred)Material[3004142][属性:0][叠加:0][金币:0], 【表格】神品的胸铠
tOctNewServer_Data[3326424][1]["RewardItem"][2]["Attr"] = "0 1 3" -- Counteraction(Sacred)Material（赠）*1
tOctNewServer_Data[3326424][1]["RewardItem"][3] = {}
tOctNewServer_Data[3326424][1]["RewardItem"][3]["Id"] = 3004137 -- CriticalStrike(Sacred)Material[3004137][属性:0][叠加:0][金币:0], 【表格】神品的刃铁
tOctNewServer_Data[3326424][1]["RewardItem"][3]["Attr"] = "0 2 3" -- CriticalStrike(Sacred)Material（赠）*2
tOctNewServer_Data[3326424][1]["RewardItem"][4] = {}
tOctNewServer_Data[3326424][1]["RewardItem"][4]["Id"] = 3004158 -- CriticalStrike(Sacred)Material[3004158][属性:0][叠加:0][金币:0], 【表格】神品的琥珀
tOctNewServer_Data[3326424][1]["RewardItem"][4]["Attr"] = "0 1 3" -- CriticalStrike(Sacred)Material（赠）*1
tOctNewServer_Data[3326424][1]["RewardItem"][5] = {}
tOctNewServer_Data[3326424][1]["RewardItem"][5]["Id"] = 3004160 -- Counteraction(Sacred)Material[3004160][属性:0][叠加:0][金币:0], 【表格】神品的坠饰
tOctNewServer_Data[3326424][1]["RewardItem"][5]["Attr"] = "0 1 3" -- Counteraction(Sacred)Material（赠）*1
tOctNewServer_Data[3326424][1]["RewardItem"][6] = {}
tOctNewServer_Data[3326424][1]["RewardItem"][6]["Id"] = 3004149 -- Immunity(Sacred)Material[3004149][属性:0][叠加:0][金币:0], 【表格】神品的马刺
tOctNewServer_Data[3326424][1]["RewardItem"][6]["Attr"] = "0 1 3" -- Immunity(Sacred)Material（赠）*1
tOctNewServer_Data[3326424][1]["RewardEffect"] = {}
tOctNewServer_Data[3326424][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tOctNewServer_Data[3326424][1]["RewardEffect"]["Effect"] = "angelwing"

tOctNewServer_Data[3326424][2] = {}
-- ===6级全套淬炼宝箱
-- ===索引: tOctNewServer_Data[3326424][2]
-- ===删除: 3326424,1
-- ===
-- ===
tOctNewServer_Data[3326424][2]["LogId"] = 12001637
tOctNewServer_Data[3326424][2]["DeleteItem"] = {}
tOctNewServer_Data[3326424][2]["DeleteItem"][1] = {}
tOctNewServer_Data[3326424][2]["DeleteItem"][1]["Id"] = 3326424 -- 【库】 3326424 【库里没有该物品】[属性:]
tOctNewServer_Data[3326424][2]["RewardItem"] = {}
tOctNewServer_Data[3326424][2]["RewardItem"][1] = {}
tOctNewServer_Data[3326424][2]["RewardItem"][1]["Id"] = 3004140 -- Intensification(Sacred)Material[3004140][属性:0][叠加:0][金币:0], 【表格】神品的面甲
tOctNewServer_Data[3326424][2]["RewardItem"][1]["Attr"] = "0 1 3" -- Intensification(Sacred)Material（赠）*1
tOctNewServer_Data[3326424][2]["RewardItem"][2] = {}
tOctNewServer_Data[3326424][2]["RewardItem"][2]["Id"] = 3004142 -- Counteraction(Sacred)Material[3004142][属性:0][叠加:0][金币:0], 【表格】神品的胸铠
tOctNewServer_Data[3326424][2]["RewardItem"][2]["Attr"] = "0 1 3" -- Counteraction(Sacred)Material（赠）*1
tOctNewServer_Data[3326424][2]["RewardItem"][3] = {}
tOctNewServer_Data[3326424][2]["RewardItem"][3]["Id"] = 3004138 -- SkillC.Strike(Sacred)Material[3004138][属性:0][叠加:0][金币:0], 【表格】神品的剑穗
tOctNewServer_Data[3326424][2]["RewardItem"][3]["Attr"] = "0 1 3" -- SkillC.Strike(Sacred)Material（赠）*1
tOctNewServer_Data[3326424][2]["RewardItem"][4] = {}
tOctNewServer_Data[3326424][2]["RewardItem"][4]["Id"] = 3006170 -- SacredHossuHair[3006170][属性:0][叠加:0][金币:0], 【表格】神品的法坠
tOctNewServer_Data[3326424][2]["RewardItem"][4]["Attr"] = "0 1 3" -- SacredHossuHair（赠）*1
tOctNewServer_Data[3326424][2]["RewardItem"][5] = {}
tOctNewServer_Data[3326424][2]["RewardItem"][5]["Id"] = 3004158 -- CriticalStrike(Sacred)Material[3004158][属性:0][叠加:0][金币:0], 【表格】神品的琥珀
tOctNewServer_Data[3326424][2]["RewardItem"][5]["Attr"] = "0 1 3" -- CriticalStrike(Sacred)Material（赠）*1
tOctNewServer_Data[3326424][2]["RewardItem"][6] = {}
tOctNewServer_Data[3326424][2]["RewardItem"][6]["Id"] = 3004160 -- Counteraction(Sacred)Material[3004160][属性:0][叠加:0][金币:0], 【表格】神品的坠饰
tOctNewServer_Data[3326424][2]["RewardItem"][6]["Attr"] = "0 1 3" -- Counteraction(Sacred)Material（赠）*1
tOctNewServer_Data[3326424][2]["RewardItem"][7] = {}
tOctNewServer_Data[3326424][2]["RewardItem"][7]["Id"] = 3004149 -- Immunity(Sacred)Material[3004149][属性:0][叠加:0][金币:0], 【表格】神品的马刺
tOctNewServer_Data[3326424][2]["RewardItem"][7]["Attr"] = "0 1 3" -- Immunity(Sacred)Material（赠）*1
tOctNewServer_Data[3326424][2]["RewardEffect"] = {}
tOctNewServer_Data[3326424][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tOctNewServer_Data[3326424][2]["RewardEffect"]["Effect"] = "angelwing"


tOctNewServer_Data[3326425] = {}
-- ===璀璨星陨石*220宝箱
-- ===索引: tOctNewServer_Data[3326425]
-- ===删除: 3326425,1
-- ===
-- ===
tOctNewServer_Data[3326425]["LogId"] = 12001637
tOctNewServer_Data[3326425]["DeleteItem"] = {}
tOctNewServer_Data[3326425]["DeleteItem"][1] = {}
tOctNewServer_Data[3326425]["DeleteItem"][1]["Id"] = 3326425 -- 【库】 3326425 【库里没有该物品】[属性:]
tOctNewServer_Data[3326425]["RewardItem"] = {}
tOctNewServer_Data[3326425]["RewardItem"][1] = {}
tOctNewServer_Data[3326425]["RewardItem"][1]["Id"] = 3326426 --  3326426 【库里没有该物品】, 【表格】璀璨星陨石*20包
tOctNewServer_Data[3326425]["RewardItem"][1]["Attr"] = "0 12" --  3326426 【库里没有该物品】*11（[错误]物品数量超10个）
tOctNewServer_Data[3326425]["RewardEffect"] = {}
tOctNewServer_Data[3326425]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tOctNewServer_Data[3326425]["RewardEffect"]["Effect"] = "angelwing"


tOctNewServer_Data[3326426] = {}
-- ===璀璨星陨石*20包
-- ===索引: tOctNewServer_Data[3326426]
-- ===删除: 3326426,1
-- ===
-- ===
tOctNewServer_Data[3326426]["LogId"] = 12001637
tOctNewServer_Data[3326426]["DeleteItem"] = {}
tOctNewServer_Data[3326426]["DeleteItem"][1] = {}
tOctNewServer_Data[3326426]["DeleteItem"][1]["Id"] = 3326426 -- 【库】 3326426 【库里没有该物品】[属性:]
tOctNewServer_Data[3326426]["RewardItem"] = {}
tOctNewServer_Data[3326426]["RewardItem"][1] = {}
tOctNewServer_Data[3326426]["RewardItem"][1]["Id"] = 3009003 -- SplendidStarStone[3009003][属性:9][叠加:0][金币:0], 【表格】璀璨星陨石
tOctNewServer_Data[3326426]["RewardItem"][1]["Attr"] = "0 20 0 2880 1" -- 2天时效(激活)的SplendidStarStone*20（[错误]物品数量超10个）
tOctNewServer_Data[3326426]["RewardEffect"] = {}
tOctNewServer_Data[3326426]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tOctNewServer_Data[3326426]["RewardEffect"]["Effect"] = "angelwing"


tOctNewServer_Data[3326427] = {}
-- ===432RadiantStarStonesChest
-- ===索引: tOctNewServer_Data[3326427]
-- ===删除: 3326427,1
-- ===
-- ===
tOctNewServer_Data[3326427]["LogId"] = 12001637
tOctNewServer_Data[3326427]["DeleteItem"] = {}
tOctNewServer_Data[3326427]["DeleteItem"][1] = {}
tOctNewServer_Data[3326427]["DeleteItem"][1]["Id"] = 3326427 -- 【库】 3326427 【库里没有该物品】[属性:]
tOctNewServer_Data[3326427]["RewardItem"] = {}
tOctNewServer_Data[3326427]["RewardItem"][1] = {}
tOctNewServer_Data[3326427]["RewardItem"][1]["Id"] = 3326428 --  3326428 【库里没有该物品】, 【表格】璀璨星陨石*16包
tOctNewServer_Data[3326427]["RewardItem"][1]["Attr"] = "0 27" --  3326428 【库里没有该物品】*27（[错误]物品数量超10个）
tOctNewServer_Data[3326427]["RewardEffect"] = {}
tOctNewServer_Data[3326427]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tOctNewServer_Data[3326427]["RewardEffect"]["Effect"] = "angelwing"


tOctNewServer_Data[3326428] = {}
-- ===璀璨星陨石*16包
-- ===索引: tOctNewServer_Data[3326428]
-- ===删除: 3326428,1
-- ===
-- ===
tOctNewServer_Data[3326428]["LogId"] = 12001637
tOctNewServer_Data[3326428]["DeleteItem"] = {}
tOctNewServer_Data[3326428]["DeleteItem"][1] = {}
tOctNewServer_Data[3326428]["DeleteItem"][1]["Id"] = 3326428 -- 【库】 3326428 【库里没有该物品】[属性:]
tOctNewServer_Data[3326428]["RewardItem"] = {}
tOctNewServer_Data[3326428]["RewardItem"][1] = {}
tOctNewServer_Data[3326428]["RewardItem"][1]["Id"] = 3009003 -- SplendidStarStone[3009003][属性:9][叠加:0][金币:0], 【表格】璀璨星陨石
tOctNewServer_Data[3326428]["RewardItem"][1]["Attr"] = "0 16 0 2880 1" -- 2天时效(激活)的SplendidStarStone*16（[错误]物品数量超10个）
tOctNewServer_Data[3326428]["RewardEffect"] = {}
tOctNewServer_Data[3326428]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tOctNewServer_Data[3326428]["RewardEffect"]["Effect"] = "angelwing"


tOctNewServer_Data[3326429] = {}
-- ===超大固化石*42宝箱
-- ===索引: tOctNewServer_Data[3326429]
-- ===删除: 3326429,1
-- ===
-- ===
tOctNewServer_Data[3326429]["LogId"] = 12001637
tOctNewServer_Data[3326429]["DeleteItem"] = {}
tOctNewServer_Data[3326429]["DeleteItem"][1] = {}
tOctNewServer_Data[3326429]["DeleteItem"][1]["Id"] = 3326429 -- 【库】 3326429 【库里没有该物品】[属性:]
tOctNewServer_Data[3326429]["RewardItem"] = {}
tOctNewServer_Data[3326429]["RewardItem"][1] = {}
tOctNewServer_Data[3326429]["RewardItem"][1]["Id"] = 3326430 --  3326430 【库里没有该物品】, 【表格】超大固化石*7包
tOctNewServer_Data[3326429]["RewardItem"][1]["Attr"] = "0 6" --  3326430 【库里没有该物品】*6
tOctNewServer_Data[3326429]["RewardEffect"] = {}
tOctNewServer_Data[3326429]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tOctNewServer_Data[3326429]["RewardEffect"]["Effect"] = "angelwing"

tOctNewServer_Data[3326430] = {}
-- ===超大固化石*7包
-- ===索引: tOctNewServer_Data[3326430]
-- ===删除: 3326430,1
-- ===
-- ===
tOctNewServer_Data[3326430]["LogId"] = 12001637
tOctNewServer_Data[3326430]["DeleteItem"] = {}
tOctNewServer_Data[3326430]["DeleteItem"][1] = {}
tOctNewServer_Data[3326430]["DeleteItem"][1]["Id"] = 3326430 -- 【库】 3326430 【库里没有该物品】[属性:]
tOctNewServer_Data[3326430]["RewardItem"] = {}
tOctNewServer_Data[3326430]["RewardItem"][1] = {}
tOctNewServer_Data[3326430]["RewardItem"][1]["Id"] = 723695 -- BigPermanentStone[723695][属性:0][叠加:0][金币:0], 【表格】超大固化石
tOctNewServer_Data[3326430]["RewardItem"][1]["Attr"] = "0 7 3" -- BigPermanentStone（赠）*7
tOctNewServer_Data[3326430]["RewardEffect"] = {}
tOctNewServer_Data[3326430]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tOctNewServer_Data[3326430]["RewardEffect"]["Effect"] = "angelwing"


tOctNewServer_Data[3326405] = {}
-- ===3星返利宝箱
-- ===索引: tOctNewServer_Data[3326405]
-- ===删除: 3326405,1
-- ===
-- ===
tOctNewServer_Data[3326405]["LogId"] = 12001637
tOctNewServer_Data[3326405]["DeleteItem"] = {}
tOctNewServer_Data[3326405]["DeleteItem"][1] = {}
tOctNewServer_Data[3326405]["DeleteItem"][1]["Id"] = 3326405 -- 【库】 3326405 【库里没有该物品】[属性:]
tOctNewServer_Data[3326405]["RewardItem"] = {}
tOctNewServer_Data[3326405]["RewardItem"][1] = {}
tOctNewServer_Data[3326405]["RewardItem"][1]["Id"] = 3326408 --  3326408 【库里没有该物品】, 【表格】+12极品装备宝箱
tOctNewServer_Data[3326405]["RewardItem"][1]["Attr"] = "0 1" --  3326408 【库里没有该物品】*1
tOctNewServer_Data[3326405]["RewardItem"][2] = {}
tOctNewServer_Data[3326405]["RewardItem"][2]["Id"] = 3326417 --  3326417 【库里没有该物品】, 【表格】（+27）职业神纹宝箱
tOctNewServer_Data[3326405]["RewardItem"][2]["Attr"] = "0 1" --  3326417 【库里没有该物品】*1
tOctNewServer_Data[3326405]["RewardItem"][3] = {}
tOctNewServer_Data[3326405]["RewardItem"][3]["Id"] = 3326418 --  3326418 【库里没有该物品】, 【表格】（+9）黄色神纹宝箱
tOctNewServer_Data[3326405]["RewardItem"][3]["Attr"] = "0 1" --  3326418 【库里没有该物品】*1
tOctNewServer_Data[3326405]["RewardItem"][4] = {}
tOctNewServer_Data[3326405]["RewardItem"][4]["Id"] = 3326419 --  3326419 【库里没有该物品】, 【表格】（+9）稀有黄色神纹宝箱
tOctNewServer_Data[3326405]["RewardItem"][4]["Attr"] = "0 1" --  3326419 【库里没有该物品】*1
tOctNewServer_Data[3326405]["RewardItem"][5] = {}
tOctNewServer_Data[3326405]["RewardItem"][5]["Id"] = 3326420 --  3326420 【库里没有该物品】, 【表格】副职业就职宝箱
tOctNewServer_Data[3326405]["RewardItem"][5]["Attr"] = "0 1" --  3326420 【库里没有该物品】*1
tOctNewServer_Data[3326405]["RewardItem"][6] = {}
tOctNewServer_Data[3326405]["RewardItem"][6]["Id"] = 3326422 --  3326422 【库里没有该物品】, 【表格】高级内功宝箱
tOctNewServer_Data[3326405]["RewardItem"][6]["Attr"] = "0 1" --  3326422 【库里没有该物品】*1
tOctNewServer_Data[3326405]["RewardItem"][7] = {}
tOctNewServer_Data[3326405]["RewardItem"][7]["Id"] = 3326423 --  3326423 【库里没有该物品】, 【表格】7阶全套神魂宝箱
tOctNewServer_Data[3326405]["RewardItem"][7]["Attr"] = "0 1" --  3326423 【库里没有该物品】*1
tOctNewServer_Data[3326405]["RewardItem"][8] = {}
tOctNewServer_Data[3326405]["RewardItem"][8]["Id"] = 3326424 --  3326424 【库里没有该物品】, 【表格】6级全套淬炼宝箱
tOctNewServer_Data[3326405]["RewardItem"][8]["Attr"] = "0 1" --  3326424 【库里没有该物品】*1
tOctNewServer_Data[3326405]["RewardItem"][9] = {}
tOctNewServer_Data[3326405]["RewardItem"][9]["Id"] = 3326429 --  3326429 【库里没有该物品】, 【表格】超大固化石*56宝箱
tOctNewServer_Data[3326405]["RewardItem"][9]["Attr"] = "0 1" --  3326429 【库里没有该物品】*1
tOctNewServer_Data[3326405]["RewardItem"][10] = {}
tOctNewServer_Data[3326405]["RewardItem"][10]["Id"] = 3326427 --  3326427 【库里没有该物品】, 【表格】璀璨星陨石*624宝箱
tOctNewServer_Data[3326405]["RewardItem"][10]["Attr"] = "0 1" --  3326427 【库里没有该物品】*1
tOctNewServer_Data[3326405]["RewardItem"][11] = {}
tOctNewServer_Data[3326405]["RewardItem"][11]["Id"] = 3009104 -- RedBodhiBean[3009104][属性:9][叠加:99][金币:0], 【表格】血菩提
tOctNewServer_Data[3326405]["RewardItem"][11]["Attr"] = "0 134" -- RedBodhiBean*200（[错误]物品数量超10个）
tOctNewServer_Data[3326405]["RewardItem"][12] = {}
tOctNewServer_Data[3326405]["RewardItem"][12]["Id"] = 2169145 -- TalentLamp[2168685][属性:9][叠加:0][金币:0], 【表格】三才灯
tOctNewServer_Data[3326405]["RewardItem"][12]["Attr"] = "0 1" -- TalentLamp*1
tOctNewServer_Data[3326405]["RewardEffect"] = {}
tOctNewServer_Data[3326405]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tOctNewServer_Data[3326405]["RewardEffect"]["Effect"] = "angelwing"


tOctNewServer_Data[3326406] = {}
-- ===2星返利宝箱
-- ===索引: tOctNewServer_Data[3326406]
-- ===删除: 3326406,1
-- ===
-- ===
tOctNewServer_Data[3326406]["LogId"] = 12001637
tOctNewServer_Data[3326406]["DeleteItem"] = {}
tOctNewServer_Data[3326406]["DeleteItem"][1] = {}
tOctNewServer_Data[3326406]["DeleteItem"][1]["Id"] = 3326406 -- 【库】 3326406 【库里没有该物品】[属性:]
tOctNewServer_Data[3326406]["RewardItem"] = {}
tOctNewServer_Data[3326406]["RewardItem"][1] = {}
tOctNewServer_Data[3326406]["RewardItem"][1]["Id"] = 3326409 --  3326409 【库里没有该物品】, 【表格】+8极品装备宝箱
tOctNewServer_Data[3326406]["RewardItem"][1]["Attr"] = "0 1" --  3326409 【库里没有该物品】*1
tOctNewServer_Data[3326406]["RewardItem"][2] = {}
tOctNewServer_Data[3326406]["RewardItem"][2]["Id"] = 3326414 --  3326414 【库里没有该物品】, 【表格】（+5）职业神纹宝箱
tOctNewServer_Data[3326406]["RewardItem"][2]["Attr"] = "0 1" --  3326414 【库里没有该物品】*1
tOctNewServer_Data[3326406]["RewardItem"][3] = {}
tOctNewServer_Data[3326406]["RewardItem"][3]["Id"] = 3326415 --  3326415 【库里没有该物品】, 【表格】（+5）黄色神纹宝箱
tOctNewServer_Data[3326406]["RewardItem"][3]["Attr"] = "0 1" --  3326415 【库里没有该物品】*1
tOctNewServer_Data[3326406]["RewardItem"][4] = {}
tOctNewServer_Data[3326406]["RewardItem"][4]["Id"] = 3326416 --  3326416 【库里没有该物品】, 【表格】（+5）稀有黄色神纹宝箱
tOctNewServer_Data[3326406]["RewardItem"][4]["Attr"] = "0 1" --  3326416 【库里没有该物品】*1
tOctNewServer_Data[3326406]["RewardItem"][5] = {}
tOctNewServer_Data[3326406]["RewardItem"][5]["Id"] = 3326420 --  3326420 【库里没有该物品】, 【表格】副职业就职宝箱
tOctNewServer_Data[3326406]["RewardItem"][5]["Attr"] = "0 1" --  3326420 【库里没有该物品】*1
tOctNewServer_Data[3326406]["RewardItem"][6] = {}
tOctNewServer_Data[3326406]["RewardItem"][6]["Id"] = 3326421 --  3326421 【库里没有该物品】, 【表格】初级内功宝箱
tOctNewServer_Data[3326406]["RewardItem"][6]["Attr"] = "0 1" --  3326421 【库里没有该物品】*1
tOctNewServer_Data[3326406]["RewardItem"][7] = {}
tOctNewServer_Data[3326406]["RewardItem"][7]["Id"] = 3326423 --  3326423 【库里没有该物品】, 【表格】7阶全套神魂宝箱
tOctNewServer_Data[3326406]["RewardItem"][7]["Attr"] = "0 1" --  3326423 【库里没有该物品】*1
tOctNewServer_Data[3326406]["RewardItem"][8] = {}
tOctNewServer_Data[3326406]["RewardItem"][8]["Id"] = 3326425 --  3326425 【库里没有该物品】, 【表格】璀璨星陨石*220宝箱
tOctNewServer_Data[3326406]["RewardItem"][8]["Attr"] = "0 1" --  3326425 【库里没有该物品】*1
tOctNewServer_Data[3326406]["RewardItem"][9] = {}
tOctNewServer_Data[3326406]["RewardItem"][9]["Id"] = 3009104 -- RedBodhiBean[3009104][属性:9][叠加:99][金币:0], 【表格】血菩提
tOctNewServer_Data[3326406]["RewardItem"][9]["Attr"] = "0 55" -- RedBodhiBean*66（[错误]物品数量超10个）
tOctNewServer_Data[3326406]["RewardItem"][10] = {}
tOctNewServer_Data[3326406]["RewardItem"][10]["Id"] = 2169135 -- WonderLamp[2168665][属性:9][叠加:0][金币:0], 【表格】一元灯
tOctNewServer_Data[3326406]["RewardItem"][10]["Attr"] = "0 1" -- WonderLamp*1
tOctNewServer_Data[3326406]["RewardEffect"] = {}
tOctNewServer_Data[3326406]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tOctNewServer_Data[3326406]["RewardEffect"]["Effect"] = "angelwing"


tOctNewServer_Data[3326407] = {}
-- ===1星返利宝箱
-- ===索引: tOctNewServer_Data[3326407]
-- ===删除: 3326407,1
-- ===
-- ===
tOctNewServer_Data[3326407]["LogId"] = 12001637
tOctNewServer_Data[3326407]["DeleteItem"] = {}
tOctNewServer_Data[3326407]["DeleteItem"][1] = {}
tOctNewServer_Data[3326407]["DeleteItem"][1]["Id"] = 3326407 -- 【库】 3326407 【库里没有该物品】[属性:]
tOctNewServer_Data[3326407]["RewardItem"] = {}
tOctNewServer_Data[3326407]["RewardItem"][1] = {}
tOctNewServer_Data[3326407]["RewardItem"][1]["Id"] = 3326410 --  3326410 【库里没有该物品】, 【表格】+6极品装备宝箱
tOctNewServer_Data[3326407]["RewardItem"][1]["Attr"] = "0 1" --  3326410 【库里没有该物品】*1
tOctNewServer_Data[3326407]["RewardItem"][2] = {}
tOctNewServer_Data[3326407]["RewardItem"][2]["Id"] = 3326411 --  3326411 【库里没有该物品】, 【表格】（+2）职业神纹宝箱
tOctNewServer_Data[3326407]["RewardItem"][2]["Attr"] = "0 1" --  3326411 【库里没有该物品】*1
tOctNewServer_Data[3326407]["RewardItem"][3] = {}
tOctNewServer_Data[3326407]["RewardItem"][3]["Id"] = 3326412 --  3326412 【库里没有该物品】, 【表格】（+2）黄色神纹宝箱
tOctNewServer_Data[3326407]["RewardItem"][3]["Attr"] = "0 1" --  3326412 【库里没有该物品】*1
tOctNewServer_Data[3326407]["RewardItem"][4] = {}
tOctNewServer_Data[3326407]["RewardItem"][4]["Id"] = 3326413 --  3326413 【库里没有该物品】, 【表格】（+2）稀有黄色神纹宝箱
tOctNewServer_Data[3326407]["RewardItem"][4]["Attr"] = "0 1" --  3326413 【库里没有该物品】*1
tOctNewServer_Data[3326407]["RewardItem"][5] = {}
tOctNewServer_Data[3326407]["RewardItem"][5]["Id"] = 3326420 --  3326420 【库里没有该物品】, 【表格】副职业就职宝箱
tOctNewServer_Data[3326407]["RewardItem"][5]["Attr"] = "0 1" --  3326420 【库里没有该物品】*1
tOctNewServer_Data[3326407]["RewardItem"][6] = {}
tOctNewServer_Data[3326407]["RewardItem"][6]["Id"] = 3009104 -- RedBodhiBean[3009104][属性:9][叠加:99][金币:0], 【表格】血菩提
tOctNewServer_Data[3326407]["RewardItem"][6]["Attr"] = "0 11" -- RedBodhiBean*11（[错误]物品数量超10个）
tOctNewServer_Data[3326407]["RewardItem"][7] = {}
tOctNewServer_Data[3326407]["RewardItem"][7]["Id"] = 2100025 -- MiraculousGourd[2100025][属性:0][叠加:0][金币:1], 【表格】灵宝葫芦
tOctNewServer_Data[3326407]["RewardItem"][7]["Attr"] = "0 1 3" -- MiraculousGourd（赠）*1
tOctNewServer_Data[3326407]["RewardEffect"] = {}
tOctNewServer_Data[3326407]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tOctNewServer_Data[3326407]["RewardEffect"]["Effect"] = "angelwing"




-- 转世技能继承
local tOctNewServer_Skill = {}
-- 一转技能继承
tOctNewServer_Skill[1] = {}
-- 勇士职业
tOctNewServer_Skill[1][15] = {}
tOctNewServer_Skill[1][15][15] = {3050}
tOctNewServer_Skill[1][15][21] = {5100}
tOctNewServer_Skill[1][15][61] = {10490}
tOctNewServer_Skill[1][15][71] = {11140}
tOctNewServer_Skill[1][15][81] = {12240,12290}
tOctNewServer_Skill[1][15][161] = {12860,12870,12980,13090}
-- 战士职业
tOctNewServer_Skill[1][25] = {}
tOctNewServer_Skill[1][25][61] = {10490}
tOctNewServer_Skill[1][25][71] = {11140}
tOctNewServer_Skill[1][25][81] = {12240,12290}
tOctNewServer_Skill[1][25][161] = {12860,12870,12980,13090}
-- 弓手职业
tOctNewServer_Skill[1][45] = {}
tOctNewServer_Skill[1][45][11] = {5002}
tOctNewServer_Skill[1][45][21] = {5002}
tOctNewServer_Skill[1][45][45] = {5000}
tOctNewServer_Skill[1][45][61] = {10490}
tOctNewServer_Skill[1][45][71] = {11140}
tOctNewServer_Skill[1][45][81] = {12240,12290}
tOctNewServer_Skill[1][45][132] = {5002}
tOctNewServer_Skill[1][45][142] = {5002}
tOctNewServer_Skill[1][45][161] = {12860,12870,12980,13090}
-- 忍者职业
tOctNewServer_Skill[1][55] = {}
tOctNewServer_Skill[1][55][61] = {10490}
tOctNewServer_Skill[1][55][71] = {11140}
tOctNewServer_Skill[1][55][81] = {12240,12290}
tOctNewServer_Skill[1][55][161] = {12860,12870,12980,13090}
-- 武僧职业
tOctNewServer_Skill[1][65] = {}
tOctNewServer_Skill[1][65][71] = {11140}
tOctNewServer_Skill[1][65][81] = {12240,12290}
tOctNewServer_Skill[1][65][161] = {12860,12870,12980,13090}
-- 海盗职业
tOctNewServer_Skill[1][75] = {}
tOctNewServer_Skill[1][75][61] = {10490}
tOctNewServer_Skill[1][75][81] = {12240,12290}
tOctNewServer_Skill[1][75][161] = {12860,12870,12980,13090}
-- 水道士职业
tOctNewServer_Skill[1][135] = {}
tOctNewServer_Skill[1][135][61] = {10490}
tOctNewServer_Skill[1][135][71] = {11140}
tOctNewServer_Skill[1][135][81] = {12240,12290}
tOctNewServer_Skill[1][135][135] = {3090}
tOctNewServer_Skill[1][135][161] = {12860,12870,12980,13090}
-- 火道士职业
tOctNewServer_Skill[1][145] = {}
tOctNewServer_Skill[1][145][61] = {10490}
tOctNewServer_Skill[1][145][71] = {11140}
tOctNewServer_Skill[1][145][81] = {12240,12290}
tOctNewServer_Skill[1][145][145] = {3080}
tOctNewServer_Skill[1][145][161] = {12860,12870,12980,13090}
-- 铁扇门
tOctNewServer_Skill[1][165] = {}
tOctNewServer_Skill[1][165][61] = {10490}
tOctNewServer_Skill[1][165][71] = {11140}
tOctNewServer_Skill[1][165][81] = {12240,12290}
tOctNewServer_Skill[1][165][165] = {12860,12870,12980,13090}
-- 雷神
tOctNewServer_Skill[1][95] = {}
tOctNewServer_Skill[1][95][61] = {10490}
tOctNewServer_Skill[1][95][71] = {11140}
tOctNewServer_Skill[1][95][81] = {12240,12290}
tOctNewServer_Skill[1][95][161] = {12860,12870,12980,13090}
tOctNewServer_Skill[1][95][95] = {15750,15790}

-- 二转技能继承
tOctNewServer_Skill[2] = {}
-- 勇士职业
tOctNewServer_Skill[2][15] = {}
tOctNewServer_Skill[2][15][15] = {9876,3050}
tOctNewServer_Skill[2][15][21] = {9876,5100}
tOctNewServer_Skill[2][15][41] = {9876}
tOctNewServer_Skill[2][15][51] = {9876}
tOctNewServer_Skill[2][15][61] = {9876,10490}
tOctNewServer_Skill[2][15][71] = {9876,11140}
tOctNewServer_Skill[2][15][81] = {9876,12240,12290}
tOctNewServer_Skill[2][15][132] = {9876}
tOctNewServer_Skill[2][15][142] = {9876}
tOctNewServer_Skill[2][15][161] = {9876,12860,12870,12980,13090}
tOctNewServer_Skill[2][15][91] = {9876}
-- 战士
tOctNewServer_Skill[2][25] = {}
tOctNewServer_Skill[2][25][11] = {9876}
tOctNewServer_Skill[2][25][25] = {9876}
tOctNewServer_Skill[2][25][41] = {9876}
tOctNewServer_Skill[2][25][51] = {9876}
tOctNewServer_Skill[2][25][61] = {9876,10490}
tOctNewServer_Skill[2][25][71] = {9876,11140}
tOctNewServer_Skill[2][25][81] = {9876,12240,12290}
tOctNewServer_Skill[2][25][132] = {9876}
tOctNewServer_Skill[2][25][142] = {9876}
tOctNewServer_Skill[2][25][161] = {9876,12860,12870,12980,13090}
tOctNewServer_Skill[2][25][91] = {9876}
-- 弓箭手
tOctNewServer_Skill[2][45] = {}
tOctNewServer_Skill[2][45][11] = {9876,5002}
tOctNewServer_Skill[2][45][21] = {9876,5002}
tOctNewServer_Skill[2][45][45] = {9876,5000}
tOctNewServer_Skill[2][45][51] = {9876}
tOctNewServer_Skill[2][45][61] = {9876,10490}
tOctNewServer_Skill[2][45][71] = {9876,11140}
tOctNewServer_Skill[2][45][81] = {9876,12240,12290}
tOctNewServer_Skill[2][45][132] = {9876,5002}
tOctNewServer_Skill[2][45][142] = {9876,5002}
tOctNewServer_Skill[2][45][161] = {9876,12860,12870,12980,13090}
tOctNewServer_Skill[2][45][91] = {9876}
-- 忍者
tOctNewServer_Skill[2][55] = {}
tOctNewServer_Skill[2][55][11] = {9876}
tOctNewServer_Skill[2][55][21] = {9876}
tOctNewServer_Skill[2][55][41] = {9876}
tOctNewServer_Skill[2][55][55] = {9876}
tOctNewServer_Skill[2][55][61] = {9876,10490}
tOctNewServer_Skill[2][55][71] = {9876,11140}
tOctNewServer_Skill[2][55][81] = {9876,12240,12290}
tOctNewServer_Skill[2][55][132] = {9876}
tOctNewServer_Skill[2][55][142] = {9876}
tOctNewServer_Skill[2][55][161] = {9876,12860,12870,12980,13090}
tOctNewServer_Skill[2][55][91] = {9876}
-- 武僧
tOctNewServer_Skill[2][65] = {}
tOctNewServer_Skill[2][65][11] = {9876}
tOctNewServer_Skill[2][65][21] = {9876}
tOctNewServer_Skill[2][65][41] = {9876}
tOctNewServer_Skill[2][65][51] = {9876}
tOctNewServer_Skill[2][65][65] = {9876}
tOctNewServer_Skill[2][65][71] = {9876,11140}
tOctNewServer_Skill[2][65][81] = {9876,12240,12290}
tOctNewServer_Skill[2][65][132] = {9876}
tOctNewServer_Skill[2][65][142] = {9876}
tOctNewServer_Skill[2][65][161] = {9876,12860,12870,12980,13090}
tOctNewServer_Skill[2][65][91] = {9876}
-- 海盗
tOctNewServer_Skill[2][75] = {}
tOctNewServer_Skill[2][75][11] = {9876}
tOctNewServer_Skill[2][75][21] = {9876}
tOctNewServer_Skill[2][75][41] = {9876}
tOctNewServer_Skill[2][75][51] = {9876}
tOctNewServer_Skill[2][75][61] = {9876,10490}
tOctNewServer_Skill[2][75][75] = {9876}
tOctNewServer_Skill[2][75][81] = {9876,12240,12290}
tOctNewServer_Skill[2][75][132] = {9876}
tOctNewServer_Skill[2][75][142] = {9876}
tOctNewServer_Skill[2][75][161] = {9876,12860,12870,12980,13090}
tOctNewServer_Skill[2][75][91] = {9876}
-- 截拳师
tOctNewServer_Skill[2][85] = {}
tOctNewServer_Skill[2][85][11] = {9876}
tOctNewServer_Skill[2][85][21] = {9876}
tOctNewServer_Skill[2][85][41] = {9876}
tOctNewServer_Skill[2][85][51] = {9876}
tOctNewServer_Skill[2][85][61] = {9876}
tOctNewServer_Skill[2][85][71] = {9876}
tOctNewServer_Skill[2][85][85] = {9876}
tOctNewServer_Skill[2][85][132] = {9876}
tOctNewServer_Skill[2][85][142] = {9876}
tOctNewServer_Skill[2][85][161] = {9876,12860,12870,12980,13090}
tOctNewServer_Skill[2][85][91] = {9876}
-- 水道
tOctNewServer_Skill[2][135] = {}
tOctNewServer_Skill[2][135][11] = {9876}
tOctNewServer_Skill[2][135][21] = {9876}
tOctNewServer_Skill[2][135][41] = {9876}
tOctNewServer_Skill[2][135][51] = {9876}
tOctNewServer_Skill[2][135][61] = {9876,10490}
tOctNewServer_Skill[2][135][71] = {9876,11140}
tOctNewServer_Skill[2][135][81] = {9876,12240,12290}
tOctNewServer_Skill[2][135][135] = {9876,3090}
tOctNewServer_Skill[2][135][142] = {9876}
tOctNewServer_Skill[2][135][161] = {9876,12860,12870,12980,13090}
tOctNewServer_Skill[2][135][91] = {9876}
-- 火道
tOctNewServer_Skill[2][145] = {}
tOctNewServer_Skill[2][145][11] = {9876}
tOctNewServer_Skill[2][145][21] = {9876}
tOctNewServer_Skill[2][145][41] = {9876}
tOctNewServer_Skill[2][145][51] = {9876}
tOctNewServer_Skill[2][145][61] = {9876,10490}
tOctNewServer_Skill[2][145][71] = {9876,11140}
tOctNewServer_Skill[2][145][81] = {9876,12240,12290}
tOctNewServer_Skill[2][145][132] = {9876}
tOctNewServer_Skill[2][145][145] = {9876,3080}
tOctNewServer_Skill[2][145][161] = {9876,12860,12870,12980,13090}
tOctNewServer_Skill[2][145][91] = {9876}
-- 铁扇门
tOctNewServer_Skill[2][165] = {}
tOctNewServer_Skill[2][165][11] = {9876}
tOctNewServer_Skill[2][165][21] = {9876}
tOctNewServer_Skill[2][165][41] = {9876}
tOctNewServer_Skill[2][165][51] = {9876}
tOctNewServer_Skill[2][165][61] = {9876,10490}
tOctNewServer_Skill[2][165][71] = {9876,11140}
tOctNewServer_Skill[2][165][81] = {9876,12240,12290}
tOctNewServer_Skill[2][165][132] = {9876}
tOctNewServer_Skill[2][165][142] = {9876}
tOctNewServer_Skill[2][165][91] = {9876}
tOctNewServer_Skill[2][165][165] = {9876,12860,12870,12980,13090}
-- 雷神
tOctNewServer_Skill[2][95] = {}
tOctNewServer_Skill[2][95][11] = {9876}
tOctNewServer_Skill[2][95][21] = {9876}
tOctNewServer_Skill[2][95][41] = {9876}
tOctNewServer_Skill[2][95][51] = {9876}
tOctNewServer_Skill[2][95][61] = {9876,10490}
tOctNewServer_Skill[2][95][71] = {9876,11140}
tOctNewServer_Skill[2][95][81] = {9876,12240,12290}
tOctNewServer_Skill[2][95][132] = {9876}
tOctNewServer_Skill[2][95][142] = {9876}
tOctNewServer_Skill[2][95][161] = {9876,12860,12870,12980,13090}
tOctNewServer_Skill[2][95][95] = {9876,15750,15790}
	
	
tOctNewServer_Data["Emoneylog"]={}
tOctNewServer_Data["Emoneylog"][1]="350	22679	0	0	1	" --个人竞技场参与获得积分 
tOctNewServer_Data["Emoneylog"][2]="350	22680	0	0	1	" --个人竞技场胜利获得积分  
tOctNewServer_Data["Emoneylog"][3]="350	22681	0	0	1	" --骑马大赛获得第1名积分   
tOctNewServer_Data["Emoneylog"][4]="350	22682	0	0	1	" --骑马大赛获得第2-10名积分   
tOctNewServer_Data["Emoneylog"][5]="350	22683	0	0	1	" --开启显著功勋礼包获得5积分   
tOctNewServer_Data["Emoneylog"][6]="350	22684	0	0	1	" --开启卓越功勋礼包获得10积分   
tOctNewServer_Data["Emoneylog"][7]="350	22685	0	0	1	" --开启无双功勋礼包获得15积分   
tOctNewServer_Data["Emoneylog"][8]="350	22686	0	0	1	" --参加家族赛获得5分   
tOctNewServer_Data["Emoneylog"][9]="350	22687	0	0	1	" --骑马大赛10名外玩家积分 


--不额外给奖励的pk礼包id
tOctNewServer_Data["PkPackId"]={720794,720795,720798,720799,720802,720803,720806,720807,721300,721301,721304,721305,721308,721309,721312,721313,720714,
720715,720718,720719,720722,720723,720726,720727,3307012,3307013}

----------------------------------逻辑部分---------------------------------------------
--帮派战获胜额外获得6块霸王令
function OctNewServer_GuildExtraReward()
	--活动时间判断
	if not Sys_ChkFullTime(tActivityTime["OctNewServer"]["ActivityTime"]) then
		return 
	end
	
	--邮件发奖
	local sSender = tOctNewServer_Text["SendEmail"]["Sender"]
	local sTitle = tOctNewServer_Text["SendEmail"]["Title"]
	local sContent = tOctNewServer_Text["SendEmail"]["Content"]
	local nExistDay = 30
	local nActionId = 574752
	local nUserId = Get_UserId()
	
	Sys_SendMail(nUserId,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent)
end


--骑马大赛排名
function OctNewServer_CompetesRide(nUserId)

	--活动时间判断
	if not Sys_ChkFullTime(tActivityTime["OctNewServer"]["ActivityTime"]) then
		return 
	end

	local nNowNum = #tOctNewServer_RideRank
	local nScoreEvent=tOctNewServer_Data["Stc"]["Score"]["Event"]
	local nScoreType=tOctNewServer_Data["Stc"]["Score"]["Type"]
	
	--非前十玩家得5分
	if nNowNum >= 10 then 
		--加积分
		Task_AddStatistic(nScoreEvent,nScoreType,5,1,nUserId)
		Task_SetStcTimestamp(nScoreEvent,nScoreType,0,nUserId)
		Sys_SaveEmoneyBuy(tOctNewServer_Data["Emoneylog"][9],nUserId)
		return
	end
	
	--第一名得15分
	if nNowNum == 0 then
		--加积分
		Task_AddStatistic(nScoreEvent,nScoreType,15,1,nUserId)
		Task_SetStcTimestamp(nScoreEvent,nScoreType,0,nUserId)
		tOctNewServer_RideRank[nNowNum+1] = nUserId
		Sys_SaveEmoneyBuy(tOctNewServer_Data["Emoneylog"][3],nUserId)
		return
	end
	
	--2-10名得10分
	if nNowNum >= 1 and nNowNum < 10 then
		--加积分
		Task_AddStatistic(nScoreEvent,nScoreType,10,1,nUserId)
		Task_SetStcTimestamp(nScoreEvent,nScoreType,0,nUserId)
		tOctNewServer_RideRank[nNowNum+1] = nUserId
		Sys_SaveEmoneyBuy(tOctNewServer_Data["Emoneylog"][4],nUserId)
		return
	end 
end 
	
--0点清排行榜
function OctNewServer_ResetRideRank()
	--活动时间判断
	if not Sys_ChkFullTime(tActivityTime["OctNewServer"]["ActivityTime"]) then
		return 
	end
	
	tOctNewServer_RideRank={}
end 
	
--个人排位赛 参赛场触发
function OctNewServer_CompetesRanking(nUserId,nFieldNum)
	--活动时间判断
	if not Sys_ChkFullTime(tActivityTime["OctNewServer"]["ActivityTime"]) then
		return 
	end
	
	local nScoreEvent=tOctNewServer_Data["Stc"]["Score"]["Event"]
	local nScoreType=tOctNewServer_Data["Stc"]["Score"]["Type"]
	
	for i,v in pairs(tOctNewServer_Data["FieldNum"]) do 
		if nFieldNum == v then 
			Task_AddStatistic(nScoreEvent,nScoreType,1,1,nUserId)
			Task_SetStcTimestamp(nScoreEvent,nScoreType,0,nUserId)
			Sys_SaveEmoneyBuy(tOctNewServer_Data["Emoneylog"][1],nUserId)
		end
	end 
end 


--开启显著功勋礼包\卓越功勋礼包\无双功勋礼包
function OctNewServer_GetExtraPacScore(nItemId)
	if not Sys_ChkFullTime(tActivityTime["OctNewServer"]["ActivityTime"]) then
		return 
	end
	
	local nScoreEvent=tOctNewServer_Data["Stc"]["Score"]["Event"]
	local nScoreType=tOctNewServer_Data["Stc"]["Score"]["Type"]
	
	local nPackEvent=tOctNewServer_Data["Stc"]["ExtraPackScore"][nItemId]["Event"]
	local nPackType=tOctNewServer_Data["Stc"]["ExtraPackScore"][nItemId]["Type"]
	
	local nScore=tOctNewServer_Data["Stc"]["ExtraPackScore"][nItemId]["Score"]
	
	--隔天清掩码
	-- Task_StcReset(nPackEvent,nPackType)
	
	-- if Get_UserStatisticValue(nPackEvent, nPackType) >=1 then
		-- return
	-- end
	
	--打掩码
	-- Task_AddStatistic(nPackEvent,nPackType,1,1)
	-- Task_SetStcTimestamp(nPackEvent,nPackType,0)
	
	--给积分
	Task_AddStatistic(nScoreEvent,nScoreType,nScore,1)
	Task_SetStcTimestamp(nScoreEvent,nScoreType,0)
	
	--记emoneylog
	--显著功勋礼包
	if nItemId==3007108 then 
		Sys_SaveEmoneyBuy(tOctNewServer_Data["Emoneylog"][5])
	end 
	--卓越功勋礼包
	if nItemId==3007109 then 
		Sys_SaveEmoneyBuy(tOctNewServer_Data["Emoneylog"][6])
	end 
	--无上功勋礼包
	if nItemId==3007110 then 
		Sys_SaveEmoneyBuy(tOctNewServer_Data["Emoneylog"][7])
	end 
end

--帮派争霸赛\战旗争霸赛杀人触发
function OctNewServer_KillOther(nKiller, nBeKilled)

	local nUserId = nKiller or Get_UserId()
	local nUserMap = Get_UserMapId(nUserId)
	if not Sys_ChkFullTime(tActivityTime["OctNewServer"]["ActivityTime"]) then
		return 
	end
	
	
	--不在活动地图
	if tOctNewServer_Data["Kill"][nUserMap] == nil then
		return
	end
	
	--不在比赛时间
	if not Sys_ChkWeedTime(tOctNewServer_Data["Kill"][nUserMap]["Time"]) then
		return
	end
	
	local nKillNumEvent = tOctNewServer_Data["Kill"][nUserMap]["KillNum"]["Event"]
	local nKillNumData = tOctNewServer_Data["Kill"][nUserMap]["KillNum"]["Data"]
	
	local nNowScoreEvent = tOctNewServer_Data["Kill"][nUserMap]["ScoreEvent"]
	local nNowScoreData = tOctNewServer_Data["Kill"][nUserMap]["ScoreData"]
	
	local nTotalScoreEvent=tOctNewServer_Data["Stc"]["Score"]["Event"]
	local nTotalScoreType=tOctNewServer_Data["Stc"]["Score"]["Type"]
	
	local nAddScore=tOctNewServer_Data["Kill"][nUserMap]["Score"]
	
	local nLimit = tOctNewServer_Data["Kill"][nUserMap]["Max"]
	
	--隔周清掩码
	if Task_StcInterval(nKillNumEvent, nKillNumData, 1, 5, nUserId) then
		Task_SetStatistic(nKillNumEvent, nKillNumData, 0, 1, nUserId)
		Task_SetStcTimestamp(nKillNumEvent, nKillNumData, 0, nUserId)
	end
	
	if Task_StcInterval(nNowScoreEvent, nNowScoreData, 1, 5, nUserId) then
		Task_SetStatistic(nNowScoreEvent, nNowScoreData, 0, 1, nUserId)
		Task_SetStcTimestamp(nNowScoreEvent, nNowScoreData, 0, nUserId)
	end
	
	--达到每周积分上限
	if nLimit ~= nil then
		if Get_UserStatisticValue(nNowScoreEvent,nNowScoreData,nUserId)>=nLimit then 
			return 
		end 
	end 
	
	--加杀人数
	Task_AddStatistic(nKillNumEvent, nKillNumData, 1, 1, nUserId)
	Task_SetStcTimestamp(nKillNumEvent, nKillNumData, 0, nUserId)
	
	local nNowKill=Get_UserStatisticValue(nKillNumEvent,nKillNumData,nUserId)
	if nNowKill <= 5 then 
		return 
	else
		--加积分
		Task_AddStatistic(nNowScoreEvent, nNowScoreData, nAddScore, 1, nUserId)
		Task_SetStcTimestamp(nNowScoreEvent, nNowScoreData, 0, nUserId)
		
		Task_AddStatistic(nTotalScoreEvent, nTotalScoreType, nAddScore, 1, nUserId)
		Task_SetStcTimestamp(nTotalScoreEvent, nTotalScoreType, 0, nUserId)
	end 
end 

--加积分
function OctNewServer_AddScore(nIndex)
	if not Sys_ChkFullTime(tActivityTime["OctNewServer"]["ActivityTime"]) then
		return 
	end
	
			
	--不在比赛时间
	if tOctNewServer_Data["Stc"]["KillScore"][nIndex]["Time"] ~= nil then 
		if not Sys_ChkWeedTime(tOctNewServer_Data["Stc"]["KillScore"][nIndex]["Time"]) then
			return
		end
	end 
	
	--检查服务器是不是新服
	local nServerGlobal = tOctNewServer_Data["ServerGlobal"]
	if (Get_SysDynaGlobalData(nServerGlobal, 0) == 0) then
		return
	end
	
	local nUserId = Get_UserId()
	local nKillScoreEvent = tOctNewServer_Data["Stc"]["KillScore"][nIndex]["Event"]
	local nKillScoreType = tOctNewServer_Data["Stc"]["KillScore"][nIndex]["Type"]
	local nLimit = tOctNewServer_Data["Stc"]["KillScore"][nIndex]["Max"]
	local nAddScore=tOctNewServer_Data["Stc"]["KillScore"][nIndex]["Score"]
	
	local nTotalScoreEvent=tOctNewServer_Data["Stc"]["Score"]["Event"]
	local nTotalScoreType=tOctNewServer_Data["Stc"]["Score"]["Type"]
	
	--隔周清掩码
	if Task_StcInterval(nKillScoreEvent,nKillScoreType,1,5,nUserId) then
		Task_SetStatistic(nKillScoreEvent,nKillScoreType,0,1,nUserId)
		Task_SetStcTimestamp(nKillScoreEvent,nKillScoreType,0,nUserId)
	end
	
	--达到每周积分上限
	if nLimit ~= nil then
		if Get_UserStatisticValue(nKillScoreEvent,nKillScoreType,nUserId)>=nLimit then 
			return 
		end 
	end 
	
	--加积分
	if nAddScore ~= nil then
		Task_AddStatistic(nKillScoreEvent,nKillScoreType,nAddScore,1,nUserId)
		Task_SetStcTimestamp(nKillScoreEvent,nKillScoreType,0,nUserId)
		
		--加总积分
		Task_AddStatistic(nTotalScoreEvent,nTotalScoreType,nAddScore,1,nUserId)
		Task_SetStcTimestamp(nTotalScoreEvent,nTotalScoreType,0,nUserId)
	end
end
		
--个人排位赛 赢场触发
function OctNewServer_WinRanking(nUserId,nFieldNum)
	--活动时间判断
	if not Sys_ChkFullTime(tActivityTime["OctNewServer"]["ActivityTime"]) then
		return 
	end
	
	local nScoreEvent=tOctNewServer_Data["Stc"]["Score"]["Event"]
	local nScoreType=tOctNewServer_Data["Stc"]["Score"]["Type"]
	
	if nFieldNum <= 4 then 
		Task_AddStatistic(nScoreEvent,nScoreType,1,1,nUserId)
		Task_SetStcTimestamp(nScoreEvent,nScoreType,0,nUserId)
		Sys_SaveEmoneyBuy(tOctNewServer_Data["Emoneylog"][2],nUserId)
	end
end 


--pk赛礼包打开额外获得积分
function OctNewServer_PKScore(nItemId)
	--活动时间判断
	if not Sys_ChkFullTime(tActivityTime["OctNewServer"]["ActivityTime"]) then
		return 
	end
	
	
	for i,v in ipairs(tOctNewServer_Data["PkPackId"]) do 
		if nItemId==v then 
			return 
		end 
	end 
	
	if nItemId == nil then 
		local nUserId = Get_UserId()
		if Get_UserLevel(nUserId) <120 then 
			return 
		end 
	end 
	
	local nScoreEvent=tOctNewServer_Data["Stc"]["Score"]["Event"]
	local nScoreType=tOctNewServer_Data["Stc"]["Score"]["Type"]
	local nAddScore=0
	
	if nItemId == nil then 
		nAddScore=50 
	else
		nAddScore=tOctNewServer_Data["PK"][nItemId]["Score"]
	end 
	
	Task_AddStatistic(nScoreEvent,nScoreType,nAddScore,1,nUserId)
	Task_SetStcTimestamp(nScoreEvent,nScoreType,0,nUserId)
end 


--npc兑换令牌
function OctNewServer_Exchange(nIndex,nItemId1,nItemId2)
	--活动时间判断
	if not Sys_ChkFullTime(tActivityTime["OctNewServer"]["ActivityTime"]) then
		return 
	end
	
	local sItemName1=Get_ItemtypeName(nItemId1)
	local sItemName2=Get_ItemtypeName(nItemId2)
	
	--物品判断
	if not Item_ChkMulItem(nItemId1,nItemId1,1) then 
		return Sys_MsgBox(string.format(tOctNewServer_Text["SystemTips"]["ExchangeFail"],sItemName1))
	end 
	
	-- 判断背包空间
	local nGetRewardSpace = RewardTemplate_GetRewardSpace(tOctNewServer_Data["Exchange"][nIndex])
	local nDelRewardSpace = RewardTemplate_GetDelSpace(tOctNewServer_Data["Exchange"][nIndex])
	local nSpace = nGetRewardSpace - nDelRewardSpace
	if not User_CheckLeftSpace(nSpace) then
		return 
	end
	
	--兑换
	if RewardTemplate_UseItem(tOctNewServer_Data["Exchange"][nIndex]) then 
		return Sys_MsgBox(string.format(tOctNewServer_Text["SystemTips"]["ExchangeSuccess"],sItemName2))
	end 
end 


--打开活动界面
function OctNewServer_Link()
	--活动时间判断
	if not Sys_ChkFullTime(tActivityTime["OctNewServer"]["ActivityTime"]) then
		return 
	end
	local sWebPage =tOctNewServer_Data["Link"]
	User_SendWebPage(sWebPage)
end

---------------------------------------------------------------------------------
--设置玩家2转140级
function OctNewServer_UpLev()

	--活动时间判断
	if not Sys_ChkFullTime(tActivityTime["OctNewServer"]["ActivityTime"]) then
		return 
	end
	
	local nUserId = Get_UserId()
	local nProNow=Get_UserProfession(nUserId)
	
	if nProNow>=100 and nProNow <= 145 then
		nProNow=135
	end 
	
	local nGreatPro = (math.floor(nProNow/10)*1000)+5--计算最高职级
	User_SetProfession(nGreatPro, nUserId)  
	
	--继承祈福技能
	Magic_Learn(9876,nUserId)
end

--装备包使用
function OctNewServer_EquipmentPack(nItemId)
	local tPack=tOctNewServer_Data["Equipment"][nItemId]
	--判断职业，获得对应的物品ID  
	local nPro=Get_UserProfession()
	
	
	if nPro>=100 and nPro <= 145 then
		nPro=100
	elseif nPro >= 160 and nPro <= 165 then
		nPro=160
	else
		nPro=nPro-nPro%10
	end  
	
	
	
	--判断背包空间
	local nGetRewardSpace = RewardTemplate_GetRewardSpace(tPack[nPro])
	local nDelRewardSpace = RewardTemplate_GetDelSpace(tPack[nPro])
	local nSpace = nGetRewardSpace - nDelRewardSpace
	
	nSpace=nSpace+8
	
	if not User_CheckLeftSpace(nSpace) then
		return User_TalkChannel2005(string.format(tOctNewServer_Text["SystemTips"]["NoSpace"],nSpace))
	end
	
	--给物品
	if RewardTemplate_UseItem(tPack[nPro]) then 
		if nPro ~= 100 then 
			if RewardTemplate_UseItem(tOctNewServer_Data["Equipment"]["Normal"][nItemId]) then 
				return 
			end
		end 
	end 
end

--职业神纹宝箱使用
function OctNewServer_ProRunePack(nItemId)

	local tPack=tOctNewServer_Data[nItemId]
	--判断职业，获得对应的物品ID  
	local nPro=Get_UserProfession()

	if nPro>=100 and nPro <= 135 then
		nPro=130
	elseif nPro>=140 and nPro <= 145 then
		nPro=140
	elseif nPro >= 160 and nPro <= 165 then
		nPro=160
	else
		nPro=nPro-nPro%10
	end  

	--判断背包空间
	local nGetRewardSpace = RewardTemplate_GetRewardSpace(tPack[nPro])
	local nDelRewardSpace = RewardTemplate_GetDelSpace(tPack[nPro])
	local nSpace = nGetRewardSpace - nDelRewardSpace
	if not User_CheckLeftSpace(nSpace) then
		return User_TalkChannel2005(string.format(tOctNewServer_Text["SystemTips"]["NoSpace"],nSpace))
	end
	
	--给物品
	if RewardTemplate_UseItem(tPack[nPro]) then 
		return 
	end 
end 

--7阶全套神魂宝箱/6级全套淬炼宝箱使用
function OctNewServer_ProSoulPack(nItemId)
	
	local nIndex = 1
	--判断职业，获得对应的物品ID  
	local nPro=Get_UserProfession()
	
	--道士职业
	if nPro>=100 and nPro <= 145 then
		nIndex = 2
	end  
	
	--判断背包空间
	local nGetRewardSpace = RewardTemplate_GetRewardSpace(tOctNewServer_Data[nItemId][nIndex])
	local nDelRewardSpace = RewardTemplate_GetDelSpace(tOctNewServer_Data[nItemId][nIndex])
	local nSpace = nGetRewardSpace - nDelRewardSpace
	if not User_CheckLeftSpace(nSpace) then
		return User_TalkChannel2005(string.format(tOctNewServer_Text["SystemTips"]["NoSpace"],nSpace))
	end
	
	--给物品
	if RewardTemplate_UseItem(tOctNewServer_Data[nItemId][nIndex]) then 
		return 
	end 
end

--一般礼包使用
function OctNewServer_NormalPack(nItemId)
	local nUserId = Get_UserId()
	local bJudge = TermsOfUse_Main(nItemId,tOctNewServer_Data[nItemId])
	
	if not bJudge then
		return
	end
	
	RewardTemplate_UseItemAndMsg(tOctNewServer_Data[nItemId],nUserId,bJudge)
end 

-------------------------------------NPC部分--------------------------------------
--雪莉
tNpcFace[5293] = 185
tNpcGossip[24963]= tNpcGossip[24963] or DefaultNpc:new{}
tNpcGossip[24963]["OptionHidden"] = 1
tNpcGossip[24963]["DialogueText"] = tOctNewServer_Text[24963]

--活动前
tNpcGossip[24963]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[24963]["tOption1-1"] = {111}
tNpcGossip[24963]["ChkFunc1-1"] = function()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["OctNewServer"]["ActivityTime"])
end

--活动后
tNpcGossip[24963]["Text1-2"] = {121}
tNpcGossip[24963]["tOption1-2"] = {121}
tNpcGossip[24963]["ChkFunc1-2"] = function()
	return CommonFunc_GetAfterActivityTime(tActivityTime["OctNewServer"]["ActivityTime"])
end

--活动中 
tNpcGossip[24963]["Text1-3"] = {131,132,133,134,135}
tNpcGossip[24963]["tOption1-3"] = {131,132}
tNpcGossip[24963]["ChkFunc1-3"]= function()
--判断活动时间
	if not Sys_ChkFullTime(tActivityTime["OctNewServer"]["ActivityTime"])  then
		return false
	else
		return true
	end 
end 

tNpcGossip[24963]["OptionFunc131"]="OctNewServer_Link"


--凯特
tNpcFace[5294] = 159
tNpcGossip[24964]= tNpcGossip[24964] or DefaultNpc:new{}
tNpcGossip[24964]["OptionHidden"] = 1
tNpcGossip[24964]["DialogueText"] = tOctNewServer_Text[24964]

--活动前
tNpcGossip[24964]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[24964]["tOption1-1"] = {111}
tNpcGossip[24964]["ChkFunc1-1"] = function()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["OctNewServer"]["ActivityTime"])
end

--活动后
tNpcGossip[24964]["Text1-2"] = {121}
tNpcGossip[24964]["tOption1-2"] = {121}
tNpcGossip[24964]["ChkFunc1-2"] = function()
	return CommonFunc_GetAfterActivityTime(tActivityTime["OctNewServer"]["ActivityTime"])
end

--活动中 
tNpcGossip[24964]["Text1-3"] = {131,132,133,134,135,136,137,138,139,1310,1311,1312}
tNpcGossip[24964]["tOption1-3"] = {131,132}
tNpcGossip[24964]["ChkFunc1-3"]= function()
--判断活动时间
	if not Sys_ChkFullTime(tActivityTime["OctNewServer"]["ActivityTime"])  then
		return false
	else
		return true
	end 
end 

tNpcGossip[24964]["OptionFunc131"]="OctNewServer_Exchange</N>1</N>3326390</N>3326389"

--凯莉
tNpcFace[5295] = 162
tNpcGossip[24965]= tNpcGossip[24965] or DefaultNpc:new{}
tNpcGossip[24965]["OptionHidden"] = 1
tNpcGossip[24965]["DialogueText"] = tOctNewServer_Text[24965]

--活动前
tNpcGossip[24965]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[24965]["tOption1-1"] = {111}
tNpcGossip[24965]["ChkFunc1-1"] = function()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["OctNewServer"]["ActivityTime"])
end

--活动后
tNpcGossip[24965]["Text1-2"] = {121}
tNpcGossip[24965]["tOption1-2"] = {121}
tNpcGossip[24965]["ChkFunc1-2"] = function()
	return CommonFunc_GetAfterActivityTime(tActivityTime["OctNewServer"]["ActivityTime"])
end

--活动中 
tNpcGossip[24965]["Text1-3"] = {131,132,133,134,135,136,137,138,139,1310,1311,1312}
tNpcGossip[24965]["tOption1-3"] = {131,132}
tNpcGossip[24965]["ChkFunc1-3"]= function()
--判断活动时间
	if not Sys_ChkFullTime(tActivityTime["OctNewServer"]["ActivityTime"])  then
		return false
	else
		return true
	end 
end 

tNpcGossip[24965]["OptionFunc131"]="OctNewServer_Exchange</N>2</N>3326391</N>3326388"

--菲奥娜
tNpcFace[5296] = 148
tNpcGossip[24966]= tNpcGossip[24966] or DefaultNpc:new{}
tNpcGossip[24966]["OptionHidden"] = 1
tNpcGossip[24966]["DialogueText"] = tOctNewServer_Text[24966]

--活动前
tNpcGossip[24966]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[24966]["tOption1-1"] = {111}
tNpcGossip[24966]["ChkFunc1-1"] = function()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["OctNewServer"]["ActivityTime"])
end

--活动后
tNpcGossip[24966]["Text1-2"] = {121}
tNpcGossip[24966]["tOption1-2"] = {121}
tNpcGossip[24966]["ChkFunc1-2"] = function()
	return CommonFunc_GetAfterActivityTime(tActivityTime["OctNewServer"]["ActivityTime"])
end

--活动中 
tNpcGossip[24966]["Text1-3"] = {131,132,133,134,135,136,137,138,139,1310,1311,1312}
tNpcGossip[24966]["tOption1-3"] = {131,132}
tNpcGossip[24966]["ChkFunc1-3"]= function()
--判断活动时间
	if not Sys_ChkFullTime(tActivityTime["OctNewServer"]["ActivityTime"])  then
		return false
	else
		return true
	end 
end 

tNpcGossip[24966]["OptionFunc131"]="OctNewServer_Exchange</N>3</N>3326392</N>3326387"

----------------------------物品部分------------------------------------------------
--一般礼包使用

--返利宝箱
tItem[3326405] = tItem[3326405] or {}
tItem[3326405]["Function"] = function(nItemId,sItemName)
	OctNewServer_NormalPack(nItemId)
end

tItem[3326406] = tItem[3326405]
tItem[3326407] = tItem[3326405]

--+2黄色神纹
tItem[3326412] = tItem[3326405]
tItem[3326413] = tItem[3326405]
--+5黄色神纹
tItem[3326415] = tItem[3326405]
tItem[3326416] = tItem[3326405]
--+9黄色神纹
tItem[3326418] = tItem[3326405]
tItem[3326419] = tItem[3326405]
--副职业就职宝箱
tItem[3326420] = tItem[3326405]
--初级内功宝箱
tItem[3326421] = tItem[3326405]
--高级内功宝箱
tItem[3326422] = tItem[3326405]
--璀璨星陨石*220宝箱
tItem[3326425] = tItem[3326405]
--璀璨星陨石*20包
tItem[3326426] = tItem[3326405]
--璀璨星陨石*624宝箱
tItem[3326427] = tItem[3326405]
--璀璨星陨石*16包
tItem[3326428] = tItem[3326405]
--超大固化石*56宝箱
tItem[3326429] = tItem[3326405]
--超大固化石*7包
tItem[3326430] = tItem[3326405]


--装备包使用
tItem[3326408] = tItem[3326408] or {}
tItem[3326408]["Function"] = function(nItemId,sItemName)
	OctNewServer_EquipmentPack(nItemId)
end

tItem[3326409] = tItem[3326408]
tItem[3326410] = tItem[3326408]

--职业神纹宝箱使用
tItem[3326411] = tItem[3326411] or {}
tItem[3326411]["Function"] = function(nItemId,sItemName)
	OctNewServer_ProRunePack(nItemId)
end
tItem[3326414] = tItem[3326411]
tItem[3326417] = tItem[3326411]

--7阶全套神魂宝箱/6级全套淬炼宝箱使用
tItem[3326423] = tItem[3326423] or {}
tItem[3326423]["Function"] = function(nItemId,sItemName)
	OctNewServer_ProSoulPack(nItemId)
end

tItem[3326424] = tItem[3326423]


--凭证使用寻路
tItem[3326390] = tItem[3326390] or {}
tItem[3326390]["Function"] = function(nItemId,sItemName)
	NpcPosition_PathFind(24964)
end

tItem[3326391] = tItem[3326391] or {}
tItem[3326391]["Function"] = function(nItemId,sItemName)
	NpcPosition_PathFind(24965)
end

tItem[3326392] = tItem[3326392] or {}
tItem[3326392]["Function"] = function(nItemId,sItemName)
	NpcPosition_PathFind(24966)
end
---------------------------------------------------------------------------------
--个人排位赛：参赛场
tArenicCompetes["tFunction"] = tArenicCompetes["tFunction"] or {}
table.insert(tArenicCompetes["tFunction"],OctNewServer_CompetesRanking)

--个人排位赛：赢场
tArenicWins["tFunction"] = tArenicWins["tFunction"] or {}
table.insert(tArenicWins["tFunction"],OctNewServer_WinRanking)



--骑马大赛，玩家冲过终点是触发
tRideArrive["tFunction"] = tRideArrive["tFunction"] or {}
table.insert(tRideArrive["tFunction"],OctNewServer_CompetesRide)

tUserKilled["tFunction"] = tUserKilled["tFunction"] or {}
table.insert(tUserKilled["tFunction"], OctNewServer_KillOther)
---------------------------------------------------------------------------------
local tOctNewServer_ResetRideRank = {}
tOctNewServer_ResetRideRank["Type"] = 2
tOctNewServer_ResetRideRank["TimeType"] = 4
tOctNewServer_ResetRideRank["Time"] = "00:00 00:00"
tOctNewServer_ResetRideRank["Func"] = OctNewServer_ResetRideRank
table.insert(tSystemTime_InitialData,tOctNewServer_ResetRideRank)