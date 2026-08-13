------------------------------------------------------------------------------------
--Name：       190321[简体征服][活动脚本]周年庆活动副本
--Creator:     吴燕柚
--Created:     2019/03/21
------------------------------------------------------------------------------------
--任务需求：

--命名规范 AnniversaryInstance_
--stc(192,68) 背包信
--stc(192,69) 单人场参加
--stc(192,70) 单人场日分
--stc(192,71) 单人场总分
--stc(192,72) 组队场参加
--stc(192,73) 组队场日分
--stc(192,74) 组队场总分
--stc(192,77) 记录当前参与组别 1 单人 2组队
--stc(192,79) 记录当日积分奖励是否领取
--stc(193,58) 记录宝箱刷新领当日使用次数

--log 12001344

-- #动态存储表说明
-- #单人每日排行榜 239081
-- {53302, 53303, 53304, 53305};globalBefore{53306, 53307, 53308, 53309}
-- #单人总榜 239082
-- {53310, 53311, 53312, 53313}

-- #组队每日排行榜 239083
-- {53314, 53315, 53316, 53317};globalBefore{53318, 53319, 53320, 53321}
-- #组队总榜 239084
-- {53322, 53323, 53324, 53325}

------------------------------------------------------------------------------------


----------------------------------表配置部分--------------------------------------------

--排行榜部分
--单人日排行榜
tRankingFunc_Info[239081] = {}
tRankingFunc_Info[239081]["ActiveTime"] = tActivityTime["AnniversaryInstance"]["RankNpcTime"]
tRankingFunc_Info[239081]["DayTime"] = {}
tRankingFunc_Info[239081]["DayTime"][1] = tActivityTime["AnniversaryInstance"]["RankDayTime"]
tRankingFunc_Info[239081]["ResetTime"] = {}
tRankingFunc_Info[239081]["ResetTime"][1] = tActivityTime["AnniversaryInstance"]["ResetTime"]
tRankingFunc_Info[239081]["Global"] = {53302, 53303, 53304, 53305}
tRankingFunc_Info[239081]["BeforeGlobal"] = {53306, 53307, 53308, 53309}
tRankingFunc_Info[239081]["RankNum"] = 10
tRankingFunc_Info[239081]["RankMode"] = 1
tRankingFunc_Info[239081]["Mail"] = {}
tRankingFunc_Info[239081]["Mail"]["ActiveTime"] = tActivityTime["AnniversaryInstance"]["DayMailActiveTime"]--可发邮件的时间
tRankingFunc_Info[239081]["Mail"]["RewardTime"] = {}
tRankingFunc_Info[239081]["Mail"]["RewardTime"][1] = tActivityTime["AnniversaryInstance"]["MailRewardTime"]--发邮件的日时间
--邮件奖励
--1
tRankingFunc_Info[239081]["Mail"]["Reward"] = {}
tRankingFunc_Info[239081]["Mail"]["Reward"][1] = {}
tRankingFunc_Info[239081]["Mail"]["Reward"][1]["RewardRank"] = 1
tRankingFunc_Info[239081]["Mail"]["Reward"][1]["ActionId"] = 571730
tRankingFunc_Info[239081]["Mail"]["Reward"][1]["ExistDay"] = 30
tRankingFunc_Info[239081]["Mail"]["Reward"][1]["Sender"] = tAnniversaryInstance_Text["Mail"]["From"]
tRankingFunc_Info[239081]["Mail"]["Reward"][1]["Title"] = tAnniversaryInstance_Text["Mail"]["Title"]
tRankingFunc_Info[239081]["Mail"]["Reward"][1]["Content"] = tAnniversaryInstance_Text["Mail"]["Content"]["SingleDay"][1]
--2
tRankingFunc_Info[239081]["Mail"]["Reward"][2] = {}
tRankingFunc_Info[239081]["Mail"]["Reward"][2]["RewardRank"] = 2
tRankingFunc_Info[239081]["Mail"]["Reward"][2]["ActionId"] = 571731
tRankingFunc_Info[239081]["Mail"]["Reward"][2]["ExistDay"] = 30
tRankingFunc_Info[239081]["Mail"]["Reward"][2]["Sender"] = tAnniversaryInstance_Text["Mail"]["From"]
tRankingFunc_Info[239081]["Mail"]["Reward"][2]["Title"] = tAnniversaryInstance_Text["Mail"]["Title"]
tRankingFunc_Info[239081]["Mail"]["Reward"][2]["Content"] = tAnniversaryInstance_Text["Mail"]["Content"]["SingleDay"][2]
--3
tRankingFunc_Info[239081]["Mail"]["Reward"][3] = {}
tRankingFunc_Info[239081]["Mail"]["Reward"][3]["RewardRank"] = 3
tRankingFunc_Info[239081]["Mail"]["Reward"][3]["ActionId"] = 571732
tRankingFunc_Info[239081]["Mail"]["Reward"][3]["ExistDay"] = 30
tRankingFunc_Info[239081]["Mail"]["Reward"][3]["Sender"] = tAnniversaryInstance_Text["Mail"]["From"]
tRankingFunc_Info[239081]["Mail"]["Reward"][3]["Title"] = tAnniversaryInstance_Text["Mail"]["Title"]
tRankingFunc_Info[239081]["Mail"]["Reward"][3]["Content"] = tAnniversaryInstance_Text["Mail"]["Content"]["SingleDay"][3]
--4
tRankingFunc_Info[239081]["Mail"]["Reward"][4] = {}
tRankingFunc_Info[239081]["Mail"]["Reward"][4]["RewardRank"] = 4
tRankingFunc_Info[239081]["Mail"]["Reward"][4]["ActionId"] = 571733
tRankingFunc_Info[239081]["Mail"]["Reward"][4]["ExistDay"] = 30
tRankingFunc_Info[239081]["Mail"]["Reward"][4]["Sender"] = tAnniversaryInstance_Text["Mail"]["From"]
tRankingFunc_Info[239081]["Mail"]["Reward"][4]["Title"] = tAnniversaryInstance_Text["Mail"]["Title"]
tRankingFunc_Info[239081]["Mail"]["Reward"][4]["Content"] = tAnniversaryInstance_Text["Mail"]["Content"]["SingleDay"][4]
--5
tRankingFunc_Info[239081]["Mail"]["Reward"][5] = {}
tRankingFunc_Info[239081]["Mail"]["Reward"][5]["RewardRank"] = 5
tRankingFunc_Info[239081]["Mail"]["Reward"][5]["ActionId"] = 571733
tRankingFunc_Info[239081]["Mail"]["Reward"][5]["ExistDay"] = 30
tRankingFunc_Info[239081]["Mail"]["Reward"][5]["Sender"] = tAnniversaryInstance_Text["Mail"]["From"]
tRankingFunc_Info[239081]["Mail"]["Reward"][5]["Title"] = tAnniversaryInstance_Text["Mail"]["Title"]
tRankingFunc_Info[239081]["Mail"]["Reward"][5]["Content"] = tAnniversaryInstance_Text["Mail"]["Content"]["SingleDay"][5]
--6
tRankingFunc_Info[239081]["Mail"]["Reward"][6] = {}
tRankingFunc_Info[239081]["Mail"]["Reward"][6]["RewardRank"] = 6
tRankingFunc_Info[239081]["Mail"]["Reward"][6]["ActionId"] = 571733
tRankingFunc_Info[239081]["Mail"]["Reward"][6]["ExistDay"] = 30
tRankingFunc_Info[239081]["Mail"]["Reward"][6]["Sender"] = tAnniversaryInstance_Text["Mail"]["From"]
tRankingFunc_Info[239081]["Mail"]["Reward"][6]["Title"] = tAnniversaryInstance_Text["Mail"]["Title"]
tRankingFunc_Info[239081]["Mail"]["Reward"][6]["Content"] = tAnniversaryInstance_Text["Mail"]["Content"]["SingleDay"][6]
--7
tRankingFunc_Info[239081]["Mail"]["Reward"][7] = {}
tRankingFunc_Info[239081]["Mail"]["Reward"][7]["RewardRank"] = 7
tRankingFunc_Info[239081]["Mail"]["Reward"][7]["ActionId"] = 571734
tRankingFunc_Info[239081]["Mail"]["Reward"][7]["ExistDay"] = 30
tRankingFunc_Info[239081]["Mail"]["Reward"][7]["Sender"] = tAnniversaryInstance_Text["Mail"]["From"]
tRankingFunc_Info[239081]["Mail"]["Reward"][7]["Title"] = tAnniversaryInstance_Text["Mail"]["Title"]
tRankingFunc_Info[239081]["Mail"]["Reward"][7]["Content"] = tAnniversaryInstance_Text["Mail"]["Content"]["SingleDay"][7]
--8
tRankingFunc_Info[239081]["Mail"]["Reward"][8] = {}
tRankingFunc_Info[239081]["Mail"]["Reward"][8]["RewardRank"] = 8
tRankingFunc_Info[239081]["Mail"]["Reward"][8]["ActionId"] = 571734
tRankingFunc_Info[239081]["Mail"]["Reward"][8]["ExistDay"] = 30
tRankingFunc_Info[239081]["Mail"]["Reward"][8]["Sender"] = tAnniversaryInstance_Text["Mail"]["From"]
tRankingFunc_Info[239081]["Mail"]["Reward"][8]["Title"] = tAnniversaryInstance_Text["Mail"]["Title"]
tRankingFunc_Info[239081]["Mail"]["Reward"][8]["Content"] = tAnniversaryInstance_Text["Mail"]["Content"]["SingleDay"][8]
--9
tRankingFunc_Info[239081]["Mail"]["Reward"][9] = {}
tRankingFunc_Info[239081]["Mail"]["Reward"][9]["RewardRank"] = 9
tRankingFunc_Info[239081]["Mail"]["Reward"][9]["ActionId"] = 571734
tRankingFunc_Info[239081]["Mail"]["Reward"][9]["ExistDay"] = 30
tRankingFunc_Info[239081]["Mail"]["Reward"][9]["Sender"] = tAnniversaryInstance_Text["Mail"]["From"]
tRankingFunc_Info[239081]["Mail"]["Reward"][9]["Title"] = tAnniversaryInstance_Text["Mail"]["Title"]
tRankingFunc_Info[239081]["Mail"]["Reward"][9]["Content"] = tAnniversaryInstance_Text["Mail"]["Content"]["SingleDay"][9]
--10
tRankingFunc_Info[239081]["Mail"]["Reward"][10] = {}
tRankingFunc_Info[239081]["Mail"]["Reward"][10]["RewardRank"] = 10
tRankingFunc_Info[239081]["Mail"]["Reward"][10]["ActionId"] = 571734
tRankingFunc_Info[239081]["Mail"]["Reward"][10]["ExistDay"] = 30
tRankingFunc_Info[239081]["Mail"]["Reward"][10]["Sender"] = tAnniversaryInstance_Text["Mail"]["From"]
tRankingFunc_Info[239081]["Mail"]["Reward"][10]["Title"] = tAnniversaryInstance_Text["Mail"]["Title"]
tRankingFunc_Info[239081]["Mail"]["Reward"][10]["Content"] = tAnniversaryInstance_Text["Mail"]["Content"]["SingleDay"][10]
--单人总排行榜
tRankingFunc_Info[239082] = {}
tRankingFunc_Info[239082]["ActiveTime"] = tActivityTime["AnniversaryInstance"]["RankNpcTime"]
tRankingFunc_Info[239082]["DayTime"] = {}
tRankingFunc_Info[239082]["DayTime"][1] = tActivityTime["AnniversaryInstance"]["RankDayTime"]
tRankingFunc_Info[239082]["Reset"] = 1
tRankingFunc_Info[239082]["Global"] = {53310, 53311, 53312, 53313}
tRankingFunc_Info[239082]["RankNum"] = 10
tRankingFunc_Info[239082]["RankMode"] = 1
tRankingFunc_Info[239082]["Mail"] = {}
tRankingFunc_Info[239082]["Mail"]["ActiveTime"] = tActivityTime["AnniversaryInstance"]["TotalMailActiveTime"]--可发邮件的时间
tRankingFunc_Info[239082]["Mail"]["RewardTime"] = {}
tRankingFunc_Info[239082]["Mail"]["RewardTime"][1] = tActivityTime["AnniversaryInstance"]["TotalMailRewardTime"]
--邮件奖励
--1
tRankingFunc_Info[239082]["Mail"]["Reward"] = {}
tRankingFunc_Info[239082]["Mail"]["Reward"][1] = {}
tRankingFunc_Info[239082]["Mail"]["Reward"][1]["RewardRank"] = 1
tRankingFunc_Info[239082]["Mail"]["Reward"][1]["ActionId"] = 571735
tRankingFunc_Info[239082]["Mail"]["Reward"][1]["ExistDay"] = 30
tRankingFunc_Info[239082]["Mail"]["Reward"][1]["Sender"] = tAnniversaryInstance_Text["Mail"]["From"]
tRankingFunc_Info[239082]["Mail"]["Reward"][1]["Title"] = tAnniversaryInstance_Text["Mail"]["Title"]
tRankingFunc_Info[239082]["Mail"]["Reward"][1]["Content"] = tAnniversaryInstance_Text["Mail"]["Content"]["SingleTotal"][1]
--2
tRankingFunc_Info[239082]["Mail"]["Reward"][2] = {}
tRankingFunc_Info[239082]["Mail"]["Reward"][2]["RewardRank"] = 2
tRankingFunc_Info[239082]["Mail"]["Reward"][2]["ActionId"] = 571736
tRankingFunc_Info[239082]["Mail"]["Reward"][2]["ExistDay"] = 30
tRankingFunc_Info[239082]["Mail"]["Reward"][2]["Sender"] = tAnniversaryInstance_Text["Mail"]["From"]
tRankingFunc_Info[239082]["Mail"]["Reward"][2]["Title"] = tAnniversaryInstance_Text["Mail"]["Title"]
tRankingFunc_Info[239082]["Mail"]["Reward"][2]["Content"] = tAnniversaryInstance_Text["Mail"]["Content"]["SingleTotal"][2]
--3
tRankingFunc_Info[239082]["Mail"]["Reward"][3] = {}
tRankingFunc_Info[239082]["Mail"]["Reward"][3]["RewardRank"] = 3
tRankingFunc_Info[239082]["Mail"]["Reward"][3]["ActionId"] = 571737
tRankingFunc_Info[239082]["Mail"]["Reward"][3]["ExistDay"] = 30
tRankingFunc_Info[239082]["Mail"]["Reward"][3]["Sender"] = tAnniversaryInstance_Text["Mail"]["From"]
tRankingFunc_Info[239082]["Mail"]["Reward"][3]["Title"] = tAnniversaryInstance_Text["Mail"]["Title"]
tRankingFunc_Info[239082]["Mail"]["Reward"][3]["Content"] = tAnniversaryInstance_Text["Mail"]["Content"]["SingleTotal"][3]
--4
tRankingFunc_Info[239082]["Mail"]["Reward"][4] = {}
tRankingFunc_Info[239082]["Mail"]["Reward"][4]["RewardRank"] = 4
tRankingFunc_Info[239082]["Mail"]["Reward"][4]["ActionId"] = 571738
tRankingFunc_Info[239082]["Mail"]["Reward"][4]["ExistDay"] = 30
tRankingFunc_Info[239082]["Mail"]["Reward"][4]["Sender"] = tAnniversaryInstance_Text["Mail"]["From"]
tRankingFunc_Info[239082]["Mail"]["Reward"][4]["Title"] = tAnniversaryInstance_Text["Mail"]["Title"]
tRankingFunc_Info[239082]["Mail"]["Reward"][4]["Content"] = tAnniversaryInstance_Text["Mail"]["Content"]["SingleTotal"][4]
--5
tRankingFunc_Info[239082]["Mail"]["Reward"][5] = {}
tRankingFunc_Info[239082]["Mail"]["Reward"][5]["RewardRank"] = 5
tRankingFunc_Info[239082]["Mail"]["Reward"][5]["ActionId"] = 571738
tRankingFunc_Info[239082]["Mail"]["Reward"][5]["ExistDay"] = 30
tRankingFunc_Info[239082]["Mail"]["Reward"][5]["Sender"] = tAnniversaryInstance_Text["Mail"]["From"]
tRankingFunc_Info[239082]["Mail"]["Reward"][5]["Title"] = tAnniversaryInstance_Text["Mail"]["Title"]
tRankingFunc_Info[239082]["Mail"]["Reward"][5]["Content"] = tAnniversaryInstance_Text["Mail"]["Content"]["SingleTotal"][5]
--6
tRankingFunc_Info[239082]["Mail"]["Reward"][6] = {}
tRankingFunc_Info[239082]["Mail"]["Reward"][6]["RewardRank"] = 6
tRankingFunc_Info[239082]["Mail"]["Reward"][6]["ActionId"] = 571738
tRankingFunc_Info[239082]["Mail"]["Reward"][6]["ExistDay"] = 30
tRankingFunc_Info[239082]["Mail"]["Reward"][6]["Sender"] = tAnniversaryInstance_Text["Mail"]["From"]
tRankingFunc_Info[239082]["Mail"]["Reward"][6]["Title"] = tAnniversaryInstance_Text["Mail"]["Title"]
tRankingFunc_Info[239082]["Mail"]["Reward"][6]["Content"] = tAnniversaryInstance_Text["Mail"]["Content"]["SingleTotal"][6]
--7
tRankingFunc_Info[239082]["Mail"]["Reward"][7] = {}
tRankingFunc_Info[239082]["Mail"]["Reward"][7]["RewardRank"] = 7
tRankingFunc_Info[239082]["Mail"]["Reward"][7]["ActionId"] = 571739
tRankingFunc_Info[239082]["Mail"]["Reward"][7]["ExistDay"] = 30
tRankingFunc_Info[239082]["Mail"]["Reward"][7]["Sender"] = tAnniversaryInstance_Text["Mail"]["From"]
tRankingFunc_Info[239082]["Mail"]["Reward"][7]["Title"] = tAnniversaryInstance_Text["Mail"]["Title"]
tRankingFunc_Info[239082]["Mail"]["Reward"][7]["Content"] = tAnniversaryInstance_Text["Mail"]["Content"]["SingleTotal"][7]
--8
tRankingFunc_Info[239082]["Mail"]["Reward"][8] = {}
tRankingFunc_Info[239082]["Mail"]["Reward"][8]["RewardRank"] = 8
tRankingFunc_Info[239082]["Mail"]["Reward"][8]["ActionId"] = 571739
tRankingFunc_Info[239082]["Mail"]["Reward"][8]["ExistDay"] = 30
tRankingFunc_Info[239082]["Mail"]["Reward"][8]["Sender"] = tAnniversaryInstance_Text["Mail"]["From"]
tRankingFunc_Info[239082]["Mail"]["Reward"][8]["Title"] = tAnniversaryInstance_Text["Mail"]["Title"]
tRankingFunc_Info[239082]["Mail"]["Reward"][8]["Content"] = tAnniversaryInstance_Text["Mail"]["Content"]["SingleTotal"][8]
--9
tRankingFunc_Info[239082]["Mail"]["Reward"][9] = {}
tRankingFunc_Info[239082]["Mail"]["Reward"][9]["RewardRank"] = 9
tRankingFunc_Info[239082]["Mail"]["Reward"][9]["ActionId"] = 571739
tRankingFunc_Info[239082]["Mail"]["Reward"][9]["ExistDay"] = 30
tRankingFunc_Info[239082]["Mail"]["Reward"][9]["Sender"] = tAnniversaryInstance_Text["Mail"]["From"]
tRankingFunc_Info[239082]["Mail"]["Reward"][9]["Title"] = tAnniversaryInstance_Text["Mail"]["Title"]
tRankingFunc_Info[239082]["Mail"]["Reward"][9]["Content"] = tAnniversaryInstance_Text["Mail"]["Content"]["SingleTotal"][9]
--10
tRankingFunc_Info[239082]["Mail"]["Reward"][10] = {}
tRankingFunc_Info[239082]["Mail"]["Reward"][10]["RewardRank"] = 10
tRankingFunc_Info[239082]["Mail"]["Reward"][10]["ActionId"] = 571739
tRankingFunc_Info[239082]["Mail"]["Reward"][10]["ExistDay"] = 30
tRankingFunc_Info[239082]["Mail"]["Reward"][10]["Sender"] = tAnniversaryInstance_Text["Mail"]["From"]
tRankingFunc_Info[239082]["Mail"]["Reward"][10]["Title"] = tAnniversaryInstance_Text["Mail"]["Title"]
tRankingFunc_Info[239082]["Mail"]["Reward"][10]["Content"] = tAnniversaryInstance_Text["Mail"]["Content"]["SingleTotal"][10]

