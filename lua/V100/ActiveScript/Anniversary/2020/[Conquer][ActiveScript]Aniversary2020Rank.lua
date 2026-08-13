------------------------------------------------------------------------------------
--Name：            200319[简体征服][活动脚本]全球周年庆剧情
--Creator:      蔡颖静
--Created:     2020-03-19
------------------------------------------------------------------------------------
--任务需求：

------------------------------------------------------------------------------------


----------------------------------表配置部分--------------------------------------------
local tAniversary2020Rank_Data={}

--等级
tAniversary2020Rank_Data["LevelJudge"]={}
tAniversary2020Rank_Data["LevelJudge"]["Mete"]=0
tAniversary2020Rank_Data["LevelJudge"]["Level"]=80

--掩码
tAniversary2020Rank_Data["Stc"]={}

-- 首次点击对白
tAniversary2020Rank_Data["Stc"]["FirstClickEvent"]=217
tAniversary2020Rank_Data["Stc"]["FirstClickType"]=79

-- 引导任务 1:体验完剧情 2：烟花引导任务 3：boss引导任务
tAniversary2020Rank_Data["Stc"]["GuideTaskEvent"]=217
tAniversary2020Rank_Data["Stc"]["GuideTaskType"]=80

-- 养成值掩码
tAniversary2020Rank_Data["Stc"]["GrowEvent"]=217
tAniversary2020Rank_Data["Stc"]["GrowType"]=75

-- 领养跟随宠
tAniversary2020Rank_Data["Stc"]["GetPetEvent"]=217
tAniversary2020Rank_Data["Stc"]["GetPetType"]=81

--排行榜
tAniversary2020Rank_Data["RankIndex"]=260690

-- 接对白
-- tAniversary2020Rank_Data["LinkDialog"]={}
-- tAniversary2020Rank_Data["LinkDialog"][1]={}
-- tAniversary2020Rank_Data["LinkDialog"][1]["NpcId"]=26081
-- tAniversary2020Rank_Data["LinkDialog"][1]["TextIndex"]="1-2"

-- tAniversary2020Rank_Data["LinkDialog"][2]={}
-- tAniversary2020Rank_Data["LinkDialog"][2]["NpcId"]=26088
-- tAniversary2020Rank_Data["LinkDialog"][2]["TextIndex"]="1-5"


tAniversary2020Rank_Data["OpenTime"] = "08:00 23:59"
tAniversary2020Rank_Data["InstanceOpenGlobalId"] = 54370


tAniversary2020Rank_Data["GotoSomeWhere"]={}
tAniversary2020Rank_Data["GotoSomeWhere"][1]={}
tAniversary2020Rank_Data["GotoSomeWhere"][1]["MapId"]=1002
tAniversary2020Rank_Data["GotoSomeWhere"][1]["PosX"]=381
tAniversary2020Rank_Data["GotoSomeWhere"][1]["PosY"]=448

tAniversary2020Rank_Data["GotoSomeWhere"][2]={}
tAniversary2020Rank_Data["GotoSomeWhere"][2]["MapId"]=1036
tAniversary2020Rank_Data["GotoSomeWhere"][2]["PosX"]=257
tAniversary2020Rank_Data["GotoSomeWhere"][2]["PosY"]=208

tAniversary2020Rank_Data["ChangeMap"]={}
tAniversary2020Rank_Data["ChangeMap"][1] = {}
tAniversary2020Rank_Data["ChangeMap"][1]["MapId"] = 1002
tAniversary2020Rank_Data["ChangeMap"][1]["PosX"] = 381
tAniversary2020Rank_Data["ChangeMap"][1]["PosY"] = 448

tAniversary2020Rank_Data["ChangeMap"][2] = {}
tAniversary2020Rank_Data["ChangeMap"][2]["MapId"] = 1036
tAniversary2020Rank_Data["ChangeMap"][2]["PosX"] = 248
tAniversary2020Rank_Data["ChangeMap"][2]["PosY"] = 208


tAniversary2020Rank_Data["BigReward"] = {}
tAniversary2020Rank_Data["BigReward"][1] = {}
tAniversary2020Rank_Data["BigReward"][1]["GlobalId"] = 54367
tAniversary2020Rank_Data["BigReward"][1]["Pos"] = 0
tAniversary2020Rank_Data["BigReward"][1]["Limt"] = 5 -- 上限
tAniversary2020Rank_Data["BigReward"][2] = {}
tAniversary2020Rank_Data["BigReward"][2]["GlobalId"] = 54367
tAniversary2020Rank_Data["BigReward"][2]["Pos"] = 4
tAniversary2020Rank_Data["BigReward"][2]["Limt"] = 5 -- 上限
tAniversary2020Rank_Data["BigReward"][3] = {}
tAniversary2020Rank_Data["BigReward"][3]["GlobalId"] = 54368
tAniversary2020Rank_Data["BigReward"][3]["Pos"] = 2
tAniversary2020Rank_Data["BigReward"][3]["Limt"] = 5 -- 上限
tAniversary2020Rank_Data["BigReward"][4] = {}
tAniversary2020Rank_Data["BigReward"][4]["GlobalId"] = 54369
tAniversary2020Rank_Data["BigReward"][4]["Pos"] = 0
tAniversary2020Rank_Data["BigReward"][4]["Limt"] = 5 -- 上限

tAniversary2020Rank_Data["GetPet"] = {}
tAniversary2020Rank_Data["GetPet"]["LogId"] = 12001906
tAniversary2020Rank_Data["GetPet"]["LogStep"] = "1"
tAniversary2020Rank_Data["GetPet"]["RewardMagic"] = {}
tAniversary2020Rank_Data["GetPet"]["RewardMagic"]["MagicType"] = 16570  --跟随宠
-- tAniversary2020Rank_Data["GetPet"]["RewardMagic"]["LearnMagic"] = tDogYearBeast_Text[21387]["Msg"]["GetMagic"]
tAniversary2020Rank_Data["GetPet"]["RewardEffect"] = {}
tAniversary2020Rank_Data["GetPet"]["RewardEffect"]["SzObj"] = "self"
tAniversary2020Rank_Data["GetPet"]["RewardEffect"]["Effect"] = "task077"


tAniversary2020Rank_Data["GotoNpc"]={}
tAniversary2020Rank_Data["GotoNpc"]["FireWork"]={}
tAniversary2020Rank_Data["GotoNpc"]["FireWork"][1]=26082
tAniversary2020Rank_Data["GotoNpc"]["FireWork"][2]=26083
tAniversary2020Rank_Data["GotoNpc"]["FireWork"][3]=26084
tAniversary2020Rank_Data["GotoNpc"]["FireWork"][4]=26085
tAniversary2020Rank_Data["GotoNpc"]["Boss"]=26088


--线下页面
tAniversary2020Rank_Data["Web"]="https://www.baidu.com/"

