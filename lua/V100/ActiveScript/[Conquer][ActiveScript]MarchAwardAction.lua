
------------------------------------------------------------------------------------
--Name:			190219[英文征服][活动脚本]3月线下活动相关发奖action制作
--Purpose:		3月线下活动相关发奖action制作
--Creator:		茅志伟
--Created:		2019/02/19
------------------------------------------------------------------------------------
--命名前缀 tMarchAwardAction_

--lua.ini 41147
--41147 = V100\ActiveScript\[Conquer][ActiveScript]MarchAwardAction.lua

--logId 12001302

local tMarchAwardAction_Pack = {}
--明亮星陨石精装包
tMarchAwardAction_Pack[3320199] = {}
tMarchAwardAction_Pack[3320199]["DeleteItem"] = {}
tMarchAwardAction_Pack[3320199]["DeleteItem"][1] = {}
tMarchAwardAction_Pack[3320199]["DeleteItem"][1]["Id"] = 3320199
tMarchAwardAction_Pack[3320199]["RewardItem"] = {}
tMarchAwardAction_Pack[3320199]["RewardItem"][1] = {}
tMarchAwardAction_Pack[3320199]["RewardItem"][1]["Id"] = 3009001
tMarchAwardAction_Pack[3320199]["RewardItem"][1]["Attr"] = "0 10 0 2880 1"
tMarchAwardAction_Pack[3320199]["RewardStrengthValue"] = {}
tMarchAwardAction_Pack[3320199]["RewardStrengthValue"]["Value"] = 2000
tMarchAwardAction_Pack[3320199]["RewardEffect"] = {}
tMarchAwardAction_Pack[3320199]["RewardEffect"]["SzObj"] = "self"
tMarchAwardAction_Pack[3320199]["RewardEffect"]["Effect"] = "angelwing"
tMarchAwardAction_Pack[3320199]["LogId"] = 12001269
--激情服PK赛专属奖励排名第一礼包
tMarchAwardAction_Pack[3320200] = {}
tMarchAwardAction_Pack[3320200]["DeleteItem"] = {}
tMarchAwardAction_Pack[3320200]["DeleteItem"][1] = {}
tMarchAwardAction_Pack[3320200]["DeleteItem"][1]["Id"] = 3320200
tMarchAwardAction_Pack[3320200]["RewardItem"] = {}
tMarchAwardAction_Pack[3320200]["RewardItem"][1] = {}
tMarchAwardAction_Pack[3320200]["RewardItem"][1]["Id"] = 200575
tMarchAwardAction_Pack[3320200]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
tMarchAwardAction_Pack[3320200]["RewardItem"][2] = {}
tMarchAwardAction_Pack[3320200]["RewardItem"][2]["Id"] = 2168895
tMarchAwardAction_Pack[3320200]["RewardItem"][2]["Attr"] = "0 1 3"
tMarchAwardAction_Pack[3320200]["RewardItem"][3] = {}
tMarchAwardAction_Pack[3320200]["RewardItem"][3]["Id"] = 3312040
tMarchAwardAction_Pack[3320200]["RewardItem"][3]["Attr"] = "0 1 3"
tMarchAwardAction_Pack[3320200]["RewardEMoneyMono"] = {} 
tMarchAwardAction_Pack[3320200]["RewardEMoneyMono"]["Value"] = 15000
tMarchAwardAction_Pack[3320200]["RewardTitle"] = {}
tMarchAwardAction_Pack[3320200]["RewardTitle"]["TitleType"] = 2031
tMarchAwardAction_Pack[3320200]["RewardTitle"]["TitleId"] = 2031
tMarchAwardAction_Pack[3320200]["RewardTitle"]["SaveTime"] = 0
tMarchAwardAction_Pack[3320200]["EmoneyLog"] = "10000	0184	0	0	15000	"
tMarchAwardAction_Pack[3320200]["RewardEffect"] = {}
tMarchAwardAction_Pack[3320200]["RewardEffect"]["SzObj"] = "self"
tMarchAwardAction_Pack[3320200]["RewardEffect"]["Effect"] = "angelwing"
tMarchAwardAction_Pack[3320200]["LogId"] = 12001269
--激情服PK赛专属奖励排名第二礼包
tMarchAwardAction_Pack[3320201] = {}
tMarchAwardAction_Pack[3320201]["DeleteItem"] = {}
tMarchAwardAction_Pack[3320201]["DeleteItem"][1] = {}
tMarchAwardAction_Pack[3320201]["DeleteItem"][1]["Id"] = 3320201
tMarchAwardAction_Pack[3320201]["RewardItem"] = {}
tMarchAwardAction_Pack[3320201]["RewardItem"][1] = {}
tMarchAwardAction_Pack[3320201]["RewardItem"][1]["Id"] = 193625
tMarchAwardAction_Pack[3320201]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
tMarchAwardAction_Pack[3320201]["RewardEMoneyMono"] = {} 
tMarchAwardAction_Pack[3320201]["RewardEMoneyMono"]["Value"] = 15000
tMarchAwardAction_Pack[3320201]["EmoneyLog"] = "10000	0185	0	0	15000	"
tMarchAwardAction_Pack[3320201]["RewardEffect"] = {}
tMarchAwardAction_Pack[3320201]["RewardEffect"]["SzObj"] = "self"
tMarchAwardAction_Pack[3320201]["RewardEffect"]["Effect"] = "angelwing"
tMarchAwardAction_Pack[3320201]["LogId"] = 12001269
--激情服PK赛专属奖励排名第三礼包
tMarchAwardAction_Pack[3320202] = {}
tMarchAwardAction_Pack[3320202]["DeleteItem"] = {}
tMarchAwardAction_Pack[3320202]["DeleteItem"][1] = {}
tMarchAwardAction_Pack[3320202]["DeleteItem"][1]["Id"] = 3320202
tMarchAwardAction_Pack[3320202]["RewardItem"] = {}
tMarchAwardAction_Pack[3320202]["RewardItem"][1] = {}
tMarchAwardAction_Pack[3320202]["RewardItem"][1]["Id"] = 193695
tMarchAwardAction_Pack[3320202]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
tMarchAwardAction_Pack[3320202]["RewardEMoneyMono"] = {} 
tMarchAwardAction_Pack[3320202]["RewardEMoneyMono"]["Value"] = 15000
tMarchAwardAction_Pack[3320202]["EmoneyLog"] = "10000	0186	0	0	15000	"
tMarchAwardAction_Pack[3320202]["RewardEffect"] = {}
tMarchAwardAction_Pack[3320202]["RewardEffect"]["SzObj"] = "self"
tMarchAwardAction_Pack[3320202]["RewardEffect"]["Effect"] = "angelwing"
tMarchAwardAction_Pack[3320202]["LogId"] = 12001269
--激情服PK赛专属奖励排名第四到八名礼包
tMarchAwardAction_Pack[3320203] = {}
tMarchAwardAction_Pack[3320203]["DeleteItem"] = {}
tMarchAwardAction_Pack[3320203]["DeleteItem"][1] = {}
tMarchAwardAction_Pack[3320203]["DeleteItem"][1]["Id"] = 3320203
tMarchAwardAction_Pack[3320203]["RewardItem"] = {}
tMarchAwardAction_Pack[3320203]["RewardItem"][1] = {}
tMarchAwardAction_Pack[3320203]["RewardItem"][1]["Id"] = 200532
tMarchAwardAction_Pack[3320203]["RewardItem"][1]["Attr"] = "0 1 3 259200 1 0 0 1"
tMarchAwardAction_Pack[3320203]["RewardEMoneyMono"] = {} 
tMarchAwardAction_Pack[3320203]["RewardEMoneyMono"]["Value"] = 15000
tMarchAwardAction_Pack[3320203]["EmoneyLog"] = "10000	0187	0	0	15000	"
tMarchAwardAction_Pack[3320203]["RewardEffect"] = {}
tMarchAwardAction_Pack[3320203]["RewardEffect"]["SzObj"] = "self"
tMarchAwardAction_Pack[3320203]["RewardEffect"]["Effect"] = "angelwing"
tMarchAwardAction_Pack[3320203]["LogId"] = 12001269
--五星外套至尊可选包
tMarchAwardAction_Pack[3320204] = {}
--东方不败-至尊
tMarchAwardAction_Pack[3320204][1] = {}
tMarchAwardAction_Pack[3320204][1]["DeleteItem"] = {}
tMarchAwardAction_Pack[3320204][1]["DeleteItem"][1] = {}
tMarchAwardAction_Pack[3320204][1]["DeleteItem"][1]["Id"] = 3320204
tMarchAwardAction_Pack[3320204][1]["RewardItem"] = {}
tMarchAwardAction_Pack[3320204][1]["RewardItem"][1] = {}
tMarchAwardAction_Pack[3320204][1]["RewardItem"][1]["Id"] = 195485
tMarchAwardAction_Pack[3320204][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
tMarchAwardAction_Pack[3320204][1]["RewardEffect"] = {}
tMarchAwardAction_Pack[3320204][1]["RewardEffect"]["SzObj"] = "self"
tMarchAwardAction_Pack[3320204][1]["RewardEffect"]["Effect"] = "angelwing"
tMarchAwardAction_Pack[3320204][1]["LogId"] = 12001269
--大圣魔铠【齐天】
tMarchAwardAction_Pack[3320204][2] = {}
tMarchAwardAction_Pack[3320204][2]["DeleteItem"] = {}
tMarchAwardAction_Pack[3320204][2]["DeleteItem"][1] = {}
tMarchAwardAction_Pack[3320204][2]["DeleteItem"][1]["Id"] = 3320204
tMarchAwardAction_Pack[3320204][2]["RewardItem"] = {}
tMarchAwardAction_Pack[3320204][2]["RewardItem"][1] = {}
tMarchAwardAction_Pack[3320204][2]["RewardItem"][1]["Id"] = 189695
tMarchAwardAction_Pack[3320204][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
tMarchAwardAction_Pack[3320204][2]["RewardEffect"] = {}
tMarchAwardAction_Pack[3320204][2]["RewardEffect"]["SzObj"] = "self"
tMarchAwardAction_Pack[3320204][2]["RewardEffect"]["Effect"] = "angelwing"
tMarchAwardAction_Pack[3320204][2]["LogId"] = 12001269
--紫音青衫【霞光】
tMarchAwardAction_Pack[3320204][3] = {}
tMarchAwardAction_Pack[3320204][3]["DeleteItem"] = {}
tMarchAwardAction_Pack[3320204][3]["DeleteItem"][1] = {}
tMarchAwardAction_Pack[3320204][3]["DeleteItem"][1]["Id"] = 3320204
tMarchAwardAction_Pack[3320204][3]["RewardItem"] = {}
tMarchAwardAction_Pack[3320204][3]["RewardItem"][1] = {}
tMarchAwardAction_Pack[3320204][3]["RewardItem"][1]["Id"] = 194875
tMarchAwardAction_Pack[3320204][3]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
tMarchAwardAction_Pack[3320204][3]["RewardEffect"] = {}
tMarchAwardAction_Pack[3320204][3]["RewardEffect"]["SzObj"] = "self"
tMarchAwardAction_Pack[3320204][3]["RewardEffect"]["Effect"] = "angelwing"
tMarchAwardAction_Pack[3320204][3]["LogId"] = 12001269

--五星外套豪华可选包
tMarchAwardAction_Pack[3320205] = {}
--东方不败-至尊
tMarchAwardAction_Pack[3320205][1] = {}
tMarchAwardAction_Pack[3320205][1]["DeleteItem"] = {}
tMarchAwardAction_Pack[3320205][1]["DeleteItem"][1] = {}
tMarchAwardAction_Pack[3320205][1]["DeleteItem"][1]["Id"] = 3320205
tMarchAwardAction_Pack[3320205][1]["RewardItem"] = {}
tMarchAwardAction_Pack[3320205][1]["RewardItem"][1] = {}
tMarchAwardAction_Pack[3320205][1]["RewardItem"][1]["Id"] = 195485
tMarchAwardAction_Pack[3320205][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
tMarchAwardAction_Pack[3320205][1]["RewardEffect"] = {}
tMarchAwardAction_Pack[3320205][1]["RewardEffect"]["SzObj"] = "self"
tMarchAwardAction_Pack[3320205][1]["RewardEffect"]["Effect"] = "angelwing"
tMarchAwardAction_Pack[3320205][1]["LogId"] = 12001269
--大圣魔铠【齐天】
tMarchAwardAction_Pack[3320205][2] = {}
tMarchAwardAction_Pack[3320205][2]["DeleteItem"] = {}
tMarchAwardAction_Pack[3320205][2]["DeleteItem"][1] = {}
tMarchAwardAction_Pack[3320205][2]["DeleteItem"][1]["Id"] = 3320205
tMarchAwardAction_Pack[3320205][2]["RewardItem"] = {}
tMarchAwardAction_Pack[3320205][2]["RewardItem"][1] = {}
tMarchAwardAction_Pack[3320205][2]["RewardItem"][1]["Id"] = 189695
tMarchAwardAction_Pack[3320205][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
tMarchAwardAction_Pack[3320205][2]["RewardEffect"] = {}
tMarchAwardAction_Pack[3320205][2]["RewardEffect"]["SzObj"] = "self"
tMarchAwardAction_Pack[3320205][2]["RewardEffect"]["Effect"] = "angelwing"
tMarchAwardAction_Pack[3320205][2]["LogId"] = 12001269

--五星外套尊享可选包
tMarchAwardAction_Pack[3320206] = {}
--大圣魔铠【齐天】
tMarchAwardAction_Pack[3320206][1] = {}
tMarchAwardAction_Pack[3320206][1]["DeleteItem"] = {}
tMarchAwardAction_Pack[3320206][1]["DeleteItem"][1] = {}
tMarchAwardAction_Pack[3320206][1]["DeleteItem"][1]["Id"] = 3320206
tMarchAwardAction_Pack[3320206][1]["RewardItem"] = {}
tMarchAwardAction_Pack[3320206][1]["RewardItem"][1] = {}
tMarchAwardAction_Pack[3320206][1]["RewardItem"][1]["Id"] = 189695
tMarchAwardAction_Pack[3320206][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
tMarchAwardAction_Pack[3320206][1]["RewardEffect"] = {}
tMarchAwardAction_Pack[3320206][1]["RewardEffect"]["SzObj"] = "self"
tMarchAwardAction_Pack[3320206][1]["RewardEffect"]["Effect"] = "angelwing"
tMarchAwardAction_Pack[3320206][1]["LogId"] = 12001269
--紫音青衫【霞光】
tMarchAwardAction_Pack[3320206][2] = {}
tMarchAwardAction_Pack[3320206][2]["DeleteItem"] = {}
tMarchAwardAction_Pack[3320206][2]["DeleteItem"][1] = {}
tMarchAwardAction_Pack[3320206][2]["DeleteItem"][1]["Id"] = 3320206
tMarchAwardAction_Pack[3320206][2]["RewardItem"] = {}
tMarchAwardAction_Pack[3320206][2]["RewardItem"][1] = {}
tMarchAwardAction_Pack[3320206][2]["RewardItem"][1]["Id"] = 194875
tMarchAwardAction_Pack[3320206][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
tMarchAwardAction_Pack[3320206][2]["RewardEffect"] = {}
tMarchAwardAction_Pack[3320206][2]["RewardEffect"]["SzObj"] = "self"
tMarchAwardAction_Pack[3320206][2]["RewardEffect"]["Effect"] = "angelwing"
tMarchAwardAction_Pack[3320206][2]["LogId"] = 12001269

--雷神印记礼包
tMarchAwardAction_Pack[3320207] = {}
tMarchAwardAction_Pack[3320207]["DeleteItem"] = {}
tMarchAwardAction_Pack[3320207]["DeleteItem"][1] = {}
tMarchAwardAction_Pack[3320207]["DeleteItem"][1]["Id"] = 3320207
tMarchAwardAction_Pack[3320207]["RewardItem"] = {}
tMarchAwardAction_Pack[3320207]["RewardItem"][1] = {}
tMarchAwardAction_Pack[3320207]["RewardItem"][1]["Id"] = 3009001
tMarchAwardAction_Pack[3320207]["RewardItem"][1]["Attr"] = "0 2 0 2880 1"
tMarchAwardAction_Pack[3320207]["RewardItem"][2] = {}
tMarchAwardAction_Pack[3320207]["RewardItem"][2]["Id"] = 4050001
tMarchAwardAction_Pack[3320207]["RewardItem"][2]["Attr"] = "0 50 3"
tMarchAwardAction_Pack[3320207]["RewardEffect"] = {}
tMarchAwardAction_Pack[3320207]["RewardEffect"]["SzObj"] = "self"
tMarchAwardAction_Pack[3320207]["RewardEffect"]["Effect"] = "angelwing"
tMarchAwardAction_Pack[3320207]["LogId"] = 12001269
--雷神印记至尊礼包
tMarchAwardAction_Pack[3320208] = {}
tMarchAwardAction_Pack[3320208]["DeleteItem"] = {}
tMarchAwardAction_Pack[3320208]["DeleteItem"][1] = {}
tMarchAwardAction_Pack[3320208]["DeleteItem"][1]["Id"] = 3320208
tMarchAwardAction_Pack[3320208]["RewardItem"] = {}
tMarchAwardAction_Pack[3320208]["RewardItem"][1] = {}
tMarchAwardAction_Pack[3320208]["RewardItem"][1]["Id"] = 3320204
tMarchAwardAction_Pack[3320208]["RewardItem"][1]["Attr"] = "0 1"
tMarchAwardAction_Pack[3320208]["RewardRepairValue"] = {}
tMarchAwardAction_Pack[3320208]["RewardRepairValue"]["Value"] = 300000
tMarchAwardAction_Pack[3320208]["RewardStrengthValue"] = {}
tMarchAwardAction_Pack[3320208]["RewardStrengthValue"]["Value"] = 200000
tMarchAwardAction_Pack[3320208]["RewardEffect"] = {}
tMarchAwardAction_Pack[3320208]["RewardEffect"]["SzObj"] = "self"
tMarchAwardAction_Pack[3320208]["RewardEffect"]["Effect"] = "angelwing"
tMarchAwardAction_Pack[3320208]["LogId"] = 12001269
--雷神印记豪侠礼包
tMarchAwardAction_Pack[3320209] = {}
tMarchAwardAction_Pack[3320209]["DeleteItem"] = {}
tMarchAwardAction_Pack[3320209]["DeleteItem"][1] = {}
tMarchAwardAction_Pack[3320209]["DeleteItem"][1]["Id"] = 3320209
tMarchAwardAction_Pack[3320209]["RewardItem"] = {}
tMarchAwardAction_Pack[3320209]["RewardItem"][1] = {}
tMarchAwardAction_Pack[3320209]["RewardItem"][1]["Id"] = 3320205
tMarchAwardAction_Pack[3320209]["RewardItem"][1]["Attr"] = "0 1"
tMarchAwardAction_Pack[3320209]["RewardRepairValue"] = {}
tMarchAwardAction_Pack[3320209]["RewardRepairValue"]["Value"] = 250000
tMarchAwardAction_Pack[3320209]["RewardStrengthValue"] = {}
tMarchAwardAction_Pack[3320209]["RewardStrengthValue"]["Value"] = 150000
tMarchAwardAction_Pack[3320209]["RewardEffect"] = {}
tMarchAwardAction_Pack[3320209]["RewardEffect"]["SzObj"] = "self"
tMarchAwardAction_Pack[3320209]["RewardEffect"]["Effect"] = "angelwing"
tMarchAwardAction_Pack[3320209]["LogId"] = 12001269
--雷神印记精英礼包
tMarchAwardAction_Pack[3320210] = {}
tMarchAwardAction_Pack[3320210]["DeleteItem"] = {}
tMarchAwardAction_Pack[3320210]["DeleteItem"][1] = {}
tMarchAwardAction_Pack[3320210]["DeleteItem"][1]["Id"] = 3320210
tMarchAwardAction_Pack[3320210]["RewardItem"] = {}
tMarchAwardAction_Pack[3320210]["RewardItem"][1] = {}
tMarchAwardAction_Pack[3320210]["RewardItem"][1]["Id"] = 3320206
tMarchAwardAction_Pack[3320210]["RewardItem"][1]["Attr"] = "0 1"
tMarchAwardAction_Pack[3320210]["RewardRepairValue"] = {}
tMarchAwardAction_Pack[3320210]["RewardRepairValue"]["Value"] = 200000
tMarchAwardAction_Pack[3320210]["RewardStrengthValue"] = {}
tMarchAwardAction_Pack[3320210]["RewardStrengthValue"]["Value"] = 100000
tMarchAwardAction_Pack[3320210]["RewardEffect"] = {}
tMarchAwardAction_Pack[3320210]["RewardEffect"]["SzObj"] = "self"
tMarchAwardAction_Pack[3320210]["RewardEffect"]["Effect"] = "angelwing"
tMarchAwardAction_Pack[3320210]["LogId"] = 12001269
--雷神印记高手礼包
tMarchAwardAction_Pack[3320211] = {}
tMarchAwardAction_Pack[3320211]["DeleteItem"] = {}
tMarchAwardAction_Pack[3320211]["DeleteItem"][1] = {}
tMarchAwardAction_Pack[3320211]["DeleteItem"][1]["Id"] = 3320211
tMarchAwardAction_Pack[3320211]["RewardItem"] = {}
tMarchAwardAction_Pack[3320211]["RewardItem"][1] = {}
tMarchAwardAction_Pack[3320211]["RewardItem"][1]["Id"] = 189695
tMarchAwardAction_Pack[3320211]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
tMarchAwardAction_Pack[3320211]["RewardRepairValue"] = {}
tMarchAwardAction_Pack[3320211]["RewardRepairValue"]["Value"] = 100000
tMarchAwardAction_Pack[3320211]["RewardStrengthValue"] = {}
tMarchAwardAction_Pack[3320211]["RewardStrengthValue"]["Value"] = 50000
tMarchAwardAction_Pack[3320211]["RewardEffect"] = {}
tMarchAwardAction_Pack[3320211]["RewardEffect"]["SzObj"] = "self"
tMarchAwardAction_Pack[3320211]["RewardEffect"]["Effect"] = "angelwing"
tMarchAwardAction_Pack[3320211]["LogId"] = 12001269
--五星坐骑外套可选包
tMarchAwardAction_Pack[3320212] = {}
--AuspiciousCloud
tMarchAwardAction_Pack[3320212][1] = {}
tMarchAwardAction_Pack[3320212][1]["DeleteItem"] = {}
tMarchAwardAction_Pack[3320212][1]["DeleteItem"][1] = {}
tMarchAwardAction_Pack[3320212][1]["DeleteItem"][1]["Id"] = 3320212
tMarchAwardAction_Pack[3320212][1]["RewardItem"] = {}
tMarchAwardAction_Pack[3320212][1]["RewardItem"][1] = {}
tMarchAwardAction_Pack[3320212][1]["RewardItem"][1]["Id"] = 200629
tMarchAwardAction_Pack[3320212][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
tMarchAwardAction_Pack[3320212][1]["RewardEffect"] = {}
tMarchAwardAction_Pack[3320212][1]["RewardEffect"]["SzObj"] = "self"
tMarchAwardAction_Pack[3320212][1]["RewardEffect"]["Effect"] = "angelwing"
tMarchAwardAction_Pack[3320212][1]["LogId"] = 12001269
--PacificCloud
tMarchAwardAction_Pack[3320212][2] = {}
tMarchAwardAction_Pack[3320212][2]["DeleteItem"] = {}
tMarchAwardAction_Pack[3320212][2]["DeleteItem"][1] = {}
tMarchAwardAction_Pack[3320212][2]["DeleteItem"][1]["Id"] = 3320212
tMarchAwardAction_Pack[3320212][2]["RewardItem"] = {}
tMarchAwardAction_Pack[3320212][2]["RewardItem"][1] = {}
tMarchAwardAction_Pack[3320212][2]["RewardItem"][1]["Id"] = 200614
tMarchAwardAction_Pack[3320212][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
tMarchAwardAction_Pack[3320212][2]["RewardEffect"] = {}
tMarchAwardAction_Pack[3320212][2]["RewardEffect"]["SzObj"] = "self"
tMarchAwardAction_Pack[3320212][2]["RewardEffect"]["Effect"] = "angelwing"
tMarchAwardAction_Pack[3320212][2]["LogId"] = 12001269

--充值排行第一奖励礼包
tMarchAwardAction_Pack[3320213] = {}
tMarchAwardAction_Pack[3320213]["DeleteItem"] = {}
tMarchAwardAction_Pack[3320213]["DeleteItem"][1] = {}
tMarchAwardAction_Pack[3320213]["DeleteItem"][1]["Id"] = 3320213
tMarchAwardAction_Pack[3320213]["RewardItem"] = {}
tMarchAwardAction_Pack[3320213]["RewardItem"][1] = {}
tMarchAwardAction_Pack[3320213]["RewardItem"][1]["Id"] = 3320212
tMarchAwardAction_Pack[3320213]["RewardItem"][1]["Attr"] = "0 1"
tMarchAwardAction_Pack[3320213]["RewardItem"][2] = {}
tMarchAwardAction_Pack[3320213]["RewardItem"][2]["Id"] = 711903
tMarchAwardAction_Pack[3320213]["RewardItem"][2]["Attr"] = "0 1"
tMarchAwardAction_Pack[3320213]["RewardEffect"] = {}
tMarchAwardAction_Pack[3320213]["RewardEffect"]["SzObj"] = "self"
tMarchAwardAction_Pack[3320213]["RewardEffect"]["Effect"] = "angelwing"
tMarchAwardAction_Pack[3320213]["LogId"] = 12001269

--充值排行第二奖励礼包
tMarchAwardAction_Pack[3320214] = {}
tMarchAwardAction_Pack[3320214]["DeleteItem"] = {}
tMarchAwardAction_Pack[3320214]["DeleteItem"][1] = {}
tMarchAwardAction_Pack[3320214]["DeleteItem"][1]["Id"] = 3320214
tMarchAwardAction_Pack[3320214]["RewardItem"] = {}
tMarchAwardAction_Pack[3320214]["RewardItem"][1] = {}
tMarchAwardAction_Pack[3320214]["RewardItem"][1]["Id"] = 200572
tMarchAwardAction_Pack[3320214]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
tMarchAwardAction_Pack[3320214]["RewardStrengthValue"] = {}
tMarchAwardAction_Pack[3320214]["RewardStrengthValue"]["Value"] = 150000 
tMarchAwardAction_Pack[3320214]["RewardEffect"] = {}
tMarchAwardAction_Pack[3320214]["RewardEffect"]["SzObj"] = "self"
tMarchAwardAction_Pack[3320214]["RewardEffect"]["Effect"] = "angelwing"
tMarchAwardAction_Pack[3320214]["LogId"] = 12001269
--充值排行第三奖励礼包
tMarchAwardAction_Pack[3320215] = {}
tMarchAwardAction_Pack[3320215]["DeleteItem"] = {}
tMarchAwardAction_Pack[3320215]["DeleteItem"][1] = {}
tMarchAwardAction_Pack[3320215]["DeleteItem"][1]["Id"] = 3320215
tMarchAwardAction_Pack[3320215]["RewardItem"] = {}
tMarchAwardAction_Pack[3320215]["RewardItem"][1] = {}
tMarchAwardAction_Pack[3320215]["RewardItem"][1]["Id"] = 3300244
tMarchAwardAction_Pack[3320215]["RewardItem"][1]["Attr"] = "0 3"
tMarchAwardAction_Pack[3320215]["RewardStrengthValue"] = {}
tMarchAwardAction_Pack[3320215]["RewardStrengthValue"]["Value"] = 150000 
tMarchAwardAction_Pack[3320215]["RewardEffect"] = {}
tMarchAwardAction_Pack[3320215]["RewardEffect"]["SzObj"] = "self"
tMarchAwardAction_Pack[3320215]["RewardEffect"]["Effect"] = "angelwing"
tMarchAwardAction_Pack[3320215]["LogId"] = 12001269
--充值排行第四到八奖励礼包
tMarchAwardAction_Pack[3320216] = {}
tMarchAwardAction_Pack[3320216]["DeleteItem"] = {}
tMarchAwardAction_Pack[3320216]["DeleteItem"][1] = {}
tMarchAwardAction_Pack[3320216]["DeleteItem"][1]["Id"] = 3320216
tMarchAwardAction_Pack[3320216]["RewardItem"] = {}
tMarchAwardAction_Pack[3320216]["RewardItem"][1] = {}
tMarchAwardAction_Pack[3320216]["RewardItem"][1]["Id"] = 3300244
tMarchAwardAction_Pack[3320216]["RewardItem"][1]["Attr"] = "0 1"
tMarchAwardAction_Pack[3320216]["RewardStrengthValue"] = {}
tMarchAwardAction_Pack[3320216]["RewardStrengthValue"]["Value"] = 100000 
tMarchAwardAction_Pack[3320216]["RewardEffect"] = {}
tMarchAwardAction_Pack[3320216]["RewardEffect"]["SzObj"] = "self"
tMarchAwardAction_Pack[3320216]["RewardEffect"]["Effect"] = "angelwing"
tMarchAwardAction_Pack[3320216]["LogId"] = 12001269



-----------------------------------------------------逻辑

function MarchAwardAction_OpenPack(nItemId,nNum)
	if not Item_ChkItem(nItemId) then 
		return
	end 
	
	RewardTemplate_UseItemAndMsg(tMarchAwardAction_Pack[nItemId][nNum])
end 

function MarchAwardAction_UsePack(nItemId)
	if not Item_ChkItem(nItemId) then 
		return
	end 
	if Get_UserMonoEMoney() + tMarchAwardAction_Pack[nItemId]["RewardEMoneyMono"]["Value"] > G_User_MaxEmoneyMono then
		User_TalkChannel2005(tMarchAwardAction_Text["NotEMoneyMono"])
		return
	end	
	RewardTemplate_UseItemAndMsg(tMarchAwardAction_Pack[nItemId])
end 

---------------------------------------------------对白逻辑
tItemFace[3320204] = 1448
tItem[3320204] = tItem[3320204] or {}
tItem[3320204]["DialogueText"] = tMarchAwardAction_Text[3320204]
tItem[3320204]["Text1-1"] = {111}
tItem[3320204]["tOption1-1"] = {111,112,113}
tItem[3320204]["OptionFunc111"] = "MarchAwardAction_OpenPack</N>3320204</N>1"
tItem[3320204]["OptionFunc112"] = "MarchAwardAction_OpenPack</N>3320204</N>2"
tItem[3320204]["OptionFunc113"] = "MarchAwardAction_OpenPack</N>3320204</N>3"

tItemFace[3320205] = 1164
tItem[3320205] = tItem[3320205] or {}
tItem[3320205]["DialogueText"] = tMarchAwardAction_Text[3320205]
tItem[3320205]["Text1-1"] = {111}
tItem[3320205]["tOption1-1"] = {111,112,113}
tItem[3320205]["OptionFunc111"] = "MarchAwardAction_OpenPack</N>3320205</N>1"
tItem[3320205]["OptionFunc112"] = "MarchAwardAction_OpenPack</N>3320205</N>2"

tItemFace[3320206] = 1418
tItem[3320206] = tItem[3320206] or {}
tItem[3320206]["DialogueText"] = tMarchAwardAction_Text[3320206]
tItem[3320206]["Text1-1"] = {111}
tItem[3320206]["tOption1-1"] = {111,112,113}
tItem[3320206]["OptionFunc111"] = "MarchAwardAction_OpenPack</N>3320206</N>1"
tItem[3320206]["OptionFunc112"] = "MarchAwardAction_OpenPack</N>3320206</N>2"


tItemFace[3320212] = 1403
tItem[3320212] = tItem[3320212] or {}
tItem[3320212]["DialogueText"] = tMarchAwardAction_Text[3320212]
tItem[3320212]["Text1-1"] = {111}
tItem[3320212]["tOption1-1"] = {111,112,113}
tItem[3320212]["OptionFunc111"] = "MarchAwardAction_OpenPack</N>3320212</N>1"
tItem[3320212]["OptionFunc112"] = "MarchAwardAction_OpenPack</N>3320212</N>2"

----------------------------------------------------物品逻辑
tItem[3320200] = tItem[3320200] or {}
tItem[3320200]["Function"] = function(nItemId,sItemName)
	MarchAwardAction_UsePack(nItemId)
end
tItem[3320201] = tItem[3320200] or {}
tItem[3320202] = tItem[3320200] or {}
tItem[3320203] = tItem[3320200] or {}

tItem[3320199] = tItem[3320199] or {}
tItem[3320199]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tMarchAwardAction_Pack[nItemId])
end
tItem[3320207] = tItem[3320199] or {}
tItem[3320208] = tItem[3320199] or {}
tItem[3320209] = tItem[3320199] or {}
tItem[3320210] = tItem[3320199] or {}
tItem[3320211] = tItem[3320199] or {}
tItem[3320213] = tItem[3320199] or {}
tItem[3320214] = tItem[3320199] or {}
tItem[3320215] = tItem[3320199] or {}
tItem[3320216] = tItem[3320199] or {}