--组队日排行榜
tRankingFunc_Info[239083] = {}
tRankingFunc_Info[239083]["ActiveTime"] = tActivityTime["AnniversaryInstance"]["RankNpcTime"]
tRankingFunc_Info[239083]["DayTime"] = {}
tRankingFunc_Info[239083]["DayTime"][1] = tActivityTime["AnniversaryInstance"]["RankDayTime"]
tRankingFunc_Info[239083]["ResetTime"] = {}
tRankingFunc_Info[239083]["ResetTime"][1] = tActivityTime["AnniversaryInstance"]["ResetTime"]
tRankingFunc_Info[239083]["Global"] = {53314, 53315, 53316, 53317}
tRankingFunc_Info[239083]["BeforeGlobal"] = {53318, 53319, 53320, 53321}
tRankingFunc_Info[239083]["RankNum"] = 10
tRankingFunc_Info[239083]["RankMode"] = 1
tRankingFunc_Info[239083]["Mail"] = {}
tRankingFunc_Info[239083]["Mail"]["ActiveTime"] = tActivityTime["AnniversaryInstance"]["DayMailActiveTime"]--可发邮件的时间
tRankingFunc_Info[239083]["Mail"]["RewardTime"] = {}
tRankingFunc_Info[239083]["Mail"]["RewardTime"][1] = tActivityTime["AnniversaryInstance"]["MailRewardTime"]--发邮件的日时间
--邮件奖励
--1
tRankingFunc_Info[239083]["Mail"]["Reward"] = {}
tRankingFunc_Info[239083]["Mail"]["Reward"][1] = {}
tRankingFunc_Info[239083]["Mail"]["Reward"][1]["RewardRank"] = 1
tRankingFunc_Info[239083]["Mail"]["Reward"][1]["ActionId"] = 571740
tRankingFunc_Info[239083]["Mail"]["Reward"][1]["ExistDay"] = 30
tRankingFunc_Info[239083]["Mail"]["Reward"][1]["Sender"] = tAnniversaryInstance_Text["Mail"]["From"]
tRankingFunc_Info[239083]["Mail"]["Reward"][1]["Title"] = tAnniversaryInstance_Text["Mail"]["Title"]
tRankingFunc_Info[239083]["Mail"]["Reward"][1]["Content"] = tAnniversaryInstance_Text["Mail"]["Content"]["TeamDay"][1]
--2
tRankingFunc_Info[239083]["Mail"]["Reward"][2] = {}
tRankingFunc_Info[239083]["Mail"]["Reward"][2]["RewardRank"] = 2
tRankingFunc_Info[239083]["Mail"]["Reward"][2]["ActionId"] = 571741
tRankingFunc_Info[239083]["Mail"]["Reward"][2]["ExistDay"] = 30
tRankingFunc_Info[239083]["Mail"]["Reward"][2]["Sender"] = tAnniversaryInstance_Text["Mail"]["From"]
tRankingFunc_Info[239083]["Mail"]["Reward"][2]["Title"] = tAnniversaryInstance_Text["Mail"]["Title"]
tRankingFunc_Info[239083]["Mail"]["Reward"][2]["Content"] = tAnniversaryInstance_Text["Mail"]["Content"]["TeamDay"][2]
--3
tRankingFunc_Info[239083]["Mail"]["Reward"][3] = {}
tRankingFunc_Info[239083]["Mail"]["Reward"][3]["RewardRank"] = 3
tRankingFunc_Info[239083]["Mail"]["Reward"][3]["ActionId"] = 571742
tRankingFunc_Info[239083]["Mail"]["Reward"][3]["ExistDay"] = 30
tRankingFunc_Info[239083]["Mail"]["Reward"][3]["Sender"] = tAnniversaryInstance_Text["Mail"]["From"]
tRankingFunc_Info[239083]["Mail"]["Reward"][3]["Title"] = tAnniversaryInstance_Text["Mail"]["Title"]
tRankingFunc_Info[239083]["Mail"]["Reward"][3]["Content"] = tAnniversaryInstance_Text["Mail"]["Content"]["TeamDay"][3]
--4
tRankingFunc_Info[239083]["Mail"]["Reward"][4] = {}
tRankingFunc_Info[239083]["Mail"]["Reward"][4]["RewardRank"] = 4
tRankingFunc_Info[239083]["Mail"]["Reward"][4]["ActionId"] = 571743
tRankingFunc_Info[239083]["Mail"]["Reward"][4]["ExistDay"] = 30
tRankingFunc_Info[239083]["Mail"]["Reward"][4]["Sender"] = tAnniversaryInstance_Text["Mail"]["From"]
tRankingFunc_Info[239083]["Mail"]["Reward"][4]["Title"] = tAnniversaryInstance_Text["Mail"]["Title"]
tRankingFunc_Info[239083]["Mail"]["Reward"][4]["Content"] = tAnniversaryInstance_Text["Mail"]["Content"]["TeamDay"][4]
--5
tRankingFunc_Info[239083]["Mail"]["Reward"][5] = {}
tRankingFunc_Info[239083]["Mail"]["Reward"][5]["RewardRank"] = 5
tRankingFunc_Info[239083]["Mail"]["Reward"][5]["ActionId"] = 571743
tRankingFunc_Info[239083]["Mail"]["Reward"][5]["ExistDay"] = 30
tRankingFunc_Info[239083]["Mail"]["Reward"][5]["Sender"] = tAnniversaryInstance_Text["Mail"]["From"]
tRankingFunc_Info[239083]["Mail"]["Reward"][5]["Title"] = tAnniversaryInstance_Text["Mail"]["Title"]
tRankingFunc_Info[239083]["Mail"]["Reward"][5]["Content"] = tAnniversaryInstance_Text["Mail"]["Content"]["TeamDay"][5]
--6
tRankingFunc_Info[239083]["Mail"]["Reward"][6] = {}
tRankingFunc_Info[239083]["Mail"]["Reward"][6]["RewardRank"] = 6
tRankingFunc_Info[239083]["Mail"]["Reward"][6]["ActionId"] = 571743
tRankingFunc_Info[239083]["Mail"]["Reward"][6]["ExistDay"] = 30
tRankingFunc_Info[239083]["Mail"]["Reward"][6]["Sender"] = tAnniversaryInstance_Text["Mail"]["From"]
tRankingFunc_Info[239083]["Mail"]["Reward"][6]["Title"] = tAnniversaryInstance_Text["Mail"]["Title"]
tRankingFunc_Info[239083]["Mail"]["Reward"][6]["Content"] = tAnniversaryInstance_Text["Mail"]["Content"]["TeamDay"][6]
--7
tRankingFunc_Info[239083]["Mail"]["Reward"][7] = {}
tRankingFunc_Info[239083]["Mail"]["Reward"][7]["RewardRank"] = 7
tRankingFunc_Info[239083]["Mail"]["Reward"][7]["ActionId"] = 571744
tRankingFunc_Info[239083]["Mail"]["Reward"][7]["ExistDay"] = 30
tRankingFunc_Info[239083]["Mail"]["Reward"][7]["Sender"] = tAnniversaryInstance_Text["Mail"]["From"]
tRankingFunc_Info[239083]["Mail"]["Reward"][7]["Title"] = tAnniversaryInstance_Text["Mail"]["Title"]
tRankingFunc_Info[239083]["Mail"]["Reward"][7]["Content"] = tAnniversaryInstance_Text["Mail"]["Content"]["TeamDay"][7]
--8
tRankingFunc_Info[239083]["Mail"]["Reward"][8] = {}
tRankingFunc_Info[239083]["Mail"]["Reward"][8]["RewardRank"] = 8
tRankingFunc_Info[239083]["Mail"]["Reward"][8]["ActionId"] = 571744
tRankingFunc_Info[239083]["Mail"]["Reward"][8]["ExistDay"] = 30
tRankingFunc_Info[239083]["Mail"]["Reward"][8]["Sender"] = tAnniversaryInstance_Text["Mail"]["From"]
tRankingFunc_Info[239083]["Mail"]["Reward"][8]["Title"] = tAnniversaryInstance_Text["Mail"]["Title"]
tRankingFunc_Info[239083]["Mail"]["Reward"][8]["Content"] = tAnniversaryInstance_Text["Mail"]["Content"]["TeamDay"][8]
--9
tRankingFunc_Info[239083]["Mail"]["Reward"][9] = {}
tRankingFunc_Info[239083]["Mail"]["Reward"][9]["RewardRank"] = 9
tRankingFunc_Info[239083]["Mail"]["Reward"][9]["ActionId"] = 571744
tRankingFunc_Info[239083]["Mail"]["Reward"][9]["ExistDay"] = 30
tRankingFunc_Info[239083]["Mail"]["Reward"][9]["Sender"] = tAnniversaryInstance_Text["Mail"]["From"]
tRankingFunc_Info[239083]["Mail"]["Reward"][9]["Title"] = tAnniversaryInstance_Text["Mail"]["Title"]
tRankingFunc_Info[239083]["Mail"]["Reward"][9]["Content"] = tAnniversaryInstance_Text["Mail"]["Content"]["TeamDay"][9]
--10
tRankingFunc_Info[239083]["Mail"]["Reward"][10] = {}
tRankingFunc_Info[239083]["Mail"]["Reward"][10]["RewardRank"] = 10
tRankingFunc_Info[239083]["Mail"]["Reward"][10]["ActionId"] = 571744
tRankingFunc_Info[239083]["Mail"]["Reward"][10]["ExistDay"] = 30
tRankingFunc_Info[239083]["Mail"]["Reward"][10]["Sender"] = tAnniversaryInstance_Text["Mail"]["From"]
tRankingFunc_Info[239083]["Mail"]["Reward"][10]["Title"] = tAnniversaryInstance_Text["Mail"]["Title"]
tRankingFunc_Info[239083]["Mail"]["Reward"][10]["Content"] = tAnniversaryInstance_Text["Mail"]["Content"]["TeamDay"][10]
--组队总排行榜
tRankingFunc_Info[239084] = {}
tRankingFunc_Info[239084]["ActiveTime"] = tActivityTime["AnniversaryInstance"]["RankNpcTime"]
tRankingFunc_Info[239084]["DayTime"] = {}
tRankingFunc_Info[239084]["DayTime"][1] = tActivityTime["AnniversaryInstance"]["RankDayTime"]
tRankingFunc_Info[239084]["Reset"] = 1
tRankingFunc_Info[239084]["Global"] = {53322, 53323, 53324, 53325}
tRankingFunc_Info[239084]["RankNum"] = 10
tRankingFunc_Info[239084]["RankMode"] = 1
tRankingFunc_Info[239084]["Mail"] = {}
tRankingFunc_Info[239084]["Mail"]["ActiveTime"] = tActivityTime["AnniversaryInstance"]["TotalMailActiveTime"]--可发邮件的时间
tRankingFunc_Info[239084]["Mail"]["RewardTime"] = {}
tRankingFunc_Info[239084]["Mail"]["RewardTime"][1] = tActivityTime["AnniversaryInstance"]["TotalMailRewardTime"]
--邮件奖励
--1
tRankingFunc_Info[239084]["Mail"]["Reward"] = {}
tRankingFunc_Info[239084]["Mail"]["Reward"][1] = {}
tRankingFunc_Info[239084]["Mail"]["Reward"][1]["RewardRank"] = 1
tRankingFunc_Info[239084]["Mail"]["Reward"][1]["ActionId"] = 571745
tRankingFunc_Info[239084]["Mail"]["Reward"][1]["ExistDay"] = 30
tRankingFunc_Info[239084]["Mail"]["Reward"][1]["Sender"] = tAnniversaryInstance_Text["Mail"]["From"]
tRankingFunc_Info[239084]["Mail"]["Reward"][1]["Title"] = tAnniversaryInstance_Text["Mail"]["Title"]
tRankingFunc_Info[239084]["Mail"]["Reward"][1]["Content"] = tAnniversaryInstance_Text["Mail"]["Content"]["TeamTotal"][1]
--2
tRankingFunc_Info[239084]["Mail"]["Reward"][2] = {}
tRankingFunc_Info[239084]["Mail"]["Reward"][2]["RewardRank"] = 2
tRankingFunc_Info[239084]["Mail"]["Reward"][2]["ActionId"] = 571746
tRankingFunc_Info[239084]["Mail"]["Reward"][2]["ExistDay"] = 30
tRankingFunc_Info[239084]["Mail"]["Reward"][2]["Sender"] = tAnniversaryInstance_Text["Mail"]["From"]
tRankingFunc_Info[239084]["Mail"]["Reward"][2]["Title"] = tAnniversaryInstance_Text["Mail"]["Title"]
tRankingFunc_Info[239084]["Mail"]["Reward"][2]["Content"] = tAnniversaryInstance_Text["Mail"]["Content"]["TeamTotal"][2]
--3
tRankingFunc_Info[239084]["Mail"]["Reward"][3] = {}
tRankingFunc_Info[239084]["Mail"]["Reward"][3]["RewardRank"] = 3
tRankingFunc_Info[239084]["Mail"]["Reward"][3]["ActionId"] = 571747
tRankingFunc_Info[239084]["Mail"]["Reward"][3]["ExistDay"] = 30
tRankingFunc_Info[239084]["Mail"]["Reward"][3]["Sender"] = tAnniversaryInstance_Text["Mail"]["From"]
tRankingFunc_Info[239084]["Mail"]["Reward"][3]["Title"] = tAnniversaryInstance_Text["Mail"]["Title"]
tRankingFunc_Info[239084]["Mail"]["Reward"][3]["Content"] = tAnniversaryInstance_Text["Mail"]["Content"]["TeamTotal"][3]
--4
tRankingFunc_Info[239084]["Mail"]["Reward"][4] = {}
tRankingFunc_Info[239084]["Mail"]["Reward"][4]["RewardRank"] = 4
tRankingFunc_Info[239084]["Mail"]["Reward"][4]["ActionId"] = 571748
tRankingFunc_Info[239084]["Mail"]["Reward"][4]["ExistDay"] = 30
tRankingFunc_Info[239084]["Mail"]["Reward"][4]["Sender"] = tAnniversaryInstance_Text["Mail"]["From"]
tRankingFunc_Info[239084]["Mail"]["Reward"][4]["Title"] = tAnniversaryInstance_Text["Mail"]["Title"]
tRankingFunc_Info[239084]["Mail"]["Reward"][4]["Content"] = tAnniversaryInstance_Text["Mail"]["Content"]["TeamTotal"][4]
--5
tRankingFunc_Info[239084]["Mail"]["Reward"][5] = {}
tRankingFunc_Info[239084]["Mail"]["Reward"][5]["RewardRank"] = 5
tRankingFunc_Info[239084]["Mail"]["Reward"][5]["ActionId"] = 571748
tRankingFunc_Info[239084]["Mail"]["Reward"][5]["ExistDay"] = 30
tRankingFunc_Info[239084]["Mail"]["Reward"][5]["Sender"] = tAnniversaryInstance_Text["Mail"]["From"]
tRankingFunc_Info[239084]["Mail"]["Reward"][5]["Title"] = tAnniversaryInstance_Text["Mail"]["Title"]
tRankingFunc_Info[239084]["Mail"]["Reward"][5]["Content"] = tAnniversaryInstance_Text["Mail"]["Content"]["TeamTotal"][5]
--6
tRankingFunc_Info[239084]["Mail"]["Reward"][6] = {}
tRankingFunc_Info[239084]["Mail"]["Reward"][6]["RewardRank"] = 6
tRankingFunc_Info[239084]["Mail"]["Reward"][6]["ActionId"] = 571748
tRankingFunc_Info[239084]["Mail"]["Reward"][6]["ExistDay"] = 30
tRankingFunc_Info[239084]["Mail"]["Reward"][6]["Sender"] = tAnniversaryInstance_Text["Mail"]["From"]
tRankingFunc_Info[239084]["Mail"]["Reward"][6]["Title"] = tAnniversaryInstance_Text["Mail"]["Title"]
tRankingFunc_Info[239084]["Mail"]["Reward"][6]["Content"] = tAnniversaryInstance_Text["Mail"]["Content"]["TeamTotal"][6]
--7
tRankingFunc_Info[239084]["Mail"]["Reward"][7] = {}
tRankingFunc_Info[239084]["Mail"]["Reward"][7]["RewardRank"] = 7
tRankingFunc_Info[239084]["Mail"]["Reward"][7]["ActionId"] = 571749
tRankingFunc_Info[239084]["Mail"]["Reward"][7]["ExistDay"] = 30
tRankingFunc_Info[239084]["Mail"]["Reward"][7]["Sender"] = tAnniversaryInstance_Text["Mail"]["From"]
tRankingFunc_Info[239084]["Mail"]["Reward"][7]["Title"] = tAnniversaryInstance_Text["Mail"]["Title"]
tRankingFunc_Info[239084]["Mail"]["Reward"][7]["Content"] = tAnniversaryInstance_Text["Mail"]["Content"]["TeamTotal"][7]
--8
tRankingFunc_Info[239084]["Mail"]["Reward"][8] = {}
tRankingFunc_Info[239084]["Mail"]["Reward"][8]["RewardRank"] = 8
tRankingFunc_Info[239084]["Mail"]["Reward"][8]["ActionId"] = 571749
tRankingFunc_Info[239084]["Mail"]["Reward"][8]["ExistDay"] = 30
tRankingFunc_Info[239084]["Mail"]["Reward"][8]["Sender"] = tAnniversaryInstance_Text["Mail"]["From"]
tRankingFunc_Info[239084]["Mail"]["Reward"][8]["Title"] = tAnniversaryInstance_Text["Mail"]["Title"]
tRankingFunc_Info[239084]["Mail"]["Reward"][8]["Content"] = tAnniversaryInstance_Text["Mail"]["Content"]["TeamTotal"][8]
--9
tRankingFunc_Info[239084]["Mail"]["Reward"][9] = {}
tRankingFunc_Info[239084]["Mail"]["Reward"][9]["RewardRank"] = 9
tRankingFunc_Info[239084]["Mail"]["Reward"][9]["ActionId"] = 571749
tRankingFunc_Info[239084]["Mail"]["Reward"][9]["ExistDay"] = 30
tRankingFunc_Info[239084]["Mail"]["Reward"][9]["Sender"] = tAnniversaryInstance_Text["Mail"]["From"]
tRankingFunc_Info[239084]["Mail"]["Reward"][9]["Title"] = tAnniversaryInstance_Text["Mail"]["Title"]
tRankingFunc_Info[239084]["Mail"]["Reward"][9]["Content"] = tAnniversaryInstance_Text["Mail"]["Content"]["TeamTotal"][9]
--10
tRankingFunc_Info[239084]["Mail"]["Reward"][10] = {}
tRankingFunc_Info[239084]["Mail"]["Reward"][10]["RewardRank"] = 10
tRankingFunc_Info[239084]["Mail"]["Reward"][10]["ActionId"] = 571749
tRankingFunc_Info[239084]["Mail"]["Reward"][10]["ExistDay"] = 30
tRankingFunc_Info[239084]["Mail"]["Reward"][10]["Sender"] = tAnniversaryInstance_Text["Mail"]["From"]
tRankingFunc_Info[239084]["Mail"]["Reward"][10]["Title"] = tAnniversaryInstance_Text["Mail"]["Title"]
tRankingFunc_Info[239084]["Mail"]["Reward"][10]["Content"] = tAnniversaryInstance_Text["Mail"]["Content"]["TeamTotal"][10]