-- ===全球驯龙王者礼盒
-- ===索引:tAniversary2020Rank_Data[3330421]
-- ===删除: 3330421,1
-- ===LogStep:1
-- ===
-- ===
-- ===
-- ===
tAniversary2020Rank_Data[3330421] = {}
tAniversary2020Rank_Data[3330421]["LogId"] = 12001906
tAniversary2020Rank_Data[3330421]["LogStep"] = "1"
tAniversary2020Rank_Data[3330421]["DeleteItem"] = {}
tAniversary2020Rank_Data[3330421]["DeleteItem"][1] = {}
tAniversary2020Rank_Data[3330421]["DeleteItem"][1]["Id"] = 3330421 -- 【库】 3330421 【库里没有该物品】[属性:]
tAniversary2020Rank_Data[3330421]["RewardItem"] = {}
tAniversary2020Rank_Data[3330421]["RewardItem"][1] = {}
tAniversary2020Rank_Data[3330421]["RewardItem"][1]["Id"] = 3314245 -- 稀有黄色神纹礼盒[3314245][属性:8][叠加:10000][金币:0], 【表格】稀有黄色神纹宝盒
tAniversary2020Rank_Data[3330421]["RewardItem"][1]["Attr"] = "0 1 3" -- 稀有黄色神纹礼盒（赠）*1
tAniversary2020Rank_Data[3330421]["RewardItem"][2] = {}
tAniversary2020Rank_Data[3330421]["RewardItem"][2]["Id"] = 4200011 -- 11阶灵珠[4200011][属性:72][叠加:99][金币:0], 【表格】11阶灵珠
tAniversary2020Rank_Data[3330421]["RewardItem"][2]["Attr"] = "0 1" -- 11阶灵珠*1
tAniversary2020Rank_Data[3330421]["RewardItem"][2]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
tAniversary2020Rank_Data[3330421]["RewardStrengthValue"] = {}
tAniversary2020Rank_Data[3330421]["RewardStrengthValue"]["Value"] = 30000 -- 气力值, 【需求】气力值
tAniversary2020Rank_Data[3330421]["RewardEffect"] = {}
tAniversary2020Rank_Data[3330421]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tAniversary2020Rank_Data[3330421]["RewardEffect"]["Effect"] = "angelwing"


tAniversary2020Rank_Data[3330422] = {}
-- ===全球驯龙宗师礼盒
-- ===索引:tAniversary2020Rank_Data[3330422]
-- ===删除: 3330422,1
-- ===LogStep:1
-- ===
-- ===
-- ===
-- ===
tAniversary2020Rank_Data[3330422]["LogId"] = 12001906
tAniversary2020Rank_Data[3330422]["LogStep"] = "1"
tAniversary2020Rank_Data[3330422]["DeleteItem"] = {}
tAniversary2020Rank_Data[3330422]["DeleteItem"][1] = {}
tAniversary2020Rank_Data[3330422]["DeleteItem"][1]["Id"] = 3330422 -- 【库】 3330422 【库里没有该物品】[属性:]
tAniversary2020Rank_Data[3330422]["RewardItem"] = {}
tAniversary2020Rank_Data[3330422]["RewardItem"][1] = {}
tAniversary2020Rank_Data[3330422]["RewardItem"][1]["Id"] = 3314250 -- 稀有黄色神纹礼包[3314250][属性:8][叠加:10000][金币:0], 【表格】稀有黄色神纹礼包
tAniversary2020Rank_Data[3330422]["RewardItem"][1]["Attr"] = "0 1 3" -- 稀有黄色神纹礼包（赠）*1
tAniversary2020Rank_Data[3330422]["RewardItem"][2] = {}
tAniversary2020Rank_Data[3330422]["RewardItem"][2]["Id"] = 4200009 -- 9阶灵珠[4200009][属性:72][叠加:99][金币:0], 【表格】9阶灵珠
tAniversary2020Rank_Data[3330422]["RewardItem"][2]["Attr"] = "0 1" -- 9阶灵珠*1
tAniversary2020Rank_Data[3330422]["RewardItem"][2]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
tAniversary2020Rank_Data[3330422]["RewardStrengthValue"] = {}
tAniversary2020Rank_Data[3330422]["RewardStrengthValue"]["Value"] = 20000 -- 气力值, 【需求】气力值
tAniversary2020Rank_Data[3330422]["RewardEffect"] = {}
tAniversary2020Rank_Data[3330422]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tAniversary2020Rank_Data[3330422]["RewardEffect"]["Effect"] = "angelwing"


tAniversary2020Rank_Data[3330423] = {}
-- ===全球驯龙豪杰礼盒
-- ===索引:tAniversary2020Rank_Data[3330423]
-- ===删除: 3330423,1
-- ===LogStep:1
-- ===
-- ===
-- ===
-- ===
tAniversary2020Rank_Data[3330423]["LogId"] = 12001906
tAniversary2020Rank_Data[3330423]["LogStep"] = "1"
tAniversary2020Rank_Data[3330423]["DeleteItem"] = {}
tAniversary2020Rank_Data[3330423]["DeleteItem"][1] = {}
tAniversary2020Rank_Data[3330423]["DeleteItem"][1]["Id"] = 3330423 -- 【库】 3330423 【库里没有该物品】[属性:]
tAniversary2020Rank_Data[3330423]["RewardItem"] = {}
tAniversary2020Rank_Data[3330423]["RewardItem"][1] = {}
tAniversary2020Rank_Data[3330423]["RewardItem"][1]["Id"] = 4200009 -- 9阶灵珠[4200009][属性:72][叠加:99][金币:0], 【表格】9阶灵珠
tAniversary2020Rank_Data[3330423]["RewardItem"][1]["Attr"] = "0 1" -- 9阶灵珠*1
tAniversary2020Rank_Data[3330423]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
tAniversary2020Rank_Data[3330423]["RewardStrengthValue"] = {}
tAniversary2020Rank_Data[3330423]["RewardStrengthValue"]["Value"] = 15000 -- 气力值, 【需求】气力值
tAniversary2020Rank_Data[3330423]["RewardEffect"] = {}
tAniversary2020Rank_Data[3330423]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tAniversary2020Rank_Data[3330423]["RewardEffect"]["Effect"] = "angelwing"


tAniversary2020Rank_Data[3330424] = {}
-- ===全球驯龙高手礼盒
-- ===索引:tAniversary2020Rank_Data[3330424]
-- ===删除: 3330424,1
-- ===LogStep:1
-- ===
-- ===
-- ===
-- ===
tAniversary2020Rank_Data[3330424]["LogId"] = 12001906
tAniversary2020Rank_Data[3330424]["LogStep"] = "1"
tAniversary2020Rank_Data[3330424]["DeleteItem"] = {}
tAniversary2020Rank_Data[3330424]["DeleteItem"][1] = {}
tAniversary2020Rank_Data[3330424]["DeleteItem"][1]["Id"] = 3330424 -- 【库】 3330424 【库里没有该物品】[属性:]
tAniversary2020Rank_Data[3330424]["RewardItem"] = {}
tAniversary2020Rank_Data[3330424]["RewardItem"][1] = {}
tAniversary2020Rank_Data[3330424]["RewardItem"][1]["Id"] = 4200008 -- 8阶灵珠[4200008][属性:72][叠加:99][金币:0], 【表格】8阶灵珠
tAniversary2020Rank_Data[3330424]["RewardItem"][1]["Attr"] = "0 1" -- 8阶灵珠*1
tAniversary2020Rank_Data[3330424]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
tAniversary2020Rank_Data[3330424]["RewardStrengthValue"] = {}
tAniversary2020Rank_Data[3330424]["RewardStrengthValue"]["Value"] = 10000 -- 气力值, 【需求】气力值
tAniversary2020Rank_Data[3330424]["RewardEffect"] = {}
tAniversary2020Rank_Data[3330424]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tAniversary2020Rank_Data[3330424]["RewardEffect"]["Effect"] = "angelwing"


tAniversary2020Rank_Data[3330425] = {}
-- ===本服驯龙王者礼盒
-- ===索引:tAniversary2020Rank_Data[3330425]
-- ===删除: 3330425,1
-- ===LogStep:1
-- ===
-- ===
-- ===
-- ===
tAniversary2020Rank_Data[3330425]["LogId"] = 12001906
tAniversary2020Rank_Data[3330425]["LogStep"] = "1"
tAniversary2020Rank_Data[3330425]["DeleteItem"] = {}
tAniversary2020Rank_Data[3330425]["DeleteItem"][1] = {}
tAniversary2020Rank_Data[3330425]["DeleteItem"][1]["Id"] = 3330425 -- 【库】 3330425 【库里没有该物品】[属性:]
tAniversary2020Rank_Data[3330425]["RewardItem"] = {}
tAniversary2020Rank_Data[3330425]["RewardItem"][1] = {}
tAniversary2020Rank_Data[3330425]["RewardItem"][1]["Id"] = 3314250 -- 稀有黄色神纹礼包[3314250][属性:8][叠加:10000][金币:0], 【表格】稀有黄色神纹礼包
tAniversary2020Rank_Data[3330425]["RewardItem"][1]["Attr"] = "0 1 3" -- 稀有黄色神纹礼包（赠）*1
tAniversary2020Rank_Data[3330425]["RewardItem"][2] = {}
tAniversary2020Rank_Data[3330425]["RewardItem"][2]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
tAniversary2020Rank_Data[3330425]["RewardItem"][2]["Attr"] = "0 1000 3" -- 万能神纹精粹（赠）*1000（[错误]物品数量超100个）
tAniversary2020Rank_Data[3330425]["RewardEffect"] = {}
tAniversary2020Rank_Data[3330425]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tAniversary2020Rank_Data[3330425]["RewardEffect"]["Effect"] = "angelwing"


tAniversary2020Rank_Data[3330426] = {}
-- ===本服驯龙宗师礼盒
-- ===索引:tAniversary2020Rank_Data[3330426]
-- ===删除: 3330426,1
-- ===LogStep:1
-- ===
-- ===
-- ===
-- ===
tAniversary2020Rank_Data[3330426]["LogId"] = 12001906
tAniversary2020Rank_Data[3330426]["LogStep"] = "1"
tAniversary2020Rank_Data[3330426]["DeleteItem"] = {}
tAniversary2020Rank_Data[3330426]["DeleteItem"][1] = {}
tAniversary2020Rank_Data[3330426]["DeleteItem"][1]["Id"] = 3330426 -- 【库】 3330426 【库里没有该物品】[属性:]
tAniversary2020Rank_Data[3330426]["RewardItem"] = {}
tAniversary2020Rank_Data[3330426]["RewardItem"][1] = {}
tAniversary2020Rank_Data[3330426]["RewardItem"][1]["Id"] = 730006 -- +6赤炼石[730006][属性:0][叠加:0][金币:0], 【表格】赤炼石+6
tAniversary2020Rank_Data[3330426]["RewardItem"][1]["Attr"] = "0 2 3 7200 1" -- 5天时效(激活)的+6赤炼石（赠）*2
tAniversary2020Rank_Data[3330426]["RewardItem"][2] = {}
tAniversary2020Rank_Data[3330426]["RewardItem"][2]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
tAniversary2020Rank_Data[3330426]["RewardItem"][2]["Attr"] = "0 800 3" -- 万能神纹精粹（赠）*800（[错误]物品数量超100个）
tAniversary2020Rank_Data[3330426]["RewardEffect"] = {}
tAniversary2020Rank_Data[3330426]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tAniversary2020Rank_Data[3330426]["RewardEffect"]["Effect"] = "angelwing"


tAniversary2020Rank_Data[3330427] = {}
-- ===本服驯龙豪杰礼盒
-- ===索引:tAniversary2020Rank_Data[3330427]
-- ===删除: 3330427,1
-- ===LogStep:1
-- ===
-- ===
-- ===
-- ===
tAniversary2020Rank_Data[3330427]["LogId"] = 12001906
tAniversary2020Rank_Data[3330427]["LogStep"] = "1"
tAniversary2020Rank_Data[3330427]["DeleteItem"] = {}
tAniversary2020Rank_Data[3330427]["DeleteItem"][1] = {}
tAniversary2020Rank_Data[3330427]["DeleteItem"][1]["Id"] = 3330427 -- 【库】 3330427 【库里没有该物品】[属性:]
tAniversary2020Rank_Data[3330427]["RewardItem"] = {}
tAniversary2020Rank_Data[3330427]["RewardItem"][1] = {}
tAniversary2020Rank_Data[3330427]["RewardItem"][1]["Id"] = 730006 -- +6赤炼石[730006][属性:0][叠加:0][金币:0], 【表格】赤炼石+6
tAniversary2020Rank_Data[3330427]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+6赤炼石（赠）*1
tAniversary2020Rank_Data[3330427]["RewardItem"][2] = {}
tAniversary2020Rank_Data[3330427]["RewardItem"][2]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
tAniversary2020Rank_Data[3330427]["RewardItem"][2]["Attr"] = "0 600 3" -- 万能神纹精粹（赠）*600（[错误]物品数量超100个）
tAniversary2020Rank_Data[3330427]["RewardEffect"] = {}
tAniversary2020Rank_Data[3330427]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tAniversary2020Rank_Data[3330427]["RewardEffect"]["Effect"] = "angelwing"


tAniversary2020Rank_Data[3330428] = {}
-- ===本服驯龙高手礼盒
-- ===索引:tAniversary2020Rank_Data[3330428]
-- ===删除: 3330428,1
-- ===LogStep:1
-- ===
-- ===
-- ===
-- ===
tAniversary2020Rank_Data[3330428]["LogId"] = 12001906
tAniversary2020Rank_Data[3330428]["LogStep"] = "1"
tAniversary2020Rank_Data[3330428]["DeleteItem"] = {}
tAniversary2020Rank_Data[3330428]["DeleteItem"][1] = {}
tAniversary2020Rank_Data[3330428]["DeleteItem"][1]["Id"] = 3330428 -- 【库】 3330428 【库里没有该物品】[属性:]
tAniversary2020Rank_Data[3330428]["RewardItem"] = {}
tAniversary2020Rank_Data[3330428]["RewardItem"][1] = {}
tAniversary2020Rank_Data[3330428]["RewardItem"][1]["Id"] = 730005 -- +5赤炼石[730005][属性:0][叠加:0][金币:0], 【表格】赤炼石+5
tAniversary2020Rank_Data[3330428]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+5赤炼石（赠）*1
tAniversary2020Rank_Data[3330428]["RewardItem"][2] = {}
tAniversary2020Rank_Data[3330428]["RewardItem"][2]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
tAniversary2020Rank_Data[3330428]["RewardItem"][2]["Attr"] = "0 300 3" -- 万能神纹精粹（赠）*300（[错误]物品数量超100个）
tAniversary2020Rank_Data[3330428]["RewardEffect"] = {}
tAniversary2020Rank_Data[3330428]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tAniversary2020Rank_Data[3330428]["RewardEffect"]["Effect"] = "angelwing"


-----------------------------------排行榜----------------------------------------------
tRankingFunc_Info[260690] = {}
tRankingFunc_Info[260690]["ActiveTime"] = tActivityTime["Anniversary2020"]["RankTime"]
tRankingFunc_Info[260690]["DayTime"] = {}
tRankingFunc_Info[260690]["DayTime"][1] = "00:00 23:59"
tRankingFunc_Info[260690]["Reset"] = 1
tRankingFunc_Info[260690]["Global"] = {54355,54356,54357,54358}
tRankingFunc_Info[260690]["RankNum"] = 10

-- 邮件发奖
tRankingFunc_Info[260690]["Mail"] = {}
tRankingFunc_Info[260690]["Mail"]["ActiveTime"] = tActivityTime["Anniversary2020"]["MailTime"]
tRankingFunc_Info[260690]["Mail"]["RewardTime"] = {}
tRankingFunc_Info[260690]["Mail"]["RewardTime"][1] = "00:00 00:03"