local tAnniversaryInstance_Data = {}
	tAnniversaryInstance_Data["Require"] = {}--需求等级与转世
	tAnniversaryInstance_Data["Require"]["Level"] = 80
	tAnniversaryInstance_Data["Require"]["Mete"] = 0
	tAnniversaryInstance_Data["InstanceType"] = 254
	tAnniversaryInstance_Data["TimeLimit"] = 6--副本保持时间
	tAnniversaryInstance_Data["SendOut"] = 100--强制送出时间 显示计时+提示玩家积分
	tAnniversaryInstance_Data["MapDoc"] = 2068--副本地图资源 用来判断玩家是否在副本
	tAnniversaryInstance_Data["NPCID"] = 23908--主NPC
	tAnniversaryInstance_Data["Boss"] = {}--BOSS数据
	tAnniversaryInstance_Data["Boss"]["GenId"] = 27011
	tAnniversaryInstance_Data["Boss"]["MonsterId"] = 3554
	tAnniversaryInstance_Data["Monster"] = {}--怪物数据
	tAnniversaryInstance_Data["Monster"][1] = {}--灿金宝箱怪
	tAnniversaryInstance_Data["Monster"][1]["GenId"] = 27012
	tAnniversaryInstance_Data["Monster"][1]["MonsterId"] = 3555
	tAnniversaryInstance_Data["Monster"][1]["Num"] = 3
	tAnniversaryInstance_Data["Monster"][2] = {}--碧霄宝箱怪
	tAnniversaryInstance_Data["Monster"][2]["GenId"] = 27013
	tAnniversaryInstance_Data["Monster"][2]["MonsterId"] = 3556
	tAnniversaryInstance_Data["Monster"][2]["Num"] = 9
	tAnniversaryInstance_Data["Monster"][3] = {}--红玉宝箱怪
	tAnniversaryInstance_Data["Monster"][3]["GenId"] = 27014
	tAnniversaryInstance_Data["Monster"][3]["MonsterId"] = 3557
	tAnniversaryInstance_Data["Monster"][3]["Num"] = 13
	tAnniversaryInstance_Data["JoinType"] = {}
	tAnniversaryInstance_Data["JoinType"]["Team"] = 2
	tAnniversaryInstance_Data["JoinType"]["Single"] = 1
	tAnniversaryInstance_Data["Lucky"] = 3558
	tAnniversaryInstance_Data["SingleScoreBag"] = 100
	tAnniversaryInstance_Data["TeamScoreBag"] = 150
	tAnniversaryInstance_Data["Rank"] = {}--排行榜索引
	tAnniversaryInstance_Data["Rank"]["SingleDay"] =   239081
	tAnniversaryInstance_Data["Rank"]["SingleTotal"] = 239082
	tAnniversaryInstance_Data["Rank"]["TeamDay"] =     239083
	tAnniversaryInstance_Data["Rank"]["TeamTotal"] =   239084
	tAnniversaryInstance_Data["Distance"] = 20 --组队可参与的距离
	tAnniversaryInstance_Data["EnterTime"] = "00:00 23:55"--可进入的日时间

local tAnniversaryInstance_Log = {}
	tAnniversaryInstance_Log[3312167] = "0,0,3312167,1,12001344,0,0,0"


local tAnniversaryInstance_Postion = {}--各种坐标
	tAnniversaryInstance_Postion["Return"] = {}--返回双龙城的坐标
	tAnniversaryInstance_Postion["Return"]["MapId"] = 1002
	tAnniversaryInstance_Postion["Return"]["PosX"] = 321
	tAnniversaryInstance_Postion["Return"]["PosY"] = 442
	tAnniversaryInstance_Postion["ReturnNoGift"] = {}
	tAnniversaryInstance_Postion["ReturnNoGift"]["MapId"] = 1036
	tAnniversaryInstance_Postion["ReturnNoGift"]["PosX"] = 240
	tAnniversaryInstance_Postion["ReturnNoGift"]["PosY"] = 236
	tAnniversaryInstance_Postion["Boss"] = {}--刷新BOSS的位置
	tAnniversaryInstance_Postion["Boss"][1] = {}
	tAnniversaryInstance_Postion["Boss"][1]["PosX"] = 49
	tAnniversaryInstance_Postion["Boss"][1]["PosY"] = 47
	tAnniversaryInstance_Postion["Boss"][2] = {}
	tAnniversaryInstance_Postion["Boss"][2]["PosX"] = 45
	tAnniversaryInstance_Postion["Boss"][2]["PosY"] = 45
	tAnniversaryInstance_Postion["Boss"][3] = {}
	tAnniversaryInstance_Postion["Boss"][3]["PosX"] = 49
	tAnniversaryInstance_Postion["Boss"][3]["PosY"] = 52
	tAnniversaryInstance_Postion["Monster"] = {}--刷新小怪的位置
	tAnniversaryInstance_Postion["Monster"]["PosX"] = 30
	tAnniversaryInstance_Postion["Monster"]["PosY"] = 30
	tAnniversaryInstance_Postion["Monster"]["Range"] = 30
	tAnniversaryInstance_Postion["Enter"] = {}--可以参加的坐标范围
	tAnniversaryInstance_Postion["Enter"]["MaxPosX"] = 334
	tAnniversaryInstance_Postion["Enter"]["MinPosX"] = 309
	tAnniversaryInstance_Postion["Enter"]["MaxPosY"] = 452
	tAnniversaryInstance_Postion["Enter"]["MinPosY"] = 435
	tAnniversaryInstance_Postion["NoGiftEnter"] = {}--激情服可以参加的坐标范围
	tAnniversaryInstance_Postion["NoGiftEnter"]["MaxPosX"] = 255
	tAnniversaryInstance_Postion["NoGiftEnter"]["MinPosX"] = 242
	tAnniversaryInstance_Postion["NoGiftEnter"]["MaxPosY"] = 241
	tAnniversaryInstance_Postion["NoGiftEnter"]["MinPosY"] = 229

local tAnniversaryInstance_Stc = {}
	tAnniversaryInstance_Stc["SingleJoin"] = {}
	tAnniversaryInstance_Stc["SingleJoin"]["Event"] = 192
	tAnniversaryInstance_Stc["SingleJoin"]["Data"] = 69
	tAnniversaryInstance_Stc["SingleJoin"]["DayClean"] = 1
	tAnniversaryInstance_Stc["SingleDayScore"] = {}
	tAnniversaryInstance_Stc["SingleDayScore"]["Event"] = 192
	tAnniversaryInstance_Stc["SingleDayScore"]["Data"] = 70
	tAnniversaryInstance_Stc["SingleDayScore"]["DayClean"] = 1
	tAnniversaryInstance_Stc["SingleTotalScore"] = {}
	tAnniversaryInstance_Stc["SingleTotalScore"]["Event"] = 192
	tAnniversaryInstance_Stc["SingleTotalScore"]["Data"] = 71
	tAnniversaryInstance_Stc["TeamJoin"] = {}
	tAnniversaryInstance_Stc["TeamJoin"]["Event"] = 192
	tAnniversaryInstance_Stc["TeamJoin"]["Data"] = 72
	tAnniversaryInstance_Stc["TeamJoin"]["DayClean"] = 1
	tAnniversaryInstance_Stc["TeamDayScore"] = {}
	tAnniversaryInstance_Stc["TeamDayScore"]["Event"] = 192
	tAnniversaryInstance_Stc["TeamDayScore"]["Data"] = 73
	tAnniversaryInstance_Stc["TeamDayScore"]["DayClean"] = 1
	tAnniversaryInstance_Stc["TeamTotalScore"] = {}
	tAnniversaryInstance_Stc["TeamTotalScore"]["Event"] = 192
	tAnniversaryInstance_Stc["TeamTotalScore"]["Data"] = 74
	tAnniversaryInstance_Stc["JoinType"] = {}
	tAnniversaryInstance_Stc["JoinType"]["Event"] = 192
	tAnniversaryInstance_Stc["JoinType"]["Data"] = 77
	tAnniversaryInstance_Stc["ScoreReward"] = {}
	tAnniversaryInstance_Stc["ScoreReward"]["Event"] = 192
	tAnniversaryInstance_Stc["ScoreReward"]["Data"] = 79
	tAnniversaryInstance_Stc["ScoreReward"]["DayClean"] = 1
	tAnniversaryInstance_Stc["TeamScoreReward"] = {}
	tAnniversaryInstance_Stc["TeamScoreReward"]["Event"] = 193
	tAnniversaryInstance_Stc["TeamScoreReward"]["Data"] = 99
	tAnniversaryInstance_Stc["TeamScoreReward"]["DayClean"] = 1
	tAnniversaryInstance_Stc["LuckyRefresh"] = {}
	tAnniversaryInstance_Stc["LuckyRefresh"]["Event"] = 193
	tAnniversaryInstance_Stc["LuckyRefresh"]["Data"] = 58

local tAnniversaryInstance_RankData = {}--排行榜数据配置 1 单人  2 组队
	tAnniversaryInstance_RankData["ScoreRate"] = {}
	tAnniversaryInstance_RankData["ScoreRate"][1] = 1
	tAnniversaryInstance_RankData["ScoreRate"][2] = 1.2
	tAnniversaryInstance_RankData["Stc"] = {}
	tAnniversaryInstance_RankData["Stc"][1] = {}
	tAnniversaryInstance_RankData["Stc"][1]["Day"] = {}
	tAnniversaryInstance_RankData["Stc"][1]["Day"]["Event"] = 192
	tAnniversaryInstance_RankData["Stc"][1]["Day"]["Data"] = 70
	tAnniversaryInstance_RankData["Stc"][1]["Total"] = {}
	tAnniversaryInstance_RankData["Stc"][1]["Total"]["Event"] = 192
	tAnniversaryInstance_RankData["Stc"][1]["Total"]["Data"] = 71
	tAnniversaryInstance_RankData["Stc"][2] = {}
	tAnniversaryInstance_RankData["Stc"][2]["Day"] = {}
	tAnniversaryInstance_RankData["Stc"][2]["Day"]["Event"] = 192
	tAnniversaryInstance_RankData["Stc"][2]["Day"]["Data"] = 73
	tAnniversaryInstance_RankData["Stc"][2]["Total"] = {}
	tAnniversaryInstance_RankData["Stc"][2]["Total"]["Event"] = 192
	tAnniversaryInstance_RankData["Stc"][2]["Total"]["Data"] = 74
	tAnniversaryInstance_RankData["Index"] = {}
	tAnniversaryInstance_RankData["Index"][1] = {}
	tAnniversaryInstance_RankData["Index"][1]["Day"] = 239081
	tAnniversaryInstance_RankData["Index"][1]["Total"] = 239082
	tAnniversaryInstance_RankData["Index"][2] = {}
	tAnniversaryInstance_RankData["Index"][2]["Day"] = 239083
	tAnniversaryInstance_RankData["Index"][2]["Total"] = 239084


local tAnniversaryInstance_KillMonster = {}--怪物死亡后的奖励数据
	tAnniversaryInstance_KillMonster[3554] = {}--BOSS
	tAnniversaryInstance_KillMonster[3554]["Score"] = 300
	tAnniversaryInstance_KillMonster[3554]["Born"] = {}
	tAnniversaryInstance_KillMonster[3554]["Born"]["Id"] = 3555
	tAnniversaryInstance_KillMonster[3554]["Born"]["Num"] = 5
	tAnniversaryInstance_KillMonster[3554]["Born"]["Gen"] = 27012
	tAnniversaryInstance_KillMonster[3554]["BornSpecial"] = {}
	tAnniversaryInstance_KillMonster[3554]["BornSpecial"]["Id"] = 3555
	tAnniversaryInstance_KillMonster[3554]["BornSpecial"]["Num"] = 5
	tAnniversaryInstance_KillMonster[3554]["BornSpecial"]["Gen"] = 27012
	tAnniversaryInstance_KillMonster[3554]["BornSpecial"]["Prob"] = 1000
	tAnniversaryInstance_KillMonster[3554]["Effect"] = "task061"
	tAnniversaryInstance_KillMonster[3554]["Boss"] = 1
	tAnniversaryInstance_KillMonster[3555] = {}--灿金宝箱
	tAnniversaryInstance_KillMonster[3555]["Score"] = 20
	tAnniversaryInstance_KillMonster[3555]["Born"] = {}
	tAnniversaryInstance_KillMonster[3555]["Born"]["Id"] = 3556
	tAnniversaryInstance_KillMonster[3555]["Born"]["Num"] = 1
	tAnniversaryInstance_KillMonster[3555]["Born"]["Gen"] = 27013
	tAnniversaryInstance_KillMonster[3555]["BornSpecial"] = {}
	tAnniversaryInstance_KillMonster[3555]["BornSpecial"]["Id"] = 3558
	tAnniversaryInstance_KillMonster[3555]["BornSpecial"]["Num"] = 1
	tAnniversaryInstance_KillMonster[3555]["BornSpecial"]["Gen"] = 27015
	tAnniversaryInstance_KillMonster[3555]["BornSpecial"]["Prob"] = 1000
	tAnniversaryInstance_KillMonster[3555]["Chi"] = 1
	tAnniversaryInstance_KillMonster[3555]["Effect"] = "task059"
	tAnniversaryInstance_KillMonster[3556] = {}--碧霄宝箱怪
	tAnniversaryInstance_KillMonster[3556]["Score"] = 10
	tAnniversaryInstance_KillMonster[3556]["Born"] = {}
	tAnniversaryInstance_KillMonster[3556]["Born"]["Id"] = 3557
	tAnniversaryInstance_KillMonster[3556]["Born"]["Num"] = 1
	tAnniversaryInstance_KillMonster[3556]["Born"]["Gen"] = 27014
	tAnniversaryInstance_KillMonster[3556]["BornSpecial"] = {}
	tAnniversaryInstance_KillMonster[3556]["BornSpecial"]["Id"] = 3558
	tAnniversaryInstance_KillMonster[3556]["BornSpecial"]["Num"] = 1
	tAnniversaryInstance_KillMonster[3556]["BornSpecial"]["Gen"] = 27015
	tAnniversaryInstance_KillMonster[3556]["BornSpecial"]["Prob"] = 500
	tAnniversaryInstance_KillMonster[3556]["Chi"] = 1
	tAnniversaryInstance_KillMonster[3556]["Effect"] = "task058"
	tAnniversaryInstance_KillMonster[3557] = {}--红玉宝箱
	tAnniversaryInstance_KillMonster[3557]["Score"] = 5
	tAnniversaryInstance_KillMonster[3557]["Born"] = {}
	tAnniversaryInstance_KillMonster[3557]["Born"]["Id"] = 3555
	tAnniversaryInstance_KillMonster[3557]["Born"]["Num"] = 1
	tAnniversaryInstance_KillMonster[3557]["Born"]["Gen"] = 27012
	tAnniversaryInstance_KillMonster[3557]["BornSpecial"] = {}
	tAnniversaryInstance_KillMonster[3557]["BornSpecial"]["Id"] = 3558
	tAnniversaryInstance_KillMonster[3557]["BornSpecial"]["Num"] = 1
	tAnniversaryInstance_KillMonster[3557]["BornSpecial"]["Gen"] = 27015
	tAnniversaryInstance_KillMonster[3557]["BornSpecial"]["Prob"] = 300
	tAnniversaryInstance_KillMonster[3557]["Chi"] = 1
	tAnniversaryInstance_KillMonster[3557]["Effect"] = "task057"
	tAnniversaryInstance_KillMonster[3558] = {}--幸运宝箱
	tAnniversaryInstance_KillMonster[3558]["Score"] = 50
	tAnniversaryInstance_KillMonster[3558]["Born"] = {}
	tAnniversaryInstance_KillMonster[3558]["Born"]["Id"] = 3557
	tAnniversaryInstance_KillMonster[3558]["Born"]["Num"] = 1
	tAnniversaryInstance_KillMonster[3558]["Born"]["Gen"] = 27014
	tAnniversaryInstance_KillMonster[3558]["BornSpecial"] = {}
	tAnniversaryInstance_KillMonster[3558]["BornSpecial"]["Id"] = 3557
	tAnniversaryInstance_KillMonster[3558]["BornSpecial"]["Num"] = 1
	tAnniversaryInstance_KillMonster[3558]["BornSpecial"]["Gen"] = 27014
	tAnniversaryInstance_KillMonster[3558]["BornSpecial"]["Prob"] = 300
	tAnniversaryInstance_KillMonster[3558]["Effect"] = "task060"