tRankingFunc_Info[260690]["Mail"]["Reward"] = {}
tRankingFunc_Info[260690]["Mail"]["Reward"][1] = {}
tRankingFunc_Info[260690]["Mail"]["Reward"][1]["RewardRank"] = 1
tRankingFunc_Info[260690]["Mail"]["Reward"][1]["ActionId"] = 576824
tRankingFunc_Info[260690]["Mail"]["Reward"][1]["ExistDay"] = 7
tRankingFunc_Info[260690]["Mail"]["Reward"][1]["Title"] =tAniversary2020Rank_Text["RankMail"]["Title"]
tRankingFunc_Info[260690]["Mail"]["Reward"][1]["Sender"] = tAniversary2020Rank_Text["RankMail"]["Sender"]
tRankingFunc_Info[260690]["Mail"]["Reward"][1]["Content"] = tAniversary2020Rank_Text["RankMail"]["Content"]
tRankingFunc_Info[260690]["Mail"]["Reward"][2] = {}
tRankingFunc_Info[260690]["Mail"]["Reward"][2]["RewardRank"] = 2
tRankingFunc_Info[260690]["Mail"]["Reward"][2]["ActionId"] = 576825
tRankingFunc_Info[260690]["Mail"]["Reward"][2]["ExistDay"] = 7
tRankingFunc_Info[260690]["Mail"]["Reward"][2]["Title"] =tAniversary2020Rank_Text["RankMail"]["Title"]
tRankingFunc_Info[260690]["Mail"]["Reward"][2]["Sender"] = tAniversary2020Rank_Text["RankMail"]["Sender"]
tRankingFunc_Info[260690]["Mail"]["Reward"][2]["Content"] = tAniversary2020Rank_Text["RankMail"]["Content"]
tRankingFunc_Info[260690]["Mail"]["Reward"][3] = {}
tRankingFunc_Info[260690]["Mail"]["Reward"][3]["RewardRank"] = 3
tRankingFunc_Info[260690]["Mail"]["Reward"][3]["ActionId"] = 576825
tRankingFunc_Info[260690]["Mail"]["Reward"][3]["ExistDay"] = 7
tRankingFunc_Info[260690]["Mail"]["Reward"][3]["Title"] =tAniversary2020Rank_Text["RankMail"]["Title"]
tRankingFunc_Info[260690]["Mail"]["Reward"][3]["Sender"] = tAniversary2020Rank_Text["RankMail"]["Sender"]
tRankingFunc_Info[260690]["Mail"]["Reward"][3]["Content"] = tAniversary2020Rank_Text["RankMail"]["Content"]
tRankingFunc_Info[260690]["Mail"]["Reward"][4] = {}
tRankingFunc_Info[260690]["Mail"]["Reward"][4]["RewardRank"] = 4
tRankingFunc_Info[260690]["Mail"]["Reward"][4]["ActionId"] = 576826
tRankingFunc_Info[260690]["Mail"]["Reward"][4]["ExistDay"] = 7
tRankingFunc_Info[260690]["Mail"]["Reward"][4]["Title"] =tAniversary2020Rank_Text["RankMail"]["Title"]
tRankingFunc_Info[260690]["Mail"]["Reward"][4]["Sender"] = tAniversary2020Rank_Text["RankMail"]["Sender"]
tRankingFunc_Info[260690]["Mail"]["Reward"][4]["Content"] = tAniversary2020Rank_Text["RankMail"]["Content"]
tRankingFunc_Info[260690]["Mail"]["Reward"][5] = {}
tRankingFunc_Info[260690]["Mail"]["Reward"][5]["RewardRank"] = 5
tRankingFunc_Info[260690]["Mail"]["Reward"][5]["ActionId"] = 576826
tRankingFunc_Info[260690]["Mail"]["Reward"][5]["ExistDay"] = 7
tRankingFunc_Info[260690]["Mail"]["Reward"][5]["Title"] =tAniversary2020Rank_Text["RankMail"]["Title"]
tRankingFunc_Info[260690]["Mail"]["Reward"][5]["Sender"] = tAniversary2020Rank_Text["RankMail"]["Sender"]
tRankingFunc_Info[260690]["Mail"]["Reward"][5]["Content"] = tAniversary2020Rank_Text["RankMail"]["Content"]
tRankingFunc_Info[260690]["Mail"]["Reward"][6] = {}
tRankingFunc_Info[260690]["Mail"]["Reward"][6]["RewardRank"] = 6
tRankingFunc_Info[260690]["Mail"]["Reward"][6]["ActionId"] = 576826
tRankingFunc_Info[260690]["Mail"]["Reward"][6]["ExistDay"] = 7
tRankingFunc_Info[260690]["Mail"]["Reward"][6]["Title"] =tAniversary2020Rank_Text["RankMail"]["Title"]
tRankingFunc_Info[260690]["Mail"]["Reward"][6]["Sender"] = tAniversary2020Rank_Text["RankMail"]["Sender"]
tRankingFunc_Info[260690]["Mail"]["Reward"][6]["Content"] = tAniversary2020Rank_Text["RankMail"]["Content"]
tRankingFunc_Info[260690]["Mail"]["Reward"][7] = {}
tRankingFunc_Info[260690]["Mail"]["Reward"][7]["RewardRank"] = 7
tRankingFunc_Info[260690]["Mail"]["Reward"][7]["ActionId"] = 576827
tRankingFunc_Info[260690]["Mail"]["Reward"][7]["ExistDay"] = 7
tRankingFunc_Info[260690]["Mail"]["Reward"][7]["Title"] =tAniversary2020Rank_Text["RankMail"]["Title"]
tRankingFunc_Info[260690]["Mail"]["Reward"][7]["Sender"] = tAniversary2020Rank_Text["RankMail"]["Sender"]
tRankingFunc_Info[260690]["Mail"]["Reward"][7]["Content"] = tAniversary2020Rank_Text["RankMail"]["Content"]
tRankingFunc_Info[260690]["Mail"]["Reward"][8] = {}
tRankingFunc_Info[260690]["Mail"]["Reward"][8]["RewardRank"] = 8
tRankingFunc_Info[260690]["Mail"]["Reward"][8]["ActionId"] = 576827
tRankingFunc_Info[260690]["Mail"]["Reward"][8]["ExistDay"] = 7
tRankingFunc_Info[260690]["Mail"]["Reward"][8]["Title"] =tAniversary2020Rank_Text["RankMail"]["Title"]
tRankingFunc_Info[260690]["Mail"]["Reward"][8]["Sender"] = tAniversary2020Rank_Text["RankMail"]["Sender"]
tRankingFunc_Info[260690]["Mail"]["Reward"][8]["Content"] = tAniversary2020Rank_Text["RankMail"]["Content"]
tRankingFunc_Info[260690]["Mail"]["Reward"][9] = {}
tRankingFunc_Info[260690]["Mail"]["Reward"][9]["RewardRank"] = 9
tRankingFunc_Info[260690]["Mail"]["Reward"][9]["ActionId"] = 576827
tRankingFunc_Info[260690]["Mail"]["Reward"][9]["ExistDay"] = 7
tRankingFunc_Info[260690]["Mail"]["Reward"][9]["Title"] =tAniversary2020Rank_Text["RankMail"]["Title"]
tRankingFunc_Info[260690]["Mail"]["Reward"][9]["Sender"] = tAniversary2020Rank_Text["RankMail"]["Sender"]
tRankingFunc_Info[260690]["Mail"]["Reward"][9]["Content"] = tAniversary2020Rank_Text["RankMail"]["Content"]
tRankingFunc_Info[260690]["Mail"]["Reward"][10] = {}
tRankingFunc_Info[260690]["Mail"]["Reward"][10]["RewardRank"] = 10
tRankingFunc_Info[260690]["Mail"]["Reward"][10]["ActionId"] = 576827
tRankingFunc_Info[260690]["Mail"]["Reward"][10]["ExistDay"] = 7
tRankingFunc_Info[260690]["Mail"]["Reward"][10]["Title"] =tAniversary2020Rank_Text["RankMail"]["Title"]
tRankingFunc_Info[260690]["Mail"]["Reward"][10]["Sender"] = tAniversary2020Rank_Text["RankMail"]["Sender"]
tRankingFunc_Info[260690]["Mail"]["Reward"][10]["Content"] = tAniversary2020Rank_Text["RankMail"]["Content"]
----------------------------------逻辑部分---------------------------------------------
--引导任务
function Aniversary2020Rank_Guide(nIndex,nNowUserId)
	if not Sys_ChkFullTime(tActivityTime["Anniversary2020"]["ActivityTime"]) then 
		return 
	end 
	local nAniversary2020Rank_UserId= nNowUserId or Get_UserId()
	
	if not User_JudgeLevelAndMetempsychosis(tAniversary2020Rank_Data["LevelJudge"]["Level"],tAniversary2020Rank_Data["LevelJudge"]["Mete"],nAniversary2020Rank_UserId) then
		return 
	end 
	
	local nAniversary2020Rank_GuideTaskEvent=tAniversary2020Rank_Data["Stc"]["GuideTaskEvent"]
	local nAniversary2020Rank_GuideTaskkType=tAniversary2020Rank_Data["Stc"]["GuideTaskType"]
	
	if Get_UserStatisticValue(nAniversary2020Rank_GuideTaskEvent,nAniversary2020Rank_GuideTaskkType,nAniversary2020Rank_UserId)>=3 then 
		return 
	end 
	
	Task_SetStatistic(nAniversary2020Rank_GuideTaskEvent,nAniversary2020Rank_GuideTaskkType,nIndex,1,nAniversary2020Rank_UserId)
	Task_SetStcTimestamp(nAniversary2020Rank_GuideTaskEvent,nAniversary2020Rank_GuideTaskkType,0,nAniversary2020Rank_UserId)

end 

--剧情体验
function Aniversary2020Rank_StoryScript()
	if not Sys_ChkFullTime(tActivityTime["Anniversary2020"]["ActivityTime"]) then 
		return 
	end 

	if not User_JudgeLevelAndMetempsychosis(tAniversary2020Rank_Data["LevelJudge"]["Level"],tAniversary2020Rank_Data["LevelJudge"]["Mete"]) then
		return 
	end 
	
	local nAniversary2020Rank_GuideTaskEvent=tAniversary2020Rank_Data["Stc"]["GuideTaskEvent"]
	local nAniversary2020Rank_GuideTaskkType=tAniversary2020Rank_Data["Stc"]["GuideTaskType"]
	
	local nAniversary2020Rank_FirstClickEvent=tAniversary2020Rank_Data["Stc"]["FirstClickEvent"]
	local nAniversary2020Rank_FirstClickType=tAniversary2020Rank_Data["Stc"]["FirstClickType"]
	
	if Get_UserStatisticValue(nAniversary2020Rank_GuideTaskEvent,nAniversary2020Rank_GuideTaskkType)>=3 then 
		return 
	end 
	
	if Get_UserStatisticValue(nAniversary2020Rank_GuideTaskEvent,nAniversary2020Rank_GuideTaskkType)==0 then 
		Task_AddStatistic(nAniversary2020Rank_GuideTaskEvent,nAniversary2020Rank_GuideTaskkType,1,1)
		Task_SetStcTimestamp(nAniversary2020Rank_GuideTaskEvent,nAniversary2020Rank_GuideTaskkType,0)
	end 
	
	if Get_UserStatisticValue(nAniversary2020Rank_FirstClickEvent,nAniversary2020Rank_FirstClickType) ==0 then 
		Task_AddStatistic(nAniversary2020Rank_FirstClickEvent,nAniversary2020Rank_FirstClickType,1,1)
		Task_SetStcTimestamp(nAniversary2020Rank_FirstClickEvent,nAniversary2020Rank_FirstClickType,0)
	end
	
	local nAniversary2020Rank_UserId = Get_UserId()
	local nAniversary2020Rank_sFunc = "Aniversary2020Rank_BackNewcityReturn</N>"..nAniversary2020Rank_UserId.."</N>2"
	--若是在激情服，则跳转到新双龙城播放后再回来
	if SpecialServer_ChkNoGiftServer() then
		Aniversary2020Rank_BackNewcityReturn(nAniversary2020Rank_UserId,1)
		local nAniversary2020Rank_Second = 64
		--计时器
		User_SetTimer(nAniversary2020Rank_Second,nAniversary2020Rank_sFunc,0)
	end
	
	User_PlayPlot(49)
	if SpecialServer_ChkNoGiftServer() then
		Sys_MsgBox(tAniversary2020Rank_Text["Dialog"]["Back"],nil,nil,nAniversary2020Rank_UserId)
	else
		LinkNpcGossipFunc_New(26069,"1-5")
	end 
end 
	
	
function Aniversary2020Rank_GetPet()
	if not Sys_ChkFullTime(tActivityTime["Anniversary2020"]["ActivityTime"]) then 
		return 
	end 
	
	if not User_JudgeLevelAndMetempsychosis(tAniversary2020Rank_Data["LevelJudge"]["Level"],tAniversary2020Rank_Data["LevelJudge"]["Mete"]) then
		return 
	end 

	local nAniversary2020Rank_GetPetEvent=tAniversary2020Rank_Data["Stc"]["GetPetEvent"]
	local nAniversary2020Rank_GetPetType =tAniversary2020Rank_Data["Stc"]["GetPetType"]
	
	if Get_UserStatisticValue(nAniversary2020Rank_GetPetEvent,nAniversary2020Rank_GetPetType)>=1 then 
		return 
	end 
	
	-- 打掩码
	Task_SetStatistic(nAniversary2020Rank_GetPetEvent,nAniversary2020Rank_GetPetType,1,1)
	Task_SetStcTimestamp(nAniversary2020Rank_GetPetEvent,nAniversary2020Rank_GetPetType,0)
	
	--获得跟随宠技能
	RewardTemplate_UseItemAndMsg(tAniversary2020Rank_Data["GetPet"])
	LinkNpcGossipFunc_New(26069,"1-6")
end


function Aniversary2020Rank_FeedPet()
	if not Sys_ChkFullTime(tActivityTime["Anniversary2020"]["ActivityTime"]) then 
		return 
	end 
	
	local nAniversary2020Rank_GotoNpc=0
	if Sys_ChkFullTime(tActivityTime["Anniversary2020"]["FireworksTime"]) then 
		local nAniversary2020Rank_UserId = Get_UserId()
		-- 1是简体，2是英文，3是西语，4是阿语
		local nAniversary2020Rank_Nation = User_ChkLanguage(nAniversary2020Rank_UserId)
		nAniversary2020Rank_GotoNpc=tAniversary2020Rank_Data["GotoNpc"]["FireWork"][nAniversary2020Rank_Nation]
		tNpcGossip[26069]["OptionFunc211"] = "NpcPosition_PathFind</N>" .. nAniversary2020Rank_GotoNpc
		return LinkNpcGossipFunc_New(26069,"2-1")
	end 
	
	if Sys_ChkFullTime(tActivityTime["Anniversary2020"]["BossTime"]) then 
		nAniversary2020Rank_GotoNpc=tAniversary2020Rank_Data["GotoNpc"]["Boss"]
		tNpcGossip[26069]["OptionFunc221"] = "AnniversaryBossInstance_IntoInstance</N>1</N>26088"
		return LinkNpcGossipFunc_New(26069,"2-2")
	end 