local tAnniversaryInstance_Reward = {}
--普通宝箱气力值
	tAnniversaryInstance_Reward["Chi"] = {}
	tAnniversaryInstance_Reward["Chi"][1] = {}
	tAnniversaryInstance_Reward["Chi"][1]["ItemChanceSum"] = 10000
	tAnniversaryInstance_Reward["Chi"][1]["LogId"] = 12001344
	tAnniversaryInstance_Reward["Chi"][1]["LogStep"] = " 1[1]"
	-- 10点气力值 - 25.00%
	tAnniversaryInstance_Reward["Chi"][1][1] = {}
	tAnniversaryInstance_Reward["Chi"][1][1]["RandomItemChanceType"] = 2
	tAnniversaryInstance_Reward["Chi"][1][1]["ItemChance"] = 2500
	tAnniversaryInstance_Reward["Chi"][1][1]["RewardStrengthValue"] = {}
	tAnniversaryInstance_Reward["Chi"][1][1]["RewardStrengthValue"]["Value"] = 10 -- 气力值
	tAnniversaryInstance_Reward["Chi"][1][1]["RewardEffect"] = {}
	tAnniversaryInstance_Reward["Chi"][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAnniversaryInstance_Reward["Chi"][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 30点气力值 - 30.00%
	tAnniversaryInstance_Reward["Chi"][1][2] = {}
	tAnniversaryInstance_Reward["Chi"][1][2]["RandomItemChanceType"] = 2
	tAnniversaryInstance_Reward["Chi"][1][2]["ItemChance"] = 3000
	tAnniversaryInstance_Reward["Chi"][1][2]["RewardStrengthValue"] = {}
	tAnniversaryInstance_Reward["Chi"][1][2]["RewardStrengthValue"]["Value"] = 30 -- 气力值
	tAnniversaryInstance_Reward["Chi"][1][2]["RewardEffect"] = {}
	tAnniversaryInstance_Reward["Chi"][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAnniversaryInstance_Reward["Chi"][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 50点气力值 - 35.00%
	tAnniversaryInstance_Reward["Chi"][1][3] = {}
	tAnniversaryInstance_Reward["Chi"][1][3]["RandomItemChanceType"] = 2
	tAnniversaryInstance_Reward["Chi"][1][3]["ItemChance"] = 3500
	tAnniversaryInstance_Reward["Chi"][1][3]["RewardStrengthValue"] = {}
	tAnniversaryInstance_Reward["Chi"][1][3]["RewardStrengthValue"]["Value"] = 50 -- 气力值
	tAnniversaryInstance_Reward["Chi"][1][3]["RewardEffect"] = {}
	tAnniversaryInstance_Reward["Chi"][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAnniversaryInstance_Reward["Chi"][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 100点气力值 - 8.00%
	tAnniversaryInstance_Reward["Chi"][1][4] = {}
	tAnniversaryInstance_Reward["Chi"][1][4]["RandomItemChanceType"] = 2
	tAnniversaryInstance_Reward["Chi"][1][4]["ItemChance"] = 800
	tAnniversaryInstance_Reward["Chi"][1][4]["RewardStrengthValue"] = {}
	tAnniversaryInstance_Reward["Chi"][1][4]["RewardStrengthValue"]["Value"] = 100 -- 气力值
	tAnniversaryInstance_Reward["Chi"][1][4]["RewardEffect"] = {}
	tAnniversaryInstance_Reward["Chi"][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAnniversaryInstance_Reward["Chi"][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 500点气力值 - 2.00%
	tAnniversaryInstance_Reward["Chi"][1][5] = {}
	tAnniversaryInstance_Reward["Chi"][1][5]["RandomItemChanceType"] = 2
	tAnniversaryInstance_Reward["Chi"][1][5]["ItemChance"] = 200
	tAnniversaryInstance_Reward["Chi"][1][5]["RewardStrengthValue"] = {}
	tAnniversaryInstance_Reward["Chi"][1][5]["RewardStrengthValue"]["Value"] = 500 -- 气力值
	tAnniversaryInstance_Reward["Chi"][1][5]["RewardEffect"] = {}
	tAnniversaryInstance_Reward["Chi"][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAnniversaryInstance_Reward["Chi"][1][5]["RewardEffect"]["Effect"] = "angelwing"

	tAnniversaryInstance_Reward["BOSS"] = {}
	-- ===boss宝箱奖励
	-- ===LogStep: 1[1]
	tAnniversaryInstance_Reward["BOSS"][1] = {}
	tAnniversaryInstance_Reward["BOSS"][1]["ItemChanceSum"] = 10000
	tAnniversaryInstance_Reward["BOSS"][1]["LogId"] = 12001344
	tAnniversaryInstance_Reward["BOSS"][1]["LogStep"] = " 1[1]"
	-- 气力值 - 18.00%
	tAnniversaryInstance_Reward["BOSS"][1][1] = {}
	tAnniversaryInstance_Reward["BOSS"][1][1]["RandomItemChanceType"] = 2
	tAnniversaryInstance_Reward["BOSS"][1][1]["ItemChance"] = 1800
	tAnniversaryInstance_Reward["BOSS"][1][1]["RewardStrengthValue"] = {}
	tAnniversaryInstance_Reward["BOSS"][1][1]["RewardStrengthValue"]["Value"] = 1000 -- 气力值
	tAnniversaryInstance_Reward["BOSS"][1][1]["RewardEffect"] = {}
	tAnniversaryInstance_Reward["BOSS"][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAnniversaryInstance_Reward["BOSS"][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 气力值 - 7.00%
	tAnniversaryInstance_Reward["BOSS"][1][2] = {}
	tAnniversaryInstance_Reward["BOSS"][1][2]["RandomItemChanceType"] = 2
	tAnniversaryInstance_Reward["BOSS"][1][2]["ItemChance"] = 700
	tAnniversaryInstance_Reward["BOSS"][1][2]["RewardStrengthValue"] = {}
	tAnniversaryInstance_Reward["BOSS"][1][2]["RewardStrengthValue"]["Value"] = 2000 -- 气力值
	tAnniversaryInstance_Reward["BOSS"][1][2]["RewardEffect"] = {}
	tAnniversaryInstance_Reward["BOSS"][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAnniversaryInstance_Reward["BOSS"][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 明亮星陨石 - 18.00%
	tAnniversaryInstance_Reward["BOSS"][1][3] = {}
	tAnniversaryInstance_Reward["BOSS"][1][3]["RandomItemChanceType"] = 2
	tAnniversaryInstance_Reward["BOSS"][1][3]["ItemChance"] = 1800
	tAnniversaryInstance_Reward["BOSS"][1][3]["RewardItem"] = {}
	tAnniversaryInstance_Reward["BOSS"][1][3]["RewardItem"][1] = {}
	tAnniversaryInstance_Reward["BOSS"][1][3]["RewardItem"][1]["Id"] = 3009001 -- 【库】明亮星陨石[属性:9]【表格】明亮星陨石
	tAnniversaryInstance_Reward["BOSS"][1][3]["RewardItem"][1]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的明亮星陨石*3
	tAnniversaryInstance_Reward["BOSS"][1][3]["RewardEffect"] = {}
	tAnniversaryInstance_Reward["BOSS"][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAnniversaryInstance_Reward["BOSS"][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 明亮星陨石 - 7.00%
	tAnniversaryInstance_Reward["BOSS"][1][4] = {}
	tAnniversaryInstance_Reward["BOSS"][1][4]["RandomItemChanceType"] = 2
	tAnniversaryInstance_Reward["BOSS"][1][4]["ItemChance"] = 700
	tAnniversaryInstance_Reward["BOSS"][1][4]["RewardItem"] = {}
	tAnniversaryInstance_Reward["BOSS"][1][4]["RewardItem"][1] = {}
	tAnniversaryInstance_Reward["BOSS"][1][4]["RewardItem"][1]["Id"] = 3009001 -- 【库】明亮星陨石[属性:9]【表格】明亮星陨石
	tAnniversaryInstance_Reward["BOSS"][1][4]["RewardItem"][1]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的明亮星陨石*5
	tAnniversaryInstance_Reward["BOSS"][1][4]["RewardEffect"] = {}
	tAnniversaryInstance_Reward["BOSS"][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAnniversaryInstance_Reward["BOSS"][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 神纹精粹 - 18.00%
	tAnniversaryInstance_Reward["BOSS"][1][5] = {}
	tAnniversaryInstance_Reward["BOSS"][1][5]["RandomItemChanceType"] = 2
	tAnniversaryInstance_Reward["BOSS"][1][5]["ItemChance"] = 1800
	tAnniversaryInstance_Reward["BOSS"][1][5]["RewardItem"] = {}
	tAnniversaryInstance_Reward["BOSS"][1][5]["RewardItem"][1] = {}
	tAnniversaryInstance_Reward["BOSS"][1][5]["RewardItem"][1]["Id"] = 4060001 -- 【库】万能神纹精粹[属性:9]【表格】神纹精粹
	tAnniversaryInstance_Reward["BOSS"][1][5]["RewardItem"][1]["Attr"] = "0 10 3" -- 万能神纹精粹(赠)*10
	tAnniversaryInstance_Reward["BOSS"][1][5]["RewardEffect"] = {}
	tAnniversaryInstance_Reward["BOSS"][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAnniversaryInstance_Reward["BOSS"][1][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 神纹精粹 - 7.00%
	tAnniversaryInstance_Reward["BOSS"][1][6] = {}
	tAnniversaryInstance_Reward["BOSS"][1][6]["RandomItemChanceType"] = 2
	tAnniversaryInstance_Reward["BOSS"][1][6]["ItemChance"] = 700
	tAnniversaryInstance_Reward["BOSS"][1][6]["RewardItem"] = {}
	tAnniversaryInstance_Reward["BOSS"][1][6]["RewardItem"][1] = {}
	tAnniversaryInstance_Reward["BOSS"][1][6]["RewardItem"][1]["Id"] = 4060001 -- 【库】万能神纹精粹[属性:9]【表格】神纹精粹
	tAnniversaryInstance_Reward["BOSS"][1][6]["RewardItem"][1]["Attr"] = "0 20 3" -- 万能神纹精粹(赠)*20
	tAnniversaryInstance_Reward["BOSS"][1][6]["RewardEffect"] = {}
	tAnniversaryInstance_Reward["BOSS"][1][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAnniversaryInstance_Reward["BOSS"][1][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 人参果 - 18.00%
	tAnniversaryInstance_Reward["BOSS"][1][7] = {}
	tAnniversaryInstance_Reward["BOSS"][1][7]["RandomItemChanceType"] = 2
	tAnniversaryInstance_Reward["BOSS"][1][7]["ItemChance"] = 1800
	tAnniversaryInstance_Reward["BOSS"][1][7]["RewardItem"] = {}
	tAnniversaryInstance_Reward["BOSS"][1][7]["RewardItem"][1] = {}
	tAnniversaryInstance_Reward["BOSS"][1][7]["RewardItem"][1]["Id"] = 3009100 -- 【库】人参果[属性:9]【表格】人参果
	tAnniversaryInstance_Reward["BOSS"][1][7]["RewardItem"][1]["Attr"] = "0 10" -- 人参果*10
	tAnniversaryInstance_Reward["BOSS"][1][7]["RewardEffect"] = {}
	tAnniversaryInstance_Reward["BOSS"][1][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAnniversaryInstance_Reward["BOSS"][1][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 人参果 - 7.00%
	tAnniversaryInstance_Reward["BOSS"][1][8] = {}
	tAnniversaryInstance_Reward["BOSS"][1][8]["RandomItemChanceType"] = 2
	tAnniversaryInstance_Reward["BOSS"][1][8]["ItemChance"] = 700
	tAnniversaryInstance_Reward["BOSS"][1][8]["RewardItem"] = {}
	tAnniversaryInstance_Reward["BOSS"][1][8]["RewardItem"][1] = {}
	tAnniversaryInstance_Reward["BOSS"][1][8]["RewardItem"][1]["Id"] = 3009100 -- 【库】人参果[属性:9]【表格】人参果
	tAnniversaryInstance_Reward["BOSS"][1][8]["RewardItem"][1]["Attr"] = "0 20" -- 人参果*20
	tAnniversaryInstance_Reward["BOSS"][1][8]["RewardEffect"] = {}
	tAnniversaryInstance_Reward["BOSS"][1][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAnniversaryInstance_Reward["BOSS"][1][8]["RewardEffect"]["Effect"] = "angelwing"
	
	tAnniversaryInstance_Reward[3558] = {}
	-- ===幸运宝箱星陨石奖池
	-- ===索引: 1
	-- ===LogStep: 1[1]
	tAnniversaryInstance_Reward[3558][1] = {}
	tAnniversaryInstance_Reward[3558][1]["ItemChanceSum"] = 10000
	tAnniversaryInstance_Reward[3558][1]["LogId"] = 12001344
	tAnniversaryInstance_Reward[3558][1]["LogStep"] = " 1[1]"
	-- 微光星陨石 - 25.00%
	tAnniversaryInstance_Reward[3558][1][1] = {}
	tAnniversaryInstance_Reward[3558][1][1]["RandomItemChanceType"] = 2
	tAnniversaryInstance_Reward[3558][1][1]["ItemChance"] = 2500
	tAnniversaryInstance_Reward[3558][1][1]["RewardItem"] = {}
	tAnniversaryInstance_Reward[3558][1][1]["RewardItem"][1] = {}
	tAnniversaryInstance_Reward[3558][1][1]["RewardItem"][1]["Id"] = 3009000 -- 【库】微光星陨石[属性:9]【表格】微光星陨石
	tAnniversaryInstance_Reward[3558][1][1]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的微光星陨石*1
	tAnniversaryInstance_Reward[3558][1][1]["RewardEffect"] = {}
	tAnniversaryInstance_Reward[3558][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAnniversaryInstance_Reward[3558][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 微光星陨石 - 30.00%
	tAnniversaryInstance_Reward[3558][1][2] = {}
	tAnniversaryInstance_Reward[3558][1][2]["RandomItemChanceType"] = 2
	tAnniversaryInstance_Reward[3558][1][2]["ItemChance"] = 3000
	tAnniversaryInstance_Reward[3558][1][2]["RewardItem"] = {}
	tAnniversaryInstance_Reward[3558][1][2]["RewardItem"][1] = {}
	tAnniversaryInstance_Reward[3558][1][2]["RewardItem"][1]["Id"] = 3009000 -- 【库】微光星陨石[属性:9]【表格】微光星陨石
	tAnniversaryInstance_Reward[3558][1][2]["RewardItem"][1]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的微光星陨石*3
	tAnniversaryInstance_Reward[3558][1][2]["RewardEffect"] = {}
	tAnniversaryInstance_Reward[3558][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAnniversaryInstance_Reward[3558][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 微光星陨石 - 35.00%
	tAnniversaryInstance_Reward[3558][1][3] = {}
	tAnniversaryInstance_Reward[3558][1][3]["RandomItemChanceType"] = 2
	tAnniversaryInstance_Reward[3558][1][3]["ItemChance"] = 3500
	tAnniversaryInstance_Reward[3558][1][3]["RewardItem"] = {}
	tAnniversaryInstance_Reward[3558][1][3]["RewardItem"][1] = {}
	tAnniversaryInstance_Reward[3558][1][3]["RewardItem"][1]["Id"] = 3009000 -- 【库】微光星陨石[属性:9]【表格】微光星陨石
	tAnniversaryInstance_Reward[3558][1][3]["RewardItem"][1]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的微光星陨石*5
	tAnniversaryInstance_Reward[3558][1][3]["RewardEffect"] = {}
	tAnniversaryInstance_Reward[3558][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAnniversaryInstance_Reward[3558][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 明亮星陨石 - 8.00%
	tAnniversaryInstance_Reward[3558][1][4] = {}
	tAnniversaryInstance_Reward[3558][1][4]["RandomItemChanceType"] = 2
	tAnniversaryInstance_Reward[3558][1][4]["ItemChance"] = 800
	tAnniversaryInstance_Reward[3558][1][4]["RewardItem"] = {}
	tAnniversaryInstance_Reward[3558][1][4]["RewardItem"][1] = {}
	tAnniversaryInstance_Reward[3558][1][4]["RewardItem"][1]["Id"] = 3009001 -- 【库】明亮星陨石[属性:9]【表格】明亮星陨石
	tAnniversaryInstance_Reward[3558][1][4]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的明亮星陨石*1
	tAnniversaryInstance_Reward[3558][1][4]["RewardEffect"] = {}
	tAnniversaryInstance_Reward[3558][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAnniversaryInstance_Reward[3558][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 明亮星陨石 - 2.00%
	tAnniversaryInstance_Reward[3558][1][5] = {}
	tAnniversaryInstance_Reward[3558][1][5]["RandomItemChanceType"] = 2
	tAnniversaryInstance_Reward[3558][1][5]["ItemChance"] = 200
	tAnniversaryInstance_Reward[3558][1][5]["RewardItem"] = {}
	tAnniversaryInstance_Reward[3558][1][5]["RewardItem"][1] = {}
	tAnniversaryInstance_Reward[3558][1][5]["RewardItem"][1]["Id"] = 3009001 -- 【库】明亮星陨石[属性:9]【表格】明亮星陨石
	tAnniversaryInstance_Reward[3558][1][5]["RewardItem"][1]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的明亮星陨石*2
	tAnniversaryInstance_Reward[3558][1][5]["RewardEffect"] = {}
	tAnniversaryInstance_Reward[3558][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAnniversaryInstance_Reward[3558][1][5]["RewardEffect"]["Effect"] = "angelwing"

	-- ===幸运宝箱神纹精粹奖池
	-- ===索引: 2
	-- ===LogStep: 1[1]
	tAnniversaryInstance_Reward[3558][2] = {}
	tAnniversaryInstance_Reward[3558][2]["ItemChanceSum"] = 10000
	tAnniversaryInstance_Reward[3558][2]["LogId"] = 12001344
	tAnniversaryInstance_Reward[3558][2]["LogStep"] = " 1[1]"
	-- 神纹精粹 - 25.00%
	tAnniversaryInstance_Reward[3558][2][1] = {}
	tAnniversaryInstance_Reward[3558][2][1]["RandomItemChanceType"] = 2
	tAnniversaryInstance_Reward[3558][2][1]["ItemChance"] = 2500
	tAnniversaryInstance_Reward[3558][2][1]["RewardItem"] = {}
	tAnniversaryInstance_Reward[3558][2][1]["RewardItem"][1] = {}
	tAnniversaryInstance_Reward[3558][2][1]["RewardItem"][1]["Id"] = 4060001 -- 【库】万能神纹精粹[属性:9]【表格】神纹精粹
	tAnniversaryInstance_Reward[3558][2][1]["RewardItem"][1]["Attr"] = "0 1 3" -- 万能神纹精粹*1
	tAnniversaryInstance_Reward[3558][2][1]["RewardEffect"] = {}
	tAnniversaryInstance_Reward[3558][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAnniversaryInstance_Reward[3558][2][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 神纹精粹 - 30.00%
	tAnniversaryInstance_Reward[3558][2][2] = {}
	tAnniversaryInstance_Reward[3558][2][2]["RandomItemChanceType"] = 2
	tAnniversaryInstance_Reward[3558][2][2]["ItemChance"] = 3000
	tAnniversaryInstance_Reward[3558][2][2]["RewardItem"] = {}
	tAnniversaryInstance_Reward[3558][2][2]["RewardItem"][1] = {}
	tAnniversaryInstance_Reward[3558][2][2]["RewardItem"][1]["Id"] = 4060001 -- 【库】万能神纹精粹[属性:9]【表格】神纹精粹
	tAnniversaryInstance_Reward[3558][2][2]["RewardItem"][1]["Attr"] = "0 3 3" -- 万能神纹精粹*3
	tAnniversaryInstance_Reward[3558][2][2]["RewardEffect"] = {}
	tAnniversaryInstance_Reward[3558][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAnniversaryInstance_Reward[3558][2][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 神纹精粹 - 35.00%
	tAnniversaryInstance_Reward[3558][2][3] = {}
	tAnniversaryInstance_Reward[3558][2][3]["RandomItemChanceType"] = 2
	tAnniversaryInstance_Reward[3558][2][3]["ItemChance"] = 3500
	tAnniversaryInstance_Reward[3558][2][3]["RewardItem"] = {}
	tAnniversaryInstance_Reward[3558][2][3]["RewardItem"][1] = {}
	tAnniversaryInstance_Reward[3558][2][3]["RewardItem"][1]["Id"] = 4060001 -- 【库】万能神纹精粹[属性:9]【表格】神纹精粹
	tAnniversaryInstance_Reward[3558][2][3]["RewardItem"][1]["Attr"] = "0 5 3" -- 万能神纹精粹*5
	tAnniversaryInstance_Reward[3558][2][3]["RewardEffect"] = {}
	tAnniversaryInstance_Reward[3558][2][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAnniversaryInstance_Reward[3558][2][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 神纹精粹 - 8.00%
	tAnniversaryInstance_Reward[3558][2][4] = {}
	tAnniversaryInstance_Reward[3558][2][4]["RandomItemChanceType"] = 2
	tAnniversaryInstance_Reward[3558][2][4]["ItemChance"] = 800
	tAnniversaryInstance_Reward[3558][2][4]["RewardItem"] = {}
	tAnniversaryInstance_Reward[3558][2][4]["RewardItem"][1] = {}
	tAnniversaryInstance_Reward[3558][2][4]["RewardItem"][1]["Id"] = 4060001 -- 【库】万能神纹精粹[属性:9]【表格】神纹精粹
	tAnniversaryInstance_Reward[3558][2][4]["RewardItem"][1]["Attr"] = "0 7 3" -- 万能神纹精粹*7
	tAnniversaryInstance_Reward[3558][2][4]["RewardEffect"] = {}
	tAnniversaryInstance_Reward[3558][2][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAnniversaryInstance_Reward[3558][2][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 神纹精粹 - 2.00%
	tAnniversaryInstance_Reward[3558][2][5] = {}
	tAnniversaryInstance_Reward[3558][2][5]["RandomItemChanceType"] = 2
	tAnniversaryInstance_Reward[3558][2][5]["ItemChance"] = 200
	tAnniversaryInstance_Reward[3558][2][5]["RewardItem"] = {}
	tAnniversaryInstance_Reward[3558][2][5]["RewardItem"][1] = {}
	tAnniversaryInstance_Reward[3558][2][5]["RewardItem"][1]["Id"] = 4060001 -- 【库】万能神纹精粹[属性:9]【表格】神纹精粹
	tAnniversaryInstance_Reward[3558][2][5]["RewardItem"][1]["Attr"] = "0 10 3" -- 万能神纹精粹*10
	tAnniversaryInstance_Reward[3558][2][5]["RewardEffect"] = {}
	tAnniversaryInstance_Reward[3558][2][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAnniversaryInstance_Reward[3558][2][5]["RewardEffect"]["Effect"] = "angelwing"

	-- ===幸运宝箱人参果奖池
	-- ===索引: 3
	-- ===LogStep: 1[1]
	tAnniversaryInstance_Reward[3558][3] = {}
	tAnniversaryInstance_Reward[3558][3]["ItemChanceSum"] = 10000
	tAnniversaryInstance_Reward[3558][3]["LogId"] = 12001344
	tAnniversaryInstance_Reward[3558][3]["LogStep"] = " 1[1]"
	-- 人参果 - 25.00%
	tAnniversaryInstance_Reward[3558][3][1] = {}
	tAnniversaryInstance_Reward[3558][3][1]["RandomItemChanceType"] = 2
	tAnniversaryInstance_Reward[3558][3][1]["ItemChance"] = 2500
	tAnniversaryInstance_Reward[3558][3][1]["RewardItem"] = {}
	tAnniversaryInstance_Reward[3558][3][1]["RewardItem"][1] = {}
	tAnniversaryInstance_Reward[3558][3][1]["RewardItem"][1]["Id"] = 3009100 -- 【库】人参果[属性:9]【表格】人参果
	tAnniversaryInstance_Reward[3558][3][1]["RewardItem"][1]["Attr"] = "0 1" -- 人参果*1
	tAnniversaryInstance_Reward[3558][3][1]["RewardEffect"] = {}
	tAnniversaryInstance_Reward[3558][3][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAnniversaryInstance_Reward[3558][3][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 人参果 - 30.00%
	tAnniversaryInstance_Reward[3558][3][2] = {}
	tAnniversaryInstance_Reward[3558][3][2]["RandomItemChanceType"] = 2
	tAnniversaryInstance_Reward[3558][3][2]["ItemChance"] = 3000
	tAnniversaryInstance_Reward[3558][3][2]["RewardItem"] = {}
	tAnniversaryInstance_Reward[3558][3][2]["RewardItem"][1] = {}
	tAnniversaryInstance_Reward[3558][3][2]["RewardItem"][1]["Id"] = 3009100 -- 【库】人参果[属性:9]【表格】人参果
	tAnniversaryInstance_Reward[3558][3][2]["RewardItem"][1]["Attr"] = "0 3" -- 人参果*3
	tAnniversaryInstance_Reward[3558][3][2]["RewardEffect"] = {}
	tAnniversaryInstance_Reward[3558][3][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAnniversaryInstance_Reward[3558][3][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 人参果 - 35.00%
	tAnniversaryInstance_Reward[3558][3][3] = {}
	tAnniversaryInstance_Reward[3558][3][3]["RandomItemChanceType"] = 2
	tAnniversaryInstance_Reward[3558][3][3]["ItemChance"] = 3500
	tAnniversaryInstance_Reward[3558][3][3]["RewardItem"] = {}
	tAnniversaryInstance_Reward[3558][3][3]["RewardItem"][1] = {}
	tAnniversaryInstance_Reward[3558][3][3]["RewardItem"][1]["Id"] = 3009100 -- 【库】人参果[属性:9]【表格】人参果
	tAnniversaryInstance_Reward[3558][3][3]["RewardItem"][1]["Attr"] = "0 5" -- 人参果*5
	tAnniversaryInstance_Reward[3558][3][3]["RewardEffect"] = {}
	tAnniversaryInstance_Reward[3558][3][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAnniversaryInstance_Reward[3558][3][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 人参果 - 8.00%
	tAnniversaryInstance_Reward[3558][3][4] = {}
	tAnniversaryInstance_Reward[3558][3][4]["RandomItemChanceType"] = 2
	tAnniversaryInstance_Reward[3558][3][4]["ItemChance"] = 800
	tAnniversaryInstance_Reward[3558][3][4]["RewardItem"] = {}
	tAnniversaryInstance_Reward[3558][3][4]["RewardItem"][1] = {}
	tAnniversaryInstance_Reward[3558][3][4]["RewardItem"][1]["Id"] = 3009100 -- 【库】人参果[属性:9]【表格】人参果
	tAnniversaryInstance_Reward[3558][3][4]["RewardItem"][1]["Attr"] = "0 7" -- 人参果*7
	tAnniversaryInstance_Reward[3558][3][4]["RewardEffect"] = {}
	tAnniversaryInstance_Reward[3558][3][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAnniversaryInstance_Reward[3558][3][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 人参果 - 2.00%
	tAnniversaryInstance_Reward[3558][3][5] = {}
	tAnniversaryInstance_Reward[3558][3][5]["RandomItemChanceType"] = 2
	tAnniversaryInstance_Reward[3558][3][5]["ItemChance"] = 200
	tAnniversaryInstance_Reward[3558][3][5]["RewardItem"] = {}
	tAnniversaryInstance_Reward[3558][3][5]["RewardItem"][1] = {}
	tAnniversaryInstance_Reward[3558][3][5]["RewardItem"][1]["Id"] = 3009100 -- 【库】人参果[属性:9]【表格】人参果
	tAnniversaryInstance_Reward[3558][3][5]["RewardItem"][1]["Attr"] = "0 10" -- 人参果*10
	tAnniversaryInstance_Reward[3558][3][5]["RewardEffect"] = {}
	tAnniversaryInstance_Reward[3558][3][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAnniversaryInstance_Reward[3558][3][5]["RewardEffect"]["Effect"] = "angelwing"

	tAnniversaryInstance_Reward[3312167] = {}
	-- ===周年庆礼包奖励
	-- ===LogStep: 1[1]
	tAnniversaryInstance_Reward[3312167][1] = {}
	tAnniversaryInstance_Reward[3312167][1]["ItemChanceSum"] = 10000
	tAnniversaryInstance_Reward[3312167][1]["LogId"] = 12001344
	tAnniversaryInstance_Reward[3312167][1]["LogStep"] = " 1[1]"
	-- 人参果 - 15.00%
	tAnniversaryInstance_Reward[3312167][1][1] = {}
	tAnniversaryInstance_Reward[3312167][1][1]["RandomItemChanceType"] = 2
	tAnniversaryInstance_Reward[3312167][1][1]["ItemChance"] = 1500
	tAnniversaryInstance_Reward[3312167][1][1]["RewardItem"] = {}
	tAnniversaryInstance_Reward[3312167][1][1]["RewardItem"][1] = {}
	tAnniversaryInstance_Reward[3312167][1][1]["RewardItem"][1]["Id"] = 3009100 -- 【库】人参果[属性:9]【表格】人参果
	tAnniversaryInstance_Reward[3312167][1][1]["RewardItem"][1]["Attr"] = "0 1" -- 人参果*1
	tAnniversaryInstance_Reward[3312167][1][1]["RewardEffect"] = {}
	tAnniversaryInstance_Reward[3312167][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAnniversaryInstance_Reward[3312167][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 人参果 - 13.00%
	tAnniversaryInstance_Reward[3312167][1][2] = {}
	tAnniversaryInstance_Reward[3312167][1][2]["RandomItemChanceType"] = 2
	tAnniversaryInstance_Reward[3312167][1][2]["ItemChance"] = 1300
	tAnniversaryInstance_Reward[3312167][1][2]["RewardItem"] = {}
	tAnniversaryInstance_Reward[3312167][1][2]["RewardItem"][1] = {}
	tAnniversaryInstance_Reward[3312167][1][2]["RewardItem"][1]["Id"] = 3009100 -- 【库】人参果[属性:9]【表格】人参果
	tAnniversaryInstance_Reward[3312167][1][2]["RewardItem"][1]["Attr"] = "0 3" -- 人参果*3
	tAnniversaryInstance_Reward[3312167][1][2]["RewardEffect"] = {}
	tAnniversaryInstance_Reward[3312167][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAnniversaryInstance_Reward[3312167][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 人参果 - 5.00%
	tAnniversaryInstance_Reward[3312167][1][3] = {}
	tAnniversaryInstance_Reward[3312167][1][3]["RandomItemChanceType"] = 2
	tAnniversaryInstance_Reward[3312167][1][3]["ItemChance"] = 500
	tAnniversaryInstance_Reward[3312167][1][3]["RewardItem"] = {}
	tAnniversaryInstance_Reward[3312167][1][3]["RewardItem"][1] = {}
	tAnniversaryInstance_Reward[3312167][1][3]["RewardItem"][1]["Id"] = 3009100 -- 【库】人参果[属性:9]【表格】人参果
	tAnniversaryInstance_Reward[3312167][1][3]["RewardItem"][1]["Attr"] = "0 5" -- 人参果*5
	tAnniversaryInstance_Reward[3312167][1][3]["RewardEffect"] = {}
	tAnniversaryInstance_Reward[3312167][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAnniversaryInstance_Reward[3312167][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 100气力值 - 15.00%
	tAnniversaryInstance_Reward[3312167][1][4] = {}
	tAnniversaryInstance_Reward[3312167][1][4]["RandomItemChanceType"] = 2
	tAnniversaryInstance_Reward[3312167][1][4]["ItemChance"] = 1500
	tAnniversaryInstance_Reward[3312167][1][4]["RewardStrengthValue"] = {}
	tAnniversaryInstance_Reward[3312167][1][4]["RewardStrengthValue"]["Value"] = 100 -- 气力值
	tAnniversaryInstance_Reward[3312167][1][4]["RewardEffect"] = {}
	tAnniversaryInstance_Reward[3312167][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAnniversaryInstance_Reward[3312167][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 300气力值 - 13.00%
	tAnniversaryInstance_Reward[3312167][1][5] = {}
	tAnniversaryInstance_Reward[3312167][1][5]["RandomItemChanceType"] = 2
	tAnniversaryInstance_Reward[3312167][1][5]["ItemChance"] = 1300
	tAnniversaryInstance_Reward[3312167][1][5]["RewardStrengthValue"] = {}
	tAnniversaryInstance_Reward[3312167][1][5]["RewardStrengthValue"]["Value"] = 300 -- 气力值
	tAnniversaryInstance_Reward[3312167][1][5]["RewardEffect"] = {}
	tAnniversaryInstance_Reward[3312167][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAnniversaryInstance_Reward[3312167][1][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 1000气力值 - 6.00%
	tAnniversaryInstance_Reward[3312167][1][6] = {}
	tAnniversaryInstance_Reward[3312167][1][6]["RandomItemChanceType"] = 2
	tAnniversaryInstance_Reward[3312167][1][6]["ItemChance"] = 600
	tAnniversaryInstance_Reward[3312167][1][6]["RewardStrengthValue"] = {}
	tAnniversaryInstance_Reward[3312167][1][6]["RewardStrengthValue"]["Value"] = 1000 -- 气力值
	tAnniversaryInstance_Reward[3312167][1][6]["RewardEffect"] = {}
	tAnniversaryInstance_Reward[3312167][1][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAnniversaryInstance_Reward[3312167][1][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 微光星陨石 - 15.00%
	tAnniversaryInstance_Reward[3312167][1][7] = {}
	tAnniversaryInstance_Reward[3312167][1][7]["RandomItemChanceType"] = 2
	tAnniversaryInstance_Reward[3312167][1][7]["ItemChance"] = 1500
	tAnniversaryInstance_Reward[3312167][1][7]["RewardItem"] = {}
	tAnniversaryInstance_Reward[3312167][1][7]["RewardItem"][1] = {}
	tAnniversaryInstance_Reward[3312167][1][7]["RewardItem"][1]["Id"] = 3009000 -- 【库】微光星陨石[属性:9]【表格】微光星陨石
	tAnniversaryInstance_Reward[3312167][1][7]["RewardItem"][1]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的微光星陨石*5
	tAnniversaryInstance_Reward[3312167][1][7]["RewardEffect"] = {}
	tAnniversaryInstance_Reward[3312167][1][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAnniversaryInstance_Reward[3312167][1][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 明亮星陨石 - 13.00%
	tAnniversaryInstance_Reward[3312167][1][8] = {}
	tAnniversaryInstance_Reward[3312167][1][8]["RandomItemChanceType"] = 2
	tAnniversaryInstance_Reward[3312167][1][8]["ItemChance"] = 1300
	tAnniversaryInstance_Reward[3312167][1][8]["RewardItem"] = {}
	tAnniversaryInstance_Reward[3312167][1][8]["RewardItem"][1] = {}
	tAnniversaryInstance_Reward[3312167][1][8]["RewardItem"][1]["Id"] = 3009001 -- 【库】明亮星陨石[属性:9]【表格】明亮星陨石
	tAnniversaryInstance_Reward[3312167][1][8]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的明亮星陨石*1
	tAnniversaryInstance_Reward[3312167][1][8]["RewardEffect"] = {}
	tAnniversaryInstance_Reward[3312167][1][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAnniversaryInstance_Reward[3312167][1][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 明亮星陨石 - 5.00%
	tAnniversaryInstance_Reward[3312167][1][9] = {}
	tAnniversaryInstance_Reward[3312167][1][9]["RandomItemChanceType"] = 2
	tAnniversaryInstance_Reward[3312167][1][9]["ItemChance"] = 500
	tAnniversaryInstance_Reward[3312167][1][9]["RewardItem"] = {}
	tAnniversaryInstance_Reward[3312167][1][9]["RewardItem"][1] = {}
	tAnniversaryInstance_Reward[3312167][1][9]["RewardItem"][1]["Id"] = 3009001 -- 【库】明亮星陨石[属性:9]【表格】明亮星陨石
	tAnniversaryInstance_Reward[3312167][1][9]["RewardItem"][1]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的明亮星陨石*3
	tAnniversaryInstance_Reward[3312167][1][9]["RewardEffect"] = {}
	tAnniversaryInstance_Reward[3312167][1][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAnniversaryInstance_Reward[3312167][1][9]["RewardEffect"]["Effect"] = "angelwing"

	tAnniversaryInstance_Reward["Score"] = {}
	-- ===根据积分发放周年庆礼包
	-- ===LogStep: 1[1]
	tAnniversaryInstance_Reward["Score"]["LogId"] = 12001344
	tAnniversaryInstance_Reward["Score"]["LogStep"] = "1[1]"
	tAnniversaryInstance_Reward["Score"]["RewardItem"] = {}
	tAnniversaryInstance_Reward["Score"]["RewardItem"][1] = {}
	tAnniversaryInstance_Reward["Score"]["RewardItem"][1]["Id"] = 3312167 -- 【库】周年庆大礼包[属性:9]【表格】周年庆大礼包
	tAnniversaryInstance_Reward["Score"]["RewardItem"][1]["Attr"] = "0 1" -- 周年庆大礼包*1
	tAnniversaryInstance_Reward["Score"]["RewardEffect"] = {}
	tAnniversaryInstance_Reward["Score"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAnniversaryInstance_Reward["Score"]["RewardEffect"]["Effect"] = "angelwing"

local tAnniversaryInstance_RandomPool = {}
	-- ===礼包奖池
	-- ===LogStep: 1[1]
	tAnniversaryInstance_RandomPool[1] = {}
	tAnniversaryInstance_RandomPool[1]["ItemChanceSum"] = 10000
	tAnniversaryInstance_RandomPool[1]["LogId"] = 12001344
	tAnniversaryInstance_RandomPool[1]["LogStep"] = " 1[1]"
	-- 星陨石奖池 - 35.00%          
	tAnniversaryInstance_RandomPool[1][1] = {}
	tAnniversaryInstance_RandomPool[1][1]["RandomItemChanceType"] = 2
	tAnniversaryInstance_RandomPool[1][1]["ItemChance"] = 3500
	tAnniversaryInstance_RandomPool[1][1]["Item_1"] = 1
	-- 神纹精粹奖池 - 35.00%        
	tAnniversaryInstance_RandomPool[1][2] = {}
	tAnniversaryInstance_RandomPool[1][2]["RandomItemChanceType"] = 2
	tAnniversaryInstance_RandomPool[1][2]["ItemChance"] = 3500
	tAnniversaryInstance_RandomPool[1][2]["Item_1"] = 2
	-- 人参果奖池 - 30.00%          
	tAnniversaryInstance_RandomPool[1][3] = {}
	tAnniversaryInstance_RandomPool[1][3]["RandomItemChanceType"] = 2
	tAnniversaryInstance_RandomPool[1][3]["ItemChance"] = 3000
	tAnniversaryInstance_RandomPool[1][3]["Item_1"] = 3

local tAnniversaryInstance_TeamCheck = {}--记录队伍里玩家参与组队状态


----------------------------------逻辑部分---------------------------------------------
--隔日清掩码
--掩码["DayClean"]字段有数据则隔日清
function AnniversaryInstance_DayClean(nNowUserId)

	local nUserId = nNowUserId or Get_UserId()
	for i, v in pairs(tAnniversaryInstance_Stc) do
		if v["DayClean"] ~= nil then
			local nEvent = v["Event"]
			local nData = v["Data"]
			if Task_StcInterval(nEvent, nData, 1, 4, nUserId) then
				Task_SetStatistic(nEvent, nData, 0, 1, nUserId)
				Task_SetStcTimestamp(nEvent, nData, 0, nUserId)
			end
		end
	end

end

--单人夺宝选项
function AnniversaryInstance_SingleOption(nNpcId)

	local nUserId = Get_UserId()
	local nTeamNum = Get_UserTeamNumbers(nUserId)
	local nSingleEvent = tAnniversaryInstance_Stc["SingleJoin"]["Event"]
	local nSingleData = tAnniversaryInstance_Stc["SingleJoin"]["Data"]

	if not Sys_ChkFullTime(tActivityTime["AnniversaryInstance"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId, "1-2")
		return
	end

	local sEnterTime = tAnniversaryInstance_Data["EnterTime"]
	if not Sys_ChkDayTime(sEnterTime) then--日时间
		LinkNpcGossipFunc_New(nNpcId, "6-3")
		return
	end

	--组队不让进入单人场
	if nTeamNum > 1 then
		LinkNpcGossipFunc_New(nNpcId, "2-2")
		return
	end

	--每日只能加入一次
	AnniversaryInstance_DayClean(nUserId)
	local nSingleJoin = Get_UserStatisticValue(nSingleEvent, nSingleData, nUserId) or 0
	if nSingleJoin ~= 0 then
		LinkNpcGossipFunc_New(nNpcId, "2-1")
		return
	end

	--二次确认对白
	LinkNpcGossipFunc_New(nNpcId, "2-3")

end

--进入单人副本
function AnniversaryInstance_SingleEnter(nNpcId)

	local nUserId = Get_UserId()
	local nTeamNum = Get_UserTeamNumbers(nUserId)
	local nSingleEvent = tAnniversaryInstance_Stc["SingleJoin"]["Event"]
	local nSingleData = tAnniversaryInstance_Stc["SingleJoin"]["Data"]
	local nInstanceType = tAnniversaryInstance_Data["InstanceType"]
	local nTimeLimit = tAnniversaryInstance_Data["TimeLimit"]
	local nSendOut = tAnniversaryInstance_Data["SendOut"]

	if not Sys_ChkFullTime(tActivityTime["AnniversaryInstance"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId, "1-2")
		return
	end

	--组队不让进入单人场
	if nTeamNum > 1 then
		LinkNpcGossipFunc_New(nNpcId, "2-2")
		return
	end

	--每日只能加入一次
	AnniversaryInstance_DayClean(nUserId)
	local nSingleJoin = Get_UserStatisticValue(nSingleEvent, nSingleData, nUserId) or 0
	if nSingleJoin ~= 0 then
		LinkNpcGossipFunc_New(nNpcId, "2-1")
		return
	end

	--清空幸运宝箱刷新券使用次数
	local nLuckyBoxEvent = tAnniversaryInstance_Stc["LuckyRefresh"]["Event"]
	local nLuckyBoxData = tAnniversaryInstance_Stc["LuckyRefresh"]["Data"]
	Task_SetStatistic(nLuckyBoxEvent, nLuckyBoxData, 0, 1, nUserId)

	--进入副本，设置掩码
	if User_EnterInstance(nInstanceType, 0, 0, nTimeLimit, nUserId, 0) then

		Task_SetStatistic(nSingleEvent, nSingleData, 1, 1, nUserId)
		Task_SetStcTimestamp(nSingleEvent, nSingleData, 0, nUserId)
		User_SetTimer(nSendOut, "AnniversaryInstance_SendOut</N>" .. tostring(nUserId), 1, nUserId)--送玩家回双龙城

		--记录当前组别 单人
		local nTypeEvent = tAnniversaryInstance_Stc["JoinType"]["Event"]
		local nTypeData = tAnniversaryInstance_Stc["JoinType"]["Data"]
		Task_SetStatistic(nTypeEvent, nTypeData, tAnniversaryInstance_Data["JoinType"]["Single"], 1, nUserId)
		Task_SetStcTimestamp(nTypeEvent, nTypeData, 0, nUserId)

		--单人刷怪
		AnniversaryInstance_AddMonster(1)

	end

end

--组队夺宝选项
function AnniversaryInstance_TeamOption(nNpcId)

	
	local nUserId = Get_UserId()
	local nTeamNum = Get_UserTeamNumbers(nUserId)
	local nTeamEvent = tAnniversaryInstance_Stc["TeamJoin"]["Event"]
	local nTeamData = tAnniversaryInstance_Stc["TeamJoin"]["Data"]

	if not Sys_ChkFullTime(tActivityTime["AnniversaryInstance"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId, "1-2")
		return
	end

	local sEnterTime = tAnniversaryInstance_Data["EnterTime"]
	if not Sys_ChkDayTime(sEnterTime) then--日时间
		LinkNpcGossipFunc_New(nNpcId, "6-3")
		return
	end

	--单人不让进入组队场
	if nTeamNum <= 2 then
		LinkNpcGossipFunc_New(nNpcId, "2-5")
		return
	end

	--每日只能加入一次
	AnniversaryInstance_DayClean(nUserId)
	local nTeamJoin = Get_UserStatisticValue(nTeamEvent, nTeamData, nUserId) or 0
	if nTeamJoin ~= 0 then
		LinkNpcGossipFunc_New(nNpcId, "2-4")
		return
	end

	--二次确认对白
	LinkNpcGossipFunc_New(nNpcId, "2-6")

end

--组队进入确认
function AnniversaryInstance_TeamEnterConfirm(nNpcId)

	local nUserId = Get_UserId()
	local nTeamNum = Get_UserTeamNumbers(nUserId)
	local nTeamEvent = tAnniversaryInstance_Stc["TeamJoin"]["Event"]
	local nTeamData = tAnniversaryInstance_Stc["TeamJoin"]["Data"]
	local nInstanceType = tAnniversaryInstance_Data["InstanceType"]

	if not Sys_ChkFullTime(tActivityTime["AnniversaryInstance"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId, "1-2")
		return
	end

	--单人不让进入组队场
	if nTeamNum <= 2 then
		LinkNpcGossipFunc_New(nNpcId, "2-5")
		return
	end

	--每日只能加入一次
	AnniversaryInstance_DayClean(nUserId)
	local nTeamJoin = Get_UserStatisticValue(nTeamEvent, nTeamData, nUserId) or 0
	if nTeamJoin ~= 0 then
		LinkNpcGossipFunc_New(nNpcId, "2-4")
		return
	end

	--只能队长发起
	if not User_IsTeamLeader(nUserId) then
		LinkNpcGossipFunc_New(nNpcId, "5-6")
		return
	end

	--队伍中有人已参加过
	User_TeamExeFuncByTeamer(3, "AnniversaryInstance_TeamCheck")
	
	local nTeamId = Get_UserTeamId(nUserId)
	if not tAnniversaryInstance_TeamCheck[nTeamId] then
		LinkNpcGossipFunc_New(nNpcId, "5-5")
		tAnniversaryInstance_TeamCheck[nTeamId] = nil
		return
	end
	--有人不在范围内
	User_TeamExeFuncByTeamer(3, "AnniversaryInstance_TooFar")
	if not tAnniversaryInstance_TeamCheck[nTeamId] then
		LinkNpcGossipFunc_New(nNpcId, "6-1")
		tAnniversaryInstance_TeamCheck[nTeamId] = nil
		return
	end
	--有人不满80级
	User_TeamExeFuncByTeamer(3, "AnniversaryInstance_Level")
	if not tAnniversaryInstance_TeamCheck[nTeamId] then
		LinkNpcGossipFunc_New(nNpcId, "6-2")
		tAnniversaryInstance_TeamCheck[nTeamId] = nil
		return
	end

	--进入副本
	User_TeamExeFuncByTeamer(3, "AnniversaryInstance_TeamEnter")

end

--判断队伍中是否有人已参加
function AnniversaryInstance_TeamCheck(nUserId)

	local nTeamEvent = tAnniversaryInstance_Stc["TeamJoin"]["Event"]
	local nTeamData = tAnniversaryInstance_Stc["TeamJoin"]["Data"]
	local nJoin = Get_UserStatisticValue(nTeamEvent, nTeamData, nUserId) or 0

	local nTeamId = Get_UserTeamId(nUserId)

	if tAnniversaryInstance_TeamCheck[nTeamId] ~= nil then
		if tAnniversaryInstance_TeamCheck[nTeamId] == false then
			return
		end
	end

	if nJoin ~= 0 then
		tAnniversaryInstance_TeamCheck[nTeamId] = false
	else
		tAnniversaryInstance_TeamCheck[nTeamId] = true
	end


end

--判断队伍中是否有人离NPC较远
function AnniversaryInstance_TooFar(nUserId)
	local nPosX = Get_UserPositionX(nUserId)
	local nPosY = Get_UserPositionY(nUserId)
	local nTeamId = Get_UserTeamId(nUserId)
	
	if tAnniversaryInstance_TeamCheck[nTeamId] ~= nil then
		if tAnniversaryInstance_TeamCheck[nTeamId] == false then
			return
		end
	end
	
	if ((nPosX >= tAnniversaryInstance_Postion["Enter"]["MinPosX"]) and (nPosX <= tAnniversaryInstance_Postion["Enter"]["MaxPosX"])) and ((nPosY >= tAnniversaryInstance_Postion["Enter"]["MinPosY"]) and (nPosY <= tAnniversaryInstance_Postion["Enter"]["MaxPosY"])) then
		tAnniversaryInstance_TeamCheck[nTeamId] = true
	else
		tAnniversaryInstance_TeamCheck[nTeamId] = false
	end
	
	--激情服
	if SpecialServer_ChkNoGiftServer() then
		if ((nPosX >= tAnniversaryInstance_Postion["NoGiftEnter"]["MinPosX"]) and (nPosX <= tAnniversaryInstance_Postion["NoGiftEnter"]["MaxPosX"])) and ((nPosY >= tAnniversaryInstance_Postion["NoGiftEnter"]["MinPosY"]) and (nPosY <= tAnniversaryInstance_Postion["NoGiftEnter"]["MaxPosY"])) then
			tAnniversaryInstance_TeamCheck[nTeamId] = true
		else
			tAnniversaryInstance_TeamCheck[nTeamId] = false
		end
	end
	
end

--判断队伍中是否有人未满80级
function AnniversaryInstance_Level(nUserId)
	local nTeamId = Get_UserTeamId(nUserId)
	
	if tAnniversaryInstance_TeamCheck[nTeamId] ~= nil then
		if tAnniversaryInstance_TeamCheck[nTeamId] == false then
			return
		end
	end
	
	local nLevel = tAnniversaryInstance_Data["Require"]["Level"]
	local nMete = tAnniversaryInstance_Data["Require"]["Mete"]
	
	if User_JudgeLevelAndMetempsychosis(nLevel, nMete, nUserId) then
		tAnniversaryInstance_TeamCheck[nTeamId] = true
	else
		tAnniversaryInstance_TeamCheck[nTeamId] = false
	end
	
end

--进入组队副本
function AnniversaryInstance_TeamEnter(nUserId)

	--local nUserId = Get_UserId()
	local nNpcId = tAnniversaryInstance_Data["NPCID"]
	local nTeamNum = Get_UserTeamNumbers(nUserId)
	local nTeamEvent = tAnniversaryInstance_Stc["TeamJoin"]["Event"]
	local nTeamData = tAnniversaryInstance_Stc["TeamJoin"]["Data"]
	local nInstanceType = tAnniversaryInstance_Data["InstanceType"]
	local nTimeLimit = tAnniversaryInstance_Data["TimeLimit"]
	local nSendOut = tAnniversaryInstance_Data["SendOut"]

	if not Sys_ChkFullTime(tActivityTime["AnniversaryInstance"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId, "1-2")
		return
	end

	--单人不让进入组队场 
	if nTeamNum <= 2 then
		LinkNpcGossipFunc_New(nNpcId, "2-5")
		return
	end

	--每日只能加入一次
	AnniversaryInstance_DayClean(nUserId)
	local nTeamJoin = Get_UserStatisticValue(nTeamEvent, nTeamData, nUserId) or 0
	if nTeamJoin ~= 0 then
		LinkNpcGossipFunc_New(nNpcId, "2-4")
		return
	end

	--清空幸运宝箱刷新券使用次数
	local nLuckyBoxEvent = tAnniversaryInstance_Stc["LuckyRefresh"]["Event"]
	local nLuckyBoxData = tAnniversaryInstance_Stc["LuckyRefresh"]["Data"]
	Task_SetStatistic(nLuckyBoxEvent, nLuckyBoxData, 0, 1, nUserId)

	--进入副本，设置掩码
	if User_EnterInstance(nInstanceType, 0, 0, nTimeLimit, nUserId, 0) then

		Task_SetStatistic(nTeamEvent, nTeamData, 1, 1, nUserId)
		Task_SetStcTimestamp(nTeamEvent, nTeamData, 0, nUserId)
		User_SetTimer(nSendOut, "AnniversaryInstance_SendOut</N>" .. tostring(nUserId), 1, nUserId)--送玩家回双龙城

		--记录当前组别 组队
		local nTypeEvent = tAnniversaryInstance_Stc["JoinType"]["Event"]
		local nTypeData = tAnniversaryInstance_Stc["JoinType"]["Data"]
		Task_SetStatistic(nTypeEvent, nTypeData, tAnniversaryInstance_Data["JoinType"]["Team"], 1, nUserId)
		Task_SetStcTimestamp(nTypeEvent, nTypeData, 0, nUserId)

		--组队刷怪
		AnniversaryInstance_AddMonster(2, nUserId)

	end

end

--随机怪物坐标
function AnniversaryInstance_MonsterPosition()
	local nRandomX = math.random(0, tAnniversaryInstance_Postion["Monster"]["Range"])
	local nRandomY = math.random(0, tAnniversaryInstance_Postion["Monster"]["Range"])
	local nMonsterPosX = tAnniversaryInstance_Postion["Monster"]["PosX"] + nRandomX
	local nMonsterPoxY = tAnniversaryInstance_Postion["Monster"]["PosY"] + nRandomY
	
	return nMonsterPosX, nMonsterPoxY
end

--副本第一次刷怪
--nType 1 单人 2组队
function AnniversaryInstance_AddMonster(nType, nUserId)

	

	--单人
	if nType == 1 then

		local nMapId = Get_UserMapId()
		local nPosX = tAnniversaryInstance_Postion["Boss"][1]["PosX"]
		local nPoxY = tAnniversaryInstance_Postion["Boss"][1]["PosY"]
		local nGenId = tAnniversaryInstance_Data["Boss"]["GenId"]
		local nMonsterId = tAnniversaryInstance_Data["Boss"]["MonsterId"]
		--刷BOSS
		Monster_AddMonster(nMapId, nPosX, nPoxY, nGenId, nMonsterId)
		--刷怪
		for i, v in pairs(tAnniversaryInstance_Data["Monster"]) do
			local nMonsterGenId = v["GenId"]
			local nLittleMonsterId = v["MonsterId"]
			for j = 1, tAnniversaryInstance_Data["Monster"][i]["Num"] do
				local nMonsterPosX, nMonsterPoxY = AnniversaryInstance_MonsterPosition()
				
				Monster_AddMonster(nMapId, nMonsterPosX, nMonsterPoxY, nMonsterGenId, nLittleMonsterId)
			end
		end

	elseif nType == 2 then

		if User_IsTeamLeader(nUserId) then--仅队长控制刷新怪物
			local nMapId = Get_UserMapId(nUserId)
			--刷BOSS
			for i, v in pairs(tAnniversaryInstance_Postion["Boss"]) do
				local nPosX = v["PosX"]
				local nPoxY = v["PosY"]
				local nGenId = tAnniversaryInstance_Data["Boss"]["GenId"]
				local nMonsterId = tAnniversaryInstance_Data["Boss"]["MonsterId"]
				--刷BOSS
				Monster_AddMonster(nMapId, nPosX, nPoxY, nGenId, nMonsterId)
			end
			

			--刷怪
			for i, v in pairs(tAnniversaryInstance_Data["Monster"]) do
				local nMonsterGenId = v["GenId"]
				local nLittleMonsterId = v["MonsterId"]
				for j = 1, tAnniversaryInstance_Data["Monster"][i]["Num"] do
					
					local nMonsterPosX, nMonsterPoxY = AnniversaryInstance_MonsterPosition()
					
					Monster_AddMonster(nMapId, nMonsterPosX, nMonsterPoxY, nMonsterGenId, nLittleMonsterId)
				end
			end
		end

	end

end
--随机刷怪坐标
function AnniversaryInstance_RandomPosition()
	--随机生成坐标
	local tRandomPosition = {}
	local tPosition = CommonFunc_Copy(tAnniversaryInstance_Postion["Monster"])
	--生成不重复随机数
	for i = 1, #tPosition do
		local nRandom = math.random(1, #tPosition)
		tRandomPosition[i] = tPosition[nRandom]
		table.remove(tPosition, nRandom)
	end
	
	return tRandomPosition
end
--送玩家返回双龙城
function AnniversaryInstance_SendOut(nNowUserId)

	local nUserId = nNowUserId or Get_UserId()
	if nUserId <= 0 then
		return
	end

	
	local nMapId = Get_UserMapId(nUserId)
	local nMapDoc = Get_MapDoc(nMapId)
	local nNpcId = tAnniversaryInstance_Data["NPCID"]
	local nReturnMap = tAnniversaryInstance_Postion["Return"]["MapId"]
	local nReturnX =   tAnniversaryInstance_Postion["Return"]["PosX"] 
	local nReturnY =   tAnniversaryInstance_Postion["Return"]["PosY"] 

	if SpecialServer_ChkNoGiftServer() then
		nReturnMap = tAnniversaryInstance_Postion["ReturnNoGift"]["MapId"]
		nReturnX =   tAnniversaryInstance_Postion["ReturnNoGift"]["PosX"] 
		nReturnY =   tAnniversaryInstance_Postion["ReturnNoGift"]["PosY"] 
	end

	if nMapDoc == tAnniversaryInstance_Data["MapDoc"] then--玩家在副本中
		User_UserRandBoundTrans(nReturnMap, nReturnX, nReturnY, 5, 5, 0, nUserId)
	end

	local nJoinEvent = tAnniversaryInstance_Stc["JoinType"]["Event"]
	local nJoinData = tAnniversaryInstance_Stc["JoinType"]["Data"]
	local nJoinType = Get_UserStatisticValue(nJoinEvent, nJoinData, nUserId) or 0
	--为0则为今日未参加
	if nJoinType == 0 then
		return
	end

	--提示积分
	local nDayScoreEvent = tAnniversaryInstance_RankData["Stc"][nJoinType]["Day"]["Event"]
	local nDayScoreData = tAnniversaryInstance_RankData["Stc"][nJoinType]["Day"]["Data"]
	
	local nDayScore = Get_UserStatisticValue(nDayScoreEvent, nDayScoreData, nUserId) or 0
	local sTalk = string.format(tAnniversaryInstance_Text["MsgBox"]["OnlyScore"], nDayScore)
	User_TalkChannel2005(sTalk, nUserId)

	--结算积分奖励的周年庆礼包
	AnniversaryInstance_ScoreReward(nUserId)

end


--积分奖励礼包
function AnniversaryInstance_ScoreReward(nNowUserId)

	AnniversaryInstance_DayClean(nNowUserId)
	local nUserId = nNowUserId or Get_UserId()

	local nJoinEvent = tAnniversaryInstance_Stc["JoinType"]["Event"]
	local nJoinData = tAnniversaryInstance_Stc["JoinType"]["Data"]
	local nJoinType = Get_UserStatisticValue(nJoinEvent, nJoinData, nUserId) or 0
	
	local nRewardEvent = tAnniversaryInstance_Stc["ScoreReward"]["Event"]
	local nRewardData = tAnniversaryInstance_Stc["ScoreReward"]["Data"]
	if nJoinType == 2 then
		nRewardEvent = tAnniversaryInstance_Stc["TeamScoreReward"]["Event"]
		nRewardData = tAnniversaryInstance_Stc["TeamScoreReward"]["Data"]
	end
	
	local nRewardStatus = Get_UserStatisticValue(nRewardEvent, nRewardData, nUserId) or 0
	
	--为1则为已领取
	if nRewardStatus ~= 0 then
		return
	end
	--为0则为今日未参加
	if nJoinType == 0 then
		return
	end
	--算积分
	local nDayScore = 0
	local nNeedScore = tAnniversaryInstance_Data["TeamScoreBag"]
	if nJoinType == 2 then
		local nDayScoreEvent = tAnniversaryInstance_Stc["TeamDayScore"]["Event"]
		local nDayScoreData = tAnniversaryInstance_Stc["TeamDayScore"]["Data"]
		nDayScore = Get_UserStatisticValue(nDayScoreEvent, nDayScoreData, nUserId) or 0
	elseif nJoinType == 1 then
		local nDayScoreEvent = tAnniversaryInstance_Stc["SingleDayScore"]["Event"]
		local nDayScoreData = tAnniversaryInstance_Stc["SingleDayScore"]["Data"]
		nDayScore = Get_UserStatisticValue(nDayScoreEvent, nDayScoreData, nUserId) or 0
		nNeedScore = tAnniversaryInstance_Data["SingleScoreBag"]
		
	end
	local nGet = math.floor(nDayScore / nNeedScore)--应得数量
	if nGet >= 5 then
		nGet = 5
	end

	if nGet >= 1 then
		Task_SetStatistic(nRewardEvent, nRewardData, 1, 1, nUserId)
		Task_SetStcTimestamp(nRewardEvent, nRewardData, 0, nUserId)
		local sSender = tAnniversaryInstance_Text["Mail"]["From"]
		local sTitle = tAnniversaryInstance_Text["Mail"]["Title"]
		local sContent = tAnniversaryInstance_Text["Mail"]["Content"]["ScoreReward"]
		for i = 1, nGet do
			Sys_SendMail(nUserId, 0, 0, 571750, 0, 30, sSender, sTitle, sContent)
		end
	end
	

end

--上线送积分礼包
function AnniversaryInstance_LoginScoreReward()

	if not Sys_ChkFullTime(tActivityTime["AnniversaryInstance"]["ActivityTime"]) then
		return
	end
	
	local nUserId = Get_UserId()

	AnniversaryInstance_ScoreReward(nUserId)

end

--杀怪送积分 刷宝箱 送幸运奖励
function AnniversaryInstance_KillMonster(nMonsterId)

	local nUserId = Get_UserId()


	--刷新宝箱
	local nMapId = Get_UserMapId(nUserId)
	local nMonsterGenId = tAnniversaryInstance_KillMonster[nMonsterId]["Born"]["Gen"]
	local nLittleMonsterId = tAnniversaryInstance_KillMonster[nMonsterId]["Born"]["Id"]
	local nNum = tAnniversaryInstance_KillMonster[nMonsterId]["Born"]["Num"]
	if Sys_Random(tAnniversaryInstance_KillMonster[nMonsterId]["BornSpecial"]["Prob"], 10000) then
		nMonsterGenId = tAnniversaryInstance_KillMonster[nMonsterId]["BornSpecial"]["Gen"]
		nLittleMonsterId = tAnniversaryInstance_KillMonster[nMonsterId]["BornSpecial"]["Id"]
		nNum = tAnniversaryInstance_KillMonster[nMonsterId]["BornSpecial"]["Num"]
	end
	for j = 1, nNum do
		local nMonsterPosX, nMonsterPoxY = AnniversaryInstance_MonsterPosition()
		Monster_AddMonster(nMapId, nMonsterPosX, nMonsterPoxY, nMonsterGenId, nLittleMonsterId)
	end

	--BOSS奖励
	if tAnniversaryInstance_KillMonster[nMonsterId]["Boss"] ~= nil then
		RewardTemplate_NewRandom(tAnniversaryInstance_Reward["BOSS"], 1, nUserId)
	end

	--隔天清空积分
	AnniversaryInstance_DayClean(nUserId)
	--分组别加积分
	local nTypeEvent = tAnniversaryInstance_Stc["JoinType"]["Event"]
	local nTypeData = tAnniversaryInstance_Stc["JoinType"]["Data"]
	local nJoinType = Get_UserStatisticValue(nTypeEvent, nTypeData, nUserId)
	local nDayScoreEvent = tAnniversaryInstance_RankData["Stc"][nJoinType]["Day"]["Event"]
	local nDayScoreData =  tAnniversaryInstance_RankData["Stc"][nJoinType]["Day"]["Data"]
	local nTotalScoreEvent = tAnniversaryInstance_RankData["Stc"][nJoinType]["Total"]["Event"]
	local nTotalScoreData =  tAnniversaryInstance_RankData["Stc"][nJoinType]["Total"]["Data"]
	local nScore = tAnniversaryInstance_KillMonster[nMonsterId]["Score"]
	Task_AddStatistic(nDayScoreEvent, nDayScoreData, nScore, 1, nUserId)
	Task_SetStcTimestamp(nDayScoreEvent, nDayScoreData, 0, nUserId)
	Task_AddStatistic(nTotalScoreEvent, nTotalScoreData, nScore, 1, nUserId)
	Task_SetStcTimestamp(nTotalScoreEvent, nTotalScoreData, 0, nUserId)
	User_EffectAddNew("self", tAnniversaryInstance_KillMonster[nMonsterId]["Effect"], 0, nUserId)
	--组队共享分数
	User_TeamExeFuncByTeamer(3, "AnniversaryInstance_TeamExtraScore</N>" .. nScore .. "</N>" .. nUserId, nUserId)
	
	
	--加入排行榜
	local sUserName = Get_UserName(nUserId)
	local nDayScore = Get_UserStatisticValue(nDayScoreEvent, nDayScoreData, nUserId)
	RankingFunc_SetInfo(tAnniversaryInstance_RankData["Index"][nJoinType]["Day"], nDayScore, nUserId, sUserName)
	local nTotalScore = Get_UserStatisticValue(nTotalScoreEvent, nTotalScoreData, nUserId)
	RankingFunc_SetInfo(tAnniversaryInstance_RankData["Index"][nJoinType]["Total"], nTotalScore, nUserId, sUserName)
	
	local sTalk = string.format(tAnniversaryInstance_Text["Talk"]["GetScore"], nScore)
	User_TalkChannel2005(sTalk, nUserId)

	--普通宝箱给气力值
	if tAnniversaryInstance_KillMonster[nMonsterId]["Chi"] ~= nil then
		RewardTemplate_NewRandom(tAnniversaryInstance_Reward["Chi"], 1, nUserId)
	end

	--宝箱怪额外奖励
	if nMonsterId == tAnniversaryInstance_Data["Lucky"] then
		AnniversaryInstance_LuckyBoxReward(nMonsterId)
	end

end

--组队共享积分
function AnniversaryInstance_TeamExtraScore(nScore, nKillUserId, nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	--击杀者不加额外分
	if nKillUserId == nUserId then
		return
	end
	local nTypeEvent = tAnniversaryInstance_Stc["JoinType"]["Event"]
	local nTypeData = tAnniversaryInstance_Stc["JoinType"]["Data"]
	local nJoinType = Get_UserStatisticValue(nTypeEvent, nTypeData, nUserId)
	local nDayScoreEvent = tAnniversaryInstance_RankData["Stc"][nJoinType]["Day"]["Event"]
	local nDayScoreData =  tAnniversaryInstance_RankData["Stc"][nJoinType]["Day"]["Data"]
	local nTotalScoreEvent = tAnniversaryInstance_RankData["Stc"][nJoinType]["Total"]["Event"]
	local nTotalScoreData =  tAnniversaryInstance_RankData["Stc"][nJoinType]["Total"]["Data"]
	--共享积分数
	local nShareScore = math.floor(nScore * 0.2)
	Task_AddStatistic(nDayScoreEvent, nDayScoreData, nShareScore, 1, nUserId)
	Task_SetStcTimestamp(nDayScoreEvent, nDayScoreData, 0, nUserId)
	Task_AddStatistic(nTotalScoreEvent, nTotalScoreData, nShareScore, 1, nUserId)
	Task_SetStcTimestamp(nTotalScoreEvent, nTotalScoreData, 0, nUserId)
	User_TalkChannel2005(string.format(tAnniversaryInstance_Text["Talk"]["GetShareScore"], nShareScore), nUserId)
	
	--挤入排行榜
	local sUserName = Get_UserName(nUserId)
	local nDayScore = Get_UserStatisticValue(nDayScoreEvent, nDayScoreData, nUserId)
	local nTotalScore = Get_UserStatisticValue(nTotalScoreEvent, nTotalScoreData, nUserId)
	RankingFunc_SetInfo(tAnniversaryInstance_RankData["Index"][2]["Day"], nDayScore, nUserId, sUserName)
	local nTotalScore = Get_UserStatisticValue(nTotalScoreEvent, nTotalScoreData, nUserId)
	RankingFunc_SetInfo(tAnniversaryInstance_RankData["Index"][2]["Total"], nTotalScore, nUserId, sUserName)
	
end

--幸运宝箱奖励
function AnniversaryInstance_LuckyBoxReward(nMonsterId)

	local nUserId = Get_UserId()
	local flat,tAward = Probabil_RandomAward(tAnniversaryInstance_RandomPool, 1)
	local nPool = tAward[1]["tAward"][1]["Item_1"]

	RewardTemplate_NewRandom(tAnniversaryInstance_Reward[nMonsterId], nPool, nUserId)

end

--陷阱传出地图
function AnniversaryInstance_TrapOutMap()
	Sys_MsgBox(tAnniversaryInstance_Text["Talk"]["TrapOut"], "AnniversaryInstance_TrapOutMapConfirm")
	
end

function AnniversaryInstance_TrapOutMapConfirm()
	local nMapId =  tAnniversaryInstance_Postion["Return"]["MapId"]
	local nBoundX = tAnniversaryInstance_Postion["Return"]["PosX"] 
	local nBoundY = tAnniversaryInstance_Postion["Return"]["PosY"] 
	local nUserId = Get_UserId()
	
	--无赠品服判断
	if SpecialServer_ChkNoGiftServer() then
		
		nMapId =  tAnniversaryInstance_Postion["ReturnNoGift"]["MapId"]
		nBoundX = tAnniversaryInstance_Postion["ReturnNoGift"]["PosX"] 
		nBoundY = tAnniversaryInstance_Postion["ReturnNoGift"]["PosY"] 
	end
	
	User_UserRandBoundTrans(nMapId,nBoundX,nBoundY,1,1,1)
	User_TalkChannel2005(tAnniversaryInstance_Text["Talk"]["TrapOutTip"])
	User_SetTimer(1 , "NULL", 1, nUserId)--设置1秒定时，覆盖玩家之前的定时
end

----------------------------------NPC部分---------------------------------------------
tNpcFace[6524] = 49
tNpcGossip[23908]= tNpcGossip[23908] or DefaultNpc:new{}
tNpcGossip[23908]["OptionHidden"] = 1
tNpcGossip[23908]["DialogueText"] = tAnniversaryInstance_Text[23908]
--活动前 1-1
tNpcGossip[23908]["Text1-1"] = {111, 112, 113, 114, 115}
tNpcGossip[23908]["tOption1-1"] = {111}
tNpcGossip[23908]["ChkFunc1-1"] = function()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["AnniversaryInstance"]["ActivityTime"])
end
--活动后 1-2
tNpcGossip[23908]["Text1-2"] = {111, 121}
tNpcGossip[23908]["tOption1-2"] = {121}
tNpcGossip[23908]["ChkFunc1-2"] = function()
	return CommonFunc_GetAfterActivityTime(tActivityTime["AnniversaryInstance"]["ActivityTime"])
end
--活动中等级不足 1-3
tNpcGossip[23908]["Text1-3"] = {111, 131, 132, 133, 134}
tNpcGossip[23908]["tOption1-3"] = {131}
tNpcGossip[23908]["ChkFunc1-3"] = function()
	local nLevel = tAnniversaryInstance_Data["Require"]["Level"]
	local nMete = tAnniversaryInstance_Data["Require"]["Mete"]
	
	return ((Sys_ChkFullTime(tActivityTime["AnniversaryInstance"]["ActivityTime"])) and (not User_JudgeLevelAndMetempsychosis(nLevel, nMete)))
end
--活动中等级满足 1-4
tNpcGossip[23908]["Text1-4"] = {111, 141, 142, 143, 144, 146, 147, 148}
tNpcGossip[23908]["tOption1-4"] = {141, 142, 143, 144}
tNpcGossip[23908]["OptionFunc141"] = "AnniversaryInstance_SingleOption</N>23908"--单人夺宝
tNpcGossip[23908]["OptionFunc142"] = "AnniversaryInstance_TeamOption</N>23908"--组队夺宝
tNpcGossip[23908]["OptionPoint143"] = "3-1"--宝箱奖励
tNpcGossip[23908]["OptionPoint144"] = "3-2"--积分奖励
tNpcGossip[23908]["ChkFunc1-4"] = function()
	local nLevel = tAnniversaryInstance_Data["Require"]["Level"]
	local nMete = tAnniversaryInstance_Data["Require"]["Mete"]
	local nUserId = Get_UserId()
	--根据是否已参加显示选项
	local nSingleEvent = tAnniversaryInstance_Stc["SingleJoin"]["Event"]
	local nSingleData = tAnniversaryInstance_Stc["SingleJoin"]["Data"]
	AnniversaryInstance_DayClean(nUserId)
	local nSingleJoin = Get_UserStatisticValue(nSingleEvent, nSingleData, nUserId) or 0
	if (nSingleJoin ~= 0) then
		tNpcGossip[23908]["Option141"] = tAnniversaryInstance_Text[23908]["Option141"] .. tAnniversaryInstance_Text[23908]["Option145"]
	else
		tNpcGossip[23908]["Option141"] = tAnniversaryInstance_Text[23908]["Option141"]
	end
	local nTeamEvent = tAnniversaryInstance_Stc["TeamJoin"]["Event"]
	local nTeamData = tAnniversaryInstance_Stc["TeamJoin"]["Data"]
	local nTeamJoin = Get_UserStatisticValue(nTeamEvent, nTeamData, nUserId) or 0
	if (nTeamJoin ~= 0) then
		tNpcGossip[23908]["Option142"] = tAnniversaryInstance_Text[23908]["Option142"] .. tAnniversaryInstance_Text[23908]["Option145"]
	else
		tNpcGossip[23908]["Option142"] = tAnniversaryInstance_Text[23908]["Option142"]
	end
	
	--显示分数
	local nDaySingleEvent = tAnniversaryInstance_Stc["SingleDayScore"]["Event"]
	local nDaySingleData = tAnniversaryInstance_Stc["SingleDayScore"]["Data"]
	local nDaySingleScore = Get_UserStatisticValue(nDaySingleEvent, nDaySingleData, nUserId)
	local nDayTeamEvent = tAnniversaryInstance_Stc["TeamDayScore"]["Event"]
	local nDayTeamData = tAnniversaryInstance_Stc["TeamDayScore"]["Data"]
	local nDayTeamScore = Get_UserStatisticValue(nDayTeamEvent, nDayTeamData, nUserId)
	local sSingleScore = string.format(tAnniversaryInstance_Text[23908]["Text144"], nDaySingleScore)
	local sTeamScore = string.format(tAnniversaryInstance_Text[23908]["Text145"], nDayTeamScore)
	tNpcGossip[23908]["Text144"] = Sys_Alignment(sSingleScore, 1, sTeamScore, 56)

	return ((Sys_ChkFullTime(tActivityTime["AnniversaryInstance"]["ActivityTime"])) and (User_JudgeLevelAndMetempsychosis(nLevel, nMete)))
end
--接 1-4-1 今日已参与单人 2-1
tNpcGossip[23908]["Text2-1"] = {211}
tNpcGossip[23908]["tOption2-1"] = {211}
tNpcGossip[23908]["OptionPoint211"] = "1-4"--回主对白
--接 1-4-1 组队中无法参与单人夺宝 2-2
tNpcGossip[23908]["Text2-2"] = {221}
tNpcGossip[23908]["tOption2-2"] = {221}
tNpcGossip[23908]["OptionPoint221"] = "1-4"--回主对白
--接 1-4-1 单人二次确认 2-3
tNpcGossip[23908]["Text2-3"] = {231}
tNpcGossip[23908]["tOption2-3"] = {231, 232}
tNpcGossip[23908]["OptionFunc231"] = "AnniversaryInstance_SingleEnter</N>23908"--进入单人副本
tNpcGossip[23908]["OptionPoint232"] = "1-4"--回主对白
--接 1-4-2 今日已参与组队 2-4
tNpcGossip[23908]["Text2-4"] = {241}
tNpcGossip[23908]["tOption2-4"] = {241}
tNpcGossip[23908]["OptionPoint241"] = "1-4"--回主对白
--接 1-4-2 未组队无法参与组队夺宝 2-5
tNpcGossip[23908]["Text2-5"] = {251}
tNpcGossip[23908]["tOption2-5"] = {251}
tNpcGossip[23908]["OptionPoint251"] = "1-4"--回主对白
--接 1-4-2 组队二次确认 2-6
tNpcGossip[23908]["Text2-6"] = {261}
tNpcGossip[23908]["tOption2-6"] = {261, 262}
tNpcGossip[23908]["OptionFunc261"] = "AnniversaryInstance_TeamEnterConfirm</N>23908"--进入组队副本
tNpcGossip[23908]["OptionPoint262"] = "1-4"--回主对白
--接 1-4-3 查看击杀宝箱怪奖励 3-1
tNpcGossip[23908]["Text3-1"] = {311, 312, 313, 314, 315, 316, 317, 318, 319}
tNpcGossip[23908]["tOption3-1"] = {311}
tNpcGossip[23908]["OptionPoint311"] = "1-4"--回主对白
--接 1-4-4 查看单人积分奖励 3-2
tNpcGossip[23908]["Text3-2"] = {321, 322, 323, 324, 325, 326, 327}
tNpcGossip[23908]["tOption3-2"] = {321}
tNpcGossip[23908]["OptionPoint321"] = "1-4"--回主对白
--队伍中有人已参加过 5-5
tNpcGossip[23908]["Text5-5"] = {551}
tNpcGossip[23908]["tOption5-5"] = {551}
tNpcGossip[23908]["OptionPoint551"] = "1-4"--主对白
--只能队长发起进入 5-6
tNpcGossip[23908]["Text5-6"] = {561}
tNpcGossip[23908]["tOption5-6"] = {561}
tNpcGossip[23908]["OptionPoint561"] = "1-4"--主对白
--只能队长发起进入 6-1
tNpcGossip[23908]["Text6-1"] = {611}
tNpcGossip[23908]["tOption6-1"] = {611}
tNpcGossip[23908]["OptionPoint611"] = "1-4"--主对白
--只能队长发起进入 6-2
tNpcGossip[23908]["Text6-2"] = {621}
tNpcGossip[23908]["tOption6-2"] = {621}
tNpcGossip[23908]["OptionPoint621"] = "1-4"--主对白
--日时间限制 6-3
tNpcGossip[23908]["Text6-3"] = {631}
tNpcGossip[23908]["tOption6-3"] = {631}



--23963 单人夺宝排行榜
tNpcFace[1700] = 1248
tNpcFace[1701] = 1248
tNpcGossip[23963]= tNpcGossip[23963] or DefaultNpc:new{}
tNpcGossip[23963]["OptionHidden"] = 1
tNpcGossip[23963]["DialogueText"] = tAnniversaryInstance_Text[23963]
--查看单人夺宝日排行榜 1-1
tNpcGossip[23963]["Text1-1"] = {111, 112, 113, 114, 115, 116, 117, 118, 119, 1110, 1111, 1112, 1113, 1114, 1115}
tNpcGossip[23963]["tOption1-1"] = {111, 112}
tNpcGossip[23963]["OptionPoint111"] = "1-2"--单人日榜奖励
tNpcGossip[23963]["OptionPoint112"] = "1-3"--单人总榜
tNpcGossip[23963]["ChkFunc1-1"] = function()
	local tTotalRank = RankingFunc_GetNowData(tAnniversaryInstance_Data["Rank"]["SingleDay"])
	if #tTotalRank ~= 0 then
		for i = 1, 10 do
			if tTotalRank[i] ~= nil then
				local sText = Sys_Alignment(tostring(tTotalRank[i]["Score"]), 0, tTotalRank[i]["UserName"], 40)
				tNpcGossip[23963]["Text11" .. (i + 3)] = string.format(tAnniversaryInstance_Text[23963]["Text11" .. (i + 3)], sText)
			else
				
				tNpcGossip[23963]["Text11" .. (i + 3)] = string.format(tAnniversaryInstance_Text[23963]["Text11" .. (i + 3)], tAnniversaryInstance_Text[23963]["Text1116"])
			end
		end
	else
		for i = 1, 10 do
			
			tNpcGossip[23963]["Text11" .. (i + 3)] = string.format(tAnniversaryInstance_Text[23963]["Text11" .. (i + 3)], tAnniversaryInstance_Text[23963]["Text1116"])
			
		end
	end
	
	local nDayEvent = tAnniversaryInstance_Stc["SingleDayScore"]["Event"]
	local nDayData = tAnniversaryInstance_Stc["SingleDayScore"]["Data"]
	local nDayScore = Get_UserStatisticValue(nDayEvent, nDayData, nUserId)
	local nTotalEvent = tAnniversaryInstance_Stc["SingleTotalScore"]["Event"]
	local nTotalData = tAnniversaryInstance_Stc["SingleTotalScore"]["Data"]
	local nTotalScore = Get_UserStatisticValue(nTotalEvent, nTotalData, nUserId)
	
	tNpcGossip[23963]["Text1115"] = string.format(tAnniversaryInstance_Text[23963]["Text1115"], nDayScore, nTotalScore)
	
	return true
end
--查看单人日榜奖励 1-2
tNpcGossip[23963]["Text1-2"] = {121, 122, 123, 124, 125, 126, 127, 128, 129, 1210, 1211, 1212, 1213, 1214, 1215}
tNpcGossip[23963]["tOption1-2"] = {121}
tNpcGossip[23963]["OptionPoint121"] = "1-1"--主对白
--查看单人夺宝总榜 1-3
tNpcGossip[23963]["Text1-3"] = {131, 132, 133, 134, 135, 136, 137, 138, 139, 1310, 1311, 1312, 1313, 1314, 1315}
tNpcGossip[23963]["tOption1-3"] = {131}
tNpcGossip[23963]["OptionPoint131"] = "1-4"--查看单人总榜奖励
tNpcGossip[23963]["ChkFunc1-3"] = function()
	local tTotalRank = RankingFunc_GetNowData(tAnniversaryInstance_Data["Rank"]["SingleTotal"])
	if #tTotalRank ~= 0 then
		for i = 1, 10 do
			if tTotalRank[i] ~= nil then
				local sText = Sys_Alignment(tostring(tTotalRank[i]["Score"]), 0, tTotalRank[i]["UserName"], 40)
				tNpcGossip[23963]["Text13" .. (i + 3)] = string.format(tAnniversaryInstance_Text[23963]["Text13" .. (i + 3)], sText)
			else
				
				tNpcGossip[23963]["Text13" .. (i + 3)] = string.format(tAnniversaryInstance_Text[23963]["Text13" .. (i + 3)], tAnniversaryInstance_Text[23963]["Text1116"])
			end
		end
	else
		for i = 1, 10 do
			
			tNpcGossip[23963]["Text13" .. (i + 3)] = string.format(tAnniversaryInstance_Text[23963]["Text13" .. (i + 3)], tAnniversaryInstance_Text[23963]["Text1116"])
			
		end
	end
	
	local nDayEvent = tAnniversaryInstance_Stc["SingleDayScore"]["Event"]
	local nDayData = tAnniversaryInstance_Stc["SingleDayScore"]["Data"]
	local nDayScore = Get_UserStatisticValue(nDayEvent, nDayData, nUserId)
	local nTotalEvent = tAnniversaryInstance_Stc["SingleTotalScore"]["Event"]
	local nTotalData = tAnniversaryInstance_Stc["SingleTotalScore"]["Data"]
	local nTotalScore = Get_UserStatisticValue(nTotalEvent, nTotalData, nUserId)
	
	tNpcGossip[23963]["Text1315"] = string.format(tAnniversaryInstance_Text[23963]["Text1315"], nDayScore, nTotalScore)
	
	return true
end
--查看单人总榜奖励 1-4
tNpcGossip[23963]["Text1-4"] = {141, 142, 143, 144, 145, 146, 147, 148, 149, 1410, 1411, 1412, 1413, 1414, 1415}
tNpcGossip[23963]["tOption1-4"] = {141}
tNpcGossip[23963]["OptionPoint141"] = "1-1"--主对白

--23964 组队夺宝排行榜
--查看组队夺宝日排行榜 1-1
tNpcGossip[23964]= tNpcGossip[23964] or DefaultNpc:new{}
tNpcGossip[23964]["OptionHidden"] = 1
tNpcGossip[23964]["DialogueText"] = tAnniversaryInstance_Text[23964]
tNpcGossip[23964]["Text1-1"] = {111, 112, 113, 114, 115, 116, 117, 118, 119, 1110, 1111, 1112, 1113, 1114, 1115}
tNpcGossip[23964]["tOption1-1"] = {111, 112}
tNpcGossip[23964]["OptionPoint111"] = "1-2"--组队日榜奖励
tNpcGossip[23964]["OptionPoint112"] = "1-3"--组队总榜
tNpcGossip[23964]["ChkFunc1-1"] = function()
	local tTotalRank = RankingFunc_GetNowData(tAnniversaryInstance_Data["Rank"]["TeamDay"])
	if #tTotalRank ~= 0 then
		for i = 1, 10 do
			if tTotalRank[i] ~= nil then
				local sText = Sys_Alignment(tostring(tTotalRank[i]["Score"]), 0, tTotalRank[i]["UserName"], 40)
				tNpcGossip[23964]["Text11" .. (i + 3)] = string.format(tAnniversaryInstance_Text[23964]["Text11" .. (i + 3)], sText)
			else
				
				tNpcGossip[23964]["Text11" .. (i + 3)] = string.format(tAnniversaryInstance_Text[23964]["Text11" .. (i + 3)], tAnniversaryInstance_Text[23964]["Text1116"])
			end
		end
	else
		for i = 1, 10 do
			
			tNpcGossip[23964]["Text11" .. (i + 3)] = string.format(tAnniversaryInstance_Text[23964]["Text11" .. (i + 3)], tAnniversaryInstance_Text[23964]["Text1116"])
			
		end
	end
	
	local nDayEvent = tAnniversaryInstance_Stc["TeamDayScore"]["Event"]
	local nDayData = tAnniversaryInstance_Stc["TeamDayScore"]["Data"]
	local nDayScore = Get_UserStatisticValue(nDayEvent, nDayData, nUserId)
	local nTotalEvent = tAnniversaryInstance_Stc["TeamTotalScore"]["Event"]
	local nTotalData = tAnniversaryInstance_Stc["TeamTotalScore"]["Data"]
	local nTotalScore = Get_UserStatisticValue(nTotalEvent, nTotalData, nUserId)
	
	tNpcGossip[23964]["Text1115"] = string.format(tAnniversaryInstance_Text[23964]["Text1115"], nDayScore, nTotalScore)
	
	return true
end
--查看组队日榜奖励 1-2
tNpcGossip[23964]["Text1-2"] = {121, 122, 123, 124, 125, 126, 127, 128, 129, 1210, 1211, 1212, 1213, 1214, 1215}
tNpcGossip[23964]["tOption1-2"] = {121}
tNpcGossip[23964]["OptionPoint121"] = "1-1"--主对白
--查看组队夺宝总榜 1-3
tNpcGossip[23964]["Text1-3"] = {131, 132, 133, 134, 135, 136, 137, 138, 139, 1310, 1311, 1312, 1313, 1314, 1315}
tNpcGossip[23964]["tOption1-3"] = {131}
tNpcGossip[23964]["OptionPoint131"] = "1-4"--查看组队总榜奖励
tNpcGossip[23964]["ChkFunc1-3"] = function()
	local tTotalRank = RankingFunc_GetNowData(tAnniversaryInstance_Data["Rank"]["TeamTotal"])
	if #tTotalRank ~= 0 then
		for i = 1, 10 do
			if tTotalRank[i] ~= nil then
				local sText = Sys_Alignment(tostring(tTotalRank[i]["Score"]), 0, tTotalRank[i]["UserName"], 40)
				tNpcGossip[23964]["Text13" .. (i + 3)] = string.format(tAnniversaryInstance_Text[23964]["Text13" .. (i + 3)], sText)
			else
				
				tNpcGossip[23964]["Text13" .. (i + 3)] = string.format(tAnniversaryInstance_Text[23964]["Text13" .. (i + 3)], tAnniversaryInstance_Text[23964]["Text1116"])
			end
		end
	else
		for i = 1, 10 do
			
			tNpcGossip[23964]["Text13" .. (i + 3)] = string.format(tAnniversaryInstance_Text[23964]["Text13" .. (i + 3)], tAnniversaryInstance_Text[23964]["Text1116"])
			
		end
	end
	
	local nDayEvent = tAnniversaryInstance_Stc["TeamDayScore"]["Event"]
	local nDayData = tAnniversaryInstance_Stc["TeamDayScore"]["Data"]
	local nDayScore = Get_UserStatisticValue(nDayEvent, nDayData, nUserId)
	local nTotalEvent = tAnniversaryInstance_Stc["TeamTotalScore"]["Event"]
	local nTotalData = tAnniversaryInstance_Stc["TeamTotalScore"]["Data"]
	local nTotalScore = Get_UserStatisticValue(nTotalEvent, nTotalData, nUserId)
	
	tNpcGossip[23964]["Text1315"] = string.format(tAnniversaryInstance_Text[23964]["Text1315"], nDayScore, nTotalScore)
	
	return true
end
--查看组队总榜奖励 1-4
tNpcGossip[23964]["Text1-4"] = {141, 142, 143, 144, 145, 146, 147, 148, 149, 1410, 1411, 1412, 1413, 1414, 1415}
tNpcGossip[23964]["tOption1-4"] = {141}
tNpcGossip[23964]["OptionPoint141"] = "1-1"--主对白




---------------------------------物品部分---------------------------------------------

tItem[3312167] = tItem[3312167] or {}
tItem[3312167]["Function"] = function(nItemId, sItemName)
	local nUserId = Get_UserId()
	local nSpace = RewardTemplate_GetRandomSpace(tAnniversaryInstance_Reward[nItemId], 1, nUserId)
	
	if not User_CheckLeftSpace(nSpace) then
		User_TalkChannel2005(tAnniversaryInstance_Text["Talk"]["NoSpace"], nUserId)
		return
	end
	
	if Item_ChkMulItem(nItemId, nItemId, 1) and Item_DelMulItem(nItemId, nItemId, 1) then
		Sys_SaveActionRewardLog(tAnniversaryInstance_Log[nItemId], nUserId)
		RewardTemplate_NewRandom(tAnniversaryInstance_Reward[nItemId], 1, nUserId)
	end
end

tItem[3312261] = tItem[3312261] or {}
tItem[3312261]["Function"] = function(nItemId, sItemName)
	local nUserId = Get_UserId()
	local nMapId = Get_UserMapId(nUserId)
	local nMapDoc = Get_MapDoc(nMapId)
	local nNpcId = tAnniversaryInstance_Data["NPCID"]
	
	if not Sys_ChkFullTime(tActivityTime["AnniversaryInstance"]["ActivityTime"]) then
		Item_DelMulItem(nItemId, nItemId, 1)
		User_TalkChannel2005(tAnniversaryInstance_Text["Talk"]["LuckyBoxTimeOut"], nUserId)
		return
	end
	
	local nEvent = tAnniversaryInstance_Stc["LuckyRefresh"]["Event"]
	local nData = tAnniversaryInstance_Stc["LuckyRefresh"]["Data"]
	
	
	if nMapDoc == tAnniversaryInstance_Data["MapDoc"] then
		if (Get_UserStatisticValue(nEvent, nData, nUserId) >= 10) then
			User_TalkChannel2005(tAnniversaryInstance_Text["Talk"]["LuckyBoxLimit"], nUserId)
			return
		end
		if Item_ChkMulItem(nItemId, nItemId, 1) and Item_DelMulItem(nItemId, nItemId, 1) then
			Task_AddStatistic(nEvent, nData, 1, 1, nUserId)
			local nMonsterId = tAnniversaryInstance_Data["Lucky"]
			local nMonsterPosX = Get_UserPositionX(nUserId)
			local nMonsterPosY = Get_UserPositionY(nUserId)
			Monster_AddMonster(nMapId, nMonsterPosX, nMonsterPosY, 27015, nMonsterId)
			Sys_MsgBox(tAnniversaryInstance_Text["Talk"]["LuckyBox"])
		end
		return
	else
		NpcPosition_PathFind(nNpcId)
	end
end

--------------------------------------怪物掉落-------------------------------------------
local tAnniversaryInstance_Drop = {}
	-- 宝箱触发
	tAnniversaryInstance_Drop[1] = {}
	tAnniversaryInstance_Drop[1]["ActivityTime"] = tActivityTime["AnniversaryInstance"]["ActivityTime"]
	tAnniversaryInstance_Drop[1]["Function"] = AnniversaryInstance_KillMonster
	tAnniversaryInstance_Drop[1]["MonsterId"] = {3554, 3555, 3556, 3557, 3558}
--活动期间打开此表
table.insert(tMonsterDrop_AreaLoad, tAnniversaryInstance_Drop[1])

--------------------------------------陷阱部分-------------------------------------------
tTrap[158]= tTrap[158] or {}
tTrap[158]["Function"] = function (nTrapId,nTrapType)
	AnniversaryInstance_TrapOutMap()
end

-------------------------------------上线触发--------------------------------------------
--活动期间需开启
table.insert(tSystem_PlayLogin_Func, AnniversaryInstance_LoginScoreReward)