end 

--寻路
function Aniversary2020Rank_GotoSomeWhere()
	if not Sys_ChkFullTime(tActivityTime["Anniversary2020"]["ActivityTime"]) then 
		return 
	end 
	
	local nAniversary2020Rank_Index = 1
	if SpecialServer_ChkNoGiftServer() then
		nAniversary2020Rank_Index = 2
	end 
	
	local nAniversary2020Rank_MapId = tAniversary2020Rank_Data["GotoSomeWhere"][nAniversary2020Rank_Index]["MapId"]
	local nAniversary2020Rank_PosX = tAniversary2020Rank_Data["GotoSomeWhere"][nAniversary2020Rank_Index]["PosX"]
	local nAniversary2020Rank_PosY = tAniversary2020Rank_Data["GotoSomeWhere"][nAniversary2020Rank_Index]["PosY"]

	Sys_GotoSomeWhere(nAniversary2020Rank_PosX,nAniversary2020Rank_PosY,nAniversary2020Rank_MapId)
end 

function Aniversary2020Rank_BackNewcityReturn(nNewUserId,nTip)
	
	local nAniversary2020Rank_UserId = nNewUserId or Get_UserId()
	local nAniversary2020Rank_MapId = tAniversary2020Rank_Data["ChangeMap"][nTip]["MapId"]
	local nAniversary2020Rank_PosX = tAniversary2020Rank_Data["ChangeMap"][nTip]["PosX"]
	local nAniversary2020Rank_PosY = tAniversary2020Rank_Data["ChangeMap"][nTip]["PosY"]
	
	User_UserRandBoundTrans(nAniversary2020Rank_MapId,nAniversary2020Rank_PosX,nAniversary2020Rank_PosY,1,1,1,nAniversary2020Rank_UserId)
	
end
----------------------------------NPC部分---------------------------------------------
tNpcFace[6243] = 13


tNpcGossip[26069]= tNpcGossip[26069] or DefaultNpc:new{}
tNpcGossip[26069]["OptionHidden"] = 1
tNpcGossip[26069]["DialogueText"] = tAniversary2020Rank_Text[26069]

--活动前
tNpcGossip[26069]["Text1-1"] = {111,112,113,114,115,116,117}
tNpcGossip[26069]["tOption1-1"] = {111}
tNpcGossip[26069]["ChkFunc1-1"] = function()
	if CommonFunc_GetBeforeActivityTime(tActivityTime["Anniversary2020"]["ActivityTime"]) then 
		return true
	else
		return false
	end 
end

--活动后
tNpcGossip[26069]["Text1-2"] = {121,122,123}
tNpcGossip[26069]["tOption1-2"] = {121}
tNpcGossip[26069]["ChkFunc1-2"] = function()
	if CommonFunc_GetAfterActivityTime(tActivityTime["Anniversary2020"]["ActivityTime"]) then 
		return true
	else
		return false
	end 
end

--活动中，等级不足
tNpcGossip[26069]["Text1-3"] = {131,132,133,134,135,136,137}
tNpcGossip[26069]["tOption1-3"] = {131}
tNpcGossip[26069]["ChkFunc1-3"] = function()
	if Sys_ChkFullTime(tActivityTime["Anniversary2020"]["ActivityTime"]) then 
		if not User_JudgeLevelAndMetempsychosis(tAniversary2020Rank_Data["LevelJudge"]["Level"],tAniversary2020Rank_Data["LevelJudge"]["Mete"]) then
			return true
		else
			return false
		end 
	else
		return false
	end 
end

--活动中【等级到达，首次点击对白】
tNpcGossip[26069]["Text1-4"] = {141,142,143,144,145}
tNpcGossip[26069]["tOption1-4"] = {141}
tNpcGossip[26069]["ChkFunc1-4"] = function()
	if Sys_ChkFullTime(tActivityTime["Anniversary2020"]["ActivityTime"]) then 
		if User_JudgeLevelAndMetempsychosis(tAniversary2020Rank_Data["LevelJudge"]["Level"],tAniversary2020Rank_Data["LevelJudge"]["Mete"]) then
			local nAniversary2020Rank_FirstClickEvent=tAniversary2020Rank_Data["Stc"]["FirstClickEvent"]
			local nAniversary2020Rank_FirstClickType=tAniversary2020Rank_Data["Stc"]["FirstClickType"]
			
			if Get_UserStatisticValue(nAniversary2020Rank_FirstClickEvent,nAniversary2020Rank_FirstClickType) ==0 then 
				AnniversaryBossInstance_TaskComplete()
				return true
			else
				return false
			end 
		else
			return false
		end 
	else
		return false
	end 
end

tNpcGossip[26069]["OptionPoint141"] = "3-1"

----体验完剧情，领取幼龙跟随宠
tNpcGossip[26069]["Text1-5"] = {151,152,153,154,155}
tNpcGossip[26069]["tOption1-5"] = {151}
tNpcGossip[26069]["ChkFunc1-5"] = function()
	if Sys_ChkFullTime(tActivityTime["Anniversary2020"]["ActivityTime"]) then 
		if User_JudgeLevelAndMetempsychosis(tAniversary2020Rank_Data["LevelJudge"]["Level"],tAniversary2020Rank_Data["LevelJudge"]["Mete"]) then
			local nAniversary2020Rank_FirstClickEvent=tAniversary2020Rank_Data["Stc"]["FirstClickEvent"]
			local nAniversary2020Rank_FirstClickType=tAniversary2020Rank_Data["Stc"]["FirstClickType"]
			
			local nAniversary2020Rank_GuideTaskEvent=tAniversary2020Rank_Data["Stc"]["GuideTaskEvent"]
			local nAniversary2020Rank_GuideTaskkType=tAniversary2020Rank_Data["Stc"]["GuideTaskType"]
			
			local nAniversary2020Rank_GetPetEvent=tAniversary2020Rank_Data["Stc"]["GetPetEvent"]
			local nAniversary2020Rank_GetPetType =tAniversary2020Rank_Data["Stc"]["GetPetType"]
			
			if Get_UserStatisticValue(nAniversary2020Rank_FirstClickEvent,nAniversary2020Rank_FirstClickType) >0 then 
				--体验完剧情，还未领取跟随宠
				if Get_UserStatisticValue(nAniversary2020Rank_GuideTaskEvent,nAniversary2020Rank_GuideTaskkType) == 1 and Get_UserStatisticValue(nAniversary2020Rank_GetPetEvent,nAniversary2020Rank_GetPetType) == 0 then 
					return true
				else
					return false
				end 
			else
				return false
			end 
		else
			return false
		end 
	else
		return false
	end 
end

tNpcGossip[26069]["OptionFunc151"] = "Aniversary2020Rank_GetPet"

--体验完剧情，领取幼龙跟随宠
tNpcGossip[26069]["Text1-6"] = {161,162,163}
tNpcGossip[26069]["tOption1-6"] = {161}
tNpcGossip[26069]["ChkFunc1-6"] = function()
	if Sys_ChkFullTime(tActivityTime["Anniversary2020"]["ActivityTime"]) then 
		local nAniversary2020Rank_GetPetEvent=tAniversary2020Rank_Data["Stc"]["GetPetEvent"]
		local nAniversary2020Rank_GetPetType =tAniversary2020Rank_Data["Stc"]["GetPetType"]
		
		local nAniversary2020Rank_GuideTaskEvent=tAniversary2020Rank_Data["Stc"]["GuideTaskEvent"]
		local nAniversary2020Rank_GuideTaskkType=tAniversary2020Rank_Data["Stc"]["GuideTaskType"]

		if Sys_ChkFullTime(tActivityTime["Anniversary2020"]["FireworksTime"]) then 
			tNpcGossip[26069]["Text163"]=tAniversary2020Rank_Text[26069]["Text163"]
			--体验完剧情，领取完跟随宠
			if Get_UserStatisticValue(nAniversary2020Rank_GuideTaskEvent,nAniversary2020Rank_GuideTaskkType) == 1 and Get_UserStatisticValue(nAniversary2020Rank_GetPetEvent,nAniversary2020Rank_GetPetType)>0 then 
				return true
			else
				return false
			end
		else
			tNpcGossip[26069]["Text163"]=tAniversary2020Rank_Text[26069]["Text164"]
			--体验完剧情，领取完跟随宠
			if Get_UserStatisticValue(nAniversary2020Rank_GuideTaskEvent,nAniversary2020Rank_GuideTaskkType) >=1 and Get_UserStatisticValue(nAniversary2020Rank_GuideTaskEvent,nAniversary2020Rank_GuideTaskkType) < 3 and Get_UserStatisticValue(nAniversary2020Rank_GetPetEvent,nAniversary2020Rank_GetPetType)>0 then 
				return true
			else
				return false
			end
		end 
	else
		return false
	end 
end 

tNpcGossip[26069]["OptionFunc161"] = "Aniversary2020Rank_FeedPet"


--前两周主对白
tNpcGossip[26069]["Text1-7"] = {231,232,233,234,235}
tNpcGossip[26069]["tOption1-7"] = {231,232}
tNpcGossip[26069]["ChkFunc1-7"] = function()
	if Sys_ChkFullTime(tActivityTime["Anniversary2020"]["FireworksTime"]) then 
		local nAniversary2020Rank_GetPetEvent=tAniversary2020Rank_Data["Stc"]["GetPetEvent"]
		local nAniversary2020Rank_GetPetType =tAniversary2020Rank_Data["Stc"]["GetPetType"]
		
		local nAniversary2020Rank_GuideTaskEvent=tAniversary2020Rank_Data["Stc"]["GuideTaskEvent"]
		local nAniversary2020Rank_GuideTaskkType=tAniversary2020Rank_Data["Stc"]["GuideTaskType"]

			--体验完剧情，领取完跟随宠
		if Get_UserStatisticValue(nAniversary2020Rank_GuideTaskEvent,nAniversary2020Rank_GuideTaskkType) >= 2 and Get_UserStatisticValue(nAniversary2020Rank_GetPetEvent,nAniversary2020Rank_GetPetType)>0 then 
			return true
		else
			return false
		end 
	else
		return false
	end 
end 

tNpcGossip[26069]["OptionFunc231"] = "NpcPosition_PathFind</N>26069"
tNpcGossip[26069]["OptionChkFunc231"] = function ()
	local nAniversary2020Rank_Nation = User_ChkLanguage()
	local nAniversary2020Rank_GotoNpc=tAniversary2020Rank_Data["GotoNpc"]["FireWork"][nAniversary2020Rank_Nation]
	tNpcGossip[26069]["OptionFunc231"] = "NpcPosition_PathFind</N>" .. nAniversary2020Rank_GotoNpc
	return true
end

tNpcGossip[26069]["OptionFunc232"] = "Aniversary2020Rank_GotoSomeWhere"
-- tNpcGossip[26069]["OptionFunc232"] = "Sys_GotoSomeWhere</N>381</N>448</N>1002"


tNpcGossip[26069]["Text1-8"] = {241,242,243,244,245,246,247,248,249,2410,2411,2412,2413,2414}
tNpcGossip[26069]["tOption1-8"] = {241,242,243,244}
tNpcGossip[26069]["ChkFunc1-8"] = function()
	if Sys_ChkFullTime(tActivityTime["Anniversary2020"]["BossTime"]) then 
		local nAniversary2020Rank_GetPetEvent=tAniversary2020Rank_Data["Stc"]["GetPetEvent"]
		local nAniversary2020Rank_GetPetType =tAniversary2020Rank_Data["Stc"]["GetPetType"]
		
		local nAniversary2020Rank_GuideTaskEvent=tAniversary2020Rank_Data["Stc"]["GuideTaskEvent"]
		local nAniversary2020Rank_GuideTaskkType=tAniversary2020Rank_Data["Stc"]["GuideTaskType"]

		--体验完剧情，领取完跟随宠
		if Get_UserStatisticValue(nAniversary2020Rank_GuideTaskEvent,nAniversary2020Rank_GuideTaskkType) >= 2 and Get_UserStatisticValue(nAniversary2020Rank_GetPetEvent,nAniversary2020Rank_GetPetType)>0 then 
			--不在活动时间内则提示未开启
			if not Sys_ChkDayTime(tAniversary2020Rank_Data["OpenTime"]) then
				for i=1,4 do 
					tNpcGossip[26069]["Option24"..i] = string.format(tAniversary2020Rank_Text[26069]["Option24"..i],tAnniversaryBossInstance_Text[26088]["Close"])
				end
			else
				--选项显示是否副本开启
				for i=1,4 do 
					if Get_SysDynaGlobalData(tAniversary2020Rank_Data["InstanceOpenGlobalId"],i) > 0 then
						tNpcGossip[26069]["Option24"..i] = string.format(tAniversary2020Rank_Text[26069]["Option24"..i],tAnniversaryBossInstance_Text[26088]["Open"])
					else
						tNpcGossip[26069]["Option24"..i] = string.format(tAniversary2020Rank_Text[26069]["Option24"..i],tAnniversaryBossInstance_Text[26088]["Close"])
					end
				end
			end
			-- 剩余的大奖数量
			local nAnniversaryBossInstance_LeftNum1 = tAniversary2020Rank_Data["BigReward"][1]["Limt"] - Get_SysDynaGlobalData(tAniversary2020Rank_Data["BigReward"][1]["GlobalId"],tAniversary2020Rank_Data["BigReward"][1]["Pos"])
			local nAnniversaryBossInstance_LeftNum2 = tAniversary2020Rank_Data["BigReward"][2]["Limt"] - Get_SysDynaGlobalData(tAniversary2020Rank_Data["BigReward"][2]["GlobalId"],tAniversary2020Rank_Data["BigReward"][2]["Pos"])
			local nAnniversaryBossInstance_LeftNum3 = tAniversary2020Rank_Data["BigReward"][3]["Limt"] - Get_SysDynaGlobalData(tAniversary2020Rank_Data["BigReward"][3]["GlobalId"],tAniversary2020Rank_Data["BigReward"][3]["Pos"])
			local nAnniversaryBossInstance_LeftNum4 = tAniversary2020Rank_Data["BigReward"][4]["Limt"] - Get_SysDynaGlobalData(tAniversary2020Rank_Data["BigReward"][4]["GlobalId"],tAniversary2020Rank_Data["BigReward"][4]["Pos"])
			
			tNpcGossip[26069]["Text247"] = string.format(tAniversary2020Rank_Text[26069]["Text247"],nAnniversaryBossInstance_LeftNum1,nAnniversaryBossInstance_LeftNum2)
			tNpcGossip[26069]["Text2411"] = string.format(tAniversary2020Rank_Text[26069]["Text2411"],nAnniversaryBossInstance_LeftNum3,nAnniversaryBossInstance_LeftNum4)

			return true
		else
			return false
		end 
	else
		return false
	end 
end 
tNpcGossip[26069]["OptionFunc241"] = "AnniversaryBossInstance_IntoInstance</N>2</N>26088"
tNpcGossip[26069]["OptionFunc242"] = "AnniversaryBossInstance_IntoInstance</N>3</N>26088"
tNpcGossip[26069]["OptionFunc243"] = "AnniversaryBossInstance_IntoInstance</N>4</N>26088"
tNpcGossip[26069]["OptionFunc244"] = "AnniversaryBossInstance_IntoInstance</N>5</N>26088"

--规避对白
tNpcGossip[26069]["Text1-9"] = {151,152,153,154,155}
tNpcGossip[26069]["tOption1-9"] = {151}
tNpcGossip[26069]["ChkFunc1-9"] = function()
	if Sys_ChkFullTime(tActivityTime["Anniversary2020"]["ActivityTime"]) then 
		if User_JudgeLevelAndMetempsychosis(tAniversary2020Rank_Data["LevelJudge"]["Level"],tAniversary2020Rank_Data["LevelJudge"]["Mete"]) then
			local nAniversary2020Rank_FirstClickEvent=tAniversary2020Rank_Data["Stc"]["FirstClickEvent"]
			local nAniversary2020Rank_FirstClickType=tAniversary2020Rank_Data["Stc"]["FirstClickType"]
			
			local nAniversary2020Rank_GuideTaskEvent=tAniversary2020Rank_Data["Stc"]["GuideTaskEvent"]
			local nAniversary2020Rank_GuideTaskkType=tAniversary2020Rank_Data["Stc"]["GuideTaskType"]
			
			local nAniversary2020Rank_GetPetEvent=tAniversary2020Rank_Data["Stc"]["GetPetEvent"]
			local nAniversary2020Rank_GetPetType =tAniversary2020Rank_Data["Stc"]["GetPetType"]
			
			if Get_UserStatisticValue(nAniversary2020Rank_FirstClickEvent,nAniversary2020Rank_FirstClickType) >0 then 
				--体验完剧情，还未领取跟随宠
				if Get_UserStatisticValue(nAniversary2020Rank_GuideTaskEvent,nAniversary2020Rank_GuideTaskkType) > 1 and Get_UserStatisticValue(nAniversary2020Rank_GetPetEvent,nAniversary2020Rank_GetPetType) == 0 then 
					return true
				else
					return false
				end 
			else
				return false
			end 
		else
			return false
		end 
	else
		return false
	end 
end


--我该怎么喂养它？【第1-2周参与】
tNpcGossip[26069]["Text2-1"] = {211,212,213,214,215}
tNpcGossip[26069]["tOption2-1"] = {211}	

--我该怎么喂养它？【第3-4周参与】
tNpcGossip[26069]["Text2-2"] = {221,222,223,224,225}
tNpcGossip[26069]["tOption2-2"] = {221}	


tNpcGossip[26069]["Text3-1"] = {251,252,253}
tNpcGossip[26069]["tOption3-1"] = {251}
tNpcGossip[26069]["OptionFunc251"] = "Aniversary2020Rank_StoryScript"

--养成排行榜
-- tNpcGossip[26069]["Text4-1"] = {411,412,413,414,415,416,417,418,419,420,421,422,423,424,425,426,427,428,429}
-- tNpcGossip[26069]["tOption4-1"] = {411}
-- tNpcGossip[26069]["ChkFunc4-1"] = function()
	-- if Sys_ChkFullTime(tActivityTime["Anniversary2020"]["ActivityTime"]) then 
		-- local nAniversary2020Rank_Index =415
		-- local tRankData = RankingFunc_GetNowData(tAniversary2020Rank_Data["RankIndex"])
		-- local sAniversary2020Rank_Name = ""
		-- local sAniversary2020Rank_Score = ""
		-- for i = 1, 10 do
			-- if tRankData[i] ~= nil and tonumber(tRankData[i]["UserId"]) > 0 and tRankData[i]["Score"] > 0 then
				-- sAniversary2020Rank_Score = tostring(tRankData[i]["Score"])
				-- sAniversary2020Rank_Name = tRankData[i]["UserName"]
			-- else
				-- sAniversary2020Rank_Score = tAniversary2020Rank_Text["Dialog"]["Score"]
				-- sAniversary2020Rank_Name = tAniversary2020Rank_Text["Dialog"]["Name"]
			-- end
			-- local sAniversary2020Rank_Text1=Sys_CenterAline(tostring(i), 8,tostring(sAniversary2020Rank_Score), 23, tostring(sAniversary2020Rank_Name), 42)
			-- local sAniversary2020Rank_Text2=""
			-- tNpcGossip[26069]["Text" .. nAniversary2020Rank_Index + i] = string.format(tAniversary2020Rank_Text[26069]["Text" .. nAniversary2020Rank_Index + i],sAniversary2020Rank_Text1,sAniversary2020Rank_Text2)
		-- end 
		-- local nAniversary2020Rank_UserId=Get_UserId()
		-- local nAniversary2020Rank_GrowEvent=tAniversary2020Rank_Data["Stc"]["GrowEvent"]
		-- local nAniversary2020Rank_GrowType=tAniversary2020Rank_Data["Stc"]["GrowType"]
		-- local nAniversary2020Rank_NowGrowData=Get_UserStatisticValue(nAniversary2020Rank_GrowEvent,nAniversary2020Rank_GrowType)
		-- tNpcGossip[26069]["Text428"]= string.format(tAniversary2020Rank_Text[26069]["Text428"],nAniversary2020Rank_NowGrowData)
		
		-- local nAniversary2020Rank_Rank=RankingFunc_GetUserInRank(tAniversary2020Rank_Data["RankIndex"],nAniversary2020Rank_UserId)
		-- if nAniversary2020Rank_Rank==0 then 
			-- tNpcGossip[26069]["Text429"]=tAniversary2020Rank_Text[26069]["Text430"]
		-- else
			-- tNpcGossip[26069]["Text429"]=string.format(tAniversary2020Rank_Text[26069]["Text429"],nAniversary2020Rank_Rank)
		-- end 
		-- return true
	-- else
		-- return false
	-- end 
-- end 
-- tNpcGossip[26069]["OptionPoint411"] = "4-2"

--查看排名奖励
-- tNpcGossip[26069]["Text4-2"] = {441,442,443,444,445,446,447,448,449,4410}
-- tNpcGossip[26069]["tOption4-2"] = {421}

---------------------------------物品部分---------------------------------------------

tItem[3330421] = tItem[3330421] or {}
tItem[3330421]["Function"] = function(nItemId,sItemName)

	local nAniversary2020Rank_UserId = Get_UserId()
	local bAniversary2020Rank_Judge = TermsOfUse_Main(nItemId,tAniversary2020Rank_Data[nItemId])
	
	if not bAniversary2020Rank_Judge then
		return
	end	
	
	RewardTemplate_UseItemAndMsg(tAniversary2020Rank_Data[nItemId],nAniversary2020Rank_UserId,bAniversary2020Rank_Judge)
end

tItem[3330422] = tItem[3330421]
tItem[3330423] = tItem[3330421]
tItem[3330424] = tItem[3330421]
tItem[3330425] = tItem[3330421]
tItem[3330426] = tItem[3330421]
tItem[3330427] = tItem[3330421]
tItem[3330428] = tItem[3330421]

